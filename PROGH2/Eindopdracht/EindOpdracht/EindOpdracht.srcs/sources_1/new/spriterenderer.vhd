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
    Port (  pixclk : in STD_LOGIC;
            hcount, vcount : in STD_LOGIC_VECTOR(10 downto 0);
            dataInB : in STD_LOGIC_VECTOR(0 downto 0);
            dataInN : in STD_LOGIC_VECTOR(0 downto 0);
            dataOut : out STD_LOGIC;
            dataAddN : out STD_LOGIC_VECTOR(14 downto 0);
            dataAddB : out STD_LOGIC_VECTOR(19 downto 0));
end spriterenderer;

architecture Behavioral of spriterenderer is

    SIGNAL addNB : STD_LOGIC_VECTOR(19 downto 0) := (others => '0');
    SIGNAL addNO : STD_LOGIC_VECTOR(14 downto 0) := (others => '0');

begin

    dataAddB <= addNB;
    dataAddN <= addNO;

    process(pixclk, hcount, vcount)

    begin
        if rising_edge(pixclk) then
            if (hcount >= 470) and (hcount < 1450) and (vcount >= 180) and (vcount < 900) then
                if (hcount >= 970) and (hcount < 1179) and (vcount >= 280) and (vcount < 393) then
                    dataOut <= dataInB(0) and dataInN(0);
                    
                    if (addNO >= 23616) then
                        addNO <= (others => '0');
                    else
                        addNO <= addNO + 1;
                    end if;
                else
                    dataOut <= dataInB(0);
                end if;
                                    
                if (addNB >= 705599) then
                    addNB <= (others => '0');
                else
                    addNB <= addNB + 1;
                end if;
            else
                dataOut <= '1';
            end if;
        end if;
    end process;

end Behavioral;
