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

-- DATE "11/21/2026 11:29:45"

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
-- S[0]	=>  Location: PIN_AG12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[1]	=>  Location: PIN_AE10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[2]	=>  Location: PIN_AH4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[3]	=>  Location: PIN_AH13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[4]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[5]	=>  Location: PIN_AH5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[6]	=>  Location: PIN_AE13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[7]	=>  Location: PIN_AG6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cout	=>  Location: PIN_AH6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ovfl	=>  Location: PIN_AF13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cin	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_AH8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_AH9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_AF12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_AG9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_AH10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_AF11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_AH7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_AC13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_AH14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_AH11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \_~1_sumout\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \_~2\ : std_logic;
SIGNAL \_~3\ : std_logic;
SIGNAL \_~5_sumout\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \_~6\ : std_logic;
SIGNAL \_~7\ : std_logic;
SIGNAL \_~9_sumout\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \_~10\ : std_logic;
SIGNAL \_~11\ : std_logic;
SIGNAL \_~13_sumout\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \_~14\ : std_logic;
SIGNAL \_~15\ : std_logic;
SIGNAL \_~17_sumout\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \_~18\ : std_logic;
SIGNAL \_~19\ : std_logic;
SIGNAL \_~21_sumout\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \_~22\ : std_logic;
SIGNAL \_~23\ : std_logic;
SIGNAL \_~25_sumout\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \_~26\ : std_logic;
SIGNAL \_~27\ : std_logic;
SIGNAL \_~29_sumout\ : std_logic;
SIGNAL \_~30\ : std_logic;
SIGNAL \_~31\ : std_logic;
SIGNAL \_~33_sumout\ : std_logic;
SIGNAL \Ovfl~0_combout\ : std_logic;
SIGNAL \ALT_INV_A[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_Cin~input_o\ : std_logic;
SIGNAL \ALT_INV_Ovfl~0_combout\ : std_logic;
SIGNAL \ALT_INV__~29_sumout\ : std_logic;

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
\ALT_INV_A[7]~input_o\ <= NOT \A[7]~input_o\;
\ALT_INV_B[7]~input_o\ <= NOT \B[7]~input_o\;
\ALT_INV_A[6]~input_o\ <= NOT \A[6]~input_o\;
\ALT_INV_B[6]~input_o\ <= NOT \B[6]~input_o\;
\ALT_INV_A[5]~input_o\ <= NOT \A[5]~input_o\;
\ALT_INV_B[5]~input_o\ <= NOT \B[5]~input_o\;
\ALT_INV_A[4]~input_o\ <= NOT \A[4]~input_o\;
\ALT_INV_B[4]~input_o\ <= NOT \B[4]~input_o\;
\ALT_INV_A[3]~input_o\ <= NOT \A[3]~input_o\;
\ALT_INV_B[3]~input_o\ <= NOT \B[3]~input_o\;
\ALT_INV_A[2]~input_o\ <= NOT \A[2]~input_o\;
\ALT_INV_B[2]~input_o\ <= NOT \B[2]~input_o\;
\ALT_INV_A[1]~input_o\ <= NOT \A[1]~input_o\;
\ALT_INV_B[1]~input_o\ <= NOT \B[1]~input_o\;
\ALT_INV_A[0]~input_o\ <= NOT \A[0]~input_o\;
\ALT_INV_B[0]~input_o\ <= NOT \B[0]~input_o\;
\ALT_INV_Cin~input_o\ <= NOT \Cin~input_o\;
\ALT_INV_Ovfl~0_combout\ <= NOT \Ovfl~0_combout\;
\ALT_INV__~29_sumout\ <= NOT \_~29_sumout\;

-- Location: IOOBUF_X29_Y0_N2
\S[0]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \_~1_sumout\,
	devoe => ww_devoe,
	o => \S[0]~output_o\);

-- Location: IOOBUF_X39_Y0_N36
\S[1]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \_~5_sumout\,
	devoe => ww_devoe,
	o => \S[1]~output_o\);

-- Location: IOOBUF_X35_Y0_N36
\S[2]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \_~9_sumout\,
	devoe => ww_devoe,
	o => \S[2]~output_o\);

-- Location: IOOBUF_X29_Y0_N36
\S[3]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \_~13_sumout\,
	devoe => ww_devoe,
	o => \S[3]~output_o\);

-- Location: IOOBUF_X39_Y0_N2
\S[4]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \_~17_sumout\,
	devoe => ww_devoe,
	o => \S[4]~output_o\);

-- Location: IOOBUF_X35_Y0_N98
\S[5]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \_~21_sumout\,
	devoe => ww_devoe,
	o => \S[5]~output_o\);

-- Location: IOOBUF_X35_Y0_N2
\S[6]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \_~25_sumout\,
	devoe => ww_devoe,
	o => \S[6]~output_o\);

-- Location: IOOBUF_X33_Y0_N5
\S[7]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \_~29_sumout\,
	devoe => ww_devoe,
	o => \S[7]~output_o\);

-- Location: IOOBUF_X33_Y0_N67
\Cout~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \_~33_sumout\,
	devoe => ww_devoe,
	o => \Cout~output_o\);

-- Location: IOOBUF_X35_Y0_N67
\Ovfl~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Ovfl~0_combout\,
	devoe => ww_devoe,
	o => \Ovfl~output_o\);

-- Location: IOIBUF_X37_Y0_N1
\Cin~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cin,
	o => \Cin~input_o\);

-- Location: IOIBUF_X32_Y0_N63
\A[0]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X32_Y0_N94
\B[0]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: MLABCELL_X34_Y1_N0
\_~1\ : arriaii_lcell_comb
-- Equation(s):
-- \_~1_sumout\ = SUM(( !\Cin~input_o\ $ (!\A[0]~input_o\ $ (\B[0]~input_o\)) ) + ( !VCC ) + ( !VCC ))
-- \_~2\ = CARRY(( !\Cin~input_o\ $ (!\A[0]~input_o\ $ (\B[0]~input_o\)) ) + ( !VCC ) + ( !VCC ))
-- \_~3\ = SHARE((!\Cin~input_o\ & (\A[0]~input_o\ & \B[0]~input_o\)) # (\Cin~input_o\ & ((\B[0]~input_o\) # (\A[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Cin~input_o\,
	datac => \ALT_INV_A[0]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	cin => GND,
	sharein => GND,
	sumout => \_~1_sumout\,
	cout => \_~2\,
	shareout => \_~3\);

-- Location: IOIBUF_X33_Y0_N94
\B[1]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: IOIBUF_X37_Y0_N63
\A[1]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: MLABCELL_X34_Y1_N2
\_~5\ : arriaii_lcell_comb
-- Equation(s):
-- \_~5_sumout\ = SUM(( !\B[1]~input_o\ $ (!\A[1]~input_o\) ) + ( \_~3\ ) + ( \_~2\ ))
-- \_~6\ = CARRY(( !\B[1]~input_o\ $ (!\A[1]~input_o\) ) + ( \_~3\ ) + ( \_~2\ ))
-- \_~7\ = SHARE((\B[1]~input_o\ & \A[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_A[1]~input_o\,
	cin => \_~2\,
	sharein => \_~3\,
	sumout => \_~5_sumout\,
	cout => \_~6\,
	shareout => \_~7\);

-- Location: IOIBUF_X33_Y0_N32
\B[2]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: IOIBUF_X32_Y0_N1
\A[2]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: MLABCELL_X34_Y1_N4
\_~9\ : arriaii_lcell_comb
-- Equation(s):
-- \_~9_sumout\ = SUM(( !\B[2]~input_o\ $ (!\A[2]~input_o\) ) + ( \_~7\ ) + ( \_~6\ ))
-- \_~10\ = CARRY(( !\B[2]~input_o\ $ (!\A[2]~input_o\) ) + ( \_~7\ ) + ( \_~6\ ))
-- \_~11\ = SHARE((\B[2]~input_o\ & \A[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[2]~input_o\,
	datad => \ALT_INV_A[2]~input_o\,
	cin => \_~6\,
	sharein => \_~7\,
	sumout => \_~9_sumout\,
	cout => \_~10\,
	shareout => \_~11\);

-- Location: IOIBUF_X30_Y0_N1
\B[3]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: IOIBUF_X37_Y0_N32
\A[3]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: MLABCELL_X34_Y1_N6
\_~13\ : arriaii_lcell_comb
-- Equation(s):
-- \_~13_sumout\ = SUM(( !\B[3]~input_o\ $ (!\A[3]~input_o\) ) + ( \_~11\ ) + ( \_~10\ ))
-- \_~14\ = CARRY(( !\B[3]~input_o\ $ (!\A[3]~input_o\) ) + ( \_~11\ ) + ( \_~10\ ))
-- \_~15\ = SHARE((\B[3]~input_o\ & \A[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[3]~input_o\,
	datad => \ALT_INV_A[3]~input_o\,
	cin => \_~10\,
	sharein => \_~11\,
	sumout => \_~13_sumout\,
	cout => \_~14\,
	shareout => \_~15\);

-- Location: IOIBUF_X39_Y0_N63
\B[4]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: IOIBUF_X30_Y0_N94
\A[4]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: MLABCELL_X34_Y1_N8
\_~17\ : arriaii_lcell_comb
-- Equation(s):
-- \_~17_sumout\ = SUM(( !\B[4]~input_o\ $ (!\A[4]~input_o\) ) + ( \_~15\ ) + ( \_~14\ ))
-- \_~18\ = CARRY(( !\B[4]~input_o\ $ (!\A[4]~input_o\) ) + ( \_~15\ ) + ( \_~14\ ))
-- \_~19\ = SHARE((\B[4]~input_o\ & \A[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[4]~input_o\,
	datad => \ALT_INV_A[4]~input_o\,
	cin => \_~14\,
	sharein => \_~15\,
	sumout => \_~17_sumout\,
	cout => \_~18\,
	shareout => \_~19\);

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

-- Location: IOIBUF_X32_Y0_N32
\B[5]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: MLABCELL_X34_Y1_N10
\_~21\ : arriaii_lcell_comb
-- Equation(s):
-- \_~21_sumout\ = SUM(( !\A[5]~input_o\ $ (!\B[5]~input_o\) ) + ( \_~19\ ) + ( \_~18\ ))
-- \_~22\ = CARRY(( !\A[5]~input_o\ $ (!\B[5]~input_o\) ) + ( \_~19\ ) + ( \_~18\ ))
-- \_~23\ = SHARE((\A[5]~input_o\ & \B[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[5]~input_o\,
	datad => \ALT_INV_B[5]~input_o\,
	cin => \_~18\,
	sharein => \_~19\,
	sumout => \_~21_sumout\,
	cout => \_~22\,
	shareout => \_~23\);

-- Location: IOIBUF_X30_Y0_N32
\B[6]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: IOIBUF_X29_Y0_N94
\A[6]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: MLABCELL_X34_Y1_N12
\_~25\ : arriaii_lcell_comb
-- Equation(s):
-- \_~25_sumout\ = SUM(( !\B[6]~input_o\ $ (!\A[6]~input_o\) ) + ( \_~23\ ) + ( \_~22\ ))
-- \_~26\ = CARRY(( !\B[6]~input_o\ $ (!\A[6]~input_o\) ) + ( \_~23\ ) + ( \_~22\ ))
-- \_~27\ = SHARE((\B[6]~input_o\ & \A[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[6]~input_o\,
	datad => \ALT_INV_A[6]~input_o\,
	cin => \_~22\,
	sharein => \_~23\,
	sumout => \_~25_sumout\,
	cout => \_~26\,
	shareout => \_~27\);

-- Location: IOIBUF_X39_Y0_N94
\A[7]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: IOIBUF_X30_Y0_N63
\B[7]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: MLABCELL_X34_Y1_N14
\_~29\ : arriaii_lcell_comb
-- Equation(s):
-- \_~29_sumout\ = SUM(( !\A[7]~input_o\ $ (!\B[7]~input_o\) ) + ( \_~27\ ) + ( \_~26\ ))
-- \_~30\ = CARRY(( !\A[7]~input_o\ $ (!\B[7]~input_o\) ) + ( \_~27\ ) + ( \_~26\ ))
-- \_~31\ = SHARE((\A[7]~input_o\ & \B[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[7]~input_o\,
	datad => \ALT_INV_B[7]~input_o\,
	cin => \_~26\,
	sharein => \_~27\,
	sumout => \_~29_sumout\,
	cout => \_~30\,
	shareout => \_~31\);

-- Location: MLABCELL_X34_Y1_N16
\_~33\ : arriaii_lcell_comb
-- Equation(s):
-- \_~33_sumout\ = SUM(( GND ) + ( \_~31\ ) + ( \_~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	cin => \_~30\,
	sharein => \_~31\,
	sumout => \_~33_sumout\);

-- Location: MLABCELL_X34_Y1_N28
\Ovfl~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Ovfl~0_combout\ = ( \B[7]~input_o\ & ( \_~29_sumout\ ) ) # ( !\B[7]~input_o\ & ( \_~29_sumout\ & ( \A[7]~input_o\ ) ) ) # ( \B[7]~input_o\ & ( !\_~29_sumout\ & ( !\A[7]~input_o\ ) ) ) # ( !\B[7]~input_o\ & ( !\_~29_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111110000000000000000111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_A[7]~input_o\,
	datae => \ALT_INV_B[7]~input_o\,
	dataf => \ALT_INV__~29_sumout\,
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


