`timescale 1ns / 1ps
// 加入光标
module VRAM#(
    parameter INTERVAL=300,
              MS=100000
)(
    input [14:0] waddr,
    input [15:0] wdata,
    input we,
    input clk,pclk,
    input [14:0] raddr,
    input ifdraw,
    output [15:0] rdata
    );
    wire [15:0] data;
    reg [32:0] counter=0;
    reg [15:0] curDefault=16'h0000;
    blk_mem_gen_0 blk0(
    .clka(clk),    // input wire clka
    .wea(we),      // input wire [0 : 0] wea
    .addra(waddr),  // input wire [14 : 0] addra
    .dina(wdata),    // input wire [15 : 0] dina
    .clkb(pclk),    // input wire clkb
    .addrb(raddr),  // input wire [14 : 0] addrb
    .doutb(data)  // output wire [15 : 0] doutb
    );
    always @(posedge clk) begin
        if(counter<INTERVAL*MS) begin
            counter<=counter+1;
            curDefault<=curDefault;
        end
        else begin
            counter=0;
            curDefault<=~curDefault;
        end
    end
    assign rdata=(~ifdraw)&&(waddr==raddr)?curDefault:data;
endmodule