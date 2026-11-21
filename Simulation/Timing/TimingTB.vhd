-- Direct transitions for post-fit timing; no X interval between rows.
-- The first vector starts at 200 ns; vector i starts at i*200 ns.
-- -1 denotes no output event during the hold interval.
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use std.textio.all;
entity TimingTB is
    generic (N : positive := 64);
end entity;
architecture Test of TimingTB is
    signal A, B : std_logic_vector(N-1 downto 0) := (others => '0');
    signal S : std_logic_vector(N-1 downto 0);
    signal Cin : std_logic := '0';
    signal Cout, Ovfl : std_logic;
    constant HoldTime : time := 200 ns;
    function delay_ps(age : time) return integer is
    begin
        if age > HoldTime then return -1; end if;
        return integer((HoldTime - age) / 1 ps);
    end function;
begin
    DUT: entity work.Adder port map(A=>A, B=>B, Cin=>Cin, S=>S, Cout=>Cout, Ovfl=>Ovfl);
    main: process
        file vectors : text open read_mode is "vectors_N" & integer'image(N) & ".tvs";
        file results : text open write_mode is "measurements.csv";
        variable row, output : line;
        variable av, bv, sv : std_logic_vector(N-1 downto 0);
        variable ci, co, ov : std_logic;
        variable idx : natural := 0;
        variable passed : boolean;
    begin
        write(output, string'("index,S_ps,Cout_ps,Ovfl_ps,pass,A,B,Cin,S,Cout,Ovfl"));
        writeline(results, output);
        wait for HoldTime;
        while not endfile(vectors) loop
            readline(vectors, row);
            hread(row,av); hread(row,bv); read(row,ci);
            hread(row,sv); read(row,co); read(row,ov);
            idx := idx + 1;
            A <= av; B <= bv; Cin <= ci;
            wait for HoldTime;
            passed := S=sv and Cout=co and Ovfl=ov;
            write(output, idx); write(output, string'(","));
            write(output, delay_ps(S'last_event)); write(output, string'(","));
            write(output, delay_ps(Cout'last_event)); write(output, string'(","));
            write(output, delay_ps(Ovfl'last_event)); write(output, string'(","));
            write(output, boolean'image(passed)); write(output, string'(","));
            write(output, to_hstring(av)); write(output, string'(","));
            write(output, to_hstring(bv)); write(output, string'(","));
            write(output, to_string(ci)); write(output, string'(","));
            write(output, to_hstring(S)); write(output, string'(","));
            write(output, to_string(Cout)); write(output, string'(","));
            write(output, to_string(Ovfl)); writeline(results, output);
            assert passed report "Timing vector failed: " & integer'image(idx) severity failure;
        end loop;
        report "TIMING_COMPLETE vectors=" & integer'image(idx);
        file_close(results);
        wait;
    end process;
end architecture;
