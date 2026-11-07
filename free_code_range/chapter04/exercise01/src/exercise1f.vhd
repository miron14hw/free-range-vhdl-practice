--concurrent signal assignment
--entity
library ieee;
use ieee.std_logic_1164.all;
entity exercise1f is 
    port (A,B, C, D : in std_logic;
          output : out std_logic
          );
    end exercise1f;
--concurrent architecture
architecture conc of exercise1f is
begin
    output <= (d and (not a) and (not b) and (not c)) or ((not a ) and (not b) and c and (not d));
end conc;
