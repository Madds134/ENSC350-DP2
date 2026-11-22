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

-- DATE "11/21/2026 12:02:16"

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
	A : IN std_logic_vector(31 DOWNTO 0);
	B : IN std_logic_vector(31 DOWNTO 0);
	S : OUT std_logic_vector(31 DOWNTO 0);
	Cin : IN std_logic;
	Cout : OUT std_logic;
	Ovfl : OUT std_logic
	);
END Adder;

-- Design Ports Information
-- S[0]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[1]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[2]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[3]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[4]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[5]	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[6]	=>  Location: PIN_W7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[7]	=>  Location: PIN_Y7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[8]	=>  Location: PIN_AB3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[9]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[10]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[11]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[12]	=>  Location: PIN_AA5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[13]	=>  Location: PIN_W6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[14]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[15]	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[16]	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[17]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[18]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[19]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[20]	=>  Location: PIN_V2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[21]	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[22]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[23]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[24]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[25]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[26]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[27]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[28]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[29]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[30]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[31]	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cout	=>  Location: PIN_P4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ovfl	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_T2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_T1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cin	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_W1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_Y6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[8]	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[9]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[10]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[11]	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[11]	=>  Location: PIN_P5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[12]	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[12]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[13]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[13]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[14]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[14]	=>  Location: PIN_AA4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[15]	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[15]	=>  Location: PIN_AA3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[16]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[16]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[17]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[17]	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[18]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[18]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[19]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[19]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[20]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[20]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[21]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[21]	=>  Location: PIN_J5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[22]	=>  Location: PIN_J8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[22]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[23]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[23]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[24]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[24]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[25]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[25]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[26]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[26]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[27]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[27]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[28]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[28]	=>  Location: PIN_U9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[29]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[29]	=>  Location: PIN_Y8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[30]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[30]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[31]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[31]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_A : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_S : std_logic_vector(31 DOWNTO 0);
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
SIGNAL \Cout~output_o\ : std_logic;
SIGNAL \Ovfl~output_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \Cin~input_o\ : std_logic;
SIGNAL \S~0_combout\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \S~1_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|cMid~0_combout\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~0_combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \S~2_combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:cMid~0_combout\ : std_logic;
SIGNAL \S~3_combout\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:Low_half|Recur:Low_half|cMid~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:High_half|BG~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~combout\ : std_logic;
SIGNAL \S~4_combout\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:cMid~0_combout\ : std_logic;
SIGNAL \S~5_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:Low_half|BG~0_combout\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|cMid~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|cMid~1_combout\ : std_logic;
SIGNAL \S~6_combout\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:cMid~0_combout\ : std_logic;
SIGNAL \S~7_combout\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|BG~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:High_half|BG~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:Low_half|Recur:Low_half|BG~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:Low_half|Recur:Low_half|BG~combout\ : std_logic;
SIGNAL \B[8]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:Low_half|cMid~0_combout\ : std_logic;
SIGNAL \S~8_combout\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \B[9]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:cMid~0_combout\ : std_logic;
SIGNAL \S~9_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:Low_half|BG~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|cMid~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|cMid~1_combout\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \B[10]~input_o\ : std_logic;
SIGNAL \S~10_combout\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \B[11]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:cMid~0_combout\ : std_logic;
SIGNAL \S~11_combout\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \B[12]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:High_half|BG~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|BG~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|BG~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:Low_half|Recur:High_half|cMid~0_combout\ : std_logic;
SIGNAL \S~12_combout\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \B[13]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:cMid~0_combout\ : std_logic;
SIGNAL \S~13_combout\ : std_logic;
SIGNAL \B[14]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:Low_half|BG~0_combout\ : std_logic;
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|cMid~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|cMid~1_combout\ : std_logic;
SIGNAL \S~14_combout\ : std_logic;
SIGNAL \B[15]~input_o\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:High_half|Recur:cMid~0_combout\ : std_logic;
SIGNAL \S~15_combout\ : std_logic;
SIGNAL \A[16]~input_o\ : std_logic;
SIGNAL \B[16]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|BG~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:Low_half|Recur:High_half|BP~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:High_half|BG~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:Low_half|BG~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:Low_half|BG~1_combout\ : std_logic;
SIGNAL \CarryNetwork|cMid~0_combout\ : std_logic;
SIGNAL \S~16_combout\ : std_logic;
SIGNAL \A[17]~input_o\ : std_logic;
SIGNAL \B[17]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:cMid~0_combout\ : std_logic;
SIGNAL \S~17_combout\ : std_logic;
SIGNAL \B[18]~input_o\ : std_logic;
SIGNAL \A[18]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|cMid~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|cMid~1_combout\ : std_logic;
SIGNAL \S~18_combout\ : std_logic;
SIGNAL \B[19]~input_o\ : std_logic;
SIGNAL \A[19]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:cMid~0_combout\ : std_logic;
SIGNAL \S~19_combout\ : std_logic;
SIGNAL \A[20]~input_o\ : std_logic;
SIGNAL \B[20]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:High_half|BG~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|BG~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|BG~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:High_half|Recur:Low_half|cMid~0_combout\ : std_logic;
SIGNAL \S~20_combout\ : std_logic;
SIGNAL \A[21]~input_o\ : std_logic;
SIGNAL \B[21]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:cMid~0_combout\ : std_logic;
SIGNAL \S~21_combout\ : std_logic;
SIGNAL \B[22]~input_o\ : std_logic;
SIGNAL \A[22]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:Low_half|BG~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|cMid~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|cMid~1_combout\ : std_logic;
SIGNAL \S~22_combout\ : std_logic;
SIGNAL \B[23]~input_o\ : std_logic;
SIGNAL \A[23]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:cMid~0_combout\ : std_logic;
SIGNAL \S~23_combout\ : std_logic;
SIGNAL \B[24]~input_o\ : std_logic;
SIGNAL \A[24]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:High_half|BG~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|BG~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:High_half|Recur:Low_half|BG~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:High_half|Recur:Low_half|BG~1_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:High_half|Recur:Low_half|BG~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:High_half|cMid~2_combout\ : std_logic;
SIGNAL \S~24_combout\ : std_logic;
SIGNAL \B[25]~input_o\ : std_logic;
SIGNAL \A[25]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:cMid~0_combout\ : std_logic;
SIGNAL \S~25_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:Low_half|BG~0_combout\ : std_logic;
SIGNAL \B[26]~input_o\ : std_logic;
SIGNAL \A[26]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|cMid~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|cMid~1_combout\ : std_logic;
SIGNAL \S~26_combout\ : std_logic;
SIGNAL \B[27]~input_o\ : std_logic;
SIGNAL \A[27]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:cMid~0_combout\ : std_logic;
SIGNAL \S~27_combout\ : std_logic;
SIGNAL \A[28]~input_o\ : std_logic;
SIGNAL \B[28]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|BG~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:High_half|BG~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|BG~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:High_half|Recur:High_half|cMid~0_combout\ : std_logic;
SIGNAL \S~28_combout\ : std_logic;
SIGNAL \A[29]~input_o\ : std_logic;
SIGNAL \B[29]~input_o\ : std_logic;
SIGNAL \S~29_combout\ : std_logic;
SIGNAL \S~30_combout\ : std_logic;
SIGNAL \A[30]~input_o\ : std_logic;
SIGNAL \B[30]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|Recur:Low_half|BG~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|cMid~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|cMid~1_combout\ : std_logic;
SIGNAL \S~31_combout\ : std_logic;
SIGNAL \A[31]~input_o\ : std_logic;
SIGNAL \B[31]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|Recur:High_half|Recur:cMid~0_combout\ : std_logic;
SIGNAL \S~32_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|Recur:High_half|Recur:High_half|c[1]~0_combout\ : std_logic;
SIGNAL \Ovfl~0_combout\ : std_logic;
SIGNAL p : std_logic_vector(31 DOWNTO 0);

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

-- Location: IOOBUF_X18_Y0_N9
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

-- Location: IOOBUF_X18_Y0_N23
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

-- Location: IOOBUF_X18_Y0_N2
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

-- Location: IOOBUF_X16_Y0_N2
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

-- Location: IOOBUF_X16_Y0_N9
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

-- Location: IOOBUF_X16_Y0_N16
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

-- Location: IOOBUF_X14_Y0_N16
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

-- Location: IOOBUF_X14_Y0_N9
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

-- Location: IOOBUF_X7_Y0_N23
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

-- Location: IOOBUF_X0_Y31_N23
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

-- Location: IOOBUF_X9_Y0_N9
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

-- Location: IOOBUF_X0_Y6_N2
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

-- Location: IOOBUF_X9_Y0_N16
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

-- Location: IOOBUF_X7_Y0_N16
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

-- Location: IOOBUF_X0_Y7_N16
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

-- Location: IOOBUF_X7_Y0_N9
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

-- Location: IOOBUF_X0_Y16_N2
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

-- Location: IOOBUF_X0_Y17_N23
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

-- Location: IOOBUF_X0_Y20_N16
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

-- Location: IOOBUF_X0_Y20_N23
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

-- Location: IOOBUF_X0_Y13_N2
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

-- Location: IOOBUF_X0_Y15_N2
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

-- Location: IOOBUF_X0_Y20_N2
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

-- Location: IOOBUF_X0_Y18_N9
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

-- Location: IOOBUF_X0_Y19_N16
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

-- Location: IOOBUF_X0_Y19_N2
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

-- Location: IOOBUF_X0_Y16_N9
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

-- Location: IOOBUF_X0_Y15_N16
\S[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~30_combout\,
	devoe => ww_devoe,
	o => \S[29]~output_o\);

-- Location: IOOBUF_X0_Y15_N23
\S[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~31_combout\,
	devoe => ww_devoe,
	o => \S[30]~output_o\);

-- Location: IOOBUF_X0_Y16_N16
\S[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~32_combout\,
	devoe => ww_devoe,
	o => \S[31]~output_o\);

-- Location: IOOBUF_X0_Y16_N23
\Cout~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|Recur:High_half|Recur:High_half|c[1]~0_combout\,
	devoe => ww_devoe,
	o => \Cout~output_o\);

-- Location: IOOBUF_X0_Y13_N9
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

-- Location: IOIBUF_X9_Y0_N22
\Cin~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cin,
	o => \Cin~input_o\);

-- Location: LCCOMB_X1_Y11_N0
\S~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~0_combout\ = \B[0]~input_o\ $ (\A[0]~input_o\ $ (\Cin~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[0]~input_o\,
	datad => \Cin~input_o\,
	combout => \S~0_combout\);

-- Location: IOIBUF_X0_Y11_N8
\A[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: IOIBUF_X0_Y11_N1
\B[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: LCCOMB_X1_Y11_N14
\p[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(1) = \A[1]~input_o\ $ (\B[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[1]~input_o\,
	datad => \B[1]~input_o\,
	combout => p(1));

-- Location: LCCOMB_X2_Y11_N12
\S~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~1_combout\ = p(1) $ (((\A[0]~input_o\ & ((\B[0]~input_o\) # (\Cin~input_o\))) # (!\A[0]~input_o\ & (\B[0]~input_o\ & \Cin~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(1),
	datab => \A[0]~input_o\,
	datac => \B[0]~input_o\,
	datad => \Cin~input_o\,
	combout => \S~1_combout\);

-- Location: LCCOMB_X2_Y11_N6
\CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|cMid~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|cMid~0_combout\ = (p(1) & (\Cin~input_o\ & (\B[0]~input_o\ $ (\A[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(1),
	datab => \B[0]~input_o\,
	datac => \Cin~input_o\,
	datad => \A[0]~input_o\,
	combout => \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|cMid~0_combout\);

-- Location: IOIBUF_X0_Y10_N15
\B[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: LCCOMB_X1_Y11_N24
\CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~0_combout\ = (\B[1]~input_o\ & ((\A[1]~input_o\) # ((\B[0]~input_o\ & \A[0]~input_o\)))) # (!\B[1]~input_o\ & (\A[1]~input_o\ & (\B[0]~input_o\ & \A[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[1]~input_o\,
	datac => \B[0]~input_o\,
	datad => \A[0]~input_o\,
	combout => \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~0_combout\);

-- Location: IOIBUF_X0_Y10_N8
\A[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: LCCOMB_X1_Y11_N6
\S~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~2_combout\ = \B[2]~input_o\ $ (\A[2]~input_o\ $ (((\CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|cMid~0_combout\) # (\CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|cMid~0_combout\,
	datab => \B[2]~input_o\,
	datac => \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~0_combout\,
	datad => \A[2]~input_o\,
	combout => \S~2_combout\);

-- Location: IOIBUF_X0_Y10_N22
\A[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: IOIBUF_X0_Y7_N1
\B[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: LCCOMB_X1_Y11_N12
\CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:cMid~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:cMid~0_combout\ = (\A[2]~input_o\ & ((\CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~0_combout\) # ((\B[2]~input_o\) # 
-- (\CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|cMid~0_combout\)))) # (!\A[2]~input_o\ & (\B[2]~input_o\ & ((\CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~0_combout\) # 
-- (\CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|cMid~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~0_combout\,
	datac => \B[2]~input_o\,
	datad => \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|cMid~0_combout\,
	combout => \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:cMid~0_combout\);

-- Location: LCCOMB_X1_Y11_N30
\S~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~3_combout\ = \A[3]~input_o\ $ (\B[3]~input_o\ $ (\CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:cMid~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datac => \B[3]~input_o\,
	datad => \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:cMid~0_combout\,
	combout => \S~3_combout\);

-- Location: IOIBUF_X0_Y5_N8
\A[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: IOIBUF_X1_Y0_N22
\B[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: LCCOMB_X1_Y11_N26
\CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~0_combout\ = (\B[3]~input_o\ & (!\A[3]~input_o\ & (\B[2]~input_o\ $ (\A[2]~input_o\)))) # (!\B[3]~input_o\ & (\A[3]~input_o\ & (\B[2]~input_o\ $ (\A[2]~input_o\))))

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
	combout => \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~0_combout\);

-- Location: LCCOMB_X1_Y11_N22
\CarryNetwork|Recur:Low_half|Recur:Low_half|cMid~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:Low_half|Recur:Low_half|cMid~0_combout\ = (\CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~0_combout\ & \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|cMid~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~0_combout\,
	datad => \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|cMid~0_combout\,
	combout => \CarryNetwork|Recur:Low_half|Recur:Low_half|cMid~0_combout\);

-- Location: LCCOMB_X1_Y11_N8
\CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:High_half|BG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:High_half|BG~0_combout\ = (\B[3]~input_o\ & ((\A[3]~input_o\) # ((\B[2]~input_o\ & \A[2]~input_o\)))) # (!\B[3]~input_o\ & (\B[2]~input_o\ & (\A[2]~input_o\ & \A[3]~input_o\)))

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
	combout => \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:High_half|BG~0_combout\);

-- Location: LCCOMB_X1_Y11_N16
\CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~combout\ = (\CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:High_half|BG~0_combout\) # ((\CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~0_combout\ & 
-- \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~0_combout\,
	datac => \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:High_half|BG~0_combout\,
	datad => \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~0_combout\,
	combout => \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~combout\);

-- Location: LCCOMB_X1_Y11_N28
\S~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~4_combout\ = \A[4]~input_o\ $ (\B[4]~input_o\ $ (((\CarryNetwork|Recur:Low_half|Recur:Low_half|cMid~0_combout\) # (\CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datab => \B[4]~input_o\,
	datac => \CarryNetwork|Recur:Low_half|Recur:Low_half|cMid~0_combout\,
	datad => \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~combout\,
	combout => \S~4_combout\);

-- Location: IOIBUF_X1_Y0_N29
\A[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: IOIBUF_X0_Y5_N15
\B[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: LCCOMB_X1_Y11_N2
\CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:cMid~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:cMid~0_combout\ = (\A[4]~input_o\ & ((\B[4]~input_o\) # ((\CarryNetwork|Recur:Low_half|Recur:Low_half|cMid~0_combout\) # 
-- (\CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~combout\)))) # (!\A[4]~input_o\ & (\B[4]~input_o\ & ((\CarryNetwork|Recur:Low_half|Recur:Low_half|cMid~0_combout\) # (\CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datab => \B[4]~input_o\,
	datac => \CarryNetwork|Recur:Low_half|Recur:Low_half|cMid~0_combout\,
	datad => \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~combout\,
	combout => \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:cMid~0_combout\);

-- Location: LCCOMB_X1_Y11_N20
\S~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~5_combout\ = \A[5]~input_o\ $ (\B[5]~input_o\ $ (\CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:cMid~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[5]~input_o\,
	datac => \B[5]~input_o\,
	datad => \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:cMid~0_combout\,
	combout => \S~5_combout\);

-- Location: LCCOMB_X2_Y11_N8
\CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:Low_half|BG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:Low_half|BG~0_combout\ = (\A[5]~input_o\ & ((\B[5]~input_o\) # ((\B[4]~input_o\ & \A[4]~input_o\)))) # (!\A[5]~input_o\ & (\B[4]~input_o\ & (\A[4]~input_o\ & \B[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~input_o\,
	datab => \B[4]~input_o\,
	datac => \A[4]~input_o\,
	datad => \B[5]~input_o\,
	combout => \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:Low_half|BG~0_combout\);

-- Location: IOIBUF_X0_Y11_N15
\A[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: IOIBUF_X0_Y5_N1
\B[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: LCCOMB_X2_Y11_N14
\CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|cMid~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|cMid~0_combout\ = (\A[5]~input_o\ & (!\B[5]~input_o\ & (\B[4]~input_o\ $ (\A[4]~input_o\)))) # (!\A[5]~input_o\ & (\B[5]~input_o\ & (\B[4]~input_o\ $ (\A[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~input_o\,
	datab => \B[4]~input_o\,
	datac => \A[4]~input_o\,
	datad => \B[5]~input_o\,
	combout => \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|cMid~0_combout\);

-- Location: LCCOMB_X2_Y11_N20
\CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|cMid~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|cMid~1_combout\ = (\CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|cMid~0_combout\ & ((\CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~combout\) # 
-- ((\CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|cMid~0_combout\ & \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|cMid~0_combout\,
	datab => \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|cMid~0_combout\,
	datac => \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~0_combout\,
	datad => \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~combout\,
	combout => \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|cMid~1_combout\);

-- Location: LCCOMB_X2_Y11_N2
\S~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~6_combout\ = \A[6]~input_o\ $ (\B[6]~input_o\ $ (((\CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:Low_half|BG~0_combout\) # (\CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|cMid~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:Low_half|BG~0_combout\,
	datab => \A[6]~input_o\,
	datac => \B[6]~input_o\,
	datad => \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|cMid~1_combout\,
	combout => \S~6_combout\);

-- Location: IOIBUF_X0_Y3_N1
\B[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: IOIBUF_X5_Y0_N15
\A[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: LCCOMB_X2_Y11_N16
\CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:cMid~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:cMid~0_combout\ = (\A[6]~input_o\ & ((\CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:Low_half|BG~0_combout\) # ((\B[6]~input_o\) # 
-- (\CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|cMid~1_combout\)))) # (!\A[6]~input_o\ & (\B[6]~input_o\ & ((\CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:Low_half|BG~0_combout\) # 
-- (\CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|cMid~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:Low_half|BG~0_combout\,
	datab => \A[6]~input_o\,
	datac => \B[6]~input_o\,
	datad => \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|cMid~1_combout\,
	combout => \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:cMid~0_combout\);

-- Location: LCCOMB_X2_Y11_N30
\S~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~7_combout\ = \B[7]~input_o\ $ (\A[7]~input_o\ $ (\CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:cMid~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[7]~input_o\,
	datac => \A[7]~input_o\,
	datad => \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:cMid~0_combout\,
	combout => \S~7_combout\);

-- Location: IOIBUF_X3_Y0_N8
\A[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: LCCOMB_X2_Y11_N4
\CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|BG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|BG~0_combout\ = (\A[7]~input_o\ & (!\B[7]~input_o\ & (\A[6]~input_o\ $ (\B[6]~input_o\)))) # (!\A[7]~input_o\ & (\B[7]~input_o\ & (\A[6]~input_o\ $ (\B[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datab => \A[6]~input_o\,
	datac => \B[6]~input_o\,
	datad => \B[7]~input_o\,
	combout => \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|BG~0_combout\);

-- Location: LCCOMB_X2_Y11_N0
\CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:High_half|BG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:High_half|BG~0_combout\ = (\A[7]~input_o\ & ((\B[7]~input_o\) # ((\A[6]~input_o\ & \B[6]~input_o\)))) # (!\A[7]~input_o\ & (\A[6]~input_o\ & (\B[6]~input_o\ & \B[7]~input_o\)))

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
	combout => \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:High_half|BG~0_combout\);

-- Location: LCCOMB_X2_Y11_N18
\CarryNetwork|Recur:Low_half|Recur:Low_half|BG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:Low_half|Recur:Low_half|BG~0_combout\ = (\CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:High_half|BG~0_combout\) # ((\CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:Low_half|BG~0_combout\ & 
-- \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|BG~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:Low_half|BG~0_combout\,
	datac => \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|BG~0_combout\,
	datad => \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:High_half|BG~0_combout\,
	combout => \CarryNetwork|Recur:Low_half|Recur:Low_half|BG~0_combout\);

-- Location: LCCOMB_X2_Y11_N24
\CarryNetwork|Recur:Low_half|Recur:Low_half|BG\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:Low_half|Recur:Low_half|BG~combout\ = (\CarryNetwork|Recur:Low_half|Recur:Low_half|BG~0_combout\) # ((\CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|BG~0_combout\ & 
-- (\CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|cMid~0_combout\ & \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|BG~0_combout\,
	datab => \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|cMid~0_combout\,
	datac => \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~combout\,
	datad => \CarryNetwork|Recur:Low_half|Recur:Low_half|BG~0_combout\,
	combout => \CarryNetwork|Recur:Low_half|Recur:Low_half|BG~combout\);

-- Location: IOIBUF_X0_Y4_N1
\B[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

-- Location: LCCOMB_X2_Y11_N22
\CarryNetwork|Recur:Low_half|cMid~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:Low_half|cMid~0_combout\ = (\CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~0_combout\ & (\CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|BG~0_combout\ & 
-- (\CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|cMid~0_combout\ & \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|cMid~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~0_combout\,
	datab => \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|BG~0_combout\,
	datac => \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|cMid~0_combout\,
	datad => \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|cMid~0_combout\,
	combout => \CarryNetwork|Recur:Low_half|cMid~0_combout\);

-- Location: LCCOMB_X2_Y11_N26
\S~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~8_combout\ = \A[8]~input_o\ $ (\B[8]~input_o\ $ (((\CarryNetwork|Recur:Low_half|Recur:Low_half|BG~combout\) # (\CarryNetwork|Recur:Low_half|cMid~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[8]~input_o\,
	datab => \CarryNetwork|Recur:Low_half|Recur:Low_half|BG~combout\,
	datac => \B[8]~input_o\,
	datad => \CarryNetwork|Recur:Low_half|cMid~0_combout\,
	combout => \S~8_combout\);

-- Location: IOIBUF_X3_Y0_N29
\A[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

-- Location: IOIBUF_X0_Y2_N8
\B[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(9),
	o => \B[9]~input_o\);

-- Location: LCCOMB_X2_Y15_N12
\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:cMid~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:cMid~0_combout\ = (\B[8]~input_o\ & ((\CarryNetwork|Recur:Low_half|Recur:Low_half|BG~combout\) # ((\A[8]~input_o\) # (\CarryNetwork|Recur:Low_half|cMid~0_combout\)))) # 
-- (!\B[8]~input_o\ & (\A[8]~input_o\ & ((\CarryNetwork|Recur:Low_half|Recur:Low_half|BG~combout\) # (\CarryNetwork|Recur:Low_half|cMid~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[8]~input_o\,
	datab => \CarryNetwork|Recur:Low_half|Recur:Low_half|BG~combout\,
	datac => \A[8]~input_o\,
	datad => \CarryNetwork|Recur:Low_half|cMid~0_combout\,
	combout => \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:cMid~0_combout\);

-- Location: LCCOMB_X2_Y15_N22
\S~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~9_combout\ = \A[9]~input_o\ $ (\B[9]~input_o\ $ (\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:cMid~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[9]~input_o\,
	datac => \B[9]~input_o\,
	datad => \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:cMid~0_combout\,
	combout => \S~9_combout\);

-- Location: LCCOMB_X2_Y15_N20
\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:Low_half|BG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:Low_half|BG~0_combout\ = (\B[9]~input_o\ & ((\A[9]~input_o\) # ((\A[8]~input_o\ & \B[8]~input_o\)))) # (!\B[9]~input_o\ & (\A[8]~input_o\ & (\A[9]~input_o\ & \B[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[9]~input_o\,
	datab => \A[8]~input_o\,
	datac => \A[9]~input_o\,
	datad => \B[8]~input_o\,
	combout => \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:Low_half|BG~0_combout\);

-- Location: LCCOMB_X2_Y15_N18
\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|cMid~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|cMid~0_combout\ = (\B[9]~input_o\ & (!\A[9]~input_o\ & (\A[8]~input_o\ $ (\B[8]~input_o\)))) # (!\B[9]~input_o\ & (\A[9]~input_o\ & (\A[8]~input_o\ $ (\B[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[9]~input_o\,
	datab => \A[8]~input_o\,
	datac => \A[9]~input_o\,
	datad => \B[8]~input_o\,
	combout => \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|cMid~0_combout\);

-- Location: LCCOMB_X2_Y11_N28
\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|cMid~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|cMid~1_combout\ = (\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|cMid~0_combout\ & ((\CarryNetwork|Recur:Low_half|cMid~0_combout\) # 
-- (\CarryNetwork|Recur:Low_half|Recur:Low_half|BG~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:Low_half|cMid~0_combout\,
	datab => \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|cMid~0_combout\,
	datad => \CarryNetwork|Recur:Low_half|Recur:Low_half|BG~combout\,
	combout => \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|cMid~1_combout\);

-- Location: IOIBUF_X0_Y12_N22
\A[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

-- Location: IOIBUF_X0_Y4_N15
\B[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(10),
	o => \B[10]~input_o\);

-- Location: LCCOMB_X2_Y11_N10
\S~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~10_combout\ = \A[10]~input_o\ $ (\B[10]~input_o\ $ (((\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:Low_half|BG~0_combout\) # (\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|cMid~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:Low_half|BG~0_combout\,
	datab => \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|cMid~1_combout\,
	datac => \A[10]~input_o\,
	datad => \B[10]~input_o\,
	combout => \S~10_combout\);

-- Location: IOIBUF_X0_Y9_N1
\A[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(11),
	o => \A[11]~input_o\);

-- Location: IOIBUF_X0_Y12_N15
\B[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(11),
	o => \B[11]~input_o\);

-- Location: LCCOMB_X1_Y11_N10
\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:cMid~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:cMid~0_combout\ = (\A[10]~input_o\ & ((\B[10]~input_o\) # ((\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:Low_half|BG~0_combout\) # 
-- (\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|cMid~1_combout\)))) # (!\A[10]~input_o\ & (\B[10]~input_o\ & ((\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:Low_half|BG~0_combout\) # 
-- (\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|cMid~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[10]~input_o\,
	datab => \B[10]~input_o\,
	datac => \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:Low_half|BG~0_combout\,
	datad => \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|cMid~1_combout\,
	combout => \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:cMid~0_combout\);

-- Location: LCCOMB_X1_Y11_N4
\S~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~11_combout\ = \A[11]~input_o\ $ (\B[11]~input_o\ $ (\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:cMid~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[11]~input_o\,
	datac => \B[11]~input_o\,
	datad => \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:cMid~0_combout\,
	combout => \S~11_combout\);

-- Location: IOIBUF_X0_Y28_N1
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

-- Location: LCCOMB_X1_Y12_N16
\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:High_half|BG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:High_half|BG~0_combout\ = (\B[11]~input_o\ & ((\A[11]~input_o\) # ((\A[10]~input_o\ & \B[10]~input_o\)))) # (!\B[11]~input_o\ & (\A[10]~input_o\ & (\A[11]~input_o\ & \B[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[11]~input_o\,
	datab => \A[10]~input_o\,
	datac => \A[11]~input_o\,
	datad => \B[10]~input_o\,
	combout => \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:High_half|BG~0_combout\);

-- Location: LCCOMB_X2_Y15_N16
\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|BG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|BG~0_combout\ = (\A[10]~input_o\ & (!\B[10]~input_o\ & (\B[11]~input_o\ $ (\A[11]~input_o\)))) # (!\A[10]~input_o\ & (\B[10]~input_o\ & (\B[11]~input_o\ $ (\A[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[10]~input_o\,
	datab => \B[11]~input_o\,
	datac => \A[11]~input_o\,
	datad => \B[10]~input_o\,
	combout => \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|BG~0_combout\);

-- Location: LCCOMB_X2_Y15_N10
\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|BG\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|BG~combout\ = (\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:High_half|BG~0_combout\) # 
-- ((\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:Low_half|BG~0_combout\ & \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|BG~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:Low_half|BG~0_combout\,
	datac => \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:High_half|BG~0_combout\,
	datad => \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|BG~0_combout\,
	combout => \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|BG~combout\);

-- Location: LCCOMB_X3_Y11_N16
\CarryNetwork|Recur:Low_half|Recur:High_half|cMid~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:Low_half|Recur:High_half|cMid~0_combout\ = (\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|cMid~0_combout\ & (\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|BG~0_combout\ & 
-- ((\CarryNetwork|Recur:Low_half|cMid~0_combout\) # (\CarryNetwork|Recur:Low_half|Recur:Low_half|BG~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|cMid~0_combout\,
	datab => \CarryNetwork|Recur:Low_half|cMid~0_combout\,
	datac => \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|BG~0_combout\,
	datad => \CarryNetwork|Recur:Low_half|Recur:Low_half|BG~combout\,
	combout => \CarryNetwork|Recur:Low_half|Recur:High_half|cMid~0_combout\);

-- Location: LCCOMB_X3_Y11_N2
\S~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~12_combout\ = \A[12]~input_o\ $ (\B[12]~input_o\ $ (((\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|BG~combout\) # (\CarryNetwork|Recur:Low_half|Recur:High_half|cMid~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[12]~input_o\,
	datab => \B[12]~input_o\,
	datac => \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|BG~combout\,
	datad => \CarryNetwork|Recur:Low_half|Recur:High_half|cMid~0_combout\,
	combout => \S~12_combout\);

-- Location: IOIBUF_X14_Y0_N29
\A[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(13),
	o => \A[13]~input_o\);

-- Location: IOIBUF_X0_Y28_N8
\B[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(13),
	o => \B[13]~input_o\);

-- Location: LCCOMB_X3_Y11_N28
\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:cMid~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:cMid~0_combout\ = (\A[12]~input_o\ & ((\B[12]~input_o\) # ((\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|BG~combout\) # 
-- (\CarryNetwork|Recur:Low_half|Recur:High_half|cMid~0_combout\)))) # (!\A[12]~input_o\ & (\B[12]~input_o\ & ((\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|BG~combout\) # (\CarryNetwork|Recur:Low_half|Recur:High_half|cMid~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[12]~input_o\,
	datab => \B[12]~input_o\,
	datac => \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|BG~combout\,
	datad => \CarryNetwork|Recur:Low_half|Recur:High_half|cMid~0_combout\,
	combout => \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:cMid~0_combout\);

-- Location: LCCOMB_X3_Y11_N22
\S~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~13_combout\ = \A[13]~input_o\ $ (\B[13]~input_o\ $ (\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:cMid~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[13]~input_o\,
	datac => \B[13]~input_o\,
	datad => \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:cMid~0_combout\,
	combout => \S~13_combout\);

-- Location: IOIBUF_X9_Y0_N29
\B[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(14),
	o => \B[14]~input_o\);

-- Location: LCCOMB_X2_Y15_N8
\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:Low_half|BG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:Low_half|BG~0_combout\ = (\B[13]~input_o\ & ((\A[13]~input_o\) # ((\A[12]~input_o\ & \B[12]~input_o\)))) # (!\B[13]~input_o\ & (\A[12]~input_o\ & (\B[12]~input_o\ & \A[13]~input_o\)))

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
	combout => \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:Low_half|BG~0_combout\);

-- Location: IOIBUF_X3_Y0_N15
\A[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(14),
	o => \A[14]~input_o\);

-- Location: LCCOMB_X2_Y15_N30
\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|cMid~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|cMid~0_combout\ = (\B[13]~input_o\ & (!\A[13]~input_o\ & (\A[12]~input_o\ $ (\B[12]~input_o\)))) # (!\B[13]~input_o\ & (\A[13]~input_o\ & (\A[12]~input_o\ $ (\B[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[13]~input_o\,
	datab => \A[12]~input_o\,
	datac => \B[12]~input_o\,
	datad => \A[13]~input_o\,
	combout => \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|cMid~0_combout\);

-- Location: LCCOMB_X3_Y11_N0
\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|cMid~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|cMid~1_combout\ = (\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|cMid~0_combout\ & ((\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|BG~combout\) # 
-- (\CarryNetwork|Recur:Low_half|Recur:High_half|cMid~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|cMid~0_combout\,
	datac => \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|BG~combout\,
	datad => \CarryNetwork|Recur:Low_half|Recur:High_half|cMid~0_combout\,
	combout => \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|cMid~1_combout\);

-- Location: LCCOMB_X3_Y11_N26
\S~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~14_combout\ = \B[14]~input_o\ $ (\A[14]~input_o\ $ (((\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:Low_half|BG~0_combout\) # (\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|cMid~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[14]~input_o\,
	datab => \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:Low_half|BG~0_combout\,
	datac => \A[14]~input_o\,
	datad => \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|cMid~1_combout\,
	combout => \S~14_combout\);

-- Location: IOIBUF_X7_Y0_N29
\B[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(15),
	o => \B[15]~input_o\);

-- Location: IOIBUF_X0_Y7_N8
\A[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(15),
	o => \A[15]~input_o\);

-- Location: LCCOMB_X3_Y11_N24
\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:High_half|Recur:cMid~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:High_half|Recur:cMid~0_combout\ = (\B[14]~input_o\ & ((\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:Low_half|BG~0_combout\) # ((\A[14]~input_o\) # 
-- (\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|cMid~1_combout\)))) # (!\B[14]~input_o\ & (\A[14]~input_o\ & ((\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:Low_half|BG~0_combout\) # 
-- (\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|cMid~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[14]~input_o\,
	datab => \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:Low_half|BG~0_combout\,
	datac => \A[14]~input_o\,
	datad => \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|cMid~1_combout\,
	combout => \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:High_half|Recur:cMid~0_combout\);

-- Location: LCCOMB_X3_Y11_N6
\S~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~15_combout\ = \B[15]~input_o\ $ (\A[15]~input_o\ $ (\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:High_half|Recur:cMid~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[15]~input_o\,
	datac => \A[15]~input_o\,
	datad => \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:High_half|Recur:cMid~0_combout\,
	combout => \S~15_combout\);

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

-- Location: IOIBUF_X0_Y28_N15
\B[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(16),
	o => \B[16]~input_o\);

-- Location: LCCOMB_X2_Y15_N24
\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|BG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|BG~0_combout\ = (\A[14]~input_o\ & (!\B[14]~input_o\ & (\B[15]~input_o\ $ (\A[15]~input_o\)))) # (!\A[14]~input_o\ & (\B[14]~input_o\ & (\B[15]~input_o\ $ (\A[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[14]~input_o\,
	datab => \B[14]~input_o\,
	datac => \B[15]~input_o\,
	datad => \A[15]~input_o\,
	combout => \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|BG~0_combout\);

-- Location: LCCOMB_X2_Y15_N26
\CarryNetwork|Recur:Low_half|Recur:High_half|BP~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:Low_half|Recur:High_half|BP~0_combout\ = (\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|cMid~0_combout\ & (\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|BG~0_combout\ & 
-- (\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|cMid~0_combout\ & \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|BG~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|cMid~0_combout\,
	datab => \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|BG~0_combout\,
	datac => \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|cMid~0_combout\,
	datad => \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|BG~0_combout\,
	combout => \CarryNetwork|Recur:Low_half|Recur:High_half|BP~0_combout\);

-- Location: LCCOMB_X3_Y11_N12
\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:High_half|BG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:High_half|BG~0_combout\ = (\A[15]~input_o\ & ((\B[15]~input_o\) # ((\A[14]~input_o\ & \B[14]~input_o\)))) # (!\A[15]~input_o\ & (\A[14]~input_o\ & (\B[15]~input_o\ & \B[14]~input_o\)))

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
	combout => \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:High_half|BG~0_combout\);

-- Location: LCCOMB_X2_Y15_N14
\CarryNetwork|Recur:Low_half|BG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:Low_half|BG~0_combout\ = (\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|BG~0_combout\ & ((\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:Low_half|BG~0_combout\) # 
-- ((\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|cMid~0_combout\ & \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|BG~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|cMid~0_combout\,
	datab => \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|BG~0_combout\,
	datac => \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:Low_half|BG~0_combout\,
	datad => \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|BG~combout\,
	combout => \CarryNetwork|Recur:Low_half|BG~0_combout\);

-- Location: LCCOMB_X2_Y15_N0
\CarryNetwork|Recur:Low_half|BG~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:Low_half|BG~1_combout\ = (\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:High_half|BG~0_combout\) # ((\CarryNetwork|Recur:Low_half|BG~0_combout\) # ((\CarryNetwork|Recur:Low_half|Recur:High_half|BP~0_combout\ & 
-- \CarryNetwork|Recur:Low_half|Recur:Low_half|BG~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:Low_half|Recur:High_half|BP~0_combout\,
	datab => \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:High_half|BG~0_combout\,
	datac => \CarryNetwork|Recur:Low_half|BG~0_combout\,
	datad => \CarryNetwork|Recur:Low_half|Recur:Low_half|BG~combout\,
	combout => \CarryNetwork|Recur:Low_half|BG~1_combout\);

-- Location: LCCOMB_X2_Y15_N4
\CarryNetwork|cMid~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|cMid~0_combout\ = (\CarryNetwork|Recur:Low_half|Recur:High_half|BP~0_combout\ & \CarryNetwork|Recur:Low_half|cMid~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:Low_half|Recur:High_half|BP~0_combout\,
	datad => \CarryNetwork|Recur:Low_half|cMid~0_combout\,
	combout => \CarryNetwork|cMid~0_combout\);

-- Location: LCCOMB_X1_Y16_N16
\S~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~16_combout\ = \A[16]~input_o\ $ (\B[16]~input_o\ $ (((\CarryNetwork|Recur:Low_half|BG~1_combout\) # (\CarryNetwork|cMid~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[16]~input_o\,
	datab => \B[16]~input_o\,
	datac => \CarryNetwork|Recur:Low_half|BG~1_combout\,
	datad => \CarryNetwork|cMid~0_combout\,
	combout => \S~16_combout\);

-- Location: IOIBUF_X0_Y36_N1
\A[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(17),
	o => \A[17]~input_o\);

-- Location: IOIBUF_X0_Y29_N22
\B[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(17),
	o => \B[17]~input_o\);

-- Location: LCCOMB_X1_Y17_N28
\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:cMid~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:cMid~0_combout\ = (\A[16]~input_o\ & ((\B[16]~input_o\) # ((\CarryNetwork|cMid~0_combout\) # (\CarryNetwork|Recur:Low_half|BG~1_combout\)))) # (!\A[16]~input_o\ & 
-- (\B[16]~input_o\ & ((\CarryNetwork|cMid~0_combout\) # (\CarryNetwork|Recur:Low_half|BG~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[16]~input_o\,
	datab => \B[16]~input_o\,
	datac => \CarryNetwork|cMid~0_combout\,
	datad => \CarryNetwork|Recur:Low_half|BG~1_combout\,
	combout => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:cMid~0_combout\);

-- Location: LCCOMB_X1_Y17_N14
\S~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~17_combout\ = \A[17]~input_o\ $ (\B[17]~input_o\ $ (\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:cMid~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[17]~input_o\,
	datab => \B[17]~input_o\,
	datad => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:cMid~0_combout\,
	combout => \S~17_combout\);

-- Location: IOIBUF_X0_Y18_N15
\B[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(18),
	o => \B[18]~input_o\);

-- Location: IOIBUF_X0_Y28_N22
\A[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(18),
	o => \A[18]~input_o\);

-- Location: LCCOMB_X1_Y18_N8
\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~0_combout\ = (\B[17]~input_o\ & ((\A[17]~input_o\) # ((\A[16]~input_o\ & \B[16]~input_o\)))) # (!\B[17]~input_o\ & (\A[16]~input_o\ & (\A[17]~input_o\ & \B[16]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[16]~input_o\,
	datab => \B[17]~input_o\,
	datac => \A[17]~input_o\,
	datad => \B[16]~input_o\,
	combout => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~0_combout\);

-- Location: LCCOMB_X1_Y17_N20
\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|cMid~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|cMid~0_combout\ = (\B[17]~input_o\ & (!\A[17]~input_o\ & (\B[16]~input_o\ $ (\A[16]~input_o\)))) # (!\B[17]~input_o\ & (\A[17]~input_o\ & (\B[16]~input_o\ $ (\A[16]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[17]~input_o\,
	datab => \B[16]~input_o\,
	datac => \A[16]~input_o\,
	datad => \A[17]~input_o\,
	combout => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|cMid~0_combout\);

-- Location: LCCOMB_X2_Y15_N2
\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|cMid~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|cMid~1_combout\ = (\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|cMid~0_combout\ & ((\CarryNetwork|Recur:Low_half|BG~1_combout\) # 
-- ((\CarryNetwork|Recur:Low_half|Recur:High_half|BP~0_combout\ & \CarryNetwork|Recur:Low_half|cMid~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:Low_half|Recur:High_half|BP~0_combout\,
	datab => \CarryNetwork|Recur:Low_half|cMid~0_combout\,
	datac => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|cMid~0_combout\,
	datad => \CarryNetwork|Recur:Low_half|BG~1_combout\,
	combout => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|cMid~1_combout\);

-- Location: LCCOMB_X1_Y17_N10
\S~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~18_combout\ = \B[18]~input_o\ $ (\A[18]~input_o\ $ (((\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~0_combout\) # (\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|cMid~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[18]~input_o\,
	datab => \A[18]~input_o\,
	datac => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~0_combout\,
	datad => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|cMid~1_combout\,
	combout => \S~18_combout\);

-- Location: IOIBUF_X0_Y17_N15
\B[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(19),
	o => \B[19]~input_o\);

-- Location: IOIBUF_X0_Y20_N8
\A[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(19),
	o => \A[19]~input_o\);

-- Location: LCCOMB_X1_Y18_N6
\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:cMid~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:cMid~0_combout\ = (\B[18]~input_o\ & ((\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~0_combout\) # ((\A[18]~input_o\) # 
-- (\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|cMid~1_combout\)))) # (!\B[18]~input_o\ & (\A[18]~input_o\ & ((\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~0_combout\) # 
-- (\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|cMid~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[18]~input_o\,
	datab => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~0_combout\,
	datac => \A[18]~input_o\,
	datad => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|cMid~1_combout\,
	combout => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:cMid~0_combout\);

-- Location: LCCOMB_X1_Y18_N0
\S~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~19_combout\ = \B[19]~input_o\ $ (\A[19]~input_o\ $ (\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:cMid~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[19]~input_o\,
	datab => \A[19]~input_o\,
	datad => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:cMid~0_combout\,
	combout => \S~19_combout\);

-- Location: IOIBUF_X0_Y31_N15
\A[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(20),
	o => \A[20]~input_o\);

-- Location: IOIBUF_X0_Y4_N22
\B[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(20),
	o => \B[20]~input_o\);

-- Location: LCCOMB_X1_Y18_N30
\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:High_half|BG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:High_half|BG~0_combout\ = (\B[19]~input_o\ & ((\A[19]~input_o\) # ((\B[18]~input_o\ & \A[18]~input_o\)))) # (!\B[19]~input_o\ & (\B[18]~input_o\ & (\A[18]~input_o\ & \A[19]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[18]~input_o\,
	datab => \B[19]~input_o\,
	datac => \A[18]~input_o\,
	datad => \A[19]~input_o\,
	combout => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:High_half|BG~0_combout\);

-- Location: LCCOMB_X1_Y17_N0
\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|BG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|BG~0_combout\ = (\B[18]~input_o\ & (!\A[18]~input_o\ & (\B[19]~input_o\ $ (\A[19]~input_o\)))) # (!\B[18]~input_o\ & (\A[18]~input_o\ & (\B[19]~input_o\ $ (\A[19]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[18]~input_o\,
	datab => \B[19]~input_o\,
	datac => \A[19]~input_o\,
	datad => \A[18]~input_o\,
	combout => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|BG~0_combout\);

-- Location: LCCOMB_X1_Y18_N20
\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|BG\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|BG~combout\ = (\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:High_half|BG~0_combout\) # 
-- ((\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~0_combout\ & \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|BG~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~0_combout\,
	datac => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:High_half|BG~0_combout\,
	datad => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|BG~0_combout\,
	combout => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|BG~combout\);

-- Location: LCCOMB_X2_Y15_N28
\CarryNetwork|Recur:High_half|Recur:Low_half|cMid~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:High_half|Recur:Low_half|cMid~0_combout\ = (\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|cMid~0_combout\ & (\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|BG~0_combout\ & ((\CarryNetwork|cMid~0_combout\) # 
-- (\CarryNetwork|Recur:Low_half|BG~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|cMid~0_combout\,
	datab => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|BG~0_combout\,
	datac => \CarryNetwork|cMid~0_combout\,
	datad => \CarryNetwork|Recur:Low_half|BG~1_combout\,
	combout => \CarryNetwork|Recur:High_half|Recur:Low_half|cMid~0_combout\);

-- Location: LCCOMB_X1_Y15_N24
\S~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~20_combout\ = \A[20]~input_o\ $ (\B[20]~input_o\ $ (((\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|BG~combout\) # (\CarryNetwork|Recur:High_half|Recur:Low_half|cMid~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[20]~input_o\,
	datab => \B[20]~input_o\,
	datac => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|BG~combout\,
	datad => \CarryNetwork|Recur:High_half|Recur:Low_half|cMid~0_combout\,
	combout => \S~20_combout\);

-- Location: IOIBUF_X0_Y29_N15
\A[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(21),
	o => \A[21]~input_o\);

-- Location: IOIBUF_X0_Y32_N15
\B[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(21),
	o => \B[21]~input_o\);

-- Location: LCCOMB_X1_Y15_N6
\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:cMid~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:cMid~0_combout\ = (\A[20]~input_o\ & ((\B[20]~input_o\) # ((\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|BG~combout\) # 
-- (\CarryNetwork|Recur:High_half|Recur:Low_half|cMid~0_combout\)))) # (!\A[20]~input_o\ & (\B[20]~input_o\ & ((\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|BG~combout\) # (\CarryNetwork|Recur:High_half|Recur:Low_half|cMid~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[20]~input_o\,
	datab => \B[20]~input_o\,
	datac => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|BG~combout\,
	datad => \CarryNetwork|Recur:High_half|Recur:Low_half|cMid~0_combout\,
	combout => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:cMid~0_combout\);

-- Location: LCCOMB_X1_Y15_N4
\S~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~21_combout\ = \A[21]~input_o\ $ (\B[21]~input_o\ $ (\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:cMid~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[21]~input_o\,
	datac => \B[21]~input_o\,
	datad => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:cMid~0_combout\,
	combout => \S~21_combout\);

-- Location: IOIBUF_X0_Y34_N8
\B[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(22),
	o => \B[22]~input_o\);

-- Location: IOIBUF_X0_Y34_N15
\A[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(22),
	o => \A[22]~input_o\);

-- Location: LCCOMB_X1_Y18_N26
\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:Low_half|BG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:Low_half|BG~0_combout\ = (\A[21]~input_o\ & ((\B[21]~input_o\) # ((\A[20]~input_o\ & \B[20]~input_o\)))) # (!\A[21]~input_o\ & (\A[20]~input_o\ & (\B[20]~input_o\ & \B[21]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[21]~input_o\,
	datab => \A[20]~input_o\,
	datac => \B[20]~input_o\,
	datad => \B[21]~input_o\,
	combout => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:Low_half|BG~0_combout\);

-- Location: LCCOMB_X1_Y18_N16
\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|cMid~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|cMid~0_combout\ = (\A[20]~input_o\ & (!\B[20]~input_o\ & (\A[21]~input_o\ $ (\B[21]~input_o\)))) # (!\A[20]~input_o\ & (\B[20]~input_o\ & (\A[21]~input_o\ $ (\B[21]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[20]~input_o\,
	datab => \B[20]~input_o\,
	datac => \A[21]~input_o\,
	datad => \B[21]~input_o\,
	combout => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|cMid~0_combout\);

-- Location: LCCOMB_X1_Y18_N10
\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|cMid~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|cMid~1_combout\ = (\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|cMid~0_combout\ & ((\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|BG~combout\) # 
-- ((\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|BG~0_combout\ & \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|cMid~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|BG~combout\,
	datab => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|BG~0_combout\,
	datac => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|cMid~0_combout\,
	datad => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|cMid~1_combout\,
	combout => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|cMid~1_combout\);

-- Location: LCCOMB_X1_Y18_N4
\S~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~22_combout\ = \B[22]~input_o\ $ (\A[22]~input_o\ $ (((\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:Low_half|BG~0_combout\) # (\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|cMid~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[22]~input_o\,
	datab => \A[22]~input_o\,
	datac => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:Low_half|BG~0_combout\,
	datad => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|cMid~1_combout\,
	combout => \S~22_combout\);

-- Location: IOIBUF_X0_Y36_N15
\B[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(23),
	o => \B[23]~input_o\);

-- Location: IOIBUF_X0_Y2_N1
\A[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(23),
	o => \A[23]~input_o\);

-- Location: LCCOMB_X1_Y18_N2
\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:cMid~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:cMid~0_combout\ = (\B[22]~input_o\ & ((\A[22]~input_o\) # ((\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:Low_half|BG~0_combout\) # 
-- (\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|cMid~1_combout\)))) # (!\B[22]~input_o\ & (\A[22]~input_o\ & ((\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:Low_half|BG~0_combout\) # 
-- (\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|cMid~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[22]~input_o\,
	datab => \A[22]~input_o\,
	datac => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:Low_half|BG~0_combout\,
	datad => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|cMid~1_combout\,
	combout => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:cMid~0_combout\);

-- Location: LCCOMB_X1_Y18_N28
\S~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~23_combout\ = \B[23]~input_o\ $ (\A[23]~input_o\ $ (\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:cMid~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[23]~input_o\,
	datac => \A[23]~input_o\,
	datad => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:cMid~0_combout\,
	combout => \S~23_combout\);

-- Location: IOIBUF_X0_Y35_N15
\B[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(24),
	o => \B[24]~input_o\);

-- Location: IOIBUF_X0_Y30_N1
\A[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(24),
	o => \A[24]~input_o\);

-- Location: LCCOMB_X1_Y18_N12
\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:High_half|BG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:High_half|BG~0_combout\ = (\A[23]~input_o\ & ((\B[23]~input_o\) # ((\B[22]~input_o\ & \A[22]~input_o\)))) # (!\A[23]~input_o\ & (\B[22]~input_o\ & (\A[22]~input_o\ & \B[23]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[22]~input_o\,
	datab => \A[23]~input_o\,
	datac => \A[22]~input_o\,
	datad => \B[23]~input_o\,
	combout => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:High_half|BG~0_combout\);

-- Location: LCCOMB_X1_Y18_N14
\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|BG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|BG~0_combout\ = (\B[22]~input_o\ & (!\A[22]~input_o\ & (\A[23]~input_o\ $ (\B[23]~input_o\)))) # (!\B[22]~input_o\ & (\A[22]~input_o\ & (\A[23]~input_o\ $ (\B[23]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[22]~input_o\,
	datab => \A[22]~input_o\,
	datac => \A[23]~input_o\,
	datad => \B[23]~input_o\,
	combout => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|BG~0_combout\);

-- Location: LCCOMB_X1_Y18_N24
\CarryNetwork|Recur:High_half|Recur:Low_half|BG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:High_half|Recur:Low_half|BG~0_combout\ = (\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|BG~0_combout\ & \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|cMid~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|BG~0_combout\,
	datad => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|cMid~0_combout\,
	combout => \CarryNetwork|Recur:High_half|Recur:Low_half|BG~0_combout\);

-- Location: LCCOMB_X1_Y18_N18
\CarryNetwork|Recur:High_half|Recur:Low_half|BG~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:High_half|Recur:Low_half|BG~1_combout\ = (\CarryNetwork|Recur:High_half|Recur:Low_half|BG~0_combout\ & ((\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:High_half|BG~0_combout\) # 
-- ((\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|BG~0_combout\ & \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:High_half|BG~0_combout\,
	datab => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|BG~0_combout\,
	datac => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~0_combout\,
	datad => \CarryNetwork|Recur:High_half|Recur:Low_half|BG~0_combout\,
	combout => \CarryNetwork|Recur:High_half|Recur:Low_half|BG~1_combout\);

-- Location: LCCOMB_X1_Y18_N22
\CarryNetwork|Recur:High_half|Recur:Low_half|BG\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:High_half|Recur:Low_half|BG~combout\ = (\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:High_half|BG~0_combout\) # ((\CarryNetwork|Recur:High_half|Recur:Low_half|BG~1_combout\) # 
-- ((\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|BG~0_combout\ & \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:Low_half|BG~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:High_half|BG~0_combout\,
	datab => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|BG~0_combout\,
	datac => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:Low_half|BG~0_combout\,
	datad => \CarryNetwork|Recur:High_half|Recur:Low_half|BG~1_combout\,
	combout => \CarryNetwork|Recur:High_half|Recur:Low_half|BG~combout\);

-- Location: LCCOMB_X2_Y15_N6
\CarryNetwork|Recur:High_half|cMid~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:High_half|cMid~2_combout\ = (\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|BG~0_combout\ & (\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|BG~0_combout\ & 
-- (\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|cMid~0_combout\ & \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|cMid~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|BG~0_combout\,
	datab => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|BG~0_combout\,
	datac => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|cMid~0_combout\,
	datad => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|cMid~1_combout\,
	combout => \CarryNetwork|Recur:High_half|cMid~2_combout\);

-- Location: LCCOMB_X1_Y19_N16
\S~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~24_combout\ = \B[24]~input_o\ $ (\A[24]~input_o\ $ (((\CarryNetwork|Recur:High_half|Recur:Low_half|BG~combout\) # (\CarryNetwork|Recur:High_half|cMid~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[24]~input_o\,
	datab => \A[24]~input_o\,
	datac => \CarryNetwork|Recur:High_half|Recur:Low_half|BG~combout\,
	datad => \CarryNetwork|Recur:High_half|cMid~2_combout\,
	combout => \S~24_combout\);

-- Location: IOIBUF_X0_Y39_N8
\B[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(25),
	o => \B[25]~input_o\);

-- Location: IOIBUF_X0_Y37_N1
\A[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(25),
	o => \A[25]~input_o\);

-- Location: LCCOMB_X1_Y19_N10
\CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:cMid~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:cMid~0_combout\ = (\A[24]~input_o\ & ((\B[24]~input_o\) # ((\CarryNetwork|Recur:High_half|Recur:Low_half|BG~combout\) # (\CarryNetwork|Recur:High_half|cMid~2_combout\)))) # 
-- (!\A[24]~input_o\ & (\B[24]~input_o\ & ((\CarryNetwork|Recur:High_half|Recur:Low_half|BG~combout\) # (\CarryNetwork|Recur:High_half|cMid~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[24]~input_o\,
	datab => \B[24]~input_o\,
	datac => \CarryNetwork|Recur:High_half|Recur:Low_half|BG~combout\,
	datad => \CarryNetwork|Recur:High_half|cMid~2_combout\,
	combout => \CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:cMid~0_combout\);

-- Location: LCCOMB_X1_Y19_N12
\S~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~25_combout\ = \B[25]~input_o\ $ (\A[25]~input_o\ $ (\CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:cMid~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[25]~input_o\,
	datac => \A[25]~input_o\,
	datad => \CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:cMid~0_combout\,
	combout => \S~25_combout\);

-- Location: LCCOMB_X1_Y19_N26
\CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:Low_half|BG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:Low_half|BG~0_combout\ = (\A[25]~input_o\ & ((\B[25]~input_o\) # ((\A[24]~input_o\ & \B[24]~input_o\)))) # (!\A[25]~input_o\ & (\A[24]~input_o\ & (\B[25]~input_o\ & \B[24]~input_o\)))

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
	combout => \CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:Low_half|BG~0_combout\);

-- Location: IOIBUF_X0_Y30_N15
\B[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(26),
	o => \B[26]~input_o\);

-- Location: IOIBUF_X0_Y38_N15
\A[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(26),
	o => \A[26]~input_o\);

-- Location: LCCOMB_X1_Y19_N8
\CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|cMid~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|cMid~0_combout\ = (\B[24]~input_o\ & (!\A[24]~input_o\ & (\B[25]~input_o\ $ (\A[25]~input_o\)))) # (!\B[24]~input_o\ & (\A[24]~input_o\ & (\B[25]~input_o\ $ (\A[25]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[24]~input_o\,
	datab => \B[25]~input_o\,
	datac => \A[25]~input_o\,
	datad => \A[24]~input_o\,
	combout => \CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|cMid~0_combout\);

-- Location: LCCOMB_X1_Y15_N10
\CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|cMid~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|cMid~1_combout\ = (\CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|cMid~0_combout\ & ((\CarryNetwork|Recur:High_half|Recur:Low_half|BG~combout\) # 
-- ((\CarryNetwork|Recur:High_half|Recur:Low_half|BG~0_combout\ & \CarryNetwork|Recur:High_half|Recur:Low_half|cMid~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:High_half|Recur:Low_half|BG~0_combout\,
	datab => \CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|cMid~0_combout\,
	datac => \CarryNetwork|Recur:High_half|Recur:Low_half|BG~combout\,
	datad => \CarryNetwork|Recur:High_half|Recur:Low_half|cMid~0_combout\,
	combout => \CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|cMid~1_combout\);

-- Location: LCCOMB_X1_Y19_N14
\S~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~26_combout\ = \B[26]~input_o\ $ (\A[26]~input_o\ $ (((\CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:Low_half|BG~0_combout\) # (\CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|cMid~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:Low_half|BG~0_combout\,
	datab => \B[26]~input_o\,
	datac => \A[26]~input_o\,
	datad => \CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|cMid~1_combout\,
	combout => \S~26_combout\);

-- Location: IOIBUF_X0_Y37_N15
\B[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(27),
	o => \B[27]~input_o\);

-- Location: IOIBUF_X14_Y0_N22
\A[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(27),
	o => \A[27]~input_o\);

-- Location: LCCOMB_X1_Y19_N24
\CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:cMid~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:cMid~0_combout\ = (\B[26]~input_o\ & ((\CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:Low_half|BG~0_combout\) # ((\A[26]~input_o\) # 
-- (\CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|cMid~1_combout\)))) # (!\B[26]~input_o\ & (\A[26]~input_o\ & ((\CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:Low_half|BG~0_combout\) # 
-- (\CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|cMid~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:Low_half|BG~0_combout\,
	datab => \B[26]~input_o\,
	datac => \A[26]~input_o\,
	datad => \CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|cMid~1_combout\,
	combout => \CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:cMid~0_combout\);

-- Location: LCCOMB_X1_Y19_N22
\S~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~27_combout\ = \B[27]~input_o\ $ (\A[27]~input_o\ $ (\CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:cMid~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[27]~input_o\,
	datac => \A[27]~input_o\,
	datad => \CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:cMid~0_combout\,
	combout => \S~27_combout\);

-- Location: IOIBUF_X0_Y35_N8
\A[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(28),
	o => \A[28]~input_o\);

-- Location: IOIBUF_X16_Y0_N22
\B[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(28),
	o => \B[28]~input_o\);

-- Location: LCCOMB_X1_Y19_N18
\CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|BG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|BG~0_combout\ = (\A[26]~input_o\ & (!\B[26]~input_o\ & (\A[27]~input_o\ $ (\B[27]~input_o\)))) # (!\A[26]~input_o\ & (\B[26]~input_o\ & (\A[27]~input_o\ $ (\B[27]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[26]~input_o\,
	datab => \B[26]~input_o\,
	datac => \A[27]~input_o\,
	datad => \B[27]~input_o\,
	combout => \CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|BG~0_combout\);

-- Location: LCCOMB_X1_Y19_N0
\CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:High_half|BG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:High_half|BG~0_combout\ = (\A[27]~input_o\ & ((\B[27]~input_o\) # ((\B[26]~input_o\ & \A[26]~input_o\)))) # (!\A[27]~input_o\ & (\B[26]~input_o\ & (\A[26]~input_o\ & \B[27]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[27]~input_o\,
	datab => \B[26]~input_o\,
	datac => \A[26]~input_o\,
	datad => \B[27]~input_o\,
	combout => \CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:High_half|BG~0_combout\);

-- Location: LCCOMB_X1_Y19_N4
\CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|BG\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|BG~combout\ = (\CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:High_half|BG~0_combout\) # ((\CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|BG~0_combout\ & 
-- \CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:Low_half|BG~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|BG~0_combout\,
	datac => \CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:Low_half|BG~0_combout\,
	datad => \CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:High_half|BG~0_combout\,
	combout => \CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|BG~combout\);

-- Location: LCCOMB_X1_Y15_N12
\CarryNetwork|Recur:High_half|Recur:High_half|cMid~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:High_half|Recur:High_half|cMid~0_combout\ = (\CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|BG~0_combout\ & (\CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|cMid~0_combout\ & 
-- ((\CarryNetwork|Recur:High_half|Recur:Low_half|BG~combout\) # (\CarryNetwork|Recur:High_half|cMid~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:High_half|Recur:Low_half|BG~combout\,
	datab => \CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|BG~0_combout\,
	datac => \CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|cMid~0_combout\,
	datad => \CarryNetwork|Recur:High_half|cMid~2_combout\,
	combout => \CarryNetwork|Recur:High_half|Recur:High_half|cMid~0_combout\);

-- Location: LCCOMB_X1_Y15_N30
\S~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~28_combout\ = \A[28]~input_o\ $ (\B[28]~input_o\ $ (((\CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|BG~combout\) # (\CarryNetwork|Recur:High_half|Recur:High_half|cMid~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[28]~input_o\,
	datab => \B[28]~input_o\,
	datac => \CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|BG~combout\,
	datad => \CarryNetwork|Recur:High_half|Recur:High_half|cMid~0_combout\,
	combout => \S~28_combout\);

-- Location: IOIBUF_X22_Y0_N1
\A[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(29),
	o => \A[29]~input_o\);

-- Location: IOIBUF_X18_Y0_N15
\B[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(29),
	o => \B[29]~input_o\);

-- Location: LCCOMB_X1_Y15_N16
\S~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~29_combout\ = (\A[28]~input_o\ & ((\B[28]~input_o\) # ((\CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|BG~combout\) # (\CarryNetwork|Recur:High_half|Recur:High_half|cMid~0_combout\)))) # (!\A[28]~input_o\ & (\B[28]~input_o\ & 
-- ((\CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|BG~combout\) # (\CarryNetwork|Recur:High_half|Recur:High_half|cMid~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[28]~input_o\,
	datab => \B[28]~input_o\,
	datac => \CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|BG~combout\,
	datad => \CarryNetwork|Recur:High_half|Recur:High_half|cMid~0_combout\,
	combout => \S~29_combout\);

-- Location: LCCOMB_X1_Y15_N2
\S~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~30_combout\ = \A[29]~input_o\ $ (\B[29]~input_o\ $ (\S~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[29]~input_o\,
	datac => \B[29]~input_o\,
	datad => \S~29_combout\,
	combout => \S~30_combout\);

-- Location: IOIBUF_X0_Y38_N22
\A[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(30),
	o => \A[30]~input_o\);

-- Location: IOIBUF_X20_Y0_N15
\B[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(30),
	o => \B[30]~input_o\);

-- Location: LCCOMB_X1_Y15_N8
\CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|Recur:Low_half|BG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|Recur:Low_half|BG~0_combout\ = (\A[29]~input_o\ & ((\B[29]~input_o\) # ((\B[28]~input_o\ & \A[28]~input_o\)))) # (!\A[29]~input_o\ & (\B[28]~input_o\ & (\B[29]~input_o\ & \A[28]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[29]~input_o\,
	datab => \B[28]~input_o\,
	datac => \B[29]~input_o\,
	datad => \A[28]~input_o\,
	combout => \CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|Recur:Low_half|BG~0_combout\);

-- Location: LCCOMB_X1_Y15_N22
\CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|cMid~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|cMid~0_combout\ = (\A[28]~input_o\ & (!\B[28]~input_o\ & (\B[29]~input_o\ $ (\A[29]~input_o\)))) # (!\A[28]~input_o\ & (\B[28]~input_o\ & (\B[29]~input_o\ $ (\A[29]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[28]~input_o\,
	datab => \B[28]~input_o\,
	datac => \B[29]~input_o\,
	datad => \A[29]~input_o\,
	combout => \CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|cMid~0_combout\);

-- Location: LCCOMB_X1_Y15_N28
\CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|cMid~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|cMid~1_combout\ = (\CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|cMid~0_combout\ & ((\CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|BG~combout\) # 
-- ((\CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|BG~0_combout\ & \CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|cMid~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|cMid~0_combout\,
	datab => \CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|BG~0_combout\,
	datac => \CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|BG~combout\,
	datad => \CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|cMid~1_combout\,
	combout => \CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|cMid~1_combout\);

-- Location: LCCOMB_X1_Y15_N14
\S~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~31_combout\ = \A[30]~input_o\ $ (\B[30]~input_o\ $ (((\CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|Recur:Low_half|BG~0_combout\) # (\CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|cMid~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[30]~input_o\,
	datab => \B[30]~input_o\,
	datac => \CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|Recur:Low_half|BG~0_combout\,
	datad => \CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|cMid~1_combout\,
	combout => \S~31_combout\);

-- Location: IOIBUF_X20_Y0_N22
\A[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(31),
	o => \A[31]~input_o\);

-- Location: IOIBUF_X0_Y37_N22
\B[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(31),
	o => \B[31]~input_o\);

-- Location: LCCOMB_X1_Y15_N20
\CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|Recur:High_half|Recur:cMid~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|Recur:High_half|Recur:cMid~0_combout\ = (\A[30]~input_o\ & ((\B[30]~input_o\) # ((\CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|Recur:Low_half|BG~0_combout\) # 
-- (\CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|cMid~1_combout\)))) # (!\A[30]~input_o\ & (\B[30]~input_o\ & ((\CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|Recur:Low_half|BG~0_combout\) # 
-- (\CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|cMid~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[30]~input_o\,
	datab => \B[30]~input_o\,
	datac => \CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|Recur:Low_half|BG~0_combout\,
	datad => \CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|cMid~1_combout\,
	combout => \CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|Recur:High_half|Recur:cMid~0_combout\);

-- Location: LCCOMB_X1_Y15_N18
\S~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~32_combout\ = \A[31]~input_o\ $ (\B[31]~input_o\ $ (\CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|Recur:High_half|Recur:cMid~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datac => \B[31]~input_o\,
	datad => \CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|Recur:High_half|Recur:cMid~0_combout\,
	combout => \S~32_combout\);

-- Location: LCCOMB_X1_Y15_N0
\CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|Recur:High_half|Recur:High_half|c[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|Recur:High_half|Recur:High_half|c[1]~0_combout\ = (\A[31]~input_o\ & ((\B[31]~input_o\) # (\CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|Recur:High_half|Recur:cMid~0_combout\))) 
-- # (!\A[31]~input_o\ & (\B[31]~input_o\ & \CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|Recur:High_half|Recur:cMid~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datac => \B[31]~input_o\,
	datad => \CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|Recur:High_half|Recur:cMid~0_combout\,
	combout => \CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|Recur:High_half|Recur:High_half|c[1]~0_combout\);

-- Location: LCCOMB_X1_Y15_N26
\Ovfl~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Ovfl~0_combout\ = (\A[31]~input_o\ & (\B[31]~input_o\ & !\CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|Recur:High_half|Recur:cMid~0_combout\)) # (!\A[31]~input_o\ & (!\B[31]~input_o\ & 
-- \CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|Recur:High_half|Recur:cMid~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datac => \B[31]~input_o\,
	datad => \CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|Recur:High_half|Recur:cMid~0_combout\,
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

ww_Cout <= \Cout~output_o\;

ww_Ovfl <= \Ovfl~output_o\;
END structure;


