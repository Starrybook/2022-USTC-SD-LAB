`timescale 1ns / 1ps
//Mealy型，序列码，二段式
module SQD_Mealy_2(
    input x,
    input rstn,
    input clk,
    output yl,
    output [2:0] sl
);

    parameter [2:0]
    ZERO=3'b000,
    A=3'b001,
    B=3'b011,
    C=3'b110,
    D=3'b101;

    reg [2:0]cs;
    reg [2:0]ns;
    reg reg_yl=0;
    assign yl=reg_yl;
    assign sl=cs;
    // 二段式，组合部分
    always  @(*) begin
        reg_yl=0;
        ns=cs;
        case(cs)
            ZERO: begin
                ns<=x?A:ZERO;
                reg_yl<=0;
            end
            A:    begin
                ns<=x?B:ZERO;
                reg_yl<=0;
            end
            B:    begin
                ns<=x?B:C;
                reg_yl<=0;
            end
            C:    begin
                ns<=x?D:ZERO;
                reg_yl<=x;
            end
            D:    begin
                ns<=x?B:ZERO;
                reg_yl<=0;
            end
            3'b010: begin
                ns<=x?A:ZERO;
                reg_yl<=0;
            end
            3'b100: begin
                ns<=x?B:ZERO;
                reg_yl<=0;
            end
            3'b111: begin
                ns<=x?B:C;
                reg_yl<=0;
            end
            default begin
                ns<=ZERO;
                reg_yl<=0;
            end
        endcase
    end
    // 时序部分
    always @(posedge clk,negedge rstn) begin
        if(!rstn)
            cs=ZERO;
        else
            cs<=ns;
    end
endmodule