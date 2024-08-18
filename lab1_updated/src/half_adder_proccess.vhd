library ieee;
use ieee.std_logic_1164.all;

-- half adder
entity half_adder_proccess is
port( 
	A,B : in std_logic;
	sum,cout : out std_logic
);
end entity;


-- architecture  
architecture behave of half_adder_proccess is 
begin 
	PROCESS (A,B)
		BEGIN
	sum <= A xor B;
	cout <= A and B;
		END PROCESS;
end architecture;