`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/12/01 16:43:55
// Design Name: 
// Module Name: GhostDirList
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


module GhostDirList#(
    parameter   width=16,
                height=8
)(
    input [3:0] rx1,rx2,wx1,wx2,
    input [2:0] ry1,ry2,wy1,wy2,
    input [3:0] wdata,
    input we,
    input rstn,clk,
    output reg [3:0] rdata
    );
    // deal with address calculation
    // waddr=((wy1>>1)*width+wx1)*(height*width)+wy2*width+wx2
    // sel[wy1>>1] = 1, else = 0
    reg [11:0] raddr,waddr;
    reg [3:0] sel;
    reg [1:0] s;
    wire [3:0] r0,r1,r2,r3;
    always @(*) begin
        waddr=((wy1[0])*width+wx1)*(height*width)+wy2*width+wx2;
        raddr=((ry1[0])*width+rx1)*(height*width)+ry2*width+rx2;
        if(we)  case(wy1[2:1])
                2'b00:  sel=4'b0001;
                2'b01:  sel=4'b0010;
                2'b10:  sel=4'b0100;
                2'b11:  sel=4'b1000;
            endcase
        else            sel=4'b0000;
        s=ry1[2:1];
        case(s)
            2'b00:  rdata=r0;
            2'b01:  rdata=r1;
            2'b10:  rdata=r2;
            2'b11:  rdata=r3;
        endcase
    end
    // BRAMs
    GhostDirList_0 GDL0 (
    .clka(clk),    // input wire clka
    .wea(sel[0]),      // input wire [0 : 0] wea
    .addra(waddr),  // input wire [11 : 0] addra
    .dina(wdata),    // input wire [3 : 0] dina
    .clkb(clk),    // input wire clkb
    .addrb(raddr),  // input wire [11 : 0] addrb
    .doutb(r0)  // output wire [3 : 0] doutb
    );
    GhostDirList_1 GDL1 (
    .clka(clk),    // input wire clka
    .wea(sel[1]),      // input wire [0 : 0] wea
    .addra(waddr),  // input wire [11 : 0] addra
    .dina(wdata),    // input wire [3 : 0] dina
    .clkb(clk),    // input wire clkb
    .addrb(raddr),  // input wire [11 : 0] addrb
    .doutb(r1)  // output wire [3 : 0] doutb
    );
    GhostDirList_2 GDL2 (
    .clka(clk),    // input wire clka
    .wea(sel[2]),      // input wire [0 : 0] wea
    .addra(waddr),  // input wire [11 : 0] addra
    .dina(wdata),    // input wire [3 : 0] dina
    .clkb(clk),    // input wire clkb
    .addrb(raddr),  // input wire [11 : 0] addrb
    .doutb(r2)  // output wire [3 : 0] doutb
    );
    GhostDirList_3 GDL3 (
    .clka(clk),    // input wire clka
    .wea(sel[3]),      // input wire [0 : 0] wea
    .addra(waddr),  // input wire [11 : 0] addra
    .dina(wdata),    // input wire [3 : 0] dina
    .clkb(clk),    // input wire clkb
    .addrb(raddr),  // input wire [11 : 0] addrb
    .doutb(r3)  // output wire [3 : 0] doutb
    );
endmodule
