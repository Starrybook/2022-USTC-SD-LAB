`timescale 1ns / 1ps

module DBPS#(
    parameter T=10,
              MS=100000
    // parameter T=2,
    //           MS=1
)(
    input x,
    input rstn,
    input clk,
    output y
    );
    wire y0;
    DB#(
        .T(T),
        .MS(MS)
    ) db(
        .x(x),
        .rstn(rstn),
        .clk(clk),
        .y(y0)
    );
    PS ps(
        .x(y0),
        .rstn(rstn),
        .clk(clk),
        .y(y)
    );
endmodule

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