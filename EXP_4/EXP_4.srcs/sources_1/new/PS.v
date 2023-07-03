`timescale 1ns / 1ps

module PS(
    input x,
    input rstn,
    input clk,
    output y
    );
    reg former;
    always @(posedge clk,negedge rstn) begin
        if(!rstn)
            former<=0;
        else
            former<=x;
    end
    assign y=x&~former;
endmodule
