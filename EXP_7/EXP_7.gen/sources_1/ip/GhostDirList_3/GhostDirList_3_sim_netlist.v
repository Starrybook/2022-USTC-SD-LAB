// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Sat Dec  3 16:20:59 2022
// Host        : LAPTOP-SES45VI5 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               e:/vivado_files/EXP_7/EXP_7.gen/sources_1/ip/GhostDirList_3/GhostDirList_3_sim_netlist.v
// Design      : GhostDirList_3
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "GhostDirList_3,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.1" *) 
(* NotValidForBitStream *)
module GhostDirList_3
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
  (* C_INIT_FILE = "GhostDirList_3.mem" *) 
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
  GhostDirList_3_blk_mem_gen_v8_4_5 U0
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
vgwmyN6SanWUorYC1rLM
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
