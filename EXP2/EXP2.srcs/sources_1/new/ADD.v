`timescale 1ns / 1ps
//由寄存器与ADDER组成的串行加法器
module ADD(
    input [7:0]a,
    input [7:0]b,
    input ci,
    input rstn,
    input clk,
    input en,
    output [7:0]s,
    //output [15:0] s,
    output co
);
    wire [7:0] tempa;
    wire [7:0] tempb;
    wire tempci;
    wire tempco;
    wire temps;
    RG #(8) REGA(.clk(clk),.rstn(rstn),.en(en),.d(a),.q(tempa));
    RG #(8) REGB(.clk(clk),.rstn(rstn),.en(en),.d(b),.q(tempb));
    RG #(1) REGCI(.clk(clk),.rstn(rstn),.en(en),.d(ci),.q(tempci));
    RG #(8) REGS(.clk(clk),.rstn(rstn),.en(en),.d(temps),.q(s));
    RG #(1) REGCO(.clk(clk),.rstn(rstn),.en(en),.d(tempco),.q(co));
    // ADDER_SERIAL_8 adder1(
    //     .a(tempa),
    //     .b(tempb),
    //     .ci(tempci),
    //     .s(temps),
    //     .co(tempco)
    // );
    // ADDER_PARALLEL_8 adder2(
    //     .a(tempa),
    //     .b(tempb),
    //     .ci(tempci),
    //     .s(temps),
    //     .co(tempco)
    // );
    ADDER_4_2 adder3(
        .a(tempa),
        .b(tempb),
        .ci(tempci),
        .s(temps),
        .co(tempco)
    );
endmodule