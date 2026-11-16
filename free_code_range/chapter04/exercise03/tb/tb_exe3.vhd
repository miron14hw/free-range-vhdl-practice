--exercise 3
--library
library ieee;
use ieee.std_logic_1164.all;
--library for for loop
use ieee.numeric_std.all;

--entity
entity test3 is 
end test3;

--architecture
architecture dut of test3 is 

        --testbench signal 
        signal a_s : std_logic_vector(7 downto 0);
        signal and_out_conc ,and_out_cond , and_out_select : std_logic;
begin 
    dut1 : entity work.exe3(conc)
        port map(a => a_s,
             and_out => and_out_conc
             );
    dut2 : entity work.exe3(cond)
        port map(a => a_s,
             and_out => and_out_cond
             );
    dut3 : entity work.exe3(sigas)
                port map(a => a_s,
             and_out => and_out_select
             );
            proc: process 
                  begin
                    for i in 0 to 255 loop 
                        a_s <=std_logic_vector(to_unsigned(i,8));
                        wait for 20 ns;
                        if i = 255 then 
                                assert and_out_conc = '1'
                                   report "the concurent and output is wrong it should be 1"
                                   severity error;                           
                               assert and_out_cond = '1'
                                   report "the conditional and output is wrong it should be 1"
                                   severity error;
                               assert and_out_select = '1'
                                   report "the select and output is wrong it should be 1"
                                   severity error;
                            else
                                assert and_out_conc = '0'
                                   report "the concurent and output is wrong it should be 1"
                                   severity error;
                                assert and_out_cond = '0'
                                   report "the conditional and output is wrong it should be 0"
                                   severity error;
                               assert and_out_select = '0'
                                   report "the select and output is wrong it should be 0"
                                   severity error;
                            end if;
                    end loop;
                    report "all test cases completed";
                    wait;      
                end process proc;
end dut;                                                

