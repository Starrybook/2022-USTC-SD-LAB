`timescale 1ns / 1ps
// 第三版，cnt用带时钟的寄存器储存
module CU(
    input [15:0] x,
    input del,
    input nxt,
    input pre,
    input exe,
    input rstn,
    input clk,
    input cmp_res,      // 比较电路的反馈信号，高电平为<
    // 主控部分
    output [3:0] hd,
    output reg ctr,
    output reg [1:0] ctr_ar,
    output reg [1:0] ctr_dr,
    output reg ctr_we,
    output reg ctr_we2,
    output reg [1:0] ctr_wa,
    output [4:0] ra0,
    output [4:0] ra1,
    output reg [15:0] delay,
    /////////////////////测试用端口
    output gs_out,
    output [3:0] state,
    output [3:0] nxtstate
    );
    // 计数，用于冒泡排序,cntLim为每一轮的上界
    reg  [4:0] rg_cntLim,rg_cnt0=0,rg_cnt1=1;
    wire [4:0] cntLim,cnt0,cnt1;
    assign cntLim=rg_cntLim,cnt0=rg_cnt0,cnt1=rg_cnt1;
    wire in_del,in_nxt,in_pre,in_exe;
    DBPS db0(del,rstn,clk,in_del);
    DBPS db1(nxt,rstn,clk,in_nxt);
    DBPS db2(pre,rstn,clk,in_pre);
    DBPS db3(exe,rstn,clk,in_exe);

    wire [3:0] temphd,pshd;
    wire gs0,gs;
    ECD ecd(x,temphd,gs0);
    DBPS db4(gs0,rstn,clk,gs);
    genvar i;
    for(i=0;i<4;i=i+1) begin
        DB db(temphd[i],rstn,clk,hd[i]);
        PS ps(hd[i],rstn, clk,pshd[i]);
    end
    // 状态
    parameter [3:0]
        S0 =4'h0, S1 =4'h1, S2 =4'h2, S3 =4'h3, S4 =4'h4, S5 =4'h5, S6 =4'h6,
        SS0=4'h7, SS1=4'h8, SS2=4'h9, SS3=4'ha, SS4=4'hb;
    reg [3:0] cs,ns;
    // Moore型，使用三段式
    // 组合部分
    always @(*) begin
        case(cs)
            S0:     ns=S1;
            S1:     ns=S2;
            S2:     if(gs||(|pshd))    ns=S3;
                    else if(in_del)    ns=S4;
                    else if(in_nxt)    ns=S5;
                    else if(in_pre)    ns=S6;
                    else if(in_exe)    ns=SS0;
                    else            ns=S2;
            S3:     ns=S2;
            S4:     ns=S2;
            S5:     ns=S1;
            S6:     ns=S1;
            SS0:    ns=SS1;
            SS1:    ns=(cntLim==0)?S1:SS2;
            SS2:    ns=cmp_res?SS3:SS4;
            SS3:    ns=SS4;
            SS4:    ns=SS1;
            default:ns=S0;
        endcase
    end

    // 时序部分
    always @(posedge clk,negedge rstn) begin
        if(!rstn)   cs<=S0;
        else begin  cs<=ns;
        // ra0,ra1(cnt0,cnt1),cntLim
        if(cs==SS0) begin
            rg_cntLim<=31;
            rg_cnt0<=0;
            rg_cnt1<=1;
        end
        if(cs==SS4)
            if(cntLim==0) begin
                rg_cntLim<=0;
                rg_cnt0<=0; rg_cnt1<=1;
            end
            else if(cnt0<cntLim-1)begin
                rg_cntLim<=cntLim;
                rg_cnt0<=cnt0+1; rg_cnt1<=cnt1+1;
            end
            else begin
                rg_cntLim<=cntLim-1;
                rg_cnt0<=0; rg_cnt1<=1;
            end
        end
    end

    // 输出部分
    always @(*) begin
        // ctr,在进入排序状态时为1,与busy相关
        ctr=(cs>=4'h7&&cs<=4'hb)?1:0;
        // ctr_we,写使能,后添加另一写使能,在排序时生效
        ctr_we=(cs==S5||cs==S6||cs==SS3)?1:0;
        ctr_we2=(cs==SS3)?1:0;
        // ctr_ar,ctr_dr
        ctr_ar=(cs==S5)?1:(cs==S6?2:(cs==S1||cs==S2||cs==S3||cs==S4)?3:0);
        ctr_dr=(cs==S3)?2:(cs==S4?1:(cs==S0||cs==S1)?0:3);
        // ctr_wa
        ctr_wa=(cs==S5)?3:(cs==S6?2:((cs>=4'h7&&cs<=4'hb)?1:0));
    end

    // 另加一个用于计数的delay
    always @(posedge clk,negedge rstn) begin
        if(!rstn)                   delay<=0;
        else if(cs==SS0)            delay<=0;
        else if(cs>4'h7&&cs<=4'hb)  delay<=delay+1;
        else                        delay<=delay;
    end
    assign ra0=cnt0, ra1=cnt1;
    /////////////////////测试用
    assign state=cs,nxtstate=ns;
    assign gs_out=gs;
    /////////////////////
endmodule