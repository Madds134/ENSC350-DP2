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

-- DATE "11/21/2026 11:43:03"

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
	A : IN std_logic_vector(15 DOWNTO 0);
	B : IN std_logic_vector(15 DOWNTO 0);
	S : OUT std_logic_vector(15 DOWNTO 0);
	Cin : IN std_logic;
	Cout : OUT std_logic;
	Ovfl : OUT std_logic
	);
END Adder;

-- Design Ports Information
-- S[0]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[1]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[2]	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[3]	=>  Location: PIN_N17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[4]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[5]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[6]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[7]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[8]	=>  Location: PIN_T16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[9]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[10]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[11]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[12]	=>  Location: PIN_V22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[13]	=>  Location: PIN_P17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[14]	=>  Location: PIN_U19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[15]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cout	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ovfl	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cin	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_P15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_R18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_R19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_R20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_P20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_W20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[8]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[9]	=>  Location: PIN_U17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_M19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[10]	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[11]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[11]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[12]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[12]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[13]	=>  Location: PIN_N22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[13]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[14]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[14]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[15]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[15]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \S~0_combout\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \S~1_combout\ : std_logic;
SIGNAL \S~2_combout\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \c[2]~0_combout\ : std_logic;
SIGNAL \c[2]~1_combout\ : std_logic;
SIGNAL \S~3_combout\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \S~4_combout\ : std_logic;
SIGNAL \S~5_combout\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\ : std_logic;
SIGNAL \c[4]~2_combout\ : std_logic;
SIGNAL \S~6_combout\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \S~7_combout\ : std_logic;
SIGNAL \S~8_combout\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry0[1]~0_combout\ : std_logic;
SIGNAL \c[6]~4_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry1[1]~0_combout\ : std_logic;
SIGNAL \c[6]~3_combout\ : std_logic;
SIGNAL \S~9_combout\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \c[7]~5_combout\ : std_logic;
SIGNAL \S~10_combout\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \B[8]~input_o\ : std_logic;
SIGNAL \c[8]~6_combout\ : std_logic;
SIGNAL \c[8]~7_combout\ : std_logic;
SIGNAL \S~11_combout\ : std_logic;
SIGNAL \B[9]~input_o\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \S~12_combout\ : std_logic;
SIGNAL \S~13_combout\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \B[10]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|carry1[1]~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|carry0[1]~0_combout\ : std_logic;
SIGNAL \c[10]~8_combout\ : std_logic;
SIGNAL \S~14_combout\ : std_logic;
SIGNAL \B[11]~input_o\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \S~15_combout\ : std_logic;
SIGNAL \S~16_combout\ : std_logic;
SIGNAL \B[12]~input_o\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\ : std_logic;
SIGNAL \c[12]~10_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\ : std_logic;
SIGNAL \c[12]~9_combout\ : std_logic;
SIGNAL \S~17_combout\ : std_logic;
SIGNAL \B[13]~input_o\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \S~18_combout\ : std_logic;
SIGNAL \S~19_combout\ : std_logic;
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \B[14]~input_o\ : std_logic;
SIGNAL \c[14]~11_combout\ : std_logic;
SIGNAL \c[14]~12_combout\ : std_logic;
SIGNAL \S~20_combout\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \B[15]~input_o\ : std_logic;
SIGNAL \S~21_combout\ : std_logic;
SIGNAL \S~22_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|carry0[1]~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|carry1[1]~0_combout\ : std_logic;
SIGNAL \c~13_combout\ : std_logic;
SIGNAL \Ovfl~0_combout\ : std_logic;
SIGNAL \Ovfl~1_combout\ : std_logic;

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

-- Location: IOOBUF_X56_Y0_N2
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

-- Location: IOOBUF_X54_Y0_N23
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

-- Location: IOOBUF_X67_Y17_N16
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

-- Location: IOOBUF_X67_Y17_N23
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

-- Location: IOOBUF_X67_Y13_N9
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

-- Location: IOOBUF_X67_Y13_N16
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

-- Location: IOOBUF_X67_Y15_N2
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

-- Location: IOOBUF_X67_Y13_N2
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

-- Location: IOOBUF_X63_Y0_N9
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

-- Location: IOOBUF_X65_Y0_N30
\S[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~13_combout\,
	devoe => ww_devoe,
	o => \S[9]~output_o\);

-- Location: IOOBUF_X63_Y0_N2
\S[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~14_combout\,
	devoe => ww_devoe,
	o => \S[10]~output_o\);

-- Location: IOOBUF_X65_Y0_N23
\S[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~16_combout\,
	devoe => ww_devoe,
	o => \S[11]~output_o\);

-- Location: IOOBUF_X67_Y10_N9
\S[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~17_combout\,
	devoe => ww_devoe,
	o => \S[12]~output_o\);

-- Location: IOOBUF_X67_Y10_N16
\S[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~19_combout\,
	devoe => ww_devoe,
	o => \S[13]~output_o\);

-- Location: IOOBUF_X67_Y7_N9
\S[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~20_combout\,
	devoe => ww_devoe,
	o => \S[14]~output_o\);

-- Location: IOOBUF_X67_Y7_N23
\S[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~22_combout\,
	devoe => ww_devoe,
	o => \S[15]~output_o\);

-- Location: IOOBUF_X67_Y6_N16
\Cout~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \c~13_combout\,
	devoe => ww_devoe,
	o => \Cout~output_o\);

-- Location: IOOBUF_X67_Y8_N23
\Ovfl~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Ovfl~1_combout\,
	devoe => ww_devoe,
	o => \Ovfl~output_o\);

-- Location: IOIBUF_X67_Y7_N1
\Cin~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cin,
	o => \Cin~input_o\);

-- Location: IOIBUF_X67_Y7_N15
\B[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X67_Y5_N8
\A[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: LCCOMB_X66_Y4_N16
\S~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~0_combout\ = \Cin~input_o\ $ (\B[0]~input_o\ $ (\A[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Cin~input_o\,
	datac => \B[0]~input_o\,
	datad => \A[0]~input_o\,
	combout => \S~0_combout\);

-- Location: IOIBUF_X67_Y2_N15
\B[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: IOIBUF_X67_Y3_N15
\A[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: LCCOMB_X66_Y4_N18
\S~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~1_combout\ = \A[1]~input_o\ $ (((\B[0]~input_o\ & ((\A[0]~input_o\) # (\Cin~input_o\))) # (!\B[0]~input_o\ & (\A[0]~input_o\ & \Cin~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[0]~input_o\,
	datac => \Cin~input_o\,
	datad => \A[1]~input_o\,
	combout => \S~1_combout\);

-- Location: LCCOMB_X66_Y4_N24
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

-- Location: IOIBUF_X67_Y9_N8
\B[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: IOIBUF_X67_Y11_N8
\A[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: LCCOMB_X66_Y8_N16
\c[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[2]~0_combout\ = (\A[0]~input_o\ & ((\Cin~input_o\) # (\B[0]~input_o\))) # (!\A[0]~input_o\ & (\Cin~input_o\ & \B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datac => \Cin~input_o\,
	datad => \B[0]~input_o\,
	combout => \c[2]~0_combout\);

-- Location: LCCOMB_X66_Y8_N2
\c[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[2]~1_combout\ = (\A[1]~input_o\ & ((\B[1]~input_o\) # (\c[2]~0_combout\))) # (!\A[1]~input_o\ & (\B[1]~input_o\ & \c[2]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[1]~input_o\,
	datac => \B[1]~input_o\,
	datad => \c[2]~0_combout\,
	combout => \c[2]~1_combout\);

-- Location: LCCOMB_X66_Y9_N8
\S~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~3_combout\ = \B[2]~input_o\ $ (\A[2]~input_o\ $ (\c[2]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \A[2]~input_o\,
	datad => \c[2]~1_combout\,
	combout => \S~3_combout\);

-- Location: IOIBUF_X67_Y10_N22
\B[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: IOIBUF_X67_Y9_N15
\A[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: LCCOMB_X66_Y9_N2
\S~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~4_combout\ = \B[3]~input_o\ $ (\A[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[3]~input_o\,
	datad => \A[3]~input_o\,
	combout => \S~4_combout\);

-- Location: LCCOMB_X66_Y9_N16
\S~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~5_combout\ = \S~4_combout\ $ (((\B[2]~input_o\ & ((\A[2]~input_o\) # (\c[2]~1_combout\))) # (!\B[2]~input_o\ & (\A[2]~input_o\ & \c[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \A[2]~input_o\,
	datac => \c[2]~1_combout\,
	datad => \S~4_combout\,
	combout => \S~5_combout\);

-- Location: IOIBUF_X67_Y12_N15
\B[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: IOIBUF_X67_Y12_N22
\A[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: LCCOMB_X66_Y8_N20
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\) # ((\A[2]~input_o\) # (\A[3]~input_o\)))) # (!\B[3]~input_o\ & (\A[3]~input_o\ & ((\B[2]~input_o\) # (\A[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[3]~input_o\,
	datac => \A[2]~input_o\,
	datad => \A[3]~input_o\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\);

-- Location: LCCOMB_X66_Y8_N22
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\ = (\B[3]~input_o\ & ((\A[3]~input_o\) # ((\B[2]~input_o\ & \A[2]~input_o\)))) # (!\B[3]~input_o\ & (\B[2]~input_o\ & (\A[2]~input_o\ & \A[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[3]~input_o\,
	datac => \A[2]~input_o\,
	datad => \A[3]~input_o\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\);

-- Location: LCCOMB_X66_Y9_N10
\c[4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[4]~2_combout\ = (\c[2]~1_combout\ & (\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\)) # (!\c[2]~1_combout\ & ((\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\,
	datac => \c[2]~1_combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\,
	combout => \c[4]~2_combout\);

-- Location: LCCOMB_X66_Y9_N20
\S~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~6_combout\ = \B[4]~input_o\ $ (\A[4]~input_o\ $ (\c[4]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[4]~input_o\,
	datac => \A[4]~input_o\,
	datad => \c[4]~2_combout\,
	combout => \S~6_combout\);

-- Location: IOIBUF_X67_Y11_N22
\B[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: IOIBUF_X67_Y10_N1
\A[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: LCCOMB_X66_Y9_N6
\S~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~7_combout\ = \B[5]~input_o\ $ (\A[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[5]~input_o\,
	datac => \A[5]~input_o\,
	combout => \S~7_combout\);

-- Location: LCCOMB_X66_Y9_N12
\S~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~8_combout\ = \S~7_combout\ $ (((\B[4]~input_o\ & ((\A[4]~input_o\) # (\c[4]~2_combout\))) # (!\B[4]~input_o\ & (\A[4]~input_o\ & \c[4]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S~7_combout\,
	datab => \B[4]~input_o\,
	datac => \A[4]~input_o\,
	datad => \c[4]~2_combout\,
	combout => \S~8_combout\);

-- Location: IOIBUF_X67_Y14_N22
\B[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: IOIBUF_X67_Y15_N8
\A[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: LCCOMB_X66_Y8_N4
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry0[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry0[1]~0_combout\ = (\A[5]~input_o\ & ((\B[5]~input_o\) # ((\B[4]~input_o\ & \A[4]~input_o\)))) # (!\A[5]~input_o\ & (\B[4]~input_o\ & (\B[5]~input_o\ & \A[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~input_o\,
	datab => \B[4]~input_o\,
	datac => \B[5]~input_o\,
	datad => \A[4]~input_o\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry0[1]~0_combout\);

-- Location: LCCOMB_X66_Y8_N10
\c[6]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[6]~4_combout\ = (\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry0[1]~0_combout\ & ((\c[2]~1_combout\ & ((!\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\))) # (!\c[2]~1_combout\ & 
-- (!\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\,
	datab => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\,
	datac => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry0[1]~0_combout\,
	datad => \c[2]~1_combout\,
	combout => \c[6]~4_combout\);

-- Location: LCCOMB_X66_Y8_N8
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry1[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry1[1]~0_combout\ = (\A[5]~input_o\ & ((\B[4]~input_o\) # ((\B[5]~input_o\) # (\A[4]~input_o\)))) # (!\A[5]~input_o\ & (\B[5]~input_o\ & ((\B[4]~input_o\) # (\A[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~input_o\,
	datab => \B[4]~input_o\,
	datac => \B[5]~input_o\,
	datad => \A[4]~input_o\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry1[1]~0_combout\);

-- Location: LCCOMB_X66_Y8_N18
\c[6]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[6]~3_combout\ = (\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry1[1]~0_combout\ & ((\c[2]~1_combout\ & ((\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\))) # (!\c[2]~1_combout\ & 
-- (\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\,
	datab => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\,
	datac => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry1[1]~0_combout\,
	datad => \c[2]~1_combout\,
	combout => \c[6]~3_combout\);

-- Location: LCCOMB_X66_Y11_N0
\S~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~9_combout\ = \B[6]~input_o\ $ (\A[6]~input_o\ $ (((\c[6]~4_combout\) # (\c[6]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[6]~input_o\,
	datab => \A[6]~input_o\,
	datac => \c[6]~4_combout\,
	datad => \c[6]~3_combout\,
	combout => \S~9_combout\);

-- Location: IOIBUF_X67_Y11_N1
\A[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: IOIBUF_X67_Y3_N1
\B[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: LCCOMB_X66_Y11_N18
\c[7]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[7]~5_combout\ = (\B[6]~input_o\ & ((\A[6]~input_o\) # ((\c[6]~4_combout\) # (\c[6]~3_combout\)))) # (!\B[6]~input_o\ & (\A[6]~input_o\ & ((\c[6]~4_combout\) # (\c[6]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[6]~input_o\,
	datab => \A[6]~input_o\,
	datac => \c[6]~4_combout\,
	datad => \c[6]~3_combout\,
	combout => \c[7]~5_combout\);

-- Location: LCCOMB_X66_Y11_N24
\S~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~10_combout\ = \A[7]~input_o\ $ (\B[7]~input_o\ $ (\c[7]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[7]~input_o\,
	datac => \B[7]~input_o\,
	datad => \c[7]~5_combout\,
	combout => \S~10_combout\);

-- Location: IOIBUF_X61_Y0_N29
\A[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: IOIBUF_X61_Y0_N15
\B[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

-- Location: LCCOMB_X66_Y8_N0
\c[8]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[8]~6_combout\ = (\B[6]~input_o\ & ((\c[6]~4_combout\) # ((\A[6]~input_o\) # (\c[6]~3_combout\)))) # (!\B[6]~input_o\ & (\A[6]~input_o\ & ((\c[6]~4_combout\) # (\c[6]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c[6]~4_combout\,
	datab => \B[6]~input_o\,
	datac => \A[6]~input_o\,
	datad => \c[6]~3_combout\,
	combout => \c[8]~6_combout\);

-- Location: LCCOMB_X66_Y8_N6
\c[8]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[8]~7_combout\ = (\A[7]~input_o\ & ((\B[7]~input_o\) # (\c[8]~6_combout\))) # (!\A[7]~input_o\ & (\B[7]~input_o\ & \c[8]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[7]~input_o\,
	datac => \B[7]~input_o\,
	datad => \c[8]~6_combout\,
	combout => \c[8]~7_combout\);

-- Location: LCCOMB_X65_Y8_N24
\S~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~11_combout\ = \A[8]~input_o\ $ (\B[8]~input_o\ $ (\c[8]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[8]~input_o\,
	datac => \B[8]~input_o\,
	datad => \c[8]~7_combout\,
	combout => \S~11_combout\);

-- Location: IOIBUF_X63_Y0_N29
\B[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(9),
	o => \B[9]~input_o\);

-- Location: IOIBUF_X67_Y14_N1
\A[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

-- Location: LCCOMB_X65_Y8_N22
\S~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~12_combout\ = \B[9]~input_o\ $ (\A[9]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[9]~input_o\,
	datac => \A[9]~input_o\,
	combout => \S~12_combout\);

-- Location: LCCOMB_X65_Y8_N28
\S~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~13_combout\ = \S~12_combout\ $ (((\B[8]~input_o\ & ((\A[8]~input_o\) # (\c[8]~7_combout\))) # (!\B[8]~input_o\ & (\A[8]~input_o\ & \c[8]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[8]~input_o\,
	datab => \A[8]~input_o\,
	datac => \S~12_combout\,
	datad => \c[8]~7_combout\,
	combout => \S~13_combout\);

-- Location: IOIBUF_X67_Y19_N15
\A[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

-- Location: IOIBUF_X61_Y0_N1
\B[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(10),
	o => \B[10]~input_o\);

-- Location: LCCOMB_X65_Y8_N6
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|carry1[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|carry1[1]~0_combout\ = (\B[9]~input_o\ & ((\A[9]~input_o\) # ((\B[8]~input_o\) # (\A[8]~input_o\)))) # (!\B[9]~input_o\ & (\A[9]~input_o\ & ((\B[8]~input_o\) # (\A[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[9]~input_o\,
	datab => \A[9]~input_o\,
	datac => \B[8]~input_o\,
	datad => \A[8]~input_o\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|carry1[1]~0_combout\);

-- Location: LCCOMB_X65_Y8_N16
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|carry0[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|carry0[1]~0_combout\ = (\B[9]~input_o\ & ((\A[9]~input_o\) # ((\B[8]~input_o\ & \A[8]~input_o\)))) # (!\B[9]~input_o\ & (\B[8]~input_o\ & (\A[9]~input_o\ & \A[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[9]~input_o\,
	datab => \B[8]~input_o\,
	datac => \A[9]~input_o\,
	datad => \A[8]~input_o\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|carry0[1]~0_combout\);

-- Location: LCCOMB_X65_Y8_N18
\c[10]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[10]~8_combout\ = (\c[8]~7_combout\ & (\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|carry1[1]~0_combout\)) # (!\c[8]~7_combout\ & ((\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|carry0[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|carry1[1]~0_combout\,
	datab => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|carry0[1]~0_combout\,
	datad => \c[8]~7_combout\,
	combout => \c[10]~8_combout\);

-- Location: LCCOMB_X65_Y8_N20
\S~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~14_combout\ = \A[10]~input_o\ $ (\B[10]~input_o\ $ (\c[10]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[10]~input_o\,
	datac => \B[10]~input_o\,
	datad => \c[10]~8_combout\,
	combout => \S~14_combout\);

-- Location: IOIBUF_X61_Y0_N22
\B[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(11),
	o => \B[11]~input_o\);

-- Location: IOIBUF_X61_Y0_N8
\A[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(11),
	o => \A[11]~input_o\);

-- Location: LCCOMB_X65_Y8_N30
\S~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~15_combout\ = \B[11]~input_o\ $ (\A[11]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[11]~input_o\,
	datac => \A[11]~input_o\,
	combout => \S~15_combout\);

-- Location: LCCOMB_X65_Y8_N12
\S~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~16_combout\ = \S~15_combout\ $ (((\B[10]~input_o\ & ((\A[10]~input_o\) # (\c[10]~8_combout\))) # (!\B[10]~input_o\ & (\A[10]~input_o\ & \c[10]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[10]~input_o\,
	datab => \A[10]~input_o\,
	datac => \S~15_combout\,
	datad => \c[10]~8_combout\,
	combout => \S~16_combout\);

-- Location: IOIBUF_X67_Y14_N8
\B[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(12),
	o => \B[12]~input_o\);

-- Location: IOIBUF_X67_Y18_N15
\A[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(12),
	o => \A[12]~input_o\);

-- Location: LCCOMB_X65_Y8_N0
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\ = (\B[11]~input_o\ & ((\A[11]~input_o\) # ((\B[10]~input_o\ & \A[10]~input_o\)))) # (!\B[11]~input_o\ & (\B[10]~input_o\ & (\A[11]~input_o\ & \A[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[10]~input_o\,
	datab => \B[11]~input_o\,
	datac => \A[11]~input_o\,
	datad => \A[10]~input_o\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\);

-- Location: LCCOMB_X66_Y8_N30
\c[12]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[12]~10_combout\ = (\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\ & ((\c[8]~7_combout\ & ((!\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|carry1[1]~0_combout\))) # (!\c[8]~7_combout\ & 
-- (!\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|carry0[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|carry0[1]~0_combout\,
	datab => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|carry1[1]~0_combout\,
	datac => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\,
	datad => \c[8]~7_combout\,
	combout => \c[12]~10_combout\);

-- Location: LCCOMB_X65_Y8_N26
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\ = (\B[11]~input_o\ & ((\B[10]~input_o\) # ((\A[11]~input_o\) # (\A[10]~input_o\)))) # (!\B[11]~input_o\ & (\A[11]~input_o\ & ((\B[10]~input_o\) # (\A[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[10]~input_o\,
	datab => \B[11]~input_o\,
	datac => \A[11]~input_o\,
	datad => \A[10]~input_o\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\);

-- Location: LCCOMB_X66_Y8_N24
\c[12]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[12]~9_combout\ = (\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\ & ((\c[8]~7_combout\ & ((\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|carry1[1]~0_combout\))) # (!\c[8]~7_combout\ & 
-- (\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|carry0[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|carry0[1]~0_combout\,
	datab => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|carry1[1]~0_combout\,
	datac => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\,
	datad => \c[8]~7_combout\,
	combout => \c[12]~9_combout\);

-- Location: LCCOMB_X66_Y10_N20
\S~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~17_combout\ = \B[12]~input_o\ $ (\A[12]~input_o\ $ (((\c[12]~10_combout\) # (\c[12]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[12]~input_o\,
	datab => \A[12]~input_o\,
	datac => \c[12]~10_combout\,
	datad => \c[12]~9_combout\,
	combout => \S~17_combout\);

-- Location: IOIBUF_X67_Y18_N1
\B[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(13),
	o => \B[13]~input_o\);

-- Location: IOIBUF_X67_Y18_N22
\A[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(13),
	o => \A[13]~input_o\);

-- Location: LCCOMB_X66_Y10_N18
\S~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~18_combout\ = (\B[12]~input_o\ & ((\A[12]~input_o\) # ((\c[12]~10_combout\) # (\c[12]~9_combout\)))) # (!\B[12]~input_o\ & (\A[12]~input_o\ & ((\c[12]~10_combout\) # (\c[12]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[12]~input_o\,
	datab => \A[12]~input_o\,
	datac => \c[12]~10_combout\,
	datad => \c[12]~9_combout\,
	combout => \S~18_combout\);

-- Location: LCCOMB_X66_Y10_N4
\S~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~19_combout\ = \B[13]~input_o\ $ (\A[13]~input_o\ $ (\S~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[13]~input_o\,
	datac => \A[13]~input_o\,
	datad => \S~18_combout\,
	combout => \S~19_combout\);

-- Location: IOIBUF_X54_Y0_N29
\A[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(14),
	o => \A[14]~input_o\);

-- Location: IOIBUF_X59_Y0_N29
\B[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(14),
	o => \B[14]~input_o\);

-- Location: LCCOMB_X66_Y8_N28
\c[14]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[14]~11_combout\ = (\B[12]~input_o\ & ((\A[12]~input_o\) # ((\c[12]~10_combout\) # (\c[12]~9_combout\)))) # (!\B[12]~input_o\ & (\A[12]~input_o\ & ((\c[12]~10_combout\) # (\c[12]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[12]~input_o\,
	datab => \A[12]~input_o\,
	datac => \c[12]~10_combout\,
	datad => \c[12]~9_combout\,
	combout => \c[14]~11_combout\);

-- Location: LCCOMB_X66_Y8_N26
\c[14]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[14]~12_combout\ = (\B[13]~input_o\ & ((\A[13]~input_o\) # (\c[14]~11_combout\))) # (!\B[13]~input_o\ & (\A[13]~input_o\ & \c[14]~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[13]~input_o\,
	datac => \A[13]~input_o\,
	datad => \c[14]~11_combout\,
	combout => \c[14]~12_combout\);

-- Location: LCCOMB_X66_Y7_N20
\S~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~20_combout\ = \A[14]~input_o\ $ (\B[14]~input_o\ $ (\c[14]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[14]~input_o\,
	datac => \B[14]~input_o\,
	datad => \c[14]~12_combout\,
	combout => \S~20_combout\);

-- Location: IOIBUF_X59_Y0_N1
\A[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(15),
	o => \A[15]~input_o\);

-- Location: IOIBUF_X67_Y3_N22
\B[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(15),
	o => \B[15]~input_o\);

-- Location: LCCOMB_X66_Y7_N6
\S~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~21_combout\ = \A[15]~input_o\ $ (\B[15]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[15]~input_o\,
	datad => \B[15]~input_o\,
	combout => \S~21_combout\);

-- Location: LCCOMB_X66_Y7_N4
\S~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~22_combout\ = \S~21_combout\ $ (((\A[14]~input_o\ & ((\B[14]~input_o\) # (\c[14]~12_combout\))) # (!\A[14]~input_o\ & (\B[14]~input_o\ & \c[14]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S~21_combout\,
	datab => \A[14]~input_o\,
	datac => \B[14]~input_o\,
	datad => \c[14]~12_combout\,
	combout => \S~22_combout\);

-- Location: LCCOMB_X66_Y6_N6
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|carry0[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|carry0[1]~0_combout\ = (\B[15]~input_o\ & ((\A[15]~input_o\) # ((\A[14]~input_o\ & \B[14]~input_o\)))) # (!\B[15]~input_o\ & (\A[15]~input_o\ & (\A[14]~input_o\ & \B[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[15]~input_o\,
	datab => \A[15]~input_o\,
	datac => \A[14]~input_o\,
	datad => \B[14]~input_o\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|carry0[1]~0_combout\);

-- Location: LCCOMB_X66_Y6_N16
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|carry1[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|carry1[1]~0_combout\ = (\B[15]~input_o\ & ((\A[15]~input_o\) # ((\A[14]~input_o\) # (\B[14]~input_o\)))) # (!\B[15]~input_o\ & (\A[15]~input_o\ & ((\A[14]~input_o\) # (\B[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[15]~input_o\,
	datab => \A[15]~input_o\,
	datac => \A[14]~input_o\,
	datad => \B[14]~input_o\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|carry1[1]~0_combout\);

-- Location: LCCOMB_X66_Y6_N8
\c~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \c~13_combout\ = (\c[14]~12_combout\ & ((\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|carry1[1]~0_combout\))) # (!\c[14]~12_combout\ & (\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|carry0[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|carry0[1]~0_combout\,
	datac => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|carry1[1]~0_combout\,
	datad => \c[14]~12_combout\,
	combout => \c~13_combout\);

-- Location: LCCOMB_X66_Y8_N12
\Ovfl~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Ovfl~0_combout\ = (\c[14]~12_combout\ & (\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|carry1[1]~0_combout\)) # (!\c[14]~12_combout\ & ((\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|carry0[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|carry1[1]~0_combout\,
	datac => \c[14]~12_combout\,
	datad => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|carry0[1]~0_combout\,
	combout => \Ovfl~0_combout\);

-- Location: LCCOMB_X66_Y8_N14
\Ovfl~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Ovfl~1_combout\ = \Ovfl~0_combout\ $ (((\A[14]~input_o\ & ((\B[14]~input_o\) # (\c[14]~12_combout\))) # (!\A[14]~input_o\ & (\B[14]~input_o\ & \c[14]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[14]~input_o\,
	datab => \B[14]~input_o\,
	datac => \c[14]~12_combout\,
	datad => \Ovfl~0_combout\,
	combout => \Ovfl~1_combout\);

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


