library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MAXTER is
    port ( saida: out std_logic_vector (6 downto 0);
           rst: in std_logic;
           en: in std_logic;
           clk: in std_logic;
           an: out std_logic_vector(3 downto 0);
           led: out std_logic);
end MAXTER;

architecture Behavioral of maxter is

    component clock1HZ is
        Port (clk: in std_logic;
              clk_1: out std_logic);
    end component;
    
    component SEG7 is
        Port ( seg1 : out std_logic_vector(6 downto 0);
               seg2 : in std_logic_vector(3 downto 0);
               led: out std_logic);         
    end component;

    component flip_flop_t is
        port ( t: in std_logic;
               clk1hz: in std_logic;
               reset: in std_logic;
               Q: out std_logic);
    end component;

    signal clock_1hz: std_logic;
    signal a: std_logic_vector(3 downto 0);

begin

    SEG7_map: SEG7 port map (seg1 => saida, seg2 => a, led => led);
    clock1HZ_map: clock1HZ port map (clk => clk, clk_1 => clock_1hz);
    flip_flop_t0_map: flip_flop_t port map (t => en, clk1hz => clock_1hz, reset => rst, Q => a(0));
    flip_flop_t1_map: flip_flop_t port map (t => en, clk1hz => a(0), reset => rst, Q => a(1));
    flip_flop_t2_map: flip_flop_t port map (t => en, clk1hz => a(1), reset => rst, Q => a(2));
    flip_flop_t3_map: flip_flop_t port map (t => en, clk1hz => a(2), reset => rst, Q => a(3));

    an <= "1110";

end Behavioral;
