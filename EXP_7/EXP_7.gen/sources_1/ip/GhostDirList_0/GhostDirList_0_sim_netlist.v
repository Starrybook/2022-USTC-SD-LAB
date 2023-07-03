// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Sat Dec  3 16:20:23 2022
// Host        : LAPTOP-SES45VI5 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               e:/vivado_files/EXP_7/EXP_7.gen/sources_1/ip/GhostDirList_0/GhostDirList_0_sim_netlist.v
// Design      : GhostDirList_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "GhostDirList_0,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.1" *) 
(* NotValidForBitStream *)
module GhostDirList_0
   (clka,
    wea,
    addra,
    dina,
    clkb,
    addrb,
    doutb);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [11:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [3:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [11:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [3:0]doutb;

  wire [11:0]addra;
  wire [11:0]addrb;
  wire clka;
  wire clkb;
  wire [3:0]dina;
  wire [3:0]doutb;
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
  wire [3:0]NLW_U0_douta_UNCONNECTED;
  wire [11:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [11:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "12" *) 
  (* C_ADDRB_WIDTH = "12" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.472099 mW" *) 
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
  (* C_INIT_FILE = "GhostDirList_0.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "1" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "4096" *) 
  (* C_READ_DEPTH_B = "4096" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "4" *) 
  (* C_READ_WIDTH_B = "4" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "1" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "4096" *) 
  (* C_WRITE_DEPTH_B = "4096" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "4" *) 
  (* C_WRITE_WIDTH_B = "4" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  GhostDirList_0_blk_mem_gen_v8_4_5 U0
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0}),
        .douta(NLW_U0_douta_UNCONNECTED[3:0]),
        .doutb(doutb),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[11:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[11:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[3:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0}),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 18768)
`pragma protect data_block
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
/DVEdN8x4iNlAhbOOE1G
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
