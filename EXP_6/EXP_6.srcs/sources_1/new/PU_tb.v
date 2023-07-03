`timescale 1ns / 1ps

module PU_tb(
    );
    reg clk=0,rstn;
    always #5 clk=~clk;
    reg [3:0] dir;
    reg draw;
    reg [11:0] prgb;
    wire [14:0] waddr;
    wire [11:0] wdata;
    wire we;
    ////////////////调试用端口
    wire [12:0] test_curx,test_cury;
    PU #(20,15,0,0) pu(
        .clk(clk),.rstn(rstn),
        .dir(dir),
        .prgb(prgb),
        .draw(draw),
        .waddr(waddr),
        .wdata(wdata),
        .we(we),
        .test_curx(test_curx),
        .test_cury(test_cury)
    );
    initial begin
        rstn=0;
        dir=0;draw=0;prgb=12'habc;
        #10 rstn=1;
        draw=1;
        #10 draw=0;
        repeat(10)
        #20 dir=4'b0100;
        repeat(12)
        #20 dir=4'b1000;
        repeat(10)
        #20 dir=4'b0001;
        repeat(12)
        #20 dir=4'b0010;

        repeat(10)
        #20 dir=4'b0101;    // 右下
        repeat(12)
        #20 dir=4'b0110;    // 左下
        repeat(10)
        #20 dir=4'b1001;    // 右上
        repeat(12)
        #20 dir=4'b1010;    // 左上
        #20 $finish;
    end
endmodule
