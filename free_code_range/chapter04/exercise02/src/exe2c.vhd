
--exercise 2c
--library 
library ieee;
use ieee.std_logic_1164.all;
--entity
entity exe2c is
    port (a,b,c,d : in std_logic;
        y : out std_logic
        );
    end exe2c;

--conditional signal assignment
architecture cond of exe2c is
begin 
    y <=      '0' when (a = '0' and b = '0' and c = '1' and d = '1') else
              '0' when (a = '0' and b = '0' and c = '1' and d = '0') else 
              '1';
end cond;

--select signal assignment
architecture sigas of exe2c is 
    signal cat_b : std_logic_vector(3 downto 0);

begin
    cat_b <= (a & b & c & d);
    with cat_b select
        y <= '0' when  "0011" |"0010" ,
               '1' when others;  
end sigas;