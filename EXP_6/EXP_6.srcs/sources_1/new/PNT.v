`timescale 1ns / 1ps
// 主模块
module PNT#(  //DB
    parameter T=10,
              MS=100000,
              INTERVAL=100,
              // PU
              width=200,
              height=150,
              startx=49,
              starty=49,
              // DST
              HSW=120, HBP=64, HEN=800, HFP=56,
              VSW=6,   VBP=23, VEN=600, VFP=37,
              // DDP
              width_out=800,
              height_out=600
    )(
    input clk,rstn,
    input up,down,left,right,
    input [3:0] pred,pgreen,pblue,
    input draw,
    output [3:0] red,green,blue,
    output [11:0] rgb_out,
    output hs,vs,hs_out,vs_out
    //////////////测试用端口
    // output test_pclk,test_we,
    // output test_hen,test_ven,
    // output [14:0] test_waddr,test_raddr,
    // output [15:0] test_wdata,test_rdata
    );
    // 消抖取边沿
    wire up_in0,down_in0,left_in0,right_in0,draw_in0;
    wire up_in,down_in,left_in,right_in,draw_in;
    DB #(
        .T(T),
        .MS(MS),
        .WIDTH(5)
    ) db0(
        .x({draw,up,down,left,right}),
        .rstn(rstn),
        .clk(clk),
        .y({draw_in0,up_in0,down_in0,left_in0,right_in0})
    );
    // 通过对于取边沿的控制可以控制画笔在持续按压的情况下持续移动
    PS #(1) ps0(
        .x(draw_in0),
        .rstn(rstn),
        .clk(clk),
        .y(draw_in)
    );
    PS_plus #(4,INTERVAL,MS) ps1(
        .x({up_in0,down_in0,left_in0,right_in0}),
        .rstn(rstn),
        .clk(clk),
        .y({up_in,down_in,left_in,right_in})
    );
    // 颜色输入并不需要消抖取边沿

    wire [14:0] waddr,raddr;
    wire [15:0] wdata,rdata;
    wire we,pclk;
    wire hen,ven;
    wire ifdraw;
    PU #(
        width,height,startx,starty
    )pu(
        .draw(draw_in),
        .dir({up_in,down_in,left_in,right_in}),
        .prgb({pred,pgreen,pblue}),
        .rstn(rstn),
        .clk(clk),
        .waddr(waddr),
        .wdata(wdata),
        .we(we),
        .ifdraw(ifdraw)
    );
    VRAM vram(
        .waddr(waddr),
        .wdata(wdata),
        .raddr(raddr),
        .we(we),
        .clk(clk),
        .pclk(pclk),
        .ifdraw(ifdraw),
        .rdata(rdata)
    );
    // 最初测试时rgb接12'hFFF，显示白色
    // assign rgb_out=12'hFFF;
    DDP #(width_out,height_out) ddp(
        .rdata(rdata),
        .hen(hen),
        .ven(ven),
        .rstn(rstn),
        .pclk(pclk),
        .raddr(raddr),
        .rgb(rgb_out)
    );
    DST #(
        HSW, HBP, HEN, HFP,
        VSW, VBP, VEN, VFP
    )dst(
        .pclk(pclk),
        .rstn(rstn),
        .hen(hen),
        .ven(ven),
        .hs(hs),
        .vs(vs)
    );
    clk_wiz_0 clk0(
    // Clock out ports
    .clk_out1(pclk),     // output clk_out1
    // Clock in ports
    .clk_in1(clk));      // input clk_in1
    assign red=rgb_out[11:8],green=rgb_out[7:4],blue=rgb_out[3:0];
    assign hs_out=hs,vs_out=vs;

    ////////////测试用端口
    // assign test_we=we,test_hen=hen,test_ven=ven;
    // assign test_pclk=pclk,test_waddr=waddr,test_raddr=raddr;
    // assign test_rdata=rdata,test_wdata=wdata;
endmodule