library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity pulse_generator is
    generic (
        G_RESET_ACTIVE_VALUE   : std_logic := '1';  
        G_CLOCKS_PER_PULSES    : integer := 100    
    );
    port (
        CLK             : in    std_logic;  -- System clock input
        RST             : in    std_logic;  -- Asynchronous reset
        ENA             : in    std_logic;  -- Enable signal, active high
        CLEAR           : in    std_logic;  -- Synchronous clear, active high
        PULSE           : out   std_logic   -- Output pulse, active high, 1 CLK duration
    );
end entity;


architecture behave of pulse_generator is

    
    signal count    : integer range 0 to G_CLOCKS_PER_PULSES-1 := 0;

begin

    
    generate_pulse: process(CLK, RST)
    begin
        
        if RST = G_RESET_ACTIVE_VALUE then
            count <= 0;  -- Reset counter
            PULSE <= '0';  -- Reset pulse output
        elsif rising_edge(CLK) then  -- On rising edge of clock
            PULSE <= '0';  -- Default pulse output to '0'
            
            if CLEAR = '1' then  -- Synchronous clear
                count <= 0;  -- Clear counter
            elsif ENA = '1' then  -- If enable signal is high
                if count >= G_CLOCKS_PER_PULSES-1 then  -- Check if counter reached the maximum count
                    count <= 0;  -- Reset counter
                    PULSE <= '1';  -- Generate pulse
                else
                    count <= count + 1;  -- Increment counter
                end if;
            end if;
        end if;
    end process;

end architecture;
