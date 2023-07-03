`timescale 1ns / 1ps

module CNT#(
    parameter WIDTH=16,
              RST_VLU=0
)(
    input [WIDTH-1:0]d,
    input pe,
    input ce,
    input rstn,
    input clk,
    output reg [WIDTH-1:0] Q
    );
    always @(posedge clk,negedge rstn) begin
        if(!rstn) Q<=RST_VLU;
        else if(pe) Q<=d;
        else if(ce) Q<=Q-1;
    end
endmodule

// 同步二进制计数器(使用门电路和基础模块实现，较为繁琐)
// module CNT#(
//     parameter WIDTH=16,
//               RST_VLU=0
// )(
//     input [WIDTH-1:0]d,
//     input pe,
//     input ce,
//     input rstn,
//     input clk,
//     output [WIDTH-1:0] Q
//     );
//     wire [WIDTH-1:0] before;
//     wire [WIDTH-1:0] in;
//     wire [WIDTH-1:0] q;
//     reg [WIDTH-1:0] reset=RST_VLU;
//     assign before[0]=ce;
//     genvar i;
//     generate
//         for(i=0;i<WIDTH-1;i=i+1) begin
//             // rstn优先级高于pe
//             assign in[i]=(~rstn)?reset[i]:(pe?d[i]:before[i]);
//             // assign in[i]=before[i];
//             TFF tff(
//                 .t(in[i]),
//                 .rstn(rstn),
//                 .clk(clk),
//                 .q(q[i])
//             );
//             and and_before(before[i+1],before[i],~q[i]);
//         end
//     endgenerate
//     // 最后一个触发器不连接与门
//     assign in[WIDTH-1]=(~rstn)?reset[WIDTH-1]:(pe?d[WIDTH-1]:before[WIDTH-1]);
//     // assign in[WIDTH-1]=before[WIDTH-1];
//     TFF tff(
//         .t(in[WIDTH-1]),
//         .rstn(rstn),
//         .clk(clk),
//         .q(q[WIDTH-1])
//     );
//     assign Q=q;
// endmodule
