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

-- DATE "11/21/2026 12:04:39"

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
	A : IN std_logic_vector(31 DOWNTO 0);
	B : IN std_logic_vector(31 DOWNTO 0);
	S : OUT std_logic_vector(31 DOWNTO 0);
	Cin : IN std_logic;
	Cout : OUT std_logic;
	Ovfl : OUT std_logic
	);
END Adder;

-- Design Ports Information
-- S[0]	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[1]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[2]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[3]	=>  Location: PIN_AB2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[4]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[5]	=>  Location: PIN_AC2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[6]	=>  Location: PIN_AC3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[7]	=>  Location: PIN_AA4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[8]	=>  Location: PIN_AG9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[9]	=>  Location: PIN_AH4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[10]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[11]	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[12]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[13]	=>  Location: PIN_Y12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[14]	=>  Location: PIN_AC13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[15]	=>  Location: PIN_AE9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[16]	=>  Location: PIN_AE3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[17]	=>  Location: PIN_AH2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[18]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[19]	=>  Location: PIN_AE8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[20]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[21]	=>  Location: PIN_AE4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[22]	=>  Location: PIN_AG3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[23]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[24]	=>  Location: PIN_AF3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[25]	=>  Location: PIN_AF2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[26]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[27]	=>  Location: PIN_AA6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[28]	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[29]	=>  Location: PIN_AD4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[30]	=>  Location: PIN_AH3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[31]	=>  Location: PIN_AF4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cout	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ovfl	=>  Location: PIN_AC5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_AC7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_W4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cin	=>  Location: PIN_AA3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_AD7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_AF1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_Y5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_AC4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_AC9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_AD9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_AD6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_AG1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_W12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[8]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[9]	=>  Location: PIN_AH6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_AF6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[10]	=>  Location: PIN_AF7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[11]	=>  Location: PIN_AF12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[11]	=>  Location: PIN_W11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[12]	=>  Location: PIN_AE6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[12]	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[13]	=>  Location: PIN_AF8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[13]	=>  Location: PIN_AF11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[14]	=>  Location: PIN_Y6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[14]	=>  Location: PIN_AC10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[15]	=>  Location: PIN_AC6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[15]	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[16]	=>  Location: PIN_AD3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[16]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[17]	=>  Location: PIN_AE7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[17]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[18]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[18]	=>  Location: PIN_W6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[19]	=>  Location: PIN_AH8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[19]	=>  Location: PIN_W5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[20]	=>  Location: PIN_AC11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[20]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[21]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[21]	=>  Location: PIN_AF5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[22]	=>  Location: PIN_AE5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[22]	=>  Location: PIN_AG4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[23]	=>  Location: PIN_AE10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[23]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[24]	=>  Location: PIN_AE13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[24]	=>  Location: PIN_AC1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[25]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[25]	=>  Location: PIN_AH5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[26]	=>  Location: PIN_AF13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[26]	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[27]	=>  Location: PIN_AB1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[27]	=>  Location: PIN_AG6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[28]	=>  Location: PIN_AD1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[28]	=>  Location: PIN_AH9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[29]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[29]	=>  Location: PIN_AE1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[30]	=>  Location: PIN_AH7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[30]	=>  Location: PIN_AB3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[31]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[31]	=>  Location: PIN_T6,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \Cin~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \S~0_combout\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \S~1_combout\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Recur:gPair[0]~0_combout\ : std_logic;
SIGNAL \c~0DUPLICATE_combout\ : std_logic;
SIGNAL \S~2_combout\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \S~3_combout\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|gPair~0_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|gPair~1_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:gPair[1]~0_combout\ : std_logic;
SIGNAL \c~0_combout\ : std_logic;
SIGNAL \c~1_combout\ : std_logic;
SIGNAL \S~4_combout\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gpre[4]~0_combout\ : std_logic;
SIGNAL \S~5_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:gPair[2]~0_combout\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[0]~0_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|gPair~0DUPLICATE_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Gpre~0_combout\ : std_logic;
SIGNAL \c~2_combout\ : std_logic;
SIGNAL \S~6_combout\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gpre[6]~1_combout\ : std_logic;
SIGNAL \S~7_combout\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \B[8]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:gPair[1]~0_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:gPair[0]~0DUPLICATE_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[0]~1_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:Inner|gPair~0_combout\ : std_logic;
SIGNAL \c~3_combout\ : std_logic;
SIGNAL \S~8_combout\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \B[9]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gpre[8]~2_combout\ : std_logic;
SIGNAL \S~9_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:gPair[4]~0_combout\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \B[10]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:pPair[2]~0_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Gpre~1_combout\ : std_logic;
SIGNAL \c~4_combout\ : std_logic;
SIGNAL \S~10_combout\ : std_logic;
SIGNAL \B[11]~input_o\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gpre[10]~3_combout\ : std_logic;
SIGNAL \S~11_combout\ : std_logic;
SIGNAL \B[12]~input_o\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:pPair[2]~1_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:pPair[2]~2_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:gPair[5]~0_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:gPair[2]~combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~0_combout\ : std_logic;
SIGNAL \S~12_combout\ : std_logic;
SIGNAL \B[13]~input_o\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gpre[12]~4_combout\ : std_logic;
SIGNAL \c~5_combout\ : std_logic;
SIGNAL \S~13_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:gPair[6]~0_combout\ : std_logic;
SIGNAL \B[14]~input_o\ : std_logic;
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:Inner|gPair~1_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Gpre~2_combout\ : std_logic;
SIGNAL \c~6_combout\ : std_logic;
SIGNAL \S~14_combout\ : std_logic;
SIGNAL \B[15]~input_o\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gpre[14]~5_combout\ : std_logic;
SIGNAL \S~15_combout\ : std_logic;
SIGNAL \A[16]~input_o\ : std_logic;
SIGNAL \B[16]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[1]~0_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|gPair~2_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[1]~0_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:Inner|gPair~2_combout\ : std_logic;
SIGNAL \c~7_combout\ : std_logic;
SIGNAL \S~16_combout\ : std_logic;
SIGNAL \A[17]~input_o\ : std_logic;
SIGNAL \B[17]~input_o\ : std_logic;
SIGNAL \c~8_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[1]~combout\ : std_logic;
SIGNAL \PrefixNetwork|Gpre[16]~13_combout\ : std_logic;
SIGNAL \S~17_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:gPair[8]~0_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Gpre~3_combout\ : std_logic;
SIGNAL \B[18]~input_o\ : std_logic;
SIGNAL \A[18]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Gpre~4_combout\ : std_logic;
SIGNAL \S~18_combout\ : std_logic;
SIGNAL \A[19]~input_o\ : std_logic;
SIGNAL \B[19]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gpre[18]~6_combout\ : std_logic;
SIGNAL \S~19_combout\ : std_logic;
SIGNAL \B[20]~input_o\ : std_logic;
SIGNAL \A[20]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Recur:gPair[8]~0DUPLICATE_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:gPair[4]~0_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:Inner|Ppre[4]~0_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~1DUPLICATE_combout\ : std_logic;
SIGNAL \S~20_combout\ : std_logic;
SIGNAL \B[21]~input_o\ : std_logic;
SIGNAL \A[21]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gpre[20]~7_combout\ : std_logic;
SIGNAL \S~21_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:Inner|gPair~3_combout\ : std_logic;
SIGNAL \A[22]~input_o\ : std_logic;
SIGNAL \B[22]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Recur:gPair[10]~0_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~1_combout\ : std_logic;
SIGNAL \c~9_combout\ : std_logic;
SIGNAL \S~22_combout\ : std_logic;
SIGNAL \B[23]~input_o\ : std_logic;
SIGNAL \A[23]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Recur:gPair[10]~0DUPLICATE_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gpre[22]~12_combout\ : std_logic;
SIGNAL \S~23_combout\ : std_logic;
SIGNAL \A[24]~input_o\ : std_logic;
SIGNAL \B[24]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|gPair~3_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[2]~0_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Gpre~0_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[2]~0DUPLICATE_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:Inner|gPair~4_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[2]~combout\ : std_logic;
SIGNAL \c~10_combout\ : std_logic;
SIGNAL \S~24_combout\ : std_logic;
SIGNAL \B[25]~input_o\ : std_logic;
SIGNAL \A[25]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Gpre~0DUPLICATE_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gpre[24]~8_combout\ : std_logic;
SIGNAL \S~25_combout\ : std_logic;
SIGNAL \A[26]~input_o\ : std_logic;
SIGNAL \B[26]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Recur:gPair[12]~0_combout\ : std_logic;
SIGNAL \c~11_combout\ : std_logic;
SIGNAL \S~26_combout\ : std_logic;
SIGNAL \A[27]~input_o\ : std_logic;
SIGNAL \B[27]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gpre[26]~11_combout\ : std_logic;
SIGNAL \S~27_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:pPair[6]~0_combout\ : std_logic;
SIGNAL \B[28]~input_o\ : std_logic;
SIGNAL \A[28]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:gPair[6]~0_combout\ : std_logic;
SIGNAL \S~28_combout\ : std_logic;
SIGNAL \A[29]~input_o\ : std_logic;
SIGNAL \B[29]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[2]~0DUPLICATE_combout\ : std_logic;
SIGNAL \c~12_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gpre[28]~10_combout\ : std_logic;
SIGNAL \S~29_combout\ : std_logic;
SIGNAL \B[30]~input_o\ : std_logic;
SIGNAL \A[30]~input_o\ : std_logic;
SIGNAL \c~13_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:gPair[14]~0_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Gpre~5_combout\ : std_logic;
SIGNAL \S~30_combout\ : std_logic;
SIGNAL \A[31]~input_o\ : std_logic;
SIGNAL \B[31]~input_o\ : std_logic;
SIGNAL \c~14_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gpre[30]~9_combout\ : std_logic;
SIGNAL \S~31_combout\ : std_logic;
SIGNAL \c~18_combout\ : std_logic;
SIGNAL \c~16_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[2]~0_combout\ : std_logic;
SIGNAL \c~15_combout\ : std_logic;
SIGNAL \c~17_combout\ : std_logic;
SIGNAL \Ovfl~0_combout\ : std_logic;
SIGNAL p : std_logic_vector(31 DOWNTO 0);
SIGNAL \PrefixNetwork|Recur:Inner|Recur:Inner|ALT_INV_Recur:gPair[2]~0DUPLICATE_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|ALT_INV_Gpre~0DUPLICATE_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:Inner|ALT_INV_Recur:pPair[2]~0DUPLICATE_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Recur:gPair[10]~0DUPLICATE_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:Inner|ALT_INV_Gpre~1DUPLICATE_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Recur:gPair[8]~0DUPLICATE_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|ALT_INV_gPair~0DUPLICATE_combout\ : std_logic;
SIGNAL \ALT_INV_c~0DUPLICATE_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Recur:gPair[0]~0DUPLICATE_combout\ : std_logic;
SIGNAL \ALT_INV_B[31]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[31]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[30]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[30]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[29]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[29]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[28]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[28]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[27]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[27]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[26]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[26]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[25]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[25]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[24]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[24]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[23]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[23]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[22]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[22]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[21]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[21]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[20]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[20]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[19]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[19]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[18]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[18]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[17]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[17]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[16]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[16]~input_o\ : std_logic;
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
SIGNAL \PrefixNetwork|Recur:Inner|ALT_INV_Recur:gPair[1]~0_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:Inner|ALT_INV_Recur:gPair[1]~0_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gpre[16]~13_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|ALT_INV_Recur:gPair[4]~0_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gpre[22]~12_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:Inner|ALT_INV_Recur:gPair[2]~0_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gpre[26]~11_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|ALT_INV_Recur:gPair[6]~0_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gpre[28]~10_combout\ : std_logic;
SIGNAL \ALT_INV_c~18_combout\ : std_logic;
SIGNAL \ALT_INV_c~17_combout\ : std_logic;
SIGNAL \ALT_INV_c~16_combout\ : std_logic;
SIGNAL \ALT_INV_c~15_combout\ : std_logic;
SIGNAL \ALT_INV_c~14_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gpre[30]~9_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|ALT_INV_Gpre~5_combout\ : std_logic;
SIGNAL \ALT_INV_c~13_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Recur:gPair[14]~0_combout\ : std_logic;
SIGNAL \ALT_INV_c~12_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|ALT_INV_Recur:pPair[6]~0_combout\ : std_logic;
SIGNAL ALT_INV_p : std_logic_vector(28 DOWNTO 18);
SIGNAL \ALT_INV_c~11_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Recur:gPair[12]~0_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gpre[24]~8_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:Inner|ALT_INV_Recur:gPair[2]~combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:Inner|ALT_INV_gPair~4_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|ALT_INV_Gpre~0_combout\ : std_logic;
SIGNAL \ALT_INV_c~10_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:Inner|ALT_INV_Recur:pPair[2]~0_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|ALT_INV_gPair~3_combout\ : std_logic;
SIGNAL \ALT_INV_c~9_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:Inner|ALT_INV_gPair~3_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Recur:gPair[10]~0_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gpre[20]~7_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:Inner|ALT_INV_Gpre~1_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:Inner|ALT_INV_Ppre[4]~0_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gpre[18]~6_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|ALT_INV_Gpre~4_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|ALT_INV_Gpre~3_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Recur:gPair[8]~0_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:Inner|ALT_INV_Recur:gPair[1]~combout\ : std_logic;
SIGNAL \ALT_INV_c~8_combout\ : std_logic;
SIGNAL \ALT_INV_c~7_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:Inner|ALT_INV_gPair~2_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:Inner|ALT_INV_Recur:pPair[1]~0_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|ALT_INV_gPair~2_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gpre[14]~5_combout\ : std_logic;
SIGNAL \ALT_INV_c~6_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|ALT_INV_Gpre~2_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:Inner|ALT_INV_gPair~1_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Recur:gPair[6]~0_combout\ : std_logic;
SIGNAL \ALT_INV_c~5_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gpre[12]~4_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:Inner|ALT_INV_Gpre~0_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|ALT_INV_Recur:pPair[2]~2_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|ALT_INV_Recur:gPair[2]~combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|ALT_INV_Recur:pPair[2]~1_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Recur:gPair[5]~0_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gpre[10]~3_combout\ : std_logic;
SIGNAL \ALT_INV_c~4_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|ALT_INV_Gpre~1_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|ALT_INV_Recur:pPair[2]~0_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Recur:gPair[4]~0_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gpre[8]~2_combout\ : std_logic;
SIGNAL \ALT_INV_c~3_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:Inner|ALT_INV_gPair~0_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:Inner|ALT_INV_Recur:pPair[0]~1_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gpre[6]~1_combout\ : std_logic;
SIGNAL \ALT_INV_c~2_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|ALT_INV_Gpre~0_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:Inner|ALT_INV_Recur:pPair[0]~0_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Recur:gPair[2]~0_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gpre[4]~0_combout\ : std_logic;
SIGNAL \ALT_INV_c~1_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|ALT_INV_gPair~1_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|ALT_INV_gPair~0_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Recur:gPair[1]~0_combout\ : std_logic;
SIGNAL \ALT_INV_c~0_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Recur:gPair[0]~0_combout\ : std_logic;

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
\PrefixNetwork|Recur:Inner|Recur:Inner|ALT_INV_Recur:gPair[2]~0DUPLICATE_combout\ <= NOT \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[2]~0DUPLICATE_combout\;
\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|ALT_INV_Gpre~0DUPLICATE_combout\ <= NOT \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Gpre~0DUPLICATE_combout\;
\PrefixNetwork|Recur:Inner|Recur:Inner|ALT_INV_Recur:pPair[2]~0DUPLICATE_combout\ <= NOT \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[2]~0DUPLICATE_combout\;
\PrefixNetwork|ALT_INV_Recur:gPair[10]~0DUPLICATE_combout\ <= NOT \PrefixNetwork|Recur:gPair[10]~0DUPLICATE_combout\;
\PrefixNetwork|Recur:Inner|Recur:Inner|ALT_INV_Gpre~1DUPLICATE_combout\ <= NOT \PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~1DUPLICATE_combout\;
\PrefixNetwork|ALT_INV_Recur:gPair[8]~0DUPLICATE_combout\ <= NOT \PrefixNetwork|Recur:gPair[8]~0DUPLICATE_combout\;
\PrefixNetwork|Recur:Inner|ALT_INV_gPair~0DUPLICATE_combout\ <= NOT \PrefixNetwork|Recur:Inner|gPair~0DUPLICATE_combout\;
\ALT_INV_c~0DUPLICATE_combout\ <= NOT \c~0DUPLICATE_combout\;
\PrefixNetwork|ALT_INV_Recur:gPair[0]~0DUPLICATE_combout\ <= NOT \PrefixNetwork|Recur:gPair[0]~0DUPLICATE_combout\;
\ALT_INV_B[31]~input_o\ <= NOT \B[31]~input_o\;
\ALT_INV_A[31]~input_o\ <= NOT \A[31]~input_o\;
\ALT_INV_B[30]~input_o\ <= NOT \B[30]~input_o\;
\ALT_INV_A[30]~input_o\ <= NOT \A[30]~input_o\;
\ALT_INV_B[29]~input_o\ <= NOT \B[29]~input_o\;
\ALT_INV_A[29]~input_o\ <= NOT \A[29]~input_o\;
\ALT_INV_B[28]~input_o\ <= NOT \B[28]~input_o\;
\ALT_INV_A[28]~input_o\ <= NOT \A[28]~input_o\;
\ALT_INV_B[27]~input_o\ <= NOT \B[27]~input_o\;
\ALT_INV_A[27]~input_o\ <= NOT \A[27]~input_o\;
\ALT_INV_B[26]~input_o\ <= NOT \B[26]~input_o\;
\ALT_INV_A[26]~input_o\ <= NOT \A[26]~input_o\;
\ALT_INV_B[25]~input_o\ <= NOT \B[25]~input_o\;
\ALT_INV_A[25]~input_o\ <= NOT \A[25]~input_o\;
\ALT_INV_B[24]~input_o\ <= NOT \B[24]~input_o\;
\ALT_INV_A[24]~input_o\ <= NOT \A[24]~input_o\;
\ALT_INV_B[23]~input_o\ <= NOT \B[23]~input_o\;
\ALT_INV_A[23]~input_o\ <= NOT \A[23]~input_o\;
\ALT_INV_B[22]~input_o\ <= NOT \B[22]~input_o\;
\ALT_INV_A[22]~input_o\ <= NOT \A[22]~input_o\;
\ALT_INV_B[21]~input_o\ <= NOT \B[21]~input_o\;
\ALT_INV_A[21]~input_o\ <= NOT \A[21]~input_o\;
\ALT_INV_B[20]~input_o\ <= NOT \B[20]~input_o\;
\ALT_INV_A[20]~input_o\ <= NOT \A[20]~input_o\;
\ALT_INV_B[19]~input_o\ <= NOT \B[19]~input_o\;
\ALT_INV_A[19]~input_o\ <= NOT \A[19]~input_o\;
\ALT_INV_B[18]~input_o\ <= NOT \B[18]~input_o\;
\ALT_INV_A[18]~input_o\ <= NOT \A[18]~input_o\;
\ALT_INV_B[17]~input_o\ <= NOT \B[17]~input_o\;
\ALT_INV_A[17]~input_o\ <= NOT \A[17]~input_o\;
\ALT_INV_B[16]~input_o\ <= NOT \B[16]~input_o\;
\ALT_INV_A[16]~input_o\ <= NOT \A[16]~input_o\;
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
\PrefixNetwork|Recur:Inner|ALT_INV_Recur:gPair[1]~0_combout\ <= NOT \PrefixNetwork|Recur:Inner|Recur:gPair[1]~0_combout\;
\PrefixNetwork|Recur:Inner|Recur:Inner|ALT_INV_Recur:gPair[1]~0_combout\ <= NOT \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[1]~0_combout\;
\PrefixNetwork|ALT_INV_Gpre[16]~13_combout\ <= NOT \PrefixNetwork|Gpre[16]~13_combout\;
\PrefixNetwork|Recur:Inner|ALT_INV_Recur:gPair[4]~0_combout\ <= NOT \PrefixNetwork|Recur:Inner|Recur:gPair[4]~0_combout\;
\PrefixNetwork|ALT_INV_Gpre[22]~12_combout\ <= NOT \PrefixNetwork|Gpre[22]~12_combout\;
\PrefixNetwork|Recur:Inner|Recur:Inner|ALT_INV_Recur:gPair[2]~0_combout\ <= NOT \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[2]~0_combout\;
\PrefixNetwork|ALT_INV_Gpre[26]~11_combout\ <= NOT \PrefixNetwork|Gpre[26]~11_combout\;
\PrefixNetwork|Recur:Inner|ALT_INV_Recur:gPair[6]~0_combout\ <= NOT \PrefixNetwork|Recur:Inner|Recur:gPair[6]~0_combout\;
\PrefixNetwork|ALT_INV_Gpre[28]~10_combout\ <= NOT \PrefixNetwork|Gpre[28]~10_combout\;
\ALT_INV_c~18_combout\ <= NOT \c~18_combout\;
\ALT_INV_c~17_combout\ <= NOT \c~17_combout\;
\ALT_INV_c~16_combout\ <= NOT \c~16_combout\;
\ALT_INV_c~15_combout\ <= NOT \c~15_combout\;
\ALT_INV_c~14_combout\ <= NOT \c~14_combout\;
\PrefixNetwork|ALT_INV_Gpre[30]~9_combout\ <= NOT \PrefixNetwork|Gpre[30]~9_combout\;
\PrefixNetwork|Recur:Inner|ALT_INV_Gpre~5_combout\ <= NOT \PrefixNetwork|Recur:Inner|Gpre~5_combout\;
\ALT_INV_c~13_combout\ <= NOT \c~13_combout\;
\PrefixNetwork|ALT_INV_Recur:gPair[14]~0_combout\ <= NOT \PrefixNetwork|Recur:gPair[14]~0_combout\;
\ALT_INV_c~12_combout\ <= NOT \c~12_combout\;
\PrefixNetwork|Recur:Inner|ALT_INV_Recur:pPair[6]~0_combout\ <= NOT \PrefixNetwork|Recur:Inner|Recur:pPair[6]~0_combout\;
ALT_INV_p(28) <= NOT p(28);
\ALT_INV_c~11_combout\ <= NOT \c~11_combout\;
\PrefixNetwork|ALT_INV_Recur:gPair[12]~0_combout\ <= NOT \PrefixNetwork|Recur:gPair[12]~0_combout\;
ALT_INV_p(26) <= NOT p(26);
\PrefixNetwork|ALT_INV_Gpre[24]~8_combout\ <= NOT \PrefixNetwork|Gpre[24]~8_combout\;
\PrefixNetwork|Recur:Inner|Recur:Inner|ALT_INV_Recur:gPair[2]~combout\ <= NOT \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[2]~combout\;
\PrefixNetwork|Recur:Inner|Recur:Inner|ALT_INV_gPair~4_combout\ <= NOT \PrefixNetwork|Recur:Inner|Recur:Inner|gPair~4_combout\;
\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|ALT_INV_Gpre~0_combout\ <= NOT \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Gpre~0_combout\;
\ALT_INV_c~10_combout\ <= NOT \c~10_combout\;
\PrefixNetwork|Recur:Inner|Recur:Inner|ALT_INV_Recur:pPair[2]~0_combout\ <= NOT \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[2]~0_combout\;
\PrefixNetwork|Recur:Inner|ALT_INV_gPair~3_combout\ <= NOT \PrefixNetwork|Recur:Inner|gPair~3_combout\;
\ALT_INV_c~9_combout\ <= NOT \c~9_combout\;
\PrefixNetwork|Recur:Inner|Recur:Inner|ALT_INV_gPair~3_combout\ <= NOT \PrefixNetwork|Recur:Inner|Recur:Inner|gPair~3_combout\;
\PrefixNetwork|ALT_INV_Recur:gPair[10]~0_combout\ <= NOT \PrefixNetwork|Recur:gPair[10]~0_combout\;
ALT_INV_p(22) <= NOT p(22);
\PrefixNetwork|ALT_INV_Gpre[20]~7_combout\ <= NOT \PrefixNetwork|Gpre[20]~7_combout\;
ALT_INV_p(21) <= NOT p(21);
\PrefixNetwork|Recur:Inner|Recur:Inner|ALT_INV_Gpre~1_combout\ <= NOT \PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~1_combout\;
\PrefixNetwork|Recur:Inner|Recur:Inner|ALT_INV_Ppre[4]~0_combout\ <= NOT \PrefixNetwork|Recur:Inner|Recur:Inner|Ppre[4]~0_combout\;
\PrefixNetwork|ALT_INV_Gpre[18]~6_combout\ <= NOT \PrefixNetwork|Gpre[18]~6_combout\;
\PrefixNetwork|Recur:Inner|ALT_INV_Gpre~4_combout\ <= NOT \PrefixNetwork|Recur:Inner|Gpre~4_combout\;
\PrefixNetwork|Recur:Inner|ALT_INV_Gpre~3_combout\ <= NOT \PrefixNetwork|Recur:Inner|Gpre~3_combout\;
\PrefixNetwork|ALT_INV_Recur:gPair[8]~0_combout\ <= NOT \PrefixNetwork|Recur:gPair[8]~0_combout\;
ALT_INV_p(18) <= NOT p(18);
\PrefixNetwork|Recur:Inner|Recur:Inner|ALT_INV_Recur:gPair[1]~combout\ <= NOT \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[1]~combout\;
\ALT_INV_c~8_combout\ <= NOT \c~8_combout\;
\ALT_INV_c~7_combout\ <= NOT \c~7_combout\;
\PrefixNetwork|Recur:Inner|Recur:Inner|ALT_INV_gPair~2_combout\ <= NOT \PrefixNetwork|Recur:Inner|Recur:Inner|gPair~2_combout\;
\PrefixNetwork|Recur:Inner|Recur:Inner|ALT_INV_Recur:pPair[1]~0_combout\ <= NOT \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[1]~0_combout\;
\PrefixNetwork|Recur:Inner|ALT_INV_gPair~2_combout\ <= NOT \PrefixNetwork|Recur:Inner|gPair~2_combout\;
\PrefixNetwork|ALT_INV_Gpre[14]~5_combout\ <= NOT \PrefixNetwork|Gpre[14]~5_combout\;
\ALT_INV_c~6_combout\ <= NOT \c~6_combout\;
\PrefixNetwork|Recur:Inner|ALT_INV_Gpre~2_combout\ <= NOT \PrefixNetwork|Recur:Inner|Gpre~2_combout\;
\PrefixNetwork|Recur:Inner|Recur:Inner|ALT_INV_gPair~1_combout\ <= NOT \PrefixNetwork|Recur:Inner|Recur:Inner|gPair~1_combout\;
\PrefixNetwork|ALT_INV_Recur:gPair[6]~0_combout\ <= NOT \PrefixNetwork|Recur:gPair[6]~0_combout\;
\ALT_INV_c~5_combout\ <= NOT \c~5_combout\;
\PrefixNetwork|ALT_INV_Gpre[12]~4_combout\ <= NOT \PrefixNetwork|Gpre[12]~4_combout\;
\PrefixNetwork|Recur:Inner|Recur:Inner|ALT_INV_Gpre~0_combout\ <= NOT \PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~0_combout\;
\PrefixNetwork|Recur:Inner|ALT_INV_Recur:pPair[2]~2_combout\ <= NOT \PrefixNetwork|Recur:Inner|Recur:pPair[2]~2_combout\;
\PrefixNetwork|Recur:Inner|ALT_INV_Recur:gPair[2]~combout\ <= NOT \PrefixNetwork|Recur:Inner|Recur:gPair[2]~combout\;
\PrefixNetwork|Recur:Inner|ALT_INV_Recur:pPair[2]~1_combout\ <= NOT \PrefixNetwork|Recur:Inner|Recur:pPair[2]~1_combout\;
\PrefixNetwork|ALT_INV_Recur:gPair[5]~0_combout\ <= NOT \PrefixNetwork|Recur:gPair[5]~0_combout\;
\PrefixNetwork|ALT_INV_Gpre[10]~3_combout\ <= NOT \PrefixNetwork|Gpre[10]~3_combout\;
\ALT_INV_c~4_combout\ <= NOT \c~4_combout\;
\PrefixNetwork|Recur:Inner|ALT_INV_Gpre~1_combout\ <= NOT \PrefixNetwork|Recur:Inner|Gpre~1_combout\;
\PrefixNetwork|Recur:Inner|ALT_INV_Recur:pPair[2]~0_combout\ <= NOT \PrefixNetwork|Recur:Inner|Recur:pPair[2]~0_combout\;
\PrefixNetwork|ALT_INV_Recur:gPair[4]~0_combout\ <= NOT \PrefixNetwork|Recur:gPair[4]~0_combout\;
\PrefixNetwork|ALT_INV_Gpre[8]~2_combout\ <= NOT \PrefixNetwork|Gpre[8]~2_combout\;
\ALT_INV_c~3_combout\ <= NOT \c~3_combout\;
\PrefixNetwork|Recur:Inner|Recur:Inner|ALT_INV_gPair~0_combout\ <= NOT \PrefixNetwork|Recur:Inner|Recur:Inner|gPair~0_combout\;
\PrefixNetwork|Recur:Inner|Recur:Inner|ALT_INV_Recur:pPair[0]~1_combout\ <= NOT \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[0]~1_combout\;
\PrefixNetwork|ALT_INV_Gpre[6]~1_combout\ <= NOT \PrefixNetwork|Gpre[6]~1_combout\;
\ALT_INV_c~2_combout\ <= NOT \c~2_combout\;
\PrefixNetwork|Recur:Inner|ALT_INV_Gpre~0_combout\ <= NOT \PrefixNetwork|Recur:Inner|Gpre~0_combout\;
\PrefixNetwork|Recur:Inner|Recur:Inner|ALT_INV_Recur:pPair[0]~0_combout\ <= NOT \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[0]~0_combout\;
\PrefixNetwork|ALT_INV_Recur:gPair[2]~0_combout\ <= NOT \PrefixNetwork|Recur:gPair[2]~0_combout\;
\PrefixNetwork|ALT_INV_Gpre[4]~0_combout\ <= NOT \PrefixNetwork|Gpre[4]~0_combout\;
\ALT_INV_c~1_combout\ <= NOT \c~1_combout\;
\PrefixNetwork|Recur:Inner|ALT_INV_gPair~1_combout\ <= NOT \PrefixNetwork|Recur:Inner|gPair~1_combout\;
\PrefixNetwork|Recur:Inner|ALT_INV_gPair~0_combout\ <= NOT \PrefixNetwork|Recur:Inner|gPair~0_combout\;
\PrefixNetwork|ALT_INV_Recur:gPair[1]~0_combout\ <= NOT \PrefixNetwork|Recur:gPair[1]~0_combout\;
\ALT_INV_c~0_combout\ <= NOT \c~0_combout\;
\PrefixNetwork|ALT_INV_Recur:gPair[0]~0_combout\ <= NOT \PrefixNetwork|Recur:gPair[0]~0_combout\;

-- Location: IOOBUF_X59_Y18_N67
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

-- Location: IOOBUF_X59_Y18_N98
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

-- Location: IOOBUF_X59_Y18_N2
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

-- Location: IOOBUF_X59_Y13_N98
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

-- Location: IOOBUF_X59_Y13_N2
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

-- Location: IOOBUF_X59_Y10_N98
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

-- Location: IOOBUF_X59_Y10_N36
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

-- Location: IOOBUF_X59_Y10_N2
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

-- Location: IOOBUF_X32_Y0_N2
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

-- Location: IOOBUF_X35_Y0_N36
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

-- Location: IOOBUF_X33_Y0_N33
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

-- Location: IOOBUF_X33_Y0_N98
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

-- Location: IOOBUF_X37_Y0_N36
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

-- Location: IOOBUF_X45_Y0_N98
\S[13]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~13_combout\,
	devoe => ww_devoe,
	o => \S[13]~output_o\);

-- Location: IOOBUF_X37_Y0_N98
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

-- Location: IOOBUF_X41_Y0_N5
\S[15]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~15_combout\,
	devoe => ww_devoe,
	o => \S[15]~output_o\);

-- Location: IOOBUF_X59_Y9_N67
\S[16]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~16_combout\,
	devoe => ww_devoe,
	o => \S[16]~output_o\);

-- Location: IOOBUF_X50_Y0_N36
\S[17]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~17_combout\,
	devoe => ww_devoe,
	o => \S[17]~output_o\);

-- Location: IOOBUF_X39_Y0_N98
\S[18]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~18_combout\,
	devoe => ww_devoe,
	o => \S[18]~output_o\);

-- Location: IOOBUF_X43_Y0_N36
\S[19]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~19_combout\,
	devoe => ww_devoe,
	o => \S[19]~output_o\);

-- Location: IOOBUF_X59_Y6_N2
\S[20]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~20_combout\,
	devoe => ww_devoe,
	o => \S[20]~output_o\);

-- Location: IOOBUF_X50_Y0_N2
\S[21]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~21_combout\,
	devoe => ww_devoe,
	o => \S[21]~output_o\);

-- Location: IOOBUF_X48_Y0_N5
\S[22]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~22_combout\,
	devoe => ww_devoe,
	o => \S[22]~output_o\);

-- Location: IOOBUF_X47_Y0_N98
\S[23]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~23_combout\,
	devoe => ww_devoe,
	o => \S[23]~output_o\);

-- Location: IOOBUF_X52_Y0_N67
\S[24]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~24_combout\,
	devoe => ww_devoe,
	o => \S[24]~output_o\);

-- Location: IOOBUF_X52_Y0_N2
\S[25]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~25_combout\,
	devoe => ww_devoe,
	o => \S[25]~output_o\);

-- Location: IOOBUF_X52_Y0_N98
\S[26]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~26_combout\,
	devoe => ww_devoe,
	o => \S[26]~output_o\);

-- Location: IOOBUF_X59_Y4_N98
\S[27]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~27_combout\,
	devoe => ww_devoe,
	o => \S[27]~output_o\);

-- Location: IOOBUF_X52_Y0_N36
\S[28]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~28_combout\,
	devoe => ww_devoe,
	o => \S[28]~output_o\);

-- Location: IOOBUF_X59_Y4_N67
\S[29]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~29_combout\,
	devoe => ww_devoe,
	o => \S[29]~output_o\);

-- Location: IOOBUF_X50_Y0_N98
\S[30]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~30_combout\,
	devoe => ww_devoe,
	o => \S[30]~output_o\);

-- Location: IOOBUF_X50_Y0_N67
\S[31]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~31_combout\,
	devoe => ww_devoe,
	o => \S[31]~output_o\);

-- Location: IOOBUF_X59_Y4_N36
\Cout~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \c~17_combout\,
	devoe => ww_devoe,
	o => \Cout~output_o\);

-- Location: IOOBUF_X59_Y4_N2
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

-- Location: IOIBUF_X59_Y10_N63
\Cin~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cin,
	o => \Cin~input_o\);

-- Location: IOIBUF_X59_Y12_N63
\B[0]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X56_Y0_N1
\A[0]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: LABCELL_X55_Y10_N26
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

-- Location: IOIBUF_X59_Y9_N32
\A[1]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: IOIBUF_X56_Y0_N63
\B[1]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: LABCELL_X55_Y4_N34
\S~1\ : arriaii_lcell_comb
-- Equation(s):
-- \S~1_combout\ = ( \Cin~input_o\ & ( \A[0]~input_o\ & ( !\A[1]~input_o\ $ (\B[1]~input_o\) ) ) ) # ( !\Cin~input_o\ & ( \A[0]~input_o\ & ( !\B[0]~input_o\ $ (!\A[1]~input_o\ $ (\B[1]~input_o\)) ) ) ) # ( \Cin~input_o\ & ( !\A[0]~input_o\ & ( 
-- !\B[0]~input_o\ $ (!\A[1]~input_o\ $ (\B[1]~input_o\)) ) ) ) # ( !\Cin~input_o\ & ( !\A[0]~input_o\ & ( !\A[1]~input_o\ $ (!\B[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000001111001100001100111100110000111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[1]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \ALT_INV_Cin~input_o\,
	dataf => \ALT_INV_A[0]~input_o\,
	combout => \S~1_combout\);

-- Location: IOIBUF_X59_Y7_N63
\B[2]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: IOIBUF_X54_Y0_N1
\A[2]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: LABCELL_X55_Y4_N22
\PrefixNetwork|Recur:gPair[0]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:gPair[0]~0_combout\ = ( \A[0]~input_o\ & ( \B[0]~input_o\ & ( (\B[1]~input_o\) # (\A[1]~input_o\) ) ) ) # ( !\A[0]~input_o\ & ( \B[0]~input_o\ & ( (\A[1]~input_o\ & \B[1]~input_o\) ) ) ) # ( \A[0]~input_o\ & ( !\B[0]~input_o\ & ( 
-- (\A[1]~input_o\ & \B[1]~input_o\) ) ) ) # ( !\A[0]~input_o\ & ( !\B[0]~input_o\ & ( (\A[1]~input_o\ & \B[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000011110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[1]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \ALT_INV_A[0]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \PrefixNetwork|Recur:gPair[0]~0_combout\);

-- Location: LABCELL_X55_Y4_N2
\c~0DUPLICATE\ : arriaii_lcell_comb
-- Equation(s):
-- \c~0DUPLICATE_combout\ = ( \B[0]~input_o\ & ( \Cin~input_o\ & ( (!\A[0]~input_o\ & (!\B[1]~input_o\ $ (!\A[1]~input_o\))) ) ) ) # ( !\B[0]~input_o\ & ( \Cin~input_o\ & ( (\A[0]~input_o\ & (!\B[1]~input_o\ $ (!\A[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001111000011110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_A[1]~input_o\,
	datad => \ALT_INV_A[0]~input_o\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_Cin~input_o\,
	combout => \c~0DUPLICATE_combout\);

-- Location: LABCELL_X55_Y4_N38
\S~2\ : arriaii_lcell_comb
-- Equation(s):
-- \S~2_combout\ = ( \PrefixNetwork|Recur:gPair[0]~0_combout\ & ( \c~0DUPLICATE_combout\ & ( !\B[2]~input_o\ $ (\A[2]~input_o\) ) ) ) # ( !\PrefixNetwork|Recur:gPair[0]~0_combout\ & ( \c~0DUPLICATE_combout\ & ( !\B[2]~input_o\ $ (\A[2]~input_o\) ) ) ) # ( 
-- \PrefixNetwork|Recur:gPair[0]~0_combout\ & ( !\c~0DUPLICATE_combout\ & ( !\B[2]~input_o\ $ (\A[2]~input_o\) ) ) ) # ( !\PrefixNetwork|Recur:gPair[0]~0_combout\ & ( !\c~0DUPLICATE_combout\ & ( !\B[2]~input_o\ $ (!\A[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000111100000000111111110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[2]~input_o\,
	datad => \ALT_INV_A[2]~input_o\,
	datae => \PrefixNetwork|ALT_INV_Recur:gPair[0]~0_combout\,
	dataf => \ALT_INV_c~0DUPLICATE_combout\,
	combout => \S~2_combout\);

-- Location: IOIBUF_X59_Y7_N94
\B[3]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: IOIBUF_X55_Y0_N94
\A[3]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: LABCELL_X55_Y4_N26
\S~3\ : arriaii_lcell_comb
-- Equation(s):
-- \S~3_combout\ = ( \PrefixNetwork|Recur:gPair[0]~0_combout\ & ( \c~0DUPLICATE_combout\ & ( !\B[3]~input_o\ $ (!\A[3]~input_o\ $ (((\A[2]~input_o\) # (\B[2]~input_o\)))) ) ) ) # ( !\PrefixNetwork|Recur:gPair[0]~0_combout\ & ( \c~0DUPLICATE_combout\ & ( 
-- !\B[3]~input_o\ $ (!\A[3]~input_o\ $ (((\A[2]~input_o\) # (\B[2]~input_o\)))) ) ) ) # ( \PrefixNetwork|Recur:gPair[0]~0_combout\ & ( !\c~0DUPLICATE_combout\ & ( !\B[3]~input_o\ $ (!\A[3]~input_o\ $ (((\A[2]~input_o\) # (\B[2]~input_o\)))) ) ) ) # ( 
-- !\PrefixNetwork|Recur:gPair[0]~0_combout\ & ( !\c~0DUPLICATE_combout\ & ( !\B[3]~input_o\ $ (!\A[3]~input_o\ $ (((\B[2]~input_o\ & \A[2]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001101001011010011010010101101001101001010110100110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_A[3]~input_o\,
	datad => \ALT_INV_A[2]~input_o\,
	datae => \PrefixNetwork|ALT_INV_Recur:gPair[0]~0_combout\,
	dataf => \ALT_INV_c~0DUPLICATE_combout\,
	combout => \S~3_combout\);

-- Location: IOIBUF_X55_Y0_N32
\A[4]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: IOIBUF_X55_Y0_N1
\B[4]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: MLABCELL_X54_Y4_N12
\PrefixNetwork|Recur:Inner|gPair~0\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|gPair~0_combout\ = ( !\A[2]~input_o\ & ( \B[2]~input_o\ & ( !\B[3]~input_o\ $ (!\A[3]~input_o\) ) ) ) # ( \A[2]~input_o\ & ( !\B[2]~input_o\ & ( !\B[3]~input_o\ $ (!\A[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011111111000000001111111100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[3]~input_o\,
	datad => \ALT_INV_A[3]~input_o\,
	datae => \ALT_INV_A[2]~input_o\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \PrefixNetwork|Recur:Inner|gPair~0_combout\);

-- Location: MLABCELL_X54_Y4_N10
\PrefixNetwork|Recur:Inner|gPair~1\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|gPair~1_combout\ = ( \PrefixNetwork|Recur:gPair[0]~0_combout\ & ( \PrefixNetwork|Recur:Inner|gPair~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PrefixNetwork|Recur:Inner|ALT_INV_gPair~0_combout\,
	dataf => \PrefixNetwork|ALT_INV_Recur:gPair[0]~0_combout\,
	combout => \PrefixNetwork|Recur:Inner|gPair~1_combout\);

-- Location: MLABCELL_X54_Y4_N18
\PrefixNetwork|Recur:gPair[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:gPair[1]~0_combout\ = ( \B[2]~input_o\ & ( \B[3]~input_o\ & ( (\A[2]~input_o\) # (\A[3]~input_o\) ) ) ) # ( !\B[2]~input_o\ & ( \B[3]~input_o\ & ( \A[3]~input_o\ ) ) ) # ( \B[2]~input_o\ & ( !\B[3]~input_o\ & ( (\A[3]~input_o\ & 
-- \A[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100001111000011110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[3]~input_o\,
	datad => \ALT_INV_A[2]~input_o\,
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \PrefixNetwork|Recur:gPair[1]~0_combout\);

-- Location: LABCELL_X55_Y4_N0
\c~0\ : arriaii_lcell_comb
-- Equation(s):
-- \c~0_combout\ = ( \B[0]~input_o\ & ( \Cin~input_o\ & ( (!\A[0]~input_o\ & (!\B[1]~input_o\ $ (!\A[1]~input_o\))) ) ) ) # ( !\B[0]~input_o\ & ( \Cin~input_o\ & ( (\A[0]~input_o\ & (!\B[1]~input_o\ $ (!\A[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000011000011000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_A[0]~input_o\,
	datad => \ALT_INV_A[1]~input_o\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_Cin~input_o\,
	combout => \c~0_combout\);

-- Location: MLABCELL_X54_Y4_N28
\c~1\ : arriaii_lcell_comb
-- Equation(s):
-- \c~1_combout\ = ( \c~0_combout\ & ( \PrefixNetwork|Recur:Inner|gPair~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|Recur:Inner|ALT_INV_gPair~0_combout\,
	dataf => \ALT_INV_c~0_combout\,
	combout => \c~1_combout\);

-- Location: MLABCELL_X54_Y4_N24
\S~4\ : arriaii_lcell_comb
-- Equation(s):
-- \S~4_combout\ = ( \PrefixNetwork|Recur:gPair[1]~0_combout\ & ( \c~1_combout\ & ( !\A[4]~input_o\ $ (\B[4]~input_o\) ) ) ) # ( !\PrefixNetwork|Recur:gPair[1]~0_combout\ & ( \c~1_combout\ & ( !\A[4]~input_o\ $ (\B[4]~input_o\) ) ) ) # ( 
-- \PrefixNetwork|Recur:gPair[1]~0_combout\ & ( !\c~1_combout\ & ( !\A[4]~input_o\ $ (\B[4]~input_o\) ) ) ) # ( !\PrefixNetwork|Recur:gPair[1]~0_combout\ & ( !\c~1_combout\ & ( !\A[4]~input_o\ $ (!\B[4]~input_o\ $ 
-- (\PrefixNetwork|Recur:Inner|gPair~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011000011110000111100001111000011110000111100001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[4]~input_o\,
	datac => \ALT_INV_B[4]~input_o\,
	datad => \PrefixNetwork|Recur:Inner|ALT_INV_gPair~1_combout\,
	datae => \PrefixNetwork|ALT_INV_Recur:gPair[1]~0_combout\,
	dataf => \ALT_INV_c~1_combout\,
	combout => \S~4_combout\);

-- Location: IOIBUF_X55_Y0_N63
\A[5]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: IOIBUF_X56_Y0_N32
\B[5]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: MLABCELL_X54_Y4_N4
\PrefixNetwork|Gpre[4]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gpre[4]~0_combout\ = ( \PrefixNetwork|Recur:Inner|gPair~1_combout\ & ( (!\A[4]~input_o\ & !\B[4]~input_o\) ) ) # ( !\PrefixNetwork|Recur:Inner|gPair~1_combout\ & ( (!\A[4]~input_o\ & ((!\B[4]~input_o\) # 
-- (!\PrefixNetwork|Recur:gPair[1]~0_combout\))) # (\A[4]~input_o\ & (!\B[4]~input_o\ & !\PrefixNetwork|Recur:gPair[1]~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110011000000111111001100000011000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[4]~input_o\,
	datac => \ALT_INV_B[4]~input_o\,
	datad => \PrefixNetwork|ALT_INV_Recur:gPair[1]~0_combout\,
	dataf => \PrefixNetwork|Recur:Inner|ALT_INV_gPair~1_combout\,
	combout => \PrefixNetwork|Gpre[4]~0_combout\);

-- Location: LABCELL_X58_Y10_N10
\S~5\ : arriaii_lcell_comb
-- Equation(s):
-- \S~5_combout\ = ( \PrefixNetwork|Gpre[4]~0_combout\ & ( \c~1_combout\ & ( !\A[5]~input_o\ $ (!\B[5]~input_o\ $ (!\B[4]~input_o\ $ (!\A[4]~input_o\))) ) ) ) # ( !\PrefixNetwork|Gpre[4]~0_combout\ & ( \c~1_combout\ & ( !\A[5]~input_o\ $ (\B[5]~input_o\) ) ) 
-- ) # ( \PrefixNetwork|Gpre[4]~0_combout\ & ( !\c~1_combout\ & ( !\A[5]~input_o\ $ (!\B[5]~input_o\) ) ) ) # ( !\PrefixNetwork|Gpre[4]~0_combout\ & ( !\c~1_combout\ & ( !\A[5]~input_o\ $ (\B[5]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100110011001011001100110011010011001100110010110100110010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[5]~input_o\,
	datab => \ALT_INV_B[5]~input_o\,
	datac => \ALT_INV_B[4]~input_o\,
	datad => \ALT_INV_A[4]~input_o\,
	datae => \PrefixNetwork|ALT_INV_Gpre[4]~0_combout\,
	dataf => \ALT_INV_c~1_combout\,
	combout => \S~5_combout\);

-- Location: LABCELL_X55_Y4_N4
\PrefixNetwork|Recur:gPair[2]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:gPair[2]~0_combout\ = ( \B[5]~input_o\ & ( \A[5]~input_o\ ) ) # ( !\B[5]~input_o\ & ( \A[5]~input_o\ & ( (\A[4]~input_o\ & \B[4]~input_o\) ) ) ) # ( \B[5]~input_o\ & ( !\A[5]~input_o\ & ( (\A[4]~input_o\ & \B[4]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[4]~input_o\,
	datad => \ALT_INV_B[4]~input_o\,
	datae => \ALT_INV_B[5]~input_o\,
	dataf => \ALT_INV_A[5]~input_o\,
	combout => \PrefixNetwork|Recur:gPair[2]~0_combout\);

-- Location: IOIBUF_X54_Y0_N94
\B[6]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: IOIBUF_X59_Y6_N94
\A[6]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: MLABCELL_X54_Y4_N30
\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[0]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[0]~0_combout\ = ( \B[4]~input_o\ & ( (!\A[4]~input_o\ & (!\B[5]~input_o\ $ (!\A[5]~input_o\))) ) ) # ( !\B[4]~input_o\ & ( (\A[4]~input_o\ & (!\B[5]~input_o\ $ (!\A[5]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001011010000000000101101001011010000000000101101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[5]~input_o\,
	datac => \ALT_INV_A[5]~input_o\,
	datad => \ALT_INV_A[4]~input_o\,
	dataf => \ALT_INV_B[4]~input_o\,
	combout => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[0]~0_combout\);

-- Location: MLABCELL_X54_Y4_N14
\PrefixNetwork|Recur:Inner|gPair~0DUPLICATE\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|gPair~0DUPLICATE_combout\ = ( !\A[2]~input_o\ & ( \B[2]~input_o\ & ( !\A[3]~input_o\ $ (!\B[3]~input_o\) ) ) ) # ( \A[2]~input_o\ & ( !\B[2]~input_o\ & ( !\A[3]~input_o\ $ (!\B[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011111111000000001111111100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[3]~input_o\,
	datad => \ALT_INV_B[3]~input_o\,
	datae => \ALT_INV_A[2]~input_o\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \PrefixNetwork|Recur:Inner|gPair~0DUPLICATE_combout\);

-- Location: MLABCELL_X54_Y4_N2
\PrefixNetwork|Recur:Inner|Gpre~0\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Gpre~0_combout\ = ( \PrefixNetwork|Recur:gPair[0]~0_combout\ & ( (\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[0]~0_combout\ & ((\PrefixNetwork|Recur:gPair[1]~0_combout\) # 
-- (\PrefixNetwork|Recur:Inner|gPair~0DUPLICATE_combout\))) ) ) # ( !\PrefixNetwork|Recur:gPair[0]~0_combout\ & ( (\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[0]~0_combout\ & \PrefixNetwork|Recur:gPair[1]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100000011001100110000001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PrefixNetwork|Recur:Inner|Recur:Inner|ALT_INV_Recur:pPair[0]~0_combout\,
	datac => \PrefixNetwork|Recur:Inner|ALT_INV_gPair~0DUPLICATE_combout\,
	datad => \PrefixNetwork|ALT_INV_Recur:gPair[1]~0_combout\,
	dataf => \PrefixNetwork|ALT_INV_Recur:gPair[0]~0_combout\,
	combout => \PrefixNetwork|Recur:Inner|Gpre~0_combout\);

-- Location: MLABCELL_X54_Y4_N6
\c~2\ : arriaii_lcell_comb
-- Equation(s):
-- \c~2_combout\ = ( \c~1_combout\ & ( (!\B[4]~input_o\ & (\A[4]~input_o\ & (!\B[5]~input_o\ $ (!\A[5]~input_o\)))) # (\B[4]~input_o\ & (!\A[4]~input_o\ & (!\B[5]~input_o\ $ (!\A[5]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000110011000000000011001100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \ALT_INV_A[4]~input_o\,
	datac => \ALT_INV_B[5]~input_o\,
	datad => \ALT_INV_A[5]~input_o\,
	dataf => \ALT_INV_c~1_combout\,
	combout => \c~2_combout\);

-- Location: MLABCELL_X54_Y4_N38
\S~6\ : arriaii_lcell_comb
-- Equation(s):
-- \S~6_combout\ = ( \PrefixNetwork|Recur:Inner|Gpre~0_combout\ & ( \c~2_combout\ & ( !\B[6]~input_o\ $ (\A[6]~input_o\) ) ) ) # ( !\PrefixNetwork|Recur:Inner|Gpre~0_combout\ & ( \c~2_combout\ & ( !\B[6]~input_o\ $ (\A[6]~input_o\) ) ) ) # ( 
-- \PrefixNetwork|Recur:Inner|Gpre~0_combout\ & ( !\c~2_combout\ & ( !\B[6]~input_o\ $ (\A[6]~input_o\) ) ) ) # ( !\PrefixNetwork|Recur:Inner|Gpre~0_combout\ & ( !\c~2_combout\ & ( !\PrefixNetwork|Recur:gPair[2]~0_combout\ $ (!\B[6]~input_o\ $ 
-- (\A[6]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011000011111100000000111111110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PrefixNetwork|ALT_INV_Recur:gPair[2]~0_combout\,
	datac => \ALT_INV_B[6]~input_o\,
	datad => \ALT_INV_A[6]~input_o\,
	datae => \PrefixNetwork|Recur:Inner|ALT_INV_Gpre~0_combout\,
	dataf => \ALT_INV_c~2_combout\,
	combout => \S~6_combout\);

-- Location: IOIBUF_X59_Y6_N32
\A[7]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: IOIBUF_X54_Y0_N63
\B[7]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: MLABCELL_X54_Y4_N32
\PrefixNetwork|Gpre[6]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gpre[6]~1_combout\ = ( \PrefixNetwork|Recur:Inner|Gpre~0_combout\ & ( (!\B[6]~input_o\ & !\A[6]~input_o\) ) ) # ( !\PrefixNetwork|Recur:Inner|Gpre~0_combout\ & ( (!\B[6]~input_o\ & ((!\A[6]~input_o\) # 
-- (!\PrefixNetwork|Recur:gPair[2]~0_combout\))) # (\B[6]~input_o\ & (!\A[6]~input_o\ & !\PrefixNetwork|Recur:gPair[2]~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110011000000111111001100000011000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[6]~input_o\,
	datac => \ALT_INV_A[6]~input_o\,
	datad => \PrefixNetwork|ALT_INV_Recur:gPair[2]~0_combout\,
	dataf => \PrefixNetwork|Recur:Inner|ALT_INV_Gpre~0_combout\,
	combout => \PrefixNetwork|Gpre[6]~1_combout\);

-- Location: MLABCELL_X54_Y4_N22
\S~7\ : arriaii_lcell_comb
-- Equation(s):
-- \S~7_combout\ = ( \PrefixNetwork|Gpre[6]~1_combout\ & ( \c~2_combout\ & ( !\A[6]~input_o\ $ (!\A[7]~input_o\ $ (!\B[6]~input_o\ $ (!\B[7]~input_o\))) ) ) ) # ( !\PrefixNetwork|Gpre[6]~1_combout\ & ( \c~2_combout\ & ( !\A[7]~input_o\ $ (\B[7]~input_o\) ) ) 
-- ) # ( \PrefixNetwork|Gpre[6]~1_combout\ & ( !\c~2_combout\ & ( !\A[7]~input_o\ $ (!\B[7]~input_o\) ) ) ) # ( !\PrefixNetwork|Gpre[6]~1_combout\ & ( !\c~2_combout\ & ( !\A[7]~input_o\ $ (\B[7]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000110011001100111100110011001100001100110110100110010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[6]~input_o\,
	datab => \ALT_INV_A[7]~input_o\,
	datac => \ALT_INV_B[6]~input_o\,
	datad => \ALT_INV_B[7]~input_o\,
	datae => \PrefixNetwork|ALT_INV_Gpre[6]~1_combout\,
	dataf => \ALT_INV_c~2_combout\,
	combout => \S~7_combout\);

-- Location: IOIBUF_X41_Y0_N32
\A[8]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: IOIBUF_X41_Y0_N63
\B[8]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

-- Location: MLABCELL_X46_Y4_N28
\PrefixNetwork|Recur:Inner|Recur:gPair[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Recur:gPair[1]~0_combout\ = ( \PrefixNetwork|Recur:gPair[2]~0_combout\ & ( (!\B[7]~input_o\ & (\A[7]~input_o\ & ((\A[6]~input_o\) # (\B[6]~input_o\)))) # (\B[7]~input_o\ & (((\A[6]~input_o\) # (\A[7]~input_o\)) # 
-- (\B[6]~input_o\))) ) ) # ( !\PrefixNetwork|Recur:gPair[2]~0_combout\ & ( (!\B[7]~input_o\ & (\B[6]~input_o\ & (\A[7]~input_o\ & \A[6]~input_o\))) # (\B[7]~input_o\ & (((\B[6]~input_o\ & \A[6]~input_o\)) # (\A[7]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100010111000000110001011100010111001111110001011100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[6]~input_o\,
	datab => \ALT_INV_B[7]~input_o\,
	datac => \ALT_INV_A[7]~input_o\,
	datad => \ALT_INV_A[6]~input_o\,
	dataf => \PrefixNetwork|ALT_INV_Recur:gPair[2]~0_combout\,
	combout => \PrefixNetwork|Recur:Inner|Recur:gPair[1]~0_combout\);

-- Location: LABCELL_X55_Y4_N20
\PrefixNetwork|Recur:gPair[0]~0DUPLICATE\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:gPair[0]~0DUPLICATE_combout\ = ( \A[0]~input_o\ & ( \B[0]~input_o\ & ( (\A[1]~input_o\) # (\B[1]~input_o\) ) ) ) # ( !\A[0]~input_o\ & ( \B[0]~input_o\ & ( (\B[1]~input_o\ & \A[1]~input_o\) ) ) ) # ( \A[0]~input_o\ & ( !\B[0]~input_o\ 
-- & ( (\B[1]~input_o\ & \A[1]~input_o\) ) ) ) # ( !\A[0]~input_o\ & ( !\B[0]~input_o\ & ( (\B[1]~input_o\ & \A[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000011110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_A[1]~input_o\,
	datae => \ALT_INV_A[0]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \PrefixNetwork|Recur:gPair[0]~0DUPLICATE_combout\);

-- Location: MLABCELL_X54_Y4_N34
\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[0]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[0]~1_combout\ = ( \A[7]~input_o\ & ( (!\B[7]~input_o\ & (!\B[6]~input_o\ $ (!\A[6]~input_o\))) ) ) # ( !\A[7]~input_o\ & ( (\B[7]~input_o\ & (!\B[6]~input_o\ $ (!\A[6]~input_o\))) ) )

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
	combout => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[0]~1_combout\);

-- Location: MLABCELL_X54_Y4_N8
\PrefixNetwork|Recur:Inner|Recur:Inner|gPair~0\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Recur:Inner|gPair~0_combout\ = ( \PrefixNetwork|Recur:Inner|gPair~0DUPLICATE_combout\ & ( (\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[0]~0_combout\ & (\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[0]~1_combout\ & 
-- ((\PrefixNetwork|Recur:gPair[0]~0DUPLICATE_combout\) # (\PrefixNetwork|Recur:gPair[1]~0_combout\)))) ) ) # ( !\PrefixNetwork|Recur:Inner|gPair~0DUPLICATE_combout\ & ( (\PrefixNetwork|Recur:gPair[1]~0_combout\ & 
-- (\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[0]~0_combout\ & \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[0]~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100000000000001110000000000000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|ALT_INV_Recur:gPair[1]~0_combout\,
	datab => \PrefixNetwork|ALT_INV_Recur:gPair[0]~0DUPLICATE_combout\,
	datac => \PrefixNetwork|Recur:Inner|Recur:Inner|ALT_INV_Recur:pPair[0]~0_combout\,
	datad => \PrefixNetwork|Recur:Inner|Recur:Inner|ALT_INV_Recur:pPair[0]~1_combout\,
	dataf => \PrefixNetwork|Recur:Inner|ALT_INV_gPair~0DUPLICATE_combout\,
	combout => \PrefixNetwork|Recur:Inner|Recur:Inner|gPair~0_combout\);

-- Location: MLABCELL_X49_Y4_N2
\c~3\ : arriaii_lcell_comb
-- Equation(s):
-- \c~3_combout\ = ( \c~0DUPLICATE_combout\ & ( (\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[0]~0_combout\ & (\PrefixNetwork|Recur:Inner|gPair~0DUPLICATE_combout\ & \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[0]~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Recur:Inner|Recur:Inner|ALT_INV_Recur:pPair[0]~0_combout\,
	datac => \PrefixNetwork|Recur:Inner|ALT_INV_gPair~0DUPLICATE_combout\,
	datad => \PrefixNetwork|Recur:Inner|Recur:Inner|ALT_INV_Recur:pPair[0]~1_combout\,
	dataf => \ALT_INV_c~0DUPLICATE_combout\,
	combout => \c~3_combout\);

-- Location: LABCELL_X45_Y4_N32
\S~8\ : arriaii_lcell_comb
-- Equation(s):
-- \S~8_combout\ = ( \PrefixNetwork|Recur:Inner|Recur:Inner|gPair~0_combout\ & ( \c~3_combout\ & ( !\A[8]~input_o\ $ (\B[8]~input_o\) ) ) ) # ( !\PrefixNetwork|Recur:Inner|Recur:Inner|gPair~0_combout\ & ( \c~3_combout\ & ( !\A[8]~input_o\ $ (\B[8]~input_o\) 
-- ) ) ) # ( \PrefixNetwork|Recur:Inner|Recur:Inner|gPair~0_combout\ & ( !\c~3_combout\ & ( !\A[8]~input_o\ $ (\B[8]~input_o\) ) ) ) # ( !\PrefixNetwork|Recur:Inner|Recur:Inner|gPair~0_combout\ & ( !\c~3_combout\ & ( !\A[8]~input_o\ $ (!\B[8]~input_o\ $ 
-- (\PrefixNetwork|Recur:Inner|Recur:gPair[1]~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101010100101101001011010010110100101101001011010010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[8]~input_o\,
	datac => \ALT_INV_B[8]~input_o\,
	datad => \PrefixNetwork|Recur:Inner|ALT_INV_Recur:gPair[1]~0_combout\,
	datae => \PrefixNetwork|Recur:Inner|Recur:Inner|ALT_INV_gPair~0_combout\,
	dataf => \ALT_INV_c~3_combout\,
	combout => \S~8_combout\);

-- Location: IOIBUF_X37_Y0_N1
\A[9]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

-- Location: IOIBUF_X33_Y0_N63
\B[9]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(9),
	o => \B[9]~input_o\);

-- Location: LABCELL_X45_Y4_N28
\PrefixNetwork|Gpre[8]~2\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gpre[8]~2_combout\ = ( \PrefixNetwork|Recur:Inner|Recur:Inner|gPair~0_combout\ & ( (!\A[8]~input_o\ & !\B[8]~input_o\) ) ) # ( !\PrefixNetwork|Recur:Inner|Recur:Inner|gPair~0_combout\ & ( (!\A[8]~input_o\ & ((!\B[8]~input_o\) # 
-- (!\PrefixNetwork|Recur:Inner|Recur:gPair[1]~0_combout\))) # (\A[8]~input_o\ & (!\B[8]~input_o\ & !\PrefixNetwork|Recur:Inner|Recur:gPair[1]~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101010100000111110101010000010100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[8]~input_o\,
	datac => \ALT_INV_B[8]~input_o\,
	datad => \PrefixNetwork|Recur:Inner|ALT_INV_Recur:gPair[1]~0_combout\,
	dataf => \PrefixNetwork|Recur:Inner|Recur:Inner|ALT_INV_gPair~0_combout\,
	combout => \PrefixNetwork|Gpre[8]~2_combout\);

-- Location: MLABCELL_X44_Y4_N32
\S~9\ : arriaii_lcell_comb
-- Equation(s):
-- \S~9_combout\ = ( \PrefixNetwork|Gpre[8]~2_combout\ & ( \c~3_combout\ & ( !\A[9]~input_o\ $ (!\B[9]~input_o\ $ (!\B[8]~input_o\ $ (!\A[8]~input_o\))) ) ) ) # ( !\PrefixNetwork|Gpre[8]~2_combout\ & ( \c~3_combout\ & ( !\A[9]~input_o\ $ (\B[9]~input_o\) ) ) 
-- ) # ( \PrefixNetwork|Gpre[8]~2_combout\ & ( !\c~3_combout\ & ( !\A[9]~input_o\ $ (!\B[9]~input_o\) ) ) ) # ( !\PrefixNetwork|Gpre[8]~2_combout\ & ( !\c~3_combout\ & ( !\A[9]~input_o\ $ (\B[9]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100110011001011001100110011010011001100110010110100110010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[9]~input_o\,
	datab => \ALT_INV_B[9]~input_o\,
	datac => \ALT_INV_B[8]~input_o\,
	datad => \ALT_INV_A[8]~input_o\,
	datae => \PrefixNetwork|ALT_INV_Gpre[8]~2_combout\,
	dataf => \ALT_INV_c~3_combout\,
	combout => \S~9_combout\);

-- Location: LABCELL_X45_Y4_N16
\PrefixNetwork|Recur:gPair[4]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:gPair[4]~0_combout\ = ( \A[9]~input_o\ & ( ((\A[8]~input_o\ & \B[8]~input_o\)) # (\B[9]~input_o\) ) ) # ( !\A[9]~input_o\ & ( (\A[8]~input_o\ & (\B[9]~input_o\ & \B[8]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100001111010111110000111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[8]~input_o\,
	datac => \ALT_INV_B[9]~input_o\,
	datad => \ALT_INV_B[8]~input_o\,
	dataf => \ALT_INV_A[9]~input_o\,
	combout => \PrefixNetwork|Recur:gPair[4]~0_combout\);

-- Location: IOIBUF_X45_Y0_N63
\A[10]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

-- Location: IOIBUF_X43_Y0_N63
\B[10]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(10),
	o => \B[10]~input_o\);

-- Location: LABCELL_X45_Y4_N22
\PrefixNetwork|Recur:Inner|Recur:pPair[2]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Recur:pPair[2]~0_combout\ = ( \A[9]~input_o\ & ( (!\B[9]~input_o\ & (!\A[8]~input_o\ $ (!\B[8]~input_o\))) ) ) # ( !\A[9]~input_o\ & ( (\B[9]~input_o\ & (!\A[8]~input_o\ $ (!\B[8]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001011010000000000101101001011010000000000101101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[8]~input_o\,
	datac => \ALT_INV_B[8]~input_o\,
	datad => \ALT_INV_B[9]~input_o\,
	dataf => \ALT_INV_A[9]~input_o\,
	combout => \PrefixNetwork|Recur:Inner|Recur:pPair[2]~0_combout\);

-- Location: MLABCELL_X46_Y4_N32
\PrefixNetwork|Recur:Inner|Gpre~1\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Gpre~1_combout\ = ( \PrefixNetwork|Recur:Inner|Recur:Inner|gPair~0_combout\ & ( \PrefixNetwork|Recur:Inner|Recur:pPair[2]~0_combout\ ) ) # ( !\PrefixNetwork|Recur:Inner|Recur:Inner|gPair~0_combout\ & ( 
-- (\PrefixNetwork|Recur:Inner|Recur:pPair[2]~0_combout\ & \PrefixNetwork|Recur:Inner|Recur:gPair[1]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|Recur:Inner|ALT_INV_Recur:pPair[2]~0_combout\,
	datad => \PrefixNetwork|Recur:Inner|ALT_INV_Recur:gPair[1]~0_combout\,
	dataf => \PrefixNetwork|Recur:Inner|Recur:Inner|ALT_INV_gPair~0_combout\,
	combout => \PrefixNetwork|Recur:Inner|Gpre~1_combout\);

-- Location: LABCELL_X45_Y4_N2
\c~4\ : arriaii_lcell_comb
-- Equation(s):
-- \c~4_combout\ = ( \c~3_combout\ & ( (!\A[8]~input_o\ & (\B[8]~input_o\ & (!\A[9]~input_o\ $ (!\B[9]~input_o\)))) # (\A[8]~input_o\ & (!\B[8]~input_o\ & (!\A[9]~input_o\ $ (!\B[9]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010010010010000001001001001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[8]~input_o\,
	datab => \ALT_INV_A[9]~input_o\,
	datac => \ALT_INV_B[8]~input_o\,
	datad => \ALT_INV_B[9]~input_o\,
	dataf => \ALT_INV_c~3_combout\,
	combout => \c~4_combout\);

-- Location: LABCELL_X45_Y4_N12
\S~10\ : arriaii_lcell_comb
-- Equation(s):
-- \S~10_combout\ = ( \PrefixNetwork|Recur:Inner|Gpre~1_combout\ & ( \c~4_combout\ & ( !\A[10]~input_o\ $ (\B[10]~input_o\) ) ) ) # ( !\PrefixNetwork|Recur:Inner|Gpre~1_combout\ & ( \c~4_combout\ & ( !\A[10]~input_o\ $ (\B[10]~input_o\) ) ) ) # ( 
-- \PrefixNetwork|Recur:Inner|Gpre~1_combout\ & ( !\c~4_combout\ & ( !\A[10]~input_o\ $ (\B[10]~input_o\) ) ) ) # ( !\PrefixNetwork|Recur:Inner|Gpre~1_combout\ & ( !\c~4_combout\ & ( !\PrefixNetwork|Recur:gPair[4]~0_combout\ $ (!\A[10]~input_o\ $ 
-- (\B[10]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101010100101111100000000111111110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|ALT_INV_Recur:gPair[4]~0_combout\,
	datac => \ALT_INV_A[10]~input_o\,
	datad => \ALT_INV_B[10]~input_o\,
	datae => \PrefixNetwork|Recur:Inner|ALT_INV_Gpre~1_combout\,
	dataf => \ALT_INV_c~4_combout\,
	combout => \S~10_combout\);

-- Location: IOIBUF_X45_Y0_N32
\B[11]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(11),
	o => \B[11]~input_o\);

-- Location: IOIBUF_X37_Y0_N63
\A[11]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(11),
	o => \A[11]~input_o\);

-- Location: MLABCELL_X46_Y4_N4
\PrefixNetwork|Gpre[10]~3\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gpre[10]~3_combout\ = ( !\A[10]~input_o\ & ( \PrefixNetwork|Recur:Inner|Gpre~1_combout\ & ( !\B[10]~input_o\ ) ) ) # ( \A[10]~input_o\ & ( !\PrefixNetwork|Recur:Inner|Gpre~1_combout\ & ( (!\B[10]~input_o\ & 
-- !\PrefixNetwork|Recur:gPair[4]~0_combout\) ) ) ) # ( !\A[10]~input_o\ & ( !\PrefixNetwork|Recur:Inner|Gpre~1_combout\ & ( (!\B[10]~input_o\) # (!\PrefixNetwork|Recur:gPair[4]~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110000111100000000000011110000111100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[10]~input_o\,
	datad => \PrefixNetwork|ALT_INV_Recur:gPair[4]~0_combout\,
	datae => \ALT_INV_A[10]~input_o\,
	dataf => \PrefixNetwork|Recur:Inner|ALT_INV_Gpre~1_combout\,
	combout => \PrefixNetwork|Gpre[10]~3_combout\);

-- Location: MLABCELL_X46_Y4_N0
\S~11\ : arriaii_lcell_comb
-- Equation(s):
-- \S~11_combout\ = ( \PrefixNetwork|Gpre[10]~3_combout\ & ( \c~4_combout\ & ( !\B[10]~input_o\ $ (!\B[11]~input_o\ $ (!\A[11]~input_o\ $ (!\A[10]~input_o\))) ) ) ) # ( !\PrefixNetwork|Gpre[10]~3_combout\ & ( \c~4_combout\ & ( !\B[11]~input_o\ $ 
-- (\A[11]~input_o\) ) ) ) # ( \PrefixNetwork|Gpre[10]~3_combout\ & ( !\c~4_combout\ & ( !\B[11]~input_o\ $ (!\A[11]~input_o\) ) ) ) # ( !\PrefixNetwork|Gpre[10]~3_combout\ & ( !\c~4_combout\ & ( !\B[11]~input_o\ $ (\A[11]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001111000011001111000011110011000011110000110110100110010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[10]~input_o\,
	datab => \ALT_INV_B[11]~input_o\,
	datac => \ALT_INV_A[11]~input_o\,
	datad => \ALT_INV_A[10]~input_o\,
	datae => \PrefixNetwork|ALT_INV_Gpre[10]~3_combout\,
	dataf => \ALT_INV_c~4_combout\,
	combout => \S~11_combout\);

-- Location: IOIBUF_X41_Y0_N94
\B[12]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(12),
	o => \B[12]~input_o\);

-- Location: IOIBUF_X45_Y0_N1
\A[12]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(12),
	o => \A[12]~input_o\);

-- Location: LABCELL_X45_Y4_N10
\PrefixNetwork|Recur:Inner|Recur:pPair[2]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Recur:pPair[2]~1_combout\ = ( \A[11]~input_o\ & ( (!\B[11]~input_o\ & (!\B[10]~input_o\ $ (!\A[10]~input_o\))) ) ) # ( !\A[11]~input_o\ & ( (\B[11]~input_o\ & (!\B[10]~input_o\ $ (!\A[10]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100110000000000110011000000001100110000000000110011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[11]~input_o\,
	datac => \ALT_INV_B[10]~input_o\,
	datad => \ALT_INV_A[10]~input_o\,
	dataf => \ALT_INV_A[11]~input_o\,
	combout => \PrefixNetwork|Recur:Inner|Recur:pPair[2]~1_combout\);

-- Location: LABCELL_X45_Y4_N0
\PrefixNetwork|Recur:Inner|Recur:pPair[2]~2\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Recur:pPair[2]~2_combout\ = (\PrefixNetwork|Recur:Inner|Recur:pPair[2]~1_combout\ & \PrefixNetwork|Recur:Inner|Recur:pPair[2]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|Recur:Inner|ALT_INV_Recur:pPair[2]~1_combout\,
	datad => \PrefixNetwork|Recur:Inner|ALT_INV_Recur:pPair[2]~0_combout\,
	combout => \PrefixNetwork|Recur:Inner|Recur:pPair[2]~2_combout\);

-- Location: LABCELL_X45_Y4_N18
\PrefixNetwork|Recur:gPair[5]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:gPair[5]~0_combout\ = ( \A[11]~input_o\ & ( ((\B[10]~input_o\ & \A[10]~input_o\)) # (\B[11]~input_o\) ) ) # ( !\A[11]~input_o\ & ( (\B[11]~input_o\ & (\B[10]~input_o\ & \A[10]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100110011001111110011001100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[11]~input_o\,
	datac => \ALT_INV_B[10]~input_o\,
	datad => \ALT_INV_A[10]~input_o\,
	dataf => \ALT_INV_A[11]~input_o\,
	combout => \PrefixNetwork|Recur:gPair[5]~0_combout\);

-- Location: LABCELL_X45_Y4_N20
\PrefixNetwork|Recur:Inner|Recur:gPair[2]\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Recur:gPair[2]~combout\ = ( \PrefixNetwork|Recur:gPair[4]~0_combout\ & ( (!\PrefixNetwork|Recur:Inner|Recur:pPair[2]~1_combout\ & !\PrefixNetwork|Recur:gPair[5]~0_combout\) ) ) # ( !\PrefixNetwork|Recur:gPair[4]~0_combout\ & ( 
-- !\PrefixNetwork|Recur:gPair[5]~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011001100000000001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PrefixNetwork|Recur:Inner|ALT_INV_Recur:pPair[2]~1_combout\,
	datad => \PrefixNetwork|ALT_INV_Recur:gPair[5]~0_combout\,
	dataf => \PrefixNetwork|ALT_INV_Recur:gPair[4]~0_combout\,
	combout => \PrefixNetwork|Recur:Inner|Recur:gPair[2]~combout\);

-- Location: MLABCELL_X46_Y4_N30
\PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~0\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~0_combout\ = ( \PrefixNetwork|Recur:Inner|Recur:Inner|gPair~0_combout\ & ( \PrefixNetwork|Recur:Inner|Recur:pPair[2]~2_combout\ ) ) # ( !\PrefixNetwork|Recur:Inner|Recur:Inner|gPair~0_combout\ & ( 
-- (\PrefixNetwork|Recur:Inner|Recur:gPair[1]~0_combout\ & \PrefixNetwork|Recur:Inner|Recur:pPair[2]~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|Recur:Inner|ALT_INV_Recur:gPair[1]~0_combout\,
	datad => \PrefixNetwork|Recur:Inner|ALT_INV_Recur:pPair[2]~2_combout\,
	dataf => \PrefixNetwork|Recur:Inner|Recur:Inner|ALT_INV_gPair~0_combout\,
	combout => \PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~0_combout\);

-- Location: LABCELL_X45_Y4_N36
\S~12\ : arriaii_lcell_comb
-- Equation(s):
-- \S~12_combout\ = ( \c~3_combout\ & ( \PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~0_combout\ & ( !\B[12]~input_o\ $ (\A[12]~input_o\) ) ) ) # ( !\c~3_combout\ & ( \PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~0_combout\ & ( !\B[12]~input_o\ $ 
-- (\A[12]~input_o\) ) ) ) # ( \c~3_combout\ & ( !\PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~0_combout\ & ( !\B[12]~input_o\ $ (!\A[12]~input_o\ $ (((!\PrefixNetwork|Recur:Inner|Recur:gPair[2]~combout\) # 
-- (\PrefixNetwork|Recur:Inner|Recur:pPair[2]~2_combout\)))) ) ) ) # ( !\c~3_combout\ & ( !\PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~0_combout\ & ( !\B[12]~input_o\ $ (!\A[12]~input_o\ $ (!\PrefixNetwork|Recur:Inner|Recur:gPair[2]~combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100101100110100110010110100110011001100110011001100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[12]~input_o\,
	datab => \ALT_INV_A[12]~input_o\,
	datac => \PrefixNetwork|Recur:Inner|ALT_INV_Recur:pPair[2]~2_combout\,
	datad => \PrefixNetwork|Recur:Inner|ALT_INV_Recur:gPair[2]~combout\,
	datae => \ALT_INV_c~3_combout\,
	dataf => \PrefixNetwork|Recur:Inner|Recur:Inner|ALT_INV_Gpre~0_combout\,
	combout => \S~12_combout\);

-- Location: IOIBUF_X39_Y0_N63
\B[13]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(13),
	o => \B[13]~input_o\);

-- Location: IOIBUF_X43_Y0_N94
\A[13]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(13),
	o => \A[13]~input_o\);

-- Location: MLABCELL_X46_Y4_N26
\PrefixNetwork|Gpre[12]~4\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gpre[12]~4_combout\ = ( \PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~0_combout\ & ( (!\B[12]~input_o\ & !\A[12]~input_o\) ) ) # ( !\PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~0_combout\ & ( (!\B[12]~input_o\ & ((!\A[12]~input_o\) # 
-- (\PrefixNetwork|Recur:Inner|Recur:gPair[2]~combout\))) # (\B[12]~input_o\ & (!\A[12]~input_o\ & \PrefixNetwork|Recur:Inner|Recur:gPair[2]~combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011111100110000001111110011000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[12]~input_o\,
	datac => \ALT_INV_A[12]~input_o\,
	datad => \PrefixNetwork|Recur:Inner|ALT_INV_Recur:gPair[2]~combout\,
	dataf => \PrefixNetwork|Recur:Inner|Recur:Inner|ALT_INV_Gpre~0_combout\,
	combout => \PrefixNetwork|Gpre[12]~4_combout\);

-- Location: MLABCELL_X46_Y4_N38
\c~5\ : arriaii_lcell_comb
-- Equation(s):
-- \c~5_combout\ = ( \c~3_combout\ & ( (\PrefixNetwork|Recur:Inner|Recur:pPair[2]~2_combout\ & (!\A[12]~input_o\ $ (!\B[12]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000011001100000000001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[12]~input_o\,
	datab => \ALT_INV_B[12]~input_o\,
	datad => \PrefixNetwork|Recur:Inner|ALT_INV_Recur:pPair[2]~2_combout\,
	dataf => \ALT_INV_c~3_combout\,
	combout => \c~5_combout\);

-- Location: MLABCELL_X46_Y4_N24
\S~13\ : arriaii_lcell_comb
-- Equation(s):
-- \S~13_combout\ = ( \c~5_combout\ & ( !\B[13]~input_o\ $ (\A[13]~input_o\) ) ) # ( !\c~5_combout\ & ( !\B[13]~input_o\ $ (!\A[13]~input_o\ $ (!\PrefixNetwork|Gpre[12]~4_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010010101011010101001010101101010100101101001011010010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[13]~input_o\,
	datac => \ALT_INV_A[13]~input_o\,
	datad => \PrefixNetwork|ALT_INV_Gpre[12]~4_combout\,
	dataf => \ALT_INV_c~5_combout\,
	combout => \S~13_combout\);

-- Location: MLABCELL_X46_Y4_N36
\PrefixNetwork|Recur:gPair[6]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:gPair[6]~0_combout\ = ( \B[13]~input_o\ & ( ((\A[12]~input_o\ & \B[12]~input_o\)) # (\A[13]~input_o\) ) ) # ( !\B[13]~input_o\ & ( (\A[12]~input_o\ & (\A[13]~input_o\ & \B[12]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100001111010111110000111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[12]~input_o\,
	datac => \ALT_INV_A[13]~input_o\,
	datad => \ALT_INV_B[12]~input_o\,
	dataf => \ALT_INV_B[13]~input_o\,
	combout => \PrefixNetwork|Recur:gPair[6]~0_combout\);

-- Location: IOIBUF_X56_Y0_N94
\B[14]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(14),
	o => \B[14]~input_o\);

-- Location: IOIBUF_X59_Y7_N1
\A[14]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(14),
	o => \A[14]~input_o\);

-- Location: LABCELL_X45_Y4_N8
\PrefixNetwork|Recur:Inner|Recur:Inner|gPair~1\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Recur:Inner|gPair~1_combout\ = ( \B[13]~input_o\ & ( (!\A[13]~input_o\ & (!\B[12]~input_o\ $ (!\A[12]~input_o\))) ) ) # ( !\B[13]~input_o\ & ( (\A[13]~input_o\ & (!\B[12]~input_o\ $ (!\A[12]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100001010000001010000101001010000101000000101000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[12]~input_o\,
	datac => \ALT_INV_A[13]~input_o\,
	datad => \ALT_INV_A[12]~input_o\,
	dataf => \ALT_INV_B[13]~input_o\,
	combout => \PrefixNetwork|Recur:Inner|Recur:Inner|gPair~1_combout\);

-- Location: MLABCELL_X46_Y4_N34
\PrefixNetwork|Recur:Inner|Gpre~2\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Gpre~2_combout\ = ( \PrefixNetwork|Recur:Inner|Recur:Inner|gPair~0_combout\ & ( (\PrefixNetwork|Recur:Inner|Recur:Inner|gPair~1_combout\ & ((!\PrefixNetwork|Recur:Inner|Recur:gPair[2]~combout\) # 
-- (\PrefixNetwork|Recur:Inner|Recur:pPair[2]~2_combout\))) ) ) # ( !\PrefixNetwork|Recur:Inner|Recur:Inner|gPair~0_combout\ & ( (\PrefixNetwork|Recur:Inner|Recur:Inner|gPair~1_combout\ & ((!\PrefixNetwork|Recur:Inner|Recur:gPair[2]~combout\) # 
-- ((\PrefixNetwork|Recur:Inner|Recur:gPair[1]~0_combout\ & \PrefixNetwork|Recur:Inner|Recur:pPair[2]~2_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110001001100000011000100110000001100110011000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Recur:Inner|ALT_INV_Recur:gPair[1]~0_combout\,
	datab => \PrefixNetwork|Recur:Inner|Recur:Inner|ALT_INV_gPair~1_combout\,
	datac => \PrefixNetwork|Recur:Inner|ALT_INV_Recur:gPair[2]~combout\,
	datad => \PrefixNetwork|Recur:Inner|ALT_INV_Recur:pPair[2]~2_combout\,
	dataf => \PrefixNetwork|Recur:Inner|Recur:Inner|ALT_INV_gPair~0_combout\,
	combout => \PrefixNetwork|Recur:Inner|Gpre~2_combout\);

-- Location: MLABCELL_X46_Y4_N16
\c~6\ : arriaii_lcell_comb
-- Equation(s):
-- \c~6_combout\ = ( \PrefixNetwork|Recur:Inner|Recur:pPair[2]~2_combout\ & ( \c~3_combout\ & ( (!\A[13]~input_o\ & (\B[13]~input_o\ & (!\B[12]~input_o\ $ (!\A[12]~input_o\)))) # (\A[13]~input_o\ & (!\B[13]~input_o\ & (!\B[12]~input_o\ $ 
-- (!\A[12]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000011001100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[13]~input_o\,
	datab => \ALT_INV_B[13]~input_o\,
	datac => \ALT_INV_B[12]~input_o\,
	datad => \ALT_INV_A[12]~input_o\,
	datae => \PrefixNetwork|Recur:Inner|ALT_INV_Recur:pPair[2]~2_combout\,
	dataf => \ALT_INV_c~3_combout\,
	combout => \c~6_combout\);

-- Location: MLABCELL_X46_Y4_N20
\S~14\ : arriaii_lcell_comb
-- Equation(s):
-- \S~14_combout\ = ( \PrefixNetwork|Recur:Inner|Gpre~2_combout\ & ( \c~6_combout\ & ( !\B[14]~input_o\ $ (\A[14]~input_o\) ) ) ) # ( !\PrefixNetwork|Recur:Inner|Gpre~2_combout\ & ( \c~6_combout\ & ( !\B[14]~input_o\ $ (\A[14]~input_o\) ) ) ) # ( 
-- \PrefixNetwork|Recur:Inner|Gpre~2_combout\ & ( !\c~6_combout\ & ( !\B[14]~input_o\ $ (\A[14]~input_o\) ) ) ) # ( !\PrefixNetwork|Recur:Inner|Gpre~2_combout\ & ( !\c~6_combout\ & ( !\PrefixNetwork|Recur:gPair[6]~0_combout\ $ (!\B[14]~input_o\ $ 
-- (\A[14]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011000011111100000000111111110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PrefixNetwork|ALT_INV_Recur:gPair[6]~0_combout\,
	datac => \ALT_INV_B[14]~input_o\,
	datad => \ALT_INV_A[14]~input_o\,
	datae => \PrefixNetwork|Recur:Inner|ALT_INV_Gpre~2_combout\,
	dataf => \ALT_INV_c~6_combout\,
	combout => \S~14_combout\);

-- Location: IOIBUF_X59_Y7_N32
\B[15]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(15),
	o => \B[15]~input_o\);

-- Location: IOIBUF_X54_Y0_N32
\A[15]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(15),
	o => \A[15]~input_o\);

-- Location: MLABCELL_X46_Y4_N8
\PrefixNetwork|Gpre[14]~5\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gpre[14]~5_combout\ = ( \PrefixNetwork|Recur:gPair[6]~0_combout\ & ( \PrefixNetwork|Recur:Inner|Gpre~2_combout\ & ( (!\B[14]~input_o\ & !\A[14]~input_o\) ) ) ) # ( !\PrefixNetwork|Recur:gPair[6]~0_combout\ & ( 
-- \PrefixNetwork|Recur:Inner|Gpre~2_combout\ & ( (!\B[14]~input_o\ & !\A[14]~input_o\) ) ) ) # ( \PrefixNetwork|Recur:gPair[6]~0_combout\ & ( !\PrefixNetwork|Recur:Inner|Gpre~2_combout\ & ( (!\B[14]~input_o\ & !\A[14]~input_o\) ) ) ) # ( 
-- !\PrefixNetwork|Recur:gPair[6]~0_combout\ & ( !\PrefixNetwork|Recur:Inner|Gpre~2_combout\ & ( (!\B[14]~input_o\) # (!\A[14]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110000111100000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[14]~input_o\,
	datad => \ALT_INV_A[14]~input_o\,
	datae => \PrefixNetwork|ALT_INV_Recur:gPair[6]~0_combout\,
	dataf => \PrefixNetwork|Recur:Inner|ALT_INV_Gpre~2_combout\,
	combout => \PrefixNetwork|Gpre[14]~5_combout\);

-- Location: MLABCELL_X46_Y4_N14
\S~15\ : arriaii_lcell_comb
-- Equation(s):
-- \S~15_combout\ = ( \PrefixNetwork|Gpre[14]~5_combout\ & ( \c~6_combout\ & ( !\B[15]~input_o\ $ (!\A[15]~input_o\ $ (!\A[14]~input_o\ $ (!\B[14]~input_o\))) ) ) ) # ( !\PrefixNetwork|Gpre[14]~5_combout\ & ( \c~6_combout\ & ( !\B[15]~input_o\ $ 
-- (\A[15]~input_o\) ) ) ) # ( \PrefixNetwork|Gpre[14]~5_combout\ & ( !\c~6_combout\ & ( !\B[15]~input_o\ $ (!\A[15]~input_o\) ) ) ) # ( !\PrefixNetwork|Gpre[14]~5_combout\ & ( !\c~6_combout\ & ( !\B[15]~input_o\ $ (\A[15]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100110011001011001100110011010011001100110010110100110010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[15]~input_o\,
	datab => \ALT_INV_A[15]~input_o\,
	datac => \ALT_INV_A[14]~input_o\,
	datad => \ALT_INV_B[14]~input_o\,
	datae => \PrefixNetwork|ALT_INV_Gpre[14]~5_combout\,
	dataf => \ALT_INV_c~6_combout\,
	combout => \S~15_combout\);

-- Location: IOIBUF_X59_Y9_N1
\A[16]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(16),
	o => \A[16]~input_o\);

-- Location: IOIBUF_X59_Y12_N32
\B[16]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(16),
	o => \B[16]~input_o\);

-- Location: MLABCELL_X49_Y4_N18
\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[1]~0_combout\ = ( \PrefixNetwork|Recur:gPair[6]~0_combout\ & ( (!\A[15]~input_o\ & (\B[15]~input_o\ & ((\B[14]~input_o\) # (\A[14]~input_o\)))) # (\A[15]~input_o\ & (((\B[14]~input_o\) # 
-- (\B[15]~input_o\)) # (\A[14]~input_o\))) ) ) # ( !\PrefixNetwork|Recur:gPair[6]~0_combout\ & ( (!\A[15]~input_o\ & (\A[14]~input_o\ & (\B[15]~input_o\ & \B[14]~input_o\))) # (\A[15]~input_o\ & (((\A[14]~input_o\ & \B[14]~input_o\)) # (\B[15]~input_o\))) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100010111000001010001011100010111010111110001011101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[15]~input_o\,
	datab => \ALT_INV_A[14]~input_o\,
	datac => \ALT_INV_B[15]~input_o\,
	datad => \ALT_INV_B[14]~input_o\,
	dataf => \PrefixNetwork|ALT_INV_Recur:gPair[6]~0_combout\,
	combout => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[1]~0_combout\);

-- Location: MLABCELL_X54_Y4_N0
\PrefixNetwork|Recur:Inner|gPair~2\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|gPair~2_combout\ = ( \A[14]~input_o\ & ( (!\B[14]~input_o\ & (!\A[15]~input_o\ $ (!\B[15]~input_o\))) ) ) # ( !\A[14]~input_o\ & ( (\B[14]~input_o\ & (!\A[15]~input_o\ $ (!\B[15]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100001010000001010000101001010000101000000101000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[15]~input_o\,
	datac => \ALT_INV_B[14]~input_o\,
	datad => \ALT_INV_B[15]~input_o\,
	dataf => \ALT_INV_A[14]~input_o\,
	combout => \PrefixNetwork|Recur:Inner|gPair~2_combout\);

-- Location: LABCELL_X45_Y4_N30
\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[1]~0_combout\ = ( \PrefixNetwork|Recur:Inner|gPair~2_combout\ & ( (\PrefixNetwork|Recur:Inner|Recur:pPair[2]~1_combout\ & (\PrefixNetwork|Recur:Inner|Recur:pPair[2]~0_combout\ & 
-- \PrefixNetwork|Recur:Inner|Recur:Inner|gPair~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PrefixNetwork|Recur:Inner|ALT_INV_Recur:pPair[2]~1_combout\,
	datac => \PrefixNetwork|Recur:Inner|ALT_INV_Recur:pPair[2]~0_combout\,
	datad => \PrefixNetwork|Recur:Inner|Recur:Inner|ALT_INV_gPair~1_combout\,
	dataf => \PrefixNetwork|Recur:Inner|ALT_INV_gPair~2_combout\,
	combout => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[1]~0_combout\);

-- Location: LABCELL_X45_Y4_N26
\PrefixNetwork|Recur:Inner|Recur:Inner|gPair~2\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Recur:Inner|gPair~2_combout\ = ( \PrefixNetwork|Recur:Inner|Recur:pPair[2]~1_combout\ & ( \PrefixNetwork|Recur:Inner|gPair~2_combout\ & ( (\PrefixNetwork|Recur:Inner|Recur:Inner|gPair~1_combout\ & 
-- ((\PrefixNetwork|Recur:gPair[4]~0_combout\) # (\PrefixNetwork|Recur:gPair[5]~0_combout\))) ) ) ) # ( !\PrefixNetwork|Recur:Inner|Recur:pPair[2]~1_combout\ & ( \PrefixNetwork|Recur:Inner|gPair~2_combout\ & ( (\PrefixNetwork|Recur:gPair[5]~0_combout\ & 
-- \PrefixNetwork|Recur:Inner|Recur:Inner|gPair~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010101010000000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|ALT_INV_Recur:gPair[5]~0_combout\,
	datac => \PrefixNetwork|ALT_INV_Recur:gPair[4]~0_combout\,
	datad => \PrefixNetwork|Recur:Inner|Recur:Inner|ALT_INV_gPair~1_combout\,
	datae => \PrefixNetwork|Recur:Inner|ALT_INV_Recur:pPair[2]~1_combout\,
	dataf => \PrefixNetwork|Recur:Inner|ALT_INV_gPair~2_combout\,
	combout => \PrefixNetwork|Recur:Inner|Recur:Inner|gPair~2_combout\);

-- Location: LABCELL_X50_Y4_N32
\c~7\ : arriaii_lcell_comb
-- Equation(s):
-- \c~7_combout\ = ( !\PrefixNetwork|Recur:Inner|Recur:Inner|gPair~2_combout\ & ( \c~3_combout\ & ( (!\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[1]~0_combout\ & !\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[1]~0_combout\) ) ) ) # ( 
-- !\PrefixNetwork|Recur:Inner|Recur:Inner|gPair~2_combout\ & ( !\c~3_combout\ & ( (!\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[1]~0_combout\ & ((!\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[1]~0_combout\) # 
-- ((!\PrefixNetwork|Recur:Inner|Recur:gPair[1]~0_combout\ & !\PrefixNetwork|Recur:Inner|Recur:Inner|gPair~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100100011000000000000000000000011000000110000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Recur:Inner|ALT_INV_Recur:gPair[1]~0_combout\,
	datab => \PrefixNetwork|Recur:Inner|Recur:Inner|ALT_INV_Recur:gPair[1]~0_combout\,
	datac => \PrefixNetwork|Recur:Inner|Recur:Inner|ALT_INV_Recur:pPair[1]~0_combout\,
	datad => \PrefixNetwork|Recur:Inner|Recur:Inner|ALT_INV_gPair~0_combout\,
	datae => \PrefixNetwork|Recur:Inner|Recur:Inner|ALT_INV_gPair~2_combout\,
	dataf => \ALT_INV_c~3_combout\,
	combout => \c~7_combout\);

-- Location: LABCELL_X50_Y4_N14
\S~16\ : arriaii_lcell_comb
-- Equation(s):
-- \S~16_combout\ = ( \c~7_combout\ & ( !\A[16]~input_o\ $ (!\B[16]~input_o\) ) ) # ( !\c~7_combout\ & ( !\A[16]~input_o\ $ (\B[16]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000001111111100000000111100001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[16]~input_o\,
	datad => \ALT_INV_B[16]~input_o\,
	dataf => \ALT_INV_c~7_combout\,
	combout => \S~16_combout\);

-- Location: IOIBUF_X43_Y0_N1
\A[17]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(17),
	o => \A[17]~input_o\);

-- Location: IOIBUF_X59_Y12_N94
\B[17]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(17),
	o => \B[17]~input_o\);

-- Location: MLABCELL_X49_Y4_N30
\c~8\ : arriaii_lcell_comb
-- Equation(s):
-- \c~8_combout\ = ( \c~3_combout\ & ( \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[1]~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PrefixNetwork|Recur:Inner|Recur:Inner|ALT_INV_Recur:pPair[1]~0_combout\,
	dataf => \ALT_INV_c~3_combout\,
	combout => \c~8_combout\);

-- Location: MLABCELL_X49_Y4_N24
\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[1]\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[1]~combout\ = ( !\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[1]~0_combout\ & ( !\PrefixNetwork|Recur:Inner|Recur:Inner|gPair~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \PrefixNetwork|Recur:Inner|Recur:Inner|ALT_INV_Recur:gPair[1]~0_combout\,
	dataf => \PrefixNetwork|Recur:Inner|Recur:Inner|ALT_INV_gPair~2_combout\,
	combout => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[1]~combout\);

-- Location: MLABCELL_X49_Y4_N14
\PrefixNetwork|Gpre[16]~13\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gpre[16]~13_combout\ = ( \PrefixNetwork|Recur:Inner|Recur:Inner|gPair~0_combout\ & ( \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[1]~combout\ & ( (!\B[16]~input_o\ & ((!\A[16]~input_o\) # 
-- (!\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[1]~0_combout\))) # (\B[16]~input_o\ & (!\A[16]~input_o\ & !\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[1]~0_combout\)) ) ) ) # ( !\PrefixNetwork|Recur:Inner|Recur:Inner|gPair~0_combout\ & ( 
-- \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[1]~combout\ & ( (!\B[16]~input_o\ & ((!\A[16]~input_o\) # ((!\PrefixNetwork|Recur:Inner|Recur:gPair[1]~0_combout\) # (!\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[1]~0_combout\)))) # 
-- (\B[16]~input_o\ & (!\A[16]~input_o\ & ((!\PrefixNetwork|Recur:Inner|Recur:gPair[1]~0_combout\) # (!\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[1]~0_combout\)))) ) ) ) # ( \PrefixNetwork|Recur:Inner|Recur:Inner|gPair~0_combout\ & ( 
-- !\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[1]~combout\ & ( (!\B[16]~input_o\ & !\A[16]~input_o\) ) ) ) # ( !\PrefixNetwork|Recur:Inner|Recur:Inner|gPair~0_combout\ & ( !\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[1]~combout\ & ( 
-- (!\B[16]~input_o\ & !\A[16]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100011101110111010001110111010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[16]~input_o\,
	datab => \ALT_INV_A[16]~input_o\,
	datac => \PrefixNetwork|Recur:Inner|ALT_INV_Recur:gPair[1]~0_combout\,
	datad => \PrefixNetwork|Recur:Inner|Recur:Inner|ALT_INV_Recur:pPair[1]~0_combout\,
	datae => \PrefixNetwork|Recur:Inner|Recur:Inner|ALT_INV_gPair~0_combout\,
	dataf => \PrefixNetwork|Recur:Inner|Recur:Inner|ALT_INV_Recur:gPair[1]~combout\,
	combout => \PrefixNetwork|Gpre[16]~13_combout\);

-- Location: MLABCELL_X49_Y4_N6
\S~17\ : arriaii_lcell_comb
-- Equation(s):
-- \S~17_combout\ = ( \c~8_combout\ & ( \PrefixNetwork|Gpre[16]~13_combout\ & ( !\A[17]~input_o\ $ (!\B[16]~input_o\ $ (!\A[16]~input_o\ $ (!\B[17]~input_o\))) ) ) ) # ( !\c~8_combout\ & ( \PrefixNetwork|Gpre[16]~13_combout\ & ( !\A[17]~input_o\ $ 
-- (!\B[17]~input_o\) ) ) ) # ( \c~8_combout\ & ( !\PrefixNetwork|Gpre[16]~13_combout\ & ( !\A[17]~input_o\ $ (\B[17]~input_o\) ) ) ) # ( !\c~8_combout\ & ( !\PrefixNetwork|Gpre[16]~13_combout\ & ( !\A[17]~input_o\ $ (\B[17]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101001010101101010100101010101010101101010100110100110010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[17]~input_o\,
	datab => \ALT_INV_B[16]~input_o\,
	datac => \ALT_INV_A[16]~input_o\,
	datad => \ALT_INV_B[17]~input_o\,
	datae => \ALT_INV_c~8_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gpre[16]~13_combout\,
	combout => \S~17_combout\);

-- Location: MLABCELL_X44_Y4_N36
\PrefixNetwork|Recur:gPair[8]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:gPair[8]~0_combout\ = ( \B[17]~input_o\ & ( \A[16]~input_o\ & ( (\B[16]~input_o\) # (\A[17]~input_o\) ) ) ) # ( !\B[17]~input_o\ & ( \A[16]~input_o\ & ( (\A[17]~input_o\ & \B[16]~input_o\) ) ) ) # ( \B[17]~input_o\ & ( 
-- !\A[16]~input_o\ & ( \A[17]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000011110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[17]~input_o\,
	datad => \ALT_INV_B[16]~input_o\,
	datae => \ALT_INV_B[17]~input_o\,
	dataf => \ALT_INV_A[16]~input_o\,
	combout => \PrefixNetwork|Recur:gPair[8]~0_combout\);

-- Location: LABCELL_X50_Y4_N28
\PrefixNetwork|Recur:Inner|Gpre~3\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Gpre~3_combout\ = ( \B[17]~input_o\ & ( (!\A[17]~input_o\ & (!\B[16]~input_o\ $ (!\A[16]~input_o\))) ) ) # ( !\B[17]~input_o\ & ( (\A[17]~input_o\ & (!\B[16]~input_o\ $ (!\A[16]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001011010000000000101101001011010000000000101101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[16]~input_o\,
	datac => \ALT_INV_A[16]~input_o\,
	datad => \ALT_INV_A[17]~input_o\,
	dataf => \ALT_INV_B[17]~input_o\,
	combout => \PrefixNetwork|Recur:Inner|Gpre~3_combout\);

-- Location: IOIBUF_X59_Y9_N94
\B[18]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(18),
	o => \B[18]~input_o\);

-- Location: IOIBUF_X59_Y16_N63
\A[18]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(18),
	o => \A[18]~input_o\);

-- Location: LABCELL_X50_Y4_N0
\p[18]\ : arriaii_lcell_comb
-- Equation(s):
-- p(18) = ( \A[18]~input_o\ & ( !\B[18]~input_o\ ) ) # ( !\A[18]~input_o\ & ( \B[18]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[18]~input_o\,
	dataf => \ALT_INV_A[18]~input_o\,
	combout => p(18));

-- Location: LABCELL_X45_Y4_N6
\PrefixNetwork|Recur:Inner|Gpre~4\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Gpre~4_combout\ = ( \PrefixNetwork|Recur:Inner|Recur:Inner|gPair~2_combout\ & ( \PrefixNetwork|Recur:Inner|Recur:Inner|gPair~0_combout\ & ( \PrefixNetwork|Recur:Inner|Gpre~3_combout\ ) ) ) # ( 
-- !\PrefixNetwork|Recur:Inner|Recur:Inner|gPair~2_combout\ & ( \PrefixNetwork|Recur:Inner|Recur:Inner|gPair~0_combout\ & ( (\PrefixNetwork|Recur:Inner|Gpre~3_combout\ & ((\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[1]~0_combout\) # 
-- (\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[1]~0_combout\))) ) ) ) # ( \PrefixNetwork|Recur:Inner|Recur:Inner|gPair~2_combout\ & ( !\PrefixNetwork|Recur:Inner|Recur:Inner|gPair~0_combout\ & ( \PrefixNetwork|Recur:Inner|Gpre~3_combout\ ) ) ) # ( 
-- !\PrefixNetwork|Recur:Inner|Recur:Inner|gPair~2_combout\ & ( !\PrefixNetwork|Recur:Inner|Recur:Inner|gPair~0_combout\ & ( (\PrefixNetwork|Recur:Inner|Gpre~3_combout\ & (((\PrefixNetwork|Recur:Inner|Recur:gPair[1]~0_combout\ & 
-- \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[1]~0_combout\)) # (\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[1]~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101010101010101010101010100000101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Recur:Inner|ALT_INV_Gpre~3_combout\,
	datab => \PrefixNetwork|Recur:Inner|ALT_INV_Recur:gPair[1]~0_combout\,
	datac => \PrefixNetwork|Recur:Inner|Recur:Inner|ALT_INV_Recur:pPair[1]~0_combout\,
	datad => \PrefixNetwork|Recur:Inner|Recur:Inner|ALT_INV_Recur:gPair[1]~0_combout\,
	datae => \PrefixNetwork|Recur:Inner|Recur:Inner|ALT_INV_gPair~2_combout\,
	dataf => \PrefixNetwork|Recur:Inner|Recur:Inner|ALT_INV_gPair~0_combout\,
	combout => \PrefixNetwork|Recur:Inner|Gpre~4_combout\);

-- Location: MLABCELL_X44_Y4_N16
\S~18\ : arriaii_lcell_comb
-- Equation(s):
-- \S~18_combout\ = ( \PrefixNetwork|Recur:Inner|Gpre~4_combout\ & ( \c~8_combout\ & ( !p(18) ) ) ) # ( !\PrefixNetwork|Recur:Inner|Gpre~4_combout\ & ( \c~8_combout\ & ( !p(18) $ (((!\PrefixNetwork|Recur:gPair[8]~0_combout\ & 
-- !\PrefixNetwork|Recur:Inner|Gpre~3_combout\))) ) ) ) # ( \PrefixNetwork|Recur:Inner|Gpre~4_combout\ & ( !\c~8_combout\ & ( !p(18) ) ) ) # ( !\PrefixNetwork|Recur:Inner|Gpre~4_combout\ & ( !\c~8_combout\ & ( !\PrefixNetwork|Recur:gPair[8]~0_combout\ $ 
-- (!p(18)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111001100111111110000000000111111110000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PrefixNetwork|ALT_INV_Recur:gPair[8]~0_combout\,
	datac => \PrefixNetwork|Recur:Inner|ALT_INV_Gpre~3_combout\,
	datad => ALT_INV_p(18),
	datae => \PrefixNetwork|Recur:Inner|ALT_INV_Gpre~4_combout\,
	dataf => \ALT_INV_c~8_combout\,
	combout => \S~18_combout\);

-- Location: IOIBUF_X32_Y0_N94
\A[19]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(19),
	o => \A[19]~input_o\);

-- Location: IOIBUF_X59_Y12_N1
\B[19]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(19),
	o => \B[19]~input_o\);

-- Location: MLABCELL_X44_Y4_N22
\PrefixNetwork|Gpre[18]~6\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gpre[18]~6_combout\ = ( \PrefixNetwork|Recur:gPair[8]~0_combout\ & ( \PrefixNetwork|Recur:Inner|Gpre~4_combout\ & ( (!\B[18]~input_o\ & !\A[18]~input_o\) ) ) ) # ( !\PrefixNetwork|Recur:gPair[8]~0_combout\ & ( 
-- \PrefixNetwork|Recur:Inner|Gpre~4_combout\ & ( (!\B[18]~input_o\ & !\A[18]~input_o\) ) ) ) # ( \PrefixNetwork|Recur:gPair[8]~0_combout\ & ( !\PrefixNetwork|Recur:Inner|Gpre~4_combout\ & ( (!\B[18]~input_o\ & !\A[18]~input_o\) ) ) ) # ( 
-- !\PrefixNetwork|Recur:gPair[8]~0_combout\ & ( !\PrefixNetwork|Recur:Inner|Gpre~4_combout\ & ( (!\B[18]~input_o\) # (!\A[18]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110000111100000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[18]~input_o\,
	datad => \ALT_INV_A[18]~input_o\,
	datae => \PrefixNetwork|ALT_INV_Recur:gPair[8]~0_combout\,
	dataf => \PrefixNetwork|Recur:Inner|ALT_INV_Gpre~4_combout\,
	combout => \PrefixNetwork|Gpre[18]~6_combout\);

-- Location: MLABCELL_X44_Y4_N26
\S~19\ : arriaii_lcell_comb
-- Equation(s):
-- \S~19_combout\ = ( \PrefixNetwork|Gpre[18]~6_combout\ & ( \c~8_combout\ & ( !\A[19]~input_o\ $ (!\B[19]~input_o\ $ (((p(18) & \PrefixNetwork|Recur:Inner|Gpre~3_combout\)))) ) ) ) # ( !\PrefixNetwork|Gpre[18]~6_combout\ & ( \c~8_combout\ & ( 
-- !\A[19]~input_o\ $ (\B[19]~input_o\) ) ) ) # ( \PrefixNetwork|Gpre[18]~6_combout\ & ( !\c~8_combout\ & ( !\A[19]~input_o\ $ (!\B[19]~input_o\) ) ) ) # ( !\PrefixNetwork|Gpre[18]~6_combout\ & ( !\c~8_combout\ & ( !\A[19]~input_o\ $ (\B[19]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010010110100101010110100101101010100101101001010101101001101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[19]~input_o\,
	datab => ALT_INV_p(18),
	datac => \ALT_INV_B[19]~input_o\,
	datad => \PrefixNetwork|Recur:Inner|ALT_INV_Gpre~3_combout\,
	datae => \PrefixNetwork|ALT_INV_Gpre[18]~6_combout\,
	dataf => \ALT_INV_c~8_combout\,
	combout => \S~19_combout\);

-- Location: IOIBUF_X59_Y6_N63
\B[20]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(20),
	o => \B[20]~input_o\);

-- Location: IOIBUF_X48_Y0_N94
\A[20]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(20),
	o => \A[20]~input_o\);

-- Location: MLABCELL_X44_Y4_N38
\PrefixNetwork|Recur:gPair[8]~0DUPLICATE\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:gPair[8]~0DUPLICATE_combout\ = ( \B[17]~input_o\ & ( \A[16]~input_o\ & ( (\A[17]~input_o\) # (\B[16]~input_o\) ) ) ) # ( !\B[17]~input_o\ & ( \A[16]~input_o\ & ( (\B[16]~input_o\ & \A[17]~input_o\) ) ) ) # ( \B[17]~input_o\ & ( 
-- !\A[16]~input_o\ & ( \A[17]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000011110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[16]~input_o\,
	datad => \ALT_INV_A[17]~input_o\,
	datae => \ALT_INV_B[17]~input_o\,
	dataf => \ALT_INV_A[16]~input_o\,
	combout => \PrefixNetwork|Recur:gPair[8]~0DUPLICATE_combout\);

-- Location: MLABCELL_X44_Y4_N28
\PrefixNetwork|Recur:Inner|Recur:gPair[4]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Recur:gPair[4]~0_combout\ = ( \A[18]~input_o\ & ( \PrefixNetwork|Recur:gPair[8]~0DUPLICATE_combout\ & ( (\B[19]~input_o\) # (\A[19]~input_o\) ) ) ) # ( !\A[18]~input_o\ & ( \PrefixNetwork|Recur:gPair[8]~0DUPLICATE_combout\ & ( 
-- (!\B[18]~input_o\ & (\A[19]~input_o\ & \B[19]~input_o\)) # (\B[18]~input_o\ & ((\B[19]~input_o\) # (\A[19]~input_o\))) ) ) ) # ( \A[18]~input_o\ & ( !\PrefixNetwork|Recur:gPair[8]~0DUPLICATE_combout\ & ( (!\B[18]~input_o\ & (\A[19]~input_o\ & 
-- \B[19]~input_o\)) # (\B[18]~input_o\ & ((\B[19]~input_o\) # (\A[19]~input_o\))) ) ) ) # ( !\A[18]~input_o\ & ( !\PrefixNetwork|Recur:gPair[8]~0DUPLICATE_combout\ & ( (\A[19]~input_o\ & \B[19]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000110011111100000011001111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[18]~input_o\,
	datac => \ALT_INV_A[19]~input_o\,
	datad => \ALT_INV_B[19]~input_o\,
	datae => \ALT_INV_A[18]~input_o\,
	dataf => \PrefixNetwork|ALT_INV_Recur:gPair[8]~0DUPLICATE_combout\,
	combout => \PrefixNetwork|Recur:Inner|Recur:gPair[4]~0_combout\);

-- Location: MLABCELL_X49_Y4_N0
\PrefixNetwork|Recur:Inner|Recur:Inner|Ppre[4]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Recur:Inner|Ppre[4]~0_combout\ = ( p(18) & ( (\PrefixNetwork|Recur:Inner|Gpre~3_combout\ & (!\B[19]~input_o\ $ (!\A[19]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001111000000000000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[19]~input_o\,
	datac => \ALT_INV_A[19]~input_o\,
	datad => \PrefixNetwork|Recur:Inner|ALT_INV_Gpre~3_combout\,
	dataf => ALT_INV_p(18),
	combout => \PrefixNetwork|Recur:Inner|Recur:Inner|Ppre[4]~0_combout\);

-- Location: MLABCELL_X49_Y4_N10
\PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~1DUPLICATE\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~1DUPLICATE_combout\ = ( \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[1]~0_combout\ & ( \PrefixNetwork|Recur:Inner|Recur:Inner|gPair~0_combout\ & ( \PrefixNetwork|Recur:Inner|Recur:Inner|Ppre[4]~0_combout\ 
-- ) ) ) # ( !\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[1]~0_combout\ & ( \PrefixNetwork|Recur:Inner|Recur:Inner|gPair~0_combout\ & ( (\PrefixNetwork|Recur:Inner|Recur:Inner|Ppre[4]~0_combout\ & 
-- ((\PrefixNetwork|Recur:Inner|Recur:Inner|gPair~2_combout\) # (\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[1]~0_combout\))) ) ) ) # ( \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[1]~0_combout\ & ( 
-- !\PrefixNetwork|Recur:Inner|Recur:Inner|gPair~0_combout\ & ( (\PrefixNetwork|Recur:Inner|Recur:Inner|Ppre[4]~0_combout\ & (((\PrefixNetwork|Recur:Inner|Recur:Inner|gPair~2_combout\) # (\PrefixNetwork|Recur:Inner|Recur:gPair[1]~0_combout\)) # 
-- (\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[1]~0_combout\))) ) ) ) # ( !\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[1]~0_combout\ & ( !\PrefixNetwork|Recur:Inner|Recur:Inner|gPair~0_combout\ & ( 
-- (\PrefixNetwork|Recur:Inner|Recur:Inner|Ppre[4]~0_combout\ & ((\PrefixNetwork|Recur:Inner|Recur:Inner|gPair~2_combout\) # (\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[1]~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001011111000000000111111100000000010111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Recur:Inner|Recur:Inner|ALT_INV_Recur:gPair[1]~0_combout\,
	datab => \PrefixNetwork|Recur:Inner|ALT_INV_Recur:gPair[1]~0_combout\,
	datac => \PrefixNetwork|Recur:Inner|Recur:Inner|ALT_INV_gPair~2_combout\,
	datad => \PrefixNetwork|Recur:Inner|Recur:Inner|ALT_INV_Ppre[4]~0_combout\,
	datae => \PrefixNetwork|Recur:Inner|Recur:Inner|ALT_INV_Recur:pPair[1]~0_combout\,
	dataf => \PrefixNetwork|Recur:Inner|Recur:Inner|ALT_INV_gPair~0_combout\,
	combout => \PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~1DUPLICATE_combout\);

-- Location: LABCELL_X58_Y6_N2
\S~20\ : arriaii_lcell_comb
-- Equation(s):
-- \S~20_combout\ = ( \c~8_combout\ & ( \PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~1DUPLICATE_combout\ & ( !\B[20]~input_o\ $ (\A[20]~input_o\) ) ) ) # ( !\c~8_combout\ & ( \PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~1DUPLICATE_combout\ & ( !\B[20]~input_o\ 
-- $ (\A[20]~input_o\) ) ) ) # ( \c~8_combout\ & ( !\PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~1DUPLICATE_combout\ & ( !\B[20]~input_o\ $ (!\A[20]~input_o\ $ (((\PrefixNetwork|Recur:Inner|Recur:Inner|Ppre[4]~0_combout\) # 
-- (\PrefixNetwork|Recur:Inner|Recur:gPair[4]~0_combout\)))) ) ) ) # ( !\c~8_combout\ & ( !\PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~1DUPLICATE_combout\ & ( !\B[20]~input_o\ $ (!\A[20]~input_o\ $ (\PrefixNetwork|Recur:Inner|Recur:gPair[4]~0_combout\)) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101101001011010011001100110011001100110011001100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[20]~input_o\,
	datab => \ALT_INV_A[20]~input_o\,
	datac => \PrefixNetwork|Recur:Inner|ALT_INV_Recur:gPair[4]~0_combout\,
	datad => \PrefixNetwork|Recur:Inner|Recur:Inner|ALT_INV_Ppre[4]~0_combout\,
	datae => \ALT_INV_c~8_combout\,
	dataf => \PrefixNetwork|Recur:Inner|Recur:Inner|ALT_INV_Gpre~1DUPLICATE_combout\,
	combout => \S~20_combout\);

-- Location: IOIBUF_X47_Y0_N63
\B[21]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(21),
	o => \B[21]~input_o\);

-- Location: IOIBUF_X48_Y0_N32
\A[21]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(21),
	o => \A[21]~input_o\);

-- Location: LABCELL_X47_Y4_N10
\p[21]\ : arriaii_lcell_comb
-- Equation(s):
-- p(21) = !\B[21]~input_o\ $ (!\A[21]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000000001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[21]~input_o\,
	datad => \ALT_INV_A[21]~input_o\,
	combout => p(21));

-- Location: MLABCELL_X49_Y4_N28
\PrefixNetwork|Gpre[20]~7\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gpre[20]~7_combout\ = ( \PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~1DUPLICATE_combout\ & ( (!\A[20]~input_o\ & !\B[20]~input_o\) ) ) # ( !\PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~1DUPLICATE_combout\ & ( (!\A[20]~input_o\ & 
-- ((!\PrefixNetwork|Recur:Inner|Recur:gPair[4]~0_combout\) # (!\B[20]~input_o\))) # (\A[20]~input_o\ & (!\PrefixNetwork|Recur:Inner|Recur:gPair[4]~0_combout\ & !\B[20]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101010100000111110101010000010101010000000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[20]~input_o\,
	datac => \PrefixNetwork|Recur:Inner|ALT_INV_Recur:gPair[4]~0_combout\,
	datad => \ALT_INV_B[20]~input_o\,
	dataf => \PrefixNetwork|Recur:Inner|Recur:Inner|ALT_INV_Gpre~1DUPLICATE_combout\,
	combout => \PrefixNetwork|Gpre[20]~7_combout\);

-- Location: MLABCELL_X49_Y4_N38
\S~21\ : arriaii_lcell_comb
-- Equation(s):
-- \S~21_combout\ = ( \c~8_combout\ & ( \PrefixNetwork|Gpre[20]~7_combout\ & ( !p(21) $ (((!\PrefixNetwork|Recur:Inner|Recur:Inner|Ppre[4]~0_combout\) # (!\A[20]~input_o\ $ (\B[20]~input_o\)))) ) ) ) # ( !\c~8_combout\ & ( \PrefixNetwork|Gpre[20]~7_combout\ 
-- & ( p(21) ) ) ) # ( \c~8_combout\ & ( !\PrefixNetwork|Gpre[20]~7_combout\ & ( !p(21) ) ) ) # ( !\c~8_combout\ & ( !\PrefixNetwork|Gpre[20]~7_combout\ & ( !p(21) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000001111000011110000111101101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[20]~input_o\,
	datab => \ALT_INV_B[20]~input_o\,
	datac => ALT_INV_p(21),
	datad => \PrefixNetwork|Recur:Inner|Recur:Inner|ALT_INV_Ppre[4]~0_combout\,
	datae => \ALT_INV_c~8_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gpre[20]~7_combout\,
	combout => \S~21_combout\);

-- Location: LABCELL_X47_Y4_N30
\PrefixNetwork|Recur:Inner|Recur:Inner|gPair~3\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Recur:Inner|gPair~3_combout\ = ( \B[20]~input_o\ & ( (!\A[20]~input_o\ & (!\A[21]~input_o\ $ (!\B[21]~input_o\))) ) ) # ( !\B[20]~input_o\ & ( (\A[20]~input_o\ & (!\A[21]~input_o\ $ (!\B[21]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100001010000001010000101001010000101000000101000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[21]~input_o\,
	datac => \ALT_INV_A[20]~input_o\,
	datad => \ALT_INV_B[21]~input_o\,
	dataf => \ALT_INV_B[20]~input_o\,
	combout => \PrefixNetwork|Recur:Inner|Recur:Inner|gPair~3_combout\);

-- Location: IOIBUF_X47_Y0_N1
\A[22]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(22),
	o => \A[22]~input_o\);

-- Location: IOIBUF_X48_Y0_N63
\B[22]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(22),
	o => \B[22]~input_o\);

-- Location: LABCELL_X47_Y4_N4
\p[22]\ : arriaii_lcell_comb
-- Equation(s):
-- p(22) = ( \B[22]~input_o\ & ( !\A[22]~input_o\ ) ) # ( !\B[22]~input_o\ & ( \A[22]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[22]~input_o\,
	dataf => \ALT_INV_B[22]~input_o\,
	combout => p(22));

-- Location: LABCELL_X47_Y4_N34
\PrefixNetwork|Recur:gPair[10]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:gPair[10]~0_combout\ = ( \A[21]~input_o\ & ( \B[20]~input_o\ & ( (\A[20]~input_o\) # (\B[21]~input_o\) ) ) ) # ( !\A[21]~input_o\ & ( \B[20]~input_o\ & ( (\B[21]~input_o\ & \A[20]~input_o\) ) ) ) # ( \A[21]~input_o\ & ( 
-- !\B[20]~input_o\ & ( \B[21]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000011110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[21]~input_o\,
	datad => \ALT_INV_A[20]~input_o\,
	datae => \ALT_INV_A[21]~input_o\,
	dataf => \ALT_INV_B[20]~input_o\,
	combout => \PrefixNetwork|Recur:gPair[10]~0_combout\);

-- Location: MLABCELL_X49_Y4_N8
\PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~1\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~1_combout\ = ( \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[1]~0_combout\ & ( \PrefixNetwork|Recur:Inner|Recur:Inner|gPair~0_combout\ & ( \PrefixNetwork|Recur:Inner|Recur:Inner|Ppre[4]~0_combout\ ) ) ) # ( 
-- !\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[1]~0_combout\ & ( \PrefixNetwork|Recur:Inner|Recur:Inner|gPair~0_combout\ & ( (\PrefixNetwork|Recur:Inner|Recur:Inner|Ppre[4]~0_combout\ & ((\PrefixNetwork|Recur:Inner|Recur:Inner|gPair~2_combout\) # 
-- (\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[1]~0_combout\))) ) ) ) # ( \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[1]~0_combout\ & ( !\PrefixNetwork|Recur:Inner|Recur:Inner|gPair~0_combout\ & ( 
-- (\PrefixNetwork|Recur:Inner|Recur:Inner|Ppre[4]~0_combout\ & (((\PrefixNetwork|Recur:Inner|Recur:Inner|gPair~2_combout\) # (\PrefixNetwork|Recur:Inner|Recur:gPair[1]~0_combout\)) # (\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[1]~0_combout\))) ) ) ) 
-- # ( !\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[1]~0_combout\ & ( !\PrefixNetwork|Recur:Inner|Recur:Inner|gPair~0_combout\ & ( (\PrefixNetwork|Recur:Inner|Recur:Inner|Ppre[4]~0_combout\ & ((\PrefixNetwork|Recur:Inner|Recur:Inner|gPair~2_combout\) 
-- # (\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[1]~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100001111000001110000111100000101000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Recur:Inner|Recur:Inner|ALT_INV_Recur:gPair[1]~0_combout\,
	datab => \PrefixNetwork|Recur:Inner|ALT_INV_Recur:gPair[1]~0_combout\,
	datac => \PrefixNetwork|Recur:Inner|Recur:Inner|ALT_INV_Ppre[4]~0_combout\,
	datad => \PrefixNetwork|Recur:Inner|Recur:Inner|ALT_INV_gPair~2_combout\,
	datae => \PrefixNetwork|Recur:Inner|Recur:Inner|ALT_INV_Recur:pPair[1]~0_combout\,
	dataf => \PrefixNetwork|Recur:Inner|Recur:Inner|ALT_INV_gPair~0_combout\,
	combout => \PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~1_combout\);

-- Location: MLABCELL_X49_Y4_N32
\c~9\ : arriaii_lcell_comb
-- Equation(s):
-- \c~9_combout\ = ( \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[1]~0_combout\ & ( \c~3_combout\ & ( (\PrefixNetwork|Recur:Inner|Recur:Inner|Ppre[4]~0_combout\ & (p(21) & (!\A[20]~input_o\ $ (!\B[20]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[20]~input_o\,
	datab => \ALT_INV_B[20]~input_o\,
	datac => \PrefixNetwork|Recur:Inner|Recur:Inner|ALT_INV_Ppre[4]~0_combout\,
	datad => ALT_INV_p(21),
	datae => \PrefixNetwork|Recur:Inner|Recur:Inner|ALT_INV_Recur:pPair[1]~0_combout\,
	dataf => \ALT_INV_c~3_combout\,
	combout => \c~9_combout\);

-- Location: MLABCELL_X49_Y4_N20
\S~22\ : arriaii_lcell_comb
-- Equation(s):
-- \S~22_combout\ = ( \PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~1_combout\ & ( \c~9_combout\ & ( !p(22) ) ) ) # ( !\PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~1_combout\ & ( \c~9_combout\ & ( !p(22) ) ) ) # ( 
-- \PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~1_combout\ & ( !\c~9_combout\ & ( !p(22) $ (((!\PrefixNetwork|Recur:Inner|Recur:Inner|gPair~3_combout\ & !\PrefixNetwork|Recur:gPair[10]~0_combout\))) ) ) ) # ( 
-- !\PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~1_combout\ & ( !\c~9_combout\ & ( !p(22) $ (((!\PrefixNetwork|Recur:gPair[10]~0_combout\ & ((!\PrefixNetwork|Recur:Inner|Recur:Inner|gPair~3_combout\) # 
-- (!\PrefixNetwork|Recur:Inner|Recur:gPair[4]~0_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011011001100011001101100110011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Recur:Inner|Recur:Inner|ALT_INV_gPair~3_combout\,
	datab => ALT_INV_p(22),
	datac => \PrefixNetwork|Recur:Inner|ALT_INV_Recur:gPair[4]~0_combout\,
	datad => \PrefixNetwork|ALT_INV_Recur:gPair[10]~0_combout\,
	datae => \PrefixNetwork|Recur:Inner|Recur:Inner|ALT_INV_Gpre~1_combout\,
	dataf => \ALT_INV_c~9_combout\,
	combout => \S~22_combout\);

-- Location: IOIBUF_X47_Y0_N32
\B[23]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(23),
	o => \B[23]~input_o\);

-- Location: IOIBUF_X39_Y0_N32
\A[23]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(23),
	o => \A[23]~input_o\);

-- Location: LABCELL_X47_Y4_N32
\PrefixNetwork|Recur:gPair[10]~0DUPLICATE\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:gPair[10]~0DUPLICATE_combout\ = ( \A[21]~input_o\ & ( \B[20]~input_o\ & ( (\B[21]~input_o\) # (\A[20]~input_o\) ) ) ) # ( !\A[21]~input_o\ & ( \B[20]~input_o\ & ( (\A[20]~input_o\ & \B[21]~input_o\) ) ) ) # ( \A[21]~input_o\ & ( 
-- !\B[20]~input_o\ & ( \B[21]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000011110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[20]~input_o\,
	datad => \ALT_INV_B[21]~input_o\,
	datae => \ALT_INV_A[21]~input_o\,
	dataf => \ALT_INV_B[20]~input_o\,
	combout => \PrefixNetwork|Recur:gPair[10]~0DUPLICATE_combout\);

-- Location: LABCELL_X47_Y4_N38
\PrefixNetwork|Gpre[22]~12\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gpre[22]~12_combout\ = ( \PrefixNetwork|Recur:Inner|Recur:gPair[4]~0_combout\ & ( \PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~1DUPLICATE_combout\ & ( (!\A[22]~input_o\ & ((!\B[22]~input_o\) # 
-- ((!\PrefixNetwork|Recur:gPair[10]~0DUPLICATE_combout\ & !\PrefixNetwork|Recur:Inner|Recur:Inner|gPair~3_combout\)))) # (\A[22]~input_o\ & (!\PrefixNetwork|Recur:gPair[10]~0DUPLICATE_combout\ & (!\B[22]~input_o\ & 
-- !\PrefixNetwork|Recur:Inner|Recur:Inner|gPair~3_combout\))) ) ) ) # ( !\PrefixNetwork|Recur:Inner|Recur:gPair[4]~0_combout\ & ( \PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~1DUPLICATE_combout\ & ( (!\A[22]~input_o\ & ((!\B[22]~input_o\) # 
-- ((!\PrefixNetwork|Recur:gPair[10]~0DUPLICATE_combout\ & !\PrefixNetwork|Recur:Inner|Recur:Inner|gPair~3_combout\)))) # (\A[22]~input_o\ & (!\PrefixNetwork|Recur:gPair[10]~0DUPLICATE_combout\ & (!\B[22]~input_o\ & 
-- !\PrefixNetwork|Recur:Inner|Recur:Inner|gPair~3_combout\))) ) ) ) # ( \PrefixNetwork|Recur:Inner|Recur:gPair[4]~0_combout\ & ( !\PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~1DUPLICATE_combout\ & ( (!\A[22]~input_o\ & ((!\B[22]~input_o\) # 
-- ((!\PrefixNetwork|Recur:gPair[10]~0DUPLICATE_combout\ & !\PrefixNetwork|Recur:Inner|Recur:Inner|gPair~3_combout\)))) # (\A[22]~input_o\ & (!\PrefixNetwork|Recur:gPair[10]~0DUPLICATE_combout\ & (!\B[22]~input_o\ & 
-- !\PrefixNetwork|Recur:Inner|Recur:Inner|gPair~3_combout\))) ) ) ) # ( !\PrefixNetwork|Recur:Inner|Recur:gPair[4]~0_combout\ & ( !\PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~1DUPLICATE_combout\ & ( (!\PrefixNetwork|Recur:gPair[10]~0DUPLICATE_combout\ & 
-- ((!\A[22]~input_o\) # (!\B[22]~input_o\))) # (\PrefixNetwork|Recur:gPair[10]~0DUPLICATE_combout\ & (!\A[22]~input_o\ & !\B[22]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110100011101000111010001100000011101000110000001110100011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|ALT_INV_Recur:gPair[10]~0DUPLICATE_combout\,
	datab => \ALT_INV_A[22]~input_o\,
	datac => \ALT_INV_B[22]~input_o\,
	datad => \PrefixNetwork|Recur:Inner|Recur:Inner|ALT_INV_gPair~3_combout\,
	datae => \PrefixNetwork|Recur:Inner|ALT_INV_Recur:gPair[4]~0_combout\,
	dataf => \PrefixNetwork|Recur:Inner|Recur:Inner|ALT_INV_Gpre~1DUPLICATE_combout\,
	combout => \PrefixNetwork|Gpre[22]~12_combout\);

-- Location: LABCELL_X47_Y4_N6
\S~23\ : arriaii_lcell_comb
-- Equation(s):
-- \S~23_combout\ = ( \PrefixNetwork|Gpre[22]~12_combout\ & ( !\B[23]~input_o\ $ (!\A[23]~input_o\ $ (((\c~9_combout\ & p(22))))) ) ) # ( !\PrefixNetwork|Gpre[22]~12_combout\ & ( !\B[23]~input_o\ $ (\A[23]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100110011001100110011001100101100110011010010110011001101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[23]~input_o\,
	datab => \ALT_INV_A[23]~input_o\,
	datac => \ALT_INV_c~9_combout\,
	datad => ALT_INV_p(22),
	dataf => \PrefixNetwork|ALT_INV_Gpre[22]~12_combout\,
	combout => \S~23_combout\);

-- Location: IOIBUF_X35_Y0_N1
\A[24]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(24),
	o => \A[24]~input_o\);

-- Location: IOIBUF_X59_Y16_N94
\B[24]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(24),
	o => \B[24]~input_o\);

-- Location: LABCELL_X47_Y4_N16
\PrefixNetwork|Recur:Inner|gPair~3\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|gPair~3_combout\ = ( \A[23]~input_o\ & ( (!\B[23]~input_o\ & (!\B[22]~input_o\ $ (!\A[22]~input_o\))) ) ) # ( !\A[23]~input_o\ & ( (\B[23]~input_o\ & (!\B[22]~input_o\ $ (!\A[22]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101010000000001010101000000001010101000000000101010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[23]~input_o\,
	datac => \ALT_INV_B[22]~input_o\,
	datad => \ALT_INV_A[22]~input_o\,
	dataf => \ALT_INV_A[23]~input_o\,
	combout => \PrefixNetwork|Recur:Inner|gPair~3_combout\);

-- Location: LABCELL_X50_Y4_N8
\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[2]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[2]~0_combout\ = ( p(18) & ( \PrefixNetwork|Recur:Inner|Gpre~3_combout\ & ( (\PrefixNetwork|Recur:Inner|gPair~3_combout\ & (\PrefixNetwork|Recur:Inner|Recur:Inner|gPair~3_combout\ & (!\B[19]~input_o\ $ 
-- (!\A[19]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[19]~input_o\,
	datab => \ALT_INV_A[19]~input_o\,
	datac => \PrefixNetwork|Recur:Inner|ALT_INV_gPair~3_combout\,
	datad => \PrefixNetwork|Recur:Inner|Recur:Inner|ALT_INV_gPair~3_combout\,
	datae => ALT_INV_p(18),
	dataf => \PrefixNetwork|Recur:Inner|ALT_INV_Gpre~3_combout\,
	combout => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[2]~0_combout\);

-- Location: LABCELL_X50_Y4_N36
\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Gpre~0\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Gpre~0_combout\ = ( \PrefixNetwork|Recur:Inner|Recur:Inner|gPair~0_combout\ & ( \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[1]~0_combout\ & ( 
-- \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[2]~0_combout\ ) ) ) # ( !\PrefixNetwork|Recur:Inner|Recur:Inner|gPair~0_combout\ & ( \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[1]~0_combout\ & ( 
-- (\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[2]~0_combout\ & (((\PrefixNetwork|Recur:Inner|Recur:Inner|gPair~2_combout\) # (\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[1]~0_combout\)) # 
-- (\PrefixNetwork|Recur:Inner|Recur:gPair[1]~0_combout\))) ) ) ) # ( \PrefixNetwork|Recur:Inner|Recur:Inner|gPair~0_combout\ & ( !\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[1]~0_combout\ & ( 
-- (\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[2]~0_combout\ & ((\PrefixNetwork|Recur:Inner|Recur:Inner|gPair~2_combout\) # (\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[1]~0_combout\))) ) ) ) # ( 
-- !\PrefixNetwork|Recur:Inner|Recur:Inner|gPair~0_combout\ & ( !\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[1]~0_combout\ & ( (\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[2]~0_combout\ & 
-- ((\PrefixNetwork|Recur:Inner|Recur:Inner|gPair~2_combout\) # (\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[1]~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100001111000000110000111100000111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Recur:Inner|ALT_INV_Recur:gPair[1]~0_combout\,
	datab => \PrefixNetwork|Recur:Inner|Recur:Inner|ALT_INV_Recur:gPair[1]~0_combout\,
	datac => \PrefixNetwork|Recur:Inner|Recur:Inner|ALT_INV_Recur:pPair[2]~0_combout\,
	datad => \PrefixNetwork|Recur:Inner|Recur:Inner|ALT_INV_gPair~2_combout\,
	datae => \PrefixNetwork|Recur:Inner|Recur:Inner|ALT_INV_gPair~0_combout\,
	dataf => \PrefixNetwork|Recur:Inner|Recur:Inner|ALT_INV_Recur:pPair[1]~0_combout\,
	combout => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Gpre~0_combout\);

-- Location: LABCELL_X47_Y4_N0
\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[2]~0DUPLICATE\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[2]~0DUPLICATE_combout\ = ( \A[22]~input_o\ & ( \PrefixNetwork|Recur:gPair[10]~0DUPLICATE_combout\ & ( (\A[23]~input_o\) # (\B[23]~input_o\) ) ) ) # ( !\A[22]~input_o\ & ( 
-- \PrefixNetwork|Recur:gPair[10]~0DUPLICATE_combout\ & ( (!\B[23]~input_o\ & (\B[22]~input_o\ & \A[23]~input_o\)) # (\B[23]~input_o\ & ((\A[23]~input_o\) # (\B[22]~input_o\))) ) ) ) # ( \A[22]~input_o\ & ( !\PrefixNetwork|Recur:gPair[10]~0DUPLICATE_combout\ 
-- & ( (!\B[23]~input_o\ & (\B[22]~input_o\ & \A[23]~input_o\)) # (\B[23]~input_o\ & ((\A[23]~input_o\) # (\B[22]~input_o\))) ) ) ) # ( !\A[22]~input_o\ & ( !\PrefixNetwork|Recur:gPair[10]~0DUPLICATE_combout\ & ( (\B[23]~input_o\ & \A[23]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000110011111100000011001111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[23]~input_o\,
	datac => \ALT_INV_B[22]~input_o\,
	datad => \ALT_INV_A[23]~input_o\,
	datae => \ALT_INV_A[22]~input_o\,
	dataf => \PrefixNetwork|ALT_INV_Recur:gPair[10]~0DUPLICATE_combout\,
	combout => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[2]~0DUPLICATE_combout\);

-- Location: LABCELL_X47_Y4_N22
\PrefixNetwork|Recur:Inner|Recur:Inner|gPair~4\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Recur:Inner|gPair~4_combout\ = ( \PrefixNetwork|Recur:Inner|gPair~3_combout\ & ( \PrefixNetwork|Recur:Inner|Recur:Inner|gPair~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|Recur:Inner|Recur:Inner|ALT_INV_gPair~3_combout\,
	dataf => \PrefixNetwork|Recur:Inner|ALT_INV_gPair~3_combout\,
	combout => \PrefixNetwork|Recur:Inner|Recur:Inner|gPair~4_combout\);

-- Location: LABCELL_X47_Y4_N24
\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[2]\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[2]~combout\ = ( !\PrefixNetwork|Recur:Inner|Recur:Inner|gPair~4_combout\ & ( \PrefixNetwork|Recur:Inner|Recur:gPair[4]~0_combout\ & ( 
-- !\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[2]~0DUPLICATE_combout\ ) ) ) # ( \PrefixNetwork|Recur:Inner|Recur:Inner|gPair~4_combout\ & ( !\PrefixNetwork|Recur:Inner|Recur:gPair[4]~0_combout\ & ( 
-- !\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[2]~0DUPLICATE_combout\ ) ) ) # ( !\PrefixNetwork|Recur:Inner|Recur:Inner|gPair~4_combout\ & ( !\PrefixNetwork|Recur:Inner|Recur:gPair[4]~0_combout\ & ( 
-- !\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[2]~0DUPLICATE_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|Recur:Inner|Recur:Inner|ALT_INV_Recur:gPair[2]~0DUPLICATE_combout\,
	datae => \PrefixNetwork|Recur:Inner|Recur:Inner|ALT_INV_gPair~4_combout\,
	dataf => \PrefixNetwork|Recur:Inner|ALT_INV_Recur:gPair[4]~0_combout\,
	combout => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[2]~combout\);

-- Location: MLABCELL_X52_Y4_N18
\c~10\ : arriaii_lcell_comb
-- Equation(s):
-- \c~10_combout\ = ( \c~3_combout\ & ( (\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[1]~0_combout\ & \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[2]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|Recur:Inner|Recur:Inner|ALT_INV_Recur:pPair[1]~0_combout\,
	datad => \PrefixNetwork|Recur:Inner|Recur:Inner|ALT_INV_Recur:pPair[2]~0_combout\,
	dataf => \ALT_INV_c~3_combout\,
	combout => \c~10_combout\);

-- Location: MLABCELL_X52_Y4_N20
\S~24\ : arriaii_lcell_comb
-- Equation(s):
-- \S~24_combout\ = ( \c~10_combout\ & ( !\A[24]~input_o\ $ (\B[24]~input_o\) ) ) # ( !\c~10_combout\ & ( !\A[24]~input_o\ $ (!\B[24]~input_o\ $ (((!\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[2]~combout\) # 
-- (\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Gpre~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100101101001100110010110100110011001100110011001100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[24]~input_o\,
	datab => \ALT_INV_B[24]~input_o\,
	datac => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|ALT_INV_Gpre~0_combout\,
	datad => \PrefixNetwork|Recur:Inner|Recur:Inner|ALT_INV_Recur:gPair[2]~combout\,
	dataf => \ALT_INV_c~10_combout\,
	combout => \S~24_combout\);

-- Location: IOIBUF_X35_Y0_N94
\B[25]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(25),
	o => \B[25]~input_o\);

-- Location: IOIBUF_X39_Y0_N1
\A[25]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(25),
	o => \A[25]~input_o\);

-- Location: LABCELL_X50_Y4_N38
\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Gpre~0DUPLICATE\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Gpre~0DUPLICATE_combout\ = ( \PrefixNetwork|Recur:Inner|Recur:Inner|gPair~0_combout\ & ( \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[1]~0_combout\ & ( 
-- \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[2]~0_combout\ ) ) ) # ( !\PrefixNetwork|Recur:Inner|Recur:Inner|gPair~0_combout\ & ( \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[1]~0_combout\ & ( 
-- (\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[2]~0_combout\ & (((\PrefixNetwork|Recur:Inner|Recur:Inner|gPair~2_combout\) # (\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[1]~0_combout\)) # 
-- (\PrefixNetwork|Recur:Inner|Recur:gPair[1]~0_combout\))) ) ) ) # ( \PrefixNetwork|Recur:Inner|Recur:Inner|gPair~0_combout\ & ( !\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[1]~0_combout\ & ( 
-- (\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[2]~0_combout\ & ((\PrefixNetwork|Recur:Inner|Recur:Inner|gPair~2_combout\) # (\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[1]~0_combout\))) ) ) ) # ( 
-- !\PrefixNetwork|Recur:Inner|Recur:Inner|gPair~0_combout\ & ( !\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[1]~0_combout\ & ( (\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[2]~0_combout\ & 
-- ((\PrefixNetwork|Recur:Inner|Recur:Inner|gPair~2_combout\) # (\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[1]~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000111111000000000011111100000000011111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Recur:Inner|ALT_INV_Recur:gPair[1]~0_combout\,
	datab => \PrefixNetwork|Recur:Inner|Recur:Inner|ALT_INV_Recur:gPair[1]~0_combout\,
	datac => \PrefixNetwork|Recur:Inner|Recur:Inner|ALT_INV_gPair~2_combout\,
	datad => \PrefixNetwork|Recur:Inner|Recur:Inner|ALT_INV_Recur:pPair[2]~0_combout\,
	datae => \PrefixNetwork|Recur:Inner|Recur:Inner|ALT_INV_gPair~0_combout\,
	dataf => \PrefixNetwork|Recur:Inner|Recur:Inner|ALT_INV_Recur:pPair[1]~0_combout\,
	combout => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Gpre~0DUPLICATE_combout\);

-- Location: MLABCELL_X52_Y4_N34
\PrefixNetwork|Gpre[24]~8\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gpre[24]~8_combout\ = ( \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Gpre~0DUPLICATE_combout\ & ( (!\A[24]~input_o\ & !\B[24]~input_o\) ) ) # ( !\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Gpre~0DUPLICATE_combout\ & ( 
-- (!\A[24]~input_o\ & ((!\B[24]~input_o\) # (\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[2]~combout\))) # (\A[24]~input_o\ & (\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[2]~combout\ & !\B[24]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111100001100110011110000110011001100000000001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[24]~input_o\,
	datac => \PrefixNetwork|Recur:Inner|Recur:Inner|ALT_INV_Recur:gPair[2]~combout\,
	datad => \ALT_INV_B[24]~input_o\,
	dataf => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|ALT_INV_Gpre~0DUPLICATE_combout\,
	combout => \PrefixNetwork|Gpre[24]~8_combout\);

-- Location: MLABCELL_X52_Y4_N28
\S~25\ : arriaii_lcell_comb
-- Equation(s):
-- \S~25_combout\ = ( \PrefixNetwork|Gpre[24]~8_combout\ & ( \c~10_combout\ & ( !\B[25]~input_o\ $ (!\B[24]~input_o\ $ (!\A[25]~input_o\ $ (!\A[24]~input_o\))) ) ) ) # ( !\PrefixNetwork|Gpre[24]~8_combout\ & ( \c~10_combout\ & ( !\B[25]~input_o\ $ 
-- (\A[25]~input_o\) ) ) ) # ( \PrefixNetwork|Gpre[24]~8_combout\ & ( !\c~10_combout\ & ( !\B[25]~input_o\ $ (!\A[25]~input_o\) ) ) ) # ( !\PrefixNetwork|Gpre[24]~8_combout\ & ( !\c~10_combout\ & ( !\B[25]~input_o\ $ (\A[25]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010010110100101010110100101101010100101101001010110100110010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[25]~input_o\,
	datab => \ALT_INV_B[24]~input_o\,
	datac => \ALT_INV_A[25]~input_o\,
	datad => \ALT_INV_A[24]~input_o\,
	datae => \PrefixNetwork|ALT_INV_Gpre[24]~8_combout\,
	dataf => \ALT_INV_c~10_combout\,
	combout => \S~25_combout\);

-- Location: IOIBUF_X35_Y0_N63
\A[26]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(26),
	o => \A[26]~input_o\);

-- Location: IOIBUF_X59_Y16_N1
\B[26]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(26),
	o => \B[26]~input_o\);

-- Location: LABCELL_X47_Y4_N28
\p[26]\ : arriaii_lcell_comb
-- Equation(s):
-- p(26) = ( \B[26]~input_o\ & ( !\A[26]~input_o\ ) ) # ( !\B[26]~input_o\ & ( \A[26]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_A[26]~input_o\,
	dataf => \ALT_INV_B[26]~input_o\,
	combout => p(26));

-- Location: LABCELL_X47_Y4_N18
\PrefixNetwork|Recur:gPair[12]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:gPair[12]~0_combout\ = ( \A[24]~input_o\ & ( (!\B[24]~input_o\ & (\A[25]~input_o\ & \B[25]~input_o\)) # (\B[24]~input_o\ & ((\B[25]~input_o\) # (\A[25]~input_o\))) ) ) # ( !\A[24]~input_o\ & ( (\A[25]~input_o\ & \B[25]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000011001111110000001100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[24]~input_o\,
	datac => \ALT_INV_A[25]~input_o\,
	datad => \ALT_INV_B[25]~input_o\,
	dataf => \ALT_INV_A[24]~input_o\,
	combout => \PrefixNetwork|Recur:gPair[12]~0_combout\);

-- Location: LABCELL_X47_Y4_N12
\c~11\ : arriaii_lcell_comb
-- Equation(s):
-- \c~11_combout\ = ( \A[25]~input_o\ & ( (!\B[25]~input_o\ & (!\A[24]~input_o\ $ (!\B[24]~input_o\))) ) ) # ( !\A[25]~input_o\ & ( (\B[25]~input_o\ & (!\A[24]~input_o\ $ (!\B[24]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001011010000000000101101001011010000000000101101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[24]~input_o\,
	datac => \ALT_INV_B[24]~input_o\,
	datad => \ALT_INV_B[25]~input_o\,
	dataf => \ALT_INV_A[25]~input_o\,
	combout => \c~11_combout\);

-- Location: MLABCELL_X52_Y4_N8
\S~26\ : arriaii_lcell_comb
-- Equation(s):
-- \S~26_combout\ = ( \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Gpre~0_combout\ & ( \c~10_combout\ & ( !p(26) $ (((!\PrefixNetwork|Recur:gPair[12]~0_combout\ & !\c~11_combout\))) ) ) ) # ( 
-- !\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Gpre~0_combout\ & ( \c~10_combout\ & ( !p(26) $ (((!\PrefixNetwork|Recur:gPair[12]~0_combout\ & !\c~11_combout\))) ) ) ) # ( \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Gpre~0_combout\ & ( 
-- !\c~10_combout\ & ( !p(26) $ (((!\PrefixNetwork|Recur:gPair[12]~0_combout\ & !\c~11_combout\))) ) ) ) # ( !\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Gpre~0_combout\ & ( !\c~10_combout\ & ( !p(26) $ (((!\PrefixNetwork|Recur:gPair[12]~0_combout\ & 
-- ((!\c~11_combout\) # (\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[2]~combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110101001100110011010100110101001101010011010100110101001101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_p(26),
	datab => \PrefixNetwork|ALT_INV_Recur:gPair[12]~0_combout\,
	datac => \ALT_INV_c~11_combout\,
	datad => \PrefixNetwork|Recur:Inner|Recur:Inner|ALT_INV_Recur:gPair[2]~combout\,
	datae => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|ALT_INV_Gpre~0_combout\,
	dataf => \ALT_INV_c~10_combout\,
	combout => \S~26_combout\);

-- Location: IOIBUF_X59_Y16_N32
\A[27]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(27),
	o => \A[27]~input_o\);

-- Location: IOIBUF_X33_Y0_N1
\B[27]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(27),
	o => \B[27]~input_o\);

-- Location: MLABCELL_X52_Y4_N6
\PrefixNetwork|Gpre[26]~11\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gpre[26]~11_combout\ = ( \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[2]~combout\ & ( \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Gpre~0DUPLICATE_combout\ & ( (!\A[26]~input_o\ & ((!\B[26]~input_o\) # 
-- ((!\PrefixNetwork|Recur:gPair[12]~0_combout\ & !\c~11_combout\)))) # (\A[26]~input_o\ & (!\B[26]~input_o\ & (!\PrefixNetwork|Recur:gPair[12]~0_combout\ & !\c~11_combout\))) ) ) ) # ( !\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[2]~combout\ & ( 
-- \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Gpre~0DUPLICATE_combout\ & ( (!\A[26]~input_o\ & ((!\B[26]~input_o\) # ((!\PrefixNetwork|Recur:gPair[12]~0_combout\ & !\c~11_combout\)))) # (\A[26]~input_o\ & (!\B[26]~input_o\ & 
-- (!\PrefixNetwork|Recur:gPair[12]~0_combout\ & !\c~11_combout\))) ) ) ) # ( \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[2]~combout\ & ( !\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Gpre~0DUPLICATE_combout\ & ( (!\A[26]~input_o\ & 
-- ((!\B[26]~input_o\) # (!\PrefixNetwork|Recur:gPair[12]~0_combout\))) # (\A[26]~input_o\ & (!\B[26]~input_o\ & !\PrefixNetwork|Recur:gPair[12]~0_combout\)) ) ) ) # ( !\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[2]~combout\ & ( 
-- !\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Gpre~0DUPLICATE_combout\ & ( (!\A[26]~input_o\ & ((!\B[26]~input_o\) # ((!\PrefixNetwork|Recur:gPair[12]~0_combout\ & !\c~11_combout\)))) # (\A[26]~input_o\ & (!\B[26]~input_o\ & 
-- (!\PrefixNetwork|Recur:gPair[12]~0_combout\ & !\c~11_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110100010001000111010001110100011101000100010001110100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[26]~input_o\,
	datab => \ALT_INV_B[26]~input_o\,
	datac => \PrefixNetwork|ALT_INV_Recur:gPair[12]~0_combout\,
	datad => \ALT_INV_c~11_combout\,
	datae => \PrefixNetwork|Recur:Inner|Recur:Inner|ALT_INV_Recur:gPair[2]~combout\,
	dataf => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|ALT_INV_Gpre~0DUPLICATE_combout\,
	combout => \PrefixNetwork|Gpre[26]~11_combout\);

-- Location: MLABCELL_X52_Y4_N36
\S~27\ : arriaii_lcell_comb
-- Equation(s):
-- \S~27_combout\ = ( \c~10_combout\ & ( \PrefixNetwork|Gpre[26]~11_combout\ & ( !\A[27]~input_o\ $ (!\B[27]~input_o\ $ (((\c~11_combout\ & p(26))))) ) ) ) # ( !\c~10_combout\ & ( \PrefixNetwork|Gpre[26]~11_combout\ & ( !\A[27]~input_o\ $ (!\B[27]~input_o\) 
-- ) ) ) # ( \c~10_combout\ & ( !\PrefixNetwork|Gpre[26]~11_combout\ & ( !\A[27]~input_o\ $ (\B[27]~input_o\) ) ) ) # ( !\c~10_combout\ & ( !\PrefixNetwork|Gpre[26]~11_combout\ & ( !\A[27]~input_o\ $ (\B[27]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101001010101101010100101010101010101101010100101011010101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[27]~input_o\,
	datab => \ALT_INV_c~11_combout\,
	datac => ALT_INV_p(26),
	datad => \ALT_INV_B[27]~input_o\,
	datae => \ALT_INV_c~10_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gpre[26]~11_combout\,
	combout => \S~27_combout\);

-- Location: LABCELL_X47_Y4_N14
\PrefixNetwork|Recur:Inner|Recur:pPair[6]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Recur:pPair[6]~0_combout\ = ( p(26) & ( (\c~11_combout\ & (!\A[27]~input_o\ $ (!\B[27]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001111000000000000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[27]~input_o\,
	datac => \ALT_INV_B[27]~input_o\,
	datad => \ALT_INV_c~11_combout\,
	dataf => ALT_INV_p(26),
	combout => \PrefixNetwork|Recur:Inner|Recur:pPair[6]~0_combout\);

-- Location: IOIBUF_X32_Y0_N63
\B[28]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(28),
	o => \B[28]~input_o\);

-- Location: IOIBUF_X59_Y15_N1
\A[28]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(28),
	o => \A[28]~input_o\);

-- Location: MLABCELL_X52_Y4_N22
\p[28]\ : arriaii_lcell_comb
-- Equation(s):
-- p(28) = ( \A[28]~input_o\ & ( !\B[28]~input_o\ ) ) # ( !\A[28]~input_o\ & ( \B[28]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_B[28]~input_o\,
	dataf => \ALT_INV_A[28]~input_o\,
	combout => p(28));

-- Location: LABCELL_X47_Y4_N20
\PrefixNetwork|Recur:Inner|Recur:gPair[6]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Recur:gPair[6]~0_combout\ = ( \A[27]~input_o\ & ( ((!\B[26]~input_o\ & (\A[26]~input_o\ & \PrefixNetwork|Recur:gPair[12]~0_combout\)) # (\B[26]~input_o\ & ((\PrefixNetwork|Recur:gPair[12]~0_combout\) # (\A[26]~input_o\)))) # 
-- (\B[27]~input_o\) ) ) # ( !\A[27]~input_o\ & ( (\B[27]~input_o\ & ((!\B[26]~input_o\ & (\A[26]~input_o\ & \PrefixNetwork|Recur:gPair[12]~0_combout\)) # (\B[26]~input_o\ & ((\PrefixNetwork|Recur:gPair[12]~0_combout\) # (\A[26]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010111000000000001011100010111111111110001011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[26]~input_o\,
	datab => \ALT_INV_A[26]~input_o\,
	datac => \PrefixNetwork|ALT_INV_Recur:gPair[12]~0_combout\,
	datad => \ALT_INV_B[27]~input_o\,
	dataf => \ALT_INV_A[27]~input_o\,
	combout => \PrefixNetwork|Recur:Inner|Recur:gPair[6]~0_combout\);

-- Location: MLABCELL_X52_Y4_N26
\S~28\ : arriaii_lcell_comb
-- Equation(s):
-- \S~28_combout\ = ( \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Gpre~0DUPLICATE_combout\ & ( \c~10_combout\ & ( !p(28) $ (((!\PrefixNetwork|Recur:Inner|Recur:pPair[6]~0_combout\ & !\PrefixNetwork|Recur:Inner|Recur:gPair[6]~0_combout\))) ) ) ) # ( 
-- !\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Gpre~0DUPLICATE_combout\ & ( \c~10_combout\ & ( !p(28) $ (((!\PrefixNetwork|Recur:Inner|Recur:pPair[6]~0_combout\ & !\PrefixNetwork|Recur:Inner|Recur:gPair[6]~0_combout\))) ) ) ) # ( 
-- \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Gpre~0DUPLICATE_combout\ & ( !\c~10_combout\ & ( !p(28) $ (((!\PrefixNetwork|Recur:Inner|Recur:pPair[6]~0_combout\ & !\PrefixNetwork|Recur:Inner|Recur:gPair[6]~0_combout\))) ) ) ) # ( 
-- !\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Gpre~0DUPLICATE_combout\ & ( !\c~10_combout\ & ( !p(28) $ (((!\PrefixNetwork|Recur:Inner|Recur:gPair[6]~0_combout\ & ((!\PrefixNetwork|Recur:Inner|Recur:pPair[6]~0_combout\) # 
-- (\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[2]~combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110001111001100011001101100110001100110110011000110011011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Recur:Inner|ALT_INV_Recur:pPair[6]~0_combout\,
	datab => ALT_INV_p(28),
	datac => \PrefixNetwork|Recur:Inner|Recur:Inner|ALT_INV_Recur:gPair[2]~combout\,
	datad => \PrefixNetwork|Recur:Inner|ALT_INV_Recur:gPair[6]~0_combout\,
	datae => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|ALT_INV_Gpre~0DUPLICATE_combout\,
	dataf => \ALT_INV_c~10_combout\,
	combout => \S~28_combout\);

-- Location: IOIBUF_X59_Y13_N63
\A[29]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(29),
	o => \A[29]~input_o\);

-- Location: IOIBUF_X59_Y15_N63
\B[29]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(29),
	o => \B[29]~input_o\);

-- Location: LABCELL_X50_Y4_N10
\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[2]~0DUPLICATE\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[2]~0DUPLICATE_combout\ = ( p(18) & ( \PrefixNetwork|Recur:Inner|Gpre~3_combout\ & ( (\PrefixNetwork|Recur:Inner|Recur:Inner|gPair~3_combout\ & (\PrefixNetwork|Recur:Inner|gPair~3_combout\ & 
-- (!\B[19]~input_o\ $ (!\A[19]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[19]~input_o\,
	datab => \ALT_INV_A[19]~input_o\,
	datac => \PrefixNetwork|Recur:Inner|Recur:Inner|ALT_INV_gPair~3_combout\,
	datad => \PrefixNetwork|Recur:Inner|ALT_INV_gPair~3_combout\,
	datae => ALT_INV_p(18),
	dataf => \PrefixNetwork|Recur:Inner|ALT_INV_Gpre~3_combout\,
	combout => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[2]~0DUPLICATE_combout\);

-- Location: LABCELL_X50_Y4_N18
\c~12\ : arriaii_lcell_comb
-- Equation(s):
-- \c~12_combout\ = ( \c~3_combout\ & ( (\PrefixNetwork|Recur:Inner|Recur:pPair[6]~0_combout\ & (\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[2]~0DUPLICATE_combout\ & \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[1]~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Recur:Inner|ALT_INV_Recur:pPair[6]~0_combout\,
	datac => \PrefixNetwork|Recur:Inner|Recur:Inner|ALT_INV_Recur:pPair[2]~0DUPLICATE_combout\,
	datad => \PrefixNetwork|Recur:Inner|Recur:Inner|ALT_INV_Recur:pPair[1]~0_combout\,
	dataf => \ALT_INV_c~3_combout\,
	combout => \c~12_combout\);

-- Location: MLABCELL_X52_Y4_N2
\PrefixNetwork|Gpre[28]~10\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gpre[28]~10_combout\ = ( \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[2]~combout\ & ( \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Gpre~0DUPLICATE_combout\ & ( (!\B[28]~input_o\ & ((!\A[28]~input_o\) # 
-- ((!\PrefixNetwork|Recur:Inner|Recur:pPair[6]~0_combout\ & !\PrefixNetwork|Recur:Inner|Recur:gPair[6]~0_combout\)))) # (\B[28]~input_o\ & (!\A[28]~input_o\ & (!\PrefixNetwork|Recur:Inner|Recur:pPair[6]~0_combout\ & 
-- !\PrefixNetwork|Recur:Inner|Recur:gPair[6]~0_combout\))) ) ) ) # ( !\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[2]~combout\ & ( \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Gpre~0DUPLICATE_combout\ & ( (!\B[28]~input_o\ & ((!\A[28]~input_o\) 
-- # ((!\PrefixNetwork|Recur:Inner|Recur:pPair[6]~0_combout\ & !\PrefixNetwork|Recur:Inner|Recur:gPair[6]~0_combout\)))) # (\B[28]~input_o\ & (!\A[28]~input_o\ & (!\PrefixNetwork|Recur:Inner|Recur:pPair[6]~0_combout\ & 
-- !\PrefixNetwork|Recur:Inner|Recur:gPair[6]~0_combout\))) ) ) ) # ( \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[2]~combout\ & ( !\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Gpre~0DUPLICATE_combout\ & ( (!\B[28]~input_o\ & ((!\A[28]~input_o\) 
-- # (!\PrefixNetwork|Recur:Inner|Recur:gPair[6]~0_combout\))) # (\B[28]~input_o\ & (!\A[28]~input_o\ & !\PrefixNetwork|Recur:Inner|Recur:gPair[6]~0_combout\)) ) ) ) # ( !\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[2]~combout\ & ( 
-- !\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Gpre~0DUPLICATE_combout\ & ( (!\B[28]~input_o\ & ((!\A[28]~input_o\) # ((!\PrefixNetwork|Recur:Inner|Recur:pPair[6]~0_combout\ & !\PrefixNetwork|Recur:Inner|Recur:gPair[6]~0_combout\)))) # 
-- (\B[28]~input_o\ & (!\A[28]~input_o\ & (!\PrefixNetwork|Recur:Inner|Recur:pPair[6]~0_combout\ & !\PrefixNetwork|Recur:Inner|Recur:gPair[6]~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110100010001000111011101000100011101000100010001110100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[28]~input_o\,
	datab => \ALT_INV_A[28]~input_o\,
	datac => \PrefixNetwork|Recur:Inner|ALT_INV_Recur:pPair[6]~0_combout\,
	datad => \PrefixNetwork|Recur:Inner|ALT_INV_Recur:gPair[6]~0_combout\,
	datae => \PrefixNetwork|Recur:Inner|Recur:Inner|ALT_INV_Recur:gPair[2]~combout\,
	dataf => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|ALT_INV_Gpre~0DUPLICATE_combout\,
	combout => \PrefixNetwork|Gpre[28]~10_combout\);

-- Location: MLABCELL_X52_Y4_N16
\S~29\ : arriaii_lcell_comb
-- Equation(s):
-- \S~29_combout\ = ( \PrefixNetwork|Gpre[28]~10_combout\ & ( !\A[29]~input_o\ $ (!\B[29]~input_o\ $ (((\c~12_combout\ & p(28))))) ) ) # ( !\PrefixNetwork|Gpre[28]~10_combout\ & ( !\A[29]~input_o\ $ (\B[29]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100110011001100110011001100101100110011010010110011001101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[29]~input_o\,
	datab => \ALT_INV_B[29]~input_o\,
	datac => \ALT_INV_c~12_combout\,
	datad => ALT_INV_p(28),
	dataf => \PrefixNetwork|ALT_INV_Gpre[28]~10_combout\,
	combout => \S~29_combout\);

-- Location: IOIBUF_X59_Y13_N32
\B[30]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(30),
	o => \B[30]~input_o\);

-- Location: IOIBUF_X32_Y0_N32
\A[30]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(30),
	o => \A[30]~input_o\);

-- Location: LABCELL_X50_Y4_N22
\c~13\ : arriaii_lcell_comb
-- Equation(s):
-- \c~13_combout\ = ( \B[29]~input_o\ & ( (!\A[29]~input_o\ & (!\B[28]~input_o\ $ (!\A[28]~input_o\))) ) ) # ( !\B[29]~input_o\ & ( (\A[29]~input_o\ & (!\B[28]~input_o\ $ (!\A[28]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100001010000001010000101001010000101000000101000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[28]~input_o\,
	datac => \ALT_INV_A[29]~input_o\,
	datad => \ALT_INV_A[28]~input_o\,
	dataf => \ALT_INV_B[29]~input_o\,
	combout => \c~13_combout\);

-- Location: MLABCELL_X52_Y4_N32
\PrefixNetwork|Recur:gPair[14]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:gPair[14]~0_combout\ = ( \B[29]~input_o\ & ( ((\B[28]~input_o\ & \A[28]~input_o\)) # (\A[29]~input_o\) ) ) # ( !\B[29]~input_o\ & ( (\B[28]~input_o\ & (\A[28]~input_o\ & \A[29]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100000101111111110000010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[28]~input_o\,
	datac => \ALT_INV_A[28]~input_o\,
	datad => \ALT_INV_A[29]~input_o\,
	dataf => \ALT_INV_B[29]~input_o\,
	combout => \PrefixNetwork|Recur:gPair[14]~0_combout\);

-- Location: LABCELL_X50_Y4_N16
\PrefixNetwork|Recur:Inner|Gpre~5\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Gpre~5_combout\ = ( \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Gpre~0DUPLICATE_combout\ & ( (\c~13_combout\ & ((\PrefixNetwork|Recur:Inner|Recur:gPair[6]~0_combout\) # 
-- (\PrefixNetwork|Recur:Inner|Recur:pPair[6]~0_combout\))) ) ) # ( !\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Gpre~0DUPLICATE_combout\ & ( (\c~13_combout\ & (((\PrefixNetwork|Recur:Inner|Recur:pPair[6]~0_combout\ & 
-- !\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[2]~combout\)) # (\PrefixNetwork|Recur:Inner|Recur:gPair[6]~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000110011000100000011001100010001001100110001000100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Recur:Inner|ALT_INV_Recur:pPair[6]~0_combout\,
	datab => \ALT_INV_c~13_combout\,
	datac => \PrefixNetwork|Recur:Inner|Recur:Inner|ALT_INV_Recur:gPair[2]~combout\,
	datad => \PrefixNetwork|Recur:Inner|ALT_INV_Recur:gPair[6]~0_combout\,
	dataf => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|ALT_INV_Gpre~0DUPLICATE_combout\,
	combout => \PrefixNetwork|Recur:Inner|Gpre~5_combout\);

-- Location: LABCELL_X50_Y4_N26
\S~30\ : arriaii_lcell_comb
-- Equation(s):
-- \S~30_combout\ = ( \c~12_combout\ & ( \PrefixNetwork|Recur:Inner|Gpre~5_combout\ & ( !\B[30]~input_o\ $ (\A[30]~input_o\) ) ) ) # ( !\c~12_combout\ & ( \PrefixNetwork|Recur:Inner|Gpre~5_combout\ & ( !\B[30]~input_o\ $ (\A[30]~input_o\) ) ) ) # ( 
-- \c~12_combout\ & ( !\PrefixNetwork|Recur:Inner|Gpre~5_combout\ & ( !\B[30]~input_o\ $ (!\A[30]~input_o\ $ (((\PrefixNetwork|Recur:gPair[14]~0_combout\) # (\c~13_combout\)))) ) ) ) # ( !\c~12_combout\ & ( !\PrefixNetwork|Recur:Inner|Gpre~5_combout\ & ( 
-- !\B[30]~input_o\ $ (!\A[30]~input_o\ $ (\PrefixNetwork|Recur:gPair[14]~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011010011001011010011001100110011001100110011001100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[30]~input_o\,
	datab => \ALT_INV_A[30]~input_o\,
	datac => \ALT_INV_c~13_combout\,
	datad => \PrefixNetwork|ALT_INV_Recur:gPair[14]~0_combout\,
	datae => \ALT_INV_c~12_combout\,
	dataf => \PrefixNetwork|Recur:Inner|ALT_INV_Gpre~5_combout\,
	combout => \S~30_combout\);

-- Location: IOIBUF_X59_Y15_N32
\A[31]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(31),
	o => \A[31]~input_o\);

-- Location: IOIBUF_X59_Y15_N94
\B[31]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(31),
	o => \B[31]~input_o\);

-- Location: MLABCELL_X49_Y4_N16
\c~14\ : arriaii_lcell_comb
-- Equation(s):
-- \c~14_combout\ = ( \c~13_combout\ & ( !\A[30]~input_o\ $ (!\B[30]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[30]~input_o\,
	datad => \ALT_INV_B[30]~input_o\,
	dataf => \ALT_INV_c~13_combout\,
	combout => \c~14_combout\);

-- Location: LABCELL_X50_Y4_N20
\PrefixNetwork|Gpre[30]~9\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gpre[30]~9_combout\ = ( \PrefixNetwork|Recur:Inner|Gpre~5_combout\ & ( (!\B[30]~input_o\ & !\A[30]~input_o\) ) ) # ( !\PrefixNetwork|Recur:Inner|Gpre~5_combout\ & ( (!\B[30]~input_o\ & ((!\PrefixNetwork|Recur:gPair[14]~0_combout\) # 
-- (!\A[30]~input_o\))) # (\B[30]~input_o\ & (!\PrefixNetwork|Recur:gPair[14]~0_combout\ & !\A[30]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110011000000111111001100000011001100000000001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[30]~input_o\,
	datac => \PrefixNetwork|ALT_INV_Recur:gPair[14]~0_combout\,
	datad => \ALT_INV_A[30]~input_o\,
	dataf => \PrefixNetwork|Recur:Inner|ALT_INV_Gpre~5_combout\,
	combout => \PrefixNetwork|Gpre[30]~9_combout\);

-- Location: LABCELL_X50_Y4_N2
\S~31\ : arriaii_lcell_comb
-- Equation(s):
-- \S~31_combout\ = ( \PrefixNetwork|Gpre[30]~9_combout\ & ( !\A[31]~input_o\ $ (!\B[31]~input_o\ $ (((\c~14_combout\ & \c~12_combout\)))) ) ) # ( !\PrefixNetwork|Gpre[30]~9_combout\ & ( !\A[31]~input_o\ $ (\B[31]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100110011001100110011001100101100110011010010110011001101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[31]~input_o\,
	datab => \ALT_INV_B[31]~input_o\,
	datac => \ALT_INV_c~14_combout\,
	datad => \ALT_INV_c~12_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gpre[30]~9_combout\,
	combout => \S~31_combout\);

-- Location: MLABCELL_X52_Y4_N14
\c~18\ : arriaii_lcell_comb
-- Equation(s):
-- \c~18_combout\ = ( \B[31]~input_o\ & ( \PrefixNetwork|Recur:gPair[14]~0_combout\ & ( ((\A[31]~input_o\) # (\B[30]~input_o\)) # (\A[30]~input_o\) ) ) ) # ( !\B[31]~input_o\ & ( \PrefixNetwork|Recur:gPair[14]~0_combout\ & ( (\A[31]~input_o\ & 
-- ((\B[30]~input_o\) # (\A[30]~input_o\))) ) ) ) # ( \B[31]~input_o\ & ( !\PrefixNetwork|Recur:gPair[14]~0_combout\ & ( ((\A[30]~input_o\ & \B[30]~input_o\)) # (\A[31]~input_o\) ) ) ) # ( !\B[31]~input_o\ & ( !\PrefixNetwork|Recur:gPair[14]~0_combout\ & ( 
-- (\A[30]~input_o\ & (\B[30]~input_o\ & \A[31]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000001011111111100000000010111110101111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[30]~input_o\,
	datac => \ALT_INV_B[30]~input_o\,
	datad => \ALT_INV_A[31]~input_o\,
	datae => \ALT_INV_B[31]~input_o\,
	dataf => \PrefixNetwork|ALT_INV_Recur:gPair[14]~0_combout\,
	combout => \c~18_combout\);

-- Location: LABCELL_X50_Y4_N12
\c~16\ : arriaii_lcell_comb
-- Equation(s):
-- \c~16_combout\ = ( \B[30]~input_o\ & ( (!\A[30]~input_o\ & (\c~13_combout\ & (!\B[31]~input_o\ $ (!\A[31]~input_o\)))) ) ) # ( !\B[30]~input_o\ & ( (\A[30]~input_o\ & (\c~13_combout\ & (!\B[31]~input_o\ $ (!\A[31]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010010000000000001001000000000010010000000000001001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[31]~input_o\,
	datab => \ALT_INV_A[30]~input_o\,
	datac => \ALT_INV_A[31]~input_o\,
	datad => \ALT_INV_c~13_combout\,
	dataf => \ALT_INV_B[30]~input_o\,
	combout => \c~16_combout\);

-- Location: LABCELL_X47_Y4_N2
\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[2]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[2]~0_combout\ = ( \A[22]~input_o\ & ( \PrefixNetwork|Recur:gPair[10]~0DUPLICATE_combout\ & ( (\A[23]~input_o\) # (\B[23]~input_o\) ) ) ) # ( !\A[22]~input_o\ & ( 
-- \PrefixNetwork|Recur:gPair[10]~0DUPLICATE_combout\ & ( (!\B[23]~input_o\ & (\A[23]~input_o\ & \B[22]~input_o\)) # (\B[23]~input_o\ & ((\B[22]~input_o\) # (\A[23]~input_o\))) ) ) ) # ( \A[22]~input_o\ & ( !\PrefixNetwork|Recur:gPair[10]~0DUPLICATE_combout\ 
-- & ( (!\B[23]~input_o\ & (\A[23]~input_o\ & \B[22]~input_o\)) # (\B[23]~input_o\ & ((\B[22]~input_o\) # (\A[23]~input_o\))) ) ) ) # ( !\A[22]~input_o\ & ( !\PrefixNetwork|Recur:gPair[10]~0DUPLICATE_combout\ & ( (\B[23]~input_o\ & \A[23]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110011111100000011001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[23]~input_o\,
	datac => \ALT_INV_A[23]~input_o\,
	datad => \ALT_INV_B[22]~input_o\,
	datae => \ALT_INV_A[22]~input_o\,
	dataf => \PrefixNetwork|ALT_INV_Recur:gPair[10]~0DUPLICATE_combout\,
	combout => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[2]~0_combout\);

-- Location: LABCELL_X47_Y4_N8
\c~15\ : arriaii_lcell_comb
-- Equation(s):
-- \c~15_combout\ = ( \PrefixNetwork|Recur:Inner|Recur:pPair[6]~0_combout\ & ( (!\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[2]~0_combout\ & (!\PrefixNetwork|Recur:Inner|Recur:gPair[6]~0_combout\ & 
-- ((!\PrefixNetwork|Recur:Inner|Recur:gPair[4]~0_combout\) # (!\PrefixNetwork|Recur:Inner|Recur:Inner|gPair~4_combout\)))) ) ) # ( !\PrefixNetwork|Recur:Inner|Recur:pPair[6]~0_combout\ & ( !\PrefixNetwork|Recur:Inner|Recur:gPair[6]~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011000000100000001100000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Recur:Inner|ALT_INV_Recur:gPair[4]~0_combout\,
	datab => \PrefixNetwork|Recur:Inner|Recur:Inner|ALT_INV_Recur:gPair[2]~0_combout\,
	datac => \PrefixNetwork|Recur:Inner|ALT_INV_Recur:gPair[6]~0_combout\,
	datad => \PrefixNetwork|Recur:Inner|Recur:Inner|ALT_INV_gPair~4_combout\,
	dataf => \PrefixNetwork|Recur:Inner|ALT_INV_Recur:pPair[6]~0_combout\,
	combout => \c~15_combout\);

-- Location: LABCELL_X50_Y4_N6
\c~17\ : arriaii_lcell_comb
-- Equation(s):
-- \c~17_combout\ = ( \c~15_combout\ & ( \c~7_combout\ & ( \c~18_combout\ ) ) ) # ( !\c~15_combout\ & ( \c~7_combout\ & ( (\c~16_combout\) # (\c~18_combout\) ) ) ) # ( \c~15_combout\ & ( !\c~7_combout\ & ( 
-- ((\PrefixNetwork|Recur:Inner|Recur:pPair[6]~0_combout\ & (\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[2]~0DUPLICATE_combout\ & \c~16_combout\))) # (\c~18_combout\) ) ) ) # ( !\c~15_combout\ & ( !\c~7_combout\ & ( (\c~16_combout\) # (\c~18_combout\) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011110001111100001111111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Recur:Inner|ALT_INV_Recur:pPair[6]~0_combout\,
	datab => \PrefixNetwork|Recur:Inner|Recur:Inner|ALT_INV_Recur:pPair[2]~0DUPLICATE_combout\,
	datac => \ALT_INV_c~18_combout\,
	datad => \ALT_INV_c~16_combout\,
	datae => \ALT_INV_c~15_combout\,
	dataf => \ALT_INV_c~7_combout\,
	combout => \c~17_combout\);

-- Location: LABCELL_X50_Y4_N30
\Ovfl~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Ovfl~0_combout\ = ( \PrefixNetwork|Gpre[30]~9_combout\ & ( !\c~17_combout\ $ (((!\c~14_combout\) # (!\c~12_combout\))) ) ) # ( !\PrefixNetwork|Gpre[30]~9_combout\ & ( !\c~17_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000001111001111000000111100111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_c~14_combout\,
	datac => \ALT_INV_c~17_combout\,
	datad => \ALT_INV_c~12_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gpre[30]~9_combout\,
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


