library ieee;
use ieee.std_logic_1164.all;

-- Conditional-sum adder with the recursive carry network preserved by 'keep' to stop collapse during synthesis
architecture ConditionalSumKeep of Adder is
    signal g, p           : std_logic_vector(N-1 downto 0);
    signal carry0, carry1 : std_logic_vector(N-1 downto 0);  -- carries out of each bit for Cin = 0 / 1
    signal c              : std_logic_vector(N downto 0);
begin
    -- Bit generate / propagate
    g <= A and B;
    p <= A xor B;

    -- Recursive carry-select network, every level kept
    CarryNetwork: entity work.ConditionalSumCarry(RecursiveKeep)
        generic map(N => N)
        port map(g => g, p => p, carry0 => carry0, carry1 => carry1);

    -- Cin selects the final carries
    c(0) <= Cin;
    c(N downto 1) <= carry1 when Cin = '1' else carry0;

    -- Sums, carry out, signed overflow (carry into and out of the sign bit differ)
    S    <= p xor c(N-1 downto 0);
    Cout <= c(N);
    Ovfl <= c(N) xor c(N-1);
end architecture ConditionalSumKeep;
