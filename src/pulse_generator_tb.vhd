library ieee;
use ieee.std_logic_1164.all;

entity pulse_generator_tb is
end entity;

architecture test of pulse_generator_tb is
    -- Component Declaration for the Unit Under Test (UUT)
    component pulse_generator
        generic (
            G_CLOCKS_PER_PULSE : integer := 5
        );
        port (
            RST   : in  std_logic;
            CLK   : in  std_logic;
            RATE  : in  std_logic;
            PULSE : out std_logic
        );
    end component;

    -- Signals to connect to UUT
    signal RST   : std_logic := '1';
    signal CLK   : std_logic := '0';
    signal RATE  : std_logic := '0';
    signal PULSE : std_logic;

    -- Clock period definition
    constant CLK_PERIOD : time := 10 ns;

    -- Simulation run control
    signal run : std_logic := '1';

begin
    -- Instantiate the Unit Under Test (UUT)
    uut: pulse_generator
        generic map (
            G_CLOCKS_PER_PULSE => 5
        )
        port map (
            RST   => RST,
            CLK   => CLK,
            RATE  => RATE,
            PULSE => PULSE
        );

    -- Clock process definitions
    CLK_process : process
    begin
        while run = '1' loop
            CLK <= '0';
            wait for CLK_PERIOD / 2;
            CLK <= '1';
            wait for CLK_PERIOD / 2;
        end loop;
        wait;
    end process;

    -- Test stimulus process
    p2 : process
    begin
        -- Initialize Inputs
        RST <= '1';
        RATE <= '0';

        -- Wait for global reset to finish
        wait for 100 ns;
        
        -- Deassert reset
      
        RST <= '0';

        -- Change RATE to '1' after some time
        wait for 500 ns;
        RATE <= '1';
			  RST <= '1';
        wait for 20 ns;
		  RST <= '0';
        -- Wait for some time with RATE = '1'
        wait for 1000 ns;

        -- Change RATE back to '0'
        RATE <= '0';

        -- Wait for some time with RATE = '0'
        wait for 1000 ns;

        -- Stop the simulation
        run <= '0';
        wait for CLK_PERIOD; -- Ensure clock process stops correctly
			wait;
    end process;

end architecture;
