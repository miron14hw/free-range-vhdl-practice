--exercise 2b
--library 
library ieee;
use ieee.std_logic_1164.all;
--entity
entity exe2b is
    port (a,b,c,d : in std_logic;
        y : out std_logic
        );
    end exe2b;

--conditional signal assignment
architecture cond of exe2b is
begin 
    y <= '0' when (a = '1' and b = '0') else
              '0' when ( b = '1' and c ='0' and d = '1') else 
              '0' when (a = '1' and d = '0') else
              '1';
end cond;

--select signal assignment
architecture sigas of exe2b is 
    signal cat_b : std_logic_vector(3 downto 0);

begin
    cat_b <= (a & b & c & d);
    with cat_b select
        y <= '0' when  "1000" |"1001" |"1010" |"1011" |"0101" | "1101" |"1100" |"1110" ,
             '1' when others;  
end sigas;             