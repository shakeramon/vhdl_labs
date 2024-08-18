library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity counter is
    generic (
        G_RESET_ACTIVE_VALUE   : std_logic := '0'  
    );
    port (
        CLK             : in    std_logic;  -- System clock input
        RST             : in    std_logic;  -- Asynchronous reset, active level defined by G_RESET_ACTIVE_VALUE
        ENA             : in    std_logic;  -- Enable signal, if high, counter increments on rising edge of CLK
        CLEAR           : in    std_logic;  -- Synchronous clear, active high
        OEn             : in    std_logic;  -- Output enable, active low. If high, COUNT_OUT reflects the 
														  --internal count value. If low, COUNT_OUT holds the last value
        HUND_ONES       : out   std_logic_vector(3 downto 0);   -- Hundreds place, ones digit
        HUND_TENS       : out   std_logic_vector(3 downto 0);   -- Hundreds place, tens digit
        SEC_ONES        : out   std_logic_vector(3 downto 0);   -- Seconds place, ones digit
        SEC_TENS        : out   std_logic_vector(3 downto 0)    -- Seconds place, tens digit
    );
end entity;


architecture behave of counter is

    -- Internal signals for counter digits
    signal hund_cnt_ones    : integer range 0 to 9 := 0;  -- Internal counter for hundreds place, ones digit
    signal hund_cnt_tens    : integer range 0 to 9 := 0;  -- Internal counter for hundreds place, tens digit
    signal sec_cnt_ones     : integer range 0 to 9 := 0;  -- Internal counter for seconds place, ones digit
    signal sec_cnt_tens     : integer range 0 to 5 := 0;  -- Internal counter for seconds place, tens digit
	
	
begin
    
    gen_counter: process(CLK, RST)
    begin
        
        if RST = G_RESET_ACTIVE_VALUE then
            hund_cnt_ones   <= 0;  -- Reset hundreds place, ones digit
            hund_cnt_tens   <= 0;  -- Reset hundreds place, tens digit
            sec_cnt_ones    <= 0;  -- Reset seconds place, ones digit
            sec_cnt_tens    <= 0;  -- Reset seconds place, tens digit
            HUND_ONES       <= (others => '0');  -- Reset output
            HUND_TENS       <= (others => '0');  -- Reset output
            SEC_ONES        <= (others => '0');  -- Reset output
            SEC_TENS        <= (others => '0');  -- Reset output

        elsif rising_edge(CLK) then  -- On rising edge of clock
            if CLEAR = '1' then  -- Synchronous clear
                hund_cnt_ones   <= 0;  -- Clear hundreds place, ones digit
                hund_cnt_tens   <= 0;  -- Clear hundreds place, tens digit
                sec_cnt_ones    <= 0;  -- Clear seconds place, ones digit
                sec_cnt_tens    <= 0;  -- Clear seconds place, tens digit
            elsif ENA = '1' then  -- If enable signal is high
                -- Counter logic
                if hund_cnt_ones = 9 then
                    hund_cnt_ones <= 0;  -- Reset hundreds place, ones digit
                    if hund_cnt_tens = 9 then
                        hund_cnt_tens <= 0;  -- Reset hundreds place, tens digit
                        if sec_cnt_ones = 9 then
                            sec_cnt_ones <= 0;  -- Reset seconds place, ones digit
                            if sec_cnt_tens = 5 then
                                sec_cnt_tens <= 0;  -- Reset seconds place, tens digit
                            else
                                sec_cnt_tens <= sec_cnt_tens + 1;  -- Increment seconds place, tens digit
                            end if;
                        else
                            sec_cnt_ones <= sec_cnt_ones + 1;  -- Increment seconds place, ones digit
                        end if;
                    else
                        hund_cnt_tens <= hund_cnt_tens + 1;  -- Increment hundreds place, tens digit
                    end if;
                else
                    hund_cnt_ones <= hund_cnt_ones + 1;  -- Increment hundreds place, ones digit
                end if;
            end if;

            if OEn = '0' then  -- If output enable is active
										 
                HUND_ONES <= std_logic_vector(to_unsigned(hund_cnt_ones, HUND_ONES'length));
                HUND_TENS <= std_logic_vector(to_unsigned(hund_cnt_tens, HUND_TENS'length)); 
                SEC_ONES  <= std_logic_vector(to_unsigned(sec_cnt_ones, SEC_ONES'length)); 
                SEC_TENS  <= std_logic_vector(to_unsigned(sec_cnt_tens, SEC_TENS'length)); 
            end if;

        end if;
    end process;

end architecture;
