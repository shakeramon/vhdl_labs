library ieee;
use ieee.std_logic_1164.all;

-- half adder
entity half_adder is
port( 
	A,B : in std_logic;
	sum,cout : out std_logic
);
end entity;


-- architecture  
architecture behave of half_adder is 
begin 
	sum <= A xor B;
	cout <= A and B;
end architecture;