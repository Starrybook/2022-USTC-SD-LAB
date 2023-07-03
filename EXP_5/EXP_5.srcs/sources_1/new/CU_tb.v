`timescale 1ns / 1ps

module CU_tb(
    );
    parameter clk_period=10,
              interval=30;
    reg rstn,clk=0;
    always #(clk_period/2) clk=~clk;
    // input
    reg [15:0] x;
    reg del,nxt,pre,exe,cmp_res;
    // output
    wire [3:0] hd;
    wire ctr;
    wire [1:0] ctr_ar,ctr_dr;
    wire ctr_we,ctr_we2;
    // wire [1:0] ctr_wa;
    wire [4:0] ra0,ra1;
    wire [15:0] delay;
    //////////////////测试用端口
    wire [3:0] cs;
    // wire gs;
    // wire [3:0] ns;

    CU cu(
        .x(x),
        .del(del),
        .nxt(nxt),
        .pre(pre),
        .exe(exe),
        .rstn(rstn),
        .clk(clk),
        .cmp_res(cmp_res),
        .hd(hd),
        .ctr(ctr),
        .ctr_ar(ctr_ar),
        .ctr_dr(ctr_dr),
        .ctr_we(ctr_we),
        .ctr_we2(ctr_we2),
        // .ctr_wa(ctr_wa),
        .ra0(ra0),
        .ra1(ra1),
        .delay(delay),
        ////////////////测试用端口
        .state(cs)
        // .gs_out(gs)
        // .nxtstate(ns)
    );

    initial begin
        // 第一部分，测试基础功能
        // rstn=0;
        // x=0;
        // del=0;
        // nxt=0;
        // pre=0;
        // exe=0;
        // cmp_res=0;
        // #22 rstn=1;
        //     x=16'h0002;
        // #100 x=16'h0004;
        // #100 x=16'h0800;
        // #100 x=16'h0010;
        // #100 x=16'h0000;
        //     del=1;
        // #100 del=0;
        // #100 del=1;
        // #100 del=0;
        // #100 x=16'hf000;
        // #100 x=16'h0000;
        //     pre=1;
        // #100 pre=0;
        // #100 pre=1;
        // #100 pre=0;
        // #100 nxt=1;
        // #100 nxt=0;
        // #100 nxt=1;
        // #100 nxt=0;
        // #100 $finish;
        // 第二段，测试排序，数字预先由RF中的init设定好
        rstn=0;
        x=0;
        del=0;
        nxt=0;
        pre=0;
        exe=0;
        cmp_res=1;
        #20 rstn=1;
            exe=1;
        #50 exe=0;
        #40000 $finish;
    end

endmodule