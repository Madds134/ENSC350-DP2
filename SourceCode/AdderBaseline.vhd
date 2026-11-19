library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Baseline ripple-carry implementation.
-- Each bit computes its sum and generates the carry used by the next bit.
architecture Baseline of Adder is
	signal C	: std_logic_vector(N downto 0);
begin
	C(0) <= Cin;

	-- Generate one full-adder stage for each operand bit.
	ripple_gen: for i in 0 to N-1 generate
		S(i) <= A(i) xor B(i) xor C(i);
		C(i+1) <= (A(i) and B(i)) or
					 (A(i) and C(i)) or
					 (B(i) and C(i));
	end generate ripple_gen;

	Cout <= C(N);
	-- Signed overflow occurs when carry into and carry out of sign bit differ
	Ovfl <= C(N) xor C(N-1);

end architecture Baseline;
