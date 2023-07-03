#include<windows.h>
#include<stdio.h>
#include<stdlib.h>
#include<string.h>

#define width 16
#define height 8
FILE* outfp;

int writeMap(char* faddr, int maze[height][width]){
    outfp = fopen(faddr, "w+");
    fprintf(outfp, "memory_initialization_radix=2;\nmemory_initialization_vector=\n");
    // coe文件写入
    for (int i = 0; i < height;i++)
        for (int j = 0; j < width;j++)
            if(i!=height-1||j!=width-1)
                fprintf(outfp, "000000%d,\n", maze[i][j]);
    fprintf(outfp, "000000%d;", maze[height - 1][width - 1]);
    return 0;
}

int genList(char** flist,int maze[height][width],int ifwrite,int ifprint){
    char list[height][width][height][width] = {0};
    memset(list, 0, height * width * height * width * sizeof(char));
    for (int selfy = 0; selfy < height;selfy++)
        for (int selfx = 0; selfx < width;selfx++){
            // WALL
            if(!maze[selfy][selfx])
                continue;
            list[selfy][selfx][selfy][selfx] = 15;
            int sign = 1;
            while(sign){
                sign = 0;
                for (int ghosty = 0; ghosty < height;ghosty++){
                    for (int ghostx = 0; ghostx < width;ghostx++){
                        // WALL||ED
                        if(!maze[ghosty][ghostx]||list[selfy][selfx][ghosty][ghostx])
                            continue;
                        // UED
                        if(ghosty>0&&list[selfy][selfx][ghosty-1][ghostx])
                            list[selfy][selfx][ghosty][ghostx] = 1;
                        else if(ghosty<height-1&&list[selfy][selfx][ghosty+1][ghostx])
                            list[selfy][selfx][ghosty][ghostx] = 2;
                        else if(ghostx>0&&list[selfy][selfx][ghosty][ghostx-1])
                            list[selfy][selfx][ghosty][ghostx] = 4;
                        else if(ghostx<width-1&&list[selfy][selfx][ghosty][ghostx+1])
                            list[selfy][selfx][ghosty][ghostx] = 8;
                        else{
                            list[selfy][selfx][ghosty][ghostx] = 0;
                            continue;
                        }
                        sign = 1;
                    }
                }
            }
        }
    // struct infostack {
    //     int x, y;
    //     char info;
    // } stack[128];
    // int top = 0;
    // for (int selfy = 0; selfy < height;selfy++)
    //     for (int selfx = 0; selfx < width;selfx++){
    //         // WALL
    //         if(!maze[selfy][selfx])
    //             continue;
    //         list[selfy][selfx][selfy][selfx] = 15;
    //         int sign = 1;
    //         while(sign){
    //             sign = 0;
    //             for (int ghosty = 0; ghosty < height;ghosty++){
    //                 for (int ghostx = 0; ghostx < width;ghostx++){
    //                     // WALL||ED
    //                     if(!maze[ghosty][ghostx]||list[selfy][selfx][ghosty][ghostx])
    //                         continue;
    //                     // UED
    //                     if(ghosty>0&&list[selfy][selfx][ghosty-1][ghostx]){
    //                         stack[top].x = ghostx;
    //                         stack[top].y = ghosty;
    //                         stack[top].info = 1;
    //                         top++;
    //                     }
    //                     else if(ghosty<height-1&&list[selfy][selfx][ghosty+1][ghostx]){
    //                         stack[top].x = ghostx;
    //                         stack[top].y = ghosty;
    //                         stack[top].info = 2;
    //                         top++;
    //                     }
    //                     else if(ghostx>0&&list[selfy][selfx][ghosty][ghostx-1]){
    //                         stack[top].x = ghostx;
    //                         stack[top].y = ghosty;
    //                         stack[top].info = 4;
    //                         top++;
    //                     }
    //                     else if(ghostx<width-1&&list[selfy][selfx][ghosty][ghostx+1]){
    //                         stack[top].x = ghostx;
    //                         stack[top].y = ghosty;
    //                         stack[top].info = 8;
    //                         top++;
    //                     }
    //                     else{
    //                         list[selfy][selfx][ghosty][ghostx] = 0;
    //                         continue;
    //                     }
    //                     sign = 1;
    //                 }
    //             }
    //             while(top>0){
    //                 top--;
    //                 list[selfy][selfx][stack[top].y][stack[top].x] = stack[top].info;
    //             }
    //         }
    //     }
    if(ifwrite||ifprint){
        FILE *fpp[4];
        fpp[0] = fopen(flist[0], "w+"),
        fpp[1] = fopen(flist[1], "w+"),
        fpp[2] = fopen(flist[2], "w+"),
        fpp[3] = fopen(flist[3], "w+");
        for (int selfy = 7; selfy < 8;selfy++)
            for (int selfx = 0; selfx < width;selfx++){
                if(ifprint){
                    printf("New RAM:\n");
                    for (int i = 0; i < width + 2;i++)
                        printf("###");
                    printf("\n");
                }
                for (int ghosty = 0; ghosty < height;ghosty++)
                    for (int ghostx = 0; ghostx < width;ghostx++){
                        if(ifwrite){
                            if(selfy%2==0&&selfx==0&&ghosty==0&&ghostx==0)        // begin of file
                                fprintf(fpp[selfy/2], "memory_initialization_radix=16;\nmemory_initialization_vector=\n");
                            if(selfy%2==1&&selfx==width-1&&ghosty==height-1&&ghostx==width-1)
                                fprintf(fpp[selfy/2],"%d;",list[selfy][selfx][ghosty][ghostx]);
                            else if(ghostx==width-1)
                                fprintf(fpp[selfy/2],"%d,\n",list[selfy][selfx][ghosty][ghostx]);
                            else if(ghosty==0&&ghostx==0)
                                fprintf(fpp[selfy/2],"\n\n%d,",list[selfy][selfx][ghosty][ghostx]);
                            else
                                fprintf(fpp[selfy/2],"%d,",list[selfy][selfx][ghosty][ghostx]);
                        }
                        if(ifprint){
                            char dir = list[selfy][selfx][ghosty][ghostx];
                            if(ghostx==0)
                                printf("###");
                            if(dir==1)
                                printf(" Λ ");
                            else if(dir==2)
                                printf(" V ");
                            else if(dir==4)
                                printf(" < ");
                            else if(dir==8)
                                printf(" > ");
                            else if(dir==15)
                                printf(" @ ");
                            else if(dir==0)
                                printf("###");
                            else
                                printf("XXX");
                            if(ghostx==width-1)
                                printf("###");
                            if(ghostx==width-1)
                                printf("\n");
                        }
                    }
                if(ifprint){
                    for (int i = 0; i < width + 2;i++)
                        printf("###");
                    printf("\n\n");
                }
            }
    }
    return 0;
}

int count(int maze[height][width]){
    char list1[height][width][height][width] = {0};
    char list2[height][width][height][width] = {0};
    int res = 0;
    memset(list1, 0, height * width * height * width * sizeof(char));
    memset(list2, 0, height * width * height * width * sizeof(char));
    for (int selfy = 0; selfy < height;selfy++)
        for (int selfx = 0; selfx < width;selfx++){
            // WALL
            if(!maze[selfy][selfx])
                continue;
            list1[selfy][selfx][selfy][selfx] = 15;
            int sign = 1;
            while(sign){
                sign = 0;
                for (int ghosty = 0; ghosty < height;ghosty++){
                    for (int ghostx = 0; ghostx < width;ghostx++){
                        // WALL||ED
                        if(!maze[ghosty][ghostx]||list1[selfy][selfx][ghosty][ghostx])
                            continue;
                        // UED
                        // if(ghosty>0&&list1[selfy][selfx][ghosty-1][ghostx])
                        //     list1[selfy][selfx][ghosty][ghostx] = 1;
                        // else if(ghosty<height-1&&list1[selfy][selfx][ghosty+1][ghostx])
                        //     list1[selfy][selfx][ghosty][ghostx] = 2;
                        // else if(ghostx>0&&list1[selfy][selfx][ghosty][ghostx-1])
                        //     list1[selfy][selfx][ghosty][ghostx] = 4;
                        // else if(ghostx<width-1&&list1[selfy][selfx][ghosty][ghostx+1])
                        //     list1[selfy][selfx][ghosty][ghostx] = 8;
                        // 改变选择判断的顺序
                        if(ghosty<height-1&&list1[selfy][selfx][ghosty+1][ghostx])
                            list1[selfy][selfx][ghosty][ghostx] = 2;
                        else if(ghostx<width-1&&list1[selfy][selfx][ghosty][ghostx+1])
                            list1[selfy][selfx][ghosty][ghostx] = 8;
                        else if(ghostx>0&&list1[selfy][selfx][ghosty][ghostx-1])
                            list1[selfy][selfx][ghosty][ghostx] = 4;
                        else if(ghosty>0&&list1[selfy][selfx][ghosty-1][ghostx])
                            list1[selfy][selfx][ghosty][ghostx] = 1;
                        else{
                            list1[selfy][selfx][ghosty][ghostx] = 0;
                            continue;
                        }
                        sign = 1;
                    }
                }
            }
        }
    struct infostack {
        int x, y;
        char info;
    } stack[128];
    int top = 0;
    int difSum = 0;
    for (int selfy = 0; selfy < height;selfy++)
        for (int selfx = 0; selfx < width;selfx++){
            // WALL
            if(!maze[selfy][selfx])
                continue;
            list2[selfy][selfx][selfy][selfx] = 15;
            int sign = 1;
            while(sign){
                sign = 0;
                for (int ghosty = 0; ghosty < height;ghosty++){
                    for (int ghostx = 0; ghostx < width;ghostx++){
                        // WALL||ED
                        if(!maze[ghosty][ghostx]||list2[selfy][selfx][ghosty][ghostx])
                            continue;
                        // UED
                        if(ghosty>0&&list2[selfy][selfx][ghosty-1][ghostx]){
                            stack[top].x = ghostx;
                            stack[top].y = ghosty;
                            stack[top].info = 1;
                            top++;
                        }
                        else if(ghosty<height-1&&list2[selfy][selfx][ghosty+1][ghostx]){
                            stack[top].x = ghostx;
                            stack[top].y = ghosty;
                            stack[top].info = 2;
                            top++;
                        }
                        else if(ghostx>0&&list2[selfy][selfx][ghosty][ghostx-1]){
                            stack[top].x = ghostx;
                            stack[top].y = ghosty;
                            stack[top].info = 4;
                            top++;
                        }
                        else if(ghostx<width-1&&list2[selfy][selfx][ghosty][ghostx+1]){
                            stack[top].x = ghostx;
                            stack[top].y = ghosty;
                            stack[top].info = 8;
                            top++;
                        }
                        else{
                            list2[selfy][selfx][ghosty][ghostx] = 0;
                            continue;
                        }
                        sign = 1;
                    }
                }
                while(top>0){
                    top--;
                    list2[selfy][selfx][stack[top].y][stack[top].x] = stack[top].info;
                }
            }
        }
    for (int selfy = 0; selfy < height;selfy++)
        for (int selfx = 0; selfx < width;selfx++)
            for (int ghosty = 0; ghosty < height;ghosty++)
                for (int ghostx = 0; ghostx < width;ghostx++){
                    if(list1[selfy][selfx][ghosty][ghostx]!=list2[selfy][selfx][ghosty][ghostx]){
                        int cnt1 = 0, cnt2 = 0;
                        char state1, state2;
                        int y1 = selfy, x1 = selfx, y2 = ghosty, x2 = ghostx;
                        while(list1[y1][x1][y2][x2]!=15){
                            if(list1[y1][x1][y2][x2]==1)
                                y2--;
                            else if(list1[y1][x1][y2][x2]==2)
                                y2++;
                            else if(list1[y1][x1][y2][x2]==4)
                                x2--;
                            else if(list1[y1][x1][y2][x2]==8)
                                x2++;
                            else
                                printf("ERROR");
                            cnt1++;
                        }
                        y2 = ghosty;
                        x2 = ghostx;
                        while(list2[y1][x1][y2][x2]!=15){
                            if(list2[y1][x1][y2][x2]==1)
                                y2--;
                            else if(list2[y1][x1][y2][x2]==2)
                                y2++;
                            else if(list2[y1][x1][y2][x2]==4)
                                x2--;
                            else if(list2[y1][x1][y2][x2]==8)
                                x2++;
                            else
                                printf("ERROR");
                            cnt2++;
                        }
                        if(cnt1>cnt2){
                            res++;
                            // printf("\ndif:%d", cnt1-cnt2);
                            difSum += cnt1 - cnt2;
                        }
                    }
                }
    printf("\ndifSum:%d", difSum);
    return res;
}

int reverseAndPrint(int maze[height][width]){
    for (int i = -1; i < height+1;i++)
        for (int j = -1; j < width+1;j++){
            if(i==-1||i==height||j==-1||j==width)
                printf("##");
            else{   // 这里01反转一下
                if(maze[i][j]){
                    maze[i][j] = 0;
                    printf("##");
                }
                else{
                    maze[i][j] = 1;
                    printf("  ");
                }
            if(j==width)
                printf("\n");
            }
        }
    return 0;
}

int main(){
    // 十六进制
    // 最终地图
    int maze[height][width] = {
        {0,0,0,0,0,0,1,0,0,1,0,0,0,0,0,0},
        {0,1,1,0,1,0,1,0,0,1,0,1,0,1,1,0},
        {0,1,0,0,1,0,0,0,0,0,0,1,0,0,1,0},
        {0,1,1,0,0,0,0,1,1,0,0,0,0,1,1,0},
        {0,0,0,0,1,1,0,1,1,0,1,1,0,0,0,0},
        {0,1,1,0,0,1,0,0,0,0,1,0,0,1,1,0},
        {0,1,1,1,0,0,0,1,1,0,0,0,1,1,1,0},
        {0,0,0,0,0,1,0,0,0,0,1,0,0,0,0,0}
    };
    // int maze[height][width] = {
    //     {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
    //     {0,1,0,0,0,1,0,1,0,0,1,0,1,0,1,0},
    //     {0,0,0,1,0,0,0,0,1,0,0,0,0,1,0,0},
    //     {0,1,0,0,0,0,1,0,0,0,0,1,0,0,0,0},
    //     {0,0,0,0,1,0,0,0,0,1,0,0,0,0,1,0},
    //     {0,0,1,0,0,0,0,1,0,0,0,0,1,0,0,0},
    //     {0,1,0,1,0,1,0,0,1,0,1,0,0,0,1,0},
    //     {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0}
    // };
    reverseAndPrint(maze);
    char* faddr = "E:/vivado_files/EXP_7/EXP_7.srcs/sources_1/coeFiles/map1.coe";
    writeMap(faddr,maze);
    char *faddrList[4];
    faddrList[0] = "E:/vivado_files/EXP_7/EXP_7.srcs/sources_1/coeFiles/GDL0.coe";
    faddrList[1] = "E:/vivado_files/EXP_7/EXP_7.srcs/sources_1/coeFiles/GDL1.coe";
    faddrList[2] = "E:/vivado_files/EXP_7/EXP_7.srcs/sources_1/coeFiles/GDL2.coe";
    faddrList[3] = "E:/vivado_files/EXP_7/EXP_7.srcs/sources_1/coeFiles/GDL3.coe";
    genList(faddrList, maze, 0, 1);
    // 统计改动过的广度优先与广度优先结果的差异
    // printf("\n%d", count(maze));
    return 0;
}