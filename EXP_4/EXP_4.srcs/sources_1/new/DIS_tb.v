`timescale 1ns / 1ps

module DIS_tb(
);
    parameter clk_period=10;
    parameter S=400;      // 便于仿真这里的时间间隔为1微秒
    reg rstn,clk;
    initial clk=1'b1;
    always #(clk_period/2) clk=~clk;
    reg [31:0] d;
    wire [7:0] an;
    wire [6:0] cn;

    ////////////
    // wire clkd;
    // wire [3:0] num;
    // wire [2:0] sign;
    DIS #(
        .refreshT(1),
        .MS(1)        // 便于仿真设置为10纳秒
    )dis(
        .d(d),
        .rstn(rstn),
        .clk(clk),
        .an(an),
        .cn(cn)
        ////////
        // .CLKD(clkd),
        // .NUM(num),
        // .SIGN(sign)
    );
    initial begin
        rstn=1'b0;
        d=0;
        #S d=32'h0001;
           rstn=1'b1;
        #S d=32'h00ff;
        #S d=32'h4321;
        // repeat(10)
        //     #S d=d+1'b1;
        #S $finish;
    end

endmodule