library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use std.textio.all;

-- Single testbench for every Adder design candidate (DP2), functional (FS) and timing (TS).
-- Reads the vector file named by the TestVectorFile generic.
-- Each measurement: 'X' on every input for PreStimTime, apply the vector, wait until the
-- outputs are stable, then measure the S and Status (Cout, Ovfl) delays and check the result.
entity TBAdder is
    generic (N              : natural := 64;              -- adder width (vsim -gN=...)
             TestVectorFile : string  := "Adder00.tvs"    -- vector file (vsim -gTestVectorFile=...)
            );
end entity TBAdder;

architecture Test of TBAdder is
    constant PreStimTime    : time := 100 ns; -- 'X' on every input; longer than any delay, so every output goes X first
    constant StableTime     : time := 20 ns;  -- outputs count as settled after this long with no event
    constant Timeout        : time := 500 ns; -- give up waiting for the outputs to settle after this long

    -- Signals for the DUT ports
    signal TBA, TBB, TBS : std_logic_vector(N-1 downto 0);
    signal TBCin, TBCout, TBOvfl : std_logic;

    -- Expected values
    signal TBtrueS    : std_logic_vector(N-1 downto 0);
    signal TBtrueCout : std_logic;
    signal TBtrueOvfl : std_logic;

    -- Index in file
    signal TBMeasurementIndex : natural := 0;

    -- Measured delays of the current test vector (shown in the wave window)
    signal TBDelayS, TBDelayStatus : time := 0 ns;

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

        -- Delay measurement variables
        variable T0          : time; -- time the stimulus was applied
        variable Elapsed     : time; -- time from T0 until outputs became stable
        variable DelayS      : time; -- delay at S for this vector
        variable DelayStatus : time; -- delay at Status (the later of Cout and Ovfl)
        variable StatusLast  : time; -- time since the later of Cout/Ovfl last changed
        variable WorstS, WorstStatus : time := 0 ns; -- largest delays so far
        variable WorstSIndex, WorstStatusIndex : natural := 0; -- the vectors that caused largest delays
    begin
        -- Open the vector file; stop with a clear message if it is missing
        file_open(OpenStatus, VectorFile, TestVectorFile, read_mode);
        assert OpenStatus = open_ok
            report "Cannot open " & TestVectorFile & ": " & file_open_status'image(OpenStatus)
            severity failure;

        -- Header of the test conditions
        report "TBAdder: N=" & integer'image(N) & ", vectors from " & TestVectorFile &
               ", PreStimTime=" & time'image(PreStimTime) &
               ", StableTime=" & time'image(StableTime) &
               ", Timeout=" & time'image(Timeout);
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
            T0 := now;

            -- Wait until no output has changed for StableTime, or give up at Timeout
            loop
                wait on TBS, TBCout, TBOvfl for StableTime;
                exit when TBS'last_event >= StableTime and TBCout'last_event >= StableTime
                          and TBOvfl'last_event >= StableTime;
                exit when now - T0 >= Timeout;
            end loop;
            Elapsed := now - T0;
            assert Elapsed < Timeout
                report "Meas " & integer'image(Measurement_Index) & ": outputs did not settle within Timeout"
                severity error;
            
            -- Delay = time from T0 to the last event on that output (0 if it had no event since T0)
            if TBS'last_event < Elapsed then DelayS := Elapsed - TBS'last_event;
            else DelayS := 0 ns; end if;
            if TBCout'last_event < TBOvfl'last_event then StatusLast := TBCout'last_event;
            else StatusLast := TBOvfl'last_event; end if;
            if StatusLast < Elapsed then DelayStatus := Elapsed - StatusLast;
            else DelayStatus := 0 ns; end if;
            TBDelayS <= DelayS;
            TBDelayStatus <= DelayStatus;

            -- Keep the worst delays and the vectors that caused them
            if DelayS > WorstS then
                WorstS := DelayS;  WorstSIndex := Measurement_Index;
            end if;
            if DelayStatus > WorstStatus then
                WorstStatus := DelayStatus;  WorstStatusIndex := Measurement_Index;
            end if;

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
                   " Cout=" & to_string(TBCout) & " Ovfl=" & to_string(TBOvfl) &
                   " | delay S=" & time'image(DelayS) & " Status=" & time'image(DelayStatus)
                severity Level;

            Measurement_Index := Measurement_Index + 1;
        end loop;

        -- Worst-case delays with the vectors that caused them (CollectTiming.tcl reads this line)
        report "Simulation Completed: " & integer'image(Measurement_Index - 1) &
               " measurements, " & integer'image(Failures) & " failures" &
               " | worst S delay=" & time'image(WorstS) & " (meas " & integer'image(WorstSIndex) & ")" &
               " | worst Status delay=" & time'image(WorstStatus) & " (meas " & integer'image(WorstStatusIndex) & ")";
        file_close(VectorFile);
        wait;
    end process MAIN;
end architecture Test;
