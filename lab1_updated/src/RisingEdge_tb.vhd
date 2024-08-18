library ieee;
use ieee.std_logic_1164.all;

entity RisingEdge_tb is
end entity;

architecture testbench of RisingEdge_tb is
    -- Component declaration for the Unit Under Test (UUT)
    component RisingEdge is
        port(
            CLK : in BIT;
            D_in : in BIT;
            Rst : in BIT;
            Q_out : out BIT
        );
    end component;

    -- Testbench signals
    signal CLK : BIT := '0';
    signal RST : BIT := '0';
    signal D_in : BIT := '0';
    signal Q_out : BIT;

    -- Clock period definition
    constant CLK_PERIOD : time := 100 ns;
begin
    -- Instantiate the Unit Under Test (UUT)
    dut: RisingEdge
        port map (
            CLK => CLK,
            D_in => D_in,
            Rst => RST,
            Q_out => Q_out
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

        -- Test different input scenarios
        D_in <= '1';
        wait for 100 ns;
        
        D_in <= '0';
        wait for 100 ns;
        
        D_in <= '1';
        wait for 100 ns;

        -- Assert reset
        RST <= '1';
        wait for 100 ns;
        
        -- De-assert reset
        RST <= '0';
        wait for 100 ns;
        
        D_in <= '0';
        wait for 100 ns;

        -- Finish simulation
        wait for 200 ns;
        wait;
    end process stim_proc;

end architecture;
