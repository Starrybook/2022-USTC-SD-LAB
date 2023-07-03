`timescale 1ns / 1ps
// 四个状态，用两位数编码，所以第三位恒为零(sl[2])
module Mealy_4States(
    input x,
    input rstn,
    input clk,
    output yl,
    output [1:0] sl
    );
    

    parameter [2:0]
    ZERO=2'b00,
    A=2'b01,
    B=2'b10,
    C=2'b11;

    reg [1:0]cs;
    reg [1:0]ns;
    reg reg_yl=0;
    assign yl=reg_yl;
    assign sl=cs;
    // 二段式，第一段为
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
                ns<=x?A:ZERO;
                reg_yl<=x;
            end
            default begin
                ns<=ZERO;
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
