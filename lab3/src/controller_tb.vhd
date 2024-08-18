library IEEE;
use IEEE.std_logic_1164.all;

entity controller_tb is

end entity;

architecture behave of controller_tb is
	component controller is	
		generic (G_RESET_ACTIVE_VALUE   : std_logic := '0');
		port (
			CLK             : in    std_logic;  
			RST             : in    std_logic; 
			SW_START_STOP   : in    std_logic;   
			SW_CLEAR        : in    std_logic;   
			SW_LAP          : in    std_logic;  
			COUNT_ENABLE    : out   std_logic;   
			COUNT_CLEAR     : out   std_logic;   
			COUNT_LAP       : out   std_logic   
		);
	end component;

	constant G_RESET_ACTIVE_VALUE : std_logic := '0';
	signal CLK_sig             :    std_logic := '0';  
	signal RST_sig             :    std_logic := '0';  
	signal SW_START_STOP_sig   :    std_logic := '0';   
	signal SW_CLEAR_sig        :    std_logic := '0';
   signal SW_LAP_sig          :    std_logic := '0';	
	signal COUNT_ENABLE_sig    :    std_logic := '0';
	signal COUNT_LAP_sig       :    std_logic := '0';   
	signal COUNT_CLEAR_sig     :    std_logic := '0';   
	signal run                 :    std_logic := '1';
	
	
begin
	dut: controller
		generic map(G_RESET_ACTIVE_VALUE => G_RESET_ACTIVE_VALUE)
		port map(CLK_sig,RST_sig,SW_START_STOP_sig,SW_CLEAR_sig,SW_LAP_sig,
		COUNT_ENABLE_sig,COUNT_CLEAR_sig,COUNT_LAP_sig);
	
	RST_sig           <= '0', '1' after 500ns;-- we will se here how our state machine is wroking on 
															--reset for the beginning(500ns)
	
	SW_START_STOP_sig <= '0', '1' after 800ns , '0' after 1000ns , '1' after 1500ns,'0' after 2000ns;
	--the SW_START_STOP_sig will change take us from the st_idle to the st_count , 
	--and will take us bake to the st_count from the st_stop,so this timing will show us exactly how, 
	--by the wave in the modelsim.
	
	SW_LAP_sig        <= '1' after 2300ns,'0' after 2900ns,'1' after 3200ns;
	--the timing of the SW_LAP_sig is matching to the state when we will be in the st_count and moving to st_lab
	
	SW_CLEAR_sig      <= '0', '1' after 2000ns, '0' after 2800ns,'1' after 3500ns;
	--the timing here is matching to us , to comebake to st_idle from st_stop
   run               <= '1','0' after 15us;     
   
clock: process
    begin
        while run = '1' loop
            clk_sig <= '1','0' after 50ns;--our clock  
            wait for 100ns;
        end loop;
        wait;
    end process;
	

end architecture;