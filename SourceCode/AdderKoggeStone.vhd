library ieee;
use ieee.std_logic_1164.all;

architecture KoggeStone of Adder is
    signal g, p : std_logic_vector(N-1 downto 0); -- GP[i,i]
    signal Gpre, Ppre   : std_logic_vector(N-1 downto 0); -- GP[i, 0] from the BLAN
    signal c    : std_logic_vector(N downto 0); -- c(i) = carry into bit i
begin
    g <= A and B; -- generate
    p <= A xor B; -- propagate

    PrefixNetwork: entity work.BLAN(KoggeStone)
        generic map ( N=> N )
        port map (
            g => g,
            p => p,
            Gpre => Gpre,
            Ppre => Ppre
        );
    
    -- Carries from the block signals C(i+1) = G[i, 0] + P[i, 0]*C0
    c(0) <= Cin;
    c(N downto 1) <= Gpre or (Ppre and (N-1 downto 0 => Cin));

    S <= p xor c(N-1 downto 0); -- sum bit
    Cout <= c(N);
    Ovfl <= c(N) xor c(N-1); -- signed overflow
end architecture KoggeStone;