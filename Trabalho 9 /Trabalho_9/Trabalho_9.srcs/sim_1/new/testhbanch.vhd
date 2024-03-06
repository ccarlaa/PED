----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 29.04.2021 16:35:29
-- Design Name: 
-- Module Name: testhbanch - Behavioral
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

entity testhbanch is
end testhbanch;

architecture Behavioral of testhbanch is

    component CLOCK60 
        Port (clk: in std_logic;
              clk_1: out std_logic);
    end component;
    
    component maps 
        port( clk: in std_logic;
              setin: in std_logic:='0';
              clrin: in std_logic:='0';
              Qout: out std_logic_vector(15 downto 0));
    end component;
    
    component flip_flop_d 
        port( D: in std_logic:='1';
              set: in std_logic;
              clr: in std_logic;
              Q: out std_logic_vector(15 downto 0);
              clk_div: in std_logic);
    end component;

    signal Dsignal, setsignal, clrsignal, clk_div_signal: std_logic;
    signal Qsignal: std_logic_vector(15 downto 0);

begin

    flipmap: flip_flop_d port map ( D => Dsignal, set => setsignal, clr => clrsignal, Q => Qsignal, clk_div => clk_div_signal);
    


end Behavioral;
