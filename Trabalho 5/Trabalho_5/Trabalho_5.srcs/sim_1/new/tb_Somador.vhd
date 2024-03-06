library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity tb_Soma4 is
--  Port ( );
end tb_Soma4;

architecture Behavioral of tb_Soma4 is

component Somador_4 
    Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
           B : in STD_LOGIC_VECTOR (3 downto 0);
           Cin : in STD_LOGIC;
           Sel :in std_logic;
           S : out STD_LOGIC_VECTOR (3 downto 0));
           --Cout : out STD_LOGIC);
end component;

signal s_A,s_B,s_S:STD_LOGIC_VECTOR (3 downto 0);
signal s_Cin,s_Cout,s_Sel: STD_LOGIC;

begin

u: Somador_4 port map ( A=> s_A, B=> s_B, s=> s_S, Cin=> s_Cin, Sel=>s_Sel);

stimulus : process 
begin   
        s_A <= "0010"; s_B <= "0011"; s_Cin <= '0'; s_Sel <= '0';
        wait for 10ns;
        s_A <= "0110"; s_B <= "0101"; s_Cin <= '0'; s_Sel <= '0';
        wait for 10ns;
        s_A <= "0101"; s_B <= "1110"; s_Cin <= '0'; s_Sel <= '0';
        wait for 10ns;
        s_A <= "0010"; s_B <= "1001"; s_Cin <= '0'; s_Sel <= '0';
        wait for 10ns;
        s_A <= "1101"; s_B <= "0011"; s_Cin <= '0'; s_Sel <= '0';
        wait for 10ns;
        s_A <= "0100"; s_B <= "0000"; s_Cin <= '0'; s_Sel <= '0';
        wait for 10ns;
        s_A <= "1111"; s_B <= "0111"; s_Cin <= '0'; s_Sel <= '0';
        wait for 10ns;
        s_A <= "1011"; s_B <= "0011"; s_Cin <= '0'; s_Sel <= '0';
        wait for 10ns;
        s_A <= "1001"; s_B <= "0000"; s_Cin <= '0'; s_Sel <= '0';
        wait for 10ns;
        s_A <= "1101"; s_B <= "1111"; s_Cin <= '0'; s_Sel <= '0';
        wait for 10ns;
        s_A <= "1011"; s_B <= "1010"; s_Cin <= '0'; s_Sel <= '0';
        wait for 10ns;
        s_A <= "0101"; s_B <= "0011"; s_Cin <= '0'; s_Sel <= '1';
        wait for 10ns;
        s_A <= "0101"; s_B <= "0110"; s_Cin <= '0'; s_Sel <= '1';
        wait for 10ns;
        s_A <= "0001"; s_B <= "0000"; s_Cin <= '0'; s_Sel <= '1';
        wait for 10ns;
        s_A <= "0101"; s_B <= "1110"; s_Cin <= '0'; s_Sel <= '1';
        wait for 10ns;
        s_A <= "0111"; s_B <= "1101"; s_Cin <= '0'; s_Sel <= '1';
        wait for 10ns;
        s_A <= "1011"; s_B <= "0001"; s_Cin <= '0'; s_Sel <= '1';
        wait for 10ns;
        s_A <= "1010"; s_B <= "0111"; s_Cin <= '0'; s_Sel <= '1';
        wait for 10ns;
        s_A <= "1011"; s_B <= "1000"; s_Cin <= '0'; s_Sel <= '1';
        wait for 10ns;
        s_A <= "1001"; s_B <= "1100"; s_Cin <= '0'; s_Sel <= '1';
        wait for 10ns;
        s_A <= "1110"; s_B <= "1110"; s_Cin <= '0'; s_Sel <= '1';
        wait for 10ns;
        s_A <= "1000"; s_B <= "0000"; s_Cin <= '0'; s_Sel <= '1';
        wait for 10ns;
      
        wait;
        
        end process;
      
end Behavioral;

