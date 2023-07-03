`timescale 1ns / 1ps
//半加器
module FULLADDER(
    input a,
    input b,
    input ci,
    output s,
    output co
);
    wire s1,c1,c2;
    HALFADDER hd1(
        .a(a),
        .b(b),
        .s(s1),
        .c(c1)
    );
    HALFADDER hd2(
        .a(s1),
        .b(ci),
        .s(s),
        .c(c2)
    );
    assign co=c1|c2;
endmodule