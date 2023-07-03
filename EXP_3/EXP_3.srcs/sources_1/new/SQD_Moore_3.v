`timescale 1ns / 1ps
//Moore型，独热码，三段式
module SQD_Moore_3(
    input x,
    input rstn,
    input clk,
    output yr,
    output [4:0] sr
);

    parameter [4:0]
    ZERO=5'b00001,
    A=5'b00010,
    B=5'b00100,
    C=5'b01000,
    D=5'b10000;

    reg [4:0]cs;
    reg [4:0]ns;
    reg reg_yr=0;
    assign yr=reg_yr;
    assign sr=cs;
    
    // 处理组合逻辑
    always @(*) begin
        ns=cs;
        case(cs)
            ZERO:   ns<=x?A:ZERO;
            A:      ns<=x?B:ZERO;
            B:      ns<=x?B:C;
            C:      ns<=x?D:ZERO;
            D:      ns<=x?B:ZERO;
            default:ns<=ZERO;
        endcase
    end
    // 处理时序逻辑
    always @(posedge clk,negedge rstn) begin
        if(!rstn)
            cs=ZERO;
        else
            cs<=ns;
    end
    //处理输出
    always @(*) begin
        reg_yr=0;
        if(cs==D)
            reg_yr=1;
    end

endmodule