// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Sat Dec  3 22:59:16 2022
// Host        : LAPTOP-SES45VI5 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               e:/vivado_files/EXP_7/EXP_7.gen/sources_1/ip/MAZEMODEL/MAZEMODEL_stub.v
// Design      : MAZEMODEL
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.1" *)
module MAZEMODEL(clka, wea, addra, dina, clkb, addrb, doutb)
/* synthesis syn_black_box black_box_pad_pin="clka,wea[0:0],addra[6:0],dina[6:0],clkb,addrb[6:0],doutb[6:0]" */;
  input clka;
  input [0:0]wea;
  input [6:0]addra;
  input [6:0]dina;
  input clkb;
  input [6:0]addrb;
  output [6:0]doutb;
endmodule
