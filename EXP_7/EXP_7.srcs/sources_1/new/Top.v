`timescale 1ns / 1ps

module Top(
    input wire clk,
    input rstn,
    input wire ps2_clk,
    input wire ps2_data,
    output wire hs,
    output wire vs,
    output wire [11:0] rgb
    );

    // parameter
    parameter UP            = 4'b0001;
    parameter DOWN          = 4'b0010;
    parameter LEFT          = 4'b0100;
    parameter RIGHT         = 4'b1000;
    parameter GAME_LOSE     = 4'b1111;

    // whole field
    reg [6:0] map_addr = 0;
    wire [6:0] map_rdata;
    reg [6:0] map_wdata = 0;
    reg map_we = 0;
    wire [6:0] dis_addr;
    wire [6:0] dis_data;
    reg [3:0] pac_dir;
    reg [3:0] pac_x;
    reg [2:0] pac_y;
    reg [31:0] pac_count = 10000000;
    reg [3:0] clyde_dir;
    reg [3:0] clyde_x;
    reg [2:0] clyde_y;
    reg win = 0;
    reg finish;

    wire [6:0] map_raddr1, map_rdata1, map_rdata2;  //只读地图的地址及数据
    reg [6:0] map_raddr2 = 0;
    reg start = 0;                                  //查找表开始信号
    wire [3:0] rlistData, wlistData;                //从怪物表里读的数据
    wire busy;                                      //查找信号
    // reg busy = 0;
    reg [3:0] list_rx1, list_rx2;
    reg [2:0] list_ry1, list_ry2;                   //玩家和怪物坐标
    wire [3:0] rx1, rx2;
    wire [2:0] ry1, ry2;                            //查找表接口
    wire [3:0] rx, grx, wx, gwx;
    wire [2:0] ry, gry, wy, gwy;                    //INI模块接口
    wire we;                                        //查找表写使能
    // reg we = 0;

    assign rx1 = busy ? rx : list_rx1;
    assign rx2 = busy ? grx : list_rx2;
    assign ry1 = busy ? ry : list_ry1;
    assign ry2 = busy ? gry : list_ry2;
    // keyboard
    wire [2:0] ps2_byte;
    wire ps2_state;
    wire clk_50;        //50MHz时钟
    keyboard kb(
        .clk(clk_50),
        .rst_n(rstn),	//复位信号
        .ps2k_clk(ps2_clk),	//PS2接口时钟信号
        .ps2k_data(ps2_data),//PS2接口数据信号
        .ps2_byte(ps2_byte),	// 1byte键值，只做简单的按键扫描
        .ps2_state(ps2_state)
    );
    clk_50_gen clk_50_gen(
        // Clock out ports
        .clk_out1(clk_50),      // output clk_out1
        // Clock in ports
        .clk_in1(clk)          // input clk_in1
    );
    MAP0 Map_Read_Only (
        .clka(clk_50),    // input wire clka
        .addra(map_raddr1),  // input wire [6 : 0] addra
        .douta(map_rdata1),  // output wire [6 : 0] douta
        .clkb(clk_50),    // input wire clkb
        .addrb(map_raddr2),  // input wire [6 : 0] addrb
        .doutb(map_rdata2)  // output wire [6 : 0] doutb
    );
    GhostDirList#(.width(16), .height(8))list(
       .rx1(rx),
       .ry1(ry),
       .wx1(wx),
       .wy1(wy),
       .wx2(gwx),
       .wy2(gwy),
       .rx2(grx),
       .ry2(gry),
       .wdata(wlistData),
       .we(we),
       .rstn(rstn),
       .clk(clk),
       .rdata(rlistData)
    );
    MapState Map (
        .clka(clk_50),    // input wire clka
        .wea(map_we),      // input wire [0 : 0] wea
        .addra(map_addr),  // input wire [6 : 0] addra
        .dina(map_wdata),    // input wire [6 : 0] dina
        .douta(map_rdata),  // output wire [6 : 0] douta
        .clkb(clk_50),    // input wire clkb
        .web(0),      // input wire [0 : 0] web
        .addrb(dis_addr),  // input wire [6 : 0] addrb
        .dinb(6'b0),    // input wire [6 : 0] dinb
        .doutb(dis_data)  // output wire [6 : 0] doutb
    );
    wire player_location, monster_location;
    assign player_location = (dis_addr == {pac_y, pac_x});
    assign monster_location = (dis_addr == {clyde_y, clyde_x});
    Display_Part DP (
        .clk(clk_50), .rstn(rstn),
        .rdata(dis_data),

        .player_location(player_location), .monster_location(monster_location), .player_eat(0),//to be done
        .player_dir(pac_dir), .monster_dir(clyde_dir),

        .raddr(dis_addr),
        .rgb(rgb),
        .hs(hs), .vs(vs)
    );
    
    // pac part params
    parameter[3:0] 
        PAC_RST = 0,
        PAC_INI = 1,
        PAC_START = 2,
        PAC_ACT = 3,
        PAC_FACE = 4,
        PAC_JUDGE_MOVE = 5,
        PAC_MOVE = 6,
        PAC_JUDGE_EAT = 7,
        PAC_EAT = 8,
        PAC_JUDGE_WIN = 9,
        PAC_FINISH = 10;
    
    reg[3:0] pac_cs = 0, pac_ns = 0;

    // ghost part params
    parameter[2:0]
        CLYDE_RST   = 0,
        CLYDE_RL    = 1,
        CLYDE_COUNT = 2,
        CLYDE_FACE  = 3,
        CLYDE_MOVE  = 4,
        PAC_LOSE    = 5;

    parameter   clyde_interval=100; // ms
    reg [32:0] clyde_cnt = 0;
    reg [2:0] clyde_cs = 0,clyde_ns;
    reg [3:0] clyde_face=DOWN;

// pac: combinational part
always @(*) begin 
    if (~rstn) pac_ns <=PAC_RST;
    //if (clyde_cs == PAC_LOSE) pac_ns <= PAC_FINISH;
    case(pac_cs)
        PAC_RST: begin
            pac_ns = PAC_START;
        end
        PAC_INI: begin
            if (~busy) pac_ns = PAC_START;
            else pac_ns = PAC_INI;
        end
        PAC_START: begin
            pac_ns = PAC_ACT;
        end
        PAC_ACT: begin
            if (ps2_state) pac_ns = PAC_FACE;
            else pac_ns = PAC_ACT;
        end
        PAC_FACE: begin
            pac_ns = PAC_JUDGE_MOVE;
        end
        PAC_JUDGE_MOVE: begin
            if (map_rdata[0])pac_ns = PAC_MOVE;
            else pac_ns = PAC_ACT;
        end
        PAC_MOVE: begin
            if (~|pac_count) begin 
                pac_ns = PAC_JUDGE_EAT;
            end
            else pac_ns = PAC_MOVE;
        end
        PAC_JUDGE_EAT: begin
            if (map_rdata[1]) begin
                pac_ns = PAC_EAT;
            end
            else pac_ns = PAC_JUDGE_EAT;
        end
        PAC_EAT: begin
            pac_ns = PAC_ACT;
            //pac_ns = PAC_JUDGE_WIN;
        end
        PAC_JUDGE_WIN: begin
            if (win) pac_ns = PAC_FINISH;
            else pac_ns = PAC_ACT;
        end
        
    endcase
end

// timing
always @(posedge clk) begin
    if(ps2_byte==3'b010) //A
        pac_dir <= LEFT;    
    else if(ps2_byte==3'b100) //D
        pac_dir <= RIGHT;
    else if(ps2_byte==3'b001) //W
        pac_dir <= UP;
    else if(ps2_byte==3'b011) //S
        pac_dir <= DOWN;
    else
        pac_dir <= pac_dir;
    // player
    pac_cs<=pac_ns;
    case(pac_cs)
        PAC_ACT: begin
            pac_count <= 50000000;
            map_we <= 0;
        end
        PAC_FACE: begin
            map_addr <= {pac_y, pac_x};
        end
        PAC_MOVE: begin
            pac_count <= pac_count - 1;
            if (~|pac_count) begin 
                case (pac_dir)
                    UP: begin
                        pac_y <= pac_y - 1;
                    end
                    DOWN: begin
                        pac_y <= pac_y + 1;
                    end
                    LEFT: begin
                        pac_x <= pac_x - 1;
                    end
                    RIGHT: begin
                        pac_x <= pac_x + 1;
                    end
                endcase
            end
        end
        PAC_JUDGE_EAT: begin
            if (map_rdata[1]) begin
                map_wdata <= {map_rdata[6:2], 1'b0, map_rdata[0]};
            end
        end
        PAC_EAT: begin
            map_we <= 1;
        end
    endcase

    // ghost
    clyde_cs<=clyde_ns;
    case(clyde_cs)
       CLYDE_RST:  begin
           clyde_x <= 0;
           clyde_y <= 7;
       end
       CLYDE_RL:   begin
           list_rx1 <= pac_x;
           list_ry1 <= pac_y;
           list_rx2 <= clyde_x;
           list_ry2 <= clyde_y;
           clyde_cnt <= 0;
       end
       CLYDE_COUNT:    begin
           clyde_cnt <= clyde_cnt+1;
       end
       CLYDE_FACE: begin
           clyde_face <= wlistData;
       end
       CLYDE_MOVE: begin
           case(clyde_face)
               UP: begin
                   clyde_x<=clyde_x;
                   clyde_y<=clyde_y-1;
               end
               DOWN:   begin
                   clyde_x<=clyde_x;
                   clyde_y<=clyde_y+1;
               end
               LEFT:   begin
                   clyde_x<=clyde_x-1;
                   clyde_y<=clyde_y;
               end
               RIGHT:  begin
                   clyde_x<=clyde_x+1;
                   clyde_y<=clyde_y;
               end
               default:begin
                   clyde_x<=clyde_x;
                   clyde_y<=clyde_y;
               end
           endcase
       end
    endcase
end
endmodule


// MAZEINIT #(.width(16), .height(8))list_ini(
//    .start(start),
//    .clk(clk),
//    .listState(rlistData),
//    .mapState(map_rdata1),
//    .busy(busy),
//    .listData(wlistData),
//    .mapAddr(map_raddr1),
//    .wx(wx),
//    .wy(wy),
//    .rx(rx),
//    .ry(ry),
//    .gwx(gwx),
//    .gwy(gwy),
//    .grx(grx),
//    .gry(gry),
//    .we(we)
// );

// ghost: combinmational part
// always @(*) begin
//    if(rstn)    begin
//    case(clyde_cs)
//        CLYDE_RST:  begin
//            clyde_ns=CLYDE_RL;
//        end
//        CLYDE_RL:   begin
//            clyde_ns=CLYDE_COUNT;
//        end
//        CLYDE_COUNT:    begin
//            clyde_ns=CLYDE_FACE;
//        end
//        CLYDE_FACE: begin
//            if(clyde_cnt==clyde_interval)
//                clyde_ns=CLYDE_MOVE;
//            else
//                clyde_ns=CLYDE_COUNT;
//        end
//        CLYDE_MOVE: begin
//            if(clyde_face!=GAME_LOSE)
//                clyde_ns=CLYDE_RL;
//            else
//                clyde_ns=PAC_LOSE;
//        end
//        PAC_LOSE:   begin
//            // ghost has encountered player, game end
//            clyde_ns=PAC_LOSE;
//        end
//        default:    begin
//            clyde_ns=CLYDE_RST;
//        end
//    endcase
//    end
// end