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

-- DATE "11/21/2026 11:46:35"

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
	A : IN std_logic_vector(15 DOWNTO 0);
	B : IN std_logic_vector(15 DOWNTO 0);
	S : OUT std_logic_vector(15 DOWNTO 0);
	Cin : IN std_logic;
	Cout : OUT std_logic;
	Ovfl : OUT std_logic
	);
END Adder;

-- Design Ports Information
-- S[0]	=>  Location: PIN_AC7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[1]	=>  Location: PIN_AD9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[2]	=>  Location: PIN_AF3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[3]	=>  Location: PIN_AG1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[4]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[5]	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[6]	=>  Location: PIN_AF2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[7]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[8]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[9]	=>  Location: PIN_AE5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[10]	=>  Location: PIN_AE9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[11]	=>  Location: PIN_AE6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[12]	=>  Location: PIN_W11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[13]	=>  Location: PIN_AF6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[14]	=>  Location: PIN_Y12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[15]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cout	=>  Location: PIN_W12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ovfl	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_AH2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_AC11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cin	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_AG4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_AF5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_AG3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_AF4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_AE4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_AF8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_AE7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_AF7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_AH3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_AC9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_AE8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[8]	=>  Location: PIN_AC13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_AE10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[9]	=>  Location: PIN_AC6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[10]	=>  Location: PIN_AD6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[11]	=>  Location: PIN_AH4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[11]	=>  Location: PIN_AF11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[12]	=>  Location: PIN_AF12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[12]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[13]	=>  Location: PIN_AH5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[13]	=>  Location: PIN_AG6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[14]	=>  Location: PIN_AE13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[14]	=>  Location: PIN_AF1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[15]	=>  Location: PIN_AH6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[15]	=>  Location: PIN_AF13,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_A : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_S : std_logic_vector(15 DOWNTO 0);
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
SIGNAL \Cout~output_o\ : std_logic;
SIGNAL \Ovfl~output_o\ : std_logic;
SIGNAL \Cin~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \S~0_combout\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \S~1_combout\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~0_combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:Low_half|Recur:Low_half|cMid~0_combout\ : std_logic;
SIGNAL \S~2_combout\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \S~15_combout\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|BG~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:Low_half|Recur:Low_half|BG~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:Low_half|Recur:Low_half|BG~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:Low_half|cMid~0_combout\ : std_logic;
SIGNAL \S~3_combout\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \S~14_combout\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|BG~0_combout\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:Low_half|Recur:High_half|cMid~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:Low_half|Recur:High_half|cMid~1_combout\ : std_logic;
SIGNAL \S~4_combout\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \S~13_combout\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \B[8]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:Low_half|Recur:High_half|BG~0_combout\ : std_logic;
SIGNAL \CarryNetwork|cMid~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:Low_half|BG~1_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:Low_half|BG~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:Low_half|BG~combout\ : std_logic;
SIGNAL \S~5_combout\ : std_logic;
SIGNAL \B[9]~input_o\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \S~12_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|BG~0_combout\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \B[10]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:High_half|Recur:Low_half|cMid~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:High_half|Recur:Low_half|cMid~1_combout\ : std_logic;
SIGNAL \S~6_combout\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \B[11]~input_o\ : std_logic;
SIGNAL \S~11_combout\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:High_half|Recur:Low_half|BG~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:High_half|cMid~0DUPLICATE_combout\ : std_logic;
SIGNAL \B[12]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:High_half|Recur:Low_half|BG~1_combout\ : std_logic;
SIGNAL \S~7_combout\ : std_logic;
SIGNAL \B[13]~input_o\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:High_half|cMid~0_combout\ : std_logic;
SIGNAL \S~10_combout\ : std_logic;
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \B[14]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|BG~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:High_half|Recur:High_half|cMid~0_combout\ : std_logic;
SIGNAL \S~8_combout\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \B[15]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|Recur:cMid~0_combout\ : std_logic;
SIGNAL \S~9_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|Recur:High_half|c[1]~0_combout\ : std_logic;
SIGNAL \Ovfl~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:Low_half|ALT_INV_cMid~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:Low_half|Recur:Low_half|ALT_INV_BG~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:Low_half|Recur:Low_half|ALT_INV_BG~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|ALT_INV_BG~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:Low_half|Recur:Low_half|ALT_INV_cMid~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|ALT_INV_BG~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:High_half|ALT_INV_cMid~0DUPLICATE_combout\ : std_logic;
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
SIGNAL \CarryNetwork|Recur:Low_half|ALT_INV_BG~1_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:High_half|Recur:Low_half|ALT_INV_BG~1_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|ALT_INV_Recur:cMid~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:High_half|Recur:High_half|ALT_INV_cMid~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|ALT_INV_BG~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:High_half|ALT_INV_cMid~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:High_half|Recur:Low_half|ALT_INV_BG~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:High_half|Recur:Low_half|ALT_INV_cMid~1_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:High_half|Recur:Low_half|ALT_INV_cMid~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|ALT_INV_BG~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:Low_half|ALT_INV_BG~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:Low_half|ALT_INV_BG~0_combout\ : std_logic;
SIGNAL \CarryNetwork|ALT_INV_cMid~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:Low_half|Recur:High_half|ALT_INV_BG~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:Low_half|Recur:High_half|ALT_INV_cMid~1_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:Low_half|Recur:High_half|ALT_INV_cMid~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|ALT_INV_BG~0_combout\ : std_logic;

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
\CarryNetwork|Recur:Low_half|ALT_INV_cMid~0_combout\ <= NOT \CarryNetwork|Recur:Low_half|cMid~0_combout\;
\CarryNetwork|Recur:Low_half|Recur:Low_half|ALT_INV_BG~combout\ <= NOT \CarryNetwork|Recur:Low_half|Recur:Low_half|BG~combout\;
\CarryNetwork|Recur:Low_half|Recur:Low_half|ALT_INV_BG~0_combout\ <= NOT \CarryNetwork|Recur:Low_half|Recur:Low_half|BG~0_combout\;
\CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|ALT_INV_BG~0_combout\ <= NOT \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|BG~0_combout\;
\CarryNetwork|Recur:Low_half|Recur:Low_half|ALT_INV_cMid~0_combout\ <= NOT \CarryNetwork|Recur:Low_half|Recur:Low_half|cMid~0_combout\;
\CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|ALT_INV_BG~0_combout\ <= NOT \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~0_combout\;
\CarryNetwork|Recur:High_half|ALT_INV_cMid~0DUPLICATE_combout\ <= NOT \CarryNetwork|Recur:High_half|cMid~0DUPLICATE_combout\;
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
\CarryNetwork|Recur:Low_half|ALT_INV_BG~1_combout\ <= NOT \CarryNetwork|Recur:Low_half|BG~1_combout\;
\CarryNetwork|Recur:High_half|Recur:Low_half|ALT_INV_BG~1_combout\ <= NOT \CarryNetwork|Recur:High_half|Recur:Low_half|BG~1_combout\;
\CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|ALT_INV_Recur:cMid~0_combout\ <= NOT \CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|Recur:cMid~0_combout\;
\CarryNetwork|Recur:High_half|Recur:High_half|ALT_INV_cMid~0_combout\ <= NOT \CarryNetwork|Recur:High_half|Recur:High_half|cMid~0_combout\;
\CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|ALT_INV_BG~0_combout\ <= NOT \CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|BG~0_combout\;
\CarryNetwork|Recur:High_half|ALT_INV_cMid~0_combout\ <= NOT \CarryNetwork|Recur:High_half|cMid~0_combout\;
\CarryNetwork|Recur:High_half|Recur:Low_half|ALT_INV_BG~0_combout\ <= NOT \CarryNetwork|Recur:High_half|Recur:Low_half|BG~0_combout\;
\CarryNetwork|Recur:High_half|Recur:Low_half|ALT_INV_cMid~1_combout\ <= NOT \CarryNetwork|Recur:High_half|Recur:Low_half|cMid~1_combout\;
\CarryNetwork|Recur:High_half|Recur:Low_half|ALT_INV_cMid~0_combout\ <= NOT \CarryNetwork|Recur:High_half|Recur:Low_half|cMid~0_combout\;
\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|ALT_INV_BG~0_combout\ <= NOT \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|BG~0_combout\;
\CarryNetwork|Recur:Low_half|ALT_INV_BG~combout\ <= NOT \CarryNetwork|Recur:Low_half|BG~combout\;
\CarryNetwork|Recur:Low_half|ALT_INV_BG~0_combout\ <= NOT \CarryNetwork|Recur:Low_half|BG~0_combout\;
\CarryNetwork|ALT_INV_cMid~0_combout\ <= NOT \CarryNetwork|cMid~0_combout\;
\CarryNetwork|Recur:Low_half|Recur:High_half|ALT_INV_BG~0_combout\ <= NOT \CarryNetwork|Recur:Low_half|Recur:High_half|BG~0_combout\;
\CarryNetwork|Recur:Low_half|Recur:High_half|ALT_INV_cMid~1_combout\ <= NOT \CarryNetwork|Recur:Low_half|Recur:High_half|cMid~1_combout\;
\CarryNetwork|Recur:Low_half|Recur:High_half|ALT_INV_cMid~0_combout\ <= NOT \CarryNetwork|Recur:Low_half|Recur:High_half|cMid~0_combout\;
\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|ALT_INV_BG~0_combout\ <= NOT \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|BG~0_combout\;

-- Location: IOOBUF_X56_Y0_N2
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

-- Location: IOOBUF_X55_Y0_N67
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

-- Location: IOOBUF_X52_Y0_N67
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

-- Location: IOOBUF_X54_Y0_N67
\S[3]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~15_combout\,
	devoe => ww_devoe,
	o => \S[3]~output_o\);

-- Location: IOOBUF_X37_Y0_N2
\S[4]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~3_combout\,
	devoe => ww_devoe,
	o => \S[4]~output_o\);

-- Location: IOOBUF_X41_Y0_N98
\S[5]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~14_combout\,
	devoe => ww_devoe,
	o => \S[5]~output_o\);

-- Location: IOOBUF_X52_Y0_N2
\S[6]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~4_combout\,
	devoe => ww_devoe,
	o => \S[6]~output_o\);

-- Location: IOOBUF_X52_Y0_N98
\S[7]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~13_combout\,
	devoe => ww_devoe,
	o => \S[7]~output_o\);

-- Location: IOOBUF_X47_Y0_N36
\S[8]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~5_combout\,
	devoe => ww_devoe,
	o => \S[8]~output_o\);

-- Location: IOOBUF_X47_Y0_N2
\S[9]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~12_combout\,
	devoe => ww_devoe,
	o => \S[9]~output_o\);

-- Location: IOOBUF_X41_Y0_N5
\S[10]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~6_combout\,
	devoe => ww_devoe,
	o => \S[10]~output_o\);

-- Location: IOOBUF_X45_Y0_N2
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

-- Location: IOOBUF_X45_Y0_N36
\S[12]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~7_combout\,
	devoe => ww_devoe,
	o => \S[12]~output_o\);

-- Location: IOOBUF_X45_Y0_N67
\S[13]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~10_combout\,
	devoe => ww_devoe,
	o => \S[13]~output_o\);

-- Location: IOOBUF_X45_Y0_N98
\S[14]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~8_combout\,
	devoe => ww_devoe,
	o => \S[14]~output_o\);

-- Location: IOOBUF_X41_Y0_N67
\S[15]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~9_combout\,
	devoe => ww_devoe,
	o => \S[15]~output_o\);

-- Location: IOOBUF_X41_Y0_N33
\Cout~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|Recur:High_half|c[1]~0_combout\,
	devoe => ww_devoe,
	o => \Cout~output_o\);

-- Location: IOOBUF_X47_Y0_N98
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

-- Location: IOIBUF_X55_Y0_N32
\Cin~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cin,
	o => \Cin~input_o\);

-- Location: IOIBUF_X48_Y0_N94
\B[0]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X50_Y0_N32
\A[0]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: LABCELL_X55_Y1_N24
\S~0\ : arriaii_lcell_comb
-- Equation(s):
-- \S~0_combout\ = ( \B[0]~input_o\ & ( \A[0]~input_o\ & ( \Cin~input_o\ ) ) ) # ( !\B[0]~input_o\ & ( \A[0]~input_o\ & ( !\Cin~input_o\ ) ) ) # ( \B[0]~input_o\ & ( !\A[0]~input_o\ & ( !\Cin~input_o\ ) ) ) # ( !\B[0]~input_o\ & ( !\A[0]~input_o\ & ( 
-- \Cin~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111111111110000000011111111000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Cin~input_o\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_A[0]~input_o\,
	combout => \S~0_combout\);

-- Location: IOIBUF_X48_Y0_N63
\A[1]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: IOIBUF_X47_Y0_N63
\B[1]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: LABCELL_X55_Y1_N28
\S~1\ : arriaii_lcell_comb
-- Equation(s):
-- \S~1_combout\ = ( \B[0]~input_o\ & ( \B[1]~input_o\ & ( !\A[1]~input_o\ $ (((\A[0]~input_o\) # (\Cin~input_o\))) ) ) ) # ( !\B[0]~input_o\ & ( \B[1]~input_o\ & ( !\A[1]~input_o\ $ (((\Cin~input_o\ & \A[0]~input_o\))) ) ) ) # ( \B[0]~input_o\ & ( 
-- !\B[1]~input_o\ & ( !\A[1]~input_o\ $ (((!\Cin~input_o\ & !\A[0]~input_o\))) ) ) ) # ( !\B[0]~input_o\ & ( !\B[1]~input_o\ & ( !\A[1]~input_o\ $ (((!\Cin~input_o\) # (!\A[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111111100001111111100000011111100000000111100000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Cin~input_o\,
	datac => \ALT_INV_A[0]~input_o\,
	datad => \ALT_INV_A[1]~input_o\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \S~1_combout\);

-- Location: IOIBUF_X48_Y0_N1
\B[2]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: LABCELL_X47_Y1_N0
\CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~0\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~0_combout\ = ( \A[1]~input_o\ & ( ((\A[0]~input_o\ & \B[0]~input_o\)) # (\B[1]~input_o\) ) ) # ( !\A[1]~input_o\ & ( (\B[1]~input_o\ & (\A[0]~input_o\ & \B[0]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010101010101010111110101010101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_A[0]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_A[1]~input_o\,
	combout => \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~0_combout\);

-- Location: IOIBUF_X48_Y0_N32
\A[2]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: LABCELL_X47_Y1_N4
\CarryNetwork|Recur:Low_half|Recur:Low_half|cMid~0\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:Low_half|Recur:Low_half|cMid~0_combout\ = ( \Cin~input_o\ & ( (!\A[0]~input_o\ & (\B[0]~input_o\ & (!\B[1]~input_o\ $ (!\A[1]~input_o\)))) # (\A[0]~input_o\ & (!\B[0]~input_o\ & (!\B[1]~input_o\ $ (!\A[1]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000110011000000000011001100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[0]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_A[1]~input_o\,
	dataf => \ALT_INV_Cin~input_o\,
	combout => \CarryNetwork|Recur:Low_half|Recur:Low_half|cMid~0_combout\);

-- Location: LABCELL_X47_Y1_N32
\S~2\ : arriaii_lcell_comb
-- Equation(s):
-- \S~2_combout\ = ( \CarryNetwork|Recur:Low_half|Recur:Low_half|cMid~0_combout\ & ( !\B[2]~input_o\ $ (\A[2]~input_o\) ) ) # ( !\CarryNetwork|Recur:Low_half|Recur:Low_half|cMid~0_combout\ & ( !\B[2]~input_o\ $ 
-- (!\CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~0_combout\ $ (\A[2]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101010100101010110101010010110101010010101011010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datac => \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|ALT_INV_BG~0_combout\,
	datad => \ALT_INV_A[2]~input_o\,
	dataf => \CarryNetwork|Recur:Low_half|Recur:Low_half|ALT_INV_cMid~0_combout\,
	combout => \S~2_combout\);

-- Location: IOIBUF_X50_Y0_N1
\B[3]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: IOIBUF_X50_Y0_N63
\A[3]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: MLABCELL_X49_Y1_N2
\S~15\ : arriaii_lcell_comb
-- Equation(s):
-- \S~15_combout\ = ( \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~0_combout\ & ( \CarryNetwork|Recur:Low_half|Recur:Low_half|cMid~0_combout\ & ( !\B[3]~input_o\ $ (!\A[3]~input_o\ $ (((\B[2]~input_o\) # (\A[2]~input_o\)))) ) ) ) # ( 
-- !\CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~0_combout\ & ( \CarryNetwork|Recur:Low_half|Recur:Low_half|cMid~0_combout\ & ( !\B[3]~input_o\ $ (!\A[3]~input_o\ $ (((\B[2]~input_o\) # (\A[2]~input_o\)))) ) ) ) # ( 
-- \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~0_combout\ & ( !\CarryNetwork|Recur:Low_half|Recur:Low_half|cMid~0_combout\ & ( !\B[3]~input_o\ $ (!\A[3]~input_o\ $ (((\B[2]~input_o\) # (\A[2]~input_o\)))) ) ) ) # ( 
-- !\CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~0_combout\ & ( !\CarryNetwork|Recur:Low_half|Recur:Low_half|cMid~0_combout\ & ( !\B[3]~input_o\ $ (!\A[3]~input_o\ $ (((\A[2]~input_o\ & \B[2]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111011100001011110001000011101111000100001110111100010000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[2]~input_o\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \ALT_INV_A[3]~input_o\,
	datae => \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|ALT_INV_BG~0_combout\,
	dataf => \CarryNetwork|Recur:Low_half|Recur:Low_half|ALT_INV_cMid~0_combout\,
	combout => \S~15_combout\);

-- Location: IOIBUF_X43_Y0_N94
\A[4]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: IOIBUF_X39_Y0_N1
\B[4]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: LABCELL_X47_Y1_N36
\CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|BG~0\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|BG~0_combout\ = ( \B[2]~input_o\ & ( (!\A[2]~input_o\ & (\A[3]~input_o\ & \B[3]~input_o\)) # (\A[2]~input_o\ & ((\B[3]~input_o\) # (\A[3]~input_o\))) ) ) # ( !\B[2]~input_o\ & ( (\A[3]~input_o\ & 
-- \B[3]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000101010111110000010101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[2]~input_o\,
	datac => \ALT_INV_A[3]~input_o\,
	datad => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|BG~0_combout\);

-- Location: LABCELL_X47_Y1_N18
\CarryNetwork|Recur:Low_half|Recur:Low_half|BG~0\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:Low_half|Recur:Low_half|BG~0_combout\ = ( \B[2]~input_o\ & ( (!\A[2]~input_o\ & (!\B[3]~input_o\ $ (!\A[3]~input_o\))) ) ) # ( !\B[2]~input_o\ & ( (\A[2]~input_o\ & (!\B[3]~input_o\ $ (!\A[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000111100000000000011110000111100000000000011110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[3]~input_o\,
	datac => \ALT_INV_A[3]~input_o\,
	datad => \ALT_INV_A[2]~input_o\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \CarryNetwork|Recur:Low_half|Recur:Low_half|BG~0_combout\);

-- Location: LABCELL_X47_Y1_N28
\CarryNetwork|Recur:Low_half|Recur:Low_half|BG\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:Low_half|Recur:Low_half|BG~combout\ = ( \CarryNetwork|Recur:Low_half|Recur:Low_half|BG~0_combout\ & ( (!\CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~0_combout\ & 
-- !\CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|BG~0_combout\) ) ) # ( !\CarryNetwork|Recur:Low_half|Recur:Low_half|BG~0_combout\ & ( !\CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|BG~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|ALT_INV_BG~0_combout\,
	datad => \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|ALT_INV_BG~0_combout\,
	dataf => \CarryNetwork|Recur:Low_half|Recur:Low_half|ALT_INV_BG~0_combout\,
	combout => \CarryNetwork|Recur:Low_half|Recur:Low_half|BG~combout\);

-- Location: MLABCELL_X46_Y1_N32
\CarryNetwork|Recur:Low_half|cMid~0\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:Low_half|cMid~0_combout\ = ( \CarryNetwork|Recur:Low_half|Recur:Low_half|BG~0_combout\ & ( \CarryNetwork|Recur:Low_half|Recur:Low_half|cMid~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:Low_half|Recur:Low_half|ALT_INV_cMid~0_combout\,
	dataf => \CarryNetwork|Recur:Low_half|Recur:Low_half|ALT_INV_BG~0_combout\,
	combout => \CarryNetwork|Recur:Low_half|cMid~0_combout\);

-- Location: MLABCELL_X42_Y1_N8
\S~3\ : arriaii_lcell_comb
-- Equation(s):
-- \S~3_combout\ = ( \CarryNetwork|Recur:Low_half|Recur:Low_half|BG~combout\ & ( \CarryNetwork|Recur:Low_half|cMid~0_combout\ & ( !\A[4]~input_o\ $ (\B[4]~input_o\) ) ) ) # ( !\CarryNetwork|Recur:Low_half|Recur:Low_half|BG~combout\ & ( 
-- \CarryNetwork|Recur:Low_half|cMid~0_combout\ & ( !\A[4]~input_o\ $ (\B[4]~input_o\) ) ) ) # ( \CarryNetwork|Recur:Low_half|Recur:Low_half|BG~combout\ & ( !\CarryNetwork|Recur:Low_half|cMid~0_combout\ & ( !\A[4]~input_o\ $ (!\B[4]~input_o\) ) ) ) # ( 
-- !\CarryNetwork|Recur:Low_half|Recur:Low_half|BG~combout\ & ( !\CarryNetwork|Recur:Low_half|cMid~0_combout\ & ( !\A[4]~input_o\ $ (\B[4]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000110011001100111100110011001100001100111100110000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[4]~input_o\,
	datad => \ALT_INV_B[4]~input_o\,
	datae => \CarryNetwork|Recur:Low_half|Recur:Low_half|ALT_INV_BG~combout\,
	dataf => \CarryNetwork|Recur:Low_half|ALT_INV_cMid~0_combout\,
	combout => \S~3_combout\);

-- Location: IOIBUF_X43_Y0_N63
\B[5]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: IOIBUF_X43_Y0_N1
\A[5]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: MLABCELL_X42_Y1_N28
\S~14\ : arriaii_lcell_comb
-- Equation(s):
-- \S~14_combout\ = ( \CarryNetwork|Recur:Low_half|Recur:Low_half|BG~combout\ & ( \CarryNetwork|Recur:Low_half|cMid~0_combout\ & ( !\B[5]~input_o\ $ (!\A[5]~input_o\ $ (((\B[4]~input_o\) # (\A[4]~input_o\)))) ) ) ) # ( 
-- !\CarryNetwork|Recur:Low_half|Recur:Low_half|BG~combout\ & ( \CarryNetwork|Recur:Low_half|cMid~0_combout\ & ( !\B[5]~input_o\ $ (!\A[5]~input_o\ $ (((\B[4]~input_o\) # (\A[4]~input_o\)))) ) ) ) # ( \CarryNetwork|Recur:Low_half|Recur:Low_half|BG~combout\ & 
-- ( !\CarryNetwork|Recur:Low_half|cMid~0_combout\ & ( !\B[5]~input_o\ $ (!\A[5]~input_o\ $ (((\A[4]~input_o\ & \B[4]~input_o\)))) ) ) ) # ( !\CarryNetwork|Recur:Low_half|Recur:Low_half|BG~combout\ & ( !\CarryNetwork|Recur:Low_half|cMid~0_combout\ & ( 
-- !\B[5]~input_o\ $ (!\A[5]~input_o\ $ (((\B[4]~input_o\) # (\A[4]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100110100101010110100110100101101001101001010110100110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[5]~input_o\,
	datab => \ALT_INV_A[4]~input_o\,
	datac => \ALT_INV_A[5]~input_o\,
	datad => \ALT_INV_B[4]~input_o\,
	datae => \CarryNetwork|Recur:Low_half|Recur:Low_half|ALT_INV_BG~combout\,
	dataf => \CarryNetwork|Recur:Low_half|ALT_INV_cMid~0_combout\,
	combout => \S~14_combout\);

-- Location: IOIBUF_X50_Y0_N94
\B[6]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: LABCELL_X47_Y1_N2
\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|BG~0\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|BG~0_combout\ = ( \B[4]~input_o\ & ( (!\A[5]~input_o\ & (\B[5]~input_o\ & \A[4]~input_o\)) # (\A[5]~input_o\ & ((\A[4]~input_o\) # (\B[5]~input_o\))) ) ) # ( !\B[4]~input_o\ & ( (\A[5]~input_o\ & 
-- \B[5]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000011001111110000001100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[5]~input_o\,
	datac => \ALT_INV_B[5]~input_o\,
	datad => \ALT_INV_A[4]~input_o\,
	dataf => \ALT_INV_B[4]~input_o\,
	combout => \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|BG~0_combout\);

-- Location: IOIBUF_X52_Y0_N32
\A[6]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: LABCELL_X47_Y1_N26
\CarryNetwork|Recur:Low_half|Recur:High_half|cMid~0\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:Low_half|Recur:High_half|cMid~0_combout\ = ( \B[4]~input_o\ & ( (!\A[4]~input_o\ & (!\A[5]~input_o\ $ (!\B[5]~input_o\))) ) ) # ( !\B[4]~input_o\ & ( (\A[4]~input_o\ & (!\A[5]~input_o\ $ (!\B[5]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000111100000000000011110000111100000000000011110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[5]~input_o\,
	datac => \ALT_INV_B[5]~input_o\,
	datad => \ALT_INV_A[4]~input_o\,
	dataf => \ALT_INV_B[4]~input_o\,
	combout => \CarryNetwork|Recur:Low_half|Recur:High_half|cMid~0_combout\);

-- Location: LABCELL_X47_Y1_N12
\CarryNetwork|Recur:Low_half|Recur:High_half|cMid~1\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:Low_half|Recur:High_half|cMid~1_combout\ = ( \CarryNetwork|Recur:Low_half|Recur:High_half|cMid~0_combout\ & ( ((\CarryNetwork|Recur:Low_half|Recur:Low_half|BG~0_combout\ & ((\CarryNetwork|Recur:Low_half|Recur:Low_half|cMid~0_combout\) 
-- # (\CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~0_combout\)))) # (\CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|BG~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011011111110011001101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|ALT_INV_BG~0_combout\,
	datab => \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|ALT_INV_BG~0_combout\,
	datac => \CarryNetwork|Recur:Low_half|Recur:Low_half|ALT_INV_cMid~0_combout\,
	datad => \CarryNetwork|Recur:Low_half|Recur:Low_half|ALT_INV_BG~0_combout\,
	dataf => \CarryNetwork|Recur:Low_half|Recur:High_half|ALT_INV_cMid~0_combout\,
	combout => \CarryNetwork|Recur:Low_half|Recur:High_half|cMid~1_combout\);

-- Location: LABCELL_X47_Y1_N38
\S~4\ : arriaii_lcell_comb
-- Equation(s):
-- \S~4_combout\ = ( \CarryNetwork|Recur:Low_half|Recur:High_half|cMid~1_combout\ & ( !\B[6]~input_o\ $ (\A[6]~input_o\) ) ) # ( !\CarryNetwork|Recur:Low_half|Recur:High_half|cMid~1_combout\ & ( !\B[6]~input_o\ $ 
-- (!\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|BG~0_combout\ $ (\A[6]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011000011001111001100001111001100001100111100110000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[6]~input_o\,
	datac => \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|ALT_INV_BG~0_combout\,
	datad => \ALT_INV_A[6]~input_o\,
	dataf => \CarryNetwork|Recur:Low_half|Recur:High_half|ALT_INV_cMid~1_combout\,
	combout => \S~4_combout\);

-- Location: IOIBUF_X55_Y0_N94
\B[7]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: IOIBUF_X55_Y0_N1
\A[7]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: LABCELL_X47_Y1_N22
\S~13\ : arriaii_lcell_comb
-- Equation(s):
-- \S~13_combout\ = ( \A[7]~input_o\ & ( \CarryNetwork|Recur:Low_half|Recur:High_half|cMid~1_combout\ & ( !\B[7]~input_o\ $ (((\B[6]~input_o\) # (\A[6]~input_o\))) ) ) ) # ( !\A[7]~input_o\ & ( \CarryNetwork|Recur:Low_half|Recur:High_half|cMid~1_combout\ & ( 
-- !\B[7]~input_o\ $ (((!\A[6]~input_o\ & !\B[6]~input_o\))) ) ) ) # ( \A[7]~input_o\ & ( !\CarryNetwork|Recur:Low_half|Recur:High_half|cMid~1_combout\ & ( !\B[7]~input_o\ $ (((!\A[6]~input_o\ & (\B[6]~input_o\ & 
-- \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|BG~0_combout\)) # (\A[6]~input_o\ & ((\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|BG~0_combout\) # (\B[6]~input_o\))))) ) ) ) # ( !\A[7]~input_o\ & ( 
-- !\CarryNetwork|Recur:Low_half|Recur:High_half|cMid~1_combout\ & ( !\B[7]~input_o\ $ (((!\A[6]~input_o\ & ((!\B[6]~input_o\) # (!\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|BG~0_combout\))) # (\A[6]~input_o\ & (!\B[6]~input_o\ & 
-- !\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|BG~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011001101010101010011001010101101010011010101001010110010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[7]~input_o\,
	datab => \ALT_INV_A[6]~input_o\,
	datac => \ALT_INV_B[6]~input_o\,
	datad => \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|ALT_INV_BG~0_combout\,
	datae => \ALT_INV_A[7]~input_o\,
	dataf => \CarryNetwork|Recur:Low_half|Recur:High_half|ALT_INV_cMid~1_combout\,
	combout => \S~13_combout\);

-- Location: IOIBUF_X43_Y0_N32
\A[8]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: IOIBUF_X37_Y0_N94
\B[8]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

-- Location: LABCELL_X47_Y1_N16
\CarryNetwork|Recur:Low_half|Recur:High_half|BG~0\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:Low_half|Recur:High_half|BG~0_combout\ = ( \A[7]~input_o\ & ( (!\B[7]~input_o\ & (!\B[6]~input_o\ $ (!\A[6]~input_o\))) ) ) # ( !\A[7]~input_o\ & ( (\B[7]~input_o\ & (!\B[6]~input_o\ $ (!\A[6]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101010000000001010101000000001010101000000000101010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[7]~input_o\,
	datac => \ALT_INV_B[6]~input_o\,
	datad => \ALT_INV_A[6]~input_o\,
	dataf => \ALT_INV_A[7]~input_o\,
	combout => \CarryNetwork|Recur:Low_half|Recur:High_half|BG~0_combout\);

-- Location: LABCELL_X47_Y1_N24
\CarryNetwork|cMid~0\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|cMid~0_combout\ = ( \CarryNetwork|Recur:Low_half|Recur:High_half|BG~0_combout\ & ( (\CarryNetwork|Recur:Low_half|Recur:Low_half|BG~0_combout\ & (\CarryNetwork|Recur:Low_half|Recur:Low_half|cMid~0_combout\ & 
-- \CarryNetwork|Recur:Low_half|Recur:High_half|cMid~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:Low_half|Recur:Low_half|ALT_INV_BG~0_combout\,
	datac => \CarryNetwork|Recur:Low_half|Recur:Low_half|ALT_INV_cMid~0_combout\,
	datad => \CarryNetwork|Recur:Low_half|Recur:High_half|ALT_INV_cMid~0_combout\,
	dataf => \CarryNetwork|Recur:Low_half|Recur:High_half|ALT_INV_BG~0_combout\,
	combout => \CarryNetwork|cMid~0_combout\);

-- Location: LABCELL_X47_Y1_N30
\CarryNetwork|Recur:Low_half|BG~1\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:Low_half|BG~1_combout\ = ( \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|BG~0_combout\ & ( (!\B[7]~input_o\ & (\A[7]~input_o\ & ((\A[6]~input_o\) # (\B[6]~input_o\)))) # (\B[7]~input_o\ & (((\A[7]~input_o\) # 
-- (\A[6]~input_o\)) # (\B[6]~input_o\))) ) ) # ( !\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|BG~0_combout\ & ( (!\B[7]~input_o\ & (\B[6]~input_o\ & (\A[6]~input_o\ & \A[7]~input_o\))) # (\B[7]~input_o\ & (((\B[6]~input_o\ & \A[6]~input_o\)) 
-- # (\A[7]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100011111000000010001111100000111011111110000011101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[6]~input_o\,
	datab => \ALT_INV_A[6]~input_o\,
	datac => \ALT_INV_B[7]~input_o\,
	datad => \ALT_INV_A[7]~input_o\,
	dataf => \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|ALT_INV_BG~0_combout\,
	combout => \CarryNetwork|Recur:Low_half|BG~1_combout\);

-- Location: LABCELL_X47_Y1_N6
\CarryNetwork|Recur:Low_half|BG~0\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:Low_half|BG~0_combout\ = ( \CarryNetwork|Recur:Low_half|Recur:High_half|BG~0_combout\ & ( \CarryNetwork|Recur:Low_half|Recur:High_half|cMid~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:Low_half|Recur:High_half|ALT_INV_cMid~0_combout\,
	dataf => \CarryNetwork|Recur:Low_half|Recur:High_half|ALT_INV_BG~0_combout\,
	combout => \CarryNetwork|Recur:Low_half|BG~0_combout\);

-- Location: LABCELL_X47_Y1_N14
\CarryNetwork|Recur:Low_half|BG\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:Low_half|BG~combout\ = ( \CarryNetwork|Recur:Low_half|BG~0_combout\ & ( (\CarryNetwork|Recur:Low_half|Recur:Low_half|BG~combout\ & !\CarryNetwork|Recur:Low_half|BG~1_combout\) ) ) # ( !\CarryNetwork|Recur:Low_half|BG~0_combout\ & ( 
-- !\CarryNetwork|Recur:Low_half|BG~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:Low_half|Recur:Low_half|ALT_INV_BG~combout\,
	datad => \CarryNetwork|Recur:Low_half|ALT_INV_BG~1_combout\,
	dataf => \CarryNetwork|Recur:Low_half|ALT_INV_BG~0_combout\,
	combout => \CarryNetwork|Recur:Low_half|BG~combout\);

-- Location: LABCELL_X47_Y1_N34
\S~5\ : arriaii_lcell_comb
-- Equation(s):
-- \S~5_combout\ = ( \CarryNetwork|Recur:Low_half|BG~combout\ & ( !\A[8]~input_o\ $ (!\B[8]~input_o\ $ (\CarryNetwork|cMid~0_combout\)) ) ) # ( !\CarryNetwork|Recur:Low_half|BG~combout\ & ( !\A[8]~input_o\ $ (\B[8]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001111000011110000111100001100111100110000110011110011000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[8]~input_o\,
	datac => \ALT_INV_B[8]~input_o\,
	datad => \CarryNetwork|ALT_INV_cMid~0_combout\,
	dataf => \CarryNetwork|Recur:Low_half|ALT_INV_BG~combout\,
	combout => \S~5_combout\);

-- Location: IOIBUF_X54_Y0_N32
\B[9]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(9),
	o => \B[9]~input_o\);

-- Location: IOIBUF_X39_Y0_N32
\A[9]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

-- Location: LABCELL_X47_Y1_N10
\S~12\ : arriaii_lcell_comb
-- Equation(s):
-- \S~12_combout\ = ( \CarryNetwork|cMid~0_combout\ & ( \CarryNetwork|Recur:Low_half|BG~combout\ & ( !\B[9]~input_o\ $ (!\A[9]~input_o\ $ (((\A[8]~input_o\) # (\B[8]~input_o\)))) ) ) ) # ( !\CarryNetwork|cMid~0_combout\ & ( 
-- \CarryNetwork|Recur:Low_half|BG~combout\ & ( !\B[9]~input_o\ $ (!\A[9]~input_o\ $ (((\B[8]~input_o\ & \A[8]~input_o\)))) ) ) ) # ( \CarryNetwork|cMid~0_combout\ & ( !\CarryNetwork|Recur:Low_half|BG~combout\ & ( !\B[9]~input_o\ $ (!\A[9]~input_o\ $ 
-- (((\A[8]~input_o\) # (\B[8]~input_o\)))) ) ) ) # ( !\CarryNetwork|cMid~0_combout\ & ( !\CarryNetwork|Recur:Low_half|BG~combout\ & ( !\B[9]~input_o\ $ (!\A[9]~input_o\ $ (((\A[8]~input_o\) # (\B[8]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110110010010011011011001001001100110110110010010110110010010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[8]~input_o\,
	datab => \ALT_INV_B[9]~input_o\,
	datac => \ALT_INV_A[8]~input_o\,
	datad => \ALT_INV_A[9]~input_o\,
	datae => \CarryNetwork|ALT_INV_cMid~0_combout\,
	dataf => \CarryNetwork|Recur:Low_half|ALT_INV_BG~combout\,
	combout => \S~12_combout\);

-- Location: MLABCELL_X46_Y1_N20
\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|BG~0\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|BG~0_combout\ = ( \B[8]~input_o\ & ( (!\A[8]~input_o\ & (\B[9]~input_o\ & \A[9]~input_o\)) # (\A[8]~input_o\ & ((\A[9]~input_o\) # (\B[9]~input_o\))) ) ) # ( !\B[8]~input_o\ & ( (\B[9]~input_o\ & 
-- \A[9]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000011001111110000001100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[8]~input_o\,
	datac => \ALT_INV_B[9]~input_o\,
	datad => \ALT_INV_A[9]~input_o\,
	dataf => \ALT_INV_B[8]~input_o\,
	combout => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|BG~0_combout\);

-- Location: IOIBUF_X39_Y0_N94
\A[10]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

-- Location: IOIBUF_X54_Y0_N94
\B[10]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(10),
	o => \B[10]~input_o\);

-- Location: MLABCELL_X46_Y1_N8
\CarryNetwork|Recur:High_half|Recur:Low_half|cMid~0\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:High_half|Recur:Low_half|cMid~0_combout\ = ( \B[8]~input_o\ & ( (!\A[8]~input_o\ & (!\B[9]~input_o\ $ (!\A[9]~input_o\))) ) ) # ( !\B[8]~input_o\ & ( (\A[8]~input_o\ & (!\B[9]~input_o\ $ (!\A[9]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100110000000000110011000000001100110000000000110011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[8]~input_o\,
	datac => \ALT_INV_B[9]~input_o\,
	datad => \ALT_INV_A[9]~input_o\,
	dataf => \ALT_INV_B[8]~input_o\,
	combout => \CarryNetwork|Recur:High_half|Recur:Low_half|cMid~0_combout\);

-- Location: MLABCELL_X46_Y1_N34
\CarryNetwork|Recur:High_half|Recur:Low_half|cMid~1\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:High_half|Recur:Low_half|cMid~1_combout\ = ( \CarryNetwork|Recur:Low_half|cMid~0_combout\ & ( (\CarryNetwork|Recur:High_half|Recur:Low_half|cMid~0_combout\ & ((\CarryNetwork|Recur:Low_half|BG~0_combout\) # 
-- (\CarryNetwork|Recur:Low_half|BG~1_combout\))) ) ) # ( !\CarryNetwork|Recur:Low_half|cMid~0_combout\ & ( (\CarryNetwork|Recur:High_half|Recur:Low_half|cMid~0_combout\ & (((\CarryNetwork|Recur:Low_half|BG~0_combout\ & 
-- !\CarryNetwork|Recur:Low_half|Recur:Low_half|BG~combout\)) # (\CarryNetwork|Recur:Low_half|BG~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010100010001000101010001000100010101000101010001010100010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:High_half|Recur:Low_half|ALT_INV_cMid~0_combout\,
	datab => \CarryNetwork|Recur:Low_half|ALT_INV_BG~1_combout\,
	datac => \CarryNetwork|Recur:Low_half|ALT_INV_BG~0_combout\,
	datad => \CarryNetwork|Recur:Low_half|Recur:Low_half|ALT_INV_BG~combout\,
	dataf => \CarryNetwork|Recur:Low_half|ALT_INV_cMid~0_combout\,
	combout => \CarryNetwork|Recur:High_half|Recur:Low_half|cMid~1_combout\);

-- Location: MLABCELL_X46_Y1_N22
\S~6\ : arriaii_lcell_comb
-- Equation(s):
-- \S~6_combout\ = ( \CarryNetwork|Recur:High_half|Recur:Low_half|cMid~1_combout\ & ( !\A[10]~input_o\ $ (\B[10]~input_o\) ) ) # ( !\CarryNetwork|Recur:High_half|Recur:Low_half|cMid~1_combout\ & ( 
-- !\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|BG~0_combout\ $ (!\A[10]~input_o\ $ (\B[10]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101010100101010110101010010111110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|ALT_INV_BG~0_combout\,
	datac => \ALT_INV_A[10]~input_o\,
	datad => \ALT_INV_B[10]~input_o\,
	dataf => \CarryNetwork|Recur:High_half|Recur:Low_half|ALT_INV_cMid~1_combout\,
	combout => \S~6_combout\);

-- Location: IOIBUF_X35_Y0_N32
\A[11]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(11),
	o => \A[11]~input_o\);

-- Location: IOIBUF_X39_Y0_N63
\B[11]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(11),
	o => \B[11]~input_o\);

-- Location: MLABCELL_X46_Y1_N14
\S~11\ : arriaii_lcell_comb
-- Equation(s):
-- \S~11_combout\ = ( \B[10]~input_o\ & ( \CarryNetwork|Recur:High_half|Recur:Low_half|cMid~1_combout\ & ( !\A[11]~input_o\ $ (\B[11]~input_o\) ) ) ) # ( !\B[10]~input_o\ & ( \CarryNetwork|Recur:High_half|Recur:Low_half|cMid~1_combout\ & ( !\A[11]~input_o\ $ 
-- (!\A[10]~input_o\ $ (\B[11]~input_o\)) ) ) ) # ( \B[10]~input_o\ & ( !\CarryNetwork|Recur:High_half|Recur:Low_half|cMid~1_combout\ & ( !\A[11]~input_o\ $ (!\B[11]~input_o\ $ (((\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|BG~0_combout\) # 
-- (\A[10]~input_o\)))) ) ) ) # ( !\B[10]~input_o\ & ( !\CarryNetwork|Recur:High_half|Recur:Low_half|cMid~1_combout\ & ( !\A[11]~input_o\ $ (!\B[11]~input_o\ $ (((\A[10]~input_o\ & \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|BG~0_combout\)))) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011010101001011010101001010101100110100110011010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[11]~input_o\,
	datab => \ALT_INV_A[10]~input_o\,
	datac => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|ALT_INV_BG~0_combout\,
	datad => \ALT_INV_B[11]~input_o\,
	datae => \ALT_INV_B[10]~input_o\,
	dataf => \CarryNetwork|Recur:High_half|Recur:Low_half|ALT_INV_cMid~1_combout\,
	combout => \S~11_combout\);

-- Location: IOIBUF_X37_Y0_N63
\A[12]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(12),
	o => \A[12]~input_o\);

-- Location: MLABCELL_X46_Y1_N38
\CarryNetwork|Recur:High_half|Recur:Low_half|BG~0\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:High_half|Recur:Low_half|BG~0_combout\ = ( \A[11]~input_o\ & ( (!\B[11]~input_o\ & (!\A[10]~input_o\ $ (!\B[10]~input_o\))) ) ) # ( !\A[11]~input_o\ & ( (\B[11]~input_o\ & (!\A[10]~input_o\ $ (!\B[10]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100001100000000110000110000110000110000000011000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[10]~input_o\,
	datac => \ALT_INV_B[11]~input_o\,
	datad => \ALT_INV_B[10]~input_o\,
	dataf => \ALT_INV_A[11]~input_o\,
	combout => \CarryNetwork|Recur:High_half|Recur:Low_half|BG~0_combout\);

-- Location: MLABCELL_X46_Y1_N26
\CarryNetwork|Recur:High_half|cMid~0DUPLICATE\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:High_half|cMid~0DUPLICATE_combout\ = ( \CarryNetwork|Recur:Low_half|BG~1_combout\ & ( \CarryNetwork|Recur:Low_half|cMid~0_combout\ & ( (\CarryNetwork|Recur:High_half|Recur:Low_half|cMid~0_combout\ & 
-- \CarryNetwork|Recur:High_half|Recur:Low_half|BG~0_combout\) ) ) ) # ( !\CarryNetwork|Recur:Low_half|BG~1_combout\ & ( \CarryNetwork|Recur:Low_half|cMid~0_combout\ & ( (\CarryNetwork|Recur:High_half|Recur:Low_half|cMid~0_combout\ & 
-- (\CarryNetwork|Recur:Low_half|BG~0_combout\ & \CarryNetwork|Recur:High_half|Recur:Low_half|BG~0_combout\)) ) ) ) # ( \CarryNetwork|Recur:Low_half|BG~1_combout\ & ( !\CarryNetwork|Recur:Low_half|cMid~0_combout\ & ( 
-- (\CarryNetwork|Recur:High_half|Recur:Low_half|cMid~0_combout\ & \CarryNetwork|Recur:High_half|Recur:Low_half|BG~0_combout\) ) ) ) # ( !\CarryNetwork|Recur:Low_half|BG~1_combout\ & ( !\CarryNetwork|Recur:Low_half|cMid~0_combout\ & ( 
-- (\CarryNetwork|Recur:High_half|Recur:Low_half|cMid~0_combout\ & (!\CarryNetwork|Recur:Low_half|Recur:Low_half|BG~combout\ & (\CarryNetwork|Recur:Low_half|BG~0_combout\ & \CarryNetwork|Recur:High_half|Recur:Low_half|BG~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000101010100000000000001010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:High_half|Recur:Low_half|ALT_INV_cMid~0_combout\,
	datab => \CarryNetwork|Recur:Low_half|Recur:Low_half|ALT_INV_BG~combout\,
	datac => \CarryNetwork|Recur:Low_half|ALT_INV_BG~0_combout\,
	datad => \CarryNetwork|Recur:High_half|Recur:Low_half|ALT_INV_BG~0_combout\,
	datae => \CarryNetwork|Recur:Low_half|ALT_INV_BG~1_combout\,
	dataf => \CarryNetwork|Recur:Low_half|ALT_INV_cMid~0_combout\,
	combout => \CarryNetwork|Recur:High_half|cMid~0DUPLICATE_combout\);

-- Location: IOIBUF_X37_Y0_N32
\B[12]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(12),
	o => \B[12]~input_o\);

-- Location: MLABCELL_X46_Y1_N18
\CarryNetwork|Recur:High_half|Recur:Low_half|BG~1\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:High_half|Recur:Low_half|BG~1_combout\ = ( \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|BG~0_combout\ & ( (!\B[11]~input_o\ & (\A[11]~input_o\ & ((\B[10]~input_o\) # (\A[10]~input_o\)))) # (\B[11]~input_o\ & 
-- (((\B[10]~input_o\) # (\A[11]~input_o\)) # (\A[10]~input_o\))) ) ) # ( !\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|BG~0_combout\ & ( (!\B[11]~input_o\ & (\A[10]~input_o\ & (\A[11]~input_o\ & \B[10]~input_o\))) # (\B[11]~input_o\ & 
-- (((\A[10]~input_o\ & \B[10]~input_o\)) # (\A[11]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100010111000001010001011100010111010111110001011101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[11]~input_o\,
	datab => \ALT_INV_A[10]~input_o\,
	datac => \ALT_INV_A[11]~input_o\,
	datad => \ALT_INV_B[10]~input_o\,
	dataf => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|ALT_INV_BG~0_combout\,
	combout => \CarryNetwork|Recur:High_half|Recur:Low_half|BG~1_combout\);

-- Location: MLABCELL_X46_Y1_N10
\S~7\ : arriaii_lcell_comb
-- Equation(s):
-- \S~7_combout\ = ( \CarryNetwork|Recur:High_half|Recur:Low_half|BG~1_combout\ & ( !\A[12]~input_o\ $ (\B[12]~input_o\) ) ) # ( !\CarryNetwork|Recur:High_half|Recur:Low_half|BG~1_combout\ & ( !\A[12]~input_o\ $ 
-- (!\CarryNetwork|Recur:High_half|cMid~0DUPLICATE_combout\ $ (\B[12]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101010100101010110101010010110101010010101011010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[12]~input_o\,
	datac => \CarryNetwork|Recur:High_half|ALT_INV_cMid~0DUPLICATE_combout\,
	datad => \ALT_INV_B[12]~input_o\,
	dataf => \CarryNetwork|Recur:High_half|Recur:Low_half|ALT_INV_BG~1_combout\,
	combout => \S~7_combout\);

-- Location: IOIBUF_X33_Y0_N1
\B[13]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(13),
	o => \B[13]~input_o\);

-- Location: IOIBUF_X35_Y0_N94
\A[13]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(13),
	o => \A[13]~input_o\);

-- Location: MLABCELL_X46_Y1_N24
\CarryNetwork|Recur:High_half|cMid~0\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:High_half|cMid~0_combout\ = ( \CarryNetwork|Recur:Low_half|BG~1_combout\ & ( \CarryNetwork|Recur:Low_half|cMid~0_combout\ & ( (\CarryNetwork|Recur:High_half|Recur:Low_half|cMid~0_combout\ & 
-- \CarryNetwork|Recur:High_half|Recur:Low_half|BG~0_combout\) ) ) ) # ( !\CarryNetwork|Recur:Low_half|BG~1_combout\ & ( \CarryNetwork|Recur:Low_half|cMid~0_combout\ & ( (\CarryNetwork|Recur:High_half|Recur:Low_half|cMid~0_combout\ & 
-- (\CarryNetwork|Recur:High_half|Recur:Low_half|BG~0_combout\ & \CarryNetwork|Recur:Low_half|BG~0_combout\)) ) ) ) # ( \CarryNetwork|Recur:Low_half|BG~1_combout\ & ( !\CarryNetwork|Recur:Low_half|cMid~0_combout\ & ( 
-- (\CarryNetwork|Recur:High_half|Recur:Low_half|cMid~0_combout\ & \CarryNetwork|Recur:High_half|Recur:Low_half|BG~0_combout\) ) ) ) # ( !\CarryNetwork|Recur:Low_half|BG~1_combout\ & ( !\CarryNetwork|Recur:Low_half|cMid~0_combout\ & ( 
-- (\CarryNetwork|Recur:High_half|Recur:Low_half|cMid~0_combout\ & (!\CarryNetwork|Recur:Low_half|Recur:Low_half|BG~combout\ & (\CarryNetwork|Recur:High_half|Recur:Low_half|BG~0_combout\ & \CarryNetwork|Recur:Low_half|BG~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000001010000010100000000000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:High_half|Recur:Low_half|ALT_INV_cMid~0_combout\,
	datab => \CarryNetwork|Recur:Low_half|Recur:Low_half|ALT_INV_BG~combout\,
	datac => \CarryNetwork|Recur:High_half|Recur:Low_half|ALT_INV_BG~0_combout\,
	datad => \CarryNetwork|Recur:Low_half|ALT_INV_BG~0_combout\,
	datae => \CarryNetwork|Recur:Low_half|ALT_INV_BG~1_combout\,
	dataf => \CarryNetwork|Recur:Low_half|ALT_INV_cMid~0_combout\,
	combout => \CarryNetwork|Recur:High_half|cMid~0_combout\);

-- Location: LABCELL_X45_Y1_N26
\S~10\ : arriaii_lcell_comb
-- Equation(s):
-- \S~10_combout\ = ( \A[12]~input_o\ & ( \CarryNetwork|Recur:High_half|cMid~0_combout\ & ( !\B[13]~input_o\ $ (\A[13]~input_o\) ) ) ) # ( !\A[12]~input_o\ & ( \CarryNetwork|Recur:High_half|cMid~0_combout\ & ( !\B[12]~input_o\ $ (!\B[13]~input_o\ $ 
-- (\A[13]~input_o\)) ) ) ) # ( \A[12]~input_o\ & ( !\CarryNetwork|Recur:High_half|cMid~0_combout\ & ( !\B[13]~input_o\ $ (!\A[13]~input_o\ $ (((\CarryNetwork|Recur:High_half|Recur:Low_half|BG~1_combout\) # (\B[12]~input_o\)))) ) ) ) # ( !\A[12]~input_o\ & ( 
-- !\CarryNetwork|Recur:High_half|cMid~0_combout\ & ( !\B[13]~input_o\ $ (!\A[13]~input_o\ $ (((\B[12]~input_o\ & \CarryNetwork|Recur:High_half|Recur:Low_half|BG~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011011001001011011001001001101100110100110011100110000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[12]~input_o\,
	datab => \ALT_INV_B[13]~input_o\,
	datac => \CarryNetwork|Recur:High_half|Recur:Low_half|ALT_INV_BG~1_combout\,
	datad => \ALT_INV_A[13]~input_o\,
	datae => \ALT_INV_A[12]~input_o\,
	dataf => \CarryNetwork|Recur:High_half|ALT_INV_cMid~0_combout\,
	combout => \S~10_combout\);

-- Location: IOIBUF_X35_Y0_N1
\A[14]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(14),
	o => \A[14]~input_o\);

-- Location: IOIBUF_X54_Y0_N1
\B[14]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(14),
	o => \B[14]~input_o\);

-- Location: LABCELL_X45_Y1_N0
\CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|BG~0\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|BG~0_combout\ = ( \B[13]~input_o\ & ( \A[13]~input_o\ ) ) # ( !\B[13]~input_o\ & ( \A[13]~input_o\ & ( (\A[12]~input_o\ & \B[12]~input_o\) ) ) ) # ( \B[13]~input_o\ & ( !\A[13]~input_o\ & ( 
-- (\A[12]~input_o\ & \B[12]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[12]~input_o\,
	datad => \ALT_INV_B[12]~input_o\,
	datae => \ALT_INV_B[13]~input_o\,
	dataf => \ALT_INV_A[13]~input_o\,
	combout => \CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|BG~0_combout\);

-- Location: LABCELL_X45_Y1_N14
\CarryNetwork|Recur:High_half|Recur:High_half|cMid~0\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:High_half|Recur:High_half|cMid~0_combout\ = ( !\B[13]~input_o\ & ( \A[13]~input_o\ & ( !\B[12]~input_o\ $ (!\A[12]~input_o\) ) ) ) # ( \B[13]~input_o\ & ( !\A[13]~input_o\ & ( !\B[12]~input_o\ $ (!\A[12]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011111111000000001111111100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[12]~input_o\,
	datad => \ALT_INV_A[12]~input_o\,
	datae => \ALT_INV_B[13]~input_o\,
	dataf => \ALT_INV_A[13]~input_o\,
	combout => \CarryNetwork|Recur:High_half|Recur:High_half|cMid~0_combout\);

-- Location: MLABCELL_X46_Y1_N6
\S~8\ : arriaii_lcell_comb
-- Equation(s):
-- \S~8_combout\ = ( \CarryNetwork|Recur:High_half|cMid~0DUPLICATE_combout\ & ( \CarryNetwork|Recur:High_half|Recur:High_half|cMid~0_combout\ & ( !\A[14]~input_o\ $ (\B[14]~input_o\) ) ) ) # ( !\CarryNetwork|Recur:High_half|cMid~0DUPLICATE_combout\ & ( 
-- \CarryNetwork|Recur:High_half|Recur:High_half|cMid~0_combout\ & ( !\A[14]~input_o\ $ (!\B[14]~input_o\ $ (((\CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|BG~0_combout\) # (\CarryNetwork|Recur:High_half|Recur:Low_half|BG~1_combout\)))) ) ) ) 
-- # ( \CarryNetwork|Recur:High_half|cMid~0DUPLICATE_combout\ & ( !\CarryNetwork|Recur:High_half|Recur:High_half|cMid~0_combout\ & ( !\A[14]~input_o\ $ (!\B[14]~input_o\ $ (\CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|BG~0_combout\)) ) ) ) # 
-- ( !\CarryNetwork|Recur:High_half|cMid~0DUPLICATE_combout\ & ( !\CarryNetwork|Recur:High_half|Recur:High_half|cMid~0_combout\ & ( !\A[14]~input_o\ $ (!\B[14]~input_o\ $ (\CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|BG~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011010011001011001101001100101101001100110011001100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[14]~input_o\,
	datab => \ALT_INV_B[14]~input_o\,
	datac => \CarryNetwork|Recur:High_half|Recur:Low_half|ALT_INV_BG~1_combout\,
	datad => \CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|ALT_INV_BG~0_combout\,
	datae => \CarryNetwork|Recur:High_half|ALT_INV_cMid~0DUPLICATE_combout\,
	dataf => \CarryNetwork|Recur:High_half|Recur:High_half|ALT_INV_cMid~0_combout\,
	combout => \S~8_combout\);

-- Location: IOIBUF_X33_Y0_N63
\A[15]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(15),
	o => \A[15]~input_o\);

-- Location: IOIBUF_X35_Y0_N63
\B[15]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(15),
	o => \B[15]~input_o\);

-- Location: MLABCELL_X46_Y1_N2
\CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|Recur:cMid~0\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|Recur:cMid~0_combout\ = ( \CarryNetwork|Recur:High_half|Recur:Low_half|BG~1_combout\ & ( \CarryNetwork|Recur:High_half|cMid~0_combout\ & ( (!\A[14]~input_o\ & ((!\B[14]~input_o\) # 
-- ((!\CarryNetwork|Recur:High_half|Recur:High_half|cMid~0_combout\ & !\CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|BG~0_combout\)))) # (\A[14]~input_o\ & (!\B[14]~input_o\ & (!\CarryNetwork|Recur:High_half|Recur:High_half|cMid~0_combout\ & 
-- !\CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|BG~0_combout\))) ) ) ) # ( !\CarryNetwork|Recur:High_half|Recur:Low_half|BG~1_combout\ & ( \CarryNetwork|Recur:High_half|cMid~0_combout\ & ( (!\A[14]~input_o\ & ((!\B[14]~input_o\) # 
-- ((!\CarryNetwork|Recur:High_half|Recur:High_half|cMid~0_combout\ & !\CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|BG~0_combout\)))) # (\A[14]~input_o\ & (!\B[14]~input_o\ & (!\CarryNetwork|Recur:High_half|Recur:High_half|cMid~0_combout\ & 
-- !\CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|BG~0_combout\))) ) ) ) # ( \CarryNetwork|Recur:High_half|Recur:Low_half|BG~1_combout\ & ( !\CarryNetwork|Recur:High_half|cMid~0_combout\ & ( (!\A[14]~input_o\ & ((!\B[14]~input_o\) # 
-- ((!\CarryNetwork|Recur:High_half|Recur:High_half|cMid~0_combout\ & !\CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|BG~0_combout\)))) # (\A[14]~input_o\ & (!\B[14]~input_o\ & (!\CarryNetwork|Recur:High_half|Recur:High_half|cMid~0_combout\ & 
-- !\CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|BG~0_combout\))) ) ) ) # ( !\CarryNetwork|Recur:High_half|Recur:Low_half|BG~1_combout\ & ( !\CarryNetwork|Recur:High_half|cMid~0_combout\ & ( (!\A[14]~input_o\ & ((!\B[14]~input_o\) # 
-- (!\CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|BG~0_combout\))) # (\A[14]~input_o\ & (!\B[14]~input_o\ & !\CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|BG~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111010001000111010001000100011101000100010001110100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[14]~input_o\,
	datab => \ALT_INV_B[14]~input_o\,
	datac => \CarryNetwork|Recur:High_half|Recur:High_half|ALT_INV_cMid~0_combout\,
	datad => \CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|ALT_INV_BG~0_combout\,
	datae => \CarryNetwork|Recur:High_half|Recur:Low_half|ALT_INV_BG~1_combout\,
	dataf => \CarryNetwork|Recur:High_half|ALT_INV_cMid~0_combout\,
	combout => \CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|Recur:cMid~0_combout\);

-- Location: MLABCELL_X46_Y1_N16
\S~9\ : arriaii_lcell_comb
-- Equation(s):
-- \S~9_combout\ = ( \CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|Recur:cMid~0_combout\ & ( !\A[15]~input_o\ $ (!\B[15]~input_o\) ) ) # ( !\CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|Recur:cMid~0_combout\ & ( 
-- !\A[15]~input_o\ $ (\B[15]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000001111111100000000111100001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[15]~input_o\,
	datad => \ALT_INV_B[15]~input_o\,
	dataf => \CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|ALT_INV_Recur:cMid~0_combout\,
	combout => \S~9_combout\);

-- Location: MLABCELL_X46_Y1_N36
\CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|Recur:High_half|c[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|Recur:High_half|c[1]~0_combout\ = ( \CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|Recur:cMid~0_combout\ & ( (\A[15]~input_o\ & \B[15]~input_o\) ) ) # ( 
-- !\CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|Recur:cMid~0_combout\ & ( (\B[15]~input_o\) # (\A[15]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[15]~input_o\,
	datad => \ALT_INV_B[15]~input_o\,
	dataf => \CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|ALT_INV_Recur:cMid~0_combout\,
	combout => \CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|Recur:High_half|c[1]~0_combout\);

-- Location: MLABCELL_X46_Y1_N28
\Ovfl~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Ovfl~0_combout\ = ( \B[15]~input_o\ & ( \CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|Recur:cMid~0_combout\ & ( \A[15]~input_o\ ) ) ) # ( !\B[15]~input_o\ & ( 
-- !\CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|Recur:cMid~0_combout\ & ( !\A[15]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[15]~input_o\,
	datae => \ALT_INV_B[15]~input_o\,
	dataf => \CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|ALT_INV_Recur:cMid~0_combout\,
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

ww_Cout <= \Cout~output_o\;

ww_Ovfl <= \Ovfl~output_o\;
END structure;


