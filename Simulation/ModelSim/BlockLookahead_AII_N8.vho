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

-- DATE "11/21/2026 11:34:14"

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
	A : IN std_logic_vector(7 DOWNTO 0);
	B : IN std_logic_vector(7 DOWNTO 0);
	S : OUT std_logic_vector(7 DOWNTO 0);
	Cin : IN std_logic;
	Cout : OUT std_logic;
	Ovfl : OUT std_logic
	);
END Adder;

-- Design Ports Information
-- S[0]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[1]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[2]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[3]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[4]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[5]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[6]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[7]	=>  Location: PIN_K14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cout	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ovfl	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cin	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_K13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_A : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_S : std_logic_vector(7 DOWNTO 0);
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
SIGNAL \CarryNetwork|Recur:Low_half|cMid~0DUPLICATE_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:Low_half|Recur:Low_half|BG~0_combout\ : std_logic;
SIGNAL \S~2_combout\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \S~7_combout\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:Low_half|Recur:High_half|BG~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:Low_half|BG~0DUPLICATE_combout\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \S~3_combout\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:Low_half|BG~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:Low_half|BG~combout\ : std_logic;
SIGNAL \CarryNetwork|cMid~0_combout\ : std_logic;
SIGNAL \S~6_combout\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:High_half|Recur:Low_half|BG~0_combout\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:Low_half|Recur:High_half|BG~0DUPLICATE_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:Low_half|cMid~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:High_half|cMid~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:High_half|cMid~1_combout\ : std_logic;
SIGNAL \S~4_combout\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:High_half|Recur:High_half|Recur:cMid~0_combout\ : std_logic;
SIGNAL \S~5_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|c[1]~0_combout\ : std_logic;
SIGNAL \Ovfl~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:Low_half|ALT_INV_BG~0DUPLICATE_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:Low_half|Recur:High_half|ALT_INV_BG~0DUPLICATE_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:Low_half|ALT_INV_cMid~0DUPLICATE_combout\ : std_logic;
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
SIGNAL \CarryNetwork|Recur:High_half|Recur:High_half|ALT_INV_Recur:cMid~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:High_half|ALT_INV_cMid~1_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:High_half|ALT_INV_cMid~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:High_half|Recur:Low_half|ALT_INV_BG~0_combout\ : std_logic;
SIGNAL \CarryNetwork|ALT_INV_cMid~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:Low_half|ALT_INV_BG~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:Low_half|ALT_INV_BG~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:Low_half|Recur:High_half|ALT_INV_BG~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:Low_half|ALT_INV_cMid~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:Low_half|Recur:Low_half|ALT_INV_BG~0_combout\ : std_logic;

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
\CarryNetwork|Recur:Low_half|ALT_INV_BG~0DUPLICATE_combout\ <= NOT \CarryNetwork|Recur:Low_half|BG~0DUPLICATE_combout\;
\CarryNetwork|Recur:Low_half|Recur:High_half|ALT_INV_BG~0DUPLICATE_combout\ <= NOT \CarryNetwork|Recur:Low_half|Recur:High_half|BG~0DUPLICATE_combout\;
\CarryNetwork|Recur:Low_half|ALT_INV_cMid~0DUPLICATE_combout\ <= NOT \CarryNetwork|Recur:Low_half|cMid~0DUPLICATE_combout\;
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
\CarryNetwork|Recur:High_half|Recur:High_half|ALT_INV_Recur:cMid~0_combout\ <= NOT \CarryNetwork|Recur:High_half|Recur:High_half|Recur:cMid~0_combout\;
\CarryNetwork|Recur:High_half|ALT_INV_cMid~1_combout\ <= NOT \CarryNetwork|Recur:High_half|cMid~1_combout\;
\CarryNetwork|Recur:High_half|ALT_INV_cMid~0_combout\ <= NOT \CarryNetwork|Recur:High_half|cMid~0_combout\;
\CarryNetwork|Recur:High_half|Recur:Low_half|ALT_INV_BG~0_combout\ <= NOT \CarryNetwork|Recur:High_half|Recur:Low_half|BG~0_combout\;
\CarryNetwork|ALT_INV_cMid~0_combout\ <= NOT \CarryNetwork|cMid~0_combout\;
\CarryNetwork|Recur:Low_half|ALT_INV_BG~combout\ <= NOT \CarryNetwork|Recur:Low_half|BG~combout\;
\CarryNetwork|Recur:Low_half|ALT_INV_BG~0_combout\ <= NOT \CarryNetwork|Recur:Low_half|BG~0_combout\;
\CarryNetwork|Recur:Low_half|Recur:High_half|ALT_INV_BG~0_combout\ <= NOT \CarryNetwork|Recur:Low_half|Recur:High_half|BG~0_combout\;
\CarryNetwork|Recur:Low_half|ALT_INV_cMid~0_combout\ <= NOT \CarryNetwork|Recur:Low_half|cMid~0_combout\;
\CarryNetwork|Recur:Low_half|Recur:Low_half|ALT_INV_BG~0_combout\ <= NOT \CarryNetwork|Recur:Low_half|Recur:Low_half|BG~0_combout\;

-- Location: IOOBUF_X40_Y56_N5
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

-- Location: IOOBUF_X40_Y56_N98
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

-- Location: IOOBUF_X38_Y56_N36
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

-- Location: IOOBUF_X31_Y56_N2
\S[3]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~7_combout\,
	devoe => ww_devoe,
	o => \S[3]~output_o\);

-- Location: IOOBUF_X36_Y56_N67
\S[4]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~3_combout\,
	devoe => ww_devoe,
	o => \S[4]~output_o\);

-- Location: IOOBUF_X35_Y56_N36
\S[5]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~6_combout\,
	devoe => ww_devoe,
	o => \S[5]~output_o\);

-- Location: IOOBUF_X33_Y56_N67
\S[6]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~4_combout\,
	devoe => ww_devoe,
	o => \S[6]~output_o\);

-- Location: IOOBUF_X33_Y56_N33
\S[7]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~5_combout\,
	devoe => ww_devoe,
	o => \S[7]~output_o\);

-- Location: IOOBUF_X33_Y56_N98
\Cout~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|c[1]~0_combout\,
	devoe => ww_devoe,
	o => \Cout~output_o\);

-- Location: IOOBUF_X33_Y56_N5
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

-- Location: IOIBUF_X35_Y56_N1
\B[0]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X38_Y56_N1
\A[0]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X38_Y56_N63
\Cin~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cin,
	o => \Cin~input_o\);

-- Location: MLABCELL_X39_Y55_N8
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

-- Location: IOIBUF_X35_Y56_N94
\A[1]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: IOIBUF_X35_Y56_N63
\B[1]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: MLABCELL_X39_Y55_N4
\S~1\ : arriaii_lcell_comb
-- Equation(s):
-- \S~1_combout\ = ( \A[0]~input_o\ & ( \Cin~input_o\ & ( !\A[1]~input_o\ $ (\B[1]~input_o\) ) ) ) # ( !\A[0]~input_o\ & ( \Cin~input_o\ & ( !\A[1]~input_o\ $ (!\B[1]~input_o\ $ (\B[0]~input_o\)) ) ) ) # ( \A[0]~input_o\ & ( !\Cin~input_o\ & ( 
-- !\A[1]~input_o\ $ (!\B[1]~input_o\ $ (\B[0]~input_o\)) ) ) ) # ( !\A[0]~input_o\ & ( !\Cin~input_o\ & ( !\A[1]~input_o\ $ (!\B[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000111100001111001100001100111100110000111100001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[1]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	datae => \ALT_INV_A[0]~input_o\,
	dataf => \ALT_INV_Cin~input_o\,
	combout => \S~1_combout\);

-- Location: IOIBUF_X36_Y56_N94
\B[2]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: IOIBUF_X36_Y56_N1
\A[2]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: MLABCELL_X34_Y55_N28
\CarryNetwork|Recur:Low_half|cMid~0DUPLICATE\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:Low_half|cMid~0DUPLICATE_combout\ = ( \Cin~input_o\ & ( \A[0]~input_o\ & ( (!\B[0]~input_o\ & (!\B[1]~input_o\ $ (!\A[1]~input_o\))) ) ) ) # ( \Cin~input_o\ & ( !\A[0]~input_o\ & ( (\B[0]~input_o\ & (!\B[1]~input_o\ $ 
-- (!\A[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011000000000000000000000000110011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_A[1]~input_o\,
	datae => \ALT_INV_Cin~input_o\,
	dataf => \ALT_INV_A[0]~input_o\,
	combout => \CarryNetwork|Recur:Low_half|cMid~0DUPLICATE_combout\);

-- Location: MLABCELL_X34_Y55_N24
\CarryNetwork|Recur:Low_half|Recur:Low_half|BG~0\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:Low_half|Recur:Low_half|BG~0_combout\ = ( \A[0]~input_o\ & ( (!\B[0]~input_o\ & (\B[1]~input_o\ & \A[1]~input_o\)) # (\B[0]~input_o\ & ((\A[1]~input_o\) # (\B[1]~input_o\))) ) ) # ( !\A[0]~input_o\ & ( (\B[1]~input_o\ & \A[1]~input_o\) 
-- ) )

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
	combout => \CarryNetwork|Recur:Low_half|Recur:Low_half|BG~0_combout\);

-- Location: MLABCELL_X37_Y55_N8
\S~2\ : arriaii_lcell_comb
-- Equation(s):
-- \S~2_combout\ = ( \CarryNetwork|Recur:Low_half|cMid~0DUPLICATE_combout\ & ( \CarryNetwork|Recur:Low_half|Recur:Low_half|BG~0_combout\ & ( !\B[2]~input_o\ $ (\A[2]~input_o\) ) ) ) # ( !\CarryNetwork|Recur:Low_half|cMid~0DUPLICATE_combout\ & ( 
-- \CarryNetwork|Recur:Low_half|Recur:Low_half|BG~0_combout\ & ( !\B[2]~input_o\ $ (\A[2]~input_o\) ) ) ) # ( \CarryNetwork|Recur:Low_half|cMid~0DUPLICATE_combout\ & ( !\CarryNetwork|Recur:Low_half|Recur:Low_half|BG~0_combout\ & ( !\B[2]~input_o\ $ 
-- (\A[2]~input_o\) ) ) ) # ( !\CarryNetwork|Recur:Low_half|cMid~0DUPLICATE_combout\ & ( !\CarryNetwork|Recur:Low_half|Recur:Low_half|BG~0_combout\ & ( !\B[2]~input_o\ $ (!\A[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000111100000000111111110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[2]~input_o\,
	datad => \ALT_INV_A[2]~input_o\,
	datae => \CarryNetwork|Recur:Low_half|ALT_INV_cMid~0DUPLICATE_combout\,
	dataf => \CarryNetwork|Recur:Low_half|Recur:Low_half|ALT_INV_BG~0_combout\,
	combout => \S~2_combout\);

-- Location: IOIBUF_X38_Y56_N94
\B[3]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: IOIBUF_X36_Y56_N32
\A[3]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: MLABCELL_X34_Y55_N36
\S~7\ : arriaii_lcell_comb
-- Equation(s):
-- \S~7_combout\ = ( \CarryNetwork|Recur:Low_half|Recur:Low_half|BG~0_combout\ & ( \CarryNetwork|Recur:Low_half|cMid~0DUPLICATE_combout\ & ( !\B[3]~input_o\ $ (!\A[3]~input_o\ $ (((\B[2]~input_o\) # (\A[2]~input_o\)))) ) ) ) # ( 
-- !\CarryNetwork|Recur:Low_half|Recur:Low_half|BG~0_combout\ & ( \CarryNetwork|Recur:Low_half|cMid~0DUPLICATE_combout\ & ( !\B[3]~input_o\ $ (!\A[3]~input_o\ $ (((\B[2]~input_o\) # (\A[2]~input_o\)))) ) ) ) # ( 
-- \CarryNetwork|Recur:Low_half|Recur:Low_half|BG~0_combout\ & ( !\CarryNetwork|Recur:Low_half|cMid~0DUPLICATE_combout\ & ( !\B[3]~input_o\ $ (!\A[3]~input_o\ $ (((\B[2]~input_o\) # (\A[2]~input_o\)))) ) ) ) # ( 
-- !\CarryNetwork|Recur:Low_half|Recur:Low_half|BG~0_combout\ & ( !\CarryNetwork|Recur:Low_half|cMid~0DUPLICATE_combout\ & ( !\B[3]~input_o\ $ (!\A[3]~input_o\ $ (((\A[2]~input_o\ & \B[2]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011010101001011010101001010101101010100101010110101010010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_A[2]~input_o\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \ALT_INV_A[3]~input_o\,
	datae => \CarryNetwork|Recur:Low_half|Recur:Low_half|ALT_INV_BG~0_combout\,
	dataf => \CarryNetwork|Recur:Low_half|ALT_INV_cMid~0DUPLICATE_combout\,
	combout => \S~7_combout\);

-- Location: IOIBUF_X31_Y56_N94
\A[4]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: LABCELL_X35_Y55_N26
\CarryNetwork|Recur:Low_half|Recur:High_half|BG~0\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:Low_half|Recur:High_half|BG~0_combout\ = ( \B[3]~input_o\ & ( \A[3]~input_o\ ) ) # ( !\B[3]~input_o\ & ( \A[3]~input_o\ & ( (\B[2]~input_o\ & \A[2]~input_o\) ) ) ) # ( \B[3]~input_o\ & ( !\A[3]~input_o\ & ( (\B[2]~input_o\ & 
-- \A[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[2]~input_o\,
	datad => \ALT_INV_A[2]~input_o\,
	datae => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_A[3]~input_o\,
	combout => \CarryNetwork|Recur:Low_half|Recur:High_half|BG~0_combout\);

-- Location: LABCELL_X35_Y55_N22
\CarryNetwork|Recur:Low_half|BG~0DUPLICATE\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:Low_half|BG~0DUPLICATE_combout\ = ( !\B[3]~input_o\ & ( \A[3]~input_o\ & ( !\B[2]~input_o\ $ (!\A[2]~input_o\) ) ) ) # ( \B[3]~input_o\ & ( !\A[3]~input_o\ & ( !\B[2]~input_o\ $ (!\A[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011111111000000001111111100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[2]~input_o\,
	datad => \ALT_INV_A[2]~input_o\,
	datae => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_A[3]~input_o\,
	combout => \CarryNetwork|Recur:Low_half|BG~0DUPLICATE_combout\);

-- Location: IOIBUF_X31_Y56_N63
\B[4]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: LABCELL_X35_Y55_N0
\S~3\ : arriaii_lcell_comb
-- Equation(s):
-- \S~3_combout\ = ( \B[4]~input_o\ & ( \CarryNetwork|Recur:Low_half|Recur:Low_half|BG~0_combout\ & ( !\A[4]~input_o\ $ (((\CarryNetwork|Recur:Low_half|BG~0DUPLICATE_combout\) # (\CarryNetwork|Recur:Low_half|Recur:High_half|BG~0_combout\))) ) ) ) # ( 
-- !\B[4]~input_o\ & ( \CarryNetwork|Recur:Low_half|Recur:Low_half|BG~0_combout\ & ( !\A[4]~input_o\ $ (((!\CarryNetwork|Recur:Low_half|Recur:High_half|BG~0_combout\ & !\CarryNetwork|Recur:Low_half|BG~0DUPLICATE_combout\))) ) ) ) # ( \B[4]~input_o\ & ( 
-- !\CarryNetwork|Recur:Low_half|Recur:Low_half|BG~0_combout\ & ( !\A[4]~input_o\ $ ((((\CarryNetwork|Recur:Low_half|cMid~0DUPLICATE_combout\ & \CarryNetwork|Recur:Low_half|BG~0DUPLICATE_combout\)) # 
-- (\CarryNetwork|Recur:Low_half|Recur:High_half|BG~0_combout\))) ) ) ) # ( !\B[4]~input_o\ & ( !\CarryNetwork|Recur:Low_half|Recur:Low_half|BG~0_combout\ & ( !\A[4]~input_o\ $ (((!\CarryNetwork|Recur:Low_half|Recur:High_half|BG~0_combout\ & 
-- ((!\CarryNetwork|Recur:Low_half|cMid~0DUPLICATE_combout\) # (!\CarryNetwork|Recur:Low_half|BG~0DUPLICATE_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001101010100110011001010101100110101010101001100101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[4]~input_o\,
	datab => \CarryNetwork|Recur:Low_half|Recur:High_half|ALT_INV_BG~0_combout\,
	datac => \CarryNetwork|Recur:Low_half|ALT_INV_cMid~0DUPLICATE_combout\,
	datad => \CarryNetwork|Recur:Low_half|ALT_INV_BG~0DUPLICATE_combout\,
	datae => \ALT_INV_B[4]~input_o\,
	dataf => \CarryNetwork|Recur:Low_half|Recur:Low_half|ALT_INV_BG~0_combout\,
	combout => \S~3_combout\);

-- Location: IOIBUF_X30_Y56_N32
\B[5]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: IOIBUF_X31_Y56_N32
\A[5]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: LABCELL_X35_Y55_N20
\CarryNetwork|Recur:Low_half|BG~0\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:Low_half|BG~0_combout\ = ( !\B[3]~input_o\ & ( \A[3]~input_o\ & ( !\A[2]~input_o\ $ (!\B[2]~input_o\) ) ) ) # ( \B[3]~input_o\ & ( !\A[3]~input_o\ & ( !\A[2]~input_o\ $ (!\B[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011111111000000001111111100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[2]~input_o\,
	datad => \ALT_INV_B[2]~input_o\,
	datae => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_A[3]~input_o\,
	combout => \CarryNetwork|Recur:Low_half|BG~0_combout\);

-- Location: MLABCELL_X34_Y55_N34
\CarryNetwork|Recur:Low_half|BG\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:Low_half|BG~combout\ = ( \CarryNetwork|Recur:Low_half|Recur:Low_half|BG~0_combout\ & ( (!\CarryNetwork|Recur:Low_half|Recur:High_half|BG~0_combout\ & !\CarryNetwork|Recur:Low_half|BG~0_combout\) ) ) # ( 
-- !\CarryNetwork|Recur:Low_half|Recur:Low_half|BG~0_combout\ & ( !\CarryNetwork|Recur:Low_half|Recur:High_half|BG~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:Low_half|Recur:High_half|ALT_INV_BG~0_combout\,
	datad => \CarryNetwork|Recur:Low_half|ALT_INV_BG~0_combout\,
	dataf => \CarryNetwork|Recur:Low_half|Recur:Low_half|ALT_INV_BG~0_combout\,
	combout => \CarryNetwork|Recur:Low_half|BG~combout\);

-- Location: MLABCELL_X34_Y55_N22
\CarryNetwork|cMid~0\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|cMid~0_combout\ = ( \CarryNetwork|Recur:Low_half|cMid~0DUPLICATE_combout\ & ( \CarryNetwork|Recur:Low_half|BG~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:Low_half|ALT_INV_BG~0_combout\,
	dataf => \CarryNetwork|Recur:Low_half|ALT_INV_cMid~0DUPLICATE_combout\,
	combout => \CarryNetwork|cMid~0_combout\);

-- Location: MLABCELL_X34_Y55_N18
\S~6\ : arriaii_lcell_comb
-- Equation(s):
-- \S~6_combout\ = ( \CarryNetwork|Recur:Low_half|BG~combout\ & ( \CarryNetwork|cMid~0_combout\ & ( !\B[5]~input_o\ $ (!\A[5]~input_o\ $ (((\B[4]~input_o\) # (\A[4]~input_o\)))) ) ) ) # ( !\CarryNetwork|Recur:Low_half|BG~combout\ & ( 
-- \CarryNetwork|cMid~0_combout\ & ( !\B[5]~input_o\ $ (!\A[5]~input_o\ $ (((\B[4]~input_o\) # (\A[4]~input_o\)))) ) ) ) # ( \CarryNetwork|Recur:Low_half|BG~combout\ & ( !\CarryNetwork|cMid~0_combout\ & ( !\B[5]~input_o\ $ (!\A[5]~input_o\ $ 
-- (((\A[4]~input_o\ & \B[4]~input_o\)))) ) ) ) # ( !\CarryNetwork|Recur:Low_half|BG~combout\ & ( !\CarryNetwork|cMid~0_combout\ & ( !\B[5]~input_o\ $ (!\A[5]~input_o\ $ (((\B[4]~input_o\) # (\A[4]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100110011001011001100110100101101001100110010110100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[5]~input_o\,
	datab => \ALT_INV_A[5]~input_o\,
	datac => \ALT_INV_A[4]~input_o\,
	datad => \ALT_INV_B[4]~input_o\,
	datae => \CarryNetwork|Recur:Low_half|ALT_INV_BG~combout\,
	dataf => \CarryNetwork|ALT_INV_cMid~0_combout\,
	combout => \S~6_combout\);

-- Location: IOIBUF_X30_Y56_N1
\B[6]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: MLABCELL_X34_Y55_N20
\CarryNetwork|Recur:High_half|Recur:Low_half|BG~0\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:High_half|Recur:Low_half|BG~0_combout\ = ( \B[4]~input_o\ & ( (!\B[5]~input_o\ & (\A[4]~input_o\ & \A[5]~input_o\)) # (\B[5]~input_o\ & ((\A[5]~input_o\) # (\A[4]~input_o\))) ) ) # ( !\B[4]~input_o\ & ( (\B[5]~input_o\ & 
-- \A[5]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100000101010111110000010101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[5]~input_o\,
	datac => \ALT_INV_A[4]~input_o\,
	datad => \ALT_INV_A[5]~input_o\,
	dataf => \ALT_INV_B[4]~input_o\,
	combout => \CarryNetwork|Recur:High_half|Recur:Low_half|BG~0_combout\);

-- Location: IOIBUF_X30_Y56_N63
\A[6]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: LABCELL_X35_Y55_N24
\CarryNetwork|Recur:Low_half|Recur:High_half|BG~0DUPLICATE\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:Low_half|Recur:High_half|BG~0DUPLICATE_combout\ = ( \B[3]~input_o\ & ( \A[3]~input_o\ ) ) # ( !\B[3]~input_o\ & ( \A[3]~input_o\ & ( (\A[2]~input_o\ & \B[2]~input_o\) ) ) ) # ( \B[3]~input_o\ & ( !\A[3]~input_o\ & ( (\A[2]~input_o\ & 
-- \B[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[2]~input_o\,
	datad => \ALT_INV_B[2]~input_o\,
	datae => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_A[3]~input_o\,
	combout => \CarryNetwork|Recur:Low_half|Recur:High_half|BG~0DUPLICATE_combout\);

-- Location: MLABCELL_X34_Y55_N30
\CarryNetwork|Recur:Low_half|cMid~0\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:Low_half|cMid~0_combout\ = ( \Cin~input_o\ & ( \A[0]~input_o\ & ( (!\B[0]~input_o\ & (!\A[1]~input_o\ $ (!\B[1]~input_o\))) ) ) ) # ( \Cin~input_o\ & ( !\A[0]~input_o\ & ( (\B[0]~input_o\ & (!\A[1]~input_o\ $ (!\B[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011000000000000000000000000110011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[1]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \ALT_INV_Cin~input_o\,
	dataf => \ALT_INV_A[0]~input_o\,
	combout => \CarryNetwork|Recur:Low_half|cMid~0_combout\);

-- Location: MLABCELL_X34_Y55_N10
\CarryNetwork|Recur:High_half|cMid~0\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:High_half|cMid~0_combout\ = ( \B[4]~input_o\ & ( (!\A[4]~input_o\ & (!\A[5]~input_o\ $ (!\B[5]~input_o\))) ) ) # ( !\B[4]~input_o\ & ( (\A[4]~input_o\ & (!\A[5]~input_o\ $ (!\B[5]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100001100000000110000110000110000110000000011000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[5]~input_o\,
	datac => \ALT_INV_A[4]~input_o\,
	datad => \ALT_INV_B[5]~input_o\,
	dataf => \ALT_INV_B[4]~input_o\,
	combout => \CarryNetwork|Recur:High_half|cMid~0_combout\);

-- Location: MLABCELL_X34_Y55_N14
\CarryNetwork|Recur:High_half|cMid~1\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:High_half|cMid~1_combout\ = ( \CarryNetwork|Recur:Low_half|cMid~0_combout\ & ( \CarryNetwork|Recur:High_half|cMid~0_combout\ & ( (\CarryNetwork|Recur:Low_half|Recur:High_half|BG~0DUPLICATE_combout\) # 
-- (\CarryNetwork|Recur:Low_half|BG~0_combout\) ) ) ) # ( !\CarryNetwork|Recur:Low_half|cMid~0_combout\ & ( \CarryNetwork|Recur:High_half|cMid~0_combout\ & ( ((\CarryNetwork|Recur:Low_half|BG~0_combout\ & 
-- \CarryNetwork|Recur:Low_half|Recur:Low_half|BG~0_combout\)) # (\CarryNetwork|Recur:Low_half|Recur:High_half|BG~0DUPLICATE_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CarryNetwork|Recur:Low_half|ALT_INV_BG~0_combout\,
	datac => \CarryNetwork|Recur:Low_half|Recur:High_half|ALT_INV_BG~0DUPLICATE_combout\,
	datad => \CarryNetwork|Recur:Low_half|Recur:Low_half|ALT_INV_BG~0_combout\,
	datae => \CarryNetwork|Recur:Low_half|ALT_INV_cMid~0_combout\,
	dataf => \CarryNetwork|Recur:High_half|ALT_INV_cMid~0_combout\,
	combout => \CarryNetwork|Recur:High_half|cMid~1_combout\);

-- Location: MLABCELL_X34_Y55_N8
\S~4\ : arriaii_lcell_comb
-- Equation(s):
-- \S~4_combout\ = ( \CarryNetwork|Recur:High_half|cMid~1_combout\ & ( !\B[6]~input_o\ $ (\A[6]~input_o\) ) ) # ( !\CarryNetwork|Recur:High_half|cMid~1_combout\ & ( !\B[6]~input_o\ $ (!\CarryNetwork|Recur:High_half|Recur:Low_half|BG~0_combout\ $ 
-- (\A[6]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101010100101010110101010010110101010010101011010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[6]~input_o\,
	datac => \CarryNetwork|Recur:High_half|Recur:Low_half|ALT_INV_BG~0_combout\,
	datad => \ALT_INV_A[6]~input_o\,
	dataf => \CarryNetwork|Recur:High_half|ALT_INV_cMid~1_combout\,
	combout => \S~4_combout\);

-- Location: IOIBUF_X30_Y56_N94
\A[7]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: IOIBUF_X28_Y56_N63
\B[7]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: MLABCELL_X34_Y55_N32
\CarryNetwork|Recur:High_half|Recur:High_half|Recur:cMid~0\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:High_half|Recur:High_half|Recur:cMid~0_combout\ = ( \CarryNetwork|Recur:High_half|cMid~1_combout\ & ( (!\A[6]~input_o\ & !\B[6]~input_o\) ) ) # ( !\CarryNetwork|Recur:High_half|cMid~1_combout\ & ( (!\A[6]~input_o\ & 
-- ((!\CarryNetwork|Recur:High_half|Recur:Low_half|BG~0_combout\) # (!\B[6]~input_o\))) # (\A[6]~input_o\ & (!\CarryNetwork|Recur:High_half|Recur:Low_half|BG~0_combout\ & !\B[6]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101010100000111110101010000010101010000000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[6]~input_o\,
	datac => \CarryNetwork|Recur:High_half|Recur:Low_half|ALT_INV_BG~0_combout\,
	datad => \ALT_INV_B[6]~input_o\,
	dataf => \CarryNetwork|Recur:High_half|ALT_INV_cMid~1_combout\,
	combout => \CarryNetwork|Recur:High_half|Recur:High_half|Recur:cMid~0_combout\);

-- Location: MLABCELL_X34_Y55_N26
\S~5\ : arriaii_lcell_comb
-- Equation(s):
-- \S~5_combout\ = ( \CarryNetwork|Recur:High_half|Recur:High_half|Recur:cMid~0_combout\ & ( !\A[7]~input_o\ $ (!\B[7]~input_o\) ) ) # ( !\CarryNetwork|Recur:High_half|Recur:High_half|Recur:cMid~0_combout\ & ( !\A[7]~input_o\ $ (\B[7]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000110011110011000011001100110011110011000011001111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[7]~input_o\,
	datad => \ALT_INV_B[7]~input_o\,
	dataf => \CarryNetwork|Recur:High_half|Recur:High_half|ALT_INV_Recur:cMid~0_combout\,
	combout => \S~5_combout\);

-- Location: MLABCELL_X34_Y55_N0
\CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|c[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|c[1]~0_combout\ = ( \B[7]~input_o\ & ( \CarryNetwork|Recur:High_half|Recur:High_half|Recur:cMid~0_combout\ & ( \A[7]~input_o\ ) ) ) # ( \B[7]~input_o\ & ( 
-- !\CarryNetwork|Recur:High_half|Recur:High_half|Recur:cMid~0_combout\ ) ) # ( !\B[7]~input_o\ & ( !\CarryNetwork|Recur:High_half|Recur:High_half|Recur:cMid~0_combout\ & ( \A[7]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_A[7]~input_o\,
	datae => \ALT_INV_B[7]~input_o\,
	dataf => \CarryNetwork|Recur:High_half|Recur:High_half|ALT_INV_Recur:cMid~0_combout\,
	combout => \CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|c[1]~0_combout\);

-- Location: MLABCELL_X34_Y55_N6
\Ovfl~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Ovfl~0_combout\ = ( \B[7]~input_o\ & ( \CarryNetwork|Recur:High_half|Recur:High_half|Recur:cMid~0_combout\ & ( \A[7]~input_o\ ) ) ) # ( !\B[7]~input_o\ & ( !\CarryNetwork|Recur:High_half|Recur:High_half|Recur:cMid~0_combout\ & ( !\A[7]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[7]~input_o\,
	datae => \ALT_INV_B[7]~input_o\,
	dataf => \CarryNetwork|Recur:High_half|Recur:High_half|ALT_INV_Recur:cMid~0_combout\,
	combout => \Ovfl~0_combout\);

ww_S(0) <= \S[0]~output_o\;

ww_S(1) <= \S[1]~output_o\;

ww_S(2) <= \S[2]~output_o\;

ww_S(3) <= \S[3]~output_o\;

ww_S(4) <= \S[4]~output_o\;

ww_S(5) <= \S[5]~output_o\;

ww_S(6) <= \S[6]~output_o\;

ww_S(7) <= \S[7]~output_o\;

ww_Cout <= \Cout~output_o\;

ww_Ovfl <= \Ovfl~output_o\;
END structure;


