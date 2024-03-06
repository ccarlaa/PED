library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity testbench is
--  Port ( );
end testbench;

architecture Behavioral of testbench is

    component MAXTER is
        port ( saida: out std_logic_vector (6 downto 0);
               rst: in std_logic;
               en: in std_logic;
               clk: in std_logic;
               an: out std_logic_vector(3 downto 0);
               led: out std_logic);
    end component;

    signal rst, en, clk, led: std_logic:= '0';
    signal an: std_logic_vector(3 downto 0);
    signal saida: std_logic_vector(6 downto 0);

begin

    maxter_map: maxter port map (saida => saida, rst => rst, en => en, clk => clk, an => an, led => led);
    
    clk <= not clk after 5 ns; 
    en <= '1' after 50 ns;

end Behavioral;
