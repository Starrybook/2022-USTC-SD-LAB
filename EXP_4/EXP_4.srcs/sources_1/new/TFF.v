`timescale 1ns / 1ps
// T触发器
module TFF(
    input t,
    input rstn,
    input clk,
    output reg q
    );
    always @(posedge clk,negedge rstn) begin 
        if(!rstn)
            q<=0;
        else
            q<=t?~q:q;
    end
endmodule

module DFF(
    input d,
    input rstn,
    input clk,
    output reg q
);
    always @(posedge clk,negedge rstn)
        if(!rstn)
            q<=0;
        else
            q<=d;
endmodule
// 以下两个并未使用
module FF(
    input rstn,
    input clk,
    output reg q
);
    always @(posedge clk,negedge rstn)
        if(!rstn)
            q<=0;
        else
            q<=1;
endmodule

module rstRG(
    input d,
    input rst,
    input rstn,
    input clk,
    output reg q
);

    always @(posedge clk,negedge rstn)
        if(!rstn)
            q<=0;
        else if(rst)
            q<=0;
        else
            q<=d;
endmodule