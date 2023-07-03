module test(
    input clk,rst,
    output led
    );
    reg [1:0] cnt;
    always@(posedge clk, posedge rst) begin
        if(rst)
            cnt <= 2'b0;
        else
            cnt <= cnt + 1'b1;
    end
    assign led = (cnt==2'b11) ? 1'b1 : 1'b0;
endmodule

module test0(
    input clk,rst,
    output led
    );
    reg [1:0] cnt;
    always@(posedge clk, posedge rst) begin
        if(rst)
            cnt <= 2'b0;
        else
            cnt <= cnt + 1'b1;
    end
    assign led = (cnt==2'b11) ? 1'b1 : 1'b0;
endmodule