----------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date: 11/21/2018 08:31:45 PM
-- Design Name:
-- Module Name: BinToBCD - Behavioral
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
use IEEE.numeric_std.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity BinToBCD is
  Port (
  signedEnable : in STD_LOGIC;
  binvec : in  STD_LOGIC_VECTOR(7 downto 0);
  unitsvec : out STD_LOGIC_VECTOR(3 downto 0);
  tensvec : out STD_LOGIC_VECTOR(3 downto 0);
  hundredsvec : out  STD_LOGIC_VECTOR (3 downto 0);
  thousandsvec : out  STD_LOGIC_VECTOR (3 downto 0)

  );
end BinToBCD;

architecture Behavioral of BinToBCD is

  begin

    bcd : process(binvec)

    variable tempnum : signed(7 downto 0);

    variable tempvec : STD_LOGIC_VECTOR (7 downto 0);

    variable bcd : UNSIGNED (15 downto 0) := (others => '0');

    begin

      bcd := (others => '0');
      tempnum := signed(binvec);

      if (signedEnable = '1') then
      if (binvec(7) = '1') then
                  thousandsvec <= "1111";
                  tempnum := -tempnum;
              end if; 
      end if;

      tempvec(7 downto 0) := std_logic_vector(tempnum);

      for i in 0 to 7 loop
        if bcd(3 downto 0) > 4 then
          bcd(3 downto 0) := bcd(3 downto 0) + 3;
        end if;

        if bcd(7 downto 4) > 4 then
          bcd(7 downto 4) := bcd(7 downto 4) + 3;
        end if;

        if bcd(11 downto 8) > 4 then
          bcd(11 downto 8) := bcd(11 downto 8) + 3;
        end if;
        bcd := bcd(14 downto 0) & tempvec(7);

        tempvec := tempvec(6 downto 0) & '0';
      end loop;

      unitsvec <= STD_LOGIC_VECTOR(bcd(3 downto 0));
      tensvec <= STD_LOGIC_VECTOR(bcd(7 downto 4));
      hundredsvec <= STD_LOGIC_VECTOR(bcd(11 downto 8));
    end process;

  end Behavioral;
