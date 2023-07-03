`timescale 1ns / 1ps
//8位比较器
//method2:调用一位比较器
module CMP(
    input [7:0] a,
    input [7:0] b,
    output ug,ul,sg,sl
);
    // 在相邻比较器之间传递的信息
    wire eq_7;
    wire [6:-1] eq;
    wire [7:0] g;
    wire [7:0] l;
    assign eq[6]=1;
    CMP_1 cmp7(
        .a(a[7]),
        .b(b[7]),
        .e(1'b1),
        .g(g[7]),
        .eq(eq_7),
        .l(l[7])
    );
    genvar i;
    generate
        for(i=6;i>=0;i=i-1) begin
            CMP_1 cmp(
                .a(a[i]),
                .b(b[i]),
                .e(eq[i]),
                .g(g[i]),
                .eq(eq[i-1]),
                .l(l[i])
            );
        end
    endgenerate
    assign sg = (a[7]&b[7]&(|g[6:0])) | (~a[7]&b[7]) | (~a[7]&~b[7]&(|g[6:0]));
    assign sl = (a[7]&b[7]&(|l[6:0])) | (a[7]&~b[7]) | (~a[7]&~b[7]&(|l[6:0]));
    assign ug=g[7]+eq_7&(|g[6:0]);
    assign ul=l[7]+eq_7&(|l[6:0]);
endmodule

// module CMP(
//     input [7:0] a,
//     input [7:0] b,
//     output ug,ul,sg,sl
//     );
//     //先处理无符号
//     integer i;
//     reg ifend=0;
//     reg reg_ug=0,reg_ul=0,reg_sg=0,reg_sl=0;
//     always @(*)
//         begin
//             reg_ug=0;
//             reg_ul=0;
//             reg_sg=0;
//             reg_sl=0;
//         end
//     always @(*)
//         begin
//             for(i=0;i<8;i=i+1)
//                 begin
//                     if(a[7-i]&~b[7-i]&~ifend)
//                         begin
//                             ifend=1;
//                             reg_ug=1;
//                         end
//                     else if(~a[7-i]&b[7-i]&~ifend)
//                         begin
//                             ifend=1;
//                             reg_ul=1;
//                         end
//                 end
//         end
//     //再处理有符号
//     //先比较符号，对于正正与负负的情况分别处理；有符号数为补码形式
//     reg ifend2=0;   //标记是否比较完
//     reg ifAllNeg=0,temp; //标记是否均为负数
//     always @(*)
//         begin
//             if(~ifend2&a[7]&b[7])
//                 ifAllNeg=1;
//             else if(~ifend&a[7]&~b[7])
//                 begin
//                     ifend=1;
//                     reg_sl=1;
//                 end
//             else if(~ifend&~a[7]&b[7])
//                 begin
//                     ifend=1;
//                     reg_sg=1;
//                 end
//             else ;
//             //对后六位作无符号比较，若上面的ifAllNeg=1，结果作翻转
//             for(i=1;i<8;i=i+1)
//                 begin
//                     if(~ifend&a[7-i]&~b[7-i])
//                         begin
//                             ifend=1;
//                             reg_sg=1;
//                         end
//                     else if(~ifend&~a[7-i]&b[7-i])
//                         begin
//                             ifend=1;
//                             reg_sl=1;
//                         end
//                 end
//             if(ifAllNeg)
//                 begin
//                     temp=reg_sl;
//                     reg_sl=reg_sg;
//                     reg_sg=temp;
//                 end
//         end
//     assign ug=reg_ug;
//     assign ul=reg_ul;
//     assign sg=reg_sg;
//     assign sl=reg_sl;
// endmodule

