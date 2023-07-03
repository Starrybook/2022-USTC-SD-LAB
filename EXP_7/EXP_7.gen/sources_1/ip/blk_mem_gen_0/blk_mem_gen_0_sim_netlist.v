// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Fri Dec  2 23:22:08 2022
// Host        : LAPTOP-SES45VI5 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               e:/vivado_files/EXP_7/EXP_7.gen/sources_1/ip/blk_mem_gen_0/blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.1" *) 
(* NotValidForBitStream *)
module blk_mem_gen_0
   (clka,
    wea,
    addra,
    dina,
    clkb,
    addrb,
    doutb);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [4:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [2:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [4:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [2:0]doutb;

  wire [4:0]addra;
  wire [4:0]addrb;
  wire clka;
  wire clkb;
  wire [2:0]dina;
  wire [2:0]doutb;
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
  wire [2:0]NLW_U0_douta_UNCONNECTED;
  wire [4:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [4:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [2:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "5" *) 
  (* C_ADDRB_WIDTH = "5" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.47655 mW" *) 
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
  (* C_INIT_FILE = "blk_mem_gen_0.mem" *) 
  (* C_INIT_FILE_NAME = "blk_mem_gen_0.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "1" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "18" *) 
  (* C_READ_DEPTH_B = "18" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "3" *) 
  (* C_READ_WIDTH_B = "3" *) 
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
  (* C_WRITE_DEPTH_A = "18" *) 
  (* C_WRITE_DEPTH_B = "18" *) 
  (* C_WRITE_MODE_A = "NO_CHANGE" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "3" *) 
  (* C_WRITE_WIDTH_B = "3" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  blk_mem_gen_0_blk_mem_gen_v8_4_5 U0
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0}),
        .douta(NLW_U0_douta_UNCONNECTED[2:0]),
        .doutb(doutb),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[4:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[4:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[2:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0}),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 21360)
`pragma protect data_block
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
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
