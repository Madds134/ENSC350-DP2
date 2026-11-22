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

-- DATE "11/21/2026 11:45:38"

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
-- S[0]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[1]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[2]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[3]	=>  Location: PIN_AH10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[4]	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[5]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[6]	=>  Location: PIN_AC15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[7]	=>  Location: PIN_AD15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[8]	=>  Location: PIN_AC10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[9]	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[10]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[11]	=>  Location: PIN_AC11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[12]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[13]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[14]	=>  Location: PIN_AF13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[15]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cout	=>  Location: PIN_AG12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ovfl	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_AG11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_AH11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cin	=>  Location: PIN_AF12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_AE14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_AD14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_AE13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_AF11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_Y12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[8]	=>  Location: PIN_AH12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[9]	=>  Location: PIN_AF16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_AE15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[10]	=>  Location: PIN_AG10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[11]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[11]	=>  Location: PIN_AF15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[12]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[12]	=>  Location: PIN_AE16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[13]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[13]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[14]	=>  Location: PIN_AE10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[14]	=>  Location: PIN_AE9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[15]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[15]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \Cin~input_o\ : std_logic;
SIGNAL \S~0_combout\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \S~1_combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:Low_half|Recur:Low_half|cMid~0_combout\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \S~2_combout\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:cMid~0_combout\ : std_logic;
SIGNAL \S~3_combout\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|BG~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:Low_half|Recur:Low_half|BG~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:Low_half|Recur:Low_half|BG~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:Low_half|cMid~0_combout\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \S~4_combout\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:cMid~0_combout\ : std_logic;
SIGNAL \S~5_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|BG~0_combout\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:Low_half|Recur:High_half|cMid~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:Low_half|Recur:High_half|cMid~1_combout\ : std_logic;
SIGNAL \S~6_combout\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:cMid~0_combout\ : std_logic;
SIGNAL \S~7_combout\ : std_logic;
SIGNAL \B[8]~input_o\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:Low_half|Recur:High_half|BG~0_combout\ : std_logic;
SIGNAL \CarryNetwork|cMid~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|BG~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:Low_half|BG~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:Low_half|BG~combout\ : std_logic;
SIGNAL \S~8_combout\ : std_logic;
SIGNAL \B[9]~input_o\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:cMid~0_combout\ : std_logic;
SIGNAL \S~9_combout\ : std_logic;
SIGNAL \B[10]~input_o\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|BG~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:High_half|Recur:Low_half|cMid~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:High_half|Recur:Low_half|cMid~1_combout\ : std_logic;
SIGNAL \S~10_combout\ : std_logic;
SIGNAL \B[11]~input_o\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:cMid~0_combout\ : std_logic;
SIGNAL \S~11_combout\ : std_logic;
SIGNAL \B[12]~input_o\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:High_half|Recur:Low_half|BG~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|BG~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:High_half|Recur:Low_half|BG~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:High_half|cMid~0_combout\ : std_logic;
SIGNAL \S~12_combout\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \B[13]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:cMid~0_combout\ : std_logic;
SIGNAL \S~13_combout\ : std_logic;
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \B[14]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|BG~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:High_half|Recur:High_half|cMid~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:High_half|Recur:High_half|cMid~1_combout\ : std_logic;
SIGNAL \S~14_combout\ : std_logic;
SIGNAL \B[15]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|Recur:cMid~0_combout\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \S~15_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|Recur:High_half|c[1]~0_combout\ : std_logic;
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

-- Location: IOOBUF_X67_Y0_N9
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

-- Location: IOOBUF_X67_Y0_N16
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

-- Location: IOOBUF_X29_Y0_N16
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

-- Location: IOOBUF_X31_Y0_N2
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

-- Location: IOOBUF_X67_Y0_N2
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

-- Location: IOOBUF_X33_Y0_N9
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

-- Location: IOOBUF_X60_Y0_N23
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

-- Location: IOOBUF_X60_Y0_N16
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

-- Location: IOOBUF_X38_Y0_N2
\S[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~8_combout\,
	devoe => ww_devoe,
	o => \S[8]~output_o\);

-- Location: IOOBUF_X56_Y0_N23
\S[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~9_combout\,
	devoe => ww_devoe,
	o => \S[9]~output_o\);

-- Location: IOOBUF_X54_Y0_N23
\S[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~10_combout\,
	devoe => ww_devoe,
	o => \S[10]~output_o\);

-- Location: IOOBUF_X49_Y0_N9
\S[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~11_combout\,
	devoe => ww_devoe,
	o => \S[11]~output_o\);

-- Location: IOOBUF_X56_Y0_N2
\S[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~12_combout\,
	devoe => ww_devoe,
	o => \S[12]~output_o\);

-- Location: IOOBUF_X54_Y0_N16
\S[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~13_combout\,
	devoe => ww_devoe,
	o => \S[13]~output_o\);

-- Location: IOOBUF_X42_Y0_N16
\S[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~14_combout\,
	devoe => ww_devoe,
	o => \S[14]~output_o\);

-- Location: IOOBUF_X47_Y0_N2
\S[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~15_combout\,
	devoe => ww_devoe,
	o => \S[15]~output_o\);

-- Location: IOOBUF_X54_Y0_N9
\Cout~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|Recur:High_half|c[1]~0_combout\,
	devoe => ww_devoe,
	o => \Cout~output_o\);

-- Location: IOOBUF_X52_Y0_N16
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

-- Location: IOIBUF_X40_Y0_N15
\B[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X40_Y0_N22
\A[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X33_Y0_N1
\Cin~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cin,
	o => \Cin~input_o\);

-- Location: LCCOMB_X41_Y1_N12
\S~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~0_combout\ = \B[0]~input_o\ $ (\A[0]~input_o\ $ (\Cin~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[0]~input_o\,
	datad => \Cin~input_o\,
	combout => \S~0_combout\);

-- Location: IOIBUF_X49_Y0_N1
\A[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: IOIBUF_X47_Y0_N8
\B[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: LCCOMB_X48_Y2_N8
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

-- Location: LCCOMB_X48_Y2_N30
\S~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~1_combout\ = p(1) $ (((\B[0]~input_o\ & ((\A[0]~input_o\) # (\Cin~input_o\))) # (!\B[0]~input_o\ & (\A[0]~input_o\ & \Cin~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[0]~input_o\,
	datac => p(1),
	datad => \Cin~input_o\,
	combout => \S~1_combout\);

-- Location: IOIBUF_X49_Y0_N22
\A[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: LCCOMB_X48_Y2_N16
\CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~0_combout\ = (\B[1]~input_o\ & ((\A[1]~input_o\) # ((\B[0]~input_o\ & \A[0]~input_o\)))) # (!\B[1]~input_o\ & (\A[1]~input_o\ & (\B[0]~input_o\ & \A[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[1]~input_o\,
	datac => \B[0]~input_o\,
	datad => \A[0]~input_o\,
	combout => \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~0_combout\);

-- Location: LCCOMB_X48_Y2_N14
\CarryNetwork|Recur:Low_half|Recur:Low_half|cMid~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:Low_half|Recur:Low_half|cMid~0_combout\ = (p(1) & (\Cin~input_o\ & (\B[0]~input_o\ $ (\A[0]~input_o\))))

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
	combout => \CarryNetwork|Recur:Low_half|Recur:Low_half|cMid~0_combout\);

-- Location: IOIBUF_X56_Y0_N15
\B[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: LCCOMB_X48_Y2_N4
\S~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~2_combout\ = \A[2]~input_o\ $ (\B[2]~input_o\ $ (((\CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~0_combout\) # (\CarryNetwork|Recur:Low_half|Recur:Low_half|cMid~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~0_combout\,
	datac => \CarryNetwork|Recur:Low_half|Recur:Low_half|cMid~0_combout\,
	datad => \B[2]~input_o\,
	combout => \S~2_combout\);

-- Location: IOIBUF_X45_Y0_N15
\B[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: IOIBUF_X45_Y0_N22
\A[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: LCCOMB_X48_Y2_N18
\CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:cMid~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:cMid~0_combout\ = (\A[2]~input_o\ & ((\CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~0_combout\) # ((\CarryNetwork|Recur:Low_half|Recur:Low_half|cMid~0_combout\) # 
-- (\B[2]~input_o\)))) # (!\A[2]~input_o\ & (\B[2]~input_o\ & ((\CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~0_combout\) # (\CarryNetwork|Recur:Low_half|Recur:Low_half|cMid~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~0_combout\,
	datac => \CarryNetwork|Recur:Low_half|Recur:Low_half|cMid~0_combout\,
	datad => \B[2]~input_o\,
	combout => \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:cMid~0_combout\);

-- Location: LCCOMB_X48_Y2_N24
\S~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~3_combout\ = \B[3]~input_o\ $ (\A[3]~input_o\ $ (\CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:cMid~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datac => \A[3]~input_o\,
	datad => \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:cMid~0_combout\,
	combout => \S~3_combout\);

-- Location: IOIBUF_X42_Y0_N22
\A[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: LCCOMB_X49_Y2_N4
\CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|BG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|BG~0_combout\ = (\B[3]~input_o\ & ((\A[3]~input_o\) # ((\A[2]~input_o\ & \B[2]~input_o\)))) # (!\B[3]~input_o\ & (\A[2]~input_o\ & (\A[3]~input_o\ & \B[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \B[3]~input_o\,
	datac => \A[3]~input_o\,
	datad => \B[2]~input_o\,
	combout => \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|BG~0_combout\);

-- Location: LCCOMB_X49_Y2_N2
\CarryNetwork|Recur:Low_half|Recur:Low_half|BG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:Low_half|Recur:Low_half|BG~0_combout\ = (\A[2]~input_o\ & (!\B[2]~input_o\ & (\B[3]~input_o\ $ (\A[3]~input_o\)))) # (!\A[2]~input_o\ & (\B[2]~input_o\ & (\B[3]~input_o\ $ (\A[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \B[3]~input_o\,
	datac => \A[3]~input_o\,
	datad => \B[2]~input_o\,
	combout => \CarryNetwork|Recur:Low_half|Recur:Low_half|BG~0_combout\);

-- Location: LCCOMB_X49_Y2_N8
\CarryNetwork|Recur:Low_half|Recur:Low_half|BG\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:Low_half|Recur:Low_half|BG~combout\ = (\CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|BG~0_combout\) # ((\CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~0_combout\ & 
-- \CarryNetwork|Recur:Low_half|Recur:Low_half|BG~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|BG~0_combout\,
	datac => \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~0_combout\,
	datad => \CarryNetwork|Recur:Low_half|Recur:Low_half|BG~0_combout\,
	combout => \CarryNetwork|Recur:Low_half|Recur:Low_half|BG~combout\);

-- Location: LCCOMB_X48_Y2_N26
\CarryNetwork|Recur:Low_half|cMid~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:Low_half|cMid~0_combout\ = (\CarryNetwork|Recur:Low_half|Recur:Low_half|cMid~0_combout\ & \CarryNetwork|Recur:Low_half|Recur:Low_half|BG~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:Low_half|Recur:Low_half|cMid~0_combout\,
	datad => \CarryNetwork|Recur:Low_half|Recur:Low_half|BG~0_combout\,
	combout => \CarryNetwork|Recur:Low_half|cMid~0_combout\);

-- Location: IOIBUF_X35_Y0_N15
\B[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: LCCOMB_X48_Y2_N28
\S~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~4_combout\ = \A[4]~input_o\ $ (\B[4]~input_o\ $ (((\CarryNetwork|Recur:Low_half|Recur:Low_half|BG~combout\) # (\CarryNetwork|Recur:Low_half|cMid~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datab => \CarryNetwork|Recur:Low_half|Recur:Low_half|BG~combout\,
	datac => \CarryNetwork|Recur:Low_half|cMid~0_combout\,
	datad => \B[4]~input_o\,
	combout => \S~4_combout\);

-- Location: IOIBUF_X38_Y0_N8
\A[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: IOIBUF_X56_Y0_N8
\B[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: LCCOMB_X48_Y2_N6
\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:cMid~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:cMid~0_combout\ = (\A[4]~input_o\ & ((\B[4]~input_o\) # ((\CarryNetwork|Recur:Low_half|Recur:Low_half|BG~combout\) # (\CarryNetwork|Recur:Low_half|cMid~0_combout\)))) # (!\A[4]~input_o\ & 
-- (\B[4]~input_o\ & ((\CarryNetwork|Recur:Low_half|Recur:Low_half|BG~combout\) # (\CarryNetwork|Recur:Low_half|cMid~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datab => \B[4]~input_o\,
	datac => \CarryNetwork|Recur:Low_half|Recur:Low_half|BG~combout\,
	datad => \CarryNetwork|Recur:Low_half|cMid~0_combout\,
	combout => \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:cMid~0_combout\);

-- Location: LCCOMB_X48_Y2_N0
\S~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~5_combout\ = \A[5]~input_o\ $ (\B[5]~input_o\ $ (\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:cMid~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[5]~input_o\,
	datac => \B[5]~input_o\,
	datad => \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:cMid~0_combout\,
	combout => \S~5_combout\);

-- Location: LCCOMB_X49_Y2_N6
\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|BG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|BG~0_combout\ = (\B[5]~input_o\ & ((\A[5]~input_o\) # ((\A[4]~input_o\ & \B[4]~input_o\)))) # (!\B[5]~input_o\ & (\A[4]~input_o\ & (\A[5]~input_o\ & \B[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datab => \B[5]~input_o\,
	datac => \A[5]~input_o\,
	datad => \B[4]~input_o\,
	combout => \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|BG~0_combout\);

-- Location: IOIBUF_X52_Y0_N22
\B[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: IOIBUF_X52_Y0_N8
\A[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: LCCOMB_X49_Y2_N16
\CarryNetwork|Recur:Low_half|Recur:High_half|cMid~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:Low_half|Recur:High_half|cMid~0_combout\ = (\A[4]~input_o\ & (!\B[4]~input_o\ & (\B[5]~input_o\ $ (\A[5]~input_o\)))) # (!\A[4]~input_o\ & (\B[4]~input_o\ & (\B[5]~input_o\ $ (\A[5]~input_o\))))

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
	combout => \CarryNetwork|Recur:Low_half|Recur:High_half|cMid~0_combout\);

-- Location: LCCOMB_X48_Y2_N10
\CarryNetwork|Recur:Low_half|Recur:High_half|cMid~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:Low_half|Recur:High_half|cMid~1_combout\ = (\CarryNetwork|Recur:Low_half|Recur:High_half|cMid~0_combout\ & ((\CarryNetwork|Recur:Low_half|Recur:Low_half|BG~combout\) # ((\CarryNetwork|Recur:Low_half|Recur:Low_half|BG~0_combout\ & 
-- \CarryNetwork|Recur:Low_half|Recur:Low_half|cMid~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:Low_half|Recur:Low_half|BG~0_combout\,
	datab => \CarryNetwork|Recur:Low_half|Recur:Low_half|cMid~0_combout\,
	datac => \CarryNetwork|Recur:Low_half|Recur:Low_half|BG~combout\,
	datad => \CarryNetwork|Recur:Low_half|Recur:High_half|cMid~0_combout\,
	combout => \CarryNetwork|Recur:Low_half|Recur:High_half|cMid~1_combout\);

-- Location: LCCOMB_X48_Y2_N12
\S~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~6_combout\ = \B[6]~input_o\ $ (\A[6]~input_o\ $ (((\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|BG~0_combout\) # (\CarryNetwork|Recur:Low_half|Recur:High_half|cMid~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|BG~0_combout\,
	datab => \B[6]~input_o\,
	datac => \A[6]~input_o\,
	datad => \CarryNetwork|Recur:Low_half|Recur:High_half|cMid~1_combout\,
	combout => \S~6_combout\);

-- Location: IOIBUF_X52_Y0_N1
\B[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: IOIBUF_X49_Y0_N15
\A[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: LCCOMB_X48_Y2_N2
\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:cMid~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:cMid~0_combout\ = (\B[6]~input_o\ & ((\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|BG~0_combout\) # ((\A[6]~input_o\) # 
-- (\CarryNetwork|Recur:Low_half|Recur:High_half|cMid~1_combout\)))) # (!\B[6]~input_o\ & (\A[6]~input_o\ & ((\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|BG~0_combout\) # (\CarryNetwork|Recur:Low_half|Recur:High_half|cMid~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|BG~0_combout\,
	datab => \B[6]~input_o\,
	datac => \A[6]~input_o\,
	datad => \CarryNetwork|Recur:Low_half|Recur:High_half|cMid~1_combout\,
	combout => \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:cMid~0_combout\);

-- Location: LCCOMB_X48_Y2_N20
\S~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~7_combout\ = \B[7]~input_o\ $ (\A[7]~input_o\ $ (\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:cMid~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[7]~input_o\,
	datac => \A[7]~input_o\,
	datad => \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:cMid~0_combout\,
	combout => \S~7_combout\);

-- Location: IOIBUF_X54_Y0_N1
\B[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

-- Location: IOIBUF_X35_Y0_N22
\A[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: LCCOMB_X49_Y2_N26
\CarryNetwork|Recur:Low_half|Recur:High_half|BG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:Low_half|Recur:High_half|BG~0_combout\ = (\B[6]~input_o\ & (!\A[6]~input_o\ & (\A[7]~input_o\ $ (\B[7]~input_o\)))) # (!\B[6]~input_o\ & (\A[6]~input_o\ & (\A[7]~input_o\ $ (\B[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[6]~input_o\,
	datab => \A[7]~input_o\,
	datac => \A[6]~input_o\,
	datad => \B[7]~input_o\,
	combout => \CarryNetwork|Recur:Low_half|Recur:High_half|BG~0_combout\);

-- Location: LCCOMB_X49_Y2_N20
\CarryNetwork|cMid~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|cMid~0_combout\ = (\CarryNetwork|Recur:Low_half|Recur:High_half|BG~0_combout\ & (\CarryNetwork|Recur:Low_half|Recur:High_half|cMid~0_combout\ & (\CarryNetwork|Recur:Low_half|Recur:Low_half|BG~0_combout\ & 
-- \CarryNetwork|Recur:Low_half|Recur:Low_half|cMid~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:Low_half|Recur:High_half|BG~0_combout\,
	datab => \CarryNetwork|Recur:Low_half|Recur:High_half|cMid~0_combout\,
	datac => \CarryNetwork|Recur:Low_half|Recur:Low_half|BG~0_combout\,
	datad => \CarryNetwork|Recur:Low_half|Recur:Low_half|cMid~0_combout\,
	combout => \CarryNetwork|cMid~0_combout\);

-- Location: LCCOMB_X49_Y2_N30
\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|BG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|BG~0_combout\ = (\A[7]~input_o\ & ((\B[7]~input_o\) # ((\B[6]~input_o\ & \A[6]~input_o\)))) # (!\A[7]~input_o\ & (\B[6]~input_o\ & (\A[6]~input_o\ & \B[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[6]~input_o\,
	datab => \A[7]~input_o\,
	datac => \A[6]~input_o\,
	datad => \B[7]~input_o\,
	combout => \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|BG~0_combout\);

-- Location: LCCOMB_X49_Y2_N28
\CarryNetwork|Recur:Low_half|BG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:Low_half|BG~0_combout\ = (\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|BG~0_combout\) # ((\CarryNetwork|Recur:Low_half|Recur:High_half|BG~0_combout\ & 
-- \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|BG~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|BG~0_combout\,
	datac => \CarryNetwork|Recur:Low_half|Recur:High_half|BG~0_combout\,
	datad => \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|BG~0_combout\,
	combout => \CarryNetwork|Recur:Low_half|BG~0_combout\);

-- Location: LCCOMB_X49_Y2_N10
\CarryNetwork|Recur:Low_half|BG\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:Low_half|BG~combout\ = (\CarryNetwork|Recur:Low_half|BG~0_combout\) # ((\CarryNetwork|Recur:Low_half|Recur:High_half|BG~0_combout\ & (\CarryNetwork|Recur:Low_half|Recur:High_half|cMid~0_combout\ & 
-- \CarryNetwork|Recur:Low_half|Recur:Low_half|BG~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:Low_half|Recur:High_half|BG~0_combout\,
	datab => \CarryNetwork|Recur:Low_half|Recur:High_half|cMid~0_combout\,
	datac => \CarryNetwork|Recur:Low_half|Recur:Low_half|BG~combout\,
	datad => \CarryNetwork|Recur:Low_half|BG~0_combout\,
	combout => \CarryNetwork|Recur:Low_half|BG~combout\);

-- Location: LCCOMB_X40_Y2_N28
\S~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~8_combout\ = \B[8]~input_o\ $ (\A[8]~input_o\ $ (((\CarryNetwork|cMid~0_combout\) # (\CarryNetwork|Recur:Low_half|BG~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[8]~input_o\,
	datab => \A[8]~input_o\,
	datac => \CarryNetwork|cMid~0_combout\,
	datad => \CarryNetwork|Recur:Low_half|BG~combout\,
	combout => \S~8_combout\);

-- Location: IOIBUF_X65_Y0_N15
\B[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(9),
	o => \B[9]~input_o\);

-- Location: IOIBUF_X62_Y0_N22
\A[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

-- Location: LCCOMB_X50_Y2_N0
\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:cMid~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:cMid~0_combout\ = (\B[8]~input_o\ & ((\CarryNetwork|cMid~0_combout\) # ((\A[8]~input_o\) # (\CarryNetwork|Recur:Low_half|BG~combout\)))) # (!\B[8]~input_o\ & (\A[8]~input_o\ & 
-- ((\CarryNetwork|cMid~0_combout\) # (\CarryNetwork|Recur:Low_half|BG~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[8]~input_o\,
	datab => \CarryNetwork|cMid~0_combout\,
	datac => \A[8]~input_o\,
	datad => \CarryNetwork|Recur:Low_half|BG~combout\,
	combout => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:cMid~0_combout\);

-- Location: LCCOMB_X50_Y2_N26
\S~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~9_combout\ = \B[9]~input_o\ $ (\A[9]~input_o\ $ (\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:cMid~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[9]~input_o\,
	datac => \A[9]~input_o\,
	datad => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:cMid~0_combout\,
	combout => \S~9_combout\);

-- Location: IOIBUF_X31_Y0_N8
\B[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(10),
	o => \B[10]~input_o\);

-- Location: IOIBUF_X60_Y0_N8
\A[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

-- Location: LCCOMB_X50_Y2_N4
\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|BG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|BG~0_combout\ = (\A[9]~input_o\ & ((\B[9]~input_o\) # ((\B[8]~input_o\ & \A[8]~input_o\)))) # (!\A[9]~input_o\ & (\B[8]~input_o\ & (\A[8]~input_o\ & \B[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[9]~input_o\,
	datab => \B[8]~input_o\,
	datac => \A[8]~input_o\,
	datad => \B[9]~input_o\,
	combout => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|BG~0_combout\);

-- Location: LCCOMB_X50_Y2_N14
\CarryNetwork|Recur:High_half|Recur:Low_half|cMid~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:High_half|Recur:Low_half|cMid~0_combout\ = (\A[9]~input_o\ & (!\B[9]~input_o\ & (\B[8]~input_o\ $ (\A[8]~input_o\)))) # (!\A[9]~input_o\ & (\B[9]~input_o\ & (\B[8]~input_o\ $ (\A[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[9]~input_o\,
	datab => \B[8]~input_o\,
	datac => \A[8]~input_o\,
	datad => \B[9]~input_o\,
	combout => \CarryNetwork|Recur:High_half|Recur:Low_half|cMid~0_combout\);

-- Location: LCCOMB_X50_Y2_N20
\CarryNetwork|Recur:High_half|Recur:Low_half|cMid~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:High_half|Recur:Low_half|cMid~1_combout\ = (\CarryNetwork|Recur:High_half|Recur:Low_half|cMid~0_combout\ & ((\CarryNetwork|cMid~0_combout\) # (\CarryNetwork|Recur:Low_half|BG~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CarryNetwork|cMid~0_combout\,
	datac => \CarryNetwork|Recur:High_half|Recur:Low_half|cMid~0_combout\,
	datad => \CarryNetwork|Recur:Low_half|BG~combout\,
	combout => \CarryNetwork|Recur:High_half|Recur:Low_half|cMid~1_combout\);

-- Location: LCCOMB_X50_Y2_N18
\S~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~10_combout\ = \B[10]~input_o\ $ (\A[10]~input_o\ $ (((\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|BG~0_combout\) # (\CarryNetwork|Recur:High_half|Recur:Low_half|cMid~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[10]~input_o\,
	datab => \A[10]~input_o\,
	datac => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|BG~0_combout\,
	datad => \CarryNetwork|Recur:High_half|Recur:Low_half|cMid~1_combout\,
	combout => \S~10_combout\);

-- Location: IOIBUF_X60_Y0_N1
\B[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(11),
	o => \B[11]~input_o\);

-- Location: IOIBUF_X62_Y0_N15
\A[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(11),
	o => \A[11]~input_o\);

-- Location: LCCOMB_X50_Y2_N16
\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:cMid~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:cMid~0_combout\ = (\B[10]~input_o\ & ((\A[10]~input_o\) # ((\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|BG~0_combout\) # 
-- (\CarryNetwork|Recur:High_half|Recur:Low_half|cMid~1_combout\)))) # (!\B[10]~input_o\ & (\A[10]~input_o\ & ((\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|BG~0_combout\) # (\CarryNetwork|Recur:High_half|Recur:Low_half|cMid~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[10]~input_o\,
	datab => \A[10]~input_o\,
	datac => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|BG~0_combout\,
	datad => \CarryNetwork|Recur:High_half|Recur:Low_half|cMid~1_combout\,
	combout => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:cMid~0_combout\);

-- Location: LCCOMB_X50_Y2_N22
\S~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~11_combout\ = \B[11]~input_o\ $ (\A[11]~input_o\ $ (\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:cMid~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[11]~input_o\,
	datac => \A[11]~input_o\,
	datad => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:cMid~0_combout\,
	combout => \S~11_combout\);

-- Location: IOIBUF_X65_Y0_N22
\B[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(12),
	o => \B[12]~input_o\);

-- Location: IOIBUF_X65_Y0_N8
\A[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(12),
	o => \A[12]~input_o\);

-- Location: LCCOMB_X50_Y2_N6
\CarryNetwork|Recur:High_half|Recur:Low_half|BG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:High_half|Recur:Low_half|BG~0_combout\ = (\B[10]~input_o\ & (!\A[10]~input_o\ & (\A[11]~input_o\ $ (\B[11]~input_o\)))) # (!\B[10]~input_o\ & (\A[10]~input_o\ & (\A[11]~input_o\ $ (\B[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[10]~input_o\,
	datab => \A[10]~input_o\,
	datac => \A[11]~input_o\,
	datad => \B[11]~input_o\,
	combout => \CarryNetwork|Recur:High_half|Recur:Low_half|BG~0_combout\);

-- Location: LCCOMB_X50_Y2_N28
\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|BG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|BG~0_combout\ = (\A[11]~input_o\ & ((\B[11]~input_o\) # ((\B[10]~input_o\ & \A[10]~input_o\)))) # (!\A[11]~input_o\ & (\B[10]~input_o\ & (\A[10]~input_o\ & \B[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[10]~input_o\,
	datab => \A[10]~input_o\,
	datac => \A[11]~input_o\,
	datad => \B[11]~input_o\,
	combout => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|BG~0_combout\);

-- Location: LCCOMB_X50_Y2_N8
\CarryNetwork|Recur:High_half|Recur:Low_half|BG\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:High_half|Recur:Low_half|BG~combout\ = (\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|BG~0_combout\) # ((\CarryNetwork|Recur:High_half|Recur:Low_half|BG~0_combout\ & 
-- \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|BG~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:High_half|Recur:Low_half|BG~0_combout\,
	datab => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|BG~0_combout\,
	datad => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|BG~0_combout\,
	combout => \CarryNetwork|Recur:High_half|Recur:Low_half|BG~combout\);

-- Location: LCCOMB_X49_Y2_N12
\CarryNetwork|Recur:High_half|cMid~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:High_half|cMid~0_combout\ = (\CarryNetwork|Recur:High_half|Recur:Low_half|BG~0_combout\ & (\CarryNetwork|Recur:High_half|Recur:Low_half|cMid~0_combout\ & ((\CarryNetwork|cMid~0_combout\) # (\CarryNetwork|Recur:Low_half|BG~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:High_half|Recur:Low_half|BG~0_combout\,
	datab => \CarryNetwork|cMid~0_combout\,
	datac => \CarryNetwork|Recur:High_half|Recur:Low_half|cMid~0_combout\,
	datad => \CarryNetwork|Recur:Low_half|BG~combout\,
	combout => \CarryNetwork|Recur:High_half|cMid~0_combout\);

-- Location: LCCOMB_X50_Y2_N2
\S~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~12_combout\ = \B[12]~input_o\ $ (\A[12]~input_o\ $ (((\CarryNetwork|Recur:High_half|Recur:Low_half|BG~combout\) # (\CarryNetwork|Recur:High_half|cMid~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[12]~input_o\,
	datab => \A[12]~input_o\,
	datac => \CarryNetwork|Recur:High_half|Recur:Low_half|BG~combout\,
	datad => \CarryNetwork|Recur:High_half|cMid~0_combout\,
	combout => \S~12_combout\);

-- Location: IOIBUF_X69_Y0_N1
\A[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(13),
	o => \A[13]~input_o\);

-- Location: IOIBUF_X65_Y0_N1
\B[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(13),
	o => \B[13]~input_o\);

-- Location: LCCOMB_X50_Y2_N24
\CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:cMid~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:cMid~0_combout\ = (\B[12]~input_o\ & ((\A[12]~input_o\) # ((\CarryNetwork|Recur:High_half|Recur:Low_half|BG~combout\) # (\CarryNetwork|Recur:High_half|cMid~0_combout\)))) # 
-- (!\B[12]~input_o\ & (\A[12]~input_o\ & ((\CarryNetwork|Recur:High_half|Recur:Low_half|BG~combout\) # (\CarryNetwork|Recur:High_half|cMid~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[12]~input_o\,
	datab => \A[12]~input_o\,
	datac => \CarryNetwork|Recur:High_half|Recur:Low_half|BG~combout\,
	datad => \CarryNetwork|Recur:High_half|cMid~0_combout\,
	combout => \CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:cMid~0_combout\);

-- Location: LCCOMB_X50_Y2_N10
\S~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~13_combout\ = \A[13]~input_o\ $ (\B[13]~input_o\ $ (\CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:cMid~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[13]~input_o\,
	datac => \B[13]~input_o\,
	datad => \CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:cMid~0_combout\,
	combout => \S~13_combout\);

-- Location: IOIBUF_X29_Y0_N22
\A[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(14),
	o => \A[14]~input_o\);

-- Location: IOIBUF_X27_Y0_N22
\B[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(14),
	o => \B[14]~input_o\);

-- Location: LCCOMB_X50_Y2_N12
\CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|BG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|BG~0_combout\ = (\B[13]~input_o\ & ((\A[13]~input_o\) # ((\B[12]~input_o\ & \A[12]~input_o\)))) # (!\B[13]~input_o\ & (\A[13]~input_o\ & (\B[12]~input_o\ & \A[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[13]~input_o\,
	datab => \A[13]~input_o\,
	datac => \B[12]~input_o\,
	datad => \A[12]~input_o\,
	combout => \CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|BG~0_combout\);

-- Location: LCCOMB_X50_Y2_N30
\CarryNetwork|Recur:High_half|Recur:High_half|cMid~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:High_half|Recur:High_half|cMid~0_combout\ = (\B[12]~input_o\ & (!\A[12]~input_o\ & (\A[13]~input_o\ $ (\B[13]~input_o\)))) # (!\B[12]~input_o\ & (\A[12]~input_o\ & (\A[13]~input_o\ $ (\B[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[12]~input_o\,
	datab => \A[13]~input_o\,
	datac => \B[13]~input_o\,
	datad => \A[12]~input_o\,
	combout => \CarryNetwork|Recur:High_half|Recur:High_half|cMid~0_combout\);

-- Location: LCCOMB_X49_Y2_N18
\CarryNetwork|Recur:High_half|Recur:High_half|cMid~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:High_half|Recur:High_half|cMid~1_combout\ = (\CarryNetwork|Recur:High_half|Recur:High_half|cMid~0_combout\ & ((\CarryNetwork|Recur:High_half|Recur:Low_half|BG~combout\) # (\CarryNetwork|Recur:High_half|cMid~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:High_half|Recur:High_half|cMid~0_combout\,
	datac => \CarryNetwork|Recur:High_half|Recur:Low_half|BG~combout\,
	datad => \CarryNetwork|Recur:High_half|cMid~0_combout\,
	combout => \CarryNetwork|Recur:High_half|Recur:High_half|cMid~1_combout\);

-- Location: LCCOMB_X49_Y2_N0
\S~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~14_combout\ = \A[14]~input_o\ $ (\B[14]~input_o\ $ (((\CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|BG~0_combout\) # (\CarryNetwork|Recur:High_half|Recur:High_half|cMid~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[14]~input_o\,
	datab => \B[14]~input_o\,
	datac => \CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|BG~0_combout\,
	datad => \CarryNetwork|Recur:High_half|Recur:High_half|cMid~1_combout\,
	combout => \S~14_combout\);

-- Location: IOIBUF_X67_Y0_N22
\B[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(15),
	o => \B[15]~input_o\);

-- Location: LCCOMB_X49_Y2_N14
\CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|Recur:cMid~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|Recur:cMid~0_combout\ = (\A[14]~input_o\ & ((\B[14]~input_o\) # ((\CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|BG~0_combout\) # 
-- (\CarryNetwork|Recur:High_half|Recur:High_half|cMid~1_combout\)))) # (!\A[14]~input_o\ & (\B[14]~input_o\ & ((\CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|BG~0_combout\) # (\CarryNetwork|Recur:High_half|Recur:High_half|cMid~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[14]~input_o\,
	datab => \B[14]~input_o\,
	datac => \CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|BG~0_combout\,
	datad => \CarryNetwork|Recur:High_half|Recur:High_half|cMid~1_combout\,
	combout => \CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|Recur:cMid~0_combout\);

-- Location: IOIBUF_X69_Y0_N8
\A[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(15),
	o => \A[15]~input_o\);

-- Location: LCCOMB_X49_Y2_N24
\S~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~15_combout\ = \B[15]~input_o\ $ (\CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|Recur:cMid~0_combout\ $ (\A[15]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[15]~input_o\,
	datac => \CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|Recur:cMid~0_combout\,
	datad => \A[15]~input_o\,
	combout => \S~15_combout\);

-- Location: LCCOMB_X54_Y2_N28
\CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|Recur:High_half|c[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|Recur:High_half|c[1]~0_combout\ = (\B[15]~input_o\ & ((\A[15]~input_o\) # (\CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|Recur:cMid~0_combout\))) # (!\B[15]~input_o\ & 
-- (\A[15]~input_o\ & \CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|Recur:cMid~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[15]~input_o\,
	datac => \A[15]~input_o\,
	datad => \CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|Recur:cMid~0_combout\,
	combout => \CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|Recur:High_half|c[1]~0_combout\);

-- Location: LCCOMB_X49_Y2_N22
\Ovfl~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Ovfl~0_combout\ = (\B[15]~input_o\ & (!\CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|Recur:cMid~0_combout\ & \A[15]~input_o\)) # (!\B[15]~input_o\ & (\CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|Recur:cMid~0_combout\ & 
-- !\A[15]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[15]~input_o\,
	datac => \CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|Recur:cMid~0_combout\,
	datad => \A[15]~input_o\,
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


