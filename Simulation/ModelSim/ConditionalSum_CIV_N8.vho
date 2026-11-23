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

-- DATE "11/21/2026 11:30:18"

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
-- S[0]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[1]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[2]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[3]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[4]	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[5]	=>  Location: PIN_AC11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[6]	=>  Location: PIN_AE14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[7]	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cout	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ovfl	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_AG12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_AH12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cin	=>  Location: PIN_AD14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_Y12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_AC15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_AE15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_AF15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_AD15,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \S~1_combout\ : std_logic;
SIGNAL \S~2_combout\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|carry1[1]~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|carry0[1]~0_combout\ : std_logic;
SIGNAL \c[2]~0_combout\ : std_logic;
SIGNAL \S~3_combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \S~4_combout\ : std_logic;
SIGNAL \S~5_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\ : std_logic;
SIGNAL \c[4]~1_combout\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\ : std_logic;
SIGNAL \c[4]~2_combout\ : std_logic;
SIGNAL \S~6_combout\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \c[5]~3_combout\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \S~7_combout\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \c[6]~4_combout\ : std_logic;
SIGNAL \c[6]~5_combout\ : std_logic;
SIGNAL \S~8_combout\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \S~9_combout\ : std_logic;
SIGNAL \S~10_combout\ : std_logic;
SIGNAL \c~6_combout\ : std_logic;
SIGNAL \c~7_combout\ : std_logic;
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

-- Location: IOOBUF_X65_Y0_N9
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

-- Location: IOOBUF_X62_Y0_N23
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

-- Location: IOOBUF_X45_Y0_N16
\S[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~3_combout\,
	devoe => ww_devoe,
	o => \S[2]~output_o\);

-- Location: IOOBUF_X47_Y0_N2
\S[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~5_combout\,
	devoe => ww_devoe,
	o => \S[3]~output_o\);

-- Location: IOOBUF_X49_Y0_N16
\S[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~6_combout\,
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
	i => \S~7_combout\,
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
	i => \S~8_combout\,
	devoe => ww_devoe,
	o => \S[6]~output_o\);

-- Location: IOOBUF_X56_Y0_N23
\S[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~10_combout\,
	devoe => ww_devoe,
	o => \S[7]~output_o\);

-- Location: IOOBUF_X54_Y0_N16
\Cout~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \c~7_combout\,
	devoe => ww_devoe,
	o => \Cout~output_o\);

-- Location: IOOBUF_X52_Y0_N9
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

-- Location: IOIBUF_X54_Y0_N8
\A[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X56_Y0_N15
\Cin~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cin,
	o => \Cin~input_o\);

-- Location: IOIBUF_X54_Y0_N1
\B[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: LCCOMB_X55_Y1_N12
\S~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~0_combout\ = \A[0]~input_o\ $ (\Cin~input_o\ $ (\B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[0]~input_o\,
	datac => \Cin~input_o\,
	datad => \B[0]~input_o\,
	combout => \S~0_combout\);

-- Location: IOIBUF_X56_Y0_N1
\B[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: IOIBUF_X54_Y0_N22
\A[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: LCCOMB_X55_Y1_N18
\S~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~1_combout\ = \A[1]~input_o\ $ (((\A[0]~input_o\ & ((\Cin~input_o\) # (\B[0]~input_o\))) # (!\A[0]~input_o\ & (\Cin~input_o\ & \B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \A[0]~input_o\,
	datac => \Cin~input_o\,
	datad => \B[0]~input_o\,
	combout => \S~1_combout\);

-- Location: LCCOMB_X55_Y1_N4
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

-- Location: IOIBUF_X52_Y0_N22
\B[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: IOIBUF_X56_Y0_N8
\A[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: LCCOMB_X53_Y1_N24
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|carry1[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|carry1[1]~0_combout\ = (\A[1]~input_o\ & ((\B[0]~input_o\) # ((\A[0]~input_o\) # (\B[1]~input_o\)))) # (!\A[1]~input_o\ & (\B[1]~input_o\ & ((\B[0]~input_o\) # (\A[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[0]~input_o\,
	datac => \A[1]~input_o\,
	datad => \B[1]~input_o\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|carry1[1]~0_combout\);

-- Location: LCCOMB_X53_Y1_N18
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|carry0[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|carry0[1]~0_combout\ = (\A[1]~input_o\ & ((\B[1]~input_o\) # ((\B[0]~input_o\ & \A[0]~input_o\)))) # (!\A[1]~input_o\ & (\B[0]~input_o\ & (\A[0]~input_o\ & \B[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[0]~input_o\,
	datac => \A[1]~input_o\,
	datad => \B[1]~input_o\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|carry0[1]~0_combout\);

-- Location: LCCOMB_X52_Y1_N12
\c[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[2]~0_combout\ = (\Cin~input_o\ & (\CarryNetwork|Recur:LowHalf|Recur:LowHalf|carry1[1]~0_combout\)) # (!\Cin~input_o\ & ((\CarryNetwork|Recur:LowHalf|Recur:LowHalf|carry0[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cin~input_o\,
	datab => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|carry1[1]~0_combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|carry0[1]~0_combout\,
	combout => \c[2]~0_combout\);

-- Location: LCCOMB_X52_Y1_N10
\S~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~3_combout\ = \B[2]~input_o\ $ (\A[2]~input_o\ $ (\c[2]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[2]~input_o\,
	datac => \A[2]~input_o\,
	datad => \c[2]~0_combout\,
	combout => \S~3_combout\);

-- Location: IOIBUF_X52_Y0_N1
\A[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: IOIBUF_X52_Y0_N15
\B[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: LCCOMB_X52_Y1_N4
\S~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~4_combout\ = \A[3]~input_o\ $ (\B[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[3]~input_o\,
	datad => \B[3]~input_o\,
	combout => \S~4_combout\);

-- Location: LCCOMB_X52_Y1_N2
\S~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~5_combout\ = \S~4_combout\ $ (((\A[2]~input_o\ & ((\B[2]~input_o\) # (\c[2]~0_combout\))) # (!\A[2]~input_o\ & (\B[2]~input_o\ & \c[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \B[2]~input_o\,
	datac => \S~4_combout\,
	datad => \c[2]~0_combout\,
	combout => \S~5_combout\);

-- Location: LCCOMB_X53_Y1_N4
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|carry1[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\ = (\A[3]~input_o\ & ((\B[2]~input_o\) # ((\B[3]~input_o\) # (\A[2]~input_o\)))) # (!\A[3]~input_o\ & (\B[3]~input_o\ & ((\B[2]~input_o\) # (\A[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \B[2]~input_o\,
	datac => \B[3]~input_o\,
	datad => \A[2]~input_o\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\);

-- Location: LCCOMB_X53_Y1_N22
\c[4]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[4]~1_combout\ = (\CarryNetwork|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\ & ((\Cin~input_o\ & (\CarryNetwork|Recur:LowHalf|Recur:LowHalf|carry1[1]~0_combout\)) # (!\Cin~input_o\ & 
-- ((\CarryNetwork|Recur:LowHalf|Recur:LowHalf|carry0[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cin~input_o\,
	datab => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|carry1[1]~0_combout\,
	datac => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|carry0[1]~0_combout\,
	combout => \c[4]~1_combout\);

-- Location: IOIBUF_X49_Y0_N1
\B[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: IOIBUF_X47_Y0_N8
\A[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: LCCOMB_X53_Y1_N8
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|carry0[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\ = (\A[3]~input_o\ & ((\B[3]~input_o\) # ((\B[2]~input_o\ & \A[2]~input_o\)))) # (!\A[3]~input_o\ & (\B[2]~input_o\ & (\B[3]~input_o\ & \A[2]~input_o\)))

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
	combout => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\);

-- Location: LCCOMB_X53_Y1_N10
\c[4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[4]~2_combout\ = (\CarryNetwork|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\ & ((\Cin~input_o\ & ((!\CarryNetwork|Recur:LowHalf|Recur:LowHalf|carry1[1]~0_combout\))) # (!\Cin~input_o\ & 
-- (!\CarryNetwork|Recur:LowHalf|Recur:LowHalf|carry0[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cin~input_o\,
	datab => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|carry0[1]~0_combout\,
	datac => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|carry1[1]~0_combout\,
	combout => \c[4]~2_combout\);

-- Location: LCCOMB_X53_Y1_N20
\S~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~6_combout\ = \B[4]~input_o\ $ (\A[4]~input_o\ $ (((\c[4]~1_combout\) # (\c[4]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c[4]~1_combout\,
	datab => \B[4]~input_o\,
	datac => \A[4]~input_o\,
	datad => \c[4]~2_combout\,
	combout => \S~6_combout\);

-- Location: IOIBUF_X45_Y0_N22
\B[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: LCCOMB_X53_Y1_N14
\c[5]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[5]~3_combout\ = (\A[4]~input_o\ & ((\B[4]~input_o\) # ((\c[4]~1_combout\) # (\c[4]~2_combout\)))) # (!\A[4]~input_o\ & (\B[4]~input_o\ & ((\c[4]~1_combout\) # (\c[4]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datab => \B[4]~input_o\,
	datac => \c[4]~1_combout\,
	datad => \c[4]~2_combout\,
	combout => \c[5]~3_combout\);

-- Location: IOIBUF_X60_Y0_N22
\A[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: LCCOMB_X53_Y1_N16
\S~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~7_combout\ = \B[5]~input_o\ $ (\c[5]~3_combout\ $ (\A[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datac => \c[5]~3_combout\,
	datad => \A[5]~input_o\,
	combout => \S~7_combout\);

-- Location: IOIBUF_X60_Y0_N1
\B[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: IOIBUF_X60_Y0_N8
\A[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: LCCOMB_X53_Y1_N2
\c[6]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[6]~4_combout\ = (\A[4]~input_o\ & ((\B[4]~input_o\) # ((\c[4]~1_combout\) # (\c[4]~2_combout\)))) # (!\A[4]~input_o\ & (\B[4]~input_o\ & ((\c[4]~1_combout\) # (\c[4]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datab => \B[4]~input_o\,
	datac => \c[4]~1_combout\,
	datad => \c[4]~2_combout\,
	combout => \c[6]~4_combout\);

-- Location: LCCOMB_X53_Y1_N0
\c[6]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[6]~5_combout\ = (\A[5]~input_o\ & ((\B[5]~input_o\) # (\c[6]~4_combout\))) # (!\A[5]~input_o\ & (\B[5]~input_o\ & \c[6]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[5]~input_o\,
	datac => \B[5]~input_o\,
	datad => \c[6]~4_combout\,
	combout => \c[6]~5_combout\);

-- Location: LCCOMB_X53_Y1_N26
\S~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~8_combout\ = \B[6]~input_o\ $ (\A[6]~input_o\ $ (\c[6]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[6]~input_o\,
	datac => \A[6]~input_o\,
	datad => \c[6]~5_combout\,
	combout => \S~8_combout\);

-- Location: IOIBUF_X62_Y0_N15
\A[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: IOIBUF_X60_Y0_N15
\B[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: LCCOMB_X61_Y1_N16
\S~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~9_combout\ = \A[7]~input_o\ $ (\B[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[7]~input_o\,
	datad => \B[7]~input_o\,
	combout => \S~9_combout\);

-- Location: LCCOMB_X53_Y1_N12
\S~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~10_combout\ = \S~9_combout\ $ (((\A[6]~input_o\ & ((\B[6]~input_o\) # (\c[6]~5_combout\))) # (!\A[6]~input_o\ & (\B[6]~input_o\ & \c[6]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datab => \B[6]~input_o\,
	datac => \S~9_combout\,
	datad => \c[6]~5_combout\,
	combout => \S~10_combout\);

-- Location: LCCOMB_X53_Y1_N6
\c~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \c~6_combout\ = (\B[6]~input_o\ & ((\A[6]~input_o\) # (\c[6]~5_combout\))) # (!\B[6]~input_o\ & (\A[6]~input_o\ & \c[6]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[6]~input_o\,
	datac => \A[6]~input_o\,
	datad => \c[6]~5_combout\,
	combout => \c~6_combout\);

-- Location: LCCOMB_X53_Y1_N28
\c~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \c~7_combout\ = (\A[7]~input_o\ & ((\B[7]~input_o\) # (\c~6_combout\))) # (!\A[7]~input_o\ & (\B[7]~input_o\ & \c~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datac => \B[7]~input_o\,
	datad => \c~6_combout\,
	combout => \c~7_combout\);

-- Location: LCCOMB_X53_Y1_N30
\Ovfl~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Ovfl~0_combout\ = \c~7_combout\ $ (((\A[6]~input_o\ & ((\B[6]~input_o\) # (\c[6]~5_combout\))) # (!\A[6]~input_o\ & (\B[6]~input_o\ & \c[6]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datab => \B[6]~input_o\,
	datac => \c[6]~5_combout\,
	datad => \c~7_combout\,
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


