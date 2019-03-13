----------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date: 02/09/2019 01:16:09 PM
-- Design Name:
-- Module Name: PS2Reader - Behavioral
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

entity PS2Reader is
  GENERIC(
  clk_freq              : INTEGER := 10_000_000; --system clock frequency in Hz
  debounce_counter_size : INTEGER := 10);
  Port (
  clk : in STD_LOGIC;
  psclk : in STD_LOGIC;
  psdin : in STD_LOGIC;
  psdone : out STD_LOGIC;
  psdout : out STD_LOGIC_VECTOR (7 downto 0);
  segmentSel : out STD_LOGIC_VECTOR (3 downto 0);
  segmentOut : out STD_LOGIC_VECTOR (6 downto 0)
  );
end PS2Reader;

architecture Behavioral of PS2Reader is

  component debounce is
    generic(
    counter_size : INTEGER);
    port(
    clk    : in  STD_LOGIC;
    din : in  STD_LOGIC;
    result : out STD_LOGIC);
  end component;

  component Segmentdriver is
    Port (
    clk     : in STD_LOGIC;
    unitsin : in STD_LOGIC_VECTOR(3 downto 0);
    tensin : in STD_LOGIC_VECTOR(3 downto 0);
    hundredsin : in STD_LOGIC_VECTOR(3 downto 0);
    thousandsin : in STD_LOGIC_VECTOR(3 downto 0);
    segmentSel : out STD_LOGIC_VECTOR(3 downto 0);
    segmentOut : out STD_LOGIC_VECTOR(6 downto 0));
  end component;


  signal shift_reg : STD_LOGIC_VECTOR(10 downto 0) := (others => '0');
  signal dcount : INTEGER RANGE -12 TO 12;
  signal segBuf: std_logic_vector(15 downto 0);

  signal edgePSClk : std_logic_vector(1 downto 0);
  signal pserror : std_logic;

  signal tpsdout : STD_LOGIC_VECTOR (7 downto 0);

  signal rpsclk: std_logic; --raw ps clk
  signal rpsdin: std_logic; --raw ps din

  signal fpsclk: std_logic; --Flipflopped ps clk
  signal fpsdin: std_logic; --Flipflopped ps din

  SIGNAL tempUni : STD_LOGIC_VECTOR (3 downto 0) := "0000";
  SIGNAL tempTen : STD_LOGIC_VECTOR (3 downto 0) := "0000";
  SIGNAL tempHun : STD_LOGIC_VECTOR (3 downto 0) := "0000";
  SIGNAL tempTho : STD_LOGIC_VECTOR (3 downto 0) := "0000";

  begin

    --debouncers
    dbps2clk: debounce
    GENERIC MAP(counter_size => debounce_counter_size)
    PORT MAP(clk => clk, din => rpsclk, result => fpsclk);

    SegDriv : Segmentdriver port map(clk => clk, unitsin => tempUni, tensin => tempTen, hundredsin => tempHun, thousandsin => tempTho, segmentSel => segmentSel, segmentOut => segmentOut);

    dbps2din: debounce
    GENERIC MAP(counter_size => debounce_counter_size)
    PORT MAP(clk => clk, din => rpsdin, result => fpsdin);


    --sanity check
    pserror <= NOT (NOT shift_reg(0) AND shift_reg(10) AND (shift_reg(9) XOR shift_reg(8) XOR
    shift_reg(7) XOR shift_reg(6) XOR shift_reg(5) XOR shift_reg(4) XOR shift_reg(3) XOR
    shift_reg(2) XOR shift_reg(1)));


    process (clk)
    begin
      if (rising_edge(clk)) THEN
      rpsclk <= psclk;
      rpsdin <= psdin;

    end if;
  end process;

  process (fpsclk)
  begin
    if (falling_edge(fpsclk)) then
        --psdone <= '1';
        dcount <= dcount + 1;
        shift_reg <= fpsdin & shift_reg(10 downto 1);

    end if;
  end process;

  process (clk)
  begin
    tpsdout <= shift_reg (8 downto 1);
    if (rising_edge(clk)) then
      if (dcount = 10 and pserror = '0') then
        psdone <= '1';

        case tpsdout is
          when "01000101" =>segBuf <= segBuf(11 downto 0) & "0000";
          when "00010110" =>segBuf <= segBuf(11 downto 0) & "0001";
          when "00011110" =>segBuf <= segBuf(11 downto 0) & "0010";
          when "00100110" =>segBuf <= segBuf(11 downto 0) & "0011";
          when "00100101" =>segBuf <= segBuf(11 downto 0) & "0100";
          when "00101110" =>segBuf <= segBuf(11 downto 0) & "0101";
          when "00110110" =>segBuf <= segBuf(11 downto 0) & "0110";
          when "00111101" =>segBuf <= segBuf(11 downto 0) & "0111";
          when "00111110" =>segBuf <= segBuf(11 downto 0) & "1000";
          when "01000110" =>segBuf <= segBuf(11 downto 0) & "1001";
          when others =>    segBuf <= segBuf;


        end case;
        tempUni <= segBuf(3 downto 0);
        tempTen <= segBuf(7 downto 4);
        tempHun <= segBuf(11 downto 8);
        tempTho <= segBuf(15 downto 12);

        if (tpsdout = "11110000") THEN
        dcount <= -11;
      else
        dcount <= 0;
      end if;


    end if;

    psdout <= tpsdout;
  end if;
end process;
end Behavioral;
