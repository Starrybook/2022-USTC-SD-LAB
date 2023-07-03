`timescale 1ns / 1ps
//十六位减法器a-b
//10/19 17:01
module SUBTRACTOR_16(
    input [15:0] a,
    input [15:0] b,
    output [15:0] d
    );
    
    wire [15:0] c;
    FULLSUBTRACTOR fs(.a(a[0]),.b(b[0]),.ci(1'b0),.d(d[0]),.co(c[0]));
    genvar i;
    generate
        for(i=1;i<16;i=i+1)
            begin:FULLSUBTRACTOR
                FULLSUBTRACTOR fs(.a(a[i]),.b(b[i]),.ci(c[i-1]),.d(d[i]),.co(c[i]));
            end
    endgenerate
    // assign co=c[15];
endmodule
