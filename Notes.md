### Verilog debug notes

数显管：注意从低位0到高位6为abcgefg，避免反向

integer,genvar定义时应在always外

```
    // 生成时钟
    reg rstn,clk=1'b0;
    always #(clk_period/2) clk=~clk;
```

[Synth 8-91] ambiguous clock in event control ["E:/vivado_files/EXP_4/EXP_4.srcs/sources_1/new/DB.v":33]
第一种情况：
我们通常习惯边缘触发，时钟上升沿和复位下降沿写到一起，但是，在always块里面并没有初始化的一些变量，也就是我们并没有用到rstn，所以综合的时候就会报出上面的错误
第二种情况就是赋值冲突：***
// 经常会不小心发生！
同一个always块里可以允许两个if并行处理，但是这两个if所处理的内容不能有所交集，不然会产生赋值冲突，硬件电路不知道先处理哪个if的操作，也不能构建硬件电路，

e.g.
```
// 原：
always @(posedge clk,negedge rstn) begin
        if(~rstn) begin
            y<=1'b0;
            counter<=32'h0000_0000;
        end
        else begin
            counter<=counter+1'h1;  //！！！冲突
            if(counter>=T*MS) begin
                y<=x;
                counter<=32'h0000_0000; //！！！冲突
            end
        end
    end
// 修改后
always @(posedge clk,negedge rstn) begin
        if(~rstn) begin
            y<=1'b0;
            counter<=32'h0000_0000;
        end
        else begin
            if(counter>=T*MS) begin
                y<=x;
                counter<=32'h0000_0000;
            end
            else
                counter<=counter+1'h1;
        end
    end

注意FPGA板子上后面有n的一般都是低位有效

// ！！！！！！！！！！！！！！！！！！！！
运行仿真文件之前一定一定一定要设置仿真对象！！！

仿真时注意要先初始化
e.g.
initial begin
        // 注意先置零
        rstn=1'b0;      // 后补
        #10 rstn=1'b1;
        k1=32'h0000_0001;
        k2=32'h0000_0002;
        k3=32'h0000_0005;
        k4=32'h0000_000f;
        #200 $finish;
    end
最初无第一句，结果为所有输出均为x

仿真时复位很重要很重要！！！

```
输出结果出现高阻？
检查接口是否被挂起

输出结果出现X？
检查是否充分初始化

```
implement时报错
[Place 30-574] Poor placement for routing between an IO pin and BUFG. If this sub optimal condition is acceptable for this design, you may use the CLOCK_DEDICATED_ROUTE constraint in the .xdc file to demote this message to a WARNING. However, the use of this override is highly discouraged. These examples can be used directly in the .xdc file to override this clock rule.
	< set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets rstn_IBUF] >
```



	rstn_IBUF_inst (IBUF.O) is locked to IOB_X0Y144
	 and rstn_IBUF_BUFG_inst (BUFG.I) is provisionally placed by clockplacer on BUFGCTRL_X0Y31
由于什么原因呢？（rstn的问题）
在组合的always模块中用了rstn？似乎不是
自己写的CNT有问题？似乎不是，因为未引用此文件时也发生此问题
因为tb文件的缘故？...不是

报错原因为，编译器在综合时会自动的为工程中的时钟信号生成一个全局时钟BUF，然后如果管脚分配将这个BUFG连接到普通管脚上，就会报以上错误。

推测原因是下面的st与rstn都具有对reg st和counter初始化的能力，因此综合时会发生冲突，导致自动综合出一个mux，rstn不直接与寄存器连接

```    always @(posedge clk, posedge st, negedge rstn) begin
        if(~rstn) begin
            td<=1'b1;
            counter<=32'h0000_0000;
        end
        else
            if(st) begin
                td<=1'b0;
                counter<={16'h0000,tc};
            end
            else if(counter==32'h00000000) begin
                td<=1'b1;
                counter<=32'h0000_0000;
            end
            else begin
                td<=1'b0;
                counter<=counter-1'h1;
            end
    end
```

```


        else if(counter==32'h00000000) begin
        else if(~counter) begin
        两句话为何效果不同？
        因为~是一元操作符？

解决always中多触发问题
可以使用外部的T或JK触发器将脉冲信号转换为每又一次脉冲便转换仅一次值的信号，
再使用一个标记寄存器变量储存经过前一个储存器的值，处理时引用一次这个变量即将其置0
必要时可以将一些控制信号（always的输出）作为触发器的rstn


注意循环定义！
以及注意对于一个触发信号非系统时钟的always模块，是否可能被执行。

仿真过了上版不过==>尝试去掉异步复位

组合环！！！


因为rstn未前置，用了几乎一天的时间调试
```
```
错的
always @(posedge clk,negedge rstn) begin
        if(k==0) begin
            counter<=32'h0000_0000;
            y<=0;
        end
        else if(~rstn) begin
            counter<=32'h0000_0000;
            y<=0;       // 输出也被异步清零
        end
        else begin
            if(counter<k) begin
                if(counter==0||counter==k/2)
                    y<=~y;
                if(counter+1==k)
                    counter<=32'h0000_0000;
                else
                    counter<=counter+1'b1;
            end
        end
    end
对的
always @(posedge clk,negedge rstn) begin
        if(~rstn) begin
            counter<=32'h0000_0000;
            y<=0;       // 输出也被异步清零
        end
        else if(k==0) begin
            counter<=32'h0000_0000;
            y<=0;
        end
        else begin
            if(counter<k) begin
                if(counter==0||counter==k/2)
                    y<=~y;
                if(counter+1==k)
                    counter<=32'h0000_0000;
                else
                    counter<=counter+1'b1;
            end
        end
    end
```



```

仿真文件中间卡住可能是因为逻辑环,此时可能会不停运算，无法继续进行下面的时序部分
reference:逻辑环
在一些状态机逻辑进行仿真验证时，发生了仿真卡住的问题，当仿真到达一定时间会一直在这个时间仿真，不继续进行也不停止仿真，也不会报错。

这一问题我发现了两种不同的产生情况，第一种是代码编写时产生逻辑环，在某一时刻会循环改变逻辑值，导致亚稳态；第二种是testbench给的驱动变化恰好在某一时钟上升沿，而tb中用延时写的驱动变化时间都是最早的，也就是说虽然该驱动变化和时钟上升沿是同一时刻的，但是该驱动变化在仿真中被认为是比这一时钟上升沿要更早到达的。因此此时设计逻辑恰好产生了glitch，可以直观的理解为未满足保持时间，导致寄存器输出和组合逻辑在时钟沿互相触发，导致亚稳态。

第一种问题还比较好发现，我是在用计数器控制状态机跳转时，让状态机的逻辑输出控制计数器逻辑赋值，同时又让计数器逻辑赋值控制状态机跳转，导致了逻辑环。

第二个问题可能就比较奇怪了，因为在仿真时会产生意想不到的波形结果。比如在同一时刻状态机组合逻辑结果next_state和寄存器输出current_state同时变化。这一现象我认为应该是因为tb驱动在时钟上升沿之前恰好到来，next_state作为组合逻辑会在时钟上升沿之前就跟随驱动变化，然后时钟上升沿到来，current_state就会随next_state变化而变化。但是因为current_state又驱动了next_state，如果恰好下一状态中状态跳转条件满足，那么时钟上升沿到来时current_state的变化又会带动next_state变化。那总的来说在本次时钟上升沿发生的事件就是：驱动跳变->next_state->current_state->next_state->......，如果后续几个状态的t跳转条件都满足的话，current_state和next_state将在多个值之间跳变，也就是产生了亚稳态。之后current_state的亚稳态又会扩散到状态机的输出逻辑上，直接导致逻辑输出全面崩盘。

反映到波形仿真上就是，到达该时间点后仿真卡住，但是还是一直在跑，然后取消仿真后看这一时间点next_state和current_state的值竟然同时跳转到了相同的值，感觉应该是无法表达后续的亚稳态情况所以就直接在波形中保存了最初变化的值，直观上来说就是逻辑结果穿透了current_state寄存器，也就是不满足保持时间，虽然仿真中没有时序的概念。
```


### 在吃豆人幽灵方向表设计中：
复杂度比较高，不超过$32*128*m*128*10ns$, m在12以下，至少4个，一般8个左右.
为什么向储存迷宫单元状态的储存器读取数据时会延迟一个周期？

确实会延迟一个周期

用很长时间发现的问题：
取模与除法混淆
```
    // 原：
    waddr=((wy1>>1)*width+wx1)*(height*width)+wy2*width+wx2;
    raddr=((ry1>>1)*width+rx1)*(height*width)+ry2*width+rx2;
    // 正确的：
    waddr=((wy1[0])*width+wx1)*(height*width)+wy2*width+wx2;
    raddr=((ry1[0])*width+rx1)*(height*width)+ry2*width+rx2;
```
先用C生成一个标准表在通过查看BRAM在仿真后的情况一一对照极其便于发现问题！

在{}中进行运算时要注意位数问题
比如
`{y,x+1}`最好写为
`{y,x+1'b1}`的形式