`timescale 1ns / 1ps
//寄存器
module RG
#(parameter WIDTH = 8
)(
    input clk,rstn,en,
    input [WIDTH-1:0]d,
    output reg [WIDTH-1:0]q
);

always @(posedge clk,negedge rstn)
    if(!rstn) q<=0;
    else if(en)
    q<=d;
endmodule