`timescale 1ns / 1ps
//左移移位器
//10/18 23:46
module LEFTSHIFTER(
    input [15:0] a,
    output [15:0] y
    );
    assign y[0]=1'b0;
    genvar i;
    for(i=1;i<16;i=i+1) begin
        assign y[i]=a[i-1];
    end
endmodule
