library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity Test_banch is


end Test_banch;

architecture Behavioral of Test_banch is

signal a,b,an: STD_LOGIC_VECTOR (3 downto 0);
signal s: STD_LOGIC_VECTOR (6 downto 0);
signal sel: STD_LOGIC;

component Master 
    Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
           B : in STD_LOGIC_VECTOR (3 downto 0);
           Sel: in STD_LOGIC;
           AN: out STD_LOGIC_VECTOR (3 downto 0);
           S : out STD_LOGIC_VECTOR (6 downto 0));
end component;

begin

UUT: Master port map( A => a, B => b, S => s, Sel => sel, AN => an);

process
begin
    sel <= '1'; a <= "0001"; b <= "0001";
    wait for 10ns;
    sel <= '1'; a <= "0010"; b <= "0010";
    wait for 10ns;
    sel <= '1'; a <= "0011"; b <= "0011";
    wait for 10ns;
    sel <= '1'; a <= "0100"; b <= "0100";
    wait for 10ns;
    sel <= '1'; a <= "0101"; b <= "0101";
    wait for 10ns;
    sel <= '1'; a <= "0110"; b <= "0110";
    wait for 10ns;
    sel <= '1'; a <= "0111"; b <= "0111";
    wait for 10ns;
    sel <= '1'; a <= "1000"; b <= "1000";
    wait for 10ns;
    sel <= '1'; a <= "1001"; b <= "1001";
    wait for 10ns;
    
    sel <= '0'; a <= "0001"; b <= "0001";
    wait for 10ns;
    sel <= '0'; a <= "0010"; b <= "0010";
    wait for 10ns;
    sel <= '0'; a <= "0011"; b <= "0011";
    wait for 10ns;
    sel <= '0'; a <= "0100"; b <= "0100";
    wait for 10ns;
    sel <= '0'; a <= "0101"; b <= "0101";
    wait for 10ns;
    sel <= '0'; a <= "0110"; b <= "0110";
    wait for 10ns;
    sel <= '0'; a <= "0111"; b <= "0111";
    wait for 10ns;
    sel <= '0'; a <= "1000"; b <= "1000";
    wait for 10ns;
    sel <= '0'; a <= "1001"; b <= "1001";
    wait for 10ns;
    
    end process;

end Behavioral;
