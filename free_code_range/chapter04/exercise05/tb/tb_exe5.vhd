--testbench of the exercise 5
library ieee;
use ieee.std_logic_1164.all;

entity test5 is
end test5;

--entity exe5 is 
--    port ( a : in std_logic_vector(7 downto 0);
 --          sel : in std_logic_vector(2 downto 0);
 --          mux_out : out std_logic
 --          );
 --   end exe5;
    
architecture dut of test5 is 
signal a_s : std_logic_vector(7 downto 0);
signal sel_s : std_logic_vector(2 downto 0);
signal mux_out_conc_s, mux_out_cond_s, mux_out_sigas_s  : std_logic;
begin
    dut1 : entity work.exe5(conc)
                  port map( a => a_s,
                            sel => sel_s,
                            mux_out => mux_out_conc_s);
    dut2 : entity work.exe5(cond)
                  port map( a => a_s,
                            sel => sel_s,
                            mux_out => mux_out_cond_s);
    dut3 : entity work.exe5(sigas)
                  port map( a => a_s,
                            sel => sel_s,
                            mux_out => mux_out_sigas_s);
                  process 
                  begin
                  a_s <= "00000001"; sel_s <= "000";
                  wait for 20 ns;
                    assert mux_out_conc_s = '1'
                     report "the output should be the '1'"
                     severity error;   
                    assert mux_out_cond_s = '1'
                     report "the output should be the '1'"
                     severity error;
                    assert mux_out_sigas_s = '1'
                     report "the output should be the '1'"
                     severity error;
                  a_s <= not a_s;
                  wait for 20 ns;
                    assert mux_out_conc_s = '0'
                     report "the output should be the '0'"
                     severity error;   
                    assert mux_out_cond_s = '0'
                     report "the output should be the '0'"
                     severity error;
                    assert mux_out_sigas_s = '0'
                     report "the output should be the '0'"
                     severity error;     
                  a_s <= "00000010"; sel_s <= "001";
                  wait for 20 ns;
                    assert mux_out_conc_s = '1'
                     report "the output should be the '1'"
                     severity error;   
                    assert mux_out_cond_s = '1'
                     report "the output should be the '1'"
                     severity error;
                    assert mux_out_sigas_s = '1'
                     report "the output should be the '1'"
                     severity error;
                   a_s <= not a_s;
                  wait for 20 ns;
                    assert mux_out_conc_s = '0'
                     report "the output should be the '0'"
                     severity error;   
                    assert mux_out_cond_s = '0'
                     report "the output should be the '0'"
                     severity error;
                    assert mux_out_sigas_s = '0'
                     report "the output should be the '0'"
                     severity error;  
                   a_s <= "00000100"; sel_s <= "010";
                  wait for 20 ns;
                    assert mux_out_conc_s = '1'
                     report "the output should be the '1'"
                     severity error;   
                    assert mux_out_cond_s = '1'
                     report "the output should be the '1'"
                     severity error;
                    assert mux_out_sigas_s = '1'
                     report "the output should be the '1'"
                     severity error;
                   a_s <= not a_s;
                  wait for 20 ns;
                    assert mux_out_conc_s = '0'
                     report "the output should be the '0'"
                     severity error;   
                    assert mux_out_cond_s = '0'
                     report "the output should be the '0'"
                     severity error;
                    assert mux_out_sigas_s = '0'
                     report "the output should be the '0'"
                     severity error;  
                    a_s <= "00001000"; sel_s <= "011";
                  wait for 20 ns;
                    assert mux_out_conc_s = '1'
                     report "the output should be the '1'"
                     severity error;   
                    assert mux_out_cond_s = '1'
                     report "the output should be the '1'"
                     severity error;
                    assert mux_out_sigas_s = '1'
                     report "the output should be the '1'"
                     severity error;
                    a_s <= not a_s;
                  wait for 20 ns;
                    assert mux_out_conc_s = '0'
                     report "the output should be the '0'"
                     severity error;   
                    assert mux_out_cond_s = '0'
                     report "the output should be the '0'"
                     severity error;
                    assert mux_out_sigas_s = '0'
                     report "the output should be the '0'"
                     severity error; 
                    a_s <= "00010000"; sel_s <= "100";
                  wait for 20 ns;
                    assert mux_out_conc_s = '1'
                     report "the output should be the '1'"
                     severity error;   
                    assert mux_out_cond_s = '1'
                     report "the output should be the '1'"
                     severity error;
                    assert mux_out_sigas_s = '1'
                     report "the output should be the '1'"
                     severity error;
                    a_s <= not a_s;
                  wait for 20 ns;
                    assert mux_out_conc_s = '0'
                     report "the output should be the '0'"
                     severity error;   
                    assert mux_out_cond_s = '0'
                     report "the output should be the '0'"
                     severity error;
                    assert mux_out_sigas_s = '0'
                     report "the output should be the '0'"
                     severity error; 
                     a_s <= "00100000"; sel_s <= "101";
                  wait for 20 ns;
                    assert mux_out_conc_s = '1'
                     report "the output should be the '1'"
                     severity error;   
                    assert mux_out_cond_s = '1'
                     report "the output should be the '1'"
                     severity error;
                    assert mux_out_sigas_s = '1'
                     report "the output should be the '1'"
                     severity error;
                    a_s <= not a_s;
                  wait for 20 ns;
                    assert mux_out_conc_s = '0'
                     report "the output should be the '0'"
                     severity error;   
                    assert mux_out_cond_s = '0'
                     report "the output should be the '0'"
                     severity error;
                    assert mux_out_sigas_s = '0'
                     report "the output should be the '0'"
                     severity error; 
                     a_s <= "01000000"; sel_s <= "110";
                  wait for 20 ns;
                    assert mux_out_conc_s = '1'
                     report "the output should be the '1'"
                     severity error;   
                    assert mux_out_cond_s = '1'
                     report "the output should be the '1'"
                     severity error;
                    assert mux_out_sigas_s = '1'
                     report "the output should be the '1'"
                     severity error;
                    a_s <= not a_s;
                  wait for 20 ns;
                    assert mux_out_conc_s = '0'
                     report "the output should be the '0'"
                     severity error;   
                    assert mux_out_cond_s = '0'
                     report "the output should be the '0'"
                     severity error;
                    assert mux_out_sigas_s = '0'
                     report "the output should be the '0'"
                     severity error; 
                     a_s <= "10000000"; sel_s <= "111";
                  wait for 20 ns;
                    assert mux_out_conc_s = '1'
                     report "the output should be the '1'"
                     severity error;   
                    assert mux_out_cond_s = '1'
                     report "the output should be the '1'"
                     severity error;
                    assert mux_out_sigas_s = '1'
                     report "the output should be the '1'"
                     severity error;
                    a_s <= not a_s;
                  wait for 20 ns;
                    assert mux_out_conc_s = '0'
                     report "the output should be the '0'"
                     severity error;   
                    assert mux_out_cond_s = '0'
                     report "the output should be the '0'"
                     severity error;
                    assert mux_out_sigas_s = '0'
                     report "the output should be the '0'"
                     severity error; 
                  
                  report "all test cases completed";
                  wait;
                  end process; 
end dut;                         
                            