library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity flip_flop_d is
    port( D: in std_logic;
          set: in std_logic;
          Q: out std_logic;
          clk_div: in std_logic);
end flip_flop_d;

architecture Behavioral of flip_flop_d is

    signal reg: std_logic;
    
begin
    
    process(clk_div)
    begin
    if falling_edge(clk_div) then
        if set = '1' then
           reg <= '0';
        else
            reg <= D;
        end if;
    end if;
    end process;
    
    Q <= reg;
    
end Behavioral;
