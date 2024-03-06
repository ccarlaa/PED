library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SEG7 is
    Port ( seg1 : out std_logic_vector(6 downto 0);
           clk : std_logic;
           an1: out std_logic_vector(3 downto 0));    
end SEG7;

architecture Behavioral of SEG7 is
    
    component MUX is
        Port (an : out std_logic_vector(3 downto 0);
              seg: out std_logic_vector(3 downto 0);
              clk: in std_logic);
    end component;
    
    component CLOCK60 is
        Port (clk: in std_logic;
              clk_60: out std_logic);
    end component;
    
    component CLOCK05 
        Port (clk: in std_logic;
              clk_05: out std_logic);
    end component;

signal an2, seg2, d,u,c,m: std_logic_vector(3 downto 0);
signal cllk, clock600,clock005: std_logic;

begin

    muxport: MUX port map (an => an2, seg => seg2, clk => clk);
    mapclock60: CLOCK60 port map ( clk => clk, clk_60 => clock600);
    mapclock05: CLOCK05 port map ( clk => clk, clk_05 => clock005);
    

with seg2 select
seg1 <="1000000" when "0000", --display-- 
       "1111001" when "0001",
       "0100100" when "0010",
       "0110000" when "0011",
       "0011001" when "0100",
       "0000010" when "0110",
       "1111000" when "0111",
       "0000000" when "1000",
       "0010000" when "1001",
       "1111111" when others;
       
an1<=an2;

end Behavioral;