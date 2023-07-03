`timescale 1ns / 1ps

module CMP_tb(
    );
    reg [7:0] a;
    reg [7:0] b;
    wire ug,ul,sg,sl;
    CMP cmp(
        .a(a),
        .b(b),
        .ug(ug),
        .ul(ul),
        .sg(sg),
        .sl(sl)
    );

    initial begin
        a=8'b0000_0000;
        b=8'b0000_0000;         //ug=0;ul=0;sg=0;sl=0
        //ab正数,(unsigned)a>b
        #10 a=8'b0000_1111;
            b=8'b0000_0011;     //ug=1;ul=0;sg=1;sl=0
        //ab正数,(unsigned)a<b
        #10 a=8'b0000_1111;
            b=8'b1111_0000;     //ug=0;ul=1;sg=1;sl=0
        #10 a=8'b0000_1111;
            b=8'b0111_0000;     //ug=0;ul=1;sg=0;sl=1
        #10 a=8'b1000_1111;
            b=8'b1111_0000;     //ug=0;ul=1;sg=0;sl=1
        //ab正数,(unsigned)a=b
        #10 a=8'b1000_0101;
            b=8'b1000_0101;     //ug=0;ul=0;sg=0;sl=0
        //ab负数,(unsigned)a>b
        #10 a=8'b1111_0000;
            b=8'b1000_0000;     //ug=1;ul=0;sg=1;sl=0
        //ab负数,(unsigned)a<b
        #10 a=8'b1000_1111;
            b=8'b1111_0000;     //ug=0;ul=1;sg=0;sl=1
        //ab负数,(unsigned)a=b
        #10 a=8'b1000_1111;
            b=8'b1000_1111;     //ug=0;ul=0;sg=0;sl=0
        //ab正数,(unsigned)a=b
        // #10 a=8'b0000_0000;
        //     b=8'b0000_0000;     //ug=0;ul=0;sg=0;sl=0

        #10 $finish;
    end
endmodule