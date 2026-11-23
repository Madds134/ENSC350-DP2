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

-- DATE "11/21/2026 11:35:40"

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
-- S[0]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[1]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[2]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[3]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[4]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[5]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[6]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[7]	=>  Location: PIN_T1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cout	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ovfl	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cin	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_P4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_U5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_U3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_U4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_W1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_W3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \Cin~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \S~0_combout\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \S~1_combout\ : std_logic;
SIGNAL \c~0_combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Recur:gPair[0]~0_combout\ : std_logic;
SIGNAL \S~2_combout\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \S~3_combout\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Recur:gPair[1]~0_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|gPair~0_combout\ : std_logic;
SIGNAL \S~4_combout\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \c~1_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gpre[4]~1_combout\ : std_logic;
SIGNAL \S~5_combout\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \c~3_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:gPair[2]~0_combout\ : std_logic;
SIGNAL \c~2_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Gpre~0_combout\ : std_logic;
SIGNAL \S~6_combout\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gpre[6]~0_combout\ : std_logic;
SIGNAL \S~7_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:gPair[3]~0_combout\ : std_logic;
SIGNAL \c~4_combout\ : std_logic;
SIGNAL \c~5_combout\ : std_logic;
SIGNAL \Ovfl~0_combout\ : std_logic;
SIGNAL c : std_logic_vector(8 DOWNTO 0);
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
SIGNAL \PrefixNetwork|ALT_INV_Gpre[4]~1_combout\ : std_logic;
SIGNAL \ALT_INV_c~5_combout\ : std_logic;
SIGNAL \ALT_INV_c~4_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Recur:gPair[3]~0_combout\ : std_logic;
SIGNAL ALT_INV_c : std_logic_vector(4 DOWNTO 4);
SIGNAL \PrefixNetwork|ALT_INV_Gpre[6]~0_combout\ : std_logic;
SIGNAL \ALT_INV_c~3_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|ALT_INV_Gpre~0_combout\ : std_logic;
SIGNAL \ALT_INV_c~2_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Recur:gPair[2]~0_combout\ : std_logic;
SIGNAL \ALT_INV_c~1_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Recur:gPair[1]~0_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|ALT_INV_gPair~0_combout\ : std_logic;
SIGNAL \ALT_INV_c~0_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Recur:gPair[0]~0_combout\ : std_logic;

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
\PrefixNetwork|ALT_INV_Gpre[4]~1_combout\ <= NOT \PrefixNetwork|Gpre[4]~1_combout\;
\ALT_INV_c~5_combout\ <= NOT \c~5_combout\;
\ALT_INV_c~4_combout\ <= NOT \c~4_combout\;
\PrefixNetwork|ALT_INV_Recur:gPair[3]~0_combout\ <= NOT \PrefixNetwork|Recur:gPair[3]~0_combout\;
ALT_INV_c(4) <= NOT c(4);
\PrefixNetwork|ALT_INV_Gpre[6]~0_combout\ <= NOT \PrefixNetwork|Gpre[6]~0_combout\;
\ALT_INV_c~3_combout\ <= NOT \c~3_combout\;
\PrefixNetwork|Recur:Inner|ALT_INV_Gpre~0_combout\ <= NOT \PrefixNetwork|Recur:Inner|Gpre~0_combout\;
\ALT_INV_c~2_combout\ <= NOT \c~2_combout\;
\PrefixNetwork|ALT_INV_Recur:gPair[2]~0_combout\ <= NOT \PrefixNetwork|Recur:gPair[2]~0_combout\;
\ALT_INV_c~1_combout\ <= NOT \c~1_combout\;
\PrefixNetwork|ALT_INV_Recur:gPair[1]~0_combout\ <= NOT \PrefixNetwork|Recur:gPair[1]~0_combout\;
\PrefixNetwork|Recur:Inner|ALT_INV_gPair~0_combout\ <= NOT \PrefixNetwork|Recur:Inner|gPair~0_combout\;
\ALT_INV_c~0_combout\ <= NOT \c~0_combout\;
\PrefixNetwork|ALT_INV_Recur:gPair[0]~0_combout\ <= NOT \PrefixNetwork|Recur:gPair[0]~0_combout\;

-- Location: IOOBUF_X59_Y28_N36
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

-- Location: IOOBUF_X59_Y28_N2
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

-- Location: IOOBUF_X59_Y25_N98
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

-- Location: IOOBUF_X59_Y22_N36
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

-- Location: IOOBUF_X59_Y21_N98
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

-- Location: IOOBUF_X59_Y22_N2
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

-- Location: IOOBUF_X59_Y23_N98
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

-- Location: IOOBUF_X59_Y23_N2
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

-- Location: IOOBUF_X59_Y23_N67
\Cout~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \c~5_combout\,
	devoe => ww_devoe,
	o => \Cout~output_o\);

-- Location: IOOBUF_X59_Y23_N36
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

-- Location: IOIBUF_X59_Y26_N32
\Cin~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cin,
	o => \Cin~input_o\);

-- Location: IOIBUF_X59_Y25_N1
\A[0]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X59_Y25_N63
\B[0]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: LABCELL_X58_Y28_N2
\S~0\ : arriaii_lcell_comb
-- Equation(s):
-- \S~0_combout\ = ( \A[0]~input_o\ & ( \B[0]~input_o\ & ( \Cin~input_o\ ) ) ) # ( !\A[0]~input_o\ & ( \B[0]~input_o\ & ( !\Cin~input_o\ ) ) ) # ( \A[0]~input_o\ & ( !\B[0]~input_o\ & ( !\Cin~input_o\ ) ) ) # ( !\A[0]~input_o\ & ( !\B[0]~input_o\ & ( 
-- \Cin~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111100001111000011110000111100000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Cin~input_o\,
	datae => \ALT_INV_A[0]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \S~0_combout\);

-- Location: IOIBUF_X59_Y26_N1
\B[1]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: IOIBUF_X59_Y25_N32
\A[1]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: LABCELL_X58_Y28_N6
\S~1\ : arriaii_lcell_comb
-- Equation(s):
-- \S~1_combout\ = ( \A[0]~input_o\ & ( \A[1]~input_o\ & ( !\B[1]~input_o\ $ (((\B[0]~input_o\) # (\Cin~input_o\))) ) ) ) # ( !\A[0]~input_o\ & ( \A[1]~input_o\ & ( !\B[1]~input_o\ $ (((\Cin~input_o\ & \B[0]~input_o\))) ) ) ) # ( \A[0]~input_o\ & ( 
-- !\A[1]~input_o\ & ( !\B[1]~input_o\ $ (((!\Cin~input_o\ & !\B[0]~input_o\))) ) ) ) # ( !\A[0]~input_o\ & ( !\A[1]~input_o\ & ( !\B[1]~input_o\ $ (((!\Cin~input_o\) # (!\B[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100111100001111001100110011001100110000111100001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_Cin~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	datae => \ALT_INV_A[0]~input_o\,
	dataf => \ALT_INV_A[1]~input_o\,
	combout => \S~1_combout\);

-- Location: LABCELL_X58_Y25_N2
\c~0\ : arriaii_lcell_comb
-- Equation(s):
-- \c~0_combout\ = ( \Cin~input_o\ & ( \B[1]~input_o\ & ( (!\A[1]~input_o\ & (!\A[0]~input_o\ $ (!\B[0]~input_o\))) ) ) ) # ( \Cin~input_o\ & ( !\B[1]~input_o\ & ( (\A[1]~input_o\ & (!\A[0]~input_o\ $ (!\B[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011000000000000000000000000110011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[1]~input_o\,
	datac => \ALT_INV_A[0]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	datae => \ALT_INV_Cin~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \c~0_combout\);

-- Location: IOIBUF_X59_Y21_N1
\A[2]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: IOIBUF_X59_Y26_N94
\B[2]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: LABCELL_X58_Y23_N2
\PrefixNetwork|Recur:gPair[0]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:gPair[0]~0_combout\ = ( \B[1]~input_o\ & ( ((\A[0]~input_o\ & \B[0]~input_o\)) # (\A[1]~input_o\) ) ) # ( !\B[1]~input_o\ & ( (\A[0]~input_o\ & (\B[0]~input_o\ & \A[1]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100000011111111110000001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[0]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_A[1]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \PrefixNetwork|Recur:gPair[0]~0_combout\);

-- Location: LABCELL_X58_Y25_N38
\S~2\ : arriaii_lcell_comb
-- Equation(s):
-- \S~2_combout\ = ( \B[2]~input_o\ & ( \PrefixNetwork|Recur:gPair[0]~0_combout\ & ( \A[2]~input_o\ ) ) ) # ( !\B[2]~input_o\ & ( \PrefixNetwork|Recur:gPair[0]~0_combout\ & ( !\A[2]~input_o\ ) ) ) # ( \B[2]~input_o\ & ( 
-- !\PrefixNetwork|Recur:gPair[0]~0_combout\ & ( !\c~0_combout\ $ (\A[2]~input_o\) ) ) ) # ( !\B[2]~input_o\ & ( !\PrefixNetwork|Recur:gPair[0]~0_combout\ & ( !\c~0_combout\ $ (!\A[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000111100000000111111111111000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_c~0_combout\,
	datad => \ALT_INV_A[2]~input_o\,
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \PrefixNetwork|ALT_INV_Recur:gPair[0]~0_combout\,
	combout => \S~2_combout\);

-- Location: IOIBUF_X59_Y22_N63
\B[3]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: IOIBUF_X59_Y22_N94
\A[3]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: LABCELL_X58_Y22_N0
\S~3\ : arriaii_lcell_comb
-- Equation(s):
-- \S~3_combout\ = ( \PrefixNetwork|Recur:gPair[0]~0_combout\ & ( \c~0_combout\ & ( !\B[3]~input_o\ $ (!\A[3]~input_o\ $ (((\B[2]~input_o\) # (\A[2]~input_o\)))) ) ) ) # ( !\PrefixNetwork|Recur:gPair[0]~0_combout\ & ( \c~0_combout\ & ( !\B[3]~input_o\ $ 
-- (!\A[3]~input_o\ $ (((\B[2]~input_o\) # (\A[2]~input_o\)))) ) ) ) # ( \PrefixNetwork|Recur:gPair[0]~0_combout\ & ( !\c~0_combout\ & ( !\B[3]~input_o\ $ (!\A[3]~input_o\ $ (((\B[2]~input_o\) # (\A[2]~input_o\)))) ) ) ) # ( 
-- !\PrefixNetwork|Recur:gPair[0]~0_combout\ & ( !\c~0_combout\ & ( !\B[3]~input_o\ $ (!\A[3]~input_o\ $ (((\A[2]~input_o\ & \B[2]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001101001011010011010010101101001101001010110100110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_A[2]~input_o\,
	datac => \ALT_INV_A[3]~input_o\,
	datad => \ALT_INV_B[2]~input_o\,
	datae => \PrefixNetwork|ALT_INV_Recur:gPair[0]~0_combout\,
	dataf => \ALT_INV_c~0_combout\,
	combout => \S~3_combout\);

-- Location: IOIBUF_X59_Y21_N63
\A[4]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: IOIBUF_X59_Y21_N32
\B[4]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: LABCELL_X58_Y23_N18
\PrefixNetwork|Recur:gPair[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:gPair[1]~0_combout\ = ( \B[2]~input_o\ & ( (!\B[3]~input_o\ & (\A[2]~input_o\ & \A[3]~input_o\)) # (\B[3]~input_o\ & ((\A[3]~input_o\) # (\A[2]~input_o\))) ) ) # ( !\B[2]~input_o\ & ( (\B[3]~input_o\ & \A[3]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100000101010111110000010101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datac => \ALT_INV_A[2]~input_o\,
	datad => \ALT_INV_A[3]~input_o\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \PrefixNetwork|Recur:gPair[1]~0_combout\);

-- Location: LABCELL_X58_Y23_N20
\PrefixNetwork|Recur:Inner|gPair~0\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|gPair~0_combout\ = ( \B[2]~input_o\ & ( (!\A[2]~input_o\ & (!\B[3]~input_o\ $ (!\A[3]~input_o\))) ) ) # ( !\B[2]~input_o\ & ( (\A[2]~input_o\ & (!\B[3]~input_o\ $ (!\A[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100001010000001010000101001010000101000000101000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datac => \ALT_INV_A[2]~input_o\,
	datad => \ALT_INV_A[3]~input_o\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \PrefixNetwork|Recur:Inner|gPair~0_combout\);

-- Location: LABCELL_X58_Y21_N10
\S~4\ : arriaii_lcell_comb
-- Equation(s):
-- \S~4_combout\ = ( \PrefixNetwork|Recur:gPair[0]~0_combout\ & ( \c~0_combout\ & ( !\A[4]~input_o\ $ (!\B[4]~input_o\ $ (((\PrefixNetwork|Recur:Inner|gPair~0_combout\) # (\PrefixNetwork|Recur:gPair[1]~0_combout\)))) ) ) ) # ( 
-- !\PrefixNetwork|Recur:gPair[0]~0_combout\ & ( \c~0_combout\ & ( !\A[4]~input_o\ $ (!\B[4]~input_o\ $ (((\PrefixNetwork|Recur:Inner|gPair~0_combout\) # (\PrefixNetwork|Recur:gPair[1]~0_combout\)))) ) ) ) # ( \PrefixNetwork|Recur:gPair[0]~0_combout\ & ( 
-- !\c~0_combout\ & ( !\A[4]~input_o\ $ (!\B[4]~input_o\ $ (((\PrefixNetwork|Recur:Inner|gPair~0_combout\) # (\PrefixNetwork|Recur:gPair[1]~0_combout\)))) ) ) ) # ( !\PrefixNetwork|Recur:gPair[0]~0_combout\ & ( !\c~0_combout\ & ( !\A[4]~input_o\ $ 
-- (!\B[4]~input_o\ $ (\PrefixNetwork|Recur:gPair[1]~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101101001011010011001100101101001100110010110100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[4]~input_o\,
	datab => \ALT_INV_B[4]~input_o\,
	datac => \PrefixNetwork|ALT_INV_Recur:gPair[1]~0_combout\,
	datad => \PrefixNetwork|Recur:Inner|ALT_INV_gPair~0_combout\,
	datae => \PrefixNetwork|ALT_INV_Recur:gPair[0]~0_combout\,
	dataf => \ALT_INV_c~0_combout\,
	combout => \S~4_combout\);

-- Location: IOIBUF_X59_Y28_N94
\B[5]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: IOIBUF_X59_Y26_N63
\A[5]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: LABCELL_X58_Y23_N22
\c~1\ : arriaii_lcell_comb
-- Equation(s):
-- \c~1_combout\ = ( \c~0_combout\ & ( (\PrefixNetwork|Recur:Inner|gPair~0_combout\ & (!\B[4]~input_o\ $ (!\A[4]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001111000000000000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[4]~input_o\,
	datac => \ALT_INV_A[4]~input_o\,
	datad => \PrefixNetwork|Recur:Inner|ALT_INV_gPair~0_combout\,
	dataf => \ALT_INV_c~0_combout\,
	combout => \c~1_combout\);

-- Location: LABCELL_X58_Y23_N6
\PrefixNetwork|Gpre[4]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gpre[4]~1_combout\ = ( \PrefixNetwork|Recur:Inner|gPair~0_combout\ & ( (!\B[4]~input_o\ & ((!\A[4]~input_o\) # ((!\PrefixNetwork|Recur:gPair[0]~0_combout\ & !\PrefixNetwork|Recur:gPair[1]~0_combout\)))) # (\B[4]~input_o\ & (!\A[4]~input_o\ 
-- & (!\PrefixNetwork|Recur:gPair[0]~0_combout\ & !\PrefixNetwork|Recur:gPair[1]~0_combout\))) ) ) # ( !\PrefixNetwork|Recur:Inner|gPair~0_combout\ & ( (!\B[4]~input_o\ & ((!\A[4]~input_o\) # (!\PrefixNetwork|Recur:gPair[1]~0_combout\))) # (\B[4]~input_o\ & 
-- (!\A[4]~input_o\ & !\PrefixNetwork|Recur:gPair[1]~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111010001000111011101000100011101000100010001110100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \ALT_INV_A[4]~input_o\,
	datac => \PrefixNetwork|ALT_INV_Recur:gPair[0]~0_combout\,
	datad => \PrefixNetwork|ALT_INV_Recur:gPair[1]~0_combout\,
	dataf => \PrefixNetwork|Recur:Inner|ALT_INV_gPair~0_combout\,
	combout => \PrefixNetwork|Gpre[4]~1_combout\);

-- Location: LABCELL_X58_Y23_N0
\S~5\ : arriaii_lcell_comb
-- Equation(s):
-- \S~5_combout\ = ( \PrefixNetwork|Gpre[4]~1_combout\ & ( !\B[5]~input_o\ $ (!\A[5]~input_o\ $ (\c~1_combout\)) ) ) # ( !\PrefixNetwork|Gpre[4]~1_combout\ & ( !\B[5]~input_o\ $ (\A[5]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010010110100101101001011010010101011010101001010101101010100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[5]~input_o\,
	datac => \ALT_INV_A[5]~input_o\,
	datad => \ALT_INV_c~1_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gpre[4]~1_combout\,
	combout => \S~5_combout\);

-- Location: IOIBUF_X59_Y19_N63
\A[6]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: IOIBUF_X59_Y19_N94
\B[6]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: LABCELL_X58_Y23_N36
\c~3\ : arriaii_lcell_comb
-- Equation(s):
-- \c~3_combout\ = ( \PrefixNetwork|Recur:Inner|gPair~0_combout\ & ( \c~0_combout\ & ( (!\B[4]~input_o\ & (\A[4]~input_o\ & (!\B[5]~input_o\ $ (!\A[5]~input_o\)))) # (\B[4]~input_o\ & (!\A[4]~input_o\ & (!\B[5]~input_o\ $ (!\A[5]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001010000101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \ALT_INV_B[5]~input_o\,
	datac => \ALT_INV_A[5]~input_o\,
	datad => \ALT_INV_A[4]~input_o\,
	datae => \PrefixNetwork|Recur:Inner|ALT_INV_gPair~0_combout\,
	dataf => \ALT_INV_c~0_combout\,
	combout => \c~3_combout\);

-- Location: LABCELL_X58_Y23_N4
\PrefixNetwork|Recur:gPair[2]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:gPair[2]~0_combout\ = ( \B[5]~input_o\ & ( ((\A[4]~input_o\ & \B[4]~input_o\)) # (\A[5]~input_o\) ) ) # ( !\B[5]~input_o\ & ( (\A[4]~input_o\ & (\A[5]~input_o\ & \B[4]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100001111001111110000111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[4]~input_o\,
	datac => \ALT_INV_A[5]~input_o\,
	datad => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_B[5]~input_o\,
	combout => \PrefixNetwork|Recur:gPair[2]~0_combout\);

-- Location: LABCELL_X58_Y23_N26
\c~2\ : arriaii_lcell_comb
-- Equation(s):
-- \c~2_combout\ = ( \B[5]~input_o\ & ( (!\A[5]~input_o\ & (!\A[4]~input_o\ $ (!\B[4]~input_o\))) ) ) # ( !\B[5]~input_o\ & ( (\A[5]~input_o\ & (!\A[4]~input_o\ $ (!\B[4]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000111100000000000011110000111100000000000011110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[4]~input_o\,
	datac => \ALT_INV_B[4]~input_o\,
	datad => \ALT_INV_A[5]~input_o\,
	dataf => \ALT_INV_B[5]~input_o\,
	combout => \c~2_combout\);

-- Location: LABCELL_X58_Y23_N16
\PrefixNetwork|Recur:Inner|Gpre~0\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Gpre~0_combout\ = ( \PrefixNetwork|Recur:Inner|gPair~0_combout\ & ( (\c~2_combout\ & ((\PrefixNetwork|Recur:gPair[1]~0_combout\) # (\PrefixNetwork|Recur:gPair[0]~0_combout\))) ) ) # ( !\PrefixNetwork|Recur:Inner|gPair~0_combout\ 
-- & ( (\PrefixNetwork|Recur:gPair[1]~0_combout\ & \c~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000001111110000000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PrefixNetwork|ALT_INV_Recur:gPair[0]~0_combout\,
	datac => \PrefixNetwork|ALT_INV_Recur:gPair[1]~0_combout\,
	datad => \ALT_INV_c~2_combout\,
	dataf => \PrefixNetwork|Recur:Inner|ALT_INV_gPair~0_combout\,
	combout => \PrefixNetwork|Recur:Inner|Gpre~0_combout\);

-- Location: LABCELL_X58_Y23_N10
\S~6\ : arriaii_lcell_comb
-- Equation(s):
-- \S~6_combout\ = ( \PrefixNetwork|Recur:Inner|Gpre~0_combout\ & ( !\A[6]~input_o\ $ (\B[6]~input_o\) ) ) # ( !\PrefixNetwork|Recur:Inner|Gpre~0_combout\ & ( !\A[6]~input_o\ $ (!\B[6]~input_o\ $ (((\PrefixNetwork|Recur:gPair[2]~0_combout\) # 
-- (\c~3_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100110011001011010011001100110011001100110011001100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[6]~input_o\,
	datab => \ALT_INV_B[6]~input_o\,
	datac => \ALT_INV_c~3_combout\,
	datad => \PrefixNetwork|ALT_INV_Recur:gPair[2]~0_combout\,
	dataf => \PrefixNetwork|Recur:Inner|ALT_INV_Gpre~0_combout\,
	combout => \S~6_combout\);

-- Location: IOIBUF_X59_Y19_N1
\A[7]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: IOIBUF_X59_Y19_N32
\B[7]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: LABCELL_X58_Y23_N14
\PrefixNetwork|Gpre[6]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gpre[6]~0_combout\ = ( \PrefixNetwork|Recur:Inner|Gpre~0_combout\ & ( (!\A[6]~input_o\ & !\B[6]~input_o\) ) ) # ( !\PrefixNetwork|Recur:Inner|Gpre~0_combout\ & ( (!\A[6]~input_o\ & ((!\B[6]~input_o\) # 
-- (!\PrefixNetwork|Recur:gPair[2]~0_combout\))) # (\A[6]~input_o\ & (!\B[6]~input_o\ & !\PrefixNetwork|Recur:gPair[2]~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101010100000111110101010000010100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[6]~input_o\,
	datac => \ALT_INV_B[6]~input_o\,
	datad => \PrefixNetwork|ALT_INV_Recur:gPair[2]~0_combout\,
	dataf => \PrefixNetwork|Recur:Inner|ALT_INV_Gpre~0_combout\,
	combout => \PrefixNetwork|Gpre[6]~0_combout\);

-- Location: LABCELL_X58_Y23_N32
\S~7\ : arriaii_lcell_comb
-- Equation(s):
-- \S~7_combout\ = ( \c~3_combout\ & ( \PrefixNetwork|Gpre[6]~0_combout\ & ( !\A[6]~input_o\ $ (!\A[7]~input_o\ $ (!\B[7]~input_o\ $ (!\B[6]~input_o\))) ) ) ) # ( !\c~3_combout\ & ( \PrefixNetwork|Gpre[6]~0_combout\ & ( !\A[7]~input_o\ $ (!\B[7]~input_o\) ) 
-- ) ) # ( \c~3_combout\ & ( !\PrefixNetwork|Gpre[6]~0_combout\ & ( !\A[7]~input_o\ $ (\B[7]~input_o\) ) ) ) # ( !\c~3_combout\ & ( !\PrefixNetwork|Gpre[6]~0_combout\ & ( !\A[7]~input_o\ $ (\B[7]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001111000011110000111100001100111100001111000110100110010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[6]~input_o\,
	datab => \ALT_INV_A[7]~input_o\,
	datac => \ALT_INV_B[7]~input_o\,
	datad => \ALT_INV_B[6]~input_o\,
	datae => \ALT_INV_c~3_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gpre[6]~0_combout\,
	combout => \S~7_combout\);

-- Location: LABCELL_X58_Y23_N12
\PrefixNetwork|Recur:gPair[3]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:gPair[3]~0_combout\ = ( \A[7]~input_o\ & ( ((\A[6]~input_o\ & \B[6]~input_o\)) # (\B[7]~input_o\) ) ) # ( !\A[7]~input_o\ & ( (\A[6]~input_o\ & (\B[7]~input_o\ & \B[6]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100001111010111110000111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[6]~input_o\,
	datac => \ALT_INV_B[7]~input_o\,
	datad => \ALT_INV_B[6]~input_o\,
	dataf => \ALT_INV_A[7]~input_o\,
	combout => \PrefixNetwork|Recur:gPair[3]~0_combout\);

-- Location: LABCELL_X58_Y19_N34
\c~4\ : arriaii_lcell_comb
-- Equation(s):
-- \c~4_combout\ = ( \B[7]~input_o\ & ( \B[6]~input_o\ & ( (!\A[7]~input_o\ & !\A[6]~input_o\) ) ) ) # ( !\B[7]~input_o\ & ( \B[6]~input_o\ & ( (\A[7]~input_o\ & !\A[6]~input_o\) ) ) ) # ( \B[7]~input_o\ & ( !\B[6]~input_o\ & ( (!\A[7]~input_o\ & 
-- \A[6]~input_o\) ) ) ) # ( !\B[7]~input_o\ & ( !\B[6]~input_o\ & ( (\A[7]~input_o\ & \A[6]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000001111000000001111000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[7]~input_o\,
	datad => \ALT_INV_A[6]~input_o\,
	datae => \ALT_INV_B[7]~input_o\,
	dataf => \ALT_INV_B[6]~input_o\,
	combout => \c~4_combout\);

-- Location: LABCELL_X58_Y23_N24
\c[4]\ : arriaii_lcell_comb
-- Equation(s):
-- c(4) = ( \c~0_combout\ & ( (!\PrefixNetwork|Recur:gPair[1]~0_combout\ & !\PrefixNetwork|Recur:Inner|gPair~0_combout\) ) ) # ( !\c~0_combout\ & ( (!\PrefixNetwork|Recur:gPair[1]~0_combout\ & ((!\PrefixNetwork|Recur:gPair[0]~0_combout\) # 
-- (!\PrefixNetwork|Recur:Inner|gPair~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010100000101010101010000010101010000000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|ALT_INV_Recur:gPair[1]~0_combout\,
	datac => \PrefixNetwork|ALT_INV_Recur:gPair[0]~0_combout\,
	datad => \PrefixNetwork|Recur:Inner|ALT_INV_gPair~0_combout\,
	dataf => \ALT_INV_c~0_combout\,
	combout => c(4));

-- Location: LABCELL_X58_Y23_N28
\c~5\ : arriaii_lcell_comb
-- Equation(s):
-- \c~5_combout\ = ( \PrefixNetwork|Recur:gPair[2]~0_combout\ & ( c(4) & ( (\c~4_combout\) # (\PrefixNetwork|Recur:gPair[3]~0_combout\) ) ) ) # ( !\PrefixNetwork|Recur:gPair[2]~0_combout\ & ( c(4) & ( \PrefixNetwork|Recur:gPair[3]~0_combout\ ) ) ) # ( 
-- \PrefixNetwork|Recur:gPair[2]~0_combout\ & ( !c(4) & ( (\c~4_combout\) # (\PrefixNetwork|Recur:gPair[3]~0_combout\) ) ) ) # ( !\PrefixNetwork|Recur:gPair[2]~0_combout\ & ( !c(4) & ( ((\c~2_combout\ & \c~4_combout\)) # 
-- (\PrefixNetwork|Recur:gPair[3]~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100111111000011111111111100001111000011110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_c~2_combout\,
	datac => \PrefixNetwork|ALT_INV_Recur:gPair[3]~0_combout\,
	datad => \ALT_INV_c~4_combout\,
	datae => \PrefixNetwork|ALT_INV_Recur:gPair[2]~0_combout\,
	dataf => ALT_INV_c(4),
	combout => \c~5_combout\);

-- Location: LABCELL_X58_Y23_N8
\Ovfl~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Ovfl~0_combout\ = ( \PrefixNetwork|Gpre[6]~0_combout\ & ( !\c~5_combout\ $ (((!\c~3_combout\) # (!\A[6]~input_o\ $ (\B[6]~input_o\)))) ) ) # ( !\PrefixNetwork|Gpre[6]~0_combout\ & ( !\c~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000001111011010010000111101101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[6]~input_o\,
	datab => \ALT_INV_B[6]~input_o\,
	datac => \ALT_INV_c~5_combout\,
	datad => \ALT_INV_c~3_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gpre[6]~0_combout\,
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


