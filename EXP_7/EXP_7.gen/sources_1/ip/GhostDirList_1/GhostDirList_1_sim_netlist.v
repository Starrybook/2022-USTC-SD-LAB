// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Sat Dec  3 16:20:26 2022
// Host        : LAPTOP-SES45VI5 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               e:/vivado_files/EXP_7/EXP_7.gen/sources_1/ip/GhostDirList_1/GhostDirList_1_sim_netlist.v
// Design      : GhostDirList_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "GhostDirList_1,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.1" *) 
(* NotValidForBitStream *)
module GhostDirList_1
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
  (* C_INIT_FILE = "GhostDirList_1.mem" *) 
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
  GhostDirList_1_blk_mem_gen_v8_4_5 U0
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
Cxdl3tDsVZLfOn4OWn+T
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
