--library IEEE;
--use IEEE.STD_LOGIC_1164.ALL;

--entity SEG_7 is
--    Port ( clk : in std_logic;
--           seg1 : out std_logic_vector(6 downto 0);
--           an1: out std_logic_vector(3 downto 0);
----           dp: out std_logic);
           
--end SEG_7;

--architecture Behavioral of SEG_7 is
    
--    component MUX_2 is
--        Port (A: in STD_LOGIC_VECTOR (3 downto 0);
--              B: in STD_LOGIC_VECTOR (3 downto 0);
--              C: in STD_LOGIC_VECTOR (3 downto 0):= "1111";
--              D: in STD_LOGIC_VECTOR (3 downto 0):= "0000";
--              an : out std_logic_vector(3 downto 0);
--              seg: out std_logic_vector(3 downto 0);
--              clk: in std_logic);
--    end component;
    
--    component CLOCK60 is
--        Port (clk: in std_logic;
--              clk_60: out std_logic);
--    end component;
    
--signal an2, seg2, a,b,c,d: std_logic_vector(3 downto 0);
--signal cllk, clock600,clock005: std_logic;

--begin

--    muxport: MUX_2 port map (an => an2, A => a, B=> b,C=> c, D=> d, seg => seg2, clk => clk);
--    mapclock60: CLOCK60 port map ( clk => clk, clk_60 => clock600);
    
--with seg2 select
--seg1 <="1000000" when "0000", --display positivo-- 
--       "1111001" when "0001",
--       "0100100" when "0010",
--       "0110000" when "0011",
--       "0011001" when "0100",
--       "0010010" when "0101",
--       "0000010" when "0110",
--       "1111000" when "0111",
        
--       "0000000" when "1000",--display negativo--
--       "1111000" when "1001",
--       "0000010" when "1010",  
--       "0010010" when "1011",
--       "0011001" when "1100",
--       "0110000" when "1101",
--       "0100100" when "1110",
--       "1111001" when "1111",
--       "1111111" when others;
       
----with seg2 select       
----dp <= '1' when "0000",
----      '1' when "0001",
----      '1' when "0010",
----      '1' when "0011",
----      '1' when "0100",
----      '1' when "0101",
----      '1' when "0110",
----      '1' when "0111",
----      '0' when "1000",
----      '0' when "1001",
----      '0' when "1010",
----      '0' when "1011",
----      '0' when "1100",
----      '0' when "1101",
----      '0' when "1110",
----      '0' when "1111",
----      '1' when others;
      
    


       
--an1<=an2;

--end Behavioral;
