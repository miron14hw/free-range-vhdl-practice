--library
library ieee;
use ieee.std_logic_1164.all;

entity exe1e is
    port (a, b, c, d : in std_logic;
          y : out std_logic
          );
    end exe1e;

--architecture with if_sequential 
architecture if_cond of exe1e is
begin
    proc_if_cond : process (a,b,c,d)
                   begin
                    if(((not a) and (not b) and (not c) and d ) or ((not a) and (not b) and c and (not d)) ) 
                    then y <= '1';
                    else y <= '0';
                    end if;
                end process proc_if_cond;
            end if_cond;
            
--arcitecture with case_sequential
architecture case_cond of exe1e is
signal abcd : std_logic_vector(3 downto 0);
begin
    abcd <= a & b & c & d;
    proc_case_cond :process(a,b,c,d,abcd)
                    begin
                        case abcd is 
                            when "0001" => y <= '1';
                            when "0010" => y <= '1';
                            when others => y <= '0';
                        end case;
                    end process proc_case_cond;
                end case_cond;

configuration cfg_if_cond_1e of exe1e is
    for if_cond
    end for;
end cfg_if_cond_1e;

configuration cfg_case_cond_1e of exe1e is
    for case_cond
    end for;
end cfg_case_cond_1e;