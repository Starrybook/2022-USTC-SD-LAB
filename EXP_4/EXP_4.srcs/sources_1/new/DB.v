`timescale 1ns / 1ps

module DB#(
    parameter T=10,         // 单位为毫秒
              MS=100000    // 单位：假设clk周期为100MHz，MS=10^(6-1)
)(
    input x,
    input rstn,
    input clk,
    output reg y
    );
    reg [31:0] counter=32'h0000_0000;
    always @(posedge clk,negedge rstn) begin
        if(~rstn) begin
            y<=1'b0;
            counter<=32'h0000_0000;
        end
        else begin
            if(counter>=T*MS) begin
                y<=x;
                counter<=32'h0000_0000;
            end
            else
                counter<=counter+1'h1;
        end
    end

endmodule
