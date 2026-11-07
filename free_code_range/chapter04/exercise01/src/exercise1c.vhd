--concurrent signal assignment
--entity
library ieee;
use ieee.std_logic_1164.all;
entity exercise1c is 
    port (A,B, C, D : in std_logic;
          output : out std_logic
          );
    end exercise1c;
--concurrent architecture
architecture conc of exercise1c is
begin
    output <= ((not a) or b ) and (c or (not b) or (not d)) and (d or (not a));
end conc;