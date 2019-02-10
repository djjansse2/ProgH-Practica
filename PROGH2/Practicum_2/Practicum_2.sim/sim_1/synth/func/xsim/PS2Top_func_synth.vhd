-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
-- Date        : Sat Feb  9 16:39:12 2019
-- Host        : DESKTOP-MV4G04O running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               Y:/ProgH-Practicum/PROGH2/Practicum_2/Practicum_2.sim/sim_1/synth/func/xsim/PS2Top_func_synth.vhd
-- Design      : PS2Top
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity PS2Top is
  port (
    clk : in STD_LOGIC;
    psclk : in STD_LOGIC;
    psdin : in STD_LOGIC;
    psdout : out STD_LOGIC_VECTOR ( 7 downto 0 );
    psdone : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of PS2Top : entity is true;
end PS2Top;

architecture STRUCTURE of PS2Top is
begin
psdone_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => psdone
    );
\psdout_OBUF[0]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => '0',
      O => psdout(0),
      T => '1'
    );
\psdout_OBUF[1]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => '0',
      O => psdout(1),
      T => '1'
    );
\psdout_OBUF[2]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => '0',
      O => psdout(2),
      T => '1'
    );
\psdout_OBUF[3]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => '0',
      O => psdout(3),
      T => '1'
    );
\psdout_OBUF[4]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => '0',
      O => psdout(4),
      T => '1'
    );
\psdout_OBUF[5]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => '0',
      O => psdout(5),
      T => '1'
    );
\psdout_OBUF[6]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => '0',
      O => psdout(6),
      T => '1'
    );
\psdout_OBUF[7]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => '0',
      O => psdout(7),
      T => '1'
    );
end STRUCTURE;
