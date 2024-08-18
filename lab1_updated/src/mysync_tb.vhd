library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mysync_tb is
end entity;

architecture testbench of mysync_tb is
    -- Component declaration for the Unit Under Test (UUT)
    component mysync is
        port(
            D_IN1 : in std_logic;
            CLK : in std_logic;
            RST : in std_logic;
            Q_OUT2 : out std_logic
        );
    end component;

    -- Testbench signals
    signal D_IN1 : std_logic := '0';
    signal CLK : std_logic := '0';
    signal RST : std_logic := '0';
    signal Q_OUT2 : std_logic;

    -- Clock period definition
    constant CLK_PERIOD : time := 100 ns;
begin
    -- Instantiate the Unit Under Test (UUT)
    dut: mysync
        port map (
            D_IN1 => D_IN1,
            CLK => CLK,
            RST => RST,
            Q_OUT2 => Q_OUT2
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
        D_IN1 <= '0';
        wait for 100 ns;

        -- De-assert reset
        RST <= '0';
        wait for 50 ns;

        -- Apply input stimulus
        D_IN1 <= '1';
        wait for 150 ns;
        D_IN1 <= '0';
        wait for 150 ns;
        D_IN1 <= '1';
        wait for 200 ns;

        -- Finish simulation
        wait;
    end process stim_proc;

end architecture;
