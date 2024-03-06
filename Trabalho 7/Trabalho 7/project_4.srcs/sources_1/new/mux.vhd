library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MUX is
    Port (an : out std_logic_vector(3 downto 0);
          seg: out std_logic_vector(3 downto 0);
          clk: std_logic);
end MUX;

architecture Behavioral of MUX is

    component MAXTER 
        Port( u: out std_logic_vector(3 downto 0);
              d: out std_logic_vector(3 downto 0);
              c: out std_logic_vector(3 downto 0);
              m: out std_logic_vector(3 downto 0);
              clk: in std_logic);   
    end component;

    component CLOCK60
        Port (clk: in std_logic;
              clk_60: out std_logic);
    end component;

    signal mux_clk, mux_clk_60: std_logic;
    signal seletor: integer range 1 to 4 :=1;
    signal s_an, bcd: std_logic_vector(3 downto 0);
    signal bcd_u2, bcd_c2, bcd_d2, bcd_m2: std_logic_vector(3 downto 0);
    
begin

   mapclock60: CLOCK60 port map (clk => clk, clk_60 => mux_clk_60);
   mapmaxter: MAXTER port map (u => bcd_u2, d => bcd_d2, c => bcd_c2, m => bcd_m2, clk => clk);
   
    multiplex: process(mux_clk_60)
    begin
        if rising_edge(mux_clk_60) then
            case seletor is 
                when 1 => s_an <= "1110"; bcd <= bcd_u2;
                when 2 => s_an <= "1101"; bcd <= bcd_d2;
                when 3 => s_an <= "1011"; bcd <= bcd_c2;
                when 4 => s_an <= "0111"; bcd <= bcd_m2;
                when others => null;
            end case;
            seletor <= seletor + 1;
            if seletor = 4 then
                seletor <= 1;
            end if;  
        end if; 
    end process;
    
    an <= s_an; --anodos--
    seg <= bcd;
               
end Behavioral;
