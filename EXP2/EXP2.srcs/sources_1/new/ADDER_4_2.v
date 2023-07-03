`timescale 1ns / 1ps
//4位超前进位加法器*2
module ADDER_4_2(
    input [7:0]a,
    input [7:0]b,
    input ci,
    output [7:0]s,
    output co
    );
    wire tempci;
    ADDER_PARALLEL_4 adder1(
        .a(a[3:0]),
        .b(b[3:0]),
        .ci(ci),
        .s(s[3:0]),
        .co(tempci)
    );
    ADDER_PARALLEL_4 adder2(
        .a(a[7:4]),
        .b(b[7:4]),
        .ci(tempci),
        .s(s[7:4]),
        .co(co)
    );
endmodule