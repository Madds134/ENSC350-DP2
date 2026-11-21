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

-- DATE "11/20/2026 23:19:36"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
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
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


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
-- S[0]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[1]	=>  Location: PIN_D25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[2]	=>  Location: PIN_C25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[3]	=>  Location: PIN_B25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[4]	=>  Location: PIN_A26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[5]	=>  Location: PIN_A25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[6]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[7]	=>  Location: PIN_C26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[8]	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[9]	=>  Location: PIN_H23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[10]	=>  Location: PIN_F25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[11]	=>  Location: PIN_F24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[12]	=>  Location: PIN_G26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[13]	=>  Location: PIN_K25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[14]	=>  Location: PIN_F28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[15]	=>  Location: PIN_G25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[16]	=>  Location: PIN_G24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[17]	=>  Location: PIN_F27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[18]	=>  Location: PIN_E27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[19]	=>  Location: PIN_H25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[20]	=>  Location: PIN_B26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[21]	=>  Location: PIN_G23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[22]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[23]	=>  Location: PIN_E28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[24]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[25]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[26]	=>  Location: PIN_AF27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[27]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[28]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[29]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[30]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[31]	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[32]	=>  Location: PIN_R26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[33]	=>  Location: PIN_T25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[34]	=>  Location: PIN_AD25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[35]	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[36]	=>  Location: PIN_AC21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[37]	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[38]	=>  Location: PIN_AD21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[39]	=>  Location: PIN_AE23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[40]	=>  Location: PIN_AF22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[41]	=>  Location: PIN_AC19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[42]	=>  Location: PIN_AE22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[43]	=>  Location: PIN_AE25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[44]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[45]	=>  Location: PIN_AG22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[46]	=>  Location: PIN_AH22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[47]	=>  Location: PIN_AF24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[48]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[49]	=>  Location: PIN_AD19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[50]	=>  Location: PIN_AF25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[51]	=>  Location: PIN_AF26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[52]	=>  Location: PIN_AA23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[53]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[54]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[55]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[56]	=>  Location: PIN_V26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[57]	=>  Location: PIN_V28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[58]	=>  Location: PIN_V27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[59]	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[60]	=>  Location: PIN_V22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[61]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[62]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[63]	=>  Location: PIN_U25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cout	=>  Location: PIN_U27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ovfl	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_R23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_R27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cin	=>  Location: PIN_R28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_T21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_R25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_N25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_N26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_P27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_P26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_P25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_M27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[8]	=>  Location: PIN_L21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[9]	=>  Location: PIN_D26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_L24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[10]	=>  Location: PIN_F26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[11]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[11]	=>  Location: PIN_E26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[12]	=>  Location: PIN_M28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[12]	=>  Location: PIN_G27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[13]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[13]	=>  Location: PIN_G28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[14]	=>  Location: PIN_J26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[14]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[15]	=>  Location: PIN_L27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[15]	=>  Location: PIN_K28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[16]	=>  Location: PIN_K27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[16]	=>  Location: PIN_J25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[17]	=>  Location: PIN_M25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[17]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[18]	=>  Location: PIN_C27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[18]	=>  Location: PIN_H26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[19]	=>  Location: PIN_M26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[19]	=>  Location: PIN_J24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[20]	=>  Location: PIN_H24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[20]	=>  Location: PIN_D28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[21]	=>  Location: PIN_J23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[21]	=>  Location: PIN_K26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[22]	=>  Location: PIN_L23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[22]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[23]	=>  Location: PIN_D27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[23]	=>  Location: PIN_L28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[24]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[24]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[25]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[25]	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[26]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[26]	=>  Location: PIN_AD28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[27]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[27]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[28]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[28]	=>  Location: PIN_AB24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[29]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[29]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[30]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[30]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[31]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[31]	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[32]	=>  Location: PIN_AE24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[32]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[33]	=>  Location: PIN_AF16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[33]	=>  Location: PIN_AG14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[34]	=>  Location: PIN_AH14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[34]	=>  Location: PIN_AC17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[35]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[35]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[36]	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[36]	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[37]	=>  Location: PIN_AH25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[37]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[38]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[38]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[39]	=>  Location: PIN_AE21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[39]	=>  Location: PIN_AD18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[40]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[40]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[41]	=>  Location: PIN_AE20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[41]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[42]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[42]	=>  Location: PIN_AG25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[43]	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[43]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[44]	=>  Location: PIN_AF20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[44]	=>  Location: PIN_AH23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[45]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[45]	=>  Location: PIN_AF21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[46]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[46]	=>  Location: PIN_AG23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[47]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[47]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[48]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[48]	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[49]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[49]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[50]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[50]	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[51]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[51]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[52]	=>  Location: PIN_AC22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[52]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[53]	=>  Location: PIN_AH26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[53]	=>  Location: PIN_AD22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[54]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[54]	=>  Location: PIN_AG26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[55]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[55]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[56]	=>  Location: PIN_U26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[56]	=>  Location: PIN_V23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[57]	=>  Location: PIN_V24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[57]	=>  Location: PIN_U28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[58]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[58]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[59]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[59]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[60]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[60]	=>  Location: PIN_T26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[61]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[61]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[62]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[62]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[63]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[63]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \S~20_combout\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \S~21_combout\ : std_logic;
SIGNAL \c~28_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:gPair[0]~0_combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \S~22_combout\ : std_logic;
SIGNAL \c~29_combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \c[3]~30_combout\ : std_logic;
SIGNAL \S~23_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:gPair[1]~0_combout\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|gPair~0_combout\ : std_logic;
SIGNAL \c~31_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|gPair~1_combout\ : std_logic;
SIGNAL \S~24_combout\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gpre[4]~0_combout\ : std_logic;
SIGNAL \S~25_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:gPair[2]~0_combout\ : std_logic;
SIGNAL \c~74_combout\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Gpre~0_combout\ : std_logic;
SIGNAL \S~26_combout\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gpre[6]~1_combout\ : std_logic;
SIGNAL \S~27_combout\ : std_logic;
SIGNAL \B[8]~input_o\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[0]~0_combout\ : std_logic;
SIGNAL \c~32_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:gPair[3]~0_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:gPair[1]~combout\ : std_logic;
SIGNAL \c[8]~33_combout\ : std_logic;
SIGNAL \S~28_combout\ : std_logic;
SIGNAL \c~34_combout\ : std_logic;
SIGNAL \B[9]~input_o\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:Inner|gPair~0_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gpre[8]~2_combout\ : std_logic;
SIGNAL \S~29_combout\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \B[10]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:pPair[2]~0_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Gpre~1_combout\ : std_logic;
SIGNAL \c~35_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:gPair[4]~0_combout\ : std_logic;
SIGNAL \S~30_combout\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \B[11]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gpre[10]~3_combout\ : std_logic;
SIGNAL \S~31_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:gPair[5]~0_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:gPair[2]~combout\ : std_logic;
SIGNAL \B[12]~input_o\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \c~36_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~0_combout\ : std_logic;
SIGNAL \S~32_combout\ : std_logic;
SIGNAL \B[13]~input_o\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gpre[12]~4_combout\ : std_logic;
SIGNAL \S~33_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:gPair[6]~0_combout\ : std_logic;
SIGNAL \B[14]~input_o\ : std_logic;
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \c~75_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Gpre~2_combout\ : std_logic;
SIGNAL \S~34_combout\ : std_logic;
SIGNAL \B[15]~input_o\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gpre[14]~5_combout\ : std_logic;
SIGNAL \S~35_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:Inner|gPair~1_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:gPair[7]~0_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[1]~0_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[1]~combout\ : std_logic;
SIGNAL \B[16]~input_o\ : std_logic;
SIGNAL \A[16]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[1]~0_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|gPair~0_combout\ : std_logic;
SIGNAL \c~37_combout\ : std_logic;
SIGNAL \S~36_combout\ : std_logic;
SIGNAL \A[17]~input_o\ : std_logic;
SIGNAL \B[17]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gpre[16]~6_combout\ : std_logic;
SIGNAL \S~37_combout\ : std_logic;
SIGNAL \A[18]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Recur:gPair[8]~0_combout\ : std_logic;
SIGNAL \B[18]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Gpre~3_combout\ : std_logic;
SIGNAL \c[18]~38_combout\ : std_logic;
SIGNAL \S~74_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gpre[18]~7_combout\ : std_logic;
SIGNAL \c~76_combout\ : std_logic;
SIGNAL \A[19]~input_o\ : std_logic;
SIGNAL \B[19]~input_o\ : std_logic;
SIGNAL \S~38_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:Inner|Ppre[4]~0_combout\ : std_logic;
SIGNAL \c~39_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:gPair[9]~0_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:gPair[4]~combout\ : std_logic;
SIGNAL \B[20]~input_o\ : std_logic;
SIGNAL \A[20]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~1_combout\ : std_logic;
SIGNAL \S~39_combout\ : std_logic;
SIGNAL \B[21]~input_o\ : std_logic;
SIGNAL \A[21]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gpre[20]~8_combout\ : std_logic;
SIGNAL \S~40_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:gPair[10]~0_combout\ : std_logic;
SIGNAL \c~40_combout\ : std_logic;
SIGNAL \A[22]~input_o\ : std_logic;
SIGNAL \B[22]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Gpre~4_combout\ : std_logic;
SIGNAL \S~41_combout\ : std_logic;
SIGNAL \A[23]~input_o\ : std_logic;
SIGNAL \B[23]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gpre[22]~9_combout\ : std_logic;
SIGNAL \S~42_combout\ : std_logic;
SIGNAL \B[24]~input_o\ : std_logic;
SIGNAL \A[24]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:Inner|gPair~2_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[2]~0_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Gpre~0_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:gPair[11]~0_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[2]~0_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[2]~combout\ : std_logic;
SIGNAL \c~77_combout\ : std_logic;
SIGNAL \S~43_combout\ : std_logic;
SIGNAL \B[25]~input_o\ : std_logic;
SIGNAL \A[25]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gpre[24]~10_combout\ : std_logic;
SIGNAL \S~44_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Gpre~5_combout\ : std_logic;
SIGNAL \B[26]~input_o\ : std_logic;
SIGNAL \A[26]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Recur:gPair[12]~0_combout\ : std_logic;
SIGNAL \c[26]~41_combout\ : std_logic;
SIGNAL \S~75_combout\ : std_logic;
SIGNAL \B[27]~input_o\ : std_logic;
SIGNAL \A[27]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gpre[26]~11_combout\ : std_logic;
SIGNAL \c~42_combout\ : std_logic;
SIGNAL \S~76_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:gPair[13]~0_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:gPair[6]~combout\ : std_logic;
SIGNAL \B[28]~input_o\ : std_logic;
SIGNAL \A[28]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:pPair[6]~0_combout\ : std_logic;
SIGNAL \c~43_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~2_combout\ : std_logic;
SIGNAL \S~45_combout\ : std_logic;
SIGNAL \B[29]~input_o\ : std_logic;
SIGNAL \A[29]~input_o\ : std_logic;
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
SIGNAL \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:Inner|Recur:pPair[0]~4_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:gPair[15]~0_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:gPair[1]~0_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:gPair[1]~1_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:gPair[1]~combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:Inner|gPair~0_combout\ : std_logic;
SIGNAL \B[32]~input_o\ : std_logic;
SIGNAL \A[32]~input_o\ : std_logic;
SIGNAL \c~46_combout\ : std_logic;
SIGNAL \S~48_combout\ : std_logic;
SIGNAL \A[33]~input_o\ : std_logic;
SIGNAL \B[33]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gpre[32]~14_combout\ : std_logic;
SIGNAL \S~49_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Gpre~8_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Gpre~9_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:gPair[16]~0_combout\ : std_logic;
SIGNAL \A[34]~input_o\ : std_logic;
SIGNAL \B[34]~input_o\ : std_logic;
SIGNAL \c~47_combout\ : std_logic;
SIGNAL \S~50_combout\ : std_logic;
SIGNAL \c~48_combout\ : std_logic;
SIGNAL \A[35]~input_o\ : std_logic;
SIGNAL \B[35]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gpre[34]~15_combout\ : std_logic;
SIGNAL \S~51_combout\ : std_logic;
SIGNAL \A[36]~input_o\ : std_logic;
SIGNAL \B[36]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Recur:gPair[17]~0_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:gPair[8]~combout\ : std_logic;
SIGNAL \c~49_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~3_combout\ : std_logic;
SIGNAL \S~52_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gpre[36]~16_combout\ : std_logic;
SIGNAL \B[37]~input_o\ : std_logic;
SIGNAL \A[37]~input_o\ : std_logic;
SIGNAL \S~53_combout\ : std_logic;
SIGNAL \A[38]~input_o\ : std_logic;
SIGNAL \B[38]~input_o\ : std_logic;
SIGNAL \c~78_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:gPair[18]~0_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Gpre~10_combout\ : std_logic;
SIGNAL \S~54_combout\ : std_logic;
SIGNAL \A[39]~input_o\ : std_logic;
SIGNAL \B[39]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gpre[38]~17_combout\ : std_logic;
SIGNAL \S~55_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:Inner|gPair~3_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[4]~0_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Gpre~1_combout\ : std_logic;
SIGNAL \A[40]~input_o\ : std_logic;
SIGNAL \B[40]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Recur:gPair[19]~0_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[4]~0_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[4]~combout\ : std_logic;
SIGNAL \c~50_combout\ : std_logic;
SIGNAL \S~56_combout\ : std_logic;
SIGNAL \B[41]~input_o\ : std_logic;
SIGNAL \A[41]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gpre[40]~18_combout\ : std_logic;
SIGNAL \S~57_combout\ : std_logic;
SIGNAL \A[42]~input_o\ : std_logic;
SIGNAL \B[42]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Recur:gPair[20]~0_combout\ : std_logic;
SIGNAL \c[42]~51_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Gpre~11_combout\ : std_logic;
SIGNAL \S~78_combout\ : std_logic;
SIGNAL \A[43]~input_o\ : std_logic;
SIGNAL \B[43]~input_o\ : std_logic;
SIGNAL \c~52_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gpre[42]~19_combout\ : std_logic;
SIGNAL \S~79_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:pPair[10]~0_combout\ : std_logic;
SIGNAL \c~53_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:gPair[21]~0_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:gPair[10]~combout\ : std_logic;
SIGNAL \A[44]~input_o\ : std_logic;
SIGNAL \B[44]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~4_combout\ : std_logic;
SIGNAL \S~58_combout\ : std_logic;
SIGNAL \B[45]~input_o\ : std_logic;
SIGNAL \A[45]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gpre[44]~20_combout\ : std_logic;
SIGNAL \S~59_combout\ : std_logic;
SIGNAL \A[46]~input_o\ : std_logic;
SIGNAL \B[46]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Recur:gPair[22]~0_combout\ : std_logic;
SIGNAL \c~54_combout\ : std_logic;
SIGNAL \c[46]~55_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Gpre~12_combout\ : std_logic;
SIGNAL \S~60_combout\ : std_logic;
SIGNAL \B[47]~input_o\ : std_logic;
SIGNAL \A[47]~input_o\ : std_logic;
SIGNAL \c~56_combout\ : std_logic;
SIGNAL \c~79_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gpre[46]~21_combout\ : std_logic;
SIGNAL \S~61_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:pPair[2]~2_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|gPair~2_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:pPair[2]~4_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:pPair[2]~3_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:Inner|Gpre~0_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:gPair[23]~0_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:Inner|gPair~4_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:gPair[2]~0_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:gPair[2]~combout\ : std_logic;
SIGNAL \B[48]~input_o\ : std_logic;
SIGNAL \A[48]~input_o\ : std_logic;
SIGNAL \c~57_combout\ : std_logic;
SIGNAL \S~62_combout\ : std_logic;
SIGNAL \A[49]~input_o\ : std_logic;
SIGNAL \B[49]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gpre[48]~22_combout\ : std_logic;
SIGNAL \S~63_combout\ : std_logic;
SIGNAL \A[50]~input_o\ : std_logic;
SIGNAL \B[50]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Recur:gPair[24]~0_combout\ : std_logic;
SIGNAL \c[50]~58_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Gpre~13_combout\ : std_logic;
SIGNAL \S~80_combout\ : std_logic;
SIGNAL \B[51]~input_o\ : std_logic;
SIGNAL \A[51]~input_o\ : std_logic;
SIGNAL \c~59_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gpre[50]~23_combout\ : std_logic;
SIGNAL \S~81_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:pPair[12]~0_combout\ : std_logic;
SIGNAL \c~60_combout\ : std_logic;
SIGNAL \B[52]~input_o\ : std_logic;
SIGNAL \A[52]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Recur:gPair[25]~0_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:gPair[12]~combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~5_combout\ : std_logic;
SIGNAL \S~64_combout\ : std_logic;
SIGNAL \A[53]~input_o\ : std_logic;
SIGNAL \B[53]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gpre[52]~24_combout\ : std_logic;
SIGNAL \S~65_combout\ : std_logic;
SIGNAL \B[54]~input_o\ : std_logic;
SIGNAL \A[54]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Gpre~14_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:gPair[26]~0_combout\ : std_logic;
SIGNAL \c[54]~61_combout\ : std_logic;
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
SIGNAL \A[57]~input_o\ : std_logic;
SIGNAL \B[57]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gpre[56]~26_combout\ : std_logic;
SIGNAL \S~69_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:gPair[28]~0_combout\ : std_logic;
SIGNAL \c[58]~64_combout\ : std_logic;
SIGNAL \A[58]~input_o\ : std_logic;
SIGNAL \B[58]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Gpre~15_combout\ : std_logic;
SIGNAL \S~82_combout\ : std_logic;
SIGNAL \c~80_combout\ : std_logic;
SIGNAL \B[59]~input_o\ : std_logic;
SIGNAL \A[59]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gpre[58]~27_combout\ : std_logic;
SIGNAL \S~70_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:gPair[29]~0_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:gPair[14]~combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:pPair[14]~0_combout\ : std_logic;
SIGNAL \c~65_combout\ : std_logic;
SIGNAL \A[60]~input_o\ : std_logic;
SIGNAL \B[60]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~6_combout\ : std_logic;
SIGNAL \S~71_combout\ : std_logic;
SIGNAL \A[61]~input_o\ : std_logic;
SIGNAL \B[61]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gpre[60]~28_combout\ : std_logic;
SIGNAL \S~72_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:gPair[30]~0_combout\ : std_logic;
SIGNAL \c[62]~66_combout\ : std_logic;
SIGNAL \B[62]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Gpre~16_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Gpre~17_combout\ : std_logic;
SIGNAL \A[62]~input_o\ : std_logic;
SIGNAL \S~83_combout\ : std_logic;
SIGNAL \A[63]~input_o\ : std_logic;
SIGNAL \B[63]~input_o\ : std_logic;
SIGNAL \c~67_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gpre[62]~29_combout\ : std_logic;
SIGNAL \S~73_combout\ : std_logic;
SIGNAL \c~69_combout\ : std_logic;
SIGNAL \c~70_combout\ : std_logic;
SIGNAL \c~71_combout\ : std_logic;
SIGNAL \c~72_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:gPair[31]~0_combout\ : std_logic;
SIGNAL \c~68_combout\ : std_logic;
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

-- Location: IOOBUF_X107_Y73_N16
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

-- Location: IOOBUF_X105_Y73_N2
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

-- Location: IOOBUF_X105_Y73_N9
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

-- Location: IOOBUF_X107_Y73_N2
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

-- Location: IOOBUF_X109_Y73_N2
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

-- Location: IOOBUF_X109_Y73_N9
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

-- Location: IOOBUF_X111_Y73_N2
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

-- Location: IOOBUF_X113_Y73_N2
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

-- Location: IOOBUF_X115_Y36_N2
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

-- Location: IOOBUF_X115_Y65_N16
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

-- Location: IOOBUF_X115_Y68_N23
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

-- Location: IOOBUF_X115_Y68_N16
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

-- Location: IOOBUF_X115_Y66_N23
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

-- Location: IOOBUF_X115_Y55_N16
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

-- Location: IOOBUF_X115_Y56_N23
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

-- Location: IOOBUF_X115_Y66_N16
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

-- Location: IOOBUF_X115_Y69_N23
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

-- Location: IOOBUF_X115_Y56_N16
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

-- Location: IOOBUF_X115_Y57_N16
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

-- Location: IOOBUF_X115_Y58_N16
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

-- Location: IOOBUF_X113_Y73_N9
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

-- Location: IOOBUF_X115_Y69_N16
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

-- Location: IOOBUF_X115_Y69_N2
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

-- Location: IOOBUF_X115_Y57_N23
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

-- Location: IOOBUF_X107_Y0_N2
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

-- Location: IOOBUF_X115_Y19_N9
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

-- Location: IOOBUF_X115_Y8_N23
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

-- Location: IOOBUF_X115_Y16_N9
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

-- Location: IOOBUF_X105_Y0_N2
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

-- Location: IOOBUF_X115_Y8_N16
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

-- Location: IOOBUF_X115_Y16_N2
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

-- Location: IOOBUF_X115_Y20_N2
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

-- Location: IOOBUF_X115_Y33_N9
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

-- Location: IOOBUF_X115_Y31_N2
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

-- Location: IOOBUF_X100_Y0_N23
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

-- Location: IOOBUF_X105_Y0_N23
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

-- Location: IOOBUF_X102_Y0_N23
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

-- Location: IOOBUF_X105_Y0_N9
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

-- Location: IOOBUF_X102_Y0_N16
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

-- Location: IOOBUF_X105_Y0_N16
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

-- Location: IOOBUF_X96_Y0_N2
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

-- Location: IOOBUF_X94_Y0_N9
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

-- Location: IOOBUF_X96_Y0_N9
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

-- Location: IOOBUF_X89_Y0_N9
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

-- Location: IOOBUF_X83_Y0_N16
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

-- Location: IOOBUF_X79_Y0_N9
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

-- Location: IOOBUF_X79_Y0_N2
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

-- Location: IOOBUF_X83_Y0_N9
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

-- Location: IOOBUF_X115_Y18_N2
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

-- Location: IOOBUF_X94_Y0_N2
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

-- Location: IOOBUF_X83_Y0_N2
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

-- Location: IOOBUF_X89_Y0_N2
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

-- Location: IOOBUF_X115_Y10_N9
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

-- Location: IOOBUF_X115_Y17_N9
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

-- Location: IOOBUF_X115_Y10_N2
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

-- Location: IOOBUF_X115_Y14_N9
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

-- Location: IOOBUF_X115_Y23_N9
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

-- Location: IOOBUF_X115_Y22_N23
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

-- Location: IOOBUF_X115_Y22_N16
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

-- Location: IOOBUF_X115_Y23_N2
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

-- Location: IOOBUF_X115_Y26_N23
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

-- Location: IOOBUF_X115_Y25_N16
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

-- Location: IOOBUF_X115_Y25_N23
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

-- Location: IOOBUF_X115_Y27_N2
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

-- Location: IOOBUF_X115_Y29_N9
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

-- Location: IOOBUF_X115_Y29_N2
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

-- Location: IOIBUF_X115_Y35_N15
\A[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X115_Y34_N22
\Cin~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cin,
	o => \Cin~input_o\);

-- Location: IOIBUF_X115_Y34_N15
\B[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: LCCOMB_X114_Y32_N12
\S~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~20_combout\ = \A[0]~input_o\ $ (\Cin~input_o\ $ (\B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datac => \Cin~input_o\,
	datad => \B[0]~input_o\,
	combout => \S~20_combout\);

-- Location: IOIBUF_X115_Y33_N1
\B[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: IOIBUF_X115_Y32_N1
\A[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: LCCOMB_X114_Y32_N14
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

-- Location: LCCOMB_X114_Y32_N4
\S~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~21_combout\ = p(1) $ (((\Cin~input_o\ & ((\A[0]~input_o\) # (\B[0]~input_o\))) # (!\Cin~input_o\ & (\A[0]~input_o\ & \B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cin~input_o\,
	datab => p(1),
	datac => \A[0]~input_o\,
	datad => \B[0]~input_o\,
	combout => \S~21_combout\);

-- Location: LCCOMB_X114_Y32_N26
\c~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \c~28_combout\ = (\A[0]~input_o\ & (!\B[0]~input_o\ & (\A[1]~input_o\ $ (\B[1]~input_o\)))) # (!\A[0]~input_o\ & (\B[0]~input_o\ & (\A[1]~input_o\ $ (\B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \A[1]~input_o\,
	datac => \B[1]~input_o\,
	datad => \B[0]~input_o\,
	combout => \c~28_combout\);

-- Location: LCCOMB_X114_Y32_N0
\PrefixNetwork|Recur:gPair[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:gPair[0]~0_combout\ = (\A[1]~input_o\ & ((\B[1]~input_o\) # ((\A[0]~input_o\ & \B[0]~input_o\)))) # (!\A[1]~input_o\ & (\A[0]~input_o\ & (\B[1]~input_o\ & \B[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \A[1]~input_o\,
	datac => \B[1]~input_o\,
	datad => \B[0]~input_o\,
	combout => \PrefixNetwork|Recur:gPair[0]~0_combout\);

-- Location: IOIBUF_X115_Y36_N15
\A[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: IOIBUF_X115_Y35_N22
\B[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: LCCOMB_X114_Y32_N18
\p[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(2) = \A[2]~input_o\ $ (\B[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[2]~input_o\,
	datad => \B[2]~input_o\,
	combout => p(2));

-- Location: LCCOMB_X114_Y32_N8
\S~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~22_combout\ = p(2) $ (((\PrefixNetwork|Recur:gPair[0]~0_combout\) # ((\c~28_combout\ & \Cin~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c~28_combout\,
	datab => \PrefixNetwork|Recur:gPair[0]~0_combout\,
	datac => \Cin~input_o\,
	datad => p(2),
	combout => \S~22_combout\);

-- Location: LCCOMB_X114_Y32_N30
\c~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \c~29_combout\ = (\c~28_combout\ & (\Cin~input_o\ & (\A[2]~input_o\ $ (\B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c~28_combout\,
	datab => \A[2]~input_o\,
	datac => \Cin~input_o\,
	datad => \B[2]~input_o\,
	combout => \c~29_combout\);

-- Location: IOIBUF_X115_Y32_N8
\A[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: IOIBUF_X115_Y36_N8
\B[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: LCCOMB_X114_Y32_N16
\c[3]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[3]~30_combout\ = (\A[2]~input_o\ & ((\B[2]~input_o\) # (\PrefixNetwork|Recur:gPair[0]~0_combout\))) # (!\A[2]~input_o\ & (\B[2]~input_o\ & \PrefixNetwork|Recur:gPair[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[2]~input_o\,
	datac => \B[2]~input_o\,
	datad => \PrefixNetwork|Recur:gPair[0]~0_combout\,
	combout => \c[3]~30_combout\);

-- Location: LCCOMB_X114_Y32_N6
\S~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~23_combout\ = \A[3]~input_o\ $ (\B[3]~input_o\ $ (((\c~29_combout\) # (\c[3]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c~29_combout\,
	datab => \A[3]~input_o\,
	datac => \B[3]~input_o\,
	datad => \c[3]~30_combout\,
	combout => \S~23_combout\);

-- Location: LCCOMB_X114_Y32_N24
\PrefixNetwork|Recur:gPair[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:gPair[1]~0_combout\ = (\A[3]~input_o\ & ((\B[3]~input_o\) # ((\A[2]~input_o\ & \B[2]~input_o\)))) # (!\A[3]~input_o\ & (\A[2]~input_o\ & (\B[3]~input_o\ & \B[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \A[2]~input_o\,
	datac => \B[3]~input_o\,
	datad => \B[2]~input_o\,
	combout => \PrefixNetwork|Recur:gPair[1]~0_combout\);

-- Location: IOIBUF_X115_Y45_N22
\A[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: IOIBUF_X115_Y42_N15
\B[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: LCCOMB_X114_Y41_N4
\p[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(4) = \A[4]~input_o\ $ (\B[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[4]~input_o\,
	datad => \B[4]~input_o\,
	combout => p(4));

-- Location: LCCOMB_X114_Y32_N22
\PrefixNetwork|Recur:Inner|gPair~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|gPair~0_combout\ = (\A[3]~input_o\ & (!\B[3]~input_o\ & (\A[2]~input_o\ $ (\B[2]~input_o\)))) # (!\A[3]~input_o\ & (\B[3]~input_o\ & (\A[2]~input_o\ $ (\B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \A[2]~input_o\,
	datac => \B[3]~input_o\,
	datad => \B[2]~input_o\,
	combout => \PrefixNetwork|Recur:Inner|gPair~0_combout\);

-- Location: LCCOMB_X114_Y32_N10
\c~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \c~31_combout\ = (\c~28_combout\ & (\Cin~input_o\ & \PrefixNetwork|Recur:Inner|gPair~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c~28_combout\,
	datac => \Cin~input_o\,
	datad => \PrefixNetwork|Recur:Inner|gPair~0_combout\,
	combout => \c~31_combout\);

-- Location: LCCOMB_X114_Y32_N28
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

-- Location: LCCOMB_X114_Y41_N26
\S~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~24_combout\ = p(4) $ (((\PrefixNetwork|Recur:gPair[1]~0_combout\) # ((\c~31_combout\) # (\PrefixNetwork|Recur:Inner|gPair~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Recur:gPair[1]~0_combout\,
	datab => p(4),
	datac => \c~31_combout\,
	datad => \PrefixNetwork|Recur:Inner|gPair~1_combout\,
	combout => \S~24_combout\);

-- Location: IOIBUF_X115_Y44_N8
\B[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: IOIBUF_X115_Y44_N1
\A[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: LCCOMB_X114_Y41_N18
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

-- Location: LCCOMB_X114_Y41_N28
\PrefixNetwork|Gpre[4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gpre[4]~0_combout\ = (\B[4]~input_o\ & ((\PrefixNetwork|Recur:gPair[1]~0_combout\) # ((\A[4]~input_o\) # (\PrefixNetwork|Recur:Inner|gPair~1_combout\)))) # (!\B[4]~input_o\ & (\A[4]~input_o\ & ((\PrefixNetwork|Recur:gPair[1]~0_combout\) # 
-- (\PrefixNetwork|Recur:Inner|gPair~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Recur:gPair[1]~0_combout\,
	datab => \B[4]~input_o\,
	datac => \A[4]~input_o\,
	datad => \PrefixNetwork|Recur:Inner|gPair~1_combout\,
	combout => \PrefixNetwork|Gpre[4]~0_combout\);

-- Location: LCCOMB_X114_Y41_N0
\S~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~25_combout\ = p(5) $ (((\PrefixNetwork|Gpre[4]~0_combout\) # ((p(4) & \c~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(5),
	datab => p(4),
	datac => \c~31_combout\,
	datad => \PrefixNetwork|Gpre[4]~0_combout\,
	combout => \S~25_combout\);

-- Location: LCCOMB_X114_Y41_N10
\PrefixNetwork|Recur:gPair[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:gPair[2]~0_combout\ = (\B[5]~input_o\ & ((\A[5]~input_o\) # ((\A[4]~input_o\ & \B[4]~input_o\)))) # (!\B[5]~input_o\ & (\A[4]~input_o\ & (\B[4]~input_o\ & \A[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datab => \B[4]~input_o\,
	datac => \B[5]~input_o\,
	datad => \A[5]~input_o\,
	combout => \PrefixNetwork|Recur:gPair[2]~0_combout\);

-- Location: LCCOMB_X114_Y41_N14
\c~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \c~74_combout\ = (p(5) & (\c~31_combout\ & (\B[4]~input_o\ $ (\A[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(5),
	datab => \B[4]~input_o\,
	datac => \c~31_combout\,
	datad => \A[4]~input_o\,
	combout => \c~74_combout\);

-- Location: IOIBUF_X115_Y41_N1
\A[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: IOIBUF_X115_Y40_N1
\B[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: LCCOMB_X114_Y41_N6
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

-- Location: LCCOMB_X114_Y41_N20
\PrefixNetwork|Recur:Inner|Gpre~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Gpre~0_combout\ = (p(5) & (p(4) & ((\PrefixNetwork|Recur:gPair[1]~0_combout\) # (\PrefixNetwork|Recur:Inner|gPair~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(5),
	datab => p(4),
	datac => \PrefixNetwork|Recur:gPair[1]~0_combout\,
	datad => \PrefixNetwork|Recur:Inner|gPair~1_combout\,
	combout => \PrefixNetwork|Recur:Inner|Gpre~0_combout\);

-- Location: LCCOMB_X114_Y41_N16
\S~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~26_combout\ = p(6) $ (((\PrefixNetwork|Recur:gPair[2]~0_combout\) # ((\c~74_combout\) # (\PrefixNetwork|Recur:Inner|Gpre~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Recur:gPair[2]~0_combout\,
	datab => \c~74_combout\,
	datac => p(6),
	datad => \PrefixNetwork|Recur:Inner|Gpre~0_combout\,
	combout => \S~26_combout\);

-- Location: IOIBUF_X115_Y41_N8
\A[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: IOIBUF_X115_Y40_N8
\B[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: LCCOMB_X114_Y41_N8
\p[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(7) = \A[7]~input_o\ $ (\B[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[7]~input_o\,
	datad => \B[7]~input_o\,
	combout => p(7));

-- Location: LCCOMB_X114_Y41_N2
\PrefixNetwork|Gpre[6]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gpre[6]~1_combout\ = (\B[6]~input_o\ & ((\PrefixNetwork|Recur:Inner|Gpre~0_combout\) # ((\A[6]~input_o\) # (\PrefixNetwork|Recur:gPair[2]~0_combout\)))) # (!\B[6]~input_o\ & (\A[6]~input_o\ & ((\PrefixNetwork|Recur:Inner|Gpre~0_combout\) # 
-- (\PrefixNetwork|Recur:gPair[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[6]~input_o\,
	datab => \PrefixNetwork|Recur:Inner|Gpre~0_combout\,
	datac => \A[6]~input_o\,
	datad => \PrefixNetwork|Recur:gPair[2]~0_combout\,
	combout => \PrefixNetwork|Gpre[6]~1_combout\);

-- Location: LCCOMB_X114_Y41_N22
\S~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~27_combout\ = p(7) $ (((\PrefixNetwork|Gpre[6]~1_combout\) # ((p(6) & \c~74_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(7),
	datab => p(6),
	datac => \c~74_combout\,
	datad => \PrefixNetwork|Gpre[6]~1_combout\,
	combout => \S~27_combout\);

-- Location: IOIBUF_X115_Y62_N8
\B[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

-- Location: IOIBUF_X115_Y46_N8
\A[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: LCCOMB_X114_Y41_N24
\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[0]~0_combout\ = (p(6) & (p(4) & (p(7) & p(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(6),
	datab => p(4),
	datac => p(7),
	datad => p(5),
	combout => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[0]~0_combout\);

-- Location: LCCOMB_X113_Y18_N16
\c~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \c~32_combout\ = (\Cin~input_o\ & (\c~28_combout\ & (\PrefixNetwork|Recur:Inner|gPair~0_combout\ & \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cin~input_o\,
	datab => \c~28_combout\,
	datac => \PrefixNetwork|Recur:Inner|gPair~0_combout\,
	datad => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[0]~0_combout\,
	combout => \c~32_combout\);

-- Location: LCCOMB_X114_Y41_N30
\PrefixNetwork|Recur:gPair[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:gPair[3]~0_combout\ = (\A[7]~input_o\ & ((\B[7]~input_o\) # ((\B[6]~input_o\ & \A[6]~input_o\)))) # (!\A[7]~input_o\ & (\B[6]~input_o\ & (\A[6]~input_o\ & \B[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[6]~input_o\,
	datab => \A[6]~input_o\,
	datac => \A[7]~input_o\,
	datad => \B[7]~input_o\,
	combout => \PrefixNetwork|Recur:gPair[3]~0_combout\);

-- Location: LCCOMB_X114_Y41_N12
\PrefixNetwork|Recur:Inner|Recur:gPair[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Recur:gPair[1]~combout\ = (\PrefixNetwork|Recur:gPair[3]~0_combout\) # ((p(6) & (p(7) & \PrefixNetwork|Recur:gPair[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(6),
	datab => p(7),
	datac => \PrefixNetwork|Recur:gPair[3]~0_combout\,
	datad => \PrefixNetwork|Recur:gPair[2]~0_combout\,
	combout => \PrefixNetwork|Recur:Inner|Recur:gPair[1]~combout\);

-- Location: LCCOMB_X113_Y18_N30
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

-- Location: LCCOMB_X114_Y46_N28
\S~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~28_combout\ = \B[8]~input_o\ $ (\A[8]~input_o\ $ (((\c~32_combout\) # (!\c[8]~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[8]~input_o\,
	datab => \A[8]~input_o\,
	datac => \c~32_combout\,
	datad => \c[8]~33_combout\,
	combout => \S~28_combout\);

-- Location: LCCOMB_X113_Y48_N0
\c~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \c~34_combout\ = (\c~31_combout\ & (\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[0]~0_combout\ & (\B[8]~input_o\ $ (\A[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[8]~input_o\,
	datab => \A[8]~input_o\,
	datac => \c~31_combout\,
	datad => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[0]~0_combout\,
	combout => \c~34_combout\);

-- Location: IOIBUF_X115_Y62_N22
\B[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(9),
	o => \B[9]~input_o\);

-- Location: IOIBUF_X115_Y62_N15
\A[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

-- Location: LCCOMB_X114_Y32_N20
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

-- Location: LCCOMB_X114_Y44_N28
\PrefixNetwork|Gpre[8]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gpre[8]~2_combout\ = (\B[8]~input_o\ & ((\A[8]~input_o\) # ((\PrefixNetwork|Recur:Inner|Recur:gPair[1]~combout\) # (\PrefixNetwork|Recur:Inner|Recur:Inner|gPair~0_combout\)))) # (!\B[8]~input_o\ & (\A[8]~input_o\ & 
-- ((\PrefixNetwork|Recur:Inner|Recur:gPair[1]~combout\) # (\PrefixNetwork|Recur:Inner|Recur:Inner|gPair~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[8]~input_o\,
	datab => \A[8]~input_o\,
	datac => \PrefixNetwork|Recur:Inner|Recur:gPair[1]~combout\,
	datad => \PrefixNetwork|Recur:Inner|Recur:Inner|gPair~0_combout\,
	combout => \PrefixNetwork|Gpre[8]~2_combout\);

-- Location: LCCOMB_X114_Y44_N2
\S~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~29_combout\ = \B[9]~input_o\ $ (\A[9]~input_o\ $ (((\c~34_combout\) # (\PrefixNetwork|Gpre[8]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c~34_combout\,
	datab => \B[9]~input_o\,
	datac => \A[9]~input_o\,
	datad => \PrefixNetwork|Gpre[8]~2_combout\,
	combout => \S~29_combout\);

-- Location: IOIBUF_X115_Y48_N1
\A[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

-- Location: IOIBUF_X115_Y59_N15
\B[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(10),
	o => \B[10]~input_o\);

-- Location: LCCOMB_X113_Y48_N26
\p[10]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(10) = \A[10]~input_o\ $ (\B[10]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[10]~input_o\,
	datad => \B[10]~input_o\,
	combout => p(10));

-- Location: LCCOMB_X113_Y48_N14
\PrefixNetwork|Recur:Inner|Recur:pPair[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Recur:pPair[2]~0_combout\ = (\B[8]~input_o\ & (!\A[8]~input_o\ & (\A[9]~input_o\ $ (\B[9]~input_o\)))) # (!\B[8]~input_o\ & (\A[8]~input_o\ & (\A[9]~input_o\ $ (\B[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[8]~input_o\,
	datab => \A[8]~input_o\,
	datac => \A[9]~input_o\,
	datad => \B[9]~input_o\,
	combout => \PrefixNetwork|Recur:Inner|Recur:pPair[2]~0_combout\);

-- Location: LCCOMB_X113_Y48_N28
\PrefixNetwork|Recur:Inner|Gpre~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Gpre~1_combout\ = (\PrefixNetwork|Recur:Inner|Recur:pPair[2]~0_combout\ & ((\PrefixNetwork|Recur:Inner|Recur:Inner|gPair~0_combout\) # (\PrefixNetwork|Recur:Inner|Recur:gPair[1]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Recur:Inner|Recur:Inner|gPair~0_combout\,
	datab => \PrefixNetwork|Recur:Inner|Recur:gPair[1]~combout\,
	datac => \PrefixNetwork|Recur:Inner|Recur:pPair[2]~0_combout\,
	combout => \PrefixNetwork|Recur:Inner|Gpre~1_combout\);

-- Location: LCCOMB_X113_Y48_N8
\c~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \c~35_combout\ = (\c~34_combout\ & (\A[9]~input_o\ $ (\B[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[9]~input_o\,
	datab => \B[9]~input_o\,
	datad => \c~34_combout\,
	combout => \c~35_combout\);

-- Location: LCCOMB_X113_Y48_N6
\PrefixNetwork|Recur:gPair[4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:gPair[4]~0_combout\ = (\A[9]~input_o\ & ((\B[9]~input_o\) # ((\B[8]~input_o\ & \A[8]~input_o\)))) # (!\A[9]~input_o\ & (\B[8]~input_o\ & (\A[8]~input_o\ & \B[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[8]~input_o\,
	datab => \A[8]~input_o\,
	datac => \A[9]~input_o\,
	datad => \B[9]~input_o\,
	combout => \PrefixNetwork|Recur:gPair[4]~0_combout\);

-- Location: LCCOMB_X113_Y48_N16
\S~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~30_combout\ = p(10) $ (((\PrefixNetwork|Recur:Inner|Gpre~1_combout\) # ((\c~35_combout\) # (\PrefixNetwork|Recur:gPair[4]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(10),
	datab => \PrefixNetwork|Recur:Inner|Gpre~1_combout\,
	datac => \c~35_combout\,
	datad => \PrefixNetwork|Recur:gPair[4]~0_combout\,
	combout => \S~30_combout\);

-- Location: IOIBUF_X115_Y54_N15
\A[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(11),
	o => \A[11]~input_o\);

-- Location: IOIBUF_X115_Y59_N22
\B[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(11),
	o => \B[11]~input_o\);

-- Location: LCCOMB_X113_Y48_N4
\p[11]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(11) = \A[11]~input_o\ $ (\B[11]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[11]~input_o\,
	datad => \B[11]~input_o\,
	combout => p(11));

-- Location: LCCOMB_X113_Y48_N10
\PrefixNetwork|Gpre[10]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gpre[10]~3_combout\ = (\A[10]~input_o\ & ((\PrefixNetwork|Recur:gPair[4]~0_combout\) # ((\B[10]~input_o\) # (\PrefixNetwork|Recur:Inner|Gpre~1_combout\)))) # (!\A[10]~input_o\ & (\B[10]~input_o\ & ((\PrefixNetwork|Recur:gPair[4]~0_combout\) 
-- # (\PrefixNetwork|Recur:Inner|Gpre~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Recur:gPair[4]~0_combout\,
	datab => \A[10]~input_o\,
	datac => \B[10]~input_o\,
	datad => \PrefixNetwork|Recur:Inner|Gpre~1_combout\,
	combout => \PrefixNetwork|Gpre[10]~3_combout\);

-- Location: LCCOMB_X113_Y48_N2
\S~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~31_combout\ = p(11) $ (((\PrefixNetwork|Gpre[10]~3_combout\) # ((p(10) & \c~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(10),
	datab => \c~35_combout\,
	datac => p(11),
	datad => \PrefixNetwork|Gpre[10]~3_combout\,
	combout => \S~31_combout\);

-- Location: LCCOMB_X113_Y48_N20
\PrefixNetwork|Recur:gPair[5]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:gPair[5]~0_combout\ = (\A[11]~input_o\ & ((\B[11]~input_o\) # ((\A[10]~input_o\ & \B[10]~input_o\)))) # (!\A[11]~input_o\ & (\A[10]~input_o\ & (\B[10]~input_o\ & \B[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[10]~input_o\,
	datab => \A[11]~input_o\,
	datac => \B[10]~input_o\,
	datad => \B[11]~input_o\,
	combout => \PrefixNetwork|Recur:gPair[5]~0_combout\);

-- Location: LCCOMB_X113_Y48_N30
\PrefixNetwork|Recur:Inner|Recur:gPair[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Recur:gPair[2]~combout\ = (\PrefixNetwork|Recur:gPair[5]~0_combout\) # ((p(10) & (p(11) & \PrefixNetwork|Recur:gPair[4]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(10),
	datab => \PrefixNetwork|Recur:gPair[5]~0_combout\,
	datac => p(11),
	datad => \PrefixNetwork|Recur:gPair[4]~0_combout\,
	combout => \PrefixNetwork|Recur:Inner|Recur:gPair[2]~combout\);

-- Location: IOIBUF_X115_Y52_N1
\B[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(12),
	o => \B[12]~input_o\);

-- Location: IOIBUF_X115_Y45_N15
\A[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(12),
	o => \A[12]~input_o\);

-- Location: LCCOMB_X114_Y48_N20
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

-- Location: LCCOMB_X113_Y48_N22
\c~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \c~36_combout\ = (p(10) & (\PrefixNetwork|Recur:Inner|Recur:pPair[2]~0_combout\ & (\c~32_combout\ & p(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(10),
	datab => \PrefixNetwork|Recur:Inner|Recur:pPair[2]~0_combout\,
	datac => \c~32_combout\,
	datad => p(11),
	combout => \c~36_combout\);

-- Location: LCCOMB_X113_Y48_N24
\PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~0_combout\ = (p(10) & (\PrefixNetwork|Recur:Inner|Recur:pPair[2]~0_combout\ & (p(11) & !\c[8]~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(10),
	datab => \PrefixNetwork|Recur:Inner|Recur:pPair[2]~0_combout\,
	datac => p(11),
	datad => \c[8]~33_combout\,
	combout => \PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~0_combout\);

-- Location: LCCOMB_X113_Y48_N12
\S~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~32_combout\ = p(12) $ (((\PrefixNetwork|Recur:Inner|Recur:gPair[2]~combout\) # ((\c~36_combout\) # (\PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Recur:Inner|Recur:gPair[2]~combout\,
	datab => p(12),
	datac => \c~36_combout\,
	datad => \PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~0_combout\,
	combout => \S~32_combout\);

-- Location: IOIBUF_X115_Y52_N8
\B[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(13),
	o => \B[13]~input_o\);

-- Location: IOIBUF_X115_Y64_N1
\A[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(13),
	o => \A[13]~input_o\);

-- Location: LCCOMB_X114_Y48_N4
\p[13]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(13) = \B[13]~input_o\ $ (\A[13]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[13]~input_o\,
	datad => \A[13]~input_o\,
	combout => p(13));

-- Location: LCCOMB_X114_Y48_N14
\PrefixNetwork|Gpre[12]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gpre[12]~4_combout\ = (\A[12]~input_o\ & ((\PrefixNetwork|Recur:Inner|Recur:gPair[2]~combout\) # ((\B[12]~input_o\) # (\PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~0_combout\)))) # (!\A[12]~input_o\ & (\B[12]~input_o\ & 
-- ((\PrefixNetwork|Recur:Inner|Recur:gPair[2]~combout\) # (\PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[12]~input_o\,
	datab => \PrefixNetwork|Recur:Inner|Recur:gPair[2]~combout\,
	datac => \B[12]~input_o\,
	datad => \PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~0_combout\,
	combout => \PrefixNetwork|Gpre[12]~4_combout\);

-- Location: LCCOMB_X114_Y48_N10
\S~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~33_combout\ = p(13) $ (((\PrefixNetwork|Gpre[12]~4_combout\) # ((p(12) & \c~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(13),
	datab => p(12),
	datac => \PrefixNetwork|Gpre[12]~4_combout\,
	datad => \c~36_combout\,
	combout => \S~33_combout\);

-- Location: LCCOMB_X114_Y48_N8
\PrefixNetwork|Recur:gPair[6]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:gPair[6]~0_combout\ = (\B[13]~input_o\ & ((\A[13]~input_o\) # ((\A[12]~input_o\ & \B[12]~input_o\)))) # (!\B[13]~input_o\ & (\A[12]~input_o\ & (\B[12]~input_o\ & \A[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[12]~input_o\,
	datab => \B[12]~input_o\,
	datac => \B[13]~input_o\,
	datad => \A[13]~input_o\,
	combout => \PrefixNetwork|Recur:gPair[6]~0_combout\);

-- Location: IOIBUF_X115_Y64_N8
\B[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(14),
	o => \B[14]~input_o\);

-- Location: IOIBUF_X115_Y51_N8
\A[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(14),
	o => \A[14]~input_o\);

-- Location: LCCOMB_X114_Y48_N0
\p[14]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(14) = \B[14]~input_o\ $ (\A[14]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[14]~input_o\,
	datad => \A[14]~input_o\,
	combout => p(14));

-- Location: LCCOMB_X114_Y48_N30
\c~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \c~75_combout\ = (p(13) & (\c~36_combout\ & (\A[12]~input_o\ $ (\B[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[12]~input_o\,
	datab => \B[12]~input_o\,
	datac => p(13),
	datad => \c~36_combout\,
	combout => \c~75_combout\);

-- Location: LCCOMB_X114_Y48_N6
\PrefixNetwork|Recur:Inner|Gpre~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Gpre~2_combout\ = (p(12) & (p(13) & ((\PrefixNetwork|Recur:Inner|Recur:gPair[2]~combout\) # (\PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Recur:Inner|Recur:gPair[2]~combout\,
	datab => p(12),
	datac => p(13),
	datad => \PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~0_combout\,
	combout => \PrefixNetwork|Recur:Inner|Gpre~2_combout\);

-- Location: LCCOMB_X114_Y48_N18
\S~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~34_combout\ = p(14) $ (((\PrefixNetwork|Recur:gPair[6]~0_combout\) # ((\c~75_combout\) # (\PrefixNetwork|Recur:Inner|Gpre~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Recur:gPair[6]~0_combout\,
	datab => p(14),
	datac => \c~75_combout\,
	datad => \PrefixNetwork|Recur:Inner|Gpre~2_combout\,
	combout => \S~34_combout\);

-- Location: IOIBUF_X115_Y49_N1
\B[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(15),
	o => \B[15]~input_o\);

-- Location: IOIBUF_X115_Y48_N8
\A[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(15),
	o => \A[15]~input_o\);

-- Location: LCCOMB_X114_Y48_N22
\p[15]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(15) = \B[15]~input_o\ $ (\A[15]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[15]~input_o\,
	datad => \A[15]~input_o\,
	combout => p(15));

-- Location: LCCOMB_X114_Y48_N28
\PrefixNetwork|Gpre[14]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gpre[14]~5_combout\ = (\A[14]~input_o\ & ((\B[14]~input_o\) # ((\PrefixNetwork|Recur:gPair[6]~0_combout\) # (\PrefixNetwork|Recur:Inner|Gpre~2_combout\)))) # (!\A[14]~input_o\ & (\B[14]~input_o\ & ((\PrefixNetwork|Recur:gPair[6]~0_combout\) 
-- # (\PrefixNetwork|Recur:Inner|Gpre~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[14]~input_o\,
	datab => \B[14]~input_o\,
	datac => \PrefixNetwork|Recur:gPair[6]~0_combout\,
	datad => \PrefixNetwork|Recur:Inner|Gpre~2_combout\,
	combout => \PrefixNetwork|Gpre[14]~5_combout\);

-- Location: LCCOMB_X114_Y48_N12
\S~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~35_combout\ = p(15) $ (((\PrefixNetwork|Gpre[14]~5_combout\) # ((p(14) & \c~75_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(15),
	datab => p(14),
	datac => \c~75_combout\,
	datad => \PrefixNetwork|Gpre[14]~5_combout\,
	combout => \S~35_combout\);

-- Location: LCCOMB_X114_Y48_N2
\PrefixNetwork|Recur:Inner|Recur:Inner|gPair~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Recur:Inner|gPair~1_combout\ = (p(15) & (p(12) & (p(13) & p(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(15),
	datab => p(12),
	datac => p(13),
	datad => p(14),
	combout => \PrefixNetwork|Recur:Inner|Recur:Inner|gPair~1_combout\);

-- Location: LCCOMB_X114_Y48_N16
\PrefixNetwork|Recur:gPair[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:gPair[7]~0_combout\ = (\A[15]~input_o\ & ((\B[15]~input_o\) # ((\A[14]~input_o\ & \B[14]~input_o\)))) # (!\A[15]~input_o\ & (\B[15]~input_o\ & (\A[14]~input_o\ & \B[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[15]~input_o\,
	datab => \B[15]~input_o\,
	datac => \A[14]~input_o\,
	datad => \B[14]~input_o\,
	combout => \PrefixNetwork|Recur:gPair[7]~0_combout\);

-- Location: LCCOMB_X114_Y48_N26
\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[1]~0_combout\ = (\PrefixNetwork|Recur:gPair[7]~0_combout\) # ((p(15) & (p(14) & \PrefixNetwork|Recur:gPair[6]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(15),
	datab => p(14),
	datac => \PrefixNetwork|Recur:gPair[6]~0_combout\,
	datad => \PrefixNetwork|Recur:gPair[7]~0_combout\,
	combout => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[1]~0_combout\);

-- Location: LCCOMB_X114_Y48_N24
\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[1]~combout\ = (\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[1]~0_combout\) # ((\PrefixNetwork|Recur:Inner|Recur:Inner|gPair~1_combout\ & \PrefixNetwork|Recur:Inner|Recur:gPair[2]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PrefixNetwork|Recur:Inner|Recur:Inner|gPair~1_combout\,
	datac => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[1]~0_combout\,
	datad => \PrefixNetwork|Recur:Inner|Recur:gPair[2]~combout\,
	combout => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[1]~combout\);

-- Location: IOIBUF_X115_Y51_N1
\B[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(16),
	o => \B[16]~input_o\);

-- Location: IOIBUF_X115_Y50_N8
\A[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(16),
	o => \A[16]~input_o\);

-- Location: LCCOMB_X114_Y47_N24
\p[16]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(16) = \B[16]~input_o\ $ (\A[16]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[16]~input_o\,
	datad => \A[16]~input_o\,
	combout => p(16));

-- Location: LCCOMB_X113_Y48_N18
\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[1]~0_combout\ = (p(10) & (\PrefixNetwork|Recur:Inner|Recur:pPair[2]~0_combout\ & (p(11) & \PrefixNetwork|Recur:Inner|Recur:Inner|gPair~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(10),
	datab => \PrefixNetwork|Recur:Inner|Recur:pPair[2]~0_combout\,
	datac => p(11),
	datad => \PrefixNetwork|Recur:Inner|Recur:Inner|gPair~1_combout\,
	combout => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[1]~0_combout\);

-- Location: LCCOMB_X114_Y29_N8
\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|gPair~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|gPair~0_combout\ = (\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[1]~0_combout\ & ((\PrefixNetwork|Recur:Inner|Recur:gPair[1]~combout\) # (\PrefixNetwork|Recur:Inner|Recur:Inner|gPair~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PrefixNetwork|Recur:Inner|Recur:gPair[1]~combout\,
	datac => \PrefixNetwork|Recur:Inner|Recur:Inner|gPair~0_combout\,
	datad => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[1]~0_combout\,
	combout => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|gPair~0_combout\);

-- Location: LCCOMB_X114_Y49_N0
\c~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \c~37_combout\ = (\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[1]~0_combout\ & \c~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[1]~0_combout\,
	datad => \c~32_combout\,
	combout => \c~37_combout\);

-- Location: LCCOMB_X114_Y49_N22
\S~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~36_combout\ = p(16) $ (((\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[1]~combout\) # ((\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|gPair~0_combout\) # (\c~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[1]~combout\,
	datab => p(16),
	datac => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|gPair~0_combout\,
	datad => \c~37_combout\,
	combout => \S~36_combout\);

-- Location: IOIBUF_X115_Y47_N22
\A[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(17),
	o => \A[17]~input_o\);

-- Location: IOIBUF_X115_Y50_N1
\B[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(17),
	o => \B[17]~input_o\);

-- Location: LCCOMB_X114_Y47_N10
\p[17]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(17) = \A[17]~input_o\ $ (\B[17]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[17]~input_o\,
	datad => \B[17]~input_o\,
	combout => p(17));

-- Location: LCCOMB_X114_Y49_N16
\PrefixNetwork|Gpre[16]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gpre[16]~6_combout\ = (\A[16]~input_o\ & ((\B[16]~input_o\) # ((\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|gPair~0_combout\) # (\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[1]~combout\)))) # (!\A[16]~input_o\ & 
-- (\B[16]~input_o\ & ((\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|gPair~0_combout\) # (\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[1]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[16]~input_o\,
	datab => \B[16]~input_o\,
	datac => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|gPair~0_combout\,
	datad => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[1]~combout\,
	combout => \PrefixNetwork|Gpre[16]~6_combout\);

-- Location: LCCOMB_X114_Y49_N14
\S~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~37_combout\ = p(17) $ (((\PrefixNetwork|Gpre[16]~6_combout\) # ((\c~37_combout\ & p(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c~37_combout\,
	datab => p(16),
	datac => p(17),
	datad => \PrefixNetwork|Gpre[16]~6_combout\,
	combout => \S~37_combout\);

-- Location: IOIBUF_X115_Y61_N15
\A[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(18),
	o => \A[18]~input_o\);

-- Location: LCCOMB_X114_Y50_N24
\PrefixNetwork|Recur:gPair[8]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:gPair[8]~0_combout\ = (\A[17]~input_o\ & ((\B[17]~input_o\) # ((\A[16]~input_o\ & \B[16]~input_o\)))) # (!\A[17]~input_o\ & (\A[16]~input_o\ & (\B[17]~input_o\ & \B[16]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[17]~input_o\,
	datab => \A[16]~input_o\,
	datac => \B[17]~input_o\,
	datad => \B[16]~input_o\,
	combout => \PrefixNetwork|Recur:gPair[8]~0_combout\);

-- Location: IOIBUF_X115_Y58_N22
\B[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(18),
	o => \B[18]~input_o\);

-- Location: LCCOMB_X114_Y50_N30
\PrefixNetwork|Recur:Inner|Gpre~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Gpre~3_combout\ = (p(16) & (p(17) & ((\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|gPair~0_combout\) # (\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[1]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(16),
	datab => p(17),
	datac => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|gPair~0_combout\,
	datad => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[1]~combout\,
	combout => \PrefixNetwork|Recur:Inner|Gpre~3_combout\);

-- Location: LCCOMB_X114_Y50_N28
\c[18]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[18]~38_combout\ = (\PrefixNetwork|Recur:Inner|Gpre~3_combout\) # ((p(16) & (p(17) & \c~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(16),
	datab => p(17),
	datac => \PrefixNetwork|Recur:Inner|Gpre~3_combout\,
	datad => \c~37_combout\,
	combout => \c[18]~38_combout\);

-- Location: LCCOMB_X114_Y50_N22
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

-- Location: LCCOMB_X114_Y50_N26
\PrefixNetwork|Gpre[18]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gpre[18]~7_combout\ = (\A[18]~input_o\ & ((\PrefixNetwork|Recur:gPair[8]~0_combout\) # ((\PrefixNetwork|Recur:Inner|Gpre~3_combout\) # (\B[18]~input_o\)))) # (!\A[18]~input_o\ & (\B[18]~input_o\ & ((\PrefixNetwork|Recur:gPair[8]~0_combout\) 
-- # (\PrefixNetwork|Recur:Inner|Gpre~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[18]~input_o\,
	datab => \PrefixNetwork|Recur:gPair[8]~0_combout\,
	datac => \PrefixNetwork|Recur:Inner|Gpre~3_combout\,
	datad => \B[18]~input_o\,
	combout => \PrefixNetwork|Gpre[18]~7_combout\);

-- Location: LCCOMB_X114_Y47_N8
\p[18]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(18) = \A[18]~input_o\ $ (\B[18]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[18]~input_o\,
	datad => \B[18]~input_o\,
	combout => p(18));

-- Location: LCCOMB_X114_Y50_N16
\c~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \c~76_combout\ = (p(17) & (p(18) & (\B[16]~input_o\ $ (\A[16]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[16]~input_o\,
	datab => \A[16]~input_o\,
	datac => p(17),
	datad => p(18),
	combout => \c~76_combout\);

-- Location: IOIBUF_X115_Y46_N1
\A[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(19),
	o => \A[19]~input_o\);

-- Location: IOIBUF_X115_Y63_N8
\B[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(19),
	o => \B[19]~input_o\);

-- Location: LCCOMB_X114_Y47_N6
\p[19]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(19) = \A[19]~input_o\ $ (\B[19]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[19]~input_o\,
	datad => \B[19]~input_o\,
	combout => p(19));

-- Location: LCCOMB_X114_Y50_N8
\S~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~38_combout\ = p(19) $ (((\PrefixNetwork|Gpre[18]~7_combout\) # ((\c~76_combout\ & \c~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gpre[18]~7_combout\,
	datab => \c~76_combout\,
	datac => p(19),
	datad => \c~37_combout\,
	combout => \S~38_combout\);

-- Location: LCCOMB_X114_Y47_N20
\PrefixNetwork|Recur:Inner|Recur:Inner|Ppre[4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Recur:Inner|Ppre[4]~0_combout\ = (p(17) & (p(16) & (p(18) & p(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(17),
	datab => p(16),
	datac => p(18),
	datad => p(19),
	combout => \PrefixNetwork|Recur:Inner|Recur:Inner|Ppre[4]~0_combout\);

-- Location: LCCOMB_X114_Y49_N8
\c~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \c~39_combout\ = (\c~31_combout\ & (\PrefixNetwork|Recur:Inner|Recur:Inner|Ppre[4]~0_combout\ & (\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[1]~0_combout\ & \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c~31_combout\,
	datab => \PrefixNetwork|Recur:Inner|Recur:Inner|Ppre[4]~0_combout\,
	datac => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[1]~0_combout\,
	datad => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[0]~0_combout\,
	combout => \c~39_combout\);

-- Location: LCCOMB_X114_Y47_N26
\PrefixNetwork|Recur:gPair[9]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:gPair[9]~0_combout\ = (\A[19]~input_o\ & ((\B[19]~input_o\) # ((\A[18]~input_o\ & \B[18]~input_o\)))) # (!\A[19]~input_o\ & (\A[18]~input_o\ & (\B[19]~input_o\ & \B[18]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[18]~input_o\,
	datab => \A[19]~input_o\,
	datac => \B[19]~input_o\,
	datad => \B[18]~input_o\,
	combout => \PrefixNetwork|Recur:gPair[9]~0_combout\);

-- Location: LCCOMB_X114_Y47_N28
\PrefixNetwork|Recur:Inner|Recur:gPair[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Recur:gPair[4]~combout\ = (\PrefixNetwork|Recur:gPair[9]~0_combout\) # ((\PrefixNetwork|Recur:gPair[8]~0_combout\ & (p(18) & p(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Recur:gPair[8]~0_combout\,
	datab => p(18),
	datac => \PrefixNetwork|Recur:gPair[9]~0_combout\,
	datad => p(19),
	combout => \PrefixNetwork|Recur:Inner|Recur:gPair[4]~combout\);

-- Location: IOIBUF_X115_Y60_N15
\B[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(20),
	o => \B[20]~input_o\);

-- Location: IOIBUF_X115_Y65_N22
\A[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(20),
	o => \A[20]~input_o\);

-- Location: LCCOMB_X114_Y47_N18
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

-- Location: LCCOMB_X114_Y49_N6
\PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~1_combout\ = (\PrefixNetwork|Recur:Inner|Recur:Inner|Ppre[4]~0_combout\ & ((\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[1]~combout\) # ((\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[1]~0_combout\ & 
-- !\c[8]~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[1]~combout\,
	datab => \PrefixNetwork|Recur:Inner|Recur:Inner|Ppre[4]~0_combout\,
	datac => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[1]~0_combout\,
	datad => \c[8]~33_combout\,
	combout => \PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~1_combout\);

-- Location: LCCOMB_X114_Y49_N4
\S~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~39_combout\ = p(20) $ (((\c~39_combout\) # ((\PrefixNetwork|Recur:Inner|Recur:gPair[4]~combout\) # (\PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c~39_combout\,
	datab => \PrefixNetwork|Recur:Inner|Recur:gPair[4]~combout\,
	datac => p(20),
	datad => \PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~1_combout\,
	combout => \S~39_combout\);

-- Location: IOIBUF_X115_Y55_N22
\B[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(21),
	o => \B[21]~input_o\);

-- Location: IOIBUF_X115_Y63_N1
\A[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(21),
	o => \A[21]~input_o\);

-- Location: LCCOMB_X114_Y47_N4
\p[21]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(21) = \B[21]~input_o\ $ (\A[21]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[21]~input_o\,
	datad => \A[21]~input_o\,
	combout => p(21));

-- Location: LCCOMB_X114_Y49_N18
\PrefixNetwork|Gpre[20]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gpre[20]~8_combout\ = (\B[20]~input_o\ & ((\PrefixNetwork|Recur:Inner|Recur:gPair[4]~combout\) # ((\A[20]~input_o\) # (\PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~1_combout\)))) # (!\B[20]~input_o\ & (\A[20]~input_o\ & 
-- ((\PrefixNetwork|Recur:Inner|Recur:gPair[4]~combout\) # (\PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[20]~input_o\,
	datab => \PrefixNetwork|Recur:Inner|Recur:gPair[4]~combout\,
	datac => \A[20]~input_o\,
	datad => \PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~1_combout\,
	combout => \PrefixNetwork|Gpre[20]~8_combout\);

-- Location: LCCOMB_X114_Y49_N20
\S~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~40_combout\ = p(21) $ (((\PrefixNetwork|Gpre[20]~8_combout\) # ((p(20) & \c~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(21),
	datab => p(20),
	datac => \c~39_combout\,
	datad => \PrefixNetwork|Gpre[20]~8_combout\,
	combout => \S~40_combout\);

-- Location: LCCOMB_X114_Y47_N2
\PrefixNetwork|Recur:gPair[10]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:gPair[10]~0_combout\ = (\A[21]~input_o\ & ((\B[21]~input_o\) # ((\B[20]~input_o\ & \A[20]~input_o\)))) # (!\A[21]~input_o\ & (\B[20]~input_o\ & (\B[21]~input_o\ & \A[20]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[21]~input_o\,
	datab => \B[20]~input_o\,
	datac => \B[21]~input_o\,
	datad => \A[20]~input_o\,
	combout => \PrefixNetwork|Recur:gPair[10]~0_combout\);

-- Location: LCCOMB_X114_Y49_N28
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

-- Location: IOIBUF_X115_Y49_N8
\A[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(22),
	o => \A[22]~input_o\);

-- Location: IOIBUF_X115_Y53_N15
\B[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(22),
	o => \B[22]~input_o\);

-- Location: LCCOMB_X114_Y49_N30
\p[22]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(22) = \A[22]~input_o\ $ (\B[22]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[22]~input_o\,
	datad => \B[22]~input_o\,
	combout => p(22));

-- Location: LCCOMB_X114_Y49_N10
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

-- Location: LCCOMB_X114_Y49_N12
\S~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~41_combout\ = p(22) $ (((\PrefixNetwork|Recur:gPair[10]~0_combout\) # ((\c~40_combout\) # (\PrefixNetwork|Recur:Inner|Gpre~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Recur:gPair[10]~0_combout\,
	datab => \c~40_combout\,
	datac => p(22),
	datad => \PrefixNetwork|Recur:Inner|Gpre~4_combout\,
	combout => \S~41_combout\);

-- Location: IOIBUF_X115_Y61_N22
\A[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(23),
	o => \A[23]~input_o\);

-- Location: IOIBUF_X115_Y47_N15
\B[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(23),
	o => \B[23]~input_o\);

-- Location: LCCOMB_X114_Y47_N16
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

-- Location: LCCOMB_X114_Y49_N26
\PrefixNetwork|Gpre[22]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gpre[22]~9_combout\ = (\B[22]~input_o\ & ((\PrefixNetwork|Recur:gPair[10]~0_combout\) # ((\A[22]~input_o\) # (\PrefixNetwork|Recur:Inner|Gpre~4_combout\)))) # (!\B[22]~input_o\ & (\A[22]~input_o\ & 
-- ((\PrefixNetwork|Recur:gPair[10]~0_combout\) # (\PrefixNetwork|Recur:Inner|Gpre~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Recur:gPair[10]~0_combout\,
	datab => \B[22]~input_o\,
	datac => \A[22]~input_o\,
	datad => \PrefixNetwork|Recur:Inner|Gpre~4_combout\,
	combout => \PrefixNetwork|Gpre[22]~9_combout\);

-- Location: LCCOMB_X114_Y49_N24
\S~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~42_combout\ = p(23) $ (((\PrefixNetwork|Gpre[22]~9_combout\) # ((p(22) & \c~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(23),
	datab => p(22),
	datac => \PrefixNetwork|Gpre[22]~9_combout\,
	datad => \c~40_combout\,
	combout => \S~42_combout\);

-- Location: IOIBUF_X115_Y18_N8
\B[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(24),
	o => \B[24]~input_o\);

-- Location: IOIBUF_X115_Y19_N1
\A[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(24),
	o => \A[24]~input_o\);

-- Location: LCCOMB_X114_Y15_N16
\p[24]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(24) = \B[24]~input_o\ $ (\A[24]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[24]~input_o\,
	datad => \A[24]~input_o\,
	combout => p(24));

-- Location: LCCOMB_X114_Y47_N30
\PrefixNetwork|Recur:Inner|Recur:Inner|gPair~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Recur:Inner|gPair~2_combout\ = (p(22) & (p(23) & (p(21) & p(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(22),
	datab => p(23),
	datac => p(21),
	datad => p(20),
	combout => \PrefixNetwork|Recur:Inner|Recur:Inner|gPair~2_combout\);

-- Location: LCCOMB_X114_Y47_N0
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

-- Location: LCCOMB_X113_Y18_N4
\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Gpre~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Gpre~0_combout\ = (\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[2]~0_combout\ & ((\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[1]~combout\) # ((!\c[8]~33_combout\ & 
-- \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c[8]~33_combout\,
	datab => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[1]~combout\,
	datac => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[2]~0_combout\,
	datad => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[1]~0_combout\,
	combout => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Gpre~0_combout\);

-- Location: LCCOMB_X114_Y47_N14
\PrefixNetwork|Recur:gPair[11]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:gPair[11]~0_combout\ = (\A[23]~input_o\ & ((\B[23]~input_o\) # ((\B[22]~input_o\ & \A[22]~input_o\)))) # (!\A[23]~input_o\ & (\B[22]~input_o\ & (\A[22]~input_o\ & \B[23]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[22]~input_o\,
	datab => \A[22]~input_o\,
	datac => \A[23]~input_o\,
	datad => \B[23]~input_o\,
	combout => \PrefixNetwork|Recur:gPair[11]~0_combout\);

-- Location: LCCOMB_X114_Y47_N12
\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[2]~0_combout\ = (\PrefixNetwork|Recur:gPair[11]~0_combout\) # ((p(22) & (p(23) & \PrefixNetwork|Recur:gPair[10]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(22),
	datab => p(23),
	datac => \PrefixNetwork|Recur:gPair[11]~0_combout\,
	datad => \PrefixNetwork|Recur:gPair[10]~0_combout\,
	combout => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[2]~0_combout\);

-- Location: LCCOMB_X114_Y47_N22
\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[2]~combout\ = (\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[2]~0_combout\) # ((\PrefixNetwork|Recur:Inner|Recur:gPair[4]~combout\ & \PrefixNetwork|Recur:Inner|Recur:Inner|gPair~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PrefixNetwork|Recur:Inner|Recur:gPair[4]~combout\,
	datac => \PrefixNetwork|Recur:Inner|Recur:Inner|gPair~2_combout\,
	datad => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[2]~0_combout\,
	combout => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[2]~combout\);

-- Location: LCCOMB_X114_Y29_N6
\c~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \c~77_combout\ = (\PrefixNetwork|Recur:Inner|Recur:Inner|Ppre[4]~0_combout\ & (\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[1]~0_combout\ & (\PrefixNetwork|Recur:Inner|Recur:Inner|gPair~2_combout\ & \c~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Recur:Inner|Recur:Inner|Ppre[4]~0_combout\,
	datab => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[1]~0_combout\,
	datac => \PrefixNetwork|Recur:Inner|Recur:Inner|gPair~2_combout\,
	datad => \c~32_combout\,
	combout => \c~77_combout\);

-- Location: LCCOMB_X113_Y18_N22
\S~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~43_combout\ = p(24) $ (((\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Gpre~0_combout\) # ((\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[2]~combout\) # (\c~77_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(24),
	datab => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Gpre~0_combout\,
	datac => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[2]~combout\,
	datad => \c~77_combout\,
	combout => \S~43_combout\);

-- Location: IOIBUF_X115_Y12_N8
\B[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(25),
	o => \B[25]~input_o\);

-- Location: IOIBUF_X115_Y7_N15
\A[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(25),
	o => \A[25]~input_o\);

-- Location: LCCOMB_X114_Y15_N10
\p[25]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(25) = \B[25]~input_o\ $ (\A[25]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[25]~input_o\,
	datad => \A[25]~input_o\,
	combout => p(25));

-- Location: LCCOMB_X113_Y18_N8
\PrefixNetwork|Gpre[24]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gpre[24]~10_combout\ = (\A[24]~input_o\ & ((\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Gpre~0_combout\) # ((\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[2]~combout\) # (\B[24]~input_o\)))) # (!\A[24]~input_o\ & 
-- (\B[24]~input_o\ & ((\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Gpre~0_combout\) # (\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[2]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[24]~input_o\,
	datab => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Gpre~0_combout\,
	datac => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[2]~combout\,
	datad => \B[24]~input_o\,
	combout => \PrefixNetwork|Gpre[24]~10_combout\);

-- Location: LCCOMB_X114_Y19_N4
\S~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~44_combout\ = p(25) $ (((\PrefixNetwork|Gpre[24]~10_combout\) # ((p(24) & \c~77_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(24),
	datab => p(25),
	datac => \c~77_combout\,
	datad => \PrefixNetwork|Gpre[24]~10_combout\,
	combout => \S~44_combout\);

-- Location: LCCOMB_X114_Y16_N12
\PrefixNetwork|Recur:Inner|Gpre~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Gpre~5_combout\ = (p(24) & (p(25) & ((\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Gpre~0_combout\) # (\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[2]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Gpre~0_combout\,
	datab => p(24),
	datac => p(25),
	datad => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[2]~combout\,
	combout => \PrefixNetwork|Recur:Inner|Gpre~5_combout\);

-- Location: IOIBUF_X115_Y12_N1
\B[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(26),
	o => \B[26]~input_o\);

-- Location: IOIBUF_X115_Y15_N1
\A[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(26),
	o => \A[26]~input_o\);

-- Location: LCCOMB_X114_Y15_N0
\PrefixNetwork|Recur:gPair[12]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:gPair[12]~0_combout\ = (\B[25]~input_o\ & ((\A[25]~input_o\) # ((\B[24]~input_o\ & \A[24]~input_o\)))) # (!\B[25]~input_o\ & (\A[25]~input_o\ & (\B[24]~input_o\ & \A[24]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[25]~input_o\,
	datab => \A[25]~input_o\,
	datac => \B[24]~input_o\,
	datad => \A[24]~input_o\,
	combout => \PrefixNetwork|Recur:gPair[12]~0_combout\);

-- Location: LCCOMB_X114_Y16_N10
\c[26]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[26]~41_combout\ = (\PrefixNetwork|Recur:gPair[12]~0_combout\) # ((p(24) & (p(25) & \c~77_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(24),
	datab => \PrefixNetwork|Recur:gPair[12]~0_combout\,
	datac => p(25),
	datad => \c~77_combout\,
	combout => \c[26]~41_combout\);

-- Location: LCCOMB_X114_Y16_N14
\S~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~75_combout\ = \B[26]~input_o\ $ (\A[26]~input_o\ $ (((\PrefixNetwork|Recur:Inner|Gpre~5_combout\) # (\c[26]~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Recur:Inner|Gpre~5_combout\,
	datab => \B[26]~input_o\,
	datac => \A[26]~input_o\,
	datad => \c[26]~41_combout\,
	combout => \S~75_combout\);

-- Location: IOIBUF_X115_Y13_N1
\B[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(27),
	o => \B[27]~input_o\);

-- Location: IOIBUF_X115_Y9_N22
\A[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(27),
	o => \A[27]~input_o\);

-- Location: LCCOMB_X114_Y16_N8
\PrefixNetwork|Gpre[26]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gpre[26]~11_combout\ = (\B[26]~input_o\ & ((\PrefixNetwork|Recur:gPair[12]~0_combout\) # ((\A[26]~input_o\) # (\PrefixNetwork|Recur:Inner|Gpre~5_combout\)))) # (!\B[26]~input_o\ & (\A[26]~input_o\ & 
-- ((\PrefixNetwork|Recur:gPair[12]~0_combout\) # (\PrefixNetwork|Recur:Inner|Gpre~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[26]~input_o\,
	datab => \PrefixNetwork|Recur:gPair[12]~0_combout\,
	datac => \A[26]~input_o\,
	datad => \PrefixNetwork|Recur:Inner|Gpre~5_combout\,
	combout => \PrefixNetwork|Gpre[26]~11_combout\);

-- Location: LCCOMB_X114_Y15_N14
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

-- Location: LCCOMB_X114_Y16_N2
\c~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \c~42_combout\ = (p(26) & (p(24) & (p(25) & \c~77_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(26),
	datab => p(24),
	datac => p(25),
	datad => \c~77_combout\,
	combout => \c~42_combout\);

-- Location: LCCOMB_X114_Y16_N16
\S~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~76_combout\ = \B[27]~input_o\ $ (\A[27]~input_o\ $ (((\PrefixNetwork|Gpre[26]~11_combout\) # (\c~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[27]~input_o\,
	datab => \A[27]~input_o\,
	datac => \PrefixNetwork|Gpre[26]~11_combout\,
	datad => \c~42_combout\,
	combout => \S~76_combout\);

-- Location: LCCOMB_X114_Y15_N6
\PrefixNetwork|Recur:gPair[13]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:gPair[13]~0_combout\ = (\B[27]~input_o\ & ((\A[27]~input_o\) # ((\A[26]~input_o\ & \B[26]~input_o\)))) # (!\B[27]~input_o\ & (\A[27]~input_o\ & (\A[26]~input_o\ & \B[26]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[27]~input_o\,
	datab => \A[27]~input_o\,
	datac => \A[26]~input_o\,
	datad => \B[26]~input_o\,
	combout => \PrefixNetwork|Recur:gPair[13]~0_combout\);

-- Location: LCCOMB_X114_Y15_N24
\p[27]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(27) = \B[27]~input_o\ $ (\A[27]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[27]~input_o\,
	datad => \A[27]~input_o\,
	combout => p(27));

-- Location: LCCOMB_X114_Y15_N20
\PrefixNetwork|Recur:Inner|Recur:gPair[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Recur:gPair[6]~combout\ = (\PrefixNetwork|Recur:gPair[13]~0_combout\) # ((p(27) & (p(26) & \PrefixNetwork|Recur:gPair[12]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Recur:gPair[13]~0_combout\,
	datab => p(27),
	datac => p(26),
	datad => \PrefixNetwork|Recur:gPair[12]~0_combout\,
	combout => \PrefixNetwork|Recur:Inner|Recur:gPair[6]~combout\);

-- Location: IOIBUF_X115_Y5_N15
\B[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(28),
	o => \B[28]~input_o\);

-- Location: IOIBUF_X115_Y15_N8
\A[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(28),
	o => \A[28]~input_o\);

-- Location: LCCOMB_X113_Y16_N24
\p[28]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(28) = \B[28]~input_o\ $ (\A[28]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[28]~input_o\,
	datad => \A[28]~input_o\,
	combout => p(28));

-- Location: LCCOMB_X114_Y15_N30
\PrefixNetwork|Recur:Inner|Recur:pPair[6]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Recur:pPair[6]~0_combout\ = (p(25) & (p(27) & (p(26) & p(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(25),
	datab => p(27),
	datac => p(26),
	datad => p(24),
	combout => \PrefixNetwork|Recur:Inner|Recur:pPair[6]~0_combout\);

-- Location: LCCOMB_X113_Y18_N10
\c~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \c~43_combout\ = (\PrefixNetwork|Recur:Inner|Recur:pPair[6]~0_combout\ & (\c~32_combout\ & (\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[2]~0_combout\ & \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Recur:Inner|Recur:pPair[6]~0_combout\,
	datab => \c~32_combout\,
	datac => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[2]~0_combout\,
	datad => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[1]~0_combout\,
	combout => \c~43_combout\);

-- Location: LCCOMB_X114_Y16_N20
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

-- Location: LCCOMB_X114_Y16_N26
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

-- Location: IOIBUF_X115_Y11_N8
\B[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(29),
	o => \B[29]~input_o\);

-- Location: IOIBUF_X115_Y17_N1
\A[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(29),
	o => \A[29]~input_o\);

-- Location: LCCOMB_X114_Y17_N12
\p[29]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(29) = \B[29]~input_o\ $ (\A[29]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[29]~input_o\,
	datad => \A[29]~input_o\,
	combout => p(29));

-- Location: LCCOMB_X114_Y16_N24
\PrefixNetwork|Gpre[28]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gpre[28]~12_combout\ = (\A[28]~input_o\ & ((\PrefixNetwork|Recur:Inner|Recur:gPair[6]~combout\) # ((\B[28]~input_o\) # (\PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~2_combout\)))) # (!\A[28]~input_o\ & (\B[28]~input_o\ & 
-- ((\PrefixNetwork|Recur:Inner|Recur:gPair[6]~combout\) # (\PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Recur:Inner|Recur:gPair[6]~combout\,
	datab => \A[28]~input_o\,
	datac => \B[28]~input_o\,
	datad => \PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~2_combout\,
	combout => \PrefixNetwork|Gpre[28]~12_combout\);

-- Location: LCCOMB_X114_Y16_N6
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

-- Location: IOIBUF_X115_Y13_N8
\A[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(30),
	o => \A[30]~input_o\);

-- Location: IOIBUF_X115_Y4_N22
\B[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(30),
	o => \B[30]~input_o\);

-- Location: LCCOMB_X114_Y15_N22
\PrefixNetwork|Recur:gPair[14]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:gPair[14]~0_combout\ = (\A[29]~input_o\ & ((\B[29]~input_o\) # ((\A[28]~input_o\ & \B[28]~input_o\)))) # (!\A[29]~input_o\ & (\A[28]~input_o\ & (\B[29]~input_o\ & \B[28]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[29]~input_o\,
	datab => \A[28]~input_o\,
	datac => \B[29]~input_o\,
	datad => \B[28]~input_o\,
	combout => \PrefixNetwork|Recur:gPair[14]~0_combout\);

-- Location: LCCOMB_X114_Y15_N4
\PrefixNetwork|Recur:Inner|Gpre~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Gpre~6_combout\ = (\A[29]~input_o\ & (!\B[29]~input_o\ & (\A[28]~input_o\ $ (\B[28]~input_o\)))) # (!\A[29]~input_o\ & (\B[29]~input_o\ & (\A[28]~input_o\ $ (\B[28]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[29]~input_o\,
	datab => \A[28]~input_o\,
	datac => \B[29]~input_o\,
	datad => \B[28]~input_o\,
	combout => \PrefixNetwork|Recur:Inner|Gpre~6_combout\);

-- Location: LCCOMB_X114_Y16_N22
\c[30]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[30]~44_combout\ = (\PrefixNetwork|Recur:gPair[14]~0_combout\) # ((\PrefixNetwork|Recur:Inner|Gpre~6_combout\ & (\PrefixNetwork|Recur:Inner|Recur:pPair[6]~0_combout\ & \c~77_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Recur:gPair[14]~0_combout\,
	datab => \PrefixNetwork|Recur:Inner|Gpre~6_combout\,
	datac => \PrefixNetwork|Recur:Inner|Recur:pPair[6]~0_combout\,
	datad => \c~77_combout\,
	combout => \c[30]~44_combout\);

-- Location: LCCOMB_X114_Y16_N0
\PrefixNetwork|Recur:Inner|Gpre~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Gpre~7_combout\ = (\PrefixNetwork|Recur:Inner|Gpre~6_combout\ & ((\PrefixNetwork|Recur:Inner|Recur:gPair[6]~combout\) # (\PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Recur:Inner|Recur:gPair[6]~combout\,
	datab => \PrefixNetwork|Recur:Inner|Gpre~6_combout\,
	datad => \PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~2_combout\,
	combout => \PrefixNetwork|Recur:Inner|Gpre~7_combout\);

-- Location: LCCOMB_X114_Y16_N18
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

-- Location: IOIBUF_X115_Y4_N15
\A[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(31),
	o => \A[31]~input_o\);

-- Location: IOIBUF_X115_Y11_N1
\B[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(31),
	o => \B[31]~input_o\);

-- Location: LCCOMB_X114_Y15_N18
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

-- Location: LCCOMB_X114_Y16_N28
\c~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \c~45_combout\ = (\PrefixNetwork|Recur:Inner|Recur:pPair[6]~0_combout\ & (\PrefixNetwork|Recur:Inner|Gpre~6_combout\ & (\B[30]~input_o\ $ (\A[30]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Recur:Inner|Recur:pPair[6]~0_combout\,
	datab => \PrefixNetwork|Recur:Inner|Gpre~6_combout\,
	datac => \B[30]~input_o\,
	datad => \A[30]~input_o\,
	combout => \c~45_combout\);

-- Location: LCCOMB_X114_Y16_N30
\PrefixNetwork|Gpre[30]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gpre[30]~13_combout\ = (\A[30]~input_o\ & ((\PrefixNetwork|Recur:gPair[14]~0_combout\) # ((\B[30]~input_o\) # (\PrefixNetwork|Recur:Inner|Gpre~7_combout\)))) # (!\A[30]~input_o\ & (\B[30]~input_o\ & 
-- ((\PrefixNetwork|Recur:gPair[14]~0_combout\) # (\PrefixNetwork|Recur:Inner|Gpre~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[30]~input_o\,
	datab => \PrefixNetwork|Recur:gPair[14]~0_combout\,
	datac => \B[30]~input_o\,
	datad => \PrefixNetwork|Recur:Inner|Gpre~7_combout\,
	combout => \PrefixNetwork|Gpre[30]~13_combout\);

-- Location: LCCOMB_X114_Y16_N4
\S~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~47_combout\ = p(31) $ (((\PrefixNetwork|Gpre[30]~13_combout\) # ((\c~45_combout\ & \c~77_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(31),
	datab => \c~45_combout\,
	datac => \PrefixNetwork|Gpre[30]~13_combout\,
	datad => \c~77_combout\,
	combout => \S~47_combout\);

-- Location: LCCOMB_X114_Y15_N28
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

-- Location: LCCOMB_X114_Y15_N12
\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|gPair~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|gPair~1_combout\ = (\PrefixNetwork|Recur:Inner|Recur:pPair[6]~0_combout\ & (p(30) & (\PrefixNetwork|Recur:Inner|Gpre~6_combout\ & p(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Recur:Inner|Recur:pPair[6]~0_combout\,
	datab => p(30),
	datac => \PrefixNetwork|Recur:Inner|Gpre~6_combout\,
	datad => p(31),
	combout => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|gPair~1_combout\);

-- Location: LCCOMB_X114_Y15_N2
\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:Inner|Recur:pPair[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:Inner|Recur:pPair[0]~4_combout\ = (\PrefixNetwork|Recur:Inner|Gpre~6_combout\ & (p(31) & (\B[30]~input_o\ $ (\A[30]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[30]~input_o\,
	datab => \A[30]~input_o\,
	datac => \PrefixNetwork|Recur:Inner|Gpre~6_combout\,
	datad => p(31),
	combout => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:Inner|Recur:pPair[0]~4_combout\);

-- Location: LCCOMB_X114_Y15_N26
\PrefixNetwork|Recur:gPair[15]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:gPair[15]~0_combout\ = (\B[31]~input_o\ & ((\A[31]~input_o\) # ((\A[30]~input_o\ & \B[30]~input_o\)))) # (!\B[31]~input_o\ & (\A[31]~input_o\ & (\A[30]~input_o\ & \B[30]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[31]~input_o\,
	datab => \A[31]~input_o\,
	datac => \A[30]~input_o\,
	datad => \B[30]~input_o\,
	combout => \PrefixNetwork|Recur:gPair[15]~0_combout\);

-- Location: LCCOMB_X114_Y15_N8
\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:gPair[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:gPair[1]~0_combout\ = (\PrefixNetwork|Recur:gPair[15]~0_combout\) # ((p(31) & (\PrefixNetwork|Recur:gPair[14]~0_combout\ & p(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Recur:gPair[15]~0_combout\,
	datab => p(31),
	datac => \PrefixNetwork|Recur:gPair[14]~0_combout\,
	datad => p(30),
	combout => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:gPair[1]~0_combout\);

-- Location: LCCOMB_X113_Y18_N28
\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:gPair[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:gPair[1]~1_combout\ = (\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:gPair[1]~0_combout\) # ((\PrefixNetwork|Recur:Inner|Recur:gPair[6]~combout\ & 
-- \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:Inner|Recur:pPair[0]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PrefixNetwork|Recur:Inner|Recur:gPair[6]~combout\,
	datac => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:Inner|Recur:pPair[0]~4_combout\,
	datad => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:gPair[1]~0_combout\,
	combout => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:gPair[1]~1_combout\);

-- Location: LCCOMB_X113_Y18_N6
\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:gPair[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:gPair[1]~combout\ = (\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:gPair[1]~1_combout\) # ((\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|gPair~1_combout\ & 
-- \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[2]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|gPair~1_combout\,
	datac => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[2]~combout\,
	datad => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:gPair[1]~1_combout\,
	combout => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:gPair[1]~combout\);

-- Location: LCCOMB_X114_Y29_N2
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

-- Location: IOIBUF_X98_Y0_N15
\B[32]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(32),
	o => \B[32]~input_o\);

-- Location: IOIBUF_X100_Y0_N15
\A[32]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(32),
	o => \A[32]~input_o\);

-- Location: LCCOMB_X114_Y29_N30
\p[32]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(32) = \B[32]~input_o\ $ (\A[32]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[32]~input_o\,
	datad => \A[32]~input_o\,
	combout => p(32));

-- Location: LCCOMB_X114_Y29_N20
\c~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \c~46_combout\ = (\PrefixNetwork|Recur:Inner|Recur:pPair[6]~0_combout\ & (\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:Inner|Recur:pPair[0]~4_combout\ & \c~77_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Recur:Inner|Recur:pPair[6]~0_combout\,
	datac => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:Inner|Recur:pPair[0]~4_combout\,
	datad => \c~77_combout\,
	combout => \c~46_combout\);

-- Location: LCCOMB_X114_Y29_N4
\S~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~48_combout\ = p(32) $ (((\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:gPair[1]~combout\) # ((\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:Inner|gPair~0_combout\) # (\c~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:gPair[1]~combout\,
	datab => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:Inner|gPair~0_combout\,
	datac => p(32),
	datad => \c~46_combout\,
	combout => \S~48_combout\);

-- Location: IOIBUF_X65_Y0_N15
\A[33]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(33),
	o => \A[33]~input_o\);

-- Location: IOIBUF_X58_Y0_N22
\B[33]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(33),
	o => \B[33]~input_o\);

-- Location: LCCOMB_X89_Y14_N28
\p[33]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(33) = \A[33]~input_o\ $ (\B[33]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[33]~input_o\,
	datad => \B[33]~input_o\,
	combout => p(33));

-- Location: LCCOMB_X114_Y29_N14
\PrefixNetwork|Gpre[32]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gpre[32]~14_combout\ = (\B[32]~input_o\ & ((\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:gPair[1]~combout\) # ((\A[32]~input_o\) # (\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:Inner|gPair~0_combout\)))) # 
-- (!\B[32]~input_o\ & (\A[32]~input_o\ & ((\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:gPair[1]~combout\) # (\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:Inner|gPair~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:gPair[1]~combout\,
	datab => \B[32]~input_o\,
	datac => \A[32]~input_o\,
	datad => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:Inner|gPair~0_combout\,
	combout => \PrefixNetwork|Gpre[32]~14_combout\);

-- Location: LCCOMB_X114_Y29_N24
\S~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~49_combout\ = p(33) $ (((\PrefixNetwork|Gpre[32]~14_combout\) # ((p(32) & \c~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(32),
	datab => p(33),
	datac => \PrefixNetwork|Gpre[32]~14_combout\,
	datad => \c~46_combout\,
	combout => \S~49_combout\);

-- Location: LCCOMB_X89_Y14_N24
\PrefixNetwork|Recur:Inner|Gpre~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Gpre~8_combout\ = (\A[32]~input_o\ & (!\B[32]~input_o\ & (\A[33]~input_o\ $ (\B[33]~input_o\)))) # (!\A[32]~input_o\ & (\B[32]~input_o\ & (\A[33]~input_o\ $ (\B[33]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[32]~input_o\,
	datab => \B[32]~input_o\,
	datac => \A[33]~input_o\,
	datad => \B[33]~input_o\,
	combout => \PrefixNetwork|Recur:Inner|Gpre~8_combout\);

-- Location: LCCOMB_X105_Y18_N12
\PrefixNetwork|Recur:Inner|Gpre~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Gpre~9_combout\ = (\PrefixNetwork|Recur:Inner|Gpre~8_combout\ & ((\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:gPair[1]~combout\) # ((\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|gPair~1_combout\ & 
-- \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Gpre~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Recur:Inner|Gpre~8_combout\,
	datab => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|gPair~1_combout\,
	datac => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Gpre~0_combout\,
	datad => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:gPair[1]~combout\,
	combout => \PrefixNetwork|Recur:Inner|Gpre~9_combout\);

-- Location: LCCOMB_X89_Y14_N2
\PrefixNetwork|Recur:gPair[16]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:gPair[16]~0_combout\ = (\A[33]~input_o\ & ((\B[33]~input_o\) # ((\A[32]~input_o\ & \B[32]~input_o\)))) # (!\A[33]~input_o\ & (\A[32]~input_o\ & (\B[32]~input_o\ & \B[33]~input_o\)))

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
	combout => \PrefixNetwork|Recur:gPair[16]~0_combout\);

-- Location: IOIBUF_X58_Y0_N15
\A[34]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(34),
	o => \A[34]~input_o\);

-- Location: IOIBUF_X74_Y0_N22
\B[34]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(34),
	o => \B[34]~input_o\);

-- Location: LCCOMB_X89_Y14_N6
\p[34]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(34) = \A[34]~input_o\ $ (\B[34]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[34]~input_o\,
	datad => \B[34]~input_o\,
	combout => p(34));

-- Location: LCCOMB_X105_Y18_N18
\c~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \c~47_combout\ = (\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:Inner|Recur:pPair[0]~4_combout\ & (\PrefixNetwork|Recur:Inner|Gpre~8_combout\ & \c~43_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:Inner|Recur:pPair[0]~4_combout\,
	datac => \PrefixNetwork|Recur:Inner|Gpre~8_combout\,
	datad => \c~43_combout\,
	combout => \c~47_combout\);

-- Location: LCCOMB_X105_Y18_N20
\S~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~50_combout\ = p(34) $ (((\PrefixNetwork|Recur:Inner|Gpre~9_combout\) # ((\PrefixNetwork|Recur:gPair[16]~0_combout\) # (\c~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Recur:Inner|Gpre~9_combout\,
	datab => \PrefixNetwork|Recur:gPair[16]~0_combout\,
	datac => p(34),
	datad => \c~47_combout\,
	combout => \S~50_combout\);

-- Location: LCCOMB_X105_Y18_N30
\c~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \c~48_combout\ = (\PrefixNetwork|Recur:Inner|Gpre~8_combout\ & (\A[34]~input_o\ $ (\B[34]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[34]~input_o\,
	datac => \PrefixNetwork|Recur:Inner|Gpre~8_combout\,
	datad => \B[34]~input_o\,
	combout => \c~48_combout\);

-- Location: IOIBUF_X74_Y0_N15
\A[35]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(35),
	o => \A[35]~input_o\);

-- Location: IOIBUF_X89_Y0_N22
\B[35]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(35),
	o => \B[35]~input_o\);

-- Location: LCCOMB_X89_Y14_N8
\p[35]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(35) = \A[35]~input_o\ $ (\B[35]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[35]~input_o\,
	datad => \B[35]~input_o\,
	combout => p(35));

-- Location: LCCOMB_X105_Y18_N16
\PrefixNetwork|Gpre[34]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gpre[34]~15_combout\ = (\A[34]~input_o\ & ((\B[34]~input_o\) # ((\PrefixNetwork|Recur:gPair[16]~0_combout\) # (\PrefixNetwork|Recur:Inner|Gpre~9_combout\)))) # (!\A[34]~input_o\ & (\B[34]~input_o\ & 
-- ((\PrefixNetwork|Recur:gPair[16]~0_combout\) # (\PrefixNetwork|Recur:Inner|Gpre~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[34]~input_o\,
	datab => \B[34]~input_o\,
	datac => \PrefixNetwork|Recur:gPair[16]~0_combout\,
	datad => \PrefixNetwork|Recur:Inner|Gpre~9_combout\,
	combout => \PrefixNetwork|Gpre[34]~15_combout\);

-- Location: LCCOMB_X105_Y18_N22
\S~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~51_combout\ = p(35) $ (((\PrefixNetwork|Gpre[34]~15_combout\) # ((\c~48_combout\ & \c~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c~48_combout\,
	datab => p(35),
	datac => \c~46_combout\,
	datad => \PrefixNetwork|Gpre[34]~15_combout\,
	combout => \S~51_combout\);

-- Location: IOIBUF_X0_Y36_N15
\A[36]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(36),
	o => \A[36]~input_o\);

-- Location: IOIBUF_X0_Y36_N22
\B[36]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(36),
	o => \B[36]~input_o\);

-- Location: LCCOMB_X89_Y14_N18
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

-- Location: LCCOMB_X89_Y14_N14
\PrefixNetwork|Recur:gPair[17]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:gPair[17]~0_combout\ = (\A[35]~input_o\ & ((\B[35]~input_o\) # ((\B[34]~input_o\ & \A[34]~input_o\)))) # (!\A[35]~input_o\ & (\B[34]~input_o\ & (\A[34]~input_o\ & \B[35]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[35]~input_o\,
	datab => \B[34]~input_o\,
	datac => \A[34]~input_o\,
	datad => \B[35]~input_o\,
	combout => \PrefixNetwork|Recur:gPair[17]~0_combout\);

-- Location: LCCOMB_X89_Y14_N12
\PrefixNetwork|Recur:Inner|Recur:gPair[8]\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Recur:gPair[8]~combout\ = (\PrefixNetwork|Recur:gPair[17]~0_combout\) # ((p(34) & (p(35) & \PrefixNetwork|Recur:gPair[16]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(34),
	datab => \PrefixNetwork|Recur:gPair[17]~0_combout\,
	datac => p(35),
	datad => \PrefixNetwork|Recur:gPair[16]~0_combout\,
	combout => \PrefixNetwork|Recur:Inner|Recur:gPair[8]~combout\);

-- Location: LCCOMB_X105_Y18_N8
\c~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \c~49_combout\ = (\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:Inner|Recur:pPair[0]~4_combout\ & (p(35) & (\c~48_combout\ & \c~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:Inner|Recur:pPair[0]~4_combout\,
	datab => p(35),
	datac => \c~48_combout\,
	datad => \c~43_combout\,
	combout => \c~49_combout\);

-- Location: LCCOMB_X105_Y18_N2
\PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~3_combout\ = (\c~48_combout\ & (p(35) & ((\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:gPair[1]~combout\) # (\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:Inner|gPair~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c~48_combout\,
	datab => p(35),
	datac => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:gPair[1]~combout\,
	datad => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:Inner|gPair~0_combout\,
	combout => \PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~3_combout\);

-- Location: LCCOMB_X105_Y18_N24
\S~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~52_combout\ = p(36) $ (((\PrefixNetwork|Recur:Inner|Recur:gPair[8]~combout\) # ((\c~49_combout\) # (\PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(36),
	datab => \PrefixNetwork|Recur:Inner|Recur:gPair[8]~combout\,
	datac => \c~49_combout\,
	datad => \PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~3_combout\,
	combout => \S~52_combout\);

-- Location: LCCOMB_X105_Y18_N26
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

-- Location: IOIBUF_X115_Y14_N1
\B[37]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(37),
	o => \B[37]~input_o\);

-- Location: IOIBUF_X91_Y0_N15
\A[37]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(37),
	o => \A[37]~input_o\);

-- Location: LCCOMB_X89_Y14_N16
\p[37]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(37) = \B[37]~input_o\ $ (\A[37]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[37]~input_o\,
	datad => \A[37]~input_o\,
	combout => p(37));

-- Location: LCCOMB_X105_Y18_N0
\S~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~53_combout\ = p(37) $ (((\PrefixNetwork|Gpre[36]~16_combout\) # ((p(36) & \c~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(36),
	datab => \c~49_combout\,
	datac => \PrefixNetwork|Gpre[36]~16_combout\,
	datad => p(37),
	combout => \S~53_combout\);

-- Location: IOIBUF_X98_Y0_N22
\A[38]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(38),
	o => \A[38]~input_o\);

-- Location: IOIBUF_X89_Y0_N15
\B[38]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(38),
	o => \B[38]~input_o\);

-- Location: LCCOMB_X89_Y14_N10
\p[38]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(38) = \A[38]~input_o\ $ (\B[38]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[38]~input_o\,
	datad => \B[38]~input_o\,
	combout => p(38));

-- Location: LCCOMB_X105_Y18_N14
\c~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \c~78_combout\ = (\c~49_combout\ & (p(37) & (\A[36]~input_o\ $ (\B[36]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[36]~input_o\,
	datab => \B[36]~input_o\,
	datac => \c~49_combout\,
	datad => p(37),
	combout => \c~78_combout\);

-- Location: LCCOMB_X91_Y14_N12
\PrefixNetwork|Recur:gPair[18]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:gPair[18]~0_combout\ = (\A[37]~input_o\ & ((\B[37]~input_o\) # ((\B[36]~input_o\ & \A[36]~input_o\)))) # (!\A[37]~input_o\ & (\B[37]~input_o\ & (\B[36]~input_o\ & \A[36]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[37]~input_o\,
	datab => \B[37]~input_o\,
	datac => \B[36]~input_o\,
	datad => \A[36]~input_o\,
	combout => \PrefixNetwork|Recur:gPair[18]~0_combout\);

-- Location: LCCOMB_X105_Y18_N6
\PrefixNetwork|Recur:Inner|Gpre~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Gpre~10_combout\ = (p(37) & (p(36) & ((\PrefixNetwork|Recur:Inner|Recur:gPair[8]~combout\) # (\PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(37),
	datab => \PrefixNetwork|Recur:Inner|Recur:gPair[8]~combout\,
	datac => p(36),
	datad => \PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~3_combout\,
	combout => \PrefixNetwork|Recur:Inner|Gpre~10_combout\);

-- Location: LCCOMB_X105_Y18_N4
\S~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~54_combout\ = p(38) $ (((\c~78_combout\) # ((\PrefixNetwork|Recur:gPair[18]~0_combout\) # (\PrefixNetwork|Recur:Inner|Gpre~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(38),
	datab => \c~78_combout\,
	datac => \PrefixNetwork|Recur:gPair[18]~0_combout\,
	datad => \PrefixNetwork|Recur:Inner|Gpre~10_combout\,
	combout => \S~54_combout\);

-- Location: IOIBUF_X85_Y0_N1
\A[39]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(39),
	o => \A[39]~input_o\);

-- Location: IOIBUF_X85_Y0_N8
\B[39]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(39),
	o => \B[39]~input_o\);

-- Location: LCCOMB_X88_Y14_N0
\p[39]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(39) = \A[39]~input_o\ $ (\B[39]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[39]~input_o\,
	datad => \B[39]~input_o\,
	combout => p(39));

-- Location: LCCOMB_X105_Y18_N10
\PrefixNetwork|Gpre[38]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gpre[38]~17_combout\ = (\B[38]~input_o\ & ((\A[38]~input_o\) # ((\PrefixNetwork|Recur:gPair[18]~0_combout\) # (\PrefixNetwork|Recur:Inner|Gpre~10_combout\)))) # (!\B[38]~input_o\ & (\A[38]~input_o\ & 
-- ((\PrefixNetwork|Recur:gPair[18]~0_combout\) # (\PrefixNetwork|Recur:Inner|Gpre~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[38]~input_o\,
	datab => \A[38]~input_o\,
	datac => \PrefixNetwork|Recur:gPair[18]~0_combout\,
	datad => \PrefixNetwork|Recur:Inner|Gpre~10_combout\,
	combout => \PrefixNetwork|Gpre[38]~17_combout\);

-- Location: LCCOMB_X105_Y18_N28
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

-- Location: LCCOMB_X89_Y14_N20
\PrefixNetwork|Recur:Inner|Recur:Inner|gPair~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Recur:Inner|gPair~3_combout\ = (p(38) & (p(37) & (p(39) & p(36))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(38),
	datab => p(37),
	datac => p(39),
	datad => p(36),
	combout => \PrefixNetwork|Recur:Inner|Recur:Inner|gPair~3_combout\);

-- Location: LCCOMB_X89_Y14_N22
\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[4]~0_combout\ = (p(34) & (\PrefixNetwork|Recur:Inner|Gpre~8_combout\ & (p(35) & \PrefixNetwork|Recur:Inner|Recur:Inner|gPair~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(34),
	datab => \PrefixNetwork|Recur:Inner|Gpre~8_combout\,
	datac => p(35),
	datad => \PrefixNetwork|Recur:Inner|Recur:Inner|gPair~3_combout\,
	combout => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[4]~0_combout\);

-- Location: LCCOMB_X113_Y18_N14
\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Gpre~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Gpre~1_combout\ = (\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[4]~0_combout\ & ((\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:gPair[1]~combout\) # 
-- ((\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|gPair~1_combout\ & \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Gpre~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|gPair~1_combout\,
	datab => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Gpre~0_combout\,
	datac => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[4]~0_combout\,
	datad => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:gPair[1]~combout\,
	combout => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Gpre~1_combout\);

-- Location: IOIBUF_X96_Y0_N15
\A[40]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(40),
	o => \A[40]~input_o\);

-- Location: IOIBUF_X96_Y0_N22
\B[40]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(40),
	o => \B[40]~input_o\);

-- Location: LCCOMB_X92_Y14_N8
\p[40]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(40) = \A[40]~input_o\ $ (\B[40]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[40]~input_o\,
	datad => \B[40]~input_o\,
	combout => p(40));

-- Location: LCCOMB_X88_Y14_N10
\PrefixNetwork|Recur:gPair[19]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:gPair[19]~0_combout\ = (\A[39]~input_o\ & ((\B[39]~input_o\) # ((\A[38]~input_o\ & \B[38]~input_o\)))) # (!\A[39]~input_o\ & (\A[38]~input_o\ & (\B[38]~input_o\ & \B[39]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[38]~input_o\,
	datab => \B[38]~input_o\,
	datac => \A[39]~input_o\,
	datad => \B[39]~input_o\,
	combout => \PrefixNetwork|Recur:gPair[19]~0_combout\);

-- Location: LCCOMB_X88_Y14_N28
\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[4]~0_combout\ = (\PrefixNetwork|Recur:gPair[19]~0_combout\) # ((p(39) & (p(38) & \PrefixNetwork|Recur:gPair[18]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Recur:gPair[19]~0_combout\,
	datab => p(39),
	datac => p(38),
	datad => \PrefixNetwork|Recur:gPair[18]~0_combout\,
	combout => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[4]~0_combout\);

-- Location: LCCOMB_X88_Y14_N2
\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[4]~combout\ = (\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[4]~0_combout\) # ((\PrefixNetwork|Recur:Inner|Recur:gPair[8]~combout\ & \PrefixNetwork|Recur:Inner|Recur:Inner|gPair~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PrefixNetwork|Recur:Inner|Recur:gPair[8]~combout\,
	datac => \PrefixNetwork|Recur:Inner|Recur:Inner|gPair~3_combout\,
	datad => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[4]~0_combout\,
	combout => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[4]~combout\);

-- Location: LCCOMB_X113_Y18_N20
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

-- Location: LCCOMB_X91_Y14_N6
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

-- Location: IOIBUF_X74_Y0_N8
\B[41]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(41),
	o => \B[41]~input_o\);

-- Location: IOIBUF_X85_Y0_N22
\A[41]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(41),
	o => \A[41]~input_o\);

-- Location: LCCOMB_X88_Y14_N24
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

-- Location: LCCOMB_X91_Y14_N8
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

-- Location: LCCOMB_X91_Y14_N30
\S~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~57_combout\ = p(41) $ (((\PrefixNetwork|Gpre[40]~18_combout\) # ((p(40) & \c~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(41),
	datab => p(40),
	datac => \PrefixNetwork|Gpre[40]~18_combout\,
	datad => \c~50_combout\,
	combout => \S~57_combout\);

-- Location: IOIBUF_X65_Y0_N8
\A[42]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(42),
	o => \A[42]~input_o\);

-- Location: IOIBUF_X91_Y0_N22
\B[42]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(42),
	o => \B[42]~input_o\);

-- Location: LCCOMB_X88_Y14_N6
\PrefixNetwork|Recur:gPair[20]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:gPair[20]~0_combout\ = (\A[41]~input_o\ & ((\B[41]~input_o\) # ((\A[40]~input_o\ & \B[40]~input_o\)))) # (!\A[41]~input_o\ & (\A[40]~input_o\ & (\B[41]~input_o\ & \B[40]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[40]~input_o\,
	datab => \A[41]~input_o\,
	datac => \B[41]~input_o\,
	datad => \B[40]~input_o\,
	combout => \PrefixNetwork|Recur:gPair[20]~0_combout\);

-- Location: LCCOMB_X91_Y14_N26
\c[42]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[42]~51_combout\ = (\PrefixNetwork|Recur:gPair[20]~0_combout\) # ((p(40) & (p(41) & \c~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Recur:gPair[20]~0_combout\,
	datab => p(40),
	datac => p(41),
	datad => \c~50_combout\,
	combout => \c[42]~51_combout\);

-- Location: LCCOMB_X91_Y14_N28
\PrefixNetwork|Recur:Inner|Gpre~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Gpre~11_combout\ = (p(41) & (p(40) & ((\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[4]~combout\) # (\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Gpre~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(41),
	datab => p(40),
	datac => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[4]~combout\,
	datad => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Gpre~1_combout\,
	combout => \PrefixNetwork|Recur:Inner|Gpre~11_combout\);

-- Location: LCCOMB_X91_Y14_N2
\S~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~78_combout\ = \A[42]~input_o\ $ (\B[42]~input_o\ $ (((\c[42]~51_combout\) # (\PrefixNetwork|Recur:Inner|Gpre~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[42]~input_o\,
	datab => \B[42]~input_o\,
	datac => \c[42]~51_combout\,
	datad => \PrefixNetwork|Recur:Inner|Gpre~11_combout\,
	combout => \S~78_combout\);

-- Location: IOIBUF_X87_Y0_N15
\A[43]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(43),
	o => \A[43]~input_o\);

-- Location: IOIBUF_X65_Y0_N1
\B[43]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(43),
	o => \B[43]~input_o\);

-- Location: LCCOMB_X88_Y14_N8
\p[42]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(42) = \B[42]~input_o\ $ (\A[42]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[42]~input_o\,
	datad => \A[42]~input_o\,
	combout => p(42));

-- Location: LCCOMB_X91_Y14_N22
\c~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \c~52_combout\ = (p(41) & (p(40) & (p(42) & \c~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(41),
	datab => p(40),
	datac => p(42),
	datad => \c~50_combout\,
	combout => \c~52_combout\);

-- Location: LCCOMB_X91_Y14_N16
\PrefixNetwork|Gpre[42]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gpre[42]~19_combout\ = (\B[42]~input_o\ & ((\PrefixNetwork|Recur:gPair[20]~0_combout\) # ((\A[42]~input_o\) # (\PrefixNetwork|Recur:Inner|Gpre~11_combout\)))) # (!\B[42]~input_o\ & (\A[42]~input_o\ & 
-- ((\PrefixNetwork|Recur:gPair[20]~0_combout\) # (\PrefixNetwork|Recur:Inner|Gpre~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Recur:gPair[20]~0_combout\,
	datab => \B[42]~input_o\,
	datac => \A[42]~input_o\,
	datad => \PrefixNetwork|Recur:Inner|Gpre~11_combout\,
	combout => \PrefixNetwork|Gpre[42]~19_combout\);

-- Location: LCCOMB_X91_Y14_N4
\S~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~79_combout\ = \A[43]~input_o\ $ (\B[43]~input_o\ $ (((\c~52_combout\) # (\PrefixNetwork|Gpre[42]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[43]~input_o\,
	datab => \B[43]~input_o\,
	datac => \c~52_combout\,
	datad => \PrefixNetwork|Gpre[42]~19_combout\,
	combout => \S~79_combout\);

-- Location: LCCOMB_X88_Y14_N14
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

-- Location: LCCOMB_X88_Y14_N16
\PrefixNetwork|Recur:Inner|Recur:pPair[10]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Recur:pPair[10]~0_combout\ = (p(40) & (p(43) & (p(42) & p(41))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(40),
	datab => p(43),
	datac => p(42),
	datad => p(41),
	combout => \PrefixNetwork|Recur:Inner|Recur:pPair[10]~0_combout\);

-- Location: LCCOMB_X87_Y14_N10
\c~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \c~53_combout\ = (\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[4]~0_combout\ & (\PrefixNetwork|Recur:Inner|Recur:pPair[10]~0_combout\ & (\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:Inner|Recur:pPair[0]~4_combout\ & \c~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[4]~0_combout\,
	datab => \PrefixNetwork|Recur:Inner|Recur:pPair[10]~0_combout\,
	datac => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:Inner|Recur:pPair[0]~4_combout\,
	datad => \c~43_combout\,
	combout => \c~53_combout\);

-- Location: LCCOMB_X88_Y14_N12
\PrefixNetwork|Recur:gPair[21]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:gPair[21]~0_combout\ = (\B[43]~input_o\ & ((\A[43]~input_o\) # ((\B[42]~input_o\ & \A[42]~input_o\)))) # (!\B[43]~input_o\ & (\B[42]~input_o\ & (\A[43]~input_o\ & \A[42]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[43]~input_o\,
	datab => \B[42]~input_o\,
	datac => \A[43]~input_o\,
	datad => \A[42]~input_o\,
	combout => \PrefixNetwork|Recur:gPair[21]~0_combout\);

-- Location: LCCOMB_X88_Y14_N22
\PrefixNetwork|Recur:Inner|Recur:gPair[10]\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Recur:gPair[10]~combout\ = (\PrefixNetwork|Recur:gPair[21]~0_combout\) # ((\PrefixNetwork|Recur:gPair[20]~0_combout\ & (p(43) & p(42))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Recur:gPair[20]~0_combout\,
	datab => p(43),
	datac => p(42),
	datad => \PrefixNetwork|Recur:gPair[21]~0_combout\,
	combout => \PrefixNetwork|Recur:Inner|Recur:gPair[10]~combout\);

-- Location: IOIBUF_X85_Y0_N15
\A[44]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(44),
	o => \A[44]~input_o\);

-- Location: IOIBUF_X81_Y0_N15
\B[44]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(44),
	o => \B[44]~input_o\);

-- Location: LCCOMB_X87_Y14_N4
\p[44]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(44) = \A[44]~input_o\ $ (\B[44]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[44]~input_o\,
	datad => \B[44]~input_o\,
	combout => p(44));

-- Location: LCCOMB_X87_Y14_N12
\PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~4_combout\ = (\PrefixNetwork|Recur:Inner|Recur:pPair[10]~0_combout\ & ((\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[4]~combout\) # (\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Gpre~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PrefixNetwork|Recur:Inner|Recur:pPair[10]~0_combout\,
	datac => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[4]~combout\,
	datad => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Gpre~1_combout\,
	combout => \PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~4_combout\);

-- Location: LCCOMB_X87_Y14_N22
\S~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~58_combout\ = p(44) $ (((\c~53_combout\) # ((\PrefixNetwork|Recur:Inner|Recur:gPair[10]~combout\) # (\PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c~53_combout\,
	datab => \PrefixNetwork|Recur:Inner|Recur:gPair[10]~combout\,
	datac => p(44),
	datad => \PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~4_combout\,
	combout => \S~58_combout\);

-- Location: IOIBUF_X87_Y0_N22
\B[45]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(45),
	o => \B[45]~input_o\);

-- Location: IOIBUF_X83_Y0_N22
\A[45]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(45),
	o => \A[45]~input_o\);

-- Location: LCCOMB_X87_Y14_N14
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

-- Location: LCCOMB_X87_Y14_N20
\PrefixNetwork|Gpre[44]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gpre[44]~20_combout\ = (\B[44]~input_o\ & ((\PrefixNetwork|Recur:Inner|Recur:gPair[10]~combout\) # ((\A[44]~input_o\) # (\PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~4_combout\)))) # (!\B[44]~input_o\ & (\A[44]~input_o\ & 
-- ((\PrefixNetwork|Recur:Inner|Recur:gPair[10]~combout\) # (\PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[44]~input_o\,
	datab => \PrefixNetwork|Recur:Inner|Recur:gPair[10]~combout\,
	datac => \A[44]~input_o\,
	datad => \PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~4_combout\,
	combout => \PrefixNetwork|Gpre[44]~20_combout\);

-- Location: LCCOMB_X87_Y14_N16
\S~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~59_combout\ = p(45) $ (((\PrefixNetwork|Gpre[44]~20_combout\) # ((\c~53_combout\ & p(44)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c~53_combout\,
	datab => p(44),
	datac => p(45),
	datad => \PrefixNetwork|Gpre[44]~20_combout\,
	combout => \S~59_combout\);

-- Location: IOIBUF_X72_Y0_N8
\A[46]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(46),
	o => \A[46]~input_o\);

-- Location: IOIBUF_X81_Y0_N22
\B[46]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(46),
	o => \B[46]~input_o\);

-- Location: LCCOMB_X87_Y14_N0
\PrefixNetwork|Recur:gPair[22]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:gPair[22]~0_combout\ = (\A[45]~input_o\ & ((\B[45]~input_o\) # ((\A[44]~input_o\ & \B[44]~input_o\)))) # (!\A[45]~input_o\ & (\A[44]~input_o\ & (\B[45]~input_o\ & \B[44]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[44]~input_o\,
	datab => \A[45]~input_o\,
	datac => \B[45]~input_o\,
	datad => \B[44]~input_o\,
	combout => \PrefixNetwork|Recur:gPair[22]~0_combout\);

-- Location: LCCOMB_X87_Y14_N26
\c~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \c~54_combout\ = (\PrefixNetwork|Recur:Inner|Recur:pPair[10]~0_combout\ & (p(45) & (\A[44]~input_o\ $ (\B[44]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[44]~input_o\,
	datab => \PrefixNetwork|Recur:Inner|Recur:pPair[10]~0_combout\,
	datac => p(45),
	datad => \B[44]~input_o\,
	combout => \c~54_combout\);

-- Location: LCCOMB_X87_Y14_N8
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

-- Location: LCCOMB_X87_Y14_N2
\PrefixNetwork|Recur:Inner|Gpre~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Gpre~12_combout\ = (p(44) & (p(45) & ((\PrefixNetwork|Recur:Inner|Recur:gPair[10]~combout\) # (\PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(44),
	datab => \PrefixNetwork|Recur:Inner|Recur:gPair[10]~combout\,
	datac => p(45),
	datad => \PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~4_combout\,
	combout => \PrefixNetwork|Recur:Inner|Gpre~12_combout\);

-- Location: LCCOMB_X87_Y14_N30
\S~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~60_combout\ = \A[46]~input_o\ $ (\B[46]~input_o\ $ (((\c[46]~55_combout\) # (\PrefixNetwork|Recur:Inner|Gpre~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[46]~input_o\,
	datab => \B[46]~input_o\,
	datac => \c[46]~55_combout\,
	datad => \PrefixNetwork|Recur:Inner|Gpre~12_combout\,
	combout => \S~60_combout\);

-- Location: IOIBUF_X79_Y0_N22
\B[47]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(47),
	o => \B[47]~input_o\);

-- Location: IOIBUF_X79_Y0_N15
\A[47]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(47),
	o => \A[47]~input_o\);

-- Location: LCCOMB_X87_Y14_N6
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

-- Location: LCCOMB_X88_Y14_N26
\c~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \c~56_combout\ = (\A[46]~input_o\ & (!\B[46]~input_o\ & (\A[44]~input_o\ $ (\B[44]~input_o\)))) # (!\A[46]~input_o\ & (\B[46]~input_o\ & (\A[44]~input_o\ $ (\B[44]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[46]~input_o\,
	datab => \B[46]~input_o\,
	datac => \A[44]~input_o\,
	datad => \B[44]~input_o\,
	combout => \c~56_combout\);

-- Location: LCCOMB_X88_Y14_N30
\c~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \c~79_combout\ = (\c~56_combout\ & (\PrefixNetwork|Recur:Inner|Recur:pPair[10]~0_combout\ & (\B[45]~input_o\ $ (\A[45]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[45]~input_o\,
	datab => \A[45]~input_o\,
	datac => \c~56_combout\,
	datad => \PrefixNetwork|Recur:Inner|Recur:pPair[10]~0_combout\,
	combout => \c~79_combout\);

-- Location: LCCOMB_X87_Y14_N24
\PrefixNetwork|Gpre[46]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gpre[46]~21_combout\ = (\A[46]~input_o\ & ((\PrefixNetwork|Recur:gPair[22]~0_combout\) # ((\B[46]~input_o\) # (\PrefixNetwork|Recur:Inner|Gpre~12_combout\)))) # (!\A[46]~input_o\ & (\B[46]~input_o\ & 
-- ((\PrefixNetwork|Recur:gPair[22]~0_combout\) # (\PrefixNetwork|Recur:Inner|Gpre~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[46]~input_o\,
	datab => \PrefixNetwork|Recur:gPair[22]~0_combout\,
	datac => \B[46]~input_o\,
	datad => \PrefixNetwork|Recur:Inner|Gpre~12_combout\,
	combout => \PrefixNetwork|Gpre[46]~21_combout\);

-- Location: LCCOMB_X87_Y14_N28
\S~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~61_combout\ = p(47) $ (((\PrefixNetwork|Gpre[46]~21_combout\) # ((\c~50_combout\ & \c~79_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c~50_combout\,
	datab => p(47),
	datac => \c~79_combout\,
	datad => \PrefixNetwork|Gpre[46]~21_combout\,
	combout => \S~61_combout\);

-- Location: LCCOMB_X89_Y14_N4
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

-- Location: LCCOMB_X89_Y14_N26
\PrefixNetwork|Recur:Inner|gPair~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|gPair~2_combout\ = (\B[47]~input_o\ & (!\A[47]~input_o\ & (\A[46]~input_o\ $ (\B[46]~input_o\)))) # (!\B[47]~input_o\ & (\A[47]~input_o\ & (\A[46]~input_o\ $ (\B[46]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[47]~input_o\,
	datab => \A[46]~input_o\,
	datac => \A[47]~input_o\,
	datad => \B[46]~input_o\,
	combout => \PrefixNetwork|Recur:Inner|gPair~2_combout\);

-- Location: LCCOMB_X89_Y14_N30
\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:pPair[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:pPair[2]~4_combout\ = (\PrefixNetwork|Recur:Inner|gPair~2_combout\ & (\PrefixNetwork|Recur:Inner|Gpre~8_combout\ & (\A[45]~input_o\ $ (\B[45]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[45]~input_o\,
	datab => \B[45]~input_o\,
	datac => \PrefixNetwork|Recur:Inner|gPair~2_combout\,
	datad => \PrefixNetwork|Recur:Inner|Gpre~8_combout\,
	combout => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:pPair[2]~4_combout\);

-- Location: LCCOMB_X89_Y14_N0
\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:pPair[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:pPair[2]~3_combout\ = (\PrefixNetwork|Recur:Inner|Recur:pPair[10]~0_combout\ & (\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:pPair[2]~2_combout\ & 
-- (\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:pPair[2]~4_combout\ & \PrefixNetwork|Recur:Inner|Recur:Inner|gPair~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Recur:Inner|Recur:pPair[10]~0_combout\,
	datab => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:pPair[2]~2_combout\,
	datac => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:pPair[2]~4_combout\,
	datad => \PrefixNetwork|Recur:Inner|Recur:Inner|gPair~3_combout\,
	combout => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:pPair[2]~3_combout\);

-- Location: LCCOMB_X113_Y18_N12
\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:Inner|Gpre~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:Inner|Gpre~0_combout\ = (\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:pPair[2]~3_combout\ & ((\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:gPair[1]~combout\) # 
-- ((\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|gPair~1_combout\ & \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Gpre~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:gPair[1]~combout\,
	datab => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|gPair~1_combout\,
	datac => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Gpre~0_combout\,
	datad => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:pPair[2]~3_combout\,
	combout => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:Inner|Gpre~0_combout\);

-- Location: LCCOMB_X87_Y14_N18
\PrefixNetwork|Recur:gPair[23]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:gPair[23]~0_combout\ = (\B[47]~input_o\ & ((\A[47]~input_o\) # ((\A[46]~input_o\ & \B[46]~input_o\)))) # (!\B[47]~input_o\ & (\A[46]~input_o\ & (\B[46]~input_o\ & \A[47]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[46]~input_o\,
	datab => \B[47]~input_o\,
	datac => \B[46]~input_o\,
	datad => \A[47]~input_o\,
	combout => \PrefixNetwork|Recur:gPair[23]~0_combout\);

-- Location: LCCOMB_X88_Y14_N20
\PrefixNetwork|Recur:Inner|Recur:Inner|gPair~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Recur:Inner|gPair~4_combout\ = (\PrefixNetwork|Recur:Inner|Recur:gPair[10]~combout\ & (p(45) & (\B[44]~input_o\ $ (\A[44]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[44]~input_o\,
	datab => \A[44]~input_o\,
	datac => \PrefixNetwork|Recur:Inner|Recur:gPair[10]~combout\,
	datad => p(45),
	combout => \PrefixNetwork|Recur:Inner|Recur:Inner|gPair~4_combout\);

-- Location: LCCOMB_X88_Y14_N18
\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:gPair[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:gPair[2]~0_combout\ = (\PrefixNetwork|Recur:gPair[23]~0_combout\) # ((\PrefixNetwork|Recur:Inner|gPair~2_combout\ & ((\PrefixNetwork|Recur:gPair[22]~0_combout\) # 
-- (\PrefixNetwork|Recur:Inner|Recur:Inner|gPair~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Recur:Inner|gPair~2_combout\,
	datab => \PrefixNetwork|Recur:gPair[23]~0_combout\,
	datac => \PrefixNetwork|Recur:gPair[22]~0_combout\,
	datad => \PrefixNetwork|Recur:Inner|Recur:Inner|gPair~4_combout\,
	combout => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:gPair[2]~0_combout\);

-- Location: LCCOMB_X88_Y14_N4
\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:gPair[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:gPair[2]~combout\ = (\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:gPair[2]~0_combout\) # ((\c~79_combout\ & (p(47) & \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[4]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c~79_combout\,
	datab => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:gPair[2]~0_combout\,
	datac => p(47),
	datad => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[4]~combout\,
	combout => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:gPair[2]~combout\);

-- Location: IOIBUF_X67_Y0_N1
\B[48]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(48),
	o => \B[48]~input_o\);

-- Location: IOIBUF_X67_Y0_N22
\A[48]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(48),
	o => \A[48]~input_o\);

-- Location: LCCOMB_X90_Y14_N10
\p[48]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(48) = \B[48]~input_o\ $ (\A[48]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[48]~input_o\,
	datac => \A[48]~input_o\,
	combout => p(48));

-- Location: LCCOMB_X90_Y14_N16
\c~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \c~57_combout\ = (\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:Inner|Recur:pPair[0]~4_combout\ & (\PrefixNetwork|Recur:Inner|Recur:pPair[6]~0_combout\ & (\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:pPair[2]~3_combout\ & 
-- \c~77_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:Inner|Recur:pPair[0]~4_combout\,
	datab => \PrefixNetwork|Recur:Inner|Recur:pPair[6]~0_combout\,
	datac => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:pPair[2]~3_combout\,
	datad => \c~77_combout\,
	combout => \c~57_combout\);

-- Location: LCCOMB_X114_Y18_N4
\S~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~62_combout\ = p(48) $ (((\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:Inner|Gpre~0_combout\) # ((\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:gPair[2]~combout\) # (\c~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:Inner|Gpre~0_combout\,
	datab => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:gPair[2]~combout\,
	datac => p(48),
	datad => \c~57_combout\,
	combout => \S~62_combout\);

-- Location: IOIBUF_X67_Y0_N8
\A[49]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(49),
	o => \A[49]~input_o\);

-- Location: IOIBUF_X67_Y0_N15
\B[49]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(49),
	o => \B[49]~input_o\);

-- Location: LCCOMB_X91_Y14_N0
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

-- Location: LCCOMB_X90_Y14_N12
\PrefixNetwork|Gpre[48]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gpre[48]~22_combout\ = (\A[48]~input_o\ & ((\B[48]~input_o\) # ((\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:gPair[2]~combout\) # (\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:Inner|Gpre~0_combout\)))) # 
-- (!\A[48]~input_o\ & (\B[48]~input_o\ & ((\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:gPair[2]~combout\) # (\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:Inner|Gpre~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[48]~input_o\,
	datab => \B[48]~input_o\,
	datac => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:gPair[2]~combout\,
	datad => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:Inner|Gpre~0_combout\,
	combout => \PrefixNetwork|Gpre[48]~22_combout\);

-- Location: LCCOMB_X90_Y14_N6
\S~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~63_combout\ = p(49) $ (((\PrefixNetwork|Gpre[48]~22_combout\) # ((p(48) & \c~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(48),
	datab => \c~57_combout\,
	datac => p(49),
	datad => \PrefixNetwork|Gpre[48]~22_combout\,
	combout => \S~63_combout\);

-- Location: IOIBUF_X69_Y0_N8
\A[50]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(50),
	o => \A[50]~input_o\);

-- Location: IOIBUF_X74_Y0_N1
\B[50]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(50),
	o => \B[50]~input_o\);

-- Location: LCCOMB_X90_Y14_N18
\PrefixNetwork|Recur:gPair[24]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:gPair[24]~0_combout\ = (\A[49]~input_o\ & ((\B[49]~input_o\) # ((\A[48]~input_o\ & \B[48]~input_o\)))) # (!\A[49]~input_o\ & (\A[48]~input_o\ & (\B[48]~input_o\ & \B[49]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[48]~input_o\,
	datab => \B[48]~input_o\,
	datac => \A[49]~input_o\,
	datad => \B[49]~input_o\,
	combout => \PrefixNetwork|Recur:gPair[24]~0_combout\);

-- Location: LCCOMB_X90_Y14_N4
\c[50]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[50]~58_combout\ = (\PrefixNetwork|Recur:gPair[24]~0_combout\) # ((p(48) & (p(49) & \c~57_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(48),
	datab => \PrefixNetwork|Recur:gPair[24]~0_combout\,
	datac => p(49),
	datad => \c~57_combout\,
	combout => \c[50]~58_combout\);

-- Location: LCCOMB_X90_Y14_N0
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

-- Location: LCCOMB_X90_Y14_N24
\S~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~80_combout\ = \A[50]~input_o\ $ (\B[50]~input_o\ $ (((\c[50]~58_combout\) # (\PrefixNetwork|Recur:Inner|Gpre~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[50]~input_o\,
	datab => \B[50]~input_o\,
	datac => \c[50]~58_combout\,
	datad => \PrefixNetwork|Recur:Inner|Gpre~13_combout\,
	combout => \S~80_combout\);

-- Location: IOIBUF_X72_Y0_N1
\B[51]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(51),
	o => \B[51]~input_o\);

-- Location: IOIBUF_X69_Y0_N1
\A[51]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(51),
	o => \A[51]~input_o\);

-- Location: LCCOMB_X90_Y14_N30
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

-- Location: LCCOMB_X90_Y14_N14
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

-- Location: LCCOMB_X90_Y14_N20
\PrefixNetwork|Gpre[50]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gpre[50]~23_combout\ = (\A[50]~input_o\ & ((\PrefixNetwork|Recur:gPair[24]~0_combout\) # ((\B[50]~input_o\) # (\PrefixNetwork|Recur:Inner|Gpre~13_combout\)))) # (!\A[50]~input_o\ & (\B[50]~input_o\ & 
-- ((\PrefixNetwork|Recur:gPair[24]~0_combout\) # (\PrefixNetwork|Recur:Inner|Gpre~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[50]~input_o\,
	datab => \PrefixNetwork|Recur:gPair[24]~0_combout\,
	datac => \B[50]~input_o\,
	datad => \PrefixNetwork|Recur:Inner|Gpre~13_combout\,
	combout => \PrefixNetwork|Gpre[50]~23_combout\);

-- Location: LCCOMB_X90_Y14_N26
\S~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~81_combout\ = \B[51]~input_o\ $ (\A[51]~input_o\ $ (((\c~59_combout\) # (\PrefixNetwork|Gpre[50]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[51]~input_o\,
	datab => \A[51]~input_o\,
	datac => \c~59_combout\,
	datad => \PrefixNetwork|Gpre[50]~23_combout\,
	combout => \S~81_combout\);

-- Location: LCCOMB_X90_Y14_N28
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

-- Location: LCCOMB_X90_Y14_N2
\PrefixNetwork|Recur:Inner|Recur:pPair[12]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Recur:pPair[12]~0_combout\ = (p(50) & (p(51) & (p(49) & p(48))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(50),
	datab => p(51),
	datac => p(49),
	datad => p(48),
	combout => \PrefixNetwork|Recur:Inner|Recur:pPair[12]~0_combout\);

-- Location: LCCOMB_X113_Y18_N2
\c~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \c~60_combout\ = (\c~43_combout\ & (\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:Inner|Recur:pPair[0]~4_combout\ & (\PrefixNetwork|Recur:Inner|Recur:pPair[12]~0_combout\ & 
-- \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:pPair[2]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c~43_combout\,
	datab => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:Inner|Recur:pPair[0]~4_combout\,
	datac => \PrefixNetwork|Recur:Inner|Recur:pPair[12]~0_combout\,
	datad => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:pPair[2]~3_combout\,
	combout => \c~60_combout\);

-- Location: IOIBUF_X109_Y0_N8
\B[52]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(52),
	o => \B[52]~input_o\);

-- Location: IOIBUF_X109_Y0_N1
\A[52]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(52),
	o => \A[52]~input_o\);

-- Location: LCCOMB_X113_Y14_N24
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

-- Location: LCCOMB_X90_Y14_N8
\PrefixNetwork|Recur:gPair[25]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:gPair[25]~0_combout\ = (\B[51]~input_o\ & ((\A[51]~input_o\) # ((\B[50]~input_o\ & \A[50]~input_o\)))) # (!\B[51]~input_o\ & (\B[50]~input_o\ & (\A[51]~input_o\ & \A[50]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[51]~input_o\,
	datab => \B[50]~input_o\,
	datac => \A[51]~input_o\,
	datad => \A[50]~input_o\,
	combout => \PrefixNetwork|Recur:gPair[25]~0_combout\);

-- Location: LCCOMB_X90_Y14_N22
\PrefixNetwork|Recur:Inner|Recur:gPair[12]\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Recur:gPair[12]~combout\ = (\PrefixNetwork|Recur:gPair[25]~0_combout\) # ((p(50) & (p(51) & \PrefixNetwork|Recur:gPair[24]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(50),
	datab => p(51),
	datac => \PrefixNetwork|Recur:gPair[25]~0_combout\,
	datad => \PrefixNetwork|Recur:gPair[24]~0_combout\,
	combout => \PrefixNetwork|Recur:Inner|Recur:gPair[12]~combout\);

-- Location: LCCOMB_X114_Y14_N20
\PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~5_combout\ = (\PrefixNetwork|Recur:Inner|Recur:pPair[12]~0_combout\ & ((\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:Inner|Gpre~0_combout\) # 
-- (\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:gPair[2]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PrefixNetwork|Recur:Inner|Recur:pPair[12]~0_combout\,
	datac => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:Inner|Gpre~0_combout\,
	datad => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:gPair[2]~combout\,
	combout => \PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~5_combout\);

-- Location: LCCOMB_X114_Y14_N26
\S~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~64_combout\ = p(52) $ (((\c~60_combout\) # ((\PrefixNetwork|Recur:Inner|Recur:gPair[12]~combout\) # (\PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c~60_combout\,
	datab => p(52),
	datac => \PrefixNetwork|Recur:Inner|Recur:gPair[12]~combout\,
	datad => \PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~5_combout\,
	combout => \S~64_combout\);

-- Location: IOIBUF_X113_Y0_N1
\A[53]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(53),
	o => \A[53]~input_o\);

-- Location: IOIBUF_X111_Y0_N8
\B[53]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(53),
	o => \B[53]~input_o\);

-- Location: LCCOMB_X114_Y14_N10
\p[53]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(53) = \A[53]~input_o\ $ (\B[53]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[53]~input_o\,
	datac => \B[53]~input_o\,
	combout => p(53));

-- Location: LCCOMB_X114_Y14_N8
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

-- Location: LCCOMB_X114_Y14_N12
\S~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~65_combout\ = p(53) $ (((\PrefixNetwork|Gpre[52]~24_combout\) # ((p(52) & \c~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(53),
	datab => p(52),
	datac => \PrefixNetwork|Gpre[52]~24_combout\,
	datad => \c~60_combout\,
	combout => \S~65_combout\);

-- Location: IOIBUF_X113_Y0_N8
\B[54]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(54),
	o => \B[54]~input_o\);

-- Location: IOIBUF_X107_Y0_N8
\A[54]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(54),
	o => \A[54]~input_o\);

-- Location: LCCOMB_X114_Y14_N22
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

-- Location: LCCOMB_X113_Y14_N6
\PrefixNetwork|Recur:gPair[26]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:gPair[26]~0_combout\ = (\B[53]~input_o\ & ((\A[53]~input_o\) # ((\B[52]~input_o\ & \A[52]~input_o\)))) # (!\B[53]~input_o\ & (\B[52]~input_o\ & (\A[52]~input_o\ & \A[53]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[52]~input_o\,
	datab => \A[52]~input_o\,
	datac => \B[53]~input_o\,
	datad => \A[53]~input_o\,
	combout => \PrefixNetwork|Recur:gPair[26]~0_combout\);

-- Location: LCCOMB_X114_Y14_N0
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

-- Location: LCCOMB_X114_Y14_N14
\S~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~66_combout\ = \B[54]~input_o\ $ (\A[54]~input_o\ $ (((\PrefixNetwork|Recur:Inner|Gpre~14_combout\) # (\c[54]~61_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[54]~input_o\,
	datab => \A[54]~input_o\,
	datac => \PrefixNetwork|Recur:Inner|Gpre~14_combout\,
	datad => \c[54]~61_combout\,
	combout => \S~66_combout\);

-- Location: IOIBUF_X111_Y0_N1
\B[55]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(55),
	o => \B[55]~input_o\);

-- Location: IOIBUF_X115_Y6_N15
\A[55]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(55),
	o => \A[55]~input_o\);

-- Location: LCCOMB_X114_Y14_N2
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

-- Location: LCCOMB_X114_Y14_N16
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

-- Location: LCCOMB_X114_Y14_N18
\c~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \c~62_combout\ = (p(52) & (p(54) & (\B[53]~input_o\ $ (\A[53]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[53]~input_o\,
	datab => p(52),
	datac => \A[53]~input_o\,
	datad => p(54),
	combout => \c~62_combout\);

-- Location: LCCOMB_X114_Y14_N24
\PrefixNetwork|Gpre[54]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gpre[54]~25_combout\ = (\A[54]~input_o\ & ((\PrefixNetwork|Recur:gPair[26]~0_combout\) # ((\PrefixNetwork|Recur:Inner|Gpre~14_combout\) # (\B[54]~input_o\)))) # (!\A[54]~input_o\ & (\B[54]~input_o\ & 
-- ((\PrefixNetwork|Recur:gPair[26]~0_combout\) # (\PrefixNetwork|Recur:Inner|Gpre~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[54]~input_o\,
	datab => \PrefixNetwork|Recur:gPair[26]~0_combout\,
	datac => \PrefixNetwork|Recur:Inner|Gpre~14_combout\,
	datad => \B[54]~input_o\,
	combout => \PrefixNetwork|Gpre[54]~25_combout\);

-- Location: LCCOMB_X114_Y14_N4
\S~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~67_combout\ = p(55) $ (((\PrefixNetwork|Gpre[54]~25_combout\) # ((\c~60_combout\ & \c~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c~60_combout\,
	datab => p(55),
	datac => \c~62_combout\,
	datad => \PrefixNetwork|Gpre[54]~25_combout\,
	combout => \S~67_combout\);

-- Location: IOIBUF_X115_Y27_N8
\A[56]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(56),
	o => \A[56]~input_o\);

-- Location: IOIBUF_X115_Y24_N1
\B[56]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(56),
	o => \B[56]~input_o\);

-- Location: LCCOMB_X114_Y24_N20
\p[56]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(56) = \A[56]~input_o\ $ (\B[56]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[56]~input_o\,
	datad => \B[56]~input_o\,
	combout => p(56));

-- Location: LCCOMB_X114_Y14_N30
\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[6]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[6]~2_combout\ = (\PrefixNetwork|Recur:Inner|Recur:pPair[12]~0_combout\ & (\c~62_combout\ & (\B[55]~input_o\ $ (\A[55]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[55]~input_o\,
	datab => \A[55]~input_o\,
	datac => \PrefixNetwork|Recur:Inner|Recur:pPair[12]~0_combout\,
	datad => \c~62_combout\,
	combout => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[6]~2_combout\);

-- Location: LCCOMB_X114_Y22_N24
\c~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \c~63_combout\ = (\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[6]~2_combout\ & (\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:pPair[2]~3_combout\ & (\c~43_combout\ & 
-- \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:Inner|Recur:pPair[0]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[6]~2_combout\,
	datab => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:pPair[2]~3_combout\,
	datac => \c~43_combout\,
	datad => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:Inner|Recur:pPair[0]~4_combout\,
	combout => \c~63_combout\);

-- Location: LCCOMB_X114_Y14_N6
\PrefixNetwork|Recur:gPair[27]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:gPair[27]~0_combout\ = (\B[55]~input_o\ & ((\A[55]~input_o\) # ((\B[54]~input_o\ & \A[54]~input_o\)))) # (!\B[55]~input_o\ & (\B[54]~input_o\ & (\A[54]~input_o\ & \A[55]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[54]~input_o\,
	datab => \A[54]~input_o\,
	datac => \B[55]~input_o\,
	datad => \A[55]~input_o\,
	combout => \PrefixNetwork|Recur:gPair[27]~0_combout\);

-- Location: LCCOMB_X114_Y14_N28
\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[6]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[6]~0_combout\ = (\PrefixNetwork|Recur:gPair[27]~0_combout\) # ((p(54) & (\PrefixNetwork|Recur:gPair[26]~0_combout\ & p(55))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Recur:gPair[27]~0_combout\,
	datab => p(54),
	datac => \PrefixNetwork|Recur:gPair[26]~0_combout\,
	datad => p(55),
	combout => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[6]~0_combout\);

-- Location: LCCOMB_X113_Y18_N26
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

-- Location: LCCOMB_X113_Y18_N24
\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Gpre~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Gpre~2_combout\ = (\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[6]~2_combout\ & ((\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:gPair[2]~combout\) # 
-- (\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:Inner|Gpre~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[6]~2_combout\,
	datac => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:gPair[2]~combout\,
	datad => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:Inner|Gpre~0_combout\,
	combout => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Gpre~2_combout\);

-- Location: LCCOMB_X114_Y22_N2
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

-- Location: IOIBUF_X115_Y24_N8
\A[57]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(57),
	o => \A[57]~input_o\);

-- Location: IOIBUF_X115_Y28_N1
\B[57]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(57),
	o => \B[57]~input_o\);

-- Location: LCCOMB_X114_Y24_N14
\p[57]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(57) = \A[57]~input_o\ $ (\B[57]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[57]~input_o\,
	datad => \B[57]~input_o\,
	combout => p(57));

-- Location: LCCOMB_X114_Y22_N12
\PrefixNetwork|Gpre[56]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gpre[56]~26_combout\ = (\A[56]~input_o\ & ((\B[56]~input_o\) # ((\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[6]~combout\) # (\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Gpre~2_combout\)))) # (!\A[56]~input_o\ & 
-- (\B[56]~input_o\ & ((\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[6]~combout\) # (\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Gpre~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[56]~input_o\,
	datab => \B[56]~input_o\,
	datac => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[6]~combout\,
	datad => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Gpre~2_combout\,
	combout => \PrefixNetwork|Gpre[56]~26_combout\);

-- Location: LCCOMB_X114_Y22_N26
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

-- Location: LCCOMB_X114_Y24_N24
\PrefixNetwork|Recur:gPair[28]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:gPair[28]~0_combout\ = (\B[57]~input_o\ & ((\A[57]~input_o\) # ((\A[56]~input_o\ & \B[56]~input_o\)))) # (!\B[57]~input_o\ & (\A[57]~input_o\ & (\A[56]~input_o\ & \B[56]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[57]~input_o\,
	datab => \A[57]~input_o\,
	datac => \A[56]~input_o\,
	datad => \B[56]~input_o\,
	combout => \PrefixNetwork|Recur:gPair[28]~0_combout\);

-- Location: LCCOMB_X114_Y22_N22
\c[58]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[58]~64_combout\ = (\PrefixNetwork|Recur:gPair[28]~0_combout\) # ((p(57) & (p(56) & \c~63_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Recur:gPair[28]~0_combout\,
	datab => p(57),
	datac => p(56),
	datad => \c~63_combout\,
	combout => \c[58]~64_combout\);

-- Location: IOIBUF_X115_Y26_N15
\A[58]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(58),
	o => \A[58]~input_o\);

-- Location: IOIBUF_X115_Y20_N8
\B[58]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(58),
	o => \B[58]~input_o\);

-- Location: LCCOMB_X114_Y22_N20
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

-- Location: LCCOMB_X114_Y22_N16
\S~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~82_combout\ = \A[58]~input_o\ $ (\B[58]~input_o\ $ (((\c[58]~64_combout\) # (\PrefixNetwork|Recur:Inner|Gpre~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c[58]~64_combout\,
	datab => \A[58]~input_o\,
	datac => \B[58]~input_o\,
	datad => \PrefixNetwork|Recur:Inner|Gpre~15_combout\,
	combout => \S~82_combout\);

-- Location: LCCOMB_X114_Y22_N28
\p[58]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(58) = \B[58]~input_o\ $ (\A[58]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[58]~input_o\,
	datad => \A[58]~input_o\,
	combout => p(58));

-- Location: LCCOMB_X114_Y22_N30
\c~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \c~80_combout\ = (p(58) & (p(57) & (\A[56]~input_o\ $ (\B[56]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[56]~input_o\,
	datab => p(58),
	datac => \B[56]~input_o\,
	datad => p(57),
	combout => \c~80_combout\);

-- Location: IOIBUF_X115_Y22_N1
\B[59]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(59),
	o => \B[59]~input_o\);

-- Location: IOIBUF_X115_Y21_N15
\A[59]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(59),
	o => \A[59]~input_o\);

-- Location: LCCOMB_X114_Y22_N4
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

-- Location: LCCOMB_X114_Y22_N18
\PrefixNetwork|Gpre[58]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gpre[58]~27_combout\ = (\A[58]~input_o\ & ((\PrefixNetwork|Recur:gPair[28]~0_combout\) # ((\B[58]~input_o\) # (\PrefixNetwork|Recur:Inner|Gpre~15_combout\)))) # (!\A[58]~input_o\ & (\B[58]~input_o\ & 
-- ((\PrefixNetwork|Recur:gPair[28]~0_combout\) # (\PrefixNetwork|Recur:Inner|Gpre~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Recur:gPair[28]~0_combout\,
	datab => \A[58]~input_o\,
	datac => \B[58]~input_o\,
	datad => \PrefixNetwork|Recur:Inner|Gpre~15_combout\,
	combout => \PrefixNetwork|Gpre[58]~27_combout\);

-- Location: LCCOMB_X114_Y22_N6
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

-- Location: LCCOMB_X114_Y22_N10
\PrefixNetwork|Recur:gPair[29]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:gPair[29]~0_combout\ = (\B[59]~input_o\ & ((\A[59]~input_o\) # ((\B[58]~input_o\ & \A[58]~input_o\)))) # (!\B[59]~input_o\ & (\A[59]~input_o\ & (\B[58]~input_o\ & \A[58]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[59]~input_o\,
	datab => \A[59]~input_o\,
	datac => \B[58]~input_o\,
	datad => \A[58]~input_o\,
	combout => \PrefixNetwork|Recur:gPair[29]~0_combout\);

-- Location: LCCOMB_X114_Y22_N0
\PrefixNetwork|Recur:Inner|Recur:gPair[14]\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Recur:gPair[14]~combout\ = (\PrefixNetwork|Recur:gPair[29]~0_combout\) # ((p(58) & (p(59) & \PrefixNetwork|Recur:gPair[28]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Recur:gPair[29]~0_combout\,
	datab => p(58),
	datac => p(59),
	datad => \PrefixNetwork|Recur:gPair[28]~0_combout\,
	combout => \PrefixNetwork|Recur:Inner|Recur:gPair[14]~combout\);

-- Location: LCCOMB_X114_Y22_N8
\PrefixNetwork|Recur:Inner|Recur:pPair[14]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Recur:pPair[14]~0_combout\ = (p(56) & (p(57) & (p(59) & p(58))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(56),
	datab => p(57),
	datac => p(59),
	datad => p(58),
	combout => \PrefixNetwork|Recur:Inner|Recur:pPair[14]~0_combout\);

-- Location: LCCOMB_X114_Y25_N24
\c~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \c~65_combout\ = (\PrefixNetwork|Recur:Inner|Recur:pPair[14]~0_combout\ & (\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[6]~2_combout\ & (\c~46_combout\ & \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:pPair[2]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Recur:Inner|Recur:pPair[14]~0_combout\,
	datab => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[6]~2_combout\,
	datac => \c~46_combout\,
	datad => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:pPair[2]~3_combout\,
	combout => \c~65_combout\);

-- Location: IOIBUF_X115_Y28_N8
\A[60]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(60),
	o => \A[60]~input_o\);

-- Location: IOIBUF_X115_Y31_N8
\B[60]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(60),
	o => \B[60]~input_o\);

-- Location: LCCOMB_X114_Y25_N8
\p[60]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(60) = \A[60]~input_o\ $ (\B[60]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[60]~input_o\,
	datad => \B[60]~input_o\,
	combout => p(60));

-- Location: LCCOMB_X114_Y25_N6
\PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~6_combout\ = (\PrefixNetwork|Recur:Inner|Recur:pPair[14]~0_combout\ & ((\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[6]~combout\) # (\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Gpre~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Recur:Inner|Recur:pPair[14]~0_combout\,
	datac => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[6]~combout\,
	datad => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Gpre~2_combout\,
	combout => \PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~6_combout\);

-- Location: LCCOMB_X114_Y25_N10
\S~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~71_combout\ = p(60) $ (((\PrefixNetwork|Recur:Inner|Recur:gPair[14]~combout\) # ((\c~65_combout\) # (\PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Recur:Inner|Recur:gPair[14]~combout\,
	datab => \c~65_combout\,
	datac => p(60),
	datad => \PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~6_combout\,
	combout => \S~71_combout\);

-- Location: IOIBUF_X115_Y30_N1
\A[61]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(61),
	o => \A[61]~input_o\);

-- Location: IOIBUF_X115_Y30_N8
\B[61]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(61),
	o => \B[61]~input_o\);

-- Location: LCCOMB_X114_Y26_N8
\p[61]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(61) = \A[61]~input_o\ $ (\B[61]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[61]~input_o\,
	datad => \B[61]~input_o\,
	combout => p(61));

-- Location: LCCOMB_X114_Y25_N0
\PrefixNetwork|Gpre[60]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gpre[60]~28_combout\ = (\B[60]~input_o\ & ((\PrefixNetwork|Recur:Inner|Recur:gPair[14]~combout\) # ((\A[60]~input_o\) # (\PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~6_combout\)))) # (!\B[60]~input_o\ & (\A[60]~input_o\ & 
-- ((\PrefixNetwork|Recur:Inner|Recur:gPair[14]~combout\) # (\PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Recur:Inner|Recur:gPair[14]~combout\,
	datab => \B[60]~input_o\,
	datac => \A[60]~input_o\,
	datad => \PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~6_combout\,
	combout => \PrefixNetwork|Gpre[60]~28_combout\);

-- Location: LCCOMB_X114_Y25_N14
\S~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~72_combout\ = p(61) $ (((\PrefixNetwork|Gpre[60]~28_combout\) # ((\c~65_combout\ & p(60)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(61),
	datab => \c~65_combout\,
	datac => p(60),
	datad => \PrefixNetwork|Gpre[60]~28_combout\,
	combout => \S~72_combout\);

-- Location: LCCOMB_X114_Y26_N18
\PrefixNetwork|Recur:gPair[30]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:gPair[30]~0_combout\ = (\B[61]~input_o\ & ((\A[61]~input_o\) # ((\A[60]~input_o\ & \B[60]~input_o\)))) # (!\B[61]~input_o\ & (\A[61]~input_o\ & (\A[60]~input_o\ & \B[60]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[61]~input_o\,
	datab => \A[61]~input_o\,
	datac => \A[60]~input_o\,
	datad => \B[60]~input_o\,
	combout => \PrefixNetwork|Recur:gPair[30]~0_combout\);

-- Location: LCCOMB_X114_Y25_N12
\c[62]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[62]~66_combout\ = (\PrefixNetwork|Recur:gPair[30]~0_combout\) # ((p(61) & (p(60) & \c~65_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(61),
	datab => p(60),
	datac => \PrefixNetwork|Recur:gPair[30]~0_combout\,
	datad => \c~65_combout\,
	combout => \c[62]~66_combout\);

-- Location: IOIBUF_X107_Y73_N22
\B[62]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(62),
	o => \B[62]~input_o\);

-- Location: LCCOMB_X114_Y22_N14
\PrefixNetwork|Recur:Inner|Gpre~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Gpre~16_combout\ = (p(60) & (p(61) & ((\PrefixNetwork|Recur:Inner|Recur:pPair[14]~0_combout\) # (\PrefixNetwork|Recur:Inner|Recur:gPair[14]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(60),
	datab => \PrefixNetwork|Recur:Inner|Recur:pPair[14]~0_combout\,
	datac => p(61),
	datad => \PrefixNetwork|Recur:Inner|Recur:gPair[14]~combout\,
	combout => \PrefixNetwork|Recur:Inner|Gpre~16_combout\);

-- Location: LCCOMB_X113_Y18_N0
\PrefixNetwork|Recur:Inner|Gpre~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Gpre~17_combout\ = (\PrefixNetwork|Recur:Inner|Gpre~16_combout\ & ((\PrefixNetwork|Recur:Inner|Recur:gPair[14]~combout\) # ((\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[6]~combout\) # 
-- (\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Gpre~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Recur:Inner|Recur:gPair[14]~combout\,
	datab => \PrefixNetwork|Recur:Inner|Gpre~16_combout\,
	datac => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[6]~combout\,
	datad => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Gpre~2_combout\,
	combout => \PrefixNetwork|Recur:Inner|Gpre~17_combout\);

-- Location: IOIBUF_X100_Y0_N1
\A[62]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(62),
	o => \A[62]~input_o\);

-- Location: LCCOMB_X114_Y25_N28
\S~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~83_combout\ = \B[62]~input_o\ $ (\A[62]~input_o\ $ (((\c[62]~66_combout\) # (\PrefixNetwork|Recur:Inner|Gpre~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c[62]~66_combout\,
	datab => \B[62]~input_o\,
	datac => \PrefixNetwork|Recur:Inner|Gpre~17_combout\,
	datad => \A[62]~input_o\,
	combout => \S~83_combout\);

-- Location: IOIBUF_X107_Y73_N8
\A[63]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(63),
	o => \A[63]~input_o\);

-- Location: IOIBUF_X115_Y67_N15
\B[63]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(63),
	o => \B[63]~input_o\);

-- Location: LCCOMB_X114_Y25_N22
\p[63]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(63) = \A[63]~input_o\ $ (\B[63]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[63]~input_o\,
	datad => \B[63]~input_o\,
	combout => p(63));

-- Location: LCCOMB_X114_Y25_N16
\c~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \c~67_combout\ = (p(61) & (p(60) & (\A[62]~input_o\ $ (\B[62]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(61),
	datab => \A[62]~input_o\,
	datac => \B[62]~input_o\,
	datad => p(60),
	combout => \c~67_combout\);

-- Location: LCCOMB_X113_Y18_N18
\PrefixNetwork|Gpre[62]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gpre[62]~29_combout\ = (\B[62]~input_o\ & ((\A[62]~input_o\) # ((\PrefixNetwork|Recur:gPair[30]~0_combout\) # (\PrefixNetwork|Recur:Inner|Gpre~17_combout\)))) # (!\B[62]~input_o\ & (\A[62]~input_o\ & 
-- ((\PrefixNetwork|Recur:gPair[30]~0_combout\) # (\PrefixNetwork|Recur:Inner|Gpre~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[62]~input_o\,
	datab => \A[62]~input_o\,
	datac => \PrefixNetwork|Recur:gPair[30]~0_combout\,
	datad => \PrefixNetwork|Recur:Inner|Gpre~17_combout\,
	combout => \PrefixNetwork|Gpre[62]~29_combout\);

-- Location: LCCOMB_X114_Y25_N4
\S~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~73_combout\ = p(63) $ (((\PrefixNetwork|Gpre[62]~29_combout\) # ((\c~67_combout\ & \c~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(63),
	datab => \c~67_combout\,
	datac => \PrefixNetwork|Gpre[62]~29_combout\,
	datad => \c~65_combout\,
	combout => \S~73_combout\);

-- Location: LCCOMB_X114_Y29_N26
\c~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \c~69_combout\ = (\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:pPair[2]~3_combout\ & ((\c~46_combout\) # ((\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:Inner|gPair~0_combout\) # 
-- (\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:gPair[1]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:pPair[2]~3_combout\,
	datab => \c~46_combout\,
	datac => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:Inner|gPair~0_combout\,
	datad => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:gPair[1]~combout\,
	combout => \c~69_combout\);

-- Location: LCCOMB_X114_Y29_N28
\c~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \c~70_combout\ = (\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[6]~2_combout\ & (\PrefixNetwork|Recur:Inner|Recur:pPair[14]~0_combout\ & ((\c~69_combout\) # (\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:gPair[2]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[6]~2_combout\,
	datab => \PrefixNetwork|Recur:Inner|Recur:pPair[14]~0_combout\,
	datac => \c~69_combout\,
	datad => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:gPair[2]~combout\,
	combout => \c~70_combout\);

-- Location: LCCOMB_X114_Y29_N22
\c~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \c~71_combout\ = (\PrefixNetwork|Recur:Inner|Recur:gPair[14]~combout\) # ((\c~70_combout\) # ((\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[6]~combout\ & \PrefixNetwork|Recur:Inner|Recur:pPair[14]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[6]~combout\,
	datab => \PrefixNetwork|Recur:Inner|Recur:pPair[14]~0_combout\,
	datac => \PrefixNetwork|Recur:Inner|Recur:gPair[14]~combout\,
	datad => \c~70_combout\,
	combout => \c~71_combout\);

-- Location: LCCOMB_X114_Y25_N2
\p[62]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(62) = \A[62]~input_o\ $ (\B[62]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[62]~input_o\,
	datac => \B[62]~input_o\,
	combout => p(62));

-- Location: LCCOMB_X114_Y25_N26
\c~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \c~72_combout\ = (p(61) & (p(62) & (p(63) & p(60))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(61),
	datab => p(62),
	datac => p(63),
	datad => p(60),
	combout => \c~72_combout\);

-- Location: LCCOMB_X114_Y25_N30
\PrefixNetwork|Recur:gPair[31]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:gPair[31]~0_combout\ = (\A[63]~input_o\ & ((\B[63]~input_o\) # ((\A[62]~input_o\ & \B[62]~input_o\)))) # (!\A[63]~input_o\ & (\A[62]~input_o\ & (\B[62]~input_o\ & \B[63]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[63]~input_o\,
	datab => \A[62]~input_o\,
	datac => \B[62]~input_o\,
	datad => \B[63]~input_o\,
	combout => \PrefixNetwork|Recur:gPair[31]~0_combout\);

-- Location: LCCOMB_X114_Y25_N20
\c~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \c~68_combout\ = (\PrefixNetwork|Recur:gPair[31]~0_combout\) # ((\PrefixNetwork|Recur:gPair[30]~0_combout\ & (p(63) & p(62))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Recur:gPair[31]~0_combout\,
	datab => \PrefixNetwork|Recur:gPair[30]~0_combout\,
	datac => p(63),
	datad => p(62),
	combout => \c~68_combout\);

-- Location: LCCOMB_X114_Y29_N16
\c~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \c~73_combout\ = (\c~68_combout\) # ((\c~71_combout\ & \c~72_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c~71_combout\,
	datac => \c~72_combout\,
	datad => \c~68_combout\,
	combout => \c~73_combout\);

-- Location: LCCOMB_X114_Y29_N10
\c[63]\ : cycloneive_lcell_comb
-- Equation(s):
-- c(63) = (\PrefixNetwork|Gpre[62]~29_combout\) # ((\c~63_combout\ & (\c~67_combout\ & \PrefixNetwork|Recur:Inner|Recur:pPair[14]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c~63_combout\,
	datab => \c~67_combout\,
	datac => \PrefixNetwork|Recur:Inner|Recur:pPair[14]~0_combout\,
	datad => \PrefixNetwork|Gpre[62]~29_combout\,
	combout => c(63));

-- Location: LCCOMB_X114_Y29_N12
\Ovfl~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Ovfl~0_combout\ = c(63) $ (((\c~68_combout\) # ((\c~71_combout\ & \c~72_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c~71_combout\,
	datab => \c~68_combout\,
	datac => \c~72_combout\,
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


