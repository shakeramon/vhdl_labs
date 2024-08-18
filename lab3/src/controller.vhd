
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity controller is
    generic (
        G_RESET_ACTIVE_VALUE   : std_logic := '0'
    );
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
end entity;

architecture behave of controller is
    type STATE_TYPE is (st_idle, st_count, st_stop, st_lap);
    signal SWITCH_NOT : std_logic;-- we can't do a NOT for a state , 
										    --so we did it a signal,we will replace it with the count_lab 
	 signal JOKER: STATE_TYPE := st_idle; -- our defult is st_idle 

	 
begin

    process (CLK, RST)
    begin
        if RST = G_RESET_ACTIVE_VALUE then
            JOKER <= st_idle;
            COUNT_ENAble <= '0';
            COUNT_CLEAR <= '1';
            SWITCH_NOT <= '0';
        elsif rising_edge(CLK) then
            case JOKER is
				    -- when we are in st_idle in the state machine
                --according to the state machine that we have in the lab,
					 --if sw_start_stop = 1 , we will move to st_count,
					 -- and we have to udpate all the count_values 
                when st_idle =>
                    if SW_START_STOP = '1' then
                        JOKER <= st_count;
								COUNT_CLEAR <= '0';
                        COUNT_ENABLE <= '1';
                    else
                        JOKER <= st_idle;
                        COUNT_ENABLE <= '0';
                        COUNT_CLEAR <= '1';
                        SWITCH_NOT <= '0';
                    end if;
				    -- when we are in st_count in the state machine
                --according to the state machine that we have in the lab,
					 --if sw_start_stop = 1 , we will move to st_stop,
					 -- and we have to udpate all the count_values
                when st_count =>
                    if SW_START_STOP = '1' then
                        JOKER <= st_stop;
                        COUNT_ENABLE <= '0';
                    elsif SW_CLEAR = '1' then
                        JOKER <= st_idle;
                        COUNT_ENABLE <= '0';
                        COUNT_CLEAR <= '1';
                        SWITCH_NOT <= '0';
                    elsif SW_LAP = '1' then
                        JOKER <= st_lap;
                        SWITCH_NOT <= NOT SWITCH_NOT;
                    else
                        JOKER <= st_count;
                        COUNT_ENABLE <= '1';
                        COUNT_CLEAR <= '0';
                    end if;
				    -- when we are in st_lab in the state machine
                --according to the state machine that we have in the lab,
					 --if sw_clear = 1 , we will move to st_idle,
					 -- and we have to udpate all the count_values
                when st_lap =>
                    if SW_CLEAR = '1' then
                        JOKER <= st_idle;
                        COUNT_ENABLE <= '0';
                        COUNT_CLEAR <= '1';
                        SWITCH_NOT <= '0';
                    else
                        JOKER <= st_count;
                        COUNT_ENABLE <= '1';
                        COUNT_CLEAR <= '0';
                    end if;
				    -- when we are in st_stop in the state machine
                --according to the state machine that we have in the lab,
					 --if sw_start_stop = 1 , we will move to st_count,
					 -- and we have to udpate all the count_values						  
                when st_stop =>
                    if SW_START_STOP = '1' then
                        JOKER <= st_count;
                        COUNT_ENABLE <= '1';
                        COUNT_CLEAR <= '0';
								
                    elsif SW_CLEAR = '1' then
                        JOKER <= st_idle;
                        COUNT_ENABLE <= '0';
                        COUNT_CLEAR <= '1';
                        SWITCH_NOT <= '0';
								
                    else
                        JOKER <= st_stop;
                        COUNT_ENABLE <= '0';
								
                    end if;
            end case;
        end if;
    end process;

    COUNT_LAP <= SWITCH_NOT;  
    --we will do a not for a signal that we defined, and we will put the new value inside a state.
end architecture;