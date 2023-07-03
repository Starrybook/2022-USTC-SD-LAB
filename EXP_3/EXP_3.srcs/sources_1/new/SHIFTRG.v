`timescale 1ns / 1ps

module SHIFTRG(
    input x,
    output reg [7:0] y,
    input clk,
    input rstn
    );
    reg [7:0] temp;
    integer i;
    always @(posedge clk,negedge rstn) begin
        if(!rstn)
            y<=8'b0000_0000;
        else begin
            for(i=7;i>0;i=i-1)
                y[i]=y[i-1];
            y[0]=x;
        end
    end
endmodule
