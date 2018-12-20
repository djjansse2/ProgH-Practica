----------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date: 18.12.2018 20:18:25
-- Design Name:
-- Module Name: spriterenderer - Behavioral
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity spriterenderer is
  Port ( vcount : in STD_LOGIC_VECTOR (9 downto 0);
  hcount : in STD_LOGIC_VECTOR (9 downto 0);
  enable : in STD_LOGIC;
  clk25 : in STD_LOGIC;
  vsync : in STD_LOGIC;
  red : out STD_LOGIC;
  green : out STD_LOGIC;
  blue : out STD_LOGIC);
end spriterenderer;

architecture Behavioral of spriterenderer is

  SIGNAL dirH, dirV : STD_LOGIC := '1';
  SIGNAL posH : integer := 459;
  SIGNAL posV : integer := 266;
  SIGNAL size : integer := 16;

  begin
    process(clk25, hcount, vcount)

    TYPE CircleData IS ARRAY (0 to 15, 0 to 15 ) OF STD_LOGIC_VECTOR (2 downto 0);

    variable sprH : integer := 0;
    variable sprV : integer := 0;

    CONSTANT circle : CircleData :=
    (
      ("111","111","111","111","111","000","000","000","000","000","111","111","111","111","111","111"),
      ("111","111","111","111","000","000","000","000","000","000","000","000","111","111","111","111"),
      ("111","111","000","000","000","000","100","100","100","100","000","000","000","000","111","111"),
      ("111","111","000","000","100","100","100","100","100","100","100","100","000","000","111","111"),
      ("111","000","000","100","100","100","100","100","100","100","100","100","100","000","000","111"),
      ("000","000","000","100","100","100","100","100","100","100","100","100","100","000","000","111"),
      ("000","000","100","100","100","100","100","100","100","100","100","100","100","100","000","000"),
      ("000","000","100","100","100","100","100","100","100","100","100","100","100","100","000","000"),
      ("000","000","100","100","100","100","100","100","100","100","100","100","100","100","000","000"),
      ("000","000","100","100","100","100","100","100","100","100","100","100","100","100","000","000"),
      ("000","000","000","100","100","100","100","100","100","100","100","100","100","000","000","111"),
      ("111","000","000","100","100","100","100","100","100","100","100","100","100","000","000","111"),
      ("111","111","000","000","100","100","100","100","100","100","100","100","000","000","111","111"),
      ("111","111","000","000","000","000","100","100","100","100","000","000","000","000","111","111"),
      ("111","111","111","111","000","000","000","000","000","000","000","000","111","111","111","111"),
      ("111","111","111","111","111","000","000","000","000","000","111","111","111","111","111","111")
    );



    begin
      if(rising_edge(clk25)) then
        if(enable = '0') then
          if (hcount >= posH) and (hcount <= posH + size) and (vcount >= posV) and (vcount <= posV + size) then
            red <= circle(sprV, sprH)(2);
            green <= circle(sprV, sprH)(1);
            blue <= circle(sprV, sprH)(0);

            if(sprH >= size) then
              sprH := 0;

              if(sprV >= size) then
                sprV := 0;
              else
                sprV := sprV + 1;
              end if;
            else
              sprH := sprH + 1;
            end if;
          else
            red <= '0';
            green <= '0';
            blue <= '1';
          end if;
        end if;
      end if;
    end process;

    process(clk25)
    begin
      if(rising_edge(clk25)) then
        if(enable = '1') then
          if(dirH = '1') then
            posH <= posH + 1;
          else
            posH <= posH - 1;
          end if;

          if(dirV = '1') then
            posV <= posV + 1;
          else
            posV <= posV - 1;
          end if;

          if(posV <= 32) then
            dirV <= '1';
          elsif(posV + size >= 510) then
            dirV <= '0';
          else
            dirV <= dirV;
          end if;

          if(posH <= 145) then
            dirH <= '1';
          elsif(posH + size >= 783) then
            dirH <= '0';
          else
            dirH <= dirH;
          end if;
        end if;
      end if;
    end process;
  end Behavioral;
