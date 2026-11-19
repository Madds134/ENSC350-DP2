library ieee;
use ieee.std_logic_1164.all;

-- BLAN: N-bit Block Look-Ahead Network 
-- Computes every carry of an N-bit addition from the bit level gp signals, without rippling
-- Each half reports its BG, BP to its parent block
entity BLAN is
    generic( N : positive );
    port(
        g, p    : in std_logic_vector(N-1 downto 0);
        Cin     : in std_logic;
        c       : out std_logic_vector(N downto 0);
        BG, BP  : out std_logic
    );
end entity BLAN;

architecture Recursive of BLAN is
begin

    -- Recursively split block into two halves
    Recur: if N > 1 generate
        signal cL, cH   : std_logic_vector(N/2 downto 0);
        signal BGL, BPL, BGH, BPH   : std_logic;
        signal cMid : std_logic;
    begin
        Low_half: entity work.BLAN(Recursive)
            generic map (N => N/2)
            port map(
                g => g(N/2-1 downto 0),
                p => p(N/2-1 downto 0),
                Cin => Cin,
                c => cL,
                BG => BGL,
                BP => BPL
            );
        
        -- Carry enter high half if low half generates, or if low propagates cin
        cMid <= BGL or (BPL and Cin);

        High_half: entity work.BLAN(Recursive)
            generic map (N => N/2)
            port map (
                g => g(N-1 downto N/2),
                p => p(N-1 downto N/2),
                Cin => cMid,
                c => cH,
                BG => BGH,
                BP => BPH
            );
        
        -- Assemble carries
        c(N/2-1 downto 0) <= cL(N/2-1 downto 0);
        c(N downto N/2) <= cH;

        -- Group generate and carries for the block
        BG <= BGH or (BPH and BGL);
        BP <= BPH and BPL;
    end generate Recur;

    Leaf: if N = 1 generate
    begin
        c(0) <= Cin;
        c(1) <= g(0) or (p(0) and Cin); -- Full adder Cout
        BG <= g(0);
        BP <= p(0);
    end generate Leaf;
end architecture Recursive;
