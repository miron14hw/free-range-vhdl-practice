--concurrent signal assignment
--F(A,B) = not(A)B + A +A(not B)
--entity
library ieee;
use ieee.std_logic_1164.all;
entity exercise1a is 
    port(A, B : in std_logic;
        y  : out std_logic
        );
end exercise1a;

--concurrent architecture
architecture conc of exercise1a is
begin
    y  <= ((not A) and B) OR A OR (A AND (NOT B));
end conc;