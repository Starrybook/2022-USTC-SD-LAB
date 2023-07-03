`timescale 1ns / 1ps
// 要避免取模除法运算
module DDP #(
    parameter width_out=800,
              height_out=600
    )(
    input [15:0] rdata,
    input hen,ven,
    input rstn,
    input pclk,
    output [14:0] raddr,
    output [11:0] rgb,
    ////////////测试用端口
    output [32:0] test_cnt1,
    output [32:0] test_cnt2
    );
    // 从200*150的储存区域中读取800*600的信息，一格读四次，一行读两次
    // cnt为k时，读取200*(k/800)+(k%800)/4处的数据
    parameter width_target=width_out/4;
    reg [32:0] cnt1=width_out-1,cnt2=height_out-1;
    always @(posedge pclk,negedge rstn) begin
        if(!rstn) begin
            cnt1<=width_out-1;
            cnt2<=height_out-1;
        end
        else if(hen&&ven) begin
            if(cnt1>=width_out-1&&cnt2>=height_out-1) begin
                cnt1<=0;
                cnt2<=0;
            end
            else if(cnt1>=width_out-1) begin
                cnt1<=0;
                cnt2<=cnt2+1;
            end
            else begin
                cnt1<=cnt1+1;
                cnt2<=cnt2;
            end
        end
    end
    assign rgb=(hen&&ven)?{rdata[15:12],rdata[10:7],rdata[4:1]}:0;
    assign raddr=(hen&&ven)?(cnt2>>2)*width_target+(cnt1>>2):0;

    
    // 最初测试时rgb接12'hFFF，显示白色
    // assign rgb=(hen&&ven)?12'hfff:0;

    //////////////测试用端口
    assign test_cnt1=cnt1,test_cnt2=cnt2;
endmodule