library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux_4to1 is
    Port ( input0 : in  STD_LOGIC_VECTOR(7 downto 0);
           input1 : in  STD_LOGIC_VECTOR(7 downto 0);
           input2 : in  STD_LOGIC_VECTOR(7 downto 0);
           input3 : in  STD_LOGIC_VECTOR(7 downto 0);
           sel : in  STD_LOGIC_VECTOR(1 downto 0);
           output : out  STD_LOGIC_VECTOR(7 downto 0));
end mux_4to1;

architecture Behavioral of mux_4to1 is
begin
    process(input0, input1, input2, input3, sel)
    begin
        case sel is
            when "00" =>
                output <= input0;
            when "01" =>
                output <= input1;
            when "10" =>
                output <= input2;
            when "11" =>
                output <= input3;
            when others =>
                output <= (others => 'Z'); -- Corrected to define a default state properly
        end case;
    end process;
end Behavioral;

