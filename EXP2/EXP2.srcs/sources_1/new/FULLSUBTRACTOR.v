`timescale 1ns / 1ps
//全减器
//10/19 16:55
module FULLSUBTRACTOR(
    input a,
    input b,
    input ci,
    output d,
    output co
    );
    wire d1,c1,c2;
    HALFSUBTRACTOR HS1(
        .a(a),
        .b(b),
        .d(d1),
        .c(c1)
    );
    HALFSUBTRACTOR HS2(
        .a(d1),
        .b(ci),
        .d(d),
        .c(c2)
    );
    assign co=c1|c2;
endmodule
