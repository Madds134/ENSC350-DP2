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

-- DATE "11/21/2026 11:38:33"

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
-- S[0]	=>  Location: PIN_AC4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[1]	=>  Location: PIN_AF3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[2]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[3]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[4]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[5]	=>  Location: PIN_AD6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[6]	=>  Location: PIN_AC9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[7]	=>  Location: PIN_AD9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cout	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ovfl	=>  Location: PIN_AA6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_AC5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_AD4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_AF1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_AG1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_AC7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_AD7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_AC10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_AC6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_AF2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_Y5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cin	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \Cin~input_o\ : std_logic;
SIGNAL \S~0_combout\ : std_logic;
SIGNAL \c[1]~1_combout\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \c[1]~0_combout\ : std_logic;
SIGNAL \S~1_combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \c[2]~2_combout\ : std_logic;
SIGNAL \S~2_combout\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \c[3]~3_combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \c[3]~4_combout\ : std_logic;
SIGNAL \S~3_combout\ : std_logic;
SIGNAL \cb~0_combout\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \S~4_combout\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \c[5]~5_combout\ : std_logic;
SIGNAL \c[5]~6_combout\ : std_logic;
SIGNAL \S~5_combout\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \c[6]~7_combout\ : std_logic;
SIGNAL \S~6_combout\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \S~7_combout\ : std_logic;
SIGNAL \cb~2_combout\ : std_logic;
SIGNAL \c[7]~8_combout\ : std_logic;
SIGNAL \c[7]~9_combout\ : std_logic;
SIGNAL \Ovfl~0_combout\ : std_logic;
SIGNAL cb : std_logic_vector(2 DOWNTO 0);
SIGNAL rCOut : std_logic_vector(1 DOWNTO 0);
SIGNAL \ALT_INV_Cin~input_o\ : std_logic;
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
SIGNAL ALT_INV_cb : std_logic_vector(2 DOWNTO 0);
SIGNAL ALT_INV_rCOut : std_logic_vector(1 DOWNTO 0);
SIGNAL \ALT_INV_cb~2_combout\ : std_logic;
SIGNAL \ALT_INV_cb~0_combout\ : std_logic;
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
\ALT_INV_Cin~input_o\ <= NOT \Cin~input_o\;
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
ALT_INV_rCOut(1) <= NOT rCOut(1);
ALT_INV_rCOut(0) <= NOT rCOut(0);
ALT_INV_cb(2) <= NOT cb(2);
\ALT_INV_cb~2_combout\ <= NOT \cb~2_combout\;
ALT_INV_cb(1) <= NOT cb(1);
\ALT_INV_cb~0_combout\ <= NOT \cb~0_combout\;
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

-- Location: IOOBUF_X59_Y7_N98
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

-- Location: IOOBUF_X52_Y0_N67
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

-- Location: IOOBUF_X59_Y6_N98
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

-- Location: IOOBUF_X59_Y6_N67
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

-- Location: IOOBUF_X55_Y0_N33
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

-- Location: IOOBUF_X54_Y0_N98
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

-- Location: IOOBUF_X55_Y0_N5
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

-- Location: IOOBUF_X55_Y0_N67
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

-- Location: IOOBUF_X59_Y4_N36
\Cout~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => cb(2),
	devoe => ww_devoe,
	o => \Cout~output_o\);

-- Location: IOOBUF_X59_Y4_N98
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

-- Location: IOIBUF_X59_Y4_N1
\A[0]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X59_Y4_N63
\B[0]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X55_Y0_N94
\Cin~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cin,
	o => \Cin~input_o\);

-- Location: LABCELL_X55_Y4_N14
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

-- Location: LABCELL_X58_Y4_N34
\S~0\ : arriaii_lcell_comb
-- Equation(s):
-- \S~0_combout\ = ( \B[0]~input_o\ & ( cb(0) & ( \A[0]~input_o\ ) ) ) # ( !\B[0]~input_o\ & ( cb(0) & ( !\A[0]~input_o\ ) ) ) # ( \B[0]~input_o\ & ( !cb(0) & ( !\A[0]~input_o\ ) ) ) # ( !\B[0]~input_o\ & ( !cb(0) & ( \A[0]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111111111110000000011111111000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_A[0]~input_o\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => ALT_INV_cb(0),
	combout => \S~0_combout\);

-- Location: LABCELL_X55_Y4_N30
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

-- Location: IOIBUF_X54_Y0_N63
\B[1]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: IOIBUF_X54_Y0_N1
\A[1]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: LABCELL_X55_Y4_N8
\c[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \c[1]~0_combout\ = ( \B[0]~input_o\ & ( \A[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[0]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \c[1]~0_combout\);

-- Location: MLABCELL_X54_Y4_N2
\S~1\ : arriaii_lcell_comb
-- Equation(s):
-- \S~1_combout\ = ( \A[1]~input_o\ & ( \c[1]~0_combout\ & ( \B[1]~input_o\ ) ) ) # ( !\A[1]~input_o\ & ( \c[1]~0_combout\ & ( !\B[1]~input_o\ ) ) ) # ( \A[1]~input_o\ & ( !\c[1]~0_combout\ & ( !\c[1]~1_combout\ $ (\B[1]~input_o\) ) ) ) # ( !\A[1]~input_o\ & 
-- ( !\c[1]~0_combout\ & ( !\c[1]~1_combout\ $ (!\B[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000111100000000111111111111000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_c[1]~1_combout\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \ALT_INV_A[1]~input_o\,
	dataf => \ALT_INV_c[1]~0_combout\,
	combout => \S~1_combout\);

-- Location: IOIBUF_X56_Y0_N32
\A[2]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: IOIBUF_X56_Y0_N1
\B[2]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: LABCELL_X55_Y4_N34
\c[2]~2\ : arriaii_lcell_comb
-- Equation(s):
-- \c[2]~2_combout\ = ( \c[1]~0_combout\ & ( (!\A[1]~input_o\ & !\B[1]~input_o\) ) ) # ( !\c[1]~0_combout\ & ( (!\A[1]~input_o\ & ((!\c[1]~1_combout\) # (!\B[1]~input_o\))) # (\A[1]~input_o\ & (!\c[1]~1_combout\ & !\B[1]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101010100000111110101010000010101010000000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[1]~input_o\,
	datac => \ALT_INV_c[1]~1_combout\,
	datad => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_c[1]~0_combout\,
	combout => \c[2]~2_combout\);

-- Location: LABCELL_X58_Y4_N38
\S~2\ : arriaii_lcell_comb
-- Equation(s):
-- \S~2_combout\ = ( \B[2]~input_o\ & ( \c[2]~2_combout\ & ( !\A[2]~input_o\ ) ) ) # ( !\B[2]~input_o\ & ( \c[2]~2_combout\ & ( \A[2]~input_o\ ) ) ) # ( \B[2]~input_o\ & ( !\c[2]~2_combout\ & ( \A[2]~input_o\ ) ) ) # ( !\B[2]~input_o\ & ( !\c[2]~2_combout\ & 
-- ( !\A[2]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000000011110000111100001111000011111111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[2]~input_o\,
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_c[2]~2_combout\,
	combout => \S~2_combout\);

-- Location: IOIBUF_X56_Y0_N94
\B[3]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: LABCELL_X55_Y4_N36
\c[3]~3\ : arriaii_lcell_comb
-- Equation(s):
-- \c[3]~3_combout\ = ( \B[2]~input_o\ & ( \A[2]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[2]~input_o\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \c[3]~3_combout\);

-- Location: IOIBUF_X56_Y0_N63
\A[3]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: LABCELL_X55_Y4_N10
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

-- Location: LABCELL_X58_Y4_N16
\S~3\ : arriaii_lcell_comb
-- Equation(s):
-- \S~3_combout\ = ( \A[3]~input_o\ & ( \c[3]~4_combout\ & ( \B[3]~input_o\ ) ) ) # ( !\A[3]~input_o\ & ( \c[3]~4_combout\ & ( !\B[3]~input_o\ ) ) ) # ( \A[3]~input_o\ & ( !\c[3]~4_combout\ & ( !\B[3]~input_o\ $ (\c[3]~3_combout\) ) ) ) # ( !\A[3]~input_o\ & 
-- ( !\c[3]~4_combout\ & ( !\B[3]~input_o\ $ (!\c[3]~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000111100000000111111110000111100000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[3]~input_o\,
	datad => \ALT_INV_c[3]~3_combout\,
	datae => \ALT_INV_A[3]~input_o\,
	dataf => \ALT_INV_c[3]~4_combout\,
	combout => \S~3_combout\);

-- Location: LABCELL_X55_Y4_N22
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

-- Location: LABCELL_X55_Y4_N12
\rCOut[0]\ : arriaii_lcell_comb
-- Equation(s):
-- rCOut(0) = LCELL(( \c[3]~4_combout\ & ( (\A[3]~input_o\) # (\B[3]~input_o\) ) ) # ( !\c[3]~4_combout\ & ( (!\B[3]~input_o\ & (\A[3]~input_o\ & \c[3]~3_combout\)) # (\B[3]~input_o\ & ((\c[3]~3_combout\) # (\A[3]~input_o\))) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101011111000001010101111101011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datac => \ALT_INV_A[3]~input_o\,
	datad => \ALT_INV_c[3]~3_combout\,
	dataf => \ALT_INV_c[3]~4_combout\,
	combout => rCOut(0));

-- Location: LABCELL_X55_Y4_N24
\cb[1]\ : arriaii_lcell_comb
-- Equation(s):
-- cb(1) = LCELL(( \cb~0_combout\ & ( rCOut(0) ) ) # ( !\cb~0_combout\ & ( rCOut(0) ) ) # ( \cb~0_combout\ & ( !rCOut(0) & ( (!\B[3]~input_o\ & (\A[3]~input_o\ & (!\B[2]~input_o\ $ (!\A[2]~input_o\)))) # (\B[3]~input_o\ & (!\A[3]~input_o\ & (!\B[2]~input_o\ 
-- $ (!\A[2]~input_o\)))) ) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100100100100011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_A[3]~input_o\,
	datad => \ALT_INV_A[2]~input_o\,
	datae => \ALT_INV_cb~0_combout\,
	dataf => ALT_INV_rCOut(0),
	combout => cb(1));

-- Location: IOIBUF_X52_Y0_N94
\B[4]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: IOIBUF_X54_Y0_N32
\A[4]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: LABCELL_X55_Y4_N0
\S~4\ : arriaii_lcell_comb
-- Equation(s):
-- \S~4_combout\ = ( \A[4]~input_o\ & ( !cb(1) $ (\B[4]~input_o\) ) ) # ( !\A[4]~input_o\ & ( !cb(1) $ (!\B[4]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010010110100101101010100101101001011010010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_cb(1),
	datac => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_A[4]~input_o\,
	combout => \S~4_combout\);

-- Location: IOIBUF_X59_Y6_N1
\A[5]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: IOIBUF_X59_Y6_N32
\B[5]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: MLABCELL_X54_Y4_N22
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

-- Location: LABCELL_X55_Y4_N6
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

-- Location: LABCELL_X55_Y4_N16
\S~5\ : arriaii_lcell_comb
-- Equation(s):
-- \S~5_combout\ = ( \c[5]~6_combout\ & ( !\A[5]~input_o\ $ (\B[5]~input_o\) ) ) # ( !\c[5]~6_combout\ & ( !\A[5]~input_o\ $ (!\B[5]~input_o\ $ (\c[5]~5_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011000011001111001100001111000011110000111100001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[5]~input_o\,
	datac => \ALT_INV_B[5]~input_o\,
	datad => \ALT_INV_c[5]~5_combout\,
	dataf => \ALT_INV_c[5]~6_combout\,
	combout => \S~5_combout\);

-- Location: IOIBUF_X52_Y0_N32
\A[6]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: IOIBUF_X52_Y0_N1
\B[6]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: LABCELL_X55_Y4_N38
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

-- Location: LABCELL_X55_Y4_N28
\S~6\ : arriaii_lcell_comb
-- Equation(s):
-- \S~6_combout\ = ( \c[6]~7_combout\ & ( !\A[6]~input_o\ $ (!\B[6]~input_o\) ) ) # ( !\c[6]~7_combout\ & ( !\A[6]~input_o\ $ (\B[6]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000001111111100000000111100001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[6]~input_o\,
	datad => \ALT_INV_B[6]~input_o\,
	dataf => \ALT_INV_c[6]~7_combout\,
	combout => \S~6_combout\);

-- Location: IOIBUF_X59_Y7_N63
\B[7]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: IOIBUF_X59_Y7_N32
\A[7]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: LABCELL_X55_Y4_N4
\S~7\ : arriaii_lcell_comb
-- Equation(s):
-- \S~7_combout\ = ( \c[6]~7_combout\ & ( !\B[7]~input_o\ $ (!\A[7]~input_o\ $ (((\B[6]~input_o\ & \A[6]~input_o\)))) ) ) # ( !\c[6]~7_combout\ & ( !\B[7]~input_o\ $ (!\A[7]~input_o\ $ (((\A[6]~input_o\) # (\B[6]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110110010010011011011001001001100110110110010010011011011001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[6]~input_o\,
	datab => \ALT_INV_B[7]~input_o\,
	datac => \ALT_INV_A[6]~input_o\,
	datad => \ALT_INV_A[7]~input_o\,
	dataf => \ALT_INV_c[6]~7_combout\,
	combout => \S~7_combout\);

-- Location: MLABCELL_X54_Y4_N6
\cb~2\ : arriaii_lcell_comb
-- Equation(s):
-- \cb~2_combout\ = ( \B[4]~input_o\ & ( \A[6]~input_o\ & ( (!\A[4]~input_o\ & (!\B[6]~input_o\ & (!\A[5]~input_o\ $ (!\B[5]~input_o\)))) ) ) ) # ( !\B[4]~input_o\ & ( \A[6]~input_o\ & ( (\A[4]~input_o\ & (!\B[6]~input_o\ & (!\A[5]~input_o\ $ 
-- (!\B[5]~input_o\)))) ) ) ) # ( \B[4]~input_o\ & ( !\A[6]~input_o\ & ( (!\A[4]~input_o\ & (\B[6]~input_o\ & (!\A[5]~input_o\ $ (!\B[5]~input_o\)))) ) ) ) # ( !\B[4]~input_o\ & ( !\A[6]~input_o\ & ( (\A[4]~input_o\ & (\B[6]~input_o\ & (!\A[5]~input_o\ $ 
-- (!\B[5]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010100000000000010100000010100000000000010100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[4]~input_o\,
	datab => \ALT_INV_A[5]~input_o\,
	datac => \ALT_INV_B[5]~input_o\,
	datad => \ALT_INV_B[6]~input_o\,
	datae => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_A[6]~input_o\,
	combout => \cb~2_combout\);

-- Location: MLABCELL_X54_Y4_N10
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

-- Location: LABCELL_X55_Y4_N20
\c[7]~9\ : arriaii_lcell_comb
-- Equation(s):
-- \c[7]~9_combout\ = ( !\c[6]~7_combout\ & ( (\B[6]~input_o\) # (\A[6]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[6]~input_o\,
	datad => \ALT_INV_B[6]~input_o\,
	dataf => \ALT_INV_c[6]~7_combout\,
	combout => \c[7]~9_combout\);

-- Location: LABCELL_X55_Y4_N32
\rCOut[1]\ : arriaii_lcell_comb
-- Equation(s):
-- rCOut(1) = LCELL(( \c[7]~9_combout\ & ( (\A[7]~input_o\) # (\B[7]~input_o\) ) ) # ( !\c[7]~9_combout\ & ( (!\B[7]~input_o\ & (\c[7]~8_combout\ & \A[7]~input_o\)) # (\B[7]~input_o\ & ((\A[7]~input_o\) # (\c[7]~8_combout\))) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100111111000000110011111100110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[7]~input_o\,
	datac => \ALT_INV_c[7]~8_combout\,
	datad => \ALT_INV_A[7]~input_o\,
	dataf => \ALT_INV_c[7]~9_combout\,
	combout => rCOut(1));

-- Location: LABCELL_X55_Y4_N2
\cb[2]\ : arriaii_lcell_comb
-- Equation(s):
-- cb(2) = LCELL(( rCOut(1) ) # ( !rCOut(1) & ( (cb(1) & (\cb~2_combout\ & (!\B[7]~input_o\ $ (!\A[7]~input_o\)))) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010100000000000001010011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_cb(1),
	datab => \ALT_INV_B[7]~input_o\,
	datac => \ALT_INV_A[7]~input_o\,
	datad => \ALT_INV_cb~2_combout\,
	dataf => ALT_INV_rCOut(1),
	combout => cb(2));

-- Location: LABCELL_X55_Y4_N18
\Ovfl~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Ovfl~0_combout\ = ( cb(2) & ( (!\c[7]~8_combout\ & !\c[7]~9_combout\) ) ) # ( !cb(2) & ( (\c[7]~9_combout\) # (\c[7]~8_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111010111110101111110100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_c[7]~8_combout\,
	datac => \ALT_INV_c[7]~9_combout\,
	dataf => ALT_INV_cb(2),
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


