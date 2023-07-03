`timescale 1ns / 1ps

module MAIN(
    input x,
    input clk,
    input rstn,
    output yl,
    output yr,
    output [2:0] sl,
    output [4:0] sr,
    output [7:0] rx
    );
    // SQD_Mealy_2 sqd1(
    //     .x(x),
    //     .clk(clk),
    //     .rstn(rstn),
    //     .yl(yl),
    //     .sl(sl)
    // );
    Mealy_4States sqd1(
        .x(x),
        .clk(clk),
        .rstn(rstn),
        .yl(yl),
        .sl(sl[1:0])
    );
    assign sl[2]=0;
    SQD_Moore_3 sqd2(
        .x(x),
        .clk(clk),
        .rstn(rstn),
        .yr(yr),
        .sr(sr)
    );
    SHIFTRG rg7(
        .x(x),
        .clk(clk),
        .rstn(rstn),
        .y(rx)
    );
endmodule
