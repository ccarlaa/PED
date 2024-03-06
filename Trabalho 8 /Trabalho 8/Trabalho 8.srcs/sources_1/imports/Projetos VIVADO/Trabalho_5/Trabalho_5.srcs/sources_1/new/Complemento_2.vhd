library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.ALL;


entity Complemento_2 is
    Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
           S : out STD_LOGIC_VECTOR (3 downto 0));
end Complemento_2;

architecture Behavioral of Complemento_2 is

signal Comp2:std_logic_vector (3 downto 0):= "0000";
signal i:std_logic_vector (3 downto 0) :="0001";

begin

comp2 <= A;
S <= (comp2 + i);

end Behavioral;
