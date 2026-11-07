--exercise 4 of the chapter 4
--8 input AND gate 
--library
library ieee;
use ieee.std_logic_1164.all;

--entity
entity exe4 is
    port(a : in std_logic_vector(7 downto 0);
        or_out : out std_logic
        );
    end exe4;

--architecture concurrent
architecture conc of exe3 is 
begin
    or_out <= a(0) or a(1) or a(2) or a(3) or a(4) or a(5) or a(6) or a(7);
end conc;

--architecture conditional signal assignment 
architecture cond of exe4 is
begin 
    or_out <= '0' when a(0) ='0' and a(1) ='0' and a(2) ='0' and a(3) ='0' and a(4) ='0' and a(5) ='0' and a(6) ='0' and a(7) ='0' else 
               '1' ;
    end cond;

--architecture signal assignment
architecture sigas of exe4 is 
begin
    with a select
    and_out <= '0' when "00000000",
               '1' when others;
end sigas;
