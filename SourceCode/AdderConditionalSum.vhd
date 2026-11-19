library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Conditional Sum Adder Architecture
-- GP network and sum networks not done recursively
architecture ConditionalSum of Adder is
    signal g, p     : std_logic_vector(N-1 downto 0);
    signal carry0, carry1   : std_logic_vector(N-1 downto 0);
    signal c    : std_logic_vector(N downto 0);
begin

    -- Generate/propgate network
    g <= A and B;
    p <= A XOR B;

    -- Recursive carry select network
    CarryNetwork: entity work.ConditionalSumCarry(Recursive)
        generic map (N => N)
        port map(
            g => g,
            p => p,
            carry0 => carry0,
            carry1 => carry1
        );

    -- cin selectes 
    c(0) <= Cin;
    c(N downto 1) <= carry1 when cin = '1' else carry0;

    -- Sum network
    S <= p xor c(N-1 downto 0);

    Cout <= C(N);

    -- Signed overflow occurs when carry into and carry out of sign bit differ
    Ovfl <= C(N) xor C(N-1);
end architecture ConditionalSum;
