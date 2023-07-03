`timescale 1ns / 1ps

module DIS#(
    parameter refreshT=1,         // 单位为毫秒
              MS=100000            // 单位：假设clk周期为100MHz，MS=10^(6-1)
)(
    input [31:0] d,
    input rstn,
    input clk,
    output [7:0] an,
    output [6:0] cn
    );
    wire clkd;          // 分频后的时钟，刷新周期，大概在1~20ms
    reg [2:0] sign=0;     // 储存计数结果
    reg [3:0] num;
    reg [7:0]tempan;
    assign an=tempan;
    udf_FD fd(
        .k(32'h0000_0001*refreshT*MS),      //100MHz时周期的refreshT*MS倍
        .rstn(rstn),
        .clk(clk),
        .y(clkd)
    );
    always @(posedge clkd,negedge rstn) begin
        if(!rstn) begin   // 置零
            sign<=3'b000;
        end
        else begin
            sign<=sign+3'b001;
        end
    end

    always @(*) begin
        case(sign)
                3'b000: begin 
                    num<=d[3:0];
                    tempan<=8'b1111_1110;
                end
                3'b001: begin 
                    num<=d[7:4];
                    tempan<=8'b1111_1101;
                end
                3'b010: begin 
                    num<=d[11:8];
                    tempan<=8'b1111_1011;
                end
                3'b011: begin 
                    num<=d[15:12];
                    tempan<=8'b1111_0111;
                end
                3'b100: begin 
                    num<=d[19:16];
                    tempan<=8'b1110_1111;
                end
                3'b101: begin 
                    num<=d[23:20];
                    tempan<=8'b1101_1111;
                end
                3'b110: begin 
                    num<=d[27:24];
                    tempan<=8'b1011_1111;
                end
                3'b111: begin 
                    num<=d[31:28];
                    tempan<=8'b0111_1111;
                end
                default:    ;       // 已遍历所有情况
            endcase
    end
    SEG7 seg7(
        .d(num),
        .yn(cn)
    );
endmodule

module SEG7(
    input [3:0] d,
    output reg [6:0] yn
    );

    always @(*)
    begin
        case(d)
            //低电平有效
            4'b0000: yn=7'b1000000;
            4'b0001: yn=7'b1111001;
            4'b0010: yn=7'b0100100;
            4'b0011: yn=7'b0110000;
            4'b0100: yn=7'b0011001;
            4'b0101: yn=7'b0010010;
            4'b0110: yn=7'b0000010;
            4'b0111: yn=7'b1111000;
            4'b1000: yn=7'b0000000;
            4'b1001: yn=7'b0010000;
            4'b1010: yn=7'b0001000;     // A
            4'b1011: yn=7'b0000011;
            4'b1100: yn=7'b1000110;
            4'b1101: yn=7'b0100001;
            4'b1110: yn=7'b0000110;
            4'b1111: yn=7'b0001110;
            default: yn=7'b1111111;
        endcase
    end
endmodule
