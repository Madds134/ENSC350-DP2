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

-- DATE "11/21/2026 11:44:07"

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
-- S[3]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[4]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[5]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[6]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[7]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[8]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[9]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[10]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[11]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[12]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[13]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[14]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[15]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cout	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ovfl	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cin	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[8]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[9]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[10]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[11]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[11]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[12]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[12]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[13]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[13]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[14]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[14]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[15]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[15]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \S~0_combout\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \S~1_combout\ : std_logic;
SIGNAL \S~2_combout\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\ : std_logic;
SIGNAL \S~3_combout\ : std_logic;
SIGNAL \S~4_combout\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\ : std_logic;
SIGNAL \S~5_combout\ : std_logic;
SIGNAL \S~6_combout\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[1]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[1]~combout\ : std_logic;
SIGNAL \S~7_combout\ : std_logic;
SIGNAL \S~8_combout\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:M0[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:M1[0]~combout\ : std_logic;
SIGNAL \S~9_combout\ : std_logic;
SIGNAL \S~10_combout\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:M0[1]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:M1[1]~combout\ : std_logic;
SIGNAL \S~11_combout\ : std_logic;
SIGNAL \S~12_combout\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:M1[2]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:M0[2]~combout\ : std_logic;
SIGNAL \S~13_combout\ : std_logic;
SIGNAL \S~14_combout\ : std_logic;
SIGNAL \B[8]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M0[1]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M1[1]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:M0[3]~combout\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:M1[3]~combout\ : std_logic;
SIGNAL \S~15_combout\ : std_logic;
SIGNAL \S~16_combout\ : std_logic;
SIGNAL \B[9]~input_o\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:M0[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:M1[0]~combout\ : std_logic;
SIGNAL \S~17_combout\ : std_logic;
SIGNAL \S~18_combout\ : std_logic;
SIGNAL \B[10]~input_o\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:M1[1]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:M0[1]~combout\ : std_logic;
SIGNAL \S~19_combout\ : std_logic;
SIGNAL \S~20_combout\ : std_logic;
SIGNAL \B[11]~input_o\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:M0[2]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:M1[2]~combout\ : std_logic;
SIGNAL \S~21_combout\ : std_logic;
SIGNAL \S~22_combout\ : std_logic;
SIGNAL \B[12]~input_o\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[1]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[1]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:M1[3]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:M0[3]~combout\ : std_logic;
SIGNAL \S~23_combout\ : std_logic;
SIGNAL \S~24_combout\ : std_logic;
SIGNAL \B[13]~input_o\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:M1[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:M0[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:M0[4]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:M1[4]~combout\ : std_logic;
SIGNAL \S~25_combout\ : std_logic;
SIGNAL \S~26_combout\ : std_logic;
SIGNAL \B[14]~input_o\ : std_logic;
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \S~27_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:M1[1]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:M0[1]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:M0[5]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:M1[5]~combout\ : std_logic;
SIGNAL \S~28_combout\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \B[15]~input_o\ : std_logic;
SIGNAL \S~29_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:M0[2]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:M1[2]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:M1[6]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:M0[6]~combout\ : std_logic;
SIGNAL \S~30_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M0[1]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M1[1]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:M1[3]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:M0[3]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:M1[7]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:M0[7]~combout\ : std_logic;
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

-- Location: IOOBUF_X74_Y73_N23
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

-- Location: IOOBUF_X74_Y73_N16
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

-- Location: IOOBUF_X79_Y73_N9
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

-- Location: IOOBUF_X72_Y73_N23
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

-- Location: IOOBUF_X69_Y73_N2
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

-- Location: IOOBUF_X65_Y73_N23
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

-- Location: IOOBUF_X69_Y73_N16
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

-- Location: IOOBUF_X72_Y73_N16
\S[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~16_combout\,
	devoe => ww_devoe,
	o => \S[8]~output_o\);

-- Location: IOOBUF_X33_Y73_N9
\S[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~18_combout\,
	devoe => ww_devoe,
	o => \S[9]~output_o\);

-- Location: IOOBUF_X54_Y73_N9
\S[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~20_combout\,
	devoe => ww_devoe,
	o => \S[10]~output_o\);

-- Location: IOOBUF_X52_Y73_N23
\S[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~22_combout\,
	devoe => ww_devoe,
	o => \S[11]~output_o\);

-- Location: IOOBUF_X45_Y73_N9
\S[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~24_combout\,
	devoe => ww_devoe,
	o => \S[12]~output_o\);

-- Location: IOOBUF_X52_Y73_N9
\S[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~26_combout\,
	devoe => ww_devoe,
	o => \S[13]~output_o\);

-- Location: IOOBUF_X65_Y73_N16
\S[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~28_combout\,
	devoe => ww_devoe,
	o => \S[14]~output_o\);

-- Location: IOOBUF_X38_Y73_N2
\S[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~30_combout\,
	devoe => ww_devoe,
	o => \S[15]~output_o\);

-- Location: IOOBUF_X45_Y73_N2
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

-- Location: IOOBUF_X49_Y73_N23
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

-- Location: IOIBUF_X67_Y73_N1
\A[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X69_Y73_N22
\Cin~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cin,
	o => \Cin~input_o\);

-- Location: IOIBUF_X62_Y73_N22
\B[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: LCCOMB_X66_Y72_N28
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

-- Location: IOIBUF_X67_Y73_N8
\B[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: IOIBUF_X67_Y73_N15
\A[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: LCCOMB_X66_Y72_N18
\S~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~1_combout\ = \A[1]~input_o\ $ (((\Cin~input_o\ & ((\A[0]~input_o\) # (\B[0]~input_o\))) # (!\Cin~input_o\ & (\A[0]~input_o\ & \B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cin~input_o\,
	datab => \A[0]~input_o\,
	datac => \A[1]~input_o\,
	datad => \B[0]~input_o\,
	combout => \S~1_combout\);

-- Location: LCCOMB_X66_Y72_N4
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

-- Location: IOIBUF_X58_Y73_N15
\B[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: IOIBUF_X38_Y73_N15
\A[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: LCCOMB_X59_Y72_N0
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\ = LCELL((\A[1]~input_o\ & ((\B[0]~input_o\) # ((\A[0]~input_o\) # (\B[1]~input_o\)))) # (!\A[1]~input_o\ & (\B[1]~input_o\ & ((\B[0]~input_o\) # (\A[0]~input_o\)))))

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
	combout => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\);

-- Location: LCCOMB_X59_Y72_N26
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\ = LCELL((\A[1]~input_o\ & ((\B[1]~input_o\) # ((\B[0]~input_o\ & \A[0]~input_o\)))) # (!\A[1]~input_o\ & (\B[0]~input_o\ & (\A[0]~input_o\ & \B[1]~input_o\))))

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
	combout => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\);

-- Location: LCCOMB_X58_Y72_N28
\S~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~3_combout\ = \A[2]~input_o\ $ (((\Cin~input_o\ & (\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\)) # (!\Cin~input_o\ & ((\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\,
	datac => \Cin~input_o\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\,
	combout => \S~3_combout\);

-- Location: LCCOMB_X58_Y72_N6
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

-- Location: IOIBUF_X58_Y73_N8
\B[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: LCCOMB_X58_Y72_N10
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\ = LCELL((\A[2]~input_o\ & ((\B[2]~input_o\) # (\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\))) # (!\A[2]~input_o\ & (\B[2]~input_o\ & 
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[2]~input_o\,
	datac => \B[2]~input_o\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\);

-- Location: IOIBUF_X58_Y73_N1
\A[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: LCCOMB_X58_Y72_N0
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\ = LCELL((\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\ & ((\B[2]~input_o\) # (\A[2]~input_o\))) # 
-- (!\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\ & (\B[2]~input_o\ & \A[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\,
	datac => \B[2]~input_o\,
	datad => \A[2]~input_o\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\);

-- Location: LCCOMB_X58_Y72_N12
\S~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~5_combout\ = \A[3]~input_o\ $ (((\Cin~input_o\ & ((\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\))) # (!\Cin~input_o\ & (\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\,
	datab => \Cin~input_o\,
	datac => \A[3]~input_o\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\,
	combout => \S~5_combout\);

-- Location: LCCOMB_X58_Y72_N30
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

-- Location: IOIBUF_X60_Y73_N8
\B[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: IOIBUF_X60_Y73_N15
\A[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: LCCOMB_X59_Y72_N22
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\ = LCELL((\B[3]~input_o\ & ((\A[3]~input_o\) # ((\B[2]~input_o\) # (\A[2]~input_o\)))) # (!\B[3]~input_o\ & (\A[3]~input_o\ & ((\B[2]~input_o\) # (\A[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \A[3]~input_o\,
	datac => \B[2]~input_o\,
	datad => \A[2]~input_o\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\);

-- Location: LCCOMB_X59_Y72_N20
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\ = LCELL((\A[3]~input_o\ & ((\B[3]~input_o\) # ((\B[2]~input_o\ & \A[2]~input_o\)))) # (!\A[3]~input_o\ & (\B[2]~input_o\ & (\B[3]~input_o\ & \A[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \A[3]~input_o\,
	datac => \B[3]~input_o\,
	datad => \A[2]~input_o\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\);

-- Location: LCCOMB_X59_Y72_N18
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[1]~combout\ = LCELL((\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\ & (\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\)) # 
-- (!\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\ & ((\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\,
	datac => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[1]~combout\);

-- Location: LCCOMB_X59_Y72_N12
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[1]~combout\ = LCELL((\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\ & (\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\)) # 
-- (!\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\ & ((\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\,
	datac => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[1]~combout\);

-- Location: LCCOMB_X60_Y72_N0
\S~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~7_combout\ = \A[4]~input_o\ $ (((\Cin~input_o\ & ((\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[1]~combout\))) # (!\Cin~input_o\ & (\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[1]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datab => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[1]~combout\,
	datac => \Cin~input_o\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[1]~combout\,
	combout => \S~7_combout\);

-- Location: LCCOMB_X60_Y72_N14
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

-- Location: IOIBUF_X60_Y73_N1
\B[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: IOIBUF_X60_Y73_N22
\A[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: LCCOMB_X60_Y72_N4
\CarryNetwork|Recur:LowHalf|Recur:M0[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:M0[0]~combout\ = LCELL((\A[4]~input_o\ & ((\B[4]~input_o\) # (\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[1]~combout\))) # (!\A[4]~input_o\ & (\B[4]~input_o\ & 
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[1]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datac => \B[4]~input_o\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[1]~combout\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:M0[0]~combout\);

-- Location: LCCOMB_X60_Y72_N10
\CarryNetwork|Recur:LowHalf|Recur:M1[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:M1[0]~combout\ = LCELL((\B[4]~input_o\ & ((\A[4]~input_o\) # (\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[1]~combout\))) # (!\B[4]~input_o\ & (\A[4]~input_o\ & 
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[1]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datac => \A[4]~input_o\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[1]~combout\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:M1[0]~combout\);

-- Location: LCCOMB_X60_Y72_N28
\S~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~9_combout\ = \A[5]~input_o\ $ (((\Cin~input_o\ & ((\CarryNetwork|Recur:LowHalf|Recur:M1[0]~combout\))) # (!\Cin~input_o\ & (\CarryNetwork|Recur:LowHalf|Recur:M0[0]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cin~input_o\,
	datab => \A[5]~input_o\,
	datac => \CarryNetwork|Recur:LowHalf|Recur:M0[0]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:M1[0]~combout\,
	combout => \S~9_combout\);

-- Location: LCCOMB_X60_Y72_N26
\S~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~10_combout\ = \B[5]~input_o\ $ (\S~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[5]~input_o\,
	datad => \S~9_combout\,
	combout => \S~10_combout\);

-- Location: IOIBUF_X67_Y73_N22
\B[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: IOIBUF_X58_Y73_N22
\A[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: LCCOMB_X59_Y72_N30
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\ = LCELL((\A[5]~input_o\ & ((\B[4]~input_o\) # ((\B[5]~input_o\) # (\A[4]~input_o\)))) # (!\A[5]~input_o\ & (\B[5]~input_o\ & ((\B[4]~input_o\) # (\A[4]~input_o\)))))

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
	combout => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\);

-- Location: LCCOMB_X60_Y72_N20
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\ = LCELL((\A[5]~input_o\ & ((\B[5]~input_o\) # ((\A[4]~input_o\ & \B[4]~input_o\)))) # (!\A[5]~input_o\ & (\A[4]~input_o\ & (\B[4]~input_o\ & \B[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datab => \A[5]~input_o\,
	datac => \B[4]~input_o\,
	datad => \B[5]~input_o\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\);

-- Location: LCCOMB_X60_Y72_N8
\CarryNetwork|Recur:LowHalf|Recur:M0[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:M0[1]~combout\ = LCELL((\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[1]~combout\ & (\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\)) # 
-- (!\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[1]~combout\ & ((\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\,
	datac => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[1]~combout\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:M0[1]~combout\);

-- Location: LCCOMB_X60_Y72_N2
\CarryNetwork|Recur:LowHalf|Recur:M1[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:M1[1]~combout\ = LCELL((\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[1]~combout\ & (\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\)) # 
-- (!\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[1]~combout\ & ((\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\,
	datac => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[1]~combout\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:M1[1]~combout\);

-- Location: LCCOMB_X60_Y72_N16
\S~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~11_combout\ = \A[6]~input_o\ $ (((\Cin~input_o\ & ((\CarryNetwork|Recur:LowHalf|Recur:M1[1]~combout\))) # (!\Cin~input_o\ & (\CarryNetwork|Recur:LowHalf|Recur:M0[1]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cin~input_o\,
	datab => \A[6]~input_o\,
	datac => \CarryNetwork|Recur:LowHalf|Recur:M0[1]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:M1[1]~combout\,
	combout => \S~11_combout\);

-- Location: LCCOMB_X65_Y72_N0
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

-- Location: IOIBUF_X62_Y73_N15
\B[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: IOIBUF_X65_Y73_N8
\A[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: LCCOMB_X60_Y72_N12
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\ = LCELL((\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\ & ((\A[6]~input_o\) # (\B[6]~input_o\))) # 
-- (!\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\ & (\A[6]~input_o\ & \B[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\,
	datac => \A[6]~input_o\,
	datad => \B[6]~input_o\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\);

-- Location: LCCOMB_X60_Y72_N18
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\ = LCELL((\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\ & ((\A[6]~input_o\) # (\B[6]~input_o\))) # 
-- (!\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\ & (\A[6]~input_o\ & \B[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\,
	datac => \A[6]~input_o\,
	datad => \B[6]~input_o\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\);

-- Location: LCCOMB_X60_Y72_N6
\CarryNetwork|Recur:LowHalf|Recur:M1[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:M1[2]~combout\ = LCELL((\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[1]~combout\ & ((\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\))) # 
-- (!\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[1]~combout\ & (\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\,
	datab => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[1]~combout\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:M1[2]~combout\);

-- Location: LCCOMB_X60_Y72_N24
\CarryNetwork|Recur:LowHalf|Recur:M0[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:M0[2]~combout\ = LCELL((\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[1]~combout\ & ((\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\))) # 
-- (!\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[1]~combout\ & (\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\,
	datab => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[1]~combout\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:M0[2]~combout\);

-- Location: LCCOMB_X61_Y72_N28
\S~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~13_combout\ = \A[7]~input_o\ $ (((\Cin~input_o\ & (\CarryNetwork|Recur:LowHalf|Recur:M1[2]~combout\)) # (!\Cin~input_o\ & ((\CarryNetwork|Recur:LowHalf|Recur:M0[2]~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datab => \Cin~input_o\,
	datac => \CarryNetwork|Recur:LowHalf|Recur:M1[2]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:M0[2]~combout\,
	combout => \S~13_combout\);

-- Location: LCCOMB_X61_Y72_N14
\S~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~14_combout\ = \B[7]~input_o\ $ (\S~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[7]~input_o\,
	datad => \S~13_combout\,
	combout => \S~14_combout\);

-- Location: IOIBUF_X72_Y73_N8
\B[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

-- Location: LCCOMB_X59_Y72_N4
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\ = LCELL((\B[7]~input_o\ & ((\A[6]~input_o\) # ((\A[7]~input_o\) # (\B[6]~input_o\)))) # (!\B[7]~input_o\ & (\A[7]~input_o\ & ((\A[6]~input_o\) # (\B[6]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[7]~input_o\,
	datab => \A[6]~input_o\,
	datac => \A[7]~input_o\,
	datad => \B[6]~input_o\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\);

-- Location: LCCOMB_X59_Y72_N2
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\ = LCELL((\B[7]~input_o\ & ((\A[7]~input_o\) # ((\A[6]~input_o\ & \B[6]~input_o\)))) # (!\B[7]~input_o\ & (\A[6]~input_o\ & (\A[7]~input_o\ & \B[6]~input_o\))))

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
	combout => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\);

-- Location: LCCOMB_X59_Y72_N10
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M0[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M0[1]~combout\ = LCELL((\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\ & (\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\)) # 
-- (!\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\ & ((\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\,
	datac => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M0[1]~combout\);

-- Location: LCCOMB_X59_Y72_N8
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M1[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M1[1]~combout\ = LCELL((\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\ & (\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\)) # 
-- (!\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\ & ((\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\,
	datac => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M1[1]~combout\);

-- Location: LCCOMB_X59_Y72_N6
\CarryNetwork|Recur:LowHalf|Recur:M0[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:M0[3]~combout\ = LCELL((\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[1]~combout\ & ((\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M1[1]~combout\))) # 
-- (!\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[1]~combout\ & (\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M0[1]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M0[1]~combout\,
	datac => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M1[1]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[1]~combout\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:M0[3]~combout\);

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

-- Location: LCCOMB_X59_Y72_N16
\CarryNetwork|Recur:LowHalf|Recur:M1[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:M1[3]~combout\ = LCELL((\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[1]~combout\ & ((\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M1[1]~combout\))) # 
-- (!\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[1]~combout\ & (\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M0[1]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M0[1]~combout\,
	datac => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M1[1]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[1]~combout\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:M1[3]~combout\);

-- Location: LCCOMB_X59_Y72_N24
\S~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~15_combout\ = \A[8]~input_o\ $ (((\Cin~input_o\ & ((\CarryNetwork|Recur:LowHalf|Recur:M1[3]~combout\))) # (!\Cin~input_o\ & (\CarryNetwork|Recur:LowHalf|Recur:M0[3]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:LowHalf|Recur:M0[3]~combout\,
	datab => \A[8]~input_o\,
	datac => \Cin~input_o\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:M1[3]~combout\,
	combout => \S~15_combout\);

-- Location: LCCOMB_X60_Y72_N22
\S~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~16_combout\ = \B[8]~input_o\ $ (\S~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[8]~input_o\,
	datad => \S~15_combout\,
	combout => \S~16_combout\);

-- Location: IOIBUF_X38_Y73_N22
\B[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(9),
	o => \B[9]~input_o\);

-- Location: IOIBUF_X72_Y73_N1
\A[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

-- Location: LCCOMB_X59_Y72_N14
\CarryNetwork|Recur:M0[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:M0[0]~combout\ = LCELL((\A[8]~input_o\ & ((\B[8]~input_o\) # (\CarryNetwork|Recur:LowHalf|Recur:M0[3]~combout\))) # (!\A[8]~input_o\ & (\B[8]~input_o\ & \CarryNetwork|Recur:LowHalf|Recur:M0[3]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[8]~input_o\,
	datac => \B[8]~input_o\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:M0[3]~combout\,
	combout => \CarryNetwork|Recur:M0[0]~combout\);

-- Location: LCCOMB_X59_Y72_N28
\CarryNetwork|Recur:M1[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:M1[0]~combout\ = LCELL((\A[8]~input_o\ & ((\B[8]~input_o\) # (\CarryNetwork|Recur:LowHalf|Recur:M1[3]~combout\))) # (!\A[8]~input_o\ & (\B[8]~input_o\ & \CarryNetwork|Recur:LowHalf|Recur:M1[3]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[8]~input_o\,
	datac => \B[8]~input_o\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:M1[3]~combout\,
	combout => \CarryNetwork|Recur:M1[0]~combout\);

-- Location: LCCOMB_X58_Y72_N20
\S~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~17_combout\ = \A[9]~input_o\ $ (((\Cin~input_o\ & ((\CarryNetwork|Recur:M1[0]~combout\))) # (!\Cin~input_o\ & (\CarryNetwork|Recur:M0[0]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[9]~input_o\,
	datab => \Cin~input_o\,
	datac => \CarryNetwork|Recur:M0[0]~combout\,
	datad => \CarryNetwork|Recur:M1[0]~combout\,
	combout => \S~17_combout\);

-- Location: LCCOMB_X58_Y72_N22
\S~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~18_combout\ = \B[9]~input_o\ $ (\S~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[9]~input_o\,
	datad => \S~17_combout\,
	combout => \S~18_combout\);

-- Location: IOIBUF_X54_Y73_N1
\B[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(10),
	o => \B[10]~input_o\);

-- Location: IOIBUF_X52_Y73_N1
\A[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

-- Location: LCCOMB_X55_Y72_N28
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\ = LCELL((\B[9]~input_o\ & ((\A[8]~input_o\) # ((\B[8]~input_o\) # (\A[9]~input_o\)))) # (!\B[9]~input_o\ & (\A[9]~input_o\ & ((\A[8]~input_o\) # (\B[8]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[8]~input_o\,
	datab => \B[9]~input_o\,
	datac => \B[8]~input_o\,
	datad => \A[9]~input_o\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\);

-- Location: LCCOMB_X55_Y72_N18
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\ = LCELL((\B[9]~input_o\ & ((\A[9]~input_o\) # ((\A[8]~input_o\ & \B[8]~input_o\)))) # (!\B[9]~input_o\ & (\A[8]~input_o\ & (\B[8]~input_o\ & \A[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[8]~input_o\,
	datab => \B[9]~input_o\,
	datac => \B[8]~input_o\,
	datad => \A[9]~input_o\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\);

-- Location: LCCOMB_X55_Y72_N14
\CarryNetwork|Recur:M1[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:M1[1]~combout\ = LCELL((\CarryNetwork|Recur:LowHalf|Recur:M1[3]~combout\ & (\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\)) # (!\CarryNetwork|Recur:LowHalf|Recur:M1[3]~combout\ & 
-- ((\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\,
	datac => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:M1[3]~combout\,
	combout => \CarryNetwork|Recur:M1[1]~combout\);

-- Location: LCCOMB_X55_Y72_N0
\CarryNetwork|Recur:M0[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:M0[1]~combout\ = LCELL((\CarryNetwork|Recur:LowHalf|Recur:M0[3]~combout\ & (\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\)) # (!\CarryNetwork|Recur:LowHalf|Recur:M0[3]~combout\ & 
-- ((\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\,
	datac => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:M0[3]~combout\,
	combout => \CarryNetwork|Recur:M0[1]~combout\);

-- Location: LCCOMB_X55_Y72_N12
\S~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~19_combout\ = \A[10]~input_o\ $ (((\Cin~input_o\ & (\CarryNetwork|Recur:M1[1]~combout\)) # (!\Cin~input_o\ & ((\CarryNetwork|Recur:M0[1]~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[10]~input_o\,
	datab => \Cin~input_o\,
	datac => \CarryNetwork|Recur:M1[1]~combout\,
	datad => \CarryNetwork|Recur:M0[1]~combout\,
	combout => \S~19_combout\);

-- Location: LCCOMB_X55_Y72_N30
\S~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~20_combout\ = \B[10]~input_o\ $ (\S~19_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[10]~input_o\,
	datad => \S~19_combout\,
	combout => \S~20_combout\);

-- Location: IOIBUF_X35_Y73_N22
\B[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(11),
	o => \B[11]~input_o\);

-- Location: IOIBUF_X35_Y73_N15
\A[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(11),
	o => \A[11]~input_o\);

-- Location: LCCOMB_X55_Y72_N2
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\ = LCELL((\B[10]~input_o\ & ((\A[10]~input_o\) # (\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\))) # (!\B[10]~input_o\ & (\A[10]~input_o\ & 
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[10]~input_o\,
	datac => \A[10]~input_o\,
	datad => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\);

-- Location: LCCOMB_X55_Y72_N24
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\ = LCELL((\A[10]~input_o\ & ((\B[10]~input_o\) # (\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\))) # (!\A[10]~input_o\ & (\B[10]~input_o\ & 
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[10]~input_o\,
	datac => \B[10]~input_o\,
	datad => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\);

-- Location: LCCOMB_X55_Y72_N8
\CarryNetwork|Recur:M0[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:M0[2]~combout\ = LCELL((\CarryNetwork|Recur:LowHalf|Recur:M0[3]~combout\ & ((\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\))) # (!\CarryNetwork|Recur:LowHalf|Recur:M0[3]~combout\ & 
-- (\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\,
	datac => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:M0[3]~combout\,
	combout => \CarryNetwork|Recur:M0[2]~combout\);

-- Location: LCCOMB_X55_Y72_N6
\CarryNetwork|Recur:M1[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:M1[2]~combout\ = LCELL((\CarryNetwork|Recur:LowHalf|Recur:M1[3]~combout\ & ((\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\))) # (!\CarryNetwork|Recur:LowHalf|Recur:M1[3]~combout\ & 
-- (\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\,
	datac => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:M1[3]~combout\,
	combout => \CarryNetwork|Recur:M1[2]~combout\);

-- Location: LCCOMB_X55_Y72_N20
\S~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~21_combout\ = \A[11]~input_o\ $ (((\Cin~input_o\ & ((\CarryNetwork|Recur:M1[2]~combout\))) # (!\Cin~input_o\ & (\CarryNetwork|Recur:M0[2]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[11]~input_o\,
	datab => \Cin~input_o\,
	datac => \CarryNetwork|Recur:M0[2]~combout\,
	datad => \CarryNetwork|Recur:M1[2]~combout\,
	combout => \S~21_combout\);

-- Location: LCCOMB_X55_Y72_N10
\S~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~22_combout\ = \B[11]~input_o\ $ (\S~21_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[11]~input_o\,
	datad => \S~21_combout\,
	combout => \S~22_combout\);

-- Location: IOIBUF_X47_Y73_N15
\B[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(12),
	o => \B[12]~input_o\);

-- Location: IOIBUF_X47_Y73_N1
\A[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(12),
	o => \A[12]~input_o\);

-- Location: LCCOMB_X55_Y72_N4
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\ = LCELL((\B[11]~input_o\ & ((\A[10]~input_o\) # ((\B[10]~input_o\) # (\A[11]~input_o\)))) # (!\B[11]~input_o\ & (\A[11]~input_o\ & ((\A[10]~input_o\) # (\B[10]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[10]~input_o\,
	datab => \B[11]~input_o\,
	datac => \B[10]~input_o\,
	datad => \A[11]~input_o\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\);

-- Location: LCCOMB_X55_Y72_N26
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\ = LCELL((\B[11]~input_o\ & ((\A[11]~input_o\) # ((\A[10]~input_o\ & \B[10]~input_o\)))) # (!\B[11]~input_o\ & (\A[10]~input_o\ & (\B[10]~input_o\ & \A[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[10]~input_o\,
	datab => \B[11]~input_o\,
	datac => \B[10]~input_o\,
	datad => \A[11]~input_o\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\);

-- Location: LCCOMB_X55_Y72_N22
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[1]~combout\ = LCELL((\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\ & (\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\)) # 
-- (!\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\ & ((\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\,
	datac => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\,
	datad => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[1]~combout\);

-- Location: LCCOMB_X55_Y72_N16
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[1]~combout\ = LCELL((\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\ & (\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\)) # 
-- (!\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\ & ((\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\,
	datac => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\,
	datad => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[1]~combout\);

-- Location: LCCOMB_X54_Y72_N8
\CarryNetwork|Recur:M1[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:M1[3]~combout\ = LCELL((\CarryNetwork|Recur:LowHalf|Recur:M1[3]~combout\ & ((\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[1]~combout\))) # (!\CarryNetwork|Recur:LowHalf|Recur:M1[3]~combout\ & 
-- (\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[1]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[1]~combout\,
	datac => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[1]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:M1[3]~combout\,
	combout => \CarryNetwork|Recur:M1[3]~combout\);

-- Location: LCCOMB_X54_Y72_N18
\CarryNetwork|Recur:M0[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:M0[3]~combout\ = LCELL((\CarryNetwork|Recur:LowHalf|Recur:M0[3]~combout\ & ((\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[1]~combout\))) # (!\CarryNetwork|Recur:LowHalf|Recur:M0[3]~combout\ & 
-- (\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[1]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[1]~combout\,
	datac => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[1]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:M0[3]~combout\,
	combout => \CarryNetwork|Recur:M0[3]~combout\);

-- Location: LCCOMB_X54_Y72_N24
\S~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~23_combout\ = \A[12]~input_o\ $ (((\Cin~input_o\ & (\CarryNetwork|Recur:M1[3]~combout\)) # (!\Cin~input_o\ & ((\CarryNetwork|Recur:M0[3]~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[12]~input_o\,
	datab => \Cin~input_o\,
	datac => \CarryNetwork|Recur:M1[3]~combout\,
	datad => \CarryNetwork|Recur:M0[3]~combout\,
	combout => \S~23_combout\);

-- Location: LCCOMB_X54_Y72_N26
\S~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~24_combout\ = \B[12]~input_o\ $ (\S~23_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[12]~input_o\,
	datad => \S~23_combout\,
	combout => \S~24_combout\);

-- Location: IOIBUF_X42_Y73_N8
\B[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(13),
	o => \B[13]~input_o\);

-- Location: IOIBUF_X49_Y73_N15
\A[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(13),
	o => \A[13]~input_o\);

-- Location: LCCOMB_X54_Y72_N6
\CarryNetwork|Recur:HighHalf|Recur:M1[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:M1[0]~combout\ = LCELL((\B[12]~input_o\ & ((\A[12]~input_o\) # (\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[1]~combout\))) # (!\B[12]~input_o\ & (\A[12]~input_o\ & 
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[1]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[12]~input_o\,
	datac => \A[12]~input_o\,
	datad => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[1]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:M1[0]~combout\);

-- Location: LCCOMB_X54_Y72_N28
\CarryNetwork|Recur:HighHalf|Recur:M0[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:M0[0]~combout\ = LCELL((\B[12]~input_o\ & ((\A[12]~input_o\) # (\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[1]~combout\))) # (!\B[12]~input_o\ & (\A[12]~input_o\ & 
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[1]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[12]~input_o\,
	datac => \A[12]~input_o\,
	datad => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[1]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:M0[0]~combout\);

-- Location: LCCOMB_X54_Y72_N14
\CarryNetwork|Recur:M0[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:M0[4]~combout\ = LCELL((\CarryNetwork|Recur:LowHalf|Recur:M0[3]~combout\ & (\CarryNetwork|Recur:HighHalf|Recur:M1[0]~combout\)) # (!\CarryNetwork|Recur:LowHalf|Recur:M0[3]~combout\ & 
-- ((\CarryNetwork|Recur:HighHalf|Recur:M0[0]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:HighHalf|Recur:M1[0]~combout\,
	datab => \CarryNetwork|Recur:HighHalf|Recur:M0[0]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:M0[3]~combout\,
	combout => \CarryNetwork|Recur:M0[4]~combout\);

-- Location: LCCOMB_X54_Y72_N16
\CarryNetwork|Recur:M1[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:M1[4]~combout\ = LCELL((\CarryNetwork|Recur:LowHalf|Recur:M1[3]~combout\ & (\CarryNetwork|Recur:HighHalf|Recur:M1[0]~combout\)) # (!\CarryNetwork|Recur:LowHalf|Recur:M1[3]~combout\ & 
-- ((\CarryNetwork|Recur:HighHalf|Recur:M0[0]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:HighHalf|Recur:M1[0]~combout\,
	datab => \CarryNetwork|Recur:HighHalf|Recur:M0[0]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:M1[3]~combout\,
	combout => \CarryNetwork|Recur:M1[4]~combout\);

-- Location: LCCOMB_X54_Y72_N20
\S~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~25_combout\ = \A[13]~input_o\ $ (((\Cin~input_o\ & ((\CarryNetwork|Recur:M1[4]~combout\))) # (!\Cin~input_o\ & (\CarryNetwork|Recur:M0[4]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[13]~input_o\,
	datab => \Cin~input_o\,
	datac => \CarryNetwork|Recur:M0[4]~combout\,
	datad => \CarryNetwork|Recur:M1[4]~combout\,
	combout => \S~25_combout\);

-- Location: LCCOMB_X54_Y72_N2
\S~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~26_combout\ = \B[13]~input_o\ $ (\S~25_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[13]~input_o\,
	datad => \S~25_combout\,
	combout => \S~26_combout\);

-- Location: IOIBUF_X40_Y73_N1
\B[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(14),
	o => \B[14]~input_o\);

-- Location: IOIBUF_X42_Y73_N1
\A[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(14),
	o => \A[14]~input_o\);

-- Location: LCCOMB_X41_Y72_N20
\S~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~27_combout\ = \B[14]~input_o\ $ (!\A[14]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[14]~input_o\,
	datad => \A[14]~input_o\,
	combout => \S~27_combout\);

-- Location: LCCOMB_X50_Y72_N20
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\ = LCELL((\A[13]~input_o\ & ((\B[12]~input_o\) # ((\A[12]~input_o\) # (\B[13]~input_o\)))) # (!\A[13]~input_o\ & (\B[13]~input_o\ & ((\B[12]~input_o\) # (\A[12]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[13]~input_o\,
	datab => \B[12]~input_o\,
	datac => \A[12]~input_o\,
	datad => \B[13]~input_o\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\);

-- Location: LCCOMB_X50_Y72_N22
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\ = LCELL((\A[13]~input_o\ & ((\B[13]~input_o\) # ((\B[12]~input_o\ & \A[12]~input_o\)))) # (!\A[13]~input_o\ & (\B[12]~input_o\ & (\A[12]~input_o\ & \B[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[13]~input_o\,
	datab => \B[12]~input_o\,
	datac => \A[12]~input_o\,
	datad => \B[13]~input_o\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\);

-- Location: LCCOMB_X58_Y72_N14
\CarryNetwork|Recur:HighHalf|Recur:M1[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:M1[1]~combout\ = LCELL((\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[1]~combout\ & (\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\)) # 
-- (!\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[1]~combout\ & ((\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\,
	datac => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[1]~combout\,
	datad => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:M1[1]~combout\);

-- Location: LCCOMB_X58_Y72_N24
\CarryNetwork|Recur:HighHalf|Recur:M0[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:M0[1]~combout\ = LCELL((\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[1]~combout\ & (\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\)) # 
-- (!\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[1]~combout\ & ((\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\,
	datac => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[1]~combout\,
	datad => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:M0[1]~combout\);

-- Location: LCCOMB_X58_Y72_N26
\CarryNetwork|Recur:M0[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:M0[5]~combout\ = LCELL((\CarryNetwork|Recur:LowHalf|Recur:M0[3]~combout\ & (\CarryNetwork|Recur:HighHalf|Recur:M1[1]~combout\)) # (!\CarryNetwork|Recur:LowHalf|Recur:M0[3]~combout\ & 
-- ((\CarryNetwork|Recur:HighHalf|Recur:M0[1]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:LowHalf|Recur:M0[3]~combout\,
	datac => \CarryNetwork|Recur:HighHalf|Recur:M1[1]~combout\,
	datad => \CarryNetwork|Recur:HighHalf|Recur:M0[1]~combout\,
	combout => \CarryNetwork|Recur:M0[5]~combout\);

-- Location: LCCOMB_X58_Y72_N16
\CarryNetwork|Recur:M1[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:M1[5]~combout\ = LCELL((\CarryNetwork|Recur:LowHalf|Recur:M1[3]~combout\ & (\CarryNetwork|Recur:HighHalf|Recur:M1[1]~combout\)) # (!\CarryNetwork|Recur:LowHalf|Recur:M1[3]~combout\ & 
-- ((\CarryNetwork|Recur:HighHalf|Recur:M0[1]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CarryNetwork|Recur:LowHalf|Recur:M1[3]~combout\,
	datac => \CarryNetwork|Recur:HighHalf|Recur:M1[1]~combout\,
	datad => \CarryNetwork|Recur:HighHalf|Recur:M0[1]~combout\,
	combout => \CarryNetwork|Recur:M1[5]~combout\);

-- Location: LCCOMB_X58_Y72_N4
\S~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~28_combout\ = \S~27_combout\ $ (((\Cin~input_o\ & ((!\CarryNetwork|Recur:M1[5]~combout\))) # (!\Cin~input_o\ & (!\CarryNetwork|Recur:M0[5]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100101100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S~27_combout\,
	datab => \Cin~input_o\,
	datac => \CarryNetwork|Recur:M0[5]~combout\,
	datad => \CarryNetwork|Recur:M1[5]~combout\,
	combout => \S~28_combout\);

-- Location: IOIBUF_X40_Y73_N8
\A[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(15),
	o => \A[15]~input_o\);

-- Location: IOIBUF_X38_Y73_N8
\B[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(15),
	o => \B[15]~input_o\);

-- Location: LCCOMB_X41_Y72_N2
\S~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~29_combout\ = \A[15]~input_o\ $ (!\B[15]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[15]~input_o\,
	datad => \B[15]~input_o\,
	combout => \S~29_combout\);

-- Location: LCCOMB_X50_Y72_N8
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\ = LCELL((\B[14]~input_o\ & ((\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\) # (\A[14]~input_o\))) # (!\B[14]~input_o\ & 
-- (\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\ & \A[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[14]~input_o\,
	datac => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\,
	datad => \A[14]~input_o\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\);

-- Location: LCCOMB_X54_Y72_N30
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\ = LCELL((\B[14]~input_o\ & ((\A[14]~input_o\) # (\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\))) # (!\B[14]~input_o\ & (\A[14]~input_o\ & 
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[14]~input_o\,
	datac => \A[14]~input_o\,
	datad => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\);

-- Location: LCCOMB_X54_Y72_N12
\CarryNetwork|Recur:HighHalf|Recur:M0[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:M0[2]~combout\ = LCELL((\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[1]~combout\ & ((\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\))) # 
-- (!\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[1]~combout\ & (\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\,
	datac => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\,
	datad => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[1]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:M0[2]~combout\);

-- Location: LCCOMB_X54_Y72_N22
\CarryNetwork|Recur:HighHalf|Recur:M1[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:M1[2]~combout\ = LCELL((\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[1]~combout\ & ((\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\))) # 
-- (!\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[1]~combout\ & (\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\,
	datac => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\,
	datad => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[1]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:M1[2]~combout\);

-- Location: LCCOMB_X54_Y72_N4
\CarryNetwork|Recur:M1[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:M1[6]~combout\ = LCELL((\CarryNetwork|Recur:LowHalf|Recur:M1[3]~combout\ & ((\CarryNetwork|Recur:HighHalf|Recur:M1[2]~combout\))) # (!\CarryNetwork|Recur:LowHalf|Recur:M1[3]~combout\ & 
-- (\CarryNetwork|Recur:HighHalf|Recur:M0[2]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:HighHalf|Recur:M0[2]~combout\,
	datac => \CarryNetwork|Recur:HighHalf|Recur:M1[2]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:M1[3]~combout\,
	combout => \CarryNetwork|Recur:M1[6]~combout\);

-- Location: LCCOMB_X54_Y72_N10
\CarryNetwork|Recur:M0[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:M0[6]~combout\ = LCELL((\CarryNetwork|Recur:LowHalf|Recur:M0[3]~combout\ & ((\CarryNetwork|Recur:HighHalf|Recur:M1[2]~combout\))) # (!\CarryNetwork|Recur:LowHalf|Recur:M0[3]~combout\ & 
-- (\CarryNetwork|Recur:HighHalf|Recur:M0[2]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:HighHalf|Recur:M0[2]~combout\,
	datac => \CarryNetwork|Recur:HighHalf|Recur:M1[2]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:M0[3]~combout\,
	combout => \CarryNetwork|Recur:M0[6]~combout\);

-- Location: LCCOMB_X54_Y72_N0
\S~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~30_combout\ = \S~29_combout\ $ (((\Cin~input_o\ & (!\CarryNetwork|Recur:M1[6]~combout\)) # (!\Cin~input_o\ & ((!\CarryNetwork|Recur:M0[6]~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011010010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S~29_combout\,
	datab => \Cin~input_o\,
	datac => \CarryNetwork|Recur:M1[6]~combout\,
	datad => \CarryNetwork|Recur:M0[6]~combout\,
	combout => \S~30_combout\);

-- Location: LCCOMB_X41_Y72_N6
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\ = LCELL((\A[15]~input_o\ & ((\B[15]~input_o\) # ((\A[14]~input_o\ & \B[14]~input_o\)))) # (!\A[15]~input_o\ & (\A[14]~input_o\ & (\B[14]~input_o\ & \B[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[15]~input_o\,
	datab => \A[14]~input_o\,
	datac => \B[14]~input_o\,
	datad => \B[15]~input_o\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\);

-- Location: LCCOMB_X41_Y72_N28
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\ = LCELL((\A[15]~input_o\ & ((\A[14]~input_o\) # ((\B[14]~input_o\) # (\B[15]~input_o\)))) # (!\A[15]~input_o\ & (\B[15]~input_o\ & ((\A[14]~input_o\) # (\B[14]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[15]~input_o\,
	datab => \A[14]~input_o\,
	datac => \B[14]~input_o\,
	datad => \B[15]~input_o\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\);

-- Location: LCCOMB_X50_Y72_N28
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M0[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M0[1]~combout\ = LCELL((\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\ & ((\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\))) # 
-- (!\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\ & (\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\,
	datac => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\,
	datad => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M0[1]~combout\);

-- Location: LCCOMB_X50_Y72_N26
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M1[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M1[1]~combout\ = LCELL((\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\ & ((\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\))) # 
-- (!\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\ & (\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\,
	datab => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\,
	datad => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M1[1]~combout\);

-- Location: LCCOMB_X50_Y72_N24
\CarryNetwork|Recur:HighHalf|Recur:M1[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:M1[3]~combout\ = LCELL((\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[1]~combout\ & ((\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M1[1]~combout\))) # 
-- (!\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[1]~combout\ & (\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M0[1]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M0[1]~combout\,
	datac => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M1[1]~combout\,
	datad => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[1]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:M1[3]~combout\);

-- Location: LCCOMB_X50_Y72_N30
\CarryNetwork|Recur:HighHalf|Recur:M0[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:M0[3]~combout\ = LCELL((\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[1]~combout\ & (\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M1[1]~combout\)) # 
-- (!\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[1]~combout\ & ((\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M0[1]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M1[1]~combout\,
	datac => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[1]~combout\,
	datad => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M0[1]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:M0[3]~combout\);

-- Location: LCCOMB_X50_Y72_N4
\CarryNetwork|Recur:M1[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:M1[7]~combout\ = LCELL((\CarryNetwork|Recur:LowHalf|Recur:M1[3]~combout\ & (\CarryNetwork|Recur:HighHalf|Recur:M1[3]~combout\)) # (!\CarryNetwork|Recur:LowHalf|Recur:M1[3]~combout\ & 
-- ((\CarryNetwork|Recur:HighHalf|Recur:M0[3]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CarryNetwork|Recur:HighHalf|Recur:M1[3]~combout\,
	datac => \CarryNetwork|Recur:HighHalf|Recur:M0[3]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:M1[3]~combout\,
	combout => \CarryNetwork|Recur:M1[7]~combout\);

-- Location: LCCOMB_X50_Y72_N10
\CarryNetwork|Recur:M0[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:M0[7]~combout\ = LCELL((\CarryNetwork|Recur:LowHalf|Recur:M0[3]~combout\ & (\CarryNetwork|Recur:HighHalf|Recur:M1[3]~combout\)) # (!\CarryNetwork|Recur:LowHalf|Recur:M0[3]~combout\ & 
-- ((\CarryNetwork|Recur:HighHalf|Recur:M0[3]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CarryNetwork|Recur:HighHalf|Recur:M1[3]~combout\,
	datac => \CarryNetwork|Recur:HighHalf|Recur:M0[3]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:M0[3]~combout\,
	combout => \CarryNetwork|Recur:M0[7]~combout\);

-- Location: LCCOMB_X50_Y72_N12
\c~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c~0_combout\ = (\Cin~input_o\ & (\CarryNetwork|Recur:M1[7]~combout\)) # (!\Cin~input_o\ & ((\CarryNetwork|Recur:M0[7]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cin~input_o\,
	datac => \CarryNetwork|Recur:M1[7]~combout\,
	datad => \CarryNetwork|Recur:M0[7]~combout\,
	combout => \c~0_combout\);

-- Location: LCCOMB_X50_Y72_N6
\Ovfl~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Ovfl~0_combout\ = \c~0_combout\ $ (((\Cin~input_o\ & ((\CarryNetwork|Recur:M1[6]~combout\))) # (!\Cin~input_o\ & (\CarryNetwork|Recur:M0[6]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cin~input_o\,
	datab => \CarryNetwork|Recur:M0[6]~combout\,
	datac => \CarryNetwork|Recur:M1[6]~combout\,
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


