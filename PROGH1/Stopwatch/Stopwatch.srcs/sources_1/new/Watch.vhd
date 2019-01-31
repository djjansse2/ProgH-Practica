----------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date: 12/05/2018 10:14:39 PM
-- Design Name:
-- Module Name: Watch - Behavioral
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

entity Watch is
  Port ( 
  clk : in STD_LOGIC;
  sysReset : in STD_LOGIC;
  buttonsin : in STD_LOGIC_VECTOR (1 downto 0);
  segmentSel : out STD_LOGIC_VECTOR(3 downto 0);
  segmentOut : out STD_LOGIC_VECTOR(6 downto 0)
  );
end Watch;

architecture Behavioral of Watch is

  component FSM is
    Port ( 
    clk : in STD_LOGIC;
    sysReset : in STD_LOGIC;
    buttons : in STD_LOGIC_VECTOR (1 downto 0);
    watchRunning : out STD_LOGIC;
    watchReset : out STD_LOGIC
    );
  end component;

  component Stopwatch is
    Port (
    clk : in STD_LOGIC;
    sysReset : in STD_LOGIC;
    watchRunning : in STD_LOGIC;
    watchReset : in STD_LOGIC;
    secunit : out STD_LOGIC_VECTOR(3 downto 0);
    sectens : out STD_LOGIC_VECTOR(3 downto 0);
    minunit : out STD_LOGIC_VECTOR(3 downto 0);
    mintens : out STD_LOGIC_VECTOR(3 downto 0));
  end component;

  component Segmentdriver is
    Port (
    clk     : in STD_LOGIC;
    unitsin : in STD_LOGIC_VECTOR(3 downto 0);
    tensin : in STD_LOGIC_VECTOR(3 downto 0);
    hundredsin : in STD_LOGIC_VECTOR(3 downto 0);
    thousandsin : in STD_LOGIC_VECTOR(3 downto 0);
    segmentSel : out STD_LOGIC_VECTOR(3 downto 0);
    segmentOut : out STD_LOGIC_VECTOR(6 downto 0)
    );

  end component;

  signal reset: STD_LOGIC;
  signal running: STD_LOGIC;

  signal segment : STD_LOGIC_VECTOR(3 downto 0);

  signal unit: STD_LOGIC_VECTOR(3 downto 0);
  signal ten: STD_LOGIC_VECTOR(3 downto 0);
  signal hundred: STD_LOGIC_VECTOR(3 downto 0);
  signal thousands: STD_LOGIC_VECTOR(3 downto 0);
  begin

    WatchFSM : FSM port map (
    clk => clk,
    sysReset => sysReset,
    buttons => buttonsin,
    watchRunning => running,
    watchReset => reset
    );

    SW : Stopwatch port map (
    clk => clk,
    sysReset => sysReset,
    watchRunning => running,
    watchReset => reset,
    secunit => unit,
    sectens => ten,
    minunit => hundred,
    mintens => thousands
    );
    SegDrv : Segmentdriver port map (
    clk => clk,
    unitsin => unit,
    tensin => ten,
    hundredsin => hundred,
    thousandsin => thousands,
    segmentSel => segmentSel,
    segmentOut => segmentOut
    );

  end Behavioral;
