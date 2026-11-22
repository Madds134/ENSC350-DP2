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

-- DATE "11/21/2026 11:47:10"

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
	A : IN std_logic_vector(15 DOWNTO 0);
	B : IN std_logic_vector(15 DOWNTO 0);
	S : OUT std_logic_vector(15 DOWNTO 0);
	Cin : IN std_logic;
	Cout : OUT std_logic;
	Ovfl : OUT std_logic
	);
END Adder;

-- Design Ports Information
-- S[0]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[1]	=>  Location: PIN_H23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[2]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[3]	=>  Location: PIN_G25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[4]	=>  Location: PIN_G26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[5]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[6]	=>  Location: PIN_C26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[7]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[8]	=>  Location: PIN_B26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[9]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[10]	=>  Location: PIN_A22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[11]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[12]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[13]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[14]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[15]	=>  Location: PIN_C24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cout	=>  Location: PIN_C23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ovfl	=>  Location: PIN_D24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_G24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cin	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_A25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_A26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_C25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_G23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_D23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_B25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_D25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_A23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_B23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_J24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[8]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[9]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_F24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[10]	=>  Location: PIN_F25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[11]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[11]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[12]	=>  Location: PIN_H24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[12]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[13]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[13]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[14]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[14]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[15]	=>  Location: PIN_J23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[15]	=>  Location: PIN_D20,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_A : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_S : std_logic_vector(15 DOWNTO 0);
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
SIGNAL \S[8]~output_o\ : std_logic;
SIGNAL \S[9]~output_o\ : std_logic;
SIGNAL \S[10]~output_o\ : std_logic;
SIGNAL \S[11]~output_o\ : std_logic;
SIGNAL \S[12]~output_o\ : std_logic;
SIGNAL \S[13]~output_o\ : std_logic;
SIGNAL \S[14]~output_o\ : std_logic;
SIGNAL \S[15]~output_o\ : std_logic;
SIGNAL \Cout~output_o\ : std_logic;
SIGNAL \Ovfl~output_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \Cin~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \S~4_combout\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \S~5_combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \c~14_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:gPair[0]~0_combout\ : std_logic;
SIGNAL \S~18_combout\ : std_logic;
SIGNAL \c[3]~15_combout\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \S~6_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|gPair~0_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:gPair[1]~0_combout\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \c~26_combout\ : std_logic;
SIGNAL \S~7_combout\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gpre[4]~0_combout\ : std_logic;
SIGNAL \S~8_combout\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Recur:gPair[2]~0_combout\ : std_logic;
SIGNAL \c~27_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Gpre~0_combout\ : std_logic;
SIGNAL \S~9_combout\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gpre[6]~1_combout\ : std_logic;
SIGNAL \S~10_combout\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \B[8]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Recur:gPair[3]~0_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:gPair[1]~combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:Inner|gPair~0_combout\ : std_logic;
SIGNAL \c~16_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:Inner|gPair~1_combout\ : std_logic;
SIGNAL \S~11_combout\ : std_logic;
SIGNAL \B[9]~input_o\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gpre[8]~2_combout\ : std_logic;
SIGNAL \S~12_combout\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \B[10]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Gpre~1_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:gPair[4]~0_combout\ : std_logic;
SIGNAL \c[10]~17_combout\ : std_logic;
SIGNAL \S~19_combout\ : std_logic;
SIGNAL \c~18_combout\ : std_logic;
SIGNAL \B[11]~input_o\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gpre[10]~3_combout\ : std_logic;
SIGNAL \S~13_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:gPair[5]~0_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:gPair[2]~combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:pPair[2]~0_combout\ : std_logic;
SIGNAL \c[4]~20_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~0_combout\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \B[12]~input_o\ : std_logic;
SIGNAL \c~19_combout\ : std_logic;
SIGNAL \S~14_combout\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \B[13]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gpre[12]~4_combout\ : std_logic;
SIGNAL \S~15_combout\ : std_logic;
SIGNAL \B[14]~input_o\ : std_logic;
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Recur:gPair[6]~0_combout\ : std_logic;
SIGNAL \c~21_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:Inner|Gpre~2_combout\ : std_logic;
SIGNAL \S~16_combout\ : std_logic;
SIGNAL \c~28_combout\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \B[15]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gpre[14]~5_combout\ : std_logic;
SIGNAL \S~17_combout\ : std_logic;
SIGNAL \PrefixNetwork|Recur:gPair[7]~0_combout\ : std_logic;
SIGNAL \c~22_combout\ : std_logic;
SIGNAL \c~23_combout\ : std_logic;
SIGNAL \c~24_combout\ : std_logic;
SIGNAL \c~25_combout\ : std_logic;
SIGNAL \Ovfl~0_combout\ : std_logic;
SIGNAL p : std_logic_vector(15 DOWNTO 0);

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

-- Location: IOOBUF_X85_Y73_N2
\S[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~4_combout\,
	devoe => ww_devoe,
	o => \S[0]~output_o\);

-- Location: IOOBUF_X115_Y65_N16
\S[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~5_combout\,
	devoe => ww_devoe,
	o => \S[1]~output_o\);

-- Location: IOOBUF_X83_Y73_N16
\S[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~18_combout\,
	devoe => ww_devoe,
	o => \S[2]~output_o\);

-- Location: IOOBUF_X115_Y66_N16
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

-- Location: IOOBUF_X115_Y66_N23
\S[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~7_combout\,
	devoe => ww_devoe,
	o => \S[4]~output_o\);

-- Location: IOOBUF_X83_Y73_N2
\S[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~8_combout\,
	devoe => ww_devoe,
	o => \S[5]~output_o\);

-- Location: IOOBUF_X113_Y73_N2
\S[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~9_combout\,
	devoe => ww_devoe,
	o => \S[6]~output_o\);

-- Location: IOOBUF_X111_Y73_N9
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

-- Location: IOOBUF_X113_Y73_N9
\S[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~11_combout\,
	devoe => ww_devoe,
	o => \S[8]~output_o\);

-- Location: IOOBUF_X91_Y73_N16
\S[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~12_combout\,
	devoe => ww_devoe,
	o => \S[9]~output_o\);

-- Location: IOOBUF_X89_Y73_N9
\S[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~19_combout\,
	devoe => ww_devoe,
	o => \S[10]~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\S[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~13_combout\,
	devoe => ww_devoe,
	o => \S[11]~output_o\);

-- Location: IOOBUF_X96_Y73_N23
\S[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~14_combout\,
	devoe => ww_devoe,
	o => \S[12]~output_o\);

-- Location: IOOBUF_X96_Y73_N16
\S[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~15_combout\,
	devoe => ww_devoe,
	o => \S[13]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\S[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~16_combout\,
	devoe => ww_devoe,
	o => \S[14]~output_o\);

-- Location: IOOBUF_X98_Y73_N16
\S[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~17_combout\,
	devoe => ww_devoe,
	o => \S[15]~output_o\);

-- Location: IOOBUF_X100_Y73_N23
\Cout~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \c~25_combout\,
	devoe => ww_devoe,
	o => \Cout~output_o\);

-- Location: IOOBUF_X98_Y73_N23
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

-- Location: IOIBUF_X87_Y73_N1
\A[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X83_Y73_N8
\Cin~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cin,
	o => \Cin~input_o\);

-- Location: IOIBUF_X115_Y69_N22
\B[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: LCCOMB_X87_Y72_N0
\S~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~4_combout\ = \A[0]~input_o\ $ (\Cin~input_o\ $ (\B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[0]~input_o\,
	datac => \Cin~input_o\,
	datad => \B[0]~input_o\,
	combout => \S~4_combout\);

-- Location: IOIBUF_X109_Y73_N8
\A[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: IOIBUF_X109_Y73_N1
\B[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: LCCOMB_X102_Y71_N16
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

-- Location: LCCOMB_X102_Y71_N18
\S~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~5_combout\ = p(1) $ (((\B[0]~input_o\ & ((\A[0]~input_o\) # (\Cin~input_o\))) # (!\B[0]~input_o\ & (\A[0]~input_o\ & \Cin~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[0]~input_o\,
	datac => \Cin~input_o\,
	datad => p(1),
	combout => \S~5_combout\);

-- Location: IOIBUF_X115_Y69_N1
\A[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: IOIBUF_X105_Y73_N8
\B[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: LCCOMB_X102_Y71_N14
\c~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \c~14_combout\ = (\Cin~input_o\ & (p(1) & (\B[0]~input_o\ $ (\A[0]~input_o\))))

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
	combout => \c~14_combout\);

-- Location: LCCOMB_X102_Y71_N0
\PrefixNetwork|Recur:gPair[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:gPair[0]~0_combout\ = (\A[1]~input_o\ & ((\B[1]~input_o\) # ((\B[0]~input_o\ & \A[0]~input_o\)))) # (!\A[1]~input_o\ & (\B[0]~input_o\ & (\B[1]~input_o\ & \A[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[1]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[0]~input_o\,
	combout => \PrefixNetwork|Recur:gPair[0]~0_combout\);

-- Location: LCCOMB_X102_Y71_N28
\S~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~18_combout\ = \A[2]~input_o\ $ (\B[2]~input_o\ $ (((\c~14_combout\) # (\PrefixNetwork|Recur:gPair[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \B[2]~input_o\,
	datac => \c~14_combout\,
	datad => \PrefixNetwork|Recur:gPair[0]~0_combout\,
	combout => \S~18_combout\);

-- Location: LCCOMB_X102_Y71_N22
\c[3]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[3]~15_combout\ = (\A[2]~input_o\ & ((\B[2]~input_o\) # (\PrefixNetwork|Recur:gPair[0]~0_combout\))) # (!\A[2]~input_o\ & (\B[2]~input_o\ & \PrefixNetwork|Recur:gPair[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datac => \B[2]~input_o\,
	datad => \PrefixNetwork|Recur:gPair[0]~0_combout\,
	combout => \c[3]~15_combout\);

-- Location: LCCOMB_X102_Y71_N4
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

-- Location: IOIBUF_X100_Y73_N15
\B[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: IOIBUF_X115_Y69_N15
\A[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: LCCOMB_X102_Y71_N20
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

-- Location: LCCOMB_X102_Y71_N30
\S~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~6_combout\ = p(3) $ (((\c[3]~15_combout\) # ((p(2) & \c~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c[3]~15_combout\,
	datab => p(2),
	datac => \c~14_combout\,
	datad => p(3),
	combout => \S~6_combout\);

-- Location: LCCOMB_X102_Y71_N26
\PrefixNetwork|Recur:Inner|gPair~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|gPair~0_combout\ = (p(2) & (\PrefixNetwork|Recur:gPair[0]~0_combout\ & (\B[3]~input_o\ $ (\A[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \A[3]~input_o\,
	datac => p(2),
	datad => \PrefixNetwork|Recur:gPair[0]~0_combout\,
	combout => \PrefixNetwork|Recur:Inner|gPair~0_combout\);

-- Location: LCCOMB_X102_Y71_N8
\PrefixNetwork|Recur:gPair[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:gPair[1]~0_combout\ = (\B[3]~input_o\ & ((\A[3]~input_o\) # ((\B[2]~input_o\ & \A[2]~input_o\)))) # (!\B[3]~input_o\ & (\A[3]~input_o\ & (\B[2]~input_o\ & \A[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \A[3]~input_o\,
	datac => \B[2]~input_o\,
	datad => \A[2]~input_o\,
	combout => \PrefixNetwork|Recur:gPair[1]~0_combout\);

-- Location: IOIBUF_X107_Y73_N15
\B[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: IOIBUF_X107_Y73_N1
\A[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: LCCOMB_X103_Y71_N8
\p[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(4) = \B[4]~input_o\ $ (\A[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[4]~input_o\,
	datad => \A[4]~input_o\,
	combout => p(4));

-- Location: LCCOMB_X102_Y71_N2
\c~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \c~26_combout\ = (\c~14_combout\ & (p(3) & (\A[2]~input_o\ $ (\B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \B[2]~input_o\,
	datac => \c~14_combout\,
	datad => p(3),
	combout => \c~26_combout\);

-- Location: LCCOMB_X102_Y71_N24
\S~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~7_combout\ = p(4) $ (((\PrefixNetwork|Recur:Inner|gPair~0_combout\) # ((\PrefixNetwork|Recur:gPair[1]~0_combout\) # (\c~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Recur:Inner|gPair~0_combout\,
	datab => \PrefixNetwork|Recur:gPair[1]~0_combout\,
	datac => p(4),
	datad => \c~26_combout\,
	combout => \S~7_combout\);

-- Location: IOIBUF_X107_Y73_N8
\A[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: IOIBUF_X107_Y73_N22
\B[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: LCCOMB_X103_Y71_N4
\p[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(5) = \A[5]~input_o\ $ (\B[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[5]~input_o\,
	datad => \B[5]~input_o\,
	combout => p(5));

-- Location: LCCOMB_X103_Y71_N22
\PrefixNetwork|Gpre[4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gpre[4]~0_combout\ = (\B[4]~input_o\ & ((\A[4]~input_o\) # ((\PrefixNetwork|Recur:Inner|gPair~0_combout\) # (\PrefixNetwork|Recur:gPair[1]~0_combout\)))) # (!\B[4]~input_o\ & (\A[4]~input_o\ & ((\PrefixNetwork|Recur:Inner|gPair~0_combout\) 
-- # (\PrefixNetwork|Recur:gPair[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \A[4]~input_o\,
	datac => \PrefixNetwork|Recur:Inner|gPair~0_combout\,
	datad => \PrefixNetwork|Recur:gPair[1]~0_combout\,
	combout => \PrefixNetwork|Gpre[4]~0_combout\);

-- Location: LCCOMB_X103_Y71_N6
\S~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~8_combout\ = p(5) $ (((\PrefixNetwork|Gpre[4]~0_combout\) # ((p(4) & \c~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(5),
	datab => p(4),
	datac => \PrefixNetwork|Gpre[4]~0_combout\,
	datad => \c~26_combout\,
	combout => \S~8_combout\);

-- Location: IOIBUF_X102_Y73_N1
\B[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: IOIBUF_X105_Y73_N1
\A[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: LCCOMB_X103_Y71_N12
\p[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(6) = \B[6]~input_o\ $ (\A[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[6]~input_o\,
	datad => \A[6]~input_o\,
	combout => p(6));

-- Location: LCCOMB_X103_Y71_N20
\PrefixNetwork|Recur:gPair[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:gPair[2]~0_combout\ = (\B[5]~input_o\ & ((\A[5]~input_o\) # ((\B[4]~input_o\ & \A[4]~input_o\)))) # (!\B[5]~input_o\ & (\B[4]~input_o\ & (\A[5]~input_o\ & \A[4]~input_o\)))

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
	combout => \PrefixNetwork|Recur:gPair[2]~0_combout\);

-- Location: LCCOMB_X103_Y71_N30
\c~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \c~27_combout\ = (p(5) & (\c~26_combout\ & (\B[4]~input_o\ $ (\A[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \A[4]~input_o\,
	datac => p(5),
	datad => \c~26_combout\,
	combout => \c~27_combout\);

-- Location: LCCOMB_X103_Y71_N18
\PrefixNetwork|Recur:Inner|Gpre~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Gpre~0_combout\ = (p(5) & (p(4) & ((\PrefixNetwork|Recur:Inner|gPair~0_combout\) # (\PrefixNetwork|Recur:gPair[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(5),
	datab => p(4),
	datac => \PrefixNetwork|Recur:Inner|gPair~0_combout\,
	datad => \PrefixNetwork|Recur:gPair[1]~0_combout\,
	combout => \PrefixNetwork|Recur:Inner|Gpre~0_combout\);

-- Location: LCCOMB_X103_Y71_N2
\S~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~9_combout\ = p(6) $ (((\PrefixNetwork|Recur:gPair[2]~0_combout\) # ((\c~27_combout\) # (\PrefixNetwork|Recur:Inner|Gpre~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(6),
	datab => \PrefixNetwork|Recur:gPair[2]~0_combout\,
	datac => \c~27_combout\,
	datad => \PrefixNetwork|Recur:Inner|Gpre~0_combout\,
	combout => \S~9_combout\);

-- Location: IOIBUF_X102_Y73_N8
\B[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: IOIBUF_X111_Y73_N1
\A[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: LCCOMB_X103_Y71_N10
\p[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(7) = \B[7]~input_o\ $ (\A[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[7]~input_o\,
	datad => \A[7]~input_o\,
	combout => p(7));

-- Location: LCCOMB_X103_Y71_N0
\PrefixNetwork|Gpre[6]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gpre[6]~1_combout\ = (\B[6]~input_o\ & ((\PrefixNetwork|Recur:gPair[2]~0_combout\) # ((\A[6]~input_o\) # (\PrefixNetwork|Recur:Inner|Gpre~0_combout\)))) # (!\B[6]~input_o\ & (\A[6]~input_o\ & ((\PrefixNetwork|Recur:gPair[2]~0_combout\) # 
-- (\PrefixNetwork|Recur:Inner|Gpre~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[6]~input_o\,
	datab => \PrefixNetwork|Recur:gPair[2]~0_combout\,
	datac => \A[6]~input_o\,
	datad => \PrefixNetwork|Recur:Inner|Gpre~0_combout\,
	combout => \PrefixNetwork|Gpre[6]~1_combout\);

-- Location: LCCOMB_X103_Y71_N16
\S~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~10_combout\ = p(7) $ (((\PrefixNetwork|Gpre[6]~1_combout\) # ((p(6) & \c~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(7),
	datab => p(6),
	datac => \c~27_combout\,
	datad => \PrefixNetwork|Gpre[6]~1_combout\,
	combout => \S~10_combout\);

-- Location: IOIBUF_X115_Y63_N8
\A[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: IOIBUF_X89_Y73_N15
\B[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

-- Location: LCCOMB_X98_Y71_N0
\p[8]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(8) = \A[8]~input_o\ $ (\B[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[8]~input_o\,
	datad => \B[8]~input_o\,
	combout => p(8));

-- Location: LCCOMB_X103_Y71_N24
\PrefixNetwork|Recur:gPair[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:gPair[3]~0_combout\ = (\B[7]~input_o\ & ((\A[7]~input_o\) # ((\B[6]~input_o\ & \A[6]~input_o\)))) # (!\B[7]~input_o\ & (\B[6]~input_o\ & (\A[6]~input_o\ & \A[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[7]~input_o\,
	datab => \B[6]~input_o\,
	datac => \A[6]~input_o\,
	datad => \A[7]~input_o\,
	combout => \PrefixNetwork|Recur:gPair[3]~0_combout\);

-- Location: LCCOMB_X103_Y71_N14
\PrefixNetwork|Recur:Inner|Recur:gPair[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Recur:gPair[1]~combout\ = (\PrefixNetwork|Recur:gPair[3]~0_combout\) # ((p(7) & (\PrefixNetwork|Recur:gPair[2]~0_combout\ & p(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(7),
	datab => \PrefixNetwork|Recur:gPair[2]~0_combout\,
	datac => p(6),
	datad => \PrefixNetwork|Recur:gPair[3]~0_combout\,
	combout => \PrefixNetwork|Recur:Inner|Recur:gPair[1]~combout\);

-- Location: LCCOMB_X103_Y71_N26
\PrefixNetwork|Recur:Inner|Recur:Inner|gPair~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Recur:Inner|gPair~0_combout\ = (p(6) & (p(5) & (p(4) & p(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(6),
	datab => p(5),
	datac => p(4),
	datad => p(7),
	combout => \PrefixNetwork|Recur:Inner|Recur:Inner|gPair~0_combout\);

-- Location: LCCOMB_X102_Y71_N6
\c~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \c~16_combout\ = (p(3) & (p(2) & (\c~14_combout\ & \PrefixNetwork|Recur:Inner|Recur:Inner|gPair~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(3),
	datab => p(2),
	datac => \c~14_combout\,
	datad => \PrefixNetwork|Recur:Inner|Recur:Inner|gPair~0_combout\,
	combout => \c~16_combout\);

-- Location: LCCOMB_X102_Y71_N12
\PrefixNetwork|Recur:Inner|Recur:Inner|gPair~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Recur:Inner|gPair~1_combout\ = (\PrefixNetwork|Recur:Inner|Recur:Inner|gPair~0_combout\ & ((\PrefixNetwork|Recur:gPair[1]~0_combout\) # (\PrefixNetwork|Recur:Inner|gPair~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PrefixNetwork|Recur:gPair[1]~0_combout\,
	datac => \PrefixNetwork|Recur:Inner|gPair~0_combout\,
	datad => \PrefixNetwork|Recur:Inner|Recur:Inner|gPair~0_combout\,
	combout => \PrefixNetwork|Recur:Inner|Recur:Inner|gPair~1_combout\);

-- Location: LCCOMB_X103_Y71_N28
\S~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~11_combout\ = p(8) $ (((\PrefixNetwork|Recur:Inner|Recur:gPair[1]~combout\) # ((\c~16_combout\) # (\PrefixNetwork|Recur:Inner|Recur:Inner|gPair~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(8),
	datab => \PrefixNetwork|Recur:Inner|Recur:gPair[1]~combout\,
	datac => \c~16_combout\,
	datad => \PrefixNetwork|Recur:Inner|Recur:Inner|gPair~1_combout\,
	combout => \S~11_combout\);

-- Location: IOIBUF_X87_Y73_N15
\B[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(9),
	o => \B[9]~input_o\);

-- Location: IOIBUF_X87_Y73_N22
\A[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

-- Location: LCCOMB_X98_Y71_N20
\p[9]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(9) = \B[9]~input_o\ $ (\A[9]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[9]~input_o\,
	datad => \A[9]~input_o\,
	combout => p(9));

-- Location: LCCOMB_X98_Y71_N2
\PrefixNetwork|Gpre[8]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gpre[8]~2_combout\ = (\A[8]~input_o\ & ((\B[8]~input_o\) # ((\PrefixNetwork|Recur:Inner|Recur:Inner|gPair~1_combout\) # (\PrefixNetwork|Recur:Inner|Recur:gPair[1]~combout\)))) # (!\A[8]~input_o\ & (\B[8]~input_o\ & 
-- ((\PrefixNetwork|Recur:Inner|Recur:Inner|gPair~1_combout\) # (\PrefixNetwork|Recur:Inner|Recur:gPair[1]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[8]~input_o\,
	datab => \B[8]~input_o\,
	datac => \PrefixNetwork|Recur:Inner|Recur:Inner|gPair~1_combout\,
	datad => \PrefixNetwork|Recur:Inner|Recur:gPair[1]~combout\,
	combout => \PrefixNetwork|Gpre[8]~2_combout\);

-- Location: LCCOMB_X98_Y71_N30
\S~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~12_combout\ = p(9) $ (((\PrefixNetwork|Gpre[8]~2_combout\) # ((p(8) & \c~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(9),
	datab => p(8),
	datac => \c~16_combout\,
	datad => \PrefixNetwork|Gpre[8]~2_combout\,
	combout => \S~12_combout\);

-- Location: IOIBUF_X115_Y68_N15
\A[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

-- Location: IOIBUF_X115_Y68_N22
\B[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(10),
	o => \B[10]~input_o\);

-- Location: LCCOMB_X98_Y71_N8
\PrefixNetwork|Recur:Inner|Gpre~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Gpre~1_combout\ = (p(9) & (p(8) & ((\PrefixNetwork|Recur:Inner|Recur:Inner|gPair~1_combout\) # (\PrefixNetwork|Recur:Inner|Recur:gPair[1]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(9),
	datab => p(8),
	datac => \PrefixNetwork|Recur:Inner|Recur:Inner|gPair~1_combout\,
	datad => \PrefixNetwork|Recur:Inner|Recur:gPair[1]~combout\,
	combout => \PrefixNetwork|Recur:Inner|Gpre~1_combout\);

-- Location: LCCOMB_X98_Y71_N22
\PrefixNetwork|Recur:gPair[4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:gPair[4]~0_combout\ = (\B[9]~input_o\ & ((\A[9]~input_o\) # ((\A[8]~input_o\ & \B[8]~input_o\)))) # (!\B[9]~input_o\ & (\A[8]~input_o\ & (\B[8]~input_o\ & \A[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[8]~input_o\,
	datab => \B[8]~input_o\,
	datac => \B[9]~input_o\,
	datad => \A[9]~input_o\,
	combout => \PrefixNetwork|Recur:gPair[4]~0_combout\);

-- Location: LCCOMB_X98_Y71_N24
\c[10]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[10]~17_combout\ = (\PrefixNetwork|Recur:gPair[4]~0_combout\) # ((p(9) & (p(8) & \c~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(9),
	datab => p(8),
	datac => \PrefixNetwork|Recur:gPair[4]~0_combout\,
	datad => \c~16_combout\,
	combout => \c[10]~17_combout\);

-- Location: LCCOMB_X98_Y71_N28
\S~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~19_combout\ = \A[10]~input_o\ $ (\B[10]~input_o\ $ (((\PrefixNetwork|Recur:Inner|Gpre~1_combout\) # (\c[10]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[10]~input_o\,
	datab => \B[10]~input_o\,
	datac => \PrefixNetwork|Recur:Inner|Gpre~1_combout\,
	datad => \c[10]~17_combout\,
	combout => \S~19_combout\);

-- Location: LCCOMB_X98_Y71_N6
\p[10]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(10) = \A[10]~input_o\ $ (\B[10]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[10]~input_o\,
	datad => \B[10]~input_o\,
	combout => p(10));

-- Location: LCCOMB_X98_Y71_N12
\c~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \c~18_combout\ = (p(10) & (p(9) & (\B[8]~input_o\ $ (\A[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(10),
	datab => \B[8]~input_o\,
	datac => \A[8]~input_o\,
	datad => p(9),
	combout => \c~18_combout\);

-- Location: IOIBUF_X115_Y67_N15
\B[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(11),
	o => \B[11]~input_o\);

-- Location: IOIBUF_X87_Y73_N8
\A[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(11),
	o => \A[11]~input_o\);

-- Location: LCCOMB_X98_Y71_N16
\p[11]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(11) = \B[11]~input_o\ $ (\A[11]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[11]~input_o\,
	datad => \A[11]~input_o\,
	combout => p(11));

-- Location: LCCOMB_X98_Y71_N18
\PrefixNetwork|Gpre[10]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gpre[10]~3_combout\ = (\B[10]~input_o\ & ((\PrefixNetwork|Recur:gPair[4]~0_combout\) # ((\PrefixNetwork|Recur:Inner|Gpre~1_combout\) # (\A[10]~input_o\)))) # (!\B[10]~input_o\ & (\A[10]~input_o\ & ((\PrefixNetwork|Recur:gPair[4]~0_combout\) 
-- # (\PrefixNetwork|Recur:Inner|Gpre~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Recur:gPair[4]~0_combout\,
	datab => \B[10]~input_o\,
	datac => \PrefixNetwork|Recur:Inner|Gpre~1_combout\,
	datad => \A[10]~input_o\,
	combout => \PrefixNetwork|Gpre[10]~3_combout\);

-- Location: LCCOMB_X98_Y71_N10
\S~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~13_combout\ = p(11) $ (((\PrefixNetwork|Gpre[10]~3_combout\) # ((\c~18_combout\ & \c~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c~18_combout\,
	datab => p(11),
	datac => \c~16_combout\,
	datad => \PrefixNetwork|Gpre[10]~3_combout\,
	combout => \S~13_combout\);

-- Location: LCCOMB_X98_Y71_N4
\PrefixNetwork|Recur:gPair[5]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:gPair[5]~0_combout\ = (\B[11]~input_o\ & ((\A[11]~input_o\) # ((\B[10]~input_o\ & \A[10]~input_o\)))) # (!\B[11]~input_o\ & (\B[10]~input_o\ & (\A[10]~input_o\ & \A[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[11]~input_o\,
	datab => \B[10]~input_o\,
	datac => \A[10]~input_o\,
	datad => \A[11]~input_o\,
	combout => \PrefixNetwork|Recur:gPair[5]~0_combout\);

-- Location: LCCOMB_X98_Y71_N26
\PrefixNetwork|Recur:Inner|Recur:gPair[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Recur:gPair[2]~combout\ = (\PrefixNetwork|Recur:gPair[5]~0_combout\) # ((p(10) & (\PrefixNetwork|Recur:gPair[4]~0_combout\ & p(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(10),
	datab => \PrefixNetwork|Recur:gPair[5]~0_combout\,
	datac => \PrefixNetwork|Recur:gPair[4]~0_combout\,
	datad => p(11),
	combout => \PrefixNetwork|Recur:Inner|Recur:gPair[2]~combout\);

-- Location: LCCOMB_X99_Y71_N28
\PrefixNetwork|Recur:Inner|Recur:pPair[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Recur:pPair[2]~0_combout\ = (p(11) & (p(10) & (p(8) & p(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(11),
	datab => p(10),
	datac => p(8),
	datad => p(9),
	combout => \PrefixNetwork|Recur:Inner|Recur:pPair[2]~0_combout\);

-- Location: LCCOMB_X102_Y71_N10
\c[4]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[4]~20_combout\ = (!\PrefixNetwork|Recur:gPair[1]~0_combout\ & (((!\PrefixNetwork|Recur:gPair[0]~0_combout\) # (!p(2))) # (!p(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(3),
	datab => p(2),
	datac => \PrefixNetwork|Recur:gPair[1]~0_combout\,
	datad => \PrefixNetwork|Recur:gPair[0]~0_combout\,
	combout => \c[4]~20_combout\);

-- Location: LCCOMB_X99_Y71_N16
\PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~0_combout\ = (\PrefixNetwork|Recur:Inner|Recur:pPair[2]~0_combout\ & ((\PrefixNetwork|Recur:Inner|Recur:gPair[1]~combout\) # ((\PrefixNetwork|Recur:Inner|Recur:Inner|gPair~0_combout\ & !\c[4]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Recur:Inner|Recur:gPair[1]~combout\,
	datab => \PrefixNetwork|Recur:Inner|Recur:pPair[2]~0_combout\,
	datac => \PrefixNetwork|Recur:Inner|Recur:Inner|gPair~0_combout\,
	datad => \c[4]~20_combout\,
	combout => \PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~0_combout\);

-- Location: IOIBUF_X115_Y65_N22
\A[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(12),
	o => \A[12]~input_o\);

-- Location: IOIBUF_X89_Y73_N22
\B[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(12),
	o => \B[12]~input_o\);

-- Location: LCCOMB_X99_Y71_N14
\p[12]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(12) = \A[12]~input_o\ $ (\B[12]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[12]~input_o\,
	datad => \B[12]~input_o\,
	combout => p(12));

-- Location: LCCOMB_X99_Y71_N6
\c~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \c~19_combout\ = (\PrefixNetwork|Recur:Inner|Recur:pPair[2]~0_combout\ & \c~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|Recur:Inner|Recur:pPair[2]~0_combout\,
	datad => \c~16_combout\,
	combout => \c~19_combout\);

-- Location: LCCOMB_X99_Y71_N24
\S~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~14_combout\ = p(12) $ (((\PrefixNetwork|Recur:Inner|Recur:gPair[2]~combout\) # ((\PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~0_combout\) # (\c~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Recur:Inner|Recur:gPair[2]~combout\,
	datab => \PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~0_combout\,
	datac => p(12),
	datad => \c~19_combout\,
	combout => \S~14_combout\);

-- Location: IOIBUF_X115_Y64_N8
\A[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(13),
	o => \A[13]~input_o\);

-- Location: IOIBUF_X85_Y73_N8
\B[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(13),
	o => \B[13]~input_o\);

-- Location: LCCOMB_X100_Y71_N12
\p[13]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(13) = \A[13]~input_o\ $ (\B[13]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[13]~input_o\,
	datad => \B[13]~input_o\,
	combout => p(13));

-- Location: LCCOMB_X99_Y71_N30
\PrefixNetwork|Gpre[12]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gpre[12]~4_combout\ = (\A[12]~input_o\ & ((\B[12]~input_o\) # ((\PrefixNetwork|Recur:Inner|Recur:gPair[2]~combout\) # (\PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~0_combout\)))) # (!\A[12]~input_o\ & (\B[12]~input_o\ & 
-- ((\PrefixNetwork|Recur:Inner|Recur:gPair[2]~combout\) # (\PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[12]~input_o\,
	datab => \B[12]~input_o\,
	datac => \PrefixNetwork|Recur:Inner|Recur:gPair[2]~combout\,
	datad => \PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~0_combout\,
	combout => \PrefixNetwork|Gpre[12]~4_combout\);

-- Location: LCCOMB_X99_Y71_N0
\S~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~15_combout\ = p(13) $ (((\PrefixNetwork|Gpre[12]~4_combout\) # ((p(12) & \c~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(13),
	datab => p(12),
	datac => \PrefixNetwork|Gpre[12]~4_combout\,
	datad => \c~19_combout\,
	combout => \S~15_combout\);

-- Location: IOIBUF_X85_Y73_N22
\B[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(14),
	o => \B[14]~input_o\);

-- Location: IOIBUF_X83_Y73_N22
\A[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(14),
	o => \A[14]~input_o\);

-- Location: LCCOMB_X100_Y71_N4
\p[14]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(14) = \B[14]~input_o\ $ (\A[14]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[14]~input_o\,
	datad => \A[14]~input_o\,
	combout => p(14));

-- Location: LCCOMB_X100_Y71_N10
\PrefixNetwork|Recur:gPair[6]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:gPair[6]~0_combout\ = (\A[13]~input_o\ & ((\B[13]~input_o\) # ((\B[12]~input_o\ & \A[12]~input_o\)))) # (!\A[13]~input_o\ & (\B[12]~input_o\ & (\A[12]~input_o\ & \B[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[12]~input_o\,
	datab => \A[13]~input_o\,
	datac => \A[12]~input_o\,
	datad => \B[13]~input_o\,
	combout => \PrefixNetwork|Recur:gPair[6]~0_combout\);

-- Location: LCCOMB_X99_Y71_N26
\c~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \c~21_combout\ = (\PrefixNetwork|Recur:Inner|Recur:pPair[2]~0_combout\ & (p(12) & (p(13) & \c~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Recur:Inner|Recur:pPair[2]~0_combout\,
	datab => p(12),
	datac => p(13),
	datad => \c~16_combout\,
	combout => \c~21_combout\);

-- Location: LCCOMB_X99_Y71_N20
\PrefixNetwork|Recur:Inner|Gpre~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:Inner|Gpre~2_combout\ = (p(12) & (p(13) & ((\PrefixNetwork|Recur:Inner|Recur:gPair[2]~combout\) # (\PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Recur:Inner|Recur:gPair[2]~combout\,
	datab => p(12),
	datac => p(13),
	datad => \PrefixNetwork|Recur:Inner|Recur:Inner|Gpre~0_combout\,
	combout => \PrefixNetwork|Recur:Inner|Gpre~2_combout\);

-- Location: LCCOMB_X99_Y71_N18
\S~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~16_combout\ = p(14) $ (((\PrefixNetwork|Recur:gPair[6]~0_combout\) # ((\c~21_combout\) # (\PrefixNetwork|Recur:Inner|Gpre~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(14),
	datab => \PrefixNetwork|Recur:gPair[6]~0_combout\,
	datac => \c~21_combout\,
	datad => \PrefixNetwork|Recur:Inner|Gpre~2_combout\,
	combout => \S~16_combout\);

-- Location: LCCOMB_X100_Y71_N20
\c~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \c~28_combout\ = (p(14) & (p(13) & (\B[12]~input_o\ $ (\A[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[12]~input_o\,
	datab => \A[12]~input_o\,
	datac => p(14),
	datad => p(13),
	combout => \c~28_combout\);

-- Location: IOIBUF_X115_Y63_N1
\A[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(15),
	o => \A[15]~input_o\);

-- Location: IOIBUF_X85_Y73_N15
\B[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(15),
	o => \B[15]~input_o\);

-- Location: LCCOMB_X100_Y71_N18
\p[15]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(15) = \A[15]~input_o\ $ (\B[15]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[15]~input_o\,
	datad => \B[15]~input_o\,
	combout => p(15));

-- Location: LCCOMB_X99_Y71_N4
\PrefixNetwork|Gpre[14]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gpre[14]~5_combout\ = (\A[14]~input_o\ & ((\B[14]~input_o\) # ((\PrefixNetwork|Recur:gPair[6]~0_combout\) # (\PrefixNetwork|Recur:Inner|Gpre~2_combout\)))) # (!\A[14]~input_o\ & (\B[14]~input_o\ & ((\PrefixNetwork|Recur:gPair[6]~0_combout\) 
-- # (\PrefixNetwork|Recur:Inner|Gpre~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[14]~input_o\,
	datab => \B[14]~input_o\,
	datac => \PrefixNetwork|Recur:gPair[6]~0_combout\,
	datad => \PrefixNetwork|Recur:Inner|Gpre~2_combout\,
	combout => \PrefixNetwork|Gpre[14]~5_combout\);

-- Location: LCCOMB_X99_Y71_N22
\S~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~17_combout\ = p(15) $ (((\PrefixNetwork|Gpre[14]~5_combout\) # ((\c~28_combout\ & \c~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c~28_combout\,
	datab => p(15),
	datac => \PrefixNetwork|Gpre[14]~5_combout\,
	datad => \c~19_combout\,
	combout => \S~17_combout\);

-- Location: LCCOMB_X100_Y71_N28
\PrefixNetwork|Recur:gPair[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Recur:gPair[7]~0_combout\ = (\A[15]~input_o\ & ((\B[15]~input_o\) # ((\A[14]~input_o\ & \B[14]~input_o\)))) # (!\A[15]~input_o\ & (\A[14]~input_o\ & (\B[14]~input_o\ & \B[15]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[14]~input_o\,
	datab => \B[14]~input_o\,
	datac => \A[15]~input_o\,
	datad => \B[15]~input_o\,
	combout => \PrefixNetwork|Recur:gPair[7]~0_combout\);

-- Location: LCCOMB_X100_Y71_N30
\c~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \c~22_combout\ = (\PrefixNetwork|Recur:gPair[7]~0_combout\) # ((\PrefixNetwork|Recur:gPair[6]~0_combout\ & (p(15) & p(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Recur:gPair[6]~0_combout\,
	datab => p(15),
	datac => p(14),
	datad => \PrefixNetwork|Recur:gPair[7]~0_combout\,
	combout => \c~22_combout\);

-- Location: LCCOMB_X99_Y71_N8
\c~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \c~23_combout\ = (\PrefixNetwork|Recur:Inner|Recur:gPair[2]~combout\) # ((\PrefixNetwork|Recur:Inner|Recur:pPair[2]~0_combout\ & \PrefixNetwork|Recur:Inner|Recur:gPair[1]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PrefixNetwork|Recur:Inner|Recur:pPair[2]~0_combout\,
	datac => \PrefixNetwork|Recur:Inner|Recur:gPair[2]~combout\,
	datad => \PrefixNetwork|Recur:Inner|Recur:gPair[1]~combout\,
	combout => \c~23_combout\);

-- Location: LCCOMB_X99_Y71_N2
\c~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \c~24_combout\ = (\c~23_combout\) # ((\PrefixNetwork|Recur:Inner|Recur:pPair[2]~0_combout\ & ((\PrefixNetwork|Recur:Inner|Recur:Inner|gPair~1_combout\) # (\c~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Recur:Inner|Recur:pPair[2]~0_combout\,
	datab => \PrefixNetwork|Recur:Inner|Recur:Inner|gPair~1_combout\,
	datac => \c~23_combout\,
	datad => \c~16_combout\,
	combout => \c~24_combout\);

-- Location: LCCOMB_X99_Y71_N12
\c~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \c~25_combout\ = (\c~22_combout\) # ((\c~28_combout\ & (p(15) & \c~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c~28_combout\,
	datab => p(15),
	datac => \c~22_combout\,
	datad => \c~24_combout\,
	combout => \c~25_combout\);

-- Location: LCCOMB_X99_Y71_N10
\Ovfl~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Ovfl~0_combout\ = \c~25_combout\ $ (((\PrefixNetwork|Gpre[14]~5_combout\) # ((\c~19_combout\ & \c~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c~19_combout\,
	datab => \c~28_combout\,
	datac => \PrefixNetwork|Gpre[14]~5_combout\,
	datad => \c~25_combout\,
	combout => \Ovfl~0_combout\);

ww_S(0) <= \S[0]~output_o\;

ww_S(1) <= \S[1]~output_o\;

ww_S(2) <= \S[2]~output_o\;

ww_S(3) <= \S[3]~output_o\;

ww_S(4) <= \S[4]~output_o\;

ww_S(5) <= \S[5]~output_o\;

ww_S(6) <= \S[6]~output_o\;

ww_S(7) <= \S[7]~output_o\;

ww_S(8) <= \S[8]~output_o\;

ww_S(9) <= \S[9]~output_o\;

ww_S(10) <= \S[10]~output_o\;

ww_S(11) <= \S[11]~output_o\;

ww_S(12) <= \S[12]~output_o\;

ww_S(13) <= \S[13]~output_o\;

ww_S(14) <= \S[14]~output_o\;

ww_S(15) <= \S[15]~output_o\;

ww_Cout <= \Cout~output_o\;

ww_Ovfl <= \Ovfl~output_o\;
END structure;


