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

-- DATE "11/21/2026 12:08:28"

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
-- S[0]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[1]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[2]	=>  Location: PIN_W5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[3]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[4]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[5]	=>  Location: PIN_AG6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[6]	=>  Location: PIN_AH6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[7]	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[8]	=>  Location: PIN_AG9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[9]	=>  Location: PIN_AH9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[10]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[11]	=>  Location: PIN_AC13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[12]	=>  Location: PIN_AE3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[13]	=>  Location: PIN_AD3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[14]	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[15]	=>  Location: PIN_W6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[16]	=>  Location: PIN_AC2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[17]	=>  Location: PIN_Y5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[18]	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[19]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[20]	=>  Location: PIN_W12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[21]	=>  Location: PIN_AE9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[22]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[23]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[24]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[25]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[26]	=>  Location: PIN_AG3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[27]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[28]	=>  Location: PIN_AG4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[29]	=>  Location: PIN_AC11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[30]	=>  Location: PIN_AC5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[31]	=>  Location: PIN_AA6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cout	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ovfl	=>  Location: PIN_AD4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_Y12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_W11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_AE6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_AF6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_AH2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_AF4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_AE4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_AE5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_AE7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_AF7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_AF8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_AE8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_AF3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_AH3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[8]	=>  Location: PIN_AE10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_AF11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[9]	=>  Location: PIN_AF2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_AF12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[10]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[11]	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[11]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[12]	=>  Location: PIN_AG1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[12]	=>  Location: PIN_AF1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[13]	=>  Location: PIN_AD6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[13]	=>  Location: PIN_AC4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[14]	=>  Location: PIN_Y6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[14]	=>  Location: PIN_AC6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[15]	=>  Location: PIN_AC9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[15]	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[16]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[16]	=>  Location: PIN_AA3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[17]	=>  Location: PIN_AD9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[17]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[18]	=>  Location: PIN_AC3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[18]	=>  Location: PIN_AD7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[19]	=>  Location: PIN_AC10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[19]	=>  Location: PIN_AA4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[20]	=>  Location: PIN_AH4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[20]	=>  Location: PIN_AH5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[21]	=>  Location: PIN_AF13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[21]	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[22]	=>  Location: PIN_AH12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[22]	=>  Location: PIN_AE13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[23]	=>  Location: PIN_AH10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[23]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[24]	=>  Location: PIN_AH7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[24]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[25]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[25]	=>  Location: PIN_AC7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[26]	=>  Location: PIN_T6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[26]	=>  Location: PIN_AD1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[27]	=>  Location: PIN_AH8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[27]	=>  Location: PIN_AH11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[28]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[28]	=>  Location: PIN_W4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[29]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[29]	=>  Location: PIN_AB1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[30]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[30]	=>  Location: PIN_AB2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[31]	=>  Location: PIN_AB3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[31]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cin	=>  Location: PIN_AF5,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \c[1]~1_combout\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \c[1]~0_combout\ : std_logic;
SIGNAL \S~1_combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \c[2]~2_combout\ : std_logic;
SIGNAL \S~2_combout\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \c[3]~3_combout\ : std_logic;
SIGNAL \c[3]~4_combout\ : std_logic;
SIGNAL \S~3_combout\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \cb~0_combout\ : std_logic;
SIGNAL \S~4_combout\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \c[5]~5_combout\ : std_logic;
SIGNAL \c[5]~6_combout\ : std_logic;
SIGNAL \S~5_combout\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \c[6]~7_combout\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \S~6_combout\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \c[7]~8_combout\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \c[7]~9_combout\ : std_logic;
SIGNAL \S~7_combout\ : std_logic;
SIGNAL \B[8]~input_o\ : std_logic;
SIGNAL \cb~2_combout\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \S~8_combout\ : std_logic;
SIGNAL \c[9]~10_combout\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \B[9]~input_o\ : std_logic;
SIGNAL \c[9]~11_combout\ : std_logic;
SIGNAL \S~9_combout\ : std_logic;
SIGNAL \B[10]~input_o\ : std_logic;
SIGNAL \c[10]~12_combout\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \S~10_combout\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \B[11]~input_o\ : std_logic;
SIGNAL \c[11]~13_combout\ : std_logic;
SIGNAL \c[11]~14_combout\ : std_logic;
SIGNAL \S~11_combout\ : std_logic;
SIGNAL \B[12]~input_o\ : std_logic;
SIGNAL \cb~4_combout\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \S~12_combout\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \c[13]~15_combout\ : std_logic;
SIGNAL \c[13]~16_combout\ : std_logic;
SIGNAL \B[13]~input_o\ : std_logic;
SIGNAL \S~13_combout\ : std_logic;
SIGNAL \B[14]~input_o\ : std_logic;
SIGNAL \c[14]~17_combout\ : std_logic;
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \S~14_combout\ : std_logic;
SIGNAL \c[15]~18_combout\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \B[15]~input_o\ : std_logic;
SIGNAL \c[15]~19_combout\ : std_logic;
SIGNAL \S~15_combout\ : std_logic;
SIGNAL \B[16]~input_o\ : std_logic;
SIGNAL \A[16]~input_o\ : std_logic;
SIGNAL \cb~6_combout\ : std_logic;
SIGNAL \S~16_combout\ : std_logic;
SIGNAL \B[17]~input_o\ : std_logic;
SIGNAL \c[17]~20_combout\ : std_logic;
SIGNAL \A[17]~input_o\ : std_logic;
SIGNAL \c[17]~21_combout\ : std_logic;
SIGNAL \S~17_combout\ : std_logic;
SIGNAL \A[18]~input_o\ : std_logic;
SIGNAL \B[18]~input_o\ : std_logic;
SIGNAL \c[18]~22_combout\ : std_logic;
SIGNAL \S~18_combout\ : std_logic;
SIGNAL \B[19]~input_o\ : std_logic;
SIGNAL \c[19]~23_combout\ : std_logic;
SIGNAL \A[19]~input_o\ : std_logic;
SIGNAL \c[19]~24_combout\ : std_logic;
SIGNAL \S~19_combout\ : std_logic;
SIGNAL \A[20]~input_o\ : std_logic;
SIGNAL \B[20]~input_o\ : std_logic;
SIGNAL \cb~8_combout\ : std_logic;
SIGNAL \S~20_combout\ : std_logic;
SIGNAL \c[21]~25_combout\ : std_logic;
SIGNAL \A[21]~input_o\ : std_logic;
SIGNAL \c[21]~26_combout\ : std_logic;
SIGNAL \B[21]~input_o\ : std_logic;
SIGNAL \S~21_combout\ : std_logic;
SIGNAL \A[22]~input_o\ : std_logic;
SIGNAL \B[22]~input_o\ : std_logic;
SIGNAL \c[22]~27_combout\ : std_logic;
SIGNAL \S~22_combout\ : std_logic;
SIGNAL \A[23]~input_o\ : std_logic;
SIGNAL \B[23]~input_o\ : std_logic;
SIGNAL \c[23]~28_combout\ : std_logic;
SIGNAL \c[23]~29_combout\ : std_logic;
SIGNAL \S~23_combout\ : std_logic;
SIGNAL \A[24]~input_o\ : std_logic;
SIGNAL \cb~10_combout\ : std_logic;
SIGNAL \B[24]~input_o\ : std_logic;
SIGNAL \S~24_combout\ : std_logic;
SIGNAL \B[25]~input_o\ : std_logic;
SIGNAL \c[25]~30_combout\ : std_logic;
SIGNAL \A[25]~input_o\ : std_logic;
SIGNAL \c[25]~31_combout\ : std_logic;
SIGNAL \S~25_combout\ : std_logic;
SIGNAL \B[26]~input_o\ : std_logic;
SIGNAL \A[26]~input_o\ : std_logic;
SIGNAL \c[26]~32_combout\ : std_logic;
SIGNAL \S~26_combout\ : std_logic;
SIGNAL \A[27]~input_o\ : std_logic;
SIGNAL \B[27]~input_o\ : std_logic;
SIGNAL \S~27_combout\ : std_logic;
SIGNAL \A[28]~input_o\ : std_logic;
SIGNAL \B[28]~input_o\ : std_logic;
SIGNAL \cb~12_combout\ : std_logic;
SIGNAL \S~28_combout\ : std_logic;
SIGNAL \B[29]~input_o\ : std_logic;
SIGNAL \A[29]~input_o\ : std_logic;
SIGNAL \S~29_combout\ : std_logic;
SIGNAL \B[30]~input_o\ : std_logic;
SIGNAL \A[30]~input_o\ : std_logic;
SIGNAL \c[30]~35_combout\ : std_logic;
SIGNAL \S~30_combout\ : std_logic;
SIGNAL \B[31]~input_o\ : std_logic;
SIGNAL \A[31]~input_o\ : std_logic;
SIGNAL \S~31_combout\ : std_logic;
SIGNAL \cb~14_combout\ : std_logic;
SIGNAL \c[31]~33_combout\ : std_logic;
SIGNAL \c[31]~34_combout\ : std_logic;
SIGNAL \c[31]~34DUPLICATE_combout\ : std_logic;
SIGNAL \Ovfl~0_combout\ : std_logic;
SIGNAL cb : std_logic_vector(8 DOWNTO 0);
SIGNAL rCOut : std_logic_vector(7 DOWNTO 0);
SIGNAL ALT_INV_cb : std_logic_vector(8 DOWNTO 0);
SIGNAL \ALT_INV_c[30]~35_combout\ : std_logic;
SIGNAL ALT_INV_rCOut : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_cb~14_combout\ : std_logic;
SIGNAL \ALT_INV_cb~12_combout\ : std_logic;
SIGNAL \ALT_INV_cb~10_combout\ : std_logic;
SIGNAL \ALT_INV_cb~8_combout\ : std_logic;
SIGNAL \ALT_INV_cb~6_combout\ : std_logic;
SIGNAL \ALT_INV_cb~4_combout\ : std_logic;
SIGNAL \ALT_INV_cb~2_combout\ : std_logic;
SIGNAL \ALT_INV_cb~0_combout\ : std_logic;
SIGNAL \ALT_INV_c[31]~34_combout\ : std_logic;
SIGNAL \ALT_INV_c[31]~33_combout\ : std_logic;
SIGNAL \ALT_INV_c[26]~32_combout\ : std_logic;
SIGNAL \ALT_INV_c[25]~31_combout\ : std_logic;
SIGNAL \ALT_INV_c[25]~30_combout\ : std_logic;
SIGNAL \ALT_INV_c[23]~29_combout\ : std_logic;
SIGNAL \ALT_INV_c[23]~28_combout\ : std_logic;
SIGNAL \ALT_INV_c[22]~27_combout\ : std_logic;
SIGNAL \ALT_INV_c[21]~26_combout\ : std_logic;
SIGNAL \ALT_INV_c[21]~25_combout\ : std_logic;
SIGNAL \ALT_INV_c[19]~24_combout\ : std_logic;
SIGNAL \ALT_INV_c[19]~23_combout\ : std_logic;
SIGNAL \ALT_INV_c[18]~22_combout\ : std_logic;
SIGNAL \ALT_INV_c[17]~21_combout\ : std_logic;
SIGNAL \ALT_INV_c[17]~20_combout\ : std_logic;
SIGNAL \ALT_INV_c[15]~19_combout\ : std_logic;
SIGNAL \ALT_INV_c[15]~18_combout\ : std_logic;
SIGNAL \ALT_INV_c[14]~17_combout\ : std_logic;
SIGNAL \ALT_INV_c[13]~16_combout\ : std_logic;
SIGNAL \ALT_INV_c[13]~15_combout\ : std_logic;
SIGNAL \ALT_INV_c[11]~14_combout\ : std_logic;
SIGNAL \ALT_INV_c[11]~13_combout\ : std_logic;
SIGNAL \ALT_INV_c[10]~12_combout\ : std_logic;
SIGNAL \ALT_INV_c[9]~11_combout\ : std_logic;
SIGNAL \ALT_INV_c[9]~10_combout\ : std_logic;
SIGNAL \ALT_INV_c[7]~9_combout\ : std_logic;
SIGNAL \ALT_INV_c[7]~8_combout\ : std_logic;
SIGNAL \ALT_INV_c[6]~7_combout\ : std_logic;
SIGNAL \ALT_INV_c[5]~6_combout\ : std_logic;
SIGNAL \ALT_INV_c[5]~5_combout\ : std_logic;
SIGNAL \ALT_INV_c[3]~4_combout\ : std_logic;
SIGNAL \ALT_INV_c[3]~3_combout\ : std_logic;
SIGNAL \ALT_INV_c[2]~2_combout\ : std_logic;
SIGNAL \ALT_INV_c[1]~1_combout\ : std_logic;
SIGNAL \ALT_INV_c[1]~0_combout\ : std_logic;
SIGNAL \ALT_INV_c[31]~34DUPLICATE_combout\ : std_logic;
SIGNAL \ALT_INV_Cin~input_o\ : std_logic;
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
ALT_INV_cb(0) <= NOT cb(0);
\ALT_INV_c[30]~35_combout\ <= NOT \c[30]~35_combout\;
ALT_INV_rCOut(6) <= NOT rCOut(6);
ALT_INV_rCOut(7) <= NOT rCOut(7);
ALT_INV_rCOut(5) <= NOT rCOut(5);
ALT_INV_rCOut(4) <= NOT rCOut(4);
ALT_INV_rCOut(3) <= NOT rCOut(3);
ALT_INV_rCOut(2) <= NOT rCOut(2);
ALT_INV_rCOut(1) <= NOT rCOut(1);
ALT_INV_rCOut(0) <= NOT rCOut(0);
ALT_INV_cb(8) <= NOT cb(8);
\ALT_INV_cb~14_combout\ <= NOT \cb~14_combout\;
ALT_INV_cb(7) <= NOT cb(7);
\ALT_INV_cb~12_combout\ <= NOT \cb~12_combout\;
ALT_INV_cb(6) <= NOT cb(6);
\ALT_INV_cb~10_combout\ <= NOT \cb~10_combout\;
ALT_INV_cb(5) <= NOT cb(5);
\ALT_INV_cb~8_combout\ <= NOT \cb~8_combout\;
ALT_INV_cb(4) <= NOT cb(4);
\ALT_INV_cb~6_combout\ <= NOT \cb~6_combout\;
ALT_INV_cb(3) <= NOT cb(3);
\ALT_INV_cb~4_combout\ <= NOT \cb~4_combout\;
ALT_INV_cb(2) <= NOT cb(2);
\ALT_INV_cb~2_combout\ <= NOT \cb~2_combout\;
ALT_INV_cb(1) <= NOT cb(1);
\ALT_INV_cb~0_combout\ <= NOT \cb~0_combout\;
\ALT_INV_c[31]~34_combout\ <= NOT \c[31]~34_combout\;
\ALT_INV_c[31]~33_combout\ <= NOT \c[31]~33_combout\;
\ALT_INV_c[26]~32_combout\ <= NOT \c[26]~32_combout\;
\ALT_INV_c[25]~31_combout\ <= NOT \c[25]~31_combout\;
\ALT_INV_c[25]~30_combout\ <= NOT \c[25]~30_combout\;
\ALT_INV_c[23]~29_combout\ <= NOT \c[23]~29_combout\;
\ALT_INV_c[23]~28_combout\ <= NOT \c[23]~28_combout\;
\ALT_INV_c[22]~27_combout\ <= NOT \c[22]~27_combout\;
\ALT_INV_c[21]~26_combout\ <= NOT \c[21]~26_combout\;
\ALT_INV_c[21]~25_combout\ <= NOT \c[21]~25_combout\;
\ALT_INV_c[19]~24_combout\ <= NOT \c[19]~24_combout\;
\ALT_INV_c[19]~23_combout\ <= NOT \c[19]~23_combout\;
\ALT_INV_c[18]~22_combout\ <= NOT \c[18]~22_combout\;
\ALT_INV_c[17]~21_combout\ <= NOT \c[17]~21_combout\;
\ALT_INV_c[17]~20_combout\ <= NOT \c[17]~20_combout\;
\ALT_INV_c[15]~19_combout\ <= NOT \c[15]~19_combout\;
\ALT_INV_c[15]~18_combout\ <= NOT \c[15]~18_combout\;
\ALT_INV_c[14]~17_combout\ <= NOT \c[14]~17_combout\;
\ALT_INV_c[13]~16_combout\ <= NOT \c[13]~16_combout\;
\ALT_INV_c[13]~15_combout\ <= NOT \c[13]~15_combout\;
\ALT_INV_c[11]~14_combout\ <= NOT \c[11]~14_combout\;
\ALT_INV_c[11]~13_combout\ <= NOT \c[11]~13_combout\;
\ALT_INV_c[10]~12_combout\ <= NOT \c[10]~12_combout\;
\ALT_INV_c[9]~11_combout\ <= NOT \c[9]~11_combout\;
\ALT_INV_c[9]~10_combout\ <= NOT \c[9]~10_combout\;
\ALT_INV_c[7]~9_combout\ <= NOT \c[7]~9_combout\;
\ALT_INV_c[7]~8_combout\ <= NOT \c[7]~8_combout\;
\ALT_INV_c[6]~7_combout\ <= NOT \c[6]~7_combout\;
\ALT_INV_c[5]~6_combout\ <= NOT \c[5]~6_combout\;
\ALT_INV_c[5]~5_combout\ <= NOT \c[5]~5_combout\;
\ALT_INV_c[3]~4_combout\ <= NOT \c[3]~4_combout\;
\ALT_INV_c[3]~3_combout\ <= NOT \c[3]~3_combout\;
\ALT_INV_c[2]~2_combout\ <= NOT \c[2]~2_combout\;
\ALT_INV_c[1]~1_combout\ <= NOT \c[1]~1_combout\;
\ALT_INV_c[1]~0_combout\ <= NOT \c[1]~0_combout\;
\ALT_INV_c[31]~34DUPLICATE_combout\ <= NOT \c[31]~34DUPLICATE_combout\;
\ALT_INV_Cin~input_o\ <= NOT \Cin~input_o\;
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
\ALT_INV_B[0]~input_o\ <= NOT \B[0]~input_o\;
\ALT_INV_A[0]~input_o\ <= NOT \A[0]~input_o\;

-- Location: IOOBUF_X37_Y0_N36
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

-- Location: IOOBUF_X37_Y0_N2
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

-- Location: IOOBUF_X59_Y12_N2
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

-- Location: IOOBUF_X59_Y13_N67
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

-- Location: IOOBUF_X30_Y0_N36
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

-- Location: IOOBUF_X33_Y0_N5
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

-- Location: IOOBUF_X33_Y0_N67
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

-- Location: IOOBUF_X33_Y0_N98
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

-- Location: IOOBUF_X32_Y0_N67
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

-- Location: IOOBUF_X37_Y0_N98
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

-- Location: IOOBUF_X59_Y9_N67
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

-- Location: IOOBUF_X59_Y9_N5
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

-- Location: IOOBUF_X59_Y9_N33
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

-- Location: IOOBUF_X59_Y9_N98
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

-- Location: IOOBUF_X59_Y10_N98
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

-- Location: IOOBUF_X59_Y7_N67
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

-- Location: IOOBUF_X59_Y6_N36
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

-- Location: IOOBUF_X59_Y6_N2
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

-- Location: IOOBUF_X41_Y0_N33
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

-- Location: IOOBUF_X41_Y0_N5
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

-- Location: IOOBUF_X47_Y0_N36
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

-- Location: IOOBUF_X59_Y6_N67
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

-- Location: IOOBUF_X59_Y6_N98
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

-- Location: IOOBUF_X48_Y0_N5
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

-- Location: IOOBUF_X48_Y0_N33
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

-- Location: IOOBUF_X48_Y0_N67
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

-- Location: IOOBUF_X48_Y0_N98
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

-- Location: IOOBUF_X59_Y4_N2
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

-- Location: IOOBUF_X59_Y4_N98
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
	i => cb(8),
	devoe => ww_devoe,
	o => \Cout~output_o\);

-- Location: IOOBUF_X59_Y4_N67
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

-- Location: IOIBUF_X47_Y0_N63
\Cin~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cin,
	o => \Cin~input_o\);

-- Location: MLABCELL_X46_Y1_N38
\cb[0]\ : arriaii_lcell_comb
-- Equation(s):
-- cb(0) = LCELL(( \Cin~input_o\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Cin~input_o\,
	combout => cb(0));

-- Location: IOIBUF_X45_Y0_N32
\B[0]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X45_Y0_N94
\A[0]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: MLABCELL_X46_Y1_N2
\S~0\ : arriaii_lcell_comb
-- Equation(s):
-- \S~0_combout\ = ( \B[0]~input_o\ & ( \A[0]~input_o\ & ( cb(0) ) ) ) # ( !\B[0]~input_o\ & ( \A[0]~input_o\ & ( !cb(0) ) ) ) # ( \B[0]~input_o\ & ( !\A[0]~input_o\ & ( !cb(0) ) ) ) # ( !\B[0]~input_o\ & ( !\A[0]~input_o\ & ( cb(0) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111100001111000011110000111100000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_cb(0),
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_A[0]~input_o\,
	combout => \S~0_combout\);

-- Location: IOIBUF_X45_Y0_N1
\A[1]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: MLABCELL_X46_Y5_N2
\c[1]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \c[1]~1_combout\ = ( cb(0) & ( (\B[0]~input_o\) # (\A[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[0]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	dataf => ALT_INV_cb(0),
	combout => \c[1]~1_combout\);

-- Location: IOIBUF_X45_Y0_N63
\B[1]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: LABCELL_X45_Y5_N24
\c[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \c[1]~0_combout\ = ( \B[0]~input_o\ & ( \A[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_A[0]~input_o\,
	combout => \c[1]~0_combout\);

-- Location: MLABCELL_X46_Y1_N6
\S~1\ : arriaii_lcell_comb
-- Equation(s):
-- \S~1_combout\ = ( \B[1]~input_o\ & ( \c[1]~0_combout\ & ( \A[1]~input_o\ ) ) ) # ( !\B[1]~input_o\ & ( \c[1]~0_combout\ & ( !\A[1]~input_o\ ) ) ) # ( \B[1]~input_o\ & ( !\c[1]~0_combout\ & ( !\A[1]~input_o\ $ (\c[1]~1_combout\) ) ) ) # ( !\B[1]~input_o\ & 
-- ( !\c[1]~0_combout\ & ( !\A[1]~input_o\ $ (!\c[1]~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000111100110000111100001111001100110011000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[1]~input_o\,
	datac => \ALT_INV_c[1]~1_combout\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_c[1]~0_combout\,
	combout => \S~1_combout\);

-- Location: IOIBUF_X50_Y0_N32
\A[2]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: IOIBUF_X50_Y0_N63
\B[2]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: MLABCELL_X46_Y5_N4
\c[2]~2\ : arriaii_lcell_comb
-- Equation(s):
-- \c[2]~2_combout\ = ( \c[1]~1_combout\ & ( (!\A[1]~input_o\ & !\B[1]~input_o\) ) ) # ( !\c[1]~1_combout\ & ( (!\A[1]~input_o\ & ((!\c[1]~0_combout\) # (!\B[1]~input_o\))) # (\A[1]~input_o\ & (!\c[1]~0_combout\ & !\B[1]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101010100000111110101010000010101010000000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[1]~input_o\,
	datac => \ALT_INV_c[1]~0_combout\,
	datad => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_c[1]~1_combout\,
	combout => \c[2]~2_combout\);

-- Location: MLABCELL_X49_Y5_N8
\S~2\ : arriaii_lcell_comb
-- Equation(s):
-- \S~2_combout\ = ( \c[2]~2_combout\ & ( !\A[2]~input_o\ $ (!\B[2]~input_o\) ) ) # ( !\c[2]~2_combout\ & ( !\A[2]~input_o\ $ (\B[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000110011110011000011001100110011110011000011001111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[2]~input_o\,
	datad => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_c[2]~2_combout\,
	combout => \S~2_combout\);

-- Location: IOIBUF_X47_Y0_N1
\B[3]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: IOIBUF_X50_Y0_N1
\A[3]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: MLABCELL_X49_Y5_N36
\c[3]~3\ : arriaii_lcell_comb
-- Equation(s):
-- \c[3]~3_combout\ = ( \B[2]~input_o\ & ( \A[2]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_A[2]~input_o\,
	combout => \c[3]~3_combout\);

-- Location: MLABCELL_X46_Y5_N26
\c[3]~4\ : arriaii_lcell_comb
-- Equation(s):
-- \c[3]~4_combout\ = ( !\c[2]~2_combout\ & ( (\A[2]~input_o\) # (\B[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[2]~input_o\,
	datad => \ALT_INV_A[2]~input_o\,
	dataf => \ALT_INV_c[2]~2_combout\,
	combout => \c[3]~4_combout\);

-- Location: MLABCELL_X49_Y5_N26
\S~3\ : arriaii_lcell_comb
-- Equation(s):
-- \S~3_combout\ = ( \c[3]~3_combout\ & ( \c[3]~4_combout\ & ( !\B[3]~input_o\ $ (\A[3]~input_o\) ) ) ) # ( !\c[3]~3_combout\ & ( \c[3]~4_combout\ & ( !\B[3]~input_o\ $ (\A[3]~input_o\) ) ) ) # ( \c[3]~3_combout\ & ( !\c[3]~4_combout\ & ( !\B[3]~input_o\ $ 
-- (\A[3]~input_o\) ) ) ) # ( !\c[3]~3_combout\ & ( !\c[3]~4_combout\ & ( !\B[3]~input_o\ $ (!\A[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111001100110011000011001111001100001100111100110000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[3]~input_o\,
	datad => \ALT_INV_A[3]~input_o\,
	datae => \ALT_INV_c[3]~3_combout\,
	dataf => \ALT_INV_c[3]~4_combout\,
	combout => \S~3_combout\);

-- Location: IOIBUF_X43_Y0_N63
\B[4]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: IOIBUF_X43_Y0_N1
\A[4]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: MLABCELL_X46_Y1_N26
\cb~0\ : arriaii_lcell_comb
-- Equation(s):
-- \cb~0_combout\ = ( \A[1]~input_o\ & ( cb(0) & ( (!\B[1]~input_o\ & (!\B[0]~input_o\ $ (!\A[0]~input_o\))) ) ) ) # ( !\A[1]~input_o\ & ( cb(0) & ( (\B[1]~input_o\ & (!\B[0]~input_o\ $ (!\A[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000011000011000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_A[0]~input_o\,
	datae => \ALT_INV_A[1]~input_o\,
	dataf => ALT_INV_cb(0),
	combout => \cb~0_combout\);

-- Location: MLABCELL_X46_Y5_N36
\rCOut[0]\ : arriaii_lcell_comb
-- Equation(s):
-- rCOut(0) = LCELL(( \c[3]~4_combout\ & ( (\B[3]~input_o\) # (\A[3]~input_o\) ) ) # ( !\c[3]~4_combout\ & ( (!\A[3]~input_o\ & (\c[3]~3_combout\ & \B[3]~input_o\)) # (\A[3]~input_o\ & ((\B[3]~input_o\) # (\c[3]~3_combout\))) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101011111000001010101111101010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[3]~input_o\,
	datac => \ALT_INV_c[3]~3_combout\,
	datad => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_c[3]~4_combout\,
	combout => rCOut(0));

-- Location: MLABCELL_X46_Y5_N16
\cb[1]\ : arriaii_lcell_comb
-- Equation(s):
-- cb(1) = LCELL(( \cb~0_combout\ & ( rCOut(0) ) ) # ( !\cb~0_combout\ & ( rCOut(0) ) ) # ( \cb~0_combout\ & ( !rCOut(0) & ( (!\A[3]~input_o\ & (\B[3]~input_o\ & (!\A[2]~input_o\ $ (!\B[2]~input_o\)))) # (\A[3]~input_o\ & (!\B[3]~input_o\ & (!\A[2]~input_o\ 
-- $ (!\B[2]~input_o\)))) ) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001100110000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[3]~input_o\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \ALT_INV_A[2]~input_o\,
	datad => \ALT_INV_B[2]~input_o\,
	datae => \ALT_INV_cb~0_combout\,
	dataf => ALT_INV_rCOut(0),
	combout => cb(1));

-- Location: LABCELL_X45_Y5_N14
\S~4\ : arriaii_lcell_comb
-- Equation(s):
-- \S~4_combout\ = !\B[4]~input_o\ $ (!\A[4]~input_o\ $ (cb(1)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011010011001011001101001100101100110100110010110011010011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \ALT_INV_A[4]~input_o\,
	datad => ALT_INV_cb(1),
	combout => \S~4_combout\);

-- Location: IOIBUF_X43_Y0_N94
\B[5]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: IOIBUF_X41_Y0_N94
\A[5]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: LABCELL_X45_Y5_N16
\c[5]~5\ : arriaii_lcell_comb
-- Equation(s):
-- \c[5]~5_combout\ = ( \A[4]~input_o\ & ( \B[4]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_A[4]~input_o\,
	dataf => \ALT_INV_B[4]~input_o\,
	combout => \c[5]~5_combout\);

-- Location: MLABCELL_X46_Y5_N12
\c[5]~6\ : arriaii_lcell_comb
-- Equation(s):
-- \c[5]~6_combout\ = ( cb(1) & ( (\A[4]~input_o\) # (\B[4]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[4]~input_o\,
	datad => \ALT_INV_A[4]~input_o\,
	dataf => ALT_INV_cb(1),
	combout => \c[5]~6_combout\);

-- Location: LABCELL_X45_Y5_N30
\S~5\ : arriaii_lcell_comb
-- Equation(s):
-- \S~5_combout\ = ( \c[5]~6_combout\ & ( !\B[5]~input_o\ $ (\A[5]~input_o\) ) ) # ( !\c[5]~6_combout\ & ( !\B[5]~input_o\ $ (!\A[5]~input_o\ $ (\c[5]~5_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011000011001111001100001111000011110000111100001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[5]~input_o\,
	datac => \ALT_INV_A[5]~input_o\,
	datad => \ALT_INV_c[5]~5_combout\,
	dataf => \ALT_INV_c[5]~6_combout\,
	combout => \S~5_combout\);

-- Location: IOIBUF_X43_Y0_N32
\B[6]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: MLABCELL_X46_Y5_N32
\c[6]~7\ : arriaii_lcell_comb
-- Equation(s):
-- \c[6]~7_combout\ = ( \c[5]~6_combout\ & ( (!\A[5]~input_o\ & !\B[5]~input_o\) ) ) # ( !\c[5]~6_combout\ & ( (!\c[5]~5_combout\ & ((!\A[5]~input_o\) # (!\B[5]~input_o\))) # (\c[5]~5_combout\ & (!\A[5]~input_o\ & !\B[5]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110011000000111111001100000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_c[5]~5_combout\,
	datac => \ALT_INV_A[5]~input_o\,
	datad => \ALT_INV_B[5]~input_o\,
	dataf => \ALT_INV_c[5]~6_combout\,
	combout => \c[6]~7_combout\);

-- Location: IOIBUF_X41_Y0_N63
\A[6]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: LABCELL_X45_Y5_N2
\S~6\ : arriaii_lcell_comb
-- Equation(s):
-- \S~6_combout\ = ( \A[6]~input_o\ & ( !\B[6]~input_o\ $ (!\c[6]~7_combout\) ) ) # ( !\A[6]~input_o\ & ( !\B[6]~input_o\ $ (\c[6]~7_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000001111111100000000111100001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[6]~input_o\,
	datad => \ALT_INV_c[6]~7_combout\,
	dataf => \ALT_INV_A[6]~input_o\,
	combout => \S~6_combout\);

-- Location: IOIBUF_X50_Y0_N94
\B[7]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: LABCELL_X45_Y5_N38
\c[7]~8\ : arriaii_lcell_comb
-- Equation(s):
-- \c[7]~8_combout\ = ( \B[6]~input_o\ & ( \A[6]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_B[6]~input_o\,
	dataf => \ALT_INV_A[6]~input_o\,
	combout => \c[7]~8_combout\);

-- Location: IOIBUF_X52_Y0_N63
\A[7]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: MLABCELL_X46_Y5_N22
\c[7]~9\ : arriaii_lcell_comb
-- Equation(s):
-- \c[7]~9_combout\ = ( !\c[6]~7_combout\ & ( (\B[6]~input_o\) # (\A[6]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111111001111110011111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[6]~input_o\,
	datac => \ALT_INV_B[6]~input_o\,
	dataf => \ALT_INV_c[6]~7_combout\,
	combout => \c[7]~9_combout\);

-- Location: MLABCELL_X44_Y5_N24
\S~7\ : arriaii_lcell_comb
-- Equation(s):
-- \S~7_combout\ = ( \A[7]~input_o\ & ( \c[7]~9_combout\ & ( \B[7]~input_o\ ) ) ) # ( !\A[7]~input_o\ & ( \c[7]~9_combout\ & ( !\B[7]~input_o\ ) ) ) # ( \A[7]~input_o\ & ( !\c[7]~9_combout\ & ( !\B[7]~input_o\ $ (\c[7]~8_combout\) ) ) ) # ( !\A[7]~input_o\ & 
-- ( !\c[7]~9_combout\ & ( !\B[7]~input_o\ $ (!\c[7]~8_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000111100110000111100001111001100110011000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[7]~input_o\,
	datac => \ALT_INV_c[7]~8_combout\,
	datae => \ALT_INV_A[7]~input_o\,
	dataf => \ALT_INV_c[7]~9_combout\,
	combout => \S~7_combout\);

-- Location: IOIBUF_X39_Y0_N32
\B[8]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

-- Location: LABCELL_X45_Y5_N32
\cb~2\ : arriaii_lcell_comb
-- Equation(s):
-- \cb~2_combout\ = ( \B[5]~input_o\ & ( \A[6]~input_o\ & ( (!\B[6]~input_o\ & (!\A[5]~input_o\ & (!\B[4]~input_o\ $ (!\A[4]~input_o\)))) ) ) ) # ( !\B[5]~input_o\ & ( \A[6]~input_o\ & ( (!\B[6]~input_o\ & (\A[5]~input_o\ & (!\B[4]~input_o\ $ 
-- (!\A[4]~input_o\)))) ) ) ) # ( \B[5]~input_o\ & ( !\A[6]~input_o\ & ( (\B[6]~input_o\ & (!\A[5]~input_o\ & (!\B[4]~input_o\ $ (!\A[4]~input_o\)))) ) ) ) # ( !\B[5]~input_o\ & ( !\A[6]~input_o\ & ( (\B[6]~input_o\ & (\A[5]~input_o\ & (!\B[4]~input_o\ $ 
-- (!\A[4]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100010000000001000100000000000010001000000000100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[6]~input_o\,
	datab => \ALT_INV_A[5]~input_o\,
	datac => \ALT_INV_B[4]~input_o\,
	datad => \ALT_INV_A[4]~input_o\,
	datae => \ALT_INV_B[5]~input_o\,
	dataf => \ALT_INV_A[6]~input_o\,
	combout => \cb~2_combout\);

-- Location: MLABCELL_X46_Y5_N28
\rCOut[1]\ : arriaii_lcell_comb
-- Equation(s):
-- rCOut(1) = LCELL(( \c[7]~9_combout\ & ( (\B[7]~input_o\) # (\A[7]~input_o\) ) ) # ( !\c[7]~9_combout\ & ( (!\A[7]~input_o\ & (\B[7]~input_o\ & \c[7]~8_combout\)) # (\A[7]~input_o\ & ((\c[7]~8_combout\) # (\B[7]~input_o\))) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100111111000000110011111100111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[7]~input_o\,
	datac => \ALT_INV_B[7]~input_o\,
	datad => \ALT_INV_c[7]~8_combout\,
	dataf => \ALT_INV_c[7]~9_combout\,
	combout => rCOut(1));

-- Location: MLABCELL_X46_Y5_N8
\cb[2]\ : arriaii_lcell_comb
-- Equation(s):
-- cb(2) = LCELL(( rCOut(1) ) # ( !rCOut(1) & ( (cb(1) & (\cb~2_combout\ & (!\B[7]~input_o\ $ (!\A[7]~input_o\)))) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000010000000010000001011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[7]~input_o\,
	datab => ALT_INV_cb(1),
	datac => \ALT_INV_cb~2_combout\,
	datad => \ALT_INV_A[7]~input_o\,
	dataf => ALT_INV_rCOut(1),
	combout => cb(2));

-- Location: IOIBUF_X39_Y0_N94
\A[8]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: LABCELL_X43_Y5_N26
\S~8\ : arriaii_lcell_comb
-- Equation(s):
-- \S~8_combout\ = ( cb(2) & ( \A[8]~input_o\ & ( \B[8]~input_o\ ) ) ) # ( !cb(2) & ( \A[8]~input_o\ & ( !\B[8]~input_o\ ) ) ) # ( cb(2) & ( !\A[8]~input_o\ & ( !\B[8]~input_o\ ) ) ) # ( !cb(2) & ( !\A[8]~input_o\ & ( \B[8]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111100001111000011110000111100000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[8]~input_o\,
	datae => ALT_INV_cb(2),
	dataf => \ALT_INV_A[8]~input_o\,
	combout => \S~8_combout\);

-- Location: LABCELL_X43_Y5_N30
\c[9]~10\ : arriaii_lcell_comb
-- Equation(s):
-- \c[9]~10_combout\ = ( \B[8]~input_o\ & ( \A[8]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_B[8]~input_o\,
	dataf => \ALT_INV_A[8]~input_o\,
	combout => \c[9]~10_combout\);

-- Location: IOIBUF_X39_Y0_N63
\A[9]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

-- Location: IOIBUF_X52_Y0_N1
\B[9]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(9),
	o => \B[9]~input_o\);

-- Location: MLABCELL_X46_Y5_N10
\c[9]~11\ : arriaii_lcell_comb
-- Equation(s):
-- \c[9]~11_combout\ = ( cb(2) & ( (\A[8]~input_o\) # (\B[8]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[8]~input_o\,
	datad => \ALT_INV_A[8]~input_o\,
	dataf => ALT_INV_cb(2),
	combout => \c[9]~11_combout\);

-- Location: LABCELL_X45_Y5_N10
\S~9\ : arriaii_lcell_comb
-- Equation(s):
-- \S~9_combout\ = ( \c[9]~11_combout\ & ( !\A[9]~input_o\ $ (\B[9]~input_o\) ) ) # ( !\c[9]~11_combout\ & ( !\c[9]~10_combout\ $ (!\A[9]~input_o\ $ (\B[9]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011000011001111001100001111110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_c[9]~10_combout\,
	datac => \ALT_INV_A[9]~input_o\,
	datad => \ALT_INV_B[9]~input_o\,
	dataf => \ALT_INV_c[9]~11_combout\,
	combout => \S~9_combout\);

-- Location: IOIBUF_X39_Y0_N1
\B[10]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(10),
	o => \B[10]~input_o\);

-- Location: MLABCELL_X46_Y5_N20
\c[10]~12\ : arriaii_lcell_comb
-- Equation(s):
-- \c[10]~12_combout\ = ( \c[9]~11_combout\ & ( (!\B[9]~input_o\ & !\A[9]~input_o\) ) ) # ( !\c[9]~11_combout\ & ( (!\B[9]~input_o\ & ((!\A[9]~input_o\) # (!\c[9]~10_combout\))) # (\B[9]~input_o\ & (!\A[9]~input_o\ & !\c[9]~10_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101010100000111110101010000010100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[9]~input_o\,
	datac => \ALT_INV_A[9]~input_o\,
	datad => \ALT_INV_c[9]~10_combout\,
	dataf => \ALT_INV_c[9]~11_combout\,
	combout => \c[10]~12_combout\);

-- Location: IOIBUF_X37_Y0_N63
\A[10]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

-- Location: LABCELL_X45_Y5_N8
\S~10\ : arriaii_lcell_comb
-- Equation(s):
-- \S~10_combout\ = ( \A[10]~input_o\ & ( !\B[10]~input_o\ $ (!\c[10]~12_combout\) ) ) # ( !\A[10]~input_o\ & ( !\B[10]~input_o\ $ (\c[10]~12_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000001111111100000000111100001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[10]~input_o\,
	datad => \ALT_INV_c[10]~12_combout\,
	dataf => \ALT_INV_A[10]~input_o\,
	combout => \S~10_combout\);

-- Location: IOIBUF_X52_Y0_N32
\A[11]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(11),
	o => \A[11]~input_o\);

-- Location: IOIBUF_X52_Y0_N94
\B[11]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(11),
	o => \B[11]~input_o\);

-- Location: LABCELL_X45_Y5_N12
\c[11]~13\ : arriaii_lcell_comb
-- Equation(s):
-- \c[11]~13_combout\ = ( \B[10]~input_o\ & ( \A[10]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[10]~input_o\,
	dataf => \ALT_INV_B[10]~input_o\,
	combout => \c[11]~13_combout\);

-- Location: MLABCELL_X46_Y5_N14
\c[11]~14\ : arriaii_lcell_comb
-- Equation(s):
-- \c[11]~14_combout\ = ( !\c[10]~12_combout\ & ( (\B[10]~input_o\) # (\A[10]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[10]~input_o\,
	datad => \ALT_INV_B[10]~input_o\,
	dataf => \ALT_INV_c[10]~12_combout\,
	combout => \c[11]~14_combout\);

-- Location: LABCELL_X45_Y5_N6
\S~11\ : arriaii_lcell_comb
-- Equation(s):
-- \S~11_combout\ = ( \c[11]~13_combout\ & ( \c[11]~14_combout\ & ( !\A[11]~input_o\ $ (\B[11]~input_o\) ) ) ) # ( !\c[11]~13_combout\ & ( \c[11]~14_combout\ & ( !\A[11]~input_o\ $ (\B[11]~input_o\) ) ) ) # ( \c[11]~13_combout\ & ( !\c[11]~14_combout\ & ( 
-- !\A[11]~input_o\ $ (\B[11]~input_o\) ) ) ) # ( !\c[11]~13_combout\ & ( !\c[11]~14_combout\ & ( !\A[11]~input_o\ $ (!\B[11]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110100110011001100110011001100110011001100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[11]~input_o\,
	datab => \ALT_INV_B[11]~input_o\,
	datae => \ALT_INV_c[11]~13_combout\,
	dataf => \ALT_INV_c[11]~14_combout\,
	combout => \S~11_combout\);

-- Location: IOIBUF_X54_Y0_N1
\B[12]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(12),
	o => \B[12]~input_o\);

-- Location: LABCELL_X45_Y5_N20
\cb~4\ : arriaii_lcell_comb
-- Equation(s):
-- \cb~4_combout\ = ( \A[8]~input_o\ & ( \A[9]~input_o\ & ( (!\B[8]~input_o\ & (!\B[9]~input_o\ & (!\B[10]~input_o\ $ (!\A[10]~input_o\)))) ) ) ) # ( !\A[8]~input_o\ & ( \A[9]~input_o\ & ( (\B[8]~input_o\ & (!\B[9]~input_o\ & (!\B[10]~input_o\ $ 
-- (!\A[10]~input_o\)))) ) ) ) # ( \A[8]~input_o\ & ( !\A[9]~input_o\ & ( (!\B[8]~input_o\ & (\B[9]~input_o\ & (!\B[10]~input_o\ $ (!\A[10]~input_o\)))) ) ) ) # ( !\A[8]~input_o\ & ( !\A[9]~input_o\ & ( (\B[8]~input_o\ & (\B[9]~input_o\ & (!\B[10]~input_o\ $ 
-- (!\A[10]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000010000001000000100000010000001000000100000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[10]~input_o\,
	datab => \ALT_INV_B[8]~input_o\,
	datac => \ALT_INV_B[9]~input_o\,
	datad => \ALT_INV_A[10]~input_o\,
	datae => \ALT_INV_A[8]~input_o\,
	dataf => \ALT_INV_A[9]~input_o\,
	combout => \cb~4_combout\);

-- Location: MLABCELL_X46_Y5_N34
\rCOut[2]\ : arriaii_lcell_comb
-- Equation(s):
-- rCOut(2) = LCELL(( \c[11]~14_combout\ & ( (\B[11]~input_o\) # (\A[11]~input_o\) ) ) # ( !\c[11]~14_combout\ & ( (!\A[11]~input_o\ & (\B[11]~input_o\ & \c[11]~13_combout\)) # (\A[11]~input_o\ & ((\c[11]~13_combout\) # (\B[11]~input_o\))) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101011111000001010101111101011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[11]~input_o\,
	datac => \ALT_INV_B[11]~input_o\,
	datad => \ALT_INV_c[11]~13_combout\,
	dataf => \ALT_INV_c[11]~14_combout\,
	combout => rCOut(2));

-- Location: MLABCELL_X46_Y5_N0
\cb[3]\ : arriaii_lcell_comb
-- Equation(s):
-- cb(3) = LCELL(( rCOut(2) ) # ( !rCOut(2) & ( (\cb~4_combout\ & (cb(2) & (!\B[11]~input_o\ $ (!\A[11]~input_o\)))) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010100000000000001010011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_cb~4_combout\,
	datab => \ALT_INV_B[11]~input_o\,
	datac => \ALT_INV_A[11]~input_o\,
	datad => ALT_INV_cb(2),
	dataf => ALT_INV_rCOut(2),
	combout => cb(3));

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

-- Location: LABCELL_X50_Y5_N26
\S~12\ : arriaii_lcell_comb
-- Equation(s):
-- \S~12_combout\ = ( \A[12]~input_o\ & ( !\B[12]~input_o\ $ (cb(3)) ) ) # ( !\A[12]~input_o\ & ( !\B[12]~input_o\ $ (!cb(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111001100110011000011001100110011110011001100110000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[12]~input_o\,
	datad => ALT_INV_cb(3),
	datae => \ALT_INV_A[12]~input_o\,
	combout => \S~12_combout\);

-- Location: IOIBUF_X54_Y0_N94
\A[13]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(13),
	o => \A[13]~input_o\);

-- Location: LABCELL_X50_Y5_N4
\c[13]~15\ : arriaii_lcell_comb
-- Equation(s):
-- \c[13]~15_combout\ = ( \A[12]~input_o\ & ( \B[12]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_A[12]~input_o\,
	dataf => \ALT_INV_B[12]~input_o\,
	combout => \c[13]~15_combout\);

-- Location: MLABCELL_X46_Y5_N38
\c[13]~16\ : arriaii_lcell_comb
-- Equation(s):
-- \c[13]~16_combout\ = ( cb(3) & ( (\B[12]~input_o\) # (\A[12]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[12]~input_o\,
	datad => \ALT_INV_B[12]~input_o\,
	dataf => ALT_INV_cb(3),
	combout => \c[13]~16_combout\);

-- Location: IOIBUF_X59_Y7_N94
\B[13]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(13),
	o => \B[13]~input_o\);

-- Location: MLABCELL_X54_Y5_N10
\S~13\ : arriaii_lcell_comb
-- Equation(s):
-- \S~13_combout\ = ( \c[13]~16_combout\ & ( \B[13]~input_o\ & ( \A[13]~input_o\ ) ) ) # ( !\c[13]~16_combout\ & ( \B[13]~input_o\ & ( !\A[13]~input_o\ $ (\c[13]~15_combout\) ) ) ) # ( \c[13]~16_combout\ & ( !\B[13]~input_o\ & ( !\A[13]~input_o\ ) ) ) # ( 
-- !\c[13]~16_combout\ & ( !\B[13]~input_o\ & ( !\A[13]~input_o\ $ (!\c[13]~15_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010101010101010101010100101101001010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[13]~input_o\,
	datac => \ALT_INV_c[13]~15_combout\,
	datae => \ALT_INV_c[13]~16_combout\,
	dataf => \ALT_INV_B[13]~input_o\,
	combout => \S~13_combout\);

-- Location: IOIBUF_X54_Y0_N32
\B[14]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(14),
	o => \B[14]~input_o\);

-- Location: MLABCELL_X46_Y5_N24
\c[14]~17\ : arriaii_lcell_comb
-- Equation(s):
-- \c[14]~17_combout\ = ( \c[13]~16_combout\ & ( (!\B[13]~input_o\ & !\A[13]~input_o\) ) ) # ( !\c[13]~16_combout\ & ( (!\B[13]~input_o\ & ((!\c[13]~15_combout\) # (!\A[13]~input_o\))) # (\B[13]~input_o\ & (!\c[13]~15_combout\ & !\A[13]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110011000000111111001100000011001100000000001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[13]~input_o\,
	datac => \ALT_INV_c[13]~15_combout\,
	datad => \ALT_INV_A[13]~input_o\,
	dataf => \ALT_INV_c[13]~16_combout\,
	combout => \c[14]~17_combout\);

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

-- Location: MLABCELL_X54_Y5_N30
\S~14\ : arriaii_lcell_comb
-- Equation(s):
-- \S~14_combout\ = ( \c[14]~17_combout\ & ( \A[14]~input_o\ & ( !\B[14]~input_o\ ) ) ) # ( !\c[14]~17_combout\ & ( \A[14]~input_o\ & ( \B[14]~input_o\ ) ) ) # ( \c[14]~17_combout\ & ( !\A[14]~input_o\ & ( \B[14]~input_o\ ) ) ) # ( !\c[14]~17_combout\ & ( 
-- !\A[14]~input_o\ & ( !\B[14]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000000011110000111100001111000011111111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[14]~input_o\,
	datae => \ALT_INV_c[14]~17_combout\,
	dataf => \ALT_INV_A[14]~input_o\,
	combout => \S~14_combout\);

-- Location: MLABCELL_X54_Y5_N2
\c[15]~18\ : arriaii_lcell_comb
-- Equation(s):
-- \c[15]~18_combout\ = ( \B[14]~input_o\ & ( \A[14]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_B[14]~input_o\,
	dataf => \ALT_INV_A[14]~input_o\,
	combout => \c[15]~18_combout\);

-- Location: IOIBUF_X55_Y0_N1
\A[15]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(15),
	o => \A[15]~input_o\);

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

-- Location: MLABCELL_X46_Y5_N6
\c[15]~19\ : arriaii_lcell_comb
-- Equation(s):
-- \c[15]~19_combout\ = ( !\c[14]~17_combout\ & ( (\A[14]~input_o\) # (\B[14]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[14]~input_o\,
	datad => \ALT_INV_A[14]~input_o\,
	dataf => \ALT_INV_c[14]~17_combout\,
	combout => \c[15]~19_combout\);

-- Location: MLABCELL_X54_Y5_N38
\S~15\ : arriaii_lcell_comb
-- Equation(s):
-- \S~15_combout\ = ( \B[15]~input_o\ & ( \c[15]~19_combout\ & ( \A[15]~input_o\ ) ) ) # ( !\B[15]~input_o\ & ( \c[15]~19_combout\ & ( !\A[15]~input_o\ ) ) ) # ( \B[15]~input_o\ & ( !\c[15]~19_combout\ & ( !\c[15]~18_combout\ $ (\A[15]~input_o\) ) ) ) # ( 
-- !\B[15]~input_o\ & ( !\c[15]~19_combout\ & ( !\c[15]~18_combout\ $ (!\A[15]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000111100110000111100001111110000111100000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_c[15]~18_combout\,
	datac => \ALT_INV_A[15]~input_o\,
	datae => \ALT_INV_B[15]~input_o\,
	dataf => \ALT_INV_c[15]~19_combout\,
	combout => \S~15_combout\);

-- Location: IOIBUF_X59_Y10_N63
\B[16]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(16),
	o => \B[16]~input_o\);

-- Location: IOIBUF_X55_Y0_N32
\A[16]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(16),
	o => \A[16]~input_o\);

-- Location: MLABCELL_X54_Y5_N24
\cb~6\ : arriaii_lcell_comb
-- Equation(s):
-- \cb~6_combout\ = ( \A[12]~input_o\ & ( \B[13]~input_o\ & ( (!\B[12]~input_o\ & (!\A[13]~input_o\ & (!\A[14]~input_o\ $ (!\B[14]~input_o\)))) ) ) ) # ( !\A[12]~input_o\ & ( \B[13]~input_o\ & ( (\B[12]~input_o\ & (!\A[13]~input_o\ & (!\A[14]~input_o\ $ 
-- (!\B[14]~input_o\)))) ) ) ) # ( \A[12]~input_o\ & ( !\B[13]~input_o\ & ( (!\B[12]~input_o\ & (\A[13]~input_o\ & (!\A[14]~input_o\ $ (!\B[14]~input_o\)))) ) ) ) # ( !\A[12]~input_o\ & ( !\B[13]~input_o\ & ( (\B[12]~input_o\ & (\A[13]~input_o\ & 
-- (!\A[14]~input_o\ $ (!\B[14]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000010000001000000100000010000001000000100000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[14]~input_o\,
	datab => \ALT_INV_B[12]~input_o\,
	datac => \ALT_INV_A[13]~input_o\,
	datad => \ALT_INV_B[14]~input_o\,
	datae => \ALT_INV_A[12]~input_o\,
	dataf => \ALT_INV_B[13]~input_o\,
	combout => \cb~6_combout\);

-- Location: MLABCELL_X46_Y5_N30
\rCOut[3]\ : arriaii_lcell_comb
-- Equation(s):
-- rCOut(3) = LCELL(( \c[15]~19_combout\ & ( (\A[15]~input_o\) # (\B[15]~input_o\) ) ) # ( !\c[15]~19_combout\ & ( (!\c[15]~18_combout\ & (\B[15]~input_o\ & \A[15]~input_o\)) # (\c[15]~18_combout\ & ((\A[15]~input_o\) # (\B[15]~input_o\))) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101011111000001010101111100001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_c[15]~18_combout\,
	datac => \ALT_INV_B[15]~input_o\,
	datad => \ALT_INV_A[15]~input_o\,
	dataf => \ALT_INV_c[15]~19_combout\,
	combout => rCOut(3));

-- Location: LABCELL_X47_Y5_N24
\cb[4]\ : arriaii_lcell_comb
-- Equation(s):
-- cb(4) = LCELL(( rCOut(3) ) # ( !rCOut(3) & ( (\cb~6_combout\ & (cb(3) & (!\A[15]~input_o\ $ (!\B[15]~input_o\)))) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000100000000010000010011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_cb~6_combout\,
	datab => \ALT_INV_A[15]~input_o\,
	datac => ALT_INV_cb(3),
	datad => \ALT_INV_B[15]~input_o\,
	dataf => ALT_INV_rCOut(3),
	combout => cb(4));

-- Location: LABCELL_X50_Y5_N8
\S~16\ : arriaii_lcell_comb
-- Equation(s):
-- \S~16_combout\ = ( cb(4) & ( !\B[16]~input_o\ $ (\A[16]~input_o\) ) ) # ( !cb(4) & ( !\B[16]~input_o\ $ (!\A[16]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010110101010101010100101010101010101101010101010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[16]~input_o\,
	datad => \ALT_INV_A[16]~input_o\,
	datae => ALT_INV_cb(4),
	combout => \S~16_combout\);

-- Location: IOIBUF_X56_Y0_N32
\B[17]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(17),
	o => \B[17]~input_o\);

-- Location: LABCELL_X50_Y5_N14
\c[17]~20\ : arriaii_lcell_comb
-- Equation(s):
-- \c[17]~20_combout\ = ( \B[16]~input_o\ & ( \A[16]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_B[16]~input_o\,
	dataf => \ALT_INV_A[16]~input_o\,
	combout => \c[17]~20_combout\);

-- Location: IOIBUF_X55_Y0_N63
\A[17]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(17),
	o => \A[17]~input_o\);

-- Location: LABCELL_X47_Y5_N10
\c[17]~21\ : arriaii_lcell_comb
-- Equation(s):
-- \c[17]~21_combout\ = ( cb(4) & ( (\A[16]~input_o\) # (\B[16]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[16]~input_o\,
	datad => \ALT_INV_A[16]~input_o\,
	dataf => ALT_INV_cb(4),
	combout => \c[17]~21_combout\);

-- Location: LABCELL_X50_Y5_N0
\S~17\ : arriaii_lcell_comb
-- Equation(s):
-- \S~17_combout\ = ( \A[17]~input_o\ & ( \c[17]~21_combout\ & ( \B[17]~input_o\ ) ) ) # ( !\A[17]~input_o\ & ( \c[17]~21_combout\ & ( !\B[17]~input_o\ ) ) ) # ( \A[17]~input_o\ & ( !\c[17]~21_combout\ & ( !\B[17]~input_o\ $ (\c[17]~20_combout\) ) ) ) # ( 
-- !\A[17]~input_o\ & ( !\c[17]~21_combout\ & ( !\B[17]~input_o\ $ (!\c[17]~20_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010110101010101010100101010110101010101010100101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[17]~input_o\,
	datad => \ALT_INV_c[17]~20_combout\,
	datae => \ALT_INV_A[17]~input_o\,
	dataf => \ALT_INV_c[17]~21_combout\,
	combout => \S~17_combout\);

-- Location: IOIBUF_X59_Y10_N32
\A[18]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(18),
	o => \A[18]~input_o\);

-- Location: IOIBUF_X56_Y0_N63
\B[18]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(18),
	o => \B[18]~input_o\);

-- Location: LABCELL_X47_Y5_N38
\c[18]~22\ : arriaii_lcell_comb
-- Equation(s):
-- \c[18]~22_combout\ = ( \c[17]~21_combout\ & ( (!\B[17]~input_o\ & !\A[17]~input_o\) ) ) # ( !\c[17]~21_combout\ & ( (!\B[17]~input_o\ & ((!\c[17]~20_combout\) # (!\A[17]~input_o\))) # (\B[17]~input_o\ & (!\c[17]~20_combout\ & !\A[17]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110011000000111111001100000011001100000000001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[17]~input_o\,
	datac => \ALT_INV_c[17]~20_combout\,
	datad => \ALT_INV_A[17]~input_o\,
	dataf => \ALT_INV_c[17]~21_combout\,
	combout => \c[18]~22_combout\);

-- Location: LABCELL_X50_Y5_N22
\S~18\ : arriaii_lcell_comb
-- Equation(s):
-- \S~18_combout\ = ( \c[18]~22_combout\ & ( !\A[18]~input_o\ $ (!\B[18]~input_o\) ) ) # ( !\c[18]~22_combout\ & ( !\A[18]~input_o\ $ (\B[18]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010010110100101101001011010010101011010010110100101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[18]~input_o\,
	datac => \ALT_INV_B[18]~input_o\,
	dataf => \ALT_INV_c[18]~22_combout\,
	combout => \S~18_combout\);

-- Location: IOIBUF_X59_Y10_N1
\B[19]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(19),
	o => \B[19]~input_o\);

-- Location: LABCELL_X50_Y5_N18
\c[19]~23\ : arriaii_lcell_comb
-- Equation(s):
-- \c[19]~23_combout\ = ( \A[18]~input_o\ & ( \B[18]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[18]~input_o\,
	dataf => \ALT_INV_A[18]~input_o\,
	combout => \c[19]~23_combout\);

-- Location: IOIBUF_X56_Y0_N94
\A[19]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(19),
	o => \A[19]~input_o\);

-- Location: LABCELL_X47_Y5_N2
\c[19]~24\ : arriaii_lcell_comb
-- Equation(s):
-- \c[19]~24_combout\ = ( !\c[18]~22_combout\ & ( (\A[18]~input_o\) # (\B[18]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[18]~input_o\,
	datad => \ALT_INV_A[18]~input_o\,
	dataf => \ALT_INV_c[18]~22_combout\,
	combout => \c[19]~24_combout\);

-- Location: LABCELL_X50_Y5_N38
\S~19\ : arriaii_lcell_comb
-- Equation(s):
-- \S~19_combout\ = ( \A[19]~input_o\ & ( \c[19]~24_combout\ & ( \B[19]~input_o\ ) ) ) # ( !\A[19]~input_o\ & ( \c[19]~24_combout\ & ( !\B[19]~input_o\ ) ) ) # ( \A[19]~input_o\ & ( !\c[19]~24_combout\ & ( !\B[19]~input_o\ $ (\c[19]~23_combout\) ) ) ) # ( 
-- !\A[19]~input_o\ & ( !\c[19]~24_combout\ & ( !\B[19]~input_o\ $ (!\c[19]~23_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010110101010101010100101010110101010101010100101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[19]~input_o\,
	datad => \ALT_INV_c[19]~23_combout\,
	datae => \ALT_INV_A[19]~input_o\,
	dataf => \ALT_INV_c[19]~24_combout\,
	combout => \S~19_combout\);

-- Location: IOIBUF_X35_Y0_N32
\A[20]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(20),
	o => \A[20]~input_o\);

-- Location: IOIBUF_X35_Y0_N94
\B[20]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(20),
	o => \B[20]~input_o\);

-- Location: LABCELL_X50_Y5_N30
\cb~8\ : arriaii_lcell_comb
-- Equation(s):
-- \cb~8_combout\ = ( \B[16]~input_o\ & ( \A[18]~input_o\ & ( (!\A[16]~input_o\ & (!\B[18]~input_o\ & (!\A[17]~input_o\ $ (!\B[17]~input_o\)))) ) ) ) # ( !\B[16]~input_o\ & ( \A[18]~input_o\ & ( (\A[16]~input_o\ & (!\B[18]~input_o\ & (!\A[17]~input_o\ $ 
-- (!\B[17]~input_o\)))) ) ) ) # ( \B[16]~input_o\ & ( !\A[18]~input_o\ & ( (!\A[16]~input_o\ & (\B[18]~input_o\ & (!\A[17]~input_o\ $ (!\B[17]~input_o\)))) ) ) ) # ( !\B[16]~input_o\ & ( !\A[18]~input_o\ & ( (\A[16]~input_o\ & (\B[18]~input_o\ & 
-- (!\A[17]~input_o\ $ (!\B[17]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000100000000100000100000010000010000000010000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[16]~input_o\,
	datab => \ALT_INV_A[17]~input_o\,
	datac => \ALT_INV_B[18]~input_o\,
	datad => \ALT_INV_B[17]~input_o\,
	datae => \ALT_INV_B[16]~input_o\,
	dataf => \ALT_INV_A[18]~input_o\,
	combout => \cb~8_combout\);

-- Location: LABCELL_X47_Y5_N28
\rCOut[4]\ : arriaii_lcell_comb
-- Equation(s):
-- rCOut(4) = LCELL(( \c[19]~24_combout\ & ( (\B[19]~input_o\) # (\A[19]~input_o\) ) ) # ( !\c[19]~24_combout\ & ( (!\A[19]~input_o\ & (\B[19]~input_o\ & \c[19]~23_combout\)) # (\A[19]~input_o\ & ((\c[19]~23_combout\) # (\B[19]~input_o\))) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101011111000001010101111101011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[19]~input_o\,
	datac => \ALT_INV_B[19]~input_o\,
	datad => \ALT_INV_c[19]~23_combout\,
	dataf => \ALT_INV_c[19]~24_combout\,
	combout => rCOut(4));

-- Location: LABCELL_X47_Y5_N32
\cb[5]\ : arriaii_lcell_comb
-- Equation(s):
-- cb(5) = LCELL(( rCOut(4) ) # ( !rCOut(4) & ( (\cb~8_combout\ & (cb(4) & (!\A[19]~input_o\ $ (!\B[19]~input_o\)))) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000010000000010000001011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[19]~input_o\,
	datab => \ALT_INV_cb~8_combout\,
	datac => ALT_INV_cb(4),
	datad => \ALT_INV_B[19]~input_o\,
	dataf => ALT_INV_rCOut(4),
	combout => cb(5));

-- Location: MLABCELL_X46_Y4_N18
\S~20\ : arriaii_lcell_comb
-- Equation(s):
-- \S~20_combout\ = ( cb(5) & ( !\A[20]~input_o\ $ (\B[20]~input_o\) ) ) # ( !cb(5) & ( !\A[20]~input_o\ $ (!\B[20]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010101001011010010101011010010110101010010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[20]~input_o\,
	datac => \ALT_INV_B[20]~input_o\,
	datae => ALT_INV_cb(5),
	combout => \S~20_combout\);

-- Location: MLABCELL_X46_Y4_N38
\c[21]~25\ : arriaii_lcell_comb
-- Equation(s):
-- \c[21]~25_combout\ = ( \A[20]~input_o\ & ( \B[20]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_A[20]~input_o\,
	dataf => \ALT_INV_B[20]~input_o\,
	combout => \c[21]~25_combout\);

-- Location: IOIBUF_X35_Y0_N63
\A[21]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(21),
	o => \A[21]~input_o\);

-- Location: LABCELL_X47_Y5_N12
\c[21]~26\ : arriaii_lcell_comb
-- Equation(s):
-- \c[21]~26_combout\ = ( cb(5) & ( (\A[20]~input_o\) # (\B[20]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[20]~input_o\,
	datad => \ALT_INV_A[20]~input_o\,
	dataf => ALT_INV_cb(5),
	combout => \c[21]~26_combout\);

-- Location: IOIBUF_X59_Y16_N1
\B[21]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(21),
	o => \B[21]~input_o\);

-- Location: MLABCELL_X46_Y4_N10
\S~21\ : arriaii_lcell_comb
-- Equation(s):
-- \S~21_combout\ = ( \c[21]~26_combout\ & ( \B[21]~input_o\ & ( \A[21]~input_o\ ) ) ) # ( !\c[21]~26_combout\ & ( \B[21]~input_o\ & ( !\c[21]~25_combout\ $ (\A[21]~input_o\) ) ) ) # ( \c[21]~26_combout\ & ( !\B[21]~input_o\ & ( !\A[21]~input_o\ ) ) ) # ( 
-- !\c[21]~26_combout\ & ( !\B[21]~input_o\ & ( !\c[21]~25_combout\ $ (!\A[21]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110110011001100110010011001100110010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_c[21]~25_combout\,
	datab => \ALT_INV_A[21]~input_o\,
	datae => \ALT_INV_c[21]~26_combout\,
	dataf => \ALT_INV_B[21]~input_o\,
	combout => \S~21_combout\);

-- Location: IOIBUF_X29_Y0_N63
\A[22]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(22),
	o => \A[22]~input_o\);

-- Location: IOIBUF_X35_Y0_N1
\B[22]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(22),
	o => \B[22]~input_o\);

-- Location: LABCELL_X47_Y5_N18
\c[22]~27\ : arriaii_lcell_comb
-- Equation(s):
-- \c[22]~27_combout\ = ( \c[21]~26_combout\ & ( (!\B[21]~input_o\ & !\A[21]~input_o\) ) ) # ( !\c[21]~26_combout\ & ( (!\B[21]~input_o\ & ((!\A[21]~input_o\) # (!\c[21]~25_combout\))) # (\B[21]~input_o\ & (!\A[21]~input_o\ & !\c[21]~25_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110011000000111111001100000011000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[21]~input_o\,
	datac => \ALT_INV_A[21]~input_o\,
	datad => \ALT_INV_c[21]~25_combout\,
	dataf => \ALT_INV_c[21]~26_combout\,
	combout => \c[22]~27_combout\);

-- Location: LABCELL_X47_Y1_N24
\S~22\ : arriaii_lcell_comb
-- Equation(s):
-- \S~22_combout\ = ( \c[22]~27_combout\ & ( !\A[22]~input_o\ $ (!\B[22]~input_o\) ) ) # ( !\c[22]~27_combout\ & ( !\A[22]~input_o\ $ (\B[22]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101001010101101010100101010101010101101010100101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[22]~input_o\,
	datad => \ALT_INV_B[22]~input_o\,
	dataf => \ALT_INV_c[22]~27_combout\,
	combout => \S~22_combout\);

-- Location: IOIBUF_X30_Y0_N1
\A[23]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(23),
	o => \A[23]~input_o\);

-- Location: IOIBUF_X30_Y0_N94
\B[23]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(23),
	o => \B[23]~input_o\);

-- Location: LABCELL_X47_Y1_N30
\c[23]~28\ : arriaii_lcell_comb
-- Equation(s):
-- \c[23]~28_combout\ = ( \B[22]~input_o\ & ( \A[22]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_A[22]~input_o\,
	dataf => \ALT_INV_B[22]~input_o\,
	combout => \c[23]~28_combout\);

-- Location: LABCELL_X47_Y5_N20
\c[23]~29\ : arriaii_lcell_comb
-- Equation(s):
-- \c[23]~29_combout\ = ( !\c[22]~27_combout\ & ( (\B[22]~input_o\) # (\A[22]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[22]~input_o\,
	datad => \ALT_INV_B[22]~input_o\,
	dataf => \ALT_INV_c[22]~27_combout\,
	combout => \c[23]~29_combout\);

-- Location: LABCELL_X47_Y1_N10
\S~23\ : arriaii_lcell_comb
-- Equation(s):
-- \S~23_combout\ = ( \c[23]~28_combout\ & ( \c[23]~29_combout\ & ( !\A[23]~input_o\ $ (\B[23]~input_o\) ) ) ) # ( !\c[23]~28_combout\ & ( \c[23]~29_combout\ & ( !\A[23]~input_o\ $ (\B[23]~input_o\) ) ) ) # ( \c[23]~28_combout\ & ( !\c[23]~29_combout\ & ( 
-- !\A[23]~input_o\ $ (\B[23]~input_o\) ) ) ) # ( !\c[23]~28_combout\ & ( !\c[23]~29_combout\ & ( !\A[23]~input_o\ $ (!\B[23]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111001100110011000011001111001100001100111100110000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[23]~input_o\,
	datad => \ALT_INV_B[23]~input_o\,
	datae => \ALT_INV_c[23]~28_combout\,
	dataf => \ALT_INV_c[23]~29_combout\,
	combout => \S~23_combout\);

-- Location: IOIBUF_X32_Y0_N32
\A[24]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(24),
	o => \A[24]~input_o\);

-- Location: MLABCELL_X46_Y4_N30
\cb~10\ : arriaii_lcell_comb
-- Equation(s):
-- \cb~10_combout\ = ( !\A[21]~input_o\ & ( \B[21]~input_o\ & ( (!\A[22]~input_o\ & (\B[22]~input_o\ & (!\B[20]~input_o\ $ (!\A[20]~input_o\)))) # (\A[22]~input_o\ & (!\B[22]~input_o\ & (!\B[20]~input_o\ $ (!\A[20]~input_o\)))) ) ) ) # ( \A[21]~input_o\ & ( 
-- !\B[21]~input_o\ & ( (!\A[22]~input_o\ & (\B[22]~input_o\ & (!\B[20]~input_o\ $ (!\A[20]~input_o\)))) # (\A[22]~input_o\ & (!\B[22]~input_o\ & (!\B[20]~input_o\ $ (!\A[20]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001100110000000000110011000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[22]~input_o\,
	datab => \ALT_INV_B[22]~input_o\,
	datac => \ALT_INV_B[20]~input_o\,
	datad => \ALT_INV_A[20]~input_o\,
	datae => \ALT_INV_A[21]~input_o\,
	dataf => \ALT_INV_B[21]~input_o\,
	combout => \cb~10_combout\);

-- Location: LABCELL_X47_Y5_N6
\rCOut[5]\ : arriaii_lcell_comb
-- Equation(s):
-- rCOut(5) = LCELL(( \c[23]~29_combout\ & ( (\A[23]~input_o\) # (\B[23]~input_o\) ) ) # ( !\c[23]~29_combout\ & ( (!\B[23]~input_o\ & (\A[23]~input_o\ & \c[23]~28_combout\)) # (\B[23]~input_o\ & ((\c[23]~28_combout\) # (\A[23]~input_o\))) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101011111000001010101111101011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[23]~input_o\,
	datac => \ALT_INV_A[23]~input_o\,
	datad => \ALT_INV_c[23]~28_combout\,
	dataf => \ALT_INV_c[23]~29_combout\,
	combout => rCOut(5));

-- Location: LABCELL_X47_Y5_N4
\cb[6]\ : arriaii_lcell_comb
-- Equation(s):
-- cb(6) = LCELL(( rCOut(5) ) # ( !rCOut(5) & ( (cb(5) & (\cb~10_combout\ & (!\B[23]~input_o\ $ (!\A[23]~input_o\)))) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000110000000000000011011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[23]~input_o\,
	datab => \ALT_INV_A[23]~input_o\,
	datac => ALT_INV_cb(5),
	datad => \ALT_INV_cb~10_combout\,
	dataf => ALT_INV_rCOut(5),
	combout => cb(6));

-- Location: IOIBUF_X55_Y0_N94
\B[24]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(24),
	o => \B[24]~input_o\);

-- Location: LABCELL_X47_Y5_N34
\S~24\ : arriaii_lcell_comb
-- Equation(s):
-- \S~24_combout\ = ( \B[24]~input_o\ & ( !\A[24]~input_o\ $ (cb(6)) ) ) # ( !\B[24]~input_o\ & ( !\A[24]~input_o\ $ (!cb(6)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000011110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[24]~input_o\,
	datad => ALT_INV_cb(6),
	dataf => \ALT_INV_B[24]~input_o\,
	combout => \S~24_combout\);

-- Location: IOIBUF_X56_Y0_N1
\B[25]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(25),
	o => \B[25]~input_o\);

-- Location: LABCELL_X47_Y4_N8
\c[25]~30\ : arriaii_lcell_comb
-- Equation(s):
-- \c[25]~30_combout\ = ( \A[24]~input_o\ & ( \B[24]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_A[24]~input_o\,
	dataf => \ALT_INV_B[24]~input_o\,
	combout => \c[25]~30_combout\);

-- Location: IOIBUF_X59_Y12_N32
\A[25]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(25),
	o => \A[25]~input_o\);

-- Location: LABCELL_X47_Y5_N36
\c[25]~31\ : arriaii_lcell_comb
-- Equation(s):
-- \c[25]~31_combout\ = ( cb(6) & ( (\A[24]~input_o\) # (\B[24]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[24]~input_o\,
	datad => \ALT_INV_A[24]~input_o\,
	dataf => ALT_INV_cb(6),
	combout => \c[25]~31_combout\);

-- Location: LABCELL_X50_Y5_N34
\S~25\ : arriaii_lcell_comb
-- Equation(s):
-- \S~25_combout\ = ( \A[25]~input_o\ & ( \c[25]~31_combout\ & ( \B[25]~input_o\ ) ) ) # ( !\A[25]~input_o\ & ( \c[25]~31_combout\ & ( !\B[25]~input_o\ ) ) ) # ( \A[25]~input_o\ & ( !\c[25]~31_combout\ & ( !\B[25]~input_o\ $ (\c[25]~30_combout\) ) ) ) # ( 
-- !\A[25]~input_o\ & ( !\c[25]~31_combout\ & ( !\B[25]~input_o\ $ (!\c[25]~30_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010110101010101010100101010110101010101010100101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[25]~input_o\,
	datad => \ALT_INV_c[25]~30_combout\,
	datae => \ALT_INV_A[25]~input_o\,
	dataf => \ALT_INV_c[25]~31_combout\,
	combout => \S~25_combout\);

-- Location: IOIBUF_X59_Y15_N1
\B[26]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(26),
	o => \B[26]~input_o\);

-- Location: IOIBUF_X59_Y15_N94
\A[26]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(26),
	o => \A[26]~input_o\);

-- Location: LABCELL_X47_Y5_N16
\c[26]~32\ : arriaii_lcell_comb
-- Equation(s):
-- \c[26]~32_combout\ = ( \c[25]~31_combout\ & ( (!\A[25]~input_o\ & !\B[25]~input_o\) ) ) # ( !\c[25]~31_combout\ & ( (!\A[25]~input_o\ & ((!\c[25]~30_combout\) # (!\B[25]~input_o\))) # (\A[25]~input_o\ & (!\c[25]~30_combout\ & !\B[25]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101010100000111110101010000010101010000000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[25]~input_o\,
	datac => \ALT_INV_c[25]~30_combout\,
	datad => \ALT_INV_B[25]~input_o\,
	dataf => \ALT_INV_c[25]~31_combout\,
	combout => \c[26]~32_combout\);

-- Location: LABCELL_X47_Y5_N30
\S~26\ : arriaii_lcell_comb
-- Equation(s):
-- \S~26_combout\ = ( \c[26]~32_combout\ & ( !\B[26]~input_o\ $ (!\A[26]~input_o\) ) ) # ( !\c[26]~32_combout\ & ( !\B[26]~input_o\ $ (\A[26]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001111000011110000111100001100111100001111000011110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[26]~input_o\,
	datac => \ALT_INV_A[26]~input_o\,
	dataf => \ALT_INV_c[26]~32_combout\,
	combout => \S~26_combout\);

-- Location: IOIBUF_X32_Y0_N94
\A[27]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(27),
	o => \A[27]~input_o\);

-- Location: IOIBUF_X30_Y0_N63
\B[27]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(27),
	o => \B[27]~input_o\);

-- Location: LABCELL_X47_Y4_N28
\S~27\ : arriaii_lcell_comb
-- Equation(s):
-- \S~27_combout\ = ( \B[27]~input_o\ & ( \c[26]~32_combout\ & ( !\A[27]~input_o\ $ (((\B[26]~input_o\ & \A[26]~input_o\))) ) ) ) # ( !\B[27]~input_o\ & ( \c[26]~32_combout\ & ( !\A[27]~input_o\ $ (((!\B[26]~input_o\) # (!\A[26]~input_o\))) ) ) ) # ( 
-- \B[27]~input_o\ & ( !\c[26]~32_combout\ & ( !\A[27]~input_o\ $ (((\A[26]~input_o\) # (\B[26]~input_o\))) ) ) ) # ( !\B[27]~input_o\ & ( !\c[26]~32_combout\ & ( !\A[27]~input_o\ $ (((!\B[26]~input_o\ & !\A[26]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011110000110000110000111100001111001111001111000011000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[26]~input_o\,
	datac => \ALT_INV_A[27]~input_o\,
	datad => \ALT_INV_A[26]~input_o\,
	datae => \ALT_INV_B[27]~input_o\,
	dataf => \ALT_INV_c[26]~32_combout\,
	combout => \S~27_combout\);

-- Location: IOIBUF_X59_Y16_N63
\A[28]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(28),
	o => \A[28]~input_o\);

-- Location: IOIBUF_X59_Y12_N63
\B[28]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(28),
	o => \B[28]~input_o\);

-- Location: LABCELL_X47_Y4_N26
\cb~12\ : arriaii_lcell_comb
-- Equation(s):
-- \cb~12_combout\ = ( \A[25]~input_o\ & ( \A[26]~input_o\ & ( (!\B[25]~input_o\ & (!\B[26]~input_o\ & (!\A[24]~input_o\ $ (!\B[24]~input_o\)))) ) ) ) # ( !\A[25]~input_o\ & ( \A[26]~input_o\ & ( (\B[25]~input_o\ & (!\B[26]~input_o\ & (!\A[24]~input_o\ $ 
-- (!\B[24]~input_o\)))) ) ) ) # ( \A[25]~input_o\ & ( !\A[26]~input_o\ & ( (!\B[25]~input_o\ & (\B[26]~input_o\ & (!\A[24]~input_o\ $ (!\B[24]~input_o\)))) ) ) ) # ( !\A[25]~input_o\ & ( !\A[26]~input_o\ & ( (\B[25]~input_o\ & (\B[26]~input_o\ & 
-- (!\A[24]~input_o\ $ (!\B[24]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100010000000000100010000000000100010000000000100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[25]~input_o\,
	datab => \ALT_INV_B[26]~input_o\,
	datac => \ALT_INV_A[24]~input_o\,
	datad => \ALT_INV_B[24]~input_o\,
	datae => \ALT_INV_A[25]~input_o\,
	dataf => \ALT_INV_A[26]~input_o\,
	combout => \cb~12_combout\);

-- Location: LABCELL_X47_Y5_N14
\rCOut[6]\ : arriaii_lcell_comb
-- Equation(s):
-- rCOut(6) = LCELL(( \c[26]~32_combout\ & ( (!\B[27]~input_o\ & (\A[26]~input_o\ & (\B[26]~input_o\ & \A[27]~input_o\))) # (\B[27]~input_o\ & (((\A[26]~input_o\ & \B[26]~input_o\)) # (\A[27]~input_o\))) ) ) # ( !\c[26]~32_combout\ & ( (!\B[27]~input_o\ & 
-- (\A[27]~input_o\ & ((\B[26]~input_o\) # (\A[26]~input_o\)))) # (\B[27]~input_o\ & (((\A[27]~input_o\) # (\B[26]~input_o\)) # (\A[26]~input_o\))) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010101111111000101010111111100000001010101110000000101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[27]~input_o\,
	datab => \ALT_INV_A[26]~input_o\,
	datac => \ALT_INV_B[26]~input_o\,
	datad => \ALT_INV_A[27]~input_o\,
	dataf => \ALT_INV_c[26]~32_combout\,
	combout => rCOut(6));

-- Location: LABCELL_X47_Y5_N22
\cb[7]\ : arriaii_lcell_comb
-- Equation(s):
-- cb(7) = LCELL(( rCOut(6) ) # ( !rCOut(6) & ( (\cb~12_combout\ & (cb(6) & (!\B[27]~input_o\ $ (!\A[27]~input_o\)))) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010010000000000001001011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[27]~input_o\,
	datab => \ALT_INV_cb~12_combout\,
	datac => \ALT_INV_A[27]~input_o\,
	datad => ALT_INV_cb(6),
	dataf => ALT_INV_rCOut(6),
	combout => cb(7));

-- Location: LABCELL_X47_Y5_N26
\S~28\ : arriaii_lcell_comb
-- Equation(s):
-- \S~28_combout\ = ( cb(7) & ( !\A[28]~input_o\ $ (\B[28]~input_o\) ) ) # ( !cb(7) & ( !\A[28]~input_o\ $ (!\B[28]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000011110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[28]~input_o\,
	datad => \ALT_INV_B[28]~input_o\,
	dataf => ALT_INV_cb(7),
	combout => \S~28_combout\);

-- Location: IOIBUF_X59_Y16_N32
\B[29]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(29),
	o => \B[29]~input_o\);

-- Location: IOIBUF_X59_Y15_N32
\A[29]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(29),
	o => \A[29]~input_o\);

-- Location: LABCELL_X47_Y5_N0
\S~29\ : arriaii_lcell_comb
-- Equation(s):
-- \S~29_combout\ = ( cb(7) & ( !\B[29]~input_o\ $ (!\A[29]~input_o\ $ (((\B[28]~input_o\) # (\A[28]~input_o\)))) ) ) # ( !cb(7) & ( !\B[29]~input_o\ $ (!\A[29]~input_o\ $ (((\A[28]~input_o\ & \B[28]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011010101001010101101010100101101010100101010110101010010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[29]~input_o\,
	datab => \ALT_INV_A[28]~input_o\,
	datac => \ALT_INV_B[28]~input_o\,
	datad => \ALT_INV_A[29]~input_o\,
	dataf => ALT_INV_cb(7),
	combout => \S~29_combout\);

-- Location: IOIBUF_X59_Y13_N94
\B[30]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(30),
	o => \B[30]~input_o\);

-- Location: IOIBUF_X59_Y12_N94
\A[30]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(30),
	o => \A[30]~input_o\);

-- Location: LABCELL_X47_Y5_N8
\c[30]~35\ : arriaii_lcell_comb
-- Equation(s):
-- \c[30]~35_combout\ = ( cb(7) & ( (!\A[29]~input_o\ & (\B[29]~input_o\ & ((\B[28]~input_o\) # (\A[28]~input_o\)))) # (\A[29]~input_o\ & (((\B[29]~input_o\) # (\B[28]~input_o\)) # (\A[28]~input_o\))) ) ) # ( !cb(7) & ( (!\A[29]~input_o\ & (\A[28]~input_o\ & 
-- (\B[28]~input_o\ & \B[29]~input_o\))) # (\A[29]~input_o\ & (((\A[28]~input_o\ & \B[28]~input_o\)) # (\B[29]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101010111000000010101011100010101011111110001010101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[29]~input_o\,
	datab => \ALT_INV_A[28]~input_o\,
	datac => \ALT_INV_B[28]~input_o\,
	datad => \ALT_INV_B[29]~input_o\,
	dataf => ALT_INV_cb(7),
	combout => \c[30]~35_combout\);

-- Location: MLABCELL_X52_Y5_N24
\S~30\ : arriaii_lcell_comb
-- Equation(s):
-- \S~30_combout\ = ( \A[30]~input_o\ & ( \c[30]~35_combout\ & ( \B[30]~input_o\ ) ) ) # ( !\A[30]~input_o\ & ( \c[30]~35_combout\ & ( !\B[30]~input_o\ ) ) ) # ( \A[30]~input_o\ & ( !\c[30]~35_combout\ & ( !\B[30]~input_o\ ) ) ) # ( !\A[30]~input_o\ & ( 
-- !\c[30]~35_combout\ & ( \B[30]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011110011001100110011001100110011000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[30]~input_o\,
	datae => \ALT_INV_A[30]~input_o\,
	dataf => \ALT_INV_c[30]~35_combout\,
	combout => \S~30_combout\);

-- Location: IOIBUF_X59_Y13_N1
\B[31]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(31),
	o => \B[31]~input_o\);

-- Location: IOIBUF_X59_Y13_N32
\A[31]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(31),
	o => \A[31]~input_o\);

-- Location: MLABCELL_X52_Y5_N22
\S~31\ : arriaii_lcell_comb
-- Equation(s):
-- \S~31_combout\ = ( \c[30]~35_combout\ & ( !\B[31]~input_o\ $ (!\A[31]~input_o\ $ (((\B[30]~input_o\) # (\A[30]~input_o\)))) ) ) # ( !\c[30]~35_combout\ & ( !\B[31]~input_o\ $ (!\A[31]~input_o\ $ (((\A[30]~input_o\ & \B[30]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111011100001000111101110000101111000100001110111100010000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[30]~input_o\,
	datab => \ALT_INV_B[30]~input_o\,
	datac => \ALT_INV_B[31]~input_o\,
	datad => \ALT_INV_A[31]~input_o\,
	dataf => \ALT_INV_c[30]~35_combout\,
	combout => \S~31_combout\);

-- Location: MLABCELL_X52_Y5_N18
\cb~14\ : arriaii_lcell_comb
-- Equation(s):
-- \cb~14_combout\ = ( \B[29]~input_o\ & ( \A[28]~input_o\ & ( (!\A[29]~input_o\ & (!\B[28]~input_o\ & (!\B[30]~input_o\ $ (!\A[30]~input_o\)))) ) ) ) # ( !\B[29]~input_o\ & ( \A[28]~input_o\ & ( (\A[29]~input_o\ & (!\B[28]~input_o\ & (!\B[30]~input_o\ $ 
-- (!\A[30]~input_o\)))) ) ) ) # ( \B[29]~input_o\ & ( !\A[28]~input_o\ & ( (!\A[29]~input_o\ & (\B[28]~input_o\ & (!\B[30]~input_o\ $ (!\A[30]~input_o\)))) ) ) ) # ( !\B[29]~input_o\ & ( !\A[28]~input_o\ & ( (\A[29]~input_o\ & (\B[28]~input_o\ & 
-- (!\B[30]~input_o\ $ (!\A[30]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010100000000000010100000010100000000000010100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[29]~input_o\,
	datab => \ALT_INV_B[30]~input_o\,
	datac => \ALT_INV_A[30]~input_o\,
	datad => \ALT_INV_B[28]~input_o\,
	datae => \ALT_INV_B[29]~input_o\,
	dataf => \ALT_INV_A[28]~input_o\,
	combout => \cb~14_combout\);

-- Location: MLABCELL_X52_Y5_N20
\c[31]~33\ : arriaii_lcell_comb
-- Equation(s):
-- \c[31]~33_combout\ = ( \B[30]~input_o\ & ( \A[30]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_A[30]~input_o\,
	dataf => \ALT_INV_B[30]~input_o\,
	combout => \c[31]~33_combout\);

-- Location: MLABCELL_X52_Y5_N32
\c[31]~34\ : arriaii_lcell_comb
-- Equation(s):
-- \c[31]~34_combout\ = ( \A[30]~input_o\ & ( \c[30]~35_combout\ ) ) # ( !\A[30]~input_o\ & ( \c[30]~35_combout\ & ( \B[30]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[30]~input_o\,
	datae => \ALT_INV_A[30]~input_o\,
	dataf => \ALT_INV_c[30]~35_combout\,
	combout => \c[31]~34_combout\);

-- Location: MLABCELL_X52_Y5_N10
\rCOut[7]\ : arriaii_lcell_comb
-- Equation(s):
-- rCOut(7) = LCELL(( \A[31]~input_o\ & ( \c[31]~34_combout\ ) ) # ( !\A[31]~input_o\ & ( \c[31]~34_combout\ & ( \B[31]~input_o\ ) ) ) # ( \A[31]~input_o\ & ( !\c[31]~34_combout\ & ( (\c[31]~33_combout\) # (\B[31]~input_o\) ) ) ) # ( !\A[31]~input_o\ & ( 
-- !\c[31]~34_combout\ & ( (\B[31]~input_o\ & \c[31]~33_combout\) ) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000011111111111100001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[31]~input_o\,
	datad => \ALT_INV_c[31]~33_combout\,
	datae => \ALT_INV_A[31]~input_o\,
	dataf => \ALT_INV_c[31]~34_combout\,
	combout => rCOut(7));

-- Location: MLABCELL_X52_Y5_N38
\cb[8]\ : arriaii_lcell_comb
-- Equation(s):
-- cb(8) = LCELL(( cb(7) & ( rCOut(7) ) ) # ( !cb(7) & ( rCOut(7) ) ) # ( cb(7) & ( !rCOut(7) & ( (\cb~14_combout\ & (!\A[31]~input_o\ $ (!\B[31]~input_o\))) ) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000011110011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[31]~input_o\,
	datac => \ALT_INV_B[31]~input_o\,
	datad => \ALT_INV_cb~14_combout\,
	datae => ALT_INV_cb(7),
	dataf => ALT_INV_rCOut(7),
	combout => cb(8));

-- Location: MLABCELL_X52_Y5_N34
\c[31]~34DUPLICATE\ : arriaii_lcell_comb
-- Equation(s):
-- \c[31]~34DUPLICATE_combout\ = ( \A[30]~input_o\ & ( \c[30]~35_combout\ ) ) # ( !\A[30]~input_o\ & ( \c[30]~35_combout\ & ( \B[30]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[30]~input_o\,
	datae => \ALT_INV_A[30]~input_o\,
	dataf => \ALT_INV_c[30]~35_combout\,
	combout => \c[31]~34DUPLICATE_combout\);

-- Location: MLABCELL_X52_Y5_N28
\Ovfl~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Ovfl~0_combout\ = ( !\c[31]~34DUPLICATE_combout\ & ( cb(8) & ( !\c[31]~33_combout\ ) ) ) # ( \c[31]~34DUPLICATE_combout\ & ( !cb(8) ) ) # ( !\c[31]~34DUPLICATE_combout\ & ( !cb(8) & ( \c[31]~33_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111111111111111111110000111100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_c[31]~33_combout\,
	datae => \ALT_INV_c[31]~34DUPLICATE_combout\,
	dataf => ALT_INV_cb(8),
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


