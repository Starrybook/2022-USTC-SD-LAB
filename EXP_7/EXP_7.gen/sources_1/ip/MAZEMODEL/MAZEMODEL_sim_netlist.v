// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Sat Dec  3 22:59:16 2022
// Host        : LAPTOP-SES45VI5 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               e:/vivado_files/EXP_7/EXP_7.gen/sources_1/ip/MAZEMODEL/MAZEMODEL_sim_netlist.v
// Design      : MAZEMODEL
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "MAZEMODEL,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.1" *) 
(* NotValidForBitStream *)
module MAZEMODEL
   (clka,
    wea,
    addra,
    dina,
    clkb,
    addrb,
    doutb);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [6:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [6:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [6:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [6:0]doutb;

  wire [6:0]addra;
  wire [6:0]addrb;
  wire clka;
  wire clkb;
  wire [6:0]dina;
  wire [6:0]doutb;
  wire [0:0]wea;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
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
  wire [6:0]NLW_U0_douta_UNCONNECTED;
  wire [6:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [6:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [6:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "7" *) 
  (* C_ADDRB_WIDTH = "7" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "0" *) 
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
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.64295 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "0" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "1" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "MAZEMODEL.mem" *) 
  (* C_INIT_FILE_NAME = "MAZEMODEL.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "1" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "128" *) 
  (* C_READ_DEPTH_B = "128" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "7" *) 
  (* C_READ_WIDTH_B = "7" *) 
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
  (* C_WRITE_DEPTH_A = "128" *) 
  (* C_WRITE_DEPTH_B = "128" *) 
  (* C_WRITE_MODE_A = "NO_CHANGE" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "7" *) 
  (* C_WRITE_WIDTH_B = "7" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  MAZEMODEL_blk_mem_gen_v8_4_5 U0
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(NLW_U0_douta_UNCONNECTED[6:0]),
        .doutb(doutb),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[6:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[6:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[6:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2022.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
RgPKnWr9n0dGgttm3akiFhAlfB96usOQYxnEmPhGyTGg1AbizYAjGPWLXBWl50n/d0IA71ci4aJB
wt6mtfyNADm3ZReK7D3mKu037BOgxryoEwwf1kiC6q/PllxsdAgEMfQrfHJ3E2AzSpdYjoxVYito
y0JW6CUDcWvWa4WV0EA=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
M0l6KpOGH3jL8eRt3NCD7e2USYnkg5H9GAnE1PKmnjiouFN3Y8kjWA2PZDAQLm9UW+TsC1HeVlzO
WjNCHkjR/6ubCsIcWfpPZWdIuAenlsyq8Y9l6b8vMj8JSbDEOiFF/GHSbKsn22MJdDJKEhHFK6GV
s8gR2vywRFwG69gIRE4qGhVB+WIg8GJrDpDMYH6lCjMkTrjXuKDUcNlJN3NPLuhJ7tsditwf1pr5
moJRmGpJnip/rGm0g4o4A6ev4CtePjoao8C1wFtzHkERX9oenhh7cGjDMejU5IrLv8NxFnLj1FpB
9MuF1beTU20NI5oAn6zLiLiOtXjf0ghU3AN4DA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
hAsrUfp6Qgjm8yBjNYTEtQmVQmMxzL8TE/3oiQSxSI3+yEkXAbQCXkT9mo+LCdv+fGECOB0istHd
eLtbsiYbxjxNxYkXiUrRE5O+aSxynIray+uF9DJigTEUZu8JJXUbzxK4DDUu1Lm9tpGps4+Prz1m
0gkj13RT/Y/418s2VTw=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
BP/54Wm/GJmb1jy0bxWJJX4aiKyiWPVh4X3VL30BQrmX4PlEsNKzBJH3Qu8IIYERfnFP0ifAgboa
vypMQ5Ed0BrMePGkWIgT6I8hxJCMFpHdkSK7m1giSKyZzFfTOrVqoNFXE+qdzLfY1J5hBWCvouYo
jllavK4N3gF9FLScH2AUWYVMcVth2QPaTAU2NLnAUNH8kgtBjBfc8/KbPPTznD1QNVqvFstzcbTA
hGQ1ETVPvINQ0KqxxAG5PRhtQD4+pC+hr/Tvk+RSvGyBOfy9zE86OXkJiYs9dSFhNiMFmCPL9DBO
se4OxNNC0/7aBtb1mkSEA9YFDYEb9jS7Jasy2A==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
SnzT9DVH3xlEN8nrr2YrlvTO5qj7L22d7WaBcuKyTaiHoIwwFHrC4HQbfs0TAwkdWcOgmJoATPSF
F6qm0KiddbrlERF3MfKUldeGBJtqLdX+zGw7+3JD7S+HB9dIMOFOHy+IiCZp1/Pz8epKpi238cel
rcVoJQKz406wmXDvOo8KsT+XhRLs9BVCrBErPGGXKYDk6NXAp0duOgQE9DbslzMU83M/kUC7uERV
tQW02240peKQFp2elEZC7Tetvgp0TaFTtJiKN45REi8GQUCKGa85JjNIk1qb/+k95TIIP1xrHirc
6iX7qbwnPetv8TVu2NjkZ0WDEK5RXdOXcxBwHA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_07", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
erkR82V0jX8ytva+9MzEs0c75Z7j7TsgxWRLNAUfbbU28i+U9YzuZlSfYU75M0f9jx1gvxtBrfKv
cNHVdkR+i5zfHDZsDwfMEEBhs8wzDCKqe+eex6BBEvlIOesCPXrr2RozQgaQ1PBh/os2Arfu+873
BjsVxFJkbhpzIqlddOo/XZV9Yi+eih7A7pXXEBR6IL7Poo4Ka49MiVQU0xJrDTm+ddOuMPDRRD7g
dsxS/uzdcBcO2myV6g/7YH/C2Ce9s6+UywJN/0JeXSqwA7bsBqqnfFicVAT0lckLopMLiuzK7dsN
EwhFeqoetciFrDIj9+o0xDMWBZhgNP1u68vURA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
R+BI65BKLT0I9hEtsxGnDyM5XY9gzULeTPOSDXvd3KWOzZJAx6C0xlbyZcFZhAEG/QIK2yd0wAi6
IUWxyF/sx3HsqKjhVi5KxnpuXDBOZVoj811O7JukedFVmDW7OHGtBkuiJ5X5irw7mfsEKRQmF/1i
V6lj9HYHZEjxtDeZjACsLY4y1QxWalSKT4HIMOHznBLL8dLbGMlS+ZmFuFn0gcwZavVl7gTkTtkf
W0gn01A9ru7NKsf+iLX0kj4dgItPu9N2g02M1vWQ9UUQEVvfV7lUc7GY1suibrD8aEkhH9S7lZ7n
bFsT4qxyvzg8ML6v4g4v7N6VuyhEtgFgNd725Q==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
jNUVKiwH68vHsU54idgvKwaVJcoxTUuxfgrQpbpmM/IpesWA3wHsGzYClwAxkKzw3KRnFyQqTWcZ
yj1EQ2CMBxlJ0kyNbZW8OK8pXzeigToZ0U6Aq3Gy+j7wBbhe83wE1Ygn82sK8dHTEulvaRLn/c5r
ispy1s7jMKIvYNzoUuZrgyBQyfaYmdqUia8XlQjFd+VwzhTXKwzvmaqHWyaHjfBKeCooO7+oUxMG
OJg83W54EVe9ronFQ8Wr9EOL8ia7qelCAgyQe/bC0HHCoMAm8apI7sX23iMR/wMiPP5V2bQzycy+
rBX/+SWkqSeIE1FLm+muFPvrE7iLwJaW8d1fzdFFjAZ5aIXArbWNfwbK8S0TczXc9lEzmpb69rwA
UJIrs4alo81qGQ32UFhjuMQjX75O9Od1HWHDj5PFaT/Ja5Ly+bK8Cc3gfO6dCE81m7d+B2JBZ/Hl
tBA19QuOAYwT2EIPOdpaVtCULb33cWODWu3qQFhZMmDzKTb3kwpcr0LL

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
MnzcA2swaxH1LRacKDou0ZmiiMRETbWIdHgeBgyQz7ILronsXLoB/C20WuFNGEVSiL2/51EZ6MXZ
vMHI8fFcMQCJcuTBDBibUMKv6bXI9s8fTbtrBZppbF/R1icG5JYhqmX4aRnv4W/dxJRjI2L35nLN
Y48E9OfgfkD1sr+IRwx8WEKFmUhuk8dLe0VOK7ywe3XEcneYvrz+HhPj16bGmNfMwNnDgZ3gKKZD
hRnys+jzvAX3HyISrErWXhMKrhWMxXeTNFJCqNQ0LWAVHQYwyKnF5xVpyXSuGNSIrva+QXqOrZBG
3VNLirNVtMRiKLfwZeMaqvswkqBDAa53utlAAA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
d0xXkKtsKM8GvXhDZr16p1+oE3uBtD04BJ76eGGIEj/CFECfHVy9qsJ43oSKjas0+AJr4GFFnVb6
X7gJV6MmX/OboC9ier5joUCGz0mxVzkRZK9a+LPEDcg0K6+cLE36kr+FfxW9Uk2816EHBCMCf5mK
A4eAhSmAb5Nq74F/q0quiG416npbny7faiQ+xmPDfYYiM3UuMKaD4iE8ODlz1w5xThPllWESf3LZ
NTkw6fozyTqZ47vvE21O3dgIGAY1v+C6BwlCK24VwPJa1xs9csY+qTk31j5jjAc1ExlB6QF7t9UH
lk70qdNPWxT87OH7kFT8UvPO1D6BTC3/WkDZfA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
LYhdzKTvo93uJrAaiP5OfCDuOnu2BSvPnxlv6I7h2n1+xHtj34LNNKzWEgOg9dUV9cYDaHYUjjEt
DKdWcz6mZ61d5qyxAhpv67fc90v7JVgtOAcT94/Yb+AuLxXFcGA6Gic7uoJtUgz6JmTnb22Dxdjc
KuIewDj4IOTfP8XGXKTaF+cNp0CFrQgTAcVSQFyLFxr0I/9h3S+GZLecA7ntEeHEOfCJzPvy0ddi
7MCdQWECLb+fXC0IAn8V95TumcpINiRAX1BHi9IGJ4QoMrb3jOCrPkFhDMTJj2aiImUWdi/l/0QE
d7wcXlgIEYVeoKYUOJ4mqy+zZPUbLNeOPADUDQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 21264)
`pragma protect data_block
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
lnTo
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
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
    reg GRESTORE_int;

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
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

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

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
