library ieee;
use ieee.std_logic_1164.all;
-- BlockLookahead architecture of Adder.
-- Bit-level generate/propagate feed a recursive BLAN that returns carries
architecture BlockLookahead of Adder is
    signal g, p : std_logic_vector(N-1 downto 0); -- bit level generate/propagate
    signal c    : std_logic_vector(N downto 0);   -- bit level carries, c(N) is carry out, c(i) in carry into bit i
begin
    -- Generate and Propagate's of the CLA
    g <= A and B;
    p <= A xor B;

    CarryNetwork: entity work.BLAN(Recursive)
        generic map( N => N )
        port map( g => g, p => p, Cin => Cin, c => c,
                  BG => open, BP => open ); -- Top level assignment

    S <= p xor c(N-1 downto 0);
    Cout <= c(N);
    Ovfl <= c(N) xor c(N-1); -- Signed overflow
end architecture BlockLookahead;
