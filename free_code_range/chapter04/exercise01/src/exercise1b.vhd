--concurrent signal assignment
--entity
library ieee;
use ieee.std_logic_1164.all;
entity exercise1b is 
    port (A,B, C, D : in std_logic;
          output : out std_logic
          );
    end exercise1b;
--concurrent architecture
architecture conc of exercise1b is
begin
    output <= (not A and C and (not D)) OR ((not B) and C) OR (B and C and (not D));
end conc;
