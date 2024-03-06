library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity maps is
    port( clk: in std_logic;
          setin: in std_logic:='0';
          Qout: out std_logic_vector(15 downto 0);
          Din: in std_logic);
end maps;

architecture Behavioral of maps is

    component flip_flop_d is
        port( D: in std_logic;
              set: in std_logic;
              Q: out std_logic;
              clk_div: in std_logic);
    end component;
        
    component CLOCK60 
        Port (clk: in std_logic;
              clk_1: out std_logic);
    end component;

    signal clock1hz: std_logic;
    signal qoutt: std_logic_vector(15 downto 0);
begin
    
    CLOCK60MAP: CLOCK60 port map( clk => clk, clk_1 => clock1hz);
    flip_flop_d_map: flip_flop_d port map( D => Din, set => setin, Q => qoutt(0), clk_div => clock1hz);
    flip_flop_d_map1: flip_flop_d port map( D => qoutt(0), set => setin, Q => qoutt(1), clk_div => clock1hz);
    flip_flop_d_map2: flip_flop_d port map( D => qoutt(1), set => setin, Q => qoutt(2), clk_div => clock1hz);
    flip_flop_d_map3: flip_flop_d port map( D => qoutt(2), set => setin, Q => qoutt(3), clk_div => clock1hz);
    flip_flop_d_map4: flip_flop_d port map( D => qoutt(3), set => setin, Q => qoutt(4), clk_div => clock1hz);
    flip_flop_d_map5: flip_flop_d port map( D => qoutt(4), set => setin, Q => qoutt(5), clk_div => clock1hz);
    flip_flop_d_map6: flip_flop_d port map( D => qoutt(5), set => setin, Q => qoutt(6), clk_div => clock1hz);
    flip_flop_d_map7: flip_flop_d port map( D => qoutt(6), set => setin, Q => qoutt(7), clk_div => clock1hz);
    flip_flop_d_map8: flip_flop_d port map( D => qoutt(7), set => setin, Q => qoutt(8), clk_div => clock1hz);
    flip_flop_d_map9: flip_flop_d port map( D => qoutt(8), set => setin, Q => qoutt(9), clk_div => clock1hz);
    flip_flop_d_map10: flip_flop_d port map( D => qoutt(9), set => setin, Q => qoutt(10), clk_div => clock1hz);
    flip_flop_d_map11: flip_flop_d port map( D => qoutt(10), set => setin, Q => qoutt(11), clk_div => clock1hz);
    flip_flop_d_map12: flip_flop_d port map( D => qoutt(11), set => setin, Q => qoutt(12), clk_div => clock1hz);
    flip_flop_d_map13: flip_flop_d port map( D => qoutt(12), set => setin, Q => qoutt(13), clk_div => clock1hz);
    flip_flop_d_map14: flip_flop_d port map( D => qoutt(13), set => setin, Q => qoutt(14), clk_div => clock1hz);
    flip_flop_d_map15: flip_flop_d port map( D => qoutt(14), set => setin, Q => qoutt(15), clk_div => clock1hz);
    
    Qout <= qoutt;
    
end Behavioral;
