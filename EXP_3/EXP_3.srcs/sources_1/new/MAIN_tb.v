`timescale 1ns / 1ps

module MAIN_tb(
    );
    parameter clk_period=10;
    reg clk,rstn;
    reg x;
    wire yr,yl;
    wire [2:0] sl;
    wire [4:0] sr;
    wire [7:0] rx;
    MAIN main(
        .x(x),
        .clk(clk),
        .rstn(rstn),
        .yr(yr),
        .yl(yl),
        .sl(sl),
        .sr(sr),
        .rx(rx)
    );

    initial
        clk=0;
    always #(clk_period/2) clk=~clk;
    initial begin
        rstn=0; x=0;
        #10 rstn=1;
        #2 x=0;
        // 输入01101101
        #10 x=0;         // yr=0,yl=0,rx=0000_0000
        #10 x=1;         // yr=0,yl=0,rx=0000_0001
        #10 x=1;         // yr=0,yl=0,rx=0000_0011
        #10 x=0;         // yr=0,yl=0,rx=0000_0110
        #10 x=1;         // yr=1,yl=1,rx=0000_1101
        #10 x=1;         // yr=0,yl=0,rx=0001_1011
        #10 x=0;         // yr=0,yl=0,rx=0011_0110
        #10 x=1;         // yr=1,yl=1,rx=0110_1101
        #10 x=0;         // yr=0,yl=0,rx=1101_1010
        #10 rstn=0;
        #10 rstn=1;
        // 输入01010011
        #10 x=0;         // yr=0,yl=0,rx=0000_0000
        #10 x=1;         // yr=0,yl=0,rx=0000_0001
        #10 x=0;         // yr=0,yl=0,rx=0000_0010
        #10 x=1;         // yr=0,yl=0,rx=0000_0101
        #10 x=0;         // yr=0,yl=0,rx=0000_1010
        #10 x=0;         // yr=0,yl=0,rx=0001_0100
        #10 x=1;         // yr=0,yl=0,rx=0010_1001
        #10 x=1;         // yr=0,yl=0,rx=0101_0011
        #10 $finish;
    end
endmodule