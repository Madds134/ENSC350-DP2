library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use std.textio.all;

-- Single testbench for every Adder design candidate (DP2).
-- Reads Adder00.tvs for test vectors.
entity TBAdder is
end entity TBAdder;

architecture Test of TBAdder is
    constant N  : natural := 64;
    constant TestVectorFile : string := "Adder00.tvs";
    constant PreStimTime    : time := 1 ns;
    constant PostStimTime   : time := 10 ns;

    -- Signals for the DUT ports
    signal TBA, TBB, TBS : std_logic_vector(N-1 downto 0);
    signal TBCin, TBCout, TBOvfl : std_logic;

    -- Expected values
    signal TBtrueS    : std_logic_vector(N-1 downto 0);
    signal TBtrueCout : std_logic;
    signal TBtrueOvfl : std_logic;

    -- Index in file
    signal TBMeasurementIndex : natural := 0;

    -- DUT as a component
    component Adder is
        generic ( N : natural := 64 );
        port ( A, B       : in  std_logic_vector(N-1 downto 0);
               S          : out std_logic_vector(N-1 downto 0);
               Cin        : in  std_logic;
               Cout, Ovfl : out std_logic );
    end component Adder;
begin
    -- DUT instantiated through the component via configuration
    DUT: Adder
        generic map (N => N)
        port map (A => TBA, B => TBB, Cin => TBCin,
                  S => TBS, Cout => TBCout, Ovfl => TBOvfl);

    MAIN: process
        file VectorFile     : text;
        variable LineBuffer : line;
        variable A_var, B_var, S_var : std_logic_vector(N-1 downto 0);
        variable Cin_var, Cout_var, Ovfl_var : std_logic;
        variable Measurement_Index : natural;
        variable Failures : natural;
        variable Status : string(1 to 4);
        variable Level  : severity_level; -- Note when pass, error on FAIL
        variable OpenStatus : file_open_status; -- result of opening the vector file
        variable ok, LineOK : boolean;          -- 'good' flag from each read / whole line
    begin
        -- Open the vector file; stop with a clear message if it is missing
        file_open(OpenStatus, VectorFile, TestVectorFile, read_mode);
        assert OpenStatus = open_ok
            report "Cannot open " & TestVectorFile & ": " & file_open_status'image(OpenStatus)
            severity failure;

        -- Header of the test conditionss
        report "TBAdder: N=" & integer'image(N) & ", vectors from " & TestVectorFile &
               ", PreStimTime=" & time'image(PreStimTime) &
               ", PostStimTime=" & time'image(PostStimTime);
        Measurement_Index := 1;
        Failures :=  0;

        while not endFile(VectorFile) loop
            readline(VectorFile, LineBuffer);
            -- Fields in the spec's order { A B Cin S Cout Ovfl }; every read must succeed
            hread(LineBuffer, A_var, ok);     LineOK := ok;
            hread(LineBuffer, B_var, ok);     LineOK := LineOK and ok;
            read (LineBuffer, Cin_var, ok);   LineOK := LineOK and ok;
            hread(LineBuffer, S_var, ok);     LineOK := LineOK and ok;
            read (LineBuffer, Cout_var, ok);  LineOK := LineOK and ok;
            read (LineBuffer, Ovfl_var, ok);  LineOK := LineOK and ok;
            assert LineOK
                report "Malformed test vector on line " & integer'image(Measurement_Index)
                severity failure;
            TBMeasurementIndex <= Measurement_Index;

            -- Pre stim
            TBA <= (others => 'X');
            TBB <= (others => 'X');
            TBCin <= 'X';
            wait for PreStimTime;

            -- Apply stim
            TBA <= A_var;
            TBB <= B_var;
            TBCin <= Cin_var;
            TBtrueS <= S_var;
            TBtrueCout <= Cout_var;
            TBtrueOvfl <= Ovfl_var;
            wait for PostStimTime;

            -- Report
            if TBS = TBtrueS and TBCout = TBtrueCout and TBOvfl = TBtrueOvfl then
                Status := "PASS";
                Level := note;
            else
                Status := "FAIL";
                Failures := Failures + 1;
                Level := error;
            end if;
            report "Meas " & integer'image(Measurement_Index) & " " & Status &
                   " | A=" & to_hstring(A_var) & " B=" & to_hstring(B_var) &
                   " Cin=" & to_string(Cin_var) &
                   " | expected S=" & to_hstring(S_var) &
                   " Cout=" & to_string(Cout_var) & " Ovfl=" & to_string(Ovfl_var) &
                   " | actual S=" & to_hstring(TBS) &
                   " Cout=" & to_string(TBCout) & " Ovfl=" & to_string(TBOvfl)
                severity Level;  

            Measurement_Index := Measurement_Index + 1;
        end loop;

        report "Simulation Completed: " & integer'image(Measurement_Index - 1) &
               " measurements, " & integer'image(Failures) & " failures";
        file_close(VectorFile);
        wait;
    end process MAIN;
end architecture Test;
