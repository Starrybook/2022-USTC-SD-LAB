`timescale 1ns / 1ps
// 此模块也包含对PS的测试
module DB_tb(
);
    parameter clk_period=10;
    reg rstn,clk;
    initial clk=1'b0;
    always #(clk_period/2) clk=~clk;
    reg x;
    wire y1,y2;
    DB #(
        .T(1),
        .MS(1)      // 维持10ns即可
    ) db(
        .x(x),
        .rstn(rstn),
        .clk(clk),
        .y(y1)
    );
    PS ps(
        .x(y1),
        .rstn(rstn),
        .clk(clk),
        .y(y2)
    );
    initial begin
        // 注意先置零
        rstn=1'b0;
        x=0;
        #10 rstn=1'b1;
        #10 x=1;
        #2  x=0;
        #5  x=1;
        #5  x=0;
        #2  x=1;
        #100 x=0;
        #2  x=1;
        #5  x=0;
        #5  x=1;
        #2  x=0;
        #20 $finish;
    end

endmodule