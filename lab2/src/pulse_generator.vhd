library ieee;
use ieee.std_logic_1164.all;

entity pulse_generator is
----------------------------constant declaration.
generic (
        G_CLOCKS_PER_PULSE  : integer := 15E6 --frequency divider
    );
port(
		  RST 	: in    std_logic;
        CLK 	: in    std_logic;
        RATE 	: in    std_logic;
        PULSE 	: out   std_logic
);
end entity;

architecture behave of pulse_generator is -- This is the architecture of the pulse generator
signal count :integer range 0 to 2*G_CLOCKS_PER_PULSE; --counter so we can change the rate at which the light organ run
begin
	process(CLK,RST)
	begin
		if RST='1' then --to reset the project
			pulse<='0';
			count<=0;
		elsif rising_edge(CLK) then
			PULSE<='0';
			if count=0 then -- we create a pulse every G_CLOCKS_PER_PULSE or 2*G_CLOCKS_PER_PULSE
				PULSE<='1';
				if RATE='0' then -- sets how many G_CLOCKS_PER_PULSE we create the pulse
					count<=G_CLOCKS_PER_PULSE-1;
				else
					count<=2*G_CLOCKS_PER_PULSE-1;
				end if;
			else
			count<=count-1;
			end if;
		end if;
	end process;
end behave;