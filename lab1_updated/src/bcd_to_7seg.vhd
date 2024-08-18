library ieee;
use ieee.std_logic_1164.all;
entity bcd_to_7seg is
port (bcd_in : in integer range 0 to 9;
     d_out :out std_logic_vector(6 downto 0));
end bcd_to_7seg;
architecture behave of bcd_to_7seg is
begin
d_out<= "1000000" when bcd_in=0 else
        "1111001" when bcd_in=1 else 
		"0100100" when bcd_in=2 else
		"0110000" when bcd_in=3 else
		"0011001" when bcd_in=4 else
		"0010010" when bcd_in=5 else
		"0000010" when bcd_in=6 else
		"1111000" when bcd_in=7 else
		"0000000" when bcd_in=8 else
		"0010000" when bcd_in=9 else
		"1111111";
 end behave;
