`timescale 1ns / 1ps
//有符号数乘法器8*8->16
//思路为b的0~6位依次与符号拓展为16位的a相乘
//每次乘完以后拓展后的a左移一位
//最后减去b的符号位乘以a
// module MUL(
//     input [7:0]a,
//     input [7:0]b,
//     output [15:0]y
//     );
//     // 作为add的参数，因不起作用，赋为零即可
//     // reg [15:0] ci=16'x0000;
//     // reg [15:0] co=16'x0000;
//     reg [15:0] a_16;    //符号拓展
//     always @(a_16,a)
//         a_16={{8{a[7]}},a};
//     wire [15:0] aftersel [7:0];
//     wire [15:0] afteradd [7:0];
//     wire [15:0] aftershifter [7:0];
//     // wire        afterminus;
//     assign aftershifter[0]={{8{a[7]}},a};
//     assign afteradd[0]={16{1'b0}};
//     genvar i;
//     generate
//         for(i=0;i<7;i=i+1) begin
//             assign aftersel[i]=b[i]? aftershifter[i] : 16'h0000;
//             ADDER_SERIAL_16 ADDER0(
//                 .a(aftersel[i]),
//                 .b(afteradd[i]),
//                 .s(afteradd[i+1])
//             );
//             LEFTSHIFTER SHIFTER0(
//                 .a(aftershifter[i]),
//                 .y(aftershifter[i+1])
//             );
//         end
//     endgenerate
//     assign aftersel[7]=b[7]? aftershifter[7] : 16'h0000;
//     SUBTRACTOR_16 ST(
//         .a(afteradd[7]),
//         .b(aftersel[7]),
//         .d(y)
//     );
// endmodule

// 无符号乘法
module MUL(
    input [7:0]a,
    input [7:0]b,
    output [15:0]y
    );
    reg [15:0] a_16;    //拓展位数
    always @(a_16,a)
        a_16={{8{1'b0}},a};
    wire [15:0] aftersel [7:0];
    wire [15:0] afteradd [7:0];
    wire [15:0] aftershifter [7:0];
    assign aftershifter[0]={{8{1'b0}},a};
    assign afteradd[0]={16{1'b0}};
    genvar i;
    generate
        for(i=0;i<7;i=i+1) begin
            assign aftersel[i]=b[i]? aftershifter[i] : 16'h0000;
            ADDER_SERIAL_16 ADDER(
                .a(aftersel[i]),
                .b(afteradd[i]),
                .s(afteradd[i+1])
            );
            LEFTSHIFTER SHIFTER( .a(aftershifter[i]), .y(aftershifter[i+1]));
        end
    endgenerate
    assign aftersel[7]=b[7]? aftershifter[7] : 16'h0000;
    ADDER_SERIAL_16 ADDER8(.a(afteradd[7]), .b(aftersel[7]), .s(y));
endmodule
    