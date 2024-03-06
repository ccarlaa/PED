library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity clock1HZ is
    Port (clk: in std_logic;
          clk_1: out std_logic);
end clock1HZ;

architecture Behavioral of clock1HZ is

signal counterrr: integer range 1 to 100_000_000:=1;
signal cllk60: std_logic:='0';

begin

divisor_clk60: process(clk)
    begin
        if rising_edge(clk) then
            if counterrr = 100_000_000 then 
                counterrr <= 1;
                cllk60 <= not cllk60;
            else 
                counterrr <= counterrr + 1;
            end if;
        end if;
    end process;

    clk_1 <= cllk60;
    
end Behavioral;