`timescale 1ns / 1ps

module MAIN_TM_tb(
    );
    parameter clk_period=10;
    reg rstn,clk;
    initial clk=1'b0;
    always #(clk_period/2) clk=~clk;
    reg x;
    reg [15:0] tc;
    wire [7:0] an;
    wire [6:0] cn;
    wire td;
    /////////////////////测试用接口
    wire [31:0] Q;
    wire test_y;  // test_clkd;
    // wire [31:0] test_counter;

    MAIN_TM main(
        .x(x),
        .tc(tc),
        .rstn(rstn),
        .clk(clk),
        .td(td),
        .an(an),
        .cn(cn),
        ///////////////测试用接口
        .Q(Q),
        .test_y(test_y)
        // .test_clkd(test_clkd),
        // .test_counter(test_counter)
    );

    initial begin
        rstn=0;
        tc=16'h000f;
        x=0;
        #10 rstn=1;
            x=1;
        #30 x=0;
        #1000 $finish;
    end

    //////////////
endmodule
