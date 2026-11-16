--exercise2 testbench 
--library
library ieee;
use ieee.std_logic_1164.all;

--entity
entity test1b is
end test1b;

--architecture
architecture dut of test1b is
    --component instansiation 
    component exercise1b 
         port (A,B, C, D : in std_logic;
               y : out std_logic
               );
         end component;
         --testbench signals
        signal a_s, b_s, c_s,d_s ,y_s : std_logic;
begin
    dut1 : exercise1b port map( a => a_s,
                                b => b_s,
                                c => c_s,
                                d => d_s,
                                y => y_s);
    process 
    begin
        a_s <= '0'; b_s <= '0'; c_s <= '0'; d_s <= '0';                            
        wait for 20 ns;
        assert y_s = '0'
            report "wrong output of the a = '0'; b = '0'; c = '0'; d = '0'"
            severity error;
        d_s <= '1';
        wait for 20 ns;
        assert y_s = '0'
            report "wrong output of the a = '0'; b = '0', c = '0'; d = '1'"
            severity error;
        c_s <= '1' ; d_s <= '0';
        wait for 20 ns;
        assert y_s = '1'
            report "wrong output of the a = '0'; b = '0'; c = '1'; d = '0'"
            severity error; 
        d_s <= '1';
        wait for 20 ns;
        assert y_s = '1'
            report "wrong output of the a = '0'; b = '0'; c = '1'; d = '1'"
            severity error;
        b_s <= '1' ; c_s <= '0' ; d_s <= '0';
        wait for 20 ns;
        assert y_s = '0'
            report "wrong output of the a = '0'; b = '1'; c = '0'; d = '0'"
            severity error;
        d_s <= '1';
        wait for 20 ns;
        assert y_s = '0'
            report "wrong output of the a = '0'; b = '1'; c = '0'; d = '1'"
            severity error;   
        c_s <= '1' ; d_s <= '0';
        wait for 20 ns;
        assert y_s = '1'
            report "wrong output of the a = '0'; b = '1'; c = '1'; d = '0'" 
            severity error; 
         d_s <= '1';
        wait for 20 ns;
        assert y_s = '0'
            report "wrong output of the a = '0'; b = '1'; c = '1'; d = '1'"
            severity error;
        a_s <= '1'; b_s <= '0'; c_s <= '0'; d_s <= '0';
        wait for 20 ns;
        assert y_s = '0'
            report "wrong output of the a = '1'; b = '0'; c = '0'; d = '0'"
            severity error;
        d_s <= '1';
        wait for 20 ns;
        assert y_s = '0'
            report "wrong output of the a = '1'; b = '0'; c = '0'; d = '1'"
            severity error;   
            c_s <= '1' ; d_s <= '0';
        wait for 20 ns;
        assert y_s = '1'
            report "wrong output of the a = '1'; b = '0'; c = '1'; d = '0'"
            severity error; 
        d_s <= '1';
        wait for 20 ns;
        assert y_s = '1'
            report "wrong output of the a = '1'; b = '0'; c = '1'; d = '1'"
            severity error;
            b_s <= '1' ; c_s <= '0' ; d_s <= '0';
        wait for 20 ns;
        assert y_s = '0'
            report "wrong output of the a = '1'; b = '1'; c = '0'; d = '0'"
            severity error;
        d_s <= '1';
        wait for 20 ns;
        assert y_s = '0'
            report "wrong output of the a = '1'; b = '1'; c = '0'; d = '1'"
            severity error;   
            c_s <= '1' ; d_s <= '0';
        wait for 20 ns;
        assert y_s = '1'
            report "wrong output of the a = '1'; b = '1'; c = '1'; d = '0'"
            severity error;  
         d_s <= '1';
        wait for 20 ns;
        assert y_s = '0'
            report "wrong output of the a = '1'; b = '1'; c = '1'; d = '1'"
            severity error;
        report "all test cases completed";
        wait;
        end process;
    end dut;
