`timescale 1ns / 1ps

module ADDER_SERIAL_8(
    input [7:0]a,
    input [7:0]b,
    input ci,
    output [7:0]s,
    output co
    );

    wire [7:0] c;
    FULLADDER fd(.a(a[0]),.b(b[0]),.ci(ci),.s(s[0]),.co(c[0]));
    genvar i;
    generate
        for(i=1;i<8;i=i+1)
            begin:FULLADDER
                FULLADDER fd(.a(a[i]),.b(b[i]),.ci(c[i-1]),.s(s[i]),.co(c[i]));
            end
    endgenerate
    assign co=c[7];
endmodule
