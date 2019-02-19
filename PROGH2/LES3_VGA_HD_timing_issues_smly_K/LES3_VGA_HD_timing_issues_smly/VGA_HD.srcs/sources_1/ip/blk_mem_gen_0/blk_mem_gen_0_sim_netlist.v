// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Mon Jan 21 16:22:58 2019
// Host        : NB170210 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top blk_mem_gen_0 -prefix
//               blk_mem_gen_0_ blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_1,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_1,Vivado 2017.4" *) 
(* NotValidForBitStream *)
module blk_mem_gen_0
   (clka,
    rsta,
    addra,
    douta,
    rsta_busy);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_WRITE_MODE READ_WRITE" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA RST" *) input rsta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [13:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [11:0]douta;
  output rsta_busy;

  wire [13:0]addra;
  wire clka;
  wire [11:0]douta;
  wire rsta;
  wire rsta_busy;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [11:0]NLW_U0_doutb_UNCONNECTED;
  wire [13:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [13:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [11:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "14" *) 
  (* C_ADDRB_WIDTH = "14" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "2" *) 
  (* C_COUNT_36K_BRAM = "3" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "1" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     5.56159 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "0" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "1" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "blk_mem_gen_0.mem" *) 
  (* C_INIT_FILE_NAME = "blk_mem_gen_0.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "3" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "10000" *) 
  (* C_READ_DEPTH_B = "10000" *) 
  (* C_READ_WIDTH_A = "12" *) 
  (* C_READ_WIDTH_B = "12" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "10000" *) 
  (* C_WRITE_DEPTH_B = "10000" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "12" *) 
  (* C_WRITE_WIDTH_B = "12" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  blk_mem_gen_0_blk_mem_gen_v8_4_1 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[11:0]),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[13:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(rsta),
        .rsta_busy(rsta_busy),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[13:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[11:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(1'b0),
        .web(1'b0));
endmodule

module blk_mem_gen_0_blk_mem_gen_generic_cstr
   (douta,
    rsta_busy,
    clka,
    addra,
    rsta);
  output [11:0]douta;
  output rsta_busy;
  input clka;
  input [13:0]addra;
  input rsta;

  wire ENA_I;
  wire ENA_I_0;
  wire ENA_dly_reg;
  wire POR_A;
  wire [13:0]addra;
  wire clka;
  wire [11:0]douta;
  wire [8:0]p_7_out;
  wire ram_rstreg_a;
  wire ram_rstreg_a_busy;
  wire \ramloop[1].ram.r_n_0 ;
  wire \ramloop[1].ram.r_n_1 ;
  wire \ramloop[1].ram.r_n_2 ;
  wire \ramloop[1].ram.r_n_3 ;
  wire \ramloop[1].ram.r_n_4 ;
  wire \ramloop[1].ram.r_n_5 ;
  wire \ramloop[1].ram.r_n_6 ;
  wire \ramloop[1].ram.r_n_7 ;
  wire \ramloop[1].ram.r_n_8 ;
  wire \ramloop[2].ram.r_n_0 ;
  wire \ramloop[2].ram.r_n_1 ;
  wire \ramloop[2].ram.r_n_2 ;
  wire \ramloop[2].ram.r_n_3 ;
  wire \ramloop[2].ram.r_n_4 ;
  wire \ramloop[2].ram.r_n_5 ;
  wire \ramloop[2].ram.r_n_6 ;
  wire \ramloop[2].ram.r_n_7 ;
  wire \ramloop[2].ram.r_n_8 ;
  wire \ramloop[4].ram.r_n_4 ;
  wire rsta;
  wire rsta_busy;

  blk_mem_gen_0_blk_mem_gen_mux \has_mux_a.A 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[1].ram.r_n_0 ,\ramloop[1].ram.r_n_1 ,\ramloop[1].ram.r_n_2 ,\ramloop[1].ram.r_n_3 ,\ramloop[1].ram.r_n_4 ,\ramloop[1].ram.r_n_5 ,\ramloop[1].ram.r_n_6 ,\ramloop[1].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\ramloop[1].ram.r_n_8 ),
        .DOADO({\ramloop[2].ram.r_n_0 ,\ramloop[2].ram.r_n_1 ,\ramloop[2].ram.r_n_2 ,\ramloop[2].ram.r_n_3 ,\ramloop[2].ram.r_n_4 ,\ramloop[2].ram.r_n_5 ,\ramloop[2].ram.r_n_6 ,\ramloop[2].ram.r_n_7 }),
        .DOPADOP(\ramloop[2].ram.r_n_8 ),
        .addra(addra[13:11]),
        .clka(clka),
        .douta(douta[9:1]),
        .p_7_out(p_7_out));
  blk_mem_gen_0_blk_mem_gen_prim_width \ramloop[0].ram.r 
       (.POR_A(POR_A),
        .addra(addra),
        .clka(clka),
        .douta(douta[0]),
        .ram_rstreg_a(ram_rstreg_a));
  blk_mem_gen_0_blk_mem_gen_prim_width__parameterized0 \ramloop[1].ram.r 
       (.ENA_I(ENA_I),
        .POR_A(POR_A),
        .addra(addra[11:0]),
        .clka(clka),
        .\douta[8] ({\ramloop[1].ram.r_n_0 ,\ramloop[1].ram.r_n_1 ,\ramloop[1].ram.r_n_2 ,\ramloop[1].ram.r_n_3 ,\ramloop[1].ram.r_n_4 ,\ramloop[1].ram.r_n_5 ,\ramloop[1].ram.r_n_6 ,\ramloop[1].ram.r_n_7 }),
        .\douta[9] (\ramloop[1].ram.r_n_8 ),
        .ram_rstreg_a(ram_rstreg_a));
  blk_mem_gen_0_blk_mem_gen_prim_width__parameterized1 \ramloop[2].ram.r 
       (.DOADO({\ramloop[2].ram.r_n_0 ,\ramloop[2].ram.r_n_1 ,\ramloop[2].ram.r_n_2 ,\ramloop[2].ram.r_n_3 ,\ramloop[2].ram.r_n_4 ,\ramloop[2].ram.r_n_5 ,\ramloop[2].ram.r_n_6 ,\ramloop[2].ram.r_n_7 }),
        .DOPADOP(\ramloop[2].ram.r_n_8 ),
        .POR_A(POR_A),
        .\SAFETY_CKT_GEN.ENA_WITH_REG.ENA_dly_reg_D_reg (\ramloop[4].ram.r_n_4 ),
        .addra(addra[11:0]),
        .clka(clka),
        .ram_rstreg_a(ram_rstreg_a));
  blk_mem_gen_0_blk_mem_gen_prim_width__parameterized2 \ramloop[3].ram.r 
       (.ENA_I(ENA_I_0),
        .ENA_dly_reg(ENA_dly_reg),
        .POR_A(POR_A),
        .addra(addra[10:0]),
        .clka(clka),
        .p_7_out(p_7_out),
        .ram_rstreg_a(ram_rstreg_a),
        .ram_rstreg_a_busy(ram_rstreg_a_busy),
        .rsta(rsta),
        .rsta_busy(rsta_busy));
  blk_mem_gen_0_blk_mem_gen_prim_width__parameterized3 \ramloop[4].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram (\ramloop[4].ram.r_n_4 ),
        .ENA_I(ENA_I_0),
        .ENA_I_0(ENA_I),
        .ENA_dly_reg(ENA_dly_reg),
        .POR_A(POR_A),
        .addra(addra),
        .clka(clka),
        .douta(douta[11:10]),
        .ram_rstreg_a(ram_rstreg_a),
        .ram_rstreg_a_busy(ram_rstreg_a_busy),
        .rsta(rsta));
endmodule

module blk_mem_gen_0_blk_mem_gen_mux
   (douta,
    addra,
    clka,
    p_7_out,
    DOADO,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    DOPADOP,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 );
  output [8:0]douta;
  input [2:0]addra;
  input clka;
  input [8:0]p_7_out;
  input [7:0]DOADO;
  input [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  input [0:0]DOPADOP;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [7:0]DOADO;
  wire [0:0]DOPADOP;
  wire [2:0]addra;
  wire clka;
  wire [8:0]douta;
  wire [8:0]p_7_out;
  wire [2:0]sel_pipe;
  wire [2:0]sel_pipe_d1;

  LUT6 #(
    .INIT(64'h0F004F4F0F004040)) 
    \douta[1]_INST_0 
       (.I0(sel_pipe_d1[0]),
        .I1(p_7_out[0]),
        .I2(sel_pipe_d1[2]),
        .I3(DOADO[0]),
        .I4(sel_pipe_d1[1]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram [0]),
        .O(douta[0]));
  LUT6 #(
    .INIT(64'h0F004F4F0F004040)) 
    \douta[2]_INST_0 
       (.I0(sel_pipe_d1[0]),
        .I1(p_7_out[1]),
        .I2(sel_pipe_d1[2]),
        .I3(DOADO[1]),
        .I4(sel_pipe_d1[1]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram [1]),
        .O(douta[1]));
  LUT6 #(
    .INIT(64'h0F004F4F0F004040)) 
    \douta[3]_INST_0 
       (.I0(sel_pipe_d1[0]),
        .I1(p_7_out[2]),
        .I2(sel_pipe_d1[2]),
        .I3(DOADO[2]),
        .I4(sel_pipe_d1[1]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram [2]),
        .O(douta[2]));
  LUT6 #(
    .INIT(64'h0F004F4F0F004040)) 
    \douta[4]_INST_0 
       (.I0(sel_pipe_d1[0]),
        .I1(p_7_out[3]),
        .I2(sel_pipe_d1[2]),
        .I3(DOADO[3]),
        .I4(sel_pipe_d1[1]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram [3]),
        .O(douta[3]));
  LUT6 #(
    .INIT(64'h0F004F4F0F004040)) 
    \douta[5]_INST_0 
       (.I0(sel_pipe_d1[0]),
        .I1(p_7_out[4]),
        .I2(sel_pipe_d1[2]),
        .I3(DOADO[4]),
        .I4(sel_pipe_d1[1]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram [4]),
        .O(douta[4]));
  LUT6 #(
    .INIT(64'h0F004F4F0F004040)) 
    \douta[6]_INST_0 
       (.I0(sel_pipe_d1[0]),
        .I1(p_7_out[5]),
        .I2(sel_pipe_d1[2]),
        .I3(DOADO[5]),
        .I4(sel_pipe_d1[1]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram [5]),
        .O(douta[5]));
  LUT6 #(
    .INIT(64'h0F004F4F0F004040)) 
    \douta[7]_INST_0 
       (.I0(sel_pipe_d1[0]),
        .I1(p_7_out[6]),
        .I2(sel_pipe_d1[2]),
        .I3(DOADO[6]),
        .I4(sel_pipe_d1[1]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram [6]),
        .O(douta[6]));
  LUT6 #(
    .INIT(64'h0F004F4F0F004040)) 
    \douta[8]_INST_0 
       (.I0(sel_pipe_d1[0]),
        .I1(p_7_out[7]),
        .I2(sel_pipe_d1[2]),
        .I3(DOADO[7]),
        .I4(sel_pipe_d1[1]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram [7]),
        .O(douta[7]));
  LUT6 #(
    .INIT(64'h0F004F4F0F004040)) 
    \douta[9]_INST_0 
       (.I0(sel_pipe_d1[0]),
        .I1(p_7_out[8]),
        .I2(sel_pipe_d1[2]),
        .I3(DOPADOP),
        .I4(sel_pipe_d1[1]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .O(douta[8]));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg[0] 
       (.C(clka),
        .CE(1'b1),
        .D(sel_pipe[0]),
        .Q(sel_pipe_d1[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg[1] 
       (.C(clka),
        .CE(1'b1),
        .D(sel_pipe[1]),
        .Q(sel_pipe_d1[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg[2] 
       (.C(clka),
        .CE(1'b1),
        .D(sel_pipe[2]),
        .Q(sel_pipe_d1[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe_reg[0] 
       (.C(clka),
        .CE(1'b1),
        .D(addra[0]),
        .Q(sel_pipe[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe_reg[1] 
       (.C(clka),
        .CE(1'b1),
        .D(addra[1]),
        .Q(sel_pipe[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe_reg[2] 
       (.C(clka),
        .CE(1'b1),
        .D(addra[2]),
        .Q(sel_pipe[2]),
        .R(1'b0));
endmodule

module blk_mem_gen_0_blk_mem_gen_prim_width
   (douta,
    clka,
    POR_A,
    ram_rstreg_a,
    addra);
  output [0:0]douta;
  input clka;
  input POR_A;
  input ram_rstreg_a;
  input [13:0]addra;

  wire POR_A;
  wire [13:0]addra;
  wire clka;
  wire [0:0]douta;
  wire ram_rstreg_a;

  blk_mem_gen_0_blk_mem_gen_prim_wrapper_init \prim_init.ram 
       (.POR_A(POR_A),
        .addra(addra),
        .clka(clka),
        .douta(douta),
        .ram_rstreg_a(ram_rstreg_a));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_0_blk_mem_gen_prim_width__parameterized0
   (\douta[8] ,
    \douta[9] ,
    clka,
    ENA_I,
    POR_A,
    ram_rstreg_a,
    addra);
  output [7:0]\douta[8] ;
  output [0:0]\douta[9] ;
  input clka;
  input ENA_I;
  input POR_A;
  input ram_rstreg_a;
  input [11:0]addra;

  wire ENA_I;
  wire POR_A;
  wire [11:0]addra;
  wire clka;
  wire [7:0]\douta[8] ;
  wire [0:0]\douta[9] ;
  wire ram_rstreg_a;

  blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized0 \prim_init.ram 
       (.ENA_I(ENA_I),
        .POR_A(POR_A),
        .addra(addra),
        .clka(clka),
        .\douta[8] (\douta[8] ),
        .\douta[9] (\douta[9] ),
        .ram_rstreg_a(ram_rstreg_a));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_0_blk_mem_gen_prim_width__parameterized1
   (DOADO,
    DOPADOP,
    clka,
    \SAFETY_CKT_GEN.ENA_WITH_REG.ENA_dly_reg_D_reg ,
    POR_A,
    ram_rstreg_a,
    addra);
  output [7:0]DOADO;
  output [0:0]DOPADOP;
  input clka;
  input \SAFETY_CKT_GEN.ENA_WITH_REG.ENA_dly_reg_D_reg ;
  input POR_A;
  input ram_rstreg_a;
  input [11:0]addra;

  wire [7:0]DOADO;
  wire [0:0]DOPADOP;
  wire POR_A;
  wire \SAFETY_CKT_GEN.ENA_WITH_REG.ENA_dly_reg_D_reg ;
  wire [11:0]addra;
  wire clka;
  wire ram_rstreg_a;

  blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized1 \prim_init.ram 
       (.DOADO(DOADO),
        .DOPADOP(DOPADOP),
        .POR_A(POR_A),
        .\SAFETY_CKT_GEN.ENA_WITH_REG.ENA_dly_reg_D_reg (\SAFETY_CKT_GEN.ENA_WITH_REG.ENA_dly_reg_D_reg ),
        .addra(addra),
        .clka(clka),
        .ram_rstreg_a(ram_rstreg_a));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_0_blk_mem_gen_prim_width__parameterized2
   (p_7_out,
    rsta_busy,
    ENA_dly_reg,
    clka,
    ENA_I,
    POR_A,
    ram_rstreg_a,
    addra,
    ram_rstreg_a_busy,
    rsta);
  output [8:0]p_7_out;
  output rsta_busy;
  output ENA_dly_reg;
  input clka;
  input ENA_I;
  input POR_A;
  input ram_rstreg_a;
  input [10:0]addra;
  input ram_rstreg_a_busy;
  input rsta;

  wire ENA_I;
  wire ENA_dly_reg;
  wire POR_A;
  wire [10:0]addra;
  wire clka;
  wire [8:0]p_7_out;
  wire ram_rstreg_a;
  wire ram_rstreg_a_busy;
  wire rsta;
  wire rsta_busy;

  FDSE #(
    .INIT(1'b0)) 
    \SAFETY_CKT_GEN.ENA_WITH_REG.ENA_dly_reg_reg 
       (.C(clka),
        .CE(1'b1),
        .D(POR_A),
        .Q(ENA_dly_reg),
        .S(rsta));
  FDRE \SAFETY_CKT_GEN.RSTA_BUSY_WITH_REG.RSTA_BUSY_reg 
       (.C(clka),
        .CE(1'b1),
        .D(ram_rstreg_a_busy),
        .Q(rsta_busy),
        .R(1'b0));
  blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized2 \prim_init.ram 
       (.ENA_I(ENA_I),
        .POR_A(POR_A),
        .addra(addra),
        .clka(clka),
        .p_7_out(p_7_out),
        .ram_rstreg_a(ram_rstreg_a));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_0_blk_mem_gen_prim_width__parameterized3
   (douta,
    POR_A,
    ram_rstreg_a,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    ENA_I,
    ram_rstreg_a_busy,
    ENA_I_0,
    clka,
    addra,
    ENA_dly_reg,
    rsta);
  output [1:0]douta;
  output POR_A;
  output ram_rstreg_a;
  output \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  output ENA_I;
  output ram_rstreg_a_busy;
  output ENA_I_0;
  input clka;
  input [13:0]addra;
  input ENA_dly_reg;
  input rsta;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire ENA_I;
  wire ENA_I_0;
  wire ENA_dly_reg;
  wire ENA_dly_reg_D;
  wire POR_A;
  wire \SAFETY_CKT_GEN.POR_A_i_1_n_0 ;
  wire \SAFETY_CKT_GEN.RSTA_SHFT_REG_reg[3]_srl3_n_0 ;
  wire \SAFETY_CKT_GEN.RSTA_SHFT_REG_reg_n_0_[0] ;
  wire \SAFETY_CKT_GEN.RSTA_SHFT_REG_reg_n_0_[4] ;
  wire [13:0]addra;
  wire clka;
  wire [1:0]douta;
  wire ram_rstreg_a;
  wire ram_rstreg_a_busy;
  wire rsta;

  FDRE #(
    .INIT(1'b0)) 
    \SAFETY_CKT_GEN.ENA_WITH_REG.ENA_dly_reg_D_reg 
       (.C(clka),
        .CE(1'b1),
        .D(ENA_dly_reg),
        .Q(ENA_dly_reg_D),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \SAFETY_CKT_GEN.POR_A_i_1 
       (.I0(\SAFETY_CKT_GEN.RSTA_SHFT_REG_reg_n_0_[4] ),
        .I1(\SAFETY_CKT_GEN.RSTA_SHFT_REG_reg_n_0_[0] ),
        .O(\SAFETY_CKT_GEN.POR_A_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \SAFETY_CKT_GEN.POR_A_reg 
       (.C(clka),
        .CE(1'b1),
        .D(\SAFETY_CKT_GEN.POR_A_i_1_n_0 ),
        .Q(POR_A),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \SAFETY_CKT_GEN.RSTA_BUSY_WITH_REG.RSTA_BUSY_i_1 
       (.I0(ENA_dly_reg_D),
        .I1(rsta),
        .I2(POR_A),
        .I3(ENA_dly_reg),
        .O(ram_rstreg_a_busy));
  FDRE #(
    .INIT(1'b0)) 
    \SAFETY_CKT_GEN.RSTA_SHFT_REG_reg[0] 
       (.C(clka),
        .CE(1'b1),
        .D(1'b1),
        .Q(\SAFETY_CKT_GEN.RSTA_SHFT_REG_reg_n_0_[0] ),
        .R(1'b0));
  (* srl_bus_name = "U0/\inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[4].ram.r/SAFETY_CKT_GEN.RSTA_SHFT_REG_reg " *) 
  (* srl_name = "U0/\inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[4].ram.r/SAFETY_CKT_GEN.RSTA_SHFT_REG_reg[3]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SAFETY_CKT_GEN.RSTA_SHFT_REG_reg[3]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clka),
        .D(\SAFETY_CKT_GEN.RSTA_SHFT_REG_reg_n_0_[0] ),
        .Q(\SAFETY_CKT_GEN.RSTA_SHFT_REG_reg[3]_srl3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \SAFETY_CKT_GEN.RSTA_SHFT_REG_reg[4] 
       (.C(clka),
        .CE(1'b1),
        .D(\SAFETY_CKT_GEN.RSTA_SHFT_REG_reg[3]_srl3_n_0 ),
        .Q(\SAFETY_CKT_GEN.RSTA_SHFT_REG_reg_n_0_[4] ),
        .R(1'b0));
  blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized3 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .ENA_I(ENA_I),
        .ENA_I_0(ENA_I_0),
        .ENA_dly_reg_D(ENA_dly_reg_D),
        .\SAFETY_CKT_GEN.POR_A_reg (POR_A),
        .addra(addra),
        .clka(clka),
        .douta(douta),
        .ram_rstreg_a(ram_rstreg_a),
        .rsta(rsta));
endmodule

module blk_mem_gen_0_blk_mem_gen_prim_wrapper_init
   (douta,
    clka,
    POR_A,
    ram_rstreg_a,
    addra);
  output [0:0]douta;
  input clka;
  input POR_A;
  input ram_rstreg_a;
  input [13:0]addra;

  wire POR_A;
  wire [13:0]addra;
  wire clka;
  wire [0:0]douta;
  wire ram_rstreg_a;
  wire [15:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED ;
  wire [15:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED ;
  wire [1:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED ;
  wire [1:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB18E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h000003FFFFFFFFFFFFFFFFF3800010FFFFFFFFFFFFFFFFFFFB6FA7FFFFFFFFFF),
    .INIT_01(256'hFFFFFFFFFF60002150007FFFFFFFFFFFFFFD8000000033FFFFFFFFFFFFFFF800),
    .INIT_02(256'hAFFFFFF50007FFFFFFFFFFF4010FFFFF0002FFFFFFFFFFFFC80101F750017FFF),
    .INIT_03(256'h0FFFFFFFFFF00C3FFFFFFFFB01FFFFFFFFFFA712FFFFFFFF083FFFFFFFFFFF00),
    .INIT_04(256'h43F1FFFFFFFF9712FFFFFFFFC077EFFFFFFFFCC81FFFFFFFFE00A7FFFFFFFF84),
    .INIT_05(256'hF49A07FFFFFFD02BFFFFFFFFFF4900BFFFFFFE813FDFFFFFFFF7310FFFFFFFF8),
    .INIT_06(256'hF02FFFFFFFFFFFFFECC17FFFFF04FFFF3FFFFFFFF0C90FFFFFFE09F3FFFFFFFF),
    .INIT_07(256'hFFFFFF1033FFFFE0CFFFFBFFFFFFFFBF927FFFFE0DFF873FFFFFFFF1B407FFFF),
    .INIT_08(256'hFFB841FF4F9FFFFFFFD77900FFFFC27FF3FC7FFFFFFE28A01FFFF80DFF0FFFFF),
    .INIT_09(256'h1D9FFFB0098587FFF07FD400000EFFFCF80054FFFF094FF2037FFFFFF7200C87),
    .INIT_0A(256'h183FF82FF533FE0AFFFF812FD881FF62FF604FD036FFF15CF29A3FFE1FFE41C0),
    .INIT_0B(256'h07FD09FFF4003F2E17F07FF8807FE0EFFB0807FE41FF14FFC00FFC5AFFB7017F),
    .INIT_0C(256'h0FFE98BE2C3E000FFF83FF60003FEC4EF2CFF110FFF06FFE9007FE107F09FF40),
    .INIT_0D(256'hD185FFFE3FF6900FFE317E1E3E101FFFC3FF6101FFEB03C1D3F0017FFC7FF480),
    .INIT_0E(256'hFAFFFFF3A3C0FF93FFFFFC3FFE9FFFFE181C16F91A7FFFD7FFE1C7FFF1C1C367),
    .INIT_0F(256'h35511FFFFFE7FFE0FFFFFAE3814F91FFFFFC6FFE8FFFFE26580FF91FFFFFE6FF),
    .INIT_10(256'h2FF51FFFFEAC087DFD3FFFFFC6FFA1FFFFE3E1835D37FFFFFE3FF2AFFFFF3C18),
    .INIT_11(256'hF00EFB70000000BFF2B000082E187FBE01000003FFF9000060D08BFFD1FFFFFE),
    .INIT_12(256'hFFFFFFFFFFFFFFF10ECA5BFFFFF9FFF65FFFF38C18EEA70000000DFFA4000005),
    .INIT_13(256'hFF8E184FFFFE0000FF00E00000F9E18EFFFBCFFFFFFFFFFFFFFEBE10CFFF03FF),
    .INIT_14(256'hFFFFFFFFFFFFFFF3CD102DFF3FFFFFFFFFFFFFFFF9E004DFFFFFFFFFFFFFFFFF),
    .INIT_15(256'h000018E18BFFF0A000000000000009CC003FFF01000000001FFFFF34C18B7FF6),
    .INIT_16(256'hFE3BFFFFFFFFFFFFFCD3C087DFF80000000000000000AC1879FF220000000000),
    .INIT_17(256'h0000009FFA381BFFA4000000000000044BA181FFEB1000000000000047F8387F),
    .INIT_18(256'hC05FF21000000000000010A81C1DFE2500000000000099FF0181FFE240000000),
    .INIT_19(256'h0000000038EC07E0EF90600000000000010CF03C3FF906000000000000312643),
    .INIT_1A(256'hC1FF2FFF9400000000000006790FE03FC0C00000000000008E88FC1BF8060000),
    .INIT_1B(256'h0000000000005000FF87FF1000000000000003FA1FE0FFF9000000000000026F),
    .INIT_1C(256'h07E97FFC0ACCC0011C510000517C93FFC38DC20006180400588FFC1FF03FF090),
    .INIT_1D(256'h944B0B884800044390FFFD0942204CDF82000400FC2FFFC05AF0414101010020),
    .INIT_1E(256'h000FEB3FFFF40FF8A3C78E4A00007882FFFF04FC91438F394000C6A41FFFE47F),
    .INIT_1F(256'hE01DB0F983FC20CC57207FFFFC15562267FE7701A17603FFFFC07F45A1171A20),
    .INIT_20(256'hA7D008005FFFFFF88662300EEB903161C3FFFFFF00988426E3693509290FFFFF),
    .INIT_21(256'hFFFFF133B40F8F41D13641FFFFFFFC35918157FDC281F20BFFFFFFC16BB6266E),
    .INIT_22(256'hE0C00883C0FFFFFFFFFC03FD8009D809EA03FFFFFFFF40F7901483A215489FFF),
    .INIT_23(256'hFFFFFFFFFA4277FE791D5807FFFFFFFFFFD073BF008D94B02FFFFFFFFFC01FF4),
    .INIT_24(256'h002620FF8007FFFFFFFFFFFF010CF3F3F3886FFFFFFFFFFFFA05FEFE106701FF),
    .INIT_25(256'hFFFFFFFFFFFFFFC800000001FFFFFFFFFFFFFFF4000A7D00059FFFFFFFFFFFFD),
    .INIT_26(256'hFFFFFFFA65FFFFFFFFFFFFFFFFFFFFC000001FFFFFFFFFFFFFFFFFA0000000DF),
    .INIT_27(256'h000000000000000000000000000000000000000000000000000000000000FFFF),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram 
       (.ADDRARDADDR(addra),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED [15:1],douta}),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED [15:0]),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED [1:0]),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED [1:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b0),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(POR_A),
        .RSTRAMB(POR_A),
        .RSTREGARSTREG(ram_rstreg_a),
        .RSTREGB(ram_rstreg_a),
        .WEA({1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized0
   (\douta[8] ,
    \douta[9] ,
    clka,
    ENA_I,
    POR_A,
    ram_rstreg_a,
    addra);
  output [7:0]\douta[8] ;
  output [0:0]\douta[9] ;
  input clka;
  input ENA_I;
  input POR_A;
  input ram_rstreg_a;
  input [11:0]addra;

  wire ENA_I;
  wire POR_A;
  wire [11:0]addra;
  wire clka;
  wire [7:0]\douta[8] ;
  wire [0:0]\douta[9] ;
  wire ram_rstreg_a;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h000001FFFFFFFFFFFFFFFFF900000BFFFFFFFFFFFFFFFFFFFBB0D5FFFFFFFFFF),
    .INITP_01(256'hFFFFFFFFFF4001DFAC002FFFFFFFFFFFFFFE800000001FFFFFFFFFFFFFFFFB00),
    .INITP_02(256'h1FFFFFFF801FFFFFFFFFFFFC02BFFFFFF003FFFFFFFFFFFFD005BFFFD800BFFF),
    .INITP_03(256'h0FFFFFFFFFFC07FFFFFFFFFC01FFFFFFFFFF805FFFFFFFFF805FFFFFFFFFFE80),
    .INITP_04(256'h07FFFFFFFFFFFF82FFFFFFFF803FFFFFFFFFFFC03FFFFFFFFF01FFFFFFFFFFF8),
    .INITP_05(256'hFFFF03FFFFFFC0FFFFFFFFFFFFFFE03FFFFFFE01FFFFFFFFFFFFFC1FFFFFFFF4),
    .INITP_06(256'hE87FFFFFFFFFFFFFFFA1FFFFFF42FFFFFFFFFFFFFFF02FFFFFFC17FFFFFFFFFF),
    .INITP_07(256'hFFFFFFFF83FFFFE17FFFFFFFFFFFFFFFE87FFFFE0FFFFFFFFFFFFFFFFC07FFFF),
    .INITP_08(256'hFFF07FFFF0FFFFFFFFFF0FE1FFFF03FFFFFFFFFFFFFFFFFC0FFFFC2FFFFFFFFF),
    .INITP_09(256'h5FFFFFFC090307FFE0FFFE8003FFFFFFF801F07FFE0FFFFF08FFFFFFFFB0FF0F),
    .INITP_0A(256'h8C0FFC3FFE03FE8FFFFFF82FF2C3FF81FFFC3FA0FFFFFFC3FE3C1FFE0FFF8088),
    .INITP_0B(256'h0FFE3FFFFE003F860FF83FFC00FFE3FFFFD00FF8C1FF83FFD01FF87FFFFF007F),
    .INITP_0C(256'h07FE703F0FFF000FFF1FFFF8007FE30FE0FFFC007FF8FFFF8003FE70FE0FFF80),
    .INITP_0D(256'hE183FFFCFFFF180FFE383E1FFE200FFFC7FFF1807FE103C0FFF800FFF8FFFFC0),
    .INITP_0E(256'hF1FFFFE1C187FFE1FFFFFC7FFF0FFFFE3C383FFF38BFFFE3FFF9C7FFF3C3E1FF),
    .INITP_0F(256'h7FFE3FFFFFE7FFF1FFFFE1E1C7FFF3FFFFFC3FFFBFFFFF1E383FFF3FFFFFE7FF),
    .INIT_00(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_01(256'hFFFFFFFF766654BB33AA991188808088919AA2B344546576FFFFFFFFFFFFFFFF),
    .INIT_02(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_03(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_04(256'h880000000000000000000000000000000000000011AB556FFFFFFFFFFFFFFFFF),
    .INIT_05(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF77CDAA11),
    .INIT_06(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_07(256'h0000000000000000000000000000000000000088224466FFFFFFFFFFFFFFFFFF),
    .INIT_08(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF66BCA20000000000000000),
    .INIT_09(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0A(256'h00000000000000000000000000000000000088995577FFFFFFFFFFFFFFFFFFFF),
    .INIT_0B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFF77CC99000000000000000000000000000000),
    .INIT_0C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0D(256'h4AC1B1A09008800000000000000000000088BBEEFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0E(256'hFFFFFFFFFFFFFFFFEF33880000000000000000000000889128B1C14A4AD2D249),
    .INIT_0F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_10(256'hEB625AC931188800000000000000008833EEFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_11(256'hFFFF66338800000000000000000819B14A626AF2F3F3F3F2F2F2F2F2F2F2F2F2),
    .INIT_12(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_13(256'hF3F36B4A20800000000000000000BB77FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_14(256'h00000000000008A0D1E2F3F3F2F2F2EAEAEAF2F2EAEAEAEAEAEAEAEAF2F2F2F2),
    .INIT_15(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF77BB0000),
    .INIT_16(256'hF3EBC218000000000000001155FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_17(256'h18CAE2F3F2F2F2EAEAEAEAEAF2EAEAF2F2F2EAF2EAF2F2EAEAEAEAEAEBEAEAF2),
    .INIT_18(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCC1100000000000000),
    .INIT_19(256'hD2A00000000000000033EEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_1A(256'hEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAF2F2F2F2),
    .INIT_1B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE6AA00000000000008A8D1F3F3EAEB),
    .INIT_1C(256'h00000000000088DDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_1D(256'hEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAF2F2F2F2F2F35AA0),
    .INIT_1E(256'hFFFFFFFFFFFFFFFFFFFFFFFF5511000000000000A0D2F4F3F2F2EAEAEAEAEAEA),
    .INIT_1F(256'h00000000BBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_20(256'hEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAF2EAEAF2F3D2180000),
    .INIT_21(256'hFFFFFFFFFFFFFF3300000000000018D2F3F3F26AF2F2EAEAEAEAEAEAEAEAEAEA),
    .INIT_22(256'h00AA77FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_23(256'hEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAF2FA6A398800000000),
    .INIT_24(256'hFFEE2200000000008039F3FAEAF2F2F2F2EAEAEBEAEAEAEAEAEAEAEAEAEAEAEA),
    .INIT_25(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_26(256'hEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAF3EBEAEAF2EA6290880000000091E7),
    .INIT_27(256'h00000018E3F3EAEAEAF2EAEAEBF3F3EAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEA),
    .INIT_28(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEE110000),
    .INIT_29(256'hEAEAEAEAEAEAEAEAEAEAEAEAF3F2F2F2EBEBEAF2F3B1000000000011DDFFFFFF),
    .INIT_2A(256'hF2EAF2F2F2EAEAEAF2EAEAF2EAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEA),
    .INIT_2B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF668800000001803972),
    .INIT_2C(256'hEAEAEAEAEAEAEAEAEBEAF2EAEAF3EBEAF2F34A88000000008866FFFFFFFFFFFF),
    .INIT_2D(256'hEAEAEAEAEAF2F2EAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEA),
    .INIT_2E(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF668800000000004AFAF2F2EBEAF2),
    .INIT_2F(256'hEAEAEAEAEAEAEBEBF2F2F2F2EAF2FADA880000000088DDFFFFFFFFFFFFFFFFFF),
    .INIT_30(256'hF2EAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEA),
    .INIT_31(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFDD88000000001159F3EBEAEAEAF2EAEBEBEAF2),
    .INIT_32(256'hEAEAF2F2F2F2F2F2F2F2EAF3DA180000000011EFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_33(256'hEBEBEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEA),
    .INIT_34(256'hFFFFFFFFFFFFFFFFE7110000000090E2F2F2EAEAEAEAEAEAEAEAEAEAEAEAEAF2),
    .INIT_35(256'hEAEAF2F3F2F2F3EAFAE290000000009177FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_36(256'hEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEA),
    .INIT_37(256'hFFFFFFEE9100000000906BF3F2F2EAEAEAEAEAEAEAEAF2EAEAEAEAF2F2F2F2F2),
    .INIT_38(256'hF3EBEAF2F2F263180000000022FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_39(256'hEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAF2F2EAEAEBEBEBEA),
    .INIT_3A(256'h00000000906BF2F2EAEAEAEAEAEAEAEAF2F2EAEAF2F2F2EAEAEAEAEAEAEAEAEA),
    .INIT_3B(256'hEAF3FB591000000000BBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF22),
    .INIT_3C(256'hEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAF2EAEAEAEAEBEAEAF2EAF2F2),
    .INIT_3D(256'hE2FAEAEAEAEAEAEAEAEAEAEAEAEAF2F2EAEAEAEAEAEBEAEAEAEAEAF2EAEAEAEA),
    .INIT_3E(256'hDA8800000000DDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBB0000000010),
    .INIT_3F(256'hEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAF2F2EAEAEAEAEAEAF3EAEBEBE2FB),
    .INIT_40(256'hEAEAEAEAEAEAEAEAEBEBEBEBEAEAEAEAEAEAEAEAEAF2F2F2EAEAEAEAEAEAEAEA),
    .INIT_41(256'h000088EEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5500000000085BFAE9F3EA),
    .INIT_42(256'hEAEAEAEAEAEAEAEAEAEAEAEAEAEAF2EAEAEAF2F3F2F3EBF3F2EAF2EBFB4A0000),
    .INIT_43(256'hEAEAEAEAEAEAEAF2F2F2F2F2F2F2F2F2EAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEA),
    .INIT_44(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEE88000000804AFBF2F2EAEAEAEAEAEA),
    .INIT_45(256'hEAEAEAEAEAEAEAEAEAEAEAF2F3F3F36BE25A5A626AF2F2F2F2F3B18000000033),
    .INIT_46(256'hF2F2F36BE25A5A626BEBF3F2F2F2EAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEA),
    .INIT_47(256'hFFFFFFFFFFFFFFFFFF77FFFFAA00000000B1F3F2EAF3EAF2EAEAEAEAEAEAF2F2),
    .INIT_48(256'hEAEAEAEAEBEAF2F2F35AB090800000800829D2F3F2F2F3900000000055FFFFFF),
    .INIT_49(256'h800000000018C1DAF3F2F2EAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEA),
    .INIT_4A(256'hFFFFFFFFFFFFFFCC0000000098F3F2EAEBEAEBF2EAEAEAEAEAEAF2F26BD22890),
    .INIT_4B(256'hEAF2F2DAA000000000000000000000114AF3F2628000000088FFFFFFFFFFFFFF),
    .INIT_4C(256'h00000000A95BF3F2F2EBEBF2E9F2EAF3EAEAEAEAEAEAEAEAEAF2EAF2EAEAF3EB),
    .INIT_4D(256'hFFFF7F88000000886AEAF2F2F2F2EAEAEAF2EAF2EAF273C21100000000000000),
    .INIT_4E(256'h0000008899222299880000000039F3F23900000000BBFFFFFFFFFFFFFFFFFFFF),
    .INIT_4F(256'h0008C1F3F2EAEBEAF2EAF3EAEAEAEAEAEAEAEAEAEAEAF2F2EAF3EAEAF2F33900),
    .INIT_50(256'h00000041EAF2F2EAEAEAEAEAEAEAF2EAFB5A18000000008899AA222211000000),
    .INIT_51(256'hFFFFFFFF77559900000042FA729080000000EEFFFFFFFFFFFFFFFFFFFFFF3B00),
    .INIT_52(256'hEBF3EAEAEBF2F2EAEAEAEAEAEAEAEAEAF2EAF2EAEAEAEAEAFB28000000003377),
    .INIT_53(256'hF2F2F2EAEAEAF2EAEAEAEAF3D208000000885577FFFFFFFFFFEEC408000080A1),
    .INIT_54(256'hFFFF77BB0000085AFAD20000000033FFFFFFFFFFFFFFFFFFFF6600000000186B),
    .INIT_55(256'hEAEAF2EAEAEAEAEAEAEAEAEAEAEAEAEAF2EAF3F331000000000011C5FFFFFFFF),
    .INIT_56(256'hF2F2F2EAF2F2F35A800000000000BBFFFFFFFFFFFFFFFFEF33000000286BF2F3),
    .INIT_57(256'hA20000A072F31800000088EEFFFFFFFFFFFFFFFFFF2B00000000D2FBF2F2F2F2),
    .INIT_58(256'hEAEAEAEAEAEAEAEAEAF3EAF2EAF2F349000000000000000066FFFFFFFFFFFFFF),
    .INIT_59(256'hF2F2E3080000000000000033FFFFFFFFFFFFFFFFFF4C000000B0F3F2F2EAEAEB),
    .INIT_5A(256'h4AF25B80000000BBFFFFFFFFFFFFFFFF6F00000000A8F3EAEAEAEAF2F2F2F2EA),
    .INIT_5B(256'hEAEAEAEAEAF3EAF2EAF35B08000000000000000011FFFFFFFFFFFFFF7E900000),
    .INIT_5C(256'h000000000000000077FFFFFFFFFFFFFFFFFFDD00000052F3F2F2EAEBEAEAEAEA),
    .INIT_5D(256'h0000008877FFFFFFFFFFFFFF33000000805AF2EAF2EAEAEAEAEAEAF2F2F31800),
    .INIT_5E(256'hEAEAF2F2EAF3310000000000000000000066FFFFFFFFFFFFFFCC000018F3F3A0),
    .INIT_5F(256'h0000000055FFFFFFFFFFFFFFFFFF77CC00009063F2EAF3EAEAEAEAEAEAEAEAEA),
    .INIT_60(256'h55FFFFFFFFFFFFEE0000000028FBEAEAF2F2EAEAEAEAEAF2F3B9000000000000),
    .INIT_61(256'hF2E30000000000000000000000EEFFFFFFFFFFFFFFFF9900804AFBD100000000),
    .INIT_62(256'hCCFFFFFFFFFFFFFFFFFFFFFFA2000031F3F2EAF2EAEAEAEAEAEAEAEAF2EAF2EA),
    .INIT_63(256'hFFFFFFCC00000000D2F2EAEBEAEAF2F2F2EAF2F26B0800000000000000000000),
    .INIT_64(256'h00000000000000000077FFFFFFFFFFFFFFFF540000A9F3F21800000099FFFFFF),
    .INIT_65(256'hFFFFFFFFFFFFFFFF66000008F4F2F2EAEAEAEAEAEAEAEAEAF3F2E9EBFBA90000),
    .INIT_66(256'h00000020F2EAEBEAEAEBEAF2EAEAF2F3430000000000000000000000DDFFFFFF),
    .INIT_67(256'h00000000AAFFFFFFFFFFFFFFFFFF6E8800086BF2C10000008866FFFFFFFFFF11),
    .INIT_68(256'hFFFFFFFF7FA900004AF2EAEAEAEAEAEAEAEAEAEAF3EAEAEB6A90000000000000),
    .INIT_69(256'hF2EAEBF2EAEBEAF2EAEAF2EA10000000000000000000008877FFFFFFFFFFFFFF),
    .INIT_6A(256'hEEFFFFFFFFFFFFFFFFFFFF2200005AF2EB8000000044FFFFFFFF6600000000C1),
    .INIT_6B(256'hFF540000A0F3F2EAEAEAEAEAEAEAEAEAF3EAF2F35A0000111100000000000088),
    .INIT_6C(256'hEAEBEAF2EAEAF25A000011AA00000000000000CCFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_6D(256'hFFFFFFFFFFFFFF44000041F2F32000000021FFFFFFFFBB000000886BF2F2EAEB),
    .INIT_6E(256'h086BF2EAEAEAEAEAEAEAEAEAEBEAF2F3C10000BB7722000000002266FFFFFFFF),
    .INIT_6F(256'hEAF2F3C10000447733000000008855FFFFFFFFFFFFFFFFFFFFFFFFFFFF768800),
    .INIT_70(256'hFFFFFFE50000B1F2F249000000006FFFFFFF11000000A0FBEAF2F2EBEAEAEAF2),
    .INIT_71(256'hEAEAEAEAEAEAEAEAEAEAEAF3310000DDFFFF664444DDFFFFFFFFFFFFFFFFFFFF),
    .INIT_72(256'h000055FFFF66CC4455EEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9A008062F2EA),
    .INIT_73(256'h000029F2EA6B8000000055FFFFEE000000004AF2EAEAF2EBEAEAF2F2EAF2F3B0),
    .INIT_74(256'hEAEAEAEAEAEAEAF3A00000EEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6E),
    .INIT_75(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAB0000D2F2EAEAEAEAEA),
    .INIT_76(256'hEAF318000000AAFFFFCC0000000863F2F2EAEAEAEAEAF2EAEAF2F3A0000066FF),
    .INIT_77(256'hEAEAEAF2180088F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEE000018F2),
    .INIT_78(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBB000049F2EBEAEAEAEAEAEAEAEA),
    .INIT_79(256'h000011FFFF22000000A0F3EAF2F2EAEAEAF2F2EAEAEAF390000077FFFFFFFFFF),
    .INIT_7A(256'h900011FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF77000010F3EBF23100),
    .INIT_7B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFF440000C9F2EBEAEAEAEAEAEAEAEAEAEAF272),
    .INIT_7C(256'hFF11000000B9F3EAEAF2EBF2EAF2F2EAEAEAF390000877FFFFFFFFFFFFFFFFFF),
    .INIT_7D(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEE0000A0F3EAF2C90000000076),
    .INIT_7E(256'hFFFFFFFFFFFFFFFFFFFFC300004AF2EAEAEAEAEAEAEAEAEAF2EAF2F3180088FF),
    .INIT_7F(256'h00DAF2F2EAEAEAF2F3EAF2EAEBEAF310000077FFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\douta[8] }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\douta[9] }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ENA_I),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(POR_A),
        .RSTRAMB(POR_A),
        .RSTREGARSTREG(ram_rstreg_a),
        .RSTREGB(ram_rstreg_a),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized1
   (DOADO,
    DOPADOP,
    clka,
    \SAFETY_CKT_GEN.ENA_WITH_REG.ENA_dly_reg_D_reg ,
    POR_A,
    ram_rstreg_a,
    addra);
  output [7:0]DOADO;
  output [0:0]DOPADOP;
  input clka;
  input \SAFETY_CKT_GEN.ENA_WITH_REG.ENA_dly_reg_D_reg ;
  input POR_A;
  input ram_rstreg_a;
  input [11:0]addra;

  wire [7:0]DOADO;
  wire [0:0]DOPADOP;
  wire POR_A;
  wire \SAFETY_CKT_GEN.ENA_WITH_REG.ENA_dly_reg_D_reg ;
  wire [11:0]addra;
  wire clka;
  wire ram_rstreg_a;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h7FFF1FFFFE3F00FFFF3FFFFFC3FFF9FFFFE1F183FFE1FFFFFE7FFF0FFFFE3C00),
    .INITP_01(256'hE007FFF00000007FFFC000003F00FFFE1FFFFFCFFFF8FFFFE3E187FFE1FFFFFC),
    .INITP_02(256'hFFFFFFFFFFFFFFF08FFFFFFFFFFFFFFFFFFFFFFF18FFFFCFFFFFF7FFFFFFFFFB),
    .INITP_03(256'hFFFF007FFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFF08FFFFFFFF),
    .INITP_04(256'hFFFFFFFFFFFFFFFFFE18FFFFFFFFFFFFFFFFFFFFFFF18FFFFFFFFFFFFFFFFFFF),
    .INITP_05(256'h00000FF10FFFFDFFFFFFFFFFFFFFFFFF107FFFFFFFFFFFFFFFFFFFFFF08FFFFF),
    .INITP_06(256'hFF9EFFFFFFFFFFFFFC7FC00FFFFC000000000000090FFE187FFF800000000000),
    .INITP_07(256'h0000009FFC1C3FFF90FFFFFFFF00000CFFE307FFF80000000000000047FE183F),
    .INITP_08(256'h83FFE3100000000000008FFC385FFF3000000000000001FFA183FFF100000000),
    .INITP_09(256'h0000000011FF03E3FFE2000000000000013FF07E3FFE2400000000000008FF87),
    .INITP_0A(256'hE0FE07FF9200000000000003FF0FF0FFF0200000000000021FF0FC1FFE220000),
    .INITP_0B(256'h000000000004FFC1FF03FF9000000000000007FE1FF0FFF8000000000000047F),
    .INITP_0C(256'h3FF07FFC1FFCC8009DB1000051FF81FF81FF840404380000448FFC3FF07FF980),
    .INITP_0D(256'hF30BFFFFF800043FE07FFE0FFE006FFFF2000005FE07FFE0FFC241DFFDC10001),
    .INITP_0E(256'h091FF43FFFF03FFCC7FFFFF600197FC2FFFF03FF983FFFFEC006CFFC0FFFE07F),
    .INITP_0F(256'hE0FFE17FFFFFE08C3FF07FFFFE17FC3FFFFFFF0023FE87FFFFC2FFC4FFFFFFE0),
    .INIT_00(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF65000030FAF2F25A8000000065EE000000),
    .INIT_01(256'hFFFFFFFFFFFF3300004AFAEAEAEAEAEAEAEAEAEAEAEBF2F3200000F7FFFFFFFF),
    .INIT_02(256'hEAF2EAF2EAEAF2EAEBF2F3180000EEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_03(256'hFFFFFFFFFFFFFFFFFFFFFFCD0080C1F2EAF2620800000054DD0000000062F2EA),
    .INIT_04(256'hFFFF2200805AF2EAEAEAEAEAEAEAEAEAEAEBEAF3310000DDFFFFFFFFFFFFFFFF),
    .INIT_05(256'hEAEAF2EAEAF2F3280000DDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_06(256'hFFFFFFFFFFFF77AB0000D2EBEAF2EB9000000044CC000000086AF2EAEAF2EAEA),
    .INIT_07(256'h806BF2F3EAEAEAEAEAEAEAEAF3EAEAF2410000C3FFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_08(256'hEAF2F3B9000044FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7E9000),
    .INIT_09(256'h1910990000886BFBF2F2F3A000000033BB00000018F3F2EAF2F2F2EAEAEAF2EA),
    .INIT_0A(256'hEAEAEAEAEAEAEAEAEAEAF2F2D200008811111111111111111111111111111111),
    .INIT_0B(256'h0000881111111199111111111111111111111111111111111211000098F3F2EA),
    .INIT_0C(256'h0020F3EAF2EAF2B1000000A2AA00000029F2F2EAF2EAF2EAF2EBF2F2EAEAF252),
    .INIT_0D(256'hEAEAEAEAF2F2F2EB6B0800000000000000000000000000000000000000000000),
    .INIT_0E(256'h00000000000000000000000000000000000000000100000039F3F2F2EAEAEAEA),
    .INIT_0F(256'hEAEAF2C10000001A22000000B9F2EAF3F2EAF2EAEAEBEAF2F3EAF2EA88000000),
    .INIT_10(256'hEAEAEAF3EB288888080808080808080808080808080808080808080808C1F3EA),
    .INIT_11(256'h0808080808080808080808080808080808080888E2FAEAEAEAEAEAEAEAEAEAEA),
    .INIT_12(256'h000000919900000049F2EAEBEAF2F2EBEAEBEAF2F3EAF2F2B290888808080808),
    .INIT_13(256'hF26A6B6AEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEA6B6AEA6B6BF3F2EAEAEAF24A),
    .INIT_14(256'hEAEAEAEAEAEAEAEAEAEAEAEA6A6AEBE3F2E9EAEBEAEAEAEAEAEAEAEAEBF2EAEA),
    .INIT_15(256'h11000000C9F2EAEBF2F2EAEBF2EBEAEAF3EAEAF2F26AEA6AEA6A62EAEAEAEAEA),
    .INIT_16(256'hF2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2EAEAF2EAF2EAF24900000088),
    .INIT_17(256'hF2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2EAEAEAEAEAEAEAEAEAEAEAEAF2F2F2F2),
    .INIT_18(256'hD1F2F2EBEAF2EAF2EAEAEAEAEAEAEAEAF3EBEBEBEBF3F2F2F2F2F2F2F2F2F2F2),
    .INIT_19(256'hEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAF3EAEBEAEAEAEAF2D20000008011000000),
    .INIT_1A(256'hEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAF2F2F2F2F2F2EAEAEAEA),
    .INIT_1B(256'hEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAF2F2EAEAEAEAEAEAEAEAEAEAEAEAEAEAEA),
    .INIT_1C(256'hEBEBEBEBEBEBEBEBEAF2EAF2EAEAEAF2F2EAF2D20000008088000000D1F2F2EB),
    .INIT_1D(256'hEAEAEAEAEAEAEAEAEBEBEBEBEBEBEBEBEAEAEAEBEBEBEBEBEBEBEBEBEBEBEBEB),
    .INIT_1E(256'hEAEAEAEAEAEAEAEAEAEAEAF2EAEAEAEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEB),
    .INIT_1F(256'hF2F2F2F2EAEAEAEAF2F2F2F2F2EAF24A000000888800000052F2EAEBEAEAEAEA),
    .INIT_20(256'hF2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2),
    .INIT_21(256'hEAEAEAEAEAF2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2),
    .INIT_22(256'hEAEAEAEAEAEBF3EAF2F2F24A0000001111000000D2F2EAEBEAEAEBEAEAEAEAEA),
    .INIT_23(256'hF2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2EAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEA),
    .INIT_24(256'hEBEBEAEAEAF2F2EAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAF2F2F2F2F2F2F2F2),
    .INIT_25(256'hEAEAEBF3EAF2F3C10000009911000000CAF3EAEBEAF2F3F2EAEAEAEAEAEAEAEA),
    .INIT_26(256'hEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAF2F2F2F2),
    .INIT_27(256'hEAEAF2EAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEA),
    .INIT_28(256'hEAEAF3B1000000AA9900000041F3F2EAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAF3),
    .INIT_29(256'hEBEBEBEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEA6B6B6A6AF3F2EAF2),
    .INIT_2A(256'hF3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3EBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEB),
    .INIT_2B(256'h0000003322000000B9F3F2EAEAEAEAEAEAEAEAEAEAEAEAEAF2F26AEBEBEBF3F2),
    .INIT_2C(256'h1010101010101010101010101010101010101010888890B06BF3EAEAF2EAF328),
    .INIT_2D(256'h9090909090909090909090909090909090909090909090909090909090909090),
    .INIT_2E(256'hAA000000B0F3F2EAF2F2EAEAEAEAEAEAEAEAEAEAF44A18909090901090909090),
    .INIT_2F(256'h00000000000000000000000000000000000000A0F3F2EAEBEAEAF291000000BB),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h19F2F2EAEAF3EAEAEAEAEAEAEAF2EAEAF3200000000000000000000000000000),
    .INIT_32(256'h00000000008080008000000008080828EAF2F2EBEAF26A880000004CBB000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'hEAEAEAEAEAEAEAEAEAF2EAF26208000080808080000000000000000000000000),
    .INIT_35(256'h89098989110000005A6B6B6AF3EAEAEAEAF2620000000066CC000000086AF2EA),
    .INIT_36(256'h8989898989898989898989898989898989898989898989898989898989898989),
    .INIT_37(256'hEAEAEAEAEAEAEAF3D20000801192890989898989898989898989898989898989),
    .INIT_38(256'h12000000E2F2F2F2EAEAF2F2EAF34A0000000076DD00000080E2F2EAEAEAF2EA),
    .INIT_39(256'h8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A0A0A8A8A),
    .INIT_3A(256'hEAEAF2F3B90000810A0A0A898A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A),
    .INIT_3B(256'hE2F2EAEAEAEBEAEAEAF3B100000011FFEE00000000D2F3EAEAF2F2EAEAEAEAEA),
    .INIT_3C(256'h8A8A8A8A8A8A8A8A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A828A000000),
    .INIT_3D(256'h9800800A0A098A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A),
    .INIT_3E(256'hEAEAEAF2F2F318000000AAFFFF110000003AF3F2EAF3EAEAEAEAEAEAEAEAF2F2),
    .INIT_3F(256'h0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A09800010EAF2EAEA),
    .INIT_40(256'h0A09120A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A),
    .INIT_41(256'hF3E208000000CDFFFF22000000A1F3F2EAF2EAF2EAEAEAF2EAEAF2EA8800808A),
    .INIT_42(256'h0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A090A0A1289000021F2F2EAF2F2F2EAEA),
    .INIT_43(256'h0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A),
    .INIT_44(256'h000077FFFFCC00000008E2F2EAEAEBEAEAEAEAF2EAF2F2620000008A8A09120A),
    .INIT_45(256'h0A0A0A0A0A0A0A0A0A0A0A0A8A0A0A128100003AF2EAF3F3EAEAF2EBF2510000),
    .INIT_46(256'h0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A),
    .INIT_47(256'hFFEE00000000D1F2EBEAF3EAEAEAEAF2EAF2F2D90000008A8A8A0A8A0A0A0A0A),
    .INIT_48(256'h0A0A0A0A0A0A0A0A0A0A0912000000D2F3EAF2F3F3EAF2EBF3A00000009AFFFF),
    .INIT_49(256'h0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A),
    .INIT_4A(256'h000028F2F2EAF2EAEAF2EAEAEAF3F3D9000000120289110A0A0A0A0A0A0A0A0A),
    .INIT_4B(256'h0A0A0A0A0A0A8A09800098EBF2F2EAF3EAF2F2EAE388000000BCFFFFFFFF1100),
    .INIT_4C(256'h0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A),
    .INIT_4D(256'hEAF2EAF3EAF2EAF2EAF3F3D9000000128A09110A0A0A0A0A0A0A0A0A0A0A0A0A),
    .INIT_4E(256'h0A0A9280000039F3EAF2EAEBEAF2F2F3CA0000000066FFFFFFFFBB00000008EB),
    .INIT_4F(256'h0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A),
    .INIT_50(256'hEAF2EAF2EAEBF3E2000000128A09890A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A),
    .INIT_51(256'h0000E2F2EAEAEAEBF2F2EAF31800000099FFFFFFFFFF6600000000D2F2F2EAEA),
    .INIT_52(256'h0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A8A8A80),
    .INIT_53(256'hEAEAF3628800800A89098A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A),
    .INIT_54(256'hEBEAEAEAEAEAF3D10000000054FFFFFFFFFFFF11000000A1F3F2EAEAEAF2EAF2),
    .INIT_55(256'h0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A1201000018F2F2),
    .INIT_56(256'h100080898A098A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A),
    .INIT_57(256'hEAF2FCA0000000007FFFFFFFFFFFFFCC000000805AF2EAF2EAF2EAEAEAEAF2EA),
    .INIT_58(256'h0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A8A800000D2F2F2EAEAEAEA),
    .INIT_59(256'h0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A),
    .INIT_5A(256'h00000033FFFFFFFFFFFFFF770000000028FBEAEAEAEAEAEAEAEAF2F228000089),
    .INIT_5B(256'h0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A01000020F3EAEAEAF2EAF2F2F3D288),
    .INIT_5C(256'h0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A),
    .INIT_5D(256'hFFFFFFFFFFFFFFFFAA000000885AF2EAEAEAEAEAF2EAF2F24A0000800A0A0A0A),
    .INIT_5E(256'h0A0A0A0A0A0A0A0A0A0A0A0A0A0000004AFAEBEAF3EAEAEAF2F3A0000000006F),
    .INIT_5F(256'h0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A),
    .INIT_60(256'hFFFFFFFFEE0000000028F2EAEAEAEAEAF2EAEAF263080000890A0A090A0A0A0A),
    .INIT_61(256'h8A8912090992128A08800018F2F2EAF2EAEAF2EAF2D18000000033FFFFFFFFFF),
    .INIT_62(256'h0A0A0A0A0A81010A0A0A8A81810A8A0A0A0A0A120A090A0A0A0A0A0A0A0A0A0A),
    .INIT_63(256'hFFAA0000008052F2EAF3EAF2EAEBEBF1F2A00000098A890A120A8A0A0A8A0A0A),
    .INIT_64(256'h12891289000000DAF3EAEAEAF2EAEBEAF31800000000EEFFFFFFFFFFFFFFFFFF),
    .INIT_65(256'h2334C54D4D4DC5B423128A810A0A0A810A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A),
    .INIT_66(256'h0000A0EBEAF3F2EAF2EAF3EAF249000000910A0A8A120A0A0A0A0A0A0A0A0A12),
    .INIT_67(256'h000029F3F3EAEAEAEAEAEAF33900000000BBFFFFFFFFFFFFFFFFFFFFFFDD0000),
    .INIT_68(256'hE7E7E7E7E7563D2B8A8A0A0A0A0A0A890A0A0A0A0A0A0A0A0A0A010A0A0A1281),
    .INIT_69(256'hF3EAF3EAF2EAEAEBEAF3180000098A8A0A890A0A0A0A0A818A23C5D6E7E7E7DE),
    .INIT_6A(256'hEAEAF2EAF2EAF2E38000000088FFFFFFFFFFFFFFFFFFFFFFFFFF3300000000C2),
    .INIT_6B(256'hE6E7E7E7C59B890A0A0A0A0A0A0A0A0A0A0A0A0A0A090A0A8A0A09000008E3EA),
    .INIT_6C(256'hEAF2EAEBEAFBD2000000890A0A920A0A8A818AA34DDEE7E7DEE6E7E6E6E6E6DE),
    .INIT_6D(256'hEAF272A000000000CCFFFFFFFFFFFFFFFFFFFFFFFFFF7708000000885AF3EAEA),
    .INIT_6E(256'hE7D6AC8A810A0A0A0A0A0A0A0A0A0A0A0A120A028A09800000C9F3F3EAEAF2EA),
    .INIT_6F(256'hEAEAF330000000920A090A0A8112BCDEE7E7E7E7DEE7DEDEE6E7E7E7DEE7E7E7),
    .INIT_70(256'h000000AAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4C00000000A0EBF2EAEAF2F2EA),
    .INIT_71(256'h92890A0A0A0A0A0A0A0A0A0A0A8A8A0A09000000296AF2EBF2F2EAEBEBFA3900),
    .INIT_72(256'h90008080920A0A09123CE7E7E7E7DEDEDEDFDFDFDEDEDEDEE7DFDEDEDEE7E73C),
    .INIT_73(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF220000000039F3FBEAEAEAEAEAEAF26B),
    .INIT_74(256'h0A0A0A0A0A0A0A0A0A0A0A9281000010E3F2F2E2F2F2EAEBF34A8000000010E6),
    .INIT_75(256'h8092090AC5E7E6DEDEDEE7E7E7DEDEDEDEE7E7E7DEDEDEE7E75EE7E73C92818A),
    .INIT_76(256'hFFFFFFFFFFFFFFFFFFFFFFFFEE88000000884AF3EAEAEAF2EAEAF2F2D2080000),
    .INIT_77(256'h0A0A0A0A8A8A0A81000088D4FAEAEAF2EAF2F2EBE1000000000055FFFFFFFFFF),
    .INIT_78(256'hDEE7DEDFE7E7E7DEE7E7E7E6E7DEDEDEE7E7E7E6DEE75EE7E7B4818A0A0A0A0A),
    .INIT_79(256'hFFFFFFFFFFFFFFFFFF540000000008E2F2EAEAEAEAEAEAEAFB4A000000800ABC),
    .INIT_7A(256'h891200000000CAF2F2EAEAEAEAF2EAE2110000000033FFFFFFFFFFFFFFFFFFFF),
    .INIT_7B(256'hDFDEDEE7E7DEDEDEDEDEE6E6E6E6E6E7E7E6E6DEE7DE23890A0A0A0A0A0A0A0A),
    .INIT_7C(256'hFFFFFFFFFFFF330000000098E3F2EAEAEAEAF3F2F2F2C18000000034E7DFDEE7),
    .INIT_7D(256'h00C9F3EAEBEAEAEAEAF26B900000000022FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_7E(256'hDEE7E7DFE7E7E6DEE6DEDEE6DEDEE7E7E7E745120A0A0A0A89090A8A92808000),
    .INIT_7F(256'hFFFFFF2200000000986BF3E9F2F2EAF2EAF3F3C1000000002BDEEFDEDEE7E7DE),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],DOADO}),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],DOPADOP}),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\SAFETY_CKT_GEN.ENA_WITH_REG.ENA_dly_reg_D_reg ),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(POR_A),
        .RSTRAMB(POR_A),
        .RSTREGARSTREG(ram_rstreg_a),
        .RSTREGB(ram_rstreg_a),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized2
   (p_7_out,
    clka,
    ENA_I,
    POR_A,
    ram_rstreg_a,
    addra);
  output [8:0]p_7_out;
  input clka;
  input ENA_I;
  input POR_A;
  input ram_rstreg_a;
  input [10:0]addra;

  wire ENA_I;
  wire POR_A;
  wire [10:0]addra;
  wire clka;
  wire [8:0]p_7_out;
  wire ram_rstreg_a;
  wire [15:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED ;
  wire [15:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED ;
  wire [1:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED ;
  wire [1:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB18E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .INITP_00(256'hFF883FF81FFFFFF02FFE2FFFFFF850FF40FFFFFE87FFC1FFFFFF2107FA17FFFF),
    .INITP_01(256'hFFFFF01FFA0FFFFFC3FFC0FFFFFFFC0FFF42FFFFF303FF03FFFFFFC17FF07FFF),
    .INITP_02(256'h000001FF80FFFFFFFFF803FF9006E037FC01FFFFFFFF407FE002FF701FF02FFF),
    .INITP_03(256'hFFFFFFFFF803FFFFC3FFFC01FFFFFFFFFF80BFFFB87AFFC01FFFFFFFFFF00FFF),
    .INITP_04(256'h004BFFFDA00BFFFFFFFFFFFFC03BFFFFFF403FFFFFFFFFFFE007FFFFFFFF007F),
    .INITP_05(256'hFFFFFFFFFFFFFFE8000000013FFFFFFFFFFFFFF0003B9D4002FFFFFFFFFFFFFC),
    .INITP_06(256'hFFFFFF539CAFFFFFFFFFFFFFFFFFFF1000008FFFFFFFFFFFFFFFFFB0000000DF),
    .INITP_07(256'h000000000000000000000000000000000000000000000000000000000000FFFF),
    .INIT_00(256'hEBEBF2F2FAEB900000000011EEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_01(256'hDEDEDEE7E7E7DEE6E7E6DEE7DEE7DF2B0A0A89090A0912898100000041FBEAEA),
    .INIT_02(256'h0900000080986BF2EAEAF2F2EAEBF3F34A080000001145E7E7E75EE7E7DEDEE7),
    .INIT_03(256'h62900000000088EEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEE),
    .INIT_04(256'hDEDEDEE7DEE75EE6DEE7E74D8A0A8A8A0A928900000000C1FBEAF2EAEBEAF2FA),
    .INIT_05(256'h000098EBF3EAF2EAEAF2F2EAF3D298000000002BD6E7E7DFE7E7E7E7DEDEDEE7),
    .INIT_06(256'h008866FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE6000000),
    .INIT_07(256'hDEE7E6E7E7DEE6E61A090A928A01800000884AF3EAF3EBEAEAF2FBD310000000),
    .INIT_08(256'hE3F3EAEAF2EAEAEAEAF36A28000000000934DEE7E7DEDEDFE7E6DEE7E6DEDEE7),
    .INIT_09(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDD000000000010),
    .INIT_0A(256'hDEE6E7EF2C0A098180000000185AF3F2EAEAF2EAFAF34A08000000008866FFFF),
    .INIT_0B(256'hEAEBF3EAEBEAF2F2C1100000008091B356EFE7DEE7E6DEDEE6E6E6DEE6DEE7E6),
    .INIT_0C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF66000000000008D2F3F2),
    .INIT_0D(256'h33800000000008B063F3F2EAF3EAEAF373B1800000000088DDFFFFFFFFFFFFFF),
    .INIT_0E(256'hEAF3EAEAF3E2B100000000000022C45EE6E7E7E7E6E6DEDEE7DEE7E7E7EFE766),
    .INIT_0F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDD000000000080416BF3EBEAEA),
    .INIT_10(256'h00A95BF3F2EAEBF2EAF2F36218000000000011E7FFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_11(256'hEAF3F3E2AA80000000000008922BC5D6DEE7E7E7E7E7DE5ED53C220100000000),
    .INIT_12(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF66100000000000A0E2F2F2EAEBEAEAF2),
    .INIT_13(256'hEAEAEAF2FA734188000000000022EEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_14(256'hF26239980000000000000000881199199999118800000000000008B15AF3F3EA),
    .INIT_15(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFEE22000000000088C2F3F2EAEAEAF2EAF2F3EA),
    .INIT_16(256'hD220000000000000BBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_17(256'h5A391888000000000000000000000000000000881842E3FBF2F2EAEAF2F2F2F3),
    .INIT_18(256'hFFFFFFFFFFFFFFFFFFFF7733000000000000A052F2F2EAEAEAEAEAF2F2F2F3EB),
    .INIT_19(256'h00008855FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_1A(256'hD342299008808080880808902841DAEAF2F3F3F2F2F2EBEBF2FB5AA800000000),
    .INIT_1B(256'hFFFFFFFFFFFFFFFF4C880000000000802862FBF2F2F2EAEAEBEBEAF2F2F2EA6A),
    .INIT_1C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_1D(256'h736AE2E2E9EA6AF2F3F3F3EAEAEAEAEAEBEBF3F2D22980000000000000AAEEFF),
    .INIT_1E(256'hFFFFFFFFFF66AA0000000000008828DAF3F2EAF2EAF2F2F2EAEAEAF2F2F2F2F3),
    .INIT_1F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_20(256'hF3F3F3EAEAEAEAEAEAEAF2F3F36A49280000000000000088CCFFFFFFFFFFFFFF),
    .INIT_21(256'hFFFFFF4C0800000000000000A1D26BF2F2F2F2EAF2F2F2EAEAEAEAEAEAF2F2F3),
    .INIT_22(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_23(256'hEAF2F2F2F3F36A49A0080000000000000000BB77FFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_24(256'h773B00000000000000000829C9E2F3F3F2F2EAEAEBEBEAEAEAEAEAEAEBEBEAEA),
    .INIT_25(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_26(256'hB9A1080000000000000000882BE6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_27(256'h00000000000000000008A03952E26AF3F3F3F2F2F2F2F2F2F2F2FAFAF26AE2D1),
    .INIT_28(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF66AA),
    .INIT_29(256'h00000000000833E6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_2A(256'h000000000000000000000898B03949CAD25252D2494139281808800000000000),
    .INIT_2B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEEAA0000),
    .INIT_2C(256'hCCEEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000099),
    .INIT_2E(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF774499000000),
    .INIT_2F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_30(256'h00000000000000000000000000000000000000000000000099BB66FFFFFFFFFF),
    .INIT_31(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF66BB1100000000),
    .INIT_32(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_33(256'h00000000000000000000000000000000112244EEFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_34(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEECC221100000000),
    .INIT_35(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_36(256'h11888811119922AABBCCDDEEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_37(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEEDDCCBBAA229911),
    .INIT_38(256'h00000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram 
       (.ADDRARDADDR({addra,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED [15:8],p_7_out[7:0]}),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED [15:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED [1],p_7_out[8]}),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED [1:0]),
        .ENARDEN(ENA_I),
        .ENBWREN(1'b0),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(POR_A),
        .RSTRAMB(POR_A),
        .RSTREGARSTREG(ram_rstreg_a),
        .RSTREGB(ram_rstreg_a),
        .WEA({1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized3
   (douta,
    ram_rstreg_a,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    ENA_I,
    ENA_I_0,
    clka,
    \SAFETY_CKT_GEN.POR_A_reg ,
    addra,
    ENA_dly_reg_D,
    rsta);
  output [1:0]douta;
  output ram_rstreg_a;
  output \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  output ENA_I;
  output ENA_I_0;
  input clka;
  input \SAFETY_CKT_GEN.POR_A_reg ;
  input [13:0]addra;
  input ENA_dly_reg_D;
  input rsta;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire ENA_I;
  wire ENA_I_0;
  wire ENA_dly_reg_D;
  wire \SAFETY_CKT_GEN.POR_A_reg ;
  wire [13:0]addra;
  wire clka;
  wire [1:0]douta;
  wire ram_rstreg_a;
  wire rsta;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:2]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  LUT4 #(
    .INIT(16'hAABA)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_i_1 
       (.I0(ENA_dly_reg_D),
        .I1(addra[12]),
        .I2(addra[13]),
        .I3(addra[11]),
        .O(ENA_I));
  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9500005AFFFFFFFFFFFFFFFFFFFFF),
    .INIT_01(256'h00000000006FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE400000000001BFFFF),
    .INIT_02(256'hFFFFFFFE000000000000000000BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF40000),
    .INIT_03(256'hFFFFFFFFFFFFFFFFFFFFD00000005AAAA500000007FFFFFFFFFFFFFFFFFFFFFF),
    .INIT_04(256'hFE400007FFFFFFFFFFFFFFFFFFFFFFFFFD000005BFFFFFFFFE5000007FFFFFFF),
    .INIT_05(256'h6FFFFFFFFFFFFFFFF90000BFFFFFFFFFFFFFFFFFFFFFFFD00001BFFFFFFFFFFF),
    .INIT_06(256'hFFFFFFFFF40006FFFFFFFFFFFFFFFFFF90001FFFFFFFFFFFFFFFFFFFFFFE0000),
    .INIT_07(256'h007FFFFFFFFFFFFFFFFFFF80006FFFFFFFFFFFFFFFFFFFFD0002FFFFFFFFFFFF),
    .INIT_08(256'hFFFFFFFFFFFFF8001FFFFFFFFFFFFFFFFFFD0006FFFFFFFFFFFFFFFFFFFFFF90),
    .INIT_09(256'h01FFFFFFFFFFFFFFFFFFFFFFFFFF0003FFFFFFFFFFFFFFFFF4002FFFFFFFFFFF),
    .INIT_0A(256'hFFFFFFFFFFFF000BFFFFFFFFFFFFFFFFFFFFFFFFFFD000BFFFFFFFFFFFFFFFC0),
    .INIT_0B(256'hFFFFFFFE000BFFFFFFFFFFFFFC002FFFFFFFFFFFFFFFFFFFFFFFFFFFF8003FFF),
    .INIT_0C(256'hFFFFFFFFFFFFFFFFFFFFFFD003FFFFFFFFFFFFE000FFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0D(256'hFF000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000FFFFFFFFFFFFC003FFFFFFFF),
    .INIT_0E(256'hFF001FFFFFFFFFFD003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD007FFFFFFFFF),
    .INIT_0F(256'hFFFFFFFFFFFFFFFF800BFFFFFFFFF400FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_10(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE003FFFFFFFFE003FFFFFFFFFFFFFFFFFF),
    .INIT_11(256'hFFFFFF401FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF401FFFFFFFFC00BFFFF),
    .INIT_12(256'hFE000000BF003FFFFFFE003FFFFFFFE4001BFFFFFFFFFFFFFFFFF4001BFC00BF),
    .INIT_13(256'h0BFFFFFFFFFFFFF80014002F801FFFFFFC00FFFFFFFE0000007FFFFFFFFFFFFF),
    .INIT_14(256'hFFFFFF800BFFF401FFFFFFFFFFFFD007FFE00BC00FFFFFF402FFFFFFF4001500),
    .INIT_15(256'h01F403FFFFD00BFFFFFF0007FFFF407FFFFFFFFFFF4002FFFD03E007FFFFF007),
    .INIT_16(256'hFFFFFC00003FFFC0BC01FFFFC01FFFFFFC0001FFFFE01FFFFFFFFFFE0000FFFF),
    .INIT_17(256'h00BFFFFE03FFFFFFFFF400003FFFE07D00FFFF403FFFFFF40000FFFFF80BFFFF),
    .INIT_18(256'hFE00BFFFFFC00000BFFFFF02FFFFFFFFF000003FFFF02E00BFFF007FFFFFE000),
    .INIT_19(256'h007FFFFC0F803FFC01FFFFFF800000BFFFFFC0FFFFFFFFD000003FFFF81F403F),
    .INIT_1A(256'hE07FFFFFFFC00000FFFFFD0FC02FFC02FFFFFF000000FFFFFFD0BFFFFFFFC000),
    .INIT_1B(256'hFE0B400BFFFFFFF03FFFFFFF81D007FFFFFE0BD01FF403FFFFFF010002FFFFFF),
    .INIT_1C(256'h07F00BF00BFFFFFD0BFABFFFFFFFF03FFFFFFF42FEAFFFFFFE07E00FF007FFFF),
    .INIT_1D(256'hFF43FFFFFFFFFF07F407E00FFFFFFD0FFFFFFFFFFFF42FFFFFFF43FFFFFFFFFF),
    .INIT_1E(256'hFFFFFFF82FFFFFFF03FFFFFFFFFF07F403D01FFFFFFC0FFFFFFFFFFFF42FFFFF),
    .INIT_1F(256'h2FFFFFFD0FFFFFFFFFFFF42FFFFFFF43FFFFFFFFFF07F803C01FFFFFFC0FFFFF),
    .INIT_20(256'hFFFFFE0BFC02803FFFFFFD0FFFFFFFFFFFF42FFFFFFF43FFFFFFFFFF07FC03C0),
    .INIT_21(256'h3FFFFFFF81FFFFFFFFFD0BFC02803FFFFFFD0BFFFFFFFFFFF43FFFFFFF42FFFF),
    .INIT_22(256'h000000000000003FFFFFFF8000000000000FFD01407FFFFFFE0BFFFFFFFFFFF0),
    .INIT_23(256'hFE0140BFFFFFFF00000000000000BFFFFFFFC000000000001FFD01407FFFFFFF),
    .INIT_24(256'hFFFFFFFFFFFFFFFE0000BFFFFFFF40000000000000FFFFFFFFD000000000002F),
    .INIT_25(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0000BFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_26(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0000BFFFFFFFFFFFFFFF),
    .INIT_27(256'hFFFFFFFE0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0000BF),
    .INIT_28(256'hFFFFFFFFFFFFFFFFFFFFFE0000BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_29(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0000BFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_2A(256'h0140BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD0100BFFFFFFFFF),
    .INIT_2B(256'h0000000001FFFC01407FFFFFFFE400000000000000000000000000000001FFFD),
    .INIT_2C(256'h000000000000000000000001FFFC02407FFFFFFFD00000000000000000000000),
    .INIT_2D(256'hFFFF80565555555555555555555555555540FFFFFC03803FFFFFFFC000000000),
    .INIT_2E(256'hFFFFF403C02FFFFFFF41AAAAAAAAAAAAAAAAAAAAAAAAAAAA80FFFFF803803FFF),
    .INIT_2F(256'hAAAAAAAAAAAA40FFFFF407C02FFFFFFF01AA5555555555555555AAAAAAAAAA40),
    .INIT_30(256'hAAAAAAAAAAAAAAAAAAAAAAAAAA41FFFFF00BD01FFFFFFF01AAAAAAAAAAAAAAAA),
    .INIT_31(256'hF00BFFFFFF01A9AAAAAAAAAAAAAAAAAAAAAAAAAA02FFFFE00FE00FFFFFFF01AA),
    .INIT_32(256'hAAA903FFFFC01FF007FFFFFF029AAAAAAAAAAAAAAAAAAAAAAAAAAA03FFFFD00F),
    .INIT_33(256'hAAAAAAAAAAAAAAAAA80BFFFF803FF403FFFFFF02AAAAAAAAAAAAAAAAAAAAAAAA),
    .INIT_34(256'hFF02A6AAAAAAAAAAAAAAAAAAAAAAAAA40FFFFF403FFC02FFFFFF02A6AAAAAAAA),
    .INIT_35(256'hFD00FFFE00FFFFFF01A6AAAAAAAAAAAAAAAAAAAAAAAAA41FFFFE00BFFC01FFFF),
    .INIT_36(256'hAAAAAAAA907FFFF801FFFF007FFFFF41AAAAAAAAAAAAAAAAAAAAAAAAAA902FFF),
    .INIT_37(256'hAAAAAAAAAAAAAAAAAAAAAA80BFFFF403FFFF403FFFFF80AAAAAAAAAAAAAAAAAA),
    .INIT_38(256'hD00FFFFFD05AAA9AAA9AA56AAAAAAAAA9A9A01FFFFE007FFFFC01FFFFFC06AAA),
    .INIT_39(256'h07FFFF801FFFFFE007FFFFE01A6AAAAABFFEA5A9AAAAAAAA9902FFFFD00FFFFF),
    .INIT_3A(256'hFFE6AAAAAAAAA40FFFFF003FFFFFF402FFFFF4169AA96FFFFFFE5AA9AAAAAAA8),
    .INIT_3B(256'hFD01AA6BFFFFFFFFF96AAAAAAA902FFFFD00BFFFFFFC00FFFFF806AA96FFFFFF),
    .INIT_3C(256'hFFFFFFFF402FFFFF006ABFFFFFFFFFFF5AAAAA96407FFFF801FFFFFFFE007FFF),
    .INIT_3D(256'hAA6802FFFFC00BFFFFFFFFC00BFFFF801AFFFFFFFFFFFFD6AAAAA900FFFFE003),
    .INIT_3E(256'hFFFFFFFFFFF9AAAAA00BFFFF001FFFFFFFFFE003FFFFE00BFFFFFFFFFFFFE6AA),
    .INIT_3F(256'hFD003FFFFE00BFFFFFFFFFFFFEAA6A402FFFFC007FFFFFFFFFF400FFFFF802FF),
    .INIT_40(256'hC003FFFFFFFFFFFF000FFFFF801FFFFFFFFFFFFEA6A900BFFFF000FFFFFFFFFF),
    .INIT_41(256'hFFFFAA500BFFFE000FFFFFFFFFFFFFC003FFFFE002FFFFFFFFFFFF6A9402FFFF),
    .INIT_42(256'hFFFF8002FFFFFFFFFFE4007FFFF8003FFFFFFFFFFFFFE000FFFFFD006FFFFFFF),
    .INIT_43(256'hFFFFFFFFFE000BFFFFF4001BFFFFFFFF8001FFFFD000BFFFFFFFFFFFFFFC002F),
    .INIT_44(256'hFFF8001FFFFFFFFFFFFFFFFFC001FFFFFF40006BFFFFE4001FFFFF4003FFFFFF),
    .INIT_45(256'hE4000000006FFFFF90007FFFFFFFFFFFFFFFFFF4002FFFFFF8000001000001FF),
    .INIT_46(256'hFFFF80007FFFFFFFA400006BFFFFFD0002FFFFFFFFFFFFFFFFFFFD0007FFFFFF),
    .INIT_47(256'hFFFFFFFFFFFFFFFFFFF40006FFFFFFFFFFFFFFFFFF90001FFFFFFFFFFFFFFFFF),
    .INIT_48(256'hFFFE400007FFFFFFFFFFFFFFFFFFFFFFFE00006FFFFFFFFFFFFFFFF90000BFFF),
    .INIT_49(256'h000006BFFFFFFFFE5000007FFFFFFFFFFFFFFFFFFFFFFFFFD00001BFFFFFFFFF),
    .INIT_4A(256'hFFFFFFFFFFFFFFD00000006ABEA940000007FFFFFFFFFFFFFFFFFFFFFFFFFFFD),
    .INIT_4B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE000000000000000000BFFFFFFFFFFFFFFF),
    .INIT_4C(256'h000000001BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4000000000000001FFF),
    .INIT_4D(256'hFFFFFFFFFFFFE95000056BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE400),
    .INIT_4E(256'h00000000000000000000000000000000000000000000000000000000FFFFFFFF),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(2),
    .READ_WIDTH_B(2),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(2),
    .WRITE_WIDTH_B(2)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:2],douta}),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(\SAFETY_CKT_GEN.POR_A_reg ),
        .RSTRAMB(\SAFETY_CKT_GEN.POR_A_reg ),
        .RSTREGARSTREG(ram_rstreg_a),
        .RSTREGB(ram_rstreg_a),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT2 #(
    .INIT(4'hE)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1 
       (.I0(rsta),
        .I1(\SAFETY_CKT_GEN.POR_A_reg ),
        .O(ram_rstreg_a));
  LUT3 #(
    .INIT(8'hAB)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1__0 
       (.I0(ENA_dly_reg_D),
        .I1(addra[13]),
        .I2(addra[12]),
        .O(ENA_I_0));
  LUT3 #(
    .INIT(8'hAE)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1__1 
       (.I0(ENA_dly_reg_D),
        .I1(addra[12]),
        .I2(addra[13]),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ));
endmodule

module blk_mem_gen_0_blk_mem_gen_top
   (douta,
    rsta_busy,
    clka,
    addra,
    rsta);
  output [11:0]douta;
  output rsta_busy;
  input clka;
  input [13:0]addra;
  input rsta;

  wire [13:0]addra;
  wire clka;
  wire [11:0]douta;
  wire rsta;
  wire rsta_busy;

  blk_mem_gen_0_blk_mem_gen_generic_cstr \valid.cstr 
       (.addra(addra),
        .clka(clka),
        .douta(douta),
        .rsta(rsta),
        .rsta_busy(rsta_busy));
endmodule

(* C_ADDRA_WIDTH = "14" *) (* C_ADDRB_WIDTH = "14" *) (* C_ALGORITHM = "1" *) 
(* C_AXI_ID_WIDTH = "4" *) (* C_AXI_SLAVE_TYPE = "0" *) (* C_AXI_TYPE = "1" *) 
(* C_BYTE_SIZE = "9" *) (* C_COMMON_CLK = "0" *) (* C_COUNT_18K_BRAM = "2" *) 
(* C_COUNT_36K_BRAM = "3" *) (* C_CTRL_ECC_ALGO = "NONE" *) (* C_DEFAULT_DATA = "0" *) 
(* C_DISABLE_WARN_BHV_COLL = "0" *) (* C_DISABLE_WARN_BHV_RANGE = "0" *) (* C_ELABORATION_DIR = "./" *) 
(* C_ENABLE_32BIT_ADDRESS = "0" *) (* C_EN_DEEPSLEEP_PIN = "0" *) (* C_EN_ECC_PIPE = "0" *) 
(* C_EN_RDADDRA_CHG = "0" *) (* C_EN_RDADDRB_CHG = "0" *) (* C_EN_SAFETY_CKT = "1" *) 
(* C_EN_SHUTDOWN_PIN = "0" *) (* C_EN_SLEEP_PIN = "0" *) (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     5.56159 mW" *) 
(* C_FAMILY = "artix7" *) (* C_HAS_AXI_ID = "0" *) (* C_HAS_ENA = "0" *) 
(* C_HAS_ENB = "0" *) (* C_HAS_INJECTERR = "0" *) (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
(* C_HAS_MEM_OUTPUT_REGS_B = "0" *) (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
(* C_HAS_REGCEA = "0" *) (* C_HAS_REGCEB = "0" *) (* C_HAS_RSTA = "1" *) 
(* C_HAS_RSTB = "0" *) (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
(* C_INITA_VAL = "0" *) (* C_INITB_VAL = "0" *) (* C_INIT_FILE = "blk_mem_gen_0.mem" *) 
(* C_INIT_FILE_NAME = "blk_mem_gen_0.mif" *) (* C_INTERFACE_TYPE = "0" *) (* C_LOAD_INIT_FILE = "1" *) 
(* C_MEM_TYPE = "3" *) (* C_MUX_PIPELINE_STAGES = "0" *) (* C_PRIM_TYPE = "1" *) 
(* C_READ_DEPTH_A = "10000" *) (* C_READ_DEPTH_B = "10000" *) (* C_READ_WIDTH_A = "12" *) 
(* C_READ_WIDTH_B = "12" *) (* C_RSTRAM_A = "0" *) (* C_RSTRAM_B = "0" *) 
(* C_RST_PRIORITY_A = "CE" *) (* C_RST_PRIORITY_B = "CE" *) (* C_SIM_COLLISION_CHECK = "ALL" *) 
(* C_USE_BRAM_BLOCK = "0" *) (* C_USE_BYTE_WEA = "0" *) (* C_USE_BYTE_WEB = "0" *) 
(* C_USE_DEFAULT_DATA = "0" *) (* C_USE_ECC = "0" *) (* C_USE_SOFTECC = "0" *) 
(* C_USE_URAM = "0" *) (* C_WEA_WIDTH = "1" *) (* C_WEB_WIDTH = "1" *) 
(* C_WRITE_DEPTH_A = "10000" *) (* C_WRITE_DEPTH_B = "10000" *) (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
(* C_WRITE_MODE_B = "WRITE_FIRST" *) (* C_WRITE_WIDTH_A = "12" *) (* C_WRITE_WIDTH_B = "12" *) 
(* C_XDEVICEFAMILY = "artix7" *) (* downgradeipidentifiedwarnings = "yes" *) 
module blk_mem_gen_0_blk_mem_gen_v8_4_1
   (clka,
    rsta,
    ena,
    regcea,
    wea,
    addra,
    dina,
    douta,
    clkb,
    rstb,
    enb,
    regceb,
    web,
    addrb,
    dinb,
    doutb,
    injectsbiterr,
    injectdbiterr,
    eccpipece,
    sbiterr,
    dbiterr,
    rdaddrecc,
    sleep,
    deepsleep,
    shutdown,
    rsta_busy,
    rstb_busy,
    s_aclk,
    s_aresetn,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    s_axi_injectsbiterr,
    s_axi_injectdbiterr,
    s_axi_sbiterr,
    s_axi_dbiterr,
    s_axi_rdaddrecc);
  input clka;
  input rsta;
  input ena;
  input regcea;
  input [0:0]wea;
  input [13:0]addra;
  input [11:0]dina;
  output [11:0]douta;
  input clkb;
  input rstb;
  input enb;
  input regceb;
  input [0:0]web;
  input [13:0]addrb;
  input [11:0]dinb;
  output [11:0]doutb;
  input injectsbiterr;
  input injectdbiterr;
  input eccpipece;
  output sbiterr;
  output dbiterr;
  output [13:0]rdaddrecc;
  input sleep;
  input deepsleep;
  input shutdown;
  output rsta_busy;
  output rstb_busy;
  input s_aclk;
  input s_aresetn;
  input [3:0]s_axi_awid;
  input [31:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input s_axi_awvalid;
  output s_axi_awready;
  input [11:0]s_axi_wdata;
  input [0:0]s_axi_wstrb;
  input s_axi_wlast;
  input s_axi_wvalid;
  output s_axi_wready;
  output [3:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [3:0]s_axi_arid;
  input [31:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input s_axi_arvalid;
  output s_axi_arready;
  output [3:0]s_axi_rid;
  output [11:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output s_axi_rvalid;
  input s_axi_rready;
  input s_axi_injectsbiterr;
  input s_axi_injectdbiterr;
  output s_axi_sbiterr;
  output s_axi_dbiterr;
  output [13:0]s_axi_rdaddrecc;

  wire \<const0> ;
  wire [13:0]addra;
  wire clka;
  wire [11:0]douta;
  wire rsta;
  wire rsta_busy;

  assign dbiterr = \<const0> ;
  assign doutb[11] = \<const0> ;
  assign doutb[10] = \<const0> ;
  assign doutb[9] = \<const0> ;
  assign doutb[8] = \<const0> ;
  assign doutb[7] = \<const0> ;
  assign doutb[6] = \<const0> ;
  assign doutb[5] = \<const0> ;
  assign doutb[4] = \<const0> ;
  assign doutb[3] = \<const0> ;
  assign doutb[2] = \<const0> ;
  assign doutb[1] = \<const0> ;
  assign doutb[0] = \<const0> ;
  assign rdaddrecc[13] = \<const0> ;
  assign rdaddrecc[12] = \<const0> ;
  assign rdaddrecc[11] = \<const0> ;
  assign rdaddrecc[10] = \<const0> ;
  assign rdaddrecc[9] = \<const0> ;
  assign rdaddrecc[8] = \<const0> ;
  assign rdaddrecc[7] = \<const0> ;
  assign rdaddrecc[6] = \<const0> ;
  assign rdaddrecc[5] = \<const0> ;
  assign rdaddrecc[4] = \<const0> ;
  assign rdaddrecc[3] = \<const0> ;
  assign rdaddrecc[2] = \<const0> ;
  assign rdaddrecc[1] = \<const0> ;
  assign rdaddrecc[0] = \<const0> ;
  assign rstb_busy = \<const0> ;
  assign s_axi_arready = \<const0> ;
  assign s_axi_awready = \<const0> ;
  assign s_axi_bid[3] = \<const0> ;
  assign s_axi_bid[2] = \<const0> ;
  assign s_axi_bid[1] = \<const0> ;
  assign s_axi_bid[0] = \<const0> ;
  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_bvalid = \<const0> ;
  assign s_axi_dbiterr = \<const0> ;
  assign s_axi_rdaddrecc[13] = \<const0> ;
  assign s_axi_rdaddrecc[12] = \<const0> ;
  assign s_axi_rdaddrecc[11] = \<const0> ;
  assign s_axi_rdaddrecc[10] = \<const0> ;
  assign s_axi_rdaddrecc[9] = \<const0> ;
  assign s_axi_rdaddrecc[8] = \<const0> ;
  assign s_axi_rdaddrecc[7] = \<const0> ;
  assign s_axi_rdaddrecc[6] = \<const0> ;
  assign s_axi_rdaddrecc[5] = \<const0> ;
  assign s_axi_rdaddrecc[4] = \<const0> ;
  assign s_axi_rdaddrecc[3] = \<const0> ;
  assign s_axi_rdaddrecc[2] = \<const0> ;
  assign s_axi_rdaddrecc[1] = \<const0> ;
  assign s_axi_rdaddrecc[0] = \<const0> ;
  assign s_axi_rdata[11] = \<const0> ;
  assign s_axi_rdata[10] = \<const0> ;
  assign s_axi_rdata[9] = \<const0> ;
  assign s_axi_rdata[8] = \<const0> ;
  assign s_axi_rdata[7] = \<const0> ;
  assign s_axi_rdata[6] = \<const0> ;
  assign s_axi_rdata[5] = \<const0> ;
  assign s_axi_rdata[4] = \<const0> ;
  assign s_axi_rdata[3] = \<const0> ;
  assign s_axi_rdata[2] = \<const0> ;
  assign s_axi_rdata[1] = \<const0> ;
  assign s_axi_rdata[0] = \<const0> ;
  assign s_axi_rid[3] = \<const0> ;
  assign s_axi_rid[2] = \<const0> ;
  assign s_axi_rid[1] = \<const0> ;
  assign s_axi_rid[0] = \<const0> ;
  assign s_axi_rlast = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  assign s_axi_rvalid = \<const0> ;
  assign s_axi_sbiterr = \<const0> ;
  assign s_axi_wready = \<const0> ;
  assign sbiterr = \<const0> ;
  GND GND
       (.G(\<const0> ));
  blk_mem_gen_0_blk_mem_gen_v8_4_1_synth inst_blk_mem_gen
       (.addra(addra),
        .clka(clka),
        .douta(douta),
        .rsta(rsta),
        .rsta_busy(rsta_busy));
endmodule

module blk_mem_gen_0_blk_mem_gen_v8_4_1_synth
   (douta,
    rsta_busy,
    clka,
    addra,
    rsta);
  output [11:0]douta;
  output rsta_busy;
  input clka;
  input [13:0]addra;
  input rsta;

  wire [13:0]addra;
  wire clka;
  wire [11:0]douta;
  wire rsta;
  wire rsta_busy;

  blk_mem_gen_0_blk_mem_gen_top \gnbram.gnativebmg.native_blk_mem_gen 
       (.addra(addra),
        .clka(clka),
        .douta(douta),
        .rsta(rsta),
        .rsta_busy(rsta_busy));
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
