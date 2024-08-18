library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity light_organ is
    generic (
        G_num_of_Leds : integer := 16;
        G_CLOCKS_PER_PULSE : integer := 50e6
    );
    port (
        CLOCK : in std_logic;
        RST_in : in std_logic;
        RATE_in : in std_logic;
        LEDS : out std_logic_vector(G_num_of_Leds-1 downto 0)
    );
end entity;

architecture behave of light_organ is

	component pulse_generator
        generic (G_CLOCKS_PER_PULSE : integer := 16);
        port (
            RATE, CLK, RST : in std_logic;
            PULSE : out std_logic
        );
  end component;


    component SHIFT_REGISTER
        generic (G_N_BITS : integer := 16);
        port (
            CLK   : in  std_logic;
            RST   : in  std_logic;
            ENA   : in  std_logic;
            L_Rn  : in  std_logic;
            Q     : out std_logic_vector(G_N_BITS-1 downto 0)
        );
    end component;


   

    component direction
        generic (G_N_BITS : integer := 16);
        port (
            RST  : in  std_logic;
            CLK  : in  std_logic;
            L_Rn : out std_logic;
            Q    : in  std_logic_vector(G_N_BITS-1 downto 0)
        );
    end component;

    signal dir_sig : std_logic;
    signal pulse_sig : std_logic;
	 signal q_sig : std_logic_vector(G_num_of_Leds-1 downto 0);
	 
	 
	 
	 
begin



	 U1 : pulse_generator
        generic map (G_CLOCKS_PER_PULSE => G_CLOCKS_PER_PULSE)
        port map (
            RATE => RATE_in,
            CLK => CLOCK,
            RST => RST_in,
            PULSE => pulse_sig
        );
		  
		  
		  
    U2 : SHIFT_REGISTER
        generic map (G_N_BITS => G_num_of_Leds)
        port map (
            CLK => CLOCK,
            RST => RST_in,
            L_Rn => dir_sig,
            ENA => pulse_sig,
            Q => q_sig
        );

  

    U3 : direction
        generic map (G_N_BITS => G_num_of_Leds)
        port map (
            RST => RST_in,
            CLK => CLOCK,
            L_Rn => dir_sig,
            Q => q_sig
        );
		  
	LEDS <= q_sig;	  
		  
end architecture ;
