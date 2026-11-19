library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- FastRipple implementation.
-- Uses the VHDL '+' operator so Quartus can infer its native adder structure.
architecture FastRipple of Adder is
	-- N+1-bit result preserves the carry-out from an N-bit addition.
	signal S_ext	: unsigned(N downto 0);
	signal Cin_ext	: unsigned(N downto 0);
begin
	Cin_ext <= to_unsigned(1, N+1) when Cin = '1' else to_unsigned(0, N+1);

	 -- Zero-extend the operands before addition so the carry-out is retained.
	S_ext	  <= ('0' & unsigned(A)) +
				  ('0' & unsigned(B)) +
				  Cin_ext;

	S <= std_logic_vector(S_ext(N-1 downto 0));
	Cout <= S_ext(N);

	-- Signed overflow occurs when two operands of the same sign
	-- produce a result with the opposite sign
	Ovfl <= (A(N-1) and B(N-1) and not S_ext(N-1)) or -- Negative and Negative -> Postive
			  ((not A(N-1)) and (not B(N-1)) and S_ext(N-1)); -- Positive and Positive -> Negative
end architecture FastRipple;
