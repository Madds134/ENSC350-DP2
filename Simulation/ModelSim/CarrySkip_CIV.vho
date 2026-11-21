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

-- DATE "11/20/2026 23:23:45"

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
-- S[0]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[1]	=>  Location: PIN_AE16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[2]	=>  Location: PIN_AF16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[3]	=>  Location: PIN_AF11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[4]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[5]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[6]	=>  Location: PIN_AC10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[7]	=>  Location: PIN_AF13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[8]	=>  Location: PIN_AH11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[9]	=>  Location: PIN_AG11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[10]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[11]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[12]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[13]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[14]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[15]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[16]	=>  Location: PIN_AF22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[17]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[18]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[19]	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[20]	=>  Location: PIN_AC19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[21]	=>  Location: PIN_AD19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[22]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[23]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[24]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[25]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[26]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[27]	=>  Location: PIN_AD28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[28]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[29]	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[30]	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[31]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[32]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[33]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[34]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[35]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[36]	=>  Location: PIN_F26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[37]	=>  Location: PIN_E26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[38]	=>  Location: PIN_U25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[39]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[40]	=>  Location: PIN_L24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[41]	=>  Location: PIN_L27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[42]	=>  Location: PIN_J25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[43]	=>  Location: PIN_J26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[44]	=>  Location: PIN_R23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[45]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[46]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[47]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[48]	=>  Location: PIN_K28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[49]	=>  Location: PIN_L23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[50]	=>  Location: PIN_M25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[51]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[52]	=>  Location: PIN_N25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[53]	=>  Location: PIN_M28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[54]	=>  Location: PIN_P27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[55]	=>  Location: PIN_N26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[56]	=>  Location: PIN_M27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[57]	=>  Location: PIN_L28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[58]	=>  Location: PIN_P25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[59]	=>  Location: PIN_P26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[60]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[61]	=>  Location: PIN_M26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[62]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[63]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cout	=>  Location: PIN_J23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ovfl	=>  Location: PIN_J24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_Y12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_AG12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_AH12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_AD14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_AC11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_AE14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[8]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_AE13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[9]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_AE15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[10]	=>  Location: PIN_AC15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[11]	=>  Location: PIN_AF15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[11]	=>  Location: PIN_AD15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[12]	=>  Location: PIN_AG23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[12]	=>  Location: PIN_AF25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[13]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[13]	=>  Location: PIN_AF24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[14]	=>  Location: PIN_AD18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[14]	=>  Location: PIN_AE21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[15]	=>  Location: PIN_AE20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[15]	=>  Location: PIN_AF20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[16]	=>  Location: PIN_AG22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[16]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[17]	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[17]	=>  Location: PIN_AF21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[18]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[18]	=>  Location: PIN_AH23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[19]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[19]	=>  Location: PIN_AE25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[20]	=>  Location: PIN_AF26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[20]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[21]	=>  Location: PIN_AG25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[21]	=>  Location: PIN_AH25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[22]	=>  Location: PIN_AH22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[22]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[23]	=>  Location: PIN_AC17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[23]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[24]	=>  Location: PIN_V24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[24]	=>  Location: PIN_V23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[25]	=>  Location: PIN_V22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[25]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[26]	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[26]	=>  Location: PIN_V26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[27]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[27]	=>  Location: PIN_V28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[28]	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[28]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[29]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[29]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[30]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[30]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[31]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[31]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[32]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[32]	=>  Location: PIN_V27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[33]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[33]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[34]	=>  Location: PIN_AG14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[34]	=>  Location: PIN_AH14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[35]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[35]	=>  Location: PIN_U26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[36]	=>  Location: PIN_T21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[36]	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[37]	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[37]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[38]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[38]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[39]	=>  Location: PIN_U28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[39]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[40]	=>  Location: PIN_E28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[40]	=>  Location: PIN_A25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[41]	=>  Location: PIN_D25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[41]	=>  Location: PIN_C25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[42]	=>  Location: PIN_F28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[42]	=>  Location: PIN_K27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[43]	=>  Location: PIN_E27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[43]	=>  Location: PIN_F27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[44]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[44]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[45]	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[45]	=>  Location: PIN_R27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[46]	=>  Location: PIN_G28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[46]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[47]	=>  Location: PIN_K25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[47]	=>  Location: PIN_K26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[48]	=>  Location: PIN_G27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[48]	=>  Location: PIN_B25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[49]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[49]	=>  Location: PIN_H26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[50]	=>  Location: PIN_R26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[50]	=>  Location: PIN_R28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[51]	=>  Location: PIN_R25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[51]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[52]	=>  Location: PIN_D27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[52]	=>  Location: PIN_C27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[53]	=>  Location: PIN_D26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[53]	=>  Location: PIN_L21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[54]	=>  Location: PIN_D28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[54]	=>  Location: PIN_H25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[55]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[55]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[56]	=>  Location: PIN_H23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[56]	=>  Location: PIN_H24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[57]	=>  Location: PIN_G26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[57]	=>  Location: PIN_G25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[58]	=>  Location: PIN_U27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[58]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[59]	=>  Location: PIN_T25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[59]	=>  Location: PIN_T26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[60]	=>  Location: PIN_F25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[60]	=>  Location: PIN_F24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[61]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[61]	=>  Location: PIN_G24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[62]	=>  Location: PIN_G23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[62]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[63]	=>  Location: PIN_B26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[63]	=>  Location: PIN_C26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cin	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \c[1]~0_combout\ : std_logic;
SIGNAL \c[1]~1_combout\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \S~1_combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \c[2]~2_combout\ : std_logic;
SIGNAL \S~2_combout\ : std_logic;
SIGNAL \c[3]~3_combout\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \c[3]~4_combout\ : std_logic;
SIGNAL \S~3_combout\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \cb~0_combout\ : std_logic;
SIGNAL \cb~1_combout\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \S~4_combout\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \c[5]~5_combout\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \c[5]~6_combout\ : std_logic;
SIGNAL \S~5_combout\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \c[6]~7_combout\ : std_logic;
SIGNAL \c[6]~8_combout\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \S~6_combout\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \c[7]~9_combout\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \c[7]~10_combout\ : std_logic;
SIGNAL \S~7_combout\ : std_logic;
SIGNAL \B[8]~input_o\ : std_logic;
SIGNAL \cb~4_combout\ : std_logic;
SIGNAL \cb~3_combout\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \S~8_combout\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \B[9]~input_o\ : std_logic;
SIGNAL \c[9]~11_combout\ : std_logic;
SIGNAL \c[9]~12_combout\ : std_logic;
SIGNAL \S~9_combout\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \c[10]~13_combout\ : std_logic;
SIGNAL \c[10]~14_combout\ : std_logic;
SIGNAL \B[10]~input_o\ : std_logic;
SIGNAL \S~10_combout\ : std_logic;
SIGNAL \c[11]~15_combout\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \c[11]~16_combout\ : std_logic;
SIGNAL \B[11]~input_o\ : std_logic;
SIGNAL \S~11_combout\ : std_logic;
SIGNAL \B[12]~input_o\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \cb~6_combout\ : std_logic;
SIGNAL \cb~7_combout\ : std_logic;
SIGNAL \S~12_combout\ : std_logic;
SIGNAL \c[13]~17_combout\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \B[13]~input_o\ : std_logic;
SIGNAL \c[13]~18_combout\ : std_logic;
SIGNAL \S~13_combout\ : std_logic;
SIGNAL \B[14]~input_o\ : std_logic;
SIGNAL \c[14]~19_combout\ : std_logic;
SIGNAL \c[14]~20_combout\ : std_logic;
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \S~14_combout\ : std_logic;
SIGNAL \c[15]~22_combout\ : std_logic;
SIGNAL \c[15]~21_combout\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \B[15]~input_o\ : std_logic;
SIGNAL \S~15_combout\ : std_logic;
SIGNAL \A[16]~input_o\ : std_logic;
SIGNAL \cb~9_combout\ : std_logic;
SIGNAL \cb~10_combout\ : std_logic;
SIGNAL \B[16]~input_o\ : std_logic;
SIGNAL \S~16_combout\ : std_logic;
SIGNAL \c[17]~23_combout\ : std_logic;
SIGNAL \c[17]~24_combout\ : std_logic;
SIGNAL \A[17]~input_o\ : std_logic;
SIGNAL \B[17]~input_o\ : std_logic;
SIGNAL \S~17_combout\ : std_logic;
SIGNAL \A[18]~input_o\ : std_logic;
SIGNAL \B[18]~input_o\ : std_logic;
SIGNAL \c[18]~25_combout\ : std_logic;
SIGNAL \c[18]~26_combout\ : std_logic;
SIGNAL \S~18_combout\ : std_logic;
SIGNAL \A[19]~input_o\ : std_logic;
SIGNAL \c[19]~27_combout\ : std_logic;
SIGNAL \B[19]~input_o\ : std_logic;
SIGNAL \c[19]~28_combout\ : std_logic;
SIGNAL \S~19_combout\ : std_logic;
SIGNAL \A[20]~input_o\ : std_logic;
SIGNAL \B[20]~input_o\ : std_logic;
SIGNAL \cb~13_combout\ : std_logic;
SIGNAL \cb~12_combout\ : std_logic;
SIGNAL \S~20_combout\ : std_logic;
SIGNAL \A[21]~input_o\ : std_logic;
SIGNAL \c[21]~29_combout\ : std_logic;
SIGNAL \B[21]~input_o\ : std_logic;
SIGNAL \c[21]~30_combout\ : std_logic;
SIGNAL \S~21_combout\ : std_logic;
SIGNAL \A[22]~input_o\ : std_logic;
SIGNAL \B[22]~input_o\ : std_logic;
SIGNAL \c[22]~31_combout\ : std_logic;
SIGNAL \c[22]~32_combout\ : std_logic;
SIGNAL \S~22_combout\ : std_logic;
SIGNAL \B[23]~input_o\ : std_logic;
SIGNAL \A[23]~input_o\ : std_logic;
SIGNAL \c[23]~34_combout\ : std_logic;
SIGNAL \c[23]~33_combout\ : std_logic;
SIGNAL \S~23_combout\ : std_logic;
SIGNAL \A[24]~input_o\ : std_logic;
SIGNAL \B[24]~input_o\ : std_logic;
SIGNAL \cb~16_combout\ : std_logic;
SIGNAL \cb~15_combout\ : std_logic;
SIGNAL \S~24_combout\ : std_logic;
SIGNAL \A[25]~input_o\ : std_logic;
SIGNAL \B[25]~input_o\ : std_logic;
SIGNAL \c[25]~35_combout\ : std_logic;
SIGNAL \c[25]~36_combout\ : std_logic;
SIGNAL \S~25_combout\ : std_logic;
SIGNAL \A[26]~input_o\ : std_logic;
SIGNAL \c[26]~37_combout\ : std_logic;
SIGNAL \c[26]~38_combout\ : std_logic;
SIGNAL \B[26]~input_o\ : std_logic;
SIGNAL \S~26_combout\ : std_logic;
SIGNAL \c[27]~39_combout\ : std_logic;
SIGNAL \c[27]~40_combout\ : std_logic;
SIGNAL \B[27]~input_o\ : std_logic;
SIGNAL \A[27]~input_o\ : std_logic;
SIGNAL \S~27_combout\ : std_logic;
SIGNAL \B[28]~input_o\ : std_logic;
SIGNAL \cb~19_combout\ : std_logic;
SIGNAL \cb~18_combout\ : std_logic;
SIGNAL \A[28]~input_o\ : std_logic;
SIGNAL \S~28_combout\ : std_logic;
SIGNAL \c[29]~41_combout\ : std_logic;
SIGNAL \A[29]~input_o\ : std_logic;
SIGNAL \c[29]~42_combout\ : std_logic;
SIGNAL \B[29]~input_o\ : std_logic;
SIGNAL \S~29_combout\ : std_logic;
SIGNAL \B[30]~input_o\ : std_logic;
SIGNAL \c[30]~43_combout\ : std_logic;
SIGNAL \c[30]~44_combout\ : std_logic;
SIGNAL \A[30]~input_o\ : std_logic;
SIGNAL \S~30_combout\ : std_logic;
SIGNAL \B[31]~input_o\ : std_logic;
SIGNAL \c[31]~45_combout\ : std_logic;
SIGNAL \A[31]~input_o\ : std_logic;
SIGNAL \c[31]~46_combout\ : std_logic;
SIGNAL \S~31_combout\ : std_logic;
SIGNAL \A[32]~input_o\ : std_logic;
SIGNAL \B[32]~input_o\ : std_logic;
SIGNAL \cb~22_combout\ : std_logic;
SIGNAL \cb~21_combout\ : std_logic;
SIGNAL \S~32_combout\ : std_logic;
SIGNAL \c[33]~47_combout\ : std_logic;
SIGNAL \A[33]~input_o\ : std_logic;
SIGNAL \c[33]~48_combout\ : std_logic;
SIGNAL \B[33]~input_o\ : std_logic;
SIGNAL \S~33_combout\ : std_logic;
SIGNAL \A[34]~input_o\ : std_logic;
SIGNAL \B[34]~input_o\ : std_logic;
SIGNAL \c[34]~49_combout\ : std_logic;
SIGNAL \c[34]~50_combout\ : std_logic;
SIGNAL \S~34_combout\ : std_logic;
SIGNAL \A[35]~input_o\ : std_logic;
SIGNAL \B[35]~input_o\ : std_logic;
SIGNAL \c[35]~51_combout\ : std_logic;
SIGNAL \c[35]~52_combout\ : std_logic;
SIGNAL \S~35_combout\ : std_logic;
SIGNAL \B[36]~input_o\ : std_logic;
SIGNAL \cb~24_combout\ : std_logic;
SIGNAL \cb~25_combout\ : std_logic;
SIGNAL \A[36]~input_o\ : std_logic;
SIGNAL \S~36_combout\ : std_logic;
SIGNAL \c[37]~53_combout\ : std_logic;
SIGNAL \B[37]~input_o\ : std_logic;
SIGNAL \A[37]~input_o\ : std_logic;
SIGNAL \c[37]~54_combout\ : std_logic;
SIGNAL \S~37_combout\ : std_logic;
SIGNAL \A[38]~input_o\ : std_logic;
SIGNAL \B[38]~input_o\ : std_logic;
SIGNAL \c[38]~55_combout\ : std_logic;
SIGNAL \c[38]~56_combout\ : std_logic;
SIGNAL \S~38_combout\ : std_logic;
SIGNAL \A[39]~input_o\ : std_logic;
SIGNAL \B[39]~input_o\ : std_logic;
SIGNAL \c[39]~57_combout\ : std_logic;
SIGNAL \c[39]~58_combout\ : std_logic;
SIGNAL \S~39_combout\ : std_logic;
SIGNAL \A[40]~input_o\ : std_logic;
SIGNAL \B[40]~input_o\ : std_logic;
SIGNAL \cb~28_combout\ : std_logic;
SIGNAL \cb~27_combout\ : std_logic;
SIGNAL \S~40_combout\ : std_logic;
SIGNAL \B[41]~input_o\ : std_logic;
SIGNAL \c[41]~59_combout\ : std_logic;
SIGNAL \A[41]~input_o\ : std_logic;
SIGNAL \c[41]~60_combout\ : std_logic;
SIGNAL \S~41_combout\ : std_logic;
SIGNAL \A[42]~input_o\ : std_logic;
SIGNAL \B[42]~input_o\ : std_logic;
SIGNAL \c[42]~61_combout\ : std_logic;
SIGNAL \c[42]~62_combout\ : std_logic;
SIGNAL \S~42_combout\ : std_logic;
SIGNAL \B[43]~input_o\ : std_logic;
SIGNAL \A[43]~input_o\ : std_logic;
SIGNAL \c[43]~63_combout\ : std_logic;
SIGNAL \c[43]~64_combout\ : std_logic;
SIGNAL \S~43_combout\ : std_logic;
SIGNAL \B[44]~input_o\ : std_logic;
SIGNAL \cb~30_combout\ : std_logic;
SIGNAL \cb~31_combout\ : std_logic;
SIGNAL \A[44]~input_o\ : std_logic;
SIGNAL \S~44_combout\ : std_logic;
SIGNAL \A[45]~input_o\ : std_logic;
SIGNAL \B[45]~input_o\ : std_logic;
SIGNAL \c[45]~65_combout\ : std_logic;
SIGNAL \c[45]~66_combout\ : std_logic;
SIGNAL \S~45_combout\ : std_logic;
SIGNAL \B[46]~input_o\ : std_logic;
SIGNAL \A[46]~input_o\ : std_logic;
SIGNAL \c[46]~67_combout\ : std_logic;
SIGNAL \c[46]~68_combout\ : std_logic;
SIGNAL \S~46_combout\ : std_logic;
SIGNAL \B[47]~input_o\ : std_logic;
SIGNAL \A[47]~input_o\ : std_logic;
SIGNAL \c[47]~69_combout\ : std_logic;
SIGNAL \c[47]~70_combout\ : std_logic;
SIGNAL \S~47_combout\ : std_logic;
SIGNAL \cb~33_combout\ : std_logic;
SIGNAL \cb~34_combout\ : std_logic;
SIGNAL \A[48]~input_o\ : std_logic;
SIGNAL \B[48]~input_o\ : std_logic;
SIGNAL \S~48_combout\ : std_logic;
SIGNAL \A[49]~input_o\ : std_logic;
SIGNAL \B[49]~input_o\ : std_logic;
SIGNAL \c[49]~71_combout\ : std_logic;
SIGNAL \c[49]~72_combout\ : std_logic;
SIGNAL \S~49_combout\ : std_logic;
SIGNAL \A[50]~input_o\ : std_logic;
SIGNAL \B[50]~input_o\ : std_logic;
SIGNAL \c[50]~73_combout\ : std_logic;
SIGNAL \c[50]~74_combout\ : std_logic;
SIGNAL \S~50_combout\ : std_logic;
SIGNAL \c[51]~75_combout\ : std_logic;
SIGNAL \A[51]~input_o\ : std_logic;
SIGNAL \c[51]~76_combout\ : std_logic;
SIGNAL \B[51]~input_o\ : std_logic;
SIGNAL \S~51_combout\ : std_logic;
SIGNAL \A[52]~input_o\ : std_logic;
SIGNAL \B[52]~input_o\ : std_logic;
SIGNAL \cb~36_combout\ : std_logic;
SIGNAL \cb~37_combout\ : std_logic;
SIGNAL \S~52_combout\ : std_logic;
SIGNAL \B[53]~input_o\ : std_logic;
SIGNAL \A[53]~input_o\ : std_logic;
SIGNAL \c[53]~77_combout\ : std_logic;
SIGNAL \c[53]~78_combout\ : std_logic;
SIGNAL \S~53_combout\ : std_logic;
SIGNAL \A[54]~input_o\ : std_logic;
SIGNAL \B[54]~input_o\ : std_logic;
SIGNAL \c[54]~79_combout\ : std_logic;
SIGNAL \c[54]~80_combout\ : std_logic;
SIGNAL \S~54_combout\ : std_logic;
SIGNAL \B[55]~input_o\ : std_logic;
SIGNAL \c[55]~81_combout\ : std_logic;
SIGNAL \A[55]~input_o\ : std_logic;
SIGNAL \c[55]~82_combout\ : std_logic;
SIGNAL \S~55_combout\ : std_logic;
SIGNAL \B[56]~input_o\ : std_logic;
SIGNAL \A[56]~input_o\ : std_logic;
SIGNAL \cb~40_combout\ : std_logic;
SIGNAL \cb~39_combout\ : std_logic;
SIGNAL \S~56_combout\ : std_logic;
SIGNAL \A[57]~input_o\ : std_logic;
SIGNAL \B[57]~input_o\ : std_logic;
SIGNAL \c[57]~83_combout\ : std_logic;
SIGNAL \c[57]~84_combout\ : std_logic;
SIGNAL \S~57_combout\ : std_logic;
SIGNAL \B[58]~input_o\ : std_logic;
SIGNAL \A[58]~input_o\ : std_logic;
SIGNAL \c[58]~85_combout\ : std_logic;
SIGNAL \c[58]~86_combout\ : std_logic;
SIGNAL \S~58_combout\ : std_logic;
SIGNAL \c[59]~87_combout\ : std_logic;
SIGNAL \B[59]~input_o\ : std_logic;
SIGNAL \A[59]~input_o\ : std_logic;
SIGNAL \c[59]~88_combout\ : std_logic;
SIGNAL \S~59_combout\ : std_logic;
SIGNAL \A[60]~input_o\ : std_logic;
SIGNAL \B[60]~input_o\ : std_logic;
SIGNAL \cb~42_combout\ : std_logic;
SIGNAL \cb~43_combout\ : std_logic;
SIGNAL \S~60_combout\ : std_logic;
SIGNAL \A[61]~input_o\ : std_logic;
SIGNAL \B[61]~input_o\ : std_logic;
SIGNAL \S~61_combout\ : std_logic;
SIGNAL \A[62]~input_o\ : std_logic;
SIGNAL \B[62]~input_o\ : std_logic;
SIGNAL \c[62]~89_combout\ : std_logic;
SIGNAL \c[62]~90_combout\ : std_logic;
SIGNAL \S~62_combout\ : std_logic;
SIGNAL \A[63]~input_o\ : std_logic;
SIGNAL \B[63]~input_o\ : std_logic;
SIGNAL \S~63_combout\ : std_logic;
SIGNAL \cb~45_combout\ : std_logic;
SIGNAL \cb~46_combout\ : std_logic;
SIGNAL \rCOut~15_combout\ : std_logic;
SIGNAL \Ovfl~0_combout\ : std_logic;
SIGNAL p : std_logic_vector(63 DOWNTO 0);
SIGNAL cb : std_logic_vector(16 DOWNTO 0);
SIGNAL rCOut : std_logic_vector(15 DOWNTO 0);

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

-- Location: IOOBUF_X38_Y0_N9
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

-- Location: IOOBUF_X65_Y0_N23
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

-- Location: IOOBUF_X65_Y0_N16
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

-- Location: IOOBUF_X35_Y0_N16
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

-- Location: IOOBUF_X62_Y0_N16
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

-- Location: IOOBUF_X62_Y0_N23
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

-- Location: IOOBUF_X38_Y0_N2
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

-- Location: IOOBUF_X42_Y0_N16
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

-- Location: IOOBUF_X40_Y0_N16
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

-- Location: IOOBUF_X40_Y0_N23
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

-- Location: IOOBUF_X65_Y0_N9
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

-- Location: IOOBUF_X65_Y0_N2
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

-- Location: IOOBUF_X69_Y0_N2
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

-- Location: IOOBUF_X69_Y0_N9
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

-- Location: IOOBUF_X96_Y0_N23
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

-- Location: IOOBUF_X96_Y0_N16
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

-- Location: IOOBUF_X96_Y0_N2
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

-- Location: IOOBUF_X74_Y0_N9
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

-- Location: IOOBUF_X67_Y0_N16
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

-- Location: IOOBUF_X74_Y0_N2
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

-- Location: IOOBUF_X94_Y0_N9
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

-- Location: IOOBUF_X94_Y0_N2
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

-- Location: IOOBUF_X72_Y0_N2
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

-- Location: IOOBUF_X72_Y0_N9
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

-- Location: IOOBUF_X115_Y25_N16
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

-- Location: IOOBUF_X115_Y25_N23
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

-- Location: IOOBUF_X115_Y10_N2
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

-- Location: IOOBUF_X115_Y12_N2
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

-- Location: IOOBUF_X115_Y13_N9
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

-- Location: IOOBUF_X115_Y12_N9
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

-- Location: IOOBUF_X115_Y11_N2
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

-- Location: IOOBUF_X115_Y11_N9
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

-- Location: IOOBUF_X115_Y16_N9
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

-- Location: IOOBUF_X115_Y16_N2
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

-- Location: IOOBUF_X115_Y15_N9
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

-- Location: IOOBUF_X115_Y15_N2
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

-- Location: IOOBUF_X115_Y59_N16
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

-- Location: IOOBUF_X115_Y59_N23
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

-- Location: IOOBUF_X115_Y27_N2
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

-- Location: IOOBUF_X115_Y32_N9
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

-- Location: IOOBUF_X115_Y48_N2
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

-- Location: IOOBUF_X115_Y48_N9
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

-- Location: IOOBUF_X115_Y51_N2
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

-- Location: IOOBUF_X115_Y51_N9
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

-- Location: IOOBUF_X115_Y35_N16
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

-- Location: IOOBUF_X115_Y35_N23
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

-- Location: IOOBUF_X115_Y50_N2
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

-- Location: IOOBUF_X115_Y54_N16
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

-- Location: IOOBUF_X115_Y49_N2
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

-- Location: IOOBUF_X115_Y49_N9
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

-- Location: IOOBUF_X115_Y47_N23
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

-- Location: IOOBUF_X115_Y41_N2
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

-- Location: IOOBUF_X115_Y45_N23
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

-- Location: IOOBUF_X115_Y45_N16
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

-- Location: IOOBUF_X115_Y44_N9
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

-- Location: IOOBUF_X115_Y44_N2
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

-- Location: IOOBUF_X115_Y46_N9
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

-- Location: IOOBUF_X115_Y47_N16
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

-- Location: IOOBUF_X115_Y41_N9
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

-- Location: IOOBUF_X115_Y40_N2
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

-- Location: IOOBUF_X115_Y40_N9
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

-- Location: IOOBUF_X115_Y46_N2
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

-- Location: IOOBUF_X115_Y64_N2
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

-- Location: IOOBUF_X115_Y64_N9
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

-- Location: IOOBUF_X115_Y63_N2
\Cout~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => cb(16),
	devoe => ww_devoe,
	o => \Cout~output_o\);

-- Location: IOOBUF_X115_Y63_N9
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

-- Location: IOIBUF_X52_Y0_N22
\A[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X52_Y0_N8
\B[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X49_Y0_N1
\Cin~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cin,
	o => \Cin~input_o\);

-- Location: LCCOMB_X52_Y4_N2
\cb[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- cb(0) = LCELL(\Cin~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Cin~input_o\,
	combout => cb(0));

-- Location: LCCOMB_X52_Y4_N28
\S~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~0_combout\ = \A[0]~input_o\ $ (\B[0]~input_o\ $ (cb(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \B[0]~input_o\,
	datac => cb(0),
	combout => \S~0_combout\);

-- Location: IOIBUF_X52_Y0_N1
\A[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: LCCOMB_X53_Y4_N8
\c[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[1]~0_combout\ = (\B[0]~input_o\ & \A[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[0]~input_o\,
	datad => \A[0]~input_o\,
	combout => \c[1]~0_combout\);

-- Location: LCCOMB_X52_Y4_N14
\c[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[1]~1_combout\ = (cb(0) & ((\B[0]~input_o\) # (\A[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[0]~input_o\,
	datac => \A[0]~input_o\,
	datad => cb(0),
	combout => \c[1]~1_combout\);

-- Location: IOIBUF_X52_Y0_N15
\B[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: LCCOMB_X52_Y4_N24
\S~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~1_combout\ = \A[1]~input_o\ $ (\B[1]~input_o\ $ (((\c[1]~0_combout\) # (\c[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \c[1]~0_combout\,
	datac => \c[1]~1_combout\,
	datad => \B[1]~input_o\,
	combout => \S~1_combout\);

-- Location: IOIBUF_X54_Y0_N15
\A[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: IOIBUF_X54_Y0_N8
\B[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: LCCOMB_X53_Y4_N30
\c[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[2]~2_combout\ = (\A[1]~input_o\ & ((\B[1]~input_o\) # ((\c[1]~0_combout\) # (\c[1]~1_combout\)))) # (!\A[1]~input_o\ & (\B[1]~input_o\ & ((\c[1]~0_combout\) # (\c[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \B[1]~input_o\,
	datac => \c[1]~0_combout\,
	datad => \c[1]~1_combout\,
	combout => \c[2]~2_combout\);

-- Location: LCCOMB_X54_Y4_N4
\S~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~2_combout\ = \A[2]~input_o\ $ (\B[2]~input_o\ $ (\c[2]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[2]~input_o\,
	datac => \B[2]~input_o\,
	datad => \c[2]~2_combout\,
	combout => \S~2_combout\);

-- Location: LCCOMB_X54_Y4_N14
\c[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[3]~3_combout\ = (\B[2]~input_o\ & \A[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[2]~input_o\,
	datad => \A[2]~input_o\,
	combout => \c[3]~3_combout\);

-- Location: IOIBUF_X54_Y0_N1
\B[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: IOIBUF_X54_Y0_N22
\A[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: LCCOMB_X53_Y4_N16
\c[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[3]~4_combout\ = (\c[2]~2_combout\ & ((\A[2]~input_o\) # (\B[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \B[2]~input_o\,
	datac => \c[2]~2_combout\,
	combout => \c[3]~4_combout\);

-- Location: LCCOMB_X54_Y4_N24
\S~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~3_combout\ = \B[3]~input_o\ $ (\A[3]~input_o\ $ (((\c[3]~3_combout\) # (\c[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c[3]~3_combout\,
	datab => \B[3]~input_o\,
	datac => \A[3]~input_o\,
	datad => \c[3]~4_combout\,
	combout => \S~3_combout\);

-- Location: IOIBUF_X56_Y0_N22
\A[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: LCCOMB_X53_Y4_N14
\cb~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cb~0_combout\ = (\A[1]~input_o\ & (!\B[1]~input_o\ & (\B[0]~input_o\ $ (\A[0]~input_o\)))) # (!\A[1]~input_o\ & (\B[1]~input_o\ & (\B[0]~input_o\ $ (\A[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \B[0]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[0]~input_o\,
	combout => \cb~0_combout\);

-- Location: LCCOMB_X54_Y4_N10
\cb~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \cb~1_combout\ = (\B[2]~input_o\ & (!\A[2]~input_o\ & (\A[3]~input_o\ $ (\B[3]~input_o\)))) # (!\B[2]~input_o\ & (\A[2]~input_o\ & (\A[3]~input_o\ $ (\B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \A[2]~input_o\,
	datac => \A[3]~input_o\,
	datad => \B[3]~input_o\,
	combout => \cb~1_combout\);

-- Location: LCCOMB_X53_Y4_N6
\rCOut[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- rCOut(0) = LCELL((\A[3]~input_o\ & ((\B[3]~input_o\) # ((\c[3]~3_combout\) # (\c[3]~4_combout\)))) # (!\A[3]~input_o\ & (\B[3]~input_o\ & ((\c[3]~3_combout\) # (\c[3]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \B[3]~input_o\,
	datac => \c[3]~3_combout\,
	datad => \c[3]~4_combout\,
	combout => rCOut(0));

-- Location: LCCOMB_X53_Y4_N0
\cb[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- cb(1) = LCELL((rCOut(0)) # ((cb(0) & (\cb~0_combout\ & \cb~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cb(0),
	datab => \cb~0_combout\,
	datac => \cb~1_combout\,
	datad => rCOut(0),
	combout => cb(1));

-- Location: IOIBUF_X56_Y0_N15
\B[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: LCCOMB_X55_Y4_N20
\S~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~4_combout\ = \A[4]~input_o\ $ (cb(1) $ (\B[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[4]~input_o\,
	datac => cb(1),
	datad => \B[4]~input_o\,
	combout => \S~4_combout\);

-- Location: IOIBUF_X56_Y0_N8
\A[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: LCCOMB_X55_Y4_N14
\c[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[5]~5_combout\ = (\A[4]~input_o\ & \B[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[4]~input_o\,
	datad => \B[4]~input_o\,
	combout => \c[5]~5_combout\);

-- Location: IOIBUF_X56_Y0_N1
\B[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: LCCOMB_X55_Y4_N24
\c[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[5]~6_combout\ = (cb(1) & ((\A[4]~input_o\) # (\B[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[4]~input_o\,
	datac => cb(1),
	datad => \B[4]~input_o\,
	combout => \c[5]~6_combout\);

-- Location: LCCOMB_X55_Y4_N26
\S~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~5_combout\ = \A[5]~input_o\ $ (\B[5]~input_o\ $ (((\c[5]~5_combout\) # (\c[5]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~input_o\,
	datab => \c[5]~5_combout\,
	datac => \B[5]~input_o\,
	datad => \c[5]~6_combout\,
	combout => \S~5_combout\);

-- Location: IOIBUF_X49_Y0_N8
\A[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: LCCOMB_X53_Y4_N18
\c[6]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[6]~7_combout\ = (cb(1) & ((\A[4]~input_o\) # (\B[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[4]~input_o\,
	datac => \B[4]~input_o\,
	datad => cb(1),
	combout => \c[6]~7_combout\);

-- Location: LCCOMB_X53_Y4_N24
\c[6]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[6]~8_combout\ = (\A[5]~input_o\ & ((\B[5]~input_o\) # ((\c[5]~5_combout\) # (\c[6]~7_combout\)))) # (!\A[5]~input_o\ & (\B[5]~input_o\ & ((\c[5]~5_combout\) # (\c[6]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~input_o\,
	datab => \B[5]~input_o\,
	datac => \c[5]~5_combout\,
	datad => \c[6]~7_combout\,
	combout => \c[6]~8_combout\);

-- Location: IOIBUF_X49_Y0_N15
\B[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: LCCOMB_X49_Y4_N28
\S~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~6_combout\ = \A[6]~input_o\ $ (\c[6]~8_combout\ $ (\B[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[6]~input_o\,
	datac => \c[6]~8_combout\,
	datad => \B[6]~input_o\,
	combout => \S~6_combout\);

-- Location: IOIBUF_X45_Y0_N22
\B[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: LCCOMB_X49_Y4_N10
\c[7]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[7]~9_combout\ = (\B[6]~input_o\ & \A[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[6]~input_o\,
	datad => \A[6]~input_o\,
	combout => \c[7]~9_combout\);

-- Location: IOIBUF_X49_Y0_N22
\A[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: LCCOMB_X53_Y4_N10
\c[7]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[7]~10_combout\ = (\c[6]~8_combout\ & ((\A[6]~input_o\) # (\B[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[6]~input_o\,
	datac => \B[6]~input_o\,
	datad => \c[6]~8_combout\,
	combout => \c[7]~10_combout\);

-- Location: LCCOMB_X49_Y4_N0
\S~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~7_combout\ = \B[7]~input_o\ $ (\A[7]~input_o\ $ (((\c[7]~9_combout\) # (\c[7]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[7]~input_o\,
	datab => \c[7]~9_combout\,
	datac => \A[7]~input_o\,
	datad => \c[7]~10_combout\,
	combout => \S~7_combout\);

-- Location: IOIBUF_X47_Y0_N1
\B[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

-- Location: LCCOMB_X49_Y4_N14
\cb~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \cb~4_combout\ = (\B[7]~input_o\ & (!\A[7]~input_o\ & (\B[6]~input_o\ $ (\A[6]~input_o\)))) # (!\B[7]~input_o\ & (\A[7]~input_o\ & (\B[6]~input_o\ $ (\A[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[7]~input_o\,
	datab => \A[7]~input_o\,
	datac => \B[6]~input_o\,
	datad => \A[6]~input_o\,
	combout => \cb~4_combout\);

-- Location: LCCOMB_X55_Y4_N28
\cb~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \cb~3_combout\ = (\A[5]~input_o\ & (!\B[5]~input_o\ & (\A[4]~input_o\ $ (\B[4]~input_o\)))) # (!\A[5]~input_o\ & (\B[5]~input_o\ & (\A[4]~input_o\ $ (\B[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~input_o\,
	datab => \A[4]~input_o\,
	datac => \B[5]~input_o\,
	datad => \B[4]~input_o\,
	combout => \cb~3_combout\);

-- Location: LCCOMB_X53_Y4_N28
\rCOut[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- rCOut(1) = LCELL((\B[7]~input_o\ & ((\c[7]~9_combout\) # ((\A[7]~input_o\) # (\c[7]~10_combout\)))) # (!\B[7]~input_o\ & (\A[7]~input_o\ & ((\c[7]~9_combout\) # (\c[7]~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c[7]~9_combout\,
	datab => \B[7]~input_o\,
	datac => \A[7]~input_o\,
	datad => \c[7]~10_combout\,
	combout => rCOut(1));

-- Location: LCCOMB_X53_Y4_N22
\cb[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- cb(2) = LCELL((rCOut(1)) # ((\cb~4_combout\ & (\cb~3_combout\ & cb(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cb~4_combout\,
	datab => \cb~3_combout\,
	datac => cb(1),
	datad => rCOut(1),
	combout => cb(2));

-- Location: IOIBUF_X47_Y0_N8
\A[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: LCCOMB_X48_Y4_N4
\S~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~8_combout\ = \B[8]~input_o\ $ (cb(2) $ (\A[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[8]~input_o\,
	datac => cb(2),
	datad => \A[8]~input_o\,
	combout => \S~8_combout\);

-- Location: IOIBUF_X42_Y0_N22
\A[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

-- Location: IOIBUF_X45_Y0_N15
\B[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(9),
	o => \B[9]~input_o\);

-- Location: LCCOMB_X48_Y4_N14
\c[9]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[9]~11_combout\ = (\B[8]~input_o\ & \A[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[8]~input_o\,
	datad => \A[8]~input_o\,
	combout => \c[9]~11_combout\);

-- Location: LCCOMB_X48_Y4_N28
\c[9]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[9]~12_combout\ = (cb(2) & ((\B[8]~input_o\) # (\A[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[8]~input_o\,
	datac => cb(2),
	datad => \A[8]~input_o\,
	combout => \c[9]~12_combout\);

-- Location: LCCOMB_X48_Y4_N10
\S~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~9_combout\ = \A[9]~input_o\ $ (\B[9]~input_o\ $ (((\c[9]~11_combout\) # (\c[9]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[9]~input_o\,
	datab => \B[9]~input_o\,
	datac => \c[9]~11_combout\,
	datad => \c[9]~12_combout\,
	combout => \S~9_combout\);

-- Location: IOIBUF_X60_Y0_N8
\A[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

-- Location: LCCOMB_X53_Y4_N12
\c[10]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[10]~13_combout\ = (cb(2) & ((\A[8]~input_o\) # (\B[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[8]~input_o\,
	datac => cb(2),
	datad => \B[8]~input_o\,
	combout => \c[10]~13_combout\);

-- Location: LCCOMB_X53_Y4_N26
\c[10]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[10]~14_combout\ = (\B[9]~input_o\ & ((\c[9]~11_combout\) # ((\A[9]~input_o\) # (\c[10]~13_combout\)))) # (!\B[9]~input_o\ & (\A[9]~input_o\ & ((\c[9]~11_combout\) # (\c[10]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c[9]~11_combout\,
	datab => \B[9]~input_o\,
	datac => \A[9]~input_o\,
	datad => \c[10]~13_combout\,
	combout => \c[10]~14_combout\);

-- Location: IOIBUF_X60_Y0_N22
\B[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(10),
	o => \B[10]~input_o\);

-- Location: LCCOMB_X60_Y4_N4
\S~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~10_combout\ = \A[10]~input_o\ $ (\c[10]~14_combout\ $ (\B[10]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[10]~input_o\,
	datac => \c[10]~14_combout\,
	datad => \B[10]~input_o\,
	combout => \S~10_combout\);

-- Location: LCCOMB_X60_Y4_N10
\c[11]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[11]~15_combout\ = (\A[10]~input_o\ & \B[10]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[10]~input_o\,
	datad => \B[10]~input_o\,
	combout => \c[11]~15_combout\);

-- Location: IOIBUF_X60_Y0_N1
\A[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(11),
	o => \A[11]~input_o\);

-- Location: LCCOMB_X53_Y4_N20
\c[11]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[11]~16_combout\ = (\c[10]~14_combout\ & ((\B[10]~input_o\) # (\A[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[10]~input_o\,
	datab => \A[10]~input_o\,
	datac => \c[10]~14_combout\,
	combout => \c[11]~16_combout\);

-- Location: IOIBUF_X60_Y0_N15
\B[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(11),
	o => \B[11]~input_o\);

-- Location: LCCOMB_X60_Y4_N20
\S~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~11_combout\ = \A[11]~input_o\ $ (\B[11]~input_o\ $ (((\c[11]~15_combout\) # (\c[11]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c[11]~15_combout\,
	datab => \A[11]~input_o\,
	datac => \c[11]~16_combout\,
	datad => \B[11]~input_o\,
	combout => \S~11_combout\);

-- Location: IOIBUF_X83_Y0_N1
\B[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(12),
	o => \B[12]~input_o\);

-- Location: IOIBUF_X81_Y0_N22
\A[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(12),
	o => \A[12]~input_o\);

-- Location: LCCOMB_X48_Y4_N20
\cb~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \cb~6_combout\ = (\B[8]~input_o\ & (!\A[8]~input_o\ & (\A[9]~input_o\ $ (\B[9]~input_o\)))) # (!\B[8]~input_o\ & (\A[8]~input_o\ & (\A[9]~input_o\ $ (\B[9]~input_o\))))

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
	combout => \cb~6_combout\);

-- Location: LCCOMB_X60_Y4_N2
\cb~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \cb~7_combout\ = (\B[10]~input_o\ & (!\A[10]~input_o\ & (\A[11]~input_o\ $ (\B[11]~input_o\)))) # (!\B[10]~input_o\ & (\A[10]~input_o\ & (\A[11]~input_o\ $ (\B[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[10]~input_o\,
	datab => \A[11]~input_o\,
	datac => \A[10]~input_o\,
	datad => \B[11]~input_o\,
	combout => \cb~7_combout\);

-- Location: LCCOMB_X53_Y4_N2
\rCOut[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- rCOut(2) = LCELL((\A[11]~input_o\ & ((\B[11]~input_o\) # ((\c[11]~15_combout\) # (\c[11]~16_combout\)))) # (!\A[11]~input_o\ & (\B[11]~input_o\ & ((\c[11]~15_combout\) # (\c[11]~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[11]~input_o\,
	datab => \B[11]~input_o\,
	datac => \c[11]~15_combout\,
	datad => \c[11]~16_combout\,
	combout => rCOut(2));

-- Location: LCCOMB_X53_Y4_N4
\cb[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- cb(3) = LCELL((rCOut(2)) # ((\cb~6_combout\ & (\cb~7_combout\ & cb(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cb~6_combout\,
	datab => \cb~7_combout\,
	datac => cb(2),
	datad => rCOut(2),
	combout => cb(3));

-- Location: LCCOMB_X81_Y4_N16
\S~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~12_combout\ = \B[12]~input_o\ $ (\A[12]~input_o\ $ (cb(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[12]~input_o\,
	datab => \A[12]~input_o\,
	datad => cb(3),
	combout => \S~12_combout\);

-- Location: LCCOMB_X82_Y4_N12
\c[13]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[13]~17_combout\ = (\B[12]~input_o\ & \A[12]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[12]~input_o\,
	datad => \A[12]~input_o\,
	combout => \c[13]~17_combout\);

-- Location: IOIBUF_X83_Y0_N22
\A[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(13),
	o => \A[13]~input_o\);

-- Location: IOIBUF_X83_Y0_N8
\B[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(13),
	o => \B[13]~input_o\);

-- Location: LCCOMB_X81_Y4_N14
\c[13]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[13]~18_combout\ = (cb(3) & ((\B[12]~input_o\) # (\A[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[12]~input_o\,
	datab => \A[12]~input_o\,
	datad => cb(3),
	combout => \c[13]~18_combout\);

-- Location: LCCOMB_X82_Y4_N10
\S~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~13_combout\ = \A[13]~input_o\ $ (\B[13]~input_o\ $ (((\c[13]~17_combout\) # (\c[13]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c[13]~17_combout\,
	datab => \A[13]~input_o\,
	datac => \B[13]~input_o\,
	datad => \c[13]~18_combout\,
	combout => \S~13_combout\);

-- Location: IOIBUF_X85_Y0_N1
\B[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(14),
	o => \B[14]~input_o\);

-- Location: LCCOMB_X83_Y4_N12
\c[14]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[14]~19_combout\ = (cb(3) & ((\B[12]~input_o\) # (\A[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[12]~input_o\,
	datac => \A[12]~input_o\,
	datad => cb(3),
	combout => \c[14]~19_combout\);

-- Location: LCCOMB_X83_Y4_N6
\c[14]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[14]~20_combout\ = (\B[13]~input_o\ & ((\c[13]~17_combout\) # ((\A[13]~input_o\) # (\c[14]~19_combout\)))) # (!\B[13]~input_o\ & (\A[13]~input_o\ & ((\c[13]~17_combout\) # (\c[14]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c[13]~17_combout\,
	datab => \B[13]~input_o\,
	datac => \A[13]~input_o\,
	datad => \c[14]~19_combout\,
	combout => \c[14]~20_combout\);

-- Location: IOIBUF_X85_Y0_N8
\A[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(14),
	o => \A[14]~input_o\);

-- Location: LCCOMB_X84_Y4_N28
\S~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~14_combout\ = \B[14]~input_o\ $ (\c[14]~20_combout\ $ (\A[14]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[14]~input_o\,
	datac => \c[14]~20_combout\,
	datad => \A[14]~input_o\,
	combout => \S~14_combout\);

-- Location: LCCOMB_X83_Y4_N8
\c[15]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[15]~22_combout\ = (\c[14]~20_combout\ & ((\B[14]~input_o\) # (\A[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[14]~input_o\,
	datac => \A[14]~input_o\,
	datad => \c[14]~20_combout\,
	combout => \c[15]~22_combout\);

-- Location: LCCOMB_X84_Y4_N14
\c[15]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[15]~21_combout\ = (\B[14]~input_o\ & \A[14]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[14]~input_o\,
	datad => \A[14]~input_o\,
	combout => \c[15]~21_combout\);

-- Location: IOIBUF_X85_Y0_N22
\A[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(15),
	o => \A[15]~input_o\);

-- Location: IOIBUF_X85_Y0_N15
\B[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(15),
	o => \B[15]~input_o\);

-- Location: LCCOMB_X84_Y4_N12
\S~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~15_combout\ = \A[15]~input_o\ $ (\B[15]~input_o\ $ (((\c[15]~22_combout\) # (\c[15]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c[15]~22_combout\,
	datab => \c[15]~21_combout\,
	datac => \A[15]~input_o\,
	datad => \B[15]~input_o\,
	combout => \S~15_combout\);

-- Location: IOIBUF_X79_Y0_N8
\A[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(16),
	o => \A[16]~input_o\);

-- Location: LCCOMB_X83_Y4_N26
\cb~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \cb~9_combout\ = (\A[12]~input_o\ & (!\B[12]~input_o\ & (\B[13]~input_o\ $ (\A[13]~input_o\)))) # (!\A[12]~input_o\ & (\B[12]~input_o\ & (\B[13]~input_o\ $ (\A[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[12]~input_o\,
	datab => \B[13]~input_o\,
	datac => \A[13]~input_o\,
	datad => \B[12]~input_o\,
	combout => \cb~9_combout\);

-- Location: LCCOMB_X84_Y4_N22
\cb~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \cb~10_combout\ = (\B[15]~input_o\ & (!\A[15]~input_o\ & (\A[14]~input_o\ $ (\B[14]~input_o\)))) # (!\B[15]~input_o\ & (\A[15]~input_o\ & (\A[14]~input_o\ $ (\B[14]~input_o\))))

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
	combout => \cb~10_combout\);

-- Location: LCCOMB_X83_Y4_N10
\rCOut[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- rCOut(3) = LCELL((\A[15]~input_o\ & ((\B[15]~input_o\) # ((\c[15]~22_combout\) # (\c[15]~21_combout\)))) # (!\A[15]~input_o\ & (\B[15]~input_o\ & ((\c[15]~22_combout\) # (\c[15]~21_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[15]~input_o\,
	datab => \B[15]~input_o\,
	datac => \c[15]~22_combout\,
	datad => \c[15]~21_combout\,
	combout => rCOut(3));

-- Location: LCCOMB_X83_Y4_N4
\cb[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- cb(4) = LCELL((rCOut(3)) # ((\cb~9_combout\ & (\cb~10_combout\ & cb(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cb~9_combout\,
	datab => \cb~10_combout\,
	datac => cb(3),
	datad => rCOut(3),
	combout => cb(4));

-- Location: IOIBUF_X83_Y0_N15
\B[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(16),
	o => \B[16]~input_o\);

-- Location: LCCOMB_X83_Y3_N24
\S~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~16_combout\ = \A[16]~input_o\ $ (cb(4) $ (\B[16]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[16]~input_o\,
	datac => cb(4),
	datad => \B[16]~input_o\,
	combout => \S~16_combout\);

-- Location: LCCOMB_X83_Y3_N10
\c[17]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[17]~23_combout\ = (\A[16]~input_o\ & \B[16]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[16]~input_o\,
	datad => \B[16]~input_o\,
	combout => \c[17]~23_combout\);

-- Location: LCCOMB_X83_Y3_N28
\c[17]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[17]~24_combout\ = (cb(4) & ((\A[16]~input_o\) # (\B[16]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[16]~input_o\,
	datac => cb(4),
	datad => \B[16]~input_o\,
	combout => \c[17]~24_combout\);

-- Location: IOIBUF_X87_Y0_N15
\A[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(17),
	o => \A[17]~input_o\);

-- Location: IOIBUF_X87_Y0_N22
\B[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(17),
	o => \B[17]~input_o\);

-- Location: LCCOMB_X83_Y3_N22
\S~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~17_combout\ = \A[17]~input_o\ $ (\B[17]~input_o\ $ (((\c[17]~23_combout\) # (\c[17]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c[17]~23_combout\,
	datab => \c[17]~24_combout\,
	datac => \A[17]~input_o\,
	datad => \B[17]~input_o\,
	combout => \S~17_combout\);

-- Location: IOIBUF_X79_Y0_N15
\A[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(18),
	o => \A[18]~input_o\);

-- Location: IOIBUF_X81_Y0_N15
\B[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(18),
	o => \B[18]~input_o\);

-- Location: LCCOMB_X83_Y4_N18
\c[18]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[18]~25_combout\ = (cb(4) & ((\B[16]~input_o\) # (\A[16]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[16]~input_o\,
	datab => \A[16]~input_o\,
	datac => cb(4),
	combout => \c[18]~25_combout\);

-- Location: LCCOMB_X83_Y4_N28
\c[18]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[18]~26_combout\ = (\B[17]~input_o\ & ((\A[17]~input_o\) # ((\c[17]~23_combout\) # (\c[18]~25_combout\)))) # (!\B[17]~input_o\ & (\A[17]~input_o\ & ((\c[17]~23_combout\) # (\c[18]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[17]~input_o\,
	datab => \A[17]~input_o\,
	datac => \c[17]~23_combout\,
	datad => \c[18]~25_combout\,
	combout => \c[18]~26_combout\);

-- Location: LCCOMB_X82_Y4_N4
\S~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~18_combout\ = \A[18]~input_o\ $ (\B[18]~input_o\ $ (\c[18]~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[18]~input_o\,
	datab => \B[18]~input_o\,
	datad => \c[18]~26_combout\,
	combout => \S~18_combout\);

-- Location: IOIBUF_X89_Y0_N15
\A[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(19),
	o => \A[19]~input_o\);

-- Location: LCCOMB_X82_Y4_N14
\c[19]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[19]~27_combout\ = (\A[18]~input_o\ & \B[18]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[18]~input_o\,
	datad => \B[18]~input_o\,
	combout => \c[19]~27_combout\);

-- Location: IOIBUF_X89_Y0_N8
\B[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(19),
	o => \B[19]~input_o\);

-- Location: LCCOMB_X83_Y4_N22
\c[19]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[19]~28_combout\ = (\c[18]~26_combout\ & ((\A[18]~input_o\) # (\B[18]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[18]~input_o\,
	datac => \B[18]~input_o\,
	datad => \c[18]~26_combout\,
	combout => \c[19]~28_combout\);

-- Location: LCCOMB_X82_Y4_N24
\S~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~19_combout\ = \A[19]~input_o\ $ (\B[19]~input_o\ $ (((\c[19]~27_combout\) # (\c[19]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[19]~input_o\,
	datab => \c[19]~27_combout\,
	datac => \B[19]~input_o\,
	datad => \c[19]~28_combout\,
	combout => \S~19_combout\);

-- Location: IOIBUF_X89_Y0_N1
\A[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(20),
	o => \A[20]~input_o\);

-- Location: IOIBUF_X89_Y0_N22
\B[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(20),
	o => \B[20]~input_o\);

-- Location: LCCOMB_X82_Y4_N26
\cb~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \cb~13_combout\ = (\B[19]~input_o\ & (!\A[19]~input_o\ & (\A[18]~input_o\ $ (\B[18]~input_o\)))) # (!\B[19]~input_o\ & (\A[19]~input_o\ & (\A[18]~input_o\ $ (\B[18]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[19]~input_o\,
	datab => \A[18]~input_o\,
	datac => \A[19]~input_o\,
	datad => \B[18]~input_o\,
	combout => \cb~13_combout\);

-- Location: LCCOMB_X83_Y3_N0
\cb~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \cb~12_combout\ = (\B[16]~input_o\ & (!\A[16]~input_o\ & (\A[17]~input_o\ $ (\B[17]~input_o\)))) # (!\B[16]~input_o\ & (\A[16]~input_o\ & (\A[17]~input_o\ $ (\B[17]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[16]~input_o\,
	datab => \A[16]~input_o\,
	datac => \A[17]~input_o\,
	datad => \B[17]~input_o\,
	combout => \cb~12_combout\);

-- Location: LCCOMB_X83_Y4_N0
\rCOut[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- rCOut(4) = LCELL((\B[19]~input_o\ & ((\c[19]~27_combout\) # ((\c[19]~28_combout\) # (\A[19]~input_o\)))) # (!\B[19]~input_o\ & (\A[19]~input_o\ & ((\c[19]~27_combout\) # (\c[19]~28_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c[19]~27_combout\,
	datab => \B[19]~input_o\,
	datac => \c[19]~28_combout\,
	datad => \A[19]~input_o\,
	combout => rCOut(4));

-- Location: LCCOMB_X83_Y4_N14
\cb[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- cb(5) = LCELL((rCOut(4)) # ((\cb~13_combout\ & (\cb~12_combout\ & cb(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cb~13_combout\,
	datab => \cb~12_combout\,
	datac => cb(4),
	datad => rCOut(4),
	combout => cb(5));

-- Location: LCCOMB_X87_Y4_N20
\S~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~20_combout\ = \A[20]~input_o\ $ (\B[20]~input_o\ $ (cb(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[20]~input_o\,
	datac => \B[20]~input_o\,
	datad => cb(5),
	combout => \S~20_combout\);

-- Location: IOIBUF_X91_Y0_N22
\A[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(21),
	o => \A[21]~input_o\);

-- Location: LCCOMB_X87_Y4_N10
\c[21]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[21]~29_combout\ = (\B[20]~input_o\ & \A[20]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[20]~input_o\,
	datad => \A[20]~input_o\,
	combout => \c[21]~29_combout\);

-- Location: IOIBUF_X91_Y0_N15
\B[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(21),
	o => \B[21]~input_o\);

-- Location: LCCOMB_X87_Y4_N28
\c[21]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[21]~30_combout\ = (cb(5) & ((\A[20]~input_o\) # (\B[20]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[20]~input_o\,
	datac => \B[20]~input_o\,
	datad => cb(5),
	combout => \c[21]~30_combout\);

-- Location: LCCOMB_X87_Y4_N6
\S~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~21_combout\ = \A[21]~input_o\ $ (\B[21]~input_o\ $ (((\c[21]~29_combout\) # (\c[21]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[21]~input_o\,
	datab => \c[21]~29_combout\,
	datac => \B[21]~input_o\,
	datad => \c[21]~30_combout\,
	combout => \S~21_combout\);

-- Location: IOIBUF_X79_Y0_N1
\A[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(22),
	o => \A[22]~input_o\);

-- Location: IOIBUF_X79_Y0_N22
\B[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(22),
	o => \B[22]~input_o\);

-- Location: LCCOMB_X83_Y4_N24
\c[22]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[22]~31_combout\ = (cb(5) & ((\A[20]~input_o\) # (\B[20]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[20]~input_o\,
	datab => \B[20]~input_o\,
	datac => cb(5),
	combout => \c[22]~31_combout\);

-- Location: LCCOMB_X83_Y4_N2
\c[22]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[22]~32_combout\ = (\A[21]~input_o\ & ((\c[21]~29_combout\) # ((\B[21]~input_o\) # (\c[22]~31_combout\)))) # (!\A[21]~input_o\ & (\B[21]~input_o\ & ((\c[21]~29_combout\) # (\c[22]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c[21]~29_combout\,
	datab => \A[21]~input_o\,
	datac => \B[21]~input_o\,
	datad => \c[22]~31_combout\,
	combout => \c[22]~32_combout\);

-- Location: LCCOMB_X80_Y4_N28
\S~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~22_combout\ = \A[22]~input_o\ $ (\B[22]~input_o\ $ (\c[22]~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[22]~input_o\,
	datab => \B[22]~input_o\,
	datac => \c[22]~32_combout\,
	combout => \S~22_combout\);

-- Location: IOIBUF_X74_Y0_N15
\B[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(23),
	o => \B[23]~input_o\);

-- Location: IOIBUF_X74_Y0_N22
\A[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(23),
	o => \A[23]~input_o\);

-- Location: LCCOMB_X83_Y4_N20
\c[23]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[23]~34_combout\ = (\c[22]~32_combout\ & ((\A[22]~input_o\) # (\B[22]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[22]~input_o\,
	datac => \B[22]~input_o\,
	datad => \c[22]~32_combout\,
	combout => \c[23]~34_combout\);

-- Location: LCCOMB_X80_Y4_N6
\c[23]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[23]~33_combout\ = (\A[22]~input_o\ & \B[22]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[22]~input_o\,
	datad => \B[22]~input_o\,
	combout => \c[23]~33_combout\);

-- Location: LCCOMB_X80_Y4_N4
\S~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~23_combout\ = \B[23]~input_o\ $ (\A[23]~input_o\ $ (((\c[23]~34_combout\) # (\c[23]~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[23]~input_o\,
	datab => \A[23]~input_o\,
	datac => \c[23]~34_combout\,
	datad => \c[23]~33_combout\,
	combout => \S~23_combout\);

-- Location: IOIBUF_X115_Y24_N8
\A[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(24),
	o => \A[24]~input_o\);

-- Location: IOIBUF_X115_Y24_N1
\B[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(24),
	o => \B[24]~input_o\);

-- Location: LCCOMB_X80_Y4_N2
\cb~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \cb~16_combout\ = (\A[22]~input_o\ & (!\B[22]~input_o\ & (\A[23]~input_o\ $ (\B[23]~input_o\)))) # (!\A[22]~input_o\ & (\B[22]~input_o\ & (\A[23]~input_o\ $ (\B[23]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[22]~input_o\,
	datab => \A[23]~input_o\,
	datac => \B[23]~input_o\,
	datad => \B[22]~input_o\,
	combout => \cb~16_combout\);

-- Location: LCCOMB_X87_Y4_N0
\cb~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \cb~15_combout\ = (\B[21]~input_o\ & (!\A[21]~input_o\ & (\B[20]~input_o\ $ (\A[20]~input_o\)))) # (!\B[21]~input_o\ & (\A[21]~input_o\ & (\B[20]~input_o\ $ (\A[20]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[21]~input_o\,
	datab => \B[20]~input_o\,
	datac => \A[21]~input_o\,
	datad => \A[20]~input_o\,
	combout => \cb~15_combout\);

-- Location: LCCOMB_X83_Y4_N30
\rCOut[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- rCOut(5) = LCELL((\A[23]~input_o\ & ((\c[23]~33_combout\) # ((\B[23]~input_o\) # (\c[23]~34_combout\)))) # (!\A[23]~input_o\ & (\B[23]~input_o\ & ((\c[23]~33_combout\) # (\c[23]~34_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c[23]~33_combout\,
	datab => \A[23]~input_o\,
	datac => \B[23]~input_o\,
	datad => \c[23]~34_combout\,
	combout => rCOut(5));

-- Location: LCCOMB_X83_Y4_N16
\cb[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- cb(6) = LCELL((rCOut(5)) # ((\cb~16_combout\ & (\cb~15_combout\ & cb(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cb~16_combout\,
	datab => \cb~15_combout\,
	datac => rCOut(5),
	datad => cb(5),
	combout => cb(6));

-- Location: LCCOMB_X112_Y24_N0
\S~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~24_combout\ = \A[24]~input_o\ $ (\B[24]~input_o\ $ (cb(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[24]~input_o\,
	datac => \B[24]~input_o\,
	datad => cb(6),
	combout => \S~24_combout\);

-- Location: IOIBUF_X115_Y26_N22
\A[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(25),
	o => \A[25]~input_o\);

-- Location: IOIBUF_X115_Y26_N15
\B[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(25),
	o => \B[25]~input_o\);

-- Location: LCCOMB_X112_Y24_N30
\c[25]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[25]~35_combout\ = (\B[24]~input_o\ & \A[24]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[24]~input_o\,
	datad => \A[24]~input_o\,
	combout => \c[25]~35_combout\);

-- Location: LCCOMB_X112_Y24_N20
\c[25]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[25]~36_combout\ = (cb(6) & ((\A[24]~input_o\) # (\B[24]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[24]~input_o\,
	datac => \B[24]~input_o\,
	datad => cb(6),
	combout => \c[25]~36_combout\);

-- Location: LCCOMB_X112_Y24_N6
\S~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~25_combout\ = \A[25]~input_o\ $ (\B[25]~input_o\ $ (((\c[25]~35_combout\) # (\c[25]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[25]~input_o\,
	datab => \B[25]~input_o\,
	datac => \c[25]~35_combout\,
	datad => \c[25]~36_combout\,
	combout => \S~25_combout\);

-- Location: IOIBUF_X115_Y23_N1
\A[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(26),
	o => \A[26]~input_o\);

-- Location: LCCOMB_X112_Y23_N12
\c[26]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[26]~37_combout\ = (cb(6) & ((\B[24]~input_o\) # (\A[24]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[24]~input_o\,
	datac => \A[24]~input_o\,
	datad => cb(6),
	combout => \c[26]~37_combout\);

-- Location: LCCOMB_X112_Y23_N6
\c[26]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[26]~38_combout\ = (\A[25]~input_o\ & ((\c[25]~35_combout\) # ((\B[25]~input_o\) # (\c[26]~37_combout\)))) # (!\A[25]~input_o\ & (\B[25]~input_o\ & ((\c[25]~35_combout\) # (\c[26]~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c[25]~35_combout\,
	datab => \A[25]~input_o\,
	datac => \B[25]~input_o\,
	datad => \c[26]~37_combout\,
	combout => \c[26]~38_combout\);

-- Location: IOIBUF_X115_Y23_N8
\B[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(26),
	o => \B[26]~input_o\);

-- Location: LCCOMB_X113_Y23_N24
\S~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~26_combout\ = \A[26]~input_o\ $ (\c[26]~38_combout\ $ (\B[26]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[26]~input_o\,
	datac => \c[26]~38_combout\,
	datad => \B[26]~input_o\,
	combout => \S~26_combout\);

-- Location: LCCOMB_X113_Y23_N10
\c[27]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[27]~39_combout\ = (\A[26]~input_o\ & \B[26]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[26]~input_o\,
	datad => \B[26]~input_o\,
	combout => \c[27]~39_combout\);

-- Location: LCCOMB_X112_Y23_N20
\c[27]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[27]~40_combout\ = (\c[26]~38_combout\ & ((\B[26]~input_o\) # (\A[26]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[26]~input_o\,
	datac => \A[26]~input_o\,
	datad => \c[26]~38_combout\,
	combout => \c[27]~40_combout\);

-- Location: IOIBUF_X115_Y22_N22
\B[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(27),
	o => \B[27]~input_o\);

-- Location: IOIBUF_X115_Y22_N1
\A[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(27),
	o => \A[27]~input_o\);

-- Location: LCCOMB_X113_Y23_N12
\S~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~27_combout\ = \B[27]~input_o\ $ (\A[27]~input_o\ $ (((\c[27]~39_combout\) # (\c[27]~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c[27]~39_combout\,
	datab => \c[27]~40_combout\,
	datac => \B[27]~input_o\,
	datad => \A[27]~input_o\,
	combout => \S~27_combout\);

-- Location: IOIBUF_X115_Y20_N8
\B[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(28),
	o => \B[28]~input_o\);

-- Location: LCCOMB_X113_Y23_N30
\cb~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \cb~19_combout\ = (\A[27]~input_o\ & (!\B[27]~input_o\ & (\A[26]~input_o\ $ (\B[26]~input_o\)))) # (!\A[27]~input_o\ & (\B[27]~input_o\ & (\A[26]~input_o\ $ (\B[26]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[27]~input_o\,
	datab => \A[26]~input_o\,
	datac => \B[27]~input_o\,
	datad => \B[26]~input_o\,
	combout => \cb~19_combout\);

-- Location: LCCOMB_X112_Y24_N28
\cb~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \cb~18_combout\ = (\A[24]~input_o\ & (!\B[24]~input_o\ & (\B[25]~input_o\ $ (\A[25]~input_o\)))) # (!\A[24]~input_o\ & (\B[24]~input_o\ & (\B[25]~input_o\ $ (\A[25]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[24]~input_o\,
	datab => \B[25]~input_o\,
	datac => \B[24]~input_o\,
	datad => \A[25]~input_o\,
	combout => \cb~18_combout\);

-- Location: LCCOMB_X112_Y23_N26
\rCOut[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- rCOut(6) = LCELL((\B[27]~input_o\ & ((\c[27]~39_combout\) # ((\A[27]~input_o\) # (\c[27]~40_combout\)))) # (!\B[27]~input_o\ & (\A[27]~input_o\ & ((\c[27]~39_combout\) # (\c[27]~40_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c[27]~39_combout\,
	datab => \B[27]~input_o\,
	datac => \A[27]~input_o\,
	datad => \c[27]~40_combout\,
	combout => rCOut(6));

-- Location: LCCOMB_X112_Y23_N2
\cb[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- cb(7) = LCELL((rCOut(6)) # ((\cb~19_combout\ & (\cb~18_combout\ & cb(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cb~19_combout\,
	datab => \cb~18_combout\,
	datac => rCOut(6),
	datad => cb(6),
	combout => cb(7));

-- Location: IOIBUF_X115_Y20_N1
\A[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(28),
	o => \A[28]~input_o\);

-- Location: LCCOMB_X112_Y20_N16
\S~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~28_combout\ = \B[28]~input_o\ $ (cb(7) $ (\A[28]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[28]~input_o\,
	datab => cb(7),
	datac => \A[28]~input_o\,
	combout => \S~28_combout\);

-- Location: LCCOMB_X112_Y20_N26
\c[29]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[29]~41_combout\ = (\A[28]~input_o\ & \B[28]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[28]~input_o\,
	datad => \B[28]~input_o\,
	combout => \c[29]~41_combout\);

-- Location: IOIBUF_X115_Y17_N8
\A[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(29),
	o => \A[29]~input_o\);

-- Location: LCCOMB_X112_Y20_N8
\c[29]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[29]~42_combout\ = (cb(7) & ((\B[28]~input_o\) # (\A[28]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[28]~input_o\,
	datab => cb(7),
	datac => \A[28]~input_o\,
	combout => \c[29]~42_combout\);

-- Location: IOIBUF_X115_Y17_N1
\B[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(29),
	o => \B[29]~input_o\);

-- Location: LCCOMB_X112_Y20_N2
\S~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~29_combout\ = \A[29]~input_o\ $ (\B[29]~input_o\ $ (((\c[29]~41_combout\) # (\c[29]~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c[29]~41_combout\,
	datab => \A[29]~input_o\,
	datac => \c[29]~42_combout\,
	datad => \B[29]~input_o\,
	combout => \S~29_combout\);

-- Location: IOIBUF_X115_Y19_N1
\B[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(30),
	o => \B[30]~input_o\);

-- Location: LCCOMB_X112_Y23_N10
\c[30]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[30]~43_combout\ = (cb(7) & ((\A[28]~input_o\) # (\B[28]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[28]~input_o\,
	datac => \B[28]~input_o\,
	datad => cb(7),
	combout => \c[30]~43_combout\);

-- Location: LCCOMB_X112_Y23_N0
\c[30]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[30]~44_combout\ = (\B[29]~input_o\ & ((\A[29]~input_o\) # ((\c[29]~41_combout\) # (\c[30]~43_combout\)))) # (!\B[29]~input_o\ & (\A[29]~input_o\ & ((\c[29]~41_combout\) # (\c[30]~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[29]~input_o\,
	datab => \A[29]~input_o\,
	datac => \c[29]~41_combout\,
	datad => \c[30]~43_combout\,
	combout => \c[30]~44_combout\);

-- Location: IOIBUF_X115_Y19_N8
\A[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(30),
	o => \A[30]~input_o\);

-- Location: LCCOMB_X112_Y19_N24
\S~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~30_combout\ = \B[30]~input_o\ $ (\c[30]~44_combout\ $ (\A[30]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[30]~input_o\,
	datac => \c[30]~44_combout\,
	datad => \A[30]~input_o\,
	combout => \S~30_combout\);

-- Location: IOIBUF_X115_Y18_N8
\B[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(31),
	o => \B[31]~input_o\);

-- Location: LCCOMB_X112_Y19_N26
\c[31]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[31]~45_combout\ = (\B[30]~input_o\ & \A[30]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[30]~input_o\,
	datad => \A[30]~input_o\,
	combout => \c[31]~45_combout\);

-- Location: IOIBUF_X115_Y18_N1
\A[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(31),
	o => \A[31]~input_o\);

-- Location: LCCOMB_X112_Y23_N14
\c[31]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[31]~46_combout\ = (\c[30]~44_combout\ & ((\A[30]~input_o\) # (\B[30]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[30]~input_o\,
	datab => \B[30]~input_o\,
	datad => \c[30]~44_combout\,
	combout => \c[31]~46_combout\);

-- Location: LCCOMB_X112_Y19_N4
\S~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~31_combout\ = \B[31]~input_o\ $ (\A[31]~input_o\ $ (((\c[31]~45_combout\) # (\c[31]~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[31]~input_o\,
	datab => \c[31]~45_combout\,
	datac => \A[31]~input_o\,
	datad => \c[31]~46_combout\,
	combout => \S~31_combout\);

-- Location: IOIBUF_X115_Y21_N15
\A[32]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(32),
	o => \A[32]~input_o\);

-- Location: IOIBUF_X115_Y22_N15
\B[32]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(32),
	o => \B[32]~input_o\);

-- Location: LCCOMB_X112_Y19_N22
\cb~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \cb~22_combout\ = (\B[31]~input_o\ & (!\A[31]~input_o\ & (\B[30]~input_o\ $ (\A[30]~input_o\)))) # (!\B[31]~input_o\ & (\A[31]~input_o\ & (\B[30]~input_o\ $ (\A[30]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[31]~input_o\,
	datab => \A[31]~input_o\,
	datac => \B[30]~input_o\,
	datad => \A[30]~input_o\,
	combout => \cb~22_combout\);

-- Location: LCCOMB_X112_Y23_N8
\cb~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \cb~21_combout\ = (\B[29]~input_o\ & (!\A[29]~input_o\ & (\B[28]~input_o\ $ (\A[28]~input_o\)))) # (!\B[29]~input_o\ & (\A[29]~input_o\ & (\B[28]~input_o\ $ (\A[28]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[29]~input_o\,
	datab => \A[29]~input_o\,
	datac => \B[28]~input_o\,
	datad => \A[28]~input_o\,
	combout => \cb~21_combout\);

-- Location: LCCOMB_X112_Y23_N28
\rCOut[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- rCOut(7) = LCELL((\B[31]~input_o\ & ((\c[31]~45_combout\) # ((\c[31]~46_combout\) # (\A[31]~input_o\)))) # (!\B[31]~input_o\ & (\A[31]~input_o\ & ((\c[31]~45_combout\) # (\c[31]~46_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[31]~input_o\,
	datab => \c[31]~45_combout\,
	datac => \c[31]~46_combout\,
	datad => \A[31]~input_o\,
	combout => rCOut(7));

-- Location: LCCOMB_X112_Y23_N30
\cb[8]\ : cycloneive_lcell_comb
-- Equation(s):
-- cb(8) = LCELL((rCOut(7)) # ((\cb~22_combout\ & (cb(7) & \cb~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cb~22_combout\,
	datab => cb(7),
	datac => \cb~21_combout\,
	datad => rCOut(7),
	combout => cb(8));

-- Location: LCCOMB_X114_Y23_N12
\S~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~32_combout\ = \A[32]~input_o\ $ (\B[32]~input_o\ $ (cb(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[32]~input_o\,
	datab => \B[32]~input_o\,
	datad => cb(8),
	combout => \S~32_combout\);

-- Location: LCCOMB_X114_Y23_N10
\c[33]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[33]~47_combout\ = (\B[32]~input_o\ & \A[32]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[32]~input_o\,
	datad => \A[32]~input_o\,
	combout => \c[33]~47_combout\);

-- Location: IOIBUF_X115_Y13_N1
\A[33]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(33),
	o => \A[33]~input_o\);

-- Location: LCCOMB_X114_Y23_N8
\c[33]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[33]~48_combout\ = (cb(8) & ((\A[32]~input_o\) # (\B[32]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[32]~input_o\,
	datab => \B[32]~input_o\,
	datad => cb(8),
	combout => \c[33]~48_combout\);

-- Location: IOIBUF_X115_Y14_N1
\B[33]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(33),
	o => \B[33]~input_o\);

-- Location: LCCOMB_X114_Y23_N14
\S~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~33_combout\ = \A[33]~input_o\ $ (\B[33]~input_o\ $ (((\c[33]~47_combout\) # (\c[33]~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c[33]~47_combout\,
	datab => \A[33]~input_o\,
	datac => \c[33]~48_combout\,
	datad => \B[33]~input_o\,
	combout => \S~33_combout\);

-- Location: IOIBUF_X58_Y0_N22
\A[34]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(34),
	o => \A[34]~input_o\);

-- Location: IOIBUF_X58_Y0_N15
\B[34]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(34),
	o => \B[34]~input_o\);

-- Location: LCCOMB_X112_Y23_N16
\c[34]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[34]~49_combout\ = (cb(8) & ((\B[32]~input_o\) # (\A[32]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[32]~input_o\,
	datab => \A[32]~input_o\,
	datac => cb(8),
	combout => \c[34]~49_combout\);

-- Location: LCCOMB_X112_Y23_N18
\c[34]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[34]~50_combout\ = (\B[33]~input_o\ & ((\c[33]~47_combout\) # ((\A[33]~input_o\) # (\c[34]~49_combout\)))) # (!\B[33]~input_o\ & (\A[33]~input_o\ & ((\c[33]~47_combout\) # (\c[34]~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[33]~input_o\,
	datab => \c[33]~47_combout\,
	datac => \A[33]~input_o\,
	datad => \c[34]~49_combout\,
	combout => \c[34]~50_combout\);

-- Location: LCCOMB_X111_Y23_N0
\S~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~34_combout\ = \A[34]~input_o\ $ (\B[34]~input_o\ $ (\c[34]~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[34]~input_o\,
	datac => \B[34]~input_o\,
	datad => \c[34]~50_combout\,
	combout => \S~34_combout\);

-- Location: IOIBUF_X115_Y14_N8
\A[35]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(35),
	o => \A[35]~input_o\);

-- Location: IOIBUF_X115_Y27_N8
\B[35]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(35),
	o => \B[35]~input_o\);

-- Location: LCCOMB_X111_Y23_N26
\c[35]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[35]~51_combout\ = (\B[34]~input_o\ & \A[34]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[34]~input_o\,
	datad => \A[34]~input_o\,
	combout => \c[35]~51_combout\);

-- Location: LCCOMB_X112_Y23_N24
\c[35]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[35]~52_combout\ = (\c[34]~50_combout\ & ((\B[34]~input_o\) # (\A[34]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[34]~input_o\,
	datac => \A[34]~input_o\,
	datad => \c[34]~50_combout\,
	combout => \c[35]~52_combout\);

-- Location: LCCOMB_X111_Y23_N12
\S~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~35_combout\ = \A[35]~input_o\ $ (\B[35]~input_o\ $ (((\c[35]~51_combout\) # (\c[35]~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[35]~input_o\,
	datab => \B[35]~input_o\,
	datac => \c[35]~51_combout\,
	datad => \c[35]~52_combout\,
	combout => \S~35_combout\);

-- Location: IOIBUF_X0_Y36_N15
\B[36]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(36),
	o => \B[36]~input_o\);

-- Location: LCCOMB_X114_Y23_N28
\cb~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \cb~24_combout\ = (\B[33]~input_o\ & (!\A[33]~input_o\ & (\B[32]~input_o\ $ (\A[32]~input_o\)))) # (!\B[33]~input_o\ & (\A[33]~input_o\ & (\B[32]~input_o\ $ (\A[32]~input_o\))))

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
	combout => \cb~24_combout\);

-- Location: LCCOMB_X111_Y23_N18
\cb~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \cb~25_combout\ = (\A[34]~input_o\ & (!\B[34]~input_o\ & (\B[35]~input_o\ $ (\A[35]~input_o\)))) # (!\A[34]~input_o\ & (\B[34]~input_o\ & (\B[35]~input_o\ $ (\A[35]~input_o\))))

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
	combout => \cb~25_combout\);

-- Location: LCCOMB_X112_Y23_N22
\rCOut[8]\ : cycloneive_lcell_comb
-- Equation(s):
-- rCOut(8) = LCELL((\B[35]~input_o\ & ((\c[35]~51_combout\) # ((\A[35]~input_o\) # (\c[35]~52_combout\)))) # (!\B[35]~input_o\ & (\A[35]~input_o\ & ((\c[35]~51_combout\) # (\c[35]~52_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[35]~input_o\,
	datab => \c[35]~51_combout\,
	datac => \A[35]~input_o\,
	datad => \c[35]~52_combout\,
	combout => rCOut(8));

-- Location: LCCOMB_X112_Y23_N4
\cb[9]\ : cycloneive_lcell_comb
-- Equation(s):
-- cb(9) = LCELL((rCOut(8)) # ((\cb~24_combout\ & (\cb~25_combout\ & cb(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cb~24_combout\,
	datab => \cb~25_combout\,
	datac => rCOut(8),
	datad => cb(8),
	combout => cb(9));

-- Location: IOIBUF_X115_Y32_N1
\A[36]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(36),
	o => \A[36]~input_o\);

-- Location: LCCOMB_X112_Y43_N8
\S~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~36_combout\ = \B[36]~input_o\ $ (cb(9) $ (\A[36]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[36]~input_o\,
	datac => cb(9),
	datad => \A[36]~input_o\,
	combout => \S~36_combout\);

-- Location: LCCOMB_X112_Y43_N26
\c[37]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[37]~53_combout\ = (\B[36]~input_o\ & \A[36]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[36]~input_o\,
	datad => \A[36]~input_o\,
	combout => \c[37]~53_combout\);

-- Location: IOIBUF_X107_Y73_N8
\B[37]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(37),
	o => \B[37]~input_o\);

-- Location: IOIBUF_X0_Y36_N22
\A[37]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(37),
	o => \A[37]~input_o\);

-- Location: LCCOMB_X112_Y43_N12
\c[37]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[37]~54_combout\ = (cb(9) & ((\B[36]~input_o\) # (\A[36]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[36]~input_o\,
	datac => cb(9),
	datad => \A[36]~input_o\,
	combout => \c[37]~54_combout\);

-- Location: LCCOMB_X112_Y43_N14
\S~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~37_combout\ = \B[37]~input_o\ $ (\A[37]~input_o\ $ (((\c[37]~53_combout\) # (\c[37]~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c[37]~53_combout\,
	datab => \B[37]~input_o\,
	datac => \A[37]~input_o\,
	datad => \c[37]~54_combout\,
	combout => \S~37_combout\);

-- Location: IOIBUF_X115_Y28_N8
\A[38]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(38),
	o => \A[38]~input_o\);

-- Location: IOIBUF_X107_Y73_N15
\B[38]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(38),
	o => \B[38]~input_o\);

-- Location: LCCOMB_X112_Y43_N24
\c[38]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[38]~55_combout\ = (cb(9) & ((\B[36]~input_o\) # (\A[36]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[36]~input_o\,
	datac => cb(9),
	datad => \A[36]~input_o\,
	combout => \c[38]~55_combout\);

-- Location: LCCOMB_X112_Y43_N2
\c[38]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[38]~56_combout\ = (\B[37]~input_o\ & ((\c[37]~53_combout\) # ((\A[37]~input_o\) # (\c[38]~55_combout\)))) # (!\B[37]~input_o\ & (\A[37]~input_o\ & ((\c[37]~53_combout\) # (\c[38]~55_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c[37]~53_combout\,
	datab => \B[37]~input_o\,
	datac => \A[37]~input_o\,
	datad => \c[38]~55_combout\,
	combout => \c[38]~56_combout\);

-- Location: LCCOMB_X112_Y43_N0
\S~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~38_combout\ = \A[38]~input_o\ $ (\B[38]~input_o\ $ (\c[38]~56_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[38]~input_o\,
	datac => \B[38]~input_o\,
	datad => \c[38]~56_combout\,
	combout => \S~38_combout\);

-- Location: IOIBUF_X115_Y28_N1
\A[39]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(39),
	o => \A[39]~input_o\);

-- Location: IOIBUF_X107_Y73_N22
\B[39]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(39),
	o => \B[39]~input_o\);

-- Location: LCCOMB_X112_Y43_N22
\c[39]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[39]~57_combout\ = (\B[38]~input_o\ & \A[38]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[38]~input_o\,
	datad => \A[38]~input_o\,
	combout => \c[39]~57_combout\);

-- Location: LCCOMB_X112_Y43_N28
\c[39]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[39]~58_combout\ = (\c[38]~56_combout\ & ((\A[38]~input_o\) # (\B[38]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[38]~input_o\,
	datac => \B[38]~input_o\,
	datad => \c[38]~56_combout\,
	combout => \c[39]~58_combout\);

-- Location: LCCOMB_X112_Y43_N18
\S~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~39_combout\ = \A[39]~input_o\ $ (\B[39]~input_o\ $ (((\c[39]~57_combout\) # (\c[39]~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[39]~input_o\,
	datab => \B[39]~input_o\,
	datac => \c[39]~57_combout\,
	datad => \c[39]~58_combout\,
	combout => \S~39_combout\);

-- Location: IOIBUF_X115_Y57_N22
\A[40]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(40),
	o => \A[40]~input_o\);

-- Location: IOIBUF_X109_Y73_N8
\B[40]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(40),
	o => \B[40]~input_o\);

-- Location: LCCOMB_X112_Y43_N10
\cb~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \cb~28_combout\ = (\A[39]~input_o\ & (!\B[39]~input_o\ & (\B[38]~input_o\ $ (\A[38]~input_o\)))) # (!\A[39]~input_o\ & (\B[39]~input_o\ & (\B[38]~input_o\ $ (\A[38]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[39]~input_o\,
	datab => \B[39]~input_o\,
	datac => \B[38]~input_o\,
	datad => \A[38]~input_o\,
	combout => \cb~28_combout\);

-- Location: LCCOMB_X112_Y43_N16
\cb~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \cb~27_combout\ = (\A[37]~input_o\ & (!\B[37]~input_o\ & (\B[36]~input_o\ $ (\A[36]~input_o\)))) # (!\A[37]~input_o\ & (\B[37]~input_o\ & (\B[36]~input_o\ $ (\A[36]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[37]~input_o\,
	datab => \B[37]~input_o\,
	datac => \B[36]~input_o\,
	datad => \A[36]~input_o\,
	combout => \cb~27_combout\);

-- Location: LCCOMB_X112_Y43_N20
\rCOut[9]\ : cycloneive_lcell_comb
-- Equation(s):
-- rCOut(9) = LCELL((\A[39]~input_o\ & ((\B[39]~input_o\) # ((\c[39]~57_combout\) # (\c[39]~58_combout\)))) # (!\A[39]~input_o\ & (\B[39]~input_o\ & ((\c[39]~57_combout\) # (\c[39]~58_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[39]~input_o\,
	datab => \B[39]~input_o\,
	datac => \c[39]~57_combout\,
	datad => \c[39]~58_combout\,
	combout => rCOut(9));

-- Location: LCCOMB_X113_Y43_N30
\cb[10]\ : cycloneive_lcell_comb
-- Equation(s):
-- cb(10) = LCELL((rCOut(9)) # ((\cb~28_combout\ & (cb(9) & \cb~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cb~28_combout\,
	datab => cb(9),
	datac => \cb~27_combout\,
	datad => rCOut(9),
	combout => cb(10));

-- Location: LCCOMB_X113_Y44_N4
\S~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~40_combout\ = \A[40]~input_o\ $ (\B[40]~input_o\ $ (cb(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[40]~input_o\,
	datac => \B[40]~input_o\,
	datad => cb(10),
	combout => \S~40_combout\);

-- Location: IOIBUF_X105_Y73_N8
\B[41]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(41),
	o => \B[41]~input_o\);

-- Location: LCCOMB_X113_Y44_N30
\c[41]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[41]~59_combout\ = (\B[40]~input_o\ & \A[40]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[40]~input_o\,
	datad => \A[40]~input_o\,
	combout => \c[41]~59_combout\);

-- Location: IOIBUF_X105_Y73_N1
\A[41]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(41),
	o => \A[41]~input_o\);

-- Location: LCCOMB_X113_Y44_N0
\c[41]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[41]~60_combout\ = (cb(10) & ((\A[40]~input_o\) # (\B[40]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[40]~input_o\,
	datac => \B[40]~input_o\,
	datad => cb(10),
	combout => \c[41]~60_combout\);

-- Location: LCCOMB_X113_Y44_N18
\S~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~41_combout\ = \B[41]~input_o\ $ (\A[41]~input_o\ $ (((\c[41]~59_combout\) # (\c[41]~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[41]~input_o\,
	datab => \c[41]~59_combout\,
	datac => \A[41]~input_o\,
	datad => \c[41]~60_combout\,
	combout => \S~41_combout\);

-- Location: IOIBUF_X115_Y56_N22
\A[42]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(42),
	o => \A[42]~input_o\);

-- Location: IOIBUF_X115_Y50_N8
\B[42]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(42),
	o => \B[42]~input_o\);

-- Location: LCCOMB_X113_Y43_N16
\c[42]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[42]~61_combout\ = (cb(10) & ((\B[40]~input_o\) # (\A[40]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[40]~input_o\,
	datac => cb(10),
	datad => \A[40]~input_o\,
	combout => \c[42]~61_combout\);

-- Location: LCCOMB_X113_Y43_N22
\c[42]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[42]~62_combout\ = (\A[41]~input_o\ & ((\B[41]~input_o\) # ((\c[41]~59_combout\) # (\c[42]~61_combout\)))) # (!\A[41]~input_o\ & (\B[41]~input_o\ & ((\c[41]~59_combout\) # (\c[42]~61_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[41]~input_o\,
	datab => \B[41]~input_o\,
	datac => \c[41]~59_combout\,
	datad => \c[42]~61_combout\,
	combout => \c[42]~62_combout\);

-- Location: LCCOMB_X114_Y47_N16
\S~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~42_combout\ = \A[42]~input_o\ $ (\B[42]~input_o\ $ (\c[42]~62_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[42]~input_o\,
	datac => \B[42]~input_o\,
	datad => \c[42]~62_combout\,
	combout => \S~42_combout\);

-- Location: IOIBUF_X115_Y56_N15
\B[43]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(43),
	o => \B[43]~input_o\);

-- Location: IOIBUF_X115_Y57_N15
\A[43]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(43),
	o => \A[43]~input_o\);

-- Location: LCCOMB_X114_Y47_N30
\c[43]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[43]~63_combout\ = (\B[42]~input_o\ & \A[42]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[42]~input_o\,
	datad => \A[42]~input_o\,
	combout => \c[43]~63_combout\);

-- Location: LCCOMB_X113_Y43_N12
\c[43]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[43]~64_combout\ = (\c[42]~62_combout\ & ((\A[42]~input_o\) # (\B[42]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[42]~input_o\,
	datab => \B[42]~input_o\,
	datac => \c[42]~62_combout\,
	combout => \c[43]~64_combout\);

-- Location: LCCOMB_X114_Y47_N12
\S~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~43_combout\ = \B[43]~input_o\ $ (\A[43]~input_o\ $ (((\c[43]~63_combout\) # (\c[43]~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[43]~input_o\,
	datab => \A[43]~input_o\,
	datac => \c[43]~63_combout\,
	datad => \c[43]~64_combout\,
	combout => \S~43_combout\);

-- Location: IOIBUF_X115_Y36_N8
\B[44]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(44),
	o => \B[44]~input_o\);

-- Location: LCCOMB_X113_Y44_N28
\cb~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \cb~30_combout\ = (\A[41]~input_o\ & (!\B[41]~input_o\ & (\A[40]~input_o\ $ (\B[40]~input_o\)))) # (!\A[41]~input_o\ & (\B[41]~input_o\ & (\A[40]~input_o\ $ (\B[40]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[41]~input_o\,
	datab => \A[40]~input_o\,
	datac => \B[40]~input_o\,
	datad => \B[41]~input_o\,
	combout => \cb~30_combout\);

-- Location: LCCOMB_X114_Y47_N28
\cb~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \cb~31_combout\ = (\B[43]~input_o\ & (!\A[43]~input_o\ & (\A[42]~input_o\ $ (\B[42]~input_o\)))) # (!\B[43]~input_o\ & (\A[43]~input_o\ & (\A[42]~input_o\ $ (\B[42]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[43]~input_o\,
	datab => \A[42]~input_o\,
	datac => \B[42]~input_o\,
	datad => \A[43]~input_o\,
	combout => \cb~31_combout\);

-- Location: LCCOMB_X113_Y43_N24
\rCOut[10]\ : cycloneive_lcell_comb
-- Equation(s):
-- rCOut(10) = LCELL((\A[43]~input_o\ & ((\B[43]~input_o\) # ((\c[43]~63_combout\) # (\c[43]~64_combout\)))) # (!\A[43]~input_o\ & (\B[43]~input_o\ & ((\c[43]~63_combout\) # (\c[43]~64_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[43]~input_o\,
	datab => \B[43]~input_o\,
	datac => \c[43]~63_combout\,
	datad => \c[43]~64_combout\,
	combout => rCOut(10));

-- Location: LCCOMB_X113_Y43_N20
\cb[11]\ : cycloneive_lcell_comb
-- Equation(s):
-- cb(11) = LCELL((rCOut(10)) # ((\cb~30_combout\ & (\cb~31_combout\ & cb(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cb~30_combout\,
	datab => \cb~31_combout\,
	datac => cb(10),
	datad => rCOut(10),
	combout => cb(11));

-- Location: IOIBUF_X115_Y36_N15
\A[44]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(44),
	o => \A[44]~input_o\);

-- Location: LCCOMB_X114_Y39_N28
\S~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~44_combout\ = \B[44]~input_o\ $ (cb(11) $ (\A[44]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[44]~input_o\,
	datac => cb(11),
	datad => \A[44]~input_o\,
	combout => \S~44_combout\);

-- Location: IOIBUF_X115_Y36_N1
\A[45]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(45),
	o => \A[45]~input_o\);

-- Location: IOIBUF_X115_Y34_N15
\B[45]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(45),
	o => \B[45]~input_o\);

-- Location: LCCOMB_X114_Y39_N14
\c[45]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[45]~65_combout\ = (\B[44]~input_o\ & \A[44]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[44]~input_o\,
	datad => \A[44]~input_o\,
	combout => \c[45]~65_combout\);

-- Location: LCCOMB_X114_Y39_N12
\c[45]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[45]~66_combout\ = (cb(11) & ((\B[44]~input_o\) # (\A[44]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[44]~input_o\,
	datac => cb(11),
	datad => \A[44]~input_o\,
	combout => \c[45]~66_combout\);

-- Location: LCCOMB_X114_Y39_N2
\S~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~45_combout\ = \A[45]~input_o\ $ (\B[45]~input_o\ $ (((\c[45]~65_combout\) # (\c[45]~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[45]~input_o\,
	datab => \B[45]~input_o\,
	datac => \c[45]~65_combout\,
	datad => \c[45]~66_combout\,
	combout => \S~45_combout\);

-- Location: IOIBUF_X115_Y42_N15
\B[46]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(46),
	o => \B[46]~input_o\);

-- Location: IOIBUF_X115_Y52_N8
\A[46]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(46),
	o => \A[46]~input_o\);

-- Location: LCCOMB_X113_Y43_N10
\c[46]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[46]~67_combout\ = (cb(11) & ((\B[44]~input_o\) # (\A[44]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[44]~input_o\,
	datab => \A[44]~input_o\,
	datad => cb(11),
	combout => \c[46]~67_combout\);

-- Location: LCCOMB_X113_Y43_N0
\c[46]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[46]~68_combout\ = (\A[45]~input_o\ & ((\c[45]~65_combout\) # ((\B[45]~input_o\) # (\c[46]~67_combout\)))) # (!\A[45]~input_o\ & (\B[45]~input_o\ & ((\c[45]~65_combout\) # (\c[46]~67_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[45]~input_o\,
	datab => \c[45]~65_combout\,
	datac => \B[45]~input_o\,
	datad => \c[46]~67_combout\,
	combout => \c[46]~68_combout\);

-- Location: LCCOMB_X114_Y46_N0
\S~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~46_combout\ = \B[46]~input_o\ $ (\A[46]~input_o\ $ (\c[46]~68_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[46]~input_o\,
	datab => \A[46]~input_o\,
	datac => \c[46]~68_combout\,
	combout => \S~46_combout\);

-- Location: IOIBUF_X115_Y55_N22
\B[47]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(47),
	o => \B[47]~input_o\);

-- Location: IOIBUF_X115_Y55_N15
\A[47]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(47),
	o => \A[47]~input_o\);

-- Location: LCCOMB_X114_Y46_N14
\c[47]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[47]~69_combout\ = (\B[46]~input_o\ & \A[46]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[46]~input_o\,
	datad => \A[46]~input_o\,
	combout => \c[47]~69_combout\);

-- Location: LCCOMB_X113_Y43_N26
\c[47]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[47]~70_combout\ = (\c[46]~68_combout\ & ((\B[46]~input_o\) # (\A[46]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[46]~input_o\,
	datab => \A[46]~input_o\,
	datad => \c[46]~68_combout\,
	combout => \c[47]~70_combout\);

-- Location: LCCOMB_X113_Y43_N4
\S~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~47_combout\ = \B[47]~input_o\ $ (\A[47]~input_o\ $ (((\c[47]~69_combout\) # (\c[47]~70_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[47]~input_o\,
	datab => \A[47]~input_o\,
	datac => \c[47]~69_combout\,
	datad => \c[47]~70_combout\,
	combout => \S~47_combout\);

-- Location: LCCOMB_X114_Y39_N20
\cb~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \cb~33_combout\ = (\A[45]~input_o\ & (!\B[45]~input_o\ & (\B[44]~input_o\ $ (\A[44]~input_o\)))) # (!\A[45]~input_o\ & (\B[45]~input_o\ & (\B[44]~input_o\ $ (\A[44]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[45]~input_o\,
	datab => \B[45]~input_o\,
	datac => \B[44]~input_o\,
	datad => \A[44]~input_o\,
	combout => \cb~33_combout\);

-- Location: LCCOMB_X114_Y46_N24
\cb~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \cb~34_combout\ = (\A[47]~input_o\ & (!\B[47]~input_o\ & (\A[46]~input_o\ $ (\B[46]~input_o\)))) # (!\A[47]~input_o\ & (\B[47]~input_o\ & (\A[46]~input_o\ $ (\B[46]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[47]~input_o\,
	datab => \A[46]~input_o\,
	datac => \B[46]~input_o\,
	datad => \B[47]~input_o\,
	combout => \cb~34_combout\);

-- Location: LCCOMB_X113_Y43_N2
\rCOut[11]\ : cycloneive_lcell_comb
-- Equation(s):
-- rCOut(11) = LCELL((\B[47]~input_o\ & ((\c[47]~69_combout\) # ((\c[47]~70_combout\) # (\A[47]~input_o\)))) # (!\B[47]~input_o\ & (\A[47]~input_o\ & ((\c[47]~69_combout\) # (\c[47]~70_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[47]~input_o\,
	datab => \c[47]~69_combout\,
	datac => \c[47]~70_combout\,
	datad => \A[47]~input_o\,
	combout => rCOut(11));

-- Location: LCCOMB_X113_Y43_N6
\cb[12]\ : cycloneive_lcell_comb
-- Equation(s):
-- cb(12) = LCELL((rCOut(11)) # ((\cb~33_combout\ & (cb(11) & \cb~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cb~33_combout\,
	datab => cb(11),
	datac => \cb~34_combout\,
	datad => rCOut(11),
	combout => cb(12));

-- Location: IOIBUF_X115_Y52_N1
\A[48]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(48),
	o => \A[48]~input_o\);

-- Location: IOIBUF_X107_Y73_N1
\B[48]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(48),
	o => \B[48]~input_o\);

-- Location: LCCOMB_X114_Y49_N12
\S~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~48_combout\ = cb(12) $ (\A[48]~input_o\ $ (\B[48]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cb(12),
	datab => \A[48]~input_o\,
	datac => \B[48]~input_o\,
	combout => \S~48_combout\);

-- Location: IOIBUF_X115_Y53_N15
\A[49]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(49),
	o => \A[49]~input_o\);

-- Location: IOIBUF_X115_Y58_N22
\B[49]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(49),
	o => \B[49]~input_o\);

-- Location: LCCOMB_X114_Y49_N22
\c[49]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[49]~71_combout\ = (\B[48]~input_o\ & \A[48]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[48]~input_o\,
	datad => \A[48]~input_o\,
	combout => \c[49]~71_combout\);

-- Location: LCCOMB_X114_Y49_N28
\c[49]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[49]~72_combout\ = (cb(12) & ((\A[48]~input_o\) # (\B[48]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cb(12),
	datab => \A[48]~input_o\,
	datac => \B[48]~input_o\,
	combout => \c[49]~72_combout\);

-- Location: LCCOMB_X114_Y49_N18
\S~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~49_combout\ = \A[49]~input_o\ $ (\B[49]~input_o\ $ (((\c[49]~71_combout\) # (\c[49]~72_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[49]~input_o\,
	datab => \B[49]~input_o\,
	datac => \c[49]~71_combout\,
	datad => \c[49]~72_combout\,
	combout => \S~49_combout\);

-- Location: IOIBUF_X115_Y33_N8
\A[50]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(50),
	o => \A[50]~input_o\);

-- Location: IOIBUF_X115_Y34_N22
\B[50]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(50),
	o => \B[50]~input_o\);

-- Location: LCCOMB_X113_Y43_N18
\c[50]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[50]~73_combout\ = (cb(12) & ((\B[48]~input_o\) # (\A[48]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[48]~input_o\,
	datab => \A[48]~input_o\,
	datad => cb(12),
	combout => \c[50]~73_combout\);

-- Location: LCCOMB_X113_Y43_N28
\c[50]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[50]~74_combout\ = (\B[49]~input_o\ & ((\A[49]~input_o\) # ((\c[49]~71_combout\) # (\c[50]~73_combout\)))) # (!\B[49]~input_o\ & (\A[49]~input_o\ & ((\c[49]~71_combout\) # (\c[50]~73_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[49]~input_o\,
	datab => \A[49]~input_o\,
	datac => \c[49]~71_combout\,
	datad => \c[50]~73_combout\,
	combout => \c[50]~74_combout\);

-- Location: LCCOMB_X113_Y43_N14
\S~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~50_combout\ = \A[50]~input_o\ $ (\B[50]~input_o\ $ (\c[50]~74_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[50]~input_o\,
	datac => \B[50]~input_o\,
	datad => \c[50]~74_combout\,
	combout => \S~50_combout\);

-- Location: LCCOMB_X114_Y41_N0
\c[51]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[51]~75_combout\ = (\A[50]~input_o\ & \B[50]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[50]~input_o\,
	datad => \B[50]~input_o\,
	combout => \c[51]~75_combout\);

-- Location: IOIBUF_X115_Y33_N1
\A[51]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(51),
	o => \A[51]~input_o\);

-- Location: LCCOMB_X113_Y43_N8
\c[51]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[51]~76_combout\ = (\c[50]~74_combout\ & ((\A[50]~input_o\) # (\B[50]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[50]~input_o\,
	datac => \B[50]~input_o\,
	datad => \c[50]~74_combout\,
	combout => \c[51]~76_combout\);

-- Location: IOIBUF_X115_Y30_N8
\B[51]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(51),
	o => \B[51]~input_o\);

-- Location: LCCOMB_X114_Y41_N10
\S~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~51_combout\ = \A[51]~input_o\ $ (\B[51]~input_o\ $ (((\c[51]~75_combout\) # (\c[51]~76_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c[51]~75_combout\,
	datab => \A[51]~input_o\,
	datac => \c[51]~76_combout\,
	datad => \B[51]~input_o\,
	combout => \S~51_combout\);

-- Location: IOIBUF_X115_Y61_N22
\A[52]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(52),
	o => \A[52]~input_o\);

-- Location: IOIBUF_X115_Y61_N15
\B[52]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(52),
	o => \B[52]~input_o\);

-- Location: LCCOMB_X114_Y49_N8
\cb~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \cb~36_combout\ = (\A[49]~input_o\ & (!\B[49]~input_o\ & (\A[48]~input_o\ $ (\B[48]~input_o\)))) # (!\A[49]~input_o\ & (\B[49]~input_o\ & (\A[48]~input_o\ $ (\B[48]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[49]~input_o\,
	datab => \A[48]~input_o\,
	datac => \B[48]~input_o\,
	datad => \B[49]~input_o\,
	combout => \cb~36_combout\);

-- Location: LCCOMB_X114_Y41_N24
\cb~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \cb~37_combout\ = (\A[50]~input_o\ & (!\B[50]~input_o\ & (\A[51]~input_o\ $ (\B[51]~input_o\)))) # (!\A[50]~input_o\ & (\B[50]~input_o\ & (\A[51]~input_o\ $ (\B[51]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[50]~input_o\,
	datab => \A[51]~input_o\,
	datac => \B[51]~input_o\,
	datad => \B[50]~input_o\,
	combout => \cb~37_combout\);

-- Location: LCCOMB_X114_Y43_N26
\rCOut[12]\ : cycloneive_lcell_comb
-- Equation(s):
-- rCOut(12) = LCELL((\A[51]~input_o\ & ((\B[51]~input_o\) # ((\c[51]~75_combout\) # (\c[51]~76_combout\)))) # (!\A[51]~input_o\ & (\B[51]~input_o\ & ((\c[51]~75_combout\) # (\c[51]~76_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[51]~input_o\,
	datab => \B[51]~input_o\,
	datac => \c[51]~75_combout\,
	datad => \c[51]~76_combout\,
	combout => rCOut(12));

-- Location: LCCOMB_X114_Y43_N16
\cb[13]\ : cycloneive_lcell_comb
-- Equation(s):
-- cb(13) = LCELL((rCOut(12)) # ((\cb~36_combout\ & (\cb~37_combout\ & cb(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cb~36_combout\,
	datab => \cb~37_combout\,
	datac => rCOut(12),
	datad => cb(12),
	combout => cb(13));

-- Location: LCCOMB_X114_Y45_N4
\S~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~52_combout\ = \A[52]~input_o\ $ (\B[52]~input_o\ $ (cb(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[52]~input_o\,
	datac => \B[52]~input_o\,
	datad => cb(13),
	combout => \S~52_combout\);

-- Location: IOIBUF_X115_Y62_N8
\B[53]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(53),
	o => \B[53]~input_o\);

-- Location: IOIBUF_X115_Y62_N22
\A[53]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(53),
	o => \A[53]~input_o\);

-- Location: LCCOMB_X114_Y45_N14
\c[53]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[53]~77_combout\ = (\B[52]~input_o\ & \A[52]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[52]~input_o\,
	datad => \A[52]~input_o\,
	combout => \c[53]~77_combout\);

-- Location: LCCOMB_X114_Y45_N28
\c[53]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[53]~78_combout\ = (cb(13) & ((\A[52]~input_o\) # (\B[52]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[52]~input_o\,
	datac => \B[52]~input_o\,
	datad => cb(13),
	combout => \c[53]~78_combout\);

-- Location: LCCOMB_X114_Y45_N2
\S~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~53_combout\ = \B[53]~input_o\ $ (\A[53]~input_o\ $ (((\c[53]~77_combout\) # (\c[53]~78_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[53]~input_o\,
	datab => \A[53]~input_o\,
	datac => \c[53]~77_combout\,
	datad => \c[53]~78_combout\,
	combout => \S~53_combout\);

-- Location: IOIBUF_X115_Y60_N15
\A[54]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(54),
	o => \A[54]~input_o\);

-- Location: IOIBUF_X115_Y58_N15
\B[54]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(54),
	o => \B[54]~input_o\);

-- Location: LCCOMB_X114_Y43_N24
\c[54]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[54]~79_combout\ = (cb(13) & ((\A[52]~input_o\) # (\B[52]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[52]~input_o\,
	datac => \B[52]~input_o\,
	datad => cb(13),
	combout => \c[54]~79_combout\);

-- Location: LCCOMB_X114_Y43_N2
\c[54]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[54]~80_combout\ = (\B[53]~input_o\ & ((\c[53]~77_combout\) # ((\A[53]~input_o\) # (\c[54]~79_combout\)))) # (!\B[53]~input_o\ & (\A[53]~input_o\ & ((\c[53]~77_combout\) # (\c[54]~79_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[53]~input_o\,
	datab => \c[53]~77_combout\,
	datac => \A[53]~input_o\,
	datad => \c[54]~79_combout\,
	combout => \c[54]~80_combout\);

-- Location: LCCOMB_X114_Y44_N4
\S~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~54_combout\ = \A[54]~input_o\ $ (\B[54]~input_o\ $ (\c[54]~80_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[54]~input_o\,
	datac => \B[54]~input_o\,
	datad => \c[54]~80_combout\,
	combout => \S~54_combout\);

-- Location: IOIBUF_X115_Y62_N15
\B[55]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(55),
	o => \B[55]~input_o\);

-- Location: LCCOMB_X114_Y44_N18
\c[55]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[55]~81_combout\ = (\B[54]~input_o\ & \A[54]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[54]~input_o\,
	datad => \A[54]~input_o\,
	combout => \c[55]~81_combout\);

-- Location: IOIBUF_X115_Y30_N1
\A[55]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(55),
	o => \A[55]~input_o\);

-- Location: LCCOMB_X114_Y43_N0
\c[55]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[55]~82_combout\ = (\c[54]~80_combout\ & ((\A[54]~input_o\) # (\B[54]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[54]~input_o\,
	datab => \B[54]~input_o\,
	datad => \c[54]~80_combout\,
	combout => \c[55]~82_combout\);

-- Location: LCCOMB_X114_Y44_N12
\S~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~55_combout\ = \B[55]~input_o\ $ (\A[55]~input_o\ $ (((\c[55]~81_combout\) # (\c[55]~82_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[55]~input_o\,
	datab => \c[55]~81_combout\,
	datac => \A[55]~input_o\,
	datad => \c[55]~82_combout\,
	combout => \S~55_combout\);

-- Location: IOIBUF_X115_Y65_N22
\B[56]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(56),
	o => \B[56]~input_o\);

-- Location: IOIBUF_X115_Y65_N15
\A[56]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(56),
	o => \A[56]~input_o\);

-- Location: LCCOMB_X114_Y44_N30
\cb~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \cb~40_combout\ = (\A[54]~input_o\ & (!\B[54]~input_o\ & (\A[55]~input_o\ $ (\B[55]~input_o\)))) # (!\A[54]~input_o\ & (\B[54]~input_o\ & (\A[55]~input_o\ $ (\B[55]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[54]~input_o\,
	datab => \B[54]~input_o\,
	datac => \A[55]~input_o\,
	datad => \B[55]~input_o\,
	combout => \cb~40_combout\);

-- Location: LCCOMB_X114_Y45_N8
\cb~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \cb~39_combout\ = (\A[52]~input_o\ & (!\B[52]~input_o\ & (\B[53]~input_o\ $ (\A[53]~input_o\)))) # (!\A[52]~input_o\ & (\B[52]~input_o\ & (\B[53]~input_o\ $ (\A[53]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[52]~input_o\,
	datab => \B[52]~input_o\,
	datac => \B[53]~input_o\,
	datad => \A[53]~input_o\,
	combout => \cb~39_combout\);

-- Location: LCCOMB_X114_Y43_N20
\rCOut[13]\ : cycloneive_lcell_comb
-- Equation(s):
-- rCOut(13) = LCELL((\B[55]~input_o\ & ((\c[55]~81_combout\) # ((\A[55]~input_o\) # (\c[55]~82_combout\)))) # (!\B[55]~input_o\ & (\A[55]~input_o\ & ((\c[55]~81_combout\) # (\c[55]~82_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c[55]~81_combout\,
	datab => \B[55]~input_o\,
	datac => \A[55]~input_o\,
	datad => \c[55]~82_combout\,
	combout => rCOut(13));

-- Location: LCCOMB_X114_Y43_N6
\cb[14]\ : cycloneive_lcell_comb
-- Equation(s):
-- cb(14) = LCELL((rCOut(13)) # ((\cb~40_combout\ & (cb(13) & \cb~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cb~40_combout\,
	datab => cb(13),
	datac => \cb~39_combout\,
	datad => rCOut(13),
	combout => cb(14));

-- Location: LCCOMB_X114_Y43_N30
\S~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~56_combout\ = \B[56]~input_o\ $ (\A[56]~input_o\ $ (cb(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[56]~input_o\,
	datac => \A[56]~input_o\,
	datad => cb(14),
	combout => \S~56_combout\);

-- Location: IOIBUF_X115_Y66_N22
\A[57]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(57),
	o => \A[57]~input_o\);

-- Location: IOIBUF_X115_Y66_N15
\B[57]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(57),
	o => \B[57]~input_o\);

-- Location: LCCOMB_X114_Y47_N14
\c[57]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[57]~83_combout\ = (\B[56]~input_o\ & \A[56]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[56]~input_o\,
	datad => \A[56]~input_o\,
	combout => \c[57]~83_combout\);

-- Location: LCCOMB_X114_Y47_N20
\c[57]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[57]~84_combout\ = (cb(14) & ((\B[56]~input_o\) # (\A[56]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[56]~input_o\,
	datab => \A[56]~input_o\,
	datad => cb(14),
	combout => \c[57]~84_combout\);

-- Location: LCCOMB_X114_Y47_N10
\S~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~57_combout\ = \A[57]~input_o\ $ (\B[57]~input_o\ $ (((\c[57]~83_combout\) # (\c[57]~84_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[57]~input_o\,
	datab => \B[57]~input_o\,
	datac => \c[57]~83_combout\,
	datad => \c[57]~84_combout\,
	combout => \S~57_combout\);

-- Location: IOIBUF_X115_Y29_N1
\B[58]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(58),
	o => \B[58]~input_o\);

-- Location: IOIBUF_X115_Y29_N8
\A[58]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(58),
	o => \A[58]~input_o\);

-- Location: LCCOMB_X114_Y43_N28
\c[58]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[58]~85_combout\ = (cb(14) & ((\B[56]~input_o\) # (\A[56]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[56]~input_o\,
	datac => \A[56]~input_o\,
	datad => cb(14),
	combout => \c[58]~85_combout\);

-- Location: LCCOMB_X114_Y43_N18
\c[58]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[58]~86_combout\ = (\B[57]~input_o\ & ((\c[57]~83_combout\) # ((\A[57]~input_o\) # (\c[58]~85_combout\)))) # (!\B[57]~input_o\ & (\A[57]~input_o\ & ((\c[57]~83_combout\) # (\c[58]~85_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[57]~input_o\,
	datab => \c[57]~83_combout\,
	datac => \A[57]~input_o\,
	datad => \c[58]~85_combout\,
	combout => \c[58]~86_combout\);

-- Location: LCCOMB_X114_Y43_N8
\S~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~58_combout\ = \B[58]~input_o\ $ (\A[58]~input_o\ $ (\c[58]~86_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[58]~input_o\,
	datac => \A[58]~input_o\,
	datad => \c[58]~86_combout\,
	combout => \S~58_combout\);

-- Location: LCCOMB_X114_Y40_N4
\c[59]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[59]~87_combout\ = (\A[58]~input_o\ & \B[58]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[58]~input_o\,
	datad => \B[58]~input_o\,
	combout => \c[59]~87_combout\);

-- Location: IOIBUF_X115_Y31_N8
\B[59]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(59),
	o => \B[59]~input_o\);

-- Location: IOIBUF_X115_Y31_N1
\A[59]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(59),
	o => \A[59]~input_o\);

-- Location: LCCOMB_X114_Y43_N22
\c[59]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[59]~88_combout\ = (\c[58]~86_combout\ & ((\B[58]~input_o\) # (\A[58]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[58]~input_o\,
	datac => \A[58]~input_o\,
	datad => \c[58]~86_combout\,
	combout => \c[59]~88_combout\);

-- Location: LCCOMB_X114_Y40_N2
\S~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~59_combout\ = \B[59]~input_o\ $ (\A[59]~input_o\ $ (((\c[59]~87_combout\) # (\c[59]~88_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c[59]~87_combout\,
	datab => \B[59]~input_o\,
	datac => \A[59]~input_o\,
	datad => \c[59]~88_combout\,
	combout => \S~59_combout\);

-- Location: IOIBUF_X115_Y68_N22
\A[60]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(60),
	o => \A[60]~input_o\);

-- Location: IOIBUF_X115_Y68_N15
\B[60]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(60),
	o => \B[60]~input_o\);

-- Location: LCCOMB_X114_Y47_N2
\cb~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \cb~42_combout\ = (\B[56]~input_o\ & (!\A[56]~input_o\ & (\B[57]~input_o\ $ (\A[57]~input_o\)))) # (!\B[56]~input_o\ & (\A[56]~input_o\ & (\B[57]~input_o\ $ (\A[57]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[56]~input_o\,
	datab => \A[56]~input_o\,
	datac => \B[57]~input_o\,
	datad => \A[57]~input_o\,
	combout => \cb~42_combout\);

-- Location: LCCOMB_X114_Y40_N24
\cb~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \cb~43_combout\ = (\A[59]~input_o\ & (!\B[59]~input_o\ & (\B[58]~input_o\ $ (\A[58]~input_o\)))) # (!\A[59]~input_o\ & (\B[59]~input_o\ & (\B[58]~input_o\ $ (\A[58]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[59]~input_o\,
	datab => \B[58]~input_o\,
	datac => \A[58]~input_o\,
	datad => \B[59]~input_o\,
	combout => \cb~43_combout\);

-- Location: LCCOMB_X114_Y43_N10
\rCOut[14]\ : cycloneive_lcell_comb
-- Equation(s):
-- rCOut(14) = LCELL((\B[59]~input_o\ & ((\c[59]~87_combout\) # ((\c[59]~88_combout\) # (\A[59]~input_o\)))) # (!\B[59]~input_o\ & (\A[59]~input_o\ & ((\c[59]~87_combout\) # (\c[59]~88_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c[59]~87_combout\,
	datab => \B[59]~input_o\,
	datac => \c[59]~88_combout\,
	datad => \A[59]~input_o\,
	combout => rCOut(14));

-- Location: LCCOMB_X114_Y43_N12
\cb[15]\ : cycloneive_lcell_comb
-- Equation(s):
-- cb(15) = LCELL((rCOut(14)) # ((cb(14) & (\cb~42_combout\ & \cb~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cb(14),
	datab => \cb~42_combout\,
	datac => \cb~43_combout\,
	datad => rCOut(14),
	combout => cb(15));

-- Location: LCCOMB_X114_Y43_N4
\S~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~60_combout\ = \A[60]~input_o\ $ (\B[60]~input_o\ $ (cb(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[60]~input_o\,
	datab => \B[60]~input_o\,
	datad => cb(15),
	combout => \S~60_combout\);

-- Location: IOIBUF_X115_Y67_N15
\A[61]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(61),
	o => \A[61]~input_o\);

-- Location: IOIBUF_X115_Y69_N22
\B[61]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(61),
	o => \B[61]~input_o\);

-- Location: LCCOMB_X114_Y63_N24
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

-- Location: LCCOMB_X114_Y43_N14
\S~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~61_combout\ = p(61) $ (((\A[60]~input_o\ & ((\B[60]~input_o\) # (cb(15)))) # (!\A[60]~input_o\ & (\B[60]~input_o\ & cb(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[60]~input_o\,
	datab => \B[60]~input_o\,
	datac => p(61),
	datad => cb(15),
	combout => \S~61_combout\);

-- Location: IOIBUF_X115_Y69_N15
\A[62]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(62),
	o => \A[62]~input_o\);

-- Location: IOIBUF_X115_Y69_N1
\B[62]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(62),
	o => \B[62]~input_o\);

-- Location: LCCOMB_X114_Y63_N6
\c[62]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[62]~89_combout\ = (\B[60]~input_o\ & ((cb(15)) # (\A[60]~input_o\))) # (!\B[60]~input_o\ & (cb(15) & \A[60]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[60]~input_o\,
	datac => cb(15),
	datad => \A[60]~input_o\,
	combout => \c[62]~89_combout\);

-- Location: LCCOMB_X114_Y63_N12
\c[62]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[62]~90_combout\ = (\B[61]~input_o\ & ((\A[61]~input_o\) # (\c[62]~89_combout\))) # (!\B[61]~input_o\ & (\A[61]~input_o\ & \c[62]~89_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[61]~input_o\,
	datac => \A[61]~input_o\,
	datad => \c[62]~89_combout\,
	combout => \c[62]~90_combout\);

-- Location: LCCOMB_X114_Y63_N10
\S~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~62_combout\ = \A[62]~input_o\ $ (\B[62]~input_o\ $ (\c[62]~90_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[62]~input_o\,
	datac => \B[62]~input_o\,
	datad => \c[62]~90_combout\,
	combout => \S~62_combout\);

-- Location: IOIBUF_X113_Y73_N8
\A[63]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(63),
	o => \A[63]~input_o\);

-- Location: IOIBUF_X113_Y73_N1
\B[63]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(63),
	o => \B[63]~input_o\);

-- Location: LCCOMB_X114_Y63_N8
\p[63]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(63) = \A[63]~input_o\ $ (\B[63]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[63]~input_o\,
	datac => \B[63]~input_o\,
	combout => p(63));

-- Location: LCCOMB_X114_Y63_N22
\S~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~63_combout\ = p(63) $ (((\A[62]~input_o\ & ((\B[62]~input_o\) # (\c[62]~90_combout\))) # (!\A[62]~input_o\ & (\B[62]~input_o\ & \c[62]~90_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[62]~input_o\,
	datab => p(63),
	datac => \B[62]~input_o\,
	datad => \c[62]~90_combout\,
	combout => \S~63_combout\);

-- Location: LCCOMB_X114_Y63_N26
\cb~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \cb~45_combout\ = (\B[60]~input_o\ & (!\A[60]~input_o\ & (\B[61]~input_o\ $ (\A[61]~input_o\)))) # (!\B[60]~input_o\ & (\A[60]~input_o\ & (\B[61]~input_o\ $ (\A[61]~input_o\))))

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
	combout => \cb~45_combout\);

-- Location: LCCOMB_X114_Y63_N16
\cb~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \cb~46_combout\ = (\A[62]~input_o\ & (!\B[62]~input_o\ & (\A[63]~input_o\ $ (\B[63]~input_o\)))) # (!\A[62]~input_o\ & (\B[62]~input_o\ & (\A[63]~input_o\ $ (\B[63]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[62]~input_o\,
	datab => \B[62]~input_o\,
	datac => \A[63]~input_o\,
	datad => \B[63]~input_o\,
	combout => \cb~46_combout\);

-- Location: LCCOMB_X114_Y63_N28
\rCOut~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \rCOut~15_combout\ = (\A[62]~input_o\ & ((\B[62]~input_o\) # (\c[62]~90_combout\))) # (!\A[62]~input_o\ & (\B[62]~input_o\ & \c[62]~90_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[62]~input_o\,
	datac => \B[62]~input_o\,
	datad => \c[62]~90_combout\,
	combout => \rCOut~15_combout\);

-- Location: LCCOMB_X114_Y63_N2
\rCOut[15]\ : cycloneive_lcell_comb
-- Equation(s):
-- rCOut(15) = LCELL((\A[63]~input_o\ & ((\B[63]~input_o\) # (\rCOut~15_combout\))) # (!\A[63]~input_o\ & (\B[63]~input_o\ & \rCOut~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[63]~input_o\,
	datac => \B[63]~input_o\,
	datad => \rCOut~15_combout\,
	combout => rCOut(15));

-- Location: LCCOMB_X114_Y63_N18
\cb[16]\ : cycloneive_lcell_comb
-- Equation(s):
-- cb(16) = LCELL((rCOut(15)) # ((\cb~45_combout\ & (\cb~46_combout\ & cb(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cb~45_combout\,
	datab => \cb~46_combout\,
	datac => cb(15),
	datad => rCOut(15),
	combout => cb(16));

-- Location: LCCOMB_X114_Y63_N20
\Ovfl~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Ovfl~0_combout\ = cb(16) $ (((\A[62]~input_o\ & ((\B[62]~input_o\) # (\c[62]~90_combout\))) # (!\A[62]~input_o\ & (\B[62]~input_o\ & \c[62]~90_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[62]~input_o\,
	datab => \B[62]~input_o\,
	datac => \c[62]~90_combout\,
	datad => cb(16),
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


