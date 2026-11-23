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

-- DATE "11/21/2026 11:31:51"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
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
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


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
-- S[0]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[1]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[2]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[3]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[4]	=>  Location: PIN_G7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[5]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[6]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[7]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cout	=>  Location: PIN_G6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ovfl	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_D4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cin	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_E5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_F5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \S~1_combout\ : std_logic;
SIGNAL \S~2_combout\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\ : std_logic;
SIGNAL \S~3_combout\ : std_logic;
SIGNAL \S~4_combout\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:M0[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:M1[0]~combout\ : std_logic;
SIGNAL \S~5_combout\ : std_logic;
SIGNAL \S~6_combout\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:M1[1]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:M0[1]~combout\ : std_logic;
SIGNAL \S~7_combout\ : std_logic;
SIGNAL \S~8_combout\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:M0[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:M1[0]~combout\ : std_logic;
SIGNAL \S~9_combout\ : std_logic;
SIGNAL \S~10_combout\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:M1[1]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:M0[1]~combout\ : std_logic;
SIGNAL \S~11_combout\ : std_logic;
SIGNAL \S~12_combout\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:M1[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:M0[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:M0[2]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:M1[2]~combout\ : std_logic;
SIGNAL \S~13_combout\ : std_logic;
SIGNAL \S~14_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:M1[1]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:M0[1]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:M1[3]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:M0[3]~combout\ : std_logic;
SIGNAL \c~0_combout\ : std_logic;
SIGNAL \Ovfl~0_combout\ : std_logic;

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

-- Location: IOOBUF_X11_Y73_N9
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

-- Location: IOOBUF_X11_Y73_N2
\S[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~2_combout\,
	devoe => ww_devoe,
	o => \S[1]~output_o\);

-- Location: IOOBUF_X7_Y73_N23
\S[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~4_combout\,
	devoe => ww_devoe,
	o => \S[2]~output_o\);

-- Location: IOOBUF_X7_Y73_N16
\S[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~6_combout\,
	devoe => ww_devoe,
	o => \S[3]~output_o\);

-- Location: IOOBUF_X9_Y73_N2
\S[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~8_combout\,
	devoe => ww_devoe,
	o => \S[4]~output_o\);

-- Location: IOOBUF_X5_Y73_N2
\S[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~10_combout\,
	devoe => ww_devoe,
	o => \S[5]~output_o\);

-- Location: IOOBUF_X1_Y73_N9
\S[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~12_combout\,
	devoe => ww_devoe,
	o => \S[6]~output_o\);

-- Location: IOOBUF_X0_Y68_N2
\S[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~14_combout\,
	devoe => ww_devoe,
	o => \S[7]~output_o\);

-- Location: IOOBUF_X0_Y67_N16
\Cout~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \c~0_combout\,
	devoe => ww_devoe,
	o => \Cout~output_o\);

-- Location: IOOBUF_X0_Y69_N9
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

-- Location: IOIBUF_X1_Y73_N1
\A[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X1_Y73_N22
\B[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X9_Y73_N8
\Cin~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cin,
	o => \Cin~input_o\);

-- Location: LCCOMB_X2_Y72_N4
\S~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~0_combout\ = \A[0]~input_o\ $ (\B[0]~input_o\ $ (\Cin~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[0]~input_o\,
	datac => \B[0]~input_o\,
	datad => \Cin~input_o\,
	combout => \S~0_combout\);

-- Location: IOIBUF_X3_Y73_N8
\B[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: IOIBUF_X1_Y73_N15
\A[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: LCCOMB_X2_Y72_N18
\S~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~1_combout\ = \A[1]~input_o\ $ (((\A[0]~input_o\ & ((\B[0]~input_o\) # (\Cin~input_o\))) # (!\A[0]~input_o\ & (\B[0]~input_o\ & \Cin~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \A[0]~input_o\,
	datac => \B[0]~input_o\,
	datad => \Cin~input_o\,
	combout => \S~1_combout\);

-- Location: LCCOMB_X2_Y72_N8
\S~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~2_combout\ = \B[1]~input_o\ $ (\S~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[1]~input_o\,
	datad => \S~1_combout\,
	combout => \S~2_combout\);

-- Location: IOIBUF_X5_Y73_N22
\B[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: IOIBUF_X5_Y73_N8
\A[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: LCCOMB_X2_Y69_N26
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\ = LCELL((\A[1]~input_o\ & ((\A[0]~input_o\) # ((\B[0]~input_o\) # (\B[1]~input_o\)))) # (!\A[1]~input_o\ & (\B[1]~input_o\ & ((\A[0]~input_o\) # (\B[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \A[1]~input_o\,
	datac => \B[0]~input_o\,
	datad => \B[1]~input_o\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\);

-- Location: LCCOMB_X2_Y69_N4
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\ = LCELL((\A[1]~input_o\ & ((\B[1]~input_o\) # ((\A[0]~input_o\ & \B[0]~input_o\)))) # (!\A[1]~input_o\ & (\A[0]~input_o\ & (\B[0]~input_o\ & \B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \A[1]~input_o\,
	datac => \B[0]~input_o\,
	datad => \B[1]~input_o\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\);

-- Location: LCCOMB_X6_Y69_N28
\S~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~3_combout\ = \A[2]~input_o\ $ (((\Cin~input_o\ & (\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\)) # (!\Cin~input_o\ & ((\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\,
	datac => \Cin~input_o\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\,
	combout => \S~3_combout\);

-- Location: LCCOMB_X6_Y69_N10
\S~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~4_combout\ = \B[2]~input_o\ $ (\S~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[2]~input_o\,
	datad => \S~3_combout\,
	combout => \S~4_combout\);

-- Location: IOIBUF_X3_Y73_N22
\B[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: IOIBUF_X3_Y73_N1
\A[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: LCCOMB_X6_Y69_N8
\CarryNetwork|Recur:LowHalf|Recur:M0[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:M0[0]~combout\ = LCELL((\B[2]~input_o\ & ((\A[2]~input_o\) # (\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\))) # (!\B[2]~input_o\ & (\A[2]~input_o\ & 
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datac => \A[2]~input_o\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:M0[0]~combout\);

-- Location: LCCOMB_X6_Y69_N18
\CarryNetwork|Recur:LowHalf|Recur:M1[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:M1[0]~combout\ = LCELL((\B[2]~input_o\ & ((\A[2]~input_o\) # (\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\))) # (!\B[2]~input_o\ & (\A[2]~input_o\ & 
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datac => \A[2]~input_o\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:M1[0]~combout\);

-- Location: LCCOMB_X6_Y69_N12
\S~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~5_combout\ = \A[3]~input_o\ $ (((\Cin~input_o\ & ((\CarryNetwork|Recur:LowHalf|Recur:M1[0]~combout\))) # (!\Cin~input_o\ & (\CarryNetwork|Recur:LowHalf|Recur:M0[0]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \Cin~input_o\,
	datac => \CarryNetwork|Recur:LowHalf|Recur:M0[0]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:M1[0]~combout\,
	combout => \S~5_combout\);

-- Location: LCCOMB_X6_Y69_N2
\S~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~6_combout\ = \B[3]~input_o\ $ (\S~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[3]~input_o\,
	datad => \S~5_combout\,
	combout => \S~6_combout\);

-- Location: IOIBUF_X0_Y68_N15
\B[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: IOIBUF_X0_Y68_N8
\A[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: LCCOMB_X2_Y69_N20
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\ = LCELL((\A[3]~input_o\ & ((\B[3]~input_o\) # ((\A[2]~input_o\) # (\B[2]~input_o\)))) # (!\A[3]~input_o\ & (\B[3]~input_o\ & ((\A[2]~input_o\) # (\B[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \B[3]~input_o\,
	datac => \A[2]~input_o\,
	datad => \B[2]~input_o\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\);

-- Location: LCCOMB_X2_Y69_N10
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\ = LCELL((\A[3]~input_o\ & ((\B[3]~input_o\) # ((\A[2]~input_o\ & \B[2]~input_o\)))) # (!\A[3]~input_o\ & (\B[3]~input_o\ & (\A[2]~input_o\ & \B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \B[3]~input_o\,
	datac => \A[2]~input_o\,
	datad => \B[2]~input_o\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\);

-- Location: LCCOMB_X2_Y69_N22
\CarryNetwork|Recur:LowHalf|Recur:M1[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:M1[1]~combout\ = LCELL((\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\ & (\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\)) # 
-- (!\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\ & ((\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\,
	datac => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:M1[1]~combout\);

-- Location: LCCOMB_X2_Y69_N28
\CarryNetwork|Recur:LowHalf|Recur:M0[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:M0[1]~combout\ = LCELL((\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\ & (\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\)) # 
-- (!\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\ & ((\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\,
	datac => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:M0[1]~combout\);

-- Location: LCCOMB_X2_Y69_N12
\S~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~7_combout\ = \A[4]~input_o\ $ (((\Cin~input_o\ & (\CarryNetwork|Recur:LowHalf|Recur:M1[1]~combout\)) # (!\Cin~input_o\ & ((\CarryNetwork|Recur:LowHalf|Recur:M0[1]~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cin~input_o\,
	datab => \A[4]~input_o\,
	datac => \CarryNetwork|Recur:LowHalf|Recur:M1[1]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:M0[1]~combout\,
	combout => \S~7_combout\);

-- Location: LCCOMB_X2_Y69_N18
\S~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~8_combout\ = \B[4]~input_o\ $ (\S~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[4]~input_o\,
	datad => \S~7_combout\,
	combout => \S~8_combout\);

-- Location: IOIBUF_X0_Y65_N15
\B[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: IOIBUF_X0_Y66_N22
\A[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: LCCOMB_X2_Y69_N8
\CarryNetwork|Recur:M0[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:M0[0]~combout\ = LCELL((\A[4]~input_o\ & ((\B[4]~input_o\) # (\CarryNetwork|Recur:LowHalf|Recur:M0[1]~combout\))) # (!\A[4]~input_o\ & (\B[4]~input_o\ & \CarryNetwork|Recur:LowHalf|Recur:M0[1]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datac => \B[4]~input_o\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:M0[1]~combout\,
	combout => \CarryNetwork|Recur:M0[0]~combout\);

-- Location: LCCOMB_X2_Y69_N2
\CarryNetwork|Recur:M1[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:M1[0]~combout\ = LCELL((\A[4]~input_o\ & ((\CarryNetwork|Recur:LowHalf|Recur:M1[1]~combout\) # (\B[4]~input_o\))) # (!\A[4]~input_o\ & (\CarryNetwork|Recur:LowHalf|Recur:M1[1]~combout\ & \B[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datac => \CarryNetwork|Recur:LowHalf|Recur:M1[1]~combout\,
	datad => \B[4]~input_o\,
	combout => \CarryNetwork|Recur:M1[0]~combout\);

-- Location: LCCOMB_X2_Y69_N0
\S~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~9_combout\ = \A[5]~input_o\ $ (((\Cin~input_o\ & ((\CarryNetwork|Recur:M1[0]~combout\))) # (!\Cin~input_o\ & (\CarryNetwork|Recur:M0[0]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~input_o\,
	datab => \Cin~input_o\,
	datac => \CarryNetwork|Recur:M0[0]~combout\,
	datad => \CarryNetwork|Recur:M1[0]~combout\,
	combout => \S~9_combout\);

-- Location: LCCOMB_X2_Y69_N6
\S~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~10_combout\ = \B[5]~input_o\ $ (\S~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[5]~input_o\,
	datad => \S~9_combout\,
	combout => \S~10_combout\);

-- Location: IOIBUF_X0_Y66_N15
\B[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: IOIBUF_X0_Y67_N22
\A[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: LCCOMB_X1_Y69_N20
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\ = LCELL((\B[5]~input_o\ & ((\B[4]~input_o\) # ((\A[4]~input_o\) # (\A[5]~input_o\)))) # (!\B[5]~input_o\ & (\A[5]~input_o\ & ((\B[4]~input_o\) # (\A[4]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \B[5]~input_o\,
	datac => \A[4]~input_o\,
	datad => \A[5]~input_o\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\);

-- Location: LCCOMB_X1_Y69_N6
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\ = LCELL((\B[5]~input_o\ & ((\A[5]~input_o\) # ((\B[4]~input_o\ & \A[4]~input_o\)))) # (!\B[5]~input_o\ & (\B[4]~input_o\ & (\A[4]~input_o\ & \A[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \B[5]~input_o\,
	datac => \A[4]~input_o\,
	datad => \A[5]~input_o\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\);

-- Location: LCCOMB_X2_Y69_N14
\CarryNetwork|Recur:M1[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:M1[1]~combout\ = LCELL((\CarryNetwork|Recur:LowHalf|Recur:M1[1]~combout\ & (\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\)) # (!\CarryNetwork|Recur:LowHalf|Recur:M1[1]~combout\ & 
-- ((\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\,
	datac => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:M1[1]~combout\,
	combout => \CarryNetwork|Recur:M1[1]~combout\);

-- Location: LCCOMB_X2_Y69_N16
\CarryNetwork|Recur:M0[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:M0[1]~combout\ = LCELL((\CarryNetwork|Recur:LowHalf|Recur:M0[1]~combout\ & (\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\)) # (!\CarryNetwork|Recur:LowHalf|Recur:M0[1]~combout\ & 
-- ((\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\,
	datac => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:M0[1]~combout\,
	combout => \CarryNetwork|Recur:M0[1]~combout\);

-- Location: LCCOMB_X2_Y69_N24
\S~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~11_combout\ = \A[6]~input_o\ $ (((\Cin~input_o\ & (\CarryNetwork|Recur:M1[1]~combout\)) # (!\Cin~input_o\ & ((\CarryNetwork|Recur:M0[1]~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cin~input_o\,
	datab => \A[6]~input_o\,
	datac => \CarryNetwork|Recur:M1[1]~combout\,
	datad => \CarryNetwork|Recur:M0[1]~combout\,
	combout => \S~11_combout\);

-- Location: LCCOMB_X2_Y69_N30
\S~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~12_combout\ = \B[6]~input_o\ $ (\S~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[6]~input_o\,
	datad => \S~11_combout\,
	combout => \S~12_combout\);

-- Location: IOIBUF_X0_Y63_N22
\B[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: IOIBUF_X0_Y64_N1
\A[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: LCCOMB_X1_Y69_N24
\CarryNetwork|Recur:HighHalf|Recur:M1[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:M1[0]~combout\ = LCELL((\B[6]~input_o\ & ((\A[6]~input_o\) # (\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\))) # (!\B[6]~input_o\ & (\A[6]~input_o\ & 
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[6]~input_o\,
	datac => \A[6]~input_o\,
	datad => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:M1[0]~combout\);

-- Location: LCCOMB_X1_Y69_N26
\CarryNetwork|Recur:HighHalf|Recur:M0[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:M0[0]~combout\ = LCELL((\B[6]~input_o\ & ((\A[6]~input_o\) # (\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\))) # (!\B[6]~input_o\ & (\A[6]~input_o\ & 
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[6]~input_o\,
	datac => \A[6]~input_o\,
	datad => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:M0[0]~combout\);

-- Location: LCCOMB_X1_Y69_N8
\CarryNetwork|Recur:M0[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:M0[2]~combout\ = LCELL((\CarryNetwork|Recur:LowHalf|Recur:M0[1]~combout\ & (\CarryNetwork|Recur:HighHalf|Recur:M1[0]~combout\)) # (!\CarryNetwork|Recur:LowHalf|Recur:M0[1]~combout\ & 
-- ((\CarryNetwork|Recur:HighHalf|Recur:M0[0]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CarryNetwork|Recur:HighHalf|Recur:M1[0]~combout\,
	datac => \CarryNetwork|Recur:HighHalf|Recur:M0[0]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:M0[1]~combout\,
	combout => \CarryNetwork|Recur:M0[2]~combout\);

-- Location: LCCOMB_X1_Y69_N2
\CarryNetwork|Recur:M1[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:M1[2]~combout\ = LCELL((\CarryNetwork|Recur:LowHalf|Recur:M1[1]~combout\ & (\CarryNetwork|Recur:HighHalf|Recur:M1[0]~combout\)) # (!\CarryNetwork|Recur:LowHalf|Recur:M1[1]~combout\ & 
-- ((\CarryNetwork|Recur:HighHalf|Recur:M0[0]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CarryNetwork|Recur:HighHalf|Recur:M1[0]~combout\,
	datac => \CarryNetwork|Recur:HighHalf|Recur:M0[0]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:M1[1]~combout\,
	combout => \CarryNetwork|Recur:M1[2]~combout\);

-- Location: LCCOMB_X1_Y69_N16
\S~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~13_combout\ = \A[7]~input_o\ $ (((\Cin~input_o\ & ((\CarryNetwork|Recur:M1[2]~combout\))) # (!\Cin~input_o\ & (\CarryNetwork|Recur:M0[2]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cin~input_o\,
	datab => \A[7]~input_o\,
	datac => \CarryNetwork|Recur:M0[2]~combout\,
	datad => \CarryNetwork|Recur:M1[2]~combout\,
	combout => \S~13_combout\);

-- Location: LCCOMB_X1_Y69_N30
\S~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~14_combout\ = \B[7]~input_o\ $ (\S~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[7]~input_o\,
	datad => \S~13_combout\,
	combout => \S~14_combout\);

-- Location: LCCOMB_X1_Y69_N22
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\ = LCELL((\A[7]~input_o\ & ((\B[7]~input_o\) # ((\B[6]~input_o\ & \A[6]~input_o\)))) # (!\A[7]~input_o\ & (\B[6]~input_o\ & (\A[6]~input_o\ & \B[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[6]~input_o\,
	datab => \A[6]~input_o\,
	datac => \A[7]~input_o\,
	datad => \B[7]~input_o\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\);

-- Location: LCCOMB_X1_Y69_N0
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\ = LCELL((\A[7]~input_o\ & ((\B[6]~input_o\) # ((\A[6]~input_o\) # (\B[7]~input_o\)))) # (!\A[7]~input_o\ & (\B[7]~input_o\ & ((\B[6]~input_o\) # (\A[6]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[6]~input_o\,
	datab => \A[6]~input_o\,
	datac => \A[7]~input_o\,
	datad => \B[7]~input_o\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\);

-- Location: LCCOMB_X1_Y69_N12
\CarryNetwork|Recur:HighHalf|Recur:M1[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:M1[1]~combout\ = LCELL((\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\ & ((\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\))) # 
-- (!\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\ & (\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\,
	datac => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\,
	datad => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:M1[1]~combout\);

-- Location: LCCOMB_X1_Y69_N14
\CarryNetwork|Recur:HighHalf|Recur:M0[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:M0[1]~combout\ = LCELL((\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\ & ((\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\))) # 
-- (!\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\ & (\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\,
	datac => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\,
	datad => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:M0[1]~combout\);

-- Location: LCCOMB_X1_Y69_N4
\CarryNetwork|Recur:M1[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:M1[3]~combout\ = LCELL((\CarryNetwork|Recur:LowHalf|Recur:M1[1]~combout\ & (\CarryNetwork|Recur:HighHalf|Recur:M1[1]~combout\)) # (!\CarryNetwork|Recur:LowHalf|Recur:M1[1]~combout\ & 
-- ((\CarryNetwork|Recur:HighHalf|Recur:M0[1]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:HighHalf|Recur:M1[1]~combout\,
	datac => \CarryNetwork|Recur:HighHalf|Recur:M0[1]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:M1[1]~combout\,
	combout => \CarryNetwork|Recur:M1[3]~combout\);

-- Location: LCCOMB_X1_Y69_N10
\CarryNetwork|Recur:M0[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:M0[3]~combout\ = LCELL((\CarryNetwork|Recur:LowHalf|Recur:M0[1]~combout\ & (\CarryNetwork|Recur:HighHalf|Recur:M1[1]~combout\)) # (!\CarryNetwork|Recur:LowHalf|Recur:M0[1]~combout\ & 
-- ((\CarryNetwork|Recur:HighHalf|Recur:M0[1]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:HighHalf|Recur:M1[1]~combout\,
	datac => \CarryNetwork|Recur:HighHalf|Recur:M0[1]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:M0[1]~combout\,
	combout => \CarryNetwork|Recur:M0[3]~combout\);

-- Location: LCCOMB_X1_Y69_N28
\c~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c~0_combout\ = (\Cin~input_o\ & (\CarryNetwork|Recur:M1[3]~combout\)) # (!\Cin~input_o\ & ((\CarryNetwork|Recur:M0[3]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cin~input_o\,
	datac => \CarryNetwork|Recur:M1[3]~combout\,
	datad => \CarryNetwork|Recur:M0[3]~combout\,
	combout => \c~0_combout\);

-- Location: LCCOMB_X1_Y69_N18
\Ovfl~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Ovfl~0_combout\ = \c~0_combout\ $ (((\Cin~input_o\ & ((\CarryNetwork|Recur:M1[2]~combout\))) # (!\Cin~input_o\ & (\CarryNetwork|Recur:M0[2]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cin~input_o\,
	datab => \CarryNetwork|Recur:M0[2]~combout\,
	datac => \CarryNetwork|Recur:M1[2]~combout\,
	datad => \c~0_combout\,
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


