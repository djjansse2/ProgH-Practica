-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
-- Date        : Mon Jan 21 16:19:31 2019
-- Host        : NB170210 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub {C:/Users/jlgheuve/Documents/Werkmap/2018-2019/Periode
--               3/PROGH2/Opdrachten/Uiterkingen opdrachten/Vivado
--               projecten/VGA_HD_timing_issues_smly/VGA_HD.srcs/sources_1/ip/Clk_148/Clk_148_stub.vhdl}
-- Design      : Clk_148
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Clk_148 is
  Port ( 
    clk148 : out STD_LOGIC;
    reset : in STD_LOGIC;
    clk100 : in STD_LOGIC
  );

end Clk_148;

architecture stub of Clk_148 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk148,reset,clk100";
begin
end;
