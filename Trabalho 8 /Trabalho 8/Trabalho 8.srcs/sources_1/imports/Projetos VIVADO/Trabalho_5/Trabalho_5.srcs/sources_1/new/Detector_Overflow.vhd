library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity Detector_Overflow is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           S : out STD_LOGIC);
end Detector_Overflow;

architecture Behavioral of Detector_Overflow is

signal soma_A_B, comp : std_logic;

begin

soma_A_B <= (A xor B);
S <= soma_A_B;

end Behavioral;
