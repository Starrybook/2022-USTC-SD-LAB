`timescale 1ns / 1ps

// 分频器，k为奇数时低电平比高电平持续时间多一个时钟周期
module udf_FD(
    input [31:0] k,     // k应当>=2
    input rstn,
    input clk,
    output reg y
    // output [31:0] ctr   /////////
    );
    reg [31:0] counter=32'h0000_0000;
    always @(posedge clk,negedge rstn) begin
        if(~rstn) begin
            counter<=32'h0000_0000;
            y<=0;       // 输出也被异步清零
        end
        else if(k==0) begin
            counter<=32'h0000_0000;
            y<=0;
        end
        else begin
            if(counter<k) begin
                if(counter==0||counter==k/2)
                    y<=~y;
                if(counter+1==k)
                    counter<=32'h0000_0000;
                else
                    counter<=counter+1'b1;
            end
        end
    end
endmodule