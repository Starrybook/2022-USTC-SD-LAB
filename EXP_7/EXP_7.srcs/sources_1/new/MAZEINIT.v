`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/12/01 17:57:12
// Design Name: 
// Module Name: MAZEINIT
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module MAZEINIT#(
    parameter   width=16,
                height=8
)(
    input   start,
    input   rstn,clk,
    input   [3:0] listState,
    input   [6:0] mapState,
    output  reg busy,
    output  reg [3:0] listData,
    output  reg [6:0] mapAddr,
    output  reg [3:0] wx,gwx,rx,grx,
    output  reg [2:0] wy,gwy,ry,gry,
    output  reg we,
    ///////////////////ports for test
    output  test_sign,test_record1,test_record2,
    output  [3:0]   test_selfx,test_ghostx,
    output  [2:0]   test_selfy,test_ghosty,
    output  [4:0]   test_cs
    );
    // 25 States, use 5 bits to record
    parameter   WAIT=5'H00,
                INIT=5'H01,
                CNT1=5'H02,
                CS1=5'H03,
                RM_CS1=5'H04,
                INITLIST=5'H05,
                SETSIGN=5'H06,
                CHECKSIGN=5'H07,
                CNT2=5'H08,
                RM_CS2=5'H09,
                RL_CS2=5'H0a,
                CS2=5'H0b,
                RM_UP=5'H0c,
                RM_DOWN=5'H0d,
                RM_LEFT=5'H0e,
                RM_RIGHT=5'H0f,
                RL_UP=5'H10,
                RL_DOWN=5'H11,
                RL_LEFT=5'H12,
                RL_RIGHT=5'H13,
                SET_UP=5'H14,
                SET_DOWN=5'H15,
                SET_LEFT=5'H16,
                SET_RIGHT=5'H17,
                INITEND=5'H18,
                RM_CS1_DELAY=5'H19,
                RL_CS2_DELAY=5'H1A,
                RL_DELAY0=5'H1B,
                RL_DELAY1=5'H1C,
                RL_DELAY2=5'H1D,
                RL_DELAY3=5'H1E;

    parameter   UP=4'B0001,
                DOWN=4'B0010,
                LEFT=4'B0100,
                RIGHT=4'B1000,
                UED=4'B0000,
                FIND=4'B1111;
    // listData:4'b0000:UNVISITED
    //          4'b1111:FIND
    //          listData[i]==1, else==0:up/down/left/right
    reg [4:0]   cs=0,ns=0;
    reg sign,cnt1Record,cnt2Record;
    reg [3:0] selfx,ghostx;
    reg [2:0] selfy,ghosty;
    // State machine type: Moore
    // timing sequence part
    always @(posedge clk, negedge rstn) begin
        if(!rstn) begin
            cs<=WAIT;
            ns<=WAIT;
            busy<=0;
            listData<=0;
            mapAddr<=0;
            wx<=0;wy<=0;
            gwx<=0;gwy<=0;
            rx<=0;ry<=0;
            grx<=0;gry<=0;
            sign<=0;
            cnt1Record<=0;
            cnt2Record<=0;
            selfx<=0;selfy<=0;
            ghostx<=0;ghosty<=0;
            we<=0;
        end
        else    begin
            cs<=ns;
            if(cs==CNT1&&!selfx&&!selfy)        cnt1Record=1;
            else                    cnt1Record=cnt1Record;
            if(cs==CNT2&&!ghostx&&!ghosty)      cnt2Record=1;
            else                    cnt2Record=cnt2Record;
        end
    end
    // combinational part
    always @(*) begin
        case(cs)
            WAIT: if(start)   begin   ns=INIT;   busy=1; end
            INIT:   begin
                ns=CNT1;
                cnt1Record=0;
                selfx=width-1;
                selfy=height-1;
                we<=0;
                end
            CNT1:   begin
                if(cnt1Record&&!selfx&&!selfy)    ns=INITEND;
                else                              ns=RM_CS1;
                case(selfx)
                    width-1:selfy=selfy+1;
                    default:selfy=selfy;
                endcase
                selfx=selfx+1;
                // if(!selfx&&!selfy)  cnt1Record=1;
                // else                cnt1Record=cnt1Record;
            end
            RM_CS1: begin   mapAddr=selfy*width+selfx;  ns=RM_CS1_DELAY; end
            RM_CS1_DELAY:   ns=CS1;
            CS1:    if(mapState[0]) ns=INITLIST;
                    else            ns=CNT1;
            INITLIST:   begin
                wx=selfx;
                wy=selfy;
                gwx=selfx;
                gwy=selfy;
                listData=FIND;
                we=1;
                ns=SETSIGN;
            end
            SETSIGN:    begin
                sign=0;
                cnt2Record=0;
                ghostx=width-1;
                ghosty=height-1;
                we=0;
                ns=CNT2;
            end
            CHECKSIGN:  if(sign)    ns=SETSIGN;
                        else        ns=CNT1;
            CNT2:   begin if(cnt2Record&&!ghostx&&!ghosty)    ns=CHECKSIGN;
                    else                                ns=RM_CS2;
                    we=0;
                    case(ghostx)
                        width-1:ghosty=ghosty+1;
                        default:ghosty=ghosty;
                    endcase
                    ghostx=ghostx+1;
                    // if(!ghostx&&!ghosty)    cnt2Record=1;
                    // else                    cnt2Record=cnt2Record;
                    end
            RM_CS2: begin   mapAddr=ghosty*width+ghostx;    ns=RL_CS2;  end
            RL_CS2: begin   rx=selfx;   ry=selfy;
                            grx=ghostx; gry=ghosty; ns=RL_CS2_DELAY;             end
            RL_CS2_DELAY:   ns=CS2;
            CS2:    if(!mapState[0]||listState!=UED)    ns=CNT2;
                    else                                ns=RM_UP;
            RM_UP:  if(ghosty>0) begin
                        mapAddr=(ghosty-1)*width+ghostx;
                        ns=RL_UP;
                    end
                    else    begin
                        mapAddr=ghosty*width+ghostx;
                        ns=RM_DOWN;
                    end
            RM_DOWN:if(ghosty<height-1)   begin
                        mapAddr=(ghosty+1)*width+ghostx;
                        ns=RL_DOWN;
                    end
                    else    begin
                        mapAddr=ghosty*width+ghostx;
                        ns=RM_LEFT;
                    end
            RM_LEFT:if(ghostx>0)   begin
                        mapAddr=ghosty*width+ghostx-1;
                        ns=RL_LEFT;
                    end
                    else    begin
                        mapAddr=ghosty*width+ghostx;
                        ns=RM_RIGHT;
                    end
            RM_RIGHT:if(ghostx<width-1)   begin
                        mapAddr=ghosty*width+ghostx+1;
                        ns=RL_RIGHT;
                    end
                    else    begin
                        mapAddr=ghosty*width+ghostx;
                        ns=CNT2;
                    end
            RL_UP:      if(ghosty>0)        begin
                        rx=selfx;
                        ry=selfy;
                        grx=ghostx;
                        gry=ghosty-1;
                        ns=RL_DELAY0;
                    end
                    else    begin
                        grx=ghostx;
                        gry=ghosty;
                        ns=RM_DOWN;
                    end
            RL_DELAY0:  ns=SET_UP;
            RL_DOWN:    if(ghosty<height-1) begin
                        rx=selfx;
                        ry=selfy;
                        grx=ghostx;
                        gry=ghosty+1;
                        ns=RL_DELAY1;
                    end
                    else    begin
                        grx=ghostx;
                        gry=ghosty;
                        ns=RM_LEFT;
                    end
            RL_DELAY1:  ns=SET_DOWN;
            RL_LEFT:    if(ghostx>0)        begin
                        rx=selfx;
                        ry=selfy;
                        grx=ghostx-1;
                        gry=ghosty;
                        ns=RL_DELAY2;
                    end
                    else    begin
                        grx=ghostx;
                        gry=ghosty;
                        ns=RM_RIGHT;
                    end
            RL_DELAY2:  ns=SET_LEFT;
            RL_RIGHT:   if(ghostx<width-1)  begin
                        rx=selfx;
                        ry=selfy;
                        grx=ghostx+1;
                        gry=ghosty;
                        ns=RL_DELAY3;
                    end
                    else    begin
                        grx=ghostx;
                        gry=ghosty;
                        ns=CNT2;
                    end
            RL_DELAY3:  ns=SET_RIGHT;
            SET_UP:     if(!mapState[0]||listState==UED)   begin
                            sign=sign;
                            ns=RM_DOWN;
                            we=0;
                        end
                        else    begin
                            sign=1;
                            wx=selfx;
                            wy=selfy;
                            gwx=ghostx;
                            gwy=ghosty;
                            listData=UP;
                            we=1;
                            ns=CNT2;
                        end
            SET_DOWN:   if(!mapState[0]||listState==UED)   begin
                            sign=sign;
                            ns=RM_LEFT;
                            we=0;
                        end
                        else    begin
                            sign=1;
                            wx=selfx;
                            wy=selfy;
                            gwx=ghostx;
                            gwy=ghosty;
                            listData=DOWN;
                            we=1;
                            ns=CNT2;
                        end
            SET_LEFT:   if(!mapState[0]||listState==UED)   begin
                            sign=sign;
                            ns=RM_RIGHT;
                            we=0;
                        end
                        else    begin
                            sign=1;
                            wx=selfx;
                            wy=selfy;
                            gwx=ghostx;
                            gwy=ghosty;
                            listData=LEFT;
                            we=1;
                            ns=CNT2;
                        end
            SET_RIGHT:  if(!mapState[0]||listState==UED)   begin
                            sign=sign;
                            ns=CNT2;
                            we=0;
                        end
                        else    begin
                            sign=1;
                            wx=selfx;
                            wy=selfy;
                            gwx=ghostx;
                            gwy=ghosty;
                            listData=RIGHT;
                            we=1;
                            ns=CNT2;
                        end
            INITEND:    begin   busy=0; ns=WAIT;    end
            default:    ns<=WAIT;
        endcase
    end

    //////////////ports for test
    assign  test_sign=sign,test_cs=cs,
           test_record1=cnt1Record,test_record2=cnt2Record;
    assign  test_selfx=selfx,test_selfy=selfy,
           test_ghostx=ghostx,test_ghosty=ghosty;
endmodule


// module MAZEINIT#(
//     parameter   width=16,
//                 height=8
// )(
//     input   start,
//     input   rstn,clk,
//     input   [3:0] listState,
//     input   [6:0] mapState,
//     output  reg busy,
//     output  reg [3:0] listData,
//     output  reg [6:0] mapAddr,
//     output  reg [3:0] wx,gwx,rx,grx,
//     output  reg [2:0] wy,gwy,ry,gry,
//     output  reg we,
//     ///////////////////ports for test
//     output  test_sign,test_record1,test_record2,
//     output  [3:0]   test_selfx,test_ghostx,
//     output  [2:0]   test_selfy,test_ghosty,
//     output  [4:0]   test_cs
//     );
//     // 25 States, use 5 bits to record
//     parameter   WAIT=5'H00,
//                 INIT=5'H01,
//                 CNT1=5'H02,
//                 CS1=5'H03,
//                 RM_CS1=5'H04,
//                 INITLIST=5'H05,
//                 SETSIGN=5'H06,
//                 CHECKSIGN=5'H07,
//                 CNT2=5'H08,
//                 RM_CS2=5'H09,
//                 RL_CS2=5'H0a,
//                 CS2=5'H0b,
//                 RM_UP=5'H0c,
//                 RM_DOWN=5'H0d,
//                 RM_LEFT=5'H0e,
//                 RM_RIGHT=5'H0f,
//                 RL_UP=5'H10,
//                 RL_DOWN=5'H11,
//                 RL_LEFT=5'H12,
//                 RL_RIGHT=5'H13,
//                 SET_UP=5'H14,
//                 SET_DOWN=5'H15,
//                 SET_LEFT=5'H16,
//                 SET_RIGHT=5'H17,
//                 INITEND=5'H18,
//                 RM_CS1_DELAY=5'H19,
//                 RL_CS2_DELAY=5'H1A,
//                 RL_DELAY0=5'H1B,
//                 RL_DELAY1=5'H1C,
//                 RL_DELAY2=5'H1D,
//                 RL_DELAY3=5'H1E;

//     parameter   UP=4'B0001,
//                 DOWN=4'B0010,
//                 LEFT=4'B0100,
//                 RIGHT=4'B1000,
//                 UED=4'B0000,
//                 FIND=4'B1111;
//     // listData:4'b0000:UNVISITED
//     //          4'b1111:FIND
//     //          listData[i]==1, else==0:up/down/left/right
//     reg [4:0]   cs=0,ns=0;
//     reg sign,cnt1Record,cnt2Record;
//     reg [3:0] selfx,ghostx;
//     reg [2:0] selfy,ghosty;
//     // State machine type: Moore
//     // timing sequence part
//     always @(posedge clk,negedge rstn) begin
//         if(!rstn) begin
//             cs<=WAIT;
//             ns<=WAIT;
//             busy<=0;
//             listData<=0;
//             mapAddr<=0;
//             wx<=0;wy<=0;
//             gwx<=0;gwy<=0;
//             rx<=0;ry<=0;
//             grx<=0;gry<=0;
//             sign<=0;
//             cnt1Record<=0;
//             cnt2Record<=0;
//             selfx<=0;selfy<=0;
//             ghostx<=0;ghosty<=0;
//             we<=0;
//         end
//         else begin
//             cs<=ns;
//         end
//     end
//     // combinational part
//     always @(*) begin
//         if(rstn)
//         case(cs)
//             WAIT: if(start)   begin   ns=INIT;   busy=1; end
//             INIT:   begin
//                 ns=CNT1;
//                 cnt1Record=0;
//                 selfx=width-1;
//                 selfy=height-1;
//                 we<=0;
//                 end
//             CNT1:   begin
//                 if(cnt1Record&&!selfx&&!selfy)    ns=INITEND;
//                 else                              ns=RM_CS1;
//                 case(selfx)
//                     width-1:selfy=selfy+1;
//                     default:selfy=selfy;
//                 endcase
//                 selfx=selfx+1;
//                 if(!selfx&&!selfy)  cnt1Record=1;
//                 else                cnt1Record=cnt1Record;
//             end
//             RM_CS1: begin   mapAddr=selfy*width+selfx;  ns=RM_CS1_DELAY; end
//             RM_CS1_DELAY:   ns=CS1;
//             CS1:    if(mapState[0]) ns=INITLIST;
//                     else            ns=CNT1;
//             INITLIST:   begin
//                 wx=selfx;
//                 wy=selfy;
//                 gwx=selfx;
//                 gwy=selfy;
//                 listData=FIND;
//                 we=1;
//                 ns=SETSIGN;
//             end
//             SETSIGN:    begin
//                 sign=0;
//                 cnt2Record=0;
//                 ghostx=width-1;
//                 ghosty=height-1;
//                 we=0;
//                 ns=CNT2;
//             end
//             CHECKSIGN:  if(sign)    ns=SETSIGN;
//                         else        ns=CNT1;
//             CNT2:   begin if(cnt2Record&&!ghostx&&!ghosty)    ns=CHECKSIGN;
//                     else                                ns=RM_CS2;
//                     we=0;
//                     case(ghostx)
//                         width-1:ghosty=ghosty+1;
//                         default:ghosty=ghosty;
//                     endcase
//                     ghostx=ghostx+1;
//                     if(!ghostx&&!ghosty)    cnt2Record=1;
//                     else                    cnt2Record=cnt2Record;
//                     end
//             RM_CS2: begin   mapAddr=ghosty*width+ghostx;    ns=RL_CS2;  end
//             RL_CS2: begin   rx=selfx;   ry=selfy;
//                             grx=ghostx; gry=ghosty; ns=RL_CS2_DELAY;             end
//             RL_CS2_DELAY:   ns=CS2;
//             CS2:    if(!mapState[0]||listState!=UED)    ns=CNT2;
//                     else                                ns=RM_UP;
//             RM_UP:  if(ghosty>0) begin
//                         mapAddr=(ghosty-1)*width+ghostx;
//                         ns=RL_UP;
//                     end
//                     else    begin
//                         mapAddr=ghosty*width+ghostx;
//                         ns=RM_DOWN;
//                     end
//             RM_DOWN:if(ghosty<height-1)   begin
//                         mapAddr=(ghosty+1)*width+ghostx;
//                         ns=RL_DOWN;
//                     end
//                     else    begin
//                         mapAddr=ghosty*width+ghostx;
//                         ns=RM_LEFT;
//                     end
//             RM_LEFT:if(ghostx>0)   begin
//                         mapAddr=ghosty*width+ghostx-1;
//                         ns=RL_LEFT;
//                     end
//                     else    begin
//                         mapAddr=ghosty*width+ghostx;
//                         ns=RM_RIGHT;
//                     end
//             RM_RIGHT:if(ghostx<width-1)   begin
//                         mapAddr=ghosty*width+ghostx+1;
//                         ns=RL_RIGHT;
//                     end
//                     else    begin
//                         mapAddr=ghosty*width+ghostx;
//                         ns=CNT2;
//                     end
//             RL_UP:      if(ghosty>0)        begin
//                         rx=selfx;
//                         ry=selfy;
//                         grx=ghostx;
//                         gry=ghosty-1;
//                         ns=RL_DELAY0;
//                     end
//                     else    begin
//                         grx=ghostx;
//                         gry=ghosty;
//                         ns=RM_DOWN;
//                     end
//             RL_DELAY0:  ns=SET_UP;
//             RL_DOWN:    if(ghosty<height-1) begin
//                         rx=selfx;
//                         ry=selfy;
//                         grx=ghostx;
//                         gry=ghosty+1;
//                         ns=RL_DELAY1;
//                     end
//                     else    begin
//                         grx=ghostx;
//                         gry=ghosty;
//                         ns=RM_LEFT;
//                     end
//             RL_DELAY1:  ns=SET_DOWN;
//             RL_LEFT:    if(ghostx>0)        begin
//                         rx=selfx;
//                         ry=selfy;
//                         grx=ghostx-1;
//                         gry=ghosty;
//                         ns=RL_DELAY2;
//                     end
//                     else    begin
//                         grx=ghostx;
//                         gry=ghosty;
//                         ns=RM_RIGHT;
//                     end
//             RL_DELAY2:  ns=SET_LEFT;
//             RL_RIGHT:   if(ghostx<width-1)  begin
//                         rx=selfx;
//                         ry=selfy;
//                         grx=ghostx+1;
//                         gry=ghosty;
//                         ns=RL_DELAY3;
//                     end
//                     else    begin
//                         grx=ghostx;
//                         gry=ghosty;
//                         ns=CNT2;
//                     end
//             RL_DELAY3:  ns=SET_RIGHT;
//             SET_UP:     if(!mapState[0]||listState==UED)   begin
//                             sign=sign;
//                             ns=RM_DOWN;
//                             we=0;
//                         end
//                         else    begin
//                             sign=1;
//                             wx=selfx;
//                             wy=selfy;
//                             gwx=ghostx;
//                             gwy=ghosty;
//                             listData=UP;
//                             we=1;
//                             ns=CNT2;
//                         end
//             SET_DOWN:   if(!mapState[0]||listState==UED)   begin
//                             sign=sign;
//                             ns=RM_LEFT;
//                             we=0;
//                         end
//                         else    begin
//                             sign=1;
//                             wx=selfx;
//                             wy=selfy;
//                             gwx=ghostx;
//                             gwy=ghosty;
//                             listData=DOWN;
//                             we=1;
//                             ns=CNT2;
//                         end
//             SET_LEFT:   if(!mapState[0]||listState==UED)   begin
//                             sign=sign;
//                             ns=RM_RIGHT;
//                             we=0;
//                         end
//                         else    begin
//                             sign=1;
//                             wx=selfx;
//                             wy=selfy;
//                             gwx=ghostx;
//                             gwy=ghosty;
//                             listData=LEFT;
//                             we=1;
//                             ns=CNT2;
//                         end
//             SET_RIGHT:  if(!mapState[0]||listState==UED)   begin
//                             sign=sign;
//                             ns=CNT2;
//                             we=0;
//                         end
//                         else    begin
//                             sign=1;
//                             wx=selfx;
//                             wy=selfy;
//                             gwx=ghostx;
//                             gwy=ghosty;
//                             listData=RIGHT;
//                             we=1;
//                             ns=CNT2;
//                         end
//             INITEND:    begin   busy=0; ns=WAIT;    end
//             default:    ns<=WAIT;
//         endcase
//     end

//     //////////////ports for test
//     assign  test_sign=sign,test_cs=cs,
//             test_record1=cnt1Record,test_record2=cnt2Record;
//     assign  test_selfx=selfx,test_selfy=selfy,
//             test_ghostx=ghostx,test_ghosty=ghosty;
// endmodule
