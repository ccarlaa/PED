--library IEEE;
--use IEEE.STD_LOGIC_1164.ALL;


--entity MAXTER is
--    Port( u: out std_logic_vector(3 downto 0);
--          d: out std_logic_vector(3 downto 0);
--          c: out std_logic_vector(3 downto 0);
--          m: out std_logic_vector(3 downto 0);
--          clk: in std_logic);  
--end MAXTER;

--architecture Behavioral of MAXTER is
    
----    component CLOCK05 
----        Port (clk: in std_logic;
----              clk_05: out std_logic);
----    end component;
    
--    signal clk60, clk05,clkk: std_logic;
--    signal contador: integer range 1 to 5 := 1;
--    signal bcd_u, bcd_c, bcd_d, bcd_m: std_logic_vector(3 downto 0);

--begin
 
----    mapclock05: CLOCK05 port map( clk_05 => clk05,clk => clk);
    
----    multiplex2: process(clk05)
----    begin
----        if rising_edge(clk05) then
----            case contador is 
----                when 1 => bcd_u <= "1001"; bcd_d <= "1111"; bcd_c <= "1111"; bcd_m <= "1111";
----                when 2 => bcd_u <= "0010"; bcd_d <= "0100"; bcd_c <= "0110"; bcd_m <= "0100";
----                when 3 => bcd_u <= "0110"; bcd_d <= "0011"; bcd_c <= "0111"; bcd_m <= "0000";
----                when 4 => bcd_u <= "0001"; bcd_d <= "0111"; bcd_c <= "0000"; bcd_m <= "0110";
----                when 5 => bcd_u <= "0000"; bcd_d <= "0001"; bcd_c <= "0011"; bcd_m <= "0010";
----                when others => null;
----                end case;
----            contador <= contador + 1;
----            if contador = 5 then
----               contador <= 1;
----            end if;
----        end if;
----    end process;
    
----    u <= bcd_u;
----    d <= bcd_d;
----    c <= bcd_c;
----    m <= bcd_m;
    
--end Behavioral;
