`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/09/29 16:56:41
// Design Name: 
// Module Name: decoder10_4
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


module decoder10_4(
    input [3:0]d,
    output reg [9:0]y
    );

    always @(*)
    begin
        case(d)
            4'b0000: y=10'b0000_0000_01;
            4'b0001: y=10'b0000_0000_10;
            4'b0010: y=10'b0000_0001_00;
            4'b0011: y=10'b0000_0010_00;
            4'b0100: y=10'b0000_0100_00;
            4'b0101: y=10'b0000_1000_00;
            4'b0110: y=10'b0001_0000_00;
            4'b0111: y=10'b0010_0000_00;
            4'b1000: y=10'b0100_0000_00;
            4'b1001: y=10'b1000_0000_00;
            default: y=10'b0000_0000_00;
        endcase
    end
endmodule
