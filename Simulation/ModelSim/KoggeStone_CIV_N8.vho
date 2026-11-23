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

-- DATE "11/21/2026 11:36:14"

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
-- S[0]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[1]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[2]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[3]	=>  Location: PIN_AF15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[4]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[5]	=>  Location: PIN_AC11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[6]	=>  Location: PIN_AE14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[7]	=>  Location: PIN_AD15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cout	=>  Location: PIN_AG12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ovfl	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_Y12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cin	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_AD14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_AH12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_AC15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_AE15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_AE13,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \S~8_combout\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \S~9_combout\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \c~0_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gpre[1]~0_combout\ : std_logic;
SIGNAL \S~10_combout\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \S~11_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][2]~0_combout\ : std_logic;
SIGNAL \c[3]~1_combout\ : std_logic;
SIGNAL \S~19_combout\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][3]~1_combout\ : std_logic;
SIGNAL \S~12_combout\ : std_logic;
SIGNAL \S~13_combout\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][4]~2_combout\ : std_logic;
SIGNAL \S~20_combout\ : std_logic;
SIGNAL \S~14_combout\ : std_logic;
SIGNAL \S~21_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][5]~3_combout\ : std_logic;
SIGNAL \S~15_combout\ : std_logic;
SIGNAL \S~16_combout\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \S~17_combout\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][6]~4_combout\ : std_logic;
SIGNAL \c[7]~2_combout\ : std_logic;
SIGNAL \c[7]~3_combout\ : std_logic;
SIGNAL \S~18_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][7]~5_combout\ : std_logic;
SIGNAL \c~4_combout\ : std_logic;
SIGNAL \c~5_combout\ : std_logic;
SIGNAL \c~6_combout\ : std_logic;
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

-- Location: IOOBUF_X45_Y0_N23
\S[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~8_combout\,
	devoe => ww_devoe,
	o => \S[0]~output_o\);

-- Location: IOOBUF_X45_Y0_N16
\S[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~9_combout\,
	devoe => ww_devoe,
	o => \S[1]~output_o\);

-- Location: IOOBUF_X47_Y0_N2
\S[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~10_combout\,
	devoe => ww_devoe,
	o => \S[2]~output_o\);

-- Location: IOOBUF_X60_Y0_N2
\S[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~19_combout\,
	devoe => ww_devoe,
	o => \S[3]~output_o\);

-- Location: IOOBUF_X62_Y0_N16
\S[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~13_combout\,
	devoe => ww_devoe,
	o => \S[4]~output_o\);

-- Location: IOOBUF_X49_Y0_N9
\S[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~21_combout\,
	devoe => ww_devoe,
	o => \S[5]~output_o\);

-- Location: IOOBUF_X49_Y0_N23
\S[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~17_combout\,
	devoe => ww_devoe,
	o => \S[6]~output_o\);

-- Location: IOOBUF_X60_Y0_N16
\S[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~18_combout\,
	devoe => ww_devoe,
	o => \S[7]~output_o\);

-- Location: IOOBUF_X54_Y0_N9
\Cout~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \c~6_combout\,
	devoe => ww_devoe,
	o => \Cout~output_o\);

-- Location: IOOBUF_X56_Y0_N23
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

-- Location: IOIBUF_X49_Y0_N1
\Cin~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cin,
	o => \Cin~input_o\);

-- Location: IOIBUF_X49_Y0_N15
\B[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X52_Y0_N22
\A[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: LCCOMB_X49_Y2_N20
\S~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~8_combout\ = \Cin~input_o\ $ (\B[0]~input_o\ $ (\A[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Cin~input_o\,
	datac => \B[0]~input_o\,
	datad => \A[0]~input_o\,
	combout => \S~8_combout\);

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

-- Location: IOIBUF_X52_Y0_N1
\A[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: LCCOMB_X53_Y2_N8
\p[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(1) = \B[1]~input_o\ $ (\A[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[1]~input_o\,
	datad => \A[1]~input_o\,
	combout => p(1));

-- Location: LCCOMB_X49_Y2_N22
\S~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~9_combout\ = p(1) $ (((\A[0]~input_o\ & ((\B[0]~input_o\) # (\Cin~input_o\))) # (!\A[0]~input_o\ & (\B[0]~input_o\ & \Cin~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \B[0]~input_o\,
	datac => p(1),
	datad => \Cin~input_o\,
	combout => \S~9_combout\);

-- Location: IOIBUF_X52_Y0_N8
\B[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: IOIBUF_X47_Y0_N8
\A[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: LCCOMB_X53_Y2_N30
\p[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(2) = \B[2]~input_o\ $ (\A[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[2]~input_o\,
	datad => \A[2]~input_o\,
	combout => p(2));

-- Location: LCCOMB_X53_Y2_N10
\c~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c~0_combout\ = (\Cin~input_o\ & (\A[0]~input_o\ $ (\B[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datac => \Cin~input_o\,
	datad => \B[0]~input_o\,
	combout => \c~0_combout\);

-- Location: LCCOMB_X53_Y2_N4
\PrefixNetwork|Gpre[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gpre[1]~0_combout\ = (\A[1]~input_o\ & ((\B[1]~input_o\) # ((\A[0]~input_o\ & \B[0]~input_o\)))) # (!\A[1]~input_o\ & (\A[0]~input_o\ & (\B[1]~input_o\ & \B[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \A[0]~input_o\,
	datac => \B[1]~input_o\,
	datad => \B[0]~input_o\,
	combout => \PrefixNetwork|Gpre[1]~0_combout\);

-- Location: LCCOMB_X52_Y2_N24
\S~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~10_combout\ = p(2) $ (((\PrefixNetwork|Gpre[1]~0_combout\) # ((\c~0_combout\ & p(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(2),
	datab => \c~0_combout\,
	datac => p(1),
	datad => \PrefixNetwork|Gpre[1]~0_combout\,
	combout => \S~10_combout\);

-- Location: IOIBUF_X56_Y0_N1
\B[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: IOIBUF_X56_Y0_N8
\A[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: LCCOMB_X53_Y2_N14
\S~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~11_combout\ = (\A[0]~input_o\ & ((\Cin~input_o\) # (\B[0]~input_o\))) # (!\A[0]~input_o\ & (\Cin~input_o\ & \B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datac => \Cin~input_o\,
	datad => \B[0]~input_o\,
	combout => \S~11_combout\);

-- Location: LCCOMB_X53_Y2_N12
\PrefixNetwork|Gk[1][2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][2]~0_combout\ = (\B[2]~input_o\ & ((\A[2]~input_o\) # ((\A[1]~input_o\ & \B[1]~input_o\)))) # (!\B[2]~input_o\ & (\A[1]~input_o\ & (\B[1]~input_o\ & \A[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \B[2]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[2]~input_o\,
	combout => \PrefixNetwork|Gk[1][2]~0_combout\);

-- Location: LCCOMB_X53_Y2_N16
\c[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[3]~1_combout\ = (\PrefixNetwork|Gk[1][2]~0_combout\) # ((p(2) & (p(1) & \S~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(2),
	datab => p(1),
	datac => \S~11_combout\,
	datad => \PrefixNetwork|Gk[1][2]~0_combout\,
	combout => \c[3]~1_combout\);

-- Location: LCCOMB_X53_Y2_N22
\S~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~19_combout\ = \B[3]~input_o\ $ (\A[3]~input_o\ $ (\c[3]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datac => \A[3]~input_o\,
	datad => \c[3]~1_combout\,
	combout => \S~19_combout\);

-- Location: IOIBUF_X54_Y0_N15
\A[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: IOIBUF_X54_Y0_N22
\B[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: LCCOMB_X54_Y2_N20
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

-- Location: LCCOMB_X53_Y2_N24
\PrefixNetwork|Gk[1][3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][3]~1_combout\ = (\B[3]~input_o\ & ((\A[3]~input_o\) # ((\B[2]~input_o\ & \A[2]~input_o\)))) # (!\B[3]~input_o\ & (\B[2]~input_o\ & (\A[3]~input_o\ & \A[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[3]~input_o\,
	datac => \A[3]~input_o\,
	datad => \A[2]~input_o\,
	combout => \PrefixNetwork|Gk[1][3]~1_combout\);

-- Location: LCCOMB_X53_Y2_N6
\S~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~12_combout\ = (p(2) & ((\PrefixNetwork|Gpre[1]~0_combout\) # ((\c~0_combout\ & p(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c~0_combout\,
	datab => p(1),
	datac => \PrefixNetwork|Gpre[1]~0_combout\,
	datad => p(2),
	combout => \S~12_combout\);

-- Location: LCCOMB_X55_Y2_N12
\p[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(3) = \B[3]~input_o\ $ (\A[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[3]~input_o\,
	datad => \A[3]~input_o\,
	combout => p(3));

-- Location: LCCOMB_X54_Y2_N6
\S~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~13_combout\ = p(4) $ (((\PrefixNetwork|Gk[1][3]~1_combout\) # ((\S~12_combout\ & p(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(4),
	datab => \PrefixNetwork|Gk[1][3]~1_combout\,
	datac => \S~12_combout\,
	datad => p(3),
	combout => \S~13_combout\);

-- Location: IOIBUF_X56_Y0_N15
\A[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: IOIBUF_X54_Y0_N1
\B[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: LCCOMB_X54_Y2_N12
\PrefixNetwork|Gk[1][4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][4]~2_combout\ = (\B[4]~input_o\ & ((\A[4]~input_o\) # ((\B[3]~input_o\ & \A[3]~input_o\)))) # (!\B[4]~input_o\ & (\A[4]~input_o\ & (\B[3]~input_o\ & \A[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \A[4]~input_o\,
	datac => \B[3]~input_o\,
	datad => \A[3]~input_o\,
	combout => \PrefixNetwork|Gk[1][4]~2_combout\);

-- Location: LCCOMB_X53_Y2_N0
\S~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~20_combout\ = (\S~11_combout\ & (p(2) & (\B[1]~input_o\ $ (\A[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[1]~input_o\,
	datac => \S~11_combout\,
	datad => p(2),
	combout => \S~20_combout\);

-- Location: LCCOMB_X53_Y2_N2
\S~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~14_combout\ = (p(3) & (p(4) & ((\PrefixNetwork|Gk[1][2]~0_combout\) # (\S~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk[1][2]~0_combout\,
	datab => p(3),
	datac => p(4),
	datad => \S~20_combout\,
	combout => \S~14_combout\);

-- Location: LCCOMB_X53_Y2_N26
\S~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~21_combout\ = \A[5]~input_o\ $ (\B[5]~input_o\ $ (((\PrefixNetwork|Gk[1][4]~2_combout\) # (\S~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~input_o\,
	datab => \B[5]~input_o\,
	datac => \PrefixNetwork|Gk[1][4]~2_combout\,
	datad => \S~14_combout\,
	combout => \S~21_combout\);

-- Location: LCCOMB_X53_Y2_N20
\PrefixNetwork|Gk[1][5]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][5]~3_combout\ = (\B[5]~input_o\ & ((\A[5]~input_o\) # ((\B[4]~input_o\ & \A[4]~input_o\)))) # (!\B[5]~input_o\ & (\B[4]~input_o\ & (\A[4]~input_o\ & \A[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \A[4]~input_o\,
	datac => \B[5]~input_o\,
	datad => \A[5]~input_o\,
	combout => \PrefixNetwork|Gk[1][5]~3_combout\);

-- Location: LCCOMB_X54_Y2_N26
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

-- Location: LCCOMB_X53_Y2_N18
\S~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~15_combout\ = (!\PrefixNetwork|Gk[1][5]~3_combout\ & (((!\PrefixNetwork|Gk[1][3]~1_combout\) # (!p(4))) # (!p(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk[1][5]~3_combout\,
	datab => p(5),
	datac => p(4),
	datad => \PrefixNetwork|Gk[1][3]~1_combout\,
	combout => \S~15_combout\);

-- Location: LCCOMB_X54_Y2_N8
\S~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~16_combout\ = (p(5) & (p(4) & (\A[3]~input_o\ $ (\B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \B[3]~input_o\,
	datac => p(5),
	datad => p(4),
	combout => \S~16_combout\);

-- Location: IOIBUF_X60_Y0_N22
\A[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: IOIBUF_X60_Y0_N8
\B[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: LCCOMB_X54_Y2_N14
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

-- Location: LCCOMB_X53_Y2_N28
\S~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~17_combout\ = p(6) $ ((((\S~12_combout\ & \S~16_combout\)) # (!\S~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110010110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S~12_combout\,
	datab => \S~15_combout\,
	datac => \S~16_combout\,
	datad => p(6),
	combout => \S~17_combout\);

-- Location: IOIBUF_X42_Y0_N22
\B[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: IOIBUF_X62_Y0_N22
\A[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: LCCOMB_X54_Y2_N28
\PrefixNetwork|Gk[1][6]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][6]~4_combout\ = (\A[6]~input_o\ & ((\B[6]~input_o\) # ((\A[5]~input_o\ & \B[5]~input_o\)))) # (!\A[6]~input_o\ & (\A[5]~input_o\ & (\B[5]~input_o\ & \B[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~input_o\,
	datab => \B[5]~input_o\,
	datac => \A[6]~input_o\,
	datad => \B[6]~input_o\,
	combout => \PrefixNetwork|Gk[1][6]~4_combout\);

-- Location: LCCOMB_X54_Y2_N18
\c[7]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[7]~2_combout\ = (\PrefixNetwork|Gk[1][6]~4_combout\) # ((\PrefixNetwork|Gk[1][4]~2_combout\ & (p(5) & p(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk[1][4]~2_combout\,
	datab => p(5),
	datac => p(6),
	datad => \PrefixNetwork|Gk[1][6]~4_combout\,
	combout => \c[7]~2_combout\);

-- Location: LCCOMB_X54_Y2_N16
\c[7]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[7]~3_combout\ = (\c[7]~2_combout\) # ((\S~16_combout\ & (p(6) & \c[3]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S~16_combout\,
	datab => p(6),
	datac => \c[3]~1_combout\,
	datad => \c[7]~2_combout\,
	combout => \c[7]~3_combout\);

-- Location: LCCOMB_X54_Y2_N22
\S~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~18_combout\ = \B[7]~input_o\ $ (\A[7]~input_o\ $ (\c[7]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[7]~input_o\,
	datac => \A[7]~input_o\,
	datad => \c[7]~3_combout\,
	combout => \S~18_combout\);

-- Location: LCCOMB_X54_Y2_N4
\PrefixNetwork|Gk[1][7]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][7]~5_combout\ = (\B[7]~input_o\ & ((\A[7]~input_o\) # ((\A[6]~input_o\ & \B[6]~input_o\)))) # (!\B[7]~input_o\ & (\A[6]~input_o\ & (\A[7]~input_o\ & \B[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[7]~input_o\,
	datab => \A[6]~input_o\,
	datac => \A[7]~input_o\,
	datad => \B[6]~input_o\,
	combout => \PrefixNetwork|Gk[1][7]~5_combout\);

-- Location: LCCOMB_X54_Y2_N30
\c~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \c~4_combout\ = (\A[7]~input_o\ & (!\B[7]~input_o\ & (\A[6]~input_o\ $ (\B[6]~input_o\)))) # (!\A[7]~input_o\ & (\B[7]~input_o\ & (\A[6]~input_o\ $ (\B[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datab => \A[6]~input_o\,
	datac => \B[7]~input_o\,
	datad => \B[6]~input_o\,
	combout => \c~4_combout\);

-- Location: LCCOMB_X54_Y2_N24
\c~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \c~5_combout\ = (\c~4_combout\ & (((\S~16_combout\ & \S~12_combout\)) # (!\S~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c~4_combout\,
	datab => \S~16_combout\,
	datac => \S~12_combout\,
	datad => \S~15_combout\,
	combout => \c~5_combout\);

-- Location: LCCOMB_X54_Y2_N10
\c~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \c~6_combout\ = (\PrefixNetwork|Gk[1][7]~5_combout\) # (\c~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|Gk[1][7]~5_combout\,
	datad => \c~5_combout\,
	combout => \c~6_combout\);

-- Location: LCCOMB_X55_Y2_N26
\Ovfl~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Ovfl~0_combout\ = \c[7]~3_combout\ $ (((\PrefixNetwork|Gk[1][7]~5_combout\) # (\c~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PrefixNetwork|Gk[1][7]~5_combout\,
	datac => \c[7]~3_combout\,
	datad => \c~5_combout\,
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


