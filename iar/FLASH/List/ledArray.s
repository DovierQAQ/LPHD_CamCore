///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.50.1.10123/W32 for ARM      17/Aug/2018  19:49:34
// Copyright 1999-2015 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\ShowD\Desktop\LPHD\LPHD_camCore\LPHD_camCore\app\ledArray\ledArray.c
//    Command line =  
//        C:\Users\ShowD\Desktop\LPHD\LPHD_camCore\LPHD_camCore\app\ledArray\ledArray.c
//        -D LPLD_K60 -D USE_K60D10 -lCN
//        C:\Users\ShowD\Desktop\LPHD\LPHD_camCore\LPHD_camCore\iar\FLASH\List
//        -lB
//        C:\Users\ShowD\Desktop\LPHD\LPHD_camCore\LPHD_camCore\iar\FLASH\List
//        -o
//        C:\Users\ShowD\Desktop\LPHD\LPHD_camCore\LPHD_camCore\iar\FLASH\Obj
//        --no_cse --no_unroll --no_inline --no_code_motion --no_tbaa
//        --no_clustering --no_scheduling --debug --endian=little
//        --cpu=Cortex-M4 -e --fpu=None --dlib_config "C:\Program Files
//        (x86)\IAR Systems\Embedded Workbench
//        7.3\arm\INC\c\DLib_Config_Normal.h" -I
//        C:\Users\ShowD\Desktop\LPHD\LPHD_camCore\LPHD_camCore\iar\..\app\ -I
//        C:\Users\ShowD\Desktop\LPHD\LPHD_camCore\LPHD_camCore\iar\..\app\camera\
//        -I
//        C:\Users\ShowD\Desktop\LPHD\LPHD_camCore\LPHD_camCore\iar\..\app\led\
//        -I
//        C:\Users\ShowD\Desktop\LPHD\LPHD_camCore\LPHD_camCore\iar\..\app\oled\
//        -I
//        C:\Users\ShowD\Desktop\LPHD\LPHD_camCore\LPHD_camCore\iar\..\app\task\
//        -I
//        C:\Users\ShowD\Desktop\LPHD\LPHD_camCore\LPHD_camCore\iar\..\app\uart\
//        -I
//        C:\Users\ShowD\Desktop\LPHD\LPHD_camCore\LPHD_camCore\iar\..\app\twinCore\
//        -I
//        C:\Users\ShowD\Desktop\LPHD\LPHD_camCore\LPHD_camCore\iar\..\app\mpu6050\
//        -I
//        C:\Users\ShowD\Desktop\LPHD\LPHD_camCore\LPHD_camCore\iar\..\app\nrf\
//        -I
//        C:\Users\ShowD\Desktop\LPHD\LPHD_camCore\LPHD_camCore\iar\..\app\calc\
//        -I
//        C:\Users\ShowD\Desktop\LPHD\LPHD_camCore\LPHD_camCore\iar\..\app\UI\
//        -I
//        C:\Users\ShowD\Desktop\LPHD\LPHD_camCore\LPHD_camCore\iar\..\app\ledArray\
//        -I
//        C:\Users\ShowD\Desktop\LPHD\LPHD_camCore\LPHD_camCore\iar\..\lib\CPU\
//        -I
//        C:\Users\ShowD\Desktop\LPHD\LPHD_camCore\LPHD_camCore\iar\..\lib\common\
//        -I
//        C:\Users\ShowD\Desktop\LPHD\LPHD_camCore\LPHD_camCore\iar\..\lib\LPLD\
//        -I
//        C:\Users\ShowD\Desktop\LPHD\LPHD_camCore\LPHD_camCore\iar\..\lib\LPLD\HW\
//        -I
//        C:\Users\ShowD\Desktop\LPHD\LPHD_camCore\LPHD_camCore\iar\..\lib\LPLD\DEV\
//        -I
//        C:\Users\ShowD\Desktop\LPHD\LPHD_camCore\LPHD_camCore\iar\..\lib\LPLD\FUNC\
//        -I
//        C:\Users\ShowD\Desktop\LPHD\LPHD_camCore\LPHD_camCore\iar\..\lib\uCOS-II\Ports\
//        -I
//        C:\Users\ShowD\Desktop\LPHD\LPHD_camCore\LPHD_camCore\iar\..\lib\uCOS-II\Source\
//        -I
//        C:\Users\ShowD\Desktop\LPHD\LPHD_camCore\LPHD_camCore\iar\..\lib\FatFs\
//        -I
//        C:\Users\ShowD\Desktop\LPHD\LPHD_camCore\LPHD_camCore\iar\..\lib\FatFs\option\
//        -I
//        C:\Users\ShowD\Desktop\LPHD\LPHD_camCore\LPHD_camCore\iar\..\lib\USB\common\
//        -I
//        C:\Users\ShowD\Desktop\LPHD\LPHD_camCore\LPHD_camCore\iar\..\lib\USB\driver\
//        -I
//        C:\Users\ShowD\Desktop\LPHD\LPHD_camCore\LPHD_camCore\iar\..\lib\USB\descriptor\
//        -I
//        C:\Users\ShowD\Desktop\LPHD\LPHD_camCore\LPHD_camCore\iar\..\lib\USB\class\
//        -Ol -I "C:\Program Files (x86)\IAR Systems\Embedded Workbench
//        7.3\arm\CMSIS\Include\" -D ARM_MATH_CM4
//    List file    =  
//        C:\Users\ShowD\Desktop\LPHD\LPHD_camCore\LPHD_camCore\iar\FLASH\List\ledArray.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN LPLD_GPIO_Init
        EXTERN __aeabi_memcpy4

        PUBLIC LEDARRAY_Go
        PUBLIC LEDARRAY_Init
        PUBLIC LEDARRAY_Set
        PUBLIC LEDARRAY_Show
        PUBLIC cnt_ch
        PUBLIC cnt_step
        PUBLIC ledArray

// C:\Users\ShowD\Desktop\LPHD\LPHD_camCore\LPHD_camCore\app\ledArray\ledArray.c
//    1 #include "ledArray.h"
//    2 
//    3 /****Discription**********************************************/
//    4 
//    5 /*
//    6 	0.先调用ledArray.Init()再使用本驱动
//    7 	1.当需要修改某一个或者某几个灯的状态，
//    8 		使用ledArray.Set(int , int);来达到目的
//    9 		第一个参数为LED的编号，可以使用LED(x)宏来做参数，还有LED0_7	LED8_15
//   10 			可以用 | 操作符
//   11 		第二个参数为状态，第一个参数选中的LED编号全部会变为这个状态
//   12 			可选的状态为LEDARRAY_ON或者LEDARRAY_OFF
//   13 	2.当需要同时修改所有LED的状态而且每个LED状态可能不同时
//   14 		使用ledArray.Show(int);来达到目的
//   15 		只有一个参数，这个参数的低16位分别代表16个灯的状态
//   16 	3.如果要显示字符，可以用字模提取软件提取16个像素高的字体
//   17 		将提取到的字模替换掉本文件下的CH16x16数组中的元素
//   18 		将本文件下的LEDARRAY_CHNUM宏改为要显示的字符数
//   19 		再周期性地调用ledArray.Go();来循环显示字符
//   20 		周期调用的周期时间取决于运动的快慢
//   21 
//   22 	@Time	2018-08-01
//   23 	@Author	郭帆
//   24 	@Usefor	摇摇棒16灯驱动，用字模提取来显示东西
//   25 */
//   26 
//   27 /****Definitions**********************************************/
//   28 
//   29 #define LEDARRAY_CHNUM	4
//   30 
//   31 #define LEDARRAY_PTx1	PTA
//   32 #define LEDARRAY_PTx2	PTB
//   33 #define LEDARRAY_Pinx1	GPIO_Pin24 | GPIO_Pin25 | GPIO_Pin26 | GPIO_Pin27 | GPIO_Pin28 | GPIO_Pin29
//   34 #define LEDARRAY_Pinx2	GPIO_Pin0_7 | GPIO_Pin18 | GPIO_Pin19
//   35 
//   36 #define LED0(x)			PTA24_O = x
//   37 #define LED1(x)			PTA25_O = x
//   38 #define LED2(x)			PTA26_O = x
//   39 #define LED3(x)			PTA27_O = x
//   40 #define LED4(x)			PTA28_O = x
//   41 #define LED5(x)			PTA29_O = x
//   42 #define LED6(x)			PTB0_O  = x
//   43 #define LED7(x)			PTB1_O  = x
//   44 #define LED8(x)			PTB2_O  = x
//   45 #define LED9(x)			PTB3_O  = x
//   46 #define LED10(x)		PTB4_O  = x
//   47 #define LED11(x)		PTB5_O  = x
//   48 #define LED12(x)		PTB6_O  = x
//   49 #define LED13(x)		PTB7_O  = x
//   50 #define LED14(x)		PTB18_O = x
//   51 #define LED15(x)		PTB19_O = x
//   52 
//   53 /****Functions************************************************/
//   54 
//   55 void LEDARRAY_Init(void);
//   56 void LEDARRAY_Set(int ledNum, int state);
//   57 void LEDARRAY_Show(int state);
//   58 void LEDARRAY_Go(void);
//   59 
//   60 /****Variables************************************************/
//   61 

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
//   62 static const char CH16x16[][32] =
CH16x16:
        DC8 16, 16, 16, 255, 144, 64, 16, 144, 16, 17, 22, 16, 16, 208, 16, 0
        DC8 2, 66, 129, 127, 0, 64, 64, 65, 94, 64, 64, 112, 78, 65, 64, 0, 64
        DC8 68, 84, 100, 69, 126, 68, 68, 68, 126, 69, 100, 84, 68, 64, 0, 0, 0
        DC8 0, 255, 73, 73, 73, 73, 73, 73, 73, 255, 0, 0, 0, 0, 0, 0, 62, 34
        DC8 42, 50, 34, 254, 34, 50, 42, 34, 62, 0, 0, 0, 136, 104, 9, 9, 41
        DC8 201, 9, 15, 41, 201, 9, 9, 41, 200, 8, 0, 16, 136, 196, 51, 4, 244
        DC8 148, 148, 244, 159, 244, 148, 148, 244, 4, 0, 1, 0, 255, 0, 66, 50
        DC8 2, 114, 130, 134, 154, 130, 226, 10, 50, 0, 0, 62, 34, 226, 34, 62
        DC8 16, 236, 39, 36, 36, 228, 4, 252, 0, 0, 32, 63, 32, 31, 17, 17, 0
        DC8 63, 66, 66, 74, 83, 72, 71, 112, 0, 252, 4, 252, 0, 254, 66, 190, 0
        DC8 242, 18, 242, 2, 254, 2, 0, 0, 15, 4, 15, 0, 255, 16, 15, 0, 15, 4
        DC8 79, 128, 127, 0, 0, 0
//   63 {
//   64 //	{0xFC,0x44,0xFC,0x44,0xFC,0x20,0x10,0x18,0xA7,0x44,0xA4,0x14,0x0C,0x00,0x00,0x00,
//   65 //	0x1F,0x08,0x0F,0x08,0x1F,0x04,0x02,0xFD,0x44,0x44,0x44,0x45,0xFD,0x02,0x02,0x00}, // 略
//   66 
//   67 	{0x10,0x10,0x10,0xFF,0x90,0x40,0x10,0x90,0x10,0x11,0x16,0x10,0x10,0xD0,0x10,0x00,
//   68 	0x02,0x42,0x81,0x7F,0x00,0x40,0x40,0x41,0x5E,0x40,0x40,0x70,0x4E,0x41,0x40,0x00}, // 12 拉
//   69 	{0x40,0x44,0x54,0x64,0x45,0x7E,0x44,0x44,0x44,0x7E,0x45,0x64,0x54,0x44,0x40,0x00,
//   70 	0x00,0x00,0x00,0xFF,0x49,0x49,0x49,0x49,0x49,0x49,0x49,0xFF,0x00,0x00,0x00,0x00}, // 13 普
//   71 	{0x00,0x00,0x3E,0x22,0x2A,0x32,0x22,0xFE,0x22,0x32,0x2A,0x22,0x3E,0x00,0x00,0x00,
//   72 	0x88,0x68,0x09,0x09,0x29,0xC9,0x09,0x0F,0x29,0xC9,0x09,0x09,0x29,0xC8,0x08,0x00}, // 14 黑
//   73 	{0x10,0x88,0xC4,0x33,0x04,0xF4,0x94,0x94,0xF4,0x9F,0xF4,0x94,0x94,0xF4,0x04,0x00,
//   74 	0x01,0x00,0xFF,0x00,0x42,0x32,0x02,0x72,0x82,0x86,0x9A,0x82,0xE2,0x0A,0x32,0x00}, // 15 德
//   75 
//   76 	{0x00,0x3E,0x22,0xE2,0x22,0x3E,0x10,0xEC,0x27,0x24,0x24,0xE4,0x04,0xFC,0x00,0x00,
//   77 	0x20,0x3F,0x20,0x1F,0x11,0x11,0x00,0x3F,0x42,0x42,0x4A,0x53,0x48,0x47,0x70,0x00}, // 跑
//   78 
//   79 	{0xFC,0x04,0xFC,0x00,0xFE,0x42,0xBE,0x00,0xF2,0x12,0xF2,0x02,0xFE,0x02,0x00,0x00,
//   80 	0x0F,0x04,0x0F,0x00,0xFF,0x10,0x0F,0x00,0x0F,0x04,0x4F,0x80,0x7F,0x00,0x00,0x00} // 啊
//   81 };
//   82 
//   83 /****Objects**************************************************/
//   84 

        SECTION `.data`:DATA:REORDER:NOROOT(2)
        DATA
//   85 LEDARRAY_CLASS ledArray =
ledArray:
        DC32 LEDARRAY_Init, LEDARRAY_Set, LEDARRAY_Show, LEDARRAY_Go
//   86 {
//   87 	.Init = &LEDARRAY_Init,
//   88 	.Set = &LEDARRAY_Set,
//   89 	.Show = &LEDARRAY_Show,
//   90 	.Go = &LEDARRAY_Go
//   91 };
//   92 
//   93 /****Functions************************************************/
//   94 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   95 void LEDARRAY_Init(void)
//   96 {
LEDARRAY_Init:
        PUSH     {R7,LR}
//   97 	static GPIO_InitTypeDef GPIO_InitStructure;
//   98 
//   99 	GPIO_InitStructure.GPIO_PTx = LEDARRAY_PTx1;
        LDR.N    R0,??DataTable3  ;; 0x400ff000
        LDR.N    R1,??DataTable3_1
        STR      R0,[R1, #+0]
//  100 	GPIO_InitStructure.GPIO_Pins = LEDARRAY_Pinx1;
        MOVS     R0,#+1056964608
        LDR.N    R1,??DataTable3_1
        STR      R0,[R1, #+4]
//  101 	GPIO_InitStructure.GPIO_Dir = DIR_OUTPUT;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable3_1
        STRB     R0,[R1, #+12]
//  102 	GPIO_InitStructure.GPIO_Output = OUTPUT_H;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable3_1
        STRB     R0,[R1, #+13]
//  103 	LPLD_GPIO_Init(GPIO_InitStructure);
        LDR.N    R1,??DataTable3_1
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//  104 
//  105 	GPIO_InitStructure.GPIO_PTx = LEDARRAY_PTx2;
        LDR.N    R0,??DataTable3_2  ;; 0x400ff040
        LDR.N    R1,??DataTable3_1
        STR      R0,[R1, #+0]
//  106 	GPIO_InitStructure.GPIO_Pins = LEDARRAY_Pinx2;
        LDR.N    R0,??DataTable3_3  ;; 0xc00ff
        LDR.N    R1,??DataTable3_1
        STR      R0,[R1, #+4]
//  107 	GPIO_InitStructure.GPIO_Dir = DIR_OUTPUT;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable3_1
        STRB     R0,[R1, #+12]
//  108 	GPIO_InitStructure.GPIO_Output = OUTPUT_H;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable3_1
        STRB     R0,[R1, #+13]
//  109 	LPLD_GPIO_Init(GPIO_InitStructure);
        LDR.N    R1,??DataTable3_1
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//  110 }
        POP      {R0,PC}          ;; return

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
??GPIO_InitStructure:
        DS8 20
//  111 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  112 void LEDARRAY_Set(int ledNum, int state)
//  113 {
//  114 	state = !state;
LEDARRAY_Set:
        CMP      R1,#+0
        BNE.N    ??LEDARRAY_Set_0
        MOVS     R1,#+1
        B.N      ??LEDARRAY_Set_1
??LEDARRAY_Set_0:
        MOVS     R1,#+0
//  115 	if (ledNum & LED(0)) LED0(state);
??LEDARRAY_Set_1:
        LSLS     R2,R0,#+31
        BPL.N    ??LEDARRAY_Set_2
        LDR.N    R2,??DataTable3_4  ;; 0x43fe0060
        STR      R1,[R2, #+0]
//  116 	if (ledNum & LED(1)) LED1(state);
??LEDARRAY_Set_2:
        LSLS     R2,R0,#+30
        BPL.N    ??LEDARRAY_Set_3
        LDR.N    R2,??DataTable3_5  ;; 0x43fe0064
        STR      R1,[R2, #+0]
//  117 	if (ledNum & LED(2)) LED2(state);
??LEDARRAY_Set_3:
        LSLS     R2,R0,#+29
        BPL.N    ??LEDARRAY_Set_4
        LDR.N    R2,??DataTable3_6  ;; 0x43fe0068
        STR      R1,[R2, #+0]
//  118 	if (ledNum & LED(3)) LED3(state);
??LEDARRAY_Set_4:
        LSLS     R2,R0,#+28
        BPL.N    ??LEDARRAY_Set_5
        LDR.N    R2,??DataTable3_7  ;; 0x43fe006c
        STR      R1,[R2, #+0]
//  119 	if (ledNum & LED(4)) LED4(state);
??LEDARRAY_Set_5:
        LSLS     R2,R0,#+27
        BPL.N    ??LEDARRAY_Set_6
        LDR.N    R2,??DataTable3_8  ;; 0x43fe0070
        STR      R1,[R2, #+0]
//  120 	if (ledNum & LED(5)) LED5(state);
??LEDARRAY_Set_6:
        LSLS     R2,R0,#+26
        BPL.N    ??LEDARRAY_Set_7
        LDR.N    R2,??DataTable3_9  ;; 0x43fe0074
        STR      R1,[R2, #+0]
//  121 	if (ledNum & LED(6)) LED6(state);
??LEDARRAY_Set_7:
        LSLS     R2,R0,#+25
        BPL.N    ??LEDARRAY_Set_8
        LDR.N    R2,??DataTable3_10  ;; 0x43fe0800
        STR      R1,[R2, #+0]
//  122 	if (ledNum & LED(7)) LED7(state);
??LEDARRAY_Set_8:
        LSLS     R2,R0,#+24
        BPL.N    ??LEDARRAY_Set_9
        LDR.N    R2,??DataTable3_11  ;; 0x43fe0804
        STR      R1,[R2, #+0]
//  123 	if (ledNum & LED(8)) LED8(state);
??LEDARRAY_Set_9:
        LSLS     R2,R0,#+23
        BPL.N    ??LEDARRAY_Set_10
        LDR.N    R2,??DataTable3_12  ;; 0x43fe0808
        STR      R1,[R2, #+0]
//  124 	if (ledNum & LED(9)) LED9(state);
??LEDARRAY_Set_10:
        LSLS     R2,R0,#+22
        BPL.N    ??LEDARRAY_Set_11
        LDR.N    R2,??DataTable3_13  ;; 0x43fe080c
        STR      R1,[R2, #+0]
//  125 	if (ledNum & LED(10)) LED10(state);
??LEDARRAY_Set_11:
        LSLS     R2,R0,#+21
        BPL.N    ??LEDARRAY_Set_12
        LDR.N    R2,??DataTable3_14  ;; 0x43fe0810
        STR      R1,[R2, #+0]
//  126 	if (ledNum & LED(11)) LED11(state);
??LEDARRAY_Set_12:
        LSLS     R2,R0,#+20
        BPL.N    ??LEDARRAY_Set_13
        LDR.N    R2,??DataTable3_15  ;; 0x43fe0814
        STR      R1,[R2, #+0]
//  127 	if (ledNum & LED(12)) LED12(state);
??LEDARRAY_Set_13:
        LSLS     R2,R0,#+19
        BPL.N    ??LEDARRAY_Set_14
        LDR.N    R2,??DataTable3_16  ;; 0x43fe0818
        STR      R1,[R2, #+0]
//  128 	if (ledNum & LED(13)) LED13(state);
??LEDARRAY_Set_14:
        LSLS     R2,R0,#+18
        BPL.N    ??LEDARRAY_Set_15
        LDR.N    R2,??DataTable3_17  ;; 0x43fe081c
        STR      R1,[R2, #+0]
//  129 	if (ledNum & LED(14)) LED14(state);
??LEDARRAY_Set_15:
        LSLS     R2,R0,#+17
        BPL.N    ??LEDARRAY_Set_16
        LDR.N    R2,??DataTable3_18  ;; 0x43fe0848
        STR      R1,[R2, #+0]
//  130 	if (ledNum & LED(15)) LED15(state);
??LEDARRAY_Set_16:
        LSLS     R0,R0,#+16
        BPL.N    ??LEDARRAY_Set_17
        LDR.N    R0,??DataTable3_19  ;; 0x43fe084c
        STR      R1,[R0, #+0]
//  131 }
??LEDARRAY_Set_17:
        BX       LR               ;; return
//  132 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  133 void LEDARRAY_Show(int state)
//  134 {
//  135 	state = ~state;
LEDARRAY_Show:
        MVNS     R0,R0
//  136 	LED0((state & LED(0)) && 1);
        ANDS     R1,R0,#0x1
        LDR.N    R2,??DataTable3_4  ;; 0x43fe0060
        STR      R1,[R2, #+0]
//  137 	LED1((state & LED(1)) && 1);
        ASRS     R1,R0,#+1
        ANDS     R1,R1,#0x1
        LDR.N    R2,??DataTable3_5  ;; 0x43fe0064
        STR      R1,[R2, #+0]
//  138 	LED2((state & LED(2)) && 1);
        ASRS     R1,R0,#+2
        ANDS     R1,R1,#0x1
        LDR.N    R2,??DataTable3_6  ;; 0x43fe0068
        STR      R1,[R2, #+0]
//  139 	LED3((state & LED(3)) && 1);
        ASRS     R1,R0,#+3
        ANDS     R1,R1,#0x1
        LDR.N    R2,??DataTable3_7  ;; 0x43fe006c
        STR      R1,[R2, #+0]
//  140 	LED4((state & LED(4)) && 1);
        ASRS     R1,R0,#+4
        ANDS     R1,R1,#0x1
        LDR.N    R2,??DataTable3_8  ;; 0x43fe0070
        STR      R1,[R2, #+0]
//  141 	LED5((state & LED(5)) && 1);
        ASRS     R1,R0,#+5
        ANDS     R1,R1,#0x1
        LDR.N    R2,??DataTable3_9  ;; 0x43fe0074
        STR      R1,[R2, #+0]
//  142 	LED6((state & LED(6)) && 1);
        ASRS     R1,R0,#+6
        ANDS     R1,R1,#0x1
        LDR.N    R2,??DataTable3_10  ;; 0x43fe0800
        STR      R1,[R2, #+0]
//  143 	LED7((state & LED(7)) && 1);
        ASRS     R1,R0,#+7
        ANDS     R1,R1,#0x1
        LDR.N    R2,??DataTable3_11  ;; 0x43fe0804
        STR      R1,[R2, #+0]
//  144 	LED8((state & LED(8)) && 1);
        ASRS     R1,R0,#+8
        ANDS     R1,R1,#0x1
        LDR.N    R2,??DataTable3_12  ;; 0x43fe0808
        STR      R1,[R2, #+0]
//  145 	LED9((state & LED(9)) && 1);
        ASRS     R1,R0,#+9
        ANDS     R1,R1,#0x1
        LDR.N    R2,??DataTable3_13  ;; 0x43fe080c
        STR      R1,[R2, #+0]
//  146 	LED10((state & LED(10)) && 1);
        ASRS     R1,R0,#+10
        ANDS     R1,R1,#0x1
        LDR.N    R2,??DataTable3_14  ;; 0x43fe0810
        STR      R1,[R2, #+0]
//  147 	LED11((state & LED(11)) && 1);
        ASRS     R1,R0,#+11
        ANDS     R1,R1,#0x1
        LDR.N    R2,??DataTable3_15  ;; 0x43fe0814
        STR      R1,[R2, #+0]
//  148 	LED12((state & LED(12)) && 1);
        ASRS     R1,R0,#+12
        ANDS     R1,R1,#0x1
        LDR.N    R2,??DataTable3_16  ;; 0x43fe0818
        STR      R1,[R2, #+0]
//  149 	LED13((state & LED(13)) && 1);
        ASRS     R1,R0,#+13
        ANDS     R1,R1,#0x1
        LDR.N    R2,??DataTable3_17  ;; 0x43fe081c
        STR      R1,[R2, #+0]
//  150 	LED14((state & LED(14)) && 1);
        ASRS     R1,R0,#+14
        ANDS     R1,R1,#0x1
        LDR.N    R2,??DataTable3_18  ;; 0x43fe0848
        STR      R1,[R2, #+0]
//  151 	LED15((state & LED(15)) && 1);
        ASRS     R0,R0,#+15
        ANDS     R0,R0,#0x1
        LDR.N    R1,??DataTable3_19  ;; 0x43fe084c
        STR      R0,[R1, #+0]
//  152 }
        BX       LR               ;; return
//  153 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//  154 int cnt_ch = 0, cnt_step = 0;
cnt_ch:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
cnt_step:
        DS8 4

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  155 void LEDARRAY_Go(void)
//  156 {
LEDARRAY_Go:
        PUSH     {R7,LR}
//  157 	ledArray.Show((CH16x16[cnt_ch][cnt_step]) | (CH16x16[cnt_ch][cnt_step + 16] << 8));
        LDR.N    R0,??DataTable3_20
        LDR.N    R1,??DataTable3_21
        LDR      R1,[R1, #+0]
        ADDS     R0,R0,R1, LSL #+5
        LDR.N    R1,??DataTable3_22
        LDR      R1,[R1, #+0]
        LDRB     R0,[R1, R0]
        LDR.N    R1,??DataTable3_20
        LDR.N    R2,??DataTable3_21
        LDR      R2,[R2, #+0]
        ADDS     R1,R1,R2, LSL #+5
        LDR.N    R2,??DataTable3_22
        LDR      R2,[R2, #+0]
        ADDS     R1,R2,R1
        LDRB     R1,[R1, #+16]
        ORRS     R0,R0,R1, LSL #+8
        LDR.N    R1,??DataTable3_23
        LDR      R1,[R1, #+8]
        BLX      R1
//  158 
//  159 	cnt_step++;
        LDR.N    R0,??DataTable3_22
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable3_22
        STR      R0,[R1, #+0]
//  160 	if (cnt_step >= 15)
        LDR.N    R0,??DataTable3_22
        LDR      R0,[R0, #+0]
        CMP      R0,#+15
        BLT.N    ??LEDARRAY_Go_0
//  161 	{
//  162 		cnt_step = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable3_22
        STR      R0,[R1, #+0]
//  163 		cnt_ch++;
        LDR.N    R0,??DataTable3_21
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable3_21
        STR      R0,[R1, #+0]
//  164 		if (cnt_ch >= LEDARRAY_CHNUM)
        LDR.N    R0,??DataTable3_21
        LDR      R0,[R0, #+0]
        CMP      R0,#+4
        BLT.N    ??LEDARRAY_Go_0
//  165 			cnt_ch = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable3_21
        STR      R0,[R1, #+0]
//  166 	}
//  167 }
??LEDARRAY_Go_0:
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3:
        DC32     0x400ff000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_1:
        DC32     ??GPIO_InitStructure

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_2:
        DC32     0x400ff040

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_3:
        DC32     0xc00ff

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_4:
        DC32     0x43fe0060

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_5:
        DC32     0x43fe0064

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_6:
        DC32     0x43fe0068

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_7:
        DC32     0x43fe006c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_8:
        DC32     0x43fe0070

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_9:
        DC32     0x43fe0074

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_10:
        DC32     0x43fe0800

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_11:
        DC32     0x43fe0804

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_12:
        DC32     0x43fe0808

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_13:
        DC32     0x43fe080c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_14:
        DC32     0x43fe0810

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_15:
        DC32     0x43fe0814

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_16:
        DC32     0x43fe0818

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_17:
        DC32     0x43fe081c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_18:
        DC32     0x43fe0848

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_19:
        DC32     0x43fe084c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_20:
        DC32     CH16x16

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_21:
        DC32     cnt_ch

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_22:
        DC32     cnt_step

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_23:
        DC32     ledArray

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
// 
//  28 bytes in section .bss
//  16 bytes in section .data
// 192 bytes in section .rodata
// 584 bytes in section .text
// 
// 584 bytes of CODE  memory
// 192 bytes of CONST memory
//  44 bytes of DATA  memory
//
//Errors: none
//Warnings: none
