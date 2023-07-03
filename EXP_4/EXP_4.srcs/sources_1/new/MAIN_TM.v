`timescale 1ns / 1ps

module MAIN_TM(
    input [15:0] tc,
    input x,
    input rstn,
    input clk,
    output td,
    output [7:0] an,
    output [6:0] cn,
    output [15:0] cnt,
    output in,
    ////////////////////测试用接口
    output [31:0] Q,
    output test_y
    // output test_clkd,
    // output [31:0] test_counter
    );
    wire [31:0] q;
    wire xx,y;
    assign cnt=q[15:0];
    assign in=xx;
    DB #(
        .T(10),
        .MS(100000)
        // .T(2),
        // .MS(1)
    )db(
        .x(x),
        .rstn(rstn),
        .clk(clk),
        .y(xx)
    );
    PS ps(
        .x(xx),
        .rstn(rstn),
        .clk(clk),
        .y(y)
    );
    TM #(
        .T(1000),
        .MS(100000)
        // .T(5),
        // .MS(1)
    )tm(
        .tc(tc),
        .st(y),
        .rstn(rstn),
        // .clk(clkd),
        .clk(clk),
        .q(q),
        .td(td)
        //////////////测试用接口
        // .test_clkd(test_clkd)
        // .test_counter(test_counter)
    );
    DIS #(
        .refreshT(1),
        .MS(100000)
        // .refreshT(1),
        // .MS(1)
    )dis(
        .d(q),
        .rstn(rstn),
        .clk(clk),
        .an(an),
        .cn(cn)
    );
    ////////////////////测试用接口
    assign Q=q;
    assign test_y=y;
endmodule
