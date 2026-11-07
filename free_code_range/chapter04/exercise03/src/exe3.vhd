--exercise 3 of the chapter 4
--8 input AND gate 
--library
library ieee;
use ieee.std_logic_1164.all;

--entity
entity exe3 is
    port(a : in std_logic_vector(7 downto 0);
        and_out : out std_logic
        );
    end exe3;

--architecture concurrent
architecture conc of exe3 is 
    and_out <= a(0) and a(1) and a(2) and a(3) and a(4) and a(5) and a(6) and a(7);
end conc;

--architecture conditional signal assignment 
architecture cond of exe3 is 
    and_out <= '1' when a(0) ='1' and a(1) ='1' and a(2) ='1' and a(3) ='1' and a(4) ='1' and a(5) ='1' and a(6) ='1' and a(7) ='1' else 
               '0' ;
    end cond;

--architecture signal assignment
architecture sigas of exe3 is 
begin    
    with a select
    and_out <= '1' when "11111111",
               '0' when others;
end sigas;