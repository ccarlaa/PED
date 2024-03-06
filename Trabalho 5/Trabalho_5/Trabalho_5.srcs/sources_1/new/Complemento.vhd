library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Complemento1 is

    Port ( entrada: in STD_LOGIC_VECTOR(3 downto 0);
--           sel: in STD_LOGIC; 
           saida: out STD_LOGIC_VECTOR(3 downto 0));
           
end Complemento1;

architecture Behavioral of Complemento1 is

signal comp1: STD_LOGIC_vector (3 downto 0);

begin

    With entrada(0) select
         comp1(0)<= '1' when '0',
               '0' when others;
    WIth entrada(1) select
         comp1(1)<= '1' when '0',
               '0' when others;
    WIth entrada(2) select
         comp1(2)<= '1' when '0',
               '0' when others;
    WIth entrada(3) select
         comp1(3)<= '1' when '0',
               '0' when others;
--    With sel select
--         saida<= comp1 when '1',
--            entrada when '0'; 

    saida <= comp1;

end Behavioral;
