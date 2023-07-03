`timescale 1ns / 1ps

module PNT_tb(
    );
    reg clk=0,rstn;
    always #5 clk=~clk;
    reg up=0,down=0,left=0,right=0,draw=0;
    reg [3:0] pred,pgreen,pblue;
    wire [3:0] red,green,blue;
    wire [11:0] rgb_out;
    wire  hs,vs;
    // wire hs_out,vs_out;
    ////////////////////////测试用端口
    // wire test_pclk,test_we,test_hen,test_ven;
    // wire [14:0] test_waddr,test_raddr;
    // wire [15:0] test_wdata,test_rdata;
    PNT #(
        2,1,2,
        5,4,0,0,
        1,2,4,3,
        1,1,2,1,
        20,15
    ) pnt(
        .clk(clk),.rstn(rstn),
        .up(up),.down(down),.left(left),.right(right),
        .pred(pred),.pgreen(pgreen),.pblue(pblue),
        .draw(draw),
        .red(red),.green(green),.blue(blue),
        .rgb_out(rgb_out),
        .hs(hs),.vs(vs)
        // .hs_out(hs_out),.vs_out(vs_out),
        // .test_pclk(test_pclk),
        // .test_we(test_we),
        // .test_hen(test_hen),.test_ven(test_ven),
        // .test_waddr(test_waddr),.test_raddr(test_raddr),
        // .test_wdata(test_wdata),.test_rdata(test_rdata)
    );
    parameter hightime=30,lowtime=30,repeattime=5;
    initial begin
        rstn=0;
        {pred,pgreen,pblue}=12'habc;
        #250 rstn=1;
        draw=1;
        #10 draw=0;
        repeat(repeattime) begin            // 下
            #hightime {up,down,left,right}=4'b0100;
            #lowtime  {up,down,left,right}=4'b0000;
        end
        repeat(repeattime) begin            // 上
            #hightime {up,down,left,right}=4'b1000;
            #lowtime  {up,down,left,right}=4'b0000;
        end
        repeat(repeattime) begin            // 右
            #hightime {up,down,left,right}=4'b0001;
            #lowtime  {up,down,left,right}=4'b0000;
        end
        repeat(repeattime) begin            // 左
            #hightime {up,down,left,right}=4'b0010;
            #lowtime  {up,down,left,right}=4'b0000;
        end
        //
        repeat(repeattime) begin            // 右下
            #hightime {up,down,left,right}=4'b0101;
            #lowtime  {up,down,left,right}=4'b0000;
        end
        repeat(repeattime) begin            //左下
            #hightime {up,down,left,right}=4'b0110;
            #lowtime  {up,down,left,right}=4'b0000;
        end
        repeat(repeattime) begin            // 右上
            #hightime {up,down,left,right}=4'b1001;
            #lowtime  {up,down,left,right}=4'b0000;
        end
        repeat(repeattime) begin            // 左上
            #hightime {up,down,left,right}=4'b1010;
            #lowtime  {up,down,left,right}=4'b0000;
        end
        #20 $finish;
    end
endmodule
