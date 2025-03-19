library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity light_organ_tb is
end entity;

architecture testbench of light_organ_tb is

    -- Component Declaration for the Unit Under Test (UUT)
    component light_organ
        generic (
            G_num_of_Leds : integer := 16;
            G_CLOCKS_PER_PULSE : integer := 5
        );
        port (
            CLOCK : in std_logic;
            RST_in : in std_logic;
            RATE_in : in std_logic;
            LEDS : out std_logic_vector(G_num_of_Leds-1 downto 0)
        );
    end component;

    -- Testbench signals
    signal CLOCK : std_logic := '0';
    signal RST_in : std_logic := '0';
    signal RATE_in : std_logic := '0';
    signal run : std_logic := '1';
    signal LEDS : std_logic_vector(15 downto 0);  -- Adjusted the length to 16

    constant CLOCK_PERIOD : time := 20 ns;

begin

    -- Instantiate the Unit Under Test (UUT)
    uut: light_organ
        generic map (
            G_num_of_Leds => 16,
            G_CLOCKS_PER_PULSE => 5
        )
        port map (
            CLOCK => CLOCK,
            RST_in => RST_in,
            RATE_in => RATE_in,
            LEDS => LEDS
        );

    -- Clock generation
    clock_process : process
    begin
        while run = '1' loop
            CLOCK <= '0';
            wait for CLOCK_PERIOD / 2;
            CLOCK <= '1';
            wait for CLOCK_PERIOD / 2;
        end loop;
        wait;
    end process;

    -- Stimulus process
    stimulus_process : process
    begin
        -- Initialize Inputs
        RST_in <= '0';
        RATE_in <= '0';
        wait for 100 ns;

        -- Apply reset
        RST_in <= '1';
        wait for 100 ns;
        RST_in <= '0';

        -- Apply stimulus
        RATE_in <= '1';
        wait for 1 us;
        RATE_in <= '0';
        wait for 1 us;
        RATE_in <= '1';
        wait for 1 us;
        RATE_in <= '0';
        run <= '0';
        -- Add more stimulus as required
        wait;
    end process;

end architecture;
