`timescale 1ns / 1ps

module DST#(
    parameter HSW=120, HBP=64, HEN=800, HFP=56,
              VSW=6,   VBP=23, VEN=600, VFP=37
    // parameter HSW=1, HBP=2, HEN=4, HFP=3,
    //           VSW=1, VBP=1, VEN=2, VFP=1
    )(
    input pclk,rstn,
    output reg hen,ven,
    output reg hs,vs,
    ////////////////测试用端口
    output [12:0] test_hcnt,test_vcnt
    );
    reg [12:0] hcnt=0;
    reg [12:0] vcnt=0;
    always @(posedge pclk,negedge rstn) begin
        if(!rstn) begin
            hcnt<=0;vcnt<=0;
            hs<=1;vs<=1;hen<=0;ven<=0;
        end
        else begin
            // hs,hen,hcnt,vcnt
            if(hcnt==HSW-1) begin
                hs<=0;hen<=0;hcnt<=hcnt+1;vcnt<=vcnt;
            end
            else if(hcnt==HSW+HBP-1) begin
                hs<=0;hen<=1;hcnt<=hcnt+1;vcnt<=vcnt;
            end
            else if(hcnt==HSW+HBP+HEN-1) begin
                hs<=0;hen<=0;hcnt<=hcnt+1;vcnt<=vcnt;
            end
            else if(hcnt==HSW+HBP+HEN+HFP-1&&vcnt!=VSW+VBP+VEN+VFP-1) begin
                hs<=1;hen<=0;hcnt<=0;vcnt<=vcnt+1;
            end
            else if(hcnt==HSW+HBP+HEN+HFP-1&&vcnt==VSW+VBP+VEN+VFP-1) begin
                hs<=1;hen<=0;hcnt<=0;vcnt<=0;
            end
            else begin
                hs<=hs;hen<=hen;hcnt<=hcnt+1;vcnt<=vcnt;
            end
            // vs,ven
            if(vcnt==VSW-1&&hcnt==HSW+HBP+HEN+HFP-1) begin
                vs<=0;ven<=0;
            end
            else if(vcnt==VSW+VBP-1&&hcnt==HSW+HBP+HEN+HFP-1) begin
                vs<=0;ven<=1;
            end
            else if(vcnt==VSW+VBP+VEN-1&&hcnt==HSW+HBP+HEN+HFP-1) begin
                vs<=0;ven<=0;
            end
            else if(vcnt==VSW+VBP+VEN+VFP-1&&hcnt==HSW+HBP+HEN+HFP-1) begin
                vs<=1;ven<=0;
            end
            else begin
                vs<=vs;ven<=ven;
            end
        end
    end
    assign test_hcnt=hcnt,test_vcnt=vcnt;
endmodule