library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity Somador is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           Cin : in STD_LOGIC;
           S : out STD_LOGIC;
           Cout : out STD_LOGIC);
end Somador;

architecture Behavioral of Somador is


begin

S <= A xor B xor Cin;
Cout <= (A and B)or (A and Cin) or (B and Cin);

end Behavioral;
