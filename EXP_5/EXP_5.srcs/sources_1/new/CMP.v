`timescale 1ns / 1ps

module CMP#(
    parameter WIDTH=16
)(
    input [WIDTH-1:0] a,b,
    output ifLess
    );
    assign ifLess=(a>b)?1:0;
endmodule
