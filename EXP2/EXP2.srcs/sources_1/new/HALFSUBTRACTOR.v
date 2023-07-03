`timescale 1ns / 1ps
//半减器,a为被减数
//10/19 16:55
module HALFSUBTRACTOR(
    input a,
    input b,
    output d,
    output c
    );
    assign d=(a^b);
    assign c=~a&b;
endmodule
