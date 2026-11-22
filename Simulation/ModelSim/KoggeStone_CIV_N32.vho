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

-- DATE "11/21/2026 12:05:27"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
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
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


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
-- S[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[1]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[2]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[3]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[4]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[5]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[6]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[7]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[8]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[9]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[10]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[11]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[12]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[13]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[14]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[15]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[16]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[17]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[18]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[19]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[20]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[21]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[22]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[23]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[24]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[25]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[26]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[27]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[28]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[29]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[30]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[31]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cout	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ovfl	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_AG15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_AH15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cin	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[8]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[9]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[10]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[11]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[11]	=>  Location: PIN_G7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[12]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[12]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[13]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[13]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[14]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[14]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[15]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[15]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[16]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[16]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[17]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[17]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[18]	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[18]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[19]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[19]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[20]	=>  Location: PIN_D4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[20]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[21]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[21]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[22]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[22]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[23]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[23]	=>  Location: PIN_G6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[24]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[24]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[25]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[25]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[26]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[26]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[27]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[27]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[28]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[28]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[29]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[29]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[30]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[30]	=>  Location: PIN_E5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[31]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[31]	=>  Location: PIN_F5,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \Cin~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \S~14_combout\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \S~15_combout\ : std_logic;
SIGNAL \c[3]~10_combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gpre[1]~0_combout\ : std_logic;
SIGNAL \S~16_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gpre[6]~1_combout\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][2]~6_combout\ : std_logic;
SIGNAL \c[5]~11_combout\ : std_logic;
SIGNAL \S~17_combout\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][3]~7_combout\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Pk[2][4]~8_combout\ : std_logic;
SIGNAL \c[4]~12_combout\ : std_logic;
SIGNAL \S~45_combout\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][4]~8_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][8]~9_combout\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \c[5]~13_combout\ : std_logic;
SIGNAL \S~46_combout\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][5]~10_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][9]~11_combout\ : std_logic;
SIGNAL \c[14]~14_combout\ : std_logic;
SIGNAL \S~47_combout\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][6]~12_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][10]~13_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gpre[6]~2_combout\ : std_logic;
SIGNAL \PrefixNetwork|Pk[2][6]~9_combout\ : std_logic;
SIGNAL \c~15_combout\ : std_logic;
SIGNAL \S~18_combout\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \B[8]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gk~14_combout\ : std_logic;
SIGNAL \PrefixNetwork|Pk[2][7]~23_combout\ : std_logic;
SIGNAL \c~16_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][7]~15_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gpre[7]~4_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gpre[7]~3_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gpre[7]~5_combout\ : std_logic;
SIGNAL \S~19_combout\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \B[9]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gk~16_combout\ : std_logic;
SIGNAL \PrefixNetwork|Pk[2][8]~24_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][8]~17_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][8]~18_combout\ : std_logic;
SIGNAL \c[9]~17_combout\ : std_logic;
SIGNAL \S~20_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~19_combout\ : std_logic;
SIGNAL \PrefixNetwork|Pk[2][9]~10_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][9]~20_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][9]~21_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][9]~22_combout\ : std_logic;
SIGNAL \B[10]~input_o\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \S~21_combout\ : std_logic;
SIGNAL \S~22_combout\ : std_logic;
SIGNAL \B[11]~input_o\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gk~23_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][10]~24_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][10]~25_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][10]~26_combout\ : std_logic;
SIGNAL \c[3]~18_combout\ : std_logic;
SIGNAL \c[19]~19_combout\ : std_logic;
SIGNAL \S~23_combout\ : std_logic;
SIGNAL \B[12]~input_o\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gk~27_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][11]~28_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][11]~29_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][11]~91_combout\ : std_logic;
SIGNAL \PrefixNetwork|Pk[2][11]~11_combout\ : std_logic;
SIGNAL \c[12]~20_combout\ : std_logic;
SIGNAL \S~24_combout\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gk~30_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][12]~31_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][12]~32_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][12]~92_combout\ : std_logic;
SIGNAL \B[13]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Pk[2][12]~12_combout\ : std_logic;
SIGNAL \c[13]~21_combout\ : std_logic;
SIGNAL \S~25_combout\ : std_logic;
SIGNAL \B[14]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gk~33_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][13]~34_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][13]~35_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][13]~36_combout\ : std_logic;
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \c[14]~22_combout\ : std_logic;
SIGNAL \S~26_combout\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \B[15]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gk~37_combout\ : std_logic;
SIGNAL \PrefixNetwork|Pk[2][14]~13_combout\ : std_logic;
SIGNAL \c[23]~23_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][14]~38_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][14]~39_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][14]~93_combout\ : std_logic;
SIGNAL \S~27_combout\ : std_logic;
SIGNAL \B[16]~input_o\ : std_logic;
SIGNAL \A[16]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gk~40_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~44_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][15]~41_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][15]~42_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][15]~43_combout\ : std_logic;
SIGNAL \c[16]~24_combout\ : std_logic;
SIGNAL \S~28_combout\ : std_logic;
SIGNAL \B[17]~input_o\ : std_logic;
SIGNAL \A[17]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gk~45_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][16]~46_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][16]~47_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][16]~48_combout\ : std_logic;
SIGNAL \S~29_combout\ : std_logic;
SIGNAL \S~30_combout\ : std_logic;
SIGNAL \S~31_combout\ : std_logic;
SIGNAL \S~32_combout\ : std_logic;
SIGNAL \B[18]~input_o\ : std_logic;
SIGNAL \A[18]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gk~49_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][17]~50_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][17]~51_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][17]~52_combout\ : std_logic;
SIGNAL \S~33_combout\ : std_logic;
SIGNAL \S~34_combout\ : std_logic;
SIGNAL \S~48_combout\ : std_logic;
SIGNAL \B[19]~input_o\ : std_logic;
SIGNAL \A[19]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gk~53_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][18]~54_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][18]~55_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][18]~56_combout\ : std_logic;
SIGNAL \c[19]~25_combout\ : std_logic;
SIGNAL \c[19]~26_combout\ : std_logic;
SIGNAL \S~49_combout\ : std_logic;
SIGNAL \B[20]~input_o\ : std_logic;
SIGNAL \A[20]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Pk[2][19]~14_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][19]~57_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][19]~58_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][19]~59_combout\ : std_logic;
SIGNAL \c[20]~27_combout\ : std_logic;
SIGNAL \c[20]~28_combout\ : std_logic;
SIGNAL \S~35_combout\ : std_logic;
SIGNAL \B[21]~input_o\ : std_logic;
SIGNAL \A[21]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][20]~60_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~61_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][20]~62_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][20]~63_combout\ : std_logic;
SIGNAL \c[25]~29_combout\ : std_logic;
SIGNAL \c[21]~30_combout\ : std_logic;
SIGNAL \S~36_combout\ : std_logic;
SIGNAL \B[22]~input_o\ : std_logic;
SIGNAL \A[22]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][21]~64_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~65_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~66_combout\ : std_logic;
SIGNAL \PrefixNetwork|Pk[2][21]~15_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][21]~67_combout\ : std_logic;
SIGNAL \c[26]~31_combout\ : std_logic;
SIGNAL \c[22]~32_combout\ : std_logic;
SIGNAL \S~37_combout\ : std_logic;
SIGNAL \B[23]~input_o\ : std_logic;
SIGNAL \A[23]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gk~68_combout\ : std_logic;
SIGNAL \c[27]~33_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][22]~70_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][22]~69_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][22]~71_combout\ : std_logic;
SIGNAL \c[23]~34_combout\ : std_logic;
SIGNAL \S~38_combout\ : std_logic;
SIGNAL \B[24]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Pk[2][23]~16_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~73_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][23]~72_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][23]~74_combout\ : std_logic;
SIGNAL \A[24]~input_o\ : std_logic;
SIGNAL \c[28]~35_combout\ : std_logic;
SIGNAL \c[24]~36_combout\ : std_logic;
SIGNAL \S~39_combout\ : std_logic;
SIGNAL \B[25]~input_o\ : std_logic;
SIGNAL \A[25]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Pk[2][24]~17_combout\ : std_logic;
SIGNAL \c[25]~77_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][24]~76_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~75_combout\ : std_logic;
SIGNAL \c[25]~37_combout\ : std_logic;
SIGNAL \c[25]~38_combout\ : std_logic;
SIGNAL \c[25]~39_combout\ : std_logic;
SIGNAL \S~40_combout\ : std_logic;
SIGNAL \B[26]~input_o\ : std_logic;
SIGNAL \A[26]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gk~78_combout\ : std_logic;
SIGNAL \PrefixNetwork|Pk[2][25]~18_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][25]~77_combout\ : std_logic;
SIGNAL \c[26]~40_combout\ : std_logic;
SIGNAL \c[26]~41_combout\ : std_logic;
SIGNAL \c[26]~42_combout\ : std_logic;
SIGNAL \c[26]~43_combout\ : std_logic;
SIGNAL \c[26]~44_combout\ : std_logic;
SIGNAL \S~41_combout\ : std_logic;
SIGNAL \A[27]~input_o\ : std_logic;
SIGNAL \B[27]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Pk[2][26]~19_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][26]~80_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~79_combout\ : std_logic;
SIGNAL \c[27]~45_combout\ : std_logic;
SIGNAL \c[27]~46_combout\ : std_logic;
SIGNAL \c[27]~78_combout\ : std_logic;
SIGNAL \c[27]~47_combout\ : std_logic;
SIGNAL \c[27]~48_combout\ : std_logic;
SIGNAL \S~42_combout\ : std_logic;
SIGNAL \B[28]~input_o\ : std_logic;
SIGNAL \A[28]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gk~82_combout\ : std_logic;
SIGNAL \c[28]~49_combout\ : std_logic;
SIGNAL \PrefixNetwork|Pk[2][27]~20_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][27]~81_combout\ : std_logic;
SIGNAL \c[28]~50_combout\ : std_logic;
SIGNAL \c[28]~51_combout\ : std_logic;
SIGNAL \c[28]~52_combout\ : std_logic;
SIGNAL \c[28]~53_combout\ : std_logic;
SIGNAL \S~50_combout\ : std_logic;
SIGNAL \B[29]~input_o\ : std_logic;
SIGNAL \A[29]~input_o\ : std_logic;
SIGNAL \c[29]~56_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][28]~83_combout\ : std_logic;
SIGNAL \c[29]~54_combout\ : std_logic;
SIGNAL \c[29]~79_combout\ : std_logic;
SIGNAL \c[29]~55_combout\ : std_logic;
SIGNAL \c[29]~57_combout\ : std_logic;
SIGNAL \c[29]~58_combout\ : std_logic;
SIGNAL \c[29]~59_combout\ : std_logic;
SIGNAL \c[29]~60_combout\ : std_logic;
SIGNAL \S~51_combout\ : std_logic;
SIGNAL \B[30]~input_o\ : std_logic;
SIGNAL \A[30]~input_o\ : std_logic;
SIGNAL \c[30]~61_combout\ : std_logic;
SIGNAL \c[30]~62_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~85_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][29]~84_combout\ : std_logic;
SIGNAL \c[30]~65_combout\ : std_logic;
SIGNAL \c[30]~66_combout\ : std_logic;
SIGNAL \c[26]~63_combout\ : std_logic;
SIGNAL \c[30]~64_combout\ : std_logic;
SIGNAL \S~43_combout\ : std_logic;
SIGNAL \A[31]~input_o\ : std_logic;
SIGNAL \B[31]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gk~86_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~88_combout\ : std_logic;
SIGNAL \PrefixNetwork|Pk[4][30]~21_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][30]~87_combout\ : std_logic;
SIGNAL \c[31]~67_combout\ : std_logic;
SIGNAL \c[31]~68_combout\ : std_logic;
SIGNAL \c[31]~69_combout\ : std_logic;
SIGNAL \c[31]~70_combout\ : std_logic;
SIGNAL \S~44_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~89_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~90_combout\ : std_logic;
SIGNAL \c~80_combout\ : std_logic;
SIGNAL \c[30]~72_combout\ : std_logic;
SIGNAL \c~73_combout\ : std_logic;
SIGNAL \c~74_combout\ : std_logic;
SIGNAL \c~75_combout\ : std_logic;
SIGNAL \PrefixNetwork|Pk[4][31]~22_combout\ : std_logic;
SIGNAL \c~71_combout\ : std_logic;
SIGNAL \c~76_combout\ : std_logic;
SIGNAL \Ovfl~0_combout\ : std_logic;
SIGNAL p : std_logic_vector(31 DOWNTO 0);
SIGNAL c : std_logic_vector(32 DOWNTO 0);

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

-- Location: IOOBUF_X69_Y73_N23
\S[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~14_combout\,
	devoe => ww_devoe,
	o => \S[0]~output_o\);

-- Location: IOOBUF_X67_Y73_N9
\S[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~15_combout\,
	devoe => ww_devoe,
	o => \S[1]~output_o\);

-- Location: IOOBUF_X65_Y73_N16
\S[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~16_combout\,
	devoe => ww_devoe,
	o => \S[2]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\S[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~17_combout\,
	devoe => ww_devoe,
	o => \S[3]~output_o\);

-- Location: IOOBUF_X67_Y73_N16
\S[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~45_combout\,
	devoe => ww_devoe,
	o => \S[4]~output_o\);

-- Location: IOOBUF_X3_Y73_N9
\S[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~46_combout\,
	devoe => ww_devoe,
	o => \S[5]~output_o\);

-- Location: IOOBUF_X62_Y73_N16
\S[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~47_combout\,
	devoe => ww_devoe,
	o => \S[6]~output_o\);

-- Location: IOOBUF_X65_Y73_N23
\S[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~18_combout\,
	devoe => ww_devoe,
	o => \S[7]~output_o\);

-- Location: IOOBUF_X5_Y73_N2
\S[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~19_combout\,
	devoe => ww_devoe,
	o => \S[8]~output_o\);

-- Location: IOOBUF_X3_Y73_N23
\S[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~20_combout\,
	devoe => ww_devoe,
	o => \S[9]~output_o\);

-- Location: IOOBUF_X58_Y73_N16
\S[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~22_combout\,
	devoe => ww_devoe,
	o => \S[10]~output_o\);

-- Location: IOOBUF_X3_Y73_N2
\S[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~23_combout\,
	devoe => ww_devoe,
	o => \S[11]~output_o\);

-- Location: IOOBUF_X1_Y73_N9
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

-- Location: IOOBUF_X60_Y73_N16
\S[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~25_combout\,
	devoe => ww_devoe,
	o => \S[13]~output_o\);

-- Location: IOOBUF_X62_Y73_N23
\S[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~26_combout\,
	devoe => ww_devoe,
	o => \S[14]~output_o\);

-- Location: IOOBUF_X31_Y73_N9
\S[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~27_combout\,
	devoe => ww_devoe,
	o => \S[15]~output_o\);

-- Location: IOOBUF_X27_Y73_N16
\S[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~28_combout\,
	devoe => ww_devoe,
	o => \S[16]~output_o\);

-- Location: IOOBUF_X31_Y73_N2
\S[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~32_combout\,
	devoe => ww_devoe,
	o => \S[17]~output_o\);

-- Location: IOOBUF_X58_Y73_N23
\S[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~48_combout\,
	devoe => ww_devoe,
	o => \S[18]~output_o\);

-- Location: IOOBUF_X27_Y73_N23
\S[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~49_combout\,
	devoe => ww_devoe,
	o => \S[19]~output_o\);

-- Location: IOOBUF_X25_Y73_N23
\S[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~35_combout\,
	devoe => ww_devoe,
	o => \S[20]~output_o\);

-- Location: IOOBUF_X60_Y73_N23
\S[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~36_combout\,
	devoe => ww_devoe,
	o => \S[21]~output_o\);

-- Location: IOOBUF_X20_Y73_N2
\S[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~37_combout\,
	devoe => ww_devoe,
	o => \S[22]~output_o\);

-- Location: IOOBUF_X23_Y73_N16
\S[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~38_combout\,
	devoe => ww_devoe,
	o => \S[23]~output_o\);

-- Location: IOOBUF_X29_Y73_N2
\S[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~39_combout\,
	devoe => ww_devoe,
	o => \S[24]~output_o\);

-- Location: IOOBUF_X29_Y73_N9
\S[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~40_combout\,
	devoe => ww_devoe,
	o => \S[25]~output_o\);

-- Location: IOOBUF_X33_Y73_N2
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

-- Location: IOOBUF_X49_Y73_N16
\S[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~42_combout\,
	devoe => ww_devoe,
	o => \S[27]~output_o\);

-- Location: IOOBUF_X25_Y73_N16
\S[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~50_combout\,
	devoe => ww_devoe,
	o => \S[28]~output_o\);

-- Location: IOOBUF_X35_Y73_N16
\S[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~51_combout\,
	devoe => ww_devoe,
	o => \S[29]~output_o\);

-- Location: IOOBUF_X20_Y73_N16
\S[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~43_combout\,
	devoe => ww_devoe,
	o => \S[30]~output_o\);

-- Location: IOOBUF_X23_Y73_N9
\S[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~44_combout\,
	devoe => ww_devoe,
	o => \S[31]~output_o\);

-- Location: IOOBUF_X20_Y73_N9
\Cout~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \c~76_combout\,
	devoe => ww_devoe,
	o => \Cout~output_o\);

-- Location: IOOBUF_X23_Y73_N2
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

-- Location: IOIBUF_X58_Y0_N1
\B[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X67_Y73_N1
\Cin~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cin,
	o => \Cin~input_o\);

-- Location: IOIBUF_X58_Y0_N8
\A[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: LCCOMB_X39_Y71_N24
\S~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~14_combout\ = \B[0]~input_o\ $ (\Cin~input_o\ $ (\A[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \Cin~input_o\,
	datac => \A[0]~input_o\,
	combout => \S~14_combout\);

-- Location: IOIBUF_X65_Y73_N8
\B[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: IOIBUF_X40_Y73_N8
\A[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: LCCOMB_X39_Y71_N30
\p[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(1) = \B[1]~input_o\ $ (\A[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[1]~input_o\,
	datad => \A[1]~input_o\,
	combout => p(1));

-- Location: LCCOMB_X39_Y71_N8
\S~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~15_combout\ = p(1) $ (((\B[0]~input_o\ & ((\A[0]~input_o\) # (\Cin~input_o\))) # (!\B[0]~input_o\ & (\A[0]~input_o\ & \Cin~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[0]~input_o\,
	datac => p(1),
	datad => \Cin~input_o\,
	combout => \S~15_combout\);

-- Location: LCCOMB_X39_Y71_N18
\c[3]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[3]~10_combout\ = (\Cin~input_o\ & (\A[0]~input_o\ $ (\B[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Cin~input_o\,
	datac => \A[0]~input_o\,
	datad => \B[0]~input_o\,
	combout => \c[3]~10_combout\);

-- Location: IOIBUF_X40_Y73_N1
\A[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: IOIBUF_X42_Y73_N1
\B[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: LCCOMB_X39_Y71_N26
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

-- Location: LCCOMB_X39_Y71_N4
\PrefixNetwork|Gpre[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gpre[1]~0_combout\ = (\B[1]~input_o\ & ((\A[1]~input_o\) # ((\A[0]~input_o\ & \B[0]~input_o\)))) # (!\B[1]~input_o\ & (\A[1]~input_o\ & (\A[0]~input_o\ & \B[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[1]~input_o\,
	datac => \A[0]~input_o\,
	datad => \B[0]~input_o\,
	combout => \PrefixNetwork|Gpre[1]~0_combout\);

-- Location: LCCOMB_X39_Y71_N28
\S~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~16_combout\ = p(2) $ (((\PrefixNetwork|Gpre[1]~0_combout\) # ((\c[3]~10_combout\ & p(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c[3]~10_combout\,
	datab => p(2),
	datac => p(1),
	datad => \PrefixNetwork|Gpre[1]~0_combout\,
	combout => \S~16_combout\);

-- Location: LCCOMB_X39_Y71_N12
\PrefixNetwork|Gpre[6]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gpre[6]~1_combout\ = (\B[2]~input_o\ & (!\A[2]~input_o\ & (\B[1]~input_o\ $ (\A[1]~input_o\)))) # (!\B[2]~input_o\ & (\A[2]~input_o\ & (\B[1]~input_o\ $ (\A[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \A[2]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[1]~input_o\,
	combout => \PrefixNetwork|Gpre[6]~1_combout\);

-- Location: IOIBUF_X42_Y73_N8
\B[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: IOIBUF_X45_Y73_N8
\A[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: LCCOMB_X38_Y71_N24
\p[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(3) = \B[3]~input_o\ $ (\A[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[3]~input_o\,
	datad => \A[3]~input_o\,
	combout => p(3));

-- Location: LCCOMB_X39_Y71_N22
\PrefixNetwork|Gk[1][2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][2]~6_combout\ = (\B[2]~input_o\ & ((\A[2]~input_o\) # ((\B[1]~input_o\ & \A[1]~input_o\)))) # (!\B[2]~input_o\ & (\A[2]~input_o\ & (\B[1]~input_o\ & \A[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \A[2]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[1]~input_o\,
	combout => \PrefixNetwork|Gk[1][2]~6_combout\);

-- Location: LCCOMB_X39_Y71_N6
\c[5]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[5]~11_combout\ = (\Cin~input_o\ & ((\A[0]~input_o\) # (\B[0]~input_o\))) # (!\Cin~input_o\ & (\A[0]~input_o\ & \B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Cin~input_o\,
	datac => \A[0]~input_o\,
	datad => \B[0]~input_o\,
	combout => \c[5]~11_combout\);

-- Location: LCCOMB_X39_Y71_N0
\S~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~17_combout\ = p(3) $ (((\PrefixNetwork|Gk[1][2]~6_combout\) # ((\PrefixNetwork|Gpre[6]~1_combout\ & \c[5]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gpre[6]~1_combout\,
	datab => p(3),
	datac => \PrefixNetwork|Gk[1][2]~6_combout\,
	datad => \c[5]~11_combout\,
	combout => \S~17_combout\);

-- Location: IOIBUF_X58_Y73_N1
\A[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: LCCOMB_X41_Y71_N8
\PrefixNetwork|Gk[1][3]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][3]~7_combout\ = (\A[3]~input_o\ & ((\B[3]~input_o\) # ((\B[2]~input_o\ & \A[2]~input_o\)))) # (!\A[3]~input_o\ & (\B[2]~input_o\ & (\A[2]~input_o\ & \B[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \B[2]~input_o\,
	datac => \A[2]~input_o\,
	datad => \B[3]~input_o\,
	combout => \PrefixNetwork|Gk[1][3]~7_combout\);

-- Location: IOIBUF_X38_Y73_N8
\B[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: LCCOMB_X39_Y71_N10
\PrefixNetwork|Pk[2][4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[2][4]~8_combout\ = (\B[2]~input_o\ & (!\A[2]~input_o\ & (\A[3]~input_o\ $ (\B[3]~input_o\)))) # (!\B[2]~input_o\ & (\A[2]~input_o\ & (\A[3]~input_o\ $ (\B[3]~input_o\))))

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
	combout => \PrefixNetwork|Pk[2][4]~8_combout\);

-- Location: LCCOMB_X39_Y71_N16
\c[4]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[4]~12_combout\ = (\PrefixNetwork|Pk[2][4]~8_combout\ & ((\PrefixNetwork|Gpre[1]~0_combout\) # ((p(1) & \c[3]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Pk[2][4]~8_combout\,
	datab => p(1),
	datac => \PrefixNetwork|Gpre[1]~0_combout\,
	datad => \c[3]~10_combout\,
	combout => \c[4]~12_combout\);

-- Location: LCCOMB_X39_Y71_N2
\S~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~45_combout\ = \A[4]~input_o\ $ (\B[4]~input_o\ $ (((\PrefixNetwork|Gk[1][3]~7_combout\) # (\c[4]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datab => \PrefixNetwork|Gk[1][3]~7_combout\,
	datac => \B[4]~input_o\,
	datad => \c[4]~12_combout\,
	combout => \S~45_combout\);

-- Location: IOIBUF_X27_Y73_N8
\B[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: LCCOMB_X35_Y71_N14
\PrefixNetwork|Gk[1][4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][4]~8_combout\ = (\B[4]~input_o\ & ((\A[4]~input_o\) # ((\B[3]~input_o\ & \A[3]~input_o\)))) # (!\B[4]~input_o\ & (\B[3]~input_o\ & (\A[4]~input_o\ & \A[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \B[4]~input_o\,
	datac => \A[4]~input_o\,
	datad => \A[3]~input_o\,
	combout => \PrefixNetwork|Gk[1][4]~8_combout\);

-- Location: LCCOMB_X35_Y71_N20
\p[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(4) = \A[4]~input_o\ $ (\B[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[4]~input_o\,
	datad => \B[4]~input_o\,
	combout => p(4));

-- Location: LCCOMB_X36_Y71_N8
\PrefixNetwork|Gk[3][8]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][8]~9_combout\ = (!\PrefixNetwork|Gk[1][4]~8_combout\ & (((!p(3)) # (!\PrefixNetwork|Gk[1][2]~6_combout\)) # (!p(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk[1][4]~8_combout\,
	datab => p(4),
	datac => \PrefixNetwork|Gk[1][2]~6_combout\,
	datad => p(3),
	combout => \PrefixNetwork|Gk[3][8]~9_combout\);

-- Location: IOIBUF_X35_Y73_N22
\A[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: LCCOMB_X39_Y71_N14
\c[5]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[5]~13_combout\ = (p(1) & (p(4) & (\PrefixNetwork|Pk[2][4]~8_combout\ & \c[5]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(1),
	datab => p(4),
	datac => \PrefixNetwork|Pk[2][4]~8_combout\,
	datad => \c[5]~11_combout\,
	combout => \c[5]~13_combout\);

-- Location: LCCOMB_X31_Y71_N20
\S~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~46_combout\ = \B[5]~input_o\ $ (\A[5]~input_o\ $ (((\c[5]~13_combout\) # (!\PrefixNetwork|Gk[3][8]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \PrefixNetwork|Gk[3][8]~9_combout\,
	datac => \A[5]~input_o\,
	datad => \c[5]~13_combout\,
	combout => \S~46_combout\);

-- Location: IOIBUF_X38_Y73_N15
\A[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: IOIBUF_X38_Y73_N1
\B[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: LCCOMB_X31_Y71_N12
\p[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(5) = \A[5]~input_o\ $ (\B[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[5]~input_o\,
	datad => \B[5]~input_o\,
	combout => p(5));

-- Location: LCCOMB_X35_Y71_N24
\PrefixNetwork|Gk[1][5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][5]~10_combout\ = (\B[5]~input_o\ & ((\A[5]~input_o\) # ((\A[4]~input_o\ & \B[4]~input_o\)))) # (!\B[5]~input_o\ & (\A[4]~input_o\ & (\A[5]~input_o\ & \B[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datab => \B[5]~input_o\,
	datac => \A[5]~input_o\,
	datad => \B[4]~input_o\,
	combout => \PrefixNetwork|Gk[1][5]~10_combout\);

-- Location: LCCOMB_X35_Y71_N18
\PrefixNetwork|Gk[3][9]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][9]~11_combout\ = (!\PrefixNetwork|Gk[1][5]~10_combout\ & (((!\PrefixNetwork|Gk[1][3]~7_combout\) # (!p(4))) # (!p(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(5),
	datab => p(4),
	datac => \PrefixNetwork|Gk[1][3]~7_combout\,
	datad => \PrefixNetwork|Gk[1][5]~10_combout\,
	combout => \PrefixNetwork|Gk[3][9]~11_combout\);

-- Location: LCCOMB_X34_Y71_N0
\c[14]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[14]~14_combout\ = ((p(4) & (p(5) & \c[4]~12_combout\))) # (!\PrefixNetwork|Gk[3][9]~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(4),
	datab => p(5),
	datac => \c[4]~12_combout\,
	datad => \PrefixNetwork|Gk[3][9]~11_combout\,
	combout => \c[14]~14_combout\);

-- Location: LCCOMB_X34_Y71_N28
\S~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~47_combout\ = \A[6]~input_o\ $ (\B[6]~input_o\ $ (\c[14]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datac => \B[6]~input_o\,
	datad => \c[14]~14_combout\,
	combout => \S~47_combout\);

-- Location: IOIBUF_X38_Y73_N22
\B[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: IOIBUF_X45_Y73_N1
\A[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: LCCOMB_X35_Y71_N28
\PrefixNetwork|Gk[1][6]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][6]~12_combout\ = (\B[6]~input_o\ & ((\A[6]~input_o\) # ((\A[5]~input_o\ & \B[5]~input_o\)))) # (!\B[6]~input_o\ & (\A[5]~input_o\ & (\B[5]~input_o\ & \A[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~input_o\,
	datab => \B[5]~input_o\,
	datac => \B[6]~input_o\,
	datad => \A[6]~input_o\,
	combout => \PrefixNetwork|Gk[1][6]~12_combout\);

-- Location: LCCOMB_X38_Y71_N6
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

-- Location: LCCOMB_X35_Y71_N10
\PrefixNetwork|Gk[3][10]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][10]~13_combout\ = (!\PrefixNetwork|Gk[1][6]~12_combout\ & (((!p(6)) # (!\PrefixNetwork|Gk[1][4]~8_combout\)) # (!p(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(5),
	datab => \PrefixNetwork|Gk[1][6]~12_combout\,
	datac => \PrefixNetwork|Gk[1][4]~8_combout\,
	datad => p(6),
	combout => \PrefixNetwork|Gk[3][10]~13_combout\);

-- Location: LCCOMB_X38_Y71_N16
\PrefixNetwork|Gpre[6]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gpre[6]~2_combout\ = (\PrefixNetwork|Gk[1][2]~6_combout\) # ((\A[0]~input_o\ & (\PrefixNetwork|Gpre[6]~1_combout\ & \B[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \PrefixNetwork|Gpre[6]~1_combout\,
	datac => \B[0]~input_o\,
	datad => \PrefixNetwork|Gk[1][2]~6_combout\,
	combout => \PrefixNetwork|Gpre[6]~2_combout\);

-- Location: LCCOMB_X38_Y71_N4
\PrefixNetwork|Pk[2][6]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[2][6]~9_combout\ = (p(6) & (p(3) & (p(5) & p(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(6),
	datab => p(3),
	datac => p(5),
	datad => p(4),
	combout => \PrefixNetwork|Pk[2][6]~9_combout\);

-- Location: LCCOMB_X38_Y71_N2
\c~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \c~15_combout\ = (p(1) & (p(2) & (\PrefixNetwork|Pk[2][6]~9_combout\ & \c[3]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(1),
	datab => p(2),
	datac => \PrefixNetwork|Pk[2][6]~9_combout\,
	datad => \c[3]~10_combout\,
	combout => \c~15_combout\);

-- Location: LCCOMB_X38_Y71_N18
\c[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- c(7) = ((\c~15_combout\) # ((\PrefixNetwork|Gpre[6]~2_combout\ & \PrefixNetwork|Pk[2][6]~9_combout\))) # (!\PrefixNetwork|Gk[3][10]~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk[3][10]~13_combout\,
	datab => \PrefixNetwork|Gpre[6]~2_combout\,
	datac => \PrefixNetwork|Pk[2][6]~9_combout\,
	datad => \c~15_combout\,
	combout => c(7));

-- Location: LCCOMB_X38_Y71_N12
\S~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~18_combout\ = \B[7]~input_o\ $ (\A[7]~input_o\ $ (c(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[7]~input_o\,
	datac => \A[7]~input_o\,
	datad => c(7),
	combout => \S~18_combout\);

-- Location: IOIBUF_X49_Y73_N22
\A[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: IOIBUF_X47_Y73_N1
\B[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

-- Location: LCCOMB_X35_Y71_N12
\PrefixNetwork|Gk~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~14_combout\ = (\A[7]~input_o\ & (!\B[7]~input_o\ & (\B[6]~input_o\ $ (\A[6]~input_o\)))) # (!\A[7]~input_o\ & (\B[7]~input_o\ & (\B[6]~input_o\ $ (\A[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datab => \B[6]~input_o\,
	datac => \B[7]~input_o\,
	datad => \A[6]~input_o\,
	combout => \PrefixNetwork|Gk~14_combout\);

-- Location: LCCOMB_X30_Y71_N12
\PrefixNetwork|Pk[2][7]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[2][7]~23_combout\ = (p(5) & (\PrefixNetwork|Gk~14_combout\ & (\B[4]~input_o\ $ (\A[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => p(5),
	datac => \A[4]~input_o\,
	datad => \PrefixNetwork|Gk~14_combout\,
	combout => \PrefixNetwork|Pk[2][7]~23_combout\);

-- Location: LCCOMB_X30_Y71_N8
\c~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \c~16_combout\ = (\PrefixNetwork|Pk[2][7]~23_combout\ & (\PrefixNetwork|Pk[2][4]~8_combout\ & (p(1) & \c[3]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Pk[2][7]~23_combout\,
	datab => \PrefixNetwork|Pk[2][4]~8_combout\,
	datac => p(1),
	datad => \c[3]~10_combout\,
	combout => \c~16_combout\);

-- Location: LCCOMB_X38_Y71_N22
\PrefixNetwork|Gk[1][7]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][7]~15_combout\ = (\B[7]~input_o\ & ((\A[7]~input_o\) # ((\B[6]~input_o\ & \A[6]~input_o\)))) # (!\B[7]~input_o\ & (\B[6]~input_o\ & (\A[7]~input_o\ & \A[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[7]~input_o\,
	datab => \B[6]~input_o\,
	datac => \A[7]~input_o\,
	datad => \A[6]~input_o\,
	combout => \PrefixNetwork|Gk[1][7]~15_combout\);

-- Location: LCCOMB_X35_Y71_N22
\PrefixNetwork|Gpre[7]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gpre[7]~4_combout\ = (!\PrefixNetwork|Gk[1][7]~15_combout\ & ((!\PrefixNetwork|Gk~14_combout\) # (!\PrefixNetwork|Gk[1][5]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PrefixNetwork|Gk[1][5]~10_combout\,
	datac => \PrefixNetwork|Gk[1][7]~15_combout\,
	datad => \PrefixNetwork|Gk~14_combout\,
	combout => \PrefixNetwork|Gpre[7]~4_combout\);

-- Location: LCCOMB_X30_Y71_N24
\PrefixNetwork|Gpre[7]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gpre[7]~3_combout\ = (\PrefixNetwork|Gk[1][3]~7_combout\) # ((\PrefixNetwork|Pk[2][4]~8_combout\ & \PrefixNetwork|Gpre[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Pk[2][4]~8_combout\,
	datac => \PrefixNetwork|Gk[1][3]~7_combout\,
	datad => \PrefixNetwork|Gpre[1]~0_combout\,
	combout => \PrefixNetwork|Gpre[7]~3_combout\);

-- Location: LCCOMB_X30_Y71_N18
\PrefixNetwork|Gpre[7]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gpre[7]~5_combout\ = ((\PrefixNetwork|Pk[2][7]~23_combout\ & \PrefixNetwork|Gpre[7]~3_combout\)) # (!\PrefixNetwork|Gpre[7]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Pk[2][7]~23_combout\,
	datac => \PrefixNetwork|Gpre[7]~4_combout\,
	datad => \PrefixNetwork|Gpre[7]~3_combout\,
	combout => \PrefixNetwork|Gpre[7]~5_combout\);

-- Location: LCCOMB_X30_Y71_N26
\S~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~19_combout\ = \A[8]~input_o\ $ (\B[8]~input_o\ $ (((\c~16_combout\) # (\PrefixNetwork|Gpre[7]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[8]~input_o\,
	datab => \B[8]~input_o\,
	datac => \c~16_combout\,
	datad => \PrefixNetwork|Gpre[7]~5_combout\,
	combout => \S~19_combout\);

-- Location: IOIBUF_X60_Y73_N8
\A[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

-- Location: IOIBUF_X58_Y73_N8
\B[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(9),
	o => \B[9]~input_o\);

-- Location: LCCOMB_X36_Y71_N26
\PrefixNetwork|Gk~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~16_combout\ = (\A[7]~input_o\ & (!\B[7]~input_o\ & (\A[8]~input_o\ $ (\B[8]~input_o\)))) # (!\A[7]~input_o\ & (\B[7]~input_o\ & (\A[8]~input_o\ $ (\B[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datab => \B[7]~input_o\,
	datac => \A[8]~input_o\,
	datad => \B[8]~input_o\,
	combout => \PrefixNetwork|Gk~16_combout\);

-- Location: LCCOMB_X36_Y71_N10
\PrefixNetwork|Pk[2][8]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[2][8]~24_combout\ = (p(6) & (\PrefixNetwork|Gk~16_combout\ & (\A[5]~input_o\ $ (\B[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(6),
	datab => \A[5]~input_o\,
	datac => \PrefixNetwork|Gk~16_combout\,
	datad => \B[5]~input_o\,
	combout => \PrefixNetwork|Pk[2][8]~24_combout\);

-- Location: LCCOMB_X35_Y71_N16
\PrefixNetwork|Gk[1][8]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][8]~17_combout\ = (\B[8]~input_o\ & ((\A[8]~input_o\) # ((\B[7]~input_o\ & \A[7]~input_o\)))) # (!\B[8]~input_o\ & (\B[7]~input_o\ & (\A[8]~input_o\ & \A[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[8]~input_o\,
	datab => \B[7]~input_o\,
	datac => \A[8]~input_o\,
	datad => \A[7]~input_o\,
	combout => \PrefixNetwork|Gk[1][8]~17_combout\);

-- Location: LCCOMB_X36_Y71_N0
\PrefixNetwork|Gk[3][8]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][8]~18_combout\ = (!\PrefixNetwork|Gk[1][8]~17_combout\ & ((!\PrefixNetwork|Gk[1][6]~12_combout\) # (!\PrefixNetwork|Gk~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk[1][8]~17_combout\,
	datac => \PrefixNetwork|Gk~16_combout\,
	datad => \PrefixNetwork|Gk[1][6]~12_combout\,
	combout => \PrefixNetwork|Gk[3][8]~18_combout\);

-- Location: LCCOMB_X31_Y71_N22
\c[9]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[9]~17_combout\ = ((\PrefixNetwork|Pk[2][8]~24_combout\ & ((\c[5]~13_combout\) # (!\PrefixNetwork|Gk[3][8]~9_combout\)))) # (!\PrefixNetwork|Gk[3][8]~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Pk[2][8]~24_combout\,
	datab => \PrefixNetwork|Gk[3][8]~18_combout\,
	datac => \PrefixNetwork|Gk[3][8]~9_combout\,
	datad => \c[5]~13_combout\,
	combout => \c[9]~17_combout\);

-- Location: LCCOMB_X31_Y71_N0
\S~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~20_combout\ = \A[9]~input_o\ $ (\B[9]~input_o\ $ (\c[9]~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[9]~input_o\,
	datab => \B[9]~input_o\,
	datac => \c[9]~17_combout\,
	combout => \S~20_combout\);

-- Location: LCCOMB_X33_Y71_N24
\PrefixNetwork|Gk~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~19_combout\ = (\B[8]~input_o\ & (!\A[8]~input_o\ & (\A[9]~input_o\ $ (\B[9]~input_o\)))) # (!\B[8]~input_o\ & (\A[8]~input_o\ & (\A[9]~input_o\ $ (\B[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[8]~input_o\,
	datab => \A[9]~input_o\,
	datac => \A[8]~input_o\,
	datad => \B[9]~input_o\,
	combout => \PrefixNetwork|Gk~19_combout\);

-- Location: LCCOMB_X34_Y71_N10
\PrefixNetwork|Pk[2][9]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[2][9]~10_combout\ = (p(6) & (\PrefixNetwork|Gk~19_combout\ & (\A[7]~input_o\ $ (\B[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(6),
	datab => \A[7]~input_o\,
	datac => \B[7]~input_o\,
	datad => \PrefixNetwork|Gk~19_combout\,
	combout => \PrefixNetwork|Pk[2][9]~10_combout\);

-- Location: LCCOMB_X33_Y71_N10
\PrefixNetwork|Gk[1][9]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][9]~20_combout\ = (\B[9]~input_o\ & ((\A[9]~input_o\) # ((\B[8]~input_o\ & \A[8]~input_o\)))) # (!\B[9]~input_o\ & (\B[8]~input_o\ & (\A[8]~input_o\ & \A[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[8]~input_o\,
	datab => \B[9]~input_o\,
	datac => \A[8]~input_o\,
	datad => \A[9]~input_o\,
	combout => \PrefixNetwork|Gk[1][9]~20_combout\);

-- Location: LCCOMB_X33_Y71_N12
\PrefixNetwork|Gk[3][9]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][9]~21_combout\ = (!\PrefixNetwork|Gk[1][9]~20_combout\ & ((!\PrefixNetwork|Gk~19_combout\) # (!\PrefixNetwork|Gk[1][7]~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk[1][9]~20_combout\,
	datac => \PrefixNetwork|Gk[1][7]~15_combout\,
	datad => \PrefixNetwork|Gk~19_combout\,
	combout => \PrefixNetwork|Gk[3][9]~21_combout\);

-- Location: LCCOMB_X34_Y71_N12
\PrefixNetwork|Gk[3][9]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][9]~22_combout\ = ((\PrefixNetwork|Pk[2][9]~10_combout\ & !\PrefixNetwork|Gk[3][9]~11_combout\)) # (!\PrefixNetwork|Gk[3][9]~21_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Pk[2][9]~10_combout\,
	datab => \PrefixNetwork|Gk[3][9]~11_combout\,
	datad => \PrefixNetwork|Gk[3][9]~21_combout\,
	combout => \PrefixNetwork|Gk[3][9]~22_combout\);

-- Location: IOIBUF_X52_Y73_N8
\B[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(10),
	o => \B[10]~input_o\);

-- Location: IOIBUF_X60_Y73_N1
\A[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

-- Location: LCCOMB_X34_Y71_N2
\S~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~21_combout\ = (p(4) & (p(5) & (\c[4]~12_combout\ & \PrefixNetwork|Pk[2][9]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(4),
	datab => p(5),
	datac => \c[4]~12_combout\,
	datad => \PrefixNetwork|Pk[2][9]~10_combout\,
	combout => \S~21_combout\);

-- Location: LCCOMB_X34_Y71_N24
\S~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~22_combout\ = \B[10]~input_o\ $ (\A[10]~input_o\ $ (((\PrefixNetwork|Gk[3][9]~22_combout\) # (\S~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk[3][9]~22_combout\,
	datab => \B[10]~input_o\,
	datac => \A[10]~input_o\,
	datad => \S~21_combout\,
	combout => \S~22_combout\);

-- Location: IOIBUF_X9_Y73_N1
\B[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(11),
	o => \B[11]~input_o\);

-- Location: IOIBUF_X52_Y73_N1
\A[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(11),
	o => \A[11]~input_o\);

-- Location: LCCOMB_X33_Y71_N18
\PrefixNetwork|Gk~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~23_combout\ = (\A[9]~input_o\ & (!\B[9]~input_o\ & (\B[10]~input_o\ $ (\A[10]~input_o\)))) # (!\A[9]~input_o\ & (\B[9]~input_o\ & (\B[10]~input_o\ $ (\A[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[9]~input_o\,
	datab => \B[10]~input_o\,
	datac => \A[10]~input_o\,
	datad => \B[9]~input_o\,
	combout => \PrefixNetwork|Gk~23_combout\);

-- Location: LCCOMB_X32_Y71_N4
\PrefixNetwork|Gk[1][10]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][10]~24_combout\ = (\A[10]~input_o\ & ((\B[10]~input_o\) # ((\B[9]~input_o\ & \A[9]~input_o\)))) # (!\A[10]~input_o\ & (\B[9]~input_o\ & (\B[10]~input_o\ & \A[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[10]~input_o\,
	datab => \B[9]~input_o\,
	datac => \B[10]~input_o\,
	datad => \A[9]~input_o\,
	combout => \PrefixNetwork|Gk[1][10]~24_combout\);

-- Location: LCCOMB_X28_Y71_N0
\PrefixNetwork|Gk[3][10]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][10]~25_combout\ = (!\PrefixNetwork|Gk[1][10]~24_combout\ & ((!\PrefixNetwork|Gk~23_combout\) # (!\PrefixNetwork|Gk[1][8]~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PrefixNetwork|Gk[1][10]~24_combout\,
	datac => \PrefixNetwork|Gk[1][8]~17_combout\,
	datad => \PrefixNetwork|Gk~23_combout\,
	combout => \PrefixNetwork|Gk[3][10]~25_combout\);

-- Location: LCCOMB_X28_Y71_N14
\PrefixNetwork|Gk[3][10]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][10]~26_combout\ = ((\PrefixNetwork|Gk~23_combout\ & (!\PrefixNetwork|Gk[3][10]~13_combout\ & \PrefixNetwork|Gk~16_combout\))) # (!\PrefixNetwork|Gk[3][10]~25_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk~23_combout\,
	datab => \PrefixNetwork|Gk[3][10]~13_combout\,
	datac => \PrefixNetwork|Gk~16_combout\,
	datad => \PrefixNetwork|Gk[3][10]~25_combout\,
	combout => \PrefixNetwork|Gk[3][10]~26_combout\);

-- Location: LCCOMB_X39_Y71_N20
\c[3]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[3]~18_combout\ = (\PrefixNetwork|Gk[1][2]~6_combout\) # ((\PrefixNetwork|Gpre[6]~1_combout\ & \c[5]~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk[1][2]~6_combout\,
	datac => \PrefixNetwork|Gpre[6]~1_combout\,
	datad => \c[5]~11_combout\,
	combout => \c[3]~18_combout\);

-- Location: LCCOMB_X28_Y71_N28
\c[19]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[19]~19_combout\ = (\PrefixNetwork|Gk~23_combout\ & (\PrefixNetwork|Pk[2][6]~9_combout\ & (\PrefixNetwork|Gk~16_combout\ & \c[3]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk~23_combout\,
	datab => \PrefixNetwork|Pk[2][6]~9_combout\,
	datac => \PrefixNetwork|Gk~16_combout\,
	datad => \c[3]~18_combout\,
	combout => \c[19]~19_combout\);

-- Location: LCCOMB_X28_Y71_N2
\S~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~23_combout\ = \B[11]~input_o\ $ (\A[11]~input_o\ $ (((\PrefixNetwork|Gk[3][10]~26_combout\) # (\c[19]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[11]~input_o\,
	datab => \A[11]~input_o\,
	datac => \PrefixNetwork|Gk[3][10]~26_combout\,
	datad => \c[19]~19_combout\,
	combout => \S~23_combout\);

-- Location: IOIBUF_X33_Y73_N8
\B[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(12),
	o => \B[12]~input_o\);

-- Location: IOIBUF_X52_Y73_N15
\A[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(12),
	o => \A[12]~input_o\);

-- Location: LCCOMB_X33_Y71_N0
\PrefixNetwork|Gk~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~27_combout\ = (\B[11]~input_o\ & (!\A[11]~input_o\ & (\A[10]~input_o\ $ (\B[10]~input_o\)))) # (!\B[11]~input_o\ & (\A[11]~input_o\ & (\A[10]~input_o\ $ (\B[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[11]~input_o\,
	datab => \A[11]~input_o\,
	datac => \A[10]~input_o\,
	datad => \B[10]~input_o\,
	combout => \PrefixNetwork|Gk~27_combout\);

-- Location: LCCOMB_X33_Y71_N14
\PrefixNetwork|Gk[1][11]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][11]~28_combout\ = (\B[11]~input_o\ & ((\A[11]~input_o\) # ((\A[10]~input_o\ & \B[10]~input_o\)))) # (!\B[11]~input_o\ & (\A[11]~input_o\ & (\A[10]~input_o\ & \B[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[11]~input_o\,
	datab => \A[11]~input_o\,
	datac => \A[10]~input_o\,
	datad => \B[10]~input_o\,
	combout => \PrefixNetwork|Gk[1][11]~28_combout\);

-- Location: LCCOMB_X33_Y71_N8
\PrefixNetwork|Gk[3][11]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][11]~29_combout\ = (!\PrefixNetwork|Gk[1][11]~28_combout\ & ((!\PrefixNetwork|Gk~27_combout\) # (!\PrefixNetwork|Gk[1][9]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk[1][9]~20_combout\,
	datac => \PrefixNetwork|Gk[1][11]~28_combout\,
	datad => \PrefixNetwork|Gk~27_combout\,
	combout => \PrefixNetwork|Gk[3][11]~29_combout\);

-- Location: LCCOMB_X33_Y71_N26
\PrefixNetwork|Gk[3][11]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][11]~91_combout\ = ((!\PrefixNetwork|Gpre[7]~4_combout\ & (\PrefixNetwork|Gk~27_combout\ & \PrefixNetwork|Gk~19_combout\))) # (!\PrefixNetwork|Gk[3][11]~29_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gpre[7]~4_combout\,
	datab => \PrefixNetwork|Gk~27_combout\,
	datac => \PrefixNetwork|Gk[3][11]~29_combout\,
	datad => \PrefixNetwork|Gk~19_combout\,
	combout => \PrefixNetwork|Gk[3][11]~91_combout\);

-- Location: LCCOMB_X26_Y71_N28
\PrefixNetwork|Pk[2][11]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[2][11]~11_combout\ = (\PrefixNetwork|Gk~27_combout\ & \PrefixNetwork|Gk~19_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|Gk~27_combout\,
	datad => \PrefixNetwork|Gk~19_combout\,
	combout => \PrefixNetwork|Pk[2][11]~11_combout\);

-- Location: LCCOMB_X26_Y71_N10
\c[12]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[12]~20_combout\ = (\PrefixNetwork|Pk[2][11]~11_combout\ & (\PrefixNetwork|Pk[2][7]~23_combout\ & ((\PrefixNetwork|Gk[1][3]~7_combout\) # (\c[4]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk[1][3]~7_combout\,
	datab => \PrefixNetwork|Pk[2][11]~11_combout\,
	datac => \PrefixNetwork|Pk[2][7]~23_combout\,
	datad => \c[4]~12_combout\,
	combout => \c[12]~20_combout\);

-- Location: LCCOMB_X26_Y71_N16
\S~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~24_combout\ = \B[12]~input_o\ $ (\A[12]~input_o\ $ (((\PrefixNetwork|Gk[3][11]~91_combout\) # (\c[12]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[12]~input_o\,
	datab => \A[12]~input_o\,
	datac => \PrefixNetwork|Gk[3][11]~91_combout\,
	datad => \c[12]~20_combout\,
	combout => \S~24_combout\);

-- Location: IOIBUF_X11_Y73_N8
\A[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(13),
	o => \A[13]~input_o\);

-- Location: LCCOMB_X33_Y71_N22
\PrefixNetwork|Gk~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~30_combout\ = (\B[12]~input_o\ & (!\A[12]~input_o\ & (\A[11]~input_o\ $ (\B[11]~input_o\)))) # (!\B[12]~input_o\ & (\A[12]~input_o\ & (\A[11]~input_o\ $ (\B[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[12]~input_o\,
	datab => \A[12]~input_o\,
	datac => \A[11]~input_o\,
	datad => \B[11]~input_o\,
	combout => \PrefixNetwork|Gk~30_combout\);

-- Location: LCCOMB_X32_Y71_N2
\PrefixNetwork|Gk[1][12]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][12]~31_combout\ = (\A[12]~input_o\ & ((\B[12]~input_o\) # ((\A[11]~input_o\ & \B[11]~input_o\)))) # (!\A[12]~input_o\ & (\A[11]~input_o\ & (\B[12]~input_o\ & \B[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[12]~input_o\,
	datab => \A[11]~input_o\,
	datac => \B[12]~input_o\,
	datad => \B[11]~input_o\,
	combout => \PrefixNetwork|Gk[1][12]~31_combout\);

-- Location: LCCOMB_X32_Y71_N8
\PrefixNetwork|Gk[3][12]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][12]~32_combout\ = (!\PrefixNetwork|Gk[1][12]~31_combout\ & ((!\PrefixNetwork|Gk~30_combout\) # (!\PrefixNetwork|Gk[1][10]~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PrefixNetwork|Gk[1][12]~31_combout\,
	datac => \PrefixNetwork|Gk[1][10]~24_combout\,
	datad => \PrefixNetwork|Gk~30_combout\,
	combout => \PrefixNetwork|Gk[3][12]~32_combout\);

-- Location: LCCOMB_X36_Y71_N16
\PrefixNetwork|Gk[3][12]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][12]~92_combout\ = ((\PrefixNetwork|Gk~23_combout\ & (\PrefixNetwork|Gk~30_combout\ & !\PrefixNetwork|Gk[3][8]~18_combout\))) # (!\PrefixNetwork|Gk[3][12]~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk~23_combout\,
	datab => \PrefixNetwork|Gk~30_combout\,
	datac => \PrefixNetwork|Gk[3][12]~32_combout\,
	datad => \PrefixNetwork|Gk[3][8]~18_combout\,
	combout => \PrefixNetwork|Gk[3][12]~92_combout\);

-- Location: IOIBUF_X54_Y73_N8
\B[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(13),
	o => \B[13]~input_o\);

-- Location: LCCOMB_X36_Y71_N14
\PrefixNetwork|Pk[2][12]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[2][12]~12_combout\ = (\PrefixNetwork|Gk~23_combout\ & \PrefixNetwork|Gk~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|Gk~23_combout\,
	datad => \PrefixNetwork|Gk~30_combout\,
	combout => \PrefixNetwork|Pk[2][12]~12_combout\);

-- Location: LCCOMB_X36_Y71_N28
\c[13]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[13]~21_combout\ = (\PrefixNetwork|Pk[2][8]~24_combout\ & (\PrefixNetwork|Pk[2][12]~12_combout\ & ((\c[5]~13_combout\) # (!\PrefixNetwork|Gk[3][8]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Pk[2][8]~24_combout\,
	datab => \PrefixNetwork|Gk[3][8]~9_combout\,
	datac => \PrefixNetwork|Pk[2][12]~12_combout\,
	datad => \c[5]~13_combout\,
	combout => \c[13]~21_combout\);

-- Location: LCCOMB_X36_Y71_N6
\S~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~25_combout\ = \A[13]~input_o\ $ (\B[13]~input_o\ $ (((\PrefixNetwork|Gk[3][12]~92_combout\) # (\c[13]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[13]~input_o\,
	datab => \PrefixNetwork|Gk[3][12]~92_combout\,
	datac => \B[13]~input_o\,
	datad => \c[13]~21_combout\,
	combout => \S~25_combout\);

-- Location: IOIBUF_X9_Y73_N8
\B[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(14),
	o => \B[14]~input_o\);

-- Location: LCCOMB_X33_Y71_N20
\PrefixNetwork|Gk~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~33_combout\ = (\B[13]~input_o\ & (!\A[13]~input_o\ & (\A[12]~input_o\ $ (\B[12]~input_o\)))) # (!\B[13]~input_o\ & (\A[13]~input_o\ & (\A[12]~input_o\ $ (\B[12]~input_o\))))

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
	combout => \PrefixNetwork|Gk~33_combout\);

-- Location: LCCOMB_X33_Y71_N2
\PrefixNetwork|Gk[1][13]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][13]~34_combout\ = (\A[13]~input_o\ & ((\B[13]~input_o\) # ((\A[12]~input_o\ & \B[12]~input_o\)))) # (!\A[13]~input_o\ & (\A[12]~input_o\ & (\B[13]~input_o\ & \B[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[13]~input_o\,
	datab => \A[12]~input_o\,
	datac => \B[13]~input_o\,
	datad => \B[12]~input_o\,
	combout => \PrefixNetwork|Gk[1][13]~34_combout\);

-- Location: LCCOMB_X33_Y71_N28
\PrefixNetwork|Gk[3][13]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][13]~35_combout\ = (!\PrefixNetwork|Gk[1][13]~34_combout\ & ((!\PrefixNetwork|Gk~33_combout\) # (!\PrefixNetwork|Gk[1][11]~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PrefixNetwork|Gk[1][13]~34_combout\,
	datac => \PrefixNetwork|Gk[1][11]~28_combout\,
	datad => \PrefixNetwork|Gk~33_combout\,
	combout => \PrefixNetwork|Gk[3][13]~35_combout\);

-- Location: LCCOMB_X33_Y71_N30
\PrefixNetwork|Gk[3][13]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][13]~36_combout\ = ((!\PrefixNetwork|Gk[3][9]~21_combout\ & (\PrefixNetwork|Gk~33_combout\ & \PrefixNetwork|Gk~27_combout\))) # (!\PrefixNetwork|Gk[3][13]~35_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk[3][9]~21_combout\,
	datab => \PrefixNetwork|Gk~33_combout\,
	datac => \PrefixNetwork|Gk~27_combout\,
	datad => \PrefixNetwork|Gk[3][13]~35_combout\,
	combout => \PrefixNetwork|Gk[3][13]~36_combout\);

-- Location: IOIBUF_X52_Y73_N22
\A[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(14),
	o => \A[14]~input_o\);

-- Location: LCCOMB_X34_Y71_N18
\c[14]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[14]~22_combout\ = (\PrefixNetwork|Pk[2][9]~10_combout\ & (\PrefixNetwork|Gk~33_combout\ & (\PrefixNetwork|Gk~27_combout\ & \c[14]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Pk[2][9]~10_combout\,
	datab => \PrefixNetwork|Gk~33_combout\,
	datac => \PrefixNetwork|Gk~27_combout\,
	datad => \c[14]~14_combout\,
	combout => \c[14]~22_combout\);

-- Location: LCCOMB_X34_Y71_N8
\S~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~26_combout\ = \B[14]~input_o\ $ (\A[14]~input_o\ $ (((\PrefixNetwork|Gk[3][13]~36_combout\) # (\c[14]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[14]~input_o\,
	datab => \PrefixNetwork|Gk[3][13]~36_combout\,
	datac => \A[14]~input_o\,
	datad => \c[14]~22_combout\,
	combout => \S~26_combout\);

-- Location: IOIBUF_X54_Y73_N1
\A[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(15),
	o => \A[15]~input_o\);

-- Location: IOIBUF_X7_Y73_N22
\B[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(15),
	o => \B[15]~input_o\);

-- Location: LCCOMB_X29_Y71_N16
\PrefixNetwork|Gk~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~37_combout\ = (\A[14]~input_o\ & (!\B[14]~input_o\ & (\B[13]~input_o\ $ (\A[13]~input_o\)))) # (!\A[14]~input_o\ & (\B[14]~input_o\ & (\B[13]~input_o\ $ (\A[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[14]~input_o\,
	datab => \B[13]~input_o\,
	datac => \B[14]~input_o\,
	datad => \A[13]~input_o\,
	combout => \PrefixNetwork|Gk~37_combout\);

-- Location: LCCOMB_X38_Y71_N8
\PrefixNetwork|Pk[2][14]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[2][14]~13_combout\ = (\PrefixNetwork|Gk~30_combout\ & \PrefixNetwork|Gk~37_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|Gk~30_combout\,
	datad => \PrefixNetwork|Gk~37_combout\,
	combout => \PrefixNetwork|Pk[2][14]~13_combout\);

-- Location: LCCOMB_X38_Y71_N10
\c[23]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[23]~23_combout\ = (\PrefixNetwork|Gk~16_combout\ & (\PrefixNetwork|Gk~23_combout\ & (\PrefixNetwork|Pk[2][14]~13_combout\ & c(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk~16_combout\,
	datab => \PrefixNetwork|Gk~23_combout\,
	datac => \PrefixNetwork|Pk[2][14]~13_combout\,
	datad => c(7),
	combout => \c[23]~23_combout\);

-- Location: LCCOMB_X29_Y71_N18
\PrefixNetwork|Gk[1][14]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][14]~38_combout\ = (\A[14]~input_o\ & ((\B[14]~input_o\) # ((\B[13]~input_o\ & \A[13]~input_o\)))) # (!\A[14]~input_o\ & (\B[13]~input_o\ & (\B[14]~input_o\ & \A[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[14]~input_o\,
	datab => \B[13]~input_o\,
	datac => \B[14]~input_o\,
	datad => \A[13]~input_o\,
	combout => \PrefixNetwork|Gk[1][14]~38_combout\);

-- Location: LCCOMB_X28_Y71_N4
\PrefixNetwork|Gk[3][14]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][14]~39_combout\ = (!\PrefixNetwork|Gk[1][14]~38_combout\ & ((!\PrefixNetwork|Gk[1][12]~31_combout\) # (!\PrefixNetwork|Gk~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PrefixNetwork|Gk~37_combout\,
	datac => \PrefixNetwork|Gk[1][12]~31_combout\,
	datad => \PrefixNetwork|Gk[1][14]~38_combout\,
	combout => \PrefixNetwork|Gk[3][14]~39_combout\);

-- Location: LCCOMB_X28_Y71_N6
\PrefixNetwork|Gk[3][14]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][14]~93_combout\ = ((\PrefixNetwork|Gk~30_combout\ & (\PrefixNetwork|Gk~37_combout\ & !\PrefixNetwork|Gk[3][10]~25_combout\))) # (!\PrefixNetwork|Gk[3][14]~39_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk~30_combout\,
	datab => \PrefixNetwork|Gk~37_combout\,
	datac => \PrefixNetwork|Gk[3][14]~39_combout\,
	datad => \PrefixNetwork|Gk[3][10]~25_combout\,
	combout => \PrefixNetwork|Gk[3][14]~93_combout\);

-- Location: LCCOMB_X33_Y71_N4
\S~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~27_combout\ = \A[15]~input_o\ $ (\B[15]~input_o\ $ (((\c[23]~23_combout\) # (\PrefixNetwork|Gk[3][14]~93_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[15]~input_o\,
	datab => \B[15]~input_o\,
	datac => \c[23]~23_combout\,
	datad => \PrefixNetwork|Gk[3][14]~93_combout\,
	combout => \S~27_combout\);

-- Location: IOIBUF_X7_Y73_N15
\B[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(16),
	o => \B[16]~input_o\);

-- Location: IOIBUF_X11_Y73_N1
\A[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(16),
	o => \A[16]~input_o\);

-- Location: LCCOMB_X31_Y71_N26
\PrefixNetwork|Gk~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~40_combout\ = (\B[14]~input_o\ & (!\A[14]~input_o\ & (\A[15]~input_o\ $ (\B[15]~input_o\)))) # (!\B[14]~input_o\ & (\A[14]~input_o\ & (\A[15]~input_o\ $ (\B[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[14]~input_o\,
	datab => \A[15]~input_o\,
	datac => \B[15]~input_o\,
	datad => \A[14]~input_o\,
	combout => \PrefixNetwork|Gk~40_combout\);

-- Location: LCCOMB_X30_Y71_N2
\PrefixNetwork|Gk~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~44_combout\ = (\PrefixNetwork|Gk~19_combout\ & (\PrefixNetwork|Gk~40_combout\ & (\PrefixNetwork|Gk~27_combout\ & \PrefixNetwork|Gk~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk~19_combout\,
	datab => \PrefixNetwork|Gk~40_combout\,
	datac => \PrefixNetwork|Gk~27_combout\,
	datad => \PrefixNetwork|Gk~33_combout\,
	combout => \PrefixNetwork|Gk~44_combout\);

-- Location: LCCOMB_X31_Y71_N28
\PrefixNetwork|Gk[1][15]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][15]~41_combout\ = (\A[15]~input_o\ & ((\B[15]~input_o\) # ((\B[14]~input_o\ & \A[14]~input_o\)))) # (!\A[15]~input_o\ & (\B[14]~input_o\ & (\B[15]~input_o\ & \A[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[14]~input_o\,
	datab => \A[15]~input_o\,
	datac => \B[15]~input_o\,
	datad => \A[14]~input_o\,
	combout => \PrefixNetwork|Gk[1][15]~41_combout\);

-- Location: LCCOMB_X31_Y71_N14
\PrefixNetwork|Gk[3][15]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][15]~42_combout\ = (!\PrefixNetwork|Gk[1][15]~41_combout\ & ((!\PrefixNetwork|Gk~40_combout\) # (!\PrefixNetwork|Gk[1][13]~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PrefixNetwork|Gk[1][13]~34_combout\,
	datac => \PrefixNetwork|Gk~40_combout\,
	datad => \PrefixNetwork|Gk[1][15]~41_combout\,
	combout => \PrefixNetwork|Gk[3][15]~42_combout\);

-- Location: LCCOMB_X30_Y71_N16
\PrefixNetwork|Gk[3][15]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][15]~43_combout\ = ((!\PrefixNetwork|Gk[3][11]~29_combout\ & (\PrefixNetwork|Gk~33_combout\ & \PrefixNetwork|Gk~40_combout\))) # (!\PrefixNetwork|Gk[3][15]~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk[3][11]~29_combout\,
	datab => \PrefixNetwork|Gk~33_combout\,
	datac => \PrefixNetwork|Gk[3][15]~42_combout\,
	datad => \PrefixNetwork|Gk~40_combout\,
	combout => \PrefixNetwork|Gk[3][15]~43_combout\);

-- Location: LCCOMB_X30_Y71_N0
\c[16]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[16]~24_combout\ = (\PrefixNetwork|Gk[3][15]~43_combout\) # ((\PrefixNetwork|Gk~44_combout\ & ((\c~16_combout\) # (\PrefixNetwork|Gpre[7]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk~44_combout\,
	datab => \PrefixNetwork|Gk[3][15]~43_combout\,
	datac => \c~16_combout\,
	datad => \PrefixNetwork|Gpre[7]~5_combout\,
	combout => \c[16]~24_combout\);

-- Location: LCCOMB_X30_Y71_N10
\S~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~28_combout\ = \B[16]~input_o\ $ (\A[16]~input_o\ $ (\c[16]~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[16]~input_o\,
	datac => \A[16]~input_o\,
	datad => \c[16]~24_combout\,
	combout => \S~28_combout\);

-- Location: IOIBUF_X5_Y73_N8
\B[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(17),
	o => \B[17]~input_o\);

-- Location: IOIBUF_X5_Y73_N22
\A[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(17),
	o => \A[17]~input_o\);

-- Location: LCCOMB_X29_Y71_N4
\PrefixNetwork|Gk~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~45_combout\ = (\A[15]~input_o\ & (!\B[15]~input_o\ & (\B[16]~input_o\ $ (\A[16]~input_o\)))) # (!\A[15]~input_o\ & (\B[15]~input_o\ & (\B[16]~input_o\ $ (\A[16]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[15]~input_o\,
	datab => \B[16]~input_o\,
	datac => \B[15]~input_o\,
	datad => \A[16]~input_o\,
	combout => \PrefixNetwork|Gk~45_combout\);

-- Location: LCCOMB_X29_Y71_N30
\PrefixNetwork|Gk[1][16]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][16]~46_combout\ = (\B[16]~input_o\ & ((\A[16]~input_o\) # ((\A[15]~input_o\ & \B[15]~input_o\)))) # (!\B[16]~input_o\ & (\A[15]~input_o\ & (\B[15]~input_o\ & \A[16]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[15]~input_o\,
	datab => \B[16]~input_o\,
	datac => \B[15]~input_o\,
	datad => \A[16]~input_o\,
	combout => \PrefixNetwork|Gk[1][16]~46_combout\);

-- Location: LCCOMB_X29_Y71_N24
\PrefixNetwork|Gk[3][16]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][16]~47_combout\ = (!\PrefixNetwork|Gk[1][16]~46_combout\ & ((!\PrefixNetwork|Gk[1][14]~38_combout\) # (!\PrefixNetwork|Gk~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk[1][16]~46_combout\,
	datac => \PrefixNetwork|Gk~45_combout\,
	datad => \PrefixNetwork|Gk[1][14]~38_combout\,
	combout => \PrefixNetwork|Gk[3][16]~47_combout\);

-- Location: LCCOMB_X29_Y71_N26
\PrefixNetwork|Gk[3][16]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][16]~48_combout\ = ((!\PrefixNetwork|Gk[3][12]~32_combout\ & (\PrefixNetwork|Gk~37_combout\ & \PrefixNetwork|Gk~45_combout\))) # (!\PrefixNetwork|Gk[3][16]~47_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk[3][12]~32_combout\,
	datab => \PrefixNetwork|Gk~37_combout\,
	datac => \PrefixNetwork|Gk~45_combout\,
	datad => \PrefixNetwork|Gk[3][16]~47_combout\,
	combout => \PrefixNetwork|Gk[3][16]~48_combout\);

-- Location: LCCOMB_X32_Y71_N10
\S~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~29_combout\ = (\PrefixNetwork|Gk~23_combout\ & (\PrefixNetwork|Gk~30_combout\ & (\PrefixNetwork|Gk~37_combout\ & \PrefixNetwork|Gk~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk~23_combout\,
	datab => \PrefixNetwork|Gk~30_combout\,
	datac => \PrefixNetwork|Gk~37_combout\,
	datad => \PrefixNetwork|Gk~45_combout\,
	combout => \S~29_combout\);

-- Location: LCCOMB_X31_Y71_N24
\S~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~30_combout\ = (\PrefixNetwork|Pk[2][8]~24_combout\ & ((\c[5]~13_combout\) # (!\PrefixNetwork|Gk[3][8]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Pk[2][8]~24_combout\,
	datac => \PrefixNetwork|Gk[3][8]~9_combout\,
	datad => \c[5]~13_combout\,
	combout => \S~30_combout\);

-- Location: LCCOMB_X31_Y71_N18
\S~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~31_combout\ = (\S~29_combout\ & ((\S~30_combout\) # (!\PrefixNetwork|Gk[3][8]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk[3][8]~18_combout\,
	datac => \S~29_combout\,
	datad => \S~30_combout\,
	combout => \S~31_combout\);

-- Location: LCCOMB_X31_Y71_N4
\S~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~32_combout\ = \B[17]~input_o\ $ (\A[17]~input_o\ $ (((\PrefixNetwork|Gk[3][16]~48_combout\) # (\S~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[17]~input_o\,
	datab => \A[17]~input_o\,
	datac => \PrefixNetwork|Gk[3][16]~48_combout\,
	datad => \S~31_combout\,
	combout => \S~32_combout\);

-- Location: IOIBUF_X47_Y73_N15
\B[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(18),
	o => \B[18]~input_o\);

-- Location: IOIBUF_X11_Y73_N15
\A[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(18),
	o => \A[18]~input_o\);

-- Location: LCCOMB_X31_Y71_N8
\PrefixNetwork|Gk~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~49_combout\ = (\A[16]~input_o\ & (!\B[16]~input_o\ & (\A[17]~input_o\ $ (\B[17]~input_o\)))) # (!\A[16]~input_o\ & (\B[16]~input_o\ & (\A[17]~input_o\ $ (\B[17]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[16]~input_o\,
	datab => \A[17]~input_o\,
	datac => \B[17]~input_o\,
	datad => \B[16]~input_o\,
	combout => \PrefixNetwork|Gk~49_combout\);

-- Location: LCCOMB_X31_Y71_N30
\PrefixNetwork|Gk[1][17]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][17]~50_combout\ = (\A[17]~input_o\ & ((\B[17]~input_o\) # ((\A[16]~input_o\ & \B[16]~input_o\)))) # (!\A[17]~input_o\ & (\A[16]~input_o\ & (\B[17]~input_o\ & \B[16]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[16]~input_o\,
	datab => \A[17]~input_o\,
	datac => \B[17]~input_o\,
	datad => \B[16]~input_o\,
	combout => \PrefixNetwork|Gk[1][17]~50_combout\);

-- Location: LCCOMB_X31_Y71_N16
\PrefixNetwork|Gk[3][17]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][17]~51_combout\ = (!\PrefixNetwork|Gk[1][17]~50_combout\ & ((!\PrefixNetwork|Gk[1][15]~41_combout\) # (!\PrefixNetwork|Gk~49_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk[1][17]~50_combout\,
	datac => \PrefixNetwork|Gk~49_combout\,
	datad => \PrefixNetwork|Gk[1][15]~41_combout\,
	combout => \PrefixNetwork|Gk[3][17]~51_combout\);

-- Location: LCCOMB_X33_Y71_N6
\PrefixNetwork|Gk[3][17]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][17]~52_combout\ = ((\PrefixNetwork|Gk~49_combout\ & (!\PrefixNetwork|Gk[3][13]~35_combout\ & \PrefixNetwork|Gk~40_combout\))) # (!\PrefixNetwork|Gk[3][17]~51_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk~49_combout\,
	datab => \PrefixNetwork|Gk[3][13]~35_combout\,
	datac => \PrefixNetwork|Gk~40_combout\,
	datad => \PrefixNetwork|Gk[3][17]~51_combout\,
	combout => \PrefixNetwork|Gk[3][17]~52_combout\);

-- Location: LCCOMB_X33_Y71_N16
\S~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~33_combout\ = (\PrefixNetwork|Gk~49_combout\ & (\PrefixNetwork|Gk~27_combout\ & (\PrefixNetwork|Gk~40_combout\ & \PrefixNetwork|Gk~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk~49_combout\,
	datab => \PrefixNetwork|Gk~27_combout\,
	datac => \PrefixNetwork|Gk~40_combout\,
	datad => \PrefixNetwork|Gk~33_combout\,
	combout => \S~33_combout\);

-- Location: LCCOMB_X34_Y71_N6
\S~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~34_combout\ = (\PrefixNetwork|Gk[3][17]~52_combout\) # ((\S~33_combout\ & ((\PrefixNetwork|Gk[3][9]~22_combout\) # (\S~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk[3][9]~22_combout\,
	datab => \PrefixNetwork|Gk[3][17]~52_combout\,
	datac => \S~33_combout\,
	datad => \S~21_combout\,
	combout => \S~34_combout\);

-- Location: LCCOMB_X34_Y71_N22
\S~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~48_combout\ = \B[18]~input_o\ $ (\A[18]~input_o\ $ (\S~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[18]~input_o\,
	datab => \A[18]~input_o\,
	datad => \S~34_combout\,
	combout => \S~48_combout\);

-- Location: IOIBUF_X13_Y73_N1
\B[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(19),
	o => \B[19]~input_o\);

-- Location: IOIBUF_X13_Y73_N15
\A[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(19),
	o => \A[19]~input_o\);

-- Location: LCCOMB_X29_Y71_N8
\PrefixNetwork|Gk~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~53_combout\ = (\B[17]~input_o\ & (!\A[17]~input_o\ & (\B[18]~input_o\ $ (\A[18]~input_o\)))) # (!\B[17]~input_o\ & (\A[17]~input_o\ & (\B[18]~input_o\ $ (\A[18]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[17]~input_o\,
	datab => \B[18]~input_o\,
	datac => \A[17]~input_o\,
	datad => \A[18]~input_o\,
	combout => \PrefixNetwork|Gk~53_combout\);

-- Location: LCCOMB_X29_Y71_N10
\PrefixNetwork|Gk[1][18]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][18]~54_combout\ = (\B[18]~input_o\ & ((\A[18]~input_o\) # ((\B[17]~input_o\ & \A[17]~input_o\)))) # (!\B[18]~input_o\ & (\B[17]~input_o\ & (\A[17]~input_o\ & \A[18]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[17]~input_o\,
	datab => \B[18]~input_o\,
	datac => \A[17]~input_o\,
	datad => \A[18]~input_o\,
	combout => \PrefixNetwork|Gk[1][18]~54_combout\);

-- Location: LCCOMB_X29_Y71_N12
\PrefixNetwork|Gk[3][18]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][18]~55_combout\ = (!\PrefixNetwork|Gk[1][18]~54_combout\ & ((!\PrefixNetwork|Gk~53_combout\) # (!\PrefixNetwork|Gk[1][16]~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk[1][16]~46_combout\,
	datac => \PrefixNetwork|Gk~53_combout\,
	datad => \PrefixNetwork|Gk[1][18]~54_combout\,
	combout => \PrefixNetwork|Gk[3][18]~55_combout\);

-- Location: LCCOMB_X28_Y71_N10
\PrefixNetwork|Gk[3][18]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][18]~56_combout\ = ((\PrefixNetwork|Gk~53_combout\ & (!\PrefixNetwork|Gk[3][14]~39_combout\ & \PrefixNetwork|Gk~45_combout\))) # (!\PrefixNetwork|Gk[3][18]~55_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk~53_combout\,
	datab => \PrefixNetwork|Gk[3][18]~55_combout\,
	datac => \PrefixNetwork|Gk[3][14]~39_combout\,
	datad => \PrefixNetwork|Gk~45_combout\,
	combout => \PrefixNetwork|Gk[3][18]~56_combout\);

-- Location: LCCOMB_X29_Y71_N22
\c[19]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[19]~25_combout\ = (\PrefixNetwork|Gk~30_combout\ & (\PrefixNetwork|Gk~53_combout\ & (\PrefixNetwork|Gk~45_combout\ & \PrefixNetwork|Gk~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk~30_combout\,
	datab => \PrefixNetwork|Gk~53_combout\,
	datac => \PrefixNetwork|Gk~45_combout\,
	datad => \PrefixNetwork|Gk~37_combout\,
	combout => \c[19]~25_combout\);

-- Location: LCCOMB_X28_Y71_N12
\c[19]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[19]~26_combout\ = (\PrefixNetwork|Gk[3][18]~56_combout\) # ((\c[19]~25_combout\ & ((\PrefixNetwork|Gk[3][10]~26_combout\) # (\c[19]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk[3][18]~56_combout\,
	datab => \c[19]~25_combout\,
	datac => \PrefixNetwork|Gk[3][10]~26_combout\,
	datad => \c[19]~19_combout\,
	combout => \c[19]~26_combout\);

-- Location: LCCOMB_X28_Y71_N20
\S~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~49_combout\ = \B[19]~input_o\ $ (\A[19]~input_o\ $ (\c[19]~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[19]~input_o\,
	datac => \A[19]~input_o\,
	datad => \c[19]~26_combout\,
	combout => \S~49_combout\);

-- Location: IOIBUF_X23_Y73_N22
\B[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(20),
	o => \B[20]~input_o\);

-- Location: IOIBUF_X1_Y73_N1
\A[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(20),
	o => \A[20]~input_o\);

-- Location: LCCOMB_X31_Y71_N10
\p[18]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(18) = \B[18]~input_o\ $ (\A[18]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[18]~input_o\,
	datad => \A[18]~input_o\,
	combout => p(18));

-- Location: LCCOMB_X31_Y71_N2
\PrefixNetwork|Pk[2][19]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[2][19]~14_combout\ = (\PrefixNetwork|Gk~49_combout\ & (p(18) & (\A[19]~input_o\ $ (\B[19]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[19]~input_o\,
	datab => \B[19]~input_o\,
	datac => \PrefixNetwork|Gk~49_combout\,
	datad => p(18),
	combout => \PrefixNetwork|Pk[2][19]~14_combout\);

-- Location: LCCOMB_X24_Y71_N14
\PrefixNetwork|Gk[1][19]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][19]~57_combout\ = (\B[19]~input_o\ & ((\A[19]~input_o\) # ((\A[18]~input_o\ & \B[18]~input_o\)))) # (!\B[19]~input_o\ & (\A[19]~input_o\ & (\A[18]~input_o\ & \B[18]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[19]~input_o\,
	datab => \A[19]~input_o\,
	datac => \A[18]~input_o\,
	datad => \B[18]~input_o\,
	combout => \PrefixNetwork|Gk[1][19]~57_combout\);

-- Location: LCCOMB_X24_Y71_N0
\p[19]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(19) = \A[19]~input_o\ $ (\B[19]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[19]~input_o\,
	datad => \B[19]~input_o\,
	combout => p(19));

-- Location: LCCOMB_X24_Y71_N24
\PrefixNetwork|Gk[3][19]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][19]~58_combout\ = (!\PrefixNetwork|Gk[1][19]~57_combout\ & (((!p(19)) # (!\PrefixNetwork|Gk[1][17]~50_combout\)) # (!p(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(18),
	datab => \PrefixNetwork|Gk[1][19]~57_combout\,
	datac => \PrefixNetwork|Gk[1][17]~50_combout\,
	datad => p(19),
	combout => \PrefixNetwork|Gk[3][19]~58_combout\);

-- Location: LCCOMB_X26_Y71_N22
\PrefixNetwork|Gk[3][19]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][19]~59_combout\ = ((!\PrefixNetwork|Gk[3][15]~42_combout\ & \PrefixNetwork|Pk[2][19]~14_combout\)) # (!\PrefixNetwork|Gk[3][19]~58_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PrefixNetwork|Gk[3][15]~42_combout\,
	datac => \PrefixNetwork|Pk[2][19]~14_combout\,
	datad => \PrefixNetwork|Gk[3][19]~58_combout\,
	combout => \PrefixNetwork|Gk[3][19]~59_combout\);

-- Location: LCCOMB_X26_Y71_N4
\c[20]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[20]~27_combout\ = (\PrefixNetwork|Pk[2][19]~14_combout\ & (\PrefixNetwork|Gk~40_combout\ & \PrefixNetwork|Gk~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PrefixNetwork|Pk[2][19]~14_combout\,
	datac => \PrefixNetwork|Gk~40_combout\,
	datad => \PrefixNetwork|Gk~33_combout\,
	combout => \c[20]~27_combout\);

-- Location: LCCOMB_X26_Y71_N2
\c[20]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[20]~28_combout\ = (\PrefixNetwork|Gk[3][19]~59_combout\) # ((\c[20]~27_combout\ & ((\PrefixNetwork|Gk[3][11]~91_combout\) # (\c[12]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk[3][19]~59_combout\,
	datab => \c[20]~27_combout\,
	datac => \PrefixNetwork|Gk[3][11]~91_combout\,
	datad => \c[12]~20_combout\,
	combout => \c[20]~28_combout\);

-- Location: LCCOMB_X26_Y71_N0
\S~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~35_combout\ = \B[20]~input_o\ $ (\A[20]~input_o\ $ (\c[20]~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[20]~input_o\,
	datac => \A[20]~input_o\,
	datad => \c[20]~28_combout\,
	combout => \S~35_combout\);

-- Location: IOIBUF_X0_Y69_N8
\B[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(21),
	o => \B[21]~input_o\);

-- Location: IOIBUF_X16_Y73_N1
\A[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(21),
	o => \A[21]~input_o\);

-- Location: LCCOMB_X25_Y71_N28
\PrefixNetwork|Gk[1][20]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][20]~60_combout\ = (\A[20]~input_o\ & ((\B[20]~input_o\) # ((\A[19]~input_o\ & \B[19]~input_o\)))) # (!\A[20]~input_o\ & (\A[19]~input_o\ & (\B[20]~input_o\ & \B[19]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[19]~input_o\,
	datab => \A[20]~input_o\,
	datac => \B[20]~input_o\,
	datad => \B[19]~input_o\,
	combout => \PrefixNetwork|Gk[1][20]~60_combout\);

-- Location: LCCOMB_X25_Y71_N14
\PrefixNetwork|Gk~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~61_combout\ = (\A[19]~input_o\ & (!\B[19]~input_o\ & (\A[20]~input_o\ $ (\B[20]~input_o\)))) # (!\A[19]~input_o\ & (\B[19]~input_o\ & (\A[20]~input_o\ $ (\B[20]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[19]~input_o\,
	datab => \A[20]~input_o\,
	datac => \B[20]~input_o\,
	datad => \B[19]~input_o\,
	combout => \PrefixNetwork|Gk~61_combout\);

-- Location: LCCOMB_X36_Y71_N4
\PrefixNetwork|Gk[3][20]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][20]~62_combout\ = (\PrefixNetwork|Gk[1][20]~60_combout\) # ((\PrefixNetwork|Gk[1][18]~54_combout\ & \PrefixNetwork|Gk~61_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PrefixNetwork|Gk[1][18]~54_combout\,
	datac => \PrefixNetwork|Gk[1][20]~60_combout\,
	datad => \PrefixNetwork|Gk~61_combout\,
	combout => \PrefixNetwork|Gk[3][20]~62_combout\);

-- Location: LCCOMB_X36_Y71_N30
\PrefixNetwork|Gk[3][20]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][20]~63_combout\ = (\PrefixNetwork|Gk[3][20]~62_combout\) # ((\PrefixNetwork|Gk~53_combout\ & (!\PrefixNetwork|Gk[3][16]~47_combout\ & \PrefixNetwork|Gk~61_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk~53_combout\,
	datab => \PrefixNetwork|Gk[3][16]~47_combout\,
	datac => \PrefixNetwork|Gk[3][20]~62_combout\,
	datad => \PrefixNetwork|Gk~61_combout\,
	combout => \PrefixNetwork|Gk[3][20]~63_combout\);

-- Location: LCCOMB_X29_Y71_N28
\c[25]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[25]~29_combout\ = (\PrefixNetwork|Gk~61_combout\ & (\PrefixNetwork|Gk~53_combout\ & (\PrefixNetwork|Gk~45_combout\ & \PrefixNetwork|Gk~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk~61_combout\,
	datab => \PrefixNetwork|Gk~53_combout\,
	datac => \PrefixNetwork|Gk~45_combout\,
	datad => \PrefixNetwork|Gk~37_combout\,
	combout => \c[25]~29_combout\);

-- Location: LCCOMB_X36_Y71_N12
\c[21]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[21]~30_combout\ = (\PrefixNetwork|Gk[3][20]~63_combout\) # ((\c[25]~29_combout\ & ((\PrefixNetwork|Gk[3][12]~92_combout\) # (\c[13]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk[3][20]~63_combout\,
	datab => \PrefixNetwork|Gk[3][12]~92_combout\,
	datac => \c[25]~29_combout\,
	datad => \c[13]~21_combout\,
	combout => \c[21]~30_combout\);

-- Location: LCCOMB_X36_Y71_N22
\S~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~36_combout\ = \B[21]~input_o\ $ (\A[21]~input_o\ $ (\c[21]~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[21]~input_o\,
	datac => \A[21]~input_o\,
	datad => \c[21]~30_combout\,
	combout => \S~36_combout\);

-- Location: IOIBUF_X0_Y68_N15
\B[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(22),
	o => \B[22]~input_o\);

-- Location: IOIBUF_X0_Y68_N8
\A[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(22),
	o => \A[22]~input_o\);

-- Location: LCCOMB_X24_Y71_N26
\PrefixNetwork|Gk[1][21]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][21]~64_combout\ = (\A[21]~input_o\ & ((\B[21]~input_o\) # ((\A[20]~input_o\ & \B[20]~input_o\)))) # (!\A[21]~input_o\ & (\A[20]~input_o\ & (\B[20]~input_o\ & \B[21]~input_o\)))

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
	combout => \PrefixNetwork|Gk[1][21]~64_combout\);

-- Location: LCCOMB_X24_Y71_N12
\PrefixNetwork|Gk~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~65_combout\ = (\B[21]~input_o\ & (!\A[21]~input_o\ & (\B[20]~input_o\ $ (\A[20]~input_o\)))) # (!\B[21]~input_o\ & (\A[21]~input_o\ & (\B[20]~input_o\ $ (\A[20]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[21]~input_o\,
	datab => \B[20]~input_o\,
	datac => \A[21]~input_o\,
	datad => \A[20]~input_o\,
	combout => \PrefixNetwork|Gk~65_combout\);

-- Location: LCCOMB_X24_Y71_N10
\PrefixNetwork|Gk~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~66_combout\ = (\PrefixNetwork|Gk[1][19]~57_combout\ & \PrefixNetwork|Gk~65_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|Gk[1][19]~57_combout\,
	datad => \PrefixNetwork|Gk~65_combout\,
	combout => \PrefixNetwork|Gk~66_combout\);

-- Location: LCCOMB_X34_Y71_N20
\PrefixNetwork|Pk[2][21]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[2][21]~15_combout\ = (p(18) & (\PrefixNetwork|Gk~61_combout\ & (\A[21]~input_o\ $ (\B[21]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[21]~input_o\,
	datab => p(18),
	datac => \B[21]~input_o\,
	datad => \PrefixNetwork|Gk~61_combout\,
	combout => \PrefixNetwork|Pk[2][21]~15_combout\);

-- Location: LCCOMB_X21_Y71_N12
\PrefixNetwork|Gk[3][21]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][21]~67_combout\ = (\PrefixNetwork|Gk[1][21]~64_combout\) # ((\PrefixNetwork|Gk~66_combout\) # ((!\PrefixNetwork|Gk[3][17]~51_combout\ & \PrefixNetwork|Pk[2][21]~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk[3][17]~51_combout\,
	datab => \PrefixNetwork|Gk[1][21]~64_combout\,
	datac => \PrefixNetwork|Gk~66_combout\,
	datad => \PrefixNetwork|Pk[2][21]~15_combout\,
	combout => \PrefixNetwork|Gk[3][21]~67_combout\);

-- Location: LCCOMB_X34_Y71_N30
\c[26]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[26]~31_combout\ = (\PrefixNetwork|Gk~49_combout\ & (\PrefixNetwork|Gk~40_combout\ & \PrefixNetwork|Pk[2][21]~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk~49_combout\,
	datac => \PrefixNetwork|Gk~40_combout\,
	datad => \PrefixNetwork|Pk[2][21]~15_combout\,
	combout => \c[26]~31_combout\);

-- Location: LCCOMB_X21_Y71_N6
\c[22]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[22]~32_combout\ = (\PrefixNetwork|Gk[3][21]~67_combout\) # ((\c[26]~31_combout\ & ((\PrefixNetwork|Gk[3][13]~36_combout\) # (\c[14]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk[3][21]~67_combout\,
	datab => \PrefixNetwork|Gk[3][13]~36_combout\,
	datac => \c[26]~31_combout\,
	datad => \c[14]~22_combout\,
	combout => \c[22]~32_combout\);

-- Location: LCCOMB_X21_Y71_N4
\S~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~37_combout\ = \B[22]~input_o\ $ (\A[22]~input_o\ $ (\c[22]~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[22]~input_o\,
	datac => \A[22]~input_o\,
	datad => \c[22]~32_combout\,
	combout => \S~37_combout\);

-- Location: IOIBUF_X0_Y67_N15
\B[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(23),
	o => \B[23]~input_o\);

-- Location: IOIBUF_X11_Y73_N22
\A[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(23),
	o => \A[23]~input_o\);

-- Location: LCCOMB_X23_Y71_N22
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

-- Location: LCCOMB_X24_Y71_N28
\PrefixNetwork|Gk~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~68_combout\ = (\B[21]~input_o\ & (!\A[21]~input_o\ & (\B[22]~input_o\ $ (\A[22]~input_o\)))) # (!\B[21]~input_o\ & (\A[21]~input_o\ & (\B[22]~input_o\ $ (\A[22]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[21]~input_o\,
	datab => \B[22]~input_o\,
	datac => \A[21]~input_o\,
	datad => \A[22]~input_o\,
	combout => \PrefixNetwork|Gk~68_combout\);

-- Location: LCCOMB_X28_Y71_N22
\c[27]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[27]~33_combout\ = (\PrefixNetwork|Gk~45_combout\ & (\PrefixNetwork|Gk~53_combout\ & (\PrefixNetwork|Gk~68_combout\ & \PrefixNetwork|Gk~61_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk~45_combout\,
	datab => \PrefixNetwork|Gk~53_combout\,
	datac => \PrefixNetwork|Gk~68_combout\,
	datad => \PrefixNetwork|Gk~61_combout\,
	combout => \c[27]~33_combout\);

-- Location: LCCOMB_X25_Y71_N12
\PrefixNetwork|Gk[3][22]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][22]~70_combout\ = (\PrefixNetwork|Gk~68_combout\ & ((\PrefixNetwork|Gk[1][20]~60_combout\) # (\PrefixNetwork|Gk~61_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PrefixNetwork|Gk[1][20]~60_combout\,
	datac => \PrefixNetwork|Gk~61_combout\,
	datad => \PrefixNetwork|Gk~68_combout\,
	combout => \PrefixNetwork|Gk[3][22]~70_combout\);

-- Location: LCCOMB_X23_Y71_N8
\PrefixNetwork|Gk[1][22]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][22]~69_combout\ = (\A[22]~input_o\ & ((\B[22]~input_o\) # ((\A[21]~input_o\ & \B[21]~input_o\)))) # (!\A[22]~input_o\ & (\A[21]~input_o\ & (\B[21]~input_o\ & \B[22]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[21]~input_o\,
	datab => \B[21]~input_o\,
	datac => \A[22]~input_o\,
	datad => \B[22]~input_o\,
	combout => \PrefixNetwork|Gk[1][22]~69_combout\);

-- Location: LCCOMB_X25_Y71_N22
\PrefixNetwork|Gk[3][22]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][22]~71_combout\ = (\PrefixNetwork|Gk[1][22]~69_combout\) # ((\PrefixNetwork|Gk[3][22]~70_combout\ & ((\PrefixNetwork|Gk[1][20]~60_combout\) # (!\PrefixNetwork|Gk[3][18]~55_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk[3][22]~70_combout\,
	datab => \PrefixNetwork|Gk[1][20]~60_combout\,
	datac => \PrefixNetwork|Gk[3][18]~55_combout\,
	datad => \PrefixNetwork|Gk[1][22]~69_combout\,
	combout => \PrefixNetwork|Gk[3][22]~71_combout\);

-- Location: LCCOMB_X27_Y71_N8
\c[23]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[23]~34_combout\ = (\PrefixNetwork|Gk[3][22]~71_combout\) # ((\c[27]~33_combout\ & \PrefixNetwork|Gk[3][14]~93_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c[27]~33_combout\,
	datac => \PrefixNetwork|Gk[3][14]~93_combout\,
	datad => \PrefixNetwork|Gk[3][22]~71_combout\,
	combout => \c[23]~34_combout\);

-- Location: LCCOMB_X27_Y71_N30
\S~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~38_combout\ = p(23) $ (((\c[23]~34_combout\) # ((\c[27]~33_combout\ & \c[23]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(23),
	datab => \c[27]~33_combout\,
	datac => \c[23]~34_combout\,
	datad => \c[23]~23_combout\,
	combout => \S~38_combout\);

-- Location: IOIBUF_X0_Y68_N1
\B[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(24),
	o => \B[24]~input_o\);

-- Location: LCCOMB_X24_Y71_N2
\PrefixNetwork|Pk[2][23]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[2][23]~16_combout\ = (\PrefixNetwork|Gk~65_combout\ & (p(23) & (\B[22]~input_o\ $ (\A[22]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk~65_combout\,
	datab => \B[22]~input_o\,
	datac => \A[22]~input_o\,
	datad => p(23),
	combout => \PrefixNetwork|Pk[2][23]~16_combout\);

-- Location: LCCOMB_X24_Y71_N16
\PrefixNetwork|Gk~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~73_combout\ = (p(23) & (\PrefixNetwork|Gk[1][21]~64_combout\ & (\B[22]~input_o\ $ (\A[22]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(23),
	datab => \B[22]~input_o\,
	datac => \PrefixNetwork|Gk[1][21]~64_combout\,
	datad => \A[22]~input_o\,
	combout => \PrefixNetwork|Gk~73_combout\);

-- Location: LCCOMB_X24_Y71_N22
\PrefixNetwork|Gk[1][23]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][23]~72_combout\ = (\A[23]~input_o\ & ((\B[23]~input_o\) # ((\A[22]~input_o\ & \B[22]~input_o\)))) # (!\A[23]~input_o\ & (\A[22]~input_o\ & (\B[23]~input_o\ & \B[22]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[23]~input_o\,
	datab => \A[22]~input_o\,
	datac => \B[23]~input_o\,
	datad => \B[22]~input_o\,
	combout => \PrefixNetwork|Gk[1][23]~72_combout\);

-- Location: LCCOMB_X24_Y71_N20
\PrefixNetwork|Gk[3][23]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][23]~74_combout\ = (\PrefixNetwork|Gk~73_combout\) # ((\PrefixNetwork|Gk[1][23]~72_combout\) # ((\PrefixNetwork|Pk[2][23]~16_combout\ & !\PrefixNetwork|Gk[3][19]~58_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Pk[2][23]~16_combout\,
	datab => \PrefixNetwork|Gk~73_combout\,
	datac => \PrefixNetwork|Gk[1][23]~72_combout\,
	datad => \PrefixNetwork|Gk[3][19]~58_combout\,
	combout => \PrefixNetwork|Gk[3][23]~74_combout\);

-- Location: IOIBUF_X0_Y63_N15
\A[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(24),
	o => \A[24]~input_o\);

-- Location: LCCOMB_X24_Y71_N6
\c[28]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[28]~35_combout\ = (\PrefixNetwork|Gk~49_combout\ & (\PrefixNetwork|Pk[2][23]~16_combout\ & (p(18) & p(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk~49_combout\,
	datab => \PrefixNetwork|Pk[2][23]~16_combout\,
	datac => p(18),
	datad => p(19),
	combout => \c[28]~35_combout\);

-- Location: LCCOMB_X30_Y71_N30
\c[8]\ : cycloneive_lcell_comb
-- Equation(s):
-- c(8) = ((\c~16_combout\) # ((\PrefixNetwork|Pk[2][7]~23_combout\ & \PrefixNetwork|Gpre[7]~3_combout\))) # (!\PrefixNetwork|Gpre[7]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gpre[7]~4_combout\,
	datab => \PrefixNetwork|Pk[2][7]~23_combout\,
	datac => \c~16_combout\,
	datad => \PrefixNetwork|Gpre[7]~3_combout\,
	combout => c(8));

-- Location: LCCOMB_X30_Y71_N28
\c[24]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[24]~36_combout\ = (\c[28]~35_combout\ & ((\PrefixNetwork|Gk[3][15]~43_combout\) # ((\PrefixNetwork|Gk~44_combout\ & c(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c[28]~35_combout\,
	datab => \PrefixNetwork|Gk~44_combout\,
	datac => c(8),
	datad => \PrefixNetwork|Gk[3][15]~43_combout\,
	combout => \c[24]~36_combout\);

-- Location: LCCOMB_X30_Y71_N14
\S~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~39_combout\ = \B[24]~input_o\ $ (\A[24]~input_o\ $ (((\PrefixNetwork|Gk[3][23]~74_combout\) # (\c[24]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[24]~input_o\,
	datab => \PrefixNetwork|Gk[3][23]~74_combout\,
	datac => \A[24]~input_o\,
	datad => \c[24]~36_combout\,
	combout => \S~39_combout\);

-- Location: IOIBUF_X0_Y67_N22
\B[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(25),
	o => \B[25]~input_o\);

-- Location: IOIBUF_X1_Y73_N22
\A[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(25),
	o => \A[25]~input_o\);

-- Location: LCCOMB_X23_Y71_N2
\p[25]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(25) = \B[25]~input_o\ $ (\A[25]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[25]~input_o\,
	datad => \A[25]~input_o\,
	combout => p(25));

-- Location: LCCOMB_X27_Y71_N20
\PrefixNetwork|Pk[2][24]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[2][24]~17_combout\ = (p(23) & (\PrefixNetwork|Gk~68_combout\ & (\B[24]~input_o\ $ (\A[24]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(23),
	datab => \B[24]~input_o\,
	datac => \A[24]~input_o\,
	datad => \PrefixNetwork|Gk~68_combout\,
	combout => \PrefixNetwork|Pk[2][24]~17_combout\);

-- Location: LCCOMB_X27_Y71_N6
\c[25]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[25]~77_combout\ = (\PrefixNetwork|Gk~30_combout\ & (\PrefixNetwork|Pk[2][24]~17_combout\ & (\PrefixNetwork|Gk~23_combout\ & \c[25]~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk~30_combout\,
	datab => \PrefixNetwork|Pk[2][24]~17_combout\,
	datac => \PrefixNetwork|Gk~23_combout\,
	datad => \c[25]~29_combout\,
	combout => \c[25]~77_combout\);

-- Location: LCCOMB_X23_Y71_N28
\PrefixNetwork|Gk[1][24]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][24]~76_combout\ = (\A[24]~input_o\ & ((\B[24]~input_o\) # ((\A[23]~input_o\ & \B[23]~input_o\)))) # (!\A[24]~input_o\ & (\A[23]~input_o\ & (\B[23]~input_o\ & \B[24]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[23]~input_o\,
	datab => \B[23]~input_o\,
	datac => \A[24]~input_o\,
	datad => \B[24]~input_o\,
	combout => \PrefixNetwork|Gk[1][24]~76_combout\);

-- Location: LCCOMB_X27_Y71_N26
\PrefixNetwork|Gk~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~75_combout\ = (p(23) & (\PrefixNetwork|Gk[1][22]~69_combout\ & (\B[24]~input_o\ $ (\A[24]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(23),
	datab => \B[24]~input_o\,
	datac => \A[24]~input_o\,
	datad => \PrefixNetwork|Gk[1][22]~69_combout\,
	combout => \PrefixNetwork|Gk~75_combout\);

-- Location: LCCOMB_X29_Y71_N6
\c[25]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[25]~37_combout\ = (\PrefixNetwork|Gk[1][18]~54_combout\) # ((\PrefixNetwork|Gk~53_combout\ & \PrefixNetwork|Gk[3][16]~48_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PrefixNetwork|Gk~53_combout\,
	datac => \PrefixNetwork|Gk[3][16]~48_combout\,
	datad => \PrefixNetwork|Gk[1][18]~54_combout\,
	combout => \c[25]~37_combout\);

-- Location: LCCOMB_X29_Y71_N20
\c[25]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[25]~38_combout\ = (\PrefixNetwork|Gk[1][20]~60_combout\) # ((\PrefixNetwork|Gk~61_combout\ & \c[25]~37_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PrefixNetwork|Gk~61_combout\,
	datac => \PrefixNetwork|Gk[1][20]~60_combout\,
	datad => \c[25]~37_combout\,
	combout => \c[25]~38_combout\);

-- Location: LCCOMB_X30_Y71_N20
\c[25]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[25]~39_combout\ = (\PrefixNetwork|Gk[1][24]~76_combout\) # ((\PrefixNetwork|Gk~75_combout\) # ((\PrefixNetwork|Pk[2][24]~17_combout\ & \c[25]~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Pk[2][24]~17_combout\,
	datab => \PrefixNetwork|Gk[1][24]~76_combout\,
	datac => \PrefixNetwork|Gk~75_combout\,
	datad => \c[25]~38_combout\,
	combout => \c[25]~39_combout\);

-- Location: LCCOMB_X30_Y71_N6
\S~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~40_combout\ = p(25) $ (((\c[25]~39_combout\) # ((\c[9]~17_combout\ & \c[25]~77_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(25),
	datab => \c[9]~17_combout\,
	datac => \c[25]~77_combout\,
	datad => \c[25]~39_combout\,
	combout => \S~40_combout\);

-- Location: IOIBUF_X16_Y73_N8
\B[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(26),
	o => \B[26]~input_o\);

-- Location: IOIBUF_X20_Y73_N22
\A[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(26),
	o => \A[26]~input_o\);

-- Location: LCCOMB_X23_Y71_N6
\PrefixNetwork|Gk~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~78_combout\ = (\A[25]~input_o\ & (!\B[25]~input_o\ & (\A[24]~input_o\ $ (\B[24]~input_o\)))) # (!\A[25]~input_o\ & (\B[25]~input_o\ & (\A[24]~input_o\ $ (\B[24]~input_o\))))

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
	combout => \PrefixNetwork|Gk~78_combout\);

-- Location: LCCOMB_X24_Y71_N4
\PrefixNetwork|Pk[2][25]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[2][25]~18_combout\ = (\PrefixNetwork|Gk~78_combout\ & (p(23) & (\A[22]~input_o\ $ (\B[22]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[22]~input_o\,
	datab => \B[22]~input_o\,
	datac => \PrefixNetwork|Gk~78_combout\,
	datad => p(23),
	combout => \PrefixNetwork|Pk[2][25]~18_combout\);

-- Location: LCCOMB_X23_Y71_N4
\PrefixNetwork|Gk[1][25]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][25]~77_combout\ = (\B[25]~input_o\ & ((\A[25]~input_o\) # ((\A[24]~input_o\ & \B[24]~input_o\)))) # (!\B[25]~input_o\ & (\A[24]~input_o\ & (\B[24]~input_o\ & \A[25]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[24]~input_o\,
	datab => \B[24]~input_o\,
	datac => \B[25]~input_o\,
	datad => \A[25]~input_o\,
	combout => \PrefixNetwork|Gk[1][25]~77_combout\);

-- Location: LCCOMB_X24_Y71_N18
\c[26]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[26]~40_combout\ = (\PrefixNetwork|Gk[1][21]~64_combout\ & ((\PrefixNetwork|Pk[2][25]~18_combout\) # ((\PrefixNetwork|Gk~78_combout\ & \PrefixNetwork|Gk[1][23]~72_combout\)))) # (!\PrefixNetwork|Gk[1][21]~64_combout\ & (\PrefixNetwork|Gk~78_combout\ & 
-- (\PrefixNetwork|Gk[1][23]~72_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk[1][21]~64_combout\,
	datab => \PrefixNetwork|Gk~78_combout\,
	datac => \PrefixNetwork|Gk[1][23]~72_combout\,
	datad => \PrefixNetwork|Pk[2][25]~18_combout\,
	combout => \c[26]~40_combout\);

-- Location: LCCOMB_X24_Y71_N8
\c[26]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[26]~41_combout\ = (\PrefixNetwork|Gk[1][25]~77_combout\) # ((\c[26]~40_combout\) # ((\PrefixNetwork|Gk~66_combout\ & \PrefixNetwork|Pk[2][25]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk~66_combout\,
	datab => \PrefixNetwork|Pk[2][25]~18_combout\,
	datac => \PrefixNetwork|Gk[1][25]~77_combout\,
	datad => \c[26]~40_combout\,
	combout => \c[26]~41_combout\);

-- Location: LCCOMB_X34_Y71_N4
\c[26]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[26]~42_combout\ = (\PrefixNetwork|Gk~27_combout\ & (\PrefixNetwork|Gk~33_combout\ & (\c[26]~31_combout\ & \PrefixNetwork|Pk[2][25]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk~27_combout\,
	datab => \PrefixNetwork|Gk~33_combout\,
	datac => \c[26]~31_combout\,
	datad => \PrefixNetwork|Pk[2][25]~18_combout\,
	combout => \c[26]~42_combout\);

-- Location: LCCOMB_X34_Y71_N26
\c[26]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[26]~43_combout\ = (\c[26]~42_combout\ & ((\PrefixNetwork|Gk[3][9]~22_combout\) # (\S~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk[3][9]~22_combout\,
	datac => \c[26]~42_combout\,
	datad => \S~21_combout\,
	combout => \c[26]~43_combout\);

-- Location: LCCOMB_X34_Y71_N16
\c[26]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[26]~44_combout\ = (\c[26]~43_combout\) # ((\PrefixNetwork|Pk[2][25]~18_combout\ & (\PrefixNetwork|Pk[2][21]~15_combout\ & \PrefixNetwork|Gk[3][17]~52_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Pk[2][25]~18_combout\,
	datab => \PrefixNetwork|Pk[2][21]~15_combout\,
	datac => \PrefixNetwork|Gk[3][17]~52_combout\,
	datad => \c[26]~43_combout\,
	combout => \c[26]~44_combout\);

-- Location: LCCOMB_X34_Y71_N14
\S~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~41_combout\ = \B[26]~input_o\ $ (\A[26]~input_o\ $ (((\c[26]~41_combout\) # (\c[26]~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[26]~input_o\,
	datab => \A[26]~input_o\,
	datac => \c[26]~41_combout\,
	datad => \c[26]~44_combout\,
	combout => \S~41_combout\);

-- Location: IOIBUF_X16_Y73_N22
\A[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(27),
	o => \A[27]~input_o\);

-- Location: IOIBUF_X16_Y73_N15
\B[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(27),
	o => \B[27]~input_o\);

-- Location: LCCOMB_X23_Y71_N18
\PrefixNetwork|Pk[2][26]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[2][26]~19_combout\ = (p(23) & (\PrefixNetwork|Gk~78_combout\ & (\B[26]~input_o\ $ (\A[26]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[26]~input_o\,
	datab => \A[26]~input_o\,
	datac => p(23),
	datad => \PrefixNetwork|Gk~78_combout\,
	combout => \PrefixNetwork|Pk[2][26]~19_combout\);

-- Location: LCCOMB_X23_Y71_N16
\PrefixNetwork|Gk[1][26]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][26]~80_combout\ = (\B[26]~input_o\ & ((\A[26]~input_o\) # ((\A[25]~input_o\ & \B[25]~input_o\)))) # (!\B[26]~input_o\ & (\A[25]~input_o\ & (\B[25]~input_o\ & \A[26]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[25]~input_o\,
	datab => \B[25]~input_o\,
	datac => \B[26]~input_o\,
	datad => \A[26]~input_o\,
	combout => \PrefixNetwork|Gk[1][26]~80_combout\);

-- Location: LCCOMB_X27_Y71_N16
\PrefixNetwork|Gk~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~79_combout\ = (\PrefixNetwork|Gk[1][24]~76_combout\ & (p(25) & (\B[26]~input_o\ $ (\A[26]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[26]~input_o\,
	datab => \A[26]~input_o\,
	datac => \PrefixNetwork|Gk[1][24]~76_combout\,
	datad => p(25),
	combout => \PrefixNetwork|Gk~79_combout\);

-- Location: LCCOMB_X28_Y71_N16
\c[27]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[27]~45_combout\ = (\PrefixNetwork|Gk[1][26]~80_combout\) # ((\PrefixNetwork|Gk~79_combout\) # ((\PrefixNetwork|Pk[2][26]~19_combout\ & \PrefixNetwork|Gk[1][22]~69_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk[1][26]~80_combout\,
	datab => \PrefixNetwork|Pk[2][26]~19_combout\,
	datac => \PrefixNetwork|Gk~79_combout\,
	datad => \PrefixNetwork|Gk[1][22]~69_combout\,
	combout => \c[27]~45_combout\);

-- Location: LCCOMB_X28_Y71_N26
\c[27]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[27]~46_combout\ = (\c[27]~45_combout\) # ((\PrefixNetwork|Gk[1][20]~60_combout\ & (\PrefixNetwork|Pk[2][26]~19_combout\ & \PrefixNetwork|Gk~68_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk[1][20]~60_combout\,
	datab => \PrefixNetwork|Pk[2][26]~19_combout\,
	datac => \PrefixNetwork|Gk~68_combout\,
	datad => \c[27]~45_combout\,
	combout => \c[27]~46_combout\);

-- Location: LCCOMB_X28_Y71_N30
\c[27]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[27]~78_combout\ = (\PrefixNetwork|Gk~30_combout\ & (\PrefixNetwork|Gk~37_combout\ & (\c[27]~33_combout\ & \PrefixNetwork|Pk[2][26]~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk~30_combout\,
	datab => \PrefixNetwork|Gk~37_combout\,
	datac => \c[27]~33_combout\,
	datad => \PrefixNetwork|Pk[2][26]~19_combout\,
	combout => \c[27]~78_combout\);

-- Location: LCCOMB_X28_Y71_N24
\c[27]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[27]~47_combout\ = (\PrefixNetwork|Gk~61_combout\ & (\PrefixNetwork|Pk[2][26]~19_combout\ & (\PrefixNetwork|Gk~68_combout\ & \PrefixNetwork|Gk[3][18]~56_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk~61_combout\,
	datab => \PrefixNetwork|Pk[2][26]~19_combout\,
	datac => \PrefixNetwork|Gk~68_combout\,
	datad => \PrefixNetwork|Gk[3][18]~56_combout\,
	combout => \c[27]~47_combout\);

-- Location: LCCOMB_X28_Y71_N18
\c[27]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[27]~48_combout\ = (\c[27]~47_combout\) # ((\c[27]~78_combout\ & ((\PrefixNetwork|Gk[3][10]~26_combout\) # (\c[19]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c[27]~78_combout\,
	datab => \c[27]~47_combout\,
	datac => \PrefixNetwork|Gk[3][10]~26_combout\,
	datad => \c[19]~19_combout\,
	combout => \c[27]~48_combout\);

-- Location: LCCOMB_X28_Y71_N8
\S~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~42_combout\ = \A[27]~input_o\ $ (\B[27]~input_o\ $ (((\c[27]~46_combout\) # (\c[27]~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[27]~input_o\,
	datab => \B[27]~input_o\,
	datac => \c[27]~46_combout\,
	datad => \c[27]~48_combout\,
	combout => \S~42_combout\);

-- Location: IOIBUF_X18_Y73_N22
\B[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(28),
	o => \B[28]~input_o\);

-- Location: IOIBUF_X18_Y73_N15
\A[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(28),
	o => \A[28]~input_o\);

-- Location: LCCOMB_X23_Y71_N0
\PrefixNetwork|Gk~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~82_combout\ = (\B[27]~input_o\ & (!\A[27]~input_o\ & (\A[26]~input_o\ $ (\B[26]~input_o\)))) # (!\B[27]~input_o\ & (\A[27]~input_o\ & (\A[26]~input_o\ $ (\B[26]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[27]~input_o\,
	datab => \A[26]~input_o\,
	datac => \B[26]~input_o\,
	datad => \A[27]~input_o\,
	combout => \PrefixNetwork|Gk~82_combout\);

-- Location: LCCOMB_X23_Y71_N14
\c[28]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[28]~49_combout\ = (\PrefixNetwork|Gk~82_combout\ & ((\PrefixNetwork|Gk[1][25]~77_combout\) # ((\PrefixNetwork|Gk~78_combout\ & \PrefixNetwork|Gk[1][23]~72_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk~78_combout\,
	datab => \PrefixNetwork|Gk~82_combout\,
	datac => \PrefixNetwork|Gk[1][25]~77_combout\,
	datad => \PrefixNetwork|Gk[1][23]~72_combout\,
	combout => \c[28]~49_combout\);

-- Location: LCCOMB_X23_Y71_N20
\PrefixNetwork|Pk[2][27]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[2][27]~20_combout\ = (\PrefixNetwork|Gk~78_combout\ & \PrefixNetwork|Gk~82_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk~78_combout\,
	datad => \PrefixNetwork|Gk~82_combout\,
	combout => \PrefixNetwork|Pk[2][27]~20_combout\);

-- Location: LCCOMB_X20_Y71_N12
\PrefixNetwork|Gk[1][27]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][27]~81_combout\ = (\B[27]~input_o\ & ((\A[27]~input_o\) # ((\B[26]~input_o\ & \A[26]~input_o\)))) # (!\B[27]~input_o\ & (\B[26]~input_o\ & (\A[27]~input_o\ & \A[26]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[27]~input_o\,
	datab => \B[26]~input_o\,
	datac => \A[27]~input_o\,
	datad => \A[26]~input_o\,
	combout => \PrefixNetwork|Gk[1][27]~81_combout\);

-- Location: LCCOMB_X26_Y71_N26
\c[28]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[28]~50_combout\ = (\c[28]~49_combout\) # ((\PrefixNetwork|Gk[1][27]~81_combout\) # ((\PrefixNetwork|Gk~73_combout\ & \PrefixNetwork|Pk[2][27]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c[28]~49_combout\,
	datab => \PrefixNetwork|Gk~73_combout\,
	datac => \PrefixNetwork|Pk[2][27]~20_combout\,
	datad => \PrefixNetwork|Gk[1][27]~81_combout\,
	combout => \c[28]~50_combout\);

-- Location: LCCOMB_X26_Y71_N8
\c[28]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[28]~51_combout\ = (\PrefixNetwork|Gk~82_combout\ & (\PrefixNetwork|Gk~78_combout\ & (\PrefixNetwork|Gk~40_combout\ & \PrefixNetwork|Gk~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk~82_combout\,
	datab => \PrefixNetwork|Gk~78_combout\,
	datac => \PrefixNetwork|Gk~40_combout\,
	datad => \PrefixNetwork|Gk~33_combout\,
	combout => \c[28]~51_combout\);

-- Location: LCCOMB_X26_Y71_N18
\c[28]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[28]~52_combout\ = (\c[28]~35_combout\ & (\c[28]~51_combout\ & ((\PrefixNetwork|Gk[3][11]~91_combout\) # (\c[12]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c[28]~35_combout\,
	datab => \c[28]~51_combout\,
	datac => \PrefixNetwork|Gk[3][11]~91_combout\,
	datad => \c[12]~20_combout\,
	combout => \c[28]~52_combout\);

-- Location: LCCOMB_X26_Y71_N24
\c[28]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[28]~53_combout\ = (\c[28]~52_combout\) # ((\PrefixNetwork|Pk[2][27]~20_combout\ & (\PrefixNetwork|Pk[2][23]~16_combout\ & \PrefixNetwork|Gk[3][19]~59_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Pk[2][27]~20_combout\,
	datab => \PrefixNetwork|Pk[2][23]~16_combout\,
	datac => \PrefixNetwork|Gk[3][19]~59_combout\,
	datad => \c[28]~52_combout\,
	combout => \c[28]~53_combout\);

-- Location: LCCOMB_X26_Y71_N20
\S~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~50_combout\ = \B[28]~input_o\ $ (\A[28]~input_o\ $ (((\c[28]~50_combout\) # (\c[28]~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[28]~input_o\,
	datab => \A[28]~input_o\,
	datac => \c[28]~50_combout\,
	datad => \c[28]~53_combout\,
	combout => \S~50_combout\);

-- Location: IOIBUF_X13_Y73_N22
\B[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(29),
	o => \B[29]~input_o\);

-- Location: IOIBUF_X13_Y73_N8
\A[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(29),
	o => \A[29]~input_o\);

-- Location: LCCOMB_X21_Y71_N10
\p[28]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(28) = \B[28]~input_o\ $ (\A[28]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[28]~input_o\,
	datad => \A[28]~input_o\,
	combout => p(28));

-- Location: LCCOMB_X23_Y71_N26
\c[29]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[29]~56_combout\ = (p(28) & (\PrefixNetwork|Gk[1][26]~80_combout\ & (\B[27]~input_o\ $ (\A[27]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[27]~input_o\,
	datab => \A[27]~input_o\,
	datac => p(28),
	datad => \PrefixNetwork|Gk[1][26]~80_combout\,
	combout => \c[29]~56_combout\);

-- Location: LCCOMB_X19_Y71_N0
\PrefixNetwork|Gk[1][28]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][28]~83_combout\ = (\B[28]~input_o\ & ((\A[28]~input_o\) # ((\A[27]~input_o\ & \B[27]~input_o\)))) # (!\B[28]~input_o\ & (\A[28]~input_o\ & (\A[27]~input_o\ & \B[27]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[28]~input_o\,
	datab => \A[28]~input_o\,
	datac => \A[27]~input_o\,
	datad => \B[27]~input_o\,
	combout => \PrefixNetwork|Gk[1][28]~83_combout\);

-- Location: LCCOMB_X23_Y71_N30
\c[29]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[29]~54_combout\ = (\PrefixNetwork|Gk~82_combout\ & (p(25) & (p(28) & \PrefixNetwork|Gk[1][24]~76_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk~82_combout\,
	datab => p(25),
	datac => p(28),
	datad => \PrefixNetwork|Gk[1][24]~76_combout\,
	combout => \c[29]~54_combout\);

-- Location: LCCOMB_X23_Y71_N10
\c[29]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[29]~79_combout\ = (\PrefixNetwork|Gk~82_combout\ & (\B[28]~input_o\ $ (\A[28]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[28]~input_o\,
	datac => \A[28]~input_o\,
	datad => \PrefixNetwork|Gk~82_combout\,
	combout => \c[29]~79_combout\);

-- Location: LCCOMB_X23_Y71_N12
\c[29]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[29]~55_combout\ = (\PrefixNetwork|Gk~78_combout\ & (\PrefixNetwork|Gk[1][22]~69_combout\ & (p(23) & \c[29]~79_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk~78_combout\,
	datab => \PrefixNetwork|Gk[1][22]~69_combout\,
	datac => p(23),
	datad => \c[29]~79_combout\,
	combout => \c[29]~55_combout\);

-- Location: LCCOMB_X23_Y71_N24
\c[29]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[29]~57_combout\ = (\c[29]~56_combout\) # ((\PrefixNetwork|Gk[1][28]~83_combout\) # ((\c[29]~54_combout\) # (\c[29]~55_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c[29]~56_combout\,
	datab => \PrefixNetwork|Gk[1][28]~83_combout\,
	datac => \c[29]~54_combout\,
	datad => \c[29]~55_combout\,
	combout => \c[29]~57_combout\);

-- Location: LCCOMB_X36_Y71_N20
\c[29]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[29]~58_combout\ = (\c[29]~79_combout\ & (\c[25]~29_combout\ & ((\PrefixNetwork|Gk[3][12]~92_combout\) # (\c[13]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c[29]~79_combout\,
	datab => \PrefixNetwork|Gk[3][12]~92_combout\,
	datac => \c[25]~29_combout\,
	datad => \c[13]~21_combout\,
	combout => \c[29]~58_combout\);

-- Location: LCCOMB_X36_Y71_N18
\c[29]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[29]~59_combout\ = (\c[29]~58_combout\) # ((\PrefixNetwork|Gk~82_combout\ & (p(28) & \PrefixNetwork|Gk[3][20]~63_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk~82_combout\,
	datab => p(28),
	datac => \PrefixNetwork|Gk[3][20]~63_combout\,
	datad => \c[29]~58_combout\,
	combout => \c[29]~59_combout\);

-- Location: LCCOMB_X36_Y71_N24
\c[29]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[29]~60_combout\ = (\c[29]~57_combout\) # ((\PrefixNetwork|Pk[2][24]~17_combout\ & (p(25) & \c[29]~59_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Pk[2][24]~17_combout\,
	datab => p(25),
	datac => \c[29]~57_combout\,
	datad => \c[29]~59_combout\,
	combout => \c[29]~60_combout\);

-- Location: LCCOMB_X36_Y71_N2
\S~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~51_combout\ = \B[29]~input_o\ $ (\A[29]~input_o\ $ (\c[29]~60_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[29]~input_o\,
	datac => \A[29]~input_o\,
	datad => \c[29]~60_combout\,
	combout => \S~51_combout\);

-- Location: IOIBUF_X1_Y73_N15
\B[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(30),
	o => \B[30]~input_o\);

-- Location: IOIBUF_X0_Y63_N22
\A[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(30),
	o => \A[30]~input_o\);

-- Location: LCCOMB_X21_Y71_N22
\p[30]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(30) = \B[30]~input_o\ $ (\A[30]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[30]~input_o\,
	datad => \A[30]~input_o\,
	combout => p(30));

-- Location: LCCOMB_X21_Y71_N30
\c[30]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[30]~61_combout\ = (\PrefixNetwork|Gk~82_combout\ & (p(28) & (\B[29]~input_o\ $ (\A[29]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[29]~input_o\,
	datab => \A[29]~input_o\,
	datac => \PrefixNetwork|Gk~82_combout\,
	datad => p(28),
	combout => \c[30]~61_combout\);

-- Location: LCCOMB_X21_Y71_N28
\c[30]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[30]~62_combout\ = (\PrefixNetwork|Pk[2][25]~18_combout\ & (\c[30]~61_combout\ & \PrefixNetwork|Gk[3][21]~67_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PrefixNetwork|Pk[2][25]~18_combout\,
	datac => \c[30]~61_combout\,
	datad => \PrefixNetwork|Gk[3][21]~67_combout\,
	combout => \c[30]~62_combout\);

-- Location: LCCOMB_X21_Y71_N26
\PrefixNetwork|Gk~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~85_combout\ = (\PrefixNetwork|Gk~78_combout\ & \PrefixNetwork|Gk[1][23]~72_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|Gk~78_combout\,
	datad => \PrefixNetwork|Gk[1][23]~72_combout\,
	combout => \PrefixNetwork|Gk~85_combout\);

-- Location: LCCOMB_X21_Y71_N18
\PrefixNetwork|Gk[1][29]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][29]~84_combout\ = (\A[29]~input_o\ & ((\B[29]~input_o\) # ((\A[28]~input_o\ & \B[28]~input_o\)))) # (!\A[29]~input_o\ & (\A[28]~input_o\ & (\B[28]~input_o\ & \B[29]~input_o\)))

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
	combout => \PrefixNetwork|Gk[1][29]~84_combout\);

-- Location: LCCOMB_X21_Y71_N20
\p[29]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(29) = \A[29]~input_o\ $ (\B[29]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[29]~input_o\,
	datad => \B[29]~input_o\,
	combout => p(29));

-- Location: LCCOMB_X21_Y71_N24
\c[30]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[30]~65_combout\ = (\PrefixNetwork|Gk[1][29]~84_combout\) # ((\PrefixNetwork|Gk[1][27]~81_combout\ & (p(29) & p(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk[1][27]~81_combout\,
	datab => \PrefixNetwork|Gk[1][29]~84_combout\,
	datac => p(29),
	datad => p(28),
	combout => \c[30]~65_combout\);

-- Location: LCCOMB_X21_Y71_N8
\c[30]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[30]~66_combout\ = (\c[30]~65_combout\) # ((\c[30]~61_combout\ & ((\PrefixNetwork|Gk~85_combout\) # (\PrefixNetwork|Gk[1][25]~77_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk~85_combout\,
	datab => \c[30]~65_combout\,
	datac => \c[30]~61_combout\,
	datad => \PrefixNetwork|Gk[1][25]~77_combout\,
	combout => \c[30]~66_combout\);

-- Location: LCCOMB_X21_Y71_N14
\c[26]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[26]~63_combout\ = (\PrefixNetwork|Gk~40_combout\ & (\PrefixNetwork|Gk~49_combout\ & (\PrefixNetwork|Pk[2][25]~18_combout\ & \PrefixNetwork|Pk[2][21]~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk~40_combout\,
	datab => \PrefixNetwork|Gk~49_combout\,
	datac => \PrefixNetwork|Pk[2][25]~18_combout\,
	datad => \PrefixNetwork|Pk[2][21]~15_combout\,
	combout => \c[26]~63_combout\);

-- Location: LCCOMB_X21_Y71_N16
\c[30]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[30]~64_combout\ = (\c[30]~61_combout\ & (\c[26]~63_combout\ & ((\PrefixNetwork|Gk[3][13]~36_combout\) # (\c[14]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c[30]~61_combout\,
	datab => \PrefixNetwork|Gk[3][13]~36_combout\,
	datac => \c[26]~63_combout\,
	datad => \c[14]~22_combout\,
	combout => \c[30]~64_combout\);

-- Location: LCCOMB_X21_Y71_N0
\S~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~43_combout\ = p(30) $ (((\c[30]~62_combout\) # ((\c[30]~66_combout\) # (\c[30]~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(30),
	datab => \c[30]~62_combout\,
	datac => \c[30]~66_combout\,
	datad => \c[30]~64_combout\,
	combout => \S~43_combout\);

-- Location: IOIBUF_X0_Y66_N22
\A[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(31),
	o => \A[31]~input_o\);

-- Location: IOIBUF_X0_Y65_N15
\B[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(31),
	o => \B[31]~input_o\);

-- Location: LCCOMB_X26_Y71_N14
\PrefixNetwork|Gk~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~86_combout\ = (\A[29]~input_o\ & (!\B[29]~input_o\ & (\B[30]~input_o\ $ (\A[30]~input_o\)))) # (!\A[29]~input_o\ & (\B[29]~input_o\ & (\B[30]~input_o\ $ (\A[30]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[29]~input_o\,
	datab => \B[30]~input_o\,
	datac => \B[29]~input_o\,
	datad => \A[30]~input_o\,
	combout => \PrefixNetwork|Gk~86_combout\);

-- Location: LCCOMB_X20_Y71_N18
\PrefixNetwork|Gk~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~88_combout\ = (p(28) & (\PrefixNetwork|Gk~86_combout\ & (\A[27]~input_o\ $ (\B[27]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[27]~input_o\,
	datab => p(28),
	datac => \PrefixNetwork|Gk~86_combout\,
	datad => \B[27]~input_o\,
	combout => \PrefixNetwork|Gk~88_combout\);

-- Location: LCCOMB_X25_Y71_N30
\PrefixNetwork|Pk[4][30]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[4][30]~21_combout\ = (\PrefixNetwork|Pk[2][26]~19_combout\ & (\c[27]~33_combout\ & \PrefixNetwork|Gk~88_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PrefixNetwork|Pk[2][26]~19_combout\,
	datac => \c[27]~33_combout\,
	datad => \PrefixNetwork|Gk~88_combout\,
	combout => \PrefixNetwork|Pk[4][30]~21_combout\);

-- Location: LCCOMB_X26_Y71_N12
\PrefixNetwork|Gk[1][30]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][30]~87_combout\ = (\B[30]~input_o\ & ((\A[30]~input_o\) # ((\B[29]~input_o\ & \A[29]~input_o\)))) # (!\B[30]~input_o\ & (\B[29]~input_o\ & (\A[29]~input_o\ & \A[30]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[29]~input_o\,
	datab => \B[30]~input_o\,
	datac => \A[29]~input_o\,
	datad => \A[30]~input_o\,
	combout => \PrefixNetwork|Gk[1][30]~87_combout\);

-- Location: LCCOMB_X25_Y71_N0
\c[31]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[31]~67_combout\ = (p(28) & ((\PrefixNetwork|Gk[1][26]~80_combout\) # ((\PrefixNetwork|Gk[3][22]~71_combout\ & \PrefixNetwork|Pk[2][26]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(28),
	datab => \PrefixNetwork|Gk[1][26]~80_combout\,
	datac => \PrefixNetwork|Gk[3][22]~71_combout\,
	datad => \PrefixNetwork|Pk[2][26]~19_combout\,
	combout => \c[31]~67_combout\);

-- Location: LCCOMB_X25_Y71_N6
\c[31]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[31]~68_combout\ = (\c[29]~54_combout\) # ((\c[31]~67_combout\ & (\B[27]~input_o\ $ (\A[27]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[27]~input_o\,
	datab => \A[27]~input_o\,
	datac => \c[29]~54_combout\,
	datad => \c[31]~67_combout\,
	combout => \c[31]~68_combout\);

-- Location: LCCOMB_X25_Y71_N8
\c[31]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[31]~69_combout\ = (\PrefixNetwork|Gk[1][30]~87_combout\) # ((\PrefixNetwork|Gk~86_combout\ & ((\PrefixNetwork|Gk[1][28]~83_combout\) # (\c[31]~68_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk[1][28]~83_combout\,
	datab => \PrefixNetwork|Gk~86_combout\,
	datac => \PrefixNetwork|Gk[1][30]~87_combout\,
	datad => \c[31]~68_combout\,
	combout => \c[31]~69_combout\);

-- Location: LCCOMB_X25_Y71_N4
\c[31]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[31]~70_combout\ = (\c[31]~69_combout\) # ((\PrefixNetwork|Pk[4][30]~21_combout\ & ((\PrefixNetwork|Gk[3][14]~93_combout\) # (\c[23]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Pk[4][30]~21_combout\,
	datab => \PrefixNetwork|Gk[3][14]~93_combout\,
	datac => \c[31]~69_combout\,
	datad => \c[23]~23_combout\,
	combout => \c[31]~70_combout\);

-- Location: LCCOMB_X25_Y71_N10
\S~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~44_combout\ = \A[31]~input_o\ $ (\B[31]~input_o\ $ (\c[31]~70_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datab => \B[31]~input_o\,
	datac => \c[31]~70_combout\,
	combout => \S~44_combout\);

-- Location: LCCOMB_X26_Y71_N6
\PrefixNetwork|Gk~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~89_combout\ = (p(28) & (\PrefixNetwork|Gk~86_combout\ & (\A[31]~input_o\ $ (\B[31]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datab => p(28),
	datac => \PrefixNetwork|Gk~86_combout\,
	datad => \B[31]~input_o\,
	combout => \PrefixNetwork|Gk~89_combout\);

-- Location: LCCOMB_X25_Y71_N26
\PrefixNetwork|Gk~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~90_combout\ = (\PrefixNetwork|Pk[2][27]~20_combout\ & (\c[28]~35_combout\ & (\PrefixNetwork|Gk~44_combout\ & \PrefixNetwork|Gk~89_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Pk[2][27]~20_combout\,
	datab => \c[28]~35_combout\,
	datac => \PrefixNetwork|Gk~44_combout\,
	datad => \PrefixNetwork|Gk~89_combout\,
	combout => \PrefixNetwork|Gk~90_combout\);

-- Location: LCCOMB_X26_Y71_N30
\c~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \c~80_combout\ = (\PrefixNetwork|Gk~86_combout\ & (\PrefixNetwork|Gk[1][27]~81_combout\ & (\B[28]~input_o\ $ (\A[28]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[28]~input_o\,
	datab => \A[28]~input_o\,
	datac => \PrefixNetwork|Gk~86_combout\,
	datad => \PrefixNetwork|Gk[1][27]~81_combout\,
	combout => \c~80_combout\);

-- Location: LCCOMB_X24_Y71_N30
\c[30]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[30]~72_combout\ = (\PrefixNetwork|Gk[1][25]~77_combout\ & (\c[29]~79_combout\ & (\B[29]~input_o\ $ (\A[29]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[29]~input_o\,
	datab => \A[29]~input_o\,
	datac => \PrefixNetwork|Gk[1][25]~77_combout\,
	datad => \c[29]~79_combout\,
	combout => \c[30]~72_combout\);

-- Location: LCCOMB_X25_Y71_N16
\c~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \c~73_combout\ = (\B[30]~input_o\ & ((\A[30]~input_o\) # ((\PrefixNetwork|Gk[1][29]~84_combout\) # (\c[30]~72_combout\)))) # (!\B[30]~input_o\ & (\A[30]~input_o\ & ((\PrefixNetwork|Gk[1][29]~84_combout\) # (\c[30]~72_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[30]~input_o\,
	datab => \A[30]~input_o\,
	datac => \PrefixNetwork|Gk[1][29]~84_combout\,
	datad => \c[30]~72_combout\,
	combout => \c~73_combout\);

-- Location: LCCOMB_X25_Y71_N18
\c~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \c~74_combout\ = (\A[31]~input_o\ & ((\B[31]~input_o\) # ((\c~80_combout\) # (\c~73_combout\)))) # (!\A[31]~input_o\ & (\B[31]~input_o\ & ((\c~80_combout\) # (\c~73_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datab => \B[31]~input_o\,
	datac => \c~80_combout\,
	datad => \c~73_combout\,
	combout => \c~74_combout\);

-- Location: LCCOMB_X25_Y71_N24
\c~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \c~75_combout\ = (\c~74_combout\) # ((\PrefixNetwork|Pk[2][27]~20_combout\ & (\PrefixNetwork|Gk~89_combout\ & \PrefixNetwork|Gk[3][23]~74_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Pk[2][27]~20_combout\,
	datab => \c~74_combout\,
	datac => \PrefixNetwork|Gk~89_combout\,
	datad => \PrefixNetwork|Gk[3][23]~74_combout\,
	combout => \c~75_combout\);

-- Location: LCCOMB_X30_Y71_N4
\PrefixNetwork|Pk[4][31]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[4][31]~22_combout\ = (\PrefixNetwork|Pk[2][19]~14_combout\ & (\PrefixNetwork|Pk[2][27]~20_combout\ & (\PrefixNetwork|Pk[2][23]~16_combout\ & \PrefixNetwork|Gk~89_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Pk[2][19]~14_combout\,
	datab => \PrefixNetwork|Pk[2][27]~20_combout\,
	datac => \PrefixNetwork|Pk[2][23]~16_combout\,
	datad => \PrefixNetwork|Gk~89_combout\,
	combout => \PrefixNetwork|Pk[4][31]~22_combout\);

-- Location: LCCOMB_X30_Y71_N22
\c~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \c~71_combout\ = (\PrefixNetwork|Pk[4][31]~22_combout\ & ((\PrefixNetwork|Gk[3][15]~43_combout\) # ((\PrefixNetwork|Gk~44_combout\ & \PrefixNetwork|Gpre[7]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk~44_combout\,
	datab => \PrefixNetwork|Gk[3][15]~43_combout\,
	datac => \PrefixNetwork|Pk[4][31]~22_combout\,
	datad => \PrefixNetwork|Gpre[7]~5_combout\,
	combout => \c~71_combout\);

-- Location: LCCOMB_X25_Y71_N20
\c~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \c~76_combout\ = (\c~75_combout\) # ((\c~71_combout\) # ((\PrefixNetwork|Gk~90_combout\ & \c~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk~90_combout\,
	datab => \c~75_combout\,
	datac => \c~71_combout\,
	datad => \c~16_combout\,
	combout => \c~76_combout\);

-- Location: LCCOMB_X25_Y71_N2
\Ovfl~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Ovfl~0_combout\ = \c[31]~70_combout\ $ (\c~76_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \c[31]~70_combout\,
	datad => \c~76_combout\,
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


