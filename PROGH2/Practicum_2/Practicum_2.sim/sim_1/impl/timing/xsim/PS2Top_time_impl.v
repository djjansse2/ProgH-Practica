// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Sat Feb  9 16:37:52 2019
// Host        : DESKTOP-MV4G04O running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               Y:/ProgH-Practicum/PROGH2/Practicum_2/Practicum_2.sim/sim_1/impl/timing/xsim/PS2Top_time_impl.v
// Design      : PS2Top
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* ECO_CHECKSUM = "2d1da505" *) 
(* NotValidForBitStream *)
module PS2Top
   (clk,
    psclk,
    psdin,
    psdout,
    psdone);
  input clk;
  input psclk;
  input psdin;
  output [7:0]psdout;
  output psdone;

  wire psdone;
  wire [7:0]psdout;

initial begin
 $sdf_annotate("PS2Top_time_impl.sdf",,,,"tool_control");
end
  OBUF psdone_OBUF_inst
       (.I(1'b0),
        .O(psdone));
  OBUFT \psdout_OBUF[0]_inst 
       (.I(1'b0),
        .O(psdout[0]),
        .T(1'b1));
  OBUFT \psdout_OBUF[1]_inst 
       (.I(1'b0),
        .O(psdout[1]),
        .T(1'b1));
  OBUFT \psdout_OBUF[2]_inst 
       (.I(1'b0),
        .O(psdout[2]),
        .T(1'b1));
  OBUFT \psdout_OBUF[3]_inst 
       (.I(1'b0),
        .O(psdout[3]),
        .T(1'b1));
  OBUFT \psdout_OBUF[4]_inst 
       (.I(1'b0),
        .O(psdout[4]),
        .T(1'b1));
  OBUFT \psdout_OBUF[5]_inst 
       (.I(1'b0),
        .O(psdout[5]),
        .T(1'b1));
  OBUFT \psdout_OBUF[6]_inst 
       (.I(1'b0),
        .O(psdout[6]),
        .T(1'b1));
  OBUFT \psdout_OBUF[7]_inst 
       (.I(1'b0),
        .O(psdout[7]),
        .T(1'b1));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
