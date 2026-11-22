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

-- DATE "11/21/2026 11:52:01"

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
-- S[0]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[1]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[2]	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[3]	=>  Location: PIN_U4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[4]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[5]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[6]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[7]	=>  Location: PIN_P4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[8]	=>  Location: PIN_H3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[9]	=>  Location: PIN_H4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[10]	=>  Location: PIN_K6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[11]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[12]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[13]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[14]	=>  Location: PIN_K3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[15]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cout	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ovfl	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_J8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[8]	=>  Location: PIN_K4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[9]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_J5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[10]	=>  Location: PIN_U5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[11]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[11]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[12]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[12]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[13]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[13]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[14]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[14]	=>  Location: PIN_K5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[15]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[15]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cin	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \c[1]~0_combout\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \c[1]~1_combout\ : std_logic;
SIGNAL \S~1_combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \c[2]~2_combout\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \S~2_combout\ : std_logic;
SIGNAL \c[3]~4_combout\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \c[3]~3_combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \S~3_combout\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \cb~0_combout\ : std_logic;
SIGNAL \S~4_combout\ : std_logic;
SIGNAL \c[5]~5_combout\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \c[5]~6_combout\ : std_logic;
SIGNAL \S~5_combout\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \c[6]~7_combout\ : std_logic;
SIGNAL \S~6_combout\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \c[7]~8_combout\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \c[7]~9_combout\ : std_logic;
SIGNAL \S~7_combout\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \B[8]~input_o\ : std_logic;
SIGNAL \cb~2_combout\ : std_logic;
SIGNAL \S~8_combout\ : std_logic;
SIGNAL \B[9]~input_o\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \c[9]~10_combout\ : std_logic;
SIGNAL \c[9]~11_combout\ : std_logic;
SIGNAL \S~9_combout\ : std_logic;
SIGNAL \B[10]~input_o\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \c[10]~12_combout\ : std_logic;
SIGNAL \S~10_combout\ : std_logic;
SIGNAL \c[11]~13_combout\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \B[11]~input_o\ : std_logic;
SIGNAL \c[11]~14_combout\ : std_logic;
SIGNAL \S~11_combout\ : std_logic;
SIGNAL \B[12]~input_o\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \cb~4_combout\ : std_logic;
SIGNAL \S~12_combout\ : std_logic;
SIGNAL \B[13]~input_o\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \S~13_combout\ : std_logic;
SIGNAL \B[14]~input_o\ : std_logic;
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \c[14]~17_combout\ : std_logic;
SIGNAL \S~14_combout\ : std_logic;
SIGNAL \B[15]~input_o\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \S~15_combout\ : std_logic;
SIGNAL \cb~6_combout\ : std_logic;
SIGNAL \c[15]~15_combout\ : std_logic;
SIGNAL \c[15]~16_combout\ : std_logic;
SIGNAL \Ovfl~0_combout\ : std_logic;
SIGNAL cb : std_logic_vector(4 DOWNTO 0);
SIGNAL rCOut : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_c[3]~4_combout\ : std_logic;
SIGNAL \ALT_INV_c[3]~3_combout\ : std_logic;
SIGNAL \ALT_INV_c[2]~2_combout\ : std_logic;
SIGNAL \ALT_INV_c[1]~1_combout\ : std_logic;
SIGNAL \ALT_INV_c[1]~0_combout\ : std_logic;
SIGNAL \ALT_INV_Cin~input_o\ : std_logic;
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
SIGNAL ALT_INV_cb : std_logic_vector(4 DOWNTO 0);
SIGNAL \ALT_INV_c[14]~17_combout\ : std_logic;
SIGNAL ALT_INV_rCOut : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_cb~6_combout\ : std_logic;
SIGNAL \ALT_INV_cb~4_combout\ : std_logic;
SIGNAL \ALT_INV_cb~2_combout\ : std_logic;
SIGNAL \ALT_INV_cb~0_combout\ : std_logic;
SIGNAL \ALT_INV_c[15]~16_combout\ : std_logic;
SIGNAL \ALT_INV_c[15]~15_combout\ : std_logic;
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
\ALT_INV_c[3]~4_combout\ <= NOT \c[3]~4_combout\;
\ALT_INV_c[3]~3_combout\ <= NOT \c[3]~3_combout\;
\ALT_INV_c[2]~2_combout\ <= NOT \c[2]~2_combout\;
\ALT_INV_c[1]~1_combout\ <= NOT \c[1]~1_combout\;
\ALT_INV_c[1]~0_combout\ <= NOT \c[1]~0_combout\;
\ALT_INV_Cin~input_o\ <= NOT \Cin~input_o\;
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
ALT_INV_cb(0) <= NOT cb(0);
\ALT_INV_c[14]~17_combout\ <= NOT \c[14]~17_combout\;
ALT_INV_rCOut(3) <= NOT rCOut(3);
ALT_INV_rCOut(2) <= NOT rCOut(2);
ALT_INV_rCOut(1) <= NOT rCOut(1);
ALT_INV_rCOut(0) <= NOT rCOut(0);
ALT_INV_cb(4) <= NOT cb(4);
\ALT_INV_cb~6_combout\ <= NOT \cb~6_combout\;
ALT_INV_cb(3) <= NOT cb(3);
\ALT_INV_cb~4_combout\ <= NOT \cb~4_combout\;
ALT_INV_cb(2) <= NOT cb(2);
\ALT_INV_cb~2_combout\ <= NOT \cb~2_combout\;
ALT_INV_cb(1) <= NOT cb(1);
\ALT_INV_cb~0_combout\ <= NOT \cb~0_combout\;
\ALT_INV_c[15]~16_combout\ <= NOT \c[15]~16_combout\;
\ALT_INV_c[15]~15_combout\ <= NOT \c[15]~15_combout\;
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

-- Location: IOOBUF_X59_Y46_N36
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

-- Location: IOOBUF_X59_Y46_N67
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

-- Location: IOOBUF_X59_Y26_N67
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

-- Location: IOOBUF_X59_Y21_N67
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

-- Location: IOOBUF_X59_Y25_N98
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

-- Location: IOOBUF_X59_Y39_N33
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

-- Location: IOOBUF_X59_Y25_N67
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

-- Location: IOOBUF_X59_Y26_N5
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

-- Location: IOOBUF_X59_Y37_N67
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

-- Location: IOOBUF_X59_Y37_N2
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

-- Location: IOOBUF_X59_Y30_N98
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

-- Location: IOOBUF_X59_Y36_N67
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

-- Location: IOOBUF_X59_Y31_N67
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

-- Location: IOOBUF_X59_Y31_N98
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

-- Location: IOOBUF_X59_Y33_N67
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

-- Location: IOOBUF_X59_Y33_N98
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

-- Location: IOOBUF_X59_Y33_N33
\Cout~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => cb(4),
	devoe => ww_devoe,
	o => \Cout~output_o\);

-- Location: IOOBUF_X59_Y33_N5
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

-- Location: IOIBUF_X59_Y34_N94
\A[0]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X59_Y34_N32
\B[0]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X59_Y34_N63
\Cin~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cin,
	o => \Cin~input_o\);

-- Location: LABCELL_X58_Y34_N24
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

-- Location: LABCELL_X58_Y34_N34
\S~0\ : arriaii_lcell_comb
-- Equation(s):
-- \S~0_combout\ = !\A[0]~input_o\ $ (!\B[0]~input_o\ $ (cb(0)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011010011001011001101001100101100110100110010110011010011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[0]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datad => ALT_INV_cb(0),
	combout => \S~0_combout\);

-- Location: LABCELL_X58_Y34_N36
\c[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \c[1]~0_combout\ = ( \A[0]~input_o\ & ( \B[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_A[0]~input_o\,
	combout => \c[1]~0_combout\);

-- Location: IOIBUF_X59_Y36_N1
\B[1]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: IOIBUF_X59_Y34_N1
\A[1]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: MLABCELL_X57_Y33_N24
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

-- Location: LABCELL_X58_Y34_N38
\S~1\ : arriaii_lcell_comb
-- Equation(s):
-- \S~1_combout\ = ( \c[1]~1_combout\ & ( !\B[1]~input_o\ $ (\A[1]~input_o\) ) ) # ( !\c[1]~1_combout\ & ( !\c[1]~0_combout\ $ (!\B[1]~input_o\ $ (\A[1]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011000011001111001100001111110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_c[1]~0_combout\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_A[1]~input_o\,
	dataf => \ALT_INV_c[1]~1_combout\,
	combout => \S~1_combout\);

-- Location: IOIBUF_X59_Y31_N32
\A[2]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: MLABCELL_X57_Y33_N4
\c[2]~2\ : arriaii_lcell_comb
-- Equation(s):
-- \c[2]~2_combout\ = ( \c[1]~1_combout\ & ( (!\A[1]~input_o\ & !\B[1]~input_o\) ) ) # ( !\c[1]~1_combout\ & ( (!\A[1]~input_o\ & ((!\c[1]~0_combout\) # (!\B[1]~input_o\))) # (\A[1]~input_o\ & (!\c[1]~0_combout\ & !\B[1]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110011000000111111001100000011001100000000001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[1]~input_o\,
	datac => \ALT_INV_c[1]~0_combout\,
	datad => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_c[1]~1_combout\,
	combout => \c[2]~2_combout\);

-- Location: IOIBUF_X59_Y31_N1
\B[2]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: LABCELL_X58_Y29_N18
\S~2\ : arriaii_lcell_comb
-- Equation(s):
-- \S~2_combout\ = ( \c[2]~2_combout\ & ( \B[2]~input_o\ & ( !\A[2]~input_o\ ) ) ) # ( !\c[2]~2_combout\ & ( \B[2]~input_o\ & ( \A[2]~input_o\ ) ) ) # ( \c[2]~2_combout\ & ( !\B[2]~input_o\ & ( \A[2]~input_o\ ) ) ) # ( !\c[2]~2_combout\ & ( !\B[2]~input_o\ & 
-- ( !\A[2]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000000000001111111100000000111111111111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_A[2]~input_o\,
	datae => \ALT_INV_c[2]~2_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \S~2_combout\);

-- Location: MLABCELL_X57_Y33_N16
\c[3]~4\ : arriaii_lcell_comb
-- Equation(s):
-- \c[3]~4_combout\ = ( !\c[2]~2_combout\ & ( (\B[2]~input_o\) # (\A[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[2]~input_o\,
	datad => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_c[2]~2_combout\,
	combout => \c[3]~4_combout\);

-- Location: IOIBUF_X59_Y36_N32
\B[3]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: LABCELL_X58_Y31_N32
\c[3]~3\ : arriaii_lcell_comb
-- Equation(s):
-- \c[3]~3_combout\ = ( \A[2]~input_o\ & ( \B[2]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_A[2]~input_o\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \c[3]~3_combout\);

-- Location: IOIBUF_X59_Y36_N94
\A[3]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: MLABCELL_X57_Y33_N22
\S~3\ : arriaii_lcell_comb
-- Equation(s):
-- \S~3_combout\ = ( \A[3]~input_o\ & ( !\B[3]~input_o\ $ (((\c[3]~3_combout\) # (\c[3]~4_combout\))) ) ) # ( !\A[3]~input_o\ & ( !\B[3]~input_o\ $ (((!\c[3]~4_combout\ & !\c[3]~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101011110000010110101111000010100101000011111010010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_c[3]~4_combout\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \ALT_INV_c[3]~3_combout\,
	dataf => \ALT_INV_A[3]~input_o\,
	combout => \S~3_combout\);

-- Location: IOIBUF_X59_Y30_N1
\A[4]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: IOIBUF_X59_Y30_N32
\B[4]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: LABCELL_X58_Y34_N32
\cb~0\ : arriaii_lcell_comb
-- Equation(s):
-- \cb~0_combout\ = ( \B[1]~input_o\ & ( (cb(0) & (!\A[1]~input_o\ & (!\A[0]~input_o\ $ (!\B[0]~input_o\)))) ) ) # ( !\B[1]~input_o\ & ( (cb(0) & (\A[1]~input_o\ & (!\A[0]~input_o\ $ (!\B[0]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000110000000000000011000000110000000000000011000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[0]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => ALT_INV_cb(0),
	datad => \ALT_INV_A[1]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \cb~0_combout\);

-- Location: MLABCELL_X57_Y33_N38
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

-- Location: MLABCELL_X57_Y33_N28
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

-- Location: LABCELL_X58_Y33_N32
\S~4\ : arriaii_lcell_comb
-- Equation(s):
-- \S~4_combout\ = ( cb(1) & ( !\A[4]~input_o\ $ (\B[4]~input_o\) ) ) # ( !cb(1) & ( !\A[4]~input_o\ $ (!\B[4]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000011110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[4]~input_o\,
	datad => \ALT_INV_B[4]~input_o\,
	dataf => ALT_INV_cb(1),
	combout => \S~4_combout\);

-- Location: LABCELL_X58_Y30_N16
\c[5]~5\ : arriaii_lcell_comb
-- Equation(s):
-- \c[5]~5_combout\ = ( \B[4]~input_o\ & ( \A[4]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_A[4]~input_o\,
	combout => \c[5]~5_combout\);

-- Location: IOIBUF_X59_Y30_N63
\A[5]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: IOIBUF_X59_Y28_N63
\B[5]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: MLABCELL_X57_Y33_N2
\c[5]~6\ : arriaii_lcell_comb
-- Equation(s):
-- \c[5]~6_combout\ = ( cb(1) & ( (\B[4]~input_o\) # (\A[4]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[4]~input_o\,
	datad => \ALT_INV_B[4]~input_o\,
	dataf => ALT_INV_cb(1),
	combout => \c[5]~6_combout\);

-- Location: LABCELL_X58_Y33_N14
\S~5\ : arriaii_lcell_comb
-- Equation(s):
-- \S~5_combout\ = ( \c[5]~6_combout\ & ( !\A[5]~input_o\ $ (\B[5]~input_o\) ) ) # ( !\c[5]~6_combout\ & ( !\c[5]~5_combout\ $ (!\A[5]~input_o\ $ (\B[5]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101010100101010110101010010111110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_c[5]~5_combout\,
	datac => \ALT_INV_A[5]~input_o\,
	datad => \ALT_INV_B[5]~input_o\,
	dataf => \ALT_INV_c[5]~6_combout\,
	combout => \S~5_combout\);

-- Location: IOIBUF_X59_Y28_N1
\B[6]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: IOIBUF_X59_Y28_N94
\A[6]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: MLABCELL_X57_Y33_N18
\c[6]~7\ : arriaii_lcell_comb
-- Equation(s):
-- \c[6]~7_combout\ = ( \c[5]~6_combout\ & ( (!\B[5]~input_o\ & !\A[5]~input_o\) ) ) # ( !\c[5]~6_combout\ & ( (!\B[5]~input_o\ & ((!\c[5]~5_combout\) # (!\A[5]~input_o\))) # (\B[5]~input_o\ & (!\c[5]~5_combout\ & !\A[5]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101010100000111110101010000010101010000000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[5]~input_o\,
	datac => \ALT_INV_c[5]~5_combout\,
	datad => \ALT_INV_A[5]~input_o\,
	dataf => \ALT_INV_c[5]~6_combout\,
	combout => \c[6]~7_combout\);

-- Location: LABCELL_X58_Y33_N18
\S~6\ : arriaii_lcell_comb
-- Equation(s):
-- \S~6_combout\ = ( \c[6]~7_combout\ & ( !\B[6]~input_o\ $ (!\A[6]~input_o\) ) ) # ( !\c[6]~7_combout\ & ( !\B[6]~input_o\ $ (\A[6]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101001010101101010100101010101010101101010100101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[6]~input_o\,
	datad => \ALT_INV_A[6]~input_o\,
	dataf => \ALT_INV_c[6]~7_combout\,
	combout => \S~6_combout\);

-- Location: IOIBUF_X59_Y25_N1
\A[7]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: LABCELL_X58_Y28_N34
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

-- Location: IOIBUF_X59_Y28_N32
\B[7]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: MLABCELL_X57_Y33_N14
\c[7]~9\ : arriaii_lcell_comb
-- Equation(s):
-- \c[7]~9_combout\ = ( !\c[6]~7_combout\ & ( (\A[6]~input_o\) # (\B[6]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[6]~input_o\,
	datad => \ALT_INV_A[6]~input_o\,
	dataf => \ALT_INV_c[6]~7_combout\,
	combout => \c[7]~9_combout\);

-- Location: LABCELL_X58_Y26_N2
\S~7\ : arriaii_lcell_comb
-- Equation(s):
-- \S~7_combout\ = ( \B[7]~input_o\ & ( \c[7]~9_combout\ & ( \A[7]~input_o\ ) ) ) # ( !\B[7]~input_o\ & ( \c[7]~9_combout\ & ( !\A[7]~input_o\ ) ) ) # ( \B[7]~input_o\ & ( !\c[7]~9_combout\ & ( !\A[7]~input_o\ $ (\c[7]~8_combout\) ) ) ) # ( !\B[7]~input_o\ & 
-- ( !\c[7]~9_combout\ & ( !\A[7]~input_o\ $ (!\c[7]~8_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000111100000000111111110000111100000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[7]~input_o\,
	datad => \ALT_INV_c[7]~8_combout\,
	datae => \ALT_INV_B[7]~input_o\,
	dataf => \ALT_INV_c[7]~9_combout\,
	combout => \S~7_combout\);

-- Location: IOIBUF_X59_Y37_N94
\A[8]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: IOIBUF_X59_Y39_N63
\B[8]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

-- Location: LABCELL_X58_Y30_N6
\cb~2\ : arriaii_lcell_comb
-- Equation(s):
-- \cb~2_combout\ = ( !\B[6]~input_o\ & ( \A[6]~input_o\ & ( (!\B[5]~input_o\ & (\A[5]~input_o\ & (!\A[4]~input_o\ $ (!\B[4]~input_o\)))) # (\B[5]~input_o\ & (!\A[5]~input_o\ & (!\A[4]~input_o\ $ (!\B[4]~input_o\)))) ) ) ) # ( \B[6]~input_o\ & ( 
-- !\A[6]~input_o\ & ( (!\B[5]~input_o\ & (\A[5]~input_o\ & (!\A[4]~input_o\ $ (!\B[4]~input_o\)))) # (\B[5]~input_o\ & (!\A[5]~input_o\ & (!\A[4]~input_o\ $ (!\B[4]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000101000010100000010100001010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[5]~input_o\,
	datab => \ALT_INV_A[4]~input_o\,
	datac => \ALT_INV_B[4]~input_o\,
	datad => \ALT_INV_A[5]~input_o\,
	datae => \ALT_INV_B[6]~input_o\,
	dataf => \ALT_INV_A[6]~input_o\,
	combout => \cb~2_combout\);

-- Location: MLABCELL_X57_Y33_N26
\rCOut[1]\ : arriaii_lcell_comb
-- Equation(s):
-- rCOut(1) = LCELL(( \c[7]~9_combout\ & ( (\A[7]~input_o\) # (\B[7]~input_o\) ) ) # ( !\c[7]~9_combout\ & ( (!\B[7]~input_o\ & (\c[7]~8_combout\ & \A[7]~input_o\)) # (\B[7]~input_o\ & ((\A[7]~input_o\) # (\c[7]~8_combout\))) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101011111000001010101111101010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[7]~input_o\,
	datac => \ALT_INV_c[7]~8_combout\,
	datad => \ALT_INV_A[7]~input_o\,
	dataf => \ALT_INV_c[7]~9_combout\,
	combout => rCOut(1));

-- Location: MLABCELL_X57_Y33_N8
\cb[2]\ : arriaii_lcell_comb
-- Equation(s):
-- cb(2) = LCELL(( rCOut(1) ) # ( !rCOut(1) & ( (cb(1) & (\cb~2_combout\ & (!\A[7]~input_o\ $ (!\B[7]~input_o\)))) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100010000000000010001000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_cb(1),
	datab => \ALT_INV_cb~2_combout\,
	datac => \ALT_INV_A[7]~input_o\,
	datad => \ALT_INV_B[7]~input_o\,
	dataf => ALT_INV_rCOut(1),
	combout => cb(2));

-- Location: LABCELL_X58_Y33_N38
\S~8\ : arriaii_lcell_comb
-- Equation(s):
-- \S~8_combout\ = ( cb(2) & ( !\A[8]~input_o\ $ (\B[8]~input_o\) ) ) # ( !cb(2) & ( !\A[8]~input_o\ $ (!\B[8]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010010110100101101010100101101001011010010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[8]~input_o\,
	datac => \ALT_INV_B[8]~input_o\,
	dataf => ALT_INV_cb(2),
	combout => \S~8_combout\);

-- Location: IOIBUF_X59_Y21_N94
\B[9]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(9),
	o => \B[9]~input_o\);

-- Location: IOIBUF_X59_Y25_N32
\A[9]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

-- Location: LABCELL_X58_Y37_N8
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

-- Location: MLABCELL_X57_Y33_N34
\c[9]~11\ : arriaii_lcell_comb
-- Equation(s):
-- \c[9]~11_combout\ = ( cb(2) & ( (\B[8]~input_o\) # (\A[8]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[8]~input_o\,
	datac => \ALT_INV_B[8]~input_o\,
	dataf => ALT_INV_cb(2),
	combout => \c[9]~11_combout\);

-- Location: LABCELL_X58_Y33_N12
\S~9\ : arriaii_lcell_comb
-- Equation(s):
-- \S~9_combout\ = ( \c[9]~11_combout\ & ( !\B[9]~input_o\ $ (\A[9]~input_o\) ) ) # ( !\c[9]~11_combout\ & ( !\B[9]~input_o\ $ (!\A[9]~input_o\ $ (\c[9]~10_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011000011001111001100001111000011110000111100001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[9]~input_o\,
	datac => \ALT_INV_A[9]~input_o\,
	datad => \ALT_INV_c[9]~10_combout\,
	dataf => \ALT_INV_c[9]~11_combout\,
	combout => \S~9_combout\);

-- Location: IOIBUF_X59_Y21_N1
\B[10]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(10),
	o => \B[10]~input_o\);

-- Location: IOIBUF_X59_Y37_N32
\A[10]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

-- Location: MLABCELL_X57_Y33_N20
\c[10]~12\ : arriaii_lcell_comb
-- Equation(s):
-- \c[10]~12_combout\ = ( \c[9]~11_combout\ & ( (!\B[9]~input_o\ & !\A[9]~input_o\) ) ) # ( !\c[9]~11_combout\ & ( (!\c[9]~10_combout\ & ((!\B[9]~input_o\) # (!\A[9]~input_o\))) # (\c[9]~10_combout\ & (!\B[9]~input_o\ & !\A[9]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110011000000111111001100000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_c[9]~10_combout\,
	datac => \ALT_INV_B[9]~input_o\,
	datad => \ALT_INV_A[9]~input_o\,
	dataf => \ALT_INV_c[9]~11_combout\,
	combout => \c[10]~12_combout\);

-- Location: LABCELL_X58_Y33_N16
\S~10\ : arriaii_lcell_comb
-- Equation(s):
-- \S~10_combout\ = ( \c[10]~12_combout\ & ( !\B[10]~input_o\ $ (!\A[10]~input_o\) ) ) # ( !\c[10]~12_combout\ & ( !\B[10]~input_o\ $ (\A[10]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000001111111100000000111100001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[10]~input_o\,
	datad => \ALT_INV_A[10]~input_o\,
	dataf => \ALT_INV_c[10]~12_combout\,
	combout => \S~10_combout\);

-- Location: LABCELL_X58_Y33_N24
\c[11]~13\ : arriaii_lcell_comb
-- Equation(s):
-- \c[11]~13_combout\ = ( \B[10]~input_o\ & ( \A[10]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_A[10]~input_o\,
	dataf => \ALT_INV_B[10]~input_o\,
	combout => \c[11]~13_combout\);

-- Location: IOIBUF_X59_Y21_N32
\A[11]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(11),
	o => \A[11]~input_o\);

-- Location: IOIBUF_X59_Y39_N94
\B[11]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(11),
	o => \B[11]~input_o\);

-- Location: MLABCELL_X57_Y33_N36
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

-- Location: LABCELL_X58_Y33_N34
\S~11\ : arriaii_lcell_comb
-- Equation(s):
-- \S~11_combout\ = ( \c[11]~14_combout\ & ( !\A[11]~input_o\ $ (\B[11]~input_o\) ) ) # ( !\c[11]~14_combout\ & ( !\c[11]~13_combout\ $ (!\A[11]~input_o\ $ (\B[11]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101010100101010110101010010111110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_c[11]~13_combout\,
	datac => \ALT_INV_A[11]~input_o\,
	datad => \ALT_INV_B[11]~input_o\,
	dataf => \ALT_INV_c[11]~14_combout\,
	combout => \S~11_combout\);

-- Location: IOIBUF_X59_Y26_N94
\B[12]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(12),
	o => \B[12]~input_o\);

-- Location: IOIBUF_X59_Y46_N94
\A[12]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(12),
	o => \A[12]~input_o\);

-- Location: LABCELL_X58_Y33_N0
\cb~4\ : arriaii_lcell_comb
-- Equation(s):
-- \cb~4_combout\ = ( !\B[8]~input_o\ & ( \A[8]~input_o\ & ( (!\B[10]~input_o\ & (\A[10]~input_o\ & (!\B[9]~input_o\ $ (!\A[9]~input_o\)))) # (\B[10]~input_o\ & (!\A[10]~input_o\ & (!\B[9]~input_o\ $ (!\A[9]~input_o\)))) ) ) ) # ( \B[8]~input_o\ & ( 
-- !\A[8]~input_o\ & ( (!\B[10]~input_o\ & (\A[10]~input_o\ & (!\B[9]~input_o\ $ (!\A[9]~input_o\)))) # (\B[10]~input_o\ & (!\A[10]~input_o\ & (!\B[9]~input_o\ $ (!\A[9]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000101000010100000010100001010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[10]~input_o\,
	datab => \ALT_INV_B[9]~input_o\,
	datac => \ALT_INV_A[9]~input_o\,
	datad => \ALT_INV_A[10]~input_o\,
	datae => \ALT_INV_B[8]~input_o\,
	dataf => \ALT_INV_A[8]~input_o\,
	combout => \cb~4_combout\);

-- Location: MLABCELL_X57_Y33_N6
\rCOut[2]\ : arriaii_lcell_comb
-- Equation(s):
-- rCOut(2) = LCELL(( \c[11]~14_combout\ & ( (\B[11]~input_o\) # (\A[11]~input_o\) ) ) # ( !\c[11]~14_combout\ & ( (!\A[11]~input_o\ & (\c[11]~13_combout\ & \B[11]~input_o\)) # (\A[11]~input_o\ & ((\B[11]~input_o\) # (\c[11]~13_combout\))) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101011111000001010101111101010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[11]~input_o\,
	datac => \ALT_INV_c[11]~13_combout\,
	datad => \ALT_INV_B[11]~input_o\,
	dataf => \ALT_INV_c[11]~14_combout\,
	combout => rCOut(2));

-- Location: MLABCELL_X57_Y33_N12
\cb[3]\ : arriaii_lcell_comb
-- Equation(s):
-- cb(3) = LCELL(( rCOut(2) ) # ( !rCOut(2) & ( (\cb~4_combout\ & (cb(2) & (!\A[11]~input_o\ $ (!\B[11]~input_o\)))) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000110000000000000011011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[11]~input_o\,
	datab => \ALT_INV_B[11]~input_o\,
	datac => \ALT_INV_cb~4_combout\,
	datad => ALT_INV_cb(2),
	dataf => ALT_INV_rCOut(2),
	combout => cb(3));

-- Location: LABCELL_X58_Y33_N28
\S~12\ : arriaii_lcell_comb
-- Equation(s):
-- \S~12_combout\ = ( \A[12]~input_o\ & ( cb(3) & ( \B[12]~input_o\ ) ) ) # ( !\A[12]~input_o\ & ( cb(3) & ( !\B[12]~input_o\ ) ) ) # ( \A[12]~input_o\ & ( !cb(3) & ( !\B[12]~input_o\ ) ) ) # ( !\A[12]~input_o\ & ( !cb(3) & ( \B[12]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111100001111000011110000111100000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[12]~input_o\,
	datae => \ALT_INV_A[12]~input_o\,
	dataf => ALT_INV_cb(3),
	combout => \S~12_combout\);

-- Location: IOIBUF_X59_Y46_N1
\B[13]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(13),
	o => \B[13]~input_o\);

-- Location: IOIBUF_X59_Y26_N32
\A[13]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(13),
	o => \A[13]~input_o\);

-- Location: LABCELL_X58_Y33_N26
\S~13\ : arriaii_lcell_comb
-- Equation(s):
-- \S~13_combout\ = ( cb(3) & ( !\B[13]~input_o\ $ (!\A[13]~input_o\ $ (((\A[12]~input_o\) # (\B[12]~input_o\)))) ) ) # ( !cb(3) & ( !\B[13]~input_o\ $ (!\A[13]~input_o\ $ (((\B[12]~input_o\ & \A[12]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111011100001000111101110000101111000100001110111100010000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[12]~input_o\,
	datab => \ALT_INV_A[12]~input_o\,
	datac => \ALT_INV_B[13]~input_o\,
	datad => \ALT_INV_A[13]~input_o\,
	dataf => ALT_INV_cb(3),
	combout => \S~13_combout\);

-- Location: IOIBUF_X59_Y39_N1
\B[14]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(14),
	o => \B[14]~input_o\);

-- Location: IOIBUF_X59_Y48_N32
\A[14]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(14),
	o => \A[14]~input_o\);

-- Location: MLABCELL_X57_Y33_N0
\c[14]~17\ : arriaii_lcell_comb
-- Equation(s):
-- \c[14]~17_combout\ = ( cb(3) & ( (!\B[13]~input_o\ & (\A[13]~input_o\ & ((\A[12]~input_o\) # (\B[12]~input_o\)))) # (\B[13]~input_o\ & (((\A[12]~input_o\) # (\A[13]~input_o\)) # (\B[12]~input_o\))) ) ) # ( !cb(3) & ( (!\B[13]~input_o\ & (\B[12]~input_o\ & 
-- (\A[13]~input_o\ & \A[12]~input_o\))) # (\B[13]~input_o\ & (((\B[12]~input_o\ & \A[12]~input_o\)) # (\A[13]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100010111000000110001011100010111001111110001011100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[12]~input_o\,
	datab => \ALT_INV_B[13]~input_o\,
	datac => \ALT_INV_A[13]~input_o\,
	datad => \ALT_INV_A[12]~input_o\,
	dataf => ALT_INV_cb(3),
	combout => \c[14]~17_combout\);

-- Location: LABCELL_X58_Y33_N36
\S~14\ : arriaii_lcell_comb
-- Equation(s):
-- \S~14_combout\ = ( \c[14]~17_combout\ & ( !\B[14]~input_o\ $ (\A[14]~input_o\) ) ) # ( !\c[14]~17_combout\ & ( !\B[14]~input_o\ $ (!\A[14]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000111100001111000011110011000011110000111100001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[14]~input_o\,
	datac => \ALT_INV_A[14]~input_o\,
	dataf => \ALT_INV_c[14]~17_combout\,
	combout => \S~14_combout\);

-- Location: IOIBUF_X59_Y22_N63
\B[15]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(15),
	o => \B[15]~input_o\);

-- Location: IOIBUF_X59_Y48_N94
\A[15]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(15),
	o => \A[15]~input_o\);

-- Location: LABCELL_X58_Y33_N8
\S~15\ : arriaii_lcell_comb
-- Equation(s):
-- \S~15_combout\ = ( \c[14]~17_combout\ & ( !\B[15]~input_o\ $ (!\A[15]~input_o\ $ (((\B[14]~input_o\) # (\A[14]~input_o\)))) ) ) # ( !\c[14]~17_combout\ & ( !\B[15]~input_o\ $ (!\A[15]~input_o\ $ (((\A[14]~input_o\ & \B[14]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001101001011001100110100101101001100110010110100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[15]~input_o\,
	datab => \ALT_INV_A[15]~input_o\,
	datac => \ALT_INV_A[14]~input_o\,
	datad => \ALT_INV_B[14]~input_o\,
	dataf => \ALT_INV_c[14]~17_combout\,
	combout => \S~15_combout\);

-- Location: LABCELL_X58_Y33_N4
\cb~6\ : arriaii_lcell_comb
-- Equation(s):
-- \cb~6_combout\ = ( \A[12]~input_o\ & ( \A[14]~input_o\ & ( (!\B[14]~input_o\ & (!\B[12]~input_o\ & (!\A[13]~input_o\ $ (!\B[13]~input_o\)))) ) ) ) # ( !\A[12]~input_o\ & ( \A[14]~input_o\ & ( (!\B[14]~input_o\ & (\B[12]~input_o\ & (!\A[13]~input_o\ $ 
-- (!\B[13]~input_o\)))) ) ) ) # ( \A[12]~input_o\ & ( !\A[14]~input_o\ & ( (\B[14]~input_o\ & (!\B[12]~input_o\ & (!\A[13]~input_o\ $ (!\B[13]~input_o\)))) ) ) ) # ( !\A[12]~input_o\ & ( !\A[14]~input_o\ & ( (\B[14]~input_o\ & (\B[12]~input_o\ & 
-- (!\A[13]~input_o\ $ (!\B[13]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000010000100000010000000000100000010000100000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[13]~input_o\,
	datab => \ALT_INV_B[14]~input_o\,
	datac => \ALT_INV_B[12]~input_o\,
	datad => \ALT_INV_B[13]~input_o\,
	datae => \ALT_INV_A[12]~input_o\,
	dataf => \ALT_INV_A[14]~input_o\,
	combout => \cb~6_combout\);

-- Location: LABCELL_X58_Y33_N20
\c[15]~15\ : arriaii_lcell_comb
-- Equation(s):
-- \c[15]~15_combout\ = ( \B[14]~input_o\ & ( \A[14]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[14]~input_o\,
	dataf => \ALT_INV_B[14]~input_o\,
	combout => \c[15]~15_combout\);

-- Location: MLABCELL_X57_Y33_N10
\c[15]~16\ : arriaii_lcell_comb
-- Equation(s):
-- \c[15]~16_combout\ = ( \c[14]~17_combout\ & ( (\B[14]~input_o\) # (\A[14]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[14]~input_o\,
	datad => \ALT_INV_B[14]~input_o\,
	dataf => \ALT_INV_c[14]~17_combout\,
	combout => \c[15]~16_combout\);

-- Location: MLABCELL_X57_Y33_N32
\rCOut[3]\ : arriaii_lcell_comb
-- Equation(s):
-- rCOut(3) = LCELL(( \c[15]~16_combout\ & ( (\A[15]~input_o\) # (\B[15]~input_o\) ) ) # ( !\c[15]~16_combout\ & ( (!\B[15]~input_o\ & (\A[15]~input_o\ & \c[15]~15_combout\)) # (\B[15]~input_o\ & ((\c[15]~15_combout\) # (\A[15]~input_o\))) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100111111000000110011111100111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[15]~input_o\,
	datac => \ALT_INV_A[15]~input_o\,
	datad => \ALT_INV_c[15]~15_combout\,
	dataf => \ALT_INV_c[15]~16_combout\,
	combout => rCOut(3));

-- Location: LABCELL_X58_Y33_N10
\cb[4]\ : arriaii_lcell_comb
-- Equation(s):
-- cb(4) = LCELL(( rCOut(3) ) # ( !rCOut(3) & ( (cb(3) & (\cb~6_combout\ & (!\B[15]~input_o\ $ (!\A[15]~input_o\)))) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000110000000000000011011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[15]~input_o\,
	datab => \ALT_INV_A[15]~input_o\,
	datac => ALT_INV_cb(3),
	datad => \ALT_INV_cb~6_combout\,
	dataf => ALT_INV_rCOut(3),
	combout => cb(4));

-- Location: LABCELL_X58_Y33_N22
\Ovfl~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Ovfl~0_combout\ = ( cb(4) & ( (!\c[15]~15_combout\ & !\c[15]~16_combout\) ) ) # ( !cb(4) & ( (\c[15]~16_combout\) # (\c[15]~15_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111111110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_c[15]~15_combout\,
	datad => \ALT_INV_c[15]~16_combout\,
	dataf => ALT_INV_cb(4),
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


