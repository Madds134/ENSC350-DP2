library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- N-bit combinational adder
-- Supports carry-in, carry-out, and signed two's-complement overflow
entity Adder is
	generic( N	: natural := 64);
	port(
		A, B: in std_logic_vector(N-1 downto 0);
		S		: out std_logic_vector(N-1 downto 0);
		Cin	: in std_logic;
		Cout, Ovfl: out std_logic
		);
end entity Adder;
