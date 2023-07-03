`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/09/29 16:42:39
// Design Name: 
// Module Name: encoder10_4
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


module encoder10_4(
    input e,
    input [9:0]a,
    output reg f,
    output reg [3:0]y
    );

    always @(*)
    begin
        f=1'b0;
        if(e&&(a!=10'b0000_0000_00)) f=1'b1;
        casex(a)
            10'b1xxx_xxxx_xx: y=4'b1001;
            10'b01xx_xxxx_xx: y=4'b1000;
            10'b001x_xxxx_xx: y=4'b0111;
            10'b0001_xxxx_xx: y=4'b0110;
            10'b0000_1xxx_xx: y=4'b0101;
            10'b0000_01xx_xx: y=4'b0100;
            10'b0000_001x_xx: y=4'b0011;
            10'b0000_0001_xx: y=4'b0010;
            10'b0000_0000_1x: y=4'b0001;
            10'b0000_0000_01: y=4'b0000;
            default: y=4'b0000;
        endcase
    end
endmodule
