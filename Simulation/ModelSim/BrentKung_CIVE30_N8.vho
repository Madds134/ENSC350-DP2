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

-- DATE "11/21/2026 11:35:12"

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
	A : IN std_logic_vector(7 DOWNTO 0);
	B : IN std_logic_vector(7 DOWNTO 0);
	S : OUT std_logic_vector(7 DOWNTO 0);
	Cin : IN std_logic;
	Cout : OUT std_logic;
	Ovfl : OUT std_logic
	);
END Adder;

-- Design Ports Information
-- S[0]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[1]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[2]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[3]	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[4]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[5]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[6]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[7]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cout	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ovfl	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cin	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_D20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_B20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \PrefixNetwork|Recur:gPair[0]~0_combout\ : std_logic;
SIGNAL \c~0_combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \S~2_combout\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \c[3]~1_combout\ : std_logic;
SIGNAL \S~3_combout\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Recur:gPair[1]~0_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|gPair~0_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|gPair~1_combout\ : std_logic;
SIGNAL \c~2_combout\ : std_logic;
SIGNAL \S~4_combout\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gpre[4]~0_combout\ : std_logic;
SIGNAL \S~5_combout\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Gpre~0_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Gpre~1_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:gPair[2]~0_combout\ : std_logic;
SIGNAL \c~3_combout\ : std_logic;
SIGNAL \S~6_combout\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gpre[6]~1_combout\ : std_logic;
SIGNAL \c~4_combout\ : std_logic;
SIGNAL \S~7_combout\ : std_logic;
SIGNAL \c~5_combout\ : std_logic;
SIGNAL \c~6_combout\ : std_logic;
SIGNAL \c~7_combout\ : std_logic;
SIGNAL \c~8_combout\ : std_logic;
SIGNAL \Ovfl~0_combout\ : std_logic;
SIGNAL p : std_logic_vector(7 DOWNTO 0);

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

-- Location: IOOBUF_X56_Y43_N16
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

-- Location: IOOBUF_X56_Y43_N9
\S[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~1_combout\,
	devoe => ww_devoe,
	o => \S[1]~output_o\);

-- Location: IOOBUF_X56_Y43_N23
\S[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~2_combout\,
	devoe => ww_devoe,
	o => \S[2]~output_o\);

-- Location: IOOBUF_X65_Y43_N23
\S[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~3_combout\,
	devoe => ww_devoe,
	o => \S[3]~output_o\);

-- Location: IOOBUF_X67_Y38_N9
\S[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~4_combout\,
	devoe => ww_devoe,
	o => \S[4]~output_o\);

-- Location: IOOBUF_X65_Y43_N30
\S[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~5_combout\,
	devoe => ww_devoe,
	o => \S[5]~output_o\);

-- Location: IOOBUF_X61_Y43_N30
\S[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~6_combout\,
	devoe => ww_devoe,
	o => \S[6]~output_o\);

-- Location: IOOBUF_X67_Y41_N23
\S[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~7_combout\,
	devoe => ww_devoe,
	o => \S[7]~output_o\);

-- Location: IOOBUF_X61_Y43_N2
\Cout~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \c~8_combout\,
	devoe => ww_devoe,
	o => \Cout~output_o\);

-- Location: IOOBUF_X61_Y43_N9
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

-- Location: IOIBUF_X59_Y43_N1
\B[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X63_Y43_N22
\A[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X59_Y43_N8
\Cin~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cin,
	o => \Cin~input_o\);

-- Location: LCCOMB_X59_Y42_N8
\S~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~0_combout\ = \B[0]~input_o\ $ (\A[0]~input_o\ $ (\Cin~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[0]~input_o\,
	datac => \A[0]~input_o\,
	datad => \Cin~input_o\,
	combout => \S~0_combout\);

-- Location: IOIBUF_X63_Y43_N29
\A[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: IOIBUF_X67_Y38_N15
\B[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: LCCOMB_X63_Y42_N16
\p[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(1) = \A[1]~input_o\ $ (\B[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[1]~input_o\,
	datad => \B[1]~input_o\,
	combout => p(1));

-- Location: LCCOMB_X59_Y42_N14
\S~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~1_combout\ = p(1) $ (((\Cin~input_o\ & ((\B[0]~input_o\) # (\A[0]~input_o\))) # (!\Cin~input_o\ & (\B[0]~input_o\ & \A[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cin~input_o\,
	datab => \B[0]~input_o\,
	datac => \A[0]~input_o\,
	datad => p(1),
	combout => \S~1_combout\);

-- Location: LCCOMB_X63_Y42_N14
\PrefixNetwork|Recur:gPair[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:gPair[0]~0_combout\ = (\B[1]~input_o\ & ((\A[1]~input_o\) # ((\A[0]~input_o\ & \B[0]~input_o\)))) # (!\B[1]~input_o\ & (\A[0]~input_o\ & (\A[1]~input_o\ & \B[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A[1]~input_o\,
	datad => \B[0]~input_o\,
	combout => \PrefixNetwork|Recur:gPair[0]~0_combout\);

-- Location: LCCOMB_X63_Y42_N4
\c~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c~0_combout\ = (\Cin~input_o\ & (p(1) & (\B[0]~input_o\ $ (\A[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[0]~input_o\,
	datac => \Cin~input_o\,
	datad => p(1),
	combout => \c~0_combout\);

-- Location: IOIBUF_X67_Y39_N8
\A[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: IOIBUF_X63_Y43_N1
\B[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: LCCOMB_X64_Y42_N24
\S~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~2_combout\ = \A[2]~input_o\ $ (\B[2]~input_o\ $ (((\PrefixNetwork|Recur:gPair[0]~0_combout\) # (\c~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Recur:gPair[0]~0_combout\,
	datab => \c~0_combout\,
	datac => \A[2]~input_o\,
	datad => \B[2]~input_o\,
	combout => \S~2_combout\);

-- Location: IOIBUF_X67_Y38_N22
\B[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: IOIBUF_X63_Y43_N8
\A[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: LCCOMB_X64_Y42_N10
\c[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[3]~1_combout\ = (\B[2]~input_o\ & ((\PrefixNetwork|Recur:gPair[0]~0_combout\) # ((\c~0_combout\) # (\A[2]~input_o\)))) # (!\B[2]~input_o\ & (\A[2]~input_o\ & ((\PrefixNetwork|Recur:gPair[0]~0_combout\) # (\c~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Recur:gPair[0]~0_combout\,
	datab => \B[2]~input_o\,
	datac => \c~0_combout\,
	datad => \A[2]~input_o\,
	combout => \c[3]~1_combout\);

-- Location: LCCOMB_X64_Y42_N20
\S~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~3_combout\ = \B[3]~input_o\ $ (\A[3]~input_o\ $ (\c[3]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[3]~input_o\,
	datac => \A[3]~input_o\,
	datad => \c[3]~1_combout\,
	combout => \S~3_combout\);

-- Location: IOIBUF_X67_Y40_N22
\A[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: IOIBUF_X67_Y39_N22
\B[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: LCCOMB_X64_Y42_N30
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

-- Location: LCCOMB_X63_Y42_N20
\PrefixNetwork|Recur:gPair[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:gPair[1]~0_combout\ = (\A[3]~input_o\ & ((\B[3]~input_o\) # ((\B[2]~input_o\ & \A[2]~input_o\)))) # (!\A[3]~input_o\ & (\B[2]~input_o\ & (\B[3]~input_o\ & \A[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \B[2]~input_o\,
	datac => \B[3]~input_o\,
	datad => \A[2]~input_o\,
	combout => \PrefixNetwork|Recur:gPair[1]~0_combout\);

-- Location: LCCOMB_X63_Y42_N26
\PrefixNetwork|Recur:Inner|gPair~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|gPair~0_combout\ = (\A[3]~input_o\ & (!\B[3]~input_o\ & (\B[2]~input_o\ $ (\A[2]~input_o\)))) # (!\A[3]~input_o\ & (\B[3]~input_o\ & (\B[2]~input_o\ $ (\A[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \B[2]~input_o\,
	datac => \B[3]~input_o\,
	datad => \A[2]~input_o\,
	combout => \PrefixNetwork|Recur:Inner|gPair~0_combout\);

-- Location: LCCOMB_X64_Y42_N4
\PrefixNetwork|Recur:Inner|gPair~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|gPair~1_combout\ = (\PrefixNetwork|Recur:Inner|gPair~0_combout\ & \PrefixNetwork|Recur:gPair[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|Recur:Inner|gPair~0_combout\,
	datad => \PrefixNetwork|Recur:gPair[0]~0_combout\,
	combout => \PrefixNetwork|Recur:Inner|gPair~1_combout\);

-- Location: LCCOMB_X64_Y42_N2
\c~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \c~2_combout\ = (\c~0_combout\ & \PrefixNetwork|Recur:Inner|gPair~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \c~0_combout\,
	datad => \PrefixNetwork|Recur:Inner|gPair~0_combout\,
	combout => \c~2_combout\);

-- Location: LCCOMB_X64_Y42_N16
\S~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~4_combout\ = p(4) $ (((\PrefixNetwork|Recur:gPair[1]~0_combout\) # ((\PrefixNetwork|Recur:Inner|gPair~1_combout\) # (\c~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(4),
	datab => \PrefixNetwork|Recur:gPair[1]~0_combout\,
	datac => \PrefixNetwork|Recur:Inner|gPair~1_combout\,
	datad => \c~2_combout\,
	combout => \S~4_combout\);

-- Location: IOIBUF_X67_Y41_N15
\B[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: IOIBUF_X67_Y39_N15
\A[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: LCCOMB_X64_Y42_N28
\p[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(5) = \B[5]~input_o\ $ (\A[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[5]~input_o\,
	datad => \A[5]~input_o\,
	combout => p(5));

-- Location: LCCOMB_X64_Y42_N18
\PrefixNetwork|Gpre[4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gpre[4]~0_combout\ = (\A[4]~input_o\ & ((\PrefixNetwork|Recur:gPair[1]~0_combout\) # ((\PrefixNetwork|Recur:Inner|gPair~1_combout\) # (\B[4]~input_o\)))) # (!\A[4]~input_o\ & (\B[4]~input_o\ & ((\PrefixNetwork|Recur:gPair[1]~0_combout\) # 
-- (\PrefixNetwork|Recur:Inner|gPair~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datab => \PrefixNetwork|Recur:gPair[1]~0_combout\,
	datac => \PrefixNetwork|Recur:Inner|gPair~1_combout\,
	datad => \B[4]~input_o\,
	combout => \PrefixNetwork|Gpre[4]~0_combout\);

-- Location: LCCOMB_X64_Y42_N26
\S~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~5_combout\ = p(5) $ (((\PrefixNetwork|Gpre[4]~0_combout\) # ((p(4) & \c~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(4),
	datab => p(5),
	datac => \c~2_combout\,
	datad => \PrefixNetwork|Gpre[4]~0_combout\,
	combout => \S~5_combout\);

-- Location: IOIBUF_X59_Y43_N15
\A[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: IOIBUF_X61_Y43_N15
\B[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: LCCOMB_X62_Y42_N12
\p[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(6) = \A[6]~input_o\ $ (\B[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[6]~input_o\,
	datad => \B[6]~input_o\,
	combout => p(6));

-- Location: LCCOMB_X63_Y42_N22
\PrefixNetwork|Recur:Inner|Gpre~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Gpre~0_combout\ = (\A[5]~input_o\ & (!\B[5]~input_o\ & (\A[4]~input_o\ $ (\B[4]~input_o\)))) # (!\A[5]~input_o\ & (\B[5]~input_o\ & (\A[4]~input_o\ $ (\B[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~input_o\,
	datab => \B[5]~input_o\,
	datac => \A[4]~input_o\,
	datad => \B[4]~input_o\,
	combout => \PrefixNetwork|Recur:Inner|Gpre~0_combout\);

-- Location: LCCOMB_X63_Y42_N24
\PrefixNetwork|Recur:Inner|Gpre~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Gpre~1_combout\ = (\PrefixNetwork|Recur:Inner|Gpre~0_combout\ & ((\PrefixNetwork|Recur:gPair[1]~0_combout\) # ((\PrefixNetwork|Recur:Inner|gPair~0_combout\ & \PrefixNetwork|Recur:gPair[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Recur:Inner|gPair~0_combout\,
	datab => \PrefixNetwork|Recur:gPair[0]~0_combout\,
	datac => \PrefixNetwork|Recur:Inner|Gpre~0_combout\,
	datad => \PrefixNetwork|Recur:gPair[1]~0_combout\,
	combout => \PrefixNetwork|Recur:Inner|Gpre~1_combout\);

-- Location: LCCOMB_X63_Y42_N28
\PrefixNetwork|Recur:gPair[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:gPair[2]~0_combout\ = (\A[5]~input_o\ & ((\B[5]~input_o\) # ((\A[4]~input_o\ & \B[4]~input_o\)))) # (!\A[5]~input_o\ & (\B[5]~input_o\ & (\A[4]~input_o\ & \B[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~input_o\,
	datab => \B[5]~input_o\,
	datac => \A[4]~input_o\,
	datad => \B[4]~input_o\,
	combout => \PrefixNetwork|Recur:gPair[2]~0_combout\);

-- Location: LCCOMB_X63_Y42_N18
\c~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \c~3_combout\ = (\PrefixNetwork|Recur:Inner|gPair~0_combout\ & (\c~0_combout\ & (p(4) & p(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Recur:Inner|gPair~0_combout\,
	datab => \c~0_combout\,
	datac => p(4),
	datad => p(5),
	combout => \c~3_combout\);

-- Location: LCCOMB_X62_Y42_N2
\S~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~6_combout\ = p(6) $ (((\PrefixNetwork|Recur:Inner|Gpre~1_combout\) # ((\PrefixNetwork|Recur:gPair[2]~0_combout\) # (\c~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(6),
	datab => \PrefixNetwork|Recur:Inner|Gpre~1_combout\,
	datac => \PrefixNetwork|Recur:gPair[2]~0_combout\,
	datad => \c~3_combout\,
	combout => \S~6_combout\);

-- Location: IOIBUF_X67_Y36_N1
\B[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: IOIBUF_X67_Y36_N22
\A[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: LCCOMB_X63_Y42_N30
\PrefixNetwork|Gpre[6]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gpre[6]~1_combout\ = (\B[6]~input_o\ & ((\PrefixNetwork|Recur:gPair[2]~0_combout\) # ((\A[6]~input_o\) # (\PrefixNetwork|Recur:Inner|Gpre~1_combout\)))) # (!\B[6]~input_o\ & (\A[6]~input_o\ & ((\PrefixNetwork|Recur:gPair[2]~0_combout\) # 
-- (\PrefixNetwork|Recur:Inner|Gpre~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[6]~input_o\,
	datab => \PrefixNetwork|Recur:gPair[2]~0_combout\,
	datac => \A[6]~input_o\,
	datad => \PrefixNetwork|Recur:Inner|Gpre~1_combout\,
	combout => \PrefixNetwork|Gpre[6]~1_combout\);

-- Location: LCCOMB_X63_Y42_N12
\c~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \c~4_combout\ = (\c~3_combout\ & (\A[6]~input_o\ $ (\B[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datac => \B[6]~input_o\,
	datad => \c~3_combout\,
	combout => \c~4_combout\);

-- Location: LCCOMB_X66_Y42_N8
\S~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~7_combout\ = \B[7]~input_o\ $ (\A[7]~input_o\ $ (((\PrefixNetwork|Gpre[6]~1_combout\) # (\c~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[7]~input_o\,
	datab => \A[7]~input_o\,
	datac => \PrefixNetwork|Gpre[6]~1_combout\,
	datad => \c~4_combout\,
	combout => \S~7_combout\);

-- Location: LCCOMB_X63_Y42_N6
\c~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \c~5_combout\ = (\PrefixNetwork|Recur:gPair[1]~0_combout\) # ((\PrefixNetwork|Recur:Inner|gPair~0_combout\ & \PrefixNetwork|Recur:gPair[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Recur:Inner|gPair~0_combout\,
	datac => \PrefixNetwork|Recur:gPair[0]~0_combout\,
	datad => \PrefixNetwork|Recur:gPair[1]~0_combout\,
	combout => \c~5_combout\);

-- Location: LCCOMB_X63_Y42_N8
\c~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \c~6_combout\ = (\PrefixNetwork|Recur:gPair[2]~0_combout\) # ((\PrefixNetwork|Recur:Inner|Gpre~0_combout\ & \c~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PrefixNetwork|Recur:gPair[2]~0_combout\,
	datac => \PrefixNetwork|Recur:Inner|Gpre~0_combout\,
	datad => \c~5_combout\,
	combout => \c~6_combout\);

-- Location: LCCOMB_X63_Y42_N2
\c~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \c~7_combout\ = (\B[6]~input_o\ & ((\A[6]~input_o\) # ((\c~6_combout\) # (\c~3_combout\)))) # (!\B[6]~input_o\ & (\A[6]~input_o\ & ((\c~6_combout\) # (\c~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[6]~input_o\,
	datab => \A[6]~input_o\,
	datac => \c~6_combout\,
	datad => \c~3_combout\,
	combout => \c~7_combout\);

-- Location: LCCOMB_X63_Y42_N0
\c~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \c~8_combout\ = (\B[7]~input_o\ & ((\A[7]~input_o\) # (\c~7_combout\))) # (!\B[7]~input_o\ & (\A[7]~input_o\ & \c~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[7]~input_o\,
	datac => \A[7]~input_o\,
	datad => \c~7_combout\,
	combout => \c~8_combout\);

-- Location: LCCOMB_X63_Y42_N10
\Ovfl~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Ovfl~0_combout\ = \c~8_combout\ $ (((\c~4_combout\) # (\PrefixNetwork|Gpre[6]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c~4_combout\,
	datac => \PrefixNetwork|Gpre[6]~1_combout\,
	datad => \c~8_combout\,
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


