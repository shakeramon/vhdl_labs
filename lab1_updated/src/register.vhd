library ieee;
use ieee.std_logic_1164.all;

ENTITY Register_l IS
port(
    CLK : in std_logic;
    RST : in std_logic;
    ENA : in std_logic;
    D_in : in std_logic_vector (7 downto 0);
    Q_out : out std_logic_vector (7 downto 0)
);
END Register_l;

ARCHITECTURE behave OF Register_l IS
BEGIN
    process(CLK, ENA, RST)
    BEGIN
        if RST='1' then
            Q_out<="00000000";
        elsif CLK'event AND CLK='1' AND ENA='1' then
            Q_out<=D_in;
        END if;
    END process;
end behave;