`timescale 1ns / 1ps

module Main_1(
    input sel,
    input btnc,
    input rstn,
    input clk,
    output [7:0] an,
    output [6:0] cn
    ////////////////调试
    // output afterps,
    // output [31:0] Q
    );
    wire y1,y2,in;
    wire [31:0]q;   //计数器的输出
    DB db(
        .x(btnc),
        .rstn(rstn),
        .clk(clk),
        .y(y1)
    );
    assign y2=sel?y1:btnc;
    PS ps(
        .x(y2),
        .rstn(rstn),
        .clk(clk),
        .y(in)
    );
    CNT #(
        .WIDTH(32),
        .RST_VLU(0)
    ) cnt(
        .d(32'h00000000),
        .pe(1'b0),
        .ce(in),
        .rstn(rstn),
        .clk(clk),
        .Q(q)
    );
    DIS dis(
        .d(q),
        .rstn(rstn),
        .clk(clk),
        .an(an),
        .cn(cn)
    );

///////////////////
// assign afterps=in;
// assign Q=q;
endmodule
