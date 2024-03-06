library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MUX_2 is
    Port (A: in STD_LOGIC_VECTOR (3 downto 0);
          B: in STD_LOGIC_VECTOR (3 downto 0);
--          C: in STD_LOGIC_VECTOR (3 downto 0):= "1111";
          sel: in STD_LOGIC;
          clk: in std_logic;
          an : out std_logic_vector(3 downto 0);
          seg: out std_logic_vector(6 downto 0);
          led: out std_logic;
          dp: out std_logic);
          
end MUX_2;

architecture Behavioral of MUX_2 is

    component CLOCK60
        Port (clk: in std_logic;
              clk_60: out std_logic);
    end component;
    
    component Somador_4
    Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
           B : in STD_LOGIC_VECTOR (3 downto 0);
           Cin : in STD_LOGIC;
           Sel :in std_logic;
           ov: out std_logic;
           S : out STD_LOGIC_VECTOR (3 downto 0));
end component;

    signal mux_clk, mux_clk_60,cin: std_logic;
    signal seletor: integer range 1 to 4 :=1;
    signal s_an, bcd,s_a,s_b,s_s: std_logic_vector(3 downto 0);
    
begin
   s_a <= A;
   s_b <= B;
   
   mapclock60: CLOCK60 port map (clk => clk, clk_60 => mux_clk_60);
   
   somador4: Somador_4 port map ( A => s_a , B => s_b ,cin => cin,sel => sel,S => s_s, ov => led);
  
   
    multiplex: process(mux_clk_60)
    begin
        if rising_edge(mux_clk_60) then
            case seletor is 
                when 1 => s_an <= "1110"; bcd <= A;
                when 2 => s_an <= "1101"; bcd <= B;
                when 3 => s_an <= "1111";
                when 4 => s_an <= "0111"; bcd <= s_s;
                when others => null;
            end case;
            seletor <= seletor + 1;
            if seletor = 4 then
                seletor <= 1;
            end if;  
        end if; 
    end process;
    
    with bcd select
    seg <="1000000" when "0000", --display positivo-- 
          "1111001" when "0001",
          "0100100" when "0010",
          "0110000" when "0011",
          "0011001" when "0100",
          "0010010" when "0101",
          "0000010" when "0110",
          "1111000" when "0111",
      
          "0000000" when "1000",--display negativo--
          "1111000" when "1001",
          "0000010" when "1010",  
          "0010010" when "1011",
          "0011001" when "1100",
          "0110000" when "1101",
          "0100100" when "1110",
          "1111001" when "1111",
          "1111111" when others; 
    
    
   
   
    an <= s_an; --anodos--
    dp <= not bcd(3);
               
end Behavioral;
