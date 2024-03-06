library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity testbench is
--  Port ( );
end testbench;

architecture Behavioral of testbench is

    component SEG7 
        Port ( seg1 : out std_logic_vector(6 downto 0);
               clk : std_logic;
               an1: out std_logic_vector(3 downto 0));    
    end component;

    signal seg1_b: std_logic_vector(6 downto 0):="0000000";
    signal clk: std_logic:= '0';
    signal an1_b: std_logic_vector(3 downto 0):="0000";
    
begin

    seg7map: SEG7 port map ( seg1 => seg1_b, clk => clk, an1 => an1_b);
    
    clk <= not clk after 5ns;

end Behavioral;
