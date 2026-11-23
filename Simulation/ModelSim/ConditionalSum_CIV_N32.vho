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

-- DATE "11/21/2026 11:58:04"

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
	A : IN std_logic_vector(31 DOWNTO 0);
	B : IN std_logic_vector(31 DOWNTO 0);
	S : OUT std_logic_vector(31 DOWNTO 0);
	Cin : IN std_logic;
	Cout : OUT std_logic;
	Ovfl : OUT std_logic
	);
END Adder;

-- Design Ports Information
-- S[0]	=>  Location: PIN_AG10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[1]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[2]	=>  Location: PIN_U5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[3]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[4]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[5]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[6]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[7]	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[8]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[9]	=>  Location: PIN_H3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[10]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[11]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[12]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[13]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[14]	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[15]	=>  Location: PIN_W7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[16]	=>  Location: PIN_AE1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[17]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[18]	=>  Location: PIN_AB2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[19]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[20]	=>  Location: PIN_AB3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[21]	=>  Location: PIN_AD1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[22]	=>  Location: PIN_AD3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[23]	=>  Location: PIN_AD2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[24]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[25]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[26]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[27]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[28]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[29]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[30]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[31]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cout	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ovfl	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_AG15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_AH15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cin	=>  Location: PIN_AE10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_V2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_U4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_U3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[8]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[9]	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[10]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[11]	=>  Location: PIN_K4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[11]	=>  Location: PIN_K3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[12]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[12]	=>  Location: PIN_W1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[13]	=>  Location: PIN_AC2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[13]	=>  Location: PIN_J5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[14]	=>  Location: PIN_W4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[14]	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[15]	=>  Location: PIN_AE2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[15]	=>  Location: PIN_W3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[16]	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[16]	=>  Location: PIN_Y7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[17]	=>  Location: PIN_Y6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[17]	=>  Location: PIN_Y5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[18]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[18]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[19]	=>  Location: PIN_F5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[19]	=>  Location: PIN_AB1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[20]	=>  Location: PIN_AA3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[20]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[21]	=>  Location: PIN_AC3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[21]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[22]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[22]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[23]	=>  Location: PIN_AC1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[23]	=>  Location: PIN_AA4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[24]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[24]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[25]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[25]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[26]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[26]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[27]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[27]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[28]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[28]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[29]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[29]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[30]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[30]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[31]	=>  Location: PIN_H4,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \Cin~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \S~0_combout\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \S~1_combout\ : std_logic;
SIGNAL \S~2_combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \c[2]~0_combout\ : std_logic;
SIGNAL \c[2]~1_combout\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \S~3_combout\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \S~4_combout\ : std_logic;
SIGNAL \S~5_combout\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\ : std_logic;
SIGNAL \c[4]~2_combout\ : std_logic;
SIGNAL \S~6_combout\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \S~7_combout\ : std_logic;
SIGNAL \S~8_combout\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry1[1]~0_combout\ : std_logic;
SIGNAL \c[6]~3_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry0[1]~0_combout\ : std_logic;
SIGNAL \c[6]~4_combout\ : std_logic;
SIGNAL \S~9_combout\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \c[7]~5_combout\ : std_logic;
SIGNAL \S~10_combout\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \B[8]~input_o\ : std_logic;
SIGNAL \c[8]~6_combout\ : std_logic;
SIGNAL \c[8]~7_combout\ : std_logic;
SIGNAL \S~11_combout\ : std_logic;
SIGNAL \B[9]~input_o\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \S~12_combout\ : std_logic;
SIGNAL \S~13_combout\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \B[10]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|carry0[1]~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|carry1[1]~0_combout\ : std_logic;
SIGNAL \c[10]~8_combout\ : std_logic;
SIGNAL \S~14_combout\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \B[11]~input_o\ : std_logic;
SIGNAL \S~15_combout\ : std_logic;
SIGNAL \S~16_combout\ : std_logic;
SIGNAL \B[12]~input_o\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\ : std_logic;
SIGNAL \c[12]~10_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\ : std_logic;
SIGNAL \c[12]~9_combout\ : std_logic;
SIGNAL \S~17_combout\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \B[13]~input_o\ : std_logic;
SIGNAL \c[13]~11_combout\ : std_logic;
SIGNAL \S~18_combout\ : std_logic;
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \B[14]~input_o\ : std_logic;
SIGNAL \c[14]~12_combout\ : std_logic;
SIGNAL \c[14]~13_combout\ : std_logic;
SIGNAL \S~19_combout\ : std_logic;
SIGNAL \B[15]~input_o\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \S~20_combout\ : std_logic;
SIGNAL \S~21_combout\ : std_logic;
SIGNAL \A[16]~input_o\ : std_logic;
SIGNAL \B[16]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|carry1[1]~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|carry0[1]~0_combout\ : std_logic;
SIGNAL \c[16]~14_combout\ : std_logic;
SIGNAL \S~22_combout\ : std_logic;
SIGNAL \B[17]~input_o\ : std_logic;
SIGNAL \A[17]~input_o\ : std_logic;
SIGNAL \S~23_combout\ : std_logic;
SIGNAL \S~24_combout\ : std_logic;
SIGNAL \A[18]~input_o\ : std_logic;
SIGNAL \B[18]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|carry1[1]~0_combout\ : std_logic;
SIGNAL \c[18]~15_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|carry0[1]~0_combout\ : std_logic;
SIGNAL \c[18]~16_combout\ : std_logic;
SIGNAL \S~25_combout\ : std_logic;
SIGNAL \A[19]~input_o\ : std_logic;
SIGNAL \B[19]~input_o\ : std_logic;
SIGNAL \S~26_combout\ : std_logic;
SIGNAL \S~27_combout\ : std_logic;
SIGNAL \B[20]~input_o\ : std_logic;
SIGNAL \A[20]~input_o\ : std_logic;
SIGNAL \c[20]~17_combout\ : std_logic;
SIGNAL \c[20]~18_combout\ : std_logic;
SIGNAL \S~28_combout\ : std_logic;
SIGNAL \B[21]~input_o\ : std_logic;
SIGNAL \A[21]~input_o\ : std_logic;
SIGNAL \S~29_combout\ : std_logic;
SIGNAL \S~30_combout\ : std_logic;
SIGNAL \B[22]~input_o\ : std_logic;
SIGNAL \A[22]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry1[1]~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry0[1]~0_combout\ : std_logic;
SIGNAL \c[22]~19_combout\ : std_logic;
SIGNAL \S~31_combout\ : std_logic;
SIGNAL \B[23]~input_o\ : std_logic;
SIGNAL \A[23]~input_o\ : std_logic;
SIGNAL \S~32_combout\ : std_logic;
SIGNAL \S~33_combout\ : std_logic;
SIGNAL \A[24]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|carry1[1]~0_combout\ : std_logic;
SIGNAL \c[24]~20_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|carry0[1]~0_combout\ : std_logic;
SIGNAL \c[24]~21_combout\ : std_logic;
SIGNAL \B[24]~input_o\ : std_logic;
SIGNAL \S~34_combout\ : std_logic;
SIGNAL \A[25]~input_o\ : std_logic;
SIGNAL \B[25]~input_o\ : std_logic;
SIGNAL \S~35_combout\ : std_logic;
SIGNAL \S~36_combout\ : std_logic;
SIGNAL \A[26]~input_o\ : std_logic;
SIGNAL \B[26]~input_o\ : std_logic;
SIGNAL \c[26]~22_combout\ : std_logic;
SIGNAL \c[26]~23_combout\ : std_logic;
SIGNAL \S~37_combout\ : std_logic;
SIGNAL \A[27]~input_o\ : std_logic;
SIGNAL \B[27]~input_o\ : std_logic;
SIGNAL \S~38_combout\ : std_logic;
SIGNAL \S~39_combout\ : std_logic;
SIGNAL \A[28]~input_o\ : std_logic;
SIGNAL \B[28]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\ : std_logic;
SIGNAL \c[28]~24_combout\ : std_logic;
SIGNAL \S~40_combout\ : std_logic;
SIGNAL \B[29]~input_o\ : std_logic;
SIGNAL \A[29]~input_o\ : std_logic;
SIGNAL \S~41_combout\ : std_logic;
SIGNAL \S~42_combout\ : std_logic;
SIGNAL \A[30]~input_o\ : std_logic;
SIGNAL \B[30]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|carry0[1]~0_combout\ : std_logic;
SIGNAL \c[30]~26_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|carry1[1]~0_combout\ : std_logic;
SIGNAL \c[30]~25_combout\ : std_logic;
SIGNAL \S~43_combout\ : std_logic;
SIGNAL \A[31]~input_o\ : std_logic;
SIGNAL \B[31]~input_o\ : std_logic;
SIGNAL \c[31]~27_combout\ : std_logic;
SIGNAL \c[31]~28_combout\ : std_logic;
SIGNAL \c[31]~29_combout\ : std_logic;
SIGNAL \S~44_combout\ : std_logic;
SIGNAL \c~30_combout\ : std_logic;
SIGNAL \c~31_combout\ : std_logic;
SIGNAL \Ovfl~4_combout\ : std_logic;

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

-- Location: IOOBUF_X31_Y0_N9
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

-- Location: IOOBUF_X29_Y0_N16
\S[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~2_combout\,
	devoe => ww_devoe,
	o => \S[1]~output_o\);

-- Location: IOOBUF_X0_Y24_N2
\S[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~3_combout\,
	devoe => ww_devoe,
	o => \S[2]~output_o\);

-- Location: IOOBUF_X0_Y24_N16
\S[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~5_combout\,
	devoe => ww_devoe,
	o => \S[3]~output_o\);

-- Location: IOOBUF_X0_Y28_N23
\S[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~6_combout\,
	devoe => ww_devoe,
	o => \S[4]~output_o\);

-- Location: IOOBUF_X0_Y24_N9
\S[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~8_combout\,
	devoe => ww_devoe,
	o => \S[5]~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\S[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~9_combout\,
	devoe => ww_devoe,
	o => \S[6]~output_o\);

-- Location: IOOBUF_X0_Y29_N23
\S[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~10_combout\,
	devoe => ww_devoe,
	o => \S[7]~output_o\);

-- Location: IOOBUF_X0_Y59_N23
\S[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~11_combout\,
	devoe => ww_devoe,
	o => \S[8]~output_o\);

-- Location: IOOBUF_X0_Y62_N23
\S[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~13_combout\,
	devoe => ww_devoe,
	o => \S[9]~output_o\);

-- Location: IOOBUF_X0_Y57_N16
\S[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~14_combout\,
	devoe => ww_devoe,
	o => \S[10]~output_o\);

-- Location: IOOBUF_X0_Y59_N16
\S[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~16_combout\,
	devoe => ww_devoe,
	o => \S[11]~output_o\);

-- Location: IOOBUF_X0_Y30_N2
\S[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~17_combout\,
	devoe => ww_devoe,
	o => \S[12]~output_o\);

-- Location: IOOBUF_X0_Y30_N9
\S[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~18_combout\,
	devoe => ww_devoe,
	o => \S[13]~output_o\);

-- Location: IOOBUF_X0_Y15_N16
\S[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~19_combout\,
	devoe => ww_devoe,
	o => \S[14]~output_o\);

-- Location: IOOBUF_X0_Y12_N23
\S[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~21_combout\,
	devoe => ww_devoe,
	o => \S[15]~output_o\);

-- Location: IOOBUF_X0_Y16_N16
\S[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~22_combout\,
	devoe => ww_devoe,
	o => \S[16]~output_o\);

-- Location: IOOBUF_X0_Y16_N23
\S[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~24_combout\,
	devoe => ww_devoe,
	o => \S[17]~output_o\);

-- Location: IOOBUF_X0_Y27_N16
\S[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~25_combout\,
	devoe => ww_devoe,
	o => \S[18]~output_o\);

-- Location: IOOBUF_X0_Y35_N9
\S[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~27_combout\,
	devoe => ww_devoe,
	o => \S[19]~output_o\);

-- Location: IOOBUF_X0_Y21_N23
\S[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~28_combout\,
	devoe => ww_devoe,
	o => \S[20]~output_o\);

-- Location: IOOBUF_X0_Y21_N16
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

-- Location: IOOBUF_X0_Y22_N16
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

-- Location: IOOBUF_X0_Y22_N23
\S[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~33_combout\,
	devoe => ww_devoe,
	o => \S[23]~output_o\);

-- Location: IOOBUF_X0_Y43_N16
\S[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~34_combout\,
	devoe => ww_devoe,
	o => \S[24]~output_o\);

-- Location: IOOBUF_X0_Y35_N16
\S[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~36_combout\,
	devoe => ww_devoe,
	o => \S[25]~output_o\);

-- Location: IOOBUF_X0_Y45_N23
\S[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~37_combout\,
	devoe => ww_devoe,
	o => \S[26]~output_o\);

-- Location: IOOBUF_X0_Y47_N23
\S[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~39_combout\,
	devoe => ww_devoe,
	o => \S[27]~output_o\);

-- Location: IOOBUF_X0_Y45_N16
\S[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~40_combout\,
	devoe => ww_devoe,
	o => \S[28]~output_o\);

-- Location: IOOBUF_X0_Y47_N16
\S[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~42_combout\,
	devoe => ww_devoe,
	o => \S[29]~output_o\);

-- Location: IOOBUF_X0_Y44_N23
\S[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~43_combout\,
	devoe => ww_devoe,
	o => \S[30]~output_o\);

-- Location: IOOBUF_X0_Y44_N2
\S[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~44_combout\,
	devoe => ww_devoe,
	o => \S[31]~output_o\);

-- Location: IOOBUF_X0_Y44_N16
\Cout~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \c~31_combout\,
	devoe => ww_devoe,
	o => \Cout~output_o\);

-- Location: IOOBUF_X0_Y44_N9
\Ovfl~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Ovfl~4_combout\,
	devoe => ww_devoe,
	o => \Ovfl~output_o\);

-- Location: IOIBUF_X58_Y0_N8
\A[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X29_Y0_N22
\Cin~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cin,
	o => \Cin~input_o\);

-- Location: IOIBUF_X58_Y0_N1
\B[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: LCCOMB_X29_Y4_N24
\S~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~0_combout\ = \A[0]~input_o\ $ (\Cin~input_o\ $ (\B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datac => \Cin~input_o\,
	datad => \B[0]~input_o\,
	combout => \S~0_combout\);

-- Location: IOIBUF_X0_Y35_N1
\B[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: IOIBUF_X0_Y33_N15
\A[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: LCCOMB_X29_Y4_N18
\S~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~1_combout\ = \A[1]~input_o\ $ (((\Cin~input_o\ & ((\A[0]~input_o\) # (\B[0]~input_o\))) # (!\Cin~input_o\ & (\A[0]~input_o\ & \B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \Cin~input_o\,
	datac => \A[0]~input_o\,
	datad => \B[0]~input_o\,
	combout => \S~1_combout\);

-- Location: LCCOMB_X29_Y4_N28
\S~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~2_combout\ = \B[1]~input_o\ $ (\S~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[1]~input_o\,
	datad => \S~1_combout\,
	combout => \S~2_combout\);

-- Location: IOIBUF_X0_Y32_N22
\A[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: LCCOMB_X29_Y4_N22
\c[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[2]~0_combout\ = (\Cin~input_o\ & ((\A[0]~input_o\) # (\B[0]~input_o\))) # (!\Cin~input_o\ & (\A[0]~input_o\ & \B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Cin~input_o\,
	datac => \A[0]~input_o\,
	datad => \B[0]~input_o\,
	combout => \c[2]~0_combout\);

-- Location: LCCOMB_X1_Y36_N0
\c[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[2]~1_combout\ = (\B[1]~input_o\ & ((\A[1]~input_o\) # (\c[2]~0_combout\))) # (!\B[1]~input_o\ & (\A[1]~input_o\ & \c[2]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datac => \A[1]~input_o\,
	datad => \c[2]~0_combout\,
	combout => \c[2]~1_combout\);

-- Location: IOIBUF_X0_Y28_N15
\B[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: LCCOMB_X1_Y32_N12
\S~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~3_combout\ = \A[2]~input_o\ $ (\c[2]~1_combout\ $ (\B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \c[2]~1_combout\,
	datac => \B[2]~input_o\,
	combout => \S~3_combout\);

-- Location: IOIBUF_X0_Y29_N15
\B[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: IOIBUF_X0_Y32_N15
\A[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: LCCOMB_X1_Y32_N6
\S~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~4_combout\ = \B[3]~input_o\ $ (\A[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[3]~input_o\,
	datad => \A[3]~input_o\,
	combout => \S~4_combout\);

-- Location: LCCOMB_X1_Y32_N28
\S~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~5_combout\ = \S~4_combout\ $ (((\c[2]~1_combout\ & ((\B[2]~input_o\) # (\A[2]~input_o\))) # (!\c[2]~1_combout\ & (\B[2]~input_o\ & \A[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S~4_combout\,
	datab => \c[2]~1_combout\,
	datac => \B[2]~input_o\,
	datad => \A[2]~input_o\,
	combout => \S~5_combout\);

-- Location: IOIBUF_X0_Y34_N22
\B[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: IOIBUF_X0_Y34_N15
\A[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: LCCOMB_X1_Y32_N10
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\ = (\A[3]~input_o\ & ((\B[2]~input_o\) # ((\B[3]~input_o\) # (\A[2]~input_o\)))) # (!\A[3]~input_o\ & (\B[3]~input_o\ & ((\B[2]~input_o\) # (\A[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \A[3]~input_o\,
	datac => \B[3]~input_o\,
	datad => \A[2]~input_o\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\);

-- Location: LCCOMB_X1_Y32_N4
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\ = (\B[3]~input_o\ & ((\A[3]~input_o\) # ((\B[2]~input_o\ & \A[2]~input_o\)))) # (!\B[3]~input_o\ & (\A[3]~input_o\ & (\B[2]~input_o\ & \A[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \A[3]~input_o\,
	datac => \B[2]~input_o\,
	datad => \A[2]~input_o\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\);

-- Location: LCCOMB_X1_Y32_N18
\c[4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[4]~2_combout\ = (\c[2]~1_combout\ & (\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\)) # (!\c[2]~1_combout\ & ((\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\,
	datab => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\,
	datac => \c[2]~1_combout\,
	combout => \c[4]~2_combout\);

-- Location: LCCOMB_X1_Y32_N8
\S~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~6_combout\ = \B[4]~input_o\ $ (\A[4]~input_o\ $ (\c[4]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[4]~input_o\,
	datac => \A[4]~input_o\,
	datad => \c[4]~2_combout\,
	combout => \S~6_combout\);

-- Location: IOIBUF_X0_Y34_N1
\B[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: IOIBUF_X0_Y34_N8
\A[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: LCCOMB_X1_Y34_N28
\S~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~7_combout\ = \B[5]~input_o\ $ (\A[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[5]~input_o\,
	datad => \A[5]~input_o\,
	combout => \S~7_combout\);

-- Location: LCCOMB_X1_Y32_N22
\S~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~8_combout\ = \S~7_combout\ $ (((\B[4]~input_o\ & ((\A[4]~input_o\) # (\c[4]~2_combout\))) # (!\B[4]~input_o\ & (\A[4]~input_o\ & \c[4]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S~7_combout\,
	datab => \B[4]~input_o\,
	datac => \A[4]~input_o\,
	datad => \c[4]~2_combout\,
	combout => \S~8_combout\);

-- Location: IOIBUF_X0_Y33_N22
\B[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: IOIBUF_X0_Y49_N1
\A[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: LCCOMB_X1_Y34_N2
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry1[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry1[1]~0_combout\ = (\A[5]~input_o\ & ((\B[5]~input_o\) # ((\B[4]~input_o\) # (\A[4]~input_o\)))) # (!\A[5]~input_o\ & (\B[5]~input_o\ & ((\B[4]~input_o\) # (\A[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~input_o\,
	datab => \B[5]~input_o\,
	datac => \B[4]~input_o\,
	datad => \A[4]~input_o\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry1[1]~0_combout\);

-- Location: LCCOMB_X1_Y36_N22
\c[6]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[6]~3_combout\ = (\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry1[1]~0_combout\ & ((\c[2]~1_combout\ & ((\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\))) # (!\c[2]~1_combout\ & 
-- (\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\,
	datab => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry1[1]~0_combout\,
	datac => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\,
	datad => \c[2]~1_combout\,
	combout => \c[6]~3_combout\);

-- Location: LCCOMB_X1_Y34_N4
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry0[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry0[1]~0_combout\ = (\A[5]~input_o\ & ((\B[5]~input_o\) # ((\B[4]~input_o\ & \A[4]~input_o\)))) # (!\A[5]~input_o\ & (\B[5]~input_o\ & (\B[4]~input_o\ & \A[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~input_o\,
	datab => \B[5]~input_o\,
	datac => \B[4]~input_o\,
	datad => \A[4]~input_o\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry0[1]~0_combout\);

-- Location: LCCOMB_X1_Y36_N28
\c[6]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[6]~4_combout\ = (\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry0[1]~0_combout\ & ((\c[2]~1_combout\ & ((!\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\))) # (!\c[2]~1_combout\ & 
-- (!\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\,
	datab => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry0[1]~0_combout\,
	datac => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\,
	datad => \c[2]~1_combout\,
	combout => \c[6]~4_combout\);

-- Location: LCCOMB_X1_Y33_N16
\S~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~9_combout\ = \B[6]~input_o\ $ (\A[6]~input_o\ $ (((\c[6]~3_combout\) # (\c[6]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[6]~input_o\,
	datab => \A[6]~input_o\,
	datac => \c[6]~3_combout\,
	datad => \c[6]~4_combout\,
	combout => \S~9_combout\);

-- Location: IOIBUF_X0_Y31_N15
\A[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: IOIBUF_X0_Y25_N22
\B[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: LCCOMB_X1_Y33_N18
\c[7]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[7]~5_combout\ = (\B[6]~input_o\ & ((\A[6]~input_o\) # ((\c[6]~3_combout\) # (\c[6]~4_combout\)))) # (!\B[6]~input_o\ & (\A[6]~input_o\ & ((\c[6]~3_combout\) # (\c[6]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[6]~input_o\,
	datab => \A[6]~input_o\,
	datac => \c[6]~3_combout\,
	datad => \c[6]~4_combout\,
	combout => \c[7]~5_combout\);

-- Location: LCCOMB_X1_Y33_N24
\S~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~10_combout\ = \A[7]~input_o\ $ (\B[7]~input_o\ $ (\c[7]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[7]~input_o\,
	datac => \B[7]~input_o\,
	datad => \c[7]~5_combout\,
	combout => \S~10_combout\);

-- Location: IOIBUF_X0_Y55_N8
\A[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: IOIBUF_X0_Y55_N15
\B[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

-- Location: LCCOMB_X1_Y36_N6
\c[8]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[8]~6_combout\ = (\A[6]~input_o\ & ((\B[6]~input_o\) # ((\c[6]~3_combout\) # (\c[6]~4_combout\)))) # (!\A[6]~input_o\ & (\B[6]~input_o\ & ((\c[6]~3_combout\) # (\c[6]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datab => \B[6]~input_o\,
	datac => \c[6]~3_combout\,
	datad => \c[6]~4_combout\,
	combout => \c[8]~6_combout\);

-- Location: LCCOMB_X1_Y36_N20
\c[8]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[8]~7_combout\ = (\A[7]~input_o\ & ((\B[7]~input_o\) # (\c[8]~6_combout\))) # (!\A[7]~input_o\ & (\B[7]~input_o\ & \c[8]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[7]~input_o\,
	datac => \B[7]~input_o\,
	datad => \c[8]~6_combout\,
	combout => \c[8]~7_combout\);

-- Location: LCCOMB_X1_Y55_N12
\S~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~11_combout\ = \A[8]~input_o\ $ (\B[8]~input_o\ $ (\c[8]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[8]~input_o\,
	datab => \B[8]~input_o\,
	datad => \c[8]~7_combout\,
	combout => \S~11_combout\);

-- Location: IOIBUF_X0_Y58_N15
\B[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(9),
	o => \B[9]~input_o\);

-- Location: IOIBUF_X0_Y55_N22
\A[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

-- Location: LCCOMB_X1_Y55_N22
\S~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~12_combout\ = \B[9]~input_o\ $ (\A[9]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[9]~input_o\,
	datad => \A[9]~input_o\,
	combout => \S~12_combout\);

-- Location: LCCOMB_X1_Y55_N4
\S~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~13_combout\ = \S~12_combout\ $ (((\A[8]~input_o\ & ((\B[8]~input_o\) # (\c[8]~7_combout\))) # (!\A[8]~input_o\ & (\B[8]~input_o\ & \c[8]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[8]~input_o\,
	datab => \B[8]~input_o\,
	datac => \S~12_combout\,
	datad => \c[8]~7_combout\,
	combout => \S~13_combout\);

-- Location: IOIBUF_X0_Y54_N8
\A[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

-- Location: IOIBUF_X0_Y57_N22
\B[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(10),
	o => \B[10]~input_o\);

-- Location: LCCOMB_X1_Y55_N16
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|carry0[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|carry0[1]~0_combout\ = (\B[9]~input_o\ & ((\A[9]~input_o\) # ((\A[8]~input_o\ & \B[8]~input_o\)))) # (!\B[9]~input_o\ & (\A[8]~input_o\ & (\B[8]~input_o\ & \A[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[8]~input_o\,
	datab => \B[8]~input_o\,
	datac => \B[9]~input_o\,
	datad => \A[9]~input_o\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|carry0[1]~0_combout\);

-- Location: LCCOMB_X1_Y55_N18
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|carry1[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|carry1[1]~0_combout\ = (\B[9]~input_o\ & ((\A[8]~input_o\) # ((\B[8]~input_o\) # (\A[9]~input_o\)))) # (!\B[9]~input_o\ & (\A[9]~input_o\ & ((\A[8]~input_o\) # (\B[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[8]~input_o\,
	datab => \B[8]~input_o\,
	datac => \B[9]~input_o\,
	datad => \A[9]~input_o\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|carry1[1]~0_combout\);

-- Location: LCCOMB_X1_Y55_N6
\c[10]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[10]~8_combout\ = (\c[8]~7_combout\ & ((\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|carry1[1]~0_combout\))) # (!\c[8]~7_combout\ & (\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|carry0[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|carry0[1]~0_combout\,
	datac => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|carry1[1]~0_combout\,
	datad => \c[8]~7_combout\,
	combout => \c[10]~8_combout\);

-- Location: LCCOMB_X1_Y55_N0
\S~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~14_combout\ = \A[10]~input_o\ $ (\B[10]~input_o\ $ (\c[10]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[10]~input_o\,
	datac => \B[10]~input_o\,
	datad => \c[10]~8_combout\,
	combout => \S~14_combout\);

-- Location: IOIBUF_X0_Y53_N1
\A[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(11),
	o => \A[11]~input_o\);

-- Location: IOIBUF_X0_Y53_N8
\B[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(11),
	o => \B[11]~input_o\);

-- Location: LCCOMB_X1_Y53_N28
\S~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~15_combout\ = \A[11]~input_o\ $ (\B[11]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[11]~input_o\,
	datad => \B[11]~input_o\,
	combout => \S~15_combout\);

-- Location: LCCOMB_X1_Y55_N26
\S~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~16_combout\ = \S~15_combout\ $ (((\A[10]~input_o\ & ((\B[10]~input_o\) # (\c[10]~8_combout\))) # (!\A[10]~input_o\ & (\B[10]~input_o\ & \c[10]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[10]~input_o\,
	datab => \S~15_combout\,
	datac => \B[10]~input_o\,
	datad => \c[10]~8_combout\,
	combout => \S~16_combout\);

-- Location: IOIBUF_X0_Y25_N15
\B[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(12),
	o => \B[12]~input_o\);

-- Location: IOIBUF_X0_Y42_N8
\A[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(12),
	o => \A[12]~input_o\);

-- Location: LCCOMB_X1_Y53_N12
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\ = (\B[11]~input_o\ & ((\A[11]~input_o\) # ((\A[10]~input_o\ & \B[10]~input_o\)))) # (!\B[11]~input_o\ & (\A[10]~input_o\ & (\A[11]~input_o\ & \B[10]~input_o\)))

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
	combout => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\);

-- Location: LCCOMB_X1_Y36_N8
\c[12]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[12]~10_combout\ = (\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\ & ((\c[8]~7_combout\ & ((!\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|carry1[1]~0_combout\))) # 
-- (!\c[8]~7_combout\ & (!\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|carry0[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|carry0[1]~0_combout\,
	datab => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|carry1[1]~0_combout\,
	datac => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\,
	datad => \c[8]~7_combout\,
	combout => \c[12]~10_combout\);

-- Location: LCCOMB_X1_Y53_N26
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\ = (\B[11]~input_o\ & ((\A[10]~input_o\) # ((\A[11]~input_o\) # (\B[10]~input_o\)))) # (!\B[11]~input_o\ & (\A[11]~input_o\ & ((\A[10]~input_o\) # 
-- (\B[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[11]~input_o\,
	datab => \A[10]~input_o\,
	datac => \A[11]~input_o\,
	datad => \B[10]~input_o\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\);

-- Location: LCCOMB_X1_Y36_N10
\c[12]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[12]~9_combout\ = (\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\ & ((\c[8]~7_combout\ & (\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|carry1[1]~0_combout\)) # (!\c[8]~7_combout\ & 
-- ((\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|carry0[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\,
	datab => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|carry1[1]~0_combout\,
	datac => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|carry0[1]~0_combout\,
	datad => \c[8]~7_combout\,
	combout => \c[12]~9_combout\);

-- Location: LCCOMB_X1_Y34_N22
\S~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~17_combout\ = \B[12]~input_o\ $ (\A[12]~input_o\ $ (((\c[12]~10_combout\) # (\c[12]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[12]~input_o\,
	datab => \A[12]~input_o\,
	datac => \c[12]~10_combout\,
	datad => \c[12]~9_combout\,
	combout => \S~17_combout\);

-- Location: IOIBUF_X0_Y24_N22
\A[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(13),
	o => \A[13]~input_o\);

-- Location: IOIBUF_X0_Y50_N22
\B[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(13),
	o => \B[13]~input_o\);

-- Location: LCCOMB_X1_Y34_N12
\c[13]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[13]~11_combout\ = (\B[12]~input_o\ & ((\A[12]~input_o\) # ((\c[12]~10_combout\) # (\c[12]~9_combout\)))) # (!\B[12]~input_o\ & (\A[12]~input_o\ & ((\c[12]~10_combout\) # (\c[12]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[12]~input_o\,
	datab => \A[12]~input_o\,
	datac => \c[12]~10_combout\,
	datad => \c[12]~9_combout\,
	combout => \c[13]~11_combout\);

-- Location: LCCOMB_X1_Y34_N26
\S~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~18_combout\ = \A[13]~input_o\ $ (\B[13]~input_o\ $ (\c[13]~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[13]~input_o\,
	datac => \B[13]~input_o\,
	datad => \c[13]~11_combout\,
	combout => \S~18_combout\);

-- Location: IOIBUF_X0_Y14_N8
\A[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(14),
	o => \A[14]~input_o\);

-- Location: IOIBUF_X0_Y15_N22
\B[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(14),
	o => \B[14]~input_o\);

-- Location: LCCOMB_X1_Y36_N18
\c[14]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[14]~12_combout\ = (\A[12]~input_o\ & ((\B[12]~input_o\) # ((\c[12]~10_combout\) # (\c[12]~9_combout\)))) # (!\A[12]~input_o\ & (\B[12]~input_o\ & ((\c[12]~10_combout\) # (\c[12]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[12]~input_o\,
	datab => \B[12]~input_o\,
	datac => \c[12]~10_combout\,
	datad => \c[12]~9_combout\,
	combout => \c[14]~12_combout\);

-- Location: LCCOMB_X1_Y36_N24
\c[14]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[14]~13_combout\ = (\B[13]~input_o\ & ((\A[13]~input_o\) # (\c[14]~12_combout\))) # (!\B[13]~input_o\ & (\A[13]~input_o\ & \c[14]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[13]~input_o\,
	datac => \A[13]~input_o\,
	datad => \c[14]~12_combout\,
	combout => \c[14]~13_combout\);

-- Location: LCCOMB_X1_Y15_N16
\S~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~19_combout\ = \A[14]~input_o\ $ (\B[14]~input_o\ $ (\c[14]~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[14]~input_o\,
	datab => \B[14]~input_o\,
	datac => \c[14]~13_combout\,
	combout => \S~19_combout\);

-- Location: IOIBUF_X0_Y13_N1
\B[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(15),
	o => \B[15]~input_o\);

-- Location: IOIBUF_X0_Y17_N15
\A[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(15),
	o => \A[15]~input_o\);

-- Location: LCCOMB_X1_Y16_N4
\S~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~20_combout\ = \B[15]~input_o\ $ (\A[15]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[15]~input_o\,
	datad => \A[15]~input_o\,
	combout => \S~20_combout\);

-- Location: LCCOMB_X1_Y16_N30
\S~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~21_combout\ = \S~20_combout\ $ (((\B[14]~input_o\ & ((\A[14]~input_o\) # (\c[14]~13_combout\))) # (!\B[14]~input_o\ & (\A[14]~input_o\ & \c[14]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[14]~input_o\,
	datab => \S~20_combout\,
	datac => \A[14]~input_o\,
	datad => \c[14]~13_combout\,
	combout => \S~21_combout\);

-- Location: IOIBUF_X0_Y14_N1
\A[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(16),
	o => \A[16]~input_o\);

-- Location: IOIBUF_X0_Y11_N22
\B[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(16),
	o => \B[16]~input_o\);

-- Location: LCCOMB_X1_Y16_N16
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|carry1[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|carry1[1]~0_combout\ = (\A[15]~input_o\ & ((\A[14]~input_o\) # ((\B[15]~input_o\) # (\B[14]~input_o\)))) # (!\A[15]~input_o\ & (\B[15]~input_o\ & ((\A[14]~input_o\) # 
-- (\B[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[14]~input_o\,
	datab => \A[15]~input_o\,
	datac => \B[15]~input_o\,
	datad => \B[14]~input_o\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|carry1[1]~0_combout\);

-- Location: LCCOMB_X1_Y16_N26
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|carry0[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|carry0[1]~0_combout\ = (\A[15]~input_o\ & ((\B[15]~input_o\) # ((\A[14]~input_o\ & \B[14]~input_o\)))) # (!\A[15]~input_o\ & (\A[14]~input_o\ & (\B[15]~input_o\ & \B[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[14]~input_o\,
	datab => \A[15]~input_o\,
	datac => \B[15]~input_o\,
	datad => \B[14]~input_o\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|carry0[1]~0_combout\);

-- Location: LCCOMB_X1_Y16_N28
\c[16]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[16]~14_combout\ = (\c[14]~13_combout\ & (\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|carry1[1]~0_combout\)) # (!\c[14]~13_combout\ & 
-- ((\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|carry0[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|carry1[1]~0_combout\,
	datac => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|carry0[1]~0_combout\,
	datad => \c[14]~13_combout\,
	combout => \c[16]~14_combout\);

-- Location: LCCOMB_X1_Y16_N22
\S~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~22_combout\ = \A[16]~input_o\ $ (\B[16]~input_o\ $ (\c[16]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[16]~input_o\,
	datac => \B[16]~input_o\,
	datad => \c[16]~14_combout\,
	combout => \S~22_combout\);

-- Location: IOIBUF_X0_Y12_N15
\B[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(17),
	o => \B[17]~input_o\);

-- Location: IOIBUF_X0_Y13_N8
\A[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(17),
	o => \A[17]~input_o\);

-- Location: LCCOMB_X1_Y16_N8
\S~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~23_combout\ = \B[17]~input_o\ $ (\A[17]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[17]~input_o\,
	datad => \A[17]~input_o\,
	combout => \S~23_combout\);

-- Location: LCCOMB_X1_Y16_N14
\S~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~24_combout\ = \S~23_combout\ $ (((\A[16]~input_o\ & ((\B[16]~input_o\) # (\c[16]~14_combout\))) # (!\A[16]~input_o\ & (\B[16]~input_o\ & \c[16]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S~23_combout\,
	datab => \A[16]~input_o\,
	datac => \B[16]~input_o\,
	datad => \c[16]~14_combout\,
	combout => \S~24_combout\);

-- Location: IOIBUF_X0_Y42_N1
\A[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(18),
	o => \A[18]~input_o\);

-- Location: IOIBUF_X0_Y49_N8
\B[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(18),
	o => \B[18]~input_o\);

-- Location: LCCOMB_X1_Y16_N12
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|carry1[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|carry1[1]~0_combout\ = (\A[17]~input_o\ & ((\B[16]~input_o\) # ((\B[17]~input_o\) # (\A[16]~input_o\)))) # (!\A[17]~input_o\ & (\B[17]~input_o\ & ((\B[16]~input_o\) # 
-- (\A[16]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[17]~input_o\,
	datab => \B[16]~input_o\,
	datac => \B[17]~input_o\,
	datad => \A[16]~input_o\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|carry1[1]~0_combout\);

-- Location: LCCOMB_X1_Y36_N30
\c[18]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[18]~15_combout\ = (\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|carry1[1]~0_combout\ & ((\c[14]~13_combout\ & ((\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|carry1[1]~0_combout\))) # 
-- (!\c[14]~13_combout\ & (\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|carry0[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|carry1[1]~0_combout\,
	datab => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|carry0[1]~0_combout\,
	datac => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|carry1[1]~0_combout\,
	datad => \c[14]~13_combout\,
	combout => \c[18]~15_combout\);

-- Location: LCCOMB_X1_Y16_N6
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|carry0[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|carry0[1]~0_combout\ = (\A[17]~input_o\ & ((\B[17]~input_o\) # ((\B[16]~input_o\ & \A[16]~input_o\)))) # (!\A[17]~input_o\ & (\B[16]~input_o\ & (\B[17]~input_o\ & \A[16]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[17]~input_o\,
	datab => \B[16]~input_o\,
	datac => \B[17]~input_o\,
	datad => \A[16]~input_o\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|carry0[1]~0_combout\);

-- Location: LCCOMB_X1_Y36_N12
\c[18]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[18]~16_combout\ = (\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|carry0[1]~0_combout\ & ((\c[14]~13_combout\ & ((!\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|carry1[1]~0_combout\))) # 
-- (!\c[14]~13_combout\ & (!\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|carry0[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|carry0[1]~0_combout\,
	datab => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|carry0[1]~0_combout\,
	datac => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|carry1[1]~0_combout\,
	datad => \c[14]~13_combout\,
	combout => \c[18]~16_combout\);

-- Location: LCCOMB_X1_Y35_N24
\S~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~25_combout\ = \A[18]~input_o\ $ (\B[18]~input_o\ $ (((\c[18]~15_combout\) # (\c[18]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[18]~input_o\,
	datab => \B[18]~input_o\,
	datac => \c[18]~15_combout\,
	datad => \c[18]~16_combout\,
	combout => \S~25_combout\);

-- Location: IOIBUF_X0_Y65_N15
\A[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(19),
	o => \A[19]~input_o\);

-- Location: IOIBUF_X0_Y27_N22
\B[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(19),
	o => \B[19]~input_o\);

-- Location: LCCOMB_X1_Y35_N18
\S~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~26_combout\ = (\A[18]~input_o\ & ((\B[18]~input_o\) # ((\c[18]~15_combout\) # (\c[18]~16_combout\)))) # (!\A[18]~input_o\ & (\B[18]~input_o\ & ((\c[18]~15_combout\) # (\c[18]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[18]~input_o\,
	datab => \B[18]~input_o\,
	datac => \c[18]~15_combout\,
	datad => \c[18]~16_combout\,
	combout => \S~26_combout\);

-- Location: LCCOMB_X1_Y35_N16
\S~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~27_combout\ = \A[19]~input_o\ $ (\B[19]~input_o\ $ (\S~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[19]~input_o\,
	datac => \B[19]~input_o\,
	datad => \S~26_combout\,
	combout => \S~27_combout\);

-- Location: IOIBUF_X0_Y20_N15
\B[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(20),
	o => \B[20]~input_o\);

-- Location: IOIBUF_X0_Y19_N8
\A[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(20),
	o => \A[20]~input_o\);

-- Location: LCCOMB_X1_Y36_N2
\c[20]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[20]~17_combout\ = (\B[18]~input_o\ & ((\A[18]~input_o\) # ((\c[18]~15_combout\) # (\c[18]~16_combout\)))) # (!\B[18]~input_o\ & (\A[18]~input_o\ & ((\c[18]~15_combout\) # (\c[18]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[18]~input_o\,
	datab => \A[18]~input_o\,
	datac => \c[18]~15_combout\,
	datad => \c[18]~16_combout\,
	combout => \c[20]~17_combout\);

-- Location: LCCOMB_X1_Y36_N16
\c[20]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[20]~18_combout\ = (\A[19]~input_o\ & ((\B[19]~input_o\) # (\c[20]~17_combout\))) # (!\A[19]~input_o\ & (\B[19]~input_o\ & \c[20]~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[19]~input_o\,
	datac => \B[19]~input_o\,
	datad => \c[20]~17_combout\,
	combout => \c[20]~18_combout\);

-- Location: LCCOMB_X1_Y21_N16
\S~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~28_combout\ = \B[20]~input_o\ $ (\A[20]~input_o\ $ (\c[20]~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[20]~input_o\,
	datab => \A[20]~input_o\,
	datad => \c[20]~18_combout\,
	combout => \S~28_combout\);

-- Location: IOIBUF_X0_Y18_N15
\B[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(21),
	o => \B[21]~input_o\);

-- Location: IOIBUF_X0_Y23_N22
\A[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(21),
	o => \A[21]~input_o\);

-- Location: LCCOMB_X1_Y22_N28
\S~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~29_combout\ = \B[21]~input_o\ $ (\A[21]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[21]~input_o\,
	datad => \A[21]~input_o\,
	combout => \S~29_combout\);

-- Location: LCCOMB_X1_Y21_N14
\S~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~30_combout\ = \S~29_combout\ $ (((\B[20]~input_o\ & ((\A[20]~input_o\) # (\c[20]~18_combout\))) # (!\B[20]~input_o\ & (\A[20]~input_o\ & \c[20]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[20]~input_o\,
	datab => \S~29_combout\,
	datac => \A[20]~input_o\,
	datad => \c[20]~18_combout\,
	combout => \S~30_combout\);

-- Location: IOIBUF_X0_Y18_N22
\B[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(22),
	o => \B[22]~input_o\);

-- Location: IOIBUF_X0_Y11_N15
\A[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(22),
	o => \A[22]~input_o\);

-- Location: LCCOMB_X1_Y22_N6
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry1[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry1[1]~0_combout\ = (\B[21]~input_o\ & ((\A[21]~input_o\) # ((\A[20]~input_o\) # (\B[20]~input_o\)))) # (!\B[21]~input_o\ & (\A[21]~input_o\ & ((\A[20]~input_o\) # 
-- (\B[20]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[21]~input_o\,
	datab => \A[21]~input_o\,
	datac => \A[20]~input_o\,
	datad => \B[20]~input_o\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry1[1]~0_combout\);

-- Location: LCCOMB_X1_Y22_N24
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry0[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry0[1]~0_combout\ = (\B[21]~input_o\ & ((\A[21]~input_o\) # ((\A[20]~input_o\ & \B[20]~input_o\)))) # (!\B[21]~input_o\ & (\A[21]~input_o\ & (\A[20]~input_o\ & \B[20]~input_o\)))

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
	combout => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry0[1]~0_combout\);

-- Location: LCCOMB_X1_Y22_N2
\c[22]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[22]~19_combout\ = (\c[20]~18_combout\ & (\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry1[1]~0_combout\)) # (!\c[20]~18_combout\ & 
-- ((\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry0[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry1[1]~0_combout\,
	datab => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry0[1]~0_combout\,
	datad => \c[20]~18_combout\,
	combout => \c[22]~19_combout\);

-- Location: LCCOMB_X1_Y22_N4
\S~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~31_combout\ = \B[22]~input_o\ $ (\A[22]~input_o\ $ (\c[22]~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[22]~input_o\,
	datac => \A[22]~input_o\,
	datad => \c[22]~19_combout\,
	combout => \S~31_combout\);

-- Location: IOIBUF_X0_Y19_N1
\B[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(23),
	o => \B[23]~input_o\);

-- Location: IOIBUF_X0_Y23_N15
\A[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(23),
	o => \A[23]~input_o\);

-- Location: LCCOMB_X1_Y22_N18
\S~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~32_combout\ = \B[23]~input_o\ $ (\A[23]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[23]~input_o\,
	datad => \A[23]~input_o\,
	combout => \S~32_combout\);

-- Location: LCCOMB_X1_Y22_N12
\S~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~33_combout\ = \S~32_combout\ $ (((\B[22]~input_o\ & ((\A[22]~input_o\) # (\c[22]~19_combout\))) # (!\B[22]~input_o\ & (\A[22]~input_o\ & \c[22]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[22]~input_o\,
	datab => \S~32_combout\,
	datac => \A[22]~input_o\,
	datad => \c[22]~19_combout\,
	combout => \S~33_combout\);

-- Location: IOIBUF_X0_Y46_N15
\A[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(24),
	o => \A[24]~input_o\);

-- Location: LCCOMB_X1_Y22_N10
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|carry1[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|carry1[1]~0_combout\ = (\B[23]~input_o\ & ((\B[22]~input_o\) # ((\A[22]~input_o\) # (\A[23]~input_o\)))) # (!\B[23]~input_o\ & (\A[23]~input_o\ & ((\B[22]~input_o\) # 
-- (\A[22]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[23]~input_o\,
	datab => \B[22]~input_o\,
	datac => \A[22]~input_o\,
	datad => \A[23]~input_o\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|carry1[1]~0_combout\);

-- Location: LCCOMB_X1_Y36_N14
\c[24]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[24]~20_combout\ = (\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|carry1[1]~0_combout\ & ((\c[20]~18_combout\ & ((\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry1[1]~0_combout\))) # 
-- (!\c[20]~18_combout\ & (\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry0[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|carry1[1]~0_combout\,
	datab => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry0[1]~0_combout\,
	datac => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry1[1]~0_combout\,
	datad => \c[20]~18_combout\,
	combout => \c[24]~20_combout\);

-- Location: LCCOMB_X1_Y22_N16
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|carry0[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|carry0[1]~0_combout\ = (\B[23]~input_o\ & ((\A[23]~input_o\) # ((\B[22]~input_o\ & \A[22]~input_o\)))) # (!\B[23]~input_o\ & (\B[22]~input_o\ & (\A[22]~input_o\ & \A[23]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[23]~input_o\,
	datab => \B[22]~input_o\,
	datac => \A[22]~input_o\,
	datad => \A[23]~input_o\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|carry0[1]~0_combout\);

-- Location: LCCOMB_X1_Y36_N4
\c[24]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[24]~21_combout\ = (\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|carry0[1]~0_combout\ & ((\c[20]~18_combout\ & ((!\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry1[1]~0_combout\))) # 
-- (!\c[20]~18_combout\ & (!\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry0[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|carry0[1]~0_combout\,
	datab => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry0[1]~0_combout\,
	datac => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry1[1]~0_combout\,
	datad => \c[20]~18_combout\,
	combout => \c[24]~21_combout\);

-- Location: IOIBUF_X0_Y46_N22
\B[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(24),
	o => \B[24]~input_o\);

-- Location: LCCOMB_X1_Y36_N26
\S~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~34_combout\ = \A[24]~input_o\ $ (\B[24]~input_o\ $ (((\c[24]~20_combout\) # (\c[24]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[24]~input_o\,
	datab => \c[24]~20_combout\,
	datac => \c[24]~21_combout\,
	datad => \B[24]~input_o\,
	combout => \S~34_combout\);

-- Location: IOIBUF_X0_Y51_N15
\A[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(25),
	o => \A[25]~input_o\);

-- Location: IOIBUF_X0_Y63_N22
\B[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(25),
	o => \B[25]~input_o\);

-- Location: LCCOMB_X1_Y35_N10
\S~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~35_combout\ = (\A[24]~input_o\ & ((\B[24]~input_o\) # ((\c[24]~20_combout\) # (\c[24]~21_combout\)))) # (!\A[24]~input_o\ & (\B[24]~input_o\ & ((\c[24]~20_combout\) # (\c[24]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[24]~input_o\,
	datab => \B[24]~input_o\,
	datac => \c[24]~20_combout\,
	datad => \c[24]~21_combout\,
	combout => \S~35_combout\);

-- Location: LCCOMB_X1_Y35_N12
\S~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~36_combout\ = \A[25]~input_o\ $ (\B[25]~input_o\ $ (\S~35_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[25]~input_o\,
	datac => \B[25]~input_o\,
	datad => \S~35_combout\,
	combout => \S~36_combout\);

-- Location: IOIBUF_X0_Y61_N22
\A[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(26),
	o => \A[26]~input_o\);

-- Location: IOIBUF_X0_Y48_N1
\B[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(26),
	o => \B[26]~input_o\);

-- Location: LCCOMB_X1_Y44_N20
\c[26]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[26]~22_combout\ = (\A[24]~input_o\ & ((\B[24]~input_o\) # ((\c[24]~20_combout\) # (\c[24]~21_combout\)))) # (!\A[24]~input_o\ & (\B[24]~input_o\ & ((\c[24]~20_combout\) # (\c[24]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[24]~input_o\,
	datab => \B[24]~input_o\,
	datac => \c[24]~20_combout\,
	datad => \c[24]~21_combout\,
	combout => \c[26]~22_combout\);

-- Location: LCCOMB_X1_Y44_N2
\c[26]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[26]~23_combout\ = (\A[25]~input_o\ & ((\B[25]~input_o\) # (\c[26]~22_combout\))) # (!\A[25]~input_o\ & (\B[25]~input_o\ & \c[26]~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[25]~input_o\,
	datac => \B[25]~input_o\,
	datad => \c[26]~22_combout\,
	combout => \c[26]~23_combout\);

-- Location: LCCOMB_X1_Y44_N0
\S~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~37_combout\ = \A[26]~input_o\ $ (\B[26]~input_o\ $ (\c[26]~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[26]~input_o\,
	datac => \B[26]~input_o\,
	datad => \c[26]~23_combout\,
	combout => \S~37_combout\);

-- Location: IOIBUF_X0_Y52_N1
\A[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(27),
	o => \A[27]~input_o\);

-- Location: IOIBUF_X0_Y52_N15
\B[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(27),
	o => \B[27]~input_o\);

-- Location: LCCOMB_X1_Y48_N12
\S~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~38_combout\ = \A[27]~input_o\ $ (\B[27]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[27]~input_o\,
	datad => \B[27]~input_o\,
	combout => \S~38_combout\);

-- Location: LCCOMB_X1_Y44_N26
\S~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~39_combout\ = \S~38_combout\ $ (((\B[26]~input_o\ & ((\A[26]~input_o\) # (\c[26]~23_combout\))) # (!\B[26]~input_o\ & (\A[26]~input_o\ & \c[26]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S~38_combout\,
	datab => \B[26]~input_o\,
	datac => \A[26]~input_o\,
	datad => \c[26]~23_combout\,
	combout => \S~39_combout\);

-- Location: IOIBUF_X0_Y48_N8
\A[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(28),
	o => \A[28]~input_o\);

-- Location: IOIBUF_X0_Y50_N15
\B[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(28),
	o => \B[28]~input_o\);

-- Location: LCCOMB_X1_Y48_N26
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\ = (\A[27]~input_o\ & ((\B[26]~input_o\) # ((\A[26]~input_o\) # (\B[27]~input_o\)))) # (!\A[27]~input_o\ & (\B[27]~input_o\ & ((\B[26]~input_o\) # 
-- (\A[26]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[26]~input_o\,
	datab => \A[27]~input_o\,
	datac => \A[26]~input_o\,
	datad => \B[27]~input_o\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\);

-- Location: LCCOMB_X1_Y48_N28
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\ = (\A[27]~input_o\ & ((\B[27]~input_o\) # ((\B[26]~input_o\ & \A[26]~input_o\)))) # (!\A[27]~input_o\ & (\B[26]~input_o\ & (\A[26]~input_o\ & \B[27]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[26]~input_o\,
	datab => \A[27]~input_o\,
	datac => \A[26]~input_o\,
	datad => \B[27]~input_o\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\);

-- Location: LCCOMB_X1_Y44_N24
\c[28]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[28]~24_combout\ = (\c[26]~23_combout\ & (\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\)) # (!\c[26]~23_combout\ & 
-- ((\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\,
	datac => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\,
	datad => \c[26]~23_combout\,
	combout => \c[28]~24_combout\);

-- Location: LCCOMB_X1_Y44_N22
\S~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~40_combout\ = \A[28]~input_o\ $ (\B[28]~input_o\ $ (\c[28]~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[28]~input_o\,
	datac => \B[28]~input_o\,
	datad => \c[28]~24_combout\,
	combout => \S~40_combout\);

-- Location: IOIBUF_X0_Y63_N15
\B[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(29),
	o => \B[29]~input_o\);

-- Location: IOIBUF_X0_Y47_N1
\A[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(29),
	o => \A[29]~input_o\);

-- Location: LCCOMB_X1_Y47_N12
\S~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~41_combout\ = \B[29]~input_o\ $ (\A[29]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[29]~input_o\,
	datac => \A[29]~input_o\,
	combout => \S~41_combout\);

-- Location: LCCOMB_X1_Y47_N14
\S~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~42_combout\ = \S~41_combout\ $ (((\B[28]~input_o\ & ((\A[28]~input_o\) # (\c[28]~24_combout\))) # (!\B[28]~input_o\ & (\A[28]~input_o\ & \c[28]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S~41_combout\,
	datab => \B[28]~input_o\,
	datac => \A[28]~input_o\,
	datad => \c[28]~24_combout\,
	combout => \S~42_combout\);

-- Location: IOIBUF_X0_Y60_N15
\A[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(30),
	o => \A[30]~input_o\);

-- Location: IOIBUF_X0_Y52_N22
\B[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(30),
	o => \B[30]~input_o\);

-- Location: LCCOMB_X1_Y47_N18
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|carry0[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|carry0[1]~0_combout\ = (\B[29]~input_o\ & ((\A[29]~input_o\) # ((\A[28]~input_o\ & \B[28]~input_o\)))) # (!\B[29]~input_o\ & (\A[29]~input_o\ & (\A[28]~input_o\ & \B[28]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[29]~input_o\,
	datab => \A[29]~input_o\,
	datac => \A[28]~input_o\,
	datad => \B[28]~input_o\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|carry0[1]~0_combout\);

-- Location: LCCOMB_X1_Y44_N30
\c[30]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[30]~26_combout\ = (\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|carry0[1]~0_combout\ & ((\c[26]~23_combout\ & ((!\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\))) # 
-- (!\c[26]~23_combout\ & (!\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\,
	datab => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\,
	datac => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|carry0[1]~0_combout\,
	datad => \c[26]~23_combout\,
	combout => \c[30]~26_combout\);

-- Location: LCCOMB_X1_Y47_N8
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|carry1[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|carry1[1]~0_combout\ = (\B[29]~input_o\ & ((\A[29]~input_o\) # ((\A[28]~input_o\) # (\B[28]~input_o\)))) # (!\B[29]~input_o\ & (\A[29]~input_o\ & ((\A[28]~input_o\) # 
-- (\B[28]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[29]~input_o\,
	datab => \A[29]~input_o\,
	datac => \A[28]~input_o\,
	datad => \B[28]~input_o\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|carry1[1]~0_combout\);

-- Location: LCCOMB_X1_Y44_N16
\c[30]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[30]~25_combout\ = (\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|carry1[1]~0_combout\ & ((\c[26]~23_combout\ & ((\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\))) # 
-- (!\c[26]~23_combout\ & (\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\,
	datab => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\,
	datac => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|carry1[1]~0_combout\,
	datad => \c[26]~23_combout\,
	combout => \c[30]~25_combout\);

-- Location: LCCOMB_X1_Y44_N8
\S~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~43_combout\ = \A[30]~input_o\ $ (\B[30]~input_o\ $ (((\c[30]~26_combout\) # (\c[30]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[30]~input_o\,
	datab => \B[30]~input_o\,
	datac => \c[30]~26_combout\,
	datad => \c[30]~25_combout\,
	combout => \S~43_combout\);

-- Location: IOIBUF_X0_Y62_N15
\A[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(31),
	o => \A[31]~input_o\);

-- Location: IOIBUF_X0_Y64_N1
\B[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(31),
	o => \B[31]~input_o\);

-- Location: LCCOMB_X1_Y44_N6
\c[31]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[31]~27_combout\ = (\c[26]~23_combout\ & (\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\)) # (!\c[26]~23_combout\ & 
-- ((\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\,
	datac => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\,
	datad => \c[26]~23_combout\,
	combout => \c[31]~27_combout\);

-- Location: LCCOMB_X1_Y44_N12
\c[31]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[31]~28_combout\ = (\c[31]~27_combout\ & ((\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|carry1[1]~0_combout\))) # (!\c[31]~27_combout\ & 
-- (\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|carry0[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|carry0[1]~0_combout\,
	datac => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|carry1[1]~0_combout\,
	datad => \c[31]~27_combout\,
	combout => \c[31]~28_combout\);

-- Location: LCCOMB_X1_Y44_N18
\c[31]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[31]~29_combout\ = (\B[30]~input_o\ & ((\A[30]~input_o\) # (\c[31]~28_combout\))) # (!\B[30]~input_o\ & (\A[30]~input_o\ & \c[31]~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[30]~input_o\,
	datac => \A[30]~input_o\,
	datad => \c[31]~28_combout\,
	combout => \c[31]~29_combout\);

-- Location: LCCOMB_X1_Y44_N4
\S~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~44_combout\ = \A[31]~input_o\ $ (\B[31]~input_o\ $ (\c[31]~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[31]~input_o\,
	datac => \B[31]~input_o\,
	datad => \c[31]~29_combout\,
	combout => \S~44_combout\);

-- Location: LCCOMB_X1_Y44_N10
\c~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \c~30_combout\ = (\A[30]~input_o\ & ((\B[30]~input_o\) # ((\c[30]~26_combout\) # (\c[30]~25_combout\)))) # (!\A[30]~input_o\ & (\B[30]~input_o\ & ((\c[30]~26_combout\) # (\c[30]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[30]~input_o\,
	datab => \B[30]~input_o\,
	datac => \c[30]~26_combout\,
	datad => \c[30]~25_combout\,
	combout => \c~30_combout\);

-- Location: LCCOMB_X1_Y44_N28
\c~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \c~31_combout\ = (\A[31]~input_o\ & ((\B[31]~input_o\) # (\c~30_combout\))) # (!\A[31]~input_o\ & (\B[31]~input_o\ & \c~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[31]~input_o\,
	datac => \B[31]~input_o\,
	datad => \c~30_combout\,
	combout => \c~31_combout\);

-- Location: LCCOMB_X1_Y44_N14
\Ovfl~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Ovfl~4_combout\ = \c~31_combout\ $ (((\c[31]~28_combout\ & ((\B[30]~input_o\) # (\A[30]~input_o\))) # (!\c[31]~28_combout\ & (\B[30]~input_o\ & \A[30]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c[31]~28_combout\,
	datab => \B[30]~input_o\,
	datac => \A[30]~input_o\,
	datad => \c~31_combout\,
	combout => \Ovfl~4_combout\);

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


