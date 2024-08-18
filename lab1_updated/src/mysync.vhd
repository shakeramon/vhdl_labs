library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mysync is
port ( 
    D_IN1: IN std_logic;
    CLK: IN std_logic;
    RST: in std_logic;
    Q_OUT2: OUT std_logic);
end entity;

architecture behave of mysync is 
    signal Q_OUT1 : std_logic;
begin
    process(CLK, RST)
    begin 
        if (RST = '1') then
            Q_OUT2 <= '0';
            Q_OUT1 <= '0';
        elsif (rising_edge(CLK)) then
            Q_OUT2 <= Q_OUT1;
            Q_OUT1 <= D_IN1;
        end if;
    end process;
end behave;