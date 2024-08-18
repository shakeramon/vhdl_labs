library ieee;
use ieee.std_logic_1164.all;

ENTITY RisingEdge IS
port(
    CLK : in BIT;
    D_in : in BIT;
    Rst : in BIT;
    Q_out : out BIT
);
END RisingEdge;

ARCHITECTURE behave OF RisingEdge IS
    SIGNAL s1, s2 : BIT;
BEGIN
    process(CLK , RST)
    BEGIN
        if Rst='1' THEN
            s1<='1';
            s2<='1';
        ELSif CLK'EVENT AND CLK='1' THEN
            s1<=D_in;
            s2<=s1;
        END if;
    END process;
    Q_out<= ((NOT s2) AND  s1);
end behave;