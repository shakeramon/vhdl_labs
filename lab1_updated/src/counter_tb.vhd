library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity counter_tb is
end entity;

architecture testbench of counter_tb is
    -- Component declaration for the Unit Under Test (UUT)
    component counter is
        generic( count_limit : integer := 9 );
        port(
            CLK : in std_logic;
            RST : in std_logic;
            ENA : in std_logic;
            Q_out : out integer range 0 to count_limit
        );
    end component;

    -- Testbench signals
    signal CLK : std_logic := '0';
    signal RST : std_logic := '0';
    signal ENA : std_logic := '0';
    signal Q_OUT : integer range 0 to 9;

    -- Clock period definition
    constant CLK_PERIOD : time := 100 ns;
begin
    -- Instantiate the Unit Under Test (UUT)
    dut: counter
        port map (
            ENA => ENA,
            CLK => CLK,
            RST => RST,
            Q_out => Q_OUT
        );

    -- Clock generation process
    clk_process : process
    begin
        while true loop
            CLK <= '0';
            wait for CLK_PERIOD / 2;
            CLK <= '1';
            wait for CLK_PERIOD / 2;
        end loop;
    end process clk_process;

    -- Stimulus process
    stim_proc: process
    begin
        -- Initialize inputs
        RST <= '1';
        wait for 100 ns;
        
        -- De-assert reset
        RST <= '0';
        wait for 50 ns;

        -- Enable counting
        ENA <= '1';
        
        -- Wait enough time to observe counting
        wait for 1000 ns;
        
        -- Disable counting
        ENA <= '0';
        
        -- Wait and then re-enable counting
        wait for 500 ns;
        ENA <= '1';

        -- Finish simulation after some time
        wait for 1000 ns;
        wait;
    end process stim_proc;

end architecture;
