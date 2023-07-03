`timescale 1ns / 1ps

module FD_tb(
);
    parameter clk_period=10;
    reg [31:0] k1,k2,k3,k4,k5;
    ///////
    // wire [31:0] ctr1,ctr2,ctr3,ctr4,ctr5;
    reg rstn,clk;
    wire [4:0] y;
    udf_FD fd1(
        .k(k1),
        .rstn(rstn),
        .clk(clk),
        .y(y[0])
    );
    udf_FD fd2(
        .k(k2),
        .rstn(rstn),
        .clk(clk),
        .y(y[1])
    );
    udf_FD fd3(
        .k(k3),
        .rstn(rstn),
        .clk(clk),
        .y(y[2])
    );
    udf_FD fd4(
        .k(k4),
        .rstn(rstn),
        .clk(clk),
        .y(y[3])
    );
    udf_FD fd5(
        .k(k5),
        .rstn(rstn),
        .clk(clk),
        .y(y[4])
    );
    initial clk=1'b1;
    always #(clk_period/2) clk=~clk;
    initial begin
        // 注意先置零
        rstn=1'b0;
        #10 rstn<=1'b1;
        k1<=32'h0000_0002;
        k2<=32'h0000_0003;
        k3<=32'h0000_0004;
        k4<=32'h0000_0005;
        k5<=32'h0000_000f;
        #400 $finish;
    end

endmodule