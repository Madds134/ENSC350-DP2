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

-- DATE "11/21/2026 11:32:48"

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
-- S[0]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[1]	=>  Location: PIN_P5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[2]	=>  Location: PIN_AE3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[3]	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[4]	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[5]	=>  Location: PIN_AA4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[6]	=>  Location: PIN_W4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[7]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cout	=>  Location: PIN_W5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ovfl	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cin	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_AB2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_T6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_AB3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_AE1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_AD1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_AD3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_W6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_AC3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_AA3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_AC2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_AC1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_AB1,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \S~1_combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\ : std_logic;
SIGNAL \S~2_combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:M1[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:M0[0]~combout\ : std_logic;
SIGNAL \S~3_combout\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:M0[1]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:M1[1]~combout\ : std_logic;
SIGNAL \S~4_combout\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:M0[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:M1[0]~combout\ : std_logic;
SIGNAL \S~5_combout\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:M0[1]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:M1[1]~combout\ : std_logic;
SIGNAL \S~6_combout\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:M1[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:M0[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:M0[2]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:M1[2]~combout\ : std_logic;
SIGNAL \S~7_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:M1[1]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:M0[1]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:M0[3]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:M1[3]~combout\ : std_logic;
SIGNAL \c~0_combout\ : std_logic;
SIGNAL \Ovfl~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|ALT_INV_Recur:M1[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M0[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M1[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|ALT_INV_Recur:M0[3]~combout\ : std_logic;
SIGNAL \CarryNetwork|ALT_INV_Recur:M1[3]~combout\ : std_logic;
SIGNAL \CarryNetwork|ALT_INV_Recur:M0[2]~combout\ : std_logic;
SIGNAL \CarryNetwork|ALT_INV_Recur:M1[2]~combout\ : std_logic;
SIGNAL \CarryNetwork|ALT_INV_Recur:M0[1]~combout\ : std_logic;
SIGNAL \CarryNetwork|ALT_INV_Recur:M1[1]~combout\ : std_logic;
SIGNAL \CarryNetwork|ALT_INV_Recur:M0[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|ALT_INV_Recur:M1[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|ALT_INV_Recur:M0[1]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|ALT_INV_Recur:M1[1]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|ALT_INV_Recur:M0[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|ALT_INV_Recur:M1[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M0[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M1[0]~combout\ : std_logic;
SIGNAL \ALT_INV_B[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_Cin~input_o\ : std_logic;
SIGNAL \ALT_INV_B[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[0]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M0[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M1[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|ALT_INV_Recur:M0[1]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|ALT_INV_Recur:M1[1]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|ALT_INV_Recur:M0[0]~combout\ : std_logic;

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
\CarryNetwork|Recur:HighHalf|ALT_INV_Recur:M1[0]~combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:M1[0]~combout\;
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[0]~combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\;
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[0]~combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\;
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M0[0]~combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\;
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M1[0]~combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\;
\CarryNetwork|ALT_INV_Recur:M0[3]~combout\ <= NOT \CarryNetwork|Recur:M0[3]~combout\;
\CarryNetwork|ALT_INV_Recur:M1[3]~combout\ <= NOT \CarryNetwork|Recur:M1[3]~combout\;
\CarryNetwork|ALT_INV_Recur:M0[2]~combout\ <= NOT \CarryNetwork|Recur:M0[2]~combout\;
\CarryNetwork|ALT_INV_Recur:M1[2]~combout\ <= NOT \CarryNetwork|Recur:M1[2]~combout\;
\CarryNetwork|ALT_INV_Recur:M0[1]~combout\ <= NOT \CarryNetwork|Recur:M0[1]~combout\;
\CarryNetwork|ALT_INV_Recur:M1[1]~combout\ <= NOT \CarryNetwork|Recur:M1[1]~combout\;
\CarryNetwork|ALT_INV_Recur:M0[0]~combout\ <= NOT \CarryNetwork|Recur:M0[0]~combout\;
\CarryNetwork|ALT_INV_Recur:M1[0]~combout\ <= NOT \CarryNetwork|Recur:M1[0]~combout\;
\CarryNetwork|Recur:LowHalf|ALT_INV_Recur:M0[1]~combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:M0[1]~combout\;
\CarryNetwork|Recur:LowHalf|ALT_INV_Recur:M1[1]~combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:M1[1]~combout\;
\CarryNetwork|Recur:LowHalf|ALT_INV_Recur:M0[0]~combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:M0[0]~combout\;
\CarryNetwork|Recur:LowHalf|ALT_INV_Recur:M1[0]~combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:M1[0]~combout\;
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M0[0]~combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\;
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M1[0]~combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\;
\ALT_INV_B[7]~input_o\ <= NOT \B[7]~input_o\;
\ALT_INV_A[7]~input_o\ <= NOT \A[7]~input_o\;
\ALT_INV_B[6]~input_o\ <= NOT \B[6]~input_o\;
\ALT_INV_A[6]~input_o\ <= NOT \A[6]~input_o\;
\ALT_INV_B[5]~input_o\ <= NOT \B[5]~input_o\;
\ALT_INV_A[5]~input_o\ <= NOT \A[5]~input_o\;
\ALT_INV_B[4]~input_o\ <= NOT \B[4]~input_o\;
\ALT_INV_A[4]~input_o\ <= NOT \A[4]~input_o\;
\ALT_INV_B[3]~input_o\ <= NOT \B[3]~input_o\;
\ALT_INV_A[3]~input_o\ <= NOT \A[3]~input_o\;
\ALT_INV_B[2]~input_o\ <= NOT \B[2]~input_o\;
\ALT_INV_A[2]~input_o\ <= NOT \A[2]~input_o\;
\ALT_INV_B[1]~input_o\ <= NOT \B[1]~input_o\;
\ALT_INV_A[1]~input_o\ <= NOT \A[1]~input_o\;
\ALT_INV_Cin~input_o\ <= NOT \Cin~input_o\;
\ALT_INV_B[0]~input_o\ <= NOT \B[0]~input_o\;
\ALT_INV_A[0]~input_o\ <= NOT \A[0]~input_o\;
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M0[0]~combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\;
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M1[0]~combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\;
\CarryNetwork|Recur:HighHalf|ALT_INV_Recur:M0[1]~combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:M0[1]~combout\;
\CarryNetwork|Recur:HighHalf|ALT_INV_Recur:M1[1]~combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:M1[1]~combout\;
\CarryNetwork|Recur:HighHalf|ALT_INV_Recur:M0[0]~combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:M0[0]~combout\;

-- Location: IOOBUF_X59_Y18_N2
\S[0]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~0_combout\,
	devoe => ww_devoe,
	o => \S[0]~output_o\);

-- Location: IOOBUF_X59_Y18_N36
\S[1]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~1_combout\,
	devoe => ww_devoe,
	o => \S[1]~output_o\);

-- Location: IOOBUF_X59_Y9_N67
\S[2]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~2_combout\,
	devoe => ww_devoe,
	o => \S[2]~output_o\);

-- Location: IOOBUF_X59_Y16_N2
\S[3]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~3_combout\,
	devoe => ww_devoe,
	o => \S[3]~output_o\);

-- Location: IOOBUF_X59_Y9_N33
\S[4]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~4_combout\,
	devoe => ww_devoe,
	o => \S[4]~output_o\);

-- Location: IOOBUF_X59_Y10_N2
\S[5]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~5_combout\,
	devoe => ww_devoe,
	o => \S[5]~output_o\);

-- Location: IOOBUF_X59_Y12_N67
\S[6]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~6_combout\,
	devoe => ww_devoe,
	o => \S[6]~output_o\);

-- Location: IOOBUF_X59_Y12_N36
\S[7]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~7_combout\,
	devoe => ww_devoe,
	o => \S[7]~output_o\);

-- Location: IOOBUF_X59_Y12_N2
\Cout~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \c~0_combout\,
	devoe => ww_devoe,
	o => \Cout~output_o\);

-- Location: IOOBUF_X59_Y12_N98
\Ovfl~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Ovfl~0_combout\,
	devoe => ww_devoe,
	o => \Ovfl~output_o\);

-- Location: IOIBUF_X59_Y15_N32
\B[0]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X59_Y18_N63
\Cin~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cin,
	o => \Cin~input_o\);

-- Location: IOIBUF_X59_Y13_N1
\A[0]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: LABCELL_X58_Y15_N18
\S~0\ : arriaii_lcell_comb
-- Equation(s):
-- \S~0_combout\ = ( \Cin~input_o\ & ( \A[0]~input_o\ & ( \B[0]~input_o\ ) ) ) # ( !\Cin~input_o\ & ( \A[0]~input_o\ & ( !\B[0]~input_o\ ) ) ) # ( \Cin~input_o\ & ( !\A[0]~input_o\ & ( !\B[0]~input_o\ ) ) ) # ( !\Cin~input_o\ & ( !\A[0]~input_o\ & ( 
-- \B[0]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111100001111000011110000111100000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[0]~input_o\,
	datae => \ALT_INV_Cin~input_o\,
	dataf => \ALT_INV_A[0]~input_o\,
	combout => \S~0_combout\);

-- Location: IOIBUF_X59_Y15_N94
\B[1]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: IOIBUF_X59_Y13_N94
\A[1]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: LABCELL_X58_Y15_N38
\S~1\ : arriaii_lcell_comb
-- Equation(s):
-- \S~1_combout\ = ( \Cin~input_o\ & ( \A[0]~input_o\ & ( !\B[1]~input_o\ $ (\A[1]~input_o\) ) ) ) # ( !\Cin~input_o\ & ( \A[0]~input_o\ & ( !\B[1]~input_o\ $ (!\B[0]~input_o\ $ (\A[1]~input_o\)) ) ) ) # ( \Cin~input_o\ & ( !\A[0]~input_o\ & ( 
-- !\B[1]~input_o\ $ (!\B[0]~input_o\ $ (\A[1]~input_o\)) ) ) ) # ( !\Cin~input_o\ & ( !\A[0]~input_o\ & ( !\B[1]~input_o\ $ (!\A[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010110101010010110101010010101011010101001011010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_A[1]~input_o\,
	datae => \ALT_INV_Cin~input_o\,
	dataf => \ALT_INV_A[0]~input_o\,
	combout => \S~1_combout\);

-- Location: IOIBUF_X59_Y13_N63
\A[2]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: IOIBUF_X59_Y13_N32
\B[2]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: LABCELL_X58_Y13_N0
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\ = LCELL(( \B[0]~input_o\ & ( \B[1]~input_o\ & ( (\A[0]~input_o\) # (\A[1]~input_o\) ) ) ) # ( !\B[0]~input_o\ & ( \B[1]~input_o\ & ( \A[1]~input_o\ ) ) ) # ( \B[0]~input_o\ & ( !\B[1]~input_o\ 
-- & ( (\A[1]~input_o\ & \A[0]~input_o\) ) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100001111000011110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[1]~input_o\,
	datad => \ALT_INV_A[0]~input_o\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\);

-- Location: LABCELL_X58_Y13_N12
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\ = LCELL(( \B[0]~input_o\ & ( \B[1]~input_o\ ) ) # ( !\B[0]~input_o\ & ( \B[1]~input_o\ & ( (\A[0]~input_o\) # (\A[1]~input_o\) ) ) ) # ( \B[0]~input_o\ & ( !\B[1]~input_o\ & ( \A[1]~input_o\ ) 
-- ) ) # ( !\B[0]~input_o\ & ( !\B[1]~input_o\ & ( (\A[1]~input_o\ & \A[0]~input_o\) ) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000011110000111100001111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[1]~input_o\,
	datad => \ALT_INV_A[0]~input_o\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\);

-- Location: LABCELL_X58_Y13_N26
\S~2\ : arriaii_lcell_comb
-- Equation(s):
-- \S~2_combout\ = ( \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\ & ( !\A[2]~input_o\ $ (!\B[2]~input_o\ $ (((\Cin~input_o\) # (\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\)))) ) ) # ( 
-- !\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\ & ( !\A[2]~input_o\ $ (!\B[2]~input_o\ $ (((\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\ & !\Cin~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101100110011010010110011001101001100110010110100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[2]~input_o\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M0[0]~combout\,
	datad => \ALT_INV_Cin~input_o\,
	dataf => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M1[0]~combout\,
	combout => \S~2_combout\);

-- Location: IOIBUF_X59_Y15_N63
\A[3]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: IOIBUF_X59_Y15_N1
\B[3]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: LABCELL_X58_Y13_N38
\CarryNetwork|Recur:LowHalf|Recur:M1[0]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:M1[0]~combout\ = LCELL(( \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\ & ( (\A[2]~input_o\) # (\B[2]~input_o\) ) ) # ( !\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\ & ( (\B[2]~input_o\ & 
-- \A[2]~input_o\) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[2]~input_o\,
	datad => \ALT_INV_A[2]~input_o\,
	dataf => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M1[0]~combout\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:M1[0]~combout\);

-- Location: LABCELL_X58_Y13_N10
\CarryNetwork|Recur:LowHalf|Recur:M0[0]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:M0[0]~combout\ = LCELL(( \A[2]~input_o\ & ( \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\ ) ) # ( !\A[2]~input_o\ & ( \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\ & ( \B[2]~input_o\ ) ) 
-- ) # ( \A[2]~input_o\ & ( !\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\ & ( \B[2]~input_o\ ) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[2]~input_o\,
	datae => \ALT_INV_A[2]~input_o\,
	dataf => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M0[0]~combout\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:M0[0]~combout\);

-- Location: LABCELL_X58_Y13_N22
\S~3\ : arriaii_lcell_comb
-- Equation(s):
-- \S~3_combout\ = ( \CarryNetwork|Recur:LowHalf|Recur:M1[0]~combout\ & ( \CarryNetwork|Recur:LowHalf|Recur:M0[0]~combout\ & ( !\A[3]~input_o\ $ (\B[3]~input_o\) ) ) ) # ( !\CarryNetwork|Recur:LowHalf|Recur:M1[0]~combout\ & ( 
-- \CarryNetwork|Recur:LowHalf|Recur:M0[0]~combout\ & ( !\A[3]~input_o\ $ (!\B[3]~input_o\ $ (!\Cin~input_o\)) ) ) ) # ( \CarryNetwork|Recur:LowHalf|Recur:M1[0]~combout\ & ( !\CarryNetwork|Recur:LowHalf|Recur:M0[0]~combout\ & ( !\A[3]~input_o\ $ 
-- (!\B[3]~input_o\ $ (\Cin~input_o\)) ) ) ) # ( !\CarryNetwork|Recur:LowHalf|Recur:M1[0]~combout\ & ( !\CarryNetwork|Recur:LowHalf|Recur:M0[0]~combout\ & ( !\A[3]~input_o\ $ (!\B[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000111100001111001100001111000011001111001100001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[3]~input_o\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \ALT_INV_Cin~input_o\,
	datae => \CarryNetwork|Recur:LowHalf|ALT_INV_Recur:M1[0]~combout\,
	dataf => \CarryNetwork|Recur:LowHalf|ALT_INV_Recur:M0[0]~combout\,
	combout => \S~3_combout\);

-- Location: IOIBUF_X59_Y9_N94
\B[4]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: IOIBUF_X59_Y9_N1
\A[4]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: LABCELL_X58_Y13_N36
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\ = LCELL(( \A[3]~input_o\ & ( ((\B[2]~input_o\ & \A[2]~input_o\)) # (\B[3]~input_o\) ) ) # ( !\A[3]~input_o\ & ( (\B[2]~input_o\ & (\B[3]~input_o\ & \A[2]~input_o\)) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100001111010111110000111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \ALT_INV_A[2]~input_o\,
	dataf => \ALT_INV_A[3]~input_o\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\);

-- Location: LABCELL_X58_Y13_N6
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\ = LCELL(( \B[3]~input_o\ & ( \A[3]~input_o\ ) ) # ( !\B[3]~input_o\ & ( \A[3]~input_o\ & ( (\A[2]~input_o\) # (\B[2]~input_o\) ) ) ) # ( \B[3]~input_o\ & ( !\A[3]~input_o\ & ( 
-- (\A[2]~input_o\) # (\B[2]~input_o\) ) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011111111111100001111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[2]~input_o\,
	datad => \ALT_INV_A[2]~input_o\,
	datae => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_A[3]~input_o\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\);

-- Location: LABCELL_X58_Y13_N24
\CarryNetwork|Recur:LowHalf|Recur:M0[1]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:M0[1]~combout\ = LCELL(( \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\ & ( (\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\) # 
-- (\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\) ) ) # ( !\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\ & ( (!\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\ & 
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M0[0]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M0[0]~combout\,
	dataf => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M1[0]~combout\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:M0[1]~combout\);

-- Location: LABCELL_X58_Y13_N28
\CarryNetwork|Recur:LowHalf|Recur:M1[1]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:M1[1]~combout\ = LCELL(( \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\ & ( \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\ ) ) # ( 
-- !\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\ & ( \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\ & ( \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\ ) ) ) # ( 
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\ & ( !\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\ & ( !\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\ ) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M1[0]~combout\,
	datae => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M0[0]~combout\,
	dataf => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M1[0]~combout\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:M1[1]~combout\);

-- Location: LABCELL_X58_Y13_N18
\S~4\ : arriaii_lcell_comb
-- Equation(s):
-- \S~4_combout\ = ( \CarryNetwork|Recur:LowHalf|Recur:M0[1]~combout\ & ( \CarryNetwork|Recur:LowHalf|Recur:M1[1]~combout\ & ( !\B[4]~input_o\ $ (\A[4]~input_o\) ) ) ) # ( !\CarryNetwork|Recur:LowHalf|Recur:M0[1]~combout\ & ( 
-- \CarryNetwork|Recur:LowHalf|Recur:M1[1]~combout\ & ( !\B[4]~input_o\ $ (!\A[4]~input_o\ $ (\Cin~input_o\)) ) ) ) # ( \CarryNetwork|Recur:LowHalf|Recur:M0[1]~combout\ & ( !\CarryNetwork|Recur:LowHalf|Recur:M1[1]~combout\ & ( !\B[4]~input_o\ $ 
-- (!\A[4]~input_o\ $ (!\Cin~input_o\)) ) ) ) # ( !\CarryNetwork|Recur:LowHalf|Recur:M0[1]~combout\ & ( !\CarryNetwork|Recur:LowHalf|Recur:M1[1]~combout\ & ( !\B[4]~input_o\ $ (!\A[4]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000111100110000110011110000111100110000111100001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[4]~input_o\,
	datac => \ALT_INV_A[4]~input_o\,
	datad => \ALT_INV_Cin~input_o\,
	datae => \CarryNetwork|Recur:LowHalf|ALT_INV_Recur:M0[1]~combout\,
	dataf => \CarryNetwork|Recur:LowHalf|ALT_INV_Recur:M1[1]~combout\,
	combout => \S~4_combout\);

-- Location: IOIBUF_X59_Y10_N32
\A[5]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: IOIBUF_X59_Y10_N63
\B[5]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: LABCELL_X58_Y13_N32
\CarryNetwork|Recur:M0[0]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:M0[0]~combout\ = LCELL(( \B[4]~input_o\ & ( \CarryNetwork|Recur:LowHalf|Recur:M0[1]~combout\ ) ) # ( !\B[4]~input_o\ & ( \CarryNetwork|Recur:LowHalf|Recur:M0[1]~combout\ & ( \A[4]~input_o\ ) ) ) # ( \B[4]~input_o\ & ( 
-- !\CarryNetwork|Recur:LowHalf|Recur:M0[1]~combout\ & ( \A[4]~input_o\ ) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[4]~input_o\,
	datae => \ALT_INV_B[4]~input_o\,
	dataf => \CarryNetwork|Recur:LowHalf|ALT_INV_Recur:M0[1]~combout\,
	combout => \CarryNetwork|Recur:M0[0]~combout\);

-- Location: LABCELL_X58_Y10_N20
\CarryNetwork|Recur:M1[0]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:M1[0]~combout\ = LCELL(( \B[4]~input_o\ & ( \CarryNetwork|Recur:LowHalf|Recur:M1[1]~combout\ ) ) # ( !\B[4]~input_o\ & ( \CarryNetwork|Recur:LowHalf|Recur:M1[1]~combout\ & ( \A[4]~input_o\ ) ) ) # ( \B[4]~input_o\ & ( 
-- !\CarryNetwork|Recur:LowHalf|Recur:M1[1]~combout\ & ( \A[4]~input_o\ ) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[4]~input_o\,
	datae => \ALT_INV_B[4]~input_o\,
	dataf => \CarryNetwork|Recur:LowHalf|ALT_INV_Recur:M1[1]~combout\,
	combout => \CarryNetwork|Recur:M1[0]~combout\);

-- Location: LABCELL_X58_Y10_N2
\S~5\ : arriaii_lcell_comb
-- Equation(s):
-- \S~5_combout\ = ( \CarryNetwork|Recur:M0[0]~combout\ & ( \CarryNetwork|Recur:M1[0]~combout\ & ( !\A[5]~input_o\ $ (\B[5]~input_o\) ) ) ) # ( !\CarryNetwork|Recur:M0[0]~combout\ & ( \CarryNetwork|Recur:M1[0]~combout\ & ( !\Cin~input_o\ $ (!\A[5]~input_o\ $ 
-- (\B[5]~input_o\)) ) ) ) # ( \CarryNetwork|Recur:M0[0]~combout\ & ( !\CarryNetwork|Recur:M1[0]~combout\ & ( !\Cin~input_o\ $ (!\A[5]~input_o\ $ (!\B[5]~input_o\)) ) ) ) # ( !\CarryNetwork|Recur:M0[0]~combout\ & ( !\CarryNetwork|Recur:M1[0]~combout\ & ( 
-- !\A[5]~input_o\ $ (!\B[5]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000110000110011110000111100110000111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Cin~input_o\,
	datac => \ALT_INV_A[5]~input_o\,
	datad => \ALT_INV_B[5]~input_o\,
	datae => \CarryNetwork|ALT_INV_Recur:M0[0]~combout\,
	dataf => \CarryNetwork|ALT_INV_Recur:M1[0]~combout\,
	combout => \S~5_combout\);

-- Location: IOIBUF_X59_Y10_N94
\B[6]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: IOIBUF_X59_Y16_N63
\A[6]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: LABCELL_X58_Y12_N20
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\ = LCELL(( \A[4]~input_o\ & ( (!\B[4]~input_o\ & (\A[5]~input_o\ & \B[5]~input_o\)) # (\B[4]~input_o\ & ((\B[5]~input_o\) # (\A[5]~input_o\))) ) ) # ( !\A[4]~input_o\ & ( (\A[5]~input_o\ & 
-- \B[5]~input_o\) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000101010111110000010101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datac => \ALT_INV_A[5]~input_o\,
	datad => \ALT_INV_B[5]~input_o\,
	dataf => \ALT_INV_A[4]~input_o\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\);

-- Location: LABCELL_X58_Y12_N18
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\ = LCELL(( \A[4]~input_o\ & ( (\A[5]~input_o\) # (\B[5]~input_o\) ) ) # ( !\A[4]~input_o\ & ( (!\B[4]~input_o\ & (\B[5]~input_o\ & \A[5]~input_o\)) # (\B[4]~input_o\ & ((\A[5]~input_o\) # 
-- (\B[5]~input_o\))) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101011111000001010101111100001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datac => \ALT_INV_B[5]~input_o\,
	datad => \ALT_INV_A[5]~input_o\,
	dataf => \ALT_INV_A[4]~input_o\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\);

-- Location: LABCELL_X58_Y12_N2
\CarryNetwork|Recur:M0[1]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:M0[1]~combout\ = LCELL(( \CarryNetwork|Recur:LowHalf|Recur:M0[1]~combout\ & ( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\ ) ) # ( !\CarryNetwork|Recur:LowHalf|Recur:M0[1]~combout\ & ( 
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[0]~combout\,
	datad => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[0]~combout\,
	dataf => \CarryNetwork|Recur:LowHalf|ALT_INV_Recur:M0[1]~combout\,
	combout => \CarryNetwork|Recur:M0[1]~combout\);

-- Location: LABCELL_X58_Y12_N32
\CarryNetwork|Recur:M1[1]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:M1[1]~combout\ = LCELL(( \CarryNetwork|Recur:LowHalf|Recur:M1[1]~combout\ & ( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\ ) ) # ( !\CarryNetwork|Recur:LowHalf|Recur:M1[1]~combout\ & ( 
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[0]~combout\,
	datad => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[0]~combout\,
	dataf => \CarryNetwork|Recur:LowHalf|ALT_INV_Recur:M1[1]~combout\,
	combout => \CarryNetwork|Recur:M1[1]~combout\);

-- Location: LABCELL_X58_Y12_N34
\S~6\ : arriaii_lcell_comb
-- Equation(s):
-- \S~6_combout\ = ( \CarryNetwork|Recur:M1[1]~combout\ & ( !\B[6]~input_o\ $ (!\A[6]~input_o\ $ (((\Cin~input_o\) # (\CarryNetwork|Recur:M0[1]~combout\)))) ) ) # ( !\CarryNetwork|Recur:M1[1]~combout\ & ( !\B[6]~input_o\ $ (!\A[6]~input_o\ $ 
-- (((\CarryNetwork|Recur:M0[1]~combout\ & !\Cin~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101100110011010010110011001101001100110010110100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[6]~input_o\,
	datab => \ALT_INV_A[6]~input_o\,
	datac => \CarryNetwork|ALT_INV_Recur:M0[1]~combout\,
	datad => \ALT_INV_Cin~input_o\,
	dataf => \CarryNetwork|ALT_INV_Recur:M1[1]~combout\,
	combout => \S~6_combout\);

-- Location: IOIBUF_X59_Y16_N94
\A[7]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: IOIBUF_X59_Y16_N32
\B[7]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: LABCELL_X58_Y12_N10
\CarryNetwork|Recur:HighHalf|Recur:M1[0]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:M1[0]~combout\ = LCELL(( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\ & ( (\B[6]~input_o\) # (\A[6]~input_o\) ) ) # ( !\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\ & ( 
-- (\A[6]~input_o\ & \B[6]~input_o\) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[6]~input_o\,
	datad => \ALT_INV_B[6]~input_o\,
	dataf => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[0]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:M1[0]~combout\);

-- Location: LABCELL_X58_Y12_N36
\CarryNetwork|Recur:HighHalf|Recur:M0[0]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:M0[0]~combout\ = LCELL(( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\ & ( (\A[6]~input_o\) # (\B[6]~input_o\) ) ) # ( !\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\ & ( 
-- (\B[6]~input_o\ & \A[6]~input_o\) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[6]~input_o\,
	datad => \ALT_INV_A[6]~input_o\,
	dataf => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[0]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:M0[0]~combout\);

-- Location: LABCELL_X58_Y12_N0
\CarryNetwork|Recur:M0[2]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:M0[2]~combout\ = LCELL(( \CarryNetwork|Recur:LowHalf|Recur:M0[1]~combout\ & ( \CarryNetwork|Recur:HighHalf|Recur:M1[0]~combout\ ) ) # ( !\CarryNetwork|Recur:LowHalf|Recur:M0[1]~combout\ & ( 
-- \CarryNetwork|Recur:HighHalf|Recur:M0[0]~combout\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:HighHalf|ALT_INV_Recur:M1[0]~combout\,
	datad => \CarryNetwork|Recur:HighHalf|ALT_INV_Recur:M0[0]~combout\,
	dataf => \CarryNetwork|Recur:LowHalf|ALT_INV_Recur:M0[1]~combout\,
	combout => \CarryNetwork|Recur:M0[2]~combout\);

-- Location: LABCELL_X58_Y12_N14
\CarryNetwork|Recur:M1[2]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:M1[2]~combout\ = LCELL(( \CarryNetwork|Recur:LowHalf|Recur:M1[1]~combout\ & ( \CarryNetwork|Recur:HighHalf|Recur:M1[0]~combout\ ) ) # ( !\CarryNetwork|Recur:LowHalf|Recur:M1[1]~combout\ & ( 
-- \CarryNetwork|Recur:HighHalf|Recur:M0[0]~combout\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:HighHalf|ALT_INV_Recur:M1[0]~combout\,
	datad => \CarryNetwork|Recur:HighHalf|ALT_INV_Recur:M0[0]~combout\,
	dataf => \CarryNetwork|Recur:LowHalf|ALT_INV_Recur:M1[1]~combout\,
	combout => \CarryNetwork|Recur:M1[2]~combout\);

-- Location: LABCELL_X58_Y12_N12
\S~7\ : arriaii_lcell_comb
-- Equation(s):
-- \S~7_combout\ = ( \CarryNetwork|Recur:M1[2]~combout\ & ( !\A[7]~input_o\ $ (!\B[7]~input_o\ $ (((\Cin~input_o\) # (\CarryNetwork|Recur:M0[2]~combout\)))) ) ) # ( !\CarryNetwork|Recur:M1[2]~combout\ & ( !\A[7]~input_o\ $ (!\B[7]~input_o\ $ 
-- (((\CarryNetwork|Recur:M0[2]~combout\ & !\Cin~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101100110011010010110011001101001100110010110100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[7]~input_o\,
	datab => \ALT_INV_B[7]~input_o\,
	datac => \CarryNetwork|ALT_INV_Recur:M0[2]~combout\,
	datad => \ALT_INV_Cin~input_o\,
	dataf => \CarryNetwork|ALT_INV_Recur:M1[2]~combout\,
	combout => \S~7_combout\);

-- Location: LABCELL_X58_Y12_N22
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\ = LCELL(( \A[6]~input_o\ & ( (!\B[7]~input_o\ & (\B[6]~input_o\ & \A[7]~input_o\)) # (\B[7]~input_o\ & ((\A[7]~input_o\) # (\B[6]~input_o\))) ) ) # ( !\A[6]~input_o\ & ( (\B[7]~input_o\ & 
-- \A[7]~input_o\) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100000011001111110000001100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[7]~input_o\,
	datac => \ALT_INV_B[6]~input_o\,
	datad => \ALT_INV_A[7]~input_o\,
	dataf => \ALT_INV_A[6]~input_o\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\);

-- Location: LABCELL_X58_Y12_N38
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\ = LCELL(( \A[7]~input_o\ & ( ((\B[6]~input_o\) # (\B[7]~input_o\)) # (\A[6]~input_o\) ) ) # ( !\A[7]~input_o\ & ( (\B[7]~input_o\ & ((\B[6]~input_o\) # (\A[6]~input_o\))) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100001111000001010000111101011111111111110101111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[6]~input_o\,
	datac => \ALT_INV_B[7]~input_o\,
	datad => \ALT_INV_B[6]~input_o\,
	dataf => \ALT_INV_A[7]~input_o\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\);

-- Location: LABCELL_X58_Y12_N4
\CarryNetwork|Recur:HighHalf|Recur:M1[1]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:M1[1]~combout\ = LCELL(( \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\ & ( (\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\) # 
-- (\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\) ) ) # ( !\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\ & ( (\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\ & 
-- !\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M0[0]~combout\,
	datad => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[0]~combout\,
	dataf => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M1[0]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:M1[1]~combout\);

-- Location: LABCELL_X58_Y12_N8
\CarryNetwork|Recur:HighHalf|Recur:M0[1]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:M0[1]~combout\ = LCELL(( \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\ & ( (\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\) # 
-- (\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\) ) ) # ( !\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\ & ( (!\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\ & 
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[0]~combout\,
	datad => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M0[0]~combout\,
	dataf => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M1[0]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:M0[1]~combout\);

-- Location: LABCELL_X58_Y12_N24
\CarryNetwork|Recur:M0[3]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:M0[3]~combout\ = LCELL(( \CarryNetwork|Recur:HighHalf|Recur:M0[1]~combout\ & ( \CarryNetwork|Recur:LowHalf|Recur:M0[1]~combout\ & ( \CarryNetwork|Recur:HighHalf|Recur:M1[1]~combout\ ) ) ) # ( 
-- !\CarryNetwork|Recur:HighHalf|Recur:M0[1]~combout\ & ( \CarryNetwork|Recur:LowHalf|Recur:M0[1]~combout\ & ( \CarryNetwork|Recur:HighHalf|Recur:M1[1]~combout\ ) ) ) # ( \CarryNetwork|Recur:HighHalf|Recur:M0[1]~combout\ & ( 
-- !\CarryNetwork|Recur:LowHalf|Recur:M0[1]~combout\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:HighHalf|ALT_INV_Recur:M1[1]~combout\,
	datae => \CarryNetwork|Recur:HighHalf|ALT_INV_Recur:M0[1]~combout\,
	dataf => \CarryNetwork|Recur:LowHalf|ALT_INV_Recur:M0[1]~combout\,
	combout => \CarryNetwork|Recur:M0[3]~combout\);

-- Location: LABCELL_X58_Y12_N6
\CarryNetwork|Recur:M1[3]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:M1[3]~combout\ = LCELL(( \CarryNetwork|Recur:LowHalf|Recur:M1[1]~combout\ & ( \CarryNetwork|Recur:HighHalf|Recur:M1[1]~combout\ ) ) # ( !\CarryNetwork|Recur:LowHalf|Recur:M1[1]~combout\ & ( 
-- \CarryNetwork|Recur:HighHalf|Recur:M0[1]~combout\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:HighHalf|ALT_INV_Recur:M1[1]~combout\,
	datad => \CarryNetwork|Recur:HighHalf|ALT_INV_Recur:M0[1]~combout\,
	dataf => \CarryNetwork|Recur:LowHalf|ALT_INV_Recur:M1[1]~combout\,
	combout => \CarryNetwork|Recur:M1[3]~combout\);

-- Location: LABCELL_X58_Y12_N16
\c~0\ : arriaii_lcell_comb
-- Equation(s):
-- \c~0_combout\ = ( \CarryNetwork|Recur:M1[3]~combout\ & ( (\Cin~input_o\) # (\CarryNetwork|Recur:M0[3]~combout\) ) ) # ( !\CarryNetwork|Recur:M1[3]~combout\ & ( (\CarryNetwork|Recur:M0[3]~combout\ & !\Cin~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|ALT_INV_Recur:M0[3]~combout\,
	datad => \ALT_INV_Cin~input_o\,
	dataf => \CarryNetwork|ALT_INV_Recur:M1[3]~combout\,
	combout => \c~0_combout\);

-- Location: LABCELL_X58_Y12_N28
\Ovfl~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Ovfl~0_combout\ = ( \CarryNetwork|Recur:M0[2]~combout\ & ( \CarryNetwork|Recur:M1[2]~combout\ & ( (!\Cin~input_o\ & (!\CarryNetwork|Recur:M0[3]~combout\)) # (\Cin~input_o\ & ((!\CarryNetwork|Recur:M1[3]~combout\))) ) ) ) # ( 
-- !\CarryNetwork|Recur:M0[2]~combout\ & ( \CarryNetwork|Recur:M1[2]~combout\ & ( (!\Cin~input_o\ & (\CarryNetwork|Recur:M0[3]~combout\)) # (\Cin~input_o\ & ((!\CarryNetwork|Recur:M1[3]~combout\))) ) ) ) # ( \CarryNetwork|Recur:M0[2]~combout\ & ( 
-- !\CarryNetwork|Recur:M1[2]~combout\ & ( (!\Cin~input_o\ & (!\CarryNetwork|Recur:M0[3]~combout\)) # (\Cin~input_o\ & ((\CarryNetwork|Recur:M1[3]~combout\))) ) ) ) # ( !\CarryNetwork|Recur:M0[2]~combout\ & ( !\CarryNetwork|Recur:M1[2]~combout\ & ( 
-- (!\Cin~input_o\ & (\CarryNetwork|Recur:M0[3]~combout\)) # (\Cin~input_o\ & ((\CarryNetwork|Recur:M1[3]~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111111110000001111001100111111000011001111001111000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Cin~input_o\,
	datac => \CarryNetwork|ALT_INV_Recur:M0[3]~combout\,
	datad => \CarryNetwork|ALT_INV_Recur:M1[3]~combout\,
	datae => \CarryNetwork|ALT_INV_Recur:M0[2]~combout\,
	dataf => \CarryNetwork|ALT_INV_Recur:M1[2]~combout\,
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


