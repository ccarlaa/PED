library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity Mux_2 is
    Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
           B : in STD_LOGIC_VECTOR (3 downto 0);
           Sel : in STD_LOGIC;
           S1 : out STD_LOGIC_VECTOR (3 downto 0));
end Mux_2;

architecture Behavioral of Mux_2 is

begin
   
with Sel select
S1<= A when '0',
     B when others;

end Behavioral;
