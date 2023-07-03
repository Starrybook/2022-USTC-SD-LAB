`timescale 1ns/1ps
//半加器
module HALFADDER(
    input a,
    input b,
    output s,
    output c
);

    assign s=a^b;
    assign c=a&b;
endmodule