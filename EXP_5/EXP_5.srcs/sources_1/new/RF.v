`timescale 1ns / 1ps

module RF#(
    parameter AW=5,
    DW=16
)(
    input clk,
    input [AW-1:0] ra0,ra1,
    input [AW-1:0] wa,
    input [DW-1:0] wd,
    input we,
    // 修改后增加了一个读口
    input [AW-1:0] wa2,
    input [DW-1:0] wd2,
    input we2,

    output [DW-1:0] rd0,rd1,
    ///////////////////测试用端口
    output [DW-1:0] data1e,
    output [DW-1:0] data1f,
    output [DW-1:0] data0,
    output [DW-1:0] data1,
    output [DW-1:0] data2
    );
    reg [DW-1:0] rf [0:(1<<AW)-1];
    // 便于测试先初始化
    integer i;
    initial begin
        for(i=0;i<(1<<AW);i=i+1) begin
            rf[i]=31-i;
        end
    end

    assign rd0=rf[ra0],rd1=rf[ra1];
    always @(posedge clk) begin
        if(we&&we2)
            if(wa==wa2)
                rf[wa]<=wd;
            else begin
                rf[wa]<=wd;
                rf[wa2]<=wd2;
            end
        else if(we)     rf[wa]<=wd;
        else if(we2)    rf[wa2]<=wd2;
    end
    /////////////////测试用端口
    assign data1e=rf[30];
    assign data1f=rf[31];
    assign data0=rf[0];
    assign data1=rf[1];
    assign data2=rf[2];
endmodule