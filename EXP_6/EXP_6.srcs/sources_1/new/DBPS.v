`timescale 1ns / 1ps

// module DBPS#(
//     parameter T=10,
//               MS=100000,
//               WIDTH=1
//     // parameter T=2,
//     //           MS=1
// )(
//     input [WIDTH-1:0] x,
//     input rstn,
//     input clk,
//     output [WIDTH-1:0] y
//     );
//     wire [WIDTH-1:0] y0;
//     DB#(
//         .T(T),
//         .MS(MS),
//         .WIDTH(WIDTH)
//     ) db(
//         .x(x),
//         .rstn(rstn),
//         .clk(clk),
//         .y(y0)
//     );
//     PS #(
//         .WIDTH(WIDTH)
//     ) ps(
//         .x(y0),
//         .rstn(rstn),
//         .clk(clk),
//         .y(y)
//     );
// endmodule

module DB#(
    parameter T=10,         // 单位为毫秒
              MS=100000,    // 单位：假设clk周期为100MHz，MS=10^(6-1)
              WIDTH=1
)(
    input [WIDTH-1:0] x,
    input rstn,
    input clk,
    output reg [WIDTH-1:0] y
    );
    reg [31:0] counter=32'h0000_0000;
    always @(posedge clk,negedge rstn) begin
        if(~rstn) begin
            y<=0;
            counter<=32'h0000_0000;
        end
        else begin
            if(counter>=T*MS) begin
                y<=x;
                counter<=32'h0000_0000;
            end
            else
                counter<=counter+1;
        end
    end
endmodule

module PS#(
    parameter WIDTH=1
)(
    input  [WIDTH-1:0] x,
    input  rstn,
    input  clk,
    output [WIDTH-1:0] y
    );
    reg [WIDTH-1:0] former;
    always @(posedge clk,negedge rstn) begin
        if(!rstn)
            former<=0;
        else
            former<=x;
    end
    assign y=x&~former;
endmodule
// 增加了连击功能的ps
module PS_plus#(
    parameter WIDTH=1,
    INTERVAL=100,        // 持续按压时每间隔INTERVAL*MS产生一个脉冲
    MS=100000
)(
    input [WIDTH-1:0] x,
    input  rstn,
    input  clk,
    output [WIDTH-1:0] y
    );
    reg [WIDTH-1:0] former;
    reg [32:0] cnt=0;
    always @(posedge clk,negedge rstn) begin
        if(!rstn) begin
            former<=0;
            cnt<=0;
        end
        else if(cnt<INTERVAL*MS) begin
            former<=x;
            cnt<=cnt+1;
        end
        else begin
            former<=0;
            cnt<=0;
        end
    end
    assign y=x&~former;
endmodule