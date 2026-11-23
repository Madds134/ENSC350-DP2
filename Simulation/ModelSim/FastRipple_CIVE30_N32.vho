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

-- DATE "11/21/2026 11:56:35"

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
-- S[0]	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[1]	=>  Location: PIN_AA4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[2]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[3]	=>  Location: PIN_AA3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[4]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[5]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[6]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[7]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[8]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[9]	=>  Location: PIN_W1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[10]	=>  Location: PIN_W6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[11]	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[12]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[13]	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[14]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[15]	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[16]	=>  Location: PIN_V2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[17]	=>  Location: PIN_AA5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[18]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[19]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[20]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[21]	=>  Location: PIN_P4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[22]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[23]	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[24]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[25]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[26]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[27]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[28]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[29]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[30]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[31]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cout	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ovfl	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_T2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_T1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cin	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[8]	=>  Location: PIN_P5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[9]	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[10]	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[11]	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[11]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[12]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[12]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[13]	=>  Location: PIN_J8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[13]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[14]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[14]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[15]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[15]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[16]	=>  Location: PIN_J5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[16]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[17]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[17]	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[18]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[18]	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[19]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[19]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[20]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[20]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[21]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[21]	=>  Location: PIN_Y6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[22]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[22]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[23]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[23]	=>  Location: PIN_AB3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[24]	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[24]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[25]	=>  Location: PIN_W7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[25]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[26]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[26]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[27]	=>  Location: PIN_Y7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[27]	=>  Location: PIN_U9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[28]	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[28]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[29]	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[29]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[30]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[30]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[31]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[31]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \Add0~1_cout\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \B[8]~input_o\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \B[9]~input_o\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \B[10]~input_o\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \B[11]~input_o\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \B[12]~input_o\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \B[13]~input_o\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \B[14]~input_o\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \B[15]~input_o\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \B[16]~input_o\ : std_logic;
SIGNAL \A[16]~input_o\ : std_logic;
SIGNAL \Add0~33\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \B[17]~input_o\ : std_logic;
SIGNAL \A[17]~input_o\ : std_logic;
SIGNAL \Add0~35\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \B[18]~input_o\ : std_logic;
SIGNAL \A[18]~input_o\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~38_combout\ : std_logic;
SIGNAL \A[19]~input_o\ : std_logic;
SIGNAL \B[19]~input_o\ : std_logic;
SIGNAL \Add0~39\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \B[20]~input_o\ : std_logic;
SIGNAL \A[20]~input_o\ : std_logic;
SIGNAL \Add0~41\ : std_logic;
SIGNAL \Add0~42_combout\ : std_logic;
SIGNAL \A[21]~input_o\ : std_logic;
SIGNAL \B[21]~input_o\ : std_logic;
SIGNAL \Add0~43\ : std_logic;
SIGNAL \Add0~44_combout\ : std_logic;
SIGNAL \B[22]~input_o\ : std_logic;
SIGNAL \A[22]~input_o\ : std_logic;
SIGNAL \Add0~45\ : std_logic;
SIGNAL \Add0~46_combout\ : std_logic;
SIGNAL \B[23]~input_o\ : std_logic;
SIGNAL \A[23]~input_o\ : std_logic;
SIGNAL \Add0~47\ : std_logic;
SIGNAL \Add0~48_combout\ : std_logic;
SIGNAL \B[24]~input_o\ : std_logic;
SIGNAL \A[24]~input_o\ : std_logic;
SIGNAL \Add0~49\ : std_logic;
SIGNAL \Add0~50_combout\ : std_logic;
SIGNAL \B[25]~input_o\ : std_logic;
SIGNAL \A[25]~input_o\ : std_logic;
SIGNAL \Add0~51\ : std_logic;
SIGNAL \Add0~52_combout\ : std_logic;
SIGNAL \B[26]~input_o\ : std_logic;
SIGNAL \A[26]~input_o\ : std_logic;
SIGNAL \Add0~53\ : std_logic;
SIGNAL \Add0~54_combout\ : std_logic;
SIGNAL \B[27]~input_o\ : std_logic;
SIGNAL \A[27]~input_o\ : std_logic;
SIGNAL \Add0~55\ : std_logic;
SIGNAL \Add0~56_combout\ : std_logic;
SIGNAL \A[28]~input_o\ : std_logic;
SIGNAL \B[28]~input_o\ : std_logic;
SIGNAL \Add0~57\ : std_logic;
SIGNAL \Add0~58_combout\ : std_logic;
SIGNAL \B[29]~input_o\ : std_logic;
SIGNAL \A[29]~input_o\ : std_logic;
SIGNAL \Add0~59\ : std_logic;
SIGNAL \Add0~60_combout\ : std_logic;
SIGNAL \B[30]~input_o\ : std_logic;
SIGNAL \A[30]~input_o\ : std_logic;
SIGNAL \Add0~61\ : std_logic;
SIGNAL \Add0~62_combout\ : std_logic;
SIGNAL \B[31]~input_o\ : std_logic;
SIGNAL \A[31]~input_o\ : std_logic;
SIGNAL \Add0~63\ : std_logic;
SIGNAL \Add0~64_combout\ : std_logic;
SIGNAL \Add0~65\ : std_logic;
SIGNAL \Add0~66_combout\ : std_logic;
SIGNAL \Ovfl~0_combout\ : std_logic;
SIGNAL \ALT_INV_Ovfl~0_combout\ : std_logic;

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
\ALT_INV_Ovfl~0_combout\ <= NOT \Ovfl~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y41_N23
\S[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~2_combout\,
	devoe => ww_devoe,
	o => \S[0]~output_o\);

-- Location: IOOBUF_X9_Y0_N30
\S[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~4_combout\,
	devoe => ww_devoe,
	o => \S[1]~output_o\);

-- Location: IOOBUF_X0_Y41_N9
\S[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~6_combout\,
	devoe => ww_devoe,
	o => \S[2]~output_o\);

-- Location: IOOBUF_X7_Y0_N30
\S[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~8_combout\,
	devoe => ww_devoe,
	o => \S[3]~output_o\);

-- Location: IOOBUF_X0_Y40_N2
\S[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~10_combout\,
	devoe => ww_devoe,
	o => \S[4]~output_o\);

-- Location: IOOBUF_X0_Y37_N2
\S[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~12_combout\,
	devoe => ww_devoe,
	o => \S[5]~output_o\);

-- Location: IOOBUF_X0_Y30_N16
\S[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~14_combout\,
	devoe => ww_devoe,
	o => \S[6]~output_o\);

-- Location: IOOBUF_X0_Y10_N9
\S[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~16_combout\,
	devoe => ww_devoe,
	o => \S[7]~output_o\);

-- Location: IOOBUF_X9_Y0_N9
\S[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~18_combout\,
	devoe => ww_devoe,
	o => \S[8]~output_o\);

-- Location: IOOBUF_X0_Y10_N16
\S[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~20_combout\,
	devoe => ww_devoe,
	o => \S[9]~output_o\);

-- Location: IOOBUF_X7_Y0_N16
\S[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~22_combout\,
	devoe => ww_devoe,
	o => \S[10]~output_o\);

-- Location: IOOBUF_X7_Y0_N9
\S[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~24_combout\,
	devoe => ww_devoe,
	o => \S[11]~output_o\);

-- Location: IOOBUF_X0_Y30_N9
\S[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~26_combout\,
	devoe => ww_devoe,
	o => \S[12]~output_o\);

-- Location: IOOBUF_X0_Y9_N2
\S[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~28_combout\,
	devoe => ww_devoe,
	o => \S[13]~output_o\);

-- Location: IOOBUF_X0_Y20_N2
\S[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~30_combout\,
	devoe => ww_devoe,
	o => \S[14]~output_o\);

-- Location: IOOBUF_X0_Y10_N23
\S[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~32_combout\,
	devoe => ww_devoe,
	o => \S[15]~output_o\);

-- Location: IOOBUF_X0_Y13_N2
\S[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~34_combout\,
	devoe => ww_devoe,
	o => \S[16]~output_o\);

-- Location: IOOBUF_X9_Y0_N16
\S[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~36_combout\,
	devoe => ww_devoe,
	o => \S[17]~output_o\);

-- Location: IOOBUF_X0_Y16_N9
\S[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~38_combout\,
	devoe => ww_devoe,
	o => \S[18]~output_o\);

-- Location: IOOBUF_X0_Y19_N9
\S[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~40_combout\,
	devoe => ww_devoe,
	o => \S[19]~output_o\);

-- Location: IOOBUF_X0_Y20_N23
\S[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~42_combout\,
	devoe => ww_devoe,
	o => \S[20]~output_o\);

-- Location: IOOBUF_X0_Y16_N23
\S[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~44_combout\,
	devoe => ww_devoe,
	o => \S[21]~output_o\);

-- Location: IOOBUF_X0_Y20_N16
\S[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~46_combout\,
	devoe => ww_devoe,
	o => \S[22]~output_o\);

-- Location: IOOBUF_X0_Y16_N16
\S[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~48_combout\,
	devoe => ww_devoe,
	o => \S[23]~output_o\);

-- Location: IOOBUF_X0_Y11_N16
\S[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~50_combout\,
	devoe => ww_devoe,
	o => \S[24]~output_o\);

-- Location: IOOBUF_X0_Y7_N16
\S[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~52_combout\,
	devoe => ww_devoe,
	o => \S[25]~output_o\);

-- Location: IOOBUF_X0_Y11_N2
\S[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~54_combout\,
	devoe => ww_devoe,
	o => \S[26]~output_o\);

-- Location: IOOBUF_X0_Y19_N16
\S[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~56_combout\,
	devoe => ww_devoe,
	o => \S[27]~output_o\);

-- Location: IOOBUF_X0_Y11_N9
\S[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~58_combout\,
	devoe => ww_devoe,
	o => \S[28]~output_o\);

-- Location: IOOBUF_X0_Y13_N9
\S[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~60_combout\,
	devoe => ww_devoe,
	o => \S[29]~output_o\);

-- Location: IOOBUF_X0_Y12_N23
\S[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~62_combout\,
	devoe => ww_devoe,
	o => \S[30]~output_o\);

-- Location: IOOBUF_X0_Y15_N16
\S[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~64_combout\,
	devoe => ww_devoe,
	o => \S[31]~output_o\);

-- Location: IOOBUF_X0_Y15_N23
\Cout~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~66_combout\,
	devoe => ww_devoe,
	o => \Cout~output_o\);

-- Location: IOOBUF_X0_Y15_N2
\Ovfl~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Ovfl~0_combout\,
	devoe => ww_devoe,
	o => \Ovfl~output_o\);

-- Location: IOIBUF_X0_Y21_N15
\B[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X0_Y21_N22
\A[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X0_Y17_N15
\Cin~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cin,
	o => \Cin~input_o\);

-- Location: LCCOMB_X1_Y17_N14
\Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~1_cout\ = CARRY(\Cin~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cin~input_o\,
	datad => VCC,
	cout => \Add0~1_cout\);

-- Location: LCCOMB_X1_Y17_N16
\Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\B[0]~input_o\ & ((\A[0]~input_o\ & (\Add0~1_cout\ & VCC)) # (!\A[0]~input_o\ & (!\Add0~1_cout\)))) # (!\B[0]~input_o\ & ((\A[0]~input_o\ & (!\Add0~1_cout\)) # (!\A[0]~input_o\ & ((\Add0~1_cout\) # (GND)))))
-- \Add0~3\ = CARRY((\B[0]~input_o\ & (!\A[0]~input_o\ & !\Add0~1_cout\)) # (!\B[0]~input_o\ & ((!\Add0~1_cout\) # (!\A[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[0]~input_o\,
	datad => VCC,
	cin => \Add0~1_cout\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: IOIBUF_X0_Y19_N1
\B[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: IOIBUF_X0_Y18_N15
\A[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: LCCOMB_X1_Y17_N18
\Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = ((\B[1]~input_o\ $ (\A[1]~input_o\ $ (!\Add0~3\)))) # (GND)
-- \Add0~5\ = CARRY((\B[1]~input_o\ & ((\A[1]~input_o\) # (!\Add0~3\))) # (!\B[1]~input_o\ & (\A[1]~input_o\ & !\Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[1]~input_o\,
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: IOIBUF_X0_Y18_N8
\A[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: IOIBUF_X0_Y28_N22
\B[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: LCCOMB_X1_Y17_N20
\Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (\A[2]~input_o\ & ((\B[2]~input_o\ & (\Add0~5\ & VCC)) # (!\B[2]~input_o\ & (!\Add0~5\)))) # (!\A[2]~input_o\ & ((\B[2]~input_o\ & (!\Add0~5\)) # (!\B[2]~input_o\ & ((\Add0~5\) # (GND)))))
-- \Add0~7\ = CARRY((\A[2]~input_o\ & (!\B[2]~input_o\ & !\Add0~5\)) # (!\A[2]~input_o\ & ((!\Add0~5\) # (!\B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \B[2]~input_o\,
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: IOIBUF_X0_Y6_N1
\B[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: IOIBUF_X0_Y28_N1
\A[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: LCCOMB_X1_Y17_N22
\Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = ((\B[3]~input_o\ $ (\A[3]~input_o\ $ (!\Add0~7\)))) # (GND)
-- \Add0~9\ = CARRY((\B[3]~input_o\ & ((\A[3]~input_o\) # (!\Add0~7\))) # (!\B[3]~input_o\ & (\A[3]~input_o\ & !\Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \A[3]~input_o\,
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: IOIBUF_X0_Y28_N8
\A[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: IOIBUF_X0_Y37_N15
\B[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: LCCOMB_X1_Y17_N24
\Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (\A[4]~input_o\ & ((\B[4]~input_o\ & (\Add0~9\ & VCC)) # (!\B[4]~input_o\ & (!\Add0~9\)))) # (!\A[4]~input_o\ & ((\B[4]~input_o\ & (!\Add0~9\)) # (!\B[4]~input_o\ & ((\Add0~9\) # (GND)))))
-- \Add0~11\ = CARRY((\A[4]~input_o\ & (!\B[4]~input_o\ & !\Add0~9\)) # (!\A[4]~input_o\ & ((!\Add0~9\) # (!\B[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datab => \B[4]~input_o\,
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: IOIBUF_X0_Y28_N15
\A[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: IOIBUF_X0_Y31_N15
\B[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: LCCOMB_X1_Y17_N26
\Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = ((\A[5]~input_o\ $ (\B[5]~input_o\ $ (!\Add0~11\)))) # (GND)
-- \Add0~13\ = CARRY((\A[5]~input_o\ & ((\B[5]~input_o\) # (!\Add0~11\))) # (!\A[5]~input_o\ & (\B[5]~input_o\ & !\Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~input_o\,
	datab => \B[5]~input_o\,
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: IOIBUF_X0_Y17_N22
\B[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: IOIBUF_X0_Y19_N22
\A[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: LCCOMB_X1_Y17_N28
\Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (\B[6]~input_o\ & ((\A[6]~input_o\ & (\Add0~13\ & VCC)) # (!\A[6]~input_o\ & (!\Add0~13\)))) # (!\B[6]~input_o\ & ((\A[6]~input_o\ & (!\Add0~13\)) # (!\A[6]~input_o\ & ((\Add0~13\) # (GND)))))
-- \Add0~15\ = CARRY((\B[6]~input_o\ & (!\A[6]~input_o\ & !\Add0~13\)) # (!\B[6]~input_o\ & ((!\Add0~13\) # (!\A[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[6]~input_o\,
	datab => \A[6]~input_o\,
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: IOIBUF_X0_Y35_N8
\B[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: IOIBUF_X0_Y37_N22
\A[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: LCCOMB_X1_Y17_N30
\Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = ((\B[7]~input_o\ $ (\A[7]~input_o\ $ (!\Add0~15\)))) # (GND)
-- \Add0~17\ = CARRY((\B[7]~input_o\ & ((\A[7]~input_o\) # (!\Add0~15\))) # (!\B[7]~input_o\ & (\A[7]~input_o\ & !\Add0~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[7]~input_o\,
	datab => \A[7]~input_o\,
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: IOIBUF_X0_Y29_N15
\A[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: IOIBUF_X0_Y12_N15
\B[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

-- Location: LCCOMB_X1_Y16_N0
\Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (\A[8]~input_o\ & ((\B[8]~input_o\ & (\Add0~17\ & VCC)) # (!\B[8]~input_o\ & (!\Add0~17\)))) # (!\A[8]~input_o\ & ((\B[8]~input_o\ & (!\Add0~17\)) # (!\B[8]~input_o\ & ((\Add0~17\) # (GND)))))
-- \Add0~19\ = CARRY((\A[8]~input_o\ & (!\B[8]~input_o\ & !\Add0~17\)) # (!\A[8]~input_o\ & ((!\Add0~17\) # (!\B[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[8]~input_o\,
	datab => \B[8]~input_o\,
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: IOIBUF_X0_Y29_N22
\B[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(9),
	o => \B[9]~input_o\);

-- Location: IOIBUF_X0_Y36_N15
\A[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

-- Location: LCCOMB_X1_Y16_N2
\Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = ((\B[9]~input_o\ $ (\A[9]~input_o\ $ (!\Add0~19\)))) # (GND)
-- \Add0~21\ = CARRY((\B[9]~input_o\ & ((\A[9]~input_o\) # (!\Add0~19\))) # (!\B[9]~input_o\ & (\A[9]~input_o\ & !\Add0~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[9]~input_o\,
	datab => \A[9]~input_o\,
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: IOIBUF_X0_Y5_N1
\A[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

-- Location: IOIBUF_X0_Y16_N1
\B[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(10),
	o => \B[10]~input_o\);

-- Location: LCCOMB_X1_Y16_N4
\Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (\A[10]~input_o\ & ((\B[10]~input_o\ & (\Add0~21\ & VCC)) # (!\B[10]~input_o\ & (!\Add0~21\)))) # (!\A[10]~input_o\ & ((\B[10]~input_o\ & (!\Add0~21\)) # (!\B[10]~input_o\ & ((\Add0~21\) # (GND)))))
-- \Add0~23\ = CARRY((\A[10]~input_o\ & (!\B[10]~input_o\ & !\Add0~21\)) # (!\A[10]~input_o\ & ((!\Add0~21\) # (!\B[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[10]~input_o\,
	datab => \B[10]~input_o\,
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: IOIBUF_X0_Y5_N15
\A[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(11),
	o => \A[11]~input_o\);

-- Location: IOIBUF_X1_Y0_N22
\B[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(11),
	o => \B[11]~input_o\);

-- Location: LCCOMB_X1_Y16_N6
\Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = ((\A[11]~input_o\ $ (\B[11]~input_o\ $ (!\Add0~23\)))) # (GND)
-- \Add0~25\ = CARRY((\A[11]~input_o\ & ((\B[11]~input_o\) # (!\Add0~23\))) # (!\A[11]~input_o\ & (\B[11]~input_o\ & !\Add0~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[11]~input_o\,
	datab => \B[11]~input_o\,
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: IOIBUF_X0_Y2_N1
\A[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(12),
	o => \A[12]~input_o\);

-- Location: IOIBUF_X0_Y20_N8
\B[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(12),
	o => \B[12]~input_o\);

-- Location: LCCOMB_X1_Y16_N8
\Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (\A[12]~input_o\ & ((\B[12]~input_o\ & (\Add0~25\ & VCC)) # (!\B[12]~input_o\ & (!\Add0~25\)))) # (!\A[12]~input_o\ & ((\B[12]~input_o\ & (!\Add0~25\)) # (!\B[12]~input_o\ & ((\Add0~25\) # (GND)))))
-- \Add0~27\ = CARRY((\A[12]~input_o\ & (!\B[12]~input_o\ & !\Add0~25\)) # (!\A[12]~input_o\ & ((!\Add0~25\) # (!\B[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[12]~input_o\,
	datab => \B[12]~input_o\,
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

-- Location: IOIBUF_X0_Y34_N15
\B[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(13),
	o => \B[13]~input_o\);

-- Location: IOIBUF_X0_Y38_N22
\A[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(13),
	o => \A[13]~input_o\);

-- Location: LCCOMB_X1_Y16_N10
\Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = ((\B[13]~input_o\ $ (\A[13]~input_o\ $ (!\Add0~27\)))) # (GND)
-- \Add0~29\ = CARRY((\B[13]~input_o\ & ((\A[13]~input_o\) # (!\Add0~27\))) # (!\B[13]~input_o\ & (\A[13]~input_o\ & !\Add0~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[13]~input_o\,
	datab => \A[13]~input_o\,
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

-- Location: IOIBUF_X0_Y2_N8
\A[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(14),
	o => \A[14]~input_o\);

-- Location: IOIBUF_X0_Y30_N1
\B[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(14),
	o => \B[14]~input_o\);

-- Location: LCCOMB_X1_Y16_N12
\Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (\A[14]~input_o\ & ((\B[14]~input_o\ & (\Add0~29\ & VCC)) # (!\B[14]~input_o\ & (!\Add0~29\)))) # (!\A[14]~input_o\ & ((\B[14]~input_o\ & (!\Add0~29\)) # (!\B[14]~input_o\ & ((\Add0~29\) # (GND)))))
-- \Add0~31\ = CARRY((\A[14]~input_o\ & (!\B[14]~input_o\ & !\Add0~29\)) # (!\A[14]~input_o\ & ((!\Add0~29\) # (!\B[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[14]~input_o\,
	datab => \B[14]~input_o\,
	datad => VCC,
	cin => \Add0~29\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: IOIBUF_X3_Y0_N15
\A[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(15),
	o => \A[15]~input_o\);

-- Location: IOIBUF_X1_Y0_N29
\B[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(15),
	o => \B[15]~input_o\);

-- Location: LCCOMB_X1_Y16_N14
\Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = ((\A[15]~input_o\ $ (\B[15]~input_o\ $ (!\Add0~31\)))) # (GND)
-- \Add0~33\ = CARRY((\A[15]~input_o\ & ((\B[15]~input_o\) # (!\Add0~31\))) # (!\A[15]~input_o\ & (\B[15]~input_o\ & !\Add0~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[15]~input_o\,
	datab => \B[15]~input_o\,
	datad => VCC,
	cin => \Add0~31\,
	combout => \Add0~32_combout\,
	cout => \Add0~33\);

-- Location: IOIBUF_X0_Y32_N15
\B[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(16),
	o => \B[16]~input_o\);

-- Location: IOIBUF_X3_Y0_N22
\A[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(16),
	o => \A[16]~input_o\);

-- Location: LCCOMB_X1_Y16_N16
\Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~34_combout\ = (\B[16]~input_o\ & ((\A[16]~input_o\ & (\Add0~33\ & VCC)) # (!\A[16]~input_o\ & (!\Add0~33\)))) # (!\B[16]~input_o\ & ((\A[16]~input_o\ & (!\Add0~33\)) # (!\A[16]~input_o\ & ((\Add0~33\) # (GND)))))
-- \Add0~35\ = CARRY((\B[16]~input_o\ & (!\A[16]~input_o\ & !\Add0~33\)) # (!\B[16]~input_o\ & ((!\Add0~33\) # (!\A[16]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[16]~input_o\,
	datab => \A[16]~input_o\,
	datad => VCC,
	cin => \Add0~33\,
	combout => \Add0~34_combout\,
	cout => \Add0~35\);

-- Location: IOIBUF_X0_Y3_N1
\B[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(17),
	o => \B[17]~input_o\);

-- Location: IOIBUF_X9_Y0_N22
\A[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(17),
	o => \A[17]~input_o\);

-- Location: LCCOMB_X1_Y16_N18
\Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = ((\B[17]~input_o\ $ (\A[17]~input_o\ $ (!\Add0~35\)))) # (GND)
-- \Add0~37\ = CARRY((\B[17]~input_o\ & ((\A[17]~input_o\) # (!\Add0~35\))) # (!\B[17]~input_o\ & (\A[17]~input_o\ & !\Add0~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[17]~input_o\,
	datab => \A[17]~input_o\,
	datad => VCC,
	cin => \Add0~35\,
	combout => \Add0~36_combout\,
	cout => \Add0~37\);

-- Location: IOIBUF_X0_Y34_N8
\B[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(18),
	o => \B[18]~input_o\);

-- Location: IOIBUF_X0_Y5_N8
\A[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(18),
	o => \A[18]~input_o\);

-- Location: LCCOMB_X1_Y16_N20
\Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~38_combout\ = (\B[18]~input_o\ & ((\A[18]~input_o\ & (\Add0~37\ & VCC)) # (!\A[18]~input_o\ & (!\Add0~37\)))) # (!\B[18]~input_o\ & ((\A[18]~input_o\ & (!\Add0~37\)) # (!\A[18]~input_o\ & ((\Add0~37\) # (GND)))))
-- \Add0~39\ = CARRY((\B[18]~input_o\ & (!\A[18]~input_o\ & !\Add0~37\)) # (!\B[18]~input_o\ & ((!\Add0~37\) # (!\A[18]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[18]~input_o\,
	datab => \A[18]~input_o\,
	datad => VCC,
	cin => \Add0~37\,
	combout => \Add0~38_combout\,
	cout => \Add0~39\);

-- Location: IOIBUF_X0_Y40_N8
\A[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(19),
	o => \A[19]~input_o\);

-- Location: IOIBUF_X14_Y0_N29
\B[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(19),
	o => \B[19]~input_o\);

-- Location: LCCOMB_X1_Y16_N22
\Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~40_combout\ = ((\A[19]~input_o\ $ (\B[19]~input_o\ $ (!\Add0~39\)))) # (GND)
-- \Add0~41\ = CARRY((\A[19]~input_o\ & ((\B[19]~input_o\) # (!\Add0~39\))) # (!\A[19]~input_o\ & (\B[19]~input_o\ & !\Add0~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[19]~input_o\,
	datab => \B[19]~input_o\,
	datad => VCC,
	cin => \Add0~39\,
	combout => \Add0~40_combout\,
	cout => \Add0~41\);

-- Location: IOIBUF_X0_Y4_N22
\B[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(20),
	o => \B[20]~input_o\);

-- Location: IOIBUF_X3_Y0_N29
\A[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(20),
	o => \A[20]~input_o\);

-- Location: LCCOMB_X1_Y16_N24
\Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~42_combout\ = (\B[20]~input_o\ & ((\A[20]~input_o\ & (\Add0~41\ & VCC)) # (!\A[20]~input_o\ & (!\Add0~41\)))) # (!\B[20]~input_o\ & ((\A[20]~input_o\ & (!\Add0~41\)) # (!\A[20]~input_o\ & ((\Add0~41\) # (GND)))))
-- \Add0~43\ = CARRY((\B[20]~input_o\ & (!\A[20]~input_o\ & !\Add0~41\)) # (!\B[20]~input_o\ & ((!\Add0~41\) # (!\A[20]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[20]~input_o\,
	datab => \A[20]~input_o\,
	datad => VCC,
	cin => \Add0~41\,
	combout => \Add0~42_combout\,
	cout => \Add0~43\);

-- Location: IOIBUF_X5_Y0_N15
\A[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(21),
	o => \A[21]~input_o\);

-- Location: IOIBUF_X3_Y0_N8
\B[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(21),
	o => \B[21]~input_o\);

-- Location: LCCOMB_X1_Y16_N26
\Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~44_combout\ = ((\A[21]~input_o\ $ (\B[21]~input_o\ $ (!\Add0~43\)))) # (GND)
-- \Add0~45\ = CARRY((\A[21]~input_o\ & ((\B[21]~input_o\) # (!\Add0~43\))) # (!\A[21]~input_o\ & (\B[21]~input_o\ & !\Add0~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[21]~input_o\,
	datab => \B[21]~input_o\,
	datad => VCC,
	cin => \Add0~43\,
	combout => \Add0~44_combout\,
	cout => \Add0~45\);

-- Location: IOIBUF_X0_Y35_N15
\B[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(22),
	o => \B[22]~input_o\);

-- Location: IOIBUF_X0_Y36_N1
\A[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(22),
	o => \A[22]~input_o\);

-- Location: LCCOMB_X1_Y16_N28
\Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~46_combout\ = (\B[22]~input_o\ & ((\A[22]~input_o\ & (\Add0~45\ & VCC)) # (!\A[22]~input_o\ & (!\Add0~45\)))) # (!\B[22]~input_o\ & ((\A[22]~input_o\ & (!\Add0~45\)) # (!\A[22]~input_o\ & ((\Add0~45\) # (GND)))))
-- \Add0~47\ = CARRY((\B[22]~input_o\ & (!\A[22]~input_o\ & !\Add0~45\)) # (!\B[22]~input_o\ & ((!\Add0~45\) # (!\A[22]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[22]~input_o\,
	datab => \A[22]~input_o\,
	datad => VCC,
	cin => \Add0~45\,
	combout => \Add0~46_combout\,
	cout => \Add0~47\);

-- Location: IOIBUF_X14_Y0_N22
\B[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(23),
	o => \B[23]~input_o\);

-- Location: IOIBUF_X7_Y0_N22
\A[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(23),
	o => \A[23]~input_o\);

-- Location: LCCOMB_X1_Y16_N30
\Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~48_combout\ = ((\B[23]~input_o\ $ (\A[23]~input_o\ $ (!\Add0~47\)))) # (GND)
-- \Add0~49\ = CARRY((\B[23]~input_o\ & ((\A[23]~input_o\) # (!\Add0~47\))) # (!\B[23]~input_o\ & (\A[23]~input_o\ & !\Add0~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[23]~input_o\,
	datab => \A[23]~input_o\,
	datad => VCC,
	cin => \Add0~47\,
	combout => \Add0~48_combout\,
	cout => \Add0~49\);

-- Location: IOIBUF_X0_Y7_N8
\B[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(24),
	o => \B[24]~input_o\);

-- Location: IOIBUF_X0_Y31_N22
\A[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(24),
	o => \A[24]~input_o\);

-- Location: LCCOMB_X1_Y15_N0
\Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~50_combout\ = (\B[24]~input_o\ & ((\A[24]~input_o\ & (\Add0~49\ & VCC)) # (!\A[24]~input_o\ & (!\Add0~49\)))) # (!\B[24]~input_o\ & ((\A[24]~input_o\ & (!\Add0~49\)) # (!\A[24]~input_o\ & ((\Add0~49\) # (GND)))))
-- \Add0~51\ = CARRY((\B[24]~input_o\ & (!\A[24]~input_o\ & !\Add0~49\)) # (!\B[24]~input_o\ & ((!\Add0~49\) # (!\A[24]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[24]~input_o\,
	datab => \A[24]~input_o\,
	datad => VCC,
	cin => \Add0~49\,
	combout => \Add0~50_combout\,
	cout => \Add0~51\);

-- Location: IOIBUF_X14_Y0_N15
\B[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(25),
	o => \B[25]~input_o\);

-- Location: IOIBUF_X0_Y4_N15
\A[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(25),
	o => \A[25]~input_o\);

-- Location: LCCOMB_X1_Y15_N2
\Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~52_combout\ = ((\B[25]~input_o\ $ (\A[25]~input_o\ $ (!\Add0~51\)))) # (GND)
-- \Add0~53\ = CARRY((\B[25]~input_o\ & ((\A[25]~input_o\) # (!\Add0~51\))) # (!\B[25]~input_o\ & (\A[25]~input_o\ & !\Add0~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[25]~input_o\,
	datab => \A[25]~input_o\,
	datad => VCC,
	cin => \Add0~51\,
	combout => \Add0~52_combout\,
	cout => \Add0~53\);

-- Location: IOIBUF_X0_Y7_N1
\B[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(26),
	o => \B[26]~input_o\);

-- Location: IOIBUF_X0_Y39_N1
\A[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(26),
	o => \A[26]~input_o\);

-- Location: LCCOMB_X1_Y15_N4
\Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~54_combout\ = (\B[26]~input_o\ & ((\A[26]~input_o\ & (\Add0~53\ & VCC)) # (!\A[26]~input_o\ & (!\Add0~53\)))) # (!\B[26]~input_o\ & ((\A[26]~input_o\ & (!\Add0~53\)) # (!\A[26]~input_o\ & ((\Add0~53\) # (GND)))))
-- \Add0~55\ = CARRY((\B[26]~input_o\ & (!\A[26]~input_o\ & !\Add0~53\)) # (!\B[26]~input_o\ & ((!\Add0~53\) # (!\A[26]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[26]~input_o\,
	datab => \A[26]~input_o\,
	datad => VCC,
	cin => \Add0~53\,
	combout => \Add0~54_combout\,
	cout => \Add0~55\);

-- Location: IOIBUF_X14_Y0_N8
\B[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(27),
	o => \B[27]~input_o\);

-- Location: IOIBUF_X16_Y0_N22
\A[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(27),
	o => \A[27]~input_o\);

-- Location: LCCOMB_X1_Y15_N6
\Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~56_combout\ = ((\B[27]~input_o\ $ (\A[27]~input_o\ $ (!\Add0~55\)))) # (GND)
-- \Add0~57\ = CARRY((\B[27]~input_o\ & ((\A[27]~input_o\) # (!\Add0~55\))) # (!\B[27]~input_o\ & (\A[27]~input_o\ & !\Add0~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[27]~input_o\,
	datab => \A[27]~input_o\,
	datad => VCC,
	cin => \Add0~55\,
	combout => \Add0~56_combout\,
	cout => \Add0~57\);

-- Location: IOIBUF_X0_Y39_N8
\A[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(28),
	o => \A[28]~input_o\);

-- Location: IOIBUF_X0_Y4_N1
\B[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(28),
	o => \B[28]~input_o\);

-- Location: LCCOMB_X1_Y15_N8
\Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~58_combout\ = (\A[28]~input_o\ & ((\B[28]~input_o\ & (\Add0~57\ & VCC)) # (!\B[28]~input_o\ & (!\Add0~57\)))) # (!\A[28]~input_o\ & ((\B[28]~input_o\ & (!\Add0~57\)) # (!\B[28]~input_o\ & ((\Add0~57\) # (GND)))))
-- \Add0~59\ = CARRY((\A[28]~input_o\ & (!\B[28]~input_o\ & !\Add0~57\)) # (!\A[28]~input_o\ & ((!\Add0~57\) # (!\B[28]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[28]~input_o\,
	datab => \B[28]~input_o\,
	datad => VCC,
	cin => \Add0~57\,
	combout => \Add0~58_combout\,
	cout => \Add0~59\);

-- Location: IOIBUF_X16_Y0_N15
\B[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(29),
	o => \B[29]~input_o\);

-- Location: IOIBUF_X0_Y38_N15
\A[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(29),
	o => \A[29]~input_o\);

-- Location: LCCOMB_X1_Y15_N10
\Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~60_combout\ = ((\B[29]~input_o\ $ (\A[29]~input_o\ $ (!\Add0~59\)))) # (GND)
-- \Add0~61\ = CARRY((\B[29]~input_o\ & ((\A[29]~input_o\) # (!\Add0~59\))) # (!\B[29]~input_o\ & (\A[29]~input_o\ & !\Add0~59\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[29]~input_o\,
	datab => \A[29]~input_o\,
	datad => VCC,
	cin => \Add0~59\,
	combout => \Add0~60_combout\,
	cout => \Add0~61\);

-- Location: IOIBUF_X16_Y0_N1
\B[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(30),
	o => \B[30]~input_o\);

-- Location: IOIBUF_X16_Y0_N8
\A[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(30),
	o => \A[30]~input_o\);

-- Location: LCCOMB_X1_Y15_N12
\Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~62_combout\ = (\B[30]~input_o\ & ((\A[30]~input_o\ & (\Add0~61\ & VCC)) # (!\A[30]~input_o\ & (!\Add0~61\)))) # (!\B[30]~input_o\ & ((\A[30]~input_o\ & (!\Add0~61\)) # (!\A[30]~input_o\ & ((\Add0~61\) # (GND)))))
-- \Add0~63\ = CARRY((\B[30]~input_o\ & (!\A[30]~input_o\ & !\Add0~61\)) # (!\B[30]~input_o\ & ((!\Add0~61\) # (!\A[30]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[30]~input_o\,
	datab => \A[30]~input_o\,
	datad => VCC,
	cin => \Add0~61\,
	combout => \Add0~62_combout\,
	cout => \Add0~63\);

-- Location: IOIBUF_X18_Y0_N22
\B[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(31),
	o => \B[31]~input_o\);

-- Location: IOIBUF_X18_Y0_N1
\A[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(31),
	o => \A[31]~input_o\);

-- Location: LCCOMB_X1_Y15_N14
\Add0~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~64_combout\ = ((\B[31]~input_o\ $ (\A[31]~input_o\ $ (!\Add0~63\)))) # (GND)
-- \Add0~65\ = CARRY((\B[31]~input_o\ & ((\A[31]~input_o\) # (!\Add0~63\))) # (!\B[31]~input_o\ & (\A[31]~input_o\ & !\Add0~63\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[31]~input_o\,
	datab => \A[31]~input_o\,
	datad => VCC,
	cin => \Add0~63\,
	combout => \Add0~64_combout\,
	cout => \Add0~65\);

-- Location: LCCOMB_X1_Y15_N16
\Add0~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~66_combout\ = \Add0~65\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add0~65\,
	combout => \Add0~66_combout\);

-- Location: LCCOMB_X1_Y15_N26
\Ovfl~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Ovfl~0_combout\ = (\B[31]~input_o\ & ((\Add0~64_combout\) # (!\A[31]~input_o\))) # (!\B[31]~input_o\ & ((\A[31]~input_o\) # (!\Add0~64_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[31]~input_o\,
	datac => \Add0~64_combout\,
	datad => \A[31]~input_o\,
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


