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

-- DATE "11/21/2026 11:57:09"

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
-- S[0]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[1]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[2]	=>  Location: PIN_T6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[3]	=>  Location: PIN_W4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[4]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[5]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[6]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[7]	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[8]	=>  Location: PIN_U5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[9]	=>  Location: PIN_W5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[10]	=>  Location: PIN_AC2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[11]	=>  Location: PIN_AA3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[12]	=>  Location: PIN_AA4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[13]	=>  Location: PIN_AC3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[14]	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[15]	=>  Location: PIN_W6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[16]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[17]	=>  Location: PIN_AD3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[18]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[19]	=>  Location: PIN_AE3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[20]	=>  Location: PIN_Y6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[21]	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[22]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[23]	=>  Location: PIN_AC4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[24]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[25]	=>  Location: PIN_AD4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[26]	=>  Location: PIN_AE1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[27]	=>  Location: PIN_AD1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[28]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[29]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[30]	=>  Location: PIN_AA6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[31]	=>  Location: PIN_AC5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cout	=>  Location: PIN_Y5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ovfl	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cin	=>  Location: PIN_AB1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_AB3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_AB2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_AC9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_AD9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_AC1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_AC10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_AG1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_AF3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_AD7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_AF1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_AD6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[8]	=>  Location: PIN_AE4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_U4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[9]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[10]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[11]	=>  Location: PIN_AC7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[11]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[12]	=>  Location: PIN_AH2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[12]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[13]	=>  Location: PIN_U3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[13]	=>  Location: PIN_AC6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[14]	=>  Location: PIN_AH3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[14]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[15]	=>  Location: PIN_AF4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[15]	=>  Location: PIN_W12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[16]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[16]	=>  Location: PIN_AG4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[17]	=>  Location: PIN_AC11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[17]	=>  Location: PIN_AF8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[18]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[18]	=>  Location: PIN_AE9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[19]	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[19]	=>  Location: PIN_AF2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[20]	=>  Location: PIN_W1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[20]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[21]	=>  Location: PIN_W3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[21]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[22]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[22]	=>  Location: PIN_AE6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[23]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[23]	=>  Location: PIN_P5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[24]	=>  Location: PIN_Y12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[24]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[25]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[25]	=>  Location: PIN_AE5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[26]	=>  Location: PIN_AF6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[26]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[27]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[27]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[28]	=>  Location: PIN_AE10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[28]	=>  Location: PIN_T1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[29]	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[29]	=>  Location: PIN_AF11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[30]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[30]	=>  Location: PIN_W11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[31]	=>  Location: PIN_AF5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[31]	=>  Location: PIN_AG3,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \_~1_sumout\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \_~2\ : std_logic;
SIGNAL \_~3\ : std_logic;
SIGNAL \_~5_sumout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \_~6\ : std_logic;
SIGNAL \_~7\ : std_logic;
SIGNAL \_~9_sumout\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \_~10\ : std_logic;
SIGNAL \_~11\ : std_logic;
SIGNAL \_~13_sumout\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \_~14\ : std_logic;
SIGNAL \_~15\ : std_logic;
SIGNAL \_~17_sumout\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \_~18\ : std_logic;
SIGNAL \_~19\ : std_logic;
SIGNAL \_~21_sumout\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \_~22\ : std_logic;
SIGNAL \_~23\ : std_logic;
SIGNAL \_~25_sumout\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \_~26\ : std_logic;
SIGNAL \_~27\ : std_logic;
SIGNAL \_~29_sumout\ : std_logic;
SIGNAL \B[8]~input_o\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \_~30\ : std_logic;
SIGNAL \_~31\ : std_logic;
SIGNAL \_~33_sumout\ : std_logic;
SIGNAL \B[9]~input_o\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \_~34\ : std_logic;
SIGNAL \_~35\ : std_logic;
SIGNAL \_~37_sumout\ : std_logic;
SIGNAL \B[10]~input_o\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \_~38\ : std_logic;
SIGNAL \_~39\ : std_logic;
SIGNAL \_~41_sumout\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \B[11]~input_o\ : std_logic;
SIGNAL \_~42\ : std_logic;
SIGNAL \_~43\ : std_logic;
SIGNAL \_~45_sumout\ : std_logic;
SIGNAL \B[12]~input_o\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \_~46\ : std_logic;
SIGNAL \_~47\ : std_logic;
SIGNAL \_~49_sumout\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \B[13]~input_o\ : std_logic;
SIGNAL \_~50\ : std_logic;
SIGNAL \_~51\ : std_logic;
SIGNAL \_~53_sumout\ : std_logic;
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \B[14]~input_o\ : std_logic;
SIGNAL \_~54\ : std_logic;
SIGNAL \_~55\ : std_logic;
SIGNAL \_~57_sumout\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \B[15]~input_o\ : std_logic;
SIGNAL \_~58\ : std_logic;
SIGNAL \_~59\ : std_logic;
SIGNAL \_~61_sumout\ : std_logic;
SIGNAL \A[16]~input_o\ : std_logic;
SIGNAL \B[16]~input_o\ : std_logic;
SIGNAL \_~62\ : std_logic;
SIGNAL \_~63\ : std_logic;
SIGNAL \_~65_sumout\ : std_logic;
SIGNAL \A[17]~input_o\ : std_logic;
SIGNAL \B[17]~input_o\ : std_logic;
SIGNAL \_~66\ : std_logic;
SIGNAL \_~67\ : std_logic;
SIGNAL \_~69_sumout\ : std_logic;
SIGNAL \A[18]~input_o\ : std_logic;
SIGNAL \B[18]~input_o\ : std_logic;
SIGNAL \_~70\ : std_logic;
SIGNAL \_~71\ : std_logic;
SIGNAL \_~73_sumout\ : std_logic;
SIGNAL \B[19]~input_o\ : std_logic;
SIGNAL \A[19]~input_o\ : std_logic;
SIGNAL \_~74\ : std_logic;
SIGNAL \_~75\ : std_logic;
SIGNAL \_~77_sumout\ : std_logic;
SIGNAL \A[20]~input_o\ : std_logic;
SIGNAL \B[20]~input_o\ : std_logic;
SIGNAL \_~78\ : std_logic;
SIGNAL \_~79\ : std_logic;
SIGNAL \_~81_sumout\ : std_logic;
SIGNAL \B[21]~input_o\ : std_logic;
SIGNAL \A[21]~input_o\ : std_logic;
SIGNAL \_~82\ : std_logic;
SIGNAL \_~83\ : std_logic;
SIGNAL \_~85_sumout\ : std_logic;
SIGNAL \B[22]~input_o\ : std_logic;
SIGNAL \A[22]~input_o\ : std_logic;
SIGNAL \_~86\ : std_logic;
SIGNAL \_~87\ : std_logic;
SIGNAL \_~89_sumout\ : std_logic;
SIGNAL \B[23]~input_o\ : std_logic;
SIGNAL \A[23]~input_o\ : std_logic;
SIGNAL \_~90\ : std_logic;
SIGNAL \_~91\ : std_logic;
SIGNAL \_~93_sumout\ : std_logic;
SIGNAL \B[24]~input_o\ : std_logic;
SIGNAL \A[24]~input_o\ : std_logic;
SIGNAL \_~94\ : std_logic;
SIGNAL \_~95\ : std_logic;
SIGNAL \_~97_sumout\ : std_logic;
SIGNAL \B[25]~input_o\ : std_logic;
SIGNAL \A[25]~input_o\ : std_logic;
SIGNAL \_~98\ : std_logic;
SIGNAL \_~99\ : std_logic;
SIGNAL \_~101_sumout\ : std_logic;
SIGNAL \B[26]~input_o\ : std_logic;
SIGNAL \A[26]~input_o\ : std_logic;
SIGNAL \_~102\ : std_logic;
SIGNAL \_~103\ : std_logic;
SIGNAL \_~105_sumout\ : std_logic;
SIGNAL \A[27]~input_o\ : std_logic;
SIGNAL \B[27]~input_o\ : std_logic;
SIGNAL \_~106\ : std_logic;
SIGNAL \_~107\ : std_logic;
SIGNAL \_~109_sumout\ : std_logic;
SIGNAL \B[28]~input_o\ : std_logic;
SIGNAL \A[28]~input_o\ : std_logic;
SIGNAL \_~110\ : std_logic;
SIGNAL \_~111\ : std_logic;
SIGNAL \_~113_sumout\ : std_logic;
SIGNAL \A[29]~input_o\ : std_logic;
SIGNAL \B[29]~input_o\ : std_logic;
SIGNAL \_~114\ : std_logic;
SIGNAL \_~115\ : std_logic;
SIGNAL \_~117_sumout\ : std_logic;
SIGNAL \B[30]~input_o\ : std_logic;
SIGNAL \A[30]~input_o\ : std_logic;
SIGNAL \_~118\ : std_logic;
SIGNAL \_~119\ : std_logic;
SIGNAL \_~121_sumout\ : std_logic;
SIGNAL \B[31]~input_o\ : std_logic;
SIGNAL \A[31]~input_o\ : std_logic;
SIGNAL \_~122\ : std_logic;
SIGNAL \_~123\ : std_logic;
SIGNAL \_~125_sumout\ : std_logic;
SIGNAL \_~126\ : std_logic;
SIGNAL \_~127\ : std_logic;
SIGNAL \_~129_sumout\ : std_logic;
SIGNAL \Ovfl~0_combout\ : std_logic;
SIGNAL \ALT_INV_A[31]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[31]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[30]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[30]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[29]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[29]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[28]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[28]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[27]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[27]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[26]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[26]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[25]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[25]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[24]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[24]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[23]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[23]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[22]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[22]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[21]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[21]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[20]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[20]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[19]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[19]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[18]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[18]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[17]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[17]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[16]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[16]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_Cin~input_o\ : std_logic;
SIGNAL \ALT_INV_Ovfl~0_combout\ : std_logic;
SIGNAL \ALT_INV__~125_sumout\ : std_logic;

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
\ALT_INV_A[31]~input_o\ <= NOT \A[31]~input_o\;
\ALT_INV_B[31]~input_o\ <= NOT \B[31]~input_o\;
\ALT_INV_A[30]~input_o\ <= NOT \A[30]~input_o\;
\ALT_INV_B[30]~input_o\ <= NOT \B[30]~input_o\;
\ALT_INV_A[29]~input_o\ <= NOT \A[29]~input_o\;
\ALT_INV_B[29]~input_o\ <= NOT \B[29]~input_o\;
\ALT_INV_A[28]~input_o\ <= NOT \A[28]~input_o\;
\ALT_INV_B[28]~input_o\ <= NOT \B[28]~input_o\;
\ALT_INV_A[27]~input_o\ <= NOT \A[27]~input_o\;
\ALT_INV_B[27]~input_o\ <= NOT \B[27]~input_o\;
\ALT_INV_A[26]~input_o\ <= NOT \A[26]~input_o\;
\ALT_INV_B[26]~input_o\ <= NOT \B[26]~input_o\;
\ALT_INV_A[25]~input_o\ <= NOT \A[25]~input_o\;
\ALT_INV_B[25]~input_o\ <= NOT \B[25]~input_o\;
\ALT_INV_A[24]~input_o\ <= NOT \A[24]~input_o\;
\ALT_INV_B[24]~input_o\ <= NOT \B[24]~input_o\;
\ALT_INV_A[23]~input_o\ <= NOT \A[23]~input_o\;
\ALT_INV_B[23]~input_o\ <= NOT \B[23]~input_o\;
\ALT_INV_A[22]~input_o\ <= NOT \A[22]~input_o\;
\ALT_INV_B[22]~input_o\ <= NOT \B[22]~input_o\;
\ALT_INV_A[21]~input_o\ <= NOT \A[21]~input_o\;
\ALT_INV_B[21]~input_o\ <= NOT \B[21]~input_o\;
\ALT_INV_A[20]~input_o\ <= NOT \A[20]~input_o\;
\ALT_INV_B[20]~input_o\ <= NOT \B[20]~input_o\;
\ALT_INV_A[19]~input_o\ <= NOT \A[19]~input_o\;
\ALT_INV_B[19]~input_o\ <= NOT \B[19]~input_o\;
\ALT_INV_A[18]~input_o\ <= NOT \A[18]~input_o\;
\ALT_INV_B[18]~input_o\ <= NOT \B[18]~input_o\;
\ALT_INV_A[17]~input_o\ <= NOT \A[17]~input_o\;
\ALT_INV_B[17]~input_o\ <= NOT \B[17]~input_o\;
\ALT_INV_A[16]~input_o\ <= NOT \A[16]~input_o\;
\ALT_INV_B[16]~input_o\ <= NOT \B[16]~input_o\;
\ALT_INV_A[15]~input_o\ <= NOT \A[15]~input_o\;
\ALT_INV_B[15]~input_o\ <= NOT \B[15]~input_o\;
\ALT_INV_A[14]~input_o\ <= NOT \A[14]~input_o\;
\ALT_INV_B[14]~input_o\ <= NOT \B[14]~input_o\;
\ALT_INV_A[13]~input_o\ <= NOT \A[13]~input_o\;
\ALT_INV_B[13]~input_o\ <= NOT \B[13]~input_o\;
\ALT_INV_A[12]~input_o\ <= NOT \A[12]~input_o\;
\ALT_INV_B[12]~input_o\ <= NOT \B[12]~input_o\;
\ALT_INV_A[11]~input_o\ <= NOT \A[11]~input_o\;
\ALT_INV_B[11]~input_o\ <= NOT \B[11]~input_o\;
\ALT_INV_A[10]~input_o\ <= NOT \A[10]~input_o\;
\ALT_INV_B[10]~input_o\ <= NOT \B[10]~input_o\;
\ALT_INV_A[9]~input_o\ <= NOT \A[9]~input_o\;
\ALT_INV_B[9]~input_o\ <= NOT \B[9]~input_o\;
\ALT_INV_A[8]~input_o\ <= NOT \A[8]~input_o\;
\ALT_INV_B[8]~input_o\ <= NOT \B[8]~input_o\;
\ALT_INV_A[7]~input_o\ <= NOT \A[7]~input_o\;
\ALT_INV_B[7]~input_o\ <= NOT \B[7]~input_o\;
\ALT_INV_A[6]~input_o\ <= NOT \A[6]~input_o\;
\ALT_INV_B[6]~input_o\ <= NOT \B[6]~input_o\;
\ALT_INV_A[5]~input_o\ <= NOT \A[5]~input_o\;
\ALT_INV_B[5]~input_o\ <= NOT \B[5]~input_o\;
\ALT_INV_A[4]~input_o\ <= NOT \A[4]~input_o\;
\ALT_INV_B[4]~input_o\ <= NOT \B[4]~input_o\;
\ALT_INV_A[3]~input_o\ <= NOT \A[3]~input_o\;
\ALT_INV_B[3]~input_o\ <= NOT \B[3]~input_o\;
\ALT_INV_A[2]~input_o\ <= NOT \A[2]~input_o\;
\ALT_INV_B[2]~input_o\ <= NOT \B[2]~input_o\;
\ALT_INV_A[1]~input_o\ <= NOT \A[1]~input_o\;
\ALT_INV_B[1]~input_o\ <= NOT \B[1]~input_o\;
\ALT_INV_A[0]~input_o\ <= NOT \A[0]~input_o\;
\ALT_INV_B[0]~input_o\ <= NOT \B[0]~input_o\;
\ALT_INV_Cin~input_o\ <= NOT \Cin~input_o\;
\ALT_INV_Ovfl~0_combout\ <= NOT \Ovfl~0_combout\;
\ALT_INV__~125_sumout\ <= NOT \_~125_sumout\;

-- Location: IOOBUF_X59_Y21_N33
\S[0]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \_~1_sumout\,
	devoe => ww_devoe,
	o => \S[0]~output_o\);

-- Location: IOOBUF_X59_Y25_N2
\S[1]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \_~5_sumout\,
	devoe => ww_devoe,
	o => \S[1]~output_o\);

-- Location: IOOBUF_X59_Y15_N98
\S[2]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \_~9_sumout\,
	devoe => ww_devoe,
	o => \S[2]~output_o\);

-- Location: IOOBUF_X59_Y12_N67
\S[3]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \_~13_sumout\,
	devoe => ww_devoe,
	o => \S[3]~output_o\);

-- Location: IOOBUF_X59_Y16_N67
\S[4]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \_~17_sumout\,
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
	i => \_~21_sumout\,
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
	i => \_~25_sumout\,
	devoe => ww_devoe,
	o => \S[6]~output_o\);

-- Location: IOOBUF_X59_Y16_N2
\S[7]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \_~29_sumout\,
	devoe => ww_devoe,
	o => \S[7]~output_o\);

-- Location: IOOBUF_X59_Y21_N5
\S[8]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \_~33_sumout\,
	devoe => ww_devoe,
	o => \S[8]~output_o\);

-- Location: IOOBUF_X59_Y12_N2
\S[9]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \_~37_sumout\,
	devoe => ww_devoe,
	o => \S[9]~output_o\);

-- Location: IOOBUF_X59_Y10_N98
\S[10]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \_~41_sumout\,
	devoe => ww_devoe,
	o => \S[10]~output_o\);

-- Location: IOOBUF_X59_Y10_N67
\S[11]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \_~45_sumout\,
	devoe => ww_devoe,
	o => \S[11]~output_o\);

-- Location: IOOBUF_X59_Y10_N2
\S[12]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \_~49_sumout\,
	devoe => ww_devoe,
	o => \S[12]~output_o\);

-- Location: IOOBUF_X59_Y10_N36
\S[13]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \_~53_sumout\,
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
	i => \_~57_sumout\,
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
	i => \_~61_sumout\,
	devoe => ww_devoe,
	o => \S[15]~output_o\);

-- Location: IOOBUF_X59_Y12_N36
\S[16]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \_~65_sumout\,
	devoe => ww_devoe,
	o => \S[16]~output_o\);

-- Location: IOOBUF_X59_Y9_N5
\S[17]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \_~69_sumout\,
	devoe => ww_devoe,
	o => \S[17]~output_o\);

-- Location: IOOBUF_X59_Y12_N98
\S[18]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \_~73_sumout\,
	devoe => ww_devoe,
	o => \S[18]~output_o\);

-- Location: IOOBUF_X59_Y9_N67
\S[19]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \_~77_sumout\,
	devoe => ww_devoe,
	o => \S[19]~output_o\);

-- Location: IOOBUF_X59_Y7_N2
\S[20]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \_~81_sumout\,
	devoe => ww_devoe,
	o => \S[20]~output_o\);

-- Location: IOOBUF_X59_Y6_N36
\S[21]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \_~85_sumout\,
	devoe => ww_devoe,
	o => \S[21]~output_o\);

-- Location: IOOBUF_X59_Y6_N67
\S[22]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \_~89_sumout\,
	devoe => ww_devoe,
	o => \S[22]~output_o\);

-- Location: IOOBUF_X59_Y7_N98
\S[23]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \_~93_sumout\,
	devoe => ww_devoe,
	o => \S[23]~output_o\);

-- Location: IOOBUF_X59_Y6_N98
\S[24]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \_~97_sumout\,
	devoe => ww_devoe,
	o => \S[24]~output_o\);

-- Location: IOOBUF_X59_Y4_N67
\S[25]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \_~101_sumout\,
	devoe => ww_devoe,
	o => \S[25]~output_o\);

-- Location: IOOBUF_X59_Y15_N67
\S[26]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \_~105_sumout\,
	devoe => ww_devoe,
	o => \S[26]~output_o\);

-- Location: IOOBUF_X59_Y15_N5
\S[27]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \_~109_sumout\,
	devoe => ww_devoe,
	o => \S[27]~output_o\);

-- Location: IOOBUF_X59_Y4_N36
\S[28]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \_~113_sumout\,
	devoe => ww_devoe,
	o => \S[28]~output_o\);

-- Location: IOOBUF_X59_Y6_N2
\S[29]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \_~117_sumout\,
	devoe => ww_devoe,
	o => \S[29]~output_o\);

-- Location: IOOBUF_X59_Y4_N98
\S[30]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \_~121_sumout\,
	devoe => ww_devoe,
	o => \S[30]~output_o\);

-- Location: IOOBUF_X59_Y4_N2
\S[31]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \_~125_sumout\,
	devoe => ww_devoe,
	o => \S[31]~output_o\);

-- Location: IOOBUF_X59_Y7_N67
\Cout~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \_~129_sumout\,
	devoe => ww_devoe,
	o => \Cout~output_o\);

-- Location: IOOBUF_X59_Y7_N36
\Ovfl~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Ovfl~0_combout\,
	devoe => ww_devoe,
	o => \Ovfl~output_o\);

-- Location: IOIBUF_X59_Y16_N32
\Cin~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cin,
	o => \Cin~input_o\);

-- Location: IOIBUF_X59_Y13_N32
\B[0]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X41_Y0_N94
\A[0]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: LABCELL_X58_Y8_N0
\_~1\ : arriaii_lcell_comb
-- Equation(s):
-- \_~1_sumout\ = SUM(( !\Cin~input_o\ $ (!\B[0]~input_o\ $ (\A[0]~input_o\)) ) + ( !VCC ) + ( !VCC ))
-- \_~2\ = CARRY(( !\Cin~input_o\ $ (!\B[0]~input_o\ $ (\A[0]~input_o\)) ) + ( !VCC ) + ( !VCC ))
-- \_~3\ = SHARE((!\Cin~input_o\ & (\B[0]~input_o\ & \A[0]~input_o\)) # (\Cin~input_o\ & ((\A[0]~input_o\) # (\B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Cin~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_A[0]~input_o\,
	cin => GND,
	sharein => GND,
	sumout => \_~1_sumout\,
	cout => \_~2\,
	shareout => \_~3\);

-- Location: IOIBUF_X59_Y13_N1
\A[1]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: IOIBUF_X59_Y13_N94
\B[1]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: LABCELL_X58_Y8_N2
\_~5\ : arriaii_lcell_comb
-- Equation(s):
-- \_~5_sumout\ = SUM(( !\A[1]~input_o\ $ (!\B[1]~input_o\) ) + ( \_~3\ ) + ( \_~2\ ))
-- \_~6\ = CARRY(( !\A[1]~input_o\ $ (!\B[1]~input_o\) ) + ( \_~3\ ) + ( \_~2\ ))
-- \_~7\ = SHARE((\A[1]~input_o\ & \B[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[1]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	cin => \_~2\,
	sharein => \_~3\,
	sumout => \_~5_sumout\,
	cout => \_~6\,
	shareout => \_~7\);

-- Location: IOIBUF_X55_Y0_N63
\A[2]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: IOIBUF_X55_Y0_N1
\B[2]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: LABCELL_X58_Y8_N4
\_~9\ : arriaii_lcell_comb
-- Equation(s):
-- \_~9_sumout\ = SUM(( !\A[2]~input_o\ $ (!\B[2]~input_o\) ) + ( \_~7\ ) + ( \_~6\ ))
-- \_~10\ = CARRY(( !\A[2]~input_o\ $ (!\B[2]~input_o\) ) + ( \_~7\ ) + ( \_~6\ ))
-- \_~11\ = SHARE((\A[2]~input_o\ & \B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[2]~input_o\,
	datad => \ALT_INV_B[2]~input_o\,
	cin => \_~6\,
	sharein => \_~7\,
	sumout => \_~9_sumout\,
	cout => \_~10\,
	shareout => \_~11\);

-- Location: IOIBUF_X55_Y0_N32
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

-- Location: LABCELL_X58_Y8_N6
\_~13\ : arriaii_lcell_comb
-- Equation(s):
-- \_~13_sumout\ = SUM(( !\B[3]~input_o\ $ (!\A[3]~input_o\) ) + ( \_~11\ ) + ( \_~10\ ))
-- \_~14\ = CARRY(( !\B[3]~input_o\ $ (!\A[3]~input_o\) ) + ( \_~11\ ) + ( \_~10\ ))
-- \_~15\ = SHARE((\B[3]~input_o\ & \A[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[3]~input_o\,
	datad => \ALT_INV_A[3]~input_o\,
	cin => \_~10\,
	sharein => \_~11\,
	sumout => \_~13_sumout\,
	cout => \_~14\,
	shareout => \_~15\);

-- Location: IOIBUF_X56_Y0_N94
\A[4]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: IOIBUF_X56_Y0_N32
\B[4]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: LABCELL_X58_Y8_N8
\_~17\ : arriaii_lcell_comb
-- Equation(s):
-- \_~17_sumout\ = SUM(( !\A[4]~input_o\ $ (!\B[4]~input_o\) ) + ( \_~15\ ) + ( \_~14\ ))
-- \_~18\ = CARRY(( !\A[4]~input_o\ $ (!\B[4]~input_o\) ) + ( \_~15\ ) + ( \_~14\ ))
-- \_~19\ = SHARE((\A[4]~input_o\ & \B[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[4]~input_o\,
	datad => \ALT_INV_B[4]~input_o\,
	cin => \_~14\,
	sharein => \_~15\,
	sumout => \_~17_sumout\,
	cout => \_~18\,
	shareout => \_~19\);

-- Location: IOIBUF_X52_Y0_N63
\A[5]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: IOIBUF_X54_Y0_N63
\B[5]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: LABCELL_X58_Y8_N10
\_~21\ : arriaii_lcell_comb
-- Equation(s):
-- \_~21_sumout\ = SUM(( !\A[5]~input_o\ $ (!\B[5]~input_o\) ) + ( \_~19\ ) + ( \_~18\ ))
-- \_~22\ = CARRY(( !\A[5]~input_o\ $ (!\B[5]~input_o\) ) + ( \_~19\ ) + ( \_~18\ ))
-- \_~23\ = SHARE((\A[5]~input_o\ & \B[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[5]~input_o\,
	datad => \ALT_INV_B[5]~input_o\,
	cin => \_~18\,
	sharein => \_~19\,
	sumout => \_~21_sumout\,
	cout => \_~22\,
	shareout => \_~23\);

-- Location: IOIBUF_X56_Y0_N63
\B[6]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: IOIBUF_X54_Y0_N1
\A[6]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: LABCELL_X58_Y8_N12
\_~25\ : arriaii_lcell_comb
-- Equation(s):
-- \_~25_sumout\ = SUM(( !\B[6]~input_o\ $ (!\A[6]~input_o\) ) + ( \_~23\ ) + ( \_~22\ ))
-- \_~26\ = CARRY(( !\B[6]~input_o\ $ (!\A[6]~input_o\) ) + ( \_~23\ ) + ( \_~22\ ))
-- \_~27\ = SHARE((\B[6]~input_o\ & \A[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[6]~input_o\,
	datad => \ALT_INV_A[6]~input_o\,
	cin => \_~22\,
	sharein => \_~23\,
	sumout => \_~25_sumout\,
	cout => \_~26\,
	shareout => \_~27\);

-- Location: IOIBUF_X52_Y0_N94
\B[7]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: IOIBUF_X54_Y0_N94
\A[7]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: LABCELL_X58_Y8_N14
\_~29\ : arriaii_lcell_comb
-- Equation(s):
-- \_~29_sumout\ = SUM(( !\B[7]~input_o\ $ (!\A[7]~input_o\) ) + ( \_~27\ ) + ( \_~26\ ))
-- \_~30\ = CARRY(( !\B[7]~input_o\ $ (!\A[7]~input_o\) ) + ( \_~27\ ) + ( \_~26\ ))
-- \_~31\ = SHARE((\B[7]~input_o\ & \A[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[7]~input_o\,
	datad => \ALT_INV_A[7]~input_o\,
	cin => \_~26\,
	sharein => \_~27\,
	sumout => \_~29_sumout\,
	cout => \_~30\,
	shareout => \_~31\);

-- Location: IOIBUF_X50_Y0_N1
\B[8]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

-- Location: IOIBUF_X59_Y21_N63
\A[8]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: LABCELL_X58_Y8_N16
\_~33\ : arriaii_lcell_comb
-- Equation(s):
-- \_~33_sumout\ = SUM(( !\B[8]~input_o\ $ (!\A[8]~input_o\) ) + ( \_~31\ ) + ( \_~30\ ))
-- \_~34\ = CARRY(( !\B[8]~input_o\ $ (!\A[8]~input_o\) ) + ( \_~31\ ) + ( \_~30\ ))
-- \_~35\ = SHARE((\B[8]~input_o\ & \A[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[8]~input_o\,
	datad => \ALT_INV_A[8]~input_o\,
	cin => \_~30\,
	sharein => \_~31\,
	sumout => \_~33_sumout\,
	cout => \_~34\,
	shareout => \_~35\);

-- Location: IOIBUF_X47_Y0_N32
\B[9]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(9),
	o => \B[9]~input_o\);

-- Location: IOIBUF_X55_Y0_N94
\A[9]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

-- Location: LABCELL_X58_Y8_N18
\_~37\ : arriaii_lcell_comb
-- Equation(s):
-- \_~37_sumout\ = SUM(( !\B[9]~input_o\ $ (!\A[9]~input_o\) ) + ( \_~35\ ) + ( \_~34\ ))
-- \_~38\ = CARRY(( !\B[9]~input_o\ $ (!\A[9]~input_o\) ) + ( \_~35\ ) + ( \_~34\ ))
-- \_~39\ = SHARE((\B[9]~input_o\ & \A[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[9]~input_o\,
	datad => \ALT_INV_A[9]~input_o\,
	cin => \_~34\,
	sharein => \_~35\,
	sumout => \_~37_sumout\,
	cout => \_~38\,
	shareout => \_~39\);

-- Location: IOIBUF_X47_Y0_N94
\B[10]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(10),
	o => \B[10]~input_o\);

-- Location: IOIBUF_X59_Y22_N32
\A[10]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

-- Location: LABCELL_X58_Y8_N20
\_~41\ : arriaii_lcell_comb
-- Equation(s):
-- \_~41_sumout\ = SUM(( !\B[10]~input_o\ $ (!\A[10]~input_o\) ) + ( \_~39\ ) + ( \_~38\ ))
-- \_~42\ = CARRY(( !\B[10]~input_o\ $ (!\A[10]~input_o\) ) + ( \_~39\ ) + ( \_~38\ ))
-- \_~43\ = SHARE((\B[10]~input_o\ & \A[10]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[10]~input_o\,
	datad => \ALT_INV_A[10]~input_o\,
	cin => \_~38\,
	sharein => \_~39\,
	sumout => \_~41_sumout\,
	cout => \_~42\,
	shareout => \_~43\);

-- Location: IOIBUF_X59_Y22_N63
\A[11]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(11),
	o => \A[11]~input_o\);

-- Location: IOIBUF_X56_Y0_N1
\B[11]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(11),
	o => \B[11]~input_o\);

-- Location: LABCELL_X58_Y8_N22
\_~45\ : arriaii_lcell_comb
-- Equation(s):
-- \_~45_sumout\ = SUM(( !\A[11]~input_o\ $ (!\B[11]~input_o\) ) + ( \_~43\ ) + ( \_~42\ ))
-- \_~46\ = CARRY(( !\A[11]~input_o\ $ (!\B[11]~input_o\) ) + ( \_~43\ ) + ( \_~42\ ))
-- \_~47\ = SHARE((\A[11]~input_o\ & \B[11]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[11]~input_o\,
	datad => \ALT_INV_B[11]~input_o\,
	cin => \_~42\,
	sharein => \_~43\,
	sumout => \_~45_sumout\,
	cout => \_~46\,
	shareout => \_~47\);

-- Location: IOIBUF_X50_Y0_N32
\B[12]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(12),
	o => \B[12]~input_o\);

-- Location: IOIBUF_X48_Y0_N32
\A[12]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(12),
	o => \A[12]~input_o\);

-- Location: LABCELL_X58_Y8_N24
\_~49\ : arriaii_lcell_comb
-- Equation(s):
-- \_~49_sumout\ = SUM(( !\B[12]~input_o\ $ (!\A[12]~input_o\) ) + ( \_~47\ ) + ( \_~46\ ))
-- \_~50\ = CARRY(( !\B[12]~input_o\ $ (!\A[12]~input_o\) ) + ( \_~47\ ) + ( \_~46\ ))
-- \_~51\ = SHARE((\B[12]~input_o\ & \A[12]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[12]~input_o\,
	datad => \ALT_INV_A[12]~input_o\,
	cin => \_~46\,
	sharein => \_~47\,
	sumout => \_~49_sumout\,
	cout => \_~50\,
	shareout => \_~51\);

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

-- Location: IOIBUF_X59_Y22_N94
\B[13]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(13),
	o => \B[13]~input_o\);

-- Location: LABCELL_X58_Y8_N26
\_~53\ : arriaii_lcell_comb
-- Equation(s):
-- \_~53_sumout\ = SUM(( !\A[13]~input_o\ $ (!\B[13]~input_o\) ) + ( \_~51\ ) + ( \_~50\ ))
-- \_~54\ = CARRY(( !\A[13]~input_o\ $ (!\B[13]~input_o\) ) + ( \_~51\ ) + ( \_~50\ ))
-- \_~55\ = SHARE((\A[13]~input_o\ & \B[13]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[13]~input_o\,
	datad => \ALT_INV_B[13]~input_o\,
	cin => \_~50\,
	sharein => \_~51\,
	sumout => \_~53_sumout\,
	cout => \_~54\,
	shareout => \_~55\);

-- Location: IOIBUF_X41_Y0_N63
\A[14]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(14),
	o => \A[14]~input_o\);

-- Location: IOIBUF_X50_Y0_N94
\B[14]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(14),
	o => \B[14]~input_o\);

-- Location: LABCELL_X58_Y8_N28
\_~57\ : arriaii_lcell_comb
-- Equation(s):
-- \_~57_sumout\ = SUM(( !\A[14]~input_o\ $ (!\B[14]~input_o\) ) + ( \_~55\ ) + ( \_~54\ ))
-- \_~58\ = CARRY(( !\A[14]~input_o\ $ (!\B[14]~input_o\) ) + ( \_~55\ ) + ( \_~54\ ))
-- \_~59\ = SHARE((\A[14]~input_o\ & \B[14]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[14]~input_o\,
	datad => \ALT_INV_B[14]~input_o\,
	cin => \_~54\,
	sharein => \_~55\,
	sumout => \_~57_sumout\,
	cout => \_~58\,
	shareout => \_~59\);

-- Location: IOIBUF_X41_Y0_N32
\A[15]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(15),
	o => \A[15]~input_o\);

-- Location: IOIBUF_X50_Y0_N63
\B[15]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(15),
	o => \B[15]~input_o\);

-- Location: LABCELL_X58_Y8_N30
\_~61\ : arriaii_lcell_comb
-- Equation(s):
-- \_~61_sumout\ = SUM(( !\A[15]~input_o\ $ (!\B[15]~input_o\) ) + ( \_~59\ ) + ( \_~58\ ))
-- \_~62\ = CARRY(( !\A[15]~input_o\ $ (!\B[15]~input_o\) ) + ( \_~59\ ) + ( \_~58\ ))
-- \_~63\ = SHARE((\A[15]~input_o\ & \B[15]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[15]~input_o\,
	datad => \ALT_INV_B[15]~input_o\,
	cin => \_~58\,
	sharein => \_~59\,
	sumout => \_~61_sumout\,
	cout => \_~62\,
	shareout => \_~63\);

-- Location: IOIBUF_X48_Y0_N63
\A[16]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(16),
	o => \A[16]~input_o\);

-- Location: IOIBUF_X59_Y22_N1
\B[16]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(16),
	o => \B[16]~input_o\);

-- Location: LABCELL_X58_Y8_N32
\_~65\ : arriaii_lcell_comb
-- Equation(s):
-- \_~65_sumout\ = SUM(( !\A[16]~input_o\ $ (!\B[16]~input_o\) ) + ( \_~63\ ) + ( \_~62\ ))
-- \_~66\ = CARRY(( !\A[16]~input_o\ $ (!\B[16]~input_o\) ) + ( \_~63\ ) + ( \_~62\ ))
-- \_~67\ = SHARE((\A[16]~input_o\ & \B[16]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[16]~input_o\,
	datad => \ALT_INV_B[16]~input_o\,
	cin => \_~62\,
	sharein => \_~63\,
	sumout => \_~65_sumout\,
	cout => \_~66\,
	shareout => \_~67\);

-- Location: IOIBUF_X43_Y0_N94
\A[17]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(17),
	o => \A[17]~input_o\);

-- Location: IOIBUF_X48_Y0_N94
\B[17]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(17),
	o => \B[17]~input_o\);

-- Location: LABCELL_X58_Y8_N34
\_~69\ : arriaii_lcell_comb
-- Equation(s):
-- \_~69_sumout\ = SUM(( !\A[17]~input_o\ $ (!\B[17]~input_o\) ) + ( \_~67\ ) + ( \_~66\ ))
-- \_~70\ = CARRY(( !\A[17]~input_o\ $ (!\B[17]~input_o\) ) + ( \_~67\ ) + ( \_~66\ ))
-- \_~71\ = SHARE((\A[17]~input_o\ & \B[17]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[17]~input_o\,
	datad => \ALT_INV_B[17]~input_o\,
	cin => \_~66\,
	sharein => \_~67\,
	sumout => \_~69_sumout\,
	cout => \_~70\,
	shareout => \_~71\);

-- Location: IOIBUF_X41_Y0_N1
\A[18]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(18),
	o => \A[18]~input_o\);

-- Location: IOIBUF_X59_Y23_N32
\B[18]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(18),
	o => \B[18]~input_o\);

-- Location: LABCELL_X58_Y8_N36
\_~73\ : arriaii_lcell_comb
-- Equation(s):
-- \_~73_sumout\ = SUM(( !\A[18]~input_o\ $ (!\B[18]~input_o\) ) + ( \_~71\ ) + ( \_~70\ ))
-- \_~74\ = CARRY(( !\A[18]~input_o\ $ (!\B[18]~input_o\) ) + ( \_~71\ ) + ( \_~70\ ))
-- \_~75\ = SHARE((\A[18]~input_o\ & \B[18]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[18]~input_o\,
	datad => \ALT_INV_B[18]~input_o\,
	cin => \_~70\,
	sharein => \_~71\,
	sumout => \_~73_sumout\,
	cout => \_~74\,
	shareout => \_~75\);

-- Location: IOIBUF_X52_Y0_N32
\B[19]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(19),
	o => \B[19]~input_o\);

-- Location: IOIBUF_X52_Y0_N1
\A[19]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(19),
	o => \A[19]~input_o\);

-- Location: LABCELL_X58_Y8_N38
\_~77\ : arriaii_lcell_comb
-- Equation(s):
-- \_~77_sumout\ = SUM(( !\B[19]~input_o\ $ (!\A[19]~input_o\) ) + ( \_~75\ ) + ( \_~74\ ))
-- \_~78\ = CARRY(( !\B[19]~input_o\ $ (!\A[19]~input_o\) ) + ( \_~75\ ) + ( \_~74\ ))
-- \_~79\ = SHARE((\B[19]~input_o\ & \A[19]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[19]~input_o\,
	datad => \ALT_INV_A[19]~input_o\,
	cin => \_~74\,
	sharein => \_~75\,
	sumout => \_~77_sumout\,
	cout => \_~78\,
	shareout => \_~79\);

-- Location: IOIBUF_X59_Y15_N32
\A[20]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(20),
	o => \A[20]~input_o\);

-- Location: IOIBUF_X59_Y19_N94
\B[20]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(20),
	o => \B[20]~input_o\);

-- Location: LABCELL_X58_Y7_N0
\_~81\ : arriaii_lcell_comb
-- Equation(s):
-- \_~81_sumout\ = SUM(( !\A[20]~input_o\ $ (!\B[20]~input_o\) ) + ( \_~79\ ) + ( \_~78\ ))
-- \_~82\ = CARRY(( !\A[20]~input_o\ $ (!\B[20]~input_o\) ) + ( \_~79\ ) + ( \_~78\ ))
-- \_~83\ = SHARE((\A[20]~input_o\ & \B[20]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[20]~input_o\,
	datad => \ALT_INV_B[20]~input_o\,
	cin => \_~78\,
	sharein => \_~79\,
	sumout => \_~81_sumout\,
	cout => \_~82\,
	shareout => \_~83\);

-- Location: IOIBUF_X59_Y19_N1
\B[21]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(21),
	o => \B[21]~input_o\);

-- Location: IOIBUF_X59_Y19_N63
\A[21]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(21),
	o => \A[21]~input_o\);

-- Location: LABCELL_X58_Y7_N2
\_~85\ : arriaii_lcell_comb
-- Equation(s):
-- \_~85_sumout\ = SUM(( !\B[21]~input_o\ $ (!\A[21]~input_o\) ) + ( \_~83\ ) + ( \_~82\ ))
-- \_~86\ = CARRY(( !\B[21]~input_o\ $ (!\A[21]~input_o\) ) + ( \_~83\ ) + ( \_~82\ ))
-- \_~87\ = SHARE((\B[21]~input_o\ & \A[21]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[21]~input_o\,
	datad => \ALT_INV_A[21]~input_o\,
	cin => \_~82\,
	sharein => \_~83\,
	sumout => \_~85_sumout\,
	cout => \_~86\,
	shareout => \_~87\);

-- Location: IOIBUF_X39_Y0_N94
\B[22]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(22),
	o => \B[22]~input_o\);

-- Location: IOIBUF_X45_Y0_N1
\A[22]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(22),
	o => \A[22]~input_o\);

-- Location: LABCELL_X58_Y7_N4
\_~89\ : arriaii_lcell_comb
-- Equation(s):
-- \_~89_sumout\ = SUM(( !\B[22]~input_o\ $ (!\A[22]~input_o\) ) + ( \_~87\ ) + ( \_~86\ ))
-- \_~90\ = CARRY(( !\B[22]~input_o\ $ (!\A[22]~input_o\) ) + ( \_~87\ ) + ( \_~86\ ))
-- \_~91\ = SHARE((\B[22]~input_o\ & \A[22]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[22]~input_o\,
	datad => \ALT_INV_A[22]~input_o\,
	cin => \_~86\,
	sharein => \_~87\,
	sumout => \_~89_sumout\,
	cout => \_~90\,
	shareout => \_~91\);

-- Location: IOIBUF_X59_Y18_N94
\B[23]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(23),
	o => \B[23]~input_o\);

-- Location: IOIBUF_X59_Y18_N32
\A[23]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(23),
	o => \A[23]~input_o\);

-- Location: LABCELL_X58_Y7_N6
\_~93\ : arriaii_lcell_comb
-- Equation(s):
-- \_~93_sumout\ = SUM(( !\B[23]~input_o\ $ (!\A[23]~input_o\) ) + ( \_~91\ ) + ( \_~90\ ))
-- \_~94\ = CARRY(( !\B[23]~input_o\ $ (!\A[23]~input_o\) ) + ( \_~91\ ) + ( \_~90\ ))
-- \_~95\ = SHARE((\B[23]~input_o\ & \A[23]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[23]~input_o\,
	datad => \ALT_INV_A[23]~input_o\,
	cin => \_~90\,
	sharein => \_~91\,
	sumout => \_~93_sumout\,
	cout => \_~94\,
	shareout => \_~95\);

-- Location: IOIBUF_X45_Y0_N94
\B[24]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(24),
	o => \B[24]~input_o\);

-- Location: IOIBUF_X59_Y31_N32
\A[24]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(24),
	o => \A[24]~input_o\);

-- Location: LABCELL_X58_Y7_N8
\_~97\ : arriaii_lcell_comb
-- Equation(s):
-- \_~97_sumout\ = SUM(( !\B[24]~input_o\ $ (!\A[24]~input_o\) ) + ( \_~95\ ) + ( \_~94\ ))
-- \_~98\ = CARRY(( !\B[24]~input_o\ $ (!\A[24]~input_o\) ) + ( \_~95\ ) + ( \_~94\ ))
-- \_~99\ = SHARE((\B[24]~input_o\ & \A[24]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[24]~input_o\,
	datad => \ALT_INV_A[24]~input_o\,
	cin => \_~94\,
	sharein => \_~95\,
	sumout => \_~97_sumout\,
	cout => \_~98\,
	shareout => \_~99\);

-- Location: IOIBUF_X59_Y19_N32
\B[25]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(25),
	o => \B[25]~input_o\);

-- Location: IOIBUF_X47_Y0_N1
\A[25]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(25),
	o => \A[25]~input_o\);

-- Location: LABCELL_X58_Y7_N10
\_~101\ : arriaii_lcell_comb
-- Equation(s):
-- \_~101_sumout\ = SUM(( !\B[25]~input_o\ $ (!\A[25]~input_o\) ) + ( \_~99\ ) + ( \_~98\ ))
-- \_~102\ = CARRY(( !\B[25]~input_o\ $ (!\A[25]~input_o\) ) + ( \_~99\ ) + ( \_~98\ ))
-- \_~103\ = SHARE((\B[25]~input_o\ & \A[25]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[25]~input_o\,
	datad => \ALT_INV_A[25]~input_o\,
	cin => \_~98\,
	sharein => \_~99\,
	sumout => \_~101_sumout\,
	cout => \_~102\,
	shareout => \_~103\);

-- Location: IOIBUF_X45_Y0_N63
\B[26]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(26),
	o => \B[26]~input_o\);

-- Location: IOIBUF_X59_Y23_N63
\A[26]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(26),
	o => \A[26]~input_o\);

-- Location: LABCELL_X58_Y7_N12
\_~105\ : arriaii_lcell_comb
-- Equation(s):
-- \_~105_sumout\ = SUM(( !\B[26]~input_o\ $ (!\A[26]~input_o\) ) + ( \_~103\ ) + ( \_~102\ ))
-- \_~106\ = CARRY(( !\B[26]~input_o\ $ (!\A[26]~input_o\) ) + ( \_~103\ ) + ( \_~102\ ))
-- \_~107\ = SHARE((\B[26]~input_o\ & \A[26]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[26]~input_o\,
	datad => \ALT_INV_A[26]~input_o\,
	cin => \_~102\,
	sharein => \_~103\,
	sumout => \_~105_sumout\,
	cout => \_~106\,
	shareout => \_~107\);

-- Location: IOIBUF_X39_Y0_N1
\A[27]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(27),
	o => \A[27]~input_o\);

-- Location: IOIBUF_X59_Y18_N1
\B[27]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(27),
	o => \B[27]~input_o\);

-- Location: LABCELL_X58_Y7_N14
\_~109\ : arriaii_lcell_comb
-- Equation(s):
-- \_~109_sumout\ = SUM(( !\A[27]~input_o\ $ (!\B[27]~input_o\) ) + ( \_~107\ ) + ( \_~106\ ))
-- \_~110\ = CARRY(( !\A[27]~input_o\ $ (!\B[27]~input_o\) ) + ( \_~107\ ) + ( \_~106\ ))
-- \_~111\ = SHARE((\A[27]~input_o\ & \B[27]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[27]~input_o\,
	datad => \ALT_INV_B[27]~input_o\,
	cin => \_~106\,
	sharein => \_~107\,
	sumout => \_~109_sumout\,
	cout => \_~110\,
	shareout => \_~111\);

-- Location: IOIBUF_X39_Y0_N32
\B[28]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(28),
	o => \B[28]~input_o\);

-- Location: IOIBUF_X59_Y23_N1
\A[28]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(28),
	o => \A[28]~input_o\);

-- Location: LABCELL_X58_Y7_N16
\_~113\ : arriaii_lcell_comb
-- Equation(s):
-- \_~113_sumout\ = SUM(( !\B[28]~input_o\ $ (!\A[28]~input_o\) ) + ( \_~111\ ) + ( \_~110\ ))
-- \_~114\ = CARRY(( !\B[28]~input_o\ $ (!\A[28]~input_o\) ) + ( \_~111\ ) + ( \_~110\ ))
-- \_~115\ = SHARE((\B[28]~input_o\ & \A[28]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[28]~input_o\,
	datad => \ALT_INV_A[28]~input_o\,
	cin => \_~110\,
	sharein => \_~111\,
	sumout => \_~113_sumout\,
	cout => \_~114\,
	shareout => \_~115\);

-- Location: IOIBUF_X39_Y0_N63
\A[29]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(29),
	o => \A[29]~input_o\);

-- Location: IOIBUF_X59_Y18_N63
\B[29]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(29),
	o => \B[29]~input_o\);

-- Location: LABCELL_X58_Y7_N18
\_~117\ : arriaii_lcell_comb
-- Equation(s):
-- \_~117_sumout\ = SUM(( !\A[29]~input_o\ $ (!\B[29]~input_o\) ) + ( \_~115\ ) + ( \_~114\ ))
-- \_~118\ = CARRY(( !\A[29]~input_o\ $ (!\B[29]~input_o\) ) + ( \_~115\ ) + ( \_~114\ ))
-- \_~119\ = SHARE((\A[29]~input_o\ & \B[29]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[29]~input_o\,
	datad => \ALT_INV_B[29]~input_o\,
	cin => \_~114\,
	sharein => \_~115\,
	sumout => \_~117_sumout\,
	cout => \_~118\,
	shareout => \_~119\);

-- Location: IOIBUF_X59_Y23_N94
\B[30]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(30),
	o => \B[30]~input_o\);

-- Location: IOIBUF_X45_Y0_N32
\A[30]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(30),
	o => \A[30]~input_o\);

-- Location: LABCELL_X58_Y7_N20
\_~121\ : arriaii_lcell_comb
-- Equation(s):
-- \_~121_sumout\ = SUM(( !\B[30]~input_o\ $ (!\A[30]~input_o\) ) + ( \_~119\ ) + ( \_~118\ ))
-- \_~122\ = CARRY(( !\B[30]~input_o\ $ (!\A[30]~input_o\) ) + ( \_~119\ ) + ( \_~118\ ))
-- \_~123\ = SHARE((\B[30]~input_o\ & \A[30]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[30]~input_o\,
	datad => \ALT_INV_A[30]~input_o\,
	cin => \_~118\,
	sharein => \_~119\,
	sumout => \_~121_sumout\,
	cout => \_~122\,
	shareout => \_~123\);

-- Location: IOIBUF_X47_Y0_N63
\B[31]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(31),
	o => \B[31]~input_o\);

-- Location: IOIBUF_X48_Y0_N1
\A[31]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(31),
	o => \A[31]~input_o\);

-- Location: LABCELL_X58_Y7_N22
\_~125\ : arriaii_lcell_comb
-- Equation(s):
-- \_~125_sumout\ = SUM(( !\B[31]~input_o\ $ (!\A[31]~input_o\) ) + ( \_~123\ ) + ( \_~122\ ))
-- \_~126\ = CARRY(( !\B[31]~input_o\ $ (!\A[31]~input_o\) ) + ( \_~123\ ) + ( \_~122\ ))
-- \_~127\ = SHARE((\B[31]~input_o\ & \A[31]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[31]~input_o\,
	datad => \ALT_INV_A[31]~input_o\,
	cin => \_~122\,
	sharein => \_~123\,
	sumout => \_~125_sumout\,
	cout => \_~126\,
	shareout => \_~127\);

-- Location: LABCELL_X58_Y7_N24
\_~129\ : arriaii_lcell_comb
-- Equation(s):
-- \_~129_sumout\ = SUM(( GND ) + ( \_~127\ ) + ( \_~126\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	cin => \_~126\,
	sharein => \_~127\,
	sumout => \_~129_sumout\);

-- Location: LABCELL_X58_Y7_N36
\Ovfl~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Ovfl~0_combout\ = ( \B[31]~input_o\ & ( \_~125_sumout\ ) ) # ( !\B[31]~input_o\ & ( \_~125_sumout\ & ( \A[31]~input_o\ ) ) ) # ( \B[31]~input_o\ & ( !\_~125_sumout\ & ( !\A[31]~input_o\ ) ) ) # ( !\B[31]~input_o\ & ( !\_~125_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111110000000000000000111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_A[31]~input_o\,
	datae => \ALT_INV_B[31]~input_o\,
	dataf => \ALT_INV__~125_sumout\,
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


