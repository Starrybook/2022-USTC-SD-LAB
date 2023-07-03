`timescale 1ns / 1ps

module DDP_tb(
    );
    reg pclk=1,rstn;
    always #5 pclk=~pclk;
    reg [15:0] rdata;
    reg hen=0,ven=0;
    wire [14:0] raddr;
    wire [11:0] rgb;
    initial begin
        forever begin
            #30 hen=1;
            #40 hen=0;
            #30 ;
        end
    end
    initial begin
        forever begin
            #200 ven=1;
            #200 ven=0;
            #100 ;
        end
    end
    /////////////测试用端口
    wire [32:0] test_cnt1,test_cnt2;
    DDP #(20,15) ddp(
        .rdata(rdata),
        .hen(hen),.ven(ven),
        .rstn(rstn),
        .pclk(pclk),
        .raddr(raddr),
        .rgb(rgb),
        .test_cnt1(test_cnt1),
        .test_cnt2(test_cnt2)
    );
    initial begin
        rstn=0;
        rdata=12'habc;
        #10 rstn=1;
        #10000 $finish;
    end
endmodule