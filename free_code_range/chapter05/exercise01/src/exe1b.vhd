--library
library ieee;
use ieee.std_logic_1164.all;

entity exe1b is 
    port( a, b, c, d : in std_logic;
          y : out std_logic
    );
    end exe1b;

    --sequential if architecture
architecture if_cond of exe1b is 
begin    
    process(a,b,c,d)
        begin
            if (((not a) and c and (not d)) or ((not b) and c) or ( b and c and (not d))) 
                then y <= '1';
                else y <= '0';
            end if;
            end process;
end if_cond;

architecture case_cond of exe1b is 
signal abcd : std_logic_vector(3 downto 0);
begin
    abcd <= a & b & c & d;
    process(abcd, a, b, c , d)
    begin
        case abcd is
            when "0010" => y <= '1';
            when "0011" => y <= '1';
            when "0110" => y <= '1';
            when "1010" => y <= '1';
            when "1011" => y <= '1';
            when "1110" => y <= '1';
            when others => y <= '0';
        end case;
    end process;
end case_cond;

configuration cfg_case_func1b of exe1b is
    for case_cond
    end for;
end cfg_case_func1b;
configuration cfg_if_func1b of exe1b is
    for if_cond
    end for;
end cfg_if_func1b;