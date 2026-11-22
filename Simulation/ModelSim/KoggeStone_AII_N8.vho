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

-- DATE "11/21/2026 11:37:06"

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
-- S[0]	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[1]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[2]	=>  Location: PIN_W12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[3]	=>  Location: PIN_AF2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[4]	=>  Location: PIN_AE9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[5]	=>  Location: PIN_AG4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[6]	=>  Location: PIN_AF6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[7]	=>  Location: PIN_AG3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cout	=>  Location: PIN_Y12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ovfl	=>  Location: PIN_W11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_AH2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_AF4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cin	=>  Location: PIN_AH3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_AF5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_AE5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_AF7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_AE6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_AE8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_AE4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_AC11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_AE7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_AF8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \Cin~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \S~0_combout\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \S~1_combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \c~0_combout\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gpre[1]~0_combout\ : std_logic;
SIGNAL \S~2_combout\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][2]~0_combout\ : std_logic;
SIGNAL \S~3_combout\ : std_logic;
SIGNAL \S~4_combout\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gk~2_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][3]~1_combout\ : std_logic;
SIGNAL \S~5_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][4]~3_combout\ : std_logic;
SIGNAL \S~6_combout\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \S~7_combout\ : std_logic;
SIGNAL \S~8_combout\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][5]~4_combout\ : std_logic;
SIGNAL \S~9_combout\ : std_logic;
SIGNAL \S~10_combout\ : std_logic;
SIGNAL \S~11_combout\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gk~6_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][6]~5_combout\ : std_logic;
SIGNAL \c[7]~1_combout\ : std_logic;
SIGNAL \S~12_combout\ : std_logic;
SIGNAL \c~0DUPLICATE_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~7_combout\ : std_logic;
SIGNAL \c~2_combout\ : std_logic;
SIGNAL \c~4DUPLICATE_combout\ : std_logic;
SIGNAL \c~3_combout\ : std_logic;
SIGNAL \c~4_combout\ : std_logic;
SIGNAL \Ovfl~0_combout\ : std_logic;
SIGNAL p : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_c~4DUPLICATE_combout\ : std_logic;
SIGNAL \ALT_INV_c~0DUPLICATE_combout\ : std_logic;
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
SIGNAL \ALT_INV_c~4_combout\ : std_logic;
SIGNAL \ALT_INV_c~2_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~7_combout\ : std_logic;
SIGNAL \ALT_INV_c[7]~1_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~6_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk[1][6]~5_combout\ : std_logic;
SIGNAL \ALT_INV_S~10_combout\ : std_logic;
SIGNAL \ALT_INV_S~9_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk[1][5]~4_combout\ : std_logic;
SIGNAL \ALT_INV_S~7_combout\ : std_logic;
SIGNAL \ALT_INV_S~6_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk[1][4]~3_combout\ : std_logic;
SIGNAL ALT_INV_p : std_logic_vector(5 DOWNTO 5);
SIGNAL \PrefixNetwork|ALT_INV_Gk~2_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk[1][3]~1_combout\ : std_logic;
SIGNAL \ALT_INV_S~3_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk[1][2]~0_combout\ : std_logic;
SIGNAL \ALT_INV_c~0_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gpre[1]~0_combout\ : std_logic;

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
\ALT_INV_c~4DUPLICATE_combout\ <= NOT \c~4DUPLICATE_combout\;
\ALT_INV_c~0DUPLICATE_combout\ <= NOT \c~0DUPLICATE_combout\;
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
\ALT_INV_c~4_combout\ <= NOT \c~4_combout\;
\ALT_INV_c~2_combout\ <= NOT \c~2_combout\;
\PrefixNetwork|ALT_INV_Gk~7_combout\ <= NOT \PrefixNetwork|Gk~7_combout\;
\ALT_INV_c[7]~1_combout\ <= NOT \c[7]~1_combout\;
\PrefixNetwork|ALT_INV_Gk~6_combout\ <= NOT \PrefixNetwork|Gk~6_combout\;
\PrefixNetwork|ALT_INV_Gk[1][6]~5_combout\ <= NOT \PrefixNetwork|Gk[1][6]~5_combout\;
\ALT_INV_S~10_combout\ <= NOT \S~10_combout\;
\ALT_INV_S~9_combout\ <= NOT \S~9_combout\;
\PrefixNetwork|ALT_INV_Gk[1][5]~4_combout\ <= NOT \PrefixNetwork|Gk[1][5]~4_combout\;
\ALT_INV_S~7_combout\ <= NOT \S~7_combout\;
\ALT_INV_S~6_combout\ <= NOT \S~6_combout\;
\PrefixNetwork|ALT_INV_Gk[1][4]~3_combout\ <= NOT \PrefixNetwork|Gk[1][4]~3_combout\;
ALT_INV_p(5) <= NOT p(5);
\PrefixNetwork|ALT_INV_Gk~2_combout\ <= NOT \PrefixNetwork|Gk~2_combout\;
\PrefixNetwork|ALT_INV_Gk[1][3]~1_combout\ <= NOT \PrefixNetwork|Gk[1][3]~1_combout\;
\ALT_INV_S~3_combout\ <= NOT \S~3_combout\;
\PrefixNetwork|ALT_INV_Gk[1][2]~0_combout\ <= NOT \PrefixNetwork|Gk[1][2]~0_combout\;
\ALT_INV_c~0_combout\ <= NOT \c~0_combout\;
\PrefixNetwork|ALT_INV_Gpre[1]~0_combout\ <= NOT \PrefixNetwork|Gpre[1]~0_combout\;

-- Location: IOOBUF_X52_Y0_N36
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

-- Location: IOOBUF_X52_Y0_N98
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

-- Location: IOOBUF_X41_Y0_N33
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

-- Location: IOOBUF_X52_Y0_N2
\S[3]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~4_combout\,
	devoe => ww_devoe,
	o => \S[3]~output_o\);

-- Location: IOOBUF_X41_Y0_N5
\S[4]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~5_combout\,
	devoe => ww_devoe,
	o => \S[4]~output_o\);

-- Location: IOOBUF_X48_Y0_N67
\S[5]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~8_combout\,
	devoe => ww_devoe,
	o => \S[5]~output_o\);

-- Location: IOOBUF_X45_Y0_N67
\S[6]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~11_combout\,
	devoe => ww_devoe,
	o => \S[6]~output_o\);

-- Location: IOOBUF_X48_Y0_N5
\S[7]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~12_combout\,
	devoe => ww_devoe,
	o => \S[7]~output_o\);

-- Location: IOOBUF_X45_Y0_N98
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

-- Location: IOOBUF_X45_Y0_N36
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

-- Location: IOIBUF_X50_Y0_N63
\B[0]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X50_Y0_N94
\Cin~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cin,
	o => \Cin~input_o\);

-- Location: IOIBUF_X50_Y0_N32
\A[0]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: LABCELL_X50_Y1_N32
\S~0\ : arriaii_lcell_comb
-- Equation(s):
-- \S~0_combout\ = ( \Cin~input_o\ & ( \A[0]~input_o\ & ( \B[0]~input_o\ ) ) ) # ( !\Cin~input_o\ & ( \A[0]~input_o\ & ( !\B[0]~input_o\ ) ) ) # ( \Cin~input_o\ & ( !\A[0]~input_o\ & ( !\B[0]~input_o\ ) ) ) # ( !\Cin~input_o\ & ( !\A[0]~input_o\ & ( 
-- \B[0]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111111111110000000011111111000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_B[0]~input_o\,
	datae => \ALT_INV_Cin~input_o\,
	dataf => \ALT_INV_A[0]~input_o\,
	combout => \S~0_combout\);

-- Location: IOIBUF_X47_Y0_N32
\B[1]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: IOIBUF_X47_Y0_N63
\A[1]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: MLABCELL_X49_Y1_N10
\S~1\ : arriaii_lcell_comb
-- Equation(s):
-- \S~1_combout\ = ( \B[0]~input_o\ & ( \A[1]~input_o\ & ( !\B[1]~input_o\ $ (((\A[0]~input_o\) # (\Cin~input_o\))) ) ) ) # ( !\B[0]~input_o\ & ( \A[1]~input_o\ & ( !\B[1]~input_o\ $ (((\Cin~input_o\ & \A[0]~input_o\))) ) ) ) # ( \B[0]~input_o\ & ( 
-- !\A[1]~input_o\ & ( !\B[1]~input_o\ $ (((!\Cin~input_o\ & !\A[0]~input_o\))) ) ) ) # ( !\B[0]~input_o\ & ( !\A[1]~input_o\ & ( !\B[1]~input_o\ $ (((!\Cin~input_o\) # (!\A[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100111100001111001111000011110000110000111100001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Cin~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_A[0]~input_o\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_A[1]~input_o\,
	combout => \S~1_combout\);

-- Location: IOIBUF_X47_Y0_N1
\A[2]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: MLABCELL_X46_Y1_N4
\c~0\ : arriaii_lcell_comb
-- Equation(s):
-- \c~0_combout\ = ( !\B[0]~input_o\ & ( \A[0]~input_o\ & ( (\Cin~input_o\ & (!\B[1]~input_o\ $ (!\A[1]~input_o\))) ) ) ) # ( \B[0]~input_o\ & ( !\A[0]~input_o\ & ( (\Cin~input_o\ & (!\B[1]~input_o\ $ (!\A[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110000110000000011000011000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_Cin~input_o\,
	datad => \ALT_INV_A[1]~input_o\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_A[0]~input_o\,
	combout => \c~0_combout\);

-- Location: IOIBUF_X43_Y0_N63
\B[2]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: MLABCELL_X46_Y1_N10
\PrefixNetwork|Gpre[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gpre[1]~0_combout\ = ( \B[0]~input_o\ & ( (!\B[1]~input_o\ & (\A[0]~input_o\ & \A[1]~input_o\)) # (\B[1]~input_o\ & ((\A[1]~input_o\) # (\A[0]~input_o\))) ) ) # ( !\B[0]~input_o\ & ( (\B[1]~input_o\ & \A[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100000101010111110000010101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_A[0]~input_o\,
	datad => \ALT_INV_A[1]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \PrefixNetwork|Gpre[1]~0_combout\);

-- Location: MLABCELL_X46_Y1_N0
\S~2\ : arriaii_lcell_comb
-- Equation(s):
-- \S~2_combout\ = ( \PrefixNetwork|Gpre[1]~0_combout\ & ( !\A[2]~input_o\ $ (\B[2]~input_o\) ) ) # ( !\PrefixNetwork|Gpre[1]~0_combout\ & ( !\A[2]~input_o\ $ (!\c~0_combout\ $ (\B[2]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101010100101010110101010010110101010010101011010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[2]~input_o\,
	datac => \ALT_INV_c~0_combout\,
	datad => \ALT_INV_B[2]~input_o\,
	dataf => \PrefixNetwork|ALT_INV_Gpre[1]~0_combout\,
	combout => \S~2_combout\);

-- Location: IOIBUF_X45_Y0_N1
\B[3]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: IOIBUF_X47_Y0_N94
\A[3]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: LABCELL_X47_Y1_N24
\PrefixNetwork|Gk[1][2]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][2]~0_combout\ = ( \B[2]~input_o\ & ( ((\B[1]~input_o\ & \A[1]~input_o\)) # (\A[2]~input_o\) ) ) # ( !\B[2]~input_o\ & ( (\B[1]~input_o\ & (\A[2]~input_o\ & \A[1]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100001111010111110000111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_A[2]~input_o\,
	datad => \ALT_INV_A[1]~input_o\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \PrefixNetwork|Gk[1][2]~0_combout\);

-- Location: LABCELL_X47_Y1_N6
\S~3\ : arriaii_lcell_comb
-- Equation(s):
-- \S~3_combout\ = ( \B[0]~input_o\ & ( (!\Cin~input_o\ & (\A[0]~input_o\ & (!\A[1]~input_o\ $ (!\B[1]~input_o\)))) # (\Cin~input_o\ & (!\A[1]~input_o\ $ ((!\B[1]~input_o\)))) ) ) # ( !\B[0]~input_o\ & ( (\Cin~input_o\ & (\A[0]~input_o\ & (!\A[1]~input_o\ $ 
-- (!\B[1]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000110000000000000011000000110011001100000011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[1]~input_o\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_Cin~input_o\,
	datad => \ALT_INV_A[0]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \S~3_combout\);

-- Location: LABCELL_X47_Y1_N16
\S~4\ : arriaii_lcell_comb
-- Equation(s):
-- \S~4_combout\ = ( \PrefixNetwork|Gk[1][2]~0_combout\ & ( \S~3_combout\ & ( !\B[3]~input_o\ $ (\A[3]~input_o\) ) ) ) # ( !\PrefixNetwork|Gk[1][2]~0_combout\ & ( \S~3_combout\ & ( !\B[3]~input_o\ $ (!\A[3]~input_o\ $ (!\A[2]~input_o\ $ (!\B[2]~input_o\))) ) 
-- ) ) # ( \PrefixNetwork|Gk[1][2]~0_combout\ & ( !\S~3_combout\ & ( !\B[3]~input_o\ $ (\A[3]~input_o\) ) ) ) # ( !\PrefixNetwork|Gk[1][2]~0_combout\ & ( !\S~3_combout\ & ( !\B[3]~input_o\ $ (!\A[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110100110011001100101101001100101101001100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_A[3]~input_o\,
	datac => \ALT_INV_A[2]~input_o\,
	datad => \ALT_INV_B[2]~input_o\,
	datae => \PrefixNetwork|ALT_INV_Gk[1][2]~0_combout\,
	dataf => \ALT_INV_S~3_combout\,
	combout => \S~4_combout\);

-- Location: IOIBUF_X48_Y0_N32
\A[4]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: IOIBUF_X43_Y0_N32
\B[4]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: MLABCELL_X46_Y1_N22
\PrefixNetwork|Gk~2\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~2_combout\ = ( \B[2]~input_o\ & ( (!\A[2]~input_o\ & (!\B[3]~input_o\ $ (!\A[3]~input_o\))) ) ) # ( !\B[2]~input_o\ & ( (\A[2]~input_o\ & (!\B[3]~input_o\ $ (!\A[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001011010000000000101101001011010000000000101101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datac => \ALT_INV_A[3]~input_o\,
	datad => \ALT_INV_A[2]~input_o\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \PrefixNetwork|Gk~2_combout\);

-- Location: MLABCELL_X46_Y1_N2
\PrefixNetwork|Gk[1][3]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][3]~1_combout\ = ( \A[2]~input_o\ & ( (!\B[3]~input_o\ & (\A[3]~input_o\ & \B[2]~input_o\)) # (\B[3]~input_o\ & ((\B[2]~input_o\) # (\A[3]~input_o\))) ) ) # ( !\A[2]~input_o\ & ( (\B[3]~input_o\ & \A[3]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000011001111110000001100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[3]~input_o\,
	datac => \ALT_INV_A[3]~input_o\,
	datad => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_A[2]~input_o\,
	combout => \PrefixNetwork|Gk[1][3]~1_combout\);

-- Location: MLABCELL_X46_Y1_N18
\S~5\ : arriaii_lcell_comb
-- Equation(s):
-- \S~5_combout\ = ( \c~0_combout\ & ( \PrefixNetwork|Gpre[1]~0_combout\ & ( !\A[4]~input_o\ $ (!\B[4]~input_o\ $ (((\PrefixNetwork|Gk[1][3]~1_combout\) # (\PrefixNetwork|Gk~2_combout\)))) ) ) ) # ( !\c~0_combout\ & ( \PrefixNetwork|Gpre[1]~0_combout\ & ( 
-- !\A[4]~input_o\ $ (!\B[4]~input_o\ $ (((\PrefixNetwork|Gk[1][3]~1_combout\) # (\PrefixNetwork|Gk~2_combout\)))) ) ) ) # ( \c~0_combout\ & ( !\PrefixNetwork|Gpre[1]~0_combout\ & ( !\A[4]~input_o\ $ (!\B[4]~input_o\ $ (((\PrefixNetwork|Gk[1][3]~1_combout\) 
-- # (\PrefixNetwork|Gk~2_combout\)))) ) ) ) # ( !\c~0_combout\ & ( !\PrefixNetwork|Gpre[1]~0_combout\ & ( !\A[4]~input_o\ $ (!\B[4]~input_o\ $ (\PrefixNetwork|Gk[1][3]~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011010011001011010011001100101101001100110010110100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[4]~input_o\,
	datab => \ALT_INV_B[4]~input_o\,
	datac => \PrefixNetwork|ALT_INV_Gk~2_combout\,
	datad => \PrefixNetwork|ALT_INV_Gk[1][3]~1_combout\,
	datae => \ALT_INV_c~0_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gpre[1]~0_combout\,
	combout => \S~5_combout\);

-- Location: LABCELL_X47_Y1_N26
\PrefixNetwork|Gk[1][4]~3\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][4]~3_combout\ = ( \B[3]~input_o\ & ( (!\B[4]~input_o\ & (\A[3]~input_o\ & \A[4]~input_o\)) # (\B[4]~input_o\ & ((\A[4]~input_o\) # (\A[3]~input_o\))) ) ) # ( !\B[3]~input_o\ & ( (\B[4]~input_o\ & \A[4]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100000011001111110000001100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[4]~input_o\,
	datac => \ALT_INV_A[3]~input_o\,
	datad => \ALT_INV_A[4]~input_o\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \PrefixNetwork|Gk[1][4]~3_combout\);

-- Location: LABCELL_X47_Y1_N36
\S~6\ : arriaii_lcell_comb
-- Equation(s):
-- \S~6_combout\ = ( \A[3]~input_o\ & ( (!\B[3]~input_o\ & (!\A[4]~input_o\ $ (!\B[4]~input_o\))) ) ) # ( !\A[3]~input_o\ & ( (\B[3]~input_o\ & (!\A[4]~input_o\ $ (!\B[4]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001011010000000000101101001011010000000000101101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[4]~input_o\,
	datac => \ALT_INV_B[4]~input_o\,
	datad => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_A[3]~input_o\,
	combout => \S~6_combout\);

-- Location: IOIBUF_X48_Y0_N94
\B[5]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: IOIBUF_X50_Y0_N1
\A[5]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: LABCELL_X47_Y1_N4
\p[5]\ : arriaii_lcell_comb
-- Equation(s):
-- p(5) = ( \A[5]~input_o\ & ( !\B[5]~input_o\ ) ) # ( !\A[5]~input_o\ & ( \B[5]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_B[5]~input_o\,
	dataf => \ALT_INV_A[5]~input_o\,
	combout => p(5));

-- Location: LABCELL_X47_Y1_N32
\S~7\ : arriaii_lcell_comb
-- Equation(s):
-- \S~7_combout\ = ( \B[4]~input_o\ & ( \B[3]~input_o\ & ( (!\A[4]~input_o\ & (!\A[3]~input_o\ & (!\B[2]~input_o\ $ (!\A[2]~input_o\)))) ) ) ) # ( !\B[4]~input_o\ & ( \B[3]~input_o\ & ( (\A[4]~input_o\ & (!\A[3]~input_o\ & (!\B[2]~input_o\ $ 
-- (!\A[2]~input_o\)))) ) ) ) # ( \B[4]~input_o\ & ( !\B[3]~input_o\ & ( (!\A[4]~input_o\ & (\A[3]~input_o\ & (!\B[2]~input_o\ $ (!\A[2]~input_o\)))) ) ) ) # ( !\B[4]~input_o\ & ( !\B[3]~input_o\ & ( (\A[4]~input_o\ & (\A[3]~input_o\ & (!\B[2]~input_o\ $ 
-- (!\A[2]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100010000000000100010000000000100010000000000100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[4]~input_o\,
	datab => \ALT_INV_A[3]~input_o\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \ALT_INV_A[2]~input_o\,
	datae => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \S~7_combout\);

-- Location: LABCELL_X47_Y1_N28
\S~8\ : arriaii_lcell_comb
-- Equation(s):
-- \S~8_combout\ = ( p(5) & ( \S~7_combout\ & ( (!\S~3_combout\ & (!\PrefixNetwork|Gk[1][4]~3_combout\ & ((!\PrefixNetwork|Gk[1][2]~0_combout\) # (!\S~6_combout\)))) ) ) ) # ( !p(5) & ( \S~7_combout\ & ( (((\PrefixNetwork|Gk[1][2]~0_combout\ & 
-- \S~6_combout\)) # (\PrefixNetwork|Gk[1][4]~3_combout\)) # (\S~3_combout\) ) ) ) # ( p(5) & ( !\S~7_combout\ & ( (!\PrefixNetwork|Gk[1][4]~3_combout\ & ((!\PrefixNetwork|Gk[1][2]~0_combout\) # (!\S~6_combout\))) ) ) ) # ( !p(5) & ( !\S~7_combout\ & ( 
-- ((\PrefixNetwork|Gk[1][2]~0_combout\ & \S~6_combout\)) # (\PrefixNetwork|Gk[1][4]~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101011111111100001010000000111111011111111100000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|ALT_INV_Gk[1][2]~0_combout\,
	datab => \ALT_INV_S~3_combout\,
	datac => \PrefixNetwork|ALT_INV_Gk[1][4]~3_combout\,
	datad => \ALT_INV_S~6_combout\,
	datae => ALT_INV_p(5),
	dataf => \ALT_INV_S~7_combout\,
	combout => \S~8_combout\);

-- Location: IOIBUF_X43_Y0_N94
\B[6]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: IOIBUF_X43_Y0_N1
\A[6]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: LABCELL_X47_Y1_N38
\PrefixNetwork|Gk[1][5]~4\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][5]~4_combout\ = ( \A[5]~input_o\ & ( ((\B[4]~input_o\ & \A[4]~input_o\)) # (\B[5]~input_o\) ) ) # ( !\A[5]~input_o\ & ( (\B[4]~input_o\ & (\A[4]~input_o\ & \B[5]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100000011111111110000001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[4]~input_o\,
	datac => \ALT_INV_A[4]~input_o\,
	datad => \ALT_INV_B[5]~input_o\,
	dataf => \ALT_INV_A[5]~input_o\,
	combout => \PrefixNetwork|Gk[1][5]~4_combout\);

-- Location: LABCELL_X47_Y1_N2
\S~9\ : arriaii_lcell_comb
-- Equation(s):
-- \S~9_combout\ = ( \B[4]~input_o\ & ( \A[5]~input_o\ & ( (!\B[5]~input_o\ & !\A[4]~input_o\) ) ) ) # ( !\B[4]~input_o\ & ( \A[5]~input_o\ & ( (!\B[5]~input_o\ & \A[4]~input_o\) ) ) ) # ( \B[4]~input_o\ & ( !\A[5]~input_o\ & ( (\B[5]~input_o\ & 
-- !\A[4]~input_o\) ) ) ) # ( !\B[4]~input_o\ & ( !\A[5]~input_o\ & ( (\B[5]~input_o\ & \A[4]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000011110000000000000000111100001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[5]~input_o\,
	datad => \ALT_INV_A[4]~input_o\,
	datae => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_A[5]~input_o\,
	combout => \S~9_combout\);

-- Location: MLABCELL_X46_Y1_N14
\S~10\ : arriaii_lcell_comb
-- Equation(s):
-- \S~10_combout\ = ( \c~0_combout\ & ( \PrefixNetwork|Gpre[1]~0_combout\ & ( \PrefixNetwork|Gk~2_combout\ ) ) ) # ( !\c~0_combout\ & ( \PrefixNetwork|Gpre[1]~0_combout\ & ( \PrefixNetwork|Gk~2_combout\ ) ) ) # ( \c~0_combout\ & ( 
-- !\PrefixNetwork|Gpre[1]~0_combout\ & ( \PrefixNetwork|Gk~2_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|ALT_INV_Gk~2_combout\,
	datae => \ALT_INV_c~0_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gpre[1]~0_combout\,
	combout => \S~10_combout\);

-- Location: MLABCELL_X46_Y1_N24
\S~11\ : arriaii_lcell_comb
-- Equation(s):
-- \S~11_combout\ = ( \S~9_combout\ & ( \S~10_combout\ & ( !\B[6]~input_o\ $ (\A[6]~input_o\) ) ) ) # ( !\S~9_combout\ & ( \S~10_combout\ & ( !\B[6]~input_o\ $ (!\A[6]~input_o\ $ (\PrefixNetwork|Gk[1][5]~4_combout\)) ) ) ) # ( \S~9_combout\ & ( 
-- !\S~10_combout\ & ( !\B[6]~input_o\ $ (!\A[6]~input_o\ $ (((\PrefixNetwork|Gk[1][3]~1_combout\) # (\PrefixNetwork|Gk[1][5]~4_combout\)))) ) ) ) # ( !\S~9_combout\ & ( !\S~10_combout\ & ( !\B[6]~input_o\ $ (!\A[6]~input_o\ $ 
-- (\PrefixNetwork|Gk[1][5]~4_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101101001011010011001100101101001011010011001100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[6]~input_o\,
	datab => \ALT_INV_A[6]~input_o\,
	datac => \PrefixNetwork|ALT_INV_Gk[1][5]~4_combout\,
	datad => \PrefixNetwork|ALT_INV_Gk[1][3]~1_combout\,
	datae => \ALT_INV_S~9_combout\,
	dataf => \ALT_INV_S~10_combout\,
	combout => \S~11_combout\);

-- Location: IOIBUF_X41_Y0_N94
\A[7]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: IOIBUF_X41_Y0_N63
\B[7]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: LABCELL_X47_Y1_N14
\PrefixNetwork|Gk~6\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~6_combout\ = ( \A[6]~input_o\ & ( (!\B[6]~input_o\ & (!\B[5]~input_o\ $ (!\A[5]~input_o\))) ) ) # ( !\A[6]~input_o\ & ( (\B[6]~input_o\ & (!\B[5]~input_o\ $ (!\A[5]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000111100000000000011110000111100000000000011110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[5]~input_o\,
	datac => \ALT_INV_A[5]~input_o\,
	datad => \ALT_INV_B[6]~input_o\,
	dataf => \ALT_INV_A[6]~input_o\,
	combout => \PrefixNetwork|Gk~6_combout\);

-- Location: LABCELL_X47_Y1_N12
\PrefixNetwork|Gk[1][6]~5\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][6]~5_combout\ = ( \A[6]~input_o\ & ( ((\B[5]~input_o\ & \A[5]~input_o\)) # (\B[6]~input_o\) ) ) # ( !\A[6]~input_o\ & ( (\B[5]~input_o\ & (\B[6]~input_o\ & \A[5]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100001111001111110000111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[5]~input_o\,
	datac => \ALT_INV_B[6]~input_o\,
	datad => \ALT_INV_A[5]~input_o\,
	dataf => \ALT_INV_A[6]~input_o\,
	combout => \PrefixNetwork|Gk[1][6]~5_combout\);

-- Location: LABCELL_X47_Y1_N10
\c[7]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \c[7]~1_combout\ = ( \S~6_combout\ & ( \S~3_combout\ & ( (!\A[2]~input_o\ $ (!\B[2]~input_o\)) # (\PrefixNetwork|Gk[1][2]~0_combout\) ) ) ) # ( \S~6_combout\ & ( !\S~3_combout\ & ( \PrefixNetwork|Gk[1][2]~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000011110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[2]~input_o\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \PrefixNetwork|ALT_INV_Gk[1][2]~0_combout\,
	datae => \ALT_INV_S~6_combout\,
	dataf => \ALT_INV_S~3_combout\,
	combout => \c[7]~1_combout\);

-- Location: LABCELL_X47_Y1_N22
\S~12\ : arriaii_lcell_comb
-- Equation(s):
-- \S~12_combout\ = ( \PrefixNetwork|Gk[1][4]~3_combout\ & ( \c[7]~1_combout\ & ( !\A[7]~input_o\ $ (!\B[7]~input_o\ $ (((\PrefixNetwork|Gk[1][6]~5_combout\) # (\PrefixNetwork|Gk~6_combout\)))) ) ) ) # ( !\PrefixNetwork|Gk[1][4]~3_combout\ & ( 
-- \c[7]~1_combout\ & ( !\A[7]~input_o\ $ (!\B[7]~input_o\ $ (((\PrefixNetwork|Gk[1][6]~5_combout\) # (\PrefixNetwork|Gk~6_combout\)))) ) ) ) # ( \PrefixNetwork|Gk[1][4]~3_combout\ & ( !\c[7]~1_combout\ & ( !\A[7]~input_o\ $ (!\B[7]~input_o\ $ 
-- (((\PrefixNetwork|Gk[1][6]~5_combout\) # (\PrefixNetwork|Gk~6_combout\)))) ) ) ) # ( !\PrefixNetwork|Gk[1][4]~3_combout\ & ( !\c[7]~1_combout\ & ( !\A[7]~input_o\ $ (!\B[7]~input_o\ $ (\PrefixNetwork|Gk[1][6]~5_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011010011001011010011001100101101001100110010110100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[7]~input_o\,
	datab => \ALT_INV_B[7]~input_o\,
	datac => \PrefixNetwork|ALT_INV_Gk~6_combout\,
	datad => \PrefixNetwork|ALT_INV_Gk[1][6]~5_combout\,
	datae => \PrefixNetwork|ALT_INV_Gk[1][4]~3_combout\,
	dataf => \ALT_INV_c[7]~1_combout\,
	combout => \S~12_combout\);

-- Location: MLABCELL_X46_Y1_N6
\c~0DUPLICATE\ : arriaii_lcell_comb
-- Equation(s):
-- \c~0DUPLICATE_combout\ = ( !\B[0]~input_o\ & ( \A[0]~input_o\ & ( (\Cin~input_o\ & (!\B[1]~input_o\ $ (!\A[1]~input_o\))) ) ) ) # ( \B[0]~input_o\ & ( !\A[0]~input_o\ & ( (\Cin~input_o\ & (!\B[1]~input_o\ $ (!\A[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000011110000000000001111000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_A[1]~input_o\,
	datad => \ALT_INV_Cin~input_o\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_A[0]~input_o\,
	combout => \c~0DUPLICATE_combout\);

-- Location: MLABCELL_X46_Y1_N8
\PrefixNetwork|Gk~7\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~7_combout\ = ( \B[7]~input_o\ & ( (!\A[7]~input_o\ & (!\A[6]~input_o\ $ (!\B[6]~input_o\))) ) ) # ( !\B[7]~input_o\ & ( (\A[7]~input_o\ & (!\A[6]~input_o\ $ (!\B[6]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100001100000000110000110000110000110000000011000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[6]~input_o\,
	datac => \ALT_INV_A[7]~input_o\,
	datad => \ALT_INV_B[6]~input_o\,
	dataf => \ALT_INV_B[7]~input_o\,
	combout => \PrefixNetwork|Gk~7_combout\);

-- Location: MLABCELL_X46_Y1_N28
\c~2\ : arriaii_lcell_comb
-- Equation(s):
-- \c~2_combout\ = ( \PrefixNetwork|Gk~2_combout\ & ( \PrefixNetwork|Gk[1][3]~1_combout\ & ( (\S~9_combout\ & \PrefixNetwork|Gk~7_combout\) ) ) ) # ( !\PrefixNetwork|Gk~2_combout\ & ( \PrefixNetwork|Gk[1][3]~1_combout\ & ( (\S~9_combout\ & 
-- \PrefixNetwork|Gk~7_combout\) ) ) ) # ( \PrefixNetwork|Gk~2_combout\ & ( !\PrefixNetwork|Gk[1][3]~1_combout\ & ( (\S~9_combout\ & (\PrefixNetwork|Gk~7_combout\ & ((\PrefixNetwork|Gpre[1]~0_combout\) # (\c~0DUPLICATE_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010000010100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_S~9_combout\,
	datab => \ALT_INV_c~0DUPLICATE_combout\,
	datac => \PrefixNetwork|ALT_INV_Gk~7_combout\,
	datad => \PrefixNetwork|ALT_INV_Gpre[1]~0_combout\,
	datae => \PrefixNetwork|ALT_INV_Gk~2_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk[1][3]~1_combout\,
	combout => \c~2_combout\);

-- Location: MLABCELL_X46_Y1_N38
\c~4DUPLICATE\ : arriaii_lcell_comb
-- Equation(s):
-- \c~4DUPLICATE_combout\ = ( \B[7]~input_o\ & ( \PrefixNetwork|Gk[1][5]~4_combout\ & ( ((\A[7]~input_o\) # (\B[6]~input_o\)) # (\A[6]~input_o\) ) ) ) # ( !\B[7]~input_o\ & ( \PrefixNetwork|Gk[1][5]~4_combout\ & ( (\A[7]~input_o\ & ((\B[6]~input_o\) # 
-- (\A[6]~input_o\))) ) ) ) # ( \B[7]~input_o\ & ( !\PrefixNetwork|Gk[1][5]~4_combout\ & ( ((\A[6]~input_o\ & \B[6]~input_o\)) # (\A[7]~input_o\) ) ) ) # ( !\B[7]~input_o\ & ( !\PrefixNetwork|Gk[1][5]~4_combout\ & ( (\A[6]~input_o\ & (\B[6]~input_o\ & 
-- \A[7]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000111111111100000000001111110011111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[6]~input_o\,
	datac => \ALT_INV_B[6]~input_o\,
	datad => \ALT_INV_A[7]~input_o\,
	datae => \ALT_INV_B[7]~input_o\,
	dataf => \PrefixNetwork|ALT_INV_Gk[1][5]~4_combout\,
	combout => \c~4DUPLICATE_combout\);

-- Location: MLABCELL_X46_Y1_N20
\c~3\ : arriaii_lcell_comb
-- Equation(s):
-- \c~3_combout\ = ( \c~4DUPLICATE_combout\ ) # ( !\c~4DUPLICATE_combout\ & ( \c~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_c~2_combout\,
	dataf => \ALT_INV_c~4DUPLICATE_combout\,
	combout => \c~3_combout\);

-- Location: MLABCELL_X46_Y1_N36
\c~4\ : arriaii_lcell_comb
-- Equation(s):
-- \c~4_combout\ = ( \B[7]~input_o\ & ( \PrefixNetwork|Gk[1][5]~4_combout\ & ( ((\B[6]~input_o\) # (\A[7]~input_o\)) # (\A[6]~input_o\) ) ) ) # ( !\B[7]~input_o\ & ( \PrefixNetwork|Gk[1][5]~4_combout\ & ( (\A[7]~input_o\ & ((\B[6]~input_o\) # 
-- (\A[6]~input_o\))) ) ) ) # ( \B[7]~input_o\ & ( !\PrefixNetwork|Gk[1][5]~4_combout\ & ( ((\A[6]~input_o\ & \B[6]~input_o\)) # (\A[7]~input_o\) ) ) ) # ( !\B[7]~input_o\ & ( !\PrefixNetwork|Gk[1][5]~4_combout\ & ( (\A[6]~input_o\ & (\A[7]~input_o\ & 
-- \B[6]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000011110011111100000011000011110011111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[6]~input_o\,
	datac => \ALT_INV_A[7]~input_o\,
	datad => \ALT_INV_B[6]~input_o\,
	datae => \ALT_INV_B[7]~input_o\,
	dataf => \PrefixNetwork|ALT_INV_Gk[1][5]~4_combout\,
	combout => \c~4_combout\);

-- Location: MLABCELL_X46_Y1_N32
\Ovfl~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Ovfl~0_combout\ = ( \c~4_combout\ & ( \c~2_combout\ & ( (!\PrefixNetwork|Gk[1][6]~5_combout\ & ((!\PrefixNetwork|Gk~6_combout\) # ((!\c[7]~1_combout\ & !\PrefixNetwork|Gk[1][4]~3_combout\)))) ) ) ) # ( !\c~4_combout\ & ( \c~2_combout\ & ( 
-- (!\PrefixNetwork|Gk[1][6]~5_combout\ & ((!\PrefixNetwork|Gk~6_combout\) # ((!\c[7]~1_combout\ & !\PrefixNetwork|Gk[1][4]~3_combout\)))) ) ) ) # ( \c~4_combout\ & ( !\c~2_combout\ & ( (!\PrefixNetwork|Gk[1][6]~5_combout\ & ((!\PrefixNetwork|Gk~6_combout\) 
-- # ((!\c[7]~1_combout\ & !\PrefixNetwork|Gk[1][4]~3_combout\)))) ) ) ) # ( !\c~4_combout\ & ( !\c~2_combout\ & ( ((\PrefixNetwork|Gk~6_combout\ & ((\PrefixNetwork|Gk[1][4]~3_combout\) # (\c[7]~1_combout\)))) # (\PrefixNetwork|Gk[1][6]~5_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111101011111111000001010000011100000101000001110000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|ALT_INV_Gk~6_combout\,
	datab => \ALT_INV_c[7]~1_combout\,
	datac => \PrefixNetwork|ALT_INV_Gk[1][6]~5_combout\,
	datad => \PrefixNetwork|ALT_INV_Gk[1][4]~3_combout\,
	datae => \ALT_INV_c~4_combout\,
	dataf => \ALT_INV_c~2_combout\,
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


