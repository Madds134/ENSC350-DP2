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

-- DATE "11/20/2026 23:20:10"

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
-- S[0]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[1]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[2]	=>  Location: PIN_W7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[3]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[4]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[5]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[6]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[7]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[8]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[9]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[10]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[11]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[12]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[13]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[14]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[15]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[16]	=>  Location: PIN_W20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[17]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[18]	=>  Location: PIN_U17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[19]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[20]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[21]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[22]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[23]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[24]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[25]	=>  Location: PIN_U9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[26]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[27]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[28]	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[29]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[30]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[31]	=>  Location: PIN_Y8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[32]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[33]	=>  Location: PIN_T16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[34]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[35]	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[36]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[37]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[38]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[39]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[40]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[41]	=>  Location: PIN_P15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[42]	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[43]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[44]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[45]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[46]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[47]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[48]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[49]	=>  Location: PIN_L21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[50]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[51]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[52]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[53]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[54]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[55]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[56]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[57]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[58]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[59]	=>  Location: PIN_B20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[60]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[61]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[62]	=>  Location: PIN_M19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[63]	=>  Location: PIN_K18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cout	=>  Location: PIN_N17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ovfl	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_T2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_T1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cin	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_H20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[8]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[9]	=>  Location: PIN_H18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[10]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[11]	=>  Location: PIN_K19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[11]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[12]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[12]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[13]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[13]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[14]	=>  Location: PIN_J21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[14]	=>  Location: PIN_D20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[15]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[15]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[16]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[16]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[17]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[17]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[18]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[18]	=>  Location: PIN_R19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[19]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[19]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[20]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[20]	=>  Location: PIN_N22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[21]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[21]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[22]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[22]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[23]	=>  Location: PIN_U14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[23]	=>  Location: PIN_R18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[24]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[24]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[25]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[25]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[26]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[26]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[27]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[27]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[28]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[28]	=>  Location: PIN_W14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[29]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[29]	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[30]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[30]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[31]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[31]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[32]	=>  Location: PIN_P17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[32]	=>  Location: PIN_V22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[33]	=>  Location: PIN_P20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[33]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[34]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[34]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[35]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[35]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[36]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[36]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[37]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[37]	=>  Location: PIN_V11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[38]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[38]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[39]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[39]	=>  Location: PIN_U19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[40]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[40]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[41]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[41]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[42]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[42]	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[43]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[43]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[44]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[44]	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[45]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[45]	=>  Location: PIN_R20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[46]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[46]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[47]	=>  Location: PIN_V12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[47]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[48]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[48]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[49]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[49]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[50]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[50]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[51]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[51]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[52]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[52]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[53]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[53]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[54]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[54]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[55]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[55]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[56]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[56]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[57]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[57]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[58]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[58]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[59]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[59]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[60]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[60]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[61]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[61]	=>  Location: PIN_AA11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[62]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[62]	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[63]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[63]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \S~20_combout\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \S~21_combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Recur:gPair[0]~0_combout\ : std_logic;
SIGNAL \c~28_combout\ : std_logic;
SIGNAL \S~22_combout\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \c~29_combout\ : std_logic;
SIGNAL \c[3]~30_combout\ : std_logic;
SIGNAL \S~23_combout\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|gPair~0_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|gPair~1_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:gPair[1]~0_combout\ : std_logic;
SIGNAL \c~31_combout\ : std_logic;
SIGNAL \S~24_combout\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gpre[4]~0_combout\ : std_logic;
SIGNAL \S~25_combout\ : std_logic;
SIGNAL \c~74_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:gPair[2]~0_combout\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Gpre~0_combout\ : std_logic;
SIGNAL \S~26_combout\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gpre[6]~1_combout\ : std_logic;
SIGNAL \S~27_combout\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \B[8]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[0]~0_combout\ : std_logic;
SIGNAL \c~32_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:gPair[3]~0_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:gPair[1]~combout\ : std_logic;
SIGNAL \c[8]~33_combout\ : std_logic;
SIGNAL \S~28_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:Inner|gPair~0_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gpre[8]~2_combout\ : std_logic;
SIGNAL \B[9]~input_o\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \c~34_combout\ : std_logic;
SIGNAL \S~29_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:gPair[4]~0_combout\ : std_logic;
SIGNAL \B[10]~input_o\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \c~35_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:pPair[2]~0_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Gpre~1_combout\ : std_logic;
SIGNAL \S~30_combout\ : std_logic;
SIGNAL \B[11]~input_o\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gpre[10]~3_combout\ : std_logic;
SIGNAL \S~31_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:gPair[5]~0_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:gPair[2]~combout\ : std_logic;
SIGNAL \c~36_combout\ : std_logic;
SIGNAL \B[12]~input_o\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~0_combout\ : std_logic;
SIGNAL \S~32_combout\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \B[13]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gpre[12]~4_combout\ : std_logic;
SIGNAL \S~33_combout\ : std_logic;
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \B[14]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Recur:gPair[6]~0_combout\ : std_logic;
SIGNAL \c~75_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Gpre~2_combout\ : std_logic;
SIGNAL \S~34_combout\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \B[15]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gpre[14]~5_combout\ : std_logic;
SIGNAL \S~35_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:Inner|gPair~1_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[1]~0_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|gPair~0_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:gPair[7]~0_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[1]~0_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[1]~combout\ : std_logic;
SIGNAL \A[16]~input_o\ : std_logic;
SIGNAL \B[16]~input_o\ : std_logic;
SIGNAL \c~37_combout\ : std_logic;
SIGNAL \S~36_combout\ : std_logic;
SIGNAL \B[17]~input_o\ : std_logic;
SIGNAL \A[17]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gpre[16]~6_combout\ : std_logic;
SIGNAL \S~37_combout\ : std_logic;
SIGNAL \A[18]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Recur:gPair[8]~0_combout\ : std_logic;
SIGNAL \B[18]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Gpre~3_combout\ : std_logic;
SIGNAL \c[18]~38_combout\ : std_logic;
SIGNAL \S~74_combout\ : std_logic;
SIGNAL \B[19]~input_o\ : std_logic;
SIGNAL \A[19]~input_o\ : std_logic;
SIGNAL \c~76_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gpre[18]~7_combout\ : std_logic;
SIGNAL \S~38_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:Inner|Ppre[4]~0_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~1_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:gPair[9]~0_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:gPair[4]~combout\ : std_logic;
SIGNAL \B[20]~input_o\ : std_logic;
SIGNAL \A[20]~input_o\ : std_logic;
SIGNAL \c~39_combout\ : std_logic;
SIGNAL \S~39_combout\ : std_logic;
SIGNAL \A[21]~input_o\ : std_logic;
SIGNAL \B[21]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gpre[20]~8_combout\ : std_logic;
SIGNAL \S~40_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:gPair[10]~0_combout\ : std_logic;
SIGNAL \B[22]~input_o\ : std_logic;
SIGNAL \A[22]~input_o\ : std_logic;
SIGNAL \c~40_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Gpre~4_combout\ : std_logic;
SIGNAL \S~41_combout\ : std_logic;
SIGNAL \A[23]~input_o\ : std_logic;
SIGNAL \B[23]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gpre[22]~9_combout\ : std_logic;
SIGNAL \S~42_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:Inner|gPair~2_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:gPair[11]~0_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[2]~0_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[2]~combout\ : std_logic;
SIGNAL \A[24]~input_o\ : std_logic;
SIGNAL \B[24]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[2]~0_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Gpre~0_combout\ : std_logic;
SIGNAL \c~77_combout\ : std_logic;
SIGNAL \S~43_combout\ : std_logic;
SIGNAL \A[25]~input_o\ : std_logic;
SIGNAL \B[25]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gpre[24]~10_combout\ : std_logic;
SIGNAL \S~44_combout\ : std_logic;
SIGNAL \A[26]~input_o\ : std_logic;
SIGNAL \B[26]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Recur:gPair[12]~0_combout\ : std_logic;
SIGNAL \c[26]~41_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Gpre~5_combout\ : std_logic;
SIGNAL \S~75_combout\ : std_logic;
SIGNAL \A[27]~input_o\ : std_logic;
SIGNAL \B[27]~input_o\ : std_logic;
SIGNAL \c~42_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gpre[26]~11_combout\ : std_logic;
SIGNAL \S~76_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:gPair[13]~0_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:gPair[6]~combout\ : std_logic;
SIGNAL \A[28]~input_o\ : std_logic;
SIGNAL \B[28]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:pPair[6]~0_combout\ : std_logic;
SIGNAL \c~43_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~2_combout\ : std_logic;
SIGNAL \S~45_combout\ : std_logic;
SIGNAL \A[29]~input_o\ : std_logic;
SIGNAL \B[29]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gpre[28]~12_combout\ : std_logic;
SIGNAL \S~46_combout\ : std_logic;
SIGNAL \A[30]~input_o\ : std_logic;
SIGNAL \B[30]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Recur:gPair[14]~0_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Gpre~6_combout\ : std_logic;
SIGNAL \c[30]~44_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Gpre~7_combout\ : std_logic;
SIGNAL \S~77_combout\ : std_logic;
SIGNAL \A[31]~input_o\ : std_logic;
SIGNAL \B[31]~input_o\ : std_logic;
SIGNAL \c~45_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gpre[30]~13_combout\ : std_logic;
SIGNAL \S~47_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|gPair~1_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:Inner|gPair~0_combout\ : std_logic;
SIGNAL \B[32]~input_o\ : std_logic;
SIGNAL \A[32]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Recur:gPair[15]~0_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:gPair[1]~0_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:Inner|Recur:pPair[0]~4_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:gPair[1]~1_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:gPair[1]~combout\ : std_logic;
SIGNAL \c~46_combout\ : std_logic;
SIGNAL \S~48_combout\ : std_logic;
SIGNAL \B[33]~input_o\ : std_logic;
SIGNAL \A[33]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gpre[32]~14_combout\ : std_logic;
SIGNAL \S~49_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:gPair[16]~0_combout\ : std_logic;
SIGNAL \A[34]~input_o\ : std_logic;
SIGNAL \B[34]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Gpre~8_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Gpre~9_combout\ : std_logic;
SIGNAL \c~47_combout\ : std_logic;
SIGNAL \S~50_combout\ : std_logic;
SIGNAL \c~48_combout\ : std_logic;
SIGNAL \B[35]~input_o\ : std_logic;
SIGNAL \A[35]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gpre[34]~15_combout\ : std_logic;
SIGNAL \S~51_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:gPair[17]~0_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:gPair[8]~combout\ : std_logic;
SIGNAL \A[36]~input_o\ : std_logic;
SIGNAL \B[36]~input_o\ : std_logic;
SIGNAL \c~49_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~3_combout\ : std_logic;
SIGNAL \S~52_combout\ : std_logic;
SIGNAL \A[37]~input_o\ : std_logic;
SIGNAL \B[37]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gpre[36]~16_combout\ : std_logic;
SIGNAL \S~53_combout\ : std_logic;
SIGNAL \B[38]~input_o\ : std_logic;
SIGNAL \A[38]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Recur:gPair[18]~0_combout\ : std_logic;
SIGNAL \c~78_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Gpre~10_combout\ : std_logic;
SIGNAL \S~54_combout\ : std_logic;
SIGNAL \B[39]~input_o\ : std_logic;
SIGNAL \A[39]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gpre[38]~17_combout\ : std_logic;
SIGNAL \S~55_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:Inner|gPair~3_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[4]~0_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Gpre~1_combout\ : std_logic;
SIGNAL \B[40]~input_o\ : std_logic;
SIGNAL \A[40]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Recur:gPair[19]~0_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[4]~0_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[4]~combout\ : std_logic;
SIGNAL \c~50_combout\ : std_logic;
SIGNAL \S~56_combout\ : std_logic;
SIGNAL \A[41]~input_o\ : std_logic;
SIGNAL \B[41]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gpre[40]~18_combout\ : std_logic;
SIGNAL \S~57_combout\ : std_logic;
SIGNAL \B[42]~input_o\ : std_logic;
SIGNAL \A[42]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Recur:gPair[20]~0_combout\ : std_logic;
SIGNAL \c[42]~51_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Gpre~11_combout\ : std_logic;
SIGNAL \S~78_combout\ : std_logic;
SIGNAL \B[43]~input_o\ : std_logic;
SIGNAL \A[43]~input_o\ : std_logic;
SIGNAL \c~52_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gpre[42]~19_combout\ : std_logic;
SIGNAL \S~79_combout\ : std_logic;
SIGNAL \B[44]~input_o\ : std_logic;
SIGNAL \A[44]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:pPair[10]~0_combout\ : std_logic;
SIGNAL \c~53_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:gPair[21]~0_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:gPair[10]~combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~4_combout\ : std_logic;
SIGNAL \S~58_combout\ : std_logic;
SIGNAL \B[45]~input_o\ : std_logic;
SIGNAL \A[45]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gpre[44]~20_combout\ : std_logic;
SIGNAL \S~59_combout\ : std_logic;
SIGNAL \B[46]~input_o\ : std_logic;
SIGNAL \A[46]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Recur:gPair[22]~0_combout\ : std_logic;
SIGNAL \c~54_combout\ : std_logic;
SIGNAL \c[46]~55_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Gpre~12_combout\ : std_logic;
SIGNAL \S~60_combout\ : std_logic;
SIGNAL \c~56_combout\ : std_logic;
SIGNAL \c~79_combout\ : std_logic;
SIGNAL \B[47]~input_o\ : std_logic;
SIGNAL \A[47]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gpre[46]~21_combout\ : std_logic;
SIGNAL \S~61_combout\ : std_logic;
SIGNAL \B[48]~input_o\ : std_logic;
SIGNAL \A[48]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|gPair~2_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:pPair[2]~4_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:pPair[2]~2_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:pPair[2]~3_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:Inner|Gpre~0_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:gPair[23]~0_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:Inner|gPair~4_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:gPair[2]~0_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:gPair[2]~combout\ : std_logic;
SIGNAL \c~57_combout\ : std_logic;
SIGNAL \S~62_combout\ : std_logic;
SIGNAL \B[49]~input_o\ : std_logic;
SIGNAL \A[49]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gpre[48]~22_combout\ : std_logic;
SIGNAL \S~63_combout\ : std_logic;
SIGNAL \B[50]~input_o\ : std_logic;
SIGNAL \A[50]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Recur:gPair[24]~0_combout\ : std_logic;
SIGNAL \c[50]~58_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Gpre~13_combout\ : std_logic;
SIGNAL \S~80_combout\ : std_logic;
SIGNAL \A[51]~input_o\ : std_logic;
SIGNAL \B[51]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gpre[50]~23_combout\ : std_logic;
SIGNAL \c~59_combout\ : std_logic;
SIGNAL \S~81_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:gPair[25]~0_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:gPair[12]~combout\ : std_logic;
SIGNAL \B[52]~input_o\ : std_logic;
SIGNAL \A[52]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:pPair[12]~0_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~5_combout\ : std_logic;
SIGNAL \c~60_combout\ : std_logic;
SIGNAL \S~64_combout\ : std_logic;
SIGNAL \B[53]~input_o\ : std_logic;
SIGNAL \A[53]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gpre[52]~24_combout\ : std_logic;
SIGNAL \S~65_combout\ : std_logic;
SIGNAL \A[54]~input_o\ : std_logic;
SIGNAL \B[54]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Recur:gPair[26]~0_combout\ : std_logic;
SIGNAL \c[54]~61_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Gpre~14_combout\ : std_logic;
SIGNAL \S~66_combout\ : std_logic;
SIGNAL \B[55]~input_o\ : std_logic;
SIGNAL \A[55]~input_o\ : std_logic;
SIGNAL \c~62_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gpre[54]~25_combout\ : std_logic;
SIGNAL \S~67_combout\ : std_logic;
SIGNAL \A[56]~input_o\ : std_logic;
SIGNAL \B[56]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[6]~2_combout\ : std_logic;
SIGNAL \c~63_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:gPair[27]~0_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[6]~0_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[6]~combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Gpre~2_combout\ : std_logic;
SIGNAL \S~68_combout\ : std_logic;
SIGNAL \B[57]~input_o\ : std_logic;
SIGNAL \A[57]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gpre[56]~26_combout\ : std_logic;
SIGNAL \S~69_combout\ : std_logic;
SIGNAL \A[58]~input_o\ : std_logic;
SIGNAL \B[58]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Recur:gPair[28]~0_combout\ : std_logic;
SIGNAL \c[58]~64_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Gpre~15_combout\ : std_logic;
SIGNAL \S~82_combout\ : std_logic;
SIGNAL \c~80_combout\ : std_logic;
SIGNAL \B[59]~input_o\ : std_logic;
SIGNAL \A[59]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gpre[58]~27_combout\ : std_logic;
SIGNAL \S~70_combout\ : std_logic;
SIGNAL \B[60]~input_o\ : std_logic;
SIGNAL \A[60]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Recur:gPair[29]~0_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:gPair[14]~combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:pPair[14]~0_combout\ : std_logic;
SIGNAL \c~65_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~6_combout\ : std_logic;
SIGNAL \S~71_combout\ : std_logic;
SIGNAL \B[61]~input_o\ : std_logic;
SIGNAL \A[61]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gpre[60]~28_combout\ : std_logic;
SIGNAL \S~72_combout\ : std_logic;
SIGNAL \A[62]~input_o\ : std_logic;
SIGNAL \B[62]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Gpre~16_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Gpre~17_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:gPair[30]~0_combout\ : std_logic;
SIGNAL \c[62]~66_combout\ : std_logic;
SIGNAL \S~83_combout\ : std_logic;
SIGNAL \A[63]~input_o\ : std_logic;
SIGNAL \B[63]~input_o\ : std_logic;
SIGNAL \c~67_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gpre[62]~29_combout\ : std_logic;
SIGNAL \S~73_combout\ : std_logic;
SIGNAL \c~72_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:gPair[31]~0_combout\ : std_logic;
SIGNAL \c~68_combout\ : std_logic;
SIGNAL \c~69_combout\ : std_logic;
SIGNAL \c~70_combout\ : std_logic;
SIGNAL \c~71_combout\ : std_logic;
SIGNAL \c~73_combout\ : std_logic;
SIGNAL \Ovfl~0_combout\ : std_logic;
SIGNAL p : std_logic_vector(63 DOWNTO 0);
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

-- Location: IOOBUF_X0_Y18_N9
\S[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~20_combout\,
	devoe => ww_devoe,
	o => \S[0]~output_o\);

-- Location: IOOBUF_X14_Y0_N30
\S[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~21_combout\,
	devoe => ww_devoe,
	o => \S[1]~output_o\);

-- Location: IOOBUF_X14_Y0_N16
\S[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~22_combout\,
	devoe => ww_devoe,
	o => \S[2]~output_o\);

-- Location: IOOBUF_X45_Y43_N16
\S[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~23_combout\,
	devoe => ww_devoe,
	o => \S[3]~output_o\);

-- Location: IOOBUF_X45_Y43_N2
\S[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~24_combout\,
	devoe => ww_devoe,
	o => \S[4]~output_o\);

-- Location: IOOBUF_X38_Y43_N30
\S[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~25_combout\,
	devoe => ww_devoe,
	o => \S[5]~output_o\);

-- Location: IOOBUF_X61_Y43_N2
\S[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~26_combout\,
	devoe => ww_devoe,
	o => \S[6]~output_o\);

-- Location: IOOBUF_X29_Y43_N2
\S[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~27_combout\,
	devoe => ww_devoe,
	o => \S[7]~output_o\);

-- Location: IOOBUF_X61_Y43_N30
\S[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~28_combout\,
	devoe => ww_devoe,
	o => \S[8]~output_o\);

-- Location: IOOBUF_X38_Y43_N2
\S[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~29_combout\,
	devoe => ww_devoe,
	o => \S[9]~output_o\);

-- Location: IOOBUF_X32_Y43_N16
\S[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~30_combout\,
	devoe => ww_devoe,
	o => \S[10]~output_o\);

-- Location: IOOBUF_X36_Y43_N9
\S[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~31_combout\,
	devoe => ww_devoe,
	o => \S[11]~output_o\);

-- Location: IOOBUF_X67_Y34_N16
\S[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~32_combout\,
	devoe => ww_devoe,
	o => \S[12]~output_o\);

-- Location: IOOBUF_X45_Y43_N23
\S[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~33_combout\,
	devoe => ww_devoe,
	o => \S[13]~output_o\);

-- Location: IOOBUF_X67_Y37_N2
\S[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~34_combout\,
	devoe => ww_devoe,
	o => \S[14]~output_o\);

-- Location: IOOBUF_X48_Y43_N9
\S[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~35_combout\,
	devoe => ww_devoe,
	o => \S[15]~output_o\);

-- Location: IOOBUF_X67_Y3_N2
\S[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~36_combout\,
	devoe => ww_devoe,
	o => \S[16]~output_o\);

-- Location: IOOBUF_X67_Y8_N23
\S[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~37_combout\,
	devoe => ww_devoe,
	o => \S[17]~output_o\);

-- Location: IOOBUF_X63_Y0_N30
\S[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~74_combout\,
	devoe => ww_devoe,
	o => \S[18]~output_o\);

-- Location: IOOBUF_X61_Y0_N16
\S[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~38_combout\,
	devoe => ww_devoe,
	o => \S[19]~output_o\);

-- Location: IOOBUF_X22_Y0_N9
\S[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~39_combout\,
	devoe => ww_devoe,
	o => \S[20]~output_o\);

-- Location: IOOBUF_X38_Y0_N16
\S[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~40_combout\,
	devoe => ww_devoe,
	o => \S[21]~output_o\);

-- Location: IOOBUF_X67_Y2_N16
\S[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~41_combout\,
	devoe => ww_devoe,
	o => \S[22]~output_o\);

-- Location: IOOBUF_X22_Y0_N2
\S[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~42_combout\,
	devoe => ww_devoe,
	o => \S[23]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\S[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~43_combout\,
	devoe => ww_devoe,
	o => \S[24]~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\S[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~44_combout\,
	devoe => ww_devoe,
	o => \S[25]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\S[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~75_combout\,
	devoe => ww_devoe,
	o => \S[26]~output_o\);

-- Location: IOOBUF_X20_Y0_N16
\S[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~76_combout\,
	devoe => ww_devoe,
	o => \S[27]~output_o\);

-- Location: IOOBUF_X16_Y0_N16
\S[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~45_combout\,
	devoe => ww_devoe,
	o => \S[28]~output_o\);

-- Location: IOOBUF_X18_Y0_N9
\S[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~46_combout\,
	devoe => ww_devoe,
	o => \S[29]~output_o\);

-- Location: IOOBUF_X18_Y0_N23
\S[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~77_combout\,
	devoe => ww_devoe,
	o => \S[30]~output_o\);

-- Location: IOOBUF_X18_Y0_N16
\S[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~47_combout\,
	devoe => ww_devoe,
	o => \S[31]~output_o\);

-- Location: IOOBUF_X59_Y0_N2
\S[32]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~48_combout\,
	devoe => ww_devoe,
	o => \S[32]~output_o\);

-- Location: IOOBUF_X63_Y0_N9
\S[33]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~49_combout\,
	devoe => ww_devoe,
	o => \S[33]~output_o\);

-- Location: IOOBUF_X63_Y0_N2
\S[34]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~50_combout\,
	devoe => ww_devoe,
	o => \S[34]~output_o\);

-- Location: IOOBUF_X67_Y14_N2
\S[35]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~51_combout\,
	devoe => ww_devoe,
	o => \S[35]~output_o\);

-- Location: IOOBUF_X67_Y3_N23
\S[36]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~52_combout\,
	devoe => ww_devoe,
	o => \S[36]~output_o\);

-- Location: IOOBUF_X67_Y3_N16
\S[37]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~53_combout\,
	devoe => ww_devoe,
	o => \S[37]~output_o\);

-- Location: IOOBUF_X67_Y15_N9
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

-- Location: IOOBUF_X67_Y15_N2
\S[39]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~55_combout\,
	devoe => ww_devoe,
	o => \S[39]~output_o\);

-- Location: IOOBUF_X38_Y0_N30
\S[40]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~56_combout\,
	devoe => ww_devoe,
	o => \S[40]~output_o\);

-- Location: IOOBUF_X67_Y9_N16
\S[41]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~57_combout\,
	devoe => ww_devoe,
	o => \S[41]~output_o\);

-- Location: IOOBUF_X61_Y0_N2
\S[42]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~78_combout\,
	devoe => ww_devoe,
	o => \S[42]~output_o\);

-- Location: IOOBUF_X67_Y13_N9
\S[43]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~79_combout\,
	devoe => ww_devoe,
	o => \S[43]~output_o\);

-- Location: IOOBUF_X52_Y0_N2
\S[44]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~58_combout\,
	devoe => ww_devoe,
	o => \S[44]~output_o\);

-- Location: IOOBUF_X52_Y0_N16
\S[45]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~59_combout\,
	devoe => ww_devoe,
	o => \S[45]~output_o\);

-- Location: IOOBUF_X27_Y0_N2
\S[46]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~60_combout\,
	devoe => ww_devoe,
	o => \S[46]~output_o\);

-- Location: IOOBUF_X67_Y14_N9
\S[47]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~61_combout\,
	devoe => ww_devoe,
	o => \S[47]~output_o\);

-- Location: IOOBUF_X50_Y43_N16
\S[48]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~62_combout\,
	devoe => ww_devoe,
	o => \S[48]~output_o\);

-- Location: IOOBUF_X67_Y25_N16
\S[49]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~63_combout\,
	devoe => ww_devoe,
	o => \S[49]~output_o\);

-- Location: IOOBUF_X45_Y43_N9
\S[50]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~80_combout\,
	devoe => ww_devoe,
	o => \S[50]~output_o\);

-- Location: IOOBUF_X54_Y43_N30
\S[51]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~81_combout\,
	devoe => ww_devoe,
	o => \S[51]~output_o\);

-- Location: IOOBUF_X67_Y28_N23
\S[52]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~64_combout\,
	devoe => ww_devoe,
	o => \S[52]~output_o\);

-- Location: IOOBUF_X67_Y25_N23
\S[53]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~65_combout\,
	devoe => ww_devoe,
	o => \S[53]~output_o\);

-- Location: IOOBUF_X56_Y43_N16
\S[54]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~66_combout\,
	devoe => ww_devoe,
	o => \S[54]~output_o\);

-- Location: IOOBUF_X56_Y43_N9
\S[55]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~67_combout\,
	devoe => ww_devoe,
	o => \S[55]~output_o\);

-- Location: IOOBUF_X50_Y43_N9
\S[56]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~68_combout\,
	devoe => ww_devoe,
	o => \S[56]~output_o\);

-- Location: IOOBUF_X59_Y43_N2
\S[57]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~69_combout\,
	devoe => ww_devoe,
	o => \S[57]~output_o\);

-- Location: IOOBUF_X50_Y43_N2
\S[58]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~82_combout\,
	devoe => ww_devoe,
	o => \S[58]~output_o\);

-- Location: IOOBUF_X59_Y43_N16
\S[59]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~70_combout\,
	devoe => ww_devoe,
	o => \S[59]~output_o\);

-- Location: IOOBUF_X56_Y43_N23
\S[60]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~71_combout\,
	devoe => ww_devoe,
	o => \S[60]~output_o\);

-- Location: IOOBUF_X67_Y29_N2
\S[61]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~72_combout\,
	devoe => ww_devoe,
	o => \S[61]~output_o\);

-- Location: IOOBUF_X67_Y19_N16
\S[62]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~83_combout\,
	devoe => ww_devoe,
	o => \S[62]~output_o\);

-- Location: IOOBUF_X67_Y30_N23
\S[63]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~73_combout\,
	devoe => ww_devoe,
	o => \S[63]~output_o\);

-- Location: IOOBUF_X67_Y17_N23
\Cout~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \c~73_combout\,
	devoe => ww_devoe,
	o => \Cout~output_o\);

-- Location: IOOBUF_X67_Y17_N16
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

-- Location: IOIBUF_X67_Y7_N15
\Cin~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cin,
	o => \Cin~input_o\);

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

-- Location: LCCOMB_X50_Y17_N28
\S~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~20_combout\ = \B[0]~input_o\ $ (\Cin~input_o\ $ (\A[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[0]~input_o\,
	datac => \Cin~input_o\,
	datad => \A[0]~input_o\,
	combout => \S~20_combout\);

-- Location: IOIBUF_X38_Y0_N8
\B[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: IOIBUF_X50_Y43_N22
\A[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: LCCOMB_X50_Y17_N6
\p[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(1) = \B[1]~input_o\ $ (\A[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datad => \A[1]~input_o\,
	combout => p(1));

-- Location: LCCOMB_X50_Y17_N12
\S~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~21_combout\ = p(1) $ (((\A[0]~input_o\ & ((\B[0]~input_o\) # (\Cin~input_o\))) # (!\A[0]~input_o\ & (\B[0]~input_o\ & \Cin~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \B[0]~input_o\,
	datac => \Cin~input_o\,
	datad => p(1),
	combout => \S~21_combout\);

-- Location: IOIBUF_X50_Y0_N22
\A[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: IOIBUF_X0_Y17_N15
\B[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: LCCOMB_X50_Y17_N26
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

-- Location: LCCOMB_X50_Y17_N24
\PrefixNetwork|Recur:gPair[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:gPair[0]~0_combout\ = (\A[1]~input_o\ & ((\B[1]~input_o\) # ((\A[0]~input_o\ & \B[0]~input_o\)))) # (!\A[1]~input_o\ & (\A[0]~input_o\ & (\B[0]~input_o\ & \B[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \A[1]~input_o\,
	datac => \B[0]~input_o\,
	datad => \B[1]~input_o\,
	combout => \PrefixNetwork|Recur:gPair[0]~0_combout\);

-- Location: LCCOMB_X50_Y17_N18
\c~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \c~28_combout\ = (\A[1]~input_o\ & (!\B[1]~input_o\ & (\B[0]~input_o\ $ (\A[0]~input_o\)))) # (!\A[1]~input_o\ & (\B[1]~input_o\ & (\B[0]~input_o\ $ (\A[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \B[1]~input_o\,
	datac => \B[0]~input_o\,
	datad => \A[0]~input_o\,
	combout => \c~28_combout\);

-- Location: LCCOMB_X50_Y17_N8
\S~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~22_combout\ = p(2) $ (((\PrefixNetwork|Recur:gPair[0]~0_combout\) # ((\Cin~input_o\ & \c~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(2),
	datab => \PrefixNetwork|Recur:gPair[0]~0_combout\,
	datac => \Cin~input_o\,
	datad => \c~28_combout\,
	combout => \S~22_combout\);

-- Location: IOIBUF_X0_Y17_N22
\B[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: IOIBUF_X27_Y0_N8
\A[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: LCCOMB_X50_Y17_N30
\c~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \c~29_combout\ = (\Cin~input_o\ & (\c~28_combout\ & (\B[2]~input_o\ $ (\A[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \A[2]~input_o\,
	datac => \Cin~input_o\,
	datad => \c~28_combout\,
	combout => \c~29_combout\);

-- Location: LCCOMB_X50_Y17_N0
\c[3]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[3]~30_combout\ = (\B[2]~input_o\ & ((\A[2]~input_o\) # (\PrefixNetwork|Recur:gPair[0]~0_combout\))) # (!\B[2]~input_o\ & (\A[2]~input_o\ & \PrefixNetwork|Recur:gPair[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datac => \A[2]~input_o\,
	datad => \PrefixNetwork|Recur:gPair[0]~0_combout\,
	combout => \c[3]~30_combout\);

-- Location: LCCOMB_X50_Y17_N10
\S~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~23_combout\ = \B[3]~input_o\ $ (\A[3]~input_o\ $ (((\c~29_combout\) # (\c[3]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \A[3]~input_o\,
	datac => \c~29_combout\,
	datad => \c[3]~30_combout\,
	combout => \S~23_combout\);

-- Location: IOIBUF_X67_Y31_N1
\B[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: IOIBUF_X67_Y31_N22
\A[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: LCCOMB_X53_Y17_N16
\p[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(4) = \B[4]~input_o\ $ (\A[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[4]~input_o\,
	datad => \A[4]~input_o\,
	combout => p(4));

-- Location: LCCOMB_X50_Y17_N22
\PrefixNetwork|Recur:Inner|gPair~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|gPair~0_combout\ = (\B[3]~input_o\ & (!\A[3]~input_o\ & (\A[2]~input_o\ $ (\B[2]~input_o\)))) # (!\B[3]~input_o\ & (\A[3]~input_o\ & (\A[2]~input_o\ $ (\B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \A[2]~input_o\,
	datac => \A[3]~input_o\,
	datad => \B[2]~input_o\,
	combout => \PrefixNetwork|Recur:Inner|gPair~0_combout\);

-- Location: LCCOMB_X50_Y17_N20
\PrefixNetwork|Recur:Inner|gPair~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|gPair~1_combout\ = (\PrefixNetwork|Recur:Inner|gPair~0_combout\ & \PrefixNetwork|Recur:gPair[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|Recur:Inner|gPair~0_combout\,
	datad => \PrefixNetwork|Recur:gPair[0]~0_combout\,
	combout => \PrefixNetwork|Recur:Inner|gPair~1_combout\);

-- Location: LCCOMB_X50_Y17_N16
\PrefixNetwork|Recur:gPair[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:gPair[1]~0_combout\ = (\B[3]~input_o\ & ((\A[3]~input_o\) # ((\A[2]~input_o\ & \B[2]~input_o\)))) # (!\B[3]~input_o\ & (\A[2]~input_o\ & (\A[3]~input_o\ & \B[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \A[2]~input_o\,
	datac => \A[3]~input_o\,
	datad => \B[2]~input_o\,
	combout => \PrefixNetwork|Recur:gPair[1]~0_combout\);

-- Location: LCCOMB_X50_Y17_N2
\c~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \c~31_combout\ = (\Cin~input_o\ & (\PrefixNetwork|Recur:Inner|gPair~0_combout\ & \c~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Cin~input_o\,
	datac => \PrefixNetwork|Recur:Inner|gPair~0_combout\,
	datad => \c~28_combout\,
	combout => \c~31_combout\);

-- Location: LCCOMB_X53_Y27_N4
\S~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~24_combout\ = p(4) $ (((\PrefixNetwork|Recur:Inner|gPair~1_combout\) # ((\PrefixNetwork|Recur:gPair[1]~0_combout\) # (\c~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(4),
	datab => \PrefixNetwork|Recur:Inner|gPair~1_combout\,
	datac => \PrefixNetwork|Recur:gPair[1]~0_combout\,
	datad => \c~31_combout\,
	combout => \S~24_combout\);

-- Location: IOIBUF_X67_Y13_N15
\B[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: IOIBUF_X67_Y9_N8
\A[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: LCCOMB_X53_Y13_N28
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

-- Location: LCCOMB_X50_Y17_N4
\PrefixNetwork|Gpre[4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gpre[4]~0_combout\ = (\B[4]~input_o\ & ((\PrefixNetwork|Recur:gPair[1]~0_combout\) # ((\A[4]~input_o\) # (\PrefixNetwork|Recur:Inner|gPair~1_combout\)))) # (!\B[4]~input_o\ & (\A[4]~input_o\ & ((\PrefixNetwork|Recur:gPair[1]~0_combout\) # 
-- (\PrefixNetwork|Recur:Inner|gPair~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \PrefixNetwork|Recur:gPair[1]~0_combout\,
	datac => \A[4]~input_o\,
	datad => \PrefixNetwork|Recur:Inner|gPair~1_combout\,
	combout => \PrefixNetwork|Gpre[4]~0_combout\);

-- Location: LCCOMB_X49_Y17_N28
\S~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~25_combout\ = p(5) $ (((\PrefixNetwork|Gpre[4]~0_combout\) # ((\c~31_combout\ & p(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c~31_combout\,
	datab => p(5),
	datac => p(4),
	datad => \PrefixNetwork|Gpre[4]~0_combout\,
	combout => \S~25_combout\);

-- Location: LCCOMB_X53_Y27_N10
\c~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \c~74_combout\ = (p(5) & (\c~31_combout\ & (\A[4]~input_o\ $ (\B[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datab => p(5),
	datac => \B[4]~input_o\,
	datad => \c~31_combout\,
	combout => \c~74_combout\);

-- Location: LCCOMB_X53_Y17_N2
\PrefixNetwork|Recur:gPair[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:gPair[2]~0_combout\ = (\B[5]~input_o\ & ((\A[5]~input_o\) # ((\A[4]~input_o\ & \B[4]~input_o\)))) # (!\B[5]~input_o\ & (\A[4]~input_o\ & (\B[4]~input_o\ & \A[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datab => \B[5]~input_o\,
	datac => \B[4]~input_o\,
	datad => \A[5]~input_o\,
	combout => \PrefixNetwork|Recur:gPair[2]~0_combout\);

-- Location: IOIBUF_X67_Y34_N8
\A[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: IOIBUF_X67_Y19_N8
\B[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: LCCOMB_X53_Y17_N20
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

-- Location: LCCOMB_X53_Y27_N2
\PrefixNetwork|Recur:Inner|Gpre~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Gpre~0_combout\ = (p(5) & (p(4) & ((\PrefixNetwork|Recur:gPair[1]~0_combout\) # (\PrefixNetwork|Recur:Inner|gPair~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Recur:gPair[1]~0_combout\,
	datab => p(5),
	datac => p(4),
	datad => \PrefixNetwork|Recur:Inner|gPair~1_combout\,
	combout => \PrefixNetwork|Recur:Inner|Gpre~0_combout\);

-- Location: LCCOMB_X53_Y27_N0
\S~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~26_combout\ = p(6) $ (((\c~74_combout\) # ((\PrefixNetwork|Recur:gPair[2]~0_combout\) # (\PrefixNetwork|Recur:Inner|Gpre~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c~74_combout\,
	datab => \PrefixNetwork|Recur:gPair[2]~0_combout\,
	datac => p(6),
	datad => \PrefixNetwork|Recur:Inner|Gpre~0_combout\,
	combout => \S~26_combout\);

-- Location: IOIBUF_X67_Y34_N22
\B[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: IOIBUF_X67_Y31_N8
\A[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: LCCOMB_X53_Y17_N26
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

-- Location: LCCOMB_X53_Y27_N18
\PrefixNetwork|Gpre[6]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gpre[6]~1_combout\ = (\A[6]~input_o\ & ((\PrefixNetwork|Recur:gPair[2]~0_combout\) # ((\B[6]~input_o\) # (\PrefixNetwork|Recur:Inner|Gpre~0_combout\)))) # (!\A[6]~input_o\ & (\B[6]~input_o\ & ((\PrefixNetwork|Recur:gPair[2]~0_combout\) # 
-- (\PrefixNetwork|Recur:Inner|Gpre~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datab => \PrefixNetwork|Recur:gPair[2]~0_combout\,
	datac => \B[6]~input_o\,
	datad => \PrefixNetwork|Recur:Inner|Gpre~0_combout\,
	combout => \PrefixNetwork|Gpre[6]~1_combout\);

-- Location: LCCOMB_X53_Y27_N20
\S~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~27_combout\ = p(7) $ (((\PrefixNetwork|Gpre[6]~1_combout\) # ((\c~74_combout\ & p(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c~74_combout\,
	datab => p(7),
	datac => p(6),
	datad => \PrefixNetwork|Gpre[6]~1_combout\,
	combout => \S~27_combout\);

-- Location: IOIBUF_X67_Y37_N22
\A[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: IOIBUF_X54_Y43_N22
\B[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

-- Location: LCCOMB_X53_Y17_N12
\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[0]~0_combout\ = (p(7) & (p(4) & (p(5) & p(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(7),
	datab => p(4),
	datac => p(5),
	datad => p(6),
	combout => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[0]~0_combout\);

-- Location: LCCOMB_X53_Y17_N22
\c~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \c~32_combout\ = (\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[0]~0_combout\ & (\Cin~input_o\ & (\c~28_combout\ & \PrefixNetwork|Recur:Inner|gPair~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[0]~0_combout\,
	datab => \Cin~input_o\,
	datac => \c~28_combout\,
	datad => \PrefixNetwork|Recur:Inner|gPair~0_combout\,
	combout => \c~32_combout\);

-- Location: LCCOMB_X53_Y17_N8
\PrefixNetwork|Recur:gPair[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:gPair[3]~0_combout\ = (\B[7]~input_o\ & ((\A[7]~input_o\) # ((\A[6]~input_o\ & \B[6]~input_o\)))) # (!\B[7]~input_o\ & (\A[6]~input_o\ & (\B[6]~input_o\ & \A[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datab => \B[6]~input_o\,
	datac => \B[7]~input_o\,
	datad => \A[7]~input_o\,
	combout => \PrefixNetwork|Recur:gPair[3]~0_combout\);

-- Location: LCCOMB_X53_Y17_N10
\PrefixNetwork|Recur:Inner|Recur:gPair[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Recur:gPair[1]~combout\ = (\PrefixNetwork|Recur:gPair[3]~0_combout\) # ((p(7) & (p(6) & \PrefixNetwork|Recur:gPair[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(7),
	datab => p(6),
	datac => \PrefixNetwork|Recur:gPair[3]~0_combout\,
	datad => \PrefixNetwork|Recur:gPair[2]~0_combout\,
	combout => \PrefixNetwork|Recur:Inner|Recur:gPair[1]~combout\);

-- Location: LCCOMB_X54_Y17_N8
\c[8]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[8]~33_combout\ = (!\PrefixNetwork|Recur:Inner|Recur:gPair[1]~combout\ & (((!\PrefixNetwork|Recur:gPair[1]~0_combout\ & !\PrefixNetwork|Recur:Inner|gPair~1_combout\)) # (!\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[0]~0_combout\,
	datab => \PrefixNetwork|Recur:gPair[1]~0_combout\,
	datac => \PrefixNetwork|Recur:Inner|gPair~1_combout\,
	datad => \PrefixNetwork|Recur:Inner|Recur:gPair[1]~combout\,
	combout => \c[8]~33_combout\);

-- Location: LCCOMB_X53_Y24_N0
\S~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~28_combout\ = \A[8]~input_o\ $ (\B[8]~input_o\ $ (((\c~32_combout\) # (!\c[8]~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[8]~input_o\,
	datab => \B[8]~input_o\,
	datac => \c~32_combout\,
	datad => \c[8]~33_combout\,
	combout => \S~28_combout\);

-- Location: LCCOMB_X50_Y17_N14
\PrefixNetwork|Recur:Inner|Recur:Inner|gPair~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Recur:Inner|gPair~0_combout\ = (\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[0]~0_combout\ & ((\PrefixNetwork|Recur:gPair[1]~0_combout\) # ((\PrefixNetwork|Recur:Inner|gPair~0_combout\ & 
-- \PrefixNetwork|Recur:gPair[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Recur:Inner|gPair~0_combout\,
	datab => \PrefixNetwork|Recur:gPair[1]~0_combout\,
	datac => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[0]~0_combout\,
	datad => \PrefixNetwork|Recur:gPair[0]~0_combout\,
	combout => \PrefixNetwork|Recur:Inner|Recur:Inner|gPair~0_combout\);

-- Location: LCCOMB_X53_Y24_N2
\PrefixNetwork|Gpre[8]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gpre[8]~2_combout\ = (\B[8]~input_o\ & ((\PrefixNetwork|Recur:Inner|Recur:gPair[1]~combout\) # ((\A[8]~input_o\) # (\PrefixNetwork|Recur:Inner|Recur:Inner|gPair~0_combout\)))) # (!\B[8]~input_o\ & (\A[8]~input_o\ & 
-- ((\PrefixNetwork|Recur:Inner|Recur:gPair[1]~combout\) # (\PrefixNetwork|Recur:Inner|Recur:Inner|gPair~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Recur:Inner|Recur:gPair[1]~combout\,
	datab => \B[8]~input_o\,
	datac => \A[8]~input_o\,
	datad => \PrefixNetwork|Recur:Inner|Recur:Inner|gPair~0_combout\,
	combout => \PrefixNetwork|Gpre[8]~2_combout\);

-- Location: IOIBUF_X67_Y35_N1
\B[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(9),
	o => \B[9]~input_o\);

-- Location: IOIBUF_X52_Y43_N15
\A[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

-- Location: LCCOMB_X53_Y24_N12
\c~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \c~34_combout\ = (\c~31_combout\ & (\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[0]~0_combout\ & (\A[8]~input_o\ $ (\B[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[8]~input_o\,
	datab => \B[8]~input_o\,
	datac => \c~31_combout\,
	datad => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[0]~0_combout\,
	combout => \c~34_combout\);

-- Location: LCCOMB_X53_Y24_N18
\S~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~29_combout\ = \B[9]~input_o\ $ (\A[9]~input_o\ $ (((\PrefixNetwork|Gpre[8]~2_combout\) # (\c~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gpre[8]~2_combout\,
	datab => \B[9]~input_o\,
	datac => \A[9]~input_o\,
	datad => \c~34_combout\,
	combout => \S~29_combout\);

-- Location: LCCOMB_X53_Y24_N8
\PrefixNetwork|Recur:gPair[4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:gPair[4]~0_combout\ = (\B[9]~input_o\ & ((\A[9]~input_o\) # ((\B[8]~input_o\ & \A[8]~input_o\)))) # (!\B[9]~input_o\ & (\A[9]~input_o\ & (\B[8]~input_o\ & \A[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[9]~input_o\,
	datab => \A[9]~input_o\,
	datac => \B[8]~input_o\,
	datad => \A[8]~input_o\,
	combout => \PrefixNetwork|Recur:gPair[4]~0_combout\);

-- Location: IOIBUF_X45_Y43_N29
\B[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(10),
	o => \B[10]~input_o\);

-- Location: IOIBUF_X41_Y43_N15
\A[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

-- Location: LCCOMB_X53_Y24_N20
\p[10]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(10) = \B[10]~input_o\ $ (\A[10]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[10]~input_o\,
	datad => \A[10]~input_o\,
	combout => p(10));

-- Location: LCCOMB_X53_Y24_N14
\c~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \c~35_combout\ = (\c~34_combout\ & (\B[9]~input_o\ $ (\A[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[9]~input_o\,
	datac => \A[9]~input_o\,
	datad => \c~34_combout\,
	combout => \c~35_combout\);

-- Location: LCCOMB_X53_Y24_N4
\PrefixNetwork|Recur:Inner|Recur:pPair[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Recur:pPair[2]~0_combout\ = (\B[9]~input_o\ & (!\A[9]~input_o\ & (\B[8]~input_o\ $ (\A[8]~input_o\)))) # (!\B[9]~input_o\ & (\A[9]~input_o\ & (\B[8]~input_o\ $ (\A[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[9]~input_o\,
	datab => \B[8]~input_o\,
	datac => \A[9]~input_o\,
	datad => \A[8]~input_o\,
	combout => \PrefixNetwork|Recur:Inner|Recur:pPair[2]~0_combout\);

-- Location: LCCOMB_X53_Y24_N10
\PrefixNetwork|Recur:Inner|Gpre~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Gpre~1_combout\ = (\PrefixNetwork|Recur:Inner|Recur:pPair[2]~0_combout\ & ((\PrefixNetwork|Recur:Inner|Recur:gPair[1]~combout\) # (\PrefixNetwork|Recur:Inner|Recur:Inner|gPair~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Recur:Inner|Recur:gPair[1]~combout\,
	datab => \PrefixNetwork|Recur:Inner|Recur:pPair[2]~0_combout\,
	datad => \PrefixNetwork|Recur:Inner|Recur:Inner|gPair~0_combout\,
	combout => \PrefixNetwork|Recur:Inner|Gpre~1_combout\);

-- Location: LCCOMB_X53_Y24_N30
\S~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~30_combout\ = p(10) $ (((\PrefixNetwork|Recur:gPair[4]~0_combout\) # ((\c~35_combout\) # (\PrefixNetwork|Recur:Inner|Gpre~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Recur:gPair[4]~0_combout\,
	datab => p(10),
	datac => \c~35_combout\,
	datad => \PrefixNetwork|Recur:Inner|Gpre~1_combout\,
	combout => \S~30_combout\);

-- Location: IOIBUF_X52_Y43_N29
\B[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(11),
	o => \B[11]~input_o\);

-- Location: IOIBUF_X67_Y26_N22
\A[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(11),
	o => \A[11]~input_o\);

-- Location: LCCOMB_X53_Y24_N22
\p[11]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(11) = \B[11]~input_o\ $ (\A[11]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[11]~input_o\,
	datad => \A[11]~input_o\,
	combout => p(11));

-- Location: LCCOMB_X53_Y24_N16
\PrefixNetwork|Gpre[10]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gpre[10]~3_combout\ = (\B[10]~input_o\ & ((\A[10]~input_o\) # ((\PrefixNetwork|Recur:gPair[4]~0_combout\) # (\PrefixNetwork|Recur:Inner|Gpre~1_combout\)))) # (!\B[10]~input_o\ & (\A[10]~input_o\ & ((\PrefixNetwork|Recur:gPair[4]~0_combout\) 
-- # (\PrefixNetwork|Recur:Inner|Gpre~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[10]~input_o\,
	datab => \A[10]~input_o\,
	datac => \PrefixNetwork|Recur:gPair[4]~0_combout\,
	datad => \PrefixNetwork|Recur:Inner|Gpre~1_combout\,
	combout => \PrefixNetwork|Gpre[10]~3_combout\);

-- Location: LCCOMB_X53_Y24_N24
\S~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~31_combout\ = p(11) $ (((\PrefixNetwork|Gpre[10]~3_combout\) # ((p(10) & \c~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(11),
	datab => p(10),
	datac => \c~35_combout\,
	datad => \PrefixNetwork|Gpre[10]~3_combout\,
	combout => \S~31_combout\);

-- Location: LCCOMB_X53_Y24_N26
\PrefixNetwork|Recur:gPair[5]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:gPair[5]~0_combout\ = (\B[11]~input_o\ & ((\A[11]~input_o\) # ((\B[10]~input_o\ & \A[10]~input_o\)))) # (!\B[11]~input_o\ & (\A[11]~input_o\ & (\B[10]~input_o\ & \A[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[11]~input_o\,
	datab => \A[11]~input_o\,
	datac => \B[10]~input_o\,
	datad => \A[10]~input_o\,
	combout => \PrefixNetwork|Recur:gPair[5]~0_combout\);

-- Location: LCCOMB_X53_Y24_N28
\PrefixNetwork|Recur:Inner|Recur:gPair[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Recur:gPair[2]~combout\ = (\PrefixNetwork|Recur:gPair[5]~0_combout\) # ((p(11) & (\PrefixNetwork|Recur:gPair[4]~0_combout\ & p(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(11),
	datab => \PrefixNetwork|Recur:gPair[4]~0_combout\,
	datac => \PrefixNetwork|Recur:gPair[5]~0_combout\,
	datad => p(10),
	combout => \PrefixNetwork|Recur:Inner|Recur:gPair[2]~combout\);

-- Location: LCCOMB_X54_Y21_N24
\c~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \c~36_combout\ = (p(11) & (p(10) & (\c~32_combout\ & \PrefixNetwork|Recur:Inner|Recur:pPair[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(11),
	datab => p(10),
	datac => \c~32_combout\,
	datad => \PrefixNetwork|Recur:Inner|Recur:pPair[2]~0_combout\,
	combout => \c~36_combout\);

-- Location: IOIBUF_X54_Y43_N8
\B[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(12),
	o => \B[12]~input_o\);

-- Location: IOIBUF_X67_Y38_N15
\A[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(12),
	o => \A[12]~input_o\);

-- Location: LCCOMB_X54_Y24_N12
\p[12]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(12) = \B[12]~input_o\ $ (\A[12]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[12]~input_o\,
	datad => \A[12]~input_o\,
	combout => p(12));

-- Location: LCCOMB_X54_Y17_N14
\PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~0_combout\ = (p(11) & (\PrefixNetwork|Recur:Inner|Recur:pPair[2]~0_combout\ & (p(10) & !\c[8]~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(11),
	datab => \PrefixNetwork|Recur:Inner|Recur:pPair[2]~0_combout\,
	datac => p(10),
	datad => \c[8]~33_combout\,
	combout => \PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~0_combout\);

-- Location: LCCOMB_X54_Y21_N6
\S~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~32_combout\ = p(12) $ (((\PrefixNetwork|Recur:Inner|Recur:gPair[2]~combout\) # ((\c~36_combout\) # (\PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Recur:Inner|Recur:gPair[2]~combout\,
	datab => \c~36_combout\,
	datac => p(12),
	datad => \PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~0_combout\,
	combout => \S~32_combout\);

-- Location: IOIBUF_X67_Y28_N8
\A[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(13),
	o => \A[13]~input_o\);

-- Location: IOIBUF_X67_Y28_N1
\B[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(13),
	o => \B[13]~input_o\);

-- Location: LCCOMB_X54_Y24_N4
\p[13]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(13) = \A[13]~input_o\ $ (\B[13]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[13]~input_o\,
	datad => \B[13]~input_o\,
	combout => p(13));

-- Location: LCCOMB_X54_Y24_N18
\PrefixNetwork|Gpre[12]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gpre[12]~4_combout\ = (\A[12]~input_o\ & ((\PrefixNetwork|Recur:Inner|Recur:gPair[2]~combout\) # ((\B[12]~input_o\) # (\PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~0_combout\)))) # (!\A[12]~input_o\ & (\B[12]~input_o\ & 
-- ((\PrefixNetwork|Recur:Inner|Recur:gPair[2]~combout\) # (\PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Recur:Inner|Recur:gPair[2]~combout\,
	datab => \A[12]~input_o\,
	datac => \B[12]~input_o\,
	datad => \PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~0_combout\,
	combout => \PrefixNetwork|Gpre[12]~4_combout\);

-- Location: LCCOMB_X54_Y24_N2
\S~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~33_combout\ = p(13) $ (((\PrefixNetwork|Gpre[12]~4_combout\) # ((\c~36_combout\ & p(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(13),
	datab => \c~36_combout\,
	datac => p(12),
	datad => \PrefixNetwork|Gpre[12]~4_combout\,
	combout => \S~33_combout\);

-- Location: IOIBUF_X67_Y28_N15
\A[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(14),
	o => \A[14]~input_o\);

-- Location: IOIBUF_X67_Y40_N22
\B[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(14),
	o => \B[14]~input_o\);

-- Location: LCCOMB_X54_Y24_N8
\p[14]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(14) = \A[14]~input_o\ $ (\B[14]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[14]~input_o\,
	datad => \B[14]~input_o\,
	combout => p(14));

-- Location: LCCOMB_X54_Y24_N24
\PrefixNetwork|Recur:gPair[6]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:gPair[6]~0_combout\ = (\B[13]~input_o\ & ((\A[13]~input_o\) # ((\B[12]~input_o\ & \A[12]~input_o\)))) # (!\B[13]~input_o\ & (\B[12]~input_o\ & (\A[13]~input_o\ & \A[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[13]~input_o\,
	datab => \B[12]~input_o\,
	datac => \A[13]~input_o\,
	datad => \A[12]~input_o\,
	combout => \PrefixNetwork|Recur:gPair[6]~0_combout\);

-- Location: LCCOMB_X54_Y24_N22
\c~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \c~75_combout\ = (p(13) & (\c~36_combout\ & (\A[12]~input_o\ $ (\B[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(13),
	datab => \A[12]~input_o\,
	datac => \B[12]~input_o\,
	datad => \c~36_combout\,
	combout => \c~75_combout\);

-- Location: LCCOMB_X54_Y24_N6
\PrefixNetwork|Recur:Inner|Gpre~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Gpre~2_combout\ = (p(13) & (p(12) & ((\PrefixNetwork|Recur:Inner|Recur:gPair[2]~combout\) # (\PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(13),
	datab => \PrefixNetwork|Recur:Inner|Recur:gPair[2]~combout\,
	datac => p(12),
	datad => \PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~0_combout\,
	combout => \PrefixNetwork|Recur:Inner|Gpre~2_combout\);

-- Location: LCCOMB_X54_Y24_N10
\S~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~34_combout\ = p(14) $ (((\PrefixNetwork|Recur:gPair[6]~0_combout\) # ((\c~75_combout\) # (\PrefixNetwork|Recur:Inner|Gpre~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(14),
	datab => \PrefixNetwork|Recur:gPair[6]~0_combout\,
	datac => \c~75_combout\,
	datad => \PrefixNetwork|Recur:Inner|Gpre~2_combout\,
	combout => \S~34_combout\);

-- Location: IOIBUF_X67_Y27_N15
\A[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(15),
	o => \A[15]~input_o\);

-- Location: IOIBUF_X54_Y43_N1
\B[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(15),
	o => \B[15]~input_o\);

-- Location: LCCOMB_X54_Y24_N26
\p[15]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(15) = \A[15]~input_o\ $ (\B[15]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[15]~input_o\,
	datad => \B[15]~input_o\,
	combout => p(15));

-- Location: LCCOMB_X54_Y24_N28
\PrefixNetwork|Gpre[14]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gpre[14]~5_combout\ = (\B[14]~input_o\ & ((\PrefixNetwork|Recur:gPair[6]~0_combout\) # ((\A[14]~input_o\) # (\PrefixNetwork|Recur:Inner|Gpre~2_combout\)))) # (!\B[14]~input_o\ & (\A[14]~input_o\ & ((\PrefixNetwork|Recur:gPair[6]~0_combout\) 
-- # (\PrefixNetwork|Recur:Inner|Gpre~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[14]~input_o\,
	datab => \PrefixNetwork|Recur:gPair[6]~0_combout\,
	datac => \A[14]~input_o\,
	datad => \PrefixNetwork|Recur:Inner|Gpre~2_combout\,
	combout => \PrefixNetwork|Gpre[14]~5_combout\);

-- Location: LCCOMB_X54_Y24_N0
\S~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~35_combout\ = p(15) $ (((\PrefixNetwork|Gpre[14]~5_combout\) # ((p(14) & \c~75_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(14),
	datab => p(15),
	datac => \c~75_combout\,
	datad => \PrefixNetwork|Gpre[14]~5_combout\,
	combout => \S~35_combout\);

-- Location: LCCOMB_X54_Y24_N30
\PrefixNetwork|Recur:Inner|Recur:Inner|gPair~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Recur:Inner|gPair~1_combout\ = (p(15) & (p(13) & (p(14) & p(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(15),
	datab => p(13),
	datac => p(14),
	datad => p(12),
	combout => \PrefixNetwork|Recur:Inner|Recur:Inner|gPair~1_combout\);

-- Location: LCCOMB_X54_Y17_N4
\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[1]~0_combout\ = (p(11) & (\PrefixNetwork|Recur:Inner|Recur:pPair[2]~0_combout\ & (p(10) & \PrefixNetwork|Recur:Inner|Recur:Inner|gPair~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(11),
	datab => \PrefixNetwork|Recur:Inner|Recur:pPair[2]~0_combout\,
	datac => p(10),
	datad => \PrefixNetwork|Recur:Inner|Recur:Inner|gPair~1_combout\,
	combout => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[1]~0_combout\);

-- Location: LCCOMB_X55_Y17_N24
\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|gPair~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|gPair~0_combout\ = (\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[1]~0_combout\ & ((\PrefixNetwork|Recur:Inner|Recur:gPair[1]~combout\) # (\PrefixNetwork|Recur:Inner|Recur:Inner|gPair~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PrefixNetwork|Recur:Inner|Recur:gPair[1]~combout\,
	datac => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[1]~0_combout\,
	datad => \PrefixNetwork|Recur:Inner|Recur:Inner|gPair~0_combout\,
	combout => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|gPair~0_combout\);

-- Location: LCCOMB_X54_Y24_N16
\PrefixNetwork|Recur:gPair[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:gPair[7]~0_combout\ = (\A[15]~input_o\ & ((\B[15]~input_o\) # ((\A[14]~input_o\ & \B[14]~input_o\)))) # (!\A[15]~input_o\ & (\A[14]~input_o\ & (\B[15]~input_o\ & \B[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[15]~input_o\,
	datab => \A[14]~input_o\,
	datac => \B[15]~input_o\,
	datad => \B[14]~input_o\,
	combout => \PrefixNetwork|Recur:gPair[7]~0_combout\);

-- Location: LCCOMB_X54_Y24_N14
\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[1]~0_combout\ = (\PrefixNetwork|Recur:gPair[7]~0_combout\) # ((p(15) & (p(14) & \PrefixNetwork|Recur:gPair[6]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(15),
	datab => \PrefixNetwork|Recur:gPair[7]~0_combout\,
	datac => p(14),
	datad => \PrefixNetwork|Recur:gPair[6]~0_combout\,
	combout => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[1]~0_combout\);

-- Location: LCCOMB_X54_Y24_N20
\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[1]~combout\ = (\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[1]~0_combout\) # ((\PrefixNetwork|Recur:Inner|Recur:Inner|gPair~1_combout\ & \PrefixNetwork|Recur:Inner|Recur:gPair[2]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Recur:Inner|Recur:Inner|gPair~1_combout\,
	datac => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[1]~0_combout\,
	datad => \PrefixNetwork|Recur:Inner|Recur:gPair[2]~combout\,
	combout => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[1]~combout\);

-- Location: IOIBUF_X67_Y19_N22
\A[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(16),
	o => \A[16]~input_o\);

-- Location: IOIBUF_X67_Y5_N8
\B[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(16),
	o => \B[16]~input_o\);

-- Location: LCCOMB_X53_Y17_N28
\p[16]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(16) = \A[16]~input_o\ $ (\B[16]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[16]~input_o\,
	datad => \B[16]~input_o\,
	combout => p(16));

-- Location: LCCOMB_X54_Y16_N16
\c~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \c~37_combout\ = (\c~32_combout\ & \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \c~32_combout\,
	datad => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[1]~0_combout\,
	combout => \c~37_combout\);

-- Location: LCCOMB_X54_Y16_N30
\S~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~36_combout\ = p(16) $ (((\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|gPair~0_combout\) # ((\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[1]~combout\) # (\c~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|gPair~0_combout\,
	datab => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[1]~combout\,
	datac => p(16),
	datad => \c~37_combout\,
	combout => \S~36_combout\);

-- Location: IOIBUF_X50_Y0_N1
\B[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(17),
	o => \B[17]~input_o\);

-- Location: IOIBUF_X54_Y0_N22
\A[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(17),
	o => \A[17]~input_o\);

-- Location: LCCOMB_X54_Y16_N10
\p[17]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(17) = \B[17]~input_o\ $ (\A[17]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[17]~input_o\,
	datad => \A[17]~input_o\,
	combout => p(17));

-- Location: LCCOMB_X54_Y16_N24
\PrefixNetwork|Gpre[16]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gpre[16]~6_combout\ = (\A[16]~input_o\ & ((\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[1]~combout\) # ((\B[16]~input_o\) # (\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|gPair~0_combout\)))) # (!\A[16]~input_o\ & 
-- (\B[16]~input_o\ & ((\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[1]~combout\) # (\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|gPair~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[16]~input_o\,
	datab => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[1]~combout\,
	datac => \B[16]~input_o\,
	datad => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|gPair~0_combout\,
	combout => \PrefixNetwork|Gpre[16]~6_combout\);

-- Location: LCCOMB_X54_Y16_N12
\S~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~37_combout\ = p(17) $ (((\PrefixNetwork|Gpre[16]~6_combout\) # ((\c~37_combout\ & p(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(17),
	datab => \c~37_combout\,
	datac => p(16),
	datad => \PrefixNetwork|Gpre[16]~6_combout\,
	combout => \S~37_combout\);

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

-- Location: LCCOMB_X54_Y16_N22
\PrefixNetwork|Recur:gPair[8]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:gPair[8]~0_combout\ = (\B[17]~input_o\ & ((\A[17]~input_o\) # ((\B[16]~input_o\ & \A[16]~input_o\)))) # (!\B[17]~input_o\ & (\A[17]~input_o\ & (\B[16]~input_o\ & \A[16]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[17]~input_o\,
	datab => \A[17]~input_o\,
	datac => \B[16]~input_o\,
	datad => \A[16]~input_o\,
	combout => \PrefixNetwork|Recur:gPair[8]~0_combout\);

-- Location: IOIBUF_X67_Y12_N15
\B[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(18),
	o => \B[18]~input_o\);

-- Location: LCCOMB_X54_Y16_N4
\PrefixNetwork|Recur:Inner|Gpre~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Gpre~3_combout\ = (p(17) & (p(16) & ((\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[1]~combout\) # (\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|gPair~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(17),
	datab => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[1]~combout\,
	datac => p(16),
	datad => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|gPair~0_combout\,
	combout => \PrefixNetwork|Recur:Inner|Gpre~3_combout\);

-- Location: LCCOMB_X54_Y16_N2
\c[18]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[18]~38_combout\ = (\PrefixNetwork|Recur:Inner|Gpre~3_combout\) # ((p(17) & (p(16) & \c~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(17),
	datab => p(16),
	datac => \PrefixNetwork|Recur:Inner|Gpre~3_combout\,
	datad => \c~37_combout\,
	combout => \c[18]~38_combout\);

-- Location: LCCOMB_X54_Y16_N20
\S~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~74_combout\ = \A[18]~input_o\ $ (\B[18]~input_o\ $ (((\PrefixNetwork|Recur:gPair[8]~0_combout\) # (\c[18]~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[18]~input_o\,
	datab => \PrefixNetwork|Recur:gPair[8]~0_combout\,
	datac => \B[18]~input_o\,
	datad => \c[18]~38_combout\,
	combout => \S~74_combout\);

-- Location: IOIBUF_X61_Y0_N29
\B[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(19),
	o => \B[19]~input_o\);

-- Location: IOIBUF_X54_Y43_N15
\A[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(19),
	o => \A[19]~input_o\);

-- Location: LCCOMB_X54_Y16_N28
\p[19]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(19) = \B[19]~input_o\ $ (\A[19]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[19]~input_o\,
	datad => \A[19]~input_o\,
	combout => p(19));

-- Location: LCCOMB_X54_Y16_N0
\p[18]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(18) = \B[18]~input_o\ $ (\A[18]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[18]~input_o\,
	datad => \A[18]~input_o\,
	combout => p(18));

-- Location: LCCOMB_X54_Y16_N26
\c~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \c~76_combout\ = (p(18) & (p(17) & (\A[16]~input_o\ $ (\B[16]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[16]~input_o\,
	datab => \B[16]~input_o\,
	datac => p(18),
	datad => p(17),
	combout => \c~76_combout\);

-- Location: LCCOMB_X54_Y16_N6
\PrefixNetwork|Gpre[18]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gpre[18]~7_combout\ = (\B[18]~input_o\ & ((\PrefixNetwork|Recur:gPair[8]~0_combout\) # ((\PrefixNetwork|Recur:Inner|Gpre~3_combout\) # (\A[18]~input_o\)))) # (!\B[18]~input_o\ & (\A[18]~input_o\ & ((\PrefixNetwork|Recur:gPair[8]~0_combout\) 
-- # (\PrefixNetwork|Recur:Inner|Gpre~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Recur:gPair[8]~0_combout\,
	datab => \PrefixNetwork|Recur:Inner|Gpre~3_combout\,
	datac => \B[18]~input_o\,
	datad => \A[18]~input_o\,
	combout => \PrefixNetwork|Gpre[18]~7_combout\);

-- Location: LCCOMB_X54_Y16_N14
\S~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~38_combout\ = p(19) $ (((\PrefixNetwork|Gpre[18]~7_combout\) # ((\c~37_combout\ & \c~76_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(19),
	datab => \c~37_combout\,
	datac => \c~76_combout\,
	datad => \PrefixNetwork|Gpre[18]~7_combout\,
	combout => \S~38_combout\);

-- Location: LCCOMB_X53_Y17_N18
\PrefixNetwork|Recur:Inner|Recur:Inner|Ppre[4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Recur:Inner|Ppre[4]~0_combout\ = (p(17) & (p(16) & (p(19) & p(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(17),
	datab => p(16),
	datac => p(19),
	datad => p(18),
	combout => \PrefixNetwork|Recur:Inner|Recur:Inner|Ppre[4]~0_combout\);

-- Location: LCCOMB_X53_Y16_N6
\PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~1_combout\ = (\PrefixNetwork|Recur:Inner|Recur:Inner|Ppre[4]~0_combout\ & ((\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[1]~combout\) # ((!\c[8]~33_combout\ & 
-- \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Recur:Inner|Recur:Inner|Ppre[4]~0_combout\,
	datab => \c[8]~33_combout\,
	datac => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[1]~0_combout\,
	datad => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[1]~combout\,
	combout => \PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~1_combout\);

-- Location: LCCOMB_X54_Y16_N8
\PrefixNetwork|Recur:gPair[9]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:gPair[9]~0_combout\ = (\B[19]~input_o\ & ((\A[19]~input_o\) # ((\B[18]~input_o\ & \A[18]~input_o\)))) # (!\B[19]~input_o\ & (\B[18]~input_o\ & (\A[19]~input_o\ & \A[18]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[18]~input_o\,
	datab => \B[19]~input_o\,
	datac => \A[19]~input_o\,
	datad => \A[18]~input_o\,
	combout => \PrefixNetwork|Recur:gPair[9]~0_combout\);

-- Location: LCCOMB_X54_Y16_N18
\PrefixNetwork|Recur:Inner|Recur:gPair[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Recur:gPair[4]~combout\ = (\PrefixNetwork|Recur:gPair[9]~0_combout\) # ((\PrefixNetwork|Recur:gPair[8]~0_combout\ & (p(19) & p(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Recur:gPair[8]~0_combout\,
	datab => p(19),
	datac => \PrefixNetwork|Recur:gPair[9]~0_combout\,
	datad => p(18),
	combout => \PrefixNetwork|Recur:Inner|Recur:gPair[4]~combout\);

-- Location: IOIBUF_X67_Y18_N22
\B[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(20),
	o => \B[20]~input_o\);

-- Location: IOIBUF_X67_Y18_N8
\A[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(20),
	o => \A[20]~input_o\);

-- Location: LCCOMB_X53_Y17_N24
\p[20]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(20) = \B[20]~input_o\ $ (\A[20]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[20]~input_o\,
	datad => \A[20]~input_o\,
	combout => p(20));

-- Location: LCCOMB_X53_Y16_N28
\c~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \c~39_combout\ = (\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[1]~0_combout\ & (\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[0]~0_combout\ & (\PrefixNetwork|Recur:Inner|Recur:Inner|Ppre[4]~0_combout\ & \c~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[1]~0_combout\,
	datab => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[0]~0_combout\,
	datac => \PrefixNetwork|Recur:Inner|Recur:Inner|Ppre[4]~0_combout\,
	datad => \c~31_combout\,
	combout => \c~39_combout\);

-- Location: LCCOMB_X53_Y16_N12
\S~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~39_combout\ = p(20) $ (((\PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~1_combout\) # ((\PrefixNetwork|Recur:Inner|Recur:gPair[4]~combout\) # (\c~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~1_combout\,
	datab => \PrefixNetwork|Recur:Inner|Recur:gPair[4]~combout\,
	datac => p(20),
	datad => \c~39_combout\,
	combout => \S~39_combout\);

-- Location: IOIBUF_X67_Y18_N1
\A[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(21),
	o => \A[21]~input_o\);

-- Location: IOIBUF_X67_Y18_N15
\B[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(21),
	o => \B[21]~input_o\);

-- Location: LCCOMB_X53_Y17_N30
\p[21]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(21) = \A[21]~input_o\ $ (\B[21]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[21]~input_o\,
	datad => \B[21]~input_o\,
	combout => p(21));

-- Location: LCCOMB_X53_Y16_N22
\PrefixNetwork|Gpre[20]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gpre[20]~8_combout\ = (\B[20]~input_o\ & ((\PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~1_combout\) # ((\A[20]~input_o\) # (\PrefixNetwork|Recur:Inner|Recur:gPair[4]~combout\)))) # (!\B[20]~input_o\ & (\A[20]~input_o\ & 
-- ((\PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~1_combout\) # (\PrefixNetwork|Recur:Inner|Recur:gPair[4]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~1_combout\,
	datab => \B[20]~input_o\,
	datac => \A[20]~input_o\,
	datad => \PrefixNetwork|Recur:Inner|Recur:gPair[4]~combout\,
	combout => \PrefixNetwork|Gpre[20]~8_combout\);

-- Location: LCCOMB_X53_Y16_N4
\S~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~40_combout\ = p(21) $ (((\PrefixNetwork|Gpre[20]~8_combout\) # ((p(20) & \c~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(21),
	datab => p(20),
	datac => \PrefixNetwork|Gpre[20]~8_combout\,
	datad => \c~39_combout\,
	combout => \S~40_combout\);

-- Location: LCCOMB_X53_Y16_N8
\PrefixNetwork|Recur:gPair[10]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:gPair[10]~0_combout\ = (\A[21]~input_o\ & ((\B[21]~input_o\) # ((\B[20]~input_o\ & \A[20]~input_o\)))) # (!\A[21]~input_o\ & (\B[20]~input_o\ & (\A[20]~input_o\ & \B[21]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[21]~input_o\,
	datab => \B[20]~input_o\,
	datac => \A[20]~input_o\,
	datad => \B[21]~input_o\,
	combout => \PrefixNetwork|Recur:gPair[10]~0_combout\);

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

-- Location: LCCOMB_X53_Y16_N0
\p[22]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(22) = \B[22]~input_o\ $ (\A[22]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[22]~input_o\,
	datad => \A[22]~input_o\,
	combout => p(22));

-- Location: LCCOMB_X53_Y16_N14
\c~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \c~40_combout\ = (p(21) & (p(20) & (\PrefixNetwork|Recur:Inner|Recur:Inner|Ppre[4]~0_combout\ & \c~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(21),
	datab => p(20),
	datac => \PrefixNetwork|Recur:Inner|Recur:Inner|Ppre[4]~0_combout\,
	datad => \c~37_combout\,
	combout => \c~40_combout\);

-- Location: LCCOMB_X53_Y16_N2
\PrefixNetwork|Recur:Inner|Gpre~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Gpre~4_combout\ = (p(21) & (p(20) & ((\PrefixNetwork|Recur:Inner|Recur:gPair[4]~combout\) # (\PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(21),
	datab => \PrefixNetwork|Recur:Inner|Recur:gPair[4]~combout\,
	datac => p(20),
	datad => \PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~1_combout\,
	combout => \PrefixNetwork|Recur:Inner|Gpre~4_combout\);

-- Location: LCCOMB_X53_Y16_N26
\S~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~41_combout\ = p(22) $ (((\PrefixNetwork|Recur:gPair[10]~0_combout\) # ((\c~40_combout\) # (\PrefixNetwork|Recur:Inner|Gpre~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Recur:gPair[10]~0_combout\,
	datab => p(22),
	datac => \c~40_combout\,
	datad => \PrefixNetwork|Recur:Inner|Gpre~4_combout\,
	combout => \S~41_combout\);

-- Location: IOIBUF_X50_Y0_N15
\A[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(23),
	o => \A[23]~input_o\);

-- Location: IOIBUF_X67_Y12_N22
\B[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(23),
	o => \B[23]~input_o\);

-- Location: LCCOMB_X53_Y16_N30
\p[23]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(23) = \A[23]~input_o\ $ (\B[23]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[23]~input_o\,
	datad => \B[23]~input_o\,
	combout => p(23));

-- Location: LCCOMB_X53_Y16_N24
\PrefixNetwork|Gpre[22]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gpre[22]~9_combout\ = (\A[22]~input_o\ & ((\B[22]~input_o\) # ((\PrefixNetwork|Recur:gPair[10]~0_combout\) # (\PrefixNetwork|Recur:Inner|Gpre~4_combout\)))) # (!\A[22]~input_o\ & (\B[22]~input_o\ & 
-- ((\PrefixNetwork|Recur:gPair[10]~0_combout\) # (\PrefixNetwork|Recur:Inner|Gpre~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[22]~input_o\,
	datab => \B[22]~input_o\,
	datac => \PrefixNetwork|Recur:gPair[10]~0_combout\,
	datad => \PrefixNetwork|Recur:Inner|Gpre~4_combout\,
	combout => \PrefixNetwork|Gpre[22]~9_combout\);

-- Location: LCCOMB_X53_Y16_N20
\S~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~42_combout\ = p(23) $ (((\PrefixNetwork|Gpre[22]~9_combout\) # ((p(22) & \c~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(23),
	datab => p(22),
	datac => \c~40_combout\,
	datad => \PrefixNetwork|Gpre[22]~9_combout\,
	combout => \S~42_combout\);

-- Location: LCCOMB_X53_Y17_N4
\PrefixNetwork|Recur:Inner|Recur:Inner|gPair~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Recur:Inner|gPair~2_combout\ = (p(21) & (p(20) & (p(23) & p(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(21),
	datab => p(20),
	datac => p(23),
	datad => p(22),
	combout => \PrefixNetwork|Recur:Inner|Recur:Inner|gPair~2_combout\);

-- Location: LCCOMB_X53_Y16_N18
\PrefixNetwork|Recur:gPair[11]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:gPair[11]~0_combout\ = (\B[23]~input_o\ & ((\A[23]~input_o\) # ((\B[22]~input_o\ & \A[22]~input_o\)))) # (!\B[23]~input_o\ & (\B[22]~input_o\ & (\A[23]~input_o\ & \A[22]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[23]~input_o\,
	datab => \B[22]~input_o\,
	datac => \A[23]~input_o\,
	datad => \A[22]~input_o\,
	combout => \PrefixNetwork|Recur:gPair[11]~0_combout\);

-- Location: LCCOMB_X53_Y16_N16
\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[2]~0_combout\ = (\PrefixNetwork|Recur:gPair[11]~0_combout\) # ((p(23) & (p(22) & \PrefixNetwork|Recur:gPair[10]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(23),
	datab => p(22),
	datac => \PrefixNetwork|Recur:gPair[10]~0_combout\,
	datad => \PrefixNetwork|Recur:gPair[11]~0_combout\,
	combout => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[2]~0_combout\);

-- Location: LCCOMB_X54_Y17_N28
\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[2]~combout\ = (\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[2]~0_combout\) # ((\PrefixNetwork|Recur:Inner|Recur:Inner|gPair~2_combout\ & \PrefixNetwork|Recur:Inner|Recur:gPair[4]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PrefixNetwork|Recur:Inner|Recur:Inner|gPair~2_combout\,
	datac => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[2]~0_combout\,
	datad => \PrefixNetwork|Recur:Inner|Recur:gPair[4]~combout\,
	combout => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[2]~combout\);

-- Location: IOIBUF_X22_Y0_N15
\A[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(24),
	o => \A[24]~input_o\);

-- Location: IOIBUF_X20_Y0_N22
\B[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(24),
	o => \B[24]~input_o\);

-- Location: LCCOMB_X46_Y6_N0
\p[24]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(24) = \A[24]~input_o\ $ (\B[24]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[24]~input_o\,
	datad => \B[24]~input_o\,
	combout => p(24));

-- Location: LCCOMB_X53_Y17_N14
\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[2]~0_combout\ = (\PrefixNetwork|Recur:Inner|Recur:Inner|gPair~2_combout\ & \PrefixNetwork|Recur:Inner|Recur:Inner|Ppre[4]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|Recur:Inner|Recur:Inner|gPair~2_combout\,
	datad => \PrefixNetwork|Recur:Inner|Recur:Inner|Ppre[4]~0_combout\,
	combout => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[2]~0_combout\);

-- Location: LCCOMB_X54_Y17_N10
\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Gpre~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Gpre~0_combout\ = (\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[2]~0_combout\ & ((\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[1]~combout\) # ((!\c[8]~33_combout\ & 
-- \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c[8]~33_combout\,
	datab => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[1]~0_combout\,
	datac => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[1]~combout\,
	datad => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[2]~0_combout\,
	combout => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Gpre~0_combout\);

-- Location: LCCOMB_X53_Y17_N6
\c~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \c~77_combout\ = (\c~32_combout\ & (\PrefixNetwork|Recur:Inner|Recur:Inner|Ppre[4]~0_combout\ & (\PrefixNetwork|Recur:Inner|Recur:Inner|gPair~2_combout\ & \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c~32_combout\,
	datab => \PrefixNetwork|Recur:Inner|Recur:Inner|Ppre[4]~0_combout\,
	datac => \PrefixNetwork|Recur:Inner|Recur:Inner|gPair~2_combout\,
	datad => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[1]~0_combout\,
	combout => \c~77_combout\);

-- Location: LCCOMB_X45_Y3_N28
\S~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~43_combout\ = p(24) $ (((\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[2]~combout\) # ((\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Gpre~0_combout\) # (\c~77_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[2]~combout\,
	datab => p(24),
	datac => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Gpre~0_combout\,
	datad => \c~77_combout\,
	combout => \S~43_combout\);

-- Location: IOIBUF_X67_Y6_N15
\A[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(25),
	o => \A[25]~input_o\);

-- Location: IOIBUF_X18_Y0_N1
\B[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(25),
	o => \B[25]~input_o\);

-- Location: LCCOMB_X46_Y6_N26
\p[25]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(25) = \A[25]~input_o\ $ (\B[25]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[25]~input_o\,
	datad => \B[25]~input_o\,
	combout => p(25));

-- Location: LCCOMB_X45_Y3_N10
\PrefixNetwork|Gpre[24]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gpre[24]~10_combout\ = (\B[24]~input_o\ & ((\A[24]~input_o\) # ((\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Gpre~0_combout\) # (\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[2]~combout\)))) # (!\B[24]~input_o\ & 
-- (\A[24]~input_o\ & ((\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Gpre~0_combout\) # (\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[2]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[24]~input_o\,
	datab => \A[24]~input_o\,
	datac => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Gpre~0_combout\,
	datad => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[2]~combout\,
	combout => \PrefixNetwork|Gpre[24]~10_combout\);

-- Location: LCCOMB_X45_Y3_N12
\S~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~44_combout\ = p(25) $ (((\PrefixNetwork|Gpre[24]~10_combout\) # ((p(24) & \c~77_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(25),
	datab => p(24),
	datac => \c~77_combout\,
	datad => \PrefixNetwork|Gpre[24]~10_combout\,
	combout => \S~44_combout\);

-- Location: IOIBUF_X45_Y0_N8
\A[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(26),
	o => \A[26]~input_o\);

-- Location: IOIBUF_X43_Y0_N1
\B[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(26),
	o => \B[26]~input_o\);

-- Location: LCCOMB_X46_Y6_N20
\PrefixNetwork|Recur:gPair[12]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:gPair[12]~0_combout\ = (\A[25]~input_o\ & ((\B[25]~input_o\) # ((\A[24]~input_o\ & \B[24]~input_o\)))) # (!\A[25]~input_o\ & (\A[24]~input_o\ & (\B[25]~input_o\ & \B[24]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[24]~input_o\,
	datab => \A[25]~input_o\,
	datac => \B[25]~input_o\,
	datad => \B[24]~input_o\,
	combout => \PrefixNetwork|Recur:gPair[12]~0_combout\);

-- Location: LCCOMB_X45_Y3_N8
\c[26]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[26]~41_combout\ = (\PrefixNetwork|Recur:gPair[12]~0_combout\) # ((p(25) & (p(24) & \c~77_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(25),
	datab => p(24),
	datac => \PrefixNetwork|Recur:gPair[12]~0_combout\,
	datad => \c~77_combout\,
	combout => \c[26]~41_combout\);

-- Location: LCCOMB_X45_Y3_N6
\PrefixNetwork|Recur:Inner|Gpre~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Gpre~5_combout\ = (p(25) & (p(24) & ((\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Gpre~0_combout\) # (\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[2]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(25),
	datab => p(24),
	datac => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Gpre~0_combout\,
	datad => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[2]~combout\,
	combout => \PrefixNetwork|Recur:Inner|Gpre~5_combout\);

-- Location: LCCOMB_X45_Y3_N14
\S~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~75_combout\ = \A[26]~input_o\ $ (\B[26]~input_o\ $ (((\c[26]~41_combout\) # (\PrefixNetwork|Recur:Inner|Gpre~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[26]~input_o\,
	datab => \B[26]~input_o\,
	datac => \c[26]~41_combout\,
	datad => \PrefixNetwork|Recur:Inner|Gpre~5_combout\,
	combout => \S~75_combout\);

-- Location: IOIBUF_X43_Y0_N8
\A[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(27),
	o => \A[27]~input_o\);

-- Location: IOIBUF_X43_Y0_N22
\B[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(27),
	o => \B[27]~input_o\);

-- Location: LCCOMB_X46_Y6_N10
\p[26]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(26) = \A[26]~input_o\ $ (\B[26]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[26]~input_o\,
	datad => \B[26]~input_o\,
	combout => p(26));

-- Location: LCCOMB_X45_Y3_N4
\c~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \c~42_combout\ = (p(25) & (p(26) & (p(24) & \c~77_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(25),
	datab => p(26),
	datac => p(24),
	datad => \c~77_combout\,
	combout => \c~42_combout\);

-- Location: LCCOMB_X45_Y3_N18
\PrefixNetwork|Gpre[26]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gpre[26]~11_combout\ = (\B[26]~input_o\ & ((\PrefixNetwork|Recur:gPair[12]~0_combout\) # ((\A[26]~input_o\) # (\PrefixNetwork|Recur:Inner|Gpre~5_combout\)))) # (!\B[26]~input_o\ & (\A[26]~input_o\ & 
-- ((\PrefixNetwork|Recur:gPair[12]~0_combout\) # (\PrefixNetwork|Recur:Inner|Gpre~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Recur:gPair[12]~0_combout\,
	datab => \B[26]~input_o\,
	datac => \A[26]~input_o\,
	datad => \PrefixNetwork|Recur:Inner|Gpre~5_combout\,
	combout => \PrefixNetwork|Gpre[26]~11_combout\);

-- Location: LCCOMB_X45_Y3_N24
\S~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~76_combout\ = \A[27]~input_o\ $ (\B[27]~input_o\ $ (((\c~42_combout\) # (\PrefixNetwork|Gpre[26]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[27]~input_o\,
	datab => \B[27]~input_o\,
	datac => \c~42_combout\,
	datad => \PrefixNetwork|Gpre[26]~11_combout\,
	combout => \S~76_combout\);

-- Location: LCCOMB_X46_Y6_N28
\p[27]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(27) = \A[27]~input_o\ $ (\B[27]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[27]~input_o\,
	datad => \B[27]~input_o\,
	combout => p(27));

-- Location: LCCOMB_X46_Y6_N14
\PrefixNetwork|Recur:gPair[13]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:gPair[13]~0_combout\ = (\A[27]~input_o\ & ((\B[27]~input_o\) # ((\A[26]~input_o\ & \B[26]~input_o\)))) # (!\A[27]~input_o\ & (\A[26]~input_o\ & (\B[26]~input_o\ & \B[27]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[26]~input_o\,
	datab => \B[26]~input_o\,
	datac => \A[27]~input_o\,
	datad => \B[27]~input_o\,
	combout => \PrefixNetwork|Recur:gPair[13]~0_combout\);

-- Location: LCCOMB_X46_Y6_N4
\PrefixNetwork|Recur:Inner|Recur:gPair[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Recur:gPair[6]~combout\ = (\PrefixNetwork|Recur:gPair[13]~0_combout\) # ((p(26) & (p(27) & \PrefixNetwork|Recur:gPair[12]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(26),
	datab => p(27),
	datac => \PrefixNetwork|Recur:gPair[13]~0_combout\,
	datad => \PrefixNetwork|Recur:gPair[12]~0_combout\,
	combout => \PrefixNetwork|Recur:Inner|Recur:gPair[6]~combout\);

-- Location: IOIBUF_X43_Y0_N15
\A[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(28),
	o => \A[28]~input_o\);

-- Location: IOIBUF_X48_Y0_N22
\B[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(28),
	o => \B[28]~input_o\);

-- Location: LCCOMB_X46_Y4_N14
\p[28]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(28) = \A[28]~input_o\ $ (\B[28]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[28]~input_o\,
	datad => \B[28]~input_o\,
	combout => p(28));

-- Location: LCCOMB_X46_Y6_N30
\PrefixNetwork|Recur:Inner|Recur:pPair[6]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Recur:pPair[6]~0_combout\ = (p(26) & (p(27) & (p(25) & p(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(26),
	datab => p(27),
	datac => p(25),
	datad => p(24),
	combout => \PrefixNetwork|Recur:Inner|Recur:pPair[6]~0_combout\);

-- Location: LCCOMB_X53_Y17_N0
\c~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \c~43_combout\ = (\c~32_combout\ & (\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[2]~0_combout\ & (\PrefixNetwork|Recur:Inner|Recur:pPair[6]~0_combout\ & \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c~32_combout\,
	datab => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[2]~0_combout\,
	datac => \PrefixNetwork|Recur:Inner|Recur:pPair[6]~0_combout\,
	datad => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[1]~0_combout\,
	combout => \c~43_combout\);

-- Location: LCCOMB_X46_Y4_N20
\PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~2_combout\ = (\PrefixNetwork|Recur:Inner|Recur:pPair[6]~0_combout\ & ((\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Gpre~0_combout\) # (\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[2]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Recur:Inner|Recur:pPair[6]~0_combout\,
	datac => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Gpre~0_combout\,
	datad => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[2]~combout\,
	combout => \PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~2_combout\);

-- Location: LCCOMB_X46_Y4_N4
\S~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~45_combout\ = p(28) $ (((\PrefixNetwork|Recur:Inner|Recur:gPair[6]~combout\) # ((\c~43_combout\) # (\PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Recur:Inner|Recur:gPair[6]~combout\,
	datab => p(28),
	datac => \c~43_combout\,
	datad => \PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~2_combout\,
	combout => \S~45_combout\);

-- Location: IOIBUF_X48_Y0_N29
\A[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(29),
	o => \A[29]~input_o\);

-- Location: IOIBUF_X43_Y0_N29
\B[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(29),
	o => \B[29]~input_o\);

-- Location: LCCOMB_X46_Y4_N12
\p[29]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(29) = \A[29]~input_o\ $ (\B[29]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[29]~input_o\,
	datad => \B[29]~input_o\,
	combout => p(29));

-- Location: LCCOMB_X46_Y4_N18
\PrefixNetwork|Gpre[28]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gpre[28]~12_combout\ = (\B[28]~input_o\ & ((\PrefixNetwork|Recur:Inner|Recur:gPair[6]~combout\) # ((\A[28]~input_o\) # (\PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~2_combout\)))) # (!\B[28]~input_o\ & (\A[28]~input_o\ & 
-- ((\PrefixNetwork|Recur:Inner|Recur:gPair[6]~combout\) # (\PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Recur:Inner|Recur:gPair[6]~combout\,
	datab => \B[28]~input_o\,
	datac => \A[28]~input_o\,
	datad => \PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~2_combout\,
	combout => \PrefixNetwork|Gpre[28]~12_combout\);

-- Location: LCCOMB_X46_Y4_N22
\S~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~46_combout\ = p(29) $ (((\PrefixNetwork|Gpre[28]~12_combout\) # ((p(28) & \c~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(29),
	datab => p(28),
	datac => \c~43_combout\,
	datad => \PrefixNetwork|Gpre[28]~12_combout\,
	combout => \S~46_combout\);

-- Location: IOIBUF_X45_Y0_N22
\A[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(30),
	o => \A[30]~input_o\);

-- Location: IOIBUF_X45_Y0_N1
\B[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(30),
	o => \B[30]~input_o\);

-- Location: LCCOMB_X46_Y6_N2
\PrefixNetwork|Recur:gPair[14]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:gPair[14]~0_combout\ = (\A[29]~input_o\ & ((\B[29]~input_o\) # ((\A[28]~input_o\ & \B[28]~input_o\)))) # (!\A[29]~input_o\ & (\A[28]~input_o\ & (\B[28]~input_o\ & \B[29]~input_o\)))

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
	combout => \PrefixNetwork|Recur:gPair[14]~0_combout\);

-- Location: LCCOMB_X46_Y6_N16
\PrefixNetwork|Recur:Inner|Gpre~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Gpre~6_combout\ = (\A[28]~input_o\ & (!\B[28]~input_o\ & (\A[29]~input_o\ $ (\B[29]~input_o\)))) # (!\A[28]~input_o\ & (\B[28]~input_o\ & (\A[29]~input_o\ $ (\B[29]~input_o\))))

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
	combout => \PrefixNetwork|Recur:Inner|Gpre~6_combout\);

-- Location: LCCOMB_X46_Y4_N30
\c[30]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[30]~44_combout\ = (\PrefixNetwork|Recur:gPair[14]~0_combout\) # ((\PrefixNetwork|Recur:Inner|Recur:pPair[6]~0_combout\ & (\PrefixNetwork|Recur:Inner|Gpre~6_combout\ & \c~77_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Recur:gPair[14]~0_combout\,
	datab => \PrefixNetwork|Recur:Inner|Recur:pPair[6]~0_combout\,
	datac => \PrefixNetwork|Recur:Inner|Gpre~6_combout\,
	datad => \c~77_combout\,
	combout => \c[30]~44_combout\);

-- Location: LCCOMB_X46_Y4_N24
\PrefixNetwork|Recur:Inner|Gpre~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Gpre~7_combout\ = (\PrefixNetwork|Recur:Inner|Gpre~6_combout\ & ((\PrefixNetwork|Recur:Inner|Recur:gPair[6]~combout\) # (\PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Recur:Inner|Recur:gPair[6]~combout\,
	datac => \PrefixNetwork|Recur:Inner|Gpre~6_combout\,
	datad => \PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~2_combout\,
	combout => \PrefixNetwork|Recur:Inner|Gpre~7_combout\);

-- Location: LCCOMB_X46_Y4_N26
\S~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~77_combout\ = \A[30]~input_o\ $ (\B[30]~input_o\ $ (((\c[30]~44_combout\) # (\PrefixNetwork|Recur:Inner|Gpre~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[30]~input_o\,
	datab => \B[30]~input_o\,
	datac => \c[30]~44_combout\,
	datad => \PrefixNetwork|Recur:Inner|Gpre~7_combout\,
	combout => \S~77_combout\);

-- Location: IOIBUF_X45_Y0_N15
\A[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(31),
	o => \A[31]~input_o\);

-- Location: IOIBUF_X0_Y6_N1
\B[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(31),
	o => \B[31]~input_o\);

-- Location: LCCOMB_X46_Y6_N18
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

-- Location: LCCOMB_X46_Y4_N16
\c~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \c~45_combout\ = (\PrefixNetwork|Recur:Inner|Gpre~6_combout\ & (\PrefixNetwork|Recur:Inner|Recur:pPair[6]~0_combout\ & (\A[30]~input_o\ $ (\B[30]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[30]~input_o\,
	datab => \B[30]~input_o\,
	datac => \PrefixNetwork|Recur:Inner|Gpre~6_combout\,
	datad => \PrefixNetwork|Recur:Inner|Recur:pPair[6]~0_combout\,
	combout => \c~45_combout\);

-- Location: LCCOMB_X46_Y4_N10
\PrefixNetwork|Gpre[30]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gpre[30]~13_combout\ = (\B[30]~input_o\ & ((\PrefixNetwork|Recur:gPair[14]~0_combout\) # ((\A[30]~input_o\) # (\PrefixNetwork|Recur:Inner|Gpre~7_combout\)))) # (!\B[30]~input_o\ & (\A[30]~input_o\ & 
-- ((\PrefixNetwork|Recur:gPair[14]~0_combout\) # (\PrefixNetwork|Recur:Inner|Gpre~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Recur:gPair[14]~0_combout\,
	datab => \B[30]~input_o\,
	datac => \A[30]~input_o\,
	datad => \PrefixNetwork|Recur:Inner|Gpre~7_combout\,
	combout => \PrefixNetwork|Gpre[30]~13_combout\);

-- Location: LCCOMB_X46_Y4_N28
\S~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~47_combout\ = p(31) $ (((\PrefixNetwork|Gpre[30]~13_combout\) # ((\c~45_combout\ & \c~77_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(31),
	datab => \c~45_combout\,
	datac => \c~77_combout\,
	datad => \PrefixNetwork|Gpre[30]~13_combout\,
	combout => \S~47_combout\);

-- Location: LCCOMB_X46_Y6_N12
\p[30]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(30) = \A[30]~input_o\ $ (\B[30]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[30]~input_o\,
	datad => \B[30]~input_o\,
	combout => p(30));

-- Location: LCCOMB_X46_Y6_N8
\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|gPair~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|gPair~1_combout\ = (p(30) & (\PrefixNetwork|Recur:Inner|Gpre~6_combout\ & (\PrefixNetwork|Recur:Inner|Recur:pPair[6]~0_combout\ & p(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(30),
	datab => \PrefixNetwork|Recur:Inner|Gpre~6_combout\,
	datac => \PrefixNetwork|Recur:Inner|Recur:pPair[6]~0_combout\,
	datad => p(31),
	combout => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|gPair~1_combout\);

-- Location: LCCOMB_X55_Y17_N2
\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:Inner|gPair~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:Inner|gPair~0_combout\ = (\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|gPair~1_combout\ & (\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[2]~0_combout\ & 
-- ((\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[1]~combout\) # (\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|gPair~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[1]~combout\,
	datab => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|gPair~1_combout\,
	datac => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[2]~0_combout\,
	datad => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|gPair~0_combout\,
	combout => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:Inner|gPair~0_combout\);

-- Location: IOIBUF_X67_Y10_N8
\B[32]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(32),
	o => \B[32]~input_o\);

-- Location: IOIBUF_X67_Y10_N15
\A[32]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(32),
	o => \A[32]~input_o\);

-- Location: LCCOMB_X55_Y14_N16
\p[32]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(32) = \B[32]~input_o\ $ (\A[32]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[32]~input_o\,
	datad => \A[32]~input_o\,
	combout => p(32));

-- Location: LCCOMB_X46_Y6_N22
\PrefixNetwork|Recur:gPair[15]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:gPair[15]~0_combout\ = (\A[31]~input_o\ & ((\B[31]~input_o\) # ((\B[30]~input_o\ & \A[30]~input_o\)))) # (!\A[31]~input_o\ & (\B[30]~input_o\ & (\A[30]~input_o\ & \B[31]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[30]~input_o\,
	datab => \A[31]~input_o\,
	datac => \A[30]~input_o\,
	datad => \B[31]~input_o\,
	combout => \PrefixNetwork|Recur:gPair[15]~0_combout\);

-- Location: LCCOMB_X46_Y6_N24
\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:gPair[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:gPair[1]~0_combout\ = (\PrefixNetwork|Recur:gPair[15]~0_combout\) # ((p(30) & (\PrefixNetwork|Recur:gPair[14]~0_combout\ & p(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(30),
	datab => \PrefixNetwork|Recur:gPair[14]~0_combout\,
	datac => \PrefixNetwork|Recur:gPair[15]~0_combout\,
	datad => p(31),
	combout => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:gPair[1]~0_combout\);

-- Location: LCCOMB_X46_Y6_N6
\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:Inner|Recur:pPair[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:Inner|Recur:pPair[0]~4_combout\ = (\PrefixNetwork|Recur:Inner|Gpre~6_combout\ & (p(31) & (\B[30]~input_o\ $ (\A[30]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[30]~input_o\,
	datab => \PrefixNetwork|Recur:Inner|Gpre~6_combout\,
	datac => \A[30]~input_o\,
	datad => p(31),
	combout => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:Inner|Recur:pPair[0]~4_combout\);

-- Location: LCCOMB_X54_Y17_N26
\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:gPair[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:gPair[1]~1_combout\ = (\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:gPair[1]~0_combout\) # ((\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:Inner|Recur:pPair[0]~4_combout\ & 
-- \PrefixNetwork|Recur:Inner|Recur:gPair[6]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:gPair[1]~0_combout\,
	datac => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:Inner|Recur:pPair[0]~4_combout\,
	datad => \PrefixNetwork|Recur:Inner|Recur:gPair[6]~combout\,
	combout => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:gPair[1]~1_combout\);

-- Location: LCCOMB_X54_Y17_N16
\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:gPair[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:gPair[1]~combout\ = (\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:gPair[1]~1_combout\) # ((\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[2]~combout\ & 
-- \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|gPair~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[2]~combout\,
	datac => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:gPair[1]~1_combout\,
	datad => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|gPair~1_combout\,
	combout => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:gPair[1]~combout\);

-- Location: LCCOMB_X55_Y17_N20
\c~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \c~46_combout\ = (\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:Inner|Recur:pPair[0]~4_combout\ & (\PrefixNetwork|Recur:Inner|Recur:pPair[6]~0_combout\ & \c~77_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:Inner|Recur:pPair[0]~4_combout\,
	datac => \PrefixNetwork|Recur:Inner|Recur:pPair[6]~0_combout\,
	datad => \c~77_combout\,
	combout => \c~46_combout\);

-- Location: LCCOMB_X55_Y14_N10
\S~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~48_combout\ = p(32) $ (((\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:Inner|gPair~0_combout\) # ((\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:gPair[1]~combout\) # (\c~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:Inner|gPair~0_combout\,
	datab => p(32),
	datac => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:gPair[1]~combout\,
	datad => \c~46_combout\,
	combout => \S~48_combout\);

-- Location: IOIBUF_X56_Y0_N1
\B[33]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(33),
	o => \B[33]~input_o\);

-- Location: IOIBUF_X67_Y14_N22
\A[33]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(33),
	o => \A[33]~input_o\);

-- Location: LCCOMB_X54_Y14_N16
\p[33]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(33) = \B[33]~input_o\ $ (\A[33]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[33]~input_o\,
	datad => \A[33]~input_o\,
	combout => p(33));

-- Location: LCCOMB_X55_Y14_N8
\PrefixNetwork|Gpre[32]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gpre[32]~14_combout\ = (\B[32]~input_o\ & ((\A[32]~input_o\) # ((\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:gPair[1]~combout\) # (\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:Inner|gPair~0_combout\)))) # 
-- (!\B[32]~input_o\ & (\A[32]~input_o\ & ((\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:gPair[1]~combout\) # (\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:Inner|gPair~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[32]~input_o\,
	datab => \A[32]~input_o\,
	datac => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:gPair[1]~combout\,
	datad => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:Inner|gPair~0_combout\,
	combout => \PrefixNetwork|Gpre[32]~14_combout\);

-- Location: LCCOMB_X55_Y14_N26
\S~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~49_combout\ = p(33) $ (((\PrefixNetwork|Gpre[32]~14_combout\) # ((p(32) & \c~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(33),
	datab => p(32),
	datac => \PrefixNetwork|Gpre[32]~14_combout\,
	datad => \c~46_combout\,
	combout => \S~49_combout\);

-- Location: LCCOMB_X55_Y14_N12
\PrefixNetwork|Recur:gPair[16]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:gPair[16]~0_combout\ = (\B[33]~input_o\ & ((\A[33]~input_o\) # ((\A[32]~input_o\ & \B[32]~input_o\)))) # (!\B[33]~input_o\ & (\A[32]~input_o\ & (\A[33]~input_o\ & \B[32]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[33]~input_o\,
	datab => \A[32]~input_o\,
	datac => \A[33]~input_o\,
	datad => \B[32]~input_o\,
	combout => \PrefixNetwork|Recur:gPair[16]~0_combout\);

-- Location: IOIBUF_X61_Y0_N8
\A[34]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(34),
	o => \A[34]~input_o\);

-- Location: IOIBUF_X34_Y0_N8
\B[34]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(34),
	o => \B[34]~input_o\);

-- Location: LCCOMB_X55_Y14_N6
\p[34]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(34) = \A[34]~input_o\ $ (\B[34]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[34]~input_o\,
	datad => \B[34]~input_o\,
	combout => p(34));

-- Location: LCCOMB_X54_Y14_N22
\PrefixNetwork|Recur:Inner|Gpre~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Gpre~8_combout\ = (\B[32]~input_o\ & (!\A[32]~input_o\ & (\A[33]~input_o\ $ (\B[33]~input_o\)))) # (!\B[32]~input_o\ & (\A[32]~input_o\ & (\A[33]~input_o\ $ (\B[33]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[32]~input_o\,
	datab => \A[33]~input_o\,
	datac => \A[32]~input_o\,
	datad => \B[33]~input_o\,
	combout => \PrefixNetwork|Recur:Inner|Gpre~8_combout\);

-- Location: LCCOMB_X55_Y14_N14
\PrefixNetwork|Recur:Inner|Gpre~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Gpre~9_combout\ = (\PrefixNetwork|Recur:Inner|Gpre~8_combout\ & ((\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:gPair[1]~combout\) # ((\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|gPair~1_combout\ & 
-- \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Gpre~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|gPair~1_combout\,
	datab => \PrefixNetwork|Recur:Inner|Gpre~8_combout\,
	datac => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Gpre~0_combout\,
	datad => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:gPair[1]~combout\,
	combout => \PrefixNetwork|Recur:Inner|Gpre~9_combout\);

-- Location: LCCOMB_X55_Y14_N24
\c~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \c~47_combout\ = (\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:Inner|Recur:pPair[0]~4_combout\ & (\c~43_combout\ & \PrefixNetwork|Recur:Inner|Gpre~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:Inner|Recur:pPair[0]~4_combout\,
	datac => \c~43_combout\,
	datad => \PrefixNetwork|Recur:Inner|Gpre~8_combout\,
	combout => \c~47_combout\);

-- Location: LCCOMB_X55_Y14_N20
\S~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~50_combout\ = p(34) $ (((\PrefixNetwork|Recur:gPair[16]~0_combout\) # ((\PrefixNetwork|Recur:Inner|Gpre~9_combout\) # (\c~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Recur:gPair[16]~0_combout\,
	datab => p(34),
	datac => \PrefixNetwork|Recur:Inner|Gpre~9_combout\,
	datad => \c~47_combout\,
	combout => \S~50_combout\);

-- Location: LCCOMB_X55_Y14_N18
\c~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \c~48_combout\ = (\PrefixNetwork|Recur:Inner|Gpre~8_combout\ & (\A[34]~input_o\ $ (\B[34]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[34]~input_o\,
	datab => \B[34]~input_o\,
	datad => \PrefixNetwork|Recur:Inner|Gpre~8_combout\,
	combout => \c~48_combout\);

-- Location: IOIBUF_X67_Y10_N1
\B[35]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(35),
	o => \B[35]~input_o\);

-- Location: IOIBUF_X59_Y0_N29
\A[35]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(35),
	o => \A[35]~input_o\);

-- Location: LCCOMB_X55_Y14_N2
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

-- Location: LCCOMB_X55_Y14_N4
\PrefixNetwork|Gpre[34]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gpre[34]~15_combout\ = (\A[34]~input_o\ & ((\B[34]~input_o\) # ((\PrefixNetwork|Recur:Inner|Gpre~9_combout\) # (\PrefixNetwork|Recur:gPair[16]~0_combout\)))) # (!\A[34]~input_o\ & (\B[34]~input_o\ & 
-- ((\PrefixNetwork|Recur:Inner|Gpre~9_combout\) # (\PrefixNetwork|Recur:gPair[16]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[34]~input_o\,
	datab => \B[34]~input_o\,
	datac => \PrefixNetwork|Recur:Inner|Gpre~9_combout\,
	datad => \PrefixNetwork|Recur:gPair[16]~0_combout\,
	combout => \PrefixNetwork|Gpre[34]~15_combout\);

-- Location: LCCOMB_X55_Y14_N28
\S~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~51_combout\ = p(35) $ (((\PrefixNetwork|Gpre[34]~15_combout\) # ((\c~48_combout\ & \c~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c~48_combout\,
	datab => p(35),
	datac => \PrefixNetwork|Gpre[34]~15_combout\,
	datad => \c~46_combout\,
	combout => \S~51_combout\);

-- Location: LCCOMB_X55_Y14_N22
\PrefixNetwork|Recur:gPair[17]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:gPair[17]~0_combout\ = (\B[35]~input_o\ & ((\A[35]~input_o\) # ((\A[34]~input_o\ & \B[34]~input_o\)))) # (!\B[35]~input_o\ & (\A[34]~input_o\ & (\A[35]~input_o\ & \B[34]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[34]~input_o\,
	datab => \B[35]~input_o\,
	datac => \A[35]~input_o\,
	datad => \B[34]~input_o\,
	combout => \PrefixNetwork|Recur:gPair[17]~0_combout\);

-- Location: LCCOMB_X55_Y14_N0
\PrefixNetwork|Recur:Inner|Recur:gPair[8]\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Recur:gPair[8]~combout\ = (\PrefixNetwork|Recur:gPair[17]~0_combout\) # ((\PrefixNetwork|Recur:gPair[16]~0_combout\ & (p(35) & p(34))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Recur:gPair[16]~0_combout\,
	datab => p(35),
	datac => \PrefixNetwork|Recur:gPair[17]~0_combout\,
	datad => p(34),
	combout => \PrefixNetwork|Recur:Inner|Recur:gPair[8]~combout\);

-- Location: IOIBUF_X34_Y0_N1
\A[36]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(36),
	o => \A[36]~input_o\);

-- Location: IOIBUF_X67_Y13_N1
\B[36]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(36),
	o => \B[36]~input_o\);

-- Location: LCCOMB_X54_Y15_N12
\p[36]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(36) = \A[36]~input_o\ $ (\B[36]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[36]~input_o\,
	datad => \B[36]~input_o\,
	combout => p(36));

-- Location: LCCOMB_X55_Y17_N14
\c~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \c~49_combout\ = (\c~43_combout\ & (\c~48_combout\ & (\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:Inner|Recur:pPair[0]~4_combout\ & p(35))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c~43_combout\,
	datab => \c~48_combout\,
	datac => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:Inner|Recur:pPair[0]~4_combout\,
	datad => p(35),
	combout => \c~49_combout\);

-- Location: LCCOMB_X55_Y17_N0
\PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~3_combout\ = (p(35) & (\c~48_combout\ & ((\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:gPair[1]~combout\) # (\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:Inner|gPair~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(35),
	datab => \c~48_combout\,
	datac => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:gPair[1]~combout\,
	datad => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:Inner|gPair~0_combout\,
	combout => \PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~3_combout\);

-- Location: LCCOMB_X55_Y17_N6
\S~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~52_combout\ = p(36) $ (((\PrefixNetwork|Recur:Inner|Recur:gPair[8]~combout\) # ((\c~49_combout\) # (\PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Recur:Inner|Recur:gPair[8]~combout\,
	datab => p(36),
	datac => \c~49_combout\,
	datad => \PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~3_combout\,
	combout => \S~52_combout\);

-- Location: IOIBUF_X34_Y0_N15
\A[37]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(37),
	o => \A[37]~input_o\);

-- Location: IOIBUF_X34_Y0_N29
\B[37]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(37),
	o => \B[37]~input_o\);

-- Location: LCCOMB_X54_Y15_N14
\p[37]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(37) = \A[37]~input_o\ $ (\B[37]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[37]~input_o\,
	datad => \B[37]~input_o\,
	combout => p(37));

-- Location: LCCOMB_X55_Y17_N28
\PrefixNetwork|Gpre[36]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gpre[36]~16_combout\ = (\A[36]~input_o\ & ((\B[36]~input_o\) # ((\PrefixNetwork|Recur:Inner|Recur:gPair[8]~combout\) # (\PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~3_combout\)))) # (!\A[36]~input_o\ & (\B[36]~input_o\ & 
-- ((\PrefixNetwork|Recur:Inner|Recur:gPair[8]~combout\) # (\PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[36]~input_o\,
	datab => \B[36]~input_o\,
	datac => \PrefixNetwork|Recur:Inner|Recur:gPair[8]~combout\,
	datad => \PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~3_combout\,
	combout => \PrefixNetwork|Gpre[36]~16_combout\);

-- Location: LCCOMB_X55_Y17_N18
\S~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~53_combout\ = p(37) $ (((\PrefixNetwork|Gpre[36]~16_combout\) # ((p(36) & \c~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(37),
	datab => p(36),
	datac => \c~49_combout\,
	datad => \PrefixNetwork|Gpre[36]~16_combout\,
	combout => \S~53_combout\);

-- Location: IOIBUF_X65_Y0_N29
\B[38]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(38),
	o => \B[38]~input_o\);

-- Location: IOIBUF_X67_Y11_N1
\A[38]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(38),
	o => \A[38]~input_o\);

-- Location: LCCOMB_X54_Y15_N22
\p[38]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(38) = \B[38]~input_o\ $ (\A[38]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[38]~input_o\,
	datad => \A[38]~input_o\,
	combout => p(38));

-- Location: LCCOMB_X54_Y15_N28
\PrefixNetwork|Recur:gPair[18]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:gPair[18]~0_combout\ = (\A[37]~input_o\ & ((\B[37]~input_o\) # ((\B[36]~input_o\ & \A[36]~input_o\)))) # (!\A[37]~input_o\ & (\B[36]~input_o\ & (\A[36]~input_o\ & \B[37]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[36]~input_o\,
	datab => \A[37]~input_o\,
	datac => \A[36]~input_o\,
	datad => \B[37]~input_o\,
	combout => \PrefixNetwork|Recur:gPair[18]~0_combout\);

-- Location: LCCOMB_X54_Y15_N4
\c~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \c~78_combout\ = (p(37) & (\c~49_combout\ & (\B[36]~input_o\ $ (\A[36]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[36]~input_o\,
	datab => p(37),
	datac => \A[36]~input_o\,
	datad => \c~49_combout\,
	combout => \c~78_combout\);

-- Location: LCCOMB_X55_Y17_N8
\PrefixNetwork|Recur:Inner|Gpre~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Gpre~10_combout\ = (p(37) & (p(36) & ((\PrefixNetwork|Recur:Inner|Recur:gPair[8]~combout\) # (\PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(37),
	datab => p(36),
	datac => \PrefixNetwork|Recur:Inner|Recur:gPair[8]~combout\,
	datad => \PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~3_combout\,
	combout => \PrefixNetwork|Recur:Inner|Gpre~10_combout\);

-- Location: LCCOMB_X54_Y15_N24
\S~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~54_combout\ = p(38) $ (((\PrefixNetwork|Recur:gPair[18]~0_combout\) # ((\c~78_combout\) # (\PrefixNetwork|Recur:Inner|Gpre~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(38),
	datab => \PrefixNetwork|Recur:gPair[18]~0_combout\,
	datac => \c~78_combout\,
	datad => \PrefixNetwork|Recur:Inner|Gpre~10_combout\,
	combout => \S~54_combout\);

-- Location: IOIBUF_X67_Y7_N8
\B[39]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(39),
	o => \B[39]~input_o\);

-- Location: IOIBUF_X67_Y7_N22
\A[39]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(39),
	o => \A[39]~input_o\);

-- Location: LCCOMB_X54_Y15_N20
\p[39]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(39) = \B[39]~input_o\ $ (\A[39]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[39]~input_o\,
	datad => \A[39]~input_o\,
	combout => p(39));

-- Location: LCCOMB_X54_Y15_N2
\PrefixNetwork|Gpre[38]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gpre[38]~17_combout\ = (\A[38]~input_o\ & ((\PrefixNetwork|Recur:gPair[18]~0_combout\) # ((\B[38]~input_o\) # (\PrefixNetwork|Recur:Inner|Gpre~10_combout\)))) # (!\A[38]~input_o\ & (\B[38]~input_o\ & 
-- ((\PrefixNetwork|Recur:gPair[18]~0_combout\) # (\PrefixNetwork|Recur:Inner|Gpre~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[38]~input_o\,
	datab => \PrefixNetwork|Recur:gPair[18]~0_combout\,
	datac => \B[38]~input_o\,
	datad => \PrefixNetwork|Recur:Inner|Gpre~10_combout\,
	combout => \PrefixNetwork|Gpre[38]~17_combout\);

-- Location: LCCOMB_X54_Y15_N30
\S~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~55_combout\ = p(39) $ (((\PrefixNetwork|Gpre[38]~17_combout\) # ((p(38) & \c~78_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(38),
	datab => p(39),
	datac => \c~78_combout\,
	datad => \PrefixNetwork|Gpre[38]~17_combout\,
	combout => \S~55_combout\);

-- Location: LCCOMB_X54_Y15_N16
\PrefixNetwork|Recur:Inner|Recur:Inner|gPair~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Recur:Inner|gPair~3_combout\ = (p(36) & (p(37) & (p(38) & p(39))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(36),
	datab => p(37),
	datac => p(38),
	datad => p(39),
	combout => \PrefixNetwork|Recur:Inner|Recur:Inner|gPair~3_combout\);

-- Location: LCCOMB_X55_Y14_N30
\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[4]~0_combout\ = (p(34) & (p(35) & (\PrefixNetwork|Recur:Inner|Recur:Inner|gPair~3_combout\ & \PrefixNetwork|Recur:Inner|Gpre~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(34),
	datab => p(35),
	datac => \PrefixNetwork|Recur:Inner|Recur:Inner|gPair~3_combout\,
	datad => \PrefixNetwork|Recur:Inner|Gpre~8_combout\,
	combout => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[4]~0_combout\);

-- Location: LCCOMB_X54_Y17_N22
\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Gpre~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Gpre~1_combout\ = (\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[4]~0_combout\ & ((\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:gPair[1]~combout\) # 
-- ((\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Gpre~0_combout\ & \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|gPair~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Gpre~0_combout\,
	datab => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|gPair~1_combout\,
	datac => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[4]~0_combout\,
	datad => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:gPair[1]~combout\,
	combout => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Gpre~1_combout\);

-- Location: IOIBUF_X52_Y0_N8
\B[40]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(40),
	o => \B[40]~input_o\);

-- Location: IOIBUF_X67_Y11_N8
\A[40]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(40),
	o => \A[40]~input_o\);

-- Location: LCCOMB_X53_Y14_N20
\p[40]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(40) = \B[40]~input_o\ $ (\A[40]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[40]~input_o\,
	datad => \A[40]~input_o\,
	combout => p(40));

-- Location: LCCOMB_X54_Y15_N26
\PrefixNetwork|Recur:gPair[19]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:gPair[19]~0_combout\ = (\B[39]~input_o\ & ((\A[39]~input_o\) # ((\B[38]~input_o\ & \A[38]~input_o\)))) # (!\B[39]~input_o\ & (\A[39]~input_o\ & (\B[38]~input_o\ & \A[38]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[39]~input_o\,
	datab => \A[39]~input_o\,
	datac => \B[38]~input_o\,
	datad => \A[38]~input_o\,
	combout => \PrefixNetwork|Recur:gPair[19]~0_combout\);

-- Location: LCCOMB_X54_Y15_N8
\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[4]~0_combout\ = (\PrefixNetwork|Recur:gPair[19]~0_combout\) # ((p(38) & (p(39) & \PrefixNetwork|Recur:gPair[18]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(38),
	datab => p(39),
	datac => \PrefixNetwork|Recur:gPair[19]~0_combout\,
	datad => \PrefixNetwork|Recur:gPair[18]~0_combout\,
	combout => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[4]~0_combout\);

-- Location: LCCOMB_X54_Y15_N6
\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[4]~combout\ = (\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[4]~0_combout\) # ((\PrefixNetwork|Recur:Inner|Recur:Inner|gPair~3_combout\ & \PrefixNetwork|Recur:Inner|Recur:gPair[8]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PrefixNetwork|Recur:Inner|Recur:Inner|gPair~3_combout\,
	datac => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[4]~0_combout\,
	datad => \PrefixNetwork|Recur:Inner|Recur:gPair[8]~combout\,
	combout => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[4]~combout\);

-- Location: LCCOMB_X54_Y13_N24
\c~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \c~50_combout\ = (\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:Inner|Recur:pPair[0]~4_combout\ & (\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[4]~0_combout\ & \c~43_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:Inner|Recur:pPair[0]~4_combout\,
	datac => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[4]~0_combout\,
	datad => \c~43_combout\,
	combout => \c~50_combout\);

-- Location: LCCOMB_X54_Y17_N20
\S~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~56_combout\ = p(40) $ (((\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Gpre~1_combout\) # ((\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[4]~combout\) # (\c~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Gpre~1_combout\,
	datab => p(40),
	datac => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[4]~combout\,
	datad => \c~50_combout\,
	combout => \S~56_combout\);

-- Location: IOIBUF_X50_Y0_N8
\A[41]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(41),
	o => \A[41]~input_o\);

-- Location: IOIBUF_X61_Y0_N22
\B[41]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(41),
	o => \B[41]~input_o\);

-- Location: LCCOMB_X53_Y14_N10
\p[41]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(41) = \A[41]~input_o\ $ (\B[41]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[41]~input_o\,
	datad => \B[41]~input_o\,
	combout => p(41));

-- Location: LCCOMB_X54_Y13_N18
\PrefixNetwork|Gpre[40]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gpre[40]~18_combout\ = (\A[40]~input_o\ & ((\B[40]~input_o\) # ((\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[4]~combout\) # (\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Gpre~1_combout\)))) # (!\A[40]~input_o\ & 
-- (\B[40]~input_o\ & ((\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[4]~combout\) # (\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Gpre~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[40]~input_o\,
	datab => \B[40]~input_o\,
	datac => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[4]~combout\,
	datad => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Gpre~1_combout\,
	combout => \PrefixNetwork|Gpre[40]~18_combout\);

-- Location: LCCOMB_X54_Y13_N20
\S~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~57_combout\ = p(41) $ (((\PrefixNetwork|Gpre[40]~18_combout\) # ((p(40) & \c~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(40),
	datab => \c~50_combout\,
	datac => p(41),
	datad => \PrefixNetwork|Gpre[40]~18_combout\,
	combout => \S~57_combout\);

-- Location: IOIBUF_X34_Y0_N22
\B[42]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(42),
	o => \B[42]~input_o\);

-- Location: IOIBUF_X54_Y0_N15
\A[42]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(42),
	o => \A[42]~input_o\);

-- Location: LCCOMB_X54_Y14_N4
\PrefixNetwork|Recur:gPair[20]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:gPair[20]~0_combout\ = (\A[41]~input_o\ & ((\B[41]~input_o\) # ((\B[40]~input_o\ & \A[40]~input_o\)))) # (!\A[41]~input_o\ & (\B[40]~input_o\ & (\A[40]~input_o\ & \B[41]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[41]~input_o\,
	datab => \B[40]~input_o\,
	datac => \A[40]~input_o\,
	datad => \B[41]~input_o\,
	combout => \PrefixNetwork|Recur:gPair[20]~0_combout\);

-- Location: LCCOMB_X54_Y13_N8
\c[42]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[42]~51_combout\ = (\PrefixNetwork|Recur:gPair[20]~0_combout\) # ((p(40) & (\c~50_combout\ & p(41))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(40),
	datab => \c~50_combout\,
	datac => p(41),
	datad => \PrefixNetwork|Recur:gPair[20]~0_combout\,
	combout => \c[42]~51_combout\);

-- Location: LCCOMB_X54_Y13_N6
\PrefixNetwork|Recur:Inner|Gpre~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Gpre~11_combout\ = (p(40) & (p(41) & ((\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[4]~combout\) # (\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Gpre~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(40),
	datab => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[4]~combout\,
	datac => p(41),
	datad => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Gpre~1_combout\,
	combout => \PrefixNetwork|Recur:Inner|Gpre~11_combout\);

-- Location: LCCOMB_X54_Y13_N2
\S~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~78_combout\ = \B[42]~input_o\ $ (\A[42]~input_o\ $ (((\c[42]~51_combout\) # (\PrefixNetwork|Recur:Inner|Gpre~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[42]~input_o\,
	datab => \A[42]~input_o\,
	datac => \c[42]~51_combout\,
	datad => \PrefixNetwork|Recur:Inner|Gpre~11_combout\,
	combout => \S~78_combout\);

-- Location: IOIBUF_X29_Y0_N29
\B[43]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(43),
	o => \B[43]~input_o\);

-- Location: IOIBUF_X67_Y10_N22
\A[43]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(43),
	o => \A[43]~input_o\);

-- Location: LCCOMB_X54_Y14_N6
\p[42]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(42) = \A[42]~input_o\ $ (\B[42]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[42]~input_o\,
	datad => \B[42]~input_o\,
	combout => p(42));

-- Location: LCCOMB_X54_Y13_N4
\c~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \c~52_combout\ = (p(40) & (p(42) & (p(41) & \c~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(40),
	datab => p(42),
	datac => p(41),
	datad => \c~50_combout\,
	combout => \c~52_combout\);

-- Location: LCCOMB_X54_Y13_N10
\PrefixNetwork|Gpre[42]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gpre[42]~19_combout\ = (\B[42]~input_o\ & ((\A[42]~input_o\) # ((\PrefixNetwork|Recur:gPair[20]~0_combout\) # (\PrefixNetwork|Recur:Inner|Gpre~11_combout\)))) # (!\B[42]~input_o\ & (\A[42]~input_o\ & 
-- ((\PrefixNetwork|Recur:gPair[20]~0_combout\) # (\PrefixNetwork|Recur:Inner|Gpre~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[42]~input_o\,
	datab => \A[42]~input_o\,
	datac => \PrefixNetwork|Recur:gPair[20]~0_combout\,
	datad => \PrefixNetwork|Recur:Inner|Gpre~11_combout\,
	combout => \PrefixNetwork|Gpre[42]~19_combout\);

-- Location: LCCOMB_X54_Y13_N28
\S~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~79_combout\ = \B[43]~input_o\ $ (\A[43]~input_o\ $ (((\c~52_combout\) # (\PrefixNetwork|Gpre[42]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[43]~input_o\,
	datab => \A[43]~input_o\,
	datac => \c~52_combout\,
	datad => \PrefixNetwork|Gpre[42]~19_combout\,
	combout => \S~79_combout\);

-- Location: IOIBUF_X52_Y0_N22
\B[44]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(44),
	o => \B[44]~input_o\);

-- Location: IOIBUF_X54_Y0_N29
\A[44]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(44),
	o => \A[44]~input_o\);

-- Location: LCCOMB_X53_Y13_N6
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

-- Location: LCCOMB_X54_Y14_N8
\p[43]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(43) = \B[43]~input_o\ $ (\A[43]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[43]~input_o\,
	datad => \A[43]~input_o\,
	combout => p(43));

-- Location: LCCOMB_X53_Y14_N16
\PrefixNetwork|Recur:Inner|Recur:pPair[10]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Recur:pPair[10]~0_combout\ = (p(41) & (p(40) & (p(43) & p(42))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(41),
	datab => p(40),
	datac => p(43),
	datad => p(42),
	combout => \PrefixNetwork|Recur:Inner|Recur:pPair[10]~0_combout\);

-- Location: LCCOMB_X53_Y14_N0
\c~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \c~53_combout\ = (\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[4]~0_combout\ & (\PrefixNetwork|Recur:Inner|Recur:pPair[10]~0_combout\ & (\c~43_combout\ & \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:Inner|Recur:pPair[0]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[4]~0_combout\,
	datab => \PrefixNetwork|Recur:Inner|Recur:pPair[10]~0_combout\,
	datac => \c~43_combout\,
	datad => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:Inner|Recur:pPair[0]~4_combout\,
	combout => \c~53_combout\);

-- Location: LCCOMB_X54_Y14_N18
\PrefixNetwork|Recur:gPair[21]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:gPair[21]~0_combout\ = (\B[43]~input_o\ & ((\A[43]~input_o\) # ((\A[42]~input_o\ & \B[42]~input_o\)))) # (!\B[43]~input_o\ & (\A[43]~input_o\ & (\A[42]~input_o\ & \B[42]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[43]~input_o\,
	datab => \A[43]~input_o\,
	datac => \A[42]~input_o\,
	datad => \B[42]~input_o\,
	combout => \PrefixNetwork|Recur:gPair[21]~0_combout\);

-- Location: LCCOMB_X54_Y14_N20
\PrefixNetwork|Recur:Inner|Recur:gPair[10]\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Recur:gPair[10]~combout\ = (\PrefixNetwork|Recur:gPair[21]~0_combout\) # ((p(42) & (p(43) & \PrefixNetwork|Recur:gPair[20]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(42),
	datab => p(43),
	datac => \PrefixNetwork|Recur:gPair[20]~0_combout\,
	datad => \PrefixNetwork|Recur:gPair[21]~0_combout\,
	combout => \PrefixNetwork|Recur:Inner|Recur:gPair[10]~combout\);

-- Location: LCCOMB_X53_Y14_N18
\PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~4_combout\ = (\PrefixNetwork|Recur:Inner|Recur:pPair[10]~0_combout\ & ((\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[4]~combout\) # (\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Gpre~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[4]~combout\,
	datac => \PrefixNetwork|Recur:Inner|Recur:pPair[10]~0_combout\,
	datad => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Gpre~1_combout\,
	combout => \PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~4_combout\);

-- Location: LCCOMB_X53_Y14_N26
\S~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~58_combout\ = p(44) $ (((\c~53_combout\) # ((\PrefixNetwork|Recur:Inner|Recur:gPair[10]~combout\) # (\PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(44),
	datab => \c~53_combout\,
	datac => \PrefixNetwork|Recur:Inner|Recur:gPair[10]~combout\,
	datad => \PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~4_combout\,
	combout => \S~58_combout\);

-- Location: IOIBUF_X67_Y11_N22
\B[45]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(45),
	o => \B[45]~input_o\);

-- Location: IOIBUF_X50_Y0_N29
\A[45]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(45),
	o => \A[45]~input_o\);

-- Location: LCCOMB_X54_Y14_N10
\p[45]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(45) = \B[45]~input_o\ $ (\A[45]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[45]~input_o\,
	datad => \A[45]~input_o\,
	combout => p(45));

-- Location: LCCOMB_X53_Y14_N8
\PrefixNetwork|Gpre[44]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gpre[44]~20_combout\ = (\A[44]~input_o\ & ((\B[44]~input_o\) # ((\PrefixNetwork|Recur:Inner|Recur:gPair[10]~combout\) # (\PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~4_combout\)))) # (!\A[44]~input_o\ & (\B[44]~input_o\ & 
-- ((\PrefixNetwork|Recur:Inner|Recur:gPair[10]~combout\) # (\PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[44]~input_o\,
	datab => \B[44]~input_o\,
	datac => \PrefixNetwork|Recur:Inner|Recur:gPair[10]~combout\,
	datad => \PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~4_combout\,
	combout => \PrefixNetwork|Gpre[44]~20_combout\);

-- Location: LCCOMB_X53_Y14_N2
\S~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~59_combout\ = p(45) $ (((\PrefixNetwork|Gpre[44]~20_combout\) # ((p(44) & \c~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(44),
	datab => p(45),
	datac => \PrefixNetwork|Gpre[44]~20_combout\,
	datad => \c~53_combout\,
	combout => \S~59_combout\);

-- Location: IOIBUF_X67_Y7_N1
\B[46]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(46),
	o => \B[46]~input_o\);

-- Location: IOIBUF_X65_Y0_N22
\A[46]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(46),
	o => \A[46]~input_o\);

-- Location: LCCOMB_X54_Y14_N12
\PrefixNetwork|Recur:gPair[22]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:gPair[22]~0_combout\ = (\A[45]~input_o\ & ((\B[45]~input_o\) # ((\A[44]~input_o\ & \B[44]~input_o\)))) # (!\A[45]~input_o\ & (\A[44]~input_o\ & (\B[45]~input_o\ & \B[44]~input_o\)))

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
	combout => \PrefixNetwork|Recur:gPair[22]~0_combout\);

-- Location: LCCOMB_X53_Y14_N14
\c~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \c~54_combout\ = (p(45) & (\PrefixNetwork|Recur:Inner|Recur:pPair[10]~0_combout\ & (\A[44]~input_o\ $ (\B[44]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[44]~input_o\,
	datab => p(45),
	datac => \B[44]~input_o\,
	datad => \PrefixNetwork|Recur:Inner|Recur:pPair[10]~0_combout\,
	combout => \c~54_combout\);

-- Location: LCCOMB_X53_Y14_N4
\c[46]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[46]~55_combout\ = (\PrefixNetwork|Recur:gPair[22]~0_combout\) # ((\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[4]~0_combout\ & (\c~54_combout\ & \c~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[4]~0_combout\,
	datab => \PrefixNetwork|Recur:gPair[22]~0_combout\,
	datac => \c~54_combout\,
	datad => \c~46_combout\,
	combout => \c[46]~55_combout\);

-- Location: LCCOMB_X53_Y14_N24
\PrefixNetwork|Recur:Inner|Gpre~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Gpre~12_combout\ = (p(45) & (p(44) & ((\PrefixNetwork|Recur:Inner|Recur:gPair[10]~combout\) # (\PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Recur:Inner|Recur:gPair[10]~combout\,
	datab => p(45),
	datac => p(44),
	datad => \PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~4_combout\,
	combout => \PrefixNetwork|Recur:Inner|Gpre~12_combout\);

-- Location: LCCOMB_X53_Y14_N22
\S~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~60_combout\ = \B[46]~input_o\ $ (\A[46]~input_o\ $ (((\c[46]~55_combout\) # (\PrefixNetwork|Recur:Inner|Gpre~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[46]~input_o\,
	datab => \A[46]~input_o\,
	datac => \c[46]~55_combout\,
	datad => \PrefixNetwork|Recur:Inner|Gpre~12_combout\,
	combout => \S~60_combout\);

-- Location: LCCOMB_X53_Y14_N12
\c~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \c~56_combout\ = (\A[44]~input_o\ & (!\B[44]~input_o\ & (\A[46]~input_o\ $ (\B[46]~input_o\)))) # (!\A[44]~input_o\ & (\B[44]~input_o\ & (\A[46]~input_o\ $ (\B[46]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[44]~input_o\,
	datab => \A[46]~input_o\,
	datac => \B[44]~input_o\,
	datad => \B[46]~input_o\,
	combout => \c~56_combout\);

-- Location: LCCOMB_X53_Y14_N30
\c~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \c~79_combout\ = (\c~56_combout\ & (\PrefixNetwork|Recur:Inner|Recur:pPair[10]~0_combout\ & (\B[45]~input_o\ $ (\A[45]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c~56_combout\,
	datab => \B[45]~input_o\,
	datac => \A[45]~input_o\,
	datad => \PrefixNetwork|Recur:Inner|Recur:pPair[10]~0_combout\,
	combout => \c~79_combout\);

-- Location: IOIBUF_X38_Y0_N22
\B[47]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(47),
	o => \B[47]~input_o\);

-- Location: IOIBUF_X41_Y0_N29
\A[47]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(47),
	o => \A[47]~input_o\);

-- Location: LCCOMB_X42_Y1_N0
\p[47]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(47) = \B[47]~input_o\ $ (\A[47]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[47]~input_o\,
	datad => \A[47]~input_o\,
	combout => p(47));

-- Location: LCCOMB_X53_Y14_N6
\PrefixNetwork|Gpre[46]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gpre[46]~21_combout\ = (\B[46]~input_o\ & ((\PrefixNetwork|Recur:gPair[22]~0_combout\) # ((\A[46]~input_o\) # (\PrefixNetwork|Recur:Inner|Gpre~12_combout\)))) # (!\B[46]~input_o\ & (\A[46]~input_o\ & 
-- ((\PrefixNetwork|Recur:gPair[22]~0_combout\) # (\PrefixNetwork|Recur:Inner|Gpre~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[46]~input_o\,
	datab => \PrefixNetwork|Recur:gPair[22]~0_combout\,
	datac => \A[46]~input_o\,
	datad => \PrefixNetwork|Recur:Inner|Gpre~12_combout\,
	combout => \PrefixNetwork|Gpre[46]~21_combout\);

-- Location: LCCOMB_X53_Y14_N28
\S~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~61_combout\ = p(47) $ (((\PrefixNetwork|Gpre[46]~21_combout\) # ((\c~79_combout\ & \c~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c~79_combout\,
	datab => p(47),
	datac => \c~50_combout\,
	datad => \PrefixNetwork|Gpre[46]~21_combout\,
	combout => \S~61_combout\);

-- Location: IOIBUF_X65_Y43_N29
\B[48]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(48),
	o => \B[48]~input_o\);

-- Location: IOIBUF_X67_Y39_N8
\A[48]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(48),
	o => \A[48]~input_o\);

-- Location: LCCOMB_X54_Y25_N6
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

-- Location: LCCOMB_X54_Y14_N28
\PrefixNetwork|Recur:Inner|gPair~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|gPair~2_combout\ = (\A[47]~input_o\ & (!\B[47]~input_o\ & (\B[46]~input_o\ $ (\A[46]~input_o\)))) # (!\A[47]~input_o\ & (\B[47]~input_o\ & (\B[46]~input_o\ $ (\A[46]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[47]~input_o\,
	datab => \B[47]~input_o\,
	datac => \B[46]~input_o\,
	datad => \A[46]~input_o\,
	combout => \PrefixNetwork|Recur:Inner|gPair~2_combout\);

-- Location: LCCOMB_X54_Y14_N30
\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:pPair[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:pPair[2]~4_combout\ = (\PrefixNetwork|Recur:Inner|Gpre~8_combout\ & (\PrefixNetwork|Recur:Inner|gPair~2_combout\ & (\A[45]~input_o\ $ (\B[45]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[45]~input_o\,
	datab => \B[45]~input_o\,
	datac => \PrefixNetwork|Recur:Inner|Gpre~8_combout\,
	datad => \PrefixNetwork|Recur:Inner|gPair~2_combout\,
	combout => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:pPair[2]~4_combout\);

-- Location: LCCOMB_X54_Y14_N14
\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:pPair[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:pPair[2]~2_combout\ = (p(35) & (p(34) & (\B[44]~input_o\ $ (\A[44]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[44]~input_o\,
	datab => \A[44]~input_o\,
	datac => p(35),
	datad => p(34),
	combout => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:pPair[2]~2_combout\);

-- Location: LCCOMB_X54_Y14_N26
\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:pPair[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:pPair[2]~3_combout\ = (\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:pPair[2]~4_combout\ & (\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:pPair[2]~2_combout\ & 
-- (\PrefixNetwork|Recur:Inner|Recur:pPair[10]~0_combout\ & \PrefixNetwork|Recur:Inner|Recur:Inner|gPair~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:pPair[2]~4_combout\,
	datab => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:pPair[2]~2_combout\,
	datac => \PrefixNetwork|Recur:Inner|Recur:pPair[10]~0_combout\,
	datad => \PrefixNetwork|Recur:Inner|Recur:Inner|gPair~3_combout\,
	combout => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:pPair[2]~3_combout\);

-- Location: LCCOMB_X54_Y17_N18
\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:Inner|Gpre~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:Inner|Gpre~0_combout\ = (\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:pPair[2]~3_combout\ & ((\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:gPair[1]~combout\) # 
-- ((\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Gpre~0_combout\ & \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|gPair~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Gpre~0_combout\,
	datab => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:pPair[2]~3_combout\,
	datac => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|gPair~1_combout\,
	datad => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:gPair[1]~combout\,
	combout => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:Inner|Gpre~0_combout\);

-- Location: LCCOMB_X54_Y14_N24
\PrefixNetwork|Recur:gPair[23]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:gPair[23]~0_combout\ = (\A[47]~input_o\ & ((\B[47]~input_o\) # ((\B[46]~input_o\ & \A[46]~input_o\)))) # (!\A[47]~input_o\ & (\B[47]~input_o\ & (\B[46]~input_o\ & \A[46]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[47]~input_o\,
	datab => \B[47]~input_o\,
	datac => \B[46]~input_o\,
	datad => \A[46]~input_o\,
	combout => \PrefixNetwork|Recur:gPair[23]~0_combout\);

-- Location: LCCOMB_X54_Y14_N2
\PrefixNetwork|Recur:Inner|Recur:Inner|gPair~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Recur:Inner|gPair~4_combout\ = (p(45) & (\PrefixNetwork|Recur:Inner|Recur:gPair[10]~combout\ & (\B[44]~input_o\ $ (\A[44]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(45),
	datab => \B[44]~input_o\,
	datac => \A[44]~input_o\,
	datad => \PrefixNetwork|Recur:Inner|Recur:gPair[10]~combout\,
	combout => \PrefixNetwork|Recur:Inner|Recur:Inner|gPair~4_combout\);

-- Location: LCCOMB_X54_Y14_N0
\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:gPair[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:gPair[2]~0_combout\ = (\PrefixNetwork|Recur:gPair[23]~0_combout\) # ((\PrefixNetwork|Recur:Inner|gPair~2_combout\ & ((\PrefixNetwork|Recur:gPair[22]~0_combout\) # 
-- (\PrefixNetwork|Recur:Inner|Recur:Inner|gPair~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Recur:gPair[22]~0_combout\,
	datab => \PrefixNetwork|Recur:Inner|gPair~2_combout\,
	datac => \PrefixNetwork|Recur:gPair[23]~0_combout\,
	datad => \PrefixNetwork|Recur:Inner|Recur:Inner|gPair~4_combout\,
	combout => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:gPair[2]~0_combout\);

-- Location: LCCOMB_X54_Y17_N12
\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:gPair[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:gPair[2]~combout\ = (\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:gPair[2]~0_combout\) # ((p(47) & (\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[4]~combout\ & \c~79_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(47),
	datab => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[4]~combout\,
	datac => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:gPair[2]~0_combout\,
	datad => \c~79_combout\,
	combout => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:gPair[2]~combout\);

-- Location: LCCOMB_X54_Y25_N12
\c~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \c~57_combout\ = (\PrefixNetwork|Recur:Inner|Recur:pPair[6]~0_combout\ & (\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:Inner|Recur:pPair[0]~4_combout\ & (\c~77_combout\ & 
-- \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:pPair[2]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Recur:Inner|Recur:pPair[6]~0_combout\,
	datab => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:Inner|Recur:pPair[0]~4_combout\,
	datac => \c~77_combout\,
	datad => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:pPair[2]~3_combout\,
	combout => \c~57_combout\);

-- Location: LCCOMB_X54_Y25_N28
\S~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~62_combout\ = p(48) $ (((\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:Inner|Gpre~0_combout\) # ((\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:gPair[2]~combout\) # (\c~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(48),
	datab => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:Inner|Gpre~0_combout\,
	datac => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:gPair[2]~combout\,
	datad => \c~57_combout\,
	combout => \S~62_combout\);

-- Location: IOIBUF_X67_Y39_N15
\B[49]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(49),
	o => \B[49]~input_o\);

-- Location: IOIBUF_X67_Y36_N15
\A[49]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(49),
	o => \A[49]~input_o\);

-- Location: LCCOMB_X54_Y25_N0
\p[49]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(49) = \B[49]~input_o\ $ (\A[49]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[49]~input_o\,
	datad => \A[49]~input_o\,
	combout => p(49));

-- Location: LCCOMB_X54_Y25_N22
\PrefixNetwork|Gpre[48]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gpre[48]~22_combout\ = (\B[48]~input_o\ & ((\A[48]~input_o\) # ((\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:gPair[2]~combout\) # (\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:Inner|Gpre~0_combout\)))) # 
-- (!\B[48]~input_o\ & (\A[48]~input_o\ & ((\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:gPair[2]~combout\) # (\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:Inner|Gpre~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[48]~input_o\,
	datab => \A[48]~input_o\,
	datac => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:gPair[2]~combout\,
	datad => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:Inner|Gpre~0_combout\,
	combout => \PrefixNetwork|Gpre[48]~22_combout\);

-- Location: LCCOMB_X54_Y25_N26
\S~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~63_combout\ = p(49) $ (((\PrefixNetwork|Gpre[48]~22_combout\) # ((p(48) & \c~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(48),
	datab => p(49),
	datac => \PrefixNetwork|Gpre[48]~22_combout\,
	datad => \c~57_combout\,
	combout => \S~63_combout\);

-- Location: IOIBUF_X67_Y39_N22
\B[50]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(50),
	o => \B[50]~input_o\);

-- Location: IOIBUF_X61_Y43_N8
\A[50]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(50),
	o => \A[50]~input_o\);

-- Location: LCCOMB_X55_Y25_N0
\PrefixNetwork|Recur:gPair[24]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:gPair[24]~0_combout\ = (\B[49]~input_o\ & ((\A[49]~input_o\) # ((\B[48]~input_o\ & \A[48]~input_o\)))) # (!\B[49]~input_o\ & (\B[48]~input_o\ & (\A[49]~input_o\ & \A[48]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[49]~input_o\,
	datab => \B[48]~input_o\,
	datac => \A[49]~input_o\,
	datad => \A[48]~input_o\,
	combout => \PrefixNetwork|Recur:gPair[24]~0_combout\);

-- Location: LCCOMB_X54_Y25_N14
\c[50]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[50]~58_combout\ = (\PrefixNetwork|Recur:gPair[24]~0_combout\) # ((p(48) & (p(49) & \c~57_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(48),
	datab => p(49),
	datac => \PrefixNetwork|Recur:gPair[24]~0_combout\,
	datad => \c~57_combout\,
	combout => \c[50]~58_combout\);

-- Location: LCCOMB_X54_Y25_N16
\PrefixNetwork|Recur:Inner|Gpre~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Gpre~13_combout\ = (p(48) & (p(49) & ((\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:gPair[2]~combout\) # (\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:Inner|Gpre~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(48),
	datab => p(49),
	datac => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:gPair[2]~combout\,
	datad => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:Inner|Gpre~0_combout\,
	combout => \PrefixNetwork|Recur:Inner|Gpre~13_combout\);

-- Location: LCCOMB_X54_Y25_N18
\S~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~80_combout\ = \B[50]~input_o\ $ (\A[50]~input_o\ $ (((\c[50]~58_combout\) # (\PrefixNetwork|Recur:Inner|Gpre~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[50]~input_o\,
	datab => \A[50]~input_o\,
	datac => \c[50]~58_combout\,
	datad => \PrefixNetwork|Recur:Inner|Gpre~13_combout\,
	combout => \S~80_combout\);

-- Location: IOIBUF_X63_Y43_N1
\A[51]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(51),
	o => \A[51]~input_o\);

-- Location: IOIBUF_X63_Y43_N8
\B[51]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(51),
	o => \B[51]~input_o\);

-- Location: LCCOMB_X54_Y25_N30
\PrefixNetwork|Gpre[50]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gpre[50]~23_combout\ = (\B[50]~input_o\ & ((\A[50]~input_o\) # ((\PrefixNetwork|Recur:gPair[24]~0_combout\) # (\PrefixNetwork|Recur:Inner|Gpre~13_combout\)))) # (!\B[50]~input_o\ & (\A[50]~input_o\ & 
-- ((\PrefixNetwork|Recur:gPair[24]~0_combout\) # (\PrefixNetwork|Recur:Inner|Gpre~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[50]~input_o\,
	datab => \A[50]~input_o\,
	datac => \PrefixNetwork|Recur:gPair[24]~0_combout\,
	datad => \PrefixNetwork|Recur:Inner|Gpre~13_combout\,
	combout => \PrefixNetwork|Gpre[50]~23_combout\);

-- Location: LCCOMB_X54_Y25_N4
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

-- Location: LCCOMB_X54_Y25_N24
\c~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \c~59_combout\ = (p(48) & (p(49) & (p(50) & \c~57_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(48),
	datab => p(49),
	datac => p(50),
	datad => \c~57_combout\,
	combout => \c~59_combout\);

-- Location: LCCOMB_X54_Y25_N8
\S~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~81_combout\ = \A[51]~input_o\ $ (\B[51]~input_o\ $ (((\PrefixNetwork|Gpre[50]~23_combout\) # (\c~59_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[51]~input_o\,
	datab => \B[51]~input_o\,
	datac => \PrefixNetwork|Gpre[50]~23_combout\,
	datad => \c~59_combout\,
	combout => \S~81_combout\);

-- Location: LCCOMB_X54_Y25_N2
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

-- Location: LCCOMB_X62_Y39_N28
\PrefixNetwork|Recur:gPair[25]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:gPair[25]~0_combout\ = (\A[51]~input_o\ & ((\B[51]~input_o\) # ((\A[50]~input_o\ & \B[50]~input_o\)))) # (!\A[51]~input_o\ & (\A[50]~input_o\ & (\B[50]~input_o\ & \B[51]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[50]~input_o\,
	datab => \A[51]~input_o\,
	datac => \B[50]~input_o\,
	datad => \B[51]~input_o\,
	combout => \PrefixNetwork|Recur:gPair[25]~0_combout\);

-- Location: LCCOMB_X55_Y25_N8
\PrefixNetwork|Recur:Inner|Recur:gPair[12]\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Recur:gPair[12]~combout\ = (\PrefixNetwork|Recur:gPair[25]~0_combout\) # ((p(51) & (\PrefixNetwork|Recur:gPair[24]~0_combout\ & p(50))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(51),
	datab => \PrefixNetwork|Recur:gPair[24]~0_combout\,
	datac => p(50),
	datad => \PrefixNetwork|Recur:gPair[25]~0_combout\,
	combout => \PrefixNetwork|Recur:Inner|Recur:gPair[12]~combout\);

-- Location: IOIBUF_X67_Y36_N8
\B[52]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(52),
	o => \B[52]~input_o\);

-- Location: IOIBUF_X59_Y43_N8
\A[52]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(52),
	o => \A[52]~input_o\);

-- Location: LCCOMB_X55_Y25_N2
\p[52]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(52) = \B[52]~input_o\ $ (\A[52]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[52]~input_o\,
	datad => \A[52]~input_o\,
	combout => p(52));

-- Location: LCCOMB_X54_Y25_N20
\PrefixNetwork|Recur:Inner|Recur:pPair[12]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Recur:pPair[12]~0_combout\ = (p(48) & (p(51) & (p(50) & p(49))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(48),
	datab => p(51),
	datac => p(50),
	datad => p(49),
	combout => \PrefixNetwork|Recur:Inner|Recur:pPair[12]~0_combout\);

-- Location: LCCOMB_X54_Y17_N30
\PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~5_combout\ = (\PrefixNetwork|Recur:Inner|Recur:pPair[12]~0_combout\ & ((\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:gPair[2]~combout\) # 
-- (\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:Inner|Gpre~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:gPair[2]~combout\,
	datab => \PrefixNetwork|Recur:Inner|Recur:pPair[12]~0_combout\,
	datad => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:Inner|Gpre~0_combout\,
	combout => \PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~5_combout\);

-- Location: LCCOMB_X55_Y25_N18
\c~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \c~60_combout\ = (\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:pPair[2]~3_combout\ & (\PrefixNetwork|Recur:Inner|Recur:pPair[12]~0_combout\ & (\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:Inner|Recur:pPair[0]~4_combout\ & 
-- \c~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:pPair[2]~3_combout\,
	datab => \PrefixNetwork|Recur:Inner|Recur:pPair[12]~0_combout\,
	datac => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:Inner|Recur:pPair[0]~4_combout\,
	datad => \c~43_combout\,
	combout => \c~60_combout\);

-- Location: LCCOMB_X62_Y28_N4
\S~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~64_combout\ = p(52) $ (((\PrefixNetwork|Recur:Inner|Recur:gPair[12]~combout\) # ((\PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~5_combout\) # (\c~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Recur:Inner|Recur:gPair[12]~combout\,
	datab => p(52),
	datac => \PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~5_combout\,
	datad => \c~60_combout\,
	combout => \S~64_combout\);

-- Location: IOIBUF_X67_Y36_N22
\B[53]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(53),
	o => \B[53]~input_o\);

-- Location: IOIBUF_X67_Y36_N1
\A[53]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(53),
	o => \A[53]~input_o\);

-- Location: LCCOMB_X56_Y25_N20
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

-- Location: LCCOMB_X55_Y25_N24
\PrefixNetwork|Gpre[52]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gpre[52]~24_combout\ = (\A[52]~input_o\ & ((\B[52]~input_o\) # ((\PrefixNetwork|Recur:Inner|Recur:gPair[12]~combout\) # (\PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~5_combout\)))) # (!\A[52]~input_o\ & (\B[52]~input_o\ & 
-- ((\PrefixNetwork|Recur:Inner|Recur:gPair[12]~combout\) # (\PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[52]~input_o\,
	datab => \B[52]~input_o\,
	datac => \PrefixNetwork|Recur:Inner|Recur:gPair[12]~combout\,
	datad => \PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~5_combout\,
	combout => \PrefixNetwork|Gpre[52]~24_combout\);

-- Location: LCCOMB_X55_Y25_N6
\S~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~65_combout\ = p(53) $ (((\PrefixNetwork|Gpre[52]~24_combout\) # ((\c~60_combout\ & p(52)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(53),
	datab => \c~60_combout\,
	datac => p(52),
	datad => \PrefixNetwork|Gpre[52]~24_combout\,
	combout => \S~65_combout\);

-- Location: IOIBUF_X67_Y41_N22
\A[54]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(54),
	o => \A[54]~input_o\);

-- Location: IOIBUF_X36_Y43_N15
\B[54]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(54),
	o => \B[54]~input_o\);

-- Location: LCCOMB_X59_Y36_N4
\PrefixNetwork|Recur:gPair[26]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:gPair[26]~0_combout\ = (\B[53]~input_o\ & ((\A[53]~input_o\) # ((\B[52]~input_o\ & \A[52]~input_o\)))) # (!\B[53]~input_o\ & (\B[52]~input_o\ & (\A[53]~input_o\ & \A[52]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[53]~input_o\,
	datab => \B[52]~input_o\,
	datac => \A[53]~input_o\,
	datad => \A[52]~input_o\,
	combout => \PrefixNetwork|Recur:gPair[26]~0_combout\);

-- Location: LCCOMB_X55_Y25_N22
\c[54]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[54]~61_combout\ = (\PrefixNetwork|Recur:gPair[26]~0_combout\) # ((p(53) & (p(52) & \c~60_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(53),
	datab => p(52),
	datac => \PrefixNetwork|Recur:gPair[26]~0_combout\,
	datad => \c~60_combout\,
	combout => \c[54]~61_combout\);

-- Location: LCCOMB_X55_Y25_N28
\PrefixNetwork|Recur:Inner|Gpre~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Gpre~14_combout\ = (p(53) & (p(52) & ((\PrefixNetwork|Recur:Inner|Recur:gPair[12]~combout\) # (\PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(53),
	datab => p(52),
	datac => \PrefixNetwork|Recur:Inner|Recur:gPair[12]~combout\,
	datad => \PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~5_combout\,
	combout => \PrefixNetwork|Recur:Inner|Gpre~14_combout\);

-- Location: LCCOMB_X55_Y25_N20
\S~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~66_combout\ = \A[54]~input_o\ $ (\B[54]~input_o\ $ (((\c[54]~61_combout\) # (\PrefixNetwork|Recur:Inner|Gpre~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[54]~input_o\,
	datab => \B[54]~input_o\,
	datac => \c[54]~61_combout\,
	datad => \PrefixNetwork|Recur:Inner|Gpre~14_combout\,
	combout => \S~66_combout\);

-- Location: IOIBUF_X61_Y43_N15
\B[55]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(55),
	o => \B[55]~input_o\);

-- Location: IOIBUF_X38_Y43_N22
\A[55]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(55),
	o => \A[55]~input_o\);

-- Location: LCCOMB_X55_Y29_N4
\p[55]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(55) = \B[55]~input_o\ $ (\A[55]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[55]~input_o\,
	datad => \A[55]~input_o\,
	combout => p(55));

-- Location: LCCOMB_X55_Y25_N26
\p[54]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(54) = \A[54]~input_o\ $ (\B[54]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[54]~input_o\,
	datad => \B[54]~input_o\,
	combout => p(54));

-- Location: LCCOMB_X55_Y25_N12
\c~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \c~62_combout\ = (p(54) & (p(52) & (\A[53]~input_o\ $ (\B[53]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[53]~input_o\,
	datab => \B[53]~input_o\,
	datac => p(54),
	datad => p(52),
	combout => \c~62_combout\);

-- Location: LCCOMB_X55_Y25_N10
\PrefixNetwork|Gpre[54]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gpre[54]~25_combout\ = (\A[54]~input_o\ & ((\B[54]~input_o\) # ((\PrefixNetwork|Recur:gPair[26]~0_combout\) # (\PrefixNetwork|Recur:Inner|Gpre~14_combout\)))) # (!\A[54]~input_o\ & (\B[54]~input_o\ & 
-- ((\PrefixNetwork|Recur:gPair[26]~0_combout\) # (\PrefixNetwork|Recur:Inner|Gpre~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[54]~input_o\,
	datab => \B[54]~input_o\,
	datac => \PrefixNetwork|Recur:gPair[26]~0_combout\,
	datad => \PrefixNetwork|Recur:Inner|Gpre~14_combout\,
	combout => \PrefixNetwork|Gpre[54]~25_combout\);

-- Location: LCCOMB_X55_Y25_N4
\S~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~67_combout\ = p(55) $ (((\PrefixNetwork|Gpre[54]~25_combout\) # ((\c~60_combout\ & \c~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(55),
	datab => \c~60_combout\,
	datac => \c~62_combout\,
	datad => \PrefixNetwork|Gpre[54]~25_combout\,
	combout => \S~67_combout\);

-- Location: IOIBUF_X32_Y43_N29
\A[56]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(56),
	o => \A[56]~input_o\);

-- Location: IOIBUF_X63_Y43_N22
\B[56]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(56),
	o => \B[56]~input_o\);

-- Location: LCCOMB_X55_Y24_N26
\p[56]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(56) = \A[56]~input_o\ $ (\B[56]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[56]~input_o\,
	datad => \B[56]~input_o\,
	combout => p(56));

-- Location: LCCOMB_X54_Y25_N10
\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[6]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[6]~2_combout\ = (\c~62_combout\ & (\PrefixNetwork|Recur:Inner|Recur:pPair[12]~0_combout\ & (\A[55]~input_o\ $ (\B[55]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[55]~input_o\,
	datab => \B[55]~input_o\,
	datac => \c~62_combout\,
	datad => \PrefixNetwork|Recur:Inner|Recur:pPair[12]~0_combout\,
	combout => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[6]~2_combout\);

-- Location: LCCOMB_X55_Y24_N28
\c~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \c~63_combout\ = (\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[6]~2_combout\ & (\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:Inner|Recur:pPair[0]~4_combout\ & (\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:pPair[2]~3_combout\ 
-- & \c~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[6]~2_combout\,
	datab => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:Inner|Recur:pPair[0]~4_combout\,
	datac => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:pPair[2]~3_combout\,
	datad => \c~43_combout\,
	combout => \c~63_combout\);

-- Location: LCCOMB_X55_Y25_N14
\PrefixNetwork|Recur:gPair[27]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:gPair[27]~0_combout\ = (\A[55]~input_o\ & ((\B[55]~input_o\) # ((\A[54]~input_o\ & \B[54]~input_o\)))) # (!\A[55]~input_o\ & (\A[54]~input_o\ & (\B[54]~input_o\ & \B[55]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[54]~input_o\,
	datab => \B[54]~input_o\,
	datac => \A[55]~input_o\,
	datad => \B[55]~input_o\,
	combout => \PrefixNetwork|Recur:gPair[27]~0_combout\);

-- Location: LCCOMB_X55_Y25_N16
\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[6]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[6]~0_combout\ = (\PrefixNetwork|Recur:gPair[27]~0_combout\) # ((p(54) & (\PrefixNetwork|Recur:gPair[26]~0_combout\ & p(55))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(54),
	datab => \PrefixNetwork|Recur:gPair[27]~0_combout\,
	datac => \PrefixNetwork|Recur:gPair[26]~0_combout\,
	datad => p(55),
	combout => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[6]~0_combout\);

-- Location: LCCOMB_X55_Y25_N30
\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[6]~combout\ = (\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[6]~0_combout\) # ((p(55) & (\c~62_combout\ & \PrefixNetwork|Recur:Inner|Recur:gPair[12]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(55),
	datab => \c~62_combout\,
	datac => \PrefixNetwork|Recur:Inner|Recur:gPair[12]~combout\,
	datad => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[6]~0_combout\,
	combout => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[6]~combout\);

-- Location: LCCOMB_X54_Y17_N24
\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Gpre~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Gpre~2_combout\ = (\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[6]~2_combout\ & ((\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:gPair[2]~combout\) # 
-- (\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:Inner|Gpre~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:gPair[2]~combout\,
	datac => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[6]~2_combout\,
	datad => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:Inner|Gpre~0_combout\,
	combout => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Gpre~2_combout\);

-- Location: LCCOMB_X55_Y24_N8
\S~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~68_combout\ = p(56) $ (((\c~63_combout\) # ((\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[6]~combout\) # (\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Gpre~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(56),
	datab => \c~63_combout\,
	datac => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[6]~combout\,
	datad => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Gpre~2_combout\,
	combout => \S~68_combout\);

-- Location: IOIBUF_X32_Y43_N22
\B[57]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(57),
	o => \B[57]~input_o\);

-- Location: IOIBUF_X36_Y43_N22
\A[57]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(57),
	o => \A[57]~input_o\);

-- Location: LCCOMB_X56_Y24_N24
\p[57]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(57) = \B[57]~input_o\ $ (\A[57]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[57]~input_o\,
	datad => \A[57]~input_o\,
	combout => p(57));

-- Location: LCCOMB_X55_Y24_N6
\PrefixNetwork|Gpre[56]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gpre[56]~26_combout\ = (\B[56]~input_o\ & ((\A[56]~input_o\) # ((\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[6]~combout\) # (\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Gpre~2_combout\)))) # (!\B[56]~input_o\ & 
-- (\A[56]~input_o\ & ((\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[6]~combout\) # (\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Gpre~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[56]~input_o\,
	datab => \A[56]~input_o\,
	datac => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[6]~combout\,
	datad => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Gpre~2_combout\,
	combout => \PrefixNetwork|Gpre[56]~26_combout\);

-- Location: LCCOMB_X55_Y24_N20
\S~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~69_combout\ = p(57) $ (((\PrefixNetwork|Gpre[56]~26_combout\) # ((p(56) & \c~63_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(56),
	datab => p(57),
	datac => \c~63_combout\,
	datad => \PrefixNetwork|Gpre[56]~26_combout\,
	combout => \S~69_combout\);

-- Location: IOIBUF_X67_Y38_N8
\A[58]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(58),
	o => \A[58]~input_o\);

-- Location: IOIBUF_X67_Y38_N22
\B[58]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(58),
	o => \B[58]~input_o\);

-- Location: LCCOMB_X55_Y24_N16
\PrefixNetwork|Recur:gPair[28]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:gPair[28]~0_combout\ = (\B[57]~input_o\ & ((\A[57]~input_o\) # ((\A[56]~input_o\ & \B[56]~input_o\)))) # (!\B[57]~input_o\ & (\A[56]~input_o\ & (\A[57]~input_o\ & \B[56]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[56]~input_o\,
	datab => \B[57]~input_o\,
	datac => \A[57]~input_o\,
	datad => \B[56]~input_o\,
	combout => \PrefixNetwork|Recur:gPair[28]~0_combout\);

-- Location: LCCOMB_X55_Y24_N22
\c[58]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[58]~64_combout\ = (\PrefixNetwork|Recur:gPair[28]~0_combout\) # ((p(56) & (p(57) & \c~63_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(56),
	datab => p(57),
	datac => \PrefixNetwork|Recur:gPair[28]~0_combout\,
	datad => \c~63_combout\,
	combout => \c[58]~64_combout\);

-- Location: LCCOMB_X55_Y24_N10
\PrefixNetwork|Recur:Inner|Gpre~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Gpre~15_combout\ = (p(56) & (p(57) & ((\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[6]~combout\) # (\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Gpre~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(56),
	datab => p(57),
	datac => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[6]~combout\,
	datad => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Gpre~2_combout\,
	combout => \PrefixNetwork|Recur:Inner|Gpre~15_combout\);

-- Location: LCCOMB_X55_Y24_N12
\S~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~82_combout\ = \A[58]~input_o\ $ (\B[58]~input_o\ $ (((\c[58]~64_combout\) # (\PrefixNetwork|Recur:Inner|Gpre~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[58]~input_o\,
	datab => \B[58]~input_o\,
	datac => \c[58]~64_combout\,
	datad => \PrefixNetwork|Recur:Inner|Gpre~15_combout\,
	combout => \S~82_combout\);

-- Location: LCCOMB_X59_Y24_N4
\p[58]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(58) = \A[58]~input_o\ $ (\B[58]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[58]~input_o\,
	datad => \B[58]~input_o\,
	combout => p(58));

-- Location: LCCOMB_X55_Y24_N30
\c~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \c~80_combout\ = (p(57) & (p(58) & (\A[56]~input_o\ $ (\B[56]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[56]~input_o\,
	datab => p(57),
	datac => p(58),
	datad => \B[56]~input_o\,
	combout => \c~80_combout\);

-- Location: IOIBUF_X63_Y43_N29
\B[59]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(59),
	o => \B[59]~input_o\);

-- Location: IOIBUF_X41_Y43_N8
\A[59]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(59),
	o => \A[59]~input_o\);

-- Location: LCCOMB_X55_Y27_N28
\p[59]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(59) = \B[59]~input_o\ $ (\A[59]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[59]~input_o\,
	datad => \A[59]~input_o\,
	combout => p(59));

-- Location: LCCOMB_X55_Y24_N24
\PrefixNetwork|Gpre[58]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gpre[58]~27_combout\ = (\A[58]~input_o\ & ((\B[58]~input_o\) # ((\PrefixNetwork|Recur:gPair[28]~0_combout\) # (\PrefixNetwork|Recur:Inner|Gpre~15_combout\)))) # (!\A[58]~input_o\ & (\B[58]~input_o\ & 
-- ((\PrefixNetwork|Recur:gPair[28]~0_combout\) # (\PrefixNetwork|Recur:Inner|Gpre~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[58]~input_o\,
	datab => \B[58]~input_o\,
	datac => \PrefixNetwork|Recur:gPair[28]~0_combout\,
	datad => \PrefixNetwork|Recur:Inner|Gpre~15_combout\,
	combout => \PrefixNetwork|Gpre[58]~27_combout\);

-- Location: LCCOMB_X55_Y24_N14
\S~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~70_combout\ = p(59) $ (((\PrefixNetwork|Gpre[58]~27_combout\) # ((\c~80_combout\ & \c~63_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c~80_combout\,
	datab => \c~63_combout\,
	datac => p(59),
	datad => \PrefixNetwork|Gpre[58]~27_combout\,
	combout => \S~70_combout\);

-- Location: IOIBUF_X67_Y37_N15
\B[60]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(60),
	o => \B[60]~input_o\);

-- Location: IOIBUF_X67_Y34_N1
\A[60]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(60),
	o => \A[60]~input_o\);

-- Location: LCCOMB_X55_Y21_N22
\p[60]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(60) = \B[60]~input_o\ $ (\A[60]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[60]~input_o\,
	datad => \A[60]~input_o\,
	combout => p(60));

-- Location: LCCOMB_X55_Y24_N2
\PrefixNetwork|Recur:gPair[29]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:gPair[29]~0_combout\ = (\A[59]~input_o\ & ((\B[59]~input_o\) # ((\A[58]~input_o\ & \B[58]~input_o\)))) # (!\A[59]~input_o\ & (\A[58]~input_o\ & (\B[58]~input_o\ & \B[59]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[58]~input_o\,
	datab => \B[58]~input_o\,
	datac => \A[59]~input_o\,
	datad => \B[59]~input_o\,
	combout => \PrefixNetwork|Recur:gPair[29]~0_combout\);

-- Location: LCCOMB_X55_Y24_N4
\PrefixNetwork|Recur:Inner|Recur:gPair[14]\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Recur:gPair[14]~combout\ = (\PrefixNetwork|Recur:gPair[29]~0_combout\) # ((p(59) & (p(58) & \PrefixNetwork|Recur:gPair[28]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(59),
	datab => \PrefixNetwork|Recur:gPair[29]~0_combout\,
	datac => p(58),
	datad => \PrefixNetwork|Recur:gPair[28]~0_combout\,
	combout => \PrefixNetwork|Recur:Inner|Recur:gPair[14]~combout\);

-- Location: LCCOMB_X55_Y24_N0
\PrefixNetwork|Recur:Inner|Recur:pPair[14]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Recur:pPair[14]~0_combout\ = (p(56) & (p(57) & (p(58) & p(59))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(56),
	datab => p(57),
	datac => p(58),
	datad => p(59),
	combout => \PrefixNetwork|Recur:Inner|Recur:pPair[14]~0_combout\);

-- Location: LCCOMB_X55_Y17_N10
\c~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \c~65_combout\ = (\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:pPair[2]~3_combout\ & (\PrefixNetwork|Recur:Inner|Recur:pPair[14]~0_combout\ & (\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[6]~2_combout\ & \c~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:pPair[2]~3_combout\,
	datab => \PrefixNetwork|Recur:Inner|Recur:pPair[14]~0_combout\,
	datac => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[6]~2_combout\,
	datad => \c~46_combout\,
	combout => \c~65_combout\);

-- Location: LCCOMB_X55_Y21_N28
\PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~6_combout\ = (\PrefixNetwork|Recur:Inner|Recur:pPair[14]~0_combout\ & ((\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[6]~combout\) # (\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Gpre~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[6]~combout\,
	datac => \PrefixNetwork|Recur:Inner|Recur:pPair[14]~0_combout\,
	datad => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Gpre~2_combout\,
	combout => \PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~6_combout\);

-- Location: LCCOMB_X55_Y21_N20
\S~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~71_combout\ = p(60) $ (((\PrefixNetwork|Recur:Inner|Recur:gPair[14]~combout\) # ((\c~65_combout\) # (\PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(60),
	datab => \PrefixNetwork|Recur:Inner|Recur:gPair[14]~combout\,
	datac => \c~65_combout\,
	datad => \PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~6_combout\,
	combout => \S~71_combout\);

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

-- Location: IOIBUF_X67_Y41_N15
\A[61]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(61),
	o => \A[61]~input_o\);

-- Location: LCCOMB_X55_Y21_N8
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

-- Location: LCCOMB_X55_Y21_N2
\PrefixNetwork|Gpre[60]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gpre[60]~28_combout\ = (\A[60]~input_o\ & ((\B[60]~input_o\) # ((\PrefixNetwork|Recur:Inner|Recur:gPair[14]~combout\) # (\PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~6_combout\)))) # (!\A[60]~input_o\ & (\B[60]~input_o\ & 
-- ((\PrefixNetwork|Recur:Inner|Recur:gPair[14]~combout\) # (\PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[60]~input_o\,
	datab => \B[60]~input_o\,
	datac => \PrefixNetwork|Recur:Inner|Recur:gPair[14]~combout\,
	datad => \PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~6_combout\,
	combout => \PrefixNetwork|Gpre[60]~28_combout\);

-- Location: LCCOMB_X55_Y21_N6
\S~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~72_combout\ = p(61) $ (((\PrefixNetwork|Gpre[60]~28_combout\) # ((p(60) & \c~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(60),
	datab => p(61),
	datac => \c~65_combout\,
	datad => \PrefixNetwork|Gpre[60]~28_combout\,
	combout => \S~72_combout\);

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

-- Location: IOIBUF_X65_Y43_N22
\B[62]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(62),
	o => \B[62]~input_o\);

-- Location: LCCOMB_X55_Y24_N18
\PrefixNetwork|Recur:Inner|Gpre~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Gpre~16_combout\ = (p(61) & (p(60) & ((\PrefixNetwork|Recur:Inner|Recur:gPair[14]~combout\) # (\PrefixNetwork|Recur:Inner|Recur:pPair[14]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(61),
	datab => p(60),
	datac => \PrefixNetwork|Recur:Inner|Recur:gPair[14]~combout\,
	datad => \PrefixNetwork|Recur:Inner|Recur:pPair[14]~0_combout\,
	combout => \PrefixNetwork|Recur:Inner|Gpre~16_combout\);

-- Location: LCCOMB_X54_Y17_N2
\PrefixNetwork|Recur:Inner|Gpre~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Gpre~17_combout\ = (\PrefixNetwork|Recur:Inner|Gpre~16_combout\ & ((\PrefixNetwork|Recur:Inner|Recur:gPair[14]~combout\) # ((\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[6]~combout\) # 
-- (\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Gpre~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Recur:Inner|Recur:gPair[14]~combout\,
	datab => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[6]~combout\,
	datac => \PrefixNetwork|Recur:Inner|Gpre~16_combout\,
	datad => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Gpre~2_combout\,
	combout => \PrefixNetwork|Recur:Inner|Gpre~17_combout\);

-- Location: LCCOMB_X55_Y21_N16
\PrefixNetwork|Recur:gPair[30]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:gPair[30]~0_combout\ = (\A[61]~input_o\ & ((\B[61]~input_o\) # ((\B[60]~input_o\ & \A[60]~input_o\)))) # (!\A[61]~input_o\ & (\B[60]~input_o\ & (\B[61]~input_o\ & \A[60]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[61]~input_o\,
	datab => \B[60]~input_o\,
	datac => \B[61]~input_o\,
	datad => \A[60]~input_o\,
	combout => \PrefixNetwork|Recur:gPair[30]~0_combout\);

-- Location: LCCOMB_X54_Y19_N24
\c[62]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[62]~66_combout\ = (\PrefixNetwork|Recur:gPair[30]~0_combout\) # ((p(61) & (p(60) & \c~65_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Recur:gPair[30]~0_combout\,
	datab => p(61),
	datac => p(60),
	datad => \c~65_combout\,
	combout => \c[62]~66_combout\);

-- Location: LCCOMB_X66_Y19_N20
\S~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~83_combout\ = \A[62]~input_o\ $ (\B[62]~input_o\ $ (((\PrefixNetwork|Recur:Inner|Gpre~17_combout\) # (\c[62]~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[62]~input_o\,
	datab => \B[62]~input_o\,
	datac => \PrefixNetwork|Recur:Inner|Gpre~17_combout\,
	datad => \c[62]~66_combout\,
	combout => \S~83_combout\);

-- Location: IOIBUF_X32_Y43_N1
\A[63]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(63),
	o => \A[63]~input_o\);

-- Location: IOIBUF_X32_Y43_N8
\B[63]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(63),
	o => \B[63]~input_o\);

-- Location: LCCOMB_X55_Y21_N10
\p[63]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(63) = \A[63]~input_o\ $ (\B[63]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[63]~input_o\,
	datad => \B[63]~input_o\,
	combout => p(63));

-- Location: LCCOMB_X55_Y21_N0
\c~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \c~67_combout\ = (p(60) & (p(61) & (\B[62]~input_o\ $ (\A[62]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(60),
	datab => \B[62]~input_o\,
	datac => p(61),
	datad => \A[62]~input_o\,
	combout => \c~67_combout\);

-- Location: LCCOMB_X54_Y17_N0
\PrefixNetwork|Gpre[62]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gpre[62]~29_combout\ = (\B[62]~input_o\ & ((\PrefixNetwork|Recur:gPair[30]~0_combout\) # ((\A[62]~input_o\) # (\PrefixNetwork|Recur:Inner|Gpre~17_combout\)))) # (!\B[62]~input_o\ & (\A[62]~input_o\ & 
-- ((\PrefixNetwork|Recur:gPair[30]~0_combout\) # (\PrefixNetwork|Recur:Inner|Gpre~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[62]~input_o\,
	datab => \PrefixNetwork|Recur:gPair[30]~0_combout\,
	datac => \A[62]~input_o\,
	datad => \PrefixNetwork|Recur:Inner|Gpre~17_combout\,
	combout => \PrefixNetwork|Gpre[62]~29_combout\);

-- Location: LCCOMB_X54_Y17_N6
\S~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~73_combout\ = p(63) $ (((\PrefixNetwork|Gpre[62]~29_combout\) # ((\c~67_combout\ & \c~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(63),
	datab => \c~67_combout\,
	datac => \c~65_combout\,
	datad => \PrefixNetwork|Gpre[62]~29_combout\,
	combout => \S~73_combout\);

-- Location: LCCOMB_X55_Y21_N18
\p[62]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(62) = \A[62]~input_o\ $ (\B[62]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[62]~input_o\,
	datad => \B[62]~input_o\,
	combout => p(62));

-- Location: LCCOMB_X55_Y21_N24
\c~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \c~72_combout\ = (p(63) & (p(61) & (p(60) & p(62))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(63),
	datab => p(61),
	datac => p(60),
	datad => p(62),
	combout => \c~72_combout\);

-- Location: LCCOMB_X55_Y21_N4
\PrefixNetwork|Recur:gPair[31]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:gPair[31]~0_combout\ = (\A[63]~input_o\ & ((\B[63]~input_o\) # ((\A[62]~input_o\ & \B[62]~input_o\)))) # (!\A[63]~input_o\ & (\A[62]~input_o\ & (\B[62]~input_o\ & \B[63]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[62]~input_o\,
	datab => \B[62]~input_o\,
	datac => \A[63]~input_o\,
	datad => \B[63]~input_o\,
	combout => \PrefixNetwork|Recur:gPair[31]~0_combout\);

-- Location: LCCOMB_X55_Y21_N30
\c~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \c~68_combout\ = (\PrefixNetwork|Recur:gPair[31]~0_combout\) # ((p(63) & (\PrefixNetwork|Recur:gPair[30]~0_combout\ & p(62))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(63),
	datab => \PrefixNetwork|Recur:gPair[30]~0_combout\,
	datac => \PrefixNetwork|Recur:gPair[31]~0_combout\,
	datad => p(62),
	combout => \c~68_combout\);

-- Location: LCCOMB_X55_Y17_N4
\c~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \c~69_combout\ = (\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:pPair[2]~3_combout\ & ((\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:Inner|gPair~0_combout\) # 
-- ((\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:gPair[1]~combout\) # (\c~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:pPair[2]~3_combout\,
	datab => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:Inner|gPair~0_combout\,
	datac => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:gPair[1]~combout\,
	datad => \c~46_combout\,
	combout => \c~69_combout\);

-- Location: LCCOMB_X55_Y17_N30
\c~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \c~70_combout\ = (\PrefixNetwork|Recur:Inner|Recur:pPair[14]~0_combout\ & (\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[6]~2_combout\ & ((\c~69_combout\) # (\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:gPair[2]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Recur:Inner|Recur:pPair[14]~0_combout\,
	datab => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[6]~2_combout\,
	datac => \c~69_combout\,
	datad => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:gPair[2]~combout\,
	combout => \c~70_combout\);

-- Location: LCCOMB_X55_Y17_N12
\c~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \c~71_combout\ = (\PrefixNetwork|Recur:Inner|Recur:gPair[14]~combout\) # ((\c~70_combout\) # ((\PrefixNetwork|Recur:Inner|Recur:pPair[14]~0_combout\ & \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[6]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Recur:Inner|Recur:gPair[14]~combout\,
	datab => \PrefixNetwork|Recur:Inner|Recur:pPair[14]~0_combout\,
	datac => \c~70_combout\,
	datad => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[6]~combout\,
	combout => \c~71_combout\);

-- Location: LCCOMB_X55_Y17_N22
\c~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \c~73_combout\ = (\c~68_combout\) # ((\c~72_combout\ & \c~71_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c~72_combout\,
	datac => \c~68_combout\,
	datad => \c~71_combout\,
	combout => \c~73_combout\);

-- Location: LCCOMB_X55_Y17_N16
\c[63]\ : cycloneive_lcell_comb
-- Equation(s):
-- c(63) = (\PrefixNetwork|Gpre[62]~29_combout\) # ((\c~67_combout\ & (\PrefixNetwork|Recur:Inner|Recur:pPair[14]~0_combout\ & \c~63_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c~67_combout\,
	datab => \PrefixNetwork|Recur:Inner|Recur:pPair[14]~0_combout\,
	datac => \PrefixNetwork|Gpre[62]~29_combout\,
	datad => \c~63_combout\,
	combout => c(63));

-- Location: LCCOMB_X55_Y17_N26
\Ovfl~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Ovfl~0_combout\ = c(63) $ (((\c~68_combout\) # ((\c~71_combout\ & \c~72_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c~71_combout\,
	datab => \c~72_combout\,
	datac => \c~68_combout\,
	datad => c(63),
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


