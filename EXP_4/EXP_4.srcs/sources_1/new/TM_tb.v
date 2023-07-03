`timescale 1ns / 1ps

module TM_tb(
);
    parameter clk_period=10;
    reg rstn,clk;
    initial clk=1'b0;
    always #(clk_period/2) clk=~clk;

    reg [15:0] tc;
    reg st;
    wire [31:0] q;
    wire td;
    ///////////////测试用接口
    // wire test_ctr,test_clkd,test_ctr_sign;
    // wire [31:0] test_k;
    // wire [31:0] test_c;
    TM #(
        .T(5),
        .MS(1)
    ) tm(
        .st(st),
        .tc(tc),
        .rstn(rstn),
        .clk(clk),
        .q(q),
        .td(td)
        ///////////
        // .test_ctr(test_ctr),
        // .test_k(test_k),
        // .test_clkd(test_clkd)
    );
    initial begin
        rstn=1'b0;
        st=0;
        tc=16'h0000;
        #5 rstn=1;
            tc=16'h000f;
        #10 st=1;
        #10 st=0;
        #1000 $finish;
    end
endmodule