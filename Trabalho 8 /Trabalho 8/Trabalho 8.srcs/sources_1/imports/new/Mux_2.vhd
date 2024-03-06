library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity Mux_2 is
    Port ( clk05: in std_logic;
           clk60: in std_logic;
           reset: in std_logic;
           S1 : out STD_LOGIC_VECTOR (3 downto 0));
end Mux_2;

architecture Behavioral of Mux_2 is

signal Seletor_valor: integer range 1 to 6:=1;
signal Sel: integer range 1 to 4:=1;
signal u1, clock_dividido: STD_LOGIC;
signal s_a,s_b,s_c,s_d,s_seg: STD_LOGIC_VECTOR (3 downto 0);
signal seg1,seg2,seg3,seg4: std_logic_vector(6 downto 0);


begin
     
process(clk05)
begin
if reset ='1' then  

    s_a <= "1001"; s_b <= "0000"; s_c <= "0000"; s_d <= "0000";

elsif rising_edge(clk05)then

    case seletor_valor is
        when 1 => s_a <= "1001"; s_b <= "0000"; s_c <= "0000"; s_d <= "0000";
        when 2 => s_a <= "0100"; s_b <= "0110"; s_c <= "0100"; s_d <= "0010";
        when 3 => s_a <= "0000"; s_b <= "0111"; s_c <= "0011"; s_d <= "0110";
        when 4 => s_a <= "0110"; s_b <= "0000"; s_c <= "0111"; s_d <= "0001";
        when 5 => s_a <= "0010"; s_b <= "0011"; s_c <= "0001"; s_d <= "0000";
        when 6 => s_a <= "1111"; s_b <= "1111"; s_c <= "1111"; s_d <= "1111";
    end case;    
    if seletor_valor = 6 then
        seletor_valor <= 1;
    else
        seletor_valor <= seletor_valor + 1;
        end if; 
    
end if;

end process;   

process(clk60)
begin

--if reset = '1' then

--Sel <= 1;

if rising_edge(clk60) then 

    case Sel is
        when 1 => S1 <= s_a; 
        when 2 => S1 <= s_b; 
        when 3 => S1 <= s_c; 
        when 4 => S1 <= s_d; 
    end case;    
    if Sel = 4 then
        Sel <= 1;
    else
        Sel <= Sel + 1;
        end if;
end if;

end process;    
       
end Behavioral;
