----------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date: 06.03.2019 11:16:57
-- Design Name:
-- Module Name: MainGame - Behavioral
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

entity MainGame is
     Port ( sysclk : in STD_LOGIC;
            VGAR, VGAG, VGAB : out STD_LOGIC;
            hsync, vsync : out STD_LOGIC);
end MainGame;

architecture Behavioral of MainGame is

    component Pixel_Clock is
        Port (  clk_in1 : in STD_LOGIC;
                clk_out1 : out STD_LOGIC );
    end component;

    component vga is
        Port (  Pixel_clk : in STD_LOGIC;
                dataIn : in STD_LOGIC;
                red, green, blue : out  STD_LOGIC;
                hsync, vsync : out  STD_LOGIC;
                hcounto, vcounto : out STD_LOGIC_VECTOR(10 downto 0));
    end component;

    component spriterenderer is
        Port (  pixclk : in STD_LOGIC;
                hcount, vcount : in STD_LOGIC_VECTOR(10 downto 0);
                dataInB : in STD_LOGIC_VECTOR(0 downto 0);
                dataInN : in STD_LOGIC_VECTOR(0 downto 0);
                dataOut : out STD_LOGIC;
                dataAddN : out STD_LOGIC_VECTOR(14 downto 0);
                dataAddB : out STD_LOGIC_VECTOR(19 downto 0));
    end component;
    
    component Notenbalk is
        Port (  addra : in STD_LOGIC_VECTOR(19 downto 0);
                clka : in STD_LOGIC;
                douta : out STD_LOGIC_VECTOR(0 downto 0));
    end component;
    
    component Muzieknoot is
        Port (  addra : in STD_LOGIC_VECTOR(14 downto 0);
                clka : in STD_LOGIC;
                douta : out STD_LOGIC_VECTOR(0 downto 0));
    end component;

    SIGNAL spixclk : STD_LOGIC;
    SIGNAL vcounts, hcounts : STD_LOGIC_VECTOR(10 downto 0);
    SIGNAL NBAdds : STD_LOGIC_VECTOR (19 downto 0);
    SIGNAL NBDatas : STD_LOGIC_VECTOR (0 downto 0);
    SIGNAL MNAdds : STD_LOGIC_VECTOR (14 downto 0);
    SIGNAL MNDatas : STD_LOGIC_VECTOR (0 downto 0);
    SIGNAL vgadatas : STD_LOGIC;

begin

    pix_clk : Pixel_Clock port map ( clk_in1 => sysclk, clk_out1 => spixclk );
    graphics : vga port map ( Pixel_clk => spixclk, dataIn => vgadatas, red => VGAR, green => VGAG, blue => VGAB, hsync => hsync, vsync => vsync, hcounto => hcounts, vcounto => vcounts );
    NB : Notenbalk port map ( addra => NBAdds, clka => sysclk, douta => NBDatas);
    MN : Muzieknoot port map ( addra => MNAdds, clka => sysclk, douta => MNDatas);
    sprite : spriterenderer port map ( pixclk => spixclk, hcount => hcounts, vcount => vcounts, dataInB => NBDatas, dataInN => MNDatas, dataOut => vgadatas, dataAddN => MNAdds, dataAddB => NBAdds);

end Behavioral;
