`timescale 1ns / 1ps

module SUBTRACTOR_tb(
    );
    reg [15:0] a;
    reg [15:0] b;
    wire [15:0] y;
    SUBTRACTOR_16 sub(
        .a(a),
        .b(b),
        .d(y)
    );

    initial begin
        //ab均为0的情况
        a=8'b0000_0000_0000_0000;
        b=8'b0000_0000_0000_0000;         //0
        //a>b
        #10 a=16'h00FF;
            b=16'h000F;     //00F0
        #10 a=16'hFFFF;
            b=16'hFF0F;     //00F0
        //a=b
        #10 a=16'h00FF;
            b=16'h00FF;     //0000
        //a<b
        #10 a=16'h00FF;
            b=16'h0FFF;     //f100
        #10 $finish;
    end
endmodule