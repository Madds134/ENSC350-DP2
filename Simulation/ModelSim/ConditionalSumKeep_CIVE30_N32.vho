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

-- DATE "11/21/2026 12:00:21"

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
-- S[0]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[1]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[2]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[3]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[4]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[5]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[6]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[7]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[8]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[9]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[10]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[11]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[12]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[13]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[14]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[15]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[16]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[17]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[18]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[19]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[20]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[21]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[22]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[23]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[24]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[25]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[26]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[27]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[28]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[29]	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[30]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[31]	=>  Location: PIN_G7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cout	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ovfl	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_T2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_T1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cin	=>  Location: PIN_J8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[8]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[9]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[10]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[11]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[11]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[12]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[12]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[13]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[13]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[14]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[14]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[15]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[15]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[16]	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[16]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[17]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[17]	=>  Location: PIN_J5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[18]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[18]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[19]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[19]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[20]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[20]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[21]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[21]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[22]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[22]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[23]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[23]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[24]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[24]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[25]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[25]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[26]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[26]	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[27]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[27]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[28]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[28]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[29]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[29]	=>  Location: PIN_E5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[30]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[30]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[31]	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[31]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \Cin~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \S~0_combout\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \S~1_combout\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \S~2_combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\ : std_logic;
SIGNAL \S~3_combout\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \S~4_combout\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\ : std_logic;
SIGNAL \S~5_combout\ : std_logic;
SIGNAL \S~6_combout\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[1]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[1]~combout\ : std_logic;
SIGNAL \S~7_combout\ : std_logic;
SIGNAL \S~8_combout\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\ : std_logic;
SIGNAL \S~9_combout\ : std_logic;
SIGNAL \S~10_combout\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[1]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[1]~combout\ : std_logic;
SIGNAL \S~11_combout\ : std_logic;
SIGNAL \S~12_combout\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[2]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[2]~combout\ : std_logic;
SIGNAL \S~13_combout\ : std_logic;
SIGNAL \S~14_combout\ : std_logic;
SIGNAL \B[8]~input_o\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[1]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[1]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[3]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[3]~combout\ : std_logic;
SIGNAL \S~15_combout\ : std_logic;
SIGNAL \S~16_combout\ : std_logic;
SIGNAL \B[9]~input_o\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:M0[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:M1[0]~combout\ : std_logic;
SIGNAL \S~17_combout\ : std_logic;
SIGNAL \S~18_combout\ : std_logic;
SIGNAL \B[10]~input_o\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:M0[1]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:M1[1]~combout\ : std_logic;
SIGNAL \S~19_combout\ : std_logic;
SIGNAL \S~20_combout\ : std_logic;
SIGNAL \B[11]~input_o\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:M0[2]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:M1[2]~combout\ : std_logic;
SIGNAL \S~21_combout\ : std_logic;
SIGNAL \S~22_combout\ : std_logic;
SIGNAL \B[12]~input_o\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[1]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[1]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:M0[3]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:M1[3]~combout\ : std_logic;
SIGNAL \S~23_combout\ : std_logic;
SIGNAL \S~24_combout\ : std_logic;
SIGNAL \B[13]~input_o\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:M0[4]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:M1[4]~combout\ : std_logic;
SIGNAL \S~25_combout\ : std_logic;
SIGNAL \S~26_combout\ : std_logic;
SIGNAL \B[14]~input_o\ : std_logic;
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M0[1]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M1[1]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:M1[5]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:M0[5]~combout\ : std_logic;
SIGNAL \S~27_combout\ : std_logic;
SIGNAL \S~28_combout\ : std_logic;
SIGNAL \B[15]~input_o\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M1[2]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M0[2]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:M1[6]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:M0[6]~combout\ : std_logic;
SIGNAL \S~29_combout\ : std_logic;
SIGNAL \S~30_combout\ : std_logic;
SIGNAL \B[16]~input_o\ : std_logic;
SIGNAL \A[16]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[1]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[1]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M1[3]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M0[3]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:M1[7]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:M0[7]~combout\ : std_logic;
SIGNAL \S~31_combout\ : std_logic;
SIGNAL \S~32_combout\ : std_logic;
SIGNAL \B[17]~input_o\ : std_logic;
SIGNAL \A[17]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:M1[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:M0[0]~combout\ : std_logic;
SIGNAL \S~33_combout\ : std_logic;
SIGNAL \S~34_combout\ : std_logic;
SIGNAL \B[18]~input_o\ : std_logic;
SIGNAL \A[18]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:M1[1]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:M0[1]~combout\ : std_logic;
SIGNAL \S~35_combout\ : std_logic;
SIGNAL \S~36_combout\ : std_logic;
SIGNAL \B[19]~input_o\ : std_logic;
SIGNAL \A[19]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:M0[2]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:M1[2]~combout\ : std_logic;
SIGNAL \S~37_combout\ : std_logic;
SIGNAL \S~38_combout\ : std_logic;
SIGNAL \B[20]~input_o\ : std_logic;
SIGNAL \A[20]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[1]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[1]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:M0[3]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:M1[3]~combout\ : std_logic;
SIGNAL \S~39_combout\ : std_logic;
SIGNAL \S~40_combout\ : std_logic;
SIGNAL \B[21]~input_o\ : std_logic;
SIGNAL \A[21]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:M1[4]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:M0[4]~combout\ : std_logic;
SIGNAL \S~41_combout\ : std_logic;
SIGNAL \S~42_combout\ : std_logic;
SIGNAL \B[22]~input_o\ : std_logic;
SIGNAL \A[22]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[1]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[1]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:M0[5]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:M1[5]~combout\ : std_logic;
SIGNAL \S~43_combout\ : std_logic;
SIGNAL \S~44_combout\ : std_logic;
SIGNAL \B[23]~input_o\ : std_logic;
SIGNAL \A[23]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[2]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[2]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:M0[6]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:M1[6]~combout\ : std_logic;
SIGNAL \S~45_combout\ : std_logic;
SIGNAL \S~46_combout\ : std_logic;
SIGNAL \B[24]~input_o\ : std_logic;
SIGNAL \A[24]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[1]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[1]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[3]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[3]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:M0[7]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:M1[7]~combout\ : std_logic;
SIGNAL \S~47_combout\ : std_logic;
SIGNAL \S~48_combout\ : std_logic;
SIGNAL \B[25]~input_o\ : std_logic;
SIGNAL \A[25]~input_o\ : std_logic;
SIGNAL \S~49_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:M0[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:M1[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:M1[8]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:M0[8]~combout\ : std_logic;
SIGNAL \S~50_combout\ : std_logic;
SIGNAL \B[26]~input_o\ : std_logic;
SIGNAL \A[26]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:M1[1]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:M0[1]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:M1[9]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:M0[9]~combout\ : std_logic;
SIGNAL \S~51_combout\ : std_logic;
SIGNAL \S~52_combout\ : std_logic;
SIGNAL \B[27]~input_o\ : std_logic;
SIGNAL \A[27]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:M1[2]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:M0[2]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:M0[10]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:M1[10]~combout\ : std_logic;
SIGNAL \S~53_combout\ : std_logic;
SIGNAL \S~54_combout\ : std_logic;
SIGNAL \B[28]~input_o\ : std_logic;
SIGNAL \A[28]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[1]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[1]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:M1[3]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:M0[3]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:M0[11]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:M1[11]~combout\ : std_logic;
SIGNAL \S~55_combout\ : std_logic;
SIGNAL \S~56_combout\ : std_logic;
SIGNAL \B[29]~input_o\ : std_logic;
SIGNAL \A[29]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:M0[4]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:M1[4]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:M0[12]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:M1[12]~combout\ : std_logic;
SIGNAL \S~57_combout\ : std_logic;
SIGNAL \S~58_combout\ : std_logic;
SIGNAL \B[30]~input_o\ : std_logic;
SIGNAL \A[30]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M1[1]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M0[1]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:M1[5]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:M0[5]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:M0[13]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:M1[13]~combout\ : std_logic;
SIGNAL \S~59_combout\ : std_logic;
SIGNAL \S~60_combout\ : std_logic;
SIGNAL \B[31]~input_o\ : std_logic;
SIGNAL \A[31]~input_o\ : std_logic;
SIGNAL \S~61_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M1[2]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M0[2]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:M1[6]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:M0[6]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:M1[14]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:M0[14]~combout\ : std_logic;
SIGNAL \S~62_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[1]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[1]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M0[3]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M1[3]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:M1[7]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:M0[7]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:M0[15]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:M1[15]~combout\ : std_logic;
SIGNAL \c~0_combout\ : std_logic;
SIGNAL \Ovfl~0_combout\ : std_logic;

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

-- Location: IOOBUF_X50_Y43_N2
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

-- Location: IOOBUF_X50_Y43_N9
\S[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~2_combout\,
	devoe => ww_devoe,
	o => \S[1]~output_o\);

-- Location: IOOBUF_X50_Y43_N16
\S[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~4_combout\,
	devoe => ww_devoe,
	o => \S[2]~output_o\);

-- Location: IOOBUF_X45_Y43_N2
\S[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~6_combout\,
	devoe => ww_devoe,
	o => \S[3]~output_o\);

-- Location: IOOBUF_X48_Y43_N9
\S[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~8_combout\,
	devoe => ww_devoe,
	o => \S[4]~output_o\);

-- Location: IOOBUF_X45_Y43_N9
\S[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~10_combout\,
	devoe => ww_devoe,
	o => \S[5]~output_o\);

-- Location: IOOBUF_X45_Y43_N16
\S[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~12_combout\,
	devoe => ww_devoe,
	o => \S[6]~output_o\);

-- Location: IOOBUF_X25_Y43_N16
\S[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~14_combout\,
	devoe => ww_devoe,
	o => \S[7]~output_o\);

-- Location: IOOBUF_X1_Y43_N9
\S[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~16_combout\,
	devoe => ww_devoe,
	o => \S[8]~output_o\);

-- Location: IOOBUF_X45_Y43_N30
\S[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~18_combout\,
	devoe => ww_devoe,
	o => \S[9]~output_o\);

-- Location: IOOBUF_X45_Y43_N23
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

-- Location: IOOBUF_X38_Y43_N23
\S[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~22_combout\,
	devoe => ww_devoe,
	o => \S[11]~output_o\);

-- Location: IOOBUF_X41_Y43_N16
\S[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~24_combout\,
	devoe => ww_devoe,
	o => \S[12]~output_o\);

-- Location: IOOBUF_X25_Y43_N30
\S[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~26_combout\,
	devoe => ww_devoe,
	o => \S[13]~output_o\);

-- Location: IOOBUF_X32_Y43_N30
\S[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~28_combout\,
	devoe => ww_devoe,
	o => \S[14]~output_o\);

-- Location: IOOBUF_X29_Y43_N2
\S[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~30_combout\,
	devoe => ww_devoe,
	o => \S[15]~output_o\);

-- Location: IOOBUF_X36_Y43_N23
\S[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~32_combout\,
	devoe => ww_devoe,
	o => \S[16]~output_o\);

-- Location: IOOBUF_X11_Y43_N30
\S[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~34_combout\,
	devoe => ww_devoe,
	o => \S[17]~output_o\);

-- Location: IOOBUF_X9_Y43_N9
\S[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~36_combout\,
	devoe => ww_devoe,
	o => \S[18]~output_o\);

-- Location: IOOBUF_X5_Y43_N23
\S[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~38_combout\,
	devoe => ww_devoe,
	o => \S[19]~output_o\);

-- Location: IOOBUF_X9_Y43_N30
\S[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~40_combout\,
	devoe => ww_devoe,
	o => \S[20]~output_o\);

-- Location: IOOBUF_X9_Y43_N2
\S[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~42_combout\,
	devoe => ww_devoe,
	o => \S[21]~output_o\);

-- Location: IOOBUF_X7_Y43_N16
\S[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~44_combout\,
	devoe => ww_devoe,
	o => \S[22]~output_o\);

-- Location: IOOBUF_X9_Y43_N16
\S[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~46_combout\,
	devoe => ww_devoe,
	o => \S[23]~output_o\);

-- Location: IOOBUF_X5_Y43_N9
\S[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~48_combout\,
	devoe => ww_devoe,
	o => \S[24]~output_o\);

-- Location: IOOBUF_X3_Y43_N23
\S[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~50_combout\,
	devoe => ww_devoe,
	o => \S[25]~output_o\);

-- Location: IOOBUF_X5_Y43_N2
\S[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~52_combout\,
	devoe => ww_devoe,
	o => \S[26]~output_o\);

-- Location: IOOBUF_X0_Y39_N9
\S[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~54_combout\,
	devoe => ww_devoe,
	o => \S[27]~output_o\);

-- Location: IOOBUF_X7_Y43_N9
\S[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~56_combout\,
	devoe => ww_devoe,
	o => \S[28]~output_o\);

-- Location: IOOBUF_X7_Y43_N23
\S[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~58_combout\,
	devoe => ww_devoe,
	o => \S[29]~output_o\);

-- Location: IOOBUF_X5_Y43_N30
\S[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~60_combout\,
	devoe => ww_devoe,
	o => \S[30]~output_o\);

-- Location: IOOBUF_X3_Y43_N30
\S[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~62_combout\,
	devoe => ww_devoe,
	o => \S[31]~output_o\);

-- Location: IOOBUF_X3_Y43_N2
\Cout~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \c~0_combout\,
	devoe => ww_devoe,
	o => \Cout~output_o\);

-- Location: IOOBUF_X0_Y39_N2
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

-- Location: IOIBUF_X0_Y34_N15
\Cin~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cin,
	o => \Cin~input_o\);

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

-- Location: LCCOMB_X18_Y39_N20
\S~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~0_combout\ = \A[0]~input_o\ $ (\Cin~input_o\ $ (\B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[0]~input_o\,
	datac => \Cin~input_o\,
	datad => \B[0]~input_o\,
	combout => \S~0_combout\);

-- Location: IOIBUF_X22_Y43_N29
\A[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: LCCOMB_X18_Y39_N2
\S~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~1_combout\ = \A[1]~input_o\ $ (((\B[0]~input_o\ & ((\Cin~input_o\) # (\A[0]~input_o\))) # (!\B[0]~input_o\ & (\Cin~input_o\ & \A[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \Cin~input_o\,
	datac => \A[0]~input_o\,
	datad => \A[1]~input_o\,
	combout => \S~1_combout\);

-- Location: IOIBUF_X0_Y37_N22
\B[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: LCCOMB_X18_Y39_N24
\S~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~2_combout\ = \S~1_combout\ $ (\B[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \S~1_combout\,
	datad => \B[1]~input_o\,
	combout => \S~2_combout\);

-- Location: IOIBUF_X25_Y43_N22
\A[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: LCCOMB_X14_Y39_N28
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\ = LCELL((\B[1]~input_o\ & ((\A[1]~input_o\) # ((\B[0]~input_o\ & \A[0]~input_o\)))) # (!\B[1]~input_o\ & (\B[0]~input_o\ & (\A[1]~input_o\ & \A[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A[1]~input_o\,
	datad => \A[0]~input_o\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\);

-- Location: LCCOMB_X18_Y39_N6
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\ = LCELL((\A[1]~input_o\ & ((\B[1]~input_o\) # ((\A[0]~input_o\) # (\B[0]~input_o\)))) # (!\A[1]~input_o\ & (\B[1]~input_o\ & ((\A[0]~input_o\) # 
-- (\B[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A[0]~input_o\,
	datad => \B[0]~input_o\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\);

-- Location: LCCOMB_X18_Y39_N14
\S~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~3_combout\ = \A[2]~input_o\ $ (((\Cin~input_o\ & ((\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\))) # (!\Cin~input_o\ & 
-- (\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \Cin~input_o\,
	datac => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\,
	combout => \S~3_combout\);

-- Location: IOIBUF_X25_Y43_N1
\B[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: LCCOMB_X18_Y39_N28
\S~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~4_combout\ = \S~3_combout\ $ (\B[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \S~3_combout\,
	datad => \B[2]~input_o\,
	combout => \S~4_combout\);

-- Location: IOIBUF_X0_Y36_N15
\B[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: LCCOMB_X18_Y39_N10
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\ = LCELL((\B[2]~input_o\ & ((\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\) # (\A[2]~input_o\))) # (!\B[2]~input_o\ & 
-- (\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\ & \A[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datac => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\,
	datad => \A[2]~input_o\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\);

-- Location: IOIBUF_X18_Y43_N1
\A[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: LCCOMB_X18_Y39_N12
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\ = LCELL((\B[2]~input_o\ & ((\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\) # (\A[2]~input_o\))) # (!\B[2]~input_o\ & 
-- (\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\ & \A[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datac => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\,
	datad => \A[2]~input_o\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\);

-- Location: LCCOMB_X18_Y39_N22
\S~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~5_combout\ = \A[3]~input_o\ $ (((\Cin~input_o\ & (\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\)) # (!\Cin~input_o\ & ((\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\,
	datab => \A[3]~input_o\,
	datac => \Cin~input_o\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\,
	combout => \S~5_combout\);

-- Location: LCCOMB_X18_Y39_N8
\S~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~6_combout\ = \B[3]~input_o\ $ (\S~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datad => \S~5_combout\,
	combout => \S~6_combout\);

-- Location: IOIBUF_X41_Y43_N8
\B[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: IOIBUF_X22_Y43_N1
\A[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: LCCOMB_X18_Y39_N4
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\ = LCELL((\B[3]~input_o\ & ((\A[3]~input_o\) # ((\A[2]~input_o\) # (\B[2]~input_o\)))) # (!\B[3]~input_o\ & (\A[3]~input_o\ & ((\A[2]~input_o\) # 
-- (\B[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \A[3]~input_o\,
	datac => \A[2]~input_o\,
	datad => \B[2]~input_o\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\);

-- Location: LCCOMB_X18_Y39_N30
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\ = LCELL((\B[3]~input_o\ & ((\A[3]~input_o\) # ((\A[2]~input_o\ & \B[2]~input_o\)))) # (!\B[3]~input_o\ & (\A[3]~input_o\ & (\A[2]~input_o\ & \B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \A[3]~input_o\,
	datac => \A[2]~input_o\,
	datad => \B[2]~input_o\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\);

-- Location: LCCOMB_X18_Y39_N0
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[1]~combout\ = LCELL((\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\ & 
-- (\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\)) # (!\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\ & 
-- ((\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\,
	datac => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[1]~combout\);

-- Location: LCCOMB_X14_Y39_N22
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[1]~combout\ = LCELL((\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\ & 
-- (\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\)) # (!\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\ & 
-- ((\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\,
	datac => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[1]~combout\);

-- Location: LCCOMB_X18_Y39_N18
\S~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~7_combout\ = \A[4]~input_o\ $ (((\Cin~input_o\ & (\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[1]~combout\)) # (!\Cin~input_o\ & ((\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[1]~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datab => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[1]~combout\,
	datac => \Cin~input_o\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[1]~combout\,
	combout => \S~7_combout\);

-- Location: LCCOMB_X18_Y39_N16
\S~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~8_combout\ = \B[4]~input_o\ $ (\S~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[4]~input_o\,
	datad => \S~7_combout\,
	combout => \S~8_combout\);

-- Location: IOIBUF_X27_Y43_N1
\B[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: IOIBUF_X25_Y43_N8
\A[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: LCCOMB_X18_Y39_N26
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\ = LCELL((\B[4]~input_o\ & ((\A[4]~input_o\) # (\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[1]~combout\))) # (!\B[4]~input_o\ & (\A[4]~input_o\ & 
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[1]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datac => \A[4]~input_o\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[1]~combout\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\);

-- Location: LCCOMB_X14_Y39_N20
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\ = LCELL((\A[4]~input_o\ & ((\B[4]~input_o\) # (\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[1]~combout\))) # (!\A[4]~input_o\ & (\B[4]~input_o\ & 
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[1]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datab => \B[4]~input_o\,
	datac => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[1]~combout\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\);

-- Location: LCCOMB_X19_Y39_N24
\S~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~9_combout\ = \A[5]~input_o\ $ (((\Cin~input_o\ & (\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\)) # (!\Cin~input_o\ & ((\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cin~input_o\,
	datab => \A[5]~input_o\,
	datac => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\,
	combout => \S~9_combout\);

-- Location: LCCOMB_X19_Y39_N14
\S~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~10_combout\ = \B[5]~input_o\ $ (\S~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[5]~input_o\,
	datad => \S~9_combout\,
	combout => \S~10_combout\);

-- Location: IOIBUF_X14_Y43_N15
\B[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: IOIBUF_X0_Y37_N1
\A[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: LCCOMB_X19_Y39_N12
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\ = LCELL((\B[5]~input_o\ & ((\A[4]~input_o\) # ((\A[5]~input_o\) # (\B[4]~input_o\)))) # (!\B[5]~input_o\ & (\A[5]~input_o\ & ((\A[4]~input_o\) # 
-- (\B[4]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datab => \B[5]~input_o\,
	datac => \A[5]~input_o\,
	datad => \B[4]~input_o\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\);

-- Location: LCCOMB_X14_Y39_N30
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\ = LCELL((\B[5]~input_o\ & ((\A[5]~input_o\) # ((\A[4]~input_o\ & \B[4]~input_o\)))) # (!\B[5]~input_o\ & (\A[4]~input_o\ & (\A[5]~input_o\ & \B[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \A[4]~input_o\,
	datac => \A[5]~input_o\,
	datad => \B[4]~input_o\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\);

-- Location: LCCOMB_X19_Y39_N22
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[1]~combout\ = LCELL((\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[1]~combout\ & (\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\)) # 
-- (!\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[1]~combout\ & ((\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\,
	datac => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[1]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[1]~combout\);

-- Location: LCCOMB_X19_Y39_N28
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[1]~combout\ = LCELL((\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[1]~combout\ & (\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\)) # 
-- (!\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[1]~combout\ & ((\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\,
	datac => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[1]~combout\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[1]~combout\);

-- Location: LCCOMB_X19_Y39_N0
\S~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~11_combout\ = \A[6]~input_o\ $ (((\Cin~input_o\ & (\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[1]~combout\)) # (!\Cin~input_o\ & ((\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[1]~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cin~input_o\,
	datab => \A[6]~input_o\,
	datac => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[1]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[1]~combout\,
	combout => \S~11_combout\);

-- Location: LCCOMB_X19_Y39_N10
\S~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~12_combout\ = \B[6]~input_o\ $ (\S~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[6]~input_o\,
	datad => \S~11_combout\,
	combout => \S~12_combout\);

-- Location: IOIBUF_X38_Y43_N29
\B[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: IOIBUF_X0_Y37_N15
\A[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: LCCOMB_X19_Y39_N8
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\ = LCELL((\B[6]~input_o\ & ((\A[6]~input_o\) # (\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\))) # (!\B[6]~input_o\ & 
-- (\A[6]~input_o\ & \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[6]~input_o\,
	datac => \A[6]~input_o\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\);

-- Location: LCCOMB_X19_Y39_N18
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\ = LCELL((\B[6]~input_o\ & ((\A[6]~input_o\) # (\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\))) # (!\B[6]~input_o\ & 
-- (\A[6]~input_o\ & \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[6]~input_o\,
	datac => \A[6]~input_o\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\);

-- Location: LCCOMB_X19_Y39_N26
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[2]~combout\ = LCELL((\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[1]~combout\ & ((\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\))) # 
-- (!\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[1]~combout\ & (\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[1]~combout\,
	datac => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[2]~combout\);

-- Location: LCCOMB_X19_Y39_N16
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[2]~combout\ = LCELL((\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[1]~combout\ & (\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\)) # 
-- (!\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[1]~combout\ & ((\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\,
	datac => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[1]~combout\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[2]~combout\);

-- Location: LCCOMB_X19_Y39_N20
\S~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~13_combout\ = \A[7]~input_o\ $ (((\Cin~input_o\ & (\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[2]~combout\)) # (!\Cin~input_o\ & ((\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[2]~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cin~input_o\,
	datab => \A[7]~input_o\,
	datac => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[2]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[2]~combout\,
	combout => \S~13_combout\);

-- Location: LCCOMB_X19_Y39_N6
\S~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~14_combout\ = \B[7]~input_o\ $ (\S~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[7]~input_o\,
	datad => \S~13_combout\,
	combout => \S~14_combout\);

-- Location: IOIBUF_X0_Y38_N22
\B[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

-- Location: IOIBUF_X0_Y40_N1
\A[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: LCCOMB_X14_Y39_N24
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\ = LCELL((\A[7]~input_o\ & ((\A[6]~input_o\) # ((\B[6]~input_o\) # (\B[7]~input_o\)))) # (!\A[7]~input_o\ & (\B[7]~input_o\ & ((\A[6]~input_o\) # 
-- (\B[6]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datab => \B[6]~input_o\,
	datac => \A[7]~input_o\,
	datad => \B[7]~input_o\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\);

-- Location: LCCOMB_X14_Y39_N10
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\ = LCELL((\A[7]~input_o\ & ((\B[7]~input_o\) # ((\A[6]~input_o\ & \B[6]~input_o\)))) # (!\A[7]~input_o\ & (\A[6]~input_o\ & (\B[6]~input_o\ & \B[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datab => \B[6]~input_o\,
	datac => \A[7]~input_o\,
	datad => \B[7]~input_o\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\);

-- Location: LCCOMB_X14_Y39_N14
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[1]~combout\ = LCELL((\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\ & 
-- (\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\)) # (!\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\ & 
-- ((\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\,
	datac => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[1]~combout\);

-- Location: LCCOMB_X14_Y39_N0
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[1]~combout\ = LCELL((\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\ & 
-- ((\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\))) # (!\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\ & 
-- (\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\,
	datab => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[1]~combout\);

-- Location: LCCOMB_X14_Y39_N12
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[3]~combout\ = LCELL((\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[1]~combout\ & ((\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[1]~combout\))) # 
-- (!\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[1]~combout\ & (\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[1]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[1]~combout\,
	datac => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[1]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[1]~combout\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[3]~combout\);

-- Location: LCCOMB_X14_Y39_N2
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[3]~combout\ = LCELL((\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[1]~combout\ & ((\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[1]~combout\))) # 
-- (!\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[1]~combout\ & (\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[1]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[1]~combout\,
	datac => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[1]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[1]~combout\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[3]~combout\);

-- Location: LCCOMB_X9_Y39_N4
\S~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~15_combout\ = \A[8]~input_o\ $ (((\Cin~input_o\ & (\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[3]~combout\)) # (!\Cin~input_o\ & ((\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[3]~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cin~input_o\,
	datab => \A[8]~input_o\,
	datac => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[3]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[3]~combout\,
	combout => \S~15_combout\);

-- Location: LCCOMB_X5_Y39_N24
\S~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~16_combout\ = \B[8]~input_o\ $ (\S~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[8]~input_o\,
	datac => \S~15_combout\,
	combout => \S~16_combout\);

-- Location: IOIBUF_X32_Y43_N15
\B[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(9),
	o => \B[9]~input_o\);

-- Location: IOIBUF_X0_Y36_N1
\A[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

-- Location: LCCOMB_X17_Y39_N14
\CarryNetwork|Recur:LowHalf|Recur:M0[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:M0[0]~combout\ = LCELL((\B[8]~input_o\ & ((\A[8]~input_o\) # (\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[3]~combout\))) # (!\B[8]~input_o\ & (\A[8]~input_o\ & 
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[3]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[8]~input_o\,
	datac => \A[8]~input_o\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[3]~combout\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:M0[0]~combout\);

-- Location: LCCOMB_X17_Y39_N24
\CarryNetwork|Recur:LowHalf|Recur:M1[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:M1[0]~combout\ = LCELL((\B[8]~input_o\ & ((\A[8]~input_o\) # (\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[3]~combout\))) # (!\B[8]~input_o\ & (\A[8]~input_o\ & 
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[3]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[8]~input_o\,
	datac => \A[8]~input_o\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[3]~combout\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:M1[0]~combout\);

-- Location: LCCOMB_X17_Y39_N0
\S~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~17_combout\ = \A[9]~input_o\ $ (((\Cin~input_o\ & ((\CarryNetwork|Recur:LowHalf|Recur:M1[0]~combout\))) # (!\Cin~input_o\ & (\CarryNetwork|Recur:LowHalf|Recur:M0[0]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cin~input_o\,
	datab => \A[9]~input_o\,
	datac => \CarryNetwork|Recur:LowHalf|Recur:M0[0]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:M1[0]~combout\,
	combout => \S~17_combout\);

-- Location: LCCOMB_X17_Y39_N6
\S~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~18_combout\ = \B[9]~input_o\ $ (\S~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[9]~input_o\,
	datad => \S~17_combout\,
	combout => \S~18_combout\);

-- Location: IOIBUF_X29_Y43_N22
\B[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(10),
	o => \B[10]~input_o\);

-- Location: IOIBUF_X20_Y43_N1
\A[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

-- Location: LCCOMB_X16_Y39_N18
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\ = LCELL((\A[9]~input_o\ & ((\A[8]~input_o\) # ((\B[8]~input_o\) # (\B[9]~input_o\)))) # (!\A[9]~input_o\ & (\B[9]~input_o\ & ((\A[8]~input_o\) # 
-- (\B[8]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[9]~input_o\,
	datab => \A[8]~input_o\,
	datac => \B[8]~input_o\,
	datad => \B[9]~input_o\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\);

-- Location: LCCOMB_X16_Y39_N28
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\ = LCELL((\A[9]~input_o\ & ((\B[9]~input_o\) # ((\A[8]~input_o\ & \B[8]~input_o\)))) # (!\A[9]~input_o\ & (\A[8]~input_o\ & (\B[8]~input_o\ & \B[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[9]~input_o\,
	datab => \A[8]~input_o\,
	datac => \B[8]~input_o\,
	datad => \B[9]~input_o\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\);

-- Location: LCCOMB_X17_Y39_N30
\CarryNetwork|Recur:LowHalf|Recur:M0[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:M0[1]~combout\ = LCELL((\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[3]~combout\ & (\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\)) # 
-- (!\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[3]~combout\ & ((\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\,
	datac => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[3]~combout\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:M0[1]~combout\);

-- Location: LCCOMB_X17_Y39_N20
\CarryNetwork|Recur:LowHalf|Recur:M1[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:M1[1]~combout\ = LCELL((\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[3]~combout\ & (\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\)) # 
-- (!\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[3]~combout\ & ((\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\,
	datac => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[3]~combout\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:M1[1]~combout\);

-- Location: LCCOMB_X17_Y39_N16
\S~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~19_combout\ = \A[10]~input_o\ $ (((\Cin~input_o\ & ((\CarryNetwork|Recur:LowHalf|Recur:M1[1]~combout\))) # (!\Cin~input_o\ & (\CarryNetwork|Recur:LowHalf|Recur:M0[1]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cin~input_o\,
	datab => \A[10]~input_o\,
	datac => \CarryNetwork|Recur:LowHalf|Recur:M0[1]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:M1[1]~combout\,
	combout => \S~19_combout\);

-- Location: LCCOMB_X17_Y39_N26
\S~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~20_combout\ = \B[10]~input_o\ $ (\S~19_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[10]~input_o\,
	datad => \S~19_combout\,
	combout => \S~20_combout\);

-- Location: IOIBUF_X20_Y43_N8
\B[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(11),
	o => \B[11]~input_o\);

-- Location: IOIBUF_X20_Y43_N29
\A[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(11),
	o => \A[11]~input_o\);

-- Location: LCCOMB_X17_Y39_N2
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\ = LCELL((\A[10]~input_o\ & ((\B[10]~input_o\) # (\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\))) # (!\A[10]~input_o\ & 
-- (\B[10]~input_o\ & \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[10]~input_o\,
	datac => \B[10]~input_o\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\);

-- Location: LCCOMB_X17_Y39_N4
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\ = LCELL((\A[10]~input_o\ & ((\B[10]~input_o\) # (\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\))) # (!\A[10]~input_o\ & 
-- (\B[10]~input_o\ & \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[10]~input_o\,
	datac => \B[10]~input_o\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\);

-- Location: LCCOMB_X17_Y39_N22
\CarryNetwork|Recur:LowHalf|Recur:M0[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:M0[2]~combout\ = LCELL((\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[3]~combout\ & (\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\)) # 
-- (!\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[3]~combout\ & ((\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\,
	datac => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[3]~combout\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:M0[2]~combout\);

-- Location: LCCOMB_X17_Y39_N28
\CarryNetwork|Recur:LowHalf|Recur:M1[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:M1[2]~combout\ = LCELL((\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[3]~combout\ & (\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\)) # 
-- (!\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[3]~combout\ & ((\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\,
	datac => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[3]~combout\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:M1[2]~combout\);

-- Location: LCCOMB_X17_Y39_N12
\S~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~21_combout\ = \A[11]~input_o\ $ (((\Cin~input_o\ & ((\CarryNetwork|Recur:LowHalf|Recur:M1[2]~combout\))) # (!\Cin~input_o\ & (\CarryNetwork|Recur:LowHalf|Recur:M0[2]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cin~input_o\,
	datab => \A[11]~input_o\,
	datac => \CarryNetwork|Recur:LowHalf|Recur:M0[2]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:M1[2]~combout\,
	combout => \S~21_combout\);

-- Location: LCCOMB_X17_Y39_N18
\S~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~22_combout\ = \B[11]~input_o\ $ (\S~21_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[11]~input_o\,
	datad => \S~21_combout\,
	combout => \S~22_combout\);

-- Location: IOIBUF_X32_Y43_N1
\B[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(12),
	o => \B[12]~input_o\);

-- Location: IOIBUF_X36_Y43_N15
\A[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(12),
	o => \A[12]~input_o\);

-- Location: LCCOMB_X16_Y39_N8
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\ = LCELL((\A[11]~input_o\ & ((\A[10]~input_o\) # ((\B[11]~input_o\) # (\B[10]~input_o\)))) # (!\A[11]~input_o\ & (\B[11]~input_o\ & ((\A[10]~input_o\) # 
-- (\B[10]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[10]~input_o\,
	datab => \A[11]~input_o\,
	datac => \B[11]~input_o\,
	datad => \B[10]~input_o\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\);

-- Location: LCCOMB_X16_Y39_N26
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\ = LCELL((\A[11]~input_o\ & ((\B[11]~input_o\) # ((\A[10]~input_o\ & \B[10]~input_o\)))) # (!\A[11]~input_o\ & (\A[10]~input_o\ & (\B[11]~input_o\ & 
-- \B[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[10]~input_o\,
	datab => \A[11]~input_o\,
	datac => \B[11]~input_o\,
	datad => \B[10]~input_o\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\);

-- Location: LCCOMB_X16_Y39_N6
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[1]~combout\ = LCELL((\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\ & 
-- (\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\)) # (!\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\ & 
-- ((\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\,
	datac => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[1]~combout\);

-- Location: LCCOMB_X16_Y39_N4
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[1]~combout\ = LCELL((\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\ & 
-- (\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\)) # (!\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\ & 
-- ((\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\,
	datac => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[1]~combout\);

-- Location: LCCOMB_X16_Y39_N22
\CarryNetwork|Recur:LowHalf|Recur:M0[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:M0[3]~combout\ = LCELL((\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[3]~combout\ & (\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[1]~combout\)) # 
-- (!\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[3]~combout\ & ((\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[1]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[1]~combout\,
	datab => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[1]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[3]~combout\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:M0[3]~combout\);

-- Location: LCCOMB_X16_Y39_N0
\CarryNetwork|Recur:LowHalf|Recur:M1[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:M1[3]~combout\ = LCELL((\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[3]~combout\ & (\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[1]~combout\)) # 
-- (!\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[3]~combout\ & ((\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[1]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[1]~combout\,
	datab => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[1]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[3]~combout\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:M1[3]~combout\);

-- Location: LCCOMB_X16_Y39_N16
\S~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~23_combout\ = \A[12]~input_o\ $ (((\Cin~input_o\ & ((\CarryNetwork|Recur:LowHalf|Recur:M1[3]~combout\))) # (!\Cin~input_o\ & (\CarryNetwork|Recur:LowHalf|Recur:M0[3]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cin~input_o\,
	datab => \A[12]~input_o\,
	datac => \CarryNetwork|Recur:LowHalf|Recur:M0[3]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:M1[3]~combout\,
	combout => \S~23_combout\);

-- Location: LCCOMB_X16_Y39_N14
\S~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~24_combout\ = \B[12]~input_o\ $ (\S~23_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[12]~input_o\,
	datad => \S~23_combout\,
	combout => \S~24_combout\);

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

-- Location: IOIBUF_X38_Y43_N1
\A[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(13),
	o => \A[13]~input_o\);

-- Location: LCCOMB_X16_Y39_N20
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\ = LCELL((\B[12]~input_o\ & ((\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[1]~combout\) # (\A[12]~input_o\))) # (!\B[12]~input_o\ & 
-- (\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[1]~combout\ & \A[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[12]~input_o\,
	datac => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[1]~combout\,
	datad => \A[12]~input_o\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\);

-- Location: LCCOMB_X16_Y39_N2
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\ = LCELL((\B[12]~input_o\ & ((\A[12]~input_o\) # (\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[1]~combout\))) # (!\B[12]~input_o\ & (\A[12]~input_o\ & 
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[1]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[12]~input_o\,
	datac => \A[12]~input_o\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[1]~combout\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\);

-- Location: LCCOMB_X16_Y39_N30
\CarryNetwork|Recur:LowHalf|Recur:M0[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:M0[4]~combout\ = LCELL((\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[3]~combout\ & ((\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\))) # 
-- (!\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[3]~combout\ & (\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\,
	datac => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[3]~combout\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:M0[4]~combout\);

-- Location: LCCOMB_X16_Y39_N12
\CarryNetwork|Recur:LowHalf|Recur:M1[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:M1[4]~combout\ = LCELL((\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[3]~combout\ & ((\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\))) # 
-- (!\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[3]~combout\ & (\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\,
	datac => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[3]~combout\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:M1[4]~combout\);

-- Location: LCCOMB_X16_Y39_N24
\S~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~25_combout\ = \A[13]~input_o\ $ (((\Cin~input_o\ & ((\CarryNetwork|Recur:LowHalf|Recur:M1[4]~combout\))) # (!\Cin~input_o\ & (\CarryNetwork|Recur:LowHalf|Recur:M0[4]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cin~input_o\,
	datab => \A[13]~input_o\,
	datac => \CarryNetwork|Recur:LowHalf|Recur:M0[4]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:M1[4]~combout\,
	combout => \S~25_combout\);

-- Location: LCCOMB_X17_Y39_N8
\S~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~26_combout\ = \B[13]~input_o\ $ (\S~25_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[13]~input_o\,
	datad => \S~25_combout\,
	combout => \S~26_combout\);

-- Location: IOIBUF_X0_Y40_N8
\B[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(14),
	o => \B[14]~input_o\);

-- Location: IOIBUF_X0_Y38_N15
\A[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(14),
	o => \A[14]~input_o\);

-- Location: LCCOMB_X15_Y39_N2
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\ = LCELL((\A[13]~input_o\ & ((\B[12]~input_o\) # ((\A[12]~input_o\) # (\B[13]~input_o\)))) # (!\A[13]~input_o\ & (\B[13]~input_o\ & ((\B[12]~input_o\) # 
-- (\A[12]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[12]~input_o\,
	datab => \A[12]~input_o\,
	datac => \A[13]~input_o\,
	datad => \B[13]~input_o\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\);

-- Location: LCCOMB_X15_Y39_N24
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\ = LCELL((\A[13]~input_o\ & ((\B[13]~input_o\) # ((\B[12]~input_o\ & \A[12]~input_o\)))) # (!\A[13]~input_o\ & (\B[12]~input_o\ & (\A[12]~input_o\ & 
-- \B[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[13]~input_o\,
	datab => \B[12]~input_o\,
	datac => \A[12]~input_o\,
	datad => \B[13]~input_o\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\);

-- Location: LCCOMB_X15_Y39_N10
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M0[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M0[1]~combout\ = LCELL((\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[1]~combout\ & (\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\)) # 
-- (!\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[1]~combout\ & ((\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\,
	datac => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[1]~combout\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M0[1]~combout\);

-- Location: LCCOMB_X15_Y39_N4
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M1[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M1[1]~combout\ = LCELL((\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[1]~combout\ & (\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\)) # 
-- (!\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[1]~combout\ & ((\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\,
	datac => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[1]~combout\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M1[1]~combout\);

-- Location: LCCOMB_X15_Y39_N22
\CarryNetwork|Recur:LowHalf|Recur:M1[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:M1[5]~combout\ = LCELL((\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[3]~combout\ & ((\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M1[1]~combout\))) # 
-- (!\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[3]~combout\ & (\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M0[1]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M0[1]~combout\,
	datac => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M1[1]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[3]~combout\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:M1[5]~combout\);

-- Location: LCCOMB_X15_Y39_N0
\CarryNetwork|Recur:LowHalf|Recur:M0[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:M0[5]~combout\ = LCELL((\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[3]~combout\ & ((\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M1[1]~combout\))) # 
-- (!\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[3]~combout\ & (\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M0[1]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M0[1]~combout\,
	datac => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M1[1]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[3]~combout\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:M0[5]~combout\);

-- Location: LCCOMB_X15_Y39_N12
\S~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~27_combout\ = \A[14]~input_o\ $ (((\Cin~input_o\ & (\CarryNetwork|Recur:LowHalf|Recur:M1[5]~combout\)) # (!\Cin~input_o\ & ((\CarryNetwork|Recur:LowHalf|Recur:M0[5]~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cin~input_o\,
	datab => \A[14]~input_o\,
	datac => \CarryNetwork|Recur:LowHalf|Recur:M1[5]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:M0[5]~combout\,
	combout => \S~27_combout\);

-- Location: LCCOMB_X15_Y39_N30
\S~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~28_combout\ = \B[14]~input_o\ $ (\S~27_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[14]~input_o\,
	datad => \S~27_combout\,
	combout => \S~28_combout\);

-- Location: IOIBUF_X0_Y41_N1
\B[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(15),
	o => \B[15]~input_o\);

-- Location: IOIBUF_X0_Y41_N8
\A[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(15),
	o => \A[15]~input_o\);

-- Location: LCCOMB_X15_Y39_N16
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\ = LCELL((\B[14]~input_o\ & ((\A[14]~input_o\) # (\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\))) # (!\B[14]~input_o\ & 
-- (\A[14]~input_o\ & \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[14]~input_o\,
	datac => \A[14]~input_o\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\);

-- Location: LCCOMB_X15_Y39_N14
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\ = LCELL((\B[14]~input_o\ & ((\A[14]~input_o\) # (\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\))) # (!\B[14]~input_o\ & 
-- (\A[14]~input_o\ & \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[14]~input_o\,
	datac => \A[14]~input_o\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\);

-- Location: LCCOMB_X15_Y39_N8
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M1[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M1[2]~combout\ = LCELL((\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[1]~combout\ & ((\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\))) # 
-- (!\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[1]~combout\ & (\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\,
	datac => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[1]~combout\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M1[2]~combout\);

-- Location: LCCOMB_X16_Y39_N10
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M0[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M0[2]~combout\ = LCELL((\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[1]~combout\ & ((\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\))) # 
-- (!\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[1]~combout\ & (\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[1]~combout\,
	datac => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M0[2]~combout\);

-- Location: LCCOMB_X15_Y39_N26
\CarryNetwork|Recur:LowHalf|Recur:M1[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:M1[6]~combout\ = LCELL((\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[3]~combout\ & (\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M1[2]~combout\)) # 
-- (!\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[3]~combout\ & ((\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M0[2]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M1[2]~combout\,
	datac => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M0[2]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[3]~combout\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:M1[6]~combout\);

-- Location: LCCOMB_X15_Y39_N20
\CarryNetwork|Recur:LowHalf|Recur:M0[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:M0[6]~combout\ = LCELL((\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[3]~combout\ & (\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M1[2]~combout\)) # 
-- (!\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[3]~combout\ & ((\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M0[2]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M1[2]~combout\,
	datac => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M0[2]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[3]~combout\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:M0[6]~combout\);

-- Location: LCCOMB_X15_Y39_N28
\S~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~29_combout\ = \A[15]~input_o\ $ (((\Cin~input_o\ & (\CarryNetwork|Recur:LowHalf|Recur:M1[6]~combout\)) # (!\Cin~input_o\ & ((\CarryNetwork|Recur:LowHalf|Recur:M0[6]~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cin~input_o\,
	datab => \A[15]~input_o\,
	datac => \CarryNetwork|Recur:LowHalf|Recur:M1[6]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:M0[6]~combout\,
	combout => \S~29_combout\);

-- Location: LCCOMB_X15_Y39_N6
\S~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~30_combout\ = \B[15]~input_o\ $ (\S~29_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[15]~input_o\,
	datad => \S~29_combout\,
	combout => \S~30_combout\);

-- Location: IOIBUF_X0_Y41_N22
\B[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(16),
	o => \B[16]~input_o\);

-- Location: IOIBUF_X32_Y43_N8
\A[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(16),
	o => \A[16]~input_o\);

-- Location: LCCOMB_X15_Y39_N18
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\ = LCELL((\B[15]~input_o\ & ((\B[14]~input_o\) # ((\A[14]~input_o\) # (\A[15]~input_o\)))) # (!\B[15]~input_o\ & (\A[15]~input_o\ & ((\B[14]~input_o\) # 
-- (\A[14]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[14]~input_o\,
	datab => \B[15]~input_o\,
	datac => \A[14]~input_o\,
	datad => \A[15]~input_o\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\);

-- Location: LCCOMB_X17_Y39_N10
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\ = LCELL((\B[15]~input_o\ & ((\A[15]~input_o\) # ((\B[14]~input_o\ & \A[14]~input_o\)))) # (!\B[15]~input_o\ & (\B[14]~input_o\ & (\A[15]~input_o\ & 
-- \A[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[15]~input_o\,
	datab => \B[14]~input_o\,
	datac => \A[15]~input_o\,
	datad => \A[14]~input_o\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\);

-- Location: LCCOMB_X14_Y39_N8
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[1]~combout\ = LCELL((\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\ & 
-- (\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\)) # (!\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\ & 
-- ((\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\,
	datac => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[1]~combout\);

-- Location: LCCOMB_X14_Y39_N18
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[1]~combout\ = LCELL((\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\ & 
-- (\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\)) # (!\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\ & 
-- ((\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\,
	datac => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[1]~combout\);

-- Location: LCCOMB_X14_Y39_N4
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M1[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M1[3]~combout\ = LCELL((\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[1]~combout\ & (\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[1]~combout\)) # 
-- (!\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[1]~combout\ & ((\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[1]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[1]~combout\,
	datac => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[1]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[1]~combout\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M1[3]~combout\);

-- Location: LCCOMB_X14_Y39_N26
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M0[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M0[3]~combout\ = LCELL((\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[1]~combout\ & (\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[1]~combout\)) # 
-- (!\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[1]~combout\ & ((\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[1]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[1]~combout\,
	datac => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[1]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[1]~combout\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M0[3]~combout\);

-- Location: LCCOMB_X14_Y39_N16
\CarryNetwork|Recur:LowHalf|Recur:M1[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:M1[7]~combout\ = LCELL((\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[3]~combout\ & (\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M1[3]~combout\)) # 
-- (!\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[3]~combout\ & ((\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M0[3]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M1[3]~combout\,
	datac => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M0[3]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[3]~combout\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:M1[7]~combout\);

-- Location: LCCOMB_X14_Y39_N6
\CarryNetwork|Recur:LowHalf|Recur:M0[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:M0[7]~combout\ = LCELL((\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[3]~combout\ & (\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M1[3]~combout\)) # 
-- (!\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[3]~combout\ & ((\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M0[3]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M1[3]~combout\,
	datac => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M0[3]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[3]~combout\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:M0[7]~combout\);

-- Location: LCCOMB_X12_Y39_N12
\S~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~31_combout\ = \A[16]~input_o\ $ (((\Cin~input_o\ & (\CarryNetwork|Recur:LowHalf|Recur:M1[7]~combout\)) # (!\Cin~input_o\ & ((\CarryNetwork|Recur:LowHalf|Recur:M0[7]~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[16]~input_o\,
	datab => \Cin~input_o\,
	datac => \CarryNetwork|Recur:LowHalf|Recur:M1[7]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:M0[7]~combout\,
	combout => \S~31_combout\);

-- Location: LCCOMB_X12_Y39_N26
\S~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~32_combout\ = \B[16]~input_o\ $ (\S~31_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[16]~input_o\,
	datad => \S~31_combout\,
	combout => \S~32_combout\);

-- Location: IOIBUF_X0_Y30_N8
\B[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(17),
	o => \B[17]~input_o\);

-- Location: IOIBUF_X0_Y32_N15
\A[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(17),
	o => \A[17]~input_o\);

-- Location: LCCOMB_X12_Y39_N30
\CarryNetwork|Recur:M1[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:M1[0]~combout\ = LCELL((\A[16]~input_o\ & ((\B[16]~input_o\) # (\CarryNetwork|Recur:LowHalf|Recur:M1[7]~combout\))) # (!\A[16]~input_o\ & (\B[16]~input_o\ & \CarryNetwork|Recur:LowHalf|Recur:M1[7]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[16]~input_o\,
	datab => \B[16]~input_o\,
	datac => \CarryNetwork|Recur:LowHalf|Recur:M1[7]~combout\,
	combout => \CarryNetwork|Recur:M1[0]~combout\);

-- Location: LCCOMB_X12_Y39_N28
\CarryNetwork|Recur:M0[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:M0[0]~combout\ = LCELL((\A[16]~input_o\ & ((\B[16]~input_o\) # (\CarryNetwork|Recur:LowHalf|Recur:M0[7]~combout\))) # (!\A[16]~input_o\ & (\B[16]~input_o\ & \CarryNetwork|Recur:LowHalf|Recur:M0[7]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[16]~input_o\,
	datac => \B[16]~input_o\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:M0[7]~combout\,
	combout => \CarryNetwork|Recur:M0[0]~combout\);

-- Location: LCCOMB_X12_Y39_N16
\S~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~33_combout\ = \A[17]~input_o\ $ (((\Cin~input_o\ & (\CarryNetwork|Recur:M1[0]~combout\)) # (!\Cin~input_o\ & ((\CarryNetwork|Recur:M0[0]~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[17]~input_o\,
	datab => \Cin~input_o\,
	datac => \CarryNetwork|Recur:M1[0]~combout\,
	datad => \CarryNetwork|Recur:M0[0]~combout\,
	combout => \S~33_combout\);

-- Location: LCCOMB_X12_Y39_N2
\S~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~34_combout\ = \B[17]~input_o\ $ (\S~33_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[17]~input_o\,
	datad => \S~33_combout\,
	combout => \S~34_combout\);

-- Location: IOIBUF_X0_Y35_N15
\B[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(18),
	o => \B[18]~input_o\);

-- Location: IOIBUF_X0_Y35_N8
\A[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(18),
	o => \A[18]~input_o\);

-- Location: LCCOMB_X11_Y39_N20
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\ = LCELL((\A[17]~input_o\ & ((\B[16]~input_o\) # ((\A[16]~input_o\) # (\B[17]~input_o\)))) # (!\A[17]~input_o\ & (\B[17]~input_o\ & ((\B[16]~input_o\) # 
-- (\A[16]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[16]~input_o\,
	datab => \A[17]~input_o\,
	datac => \A[16]~input_o\,
	datad => \B[17]~input_o\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\);

-- Location: LCCOMB_X11_Y39_N14
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\ = LCELL((\A[17]~input_o\ & ((\B[17]~input_o\) # ((\B[16]~input_o\ & \A[16]~input_o\)))) # (!\A[17]~input_o\ & (\B[16]~input_o\ & (\A[16]~input_o\ & 
-- \B[17]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[16]~input_o\,
	datab => \A[17]~input_o\,
	datac => \A[16]~input_o\,
	datad => \B[17]~input_o\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\);

-- Location: LCCOMB_X11_Y39_N26
\CarryNetwork|Recur:M1[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:M1[1]~combout\ = LCELL((\CarryNetwork|Recur:LowHalf|Recur:M1[7]~combout\ & (\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\)) # (!\CarryNetwork|Recur:LowHalf|Recur:M1[7]~combout\ & 
-- ((\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\,
	datac => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:M1[7]~combout\,
	combout => \CarryNetwork|Recur:M1[1]~combout\);

-- Location: LCCOMB_X11_Y39_N12
\CarryNetwork|Recur:M0[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:M0[1]~combout\ = LCELL((\CarryNetwork|Recur:LowHalf|Recur:M0[7]~combout\ & (\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\)) # (!\CarryNetwork|Recur:LowHalf|Recur:M0[7]~combout\ & 
-- ((\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\,
	datac => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:M0[7]~combout\,
	combout => \CarryNetwork|Recur:M0[1]~combout\);

-- Location: LCCOMB_X11_Y39_N28
\S~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~35_combout\ = \A[18]~input_o\ $ (((\Cin~input_o\ & (\CarryNetwork|Recur:M1[1]~combout\)) # (!\Cin~input_o\ & ((\CarryNetwork|Recur:M0[1]~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[18]~input_o\,
	datab => \Cin~input_o\,
	datac => \CarryNetwork|Recur:M1[1]~combout\,
	datad => \CarryNetwork|Recur:M0[1]~combout\,
	combout => \S~35_combout\);

-- Location: LCCOMB_X11_Y39_N10
\S~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~36_combout\ = \B[18]~input_o\ $ (\S~35_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[18]~input_o\,
	datad => \S~35_combout\,
	combout => \S~36_combout\);

-- Location: IOIBUF_X11_Y43_N15
\B[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(19),
	o => \B[19]~input_o\);

-- Location: IOIBUF_X0_Y19_N15
\A[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(19),
	o => \A[19]~input_o\);

-- Location: LCCOMB_X11_Y39_N24
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\ = LCELL((\A[18]~input_o\ & ((\B[18]~input_o\) # (\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\))) # (!\A[18]~input_o\ & 
-- (\B[18]~input_o\ & \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[18]~input_o\,
	datac => \B[18]~input_o\,
	datad => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\);

-- Location: LCCOMB_X12_Y39_N20
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\ = LCELL((\B[18]~input_o\ & ((\A[18]~input_o\) # (\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\))) # (!\B[18]~input_o\ & 
-- (\A[18]~input_o\ & \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[18]~input_o\,
	datac => \A[18]~input_o\,
	datad => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\);

-- Location: LCCOMB_X11_Y39_N4
\CarryNetwork|Recur:M0[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:M0[2]~combout\ = LCELL((\CarryNetwork|Recur:LowHalf|Recur:M0[7]~combout\ & (\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\)) # (!\CarryNetwork|Recur:LowHalf|Recur:M0[7]~combout\ & 
-- ((\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\,
	datac => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:M0[7]~combout\,
	combout => \CarryNetwork|Recur:M0[2]~combout\);

-- Location: LCCOMB_X11_Y39_N2
\CarryNetwork|Recur:M1[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:M1[2]~combout\ = LCELL((\CarryNetwork|Recur:LowHalf|Recur:M1[7]~combout\ & (\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\)) # (!\CarryNetwork|Recur:LowHalf|Recur:M1[7]~combout\ & 
-- ((\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\,
	datac => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:M1[7]~combout\,
	combout => \CarryNetwork|Recur:M1[2]~combout\);

-- Location: LCCOMB_X11_Y39_N0
\S~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~37_combout\ = \A[19]~input_o\ $ (((\Cin~input_o\ & ((\CarryNetwork|Recur:M1[2]~combout\))) # (!\Cin~input_o\ & (\CarryNetwork|Recur:M0[2]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cin~input_o\,
	datab => \A[19]~input_o\,
	datac => \CarryNetwork|Recur:M0[2]~combout\,
	datad => \CarryNetwork|Recur:M1[2]~combout\,
	combout => \S~37_combout\);

-- Location: LCCOMB_X11_Y39_N22
\S~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~38_combout\ = \B[19]~input_o\ $ (\S~37_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[19]~input_o\,
	datad => \S~37_combout\,
	combout => \S~38_combout\);

-- Location: IOIBUF_X0_Y31_N22
\B[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(20),
	o => \B[20]~input_o\);

-- Location: IOIBUF_X0_Y30_N1
\A[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(20),
	o => \A[20]~input_o\);

-- Location: LCCOMB_X11_Y39_N8
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\ = LCELL((\B[19]~input_o\ & ((\A[18]~input_o\) # ((\B[18]~input_o\) # (\A[19]~input_o\)))) # (!\B[19]~input_o\ & (\A[19]~input_o\ & ((\A[18]~input_o\) # 
-- (\B[18]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[18]~input_o\,
	datab => \B[19]~input_o\,
	datac => \B[18]~input_o\,
	datad => \A[19]~input_o\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\);

-- Location: LCCOMB_X11_Y39_N18
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\ = LCELL((\B[19]~input_o\ & ((\A[19]~input_o\) # ((\A[18]~input_o\ & \B[18]~input_o\)))) # (!\B[19]~input_o\ & (\A[18]~input_o\ & (\B[18]~input_o\ & 
-- \A[19]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[18]~input_o\,
	datab => \B[19]~input_o\,
	datac => \B[18]~input_o\,
	datad => \A[19]~input_o\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\);

-- Location: LCCOMB_X11_Y39_N16
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[1]~combout\ = LCELL((\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\ & 
-- (\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\)) # (!\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\ & 
-- ((\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\,
	datac => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\,
	datad => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[1]~combout\);

-- Location: LCCOMB_X11_Y39_N6
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[1]~combout\ = LCELL((\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\ & 
-- (\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\)) # (!\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\ & 
-- ((\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\,
	datac => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\,
	datad => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[1]~combout\);

-- Location: LCCOMB_X10_Y39_N4
\CarryNetwork|Recur:M0[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:M0[3]~combout\ = LCELL((\CarryNetwork|Recur:LowHalf|Recur:M0[7]~combout\ & ((\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[1]~combout\))) # (!\CarryNetwork|Recur:LowHalf|Recur:M0[7]~combout\ & 
-- (\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[1]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[1]~combout\,
	datac => \CarryNetwork|Recur:LowHalf|Recur:M0[7]~combout\,
	datad => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[1]~combout\,
	combout => \CarryNetwork|Recur:M0[3]~combout\);

-- Location: LCCOMB_X10_Y39_N18
\CarryNetwork|Recur:M1[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:M1[3]~combout\ = LCELL((\CarryNetwork|Recur:LowHalf|Recur:M1[7]~combout\ & (\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[1]~combout\)) # (!\CarryNetwork|Recur:LowHalf|Recur:M1[7]~combout\ & 
-- ((\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[1]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[1]~combout\,
	datab => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[1]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:M1[7]~combout\,
	combout => \CarryNetwork|Recur:M1[3]~combout\);

-- Location: LCCOMB_X10_Y39_N0
\S~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~39_combout\ = \A[20]~input_o\ $ (((\Cin~input_o\ & ((\CarryNetwork|Recur:M1[3]~combout\))) # (!\Cin~input_o\ & (\CarryNetwork|Recur:M0[3]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[20]~input_o\,
	datab => \Cin~input_o\,
	datac => \CarryNetwork|Recur:M0[3]~combout\,
	datad => \CarryNetwork|Recur:M1[3]~combout\,
	combout => \S~39_combout\);

-- Location: LCCOMB_X10_Y39_N10
\S~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~40_combout\ = \B[20]~input_o\ $ (\S~39_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[20]~input_o\,
	datad => \S~39_combout\,
	combout => \S~40_combout\);

-- Location: IOIBUF_X0_Y28_N22
\B[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(21),
	o => \B[21]~input_o\);

-- Location: IOIBUF_X32_Y43_N22
\A[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(21),
	o => \A[21]~input_o\);

-- Location: LCCOMB_X11_Y39_N30
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\ = LCELL((\B[20]~input_o\ & ((\A[20]~input_o\) # (\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[1]~combout\))) # (!\B[20]~input_o\ & (\A[20]~input_o\ & 
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[1]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[20]~input_o\,
	datac => \A[20]~input_o\,
	datad => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[1]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\);

-- Location: LCCOMB_X10_Y39_N28
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\ = LCELL((\B[20]~input_o\ & ((\A[20]~input_o\) # (\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[1]~combout\))) # (!\B[20]~input_o\ & (\A[20]~input_o\ & 
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[1]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[20]~input_o\,
	datac => \A[20]~input_o\,
	datad => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[1]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\);

-- Location: LCCOMB_X10_Y39_N26
\CarryNetwork|Recur:M1[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:M1[4]~combout\ = LCELL((\CarryNetwork|Recur:LowHalf|Recur:M1[7]~combout\ & (\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\)) # (!\CarryNetwork|Recur:LowHalf|Recur:M1[7]~combout\ & 
-- ((\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\,
	datab => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:M1[7]~combout\,
	combout => \CarryNetwork|Recur:M1[4]~combout\);

-- Location: LCCOMB_X10_Y39_N12
\CarryNetwork|Recur:M0[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:M0[4]~combout\ = LCELL((\CarryNetwork|Recur:LowHalf|Recur:M0[7]~combout\ & (\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\)) # (!\CarryNetwork|Recur:LowHalf|Recur:M0[7]~combout\ & 
-- ((\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\,
	datac => \CarryNetwork|Recur:LowHalf|Recur:M0[7]~combout\,
	datad => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\,
	combout => \CarryNetwork|Recur:M0[4]~combout\);

-- Location: LCCOMB_X10_Y39_N20
\S~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~41_combout\ = \A[21]~input_o\ $ (((\Cin~input_o\ & (\CarryNetwork|Recur:M1[4]~combout\)) # (!\Cin~input_o\ & ((\CarryNetwork|Recur:M0[4]~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[21]~input_o\,
	datab => \Cin~input_o\,
	datac => \CarryNetwork|Recur:M1[4]~combout\,
	datad => \CarryNetwork|Recur:M0[4]~combout\,
	combout => \S~41_combout\);

-- Location: LCCOMB_X10_Y39_N2
\S~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~42_combout\ = \B[21]~input_o\ $ (\S~41_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[21]~input_o\,
	datad => \S~41_combout\,
	combout => \S~42_combout\);

-- Location: IOIBUF_X0_Y30_N15
\B[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(22),
	o => \B[22]~input_o\);

-- Location: IOIBUF_X5_Y43_N15
\A[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(22),
	o => \A[22]~input_o\);

-- Location: LCCOMB_X10_Y39_N6
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\ = LCELL((\B[21]~input_o\ & ((\B[20]~input_o\) # ((\A[20]~input_o\) # (\A[21]~input_o\)))) # (!\B[21]~input_o\ & (\A[21]~input_o\ & ((\B[20]~input_o\) # 
-- (\A[20]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[20]~input_o\,
	datab => \B[21]~input_o\,
	datac => \A[20]~input_o\,
	datad => \A[21]~input_o\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\);

-- Location: LCCOMB_X9_Y39_N6
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\ = LCELL((\B[21]~input_o\ & ((\A[21]~input_o\) # ((\B[20]~input_o\ & \A[20]~input_o\)))) # (!\B[21]~input_o\ & (\B[20]~input_o\ & (\A[20]~input_o\ & 
-- \A[21]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[20]~input_o\,
	datab => \B[21]~input_o\,
	datac => \A[20]~input_o\,
	datad => \A[21]~input_o\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\);

-- Location: LCCOMB_X9_Y39_N0
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[1]~combout\ = LCELL((\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[1]~combout\ & (\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\)) # 
-- (!\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[1]~combout\ & ((\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\,
	datac => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[1]~combout\,
	datad => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[1]~combout\);

-- Location: LCCOMB_X9_Y39_N10
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[1]~combout\ = LCELL((\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[1]~combout\ & ((\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\))) # 
-- (!\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[1]~combout\ & (\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\,
	datac => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[1]~combout\,
	datad => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[1]~combout\);

-- Location: LCCOMB_X9_Y39_N22
\CarryNetwork|Recur:M0[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:M0[5]~combout\ = LCELL((\CarryNetwork|Recur:LowHalf|Recur:M0[7]~combout\ & ((\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[1]~combout\))) # (!\CarryNetwork|Recur:LowHalf|Recur:M0[7]~combout\ & 
-- (\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[1]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[1]~combout\,
	datac => \CarryNetwork|Recur:LowHalf|Recur:M0[7]~combout\,
	datad => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[1]~combout\,
	combout => \CarryNetwork|Recur:M0[5]~combout\);

-- Location: LCCOMB_X9_Y39_N20
\CarryNetwork|Recur:M1[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:M1[5]~combout\ = LCELL((\CarryNetwork|Recur:LowHalf|Recur:M1[7]~combout\ & (\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[1]~combout\)) # (!\CarryNetwork|Recur:LowHalf|Recur:M1[7]~combout\ & 
-- ((\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[1]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[1]~combout\,
	datab => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[1]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:M1[7]~combout\,
	combout => \CarryNetwork|Recur:M1[5]~combout\);

-- Location: LCCOMB_X9_Y39_N18
\S~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~43_combout\ = \A[22]~input_o\ $ (((\Cin~input_o\ & ((\CarryNetwork|Recur:M1[5]~combout\))) # (!\Cin~input_o\ & (\CarryNetwork|Recur:M0[5]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cin~input_o\,
	datab => \A[22]~input_o\,
	datac => \CarryNetwork|Recur:M0[5]~combout\,
	datad => \CarryNetwork|Recur:M1[5]~combout\,
	combout => \S~43_combout\);

-- Location: LCCOMB_X9_Y39_N16
\S~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~44_combout\ = \B[22]~input_o\ $ (\S~43_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[22]~input_o\,
	datad => \S~43_combout\,
	combout => \S~44_combout\);

-- Location: IOIBUF_X0_Y20_N15
\B[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(23),
	o => \B[23]~input_o\);

-- Location: IOIBUF_X0_Y20_N1
\A[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(23),
	o => \A[23]~input_o\);

-- Location: LCCOMB_X9_Y39_N26
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\ = LCELL((\A[22]~input_o\ & ((\B[22]~input_o\) # (\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\))) # (!\A[22]~input_o\ & 
-- (\B[22]~input_o\ & \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[22]~input_o\,
	datac => \B[22]~input_o\,
	datad => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\);

-- Location: LCCOMB_X9_Y39_N12
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\ = LCELL((\A[22]~input_o\ & ((\B[22]~input_o\) # (\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\))) # (!\A[22]~input_o\ & 
-- (\B[22]~input_o\ & \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[22]~input_o\,
	datac => \B[22]~input_o\,
	datad => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\);

-- Location: LCCOMB_X9_Y39_N30
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[2]~combout\ = LCELL((\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[1]~combout\ & ((\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\))) # 
-- (!\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[1]~combout\ & (\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\,
	datac => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[1]~combout\,
	datad => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[2]~combout\);

-- Location: LCCOMB_X9_Y39_N28
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[2]~combout\ = LCELL((\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[1]~combout\ & (\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\)) # 
-- (!\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[1]~combout\ & ((\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\,
	datac => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\,
	datad => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[1]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[2]~combout\);

-- Location: LCCOMB_X9_Y39_N14
\CarryNetwork|Recur:M0[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:M0[6]~combout\ = LCELL((\CarryNetwork|Recur:LowHalf|Recur:M0[7]~combout\ & (\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[2]~combout\)) # (!\CarryNetwork|Recur:LowHalf|Recur:M0[7]~combout\ & 
-- ((\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[2]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[2]~combout\,
	datab => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[2]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:M0[7]~combout\,
	combout => \CarryNetwork|Recur:M0[6]~combout\);

-- Location: LCCOMB_X9_Y39_N24
\CarryNetwork|Recur:M1[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:M1[6]~combout\ = LCELL((\CarryNetwork|Recur:LowHalf|Recur:M1[7]~combout\ & ((\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[2]~combout\))) # (!\CarryNetwork|Recur:LowHalf|Recur:M1[7]~combout\ & 
-- (\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[2]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[2]~combout\,
	datac => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[2]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:M1[7]~combout\,
	combout => \CarryNetwork|Recur:M1[6]~combout\);

-- Location: LCCOMB_X9_Y39_N2
\S~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~45_combout\ = \A[23]~input_o\ $ (((\Cin~input_o\ & ((\CarryNetwork|Recur:M1[6]~combout\))) # (!\Cin~input_o\ & (\CarryNetwork|Recur:M0[6]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cin~input_o\,
	datab => \A[23]~input_o\,
	datac => \CarryNetwork|Recur:M0[6]~combout\,
	datad => \CarryNetwork|Recur:M1[6]~combout\,
	combout => \S~45_combout\);

-- Location: LCCOMB_X9_Y39_N8
\S~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~46_combout\ = \B[23]~input_o\ $ (\S~45_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[23]~input_o\,
	datad => \S~45_combout\,
	combout => \S~46_combout\);

-- Location: IOIBUF_X50_Y43_N22
\B[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(24),
	o => \B[24]~input_o\);

-- Location: IOIBUF_X0_Y20_N8
\A[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(24),
	o => \A[24]~input_o\);

-- Location: LCCOMB_X10_Y39_N30
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\ = LCELL((\B[23]~input_o\ & ((\A[23]~input_o\) # ((\A[22]~input_o\ & \B[22]~input_o\)))) # (!\B[23]~input_o\ & (\A[22]~input_o\ & (\B[22]~input_o\ & 
-- \A[23]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[22]~input_o\,
	datab => \B[22]~input_o\,
	datac => \B[23]~input_o\,
	datad => \A[23]~input_o\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\);

-- Location: LCCOMB_X10_Y39_N24
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\ = LCELL((\B[23]~input_o\ & ((\A[22]~input_o\) # ((\B[22]~input_o\) # (\A[23]~input_o\)))) # (!\B[23]~input_o\ & (\A[23]~input_o\ & ((\A[22]~input_o\) # 
-- (\B[22]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[22]~input_o\,
	datab => \B[22]~input_o\,
	datac => \B[23]~input_o\,
	datad => \A[23]~input_o\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\);

-- Location: LCCOMB_X10_Y39_N8
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[1]~combout\ = LCELL((\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\ & 
-- ((\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\))) # (!\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\ & 
-- (\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\,
	datac => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\,
	datad => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[1]~combout\);

-- Location: LCCOMB_X10_Y39_N22
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[1]~combout\ = LCELL((\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\ & 
-- ((\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\))) # (!\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\ & 
-- (\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\,
	datac => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\,
	datad => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[1]~combout\);

-- Location: LCCOMB_X10_Y39_N16
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[3]~combout\ = LCELL((\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[1]~combout\ & (\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[1]~combout\)) # 
-- (!\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[1]~combout\ & ((\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[1]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[1]~combout\,
	datac => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[1]~combout\,
	datad => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[1]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[3]~combout\);

-- Location: LCCOMB_X10_Y39_N14
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[3]~combout\ = LCELL((\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[1]~combout\ & (\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[1]~combout\)) # 
-- (!\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[1]~combout\ & ((\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[1]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[1]~combout\,
	datac => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[1]~combout\,
	datad => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[1]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[3]~combout\);

-- Location: LCCOMB_X7_Y39_N30
\CarryNetwork|Recur:M0[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:M0[7]~combout\ = LCELL((\CarryNetwork|Recur:LowHalf|Recur:M0[7]~combout\ & ((\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[3]~combout\))) # (!\CarryNetwork|Recur:LowHalf|Recur:M0[7]~combout\ & 
-- (\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[3]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[3]~combout\,
	datac => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[3]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:M0[7]~combout\,
	combout => \CarryNetwork|Recur:M0[7]~combout\);

-- Location: LCCOMB_X7_Y39_N20
\CarryNetwork|Recur:M1[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:M1[7]~combout\ = LCELL((\CarryNetwork|Recur:LowHalf|Recur:M1[7]~combout\ & ((\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[3]~combout\))) # (!\CarryNetwork|Recur:LowHalf|Recur:M1[7]~combout\ & 
-- (\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[3]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[3]~combout\,
	datac => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[3]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:M1[7]~combout\,
	combout => \CarryNetwork|Recur:M1[7]~combout\);

-- Location: LCCOMB_X7_Y39_N0
\S~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~47_combout\ = \A[24]~input_o\ $ (((\Cin~input_o\ & ((\CarryNetwork|Recur:M1[7]~combout\))) # (!\Cin~input_o\ & (\CarryNetwork|Recur:M0[7]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cin~input_o\,
	datab => \A[24]~input_o\,
	datac => \CarryNetwork|Recur:M0[7]~combout\,
	datad => \CarryNetwork|Recur:M1[7]~combout\,
	combout => \S~47_combout\);

-- Location: LCCOMB_X7_Y39_N14
\S~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~48_combout\ = \B[24]~input_o\ $ (\S~47_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[24]~input_o\,
	datad => \S~47_combout\,
	combout => \S~48_combout\);

-- Location: IOIBUF_X0_Y28_N8
\B[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(25),
	o => \B[25]~input_o\);

-- Location: IOIBUF_X0_Y19_N22
\A[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(25),
	o => \A[25]~input_o\);

-- Location: LCCOMB_X8_Y39_N20
\S~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~49_combout\ = \B[25]~input_o\ $ (!\A[25]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[25]~input_o\,
	datad => \A[25]~input_o\,
	combout => \S~49_combout\);

-- Location: LCCOMB_X7_Y39_N12
\CarryNetwork|Recur:HighHalf|Recur:M0[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:M0[0]~combout\ = LCELL((\A[24]~input_o\ & ((\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[3]~combout\) # (\B[24]~input_o\))) # (!\A[24]~input_o\ & (\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[3]~combout\ & 
-- \B[24]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[24]~input_o\,
	datac => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[3]~combout\,
	datad => \B[24]~input_o\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:M0[0]~combout\);

-- Location: LCCOMB_X7_Y39_N22
\CarryNetwork|Recur:HighHalf|Recur:M1[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:M1[0]~combout\ = LCELL((\B[24]~input_o\ & ((\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[3]~combout\) # (\A[24]~input_o\))) # (!\B[24]~input_o\ & (\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[3]~combout\ & 
-- \A[24]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[24]~input_o\,
	datac => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[3]~combout\,
	datad => \A[24]~input_o\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:M1[0]~combout\);

-- Location: LCCOMB_X7_Y39_N4
\CarryNetwork|Recur:M1[8]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:M1[8]~combout\ = LCELL((\CarryNetwork|Recur:LowHalf|Recur:M1[7]~combout\ & ((\CarryNetwork|Recur:HighHalf|Recur:M1[0]~combout\))) # (!\CarryNetwork|Recur:LowHalf|Recur:M1[7]~combout\ & 
-- (\CarryNetwork|Recur:HighHalf|Recur:M0[0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:HighHalf|Recur:M0[0]~combout\,
	datac => \CarryNetwork|Recur:HighHalf|Recur:M1[0]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:M1[7]~combout\,
	combout => \CarryNetwork|Recur:M1[8]~combout\);

-- Location: LCCOMB_X7_Y39_N6
\CarryNetwork|Recur:M0[8]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:M0[8]~combout\ = LCELL((\CarryNetwork|Recur:LowHalf|Recur:M0[7]~combout\ & ((\CarryNetwork|Recur:HighHalf|Recur:M1[0]~combout\))) # (!\CarryNetwork|Recur:LowHalf|Recur:M0[7]~combout\ & 
-- (\CarryNetwork|Recur:HighHalf|Recur:M0[0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:HighHalf|Recur:M0[0]~combout\,
	datac => \CarryNetwork|Recur:HighHalf|Recur:M1[0]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:M0[7]~combout\,
	combout => \CarryNetwork|Recur:M0[8]~combout\);

-- Location: LCCOMB_X7_Y39_N16
\S~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~50_combout\ = \S~49_combout\ $ (((\Cin~input_o\ & (!\CarryNetwork|Recur:M1[8]~combout\)) # (!\Cin~input_o\ & ((!\CarryNetwork|Recur:M0[8]~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011010010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S~49_combout\,
	datab => \Cin~input_o\,
	datac => \CarryNetwork|Recur:M1[8]~combout\,
	datad => \CarryNetwork|Recur:M0[8]~combout\,
	combout => \S~50_combout\);

-- Location: IOIBUF_X0_Y29_N15
\B[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(26),
	o => \B[26]~input_o\);

-- Location: IOIBUF_X0_Y28_N1
\A[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(26),
	o => \A[26]~input_o\);

-- Location: LCCOMB_X7_Y39_N8
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\ = LCELL((\B[25]~input_o\ & ((\A[25]~input_o\) # ((\A[24]~input_o\ & \B[24]~input_o\)))) # (!\B[25]~input_o\ & (\A[24]~input_o\ & (\A[25]~input_o\ & 
-- \B[24]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[25]~input_o\,
	datab => \A[24]~input_o\,
	datac => \A[25]~input_o\,
	datad => \B[24]~input_o\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\);

-- Location: LCCOMB_X7_Y39_N2
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\ = LCELL((\B[25]~input_o\ & ((\A[24]~input_o\) # ((\A[25]~input_o\) # (\B[24]~input_o\)))) # (!\B[25]~input_o\ & (\A[25]~input_o\ & ((\A[24]~input_o\) # 
-- (\B[24]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[25]~input_o\,
	datab => \A[24]~input_o\,
	datac => \A[25]~input_o\,
	datad => \B[24]~input_o\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\);

-- Location: LCCOMB_X6_Y39_N12
\CarryNetwork|Recur:HighHalf|Recur:M1[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:M1[1]~combout\ = LCELL((\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[3]~combout\ & ((\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\))) # 
-- (!\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[3]~combout\ & (\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\,
	datac => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[3]~combout\,
	datad => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:M1[1]~combout\);

-- Location: LCCOMB_X6_Y39_N26
\CarryNetwork|Recur:HighHalf|Recur:M0[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:M0[1]~combout\ = LCELL((\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[3]~combout\ & (\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\)) # 
-- (!\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[3]~combout\ & ((\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\,
	datac => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\,
	datad => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[3]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:M0[1]~combout\);

-- Location: LCCOMB_X6_Y39_N22
\CarryNetwork|Recur:M1[9]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:M1[9]~combout\ = LCELL((\CarryNetwork|Recur:LowHalf|Recur:M1[7]~combout\ & (\CarryNetwork|Recur:HighHalf|Recur:M1[1]~combout\)) # (!\CarryNetwork|Recur:LowHalf|Recur:M1[7]~combout\ & 
-- ((\CarryNetwork|Recur:HighHalf|Recur:M0[1]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:HighHalf|Recur:M1[1]~combout\,
	datac => \CarryNetwork|Recur:HighHalf|Recur:M0[1]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:M1[7]~combout\,
	combout => \CarryNetwork|Recur:M1[9]~combout\);

-- Location: LCCOMB_X6_Y39_N28
\CarryNetwork|Recur:M0[9]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:M0[9]~combout\ = LCELL((\CarryNetwork|Recur:LowHalf|Recur:M0[7]~combout\ & ((\CarryNetwork|Recur:HighHalf|Recur:M1[1]~combout\))) # (!\CarryNetwork|Recur:LowHalf|Recur:M0[7]~combout\ & 
-- (\CarryNetwork|Recur:HighHalf|Recur:M0[1]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:HighHalf|Recur:M0[1]~combout\,
	datac => \CarryNetwork|Recur:LowHalf|Recur:M0[7]~combout\,
	datad => \CarryNetwork|Recur:HighHalf|Recur:M1[1]~combout\,
	combout => \CarryNetwork|Recur:M0[9]~combout\);

-- Location: LCCOMB_X6_Y39_N16
\S~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~51_combout\ = \A[26]~input_o\ $ (((\Cin~input_o\ & (\CarryNetwork|Recur:M1[9]~combout\)) # (!\Cin~input_o\ & ((\CarryNetwork|Recur:M0[9]~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cin~input_o\,
	datab => \A[26]~input_o\,
	datac => \CarryNetwork|Recur:M1[9]~combout\,
	datad => \CarryNetwork|Recur:M0[9]~combout\,
	combout => \S~51_combout\);

-- Location: LCCOMB_X6_Y39_N10
\S~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~52_combout\ = \B[26]~input_o\ $ (\S~51_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[26]~input_o\,
	datad => \S~51_combout\,
	combout => \S~52_combout\);

-- Location: IOIBUF_X0_Y19_N1
\B[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(27),
	o => \B[27]~input_o\);

-- Location: IOIBUF_X0_Y20_N22
\A[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(27),
	o => \A[27]~input_o\);

-- Location: LCCOMB_X6_Y39_N20
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\ = LCELL((\A[26]~input_o\ & ((\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\) # (\B[26]~input_o\))) # (!\A[26]~input_o\ & 
-- (\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\ & \B[26]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[26]~input_o\,
	datac => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\,
	datad => \B[26]~input_o\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\);

-- Location: LCCOMB_X6_Y39_N6
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\ = LCELL((\B[26]~input_o\ & ((\A[26]~input_o\) # (\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\))) # (!\B[26]~input_o\ & 
-- (\A[26]~input_o\ & \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[26]~input_o\,
	datac => \A[26]~input_o\,
	datad => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\);

-- Location: LCCOMB_X5_Y39_N30
\CarryNetwork|Recur:HighHalf|Recur:M1[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:M1[2]~combout\ = LCELL((\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[3]~combout\ & ((\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\))) # 
-- (!\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[3]~combout\ & (\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\,
	datac => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[3]~combout\,
	datad => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:M1[2]~combout\);

-- Location: LCCOMB_X6_Y39_N0
\CarryNetwork|Recur:HighHalf|Recur:M0[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:M0[2]~combout\ = LCELL((\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[3]~combout\ & (\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\)) # 
-- (!\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[3]~combout\ & ((\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\,
	datab => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\,
	datad => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[3]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:M0[2]~combout\);

-- Location: LCCOMB_X5_Y39_N22
\CarryNetwork|Recur:M0[10]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:M0[10]~combout\ = LCELL((\CarryNetwork|Recur:LowHalf|Recur:M0[7]~combout\ & (\CarryNetwork|Recur:HighHalf|Recur:M1[2]~combout\)) # (!\CarryNetwork|Recur:LowHalf|Recur:M0[7]~combout\ & 
-- ((\CarryNetwork|Recur:HighHalf|Recur:M0[2]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:HighHalf|Recur:M1[2]~combout\,
	datac => \CarryNetwork|Recur:HighHalf|Recur:M0[2]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:M0[7]~combout\,
	combout => \CarryNetwork|Recur:M0[10]~combout\);

-- Location: LCCOMB_X5_Y39_N28
\CarryNetwork|Recur:M1[10]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:M1[10]~combout\ = LCELL((\CarryNetwork|Recur:LowHalf|Recur:M1[7]~combout\ & (\CarryNetwork|Recur:HighHalf|Recur:M1[2]~combout\)) # (!\CarryNetwork|Recur:LowHalf|Recur:M1[7]~combout\ & 
-- ((\CarryNetwork|Recur:HighHalf|Recur:M0[2]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:HighHalf|Recur:M1[2]~combout\,
	datac => \CarryNetwork|Recur:HighHalf|Recur:M0[2]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:M1[7]~combout\,
	combout => \CarryNetwork|Recur:M1[10]~combout\);

-- Location: LCCOMB_X5_Y39_N6
\S~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~53_combout\ = \A[27]~input_o\ $ (((\Cin~input_o\ & ((\CarryNetwork|Recur:M1[10]~combout\))) # (!\Cin~input_o\ & (\CarryNetwork|Recur:M0[10]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cin~input_o\,
	datab => \A[27]~input_o\,
	datac => \CarryNetwork|Recur:M0[10]~combout\,
	datad => \CarryNetwork|Recur:M1[10]~combout\,
	combout => \S~53_combout\);

-- Location: LCCOMB_X5_Y39_N20
\S~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~54_combout\ = \B[27]~input_o\ $ (\S~53_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[27]~input_o\,
	datad => \S~53_combout\,
	combout => \S~54_combout\);

-- Location: IOIBUF_X1_Y43_N15
\B[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(28),
	o => \B[28]~input_o\);

-- Location: IOIBUF_X1_Y43_N29
\A[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(28),
	o => \A[28]~input_o\);

-- Location: LCCOMB_X7_Y39_N26
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\ = LCELL((\B[27]~input_o\ & ((\A[27]~input_o\) # ((\A[26]~input_o\ & \B[26]~input_o\)))) # (!\B[27]~input_o\ & (\A[26]~input_o\ & (\A[27]~input_o\ & 
-- \B[26]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[27]~input_o\,
	datab => \A[26]~input_o\,
	datac => \A[27]~input_o\,
	datad => \B[26]~input_o\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\);

-- Location: LCCOMB_X7_Y39_N28
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\ = LCELL((\B[27]~input_o\ & ((\A[26]~input_o\) # ((\A[27]~input_o\) # (\B[26]~input_o\)))) # (!\B[27]~input_o\ & (\A[27]~input_o\ & ((\A[26]~input_o\) # 
-- (\B[26]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[27]~input_o\,
	datab => \A[26]~input_o\,
	datac => \A[27]~input_o\,
	datad => \B[26]~input_o\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\);

-- Location: LCCOMB_X7_Y39_N24
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[1]~combout\ = LCELL((\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\ & 
-- ((\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\))) # (!\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\ & 
-- (\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\,
	datac => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\,
	datad => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[1]~combout\);

-- Location: LCCOMB_X7_Y39_N18
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[1]~combout\ = LCELL((\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\ & 
-- (\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\)) # (!\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\ & 
-- ((\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\,
	datac => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\,
	datad => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[1]~combout\);

-- Location: LCCOMB_X8_Y39_N22
\CarryNetwork|Recur:HighHalf|Recur:M1[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:M1[3]~combout\ = LCELL((\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[3]~combout\ & ((\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[1]~combout\))) # 
-- (!\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[3]~combout\ & (\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[1]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[1]~combout\,
	datac => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[3]~combout\,
	datad => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[1]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:M1[3]~combout\);

-- Location: LCCOMB_X8_Y39_N16
\CarryNetwork|Recur:HighHalf|Recur:M0[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:M0[3]~combout\ = LCELL((\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[3]~combout\ & (\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[1]~combout\)) # 
-- (!\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[3]~combout\ & ((\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[1]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[1]~combout\,
	datac => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[3]~combout\,
	datad => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[1]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:M0[3]~combout\);

-- Location: LCCOMB_X8_Y39_N14
\CarryNetwork|Recur:M0[11]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:M0[11]~combout\ = LCELL((\CarryNetwork|Recur:LowHalf|Recur:M0[7]~combout\ & (\CarryNetwork|Recur:HighHalf|Recur:M1[3]~combout\)) # (!\CarryNetwork|Recur:LowHalf|Recur:M0[7]~combout\ & 
-- ((\CarryNetwork|Recur:HighHalf|Recur:M0[3]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:HighHalf|Recur:M1[3]~combout\,
	datac => \CarryNetwork|Recur:LowHalf|Recur:M0[7]~combout\,
	datad => \CarryNetwork|Recur:HighHalf|Recur:M0[3]~combout\,
	combout => \CarryNetwork|Recur:M0[11]~combout\);

-- Location: LCCOMB_X8_Y39_N12
\CarryNetwork|Recur:M1[11]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:M1[11]~combout\ = LCELL((\CarryNetwork|Recur:LowHalf|Recur:M1[7]~combout\ & ((\CarryNetwork|Recur:HighHalf|Recur:M1[3]~combout\))) # (!\CarryNetwork|Recur:LowHalf|Recur:M1[7]~combout\ & 
-- (\CarryNetwork|Recur:HighHalf|Recur:M0[3]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CarryNetwork|Recur:HighHalf|Recur:M0[3]~combout\,
	datac => \CarryNetwork|Recur:HighHalf|Recur:M1[3]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:M1[7]~combout\,
	combout => \CarryNetwork|Recur:M1[11]~combout\);

-- Location: LCCOMB_X8_Y39_N10
\S~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~55_combout\ = \A[28]~input_o\ $ (((\Cin~input_o\ & ((\CarryNetwork|Recur:M1[11]~combout\))) # (!\Cin~input_o\ & (\CarryNetwork|Recur:M0[11]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cin~input_o\,
	datab => \A[28]~input_o\,
	datac => \CarryNetwork|Recur:M0[11]~combout\,
	datad => \CarryNetwork|Recur:M1[11]~combout\,
	combout => \S~55_combout\);

-- Location: LCCOMB_X8_Y39_N0
\S~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~56_combout\ = \B[28]~input_o\ $ (\S~55_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[28]~input_o\,
	datad => \S~55_combout\,
	combout => \S~56_combout\);

-- Location: IOIBUF_X0_Y31_N15
\B[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(29),
	o => \B[29]~input_o\);

-- Location: IOIBUF_X1_Y43_N22
\A[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(29),
	o => \A[29]~input_o\);

-- Location: LCCOMB_X8_Y39_N30
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\ = LCELL((\A[28]~input_o\ & ((\B[28]~input_o\) # (\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[1]~combout\))) # (!\A[28]~input_o\ & (\B[28]~input_o\ & 
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[1]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[28]~input_o\,
	datac => \B[28]~input_o\,
	datad => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[1]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\);

-- Location: LCCOMB_X8_Y39_N28
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\ = LCELL((\A[28]~input_o\ & ((\B[28]~input_o\) # (\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[1]~combout\))) # (!\A[28]~input_o\ & (\B[28]~input_o\ & 
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[1]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[28]~input_o\,
	datac => \B[28]~input_o\,
	datad => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[1]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\);

-- Location: LCCOMB_X8_Y39_N4
\CarryNetwork|Recur:HighHalf|Recur:M0[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:M0[4]~combout\ = LCELL((\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[3]~combout\ & (\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\)) # 
-- (!\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[3]~combout\ & ((\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\,
	datac => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[3]~combout\,
	datad => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:M0[4]~combout\);

-- Location: LCCOMB_X8_Y39_N6
\CarryNetwork|Recur:HighHalf|Recur:M1[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:M1[4]~combout\ = LCELL((\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[3]~combout\ & (\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\)) # 
-- (!\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[3]~combout\ & ((\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\,
	datac => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[3]~combout\,
	datad => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:M1[4]~combout\);

-- Location: LCCOMB_X8_Y39_N26
\CarryNetwork|Recur:M0[12]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:M0[12]~combout\ = LCELL((\CarryNetwork|Recur:LowHalf|Recur:M0[7]~combout\ & ((\CarryNetwork|Recur:HighHalf|Recur:M1[4]~combout\))) # (!\CarryNetwork|Recur:LowHalf|Recur:M0[7]~combout\ & 
-- (\CarryNetwork|Recur:HighHalf|Recur:M0[4]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CarryNetwork|Recur:HighHalf|Recur:M0[4]~combout\,
	datac => \CarryNetwork|Recur:LowHalf|Recur:M0[7]~combout\,
	datad => \CarryNetwork|Recur:HighHalf|Recur:M1[4]~combout\,
	combout => \CarryNetwork|Recur:M0[12]~combout\);

-- Location: LCCOMB_X8_Y39_N24
\CarryNetwork|Recur:M1[12]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:M1[12]~combout\ = LCELL((\CarryNetwork|Recur:LowHalf|Recur:M1[7]~combout\ & (\CarryNetwork|Recur:HighHalf|Recur:M1[4]~combout\)) # (!\CarryNetwork|Recur:LowHalf|Recur:M1[7]~combout\ & 
-- ((\CarryNetwork|Recur:HighHalf|Recur:M0[4]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:HighHalf|Recur:M1[4]~combout\,
	datac => \CarryNetwork|Recur:HighHalf|Recur:M0[4]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:M1[7]~combout\,
	combout => \CarryNetwork|Recur:M1[12]~combout\);

-- Location: LCCOMB_X8_Y39_N18
\S~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~57_combout\ = \A[29]~input_o\ $ (((\Cin~input_o\ & ((\CarryNetwork|Recur:M1[12]~combout\))) # (!\Cin~input_o\ & (\CarryNetwork|Recur:M0[12]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[29]~input_o\,
	datab => \Cin~input_o\,
	datac => \CarryNetwork|Recur:M0[12]~combout\,
	datad => \CarryNetwork|Recur:M1[12]~combout\,
	combout => \S~57_combout\);

-- Location: LCCOMB_X8_Y39_N8
\S~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~58_combout\ = \B[29]~input_o\ $ (\S~57_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[29]~input_o\,
	datad => \S~57_combout\,
	combout => \S~58_combout\);

-- Location: IOIBUF_X0_Y19_N8
\B[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(30),
	o => \B[30]~input_o\);

-- Location: IOIBUF_X0_Y28_N15
\A[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(30),
	o => \A[30]~input_o\);

-- Location: LCCOMB_X5_Y39_N12
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\ = LCELL((\A[29]~input_o\ & ((\B[28]~input_o\) # ((\A[28]~input_o\) # (\B[29]~input_o\)))) # (!\A[29]~input_o\ & (\B[29]~input_o\ & ((\B[28]~input_o\) # 
-- (\A[28]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[29]~input_o\,
	datab => \B[28]~input_o\,
	datac => \A[28]~input_o\,
	datad => \B[29]~input_o\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\);

-- Location: LCCOMB_X4_Y39_N4
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\ = LCELL((\A[29]~input_o\ & ((\B[29]~input_o\) # ((\A[28]~input_o\ & \B[28]~input_o\)))) # (!\A[29]~input_o\ & (\A[28]~input_o\ & (\B[28]~input_o\ & 
-- \B[29]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[28]~input_o\,
	datab => \A[29]~input_o\,
	datac => \B[28]~input_o\,
	datad => \B[29]~input_o\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\);

-- Location: LCCOMB_X6_Y39_N14
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M1[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M1[1]~combout\ = LCELL((\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[1]~combout\ & (\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\)) # 
-- (!\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[1]~combout\ & ((\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\,
	datac => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\,
	datad => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[1]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M1[1]~combout\);

-- Location: LCCOMB_X7_Y39_N10
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M0[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M0[1]~combout\ = LCELL((\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[1]~combout\ & (\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\)) # 
-- (!\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[1]~combout\ & ((\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\,
	datac => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\,
	datad => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[1]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M0[1]~combout\);

-- Location: LCCOMB_X6_Y39_N30
\CarryNetwork|Recur:HighHalf|Recur:M1[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:M1[5]~combout\ = LCELL((\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[3]~combout\ & (\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M1[1]~combout\)) # 
-- (!\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[3]~combout\ & ((\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M0[1]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M1[1]~combout\,
	datac => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M0[1]~combout\,
	datad => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[3]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:M1[5]~combout\);

-- Location: LCCOMB_X6_Y39_N8
\CarryNetwork|Recur:HighHalf|Recur:M0[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:M0[5]~combout\ = LCELL((\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[3]~combout\ & (\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M1[1]~combout\)) # 
-- (!\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[3]~combout\ & ((\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M0[1]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M1[1]~combout\,
	datac => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M0[1]~combout\,
	datad => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[3]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:M0[5]~combout\);

-- Location: LCCOMB_X6_Y39_N4
\CarryNetwork|Recur:M0[13]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:M0[13]~combout\ = LCELL((\CarryNetwork|Recur:LowHalf|Recur:M0[7]~combout\ & (\CarryNetwork|Recur:HighHalf|Recur:M1[5]~combout\)) # (!\CarryNetwork|Recur:LowHalf|Recur:M0[7]~combout\ & 
-- ((\CarryNetwork|Recur:HighHalf|Recur:M0[5]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:HighHalf|Recur:M1[5]~combout\,
	datac => \CarryNetwork|Recur:LowHalf|Recur:M0[7]~combout\,
	datad => \CarryNetwork|Recur:HighHalf|Recur:M0[5]~combout\,
	combout => \CarryNetwork|Recur:M0[13]~combout\);

-- Location: LCCOMB_X6_Y39_N18
\CarryNetwork|Recur:M1[13]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:M1[13]~combout\ = LCELL((\CarryNetwork|Recur:LowHalf|Recur:M1[7]~combout\ & ((\CarryNetwork|Recur:HighHalf|Recur:M1[5]~combout\))) # (!\CarryNetwork|Recur:LowHalf|Recur:M1[7]~combout\ & 
-- (\CarryNetwork|Recur:HighHalf|Recur:M0[5]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CarryNetwork|Recur:HighHalf|Recur:M0[5]~combout\,
	datac => \CarryNetwork|Recur:HighHalf|Recur:M1[5]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:M1[7]~combout\,
	combout => \CarryNetwork|Recur:M1[13]~combout\);

-- Location: LCCOMB_X6_Y39_N24
\S~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~59_combout\ = \A[30]~input_o\ $ (((\Cin~input_o\ & ((\CarryNetwork|Recur:M1[13]~combout\))) # (!\Cin~input_o\ & (\CarryNetwork|Recur:M0[13]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cin~input_o\,
	datab => \A[30]~input_o\,
	datac => \CarryNetwork|Recur:M0[13]~combout\,
	datad => \CarryNetwork|Recur:M1[13]~combout\,
	combout => \S~59_combout\);

-- Location: LCCOMB_X6_Y39_N2
\S~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~60_combout\ = \B[30]~input_o\ $ (\S~59_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[30]~input_o\,
	datad => \S~59_combout\,
	combout => \S~60_combout\);

-- Location: IOIBUF_X0_Y29_N22
\B[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(31),
	o => \B[31]~input_o\);

-- Location: IOIBUF_X0_Y34_N8
\A[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(31),
	o => \A[31]~input_o\);

-- Location: LCCOMB_X4_Y39_N12
\S~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~61_combout\ = \B[31]~input_o\ $ (!\A[31]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[31]~input_o\,
	datad => \A[31]~input_o\,
	combout => \S~61_combout\);

-- Location: LCCOMB_X4_Y39_N28
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\ = LCELL((\B[30]~input_o\ & ((\A[30]~input_o\) # (\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\))) # (!\B[30]~input_o\ & 
-- (\A[30]~input_o\ & \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[30]~input_o\,
	datac => \A[30]~input_o\,
	datad => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\);

-- Location: LCCOMB_X4_Y39_N22
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\ = LCELL((\B[30]~input_o\ & ((\A[30]~input_o\) # (\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\))) # (!\B[30]~input_o\ & 
-- (\A[30]~input_o\ & \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[30]~input_o\,
	datac => \A[30]~input_o\,
	datad => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\);

-- Location: LCCOMB_X4_Y39_N8
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M1[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M1[2]~combout\ = LCELL((\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[1]~combout\ & ((\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\))) # 
-- (!\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[1]~combout\ & (\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\,
	datac => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\,
	datad => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[1]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M1[2]~combout\);

-- Location: LCCOMB_X4_Y39_N18
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M0[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M0[2]~combout\ = LCELL((\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[1]~combout\ & ((\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\))) # 
-- (!\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[1]~combout\ & (\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\,
	datac => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\,
	datad => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[1]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M0[2]~combout\);

-- Location: LCCOMB_X4_Y39_N24
\CarryNetwork|Recur:HighHalf|Recur:M1[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:M1[6]~combout\ = LCELL((\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[3]~combout\ & (\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M1[2]~combout\)) # 
-- (!\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[3]~combout\ & ((\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M0[2]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M1[2]~combout\,
	datac => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[3]~combout\,
	datad => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M0[2]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:M1[6]~combout\);

-- Location: LCCOMB_X4_Y39_N26
\CarryNetwork|Recur:HighHalf|Recur:M0[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:M0[6]~combout\ = LCELL((\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[3]~combout\ & (\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M1[2]~combout\)) # 
-- (!\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[3]~combout\ & ((\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M0[2]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M1[2]~combout\,
	datac => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[3]~combout\,
	datad => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M0[2]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:M0[6]~combout\);

-- Location: LCCOMB_X4_Y39_N14
\CarryNetwork|Recur:M1[14]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:M1[14]~combout\ = LCELL((\CarryNetwork|Recur:LowHalf|Recur:M1[7]~combout\ & (\CarryNetwork|Recur:HighHalf|Recur:M1[6]~combout\)) # (!\CarryNetwork|Recur:LowHalf|Recur:M1[7]~combout\ & 
-- ((\CarryNetwork|Recur:HighHalf|Recur:M0[6]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CarryNetwork|Recur:HighHalf|Recur:M1[6]~combout\,
	datac => \CarryNetwork|Recur:HighHalf|Recur:M0[6]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:M1[7]~combout\,
	combout => \CarryNetwork|Recur:M1[14]~combout\);

-- Location: LCCOMB_X4_Y39_N16
\CarryNetwork|Recur:M0[14]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:M0[14]~combout\ = LCELL((\CarryNetwork|Recur:LowHalf|Recur:M0[7]~combout\ & (\CarryNetwork|Recur:HighHalf|Recur:M1[6]~combout\)) # (!\CarryNetwork|Recur:LowHalf|Recur:M0[7]~combout\ & 
-- ((\CarryNetwork|Recur:HighHalf|Recur:M0[6]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CarryNetwork|Recur:HighHalf|Recur:M1[6]~combout\,
	datac => \CarryNetwork|Recur:HighHalf|Recur:M0[6]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:M0[7]~combout\,
	combout => \CarryNetwork|Recur:M0[14]~combout\);

-- Location: LCCOMB_X4_Y39_N2
\S~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~62_combout\ = \S~61_combout\ $ (((\Cin~input_o\ & (!\CarryNetwork|Recur:M1[14]~combout\)) # (!\Cin~input_o\ & ((!\CarryNetwork|Recur:M0[14]~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011010010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S~61_combout\,
	datab => \Cin~input_o\,
	datac => \CarryNetwork|Recur:M1[14]~combout\,
	datad => \CarryNetwork|Recur:M0[14]~combout\,
	combout => \S~62_combout\);

-- Location: LCCOMB_X4_Y39_N20
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\ = LCELL((\B[31]~input_o\ & ((\B[30]~input_o\) # ((\A[30]~input_o\) # (\A[31]~input_o\)))) # (!\B[31]~input_o\ & (\A[31]~input_o\ & ((\B[30]~input_o\) # 
-- (\A[30]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[30]~input_o\,
	datab => \B[31]~input_o\,
	datac => \A[30]~input_o\,
	datad => \A[31]~input_o\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\);

-- Location: LCCOMB_X4_Y39_N30
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\ = LCELL((\B[31]~input_o\ & ((\A[31]~input_o\) # ((\B[30]~input_o\ & \A[30]~input_o\)))) # (!\B[31]~input_o\ & (\B[30]~input_o\ & (\A[30]~input_o\ & 
-- \A[31]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[30]~input_o\,
	datab => \B[31]~input_o\,
	datac => \A[30]~input_o\,
	datad => \A[31]~input_o\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\);

-- Location: LCCOMB_X5_Y39_N2
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[1]~combout\ = LCELL((\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\ & 
-- (\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\)) # (!\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\ & 
-- ((\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\,
	datab => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\,
	datad => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[1]~combout\);

-- Location: LCCOMB_X4_Y39_N10
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[1]~combout\ = LCELL((\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\ & 
-- (\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\)) # (!\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\ & 
-- ((\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\,
	datac => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\,
	datad => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[1]~combout\);

-- Location: LCCOMB_X5_Y39_N26
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M0[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M0[3]~combout\ = LCELL((\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[1]~combout\ & (\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[1]~combout\)) # 
-- (!\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[1]~combout\ & ((\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[1]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[1]~combout\,
	datac => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[1]~combout\,
	datad => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[1]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M0[3]~combout\);

-- Location: LCCOMB_X5_Y39_N16
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M1[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M1[3]~combout\ = LCELL((\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[1]~combout\ & (\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[1]~combout\)) # 
-- (!\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[1]~combout\ & ((\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[1]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[1]~combout\,
	datac => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[1]~combout\,
	datad => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[1]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M1[3]~combout\);

-- Location: LCCOMB_X5_Y39_N4
\CarryNetwork|Recur:HighHalf|Recur:M1[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:M1[7]~combout\ = LCELL((\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[3]~combout\ & ((\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M1[3]~combout\))) # 
-- (!\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[3]~combout\ & (\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M0[3]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M0[3]~combout\,
	datac => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[3]~combout\,
	datad => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M1[3]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:M1[7]~combout\);

-- Location: LCCOMB_X5_Y39_N14
\CarryNetwork|Recur:HighHalf|Recur:M0[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:M0[7]~combout\ = LCELL((\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[3]~combout\ & (\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M1[3]~combout\)) # 
-- (!\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[3]~combout\ & ((\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M0[3]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M1[3]~combout\,
	datac => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M0[3]~combout\,
	datad => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[3]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:M0[7]~combout\);

-- Location: LCCOMB_X5_Y39_N8
\CarryNetwork|Recur:M0[15]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:M0[15]~combout\ = LCELL((\CarryNetwork|Recur:LowHalf|Recur:M0[7]~combout\ & (\CarryNetwork|Recur:HighHalf|Recur:M1[7]~combout\)) # (!\CarryNetwork|Recur:LowHalf|Recur:M0[7]~combout\ & 
-- ((\CarryNetwork|Recur:HighHalf|Recur:M0[7]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CarryNetwork|Recur:HighHalf|Recur:M1[7]~combout\,
	datac => \CarryNetwork|Recur:HighHalf|Recur:M0[7]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:M0[7]~combout\,
	combout => \CarryNetwork|Recur:M0[15]~combout\);

-- Location: LCCOMB_X5_Y39_N18
\CarryNetwork|Recur:M1[15]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:M1[15]~combout\ = LCELL((\CarryNetwork|Recur:LowHalf|Recur:M1[7]~combout\ & (\CarryNetwork|Recur:HighHalf|Recur:M1[7]~combout\)) # (!\CarryNetwork|Recur:LowHalf|Recur:M1[7]~combout\ & 
-- ((\CarryNetwork|Recur:HighHalf|Recur:M0[7]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CarryNetwork|Recur:HighHalf|Recur:M1[7]~combout\,
	datac => \CarryNetwork|Recur:HighHalf|Recur:M0[7]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:M1[7]~combout\,
	combout => \CarryNetwork|Recur:M1[15]~combout\);

-- Location: LCCOMB_X5_Y39_N10
\c~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c~0_combout\ = (\Cin~input_o\ & ((\CarryNetwork|Recur:M1[15]~combout\))) # (!\Cin~input_o\ & (\CarryNetwork|Recur:M0[15]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cin~input_o\,
	datac => \CarryNetwork|Recur:M0[15]~combout\,
	datad => \CarryNetwork|Recur:M1[15]~combout\,
	combout => \c~0_combout\);

-- Location: LCCOMB_X5_Y39_N0
\Ovfl~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Ovfl~0_combout\ = \c~0_combout\ $ (((\Cin~input_o\ & (\CarryNetwork|Recur:M1[14]~combout\)) # (!\Cin~input_o\ & ((\CarryNetwork|Recur:M0[14]~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:M1[14]~combout\,
	datab => \Cin~input_o\,
	datac => \CarryNetwork|Recur:M0[14]~combout\,
	datad => \c~0_combout\,
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


