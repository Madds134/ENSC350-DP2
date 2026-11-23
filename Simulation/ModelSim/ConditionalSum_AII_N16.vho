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

-- DATE "11/21/2026 11:43:33"

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
-- S[0]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[1]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[2]	=>  Location: PIN_W4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[3]	=>  Location: PIN_W5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[4]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[5]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[6]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[7]	=>  Location: PIN_U5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[8]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[9]	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[10]	=>  Location: PIN_U4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[11]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[12]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[13]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[14]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[15]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cout	=>  Location: PIN_W1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ovfl	=>  Location: PIN_W3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_U3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cin	=>  Location: PIN_AB2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_P5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_AB1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_AC1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_AE1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_AD1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_T6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_T1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_AC3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[8]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_AC2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[9]	=>  Location: PIN_AB3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_K6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[10]	=>  Location: PIN_P4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[11]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[11]	=>  Location: PIN_AA3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[12]	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[12]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[13]	=>  Location: PIN_AA4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[13]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[14]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[14]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[15]	=>  Location: PIN_W6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[15]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \Cin~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \S~0_combout\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \S~1_combout\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|carry1[1]~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|carry0[1]~0_combout\ : std_logic;
SIGNAL \c[2]~0_combout\ : std_logic;
SIGNAL \S~2_combout\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \S~3_combout\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\ : std_logic;
SIGNAL \c[4]~1_combout\ : std_logic;
SIGNAL \S~4_combout\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \S~5_combout\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry1[1]~0_combout\ : std_logic;
SIGNAL \c[6]~2_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry0[1]~0_combout\ : std_logic;
SIGNAL \c[6]~3_combout\ : std_logic;
SIGNAL \S~6_combout\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \S~7_combout\ : std_logic;
SIGNAL \B[8]~input_o\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|carry0[1]~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|carry1[1]~0_combout\ : std_logic;
SIGNAL \c[6]~3DUPLICATE_combout\ : std_logic;
SIGNAL \c[6]~2DUPLICATE_combout\ : std_logic;
SIGNAL \S~8_combout\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \B[9]~input_o\ : std_logic;
SIGNAL \c[8]~4_combout\ : std_logic;
SIGNAL \S~9_combout\ : std_logic;
SIGNAL \B[10]~input_o\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|carry1[1]~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|carry0[1]~0_combout\ : std_logic;
SIGNAL \c[10]~5DUPLICATE_combout\ : std_logic;
SIGNAL \S~10_combout\ : std_logic;
SIGNAL \B[11]~input_o\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \c[10]~5_combout\ : std_logic;
SIGNAL \S~11_combout\ : std_logic;
SIGNAL \B[12]~input_o\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\ : std_logic;
SIGNAL \S~12_combout\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \B[13]~input_o\ : std_logic;
SIGNAL \S~18_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|carry1[1]~0_combout\ : std_logic;
SIGNAL \B[14]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0DUPLICATE_combout\ : std_logic;
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|carry0[1]~0DUPLICATE_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0DUPLICATE_combout\ : std_logic;
SIGNAL \S~14_combout\ : std_logic;
SIGNAL \B[15]~input_o\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|carry0[1]~0_combout\ : std_logic;
SIGNAL \c[14]~6_combout\ : std_logic;
SIGNAL \S~13_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|carry0[1]~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|carry1[1]~0_combout\ : std_logic;
SIGNAL \c~7_combout\ : std_logic;
SIGNAL \Ovfl~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_carry0[1]~0DUPLICATE_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_carry0[1]~0DUPLICATE_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_carry1[1]~0DUPLICATE_combout\ : std_logic;
SIGNAL \ALT_INV_c[10]~5DUPLICATE_combout\ : std_logic;
SIGNAL \ALT_INV_c[6]~3DUPLICATE_combout\ : std_logic;
SIGNAL \ALT_INV_c[6]~2DUPLICATE_combout\ : std_logic;
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
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_carry0[1]~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_carry1[1]~0_combout\ : std_logic;
SIGNAL \ALT_INV_c[14]~6_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_carry0[1]~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_carry1[1]~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_carry0[1]~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_carry1[1]~0_combout\ : std_logic;
SIGNAL \ALT_INV_c[10]~5_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_carry0[1]~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_carry1[1]~0_combout\ : std_logic;
SIGNAL \ALT_INV_c[8]~4_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_carry0[1]~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_carry1[1]~0_combout\ : std_logic;
SIGNAL \ALT_INV_c[6]~3_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_carry0[1]~0_combout\ : std_logic;
SIGNAL \ALT_INV_c[6]~2_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_carry1[1]~0_combout\ : std_logic;
SIGNAL \ALT_INV_c[4]~1_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_carry0[1]~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_carry1[1]~0_combout\ : std_logic;
SIGNAL \ALT_INV_c[2]~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_carry0[1]~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_carry1[1]~0_combout\ : std_logic;

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
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_carry0[1]~0DUPLICATE_combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|carry0[1]~0DUPLICATE_combout\;
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_carry0[1]~0DUPLICATE_combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0DUPLICATE_combout\;
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_carry1[1]~0DUPLICATE_combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0DUPLICATE_combout\;
\ALT_INV_c[10]~5DUPLICATE_combout\ <= NOT \c[10]~5DUPLICATE_combout\;
\ALT_INV_c[6]~3DUPLICATE_combout\ <= NOT \c[6]~3DUPLICATE_combout\;
\ALT_INV_c[6]~2DUPLICATE_combout\ <= NOT \c[6]~2DUPLICATE_combout\;
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
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_carry0[1]~0_combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|carry0[1]~0_combout\;
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_carry1[1]~0_combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|carry1[1]~0_combout\;
\ALT_INV_c[14]~6_combout\ <= NOT \c[14]~6_combout\;
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_carry0[1]~0_combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|carry0[1]~0_combout\;
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_carry1[1]~0_combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|carry1[1]~0_combout\;
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_carry0[1]~0_combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\;
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_carry1[1]~0_combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\;
\ALT_INV_c[10]~5_combout\ <= NOT \c[10]~5_combout\;
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_carry0[1]~0_combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|carry0[1]~0_combout\;
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_carry1[1]~0_combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|carry1[1]~0_combout\;
\ALT_INV_c[8]~4_combout\ <= NOT \c[8]~4_combout\;
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_carry0[1]~0_combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|carry0[1]~0_combout\;
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_carry1[1]~0_combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|carry1[1]~0_combout\;
\ALT_INV_c[6]~3_combout\ <= NOT \c[6]~3_combout\;
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_carry0[1]~0_combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry0[1]~0_combout\;
\ALT_INV_c[6]~2_combout\ <= NOT \c[6]~2_combout\;
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_carry1[1]~0_combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry1[1]~0_combout\;
\ALT_INV_c[4]~1_combout\ <= NOT \c[4]~1_combout\;
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_carry0[1]~0_combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\;
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_carry1[1]~0_combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\;
\ALT_INV_c[2]~0_combout\ <= NOT \c[2]~0_combout\;
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_carry0[1]~0_combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|carry0[1]~0_combout\;
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_carry1[1]~0_combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|carry1[1]~0_combout\;

-- Location: IOOBUF_X59_Y12_N98
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

-- Location: IOOBUF_X59_Y25_N67
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

-- Location: IOOBUF_X59_Y12_N67
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

-- Location: IOOBUF_X59_Y12_N2
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

-- Location: IOOBUF_X59_Y12_N36
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

-- Location: IOOBUF_X59_Y13_N67
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

-- Location: IOOBUF_X59_Y21_N98
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

-- Location: IOOBUF_X59_Y21_N5
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

-- Location: IOOBUF_X59_Y22_N67
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

-- Location: IOOBUF_X59_Y16_N2
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

-- Location: IOOBUF_X59_Y21_N67
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

-- Location: IOOBUF_X59_Y19_N36
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

-- Location: IOOBUF_X59_Y21_N33
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

-- Location: IOOBUF_X59_Y18_N2
\S[13]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~18_combout\,
	devoe => ww_devoe,
	o => \S[13]~output_o\);

-- Location: IOOBUF_X59_Y18_N98
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

-- Location: IOOBUF_X59_Y19_N67
\S[15]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~13_combout\,
	devoe => ww_devoe,
	o => \S[15]~output_o\);

-- Location: IOOBUF_X59_Y19_N98
\Cout~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \c~7_combout\,
	devoe => ww_devoe,
	o => \Cout~output_o\);

-- Location: IOOBUF_X59_Y19_N2
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

-- Location: IOIBUF_X59_Y22_N94
\A[0]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

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

-- Location: IOIBUF_X59_Y18_N63
\B[0]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: LABCELL_X58_Y14_N10
\S~0\ : arriaii_lcell_comb
-- Equation(s):
-- \S~0_combout\ = ( \Cin~input_o\ & ( \B[0]~input_o\ & ( \A[0]~input_o\ ) ) ) # ( !\Cin~input_o\ & ( \B[0]~input_o\ & ( !\A[0]~input_o\ ) ) ) # ( \Cin~input_o\ & ( !\B[0]~input_o\ & ( !\A[0]~input_o\ ) ) ) # ( !\Cin~input_o\ & ( !\B[0]~input_o\ & ( 
-- \A[0]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111111111110000000011111111000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_A[0]~input_o\,
	datae => \ALT_INV_Cin~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \S~0_combout\);

-- Location: IOIBUF_X59_Y16_N32
\B[1]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: IOIBUF_X59_Y18_N32
\A[1]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: LABCELL_X58_Y21_N18
\S~1\ : arriaii_lcell_comb
-- Equation(s):
-- \S~1_combout\ = ( \Cin~input_o\ & ( \A[1]~input_o\ & ( !\B[1]~input_o\ $ (((\B[0]~input_o\) # (\A[0]~input_o\))) ) ) ) # ( !\Cin~input_o\ & ( \A[1]~input_o\ & ( !\B[1]~input_o\ $ (((\A[0]~input_o\ & \B[0]~input_o\))) ) ) ) # ( \Cin~input_o\ & ( 
-- !\A[1]~input_o\ & ( !\B[1]~input_o\ $ (((!\A[0]~input_o\ & !\B[0]~input_o\))) ) ) ) # ( !\Cin~input_o\ & ( !\A[1]~input_o\ & ( !\B[1]~input_o\ $ (((!\A[0]~input_o\) # (!\B[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100111100001111001100110011001100110000111100001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_A[0]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	datae => \ALT_INV_Cin~input_o\,
	dataf => \ALT_INV_A[1]~input_o\,
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

-- Location: IOIBUF_X59_Y16_N94
\A[2]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: LABCELL_X58_Y18_N22
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|carry1[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|carry1[1]~0_combout\ = ( \B[1]~input_o\ & ( (!\A[1]~input_o\ & (!\A[0]~input_o\ & !\B[0]~input_o\)) ) ) # ( !\B[1]~input_o\ & ( (!\A[1]~input_o\) # ((!\A[0]~input_o\ & !\B[0]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110011001100111111001100110011000000000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[1]~input_o\,
	datac => \ALT_INV_A[0]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|carry1[1]~0_combout\);

-- Location: LABCELL_X58_Y18_N18
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|carry0[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|carry0[1]~0_combout\ = ( \A[0]~input_o\ & ( (!\A[1]~input_o\ & (\B[1]~input_o\ & \B[0]~input_o\)) # (\A[1]~input_o\ & ((\B[0]~input_o\) # (\B[1]~input_o\))) ) ) # ( !\A[0]~input_o\ & ( 
-- (\A[1]~input_o\ & \B[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000011001111110000001100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[1]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_A[0]~input_o\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|carry0[1]~0_combout\);

-- Location: LABCELL_X58_Y14_N20
\c[2]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \c[2]~0_combout\ = ( \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|carry1[1]~0_combout\ & ( \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|carry0[1]~0_combout\ & ( !\Cin~input_o\ ) ) ) # ( 
-- !\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|carry1[1]~0_combout\ & ( \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|carry0[1]~0_combout\ ) ) # ( !\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|carry1[1]~0_combout\ & ( 
-- !\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|carry0[1]~0_combout\ & ( \Cin~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000000000000011111111111111111111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Cin~input_o\,
	datae => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_carry1[1]~0_combout\,
	dataf => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_carry0[1]~0_combout\,
	combout => \c[2]~0_combout\);

-- Location: LABCELL_X58_Y14_N32
\S~2\ : arriaii_lcell_comb
-- Equation(s):
-- \S~2_combout\ = ( \A[2]~input_o\ & ( \c[2]~0_combout\ & ( \B[2]~input_o\ ) ) ) # ( !\A[2]~input_o\ & ( \c[2]~0_combout\ & ( !\B[2]~input_o\ ) ) ) # ( \A[2]~input_o\ & ( !\c[2]~0_combout\ & ( !\B[2]~input_o\ ) ) ) # ( !\A[2]~input_o\ & ( !\c[2]~0_combout\ 
-- & ( \B[2]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111111111110000000011111111000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_B[2]~input_o\,
	datae => \ALT_INV_A[2]~input_o\,
	dataf => \ALT_INV_c[2]~0_combout\,
	combout => \S~2_combout\);

-- Location: IOIBUF_X59_Y15_N63
\B[3]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: IOIBUF_X59_Y15_N32
\A[3]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: LABCELL_X58_Y14_N6
\S~3\ : arriaii_lcell_comb
-- Equation(s):
-- \S~3_combout\ = ( \A[2]~input_o\ & ( \c[2]~0_combout\ & ( !\B[3]~input_o\ $ (\A[3]~input_o\) ) ) ) # ( !\A[2]~input_o\ & ( \c[2]~0_combout\ & ( !\B[2]~input_o\ $ (!\B[3]~input_o\ $ (\A[3]~input_o\)) ) ) ) # ( \A[2]~input_o\ & ( !\c[2]~0_combout\ & ( 
-- !\B[2]~input_o\ $ (!\B[3]~input_o\ $ (\A[3]~input_o\)) ) ) ) # ( !\A[2]~input_o\ & ( !\c[2]~0_combout\ & ( !\B[3]~input_o\ $ (!\A[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000001111001100001100111100110000111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \ALT_INV_A[3]~input_o\,
	datae => \ALT_INV_A[2]~input_o\,
	dataf => \ALT_INV_c[2]~0_combout\,
	combout => \S~3_combout\);

-- Location: IOIBUF_X59_Y15_N1
\A[4]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: IOIBUF_X59_Y13_N1
\B[4]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: LABCELL_X58_Y18_N4
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\ = ( \B[2]~input_o\ & ( (!\A[3]~input_o\ & !\B[3]~input_o\) ) ) # ( !\B[2]~input_o\ & ( (!\A[3]~input_o\ & ((!\B[3]~input_o\) # (!\A[2]~input_o\))) # (\A[3]~input_o\ & 
-- (!\B[3]~input_o\ & !\A[2]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110011000000111111001100000011000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[3]~input_o\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \ALT_INV_A[2]~input_o\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\);

-- Location: LABCELL_X58_Y18_N0
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\ = ( \B[2]~input_o\ & ( (!\A[3]~input_o\ & (\B[3]~input_o\ & \A[2]~input_o\)) # (\A[3]~input_o\ & ((\A[2]~input_o\) # (\B[3]~input_o\))) ) ) # ( !\B[2]~input_o\ & ( 
-- (\A[3]~input_o\ & \B[3]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000011001111110000001100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[3]~input_o\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \ALT_INV_A[2]~input_o\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\);

-- Location: LABCELL_X58_Y14_N16
\c[4]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \c[4]~1_combout\ = ( \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\ & ( \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\ & ( (!\Cin~input_o\ & 
-- ((!\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|carry0[1]~0_combout\))) # (\Cin~input_o\ & (\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|carry1[1]~0_combout\)) ) ) ) # ( 
-- !\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\ & ( \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\ ) ) # ( !\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\ & ( 
-- !\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\ & ( (!\Cin~input_o\ & ((\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|carry0[1]~0_combout\))) # (\Cin~input_o\ & 
-- (!\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|carry1[1]~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000011111100000000000000000011111111111111111100111100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Cin~input_o\,
	datac => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_carry1[1]~0_combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_carry0[1]~0_combout\,
	datae => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_carry1[1]~0_combout\,
	dataf => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_carry0[1]~0_combout\,
	combout => \c[4]~1_combout\);

-- Location: LABCELL_X58_Y14_N38
\S~4\ : arriaii_lcell_comb
-- Equation(s):
-- \S~4_combout\ = ( \B[4]~input_o\ & ( \c[4]~1_combout\ & ( \A[4]~input_o\ ) ) ) # ( !\B[4]~input_o\ & ( \c[4]~1_combout\ & ( !\A[4]~input_o\ ) ) ) # ( \B[4]~input_o\ & ( !\c[4]~1_combout\ & ( !\A[4]~input_o\ ) ) ) # ( !\B[4]~input_o\ & ( !\c[4]~1_combout\ 
-- & ( \A[4]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111100001111000011110000111100000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[4]~input_o\,
	datae => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_c[4]~1_combout\,
	combout => \S~4_combout\);

-- Location: IOIBUF_X59_Y15_N94
\B[5]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: IOIBUF_X59_Y26_N32
\A[5]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: LABCELL_X58_Y14_N26
\S~5\ : arriaii_lcell_comb
-- Equation(s):
-- \S~5_combout\ = ( \B[4]~input_o\ & ( \c[4]~1_combout\ & ( !\B[5]~input_o\ $ (\A[5]~input_o\) ) ) ) # ( !\B[4]~input_o\ & ( \c[4]~1_combout\ & ( !\B[5]~input_o\ $ (!\A[4]~input_o\ $ (\A[5]~input_o\)) ) ) ) # ( \B[4]~input_o\ & ( !\c[4]~1_combout\ & ( 
-- !\B[5]~input_o\ $ (!\A[4]~input_o\ $ (\A[5]~input_o\)) ) ) ) # ( !\B[4]~input_o\ & ( !\c[4]~1_combout\ & ( !\B[5]~input_o\ $ (!\A[5]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111001100001111001100001100111100110000111100110000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[5]~input_o\,
	datac => \ALT_INV_A[4]~input_o\,
	datad => \ALT_INV_A[5]~input_o\,
	datae => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_c[4]~1_combout\,
	combout => \S~5_combout\);

-- Location: IOIBUF_X59_Y22_N1
\A[6]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: IOIBUF_X59_Y23_N63
\B[6]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: LABCELL_X58_Y18_N2
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry1[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry1[1]~0_combout\ = ( \B[4]~input_o\ & ( (!\B[5]~input_o\ & !\A[5]~input_o\) ) ) # ( !\B[4]~input_o\ & ( (!\B[5]~input_o\ & ((!\A[5]~input_o\) # (!\A[4]~input_o\))) # (\B[5]~input_o\ & 
-- (!\A[5]~input_o\ & !\A[4]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101010100000111110101010000010100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[5]~input_o\,
	datac => \ALT_INV_A[5]~input_o\,
	datad => \ALT_INV_A[4]~input_o\,
	dataf => \ALT_INV_B[4]~input_o\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry1[1]~0_combout\);

-- Location: LABCELL_X58_Y18_N36
\c[6]~2\ : arriaii_lcell_comb
-- Equation(s):
-- \c[6]~2_combout\ = ( \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\ & ( !\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry1[1]~0_combout\ & ( 
-- (!\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\) # ((!\Cin~input_o\ & (!\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|carry0[1]~0_combout\)) # (\Cin~input_o\ & 
-- ((\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|carry1[1]~0_combout\)))) ) ) ) # ( !\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\ & ( !\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry1[1]~0_combout\ 
-- & ( (!\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\ & ((!\Cin~input_o\ & (\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|carry0[1]~0_combout\)) # (\Cin~input_o\ & 
-- ((!\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|carry1[1]~0_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000001000000111110001111101100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_carry0[1]~0_combout\,
	datab => \ALT_INV_Cin~input_o\,
	datac => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_carry1[1]~0_combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_carry1[1]~0_combout\,
	datae => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_carry0[1]~0_combout\,
	dataf => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_carry1[1]~0_combout\,
	combout => \c[6]~2_combout\);

-- Location: LABCELL_X58_Y18_N6
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry0[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry0[1]~0_combout\ = ( \B[4]~input_o\ & ( (!\B[5]~input_o\ & (\A[5]~input_o\ & \A[4]~input_o\)) # (\B[5]~input_o\ & ((\A[4]~input_o\) # (\A[5]~input_o\))) ) ) # ( !\B[4]~input_o\ & ( 
-- (\B[5]~input_o\ & \A[5]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101010111110000010101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[5]~input_o\,
	datac => \ALT_INV_A[5]~input_o\,
	datad => \ALT_INV_A[4]~input_o\,
	dataf => \ALT_INV_B[4]~input_o\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry0[1]~0_combout\);

-- Location: LABCELL_X58_Y18_N32
\c[6]~3\ : arriaii_lcell_comb
-- Equation(s):
-- \c[6]~3_combout\ = ( \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|carry0[1]~0_combout\ & ( \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\ & ( 
-- (\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry0[1]~0_combout\ & (\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\ & ((!\Cin~input_o\) # 
-- (!\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|carry1[1]~0_combout\)))) ) ) ) # ( !\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|carry0[1]~0_combout\ & ( \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\ & 
-- ( (\Cin~input_o\ & (\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry0[1]~0_combout\ & (\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\ & 
-- !\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|carry1[1]~0_combout\))) ) ) ) # ( \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|carry0[1]~0_combout\ & ( !\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\ & ( 
-- (\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry0[1]~0_combout\ & (((\Cin~input_o\ & \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|carry1[1]~0_combout\)) # 
-- (\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\))) ) ) ) # ( !\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|carry0[1]~0_combout\ & ( !\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\ & 
-- ( (\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry0[1]~0_combout\ & ((!\Cin~input_o\) # ((\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|carry1[1]~0_combout\) # 
-- (\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001100110011000000110001001100000001000000000000001100000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Cin~input_o\,
	datab => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_carry0[1]~0_combout\,
	datac => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_carry1[1]~0_combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_carry1[1]~0_combout\,
	datae => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_carry0[1]~0_combout\,
	dataf => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_carry0[1]~0_combout\,
	combout => \c[6]~3_combout\);

-- Location: LABCELL_X58_Y18_N20
\S~6\ : arriaii_lcell_comb
-- Equation(s):
-- \S~6_combout\ = ( \c[6]~3_combout\ & ( !\A[6]~input_o\ $ (\B[6]~input_o\) ) ) # ( !\c[6]~3_combout\ & ( !\A[6]~input_o\ $ (!\B[6]~input_o\ $ (\c[6]~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101010100101010110101010010110100101101001011010010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[6]~input_o\,
	datac => \ALT_INV_B[6]~input_o\,
	datad => \ALT_INV_c[6]~2_combout\,
	dataf => \ALT_INV_c[6]~3_combout\,
	combout => \S~6_combout\);

-- Location: IOIBUF_X59_Y22_N32
\A[7]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: IOIBUF_X59_Y23_N1
\B[7]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: LABCELL_X58_Y21_N6
\S~7\ : arriaii_lcell_comb
-- Equation(s):
-- \S~7_combout\ = ( \c[6]~2_combout\ & ( \c[6]~3_combout\ & ( !\A[7]~input_o\ $ (!\B[7]~input_o\ $ (((\B[6]~input_o\) # (\A[6]~input_o\)))) ) ) ) # ( !\c[6]~2_combout\ & ( \c[6]~3_combout\ & ( !\A[7]~input_o\ $ (!\B[7]~input_o\ $ (((\B[6]~input_o\) # 
-- (\A[6]~input_o\)))) ) ) ) # ( \c[6]~2_combout\ & ( !\c[6]~3_combout\ & ( !\A[7]~input_o\ $ (!\B[7]~input_o\ $ (((\B[6]~input_o\) # (\A[6]~input_o\)))) ) ) ) # ( !\c[6]~2_combout\ & ( !\c[6]~3_combout\ & ( !\A[7]~input_o\ $ (!\B[7]~input_o\ $ 
-- (((\A[6]~input_o\ & \B[6]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001101001011010011001100101101001100110010110100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[7]~input_o\,
	datab => \ALT_INV_B[7]~input_o\,
	datac => \ALT_INV_A[6]~input_o\,
	datad => \ALT_INV_B[6]~input_o\,
	datae => \ALT_INV_c[6]~2_combout\,
	dataf => \ALT_INV_c[6]~3_combout\,
	combout => \S~7_combout\);

-- Location: IOIBUF_X59_Y30_N32
\B[8]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

-- Location: IOIBUF_X59_Y10_N32
\A[8]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: LABCELL_X58_Y18_N14
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|carry0[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|carry0[1]~0_combout\ = ( \B[6]~input_o\ & ( (!\A[7]~input_o\ & (\A[6]~input_o\ & \B[7]~input_o\)) # (\A[7]~input_o\ & ((\B[7]~input_o\) # (\A[6]~input_o\))) ) ) # ( !\B[6]~input_o\ & ( 
-- (\A[7]~input_o\ & \B[7]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100000011001111110000001100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[7]~input_o\,
	datac => \ALT_INV_A[6]~input_o\,
	datad => \ALT_INV_B[7]~input_o\,
	dataf => \ALT_INV_B[6]~input_o\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|carry0[1]~0_combout\);

-- Location: LABCELL_X58_Y18_N12
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|carry1[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|carry1[1]~0_combout\ = ( \B[7]~input_o\ & ( (!\A[7]~input_o\ & (!\B[6]~input_o\ & !\A[6]~input_o\)) ) ) # ( !\B[7]~input_o\ & ( (!\A[7]~input_o\) # ((!\B[6]~input_o\ & !\A[6]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110011001100111111001100110011000000000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[7]~input_o\,
	datac => \ALT_INV_B[6]~input_o\,
	datad => \ALT_INV_A[6]~input_o\,
	dataf => \ALT_INV_B[7]~input_o\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|carry1[1]~0_combout\);

-- Location: LABCELL_X58_Y18_N34
\c[6]~3DUPLICATE\ : arriaii_lcell_comb
-- Equation(s):
-- \c[6]~3DUPLICATE_combout\ = ( \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|carry0[1]~0_combout\ & ( \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\ & ( 
-- (\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry0[1]~0_combout\ & (\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\ & ((!\Cin~input_o\) # 
-- (!\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|carry1[1]~0_combout\)))) ) ) ) # ( !\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|carry0[1]~0_combout\ & ( \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\ & 
-- ( (\Cin~input_o\ & (\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry0[1]~0_combout\ & (!\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|carry1[1]~0_combout\ & 
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\))) ) ) ) # ( \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|carry0[1]~0_combout\ & ( !\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\ & ( 
-- (\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry0[1]~0_combout\ & (((\Cin~input_o\ & \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|carry1[1]~0_combout\)) # 
-- (\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\))) ) ) ) # ( !\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|carry0[1]~0_combout\ & ( !\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\ & 
-- ( (\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry0[1]~0_combout\ & ((!\Cin~input_o\) # ((\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\) # 
-- (\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|carry1[1]~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001100110011000000010011001100000000000100000000000000110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Cin~input_o\,
	datab => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_carry0[1]~0_combout\,
	datac => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_carry1[1]~0_combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_carry1[1]~0_combout\,
	datae => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_carry0[1]~0_combout\,
	dataf => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_carry0[1]~0_combout\,
	combout => \c[6]~3DUPLICATE_combout\);

-- Location: LABCELL_X58_Y18_N38
\c[6]~2DUPLICATE\ : arriaii_lcell_comb
-- Equation(s):
-- \c[6]~2DUPLICATE_combout\ = ( \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\ & ( !\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry1[1]~0_combout\ & ( 
-- (!\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\) # ((!\Cin~input_o\ & (!\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|carry0[1]~0_combout\)) # (\Cin~input_o\ & 
-- ((\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|carry1[1]~0_combout\)))) ) ) ) # ( !\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\ & ( !\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry1[1]~0_combout\ 
-- & ( (!\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\ & ((!\Cin~input_o\ & (\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|carry0[1]~0_combout\)) # (\Cin~input_o\ & 
-- ((!\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|carry1[1]~0_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111010000000000111111111000101100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_carry0[1]~0_combout\,
	datab => \ALT_INV_Cin~input_o\,
	datac => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_carry1[1]~0_combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_carry1[1]~0_combout\,
	datae => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_carry0[1]~0_combout\,
	dataf => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_carry1[1]~0_combout\,
	combout => \c[6]~2DUPLICATE_combout\);

-- Location: LABCELL_X58_Y22_N10
\S~8\ : arriaii_lcell_comb
-- Equation(s):
-- \S~8_combout\ = ( \c[6]~3DUPLICATE_combout\ & ( \c[6]~2DUPLICATE_combout\ & ( !\B[8]~input_o\ $ (!\A[8]~input_o\ $ (!\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|carry1[1]~0_combout\)) ) ) ) # ( !\c[6]~3DUPLICATE_combout\ & ( 
-- \c[6]~2DUPLICATE_combout\ & ( !\B[8]~input_o\ $ (!\A[8]~input_o\ $ (!\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|carry1[1]~0_combout\)) ) ) ) # ( \c[6]~3DUPLICATE_combout\ & ( !\c[6]~2DUPLICATE_combout\ & ( !\B[8]~input_o\ $ (!\A[8]~input_o\ 
-- $ (!\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|carry1[1]~0_combout\)) ) ) ) # ( !\c[6]~3DUPLICATE_combout\ & ( !\c[6]~2DUPLICATE_combout\ & ( !\B[8]~input_o\ $ (!\A[8]~input_o\ $ 
-- (\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|carry0[1]~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101101001100110010110011010011001011001101001100101100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[8]~input_o\,
	datab => \ALT_INV_A[8]~input_o\,
	datac => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_carry0[1]~0_combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_carry1[1]~0_combout\,
	datae => \ALT_INV_c[6]~3DUPLICATE_combout\,
	dataf => \ALT_INV_c[6]~2DUPLICATE_combout\,
	combout => \S~8_combout\);

-- Location: IOIBUF_X59_Y10_N94
\A[9]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

-- Location: IOIBUF_X59_Y13_N32
\B[9]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(9),
	o => \B[9]~input_o\);

-- Location: LABCELL_X58_Y18_N16
\c[8]~4\ : arriaii_lcell_comb
-- Equation(s):
-- \c[8]~4_combout\ = ( \c[6]~3_combout\ & ( !\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|carry1[1]~0_combout\ ) ) # ( !\c[6]~3_combout\ & ( (!\c[6]~2DUPLICATE_combout\ & 
-- ((\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|carry0[1]~0_combout\))) # (\c[6]~2DUPLICATE_combout\ & (!\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|carry1[1]~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101011111010000010101111101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_carry1[1]~0_combout\,
	datac => \ALT_INV_c[6]~2DUPLICATE_combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_carry0[1]~0_combout\,
	dataf => \ALT_INV_c[6]~3_combout\,
	combout => \c[8]~4_combout\);

-- Location: LABCELL_X58_Y18_N10
\S~9\ : arriaii_lcell_comb
-- Equation(s):
-- \S~9_combout\ = ( \A[8]~input_o\ & ( \c[8]~4_combout\ & ( !\A[9]~input_o\ $ (\B[9]~input_o\) ) ) ) # ( !\A[8]~input_o\ & ( \c[8]~4_combout\ & ( !\A[9]~input_o\ $ (!\B[9]~input_o\ $ (\B[8]~input_o\)) ) ) ) # ( \A[8]~input_o\ & ( !\c[8]~4_combout\ & ( 
-- !\A[9]~input_o\ $ (!\B[9]~input_o\ $ (\B[8]~input_o\)) ) ) ) # ( !\A[8]~input_o\ & ( !\c[8]~4_combout\ & ( !\A[9]~input_o\ $ (!\B[9]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010010110101010010101011010101001011010010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[9]~input_o\,
	datac => \ALT_INV_B[9]~input_o\,
	datad => \ALT_INV_B[8]~input_o\,
	datae => \ALT_INV_A[8]~input_o\,
	dataf => \ALT_INV_c[8]~4_combout\,
	combout => \S~9_combout\);

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

-- Location: IOIBUF_X59_Y30_N94
\A[10]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

-- Location: MLABCELL_X57_Y18_N30
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|carry1[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|carry1[1]~0_combout\ = ( !\A[8]~input_o\ & ( \B[9]~input_o\ & ( (!\B[8]~input_o\ & !\A[9]~input_o\) ) ) ) # ( \A[8]~input_o\ & ( !\B[9]~input_o\ & ( !\A[9]~input_o\ ) ) ) # ( !\A[8]~input_o\ & ( 
-- !\B[9]~input_o\ & ( (!\B[8]~input_o\) # (!\A[9]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110000111111110000000011110000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[8]~input_o\,
	datad => \ALT_INV_A[9]~input_o\,
	datae => \ALT_INV_A[8]~input_o\,
	dataf => \ALT_INV_B[9]~input_o\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|carry1[1]~0_combout\);

-- Location: MLABCELL_X57_Y18_N34
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|carry0[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|carry0[1]~0_combout\ = ( \A[8]~input_o\ & ( \B[9]~input_o\ & ( (\A[9]~input_o\) # (\B[8]~input_o\) ) ) ) # ( !\A[8]~input_o\ & ( \B[9]~input_o\ & ( \A[9]~input_o\ ) ) ) # ( \A[8]~input_o\ & ( 
-- !\B[9]~input_o\ & ( (\B[8]~input_o\ & \A[9]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[8]~input_o\,
	datad => \ALT_INV_A[9]~input_o\,
	datae => \ALT_INV_A[8]~input_o\,
	dataf => \ALT_INV_B[9]~input_o\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|carry0[1]~0_combout\);

-- Location: MLABCELL_X57_Y18_N22
\c[10]~5DUPLICATE\ : arriaii_lcell_comb
-- Equation(s):
-- \c[10]~5DUPLICATE_combout\ = ( \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|carry1[1]~0_combout\ & ( \c[6]~3DUPLICATE_combout\ & ( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|carry0[1]~0_combout\ ) ) ) # ( 
-- !\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|carry1[1]~0_combout\ & ( \c[6]~3DUPLICATE_combout\ & ( !\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|carry1[1]~0_combout\ ) ) ) # ( 
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|carry1[1]~0_combout\ & ( !\c[6]~3DUPLICATE_combout\ & ( (!\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|carry0[1]~0_combout\ & 
-- (((\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|carry0[1]~0_combout\)))) # (\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|carry0[1]~0_combout\ & ((!\c[6]~2_combout\ & 
-- (!\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|carry1[1]~0_combout\)) # (\c[6]~2_combout\ & ((\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|carry0[1]~0_combout\))))) ) ) ) # ( 
-- !\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|carry1[1]~0_combout\ & ( !\c[6]~3DUPLICATE_combout\ & ( (!\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|carry0[1]~0_combout\ & ((!\c[6]~2_combout\ & 
-- ((\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|carry0[1]~0_combout\))) # (\c[6]~2_combout\ & (!\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|carry1[1]~0_combout\)))) # 
-- (\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|carry0[1]~0_combout\ & (!\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|carry1[1]~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100111011001100010011100000111111001100110011000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_carry0[1]~0_combout\,
	datab => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_carry1[1]~0_combout\,
	datac => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_carry0[1]~0_combout\,
	datad => \ALT_INV_c[6]~2_combout\,
	datae => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_carry1[1]~0_combout\,
	dataf => \ALT_INV_c[6]~3DUPLICATE_combout\,
	combout => \c[10]~5DUPLICATE_combout\);

-- Location: LABCELL_X58_Y21_N10
\S~10\ : arriaii_lcell_comb
-- Equation(s):
-- \S~10_combout\ = ( \A[10]~input_o\ & ( \c[10]~5DUPLICATE_combout\ & ( \B[10]~input_o\ ) ) ) # ( !\A[10]~input_o\ & ( \c[10]~5DUPLICATE_combout\ & ( !\B[10]~input_o\ ) ) ) # ( \A[10]~input_o\ & ( !\c[10]~5DUPLICATE_combout\ & ( !\B[10]~input_o\ ) ) ) # ( 
-- !\A[10]~input_o\ & ( !\c[10]~5DUPLICATE_combout\ & ( \B[10]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111111111110000000011111111000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_B[10]~input_o\,
	datae => \ALT_INV_A[10]~input_o\,
	dataf => \ALT_INV_c[10]~5DUPLICATE_combout\,
	combout => \S~10_combout\);

-- Location: IOIBUF_X59_Y10_N63
\B[11]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(11),
	o => \B[11]~input_o\);

-- Location: IOIBUF_X59_Y6_N1
\A[11]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(11),
	o => \A[11]~input_o\);

-- Location: MLABCELL_X57_Y18_N20
\c[10]~5\ : arriaii_lcell_comb
-- Equation(s):
-- \c[10]~5_combout\ = ( \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|carry1[1]~0_combout\ & ( \c[6]~3DUPLICATE_combout\ & ( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|carry0[1]~0_combout\ ) ) ) # ( 
-- !\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|carry1[1]~0_combout\ & ( \c[6]~3DUPLICATE_combout\ & ( !\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|carry1[1]~0_combout\ ) ) ) # ( 
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|carry1[1]~0_combout\ & ( !\c[6]~3DUPLICATE_combout\ & ( (!\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|carry0[1]~0_combout\ & 
-- (((\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|carry0[1]~0_combout\)))) # (\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|carry0[1]~0_combout\ & ((!\c[6]~2_combout\ & 
-- (!\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|carry1[1]~0_combout\)) # (\c[6]~2_combout\ & ((\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|carry0[1]~0_combout\))))) ) ) ) # ( 
-- !\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|carry1[1]~0_combout\ & ( !\c[6]~3DUPLICATE_combout\ & ( (!\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|carry0[1]~0_combout\ & ((!\c[6]~2_combout\ & 
-- ((\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|carry0[1]~0_combout\))) # (\c[6]~2_combout\ & (!\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|carry1[1]~0_combout\)))) # 
-- (\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|carry0[1]~0_combout\ & (!\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|carry1[1]~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110011101100010000001110111111001100110011000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_carry0[1]~0_combout\,
	datab => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_carry1[1]~0_combout\,
	datac => \ALT_INV_c[6]~2_combout\,
	datad => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_carry0[1]~0_combout\,
	datae => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_carry1[1]~0_combout\,
	dataf => \ALT_INV_c[6]~3DUPLICATE_combout\,
	combout => \c[10]~5_combout\);

-- Location: LABCELL_X58_Y18_N30
\S~11\ : arriaii_lcell_comb
-- Equation(s):
-- \S~11_combout\ = ( \A[11]~input_o\ & ( \c[10]~5_combout\ & ( !\B[11]~input_o\ $ (((\A[10]~input_o\) # (\B[10]~input_o\))) ) ) ) # ( !\A[11]~input_o\ & ( \c[10]~5_combout\ & ( !\B[11]~input_o\ $ (((!\B[10]~input_o\ & !\A[10]~input_o\))) ) ) ) # ( 
-- \A[11]~input_o\ & ( !\c[10]~5_combout\ & ( !\B[11]~input_o\ $ (((\B[10]~input_o\ & \A[10]~input_o\))) ) ) ) # ( !\A[11]~input_o\ & ( !\c[10]~5_combout\ & ( !\B[11]~input_o\ $ (((!\B[10]~input_o\) # (!\A[10]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100111100111100001100001100111100111100001100001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[10]~input_o\,
	datac => \ALT_INV_B[11]~input_o\,
	datad => \ALT_INV_A[10]~input_o\,
	datae => \ALT_INV_A[11]~input_o\,
	dataf => \ALT_INV_c[10]~5_combout\,
	combout => \S~11_combout\);

-- Location: IOIBUF_X59_Y26_N94
\B[12]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(12),
	o => \B[12]~input_o\);

-- Location: IOIBUF_X59_Y26_N63
\A[12]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(12),
	o => \A[12]~input_o\);

-- Location: MLABCELL_X57_Y18_N14
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\ = ( \B[10]~input_o\ & ( \B[11]~input_o\ & ( (\A[11]~input_o\) # (\A[10]~input_o\) ) ) ) # ( !\B[10]~input_o\ & ( \B[11]~input_o\ & ( \A[11]~input_o\ ) ) ) # ( \B[10]~input_o\ & 
-- ( !\B[11]~input_o\ & ( (\A[10]~input_o\ & \A[11]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[10]~input_o\,
	datad => \ALT_INV_A[11]~input_o\,
	datae => \ALT_INV_B[10]~input_o\,
	dataf => \ALT_INV_B[11]~input_o\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\);

-- Location: MLABCELL_X57_Y18_N8
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\ = ( \B[10]~input_o\ & ( \B[11]~input_o\ ) ) # ( !\B[10]~input_o\ & ( \B[11]~input_o\ & ( (\A[10]~input_o\) # (\A[11]~input_o\) ) ) ) # ( \B[10]~input_o\ & ( !\B[11]~input_o\ & 
-- ( \A[11]~input_o\ ) ) ) # ( !\B[10]~input_o\ & ( !\B[11]~input_o\ & ( (\A[11]~input_o\ & \A[10]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000011110000111100001111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[11]~input_o\,
	datad => \ALT_INV_A[10]~input_o\,
	datae => \ALT_INV_B[10]~input_o\,
	dataf => \ALT_INV_B[11]~input_o\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\);

-- Location: LABCELL_X58_Y21_N20
\S~12\ : arriaii_lcell_comb
-- Equation(s):
-- \S~12_combout\ = ( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\ & ( \c[10]~5DUPLICATE_combout\ & ( !\B[12]~input_o\ $ (\A[12]~input_o\) ) ) ) # ( 
-- !\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\ & ( \c[10]~5DUPLICATE_combout\ & ( !\B[12]~input_o\ $ (!\A[12]~input_o\) ) ) ) # ( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\ & ( 
-- !\c[10]~5DUPLICATE_combout\ & ( !\B[12]~input_o\ $ (!\A[12]~input_o\ $ (\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\)) ) ) ) # ( !\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\ & ( 
-- !\c[10]~5DUPLICATE_combout\ & ( !\B[12]~input_o\ $ (!\A[12]~input_o\ $ (\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011000011001111001100001100111100001111001100001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[12]~input_o\,
	datac => \ALT_INV_A[12]~input_o\,
	datad => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_carry0[1]~0_combout\,
	datae => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_carry1[1]~0_combout\,
	dataf => \ALT_INV_c[10]~5DUPLICATE_combout\,
	combout => \S~12_combout\);

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

-- Location: IOIBUF_X59_Y30_N63
\B[13]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(13),
	o => \B[13]~input_o\);

-- Location: MLABCELL_X57_Y18_N26
\S~18\ : arriaii_lcell_comb
-- Equation(s):
-- \S~18_combout\ = ( !\c[10]~5DUPLICATE_combout\ & ( !\A[13]~input_o\ $ (!\B[13]~input_o\ $ (((!\B[12]~input_o\ & (\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\ & \A[12]~input_o\)) # (\B[12]~input_o\ & ((\A[12]~input_o\) # 
-- (\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\)))))) ) ) # ( \c[10]~5DUPLICATE_combout\ & ( !\A[13]~input_o\ $ (!\B[13]~input_o\ $ (((!\B[12]~input_o\ & 
-- (\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\ & \A[12]~input_o\)) # (\B[12]~input_o\ & ((\A[12]~input_o\) # (\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0101011001101010010101100110101010101001100101011010100110010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[13]~input_o\,
	datab => \ALT_INV_B[12]~input_o\,
	datac => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_carry1[1]~0_combout\,
	datad => \ALT_INV_A[12]~input_o\,
	datae => \ALT_INV_c[10]~5DUPLICATE_combout\,
	dataf => \ALT_INV_B[13]~input_o\,
	datag => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_carry0[1]~0_combout\,
	combout => \S~18_combout\);

-- Location: MLABCELL_X57_Y18_N0
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|carry1[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|carry1[1]~0_combout\ = ( \B[13]~input_o\ & ( \A[13]~input_o\ ) ) # ( !\B[13]~input_o\ & ( \A[13]~input_o\ & ( (\B[12]~input_o\) # (\A[12]~input_o\) ) ) ) # ( \B[13]~input_o\ & ( !\A[13]~input_o\ & 
-- ( (\B[12]~input_o\) # (\A[12]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011111111111100001111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[12]~input_o\,
	datad => \ALT_INV_B[12]~input_o\,
	datae => \ALT_INV_B[13]~input_o\,
	dataf => \ALT_INV_A[13]~input_o\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|carry1[1]~0_combout\);

-- Location: IOIBUF_X59_Y23_N32
\B[14]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(14),
	o => \B[14]~input_o\);

-- Location: MLABCELL_X57_Y18_N10
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0DUPLICATE\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0DUPLICATE_combout\ = ( \B[10]~input_o\ & ( \B[11]~input_o\ ) ) # ( !\B[10]~input_o\ & ( \B[11]~input_o\ & ( (\A[11]~input_o\) # (\A[10]~input_o\) ) ) ) # ( \B[10]~input_o\ & ( 
-- !\B[11]~input_o\ & ( \A[11]~input_o\ ) ) ) # ( !\B[10]~input_o\ & ( !\B[11]~input_o\ & ( (\A[10]~input_o\ & \A[11]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000001111111100001111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[10]~input_o\,
	datad => \ALT_INV_A[11]~input_o\,
	datae => \ALT_INV_B[10]~input_o\,
	dataf => \ALT_INV_B[11]~input_o\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0DUPLICATE_combout\);

-- Location: IOIBUF_X59_Y25_N32
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
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|carry0[1]~0DUPLICATE\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|carry0[1]~0DUPLICATE_combout\ = ( \B[12]~input_o\ & ( \A[13]~input_o\ & ( (\B[13]~input_o\) # (\A[12]~input_o\) ) ) ) # ( !\B[12]~input_o\ & ( \A[13]~input_o\ & ( \B[13]~input_o\ ) ) ) # ( 
-- \B[12]~input_o\ & ( !\A[13]~input_o\ & ( (\A[12]~input_o\ & \B[13]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[12]~input_o\,
	datad => \ALT_INV_B[13]~input_o\,
	datae => \ALT_INV_B[12]~input_o\,
	dataf => \ALT_INV_A[13]~input_o\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|carry0[1]~0DUPLICATE_combout\);

-- Location: MLABCELL_X57_Y18_N12
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0DUPLICATE\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0DUPLICATE_combout\ = ( \B[10]~input_o\ & ( \B[11]~input_o\ & ( (\A[10]~input_o\) # (\A[11]~input_o\) ) ) ) # ( !\B[10]~input_o\ & ( \B[11]~input_o\ & ( \A[11]~input_o\ ) ) ) # ( 
-- \B[10]~input_o\ & ( !\B[11]~input_o\ & ( (\A[11]~input_o\ & \A[10]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100001111000011110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[11]~input_o\,
	datad => \ALT_INV_A[10]~input_o\,
	datae => \ALT_INV_B[10]~input_o\,
	dataf => \ALT_INV_B[11]~input_o\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0DUPLICATE_combout\);

-- Location: LABCELL_X58_Y18_N24
\S~14\ : arriaii_lcell_comb
-- Equation(s):
-- \S~14_combout\ = ( !\c[10]~5DUPLICATE_combout\ & ( !\B[14]~input_o\ $ (!\A[14]~input_o\ $ (((!\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0DUPLICATE_combout\ & 
-- ((\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|carry0[1]~0DUPLICATE_combout\))) # (\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0DUPLICATE_combout\ & 
-- (\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|carry1[1]~0_combout\))))) ) ) # ( \c[10]~5DUPLICATE_combout\ & ( !\B[14]~input_o\ $ (!\A[14]~input_o\ $ (((!\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0DUPLICATE_combout\ 
-- & ((\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|carry0[1]~0DUPLICATE_combout\))) # (\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0DUPLICATE_combout\ & 
-- (\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|carry1[1]~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0011011011001001001101101100100111000110001110011100011000111001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_carry1[1]~0_combout\,
	datab => \ALT_INV_B[14]~input_o\,
	datac => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_carry1[1]~0DUPLICATE_combout\,
	datad => \ALT_INV_A[14]~input_o\,
	datae => \ALT_INV_c[10]~5DUPLICATE_combout\,
	dataf => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_carry0[1]~0DUPLICATE_combout\,
	datag => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_carry0[1]~0DUPLICATE_combout\,
	combout => \S~14_combout\);

-- Location: IOIBUF_X59_Y23_N94
\B[15]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(15),
	o => \B[15]~input_o\);

-- Location: IOIBUF_X59_Y9_N94
\A[15]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(15),
	o => \A[15]~input_o\);

-- Location: MLABCELL_X57_Y18_N36
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|carry0[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|carry0[1]~0_combout\ = ( \B[12]~input_o\ & ( \A[13]~input_o\ & ( (\A[12]~input_o\) # (\B[13]~input_o\) ) ) ) # ( !\B[12]~input_o\ & ( \A[13]~input_o\ & ( \B[13]~input_o\ ) ) ) # ( \B[12]~input_o\ & 
-- ( !\A[13]~input_o\ & ( (\B[13]~input_o\ & \A[12]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100001111000011110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[13]~input_o\,
	datad => \ALT_INV_A[12]~input_o\,
	datae => \ALT_INV_B[12]~input_o\,
	dataf => \ALT_INV_A[13]~input_o\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|carry0[1]~0_combout\);

-- Location: MLABCELL_X57_Y18_N16
\c[14]~6\ : arriaii_lcell_comb
-- Equation(s):
-- \c[14]~6_combout\ = ( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0DUPLICATE_combout\ & ( \c[10]~5_combout\ & ( (!\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0DUPLICATE_combout\ & 
-- (\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|carry0[1]~0_combout\)) # (\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0DUPLICATE_combout\ & 
-- ((\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|carry1[1]~0_combout\))) ) ) ) # ( !\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0DUPLICATE_combout\ & ( \c[10]~5_combout\ & ( 
-- (!\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0DUPLICATE_combout\ & (\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|carry0[1]~0_combout\)) # 
-- (\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0DUPLICATE_combout\ & ((\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|carry1[1]~0_combout\))) ) ) ) # ( 
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0DUPLICATE_combout\ & ( !\c[10]~5_combout\ & ( \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|carry1[1]~0_combout\ ) ) ) # ( 
-- !\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0DUPLICATE_combout\ & ( !\c[10]~5_combout\ & ( \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|carry0[1]~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000011110000111100110011000011110011001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_carry0[1]~0_combout\,
	datac => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_carry1[1]~0_combout\,
	datad => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_carry1[1]~0DUPLICATE_combout\,
	datae => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_carry0[1]~0DUPLICATE_combout\,
	dataf => \ALT_INV_c[10]~5_combout\,
	combout => \c[14]~6_combout\);

-- Location: LABCELL_X58_Y19_N10
\S~13\ : arriaii_lcell_comb
-- Equation(s):
-- \S~13_combout\ = ( \A[15]~input_o\ & ( \c[14]~6_combout\ & ( !\B[15]~input_o\ $ (((\A[14]~input_o\) # (\B[14]~input_o\))) ) ) ) # ( !\A[15]~input_o\ & ( \c[14]~6_combout\ & ( !\B[15]~input_o\ $ (((!\B[14]~input_o\ & !\A[14]~input_o\))) ) ) ) # ( 
-- \A[15]~input_o\ & ( !\c[14]~6_combout\ & ( !\B[15]~input_o\ $ (((\B[14]~input_o\ & \A[14]~input_o\))) ) ) ) # ( !\A[15]~input_o\ & ( !\c[14]~6_combout\ & ( !\B[15]~input_o\ $ (((!\B[14]~input_o\) # (!\A[14]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111111010111110100000010101011111101000001010000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[14]~input_o\,
	datac => \ALT_INV_A[14]~input_o\,
	datad => \ALT_INV_B[15]~input_o\,
	datae => \ALT_INV_A[15]~input_o\,
	dataf => \ALT_INV_c[14]~6_combout\,
	combout => \S~13_combout\);

-- Location: LABCELL_X58_Y19_N34
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|carry0[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|carry0[1]~0_combout\ = ( \A[15]~input_o\ & ( \B[15]~input_o\ ) ) # ( !\A[15]~input_o\ & ( \B[15]~input_o\ & ( (\A[14]~input_o\ & \B[14]~input_o\) ) ) ) # ( \A[15]~input_o\ & ( !\B[15]~input_o\ & ( 
-- (\A[14]~input_o\ & \B[14]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[14]~input_o\,
	datad => \ALT_INV_B[14]~input_o\,
	datae => \ALT_INV_A[15]~input_o\,
	dataf => \ALT_INV_B[15]~input_o\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|carry0[1]~0_combout\);

-- Location: LABCELL_X58_Y19_N12
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|carry1[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|carry1[1]~0_combout\ = ( !\A[15]~input_o\ & ( \B[15]~input_o\ & ( (!\B[14]~input_o\ & !\A[14]~input_o\) ) ) ) # ( \A[15]~input_o\ & ( !\B[15]~input_o\ & ( (!\B[14]~input_o\ & !\A[14]~input_o\) ) ) 
-- ) # ( !\A[15]~input_o\ & ( !\B[15]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111100000000000011110000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[14]~input_o\,
	datad => \ALT_INV_A[14]~input_o\,
	datae => \ALT_INV_A[15]~input_o\,
	dataf => \ALT_INV_B[15]~input_o\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|carry1[1]~0_combout\);

-- Location: LABCELL_X58_Y19_N30
\c~7\ : arriaii_lcell_comb
-- Equation(s):
-- \c~7_combout\ = ( !\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|carry1[1]~0_combout\ & ( \c[14]~6_combout\ ) ) # ( \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|carry1[1]~0_combout\ & ( !\c[14]~6_combout\ & ( 
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|carry0[1]~0_combout\ ) ) ) # ( !\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|carry1[1]~0_combout\ & ( !\c[14]~6_combout\ & ( 
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|carry0[1]~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_carry0[1]~0_combout\,
	datae => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_carry1[1]~0_combout\,
	dataf => \ALT_INV_c[14]~6_combout\,
	combout => \c~7_combout\);

-- Location: LABCELL_X58_Y19_N2
\Ovfl~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Ovfl~0_combout\ = ( \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|carry1[1]~0_combout\ & ( \c[14]~6_combout\ & ( (\B[14]~input_o\) # (\A[14]~input_o\) ) ) ) # ( !\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|carry1[1]~0_combout\ 
-- & ( \c[14]~6_combout\ & ( (!\A[14]~input_o\ & !\B[14]~input_o\) ) ) ) # ( \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|carry1[1]~0_combout\ & ( !\c[14]~6_combout\ & ( 
-- !\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|carry0[1]~0_combout\ $ (((!\A[14]~input_o\) # (!\B[14]~input_o\))) ) ) ) # ( !\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|carry1[1]~0_combout\ & ( !\c[14]~6_combout\ & ( 
-- !\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|carry0[1]~0_combout\ $ (((!\A[14]~input_o\) # (!\B[14]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100111100000011110011110011001100000000000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[14]~input_o\,
	datac => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_carry0[1]~0_combout\,
	datad => \ALT_INV_B[14]~input_o\,
	datae => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_carry1[1]~0_combout\,
	dataf => \ALT_INV_c[14]~6_combout\,
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


