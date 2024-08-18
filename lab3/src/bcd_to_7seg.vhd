
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity bcd_to_7seg is
port(
    BCD_IN          : in std_logic_vector(3 downto 0);   -- 4-bit BCD input
    D_OUT           : out std_logic_vector(6 downto 0)); -- 7-segment display output
end entity;
       
architecture behave of bcd_to_7seg is
   
begin 
   -- Conditional assignment for 7-segment display output based on BCD input
   D_OUT <= "1000000" when BCD_IN = 0 else
            "1111001" when BCD_IN = 1 else 
            "0100100" when BCD_IN = 2 else
            "0110000" when BCD_IN = 3 else
            "0011001" when BCD_IN = 4 else
            "0010010" when BCD_IN = 5 else
            "0000010" when BCD_IN = 6 else
            "1111000" when BCD_IN = 7 else
            "0000000" when BCD_IN = 8 else
            "0010000" when BCD_IN = 9 else
            "1111111"; -- Default case (all segments off)
end architecture;

