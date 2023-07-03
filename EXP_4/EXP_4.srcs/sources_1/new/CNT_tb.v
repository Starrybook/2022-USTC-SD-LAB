`timescale 1ns / 1ps

module CNT_tb(
    );
    parameter clk_period=10;
    reg clk,rstn;
    reg pe,ce;
    reg [3:0] d;
    wire [3:0] Q;
    initial clk=1'b0;
    always #(clk_period/2) clk=~clk;
    // 仿真时4位即可
    CNT #(
        .WIDTH(4),
        .RST_VLU(0)
    ) cnt(
        .d(d),
        .pe(pe),
        .ce(ce),
        .clk(clk),
        .rstn(rstn),
        .Q(Q)
    );
    initial begin
        rstn=1'b0;
        pe=1'b0;
        ce=1'b0;
        d=4'h0;
        #15 rstn=1'b1;
            pe=1'b1;
            d=4'hf;
        #10 pe=1'b0;
        repeat(40)
            #10 ce=~ce;
        #10 $finish;
    end

endmodule
