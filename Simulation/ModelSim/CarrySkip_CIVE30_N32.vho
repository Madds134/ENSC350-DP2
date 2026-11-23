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

-- DATE "11/21/2026 12:07:53"

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
-- S[0]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[1]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[2]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[3]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[4]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[5]	=>  Location: PIN_E5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[6]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[7]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[8]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[9]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[10]	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[11]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[12]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[13]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[14]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[15]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[16]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[17]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[18]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[19]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[20]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[21]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[22]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[23]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[24]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[25]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[26]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[27]	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[28]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[29]	=>  Location: PIN_V11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[30]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[31]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cout	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ovfl	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_T2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_T1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_G7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[8]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[9]	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[10]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[11]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[11]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[12]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[12]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[13]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[13]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[14]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[14]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[15]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[15]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[16]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[16]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[17]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[17]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[18]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[18]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[19]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[19]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[20]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[20]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[21]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[21]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[22]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[22]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[23]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[23]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[24]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[24]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[25]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[25]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[26]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[26]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[27]	=>  Location: PIN_V12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[27]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[28]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[28]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[29]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[29]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[30]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[30]	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[31]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[31]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cin	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \c[1]~1_combout\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \c[1]~0_combout\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \S~1_combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \c[2]~2_combout\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \S~2_combout\ : std_logic;
SIGNAL \c[3]~4_combout\ : std_logic;
SIGNAL \c[3]~3_combout\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \S~3_combout\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \cb~0_combout\ : std_logic;
SIGNAL \cb~1_combout\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \S~4_combout\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \c[5]~5_combout\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \c[5]~6_combout\ : std_logic;
SIGNAL \S~5_combout\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \c[6]~7_combout\ : std_logic;
SIGNAL \c[6]~8_combout\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \S~6_combout\ : std_logic;
SIGNAL \c[7]~10_combout\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \c[7]~9_combout\ : std_logic;
SIGNAL \S~7_combout\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \cb~4_combout\ : std_logic;
SIGNAL \cb~3_combout\ : std_logic;
SIGNAL \B[8]~input_o\ : std_logic;
SIGNAL \S~8_combout\ : std_logic;
SIGNAL \B[9]~input_o\ : std_logic;
SIGNAL \c[9]~11_combout\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \c[9]~12_combout\ : std_logic;
SIGNAL \S~9_combout\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \c[10]~13_combout\ : std_logic;
SIGNAL \c[10]~14_combout\ : std_logic;
SIGNAL \B[10]~input_o\ : std_logic;
SIGNAL \S~10_combout\ : std_logic;
SIGNAL \B[11]~input_o\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \c[11]~15_combout\ : std_logic;
SIGNAL \c[11]~16_combout\ : std_logic;
SIGNAL \S~11_combout\ : std_logic;
SIGNAL \B[12]~input_o\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \cb~6_combout\ : std_logic;
SIGNAL \cb~7_combout\ : std_logic;
SIGNAL \S~12_combout\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \c[13]~17_combout\ : std_logic;
SIGNAL \B[13]~input_o\ : std_logic;
SIGNAL \c[13]~18_combout\ : std_logic;
SIGNAL \S~13_combout\ : std_logic;
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \B[14]~input_o\ : std_logic;
SIGNAL \c[14]~19_combout\ : std_logic;
SIGNAL \c[14]~20_combout\ : std_logic;
SIGNAL \S~14_combout\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \B[15]~input_o\ : std_logic;
SIGNAL \c[15]~22_combout\ : std_logic;
SIGNAL \c[15]~21_combout\ : std_logic;
SIGNAL \S~15_combout\ : std_logic;
SIGNAL \A[16]~input_o\ : std_logic;
SIGNAL \cb~9_combout\ : std_logic;
SIGNAL \cb~10_combout\ : std_logic;
SIGNAL \B[16]~input_o\ : std_logic;
SIGNAL \S~16_combout\ : std_logic;
SIGNAL \c[17]~23_combout\ : std_logic;
SIGNAL \A[17]~input_o\ : std_logic;
SIGNAL \c[17]~24_combout\ : std_logic;
SIGNAL \B[17]~input_o\ : std_logic;
SIGNAL \S~17_combout\ : std_logic;
SIGNAL \A[18]~input_o\ : std_logic;
SIGNAL \B[18]~input_o\ : std_logic;
SIGNAL \c[18]~25_combout\ : std_logic;
SIGNAL \c[18]~26_combout\ : std_logic;
SIGNAL \S~18_combout\ : std_logic;
SIGNAL \B[19]~input_o\ : std_logic;
SIGNAL \c[19]~27_combout\ : std_logic;
SIGNAL \A[19]~input_o\ : std_logic;
SIGNAL \c[19]~28_combout\ : std_logic;
SIGNAL \S~19_combout\ : std_logic;
SIGNAL \cb~13_combout\ : std_logic;
SIGNAL \cb~12_combout\ : std_logic;
SIGNAL \B[20]~input_o\ : std_logic;
SIGNAL \A[20]~input_o\ : std_logic;
SIGNAL \S~20_combout\ : std_logic;
SIGNAL \B[21]~input_o\ : std_logic;
SIGNAL \A[21]~input_o\ : std_logic;
SIGNAL \c[21]~29_combout\ : std_logic;
SIGNAL \c[21]~30_combout\ : std_logic;
SIGNAL \S~21_combout\ : std_logic;
SIGNAL \A[22]~input_o\ : std_logic;
SIGNAL \B[22]~input_o\ : std_logic;
SIGNAL \c[22]~31_combout\ : std_logic;
SIGNAL \c[22]~32_combout\ : std_logic;
SIGNAL \S~22_combout\ : std_logic;
SIGNAL \c[23]~33_combout\ : std_logic;
SIGNAL \B[23]~input_o\ : std_logic;
SIGNAL \A[23]~input_o\ : std_logic;
SIGNAL \c[23]~34_combout\ : std_logic;
SIGNAL \S~23_combout\ : std_logic;
SIGNAL \B[24]~input_o\ : std_logic;
SIGNAL \A[24]~input_o\ : std_logic;
SIGNAL \cb~16_combout\ : std_logic;
SIGNAL \cb~15_combout\ : std_logic;
SIGNAL \S~24_combout\ : std_logic;
SIGNAL \c[25]~35_combout\ : std_logic;
SIGNAL \B[25]~input_o\ : std_logic;
SIGNAL \A[25]~input_o\ : std_logic;
SIGNAL \c[25]~36_combout\ : std_logic;
SIGNAL \S~25_combout\ : std_logic;
SIGNAL \A[26]~input_o\ : std_logic;
SIGNAL \B[26]~input_o\ : std_logic;
SIGNAL \c[26]~37_combout\ : std_logic;
SIGNAL \c[26]~38_combout\ : std_logic;
SIGNAL \S~26_combout\ : std_logic;
SIGNAL \c[27]~39_combout\ : std_logic;
SIGNAL \B[27]~input_o\ : std_logic;
SIGNAL \A[27]~input_o\ : std_logic;
SIGNAL \c[27]~40_combout\ : std_logic;
SIGNAL \S~27_combout\ : std_logic;
SIGNAL \B[28]~input_o\ : std_logic;
SIGNAL \A[28]~input_o\ : std_logic;
SIGNAL \cb~19_combout\ : std_logic;
SIGNAL \cb~18_combout\ : std_logic;
SIGNAL \S~28_combout\ : std_logic;
SIGNAL \c[29]~41_combout\ : std_logic;
SIGNAL \A[29]~input_o\ : std_logic;
SIGNAL \B[29]~input_o\ : std_logic;
SIGNAL \c[29]~42_combout\ : std_logic;
SIGNAL \S~29_combout\ : std_logic;
SIGNAL \A[30]~input_o\ : std_logic;
SIGNAL \B[30]~input_o\ : std_logic;
SIGNAL \c[30]~43_combout\ : std_logic;
SIGNAL \c[30]~44_combout\ : std_logic;
SIGNAL \S~30_combout\ : std_logic;
SIGNAL \B[31]~input_o\ : std_logic;
SIGNAL \A[31]~input_o\ : std_logic;
SIGNAL \S~31_combout\ : std_logic;
SIGNAL \cb~21_combout\ : std_logic;
SIGNAL \cb~22_combout\ : std_logic;
SIGNAL \rCOut~7_combout\ : std_logic;
SIGNAL \Ovfl~0_combout\ : std_logic;
SIGNAL p : std_logic_vector(31 DOWNTO 0);
SIGNAL cb : std_logic_vector(8 DOWNTO 0);
SIGNAL rCOut : std_logic_vector(7 DOWNTO 0);

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

-- Location: IOOBUF_X9_Y43_N2
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

-- Location: IOOBUF_X1_Y43_N30
\S[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~1_combout\,
	devoe => ww_devoe,
	o => \S[1]~output_o\);

-- Location: IOOBUF_X0_Y35_N16
\S[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~2_combout\,
	devoe => ww_devoe,
	o => \S[2]~output_o\);

-- Location: IOOBUF_X0_Y35_N9
\S[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~3_combout\,
	devoe => ww_devoe,
	o => \S[3]~output_o\);

-- Location: IOOBUF_X0_Y36_N2
\S[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~4_combout\,
	devoe => ww_devoe,
	o => \S[4]~output_o\);

-- Location: IOOBUF_X1_Y43_N23
\S[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~5_combout\,
	devoe => ww_devoe,
	o => \S[5]~output_o\);

-- Location: IOOBUF_X0_Y36_N16
\S[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~6_combout\,
	devoe => ww_devoe,
	o => \S[6]~output_o\);

-- Location: IOOBUF_X1_Y43_N9
\S[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~7_combout\,
	devoe => ww_devoe,
	o => \S[7]~output_o\);

-- Location: IOOBUF_X11_Y43_N30
\S[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~8_combout\,
	devoe => ww_devoe,
	o => \S[8]~output_o\);

-- Location: IOOBUF_X9_Y43_N30
\S[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~9_combout\,
	devoe => ww_devoe,
	o => \S[9]~output_o\);

-- Location: IOOBUF_X0_Y41_N23
\S[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~10_combout\,
	devoe => ww_devoe,
	o => \S[10]~output_o\);

-- Location: IOOBUF_X1_Y43_N16
\S[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~11_combout\,
	devoe => ww_devoe,
	o => \S[11]~output_o\);

-- Location: IOOBUF_X52_Y43_N30
\S[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~12_combout\,
	devoe => ww_devoe,
	o => \S[12]~output_o\);

-- Location: IOOBUF_X45_Y43_N30
\S[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~13_combout\,
	devoe => ww_devoe,
	o => \S[13]~output_o\);

-- Location: IOOBUF_X20_Y43_N9
\S[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~14_combout\,
	devoe => ww_devoe,
	o => \S[14]~output_o\);

-- Location: IOOBUF_X20_Y43_N2
\S[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~15_combout\,
	devoe => ww_devoe,
	o => \S[15]~output_o\);

-- Location: IOOBUF_X45_Y43_N9
\S[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~16_combout\,
	devoe => ww_devoe,
	o => \S[16]~output_o\);

-- Location: IOOBUF_X38_Y43_N23
\S[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~17_combout\,
	devoe => ww_devoe,
	o => \S[17]~output_o\);

-- Location: IOOBUF_X38_Y43_N2
\S[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~18_combout\,
	devoe => ww_devoe,
	o => \S[18]~output_o\);

-- Location: IOOBUF_X36_Y43_N16
\S[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~19_combout\,
	devoe => ww_devoe,
	o => \S[19]~output_o\);

-- Location: IOOBUF_X27_Y43_N2
\S[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~20_combout\,
	devoe => ww_devoe,
	o => \S[20]~output_o\);

-- Location: IOOBUF_X32_Y43_N30
\S[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~21_combout\,
	devoe => ww_devoe,
	o => \S[21]~output_o\);

-- Location: IOOBUF_X25_Y43_N16
\S[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~22_combout\,
	devoe => ww_devoe,
	o => \S[22]~output_o\);

-- Location: IOOBUF_X29_Y43_N2
\S[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~23_combout\,
	devoe => ww_devoe,
	o => \S[23]~output_o\);

-- Location: IOOBUF_X32_Y43_N16
\S[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~24_combout\,
	devoe => ww_devoe,
	o => \S[24]~output_o\);

-- Location: IOOBUF_X32_Y43_N9
\S[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~25_combout\,
	devoe => ww_devoe,
	o => \S[25]~output_o\);

-- Location: IOOBUF_X38_Y0_N30
\S[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~26_combout\,
	devoe => ww_devoe,
	o => \S[26]~output_o\);

-- Location: IOOBUF_X34_Y0_N23
\S[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~27_combout\,
	devoe => ww_devoe,
	o => \S[27]~output_o\);

-- Location: IOOBUF_X34_Y0_N16
\S[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~28_combout\,
	devoe => ww_devoe,
	o => \S[28]~output_o\);

-- Location: IOOBUF_X34_Y0_N30
\S[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~29_combout\,
	devoe => ww_devoe,
	o => \S[29]~output_o\);

-- Location: IOOBUF_X38_Y0_N9
\S[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~30_combout\,
	devoe => ww_devoe,
	o => \S[30]~output_o\);

-- Location: IOOBUF_X38_Y0_N16
\S[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~31_combout\,
	devoe => ww_devoe,
	o => \S[31]~output_o\);

-- Location: IOOBUF_X34_Y0_N2
\Cout~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => cb(8),
	devoe => ww_devoe,
	o => \Cout~output_o\);

-- Location: IOOBUF_X34_Y0_N9
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

-- Location: IOIBUF_X5_Y43_N22
\Cin~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cin,
	o => \Cin~input_o\);

-- Location: LCCOMB_X5_Y39_N20
\cb[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- cb(0) = LCELL(\Cin~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Cin~input_o\,
	combout => cb(0));

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

-- Location: LCCOMB_X5_Y39_N28
\S~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~0_combout\ = cb(0) $ (\B[0]~input_o\ $ (\A[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => cb(0),
	datac => \B[0]~input_o\,
	datad => \A[0]~input_o\,
	combout => \S~0_combout\);

-- Location: LCCOMB_X5_Y39_N22
\c[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[1]~1_combout\ = (cb(0) & ((\B[0]~input_o\) # (\A[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => cb(0),
	datac => \B[0]~input_o\,
	datad => \A[0]~input_o\,
	combout => \c[1]~1_combout\);

-- Location: IOIBUF_X5_Y43_N29
\B[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: LCCOMB_X4_Y39_N4
\c[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[1]~0_combout\ = (\A[0]~input_o\ & \B[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[0]~input_o\,
	datad => \B[0]~input_o\,
	combout => \c[1]~0_combout\);

-- Location: IOIBUF_X5_Y43_N1
\A[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: LCCOMB_X5_Y39_N4
\S~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~1_combout\ = \B[1]~input_o\ $ (\A[1]~input_o\ $ (((\c[1]~1_combout\) # (\c[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c[1]~1_combout\,
	datab => \B[1]~input_o\,
	datac => \c[1]~0_combout\,
	datad => \A[1]~input_o\,
	combout => \S~1_combout\);

-- Location: IOIBUF_X0_Y39_N1
\A[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: LCCOMB_X4_Y39_N14
\c[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[2]~2_combout\ = (\B[1]~input_o\ & ((\A[1]~input_o\) # ((\c[1]~0_combout\) # (\c[1]~1_combout\)))) # (!\B[1]~input_o\ & (\A[1]~input_o\ & ((\c[1]~0_combout\) # (\c[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[1]~input_o\,
	datac => \c[1]~0_combout\,
	datad => \c[1]~1_combout\,
	combout => \c[2]~2_combout\);

-- Location: IOIBUF_X0_Y39_N8
\B[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: LCCOMB_X1_Y39_N28
\S~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~2_combout\ = \A[2]~input_o\ $ (\c[2]~2_combout\ $ (\B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datac => \c[2]~2_combout\,
	datad => \B[2]~input_o\,
	combout => \S~2_combout\);

-- Location: LCCOMB_X4_Y39_N20
\c[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[3]~4_combout\ = (\c[2]~2_combout\ & ((\A[2]~input_o\) # (\B[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[2]~input_o\,
	datac => \c[2]~2_combout\,
	datad => \B[2]~input_o\,
	combout => \c[3]~4_combout\);

-- Location: LCCOMB_X1_Y39_N22
\c[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[3]~3_combout\ = (\A[2]~input_o\ & \B[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[2]~input_o\,
	datad => \B[2]~input_o\,
	combout => \c[3]~3_combout\);

-- Location: IOIBUF_X5_Y43_N15
\B[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: IOIBUF_X3_Y43_N22
\A[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: LCCOMB_X3_Y39_N28
\S~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~3_combout\ = \B[3]~input_o\ $ (\A[3]~input_o\ $ (((\c[3]~4_combout\) # (\c[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c[3]~4_combout\,
	datab => \c[3]~3_combout\,
	datac => \B[3]~input_o\,
	datad => \A[3]~input_o\,
	combout => \S~3_combout\);

-- Location: IOIBUF_X0_Y38_N22
\B[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: LCCOMB_X5_Y39_N10
\cb~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cb~0_combout\ = (\B[1]~input_o\ & (!\A[1]~input_o\ & (\B[0]~input_o\ $ (\A[0]~input_o\)))) # (!\B[1]~input_o\ & (\A[1]~input_o\ & (\B[0]~input_o\ $ (\A[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \B[0]~input_o\,
	datac => \A[1]~input_o\,
	datad => \A[0]~input_o\,
	combout => \cb~0_combout\);

-- Location: LCCOMB_X4_Y39_N22
\cb~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \cb~1_combout\ = (\B[2]~input_o\ & (!\A[2]~input_o\ & (\A[3]~input_o\ $ (\B[3]~input_o\)))) # (!\B[2]~input_o\ & (\A[2]~input_o\ & (\A[3]~input_o\ $ (\B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \A[2]~input_o\,
	datac => \A[3]~input_o\,
	datad => \B[3]~input_o\,
	combout => \cb~1_combout\);

-- Location: LCCOMB_X4_Y39_N10
\rCOut[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- rCOut(0) = LCELL((\A[3]~input_o\ & ((\B[3]~input_o\) # ((\c[3]~3_combout\) # (\c[3]~4_combout\)))) # (!\A[3]~input_o\ & (\B[3]~input_o\ & ((\c[3]~3_combout\) # (\c[3]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \B[3]~input_o\,
	datac => \c[3]~3_combout\,
	datad => \c[3]~4_combout\,
	combout => rCOut(0));

-- Location: LCCOMB_X4_Y39_N24
\cb[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- cb(1) = LCELL((rCOut(0)) # ((cb(0) & (\cb~0_combout\ & \cb~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cb(0),
	datab => \cb~0_combout\,
	datac => \cb~1_combout\,
	datad => rCOut(0),
	combout => cb(1));

-- Location: IOIBUF_X0_Y38_N15
\A[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: LCCOMB_X1_Y39_N24
\S~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~4_combout\ = \B[4]~input_o\ $ (cb(1) $ (\A[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datac => cb(1),
	datad => \A[4]~input_o\,
	combout => \S~4_combout\);

-- Location: IOIBUF_X0_Y41_N8
\A[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: LCCOMB_X1_Y38_N0
\c[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[5]~5_combout\ = (\B[4]~input_o\ & \A[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[4]~input_o\,
	datad => \A[4]~input_o\,
	combout => \c[5]~5_combout\);

-- Location: IOIBUF_X0_Y37_N22
\B[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: LCCOMB_X2_Y39_N24
\c[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[5]~6_combout\ = (cb(1) & ((\A[4]~input_o\) # (\B[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[4]~input_o\,
	datac => cb(1),
	datad => \B[4]~input_o\,
	combout => \c[5]~6_combout\);

-- Location: LCCOMB_X1_Y39_N2
\S~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~5_combout\ = \A[5]~input_o\ $ (\B[5]~input_o\ $ (((\c[5]~5_combout\) # (\c[5]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~input_o\,
	datab => \c[5]~5_combout\,
	datac => \B[5]~input_o\,
	datad => \c[5]~6_combout\,
	combout => \S~5_combout\);

-- Location: IOIBUF_X3_Y43_N1
\B[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: LCCOMB_X4_Y39_N18
\c[6]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[6]~7_combout\ = (cb(1) & ((\A[4]~input_o\) # (\B[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[4]~input_o\,
	datac => \B[4]~input_o\,
	datad => cb(1),
	combout => \c[6]~7_combout\);

-- Location: LCCOMB_X4_Y39_N12
\c[6]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[6]~8_combout\ = (\A[5]~input_o\ & ((\c[5]~5_combout\) # ((\B[5]~input_o\) # (\c[6]~7_combout\)))) # (!\A[5]~input_o\ & (\B[5]~input_o\ & ((\c[5]~5_combout\) # (\c[6]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~input_o\,
	datab => \c[5]~5_combout\,
	datac => \B[5]~input_o\,
	datad => \c[6]~7_combout\,
	combout => \c[6]~8_combout\);

-- Location: IOIBUF_X3_Y43_N29
\A[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: LCCOMB_X3_Y39_N26
\S~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~6_combout\ = \B[6]~input_o\ $ (\c[6]~8_combout\ $ (\A[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[6]~input_o\,
	datac => \c[6]~8_combout\,
	datad => \A[6]~input_o\,
	combout => \S~6_combout\);

-- Location: LCCOMB_X4_Y39_N26
\c[7]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[7]~10_combout\ = (\c[6]~8_combout\ & ((\A[6]~input_o\) # (\B[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[6]~input_o\,
	datac => \B[6]~input_o\,
	datad => \c[6]~8_combout\,
	combout => \c[7]~10_combout\);

-- Location: IOIBUF_X0_Y37_N1
\A[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: IOIBUF_X0_Y37_N15
\B[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: LCCOMB_X3_Y39_N24
\c[7]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[7]~9_combout\ = (\A[6]~input_o\ & \B[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[6]~input_o\,
	datad => \B[6]~input_o\,
	combout => \c[7]~9_combout\);

-- Location: LCCOMB_X3_Y39_N14
\S~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~7_combout\ = \A[7]~input_o\ $ (\B[7]~input_o\ $ (((\c[7]~10_combout\) # (\c[7]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c[7]~10_combout\,
	datab => \A[7]~input_o\,
	datac => \B[7]~input_o\,
	datad => \c[7]~9_combout\,
	combout => \S~7_combout\);

-- Location: IOIBUF_X7_Y43_N8
\A[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: LCCOMB_X3_Y39_N16
\cb~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \cb~4_combout\ = (\B[6]~input_o\ & (!\A[6]~input_o\ & (\A[7]~input_o\ $ (\B[7]~input_o\)))) # (!\B[6]~input_o\ & (\A[6]~input_o\ & (\A[7]~input_o\ $ (\B[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[6]~input_o\,
	datab => \A[7]~input_o\,
	datac => \B[7]~input_o\,
	datad => \A[6]~input_o\,
	combout => \cb~4_combout\);

-- Location: LCCOMB_X1_Y39_N16
\cb~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \cb~3_combout\ = (\A[5]~input_o\ & (!\B[5]~input_o\ & (\A[4]~input_o\ $ (\B[4]~input_o\)))) # (!\A[5]~input_o\ & (\B[5]~input_o\ & (\A[4]~input_o\ $ (\B[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~input_o\,
	datab => \A[4]~input_o\,
	datac => \B[5]~input_o\,
	datad => \B[4]~input_o\,
	combout => \cb~3_combout\);

-- Location: LCCOMB_X4_Y39_N0
\rCOut[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- rCOut(1) = LCELL((\B[7]~input_o\ & ((\c[7]~9_combout\) # ((\c[7]~10_combout\) # (\A[7]~input_o\)))) # (!\B[7]~input_o\ & (\A[7]~input_o\ & ((\c[7]~9_combout\) # (\c[7]~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[7]~input_o\,
	datab => \c[7]~9_combout\,
	datac => \c[7]~10_combout\,
	datad => \A[7]~input_o\,
	combout => rCOut(1));

-- Location: LCCOMB_X4_Y39_N2
\cb[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- cb(2) = LCELL((rCOut(1)) # ((\cb~4_combout\ & (cb(1) & \cb~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cb~4_combout\,
	datab => cb(1),
	datac => \cb~3_combout\,
	datad => rCOut(1),
	combout => cb(2));

-- Location: IOIBUF_X7_Y43_N15
\B[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

-- Location: LCCOMB_X8_Y39_N8
\S~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~8_combout\ = \A[8]~input_o\ $ (cb(2) $ (\B[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[8]~input_o\,
	datac => cb(2),
	datad => \B[8]~input_o\,
	combout => \S~8_combout\);

-- Location: IOIBUF_X7_Y43_N22
\B[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(9),
	o => \B[9]~input_o\);

-- Location: LCCOMB_X8_Y39_N18
\c[9]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[9]~11_combout\ = (\A[8]~input_o\ & \B[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[8]~input_o\,
	datad => \B[8]~input_o\,
	combout => \c[9]~11_combout\);

-- Location: IOIBUF_X9_Y43_N8
\A[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

-- Location: LCCOMB_X8_Y39_N28
\c[9]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[9]~12_combout\ = (cb(2) & ((\A[8]~input_o\) # (\B[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[8]~input_o\,
	datac => cb(2),
	datad => \B[8]~input_o\,
	combout => \c[9]~12_combout\);

-- Location: LCCOMB_X8_Y39_N2
\S~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~9_combout\ = \B[9]~input_o\ $ (\A[9]~input_o\ $ (((\c[9]~11_combout\) # (\c[9]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[9]~input_o\,
	datab => \c[9]~11_combout\,
	datac => \A[9]~input_o\,
	datad => \c[9]~12_combout\,
	combout => \S~9_combout\);

-- Location: IOIBUF_X0_Y40_N1
\A[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

-- Location: LCCOMB_X4_Y39_N28
\c[10]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[10]~13_combout\ = (cb(2) & ((\B[8]~input_o\) # (\A[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[8]~input_o\,
	datac => \A[8]~input_o\,
	datad => cb(2),
	combout => \c[10]~13_combout\);

-- Location: LCCOMB_X4_Y39_N30
\c[10]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[10]~14_combout\ = (\B[9]~input_o\ & ((\c[9]~11_combout\) # ((\A[9]~input_o\) # (\c[10]~13_combout\)))) # (!\B[9]~input_o\ & (\A[9]~input_o\ & ((\c[9]~11_combout\) # (\c[10]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c[9]~11_combout\,
	datab => \B[9]~input_o\,
	datac => \A[9]~input_o\,
	datad => \c[10]~13_combout\,
	combout => \c[10]~14_combout\);

-- Location: IOIBUF_X0_Y40_N8
\B[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(10),
	o => \B[10]~input_o\);

-- Location: LCCOMB_X4_Y40_N0
\S~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~10_combout\ = \A[10]~input_o\ $ (\c[10]~14_combout\ $ (\B[10]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[10]~input_o\,
	datac => \c[10]~14_combout\,
	datad => \B[10]~input_o\,
	combout => \S~10_combout\);

-- Location: IOIBUF_X5_Y43_N8
\B[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(11),
	o => \B[11]~input_o\);

-- Location: IOIBUF_X0_Y41_N1
\A[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(11),
	o => \A[11]~input_o\);

-- Location: LCCOMB_X4_Y40_N30
\c[11]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[11]~15_combout\ = (\A[10]~input_o\ & \B[10]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[10]~input_o\,
	datad => \B[10]~input_o\,
	combout => \c[11]~15_combout\);

-- Location: LCCOMB_X4_Y39_N16
\c[11]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[11]~16_combout\ = (\c[10]~14_combout\ & ((\A[10]~input_o\) # (\B[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[10]~input_o\,
	datac => \c[10]~14_combout\,
	datad => \B[10]~input_o\,
	combout => \c[11]~16_combout\);

-- Location: LCCOMB_X4_Y40_N8
\S~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~11_combout\ = \B[11]~input_o\ $ (\A[11]~input_o\ $ (((\c[11]~15_combout\) # (\c[11]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[11]~input_o\,
	datab => \A[11]~input_o\,
	datac => \c[11]~15_combout\,
	datad => \c[11]~16_combout\,
	combout => \S~11_combout\);

-- Location: IOIBUF_X32_Y43_N22
\B[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(12),
	o => \B[12]~input_o\);

-- Location: IOIBUF_X32_Y43_N1
\A[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(12),
	o => \A[12]~input_o\);

-- Location: LCCOMB_X8_Y39_N12
\cb~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \cb~6_combout\ = (\A[8]~input_o\ & (!\B[8]~input_o\ & (\A[9]~input_o\ $ (\B[9]~input_o\)))) # (!\A[8]~input_o\ & (\B[8]~input_o\ & (\A[9]~input_o\ $ (\B[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[8]~input_o\,
	datab => \A[9]~input_o\,
	datac => \B[9]~input_o\,
	datad => \B[8]~input_o\,
	combout => \cb~6_combout\);

-- Location: LCCOMB_X4_Y40_N6
\cb~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \cb~7_combout\ = (\B[11]~input_o\ & (!\A[11]~input_o\ & (\A[10]~input_o\ $ (\B[10]~input_o\)))) # (!\B[11]~input_o\ & (\A[11]~input_o\ & (\A[10]~input_o\ $ (\B[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[11]~input_o\,
	datab => \A[10]~input_o\,
	datac => \A[11]~input_o\,
	datad => \B[10]~input_o\,
	combout => \cb~7_combout\);

-- Location: LCCOMB_X4_Y39_N6
\rCOut[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- rCOut(2) = LCELL((\B[11]~input_o\ & ((\A[11]~input_o\) # ((\c[11]~15_combout\) # (\c[11]~16_combout\)))) # (!\B[11]~input_o\ & (\A[11]~input_o\ & ((\c[11]~15_combout\) # (\c[11]~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[11]~input_o\,
	datab => \A[11]~input_o\,
	datac => \c[11]~15_combout\,
	datad => \c[11]~16_combout\,
	combout => rCOut(2));

-- Location: LCCOMB_X4_Y39_N8
\cb[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- cb(3) = LCELL((rCOut(2)) # ((\cb~6_combout\ & (cb(2) & \cb~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cb~6_combout\,
	datab => cb(2),
	datac => \cb~7_combout\,
	datad => rCOut(2),
	combout => cb(3));

-- Location: LCCOMB_X33_Y40_N20
\S~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~12_combout\ = \B[12]~input_o\ $ (\A[12]~input_o\ $ (cb(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[12]~input_o\,
	datab => \A[12]~input_o\,
	datad => cb(3),
	combout => \S~12_combout\);

-- Location: IOIBUF_X41_Y43_N15
\A[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(13),
	o => \A[13]~input_o\);

-- Location: LCCOMB_X33_Y40_N30
\c[13]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[13]~17_combout\ = (\B[12]~input_o\ & \A[12]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[12]~input_o\,
	datad => \A[12]~input_o\,
	combout => \c[13]~17_combout\);

-- Location: IOIBUF_X36_Y43_N8
\B[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(13),
	o => \B[13]~input_o\);

-- Location: LCCOMB_X33_Y40_N28
\c[13]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[13]~18_combout\ = (cb(3) & ((\B[12]~input_o\) # (\A[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[12]~input_o\,
	datab => \A[12]~input_o\,
	datad => cb(3),
	combout => \c[13]~18_combout\);

-- Location: LCCOMB_X33_Y40_N6
\S~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~13_combout\ = \A[13]~input_o\ $ (\B[13]~input_o\ $ (((\c[13]~17_combout\) # (\c[13]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[13]~input_o\,
	datab => \c[13]~17_combout\,
	datac => \B[13]~input_o\,
	datad => \c[13]~18_combout\,
	combout => \S~13_combout\);

-- Location: IOIBUF_X25_Y43_N29
\A[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(14),
	o => \A[14]~input_o\);

-- Location: IOIBUF_X29_Y43_N22
\B[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(14),
	o => \B[14]~input_o\);

-- Location: LCCOMB_X33_Y39_N12
\c[14]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[14]~19_combout\ = (cb(3) & ((\A[12]~input_o\) # (\B[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[12]~input_o\,
	datac => \B[12]~input_o\,
	datad => cb(3),
	combout => \c[14]~19_combout\);

-- Location: LCCOMB_X33_Y39_N6
\c[14]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[14]~20_combout\ = (\B[13]~input_o\ & ((\c[13]~17_combout\) # ((\A[13]~input_o\) # (\c[14]~19_combout\)))) # (!\B[13]~input_o\ & (\A[13]~input_o\ & ((\c[13]~17_combout\) # (\c[14]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c[13]~17_combout\,
	datab => \B[13]~input_o\,
	datac => \A[13]~input_o\,
	datad => \c[14]~19_combout\,
	combout => \c[14]~20_combout\);

-- Location: LCCOMB_X29_Y39_N24
\S~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~14_combout\ = \A[14]~input_o\ $ (\B[14]~input_o\ $ (\c[14]~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[14]~input_o\,
	datac => \B[14]~input_o\,
	datad => \c[14]~20_combout\,
	combout => \S~14_combout\);

-- Location: IOIBUF_X25_Y43_N8
\A[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(15),
	o => \A[15]~input_o\);

-- Location: IOIBUF_X25_Y43_N1
\B[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(15),
	o => \B[15]~input_o\);

-- Location: LCCOMB_X33_Y39_N0
\c[15]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[15]~22_combout\ = (\c[14]~20_combout\ & ((\A[14]~input_o\) # (\B[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[14]~input_o\,
	datac => \B[14]~input_o\,
	datad => \c[14]~20_combout\,
	combout => \c[15]~22_combout\);

-- Location: LCCOMB_X29_Y39_N22
\c[15]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[15]~21_combout\ = (\B[14]~input_o\ & \A[14]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[14]~input_o\,
	datad => \A[14]~input_o\,
	combout => \c[15]~21_combout\);

-- Location: LCCOMB_X29_Y39_N4
\S~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~15_combout\ = \A[15]~input_o\ $ (\B[15]~input_o\ $ (((\c[15]~22_combout\) # (\c[15]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[15]~input_o\,
	datab => \B[15]~input_o\,
	datac => \c[15]~22_combout\,
	datad => \c[15]~21_combout\,
	combout => \S~15_combout\);

-- Location: IOIBUF_X45_Y43_N22
\A[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(16),
	o => \A[16]~input_o\);

-- Location: LCCOMB_X33_Y40_N8
\cb~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \cb~9_combout\ = (\B[13]~input_o\ & (!\A[13]~input_o\ & (\A[12]~input_o\ $ (\B[12]~input_o\)))) # (!\B[13]~input_o\ & (\A[13]~input_o\ & (\A[12]~input_o\ $ (\B[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[13]~input_o\,
	datab => \A[12]~input_o\,
	datac => \A[13]~input_o\,
	datad => \B[12]~input_o\,
	combout => \cb~9_combout\);

-- Location: LCCOMB_X29_Y39_N26
\cb~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \cb~10_combout\ = (\A[15]~input_o\ & (!\B[15]~input_o\ & (\B[14]~input_o\ $ (\A[14]~input_o\)))) # (!\A[15]~input_o\ & (\B[15]~input_o\ & (\B[14]~input_o\ $ (\A[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[15]~input_o\,
	datab => \B[15]~input_o\,
	datac => \B[14]~input_o\,
	datad => \A[14]~input_o\,
	combout => \cb~10_combout\);

-- Location: LCCOMB_X33_Y39_N22
\rCOut[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- rCOut(3) = LCELL((\B[15]~input_o\ & ((\c[15]~21_combout\) # ((\A[15]~input_o\) # (\c[15]~22_combout\)))) # (!\B[15]~input_o\ & (\A[15]~input_o\ & ((\c[15]~21_combout\) # (\c[15]~22_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[15]~input_o\,
	datab => \c[15]~21_combout\,
	datac => \A[15]~input_o\,
	datad => \c[15]~22_combout\,
	combout => rCOut(3));

-- Location: LCCOMB_X33_Y39_N26
\cb[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- cb(4) = LCELL((rCOut(3)) # ((\cb~9_combout\ & (\cb~10_combout\ & cb(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cb~9_combout\,
	datab => \cb~10_combout\,
	datac => rCOut(3),
	datad => cb(3),
	combout => cb(4));

-- Location: IOIBUF_X41_Y43_N8
\B[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(16),
	o => \B[16]~input_o\);

-- Location: LCCOMB_X37_Y39_N20
\S~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~16_combout\ = \A[16]~input_o\ $ (cb(4) $ (\B[16]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[16]~input_o\,
	datac => cb(4),
	datad => \B[16]~input_o\,
	combout => \S~16_combout\);

-- Location: LCCOMB_X37_Y39_N10
\c[17]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[17]~23_combout\ = (\A[16]~input_o\ & \B[16]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[16]~input_o\,
	datad => \B[16]~input_o\,
	combout => \c[17]~23_combout\);

-- Location: IOIBUF_X48_Y43_N8
\A[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(17),
	o => \A[17]~input_o\);

-- Location: LCCOMB_X37_Y39_N8
\c[17]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[17]~24_combout\ = (cb(4) & ((\A[16]~input_o\) # (\B[16]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[16]~input_o\,
	datac => cb(4),
	datad => \B[16]~input_o\,
	combout => \c[17]~24_combout\);

-- Location: IOIBUF_X50_Y43_N22
\B[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(17),
	o => \B[17]~input_o\);

-- Location: LCCOMB_X37_Y39_N2
\S~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~17_combout\ = \A[17]~input_o\ $ (\B[17]~input_o\ $ (((\c[17]~23_combout\) # (\c[17]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c[17]~23_combout\,
	datab => \A[17]~input_o\,
	datac => \c[17]~24_combout\,
	datad => \B[17]~input_o\,
	combout => \S~17_combout\);

-- Location: IOIBUF_X36_Y43_N22
\A[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(18),
	o => \A[18]~input_o\);

-- Location: IOIBUF_X38_Y43_N29
\B[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(18),
	o => \B[18]~input_o\);

-- Location: LCCOMB_X33_Y39_N18
\c[18]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[18]~25_combout\ = (cb(4) & ((\A[16]~input_o\) # (\B[16]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[16]~input_o\,
	datab => \B[16]~input_o\,
	datac => cb(4),
	combout => \c[18]~25_combout\);

-- Location: LCCOMB_X33_Y39_N24
\c[18]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[18]~26_combout\ = (\A[17]~input_o\ & ((\B[17]~input_o\) # ((\c[17]~23_combout\) # (\c[18]~25_combout\)))) # (!\A[17]~input_o\ & (\B[17]~input_o\ & ((\c[17]~23_combout\) # (\c[18]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[17]~input_o\,
	datab => \B[17]~input_o\,
	datac => \c[17]~23_combout\,
	datad => \c[18]~25_combout\,
	combout => \c[18]~26_combout\);

-- Location: LCCOMB_X36_Y39_N4
\S~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~18_combout\ = \A[18]~input_o\ $ (\B[18]~input_o\ $ (\c[18]~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[18]~input_o\,
	datac => \B[18]~input_o\,
	datad => \c[18]~26_combout\,
	combout => \S~18_combout\);

-- Location: IOIBUF_X45_Y43_N15
\B[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(19),
	o => \B[19]~input_o\);

-- Location: LCCOMB_X36_Y39_N2
\c[19]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[19]~27_combout\ = (\B[18]~input_o\ & \A[18]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[18]~input_o\,
	datad => \A[18]~input_o\,
	combout => \c[19]~27_combout\);

-- Location: IOIBUF_X45_Y43_N1
\A[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(19),
	o => \A[19]~input_o\);

-- Location: LCCOMB_X33_Y39_N10
\c[19]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[19]~28_combout\ = (\c[18]~26_combout\ & ((\B[18]~input_o\) # (\A[18]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[18]~input_o\,
	datab => \A[18]~input_o\,
	datad => \c[18]~26_combout\,
	combout => \c[19]~28_combout\);

-- Location: LCCOMB_X36_Y39_N0
\S~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~19_combout\ = \B[19]~input_o\ $ (\A[19]~input_o\ $ (((\c[19]~27_combout\) # (\c[19]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[19]~input_o\,
	datab => \c[19]~27_combout\,
	datac => \A[19]~input_o\,
	datad => \c[19]~28_combout\,
	combout => \S~19_combout\);

-- Location: LCCOMB_X36_Y39_N30
\cb~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \cb~13_combout\ = (\B[19]~input_o\ & (!\A[19]~input_o\ & (\B[18]~input_o\ $ (\A[18]~input_o\)))) # (!\B[19]~input_o\ & (\A[19]~input_o\ & (\B[18]~input_o\ $ (\A[18]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[19]~input_o\,
	datab => \B[18]~input_o\,
	datac => \A[19]~input_o\,
	datad => \A[18]~input_o\,
	combout => \cb~13_combout\);

-- Location: LCCOMB_X33_Y39_N8
\cb~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \cb~12_combout\ = (\A[17]~input_o\ & (!\B[17]~input_o\ & (\B[16]~input_o\ $ (\A[16]~input_o\)))) # (!\A[17]~input_o\ & (\B[17]~input_o\ & (\B[16]~input_o\ $ (\A[16]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[17]~input_o\,
	datab => \B[16]~input_o\,
	datac => \A[16]~input_o\,
	datad => \B[17]~input_o\,
	combout => \cb~12_combout\);

-- Location: LCCOMB_X33_Y39_N16
\rCOut[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- rCOut(4) = LCELL((\A[19]~input_o\ & ((\B[19]~input_o\) # ((\c[19]~27_combout\) # (\c[19]~28_combout\)))) # (!\A[19]~input_o\ & (\B[19]~input_o\ & ((\c[19]~27_combout\) # (\c[19]~28_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[19]~input_o\,
	datab => \B[19]~input_o\,
	datac => \c[19]~27_combout\,
	datad => \c[19]~28_combout\,
	combout => rCOut(4));

-- Location: LCCOMB_X33_Y39_N30
\cb[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- cb(5) = LCELL((rCOut(4)) # ((\cb~13_combout\ & (\cb~12_combout\ & cb(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cb~13_combout\,
	datab => \cb~12_combout\,
	datac => cb(4),
	datad => rCOut(4),
	combout => cb(5));

-- Location: IOIBUF_X20_Y43_N29
\B[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(20),
	o => \B[20]~input_o\);

-- Location: IOIBUF_X50_Y43_N1
\A[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(20),
	o => \A[20]~input_o\);

-- Location: LCCOMB_X32_Y39_N8
\S~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~20_combout\ = cb(5) $ (\B[20]~input_o\ $ (\A[20]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cb(5),
	datab => \B[20]~input_o\,
	datac => \A[20]~input_o\,
	combout => \S~20_combout\);

-- Location: IOIBUF_X52_Y43_N15
\B[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(21),
	o => \B[21]~input_o\);

-- Location: IOIBUF_X50_Y43_N8
\A[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(21),
	o => \A[21]~input_o\);

-- Location: LCCOMB_X32_Y39_N14
\c[21]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[21]~29_combout\ = (\A[20]~input_o\ & \B[20]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[20]~input_o\,
	datad => \B[20]~input_o\,
	combout => \c[21]~29_combout\);

-- Location: LCCOMB_X32_Y39_N28
\c[21]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[21]~30_combout\ = (cb(5) & ((\B[20]~input_o\) # (\A[20]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cb(5),
	datab => \B[20]~input_o\,
	datac => \A[20]~input_o\,
	combout => \c[21]~30_combout\);

-- Location: LCCOMB_X32_Y39_N6
\S~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~21_combout\ = \B[21]~input_o\ $ (\A[21]~input_o\ $ (((\c[21]~29_combout\) # (\c[21]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[21]~input_o\,
	datab => \A[21]~input_o\,
	datac => \c[21]~29_combout\,
	datad => \c[21]~30_combout\,
	combout => \S~21_combout\);

-- Location: IOIBUF_X22_Y43_N29
\A[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(22),
	o => \A[22]~input_o\);

-- Location: IOIBUF_X25_Y43_N22
\B[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(22),
	o => \B[22]~input_o\);

-- Location: LCCOMB_X33_Y39_N20
\c[22]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[22]~31_combout\ = (cb(5) & ((\A[20]~input_o\) # (\B[20]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[20]~input_o\,
	datab => \B[20]~input_o\,
	datac => cb(5),
	combout => \c[22]~31_combout\);

-- Location: LCCOMB_X33_Y39_N2
\c[22]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[22]~32_combout\ = (\B[21]~input_o\ & ((\c[21]~29_combout\) # ((\A[21]~input_o\) # (\c[22]~31_combout\)))) # (!\B[21]~input_o\ & (\A[21]~input_o\ & ((\c[21]~29_combout\) # (\c[22]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c[21]~29_combout\,
	datab => \B[21]~input_o\,
	datac => \A[21]~input_o\,
	datad => \c[22]~31_combout\,
	combout => \c[22]~32_combout\);

-- Location: LCCOMB_X30_Y39_N12
\S~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~22_combout\ = \A[22]~input_o\ $ (\B[22]~input_o\ $ (\c[22]~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[22]~input_o\,
	datac => \B[22]~input_o\,
	datad => \c[22]~32_combout\,
	combout => \S~22_combout\);

-- Location: LCCOMB_X30_Y39_N10
\c[23]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[23]~33_combout\ = (\A[22]~input_o\ & \B[22]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[22]~input_o\,
	datac => \B[22]~input_o\,
	combout => \c[23]~33_combout\);

-- Location: IOIBUF_X50_Y43_N15
\B[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(23),
	o => \B[23]~input_o\);

-- Location: IOIBUF_X22_Y43_N1
\A[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(23),
	o => \A[23]~input_o\);

-- Location: LCCOMB_X33_Y39_N28
\c[23]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[23]~34_combout\ = (\c[22]~32_combout\ & ((\A[22]~input_o\) # (\B[22]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[22]~input_o\,
	datac => \B[22]~input_o\,
	datad => \c[22]~32_combout\,
	combout => \c[23]~34_combout\);

-- Location: LCCOMB_X30_Y39_N0
\S~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~23_combout\ = \B[23]~input_o\ $ (\A[23]~input_o\ $ (((\c[23]~33_combout\) # (\c[23]~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c[23]~33_combout\,
	datab => \B[23]~input_o\,
	datac => \A[23]~input_o\,
	datad => \c[23]~34_combout\,
	combout => \S~23_combout\);

-- Location: IOIBUF_X45_Y0_N22
\B[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(24),
	o => \B[24]~input_o\);

-- Location: IOIBUF_X22_Y0_N1
\A[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(24),
	o => \A[24]~input_o\);

-- Location: LCCOMB_X30_Y39_N14
\cb~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \cb~16_combout\ = (\A[22]~input_o\ & (!\B[22]~input_o\ & (\A[23]~input_o\ $ (\B[23]~input_o\)))) # (!\A[22]~input_o\ & (\B[22]~input_o\ & (\A[23]~input_o\ $ (\B[23]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[22]~input_o\,
	datab => \A[23]~input_o\,
	datac => \B[22]~input_o\,
	datad => \B[23]~input_o\,
	combout => \cb~16_combout\);

-- Location: LCCOMB_X32_Y39_N24
\cb~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \cb~15_combout\ = (\B[21]~input_o\ & (!\A[21]~input_o\ & (\B[20]~input_o\ $ (\A[20]~input_o\)))) # (!\B[21]~input_o\ & (\A[21]~input_o\ & (\B[20]~input_o\ $ (\A[20]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[21]~input_o\,
	datab => \B[20]~input_o\,
	datac => \A[20]~input_o\,
	datad => \A[21]~input_o\,
	combout => \cb~15_combout\);

-- Location: LCCOMB_X33_Y39_N14
\rCOut[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- rCOut(5) = LCELL((\B[23]~input_o\ & ((\c[23]~33_combout\) # ((\A[23]~input_o\) # (\c[23]~34_combout\)))) # (!\B[23]~input_o\ & (\A[23]~input_o\ & ((\c[23]~33_combout\) # (\c[23]~34_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[23]~input_o\,
	datab => \c[23]~33_combout\,
	datac => \A[23]~input_o\,
	datad => \c[23]~34_combout\,
	combout => rCOut(5));

-- Location: LCCOMB_X33_Y39_N4
\cb[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- cb(6) = LCELL((rCOut(5)) # ((\cb~16_combout\ & (\cb~15_combout\ & cb(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cb~16_combout\,
	datab => \cb~15_combout\,
	datac => rCOut(5),
	datad => cb(5),
	combout => cb(6));

-- Location: LCCOMB_X34_Y39_N0
\S~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~24_combout\ = \B[24]~input_o\ $ (\A[24]~input_o\ $ (cb(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[24]~input_o\,
	datac => \A[24]~input_o\,
	datad => cb(6),
	combout => \S~24_combout\);

-- Location: LCCOMB_X34_Y39_N10
\c[25]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[25]~35_combout\ = (\A[24]~input_o\ & \B[24]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[24]~input_o\,
	datad => \B[24]~input_o\,
	combout => \c[25]~35_combout\);

-- Location: IOIBUF_X45_Y0_N8
\B[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(25),
	o => \B[25]~input_o\);

-- Location: IOIBUF_X22_Y0_N15
\A[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(25),
	o => \A[25]~input_o\);

-- Location: LCCOMB_X34_Y39_N28
\c[25]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[25]~36_combout\ = (cb(6) & ((\B[24]~input_o\) # (\A[24]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[24]~input_o\,
	datac => \A[24]~input_o\,
	datad => cb(6),
	combout => \c[25]~36_combout\);

-- Location: LCCOMB_X34_Y39_N2
\S~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~25_combout\ = \B[25]~input_o\ $ (\A[25]~input_o\ $ (((\c[25]~35_combout\) # (\c[25]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c[25]~35_combout\,
	datab => \B[25]~input_o\,
	datac => \A[25]~input_o\,
	datad => \c[25]~36_combout\,
	combout => \S~25_combout\);

-- Location: IOIBUF_X27_Y0_N1
\A[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(26),
	o => \A[26]~input_o\);

-- Location: IOIBUF_X29_Y0_N29
\B[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(26),
	o => \B[26]~input_o\);

-- Location: LCCOMB_X34_Y3_N12
\c[26]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[26]~37_combout\ = (cb(6) & ((\B[24]~input_o\) # (\A[24]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[24]~input_o\,
	datac => \A[24]~input_o\,
	datad => cb(6),
	combout => \c[26]~37_combout\);

-- Location: LCCOMB_X34_Y3_N6
\c[26]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[26]~38_combout\ = (\B[25]~input_o\ & ((\c[25]~35_combout\) # ((\A[25]~input_o\) # (\c[26]~37_combout\)))) # (!\B[25]~input_o\ & (\A[25]~input_o\ & ((\c[25]~35_combout\) # (\c[26]~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c[25]~35_combout\,
	datab => \B[25]~input_o\,
	datac => \A[25]~input_o\,
	datad => \c[26]~37_combout\,
	combout => \c[26]~38_combout\);

-- Location: LCCOMB_X34_Y3_N4
\S~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~26_combout\ = \A[26]~input_o\ $ (\B[26]~input_o\ $ (\c[26]~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[26]~input_o\,
	datac => \B[26]~input_o\,
	datad => \c[26]~38_combout\,
	combout => \S~26_combout\);

-- Location: LCCOMB_X33_Y3_N16
\c[27]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[27]~39_combout\ = (\A[26]~input_o\ & \B[26]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[26]~input_o\,
	datad => \B[26]~input_o\,
	combout => \c[27]~39_combout\);

-- Location: IOIBUF_X22_Y0_N8
\B[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(27),
	o => \B[27]~input_o\);

-- Location: IOIBUF_X41_Y0_N29
\A[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(27),
	o => \A[27]~input_o\);

-- Location: LCCOMB_X34_Y3_N18
\c[27]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[27]~40_combout\ = (\c[26]~38_combout\ & ((\A[26]~input_o\) # (\B[26]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[26]~input_o\,
	datac => \B[26]~input_o\,
	datad => \c[26]~38_combout\,
	combout => \c[27]~40_combout\);

-- Location: LCCOMB_X34_Y3_N8
\S~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~27_combout\ = \B[27]~input_o\ $ (\A[27]~input_o\ $ (((\c[27]~39_combout\) # (\c[27]~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c[27]~39_combout\,
	datab => \B[27]~input_o\,
	datac => \A[27]~input_o\,
	datad => \c[27]~40_combout\,
	combout => \S~27_combout\);

-- Location: IOIBUF_X38_Y0_N22
\B[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(28),
	o => \B[28]~input_o\);

-- Location: IOIBUF_X43_Y0_N22
\A[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(28),
	o => \A[28]~input_o\);

-- Location: LCCOMB_X33_Y3_N14
\cb~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \cb~19_combout\ = (\A[26]~input_o\ & (!\B[26]~input_o\ & (\B[27]~input_o\ $ (\A[27]~input_o\)))) # (!\A[26]~input_o\ & (\B[26]~input_o\ & (\B[27]~input_o\ $ (\A[27]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[26]~input_o\,
	datab => \B[26]~input_o\,
	datac => \B[27]~input_o\,
	datad => \A[27]~input_o\,
	combout => \cb~19_combout\);

-- Location: LCCOMB_X34_Y3_N22
\rCOut[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- rCOut(6) = LCELL((\B[27]~input_o\ & ((\c[27]~39_combout\) # ((\A[27]~input_o\) # (\c[27]~40_combout\)))) # (!\B[27]~input_o\ & (\A[27]~input_o\ & ((\c[27]~39_combout\) # (\c[27]~40_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c[27]~39_combout\,
	datab => \B[27]~input_o\,
	datac => \A[27]~input_o\,
	datad => \c[27]~40_combout\,
	combout => rCOut(6));

-- Location: LCCOMB_X34_Y39_N12
\cb~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \cb~18_combout\ = (\A[25]~input_o\ & (!\B[25]~input_o\ & (\A[24]~input_o\ $ (\B[24]~input_o\)))) # (!\A[25]~input_o\ & (\B[25]~input_o\ & (\A[24]~input_o\ $ (\B[24]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[25]~input_o\,
	datab => \B[25]~input_o\,
	datac => \A[24]~input_o\,
	datad => \B[24]~input_o\,
	combout => \cb~18_combout\);

-- Location: LCCOMB_X34_Y3_N10
\cb[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- cb(7) = LCELL((rCOut(6)) # ((\cb~19_combout\ & (cb(6) & \cb~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cb~19_combout\,
	datab => cb(6),
	datac => rCOut(6),
	datad => \cb~18_combout\,
	combout => cb(7));

-- Location: LCCOMB_X34_Y3_N30
\S~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~28_combout\ = \B[28]~input_o\ $ (\A[28]~input_o\ $ (cb(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[28]~input_o\,
	datab => \A[28]~input_o\,
	datad => cb(7),
	combout => \S~28_combout\);

-- Location: LCCOMB_X35_Y3_N4
\c[29]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[29]~41_combout\ = (\B[28]~input_o\ & \A[28]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[28]~input_o\,
	datad => \A[28]~input_o\,
	combout => \c[29]~41_combout\);

-- Location: IOIBUF_X43_Y0_N8
\A[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(29),
	o => \A[29]~input_o\);

-- Location: IOIBUF_X27_Y0_N8
\B[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(29),
	o => \B[29]~input_o\);

-- Location: LCCOMB_X34_Y3_N28
\c[29]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[29]~42_combout\ = (cb(7) & ((\B[28]~input_o\) # (\A[28]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[28]~input_o\,
	datab => \A[28]~input_o\,
	datad => cb(7),
	combout => \c[29]~42_combout\);

-- Location: LCCOMB_X34_Y3_N26
\S~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~29_combout\ = \A[29]~input_o\ $ (\B[29]~input_o\ $ (((\c[29]~41_combout\) # (\c[29]~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c[29]~41_combout\,
	datab => \A[29]~input_o\,
	datac => \B[29]~input_o\,
	datad => \c[29]~42_combout\,
	combout => \S~29_combout\);

-- Location: IOIBUF_X43_Y0_N15
\A[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(30),
	o => \A[30]~input_o\);

-- Location: IOIBUF_X43_Y0_N29
\B[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(30),
	o => \B[30]~input_o\);

-- Location: LCCOMB_X34_Y3_N0
\c[30]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[30]~43_combout\ = (cb(7) & ((\B[28]~input_o\) # (\A[28]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[28]~input_o\,
	datab => \A[28]~input_o\,
	datad => cb(7),
	combout => \c[30]~43_combout\);

-- Location: LCCOMB_X34_Y3_N2
\c[30]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[30]~44_combout\ = (\A[29]~input_o\ & ((\c[29]~41_combout\) # ((\B[29]~input_o\) # (\c[30]~43_combout\)))) # (!\A[29]~input_o\ & (\B[29]~input_o\ & ((\c[29]~41_combout\) # (\c[30]~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c[29]~41_combout\,
	datab => \A[29]~input_o\,
	datac => \B[29]~input_o\,
	datad => \c[30]~43_combout\,
	combout => \c[30]~44_combout\);

-- Location: LCCOMB_X38_Y3_N24
\S~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~30_combout\ = \A[30]~input_o\ $ (\B[30]~input_o\ $ (\c[30]~44_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[30]~input_o\,
	datab => \B[30]~input_o\,
	datac => \c[30]~44_combout\,
	combout => \S~30_combout\);

-- Location: IOIBUF_X43_Y0_N1
\B[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(31),
	o => \B[31]~input_o\);

-- Location: IOIBUF_X45_Y0_N1
\A[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(31),
	o => \A[31]~input_o\);

-- Location: LCCOMB_X38_Y3_N6
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

-- Location: LCCOMB_X38_Y3_N28
\S~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~31_combout\ = p(31) $ (((\B[30]~input_o\ & ((\c[30]~44_combout\) # (\A[30]~input_o\))) # (!\B[30]~input_o\ & (\c[30]~44_combout\ & \A[30]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(31),
	datab => \B[30]~input_o\,
	datac => \c[30]~44_combout\,
	datad => \A[30]~input_o\,
	combout => \S~31_combout\);

-- Location: LCCOMB_X35_Y3_N2
\cb~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \cb~21_combout\ = (\B[28]~input_o\ & (!\A[28]~input_o\ & (\A[29]~input_o\ $ (\B[29]~input_o\)))) # (!\B[28]~input_o\ & (\A[28]~input_o\ & (\A[29]~input_o\ $ (\B[29]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[28]~input_o\,
	datab => \A[29]~input_o\,
	datac => \B[29]~input_o\,
	datad => \A[28]~input_o\,
	combout => \cb~21_combout\);

-- Location: LCCOMB_X38_Y3_N26
\cb~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \cb~22_combout\ = (\A[30]~input_o\ & (!\B[30]~input_o\ & (\B[31]~input_o\ $ (\A[31]~input_o\)))) # (!\A[30]~input_o\ & (\B[30]~input_o\ & (\B[31]~input_o\ $ (\A[31]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[30]~input_o\,
	datab => \B[30]~input_o\,
	datac => \B[31]~input_o\,
	datad => \A[31]~input_o\,
	combout => \cb~22_combout\);

-- Location: LCCOMB_X34_Y3_N16
\rCOut~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \rCOut~7_combout\ = (\B[30]~input_o\ & ((\A[30]~input_o\) # (\c[30]~44_combout\))) # (!\B[30]~input_o\ & (\A[30]~input_o\ & \c[30]~44_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[30]~input_o\,
	datac => \A[30]~input_o\,
	datad => \c[30]~44_combout\,
	combout => \rCOut~7_combout\);

-- Location: LCCOMB_X34_Y3_N14
\rCOut[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- rCOut(7) = LCELL((\B[31]~input_o\ & ((\A[31]~input_o\) # (\rCOut~7_combout\))) # (!\B[31]~input_o\ & (\A[31]~input_o\ & \rCOut~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[31]~input_o\,
	datac => \A[31]~input_o\,
	datad => \rCOut~7_combout\,
	combout => rCOut(7));

-- Location: LCCOMB_X34_Y3_N24
\cb[8]\ : cycloneive_lcell_comb
-- Equation(s):
-- cb(8) = LCELL((rCOut(7)) # ((\cb~21_combout\ & (\cb~22_combout\ & cb(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cb~21_combout\,
	datab => \cb~22_combout\,
	datac => rCOut(7),
	datad => cb(7),
	combout => cb(8));

-- Location: LCCOMB_X34_Y3_N20
\Ovfl~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Ovfl~0_combout\ = cb(8) $ (((\A[30]~input_o\ & ((\B[30]~input_o\) # (\c[30]~44_combout\))) # (!\A[30]~input_o\ & (\B[30]~input_o\ & \c[30]~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[30]~input_o\,
	datab => \B[30]~input_o\,
	datac => \c[30]~44_combout\,
	datad => cb(8),
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


