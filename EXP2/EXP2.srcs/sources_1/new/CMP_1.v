`timescale 1ns / 1ps
//一位比较器
module CMP_1(
    input e,
    input a,b,
    output g,eq,l
    );
    assign g=e&(a&~b);
    assign l=e&(b&~a);
    assign eq=e&(~b^a);
endmodule
