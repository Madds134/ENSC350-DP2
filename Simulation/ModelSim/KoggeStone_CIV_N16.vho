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

-- DATE "11/21/2026 11:48:43"

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
-- S[0]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[1]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[2]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[3]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[4]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[5]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[6]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[7]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[8]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[9]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[10]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[11]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[12]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[13]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[14]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[15]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cout	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ovfl	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cin	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[8]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[9]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[10]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[11]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[11]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[12]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[12]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[13]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[13]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[14]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[14]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[15]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[15]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \Cin~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \S~2_combout\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \S~3_combout\ : std_logic;
SIGNAL \c[3]~0_combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gpre[1]~0_combout\ : std_logic;
SIGNAL \S~4_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][2]~0_combout\ : std_logic;
SIGNAL \c[3]~2_combout\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \c[3]~1_combout\ : std_logic;
SIGNAL \S~5_combout\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][3]~1_combout\ : std_logic;
SIGNAL \PrefixNetwork|Pk[2][4]~4_combout\ : std_logic;
SIGNAL \c[4]~3_combout\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \S~36_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][4]~2_combout\ : std_logic;
SIGNAL \c[5]~5_combout\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \c[5]~4_combout\ : std_logic;
SIGNAL \S~6_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~3_combout\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][5]~4_combout\ : std_logic;
SIGNAL \c[6]~6_combout\ : std_logic;
SIGNAL \S~7_combout\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][6]~5_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gpre[6]~1_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~6_combout\ : std_logic;
SIGNAL \PrefixNetwork|Pk[2][6]~11_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gpre[6]~2_combout\ : std_logic;
SIGNAL \c~7_combout\ : std_logic;
SIGNAL \c~8_combout\ : std_logic;
SIGNAL \S~8_combout\ : std_logic;
SIGNAL \B[8]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Pk[2][7]~5_combout\ : std_logic;
SIGNAL \c~9_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~8_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][7]~7_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gpre[7]~3_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gpre[7]~4_combout\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \S~9_combout\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \B[9]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][8]~9_combout\ : std_logic;
SIGNAL \PrefixNetwork|Pk[2][8]~6_combout\ : std_logic;
SIGNAL \S~10_combout\ : std_logic;
SIGNAL \PrefixNetwork|Pk[2][8]~7_combout\ : std_logic;
SIGNAL \S~11_combout\ : std_logic;
SIGNAL \S~12_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][9]~10_combout\ : std_logic;
SIGNAL \B[10]~input_o\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Pk[2][9]~8_combout\ : std_logic;
SIGNAL \S~14_combout\ : std_logic;
SIGNAL \PrefixNetwork|Pk[2][9]~9_combout\ : std_logic;
SIGNAL \S~13_combout\ : std_logic;
SIGNAL \S~15_combout\ : std_logic;
SIGNAL \B[11]~input_o\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gk~11_combout\ : std_logic;
SIGNAL \c[3]~10_combout\ : std_logic;
SIGNAL \PrefixNetwork|Pk[2][10]~10_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][10]~12_combout\ : std_logic;
SIGNAL \S~16_combout\ : std_logic;
SIGNAL \S~17_combout\ : std_logic;
SIGNAL \S~18_combout\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \B[12]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gk~13_combout\ : std_logic;
SIGNAL \S~21_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][11]~14_combout\ : std_logic;
SIGNAL \S~19_combout\ : std_logic;
SIGNAL \S~20_combout\ : std_logic;
SIGNAL \S~22_combout\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \B[13]~input_o\ : std_logic;
SIGNAL \S~23_combout\ : std_logic;
SIGNAL \S~24_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][12]~15_combout\ : std_logic;
SIGNAL \S~25_combout\ : std_logic;
SIGNAL \S~26_combout\ : std_logic;
SIGNAL \S~27_combout\ : std_logic;
SIGNAL \S~28_combout\ : std_logic;
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \B[14]~input_o\ : std_logic;
SIGNAL \S~29_combout\ : std_logic;
SIGNAL \S~31_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][13]~16_combout\ : std_logic;
SIGNAL \S~32_combout\ : std_logic;
SIGNAL \S~33_combout\ : std_logic;
SIGNAL \S~30_combout\ : std_logic;
SIGNAL \S~34_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~17_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~18_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~19_combout\ : std_logic;
SIGNAL \c[15]~11_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][14]~20_combout\ : std_logic;
SIGNAL \c[15]~12_combout\ : std_logic;
SIGNAL \c[15]~13_combout\ : std_logic;
SIGNAL \B[15]~input_o\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \S~35_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~27_combout\ : std_logic;
SIGNAL \c~15_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~25_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~26_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~23_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~22_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~24_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][15]~21_combout\ : std_logic;
SIGNAL \c~14_combout\ : std_logic;
SIGNAL \c~16_combout\ : std_logic;
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

-- Location: IOOBUF_X74_Y73_N23
\S[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~2_combout\,
	devoe => ww_devoe,
	o => \S[0]~output_o\);

-- Location: IOOBUF_X74_Y73_N16
\S[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~3_combout\,
	devoe => ww_devoe,
	o => \S[1]~output_o\);

-- Location: IOOBUF_X79_Y73_N2
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

-- Location: IOOBUF_X81_Y73_N23
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

-- Location: IOOBUF_X81_Y73_N16
\S[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~36_combout\,
	devoe => ww_devoe,
	o => \S[4]~output_o\);

-- Location: IOOBUF_X38_Y73_N2
\S[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~6_combout\,
	devoe => ww_devoe,
	o => \S[5]~output_o\);

-- Location: IOOBUF_X38_Y73_N9
\S[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~7_combout\,
	devoe => ww_devoe,
	o => \S[6]~output_o\);

-- Location: IOOBUF_X40_Y73_N2
\S[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~8_combout\,
	devoe => ww_devoe,
	o => \S[7]~output_o\);

-- Location: IOOBUF_X65_Y73_N23
\S[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~9_combout\,
	devoe => ww_devoe,
	o => \S[8]~output_o\);

-- Location: IOOBUF_X42_Y73_N9
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

-- Location: IOOBUF_X47_Y73_N2
\S[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~15_combout\,
	devoe => ww_devoe,
	o => \S[10]~output_o\);

-- Location: IOOBUF_X67_Y73_N2
\S[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~18_combout\,
	devoe => ww_devoe,
	o => \S[11]~output_o\);

-- Location: IOOBUF_X52_Y73_N2
\S[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~22_combout\,
	devoe => ww_devoe,
	o => \S[12]~output_o\);

-- Location: IOOBUF_X54_Y73_N9
\S[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~28_combout\,
	devoe => ww_devoe,
	o => \S[13]~output_o\);

-- Location: IOOBUF_X54_Y73_N2
\S[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~34_combout\,
	devoe => ww_devoe,
	o => \S[14]~output_o\);

-- Location: IOOBUF_X58_Y73_N9
\S[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~35_combout\,
	devoe => ww_devoe,
	o => \S[15]~output_o\);

-- Location: IOOBUF_X62_Y73_N23
\Cout~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \c~16_combout\,
	devoe => ww_devoe,
	o => \Cout~output_o\);

-- Location: IOOBUF_X60_Y73_N23
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

-- Location: IOIBUF_X72_Y73_N15
\Cin~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cin,
	o => \Cin~input_o\);

-- Location: IOIBUF_X69_Y73_N15
\B[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X69_Y73_N22
\A[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: LCCOMB_X70_Y71_N4
\S~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~2_combout\ = \Cin~input_o\ $ (\B[0]~input_o\ $ (\A[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cin~input_o\,
	datac => \B[0]~input_o\,
	datad => \A[0]~input_o\,
	combout => \S~2_combout\);

-- Location: IOIBUF_X65_Y73_N15
\A[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: IOIBUF_X65_Y73_N8
\B[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: LCCOMB_X61_Y71_N24
\p[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(1) = \A[1]~input_o\ $ (\B[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datad => \B[1]~input_o\,
	combout => p(1));

-- Location: LCCOMB_X70_Y71_N30
\S~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~3_combout\ = p(1) $ (((\Cin~input_o\ & ((\A[0]~input_o\) # (\B[0]~input_o\))) # (!\Cin~input_o\ & (\A[0]~input_o\ & \B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cin~input_o\,
	datab => \A[0]~input_o\,
	datac => \B[0]~input_o\,
	datad => p(1),
	combout => \S~3_combout\);

-- Location: LCCOMB_X61_Y71_N6
\c[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[3]~0_combout\ = (\Cin~input_o\ & (\A[0]~input_o\ $ (\B[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[0]~input_o\,
	datac => \Cin~input_o\,
	datad => \B[0]~input_o\,
	combout => \c[3]~0_combout\);

-- Location: IOIBUF_X60_Y73_N15
\A[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: IOIBUF_X62_Y73_N15
\B[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: LCCOMB_X62_Y71_N12
\p[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(2) = \A[2]~input_o\ $ (\B[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[2]~input_o\,
	datad => \B[2]~input_o\,
	combout => p(2));

-- Location: LCCOMB_X61_Y71_N8
\PrefixNetwork|Gpre[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gpre[1]~0_combout\ = (\A[1]~input_o\ & ((\B[1]~input_o\) # ((\B[0]~input_o\ & \A[0]~input_o\)))) # (!\A[1]~input_o\ & (\B[1]~input_o\ & (\B[0]~input_o\ & \A[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \B[1]~input_o\,
	datac => \B[0]~input_o\,
	datad => \A[0]~input_o\,
	combout => \PrefixNetwork|Gpre[1]~0_combout\);

-- Location: LCCOMB_X61_Y71_N30
\S~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~4_combout\ = p(2) $ (((\PrefixNetwork|Gpre[1]~0_combout\) # ((\c[3]~0_combout\ & p(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c[3]~0_combout\,
	datab => p(1),
	datac => p(2),
	datad => \PrefixNetwork|Gpre[1]~0_combout\,
	combout => \S~4_combout\);

-- Location: LCCOMB_X59_Y71_N10
\PrefixNetwork|Gk[1][2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][2]~0_combout\ = (\B[2]~input_o\ & ((\A[2]~input_o\) # ((\A[1]~input_o\ & \B[1]~input_o\)))) # (!\B[2]~input_o\ & (\A[2]~input_o\ & (\A[1]~input_o\ & \B[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \A[2]~input_o\,
	datac => \A[1]~input_o\,
	datad => \B[1]~input_o\,
	combout => \PrefixNetwork|Gk[1][2]~0_combout\);

-- Location: LCCOMB_X59_Y71_N20
\c[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[3]~2_combout\ = (\B[2]~input_o\ & (!\A[2]~input_o\ & (\A[1]~input_o\ $ (\B[1]~input_o\)))) # (!\B[2]~input_o\ & (\A[2]~input_o\ & (\A[1]~input_o\ $ (\B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \A[2]~input_o\,
	datac => \A[1]~input_o\,
	datad => \B[1]~input_o\,
	combout => \c[3]~2_combout\);

-- Location: IOIBUF_X60_Y73_N1
\B[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: IOIBUF_X60_Y73_N8
\A[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: LCCOMB_X59_Y71_N0
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

-- Location: LCCOMB_X68_Y71_N20
\c[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[3]~1_combout\ = (\B[0]~input_o\ & ((\Cin~input_o\) # (\A[0]~input_o\))) # (!\B[0]~input_o\ & (\Cin~input_o\ & \A[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[0]~input_o\,
	datac => \Cin~input_o\,
	datad => \A[0]~input_o\,
	combout => \c[3]~1_combout\);

-- Location: LCCOMB_X59_Y71_N30
\S~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~5_combout\ = p(3) $ (((\PrefixNetwork|Gk[1][2]~0_combout\) # ((\c[3]~2_combout\ & \c[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk[1][2]~0_combout\,
	datab => \c[3]~2_combout\,
	datac => p(3),
	datad => \c[3]~1_combout\,
	combout => \S~5_combout\);

-- Location: IOIBUF_X45_Y73_N8
\B[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: LCCOMB_X61_Y71_N4
\PrefixNetwork|Gk[1][3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][3]~1_combout\ = (\A[3]~input_o\ & ((\B[3]~input_o\) # ((\B[2]~input_o\ & \A[2]~input_o\)))) # (!\A[3]~input_o\ & (\B[2]~input_o\ & (\A[2]~input_o\ & \B[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \B[2]~input_o\,
	datac => \A[2]~input_o\,
	datad => \B[3]~input_o\,
	combout => \PrefixNetwork|Gk[1][3]~1_combout\);

-- Location: LCCOMB_X61_Y71_N10
\PrefixNetwork|Pk[2][4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[2][4]~4_combout\ = (\A[3]~input_o\ & (!\B[3]~input_o\ & (\B[2]~input_o\ $ (\A[2]~input_o\)))) # (!\A[3]~input_o\ & (\B[3]~input_o\ & (\B[2]~input_o\ $ (\A[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \B[2]~input_o\,
	datac => \A[2]~input_o\,
	datad => \B[3]~input_o\,
	combout => \PrefixNetwork|Pk[2][4]~4_combout\);

-- Location: LCCOMB_X61_Y71_N16
\c[4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[4]~3_combout\ = (\PrefixNetwork|Pk[2][4]~4_combout\ & ((\PrefixNetwork|Gpre[1]~0_combout\) # ((p(1) & \c[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Pk[2][4]~4_combout\,
	datab => p(1),
	datac => \PrefixNetwork|Gpre[1]~0_combout\,
	datad => \c[3]~0_combout\,
	combout => \c[4]~3_combout\);

-- Location: IOIBUF_X72_Y73_N8
\A[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: LCCOMB_X62_Y71_N22
\S~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~36_combout\ = \B[4]~input_o\ $ (\A[4]~input_o\ $ (((\PrefixNetwork|Gk[1][3]~1_combout\) # (\c[4]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \PrefixNetwork|Gk[1][3]~1_combout\,
	datac => \c[4]~3_combout\,
	datad => \A[4]~input_o\,
	combout => \S~36_combout\);

-- Location: LCCOMB_X58_Y71_N4
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

-- Location: LCCOMB_X59_Y71_N4
\PrefixNetwork|Gk[1][4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][4]~2_combout\ = (\B[4]~input_o\ & ((\A[4]~input_o\) # ((\B[3]~input_o\ & \A[3]~input_o\)))) # (!\B[4]~input_o\ & (\B[3]~input_o\ & (\A[4]~input_o\ & \A[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \B[3]~input_o\,
	datac => \A[4]~input_o\,
	datad => \A[3]~input_o\,
	combout => \PrefixNetwork|Gk[1][4]~2_combout\);

-- Location: LCCOMB_X58_Y71_N12
\c[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[5]~5_combout\ = (!\PrefixNetwork|Gk[1][4]~2_combout\ & (((!p(4)) # (!\PrefixNetwork|Gk[1][2]~0_combout\)) # (!p(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(3),
	datab => \PrefixNetwork|Gk[1][2]~0_combout\,
	datac => p(4),
	datad => \PrefixNetwork|Gk[1][4]~2_combout\,
	combout => \c[5]~5_combout\);

-- Location: IOIBUF_X42_Y73_N1
\B[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: IOIBUF_X47_Y73_N15
\A[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: LCCOMB_X58_Y71_N30
\c[5]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[5]~4_combout\ = (p(1) & (\PrefixNetwork|Pk[2][4]~4_combout\ & (p(4) & \c[3]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(1),
	datab => \PrefixNetwork|Pk[2][4]~4_combout\,
	datac => p(4),
	datad => \c[3]~1_combout\,
	combout => \c[5]~4_combout\);

-- Location: LCCOMB_X58_Y71_N6
\S~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~6_combout\ = \B[5]~input_o\ $ (\A[5]~input_o\ $ (((\c[5]~4_combout\) # (!\c[5]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001101101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c[5]~5_combout\,
	datab => \B[5]~input_o\,
	datac => \A[5]~input_o\,
	datad => \c[5]~4_combout\,
	combout => \S~6_combout\);

-- Location: LCCOMB_X59_Y71_N18
\PrefixNetwork|Gk~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~3_combout\ = (\B[4]~input_o\ & (!\A[4]~input_o\ & (\A[5]~input_o\ $ (\B[5]~input_o\)))) # (!\B[4]~input_o\ & (\A[4]~input_o\ & (\A[5]~input_o\ $ (\B[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \A[4]~input_o\,
	datac => \A[5]~input_o\,
	datad => \B[5]~input_o\,
	combout => \PrefixNetwork|Gk~3_combout\);

-- Location: IOIBUF_X72_Y73_N22
\B[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: IOIBUF_X72_Y73_N1
\A[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: LCCOMB_X60_Y71_N16
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

-- Location: LCCOMB_X56_Y71_N16
\PrefixNetwork|Gk[1][5]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][5]~4_combout\ = (\A[5]~input_o\ & ((\B[5]~input_o\) # ((\B[4]~input_o\ & \A[4]~input_o\)))) # (!\A[5]~input_o\ & (\B[5]~input_o\ & (\B[4]~input_o\ & \A[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~input_o\,
	datab => \B[5]~input_o\,
	datac => \B[4]~input_o\,
	datad => \A[4]~input_o\,
	combout => \PrefixNetwork|Gk[1][5]~4_combout\);

-- Location: LCCOMB_X59_Y71_N28
\c[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[6]~6_combout\ = (\PrefixNetwork|Gk[1][5]~4_combout\) # ((\PrefixNetwork|Gk~3_combout\ & \PrefixNetwork|Gk[1][3]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PrefixNetwork|Gk~3_combout\,
	datac => \PrefixNetwork|Gk[1][3]~1_combout\,
	datad => \PrefixNetwork|Gk[1][5]~4_combout\,
	combout => \c[6]~6_combout\);

-- Location: LCCOMB_X59_Y71_N22
\S~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~7_combout\ = p(6) $ (((\c[6]~6_combout\) # ((\PrefixNetwork|Gk~3_combout\ & \c[4]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk~3_combout\,
	datab => p(6),
	datac => \c[4]~3_combout\,
	datad => \c[6]~6_combout\,
	combout => \S~7_combout\);

-- Location: IOIBUF_X45_Y73_N1
\A[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: IOIBUF_X49_Y73_N22
\B[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: LCCOMB_X59_Y71_N12
\PrefixNetwork|Gk[1][6]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][6]~5_combout\ = (\B[6]~input_o\ & ((\A[6]~input_o\) # ((\A[5]~input_o\ & \B[5]~input_o\)))) # (!\B[6]~input_o\ & (\A[5]~input_o\ & (\B[5]~input_o\ & \A[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~input_o\,
	datab => \B[5]~input_o\,
	datac => \B[6]~input_o\,
	datad => \A[6]~input_o\,
	combout => \PrefixNetwork|Gk[1][6]~5_combout\);

-- Location: LCCOMB_X59_Y71_N24
\PrefixNetwork|Gpre[6]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gpre[6]~1_combout\ = (\PrefixNetwork|Gk[1][2]~0_combout\) # ((\A[0]~input_o\ & (\B[0]~input_o\ & \c[3]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk[1][2]~0_combout\,
	datab => \A[0]~input_o\,
	datac => \B[0]~input_o\,
	datad => \c[3]~2_combout\,
	combout => \PrefixNetwork|Gpre[6]~1_combout\);

-- Location: LCCOMB_X59_Y71_N14
\PrefixNetwork|Gk~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~6_combout\ = (\PrefixNetwork|Gk[1][4]~2_combout\ & (p(6) & (\B[5]~input_o\ $ (\A[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \A[5]~input_o\,
	datac => \PrefixNetwork|Gk[1][4]~2_combout\,
	datad => p(6),
	combout => \PrefixNetwork|Gk~6_combout\);

-- Location: LCCOMB_X59_Y71_N6
\PrefixNetwork|Pk[2][6]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[2][6]~11_combout\ = (\PrefixNetwork|Gk~3_combout\ & (p(6) & (\A[3]~input_o\ $ (\B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \PrefixNetwork|Gk~3_combout\,
	datac => \B[3]~input_o\,
	datad => p(6),
	combout => \PrefixNetwork|Pk[2][6]~11_combout\);

-- Location: LCCOMB_X59_Y71_N26
\PrefixNetwork|Gpre[6]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gpre[6]~2_combout\ = (\PrefixNetwork|Gk[1][6]~5_combout\) # ((\PrefixNetwork|Gk~6_combout\) # ((\PrefixNetwork|Gpre[6]~1_combout\ & \PrefixNetwork|Pk[2][6]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk[1][6]~5_combout\,
	datab => \PrefixNetwork|Gpre[6]~1_combout\,
	datac => \PrefixNetwork|Gk~6_combout\,
	datad => \PrefixNetwork|Pk[2][6]~11_combout\,
	combout => \PrefixNetwork|Gpre[6]~2_combout\);

-- Location: LCCOMB_X61_Y71_N2
\c~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \c~7_combout\ = (p(1) & (\c[3]~0_combout\ & (\A[2]~input_o\ $ (\B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => p(1),
	datac => \B[2]~input_o\,
	datad => \c[3]~0_combout\,
	combout => \c~7_combout\);

-- Location: LCCOMB_X60_Y71_N6
\c~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \c~8_combout\ = (p(3) & (p(6) & (\PrefixNetwork|Gk~3_combout\ & \c~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(3),
	datab => p(6),
	datac => \PrefixNetwork|Gk~3_combout\,
	datad => \c~7_combout\,
	combout => \c~8_combout\);

-- Location: LCCOMB_X59_Y71_N8
\S~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~8_combout\ = \A[7]~input_o\ $ (\B[7]~input_o\ $ (((\PrefixNetwork|Gpre[6]~2_combout\) # (\c~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datab => \B[7]~input_o\,
	datac => \PrefixNetwork|Gpre[6]~2_combout\,
	datad => \c~8_combout\,
	combout => \S~8_combout\);

-- Location: IOIBUF_X52_Y73_N8
\B[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

-- Location: LCCOMB_X61_Y71_N12
\PrefixNetwork|Pk[2][7]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[2][7]~5_combout\ = (p(6) & (\PrefixNetwork|Gk~3_combout\ & (\A[7]~input_o\ $ (\B[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datab => \B[7]~input_o\,
	datac => p(6),
	datad => \PrefixNetwork|Gk~3_combout\,
	combout => \PrefixNetwork|Pk[2][7]~5_combout\);

-- Location: LCCOMB_X61_Y71_N0
\c~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \c~9_combout\ = (\c~7_combout\ & (\PrefixNetwork|Pk[2][7]~5_combout\ & (\A[3]~input_o\ $ (\B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \c~7_combout\,
	datac => \B[3]~input_o\,
	datad => \PrefixNetwork|Pk[2][7]~5_combout\,
	combout => \c~9_combout\);

-- Location: LCCOMB_X56_Y71_N14
\PrefixNetwork|Gk~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~8_combout\ = (\A[7]~input_o\ & (!\B[7]~input_o\ & (\A[6]~input_o\ $ (\B[6]~input_o\)))) # (!\A[7]~input_o\ & (\B[7]~input_o\ & (\A[6]~input_o\ $ (\B[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datab => \B[7]~input_o\,
	datac => \A[6]~input_o\,
	datad => \B[6]~input_o\,
	combout => \PrefixNetwork|Gk~8_combout\);

-- Location: LCCOMB_X61_Y71_N28
\PrefixNetwork|Gk[1][7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][7]~7_combout\ = (\B[7]~input_o\ & ((\A[7]~input_o\) # ((\A[6]~input_o\ & \B[6]~input_o\)))) # (!\B[7]~input_o\ & (\A[6]~input_o\ & (\B[6]~input_o\ & \A[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[7]~input_o\,
	datab => \A[6]~input_o\,
	datac => \B[6]~input_o\,
	datad => \A[7]~input_o\,
	combout => \PrefixNetwork|Gk[1][7]~7_combout\);

-- Location: LCCOMB_X61_Y71_N18
\PrefixNetwork|Gpre[7]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gpre[7]~3_combout\ = (\PrefixNetwork|Pk[2][7]~5_combout\ & ((\PrefixNetwork|Gk[1][3]~1_combout\) # ((\PrefixNetwork|Pk[2][4]~4_combout\ & \PrefixNetwork|Gpre[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Pk[2][4]~4_combout\,
	datab => \PrefixNetwork|Gpre[1]~0_combout\,
	datac => \PrefixNetwork|Gk[1][3]~1_combout\,
	datad => \PrefixNetwork|Pk[2][7]~5_combout\,
	combout => \PrefixNetwork|Gpre[7]~3_combout\);

-- Location: LCCOMB_X61_Y71_N14
\PrefixNetwork|Gpre[7]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gpre[7]~4_combout\ = (\PrefixNetwork|Gk[1][7]~7_combout\) # ((\PrefixNetwork|Gpre[7]~3_combout\) # ((\PrefixNetwork|Gk~8_combout\ & \PrefixNetwork|Gk[1][5]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk~8_combout\,
	datab => \PrefixNetwork|Gk[1][7]~7_combout\,
	datac => \PrefixNetwork|Gk[1][5]~4_combout\,
	datad => \PrefixNetwork|Gpre[7]~3_combout\,
	combout => \PrefixNetwork|Gpre[7]~4_combout\);

-- Location: IOIBUF_X52_Y73_N15
\A[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: LCCOMB_X61_Y71_N22
\S~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~9_combout\ = \B[8]~input_o\ $ (\A[8]~input_o\ $ (((\c~9_combout\) # (\PrefixNetwork|Gpre[7]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[8]~input_o\,
	datab => \c~9_combout\,
	datac => \PrefixNetwork|Gpre[7]~4_combout\,
	datad => \A[8]~input_o\,
	combout => \S~9_combout\);

-- Location: IOIBUF_X52_Y73_N22
\A[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

-- Location: IOIBUF_X40_Y73_N8
\B[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(9),
	o => \B[9]~input_o\);

-- Location: LCCOMB_X58_Y71_N20
\PrefixNetwork|Gk[1][8]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][8]~9_combout\ = (\B[8]~input_o\ & ((\A[8]~input_o\) # ((\B[7]~input_o\ & \A[7]~input_o\)))) # (!\B[8]~input_o\ & (\B[7]~input_o\ & (\A[7]~input_o\ & \A[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[8]~input_o\,
	datab => \B[7]~input_o\,
	datac => \A[7]~input_o\,
	datad => \A[8]~input_o\,
	combout => \PrefixNetwork|Gk[1][8]~9_combout\);

-- Location: LCCOMB_X53_Y71_N16
\PrefixNetwork|Pk[2][8]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[2][8]~6_combout\ = (\B[8]~input_o\ & (!\A[8]~input_o\ & (\B[7]~input_o\ $ (\A[7]~input_o\)))) # (!\B[8]~input_o\ & (\A[8]~input_o\ & (\B[7]~input_o\ $ (\A[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[8]~input_o\,
	datab => \A[8]~input_o\,
	datac => \B[7]~input_o\,
	datad => \A[7]~input_o\,
	combout => \PrefixNetwork|Pk[2][8]~6_combout\);

-- Location: LCCOMB_X58_Y71_N14
\S~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~10_combout\ = (\PrefixNetwork|Gk[1][8]~9_combout\) # ((\PrefixNetwork|Gk[1][6]~5_combout\ & \PrefixNetwork|Pk[2][8]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PrefixNetwork|Gk[1][8]~9_combout\,
	datac => \PrefixNetwork|Gk[1][6]~5_combout\,
	datad => \PrefixNetwork|Pk[2][8]~6_combout\,
	combout => \S~10_combout\);

-- Location: LCCOMB_X58_Y71_N0
\PrefixNetwork|Pk[2][8]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[2][8]~7_combout\ = (p(6) & (\PrefixNetwork|Pk[2][8]~6_combout\ & (\A[5]~input_o\ $ (\B[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~input_o\,
	datab => \B[5]~input_o\,
	datac => p(6),
	datad => \PrefixNetwork|Pk[2][8]~6_combout\,
	combout => \PrefixNetwork|Pk[2][8]~7_combout\);

-- Location: LCCOMB_X58_Y71_N18
\S~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~11_combout\ = (\S~10_combout\) # ((\PrefixNetwork|Pk[2][8]~7_combout\ & ((\c[5]~4_combout\) # (!\c[5]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c[5]~5_combout\,
	datab => \S~10_combout\,
	datac => \c[5]~4_combout\,
	datad => \PrefixNetwork|Pk[2][8]~7_combout\,
	combout => \S~11_combout\);

-- Location: LCCOMB_X58_Y71_N28
\S~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~12_combout\ = \A[9]~input_o\ $ (\B[9]~input_o\ $ (\S~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[9]~input_o\,
	datab => \B[9]~input_o\,
	datad => \S~11_combout\,
	combout => \S~12_combout\);

-- Location: LCCOMB_X56_Y71_N26
\PrefixNetwork|Gk[1][9]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][9]~10_combout\ = (\A[9]~input_o\ & ((\B[9]~input_o\) # ((\A[8]~input_o\ & \B[8]~input_o\)))) # (!\A[9]~input_o\ & (\A[8]~input_o\ & (\B[9]~input_o\ & \B[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[9]~input_o\,
	datab => \A[8]~input_o\,
	datac => \B[9]~input_o\,
	datad => \B[8]~input_o\,
	combout => \PrefixNetwork|Gk[1][9]~10_combout\);

-- Location: IOIBUF_X81_Y73_N1
\B[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(10),
	o => \B[10]~input_o\);

-- Location: IOIBUF_X38_Y73_N15
\A[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

-- Location: LCCOMB_X60_Y71_N24
\p[10]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(10) = \B[10]~input_o\ $ (\A[10]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[10]~input_o\,
	datad => \A[10]~input_o\,
	combout => p(10));

-- Location: LCCOMB_X56_Y71_N0
\PrefixNetwork|Pk[2][9]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[2][9]~8_combout\ = (\A[9]~input_o\ & (!\B[9]~input_o\ & (\A[8]~input_o\ $ (\B[8]~input_o\)))) # (!\A[9]~input_o\ & (\B[9]~input_o\ & (\A[8]~input_o\ $ (\B[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[9]~input_o\,
	datab => \A[8]~input_o\,
	datac => \B[9]~input_o\,
	datad => \B[8]~input_o\,
	combout => \PrefixNetwork|Pk[2][9]~8_combout\);

-- Location: LCCOMB_X56_Y71_N8
\S~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~14_combout\ = (\PrefixNetwork|Pk[2][9]~8_combout\ & ((\PrefixNetwork|Gk[1][7]~7_combout\) # ((\PrefixNetwork|Gk[1][5]~4_combout\ & \PrefixNetwork|Gk~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk[1][5]~4_combout\,
	datab => \PrefixNetwork|Pk[2][9]~8_combout\,
	datac => \PrefixNetwork|Gk~8_combout\,
	datad => \PrefixNetwork|Gk[1][7]~7_combout\,
	combout => \S~14_combout\);

-- Location: LCCOMB_X56_Y71_N18
\PrefixNetwork|Pk[2][9]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[2][9]~9_combout\ = (\PrefixNetwork|Gk~8_combout\ & \PrefixNetwork|Pk[2][9]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|Gk~8_combout\,
	datad => \PrefixNetwork|Pk[2][9]~8_combout\,
	combout => \PrefixNetwork|Pk[2][9]~9_combout\);

-- Location: LCCOMB_X56_Y71_N28
\S~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~13_combout\ = (\PrefixNetwork|Pk[2][9]~9_combout\ & (\PrefixNetwork|Gk~3_combout\ & ((\PrefixNetwork|Gk[1][3]~1_combout\) # (\c[4]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk[1][3]~1_combout\,
	datab => \PrefixNetwork|Pk[2][9]~9_combout\,
	datac => \c[4]~3_combout\,
	datad => \PrefixNetwork|Gk~3_combout\,
	combout => \S~13_combout\);

-- Location: LCCOMB_X56_Y71_N22
\S~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~15_combout\ = p(10) $ (((\PrefixNetwork|Gk[1][9]~10_combout\) # ((\S~14_combout\) # (\S~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk[1][9]~10_combout\,
	datab => p(10),
	datac => \S~14_combout\,
	datad => \S~13_combout\,
	combout => \S~15_combout\);

-- Location: IOIBUF_X58_Y73_N15
\B[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(11),
	o => \B[11]~input_o\);

-- Location: IOIBUF_X58_Y73_N22
\A[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(11),
	o => \A[11]~input_o\);

-- Location: LCCOMB_X59_Y71_N16
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

-- Location: LCCOMB_X58_Y71_N22
\PrefixNetwork|Gk~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~11_combout\ = (\PrefixNetwork|Gk[1][8]~9_combout\ & (\A[9]~input_o\ $ (\B[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[9]~input_o\,
	datab => \B[9]~input_o\,
	datad => \PrefixNetwork|Gk[1][8]~9_combout\,
	combout => \PrefixNetwork|Gk~11_combout\);

-- Location: LCCOMB_X60_Y71_N10
\c[3]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[3]~10_combout\ = (\PrefixNetwork|Gk[1][2]~0_combout\) # ((\c[3]~1_combout\ & \c[3]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk[1][2]~0_combout\,
	datac => \c[3]~1_combout\,
	datad => \c[3]~2_combout\,
	combout => \c[3]~10_combout\);

-- Location: LCCOMB_X60_Y71_N14
\PrefixNetwork|Pk[2][10]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[2][10]~10_combout\ = (p(10) & (\PrefixNetwork|Pk[2][9]~8_combout\ & (\A[7]~input_o\ $ (\B[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datab => p(10),
	datac => \B[7]~input_o\,
	datad => \PrefixNetwork|Pk[2][9]~8_combout\,
	combout => \PrefixNetwork|Pk[2][10]~10_combout\);

-- Location: LCCOMB_X59_Y71_N2
\PrefixNetwork|Gk[1][10]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][10]~12_combout\ = (\A[10]~input_o\ & ((\B[10]~input_o\) # ((\B[9]~input_o\ & \A[9]~input_o\)))) # (!\A[10]~input_o\ & (\B[9]~input_o\ & (\A[9]~input_o\ & \B[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[9]~input_o\,
	datab => \A[9]~input_o\,
	datac => \A[10]~input_o\,
	datad => \B[10]~input_o\,
	combout => \PrefixNetwork|Gk[1][10]~12_combout\);

-- Location: LCCOMB_X60_Y71_N28
\S~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~16_combout\ = (\PrefixNetwork|Gk[1][10]~12_combout\) # ((\PrefixNetwork|Pk[2][10]~10_combout\ & ((\PrefixNetwork|Gk[1][6]~5_combout\) # (\PrefixNetwork|Gk~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk[1][6]~5_combout\,
	datab => \PrefixNetwork|Gk[1][10]~12_combout\,
	datac => \PrefixNetwork|Pk[2][10]~10_combout\,
	datad => \PrefixNetwork|Gk~6_combout\,
	combout => \S~16_combout\);

-- Location: LCCOMB_X60_Y71_N12
\S~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~17_combout\ = (\S~16_combout\) # ((\c[3]~10_combout\ & (\PrefixNetwork|Pk[2][10]~10_combout\ & \PrefixNetwork|Pk[2][6]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c[3]~10_combout\,
	datab => \PrefixNetwork|Pk[2][10]~10_combout\,
	datac => \PrefixNetwork|Pk[2][6]~11_combout\,
	datad => \S~16_combout\,
	combout => \S~17_combout\);

-- Location: LCCOMB_X60_Y71_N26
\S~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~18_combout\ = p(11) $ (((\S~17_combout\) # ((p(10) & \PrefixNetwork|Gk~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(11),
	datab => p(10),
	datac => \PrefixNetwork|Gk~11_combout\,
	datad => \S~17_combout\,
	combout => \S~18_combout\);

-- Location: IOIBUF_X49_Y73_N15
\A[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(12),
	o => \A[12]~input_o\);

-- Location: IOIBUF_X38_Y73_N22
\B[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(12),
	o => \B[12]~input_o\);

-- Location: LCCOMB_X57_Y71_N8
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

-- Location: LCCOMB_X57_Y71_N12
\PrefixNetwork|Gk~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~13_combout\ = (\A[11]~input_o\ & (!\B[11]~input_o\ & (\B[10]~input_o\ $ (\A[10]~input_o\)))) # (!\A[11]~input_o\ & (\B[11]~input_o\ & (\B[10]~input_o\ $ (\A[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[11]~input_o\,
	datab => \B[11]~input_o\,
	datac => \B[10]~input_o\,
	datad => \A[10]~input_o\,
	combout => \PrefixNetwork|Gk~13_combout\);

-- Location: LCCOMB_X56_Y71_N24
\S~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~21_combout\ = (\PrefixNetwork|Gk~13_combout\ & ((\PrefixNetwork|Gk[1][9]~10_combout\) # ((\PrefixNetwork|Pk[2][9]~8_combout\ & \PrefixNetwork|Gk[1][7]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk[1][9]~10_combout\,
	datab => \PrefixNetwork|Pk[2][9]~8_combout\,
	datac => \PrefixNetwork|Gk~13_combout\,
	datad => \PrefixNetwork|Gk[1][7]~7_combout\,
	combout => \S~21_combout\);

-- Location: LCCOMB_X57_Y71_N22
\PrefixNetwork|Gk[1][11]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][11]~14_combout\ = (\B[11]~input_o\ & ((\A[11]~input_o\) # ((\B[10]~input_o\ & \A[10]~input_o\)))) # (!\B[11]~input_o\ & (\A[11]~input_o\ & (\B[10]~input_o\ & \A[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[11]~input_o\,
	datab => \A[11]~input_o\,
	datac => \B[10]~input_o\,
	datad => \A[10]~input_o\,
	combout => \PrefixNetwork|Gk[1][11]~14_combout\);

-- Location: LCCOMB_X56_Y71_N12
\S~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~19_combout\ = (\PrefixNetwork|Gk[1][5]~4_combout\) # ((\PrefixNetwork|Gk~3_combout\ & ((\PrefixNetwork|Gk[1][3]~1_combout\) # (\c[4]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk[1][3]~1_combout\,
	datab => \PrefixNetwork|Gk[1][5]~4_combout\,
	datac => \c[4]~3_combout\,
	datad => \PrefixNetwork|Gk~3_combout\,
	combout => \S~19_combout\);

-- Location: LCCOMB_X56_Y71_N6
\S~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~20_combout\ = (\PrefixNetwork|Gk~13_combout\ & (\PrefixNetwork|Pk[2][9]~8_combout\ & (\PrefixNetwork|Gk~8_combout\ & \S~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk~13_combout\,
	datab => \PrefixNetwork|Pk[2][9]~8_combout\,
	datac => \PrefixNetwork|Gk~8_combout\,
	datad => \S~19_combout\,
	combout => \S~20_combout\);

-- Location: LCCOMB_X56_Y71_N10
\S~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~22_combout\ = p(12) $ (((\S~21_combout\) # ((\PrefixNetwork|Gk[1][11]~14_combout\) # (\S~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(12),
	datab => \S~21_combout\,
	datac => \PrefixNetwork|Gk[1][11]~14_combout\,
	datad => \S~20_combout\,
	combout => \S~22_combout\);

-- Location: IOIBUF_X79_Y73_N8
\A[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(13),
	o => \A[13]~input_o\);

-- Location: IOIBUF_X58_Y73_N1
\B[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(13),
	o => \B[13]~input_o\);

-- Location: LCCOMB_X58_Y71_N8
\S~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~23_combout\ = (p(12) & (\PrefixNetwork|Gk~13_combout\ & (\A[9]~input_o\ $ (\B[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(12),
	datab => \A[9]~input_o\,
	datac => \B[9]~input_o\,
	datad => \PrefixNetwork|Gk~13_combout\,
	combout => \S~23_combout\);

-- Location: LCCOMB_X58_Y71_N26
\S~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~24_combout\ = (\S~23_combout\ & (\PrefixNetwork|Pk[2][8]~7_combout\ & ((\c[5]~4_combout\) # (!\c[5]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c[5]~5_combout\,
	datab => \S~23_combout\,
	datac => \c[5]~4_combout\,
	datad => \PrefixNetwork|Pk[2][8]~7_combout\,
	combout => \S~24_combout\);

-- Location: LCCOMB_X57_Y71_N6
\PrefixNetwork|Gk[1][12]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][12]~15_combout\ = (\A[12]~input_o\ & ((\B[12]~input_o\) # ((\A[11]~input_o\ & \B[11]~input_o\)))) # (!\A[12]~input_o\ & (\A[11]~input_o\ & (\B[11]~input_o\ & \B[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[11]~input_o\,
	datab => \B[11]~input_o\,
	datac => \A[12]~input_o\,
	datad => \B[12]~input_o\,
	combout => \PrefixNetwork|Gk[1][12]~15_combout\);

-- Location: LCCOMB_X58_Y71_N16
\S~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~25_combout\ = (\PrefixNetwork|Gk[1][12]~15_combout\) # ((p(12) & (\PrefixNetwork|Gk~11_combout\ & \PrefixNetwork|Gk~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(12),
	datab => \PrefixNetwork|Gk[1][12]~15_combout\,
	datac => \PrefixNetwork|Gk~11_combout\,
	datad => \PrefixNetwork|Gk~13_combout\,
	combout => \S~25_combout\);

-- Location: LCCOMB_X58_Y71_N10
\S~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~26_combout\ = (\S~25_combout\) # ((\PrefixNetwork|Gk[1][10]~12_combout\ & (p(11) & p(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk[1][10]~12_combout\,
	datab => p(11),
	datac => p(12),
	datad => \S~25_combout\,
	combout => \S~26_combout\);

-- Location: LCCOMB_X58_Y71_N24
\S~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~27_combout\ = (\S~26_combout\) # ((\PrefixNetwork|Gk[1][6]~5_combout\ & (\PrefixNetwork|Pk[2][8]~6_combout\ & \S~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk[1][6]~5_combout\,
	datab => \PrefixNetwork|Pk[2][8]~6_combout\,
	datac => \S~23_combout\,
	datad => \S~26_combout\,
	combout => \S~27_combout\);

-- Location: LCCOMB_X58_Y71_N2
\S~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~28_combout\ = \A[13]~input_o\ $ (\B[13]~input_o\ $ (((\S~24_combout\) # (\S~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[13]~input_o\,
	datab => \B[13]~input_o\,
	datac => \S~24_combout\,
	datad => \S~27_combout\,
	combout => \S~28_combout\);

-- Location: IOIBUF_X67_Y73_N8
\A[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(14),
	o => \A[14]~input_o\);

-- Location: IOIBUF_X69_Y73_N1
\B[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(14),
	o => \B[14]~input_o\);

-- Location: LCCOMB_X65_Y71_N4
\p[14]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(14) = \A[14]~input_o\ $ (\B[14]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[14]~input_o\,
	datad => \B[14]~input_o\,
	combout => p(14));

-- Location: LCCOMB_X57_Y71_N4
\S~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~29_combout\ = (p(12) & (\PrefixNetwork|Gk~13_combout\ & (\A[13]~input_o\ $ (\B[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[13]~input_o\,
	datab => \B[13]~input_o\,
	datac => p(12),
	datad => \PrefixNetwork|Gk~13_combout\,
	combout => \S~29_combout\);

-- Location: LCCOMB_X57_Y71_N24
\S~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~31_combout\ = (\PrefixNetwork|Gk[1][11]~14_combout\ & (p(12) & (\A[13]~input_o\ $ (\B[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[13]~input_o\,
	datab => \B[13]~input_o\,
	datac => \PrefixNetwork|Gk[1][11]~14_combout\,
	datad => p(12),
	combout => \S~31_combout\);

-- Location: LCCOMB_X57_Y71_N2
\PrefixNetwork|Gk[1][13]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][13]~16_combout\ = (\B[13]~input_o\ & ((\A[13]~input_o\) # ((\A[12]~input_o\ & \B[12]~input_o\)))) # (!\B[13]~input_o\ & (\A[12]~input_o\ & (\A[13]~input_o\ & \B[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[13]~input_o\,
	datab => \A[12]~input_o\,
	datac => \A[13]~input_o\,
	datad => \B[12]~input_o\,
	combout => \PrefixNetwork|Gk[1][13]~16_combout\);

-- Location: LCCOMB_X56_Y71_N30
\S~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~32_combout\ = (\S~31_combout\) # ((\PrefixNetwork|Gk[1][13]~16_combout\) # ((\PrefixNetwork|Gk[1][9]~10_combout\ & \S~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk[1][9]~10_combout\,
	datab => \S~31_combout\,
	datac => \PrefixNetwork|Gk[1][13]~16_combout\,
	datad => \S~29_combout\,
	combout => \S~32_combout\);

-- Location: LCCOMB_X56_Y71_N4
\S~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~33_combout\ = (\S~32_combout\) # ((\S~29_combout\ & (\PrefixNetwork|Pk[2][9]~8_combout\ & \PrefixNetwork|Gk[1][7]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S~29_combout\,
	datab => \PrefixNetwork|Pk[2][9]~8_combout\,
	datac => \S~32_combout\,
	datad => \PrefixNetwork|Gk[1][7]~7_combout\,
	combout => \S~33_combout\);

-- Location: LCCOMB_X56_Y71_N20
\S~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~30_combout\ = (\S~29_combout\ & ((\c[6]~6_combout\) # ((\PrefixNetwork|Gk~3_combout\ & \c[4]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S~29_combout\,
	datab => \PrefixNetwork|Gk~3_combout\,
	datac => \c[4]~3_combout\,
	datad => \c[6]~6_combout\,
	combout => \S~30_combout\);

-- Location: LCCOMB_X56_Y71_N2
\S~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~34_combout\ = p(14) $ (((\S~33_combout\) # ((\PrefixNetwork|Pk[2][9]~9_combout\ & \S~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(14),
	datab => \PrefixNetwork|Pk[2][9]~9_combout\,
	datac => \S~33_combout\,
	datad => \S~30_combout\,
	combout => \S~34_combout\);

-- Location: LCCOMB_X57_Y71_N10
\PrefixNetwork|Gk~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~17_combout\ = (\A[14]~input_o\ & (!\B[14]~input_o\ & (\B[13]~input_o\ $ (\A[13]~input_o\)))) # (!\A[14]~input_o\ & (\B[14]~input_o\ & (\B[13]~input_o\ $ (\A[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[14]~input_o\,
	datab => \B[13]~input_o\,
	datac => \A[13]~input_o\,
	datad => \B[14]~input_o\,
	combout => \PrefixNetwork|Gk~17_combout\);

-- Location: LCCOMB_X60_Y71_N20
\PrefixNetwork|Gk~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~18_combout\ = (p(12) & (\PrefixNetwork|Gk~17_combout\ & (\B[11]~input_o\ $ (\A[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[11]~input_o\,
	datab => \A[11]~input_o\,
	datac => p(12),
	datad => \PrefixNetwork|Gk~17_combout\,
	combout => \PrefixNetwork|Gk~18_combout\);

-- Location: LCCOMB_X60_Y71_N18
\PrefixNetwork|Gk~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~19_combout\ = (\PrefixNetwork|Pk[2][10]~10_combout\ & \PrefixNetwork|Gk~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|Pk[2][10]~10_combout\,
	datad => \PrefixNetwork|Gk~18_combout\,
	combout => \PrefixNetwork|Gk~19_combout\);

-- Location: LCCOMB_X60_Y71_N4
\c[15]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[15]~11_combout\ = (\PrefixNetwork|Gk~17_combout\ & ((\PrefixNetwork|Gk[1][12]~15_combout\) # ((\PrefixNetwork|Gk[1][10]~12_combout\ & \PrefixNetwork|Gk~18_combout\)))) # (!\PrefixNetwork|Gk~17_combout\ & (((\PrefixNetwork|Gk[1][10]~12_combout\ & 
-- \PrefixNetwork|Gk~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk~17_combout\,
	datab => \PrefixNetwork|Gk[1][12]~15_combout\,
	datac => \PrefixNetwork|Gk[1][10]~12_combout\,
	datad => \PrefixNetwork|Gk~18_combout\,
	combout => \c[15]~11_combout\);

-- Location: LCCOMB_X60_Y71_N22
\PrefixNetwork|Gk[1][14]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][14]~20_combout\ = (\B[14]~input_o\ & ((\A[14]~input_o\) # ((\B[13]~input_o\ & \A[13]~input_o\)))) # (!\B[14]~input_o\ & (\B[13]~input_o\ & (\A[14]~input_o\ & \A[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[13]~input_o\,
	datab => \B[14]~input_o\,
	datac => \A[14]~input_o\,
	datad => \A[13]~input_o\,
	combout => \PrefixNetwork|Gk[1][14]~20_combout\);

-- Location: LCCOMB_X60_Y71_N8
\c[15]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[15]~12_combout\ = (\PrefixNetwork|Gk[1][14]~20_combout\) # ((p(14) & (\PrefixNetwork|Gk~11_combout\ & \S~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk[1][14]~20_combout\,
	datab => p(14),
	datac => \PrefixNetwork|Gk~11_combout\,
	datad => \S~29_combout\,
	combout => \c[15]~12_combout\);

-- Location: LCCOMB_X60_Y71_N30
\c[15]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[15]~13_combout\ = (\c[15]~11_combout\) # ((\c[15]~12_combout\) # ((\c~8_combout\ & \PrefixNetwork|Gk~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c~8_combout\,
	datab => \c[15]~11_combout\,
	datac => \c[15]~12_combout\,
	datad => \PrefixNetwork|Gk~19_combout\,
	combout => \c[15]~13_combout\);

-- Location: IOIBUF_X67_Y73_N15
\B[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(15),
	o => \B[15]~input_o\);

-- Location: IOIBUF_X67_Y73_N22
\A[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(15),
	o => \A[15]~input_o\);

-- Location: LCCOMB_X66_Y71_N0
\p[15]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(15) = \B[15]~input_o\ $ (\A[15]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[15]~input_o\,
	datad => \A[15]~input_o\,
	combout => p(15));

-- Location: LCCOMB_X60_Y71_N0
\S~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~35_combout\ = p(15) $ (((\c[15]~13_combout\) # ((\PrefixNetwork|Gpre[6]~2_combout\ & \PrefixNetwork|Gk~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gpre[6]~2_combout\,
	datab => \PrefixNetwork|Gk~19_combout\,
	datac => \c[15]~13_combout\,
	datad => p(15),
	combout => \S~35_combout\);

-- Location: LCCOMB_X66_Y71_N8
\PrefixNetwork|Gk~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~27_combout\ = (\B[14]~input_o\ & (!\A[14]~input_o\ & (\B[15]~input_o\ $ (\A[15]~input_o\)))) # (!\B[14]~input_o\ & (\A[14]~input_o\ & (\B[15]~input_o\ $ (\A[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[14]~input_o\,
	datab => \B[15]~input_o\,
	datac => \A[14]~input_o\,
	datad => \A[15]~input_o\,
	combout => \PrefixNetwork|Gk~27_combout\);

-- Location: LCCOMB_X57_Y71_N26
\c~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \c~15_combout\ = (\PrefixNetwork|Gk~27_combout\ & ((\PrefixNetwork|Gk[1][13]~16_combout\) # ((\PrefixNetwork|Gk[1][9]~10_combout\ & \S~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk[1][9]~10_combout\,
	datab => \PrefixNetwork|Gk[1][13]~16_combout\,
	datac => \S~29_combout\,
	datad => \PrefixNetwork|Gk~27_combout\,
	combout => \c~15_combout\);

-- Location: LCCOMB_X57_Y71_N18
\PrefixNetwork|Gk~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~25_combout\ = (p(12) & (\PrefixNetwork|Gk~17_combout\ & (\A[15]~input_o\ $ (\B[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[15]~input_o\,
	datab => \B[15]~input_o\,
	datac => p(12),
	datad => \PrefixNetwork|Gk~17_combout\,
	combout => \PrefixNetwork|Gk~25_combout\);

-- Location: LCCOMB_X57_Y71_N16
\PrefixNetwork|Gk~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~26_combout\ = (\PrefixNetwork|Gk~13_combout\ & (\PrefixNetwork|Pk[2][9]~8_combout\ & \PrefixNetwork|Gk~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk~13_combout\,
	datac => \PrefixNetwork|Pk[2][9]~8_combout\,
	datad => \PrefixNetwork|Gk~25_combout\,
	combout => \PrefixNetwork|Gk~26_combout\);

-- Location: LCCOMB_X57_Y71_N14
\PrefixNetwork|Gk~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~23_combout\ = (\B[11]~input_o\ & ((\A[11]~input_o\) # ((\B[10]~input_o\ & \A[10]~input_o\)))) # (!\B[11]~input_o\ & (((\B[10]~input_o\ & \A[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[11]~input_o\,
	datab => \A[11]~input_o\,
	datac => \B[10]~input_o\,
	datad => \A[10]~input_o\,
	combout => \PrefixNetwork|Gk~23_combout\);

-- Location: LCCOMB_X57_Y71_N20
\PrefixNetwork|Gk~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~22_combout\ = (\B[11]~input_o\ & ((\B[15]~input_o\ $ (\A[15]~input_o\)))) # (!\B[11]~input_o\ & (\A[11]~input_o\ & (\B[15]~input_o\ $ (\A[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[11]~input_o\,
	datab => \A[11]~input_o\,
	datac => \B[15]~input_o\,
	datad => \A[15]~input_o\,
	combout => \PrefixNetwork|Gk~22_combout\);

-- Location: LCCOMB_X57_Y71_N28
\PrefixNetwork|Gk~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~24_combout\ = (\PrefixNetwork|Gk~17_combout\ & (p(12) & (\PrefixNetwork|Gk~23_combout\ & \PrefixNetwork|Gk~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk~17_combout\,
	datab => p(12),
	datac => \PrefixNetwork|Gk~23_combout\,
	datad => \PrefixNetwork|Gk~22_combout\,
	combout => \PrefixNetwork|Gk~24_combout\);

-- Location: LCCOMB_X66_Y71_N22
\PrefixNetwork|Gk[1][15]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][15]~21_combout\ = (\B[15]~input_o\ & ((\A[15]~input_o\) # ((\B[14]~input_o\ & \A[14]~input_o\)))) # (!\B[15]~input_o\ & (\B[14]~input_o\ & (\A[14]~input_o\ & \A[15]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[14]~input_o\,
	datab => \B[15]~input_o\,
	datac => \A[14]~input_o\,
	datad => \A[15]~input_o\,
	combout => \PrefixNetwork|Gk[1][15]~21_combout\);

-- Location: LCCOMB_X61_Y71_N20
\c~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \c~14_combout\ = (\PrefixNetwork|Gk~24_combout\) # ((\PrefixNetwork|Gk[1][15]~21_combout\) # ((\PrefixNetwork|Gk~26_combout\ & \c~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk~24_combout\,
	datab => \PrefixNetwork|Gk[1][15]~21_combout\,
	datac => \PrefixNetwork|Gk~26_combout\,
	datad => \c~9_combout\,
	combout => \c~14_combout\);

-- Location: LCCOMB_X61_Y71_N26
\c~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \c~16_combout\ = (\c~15_combout\) # ((\c~14_combout\) # ((\PrefixNetwork|Gk~26_combout\ & \PrefixNetwork|Gpre[7]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c~15_combout\,
	datab => \PrefixNetwork|Gk~26_combout\,
	datac => \PrefixNetwork|Gpre[7]~4_combout\,
	datad => \c~14_combout\,
	combout => \c~16_combout\);

-- Location: LCCOMB_X60_Y71_N2
\Ovfl~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Ovfl~0_combout\ = \c~16_combout\ $ (((\c[15]~13_combout\) # ((\PrefixNetwork|Gpre[6]~2_combout\ & \PrefixNetwork|Gk~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gpre[6]~2_combout\,
	datab => \PrefixNetwork|Gk~19_combout\,
	datac => \c[15]~13_combout\,
	datad => \c~16_combout\,
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


