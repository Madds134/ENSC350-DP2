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

-- DATE "11/21/2026 11:31:11"

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
-- S[0]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[1]	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[2]	=>  Location: PIN_AH16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[3]	=>  Location: PIN_AH6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[4]	=>  Location: PIN_AG6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[5]	=>  Location: PIN_AH13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[6]	=>  Location: PIN_AG12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[7]	=>  Location: PIN_AH12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cout	=>  Location: PIN_AH11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ovfl	=>  Location: PIN_AH14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_AH8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cin	=>  Location: PIN_AH9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_AG9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_AH7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_AG15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_AH10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_AH15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_AC13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_AH4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_AF13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_AE13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_AH5,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \Cin~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \S~0_combout\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \S~1_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|carry1[1]~0_combout\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|carry0[1]~0_combout\ : std_logic;
SIGNAL \S~2_combout\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \S~10_combout\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\ : std_logic;
SIGNAL \S~6_combout\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \c[4]~0_combout\ : std_logic;
SIGNAL \S~3_combout\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|carry0[1]~0_combout\ : std_logic;
SIGNAL \c[6]~2_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|carry1[1]~0_combout\ : std_logic;
SIGNAL \c[6]~1DUPLICATE_combout\ : std_logic;
SIGNAL \S~4_combout\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \S~5_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|carry0[1]~0_combout\ : std_logic;
SIGNAL \c[6]~1_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|carry1[1]~0_combout\ : std_logic;
SIGNAL \c[6]~2DUPLICATE_combout\ : std_logic;
SIGNAL \c~3_combout\ : std_logic;
SIGNAL \Ovfl~0_combout\ : std_logic;
SIGNAL \ALT_INV_c[6]~2DUPLICATE_combout\ : std_logic;
SIGNAL \ALT_INV_c[6]~1DUPLICATE_combout\ : std_logic;
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
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|ALT_INV_carry0[1]~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|ALT_INV_carry1[1]~0_combout\ : std_logic;
SIGNAL \ALT_INV_c[6]~2_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|ALT_INV_carry0[1]~0_combout\ : std_logic;
SIGNAL \ALT_INV_c[6]~1_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|ALT_INV_carry1[1]~0_combout\ : std_logic;
SIGNAL \ALT_INV_c[4]~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|ALT_INV_carry0[1]~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|ALT_INV_carry1[1]~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|ALT_INV_carry0[1]~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|ALT_INV_carry1[1]~0_combout\ : std_logic;

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
\ALT_INV_c[6]~2DUPLICATE_combout\ <= NOT \c[6]~2DUPLICATE_combout\;
\ALT_INV_c[6]~1DUPLICATE_combout\ <= NOT \c[6]~1DUPLICATE_combout\;
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
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|ALT_INV_carry0[1]~0_combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:HighHalf|carry0[1]~0_combout\;
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|ALT_INV_carry1[1]~0_combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:HighHalf|carry1[1]~0_combout\;
\ALT_INV_c[6]~2_combout\ <= NOT \c[6]~2_combout\;
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|ALT_INV_carry0[1]~0_combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:LowHalf|carry0[1]~0_combout\;
\ALT_INV_c[6]~1_combout\ <= NOT \c[6]~1_combout\;
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|ALT_INV_carry1[1]~0_combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:LowHalf|carry1[1]~0_combout\;
\ALT_INV_c[4]~0_combout\ <= NOT \c[4]~0_combout\;
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|ALT_INV_carry0[1]~0_combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\;
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|ALT_INV_carry1[1]~0_combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\;
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|ALT_INV_carry0[1]~0_combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:LowHalf|carry0[1]~0_combout\;
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|ALT_INV_carry1[1]~0_combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:LowHalf|carry1[1]~0_combout\;

-- Location: IOOBUF_X24_Y0_N2
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

-- Location: IOOBUF_X33_Y0_N98
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

-- Location: IOOBUF_X24_Y0_N36
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

-- Location: IOOBUF_X33_Y0_N67
\S[3]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~10_combout\,
	devoe => ww_devoe,
	o => \S[3]~output_o\);

-- Location: IOOBUF_X33_Y0_N5
\S[4]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~6_combout\,
	devoe => ww_devoe,
	o => \S[4]~output_o\);

-- Location: IOOBUF_X29_Y0_N36
\S[5]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~3_combout\,
	devoe => ww_devoe,
	o => \S[5]~output_o\);

-- Location: IOOBUF_X29_Y0_N2
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

-- Location: IOOBUF_X29_Y0_N67
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

-- Location: IOOBUF_X30_Y0_N67
\Cout~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \c~3_combout\,
	devoe => ww_devoe,
	o => \Cout~output_o\);

-- Location: IOOBUF_X29_Y0_N98
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

-- Location: IOIBUF_X32_Y0_N94
\A[0]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X32_Y0_N63
\Cin~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cin,
	o => \Cin~input_o\);

-- Location: IOIBUF_X30_Y0_N94
\B[0]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: MLABCELL_X31_Y1_N18
\S~0\ : arriaii_lcell_comb
-- Equation(s):
-- \S~0_combout\ = ( \Cin~input_o\ & ( \B[0]~input_o\ & ( \A[0]~input_o\ ) ) ) # ( !\Cin~input_o\ & ( \B[0]~input_o\ & ( !\A[0]~input_o\ ) ) ) # ( \Cin~input_o\ & ( !\B[0]~input_o\ & ( !\A[0]~input_o\ ) ) ) # ( !\Cin~input_o\ & ( !\B[0]~input_o\ & ( 
-- \A[0]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111100001111000011110000111100000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[0]~input_o\,
	datae => \ALT_INV_Cin~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \S~0_combout\);

-- Location: IOIBUF_X32_Y0_N1
\A[1]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: IOIBUF_X32_Y0_N32
\B[1]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: LABCELL_X32_Y1_N10
\S~1\ : arriaii_lcell_comb
-- Equation(s):
-- \S~1_combout\ = ( \Cin~input_o\ & ( \B[0]~input_o\ & ( !\A[1]~input_o\ $ (\B[1]~input_o\) ) ) ) # ( !\Cin~input_o\ & ( \B[0]~input_o\ & ( !\A[1]~input_o\ $ (!\A[0]~input_o\ $ (\B[1]~input_o\)) ) ) ) # ( \Cin~input_o\ & ( !\B[0]~input_o\ & ( 
-- !\A[1]~input_o\ $ (!\A[0]~input_o\ $ (\B[1]~input_o\)) ) ) ) # ( !\Cin~input_o\ & ( !\B[0]~input_o\ & ( !\A[1]~input_o\ $ (!\B[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111001100001111001100001100111100110000111100110000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[1]~input_o\,
	datac => \ALT_INV_A[0]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \ALT_INV_Cin~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \S~1_combout\);

-- Location: MLABCELL_X29_Y1_N8
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|carry1[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|carry1[1]~0_combout\ = ( \A[1]~input_o\ & ( ((\B[1]~input_o\) # (\A[0]~input_o\)) # (\B[0]~input_o\) ) ) # ( !\A[1]~input_o\ & ( (\B[1]~input_o\ & ((\A[0]~input_o\) # (\B[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000111111000000000011111100111111111111110011111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[0]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A[1]~input_o\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|carry1[1]~0_combout\);

-- Location: IOIBUF_X30_Y0_N1
\B[2]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: IOIBUF_X25_Y0_N1
\A[2]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: MLABCELL_X29_Y1_N30
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|carry0[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|carry0[1]~0_combout\ = ( \A[1]~input_o\ & ( ((\B[0]~input_o\ & \A[0]~input_o\)) # (\B[1]~input_o\) ) ) # ( !\A[1]~input_o\ & ( (\B[0]~input_o\ & (\B[1]~input_o\ & \A[0]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100001111001111110000111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_A[0]~input_o\,
	dataf => \ALT_INV_A[1]~input_o\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|carry0[1]~0_combout\);

-- Location: MLABCELL_X29_Y1_N18
\S~2\ : arriaii_lcell_comb
-- Equation(s):
-- \S~2_combout\ = ( \CarryNetwork|Recur:LowHalf|Recur:LowHalf|carry0[1]~0_combout\ & ( !\B[2]~input_o\ $ (!\A[2]~input_o\ $ (((!\Cin~input_o\) # (\CarryNetwork|Recur:LowHalf|Recur:LowHalf|carry1[1]~0_combout\)))) ) ) # ( 
-- !\CarryNetwork|Recur:LowHalf|Recur:LowHalf|carry0[1]~0_combout\ & ( !\B[2]~input_o\ $ (!\A[2]~input_o\ $ (((\Cin~input_o\ & \CarryNetwork|Recur:LowHalf|Recur:LowHalf|carry1[1]~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111011100001000111101110000110110100010010111011010001001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Cin~input_o\,
	datab => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|ALT_INV_carry1[1]~0_combout\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \ALT_INV_A[2]~input_o\,
	dataf => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|ALT_INV_carry0[1]~0_combout\,
	combout => \S~2_combout\);

-- Location: IOIBUF_X30_Y0_N32
\B[3]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: IOIBUF_X25_Y0_N63
\A[3]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: LABCELL_X32_Y1_N28
\S~10\ : arriaii_lcell_comb
-- Equation(s):
-- \S~10_combout\ = ( !\Cin~input_o\ & ( !\B[3]~input_o\ $ (!\A[3]~input_o\ $ (((!\B[2]~input_o\ & (\CarryNetwork|Recur:LowHalf|Recur:LowHalf|carry0[1]~0_combout\ & \A[2]~input_o\)) # (\B[2]~input_o\ & ((\A[2]~input_o\) # 
-- (\CarryNetwork|Recur:LowHalf|Recur:LowHalf|carry0[1]~0_combout\)))))) ) ) # ( \Cin~input_o\ & ( !\B[3]~input_o\ $ (!\A[3]~input_o\ $ (((!\B[2]~input_o\ & (\CarryNetwork|Recur:LowHalf|Recur:LowHalf|carry1[1]~0_combout\ & \A[2]~input_o\)) # (\B[2]~input_o\ 
-- & ((\A[2]~input_o\) # (\CarryNetwork|Recur:LowHalf|Recur:LowHalf|carry1[1]~0_combout\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0011011001101100001101100110110011001001100100111100100110010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|ALT_INV_carry1[1]~0_combout\,
	datad => \ALT_INV_A[2]~input_o\,
	datae => \ALT_INV_Cin~input_o\,
	dataf => \ALT_INV_A[3]~input_o\,
	datag => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|ALT_INV_carry0[1]~0_combout\,
	combout => \S~10_combout\);

-- Location: IOIBUF_X33_Y0_N32
\A[4]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: IOIBUF_X25_Y0_N94
\B[4]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: MLABCELL_X29_Y1_N22
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|carry1[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\ = ( \A[3]~input_o\ & ( ((\A[2]~input_o\) # (\B[2]~input_o\)) # (\B[3]~input_o\) ) ) # ( !\A[3]~input_o\ & ( (\B[3]~input_o\ & ((\A[2]~input_o\) # (\B[2]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101010101000001010101010101011111111111110101111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \ALT_INV_A[2]~input_o\,
	dataf => \ALT_INV_A[3]~input_o\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\);

-- Location: MLABCELL_X29_Y1_N20
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|carry0[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\ = ( \A[3]~input_o\ & ( ((\B[2]~input_o\ & \A[2]~input_o\)) # (\B[3]~input_o\) ) ) # ( !\A[3]~input_o\ & ( (\B[3]~input_o\ & (\B[2]~input_o\ & \A[2]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010101010101010111110101010101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \ALT_INV_A[2]~input_o\,
	dataf => \ALT_INV_A[3]~input_o\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\);

-- Location: LABCELL_X32_Y1_N24
\S~6\ : arriaii_lcell_comb
-- Equation(s):
-- \S~6_combout\ = ( !\Cin~input_o\ & ( !\A[4]~input_o\ $ (!\B[4]~input_o\ $ (((!\CarryNetwork|Recur:LowHalf|Recur:LowHalf|carry0[1]~0_combout\ & ((\CarryNetwork|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\))) # 
-- (\CarryNetwork|Recur:LowHalf|Recur:LowHalf|carry0[1]~0_combout\ & (\CarryNetwork|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\))))) ) ) # ( \Cin~input_o\ & ( !\A[4]~input_o\ $ (!\B[4]~input_o\ $ 
-- (((!\CarryNetwork|Recur:LowHalf|Recur:LowHalf|carry1[1]~0_combout\ & ((\CarryNetwork|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\))) # (\CarryNetwork|Recur:LowHalf|Recur:LowHalf|carry1[1]~0_combout\ & 
-- (\CarryNetwork|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0110011001101001011001100110100110010110100110011001011010011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[4]~input_o\,
	datab => \ALT_INV_B[4]~input_o\,
	datac => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|ALT_INV_carry1[1]~0_combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|ALT_INV_carry1[1]~0_combout\,
	datae => \ALT_INV_Cin~input_o\,
	dataf => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|ALT_INV_carry0[1]~0_combout\,
	datag => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|ALT_INV_carry0[1]~0_combout\,
	combout => \S~6_combout\);

-- Location: IOIBUF_X37_Y0_N94
\A[5]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: IOIBUF_X25_Y0_N32
\B[5]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: MLABCELL_X29_Y1_N16
\c[4]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \c[4]~0_combout\ = ( \CarryNetwork|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\ & ( ((!\Cin~input_o\ & ((!\CarryNetwork|Recur:LowHalf|Recur:LowHalf|carry0[1]~0_combout\))) # (\Cin~input_o\ & 
-- (!\CarryNetwork|Recur:LowHalf|Recur:LowHalf|carry1[1]~0_combout\))) # (\CarryNetwork|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\) ) ) # ( !\CarryNetwork|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\ & ( 
-- (\CarryNetwork|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\ & ((!\Cin~input_o\ & ((\CarryNetwork|Recur:LowHalf|Recur:LowHalf|carry0[1]~0_combout\))) # (\Cin~input_o\ & (\CarryNetwork|Recur:LowHalf|Recur:LowHalf|carry1[1]~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100001011000000010000101111101111010011111110111101001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Cin~input_o\,
	datab => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|ALT_INV_carry1[1]~0_combout\,
	datac => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|ALT_INV_carry1[1]~0_combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|ALT_INV_carry0[1]~0_combout\,
	dataf => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|ALT_INV_carry0[1]~0_combout\,
	combout => \c[4]~0_combout\);

-- Location: MLABCELL_X29_Y1_N0
\S~3\ : arriaii_lcell_comb
-- Equation(s):
-- \S~3_combout\ = ( \B[4]~input_o\ & ( \c[4]~0_combout\ & ( !\A[5]~input_o\ $ (\B[5]~input_o\) ) ) ) # ( !\B[4]~input_o\ & ( \c[4]~0_combout\ & ( !\A[4]~input_o\ $ (!\A[5]~input_o\ $ (\B[5]~input_o\)) ) ) ) # ( \B[4]~input_o\ & ( !\c[4]~0_combout\ & ( 
-- !\A[4]~input_o\ $ (!\A[5]~input_o\ $ (\B[5]~input_o\)) ) ) ) # ( !\B[4]~input_o\ & ( !\c[4]~0_combout\ & ( !\A[5]~input_o\ $ (!\B[5]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000010110101010010101011010101001011111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[4]~input_o\,
	datac => \ALT_INV_A[5]~input_o\,
	datad => \ALT_INV_B[5]~input_o\,
	datae => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_c[4]~0_combout\,
	combout => \S~3_combout\);

-- Location: IOIBUF_X35_Y0_N63
\B[6]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: IOIBUF_X35_Y0_N32
\A[6]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: MLABCELL_X29_Y1_N32
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|carry0[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|carry0[1]~0_combout\ = ( \A[5]~input_o\ & ( ((\A[4]~input_o\ & \B[4]~input_o\)) # (\B[5]~input_o\) ) ) # ( !\A[5]~input_o\ & ( (\A[4]~input_o\ & (\B[5]~input_o\ & \B[4]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100001111010111110000111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[4]~input_o\,
	datac => \ALT_INV_B[5]~input_o\,
	datad => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_A[5]~input_o\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|carry0[1]~0_combout\);

-- Location: MLABCELL_X29_Y1_N12
\c[6]~2\ : arriaii_lcell_comb
-- Equation(s):
-- \c[6]~2_combout\ = ( !\CarryNetwork|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\ & ( \CarryNetwork|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\ & ( (\CarryNetwork|Recur:HighHalf|Recur:LowHalf|carry0[1]~0_combout\ & ((!\Cin~input_o\ & 
-- ((!\CarryNetwork|Recur:LowHalf|Recur:LowHalf|carry0[1]~0_combout\))) # (\Cin~input_o\ & (!\CarryNetwork|Recur:LowHalf|Recur:LowHalf|carry1[1]~0_combout\)))) ) ) ) # ( \CarryNetwork|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\ & ( 
-- !\CarryNetwork|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\ & ( (\CarryNetwork|Recur:HighHalf|Recur:LowHalf|carry0[1]~0_combout\ & ((!\Cin~input_o\ & ((\CarryNetwork|Recur:LowHalf|Recur:LowHalf|carry0[1]~0_combout\))) # (\Cin~input_o\ & 
-- (\CarryNetwork|Recur:LowHalf|Recur:LowHalf|carry1[1]~0_combout\)))) ) ) ) # ( !\CarryNetwork|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\ & ( !\CarryNetwork|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\ & ( 
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|carry0[1]~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000010000110100001110000000100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|ALT_INV_carry1[1]~0_combout\,
	datab => \ALT_INV_Cin~input_o\,
	datac => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|ALT_INV_carry0[1]~0_combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|ALT_INV_carry0[1]~0_combout\,
	datae => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|ALT_INV_carry0[1]~0_combout\,
	dataf => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|ALT_INV_carry1[1]~0_combout\,
	combout => \c[6]~2_combout\);

-- Location: MLABCELL_X29_Y1_N10
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|carry1[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|carry1[1]~0_combout\ = ( \A[5]~input_o\ & ( (!\B[5]~input_o\ & (!\A[4]~input_o\ & !\B[4]~input_o\)) ) ) # ( !\A[5]~input_o\ & ( (!\B[5]~input_o\) # ((!\A[4]~input_o\ & !\B[4]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101010101010111110101010101010100000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[5]~input_o\,
	datac => \ALT_INV_A[4]~input_o\,
	datad => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_A[5]~input_o\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|carry1[1]~0_combout\);

-- Location: MLABCELL_X29_Y1_N6
\c[6]~1DUPLICATE\ : arriaii_lcell_comb
-- Equation(s):
-- \c[6]~1DUPLICATE_combout\ = ( \CarryNetwork|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\ & ( !\CarryNetwork|Recur:HighHalf|Recur:LowHalf|carry1[1]~0_combout\ & ( ((!\Cin~input_o\ & (!\CarryNetwork|Recur:LowHalf|Recur:LowHalf|carry0[1]~0_combout\)) # 
-- (\Cin~input_o\ & ((!\CarryNetwork|Recur:LowHalf|Recur:LowHalf|carry1[1]~0_combout\)))) # (\CarryNetwork|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\) ) ) ) # ( !\CarryNetwork|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\ & ( 
-- !\CarryNetwork|Recur:HighHalf|Recur:LowHalf|carry1[1]~0_combout\ & ( (\CarryNetwork|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\ & ((!\Cin~input_o\ & (\CarryNetwork|Recur:LowHalf|Recur:LowHalf|carry0[1]~0_combout\)) # (\Cin~input_o\ & 
-- ((\CarryNetwork|Recur:LowHalf|Recur:LowHalf|carry1[1]~0_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000111110111111000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Cin~input_o\,
	datab => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|ALT_INV_carry0[1]~0_combout\,
	datac => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|ALT_INV_carry1[1]~0_combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|ALT_INV_carry1[1]~0_combout\,
	datae => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|ALT_INV_carry0[1]~0_combout\,
	dataf => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|ALT_INV_carry1[1]~0_combout\,
	combout => \c[6]~1DUPLICATE_combout\);

-- Location: MLABCELL_X29_Y1_N34
\S~4\ : arriaii_lcell_comb
-- Equation(s):
-- \S~4_combout\ = ( \c[6]~1DUPLICATE_combout\ & ( !\B[6]~input_o\ $ (\A[6]~input_o\) ) ) # ( !\c[6]~1DUPLICATE_combout\ & ( !\B[6]~input_o\ $ (!\A[6]~input_o\ $ (\c[6]~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011000011001111001100001111000011110000111100001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[6]~input_o\,
	datac => \ALT_INV_A[6]~input_o\,
	datad => \ALT_INV_c[6]~2_combout\,
	dataf => \ALT_INV_c[6]~1DUPLICATE_combout\,
	combout => \S~4_combout\);

-- Location: IOIBUF_X35_Y0_N94
\B[7]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: IOIBUF_X35_Y0_N1
\A[7]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: MLABCELL_X29_Y1_N26
\S~5\ : arriaii_lcell_comb
-- Equation(s):
-- \S~5_combout\ = ( \c[6]~2_combout\ & ( \c[6]~1DUPLICATE_combout\ & ( !\B[7]~input_o\ $ (!\A[7]~input_o\ $ (((\A[6]~input_o\) # (\B[6]~input_o\)))) ) ) ) # ( !\c[6]~2_combout\ & ( \c[6]~1DUPLICATE_combout\ & ( !\B[7]~input_o\ $ (!\A[7]~input_o\ $ 
-- (((\A[6]~input_o\) # (\B[6]~input_o\)))) ) ) ) # ( \c[6]~2_combout\ & ( !\c[6]~1DUPLICATE_combout\ & ( !\B[7]~input_o\ $ (!\A[7]~input_o\ $ (((\A[6]~input_o\) # (\B[6]~input_o\)))) ) ) ) # ( !\c[6]~2_combout\ & ( !\c[6]~1DUPLICATE_combout\ & ( 
-- !\B[7]~input_o\ $ (!\A[7]~input_o\ $ (((\B[6]~input_o\ & \A[6]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011011001001011011001001001101101100100100110110110010010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[6]~input_o\,
	datab => \ALT_INV_B[7]~input_o\,
	datac => \ALT_INV_A[6]~input_o\,
	datad => \ALT_INV_A[7]~input_o\,
	datae => \ALT_INV_c[6]~2_combout\,
	dataf => \ALT_INV_c[6]~1DUPLICATE_combout\,
	combout => \S~5_combout\);

-- Location: MLABCELL_X34_Y1_N38
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|carry0[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|carry0[1]~0_combout\ = ( \A[7]~input_o\ & ( \A[6]~input_o\ & ( (\B[6]~input_o\) # (\B[7]~input_o\) ) ) ) # ( !\A[7]~input_o\ & ( \A[6]~input_o\ & ( (\B[7]~input_o\ & \B[6]~input_o\) ) ) ) # ( \A[7]~input_o\ & ( 
-- !\A[6]~input_o\ & ( \B[7]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000011110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[7]~input_o\,
	datad => \ALT_INV_B[6]~input_o\,
	datae => \ALT_INV_A[7]~input_o\,
	dataf => \ALT_INV_A[6]~input_o\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|carry0[1]~0_combout\);

-- Location: MLABCELL_X29_Y1_N4
\c[6]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \c[6]~1_combout\ = ( \CarryNetwork|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\ & ( !\CarryNetwork|Recur:HighHalf|Recur:LowHalf|carry1[1]~0_combout\ & ( ((!\Cin~input_o\ & (!\CarryNetwork|Recur:LowHalf|Recur:LowHalf|carry0[1]~0_combout\)) # 
-- (\Cin~input_o\ & ((!\CarryNetwork|Recur:LowHalf|Recur:LowHalf|carry1[1]~0_combout\)))) # (\CarryNetwork|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\) ) ) ) # ( !\CarryNetwork|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\ & ( 
-- !\CarryNetwork|Recur:HighHalf|Recur:LowHalf|carry1[1]~0_combout\ & ( (\CarryNetwork|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\ & ((!\Cin~input_o\ & (\CarryNetwork|Recur:LowHalf|Recur:LowHalf|carry0[1]~0_combout\)) # (\Cin~input_o\ & 
-- ((\CarryNetwork|Recur:LowHalf|Recur:LowHalf|carry1[1]~0_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100111110110001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Cin~input_o\,
	datab => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|ALT_INV_carry0[1]~0_combout\,
	datac => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|ALT_INV_carry1[1]~0_combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|ALT_INV_carry1[1]~0_combout\,
	datae => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|ALT_INV_carry0[1]~0_combout\,
	dataf => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|ALT_INV_carry1[1]~0_combout\,
	combout => \c[6]~1_combout\);

-- Location: MLABCELL_X34_Y1_N24
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|carry1[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|carry1[1]~0_combout\ = ( !\A[7]~input_o\ & ( \A[6]~input_o\ & ( !\B[7]~input_o\ ) ) ) # ( \A[7]~input_o\ & ( !\A[6]~input_o\ & ( (!\B[6]~input_o\ & !\B[7]~input_o\) ) ) ) # ( !\A[7]~input_o\ & ( !\A[6]~input_o\ 
-- & ( (!\B[6]~input_o\) # (!\B[7]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110000111100000000000011111111000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[6]~input_o\,
	datad => \ALT_INV_B[7]~input_o\,
	datae => \ALT_INV_A[7]~input_o\,
	dataf => \ALT_INV_A[6]~input_o\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|carry1[1]~0_combout\);

-- Location: MLABCELL_X29_Y1_N14
\c[6]~2DUPLICATE\ : arriaii_lcell_comb
-- Equation(s):
-- \c[6]~2DUPLICATE_combout\ = ( !\CarryNetwork|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\ & ( \CarryNetwork|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\ & ( (\CarryNetwork|Recur:HighHalf|Recur:LowHalf|carry0[1]~0_combout\ & ((!\Cin~input_o\ & 
-- ((!\CarryNetwork|Recur:LowHalf|Recur:LowHalf|carry0[1]~0_combout\))) # (\Cin~input_o\ & (!\CarryNetwork|Recur:LowHalf|Recur:LowHalf|carry1[1]~0_combout\)))) ) ) ) # ( \CarryNetwork|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\ & ( 
-- !\CarryNetwork|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\ & ( (\CarryNetwork|Recur:HighHalf|Recur:LowHalf|carry0[1]~0_combout\ & ((!\Cin~input_o\ & ((\CarryNetwork|Recur:LowHalf|Recur:LowHalf|carry0[1]~0_combout\))) # (\Cin~input_o\ & 
-- (\CarryNetwork|Recur:LowHalf|Recur:LowHalf|carry1[1]~0_combout\)))) ) ) ) # ( !\CarryNetwork|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\ & ( !\CarryNetwork|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\ & ( 
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|carry0[1]~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000000001110100000000111000100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|ALT_INV_carry1[1]~0_combout\,
	datab => \ALT_INV_Cin~input_o\,
	datac => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|ALT_INV_carry0[1]~0_combout\,
	datad => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|ALT_INV_carry0[1]~0_combout\,
	datae => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|ALT_INV_carry0[1]~0_combout\,
	dataf => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|ALT_INV_carry1[1]~0_combout\,
	combout => \c[6]~2DUPLICATE_combout\);

-- Location: MLABCELL_X29_Y1_N28
\c~3\ : arriaii_lcell_comb
-- Equation(s):
-- \c~3_combout\ = ( \c[6]~2DUPLICATE_combout\ & ( !\CarryNetwork|Recur:HighHalf|Recur:HighHalf|carry1[1]~0_combout\ ) ) # ( !\c[6]~2DUPLICATE_combout\ & ( (!\c[6]~1_combout\ & (\CarryNetwork|Recur:HighHalf|Recur:HighHalf|carry0[1]~0_combout\)) # 
-- (\c[6]~1_combout\ & ((!\CarryNetwork|Recur:HighHalf|Recur:HighHalf|carry1[1]~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101010000010111110101000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|ALT_INV_carry0[1]~0_combout\,
	datac => \ALT_INV_c[6]~1_combout\,
	datad => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|ALT_INV_carry1[1]~0_combout\,
	dataf => \ALT_INV_c[6]~2DUPLICATE_combout\,
	combout => \c~3_combout\);

-- Location: MLABCELL_X29_Y1_N38
\Ovfl~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Ovfl~0_combout\ = ( \c[6]~1_combout\ & ( \c[6]~2DUPLICATE_combout\ & ( !\CarryNetwork|Recur:HighHalf|Recur:HighHalf|carry1[1]~0_combout\ $ (((\A[6]~input_o\) # (\B[6]~input_o\))) ) ) ) # ( !\c[6]~1_combout\ & ( \c[6]~2DUPLICATE_combout\ & ( 
-- !\CarryNetwork|Recur:HighHalf|Recur:HighHalf|carry1[1]~0_combout\ $ (((\A[6]~input_o\) # (\B[6]~input_o\))) ) ) ) # ( \c[6]~1_combout\ & ( !\c[6]~2DUPLICATE_combout\ & ( !\CarryNetwork|Recur:HighHalf|Recur:HighHalf|carry1[1]~0_combout\ $ 
-- (((\A[6]~input_o\) # (\B[6]~input_o\))) ) ) ) # ( !\c[6]~1_combout\ & ( !\c[6]~2DUPLICATE_combout\ & ( !\CarryNetwork|Recur:HighHalf|Recur:HighHalf|carry0[1]~0_combout\ $ (((!\B[6]~input_o\) # (!\A[6]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111101110100001111000011110000111100001111000011110000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[6]~input_o\,
	datab => \ALT_INV_A[6]~input_o\,
	datac => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|ALT_INV_carry1[1]~0_combout\,
	datad => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|ALT_INV_carry0[1]~0_combout\,
	datae => \ALT_INV_c[6]~1_combout\,
	dataf => \ALT_INV_c[6]~2DUPLICATE_combout\,
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


