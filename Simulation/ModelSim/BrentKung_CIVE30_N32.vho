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

-- DATE "11/21/2026 12:04:04"

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
-- S[0]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[1]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[2]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[3]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[4]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[5]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[6]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[7]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[8]	=>  Location: PIN_J21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[9]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[10]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[11]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[12]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[13]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[14]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[15]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[16]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[17]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[18]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[19]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[20]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[21]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[22]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[23]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[24]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[25]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[26]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[27]	=>  Location: PIN_B20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[28]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[29]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[30]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[31]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cout	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ovfl	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_T2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_T1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cin	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_D20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[8]	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[9]	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[10]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[11]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[11]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[12]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[12]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[13]	=>  Location: PIN_H18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[13]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[14]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[14]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[15]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[15]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[16]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[16]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[17]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[17]	=>  Location: PIN_L21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[18]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[18]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[19]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[19]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[20]	=>  Location: PIN_H20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[20]	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[21]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[21]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[22]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[22]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[23]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[23]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[24]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[24]	=>  Location: PIN_K19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[25]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[25]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[26]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[26]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[27]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[27]	=>  Location: PIN_K18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[28]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[28]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[29]	=>  Location: PIN_N17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[29]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[30]	=>  Location: PIN_M19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[30]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[31]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[31]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \S~10_combout\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \S~11_combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \c~16_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:gPair[0]~0_combout\ : std_logic;
SIGNAL \S~12_combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \c[3]~18_combout\ : std_logic;
SIGNAL \c~17_combout\ : std_logic;
SIGNAL \S~13_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:gPair[1]~0_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|gPair~0_combout\ : std_logic;
SIGNAL \c~19_combout\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|gPair~1_combout\ : std_logic;
SIGNAL \S~14_combout\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gpre[4]~0_combout\ : std_logic;
SIGNAL \S~15_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:gPair[2]~0_combout\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \c~39_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Gpre~4_combout\ : std_logic;
SIGNAL \S~16_combout\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gpre[6]~1_combout\ : std_logic;
SIGNAL \S~17_combout\ : std_logic;
SIGNAL \B[8]~input_o\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[0]~0_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:gPair[3]~0_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:gPair[1]~combout\ : std_logic;
SIGNAL \c[8]~21_combout\ : std_logic;
SIGNAL \c~20_combout\ : std_logic;
SIGNAL \S~18_combout\ : std_logic;
SIGNAL \c~22_combout\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \B[9]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:Inner|gPair~4_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gpre[8]~2_combout\ : std_logic;
SIGNAL \S~19_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:gPair[4]~0_combout\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \B[10]~input_o\ : std_logic;
SIGNAL \c~23_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:pPair[2]~0_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Gpre~5_combout\ : std_logic;
SIGNAL \S~20_combout\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \B[11]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gpre[10]~3_combout\ : std_logic;
SIGNAL \S~21_combout\ : std_logic;
SIGNAL \c~24_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:gPair[5]~0_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:gPair[2]~combout\ : std_logic;
SIGNAL \B[12]~input_o\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~0_combout\ : std_logic;
SIGNAL \S~22_combout\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \B[13]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gpre[12]~4_combout\ : std_logic;
SIGNAL \S~23_combout\ : std_logic;
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \B[14]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Recur:gPair[6]~0_combout\ : std_logic;
SIGNAL \c~40_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Gpre~6_combout\ : std_logic;
SIGNAL \S~24_combout\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \B[15]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gpre[14]~5_combout\ : std_logic;
SIGNAL \S~25_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:Inner|gPair~2_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[1]~0_combout\ : std_logic;
SIGNAL \A[16]~input_o\ : std_logic;
SIGNAL \B[16]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Recur:gPair[7]~0_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[1]~0_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[1]~combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:gPair[0]~combout\ : std_logic;
SIGNAL \S~38_combout\ : std_logic;
SIGNAL \A[17]~input_o\ : std_logic;
SIGNAL \B[17]~input_o\ : std_logic;
SIGNAL \c~25_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|gPair~0_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gpre[16]~6_combout\ : std_logic;
SIGNAL \S~26_combout\ : std_logic;
SIGNAL \A[18]~input_o\ : std_logic;
SIGNAL \B[18]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Recur:gPair[8]~0_combout\ : std_logic;
SIGNAL \c[18]~26_combout\ : std_logic;
SIGNAL \S~39_combout\ : std_logic;
SIGNAL \A[19]~input_o\ : std_logic;
SIGNAL \B[19]~input_o\ : std_logic;
SIGNAL \c~27_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Gpre~10_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gpre[18]~7_combout\ : std_logic;
SIGNAL \S~40_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:Inner|Ppre[4]~0_combout\ : std_logic;
SIGNAL \c~28_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:gPair[9]~0_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:gPair[4]~combout\ : std_logic;
SIGNAL \B[20]~input_o\ : std_logic;
SIGNAL \A[20]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~1_combout\ : std_logic;
SIGNAL \S~27_combout\ : std_logic;
SIGNAL \A[21]~input_o\ : std_logic;
SIGNAL \B[21]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gpre[20]~8_combout\ : std_logic;
SIGNAL \S~28_combout\ : std_logic;
SIGNAL \B[22]~input_o\ : std_logic;
SIGNAL \A[22]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Recur:gPair[10]~0_combout\ : std_logic;
SIGNAL \c~29_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Gpre~7_combout\ : std_logic;
SIGNAL \S~29_combout\ : std_logic;
SIGNAL \B[23]~input_o\ : std_logic;
SIGNAL \A[23]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gpre[22]~9_combout\ : std_logic;
SIGNAL \S~30_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:Inner|gPair~3_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:gPair[11]~0_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[2]~0_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[2]~combout\ : std_logic;
SIGNAL \A[24]~input_o\ : std_logic;
SIGNAL \B[24]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[2]~0_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Gpre~0_combout\ : std_logic;
SIGNAL \c~41_combout\ : std_logic;
SIGNAL \S~31_combout\ : std_logic;
SIGNAL \A[25]~input_o\ : std_logic;
SIGNAL \B[25]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gpre[24]~10_combout\ : std_logic;
SIGNAL \S~32_combout\ : std_logic;
SIGNAL \B[26]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Recur:gPair[12]~0_combout\ : std_logic;
SIGNAL \c[26]~30_combout\ : std_logic;
SIGNAL \A[26]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Gpre~8_combout\ : std_logic;
SIGNAL \S~41_combout\ : std_logic;
SIGNAL \B[27]~input_o\ : std_logic;
SIGNAL \A[27]~input_o\ : std_logic;
SIGNAL \c~42_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gpre[26]~11_combout\ : std_logic;
SIGNAL \S~33_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:gPair[13]~0_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:gPair[6]~combout\ : std_logic;
SIGNAL \B[28]~input_o\ : std_logic;
SIGNAL \A[28]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:pPair[6]~0_combout\ : std_logic;
SIGNAL \c~31_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~2_combout\ : std_logic;
SIGNAL \S~34_combout\ : std_logic;
SIGNAL \A[29]~input_o\ : std_logic;
SIGNAL \B[29]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gpre[28]~12_combout\ : std_logic;
SIGNAL \S~35_combout\ : std_logic;
SIGNAL \A[30]~input_o\ : std_logic;
SIGNAL \B[30]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Recur:gPair[14]~0_combout\ : std_logic;
SIGNAL \c[30]~32_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Gpre~9_combout\ : std_logic;
SIGNAL \S~36_combout\ : std_logic;
SIGNAL \c~33_combout\ : std_logic;
SIGNAL \B[31]~input_o\ : std_logic;
SIGNAL \A[31]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gpre[30]~13_combout\ : std_logic;
SIGNAL \S~37_combout\ : std_logic;
SIGNAL \c~34_combout\ : std_logic;
SIGNAL \c~36_combout\ : std_logic;
SIGNAL \c~35_combout\ : std_logic;
SIGNAL \c~37_combout\ : std_logic;
SIGNAL \c~38_combout\ : std_logic;
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

-- Location: IOOBUF_X20_Y43_N2
\S[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~10_combout\,
	devoe => ww_devoe,
	o => \S[0]~output_o\);

-- Location: IOOBUF_X27_Y43_N2
\S[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~11_combout\,
	devoe => ww_devoe,
	o => \S[1]~output_o\);

-- Location: IOOBUF_X22_Y43_N2
\S[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~12_combout\,
	devoe => ww_devoe,
	o => \S[2]~output_o\);

-- Location: IOOBUF_X32_Y43_N23
\S[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~13_combout\,
	devoe => ww_devoe,
	o => \S[3]~output_o\);

-- Location: IOOBUF_X25_Y43_N30
\S[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~14_combout\,
	devoe => ww_devoe,
	o => \S[4]~output_o\);

-- Location: IOOBUF_X25_Y43_N23
\S[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~15_combout\,
	devoe => ww_devoe,
	o => \S[5]~output_o\);

-- Location: IOOBUF_X20_Y43_N9
\S[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~16_combout\,
	devoe => ww_devoe,
	o => \S[6]~output_o\);

-- Location: IOOBUF_X38_Y43_N2
\S[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~17_combout\,
	devoe => ww_devoe,
	o => \S[7]~output_o\);

-- Location: IOOBUF_X67_Y28_N16
\S[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~18_combout\,
	devoe => ww_devoe,
	o => \S[8]~output_o\);

-- Location: IOOBUF_X38_Y43_N23
\S[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~19_combout\,
	devoe => ww_devoe,
	o => \S[9]~output_o\);

-- Location: IOOBUF_X25_Y43_N9
\S[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~20_combout\,
	devoe => ww_devoe,
	o => \S[10]~output_o\);

-- Location: IOOBUF_X41_Y43_N16
\S[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~21_combout\,
	devoe => ww_devoe,
	o => \S[11]~output_o\);

-- Location: IOOBUF_X25_Y43_N2
\S[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~22_combout\,
	devoe => ww_devoe,
	o => \S[12]~output_o\);

-- Location: IOOBUF_X45_Y43_N2
\S[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~23_combout\,
	devoe => ww_devoe,
	o => \S[13]~output_o\);

-- Location: IOOBUF_X25_Y43_N16
\S[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~24_combout\,
	devoe => ww_devoe,
	o => \S[14]~output_o\);

-- Location: IOOBUF_X45_Y43_N9
\S[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~25_combout\,
	devoe => ww_devoe,
	o => \S[15]~output_o\);

-- Location: IOOBUF_X67_Y34_N16
\S[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~38_combout\,
	devoe => ww_devoe,
	o => \S[16]~output_o\);

-- Location: IOOBUF_X36_Y43_N9
\S[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~26_combout\,
	devoe => ww_devoe,
	o => \S[17]~output_o\);

-- Location: IOOBUF_X54_Y43_N30
\S[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~39_combout\,
	devoe => ww_devoe,
	o => \S[18]~output_o\);

-- Location: IOOBUF_X36_Y43_N23
\S[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~40_combout\,
	devoe => ww_devoe,
	o => \S[19]~output_o\);

-- Location: IOOBUF_X67_Y34_N2
\S[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~27_combout\,
	devoe => ww_devoe,
	o => \S[20]~output_o\);

-- Location: IOOBUF_X56_Y43_N9
\S[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~28_combout\,
	devoe => ww_devoe,
	o => \S[21]~output_o\);

-- Location: IOOBUF_X54_Y43_N9
\S[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~29_combout\,
	devoe => ww_devoe,
	o => \S[22]~output_o\);

-- Location: IOOBUF_X59_Y43_N2
\S[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~30_combout\,
	devoe => ww_devoe,
	o => \S[23]~output_o\);

-- Location: IOOBUF_X61_Y43_N30
\S[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~31_combout\,
	devoe => ww_devoe,
	o => \S[24]~output_o\);

-- Location: IOOBUF_X59_Y43_N9
\S[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~32_combout\,
	devoe => ww_devoe,
	o => \S[25]~output_o\);

-- Location: IOOBUF_X56_Y43_N16
\S[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~41_combout\,
	devoe => ww_devoe,
	o => \S[26]~output_o\);

-- Location: IOOBUF_X59_Y43_N16
\S[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~33_combout\,
	devoe => ww_devoe,
	o => \S[27]~output_o\);

-- Location: IOOBUF_X36_Y43_N16
\S[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~34_combout\,
	devoe => ww_devoe,
	o => \S[28]~output_o\);

-- Location: IOOBUF_X38_Y43_N30
\S[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~35_combout\,
	devoe => ww_devoe,
	o => \S[29]~output_o\);

-- Location: IOOBUF_X65_Y43_N30
\S[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~36_combout\,
	devoe => ww_devoe,
	o => \S[30]~output_o\);

-- Location: IOOBUF_X50_Y43_N16
\S[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~37_combout\,
	devoe => ww_devoe,
	o => \S[31]~output_o\);

-- Location: IOOBUF_X52_Y43_N16
\Cout~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \c~38_combout\,
	devoe => ww_devoe,
	o => \Cout~output_o\);

-- Location: IOOBUF_X52_Y43_N30
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

-- Location: IOIBUF_X29_Y43_N1
\Cin~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cin,
	o => \Cin~input_o\);

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

-- Location: LCCOMB_X29_Y39_N24
\S~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~10_combout\ = \Cin~input_o\ $ (\A[0]~input_o\ $ (\B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Cin~input_o\,
	datac => \A[0]~input_o\,
	datad => \B[0]~input_o\,
	combout => \S~10_combout\);

-- Location: IOIBUF_X32_Y43_N8
\A[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: IOIBUF_X29_Y43_N22
\B[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: LCCOMB_X29_Y39_N18
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

-- Location: LCCOMB_X29_Y39_N0
\S~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~11_combout\ = p(1) $ (((\B[0]~input_o\ & ((\A[0]~input_o\) # (\Cin~input_o\))) # (!\B[0]~input_o\ & (\A[0]~input_o\ & \Cin~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => p(1),
	datac => \A[0]~input_o\,
	datad => \Cin~input_o\,
	combout => \S~11_combout\);

-- Location: IOIBUF_X67_Y38_N15
\A[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: IOIBUF_X67_Y39_N8
\B[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: LCCOMB_X50_Y39_N8
\p[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(2) = \A[2]~input_o\ $ (\B[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[2]~input_o\,
	datad => \B[2]~input_o\,
	combout => p(2));

-- Location: LCCOMB_X51_Y39_N16
\c~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \c~16_combout\ = (\A[1]~input_o\ & (!\B[1]~input_o\ & (\B[0]~input_o\ $ (\A[0]~input_o\)))) # (!\A[1]~input_o\ & (\B[1]~input_o\ & (\B[0]~input_o\ $ (\A[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \B[1]~input_o\,
	datac => \B[0]~input_o\,
	datad => \A[0]~input_o\,
	combout => \c~16_combout\);

-- Location: LCCOMB_X52_Y39_N24
\PrefixNetwork|Recur:gPair[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:gPair[0]~0_combout\ = (\B[1]~input_o\ & ((\A[1]~input_o\) # ((\B[0]~input_o\ & \A[0]~input_o\)))) # (!\B[1]~input_o\ & (\A[1]~input_o\ & (\B[0]~input_o\ & \A[0]~input_o\)))

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
	combout => \PrefixNetwork|Recur:gPair[0]~0_combout\);

-- Location: LCCOMB_X51_Y39_N2
\S~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~12_combout\ = p(2) $ (((\PrefixNetwork|Recur:gPair[0]~0_combout\) # ((\c~16_combout\ & \Cin~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(2),
	datab => \c~16_combout\,
	datac => \Cin~input_o\,
	datad => \PrefixNetwork|Recur:gPair[0]~0_combout\,
	combout => \S~12_combout\);

-- Location: IOIBUF_X67_Y37_N1
\A[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: IOIBUF_X67_Y36_N22
\B[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: LCCOMB_X51_Y39_N30
\c[3]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[3]~18_combout\ = (\B[2]~input_o\ & ((\A[2]~input_o\) # (\PrefixNetwork|Recur:gPair[0]~0_combout\))) # (!\B[2]~input_o\ & (\A[2]~input_o\ & \PrefixNetwork|Recur:gPair[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[2]~input_o\,
	datac => \A[2]~input_o\,
	datad => \PrefixNetwork|Recur:gPair[0]~0_combout\,
	combout => \c[3]~18_combout\);

-- Location: LCCOMB_X51_Y39_N28
\c~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \c~17_combout\ = (\Cin~input_o\ & (\c~16_combout\ & (\B[2]~input_o\ $ (\A[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cin~input_o\,
	datab => \B[2]~input_o\,
	datac => \A[2]~input_o\,
	datad => \c~16_combout\,
	combout => \c~17_combout\);

-- Location: LCCOMB_X51_Y39_N4
\S~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~13_combout\ = \A[3]~input_o\ $ (\B[3]~input_o\ $ (((\c[3]~18_combout\) # (\c~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \B[3]~input_o\,
	datac => \c[3]~18_combout\,
	datad => \c~17_combout\,
	combout => \S~13_combout\);

-- Location: LCCOMB_X51_Y39_N26
\PrefixNetwork|Recur:gPair[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:gPair[1]~0_combout\ = (\A[3]~input_o\ & ((\B[3]~input_o\) # ((\A[2]~input_o\ & \B[2]~input_o\)))) # (!\A[3]~input_o\ & (\B[3]~input_o\ & (\A[2]~input_o\ & \B[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \B[3]~input_o\,
	datac => \A[2]~input_o\,
	datad => \B[2]~input_o\,
	combout => \PrefixNetwork|Recur:gPair[1]~0_combout\);

-- Location: LCCOMB_X52_Y39_N2
\PrefixNetwork|Recur:Inner|gPair~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|gPair~0_combout\ = (\B[3]~input_o\ & (!\A[3]~input_o\ & (\B[2]~input_o\ $ (\A[2]~input_o\)))) # (!\B[3]~input_o\ & (\A[3]~input_o\ & (\B[2]~input_o\ $ (\A[2]~input_o\))))

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
	combout => \PrefixNetwork|Recur:Inner|gPair~0_combout\);

-- Location: LCCOMB_X51_Y39_N8
\c~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \c~19_combout\ = (\PrefixNetwork|Recur:Inner|gPair~0_combout\ & (\Cin~input_o\ & \c~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Recur:Inner|gPair~0_combout\,
	datac => \Cin~input_o\,
	datad => \c~16_combout\,
	combout => \c~19_combout\);

-- Location: IOIBUF_X50_Y43_N1
\B[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: IOIBUF_X67_Y40_N22
\A[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: LCCOMB_X52_Y39_N18
\p[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(4) = \B[4]~input_o\ $ (\A[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datad => \A[4]~input_o\,
	combout => p(4));

-- Location: LCCOMB_X52_Y39_N12
\PrefixNetwork|Recur:Inner|gPair~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|gPair~1_combout\ = (\PrefixNetwork|Recur:Inner|gPair~0_combout\ & \PrefixNetwork|Recur:gPair[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PrefixNetwork|Recur:Inner|gPair~0_combout\,
	datad => \PrefixNetwork|Recur:gPair[0]~0_combout\,
	combout => \PrefixNetwork|Recur:Inner|gPair~1_combout\);

-- Location: LCCOMB_X51_Y39_N22
\S~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~14_combout\ = p(4) $ (((\PrefixNetwork|Recur:gPair[1]~0_combout\) # ((\c~19_combout\) # (\PrefixNetwork|Recur:Inner|gPair~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Recur:gPair[1]~0_combout\,
	datab => \c~19_combout\,
	datac => p(4),
	datad => \PrefixNetwork|Recur:Inner|gPair~1_combout\,
	combout => \S~14_combout\);

-- Location: IOIBUF_X50_Y43_N22
\B[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: IOIBUF_X67_Y38_N8
\A[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: LCCOMB_X52_Y39_N8
\p[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(5) = \B[5]~input_o\ $ (\A[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[5]~input_o\,
	datad => \A[5]~input_o\,
	combout => p(5));

-- Location: LCCOMB_X51_Y39_N20
\PrefixNetwork|Gpre[4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gpre[4]~0_combout\ = (\B[4]~input_o\ & ((\PrefixNetwork|Recur:gPair[1]~0_combout\) # ((\PrefixNetwork|Recur:Inner|gPair~1_combout\) # (\A[4]~input_o\)))) # (!\B[4]~input_o\ & (\A[4]~input_o\ & ((\PrefixNetwork|Recur:gPair[1]~0_combout\) # 
-- (\PrefixNetwork|Recur:Inner|gPair~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Recur:gPair[1]~0_combout\,
	datab => \B[4]~input_o\,
	datac => \PrefixNetwork|Recur:Inner|gPair~1_combout\,
	datad => \A[4]~input_o\,
	combout => \PrefixNetwork|Gpre[4]~0_combout\);

-- Location: LCCOMB_X51_Y39_N18
\S~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~15_combout\ = p(5) $ (((\PrefixNetwork|Gpre[4]~0_combout\) # ((\c~19_combout\ & p(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(5),
	datab => \c~19_combout\,
	datac => p(4),
	datad => \PrefixNetwork|Gpre[4]~0_combout\,
	combout => \S~15_combout\);

-- Location: LCCOMB_X49_Y39_N20
\PrefixNetwork|Recur:gPair[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:gPair[2]~0_combout\ = (\B[5]~input_o\ & ((\A[5]~input_o\) # ((\B[4]~input_o\ & \A[4]~input_o\)))) # (!\B[5]~input_o\ & (\B[4]~input_o\ & (\A[5]~input_o\ & \A[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \B[4]~input_o\,
	datac => \A[5]~input_o\,
	datad => \A[4]~input_o\,
	combout => \PrefixNetwork|Recur:gPair[2]~0_combout\);

-- Location: IOIBUF_X45_Y43_N29
\B[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: IOIBUF_X50_Y43_N8
\A[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: LCCOMB_X52_Y39_N30
\p[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(6) = \B[6]~input_o\ $ (\A[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[6]~input_o\,
	datad => \A[6]~input_o\,
	combout => p(6));

-- Location: LCCOMB_X49_Y39_N22
\c~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \c~39_combout\ = (p(5) & (\c~19_combout\ & (\B[4]~input_o\ $ (\A[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(5),
	datab => \B[4]~input_o\,
	datac => \c~19_combout\,
	datad => \A[4]~input_o\,
	combout => \c~39_combout\);

-- Location: LCCOMB_X49_Y39_N6
\PrefixNetwork|Recur:Inner|Gpre~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Gpre~4_combout\ = (p(5) & (p(4) & ((\PrefixNetwork|Recur:gPair[1]~0_combout\) # (\PrefixNetwork|Recur:Inner|gPair~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(5),
	datab => \PrefixNetwork|Recur:gPair[1]~0_combout\,
	datac => p(4),
	datad => \PrefixNetwork|Recur:Inner|gPair~1_combout\,
	combout => \PrefixNetwork|Recur:Inner|Gpre~4_combout\);

-- Location: LCCOMB_X49_Y39_N28
\S~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~16_combout\ = p(6) $ (((\PrefixNetwork|Recur:gPair[2]~0_combout\) # ((\c~39_combout\) # (\PrefixNetwork|Recur:Inner|Gpre~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Recur:gPair[2]~0_combout\,
	datab => p(6),
	datac => \c~39_combout\,
	datad => \PrefixNetwork|Recur:Inner|Gpre~4_combout\,
	combout => \S~16_combout\);

-- Location: IOIBUF_X54_Y43_N15
\A[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: IOIBUF_X67_Y39_N22
\B[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: LCCOMB_X53_Y39_N4
\p[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(7) = \A[7]~input_o\ $ (\B[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[7]~input_o\,
	datad => \B[7]~input_o\,
	combout => p(7));

-- Location: LCCOMB_X49_Y39_N18
\PrefixNetwork|Gpre[6]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gpre[6]~1_combout\ = (\B[6]~input_o\ & ((\PrefixNetwork|Recur:gPair[2]~0_combout\) # ((\A[6]~input_o\) # (\PrefixNetwork|Recur:Inner|Gpre~4_combout\)))) # (!\B[6]~input_o\ & (\A[6]~input_o\ & ((\PrefixNetwork|Recur:gPair[2]~0_combout\) # 
-- (\PrefixNetwork|Recur:Inner|Gpre~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[6]~input_o\,
	datab => \PrefixNetwork|Recur:gPair[2]~0_combout\,
	datac => \A[6]~input_o\,
	datad => \PrefixNetwork|Recur:Inner|Gpre~4_combout\,
	combout => \PrefixNetwork|Gpre[6]~1_combout\);

-- Location: LCCOMB_X49_Y39_N24
\S~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~17_combout\ = p(7) $ (((\PrefixNetwork|Gpre[6]~1_combout\) # ((p(6) & \c~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(7),
	datab => p(6),
	datac => \c~39_combout\,
	datad => \PrefixNetwork|Gpre[6]~1_combout\,
	combout => \S~17_combout\);

-- Location: IOIBUF_X67_Y31_N22
\B[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

-- Location: IOIBUF_X67_Y39_N15
\A[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: LCCOMB_X52_Y39_N28
\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[0]~0_combout\ = (p(6) & (p(4) & (p(5) & p(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(6),
	datab => p(4),
	datac => p(5),
	datad => p(7),
	combout => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[0]~0_combout\);

-- Location: LCCOMB_X49_Y39_N14
\PrefixNetwork|Recur:gPair[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:gPair[3]~0_combout\ = (\B[7]~input_o\ & ((\A[7]~input_o\) # ((\B[6]~input_o\ & \A[6]~input_o\)))) # (!\B[7]~input_o\ & (\B[6]~input_o\ & (\A[6]~input_o\ & \A[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[6]~input_o\,
	datab => \B[7]~input_o\,
	datac => \A[6]~input_o\,
	datad => \A[7]~input_o\,
	combout => \PrefixNetwork|Recur:gPair[3]~0_combout\);

-- Location: LCCOMB_X53_Y39_N14
\PrefixNetwork|Recur:Inner|Recur:gPair[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Recur:gPair[1]~combout\ = (\PrefixNetwork|Recur:gPair[3]~0_combout\) # ((p(6) & (p(7) & \PrefixNetwork|Recur:gPair[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Recur:gPair[3]~0_combout\,
	datab => p(6),
	datac => p(7),
	datad => \PrefixNetwork|Recur:gPair[2]~0_combout\,
	combout => \PrefixNetwork|Recur:Inner|Recur:gPair[1]~combout\);

-- Location: LCCOMB_X53_Y39_N0
\c[8]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[8]~21_combout\ = (!\PrefixNetwork|Recur:Inner|Recur:gPair[1]~combout\ & (((!\PrefixNetwork|Recur:gPair[1]~0_combout\ & !\PrefixNetwork|Recur:Inner|gPair~1_combout\)) # (!\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Recur:gPair[1]~0_combout\,
	datab => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[0]~0_combout\,
	datac => \PrefixNetwork|Recur:Inner|Recur:gPair[1]~combout\,
	datad => \PrefixNetwork|Recur:Inner|gPair~1_combout\,
	combout => \c[8]~21_combout\);

-- Location: LCCOMB_X52_Y39_N26
\c~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \c~20_combout\ = (\Cin~input_o\ & (\PrefixNetwork|Recur:Inner|gPair~0_combout\ & (\c~16_combout\ & \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cin~input_o\,
	datab => \PrefixNetwork|Recur:Inner|gPair~0_combout\,
	datac => \c~16_combout\,
	datad => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[0]~0_combout\,
	combout => \c~20_combout\);

-- Location: LCCOMB_X57_Y39_N16
\S~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~18_combout\ = \B[8]~input_o\ $ (\A[8]~input_o\ $ (((\c~20_combout\) # (!\c[8]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[8]~input_o\,
	datab => \A[8]~input_o\,
	datac => \c[8]~21_combout\,
	datad => \c~20_combout\,
	combout => \S~18_combout\);

-- Location: LCCOMB_X51_Y39_N6
\c~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \c~22_combout\ = (\c~19_combout\ & (\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[0]~0_combout\ & (\B[8]~input_o\ $ (\A[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[8]~input_o\,
	datab => \A[8]~input_o\,
	datac => \c~19_combout\,
	datad => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[0]~0_combout\,
	combout => \c~22_combout\);

-- Location: IOIBUF_X67_Y34_N8
\A[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

-- Location: IOIBUF_X65_Y43_N22
\B[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(9),
	o => \B[9]~input_o\);

-- Location: LCCOMB_X51_Y39_N10
\PrefixNetwork|Recur:Inner|Recur:Inner|gPair~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Recur:Inner|gPair~4_combout\ = (\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[0]~0_combout\ & ((\PrefixNetwork|Recur:gPair[1]~0_combout\) # ((\PrefixNetwork|Recur:Inner|gPair~0_combout\ & 
-- \PrefixNetwork|Recur:gPair[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Recur:Inner|gPair~0_combout\,
	datab => \PrefixNetwork|Recur:gPair[0]~0_combout\,
	datac => \PrefixNetwork|Recur:gPair[1]~0_combout\,
	datad => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[0]~0_combout\,
	combout => \PrefixNetwork|Recur:Inner|Recur:Inner|gPair~4_combout\);

-- Location: LCCOMB_X51_Y39_N24
\PrefixNetwork|Gpre[8]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gpre[8]~2_combout\ = (\B[8]~input_o\ & ((\A[8]~input_o\) # ((\PrefixNetwork|Recur:Inner|Recur:gPair[1]~combout\) # (\PrefixNetwork|Recur:Inner|Recur:Inner|gPair~4_combout\)))) # (!\B[8]~input_o\ & (\A[8]~input_o\ & 
-- ((\PrefixNetwork|Recur:Inner|Recur:gPair[1]~combout\) # (\PrefixNetwork|Recur:Inner|Recur:Inner|gPair~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[8]~input_o\,
	datab => \A[8]~input_o\,
	datac => \PrefixNetwork|Recur:Inner|Recur:gPair[1]~combout\,
	datad => \PrefixNetwork|Recur:Inner|Recur:Inner|gPair~4_combout\,
	combout => \PrefixNetwork|Gpre[8]~2_combout\);

-- Location: LCCOMB_X51_Y39_N0
\S~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~19_combout\ = \A[9]~input_o\ $ (\B[9]~input_o\ $ (((\c~22_combout\) # (\PrefixNetwork|Gpre[8]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c~22_combout\,
	datab => \A[9]~input_o\,
	datac => \B[9]~input_o\,
	datad => \PrefixNetwork|Gpre[8]~2_combout\,
	combout => \S~19_combout\);

-- Location: LCCOMB_X66_Y39_N4
\PrefixNetwork|Recur:gPair[4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:gPair[4]~0_combout\ = (\B[9]~input_o\ & ((\A[9]~input_o\) # ((\A[8]~input_o\ & \B[8]~input_o\)))) # (!\B[9]~input_o\ & (\A[8]~input_o\ & (\A[9]~input_o\ & \B[8]~input_o\)))

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
	combout => \PrefixNetwork|Recur:gPair[4]~0_combout\);

-- Location: IOIBUF_X45_Y43_N15
\A[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

-- Location: IOIBUF_X45_Y43_N22
\B[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(10),
	o => \B[10]~input_o\);

-- Location: LCCOMB_X49_Y39_N16
\p[10]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(10) = \A[10]~input_o\ $ (\B[10]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[10]~input_o\,
	datad => \B[10]~input_o\,
	combout => p(10));

-- Location: LCCOMB_X51_Y39_N12
\c~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \c~23_combout\ = (\c~22_combout\ & (\A[9]~input_o\ $ (\B[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[9]~input_o\,
	datac => \B[9]~input_o\,
	datad => \c~22_combout\,
	combout => \c~23_combout\);

-- Location: LCCOMB_X51_Y39_N14
\PrefixNetwork|Recur:Inner|Recur:pPair[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Recur:pPair[2]~0_combout\ = (\B[8]~input_o\ & (!\A[8]~input_o\ & (\B[9]~input_o\ $ (\A[9]~input_o\)))) # (!\B[8]~input_o\ & (\A[8]~input_o\ & (\B[9]~input_o\ $ (\A[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[8]~input_o\,
	datab => \A[8]~input_o\,
	datac => \B[9]~input_o\,
	datad => \A[9]~input_o\,
	combout => \PrefixNetwork|Recur:Inner|Recur:pPair[2]~0_combout\);

-- Location: LCCOMB_X50_Y39_N2
\PrefixNetwork|Recur:Inner|Gpre~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Gpre~5_combout\ = (\PrefixNetwork|Recur:Inner|Recur:pPair[2]~0_combout\ & !\c[8]~21_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PrefixNetwork|Recur:Inner|Recur:pPair[2]~0_combout\,
	datac => \c[8]~21_combout\,
	combout => \PrefixNetwork|Recur:Inner|Gpre~5_combout\);

-- Location: LCCOMB_X50_Y39_N20
\S~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~20_combout\ = p(10) $ (((\PrefixNetwork|Recur:gPair[4]~0_combout\) # ((\c~23_combout\) # (\PrefixNetwork|Recur:Inner|Gpre~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Recur:gPair[4]~0_combout\,
	datab => p(10),
	datac => \c~23_combout\,
	datad => \PrefixNetwork|Recur:Inner|Gpre~5_combout\,
	combout => \S~20_combout\);

-- Location: IOIBUF_X48_Y43_N8
\A[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(11),
	o => \A[11]~input_o\);

-- Location: IOIBUF_X41_Y43_N8
\B[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(11),
	o => \B[11]~input_o\);

-- Location: LCCOMB_X49_Y39_N10
\p[11]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(11) = \A[11]~input_o\ $ (\B[11]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[11]~input_o\,
	datad => \B[11]~input_o\,
	combout => p(11));

-- Location: LCCOMB_X50_Y39_N6
\PrefixNetwork|Gpre[10]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gpre[10]~3_combout\ = (\B[10]~input_o\ & ((\A[10]~input_o\) # ((\PrefixNetwork|Recur:gPair[4]~0_combout\) # (\PrefixNetwork|Recur:Inner|Gpre~5_combout\)))) # (!\B[10]~input_o\ & (\A[10]~input_o\ & ((\PrefixNetwork|Recur:gPair[4]~0_combout\) 
-- # (\PrefixNetwork|Recur:Inner|Gpre~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[10]~input_o\,
	datab => \A[10]~input_o\,
	datac => \PrefixNetwork|Recur:gPair[4]~0_combout\,
	datad => \PrefixNetwork|Recur:Inner|Gpre~5_combout\,
	combout => \PrefixNetwork|Gpre[10]~3_combout\);

-- Location: LCCOMB_X50_Y39_N28
\S~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~21_combout\ = p(11) $ (((\PrefixNetwork|Gpre[10]~3_combout\) # ((p(10) & \c~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(11),
	datab => p(10),
	datac => \c~23_combout\,
	datad => \PrefixNetwork|Gpre[10]~3_combout\,
	combout => \S~21_combout\);

-- Location: LCCOMB_X50_Y39_N12
\c~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \c~24_combout\ = (p(11) & (p(10) & (\PrefixNetwork|Recur:Inner|Recur:pPair[2]~0_combout\ & \c~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(11),
	datab => p(10),
	datac => \PrefixNetwork|Recur:Inner|Recur:pPair[2]~0_combout\,
	datad => \c~20_combout\,
	combout => \c~24_combout\);

-- Location: LCCOMB_X49_Y39_N0
\PrefixNetwork|Recur:gPair[5]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:gPair[5]~0_combout\ = (\A[11]~input_o\ & ((\B[11]~input_o\) # ((\B[10]~input_o\ & \A[10]~input_o\)))) # (!\A[11]~input_o\ & (\B[10]~input_o\ & (\A[10]~input_o\ & \B[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[10]~input_o\,
	datab => \A[11]~input_o\,
	datac => \A[10]~input_o\,
	datad => \B[11]~input_o\,
	combout => \PrefixNetwork|Recur:gPair[5]~0_combout\);

-- Location: LCCOMB_X53_Y39_N26
\PrefixNetwork|Recur:Inner|Recur:gPair[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Recur:gPair[2]~combout\ = (\PrefixNetwork|Recur:gPair[5]~0_combout\) # ((p(10) & (p(11) & \PrefixNetwork|Recur:gPair[4]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Recur:gPair[5]~0_combout\,
	datab => p(10),
	datac => p(11),
	datad => \PrefixNetwork|Recur:gPair[4]~0_combout\,
	combout => \PrefixNetwork|Recur:Inner|Recur:gPair[2]~combout\);

-- Location: IOIBUF_X67_Y28_N22
\B[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(12),
	o => \B[12]~input_o\);

-- Location: IOIBUF_X67_Y38_N22
\A[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(12),
	o => \A[12]~input_o\);

-- Location: LCCOMB_X52_Y39_N20
\p[12]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(12) = \B[12]~input_o\ $ (\A[12]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[12]~input_o\,
	datad => \A[12]~input_o\,
	combout => p(12));

-- Location: LCCOMB_X50_Y39_N10
\PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~0_combout\ = (p(11) & (\PrefixNetwork|Recur:Inner|Recur:pPair[2]~0_combout\ & (!\c[8]~21_combout\ & p(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(11),
	datab => \PrefixNetwork|Recur:Inner|Recur:pPair[2]~0_combout\,
	datac => \c[8]~21_combout\,
	datad => p(10),
	combout => \PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~0_combout\);

-- Location: LCCOMB_X50_Y39_N14
\S~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~22_combout\ = p(12) $ (((\c~24_combout\) # ((\PrefixNetwork|Recur:Inner|Recur:gPair[2]~combout\) # (\PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c~24_combout\,
	datab => \PrefixNetwork|Recur:Inner|Recur:gPair[2]~combout\,
	datac => p(12),
	datad => \PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~0_combout\,
	combout => \S~22_combout\);

-- Location: IOIBUF_X67_Y35_N1
\A[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(13),
	o => \A[13]~input_o\);

-- Location: IOIBUF_X67_Y36_N1
\B[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(13),
	o => \B[13]~input_o\);

-- Location: LCCOMB_X52_Y39_N10
\p[13]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(13) = \A[13]~input_o\ $ (\B[13]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[13]~input_o\,
	datad => \B[13]~input_o\,
	combout => p(13));

-- Location: LCCOMB_X50_Y39_N16
\PrefixNetwork|Gpre[12]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gpre[12]~4_combout\ = (\B[12]~input_o\ & ((\PrefixNetwork|Recur:Inner|Recur:gPair[2]~combout\) # ((\A[12]~input_o\) # (\PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~0_combout\)))) # (!\B[12]~input_o\ & (\A[12]~input_o\ & 
-- ((\PrefixNetwork|Recur:Inner|Recur:gPair[2]~combout\) # (\PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[12]~input_o\,
	datab => \PrefixNetwork|Recur:Inner|Recur:gPair[2]~combout\,
	datac => \A[12]~input_o\,
	datad => \PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~0_combout\,
	combout => \PrefixNetwork|Gpre[12]~4_combout\);

-- Location: LCCOMB_X50_Y39_N22
\S~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~23_combout\ = p(13) $ (((\PrefixNetwork|Gpre[12]~4_combout\) # ((\c~24_combout\ & p(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(13),
	datab => \c~24_combout\,
	datac => p(12),
	datad => \PrefixNetwork|Gpre[12]~4_combout\,
	combout => \S~23_combout\);

-- Location: IOIBUF_X61_Y43_N8
\A[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(14),
	o => \A[14]~input_o\);

-- Location: IOIBUF_X61_Y43_N1
\B[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(14),
	o => \B[14]~input_o\);

-- Location: LCCOMB_X52_Y39_N22
\p[14]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(14) = \A[14]~input_o\ $ (\B[14]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[14]~input_o\,
	datad => \B[14]~input_o\,
	combout => p(14));

-- Location: LCCOMB_X52_Y39_N4
\PrefixNetwork|Recur:gPair[6]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:gPair[6]~0_combout\ = (\A[13]~input_o\ & ((\B[13]~input_o\) # ((\B[12]~input_o\ & \A[12]~input_o\)))) # (!\A[13]~input_o\ & (\B[13]~input_o\ & (\B[12]~input_o\ & \A[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[13]~input_o\,
	datab => \B[13]~input_o\,
	datac => \B[12]~input_o\,
	datad => \A[12]~input_o\,
	combout => \PrefixNetwork|Recur:gPair[6]~0_combout\);

-- Location: LCCOMB_X50_Y39_N4
\c~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \c~40_combout\ = (p(13) & (\c~24_combout\ & (\B[12]~input_o\ $ (\A[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(13),
	datab => \B[12]~input_o\,
	datac => \A[12]~input_o\,
	datad => \c~24_combout\,
	combout => \c~40_combout\);

-- Location: LCCOMB_X50_Y39_N0
\PrefixNetwork|Recur:Inner|Gpre~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Gpre~6_combout\ = (p(13) & (p(12) & ((\PrefixNetwork|Recur:Inner|Recur:gPair[2]~combout\) # (\PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(13),
	datab => \PrefixNetwork|Recur:Inner|Recur:gPair[2]~combout\,
	datac => p(12),
	datad => \PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~0_combout\,
	combout => \PrefixNetwork|Recur:Inner|Gpre~6_combout\);

-- Location: LCCOMB_X50_Y39_N18
\S~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~24_combout\ = p(14) $ (((\PrefixNetwork|Recur:gPair[6]~0_combout\) # ((\c~40_combout\) # (\PrefixNetwork|Recur:Inner|Gpre~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(14),
	datab => \PrefixNetwork|Recur:gPair[6]~0_combout\,
	datac => \c~40_combout\,
	datad => \PrefixNetwork|Recur:Inner|Gpre~6_combout\,
	combout => \S~24_combout\);

-- Location: IOIBUF_X67_Y31_N1
\A[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(15),
	o => \A[15]~input_o\);

-- Location: IOIBUF_X63_Y43_N1
\B[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(15),
	o => \B[15]~input_o\);

-- Location: LCCOMB_X52_Y39_N0
\p[15]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(15) = \A[15]~input_o\ $ (\B[15]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[15]~input_o\,
	datad => \B[15]~input_o\,
	combout => p(15));

-- Location: LCCOMB_X50_Y39_N24
\PrefixNetwork|Gpre[14]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gpre[14]~5_combout\ = (\B[14]~input_o\ & ((\A[14]~input_o\) # ((\PrefixNetwork|Recur:gPair[6]~0_combout\) # (\PrefixNetwork|Recur:Inner|Gpre~6_combout\)))) # (!\B[14]~input_o\ & (\A[14]~input_o\ & ((\PrefixNetwork|Recur:gPair[6]~0_combout\) 
-- # (\PrefixNetwork|Recur:Inner|Gpre~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[14]~input_o\,
	datab => \A[14]~input_o\,
	datac => \PrefixNetwork|Recur:gPair[6]~0_combout\,
	datad => \PrefixNetwork|Recur:Inner|Gpre~6_combout\,
	combout => \PrefixNetwork|Gpre[14]~5_combout\);

-- Location: LCCOMB_X50_Y39_N26
\S~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~25_combout\ = p(15) $ (((\PrefixNetwork|Gpre[14]~5_combout\) # ((p(14) & \c~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(14),
	datab => p(15),
	datac => \c~40_combout\,
	datad => \PrefixNetwork|Gpre[14]~5_combout\,
	combout => \S~25_combout\);

-- Location: LCCOMB_X52_Y39_N6
\PrefixNetwork|Recur:Inner|Recur:Inner|gPair~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Recur:Inner|gPair~2_combout\ = (p(13) & (p(12) & (p(14) & p(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(13),
	datab => p(12),
	datac => p(14),
	datad => p(15),
	combout => \PrefixNetwork|Recur:Inner|Recur:Inner|gPair~2_combout\);

-- Location: LCCOMB_X52_Y39_N16
\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[1]~0_combout\ = (\PrefixNetwork|Recur:Inner|Recur:pPair[2]~0_combout\ & (p(11) & (p(10) & \PrefixNetwork|Recur:Inner|Recur:Inner|gPair~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Recur:Inner|Recur:pPair[2]~0_combout\,
	datab => p(11),
	datac => p(10),
	datad => \PrefixNetwork|Recur:Inner|Recur:Inner|gPair~2_combout\,
	combout => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[1]~0_combout\);

-- Location: IOIBUF_X54_Y43_N1
\A[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(16),
	o => \A[16]~input_o\);

-- Location: IOIBUF_X67_Y36_N15
\B[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(16),
	o => \B[16]~input_o\);

-- Location: LCCOMB_X55_Y39_N4
\p[16]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(16) = \A[16]~input_o\ $ (\B[16]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[16]~input_o\,
	datad => \B[16]~input_o\,
	combout => p(16));

-- Location: LCCOMB_X62_Y39_N4
\PrefixNetwork|Recur:gPair[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:gPair[7]~0_combout\ = (\B[15]~input_o\ & ((\A[15]~input_o\) # ((\A[14]~input_o\ & \B[14]~input_o\)))) # (!\B[15]~input_o\ & (\A[14]~input_o\ & (\B[14]~input_o\ & \A[15]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[14]~input_o\,
	datab => \B[14]~input_o\,
	datac => \B[15]~input_o\,
	datad => \A[15]~input_o\,
	combout => \PrefixNetwork|Recur:gPair[7]~0_combout\);

-- Location: LCCOMB_X53_Y39_N28
\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[1]~0_combout\ = (\PrefixNetwork|Recur:gPair[7]~0_combout\) # ((p(15) & (p(14) & \PrefixNetwork|Recur:gPair[6]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(15),
	datab => p(14),
	datac => \PrefixNetwork|Recur:gPair[6]~0_combout\,
	datad => \PrefixNetwork|Recur:gPair[7]~0_combout\,
	combout => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[1]~0_combout\);

-- Location: LCCOMB_X53_Y39_N6
\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[1]~combout\ = (\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[1]~0_combout\) # ((\PrefixNetwork|Recur:Inner|Recur:Inner|gPair~2_combout\ & \PrefixNetwork|Recur:Inner|Recur:gPair[2]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PrefixNetwork|Recur:Inner|Recur:Inner|gPair~2_combout\,
	datac => \PrefixNetwork|Recur:Inner|Recur:gPair[2]~combout\,
	datad => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[1]~0_combout\,
	combout => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[1]~combout\);

-- Location: LCCOMB_X53_Y39_N24
\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:gPair[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:gPair[0]~combout\ = (\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[1]~combout\) # ((\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[1]~0_combout\ & !\c[8]~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[1]~combout\,
	datac => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[1]~0_combout\,
	datad => \c[8]~21_combout\,
	combout => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:gPair[0]~combout\);

-- Location: LCCOMB_X57_Y39_N6
\S~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~38_combout\ = p(16) $ (((\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:gPair[0]~combout\) # ((\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[1]~0_combout\ & \c~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[1]~0_combout\,
	datab => p(16),
	datac => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:gPair[0]~combout\,
	datad => \c~20_combout\,
	combout => \S~38_combout\);

-- Location: IOIBUF_X67_Y37_N15
\A[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(17),
	o => \A[17]~input_o\);

-- Location: IOIBUF_X67_Y25_N15
\B[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(17),
	o => \B[17]~input_o\);

-- Location: LCCOMB_X55_Y39_N30
\p[17]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(17) = \A[17]~input_o\ $ (\B[17]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[17]~input_o\,
	datad => \B[17]~input_o\,
	combout => p(17));

-- Location: LCCOMB_X52_Y39_N14
\c~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \c~25_combout\ = (\c~20_combout\ & \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \c~20_combout\,
	datad => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[1]~0_combout\,
	combout => \c~25_combout\);

-- Location: LCCOMB_X55_Y39_N6
\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|gPair~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|gPair~0_combout\ = (\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[1]~0_combout\ & !\c[8]~21_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[1]~0_combout\,
	datad => \c[8]~21_combout\,
	combout => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|gPair~0_combout\);

-- Location: LCCOMB_X55_Y39_N24
\PrefixNetwork|Gpre[16]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gpre[16]~6_combout\ = (\A[16]~input_o\ & ((\B[16]~input_o\) # ((\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[1]~combout\) # (\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|gPair~0_combout\)))) # (!\A[16]~input_o\ & 
-- (\B[16]~input_o\ & ((\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[1]~combout\) # (\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|gPair~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[16]~input_o\,
	datab => \B[16]~input_o\,
	datac => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[1]~combout\,
	datad => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|gPair~0_combout\,
	combout => \PrefixNetwork|Gpre[16]~6_combout\);

-- Location: LCCOMB_X55_Y39_N0
\S~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~26_combout\ = p(17) $ (((\PrefixNetwork|Gpre[16]~6_combout\) # ((p(16) & \c~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(17),
	datab => p(16),
	datac => \c~25_combout\,
	datad => \PrefixNetwork|Gpre[16]~6_combout\,
	combout => \S~26_combout\);

-- Location: IOIBUF_X54_Y43_N22
\A[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(18),
	o => \A[18]~input_o\);

-- Location: IOIBUF_X67_Y41_N22
\B[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(18),
	o => \B[18]~input_o\);

-- Location: LCCOMB_X55_Y39_N14
\PrefixNetwork|Recur:gPair[8]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:gPair[8]~0_combout\ = (\A[17]~input_o\ & ((\B[17]~input_o\) # ((\B[16]~input_o\ & \A[16]~input_o\)))) # (!\A[17]~input_o\ & (\B[16]~input_o\ & (\B[17]~input_o\ & \A[16]~input_o\)))

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
	combout => \PrefixNetwork|Recur:gPair[8]~0_combout\);

-- Location: LCCOMB_X54_Y39_N8
\c[18]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[18]~26_combout\ = (p(17) & (p(16) & ((\c~25_combout\) # (\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:gPair[0]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(17),
	datab => p(16),
	datac => \c~25_combout\,
	datad => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:gPair[0]~combout\,
	combout => \c[18]~26_combout\);

-- Location: LCCOMB_X55_Y39_N18
\S~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~39_combout\ = \A[18]~input_o\ $ (\B[18]~input_o\ $ (((\PrefixNetwork|Recur:gPair[8]~0_combout\) # (\c[18]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[18]~input_o\,
	datab => \B[18]~input_o\,
	datac => \PrefixNetwork|Recur:gPair[8]~0_combout\,
	datad => \c[18]~26_combout\,
	combout => \S~39_combout\);

-- Location: IOIBUF_X67_Y31_N8
\A[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(19),
	o => \A[19]~input_o\);

-- Location: IOIBUF_X67_Y36_N8
\B[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(19),
	o => \B[19]~input_o\);

-- Location: LCCOMB_X55_Y39_N12
\p[18]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(18) = \B[18]~input_o\ $ (\A[18]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[18]~input_o\,
	datad => \A[18]~input_o\,
	combout => p(18));

-- Location: LCCOMB_X55_Y39_N8
\c~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \c~27_combout\ = (p(18) & (p(16) & (\c~25_combout\ & p(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(18),
	datab => p(16),
	datac => \c~25_combout\,
	datad => p(17),
	combout => \c~27_combout\);

-- Location: LCCOMB_X55_Y39_N20
\PrefixNetwork|Recur:Inner|Gpre~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Gpre~10_combout\ = (p(17) & (\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:gPair[0]~combout\ & (\A[16]~input_o\ $ (\B[16]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[16]~input_o\,
	datab => \B[16]~input_o\,
	datac => p(17),
	datad => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:gPair[0]~combout\,
	combout => \PrefixNetwork|Recur:Inner|Gpre~10_combout\);

-- Location: LCCOMB_X55_Y39_N2
\PrefixNetwork|Gpre[18]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gpre[18]~7_combout\ = (\A[18]~input_o\ & ((\B[18]~input_o\) # ((\PrefixNetwork|Recur:gPair[8]~0_combout\) # (\PrefixNetwork|Recur:Inner|Gpre~10_combout\)))) # (!\A[18]~input_o\ & (\B[18]~input_o\ & 
-- ((\PrefixNetwork|Recur:gPair[8]~0_combout\) # (\PrefixNetwork|Recur:Inner|Gpre~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[18]~input_o\,
	datab => \B[18]~input_o\,
	datac => \PrefixNetwork|Recur:gPair[8]~0_combout\,
	datad => \PrefixNetwork|Recur:Inner|Gpre~10_combout\,
	combout => \PrefixNetwork|Gpre[18]~7_combout\);

-- Location: LCCOMB_X55_Y39_N26
\S~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~40_combout\ = \A[19]~input_o\ $ (\B[19]~input_o\ $ (((\c~27_combout\) # (\PrefixNetwork|Gpre[18]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[19]~input_o\,
	datab => \B[19]~input_o\,
	datac => \c~27_combout\,
	datad => \PrefixNetwork|Gpre[18]~7_combout\,
	combout => \S~40_combout\);

-- Location: LCCOMB_X55_Y39_N10
\p[19]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(19) = \B[19]~input_o\ $ (\A[19]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[19]~input_o\,
	datad => \A[19]~input_o\,
	combout => p(19));

-- Location: LCCOMB_X55_Y39_N16
\PrefixNetwork|Recur:Inner|Recur:Inner|Ppre[4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Recur:Inner|Ppre[4]~0_combout\ = (p(18) & (p(16) & (p(17) & p(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(18),
	datab => p(16),
	datac => p(17),
	datad => p(19),
	combout => \PrefixNetwork|Recur:Inner|Recur:Inner|Ppre[4]~0_combout\);

-- Location: LCCOMB_X54_Y39_N26
\c~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \c~28_combout\ = (\PrefixNetwork|Recur:Inner|Recur:Inner|Ppre[4]~0_combout\ & (\c~20_combout\ & \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PrefixNetwork|Recur:Inner|Recur:Inner|Ppre[4]~0_combout\,
	datac => \c~20_combout\,
	datad => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[1]~0_combout\,
	combout => \c~28_combout\);

-- Location: LCCOMB_X55_Y39_N22
\PrefixNetwork|Recur:gPair[9]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:gPair[9]~0_combout\ = (\B[19]~input_o\ & ((\A[19]~input_o\) # ((\A[18]~input_o\ & \B[18]~input_o\)))) # (!\B[19]~input_o\ & (\A[18]~input_o\ & (\B[18]~input_o\ & \A[19]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[18]~input_o\,
	datab => \B[18]~input_o\,
	datac => \B[19]~input_o\,
	datad => \A[19]~input_o\,
	combout => \PrefixNetwork|Recur:gPair[9]~0_combout\);

-- Location: LCCOMB_X55_Y39_N28
\PrefixNetwork|Recur:Inner|Recur:gPair[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Recur:gPair[4]~combout\ = (\PrefixNetwork|Recur:gPair[9]~0_combout\) # ((p(18) & (\PrefixNetwork|Recur:gPair[8]~0_combout\ & p(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Recur:gPair[9]~0_combout\,
	datab => p(18),
	datac => \PrefixNetwork|Recur:gPair[8]~0_combout\,
	datad => p(19),
	combout => \PrefixNetwork|Recur:Inner|Recur:gPair[4]~combout\);

-- Location: IOIBUF_X67_Y37_N22
\B[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(20),
	o => \B[20]~input_o\);

-- Location: IOIBUF_X67_Y34_N22
\A[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(20),
	o => \A[20]~input_o\);

-- Location: LCCOMB_X56_Y37_N24
\p[20]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(20) = \B[20]~input_o\ $ (\A[20]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[20]~input_o\,
	datad => \A[20]~input_o\,
	combout => p(20));

-- Location: LCCOMB_X53_Y39_N18
\PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~1_combout\ = (\PrefixNetwork|Recur:Inner|Recur:Inner|Ppre[4]~0_combout\ & ((\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[1]~combout\) # ((\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[1]~0_combout\ & 
-- !\c[8]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[1]~combout\,
	datab => \PrefixNetwork|Recur:Inner|Recur:Inner|Ppre[4]~0_combout\,
	datac => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[1]~0_combout\,
	datad => \c[8]~21_combout\,
	combout => \PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~1_combout\);

-- Location: LCCOMB_X54_Y39_N24
\S~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~27_combout\ = p(20) $ (((\c~28_combout\) # ((\PrefixNetwork|Recur:Inner|Recur:gPair[4]~combout\) # (\PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c~28_combout\,
	datab => \PrefixNetwork|Recur:Inner|Recur:gPair[4]~combout\,
	datac => p(20),
	datad => \PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~1_combout\,
	combout => \S~27_combout\);

-- Location: IOIBUF_X61_Y43_N15
\A[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(21),
	o => \A[21]~input_o\);

-- Location: IOIBUF_X67_Y41_N15
\B[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(21),
	o => \B[21]~input_o\);

-- Location: LCCOMB_X56_Y39_N30
\p[21]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(21) = \A[21]~input_o\ $ (\B[21]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[21]~input_o\,
	datad => \B[21]~input_o\,
	combout => p(21));

-- Location: LCCOMB_X56_Y39_N12
\PrefixNetwork|Gpre[20]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gpre[20]~8_combout\ = (\A[20]~input_o\ & ((\B[20]~input_o\) # ((\PrefixNetwork|Recur:Inner|Recur:gPair[4]~combout\) # (\PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~1_combout\)))) # (!\A[20]~input_o\ & (\B[20]~input_o\ & 
-- ((\PrefixNetwork|Recur:Inner|Recur:gPair[4]~combout\) # (\PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[20]~input_o\,
	datab => \B[20]~input_o\,
	datac => \PrefixNetwork|Recur:Inner|Recur:gPair[4]~combout\,
	datad => \PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~1_combout\,
	combout => \PrefixNetwork|Gpre[20]~8_combout\);

-- Location: LCCOMB_X56_Y39_N8
\S~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~28_combout\ = p(21) $ (((\PrefixNetwork|Gpre[20]~8_combout\) # ((\c~28_combout\ & p(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(21),
	datab => \c~28_combout\,
	datac => p(20),
	datad => \PrefixNetwork|Gpre[20]~8_combout\,
	combout => \S~28_combout\);

-- Location: IOIBUF_X56_Y43_N22
\B[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(22),
	o => \B[22]~input_o\);

-- Location: IOIBUF_X67_Y29_N1
\A[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(22),
	o => \A[22]~input_o\);

-- Location: LCCOMB_X56_Y39_N28
\p[22]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(22) = \B[22]~input_o\ $ (\A[22]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[22]~input_o\,
	datad => \A[22]~input_o\,
	combout => p(22));

-- Location: LCCOMB_X56_Y39_N16
\PrefixNetwork|Recur:gPair[10]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:gPair[10]~0_combout\ = (\A[21]~input_o\ & ((\B[21]~input_o\) # ((\A[20]~input_o\ & \B[20]~input_o\)))) # (!\A[21]~input_o\ & (\A[20]~input_o\ & (\B[20]~input_o\ & \B[21]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[20]~input_o\,
	datab => \B[20]~input_o\,
	datac => \A[21]~input_o\,
	datad => \B[21]~input_o\,
	combout => \PrefixNetwork|Recur:gPair[10]~0_combout\);

-- Location: LCCOMB_X56_Y39_N22
\c~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \c~29_combout\ = (p(21) & (\PrefixNetwork|Recur:Inner|Recur:Inner|Ppre[4]~0_combout\ & (p(20) & \c~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(21),
	datab => \PrefixNetwork|Recur:Inner|Recur:Inner|Ppre[4]~0_combout\,
	datac => p(20),
	datad => \c~25_combout\,
	combout => \c~29_combout\);

-- Location: LCCOMB_X56_Y39_N2
\PrefixNetwork|Recur:Inner|Gpre~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Gpre~7_combout\ = (p(21) & (p(20) & ((\PrefixNetwork|Recur:Inner|Recur:gPair[4]~combout\) # (\PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(21),
	datab => p(20),
	datac => \PrefixNetwork|Recur:Inner|Recur:gPair[4]~combout\,
	datad => \PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~1_combout\,
	combout => \PrefixNetwork|Recur:Inner|Gpre~7_combout\);

-- Location: LCCOMB_X56_Y39_N26
\S~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~29_combout\ = p(22) $ (((\PrefixNetwork|Recur:gPair[10]~0_combout\) # ((\c~29_combout\) # (\PrefixNetwork|Recur:Inner|Gpre~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(22),
	datab => \PrefixNetwork|Recur:gPair[10]~0_combout\,
	datac => \c~29_combout\,
	datad => \PrefixNetwork|Recur:Inner|Gpre~7_combout\,
	combout => \S~29_combout\);

-- Location: IOIBUF_X67_Y25_N22
\B[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(23),
	o => \B[23]~input_o\);

-- Location: IOIBUF_X63_Y43_N8
\A[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(23),
	o => \A[23]~input_o\);

-- Location: LCCOMB_X56_Y39_N18
\p[23]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(23) = \B[23]~input_o\ $ (\A[23]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[23]~input_o\,
	datad => \A[23]~input_o\,
	combout => p(23));

-- Location: LCCOMB_X56_Y39_N24
\PrefixNetwork|Gpre[22]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gpre[22]~9_combout\ = (\A[22]~input_o\ & ((\PrefixNetwork|Recur:gPair[10]~0_combout\) # ((\B[22]~input_o\) # (\PrefixNetwork|Recur:Inner|Gpre~7_combout\)))) # (!\A[22]~input_o\ & (\B[22]~input_o\ & 
-- ((\PrefixNetwork|Recur:gPair[10]~0_combout\) # (\PrefixNetwork|Recur:Inner|Gpre~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[22]~input_o\,
	datab => \PrefixNetwork|Recur:gPair[10]~0_combout\,
	datac => \B[22]~input_o\,
	datad => \PrefixNetwork|Recur:Inner|Gpre~7_combout\,
	combout => \PrefixNetwork|Gpre[22]~9_combout\);

-- Location: LCCOMB_X56_Y39_N0
\S~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~30_combout\ = p(23) $ (((\PrefixNetwork|Gpre[22]~9_combout\) # ((p(22) & \c~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(23),
	datab => p(22),
	datac => \c~29_combout\,
	datad => \PrefixNetwork|Gpre[22]~9_combout\,
	combout => \S~30_combout\);

-- Location: LCCOMB_X56_Y39_N6
\PrefixNetwork|Recur:Inner|Recur:Inner|gPair~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Recur:Inner|gPair~3_combout\ = (p(21) & (p(23) & (p(20) & p(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(21),
	datab => p(23),
	datac => p(20),
	datad => p(22),
	combout => \PrefixNetwork|Recur:Inner|Recur:Inner|gPair~3_combout\);

-- Location: LCCOMB_X56_Y39_N14
\PrefixNetwork|Recur:gPair[11]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:gPair[11]~0_combout\ = (\A[23]~input_o\ & ((\B[23]~input_o\) # ((\B[22]~input_o\ & \A[22]~input_o\)))) # (!\A[23]~input_o\ & (\B[22]~input_o\ & (\B[23]~input_o\ & \A[22]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[23]~input_o\,
	datab => \B[22]~input_o\,
	datac => \B[23]~input_o\,
	datad => \A[22]~input_o\,
	combout => \PrefixNetwork|Recur:gPair[11]~0_combout\);

-- Location: LCCOMB_X56_Y39_N4
\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[2]~0_combout\ = (\PrefixNetwork|Recur:gPair[11]~0_combout\) # ((p(22) & (\PrefixNetwork|Recur:gPair[10]~0_combout\ & p(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(22),
	datab => \PrefixNetwork|Recur:gPair[10]~0_combout\,
	datac => \PrefixNetwork|Recur:gPair[11]~0_combout\,
	datad => p(23),
	combout => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[2]~0_combout\);

-- Location: LCCOMB_X56_Y39_N10
\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[2]~combout\ = (\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[2]~0_combout\) # ((\PrefixNetwork|Recur:Inner|Recur:Inner|gPair~3_combout\ & \PrefixNetwork|Recur:Inner|Recur:gPair[4]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Recur:Inner|Recur:Inner|gPair~3_combout\,
	datac => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[2]~0_combout\,
	datad => \PrefixNetwork|Recur:Inner|Recur:gPair[4]~combout\,
	combout => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[2]~combout\);

-- Location: IOIBUF_X67_Y28_N1
\A[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(24),
	o => \A[24]~input_o\);

-- Location: IOIBUF_X67_Y26_N22
\B[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(24),
	o => \B[24]~input_o\);

-- Location: LCCOMB_X63_Y39_N20
\p[24]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(24) = \A[24]~input_o\ $ (\B[24]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[24]~input_o\,
	datad => \B[24]~input_o\,
	combout => p(24));

-- Location: LCCOMB_X56_Y39_N20
\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[2]~0_combout\ = (\PrefixNetwork|Recur:Inner|Recur:Inner|Ppre[4]~0_combout\ & \PrefixNetwork|Recur:Inner|Recur:Inner|gPair~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|Recur:Inner|Recur:Inner|Ppre[4]~0_combout\,
	datad => \PrefixNetwork|Recur:Inner|Recur:Inner|gPair~3_combout\,
	combout => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[2]~0_combout\);

-- Location: LCCOMB_X53_Y39_N8
\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Gpre~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Gpre~0_combout\ = (\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[2]~0_combout\ & ((\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[1]~combout\) # 
-- ((\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[1]~0_combout\ & !\c[8]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[1]~0_combout\,
	datab => \c[8]~21_combout\,
	datac => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[2]~0_combout\,
	datad => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[1]~combout\,
	combout => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Gpre~0_combout\);

-- Location: LCCOMB_X57_Y39_N20
\c~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \c~41_combout\ = (\PrefixNetwork|Recur:Inner|Recur:Inner|Ppre[4]~0_combout\ & (\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[1]~0_combout\ & (\PrefixNetwork|Recur:Inner|Recur:Inner|gPair~3_combout\ & \c~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Recur:Inner|Recur:Inner|Ppre[4]~0_combout\,
	datab => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[1]~0_combout\,
	datac => \PrefixNetwork|Recur:Inner|Recur:Inner|gPair~3_combout\,
	datad => \c~20_combout\,
	combout => \c~41_combout\);

-- Location: LCCOMB_X57_Y39_N30
\S~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~31_combout\ = p(24) $ (((\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[2]~combout\) # ((\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Gpre~0_combout\) # (\c~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[2]~combout\,
	datab => p(24),
	datac => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Gpre~0_combout\,
	datad => \c~41_combout\,
	combout => \S~31_combout\);

-- Location: IOIBUF_X67_Y19_N8
\A[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(25),
	o => \A[25]~input_o\);

-- Location: IOIBUF_X67_Y27_N15
\B[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(25),
	o => \B[25]~input_o\);

-- Location: LCCOMB_X62_Y39_N18
\p[25]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(25) = \A[25]~input_o\ $ (\B[25]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[25]~input_o\,
	datad => \B[25]~input_o\,
	combout => p(25));

-- Location: LCCOMB_X57_Y39_N24
\PrefixNetwork|Gpre[24]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gpre[24]~10_combout\ = (\B[24]~input_o\ & ((\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[2]~combout\) # ((\A[24]~input_o\) # (\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Gpre~0_combout\)))) # (!\B[24]~input_o\ & 
-- (\A[24]~input_o\ & ((\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[2]~combout\) # (\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Gpre~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[2]~combout\,
	datab => \B[24]~input_o\,
	datac => \A[24]~input_o\,
	datad => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Gpre~0_combout\,
	combout => \PrefixNetwork|Gpre[24]~10_combout\);

-- Location: LCCOMB_X57_Y39_N14
\S~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~32_combout\ = p(25) $ (((\PrefixNetwork|Gpre[24]~10_combout\) # ((p(24) & \c~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(24),
	datab => \c~41_combout\,
	datac => p(25),
	datad => \PrefixNetwork|Gpre[24]~10_combout\,
	combout => \S~32_combout\);

-- Location: IOIBUF_X63_Y43_N22
\B[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(26),
	o => \B[26]~input_o\);

-- Location: LCCOMB_X57_Y39_N22
\PrefixNetwork|Recur:gPair[12]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:gPair[12]~0_combout\ = (\B[25]~input_o\ & ((\A[25]~input_o\) # ((\A[24]~input_o\ & \B[24]~input_o\)))) # (!\B[25]~input_o\ & (\A[25]~input_o\ & (\A[24]~input_o\ & \B[24]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[25]~input_o\,
	datab => \A[25]~input_o\,
	datac => \A[24]~input_o\,
	datad => \B[24]~input_o\,
	combout => \PrefixNetwork|Recur:gPair[12]~0_combout\);

-- Location: LCCOMB_X57_Y39_N28
\c[26]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[26]~30_combout\ = (\PrefixNetwork|Recur:gPair[12]~0_combout\) # ((p(25) & (p(24) & \c~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Recur:gPair[12]~0_combout\,
	datab => p(25),
	datac => p(24),
	datad => \c~41_combout\,
	combout => \c[26]~30_combout\);

-- Location: IOIBUF_X67_Y28_N8
\A[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(26),
	o => \A[26]~input_o\);

-- Location: LCCOMB_X57_Y39_N0
\PrefixNetwork|Recur:Inner|Gpre~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Gpre~8_combout\ = (p(24) & (p(25) & ((\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[2]~combout\) # (\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Gpre~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[2]~combout\,
	datab => p(24),
	datac => p(25),
	datad => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Gpre~0_combout\,
	combout => \PrefixNetwork|Recur:Inner|Gpre~8_combout\);

-- Location: LCCOMB_X57_Y39_N2
\S~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~41_combout\ = \B[26]~input_o\ $ (\A[26]~input_o\ $ (((\c[26]~30_combout\) # (\PrefixNetwork|Recur:Inner|Gpre~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[26]~input_o\,
	datab => \c[26]~30_combout\,
	datac => \A[26]~input_o\,
	datad => \PrefixNetwork|Recur:Inner|Gpre~8_combout\,
	combout => \S~41_combout\);

-- Location: IOIBUF_X67_Y30_N22
\B[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(27),
	o => \B[27]~input_o\);

-- Location: IOIBUF_X63_Y43_N29
\A[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(27),
	o => \A[27]~input_o\);

-- Location: LCCOMB_X62_Y39_N10
\p[27]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(27) = \B[27]~input_o\ $ (\A[27]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[27]~input_o\,
	datad => \A[27]~input_o\,
	combout => p(27));

-- Location: LCCOMB_X62_Y39_N28
\p[26]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(26) = \A[26]~input_o\ $ (\B[26]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[26]~input_o\,
	datad => \B[26]~input_o\,
	combout => p(26));

-- Location: LCCOMB_X57_Y39_N8
\c~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \c~42_combout\ = (p(26) & (p(25) & (\A[24]~input_o\ $ (\B[24]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[24]~input_o\,
	datab => \B[24]~input_o\,
	datac => p(26),
	datad => p(25),
	combout => \c~42_combout\);

-- Location: LCCOMB_X57_Y39_N18
\PrefixNetwork|Gpre[26]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gpre[26]~11_combout\ = (\B[26]~input_o\ & ((\A[26]~input_o\) # ((\PrefixNetwork|Recur:gPair[12]~0_combout\) # (\PrefixNetwork|Recur:Inner|Gpre~8_combout\)))) # (!\B[26]~input_o\ & (\A[26]~input_o\ & 
-- ((\PrefixNetwork|Recur:gPair[12]~0_combout\) # (\PrefixNetwork|Recur:Inner|Gpre~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[26]~input_o\,
	datab => \A[26]~input_o\,
	datac => \PrefixNetwork|Recur:gPair[12]~0_combout\,
	datad => \PrefixNetwork|Recur:Inner|Gpre~8_combout\,
	combout => \PrefixNetwork|Gpre[26]~11_combout\);

-- Location: LCCOMB_X57_Y39_N12
\S~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~33_combout\ = p(27) $ (((\PrefixNetwork|Gpre[26]~11_combout\) # ((\c~41_combout\ & \c~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(27),
	datab => \c~41_combout\,
	datac => \c~42_combout\,
	datad => \PrefixNetwork|Gpre[26]~11_combout\,
	combout => \S~33_combout\);

-- Location: LCCOMB_X62_Y39_N26
\PrefixNetwork|Recur:gPair[13]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:gPair[13]~0_combout\ = (\B[27]~input_o\ & ((\A[27]~input_o\) # ((\A[26]~input_o\ & \B[26]~input_o\)))) # (!\B[27]~input_o\ & (\A[27]~input_o\ & (\A[26]~input_o\ & \B[26]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[27]~input_o\,
	datab => \A[27]~input_o\,
	datac => \A[26]~input_o\,
	datad => \B[26]~input_o\,
	combout => \PrefixNetwork|Recur:gPair[13]~0_combout\);

-- Location: LCCOMB_X57_Y39_N26
\PrefixNetwork|Recur:Inner|Recur:gPair[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Recur:gPair[6]~combout\ = (\PrefixNetwork|Recur:gPair[13]~0_combout\) # ((\PrefixNetwork|Recur:gPair[12]~0_combout\ & (p(27) & p(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Recur:gPair[12]~0_combout\,
	datab => p(27),
	datac => p(26),
	datad => \PrefixNetwork|Recur:gPair[13]~0_combout\,
	combout => \PrefixNetwork|Recur:Inner|Recur:gPair[6]~combout\);

-- Location: IOIBUF_X32_Y43_N15
\B[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(28),
	o => \B[28]~input_o\);

-- Location: IOIBUF_X32_Y43_N1
\A[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(28),
	o => \A[28]~input_o\);

-- Location: LCCOMB_X54_Y39_N20
\p[28]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(28) = \B[28]~input_o\ $ (\A[28]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[28]~input_o\,
	datac => \A[28]~input_o\,
	combout => p(28));

-- Location: LCCOMB_X62_Y39_N0
\PrefixNetwork|Recur:Inner|Recur:pPair[6]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Recur:pPair[6]~0_combout\ = (p(27) & (p(26) & (p(24) & p(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(27),
	datab => p(26),
	datac => p(24),
	datad => p(25),
	combout => \PrefixNetwork|Recur:Inner|Recur:pPair[6]~0_combout\);

-- Location: LCCOMB_X54_Y39_N30
\c~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \c~31_combout\ = (\PrefixNetwork|Recur:Inner|Recur:pPair[6]~0_combout\ & (\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[1]~0_combout\ & (\c~20_combout\ & \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Recur:Inner|Recur:pPair[6]~0_combout\,
	datab => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[1]~0_combout\,
	datac => \c~20_combout\,
	datad => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[2]~0_combout\,
	combout => \c~31_combout\);

-- Location: LCCOMB_X53_Y39_N22
\PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~2_combout\ = (\PrefixNetwork|Recur:Inner|Recur:pPair[6]~0_combout\ & ((\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[2]~combout\) # ((\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[2]~0_combout\ & 
-- \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:gPair[0]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[2]~combout\,
	datab => \PrefixNetwork|Recur:Inner|Recur:pPair[6]~0_combout\,
	datac => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[2]~0_combout\,
	datad => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:gPair[0]~combout\,
	combout => \PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~2_combout\);

-- Location: LCCOMB_X54_Y39_N10
\S~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~34_combout\ = p(28) $ (((\PrefixNetwork|Recur:Inner|Recur:gPair[6]~combout\) # ((\c~31_combout\) # (\PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Recur:Inner|Recur:gPair[6]~combout\,
	datab => p(28),
	datac => \c~31_combout\,
	datad => \PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~2_combout\,
	combout => \S~34_combout\);

-- Location: IOIBUF_X67_Y17_N22
\A[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(29),
	o => \A[29]~input_o\);

-- Location: IOIBUF_X67_Y18_N15
\B[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(29),
	o => \B[29]~input_o\);

-- Location: LCCOMB_X54_Y39_N22
\p[29]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(29) = \A[29]~input_o\ $ (\B[29]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[29]~input_o\,
	datad => \B[29]~input_o\,
	combout => p(29));

-- Location: LCCOMB_X54_Y39_N28
\PrefixNetwork|Gpre[28]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gpre[28]~12_combout\ = (\B[28]~input_o\ & ((\PrefixNetwork|Recur:Inner|Recur:gPair[6]~combout\) # ((\A[28]~input_o\) # (\PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~2_combout\)))) # (!\B[28]~input_o\ & (\A[28]~input_o\ & 
-- ((\PrefixNetwork|Recur:Inner|Recur:gPair[6]~combout\) # (\PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Recur:Inner|Recur:gPair[6]~combout\,
	datab => \B[28]~input_o\,
	datac => \A[28]~input_o\,
	datad => \PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~2_combout\,
	combout => \PrefixNetwork|Gpre[28]~12_combout\);

-- Location: LCCOMB_X54_Y39_N16
\S~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~35_combout\ = p(29) $ (((\PrefixNetwork|Gpre[28]~12_combout\) # ((p(28) & \c~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(29),
	datab => p(28),
	datac => \c~31_combout\,
	datad => \PrefixNetwork|Gpre[28]~12_combout\,
	combout => \S~35_combout\);

-- Location: IOIBUF_X67_Y19_N15
\A[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(30),
	o => \A[30]~input_o\);

-- Location: IOIBUF_X67_Y19_N22
\B[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(30),
	o => \B[30]~input_o\);

-- Location: LCCOMB_X54_Y39_N6
\PrefixNetwork|Recur:gPair[14]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:gPair[14]~0_combout\ = (\A[29]~input_o\ & ((\B[29]~input_o\) # ((\B[28]~input_o\ & \A[28]~input_o\)))) # (!\A[29]~input_o\ & (\B[28]~input_o\ & (\A[28]~input_o\ & \B[29]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[29]~input_o\,
	datab => \B[28]~input_o\,
	datac => \A[28]~input_o\,
	datad => \B[29]~input_o\,
	combout => \PrefixNetwork|Recur:gPair[14]~0_combout\);

-- Location: LCCOMB_X54_Y39_N4
\c[30]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[30]~32_combout\ = (\PrefixNetwork|Recur:gPair[14]~0_combout\) # ((p(29) & (p(28) & \c~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(29),
	datab => p(28),
	datac => \c~31_combout\,
	datad => \PrefixNetwork|Recur:gPair[14]~0_combout\,
	combout => \c[30]~32_combout\);

-- Location: LCCOMB_X53_Y39_N12
\PrefixNetwork|Recur:Inner|Gpre~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Gpre~9_combout\ = (p(28) & (p(29) & ((\PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~2_combout\) # (\PrefixNetwork|Recur:Inner|Recur:gPair[6]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(28),
	datab => p(29),
	datac => \PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~2_combout\,
	datad => \PrefixNetwork|Recur:Inner|Recur:gPair[6]~combout\,
	combout => \PrefixNetwork|Recur:Inner|Gpre~9_combout\);

-- Location: LCCOMB_X54_Y39_N2
\S~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~36_combout\ = \A[30]~input_o\ $ (\B[30]~input_o\ $ (((\c[30]~32_combout\) # (\PrefixNetwork|Recur:Inner|Gpre~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[30]~input_o\,
	datab => \B[30]~input_o\,
	datac => \c[30]~32_combout\,
	datad => \PrefixNetwork|Recur:Inner|Gpre~9_combout\,
	combout => \S~36_combout\);

-- Location: LCCOMB_X54_Y39_N12
\c~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \c~33_combout\ = (p(28) & (p(29) & (\A[30]~input_o\ $ (\B[30]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[30]~input_o\,
	datab => p(28),
	datac => p(29),
	datad => \B[30]~input_o\,
	combout => \c~33_combout\);

-- Location: IOIBUF_X22_Y43_N29
\B[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(31),
	o => \B[31]~input_o\);

-- Location: IOIBUF_X32_Y43_N29
\A[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(31),
	o => \A[31]~input_o\);

-- Location: LCCOMB_X54_Y39_N14
\p[31]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(31) = \B[31]~input_o\ $ (\A[31]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[31]~input_o\,
	datad => \A[31]~input_o\,
	combout => p(31));

-- Location: LCCOMB_X53_Y39_N30
\PrefixNetwork|Gpre[30]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gpre[30]~13_combout\ = (\A[30]~input_o\ & ((\PrefixNetwork|Recur:gPair[14]~0_combout\) # ((\B[30]~input_o\) # (\PrefixNetwork|Recur:Inner|Gpre~9_combout\)))) # (!\A[30]~input_o\ & (\B[30]~input_o\ & 
-- ((\PrefixNetwork|Recur:gPair[14]~0_combout\) # (\PrefixNetwork|Recur:Inner|Gpre~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Recur:gPair[14]~0_combout\,
	datab => \A[30]~input_o\,
	datac => \B[30]~input_o\,
	datad => \PrefixNetwork|Recur:Inner|Gpre~9_combout\,
	combout => \PrefixNetwork|Gpre[30]~13_combout\);

-- Location: LCCOMB_X54_Y39_N0
\S~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~37_combout\ = p(31) $ (((\PrefixNetwork|Gpre[30]~13_combout\) # ((\c~33_combout\ & \c~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c~33_combout\,
	datab => p(31),
	datac => \c~31_combout\,
	datad => \PrefixNetwork|Gpre[30]~13_combout\,
	combout => \S~37_combout\);

-- Location: LCCOMB_X54_Y39_N18
\c~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \c~34_combout\ = (\PrefixNetwork|Recur:gPair[14]~0_combout\ & ((\A[30]~input_o\) # (\B[30]~input_o\))) # (!\PrefixNetwork|Recur:gPair[14]~0_combout\ & (\A[30]~input_o\ & \B[30]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Recur:gPair[14]~0_combout\,
	datac => \A[30]~input_o\,
	datad => \B[30]~input_o\,
	combout => \c~34_combout\);

-- Location: LCCOMB_X57_Y39_N4
\c~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \c~36_combout\ = (\PrefixNetwork|Recur:Inner|Recur:gPair[6]~combout\) # ((\PrefixNetwork|Recur:Inner|Recur:pPair[6]~0_combout\ & \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[2]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Recur:Inner|Recur:pPair[6]~0_combout\,
	datac => \PrefixNetwork|Recur:Inner|Recur:gPair[6]~combout\,
	datad => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:gPair[2]~combout\,
	combout => \c~36_combout\);

-- Location: LCCOMB_X53_Y39_N16
\c~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \c~35_combout\ = (\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[2]~0_combout\ & (\PrefixNetwork|Recur:Inner|Recur:pPair[6]~0_combout\ & ((\PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:gPair[0]~combout\) # (\c~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:pPair[2]~0_combout\,
	datab => \PrefixNetwork|Recur:Inner|Recur:Inner|Recur:Inner|Recur:gPair[0]~combout\,
	datac => \PrefixNetwork|Recur:Inner|Recur:pPair[6]~0_combout\,
	datad => \c~25_combout\,
	combout => \c~35_combout\);

-- Location: LCCOMB_X53_Y39_N10
\c~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \c~37_combout\ = (p(31) & (\c~33_combout\ & ((\c~36_combout\) # (\c~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(31),
	datab => \c~33_combout\,
	datac => \c~36_combout\,
	datad => \c~35_combout\,
	combout => \c~37_combout\);

-- Location: LCCOMB_X53_Y39_N20
\c~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \c~38_combout\ = (\c~37_combout\) # ((\A[31]~input_o\ & ((\c~34_combout\) # (\B[31]~input_o\))) # (!\A[31]~input_o\ & (\c~34_combout\ & \B[31]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datab => \c~34_combout\,
	datac => \B[31]~input_o\,
	datad => \c~37_combout\,
	combout => \c~38_combout\);

-- Location: LCCOMB_X53_Y39_N2
\Ovfl~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Ovfl~0_combout\ = \c~38_combout\ $ (((\PrefixNetwork|Gpre[30]~13_combout\) # ((\c~31_combout\ & \c~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c~31_combout\,
	datab => \c~33_combout\,
	datac => \PrefixNetwork|Gpre[30]~13_combout\,
	datad => \c~38_combout\,
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


