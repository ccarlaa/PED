----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 20.03.2021 14:14:27
-- Design Name: 
-- Module Name: Somador_4 - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Somador_4 is
    Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
           B : in STD_LOGIC_VECTOR (3 downto 0);
           Cin : in STD_LOGIC;
           Sel :in std_logic;
           S : out STD_LOGIC_VECTOR (3 downto 0));
end Somador_4;

architecture Behavioral of Somador_4 is


Component Somador -- Somador de um bit
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           Cin : in STD_LOGIC;
           S : out STD_LOGIC;
           Cout : out STD_LOGIC);
           
end Component;

component Mux 
    Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
           B : in STD_LOGIC_VECTOR (3 downto 0);
           Sel : in STD_LOGIC;
           S1 : out STD_LOGIC_VECTOR (3 downto 0));
          
end component;

component Complemento1 

    Port ( entrada: in STD_LOGIC_VECTOR(3 downto 0);
           saida: out STD_LOGIC_VECTOR(3 downto 0));
           
end component;

component Complemento_2 
    Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
           S : out STD_LOGIC_VECTOR (3 downto 0));
end component;

signal c0,c1,c2,Coutc,ov :std_logic;
signal U1,U2,U3,U4,U5,U6 :std_logic_vector(3 downto 0);   

component Detector_Overflow 
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           S : out STD_LOGIC);
end component;

begin   

U1 <= A;
U2 <= B;

comp1: Complemento1 port map ( entrada => U2, saida => U3 ); --complemento de 1

comp2: Complemento_2 port map (A => U3, S=>U4 ); -- complemento de 2

Mux1: Mux port map (A => U2, B => U4, Sel => Sel, S1 => U5 ); --multiplexador

sum1: Somador port map (A=> U1(0), B=> U5(0),Cin=> Cin,S=>U6(0),Cout=>c0);
sum2: Somador port map (A=> U1(1), B=> U5(1),Cin=> c0,S=>U6(1),Cout=>c1);
sum3: Somador port map (A=> U1(2), B=> U5(2),Cin=> c1,S=>U6(2),Cout=>c2);
sum4: Somador port map (A=> U1(3), B=> U5(3),Cin=> c2,S=>U6(3),Cout=>Coutc); 

detec: Detector_Overflow port map (A => c2, B => Coutc, S => ov); --Detector de Overflow

S <= U6;

end Behavioral;
