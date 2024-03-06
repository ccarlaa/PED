--library IEEE;
--use IEEE.STD_LOGIC_1164.ALL;



--entity Master is
--    Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
--           B : in STD_LOGIC_VECTOR (3 downto 0);
--           Sel: in STD_LOGIC;
--           AN: out STD_LOGIC_VECTOR (3 downto 0);
--           S : out STD_LOGIC_VECTOR (6 downto 0));
--end Master;

--architecture Behavioral of Master is

--signal u1,u2,u3,u4,u6,sw: STD_LOGIC_VECTOR(3 downto 0);

--signal w1,w2: STD_LOGIC_VECTOR(6 downto 0);

----signal sel: STD_LOGIC;

--component seg_7 
--    Port ( sw : in STD_LOGIC_VECTOR (3 downto 0);
--           seg : out STD_LOGIC_VECTOR (6 downto 0);
--           an : out STD_LOGIC_VECTOR (3 downto 0));
--end component;

--component Mux_2 
--    Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
--           B : in STD_LOGIC_VECTOR (3 downto 0);
--           Sel : in STD_LOGIC;
--           S1 : out STD_LOGIC_VECTOR (3 downto 0));
--end component;

--begin

--with Sel select
--    u4 <= "1110" when '0',
--          "1101" when others;
          
          
--with Sel select
--    sw <= u1 when '0',
--          u2 when others;
                     
               
--seg7: seg_7 port map(sw => sw, seg => w1 , an => u6);


--mux2: Mux_2 port map(A => u1, B => u2, Sel => Sel, S1 => u3);

--S <= w1;
--u1 <= A;
--u2 <= B;
--AN <= u4;

--end Behavioral;
