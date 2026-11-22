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

-- DATE "11/21/2026 11:48:09"

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
-- S[0]	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[1]	=>  Location: PIN_W4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[2]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[3]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[4]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[5]	=>  Location: PIN_W5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[6]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[7]	=>  Location: PIN_W1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[8]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[9]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[10]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[11]	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[12]	=>  Location: PIN_W3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[13]	=>  Location: PIN_P5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[14]	=>  Location: PIN_AE1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[15]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cout	=>  Location: PIN_AD1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ovfl	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_AC2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cin	=>  Location: PIN_AB2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_AB3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_AA3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_AC1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_AB1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_U5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_U4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_T6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[8]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[9]	=>  Location: PIN_T1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_U3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[10]	=>  Location: PIN_P4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[11]	=>  Location: PIN_AC3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[11]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[12]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[12]	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[13]	=>  Location: PIN_AA4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[13]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[14]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[14]	=>  Location: PIN_K6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[15]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[15]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \Cin~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \S~0_combout\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \S~1_combout\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \c~0_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:gPair[0]~0_combout\ : std_logic;
SIGNAL \S~2_combout\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \S~3_combout\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Recur:gPair[1]~0DUPLICATE_combout\ : std_logic;
SIGNAL \p[3]~DUPLICATE_combout\ : std_logic;
SIGNAL \c~1_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|gPair~0_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|gPair~1_combout\ : std_logic;
SIGNAL \S~4_combout\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Recur:gPair[1]~0_combout\ : std_logic;
SIGNAL \S~15_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:gPair[2]~0_combout\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:Inner|gPair~0_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Gpre~0_combout\ : std_logic;
SIGNAL \p[4]~DUPLICATE_combout\ : std_logic;
SIGNAL \c~2_combout\ : std_logic;
SIGNAL \S~5_combout\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \p[6]~DUPLICATE_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gpre[6]~0_combout\ : std_logic;
SIGNAL \S~6_combout\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \B[8]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:Inner|gPair~1_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:Inner|gPair~2_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:gPair[1]~0DUPLICATE_combout\ : std_logic;
SIGNAL \c~3_combout\ : std_logic;
SIGNAL \S~7_combout\ : std_logic;
SIGNAL \B[9]~input_o\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gpre[8]~1_combout\ : std_logic;
SIGNAL \S~8_combout\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \B[10]~input_o\ : std_logic;
SIGNAL \c~4_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:gPair[4]~0_combout\ : std_logic;
SIGNAL \S~9_combout\ : std_logic;
SIGNAL \B[11]~input_o\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gpre[10]~4_combout\ : std_logic;
SIGNAL \S~10_combout\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \B[12]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:pPair[2]~0_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:gPair[2]~0_combout\ : std_logic;
SIGNAL \S~11_combout\ : std_logic;
SIGNAL \B[13]~input_o\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gpre[12]~3_combout\ : std_logic;
SIGNAL \c~5_combout\ : std_logic;
SIGNAL \S~12_combout\ : std_logic;
SIGNAL \c~6_combout\ : std_logic;
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Recur:gPair[6]~0_combout\ : std_logic;
SIGNAL \B[14]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:gPair[1]~0_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Gpre~1_combout\ : std_logic;
SIGNAL \S~13_combout\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gpre[14]~2_combout\ : std_logic;
SIGNAL \B[15]~input_o\ : std_logic;
SIGNAL \c~7_combout\ : std_logic;
SIGNAL \S~14_combout\ : std_logic;
SIGNAL \c~9_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:gPair[7]~0_combout\ : std_logic;
SIGNAL \c~10_combout\ : std_logic;
SIGNAL \c~8_combout\ : std_logic;
SIGNAL \c~11_combout\ : std_logic;
SIGNAL \Ovfl~0_combout\ : std_logic;
SIGNAL p : std_logic_vector(15 DOWNTO 0);
SIGNAL \PrefixNetwork|Recur:Inner|ALT_INV_Recur:gPair[1]~0_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gpre[10]~4_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|ALT_INV_Recur:gPair[2]~0_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gpre[12]~3_combout\ : std_logic;
SIGNAL \ALT_INV_c~11_combout\ : std_logic;
SIGNAL \ALT_INV_c~10_combout\ : std_logic;
SIGNAL \ALT_INV_c~9_combout\ : std_logic;
SIGNAL \ALT_INV_c~8_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Recur:gPair[7]~0_combout\ : std_logic;
SIGNAL \ALT_INV_c~7_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gpre[14]~2_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|ALT_INV_Gpre~1_combout\ : std_logic;
SIGNAL \ALT_INV_c~6_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Recur:gPair[6]~0_combout\ : std_logic;
SIGNAL \ALT_INV_c~5_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|ALT_INV_Recur:pPair[2]~0_combout\ : std_logic;
SIGNAL ALT_INV_p : std_logic_vector(12 DOWNTO 3);
SIGNAL \ALT_INV_c~4_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Recur:gPair[4]~0_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gpre[8]~1_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:Inner|ALT_INV_gPair~2_combout\ : std_logic;
SIGNAL \ALT_INV_c~3_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:Inner|ALT_INV_gPair~1_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gpre[6]~0_combout\ : std_logic;
SIGNAL \ALT_INV_c~2_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|ALT_INV_Gpre~0_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:Inner|ALT_INV_gPair~0_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Recur:gPair[2]~0_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|ALT_INV_gPair~1_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|ALT_INV_gPair~0_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Recur:gPair[1]~0_combout\ : std_logic;
SIGNAL \ALT_INV_c~1_combout\ : std_logic;
SIGNAL \ALT_INV_c~0_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Recur:gPair[0]~0_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|ALT_INV_Recur:gPair[1]~0DUPLICATE_combout\ : std_logic;
SIGNAL \ALT_INV_p[6]~DUPLICATE_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Recur:gPair[1]~0DUPLICATE_combout\ : std_logic;
SIGNAL \ALT_INV_p[4]~DUPLICATE_combout\ : std_logic;
SIGNAL \ALT_INV_p[3]~DUPLICATE_combout\ : std_logic;
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
\PrefixNetwork|Recur:Inner|ALT_INV_Recur:gPair[1]~0_combout\ <= NOT \PrefixNetwork|Recur:Inner|Recur:gPair[1]~0_combout\;
\PrefixNetwork|ALT_INV_Gpre[10]~4_combout\ <= NOT \PrefixNetwork|Gpre[10]~4_combout\;
\PrefixNetwork|Recur:Inner|ALT_INV_Recur:gPair[2]~0_combout\ <= NOT \PrefixNetwork|Recur:Inner|Recur:gPair[2]~0_combout\;
\PrefixNetwork|ALT_INV_Gpre[12]~3_combout\ <= NOT \PrefixNetwork|Gpre[12]~3_combout\;
\ALT_INV_c~11_combout\ <= NOT \c~11_combout\;
\ALT_INV_c~10_combout\ <= NOT \c~10_combout\;
\ALT_INV_c~9_combout\ <= NOT \c~9_combout\;
\ALT_INV_c~8_combout\ <= NOT \c~8_combout\;
\PrefixNetwork|ALT_INV_Recur:gPair[7]~0_combout\ <= NOT \PrefixNetwork|Recur:gPair[7]~0_combout\;
\ALT_INV_c~7_combout\ <= NOT \c~7_combout\;
\PrefixNetwork|ALT_INV_Gpre[14]~2_combout\ <= NOT \PrefixNetwork|Gpre[14]~2_combout\;
\PrefixNetwork|Recur:Inner|ALT_INV_Gpre~1_combout\ <= NOT \PrefixNetwork|Recur:Inner|Gpre~1_combout\;
\ALT_INV_c~6_combout\ <= NOT \c~6_combout\;
\PrefixNetwork|ALT_INV_Recur:gPair[6]~0_combout\ <= NOT \PrefixNetwork|Recur:gPair[6]~0_combout\;
\ALT_INV_c~5_combout\ <= NOT \c~5_combout\;
\PrefixNetwork|Recur:Inner|ALT_INV_Recur:pPair[2]~0_combout\ <= NOT \PrefixNetwork|Recur:Inner|Recur:pPair[2]~0_combout\;
ALT_INV_p(12) <= NOT p(12);
\ALT_INV_c~4_combout\ <= NOT \c~4_combout\;
\PrefixNetwork|ALT_INV_Recur:gPair[4]~0_combout\ <= NOT \PrefixNetwork|Recur:gPair[4]~0_combout\;
ALT_INV_p(10) <= NOT p(10);
\PrefixNetwork|ALT_INV_Gpre[8]~1_combout\ <= NOT \PrefixNetwork|Gpre[8]~1_combout\;
\PrefixNetwork|Recur:Inner|Recur:Inner|ALT_INV_gPair~2_combout\ <= NOT \PrefixNetwork|Recur:Inner|Recur:Inner|gPair~2_combout\;
\ALT_INV_c~3_combout\ <= NOT \c~3_combout\;
\PrefixNetwork|Recur:Inner|Recur:Inner|ALT_INV_gPair~1_combout\ <= NOT \PrefixNetwork|Recur:Inner|Recur:Inner|gPair~1_combout\;
\PrefixNetwork|ALT_INV_Gpre[6]~0_combout\ <= NOT \PrefixNetwork|Gpre[6]~0_combout\;
\ALT_INV_c~2_combout\ <= NOT \c~2_combout\;
\PrefixNetwork|Recur:Inner|ALT_INV_Gpre~0_combout\ <= NOT \PrefixNetwork|Recur:Inner|Gpre~0_combout\;
\PrefixNetwork|Recur:Inner|Recur:Inner|ALT_INV_gPair~0_combout\ <= NOT \PrefixNetwork|Recur:Inner|Recur:Inner|gPair~0_combout\;
\PrefixNetwork|ALT_INV_Recur:gPair[2]~0_combout\ <= NOT \PrefixNetwork|Recur:gPair[2]~0_combout\;
ALT_INV_p(6) <= NOT p(6);
ALT_INV_p(5) <= NOT p(5);
\PrefixNetwork|Recur:Inner|ALT_INV_gPair~1_combout\ <= NOT \PrefixNetwork|Recur:Inner|gPair~1_combout\;
\PrefixNetwork|Recur:Inner|ALT_INV_gPair~0_combout\ <= NOT \PrefixNetwork|Recur:Inner|gPair~0_combout\;
\PrefixNetwork|ALT_INV_Recur:gPair[1]~0_combout\ <= NOT \PrefixNetwork|Recur:gPair[1]~0_combout\;
\ALT_INV_c~1_combout\ <= NOT \c~1_combout\;
ALT_INV_p(4) <= NOT p(4);
ALT_INV_p(3) <= NOT p(3);
\ALT_INV_c~0_combout\ <= NOT \c~0_combout\;
\PrefixNetwork|ALT_INV_Recur:gPair[0]~0_combout\ <= NOT \PrefixNetwork|Recur:gPair[0]~0_combout\;
\PrefixNetwork|Recur:Inner|ALT_INV_Recur:gPair[1]~0DUPLICATE_combout\ <= NOT \PrefixNetwork|Recur:Inner|Recur:gPair[1]~0DUPLICATE_combout\;
\ALT_INV_p[6]~DUPLICATE_combout\ <= NOT \p[6]~DUPLICATE_combout\;
\PrefixNetwork|ALT_INV_Recur:gPair[1]~0DUPLICATE_combout\ <= NOT \PrefixNetwork|Recur:gPair[1]~0DUPLICATE_combout\;
\ALT_INV_p[4]~DUPLICATE_combout\ <= NOT \p[4]~DUPLICATE_combout\;
\ALT_INV_p[3]~DUPLICATE_combout\ <= NOT \p[3]~DUPLICATE_combout\;
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

-- Location: IOOBUF_X59_Y9_N33
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

-- Location: IOOBUF_X59_Y12_N67
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

-- Location: IOOBUF_X59_Y25_N98
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

-- Location: IOOBUF_X59_Y25_N2
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

-- Location: IOOBUF_X59_Y22_N2
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

-- Location: IOOBUF_X59_Y12_N2
\S[5]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~15_combout\,
	devoe => ww_devoe,
	o => \S[5]~output_o\);

-- Location: IOOBUF_X59_Y22_N67
\S[6]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~5_combout\,
	devoe => ww_devoe,
	o => \S[6]~output_o\);

-- Location: IOOBUF_X59_Y19_N98
\S[7]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~6_combout\,
	devoe => ww_devoe,
	o => \S[7]~output_o\);

-- Location: IOOBUF_X59_Y22_N36
\S[8]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~7_combout\,
	devoe => ww_devoe,
	o => \S[8]~output_o\);

-- Location: IOOBUF_X59_Y19_N36
\S[9]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~8_combout\,
	devoe => ww_devoe,
	o => \S[9]~output_o\);

-- Location: IOOBUF_X59_Y19_N67
\S[10]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~9_combout\,
	devoe => ww_devoe,
	o => \S[10]~output_o\);

-- Location: IOOBUF_X59_Y18_N67
\S[11]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~10_combout\,
	devoe => ww_devoe,
	o => \S[11]~output_o\);

-- Location: IOOBUF_X59_Y19_N2
\S[12]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~11_combout\,
	devoe => ww_devoe,
	o => \S[12]~output_o\);

-- Location: IOOBUF_X59_Y18_N36
\S[13]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~12_combout\,
	devoe => ww_devoe,
	o => \S[13]~output_o\);

-- Location: IOOBUF_X59_Y15_N67
\S[14]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~13_combout\,
	devoe => ww_devoe,
	o => \S[14]~output_o\);

-- Location: IOOBUF_X59_Y18_N2
\S[15]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~14_combout\,
	devoe => ww_devoe,
	o => \S[15]~output_o\);

-- Location: IOOBUF_X59_Y15_N5
\Cout~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \c~11_combout\,
	devoe => ww_devoe,
	o => \Cout~output_o\);

-- Location: IOOBUF_X59_Y18_N98
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

-- Location: IOIBUF_X59_Y13_N1
\B[0]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X59_Y13_N94
\Cin~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cin,
	o => \Cin~input_o\);

-- Location: IOIBUF_X59_Y10_N94
\A[0]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: LABCELL_X58_Y12_N2
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

-- Location: IOIBUF_X59_Y13_N32
\A[1]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: IOIBUF_X59_Y10_N63
\B[1]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: LABCELL_X58_Y12_N30
\S~1\ : arriaii_lcell_comb
-- Equation(s):
-- \S~1_combout\ = ( \B[1]~input_o\ & ( \A[0]~input_o\ & ( !\A[1]~input_o\ $ (((\B[0]~input_o\) # (\Cin~input_o\))) ) ) ) # ( !\B[1]~input_o\ & ( \A[0]~input_o\ & ( !\A[1]~input_o\ $ (((!\Cin~input_o\ & !\B[0]~input_o\))) ) ) ) # ( \B[1]~input_o\ & ( 
-- !\A[0]~input_o\ & ( !\A[1]~input_o\ $ (((\Cin~input_o\ & \B[0]~input_o\))) ) ) ) # ( !\B[1]~input_o\ & ( !\A[0]~input_o\ & ( !\A[1]~input_o\ $ (((!\Cin~input_o\) # (!\B[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111111100111111000000001100111111110000001100000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Cin~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_A[1]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A[0]~input_o\,
	combout => \S~1_combout\);

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

-- Location: IOIBUF_X59_Y16_N1
\A[2]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: MLABCELL_X57_Y18_N24
\c~0\ : arriaii_lcell_comb
-- Equation(s):
-- \c~0_combout\ = ( \B[0]~input_o\ & ( (!\A[0]~input_o\ & (\Cin~input_o\ & (!\A[1]~input_o\ $ (!\B[1]~input_o\)))) ) ) # ( !\B[0]~input_o\ & ( (\A[0]~input_o\ & (\Cin~input_o\ & (!\A[1]~input_o\ $ (!\B[1]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000100000000010000010000000010000010000000001000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[0]~input_o\,
	datab => \ALT_INV_A[1]~input_o\,
	datac => \ALT_INV_Cin~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \c~0_combout\);

-- Location: MLABCELL_X57_Y18_N26
\PrefixNetwork|Recur:gPair[0]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:gPair[0]~0_combout\ = ( \B[0]~input_o\ & ( (!\A[1]~input_o\ & (\A[0]~input_o\ & \B[1]~input_o\)) # (\A[1]~input_o\ & ((\B[1]~input_o\) # (\A[0]~input_o\))) ) ) # ( !\B[0]~input_o\ & ( (\A[1]~input_o\ & \B[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100000011001111110000001100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[1]~input_o\,
	datac => \ALT_INV_A[0]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \PrefixNetwork|Recur:gPair[0]~0_combout\);

-- Location: LABCELL_X58_Y21_N18
\S~2\ : arriaii_lcell_comb
-- Equation(s):
-- \S~2_combout\ = ( \c~0_combout\ & ( \PrefixNetwork|Recur:gPair[0]~0_combout\ & ( !\B[2]~input_o\ $ (\A[2]~input_o\) ) ) ) # ( !\c~0_combout\ & ( \PrefixNetwork|Recur:gPair[0]~0_combout\ & ( !\B[2]~input_o\ $ (\A[2]~input_o\) ) ) ) # ( \c~0_combout\ & ( 
-- !\PrefixNetwork|Recur:gPair[0]~0_combout\ & ( !\B[2]~input_o\ $ (\A[2]~input_o\) ) ) ) # ( !\c~0_combout\ & ( !\PrefixNetwork|Recur:gPair[0]~0_combout\ & ( !\B[2]~input_o\ $ (!\A[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000111100000000111111110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[2]~input_o\,
	datad => \ALT_INV_A[2]~input_o\,
	datae => \ALT_INV_c~0_combout\,
	dataf => \PrefixNetwork|ALT_INV_Recur:gPair[0]~0_combout\,
	combout => \S~2_combout\);

-- Location: IOIBUF_X59_Y16_N32
\B[3]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: IOIBUF_X59_Y16_N94
\A[3]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: LABCELL_X58_Y16_N34
\p[3]\ : arriaii_lcell_comb
-- Equation(s):
-- p(3) = ( !\B[3]~input_o\ & ( \A[3]~input_o\ ) ) # ( \B[3]~input_o\ & ( !\A[3]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_A[3]~input_o\,
	combout => p(3));

-- Location: LABCELL_X58_Y21_N36
\S~3\ : arriaii_lcell_comb
-- Equation(s):
-- \S~3_combout\ = ( \c~0_combout\ & ( \PrefixNetwork|Recur:gPair[0]~0_combout\ & ( !p(3) $ (((!\B[2]~input_o\ & !\A[2]~input_o\))) ) ) ) # ( !\c~0_combout\ & ( \PrefixNetwork|Recur:gPair[0]~0_combout\ & ( !p(3) $ (((!\B[2]~input_o\ & !\A[2]~input_o\))) ) ) 
-- ) # ( \c~0_combout\ & ( !\PrefixNetwork|Recur:gPair[0]~0_combout\ & ( !p(3) $ (((!\B[2]~input_o\ & !\A[2]~input_o\))) ) ) ) # ( !\c~0_combout\ & ( !\PrefixNetwork|Recur:gPair[0]~0_combout\ & ( !p(3) $ (((!\B[2]~input_o\) # (!\A[2]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111111100001111111100000000111111110000000011111111000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_A[2]~input_o\,
	datad => ALT_INV_p(3),
	datae => \ALT_INV_c~0_combout\,
	dataf => \PrefixNetwork|ALT_INV_Recur:gPair[0]~0_combout\,
	combout => \S~3_combout\);

-- Location: IOIBUF_X59_Y21_N1
\A[4]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: IOIBUF_X59_Y21_N94
\B[4]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: LABCELL_X58_Y21_N32
\p[4]\ : arriaii_lcell_comb
-- Equation(s):
-- p(4) = ( !\A[4]~input_o\ & ( \B[4]~input_o\ ) ) # ( \A[4]~input_o\ & ( !\B[4]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_A[4]~input_o\,
	dataf => \ALT_INV_B[4]~input_o\,
	combout => p(4));

-- Location: LABCELL_X58_Y16_N22
\PrefixNetwork|Recur:gPair[1]~0DUPLICATE\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:gPair[1]~0DUPLICATE_combout\ = ( \A[2]~input_o\ & ( \B[2]~input_o\ & ( (\A[3]~input_o\) # (\B[3]~input_o\) ) ) ) # ( !\A[2]~input_o\ & ( \B[2]~input_o\ & ( (\B[3]~input_o\ & \A[3]~input_o\) ) ) ) # ( \A[2]~input_o\ & ( !\B[2]~input_o\ 
-- & ( (\B[3]~input_o\ & \A[3]~input_o\) ) ) ) # ( !\A[2]~input_o\ & ( !\B[2]~input_o\ & ( (\B[3]~input_o\ & \A[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000011110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[3]~input_o\,
	datad => \ALT_INV_A[3]~input_o\,
	datae => \ALT_INV_A[2]~input_o\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \PrefixNetwork|Recur:gPair[1]~0DUPLICATE_combout\);

-- Location: LABCELL_X58_Y16_N32
\p[3]~DUPLICATE\ : arriaii_lcell_comb
-- Equation(s):
-- \p[3]~DUPLICATE_combout\ = ( !\B[3]~input_o\ & ( \A[3]~input_o\ ) ) # ( \B[3]~input_o\ & ( !\A[3]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_A[3]~input_o\,
	combout => \p[3]~DUPLICATE_combout\);

-- Location: MLABCELL_X57_Y18_N36
\c~1\ : arriaii_lcell_comb
-- Equation(s):
-- \c~1_combout\ = ( \c~0_combout\ & ( (\p[3]~DUPLICATE_combout\ & (!\B[2]~input_o\ $ (!\A[2]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101000010100000010100001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_p[3]~DUPLICATE_combout\,
	datad => \ALT_INV_A[2]~input_o\,
	dataf => \ALT_INV_c~0_combout\,
	combout => \c~1_combout\);

-- Location: LABCELL_X58_Y18_N10
\PrefixNetwork|Recur:Inner|gPair~0\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|gPair~0_combout\ = ( \B[2]~input_o\ & ( (!\A[2]~input_o\ & (!\B[3]~input_o\ $ (!\A[3]~input_o\))) ) ) # ( !\B[2]~input_o\ & ( (\A[2]~input_o\ & (!\B[3]~input_o\ $ (!\A[3]~input_o\))) ) )

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
	combout => \PrefixNetwork|Recur:Inner|gPair~0_combout\);

-- Location: MLABCELL_X57_Y18_N16
\PrefixNetwork|Recur:Inner|gPair~1\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|gPair~1_combout\ = ( \PrefixNetwork|Recur:Inner|gPair~0_combout\ & ( \PrefixNetwork|Recur:gPair[0]~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PrefixNetwork|ALT_INV_Recur:gPair[0]~0_combout\,
	dataf => \PrefixNetwork|Recur:Inner|ALT_INV_gPair~0_combout\,
	combout => \PrefixNetwork|Recur:Inner|gPair~1_combout\);

-- Location: LABCELL_X58_Y22_N2
\S~4\ : arriaii_lcell_comb
-- Equation(s):
-- \S~4_combout\ = ( \c~1_combout\ & ( \PrefixNetwork|Recur:Inner|gPair~1_combout\ & ( !p(4) ) ) ) # ( !\c~1_combout\ & ( \PrefixNetwork|Recur:Inner|gPair~1_combout\ & ( !p(4) ) ) ) # ( \c~1_combout\ & ( !\PrefixNetwork|Recur:Inner|gPair~1_combout\ & ( !p(4) 
-- ) ) ) # ( !\c~1_combout\ & ( !\PrefixNetwork|Recur:Inner|gPair~1_combout\ & ( !p(4) $ (!\PrefixNetwork|Recur:gPair[1]~0DUPLICATE_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000111100001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_p(4),
	datad => \PrefixNetwork|ALT_INV_Recur:gPair[1]~0DUPLICATE_combout\,
	datae => \ALT_INV_c~1_combout\,
	dataf => \PrefixNetwork|Recur:Inner|ALT_INV_gPair~1_combout\,
	combout => \S~4_combout\);

-- Location: IOIBUF_X59_Y21_N32
\B[5]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: IOIBUF_X59_Y21_N63
\A[5]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: LABCELL_X58_Y21_N6
\p[5]\ : arriaii_lcell_comb
-- Equation(s):
-- p(5) = ( !\B[5]~input_o\ & ( \A[5]~input_o\ ) ) # ( \B[5]~input_o\ & ( !\A[5]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_B[5]~input_o\,
	dataf => \ALT_INV_A[5]~input_o\,
	combout => p(5));

-- Location: LABCELL_X58_Y16_N20
\PrefixNetwork|Recur:gPair[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:gPair[1]~0_combout\ = ( \A[2]~input_o\ & ( \B[2]~input_o\ & ( (\B[3]~input_o\) # (\A[3]~input_o\) ) ) ) # ( !\A[2]~input_o\ & ( \B[2]~input_o\ & ( (\A[3]~input_o\ & \B[3]~input_o\) ) ) ) # ( \A[2]~input_o\ & ( !\B[2]~input_o\ & ( 
-- (\A[3]~input_o\ & \B[3]~input_o\) ) ) ) # ( !\A[2]~input_o\ & ( !\B[2]~input_o\ & ( (\A[3]~input_o\ & \B[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000011110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[3]~input_o\,
	datad => \ALT_INV_B[3]~input_o\,
	datae => \ALT_INV_A[2]~input_o\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \PrefixNetwork|Recur:gPair[1]~0_combout\);

-- Location: LABCELL_X58_Y12_N10
\S~15\ : arriaii_lcell_comb
-- Equation(s):
-- \S~15_combout\ = ( \c~1_combout\ & ( \PrefixNetwork|Recur:Inner|gPair~1_combout\ & ( !p(5) $ (((!\B[4]~input_o\ & !\A[4]~input_o\))) ) ) ) # ( !\c~1_combout\ & ( \PrefixNetwork|Recur:Inner|gPair~1_combout\ & ( !p(5) $ (((!\B[4]~input_o\ & 
-- !\A[4]~input_o\))) ) ) ) # ( \c~1_combout\ & ( !\PrefixNetwork|Recur:Inner|gPair~1_combout\ & ( !p(5) $ (((!\B[4]~input_o\ & !\A[4]~input_o\))) ) ) ) # ( !\c~1_combout\ & ( !\PrefixNetwork|Recur:Inner|gPair~1_combout\ & ( !p(5) $ 
-- (((!\PrefixNetwork|Recur:gPair[1]~0_combout\ & ((!\B[4]~input_o\) # (!\A[4]~input_o\))) # (\PrefixNetwork|Recur:gPair[1]~0_combout\ & (!\B[4]~input_o\ & !\A[4]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011001101010010110101010101001011010101010100101101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_p(5),
	datab => \PrefixNetwork|ALT_INV_Recur:gPair[1]~0_combout\,
	datac => \ALT_INV_B[4]~input_o\,
	datad => \ALT_INV_A[4]~input_o\,
	datae => \ALT_INV_c~1_combout\,
	dataf => \PrefixNetwork|Recur:Inner|ALT_INV_gPair~1_combout\,
	combout => \S~15_combout\);

-- Location: LABCELL_X58_Y21_N2
\PrefixNetwork|Recur:gPair[2]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:gPair[2]~0_combout\ = ( \A[4]~input_o\ & ( \B[4]~input_o\ & ( (\A[5]~input_o\) # (\B[5]~input_o\) ) ) ) # ( !\A[4]~input_o\ & ( \B[4]~input_o\ & ( (\B[5]~input_o\ & \A[5]~input_o\) ) ) ) # ( \A[4]~input_o\ & ( !\B[4]~input_o\ & ( 
-- (\B[5]~input_o\ & \A[5]~input_o\) ) ) ) # ( !\A[4]~input_o\ & ( !\B[4]~input_o\ & ( (\B[5]~input_o\ & \A[5]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000011110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[5]~input_o\,
	datad => \ALT_INV_A[5]~input_o\,
	datae => \ALT_INV_A[4]~input_o\,
	dataf => \ALT_INV_B[4]~input_o\,
	combout => \PrefixNetwork|Recur:gPair[2]~0_combout\);

-- Location: IOIBUF_X59_Y15_N32
\A[6]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: IOIBUF_X59_Y15_N94
\B[6]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: LABCELL_X58_Y15_N8
\p[6]\ : arriaii_lcell_comb
-- Equation(s):
-- p(6) = ( !\A[6]~input_o\ & ( \B[6]~input_o\ ) ) # ( \A[6]~input_o\ & ( !\B[6]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_A[6]~input_o\,
	dataf => \ALT_INV_B[6]~input_o\,
	combout => p(6));

-- Location: LABCELL_X58_Y21_N14
\PrefixNetwork|Recur:Inner|Recur:Inner|gPair~0\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Recur:Inner|gPair~0_combout\ = ( \A[4]~input_o\ & ( \A[5]~input_o\ & ( (!\B[5]~input_o\ & !\B[4]~input_o\) ) ) ) # ( !\A[4]~input_o\ & ( \A[5]~input_o\ & ( (!\B[5]~input_o\ & \B[4]~input_o\) ) ) ) # ( \A[4]~input_o\ & ( 
-- !\A[5]~input_o\ & ( (\B[5]~input_o\ & !\B[4]~input_o\) ) ) ) # ( !\A[4]~input_o\ & ( !\A[5]~input_o\ & ( (\B[5]~input_o\ & \B[4]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000011110000000000000000111100001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[5]~input_o\,
	datad => \ALT_INV_B[4]~input_o\,
	datae => \ALT_INV_A[4]~input_o\,
	dataf => \ALT_INV_A[5]~input_o\,
	combout => \PrefixNetwork|Recur:Inner|Recur:Inner|gPair~0_combout\);

-- Location: LABCELL_X58_Y18_N4
\PrefixNetwork|Recur:Inner|Gpre~0\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Gpre~0_combout\ = ( \PrefixNetwork|Recur:gPair[0]~0_combout\ & ( (\PrefixNetwork|Recur:Inner|Recur:Inner|gPair~0_combout\ & ((\PrefixNetwork|Recur:Inner|gPair~0_combout\) # (\PrefixNetwork|Recur:gPair[1]~0DUPLICATE_combout\))) ) 
-- ) # ( !\PrefixNetwork|Recur:gPair[0]~0_combout\ & ( (\PrefixNetwork|Recur:gPair[1]~0DUPLICATE_combout\ & \PrefixNetwork|Recur:Inner|Recur:Inner|gPair~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101000011110000010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|ALT_INV_Recur:gPair[1]~0DUPLICATE_combout\,
	datac => \PrefixNetwork|Recur:Inner|Recur:Inner|ALT_INV_gPair~0_combout\,
	datad => \PrefixNetwork|Recur:Inner|ALT_INV_gPair~0_combout\,
	dataf => \PrefixNetwork|ALT_INV_Recur:gPair[0]~0_combout\,
	combout => \PrefixNetwork|Recur:Inner|Gpre~0_combout\);

-- Location: LABCELL_X58_Y21_N34
\p[4]~DUPLICATE\ : arriaii_lcell_comb
-- Equation(s):
-- \p[4]~DUPLICATE_combout\ = ( !\A[4]~input_o\ & ( \B[4]~input_o\ ) ) # ( \A[4]~input_o\ & ( !\B[4]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_A[4]~input_o\,
	dataf => \ALT_INV_B[4]~input_o\,
	combout => \p[4]~DUPLICATE_combout\);

-- Location: LABCELL_X58_Y18_N0
\c~2\ : arriaii_lcell_comb
-- Equation(s):
-- \c~2_combout\ = ( p(5) & ( \p[4]~DUPLICATE_combout\ & ( (\c~0_combout\ & (p(3) & (!\B[2]~input_o\ $ (!\A[2]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \ALT_INV_A[2]~input_o\,
	datac => \ALT_INV_c~0_combout\,
	datad => ALT_INV_p(3),
	datae => ALT_INV_p(5),
	dataf => \ALT_INV_p[4]~DUPLICATE_combout\,
	combout => \c~2_combout\);

-- Location: LABCELL_X58_Y18_N30
\S~5\ : arriaii_lcell_comb
-- Equation(s):
-- \S~5_combout\ = ( \c~2_combout\ & ( !p(6) ) ) # ( !\c~2_combout\ & ( !p(6) $ (((!\PrefixNetwork|Recur:gPair[2]~0_combout\ & !\PrefixNetwork|Recur:Inner|Gpre~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101011110000010110101111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|ALT_INV_Recur:gPair[2]~0_combout\,
	datac => ALT_INV_p(6),
	datad => \PrefixNetwork|Recur:Inner|ALT_INV_Gpre~0_combout\,
	dataf => \ALT_INV_c~2_combout\,
	combout => \S~5_combout\);

-- Location: IOIBUF_X59_Y26_N94
\A[7]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: IOIBUF_X59_Y13_N63
\B[7]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: LABCELL_X58_Y15_N10
\p[6]~DUPLICATE\ : arriaii_lcell_comb
-- Equation(s):
-- \p[6]~DUPLICATE_combout\ = ( !\A[6]~input_o\ & ( \B[6]~input_o\ ) ) # ( \A[6]~input_o\ & ( !\B[6]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_A[6]~input_o\,
	dataf => \ALT_INV_B[6]~input_o\,
	combout => \p[6]~DUPLICATE_combout\);

-- Location: LABCELL_X58_Y18_N28
\PrefixNetwork|Gpre[6]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gpre[6]~0_combout\ = ( \PrefixNetwork|Recur:Inner|Gpre~0_combout\ & ( (!\B[6]~input_o\ & !\A[6]~input_o\) ) ) # ( !\PrefixNetwork|Recur:Inner|Gpre~0_combout\ & ( (!\PrefixNetwork|Recur:gPair[2]~0_combout\ & ((!\B[6]~input_o\) # 
-- (!\A[6]~input_o\))) # (\PrefixNetwork|Recur:gPair[2]~0_combout\ & (!\B[6]~input_o\ & !\A[6]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101010100000111110101010000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|ALT_INV_Recur:gPair[2]~0_combout\,
	datac => \ALT_INV_B[6]~input_o\,
	datad => \ALT_INV_A[6]~input_o\,
	dataf => \PrefixNetwork|Recur:Inner|ALT_INV_Gpre~0_combout\,
	combout => \PrefixNetwork|Gpre[6]~0_combout\);

-- Location: LABCELL_X58_Y18_N24
\S~6\ : arriaii_lcell_comb
-- Equation(s):
-- \S~6_combout\ = ( \PrefixNetwork|Gpre[6]~0_combout\ & ( !\A[7]~input_o\ $ (!\B[7]~input_o\ $ (((\p[6]~DUPLICATE_combout\ & \c~2_combout\)))) ) ) # ( !\PrefixNetwork|Gpre[6]~0_combout\ & ( !\A[7]~input_o\ $ (\B[7]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100110011001100110011001100101100110011010010110011001101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[7]~input_o\,
	datab => \ALT_INV_B[7]~input_o\,
	datac => \ALT_INV_p[6]~DUPLICATE_combout\,
	datad => \ALT_INV_c~2_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gpre[6]~0_combout\,
	combout => \S~6_combout\);

-- Location: IOIBUF_X59_Y23_N32
\A[8]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: IOIBUF_X59_Y23_N63
\B[8]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

-- Location: LABCELL_X58_Y18_N26
\PrefixNetwork|Recur:Inner|Recur:Inner|gPair~1\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Recur:Inner|gPair~1_combout\ = ( \B[6]~input_o\ & ( (!\A[6]~input_o\ & (!\B[7]~input_o\ $ (!\A[7]~input_o\))) ) ) # ( !\B[6]~input_o\ & ( (\A[6]~input_o\ & (!\B[7]~input_o\ $ (!\A[7]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100001100000000110000110000110000110000000011000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[7]~input_o\,
	datac => \ALT_INV_A[6]~input_o\,
	datad => \ALT_INV_A[7]~input_o\,
	dataf => \ALT_INV_B[6]~input_o\,
	combout => \PrefixNetwork|Recur:Inner|Recur:Inner|gPair~1_combout\);

-- Location: LABCELL_X58_Y18_N6
\PrefixNetwork|Recur:Inner|Recur:Inner|gPair~2\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Recur:Inner|gPair~2_combout\ = ( \PrefixNetwork|Recur:gPair[0]~0_combout\ & ( (\PrefixNetwork|Recur:Inner|Recur:Inner|gPair~0_combout\ & (\PrefixNetwork|Recur:Inner|Recur:Inner|gPair~1_combout\ & 
-- ((\PrefixNetwork|Recur:Inner|gPair~0_combout\) # (\PrefixNetwork|Recur:gPair[1]~0DUPLICATE_combout\)))) ) ) # ( !\PrefixNetwork|Recur:gPair[0]~0_combout\ & ( (\PrefixNetwork|Recur:gPair[1]~0DUPLICATE_combout\ & 
-- (\PrefixNetwork|Recur:Inner|Recur:Inner|gPair~0_combout\ & \PrefixNetwork|Recur:Inner|Recur:Inner|gPair~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100000000000001110000000000000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|ALT_INV_Recur:gPair[1]~0DUPLICATE_combout\,
	datab => \PrefixNetwork|Recur:Inner|ALT_INV_gPair~0_combout\,
	datac => \PrefixNetwork|Recur:Inner|Recur:Inner|ALT_INV_gPair~0_combout\,
	datad => \PrefixNetwork|Recur:Inner|Recur:Inner|ALT_INV_gPair~1_combout\,
	dataf => \PrefixNetwork|ALT_INV_Recur:gPair[0]~0_combout\,
	combout => \PrefixNetwork|Recur:Inner|Recur:Inner|gPair~2_combout\);

-- Location: MLABCELL_X57_Y18_N20
\PrefixNetwork|Recur:Inner|Recur:gPair[1]~0DUPLICATE\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Recur:gPair[1]~0DUPLICATE_combout\ = ( \PrefixNetwork|Recur:gPair[2]~0_combout\ & ( \B[7]~input_o\ & ( ((\A[6]~input_o\) # (\A[7]~input_o\)) # (\B[6]~input_o\) ) ) ) # ( !\PrefixNetwork|Recur:gPair[2]~0_combout\ & ( 
-- \B[7]~input_o\ & ( ((\B[6]~input_o\ & \A[6]~input_o\)) # (\A[7]~input_o\) ) ) ) # ( \PrefixNetwork|Recur:gPair[2]~0_combout\ & ( !\B[7]~input_o\ & ( (\A[7]~input_o\ & ((\A[6]~input_o\) # (\B[6]~input_o\))) ) ) ) # ( 
-- !\PrefixNetwork|Recur:gPair[2]~0_combout\ & ( !\B[7]~input_o\ & ( (\B[6]~input_o\ & (\A[7]~input_o\ & \A[6]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000001010000111100001111010111110101111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[6]~input_o\,
	datac => \ALT_INV_A[7]~input_o\,
	datad => \ALT_INV_A[6]~input_o\,
	datae => \PrefixNetwork|ALT_INV_Recur:gPair[2]~0_combout\,
	dataf => \ALT_INV_B[7]~input_o\,
	combout => \PrefixNetwork|Recur:Inner|Recur:gPair[1]~0DUPLICATE_combout\);

-- Location: LABCELL_X58_Y18_N2
\c~3\ : arriaii_lcell_comb
-- Equation(s):
-- \c~3_combout\ = ( \PrefixNetwork|Recur:Inner|Recur:Inner|gPair~1_combout\ & ( \PrefixNetwork|Recur:Inner|Recur:Inner|gPair~0_combout\ & ( (p(3) & (\c~0_combout\ & (!\B[2]~input_o\ $ (!\A[2]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \ALT_INV_A[2]~input_o\,
	datac => ALT_INV_p(3),
	datad => \ALT_INV_c~0_combout\,
	datae => \PrefixNetwork|Recur:Inner|Recur:Inner|ALT_INV_gPair~1_combout\,
	dataf => \PrefixNetwork|Recur:Inner|Recur:Inner|ALT_INV_gPair~0_combout\,
	combout => \c~3_combout\);

-- Location: LABCELL_X58_Y22_N6
\S~7\ : arriaii_lcell_comb
-- Equation(s):
-- \S~7_combout\ = ( \PrefixNetwork|Recur:Inner|Recur:gPair[1]~0DUPLICATE_combout\ & ( \c~3_combout\ & ( !\A[8]~input_o\ $ (\B[8]~input_o\) ) ) ) # ( !\PrefixNetwork|Recur:Inner|Recur:gPair[1]~0DUPLICATE_combout\ & ( \c~3_combout\ & ( !\A[8]~input_o\ $ 
-- (\B[8]~input_o\) ) ) ) # ( \PrefixNetwork|Recur:Inner|Recur:gPair[1]~0DUPLICATE_combout\ & ( !\c~3_combout\ & ( !\A[8]~input_o\ $ (\B[8]~input_o\) ) ) ) # ( !\PrefixNetwork|Recur:Inner|Recur:gPair[1]~0DUPLICATE_combout\ & ( !\c~3_combout\ & ( 
-- !\A[8]~input_o\ $ (!\B[8]~input_o\ $ (\PrefixNetwork|Recur:Inner|Recur:Inner|gPair~2_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011000011110000111100001111000011110000111100001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[8]~input_o\,
	datac => \ALT_INV_B[8]~input_o\,
	datad => \PrefixNetwork|Recur:Inner|Recur:Inner|ALT_INV_gPair~2_combout\,
	datae => \PrefixNetwork|Recur:Inner|ALT_INV_Recur:gPair[1]~0DUPLICATE_combout\,
	dataf => \ALT_INV_c~3_combout\,
	combout => \S~7_combout\);

-- Location: IOIBUF_X59_Y23_N1
\B[9]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(9),
	o => \B[9]~input_o\);

-- Location: IOIBUF_X59_Y23_N94
\A[9]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

-- Location: LABCELL_X58_Y19_N32
\PrefixNetwork|Gpre[8]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gpre[8]~1_combout\ = ( \PrefixNetwork|Recur:Inner|Recur:gPair[1]~0DUPLICATE_combout\ & ( \PrefixNetwork|Recur:Inner|Recur:Inner|gPair~2_combout\ & ( (!\A[8]~input_o\ & !\B[8]~input_o\) ) ) ) # ( 
-- !\PrefixNetwork|Recur:Inner|Recur:gPair[1]~0DUPLICATE_combout\ & ( \PrefixNetwork|Recur:Inner|Recur:Inner|gPair~2_combout\ & ( (!\A[8]~input_o\ & !\B[8]~input_o\) ) ) ) # ( \PrefixNetwork|Recur:Inner|Recur:gPair[1]~0DUPLICATE_combout\ & ( 
-- !\PrefixNetwork|Recur:Inner|Recur:Inner|gPair~2_combout\ & ( (!\A[8]~input_o\ & !\B[8]~input_o\) ) ) ) # ( !\PrefixNetwork|Recur:Inner|Recur:gPair[1]~0DUPLICATE_combout\ & ( !\PrefixNetwork|Recur:Inner|Recur:Inner|gPair~2_combout\ & ( (!\A[8]~input_o\) # 
-- (!\B[8]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110000111100000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[8]~input_o\,
	datad => \ALT_INV_B[8]~input_o\,
	datae => \PrefixNetwork|Recur:Inner|ALT_INV_Recur:gPair[1]~0DUPLICATE_combout\,
	dataf => \PrefixNetwork|Recur:Inner|Recur:Inner|ALT_INV_gPair~2_combout\,
	combout => \PrefixNetwork|Gpre[8]~1_combout\);

-- Location: LABCELL_X58_Y19_N6
\S~8\ : arriaii_lcell_comb
-- Equation(s):
-- \S~8_combout\ = ( \c~3_combout\ & ( \PrefixNetwork|Gpre[8]~1_combout\ & ( !\A[8]~input_o\ $ (!\B[8]~input_o\ $ (!\B[9]~input_o\ $ (!\A[9]~input_o\))) ) ) ) # ( !\c~3_combout\ & ( \PrefixNetwork|Gpre[8]~1_combout\ & ( !\B[9]~input_o\ $ (!\A[9]~input_o\) ) 
-- ) ) # ( \c~3_combout\ & ( !\PrefixNetwork|Gpre[8]~1_combout\ & ( !\B[9]~input_o\ $ (\A[9]~input_o\) ) ) ) # ( !\c~3_combout\ & ( !\PrefixNetwork|Gpre[8]~1_combout\ & ( !\B[9]~input_o\ $ (\A[9]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000001111111100000000111100001111111100000110100110010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[8]~input_o\,
	datab => \ALT_INV_B[8]~input_o\,
	datac => \ALT_INV_B[9]~input_o\,
	datad => \ALT_INV_A[9]~input_o\,
	datae => \ALT_INV_c~3_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gpre[8]~1_combout\,
	combout => \S~8_combout\);

-- Location: IOIBUF_X59_Y22_N94
\A[10]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

-- Location: IOIBUF_X59_Y26_N1
\B[10]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(10),
	o => \B[10]~input_o\);

-- Location: MLABCELL_X57_Y18_N4
\p[10]\ : arriaii_lcell_comb
-- Equation(s):
-- p(10) = ( \B[10]~input_o\ & ( !\A[10]~input_o\ ) ) # ( !\B[10]~input_o\ & ( \A[10]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_A[10]~input_o\,
	dataf => \ALT_INV_B[10]~input_o\,
	combout => p(10));

-- Location: MLABCELL_X57_Y18_N14
\c~4\ : arriaii_lcell_comb
-- Equation(s):
-- \c~4_combout\ = ( \A[8]~input_o\ & ( (!\B[8]~input_o\ & (!\A[9]~input_o\ $ (!\B[9]~input_o\))) ) ) # ( !\A[8]~input_o\ & ( (\B[8]~input_o\ & (!\A[9]~input_o\ $ (!\B[9]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000111100000000000011110000111100000000000011110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[9]~input_o\,
	datac => \ALT_INV_B[9]~input_o\,
	datad => \ALT_INV_B[8]~input_o\,
	dataf => \ALT_INV_A[8]~input_o\,
	combout => \c~4_combout\);

-- Location: MLABCELL_X57_Y18_N2
\PrefixNetwork|Recur:gPair[4]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:gPair[4]~0_combout\ = ( \A[8]~input_o\ & ( (!\A[9]~input_o\ & (\B[9]~input_o\ & \B[8]~input_o\)) # (\A[9]~input_o\ & ((\B[8]~input_o\) # (\B[9]~input_o\))) ) ) # ( !\A[8]~input_o\ & ( (\A[9]~input_o\ & \B[9]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000011001111110000001100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[9]~input_o\,
	datac => \ALT_INV_B[9]~input_o\,
	datad => \ALT_INV_B[8]~input_o\,
	dataf => \ALT_INV_A[8]~input_o\,
	combout => \PrefixNetwork|Recur:gPair[4]~0_combout\);

-- Location: LABCELL_X58_Y19_N10
\S~9\ : arriaii_lcell_comb
-- Equation(s):
-- \S~9_combout\ = ( \PrefixNetwork|Recur:Inner|Recur:Inner|gPair~2_combout\ & ( \c~3_combout\ & ( !p(10) $ (((!\c~4_combout\ & !\PrefixNetwork|Recur:gPair[4]~0_combout\))) ) ) ) # ( !\PrefixNetwork|Recur:Inner|Recur:Inner|gPair~2_combout\ & ( \c~3_combout\ 
-- & ( !p(10) $ (((!\c~4_combout\ & !\PrefixNetwork|Recur:gPair[4]~0_combout\))) ) ) ) # ( \PrefixNetwork|Recur:Inner|Recur:Inner|gPair~2_combout\ & ( !\c~3_combout\ & ( !p(10) $ (((!\c~4_combout\ & !\PrefixNetwork|Recur:gPair[4]~0_combout\))) ) ) ) # ( 
-- !\PrefixNetwork|Recur:Inner|Recur:Inner|gPair~2_combout\ & ( !\c~3_combout\ & ( !p(10) $ (((!\PrefixNetwork|Recur:gPair[4]~0_combout\ & ((!\c~4_combout\) # (!\PrefixNetwork|Recur:Inner|Recur:gPair[1]~0DUPLICATE_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001101010011010100110101001101010011010100110101001101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_p(10),
	datab => \ALT_INV_c~4_combout\,
	datac => \PrefixNetwork|ALT_INV_Recur:gPair[4]~0_combout\,
	datad => \PrefixNetwork|Recur:Inner|ALT_INV_Recur:gPair[1]~0DUPLICATE_combout\,
	datae => \PrefixNetwork|Recur:Inner|Recur:Inner|ALT_INV_gPair~2_combout\,
	dataf => \ALT_INV_c~3_combout\,
	combout => \S~9_combout\);

-- Location: IOIBUF_X59_Y12_N32
\B[11]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(11),
	o => \B[11]~input_o\);

-- Location: IOIBUF_X59_Y10_N32
\A[11]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(11),
	o => \A[11]~input_o\);

-- Location: LABCELL_X55_Y18_N14
\PrefixNetwork|Gpre[10]~4\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gpre[10]~4_combout\ = ( \PrefixNetwork|Recur:Inner|Recur:gPair[1]~0DUPLICATE_combout\ & ( \PrefixNetwork|Recur:Inner|Recur:Inner|gPair~2_combout\ & ( (!\B[10]~input_o\ & ((!\A[10]~input_o\) # ((!\PrefixNetwork|Recur:gPair[4]~0_combout\ & 
-- !\c~4_combout\)))) # (\B[10]~input_o\ & (!\A[10]~input_o\ & (!\PrefixNetwork|Recur:gPair[4]~0_combout\ & !\c~4_combout\))) ) ) ) # ( !\PrefixNetwork|Recur:Inner|Recur:gPair[1]~0DUPLICATE_combout\ & ( \PrefixNetwork|Recur:Inner|Recur:Inner|gPair~2_combout\ 
-- & ( (!\B[10]~input_o\ & ((!\A[10]~input_o\) # ((!\PrefixNetwork|Recur:gPair[4]~0_combout\ & !\c~4_combout\)))) # (\B[10]~input_o\ & (!\A[10]~input_o\ & (!\PrefixNetwork|Recur:gPair[4]~0_combout\ & !\c~4_combout\))) ) ) ) # ( 
-- \PrefixNetwork|Recur:Inner|Recur:gPair[1]~0DUPLICATE_combout\ & ( !\PrefixNetwork|Recur:Inner|Recur:Inner|gPair~2_combout\ & ( (!\B[10]~input_o\ & ((!\A[10]~input_o\) # ((!\PrefixNetwork|Recur:gPair[4]~0_combout\ & !\c~4_combout\)))) # (\B[10]~input_o\ & 
-- (!\A[10]~input_o\ & (!\PrefixNetwork|Recur:gPair[4]~0_combout\ & !\c~4_combout\))) ) ) ) # ( !\PrefixNetwork|Recur:Inner|Recur:gPair[1]~0DUPLICATE_combout\ & ( !\PrefixNetwork|Recur:Inner|Recur:Inner|gPair~2_combout\ & ( (!\B[10]~input_o\ & 
-- ((!\A[10]~input_o\) # (!\PrefixNetwork|Recur:gPair[4]~0_combout\))) # (\B[10]~input_o\ & (!\A[10]~input_o\ & !\PrefixNetwork|Recur:gPair[4]~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110100011101000111010001000100011101000100010001110100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[10]~input_o\,
	datab => \ALT_INV_A[10]~input_o\,
	datac => \PrefixNetwork|ALT_INV_Recur:gPair[4]~0_combout\,
	datad => \ALT_INV_c~4_combout\,
	datae => \PrefixNetwork|Recur:Inner|ALT_INV_Recur:gPair[1]~0DUPLICATE_combout\,
	dataf => \PrefixNetwork|Recur:Inner|Recur:Inner|ALT_INV_gPair~2_combout\,
	combout => \PrefixNetwork|Gpre[10]~4_combout\);

-- Location: LABCELL_X55_Y18_N18
\S~10\ : arriaii_lcell_comb
-- Equation(s):
-- \S~10_combout\ = ( \c~3_combout\ & ( \PrefixNetwork|Gpre[10]~4_combout\ & ( !\B[11]~input_o\ $ (!\A[11]~input_o\ $ (((p(10) & \c~4_combout\)))) ) ) ) # ( !\c~3_combout\ & ( \PrefixNetwork|Gpre[10]~4_combout\ & ( !\B[11]~input_o\ $ (!\A[11]~input_o\) ) ) ) 
-- # ( \c~3_combout\ & ( !\PrefixNetwork|Gpre[10]~4_combout\ & ( !\B[11]~input_o\ $ (\A[11]~input_o\) ) ) ) # ( !\c~3_combout\ & ( !\PrefixNetwork|Gpre[10]~4_combout\ & ( !\B[11]~input_o\ $ (\A[11]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001111000011110000111100001100111100001111000011110001101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_p(10),
	datab => \ALT_INV_B[11]~input_o\,
	datac => \ALT_INV_A[11]~input_o\,
	datad => \ALT_INV_c~4_combout\,
	datae => \ALT_INV_c~3_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gpre[10]~4_combout\,
	combout => \S~10_combout\);

-- Location: IOIBUF_X59_Y26_N32
\A[12]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(12),
	o => \A[12]~input_o\);

-- Location: IOIBUF_X59_Y26_N63
\B[12]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(12),
	o => \B[12]~input_o\);

-- Location: MLABCELL_X57_Y18_N8
\p[12]\ : arriaii_lcell_comb
-- Equation(s):
-- p(12) = ( \B[12]~input_o\ & ( !\A[12]~input_o\ ) ) # ( !\B[12]~input_o\ & ( \A[12]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_A[12]~input_o\,
	dataf => \ALT_INV_B[12]~input_o\,
	combout => p(12));

-- Location: MLABCELL_X57_Y18_N12
\PrefixNetwork|Recur:Inner|Recur:pPair[2]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Recur:pPair[2]~0_combout\ = ( \c~4_combout\ & ( (p(10) & (!\A[11]~input_o\ $ (!\B[11]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101000010100000010100001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[11]~input_o\,
	datac => ALT_INV_p(10),
	datad => \ALT_INV_B[11]~input_o\,
	dataf => \ALT_INV_c~4_combout\,
	combout => \PrefixNetwork|Recur:Inner|Recur:pPair[2]~0_combout\);

-- Location: MLABCELL_X57_Y18_N10
\PrefixNetwork|Recur:Inner|Recur:gPair[2]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Recur:gPair[2]~0_combout\ = ( \PrefixNetwork|Recur:gPair[4]~0_combout\ & ( (!\A[11]~input_o\ & (\B[11]~input_o\ & ((\B[10]~input_o\) # (\A[10]~input_o\)))) # (\A[11]~input_o\ & (((\B[11]~input_o\) # (\B[10]~input_o\)) # 
-- (\A[10]~input_o\))) ) ) # ( !\PrefixNetwork|Recur:gPair[4]~0_combout\ & ( (!\A[11]~input_o\ & (\A[10]~input_o\ & (\B[10]~input_o\ & \B[11]~input_o\))) # (\A[11]~input_o\ & (((\A[10]~input_o\ & \B[10]~input_o\)) # (\B[11]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100011111000000010001111100000111011111110000011101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[10]~input_o\,
	datab => \ALT_INV_B[10]~input_o\,
	datac => \ALT_INV_A[11]~input_o\,
	datad => \ALT_INV_B[11]~input_o\,
	dataf => \PrefixNetwork|ALT_INV_Recur:gPair[4]~0_combout\,
	combout => \PrefixNetwork|Recur:Inner|Recur:gPair[2]~0_combout\);

-- Location: LABCELL_X58_Y19_N20
\S~11\ : arriaii_lcell_comb
-- Equation(s):
-- \S~11_combout\ = ( \PrefixNetwork|Recur:Inner|Recur:gPair[2]~0_combout\ & ( \c~3_combout\ & ( !p(12) ) ) ) # ( !\PrefixNetwork|Recur:Inner|Recur:gPair[2]~0_combout\ & ( \c~3_combout\ & ( !p(12) $ (!\PrefixNetwork|Recur:Inner|Recur:pPair[2]~0_combout\) ) ) 
-- ) # ( \PrefixNetwork|Recur:Inner|Recur:gPair[2]~0_combout\ & ( !\c~3_combout\ & ( !p(12) ) ) ) # ( !\PrefixNetwork|Recur:Inner|Recur:gPair[2]~0_combout\ & ( !\c~3_combout\ & ( !p(12) $ (((!\PrefixNetwork|Recur:Inner|Recur:pPair[2]~0_combout\) # 
-- ((!\PrefixNetwork|Recur:Inner|Recur:gPair[1]~0DUPLICATE_combout\ & !\PrefixNetwork|Recur:Inner|Recur:Inner|gPair~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011000111100110011001100110000111100001111001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Recur:Inner|ALT_INV_Recur:gPair[1]~0DUPLICATE_combout\,
	datab => ALT_INV_p(12),
	datac => \PrefixNetwork|Recur:Inner|ALT_INV_Recur:pPair[2]~0_combout\,
	datad => \PrefixNetwork|Recur:Inner|Recur:Inner|ALT_INV_gPair~2_combout\,
	datae => \PrefixNetwork|Recur:Inner|ALT_INV_Recur:gPair[2]~0_combout\,
	dataf => \ALT_INV_c~3_combout\,
	combout => \S~11_combout\);

-- Location: IOIBUF_X59_Y6_N1
\B[13]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(13),
	o => \B[13]~input_o\);

-- Location: IOIBUF_X59_Y10_N1
\A[13]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(13),
	o => \A[13]~input_o\);

-- Location: MLABCELL_X57_Y18_N34
\PrefixNetwork|Gpre[12]~3\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gpre[12]~3_combout\ = ( \PrefixNetwork|Recur:Inner|Recur:pPair[2]~0_combout\ & ( \PrefixNetwork|Recur:Inner|Recur:Inner|gPair~2_combout\ & ( (!\A[12]~input_o\ & !\B[12]~input_o\) ) ) ) # ( 
-- !\PrefixNetwork|Recur:Inner|Recur:pPair[2]~0_combout\ & ( \PrefixNetwork|Recur:Inner|Recur:Inner|gPair~2_combout\ & ( (!\A[12]~input_o\ & ((!\B[12]~input_o\) # (!\PrefixNetwork|Recur:Inner|Recur:gPair[2]~0_combout\))) # (\A[12]~input_o\ & 
-- (!\B[12]~input_o\ & !\PrefixNetwork|Recur:Inner|Recur:gPair[2]~0_combout\)) ) ) ) # ( \PrefixNetwork|Recur:Inner|Recur:pPair[2]~0_combout\ & ( !\PrefixNetwork|Recur:Inner|Recur:Inner|gPair~2_combout\ & ( (!\A[12]~input_o\ & ((!\B[12]~input_o\) # 
-- ((!\PrefixNetwork|Recur:Inner|Recur:gPair[2]~0_combout\ & !\PrefixNetwork|Recur:Inner|Recur:gPair[1]~0DUPLICATE_combout\)))) # (\A[12]~input_o\ & (!\B[12]~input_o\ & (!\PrefixNetwork|Recur:Inner|Recur:gPair[2]~0_combout\ & 
-- !\PrefixNetwork|Recur:Inner|Recur:gPair[1]~0DUPLICATE_combout\))) ) ) ) # ( !\PrefixNetwork|Recur:Inner|Recur:pPair[2]~0_combout\ & ( !\PrefixNetwork|Recur:Inner|Recur:Inner|gPair~2_combout\ & ( (!\A[12]~input_o\ & ((!\B[12]~input_o\) # 
-- (!\PrefixNetwork|Recur:Inner|Recur:gPair[2]~0_combout\))) # (\A[12]~input_o\ & (!\B[12]~input_o\ & !\PrefixNetwork|Recur:Inner|Recur:gPair[2]~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110100011101000111010001000100011101000111010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[12]~input_o\,
	datab => \ALT_INV_B[12]~input_o\,
	datac => \PrefixNetwork|Recur:Inner|ALT_INV_Recur:gPair[2]~0_combout\,
	datad => \PrefixNetwork|Recur:Inner|ALT_INV_Recur:gPair[1]~0DUPLICATE_combout\,
	datae => \PrefixNetwork|Recur:Inner|ALT_INV_Recur:pPair[2]~0_combout\,
	dataf => \PrefixNetwork|Recur:Inner|Recur:Inner|ALT_INV_gPair~2_combout\,
	combout => \PrefixNetwork|Gpre[12]~3_combout\);

-- Location: LABCELL_X58_Y18_N12
\c~5\ : arriaii_lcell_comb
-- Equation(s):
-- \c~5_combout\ = ( \c~3_combout\ & ( \PrefixNetwork|Recur:Inner|Recur:pPair[2]~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|Recur:Inner|ALT_INV_Recur:pPair[2]~0_combout\,
	dataf => \ALT_INV_c~3_combout\,
	combout => \c~5_combout\);

-- Location: MLABCELL_X57_Y18_N18
\S~12\ : arriaii_lcell_comb
-- Equation(s):
-- \S~12_combout\ = ( \c~5_combout\ & ( !\B[13]~input_o\ $ (!\A[13]~input_o\ $ (((!\PrefixNetwork|Gpre[12]~3_combout\) # (p(12))))) ) ) # ( !\c~5_combout\ & ( !\B[13]~input_o\ $ (!\A[13]~input_o\ $ (!\PrefixNetwork|Gpre[12]~3_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001011010010110100101101001011010010110100110011001011010011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[13]~input_o\,
	datab => \ALT_INV_A[13]~input_o\,
	datac => \PrefixNetwork|ALT_INV_Gpre[12]~3_combout\,
	datad => ALT_INV_p(12),
	dataf => \ALT_INV_c~5_combout\,
	combout => \S~12_combout\);

-- Location: MLABCELL_X57_Y18_N0
\c~6\ : arriaii_lcell_comb
-- Equation(s):
-- \c~6_combout\ = ( \B[12]~input_o\ & ( (!\A[12]~input_o\ & (!\A[13]~input_o\ $ (!\B[13]~input_o\))) ) ) # ( !\B[12]~input_o\ & ( (\A[12]~input_o\ & (!\A[13]~input_o\ $ (!\B[13]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100001010000001010000101001010000101000000101000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[13]~input_o\,
	datac => \ALT_INV_A[12]~input_o\,
	datad => \ALT_INV_B[13]~input_o\,
	dataf => \ALT_INV_B[12]~input_o\,
	combout => \c~6_combout\);

-- Location: IOIBUF_X59_Y30_N63
\A[14]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(14),
	o => \A[14]~input_o\);

-- Location: MLABCELL_X57_Y18_N38
\PrefixNetwork|Recur:gPair[6]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:gPair[6]~0_combout\ = ( \B[12]~input_o\ & ( (!\B[13]~input_o\ & (\A[13]~input_o\ & \A[12]~input_o\)) # (\B[13]~input_o\ & ((\A[12]~input_o\) # (\A[13]~input_o\))) ) ) # ( !\B[12]~input_o\ & ( (\B[13]~input_o\ & \A[13]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000011001111110000001100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[13]~input_o\,
	datac => \ALT_INV_A[13]~input_o\,
	datad => \ALT_INV_A[12]~input_o\,
	dataf => \ALT_INV_B[12]~input_o\,
	combout => \PrefixNetwork|Recur:gPair[6]~0_combout\);

-- Location: IOIBUF_X59_Y30_N94
\B[14]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(14),
	o => \B[14]~input_o\);

-- Location: MLABCELL_X57_Y18_N22
\PrefixNetwork|Recur:Inner|Recur:gPair[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Recur:gPair[1]~0_combout\ = ( \PrefixNetwork|Recur:gPair[2]~0_combout\ & ( \B[7]~input_o\ & ( ((\A[7]~input_o\) # (\A[6]~input_o\)) # (\B[6]~input_o\) ) ) ) # ( !\PrefixNetwork|Recur:gPair[2]~0_combout\ & ( \B[7]~input_o\ & ( 
-- ((\B[6]~input_o\ & \A[6]~input_o\)) # (\A[7]~input_o\) ) ) ) # ( \PrefixNetwork|Recur:gPair[2]~0_combout\ & ( !\B[7]~input_o\ & ( (\A[7]~input_o\ & ((\A[6]~input_o\) # (\B[6]~input_o\))) ) ) ) # ( !\PrefixNetwork|Recur:gPair[2]~0_combout\ & ( 
-- !\B[7]~input_o\ & ( (\B[6]~input_o\ & (\A[6]~input_o\ & \A[7]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000101111100000101111111110101111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[6]~input_o\,
	datac => \ALT_INV_A[6]~input_o\,
	datad => \ALT_INV_A[7]~input_o\,
	datae => \PrefixNetwork|ALT_INV_Recur:gPair[2]~0_combout\,
	dataf => \ALT_INV_B[7]~input_o\,
	combout => \PrefixNetwork|Recur:Inner|Recur:gPair[1]~0_combout\);

-- Location: LABCELL_X58_Y18_N34
\PrefixNetwork|Recur:Inner|Gpre~1\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Gpre~1_combout\ = ( \PrefixNetwork|Recur:Inner|Recur:pPair[2]~0_combout\ & ( (\c~6_combout\ & (((\PrefixNetwork|Recur:Inner|Recur:gPair[2]~0_combout\) # (\PrefixNetwork|Recur:Inner|Recur:Inner|gPair~2_combout\)) # 
-- (\PrefixNetwork|Recur:Inner|Recur:gPair[1]~0_combout\))) ) ) # ( !\PrefixNetwork|Recur:Inner|Recur:pPair[2]~0_combout\ & ( (\c~6_combout\ & \PrefixNetwork|Recur:Inner|Recur:gPair[2]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100010101010101010001010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_c~6_combout\,
	datab => \PrefixNetwork|Recur:Inner|ALT_INV_Recur:gPair[1]~0_combout\,
	datac => \PrefixNetwork|Recur:Inner|Recur:Inner|ALT_INV_gPair~2_combout\,
	datad => \PrefixNetwork|Recur:Inner|ALT_INV_Recur:gPair[2]~0_combout\,
	dataf => \PrefixNetwork|Recur:Inner|ALT_INV_Recur:pPair[2]~0_combout\,
	combout => \PrefixNetwork|Recur:Inner|Gpre~1_combout\);

-- Location: LABCELL_X58_Y18_N38
\S~13\ : arriaii_lcell_comb
-- Equation(s):
-- \S~13_combout\ = ( \PrefixNetwork|Recur:Inner|Gpre~1_combout\ & ( \c~5_combout\ & ( !\A[14]~input_o\ $ (\B[14]~input_o\) ) ) ) # ( !\PrefixNetwork|Recur:Inner|Gpre~1_combout\ & ( \c~5_combout\ & ( !\A[14]~input_o\ $ (!\B[14]~input_o\ $ 
-- (((\PrefixNetwork|Recur:gPair[6]~0_combout\) # (\c~6_combout\)))) ) ) ) # ( \PrefixNetwork|Recur:Inner|Gpre~1_combout\ & ( !\c~5_combout\ & ( !\A[14]~input_o\ $ (\B[14]~input_o\) ) ) ) # ( !\PrefixNetwork|Recur:Inner|Gpre~1_combout\ & ( !\c~5_combout\ & ( 
-- !\A[14]~input_o\ $ (!\PrefixNetwork|Recur:gPair[6]~0_combout\ $ (\B[14]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011000011110011000011001101101100100100111100110000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_c~6_combout\,
	datab => \ALT_INV_A[14]~input_o\,
	datac => \PrefixNetwork|ALT_INV_Recur:gPair[6]~0_combout\,
	datad => \ALT_INV_B[14]~input_o\,
	datae => \PrefixNetwork|Recur:Inner|ALT_INV_Gpre~1_combout\,
	dataf => \ALT_INV_c~5_combout\,
	combout => \S~13_combout\);

-- Location: IOIBUF_X59_Y12_N94
\A[15]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(15),
	o => \A[15]~input_o\);

-- Location: LABCELL_X58_Y18_N16
\PrefixNetwork|Gpre[14]~2\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gpre[14]~2_combout\ = ( \PrefixNetwork|Recur:Inner|Gpre~1_combout\ & ( (!\A[14]~input_o\ & !\B[14]~input_o\) ) ) # ( !\PrefixNetwork|Recur:Inner|Gpre~1_combout\ & ( (!\A[14]~input_o\ & ((!\B[14]~input_o\) # 
-- (!\PrefixNetwork|Recur:gPair[6]~0_combout\))) # (\A[14]~input_o\ & (!\B[14]~input_o\ & !\PrefixNetwork|Recur:gPair[6]~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111010001000111011101000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[14]~input_o\,
	datab => \ALT_INV_B[14]~input_o\,
	datad => \PrefixNetwork|ALT_INV_Recur:gPair[6]~0_combout\,
	dataf => \PrefixNetwork|Recur:Inner|ALT_INV_Gpre~1_combout\,
	combout => \PrefixNetwork|Gpre[14]~2_combout\);

-- Location: IOIBUF_X59_Y30_N1
\B[15]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(15),
	o => \B[15]~input_o\);

-- Location: MLABCELL_X57_Y18_N6
\c~7\ : arriaii_lcell_comb
-- Equation(s):
-- \c~7_combout\ = ( \c~3_combout\ & ( (\PrefixNetwork|Recur:Inner|Recur:pPair[2]~0_combout\ & (\c~6_combout\ & (!\A[14]~input_o\ $ (!\B[14]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001100000000000000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[14]~input_o\,
	datab => \ALT_INV_B[14]~input_o\,
	datac => \PrefixNetwork|Recur:Inner|ALT_INV_Recur:pPair[2]~0_combout\,
	datad => \ALT_INV_c~6_combout\,
	dataf => \ALT_INV_c~3_combout\,
	combout => \c~7_combout\);

-- Location: LABCELL_X58_Y18_N8
\S~14\ : arriaii_lcell_comb
-- Equation(s):
-- \S~14_combout\ = ( \c~7_combout\ & ( !\A[15]~input_o\ $ (\B[15]~input_o\) ) ) # ( !\c~7_combout\ & ( !\A[15]~input_o\ $ (!\PrefixNetwork|Gpre[14]~2_combout\ $ (!\B[15]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010010101011010101001010101101010101010010101011010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[15]~input_o\,
	datac => \PrefixNetwork|ALT_INV_Gpre[14]~2_combout\,
	datad => \ALT_INV_B[15]~input_o\,
	dataf => \ALT_INV_c~7_combout\,
	combout => \S~14_combout\);

-- Location: LABCELL_X58_Y18_N18
\c~9\ : arriaii_lcell_comb
-- Equation(s):
-- \c~9_combout\ = ( \A[15]~input_o\ & ( (!\B[15]~input_o\ & (\c~6_combout\ & (!\A[14]~input_o\ $ (!\B[14]~input_o\)))) ) ) # ( !\A[15]~input_o\ & ( (\B[15]~input_o\ & (\c~6_combout\ & (!\A[14]~input_o\ $ (!\B[14]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000110000000000000011000000000011000000000000001100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[14]~input_o\,
	datab => \ALT_INV_B[14]~input_o\,
	datac => \ALT_INV_B[15]~input_o\,
	datad => \ALT_INV_c~6_combout\,
	dataf => \ALT_INV_A[15]~input_o\,
	combout => \c~9_combout\);

-- Location: LABCELL_X58_Y18_N22
\PrefixNetwork|Recur:gPair[7]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:gPair[7]~0_combout\ = ( \A[15]~input_o\ & ( ((\A[14]~input_o\ & \B[14]~input_o\)) # (\B[15]~input_o\) ) ) # ( !\A[15]~input_o\ & ( (\A[14]~input_o\ & (\B[15]~input_o\ & \B[14]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100001111010111110000111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[14]~input_o\,
	datac => \ALT_INV_B[15]~input_o\,
	datad => \ALT_INV_B[14]~input_o\,
	dataf => \ALT_INV_A[15]~input_o\,
	combout => \PrefixNetwork|Recur:gPair[7]~0_combout\);

-- Location: MLABCELL_X57_Y18_N30
\c~10\ : arriaii_lcell_comb
-- Equation(s):
-- \c~10_combout\ = ( \A[15]~input_o\ & ( \PrefixNetwork|Recur:gPair[6]~0_combout\ & ( (!\B[15]~input_o\ & (!\B[14]~input_o\ $ (!\A[14]~input_o\))) ) ) ) # ( !\A[15]~input_o\ & ( \PrefixNetwork|Recur:gPair[6]~0_combout\ & ( (\B[15]~input_o\ & 
-- (!\B[14]~input_o\ $ (!\A[14]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000011000011000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[14]~input_o\,
	datac => \ALT_INV_B[15]~input_o\,
	datad => \ALT_INV_A[14]~input_o\,
	datae => \ALT_INV_A[15]~input_o\,
	dataf => \PrefixNetwork|ALT_INV_Recur:gPair[6]~0_combout\,
	combout => \c~10_combout\);

-- Location: LABCELL_X58_Y18_N20
\c~8\ : arriaii_lcell_comb
-- Equation(s):
-- \c~8_combout\ = ( \c~3_combout\ & ( \PrefixNetwork|Recur:Inner|Recur:pPair[2]~0_combout\ ) ) # ( !\c~3_combout\ & ( (\PrefixNetwork|Recur:Inner|Recur:pPair[2]~0_combout\ & ((\PrefixNetwork|Recur:Inner|Recur:Inner|gPair~2_combout\) # 
-- (\PrefixNetwork|Recur:Inner|Recur:gPair[1]~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000111111000000000011111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PrefixNetwork|Recur:Inner|ALT_INV_Recur:gPair[1]~0_combout\,
	datac => \PrefixNetwork|Recur:Inner|Recur:Inner|ALT_INV_gPair~2_combout\,
	datad => \PrefixNetwork|Recur:Inner|ALT_INV_Recur:pPair[2]~0_combout\,
	dataf => \ALT_INV_c~3_combout\,
	combout => \c~8_combout\);

-- Location: LABCELL_X58_Y18_N14
\c~11\ : arriaii_lcell_comb
-- Equation(s):
-- \c~11_combout\ = ( \c~8_combout\ & ( ((\c~10_combout\) # (\PrefixNetwork|Recur:gPair[7]~0_combout\)) # (\c~9_combout\) ) ) # ( !\c~8_combout\ & ( (((\c~9_combout\ & \PrefixNetwork|Recur:Inner|Recur:gPair[2]~0_combout\)) # (\c~10_combout\)) # 
-- (\PrefixNetwork|Recur:gPair[7]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111101111111001111110111111101111111011111110111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_c~9_combout\,
	datab => \PrefixNetwork|ALT_INV_Recur:gPair[7]~0_combout\,
	datac => \ALT_INV_c~10_combout\,
	datad => \PrefixNetwork|Recur:Inner|ALT_INV_Recur:gPair[2]~0_combout\,
	dataf => \ALT_INV_c~8_combout\,
	combout => \c~11_combout\);

-- Location: LABCELL_X58_Y18_N32
\Ovfl~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Ovfl~0_combout\ = ( \c~11_combout\ & ( (\PrefixNetwork|Gpre[14]~2_combout\ & !\c~7_combout\) ) ) # ( !\c~11_combout\ & ( (!\PrefixNetwork|Gpre[14]~2_combout\) # (\c~7_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011111111111100001111111100001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|ALT_INV_Gpre[14]~2_combout\,
	datad => \ALT_INV_c~7_combout\,
	dataf => \ALT_INV_c~11_combout\,
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


