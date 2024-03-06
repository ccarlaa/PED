library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity seg_7 is
    Port ( sw : in STD_LOGIC_VECTOR (3 downto 0);
           seg : out STD_LOGIC_VECTOR (6 downto 0);
           an : out STD_LOGIC_VECTOR (3 downto 0));
end seg_7;

architecture Behavioral of seg_7 is

begin

with sw select
    seg <= "1000000" when "0000",
           "1111001" when "0001",
           "0100100" when "0010",
           "0110000" when "0011",
           "0011001" when "0100",
           "0010010" when "0101",
           "0000010" when "0110",
           "1111000" when "0111",
           "0000000" when "1000",
           "0010000" when "1001",
           "1111111" when others;
           
--uuu: Mux_2 port map(A => u1, B => u2, Sel => sel, S1 => u3);

--with Sel select
--    sw <= u1 when '0',
--          u2 when '1';             

end Behavioral;
