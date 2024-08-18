
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity STOPWATCH is
    generic (
		  G_RESET_ACTIVE_VALUE   : std_logic := '0';
        G_CLOCKS_PER_10ms : integer := 500000--the right value to see a real min,according to the lab requests
		  
    );

    port (
        CLK              : in    std_logic; --inputs  
        RSTn             : in    std_logic;  
        SW_START_STOP    : in    std_logic;   
        SW_CLEAR         : in    std_logic;   
        SW_LAP           : in    std_logic;  
        HUND_ONES_7SEG   : out   std_logic_vector(6 downto 0);--outputs   
        HUND_TENS_7SEG   : out   std_logic_vector(6 downto 0);   
        SEC_ONES_7SEG    : out   std_logic_vector(6 downto 0);   
        SEC_TENS_7SEG    : out   std_logic_vector(6 downto 0)    
    );
end entity;

architecture structural of STOPWATCH is
    component sync_diff
        generic (
            G_RESET_ACTIVE_VALUE    : std_logic := '0';--Asynchronous reset active value
            G_SIG_IN_INIT_VALUE     : std_logic := '0';--Input signal normal state value
            G_DERIVATE_RISING_EDGE  : boolean := true --true – rising edge , false – falling edge
				
        );
        port (
            CLK             : in    std_logic;--System clock  
            RST             : in    std_logic;--asynchronous system reset, active value is according
													       --toG_RESET_ACTIVE_VALUE  
            SIG_IN          : in    std_logic;--input sig  
            SIG_OUT         : out   std_logic --output sig  
        );
    end component;

    component counter
        generic (
            G_RESET_ACTIVE_VALUE   : std_logic := '0'--Asynchronous reset active value
        );
        port (
            CLK             : in    std_logic; --inputs 
            RST             : in    std_logic;  
            ENA             : in    std_logic;  
            CLEAR           : in    std_logic;  
            OEn             : in    std_logic;  
            HUND_ONES       : out   std_logic_vector(3 downto 0);--outputs   
            HUND_TENS       : out   std_logic_vector(3 downto 0);   
            SEC_ONES        : out   std_logic_vector(3 downto 0);   
            SEC_TENS        : out   std_logic_vector(3 downto 0)    
        );
    end component;
	 
    component pulse_generator
        generic (
            G_RESET_ACTIVE_VALUE   : std_logic := '0';--Asynchronous reset active value
            G_CLOCKS_PER_PULSES    : integer := 100 --Number of clock cycles between 2 consecutive
        );
        port (
            CLK             : in    std_logic;--inputs  
            RST             : in    std_logic;  
            ENA             : in    std_logic;  
            CLEAR           : in    std_logic;  
            PULSE           : out   std_logic  
        );
    end component;
	 
    component bcd_to_7seg 
        port(
            BCD_IN          : in  std_logic_vector(3 downto 0);--BCD data input
            D_OUT           : out std_logic_vector(6 downto 0)--7-seg data output
        );
    end component;

    component controller
        generic (
            G_RESET_ACTIVE_VALUE   : std_logic := '0'----Asynchronous reset active value
        );
        port (
            CLK             : in    std_logic;--System clock  
            RST             : in    std_logic;----asynchronous system reset, active value is according 
															 --toG_RESET_ACTIVE_VALUE  
            SW_START_STOP   : in    std_logic;--Active high, 1 CLK duration, stopwatch start/stop   
            SW_CLEAR        : in    std_logic;--Active high, 1 CLK duration, stopwatch clear   
            SW_LAP          : in    std_logic; ------ ...lab 
            COUNT_ENABLE       : out   std_logic;   
            COUNT_CLEAR     : out   std_logic;   
            COUNT_LAP       : out   std_logic   
        );
    end component;
	 
	 --SIGNALS
    signal HUND_ONES : std_logic_vector(3 downto 0);
    signal HUND_TENS : std_logic_vector(3 downto 0);
    signal SEC_ONES  : std_logic_vector(3 downto 0);
    signal SEC_TENS  : std_logic_vector(3 downto 0);
    signal PULSE_ENA : std_logic;
    signal COUNT_ENABLE : std_logic;	 
    signal COUNT_CLEAR : std_logic;
    signal COUNT_LAP   : std_logic;
    signal SIG_START_STOP_OUT : std_logic;
    signal SIG_CLEAR_OUT : std_logic;
    signal SIG_LAP_OUT : std_logic;

	 
	 
begin

    mid1 : controller
	 --the controller that we did , in the middle of the toplevel
        generic map(G_RESET_ACTIVE_VALUE   => '0')
        port map(CLK, RSTn, SIG_START_STOP_OUT, SIG_CLEAR_OUT,
		  SIG_LAP_OUT, COUNT_ENABLE, COUNT_CLEAR, COUNT_LAP);

    mid2 : pulse_generator
        generic map(
            G_RESET_ACTIVE_VALUE   => '0',
            G_CLOCKS_PER_PULSES    => G_CLOCKS_PER_10ms --500000,the value that we can see the 
																		  --right stopper in the stopwatch
        )
        port map(CLK, RSTn, COUNT_ENABLE, COUNT_CLEAR, PULSE_ENA);

    mid3 : counter
        generic map(G_RESET_ACTIVE_VALUE   => '0')
        port map(CLK, RSTn, PULSE_ENA, COUNT_CLEAR,
		  COUNT_LAP, HUND_ONES, HUND_TENS, SEC_ONES, SEC_TENS);
		  
    in1 : sync_diff
	 --the first input,thet the in here is sw_start_stop or the sync_diff func
        generic map(
            G_RESET_ACTIVE_VALUE    => '0',
            G_SIG_IN_INIT_VALUE     => '0',
            G_DERIVATE_RISING_EDGE  => true
        )
        port map(clk, RSTn, SW_START_STOP, SIG_START_STOP_OUT);

    in2 : sync_diff
	 --the sec input,thet the in here is sw_clear or the sync_diff func
        generic map(
            G_RESET_ACTIVE_VALUE    => '0',		  
            G_SIG_IN_INIT_VALUE     => '0',
            G_DERIVATE_RISING_EDGE  => true
				
        )
        port map(clk, RSTn, SW_CLEAR, SIG_CLEAR_OUT);

    in3 : sync_diff
	 --the last input,thet the in here is sw_lap or the sync_diff func
        generic map(
            G_RESET_ACTIVE_VALUE    => '0',
            G_SIG_IN_INIT_VALUE     => '0',
				G_DERIVATE_RISING_EDGE  => true

        )
        port map(clk, RSTn, SW_LAP, SIG_LAP_OUT);


    first_out : bcd_to_7seg
        port map(HUND_ONES, HUND_ONES_7SEG);
		  --the first out from the 4 outputs,the ones of the min
    sec_out : bcd_to_7seg
        port map(HUND_TENS, HUND_TENS_7SEG);
		  --the sec out from all the 4 outputs , the tens of the min
    third_out : bcd_to_7seg
        port map(SEC_ONES, SEC_ONES_7SEG);
		  --the third out from all the 4 outputs , the ons of the sec

    fourth_out : bcd_to_7seg
        port map(SEC_TENS, SEC_TENS_7SEG);
		  --the fourthe out from all the 4 outputs,the tens of the sec

end architecture;

