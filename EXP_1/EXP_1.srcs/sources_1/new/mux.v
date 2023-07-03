`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/09/29 21:28:26
// Design Name: 
// Module Name: mux
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module mux(
    input [9:0] a,
    input [3:0] b,
    input e,
    output f,
    output [3:0] d,
    output [9:0] y,
    output [6:0] c,
    output DP,
    output [7:0]AN
    );

    wire l;
    wire [3:0]h;
    wire [3:0]n;
    wire [3:0]m;
    encoder10_4 ECD(e,a,f,d);
    assign l=f;
    assign h=d;
    mux2_1 MUX(b,h,l,m);
    assign n=m;
    decoder10_4 DCD(n,y);
    seg7_decoder SDD(m,c);
    assign DP=1'b1;
    assign AN=8'b1111_1110;
endmodule
