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

-- DATE "11/21/2026 11:27:50"

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
	S : BUFFER std_logic_vector(7 DOWNTO 0);
	Cin : IN std_logic;
	Cout : BUFFER std_logic;
	Ovfl : BUFFER std_logic
	);
END Adder;

-- Design Ports Information
-- S[0]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[1]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[2]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[3]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[4]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[5]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[6]	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[7]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cout	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ovfl	=>  Location: PIN_U14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_W14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cin	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \C[1]~0_combout\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \C[1]~1_combout\ : std_logic;
SIGNAL \S~1_combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \C[2]~2_combout\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \S~2_combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \C[3]~3_combout\ : std_logic;
SIGNAL \C[3]~4_combout\ : std_logic;
SIGNAL \S~3_combout\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \C[4]~5_combout\ : std_logic;
SIGNAL \S~4_combout\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \C[5]~7_combout\ : std_logic;
SIGNAL \C[5]~6_combout\ : std_logic;
SIGNAL \S~5_combout\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \C[6]~8_combout\ : std_logic;
SIGNAL \S~6_combout\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \C[7]~9_combout\ : std_logic;
SIGNAL \C[7]~10_combout\ : std_logic;
SIGNAL \S~7_combout\ : std_logic;
SIGNAL \C~11_combout\ : std_logic;
SIGNAL \Ovfl~6_combout\ : std_logic;

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

-- Location: IOOBUF_X38_Y0_N30
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

-- Location: IOOBUF_X43_Y0_N2
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

-- Location: IOOBUF_X43_Y0_N16
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

-- Location: IOOBUF_X54_Y0_N30
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

-- Location: IOOBUF_X45_Y0_N9
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

-- Location: IOOBUF_X48_Y0_N30
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

-- Location: IOOBUF_X52_Y0_N23
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

-- Location: IOOBUF_X50_Y0_N9
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

-- Location: IOOBUF_X50_Y0_N23
\Cout~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C~11_combout\,
	devoe => ww_devoe,
	o => \Cout~output_o\);

-- Location: IOOBUF_X50_Y0_N16
\Ovfl~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Ovfl~6_combout\,
	devoe => ww_devoe,
	o => \Ovfl~output_o\);

-- Location: IOIBUF_X48_Y0_N22
\A[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X50_Y0_N29
\Cin~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cin,
	o => \Cin~input_o\);

-- Location: IOIBUF_X50_Y0_N1
\B[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: LCCOMB_X49_Y1_N16
\S~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~0_combout\ = \A[0]~input_o\ $ (\Cin~input_o\ $ (\B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datac => \Cin~input_o\,
	datad => \B[0]~input_o\,
	combout => \S~0_combout\);

-- Location: LCCOMB_X51_Y1_N8
\C[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[1]~0_combout\ = (\Cin~input_o\ & \B[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Cin~input_o\,
	datad => \B[0]~input_o\,
	combout => \C[1]~0_combout\);

-- Location: IOIBUF_X52_Y0_N15
\B[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: IOIBUF_X52_Y0_N8
\A[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: LCCOMB_X51_Y1_N2
\C[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[1]~1_combout\ = (\A[0]~input_o\ & ((\B[0]~input_o\) # (\Cin~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[0]~input_o\,
	datac => \Cin~input_o\,
	datad => \A[0]~input_o\,
	combout => \C[1]~1_combout\);

-- Location: LCCOMB_X52_Y1_N16
\S~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~1_combout\ = \B[1]~input_o\ $ (\A[1]~input_o\ $ (((\C[1]~0_combout\) # (\C[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[1]~0_combout\,
	datab => \B[1]~input_o\,
	datac => \A[1]~input_o\,
	datad => \C[1]~1_combout\,
	combout => \S~1_combout\);

-- Location: IOIBUF_X45_Y0_N15
\A[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: LCCOMB_X51_Y1_N12
\C[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[2]~2_combout\ = (\B[1]~input_o\ & ((\A[1]~input_o\) # ((\C[1]~0_combout\) # (\C[1]~1_combout\)))) # (!\B[1]~input_o\ & (\A[1]~input_o\ & ((\C[1]~0_combout\) # (\C[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[1]~input_o\,
	datac => \C[1]~0_combout\,
	datad => \C[1]~1_combout\,
	combout => \C[2]~2_combout\);

-- Location: IOIBUF_X52_Y0_N1
\B[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: LCCOMB_X48_Y1_N4
\S~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~2_combout\ = \A[2]~input_o\ $ (\C[2]~2_combout\ $ (\B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datac => \C[2]~2_combout\,
	datad => \B[2]~input_o\,
	combout => \S~2_combout\);

-- Location: IOIBUF_X54_Y0_N15
\A[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: IOIBUF_X54_Y0_N22
\B[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: LCCOMB_X51_Y1_N6
\C[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[3]~3_combout\ = (\B[2]~input_o\ & \C[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datad => \C[2]~2_combout\,
	combout => \C[3]~3_combout\);

-- Location: LCCOMB_X51_Y1_N24
\C[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[3]~4_combout\ = (\A[2]~input_o\ & ((\B[2]~input_o\) # (\C[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datac => \A[2]~input_o\,
	datad => \C[2]~2_combout\,
	combout => \C[3]~4_combout\);

-- Location: LCCOMB_X53_Y1_N28
\S~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~3_combout\ = \A[3]~input_o\ $ (\B[3]~input_o\ $ (((\C[3]~3_combout\) # (\C[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \B[3]~input_o\,
	datac => \C[3]~3_combout\,
	datad => \C[3]~4_combout\,
	combout => \S~3_combout\);

-- Location: IOIBUF_X45_Y0_N22
\A[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: IOIBUF_X45_Y0_N1
\B[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: LCCOMB_X51_Y1_N10
\C[4]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[4]~5_combout\ = (\A[3]~input_o\ & ((\C[3]~3_combout\) # ((\B[3]~input_o\) # (\C[3]~4_combout\)))) # (!\A[3]~input_o\ & (\B[3]~input_o\ & ((\C[3]~3_combout\) # (\C[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[3]~3_combout\,
	datab => \A[3]~input_o\,
	datac => \B[3]~input_o\,
	datad => \C[3]~4_combout\,
	combout => \C[4]~5_combout\);

-- Location: LCCOMB_X46_Y1_N28
\S~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~4_combout\ = \A[4]~input_o\ $ (\B[4]~input_o\ $ (\C[4]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[4]~input_o\,
	datac => \B[4]~input_o\,
	datad => \C[4]~5_combout\,
	combout => \S~4_combout\);

-- Location: IOIBUF_X59_Y0_N1
\A[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: IOIBUF_X43_Y0_N22
\B[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: LCCOMB_X51_Y1_N30
\C[5]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[5]~7_combout\ = (\A[4]~input_o\ & ((\B[4]~input_o\) # (\C[4]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[4]~input_o\,
	datac => \A[4]~input_o\,
	datad => \C[4]~5_combout\,
	combout => \C[5]~7_combout\);

-- Location: LCCOMB_X51_Y1_N20
\C[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[5]~6_combout\ = (\B[4]~input_o\ & \C[4]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[4]~input_o\,
	datad => \C[4]~5_combout\,
	combout => \C[5]~6_combout\);

-- Location: LCCOMB_X51_Y1_N4
\S~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~5_combout\ = \A[5]~input_o\ $ (\B[5]~input_o\ $ (((\C[5]~7_combout\) # (\C[5]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~input_o\,
	datab => \B[5]~input_o\,
	datac => \C[5]~7_combout\,
	datad => \C[5]~6_combout\,
	combout => \S~5_combout\);

-- Location: IOIBUF_X43_Y0_N8
\A[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: IOIBUF_X56_Y0_N1
\B[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: LCCOMB_X51_Y1_N18
\C[6]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[6]~8_combout\ = (\A[5]~input_o\ & ((\B[5]~input_o\) # ((\C[5]~7_combout\) # (\C[5]~6_combout\)))) # (!\A[5]~input_o\ & (\B[5]~input_o\ & ((\C[5]~7_combout\) # (\C[5]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~input_o\,
	datab => \B[5]~input_o\,
	datac => \C[5]~7_combout\,
	datad => \C[5]~6_combout\,
	combout => \C[6]~8_combout\);

-- Location: LCCOMB_X51_Y1_N28
\S~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~6_combout\ = \A[6]~input_o\ $ (\B[6]~input_o\ $ (\C[6]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[6]~input_o\,
	datac => \B[6]~input_o\,
	datad => \C[6]~8_combout\,
	combout => \S~6_combout\);

-- Location: IOIBUF_X59_Y0_N29
\A[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: IOIBUF_X43_Y0_N29
\B[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: LCCOMB_X51_Y1_N14
\C[7]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[7]~9_combout\ = (\B[6]~input_o\ & \C[6]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[6]~input_o\,
	datad => \C[6]~8_combout\,
	combout => \C[7]~9_combout\);

-- Location: LCCOMB_X51_Y1_N16
\C[7]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[7]~10_combout\ = (\A[6]~input_o\ & ((\B[6]~input_o\) # (\C[6]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[6]~input_o\,
	datac => \B[6]~input_o\,
	datad => \C[6]~8_combout\,
	combout => \C[7]~10_combout\);

-- Location: LCCOMB_X51_Y1_N26
\S~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~7_combout\ = \A[7]~input_o\ $ (\B[7]~input_o\ $ (((\C[7]~9_combout\) # (\C[7]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datab => \B[7]~input_o\,
	datac => \C[7]~9_combout\,
	datad => \C[7]~10_combout\,
	combout => \S~7_combout\);

-- Location: LCCOMB_X51_Y1_N0
\C~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \C~11_combout\ = (\A[7]~input_o\ & ((\B[7]~input_o\) # ((\C[7]~9_combout\) # (\C[7]~10_combout\)))) # (!\A[7]~input_o\ & (\B[7]~input_o\ & ((\C[7]~9_combout\) # (\C[7]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datab => \B[7]~input_o\,
	datac => \C[7]~9_combout\,
	datad => \C[7]~10_combout\,
	combout => \C~11_combout\);

-- Location: LCCOMB_X51_Y1_N22
\Ovfl~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Ovfl~6_combout\ = \C~11_combout\ $ (((\A[6]~input_o\ & ((\B[6]~input_o\) # (\C[6]~8_combout\))) # (!\A[6]~input_o\ & (\B[6]~input_o\ & \C[6]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datab => \B[6]~input_o\,
	datac => \C[6]~8_combout\,
	datad => \C~11_combout\,
	combout => \Ovfl~6_combout\);

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


