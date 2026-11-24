--testbench of the exercise 6
library ieee;
use ieee.std_logic_1164.all;

entity test6 is
end test6;

--entity exe6 is 
--    port( a : in std_logic_vector(2 downto 0)
--          deco : out std_logic_vector (7 downto 0)
--        );
--    end exe6;
    
architecture dut of test6 is 
signal deco_out_conc_s, deco_out_cond_s, deco_out_sigas_s : std_logic_vector(7 downto 0);
signal a_s : std_logic_vector(2 downto 0);
begin
    dut1 : entity work.exe6(conc)
                  port map( a => a_s,
                            deco => deco_out_conc_s);
    dut2 : entity work.exe6(cond)
                  port map( a => a_s,
                            deco => deco_out_cond_s);
    dut3 : entity work.exe6(sigas)
                  port map( a => a_s,
                            deco => deco_out_sigas_s);
                  process 
                  begin
                  a_s <= "000";
                  wait for 20 ns;
                    assert deco_out_conc_s =  "00000001"
                     report "the output should be the '00000001'"
                     severity error;   
                    assert deco_out_cond_s =  "00000001"
                     report "the output should be the '00000001'"
                     severity error;
                    assert deco_out_sigas_s = "00000001"
                     report "the output should be the '00000001'"
                     severity error;    
                  a_s <= "001";
                  wait for 20 ns;
                    assert deco_out_conc_s =  "00000010"
                     report "the output should be the '00000010'"
                     severity error;   
                    assert deco_out_cond_s =  "00000010"
                     report "the output should be the '00000010'"
                     severity error;
                    assert deco_out_sigas_s = "00000010"
                     report "the output should be the '00000010'"
                     severity error; 
                   a_s <= "010";
                  wait for 20 ns;
                    assert deco_out_conc_s =  "00000100"
                     report "the output should be the '00000100'"
                     severity error;   
                    assert deco_out_cond_s =  "00000100"
                     report "the output should be the '00000100'"
                     severity error;
                    assert deco_out_sigas_s = "00000100"
                     report "the output should be the '00000100'"
                     severity error;  
                    a_s <= "011";
                  wait for 20 ns;
                    assert deco_out_conc_s =  "00001000"
                     report "the output should be the '00001000'"
                     severity error;   
                    assert deco_out_cond_s =  "00001000"
                     report "the output should be the '00001000'"
                     severity error;
                    assert deco_out_sigas_s = "00001000"
                     report "the output should be the '00001000'"
                     severity error; 
                    a_s <= "100";
                  wait for 20 ns;
                    assert deco_out_conc_s =  "00010000"
                     report "the output should be the '00010000'"
                     severity error;   
                    assert deco_out_cond_s =  "00010000"
                     report "the output should be the '00010000'"
                     severity error;
                    assert deco_out_sigas_s = "00010000"
                     report "the output should be the '00010000'"
                     severity error; 
                     a_s <= "101";
                  wait for 20 ns;
                    assert deco_out_conc_s =  "00100000"
                     report "the output should be the '00100000'"
                     severity error;   
                    assert deco_out_cond_s =  "00100000"
                     report "the output should be the '00100000'"
                     severity error;
                    assert deco_out_sigas_s = "00100000"
                     report "the output should be the '00100000'"
                     severity error;
                     a_s <= "110";
                  wait for 20 ns;
                    assert deco_out_conc_s =  "01000000"
                     report "the output should be the '01000000'"
                     severity error;   
                    assert deco_out_cond_s =  "01000000"
                     report "the output should be the '01000000'"
                     severity error;
                    assert deco_out_sigas_s = "01000000"
                     report "the output should be the '01000000'"
                     severity error; 
                     a_s <= "111";
                  wait for 20 ns;
                    assert deco_out_conc_s =  "10000000"
                     report "the output should be the '10000000'"
                     severity error;   
                    assert deco_out_cond_s =  "10000000"
                     report "the output should be the '10000000'"
                     severity error;
                    assert deco_out_sigas_s = "10000000"
                     report "the output should be the '10000000'"
                     severity error;
                  report "all test cases completed";
                  wait;
                  end process; 
end dut;                         
                            