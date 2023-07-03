`timescale 1ns / 1ps

module MAIN_tb(
);
    parameter clk_period=10;
    reg rstn,clk;
    initial clk=1'b0;
    always #(clk_period/2) clk=~clk;
    reg sel,btnc;
    wire [7:0] an;
    wire [6:0] cn;

    //////////////
    // wire in;
    // wire [31:0] Q;
    Main_1 main(
        .sel(sel),
        .btnc(btnc),
        .rstn(rstn),
        .clk(clk),
        .an(an),
        .cn(cn)
        ////////
        // .afterps(in),
        // .Q(Q)
    );

    initial begin
        rstn=1'b0;
        sel=1'b0;       // 此时sel需设为零，因为实际的main模块中DB的T太大
        btnc=1'b0;
        #10 rstn=1'b1;
        repeat(50)
            #100 btnc=~btnc;
        #10 $finish;
    end
endmodule