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
    //////////////测试用接口
    // output CLKD,
    // output [3:0] NUM,
    // output [2:0] SIGN
    );
    // d分为八个部分：d[3:0],d[7:4],d[11:8],d[15:12],d[19:16],d[23:20],d[27:24],d[31:28]
    // 依次对应an[0],an[1],an[2],an[3]
    wire clkd;          // 分频后的时钟，刷新周期，大概在1~20ms
    // wire sg;            // 计数结果，作为选择信号
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
///////////////测试用接口
// assign CLKD=clkd;//
// assign NUM=num;//
// assign SIGN=sign;//
endmodule
