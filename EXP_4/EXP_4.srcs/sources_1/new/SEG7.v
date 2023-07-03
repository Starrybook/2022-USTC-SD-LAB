`timescale 1ns / 1ps

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
