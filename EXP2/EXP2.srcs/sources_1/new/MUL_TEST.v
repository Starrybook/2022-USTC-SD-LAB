`timescale 1ns / 1ps
//测试乘法器
//10/20 7:58
module MUL_TEST(
    input [7:0] a,
    input [7:0] b,
    input clk,
    input rstn,
    output [15:0] y
    );
    //两个寄存器的输出
    wire [7:0]qa;
    wire [7:0]qb;
    //乘法均为有符号乘法
    //自定义乘法
    wire [15:0] multi1;
    RG RGA(
        .d(a),
        .en(1'b1),
        .rstn(rstn),
        .clk(clk),
        .q(qa)
    );
    RG RGB(
        .d(b),
        .en(1'b1),
        .rstn(rstn),
        .clk(clk),
        .q(qb)
    );
    RG #(.WIDTH(16))
    RGY(
        .d(multi1),
        .en(1'b1),
        .rstn(rstn),
        .clk(clk),
        .q(y)
    );
    MUL MULTI(
        .a(qa),
        .b(qb),
        .y(multi1)
    );

endmodule
