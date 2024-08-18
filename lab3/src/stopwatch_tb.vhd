library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity stopwatch_tb is end entity;

architecture behave of stopwatch_tb is
	component stopwatch is
		generic (
		G_RESET_ACTIVE_VALUE   : std_logic := '0';
		G_CLOCKS_PER_10ms : integer := 500000
		
		);

		port (
			CLK              : in    std_logic;  
			RSTn             : in    std_logic;  
			SW_START_STOP    : in    std_logic;   
			SW_CLEAR         : in    std_logic;  
			SW_LAP           : in    std_logic;  
			HUND_ONES_7SEG   : out std_logic_vector(6 downto 0);   
			HUND_TENS_7SEG   : out std_logic_vector(6 downto 0);   
			SEC_ONES_7SEG    : out std_logic_vector(6 downto 0);   
			SEC_TENS_7SEG     : out std_logic_vector(6 downto 0)  
		);
	end component;
	
	constant G_CLOCKS_PER_10ms : integer := 2;
	constant G_RESET_ACTIVE_VALUE : std_logic := '0';
	signal CLK                 :     std_logic:= '0';  
	signal RSTn                :     std_logic:= '0';  
	signal SW_START_STOP       :     std_logic:= '0';   
	signal SW_CLEAR            :     std_logic:= '0';   
	signal SW_LAP              :     std_logic:= '0';  
	signal HUND_ONES_7SEG      :     std_logic_vector(6 downto 0);   
	signal HUND_TENS_7SEG      :     std_logic_vector(6 downto 0);   
	signal SEC_ONES_7SEG       :     std_logic_vector(6 downto 0);   
	signal SEC_TENS_7SEG       :     std_logic_vector(6 downto 0);  
	signal run                 :     std_logic :='1';
	
		
begin
	DUT:STOPWATCH
	generic map (
            G_CLOCKS_PER_10ms => G_CLOCKS_PER_10ms,
            G_RESET_ACTIVE_VALUE => G_RESET_ACTIVE_VALUE
        )
	port map(CLK,RSTn ,SW_START_STOP,SW_CLEAR ,SW_LAP,HUND_ONES_7SEG
	,HUND_TENS_7SEG,SEC_ONES_7SEG,SEC_TENS_7SEG);
	
	RSTn <='0','1' after 500ns;---- we will se here how our stopeatche is wroking on reset for 
								      --the beginning(500ns)
	
	SW_START_STOP <='0','1' after 1800ns,'1' after 3500ns,'0' after 5000ns,'1' after 7800ns;
	--the sw_start_stop input will change between 0 and 1 according to this timming to see a real 
	--wave in a modelsim
	
	SW_CLEAR <= '0','1' after 4000ns,'0' after 6000ns,'1' after 9000ns,'0' after 10000ns ;
	--the same like the sw_start_stop here also with the sw_clear
	
	SW_LAP <= '0','1' after 5000ns,'0' after 6500ns,'1' after 7800ns,'0' after 8500ns ;
	run <= '1' , '0' after 15 us;

    clock: process
    begin
        while run = '1' loop
            clk <= '1', '0' after 50 ns;--our clock
            wait for 100 ns;
        end loop;
        wait;
    end process;
end architecture;


