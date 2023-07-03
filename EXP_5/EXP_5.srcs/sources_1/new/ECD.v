`timescale 1ns / 1ps

module ECD(
    input [15:0] x,
    output reg [3:0] y,
    output reg gs
    );
    always @(*) begin
        if(x==16'h0000)
            gs=0;
        else
            gs=1;
        if(x[15]==1)
            y=4'hf;
        else if(x[14]==1)
            y=4'he;
        else if(x[13]==1)
            y=4'hd;
        else if(x[12]==1)
            y=4'hc;
        else if(x[11]==1)
            y=4'hb;
        else if(x[10]==1)
            y=4'ha;
        else if(x[9]==1)
            y=4'h9;
        else if(x[8]==1)
            y=4'h8;
        else if(x[7]==1)
            y=4'h7;
        else if(x[6]==1)
            y=4'h6;
        else if(x[5]==1)
            y=4'h5;
        else if(x[4]==1)
            y=4'h4;
        else if(x[3]==1)
            y=4'h3;
        else if(x[2]==1)
            y=4'h2;
        else if(x[1]==1)
            y=4'h1;
        else
            y=4'h0;
    end
endmodule
