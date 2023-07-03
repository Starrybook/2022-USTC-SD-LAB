`timescale 1ns / 1ps

// 10/19 12：51
// 10/19 19:55
// 把ci，co去除，因为在主模块中影响
module ADDER_SERIAL_16(
    input [15:0]a,
    input [15:0]b,
    //input ci,
    output [15:0]s
    //output co
    );
    
    wire [15:0] c;
    FULLADDER fd(.a(a[0]),.b(b[0]),.ci(1'b0),.s(s[0]),.co(c[0]));
    genvar i;
    generate
        for(i=1;i<16;i=i+1)
            begin:FULLADDER
                FULLADDER fd(.a(a[i]),.b(b[i]),.ci(c[i-1]),.s(s[i]),.co(c[i]));
            end
    endgenerate
    //assign co=c[15];
endmodule
