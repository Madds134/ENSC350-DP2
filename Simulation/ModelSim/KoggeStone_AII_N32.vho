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

-- DATE "11/21/2026 12:06:41"

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
-- S[0]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[1]	=>  Location: PIN_AH9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[2]	=>  Location: PIN_AG6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[3]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[4]	=>  Location: PIN_T6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[5]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[6]	=>  Location: PIN_AH7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[7]	=>  Location: PIN_AB3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[8]	=>  Location: PIN_AH11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[9]	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[10]	=>  Location: PIN_AH5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[11]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[12]	=>  Location: PIN_AH8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[13]	=>  Location: PIN_Y5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[14]	=>  Location: PIN_AF13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[15]	=>  Location: PIN_AC3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[16]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[17]	=>  Location: PIN_AH2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[18]	=>  Location: PIN_AE8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[19]	=>  Location: PIN_AB1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[20]	=>  Location: PIN_AF6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[21]	=>  Location: PIN_AC10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[22]	=>  Location: PIN_AE7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[23]	=>  Location: PIN_AC9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[24]	=>  Location: PIN_W11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[25]	=>  Location: PIN_AF4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[26]	=>  Location: PIN_AF7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[27]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[28]	=>  Location: PIN_AE6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[29]	=>  Location: PIN_AC5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[30]	=>  Location: PIN_AF8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[31]	=>  Location: PIN_AD4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cout	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ovfl	=>  Location: PIN_AA6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_AE3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_AD9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cin	=>  Location: PIN_AC1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_AD7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_W6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_AF3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_AF2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_Y12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_AG3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_AG4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[8]	=>  Location: PIN_AC11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_AE4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[9]	=>  Location: PIN_AH3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[10]	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[11]	=>  Location: PIN_AF5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[11]	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[12]	=>  Location: PIN_AG1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[12]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[13]	=>  Location: PIN_AC6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[13]	=>  Location: PIN_AF1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[14]	=>  Location: PIN_W4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[14]	=>  Location: PIN_AC2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[15]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[15]	=>  Location: PIN_AE5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[16]	=>  Location: PIN_W5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[16]	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[17]	=>  Location: PIN_AD6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[17]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[18]	=>  Location: PIN_AF11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[18]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[19]	=>  Location: PIN_AE10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[19]	=>  Location: PIN_AE13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[20]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[20]	=>  Location: PIN_AH4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[21]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[21]	=>  Location: PIN_AH6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[22]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[22]	=>  Location: PIN_AC7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[23]	=>  Location: PIN_AE9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[23]	=>  Location: PIN_AD3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[24]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[24]	=>  Location: PIN_W12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[25]	=>  Location: PIN_AF12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[25]	=>  Location: PIN_AC13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[26]	=>  Location: PIN_AC4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[26]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[27]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[27]	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[28]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[28]	=>  Location: PIN_Y6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[29]	=>  Location: PIN_AA3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[29]	=>  Location: PIN_AA4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[30]	=>  Location: PIN_AB2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[30]	=>  Location: PIN_AD1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[31]	=>  Location: PIN_AE1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[31]	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \c[6]~53_combout\ : std_logic;
SIGNAL \S~2_combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Pk[2][4]~0_combout\ : std_logic;
SIGNAL \c[11]~0_combout\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][2]~0_combout\ : std_logic;
SIGNAL \S~3_combout\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \c~1_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][3]~1_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gpre[1]~0_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~2_combout\ : std_logic;
SIGNAL \c[12]~2_combout\ : std_logic;
SIGNAL \S~4_combout\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gk~4_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][4]~3_combout\ : std_logic;
SIGNAL \S~5_combout\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][5]~5_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~6_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~4DUPLICATE_combout\ : std_logic;
SIGNAL \c[6]~3_combout\ : std_logic;
SIGNAL \S~6_combout\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][6]~8DUPLICATE_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~7_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~9_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gpre[6]~1_combout\ : std_logic;
SIGNAL \PrefixNetwork|Pk[2][6]~1_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gpre[6]~2_combout\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \c~4_combout\ : std_logic;
SIGNAL \S~7_combout\ : std_logic;
SIGNAL \B[8]~input_o\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gk~10_combout\ : std_logic;
SIGNAL \PrefixNetwork|Pk[2][7]~2_combout\ : std_logic;
SIGNAL \c~5_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][7]~11_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~12_combout\ : std_logic;
SIGNAL \S~8_combout\ : std_logic;
SIGNAL \B[9]~input_o\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gk~13_combout\ : std_logic;
SIGNAL \PrefixNetwork|Pk[2][8]~3_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][8]~14_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][6]~8_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~15_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][8]~combout\ : std_logic;
SIGNAL \c[9]~6_combout\ : std_logic;
SIGNAL \S~9_combout\ : std_logic;
SIGNAL \B[10]~input_o\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gk~16_combout\ : std_logic;
SIGNAL \PrefixNetwork|Pk[2][9]~4_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~18_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][9]~17_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][9]~combout\ : std_logic;
SIGNAL \c[10]~7_combout\ : std_logic;
SIGNAL \S~10_combout\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][10]~19_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~20_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~21_combout\ : std_logic;
SIGNAL \PrefixNetwork|Pk[2][10]~5_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][10]~combout\ : std_logic;
SIGNAL \B[11]~input_o\ : std_logic;
SIGNAL \c[19]~8_combout\ : std_logic;
SIGNAL \S~11_combout\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \B[12]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][11]~23_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~22_combout\ : std_logic;
SIGNAL \PrefixNetwork|Pk[2][11]~6_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~24_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][11]~combout\ : std_logic;
SIGNAL \c[12]~9_combout\ : std_logic;
SIGNAL \S~12_combout\ : std_logic;
SIGNAL \B[13]~input_o\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gk~25_combout\ : std_logic;
SIGNAL \PrefixNetwork|Pk[2][12]~7_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][12]~26_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~27_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][12]~combout\ : std_logic;
SIGNAL \c[21]~10_combout\ : std_logic;
SIGNAL \c[13]~11_combout\ : std_logic;
SIGNAL \S~13_combout\ : std_logic;
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \B[14]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gk~28_combout\ : std_logic;
SIGNAL \PrefixNetwork|Pk[2][13]~8_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][13]~29_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~30_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][13]~combout\ : std_logic;
SIGNAL \c[14]~12_combout\ : std_logic;
SIGNAL \S~14_combout\ : std_logic;
SIGNAL \B[15]~input_o\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gk~31_combout\ : std_logic;
SIGNAL \PrefixNetwork|Pk[2][14]~9_combout\ : std_logic;
SIGNAL \c~13_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][14]~32_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~33_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][14]~combout\ : std_logic;
SIGNAL \S~15_combout\ : std_logic;
SIGNAL \A[16]~input_o\ : std_logic;
SIGNAL \B[16]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gk~34_combout\ : std_logic;
SIGNAL \PrefixNetwork|Pk[2][15]~10_combout\ : std_logic;
SIGNAL \c~14_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][15]~35_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~36_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][15]~combout\ : std_logic;
SIGNAL \S~16_combout\ : std_logic;
SIGNAL \B[17]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][16]~38_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~37_combout\ : std_logic;
SIGNAL \PrefixNetwork|Pk[2][16]~11_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~39_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][16]~combout\ : std_logic;
SIGNAL \A[17]~input_o\ : std_logic;
SIGNAL \S~17_combout\ : std_logic;
SIGNAL \S~18_combout\ : std_logic;
SIGNAL \S~19_combout\ : std_logic;
SIGNAL \B[18]~input_o\ : std_logic;
SIGNAL \A[18]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gk~40_combout\ : std_logic;
SIGNAL \PrefixNetwork|Pk[2][17]~12_combout\ : std_logic;
SIGNAL \S~20_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][17]~41_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~42_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][17]~combout\ : std_logic;
SIGNAL \S~21_combout\ : std_logic;
SIGNAL \B[19]~input_o\ : std_logic;
SIGNAL \A[19]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Pk[2][18]~13_combout\ : std_logic;
SIGNAL \c[19]~15_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][18]~43_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~44_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][18]~combout\ : std_logic;
SIGNAL \S~22_combout\ : std_logic;
SIGNAL \B[20]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][19]~46_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~45_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~47_combout\ : std_logic;
SIGNAL \PrefixNetwork|Pk[2][19]~14_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][19]~combout\ : std_logic;
SIGNAL \A[20]~input_o\ : std_logic;
SIGNAL \c[20]~16_combout\ : std_logic;
SIGNAL \c[20]~17_combout\ : std_logic;
SIGNAL \S~23_combout\ : std_logic;
SIGNAL \B[21]~input_o\ : std_logic;
SIGNAL \A[21]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gk~48_combout\ : std_logic;
SIGNAL \PrefixNetwork|Pk[2][20]~15_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][12]~DUPLICATE_combout\ : std_logic;
SIGNAL \c[21]~10DUPLICATE_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][20]~49_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~50_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][20]~combout\ : std_logic;
SIGNAL \c[21]~18_combout\ : std_logic;
SIGNAL \S~24_combout\ : std_logic;
SIGNAL \B[22]~input_o\ : std_logic;
SIGNAL \A[22]~input_o\ : std_logic;
SIGNAL \c[22]~19_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~51_combout\ : std_logic;
SIGNAL \PrefixNetwork|Pk[2][21]~16_combout\ : std_logic;
SIGNAL \c[26]~20_combout\ : std_logic;
SIGNAL \PrefixNetwork|Pk[2][17]~12DUPLICATE_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][21]~52_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~53_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][21]~combout\ : std_logic;
SIGNAL \c[22]~21_combout\ : std_logic;
SIGNAL \S~25_combout\ : std_logic;
SIGNAL \A[23]~input_o\ : std_logic;
SIGNAL \B[23]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gk~54_combout\ : std_logic;
SIGNAL \PrefixNetwork|Pk[2][22]~17_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][22]~55_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~56_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][22]~combout\ : std_logic;
SIGNAL \c[23]~23_combout\ : std_logic;
SIGNAL \c[23]~22_combout\ : std_logic;
SIGNAL \S~26_combout\ : std_logic;
SIGNAL \B[24]~input_o\ : std_logic;
SIGNAL \A[24]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Pk[2][23]~18DUPLICATE_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][23]~57_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~58_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][23]~combout\ : std_logic;
SIGNAL \c[24]~25_combout\ : std_logic;
SIGNAL \c[28]~24_combout\ : std_logic;
SIGNAL \S~27_combout\ : std_logic;
SIGNAL \PrefixNetwork|Pk[2][24]~19_combout\ : std_logic;
SIGNAL \A[25]~input_o\ : std_logic;
SIGNAL \B[25]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][24]~60_combout\ : std_logic;
SIGNAL \c[25]~26_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~59_combout\ : std_logic;
SIGNAL \c[25]~27_combout\ : std_logic;
SIGNAL \S~28_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~61_combout\ : std_logic;
SIGNAL \PrefixNetwork|Pk[2][25]~20_combout\ : std_logic;
SIGNAL \B[26]~input_o\ : std_logic;
SIGNAL \A[26]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][25]~62_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~63_combout\ : std_logic;
SIGNAL \c[26]~28_combout\ : std_logic;
SIGNAL \c[26]~29_combout\ : std_logic;
SIGNAL \S~29_combout\ : std_logic;
SIGNAL \PrefixNetwork|Pk[2][26]~21DUPLICATE_combout\ : std_logic;
SIGNAL \A[27]~input_o\ : std_logic;
SIGNAL \B[27]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][26]~64_combout\ : std_logic;
SIGNAL \c[27]~31_combout\ : std_logic;
SIGNAL \c[27]~32_combout\ : std_logic;
SIGNAL \c[27]~30_combout\ : std_logic;
SIGNAL \S~30_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~65_combout\ : std_logic;
SIGNAL \PrefixNetwork|Pk[2][27]~22_combout\ : std_logic;
SIGNAL \B[28]~input_o\ : std_logic;
SIGNAL \A[28]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Pk[2][23]~18_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][27]~66_combout\ : std_logic;
SIGNAL \c[28]~33_combout\ : std_logic;
SIGNAL \c[28]~34_combout\ : std_logic;
SIGNAL \S~31_combout\ : std_logic;
SIGNAL \c[29]~36_combout\ : std_logic;
SIGNAL \c[29]~37_combout\ : std_logic;
SIGNAL \B[29]~input_o\ : std_logic;
SIGNAL \A[29]~input_o\ : std_logic;
SIGNAL \c[29]~38_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][28]~67_combout\ : std_logic;
SIGNAL \c[29]~40_combout\ : std_logic;
SIGNAL \c[29]~39_combout\ : std_logic;
SIGNAL \c[29]~41_combout\ : std_logic;
SIGNAL \c[21]~35_combout\ : std_logic;
SIGNAL \S~32_combout\ : std_logic;
SIGNAL \B[30]~input_o\ : std_logic;
SIGNAL \c[30]~42_combout\ : std_logic;
SIGNAL \c[30]~43_combout\ : std_logic;
SIGNAL \A[30]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][29]~68_combout\ : std_logic;
SIGNAL \c[30]~44_combout\ : std_logic;
SIGNAL \c[30]~45_combout\ : std_logic;
SIGNAL \S~33_combout\ : std_logic;
SIGNAL \A[31]~input_o\ : std_logic;
SIGNAL \B[31]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Pk[2][26]~21_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~69_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~70_combout\ : std_logic;
SIGNAL \c[31]~48_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~71_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][30]~72_combout\ : std_logic;
SIGNAL \c[31]~46_combout\ : std_logic;
SIGNAL \c[31]~47_combout\ : std_logic;
SIGNAL \S~34_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~73_combout\ : std_logic;
SIGNAL \PrefixNetwork|Pk[4][31]~23_combout\ : std_logic;
SIGNAL \c~51_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][31]~75_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~76_combout\ : std_logic;
SIGNAL \c~49_combout\ : std_logic;
SIGNAL \c~50_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~74_combout\ : std_logic;
SIGNAL \c~52_combout\ : std_logic;
SIGNAL \Ovfl~0_combout\ : std_logic;
SIGNAL p : std_logic_vector(31 DOWNTO 0);
SIGNAL \PrefixNetwork|Gpre\ : std_logic_vector(31 DOWNTO 0);
SIGNAL c : std_logic_vector(32 DOWNTO 0);
SIGNAL \PrefixNetwork|ALT_INV_Gk[1][8]~14_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Pk[2][8]~3_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~13_combout\ : std_logic;
SIGNAL ALT_INV_c : std_logic_vector(8 DOWNTO 8);
SIGNAL \PrefixNetwork|ALT_INV_Gpre\ : std_logic_vector(7 DOWNTO 7);
SIGNAL \PrefixNetwork|ALT_INV_Gk~12_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk[1][7]~11_combout\ : std_logic;
SIGNAL \ALT_INV_c~5_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Pk[2][7]~2_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~10_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gpre[6]~2_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~9_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gpre[6]~1_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk[1][6]~8_combout\ : std_logic;
SIGNAL \ALT_INV_c~4_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Pk[2][6]~1_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~7_combout\ : std_logic;
SIGNAL \ALT_INV_c[6]~3_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~6_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk[1][5]~5_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~4_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk[1][4]~3_combout\ : std_logic;
SIGNAL \ALT_INV_c[12]~2_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~2_combout\ : std_logic;
SIGNAL \ALT_INV_c~1_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk[1][3]~1_combout\ : std_logic;
SIGNAL \ALT_INV_c[11]~0_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Pk[2][4]~0_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk[1][2]~0_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gpre[1]~0_combout\ : std_logic;
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
SIGNAL \ALT_INV_c[6]~53_combout\ : std_logic;
SIGNAL \ALT_INV_c~51_combout\ : std_logic;
SIGNAL \ALT_INV_c~50_combout\ : std_logic;
SIGNAL \ALT_INV_c~49_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~76_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk[1][31]~75_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~74_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Pk[4][31]~23_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~73_combout\ : std_logic;
SIGNAL \ALT_INV_c[31]~48_combout\ : std_logic;
SIGNAL \ALT_INV_c[31]~47_combout\ : std_logic;
SIGNAL \ALT_INV_c[31]~46_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk[1][30]~72_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~71_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~70_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~69_combout\ : std_logic;
SIGNAL \ALT_INV_c[30]~45_combout\ : std_logic;
SIGNAL \ALT_INV_c[30]~44_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk[1][29]~68_combout\ : std_logic;
SIGNAL \ALT_INV_c[30]~43_combout\ : std_logic;
SIGNAL \ALT_INV_c[30]~42_combout\ : std_logic;
SIGNAL \ALT_INV_c[29]~41_combout\ : std_logic;
SIGNAL \ALT_INV_c[29]~40_combout\ : std_logic;
SIGNAL \ALT_INV_c[29]~39_combout\ : std_logic;
SIGNAL \ALT_INV_c[29]~38_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk[1][28]~67_combout\ : std_logic;
SIGNAL \ALT_INV_c[29]~37_combout\ : std_logic;
SIGNAL \ALT_INV_c[29]~36_combout\ : std_logic;
SIGNAL ALT_INV_p : std_logic_vector(29 DOWNTO 25);
SIGNAL \ALT_INV_c[21]~35_combout\ : std_logic;
SIGNAL \ALT_INV_c[28]~34_combout\ : std_logic;
SIGNAL \ALT_INV_c[28]~33_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk[1][27]~66_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Pk[2][27]~22_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~65_combout\ : std_logic;
SIGNAL \ALT_INV_c[27]~32_combout\ : std_logic;
SIGNAL \ALT_INV_c[27]~31_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk[1][26]~64_combout\ : std_logic;
SIGNAL \ALT_INV_c[27]~30_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Pk[2][26]~21_combout\ : std_logic;
SIGNAL \ALT_INV_c[26]~29_combout\ : std_logic;
SIGNAL \ALT_INV_c[26]~28_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~63_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk[1][25]~62_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Pk[2][25]~20_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~61_combout\ : std_logic;
SIGNAL \ALT_INV_c[25]~27_combout\ : std_logic;
SIGNAL \ALT_INV_c[25]~26_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk[1][24]~60_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~59_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Pk[2][24]~19_combout\ : std_logic;
SIGNAL \ALT_INV_c[24]~25_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk[3][23]~combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~58_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk[1][23]~57_combout\ : std_logic;
SIGNAL \ALT_INV_c[28]~24_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Pk[2][23]~18_combout\ : std_logic;
SIGNAL \ALT_INV_c[23]~23_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk[3][22]~combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~56_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk[1][22]~55_combout\ : std_logic;
SIGNAL \ALT_INV_c[23]~22_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Pk[2][22]~17_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~54_combout\ : std_logic;
SIGNAL \ALT_INV_c[22]~21_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk[3][21]~combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~53_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk[1][21]~52_combout\ : std_logic;
SIGNAL \ALT_INV_c[26]~20_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Pk[2][21]~16_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~51_combout\ : std_logic;
SIGNAL \ALT_INV_c[22]~19_combout\ : std_logic;
SIGNAL \ALT_INV_c[21]~18_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk[3][20]~combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~50_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk[1][20]~49_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Pk[2][20]~15_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~48_combout\ : std_logic;
SIGNAL \ALT_INV_c[20]~17_combout\ : std_logic;
SIGNAL \ALT_INV_c[20]~16_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk[3][19]~combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~47_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk[1][19]~46_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Pk[2][19]~14_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~45_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk[3][18]~combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~44_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk[1][18]~43_combout\ : std_logic;
SIGNAL \ALT_INV_c[19]~15_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Pk[2][18]~13_combout\ : std_logic;
SIGNAL \ALT_INV_S~20_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk[3][17]~combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~42_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk[1][17]~41_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Pk[2][17]~12_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~40_combout\ : std_logic;
SIGNAL \ALT_INV_S~18_combout\ : std_logic;
SIGNAL \ALT_INV_S~17_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk[3][16]~combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~39_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk[1][16]~38_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Pk[2][16]~11_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~37_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk[3][15]~combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~36_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk[1][15]~35_combout\ : std_logic;
SIGNAL \ALT_INV_c~14_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Pk[2][15]~10_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~34_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk[3][14]~combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~33_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk[1][14]~32_combout\ : std_logic;
SIGNAL \ALT_INV_c~13_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Pk[2][14]~9_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~31_combout\ : std_logic;
SIGNAL \ALT_INV_c[14]~12_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk[3][13]~combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~30_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk[1][13]~29_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Pk[2][13]~8_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~28_combout\ : std_logic;
SIGNAL \ALT_INV_c[13]~11_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk[3][12]~combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~27_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk[1][12]~26_combout\ : std_logic;
SIGNAL \ALT_INV_c[21]~10_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Pk[2][12]~7_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~25_combout\ : std_logic;
SIGNAL \ALT_INV_c[12]~9_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk[3][11]~combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~24_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk[1][11]~23_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Pk[2][11]~6_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~22_combout\ : std_logic;
SIGNAL \ALT_INV_c[19]~8_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk[3][10]~combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~21_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Pk[2][10]~5_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~20_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk[1][10]~19_combout\ : std_logic;
SIGNAL \ALT_INV_c[10]~7_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk[3][9]~combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~18_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk[1][9]~17_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Pk[2][9]~4_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~16_combout\ : std_logic;
SIGNAL \ALT_INV_c[9]~6_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk[3][8]~combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~15_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Pk[2][26]~21DUPLICATE_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Pk[2][23]~18DUPLICATE_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Pk[2][17]~12DUPLICATE_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk[3][12]~DUPLICATE_combout\ : std_logic;
SIGNAL \ALT_INV_c[21]~10DUPLICATE_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk[1][6]~8DUPLICATE_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~4DUPLICATE_combout\ : std_logic;
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
\PrefixNetwork|ALT_INV_Gk[1][8]~14_combout\ <= NOT \PrefixNetwork|Gk[1][8]~14_combout\;
\PrefixNetwork|ALT_INV_Pk[2][8]~3_combout\ <= NOT \PrefixNetwork|Pk[2][8]~3_combout\;
\PrefixNetwork|ALT_INV_Gk~13_combout\ <= NOT \PrefixNetwork|Gk~13_combout\;
ALT_INV_c(8) <= NOT c(8);
\PrefixNetwork|ALT_INV_Gpre\(7) <= NOT \PrefixNetwork|Gpre\(7);
\PrefixNetwork|ALT_INV_Gk~12_combout\ <= NOT \PrefixNetwork|Gk~12_combout\;
\PrefixNetwork|ALT_INV_Gk[1][7]~11_combout\ <= NOT \PrefixNetwork|Gk[1][7]~11_combout\;
\ALT_INV_c~5_combout\ <= NOT \c~5_combout\;
\PrefixNetwork|ALT_INV_Pk[2][7]~2_combout\ <= NOT \PrefixNetwork|Pk[2][7]~2_combout\;
\PrefixNetwork|ALT_INV_Gk~10_combout\ <= NOT \PrefixNetwork|Gk~10_combout\;
\PrefixNetwork|ALT_INV_Gpre[6]~2_combout\ <= NOT \PrefixNetwork|Gpre[6]~2_combout\;
\PrefixNetwork|ALT_INV_Gk~9_combout\ <= NOT \PrefixNetwork|Gk~9_combout\;
\PrefixNetwork|ALT_INV_Gpre[6]~1_combout\ <= NOT \PrefixNetwork|Gpre[6]~1_combout\;
\PrefixNetwork|ALT_INV_Gk[1][6]~8_combout\ <= NOT \PrefixNetwork|Gk[1][6]~8_combout\;
\ALT_INV_c~4_combout\ <= NOT \c~4_combout\;
\PrefixNetwork|ALT_INV_Pk[2][6]~1_combout\ <= NOT \PrefixNetwork|Pk[2][6]~1_combout\;
\PrefixNetwork|ALT_INV_Gk~7_combout\ <= NOT \PrefixNetwork|Gk~7_combout\;
\ALT_INV_c[6]~3_combout\ <= NOT \c[6]~3_combout\;
\PrefixNetwork|ALT_INV_Gk~6_combout\ <= NOT \PrefixNetwork|Gk~6_combout\;
\PrefixNetwork|ALT_INV_Gk[1][5]~5_combout\ <= NOT \PrefixNetwork|Gk[1][5]~5_combout\;
\PrefixNetwork|ALT_INV_Gk~4_combout\ <= NOT \PrefixNetwork|Gk~4_combout\;
\PrefixNetwork|ALT_INV_Gk[1][4]~3_combout\ <= NOT \PrefixNetwork|Gk[1][4]~3_combout\;
\ALT_INV_c[12]~2_combout\ <= NOT \c[12]~2_combout\;
\PrefixNetwork|ALT_INV_Gk~2_combout\ <= NOT \PrefixNetwork|Gk~2_combout\;
\ALT_INV_c~1_combout\ <= NOT \c~1_combout\;
\PrefixNetwork|ALT_INV_Gk[1][3]~1_combout\ <= NOT \PrefixNetwork|Gk[1][3]~1_combout\;
\ALT_INV_c[11]~0_combout\ <= NOT \c[11]~0_combout\;
\PrefixNetwork|ALT_INV_Pk[2][4]~0_combout\ <= NOT \PrefixNetwork|Pk[2][4]~0_combout\;
\PrefixNetwork|ALT_INV_Gk[1][2]~0_combout\ <= NOT \PrefixNetwork|Gk[1][2]~0_combout\;
\PrefixNetwork|ALT_INV_Gpre[1]~0_combout\ <= NOT \PrefixNetwork|Gpre[1]~0_combout\;
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
\ALT_INV_c[6]~53_combout\ <= NOT \c[6]~53_combout\;
\ALT_INV_c~51_combout\ <= NOT \c~51_combout\;
\ALT_INV_c~50_combout\ <= NOT \c~50_combout\;
\ALT_INV_c~49_combout\ <= NOT \c~49_combout\;
\PrefixNetwork|ALT_INV_Gk~76_combout\ <= NOT \PrefixNetwork|Gk~76_combout\;
\PrefixNetwork|ALT_INV_Gk[1][31]~75_combout\ <= NOT \PrefixNetwork|Gk[1][31]~75_combout\;
\PrefixNetwork|ALT_INV_Gk~74_combout\ <= NOT \PrefixNetwork|Gk~74_combout\;
\PrefixNetwork|ALT_INV_Pk[4][31]~23_combout\ <= NOT \PrefixNetwork|Pk[4][31]~23_combout\;
\PrefixNetwork|ALT_INV_Gk~73_combout\ <= NOT \PrefixNetwork|Gk~73_combout\;
\ALT_INV_c[31]~48_combout\ <= NOT \c[31]~48_combout\;
\ALT_INV_c[31]~47_combout\ <= NOT \c[31]~47_combout\;
\ALT_INV_c[31]~46_combout\ <= NOT \c[31]~46_combout\;
\PrefixNetwork|ALT_INV_Gk[1][30]~72_combout\ <= NOT \PrefixNetwork|Gk[1][30]~72_combout\;
\PrefixNetwork|ALT_INV_Gk~71_combout\ <= NOT \PrefixNetwork|Gk~71_combout\;
\PrefixNetwork|ALT_INV_Gk~70_combout\ <= NOT \PrefixNetwork|Gk~70_combout\;
\PrefixNetwork|ALT_INV_Gk~69_combout\ <= NOT \PrefixNetwork|Gk~69_combout\;
\ALT_INV_c[30]~45_combout\ <= NOT \c[30]~45_combout\;
\ALT_INV_c[30]~44_combout\ <= NOT \c[30]~44_combout\;
\PrefixNetwork|ALT_INV_Gk[1][29]~68_combout\ <= NOT \PrefixNetwork|Gk[1][29]~68_combout\;
\ALT_INV_c[30]~43_combout\ <= NOT \c[30]~43_combout\;
\ALT_INV_c[30]~42_combout\ <= NOT \c[30]~42_combout\;
\ALT_INV_c[29]~41_combout\ <= NOT \c[29]~41_combout\;
\ALT_INV_c[29]~40_combout\ <= NOT \c[29]~40_combout\;
\ALT_INV_c[29]~39_combout\ <= NOT \c[29]~39_combout\;
\ALT_INV_c[29]~38_combout\ <= NOT \c[29]~38_combout\;
\PrefixNetwork|ALT_INV_Gk[1][28]~67_combout\ <= NOT \PrefixNetwork|Gk[1][28]~67_combout\;
\ALT_INV_c[29]~37_combout\ <= NOT \c[29]~37_combout\;
\ALT_INV_c[29]~36_combout\ <= NOT \c[29]~36_combout\;
ALT_INV_p(29) <= NOT p(29);
\ALT_INV_c[21]~35_combout\ <= NOT \c[21]~35_combout\;
\ALT_INV_c[28]~34_combout\ <= NOT \c[28]~34_combout\;
\ALT_INV_c[28]~33_combout\ <= NOT \c[28]~33_combout\;
\PrefixNetwork|ALT_INV_Gk[1][27]~66_combout\ <= NOT \PrefixNetwork|Gk[1][27]~66_combout\;
\PrefixNetwork|ALT_INV_Pk[2][27]~22_combout\ <= NOT \PrefixNetwork|Pk[2][27]~22_combout\;
\PrefixNetwork|ALT_INV_Gk~65_combout\ <= NOT \PrefixNetwork|Gk~65_combout\;
ALT_INV_p(28) <= NOT p(28);
\ALT_INV_c[27]~32_combout\ <= NOT \c[27]~32_combout\;
\ALT_INV_c[27]~31_combout\ <= NOT \c[27]~31_combout\;
\PrefixNetwork|ALT_INV_Gk[1][26]~64_combout\ <= NOT \PrefixNetwork|Gk[1][26]~64_combout\;
\ALT_INV_c[27]~30_combout\ <= NOT \c[27]~30_combout\;
\PrefixNetwork|ALT_INV_Pk[2][26]~21_combout\ <= NOT \PrefixNetwork|Pk[2][26]~21_combout\;
\ALT_INV_c[26]~29_combout\ <= NOT \c[26]~29_combout\;
\ALT_INV_c[26]~28_combout\ <= NOT \c[26]~28_combout\;
\PrefixNetwork|ALT_INV_Gk~63_combout\ <= NOT \PrefixNetwork|Gk~63_combout\;
\PrefixNetwork|ALT_INV_Gk[1][25]~62_combout\ <= NOT \PrefixNetwork|Gk[1][25]~62_combout\;
\PrefixNetwork|ALT_INV_Pk[2][25]~20_combout\ <= NOT \PrefixNetwork|Pk[2][25]~20_combout\;
\PrefixNetwork|ALT_INV_Gk~61_combout\ <= NOT \PrefixNetwork|Gk~61_combout\;
\ALT_INV_c[25]~27_combout\ <= NOT \c[25]~27_combout\;
\ALT_INV_c[25]~26_combout\ <= NOT \c[25]~26_combout\;
\PrefixNetwork|ALT_INV_Gk[1][24]~60_combout\ <= NOT \PrefixNetwork|Gk[1][24]~60_combout\;
\PrefixNetwork|ALT_INV_Gk~59_combout\ <= NOT \PrefixNetwork|Gk~59_combout\;
\PrefixNetwork|ALT_INV_Pk[2][24]~19_combout\ <= NOT \PrefixNetwork|Pk[2][24]~19_combout\;
ALT_INV_p(25) <= NOT p(25);
\ALT_INV_c[24]~25_combout\ <= NOT \c[24]~25_combout\;
\PrefixNetwork|ALT_INV_Gk[3][23]~combout\ <= NOT \PrefixNetwork|Gk[3][23]~combout\;
\PrefixNetwork|ALT_INV_Gk~58_combout\ <= NOT \PrefixNetwork|Gk~58_combout\;
\PrefixNetwork|ALT_INV_Gk[1][23]~57_combout\ <= NOT \PrefixNetwork|Gk[1][23]~57_combout\;
\ALT_INV_c[28]~24_combout\ <= NOT \c[28]~24_combout\;
\PrefixNetwork|ALT_INV_Pk[2][23]~18_combout\ <= NOT \PrefixNetwork|Pk[2][23]~18_combout\;
\ALT_INV_c[23]~23_combout\ <= NOT \c[23]~23_combout\;
\PrefixNetwork|ALT_INV_Gk[3][22]~combout\ <= NOT \PrefixNetwork|Gk[3][22]~combout\;
\PrefixNetwork|ALT_INV_Gk~56_combout\ <= NOT \PrefixNetwork|Gk~56_combout\;
\PrefixNetwork|ALT_INV_Gk[1][22]~55_combout\ <= NOT \PrefixNetwork|Gk[1][22]~55_combout\;
\ALT_INV_c[23]~22_combout\ <= NOT \c[23]~22_combout\;
\PrefixNetwork|ALT_INV_Pk[2][22]~17_combout\ <= NOT \PrefixNetwork|Pk[2][22]~17_combout\;
\PrefixNetwork|ALT_INV_Gk~54_combout\ <= NOT \PrefixNetwork|Gk~54_combout\;
\ALT_INV_c[22]~21_combout\ <= NOT \c[22]~21_combout\;
\PrefixNetwork|ALT_INV_Gk[3][21]~combout\ <= NOT \PrefixNetwork|Gk[3][21]~combout\;
\PrefixNetwork|ALT_INV_Gk~53_combout\ <= NOT \PrefixNetwork|Gk~53_combout\;
\PrefixNetwork|ALT_INV_Gk[1][21]~52_combout\ <= NOT \PrefixNetwork|Gk[1][21]~52_combout\;
\ALT_INV_c[26]~20_combout\ <= NOT \c[26]~20_combout\;
\PrefixNetwork|ALT_INV_Pk[2][21]~16_combout\ <= NOT \PrefixNetwork|Pk[2][21]~16_combout\;
\PrefixNetwork|ALT_INV_Gk~51_combout\ <= NOT \PrefixNetwork|Gk~51_combout\;
\ALT_INV_c[22]~19_combout\ <= NOT \c[22]~19_combout\;
\ALT_INV_c[21]~18_combout\ <= NOT \c[21]~18_combout\;
\PrefixNetwork|ALT_INV_Gk[3][20]~combout\ <= NOT \PrefixNetwork|Gk[3][20]~combout\;
\PrefixNetwork|ALT_INV_Gk~50_combout\ <= NOT \PrefixNetwork|Gk~50_combout\;
\PrefixNetwork|ALT_INV_Gk[1][20]~49_combout\ <= NOT \PrefixNetwork|Gk[1][20]~49_combout\;
\PrefixNetwork|ALT_INV_Pk[2][20]~15_combout\ <= NOT \PrefixNetwork|Pk[2][20]~15_combout\;
\PrefixNetwork|ALT_INV_Gk~48_combout\ <= NOT \PrefixNetwork|Gk~48_combout\;
\ALT_INV_c[20]~17_combout\ <= NOT \c[20]~17_combout\;
\ALT_INV_c[20]~16_combout\ <= NOT \c[20]~16_combout\;
\PrefixNetwork|ALT_INV_Gk[3][19]~combout\ <= NOT \PrefixNetwork|Gk[3][19]~combout\;
\PrefixNetwork|ALT_INV_Gk~47_combout\ <= NOT \PrefixNetwork|Gk~47_combout\;
\PrefixNetwork|ALT_INV_Gk[1][19]~46_combout\ <= NOT \PrefixNetwork|Gk[1][19]~46_combout\;
\PrefixNetwork|ALT_INV_Pk[2][19]~14_combout\ <= NOT \PrefixNetwork|Pk[2][19]~14_combout\;
\PrefixNetwork|ALT_INV_Gk~45_combout\ <= NOT \PrefixNetwork|Gk~45_combout\;
\PrefixNetwork|ALT_INV_Gk[3][18]~combout\ <= NOT \PrefixNetwork|Gk[3][18]~combout\;
\PrefixNetwork|ALT_INV_Gk~44_combout\ <= NOT \PrefixNetwork|Gk~44_combout\;
\PrefixNetwork|ALT_INV_Gk[1][18]~43_combout\ <= NOT \PrefixNetwork|Gk[1][18]~43_combout\;
\ALT_INV_c[19]~15_combout\ <= NOT \c[19]~15_combout\;
\PrefixNetwork|ALT_INV_Pk[2][18]~13_combout\ <= NOT \PrefixNetwork|Pk[2][18]~13_combout\;
\ALT_INV_S~20_combout\ <= NOT \S~20_combout\;
\PrefixNetwork|ALT_INV_Gk[3][17]~combout\ <= NOT \PrefixNetwork|Gk[3][17]~combout\;
\PrefixNetwork|ALT_INV_Gk~42_combout\ <= NOT \PrefixNetwork|Gk~42_combout\;
\PrefixNetwork|ALT_INV_Gk[1][17]~41_combout\ <= NOT \PrefixNetwork|Gk[1][17]~41_combout\;
\PrefixNetwork|ALT_INV_Pk[2][17]~12_combout\ <= NOT \PrefixNetwork|Pk[2][17]~12_combout\;
\PrefixNetwork|ALT_INV_Gk~40_combout\ <= NOT \PrefixNetwork|Gk~40_combout\;
\ALT_INV_S~18_combout\ <= NOT \S~18_combout\;
\ALT_INV_S~17_combout\ <= NOT \S~17_combout\;
\PrefixNetwork|ALT_INV_Gk[3][16]~combout\ <= NOT \PrefixNetwork|Gk[3][16]~combout\;
\PrefixNetwork|ALT_INV_Gk~39_combout\ <= NOT \PrefixNetwork|Gk~39_combout\;
\PrefixNetwork|ALT_INV_Gk[1][16]~38_combout\ <= NOT \PrefixNetwork|Gk[1][16]~38_combout\;
\PrefixNetwork|ALT_INV_Pk[2][16]~11_combout\ <= NOT \PrefixNetwork|Pk[2][16]~11_combout\;
\PrefixNetwork|ALT_INV_Gk~37_combout\ <= NOT \PrefixNetwork|Gk~37_combout\;
\PrefixNetwork|ALT_INV_Gk[3][15]~combout\ <= NOT \PrefixNetwork|Gk[3][15]~combout\;
\PrefixNetwork|ALT_INV_Gk~36_combout\ <= NOT \PrefixNetwork|Gk~36_combout\;
\PrefixNetwork|ALT_INV_Gk[1][15]~35_combout\ <= NOT \PrefixNetwork|Gk[1][15]~35_combout\;
\ALT_INV_c~14_combout\ <= NOT \c~14_combout\;
\PrefixNetwork|ALT_INV_Pk[2][15]~10_combout\ <= NOT \PrefixNetwork|Pk[2][15]~10_combout\;
\PrefixNetwork|ALT_INV_Gk~34_combout\ <= NOT \PrefixNetwork|Gk~34_combout\;
\PrefixNetwork|ALT_INV_Gk[3][14]~combout\ <= NOT \PrefixNetwork|Gk[3][14]~combout\;
\PrefixNetwork|ALT_INV_Gk~33_combout\ <= NOT \PrefixNetwork|Gk~33_combout\;
\PrefixNetwork|ALT_INV_Gk[1][14]~32_combout\ <= NOT \PrefixNetwork|Gk[1][14]~32_combout\;
\ALT_INV_c~13_combout\ <= NOT \c~13_combout\;
\PrefixNetwork|ALT_INV_Pk[2][14]~9_combout\ <= NOT \PrefixNetwork|Pk[2][14]~9_combout\;
\PrefixNetwork|ALT_INV_Gk~31_combout\ <= NOT \PrefixNetwork|Gk~31_combout\;
\ALT_INV_c[14]~12_combout\ <= NOT \c[14]~12_combout\;
\PrefixNetwork|ALT_INV_Gk[3][13]~combout\ <= NOT \PrefixNetwork|Gk[3][13]~combout\;
\PrefixNetwork|ALT_INV_Gk~30_combout\ <= NOT \PrefixNetwork|Gk~30_combout\;
\PrefixNetwork|ALT_INV_Gk[1][13]~29_combout\ <= NOT \PrefixNetwork|Gk[1][13]~29_combout\;
\PrefixNetwork|ALT_INV_Pk[2][13]~8_combout\ <= NOT \PrefixNetwork|Pk[2][13]~8_combout\;
\PrefixNetwork|ALT_INV_Gk~28_combout\ <= NOT \PrefixNetwork|Gk~28_combout\;
\ALT_INV_c[13]~11_combout\ <= NOT \c[13]~11_combout\;
\PrefixNetwork|ALT_INV_Gk[3][12]~combout\ <= NOT \PrefixNetwork|Gk[3][12]~combout\;
\PrefixNetwork|ALT_INV_Gk~27_combout\ <= NOT \PrefixNetwork|Gk~27_combout\;
\PrefixNetwork|ALT_INV_Gk[1][12]~26_combout\ <= NOT \PrefixNetwork|Gk[1][12]~26_combout\;
\ALT_INV_c[21]~10_combout\ <= NOT \c[21]~10_combout\;
\PrefixNetwork|ALT_INV_Pk[2][12]~7_combout\ <= NOT \PrefixNetwork|Pk[2][12]~7_combout\;
\PrefixNetwork|ALT_INV_Gk~25_combout\ <= NOT \PrefixNetwork|Gk~25_combout\;
\ALT_INV_c[12]~9_combout\ <= NOT \c[12]~9_combout\;
\PrefixNetwork|ALT_INV_Gk[3][11]~combout\ <= NOT \PrefixNetwork|Gk[3][11]~combout\;
\PrefixNetwork|ALT_INV_Gk~24_combout\ <= NOT \PrefixNetwork|Gk~24_combout\;
\PrefixNetwork|ALT_INV_Gk[1][11]~23_combout\ <= NOT \PrefixNetwork|Gk[1][11]~23_combout\;
\PrefixNetwork|ALT_INV_Pk[2][11]~6_combout\ <= NOT \PrefixNetwork|Pk[2][11]~6_combout\;
\PrefixNetwork|ALT_INV_Gk~22_combout\ <= NOT \PrefixNetwork|Gk~22_combout\;
\ALT_INV_c[19]~8_combout\ <= NOT \c[19]~8_combout\;
\PrefixNetwork|ALT_INV_Gk[3][10]~combout\ <= NOT \PrefixNetwork|Gk[3][10]~combout\;
\PrefixNetwork|ALT_INV_Gk~21_combout\ <= NOT \PrefixNetwork|Gk~21_combout\;
\PrefixNetwork|ALT_INV_Pk[2][10]~5_combout\ <= NOT \PrefixNetwork|Pk[2][10]~5_combout\;
\PrefixNetwork|ALT_INV_Gk~20_combout\ <= NOT \PrefixNetwork|Gk~20_combout\;
\PrefixNetwork|ALT_INV_Gk[1][10]~19_combout\ <= NOT \PrefixNetwork|Gk[1][10]~19_combout\;
\ALT_INV_c[10]~7_combout\ <= NOT \c[10]~7_combout\;
\PrefixNetwork|ALT_INV_Gk[3][9]~combout\ <= NOT \PrefixNetwork|Gk[3][9]~combout\;
\PrefixNetwork|ALT_INV_Gk~18_combout\ <= NOT \PrefixNetwork|Gk~18_combout\;
\PrefixNetwork|ALT_INV_Gk[1][9]~17_combout\ <= NOT \PrefixNetwork|Gk[1][9]~17_combout\;
\PrefixNetwork|ALT_INV_Pk[2][9]~4_combout\ <= NOT \PrefixNetwork|Pk[2][9]~4_combout\;
\PrefixNetwork|ALT_INV_Gk~16_combout\ <= NOT \PrefixNetwork|Gk~16_combout\;
\ALT_INV_c[9]~6_combout\ <= NOT \c[9]~6_combout\;
\PrefixNetwork|ALT_INV_Gk[3][8]~combout\ <= NOT \PrefixNetwork|Gk[3][8]~combout\;
\PrefixNetwork|ALT_INV_Gk~15_combout\ <= NOT \PrefixNetwork|Gk~15_combout\;
\PrefixNetwork|ALT_INV_Pk[2][26]~21DUPLICATE_combout\ <= NOT \PrefixNetwork|Pk[2][26]~21DUPLICATE_combout\;
\PrefixNetwork|ALT_INV_Pk[2][23]~18DUPLICATE_combout\ <= NOT \PrefixNetwork|Pk[2][23]~18DUPLICATE_combout\;
\PrefixNetwork|ALT_INV_Pk[2][17]~12DUPLICATE_combout\ <= NOT \PrefixNetwork|Pk[2][17]~12DUPLICATE_combout\;
\PrefixNetwork|ALT_INV_Gk[3][12]~DUPLICATE_combout\ <= NOT \PrefixNetwork|Gk[3][12]~DUPLICATE_combout\;
\ALT_INV_c[21]~10DUPLICATE_combout\ <= NOT \c[21]~10DUPLICATE_combout\;
\PrefixNetwork|ALT_INV_Gk[1][6]~8DUPLICATE_combout\ <= NOT \PrefixNetwork|Gk[1][6]~8DUPLICATE_combout\;
\PrefixNetwork|ALT_INV_Gk~4DUPLICATE_combout\ <= NOT \PrefixNetwork|Gk~4DUPLICATE_combout\;
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

-- Location: IOOBUF_X59_Y18_N2
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

-- Location: IOOBUF_X32_Y0_N67
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

-- Location: IOOBUF_X33_Y0_N5
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

-- Location: IOOBUF_X59_Y18_N98
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

-- Location: IOOBUF_X59_Y15_N98
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

-- Location: IOOBUF_X33_Y0_N33
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

-- Location: IOOBUF_X32_Y0_N36
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

-- Location: IOOBUF_X59_Y13_N36
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

-- Location: IOOBUF_X30_Y0_N67
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

-- Location: IOOBUF_X33_Y0_N98
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

-- Location: IOOBUF_X35_Y0_N98
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

-- Location: IOOBUF_X59_Y15_N33
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

-- Location: IOOBUF_X32_Y0_N98
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

-- Location: IOOBUF_X59_Y7_N67
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

-- Location: IOOBUF_X35_Y0_N67
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

-- Location: IOOBUF_X59_Y10_N36
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

-- Location: IOOBUF_X39_Y0_N2
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
	i => \S~19_combout\,
	devoe => ww_devoe,
	o => \S[17]~output_o\);

-- Location: IOOBUF_X43_Y0_N36
\S[18]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~21_combout\,
	devoe => ww_devoe,
	o => \S[18]~output_o\);

-- Location: IOOBUF_X59_Y16_N36
\S[19]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~22_combout\,
	devoe => ww_devoe,
	o => \S[19]~output_o\);

-- Location: IOOBUF_X45_Y0_N67
\S[20]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~23_combout\,
	devoe => ww_devoe,
	o => \S[20]~output_o\);

-- Location: IOOBUF_X56_Y0_N95
\S[21]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~24_combout\,
	devoe => ww_devoe,
	o => \S[21]~output_o\);

-- Location: IOOBUF_X43_Y0_N2
\S[22]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~25_combout\,
	devoe => ww_devoe,
	o => \S[22]~output_o\);

-- Location: IOOBUF_X55_Y0_N5
\S[23]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~26_combout\,
	devoe => ww_devoe,
	o => \S[23]~output_o\);

-- Location: IOOBUF_X45_Y0_N36
\S[24]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~27_combout\,
	devoe => ww_devoe,
	o => \S[24]~output_o\);

-- Location: IOOBUF_X50_Y0_N67
\S[25]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~28_combout\,
	devoe => ww_devoe,
	o => \S[25]~output_o\);

-- Location: IOOBUF_X43_Y0_N67
\S[26]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~29_combout\,
	devoe => ww_devoe,
	o => \S[26]~output_o\);

-- Location: IOOBUF_X55_Y0_N33
\S[27]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~30_combout\,
	devoe => ww_devoe,
	o => \S[27]~output_o\);

-- Location: IOOBUF_X45_Y0_N2
\S[28]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~31_combout\,
	devoe => ww_devoe,
	o => \S[28]~output_o\);

-- Location: IOOBUF_X59_Y4_N2
\S[29]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~32_combout\,
	devoe => ww_devoe,
	o => \S[29]~output_o\);

-- Location: IOOBUF_X43_Y0_N98
\S[30]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~33_combout\,
	devoe => ww_devoe,
	o => \S[30]~output_o\);

-- Location: IOOBUF_X59_Y4_N67
\S[31]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~34_combout\,
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
	i => \c~52_combout\,
	devoe => ww_devoe,
	o => \Cout~output_o\);

-- Location: IOOBUF_X59_Y4_N98
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

-- Location: IOIBUF_X55_Y0_N63
\B[0]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X59_Y9_N63
\A[0]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X59_Y16_N94
\Cin~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cin,
	o => \Cin~input_o\);

-- Location: LABCELL_X55_Y6_N26
\S~0\ : arriaii_lcell_comb
-- Equation(s):
-- \S~0_combout\ = ( \A[0]~input_o\ & ( \Cin~input_o\ & ( \B[0]~input_o\ ) ) ) # ( !\A[0]~input_o\ & ( \Cin~input_o\ & ( !\B[0]~input_o\ ) ) ) # ( \A[0]~input_o\ & ( !\Cin~input_o\ & ( !\B[0]~input_o\ ) ) ) # ( !\A[0]~input_o\ & ( !\Cin~input_o\ & ( 
-- \B[0]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111111111110000000011111111000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_B[0]~input_o\,
	datae => \ALT_INV_A[0]~input_o\,
	dataf => \ALT_INV_Cin~input_o\,
	combout => \S~0_combout\);

-- Location: IOIBUF_X59_Y6_N1
\A[1]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: IOIBUF_X59_Y6_N63
\B[1]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: MLABCELL_X52_Y4_N18
\S~1\ : arriaii_lcell_comb
-- Equation(s):
-- \S~1_combout\ = ( \Cin~input_o\ & ( !\A[1]~input_o\ $ (!\B[1]~input_o\ $ (((\A[0]~input_o\) # (\B[0]~input_o\)))) ) ) # ( !\Cin~input_o\ & ( !\A[1]~input_o\ $ (!\B[1]~input_o\ $ (((\B[0]~input_o\ & \A[0]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011011001001001101101100100101101100100100110110110010010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_A[1]~input_o\,
	datac => \ALT_INV_A[0]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_Cin~input_o\,
	combout => \S~1_combout\);

-- Location: IOIBUF_X56_Y0_N32
\B[2]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: IOIBUF_X56_Y0_N63
\A[2]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: MLABCELL_X52_Y4_N16
\c[6]~53\ : arriaii_lcell_comb
-- Equation(s):
-- \c[6]~53_combout\ = ( \Cin~input_o\ & ( (!\A[1]~input_o\ & (\B[1]~input_o\ & ((\A[0]~input_o\) # (\B[0]~input_o\)))) # (\A[1]~input_o\ & (((\B[1]~input_o\) # (\A[0]~input_o\)) # (\B[0]~input_o\))) ) ) # ( !\Cin~input_o\ & ( (!\A[1]~input_o\ & 
-- (\B[0]~input_o\ & (\A[0]~input_o\ & \B[1]~input_o\))) # (\A[1]~input_o\ & (((\B[0]~input_o\ & \A[0]~input_o\)) # (\B[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100110111000000010011011100010011011111110001001101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_A[1]~input_o\,
	datac => \ALT_INV_A[0]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_Cin~input_o\,
	combout => \c[6]~53_combout\);

-- Location: MLABCELL_X52_Y4_N8
\S~2\ : arriaii_lcell_comb
-- Equation(s):
-- \S~2_combout\ = ( \c[6]~53_combout\ & ( !\B[2]~input_o\ $ (\A[2]~input_o\) ) ) # ( !\c[6]~53_combout\ & ( !\B[2]~input_o\ $ (!\A[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000011110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[2]~input_o\,
	datad => \ALT_INV_A[2]~input_o\,
	dataf => \ALT_INV_c[6]~53_combout\,
	combout => \S~2_combout\);

-- Location: IOIBUF_X59_Y9_N94
\A[3]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: LABCELL_X55_Y4_N34
\PrefixNetwork|Pk[2][4]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[2][4]~0_combout\ = ( \A[1]~input_o\ & ( (!\B[1]~input_o\ & (!\B[2]~input_o\ $ (!\A[2]~input_o\))) ) ) # ( !\A[1]~input_o\ & ( (\B[1]~input_o\ & (!\B[2]~input_o\ $ (!\A[2]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100001010000001010000101001010000101000000101000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_A[2]~input_o\,
	dataf => \ALT_INV_A[1]~input_o\,
	combout => \PrefixNetwork|Pk[2][4]~0_combout\);

-- Location: LABCELL_X55_Y4_N4
\c[11]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \c[11]~0_combout\ = ( \PrefixNetwork|Pk[2][4]~0_combout\ & ( (!\B[0]~input_o\ & (\Cin~input_o\ & \A[0]~input_o\)) # (\B[0]~input_o\ & ((\A[0]~input_o\) # (\Cin~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011001111110000001100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_Cin~input_o\,
	datad => \ALT_INV_A[0]~input_o\,
	dataf => \PrefixNetwork|ALT_INV_Pk[2][4]~0_combout\,
	combout => \c[11]~0_combout\);

-- Location: IOIBUF_X55_Y0_N94
\B[3]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: MLABCELL_X52_Y4_N6
\PrefixNetwork|Gk[1][2]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][2]~0_combout\ = ( \A[1]~input_o\ & ( (!\B[2]~input_o\ & (\B[1]~input_o\ & \A[2]~input_o\)) # (\B[2]~input_o\ & ((\A[2]~input_o\) # (\B[1]~input_o\))) ) ) # ( !\A[1]~input_o\ & ( (\B[2]~input_o\ & \A[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100000101010111110000010101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_A[2]~input_o\,
	dataf => \ALT_INV_A[1]~input_o\,
	combout => \PrefixNetwork|Gk[1][2]~0_combout\);

-- Location: MLABCELL_X52_Y4_N28
\S~3\ : arriaii_lcell_comb
-- Equation(s):
-- \S~3_combout\ = ( \PrefixNetwork|Gk[1][2]~0_combout\ & ( !\A[3]~input_o\ $ (\B[3]~input_o\) ) ) # ( !\PrefixNetwork|Gk[1][2]~0_combout\ & ( !\A[3]~input_o\ $ (!\c[11]~0_combout\ $ (\B[3]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011000011001111001100001111001100001100111100110000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[3]~input_o\,
	datac => \ALT_INV_c[11]~0_combout\,
	datad => \ALT_INV_B[3]~input_o\,
	dataf => \PrefixNetwork|ALT_INV_Gk[1][2]~0_combout\,
	combout => \S~3_combout\);

-- Location: IOIBUF_X52_Y0_N63
\A[4]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: IOIBUF_X52_Y0_N94
\B[4]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: LABCELL_X55_Y4_N6
\c~1\ : arriaii_lcell_comb
-- Equation(s):
-- \c~1_combout\ = ( \PrefixNetwork|Pk[2][4]~0_combout\ & ( (\Cin~input_o\ & (!\B[0]~input_o\ $ (!\A[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000011000000001100001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_Cin~input_o\,
	datad => \ALT_INV_A[0]~input_o\,
	dataf => \PrefixNetwork|ALT_INV_Pk[2][4]~0_combout\,
	combout => \c~1_combout\);

-- Location: MLABCELL_X52_Y4_N24
\PrefixNetwork|Gk[1][3]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][3]~1_combout\ = ( \B[2]~input_o\ & ( (!\A[2]~input_o\ & (\A[3]~input_o\ & \B[3]~input_o\)) # (\A[2]~input_o\ & ((\B[3]~input_o\) # (\A[3]~input_o\))) ) ) # ( !\B[2]~input_o\ & ( (\A[3]~input_o\ & \B[3]~input_o\) ) )

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
	combout => \PrefixNetwork|Gk[1][3]~1_combout\);

-- Location: MLABCELL_X52_Y4_N30
\PrefixNetwork|Gpre[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gpre[1]~0_combout\ = ( \A[0]~input_o\ & ( (!\B[0]~input_o\ & (\B[1]~input_o\ & \A[1]~input_o\)) # (\B[0]~input_o\ & ((\A[1]~input_o\) # (\B[1]~input_o\))) ) ) # ( !\A[0]~input_o\ & ( (\B[1]~input_o\ & \A[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000101010111110000010101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_A[1]~input_o\,
	dataf => \ALT_INV_A[0]~input_o\,
	combout => \PrefixNetwork|Gpre[1]~0_combout\);

-- Location: LABCELL_X47_Y4_N10
\PrefixNetwork|Gk~2\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~2_combout\ = ( \PrefixNetwork|Gpre[1]~0_combout\ & ( (!\A[3]~input_o\ & (\B[3]~input_o\ & (!\B[2]~input_o\ $ (!\A[2]~input_o\)))) # (\A[3]~input_o\ & (!\B[3]~input_o\ & (!\B[2]~input_o\ $ (!\A[2]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010100001010000001010000101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[3]~input_o\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_A[2]~input_o\,
	datad => \ALT_INV_B[3]~input_o\,
	dataf => \PrefixNetwork|ALT_INV_Gpre[1]~0_combout\,
	combout => \PrefixNetwork|Gk~2_combout\);

-- Location: LABCELL_X47_Y4_N14
\c[12]~2\ : arriaii_lcell_comb
-- Equation(s):
-- \c[12]~2_combout\ = ( !\PrefixNetwork|Gk~2_combout\ & ( (!\PrefixNetwork|Gk[1][3]~1_combout\ & ((!\c~1_combout\) # (!\B[3]~input_o\ $ (\A[3]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111100100000000111110010000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_A[3]~input_o\,
	datac => \ALT_INV_c~1_combout\,
	datad => \PrefixNetwork|ALT_INV_Gk[1][3]~1_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk~2_combout\,
	combout => \c[12]~2_combout\);

-- Location: LABCELL_X47_Y4_N12
\S~4\ : arriaii_lcell_comb
-- Equation(s):
-- \S~4_combout\ = ( \c[12]~2_combout\ & ( !\A[4]~input_o\ $ (!\B[4]~input_o\) ) ) # ( !\c[12]~2_combout\ & ( !\A[4]~input_o\ $ (\B[4]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000001111111100000000111100001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[4]~input_o\,
	datad => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_c[12]~2_combout\,
	combout => \S~4_combout\);

-- Location: IOIBUF_X52_Y0_N32
\A[5]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: IOIBUF_X52_Y0_N1
\B[5]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: MLABCELL_X52_Y4_N14
\PrefixNetwork|Gk~4\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~4_combout\ = ( !\B[3]~input_o\ & ( \A[3]~input_o\ & ( !\B[4]~input_o\ $ (!\A[4]~input_o\) ) ) ) # ( \B[3]~input_o\ & ( !\A[3]~input_o\ & ( !\B[4]~input_o\ $ (!\A[4]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011111111000000001111111100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[4]~input_o\,
	datad => \ALT_INV_A[4]~input_o\,
	datae => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_A[3]~input_o\,
	combout => \PrefixNetwork|Gk~4_combout\);

-- Location: MLABCELL_X52_Y4_N26
\PrefixNetwork|Gk[1][4]~3\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][4]~3_combout\ = ( \A[4]~input_o\ & ( ((\B[3]~input_o\ & \A[3]~input_o\)) # (\B[4]~input_o\) ) ) # ( !\A[4]~input_o\ & ( (\B[3]~input_o\ & (\B[4]~input_o\ & \A[3]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100001111001111110000111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[3]~input_o\,
	datac => \ALT_INV_B[4]~input_o\,
	datad => \ALT_INV_A[3]~input_o\,
	dataf => \ALT_INV_A[4]~input_o\,
	combout => \PrefixNetwork|Gk[1][4]~3_combout\);

-- Location: MLABCELL_X52_Y4_N2
\S~5\ : arriaii_lcell_comb
-- Equation(s):
-- \S~5_combout\ = ( \PrefixNetwork|Gk[1][4]~3_combout\ & ( \c[11]~0_combout\ & ( !\A[5]~input_o\ $ (\B[5]~input_o\) ) ) ) # ( !\PrefixNetwork|Gk[1][4]~3_combout\ & ( \c[11]~0_combout\ & ( !\A[5]~input_o\ $ (!\B[5]~input_o\ $ (\PrefixNetwork|Gk~4_combout\)) 
-- ) ) ) # ( \PrefixNetwork|Gk[1][4]~3_combout\ & ( !\c[11]~0_combout\ & ( !\A[5]~input_o\ $ (\B[5]~input_o\) ) ) ) # ( !\PrefixNetwork|Gk[1][4]~3_combout\ & ( !\c[11]~0_combout\ & ( !\A[5]~input_o\ $ (!\B[5]~input_o\ $ (((\PrefixNetwork|Gk~4_combout\ & 
-- \PrefixNetwork|Gk[1][2]~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001101001100110011001100101101001011010011001100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[5]~input_o\,
	datab => \ALT_INV_B[5]~input_o\,
	datac => \PrefixNetwork|ALT_INV_Gk~4_combout\,
	datad => \PrefixNetwork|ALT_INV_Gk[1][2]~0_combout\,
	datae => \PrefixNetwork|ALT_INV_Gk[1][4]~3_combout\,
	dataf => \ALT_INV_c[11]~0_combout\,
	combout => \S~5_combout\);

-- Location: IOIBUF_X45_Y0_N94
\B[6]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: IOIBUF_X41_Y0_N94
\A[6]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: MLABCELL_X52_Y4_N10
\PrefixNetwork|Gk[1][5]~5\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][5]~5_combout\ = ( \A[5]~input_o\ & ( ((\A[4]~input_o\ & \B[4]~input_o\)) # (\B[5]~input_o\) ) ) # ( !\A[5]~input_o\ & ( (\A[4]~input_o\ & (\B[4]~input_o\ & \B[5]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100000011111111110000001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[4]~input_o\,
	datac => \ALT_INV_B[4]~input_o\,
	datad => \ALT_INV_B[5]~input_o\,
	dataf => \ALT_INV_A[5]~input_o\,
	combout => \PrefixNetwork|Gk[1][5]~5_combout\);

-- Location: MLABCELL_X52_Y4_N20
\PrefixNetwork|Gk~6\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~6_combout\ = ( \PrefixNetwork|Gk[1][3]~1_combout\ & ( (!\A[5]~input_o\ & (\B[5]~input_o\ & (!\B[4]~input_o\ $ (!\A[4]~input_o\)))) # (\A[5]~input_o\ & (!\B[5]~input_o\ & (!\B[4]~input_o\ $ (!\A[4]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010100001010000001010000101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[5]~input_o\,
	datab => \ALT_INV_B[4]~input_o\,
	datac => \ALT_INV_A[4]~input_o\,
	datad => \ALT_INV_B[5]~input_o\,
	dataf => \PrefixNetwork|ALT_INV_Gk[1][3]~1_combout\,
	combout => \PrefixNetwork|Gk~6_combout\);

-- Location: MLABCELL_X52_Y4_N12
\PrefixNetwork|Gk~4DUPLICATE\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~4DUPLICATE_combout\ = ( !\B[3]~input_o\ & ( \A[3]~input_o\ & ( !\A[4]~input_o\ $ (!\B[4]~input_o\) ) ) ) # ( \B[3]~input_o\ & ( !\A[3]~input_o\ & ( !\A[4]~input_o\ $ (!\B[4]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011111111000000001111111100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[4]~input_o\,
	datad => \ALT_INV_B[4]~input_o\,
	datae => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_A[3]~input_o\,
	combout => \PrefixNetwork|Gk~4DUPLICATE_combout\);

-- Location: MLABCELL_X52_Y4_N32
\c[6]~3\ : arriaii_lcell_comb
-- Equation(s):
-- \c[6]~3_combout\ = ( \PrefixNetwork|Gk~4DUPLICATE_combout\ & ( \c[6]~53_combout\ & ( (!\B[5]~input_o\ & (\A[5]~input_o\ & (!\B[2]~input_o\ $ (!\A[2]~input_o\)))) # (\B[5]~input_o\ & (!\A[5]~input_o\ & (!\B[2]~input_o\ $ (!\A[2]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001001001001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[5]~input_o\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_A[5]~input_o\,
	datad => \ALT_INV_A[2]~input_o\,
	datae => \PrefixNetwork|ALT_INV_Gk~4DUPLICATE_combout\,
	dataf => \ALT_INV_c[6]~53_combout\,
	combout => \c[6]~3_combout\);

-- Location: MLABCELL_X52_Y4_N36
\S~6\ : arriaii_lcell_comb
-- Equation(s):
-- \S~6_combout\ = ( \PrefixNetwork|Gk~6_combout\ & ( \c[6]~3_combout\ & ( !\B[6]~input_o\ $ (\A[6]~input_o\) ) ) ) # ( !\PrefixNetwork|Gk~6_combout\ & ( \c[6]~3_combout\ & ( !\B[6]~input_o\ $ (\A[6]~input_o\) ) ) ) # ( \PrefixNetwork|Gk~6_combout\ & ( 
-- !\c[6]~3_combout\ & ( !\B[6]~input_o\ $ (\A[6]~input_o\) ) ) ) # ( !\PrefixNetwork|Gk~6_combout\ & ( !\c[6]~3_combout\ & ( !\B[6]~input_o\ $ (!\A[6]~input_o\ $ (\PrefixNetwork|Gk[1][5]~5_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101010100101101001011010010110100101101001011010010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[6]~input_o\,
	datac => \ALT_INV_A[6]~input_o\,
	datad => \PrefixNetwork|ALT_INV_Gk[1][5]~5_combout\,
	datae => \PrefixNetwork|ALT_INV_Gk~6_combout\,
	dataf => \ALT_INV_c[6]~3_combout\,
	combout => \S~6_combout\);

-- Location: IOIBUF_X48_Y0_N1
\A[7]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: LABCELL_X53_Y4_N14
\PrefixNetwork|Gk[1][6]~8DUPLICATE\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][6]~8DUPLICATE_combout\ = ( \A[6]~input_o\ & ( \B[6]~input_o\ ) ) # ( !\A[6]~input_o\ & ( \B[6]~input_o\ & ( (\A[5]~input_o\ & \B[5]~input_o\) ) ) ) # ( \A[6]~input_o\ & ( !\B[6]~input_o\ & ( (\A[5]~input_o\ & \B[5]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[5]~input_o\,
	datad => \ALT_INV_B[5]~input_o\,
	datae => \ALT_INV_A[6]~input_o\,
	dataf => \ALT_INV_B[6]~input_o\,
	combout => \PrefixNetwork|Gk[1][6]~8DUPLICATE_combout\);

-- Location: MLABCELL_X44_Y4_N16
\PrefixNetwork|Gk~7\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~7_combout\ = ( \B[5]~input_o\ & ( (!\A[5]~input_o\ & (!\B[6]~input_o\ $ (!\A[6]~input_o\))) ) ) # ( !\B[5]~input_o\ & ( (\A[5]~input_o\ & (!\B[6]~input_o\ $ (!\A[6]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100001100000000110000110000110000110000000011000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[6]~input_o\,
	datac => \ALT_INV_A[5]~input_o\,
	datad => \ALT_INV_A[6]~input_o\,
	dataf => \ALT_INV_B[5]~input_o\,
	combout => \PrefixNetwork|Gk~7_combout\);

-- Location: LABCELL_X53_Y4_N26
\PrefixNetwork|Gk~9\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~9_combout\ = ( \PrefixNetwork|Gk~7_combout\ & ( \PrefixNetwork|Gk[1][4]~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|ALT_INV_Gk[1][4]~3_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk~7_combout\,
	combout => \PrefixNetwork|Gk~9_combout\);

-- Location: LABCELL_X55_Y4_N32
\PrefixNetwork|Gpre[6]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gpre[6]~1_combout\ = ( !\PrefixNetwork|Gk[1][2]~0_combout\ & ( (!\B[0]~input_o\) # ((!\PrefixNetwork|Pk[2][4]~0_combout\) # (!\A[0]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111100111111111111110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[0]~input_o\,
	datac => \PrefixNetwork|ALT_INV_Pk[2][4]~0_combout\,
	datad => \ALT_INV_A[0]~input_o\,
	dataf => \PrefixNetwork|ALT_INV_Gk[1][2]~0_combout\,
	combout => \PrefixNetwork|Gpre[6]~1_combout\);

-- Location: LABCELL_X53_Y4_N16
\PrefixNetwork|Pk[2][6]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[2][6]~1_combout\ = ( \PrefixNetwork|Gk~4DUPLICATE_combout\ & ( \PrefixNetwork|Gk~7_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \PrefixNetwork|ALT_INV_Gk~4DUPLICATE_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk~7_combout\,
	combout => \PrefixNetwork|Pk[2][6]~1_combout\);

-- Location: MLABCELL_X54_Y4_N28
\PrefixNetwork|Gpre[6]~2\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gpre[6]~2_combout\ = ( \PrefixNetwork|Pk[2][6]~1_combout\ & ( (!\PrefixNetwork|Gk[1][6]~8DUPLICATE_combout\ & (!\PrefixNetwork|Gk~9_combout\ & \PrefixNetwork|Gpre[6]~1_combout\)) ) ) # ( !\PrefixNetwork|Pk[2][6]~1_combout\ & ( 
-- (!\PrefixNetwork|Gk[1][6]~8DUPLICATE_combout\ & !\PrefixNetwork|Gk~9_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000110000001100000000000000110000000000000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PrefixNetwork|ALT_INV_Gk[1][6]~8DUPLICATE_combout\,
	datac => \PrefixNetwork|ALT_INV_Gk~9_combout\,
	datad => \PrefixNetwork|ALT_INV_Gpre[6]~1_combout\,
	dataf => \PrefixNetwork|ALT_INV_Pk[2][6]~1_combout\,
	combout => \PrefixNetwork|Gpre[6]~2_combout\);

-- Location: IOIBUF_X48_Y0_N63
\B[7]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: MLABCELL_X54_Y4_N24
\c~4\ : arriaii_lcell_comb
-- Equation(s):
-- \c~4_combout\ = ( \PrefixNetwork|Pk[2][6]~1_combout\ & ( \c~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_c~1_combout\,
	dataf => \PrefixNetwork|ALT_INV_Pk[2][6]~1_combout\,
	combout => \c~4_combout\);

-- Location: LABCELL_X55_Y4_N24
\S~7\ : arriaii_lcell_comb
-- Equation(s):
-- \S~7_combout\ = ( \c~4_combout\ & ( !\A[7]~input_o\ $ (\B[7]~input_o\) ) ) # ( !\c~4_combout\ & ( !\A[7]~input_o\ $ (!\PrefixNetwork|Gpre[6]~2_combout\ $ (!\B[7]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010010101011010101001010101101010101010010101011010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[7]~input_o\,
	datac => \PrefixNetwork|ALT_INV_Gpre[6]~2_combout\,
	datad => \ALT_INV_B[7]~input_o\,
	dataf => \ALT_INV_c~4_combout\,
	combout => \S~7_combout\);

-- Location: IOIBUF_X48_Y0_N94
\B[8]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

-- Location: IOIBUF_X48_Y0_N32
\A[8]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: LABCELL_X47_Y4_N26
\PrefixNetwork|Gk~10\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~10_combout\ = ( \A[7]~input_o\ & ( (!\B[7]~input_o\ & (!\B[6]~input_o\ $ (!\A[6]~input_o\))) ) ) # ( !\A[7]~input_o\ & ( (\B[7]~input_o\ & (!\B[6]~input_o\ $ (!\A[6]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100110000000000110011000000001100110000000000110011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[7]~input_o\,
	datac => \ALT_INV_B[6]~input_o\,
	datad => \ALT_INV_A[6]~input_o\,
	dataf => \ALT_INV_A[7]~input_o\,
	combout => \PrefixNetwork|Gk~10_combout\);

-- Location: LABCELL_X47_Y4_N30
\PrefixNetwork|Pk[2][7]~2\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[2][7]~2_combout\ = ( \A[4]~input_o\ & ( (!\B[4]~input_o\ & (\PrefixNetwork|Gk~10_combout\ & (!\B[5]~input_o\ $ (!\A[5]~input_o\)))) ) ) # ( !\A[4]~input_o\ & ( (\B[4]~input_o\ & (\PrefixNetwork|Gk~10_combout\ & (!\B[5]~input_o\ $ 
-- (!\A[5]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000100000000010000010000000010000010000000001000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \ALT_INV_B[5]~input_o\,
	datac => \PrefixNetwork|ALT_INV_Gk~10_combout\,
	datad => \ALT_INV_A[5]~input_o\,
	dataf => \ALT_INV_A[4]~input_o\,
	combout => \PrefixNetwork|Pk[2][7]~2_combout\);

-- Location: LABCELL_X47_Y4_N24
\c~5\ : arriaii_lcell_comb
-- Equation(s):
-- \c~5_combout\ = ( \c~1_combout\ & ( (\PrefixNetwork|Pk[2][7]~2_combout\ & (!\B[3]~input_o\ $ (!\A[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010110100000000001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datac => \ALT_INV_A[3]~input_o\,
	datad => \PrefixNetwork|ALT_INV_Pk[2][7]~2_combout\,
	dataf => \ALT_INV_c~1_combout\,
	combout => \c~5_combout\);

-- Location: MLABCELL_X44_Y4_N18
\PrefixNetwork|Gk[1][7]~11\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][7]~11_combout\ = ( \B[7]~input_o\ & ( ((\B[6]~input_o\ & \A[6]~input_o\)) # (\A[7]~input_o\) ) ) # ( !\B[7]~input_o\ & ( (\B[6]~input_o\ & (\A[6]~input_o\ & \A[7]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100000011111111110000001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[6]~input_o\,
	datac => \ALT_INV_A[6]~input_o\,
	datad => \ALT_INV_A[7]~input_o\,
	dataf => \ALT_INV_B[7]~input_o\,
	combout => \PrefixNetwork|Gk[1][7]~11_combout\);

-- Location: LABCELL_X47_Y4_N32
\PrefixNetwork|Gk~12\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~12_combout\ = ( \PrefixNetwork|Gk[1][5]~5_combout\ & ( \PrefixNetwork|Gk~10_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PrefixNetwork|ALT_INV_Gk~10_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk[1][5]~5_combout\,
	combout => \PrefixNetwork|Gk~12_combout\);

-- Location: LABCELL_X47_Y4_N6
\PrefixNetwork|Gpre[7]\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gpre\(7) = ( \PrefixNetwork|Gk~2_combout\ & ( (!\PrefixNetwork|Gk[1][7]~11_combout\ & (!\PrefixNetwork|Gk~12_combout\ & !\PrefixNetwork|Pk[2][7]~2_combout\)) ) ) # ( !\PrefixNetwork|Gk~2_combout\ & ( (!\PrefixNetwork|Gk[1][7]~11_combout\ & 
-- (!\PrefixNetwork|Gk~12_combout\ & ((!\PrefixNetwork|Gk[1][3]~1_combout\) # (!\PrefixNetwork|Pk[2][7]~2_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010000000101000001000000010100000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|ALT_INV_Gk[1][7]~11_combout\,
	datab => \PrefixNetwork|ALT_INV_Gk[1][3]~1_combout\,
	datac => \PrefixNetwork|ALT_INV_Gk~12_combout\,
	datad => \PrefixNetwork|ALT_INV_Pk[2][7]~2_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk~2_combout\,
	combout => \PrefixNetwork|Gpre\(7));

-- Location: LABCELL_X47_Y4_N16
\c[8]\ : arriaii_lcell_comb
-- Equation(s):
-- c(8) = ( \PrefixNetwork|Gpre\(7) & ( !\c~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_c~5_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gpre\(7),
	combout => c(8));

-- Location: LABCELL_X47_Y4_N36
\S~8\ : arriaii_lcell_comb
-- Equation(s):
-- \S~8_combout\ = ( c(8) & ( !\B[8]~input_o\ $ (!\A[8]~input_o\) ) ) # ( !c(8) & ( !\B[8]~input_o\ $ (\A[8]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000110011110011000011001100110011110011000011001111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[8]~input_o\,
	datad => \ALT_INV_A[8]~input_o\,
	dataf => ALT_INV_c(8),
	combout => \S~8_combout\);

-- Location: IOIBUF_X50_Y0_N94
\B[9]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(9),
	o => \B[9]~input_o\);

-- Location: IOIBUF_X50_Y0_N1
\A[9]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

-- Location: MLABCELL_X49_Y4_N16
\PrefixNetwork|Gk~13\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~13_combout\ = ( \B[7]~input_o\ & ( (!\A[7]~input_o\ & (!\A[8]~input_o\ $ (!\B[8]~input_o\))) ) ) # ( !\B[7]~input_o\ & ( (\A[7]~input_o\ & (!\A[8]~input_o\ $ (!\B[8]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001011010000000000101101001011010000000000101101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[8]~input_o\,
	datac => \ALT_INV_B[8]~input_o\,
	datad => \ALT_INV_A[7]~input_o\,
	dataf => \ALT_INV_B[7]~input_o\,
	combout => \PrefixNetwork|Gk~13_combout\);

-- Location: MLABCELL_X49_Y4_N12
\PrefixNetwork|Pk[2][8]~3\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[2][8]~3_combout\ = ( \PrefixNetwork|Gk~7_combout\ & ( \PrefixNetwork|Gk~13_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|ALT_INV_Gk~13_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk~7_combout\,
	combout => \PrefixNetwork|Pk[2][8]~3_combout\);

-- Location: MLABCELL_X49_Y4_N26
\PrefixNetwork|Gk[1][8]~14\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][8]~14_combout\ = ( \B[7]~input_o\ & ( (!\A[8]~input_o\ & (\A[7]~input_o\ & \B[8]~input_o\)) # (\A[8]~input_o\ & ((\B[8]~input_o\) # (\A[7]~input_o\))) ) ) # ( !\B[7]~input_o\ & ( (\A[8]~input_o\ & \B[8]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100000101010111110000010101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[8]~input_o\,
	datac => \ALT_INV_A[7]~input_o\,
	datad => \ALT_INV_B[8]~input_o\,
	dataf => \ALT_INV_B[7]~input_o\,
	combout => \PrefixNetwork|Gk[1][8]~14_combout\);

-- Location: LABCELL_X53_Y4_N12
\PrefixNetwork|Gk[1][6]~8\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][6]~8_combout\ = ( \A[6]~input_o\ & ( \B[6]~input_o\ ) ) # ( !\A[6]~input_o\ & ( \B[6]~input_o\ & ( (\B[5]~input_o\ & \A[5]~input_o\) ) ) ) # ( \A[6]~input_o\ & ( !\B[6]~input_o\ & ( (\B[5]~input_o\ & \A[5]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[5]~input_o\,
	datad => \ALT_INV_A[5]~input_o\,
	datae => \ALT_INV_A[6]~input_o\,
	dataf => \ALT_INV_B[6]~input_o\,
	combout => \PrefixNetwork|Gk[1][6]~8_combout\);

-- Location: MLABCELL_X49_Y4_N18
\PrefixNetwork|Gk~15\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~15_combout\ = ( \PrefixNetwork|Gk[1][6]~8_combout\ & ( \PrefixNetwork|Gk~13_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|ALT_INV_Gk~13_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk[1][6]~8_combout\,
	combout => \PrefixNetwork|Gk~15_combout\);

-- Location: MLABCELL_X49_Y4_N6
\PrefixNetwork|Gk[3][8]\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][8]~combout\ = ( !\PrefixNetwork|Gk~15_combout\ & ( \PrefixNetwork|Pk[2][8]~3_combout\ & ( (!\PrefixNetwork|Gk[1][4]~3_combout\ & (!\PrefixNetwork|Gk[1][8]~14_combout\ & ((!\PrefixNetwork|Gk~4_combout\) # 
-- (!\PrefixNetwork|Gk[1][2]~0_combout\)))) ) ) ) # ( !\PrefixNetwork|Gk~15_combout\ & ( !\PrefixNetwork|Pk[2][8]~3_combout\ & ( !\PrefixNetwork|Gk[1][8]~14_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100000000000000000010001000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|ALT_INV_Gk[1][4]~3_combout\,
	datab => \PrefixNetwork|ALT_INV_Gk[1][8]~14_combout\,
	datac => \PrefixNetwork|ALT_INV_Gk~4_combout\,
	datad => \PrefixNetwork|ALT_INV_Gk[1][2]~0_combout\,
	datae => \PrefixNetwork|ALT_INV_Gk~15_combout\,
	dataf => \PrefixNetwork|ALT_INV_Pk[2][8]~3_combout\,
	combout => \PrefixNetwork|Gk[3][8]~combout\);

-- Location: MLABCELL_X49_Y4_N14
\c[9]~6\ : arriaii_lcell_comb
-- Equation(s):
-- \c[9]~6_combout\ = ( \PrefixNetwork|Gk[3][8]~combout\ & ( (!\PrefixNetwork|Gk~4_combout\) # ((!\PrefixNetwork|Pk[2][8]~3_combout\) # (!\c[11]~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111001111111111111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PrefixNetwork|ALT_INV_Gk~4_combout\,
	datac => \PrefixNetwork|ALT_INV_Pk[2][8]~3_combout\,
	datad => \ALT_INV_c[11]~0_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk[3][8]~combout\,
	combout => \c[9]~6_combout\);

-- Location: MLABCELL_X49_Y4_N2
\S~9\ : arriaii_lcell_comb
-- Equation(s):
-- \S~9_combout\ = ( \c[9]~6_combout\ & ( !\B[9]~input_o\ $ (!\A[9]~input_o\) ) ) # ( !\c[9]~6_combout\ & ( !\B[9]~input_o\ $ (\A[9]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000001111111100000000111100001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[9]~input_o\,
	datad => \ALT_INV_A[9]~input_o\,
	dataf => \ALT_INV_c[9]~6_combout\,
	combout => \S~9_combout\);

-- Location: IOIBUF_X59_Y6_N32
\B[10]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(10),
	o => \B[10]~input_o\);

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

-- Location: LABCELL_X47_Y4_N18
\PrefixNetwork|Gk~16\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~16_combout\ = ( \A[9]~input_o\ & ( (!\B[9]~input_o\ & (!\A[8]~input_o\ $ (!\B[8]~input_o\))) ) ) # ( !\A[9]~input_o\ & ( (\B[9]~input_o\ & (!\A[8]~input_o\ $ (!\B[8]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000111100000000000011110000111100000000000011110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[8]~input_o\,
	datac => \ALT_INV_B[8]~input_o\,
	datad => \ALT_INV_B[9]~input_o\,
	dataf => \ALT_INV_A[9]~input_o\,
	combout => \PrefixNetwork|Gk~16_combout\);

-- Location: MLABCELL_X52_Y4_N22
\PrefixNetwork|Pk[2][9]~4\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[2][9]~4_combout\ = ( \PrefixNetwork|Gk~16_combout\ & ( \PrefixNetwork|Gk~10_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|ALT_INV_Gk~10_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk~16_combout\,
	combout => \PrefixNetwork|Pk[2][9]~4_combout\);

-- Location: LABCELL_X43_Y4_N34
\PrefixNetwork|Gk~18\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~18_combout\ = ( \PrefixNetwork|Gk[1][7]~11_combout\ & ( \PrefixNetwork|Gk~16_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|ALT_INV_Gk~16_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk[1][7]~11_combout\,
	combout => \PrefixNetwork|Gk~18_combout\);

-- Location: MLABCELL_X49_Y4_N38
\PrefixNetwork|Gk[1][9]~17\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][9]~17_combout\ = ( \A[9]~input_o\ & ( ((\A[8]~input_o\ & \B[8]~input_o\)) # (\B[9]~input_o\) ) ) # ( !\A[9]~input_o\ & ( (\A[8]~input_o\ & (\B[9]~input_o\ & \B[8]~input_o\)) ) )

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
	combout => \PrefixNetwork|Gk[1][9]~17_combout\);

-- Location: LABCELL_X43_Y4_N6
\PrefixNetwork|Gk[3][9]\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][9]~combout\ = ( !\PrefixNetwork|Gk~6_combout\ & ( \PrefixNetwork|Pk[2][9]~4_combout\ & ( (!\PrefixNetwork|Gk[1][5]~5_combout\ & (!\PrefixNetwork|Gk~18_combout\ & !\PrefixNetwork|Gk[1][9]~17_combout\)) ) ) ) # ( 
-- \PrefixNetwork|Gk~6_combout\ & ( !\PrefixNetwork|Pk[2][9]~4_combout\ & ( (!\PrefixNetwork|Gk~18_combout\ & !\PrefixNetwork|Gk[1][9]~17_combout\) ) ) ) # ( !\PrefixNetwork|Gk~6_combout\ & ( !\PrefixNetwork|Pk[2][9]~4_combout\ & ( 
-- (!\PrefixNetwork|Gk~18_combout\ & !\PrefixNetwork|Gk[1][9]~17_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000010100000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|ALT_INV_Gk[1][5]~5_combout\,
	datac => \PrefixNetwork|ALT_INV_Gk~18_combout\,
	datad => \PrefixNetwork|ALT_INV_Gk[1][9]~17_combout\,
	datae => \PrefixNetwork|ALT_INV_Gk~6_combout\,
	dataf => \PrefixNetwork|ALT_INV_Pk[2][9]~4_combout\,
	combout => \PrefixNetwork|Gk[3][9]~combout\);

-- Location: LABCELL_X43_Y4_N26
\c[10]~7\ : arriaii_lcell_comb
-- Equation(s):
-- \c[10]~7_combout\ = ( \PrefixNetwork|Gk[3][9]~combout\ & ( (!\PrefixNetwork|Pk[2][9]~4_combout\) # (!\c[6]~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111100001111111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|ALT_INV_Pk[2][9]~4_combout\,
	datad => \ALT_INV_c[6]~3_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk[3][9]~combout\,
	combout => \c[10]~7_combout\);

-- Location: LABCELL_X43_Y4_N20
\S~10\ : arriaii_lcell_comb
-- Equation(s):
-- \S~10_combout\ = ( \c[10]~7_combout\ & ( !\B[10]~input_o\ $ (!\A[10]~input_o\) ) ) # ( !\c[10]~7_combout\ & ( !\B[10]~input_o\ $ (\A[10]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000001111111100000000111100001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[10]~input_o\,
	datad => \ALT_INV_A[10]~input_o\,
	dataf => \ALT_INV_c[10]~7_combout\,
	combout => \S~10_combout\);

-- Location: IOIBUF_X47_Y0_N63
\A[11]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(11),
	o => \A[11]~input_o\);

-- Location: LABCELL_X50_Y4_N8
\PrefixNetwork|Gk[1][10]~19\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][10]~19_combout\ = ( \A[10]~input_o\ & ( ((\B[9]~input_o\ & \A[9]~input_o\)) # (\B[10]~input_o\) ) ) # ( !\A[10]~input_o\ & ( (\B[9]~input_o\ & (\B[10]~input_o\ & \A[9]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100001111001111110000111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[9]~input_o\,
	datac => \ALT_INV_B[10]~input_o\,
	datad => \ALT_INV_A[9]~input_o\,
	dataf => \ALT_INV_A[10]~input_o\,
	combout => \PrefixNetwork|Gk[1][10]~19_combout\);

-- Location: MLABCELL_X54_Y4_N8
\PrefixNetwork|Gk~20\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~20_combout\ = ( \A[10]~input_o\ & ( (!\B[10]~input_o\ & (!\B[9]~input_o\ $ (!\A[9]~input_o\))) ) ) # ( !\A[10]~input_o\ & ( (\B[10]~input_o\ & (!\B[9]~input_o\ $ (!\A[9]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101010000000001010101000000001010101000000000101010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[10]~input_o\,
	datac => \ALT_INV_B[9]~input_o\,
	datad => \ALT_INV_A[9]~input_o\,
	dataf => \ALT_INV_A[10]~input_o\,
	combout => \PrefixNetwork|Gk~20_combout\);

-- Location: MLABCELL_X54_Y4_N16
\PrefixNetwork|Gk~21\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~21_combout\ = ( \PrefixNetwork|Gk~20_combout\ & ( \PrefixNetwork|Gk[1][8]~14_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PrefixNetwork|ALT_INV_Gk[1][8]~14_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk~20_combout\,
	combout => \PrefixNetwork|Gk~21_combout\);

-- Location: MLABCELL_X54_Y4_N38
\PrefixNetwork|Pk[2][10]~5\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[2][10]~5_combout\ = ( \PrefixNetwork|Gk~20_combout\ & ( \PrefixNetwork|Gk~13_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|ALT_INV_Gk~13_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk~20_combout\,
	combout => \PrefixNetwork|Pk[2][10]~5_combout\);

-- Location: LABCELL_X53_Y4_N38
\PrefixNetwork|Gk[3][10]\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][10]~combout\ = ( \PrefixNetwork|Pk[2][10]~5_combout\ & ( (!\PrefixNetwork|Gk[1][6]~8_combout\ & (!\PrefixNetwork|Gk[1][10]~19_combout\ & (!\PrefixNetwork|Gk~9_combout\ & !\PrefixNetwork|Gk~21_combout\))) ) ) # ( 
-- !\PrefixNetwork|Pk[2][10]~5_combout\ & ( (!\PrefixNetwork|Gk[1][10]~19_combout\ & !\PrefixNetwork|Gk~21_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000000000110011000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|ALT_INV_Gk[1][6]~8_combout\,
	datab => \PrefixNetwork|ALT_INV_Gk[1][10]~19_combout\,
	datac => \PrefixNetwork|ALT_INV_Gk~9_combout\,
	datad => \PrefixNetwork|ALT_INV_Gk~21_combout\,
	dataf => \PrefixNetwork|ALT_INV_Pk[2][10]~5_combout\,
	combout => \PrefixNetwork|Gk[3][10]~combout\);

-- Location: IOIBUF_X59_Y9_N32
\B[11]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(11),
	o => \B[11]~input_o\);

-- Location: LABCELL_X53_Y4_N2
\c[19]~8\ : arriaii_lcell_comb
-- Equation(s):
-- \c[19]~8_combout\ = ( \PrefixNetwork|Pk[2][10]~5_combout\ & ( (\PrefixNetwork|Pk[2][6]~1_combout\ & ((\c[11]~0_combout\) # (\PrefixNetwork|Gk[1][2]~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101000011110000010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|ALT_INV_Gk[1][2]~0_combout\,
	datac => \PrefixNetwork|ALT_INV_Pk[2][6]~1_combout\,
	datad => \ALT_INV_c[11]~0_combout\,
	dataf => \PrefixNetwork|ALT_INV_Pk[2][10]~5_combout\,
	combout => \c[19]~8_combout\);

-- Location: LABCELL_X53_Y4_N4
\S~11\ : arriaii_lcell_comb
-- Equation(s):
-- \S~11_combout\ = ( \c[19]~8_combout\ & ( !\A[11]~input_o\ $ (\B[11]~input_o\) ) ) # ( !\c[19]~8_combout\ & ( !\A[11]~input_o\ $ (!\PrefixNetwork|Gk[3][10]~combout\ $ (!\B[11]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010010101011010101001010101101010101010010101011010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[11]~input_o\,
	datac => \PrefixNetwork|ALT_INV_Gk[3][10]~combout\,
	datad => \ALT_INV_B[11]~input_o\,
	dataf => \ALT_INV_c[19]~8_combout\,
	combout => \S~11_combout\);

-- Location: IOIBUF_X54_Y0_N63
\A[12]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(12),
	o => \A[12]~input_o\);

-- Location: IOIBUF_X59_Y6_N94
\B[12]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(12),
	o => \B[12]~input_o\);

-- Location: LABCELL_X43_Y4_N24
\PrefixNetwork|Gk[1][11]~23\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][11]~23_combout\ = ( \B[11]~input_o\ & ( ((\B[10]~input_o\ & \A[10]~input_o\)) # (\A[11]~input_o\) ) ) # ( !\B[11]~input_o\ & ( (\A[11]~input_o\ & (\B[10]~input_o\ & \A[10]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010101010101010111110101010101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[11]~input_o\,
	datac => \ALT_INV_B[10]~input_o\,
	datad => \ALT_INV_A[10]~input_o\,
	dataf => \ALT_INV_B[11]~input_o\,
	combout => \PrefixNetwork|Gk[1][11]~23_combout\);

-- Location: MLABCELL_X46_Y4_N8
\PrefixNetwork|Gk~22\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~22_combout\ = ( \B[10]~input_o\ & ( (!\A[10]~input_o\ & (!\A[11]~input_o\ $ (!\B[11]~input_o\))) ) ) # ( !\B[10]~input_o\ & ( (\A[10]~input_o\ & (!\A[11]~input_o\ $ (!\B[11]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100001100000000110000110000110000110000000011000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[11]~input_o\,
	datac => \ALT_INV_A[10]~input_o\,
	datad => \ALT_INV_B[11]~input_o\,
	dataf => \ALT_INV_B[10]~input_o\,
	combout => \PrefixNetwork|Gk~22_combout\);

-- Location: LABCELL_X47_Y4_N8
\PrefixNetwork|Pk[2][11]~6\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[2][11]~6_combout\ = ( \PrefixNetwork|Gk~22_combout\ & ( \PrefixNetwork|Gk~16_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|ALT_INV_Gk~16_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk~22_combout\,
	combout => \PrefixNetwork|Pk[2][11]~6_combout\);

-- Location: MLABCELL_X46_Y4_N30
\PrefixNetwork|Gk~24\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~24_combout\ = ( \PrefixNetwork|Gk~22_combout\ & ( \PrefixNetwork|Gk[1][9]~17_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|ALT_INV_Gk[1][9]~17_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk~22_combout\,
	combout => \PrefixNetwork|Gk~24_combout\);

-- Location: LABCELL_X47_Y4_N34
\PrefixNetwork|Gk[3][11]\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][11]~combout\ = ( !\PrefixNetwork|Gk~24_combout\ & ( (!\PrefixNetwork|Gk[1][11]~23_combout\ & ((!\PrefixNetwork|Pk[2][11]~6_combout\) # ((!\PrefixNetwork|Gk[1][7]~11_combout\ & !\PrefixNetwork|Gk~12_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110010000000110011001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|ALT_INV_Gk[1][7]~11_combout\,
	datab => \PrefixNetwork|ALT_INV_Gk[1][11]~23_combout\,
	datac => \PrefixNetwork|ALT_INV_Gk~12_combout\,
	datad => \PrefixNetwork|ALT_INV_Pk[2][11]~6_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk~24_combout\,
	combout => \PrefixNetwork|Gk[3][11]~combout\);

-- Location: LABCELL_X47_Y4_N2
\c[12]~9\ : arriaii_lcell_comb
-- Equation(s):
-- \c[12]~9_combout\ = ( \c[12]~2_combout\ & ( \PrefixNetwork|Gk[3][11]~combout\ ) ) # ( !\c[12]~2_combout\ & ( (\PrefixNetwork|Gk[3][11]~combout\ & ((!\PrefixNetwork|Pk[2][7]~2_combout\) # (!\PrefixNetwork|Pk[2][11]~6_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001100000011110000110000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PrefixNetwork|ALT_INV_Pk[2][7]~2_combout\,
	datac => \PrefixNetwork|ALT_INV_Gk[3][11]~combout\,
	datad => \PrefixNetwork|ALT_INV_Pk[2][11]~6_combout\,
	dataf => \ALT_INV_c[12]~2_combout\,
	combout => \c[12]~9_combout\);

-- Location: LABCELL_X47_Y4_N28
\S~12\ : arriaii_lcell_comb
-- Equation(s):
-- \S~12_combout\ = ( \c[12]~9_combout\ & ( !\A[12]~input_o\ $ (!\B[12]~input_o\) ) ) # ( !\c[12]~9_combout\ & ( !\A[12]~input_o\ $ (\B[12]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000001111111100000000111100001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[12]~input_o\,
	datad => \ALT_INV_B[12]~input_o\,
	dataf => \ALT_INV_c[12]~9_combout\,
	combout => \S~12_combout\);

-- Location: IOIBUF_X54_Y0_N1
\B[13]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(13),
	o => \B[13]~input_o\);

-- Location: IOIBUF_X54_Y0_N32
\A[13]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(13),
	o => \A[13]~input_o\);

-- Location: LABCELL_X53_Y4_N8
\PrefixNetwork|Gk~25\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~25_combout\ = ( \A[11]~input_o\ & ( (!\B[11]~input_o\ & (!\A[12]~input_o\ $ (!\B[12]~input_o\))) ) ) # ( !\A[11]~input_o\ & ( (\B[11]~input_o\ & (!\A[12]~input_o\ $ (!\B[12]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100001010000001010000101001010000101000000101000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[12]~input_o\,
	datac => \ALT_INV_B[11]~input_o\,
	datad => \ALT_INV_B[12]~input_o\,
	dataf => \ALT_INV_A[11]~input_o\,
	combout => \PrefixNetwork|Gk~25_combout\);

-- Location: LABCELL_X53_Y4_N6
\PrefixNetwork|Pk[2][12]~7\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[2][12]~7_combout\ = ( \PrefixNetwork|Gk~20_combout\ & ( \PrefixNetwork|Gk~25_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PrefixNetwork|ALT_INV_Gk~25_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk~20_combout\,
	combout => \PrefixNetwork|Pk[2][12]~7_combout\);

-- Location: LABCELL_X53_Y4_N24
\PrefixNetwork|Gk[1][12]~26\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][12]~26_combout\ = ( \A[12]~input_o\ & ( ((\A[11]~input_o\ & \B[11]~input_o\)) # (\B[12]~input_o\) ) ) # ( !\A[12]~input_o\ & ( (\A[11]~input_o\ & (\B[11]~input_o\ & \B[12]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100000101111111110000010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[11]~input_o\,
	datac => \ALT_INV_B[11]~input_o\,
	datad => \ALT_INV_B[12]~input_o\,
	dataf => \ALT_INV_A[12]~input_o\,
	combout => \PrefixNetwork|Gk[1][12]~26_combout\);

-- Location: MLABCELL_X49_Y4_N8
\PrefixNetwork|Gk~27\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~27_combout\ = ( \PrefixNetwork|Gk[1][10]~19_combout\ & ( \PrefixNetwork|Gk~25_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|ALT_INV_Gk~25_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk[1][10]~19_combout\,
	combout => \PrefixNetwork|Gk~27_combout\);

-- Location: MLABCELL_X57_Y4_N12
\PrefixNetwork|Gk[3][12]\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][12]~combout\ = ( !\PrefixNetwork|Gk~27_combout\ & ( \PrefixNetwork|Gk~15_combout\ & ( (!\PrefixNetwork|Gk[1][12]~26_combout\ & !\PrefixNetwork|Pk[2][12]~7_combout\) ) ) ) # ( !\PrefixNetwork|Gk~27_combout\ & ( 
-- !\PrefixNetwork|Gk~15_combout\ & ( (!\PrefixNetwork|Gk[1][12]~26_combout\ & ((!\PrefixNetwork|Pk[2][12]~7_combout\) # (!\PrefixNetwork|Gk[1][8]~14_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011000000000000000000000011000000110000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PrefixNetwork|ALT_INV_Gk[1][12]~26_combout\,
	datac => \PrefixNetwork|ALT_INV_Pk[2][12]~7_combout\,
	datad => \PrefixNetwork|ALT_INV_Gk[1][8]~14_combout\,
	datae => \PrefixNetwork|ALT_INV_Gk~27_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk~15_combout\,
	combout => \PrefixNetwork|Gk[3][12]~combout\);

-- Location: MLABCELL_X57_Y4_N16
\c[21]~10\ : arriaii_lcell_comb
-- Equation(s):
-- \c[21]~10_combout\ = ( \PrefixNetwork|Gk[1][2]~0_combout\ & ( \PrefixNetwork|Pk[2][8]~3_combout\ & ( (\PrefixNetwork|Gk[1][4]~3_combout\) # (\PrefixNetwork|Gk~4_combout\) ) ) ) # ( !\PrefixNetwork|Gk[1][2]~0_combout\ & ( \PrefixNetwork|Pk[2][8]~3_combout\ 
-- & ( ((\PrefixNetwork|Gk~4_combout\ & \c[11]~0_combout\)) # (\PrefixNetwork|Gk[1][4]~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|ALT_INV_Gk~4_combout\,
	datac => \PrefixNetwork|ALT_INV_Gk[1][4]~3_combout\,
	datad => \ALT_INV_c[11]~0_combout\,
	datae => \PrefixNetwork|ALT_INV_Gk[1][2]~0_combout\,
	dataf => \PrefixNetwork|ALT_INV_Pk[2][8]~3_combout\,
	combout => \c[21]~10_combout\);

-- Location: MLABCELL_X57_Y4_N26
\c[13]~11\ : arriaii_lcell_comb
-- Equation(s):
-- \c[13]~11_combout\ = ( \PrefixNetwork|Gk[3][12]~combout\ & ( \c[21]~10_combout\ & ( !\PrefixNetwork|Pk[2][12]~7_combout\ ) ) ) # ( \PrefixNetwork|Gk[3][12]~combout\ & ( !\c[21]~10_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|ALT_INV_Pk[2][12]~7_combout\,
	datae => \PrefixNetwork|ALT_INV_Gk[3][12]~combout\,
	dataf => \ALT_INV_c[21]~10_combout\,
	combout => \c[13]~11_combout\);

-- Location: LABCELL_X58_Y4_N16
\S~13\ : arriaii_lcell_comb
-- Equation(s):
-- \S~13_combout\ = ( \c[13]~11_combout\ & ( !\B[13]~input_o\ $ (!\A[13]~input_o\) ) ) # ( !\c[13]~11_combout\ & ( !\B[13]~input_o\ $ (\A[13]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000001111111100000000111100001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[13]~input_o\,
	datad => \ALT_INV_A[13]~input_o\,
	dataf => \ALT_INV_c[13]~11_combout\,
	combout => \S~13_combout\);

-- Location: IOIBUF_X59_Y12_N63
\A[14]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(14),
	o => \A[14]~input_o\);

-- Location: IOIBUF_X59_Y10_N94
\B[14]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(14),
	o => \B[14]~input_o\);

-- Location: MLABCELL_X46_Y4_N0
\PrefixNetwork|Gk~28\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~28_combout\ = ( \B[12]~input_o\ & ( (!\A[12]~input_o\ & (!\A[13]~input_o\ $ (!\B[13]~input_o\))) ) ) # ( !\B[12]~input_o\ & ( (\A[12]~input_o\ & (!\A[13]~input_o\ $ (!\B[13]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100001100000000110000110000110000110000000011000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[13]~input_o\,
	datac => \ALT_INV_A[12]~input_o\,
	datad => \ALT_INV_B[13]~input_o\,
	dataf => \ALT_INV_B[12]~input_o\,
	combout => \PrefixNetwork|Gk~28_combout\);

-- Location: LABCELL_X45_Y4_N32
\PrefixNetwork|Pk[2][13]~8\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[2][13]~8_combout\ = ( \PrefixNetwork|Gk~22_combout\ & ( \PrefixNetwork|Gk~28_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|ALT_INV_Gk~28_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk~22_combout\,
	combout => \PrefixNetwork|Pk[2][13]~8_combout\);

-- Location: LABCELL_X50_Y4_N14
\PrefixNetwork|Gk[1][13]~29\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][13]~29_combout\ = ( \B[13]~input_o\ & ( \A[12]~input_o\ & ( (\A[13]~input_o\) # (\B[12]~input_o\) ) ) ) # ( !\B[13]~input_o\ & ( \A[12]~input_o\ & ( (\B[12]~input_o\ & \A[13]~input_o\) ) ) ) # ( \B[13]~input_o\ & ( !\A[12]~input_o\ & 
-- ( \A[13]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000011110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[12]~input_o\,
	datad => \ALT_INV_A[13]~input_o\,
	datae => \ALT_INV_B[13]~input_o\,
	dataf => \ALT_INV_A[12]~input_o\,
	combout => \PrefixNetwork|Gk[1][13]~29_combout\);

-- Location: LABCELL_X43_Y4_N16
\PrefixNetwork|Gk~30\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~30_combout\ = ( \PrefixNetwork|Gk~28_combout\ & ( \PrefixNetwork|Gk[1][11]~23_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|ALT_INV_Gk[1][11]~23_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk~28_combout\,
	combout => \PrefixNetwork|Gk~30_combout\);

-- Location: LABCELL_X43_Y4_N38
\PrefixNetwork|Gk[3][13]\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][13]~combout\ = ( \PrefixNetwork|Pk[2][13]~8_combout\ & ( (!\PrefixNetwork|Gk[1][13]~29_combout\ & (!\PrefixNetwork|Gk[1][9]~17_combout\ & (!\PrefixNetwork|Gk~30_combout\ & !\PrefixNetwork|Gk~18_combout\))) ) ) # ( 
-- !\PrefixNetwork|Pk[2][13]~8_combout\ & ( (!\PrefixNetwork|Gk[1][13]~29_combout\ & !\PrefixNetwork|Gk~30_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000101000001010000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|ALT_INV_Gk[1][13]~29_combout\,
	datab => \PrefixNetwork|ALT_INV_Gk[1][9]~17_combout\,
	datac => \PrefixNetwork|ALT_INV_Gk~30_combout\,
	datad => \PrefixNetwork|ALT_INV_Gk~18_combout\,
	dataf => \PrefixNetwork|ALT_INV_Pk[2][13]~8_combout\,
	combout => \PrefixNetwork|Gk[3][13]~combout\);

-- Location: LABCELL_X43_Y4_N2
\c[14]~12\ : arriaii_lcell_comb
-- Equation(s):
-- \c[14]~12_combout\ = ( \c[6]~3_combout\ & ( \PrefixNetwork|Gk[3][13]~combout\ & ( (!\PrefixNetwork|Pk[2][9]~4_combout\) # (!\PrefixNetwork|Pk[2][13]~8_combout\) ) ) ) # ( !\c[6]~3_combout\ & ( \PrefixNetwork|Gk[3][13]~combout\ & ( 
-- (!\PrefixNetwork|Pk[2][9]~4_combout\) # ((!\PrefixNetwork|Pk[2][13]~8_combout\) # ((!\PrefixNetwork|Gk[1][5]~5_combout\ & !\PrefixNetwork|Gk~6_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111110001111111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|ALT_INV_Gk[1][5]~5_combout\,
	datab => \PrefixNetwork|ALT_INV_Gk~6_combout\,
	datac => \PrefixNetwork|ALT_INV_Pk[2][9]~4_combout\,
	datad => \PrefixNetwork|ALT_INV_Pk[2][13]~8_combout\,
	datae => \ALT_INV_c[6]~3_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk[3][13]~combout\,
	combout => \c[14]~12_combout\);

-- Location: LABCELL_X43_Y4_N36
\S~14\ : arriaii_lcell_comb
-- Equation(s):
-- \S~14_combout\ = ( \c[14]~12_combout\ & ( !\A[14]~input_o\ $ (!\B[14]~input_o\) ) ) # ( !\c[14]~12_combout\ & ( !\A[14]~input_o\ $ (\B[14]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000001111111100000000111100001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[14]~input_o\,
	datad => \ALT_INV_B[14]~input_o\,
	dataf => \ALT_INV_c[14]~12_combout\,
	combout => \S~14_combout\);

-- Location: IOIBUF_X47_Y0_N1
\B[15]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(15),
	o => \B[15]~input_o\);

-- Location: IOIBUF_X47_Y0_N94
\A[15]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(15),
	o => \A[15]~input_o\);

-- Location: LABCELL_X53_Y4_N10
\PrefixNetwork|Gk~31\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~31_combout\ = ( \B[14]~input_o\ & ( (!\A[14]~input_o\ & (!\A[13]~input_o\ $ (!\B[13]~input_o\))) ) ) # ( !\B[14]~input_o\ & ( (\A[14]~input_o\ & (!\A[13]~input_o\ $ (!\B[13]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100001100000000110000110000110000110000000011000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[13]~input_o\,
	datac => \ALT_INV_A[14]~input_o\,
	datad => \ALT_INV_B[13]~input_o\,
	dataf => \ALT_INV_B[14]~input_o\,
	combout => \PrefixNetwork|Gk~31_combout\);

-- Location: LABCELL_X53_Y4_N28
\PrefixNetwork|Pk[2][14]~9\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[2][14]~9_combout\ = ( \PrefixNetwork|Gk~31_combout\ & ( \PrefixNetwork|Gk~25_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PrefixNetwork|ALT_INV_Gk~25_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk~31_combout\,
	combout => \PrefixNetwork|Pk[2][14]~9_combout\);

-- Location: MLABCELL_X54_Y4_N4
\c~13\ : arriaii_lcell_comb
-- Equation(s):
-- \c~13_combout\ = ( \PrefixNetwork|Pk[2][14]~9_combout\ & ( \PrefixNetwork|Pk[2][10]~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|ALT_INV_Pk[2][10]~5_combout\,
	dataf => \PrefixNetwork|ALT_INV_Pk[2][14]~9_combout\,
	combout => \c~13_combout\);

-- Location: LABCELL_X53_Y4_N34
\PrefixNetwork|Gk[1][14]~32\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][14]~32_combout\ = ( \B[14]~input_o\ & ( ((\A[13]~input_o\ & \B[13]~input_o\)) # (\A[14]~input_o\) ) ) # ( !\B[14]~input_o\ & ( (\A[13]~input_o\ & (\A[14]~input_o\ & \B[13]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100001111001111110000111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[13]~input_o\,
	datac => \ALT_INV_A[14]~input_o\,
	datad => \ALT_INV_B[13]~input_o\,
	dataf => \ALT_INV_B[14]~input_o\,
	combout => \PrefixNetwork|Gk[1][14]~32_combout\);

-- Location: LABCELL_X53_Y4_N36
\PrefixNetwork|Gk~33\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~33_combout\ = ( \PrefixNetwork|Gk~31_combout\ & ( \PrefixNetwork|Gk[1][12]~26_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|ALT_INV_Gk[1][12]~26_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk~31_combout\,
	combout => \PrefixNetwork|Gk~33_combout\);

-- Location: MLABCELL_X54_Y4_N36
\PrefixNetwork|Gk[3][14]\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][14]~combout\ = ( \PrefixNetwork|Gk~21_combout\ & ( (!\PrefixNetwork|Gk[1][14]~32_combout\ & (!\PrefixNetwork|Pk[2][14]~9_combout\ & !\PrefixNetwork|Gk~33_combout\)) ) ) # ( !\PrefixNetwork|Gk~21_combout\ & ( 
-- (!\PrefixNetwork|Gk[1][14]~32_combout\ & (!\PrefixNetwork|Gk~33_combout\ & ((!\PrefixNetwork|Gk[1][10]~19_combout\) # (!\PrefixNetwork|Pk[2][14]~9_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100100000000000110010000000000011000000000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|ALT_INV_Gk[1][10]~19_combout\,
	datab => \PrefixNetwork|ALT_INV_Gk[1][14]~32_combout\,
	datac => \PrefixNetwork|ALT_INV_Pk[2][14]~9_combout\,
	datad => \PrefixNetwork|ALT_INV_Gk~33_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk~21_combout\,
	combout => \PrefixNetwork|Gk[3][14]~combout\);

-- Location: MLABCELL_X54_Y4_N34
\S~15\ : arriaii_lcell_comb
-- Equation(s):
-- \S~15_combout\ = ( \PrefixNetwork|Gk[3][14]~combout\ & ( \c~4_combout\ & ( !\B[15]~input_o\ $ (!\A[15]~input_o\ $ (\c~13_combout\)) ) ) ) # ( !\PrefixNetwork|Gk[3][14]~combout\ & ( \c~4_combout\ & ( !\B[15]~input_o\ $ (\A[15]~input_o\) ) ) ) # ( 
-- \PrefixNetwork|Gk[3][14]~combout\ & ( !\c~4_combout\ & ( !\B[15]~input_o\ $ (!\A[15]~input_o\ $ (((\c~13_combout\ & !\PrefixNetwork|Gpre[6]~2_combout\)))) ) ) ) # ( !\PrefixNetwork|Gk[3][14]~combout\ & ( !\c~4_combout\ & ( !\B[15]~input_o\ $ 
-- (\A[15]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100110011001011010010110011010011001100110010110100101101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[15]~input_o\,
	datab => \ALT_INV_A[15]~input_o\,
	datac => \ALT_INV_c~13_combout\,
	datad => \PrefixNetwork|ALT_INV_Gpre[6]~2_combout\,
	datae => \PrefixNetwork|ALT_INV_Gk[3][14]~combout\,
	dataf => \ALT_INV_c~4_combout\,
	combout => \S~15_combout\);

-- Location: IOIBUF_X59_Y12_N1
\A[16]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(16),
	o => \A[16]~input_o\);

-- Location: IOIBUF_X59_Y16_N1
\B[16]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(16),
	o => \B[16]~input_o\);

-- Location: MLABCELL_X46_Y4_N10
\PrefixNetwork|Gk~34\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~34_combout\ = ( \B[14]~input_o\ & ( (!\A[14]~input_o\ & (!\B[15]~input_o\ $ (!\A[15]~input_o\))) ) ) # ( !\B[14]~input_o\ & ( (\A[14]~input_o\ & (!\B[15]~input_o\ $ (!\A[15]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001011010000000000101101001011010000000000101101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[15]~input_o\,
	datac => \ALT_INV_A[15]~input_o\,
	datad => \ALT_INV_A[14]~input_o\,
	dataf => \ALT_INV_B[14]~input_o\,
	combout => \PrefixNetwork|Gk~34_combout\);

-- Location: MLABCELL_X46_Y4_N14
\PrefixNetwork|Pk[2][15]~10\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[2][15]~10_combout\ = ( \PrefixNetwork|Gk~34_combout\ & ( \PrefixNetwork|Gk~28_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PrefixNetwork|ALT_INV_Gk~28_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk~34_combout\,
	combout => \PrefixNetwork|Pk[2][15]~10_combout\);

-- Location: LABCELL_X47_Y4_N38
\c~14\ : arriaii_lcell_comb
-- Equation(s):
-- \c~14_combout\ = ( \PrefixNetwork|Pk[2][15]~10_combout\ & ( \PrefixNetwork|Pk[2][11]~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PrefixNetwork|ALT_INV_Pk[2][11]~6_combout\,
	dataf => \PrefixNetwork|ALT_INV_Pk[2][15]~10_combout\,
	combout => \c~14_combout\);

-- Location: MLABCELL_X46_Y4_N16
\PrefixNetwork|Gk[1][15]~35\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][15]~35_combout\ = ( \B[14]~input_o\ & ( (!\A[15]~input_o\ & (\B[15]~input_o\ & \A[14]~input_o\)) # (\A[15]~input_o\ & ((\A[14]~input_o\) # (\B[15]~input_o\))) ) ) # ( !\B[14]~input_o\ & ( (\A[15]~input_o\ & \B[15]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000011001111110000001100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[15]~input_o\,
	datac => \ALT_INV_B[15]~input_o\,
	datad => \ALT_INV_A[14]~input_o\,
	dataf => \ALT_INV_B[14]~input_o\,
	combout => \PrefixNetwork|Gk[1][15]~35_combout\);

-- Location: MLABCELL_X46_Y4_N20
\PrefixNetwork|Gk~36\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~36_combout\ = ( \PrefixNetwork|Gk~34_combout\ & ( \PrefixNetwork|Gk[1][13]~29_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|ALT_INV_Gk[1][13]~29_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk~34_combout\,
	combout => \PrefixNetwork|Gk~36_combout\);

-- Location: MLABCELL_X46_Y4_N26
\PrefixNetwork|Gk[3][15]\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][15]~combout\ = ( !\PrefixNetwork|Gk~36_combout\ & ( (!\PrefixNetwork|Gk[1][15]~35_combout\ & ((!\PrefixNetwork|Pk[2][15]~10_combout\) # ((!\PrefixNetwork|Gk[1][11]~23_combout\ & !\PrefixNetwork|Gk~24_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100100011000000110010001100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|ALT_INV_Gk[1][11]~23_combout\,
	datab => \PrefixNetwork|ALT_INV_Gk[1][15]~35_combout\,
	datac => \PrefixNetwork|ALT_INV_Pk[2][15]~10_combout\,
	datad => \PrefixNetwork|ALT_INV_Gk~24_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk~36_combout\,
	combout => \PrefixNetwork|Gk[3][15]~combout\);

-- Location: LABCELL_X47_Y4_N20
\S~16\ : arriaii_lcell_comb
-- Equation(s):
-- \S~16_combout\ = ( \c~5_combout\ & ( \PrefixNetwork|Gk[3][15]~combout\ & ( !\A[16]~input_o\ $ (!\B[16]~input_o\ $ (\c~14_combout\)) ) ) ) # ( !\c~5_combout\ & ( \PrefixNetwork|Gk[3][15]~combout\ & ( !\A[16]~input_o\ $ (!\B[16]~input_o\ $ (((\c~14_combout\ 
-- & !\PrefixNetwork|Gpre\(7))))) ) ) ) # ( \c~5_combout\ & ( !\PrefixNetwork|Gk[3][15]~combout\ & ( !\A[16]~input_o\ $ (\B[16]~input_o\) ) ) ) # ( !\c~5_combout\ & ( !\PrefixNetwork|Gk[3][15]~combout\ & ( !\A[16]~input_o\ $ (\B[16]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100110011001100110011001100101101001011001100110100101101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[16]~input_o\,
	datab => \ALT_INV_B[16]~input_o\,
	datac => \ALT_INV_c~14_combout\,
	datad => \PrefixNetwork|ALT_INV_Gpre\(7),
	datae => \ALT_INV_c~5_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk[3][15]~combout\,
	combout => \S~16_combout\);

-- Location: IOIBUF_X59_Y12_N32
\B[17]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(17),
	o => \B[17]~input_o\);

-- Location: LABCELL_X50_Y4_N0
\PrefixNetwork|Gk[1][16]~38\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][16]~38_combout\ = ( \A[16]~input_o\ & ( ((\A[15]~input_o\ & \B[15]~input_o\)) # (\B[16]~input_o\) ) ) # ( !\A[16]~input_o\ & ( (\A[15]~input_o\ & (\B[15]~input_o\ & \B[16]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100000011111111110000001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[15]~input_o\,
	datac => \ALT_INV_B[15]~input_o\,
	datad => \ALT_INV_B[16]~input_o\,
	dataf => \ALT_INV_A[16]~input_o\,
	combout => \PrefixNetwork|Gk[1][16]~38_combout\);

-- Location: LABCELL_X50_Y4_N18
\PrefixNetwork|Gk~37\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~37_combout\ = ( \B[15]~input_o\ & ( (!\A[15]~input_o\ & (!\B[16]~input_o\ $ (!\A[16]~input_o\))) ) ) # ( !\B[15]~input_o\ & ( (\A[15]~input_o\ & (!\B[16]~input_o\ $ (!\A[16]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100110000000000110011000000001100110000000000110011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[15]~input_o\,
	datac => \ALT_INV_B[16]~input_o\,
	datad => \ALT_INV_A[16]~input_o\,
	dataf => \ALT_INV_B[15]~input_o\,
	combout => \PrefixNetwork|Gk~37_combout\);

-- Location: LABCELL_X50_Y4_N38
\PrefixNetwork|Pk[2][16]~11\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[2][16]~11_combout\ = ( \PrefixNetwork|Gk~31_combout\ & ( \PrefixNetwork|Gk~37_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PrefixNetwork|ALT_INV_Gk~37_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk~31_combout\,
	combout => \PrefixNetwork|Pk[2][16]~11_combout\);

-- Location: LABCELL_X50_Y4_N2
\PrefixNetwork|Gk~39\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~39_combout\ = ( \PrefixNetwork|Gk[1][14]~32_combout\ & ( \PrefixNetwork|Gk~37_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PrefixNetwork|ALT_INV_Gk~37_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk[1][14]~32_combout\,
	combout => \PrefixNetwork|Gk~39_combout\);

-- Location: MLABCELL_X49_Y4_N20
\PrefixNetwork|Gk[3][16]\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][16]~combout\ = ( !\PrefixNetwork|Gk~39_combout\ & ( (!\PrefixNetwork|Gk[1][16]~38_combout\ & ((!\PrefixNetwork|Pk[2][16]~11_combout\) # ((!\PrefixNetwork|Gk[1][12]~26_combout\ & !\PrefixNetwork|Gk~27_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100100011000000110010001100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|ALT_INV_Gk[1][12]~26_combout\,
	datab => \PrefixNetwork|ALT_INV_Gk[1][16]~38_combout\,
	datac => \PrefixNetwork|ALT_INV_Pk[2][16]~11_combout\,
	datad => \PrefixNetwork|ALT_INV_Gk~27_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk~39_combout\,
	combout => \PrefixNetwork|Gk[3][16]~combout\);

-- Location: IOIBUF_X54_Y0_N94
\A[17]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(17),
	o => \A[17]~input_o\);

-- Location: MLABCELL_X49_Y4_N22
\S~17\ : arriaii_lcell_comb
-- Equation(s):
-- \S~17_combout\ = ( \PrefixNetwork|Pk[2][16]~11_combout\ & ( \PrefixNetwork|Pk[2][12]~7_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PrefixNetwork|ALT_INV_Pk[2][12]~7_combout\,
	dataf => \PrefixNetwork|ALT_INV_Pk[2][16]~11_combout\,
	combout => \S~17_combout\);

-- Location: MLABCELL_X49_Y4_N10
\S~18\ : arriaii_lcell_comb
-- Equation(s):
-- \S~18_combout\ = ( \S~17_combout\ & ( (!\PrefixNetwork|Gk[3][8]~combout\) # ((\c[11]~0_combout\ & (\PrefixNetwork|Gk~4_combout\ & \PrefixNetwork|Pk[2][8]~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100011111000011110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_c[11]~0_combout\,
	datab => \PrefixNetwork|ALT_INV_Gk~4_combout\,
	datac => \PrefixNetwork|ALT_INV_Gk[3][8]~combout\,
	datad => \PrefixNetwork|ALT_INV_Pk[2][8]~3_combout\,
	dataf => \ALT_INV_S~17_combout\,
	combout => \S~18_combout\);

-- Location: MLABCELL_X49_Y4_N24
\S~19\ : arriaii_lcell_comb
-- Equation(s):
-- \S~19_combout\ = ( \S~18_combout\ & ( !\B[17]~input_o\ $ (\A[17]~input_o\) ) ) # ( !\S~18_combout\ & ( !\B[17]~input_o\ $ (!\PrefixNetwork|Gk[3][16]~combout\ $ (!\A[17]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001100111100110000110011110011001100001100111100110000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[17]~input_o\,
	datac => \PrefixNetwork|ALT_INV_Gk[3][16]~combout\,
	datad => \ALT_INV_A[17]~input_o\,
	dataf => \ALT_INV_S~18_combout\,
	combout => \S~19_combout\);

-- Location: IOIBUF_X47_Y0_N32
\B[18]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(18),
	o => \B[18]~input_o\);

-- Location: IOIBUF_X39_Y0_N63
\A[18]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(18),
	o => \A[18]~input_o\);

-- Location: LABCELL_X47_Y4_N0
\PrefixNetwork|Gk~40\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~40_combout\ = ( \A[16]~input_o\ & ( (!\B[16]~input_o\ & (!\B[17]~input_o\ $ (!\A[17]~input_o\))) ) ) # ( !\A[16]~input_o\ & ( (\B[16]~input_o\ & (!\B[17]~input_o\ $ (!\A[17]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101010000000001010101000000001010101000000000101010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[16]~input_o\,
	datac => \ALT_INV_B[17]~input_o\,
	datad => \ALT_INV_A[17]~input_o\,
	dataf => \ALT_INV_A[16]~input_o\,
	combout => \PrefixNetwork|Gk~40_combout\);

-- Location: MLABCELL_X44_Y4_N30
\PrefixNetwork|Pk[2][17]~12\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[2][17]~12_combout\ = ( \PrefixNetwork|Gk~40_combout\ & ( \PrefixNetwork|Gk~34_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \PrefixNetwork|ALT_INV_Gk~40_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk~34_combout\,
	combout => \PrefixNetwork|Pk[2][17]~12_combout\);

-- Location: LABCELL_X43_Y4_N18
\S~20\ : arriaii_lcell_comb
-- Equation(s):
-- \S~20_combout\ = ( \PrefixNetwork|Gk[3][9]~combout\ & ( (\PrefixNetwork|Pk[2][13]~8_combout\ & (\PrefixNetwork|Pk[2][9]~4_combout\ & (\PrefixNetwork|Pk[2][17]~12_combout\ & \c[6]~3_combout\))) ) ) # ( !\PrefixNetwork|Gk[3][9]~combout\ & ( 
-- (\PrefixNetwork|Pk[2][13]~8_combout\ & \PrefixNetwork|Pk[2][17]~12_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|ALT_INV_Pk[2][13]~8_combout\,
	datab => \PrefixNetwork|ALT_INV_Pk[2][9]~4_combout\,
	datac => \PrefixNetwork|ALT_INV_Pk[2][17]~12_combout\,
	datad => \ALT_INV_c[6]~3_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk[3][9]~combout\,
	combout => \S~20_combout\);

-- Location: LABCELL_X50_Y4_N16
\PrefixNetwork|Gk[1][17]~41\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][17]~41_combout\ = ( \B[16]~input_o\ & ( (!\A[17]~input_o\ & (\B[17]~input_o\ & \A[16]~input_o\)) # (\A[17]~input_o\ & ((\A[16]~input_o\) # (\B[17]~input_o\))) ) ) # ( !\B[16]~input_o\ & ( (\A[17]~input_o\ & \B[17]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101010111110000010101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[17]~input_o\,
	datac => \ALT_INV_B[17]~input_o\,
	datad => \ALT_INV_A[16]~input_o\,
	dataf => \ALT_INV_B[16]~input_o\,
	combout => \PrefixNetwork|Gk[1][17]~41_combout\);

-- Location: MLABCELL_X44_Y4_N0
\PrefixNetwork|Gk~42\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~42_combout\ = ( \PrefixNetwork|Gk[1][15]~35_combout\ & ( \PrefixNetwork|Gk~40_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|ALT_INV_Gk~40_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk[1][15]~35_combout\,
	combout => \PrefixNetwork|Gk~42_combout\);

-- Location: LABCELL_X43_Y4_N14
\PrefixNetwork|Gk[3][17]\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][17]~combout\ = ( \PrefixNetwork|Pk[2][17]~12_combout\ & ( !\PrefixNetwork|Gk~42_combout\ & ( (!\PrefixNetwork|Gk[1][13]~29_combout\ & (!\PrefixNetwork|Gk~30_combout\ & !\PrefixNetwork|Gk[1][17]~41_combout\)) ) ) ) # ( 
-- !\PrefixNetwork|Pk[2][17]~12_combout\ & ( !\PrefixNetwork|Gk~42_combout\ & ( !\PrefixNetwork|Gk[1][17]~41_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000101000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|ALT_INV_Gk[1][13]~29_combout\,
	datac => \PrefixNetwork|ALT_INV_Gk~30_combout\,
	datad => \PrefixNetwork|ALT_INV_Gk[1][17]~41_combout\,
	datae => \PrefixNetwork|ALT_INV_Pk[2][17]~12_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk~42_combout\,
	combout => \PrefixNetwork|Gk[3][17]~combout\);

-- Location: LABCELL_X43_Y4_N10
\S~21\ : arriaii_lcell_comb
-- Equation(s):
-- \S~21_combout\ = ( \S~20_combout\ & ( \PrefixNetwork|Gk[3][17]~combout\ & ( !\B[18]~input_o\ $ (\A[18]~input_o\) ) ) ) # ( !\S~20_combout\ & ( \PrefixNetwork|Gk[3][17]~combout\ & ( !\B[18]~input_o\ $ (!\A[18]~input_o\) ) ) ) # ( \S~20_combout\ & ( 
-- !\PrefixNetwork|Gk[3][17]~combout\ & ( !\B[18]~input_o\ $ (\A[18]~input_o\) ) ) ) # ( !\S~20_combout\ & ( !\PrefixNetwork|Gk[3][17]~combout\ & ( !\B[18]~input_o\ $ (\A[18]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000001111111100000000111100001111111100001111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[18]~input_o\,
	datad => \ALT_INV_A[18]~input_o\,
	datae => \ALT_INV_S~20_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk[3][17]~combout\,
	combout => \S~21_combout\);

-- Location: IOIBUF_X35_Y0_N1
\B[19]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(19),
	o => \B[19]~input_o\);

-- Location: IOIBUF_X39_Y0_N32
\A[19]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(19),
	o => \A[19]~input_o\);

-- Location: LABCELL_X50_Y4_N36
\PrefixNetwork|Pk[2][18]~13\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[2][18]~13_combout\ = ( \A[18]~input_o\ & ( (!\B[18]~input_o\ & (\PrefixNetwork|Gk~37_combout\ & (!\A[17]~input_o\ $ (!\B[17]~input_o\)))) ) ) # ( !\A[18]~input_o\ & ( (\B[18]~input_o\ & (\PrefixNetwork|Gk~37_combout\ & (!\A[17]~input_o\ 
-- $ (!\B[17]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010010000000000001001000000000010010000000000001001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[17]~input_o\,
	datab => \ALT_INV_B[18]~input_o\,
	datac => \ALT_INV_B[17]~input_o\,
	datad => \PrefixNetwork|ALT_INV_Gk~37_combout\,
	dataf => \ALT_INV_A[18]~input_o\,
	combout => \PrefixNetwork|Pk[2][18]~13_combout\);

-- Location: LABCELL_X53_Y4_N0
\c[19]~15\ : arriaii_lcell_comb
-- Equation(s):
-- \c[19]~15_combout\ = ( \PrefixNetwork|Pk[2][18]~13_combout\ & ( \PrefixNetwork|Pk[2][14]~9_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|ALT_INV_Pk[2][14]~9_combout\,
	dataf => \PrefixNetwork|ALT_INV_Pk[2][18]~13_combout\,
	combout => \c[19]~15_combout\);

-- Location: LABCELL_X50_Y4_N6
\PrefixNetwork|Gk[1][18]~43\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][18]~43_combout\ = ( \A[18]~input_o\ & ( ((\B[17]~input_o\ & \A[17]~input_o\)) # (\B[18]~input_o\) ) ) # ( !\A[18]~input_o\ & ( (\B[18]~input_o\ & (\B[17]~input_o\ & \A[17]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100110011001111110011001100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[18]~input_o\,
	datac => \ALT_INV_B[17]~input_o\,
	datad => \ALT_INV_A[17]~input_o\,
	dataf => \ALT_INV_A[18]~input_o\,
	combout => \PrefixNetwork|Gk[1][18]~43_combout\);

-- Location: LABCELL_X50_Y4_N34
\PrefixNetwork|Gk~44\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~44_combout\ = ( \PrefixNetwork|Gk[1][16]~38_combout\ & ( \A[18]~input_o\ & ( (!\B[18]~input_o\ & (!\A[17]~input_o\ $ (!\B[17]~input_o\))) ) ) ) # ( \PrefixNetwork|Gk[1][16]~38_combout\ & ( !\A[18]~input_o\ & ( (\B[18]~input_o\ & 
-- (!\A[17]~input_o\ $ (!\B[17]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010000101000000000000000000101000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[17]~input_o\,
	datac => \ALT_INV_B[18]~input_o\,
	datad => \ALT_INV_B[17]~input_o\,
	datae => \PrefixNetwork|ALT_INV_Gk[1][16]~38_combout\,
	dataf => \ALT_INV_A[18]~input_o\,
	combout => \PrefixNetwork|Gk~44_combout\);

-- Location: LABCELL_X53_Y4_N30
\PrefixNetwork|Gk[3][18]\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][18]~combout\ = ( !\PrefixNetwork|Gk~44_combout\ & ( (!\PrefixNetwork|Gk[1][18]~43_combout\ & ((!\PrefixNetwork|Pk[2][18]~13_combout\) # ((!\PrefixNetwork|Gk[1][14]~32_combout\ & !\PrefixNetwork|Gk~33_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010100010100000101010001010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|ALT_INV_Gk[1][18]~43_combout\,
	datab => \PrefixNetwork|ALT_INV_Gk[1][14]~32_combout\,
	datac => \PrefixNetwork|ALT_INV_Pk[2][18]~13_combout\,
	datad => \PrefixNetwork|ALT_INV_Gk~33_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk~44_combout\,
	combout => \PrefixNetwork|Gk[3][18]~combout\);

-- Location: LABCELL_X53_Y4_N20
\S~22\ : arriaii_lcell_comb
-- Equation(s):
-- \S~22_combout\ = ( \PrefixNetwork|Gk[3][10]~combout\ & ( \c[19]~8_combout\ & ( !\B[19]~input_o\ $ (!\A[19]~input_o\ $ (((!\PrefixNetwork|Gk[3][18]~combout\) # (\c[19]~15_combout\)))) ) ) ) # ( !\PrefixNetwork|Gk[3][10]~combout\ & ( \c[19]~8_combout\ & ( 
-- !\B[19]~input_o\ $ (!\A[19]~input_o\ $ (((!\PrefixNetwork|Gk[3][18]~combout\) # (\c[19]~15_combout\)))) ) ) ) # ( \PrefixNetwork|Gk[3][10]~combout\ & ( !\c[19]~8_combout\ & ( !\B[19]~input_o\ $ (!\A[19]~input_o\ $ (!\PrefixNetwork|Gk[3][18]~combout\)) ) ) 
-- ) # ( !\PrefixNetwork|Gk[3][10]~combout\ & ( !\c[19]~8_combout\ & ( !\B[19]~input_o\ $ (!\A[19]~input_o\ $ (((!\PrefixNetwork|Gk[3][18]~combout\) # (\c[19]~15_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100101101001100110010110011010011001011010011001100101101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[19]~input_o\,
	datab => \ALT_INV_A[19]~input_o\,
	datac => \ALT_INV_c[19]~15_combout\,
	datad => \PrefixNetwork|ALT_INV_Gk[3][18]~combout\,
	datae => \PrefixNetwork|ALT_INV_Gk[3][10]~combout\,
	dataf => \ALT_INV_c[19]~8_combout\,
	combout => \S~22_combout\);

-- Location: IOIBUF_X35_Y0_N32
\B[20]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(20),
	o => \B[20]~input_o\);

-- Location: LABCELL_X43_Y4_N22
\PrefixNetwork|Gk[1][19]~46\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][19]~46_combout\ = ( \A[18]~input_o\ & ( (!\A[19]~input_o\ & (\B[19]~input_o\ & \B[18]~input_o\)) # (\A[19]~input_o\ & ((\B[18]~input_o\) # (\B[19]~input_o\))) ) ) # ( !\A[18]~input_o\ & ( (\A[19]~input_o\ & \B[19]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000011001111110000001100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[19]~input_o\,
	datac => \ALT_INV_B[19]~input_o\,
	datad => \ALT_INV_B[18]~input_o\,
	dataf => \ALT_INV_A[18]~input_o\,
	combout => \PrefixNetwork|Gk[1][19]~46_combout\);

-- Location: MLABCELL_X46_Y4_N2
\PrefixNetwork|Gk~45\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~45_combout\ = ( \A[18]~input_o\ & ( (!\B[18]~input_o\ & (!\B[19]~input_o\ $ (!\A[19]~input_o\))) ) ) # ( !\A[18]~input_o\ & ( (\B[18]~input_o\ & (!\B[19]~input_o\ $ (!\A[19]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101010000000001010101000000001010101000000000101010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[18]~input_o\,
	datac => \ALT_INV_B[19]~input_o\,
	datad => \ALT_INV_A[19]~input_o\,
	dataf => \ALT_INV_A[18]~input_o\,
	combout => \PrefixNetwork|Gk~45_combout\);

-- Location: LABCELL_X45_Y4_N22
\PrefixNetwork|Gk~47\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~47_combout\ = ( \PrefixNetwork|Gk[1][17]~41_combout\ & ( \PrefixNetwork|Gk~45_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PrefixNetwork|ALT_INV_Gk~45_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk[1][17]~41_combout\,
	combout => \PrefixNetwork|Gk~47_combout\);

-- Location: LABCELL_X47_Y4_N4
\PrefixNetwork|Pk[2][19]~14\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[2][19]~14_combout\ = ( \PrefixNetwork|Gk~40_combout\ & ( \PrefixNetwork|Gk~45_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|ALT_INV_Gk~45_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk~40_combout\,
	combout => \PrefixNetwork|Pk[2][19]~14_combout\);

-- Location: MLABCELL_X46_Y4_N22
\PrefixNetwork|Gk[3][19]\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][19]~combout\ = ( \PrefixNetwork|Pk[2][19]~14_combout\ & ( (!\PrefixNetwork|Gk[1][19]~46_combout\ & (!\PrefixNetwork|Gk[1][15]~35_combout\ & (!\PrefixNetwork|Gk~47_combout\ & !\PrefixNetwork|Gk~36_combout\))) ) ) # ( 
-- !\PrefixNetwork|Pk[2][19]~14_combout\ & ( (!\PrefixNetwork|Gk[1][19]~46_combout\ & !\PrefixNetwork|Gk~47_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000101000001010000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|ALT_INV_Gk[1][19]~46_combout\,
	datab => \PrefixNetwork|ALT_INV_Gk[1][15]~35_combout\,
	datac => \PrefixNetwork|ALT_INV_Gk~47_combout\,
	datad => \PrefixNetwork|ALT_INV_Gk~36_combout\,
	dataf => \PrefixNetwork|ALT_INV_Pk[2][19]~14_combout\,
	combout => \PrefixNetwork|Gk[3][19]~combout\);

-- Location: IOIBUF_X37_Y0_N1
\A[20]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(20),
	o => \A[20]~input_o\);

-- Location: MLABCELL_X46_Y4_N4
\c[20]~16\ : arriaii_lcell_comb
-- Equation(s):
-- \c[20]~16_combout\ = ( \PrefixNetwork|Pk[2][19]~14_combout\ & ( \PrefixNetwork|Pk[2][15]~10_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|ALT_INV_Pk[2][15]~10_combout\,
	dataf => \PrefixNetwork|ALT_INV_Pk[2][19]~14_combout\,
	combout => \c[20]~16_combout\);

-- Location: MLABCELL_X46_Y4_N28
\c[20]~17\ : arriaii_lcell_comb
-- Equation(s):
-- \c[20]~17_combout\ = ( \c[20]~16_combout\ & ( (!\PrefixNetwork|Gk[3][11]~combout\) # ((\PrefixNetwork|Pk[2][7]~2_combout\ & (\PrefixNetwork|Pk[2][11]~6_combout\ & !\c[12]~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110001111100001111000111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|ALT_INV_Pk[2][7]~2_combout\,
	datab => \PrefixNetwork|ALT_INV_Pk[2][11]~6_combout\,
	datac => \PrefixNetwork|ALT_INV_Gk[3][11]~combout\,
	datad => \ALT_INV_c[12]~2_combout\,
	dataf => \ALT_INV_c[20]~16_combout\,
	combout => \c[20]~17_combout\);

-- Location: MLABCELL_X46_Y4_N18
\S~23\ : arriaii_lcell_comb
-- Equation(s):
-- \S~23_combout\ = ( \c[20]~17_combout\ & ( !\B[20]~input_o\ $ (\A[20]~input_o\) ) ) # ( !\c[20]~17_combout\ & ( !\B[20]~input_o\ $ (!\PrefixNetwork|Gk[3][19]~combout\ $ (!\A[20]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010010101011010101001010101101010101010010101011010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[20]~input_o\,
	datac => \PrefixNetwork|ALT_INV_Gk[3][19]~combout\,
	datad => \ALT_INV_A[20]~input_o\,
	dataf => \ALT_INV_c[20]~17_combout\,
	combout => \S~23_combout\);

-- Location: IOIBUF_X33_Y0_N63
\B[21]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(21),
	o => \B[21]~input_o\);

-- Location: IOIBUF_X59_Y12_N94
\A[21]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(21),
	o => \A[21]~input_o\);

-- Location: LABCELL_X50_Y4_N4
\PrefixNetwork|Gk~48\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~48_combout\ = ( \B[19]~input_o\ & ( (!\A[19]~input_o\ & (!\B[20]~input_o\ $ (!\A[20]~input_o\))) ) ) # ( !\B[19]~input_o\ & ( (\A[19]~input_o\ & (!\B[20]~input_o\ $ (!\A[20]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100001010000001010000101001010000101000000101000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[20]~input_o\,
	datac => \ALT_INV_A[19]~input_o\,
	datad => \ALT_INV_A[20]~input_o\,
	dataf => \ALT_INV_B[19]~input_o\,
	combout => \PrefixNetwork|Gk~48_combout\);

-- Location: LABCELL_X50_Y4_N30
\PrefixNetwork|Pk[2][20]~15\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[2][20]~15_combout\ = ( \A[18]~input_o\ & ( (!\B[18]~input_o\ & (\PrefixNetwork|Gk~48_combout\ & (!\B[17]~input_o\ $ (!\A[17]~input_o\)))) ) ) # ( !\A[18]~input_o\ & ( (\B[18]~input_o\ & (\PrefixNetwork|Gk~48_combout\ & (!\B[17]~input_o\ 
-- $ (!\A[17]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000010000000010000001000000100000010000000010000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[17]~input_o\,
	datab => \ALT_INV_B[18]~input_o\,
	datac => \PrefixNetwork|ALT_INV_Gk~48_combout\,
	datad => \ALT_INV_A[17]~input_o\,
	dataf => \ALT_INV_A[18]~input_o\,
	combout => \PrefixNetwork|Pk[2][20]~15_combout\);

-- Location: MLABCELL_X57_Y4_N14
\PrefixNetwork|Gk[3][12]~DUPLICATE\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][12]~DUPLICATE_combout\ = ( !\PrefixNetwork|Gk~27_combout\ & ( \PrefixNetwork|Gk~15_combout\ & ( (!\PrefixNetwork|Gk[1][12]~26_combout\ & !\PrefixNetwork|Pk[2][12]~7_combout\) ) ) ) # ( !\PrefixNetwork|Gk~27_combout\ & ( 
-- !\PrefixNetwork|Gk~15_combout\ & ( (!\PrefixNetwork|Gk[1][12]~26_combout\ & ((!\PrefixNetwork|Gk[1][8]~14_combout\) # (!\PrefixNetwork|Pk[2][12]~7_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011000000000000000000000011001100000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PrefixNetwork|ALT_INV_Gk[1][12]~26_combout\,
	datac => \PrefixNetwork|ALT_INV_Gk[1][8]~14_combout\,
	datad => \PrefixNetwork|ALT_INV_Pk[2][12]~7_combout\,
	datae => \PrefixNetwork|ALT_INV_Gk~27_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk~15_combout\,
	combout => \PrefixNetwork|Gk[3][12]~DUPLICATE_combout\);

-- Location: MLABCELL_X57_Y4_N18
\c[21]~10DUPLICATE\ : arriaii_lcell_comb
-- Equation(s):
-- \c[21]~10DUPLICATE_combout\ = ( \PrefixNetwork|Gk[1][2]~0_combout\ & ( \PrefixNetwork|Pk[2][8]~3_combout\ & ( (\PrefixNetwork|Gk[1][4]~3_combout\) # (\PrefixNetwork|Gk~4_combout\) ) ) ) # ( !\PrefixNetwork|Gk[1][2]~0_combout\ & ( 
-- \PrefixNetwork|Pk[2][8]~3_combout\ & ( ((\PrefixNetwork|Gk~4_combout\ & \c[11]~0_combout\)) # (\PrefixNetwork|Gk[1][4]~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|ALT_INV_Gk~4_combout\,
	datac => \ALT_INV_c[11]~0_combout\,
	datad => \PrefixNetwork|ALT_INV_Gk[1][4]~3_combout\,
	datae => \PrefixNetwork|ALT_INV_Gk[1][2]~0_combout\,
	dataf => \PrefixNetwork|ALT_INV_Pk[2][8]~3_combout\,
	combout => \c[21]~10DUPLICATE_combout\);

-- Location: LABCELL_X38_Y4_N26
\PrefixNetwork|Gk[1][20]~49\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][20]~49_combout\ = ( \B[19]~input_o\ & ( \A[19]~input_o\ & ( (\A[20]~input_o\) # (\B[20]~input_o\) ) ) ) # ( !\B[19]~input_o\ & ( \A[19]~input_o\ & ( (\B[20]~input_o\ & \A[20]~input_o\) ) ) ) # ( \B[19]~input_o\ & ( !\A[19]~input_o\ & 
-- ( (\B[20]~input_o\ & \A[20]~input_o\) ) ) ) # ( !\B[19]~input_o\ & ( !\A[19]~input_o\ & ( (\B[20]~input_o\ & \A[20]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000011110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[20]~input_o\,
	datad => \ALT_INV_A[20]~input_o\,
	datae => \ALT_INV_B[19]~input_o\,
	dataf => \ALT_INV_A[19]~input_o\,
	combout => \PrefixNetwork|Gk[1][20]~49_combout\);

-- Location: LABCELL_X50_Y4_N28
\PrefixNetwork|Gk~50\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~50_combout\ = ( \PrefixNetwork|Gk[1][18]~43_combout\ & ( \PrefixNetwork|Gk~48_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|ALT_INV_Gk~48_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk[1][18]~43_combout\,
	combout => \PrefixNetwork|Gk~50_combout\);

-- Location: LABCELL_X50_Y4_N26
\PrefixNetwork|Gk[3][20]\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][20]~combout\ = ( \PrefixNetwork|Gk~39_combout\ & ( (!\PrefixNetwork|Gk[1][20]~49_combout\ & (!\PrefixNetwork|Gk~50_combout\ & !\PrefixNetwork|Pk[2][20]~15_combout\)) ) ) # ( !\PrefixNetwork|Gk~39_combout\ & ( 
-- (!\PrefixNetwork|Gk[1][20]~49_combout\ & (!\PrefixNetwork|Gk~50_combout\ & ((!\PrefixNetwork|Gk[1][16]~38_combout\) # (!\PrefixNetwork|Pk[2][20]~15_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000010000000110000001000000011000000000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|ALT_INV_Gk[1][16]~38_combout\,
	datab => \PrefixNetwork|ALT_INV_Gk[1][20]~49_combout\,
	datac => \PrefixNetwork|ALT_INV_Gk~50_combout\,
	datad => \PrefixNetwork|ALT_INV_Pk[2][20]~15_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk~39_combout\,
	combout => \PrefixNetwork|Gk[3][20]~combout\);

-- Location: MLABCELL_X57_Y4_N20
\c[21]~18\ : arriaii_lcell_comb
-- Equation(s):
-- \c[21]~18_combout\ = ( \c[21]~10DUPLICATE_combout\ & ( \PrefixNetwork|Gk[3][20]~combout\ & ( (!\PrefixNetwork|Pk[2][20]~15_combout\) # ((!\PrefixNetwork|Pk[2][16]~11_combout\) # ((!\PrefixNetwork|Pk[2][12]~7_combout\ & 
-- \PrefixNetwork|Gk[3][12]~DUPLICATE_combout\))) ) ) ) # ( !\c[21]~10DUPLICATE_combout\ & ( \PrefixNetwork|Gk[3][20]~combout\ & ( (!\PrefixNetwork|Pk[2][20]~15_combout\) # ((!\PrefixNetwork|Pk[2][16]~11_combout\) # 
-- (\PrefixNetwork|Gk[3][12]~DUPLICATE_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111010111111111111101011111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|ALT_INV_Pk[2][20]~15_combout\,
	datab => \PrefixNetwork|ALT_INV_Pk[2][12]~7_combout\,
	datac => \PrefixNetwork|ALT_INV_Pk[2][16]~11_combout\,
	datad => \PrefixNetwork|ALT_INV_Gk[3][12]~DUPLICATE_combout\,
	datae => \ALT_INV_c[21]~10DUPLICATE_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk[3][20]~combout\,
	combout => \c[21]~18_combout\);

-- Location: MLABCELL_X57_Y4_N8
\S~24\ : arriaii_lcell_comb
-- Equation(s):
-- \S~24_combout\ = ( \A[21]~input_o\ & ( \c[21]~18_combout\ & ( !\B[21]~input_o\ ) ) ) # ( !\A[21]~input_o\ & ( \c[21]~18_combout\ & ( \B[21]~input_o\ ) ) ) # ( \A[21]~input_o\ & ( !\c[21]~18_combout\ & ( \B[21]~input_o\ ) ) ) # ( !\A[21]~input_o\ & ( 
-- !\c[21]~18_combout\ & ( !\B[21]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000000000001111111100000000111111111111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_B[21]~input_o\,
	datae => \ALT_INV_A[21]~input_o\,
	dataf => \ALT_INV_c[21]~18_combout\,
	combout => \S~24_combout\);

-- Location: IOIBUF_X56_Y0_N1
\B[22]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(22),
	o => \B[22]~input_o\);

-- Location: IOIBUF_X41_Y0_N63
\A[22]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(22),
	o => \A[22]~input_o\);

-- Location: MLABCELL_X52_Y4_N4
\c[22]~19\ : arriaii_lcell_comb
-- Equation(s):
-- \c[22]~19_combout\ = ( \c[6]~3_combout\ & ( \PrefixNetwork|Pk[2][9]~4_combout\ ) ) # ( !\c[6]~3_combout\ & ( (\PrefixNetwork|Pk[2][9]~4_combout\ & ((\PrefixNetwork|Gk~6_combout\) # (\PrefixNetwork|Gk[1][5]~5_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000111111000000000011111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PrefixNetwork|ALT_INV_Gk[1][5]~5_combout\,
	datac => \PrefixNetwork|ALT_INV_Gk~6_combout\,
	datad => \PrefixNetwork|ALT_INV_Pk[2][9]~4_combout\,
	dataf => \ALT_INV_c[6]~3_combout\,
	combout => \c[22]~19_combout\);

-- Location: MLABCELL_X44_Y4_N20
\PrefixNetwork|Gk~51\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~51_combout\ = ( \A[21]~input_o\ & ( (!\B[21]~input_o\ & (!\B[20]~input_o\ $ (!\A[20]~input_o\))) ) ) # ( !\A[21]~input_o\ & ( (\B[21]~input_o\ & (!\B[20]~input_o\ $ (!\A[20]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100001010000001010000101001010000101000000101000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[20]~input_o\,
	datac => \ALT_INV_B[21]~input_o\,
	datad => \ALT_INV_A[20]~input_o\,
	dataf => \ALT_INV_A[21]~input_o\,
	combout => \PrefixNetwork|Gk~51_combout\);

-- Location: MLABCELL_X44_Y4_N32
\PrefixNetwork|Pk[2][21]~16\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[2][21]~16_combout\ = ( \PrefixNetwork|Gk~51_combout\ & ( \PrefixNetwork|Gk~45_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|ALT_INV_Gk~45_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk~51_combout\,
	combout => \PrefixNetwork|Pk[2][21]~16_combout\);

-- Location: MLABCELL_X44_Y4_N12
\c[26]~20\ : arriaii_lcell_comb
-- Equation(s):
-- \c[26]~20_combout\ = ( \PrefixNetwork|Pk[2][13]~8_combout\ & ( (\PrefixNetwork|Pk[2][21]~16_combout\ & \PrefixNetwork|Pk[2][17]~12_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|ALT_INV_Pk[2][21]~16_combout\,
	datad => \PrefixNetwork|ALT_INV_Pk[2][17]~12_combout\,
	dataf => \PrefixNetwork|ALT_INV_Pk[2][13]~8_combout\,
	combout => \c[26]~20_combout\);

-- Location: MLABCELL_X44_Y4_N28
\PrefixNetwork|Pk[2][17]~12DUPLICATE\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[2][17]~12DUPLICATE_combout\ = ( \PrefixNetwork|Gk~40_combout\ & ( \PrefixNetwork|Gk~34_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \PrefixNetwork|ALT_INV_Gk~40_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk~34_combout\,
	combout => \PrefixNetwork|Pk[2][17]~12DUPLICATE_combout\);

-- Location: MLABCELL_X44_Y4_N26
\PrefixNetwork|Gk[1][21]~52\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][21]~52_combout\ = ( \A[21]~input_o\ & ( ((\B[20]~input_o\ & \A[20]~input_o\)) # (\B[21]~input_o\) ) ) # ( !\A[21]~input_o\ & ( (\B[20]~input_o\ & (\B[21]~input_o\ & \A[20]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100001111010111110000111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[20]~input_o\,
	datac => \ALT_INV_B[21]~input_o\,
	datad => \ALT_INV_A[20]~input_o\,
	dataf => \ALT_INV_A[21]~input_o\,
	combout => \PrefixNetwork|Gk[1][21]~52_combout\);

-- Location: MLABCELL_X44_Y4_N4
\PrefixNetwork|Gk~53\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~53_combout\ = ( \PrefixNetwork|Gk~51_combout\ & ( \PrefixNetwork|Gk[1][19]~46_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PrefixNetwork|ALT_INV_Gk[1][19]~46_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk~51_combout\,
	combout => \PrefixNetwork|Gk~53_combout\);

-- Location: MLABCELL_X44_Y4_N6
\PrefixNetwork|Gk[3][21]\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][21]~combout\ = ( \PrefixNetwork|Gk~42_combout\ & ( (!\PrefixNetwork|Gk[1][21]~52_combout\ & (!\PrefixNetwork|Pk[2][21]~16_combout\ & !\PrefixNetwork|Gk~53_combout\)) ) ) # ( !\PrefixNetwork|Gk~42_combout\ & ( 
-- (!\PrefixNetwork|Gk[1][21]~52_combout\ & (!\PrefixNetwork|Gk~53_combout\ & ((!\PrefixNetwork|Gk[1][17]~41_combout\) # (!\PrefixNetwork|Pk[2][21]~16_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100100000000000110010000000000011000000000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|ALT_INV_Gk[1][17]~41_combout\,
	datab => \PrefixNetwork|ALT_INV_Gk[1][21]~52_combout\,
	datac => \PrefixNetwork|ALT_INV_Pk[2][21]~16_combout\,
	datad => \PrefixNetwork|ALT_INV_Gk~53_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk~42_combout\,
	combout => \PrefixNetwork|Gk[3][21]~combout\);

-- Location: MLABCELL_X44_Y4_N24
\c[22]~21\ : arriaii_lcell_comb
-- Equation(s):
-- \c[22]~21_combout\ = ( \PrefixNetwork|Gk[3][21]~combout\ & ( (!\PrefixNetwork|Pk[2][21]~16_combout\) # ((!\PrefixNetwork|Pk[2][17]~12DUPLICATE_combout\) # (\PrefixNetwork|Gk[3][13]~combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111100111111111111110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PrefixNetwork|ALT_INV_Pk[2][21]~16_combout\,
	datac => \PrefixNetwork|ALT_INV_Pk[2][17]~12DUPLICATE_combout\,
	datad => \PrefixNetwork|ALT_INV_Gk[3][13]~combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk[3][21]~combout\,
	combout => \c[22]~21_combout\);

-- Location: MLABCELL_X44_Y4_N8
\S~25\ : arriaii_lcell_comb
-- Equation(s):
-- \S~25_combout\ = ( \c[22]~21_combout\ & ( !\B[22]~input_o\ $ (!\A[22]~input_o\ $ (((\c[22]~19_combout\ & \c[26]~20_combout\)))) ) ) # ( !\c[22]~21_combout\ & ( !\B[22]~input_o\ $ (\A[22]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100110011001100110011001100101100110011010010110011001101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[22]~input_o\,
	datab => \ALT_INV_A[22]~input_o\,
	datac => \ALT_INV_c[22]~19_combout\,
	datad => \ALT_INV_c[26]~20_combout\,
	dataf => \ALT_INV_c[22]~21_combout\,
	combout => \S~25_combout\);

-- Location: IOIBUF_X41_Y0_N1
\A[23]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(23),
	o => \A[23]~input_o\);

-- Location: IOIBUF_X59_Y9_N1
\B[23]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(23),
	o => \B[23]~input_o\);

-- Location: LABCELL_X50_Y4_N10
\PrefixNetwork|Gk~54\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~54_combout\ = ( \B[21]~input_o\ & ( (!\A[21]~input_o\ & (!\A[22]~input_o\ $ (!\B[22]~input_o\))) ) ) # ( !\B[21]~input_o\ & ( (\A[21]~input_o\ & (!\A[22]~input_o\ $ (!\B[22]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100001010000001010000101001010000101000000101000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[22]~input_o\,
	datac => \ALT_INV_A[21]~input_o\,
	datad => \ALT_INV_B[22]~input_o\,
	dataf => \ALT_INV_B[21]~input_o\,
	combout => \PrefixNetwork|Gk~54_combout\);

-- Location: LABCELL_X50_Y4_N20
\PrefixNetwork|Pk[2][22]~17\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[2][22]~17_combout\ = ( \PrefixNetwork|Gk~48_combout\ & ( \PrefixNetwork|Gk~54_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \PrefixNetwork|ALT_INV_Gk~48_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk~54_combout\,
	combout => \PrefixNetwork|Pk[2][22]~17_combout\);

-- Location: LABCELL_X53_Y4_N32
\PrefixNetwork|Gk[1][22]~55\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][22]~55_combout\ = ( \A[22]~input_o\ & ( ((\B[21]~input_o\ & \A[21]~input_o\)) # (\B[22]~input_o\) ) ) # ( !\A[22]~input_o\ & ( (\B[22]~input_o\ & (\B[21]~input_o\ & \A[21]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010101010101010111110101010101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[22]~input_o\,
	datac => \ALT_INV_B[21]~input_o\,
	datad => \ALT_INV_A[21]~input_o\,
	dataf => \ALT_INV_A[22]~input_o\,
	combout => \PrefixNetwork|Gk[1][22]~55_combout\);

-- Location: MLABCELL_X54_Y4_N22
\PrefixNetwork|Gk~56\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~56_combout\ = ( \PrefixNetwork|Gk[1][20]~49_combout\ & ( \PrefixNetwork|Gk~54_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PrefixNetwork|ALT_INV_Gk~54_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk[1][20]~49_combout\,
	combout => \PrefixNetwork|Gk~56_combout\);

-- Location: MLABCELL_X54_Y4_N18
\PrefixNetwork|Gk[3][22]\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][22]~combout\ = ( \PrefixNetwork|Pk[2][22]~17_combout\ & ( (!\PrefixNetwork|Gk[1][22]~55_combout\ & (!\PrefixNetwork|Gk[1][18]~43_combout\ & (!\PrefixNetwork|Gk~56_combout\ & !\PrefixNetwork|Gk~44_combout\))) ) ) # ( 
-- !\PrefixNetwork|Pk[2][22]~17_combout\ & ( (!\PrefixNetwork|Gk[1][22]~55_combout\ & !\PrefixNetwork|Gk~56_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000101000001010000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|ALT_INV_Gk[1][22]~55_combout\,
	datab => \PrefixNetwork|ALT_INV_Gk[1][18]~43_combout\,
	datac => \PrefixNetwork|ALT_INV_Gk~56_combout\,
	datad => \PrefixNetwork|ALT_INV_Gk~44_combout\,
	dataf => \PrefixNetwork|ALT_INV_Pk[2][22]~17_combout\,
	combout => \PrefixNetwork|Gk[3][22]~combout\);

-- Location: MLABCELL_X54_Y4_N30
\c[23]~23\ : arriaii_lcell_comb
-- Equation(s):
-- \c[23]~23_combout\ = ( \PrefixNetwork|Gk[3][22]~combout\ & ( (!\PrefixNetwork|Pk[2][18]~13_combout\) # ((!\PrefixNetwork|Pk[2][22]~17_combout\) # (\PrefixNetwork|Gk[3][14]~combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111010111111111111101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|ALT_INV_Pk[2][18]~13_combout\,
	datac => \PrefixNetwork|ALT_INV_Pk[2][22]~17_combout\,
	datad => \PrefixNetwork|ALT_INV_Gk[3][14]~combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk[3][22]~combout\,
	combout => \c[23]~23_combout\);

-- Location: MLABCELL_X54_Y4_N10
\c[23]~22\ : arriaii_lcell_comb
-- Equation(s):
-- \c[23]~22_combout\ = ( \PrefixNetwork|Gpre[6]~2_combout\ & ( (\PrefixNetwork|Pk[2][22]~17_combout\ & (\c~4_combout\ & \c[19]~15_combout\)) ) ) # ( !\PrefixNetwork|Gpre[6]~2_combout\ & ( (\PrefixNetwork|Pk[2][22]~17_combout\ & \c[19]~15_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PrefixNetwork|ALT_INV_Pk[2][22]~17_combout\,
	datac => \ALT_INV_c~4_combout\,
	datad => \ALT_INV_c[19]~15_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gpre[6]~2_combout\,
	combout => \c[23]~22_combout\);

-- Location: MLABCELL_X54_Y4_N20
\S~26\ : arriaii_lcell_comb
-- Equation(s):
-- \S~26_combout\ = ( \c[23]~22_combout\ & ( !\A[23]~input_o\ $ (!\B[23]~input_o\ $ (((!\c[23]~23_combout\) # (\PrefixNetwork|Pk[2][10]~5_combout\)))) ) ) # ( !\c[23]~22_combout\ & ( !\A[23]~input_o\ $ (!\B[23]~input_o\ $ (!\c[23]~23_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100101100110100110010110011010011001011010011001100101101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[23]~input_o\,
	datab => \ALT_INV_B[23]~input_o\,
	datac => \PrefixNetwork|ALT_INV_Pk[2][10]~5_combout\,
	datad => \ALT_INV_c[23]~23_combout\,
	dataf => \ALT_INV_c[23]~22_combout\,
	combout => \S~26_combout\);

-- Location: IOIBUF_X41_Y0_N32
\B[24]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(24),
	o => \B[24]~input_o\);

-- Location: IOIBUF_X37_Y0_N32
\A[24]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(24),
	o => \A[24]~input_o\);

-- Location: LABCELL_X45_Y4_N0
\PrefixNetwork|Pk[2][23]~18DUPLICATE\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[2][23]~18DUPLICATE_combout\ = ( \A[22]~input_o\ & ( \PrefixNetwork|Gk~51_combout\ & ( (!\B[22]~input_o\ & (!\A[23]~input_o\ $ (!\B[23]~input_o\))) ) ) ) # ( !\A[22]~input_o\ & ( \PrefixNetwork|Gk~51_combout\ & ( (\B[22]~input_o\ & 
-- (!\A[23]~input_o\ $ (!\B[23]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001111000011110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[23]~input_o\,
	datac => \ALT_INV_B[23]~input_o\,
	datad => \ALT_INV_B[22]~input_o\,
	datae => \ALT_INV_A[22]~input_o\,
	dataf => \PrefixNetwork|ALT_INV_Gk~51_combout\,
	combout => \PrefixNetwork|Pk[2][23]~18DUPLICATE_combout\);

-- Location: LABCELL_X45_Y4_N30
\PrefixNetwork|Gk[1][23]~57\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][23]~57_combout\ = ( \B[22]~input_o\ & ( (!\A[23]~input_o\ & (\B[23]~input_o\ & \A[22]~input_o\)) # (\A[23]~input_o\ & ((\A[22]~input_o\) # (\B[23]~input_o\))) ) ) # ( !\B[22]~input_o\ & ( (\A[23]~input_o\ & \B[23]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101010111110000010101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[23]~input_o\,
	datac => \ALT_INV_B[23]~input_o\,
	datad => \ALT_INV_A[22]~input_o\,
	dataf => \ALT_INV_B[22]~input_o\,
	combout => \PrefixNetwork|Gk[1][23]~57_combout\);

-- Location: LABCELL_X45_Y4_N20
\PrefixNetwork|Gk~58\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~58_combout\ = ( \PrefixNetwork|Gk[1][21]~52_combout\ & ( (!\A[22]~input_o\ & (\B[22]~input_o\ & (!\A[23]~input_o\ $ (!\B[23]~input_o\)))) # (\A[22]~input_o\ & (!\B[22]~input_o\ & (!\A[23]~input_o\ $ (!\B[23]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010100001010000001010000101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[22]~input_o\,
	datab => \ALT_INV_A[23]~input_o\,
	datac => \ALT_INV_B[23]~input_o\,
	datad => \ALT_INV_B[22]~input_o\,
	dataf => \PrefixNetwork|ALT_INV_Gk[1][21]~52_combout\,
	combout => \PrefixNetwork|Gk~58_combout\);

-- Location: LABCELL_X45_Y4_N16
\PrefixNetwork|Gk[3][23]\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][23]~combout\ = ( !\PrefixNetwork|Gk~58_combout\ & ( \PrefixNetwork|Gk~47_combout\ & ( (!\PrefixNetwork|Pk[2][23]~18DUPLICATE_combout\ & !\PrefixNetwork|Gk[1][23]~57_combout\) ) ) ) # ( !\PrefixNetwork|Gk~58_combout\ & ( 
-- !\PrefixNetwork|Gk~47_combout\ & ( (!\PrefixNetwork|Gk[1][23]~57_combout\ & ((!\PrefixNetwork|Gk[1][19]~46_combout\) # (!\PrefixNetwork|Pk[2][23]~18DUPLICATE_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110000000000000000000000000011110000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PrefixNetwork|ALT_INV_Gk[1][19]~46_combout\,
	datac => \PrefixNetwork|ALT_INV_Pk[2][23]~18DUPLICATE_combout\,
	datad => \PrefixNetwork|ALT_INV_Gk[1][23]~57_combout\,
	datae => \PrefixNetwork|ALT_INV_Gk~58_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk~47_combout\,
	combout => \PrefixNetwork|Gk[3][23]~combout\);

-- Location: MLABCELL_X46_Y4_N12
\c[24]~25\ : arriaii_lcell_comb
-- Equation(s):
-- \c[24]~25_combout\ = ( \PrefixNetwork|Gk[3][23]~combout\ & ( (!\PrefixNetwork|Pk[2][19]~14_combout\) # ((!\PrefixNetwork|Pk[2][23]~18DUPLICATE_combout\) # (\PrefixNetwork|Gk[3][15]~combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111100111111111111110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PrefixNetwork|ALT_INV_Pk[2][19]~14_combout\,
	datac => \PrefixNetwork|ALT_INV_Pk[2][23]~18DUPLICATE_combout\,
	datad => \PrefixNetwork|ALT_INV_Gk[3][15]~combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk[3][23]~combout\,
	combout => \c[24]~25_combout\);

-- Location: MLABCELL_X46_Y4_N34
\c[28]~24\ : arriaii_lcell_comb
-- Equation(s):
-- \c[28]~24_combout\ = ( \c[20]~16_combout\ & ( \PrefixNetwork|Pk[2][23]~18DUPLICATE_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PrefixNetwork|ALT_INV_Pk[2][23]~18DUPLICATE_combout\,
	dataf => \ALT_INV_c[20]~16_combout\,
	combout => \c[28]~24_combout\);

-- Location: MLABCELL_X46_Y4_N36
\S~27\ : arriaii_lcell_comb
-- Equation(s):
-- \S~27_combout\ = ( \c[24]~25_combout\ & ( \c[28]~24_combout\ & ( !\B[24]~input_o\ $ (!\A[24]~input_o\ $ (((!c(8) & \PrefixNetwork|Pk[2][11]~6_combout\)))) ) ) ) # ( !\c[24]~25_combout\ & ( \c[28]~24_combout\ & ( !\B[24]~input_o\ $ (\A[24]~input_o\) ) ) ) 
-- # ( \c[24]~25_combout\ & ( !\c[28]~24_combout\ & ( !\B[24]~input_o\ $ (!\A[24]~input_o\) ) ) ) # ( !\c[24]~25_combout\ & ( !\c[28]~24_combout\ & ( !\B[24]~input_o\ $ (\A[24]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100110011001011001100110011010011001100110010110011010010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[24]~input_o\,
	datab => \ALT_INV_A[24]~input_o\,
	datac => ALT_INV_c(8),
	datad => \PrefixNetwork|ALT_INV_Pk[2][11]~6_combout\,
	datae => \ALT_INV_c[24]~25_combout\,
	dataf => \ALT_INV_c[28]~24_combout\,
	combout => \S~27_combout\);

-- Location: MLABCELL_X49_Y4_N0
\PrefixNetwork|Pk[2][24]~19\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[2][24]~19_combout\ = ( \PrefixNetwork|Gk~54_combout\ & ( (!\B[23]~input_o\ & (\A[23]~input_o\ & (!\B[24]~input_o\ $ (!\A[24]~input_o\)))) # (\B[23]~input_o\ & (!\A[23]~input_o\ & (!\B[24]~input_o\ $ (!\A[24]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010100001010000001010000101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[23]~input_o\,
	datab => \ALT_INV_B[24]~input_o\,
	datac => \ALT_INV_A[24]~input_o\,
	datad => \ALT_INV_A[23]~input_o\,
	dataf => \PrefixNetwork|ALT_INV_Gk~54_combout\,
	combout => \PrefixNetwork|Pk[2][24]~19_combout\);

-- Location: IOIBUF_X37_Y0_N63
\A[25]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(25),
	o => \A[25]~input_o\);

-- Location: IOIBUF_X37_Y0_N94
\B[25]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(25),
	o => \B[25]~input_o\);

-- Location: LABCELL_X40_Y4_N0
\p[25]\ : arriaii_lcell_comb
-- Equation(s):
-- p(25) = ( !\A[25]~input_o\ & ( \B[25]~input_o\ ) ) # ( \A[25]~input_o\ & ( !\B[25]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_A[25]~input_o\,
	dataf => \ALT_INV_B[25]~input_o\,
	combout => p(25));

-- Location: LABCELL_X45_Y4_N28
\PrefixNetwork|Gk[1][24]~60\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][24]~60_combout\ = ( \B[23]~input_o\ & ( (!\A[23]~input_o\ & (\A[24]~input_o\ & \B[24]~input_o\)) # (\A[23]~input_o\ & ((\B[24]~input_o\) # (\A[24]~input_o\))) ) ) # ( !\B[23]~input_o\ & ( (\A[24]~input_o\ & \B[24]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000101010111110000010101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[23]~input_o\,
	datac => \ALT_INV_A[24]~input_o\,
	datad => \ALT_INV_B[24]~input_o\,
	dataf => \ALT_INV_B[23]~input_o\,
	combout => \PrefixNetwork|Gk[1][24]~60_combout\);

-- Location: MLABCELL_X49_Y4_N36
\c[25]~26\ : arriaii_lcell_comb
-- Equation(s):
-- \c[25]~26_combout\ = ( !\PrefixNetwork|Gk[1][24]~60_combout\ & ( (!\PrefixNetwork|Pk[2][24]~19_combout\) # ((!\PrefixNetwork|Gk[1][20]~49_combout\ & !\PrefixNetwork|Gk~50_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110011110000111111001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PrefixNetwork|ALT_INV_Gk[1][20]~49_combout\,
	datac => \PrefixNetwork|ALT_INV_Pk[2][24]~19_combout\,
	datad => \PrefixNetwork|ALT_INV_Gk~50_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk[1][24]~60_combout\,
	combout => \c[25]~26_combout\);

-- Location: LABCELL_X45_Y4_N34
\PrefixNetwork|Gk~59\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~59_combout\ = ( \PrefixNetwork|Gk[1][22]~55_combout\ & ( (!\A[24]~input_o\ & (\B[24]~input_o\ & (!\A[23]~input_o\ $ (!\B[23]~input_o\)))) # (\A[24]~input_o\ & (!\B[24]~input_o\ & (!\A[23]~input_o\ $ (!\B[23]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010100001010000001010000101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[24]~input_o\,
	datab => \ALT_INV_A[23]~input_o\,
	datac => \ALT_INV_B[23]~input_o\,
	datad => \ALT_INV_B[24]~input_o\,
	dataf => \PrefixNetwork|ALT_INV_Gk[1][22]~55_combout\,
	combout => \PrefixNetwork|Gk~59_combout\);

-- Location: MLABCELL_X49_Y4_N32
\c[25]~27\ : arriaii_lcell_comb
-- Equation(s):
-- \c[25]~27_combout\ = ( !\PrefixNetwork|Gk~59_combout\ & ( \PrefixNetwork|Gk[3][16]~combout\ & ( \c[25]~26_combout\ ) ) ) # ( !\PrefixNetwork|Gk~59_combout\ & ( !\PrefixNetwork|Gk[3][16]~combout\ & ( (\c[25]~26_combout\ & 
-- ((!\PrefixNetwork|Pk[2][24]~19_combout\) # (!\PrefixNetwork|Pk[2][20]~15_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111010000000000000000000000000111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|ALT_INV_Pk[2][24]~19_combout\,
	datac => \PrefixNetwork|ALT_INV_Pk[2][20]~15_combout\,
	datad => \ALT_INV_c[25]~26_combout\,
	datae => \PrefixNetwork|ALT_INV_Gk~59_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk[3][16]~combout\,
	combout => \c[25]~27_combout\);

-- Location: MLABCELL_X49_Y4_N28
\S~28\ : arriaii_lcell_comb
-- Equation(s):
-- \S~28_combout\ = ( \S~17_combout\ & ( \c[25]~27_combout\ & ( !p(25) $ (((!\PrefixNetwork|Pk[2][24]~19_combout\) # ((!\PrefixNetwork|Pk[2][20]~15_combout\) # (\c[9]~6_combout\)))) ) ) ) # ( !\S~17_combout\ & ( \c[25]~27_combout\ & ( p(25) ) ) ) # ( 
-- \S~17_combout\ & ( !\c[25]~27_combout\ & ( !p(25) ) ) ) # ( !\S~17_combout\ & ( !\c[25]~27_combout\ & ( !p(25) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000001111000011110001111000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|ALT_INV_Pk[2][24]~19_combout\,
	datab => \PrefixNetwork|ALT_INV_Pk[2][20]~15_combout\,
	datac => ALT_INV_p(25),
	datad => \ALT_INV_c[9]~6_combout\,
	datae => \ALT_INV_S~17_combout\,
	dataf => \ALT_INV_c[25]~27_combout\,
	combout => \S~28_combout\);

-- Location: LABCELL_X45_Y4_N38
\PrefixNetwork|Gk~61\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~61_combout\ = ( \A[24]~input_o\ & ( (!\B[24]~input_o\ & (!\A[25]~input_o\ $ (!\B[25]~input_o\))) ) ) # ( !\A[24]~input_o\ & ( (\B[24]~input_o\ & (!\A[25]~input_o\ $ (!\B[25]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100001010000001010000101001010000101000000101000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[25]~input_o\,
	datac => \ALT_INV_B[24]~input_o\,
	datad => \ALT_INV_B[25]~input_o\,
	dataf => \ALT_INV_A[24]~input_o\,
	combout => \PrefixNetwork|Gk~61_combout\);

-- Location: MLABCELL_X44_Y4_N2
\PrefixNetwork|Pk[2][25]~20\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[2][25]~20_combout\ = ( \PrefixNetwork|Gk~61_combout\ & ( (!\B[23]~input_o\ & (\A[23]~input_o\ & (!\A[22]~input_o\ $ (!\B[22]~input_o\)))) # (\B[23]~input_o\ & (!\A[23]~input_o\ & (!\A[22]~input_o\ $ (!\B[22]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010010010010000001001001001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[23]~input_o\,
	datab => \ALT_INV_A[22]~input_o\,
	datac => \ALT_INV_A[23]~input_o\,
	datad => \ALT_INV_B[22]~input_o\,
	dataf => \PrefixNetwork|ALT_INV_Gk~61_combout\,
	combout => \PrefixNetwork|Pk[2][25]~20_combout\);

-- Location: IOIBUF_X59_Y16_N63
\B[26]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(26),
	o => \B[26]~input_o\);

-- Location: IOIBUF_X59_Y7_N94
\A[26]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(26),
	o => \A[26]~input_o\);

-- Location: LABCELL_X45_Y4_N24
\PrefixNetwork|Gk[1][25]~62\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][25]~62_combout\ = ( \A[24]~input_o\ & ( (!\B[24]~input_o\ & (\B[25]~input_o\ & \A[25]~input_o\)) # (\B[24]~input_o\ & ((\A[25]~input_o\) # (\B[25]~input_o\))) ) ) # ( !\A[24]~input_o\ & ( (\B[25]~input_o\ & \A[25]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000101010111110000010101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[24]~input_o\,
	datac => \ALT_INV_B[25]~input_o\,
	datad => \ALT_INV_A[25]~input_o\,
	dataf => \ALT_INV_A[24]~input_o\,
	combout => \PrefixNetwork|Gk[1][25]~62_combout\);

-- Location: MLABCELL_X44_Y4_N10
\PrefixNetwork|Gk~63\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~63_combout\ = ( \PrefixNetwork|Gk~61_combout\ & ( \PrefixNetwork|Gk[1][23]~57_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|ALT_INV_Gk[1][23]~57_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk~61_combout\,
	combout => \PrefixNetwork|Gk~63_combout\);

-- Location: MLABCELL_X44_Y4_N22
\c[26]~28\ : arriaii_lcell_comb
-- Equation(s):
-- \c[26]~28_combout\ = ( !\PrefixNetwork|Gk~63_combout\ & ( (!\PrefixNetwork|Gk[1][25]~62_combout\ & ((!\PrefixNetwork|Pk[2][25]~20_combout\) # (!\PrefixNetwork|Gk[1][21]~52_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011000000110011001100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PrefixNetwork|ALT_INV_Gk[1][25]~62_combout\,
	datac => \PrefixNetwork|ALT_INV_Pk[2][25]~20_combout\,
	datad => \PrefixNetwork|ALT_INV_Gk[1][21]~52_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk~63_combout\,
	combout => \c[26]~28_combout\);

-- Location: LABCELL_X43_Y4_N32
\c[26]~29\ : arriaii_lcell_comb
-- Equation(s):
-- \c[26]~29_combout\ = ( \PrefixNetwork|Gk[3][17]~combout\ & ( (\c[26]~28_combout\ & ((!\PrefixNetwork|Pk[2][25]~20_combout\) # (!\PrefixNetwork|Gk~53_combout\))) ) ) # ( !\PrefixNetwork|Gk[3][17]~combout\ & ( (\c[26]~28_combout\ & 
-- ((!\PrefixNetwork|Pk[2][25]~20_combout\) # ((!\PrefixNetwork|Gk~53_combout\ & !\PrefixNetwork|Pk[2][21]~16_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111000001010000011100000101000001110000011100000111000001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|ALT_INV_Pk[2][25]~20_combout\,
	datab => \PrefixNetwork|ALT_INV_Gk~53_combout\,
	datac => \ALT_INV_c[26]~28_combout\,
	datad => \PrefixNetwork|ALT_INV_Pk[2][21]~16_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk[3][17]~combout\,
	combout => \c[26]~29_combout\);

-- Location: LABCELL_X43_Y4_N30
\S~29\ : arriaii_lcell_comb
-- Equation(s):
-- \S~29_combout\ = ( \c[10]~7_combout\ & ( \c[26]~29_combout\ & ( !\B[26]~input_o\ $ (!\A[26]~input_o\) ) ) ) # ( !\c[10]~7_combout\ & ( \c[26]~29_combout\ & ( !\B[26]~input_o\ $ (!\A[26]~input_o\ $ (((\PrefixNetwork|Pk[2][25]~20_combout\ & 
-- \c[26]~20_combout\)))) ) ) ) # ( \c[10]~7_combout\ & ( !\c[26]~29_combout\ & ( !\B[26]~input_o\ $ (\A[26]~input_o\) ) ) ) # ( !\c[10]~7_combout\ & ( !\c[26]~29_combout\ & ( !\B[26]~input_o\ $ (\A[26]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001111000011110000111100001100111100011010010011110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|ALT_INV_Pk[2][25]~20_combout\,
	datab => \ALT_INV_B[26]~input_o\,
	datac => \ALT_INV_A[26]~input_o\,
	datad => \ALT_INV_c[26]~20_combout\,
	datae => \ALT_INV_c[10]~7_combout\,
	dataf => \ALT_INV_c[26]~29_combout\,
	combout => \S~29_combout\);

-- Location: LABCELL_X45_Y4_N4
\PrefixNetwork|Pk[2][26]~21DUPLICATE\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[2][26]~21DUPLICATE_combout\ = ( \B[23]~input_o\ & ( \PrefixNetwork|Gk~61_combout\ & ( (!\A[23]~input_o\ & (!\A[26]~input_o\ $ (!\B[26]~input_o\))) ) ) ) # ( !\B[23]~input_o\ & ( \PrefixNetwork|Gk~61_combout\ & ( (\A[23]~input_o\ & 
-- (!\A[26]~input_o\ $ (!\B[26]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011001100000000110011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[23]~input_o\,
	datac => \ALT_INV_A[26]~input_o\,
	datad => \ALT_INV_B[26]~input_o\,
	datae => \ALT_INV_B[23]~input_o\,
	dataf => \PrefixNetwork|ALT_INV_Gk~61_combout\,
	combout => \PrefixNetwork|Pk[2][26]~21DUPLICATE_combout\);

-- Location: IOIBUF_X59_Y13_N63
\A[27]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(27),
	o => \A[27]~input_o\);

-- Location: IOIBUF_X59_Y7_N32
\B[27]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(27),
	o => \B[27]~input_o\);

-- Location: LABCELL_X45_Y4_N36
\PrefixNetwork|Gk[1][26]~64\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][26]~64_combout\ = ( \B[26]~input_o\ & ( ((\A[25]~input_o\ & \B[25]~input_o\)) # (\A[26]~input_o\) ) ) # ( !\B[26]~input_o\ & ( (\A[25]~input_o\ & (\A[26]~input_o\ & \B[25]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100001111010111110000111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[25]~input_o\,
	datac => \ALT_INV_A[26]~input_o\,
	datad => \ALT_INV_B[25]~input_o\,
	dataf => \ALT_INV_B[26]~input_o\,
	combout => \PrefixNetwork|Gk[1][26]~64_combout\);

-- Location: LABCELL_X45_Y4_N8
\c[27]~31\ : arriaii_lcell_comb
-- Equation(s):
-- \c[27]~31_combout\ = ( !\PrefixNetwork|Gk[1][26]~64_combout\ & ( \PrefixNetwork|Gk[1][24]~60_combout\ & ( (!p(25)) # (!\A[26]~input_o\ $ (\B[26]~input_o\)) ) ) ) # ( !\PrefixNetwork|Gk[1][26]~64_combout\ & ( !\PrefixNetwork|Gk[1][24]~60_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111010111101010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[26]~input_o\,
	datac => ALT_INV_p(25),
	datad => \ALT_INV_B[26]~input_o\,
	datae => \PrefixNetwork|ALT_INV_Gk[1][26]~64_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk[1][24]~60_combout\,
	combout => \c[27]~31_combout\);

-- Location: MLABCELL_X54_Y4_N0
\c[27]~32\ : arriaii_lcell_comb
-- Equation(s):
-- \c[27]~32_combout\ = ( \PrefixNetwork|Gk[3][18]~combout\ & ( \c[27]~31_combout\ & ( (!\PrefixNetwork|Pk[2][26]~21DUPLICATE_combout\) # ((!\PrefixNetwork|Gk[1][22]~55_combout\ & !\PrefixNetwork|Gk~56_combout\)) ) ) ) # ( !\PrefixNetwork|Gk[3][18]~combout\ 
-- & ( \c[27]~31_combout\ & ( (!\PrefixNetwork|Pk[2][26]~21DUPLICATE_combout\) # ((!\PrefixNetwork|Gk[1][22]~55_combout\ & (!\PrefixNetwork|Gk~56_combout\ & !\PrefixNetwork|Pk[2][22]~17_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011101010101010101110101011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|ALT_INV_Pk[2][26]~21DUPLICATE_combout\,
	datab => \PrefixNetwork|ALT_INV_Gk[1][22]~55_combout\,
	datac => \PrefixNetwork|ALT_INV_Gk~56_combout\,
	datad => \PrefixNetwork|ALT_INV_Pk[2][22]~17_combout\,
	datae => \PrefixNetwork|ALT_INV_Gk[3][18]~combout\,
	dataf => \ALT_INV_c[27]~31_combout\,
	combout => \c[27]~32_combout\);

-- Location: MLABCELL_X54_Y4_N6
\c[27]~30\ : arriaii_lcell_comb
-- Equation(s):
-- \c[27]~30_combout\ = ( \PrefixNetwork|Gk[3][10]~combout\ & ( (\PrefixNetwork|Pk[2][22]~17_combout\ & (\c[19]~8_combout\ & \c[19]~15_combout\)) ) ) # ( !\PrefixNetwork|Gk[3][10]~combout\ & ( (\PrefixNetwork|Pk[2][22]~17_combout\ & \c[19]~15_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|ALT_INV_Pk[2][22]~17_combout\,
	datac => \ALT_INV_c[19]~8_combout\,
	datad => \ALT_INV_c[19]~15_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk[3][10]~combout\,
	combout => \c[27]~30_combout\);

-- Location: MLABCELL_X54_Y4_N26
\S~30\ : arriaii_lcell_comb
-- Equation(s):
-- \S~30_combout\ = ( \c[27]~30_combout\ & ( !\A[27]~input_o\ $ (!\B[27]~input_o\ $ (((!\c[27]~32_combout\) # (\PrefixNetwork|Pk[2][26]~21DUPLICATE_combout\)))) ) ) # ( !\c[27]~30_combout\ & ( !\A[27]~input_o\ $ (!\B[27]~input_o\ $ (!\c[27]~32_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001100111100110000110011110011000011011010011100001101101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|ALT_INV_Pk[2][26]~21DUPLICATE_combout\,
	datab => \ALT_INV_A[27]~input_o\,
	datac => \ALT_INV_B[27]~input_o\,
	datad => \ALT_INV_c[27]~32_combout\,
	dataf => \ALT_INV_c[27]~30_combout\,
	combout => \S~30_combout\);

-- Location: LABCELL_X58_Y4_N24
\PrefixNetwork|Gk~65\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~65_combout\ = ( \A[27]~input_o\ & ( (!\B[27]~input_o\ & (!\B[26]~input_o\ $ (!\A[26]~input_o\))) ) ) # ( !\A[27]~input_o\ & ( (\B[27]~input_o\ & (!\B[26]~input_o\ $ (!\A[26]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101010000000001010101000000001010101000000000101010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[27]~input_o\,
	datac => \ALT_INV_B[26]~input_o\,
	datad => \ALT_INV_A[26]~input_o\,
	dataf => \ALT_INV_A[27]~input_o\,
	combout => \PrefixNetwork|Gk~65_combout\);

-- Location: MLABCELL_X46_Y4_N24
\PrefixNetwork|Pk[2][27]~22\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[2][27]~22_combout\ = ( \PrefixNetwork|Gk~65_combout\ & ( \PrefixNetwork|Gk~61_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|ALT_INV_Gk~61_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk~65_combout\,
	combout => \PrefixNetwork|Pk[2][27]~22_combout\);

-- Location: IOIBUF_X59_Y7_N1
\B[28]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(28),
	o => \B[28]~input_o\);

-- Location: IOIBUF_X59_Y13_N1
\A[28]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(28),
	o => \A[28]~input_o\);

-- Location: LABCELL_X58_Y4_N20
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

-- Location: LABCELL_X45_Y4_N2
\PrefixNetwork|Pk[2][23]~18\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[2][23]~18_combout\ = ( \A[22]~input_o\ & ( \PrefixNetwork|Gk~51_combout\ & ( (!\B[22]~input_o\ & (!\A[23]~input_o\ $ (!\B[23]~input_o\))) ) ) ) # ( !\A[22]~input_o\ & ( \PrefixNetwork|Gk~51_combout\ & ( (\B[22]~input_o\ & 
-- (!\A[23]~input_o\ $ (!\B[23]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000011000011000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[23]~input_o\,
	datac => \ALT_INV_B[22]~input_o\,
	datad => \ALT_INV_B[23]~input_o\,
	datae => \ALT_INV_A[22]~input_o\,
	dataf => \PrefixNetwork|ALT_INV_Gk~51_combout\,
	combout => \PrefixNetwork|Pk[2][23]~18_combout\);

-- Location: LABCELL_X58_Y4_N36
\PrefixNetwork|Gk[1][27]~66\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][27]~66_combout\ = ( \A[27]~input_o\ & ( ((\B[26]~input_o\ & \A[26]~input_o\)) # (\B[27]~input_o\) ) ) # ( !\A[27]~input_o\ & ( (\B[27]~input_o\ & (\B[26]~input_o\ & \A[26]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010101010101010111110101010101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[27]~input_o\,
	datac => \ALT_INV_B[26]~input_o\,
	datad => \ALT_INV_A[26]~input_o\,
	dataf => \ALT_INV_A[27]~input_o\,
	combout => \PrefixNetwork|Gk[1][27]~66_combout\);

-- Location: LABCELL_X45_Y4_N14
\c[28]~33\ : arriaii_lcell_comb
-- Equation(s):
-- \c[28]~33_combout\ = ( !\PrefixNetwork|Gk[1][27]~66_combout\ & ( \PrefixNetwork|Gk~65_combout\ & ( (!\PrefixNetwork|Gk[1][25]~62_combout\ & ((!\PrefixNetwork|Gk[1][23]~57_combout\) # (!\PrefixNetwork|Gk~61_combout\))) ) ) ) # ( 
-- !\PrefixNetwork|Gk[1][27]~66_combout\ & ( !\PrefixNetwork|Gk~65_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000010101010101000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|ALT_INV_Gk[1][25]~62_combout\,
	datac => \PrefixNetwork|ALT_INV_Gk[1][23]~57_combout\,
	datad => \PrefixNetwork|ALT_INV_Gk~61_combout\,
	datae => \PrefixNetwork|ALT_INV_Gk[1][27]~66_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk~65_combout\,
	combout => \c[28]~33_combout\);

-- Location: MLABCELL_X46_Y4_N6
\c[28]~34\ : arriaii_lcell_comb
-- Equation(s):
-- \c[28]~34_combout\ = ( \c[28]~33_combout\ & ( (!\PrefixNetwork|Pk[2][27]~22_combout\) # ((!\PrefixNetwork|Gk~58_combout\ & ((!\PrefixNetwork|Pk[2][23]~18_combout\) # (\PrefixNetwork|Gk[3][19]~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111100010101111111110001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|ALT_INV_Gk~58_combout\,
	datab => \PrefixNetwork|ALT_INV_Pk[2][23]~18_combout\,
	datac => \PrefixNetwork|ALT_INV_Gk[3][19]~combout\,
	datad => \PrefixNetwork|ALT_INV_Pk[2][27]~22_combout\,
	dataf => \ALT_INV_c[28]~33_combout\,
	combout => \c[28]~34_combout\);

-- Location: MLABCELL_X46_Y4_N32
\S~31\ : arriaii_lcell_comb
-- Equation(s):
-- \S~31_combout\ = ( \c[28]~34_combout\ & ( !p(28) $ (((!\PrefixNetwork|Pk[2][27]~22_combout\) # ((!\c[28]~24_combout\) # (\c[12]~9_combout\)))) ) ) # ( !\c[28]~34_combout\ & ( !p(28) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110000110011011000110011001101100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|ALT_INV_Pk[2][27]~22_combout\,
	datab => ALT_INV_p(28),
	datac => \ALT_INV_c[12]~9_combout\,
	datad => \ALT_INV_c[28]~24_combout\,
	dataf => \ALT_INV_c[28]~34_combout\,
	combout => \S~31_combout\);

-- Location: LABCELL_X58_Y4_N4
\c[29]~36\ : arriaii_lcell_comb
-- Equation(s):
-- \c[29]~36_combout\ = ( p(28) & ( \PrefixNetwork|Gk~65_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|ALT_INV_Gk~65_combout\,
	dataf => ALT_INV_p(28),
	combout => \c[29]~36_combout\);

-- Location: LABCELL_X58_Y4_N8
\c[29]~37\ : arriaii_lcell_comb
-- Equation(s):
-- \c[29]~37_combout\ = ( \PrefixNetwork|Pk[2][24]~19_combout\ & ( (\c[29]~36_combout\ & p(25)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_c[29]~36_combout\,
	datad => ALT_INV_p(25),
	dataf => \PrefixNetwork|ALT_INV_Pk[2][24]~19_combout\,
	combout => \c[29]~37_combout\);

-- Location: IOIBUF_X59_Y10_N1
\B[29]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(29),
	o => \B[29]~input_o\);

-- Location: IOIBUF_X59_Y10_N63
\A[29]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(29),
	o => \A[29]~input_o\);

-- Location: LABCELL_X58_Y4_N10
\p[29]\ : arriaii_lcell_comb
-- Equation(s):
-- p(29) = ( \A[29]~input_o\ & ( !\B[29]~input_o\ ) ) # ( !\A[29]~input_o\ & ( \B[29]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[29]~input_o\,
	dataf => \ALT_INV_A[29]~input_o\,
	combout => p(29));

-- Location: LABCELL_X58_Y4_N28
\c[29]~38\ : arriaii_lcell_comb
-- Equation(s):
-- \c[29]~38_combout\ = ( p(28) & ( !\B[27]~input_o\ $ (!\A[27]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[27]~input_o\,
	datad => \ALT_INV_A[27]~input_o\,
	dataf => ALT_INV_p(28),
	combout => \c[29]~38_combout\);

-- Location: LABCELL_X58_Y4_N34
\PrefixNetwork|Gk[1][28]~67\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][28]~67_combout\ = ( \A[28]~input_o\ & ( ((\A[27]~input_o\ & \B[27]~input_o\)) # (\B[28]~input_o\) ) ) # ( !\A[28]~input_o\ & ( (\B[28]~input_o\ & (\A[27]~input_o\ & \B[27]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010101010101010111110101010101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[28]~input_o\,
	datac => \ALT_INV_A[27]~input_o\,
	datad => \ALT_INV_B[27]~input_o\,
	dataf => \ALT_INV_A[28]~input_o\,
	combout => \PrefixNetwork|Gk[1][28]~67_combout\);

-- Location: LABCELL_X58_Y4_N22
\c[29]~40\ : arriaii_lcell_comb
-- Equation(s):
-- \c[29]~40_combout\ = ( \PrefixNetwork|Gk~61_combout\ & ( (\PrefixNetwork|Gk[1][22]~55_combout\ & (\c[29]~36_combout\ & (!\A[23]~input_o\ $ (!\B[23]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001100000000000000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[23]~input_o\,
	datab => \ALT_INV_B[23]~input_o\,
	datac => \PrefixNetwork|ALT_INV_Gk[1][22]~55_combout\,
	datad => \ALT_INV_c[29]~36_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk~61_combout\,
	combout => \c[29]~40_combout\);

-- Location: LABCELL_X58_Y4_N32
\c[29]~39\ : arriaii_lcell_comb
-- Equation(s):
-- \c[29]~39_combout\ = ( \PrefixNetwork|Gk[1][24]~60_combout\ & ( (\c[29]~36_combout\ & p(25)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_c[29]~36_combout\,
	datad => ALT_INV_p(25),
	dataf => \PrefixNetwork|ALT_INV_Gk[1][24]~60_combout\,
	combout => \c[29]~39_combout\);

-- Location: LABCELL_X58_Y4_N30
\c[29]~41\ : arriaii_lcell_comb
-- Equation(s):
-- \c[29]~41_combout\ = ( !\c[29]~39_combout\ & ( (!\PrefixNetwork|Gk[1][28]~67_combout\ & (!\c[29]~40_combout\ & ((!\c[29]~38_combout\) # (!\PrefixNetwork|Gk[1][26]~64_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000010000000110000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_c[29]~38_combout\,
	datab => \PrefixNetwork|ALT_INV_Gk[1][28]~67_combout\,
	datac => \ALT_INV_c[29]~40_combout\,
	datad => \PrefixNetwork|ALT_INV_Gk[1][26]~64_combout\,
	dataf => \ALT_INV_c[29]~39_combout\,
	combout => \c[29]~41_combout\);

-- Location: LABCELL_X50_Y4_N24
\c[21]~35\ : arriaii_lcell_comb
-- Equation(s):
-- \c[21]~35_combout\ = ( \PrefixNetwork|Pk[2][16]~11_combout\ & ( \PrefixNetwork|Pk[2][20]~15_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PrefixNetwork|ALT_INV_Pk[2][20]~15_combout\,
	dataf => \PrefixNetwork|ALT_INV_Pk[2][16]~11_combout\,
	combout => \c[21]~35_combout\);

-- Location: LABCELL_X58_Y4_N0
\S~32\ : arriaii_lcell_comb
-- Equation(s):
-- \S~32_combout\ = ( \c[21]~35_combout\ & ( \c[13]~11_combout\ & ( !p(29) $ (((\c[29]~41_combout\ & ((!\c[29]~37_combout\) # (\PrefixNetwork|Gk[3][20]~combout\))))) ) ) ) # ( !\c[21]~35_combout\ & ( \c[13]~11_combout\ & ( !p(29) $ (((\c[29]~41_combout\ & 
-- ((!\c[29]~37_combout\) # (\PrefixNetwork|Gk[3][20]~combout\))))) ) ) ) # ( \c[21]~35_combout\ & ( !\c[13]~11_combout\ & ( !p(29) $ (((!\c[29]~37_combout\ & \c[29]~41_combout\))) ) ) ) # ( !\c[21]~35_combout\ & ( !\c[13]~11_combout\ & ( !p(29) $ 
-- (((\c[29]~41_combout\ & ((!\c[29]~37_combout\) # (\PrefixNetwork|Gk[3][20]~combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110001100011110011000110011011001100011000111100110001100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_c[29]~37_combout\,
	datab => ALT_INV_p(29),
	datac => \PrefixNetwork|ALT_INV_Gk[3][20]~combout\,
	datad => \ALT_INV_c[29]~41_combout\,
	datae => \ALT_INV_c[21]~35_combout\,
	dataf => \ALT_INV_c[13]~11_combout\,
	combout => \S~32_combout\);

-- Location: IOIBUF_X59_Y15_N1
\B[30]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(30),
	o => \B[30]~input_o\);

-- Location: MLABCELL_X57_Y4_N4
\c[30]~42\ : arriaii_lcell_comb
-- Equation(s):
-- \c[30]~42_combout\ = ( p(29) & ( \c[29]~36_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => ALT_INV_p(29),
	dataf => \ALT_INV_c[29]~36_combout\,
	combout => \c[30]~42_combout\);

-- Location: MLABCELL_X44_Y4_N14
\c[30]~43\ : arriaii_lcell_comb
-- Equation(s):
-- \c[30]~43_combout\ = ( \c[30]~42_combout\ & ( (\PrefixNetwork|Pk[2][17]~12_combout\ & (\PrefixNetwork|Pk[2][25]~20_combout\ & \PrefixNetwork|Pk[2][21]~16_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PrefixNetwork|ALT_INV_Pk[2][17]~12_combout\,
	datac => \PrefixNetwork|ALT_INV_Pk[2][25]~20_combout\,
	datad => \PrefixNetwork|ALT_INV_Pk[2][21]~16_combout\,
	dataf => \ALT_INV_c[30]~42_combout\,
	combout => \c[30]~43_combout\);

-- Location: IOIBUF_X59_Y13_N94
\A[30]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(30),
	o => \A[30]~input_o\);

-- Location: LABCELL_X58_Y4_N6
\PrefixNetwork|Gk[1][29]~68\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][29]~68_combout\ = ( \A[28]~input_o\ & ( (!\B[28]~input_o\ & (\A[29]~input_o\ & \B[29]~input_o\)) # (\B[28]~input_o\ & ((\B[29]~input_o\) # (\A[29]~input_o\))) ) ) # ( !\A[28]~input_o\ & ( (\A[29]~input_o\ & \B[29]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000101010111110000010101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[28]~input_o\,
	datac => \ALT_INV_A[29]~input_o\,
	datad => \ALT_INV_B[29]~input_o\,
	dataf => \ALT_INV_A[28]~input_o\,
	combout => \PrefixNetwork|Gk[1][29]~68_combout\);

-- Location: LABCELL_X45_Y4_N26
\c[30]~44\ : arriaii_lcell_comb
-- Equation(s):
-- \c[30]~44_combout\ = ( p(28) & ( (!\PrefixNetwork|Gk[1][29]~68_combout\ & ((!\PrefixNetwork|Gk[1][27]~66_combout\) # (!p(29)))) ) ) # ( !p(28) & ( !\PrefixNetwork|Gk[1][29]~68_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000110000001111000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PrefixNetwork|ALT_INV_Gk[1][27]~66_combout\,
	datac => \PrefixNetwork|ALT_INV_Gk[1][29]~68_combout\,
	datad => ALT_INV_p(29),
	dataf => ALT_INV_p(28),
	combout => \c[30]~44_combout\);

-- Location: MLABCELL_X44_Y4_N38
\c[30]~45\ : arriaii_lcell_comb
-- Equation(s):
-- \c[30]~45_combout\ = ( \c[30]~44_combout\ & ( \c[30]~42_combout\ & ( (!\PrefixNetwork|Gk[1][25]~62_combout\ & (!\PrefixNetwork|Gk~63_combout\ & ((!\PrefixNetwork|Pk[2][25]~20_combout\) # (\PrefixNetwork|Gk[3][21]~combout\)))) ) ) ) # ( \c[30]~44_combout\ 
-- & ( !\c[30]~42_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|ALT_INV_Gk[1][25]~62_combout\,
	datab => \PrefixNetwork|ALT_INV_Gk~63_combout\,
	datac => \PrefixNetwork|ALT_INV_Gk[3][21]~combout\,
	datad => \PrefixNetwork|ALT_INV_Pk[2][25]~20_combout\,
	datae => \ALT_INV_c[30]~44_combout\,
	dataf => \ALT_INV_c[30]~42_combout\,
	combout => \c[30]~45_combout\);

-- Location: MLABCELL_X44_Y4_N34
\S~33\ : arriaii_lcell_comb
-- Equation(s):
-- \S~33_combout\ = ( \c[30]~45_combout\ & ( !\B[30]~input_o\ $ (!\A[30]~input_o\ $ (((!\c[14]~12_combout\ & \c[30]~43_combout\)))) ) ) # ( !\c[30]~45_combout\ & ( !\B[30]~input_o\ $ (\A[30]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101001010101101010100101010101011001101001100101100110100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[30]~input_o\,
	datab => \ALT_INV_c[14]~12_combout\,
	datac => \ALT_INV_c[30]~43_combout\,
	datad => \ALT_INV_A[30]~input_o\,
	dataf => \ALT_INV_c[30]~45_combout\,
	combout => \S~33_combout\);

-- Location: IOIBUF_X59_Y15_N63
\A[31]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(31),
	o => \A[31]~input_o\);

-- Location: IOIBUF_X59_Y18_N63
\B[31]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(31),
	o => \B[31]~input_o\);

-- Location: LABCELL_X45_Y4_N6
\PrefixNetwork|Pk[2][26]~21\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[2][26]~21_combout\ = ( \B[23]~input_o\ & ( \PrefixNetwork|Gk~61_combout\ & ( (!\A[23]~input_o\ & (!\B[26]~input_o\ $ (!\A[26]~input_o\))) ) ) ) # ( !\B[23]~input_o\ & ( \PrefixNetwork|Gk~61_combout\ & ( (\A[23]~input_o\ & 
-- (!\B[26]~input_o\ $ (!\A[26]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011001100000000110011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[23]~input_o\,
	datac => \ALT_INV_B[26]~input_o\,
	datad => \ALT_INV_A[26]~input_o\,
	datae => \ALT_INV_B[23]~input_o\,
	dataf => \PrefixNetwork|ALT_INV_Gk~61_combout\,
	combout => \PrefixNetwork|Pk[2][26]~21_combout\);

-- Location: LABCELL_X58_Y4_N38
\PrefixNetwork|Gk~69\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~69_combout\ = ( \A[29]~input_o\ & ( (!\B[29]~input_o\ & (!\A[30]~input_o\ $ (!\B[30]~input_o\))) ) ) # ( !\A[29]~input_o\ & ( (\B[29]~input_o\ & (!\A[30]~input_o\ $ (!\B[30]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100001100000000110000110000110000110000000011000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[30]~input_o\,
	datac => \ALT_INV_B[29]~input_o\,
	datad => \ALT_INV_B[30]~input_o\,
	dataf => \ALT_INV_A[29]~input_o\,
	combout => \PrefixNetwork|Gk~69_combout\);

-- Location: LABCELL_X55_Y4_N36
\PrefixNetwork|Gk~70\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~70_combout\ = ( \c[29]~38_combout\ & ( (\PrefixNetwork|Pk[2][26]~21_combout\ & \PrefixNetwork|Gk~69_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|ALT_INV_Pk[2][26]~21_combout\,
	datad => \PrefixNetwork|ALT_INV_Gk~69_combout\,
	dataf => \ALT_INV_c[29]~38_combout\,
	combout => \PrefixNetwork|Gk~70_combout\);

-- Location: MLABCELL_X54_Y4_N12
\c[31]~48\ : arriaii_lcell_comb
-- Equation(s):
-- \c[31]~48_combout\ = ( \c~4_combout\ & ( \PrefixNetwork|Gk~70_combout\ & ( (\PrefixNetwork|Pk[2][18]~13_combout\ & (\PrefixNetwork|Pk[2][22]~17_combout\ & ((!\PrefixNetwork|Gk[3][14]~combout\) # (\c~13_combout\)))) ) ) ) # ( !\c~4_combout\ & ( 
-- \PrefixNetwork|Gk~70_combout\ & ( (\PrefixNetwork|Pk[2][18]~13_combout\ & (\PrefixNetwork|Pk[2][22]~17_combout\ & !\PrefixNetwork|Gk[3][14]~combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010001000000000001000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|ALT_INV_Pk[2][18]~13_combout\,
	datab => \PrefixNetwork|ALT_INV_Pk[2][22]~17_combout\,
	datac => \ALT_INV_c~13_combout\,
	datad => \PrefixNetwork|ALT_INV_Gk[3][14]~combout\,
	datae => \ALT_INV_c~4_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk~70_combout\,
	combout => \c[31]~48_combout\);

-- Location: LABCELL_X55_Y4_N0
\PrefixNetwork|Gk~71\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~71_combout\ = ( !\PrefixNetwork|Gpre[6]~2_combout\ & ( (\PrefixNetwork|Pk[2][22]~17_combout\ & (\PrefixNetwork|Pk[2][18]~13_combout\ & (\c~13_combout\ & \PrefixNetwork|Gk~70_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|ALT_INV_Pk[2][22]~17_combout\,
	datab => \PrefixNetwork|ALT_INV_Pk[2][18]~13_combout\,
	datac => \ALT_INV_c~13_combout\,
	datad => \PrefixNetwork|ALT_INV_Gk~70_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gpre[6]~2_combout\,
	combout => \PrefixNetwork|Gk~71_combout\);

-- Location: LABCELL_X58_Y4_N18
\PrefixNetwork|Gk[1][30]~72\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][30]~72_combout\ = ( \B[30]~input_o\ & ( ((\A[29]~input_o\ & \B[29]~input_o\)) # (\A[30]~input_o\) ) ) # ( !\B[30]~input_o\ & ( (\A[29]~input_o\ & (\B[29]~input_o\ & \A[30]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100000011111111110000001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[29]~input_o\,
	datac => \ALT_INV_B[29]~input_o\,
	datad => \ALT_INV_A[30]~input_o\,
	dataf => \ALT_INV_B[30]~input_o\,
	combout => \PrefixNetwork|Gk[1][30]~72_combout\);

-- Location: LABCELL_X58_Y4_N14
\c[31]~46\ : arriaii_lcell_comb
-- Equation(s):
-- \c[31]~46_combout\ = ( \PrefixNetwork|Gk[1][26]~64_combout\ & ( \PrefixNetwork|Gk~69_combout\ & ( (!\PrefixNetwork|Gk[1][28]~67_combout\ & (!\c[29]~38_combout\ & !\PrefixNetwork|Gk[1][30]~72_combout\)) ) ) ) # ( !\PrefixNetwork|Gk[1][26]~64_combout\ & ( 
-- \PrefixNetwork|Gk~69_combout\ & ( (!\PrefixNetwork|Gk[1][28]~67_combout\ & !\PrefixNetwork|Gk[1][30]~72_combout\) ) ) ) # ( \PrefixNetwork|Gk[1][26]~64_combout\ & ( !\PrefixNetwork|Gk~69_combout\ & ( !\PrefixNetwork|Gk[1][30]~72_combout\ ) ) ) # ( 
-- !\PrefixNetwork|Gk[1][26]~64_combout\ & ( !\PrefixNetwork|Gk~69_combout\ & ( !\PrefixNetwork|Gk[1][30]~72_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011001100000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PrefixNetwork|ALT_INV_Gk[1][28]~67_combout\,
	datac => \ALT_INV_c[29]~38_combout\,
	datad => \PrefixNetwork|ALT_INV_Gk[1][30]~72_combout\,
	datae => \PrefixNetwork|ALT_INV_Gk[1][26]~64_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk~69_combout\,
	combout => \c[31]~46_combout\);

-- Location: LABCELL_X55_Y4_N38
\c[31]~47\ : arriaii_lcell_comb
-- Equation(s):
-- \c[31]~47_combout\ = ( \c[31]~46_combout\ & ( (!\c[29]~39_combout\ & (((!\PrefixNetwork|Gk~70_combout\) # (\PrefixNetwork|Gk[3][22]~combout\)))) # (\c[29]~39_combout\ & (!\PrefixNetwork|Gk~69_combout\ & ((!\PrefixNetwork|Gk~70_combout\) # 
-- (\PrefixNetwork|Gk[3][22]~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011101110000011101110111000001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_c[29]~39_combout\,
	datab => \PrefixNetwork|ALT_INV_Gk~69_combout\,
	datac => \PrefixNetwork|ALT_INV_Gk[3][22]~combout\,
	datad => \PrefixNetwork|ALT_INV_Gk~70_combout\,
	dataf => \ALT_INV_c[31]~46_combout\,
	combout => \c[31]~47_combout\);

-- Location: LABCELL_X55_Y4_N20
\S~34\ : arriaii_lcell_comb
-- Equation(s):
-- \S~34_combout\ = ( \c[31]~47_combout\ & ( !\A[31]~input_o\ $ (!\B[31]~input_o\ $ (((\PrefixNetwork|Gk~71_combout\) # (\c[31]~48_combout\)))) ) ) # ( !\c[31]~47_combout\ & ( !\A[31]~input_o\ $ (\B[31]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100110011001100110011001100101101001100110010110100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[31]~input_o\,
	datab => \ALT_INV_B[31]~input_o\,
	datac => \ALT_INV_c[31]~48_combout\,
	datad => \PrefixNetwork|ALT_INV_Gk~71_combout\,
	dataf => \ALT_INV_c[31]~47_combout\,
	combout => \S~34_combout\);

-- Location: LABCELL_X55_Y4_N8
\PrefixNetwork|Gk~73\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~73_combout\ = ( p(28) & ( (\PrefixNetwork|Gk~69_combout\ & (!\B[31]~input_o\ $ (!\A[31]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001111000000000000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[31]~input_o\,
	datac => \ALT_INV_A[31]~input_o\,
	datad => \PrefixNetwork|ALT_INV_Gk~69_combout\,
	dataf => ALT_INV_p(28),
	combout => \PrefixNetwork|Gk~73_combout\);

-- Location: LABCELL_X55_Y4_N10
\PrefixNetwork|Pk[4][31]~23\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[4][31]~23_combout\ = ( \PrefixNetwork|Pk[2][27]~22_combout\ & ( (\PrefixNetwork|Gk~73_combout\ & (\PrefixNetwork|Pk[2][23]~18DUPLICATE_combout\ & \PrefixNetwork|Pk[2][19]~14_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|ALT_INV_Gk~73_combout\,
	datac => \PrefixNetwork|ALT_INV_Pk[2][23]~18DUPLICATE_combout\,
	datad => \PrefixNetwork|ALT_INV_Pk[2][19]~14_combout\,
	dataf => \PrefixNetwork|ALT_INV_Pk[2][27]~22_combout\,
	combout => \PrefixNetwork|Pk[4][31]~23_combout\);

-- Location: LABCELL_X55_Y4_N26
\c~51\ : arriaii_lcell_comb
-- Equation(s):
-- \c~51_combout\ = ( \PrefixNetwork|Pk[4][31]~23_combout\ & ( (!\PrefixNetwork|Gk[3][15]~combout\) # ((\c~5_combout\ & \c~14_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000111111111100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_c~5_combout\,
	datac => \ALT_INV_c~14_combout\,
	datad => \PrefixNetwork|ALT_INV_Gk[3][15]~combout\,
	dataf => \PrefixNetwork|ALT_INV_Pk[4][31]~23_combout\,
	combout => \c~51_combout\);

-- Location: LABCELL_X55_Y4_N22
\PrefixNetwork|Gk[1][31]~75\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][31]~75_combout\ = ( \A[30]~input_o\ & ( (!\B[31]~input_o\ & (\B[30]~input_o\ & \A[31]~input_o\)) # (\B[31]~input_o\ & ((\A[31]~input_o\) # (\B[30]~input_o\))) ) ) # ( !\A[30]~input_o\ & ( (\B[31]~input_o\ & \A[31]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100000011001111110000001100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[31]~input_o\,
	datac => \ALT_INV_B[30]~input_o\,
	datad => \ALT_INV_A[31]~input_o\,
	dataf => \ALT_INV_A[30]~input_o\,
	combout => \PrefixNetwork|Gk[1][31]~75_combout\);

-- Location: LABCELL_X58_Y4_N26
\PrefixNetwork|Gk~76\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~76_combout\ = ( \B[30]~input_o\ & ( (!\A[30]~input_o\ & (!\A[31]~input_o\ $ (!\B[31]~input_o\))) ) ) # ( !\B[30]~input_o\ & ( (\A[30]~input_o\ & (!\A[31]~input_o\ $ (!\B[31]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000111100000000000011110000111100000000000011110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[31]~input_o\,
	datac => \ALT_INV_B[31]~input_o\,
	datad => \ALT_INV_A[30]~input_o\,
	dataf => \ALT_INV_B[30]~input_o\,
	combout => \PrefixNetwork|Gk~76_combout\);

-- Location: LABCELL_X55_Y4_N18
\c~49\ : arriaii_lcell_comb
-- Equation(s):
-- \c~49_combout\ = ( \PrefixNetwork|Gk~76_combout\ & ( \c[29]~36_combout\ & ( (!\PrefixNetwork|Gk[1][31]~75_combout\ & (!\PrefixNetwork|Gk[1][29]~68_combout\ & ((!p(29)) # (!\PrefixNetwork|Gk[1][25]~62_combout\)))) ) ) ) # ( !\PrefixNetwork|Gk~76_combout\ & 
-- ( \c[29]~36_combout\ & ( !\PrefixNetwork|Gk[1][31]~75_combout\ ) ) ) # ( \PrefixNetwork|Gk~76_combout\ & ( !\c[29]~36_combout\ & ( (!\PrefixNetwork|Gk[1][31]~75_combout\ & !\PrefixNetwork|Gk[1][29]~68_combout\) ) ) ) # ( !\PrefixNetwork|Gk~76_combout\ & ( 
-- !\c[29]~36_combout\ & ( !\PrefixNetwork|Gk[1][31]~75_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100000000000011110000111100001110000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_p(29),
	datab => \PrefixNetwork|ALT_INV_Gk[1][25]~62_combout\,
	datac => \PrefixNetwork|ALT_INV_Gk[1][31]~75_combout\,
	datad => \PrefixNetwork|ALT_INV_Gk[1][29]~68_combout\,
	datae => \PrefixNetwork|ALT_INV_Gk~76_combout\,
	dataf => \ALT_INV_c[29]~36_combout\,
	combout => \c~49_combout\);

-- Location: LABCELL_X55_Y4_N12
\c~50\ : arriaii_lcell_comb
-- Equation(s):
-- \c~50_combout\ = ( \PrefixNetwork|Pk[2][27]~22_combout\ & ( (\c~49_combout\ & ((!\PrefixNetwork|Gk~73_combout\) # ((!\PrefixNetwork|Gk[1][27]~66_combout\ & \PrefixNetwork|Gk[3][23]~combout\)))) ) ) # ( !\PrefixNetwork|Pk[2][27]~22_combout\ & ( 
-- (\c~49_combout\ & ((!\PrefixNetwork|Gk~73_combout\) # (!\PrefixNetwork|Gk[1][27]~66_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011101110000000001110111000000000101011100000000010101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|ALT_INV_Gk~73_combout\,
	datab => \PrefixNetwork|ALT_INV_Gk[1][27]~66_combout\,
	datac => \PrefixNetwork|ALT_INV_Gk[3][23]~combout\,
	datad => \ALT_INV_c~49_combout\,
	dataf => \PrefixNetwork|ALT_INV_Pk[2][27]~22_combout\,
	combout => \c~50_combout\);

-- Location: LABCELL_X55_Y4_N14
\PrefixNetwork|Gk~74\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~74_combout\ = ( \PrefixNetwork|Pk[4][31]~23_combout\ & ( (!\PrefixNetwork|Gpre\(7) & \c~14_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|ALT_INV_Gpre\(7),
	datad => \ALT_INV_c~14_combout\,
	dataf => \PrefixNetwork|ALT_INV_Pk[4][31]~23_combout\,
	combout => \PrefixNetwork|Gk~74_combout\);

-- Location: LABCELL_X55_Y4_N2
\c~52\ : arriaii_lcell_comb
-- Equation(s):
-- \c~52_combout\ = ( \PrefixNetwork|Gk~74_combout\ ) # ( !\PrefixNetwork|Gk~74_combout\ & ( (!\c~50_combout\) # (\c~51_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100001111111111110000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_c~51_combout\,
	datad => \ALT_INV_c~50_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk~74_combout\,
	combout => \c~52_combout\);

-- Location: LABCELL_X55_Y4_N30
\Ovfl~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Ovfl~0_combout\ = ( \c~50_combout\ & ( \PrefixNetwork|Gk~74_combout\ & ( (\c[31]~47_combout\ & (!\PrefixNetwork|Gk~71_combout\ & !\c[31]~48_combout\)) ) ) ) # ( !\c~50_combout\ & ( \PrefixNetwork|Gk~74_combout\ & ( (\c[31]~47_combout\ & 
-- (!\PrefixNetwork|Gk~71_combout\ & !\c[31]~48_combout\)) ) ) ) # ( \c~50_combout\ & ( !\PrefixNetwork|Gk~74_combout\ & ( !\c~51_combout\ $ (((\c[31]~47_combout\ & (!\PrefixNetwork|Gk~71_combout\ & !\c[31]~48_combout\)))) ) ) ) # ( !\c~50_combout\ & ( 
-- !\PrefixNetwork|Gk~74_combout\ & ( (\c[31]~47_combout\ & (!\PrefixNetwork|Gk~71_combout\ & !\c[31]~48_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000000000101101001111000001000100000000000100010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_c[31]~47_combout\,
	datab => \PrefixNetwork|ALT_INV_Gk~71_combout\,
	datac => \ALT_INV_c~51_combout\,
	datad => \ALT_INV_c[31]~48_combout\,
	datae => \ALT_INV_c~50_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk~74_combout\,
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


