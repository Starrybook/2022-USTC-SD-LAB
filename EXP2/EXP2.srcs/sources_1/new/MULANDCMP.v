`timescale 1ns / 1ps
//乘法与比较的主模块
//10/19 13:01
module MULANDCMP(
    input [7:0] a,
    input [7:0] b,
    input clk,
    input rstn,
    input en,
    output [15:0] y,
    output eq,
    output ug,
    output ul,
    output sg,
    output sl
    );
    //两个寄存器的输出
    wire [7:0]qa;
    wire [7:0]qb;
    //乘法均为有符号乘法
    //自定义乘法
    wire [15:0] multi1;
    //vivado乘法
    wire [15:0] multi2;
    //vivado等于
    wire equal;
    wire tempug,tempul,tempsg,tempsl;
    wire [4:0] res;
    RG RGA(
        .d(a),
        .en(en),
        .rstn(rstn),
        .clk(clk),
        .q(qa)
    );
    RG RGB(
        .d(b),
        .en(en),
        .rstn(rstn),
        .clk(clk),
        .q(qb)
    );
    RG #(.WIDTH(16))
    RGY(
        .d(multi1),
        .en(en),
        .rstn(rstn),
        .clk(clk),
        .q(y)
    );
    RG #(.WIDTH(5))
    RGQ(
        .d({equal,tempug,tempul,tempsg,tempsl}),
        .en(en),
        .rstn(rstn),
        .clk(clk),
        .q(res)
    );
    MUL MULTI(
        .a(qa),
        .b(qb),
        .y(multi1)
    );
    assign multi2=qa * qb;
    assign equal=(multi2==multi1);
    CMP CMPAB(
        .a(qa),
        .b(qb),
        .ug(tempug),
        .ul(tempul),
        .sg(tempsg),
        .sl(tempsl)
    );
    assign eq=res[4];
    assign ug=res[3];
    assign ul=res[2];
    assign sg=res[1];
    assign sl=res[0];

endmodule
