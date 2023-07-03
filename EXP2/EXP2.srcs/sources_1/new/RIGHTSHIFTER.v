`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/10/19 16:28:18
// Design Name: 
// Module Name: RIGHTSHIFTER
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


module RIGHTSHIFTER(
    input [15:0] a,
    output [15:0] y
    );
    assign y[15]=a[0];
    genvar i;
    for(i=0;i<15;i=i+1) begin
        assign y[i]=a[i+1];
    end
endmodule
