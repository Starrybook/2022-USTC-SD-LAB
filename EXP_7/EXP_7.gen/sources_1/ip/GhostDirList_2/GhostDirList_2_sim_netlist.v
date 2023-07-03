// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Sat Dec  3 16:20:42 2022
// Host        : LAPTOP-SES45VI5 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               e:/vivado_files/EXP_7/EXP_7.gen/sources_1/ip/GhostDirList_2/GhostDirList_2_sim_netlist.v
// Design      : GhostDirList_2
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "GhostDirList_2,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.1" *) 
(* NotValidForBitStream *)
module GhostDirList_2
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
  (* C_INIT_FILE = "GhostDirList_2.mem" *) 
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
  GhostDirList_2_blk_mem_gen_v8_4_5 U0
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
klcqSy5QeLrDVK7EQxEF
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
