--library
library ieee;
use ieee.std_logic_1164.all;

entity exe1c is
    port (a, b, c, d : in std_logic;
          y : out std_logic
          );
    end exe1c;

--architecture with if_sequential 
architecture if_cond of exe1c is
begin
    proc_if_cond : process (a,b,c,d)
                   begin
                    if(((not a) or b) and ((not b) or c or (not d)) and ((not a) or d)) 
                    then y <= '1';
                    else y <= '0';
                    end if;
                end process proc_if_cond;
            end if_cond;
            
--arcitecture with case_sequential
architecture case_cond of exe1c is
signal abcd : std_logic_vector(3 downto 0);
begin
    abcd <= a & b & c & d;
    proc_case_cond :process(a,b,c,d,abcd)
                    begin
                        case abcd is 
                            when "0101" => y <= '0';
                            when "1000" => y <= '0';
                            when "1001" => y <= '0';
                            when "1010" => y <= '0';
                            when "1011" => y <= '0';
                            when "1100" => y <= '0';
                            when "1101" => y <= '0';
                            when "1110" => y <= '0';
                            when others => y <= '1';
                        end case;
                    end process proc_case_cond;
                end case_cond;

configuration cfg_if_cond of exe1c is
    for if_cond
    end for;
end cfg_if_cond;

configuration cfg_case_cond of exe1c is
    for case_cond
    end for;
end cfg_case_cond;