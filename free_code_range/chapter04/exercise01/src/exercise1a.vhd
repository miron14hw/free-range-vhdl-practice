--concurrent signal assignment
--F(A,B) = not(A)B + A +A(not B)
--entity
library ieee;
use ieee.std_logic_1164.all;
entity example1a is 
    port(A, B : in std_logic;
        output  : out std_logic
        );
end example1a;

--concurrent architecture
architecture conc of example1a is
begin
    output  <= ((not A) and B) OR A OR (A AND (NOT B));
end conc;