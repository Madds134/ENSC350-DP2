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

-- DATE "11/21/2026 11:33:45"

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
-- S[0]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[1]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[2]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[3]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[4]	=>  Location: PIN_V2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[5]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[6]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[7]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cout	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ovfl	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cin	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_P4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_P5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \S~1_combout\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:Low_half|Recur:Low_half|BG~0_combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:Low_half|cMid~4_combout\ : std_logic;
SIGNAL \S~2_combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:cMid~0_combout\ : std_logic;
SIGNAL \S~3_combout\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:Low_half|BG~0_combout\ : std_logic;
SIGNAL \CarryNetwork|cMid~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:Low_half|Recur:High_half|BG~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:Low_half|BG~combout\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \S~4_combout\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:cMid~0_combout\ : std_logic;
SIGNAL \S~5_combout\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:High_half|Recur:Low_half|BG~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:High_half|cMid~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:High_half|cMid~1_combout\ : std_logic;
SIGNAL \S~6_combout\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:High_half|Recur:High_half|Recur:cMid~0_combout\ : std_logic;
SIGNAL \S~7_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|c[1]~0_combout\ : std_logic;
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

-- Location: IOOBUF_X0_Y20_N2
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

-- Location: IOOBUF_X0_Y20_N16
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

-- Location: IOOBUF_X0_Y20_N23
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

-- Location: IOOBUF_X0_Y20_N9
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

-- Location: IOOBUF_X0_Y13_N2
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

-- Location: IOOBUF_X0_Y13_N9
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

-- Location: IOOBUF_X0_Y15_N16
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

-- Location: IOOBUF_X0_Y12_N23
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

-- Location: IOOBUF_X0_Y15_N23
\Cout~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|c[1]~0_combout\,
	devoe => ww_devoe,
	o => \Cout~output_o\);

-- Location: IOOBUF_X0_Y15_N2
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

-- Location: IOIBUF_X0_Y16_N8
\B[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X0_Y19_N22
\Cin~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cin,
	o => \Cin~input_o\);

-- Location: IOIBUF_X0_Y16_N15
\A[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: LCCOMB_X1_Y16_N28
\S~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~0_combout\ = \B[0]~input_o\ $ (\Cin~input_o\ $ (\A[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datac => \Cin~input_o\,
	datad => \A[0]~input_o\,
	combout => \S~0_combout\);

-- Location: IOIBUF_X0_Y16_N1
\A[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: IOIBUF_X0_Y16_N22
\B[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: LCCOMB_X1_Y16_N30
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

-- Location: LCCOMB_X1_Y16_N24
\S~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~1_combout\ = p(1) $ (((\A[0]~input_o\ & ((\Cin~input_o\) # (\B[0]~input_o\))) # (!\A[0]~input_o\ & (\Cin~input_o\ & \B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(1),
	datab => \A[0]~input_o\,
	datac => \Cin~input_o\,
	datad => \B[0]~input_o\,
	combout => \S~1_combout\);

-- Location: IOIBUF_X0_Y17_N15
\B[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: LCCOMB_X1_Y16_N18
\CarryNetwork|Recur:Low_half|Recur:Low_half|BG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:Low_half|Recur:Low_half|BG~0_combout\ = (\A[1]~input_o\ & ((\B[1]~input_o\) # ((\A[0]~input_o\ & \B[0]~input_o\)))) # (!\A[1]~input_o\ & (\A[0]~input_o\ & (\B[1]~input_o\ & \B[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \A[1]~input_o\,
	datac => \B[1]~input_o\,
	datad => \B[0]~input_o\,
	combout => \CarryNetwork|Recur:Low_half|Recur:Low_half|BG~0_combout\);

-- Location: IOIBUF_X0_Y17_N22
\A[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: LCCOMB_X1_Y16_N26
\CarryNetwork|Recur:Low_half|cMid~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:Low_half|cMid~4_combout\ = (p(1) & (\Cin~input_o\ & (\B[0]~input_o\ $ (\A[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[0]~input_o\,
	datac => p(1),
	datad => \Cin~input_o\,
	combout => \CarryNetwork|Recur:Low_half|cMid~4_combout\);

-- Location: LCCOMB_X1_Y16_N0
\S~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~2_combout\ = \B[2]~input_o\ $ (\A[2]~input_o\ $ (((\CarryNetwork|Recur:Low_half|Recur:Low_half|BG~0_combout\) # (\CarryNetwork|Recur:Low_half|cMid~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \CarryNetwork|Recur:Low_half|Recur:Low_half|BG~0_combout\,
	datac => \A[2]~input_o\,
	datad => \CarryNetwork|Recur:Low_half|cMid~4_combout\,
	combout => \S~2_combout\);

-- Location: IOIBUF_X0_Y18_N8
\A[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: IOIBUF_X0_Y18_N15
\B[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: LCCOMB_X1_Y16_N10
\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:cMid~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:cMid~0_combout\ = (\B[2]~input_o\ & ((\CarryNetwork|Recur:Low_half|Recur:Low_half|BG~0_combout\) # ((\A[2]~input_o\) # (\CarryNetwork|Recur:Low_half|cMid~4_combout\)))) # (!\B[2]~input_o\ & 
-- (\A[2]~input_o\ & ((\CarryNetwork|Recur:Low_half|Recur:Low_half|BG~0_combout\) # (\CarryNetwork|Recur:Low_half|cMid~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \CarryNetwork|Recur:Low_half|Recur:Low_half|BG~0_combout\,
	datac => \A[2]~input_o\,
	datad => \CarryNetwork|Recur:Low_half|cMid~4_combout\,
	combout => \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:cMid~0_combout\);

-- Location: LCCOMB_X1_Y16_N20
\S~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~3_combout\ = \A[3]~input_o\ $ (\B[3]~input_o\ $ (\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:cMid~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[3]~input_o\,
	datac => \B[3]~input_o\,
	datad => \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:cMid~0_combout\,
	combout => \S~3_combout\);

-- Location: IOIBUF_X0_Y19_N15
\B[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: LCCOMB_X1_Y15_N4
\CarryNetwork|Recur:Low_half|BG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:Low_half|BG~0_combout\ = (\B[3]~input_o\ & (!\A[3]~input_o\ & (\A[2]~input_o\ $ (\B[2]~input_o\)))) # (!\B[3]~input_o\ & (\A[3]~input_o\ & (\A[2]~input_o\ $ (\B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \A[2]~input_o\,
	datac => \A[3]~input_o\,
	datad => \B[2]~input_o\,
	combout => \CarryNetwork|Recur:Low_half|BG~0_combout\);

-- Location: LCCOMB_X1_Y15_N28
\p[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(0) = \B[0]~input_o\ $ (\A[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[0]~input_o\,
	datad => \A[0]~input_o\,
	combout => p(0));

-- Location: LCCOMB_X1_Y15_N24
\CarryNetwork|cMid~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|cMid~0_combout\ = (p(1) & (\Cin~input_o\ & (\CarryNetwork|Recur:Low_half|BG~0_combout\ & p(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(1),
	datab => \Cin~input_o\,
	datac => \CarryNetwork|Recur:Low_half|BG~0_combout\,
	datad => p(0),
	combout => \CarryNetwork|cMid~0_combout\);

-- Location: LCCOMB_X1_Y15_N10
\CarryNetwork|Recur:Low_half|Recur:High_half|BG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:Low_half|Recur:High_half|BG~0_combout\ = (\B[3]~input_o\ & ((\A[3]~input_o\) # ((\A[2]~input_o\ & \B[2]~input_o\)))) # (!\B[3]~input_o\ & (\A[3]~input_o\ & (\A[2]~input_o\ & \B[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \A[3]~input_o\,
	datac => \A[2]~input_o\,
	datad => \B[2]~input_o\,
	combout => \CarryNetwork|Recur:Low_half|Recur:High_half|BG~0_combout\);

-- Location: LCCOMB_X1_Y15_N22
\CarryNetwork|Recur:Low_half|BG\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:Low_half|BG~combout\ = (\CarryNetwork|Recur:Low_half|Recur:High_half|BG~0_combout\) # ((\CarryNetwork|Recur:Low_half|BG~0_combout\ & \CarryNetwork|Recur:Low_half|Recur:Low_half|BG~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:Low_half|Recur:High_half|BG~0_combout\,
	datac => \CarryNetwork|Recur:Low_half|BG~0_combout\,
	datad => \CarryNetwork|Recur:Low_half|Recur:Low_half|BG~0_combout\,
	combout => \CarryNetwork|Recur:Low_half|BG~combout\);

-- Location: IOIBUF_X0_Y12_N15
\A[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: LCCOMB_X1_Y15_N6
\S~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~4_combout\ = \B[4]~input_o\ $ (\A[4]~input_o\ $ (((\CarryNetwork|cMid~0_combout\) # (\CarryNetwork|Recur:Low_half|BG~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \CarryNetwork|cMid~0_combout\,
	datac => \CarryNetwork|Recur:Low_half|BG~combout\,
	datad => \A[4]~input_o\,
	combout => \S~4_combout\);

-- Location: IOIBUF_X0_Y19_N8
\A[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: IOIBUF_X0_Y19_N1
\B[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: LCCOMB_X1_Y15_N0
\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:cMid~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:cMid~0_combout\ = (\B[4]~input_o\ & ((\A[4]~input_o\) # ((\CarryNetwork|Recur:Low_half|BG~combout\) # (\CarryNetwork|cMid~0_combout\)))) # (!\B[4]~input_o\ & (\A[4]~input_o\ & 
-- ((\CarryNetwork|Recur:Low_half|BG~combout\) # (\CarryNetwork|cMid~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \A[4]~input_o\,
	datac => \CarryNetwork|Recur:Low_half|BG~combout\,
	datad => \CarryNetwork|cMid~0_combout\,
	combout => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:cMid~0_combout\);

-- Location: LCCOMB_X1_Y15_N18
\S~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~5_combout\ = \A[5]~input_o\ $ (\B[5]~input_o\ $ (\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:cMid~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[5]~input_o\,
	datac => \B[5]~input_o\,
	datad => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:cMid~0_combout\,
	combout => \S~5_combout\);

-- Location: IOIBUF_X0_Y11_N15
\B[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: IOIBUF_X0_Y11_N8
\A[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: LCCOMB_X1_Y15_N8
\CarryNetwork|Recur:High_half|Recur:Low_half|BG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:High_half|Recur:Low_half|BG~0_combout\ = (\B[5]~input_o\ & ((\A[5]~input_o\) # ((\B[4]~input_o\ & \A[4]~input_o\)))) # (!\B[5]~input_o\ & (\B[4]~input_o\ & (\A[5]~input_o\ & \A[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \B[5]~input_o\,
	datac => \A[5]~input_o\,
	datad => \A[4]~input_o\,
	combout => \CarryNetwork|Recur:High_half|Recur:Low_half|BG~0_combout\);

-- Location: LCCOMB_X1_Y15_N26
\CarryNetwork|Recur:High_half|cMid~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:High_half|cMid~0_combout\ = (\A[4]~input_o\ & (!\B[4]~input_o\ & (\B[5]~input_o\ $ (\A[5]~input_o\)))) # (!\A[4]~input_o\ & (\B[4]~input_o\ & (\B[5]~input_o\ $ (\A[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datab => \B[5]~input_o\,
	datac => \A[5]~input_o\,
	datad => \B[4]~input_o\,
	combout => \CarryNetwork|Recur:High_half|cMid~0_combout\);

-- Location: LCCOMB_X1_Y15_N20
\CarryNetwork|Recur:High_half|cMid~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:High_half|cMid~1_combout\ = (\CarryNetwork|Recur:High_half|cMid~0_combout\ & ((\CarryNetwork|Recur:Low_half|BG~combout\) # (\CarryNetwork|cMid~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:High_half|cMid~0_combout\,
	datac => \CarryNetwork|Recur:Low_half|BG~combout\,
	datad => \CarryNetwork|cMid~0_combout\,
	combout => \CarryNetwork|Recur:High_half|cMid~1_combout\);

-- Location: LCCOMB_X1_Y15_N14
\S~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~6_combout\ = \B[6]~input_o\ $ (\A[6]~input_o\ $ (((\CarryNetwork|Recur:High_half|Recur:Low_half|BG~0_combout\) # (\CarryNetwork|Recur:High_half|cMid~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[6]~input_o\,
	datab => \A[6]~input_o\,
	datac => \CarryNetwork|Recur:High_half|Recur:Low_half|BG~0_combout\,
	datad => \CarryNetwork|Recur:High_half|cMid~1_combout\,
	combout => \S~6_combout\);

-- Location: IOIBUF_X0_Y11_N1
\B[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: IOIBUF_X0_Y10_N22
\A[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: LCCOMB_X1_Y15_N16
\CarryNetwork|Recur:High_half|Recur:High_half|Recur:cMid~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:High_half|Recur:High_half|Recur:cMid~0_combout\ = (\B[6]~input_o\ & ((\A[6]~input_o\) # ((\CarryNetwork|Recur:High_half|Recur:Low_half|BG~0_combout\) # (\CarryNetwork|Recur:High_half|cMid~1_combout\)))) # (!\B[6]~input_o\ & 
-- (\A[6]~input_o\ & ((\CarryNetwork|Recur:High_half|Recur:Low_half|BG~0_combout\) # (\CarryNetwork|Recur:High_half|cMid~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[6]~input_o\,
	datab => \A[6]~input_o\,
	datac => \CarryNetwork|Recur:High_half|Recur:Low_half|BG~0_combout\,
	datad => \CarryNetwork|Recur:High_half|cMid~1_combout\,
	combout => \CarryNetwork|Recur:High_half|Recur:High_half|Recur:cMid~0_combout\);

-- Location: LCCOMB_X1_Y15_N2
\S~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~7_combout\ = \B[7]~input_o\ $ (\A[7]~input_o\ $ (\CarryNetwork|Recur:High_half|Recur:High_half|Recur:cMid~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[7]~input_o\,
	datab => \A[7]~input_o\,
	datad => \CarryNetwork|Recur:High_half|Recur:High_half|Recur:cMid~0_combout\,
	combout => \S~7_combout\);

-- Location: LCCOMB_X1_Y15_N12
\CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|c[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|c[1]~0_combout\ = (\B[7]~input_o\ & ((\A[7]~input_o\) # (\CarryNetwork|Recur:High_half|Recur:High_half|Recur:cMid~0_combout\))) # (!\B[7]~input_o\ & (\A[7]~input_o\ & 
-- \CarryNetwork|Recur:High_half|Recur:High_half|Recur:cMid~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[7]~input_o\,
	datab => \A[7]~input_o\,
	datad => \CarryNetwork|Recur:High_half|Recur:High_half|Recur:cMid~0_combout\,
	combout => \CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|c[1]~0_combout\);

-- Location: LCCOMB_X1_Y15_N30
\Ovfl~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Ovfl~0_combout\ = (\B[7]~input_o\ & (\A[7]~input_o\ & !\CarryNetwork|Recur:High_half|Recur:High_half|Recur:cMid~0_combout\)) # (!\B[7]~input_o\ & (!\A[7]~input_o\ & \CarryNetwork|Recur:High_half|Recur:High_half|Recur:cMid~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[7]~input_o\,
	datab => \A[7]~input_o\,
	datad => \CarryNetwork|Recur:High_half|Recur:High_half|Recur:cMid~0_combout\,
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


