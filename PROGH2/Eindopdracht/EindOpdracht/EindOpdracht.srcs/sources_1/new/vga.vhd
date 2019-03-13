----------------------------------------------------------------------------------
-- Company:        Avans
-- Engineer:       J. van den Heuvel
--
-- Create Date:    13-12-2018
-- Module Name:    VGA - Behavioral
-- Target Devices: Xilinx Artix 7
-- Description:    This VGA block generates VGA signals with a 1920x1080 resolution
--				   When using this resolution, a pixel clock of 148.5MHz is used.
--
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

entity VGA is
    Port (  Pixel_clk : in STD_LOGIC;
            dataIn : in STD_LOGIC;
            red, green, blue : out  STD_LOGIC;
            hsync, vsync : out  STD_LOGIC;
            hcounto, vcounto : out STD_LOGIC_VECTOR(10 downto 0));


end VGA;

architecture Behavioral of VGA is
  constant H_pixels: integer := 1920;			--horizontal display width in pixels
  constant H_frontporch: integer := 88;			--horizontal front porch width in pixels
  constant H_syncwidth: integer := 44; 			--horizontal sync pulse width in pixels
  constant H_backporch: integer := 148;			--horizontal back porch width in pixels
  constant H_total_pixels: integer := (H_pixels + H_frontporch + H_syncwidth + H_backporch);
  constant H_sync_polarity: STD_LOGIC := '1';	--horizontal sync pulse polarity (1 = positive, 0 = negative)
  constant V_pixels: integer := 1080;			--vertical display width in rows
  constant V_frontporch: integer := 4;			--vertical front porch width in rows
  constant V_syncwidth: integer := 5;			--vertical sync pulse width in rows
  constant V_backporch: integer := 36;			--vertical back porch width in rows
  constant V_total_pixels: integer := (V_pixels + V_frontporch + V_syncwidth + V_backporch);
  constant V_sync_polarity: STD_LOGIC := '1';	--vertical sync pulse polarity (1 = positive, 0 = negative)

begin

process (Pixel_clk)
    VARIABLE hcount	:	INTEGER RANGE 0 TO H_total_pixels - 1 := 0;  --horizontal counter (counts the columns)
	VARIABLE vcount	:	INTEGER RANGE 0 TO V_total_pixels - 1 := 0;  --vertical counter (counts the rows)
begin

    hcounto <= STD_LOGIC_VECTOR(to_unsigned(hcount, 11));
    vcounto <= STD_LOGIC_VECTOR(to_unsigned(vcount, 11));

  if rising_edge(Pixel_clk) then
	   -- display time
	   if (hcount >= 0) and (hcount < H_pixels) and (vcount >= 0) and (vcount < V_pixels) then
        red <= dataIn;
        green <= dataIn;
        blue <= dataIn;
      -- blanking time
	  else
        red <= '0';
        green <= '0';
        blue <= '0';
      end if;
	  -- Horizontal sync pulse signal
      if ((hcount >= (H_pixels + H_frontporch)) and (hcount < (H_pixels + H_frontporch + H_syncwidth))) then
        hsync <= H_sync_polarity;
      else
        hsync <= (not H_sync_polarity);
      end if;
	  -- vertical sync pulse signal
      if ((vcount >= (V_pixels + V_frontporch)) and (vcount < (V_pixels + V_frontporch + V_syncwidth))) then
        vsync <= V_sync_polarity;
      else
        vsync <= (not V_sync_polarity);
      end if;
	  -- horizontal pixel counter
      hcount := hcount + 1;

      if hcount = (H_total_pixels - 1) then
	  -- vertical line counter
        vcount := vcount + 1;
        hcount := 0;
      end if;

      if vcount = (V_total_pixels -1) then
        vcount := 0;
      end if;
	 end if;
end process;

end Behavioral;
