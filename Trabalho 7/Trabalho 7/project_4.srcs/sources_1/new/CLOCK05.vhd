library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity CLOCK05 is
    Port (clk: in std_logic;
          clk_05: out std_logic);
end CLOCK05;

architecture Behavioral of CLOCK05 is

signal counterr: integer range 1 to 1_000_000:=1;
signal cllk05: std_logic:='0';

begin

divisor_clk50: process(clk)
    begin
        if rising_edge(clk) then
            if counterr = 1_000_000 then 
                counterr <= 1;
                cllk05 <= not cllk05;
            else 
                counterr <= counterr + 1;
            end if;
        end if;
    end process;

    clk_05 <= cllk05;

end Behavioral;
