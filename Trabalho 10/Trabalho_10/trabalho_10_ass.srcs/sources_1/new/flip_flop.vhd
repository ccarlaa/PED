library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity flip_flop_t is
    port ( t: in std_logic;
           clk1hz: in std_logic;
           reset: in std_logic;
           Q: out std_logic);
end flip_flop_t;

architecture Behavioral of flip_flop_t is
    signal s: std_logic:= '0';
begin

    flip_flop: process(clk1hz, reset) 
    begin
        if(reset = '1') then
            s <= '0';
        elsif falling_edge(clk1hz) then
            if (t = '0') then
                s <= s;
            else
                s <= not s;
            end if;
        end if;
    end process;
    
    Q <= s;
    
end Behavioral;