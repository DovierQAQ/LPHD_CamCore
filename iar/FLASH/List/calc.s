///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.50.1.10123/W32 for ARM      19/Aug/2018  11:36:28
// Copyright 1999-2015 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\ShowD\Desktop\LPHD\LPHD_camCore\LPHD_camCore\app\calc\calc.c
//    Command line =  
//        C:\Users\ShowD\Desktop\LPHD\LPHD_camCore\LPHD_camCore\app\calc\calc.c
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
//        C:\Users\ShowD\Desktop\LPHD\LPHD_camCore\LPHD_camCore\iar\FLASH\List\calc.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN __aeabi_d2f
        EXTERN __aeabi_d2iz
        EXTERN __aeabi_dadd
        EXTERN __aeabi_ddiv
        EXTERN __aeabi_dmul
        EXTERN __aeabi_dsub
        EXTERN __aeabi_f2d
        EXTERN __aeabi_i2d
        EXTERN abs
        EXTERN camera
        EXTERN cos
        EXTERN led
        EXTERN sin
        EXTERN twinCore

        PUBLIC CALC_Calc
        PUBLIC CALC_My3d
        PUBLIC aBit
        PUBLIC bit
        PUBLIC calc
        PUBLIC charCH
        PUBLIC flag_stopL
        PUBLIC flag_stopR
        PUBLIC state_out
        PUBLIC z_buf

// C:\Users\ShowD\Desktop\LPHD\LPHD_camCore\LPHD_camCore\app\calc\calc.c
//    1 #include "calc.h"
//    2 
//    3 /****Discription**********************************************/
//    4 
//    5 /*
//    6 	0.calc.Calc()
//    7 
//    8 	@Time	2018-04-28
//    9 	@Author	郭帆
//   10 	@Usefor	calc
//   11 */
//   12 
//   13 /****Definitions**********************************************/
//   14 
//   15 /****Functions************************************************/
//   16 
//   17 void CALC_Calc(void);
//   18 void CALC_My3d(void);
//   19 
//   20 /****Variables************************************************/
//   21 
//   22 /****Objects**************************************************/
//   23 

        SECTION `.data`:DATA:REORDER:NOROOT(2)
        DATA
//   24 CALC_CLASS calc =
calc:
        DC32 CALC_Calc, CALC_My3d, 4
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
//   25 {
//   26 	&CALC_Calc,
//   27 	&CALC_My3d,
//   28 
//   29 	.cnt_effect = 4
//   30 };
//   31 
//   32 /****Functions************************************************/
//   33 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   34 static int limitX(int num)
//   35 {
//   36 	if (num > 158) return 158;
limitX:
        CMP      R0,#+159
        BLT.N    ??limitX_0
        MOVS     R0,#+158
        B.N      ??limitX_1
//   37 	if (num < 1) return 1;
??limitX_0:
        CMP      R0,#+1
        BGE.N    ??limitX_2
        MOVS     R0,#+1
        B.N      ??limitX_1
//   38 	return num;
??limitX_2:
??limitX_1:
        BX       LR               ;; return
//   39 }
//   40 
//   41 //static int calc_LinearRegression(int y[], int xMin, int num, float *a, float *b)
//   42 //{
//   43 //	int i;
//   44 //	float xiyiSum = 0;
//   45 //	float xAve = 0, yAve = 0;
//   46 //	float xi2Sum = 0;
//   47 //	float temp;
//   48 //
//   49 //	*a = 0;
//   50 //	*b = 0;
//   51 //
//   52 //	for (i = xMin; i < xMin + num; i++)
//   53 //	{
//   54 //		xiyiSum += (y[i] * i);
//   55 //		xAve += i;
//   56 //		yAve += y[i];
//   57 //		xi2Sum += (i * i);
//   58 //	}
//   59 //
//   60 //	xAve /= num;
//   61 //	yAve /= num;
//   62 //
//   63 //	temp = xi2Sum - num * xAve * xAve;
//   64 //
//   65 //	if (temp)
//   66 //	{
//   67 //		*a = (xiyiSum - num * xAve * yAve) / temp;
//   68 //		*b = yAve - *a * xAve;
//   69 //
//   70 //		return 0;
//   71 //	}
//   72 //	else
//   73 //		return -1;
//   74 //}
//   75 
//   76 //#define STARTROW	60
//   77 //static void CALC_testforStart(void)
//   78 //{
//   79 //	int i, j;
//   80 //	int curJump = 0, cntOk = 0;
//   81 //	static int cntJump = 0;
//   82 //
//   83 //	calc.flag_start = 0;
//   84 //
//   85 //	for (i = 0; i < 3; i++)
//   86 //	{
//   87 //		cntJump = 0;
//   88 //		for (j = 0; j < 159; j++)
//   89 //		{
//   90 //			if (camera.img[i + STARTROW][j] == camera.white && camera.img[i + STARTROW][j + 1] == camera.black && !curJump)
//   91 //			{
//   92 //				curJump = 1;
//   93 //				cntJump++;
//   94 //			}
//   95 //			else if (camera.img[i + STARTROW][j] == camera.black && camera.img[i + STARTROW][j + 1] == camera.white && curJump)
//   96 //			{
//   97 //				curJump = 0;
//   98 //				cntJump++;
//   99 //			}
//  100 //		}
//  101 //		if (cntJump > 10)
//  102 //			cntOk++;
//  103 //	}
//  104 //
//  105 //	if (cntOk)
//  106 //		calc.flag_start = 1;
//  107 //}
//  108 
//  109 #define CNTMAX		20  			// 利用多少帧来统计滤波
//  110 //#define CNTEFF		4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//  111 static int lineR[120], lineL[120];	// 左边线右边线
lineR:
        DS8 480

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
lineL:
        DS8 480
//  112 static int lineMid[120];

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//  113 int state_out[CNTMAX + 1] = {0};	// 结果数组
state_out:
        DS8 84

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//  114 int flag_stopL = 0, flag_stopR = 0;	// 截至标记
flag_stopL:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
flag_stopR:
        DS8 4
//  115 #define ROADEND		50
//  116 #define FIRSTJUMP	60
//  117 #define STOPLINE	50
//  118 #define ZEBRALINE	95
//  119 #define ZEBRALINE2	110
//  120 #define ZEBRANUM	5
//  121 #define JMPDELTAX	20 // 有S弯会车改为30
//  122 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//  123 void CALC_Calc(void)
//  124 {
CALC_Calc:
        PUSH     {R3-R7,LR}
//  125 	int i, j;
//  126 	int flag_startL = 0, flag_startR = 0;
        MOVS     R5,#+0
        MOVS     R6,#+0
//  127 	static int curJumpR = 0, curJumpL = 0;
//  128 	static int cntJumpR = 0, cntJumpL = 0;
//  129 	static int posJumpR[10] = {0}, posJumpL[10] = {0};
//  130 
//  131 	curJumpR = 0, curJumpL = 0;
        MOVS     R0,#+0
        LDR.W    R1,??CALC_Calc_0
        STR      R0,[R1, #+0]
        MOVS     R0,#+0
        LDR.W    R1,??CALC_Calc_0+0x4
        STR      R0,[R1, #+0]
//  132 	cntJumpR = 0, cntJumpL = 0;
        MOVS     R0,#+0
        LDR.W    R1,??CALC_Calc_0+0x8
        STR      R0,[R1, #+0]
        MOVS     R0,#+0
        LDR.W    R1,??CALC_Calc_0+0xC
        STR      R0,[R1, #+0]
//  133 	flag_stopL = 0, flag_stopR = 0;
        MOVS     R0,#+0
        LDR.W    R1,??CALC_Calc_0+0x10
        STR      R0,[R1, #+0]
        MOVS     R0,#+0
        LDR.W    R1,??CALC_Calc_0+0x14
        STR      R0,[R1, #+0]
//  134 	calc.cnt_out = 0;
        MOVS     R0,#+0
        LDR.W    R1,??CALC_Calc_1
        STR      R0,[R1, #+1068]
//  135 
//  136     if (calc.cnt_clear)
        LDR.W    R0,??CALC_Calc_1
        LDR      R0,[R0, #+1072]
        CMP      R0,#+0
        BEQ.N    ??CALC_Calc_2
//  137         for (i = 0; i < CNTMAX; i++)
        MOVS     R4,#+0
        B.N      ??CALC_Calc_3
//  138             state_out[i] = 0;
??CALC_Calc_4:
        MOVS     R0,#+0
        LDR.W    R1,??CALC_Calc_1+0x4
        STR      R0,[R1, R4, LSL #+2]
        ADDS     R4,R4,#+1
??CALC_Calc_3:
        CMP      R4,#+20
        BLT.N    ??CALC_Calc_4
//  139 
//  140 	for (int k = 2; k > 0; k--)
??CALC_Calc_2:
        MOVS     R0,#+2
        B.N      ??CALC_Calc_5
//  141 		calc.reffer[k] = calc.reffer[k - 1];
??CALC_Calc_6:
        LDR.W    R1,??CALC_Calc_1
        ADDS     R1,R1,R0, LSL #+2
        LDR      R1,[R1, #+1072]
        LDR.W    R2,??CALC_Calc_1
        ADDS     R2,R2,R0, LSL #+2
        STR      R1,[R2, #+1076]
        SUBS     R0,R0,#+1
??CALC_Calc_5:
        CMP      R0,#+1
        BGE.N    ??CALC_Calc_6
//  142 	calc.reffer[0] = 0;
        MOVS     R0,#+0
        LDR.W    R1,??CALC_Calc_1
        STR      R0,[R1, #+1076]
//  143 
//  144 	//CALC_testforStart();
//  145 
//  146 	camera.img[119][0] = camera.white; // 用来防止摄像头伸出去
        LDR.W    R0,??CALC_Calc_1+0x8
        LDR      R0,[R0, #+20]
        LDR.W    R1,??CALC_Calc_1+0xC
        STRB     R0,[R1, #+0]
//  147 	camera.img[119][159] = camera.white;
        LDR.W    R0,??CALC_Calc_1+0x8
        LDR      R0,[R0, #+20]
        LDR.W    R1,??CALC_Calc_1+0x10
        STRB     R0,[R1, #+0]
//  148 
//  149 	/*---------------------------------------------------------------------------------------------------------*/
//  150 	//斑马线
//  151 
//  152 	calc.flag_zebra = 0;
        MOVS     R0,#+0
        LDR.W    R1,??CALC_Calc_1
        STR      R0,[R1, #+20]
//  153 //	int cnt_zebra = 0;
//  154 //	int curJumpZebra = 0;
//  155 //	for (i = 0; i < 159; i++)
//  156 //	{
//  157 //		if (camera.img[ZEBRALINE][i] == camera.black && camera.img[ZEBRALINE][i + 1] == camera.white && !curJumpZebra)
//  158 //		{
//  159 //			curJumpZebra = 1;
//  160 //			cnt_zebra++;
//  161 //		}
//  162 //		else if (camera.img[ZEBRALINE][i] == camera.white && camera.img[ZEBRALINE][i + 1] == camera.black && curJumpZebra)
//  163 //		{
//  164 //			curJumpZebra = 0;
//  165 //			cnt_zebra++;
//  166 //		}
//  167 //	}
//  168 //	if (cnt_zebra > ZEBRANUM)
//  169 //		calc.flag_zebra = 1;
//  170 //
//  171 //	cnt_zebra = 0;
//  172 //	curJumpZebra = 0;
//  173 //	for (i = 0; i < 159; i++)
//  174 //	{
//  175 //		if (camera.img[ZEBRALINE2][i] == camera.black && camera.img[ZEBRALINE2][i + 1] == camera.white && !curJumpZebra)
//  176 //		{
//  177 //			curJumpZebra = 1;
//  178 //			cnt_zebra++;
//  179 //		}
//  180 //		else if (camera.img[ZEBRALINE2][i] == camera.white && camera.img[ZEBRALINE2][i + 1] == camera.black && curJumpZebra)
//  181 //		{
//  182 //			curJumpZebra = 0;
//  183 //			cnt_zebra++;
//  184 //		}
//  185 //	}
//  186 //	if (cnt_zebra > ZEBRANUM)
//  187 //		calc.flag_zebra = 1;
//  188 //
//  189 //	for (i = 0; i < 159; i++)
//  190 //	{
//  191 //		camera.img[ZEBRALINE][i] = camera.black;
//  192 //		camera.img[ZEBRALINE + 1][i] = camera.black;
//  193 //	}
//  194 
//  195 	/*---------------------------------------------------------------------------------------------------------*/
//  196 
//  197 	// 右边线第一个点
//  198 	for (i = 0; i < 159; i++)
        MOVS     R4,#+0
        B.N      ??CALC_Calc_7
??CALC_Calc_8:
        ADDS     R4,R4,#+1
??CALC_Calc_7:
        CMP      R4,#+159
        BGE.N    ??CALC_Calc_9
//  199 		if (camera.img[119][i] == camera.white && camera.img[119][i + 1] == camera.black)
        LDR.W    R0,??CALC_Calc_1+0x8
        ADDS     R0,R4,R0
        MOVW     R1,#+24272
        LDRB     R0,[R1, R0]
        LDR.W    R1,??CALC_Calc_1+0x8
        LDR      R1,[R1, #+20]
        CMP      R0,R1
        BNE.N    ??CALC_Calc_8
        LDR.W    R0,??CALC_Calc_1+0x8
        ADDS     R0,R4,R0
        MOVW     R1,#+24273
        LDRB     R0,[R1, R0]
        LDR.W    R1,??CALC_Calc_1+0x8
        LDR      R1,[R1, #+24]
        CMP      R0,R1
        BNE.N    ??CALC_Calc_8
//  200 		{
//  201 			lineR[119] = i;
        LDR.W    R0,??CALC_Calc_1+0x14
        STR      R4,[R0, #+476]
//  202 			break;
//  203 		}
//  204 	if (i == 159)
??CALC_Calc_9:
        CMP      R4,#+159
        BNE.N    ??CALC_Calc_10
//  205 		lineR[119] = 159;
        MOVS     R0,#+159
        LDR.W    R1,??CALC_Calc_1+0x14
        STR      R0,[R1, #+476]
//  206 
//  207 	// 左边线第一个点
//  208 	for (i = 159; i > 0; i--)
??CALC_Calc_10:
        MOVS     R4,#+159
        B.N      ??CALC_Calc_11
??CALC_Calc_12:
        SUBS     R4,R4,#+1
??CALC_Calc_11:
        CMP      R4,#+1
        BLT.N    ??CALC_Calc_13
//  209 		if (camera.img[119][i] == camera.white && camera.img[119][i - 1] == camera.black)
        LDR.W    R0,??CALC_Calc_1+0x8
        ADDS     R0,R4,R0
        MOVW     R1,#+24272
        LDRB     R0,[R1, R0]
        LDR.W    R1,??CALC_Calc_1+0x8
        LDR      R1,[R1, #+20]
        CMP      R0,R1
        BNE.N    ??CALC_Calc_12
        LDR.W    R0,??CALC_Calc_1+0x8
        ADDS     R0,R4,R0
        MOVW     R1,#+24271
        LDRB     R0,[R1, R0]
        LDR.W    R1,??CALC_Calc_1+0x8
        LDR      R1,[R1, #+24]
        CMP      R0,R1
        BNE.N    ??CALC_Calc_12
//  210 		{
//  211 			lineL[119] = i;
        LDR.W    R0,??CALC_Calc_1+0x18
        STR      R4,[R0, #+476]
//  212 			break;
//  213 		}
//  214 	if (i == 0)
??CALC_Calc_13:
        CMP      R4,#+0
        BNE.N    ??CALC_Calc_14
//  215 		lineL[119] = 0;
        MOVS     R0,#+0
        LDR.W    R1,??CALC_Calc_1+0x18
        STR      R0,[R1, #+476]
//  216 
//  217 	if (lineL[119] > lineR[119]) // 用来防止大拐弯摄像头看出去的情况
??CALC_Calc_14:
        LDR.W    R0,??CALC_Calc_1+0x14
        LDR      R0,[R0, #+476]
        LDR.W    R1,??CALC_Calc_1+0x18
        LDR      R1,[R1, #+476]
        CMP      R0,R1
        BGE.N    ??CALC_Calc_15
//  218 	{
//  219 		if ((lineL[119] + lineR[119]) / 2 > 80)
        LDR.W    R0,??CALC_Calc_1+0x18
        LDR      R0,[R0, #+476]
        LDR.W    R1,??CALC_Calc_1+0x14
        LDR      R1,[R1, #+476]
        ADDS     R0,R1,R0
        MOVS     R1,#+2
        SDIV     R0,R0,R1
        CMP      R0,#+81
        BLT.N    ??CALC_Calc_16
//  220 			flag_stopR = 1;
        MOVS     R0,#+1
        LDR.W    R1,??CALC_Calc_0+0x14
        STR      R0,[R1, #+0]
        B.N      ??CALC_Calc_15
//  221 		else if ((lineL[119] + lineR[119]) / 2 < 80)
??CALC_Calc_16:
        LDR.W    R0,??CALC_Calc_1+0x18
        LDR      R0,[R0, #+476]
        LDR.W    R1,??CALC_Calc_1+0x14
        LDR      R1,[R1, #+476]
        ADDS     R0,R1,R0
        MOVS     R1,#+2
        SDIV     R0,R0,R1
        CMP      R0,#+80
        BGE.N    ??CALC_Calc_15
//  222 			flag_stopL = 1;
        MOVS     R0,#+1
        LDR.W    R1,??CALC_Calc_0+0x10
        STR      R0,[R1, #+0]
//  223 	}
//  224 
//  225 	/*---------------------------------------------------------------------------------------------------------*/
//  226 
//  227 	for (i = 118; i > 30; i--)
??CALC_Calc_15:
        MOVS     R4,#+118
        B.N      ??CALC_Calc_17
??CALC_Calc_18:
        SUBS     R4,R4,#+1
??CALC_Calc_17:
        CMP      R4,#+31
        BLT.W    ??CALC_Calc_19
//  228 	{
//  229 		// 右边线下一个点
//  230 		if (!flag_stopR)
        LDR.W    R0,??CALC_Calc_0+0x14
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.W    ??CALC_Calc_20
//  231 		{
//  232 			lineR[i] = 0;
        MOVS     R0,#+0
        LDR.W    R1,??CALC_Calc_1+0x14
        STR      R0,[R1, R4, LSL #+2]
//  233 			for (j = 0; j < 40; j++) // 左扫
        MOVS     R7,#+0
        B.N      ??CALC_Calc_21
??CALC_Calc_22:
        ADDS     R7,R7,#+1
??CALC_Calc_21:
        CMP      R7,#+40
        BGE.N    ??CALC_Calc_23
//  234 			{
//  235 				if (camera.img[i][limitX(lineR[i + 1] - j)] == camera.white && camera.img[i][limitX(lineR[i + 1] - j + 1)] == camera.black)
        LDR.W    R0,??CALC_Calc_1+0x14
        ADDS     R0,R0,R4, LSL #+2
        LDR      R0,[R0, #+4]
        SUBS     R0,R0,R7
        BL       limitX
        LDR.W    R1,??CALC_Calc_1+0x8
        MOVS     R2,#+160
        MLA      R1,R2,R4,R1
        ADDS     R0,R0,R1
        MOVW     R1,#+5232
        LDRB     R0,[R1, R0]
        LDR.W    R1,??CALC_Calc_1+0x8
        LDR      R1,[R1, #+20]
        CMP      R0,R1
        BNE.N    ??CALC_Calc_24
        LDR.W    R0,??CALC_Calc_1+0x14
        ADDS     R0,R0,R4, LSL #+2
        LDR      R0,[R0, #+4]
        SUBS     R0,R0,R7
        ADDS     R0,R0,#+1
        BL       limitX
        LDR.W    R1,??CALC_Calc_1+0x8
        MOVS     R2,#+160
        MLA      R1,R2,R4,R1
        ADDS     R0,R0,R1
        MOVW     R1,#+5232
        LDRB     R0,[R1, R0]
        LDR.W    R1,??CALC_Calc_1+0x8
        LDR      R1,[R1, #+24]
        CMP      R0,R1
        BNE.N    ??CALC_Calc_24
//  236 				{
//  237 					lineR[i] = limitX(lineR[i + 1] - j);
        LDR.W    R0,??CALC_Calc_1+0x14
        ADDS     R0,R0,R4, LSL #+2
        LDR      R0,[R0, #+4]
        SUBS     R0,R0,R7
        BL       limitX
        LDR.W    R1,??CALC_Calc_1+0x14
        STR      R0,[R1, R4, LSL #+2]
//  238 					break;
        B.N      ??CALC_Calc_23
//  239 				}
//  240 
//  241 				if (lineR[i + 1] - j < 0) // 防止摄像头伸出去
??CALC_Calc_24:
        LDR.W    R0,??CALC_Calc_1+0x14
        ADDS     R0,R0,R4, LSL #+2
        LDR      R0,[R0, #+4]
        SUBS     R0,R0,R7
        CMP      R0,#+0
        BPL.N    ??CALC_Calc_22
//  242 				{
//  243 					flag_stopR = 1;
        MOVS     R0,#+1
        LDR.W    R1,??CALC_Calc_0+0x14
        STR      R0,[R1, #+0]
//  244 					break;
//  245 				}
//  246 			}
//  247 			if (!lineR[i]) // 左扫不到，右扫
??CALC_Calc_23:
        LDR.W    R0,??CALC_Calc_1+0x14
        LDR      R0,[R0, R4, LSL #+2]
        CMP      R0,#+0
        BNE.N    ??CALC_Calc_25
//  248 			{
//  249 				for (j = 0; j < 40; j++)
        MOVS     R7,#+0
        B.N      ??CALC_Calc_26
??CALC_Calc_27:
        ADDS     R7,R7,#+1
??CALC_Calc_26:
        CMP      R7,#+40
        BGE.N    ??CALC_Calc_28
//  250 				{
//  251 					if (camera.img[i][limitX(lineR[i + 1] + j)] == camera.white && camera.img[i][limitX(lineR[i + 1] + j + 1)] == camera.black)
        LDR.W    R0,??CALC_Calc_1+0x14
        ADDS     R0,R0,R4, LSL #+2
        LDR      R0,[R0, #+4]
        ADDS     R0,R7,R0
        BL       limitX
        LDR.W    R1,??CALC_Calc_1+0x8
        MOVS     R2,#+160
        MLA      R1,R2,R4,R1
        ADDS     R0,R0,R1
        MOVW     R1,#+5232
        LDRB     R0,[R1, R0]
        LDR.W    R1,??CALC_Calc_1+0x8
        LDR      R1,[R1, #+20]
        CMP      R0,R1
        BNE.N    ??CALC_Calc_27
        LDR.W    R0,??CALC_Calc_1+0x14
        ADDS     R0,R0,R4, LSL #+2
        LDR      R0,[R0, #+4]
        ADDS     R0,R7,R0
        ADDS     R0,R0,#+1
        BL       limitX
        LDR.W    R1,??CALC_Calc_1+0x8
        MOVS     R2,#+160
        MLA      R1,R2,R4,R1
        ADDS     R0,R0,R1
        MOVW     R1,#+5232
        LDRB     R0,[R1, R0]
        LDR.W    R1,??CALC_Calc_1+0x8
        LDR      R1,[R1, #+24]
        CMP      R0,R1
        BNE.N    ??CALC_Calc_27
//  252 					{
//  253 						lineR[i] = limitX(lineR[i + 1] + j);
        LDR.W    R0,??CALC_Calc_1+0x14
        ADDS     R0,R0,R4, LSL #+2
        LDR      R0,[R0, #+4]
        ADDS     R0,R7,R0
        BL       limitX
        LDR.W    R1,??CALC_Calc_1+0x14
        STR      R0,[R1, R4, LSL #+2]
//  254 						break;
//  255 					}
//  256 				}
//  257 				if (j == 40)
??CALC_Calc_28:
        CMP      R7,#+40
        BNE.N    ??CALC_Calc_25
//  258 					lineR[i] = limitX(lineR[i + 1] + j);
        LDR.W    R0,??CALC_Calc_1+0x14
        ADDS     R0,R0,R4, LSL #+2
        LDR      R0,[R0, #+4]
        ADDS     R0,R7,R0
        BL       limitX
        LDR.W    R1,??CALC_Calc_1+0x14
        STR      R0,[R1, R4, LSL #+2]
//  259 			}
//  260 
//  261 			// 异常退出寻线
//  262 			if (i < STOPLINE || // 屏蔽墙壁
//  263 				(lineR[i] == 158 && i < 65 && (flag_startR || abs(lineR[i] - lineR[i + 1]) > 20)) || // 十字
//  264 				(i < 117 && lineR[i] - lineR[i + 1] > 10 && lineR[i + 1] - lineR[i + 2] > 10) || // q出现的现象以及摄像头伸出去
//  265 				lineL[i + 1] > 130 // 边线不存在但是还在继续寻
//  266 				)
??CALC_Calc_25:
        CMP      R4,#+50
        BLT.N    ??CALC_Calc_29
        LDR.W    R0,??CALC_Calc_1+0x14
        LDR      R0,[R0, R4, LSL #+2]
        CMP      R0,#+158
        BNE.N    ??CALC_Calc_30
        CMP      R4,#+65
        BGE.N    ??CALC_Calc_30
        CMP      R6,#+0
        BNE.N    ??CALC_Calc_29
        LDR.W    R0,??CALC_Calc_1+0x14
        LDR      R0,[R0, R4, LSL #+2]
        LDR.W    R1,??CALC_Calc_1+0x14
        ADDS     R1,R1,R4, LSL #+2
        LDR      R1,[R1, #+4]
        SUBS     R0,R0,R1
        BL       abs
        CMP      R0,#+21
        BGE.N    ??CALC_Calc_29
??CALC_Calc_30:
        CMP      R4,#+117
        BGE.N    ??CALC_Calc_31
        LDR.W    R0,??CALC_Calc_1+0x14
        LDR      R0,[R0, R4, LSL #+2]
        LDR.W    R1,??CALC_Calc_1+0x14
        ADDS     R1,R1,R4, LSL #+2
        LDR      R1,[R1, #+4]
        SUBS     R0,R0,R1
        CMP      R0,#+11
        BLT.N    ??CALC_Calc_31
        LDR.W    R0,??CALC_Calc_1+0x14
        ADDS     R0,R0,R4, LSL #+2
        LDR      R0,[R0, #+4]
        LDR.W    R1,??CALC_Calc_1+0x14
        ADDS     R1,R1,R4, LSL #+2
        LDR      R1,[R1, #+8]
        SUBS     R0,R0,R1
        CMP      R0,#+11
        BGE.N    ??CALC_Calc_29
??CALC_Calc_31:
        LDR.W    R0,??CALC_Calc_1+0x18
        ADDS     R0,R0,R4, LSL #+2
        LDR      R0,[R0, #+4]
        CMP      R0,#+131
        BLT.N    ??CALC_Calc_32
//  267 			{
//  268 				flag_stopR = 1;
??CALC_Calc_29:
        MOVS     R0,#+1
        LDR.W    R1,??CALC_Calc_0+0x14
        STR      R0,[R1, #+0]
//  269 				lineR[i] = -1;
        MOVS     R0,#-1
        LDR.W    R1,??CALC_Calc_1+0x14
        STR      R0,[R1, R4, LSL #+2]
//  270 				//break;
//  271 			}
//  272 
//  273 			if (lineR[i] != 158 && !flag_startR)
??CALC_Calc_32:
        LDR.W    R0,??CALC_Calc_1+0x14
        LDR      R0,[R0, R4, LSL #+2]
        CMP      R0,#+158
        BEQ.N    ??CALC_Calc_33
        CMP      R6,#+0
        BNE.N    ??CALC_Calc_33
//  274 				flag_startR = i;
        MOVS     R6,R4
//  275 
//  276 			// 调试用，将边界线画为虚线
//  277 			if (twinCore.data[1] == 1100 || twinCore.data[1] == 1101)
??CALC_Calc_33:
        LDR.W    R0,??DataTable0
        LDRSH    R0,[R0, #+14]
        MOVW     R1,#+1100
        CMP      R0,R1
        BEQ.N    ??CALC_Calc_34
        LDR.W    R0,??DataTable0
        LDRSH    R0,[R0, #+14]
        MOVW     R1,#+1101
        CMP      R0,R1
        BNE.N    ??CALC_Calc_20
//  278 			{
//  279 				camera.img[i][lineR[i]] = camera.white;
??CALC_Calc_34:
        LDR.W    R0,??CALC_Calc_1+0x8
        MOVS     R1,#+160
        MLA      R0,R1,R4,R0
        LDR.W    R1,??CALC_Calc_1+0x14
        LDR      R1,[R1, R4, LSL #+2]
        ADDS     R0,R1,R0
        MOVW     R1,#+5232
        LDR.W    R2,??CALC_Calc_1+0x8
        LDR      R2,[R2, #+20]
        STRB     R2,[R1, R0]
//  280 				camera.img[i][lineR[i] - 1] = camera.black;
        LDR.W    R0,??CALC_Calc_1+0x8
        MOVS     R1,#+160
        MLA      R0,R1,R4,R0
        LDR.W    R1,??CALC_Calc_1+0x14
        LDR      R1,[R1, R4, LSL #+2]
        ADDS     R0,R1,R0
        MOVW     R1,#+5231
        LDR.W    R2,??CALC_Calc_1+0x8
        LDR      R2,[R2, #+24]
        STRB     R2,[R1, R0]
//  281 			}
//  282 		}
//  283 
//  284 		/*---------------------------------------------------------------------------------------------------------*/
//  285 
//  286 		// 左边线下一个点
//  287 		if (!flag_stopL)
??CALC_Calc_20:
        LDR.W    R0,??CALC_Calc_0+0x10
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.W    ??CALC_Calc_35
//  288 		{
//  289 			lineL[i] = 0;
        MOVS     R0,#+0
        LDR.W    R1,??CALC_Calc_1+0x18
        STR      R0,[R1, R4, LSL #+2]
//  290 			for (j = 0; j < 40; j++) // 右扫
        MOVS     R7,#+0
        B.N      ??CALC_Calc_36
??CALC_Calc_37:
        ADDS     R7,R7,#+1
??CALC_Calc_36:
        CMP      R7,#+40
        BGE.N    ??CALC_Calc_38
//  291 			{
//  292 				if (camera.img[i][limitX(lineL[i + 1] + j)] == camera.white && camera.img[i][limitX(lineL[i + 1] + j - 1)] == camera.black)
        LDR.W    R0,??CALC_Calc_1+0x18
        ADDS     R0,R0,R4, LSL #+2
        LDR      R0,[R0, #+4]
        ADDS     R0,R7,R0
        BL       limitX
        LDR.W    R1,??CALC_Calc_1+0x8
        MOVS     R2,#+160
        MLA      R1,R2,R4,R1
        ADDS     R0,R0,R1
        MOVW     R1,#+5232
        LDRB     R0,[R1, R0]
        LDR.W    R1,??CALC_Calc_1+0x8
        LDR      R1,[R1, #+20]
        CMP      R0,R1
        BNE.N    ??CALC_Calc_39
        LDR.W    R0,??CALC_Calc_1+0x18
        ADDS     R0,R0,R4, LSL #+2
        LDR      R0,[R0, #+4]
        ADDS     R0,R7,R0
        SUBS     R0,R0,#+1
        BL       limitX
        LDR.W    R1,??CALC_Calc_1+0x8
        MOVS     R2,#+160
        MLA      R1,R2,R4,R1
        ADDS     R0,R0,R1
        MOVW     R1,#+5232
        LDRB     R0,[R1, R0]
        LDR.W    R1,??CALC_Calc_1+0x8
        LDR      R1,[R1, #+24]
        CMP      R0,R1
        BNE.N    ??CALC_Calc_39
//  293 				{
//  294 					lineL[i] = limitX(lineL[i + 1] + j);
        LDR.W    R0,??CALC_Calc_1+0x18
        ADDS     R0,R0,R4, LSL #+2
        LDR      R0,[R0, #+4]
        ADDS     R0,R7,R0
        BL       limitX
        LDR.W    R1,??CALC_Calc_1+0x18
        STR      R0,[R1, R4, LSL #+2]
//  295 					break;
        B.N      ??CALC_Calc_38
//  296 				}
//  297 
//  298 				if (lineL[i + 1] + j > 159)
??CALC_Calc_39:
        LDR.W    R0,??CALC_Calc_1+0x18
        ADDS     R0,R0,R4, LSL #+2
        LDR      R0,[R0, #+4]
        ADDS     R0,R7,R0
        CMP      R0,#+160
        BLT.N    ??CALC_Calc_37
//  299 				{
//  300 					flag_stopL = 1;
        MOVS     R0,#+1
        LDR.W    R1,??CALC_Calc_0+0x10
        STR      R0,[R1, #+0]
//  301 					break;
//  302 				}
//  303 			}
//  304 			if (!lineL[i]) // 右扫不到
??CALC_Calc_38:
        LDR.W    R0,??CALC_Calc_1+0x18
        LDR      R0,[R0, R4, LSL #+2]
        CMP      R0,#+0
        BNE.N    ??CALC_Calc_40
//  305 			{
//  306 				for (j = 0; j < 40; j++)
        MOVS     R7,#+0
        B.N      ??CALC_Calc_41
??CALC_Calc_42:
        ADDS     R7,R7,#+1
??CALC_Calc_41:
        CMP      R7,#+40
        BGE.N    ??CALC_Calc_43
//  307 				{
//  308 					if (camera.img[i][limitX(lineL[i + 1] - j)] == camera.white && camera.img[i][limitX(lineL[i + 1] - j - 1)] == camera.black)
        LDR.W    R0,??CALC_Calc_1+0x18
        ADDS     R0,R0,R4, LSL #+2
        LDR      R0,[R0, #+4]
        SUBS     R0,R0,R7
        BL       limitX
        LDR.W    R1,??CALC_Calc_1+0x8
        MOVS     R2,#+160
        MLA      R1,R2,R4,R1
        ADDS     R0,R0,R1
        MOVW     R1,#+5232
        LDRB     R0,[R1, R0]
        LDR.W    R1,??CALC_Calc_1+0x8
        LDR      R1,[R1, #+20]
        CMP      R0,R1
        BNE.N    ??CALC_Calc_42
        LDR.W    R0,??CALC_Calc_1+0x18
        ADDS     R0,R0,R4, LSL #+2
        LDR      R0,[R0, #+4]
        SUBS     R0,R0,R7
        SUBS     R0,R0,#+1
        BL       limitX
        LDR.W    R1,??CALC_Calc_1+0x8
        MOVS     R2,#+160
        MLA      R1,R2,R4,R1
        ADDS     R0,R0,R1
        MOVW     R1,#+5232
        LDRB     R0,[R1, R0]
        LDR.W    R1,??CALC_Calc_1+0x8
        LDR      R1,[R1, #+24]
        CMP      R0,R1
        BNE.N    ??CALC_Calc_42
//  309 					{
//  310 						lineL[i] = limitX(lineL[i + 1] - j);
        LDR.W    R0,??CALC_Calc_1+0x18
        ADDS     R0,R0,R4, LSL #+2
        LDR      R0,[R0, #+4]
        SUBS     R0,R0,R7
        BL       limitX
        LDR.W    R1,??CALC_Calc_1+0x18
        STR      R0,[R1, R4, LSL #+2]
//  311 						break;
//  312 					}
//  313 				}
//  314 				if (j == 40)
??CALC_Calc_43:
        CMP      R7,#+40
        BNE.N    ??CALC_Calc_40
//  315 					lineL[i] = limitX(lineL[i + 1] - j);
        LDR.W    R0,??CALC_Calc_1+0x18
        ADDS     R0,R0,R4, LSL #+2
        LDR      R0,[R0, #+4]
        SUBS     R0,R0,R7
        BL       limitX
        LDR.W    R1,??CALC_Calc_1+0x18
        STR      R0,[R1, R4, LSL #+2]
//  316 			}
//  317 
//  318 			// 异常
//  319 			if (i < STOPLINE ||
//  320 				(lineL[i] == 1 && i < 65 && (flag_startL || abs(lineL[i] - lineL[i + 1]) > 20)) ||
//  321 				(i < 117 && lineL[i + 1] - lineL[i] > 10 && lineL[i + 2] - lineL[i + 1] > 10) ||
//  322 				(lineR[i + 1] < 30 && lineR[i + 1] != -1))
??CALC_Calc_40:
        CMP      R4,#+50
        BLT.N    ??CALC_Calc_44
        LDR.W    R0,??CALC_Calc_1+0x18
        LDR      R0,[R0, R4, LSL #+2]
        CMP      R0,#+1
        BNE.N    ??CALC_Calc_45
        CMP      R4,#+65
        BGE.N    ??CALC_Calc_45
        CMP      R5,#+0
        BNE.N    ??CALC_Calc_44
        LDR.W    R0,??CALC_Calc_1+0x18
        LDR      R0,[R0, R4, LSL #+2]
        LDR.W    R1,??CALC_Calc_1+0x18
        ADDS     R1,R1,R4, LSL #+2
        LDR      R1,[R1, #+4]
        SUBS     R0,R0,R1
        BL       abs
        CMP      R0,#+21
        BGE.N    ??CALC_Calc_44
??CALC_Calc_45:
        CMP      R4,#+117
        BGE.N    ??CALC_Calc_46
        LDR.W    R0,??CALC_Calc_1+0x18
        ADDS     R0,R0,R4, LSL #+2
        LDR      R0,[R0, #+4]
        LDR.W    R1,??CALC_Calc_1+0x18
        LDR      R1,[R1, R4, LSL #+2]
        SUBS     R0,R0,R1
        CMP      R0,#+11
        BLT.N    ??CALC_Calc_46
        LDR.W    R0,??CALC_Calc_1+0x18
        ADDS     R0,R0,R4, LSL #+2
        LDR      R0,[R0, #+8]
        LDR.W    R1,??CALC_Calc_1+0x18
        ADDS     R1,R1,R4, LSL #+2
        LDR      R1,[R1, #+4]
        SUBS     R0,R0,R1
        CMP      R0,#+11
        BGE.N    ??CALC_Calc_44
??CALC_Calc_46:
        LDR.W    R0,??CALC_Calc_1+0x14
        ADDS     R0,R0,R4, LSL #+2
        LDR      R0,[R0, #+4]
        CMP      R0,#+30
        BGE.N    ??CALC_Calc_47
        LDR.W    R0,??CALC_Calc_1+0x14
        ADDS     R0,R0,R4, LSL #+2
        LDR      R0,[R0, #+4]
        CMN      R0,#+1
        BEQ.N    ??CALC_Calc_47
//  323 			{
//  324 				flag_stopL = 1;
??CALC_Calc_44:
        MOVS     R0,#+1
        LDR.W    R1,??CALC_Calc_0+0x10
        STR      R0,[R1, #+0]
//  325 				lineL[i] = -1;
        MOVS     R0,#-1
        LDR.W    R1,??CALC_Calc_1+0x18
        STR      R0,[R1, R4, LSL #+2]
//  326 				//break;
//  327 			}
//  328 
//  329 			if (lineL[i] != 1 && !flag_startL)
??CALC_Calc_47:
        LDR.W    R0,??CALC_Calc_1+0x18
        LDR      R0,[R0, R4, LSL #+2]
        CMP      R0,#+1
        BEQ.N    ??CALC_Calc_48
        CMP      R5,#+0
        BNE.N    ??CALC_Calc_48
//  330 				flag_startL = i;
        MOVS     R5,R4
//  331 
//  332 			// 调试
//  333 			if (twinCore.data[1] == 1100 || twinCore.data[1] == 1101)
??CALC_Calc_48:
        LDR.W    R0,??DataTable0
        LDRSH    R0,[R0, #+14]
        MOVW     R1,#+1100
        CMP      R0,R1
        BEQ.N    ??CALC_Calc_49
        LDR.W    R0,??DataTable0
        LDRSH    R0,[R0, #+14]
        MOVW     R1,#+1101
        CMP      R0,R1
        BNE.N    ??CALC_Calc_35
//  334 			{
//  335 				camera.img[i][lineL[i] - 1] = camera.white;
??CALC_Calc_49:
        LDR.W    R0,??CALC_Calc_1+0x8
        MOVS     R1,#+160
        MLA      R0,R1,R4,R0
        LDR.W    R1,??CALC_Calc_1+0x18
        LDR      R1,[R1, R4, LSL #+2]
        ADDS     R0,R1,R0
        MOVW     R1,#+5231
        LDR.W    R2,??CALC_Calc_1+0x8
        LDR      R2,[R2, #+20]
        STRB     R2,[R1, R0]
//  336 				camera.img[i][lineL[i]] = camera.black;
        LDR.W    R0,??CALC_Calc_1+0x8
        MOVS     R1,#+160
        MLA      R0,R1,R4,R0
        LDR.W    R1,??CALC_Calc_1+0x18
        LDR      R1,[R1, R4, LSL #+2]
        ADDS     R0,R1,R0
        MOVW     R1,#+5232
        LDR.W    R2,??CALC_Calc_1+0x8
        LDR      R2,[R2, #+24]
        STRB     R2,[R1, R0]
//  337 			}
//  338 		}
//  339 
//  340 		/*---------------------------------------------------------------------------------------------------------*/
//  341 
//  342 		// 找跳变点
//  343 		if (i < 117)
??CALC_Calc_35:
        CMP      R4,#+117
        BGE.W    ??CALC_Calc_50
//  344 		{
//  345 			if (!flag_stopR)
        LDR.W    R0,??CALC_Calc_0+0x14
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.W    ??CALC_Calc_51
//  346 			{
//  347 				// 右边线左跳右
//  348 				if (i < 100 && lineR[i] <= lineR[i + 1] && lineR[i + 1] > lineR[i + 2] && (curJumpR == 2 || !curJumpR))
        CMP      R4,#+100
        BGE.W    ??CALC_Calc_52
        LDR.W    R0,??CALC_Calc_1+0x14
        ADDS     R0,R0,R4, LSL #+2
        LDR      R0,[R0, #+4]
        LDR.W    R1,??CALC_Calc_1+0x14
        LDR      R1,[R1, R4, LSL #+2]
        CMP      R0,R1
        BLT.W    ??CALC_Calc_52
        LDR.W    R0,??CALC_Calc_1+0x14
        ADDS     R0,R0,R4, LSL #+2
        LDR      R0,[R0, #+8]
        LDR.W    R1,??CALC_Calc_1+0x14
        ADDS     R1,R1,R4, LSL #+2
        LDR      R1,[R1, #+4]
        CMP      R0,R1
        BGE.N    ??CALC_Calc_52
        LDR.W    R0,??CALC_Calc_0
        LDR      R0,[R0, #+0]
        CMP      R0,#+2
        BEQ.N    ??CALC_Calc_53
        LDR.W    R0,??CALC_Calc_0
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??CALC_Calc_52
//  349 				{
//  350 					// 倾斜情况
//  351 					for (j = i; j < i + 20; j++)
??CALC_Calc_53:
        MOVS     R7,R4
        B.N      ??CALC_Calc_54
//  352 					{
//  353 						if (lineR[j] > lineR[j + 1] && lineR[j + 1] <= lineR[j + 2] && abs(lineR[i] - lineR[j]) > 5)
//  354 						{
//  355 							if (!curJumpR)
//  356 							{
//  357 								if (i < FIRSTJUMP)
//  358 								{
//  359 									flag_stopR = 1;
//  360 									lineR[i] = -1;
//  361 									break;
//  362 								}
//  363 
//  364 								curJumpR = 1;
//  365 								cntJumpR++;
//  366 								posJumpR[cntJumpR] = i;
//  367 							}
//  368 							else if (abs(i - posJumpR[cntJumpR]) > 10)
??CALC_Calc_55:
        LDR.W    R0,??DataTable2
        LDR.W    R1,??CALC_Calc_0+0x8
        LDR      R1,[R1, #+0]
        LDR      R0,[R0, R1, LSL #+2]
        SUBS     R0,R4,R0
        BL       abs
        CMP      R0,#+11
        BLT.N    ??CALC_Calc_56
//  369 							{
//  370 								curJumpR = 1;
        MOVS     R0,#+1
        LDR.W    R1,??CALC_Calc_0
        STR      R0,[R1, #+0]
//  371 								cntJumpR++;
        LDR.W    R0,??CALC_Calc_0+0x8
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??CALC_Calc_0+0x8
        STR      R0,[R1, #+0]
//  372 								posJumpR[cntJumpR] = i;
        LDR.W    R0,??DataTable2
        LDR.W    R1,??CALC_Calc_0+0x8
        LDR      R1,[R1, #+0]
        STR      R4,[R0, R1, LSL #+2]
//  373 							}
??CALC_Calc_56:
        ADDS     R7,R7,#+1
??CALC_Calc_54:
        ADDS     R0,R4,#+20
        CMP      R7,R0
        BGE.W    ??CALC_Calc_57
        LDR.W    R0,??CALC_Calc_1+0x14
        ADDS     R0,R0,R7, LSL #+2
        LDR      R0,[R0, #+4]
        LDR.W    R1,??CALC_Calc_1+0x14
        LDR      R1,[R1, R7, LSL #+2]
        CMP      R0,R1
        BGE.N    ??CALC_Calc_56
        LDR.W    R0,??CALC_Calc_1+0x14
        ADDS     R0,R0,R7, LSL #+2
        LDR      R0,[R0, #+8]
        LDR.W    R1,??CALC_Calc_1+0x14
        ADDS     R1,R1,R7, LSL #+2
        LDR      R1,[R1, #+4]
        CMP      R0,R1
        BLT.N    ??CALC_Calc_56
        LDR.W    R0,??CALC_Calc_1+0x14
        LDR      R0,[R0, R4, LSL #+2]
        LDR.W    R1,??CALC_Calc_1+0x14
        LDR      R1,[R1, R7, LSL #+2]
        SUBS     R0,R0,R1
        BL       abs
        CMP      R0,#+6
        BLT.N    ??CALC_Calc_56
        LDR.W    R0,??CALC_Calc_0
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??CALC_Calc_55
        CMP      R4,#+60
        BGE.N    ??CALC_Calc_58
        MOVS     R0,#+1
        LDR.W    R1,??CALC_Calc_0+0x14
        STR      R0,[R1, #+0]
        MOVS     R0,#-1
        LDR.W    R1,??CALC_Calc_1+0x14
        STR      R0,[R1, R4, LSL #+2]
        B.N      ??CALC_Calc_57
??CALC_Calc_58:
        MOVS     R0,#+1
        LDR.W    R1,??CALC_Calc_0
        STR      R0,[R1, #+0]
        LDR.W    R0,??CALC_Calc_0+0x8
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??CALC_Calc_0+0x8
        STR      R0,[R1, #+0]
        LDR.W    R0,??DataTable2
        LDR.W    R1,??CALC_Calc_0+0x8
        LDR      R1,[R1, #+0]
        STR      R4,[R0, R1, LSL #+2]
        B.N      ??CALC_Calc_56
//  374 						}
//  375 					}
//  376 				}
//  377 				else if (lineR[i] - lineR[i + 1] > lineR[i + 2] - lineR[i + 1] + 3 && lineR[i] > lineR[i + 1] && (curJumpR == 2 || !curJumpR))
??CALC_Calc_52:
        LDR.W    R0,??CALC_Calc_1+0x14
        ADDS     R0,R0,R4, LSL #+2
        LDR      R0,[R0, #+8]
        LDR.W    R1,??CALC_Calc_1+0x14
        ADDS     R1,R1,R4, LSL #+2
        LDR      R1,[R1, #+4]
        SUBS     R0,R0,R1
        ADDS     R0,R0,#+3
        LDR.W    R1,??CALC_Calc_1+0x14
        LDR      R1,[R1, R4, LSL #+2]
        LDR.W    R2,??CALC_Calc_1+0x14
        ADDS     R2,R2,R4, LSL #+2
        LDR      R2,[R2, #+4]
        SUBS     R1,R1,R2
        CMP      R0,R1
        BGE.N    ??CALC_Calc_57
        LDR.W    R0,??CALC_Calc_1+0x14
        ADDS     R0,R0,R4, LSL #+2
        LDR      R0,[R0, #+4]
        LDR.W    R1,??CALC_Calc_1+0x14
        LDR      R1,[R1, R4, LSL #+2]
        CMP      R0,R1
        BGE.N    ??CALC_Calc_57
        LDR.W    R0,??CALC_Calc_0
        LDR      R0,[R0, #+0]
        CMP      R0,#+2
        BEQ.N    ??CALC_Calc_59
        LDR.W    R0,??CALC_Calc_0
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??CALC_Calc_57
//  378 				{
//  379 					// 正常情况
//  380 					if (!curJumpR)
??CALC_Calc_59:
        LDR.W    R0,??CALC_Calc_0
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??CALC_Calc_60
//  381 					{
//  382 						if (i < FIRSTJUMP)
        CMP      R4,#+60
        BGE.N    ??CALC_Calc_61
//  383 						{
//  384 							flag_stopR = 1;
        MOVS     R0,#+1
        LDR.W    R1,??CALC_Calc_0+0x14
        STR      R0,[R1, #+0]
//  385 							lineR[i] = -1;
        MOVS     R0,#-1
        LDR.W    R1,??CALC_Calc_1+0x14
        STR      R0,[R1, R4, LSL #+2]
        B.N      ??CALC_Calc_57
//  386 						}
//  387 						else
//  388 						{
//  389 							curJumpR = 1;
??CALC_Calc_61:
        MOVS     R0,#+1
        LDR.W    R1,??CALC_Calc_0
        STR      R0,[R1, #+0]
//  390 							cntJumpR++;
        LDR.W    R0,??CALC_Calc_0+0x8
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??CALC_Calc_0+0x8
        STR      R0,[R1, #+0]
//  391 							posJumpR[cntJumpR] = i;
        LDR.W    R0,??DataTable2
        LDR.W    R1,??CALC_Calc_0+0x8
        LDR      R1,[R1, #+0]
        STR      R4,[R0, R1, LSL #+2]
        B.N      ??CALC_Calc_57
//  392 						}
//  393 					}
//  394 					else if (abs(i - posJumpR[cntJumpR]) > 10)
??CALC_Calc_60:
        LDR.W    R0,??DataTable2
        LDR.W    R1,??CALC_Calc_0+0x8
        LDR      R1,[R1, #+0]
        LDR      R0,[R0, R1, LSL #+2]
        SUBS     R0,R4,R0
        BL       abs
        CMP      R0,#+11
        BLT.N    ??CALC_Calc_57
//  395 					{
//  396 						curJumpR = 1;
        MOVS     R0,#+1
        LDR.W    R1,??CALC_Calc_0
        STR      R0,[R1, #+0]
//  397 						cntJumpR++;
        LDR.W    R0,??CALC_Calc_0+0x8
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??CALC_Calc_0+0x8
        STR      R0,[R1, #+0]
//  398 						posJumpR[cntJumpR] = i;
        LDR.W    R0,??DataTable2
        LDR.W    R1,??CALC_Calc_0+0x8
        LDR      R1,[R1, #+0]
        STR      R4,[R0, R1, LSL #+2]
//  399 					}
//  400 				}
//  401 
//  402 				// 右边线右跳左
//  403 				if (lineR[i + 1] != 158 && lineR[i + 1] - lineR[i] > lineR[i + 2] - lineR[i + 1] + 3 && lineR[i + 1] > lineR[i] && (curJumpR == 1 || !curJumpR))
??CALC_Calc_57:
        LDR.W    R0,??CALC_Calc_1+0x14
        ADDS     R0,R0,R4, LSL #+2
        LDR      R0,[R0, #+4]
        CMP      R0,#+158
        BEQ.N    ??CALC_Calc_51
        LDR.W    R0,??CALC_Calc_1+0x14
        ADDS     R0,R0,R4, LSL #+2
        LDR      R0,[R0, #+8]
        LDR.W    R1,??CALC_Calc_1+0x14
        ADDS     R1,R1,R4, LSL #+2
        LDR      R1,[R1, #+4]
        SUBS     R0,R0,R1
        ADDS     R0,R0,#+3
        LDR.W    R1,??CALC_Calc_1+0x14
        ADDS     R1,R1,R4, LSL #+2
        LDR      R1,[R1, #+4]
        LDR.W    R2,??CALC_Calc_1+0x14
        LDR      R2,[R2, R4, LSL #+2]
        SUBS     R1,R1,R2
        CMP      R0,R1
        BGE.N    ??CALC_Calc_51
        LDR.W    R0,??CALC_Calc_1+0x14
        LDR      R0,[R0, R4, LSL #+2]
        LDR.W    R1,??CALC_Calc_1+0x14
        ADDS     R1,R1,R4, LSL #+2
        LDR      R1,[R1, #+4]
        CMP      R0,R1
        BGE.N    ??CALC_Calc_51
        LDR.N    R0,??CALC_Calc_0
        LDR      R0,[R0, #+0]
        CMP      R0,#+1
        BEQ.N    ??CALC_Calc_62
        LDR.N    R0,??CALC_Calc_0
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??CALC_Calc_51
//  404 				{
//  405 					// 只考虑正常情况
//  406 					if (!curJumpR)
??CALC_Calc_62:
        LDR.N    R0,??CALC_Calc_0
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??CALC_Calc_63
//  407 					{
//  408 						if (i < FIRSTJUMP)
        CMP      R4,#+60
        BGE.N    ??CALC_Calc_64
//  409 						{
//  410 							flag_stopR = 1;
        MOVS     R0,#+1
        LDR.N    R1,??CALC_Calc_0+0x14
        STR      R0,[R1, #+0]
//  411 							lineR[i] = -1;
        MOVS     R0,#-1
        LDR.W    R1,??CALC_Calc_1+0x14
        STR      R0,[R1, R4, LSL #+2]
        B.N      ??CALC_Calc_51
//  412 						}
//  413 						else
//  414 						{
//  415 							curJumpR = 2;
??CALC_Calc_64:
        MOVS     R0,#+2
        LDR.N    R1,??CALC_Calc_0
        STR      R0,[R1, #+0]
//  416 							cntJumpR++;
        LDR.N    R0,??CALC_Calc_0+0x8
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??CALC_Calc_0+0x8
        STR      R0,[R1, #+0]
//  417 							posJumpR[cntJumpR] = i;
        LDR.W    R0,??DataTable2
        LDR.N    R1,??CALC_Calc_0+0x8
        LDR      R1,[R1, #+0]
        STR      R4,[R0, R1, LSL #+2]
        B.N      ??CALC_Calc_51
//  418 						}
//  419 					}
//  420 					else if (abs(i - posJumpR[cntJumpR]) > 10)
??CALC_Calc_63:
        LDR.W    R0,??DataTable2
        LDR.N    R1,??CALC_Calc_0+0x8
        LDR      R1,[R1, #+0]
        LDR      R0,[R0, R1, LSL #+2]
        SUBS     R0,R4,R0
        BL       abs
        CMP      R0,#+11
        BLT.N    ??CALC_Calc_51
//  421 					{
//  422 						curJumpR = 2;
        MOVS     R0,#+2
        LDR.N    R1,??CALC_Calc_0
        STR      R0,[R1, #+0]
//  423 						cntJumpR++;
        LDR.N    R0,??CALC_Calc_0+0x8
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??CALC_Calc_0+0x8
        STR      R0,[R1, #+0]
//  424 						posJumpR[cntJumpR] = i;
        LDR.W    R0,??DataTable2
        LDR.N    R1,??CALC_Calc_0+0x8
        LDR      R1,[R1, #+0]
        STR      R4,[R0, R1, LSL #+2]
//  425 					}
//  426 				}
//  427 			}
//  428 
//  429 			/*---------------------------------------------------------------------------------------------------------*/
//  430 
//  431 			if (!flag_stopL)
??CALC_Calc_51:
        LDR.N    R0,??CALC_Calc_0+0x10
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.W    ??CALC_Calc_50
//  432 			{
//  433 				// 左边线右跳左
//  434 				if (i < 100 && lineL[i] >= lineL[i + 1] && lineL[i + 1] < lineL[i + 2] && (curJumpL == 2 || !curJumpL))
        CMP      R4,#+100
        BGE.W    ??CALC_Calc_65
        LDR.W    R0,??CALC_Calc_1+0x18
        LDR      R0,[R0, R4, LSL #+2]
        LDR.W    R1,??CALC_Calc_1+0x18
        ADDS     R1,R1,R4, LSL #+2
        LDR      R1,[R1, #+4]
        CMP      R0,R1
        BLT.N    ??CALC_Calc_65
        LDR.W    R0,??CALC_Calc_1+0x18
        ADDS     R0,R0,R4, LSL #+2
        LDR      R0,[R0, #+4]
        LDR.W    R1,??CALC_Calc_1+0x18
        ADDS     R1,R1,R4, LSL #+2
        LDR      R1,[R1, #+8]
        CMP      R0,R1
        BGE.N    ??CALC_Calc_65
        LDR.N    R0,??CALC_Calc_0+0x4
        LDR      R0,[R0, #+0]
        CMP      R0,#+2
        BEQ.N    ??CALC_Calc_66
        LDR.N    R0,??CALC_Calc_0+0x4
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??CALC_Calc_65
//  435 				{
//  436 					// 倾斜
//  437 					for (j = i; j < i + 20; j++)
??CALC_Calc_66:
        MOVS     R7,R4
        B.N      ??CALC_Calc_67
//  438 					{
//  439 						if (lineL[j] < lineL[j + 1] && lineL[j + 1] >= lineL[j + 2] && abs(lineL[i] - lineL[j]) > 5)
//  440 						{
//  441 							if (!curJumpL)
//  442 							{
//  443 								if (i < FIRSTJUMP)
//  444 								{
//  445 									flag_stopL = 1;
//  446 									lineL[i] = -1;
//  447 									break;
//  448 								}
//  449 
//  450 								curJumpL = 1;
//  451 								cntJumpL++;
//  452 								posJumpL[cntJumpL] = i;
//  453 							}
//  454 							else if (abs(i - posJumpL[cntJumpL]) > 10)
??CALC_Calc_68:
        LDR.W    R0,??DataTable2_1
        LDR.N    R1,??CALC_Calc_0+0xC
        LDR      R1,[R1, #+0]
        LDR      R0,[R0, R1, LSL #+2]
        SUBS     R0,R4,R0
        BL       abs
        CMP      R0,#+11
        BLT.N    ??CALC_Calc_69
//  455 							{
//  456 								curJumpL = 1;
        MOVS     R0,#+1
        LDR.N    R1,??CALC_Calc_0+0x4
        STR      R0,[R1, #+0]
//  457 								cntJumpL++;
        LDR.N    R0,??CALC_Calc_0+0xC
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??CALC_Calc_0+0xC
        STR      R0,[R1, #+0]
//  458 								posJumpL[cntJumpL] = i;
        LDR.W    R0,??DataTable2_1
        LDR.N    R1,??CALC_Calc_0+0xC
        LDR      R1,[R1, #+0]
        STR      R4,[R0, R1, LSL #+2]
//  459 							}
??CALC_Calc_69:
        ADDS     R7,R7,#+1
??CALC_Calc_67:
        ADDS     R0,R4,#+20
        CMP      R7,R0
        BGE.W    ??CALC_Calc_70
        LDR.W    R0,??CALC_Calc_1+0x18
        LDR      R0,[R0, R7, LSL #+2]
        LDR.W    R1,??CALC_Calc_1+0x18
        ADDS     R1,R1,R7, LSL #+2
        LDR      R1,[R1, #+4]
        CMP      R0,R1
        BGE.N    ??CALC_Calc_69
        LDR.W    R0,??CALC_Calc_1+0x18
        ADDS     R0,R0,R7, LSL #+2
        LDR      R0,[R0, #+4]
        LDR.W    R1,??CALC_Calc_1+0x18
        ADDS     R1,R1,R7, LSL #+2
        LDR      R1,[R1, #+8]
        CMP      R0,R1
        BLT.N    ??CALC_Calc_69
        LDR.W    R0,??CALC_Calc_1+0x18
        LDR      R0,[R0, R4, LSL #+2]
        LDR.W    R1,??CALC_Calc_1+0x18
        LDR      R1,[R1, R7, LSL #+2]
        SUBS     R0,R0,R1
        BL       abs
        CMP      R0,#+6
        BLT.N    ??CALC_Calc_69
        LDR.N    R0,??CALC_Calc_0+0x4
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??CALC_Calc_68
        CMP      R4,#+60
        BGE.N    ??CALC_Calc_71
        MOVS     R0,#+1
        LDR.N    R1,??CALC_Calc_0+0x10
        STR      R0,[R1, #+0]
        MOVS     R0,#-1
        LDR.W    R1,??CALC_Calc_1+0x18
        STR      R0,[R1, R4, LSL #+2]
        B.N      ??CALC_Calc_70
??CALC_Calc_71:
        MOVS     R0,#+1
        LDR.N    R1,??CALC_Calc_0+0x4
        STR      R0,[R1, #+0]
        LDR.N    R0,??CALC_Calc_0+0xC
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??CALC_Calc_0+0xC
        STR      R0,[R1, #+0]
        LDR.W    R0,??DataTable2_1
        LDR.N    R1,??CALC_Calc_0+0xC
        LDR      R1,[R1, #+0]
        STR      R4,[R0, R1, LSL #+2]
        B.N      ??CALC_Calc_69
//  460 						}
//  461 					}
//  462 				}
//  463 				else if (lineL[i + 1] - lineL[i] > lineL[i + 1] - lineL[i + 2] + 3 && lineL[i] < lineL[i + 1] && (curJumpL == 2 || !curJumpL))
??CALC_Calc_65:
        LDR.W    R0,??CALC_Calc_1+0x18
        ADDS     R0,R0,R4, LSL #+2
        LDR      R0,[R0, #+4]
        LDR.W    R1,??CALC_Calc_1+0x18
        ADDS     R1,R1,R4, LSL #+2
        LDR      R1,[R1, #+8]
        SUBS     R0,R0,R1
        ADDS     R0,R0,#+3
        LDR.W    R1,??CALC_Calc_1+0x18
        ADDS     R1,R1,R4, LSL #+2
        LDR      R1,[R1, #+4]
        LDR.W    R2,??CALC_Calc_1+0x18
        LDR      R2,[R2, R4, LSL #+2]
        SUBS     R1,R1,R2
        CMP      R0,R1
        BGE.N    ??CALC_Calc_70
        LDR.W    R0,??CALC_Calc_1+0x18
        LDR      R0,[R0, R4, LSL #+2]
        LDR.W    R1,??CALC_Calc_1+0x18
        ADDS     R1,R1,R4, LSL #+2
        LDR      R1,[R1, #+4]
        CMP      R0,R1
        BGE.N    ??CALC_Calc_70
        LDR.N    R0,??CALC_Calc_0+0x4
        LDR      R0,[R0, #+0]
        CMP      R0,#+2
        BEQ.N    ??CALC_Calc_72
        LDR.N    R0,??CALC_Calc_0+0x4
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??CALC_Calc_70
//  464 				{
//  465 					// 正常
//  466 					if (!curJumpL)
??CALC_Calc_72:
        LDR.N    R0,??CALC_Calc_0+0x4
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??CALC_Calc_73
//  467 					{
//  468 						if (i < FIRSTJUMP)
        CMP      R4,#+60
        BGE.N    ??CALC_Calc_74
//  469 						{
//  470 							flag_stopL = 1;
        MOVS     R0,#+1
        LDR.N    R1,??CALC_Calc_0+0x10
        STR      R0,[R1, #+0]
//  471 							lineL[i] = -1;
        MOVS     R0,#-1
        LDR.N    R1,??CALC_Calc_1+0x18
        STR      R0,[R1, R4, LSL #+2]
        B.N      ??CALC_Calc_70
//  472 						}
//  473 						else
//  474 						{
//  475 							curJumpL = 1;
??CALC_Calc_74:
        MOVS     R0,#+1
        LDR.N    R1,??CALC_Calc_0+0x4
        STR      R0,[R1, #+0]
//  476 							cntJumpL++;
        LDR.N    R0,??CALC_Calc_0+0xC
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??CALC_Calc_0+0xC
        STR      R0,[R1, #+0]
//  477 							posJumpL[cntJumpL] = i;
        LDR.W    R0,??DataTable2_1
        LDR.N    R1,??CALC_Calc_0+0xC
        LDR      R1,[R1, #+0]
        STR      R4,[R0, R1, LSL #+2]
        B.N      ??CALC_Calc_70
//  478 						}
//  479 					}
//  480 					else if (abs(i - posJumpL[cntJumpL]) > 10)
??CALC_Calc_73:
        LDR.W    R0,??DataTable2_1
        LDR.N    R1,??CALC_Calc_0+0xC
        LDR      R1,[R1, #+0]
        LDR      R0,[R0, R1, LSL #+2]
        SUBS     R0,R4,R0
        BL       abs
        CMP      R0,#+11
        BLT.N    ??CALC_Calc_70
//  481 					{
//  482 						curJumpL = 1;
        MOVS     R0,#+1
        LDR.N    R1,??CALC_Calc_0+0x4
        STR      R0,[R1, #+0]
//  483 						cntJumpL++;
        LDR.N    R0,??CALC_Calc_0+0xC
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??CALC_Calc_0+0xC
        STR      R0,[R1, #+0]
//  484 						posJumpL[cntJumpL] = i;
        LDR.W    R0,??DataTable2_1
        LDR.N    R1,??CALC_Calc_0+0xC
        LDR      R1,[R1, #+0]
        STR      R4,[R0, R1, LSL #+2]
//  485 					}
//  486 				}
//  487 
//  488 				// 左边线左跳右
//  489 				if (lineL[i + 1] != 1 && lineL[i] - lineL[i + 1] > lineL[i + 1] - lineL[i + 2] + 3 && lineL[i + 1] < lineL[i] && (curJumpL == 1 || !curJumpL))
??CALC_Calc_70:
        LDR.N    R0,??CALC_Calc_1+0x18
        ADDS     R0,R0,R4, LSL #+2
        LDR      R0,[R0, #+4]
        CMP      R0,#+1
        BEQ.N    ??CALC_Calc_50
        LDR.N    R0,??CALC_Calc_1+0x18
        ADDS     R0,R0,R4, LSL #+2
        LDR      R0,[R0, #+4]
        LDR.N    R1,??CALC_Calc_1+0x18
        ADDS     R1,R1,R4, LSL #+2
        LDR      R1,[R1, #+8]
        SUBS     R0,R0,R1
        ADDS     R0,R0,#+3
        LDR.N    R1,??CALC_Calc_1+0x18
        LDR      R1,[R1, R4, LSL #+2]
        LDR.N    R2,??CALC_Calc_1+0x18
        ADDS     R2,R2,R4, LSL #+2
        LDR      R2,[R2, #+4]
        SUBS     R1,R1,R2
        CMP      R0,R1
        BGE.N    ??CALC_Calc_50
        LDR.N    R0,??CALC_Calc_1+0x18
        ADDS     R0,R0,R4, LSL #+2
        LDR      R0,[R0, #+4]
        LDR.N    R1,??CALC_Calc_1+0x18
        LDR      R1,[R1, R4, LSL #+2]
        CMP      R0,R1
        BGE.N    ??CALC_Calc_50
        LDR.N    R0,??CALC_Calc_0+0x4
        LDR      R0,[R0, #+0]
        CMP      R0,#+1
        BEQ.N    ??CALC_Calc_75
        LDR.N    R0,??CALC_Calc_0+0x4
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??CALC_Calc_50
//  490 				{
//  491 					// 正常
//  492 					if (!curJumpL)
??CALC_Calc_75:
        LDR.N    R0,??CALC_Calc_0+0x4
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??CALC_Calc_76
//  493 					{
//  494 						if (i < FIRSTJUMP)
        CMP      R4,#+60
        BGE.N    ??CALC_Calc_77
//  495 						{
//  496 							flag_stopL = 1;
        MOVS     R0,#+1
        LDR.N    R1,??CALC_Calc_0+0x10
        STR      R0,[R1, #+0]
//  497 							lineL[i] = -1;
        MOVS     R0,#-1
        LDR.N    R1,??CALC_Calc_1+0x18
        STR      R0,[R1, R4, LSL #+2]
        B.N      ??CALC_Calc_50
        Nop      
        DATA
??CALC_Calc_0:
        DC32     ??curJumpR
        DC32     ??curJumpL
        DC32     ??cntJumpR
        DC32     ??cntJumpL
        DC32     flag_stopL
        DC32     flag_stopR
        THUMB
//  498 						}
//  499 						else
//  500 						{
//  501 							curJumpL = 2;
??CALC_Calc_77:
        MOVS     R0,#+2
        LDR.W    R1,??DataTable2_2
        STR      R0,[R1, #+0]
//  502 							cntJumpL++;
        LDR.W    R0,??DataTable2_3
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable2_3
        STR      R0,[R1, #+0]
//  503 							posJumpL[cntJumpL] = i;
        LDR.W    R0,??DataTable2_1
        LDR.W    R1,??DataTable2_3
        LDR      R1,[R1, #+0]
        STR      R4,[R0, R1, LSL #+2]
        B.N      ??CALC_Calc_50
//  504 						}
//  505 					}
//  506 					else if (abs(i - posJumpL[cntJumpL]) > 10)
??CALC_Calc_76:
        LDR.W    R0,??DataTable2_1
        LDR.W    R1,??DataTable2_3
        LDR      R1,[R1, #+0]
        LDR      R0,[R0, R1, LSL #+2]
        SUBS     R0,R4,R0
        BL       abs
        CMP      R0,#+11
        BLT.N    ??CALC_Calc_50
//  507 					{
//  508 						curJumpL = 2;
        MOVS     R0,#+2
        LDR.W    R1,??DataTable2_2
        STR      R0,[R1, #+0]
//  509 						cntJumpL++;
        LDR.W    R0,??DataTable2_3
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable2_3
        STR      R0,[R1, #+0]
//  510 						posJumpL[cntJumpL] = i;
        LDR.W    R0,??DataTable2_1
        LDR.W    R1,??DataTable2_3
        LDR      R1,[R1, #+0]
        STR      R4,[R0, R1, LSL #+2]
//  511 					}
//  512 				}
//  513 			}
//  514 		}
//  515 
//  516 		/*---------------------------------------------------------------------------------------------------------*/
//  517 		// 中线
//  518 
//  519 //		lineMid[i] = (lineL[i] + lineR[i]) / 2;
//  520 //		if ((lineL[i] == -1 || lineR[i] == -1) && !calc.reffer[0])
//  521 //		{
//  522 //			if (i > 50)
//  523 //				calc.reffer[0] = lineMid[i + 2];
//  524 //			else
//  525 //				calc.reffer[0] = lineMid[50];
//  526 //
//  527 //			calc.reffer[0] = (calc.reffer[0] + calc.reffer[1] + calc.reffer[2]) / 3;
//  528 //		}
//  529 //
//  530 //		int cnt_black = 0;
//  531 //		if (i > 60 && camera.img[i][lineMid[i]] == camera.black && calc.findEnd == 0 && (twinCore.data[8] == 0 || twinCore.data[8] == 1)) // 20180724颠簸阴影
//  532 //		{
//  533 //			for (j = 0; j < 10; j++)
//  534 //			{
//  535 //				if (camera.img[i][limitX(lineMid[i] + j)] == camera.black)
//  536 //					cnt_black++;
//  537 //				if (camera.img[i][limitX(lineMid[i] - j)] == camera.black)
//  538 //					cnt_black++;
//  539 //			}
//  540 //			if (cnt_black > 15)
//  541 //			{
//  542 //				flag_stopL = 1;
//  543 //				flag_stopR = 1;
//  544 //			}
//  545 //
//  546 ////			flag_stopL = 1;
//  547 ////			flag_stopR = 1;
//  548 //		}
//  549 //
//  550 //		if (twinCore.data[1] == 1100)
//  551 //			camera.img[i][lineMid[i]] = camera.black;
//  552 
//  553 		/*---------------------------------------------------------------------------------------------------------*/
//  554 
//  555 		// 达到识别条件
//  556 		if
//  557 		(
//  558 			(/*(calc.f2fMode == 0 || calc.f2fMode == 1 || calc.f2fMode == 2 || calc.f2fMode == 4 || calc.f2fMode == 6) &&*/
//  559 			cntJumpR >= 3 &&
//  560 			abs(abs(lineR[posJumpR[cntJumpR]] - lineR[posJumpR[cntJumpR - 1]]) -
//  561 			abs(lineR[posJumpR[cntJumpR - 1]] - lineR[posJumpR[cntJumpR - 2]])) < JMPDELTAX /*&&
//  562 			abs(lineR[posJumpR[cntJumpR]] - lineR[posJumpR[cntJumpR - 1]]) <
//  563 			abs(lineR[posJumpR[cntJumpR - 1]] - lineR[posJumpR[cntJumpR - 2]])*/)
//  564 
//  565 		 || (/*(calc.f2fMode == 0 || calc.f2fMode == 1 || calc.f2fMode == 3 || calc.f2fMode == 4 || calc.f2fMode == 7) &&*/
//  566 			cntJumpL >= 3 &&
//  567 			abs(abs(lineL[posJumpL[cntJumpL]] - lineL[posJumpL[cntJumpL - 1]]) -
//  568 			abs(lineL[posJumpL[cntJumpL - 1]] - lineL[posJumpL[cntJumpL - 2]])) < JMPDELTAX /*&&
//  569 			abs(lineL[posJumpL[cntJumpL]] - lineL[posJumpL[cntJumpL - 1]]) <
//  570 			abs(lineL[posJumpL[cntJumpL - 1]] - lineL[posJumpL[cntJumpL - 2]])*/) // 边线三个点
//  571 
//  572 		 ||	(/*(calc.f2fMode == 0 || calc.f2fMode == 1) &&
//  573 			calc.findEnd != 0 &&*/
//  574 			cntJumpL + cntJumpR >= 5) // 总和5个点
//  575 
//  576 		 || (/*(calc.f2fMode == 2 || calc.f2fMode == 6) &&*/
//  577 			/*calc.findEnd == 0 &&*/
//  578 			!flag_stopR && cntJumpR >= 2 && lineR[i] < 30 && lineR[i + 1] < 30 &&
//  579 			flag_startL < flag_startR)
//  580 
//  581 		 || (/*(calc.f2fMode == 3 || calc.f2fMode == 7) &&*/
//  582 			/*calc.findEnd == 0 &&*/
//  583 			!flag_stopL && cntJumpL >= 2 && lineL[i] > 130 && lineL[i + 1] > 130 &&
//  584 			flag_startL > flag_startR) // 弯道特殊寻
//  585 		)
??CALC_Calc_50:
        LDR.W    R0,??DataTable3
        LDR      R0,[R0, #+0]
        CMP      R0,#+3
        BLT.N    ??CALC_Calc_78
        LDR.N    R0,??CALC_Calc_1+0x14
        LDR.W    R1,??DataTable2
        LDR.W    R2,??DataTable3
        LDR      R2,[R2, #+0]
        LDR      R1,[R1, R2, LSL #+2]
        LDR      R0,[R0, R1, LSL #+2]
        LDR.N    R1,??CALC_Calc_1+0x14
        LDR.W    R2,??DataTable2
        LDR.W    R3,??DataTable3
        LDR      R3,[R3, #+0]
        ADDS     R2,R2,R3, LSL #+2
        LDR      R2,[R2, #-4]
        LDR      R1,[R1, R2, LSL #+2]
        SUBS     R0,R0,R1
        BL       abs
        MOVS     R7,R0
        LDR.N    R0,??CALC_Calc_1+0x14
        LDR.W    R1,??DataTable2
        LDR.W    R2,??DataTable3
        LDR      R2,[R2, #+0]
        ADDS     R1,R1,R2, LSL #+2
        LDR      R1,[R1, #-4]
        LDR      R0,[R0, R1, LSL #+2]
        LDR.N    R1,??CALC_Calc_1+0x14
        LDR.W    R2,??DataTable2
        LDR.W    R3,??DataTable3
        LDR      R3,[R3, #+0]
        ADDS     R2,R2,R3, LSL #+2
        LDR      R2,[R2, #-8]
        LDR      R1,[R1, R2, LSL #+2]
        SUBS     R0,R0,R1
        BL       abs
        SUBS     R0,R7,R0
        BL       abs
        CMP      R0,#+20
        BLT.N    ??CALC_Calc_79
??CALC_Calc_78:
        LDR.W    R0,??DataTable2_3
        LDR      R0,[R0, #+0]
        CMP      R0,#+3
        BLT.N    ??CALC_Calc_80
        LDR.N    R0,??CALC_Calc_1+0x18
        LDR.W    R1,??DataTable2_1
        LDR.W    R2,??DataTable2_3
        LDR      R2,[R2, #+0]
        LDR      R1,[R1, R2, LSL #+2]
        LDR      R0,[R0, R1, LSL #+2]
        LDR.N    R1,??CALC_Calc_1+0x18
        LDR.W    R2,??DataTable2_1
        LDR.W    R3,??DataTable2_3
        LDR      R3,[R3, #+0]
        ADDS     R2,R2,R3, LSL #+2
        LDR      R2,[R2, #-4]
        LDR      R1,[R1, R2, LSL #+2]
        SUBS     R0,R0,R1
        BL       abs
        MOVS     R7,R0
        LDR.N    R0,??CALC_Calc_1+0x18
        LDR.W    R1,??DataTable2_1
        LDR.W    R2,??DataTable2_3
        LDR      R2,[R2, #+0]
        ADDS     R1,R1,R2, LSL #+2
        LDR      R1,[R1, #-4]
        LDR      R0,[R0, R1, LSL #+2]
        LDR.N    R1,??CALC_Calc_1+0x18
        LDR.W    R2,??DataTable2_1
        LDR.W    R3,??DataTable2_3
        LDR      R3,[R3, #+0]
        ADDS     R2,R2,R3, LSL #+2
        LDR      R2,[R2, #-8]
        LDR      R1,[R1, R2, LSL #+2]
        SUBS     R0,R0,R1
        BL       abs
        SUBS     R0,R7,R0
        BL       abs
        CMP      R0,#+20
        BLT.N    ??CALC_Calc_79
??CALC_Calc_80:
        LDR.W    R0,??DataTable2_3
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable3
        LDR      R1,[R1, #+0]
        ADDS     R0,R1,R0
        CMP      R0,#+5
        BGE.N    ??CALC_Calc_79
        LDR.W    R0,??DataTable3_1
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??CALC_Calc_81
        LDR.W    R0,??DataTable3
        LDR      R0,[R0, #+0]
        CMP      R0,#+2
        BLT.N    ??CALC_Calc_81
        LDR.N    R0,??CALC_Calc_1+0x14
        LDR      R0,[R0, R4, LSL #+2]
        CMP      R0,#+30
        BGE.N    ??CALC_Calc_81
        LDR.N    R0,??CALC_Calc_1+0x14
        ADDS     R0,R0,R4, LSL #+2
        LDR      R0,[R0, #+4]
        CMP      R0,#+30
        BGE.N    ??CALC_Calc_81
        CMP      R5,R6
        BLT.N    ??CALC_Calc_79
??CALC_Calc_81:
        LDR.W    R0,??DataTable3_2
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.W    ??CALC_Calc_82
        LDR.W    R0,??DataTable2_3
        LDR      R0,[R0, #+0]
        CMP      R0,#+2
        BLT.W    ??CALC_Calc_82
        LDR.N    R0,??CALC_Calc_1+0x18
        LDR      R0,[R0, R4, LSL #+2]
        CMP      R0,#+131
        BLT.W    ??CALC_Calc_82
        LDR.N    R0,??CALC_Calc_1+0x18
        ADDS     R0,R0,R4, LSL #+2
        LDR      R0,[R0, #+4]
        CMP      R0,#+131
        BLT.W    ??CALC_Calc_82
        CMP      R6,R5
        BGE.W    ??CALC_Calc_82
//  586 		{
//  587 			// 调试用，画出跳变点的位置
//  588 			if (twinCore.data[1] == 1100 /*|| twinCore.data[1] == 1101*/)
??CALC_Calc_79:
        LDR.W    R0,??DataTable0
        LDRSH    R0,[R0, #+14]
        MOVW     R1,#+1100
        CMP      R0,R1
        BNE.W    ??CALC_Calc_83
//  589 			{
//  590 				for (int k = 1; k <= cntJumpR; k++)
        MOVS     R0,#+1
        B.N      ??CALC_Calc_84
//  591 					for (int l = 0; l < 159; l++)
//  592 					{
//  593 						camera.img[posJumpR[k]][l] = camera.black;
??CALC_Calc_85:
        LDR.N    R2,??CALC_Calc_1+0x8
        LDR.W    R3,??DataTable2
        LDR      R3,[R3, R0, LSL #+2]
        MOVS     R4,#+160
        MLA      R2,R4,R3,R2
        ADDS     R2,R1,R2
        MOVW     R3,#+5232
        LDR.N    R4,??CALC_Calc_1+0x8
        LDR      R4,[R4, #+24]
        STRB     R4,[R3, R2]
//  594 						camera.img[posJumpR[k] + 1][l] = camera.black;
        LDR.N    R2,??CALC_Calc_1+0x8
        LDR.W    R3,??DataTable2
        LDR      R3,[R3, R0, LSL #+2]
        MOVS     R4,#+160
        MLA      R2,R4,R3,R2
        ADDS     R2,R1,R2
        MOVW     R3,#+5392
        LDR.N    R4,??CALC_Calc_1+0x8
        LDR      R4,[R4, #+24]
        STRB     R4,[R3, R2]
//  595 					}
        ADDS     R1,R1,#+1
??CALC_Calc_86:
        CMP      R1,#+159
        BLT.N    ??CALC_Calc_85
        ADDS     R0,R0,#+1
??CALC_Calc_84:
        LDR.W    R1,??DataTable3
        LDR      R1,[R1, #+0]
        CMP      R1,R0
        BLT.N    ??CALC_Calc_87
        MOVS     R1,#+0
        B.N      ??CALC_Calc_86
        Nop      
        DATA
??CALC_Calc_1:
        DC32     calc
        DC32     state_out
        DC32     camera
        DC32     camera+0x5ED0
        DC32     camera+0x5F6F
        DC32     lineR
        DC32     lineL
        THUMB
//  596 
//  597 				for (int k = 1; k <= cntJumpL; k++)
??CALC_Calc_87:
        MOVS     R0,#+1
        B.N      ??CALC_Calc_88
//  598 					for (int l = 0; l < 159; l++)
//  599 					{
//  600 						camera.img[posJumpL[k]][l] = camera.black;
??CALC_Calc_89:
        LDR.W    R2,??DataTable3_3
        LDR.W    R3,??DataTable2_1
        LDR      R3,[R3, R0, LSL #+2]
        MOVS     R4,#+160
        MLA      R2,R4,R3,R2
        ADDS     R2,R1,R2
        MOVW     R3,#+5232
        LDR.W    R4,??DataTable3_3
        LDR      R4,[R4, #+24]
        STRB     R4,[R3, R2]
//  601 						camera.img[posJumpL[k] + 1][l] = camera.black;
        LDR.W    R2,??DataTable3_3
        LDR.W    R3,??DataTable2_1
        LDR      R3,[R3, R0, LSL #+2]
        MOVS     R4,#+160
        MLA      R2,R4,R3,R2
        ADDS     R2,R1,R2
        MOVW     R3,#+5392
        LDR.W    R4,??DataTable3_3
        LDR      R4,[R4, #+24]
        STRB     R4,[R3, R2]
//  602 					}
        ADDS     R1,R1,#+1
??CALC_Calc_90:
        CMP      R1,#+159
        BLT.N    ??CALC_Calc_89
        ADDS     R0,R0,#+1
??CALC_Calc_88:
        LDR.W    R1,??DataTable2_3
        LDR      R1,[R1, #+0]
        CMP      R1,R0
        BLT.N    ??CALC_Calc_91
        MOVS     R1,#+0
        B.N      ??CALC_Calc_90
//  603 
//  604 				for (int l = 0; l < 159; l++) // 定位线
??CALC_Calc_91:
        MOVS     R0,#+0
        B.N      ??CALC_Calc_92
//  605 				{
//  606 					if (camera.img[ROADEND][l] == camera.black)
//  607 					{
//  608 						camera.img[ROADEND][l] = camera.white;
//  609 						camera.img[ROADEND + 1][l] = camera.white;
//  610 					}
//  611 					else
//  612 					{
//  613 						camera.img[ROADEND][l] = camera.black;
??CALC_Calc_93:
        LDR.W    R1,??DataTable3_3
        LDR      R1,[R1, #+24]
        LDR.W    R2,??DataTable3_3
        ADDS     R2,R0,R2
        MOVW     R3,#+13232
        STRB     R1,[R3, R2]
//  614 						camera.img[ROADEND + 1][l] = camera.black;
        LDR.W    R1,??DataTable3_3
        LDR      R1,[R1, #+24]
        LDR.W    R2,??DataTable3_3
        ADDS     R2,R0,R2
        MOVW     R3,#+13392
        STRB     R1,[R3, R2]
//  615 					}
??CALC_Calc_94:
        ADDS     R0,R0,#+1
??CALC_Calc_92:
        CMP      R0,#+159
        BGE.N    ??CALC_Calc_83
        LDR.W    R1,??DataTable3_3
        ADDS     R1,R0,R1
        MOVW     R2,#+13232
        LDRB     R1,[R2, R1]
        LDR.W    R2,??DataTable3_3
        LDR      R2,[R2, #+24]
        CMP      R1,R2
        BNE.N    ??CALC_Calc_93
        LDR.W    R1,??DataTable3_3
        LDR      R1,[R1, #+20]
        LDR.W    R2,??DataTable3_3
        ADDS     R2,R0,R2
        MOVW     R3,#+13232
        STRB     R1,[R3, R2]
        LDR.W    R1,??DataTable3_3
        LDR      R1,[R1, #+20]
        LDR.W    R2,??DataTable3_3
        ADDS     R2,R0,R2
        MOVW     R3,#+13392
        STRB     R1,[R3, R2]
        B.N      ??CALC_Calc_94
//  616 				}
//  617 			}
//  618 
//  619 			calc.flag_out = 1;
??CALC_Calc_83:
        MOVS     R0,#+1
        LDR.W    R1,??DataTable3_4
        STR      R0,[R1, #+12]
//  620 
//  621 			led.Set(LED4, ON); // 灯
        MOVS     R1,#+0
        MOVS     R0,#+8
        LDR.W    R2,??DataTable3_5
        LDR      R2,[R2, #+4]
        BLX      R2
//  622 
//  623 			for (int k = CNTMAX; k > 0; k--)
        MOVS     R0,#+20
        B.N      ??CALC_Calc_95
//  624 				state_out[k] = state_out[k - 1]; // 用作统计
??CALC_Calc_96:
        LDR.W    R1,??DataTable3_6
        ADDS     R1,R1,R0, LSL #+2
        LDR      R1,[R1, #-4]
        LDR.W    R2,??DataTable3_6
        STR      R1,[R2, R0, LSL #+2]
        SUBS     R0,R0,#+1
??CALC_Calc_95:
        CMP      R0,#+1
        BGE.N    ??CALC_Calc_96
//  625 			state_out[0] = calc.flag_out;
        LDR.W    R0,??DataTable3_4
        LDR      R0,[R0, #+12]
        LDR.W    R1,??DataTable3_6
        STR      R0,[R1, #+0]
//  626 
//  627 #define USE_MYFILTER	0
//  628 
//  629 			if (USE_MYFILTER)
//  630 			{
//  631 				if (state_out[0] != state_out[2])
//  632 					calc.flag_out = state_out[1]; // 14-04-14 by gf 炒鸡神奇的滤波
//  633 			}
//  634 			else
//  635 			{
//  636 //				if (state_out[0] && state_out[1])
//  637 //					calc.flag_out = 1;
//  638 //				else
//  639 //					calc.flag_out = 0;
//  640 				//int cnt_out = 0;
//  641 				for (int k = 0; k < CNTMAX; k++)
        MOVS     R0,#+0
        B.N      ??CALC_Calc_97
//  642 					if (state_out[k])
??CALC_Calc_98:
        LDR.W    R1,??DataTable3_6
        LDR      R1,[R1, R0, LSL #+2]
        CMP      R1,#+0
        BEQ.N    ??CALC_Calc_99
//  643 						calc.cnt_out++;
        LDR.W    R1,??DataTable3_4
        LDR      R1,[R1, #+1068]
        ADDS     R1,R1,#+1
        LDR.W    R2,??DataTable3_4
        STR      R1,[R2, #+1068]
??CALC_Calc_99:
        ADDS     R0,R0,#+1
??CALC_Calc_97:
        CMP      R0,#+20
        BLT.N    ??CALC_Calc_98
//  644 				if (calc.cnt_out >= calc.cnt_effect)
        LDR.W    R0,??DataTable3_4
        LDR      R0,[R0, #+1068]
        LDR.W    R1,??DataTable3_4
        LDR      R1,[R1, #+8]
        CMP      R0,R1
        BLT.N    ??CALC_Calc_100
//  645 					calc.flag_out = 1;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable3_4
        STR      R0,[R1, #+12]
        B.N      ??CALC_Calc_101
//  646 				else
//  647 				{
//  648 					calc.flag_out = 0;
??CALC_Calc_100:
        MOVS     R0,#+0
        LDR.W    R1,??DataTable3_4
        STR      R0,[R1, #+12]
//  649 					led.Set(LED4, OFF);
        MOVS     R1,#+1
        MOVS     R0,#+8
        LDR.W    R2,??DataTable3_5
        LDR      R2,[R2, #+4]
        BLX      R2
//  650 				}
//  651 			}
//  652 
//  653 //			static float a, b;
//  654 //			static int reffer;
//  655 //
//  656 //			calc_LinearRegression(lineR, posJumpR[cntJumpR], 119 - posJumpR[cntJumpR], &a, &b);
//  657 //			reffer = (int)b;
//  658 
//  659 			return;
??CALC_Calc_101:
        B.N      ??CALC_Calc_102
//  660 		}
//  661 
//  662 		if (flag_stopL && flag_stopR)
??CALC_Calc_82:
        LDR.W    R0,??DataTable3_2
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.W    ??CALC_Calc_18
        LDR.W    R0,??DataTable3_1
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.W    ??CALC_Calc_18
//  663 		{
//  664 			i = 30;
        MOVS     R4,#+30
//  665 			break;
//  666 		}
//  667 	}
//  668 
//  669 	// 调试用，画出跳变点的位置
//  670 	if (twinCore.data[1] == 1100/* || twinCore.data[1] == 1101*/)
??CALC_Calc_19:
        LDR.N    R0,??DataTable0
        LDRSH    R0,[R0, #+14]
        MOVW     R1,#+1100
        CMP      R0,R1
        BNE.W    ??CALC_Calc_103
//  671 	{
//  672 		for (int k = 1; k <= cntJumpR; k++)
        MOVS     R0,#+1
        B.N      ??CALC_Calc_104
//  673 			for (int l = 0; l < 159; l++)
//  674 			{
//  675 				camera.img[posJumpR[k]][l] = camera.black;
??CALC_Calc_105:
        LDR.W    R2,??DataTable3_3
        LDR.W    R3,??DataTable2
        LDR      R3,[R3, R0, LSL #+2]
        MOVS     R5,#+160
        MLA      R2,R5,R3,R2
        ADDS     R2,R1,R2
        MOVW     R3,#+5232
        LDR.W    R5,??DataTable3_3
        LDR      R5,[R5, #+24]
        STRB     R5,[R3, R2]
//  676 				camera.img[posJumpR[k] + 1][l] = camera.black;
        LDR.W    R2,??DataTable3_3
        LDR.W    R3,??DataTable2
        LDR      R3,[R3, R0, LSL #+2]
        MOVS     R5,#+160
        MLA      R2,R5,R3,R2
        ADDS     R2,R1,R2
        MOVW     R3,#+5392
        LDR.W    R5,??DataTable3_3
        LDR      R5,[R5, #+24]
        STRB     R5,[R3, R2]
//  677 			}
        ADDS     R1,R1,#+1
??CALC_Calc_106:
        CMP      R1,#+159
        BLT.N    ??CALC_Calc_105
        ADDS     R0,R0,#+1
??CALC_Calc_104:
        LDR.W    R1,??DataTable3
        LDR      R1,[R1, #+0]
        CMP      R1,R0
        BLT.N    ??CALC_Calc_107
        MOVS     R1,#+0
        B.N      ??CALC_Calc_106
//  678 
//  679 		for (int k = 1; k <= cntJumpL; k++)
??CALC_Calc_107:
        MOVS     R0,#+1
        B.N      ??CALC_Calc_108
//  680 			for (int l = 0; l < 159; l++)
//  681 			{
//  682 				camera.img[posJumpL[k]][l] = camera.black;
??CALC_Calc_109:
        LDR.W    R2,??DataTable3_3
        LDR.W    R3,??DataTable2_1
        LDR      R3,[R3, R0, LSL #+2]
        MOVS     R5,#+160
        MLA      R2,R5,R3,R2
        ADDS     R2,R1,R2
        MOVW     R3,#+5232
        LDR.W    R5,??DataTable3_3
        LDR      R5,[R5, #+24]
        STRB     R5,[R3, R2]
//  683 				camera.img[posJumpL[k] + 1][l] = camera.black;
        LDR.W    R2,??DataTable3_3
        LDR.W    R3,??DataTable2_1
        LDR      R3,[R3, R0, LSL #+2]
        MOVS     R5,#+160
        MLA      R2,R5,R3,R2
        ADDS     R2,R1,R2
        MOVW     R3,#+5392
        LDR.W    R5,??DataTable3_3
        LDR      R5,[R5, #+24]
        STRB     R5,[R3, R2]
//  684 			}
        ADDS     R1,R1,#+1
??CALC_Calc_110:
        CMP      R1,#+159
        BLT.N    ??CALC_Calc_109
        ADDS     R0,R0,#+1
??CALC_Calc_108:
        LDR.N    R1,??DataTable2_3
        LDR      R1,[R1, #+0]
        CMP      R1,R0
        BLT.N    ??CALC_Calc_111
        MOVS     R1,#+0
        B.N      ??CALC_Calc_110
//  685 
//  686 		for (int l = 0; l < 159; l++)
??CALC_Calc_111:
        MOVS     R0,#+0
        B.N      ??CALC_Calc_112
//  687 		{
//  688 			if (camera.img[ROADEND][l] == camera.black)
//  689 			{
//  690 				camera.img[ROADEND][l] = camera.white;
//  691 				camera.img[ROADEND + 1][l] = camera.white;
//  692 			}
//  693 			else
//  694 			{
//  695 				camera.img[ROADEND][l] = camera.black;
??CALC_Calc_113:
        LDR.W    R1,??DataTable3_3
        LDR      R1,[R1, #+24]
        LDR.W    R2,??DataTable3_3
        ADDS     R2,R0,R2
        MOVW     R3,#+13232
        STRB     R1,[R3, R2]
//  696 				camera.img[ROADEND + 1][l] = camera.black;
        LDR.W    R1,??DataTable3_3
        LDR      R1,[R1, #+24]
        LDR.W    R2,??DataTable3_3
        ADDS     R2,R0,R2
        MOVW     R3,#+13392
        STRB     R1,[R3, R2]
//  697 			}
??CALC_Calc_114:
        ADDS     R0,R0,#+1
??CALC_Calc_112:
        CMP      R0,#+159
        BGE.N    ??CALC_Calc_103
        LDR.W    R1,??DataTable3_3
        ADDS     R1,R0,R1
        MOVW     R2,#+13232
        LDRB     R1,[R2, R1]
        LDR.W    R2,??DataTable3_3
        LDR      R2,[R2, #+24]
        CMP      R1,R2
        BNE.N    ??CALC_Calc_113
        LDR.W    R1,??DataTable3_3
        LDR      R1,[R1, #+20]
        LDR.W    R2,??DataTable3_3
        ADDS     R2,R0,R2
        MOVW     R3,#+13232
        STRB     R1,[R3, R2]
        LDR.W    R1,??DataTable3_3
        LDR      R1,[R1, #+20]
        LDR.W    R2,??DataTable3_3
        ADDS     R2,R0,R2
        MOVW     R3,#+13392
        STRB     R1,[R3, R2]
        B.N      ??CALC_Calc_114
//  698 		}
//  699 	}
//  700 
//  701 	/*---------------------------------------------------------------------------------------------------------*/
//  702 
//  703 	// 未识别到
//  704 	if (i == 30)
??CALC_Calc_103:
        CMP      R4,#+30
        BNE.N    ??CALC_Calc_115
//  705 	{
//  706 		calc.flag_out = 0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable3_4
        STR      R0,[R1, #+12]
//  707 
//  708 		led.Set(LED4, OFF); // 灯
        MOVS     R1,#+1
        MOVS     R0,#+8
        LDR.W    R2,??DataTable3_5
        LDR      R2,[R2, #+4]
        BLX      R2
//  709 
//  710 		for (int k = CNTMAX; k > 0; k--)
        MOVS     R0,#+20
        B.N      ??CALC_Calc_116
//  711 			state_out[k] = state_out[k - 1]; // 用作统计
??CALC_Calc_117:
        LDR.W    R1,??DataTable3_6
        ADDS     R1,R1,R0, LSL #+2
        LDR      R1,[R1, #-4]
        LDR.W    R2,??DataTable3_6
        STR      R1,[R2, R0, LSL #+2]
        SUBS     R0,R0,#+1
??CALC_Calc_116:
        CMP      R0,#+1
        BGE.N    ??CALC_Calc_117
//  712 		state_out[0] = calc.flag_out;
        LDR.W    R0,??DataTable3_4
        LDR      R0,[R0, #+12]
        LDR.W    R1,??DataTable3_6
        STR      R0,[R1, #+0]
//  713 
//  714 		if (USE_MYFILTER)
//  715 		{
//  716 			if (state_out[0] != state_out[2])
//  717 				calc.flag_out = state_out[1];
//  718 		}
//  719 		else
//  720 		{
//  721 			for (int k = 0; k < CNTMAX; k++)
        MOVS     R0,#+0
        B.N      ??CALC_Calc_118
//  722 				if (state_out[k])
??CALC_Calc_119:
        LDR.W    R1,??DataTable3_6
        LDR      R1,[R1, R0, LSL #+2]
        CMP      R1,#+0
        BEQ.N    ??CALC_Calc_120
//  723 					calc.cnt_out++;
        LDR.W    R1,??DataTable3_4
        LDR      R1,[R1, #+1068]
        ADDS     R1,R1,#+1
        LDR.W    R2,??DataTable3_4
        STR      R1,[R2, #+1068]
??CALC_Calc_120:
        ADDS     R0,R0,#+1
??CALC_Calc_118:
        CMP      R0,#+20
        BLT.N    ??CALC_Calc_119
//  724 			if (calc.cnt_out >= calc.cnt_effect)
        LDR.W    R0,??DataTable3_4
        LDR      R0,[R0, #+1068]
        LDR.W    R1,??DataTable3_4
        LDR      R1,[R1, #+8]
        CMP      R0,R1
        BLT.N    ??CALC_Calc_121
//  725 			{
//  726 				calc.flag_out = 1;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable3_4
        STR      R0,[R1, #+12]
//  727 				led.Set(LED4, ON);
        MOVS     R1,#+0
        MOVS     R0,#+8
        LDR.W    R2,??DataTable3_5
        LDR      R2,[R2, #+4]
        BLX      R2
        B.N      ??CALC_Calc_115
//  728 			}
//  729 			else
//  730 			{
//  731 				calc.flag_out = 0;
??CALC_Calc_121:
        MOVS     R0,#+0
        LDR.W    R1,??DataTable3_4
        STR      R0,[R1, #+12]
//  732 			}
//  733 		}
//  734 	}
//  735 }
??CALC_Calc_115:
??CALC_Calc_102:
        POP      {R0,R4-R7,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable0:
        DC32     twinCore

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
??curJumpR:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
??curJumpL:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
??cntJumpR:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
??cntJumpL:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
??posJumpR:
        DS8 40

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
??posJumpL:
        DS8 40
//  736 
//  737 //void CALC_Calc(void)
//  738 //{
//  739 //	int i, j;
//  740 //	static int cntJumpR = 0;
//  741 //	static int posJumpR[10] = {0};
//  742 //
//  743 //	curJumpR = 0;
//  744 //	cntJumpR = 0;
//  745 //
//  746 //	camera.img[119][0] = camera.white; // 用来防止摄像头伸出去
//  747 //
//  748 //	// 右边线第一个点
//  749 //	for (i = 0; i < 159; i++)
//  750 //		if (camera.img[119][i] == camera.white && camera.img[119][i + 1] == camera.black)
//  751 //		{
//  752 //			lineR[119] = i;
//  753 //			break;
//  754 //		}
//  755 //	if (i == 159)
//  756 //		lineR[119] = 159;
//  757 //
//  758 //	for (i = 118; i > 30; i--)
//  759 //	{
//  760 //		// 右边线下一个点
//  761 //		lineR[i] = 0;
//  762 //		for (j = 0; j < 40; j++) // 左扫
//  763 //		{
//  764 //			if (camera.img[i][limitX(lineR[i + 1] - j)] == camera.white && camera.img[i][limitX(lineR[i + 1] - j + 1)] == camera.black)
//  765 //			{
//  766 //				lineR[i] = limitX(lineR[i + 1] - j);
//  767 //				break;
//  768 //			}
//  769 //
//  770 //			if (lineR[i + 1] - j < 0) // 防止摄像头伸出去
//  771 //			{
//  772 //				i = 30;
//  773 //				break;
//  774 //			}
//  775 //		}
//  776 //		if (!lineR[i]) // 左扫不到，右扫
//  777 //		{
//  778 //			for (j = 0; j < 40; j++)
//  779 //			{
//  780 //				if (camera.img[i][limitX(lineR[i + 1] + j)] == camera.white && camera.img[i][limitX(lineR[i + 1] + j + 1)] == camera.black)
//  781 //				{
//  782 //					lineR[i] = limitX(lineR[i + 1] + j);
//  783 //					break;
//  784 //				}
//  785 //			}
//  786 //			if (j == 40)
//  787 //				lineR[i] = limitX(lineR[i + 1] + j);
//  788 //		}
//  789 //
//  790 //		// 异常退出寻线
//  791 //		if ((lineR[i] == 158 && i < 80) || (i < 117 && lineR[i] - lineR[i + 1] > 10 && lineR[i + 1] - lineR[i + 2] > 10))
//  792 //		{
//  793 //			i = 30;
//  794 //			lineR[i] = 0;
//  795 //			break;
//  796 //		}
//  797 //
//  798 //		// 调试用，将边界线画为虚线
//  799 //		if (twinCore.data[1] == 1100 || twinCore.data[1] == 1101)
//  800 //		{
//  801 //			camera.img[i][lineR[i]] = camera.white;
//  802 //			camera.img[i][lineR[i] - 1] = camera.black;
//  803 //		}
//  804 //
//  805 //		/*---------------------------------------------------------------------------------------------------------*/
//  806 //
//  807 //		// 找跳变点
//  808 //		if (i < 117)
//  809 //		{
//  810 //			// 左跳右
//  811 //			if (i < 100 && lineR[i] <= lineR[i + 1] && lineR[i + 1] > lineR[i + 2] && (curJumpR == 2 || !curJumpR))
//  812 //			{
//  813 //				// 倾斜情况
//  814 //				for (j = i; j < i + 20; j++)
//  815 //				{
//  816 //					if (lineR[j] > lineR[j + 1] && lineR[j + 1] <= lineR[j + 2] && abs(lineR[i] - lineR[j]) > 5)
//  817 //					{
//  818 //						if (!curJumpR)
//  819 //						{
//  820 //							if (i < 60)
//  821 //							{
//  822 //								i = 31;
//  823 //								lineR[i] = 0;
//  824 //								break;
//  825 //							}
//  826 //
//  827 //							curJumpR = 1;
//  828 //							cntJumpR++;
//  829 //							posJumpR[cntJumpR] = i;
//  830 //						}
//  831 //						else if (abs(i - posJumpR[cntJumpR]) > 10)
//  832 //						{
//  833 //							curJumpR = 1;
//  834 //							cntJumpR++;
//  835 //							posJumpR[cntJumpR] = i;
//  836 //						}
//  837 //					}
//  838 //				}
//  839 //			}
//  840 //			else if (lineR[i] - lineR[i + 1] > lineR[i + 2] - lineR[i + 1] + 3 && lineR[i] > lineR[i + 1] && (curJumpR == 2 || !curJumpR))
//  841 //			{
//  842 //				// 正常情况
//  843 //				if (!curJumpR)
//  844 //				{
//  845 //					if (i < 60)
//  846 //					{
//  847 //						i = 30;
//  848 //						lineR[i] = 0;
//  849 //						break;
//  850 //					}
//  851 //
//  852 //					curJumpR = 1;
//  853 //					cntJumpR++;
//  854 //					posJumpR[cntJumpR] = i;
//  855 //				}
//  856 //				else if (abs(i - posJumpR[cntJumpR]) > 10)
//  857 //				{
//  858 //					curJumpR = 1;
//  859 //					cntJumpR++;
//  860 //					posJumpR[cntJumpR] = i;
//  861 //				}
//  862 //			}
//  863 //
//  864 //			// 右跳左
//  865 //			if (lineR[i + 1] - lineR[i] > lineR[i + 2] - lineR[i + 1] + 3 && lineR[i + 1] > lineR[i] && (curJumpR == 1 || !curJumpR))
//  866 //			{
//  867 //				// 只考虑正常情况
//  868 //				if (!curJumpR)
//  869 //				{
//  870 //					if (i < 60)
//  871 //					{
//  872 //						i = 30;
//  873 //						lineR[i] = 0;
//  874 //						break;
//  875 //					}
//  876 //
//  877 //					curJumpR = 2;
//  878 //					cntJumpR++;
//  879 //					posJumpR[cntJumpR] = i;
//  880 //				}
//  881 //				else if (abs(i - posJumpR[cntJumpR]) > 10)
//  882 //				{
//  883 //					curJumpR = 2;
//  884 //					cntJumpR++;
//  885 //					posJumpR[cntJumpR] = i;
//  886 //				}
//  887 //			}
//  888 //		}
//  889 //
//  890 //		/*---------------------------------------------------------------------------------------------------------*/
//  891 //
//  892 //		// 达到识别条件
//  893 //		if (cntJumpR >= 3 &&
//  894 //			abs(abs(lineR[posJumpR[cntJumpR]] - lineR[posJumpR[cntJumpR - 1]]) -
//  895 //			abs(lineR[posJumpR[cntJumpR - 1]] - lineR[posJumpR[cntJumpR - 2]])) < 30 &&
//  896 //			abs(lineR[posJumpR[cntJumpR]] - lineR[posJumpR[cntJumpR - 1]]) <
//  897 //			abs(lineR[posJumpR[cntJumpR - 1]] - lineR[posJumpR[cntJumpR - 2]]))
//  898 //		{
//  899 //			// 调试用，画出调变点的位置
//  900 //			if (twinCore.data[1] == 1100 || twinCore.data[1] == 1101)
//  901 //			{
//  902 //				for (int k = 1; k <= cntJumpR; k++)
//  903 //					for (int l = 0; l < 159; l++)
//  904 //					{
//  905 //						camera.img[posJumpR[k]][l] = 0;
//  906 //						camera.img[posJumpR[k] + 1][l] = 0;
//  907 //					}
//  908 //			}
//  909 //
//  910 //			calc.flag_out = 1;
//  911 //
//  912 //			state_out[2] = state_out[1];
//  913 //			state_out[1] = state_out[0];
//  914 //			state_out[0] = calc.flag_out;
//  915 //
//  916 //			if (state_out[0] != state_out[2])
//  917 //				calc.flag_out = state_out[1]; // 14-04-14 by gf 炒鸡神奇的滤波
//  918 //
//  919 ////			static float a, b;
//  920 ////			static int reffer;
//  921 ////
//  922 ////			calc_LinearRegression(lineR, posJumpR[cntJumpR], 119 - posJumpR[cntJumpR], &a, &b);
//  923 ////			reffer = (int)b;
//  924 //
//  925 //			return;
//  926 //		}
//  927 //	}
//  928 //
//  929 //	// 调试用，画出调变点的位置
//  930 //	if (twinCore.data[1] == 1100 || twinCore.data[1] == 1101)
//  931 //	{
//  932 //		for (int k = 1; k <= cntJumpR; k++)
//  933 //			for (int l = 0; l < 159; l++)
//  934 //			{
//  935 //				camera.img[posJumpR[k]][l] = 0;
//  936 //				camera.img[posJumpR[k] + 1][l] = 0;
//  937 //			}
//  938 //	}
//  939 //
//  940 //	/*---------------------------------------------------------------------------------------------------------*/
//  941 //
//  942 //	// 未识别到
//  943 //	if (i == 30)
//  944 //	{
//  945 //		calc.flag_out = 0;
//  946 //		state_out[2] = state_out[1];
//  947 //		state_out[1] = state_out[0];
//  948 //		state_out[0] = calc.flag_out;
//  949 //
//  950 //		if (state_out[0] != state_out[2])
//  951 //			calc.flag_out = state_out[1];
//  952 //	}
//  953 //}
//  954 
//  955 /*
//  956 	z
//  957 	↑  y
//  958 	|↗
//  959 	+---→ x
//  960 	玩
//  961 */
//  962 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//  963 int z_buf[128][64];
z_buf:
        DS8 32768

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC32 0, 0, 0
//  964 

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
//  965 const unsigned char bit[] = {0x01, 0x02, 0x04, 0x08, 0x10, 0x20, 0x40, 0x80};
bit:
        DC8 1, 2, 4, 8, 16, 32, 64, 128

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
//  966 const unsigned char aBit[] = {0x80, 0x40, 0x20, 0x10, 0x08, 0x04, 0x02, 0x01};
aBit:
        DC8 128, 64, 32, 16, 8, 4, 2, 1
//  967 #define CALC_WIDTH	128
//  968 #define CALC_HEIGHT	64
//  969 
//  970 #define CALC_AXISX	0
//  971 #define CALC_AXISY	1
//  972 #define CALC_AXISZ	2
//  973 
//  974 #define CALC_CAMDIS	128

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  975 static point CALC_3to2(points pt)
//  976 {
CALC_3to2:
        PUSH     {R4-R6}
//  977 	point result;
//  978 
//  979 	pt.y += CALC_CAMDIS;
        ADDS     R6,R2,#+128
        MOVS     R2,R6
//  980 
//  981 	result.x = CALC_WIDTH / 2 * pt.x / pt.y;
        MOVS     R6,#+64
        MUL      R6,R6,R1
        SDIV     R6,R6,R2
        MOVS     R4,R6
//  982 	result.y = CALC_WIDTH / 2 * pt.z / pt.y;
        MOVS     R6,#+64
        MUL      R6,R6,R3
        SDIV     R1,R6,R2
        MOVS     R5,R1
//  983 
//  984 	result.x += CALC_WIDTH / 2;
        MOVS     R1,R4
        ADDS     R1,R1,#+64
        MOVS     R4,R1
//  985 	result.y += CALC_HEIGHT / 2;
        MOVS     R1,R5
        ADDS     R1,R1,#+32
        MOVS     R5,R1
//  986 
//  987 	return result;
        STRD     R4,R5,[R0, #+0]
        POP      {R4-R6}
        BX       LR               ;; return
//  988 }
//  989 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  990 static void CALC_SetPix(point pt, char data)
//  991 {
CALC_SetPix:
        PUSH     {R4,R5}
//  992 	if (data)
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+0
        BEQ.N    ??CALC_SetPix_0
//  993 		calc.myScene[pt.x][pt.y / 8] |= bit[pt.y % 8];
        MOVS     R2,#+8
        SDIV     R2,R1,R2
        LDR.W    R3,??DataTable3_4
        ADDS     R3,R3,R0, LSL #+3
        ADDS     R2,R2,R3
        MOVS     R3,#+8
        SDIV     R3,R1,R3
        LDR.W    R4,??DataTable3_4
        ADDS     R4,R4,R0, LSL #+3
        ADDS     R3,R3,R4
        LDRB     R3,[R3, #+24]
        LDR.W    R4,??DataTable3_7
        MOVS     R0,#+8
        SDIV     R5,R1,R0
        MLS      R5,R5,R0,R1
        LDRB     R0,[R5, R4]
        ORRS     R0,R0,R3
        STRB     R0,[R2, #+24]
        B.N      ??CALC_SetPix_1
//  994 	else
//  995 		calc.myScene[pt.x][pt.y / 8] &= ~bit[pt.y % 8];
??CALC_SetPix_0:
        MOVS     R2,#+8
        SDIV     R2,R1,R2
        LDR.W    R3,??DataTable3_4
        ADDS     R3,R3,R0, LSL #+3
        ADDS     R2,R2,R3
        MOVS     R3,#+8
        SDIV     R3,R1,R3
        LDR.W    R4,??DataTable3_4
        ADDS     R4,R4,R0, LSL #+3
        ADDS     R3,R3,R4
        LDRB     R3,[R3, #+24]
        LDR.W    R4,??DataTable3_7
        MOVS     R0,#+8
        SDIV     R5,R1,R0
        MLS      R5,R5,R0,R1
        LDRB     R0,[R5, R4]
        BICS     R0,R3,R0
        STRB     R0,[R2, #+24]
//  996 }
??CALC_SetPix_1:
        POP      {R4,R5}
        BX       LR               ;; return
//  997 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  998 static void CALC_DrawLine(point pt1, point pt2, char usColor)
//  999 {
CALC_DrawLine:
        PUSH     {R4-R11,LR}
        SUB      SP,SP,#+12
// 1000 	int us;
// 1001 	int usX_Current, usY_Current;
// 1002 
// 1003 	int32_t lError_X = 0, lError_Y = 0, lDelta_X, lDelta_Y, lDistance;
        MOVS     R4,#+0
        MOVS     R5,#+0
// 1004 	int32_t lIncrease_X, lIncrease_Y;
// 1005 
// 1006 	lDelta_X = pt2.x - pt1.x;
        SUBS     R6,R2,R0
        STR      R6,[SP, #+0]
// 1007 	lDelta_Y = pt2.y - pt1.y;
        SUBS     R11,R3,R1
// 1008 
// 1009 	usX_Current = pt1.x;
        MOVS     R6,R0
// 1010 	usY_Current = pt1.y;
        MOVS     R7,R1
// 1011 
// 1012 	if (lDelta_X > 0)
        LDR      R0,[SP, #+0]
        CMP      R0,#+1
        BLT.N    ??CALC_DrawLine_0
// 1013 		lIncrease_X = 1;
        MOVS     R10,#+1
        B.N      ??CALC_DrawLine_1
// 1014 
// 1015 	else if (lDelta_X == 0)
??CALC_DrawLine_0:
        LDR      R0,[SP, #+0]
        CMP      R0,#+0
        BNE.N    ??CALC_DrawLine_2
// 1016 		lIncrease_X = 0;
        MOVS     R10,#+0
        B.N      ??CALC_DrawLine_1
// 1017 	else
// 1018 	{
// 1019 		lIncrease_X = -1;
??CALC_DrawLine_2:
        MOVS     R10,#-1
// 1020 		lDelta_X = -lDelta_X;
        LDR      R0,[SP, #+0]
        RSBS     R0,R0,#+0
        STR      R0,[SP, #+0]
// 1021 	}
// 1022 
// 1023 	if (lDelta_Y > 0)
??CALC_DrawLine_1:
        CMP      R11,#+1
        BLT.N    ??CALC_DrawLine_3
// 1024 		lIncrease_Y = 1;
        MOVS     R8,#+1
        B.N      ??CALC_DrawLine_4
// 1025 	else if (lDelta_Y == 0)
??CALC_DrawLine_3:
        CMP      R11,#+0
        BNE.N    ??CALC_DrawLine_5
// 1026 		lIncrease_Y = 0;
        MOVS     R8,#+0
        B.N      ??CALC_DrawLine_4
// 1027 	else
// 1028 	{
// 1029 		lIncrease_Y = -1;
??CALC_DrawLine_5:
        MOVS     R8,#-1
// 1030 		lDelta_Y = -lDelta_Y;
        RSBS     R11,R11,#+0
// 1031 	}
// 1032 
// 1033 	if (lDelta_X > lDelta_Y)
??CALC_DrawLine_4:
        LDR      R0,[SP, #+0]
        CMP      R11,R0
        BGE.N    ??CALC_DrawLine_6
// 1034 		lDistance = lDelta_X;
        LDR      R0,[SP, #+0]
        STR      R0,[SP, #+4]
        B.N      ??CALC_DrawLine_7
// 1035 	else
// 1036 		lDistance = lDelta_Y;
??CALC_DrawLine_6:
        STR      R11,[SP, #+4]
// 1037 
// 1038 	for (us = 0; us <= lDistance + 1; us++)
??CALC_DrawLine_7:
        MOVS     R9,#+0
        B.N      ??CALC_DrawLine_8
// 1039 	{
// 1040 		if (usX_Current < CALC_WIDTH && usX_Current >= 0 && usY_Current < CALC_HEIGHT && usY_Current >= 0)
??CALC_DrawLine_9:
        SUBS     R0,R6,#+0
        CMP      R0,#+128
        BCS.N    ??CALC_DrawLine_10
        SUBS     R0,R7,#+0
        CMP      R0,#+64
        BCS.N    ??CALC_DrawLine_10
// 1041 		{
// 1042 			point pt = {usX_Current, usY_Current};
        MOVS     R0,R6
        MOVS     R1,R7
// 1043 			CALC_SetPix(pt, usColor);
        LDRB     R2,[SP, #+48]
        BL       CALC_SetPix
// 1044 		}
// 1045 
// 1046 		lError_X += lDelta_X;
??CALC_DrawLine_10:
        LDR      R0,[SP, #+0]
        ADDS     R4,R0,R4
// 1047 		lError_Y += lDelta_Y;
        ADDS     R5,R11,R5
// 1048 
// 1049 		if (lError_X > lDistance)
        LDR      R0,[SP, #+4]
        CMP      R0,R4
        BGE.N    ??CALC_DrawLine_11
// 1050 		{
// 1051 			lError_X -= lDistance;
        LDR      R0,[SP, #+4]
        SUBS     R4,R4,R0
// 1052 			usX_Current += lIncrease_X;
        ADDS     R6,R10,R6
// 1053 		}
// 1054 
// 1055 		if (lError_Y > lDistance)
??CALC_DrawLine_11:
        LDR      R0,[SP, #+4]
        CMP      R0,R5
        BGE.N    ??CALC_DrawLine_12
// 1056 		{
// 1057 			lError_Y -= lDistance;
        LDR      R0,[SP, #+4]
        SUBS     R5,R5,R0
// 1058 			usY_Current += lIncrease_Y;
        ADDS     R7,R8,R7
// 1059 		}
// 1060 	}
??CALC_DrawLine_12:
        ADDS     R9,R9,#+1
??CALC_DrawLine_8:
        LDR      R0,[SP, #+4]
        ADDS     R0,R0,#+1
        CMP      R0,R9
        BGE.N    ??CALC_DrawLine_9
// 1061 }
        POP      {R0-R2,R4-R11,PC}  ;; return
// 1062 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1063 static void CALC_3dSetPix(points pt, char data)
// 1064 {
CALC_3dSetPix:
        PUSH     {R2-R4,LR}
        MOVS     R4,R3
// 1065 	point pt2d;
// 1066 
// 1067 	pt2d = CALC_3to2(pt);
        MOVS     R3,R2
        MOVS     R2,R1
        MOVS     R1,R0
        MOV      R0,SP
        BL       CALC_3to2
// 1068 
// 1069 	if (pt2d.x >= CALC_WIDTH || pt2d.x < 0 || pt2d.y >= CALC_HEIGHT || pt2d.y < 0) return;
        LDR      R0,[SP, #+0]
        SUBS     R0,R0,#+0
        CMP      R0,#+128
        BCS.N    ??CALC_3dSetPix_0
        LDR      R0,[SP, #+4]
        SUBS     R0,R0,#+0
        CMP      R0,#+64
        BCC.N    ??CALC_3dSetPix_1
??CALC_3dSetPix_0:
        B.N      ??CALC_3dSetPix_2
// 1070 
// 1071 	CALC_SetPix(pt2d, data);
??CALC_3dSetPix_1:
        MOVS     R2,R4
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        LDRD     R0,R1,[SP, #+0]
        BL       CALC_SetPix
// 1072 }
??CALC_3dSetPix_2:
        POP      {R0,R1,R4,PC}    ;; return
// 1073 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1074 static void CALC_3dDrawLine(points pt1, points pt2, char usColor)
// 1075 {
CALC_3dDrawLine:
        PUSH     {R3}
        PUSH     {LR}
        SUB      SP,SP,#+24
// 1076 	point pt2d1, pt2d2;
// 1077 
// 1078 	pt2d1 = CALC_3to2(pt1);
        MOVS     R3,R2
        MOVS     R2,R1
        MOVS     R1,R0
        ADD      R0,SP,#+12
        BL       CALC_3to2
// 1079 	pt2d2 = CALC_3to2(pt2);
        ADD      R0,SP,#+28
        LDM      R0,{R1-R3}
        ADD      R0,SP,#+4
        BL       CALC_3to2
// 1080 
// 1081 	CALC_DrawLine(pt2d1, pt2d2, usColor);
        LDR      R0,[SP, #+40]
        STR      R0,[SP, #+0]
        LDRD     R2,R3,[SP, #+4]
        LDRD     R0,R1,[SP, #+12]
        BL       CALC_DrawLine
// 1082 }
        ADD      SP,SP,#+24
        LDR      PC,[SP], #+8     ;; return
// 1083 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1084 static void CALC_3dConnect(points *lineR, int num, int color, int isCircle)
// 1085 {
CALC_3dConnect:
        PUSH     {R4-R8,LR}
        SUB      SP,SP,#+16
        MOVS     R6,R0
        MOVS     R5,R1
        MOV      R8,R2
        MOVS     R7,R3
// 1086 	int i;
// 1087 
// 1088 	for (i = 0; i < num - 1; i++)
        MOVS     R4,#+0
        B.N      ??CALC_3dConnect_0
// 1089 		CALC_3dDrawLine(lineR[i], lineR[i + 1], color);
??CALC_3dConnect_1:
        MOV      R0,R8
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        STR      R0,[SP, #+8]
        MOVS     R0,#+12
        MLA      R0,R0,R4,R6
        ADDS     R0,R0,#+12
        SUB      SP,SP,#+4
        MOV      R1,SP
        LDM      R0!,{R2,R3}
        STM      R1!,{R2,R3}
        LDR      R2,[R0, #0]
        STR      R2,[R1, #+0]
        SUBS     R0,R0,#+8
        SUBS     R1,R1,#+8
        POP      {R3}
        MOVS     R0,#+12
        MLA      R0,R0,R4,R6
        LDM      R0,{R0-R2}
        BL       CALC_3dDrawLine
        ADDS     R4,R4,#+1
??CALC_3dConnect_0:
        SUBS     R0,R5,#+1
        CMP      R4,R0
        BLT.N    ??CALC_3dConnect_1
// 1090 
// 1091 	if (isCircle)
        CMP      R7,#+0
        BEQ.N    ??CALC_3dConnect_2
// 1092 		CALC_3dDrawLine(lineR[0], lineR[num - 1], color);
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        STR      R8,[SP, #+8]
        MOVS     R0,#+12
        MLA      R0,R0,R5,R6
        SUBS     R0,R0,#+12
        SUB      SP,SP,#+4
        MOV      R1,SP
        LDM      R0!,{R2,R3}
        STM      R1!,{R2,R3}
        LDR      R2,[R0, #0]
        STR      R2,[R1, #+0]
        SUBS     R0,R0,#+8
        SUBS     R1,R1,#+8
        POP      {R3}
        LDM      R6,{R0-R2}
        BL       CALC_3dDrawLine
// 1093 }
??CALC_3dConnect_2:
        POP      {R0-R8,PC}       ;; return
// 1094 

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
// 1095 const unsigned char charCH[][32] =
charCH:
        DC8 4, 116, 84, 85, 86, 84, 116, 4, 0, 254, 2, 34, 218, 6, 0, 0, 16, 17
        DC8 81, 145, 125, 11, 9, 8, 0, 255, 8, 16, 8, 7, 0, 0, 0, 248, 8, 255
        DC8 8, 248, 0, 254, 66, 130, 2, 254, 0, 0, 0, 0, 0, 15, 0, 255, 8, 143
        DC8 96, 31, 0, 1, 0, 63, 64, 64, 120, 0
// 1096 {
// 1097 	{0x04,0x74,0x54,0x55,0x56,0x54,0x74,0x04,0x00,0xFE,0x02,0x22,0xDA,0x06,0x00,0x00,
// 1098 	0x10,0x11,0x51,0x91,0x7D,0x0B,0x09,0x08,0x00,0xFF,0x08,0x10,0x08,0x07,0x00,0x00},
// 1099 	{0x00,0xF8,0x08,0xFF,0x08,0xF8,0x00,0xFE,0x42,0x82,0x02,0xFE,0x00,0x00,0x00,0x00,
// 1100 	0x00,0x0F,0x00,0xFF,0x08,0x8F,0x60,0x1F,0x00,0x01,0x00,0x3F,0x40,0x40,0x78,0x00}
// 1101 };
// 1102 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1103 static char CALC_GetCHPix(int num, int x, int y)
// 1104 {
CALC_GetCHPix:
        PUSH     {R4}
// 1105 	return charCH[num][x + (y / 8) * 16] & bit[y % 8];
        MOVS     R3,#+8
        SDIV     R3,R2,R3
        ADDS     R1,R1,R3, LSL #+4
        LDR.W    R3,??DataTable3_8
        ADDS     R0,R3,R0, LSL #+5
        LDRB     R0,[R1, R0]
        LDR.W    R1,??DataTable3_7
        MOVS     R3,#+8
        SDIV     R4,R2,R3
        MLS      R4,R4,R3,R2
        LDRB     R1,[R4, R1]
        ANDS     R0,R1,R0
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R4}
        BX       LR               ;; return
// 1106 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2:
        DC32     ??posJumpR

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_1:
        DC32     ??posJumpL

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_2:
        DC32     ??curJumpL

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_3:
        DC32     ??cntJumpL
// 1107 
// 1108 #define CALC_CUBEX	64
// 1109 #define CALC_CUBEYA	-16
// 1110 #define CALC_CUBEYB	128
// 1111 #define CALC_CUBEZ	32

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
// 1112 static const points cube[8] =
cube:
        DC32 -64, -16, -32, 64, -16, -32, 64, -16, 32, -64, -16, 32, -64, 128
        DC32 -32, 64, 128, -32, 64, 128, 32, -64, 128, 32
// 1113 {
// 1114 	{-CALC_CUBEX, CALC_CUBEYA, -CALC_CUBEZ}, {CALC_CUBEX, CALC_CUBEYA, -CALC_CUBEZ},
// 1115 	{CALC_CUBEX, CALC_CUBEYA, CALC_CUBEZ}, {-CALC_CUBEX, CALC_CUBEYA, CALC_CUBEZ},
// 1116 	{-CALC_CUBEX, CALC_CUBEYB,  -CALC_CUBEZ}, {CALC_CUBEX, CALC_CUBEYB,  -CALC_CUBEZ},
// 1117 	{CALC_CUBEX, CALC_CUBEYB,  CALC_CUBEZ}, {-CALC_CUBEX, CALC_CUBEYB,  CALC_CUBEZ}
// 1118 };
// 1119 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1120 static points CALC_PtRotate(points pt, int axis, float ang, points origin)
// 1121 {
CALC_PtRotate:
        PUSH     {R1-R9,LR}
        SUB      SP,SP,#+16
        MOVS     R7,R0
        LDR      R6,[SP, #+60]
// 1122 	points result;
// 1123 
// 1124 	switch (axis)
        LDR      R0,[SP, #+56]
        CMP      R0,#+0
        BEQ.W    ??CALC_PtRotate_0
        CMP      R0,#+2
        BEQ.N    ??CALC_PtRotate_1
        BCC.N    ??CALC_PtRotate_2
        B.N      ??CALC_PtRotate_3
// 1125 	{
// 1126 	case CALC_AXISZ:
// 1127 		result.x = (int)((pt.x - origin.x) * cos(ang) - (pt.y - origin.y) * sin(ang) + origin.x);
??CALC_PtRotate_1:
        MOVS     R0,R6
        BL       __aeabi_f2d
        BL       cos
        MOVS     R4,R0
        MOVS     R5,R1
        LDR      R0,[SP, #+16]
        LDR      R1,[SP, #+64]
        SUBS     R0,R0,R1
        BL       __aeabi_i2d
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dmul
        MOV      R8,R0
        MOV      R9,R1
        LDR      R0,[SP, #+20]
        LDR      R1,[SP, #+68]
        SUBS     R0,R0,R1
        BL       __aeabi_i2d
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R0,R6
        BL       __aeabi_f2d
        BL       sin
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dmul
        MOVS     R2,R0
        MOVS     R3,R1
        MOV      R0,R8
        MOV      R1,R9
        BL       __aeabi_dsub
        MOVS     R4,R0
        MOVS     R5,R1
        LDR      R0,[SP, #+64]
        BL       __aeabi_i2d
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dadd
        BL       __aeabi_d2iz
        STR      R0,[SP, #+0]
// 1128 		result.y = (int)((pt.y - origin.y) * cos(ang) + (pt.x - origin.x) * sin(ang) + origin.y);
        MOVS     R0,R6
        BL       __aeabi_f2d
        BL       cos
        MOVS     R4,R0
        MOVS     R5,R1
        LDR      R0,[SP, #+20]
        LDR      R1,[SP, #+68]
        SUBS     R0,R0,R1
        BL       __aeabi_i2d
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dmul
        MOV      R8,R0
        MOV      R9,R1
        LDR      R0,[SP, #+16]
        LDR      R1,[SP, #+64]
        SUBS     R0,R0,R1
        BL       __aeabi_i2d
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R0,R6
        BL       __aeabi_f2d
        BL       sin
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dmul
        MOV      R2,R8
        MOV      R3,R9
        BL       __aeabi_dadd
        MOVS     R4,R0
        MOVS     R5,R1
        LDR      R0,[SP, #+68]
        BL       __aeabi_i2d
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dadd
        BL       __aeabi_d2iz
        STR      R0,[SP, #+4]
// 1129 		result.z = pt.z;
        LDR      R0,[SP, #+24]
        STR      R0,[SP, #+8]
// 1130 		break;
        B.N      ??CALC_PtRotate_3
// 1131 	case CALC_AXISY:
// 1132 		result.x = (int)((pt.x - origin.x) * cos(ang) - (pt.z - origin.z) * sin(ang) + origin.x);
??CALC_PtRotate_2:
        MOVS     R0,R6
        BL       __aeabi_f2d
        BL       cos
        MOVS     R4,R0
        MOVS     R5,R1
        LDR      R0,[SP, #+16]
        LDR      R1,[SP, #+64]
        SUBS     R0,R0,R1
        BL       __aeabi_i2d
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dmul
        MOV      R8,R0
        MOV      R9,R1
        LDR      R0,[SP, #+24]
        LDR      R1,[SP, #+72]
        SUBS     R0,R0,R1
        BL       __aeabi_i2d
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R0,R6
        BL       __aeabi_f2d
        BL       sin
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dmul
        MOVS     R2,R0
        MOVS     R3,R1
        MOV      R0,R8
        MOV      R1,R9
        BL       __aeabi_dsub
        MOVS     R4,R0
        MOVS     R5,R1
        LDR      R0,[SP, #+64]
        BL       __aeabi_i2d
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dadd
        BL       __aeabi_d2iz
        STR      R0,[SP, #+0]
// 1133 		result.z = (int)((pt.z - origin.z) * cos(ang) + (pt.x - origin.x) * sin(ang) + origin.z);
        MOVS     R0,R6
        BL       __aeabi_f2d
        BL       cos
        MOVS     R4,R0
        MOVS     R5,R1
        LDR      R0,[SP, #+24]
        LDR      R1,[SP, #+72]
        SUBS     R0,R0,R1
        BL       __aeabi_i2d
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dmul
        MOV      R8,R0
        MOV      R9,R1
        LDR      R0,[SP, #+16]
        LDR      R1,[SP, #+64]
        SUBS     R0,R0,R1
        BL       __aeabi_i2d
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R0,R6
        BL       __aeabi_f2d
        BL       sin
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dmul
        MOV      R2,R8
        MOV      R3,R9
        BL       __aeabi_dadd
        MOVS     R4,R0
        MOVS     R5,R1
        LDR      R0,[SP, #+72]
        BL       __aeabi_i2d
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dadd
        BL       __aeabi_d2iz
        STR      R0,[SP, #+8]
// 1134 		result.y = pt.y;
        LDR      R0,[SP, #+20]
        STR      R0,[SP, #+4]
// 1135 		break;
        B.N      ??CALC_PtRotate_3
// 1136 	case CALC_AXISX:
// 1137 		result.y = (int)((pt.y - origin.y) * cos(ang) - (pt.z - origin.z) * sin(ang) + origin.y);
??CALC_PtRotate_0:
        MOVS     R0,R6
        BL       __aeabi_f2d
        BL       cos
        MOVS     R4,R0
        MOVS     R5,R1
        LDR      R0,[SP, #+20]
        LDR      R1,[SP, #+68]
        SUBS     R0,R0,R1
        BL       __aeabi_i2d
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dmul
        MOV      R8,R0
        MOV      R9,R1
        LDR      R0,[SP, #+24]
        LDR      R1,[SP, #+72]
        SUBS     R0,R0,R1
        BL       __aeabi_i2d
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R0,R6
        BL       __aeabi_f2d
        BL       sin
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dmul
        MOVS     R2,R0
        MOVS     R3,R1
        MOV      R0,R8
        MOV      R1,R9
        BL       __aeabi_dsub
        MOVS     R4,R0
        MOVS     R5,R1
        LDR      R0,[SP, #+68]
        BL       __aeabi_i2d
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dadd
        BL       __aeabi_d2iz
        STR      R0,[SP, #+4]
// 1138 		result.z = (int)((pt.z - origin.z) * cos(ang) + (pt.y - origin.y) * sin(ang) + origin.z);
        MOVS     R0,R6
        BL       __aeabi_f2d
        BL       cos
        MOVS     R4,R0
        MOVS     R5,R1
        LDR      R0,[SP, #+24]
        LDR      R1,[SP, #+72]
        SUBS     R0,R0,R1
        BL       __aeabi_i2d
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dmul
        MOV      R8,R0
        MOV      R9,R1
        LDR      R0,[SP, #+20]
        LDR      R1,[SP, #+68]
        SUBS     R0,R0,R1
        BL       __aeabi_i2d
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R0,R6
        BL       __aeabi_f2d
        BL       sin
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dmul
        MOV      R2,R8
        MOV      R3,R9
        BL       __aeabi_dadd
        MOVS     R4,R0
        MOVS     R5,R1
        LDR      R0,[SP, #+72]
        BL       __aeabi_i2d
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dadd
        BL       __aeabi_d2iz
        STR      R0,[SP, #+8]
// 1139 		result.x = pt.x;
        LDR      R0,[SP, #+16]
        STR      R0,[SP, #+0]
// 1140 		break;
// 1141 	}
// 1142 
// 1143 	return result;
??CALC_PtRotate_3:
        MOV      R0,SP
        LDM      R0!,{R1-R3}
        STM      R7!,{R1-R3}
        SUBS     R0,R0,#+12
        SUBS     R7,R7,#+12
        ADD      SP,SP,#+28
        POP      {R4-R9,PC}       ;; return
// 1144 }
// 1145 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1146 void CALC_My3d(void)
// 1147 {
CALC_My3d:
        PUSH     {R4-R6,LR}
        SUB      SP,SP,#+144
// 1148 	int i, j;
// 1149 
// 1150 	for (i = 0; i < 128; i++)
        MOVS     R4,#+0
        B.N      ??CALC_My3d_0
// 1151 		for (j = 0; j < 8; j++)
// 1152 			calc.myScene[i][j] = 0;
??CALC_My3d_1:
        LDR.N    R0,??DataTable3_4
        ADDS     R0,R0,R4, LSL #+3
        ADDS     R0,R5,R0
        MOVS     R1,#+0
        STRB     R1,[R0, #+24]
        ADDS     R5,R5,#+1
??CALC_My3d_2:
        CMP      R5,#+8
        BLT.N    ??CALC_My3d_1
        ADDS     R4,R4,#+1
??CALC_My3d_0:
        CMP      R4,#+128
        BGE.N    ??CALC_My3d_3
        MOVS     R5,#+0
        B.N      ??CALC_My3d_2
// 1153 
// 1154 	for (i = 0; i < 128; i++)
??CALC_My3d_3:
        MOVS     R4,#+0
        B.N      ??CALC_My3d_4
// 1155 		for (j = 0; j < 64; j++)
// 1156 			z_buf[i][j] = 0;
??CALC_My3d_5:
        LDR.N    R0,??DataTable3_9
        MOV      R1,#+256
        MLA      R0,R1,R4,R0
        MOVS     R1,#+0
        STR      R1,[R0, R5, LSL #+2]
        ADDS     R5,R5,#+1
??CALC_My3d_6:
        CMP      R5,#+64
        BLT.N    ??CALC_My3d_5
        ADDS     R4,R4,#+1
??CALC_My3d_4:
        CMP      R4,#+128
        BGE.N    ??CALC_My3d_7
        MOVS     R5,#+0
        B.N      ??CALC_My3d_6
// 1157 
// 1158 	points rotateCube[8];
// 1159 	points origin = {0, 0, 0};
??CALC_My3d_7:
        ADD      R0,SP,#+32
        MOVS     R1,#+0
        MOVS     R2,#+0
        MOVS     R3,#+0
        STM      R0!,{R1-R3}
        SUBS     R0,R0,#+12
// 1160 	for (i = 0; i < 8; i++)
        MOVS     R4,#+0
        B.N      ??CALC_My3d_8
// 1161 		rotateCube[i] = cube[i];
??CALC_My3d_9:
        ADD      R0,SP,#+44
        MOVS     R1,#+12
        MLA      R0,R1,R4,R0
        LDR.N    R1,??DataTable3_10
        MOVS     R2,#+12
        MLA      R1,R2,R4,R1
        LDM      R1!,{R2,R3,R5}
        STM      R0!,{R2,R3,R5}
        SUBS     R1,R1,#+12
        SUBS     R0,R0,#+12
        ADDS     R4,R4,#+1
??CALC_My3d_8:
        CMP      R4,#+8
        BLT.N    ??CALC_My3d_9
// 1162 
// 1163 	for (i = 0; i < 8; i++)
        MOVS     R4,#+0
        B.N      ??CALC_My3d_10
// 1164 	{
// 1165 		rotateCube[i] = CALC_PtRotate(rotateCube[i], CALC_AXISX, (calc.angY / 13000.0), origin);
??CALC_My3d_11:
        ADD      R0,SP,#+32
        ADD      R2,SP,#+8
        LDM      R0!,{R1,R3}
        STM      R2!,{R1,R3}
        LDR      R3,[R0, #0]
        STR      R3,[R2, #+0]
        SUBS     R0,R0,#+8
        SUBS     R2,R2,#+8
        LDR.N    R0,??DataTable3_4
        LDR      R0,[R0, #+1052]
        BL       __aeabi_i2d
        MOVS     R2,#+0
        LDR.N    R3,??DataTable3_11  ;; 0x40c96400
        BL       __aeabi_ddiv
        BL       __aeabi_d2f
        STR      R0,[SP, #+4]
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
        ADD      R0,SP,#+44
        MOVS     R1,#+12
        MLA      R0,R1,R4,R0
        LDM      R0,{R1-R3}
        ADD      R0,SP,#+20
        BL       CALC_PtRotate
        ADD      R0,SP,#+44
        MOVS     R1,#+12
        MLA      R0,R1,R4,R0
        ADD      R1,SP,#+20
        LDM      R1!,{R2,R3,R5}
        STM      R0!,{R2,R3,R5}
        SUBS     R1,R1,#+12
        SUBS     R0,R0,#+12
// 1166 		rotateCube[i] = CALC_PtRotate(rotateCube[i], CALC_AXISY, (calc.angZ / 13000.0), origin);
        ADD      R0,SP,#+32
        ADD      R2,SP,#+8
        LDM      R0!,{R1,R3}
        STM      R2!,{R1,R3}
        LDR      R3,[R0, #0]
        STR      R3,[R2, #+0]
        SUBS     R0,R0,#+8
        SUBS     R2,R2,#+8
        LDR.N    R0,??DataTable3_4
        LDR      R0,[R0, #+1056]
        BL       __aeabi_i2d
        MOVS     R2,#+0
        LDR.N    R3,??DataTable3_11  ;; 0x40c96400
        BL       __aeabi_ddiv
        BL       __aeabi_d2f
        STR      R0,[SP, #+4]
        MOVS     R0,#+1
        STR      R0,[SP, #+0]
        ADD      R0,SP,#+44
        MOVS     R1,#+12
        MLA      R0,R1,R4,R0
        LDM      R0,{R1-R3}
        ADD      R0,SP,#+20
        BL       CALC_PtRotate
        ADD      R0,SP,#+44
        MOVS     R1,#+12
        MLA      R0,R1,R4,R0
        ADD      R1,SP,#+20
        LDM      R1!,{R2,R3,R5}
        STM      R0!,{R2,R3,R5}
        SUBS     R1,R1,#+12
        SUBS     R0,R0,#+12
// 1167 		rotateCube[i] = CALC_PtRotate(rotateCube[i], CALC_AXISZ, (calc.angX / 13000.0), origin);
        ADD      R0,SP,#+32
        ADD      R2,SP,#+8
        LDM      R0!,{R1,R3}
        STM      R2!,{R1,R3}
        LDR      R3,[R0, #0]
        STR      R3,[R2, #+0]
        SUBS     R0,R0,#+8
        SUBS     R2,R2,#+8
        LDR.N    R0,??DataTable3_4
        LDR      R0,[R0, #+1048]
        BL       __aeabi_i2d
        MOVS     R2,#+0
        LDR.N    R3,??DataTable3_11  ;; 0x40c96400
        BL       __aeabi_ddiv
        BL       __aeabi_d2f
        STR      R0,[SP, #+4]
        MOVS     R0,#+2
        STR      R0,[SP, #+0]
        ADD      R0,SP,#+44
        MOVS     R1,#+12
        MLA      R0,R1,R4,R0
        LDM      R0,{R1-R3}
        ADD      R0,SP,#+20
        BL       CALC_PtRotate
        ADD      R0,SP,#+44
        MOVS     R1,#+12
        MLA      R0,R1,R4,R0
        ADD      R1,SP,#+20
        LDM      R1!,{R2,R3,R5}
        STM      R0!,{R2,R3,R5}
        SUBS     R1,R1,#+12
        SUBS     R0,R0,#+12
// 1168 	}
        ADDS     R4,R4,#+1
??CALC_My3d_10:
        CMP      R4,#+8
        BLT.N    ??CALC_My3d_11
// 1169 
// 1170 	CALC_3dConnect(&rotateCube[0], 4, 1, 1);
        MOVS     R3,#+1
        MOVS     R2,#+1
        MOVS     R1,#+4
        ADD      R0,SP,#+44
        BL       CALC_3dConnect
// 1171 	CALC_3dConnect(&rotateCube[4], 4, 1, 1);
        MOVS     R3,#+1
        MOVS     R2,#+1
        MOVS     R1,#+4
        ADD      R0,SP,#+92
        BL       CALC_3dConnect
// 1172 	for (i = 0; i < 4; i++)
        MOVS     R4,#+0
        B.N      ??CALC_My3d_12
// 1173 		CALC_3dDrawLine(rotateCube[i], rotateCube[i + 4], 1);
??CALC_My3d_13:
        MOVS     R0,#+1
        STR      R0,[SP, #+8]
        ADD      R0,SP,#+44
        MOVS     R1,#+12
        MLA      R0,R1,R4,R0
        ADDS     R0,R0,#+48
        SUB      SP,SP,#+4
        MOV      R1,SP
        LDM      R0!,{R2,R3}
        STM      R1!,{R2,R3}
        LDR      R2,[R0, #0]
        STR      R2,[R1, #+0]
        SUBS     R0,R0,#+8
        SUBS     R1,R1,#+8
        POP      {R3}
        ADD      R0,SP,#+44
        MOVS     R1,#+12
        MLA      R0,R1,R4,R0
        LDM      R0,{R0-R2}
        BL       CALC_3dDrawLine
        ADDS     R4,R4,#+1
??CALC_My3d_12:
        CMP      R4,#+4
        BLT.N    ??CALC_My3d_13
// 1174 
// 1175 //	points surface[256] = {0};
// 1176 
// 1177 	points surface;
// 1178 
// 1179 	for (i = 0; i < 16; i++)
        MOVS     R4,#+0
        B.N      ??CALC_My3d_14
// 1180 	{
// 1181 		for (j = 0; j < 16; j++)
// 1182 		{
// 1183 //			surface[i * 16 + j].y -= 90;
// 1184 //			surface[i * 16 + j].x += i;
// 1185 //			surface[i * 16 + j].z += j;
// 1186 //
// 1187 //			surface[i * 16 + j] = CALC_PtRotate(surface[i * 16 + j], CALC_AXISX, (calc.angY / 13000.0), origin);
// 1188 //			surface[i * 16 + j] = CALC_PtRotate(surface[i * 16 + j], CALC_AXISY, (calc.angZ / 13000.0), origin);
// 1189 //			surface[i * 16 + j] = CALC_PtRotate(surface[i * 16 + j], CALC_AXISZ, (calc.angX / 13000.0), origin);
// 1190 //
// 1191 //			CALC_3dSetPix(surface[i * 16 + j], CALC_GetCHPix(1, i, j));
// 1192 
// 1193 			surface = origin;
??CALC_My3d_15:
        ADD      R0,SP,#+20
        ADD      R1,SP,#+32
        LDM      R1!,{R2,R3,R6}
        STM      R0!,{R2,R3,R6}
        SUBS     R1,R1,#+12
        SUBS     R0,R0,#+12
// 1194 
// 1195 			surface.y -= 70;
        LDR      R0,[SP, #+24]
        SUBS     R0,R0,#+70
        STR      R0,[SP, #+24]
// 1196 			surface.x += i;
        LDR      R0,[SP, #+20]
        ADDS     R0,R4,R0
        STR      R0,[SP, #+20]
// 1197 			surface.z += j;
        LDR      R0,[SP, #+28]
        ADDS     R0,R5,R0
        STR      R0,[SP, #+28]
// 1198 
// 1199 			surface = CALC_PtRotate(surface, CALC_AXISX, (calc.angY / 13000.0), origin);
        ADD      R0,SP,#+32
        ADD      R2,SP,#+8
        LDM      R0!,{R1,R3}
        STM      R2!,{R1,R3}
        LDR      R3,[R0, #0]
        STR      R3,[R2, #+0]
        SUBS     R0,R0,#+8
        SUBS     R2,R2,#+8
        LDR.N    R0,??DataTable3_4
        LDR      R0,[R0, #+1052]
        BL       __aeabi_i2d
        MOVS     R2,#+0
        LDR.N    R3,??DataTable3_11  ;; 0x40c96400
        BL       __aeabi_ddiv
        BL       __aeabi_d2f
        STR      R0,[SP, #+4]
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
        ADD      R0,SP,#+20
        LDM      R0,{R1-R3}
        ADD      R0,SP,#+20
        BL       CALC_PtRotate
// 1200 			surface = CALC_PtRotate(surface, CALC_AXISY, (calc.angZ / 13000.0), origin);
        ADD      R0,SP,#+32
        ADD      R2,SP,#+8
        LDM      R0!,{R1,R3}
        STM      R2!,{R1,R3}
        LDR      R3,[R0, #0]
        STR      R3,[R2, #+0]
        SUBS     R0,R0,#+8
        SUBS     R2,R2,#+8
        LDR.N    R0,??DataTable3_4
        LDR      R0,[R0, #+1056]
        BL       __aeabi_i2d
        MOVS     R2,#+0
        LDR.N    R3,??DataTable3_11  ;; 0x40c96400
        BL       __aeabi_ddiv
        BL       __aeabi_d2f
        STR      R0,[SP, #+4]
        MOVS     R0,#+1
        STR      R0,[SP, #+0]
        ADD      R0,SP,#+20
        LDM      R0,{R1-R3}
        ADD      R0,SP,#+20
        BL       CALC_PtRotate
// 1201 			surface = CALC_PtRotate(surface, CALC_AXISZ, (calc.angX / 13000.0), origin);
        ADD      R0,SP,#+32
        ADD      R2,SP,#+8
        LDM      R0!,{R1,R3}
        STM      R2!,{R1,R3}
        LDR      R3,[R0, #0]
        STR      R3,[R2, #+0]
        SUBS     R0,R0,#+8
        SUBS     R2,R2,#+8
        LDR.N    R0,??DataTable3_4
        LDR      R0,[R0, #+1048]
        BL       __aeabi_i2d
        MOVS     R2,#+0
        LDR.N    R3,??DataTable3_11  ;; 0x40c96400
        BL       __aeabi_ddiv
        BL       __aeabi_d2f
        STR      R0,[SP, #+4]
        MOVS     R0,#+2
        STR      R0,[SP, #+0]
        ADD      R0,SP,#+20
        LDM      R0,{R1-R3}
        ADD      R0,SP,#+20
        BL       CALC_PtRotate
// 1202 
// 1203 			CALC_3dSetPix(surface, CALC_GetCHPix(0, i, j));
        MOVS     R2,R5
        MOVS     R1,R4
        MOVS     R0,#+0
        BL       CALC_GetCHPix
        MOVS     R3,R0
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        ADD      R0,SP,#+20
        LDM      R0,{R0-R2}
        BL       CALC_3dSetPix
// 1204 
// 1205 			surface = origin;
        ADD      R0,SP,#+20
        ADD      R1,SP,#+32
        LDM      R1!,{R2,R3,R6}
        STM      R0!,{R2,R3,R6}
        SUBS     R1,R1,#+12
        SUBS     R0,R0,#+12
// 1206 
// 1207 			surface.y -= 70;
        LDR      R0,[SP, #+24]
        SUBS     R0,R0,#+70
        STR      R0,[SP, #+24]
// 1208 			surface.x += i + 16;
        LDR      R0,[SP, #+20]
        ADDS     R1,R4,#+16
        ADDS     R0,R1,R0
        STR      R0,[SP, #+20]
// 1209 			surface.z += j;
        LDR      R0,[SP, #+28]
        ADDS     R0,R5,R0
        STR      R0,[SP, #+28]
// 1210 
// 1211 			surface = CALC_PtRotate(surface, CALC_AXISX, (calc.angY / 13000.0), origin);
        ADD      R0,SP,#+32
        ADD      R2,SP,#+8
        LDM      R0!,{R1,R3}
        STM      R2!,{R1,R3}
        LDR      R3,[R0, #0]
        STR      R3,[R2, #+0]
        SUBS     R0,R0,#+8
        SUBS     R2,R2,#+8
        LDR.N    R0,??DataTable3_4
        LDR      R0,[R0, #+1052]
        BL       __aeabi_i2d
        MOVS     R2,#+0
        LDR.N    R3,??DataTable3_11  ;; 0x40c96400
        BL       __aeabi_ddiv
        BL       __aeabi_d2f
        STR      R0,[SP, #+4]
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
        ADD      R0,SP,#+20
        LDM      R0,{R1-R3}
        ADD      R0,SP,#+20
        BL       CALC_PtRotate
// 1212 			surface = CALC_PtRotate(surface, CALC_AXISY, (calc.angZ / 13000.0), origin);
        ADD      R0,SP,#+32
        ADD      R2,SP,#+8
        LDM      R0!,{R1,R3}
        STM      R2!,{R1,R3}
        LDR      R3,[R0, #0]
        STR      R3,[R2, #+0]
        SUBS     R0,R0,#+8
        SUBS     R2,R2,#+8
        LDR.N    R0,??DataTable3_4
        LDR      R0,[R0, #+1056]
        BL       __aeabi_i2d
        MOVS     R2,#+0
        LDR.N    R3,??DataTable3_11  ;; 0x40c96400
        BL       __aeabi_ddiv
        BL       __aeabi_d2f
        STR      R0,[SP, #+4]
        MOVS     R0,#+1
        STR      R0,[SP, #+0]
        ADD      R0,SP,#+20
        LDM      R0,{R1-R3}
        ADD      R0,SP,#+20
        BL       CALC_PtRotate
// 1213 			surface = CALC_PtRotate(surface, CALC_AXISZ, (calc.angX / 13000.0), origin);
        ADD      R0,SP,#+32
        ADD      R2,SP,#+8
        LDM      R0!,{R1,R3}
        STM      R2!,{R1,R3}
        LDR      R3,[R0, #0]
        STR      R3,[R2, #+0]
        SUBS     R0,R0,#+8
        SUBS     R2,R2,#+8
        LDR.N    R0,??DataTable3_4
        LDR      R0,[R0, #+1048]
        BL       __aeabi_i2d
        MOVS     R2,#+0
        LDR.N    R3,??DataTable3_11  ;; 0x40c96400
        BL       __aeabi_ddiv
        BL       __aeabi_d2f
        STR      R0,[SP, #+4]
        MOVS     R0,#+2
        STR      R0,[SP, #+0]
        ADD      R0,SP,#+20
        LDM      R0,{R1-R3}
        ADD      R0,SP,#+20
        BL       CALC_PtRotate
// 1214 
// 1215 			CALC_3dSetPix(surface, CALC_GetCHPix(1, i, j));
        MOVS     R2,R5
        MOVS     R1,R4
        MOVS     R0,#+1
        BL       CALC_GetCHPix
        MOVS     R3,R0
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        ADD      R0,SP,#+20
        LDM      R0,{R0-R2}
        BL       CALC_3dSetPix
// 1216 		}
        ADDS     R5,R5,#+1
??CALC_My3d_16:
        CMP      R5,#+16
        BLT.W    ??CALC_My3d_15
        ADDS     R4,R4,#+1
??CALC_My3d_14:
        CMP      R4,#+16
        BGE.N    ??CALC_My3d_17
        MOVS     R5,#+0
        B.N      ??CALC_My3d_16
// 1217 	}
// 1218 }
??CALC_My3d_17:
        ADD      SP,SP,#+144
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3:
        DC32     ??cntJumpR

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_1:
        DC32     flag_stopR

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_2:
        DC32     flag_stopL

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_3:
        DC32     camera

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_4:
        DC32     calc

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_5:
        DC32     led

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_6:
        DC32     state_out

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_7:
        DC32     bit

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_8:
        DC32     charCH

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_9:
        DC32     z_buf

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_10:
        DC32     cube

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_11:
        DC32     0x40c96400

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
// 33 916 bytes in section .bss
//  1 088 bytes in section .data
//    188 bytes in section .rodata
//  6 724 bytes in section .text
// 
//  6 724 bytes of CODE  memory
//    188 bytes of CONST memory
// 35 004 bytes of DATA  memory
//
//Errors: none
//Warnings: 1
