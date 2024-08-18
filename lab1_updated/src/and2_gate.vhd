library ieee;
use ieee.std_logic_1164.all;

entity and2_gate is 
    port(
        A : in std_logic;  -- This is A input 
        B : in std_logic;  -- This is B input
        C : out std_logic
    );
end entity;

architecture behave of and2_gate is 
begin 
    C <= A and B;
end architecture;
