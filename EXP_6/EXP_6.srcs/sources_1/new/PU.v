`timescale 1ns / 1ps
// 因为要避免取模运算，这里做了一些改动
module PU #(
    parameter width=200,
              height=150,
              startx=49,
              starty=49
)(
    input draw,
    input [3:0] dir,
    input [11:0] prgb,
    input rstn,clk,
    output [14:0] waddr,
    output [15:0] wdata,
    output reg we,
    // 增加光标后添加了一个端口
    output reg ifdraw,
    //////////////仿真用端口
    output [12:0] test_curx,test_cury
    );
    initial begin
        ifdraw=1;
    end
    // 因为draw是经过消抖取边沿的，然而实际要求draw在每按下一次之后转变状态
    // 所以draw需要转变为另一有效控制信号ifdraw
    // reg ifdraw=1;
    
    // 这里的输入经过消抖与取边沿处理
    // 将cur分解为curx，cury
    reg [12:0] curx=0,cury=0;
    always @(posedge clk,negedge rstn) begin
        if(!rstn) begin
            curx<=startx;
            cury<=starty;
            we<=0;
        end
        else if(draw)               ifdraw<=~ifdraw;
        else begin
            // 200*150(h*c)
            // 上下
            if(ifdraw)      we<=1;
            else            we<=0;
            if(dir[3]&&cury>0)              cury<=cury-1;
            else if(dir[2]&&cury<height-1)  cury<=cury+1;
            else                            cury<=cury;
            // 左右
            if(dir[1]&&curx>0)              curx<=curx-1;
            else if(dir[0]&&curx<width-1)   curx<=curx+1;
            else                            curx<=curx;
        end
    end
    assign wdata={prgb[11:8],1'b0,prgb[7:4],2'b00,prgb[3:0],1'b0};
    assign waddr=cury*width+curx;
    ////////////////////调试用端口
    assign test_curx=curx,test_cury=cury;
endmodule
