`timescale 1ns / 1ps

module MAIN(
    input [15:0] x,
    input del,pre,nxt,exe,
    input rstn,
    input clk,
    output [7:0] an,
    output [6:0] cn,
    output busy,
    output [15:0] delay
    // ///////////////////测试用端口
    // output [3:0] test_hd,
    // output ctr_out,
    // output [1:0] ctr_wa_out,
    // output [1:0] ctr_dr_out,ctr_ar_out,
    // output [4:0]  ar_out,
    // output [15:0] dr_out,
    // output [4:0]  ra0_out,ra1_out,
    // output [4:0] wa_out,
    // output [4:0] wa2_out,
    // output [15:0] wd_out,
    // output [15:0] wd2_out,
    // output ctr_we_out,
    // output ctr_we2_out,
    // output cmp_res_out,
    // output [15:0] data1e,
    // output [15:0] data1f,
    // output [15:0] data0,
    // output [15:0] data1,
    // output [15:0] data2,
    // output [3:0] cs_out,ns_out,
    // ////////////////////测试排序的端口
    // output [15:0] rd0_out,rd1_out
    );
    // 数据通路部分
    wire [3:0] hd;
    // 注意为reg，避免逻辑环
    wire [4:0] ar;
    reg [4:0] temp_ar;
    wire [15:0] dr;
    reg [15:0] temp_dr;
    // AR,DR寄存器
    RG #(5)  AR(.d(temp_ar),.rstn(rstn),.clk(clk),.q(ar));
    RG #(16) DR(.d(temp_dr),.rstn(rstn),.clk(clk),.q(dr));
    wire cmp_res;
    wire ctr_we;
    wire ctr_we2;
    wire ctr;
    wire [1:0] ctr_wa;
    wire [1:0]  ctr_ar,ctr_dr;
    reg  [4:0]  wa;
    wire [4:0]  wa2,ra0,cu_out_ra0,ra1;
    wire [15:0] rd0,rd1,wd,wd2;
    // 读口与写口之间加一级寄存器
    wire [15:0] rg0,rg1;
    RG #(16)  RG0(.d(rd0),.rstn(rstn),.clk(clk),.q(rg0));
    RG #(16)  RG1(.d(rd1),.rstn(rstn),.clk(clk),.q(rg1));
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
        .ctr(busy),
        .ctr_ar(ctr_ar),
        .ctr_dr(ctr_dr),
        .ctr_we(ctr_we),
        .ctr_we2(ctr_we2),
        .ctr_wa(ctr_wa),
        .ra0(cu_out_ra0),
        .ra1(ra1),
        .delay(delay),
        ///////////////测试用端口
        .state(cs_out),
        .nxtstate(ns_out)
    );
    DIS dis(
        .d({3'b000,ar,8'h00,dr}),
        .rstn(rstn),
        .clk(clk),
        .an(an),
        .cn(cn)
    );
    RF rf(
        .clk(clk),
        .ra0(ra0),
        .ra1(ra1),
        .wa(wa),
        .wd(wd),
        .we(ctr_we),
        .wa2(wa2),
        .wd2(wd2),
        .we2(ctr_we2),
        .rd0(rd0),
        .rd1(rd1),
        ///////////测试用端口
        .data1e(data1e),
        .data1f(data1f),
        .data0(data0),
        .data1(data1),
        .data2(data2)
    );
    CMP cmp(
        .a(rd0),
        .b(rd1),
        .ifLess(cmp_res)
    );

    // 选择器部分，使用三目运算符实现数据通路中的MUX
    // ctr
    assign ctr=busy;
    // ra0, ra1已由CU所赋值
    assign ra0=ctr?cu_out_ra0:ar;
    // wa,wd,wa2,wd2
    always @(*) begin 
        case(ctr_wa)
            0:wa=ar;
            1:wa=cu_out_ra0;
            // 2:wa=ar+1;
            // 3:wa=ar-1;
            default:wa=ar;
        endcase
    end
    assign wa2=ra1;
    assign wd=ctr?rg1:dr;
    assign wd2=rg0;
    // ar,dr
    always @(*) begin
        case(ctr_ar)
            0:      temp_ar=0;
            1:      temp_ar=ar+1;
            2:      temp_ar=ar-1;
            default:temp_ar=ar;
        endcase
        case(ctr_dr)
            0:      temp_dr=rd0;
            1:      temp_dr={4'h0,dr[15:4]};
            2:      temp_dr={dr[11:0],hd};
            default:temp_dr=dr;
        endcase
    end
    
    // ///////////////////测试用端口
    // assign ar_out=ar,dr_out=dr;
    // assign wa_out=wa,wd_out=wd;
    // assign ctr_dr_out=ctr_dr,ctr_ar_out=ctr_ar;
    // assign test_hd=hd;
    // assign ctr_we_out=ctr_we;
    // assign ctr_we2_out=ctr_we2;
    // assign cmp_res_out=cmp_res,ctr_out=ctr;
    // assign ctr_wa_out=ctr_wa;
    // ////////////////////测试排序的端口
    // assign wa2_out=wa2,wd2_out=wd2;
    // assign ra0_out=ra0,ra1_out=ra1;
    // assign rd0_out=rd0,rd1_out=rd1;
endmodule