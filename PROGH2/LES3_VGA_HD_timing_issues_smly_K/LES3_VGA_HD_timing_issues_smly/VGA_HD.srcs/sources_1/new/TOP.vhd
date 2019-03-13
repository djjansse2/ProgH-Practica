----------------------------------------------------------------------------------
-- Company: Avans   
-- Engineer: 
-- 
-- Create Date: 12/13/2018 10:24:34 AM
-- Design Name: 
-- Module Name: TOP - Behavioral
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

entity TOP is
        Port (  aResetP : in STD_LOGIC;
                clk_100 : in STD_LOGIC;
                red, green, blue : out  STD_LOGIC_VECTOR(3 downto 0);
                hsync, vsync : out  STD_LOGIC;
                Backcolor: in std_logic_vector(2 downto 0));
end TOP;

architecture Behavioral of TOP is
    
component VGA is
    Port (   aResetP : in STD_LOGIC;
             Pixel_clk : in STD_LOGIC;
             red, green, blue : out  STD_LOGIC_VECTOR(3 downto 0);
             R,G,B : in STD_LOGIC_VECTOR(3 downto 0);
             hsync, vsync : out  STD_LOGIC;
             Hcnt, Vcnt : out integer);
end component;

component clk_148 is
    Port (  clk100: in STD_LOGIC;
            reset: in STD_LOGIC;
            clk148: out STD_LOGIC);
end component;

component Sprite is
    Port ( aResetP : in STD_LOGIC;
           hcnt : in integer;
           vcnt : in integer;
           clk148 : in  STD_LOGIC;
           R,G,B: out STD_LOGIC_VECTOR(3 downto 0);
           Backcolor: in STD_LOGIC_VECTOR(2 downto 0);
           addra : out STD_LOGIC_VECTOR(13 DOWNTO 0);
           dina : in STD_LOGIC_VECTOR(11 DOWNTO 0));
end component;

component blk_mem_gen_0 IS
    Port (    clka : IN STD_LOGIC;
            rsta : IN STD_LOGIC;
            addra : IN STD_LOGIC_VECTOR(13 DOWNTO 0);
            douta : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
            rsta_busy : OUT STD_LOGIC);
END component;

signal clk148: STD_LOGIC;
signal hcount,vcount: integer; 
signal R,G,B: STD_LOGIC_VECTOR(3 downto 0);
signal colorData: STD_LOGIC_VECTOR(11 downto 0);
signal addr: STD_LOGIC_VECTOR(13 DOWNTO 0);
begin

VIDEO: vga port map(aResetP, clk148, red, green, blue, R, G, B, hsync, vsync, hcount, vcount);
Clock: clk_148 port map(clk_100, aResetP, clk148);
Sprt: sprite port map(aResetP, hcount, vcount, clk148, R, G, B, Backcolor,addr,colorData);
ROM: blk_mem_gen_0 port map(clk148, aResetP, addr, colorData, open); 

end Behavioral;
