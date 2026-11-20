library ieee;
use ieee.std_logic_1164.all;

architecture CarrySkip of Adder is
    constant BlockSize : positive := 4; -- Bits per skip block
    constant NB : positive := N / BlockSize; -- Number of blocks

    -- And of every bit of a vector, (block propagate)
    function AndAll(v : std_logic_vector) return std_logic is
        variable r: std_logic := '1';
    begin
        for i in v'range loop
            r := r and v(i);
        end loop;
        return r;
    end function AndAll;

    signal g, p : std_logic_vector(N-1 downto 0); -- bit level generate and propagate
    signal c : std_logic_vector(N downto 0); -- c(i) is the carry into bit i
    signal cb : std_logic_vector(NB downto 0); -- cb(k) carry into block k
    signal rCOut : std_logic_vector(NB-1 downto 0); -- ripple carry out of block k
    signal BP : std_logic_vector(NB-1 downto 0); -- block propagate of block k

    -- Keep the block carries as real nodes so the skip path survives 
    -- synthesis instead of being optimized back into a ripple chain
    attribute keep : boolean;
    attribute keep of cb, rCOut : signal is true;
begin
    g <= A and B; -- generate
    p <= A xor B; -- propagate

    cb(0) <= Cin; -- carry into the first block

    Blocks: for k in 0 to NB-1 generate
        constant Base : natural := k * BlockSize;     -- lowest bit of block k
        constant Top  : natural := Base + BlockSize - 1; -- highest bit of block k
    begin
        c(Base) <= cb(k); -- carry into the block's first bit

        -- Ripple inside the block (carries into bits Base+1 .. Top)
        Ripple: for i in Base to Top-1 generate
            c(i+1) <= g(i) or (p(i) and c(i));
        end generate Ripple;

        rCOut(k) <= g(Top) or (p(Top) and c(Top)); -- ripple carry out of the block
        BP(k)    <= AndAll(p(Top downto Base));

        -- Skip path: if the whole block propagates, its carry-in goes straight to the next block
        cb(k+1) <= rCOut(k) or (BP(k) and cb(k));
    end generate Blocks;

    c(N) <= cb(NB); -- carry out of the last block

    S    <= p xor c(N-1 downto 0); -- sum bit
    Cout <= c(N);
    Ovfl <= c(N) xor c(N-1);       -- signed overflow: carry into vs out of the sign bit
end architecture CarrySkip;
