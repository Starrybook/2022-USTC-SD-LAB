`timescale 1ns / 1ps

module DST_tb(
    );
    reg pclk=0,rstn;
    always #5 pclk=~pclk;
    wire hen,ven,hs,vs;
    wire [12:0] test_hcnt,test_vcnt;
    DST #(
        .HSW(1), .HBP(2), .HEN(4), .HFP(3),
        .VSW(1), .VBP(1), .VEN(2), .VFP(1)
    ) dst(
        .pclk(pclk),
        .rstn(rstn),
        .hen(hen),
        .ven(ven),
        .hs(hs),
        .vs(vs),
        .test_hcnt(test_hcnt),
        .test_vcnt(test_vcnt)
    );
    initial begin
        rstn=0;
        #10 rstn=1;
        #1500 $finish;
    end
endmodule