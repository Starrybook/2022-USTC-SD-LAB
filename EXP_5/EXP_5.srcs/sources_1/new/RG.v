`timescale 1ns / 1ps

module RG#(
    parameter WIDTH=4
    )(
    input [WIDTH-1:0]d,
    input rstn,
    input clk,
    output reg [WIDTH-1:0] q
    );
    always @(posedge clk,negedge rstn) begin
        if(!rstn)
            q<=0;
        else
            q<=d;
    end
endmodule
