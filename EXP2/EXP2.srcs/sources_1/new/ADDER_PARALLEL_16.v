`timescale 1ns / 1ps

module ADDER_PARALLEL_8(
    input [7:0]a,
    input [7:0]b,
    input ci,
    output [7:0]s,
    output co
    );
    wire [7:0]p;
    wire [7:0]g;
    wire [7:0]c;
    genvar i;
    for(i=0;i<8;i=i+1) begin
        assign p[i]=a[i]^b[i];
        assign g[i]=a[i]&b[i];
    end
    //c0为最低位与ci（更低）之和的进位
    assign c[0]=g[0]+p[0]&ci;
    assign s[0]=p[0]^ci;
    genvar j;
    for(j=1;j<8;j=j+1) begin
        assign c[j]=g[j]+p[j]&c[j-1];
        assign s[j]=p[j]^c[j-1];
    end
    assign co=c[7];
endmodule

module ADDER_PARALLEL_4(
    input [3:0]a,
    input [3:0]b,
    input ci,
    output [3:0]s,
    output co
    );
    wire [3:0]p;
    wire [3:0]g;
    wire [3:0]c;
    genvar i;
    for(i=0;i<4;i=i+1) begin
        assign p[i]=a[i]^b[i];
        assign g[i]=a[i]&b[i];
    end
    //c0为最低位与ci（更低）之和的进位
    assign c[0]=g[0]+p[0]&ci;
    assign s[0]=p[0]^ci;
    genvar j;
    for(j=1;j<4;j=j+1) begin
        assign c[j]=g[j]+p[j]&c[j-1];
        assign s[j]=p[j]^c[j-1];
    end
    assign co=c[3];
endmodule

//超前进位十六位加法器
//10/19 16:52
// module ADDER_PARALLEL_16(
//     input [15:0]a,
//     input [15:0]b,
//     input ci,
//     output [15:0]s,
//     output co
//     );
//     wire [15:0]p;
//     wire [15:0]g;
//     wire [15:0]c;
//     genvar i;
//     for(i=0;i<16;i=i+1) begin
//         assign p[i]=a[i]^b[i];
//         assign g[i]=a[i]&b[i];
//     end
//     //c0为最低位与ci（更低）之和的进位
//     assign c[0]=g[0]+p[0]&ci;
//     assign s[0]=p[0]^ci;
//     genvar j;
//     for(j=1;j<16;j=j+1) begin
//         assign c[j]=g[j]+p[j]&c[j-1];
//         assign s[j]=p[j]^c[j-1];
//     end
//     assign co=c[15];
// endmodule