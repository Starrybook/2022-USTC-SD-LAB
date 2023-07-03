`timescale 1ns / 1ps

module MAZEINIT_tb(
    );
    // parameter width=6,height=3;
    reg rstn,clk=0;
    reg start;
    always #5  clk=~clk;
    wire busy;
    wire [3:0] wx;
    wire [2:0] wy;
    wire [3:0] gwx;
    wire [2:0] gwy;
    wire [3:0] listData;
    wire [3:0] rx;
    wire [2:0] ry;
    wire [3:0] grx;
    wire [2:0] gry;
    wire [3:0] listState;
    wire we;
    wire [3:0] selfx;
    wire [2:0] selfy;
    wire [3:0] ghostx;
    wire [2:0] ghosty;
    wire [6:0] mapState;
    wire [6:0] mapAddr;
    wire sign,CNTrecord1,CNTrecord2;
    wire [4:0] cs;
    MAZEINIT #(16,8) mazeinit(
        .start(start),
        .rstn(rstn),
        .clk(clk),
        .listState(listState),
        .mapState(mapState),
        .busy(busy),
        .listData(listData),
        .mapAddr(mapAddr),
        .wx(wx),
        .gwx(gwx),
        .rx(rx),
        .grx(grx),
        .wy(wy),
        .gwy(gwy),
        .ry(ry),
        .gry(gry),
        .we(we),
        .test_sign(sign),
        .test_record1(CNTrecord1),
        .test_record2(CNTrecord2),
        .test_selfx(selfx),
        .test_selfy(selfy),
        .test_ghostx(ghostx),
        .test_ghosty(ghosty),
        .test_cs(cs)
    );
    GhostDirList #(16,8) gdl(
        .rx1(rx),
        .rx2(grx),
        .wx1(wx),
        .wx2(gwx),
        .ry1(ry),
        .ry2(gry),
        .wy1(wy),
        .wy2(gwy),
        .wdata(listData),
        .we(we),
        .rstn(rstn),
        .clk(clk),
        .rdata(listState)
    );
    MAZEMODEL MM (
    .clka(clk),    // input wire clka
    .wea(1'b0),      // input wire [0 : 0] wea
    .addra(7'h00),  // input wire [6 : 0] addra
    .dina(7'h00),    // input wire [6 : 0] dina
    .clkb(clk),    // input wire clkb
    .addrb(mapAddr),  // input wire [6 : 0] addrb
    .doutb(mapState)  // output wire [6 : 0] doutb
    );
    initial begin
        rstn=0;
        start=0;
        #10 rstn=1;
            start=1;
        #10 start=0;
        #120000   $finish;
    end
endmodule