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

-- DATE "11/21/2026 11:50:00"

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
-- S[0]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[1]	=>  Location: PIN_AH10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[2]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[3]	=>  Location: PIN_AH11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[4]	=>  Location: PIN_AH8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[5]	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[6]	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[7]	=>  Location: PIN_AG3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[8]	=>  Location: PIN_AC11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[9]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[10]	=>  Location: PIN_AG4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[11]	=>  Location: PIN_AF6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[12]	=>  Location: PIN_W11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[13]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[14]	=>  Location: PIN_Y12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[15]	=>  Location: PIN_W12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cout	=>  Location: PIN_AE9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ovfl	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_AG6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_AH5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cin	=>  Location: PIN_AH7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_AH4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_AH6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_AF13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_AE10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_AF11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_AE13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_AE5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_AE7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_AF7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_AE8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_AF8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_AF5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_AE4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[8]	=>  Location: PIN_AH9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[9]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[10]	=>  Location: PIN_AE6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[11]	=>  Location: PIN_AC13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[11]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[12]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[12]	=>  Location: PIN_AF12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[13]	=>  Location: PIN_AH3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[13]	=>  Location: PIN_AH2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[14]	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[14]	=>  Location: PIN_AF4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[15]	=>  Location: PIN_AF2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[15]	=>  Location: PIN_AG9,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \Cin~input_o\ : std_logic;
SIGNAL \S~0_combout\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \S~1_combout\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gpre[1]~0_combout\ : std_logic;
SIGNAL \c~0_combout\ : std_logic;
SIGNAL \S~2_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gpre[6]~1DUPLICATE_combout\ : std_logic;
SIGNAL \c[3]~1_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][2]~0_combout\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \S~3_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][3]~1_combout\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \S~4_combout\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][4]~2_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~3_combout\ : std_logic;
SIGNAL \S~5_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~4_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][5]~5_combout\ : std_logic;
SIGNAL \c[6]~3_combout\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \c[6]~2_combout\ : std_logic;
SIGNAL \S~6_combout\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \c~4_combout\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \c[3]~5_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gpre[6]~2DUPLICATE_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][6]~6_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~7_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][4]~2DUPLICATE_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gpre[6]~3_combout\ : std_logic;
SIGNAL \S~7_combout\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \B[8]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gk~8_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~9_combout\ : std_logic;
SIGNAL \c~6_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][7]~10_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gpre[7]~4_combout\ : std_logic;
SIGNAL \S~8_combout\ : std_logic;
SIGNAL \B[9]~input_o\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][8]~11_combout\ : std_logic;
SIGNAL \S~10_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~12_combout\ : std_logic;
SIGNAL \S~9_combout\ : std_logic;
SIGNAL \S~11_combout\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \B[10]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Pk[2][9]~0_combout\ : std_logic;
SIGNAL \PrefixNetwork|Pk[2][9]~1_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][9]~13_combout\ : std_logic;
SIGNAL \S~12_combout\ : std_logic;
SIGNAL \S~13_combout\ : std_logic;
SIGNAL \B[11]~input_o\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gpre[6]~1_combout\ : std_logic;
SIGNAL \c[3]~7_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][10]~15_combout\ : std_logic;
SIGNAL \PrefixNetwork|Pk[2][10]~2_combout\ : std_logic;
SIGNAL \S~15_combout\ : std_logic;
SIGNAL \S~14_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~14_combout\ : std_logic;
SIGNAL \S~16_combout\ : std_logic;
SIGNAL \B[12]~input_o\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gk~16DUPLICATE_combout\ : std_logic;
SIGNAL \S~17_combout\ : std_logic;
SIGNAL \S~18_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][11]~17_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~16_combout\ : std_logic;
SIGNAL \S~19_combout\ : std_logic;
SIGNAL \S~20_combout\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \B[13]~input_o\ : std_logic;
SIGNAL \S~21_combout\ : std_logic;
SIGNAL \S~22_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][12]~18_combout\ : std_logic;
SIGNAL \S~23DUPLICATE_combout\ : std_logic;
SIGNAL \S~24_combout\ : std_logic;
SIGNAL \S~25_combout\ : std_logic;
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \B[14]~input_o\ : std_logic;
SIGNAL \S~27_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][13]~19_combout\ : std_logic;
SIGNAL \S~28_combout\ : std_logic;
SIGNAL \S~26_combout\ : std_logic;
SIGNAL \S~29_combout\ : std_logic;
SIGNAL \B[15]~input_o\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][12]~18DUPLICATE_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~20_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][14]~23_combout\ : std_logic;
SIGNAL \c[15]~8_combout\ : std_logic;
SIGNAL \S~23_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~21_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gpre[6]~2_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~22_combout\ : std_logic;
SIGNAL \c[15]~DUPLICATE_combout\ : std_logic;
SIGNAL \S~30_combout\ : std_logic;
SIGNAL \p[13]~DUPLICATE_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~28_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][15]~27_combout\ : std_logic;
SIGNAL \c~9_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~24_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~25_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~26_combout\ : std_logic;
SIGNAL \c~10_combout\ : std_logic;
SIGNAL \Ovfl~0_combout\ : std_logic;
SIGNAL p : std_logic_vector(15 DOWNTO 0);
SIGNAL c : std_logic_vector(16 DOWNTO 0);
SIGNAL \ALT_INV_S~28_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk[1][13]~19_combout\ : std_logic;
SIGNAL \ALT_INV_S~27_combout\ : std_logic;
SIGNAL \ALT_INV_S~26_combout\ : std_logic;
SIGNAL ALT_INV_p : std_logic_vector(14 DOWNTO 2);
SIGNAL \ALT_INV_S~24_combout\ : std_logic;
SIGNAL \ALT_INV_S~23_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk[1][12]~18_combout\ : std_logic;
SIGNAL \ALT_INV_S~22_combout\ : std_logic;
SIGNAL \ALT_INV_S~21_combout\ : std_logic;
SIGNAL \ALT_INV_S~19_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk[1][11]~17_combout\ : std_logic;
SIGNAL \ALT_INV_S~18_combout\ : std_logic;
SIGNAL \ALT_INV_S~17_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~16_combout\ : std_logic;
SIGNAL ALT_INV_c : std_logic_vector(15 DOWNTO 4);
SIGNAL \ALT_INV_S~15_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk[1][10]~15_combout\ : std_logic;
SIGNAL \ALT_INV_S~14_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Pk[2][10]~2_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~14_combout\ : std_logic;
SIGNAL \ALT_INV_c[3]~7_combout\ : std_logic;
SIGNAL \ALT_INV_S~12_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk[1][9]~13_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Pk[2][9]~1_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Pk[2][9]~0_combout\ : std_logic;
SIGNAL \ALT_INV_S~10_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~12_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk[1][8]~11_combout\ : std_logic;
SIGNAL \ALT_INV_S~9_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gpre[7]~4_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk[1][7]~10_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~9_combout\ : std_logic;
SIGNAL \ALT_INV_c~6_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~8_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gpre[6]~3_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~7_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk[1][6]~6_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gpre[6]~2_combout\ : std_logic;
SIGNAL \ALT_INV_c[3]~5_combout\ : std_logic;
SIGNAL \ALT_INV_c~4_combout\ : std_logic;
SIGNAL \ALT_INV_c[6]~3_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk[1][5]~5_combout\ : std_logic;
SIGNAL \ALT_INV_c[6]~2_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~4_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~3_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk[1][4]~2_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk[1][3]~1_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gpre[6]~1_combout\ : std_logic;
SIGNAL \ALT_INV_c[3]~1_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk[1][2]~0_combout\ : std_logic;
SIGNAL \ALT_INV_c~0_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gpre[1]~0_combout\ : std_logic;
SIGNAL \ALT_INV_c[15]~DUPLICATE_combout\ : std_logic;
SIGNAL \ALT_INV_S~23DUPLICATE_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk[1][12]~18DUPLICATE_combout\ : std_logic;
SIGNAL \ALT_INV_p[13]~DUPLICATE_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~16DUPLICATE_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gpre[6]~2DUPLICATE_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk[1][4]~2DUPLICATE_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gpre[6]~1DUPLICATE_combout\ : std_logic;
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
SIGNAL \ALT_INV_c~10_combout\ : std_logic;
SIGNAL \ALT_INV_c~9_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~28_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk[1][15]~27_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~26_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~25_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~24_combout\ : std_logic;
SIGNAL \ALT_INV_c[15]~8_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk[1][14]~23_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~22_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~21_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~20_combout\ : std_logic;

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
\ALT_INV_S~28_combout\ <= NOT \S~28_combout\;
\PrefixNetwork|ALT_INV_Gk[1][13]~19_combout\ <= NOT \PrefixNetwork|Gk[1][13]~19_combout\;
\ALT_INV_S~27_combout\ <= NOT \S~27_combout\;
\ALT_INV_S~26_combout\ <= NOT \S~26_combout\;
ALT_INV_p(14) <= NOT p(14);
\ALT_INV_S~24_combout\ <= NOT \S~24_combout\;
\ALT_INV_S~23_combout\ <= NOT \S~23_combout\;
\PrefixNetwork|ALT_INV_Gk[1][12]~18_combout\ <= NOT \PrefixNetwork|Gk[1][12]~18_combout\;
\ALT_INV_S~22_combout\ <= NOT \S~22_combout\;
\ALT_INV_S~21_combout\ <= NOT \S~21_combout\;
ALT_INV_p(13) <= NOT p(13);
\ALT_INV_S~19_combout\ <= NOT \S~19_combout\;
\PrefixNetwork|ALT_INV_Gk[1][11]~17_combout\ <= NOT \PrefixNetwork|Gk[1][11]~17_combout\;
\ALT_INV_S~18_combout\ <= NOT \S~18_combout\;
\ALT_INV_S~17_combout\ <= NOT \S~17_combout\;
\PrefixNetwork|ALT_INV_Gk~16_combout\ <= NOT \PrefixNetwork|Gk~16_combout\;
ALT_INV_p(12) <= NOT p(12);
ALT_INV_c(4) <= NOT c(4);
\ALT_INV_S~15_combout\ <= NOT \S~15_combout\;
\PrefixNetwork|ALT_INV_Gk[1][10]~15_combout\ <= NOT \PrefixNetwork|Gk[1][10]~15_combout\;
\ALT_INV_S~14_combout\ <= NOT \S~14_combout\;
\PrefixNetwork|ALT_INV_Pk[2][10]~2_combout\ <= NOT \PrefixNetwork|Pk[2][10]~2_combout\;
\PrefixNetwork|ALT_INV_Gk~14_combout\ <= NOT \PrefixNetwork|Gk~14_combout\;
\ALT_INV_c[3]~7_combout\ <= NOT \c[3]~7_combout\;
\ALT_INV_S~12_combout\ <= NOT \S~12_combout\;
\PrefixNetwork|ALT_INV_Gk[1][9]~13_combout\ <= NOT \PrefixNetwork|Gk[1][9]~13_combout\;
\PrefixNetwork|ALT_INV_Pk[2][9]~1_combout\ <= NOT \PrefixNetwork|Pk[2][9]~1_combout\;
\PrefixNetwork|ALT_INV_Pk[2][9]~0_combout\ <= NOT \PrefixNetwork|Pk[2][9]~0_combout\;
ALT_INV_p(10) <= NOT p(10);
\ALT_INV_S~10_combout\ <= NOT \S~10_combout\;
\PrefixNetwork|ALT_INV_Gk~12_combout\ <= NOT \PrefixNetwork|Gk~12_combout\;
\PrefixNetwork|ALT_INV_Gk[1][8]~11_combout\ <= NOT \PrefixNetwork|Gk[1][8]~11_combout\;
ALT_INV_p(9) <= NOT p(9);
\ALT_INV_S~9_combout\ <= NOT \S~9_combout\;
\PrefixNetwork|ALT_INV_Gpre[7]~4_combout\ <= NOT \PrefixNetwork|Gpre[7]~4_combout\;
\PrefixNetwork|ALT_INV_Gk[1][7]~10_combout\ <= NOT \PrefixNetwork|Gk[1][7]~10_combout\;
\PrefixNetwork|ALT_INV_Gk~9_combout\ <= NOT \PrefixNetwork|Gk~9_combout\;
\ALT_INV_c~6_combout\ <= NOT \c~6_combout\;
\PrefixNetwork|ALT_INV_Gk~8_combout\ <= NOT \PrefixNetwork|Gk~8_combout\;
\PrefixNetwork|ALT_INV_Gpre[6]~3_combout\ <= NOT \PrefixNetwork|Gpre[6]~3_combout\;
\PrefixNetwork|ALT_INV_Gk~7_combout\ <= NOT \PrefixNetwork|Gk~7_combout\;
\PrefixNetwork|ALT_INV_Gk[1][6]~6_combout\ <= NOT \PrefixNetwork|Gk[1][6]~6_combout\;
\PrefixNetwork|ALT_INV_Gpre[6]~2_combout\ <= NOT \PrefixNetwork|Gpre[6]~2_combout\;
\ALT_INV_c[3]~5_combout\ <= NOT \c[3]~5_combout\;
\ALT_INV_c~4_combout\ <= NOT \c~4_combout\;
\ALT_INV_c[6]~3_combout\ <= NOT \c[6]~3_combout\;
\PrefixNetwork|ALT_INV_Gk[1][5]~5_combout\ <= NOT \PrefixNetwork|Gk[1][5]~5_combout\;
\ALT_INV_c[6]~2_combout\ <= NOT \c[6]~2_combout\;
\PrefixNetwork|ALT_INV_Gk~4_combout\ <= NOT \PrefixNetwork|Gk~4_combout\;
ALT_INV_p(6) <= NOT p(6);
\PrefixNetwork|ALT_INV_Gk~3_combout\ <= NOT \PrefixNetwork|Gk~3_combout\;
\PrefixNetwork|ALT_INV_Gk[1][4]~2_combout\ <= NOT \PrefixNetwork|Gk[1][4]~2_combout\;
ALT_INV_p(5) <= NOT p(5);
\PrefixNetwork|ALT_INV_Gk[1][3]~1_combout\ <= NOT \PrefixNetwork|Gk[1][3]~1_combout\;
ALT_INV_p(4) <= NOT p(4);
\PrefixNetwork|ALT_INV_Gpre[6]~1_combout\ <= NOT \PrefixNetwork|Gpre[6]~1_combout\;
\ALT_INV_c[3]~1_combout\ <= NOT \c[3]~1_combout\;
\PrefixNetwork|ALT_INV_Gk[1][2]~0_combout\ <= NOT \PrefixNetwork|Gk[1][2]~0_combout\;
ALT_INV_p(3) <= NOT p(3);
\ALT_INV_c~0_combout\ <= NOT \c~0_combout\;
\PrefixNetwork|ALT_INV_Gpre[1]~0_combout\ <= NOT \PrefixNetwork|Gpre[1]~0_combout\;
ALT_INV_p(2) <= NOT p(2);
\ALT_INV_c[15]~DUPLICATE_combout\ <= NOT \c[15]~DUPLICATE_combout\;
\ALT_INV_S~23DUPLICATE_combout\ <= NOT \S~23DUPLICATE_combout\;
\PrefixNetwork|ALT_INV_Gk[1][12]~18DUPLICATE_combout\ <= NOT \PrefixNetwork|Gk[1][12]~18DUPLICATE_combout\;
\ALT_INV_p[13]~DUPLICATE_combout\ <= NOT \p[13]~DUPLICATE_combout\;
\PrefixNetwork|ALT_INV_Gk~16DUPLICATE_combout\ <= NOT \PrefixNetwork|Gk~16DUPLICATE_combout\;
\PrefixNetwork|ALT_INV_Gpre[6]~2DUPLICATE_combout\ <= NOT \PrefixNetwork|Gpre[6]~2DUPLICATE_combout\;
\PrefixNetwork|ALT_INV_Gk[1][4]~2DUPLICATE_combout\ <= NOT \PrefixNetwork|Gk[1][4]~2DUPLICATE_combout\;
\PrefixNetwork|ALT_INV_Gpre[6]~1DUPLICATE_combout\ <= NOT \PrefixNetwork|Gpre[6]~1DUPLICATE_combout\;
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
\ALT_INV_c~10_combout\ <= NOT \c~10_combout\;
\ALT_INV_c~9_combout\ <= NOT \c~9_combout\;
\PrefixNetwork|ALT_INV_Gk~28_combout\ <= NOT \PrefixNetwork|Gk~28_combout\;
\PrefixNetwork|ALT_INV_Gk[1][15]~27_combout\ <= NOT \PrefixNetwork|Gk[1][15]~27_combout\;
\PrefixNetwork|ALT_INV_Gk~26_combout\ <= NOT \PrefixNetwork|Gk~26_combout\;
\PrefixNetwork|ALT_INV_Gk~25_combout\ <= NOT \PrefixNetwork|Gk~25_combout\;
\PrefixNetwork|ALT_INV_Gk~24_combout\ <= NOT \PrefixNetwork|Gk~24_combout\;
ALT_INV_c(15) <= NOT c(15);
\ALT_INV_c[15]~8_combout\ <= NOT \c[15]~8_combout\;
\PrefixNetwork|ALT_INV_Gk[1][14]~23_combout\ <= NOT \PrefixNetwork|Gk[1][14]~23_combout\;
\PrefixNetwork|ALT_INV_Gk~22_combout\ <= NOT \PrefixNetwork|Gk~22_combout\;
\PrefixNetwork|ALT_INV_Gk~21_combout\ <= NOT \PrefixNetwork|Gk~21_combout\;
\PrefixNetwork|ALT_INV_Gk~20_combout\ <= NOT \PrefixNetwork|Gk~20_combout\;

-- Location: IOOBUF_X30_Y0_N36
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

-- Location: IOOBUF_X30_Y0_N2
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

-- Location: IOOBUF_X30_Y0_N98
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

-- Location: IOOBUF_X30_Y0_N67
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

-- Location: IOOBUF_X32_Y0_N98
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

-- Location: IOOBUF_X33_Y0_N98
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

-- Location: IOOBUF_X52_Y0_N36
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

-- Location: IOOBUF_X48_Y0_N5
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

-- Location: IOOBUF_X48_Y0_N98
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

-- Location: IOOBUF_X33_Y0_N33
\S[9]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~11_combout\,
	devoe => ww_devoe,
	o => \S[9]~output_o\);

-- Location: IOOBUF_X48_Y0_N67
\S[10]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~13_combout\,
	devoe => ww_devoe,
	o => \S[10]~output_o\);

-- Location: IOOBUF_X45_Y0_N67
\S[11]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~16_combout\,
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
	i => \S~20_combout\,
	devoe => ww_devoe,
	o => \S[12]~output_o\);

-- Location: IOOBUF_X39_Y0_N98
\S[13]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~25_combout\,
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
	i => \S~29_combout\,
	devoe => ww_devoe,
	o => \S[14]~output_o\);

-- Location: IOOBUF_X41_Y0_N33
\S[15]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~30_combout\,
	devoe => ww_devoe,
	o => \S[15]~output_o\);

-- Location: IOOBUF_X41_Y0_N5
\Cout~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \c~10_combout\,
	devoe => ww_devoe,
	o => \Cout~output_o\);

-- Location: IOOBUF_X41_Y0_N67
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

-- Location: IOIBUF_X33_Y0_N1
\A[0]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X35_Y0_N94
\B[0]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X32_Y0_N32
\Cin~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cin,
	o => \Cin~input_o\);

-- Location: MLABCELL_X34_Y1_N16
\S~0\ : arriaii_lcell_comb
-- Equation(s):
-- \S~0_combout\ = ( \B[0]~input_o\ & ( \Cin~input_o\ & ( \A[0]~input_o\ ) ) ) # ( !\B[0]~input_o\ & ( \Cin~input_o\ & ( !\A[0]~input_o\ ) ) ) # ( \B[0]~input_o\ & ( !\Cin~input_o\ & ( !\A[0]~input_o\ ) ) ) # ( !\B[0]~input_o\ & ( !\Cin~input_o\ & ( 
-- \A[0]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111111111110000000011111111000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_A[0]~input_o\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_Cin~input_o\,
	combout => \S~0_combout\);

-- Location: IOIBUF_X33_Y0_N63
\B[1]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: IOIBUF_X35_Y0_N32
\A[1]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: MLABCELL_X34_Y1_N6
\S~1\ : arriaii_lcell_comb
-- Equation(s):
-- \S~1_combout\ = ( \B[0]~input_o\ & ( \A[0]~input_o\ & ( !\B[1]~input_o\ $ (\A[1]~input_o\) ) ) ) # ( !\B[0]~input_o\ & ( \A[0]~input_o\ & ( !\B[1]~input_o\ $ (!\Cin~input_o\ $ (\A[1]~input_o\)) ) ) ) # ( \B[0]~input_o\ & ( !\A[0]~input_o\ & ( 
-- !\B[1]~input_o\ $ (!\Cin~input_o\ $ (\A[1]~input_o\)) ) ) ) # ( !\B[0]~input_o\ & ( !\A[0]~input_o\ & ( !\B[1]~input_o\ $ (!\A[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010110101010010110101010010101011010101001011010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_Cin~input_o\,
	datad => \ALT_INV_A[1]~input_o\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_A[0]~input_o\,
	combout => \S~1_combout\);

-- Location: IOIBUF_X39_Y0_N32
\B[2]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: IOIBUF_X35_Y0_N63
\A[2]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: LABCELL_X43_Y1_N10
\p[2]\ : arriaii_lcell_comb
-- Equation(s):
-- p(2) = ( \A[2]~input_o\ & ( !\B[2]~input_o\ ) ) # ( !\A[2]~input_o\ & ( \B[2]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_A[2]~input_o\,
	combout => p(2));

-- Location: LABCELL_X43_Y1_N8
\PrefixNetwork|Gpre[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gpre[1]~0_combout\ = ( \A[0]~input_o\ & ( (!\A[1]~input_o\ & (\B[0]~input_o\ & \B[1]~input_o\)) # (\A[1]~input_o\ & ((\B[1]~input_o\) # (\B[0]~input_o\))) ) ) # ( !\A[0]~input_o\ & ( (\A[1]~input_o\ & \B[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100000011001111110000001100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[1]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A[0]~input_o\,
	combout => \PrefixNetwork|Gpre[1]~0_combout\);

-- Location: LABCELL_X43_Y1_N14
\c~0\ : arriaii_lcell_comb
-- Equation(s):
-- \c~0_combout\ = ( \A[0]~input_o\ & ( (!\B[0]~input_o\ & (\Cin~input_o\ & (!\A[1]~input_o\ $ (!\B[1]~input_o\)))) ) ) # ( !\A[0]~input_o\ & ( (\B[0]~input_o\ & (\Cin~input_o\ & (!\A[1]~input_o\ $ (!\B[1]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000100000000010000010000000010000010000000001000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_A[1]~input_o\,
	datac => \ALT_INV_Cin~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A[0]~input_o\,
	combout => \c~0_combout\);

-- Location: LABCELL_X43_Y1_N32
\S~2\ : arriaii_lcell_comb
-- Equation(s):
-- \S~2_combout\ = ( \c~0_combout\ & ( !p(2) ) ) # ( !\c~0_combout\ & ( !p(2) $ (!\PrefixNetwork|Gpre[1]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_p(2),
	datad => \PrefixNetwork|ALT_INV_Gpre[1]~0_combout\,
	dataf => \ALT_INV_c~0_combout\,
	combout => \S~2_combout\);

-- Location: MLABCELL_X39_Y1_N10
\PrefixNetwork|Gpre[6]~1DUPLICATE\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gpre[6]~1DUPLICATE_combout\ = ( !\A[1]~input_o\ & ( \B[1]~input_o\ & ( !\B[2]~input_o\ $ (!\A[2]~input_o\) ) ) ) # ( \A[1]~input_o\ & ( !\B[1]~input_o\ & ( !\B[2]~input_o\ $ (!\A[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011111111000000001111111100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[2]~input_o\,
	datad => \ALT_INV_A[2]~input_o\,
	datae => \ALT_INV_A[1]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \PrefixNetwork|Gpre[6]~1DUPLICATE_combout\);

-- Location: MLABCELL_X39_Y1_N28
\c[3]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \c[3]~1_combout\ = ( \A[0]~input_o\ & ( (\Cin~input_o\) # (\B[0]~input_o\) ) ) # ( !\A[0]~input_o\ & ( (\B[0]~input_o\ & \Cin~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_Cin~input_o\,
	dataf => \ALT_INV_A[0]~input_o\,
	combout => \c[3]~1_combout\);

-- Location: MLABCELL_X39_Y1_N34
\PrefixNetwork|Gk[1][2]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][2]~0_combout\ = ( \A[1]~input_o\ & ( \B[1]~input_o\ & ( (\A[2]~input_o\) # (\B[2]~input_o\) ) ) ) # ( !\A[1]~input_o\ & ( \B[1]~input_o\ & ( (\B[2]~input_o\ & \A[2]~input_o\) ) ) ) # ( \A[1]~input_o\ & ( !\B[1]~input_o\ & ( 
-- (\B[2]~input_o\ & \A[2]~input_o\) ) ) ) # ( !\A[1]~input_o\ & ( !\B[1]~input_o\ & ( (\B[2]~input_o\ & \A[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000011110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[2]~input_o\,
	datad => \ALT_INV_A[2]~input_o\,
	datae => \ALT_INV_A[1]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \PrefixNetwork|Gk[1][2]~0_combout\);

-- Location: IOIBUF_X39_Y0_N63
\B[3]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: IOIBUF_X39_Y0_N1
\A[3]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: LABCELL_X43_Y1_N20
\p[3]\ : arriaii_lcell_comb
-- Equation(s):
-- p(3) = ( \A[3]~input_o\ & ( !\B[3]~input_o\ ) ) # ( !\A[3]~input_o\ & ( \B[3]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_A[3]~input_o\,
	combout => p(3));

-- Location: MLABCELL_X39_Y1_N12
\S~3\ : arriaii_lcell_comb
-- Equation(s):
-- \S~3_combout\ = ( p(3) & ( (!\PrefixNetwork|Gk[1][2]~0_combout\ & ((!\PrefixNetwork|Gpre[6]~1DUPLICATE_combout\) # (!\c[3]~1_combout\))) ) ) # ( !p(3) & ( ((\PrefixNetwork|Gpre[6]~1DUPLICATE_combout\ & \c[3]~1_combout\)) # 
-- (\PrefixNetwork|Gk[1][2]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111111111000000111111111111111100000000001111110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PrefixNetwork|ALT_INV_Gpre[6]~1DUPLICATE_combout\,
	datac => \ALT_INV_c[3]~1_combout\,
	datad => \PrefixNetwork|ALT_INV_Gk[1][2]~0_combout\,
	dataf => ALT_INV_p(3),
	combout => \S~3_combout\);

-- Location: LABCELL_X40_Y1_N28
\PrefixNetwork|Gk[1][3]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][3]~1_combout\ = ( \B[3]~input_o\ & ( \A[2]~input_o\ & ( (\A[3]~input_o\) # (\B[2]~input_o\) ) ) ) # ( !\B[3]~input_o\ & ( \A[2]~input_o\ & ( (\B[2]~input_o\ & \A[3]~input_o\) ) ) ) # ( \B[3]~input_o\ & ( !\A[2]~input_o\ & ( 
-- \A[3]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000011110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[2]~input_o\,
	datad => \ALT_INV_A[3]~input_o\,
	datae => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_A[2]~input_o\,
	combout => \PrefixNetwork|Gk[1][3]~1_combout\);

-- Location: IOIBUF_X35_Y0_N1
\A[4]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: IOIBUF_X47_Y0_N1
\B[4]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: LABCELL_X40_Y1_N32
\p[4]\ : arriaii_lcell_comb
-- Equation(s):
-- p(4) = ( \B[4]~input_o\ & ( !\A[4]~input_o\ ) ) # ( !\B[4]~input_o\ & ( \A[4]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_A[4]~input_o\,
	dataf => \ALT_INV_B[4]~input_o\,
	combout => p(4));

-- Location: LABCELL_X40_Y1_N16
\S~4\ : arriaii_lcell_comb
-- Equation(s):
-- \S~4_combout\ = ( \PrefixNetwork|Gpre[1]~0_combout\ & ( \c~0_combout\ & ( !p(4) $ (((!\PrefixNetwork|Gk[1][3]~1_combout\ & ((!p(3)) # (!p(2)))))) ) ) ) # ( !\PrefixNetwork|Gpre[1]~0_combout\ & ( \c~0_combout\ & ( !p(4) $ 
-- (((!\PrefixNetwork|Gk[1][3]~1_combout\ & ((!p(3)) # (!p(2)))))) ) ) ) # ( \PrefixNetwork|Gpre[1]~0_combout\ & ( !\c~0_combout\ & ( !p(4) $ (((!\PrefixNetwork|Gk[1][3]~1_combout\ & ((!p(3)) # (!p(2)))))) ) ) ) # ( !\PrefixNetwork|Gpre[1]~0_combout\ & ( 
-- !\c~0_combout\ & ( !\PrefixNetwork|Gk[1][3]~1_combout\ $ (!p(4)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010010110100111100001011010011110000101101001111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|ALT_INV_Gk[1][3]~1_combout\,
	datab => ALT_INV_p(3),
	datac => ALT_INV_p(4),
	datad => ALT_INV_p(2),
	datae => \PrefixNetwork|ALT_INV_Gpre[1]~0_combout\,
	dataf => \ALT_INV_c~0_combout\,
	combout => \S~4_combout\);

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

-- Location: LABCELL_X43_Y1_N16
\p[5]\ : arriaii_lcell_comb
-- Equation(s):
-- p(5) = ( \B[5]~input_o\ & ( !\A[5]~input_o\ ) ) # ( !\B[5]~input_o\ & ( \A[5]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[5]~input_o\,
	dataf => \ALT_INV_B[5]~input_o\,
	combout => p(5));

-- Location: MLABCELL_X39_Y1_N16
\PrefixNetwork|Gk[1][4]~2\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][4]~2_combout\ = ( \B[3]~input_o\ & ( \B[4]~input_o\ & ( (\A[3]~input_o\) # (\A[4]~input_o\) ) ) ) # ( !\B[3]~input_o\ & ( \B[4]~input_o\ & ( \A[4]~input_o\ ) ) ) # ( \B[3]~input_o\ & ( !\B[4]~input_o\ & ( (\A[4]~input_o\ & 
-- \A[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100001111000011110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[4]~input_o\,
	datad => \ALT_INV_A[3]~input_o\,
	datae => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_B[4]~input_o\,
	combout => \PrefixNetwork|Gk[1][4]~2_combout\);

-- Location: MLABCELL_X39_Y1_N14
\PrefixNetwork|Gk~3\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~3_combout\ = ( \B[4]~input_o\ & ( (!\A[4]~input_o\ & (!\A[3]~input_o\ $ (!\B[3]~input_o\))) ) ) # ( !\B[4]~input_o\ & ( (\A[4]~input_o\ & (!\A[3]~input_o\ $ (!\B[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101010000000001010101000000001010101000000000101010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[4]~input_o\,
	datac => \ALT_INV_A[3]~input_o\,
	datad => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_B[4]~input_o\,
	combout => \PrefixNetwork|Gk~3_combout\);

-- Location: LABCELL_X38_Y1_N24
\S~5\ : arriaii_lcell_comb
-- Equation(s):
-- \S~5_combout\ = ( \PrefixNetwork|Gk~3_combout\ & ( \PrefixNetwork|Gk[1][2]~0_combout\ & ( !p(5) ) ) ) # ( !\PrefixNetwork|Gk~3_combout\ & ( \PrefixNetwork|Gk[1][2]~0_combout\ & ( !p(5) $ (!\PrefixNetwork|Gk[1][4]~2_combout\) ) ) ) # ( 
-- \PrefixNetwork|Gk~3_combout\ & ( !\PrefixNetwork|Gk[1][2]~0_combout\ & ( !p(5) $ (((!\PrefixNetwork|Gk[1][4]~2_combout\ & ((!\c[3]~1_combout\) # (!\PrefixNetwork|Gpre[6]~1DUPLICATE_combout\))))) ) ) ) # ( !\PrefixNetwork|Gk~3_combout\ & ( 
-- !\PrefixNetwork|Gk[1][2]~0_combout\ & ( !p(5) $ (!\PrefixNetwork|Gk[1][4]~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010010110100110101001011010010110101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_p(5),
	datab => \ALT_INV_c[3]~1_combout\,
	datac => \PrefixNetwork|ALT_INV_Gk[1][4]~2_combout\,
	datad => \PrefixNetwork|ALT_INV_Gpre[6]~1DUPLICATE_combout\,
	datae => \PrefixNetwork|ALT_INV_Gk~3_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk[1][2]~0_combout\,
	combout => \S~5_combout\);

-- Location: LABCELL_X43_Y1_N34
\PrefixNetwork|Gk~4\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~4_combout\ = ( \B[4]~input_o\ & ( (!\A[4]~input_o\ & (!\A[5]~input_o\ $ (!\B[5]~input_o\))) ) ) # ( !\B[4]~input_o\ & ( (\A[4]~input_o\ & (!\A[5]~input_o\ $ (!\B[5]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001011010000000000101101001011010000000000101101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[5]~input_o\,
	datac => \ALT_INV_B[5]~input_o\,
	datad => \ALT_INV_A[4]~input_o\,
	dataf => \ALT_INV_B[4]~input_o\,
	combout => \PrefixNetwork|Gk~4_combout\);

-- Location: LABCELL_X43_Y1_N4
\PrefixNetwork|Gk[1][5]~5\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][5]~5_combout\ = ( \B[4]~input_o\ & ( (!\A[5]~input_o\ & (\A[4]~input_o\ & \B[5]~input_o\)) # (\A[5]~input_o\ & ((\B[5]~input_o\) # (\A[4]~input_o\))) ) ) # ( !\B[4]~input_o\ & ( (\A[5]~input_o\ & \B[5]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100000101010111110000010101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[5]~input_o\,
	datac => \ALT_INV_A[4]~input_o\,
	datad => \ALT_INV_B[5]~input_o\,
	dataf => \ALT_INV_B[4]~input_o\,
	combout => \PrefixNetwork|Gk[1][5]~5_combout\);

-- Location: MLABCELL_X44_Y1_N2
\c[6]~3\ : arriaii_lcell_comb
-- Equation(s):
-- \c[6]~3_combout\ = ( \PrefixNetwork|Gk[1][3]~1_combout\ & ( (!\PrefixNetwork|Gk~4_combout\ & !\PrefixNetwork|Gk[1][5]~5_combout\) ) ) # ( !\PrefixNetwork|Gk[1][3]~1_combout\ & ( !\PrefixNetwork|Gk[1][5]~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|ALT_INV_Gk~4_combout\,
	datad => \PrefixNetwork|ALT_INV_Gk[1][5]~5_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk[1][3]~1_combout\,
	combout => \c[6]~3_combout\);

-- Location: IOIBUF_X43_Y0_N94
\B[6]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: IOIBUF_X43_Y0_N32
\A[6]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: LABCELL_X43_Y1_N12
\p[6]\ : arriaii_lcell_comb
-- Equation(s):
-- p(6) = ( \A[6]~input_o\ & ( !\B[6]~input_o\ ) ) # ( !\A[6]~input_o\ & ( \B[6]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_B[6]~input_o\,
	dataf => \ALT_INV_A[6]~input_o\,
	combout => p(6));

-- Location: MLABCELL_X44_Y1_N0
\c[6]~2\ : arriaii_lcell_comb
-- Equation(s):
-- \c[6]~2_combout\ = ( \c~0_combout\ & ( (p(3) & (\PrefixNetwork|Gk~4_combout\ & p(2))) ) ) # ( !\c~0_combout\ & ( (p(3) & (\PrefixNetwork|Gk~4_combout\ & (p(2) & \PrefixNetwork|Gpre[1]~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_p(3),
	datab => \PrefixNetwork|ALT_INV_Gk~4_combout\,
	datac => ALT_INV_p(2),
	datad => \PrefixNetwork|ALT_INV_Gpre[1]~0_combout\,
	dataf => \ALT_INV_c~0_combout\,
	combout => \c[6]~2_combout\);

-- Location: MLABCELL_X44_Y1_N30
\S~6\ : arriaii_lcell_comb
-- Equation(s):
-- \S~6_combout\ = ( \c[6]~2_combout\ & ( !p(6) ) ) # ( !\c[6]~2_combout\ & ( !\c[6]~3_combout\ $ (p(6)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000001111111100000000111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_c[6]~3_combout\,
	datad => ALT_INV_p(6),
	dataf => \ALT_INV_c[6]~2_combout\,
	combout => \S~6_combout\);

-- Location: IOIBUF_X47_Y0_N63
\A[7]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: LABCELL_X43_Y1_N26
\c~4\ : arriaii_lcell_comb
-- Equation(s):
-- \c~4_combout\ = ( \c~0_combout\ & ( (p(3) & (\PrefixNetwork|Gk~4_combout\ & (p(2) & p(6)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_p(3),
	datab => \PrefixNetwork|ALT_INV_Gk~4_combout\,
	datac => ALT_INV_p(2),
	datad => ALT_INV_p(6),
	dataf => \ALT_INV_c~0_combout\,
	combout => \c~4_combout\);

-- Location: IOIBUF_X50_Y0_N1
\B[7]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: MLABCELL_X37_Y1_N24
\c[3]~5\ : arriaii_lcell_comb
-- Equation(s):
-- \c[3]~5_combout\ = ( \B[0]~input_o\ & ( \A[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_A[0]~input_o\,
	combout => \c[3]~5_combout\);

-- Location: MLABCELL_X42_Y1_N10
\PrefixNetwork|Gpre[6]~2DUPLICATE\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gpre[6]~2DUPLICATE_combout\ = ( p(3) & ( \PrefixNetwork|Gk[1][2]~0_combout\ & ( (p(6) & \PrefixNetwork|Gk~4_combout\) ) ) ) # ( p(3) & ( !\PrefixNetwork|Gk[1][2]~0_combout\ & ( (p(6) & (\c[3]~5_combout\ & 
-- (\PrefixNetwork|Gpre[6]~1DUPLICATE_combout\ & \PrefixNetwork|Gk~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000100000000000000000000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_p(6),
	datab => \ALT_INV_c[3]~5_combout\,
	datac => \PrefixNetwork|ALT_INV_Gpre[6]~1DUPLICATE_combout\,
	datad => \PrefixNetwork|ALT_INV_Gk~4_combout\,
	datae => ALT_INV_p(3),
	dataf => \PrefixNetwork|ALT_INV_Gk[1][2]~0_combout\,
	combout => \PrefixNetwork|Gpre[6]~2DUPLICATE_combout\);

-- Location: LABCELL_X43_Y1_N22
\PrefixNetwork|Gk[1][6]~6\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][6]~6_combout\ = ( \A[5]~input_o\ & ( (!\B[6]~input_o\ & (\A[6]~input_o\ & \B[5]~input_o\)) # (\B[6]~input_o\ & ((\B[5]~input_o\) # (\A[6]~input_o\))) ) ) # ( !\A[5]~input_o\ & ( (\B[6]~input_o\ & \A[6]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000011001111110000001100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[6]~input_o\,
	datac => \ALT_INV_A[6]~input_o\,
	datad => \ALT_INV_B[5]~input_o\,
	dataf => \ALT_INV_A[5]~input_o\,
	combout => \PrefixNetwork|Gk[1][6]~6_combout\);

-- Location: LABCELL_X43_Y1_N38
\PrefixNetwork|Gk~7\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~7_combout\ = ( \A[6]~input_o\ & ( (!\B[6]~input_o\ & (!\B[5]~input_o\ $ (!\A[5]~input_o\))) ) ) # ( !\A[6]~input_o\ & ( (\B[6]~input_o\ & (!\B[5]~input_o\ $ (!\A[5]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100110000000000110011000000001100110000000000110011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[6]~input_o\,
	datac => \ALT_INV_B[5]~input_o\,
	datad => \ALT_INV_A[5]~input_o\,
	dataf => \ALT_INV_A[6]~input_o\,
	combout => \PrefixNetwork|Gk~7_combout\);

-- Location: MLABCELL_X39_Y1_N18
\PrefixNetwork|Gk[1][4]~2DUPLICATE\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][4]~2DUPLICATE_combout\ = ( \B[3]~input_o\ & ( \B[4]~input_o\ & ( (\A[4]~input_o\) # (\A[3]~input_o\) ) ) ) # ( !\B[3]~input_o\ & ( \B[4]~input_o\ & ( \A[4]~input_o\ ) ) ) # ( \B[3]~input_o\ & ( !\B[4]~input_o\ & ( (\A[3]~input_o\ & 
-- \A[4]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[3]~input_o\,
	datad => \ALT_INV_A[4]~input_o\,
	datae => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_B[4]~input_o\,
	combout => \PrefixNetwork|Gk[1][4]~2DUPLICATE_combout\);

-- Location: LABCELL_X43_Y1_N6
\PrefixNetwork|Gpre[6]~3\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gpre[6]~3_combout\ = ( \PrefixNetwork|Gk[1][4]~2DUPLICATE_combout\ & ( (!\PrefixNetwork|Gk[1][6]~6_combout\ & !\PrefixNetwork|Gk~7_combout\) ) ) # ( !\PrefixNetwork|Gk[1][4]~2DUPLICATE_combout\ & ( !\PrefixNetwork|Gk[1][6]~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|ALT_INV_Gk[1][6]~6_combout\,
	datad => \PrefixNetwork|ALT_INV_Gk~7_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk[1][4]~2DUPLICATE_combout\,
	combout => \PrefixNetwork|Gpre[6]~3_combout\);

-- Location: LABCELL_X47_Y1_N24
\S~7\ : arriaii_lcell_comb
-- Equation(s):
-- \S~7_combout\ = ( \PrefixNetwork|Gpre[6]~2DUPLICATE_combout\ & ( \PrefixNetwork|Gpre[6]~3_combout\ & ( !\A[7]~input_o\ $ (\B[7]~input_o\) ) ) ) # ( !\PrefixNetwork|Gpre[6]~2DUPLICATE_combout\ & ( \PrefixNetwork|Gpre[6]~3_combout\ & ( !\A[7]~input_o\ $ 
-- (!\c~4_combout\ $ (\B[7]~input_o\)) ) ) ) # ( \PrefixNetwork|Gpre[6]~2DUPLICATE_combout\ & ( !\PrefixNetwork|Gpre[6]~3_combout\ & ( !\A[7]~input_o\ $ (\B[7]~input_o\) ) ) ) # ( !\PrefixNetwork|Gpre[6]~2DUPLICATE_combout\ & ( 
-- !\PrefixNetwork|Gpre[6]~3_combout\ & ( !\A[7]~input_o\ $ (\B[7]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000110011110011000011001100111100110000111100110000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[7]~input_o\,
	datac => \ALT_INV_c~4_combout\,
	datad => \ALT_INV_B[7]~input_o\,
	datae => \PrefixNetwork|ALT_INV_Gpre[6]~2DUPLICATE_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gpre[6]~3_combout\,
	combout => \S~7_combout\);

-- Location: IOIBUF_X52_Y0_N94
\A[8]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: IOIBUF_X32_Y0_N63
\B[8]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

-- Location: MLABCELL_X44_Y1_N34
\PrefixNetwork|Gk~8\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~8_combout\ = ( \B[7]~input_o\ & ( (!\A[7]~input_o\ & (!\A[6]~input_o\ $ (!\B[6]~input_o\))) ) ) # ( !\B[7]~input_o\ & ( (\A[7]~input_o\ & (!\A[6]~input_o\ $ (!\B[6]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100001100000000110000110000110000110000000011000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[6]~input_o\,
	datac => \ALT_INV_A[7]~input_o\,
	datad => \ALT_INV_B[6]~input_o\,
	dataf => \ALT_INV_B[7]~input_o\,
	combout => \PrefixNetwork|Gk~8_combout\);

-- Location: LABCELL_X43_Y1_N24
\PrefixNetwork|Gk~9\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~9_combout\ = ( \PrefixNetwork|Gpre[1]~0_combout\ & ( (p(3) & (\PrefixNetwork|Gk~4_combout\ & (\PrefixNetwork|Gk~8_combout\ & p(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_p(3),
	datab => \PrefixNetwork|ALT_INV_Gk~4_combout\,
	datac => \PrefixNetwork|ALT_INV_Gk~8_combout\,
	datad => ALT_INV_p(2),
	dataf => \PrefixNetwork|ALT_INV_Gpre[1]~0_combout\,
	combout => \PrefixNetwork|Gk~9_combout\);

-- Location: LABCELL_X43_Y1_N0
\c~6\ : arriaii_lcell_comb
-- Equation(s):
-- \c~6_combout\ = ( \c~0_combout\ & ( (\PrefixNetwork|Gk~8_combout\ & (\PrefixNetwork|Gk~4_combout\ & (p(3) & p(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|ALT_INV_Gk~8_combout\,
	datab => \PrefixNetwork|ALT_INV_Gk~4_combout\,
	datac => ALT_INV_p(3),
	datad => ALT_INV_p(2),
	dataf => \ALT_INV_c~0_combout\,
	combout => \c~6_combout\);

-- Location: MLABCELL_X44_Y1_N28
\PrefixNetwork|Gk[1][7]~10\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][7]~10_combout\ = ( \B[7]~input_o\ & ( ((\A[6]~input_o\ & \B[6]~input_o\)) # (\A[7]~input_o\) ) ) # ( !\B[7]~input_o\ & ( (\A[6]~input_o\ & (\B[6]~input_o\ & \A[7]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100000101111111110000010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[6]~input_o\,
	datac => \ALT_INV_B[6]~input_o\,
	datad => \ALT_INV_A[7]~input_o\,
	dataf => \ALT_INV_B[7]~input_o\,
	combout => \PrefixNetwork|Gk[1][7]~10_combout\);

-- Location: LABCELL_X43_Y1_N2
\PrefixNetwork|Gpre[7]~4\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gpre[7]~4_combout\ = ( \PrefixNetwork|Gk[1][3]~1_combout\ & ( (!\PrefixNetwork|Gk[1][7]~10_combout\ & ((!\PrefixNetwork|Gk~8_combout\) # ((!\PrefixNetwork|Gk~4_combout\ & !\PrefixNetwork|Gk[1][5]~5_combout\)))) ) ) # ( 
-- !\PrefixNetwork|Gk[1][3]~1_combout\ & ( (!\PrefixNetwork|Gk[1][7]~10_combout\ & ((!\PrefixNetwork|Gk~8_combout\) # (!\PrefixNetwork|Gk[1][5]~5_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000010100000111100001010000011100000101000001110000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|ALT_INV_Gk~8_combout\,
	datab => \PrefixNetwork|ALT_INV_Gk~4_combout\,
	datac => \PrefixNetwork|ALT_INV_Gk[1][7]~10_combout\,
	datad => \PrefixNetwork|ALT_INV_Gk[1][5]~5_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk[1][3]~1_combout\,
	combout => \PrefixNetwork|Gpre[7]~4_combout\);

-- Location: LABCELL_X43_Y1_N18
\S~8\ : arriaii_lcell_comb
-- Equation(s):
-- \S~8_combout\ = ( \PrefixNetwork|Gpre[7]~4_combout\ & ( !\A[8]~input_o\ $ (!\B[8]~input_o\ $ (((\c~6_combout\) # (\PrefixNetwork|Gk~9_combout\)))) ) ) # ( !\PrefixNetwork|Gpre[7]~4_combout\ & ( !\A[8]~input_o\ $ (\B[8]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100110011001100110011001100101101001100110010110100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[8]~input_o\,
	datab => \ALT_INV_B[8]~input_o\,
	datac => \PrefixNetwork|ALT_INV_Gk~9_combout\,
	datad => \ALT_INV_c~6_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gpre[7]~4_combout\,
	combout => \S~8_combout\);

-- Location: IOIBUF_X48_Y0_N32
\B[9]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(9),
	o => \B[9]~input_o\);

-- Location: IOIBUF_X47_Y0_N32
\A[9]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

-- Location: LABCELL_X47_Y1_N38
\p[9]\ : arriaii_lcell_comb
-- Equation(s):
-- p(9) = ( !\B[9]~input_o\ & ( \A[9]~input_o\ ) ) # ( \B[9]~input_o\ & ( !\A[9]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_B[9]~input_o\,
	dataf => \ALT_INV_A[9]~input_o\,
	combout => p(9));

-- Location: LABCELL_X43_Y1_N36
\PrefixNetwork|Gk[1][8]~11\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][8]~11_combout\ = ( \B[8]~input_o\ & ( ((\B[7]~input_o\ & \A[7]~input_o\)) # (\A[8]~input_o\) ) ) # ( !\B[8]~input_o\ & ( (\B[7]~input_o\ & (\A[8]~input_o\ & \A[7]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100001111010111110000111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[7]~input_o\,
	datac => \ALT_INV_A[8]~input_o\,
	datad => \ALT_INV_A[7]~input_o\,
	dataf => \ALT_INV_B[8]~input_o\,
	combout => \PrefixNetwork|Gk[1][8]~11_combout\);

-- Location: MLABCELL_X39_Y1_N0
\S~10\ : arriaii_lcell_comb
-- Equation(s):
-- \S~10_combout\ = ( \PrefixNetwork|Gk~7_combout\ & ( (!\A[7]~input_o\ & (\B[7]~input_o\ & (!\A[8]~input_o\ $ (!\B[8]~input_o\)))) # (\A[7]~input_o\ & (!\B[7]~input_o\ & (!\A[8]~input_o\ $ (!\B[8]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000110011000000000011001100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[7]~input_o\,
	datab => \ALT_INV_B[7]~input_o\,
	datac => \ALT_INV_A[8]~input_o\,
	datad => \ALT_INV_B[8]~input_o\,
	dataf => \PrefixNetwork|ALT_INV_Gk~7_combout\,
	combout => \S~10_combout\);

-- Location: MLABCELL_X39_Y1_N30
\PrefixNetwork|Gk~12\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~12_combout\ = ( \PrefixNetwork|Gk[1][6]~6_combout\ & ( (!\A[7]~input_o\ & (\B[7]~input_o\ & (!\A[8]~input_o\ $ (!\B[8]~input_o\)))) # (\A[7]~input_o\ & (!\B[7]~input_o\ & (!\A[8]~input_o\ $ (!\B[8]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010100001010000001010000101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[7]~input_o\,
	datab => \ALT_INV_A[8]~input_o\,
	datac => \ALT_INV_B[8]~input_o\,
	datad => \ALT_INV_B[7]~input_o\,
	dataf => \PrefixNetwork|ALT_INV_Gk[1][6]~6_combout\,
	combout => \PrefixNetwork|Gk~12_combout\);

-- Location: MLABCELL_X39_Y1_N4
\S~9\ : arriaii_lcell_comb
-- Equation(s):
-- \S~9_combout\ = ( !\PrefixNetwork|Gk[1][4]~2DUPLICATE_combout\ & ( \PrefixNetwork|Gk~3_combout\ & ( (!\PrefixNetwork|Gk[1][2]~0_combout\ & ((!\c[3]~1_combout\) # (!\PrefixNetwork|Gpre[6]~1DUPLICATE_combout\))) ) ) ) # ( 
-- !\PrefixNetwork|Gk[1][4]~2DUPLICATE_combout\ & ( !\PrefixNetwork|Gk~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011001100110000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PrefixNetwork|ALT_INV_Gk[1][2]~0_combout\,
	datac => \ALT_INV_c[3]~1_combout\,
	datad => \PrefixNetwork|ALT_INV_Gpre[6]~1DUPLICATE_combout\,
	datae => \PrefixNetwork|ALT_INV_Gk[1][4]~2DUPLICATE_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk~3_combout\,
	combout => \S~9_combout\);

-- Location: LABCELL_X38_Y1_N20
\S~11\ : arriaii_lcell_comb
-- Equation(s):
-- \S~11_combout\ = ( \PrefixNetwork|Gk~12_combout\ & ( \S~9_combout\ & ( !p(9) ) ) ) # ( !\PrefixNetwork|Gk~12_combout\ & ( \S~9_combout\ & ( !p(9) $ (!\PrefixNetwork|Gk[1][8]~11_combout\) ) ) ) # ( \PrefixNetwork|Gk~12_combout\ & ( !\S~9_combout\ & ( !p(9) 
-- ) ) ) # ( !\PrefixNetwork|Gk~12_combout\ & ( !\S~9_combout\ & ( !p(9) $ (((!\PrefixNetwork|Gk[1][8]~11_combout\ & !\S~10_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101010101010101010101010101001011010010110101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_p(9),
	datac => \PrefixNetwork|ALT_INV_Gk[1][8]~11_combout\,
	datad => \ALT_INV_S~10_combout\,
	datae => \PrefixNetwork|ALT_INV_Gk~12_combout\,
	dataf => \ALT_INV_S~9_combout\,
	combout => \S~11_combout\);

-- Location: IOIBUF_X47_Y0_N94
\A[10]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

-- Location: IOIBUF_X45_Y0_N1
\B[10]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(10),
	o => \B[10]~input_o\);

-- Location: MLABCELL_X44_Y1_N38
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

-- Location: MLABCELL_X44_Y1_N36
\PrefixNetwork|Pk[2][9]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[2][9]~0_combout\ = ( \B[8]~input_o\ & ( (!\A[8]~input_o\ & (!\B[9]~input_o\ $ (!\A[9]~input_o\))) ) ) # ( !\B[8]~input_o\ & ( (\A[8]~input_o\ & (!\B[9]~input_o\ $ (!\A[9]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100001010000001010000101001010000101000000101000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[9]~input_o\,
	datac => \ALT_INV_A[8]~input_o\,
	datad => \ALT_INV_A[9]~input_o\,
	dataf => \ALT_INV_B[8]~input_o\,
	combout => \PrefixNetwork|Pk[2][9]~0_combout\);

-- Location: MLABCELL_X44_Y1_N8
\PrefixNetwork|Pk[2][9]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[2][9]~1_combout\ = ( \PrefixNetwork|Pk[2][9]~0_combout\ & ( \PrefixNetwork|Gk~8_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PrefixNetwork|ALT_INV_Gk~8_combout\,
	dataf => \PrefixNetwork|ALT_INV_Pk[2][9]~0_combout\,
	combout => \PrefixNetwork|Pk[2][9]~1_combout\);

-- Location: MLABCELL_X44_Y1_N32
\PrefixNetwork|Gk[1][9]~13\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][9]~13_combout\ = ( \B[8]~input_o\ & ( (!\B[9]~input_o\ & (\A[8]~input_o\ & \A[9]~input_o\)) # (\B[9]~input_o\ & ((\A[9]~input_o\) # (\A[8]~input_o\))) ) ) # ( !\B[8]~input_o\ & ( (\B[9]~input_o\ & \A[9]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100000101010111110000010101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[9]~input_o\,
	datac => \ALT_INV_A[8]~input_o\,
	datad => \ALT_INV_A[9]~input_o\,
	dataf => \ALT_INV_B[8]~input_o\,
	combout => \PrefixNetwork|Gk[1][9]~13_combout\);

-- Location: MLABCELL_X44_Y1_N10
\S~12\ : arriaii_lcell_comb
-- Equation(s):
-- \S~12_combout\ = ( !\PrefixNetwork|Gk[1][9]~13_combout\ & ( (!\PrefixNetwork|Pk[2][9]~0_combout\) # ((!\PrefixNetwork|Gk[1][7]~10_combout\ & ((!\PrefixNetwork|Gk~8_combout\) # (!\PrefixNetwork|Gk[1][5]~5_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101011111000111110101111100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|ALT_INV_Gk[1][7]~10_combout\,
	datab => \PrefixNetwork|ALT_INV_Gk~8_combout\,
	datac => \PrefixNetwork|ALT_INV_Pk[2][9]~0_combout\,
	datad => \PrefixNetwork|ALT_INV_Gk[1][5]~5_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk[1][9]~13_combout\,
	combout => \S~12_combout\);

-- Location: MLABCELL_X44_Y1_N4
\S~13\ : arriaii_lcell_comb
-- Equation(s):
-- \S~13_combout\ = ( \PrefixNetwork|Pk[2][9]~1_combout\ & ( \S~12_combout\ & ( !p(10) $ (((!\c[6]~2_combout\ & ((!\PrefixNetwork|Gk~4_combout\) # (!\PrefixNetwork|Gk[1][3]~1_combout\))))) ) ) ) # ( !\PrefixNetwork|Pk[2][9]~1_combout\ & ( \S~12_combout\ & ( 
-- p(10) ) ) ) # ( \PrefixNetwork|Pk[2][9]~1_combout\ & ( !\S~12_combout\ & ( !p(10) ) ) ) # ( !\PrefixNetwork|Pk[2][9]~1_combout\ & ( !\S~12_combout\ & ( !p(10) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101001010101010101010101101001101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_p(10),
	datab => \PrefixNetwork|ALT_INV_Gk~4_combout\,
	datac => \ALT_INV_c[6]~2_combout\,
	datad => \PrefixNetwork|ALT_INV_Gk[1][3]~1_combout\,
	datae => \PrefixNetwork|ALT_INV_Pk[2][9]~1_combout\,
	dataf => \ALT_INV_S~12_combout\,
	combout => \S~13_combout\);

-- Location: IOIBUF_X37_Y0_N32
\B[11]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(11),
	o => \B[11]~input_o\);

-- Location: IOIBUF_X37_Y0_N94
\A[11]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(11),
	o => \A[11]~input_o\);

-- Location: MLABCELL_X39_Y1_N8
\PrefixNetwork|Gpre[6]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gpre[6]~1_combout\ = ( !\A[1]~input_o\ & ( \B[1]~input_o\ & ( !\A[2]~input_o\ $ (!\B[2]~input_o\) ) ) ) # ( \A[1]~input_o\ & ( !\B[1]~input_o\ & ( !\A[2]~input_o\ $ (!\B[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011111111000000001111111100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[2]~input_o\,
	datad => \ALT_INV_B[2]~input_o\,
	datae => \ALT_INV_A[1]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \PrefixNetwork|Gpre[6]~1_combout\);

-- Location: MLABCELL_X39_Y1_N2
\c[3]~7\ : arriaii_lcell_comb
-- Equation(s):
-- \c[3]~7_combout\ = ( \c[3]~1_combout\ & ( (!\PrefixNetwork|Gk[1][2]~0_combout\ & !\PrefixNetwork|Gpre[6]~1_combout\) ) ) # ( !\c[3]~1_combout\ & ( !\PrefixNetwork|Gk[1][2]~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|ALT_INV_Gk[1][2]~0_combout\,
	datad => \PrefixNetwork|ALT_INV_Gpre[6]~1_combout\,
	dataf => \ALT_INV_c[3]~1_combout\,
	combout => \c[3]~7_combout\);

-- Location: MLABCELL_X46_Y1_N6
\PrefixNetwork|Gk[1][10]~15\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][10]~15_combout\ = ( \A[9]~input_o\ & ( \B[10]~input_o\ & ( (\B[9]~input_o\) # (\A[10]~input_o\) ) ) ) # ( !\A[9]~input_o\ & ( \B[10]~input_o\ & ( \A[10]~input_o\ ) ) ) # ( \A[9]~input_o\ & ( !\B[10]~input_o\ & ( (\A[10]~input_o\ & 
-- \B[9]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100001111000011110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[10]~input_o\,
	datad => \ALT_INV_B[9]~input_o\,
	datae => \ALT_INV_A[9]~input_o\,
	dataf => \ALT_INV_B[10]~input_o\,
	combout => \PrefixNetwork|Gk[1][10]~15_combout\);

-- Location: MLABCELL_X46_Y1_N2
\PrefixNetwork|Pk[2][10]~2\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[2][10]~2_combout\ = ( \A[7]~input_o\ & ( \B[10]~input_o\ & ( (!\B[7]~input_o\ & !\A[10]~input_o\) ) ) ) # ( !\A[7]~input_o\ & ( \B[10]~input_o\ & ( (\B[7]~input_o\ & !\A[10]~input_o\) ) ) ) # ( \A[7]~input_o\ & ( !\B[10]~input_o\ & ( 
-- (!\B[7]~input_o\ & \A[10]~input_o\) ) ) ) # ( !\A[7]~input_o\ & ( !\B[10]~input_o\ & ( (\B[7]~input_o\ & \A[10]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000001111000000001111000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[7]~input_o\,
	datad => \ALT_INV_A[10]~input_o\,
	datae => \ALT_INV_A[7]~input_o\,
	dataf => \ALT_INV_B[10]~input_o\,
	combout => \PrefixNetwork|Pk[2][10]~2_combout\);

-- Location: MLABCELL_X44_Y1_N22
\S~15\ : arriaii_lcell_comb
-- Equation(s):
-- \S~15_combout\ = ( \PrefixNetwork|Pk[2][9]~0_combout\ & ( \PrefixNetwork|Gk[1][4]~2_combout\ & ( (!\PrefixNetwork|Gk[1][10]~15_combout\ & ((!\PrefixNetwork|Pk[2][10]~2_combout\) # ((!\PrefixNetwork|Gk[1][6]~6_combout\ & !\PrefixNetwork|Gk~7_combout\)))) ) 
-- ) ) # ( !\PrefixNetwork|Pk[2][9]~0_combout\ & ( \PrefixNetwork|Gk[1][4]~2_combout\ & ( !\PrefixNetwork|Gk[1][10]~15_combout\ ) ) ) # ( \PrefixNetwork|Pk[2][9]~0_combout\ & ( !\PrefixNetwork|Gk[1][4]~2_combout\ & ( (!\PrefixNetwork|Gk[1][10]~15_combout\ & 
-- ((!\PrefixNetwork|Gk[1][6]~6_combout\) # (!\PrefixNetwork|Pk[2][10]~2_combout\))) ) ) ) # ( !\PrefixNetwork|Pk[2][9]~0_combout\ & ( !\PrefixNetwork|Gk[1][4]~2_combout\ & ( !\PrefixNetwork|Gk[1][10]~15_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010001010100010101010101010101010100010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|ALT_INV_Gk[1][10]~15_combout\,
	datab => \PrefixNetwork|ALT_INV_Gk[1][6]~6_combout\,
	datac => \PrefixNetwork|ALT_INV_Pk[2][10]~2_combout\,
	datad => \PrefixNetwork|ALT_INV_Gk~7_combout\,
	datae => \PrefixNetwork|ALT_INV_Pk[2][9]~0_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk[1][4]~2_combout\,
	combout => \S~15_combout\);

-- Location: MLABCELL_X44_Y1_N18
\S~14\ : arriaii_lcell_comb
-- Equation(s):
-- \S~14_combout\ = ( \PrefixNetwork|Pk[2][9]~0_combout\ & ( (p(3) & (p(6) & (\PrefixNetwork|Pk[2][10]~2_combout\ & \PrefixNetwork|Gk~4_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_p(3),
	datab => ALT_INV_p(6),
	datac => \PrefixNetwork|ALT_INV_Pk[2][10]~2_combout\,
	datad => \PrefixNetwork|ALT_INV_Gk~4_combout\,
	dataf => \PrefixNetwork|ALT_INV_Pk[2][9]~0_combout\,
	combout => \S~14_combout\);

-- Location: MLABCELL_X44_Y1_N16
\PrefixNetwork|Gk~14\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~14_combout\ = ( \PrefixNetwork|Gk[1][8]~11_combout\ & ( (p(10) & p(9)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_p(10),
	datad => ALT_INV_p(9),
	dataf => \PrefixNetwork|ALT_INV_Gk[1][8]~11_combout\,
	combout => \PrefixNetwork|Gk~14_combout\);

-- Location: MLABCELL_X44_Y1_N24
\S~16\ : arriaii_lcell_comb
-- Equation(s):
-- \S~16_combout\ = ( \S~14_combout\ & ( \PrefixNetwork|Gk~14_combout\ & ( !\B[11]~input_o\ $ (\A[11]~input_o\) ) ) ) # ( !\S~14_combout\ & ( \PrefixNetwork|Gk~14_combout\ & ( !\B[11]~input_o\ $ (\A[11]~input_o\) ) ) ) # ( \S~14_combout\ & ( 
-- !\PrefixNetwork|Gk~14_combout\ & ( !\B[11]~input_o\ $ (!\A[11]~input_o\ $ (((!\c[3]~7_combout\) # (!\S~15_combout\)))) ) ) ) # ( !\S~14_combout\ & ( !\PrefixNetwork|Gk~14_combout\ & ( !\B[11]~input_o\ $ (!\A[11]~input_o\ $ (!\S~15_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100101100110100110011001011010011001100110011001100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[11]~input_o\,
	datab => \ALT_INV_A[11]~input_o\,
	datac => \ALT_INV_c[3]~7_combout\,
	datad => \ALT_INV_S~15_combout\,
	datae => \ALT_INV_S~14_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk~14_combout\,
	combout => \S~16_combout\);

-- Location: IOIBUF_X37_Y0_N63
\B[12]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(12),
	o => \B[12]~input_o\);

-- Location: IOIBUF_X37_Y0_N1
\A[12]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(12),
	o => \A[12]~input_o\);

-- Location: LABCELL_X45_Y1_N16
\p[12]\ : arriaii_lcell_comb
-- Equation(s):
-- p(12) = ( \A[12]~input_o\ & ( !\B[12]~input_o\ ) ) # ( !\A[12]~input_o\ & ( \B[12]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[12]~input_o\,
	dataf => \ALT_INV_A[12]~input_o\,
	combout => p(12));

-- Location: MLABCELL_X44_Y1_N12
\c[4]\ : arriaii_lcell_comb
-- Equation(s):
-- c(4) = ( \PrefixNetwork|Gpre[1]~0_combout\ & ( \c~0_combout\ & ( (!\PrefixNetwork|Gk[1][3]~1_combout\ & ((!p(3)) # (!p(2)))) ) ) ) # ( !\PrefixNetwork|Gpre[1]~0_combout\ & ( \c~0_combout\ & ( (!\PrefixNetwork|Gk[1][3]~1_combout\ & ((!p(3)) # (!p(2)))) ) ) 
-- ) # ( \PrefixNetwork|Gpre[1]~0_combout\ & ( !\c~0_combout\ & ( (!\PrefixNetwork|Gk[1][3]~1_combout\ & ((!p(3)) # (!p(2)))) ) ) ) # ( !\PrefixNetwork|Gpre[1]~0_combout\ & ( !\c~0_combout\ & ( !\PrefixNetwork|Gk[1][3]~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111110100000000011111010000000001111101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_p(3),
	datac => ALT_INV_p(2),
	datad => \PrefixNetwork|ALT_INV_Gk[1][3]~1_combout\,
	datae => \PrefixNetwork|ALT_INV_Gpre[1]~0_combout\,
	dataf => \ALT_INV_c~0_combout\,
	combout => c(4));

-- Location: LABCELL_X45_Y1_N38
\PrefixNetwork|Gk~16DUPLICATE\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~16DUPLICATE_combout\ = ( \A[10]~input_o\ & ( \B[11]~input_o\ & ( (!\B[10]~input_o\ & !\A[11]~input_o\) ) ) ) # ( !\A[10]~input_o\ & ( \B[11]~input_o\ & ( (\B[10]~input_o\ & !\A[11]~input_o\) ) ) ) # ( \A[10]~input_o\ & ( !\B[11]~input_o\ 
-- & ( (!\B[10]~input_o\ & \A[11]~input_o\) ) ) ) # ( !\A[10]~input_o\ & ( !\B[11]~input_o\ & ( (\B[10]~input_o\ & \A[11]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000001111000000001111000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[10]~input_o\,
	datad => \ALT_INV_A[11]~input_o\,
	datae => \ALT_INV_A[10]~input_o\,
	dataf => \ALT_INV_B[11]~input_o\,
	combout => \PrefixNetwork|Gk~16DUPLICATE_combout\);

-- Location: LABCELL_X45_Y1_N10
\S~17\ : arriaii_lcell_comb
-- Equation(s):
-- \S~17_combout\ = ( \PrefixNetwork|Pk[2][9]~0_combout\ & ( \PrefixNetwork|Gk[1][5]~5_combout\ & ( (\PrefixNetwork|Gk~8_combout\ & \PrefixNetwork|Gk~16DUPLICATE_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|ALT_INV_Gk~8_combout\,
	datad => \PrefixNetwork|ALT_INV_Gk~16DUPLICATE_combout\,
	datae => \PrefixNetwork|ALT_INV_Pk[2][9]~0_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk[1][5]~5_combout\,
	combout => \S~17_combout\);

-- Location: LABCELL_X45_Y1_N4
\S~18\ : arriaii_lcell_comb
-- Equation(s):
-- \S~18_combout\ = ( \PrefixNetwork|Gk~4_combout\ & ( \PrefixNetwork|Pk[2][9]~0_combout\ & ( (\PrefixNetwork|Gk~16DUPLICATE_combout\ & \PrefixNetwork|Gk~8_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|ALT_INV_Gk~16DUPLICATE_combout\,
	datad => \PrefixNetwork|ALT_INV_Gk~8_combout\,
	datae => \PrefixNetwork|ALT_INV_Gk~4_combout\,
	dataf => \PrefixNetwork|ALT_INV_Pk[2][9]~0_combout\,
	combout => \S~18_combout\);

-- Location: LABCELL_X45_Y1_N18
\PrefixNetwork|Gk[1][11]~17\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][11]~17_combout\ = ( \B[11]~input_o\ & ( ((\B[10]~input_o\ & \A[10]~input_o\)) # (\A[11]~input_o\) ) ) # ( !\B[11]~input_o\ & ( (\B[10]~input_o\ & (\A[10]~input_o\ & \A[11]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100000101111111110000010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[10]~input_o\,
	datac => \ALT_INV_A[10]~input_o\,
	datad => \ALT_INV_A[11]~input_o\,
	dataf => \ALT_INV_B[11]~input_o\,
	combout => \PrefixNetwork|Gk[1][11]~17_combout\);

-- Location: LABCELL_X45_Y1_N36
\PrefixNetwork|Gk~16\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~16_combout\ = ( \A[10]~input_o\ & ( \B[11]~input_o\ & ( (!\A[11]~input_o\ & !\B[10]~input_o\) ) ) ) # ( !\A[10]~input_o\ & ( \B[11]~input_o\ & ( (!\A[11]~input_o\ & \B[10]~input_o\) ) ) ) # ( \A[10]~input_o\ & ( !\B[11]~input_o\ & ( 
-- (\A[11]~input_o\ & !\B[10]~input_o\) ) ) ) # ( !\A[10]~input_o\ & ( !\B[11]~input_o\ & ( (\A[11]~input_o\ & \B[10]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000011110000000000000000111100001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[11]~input_o\,
	datad => \ALT_INV_B[10]~input_o\,
	datae => \ALT_INV_A[10]~input_o\,
	dataf => \ALT_INV_B[11]~input_o\,
	combout => \PrefixNetwork|Gk~16_combout\);

-- Location: LABCELL_X45_Y1_N2
\S~19\ : arriaii_lcell_comb
-- Equation(s):
-- \S~19_combout\ = ( \PrefixNetwork|Pk[2][9]~0_combout\ & ( \PrefixNetwork|Gk[1][9]~13_combout\ & ( (!\PrefixNetwork|Gk[1][11]~17_combout\ & !\PrefixNetwork|Gk~16_combout\) ) ) ) # ( !\PrefixNetwork|Pk[2][9]~0_combout\ & ( 
-- \PrefixNetwork|Gk[1][9]~13_combout\ & ( (!\PrefixNetwork|Gk[1][11]~17_combout\ & !\PrefixNetwork|Gk~16_combout\) ) ) ) # ( \PrefixNetwork|Pk[2][9]~0_combout\ & ( !\PrefixNetwork|Gk[1][9]~13_combout\ & ( (!\PrefixNetwork|Gk[1][11]~17_combout\ & 
-- ((!\PrefixNetwork|Gk~16_combout\) # (!\PrefixNetwork|Gk[1][7]~10_combout\))) ) ) ) # ( !\PrefixNetwork|Pk[2][9]~0_combout\ & ( !\PrefixNetwork|Gk[1][9]~13_combout\ & ( !\PrefixNetwork|Gk[1][11]~17_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010000010100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|ALT_INV_Gk[1][11]~17_combout\,
	datac => \PrefixNetwork|ALT_INV_Gk~16_combout\,
	datad => \PrefixNetwork|ALT_INV_Gk[1][7]~10_combout\,
	datae => \PrefixNetwork|ALT_INV_Pk[2][9]~0_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk[1][9]~13_combout\,
	combout => \S~19_combout\);

-- Location: LABCELL_X45_Y1_N28
\S~20\ : arriaii_lcell_comb
-- Equation(s):
-- \S~20_combout\ = ( \S~18_combout\ & ( \S~19_combout\ & ( !p(12) $ (((c(4) & !\S~17_combout\))) ) ) ) # ( !\S~18_combout\ & ( \S~19_combout\ & ( !p(12) $ (!\S~17_combout\) ) ) ) # ( \S~18_combout\ & ( !\S~19_combout\ & ( !p(12) ) ) ) # ( !\S~18_combout\ & 
-- ( !\S~19_combout\ & ( !p(12) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110000110011110011001100001111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_p(12),
	datac => ALT_INV_c(4),
	datad => \ALT_INV_S~17_combout\,
	datae => \ALT_INV_S~18_combout\,
	dataf => \ALT_INV_S~19_combout\,
	combout => \S~20_combout\);

-- Location: IOIBUF_X50_Y0_N94
\A[13]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(13),
	o => \A[13]~input_o\);

-- Location: IOIBUF_X50_Y0_N32
\B[13]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(13),
	o => \B[13]~input_o\);

-- Location: MLABCELL_X46_Y1_N34
\p[13]\ : arriaii_lcell_comb
-- Equation(s):
-- p(13) = ( !\A[13]~input_o\ & ( \B[13]~input_o\ ) ) # ( \A[13]~input_o\ & ( !\B[13]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_A[13]~input_o\,
	dataf => \ALT_INV_B[13]~input_o\,
	combout => p(13));

-- Location: LABCELL_X43_Y1_N28
\S~21\ : arriaii_lcell_comb
-- Equation(s):
-- \S~21_combout\ = ( \A[12]~input_o\ & ( \B[11]~input_o\ & ( (!\A[11]~input_o\ & (!\B[12]~input_o\ & (!\B[10]~input_o\ $ (!\A[10]~input_o\)))) ) ) ) # ( !\A[12]~input_o\ & ( \B[11]~input_o\ & ( (!\A[11]~input_o\ & (\B[12]~input_o\ & (!\B[10]~input_o\ $ 
-- (!\A[10]~input_o\)))) ) ) ) # ( \A[12]~input_o\ & ( !\B[11]~input_o\ & ( (\A[11]~input_o\ & (!\B[12]~input_o\ & (!\B[10]~input_o\ $ (!\A[10]~input_o\)))) ) ) ) # ( !\A[12]~input_o\ & ( !\B[11]~input_o\ & ( (\A[11]~input_o\ & (\B[12]~input_o\ & 
-- (!\B[10]~input_o\ $ (!\A[10]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010100000101000000000000000000001010000010100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[11]~input_o\,
	datab => \ALT_INV_B[10]~input_o\,
	datac => \ALT_INV_A[10]~input_o\,
	datad => \ALT_INV_B[12]~input_o\,
	datae => \ALT_INV_A[12]~input_o\,
	dataf => \ALT_INV_B[11]~input_o\,
	combout => \S~21_combout\);

-- Location: MLABCELL_X39_Y1_N22
\S~22\ : arriaii_lcell_comb
-- Equation(s):
-- \S~22_combout\ = ( \S~21_combout\ & ( p(9) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_S~21_combout\,
	dataf => ALT_INV_p(9),
	combout => \S~22_combout\);

-- Location: LABCELL_X38_Y1_N16
\PrefixNetwork|Gk[1][12]~18\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][12]~18_combout\ = ( \B[12]~input_o\ & ( \A[12]~input_o\ ) ) # ( !\B[12]~input_o\ & ( \A[12]~input_o\ & ( (\B[11]~input_o\ & \A[11]~input_o\) ) ) ) # ( \B[12]~input_o\ & ( !\A[12]~input_o\ & ( (\B[11]~input_o\ & \A[11]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[11]~input_o\,
	datad => \ALT_INV_A[11]~input_o\,
	datae => \ALT_INV_B[12]~input_o\,
	dataf => \ALT_INV_A[12]~input_o\,
	combout => \PrefixNetwork|Gk[1][12]~18_combout\);

-- Location: LABCELL_X38_Y1_N38
\S~23DUPLICATE\ : arriaii_lcell_comb
-- Equation(s):
-- \S~23DUPLICATE_combout\ = ( !\B[12]~input_o\ & ( \A[12]~input_o\ & ( !\A[11]~input_o\ $ (!\B[11]~input_o\) ) ) ) # ( \B[12]~input_o\ & ( !\A[12]~input_o\ & ( !\A[11]~input_o\ $ (!\B[11]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011111111000000001111111100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[11]~input_o\,
	datad => \ALT_INV_B[11]~input_o\,
	datae => \ALT_INV_B[12]~input_o\,
	dataf => \ALT_INV_A[12]~input_o\,
	combout => \S~23DUPLICATE_combout\);

-- Location: MLABCELL_X39_Y1_N24
\S~24\ : arriaii_lcell_comb
-- Equation(s):
-- \S~24_combout\ = ( \S~21_combout\ & ( \PrefixNetwork|Gk[1][8]~11_combout\ & ( (!\PrefixNetwork|Gk[1][12]~18_combout\ & (!p(9) & ((!\PrefixNetwork|Gk[1][10]~15_combout\) # (!\S~23DUPLICATE_combout\)))) ) ) ) # ( !\S~21_combout\ & ( 
-- \PrefixNetwork|Gk[1][8]~11_combout\ & ( (!\PrefixNetwork|Gk[1][12]~18_combout\ & ((!\PrefixNetwork|Gk[1][10]~15_combout\) # (!\S~23DUPLICATE_combout\))) ) ) ) # ( \S~21_combout\ & ( !\PrefixNetwork|Gk[1][8]~11_combout\ & ( 
-- (!\PrefixNetwork|Gk[1][12]~18_combout\ & ((!\PrefixNetwork|Gk[1][10]~15_combout\) # (!\S~23DUPLICATE_combout\))) ) ) ) # ( !\S~21_combout\ & ( !\PrefixNetwork|Gk[1][8]~11_combout\ & ( (!\PrefixNetwork|Gk[1][12]~18_combout\ & 
-- ((!\PrefixNetwork|Gk[1][10]~15_combout\) # (!\S~23DUPLICATE_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110010001000110011001000100011001100100010001100000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|ALT_INV_Gk[1][10]~15_combout\,
	datab => \PrefixNetwork|ALT_INV_Gk[1][12]~18_combout\,
	datac => ALT_INV_p(9),
	datad => \ALT_INV_S~23DUPLICATE_combout\,
	datae => \ALT_INV_S~21_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk[1][8]~11_combout\,
	combout => \S~24_combout\);

-- Location: MLABCELL_X39_Y1_N36
\S~25\ : arriaii_lcell_comb
-- Equation(s):
-- \S~25_combout\ = ( \S~22_combout\ & ( \S~24_combout\ & ( !p(13) $ (((!\PrefixNetwork|Gk~12_combout\ & ((!\S~10_combout\) # (\S~9_combout\))))) ) ) ) # ( !\S~22_combout\ & ( \S~24_combout\ & ( p(13) ) ) ) # ( \S~22_combout\ & ( !\S~24_combout\ & ( !p(13) ) 
-- ) ) # ( !\S~22_combout\ & ( !\S~24_combout\ & ( !p(13) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110000110011001100110110001111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_S~10_combout\,
	datab => ALT_INV_p(13),
	datac => \ALT_INV_S~9_combout\,
	datad => \PrefixNetwork|ALT_INV_Gk~12_combout\,
	datae => \ALT_INV_S~22_combout\,
	dataf => \ALT_INV_S~24_combout\,
	combout => \S~25_combout\);

-- Location: IOIBUF_X41_Y0_N94
\A[14]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(14),
	o => \A[14]~input_o\);

-- Location: IOIBUF_X50_Y0_N63
\B[14]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(14),
	o => \B[14]~input_o\);

-- Location: MLABCELL_X42_Y1_N36
\p[14]\ : arriaii_lcell_comb
-- Equation(s):
-- p(14) = ( \B[14]~input_o\ & ( !\A[14]~input_o\ ) ) # ( !\B[14]~input_o\ & ( \A[14]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[14]~input_o\,
	dataf => \ALT_INV_B[14]~input_o\,
	combout => p(14));

-- Location: LABCELL_X45_Y1_N14
\S~27\ : arriaii_lcell_comb
-- Equation(s):
-- \S~27_combout\ = ( \S~21_combout\ & ( \PrefixNetwork|Pk[2][9]~0_combout\ & ( (\PrefixNetwork|Gk~8_combout\ & p(13)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|ALT_INV_Gk~8_combout\,
	datad => ALT_INV_p(13),
	datae => \ALT_INV_S~21_combout\,
	dataf => \PrefixNetwork|ALT_INV_Pk[2][9]~0_combout\,
	combout => \S~27_combout\);

-- Location: LABCELL_X45_Y1_N34
\PrefixNetwork|Gk[1][13]~19\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][13]~19_combout\ = ( \A[12]~input_o\ & ( (!\A[13]~input_o\ & (\B[13]~input_o\ & \B[12]~input_o\)) # (\A[13]~input_o\ & ((\B[12]~input_o\) # (\B[13]~input_o\))) ) ) # ( !\A[12]~input_o\ & ( (\A[13]~input_o\ & \B[13]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000011001111110000001100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[13]~input_o\,
	datac => \ALT_INV_B[13]~input_o\,
	datad => \ALT_INV_B[12]~input_o\,
	dataf => \ALT_INV_A[12]~input_o\,
	combout => \PrefixNetwork|Gk[1][13]~19_combout\);

-- Location: LABCELL_X45_Y1_N26
\S~28\ : arriaii_lcell_comb
-- Equation(s):
-- \S~28_combout\ = ( !\PrefixNetwork|Gk[1][13]~19_combout\ & ( \PrefixNetwork|Gk[1][9]~13_combout\ & ( (!p(12)) # ((!p(13)) # ((!\PrefixNetwork|Gk[1][11]~17_combout\ & !\PrefixNetwork|Gk~16_combout\))) ) ) ) # ( !\PrefixNetwork|Gk[1][13]~19_combout\ & ( 
-- !\PrefixNetwork|Gk[1][9]~13_combout\ & ( (!\PrefixNetwork|Gk[1][11]~17_combout\) # ((!p(12)) # (!p(13))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111010000000000000000011111111111110000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|ALT_INV_Gk[1][11]~17_combout\,
	datab => \PrefixNetwork|ALT_INV_Gk~16_combout\,
	datac => ALT_INV_p(12),
	datad => ALT_INV_p(13),
	datae => \PrefixNetwork|ALT_INV_Gk[1][13]~19_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk[1][9]~13_combout\,
	combout => \S~28_combout\);

-- Location: LABCELL_X45_Y1_N32
\S~26\ : arriaii_lcell_comb
-- Equation(s):
-- \S~26_combout\ = ( \PrefixNetwork|Pk[2][9]~0_combout\ & ( (p(13) & (\PrefixNetwork|Gk[1][7]~10_combout\ & \S~21_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_p(13),
	datac => \PrefixNetwork|ALT_INV_Gk[1][7]~10_combout\,
	datad => \ALT_INV_S~21_combout\,
	dataf => \PrefixNetwork|ALT_INV_Pk[2][9]~0_combout\,
	combout => \S~26_combout\);

-- Location: LABCELL_X45_Y1_N22
\S~29\ : arriaii_lcell_comb
-- Equation(s):
-- \S~29_combout\ = ( \S~28_combout\ & ( \S~26_combout\ & ( !p(14) ) ) ) # ( !\S~28_combout\ & ( \S~26_combout\ & ( !p(14) ) ) ) # ( \S~28_combout\ & ( !\S~26_combout\ & ( !p(14) $ (((!\S~27_combout\) # ((\c[6]~3_combout\ & !\c[6]~2_combout\)))) ) ) ) # ( 
-- !\S~28_combout\ & ( !\S~26_combout\ & ( !p(14) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010010110010101101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_p(14),
	datab => \ALT_INV_c[6]~3_combout\,
	datac => \ALT_INV_S~27_combout\,
	datad => \ALT_INV_c[6]~2_combout\,
	datae => \ALT_INV_S~28_combout\,
	dataf => \ALT_INV_S~26_combout\,
	combout => \S~29_combout\);

-- Location: IOIBUF_X32_Y0_N1
\B[15]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(15),
	o => \B[15]~input_o\);

-- Location: IOIBUF_X52_Y0_N1
\A[15]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(15),
	o => \A[15]~input_o\);

-- Location: LABCELL_X38_Y1_N18
\PrefixNetwork|Gk[1][12]~18DUPLICATE\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][12]~18DUPLICATE_combout\ = ( \B[12]~input_o\ & ( \A[12]~input_o\ ) ) # ( !\B[12]~input_o\ & ( \A[12]~input_o\ & ( (\A[11]~input_o\ & \B[11]~input_o\) ) ) ) # ( \B[12]~input_o\ & ( !\A[12]~input_o\ & ( (\A[11]~input_o\ & 
-- \B[11]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[11]~input_o\,
	datad => \ALT_INV_B[11]~input_o\,
	datae => \ALT_INV_B[12]~input_o\,
	dataf => \ALT_INV_A[12]~input_o\,
	combout => \PrefixNetwork|Gk[1][12]~18DUPLICATE_combout\);

-- Location: MLABCELL_X42_Y1_N18
\PrefixNetwork|Gk~20\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~20_combout\ = ( \B[13]~input_o\ & ( (!\A[13]~input_o\ & (!\A[14]~input_o\ $ (!\B[14]~input_o\))) ) ) # ( !\B[13]~input_o\ & ( (\A[13]~input_o\ & (!\A[14]~input_o\ $ (!\B[14]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100001010000001010000101001010000101000000101000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[14]~input_o\,
	datac => \ALT_INV_A[13]~input_o\,
	datad => \ALT_INV_B[14]~input_o\,
	dataf => \ALT_INV_B[13]~input_o\,
	combout => \PrefixNetwork|Gk~20_combout\);

-- Location: LABCELL_X47_Y1_N32
\PrefixNetwork|Gk[1][14]~23\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][14]~23_combout\ = ( \A[13]~input_o\ & ( \A[14]~input_o\ & ( (\B[14]~input_o\) # (\B[13]~input_o\) ) ) ) # ( !\A[13]~input_o\ & ( \A[14]~input_o\ & ( \B[14]~input_o\ ) ) ) # ( \A[13]~input_o\ & ( !\A[14]~input_o\ & ( (\B[13]~input_o\ & 
-- \B[14]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[13]~input_o\,
	datad => \ALT_INV_B[14]~input_o\,
	datae => \ALT_INV_A[13]~input_o\,
	dataf => \ALT_INV_A[14]~input_o\,
	combout => \PrefixNetwork|Gk[1][14]~23_combout\);

-- Location: MLABCELL_X42_Y1_N38
\c[15]~8\ : arriaii_lcell_comb
-- Equation(s):
-- \c[15]~8_combout\ = ( !\PrefixNetwork|Gk[1][14]~23_combout\ & ( (!\PrefixNetwork|Gk~20_combout\) # ((!\PrefixNetwork|Gk[1][12]~18DUPLICATE_combout\ & ((!\PrefixNetwork|Gk[1][10]~15_combout\) # (!\S~23DUPLICATE_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111001000111111111100100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|ALT_INV_Gk[1][10]~15_combout\,
	datab => \PrefixNetwork|ALT_INV_Gk[1][12]~18DUPLICATE_combout\,
	datac => \ALT_INV_S~23DUPLICATE_combout\,
	datad => \PrefixNetwork|ALT_INV_Gk~20_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk[1][14]~23_combout\,
	combout => \c[15]~8_combout\);

-- Location: LABCELL_X38_Y1_N36
\S~23\ : arriaii_lcell_comb
-- Equation(s):
-- \S~23_combout\ = ( !\B[12]~input_o\ & ( \A[12]~input_o\ & ( !\B[11]~input_o\ $ (!\A[11]~input_o\) ) ) ) # ( \B[12]~input_o\ & ( !\A[12]~input_o\ & ( !\B[11]~input_o\ $ (!\A[11]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011111111000000001111111100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[11]~input_o\,
	datad => \ALT_INV_A[11]~input_o\,
	datae => \ALT_INV_B[12]~input_o\,
	dataf => \ALT_INV_A[12]~input_o\,
	combout => \S~23_combout\);

-- Location: MLABCELL_X42_Y1_N4
\PrefixNetwork|Gk~21\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~21_combout\ = ( \PrefixNetwork|Pk[2][9]~0_combout\ & ( (\S~23_combout\ & (\PrefixNetwork|Pk[2][10]~2_combout\ & \PrefixNetwork|Gk~20_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_S~23_combout\,
	datac => \PrefixNetwork|ALT_INV_Pk[2][10]~2_combout\,
	datad => \PrefixNetwork|ALT_INV_Gk~20_combout\,
	dataf => \PrefixNetwork|ALT_INV_Pk[2][9]~0_combout\,
	combout => \PrefixNetwork|Gk~21_combout\);

-- Location: MLABCELL_X42_Y1_N8
\PrefixNetwork|Gpre[6]~2\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gpre[6]~2_combout\ = ( p(3) & ( \PrefixNetwork|Gk[1][2]~0_combout\ & ( (p(6) & \PrefixNetwork|Gk~4_combout\) ) ) ) # ( p(3) & ( !\PrefixNetwork|Gk[1][2]~0_combout\ & ( (p(6) & (\c[3]~5_combout\ & (\PrefixNetwork|Gk~4_combout\ & 
-- \PrefixNetwork|Gpre[6]~1DUPLICATE_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000100000000000000000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_p(6),
	datab => \ALT_INV_c[3]~5_combout\,
	datac => \PrefixNetwork|ALT_INV_Gk~4_combout\,
	datad => \PrefixNetwork|ALT_INV_Gpre[6]~1DUPLICATE_combout\,
	datae => ALT_INV_p(3),
	dataf => \PrefixNetwork|ALT_INV_Gk[1][2]~0_combout\,
	combout => \PrefixNetwork|Gpre[6]~2_combout\);

-- Location: MLABCELL_X42_Y1_N32
\PrefixNetwork|Gk~22\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~22_combout\ = ( \S~21_combout\ & ( (\PrefixNetwork|Gk[1][8]~11_combout\ & (p(13) & (p(9) & p(14)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|ALT_INV_Gk[1][8]~11_combout\,
	datab => ALT_INV_p(13),
	datac => ALT_INV_p(9),
	datad => ALT_INV_p(14),
	dataf => \ALT_INV_S~21_combout\,
	combout => \PrefixNetwork|Gk~22_combout\);

-- Location: MLABCELL_X42_Y1_N14
\c[15]~DUPLICATE\ : arriaii_lcell_comb
-- Equation(s):
-- \c[15]~DUPLICATE_combout\ = ( \PrefixNetwork|Gpre[6]~2_combout\ & ( !\PrefixNetwork|Gk~22_combout\ & ( (\c[15]~8_combout\ & !\PrefixNetwork|Gk~21_combout\) ) ) ) # ( !\PrefixNetwork|Gpre[6]~2_combout\ & ( !\PrefixNetwork|Gk~22_combout\ & ( 
-- (\c[15]~8_combout\ & ((!\PrefixNetwork|Gk~21_combout\) # ((!\c~4_combout\ & \PrefixNetwork|Gpre[6]~3_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000100010101010000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_c[15]~8_combout\,
	datab => \ALT_INV_c~4_combout\,
	datac => \PrefixNetwork|ALT_INV_Gpre[6]~3_combout\,
	datad => \PrefixNetwork|ALT_INV_Gk~21_combout\,
	datae => \PrefixNetwork|ALT_INV_Gpre[6]~2_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk~22_combout\,
	combout => \c[15]~DUPLICATE_combout\);

-- Location: MLABCELL_X42_Y1_N16
\S~30\ : arriaii_lcell_comb
-- Equation(s):
-- \S~30_combout\ = ( \c[15]~DUPLICATE_combout\ & ( !\B[15]~input_o\ $ (!\A[15]~input_o\) ) ) # ( !\c[15]~DUPLICATE_combout\ & ( !\B[15]~input_o\ $ (\A[15]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000001111111100000000111100001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[15]~input_o\,
	datad => \ALT_INV_A[15]~input_o\,
	dataf => \ALT_INV_c[15]~DUPLICATE_combout\,
	combout => \S~30_combout\);

-- Location: MLABCELL_X46_Y1_N32
\p[13]~DUPLICATE\ : arriaii_lcell_comb
-- Equation(s):
-- \p[13]~DUPLICATE_combout\ = ( !\A[13]~input_o\ & ( \B[13]~input_o\ ) ) # ( \A[13]~input_o\ & ( !\B[13]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_A[13]~input_o\,
	dataf => \ALT_INV_B[13]~input_o\,
	combout => \p[13]~DUPLICATE_combout\);

-- Location: MLABCELL_X42_Y1_N20
\PrefixNetwork|Gk~28\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~28_combout\ = ( \A[15]~input_o\ & ( (!\B[15]~input_o\ & (!\A[14]~input_o\ $ (!\B[14]~input_o\))) ) ) # ( !\A[15]~input_o\ & ( (\B[15]~input_o\ & (!\A[14]~input_o\ $ (!\B[14]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100110000000000110011000000001100110000000000110011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[15]~input_o\,
	datac => \ALT_INV_A[14]~input_o\,
	datad => \ALT_INV_B[14]~input_o\,
	dataf => \ALT_INV_A[15]~input_o\,
	combout => \PrefixNetwork|Gk~28_combout\);

-- Location: MLABCELL_X42_Y1_N6
\PrefixNetwork|Gk[1][15]~27\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][15]~27_combout\ = ( \A[15]~input_o\ & ( ((\B[14]~input_o\ & \A[14]~input_o\)) # (\B[15]~input_o\) ) ) # ( !\A[15]~input_o\ & ( (\B[14]~input_o\ & (\A[14]~input_o\ & \B[15]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100000011111111110000001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[14]~input_o\,
	datac => \ALT_INV_A[14]~input_o\,
	datad => \ALT_INV_B[15]~input_o\,
	dataf => \ALT_INV_A[15]~input_o\,
	combout => \PrefixNetwork|Gk[1][15]~27_combout\);

-- Location: MLABCELL_X42_Y1_N0
\c~9\ : arriaii_lcell_comb
-- Equation(s):
-- \c~9_combout\ = ( \PrefixNetwork|Gk[1][13]~19_combout\ & ( \PrefixNetwork|Gk[1][9]~13_combout\ & ( (!\PrefixNetwork|Gk~28_combout\ & !\PrefixNetwork|Gk[1][15]~27_combout\) ) ) ) # ( !\PrefixNetwork|Gk[1][13]~19_combout\ & ( 
-- \PrefixNetwork|Gk[1][9]~13_combout\ & ( (!\PrefixNetwork|Gk[1][15]~27_combout\ & ((!\p[13]~DUPLICATE_combout\) # ((!\S~21_combout\) # (!\PrefixNetwork|Gk~28_combout\)))) ) ) ) # ( \PrefixNetwork|Gk[1][13]~19_combout\ & ( 
-- !\PrefixNetwork|Gk[1][9]~13_combout\ & ( (!\PrefixNetwork|Gk~28_combout\ & !\PrefixNetwork|Gk[1][15]~27_combout\) ) ) ) # ( !\PrefixNetwork|Gk[1][13]~19_combout\ & ( !\PrefixNetwork|Gk[1][9]~13_combout\ & ( !\PrefixNetwork|Gk[1][15]~27_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111100000000000011111110000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_p[13]~DUPLICATE_combout\,
	datab => \ALT_INV_S~21_combout\,
	datac => \PrefixNetwork|ALT_INV_Gk~28_combout\,
	datad => \PrefixNetwork|ALT_INV_Gk[1][15]~27_combout\,
	datae => \PrefixNetwork|ALT_INV_Gk[1][13]~19_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk[1][9]~13_combout\,
	combout => \c~9_combout\);

-- Location: MLABCELL_X42_Y1_N26
\PrefixNetwork|Gk~24\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~24_combout\ = ( \A[15]~input_o\ & ( (!\B[15]~input_o\ & (!\A[12]~input_o\ $ (!\B[12]~input_o\))) ) ) # ( !\A[15]~input_o\ & ( (\B[15]~input_o\ & (!\A[12]~input_o\ $ (!\B[12]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100001010000001010000101001010000101000000101000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[12]~input_o\,
	datac => \ALT_INV_B[15]~input_o\,
	datad => \ALT_INV_B[12]~input_o\,
	dataf => \ALT_INV_A[15]~input_o\,
	combout => \PrefixNetwork|Gk~24_combout\);

-- Location: MLABCELL_X42_Y1_N34
\PrefixNetwork|Gk~25\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~25_combout\ = ( \PrefixNetwork|Gk[1][11]~17_combout\ & ( (\PrefixNetwork|Gk~24_combout\ & \PrefixNetwork|Gk~20_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|ALT_INV_Gk~24_combout\,
	datad => \PrefixNetwork|ALT_INV_Gk~20_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk[1][11]~17_combout\,
	combout => \PrefixNetwork|Gk~25_combout\);

-- Location: MLABCELL_X42_Y1_N22
\PrefixNetwork|Gk~26\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~26_combout\ = ( \PrefixNetwork|Gk~16DUPLICATE_combout\ & ( (\PrefixNetwork|Gk~20_combout\ & (\PrefixNetwork|Pk[2][9]~0_combout\ & \PrefixNetwork|Gk~24_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|ALT_INV_Gk~20_combout\,
	datac => \PrefixNetwork|ALT_INV_Pk[2][9]~0_combout\,
	datad => \PrefixNetwork|ALT_INV_Gk~24_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk~16DUPLICATE_combout\,
	combout => \PrefixNetwork|Gk~26_combout\);

-- Location: MLABCELL_X42_Y1_N28
\c~10\ : arriaii_lcell_comb
-- Equation(s):
-- \c~10_combout\ = ( \PrefixNetwork|Gk~26_combout\ & ( \c~6_combout\ ) ) # ( !\PrefixNetwork|Gk~26_combout\ & ( \c~6_combout\ & ( (!\c~9_combout\) # (\PrefixNetwork|Gk~25_combout\) ) ) ) # ( \PrefixNetwork|Gk~26_combout\ & ( !\c~6_combout\ & ( 
-- (!\PrefixNetwork|Gpre[7]~4_combout\) # (((!\c~9_combout\) # (\PrefixNetwork|Gk~25_combout\)) # (\PrefixNetwork|Gk~9_combout\)) ) ) ) # ( !\PrefixNetwork|Gk~26_combout\ & ( !\c~6_combout\ & ( (!\c~9_combout\) # (\PrefixNetwork|Gk~25_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011111111111110111111111111110000111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|ALT_INV_Gpre[7]~4_combout\,
	datab => \PrefixNetwork|ALT_INV_Gk~9_combout\,
	datac => \ALT_INV_c~9_combout\,
	datad => \PrefixNetwork|ALT_INV_Gk~25_combout\,
	datae => \PrefixNetwork|ALT_INV_Gk~26_combout\,
	dataf => \ALT_INV_c~6_combout\,
	combout => \c~10_combout\);

-- Location: MLABCELL_X42_Y1_N12
\c[15]\ : arriaii_lcell_comb
-- Equation(s):
-- c(15) = ( \PrefixNetwork|Gpre[6]~2_combout\ & ( !\PrefixNetwork|Gk~22_combout\ & ( (\c[15]~8_combout\ & !\PrefixNetwork|Gk~21_combout\) ) ) ) # ( !\PrefixNetwork|Gpre[6]~2_combout\ & ( !\PrefixNetwork|Gk~22_combout\ & ( (\c[15]~8_combout\ & 
-- ((!\PrefixNetwork|Gk~21_combout\) # ((!\c~4_combout\ & \PrefixNetwork|Gpre[6]~3_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010100010100000101000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_c[15]~8_combout\,
	datab => \ALT_INV_c~4_combout\,
	datac => \PrefixNetwork|ALT_INV_Gk~21_combout\,
	datad => \PrefixNetwork|ALT_INV_Gpre[6]~3_combout\,
	datae => \PrefixNetwork|ALT_INV_Gpre[6]~2_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk~22_combout\,
	combout => c(15));

-- Location: MLABCELL_X42_Y1_N24
\Ovfl~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Ovfl~0_combout\ = ( \c~10_combout\ & ( c(15) ) ) # ( !\c~10_combout\ & ( !c(15) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_c(15),
	dataf => \ALT_INV_c~10_combout\,
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


