library ieee;
use ieee.std_logic_1164.all;

ENTITY counter IS
    generic( count_limit : integer := 9 );
    port(
        CLK : in std_logic;
        RST : in std_logic;
        ENA : in std_logic;
        Q_out : out integer range 0 to count_limit
    );
END counter;

ARCHITECTURE behave OF counter IS
    signal tmp : integer range 0 to count_limit+1;
BEGIN
    process(CLK , ENA, RST)
    BEGIN
        if (RST='1') OR ((tmp=10) AND CLK'event AND CLK='1') then
            Q_out<=0;
            tmp<=1;
        elsif CLK'event AND CLK='1' AND ENA='1' then
            tmp<=tmp+1;
            Q_out<=tmp;
        END if;
    END process;
end behave;