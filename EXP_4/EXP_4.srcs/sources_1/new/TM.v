`timescale 1ns / 1ps
// 和此前不同，没有调用FD模块，使用两个计数器实现（秒计数器和10ns计数器）
module TM #(
    parameter T=1000,           // 1000毫秒，即为秒
              MS=100000
)(
    input [15:0] tc,
    input st,
    input rstn,         // 复位后q=0,d=1
    input clk,
    output [31:0] q,
    output reg td
    );
    reg [31:0] counter0;
    reg [31:0] counter;
    parameter timeinterval=T*MS;
    always @(posedge clk, negedge rstn) begin
        if(!rstn) begin
            counter0<=0;
            counter<=0;
            td<=1;
        end
        else if(st) begin
            counter<={16'h0000,tc};
            counter0<=(tc==0)?0:timeinterval;
            td=(tc==0)?1:0;
        end
        else if(counter0==0&&counter<=1) begin
            counter0<=0;
            counter<=0;
            td<=1;
        end
        else if(counter0==0&&counter>1) begin
            counter0<=timeinterval;
            counter<=counter-1;
            td<=0;
        end
        else begin
            counter0<=counter0-1;
            counter<=counter;
            td<=0;
        end
    end
    assign q=counter;
endmodule