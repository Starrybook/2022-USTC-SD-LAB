`timescale 1ns / 1ps
`timescale 1ns / 1ps

module MAIN_tb(
    );
    parameter clk_period=10,
              interval=30;
    reg rstn,clk=0;
    always #(clk_period/2) clk=~clk;
    // input
    reg [15:0] x;
    reg del,nxt,pre,exe;
    // output
    wire busy;
    wire [7:0] an;
    wire [6:0] cn;
    wire [15:0] delay;
    //////////////////测试用端口
    wire [3:0] hd;
    wire ctr;
    // wire [1:0] ctr_wa;
    wire [1:0] ctr_dr,ctr_ar;
    wire [4:0]  ar;
    wire [15:0] dr;
    wire [4:0] ra0,ra1;
    wire [4:0]  wa,wa2;
    wire [15:0] wd,wd2;
    wire ctr_we,ctr_we2;
    wire cmp_res;
    wire [15:0] data1e,data1f,data0,data1,data2;
    wire [3:0] cs;
    // wire [3:0] ns;
    ////////////////////测试排序的端口
    wire [15:0] rd0,rd1;

    MAIN main(
        .x(x),
        .del(del),
        .nxt(nxt),
        .pre(pre),
        .exe(exe),
        .rstn(rstn),
        .clk(clk),
        .an(an),
        .cn(cn),
        .busy(busy),
        .delay(delay),
        ////////////////测试用端口
        .test_hd(hd),
        .ctr_out(ctr),
        // .ctr_wa_out(ctr_wa),
        .ctr_dr_out(ctr_dr),
        .ctr_ar_out(ctr_ar),
        .ar_out(ar),
        .dr_out(dr),
        .ra0_out(ra0),
        .ra1_out(ra1),
        .wa_out(wa),
        .wa2_out(wa2),
        .wd_out(wd),
        .wd2_out(wd2),
        .ctr_we_out(ctr_we),
        .ctr_we2_out(ctr_we2),
        .cmp_res_out(cmp_res),

        .data1e(data1e),
        .data1f(data1f),
        .data0(data0),
        .data1(data1),
        .data2(data2),
        .cs_out(cs),
        // .ns_out(ns),
        ////////////////////测试排序的端口
        .rd0_out(rd0),
        .rd1_out(rd1)
    );

    initial begin
        // rstn=0;
        // x=0;
        // del=0;
        // nxt=0;
        // pre=0;
        // exe=0;
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
        #20 rstn=1;
            exe=1;
        #50 exe=0;
        #20000 $finish;
    end

endmodule