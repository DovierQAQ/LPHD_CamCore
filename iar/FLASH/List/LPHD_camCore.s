///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.50.1.10123/W32 for ARM      18/Nov/2018  14:54:19
// Copyright 1999-2015 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\ShowD\Desktop\LPHD\LPHD_camCore\LPHD_camCore\app\LPHD_camCore.c
//    Command line =  
//        C:\Users\ShowD\Desktop\LPHD\LPHD_camCore\LPHD_camCore\app\LPHD_camCore.c
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
//        C:\Users\ShowD\Desktop\LPHD\LPHD_camCore\LPHD_camCore\iar\FLASH\List\LPHD_camCore.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN LPLD_GPIO_Init
        EXTERN LPLD_NVIC_Init
        EXTERN LPLD_PIT_EnableIrq
        EXTERN LPLD_PIT_Init
        EXTERN __aeabi_f2iz
        EXTERN __aeabi_memcpy4
        EXTERN calc
        EXTERN camera
        EXTERN led
        EXTERN ledArray
        EXTERN mpu6050
        EXTERN oled
        EXTERN task
        EXTERN twinCore
        EXTERN uart
        EXTERN ui

        PUBLIC carNum
        PUBLIC cnt_led
        PUBLIC main
        PUBLIC mpu_PIT2_Init
        PUBLIC pit2_isr
        PUBLIC showMyWords
        PUBLIC testCar

// C:\Users\ShowD\Desktop\LPHD\LPHD_camCore\LPHD_camCore\app\LPHD_camCore.c
//    1 #include "common.h"
//    2 #include "camera.h"
//    3 #include "led.h"
//    4 #include "oled.h"
//    5 #include "task.h"
//    6 #include "uart.h"
//    7 #include "twinCore.h"
//    8 #include "mpu6050.h"
//    9 //#include "nrf.h"
//   10 #include "calc.h"
//   11 #include "UI.h"
//   12 #include "ledArray.h"
//   13 
//   14 /****Definitions**********************************************/
//   15 
//   16 #define TASK_ENABLE 0
//   17 
//   18 #define CARNUM		2
//   19 
//   20 #if (CARNUM == 2)
//   21 #define GRYOFFSET_X	0
//   22 #define GRYOFFSET_Y	0
//   23 #define GRYOFFSET_Z	0
//   24 #elif (CARNUM == 1)
//   25 #define GRYOFFSET_X	0
//   26 #define GRYOFFSET_Y	0
//   27 #define GRYOFFSET_Z	0
//   28 #endif /* CARNUM */
//   29 
//   30 /****Function list********************************************/
//   31 
//   32 void mpu_PIT2_Init(void);
//   33 void showMyWords(void);
//   34 int testCar(void);
//   35 
//   36 /****Variables************************************************/
//   37 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   38 int carNum = 0;
carNum:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   39 int cnt_led = 0;
cnt_led:
        DS8 4
//   40 
//   41 /****main*****************************************************/
//   42 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   43 void main (void)
//   44 {
main:
        PUSH     {R7,LR}
//   45 	DisableInterrupts;
        CPSID    I
//   46 
//   47 	carNum = testCar();
        BL       testCar
        LDR.W    R1,??DataTable4
        STR      R0,[R1, #+0]
//   48 	task.Init();
        LDR.W    R0,??DataTable4_1
        LDR      R0,[R0, #+0]
        BLX      R0
//   49 	uart.Init();
        LDR.W    R0,??DataTable4_2
        LDR      R0,[R0, #+0]
        BLX      R0
//   50 	oled.Init();
        LDR.W    R0,??DataTable4_3
        LDR      R0,[R0, #+0]
        BLX      R0
//   51 	led.Init(LED4); // 只给我一个（还是核心板上面的），TAT
        MOVS     R0,#+8
        LDR.W    R1,??DataTable4_4
        LDR      R1,[R1, #+0]
        BLX      R1
//   52 	ledArray.Init(); // 来了！
        LDR.W    R0,??DataTable4_5
        LDR      R0,[R0, #+0]
        BLX      R0
//   53 	//ledArray.Show(0xAAAA);
//   54 	twinCore.Init();
        LDR.W    R0,??DataTable4_6
        LDR      R0,[R0, #+0]
        BLX      R0
//   55 	mpu6050.Init();
        LDR.W    R0,??DataTable4_7
        LDR      R0,[R0, #+0]
        BLX      R0
//   56 	mpu6050.SetOffset(0, 0, 0);
        MOVS     R2,#+0
        MOVS     R1,#+0
        MOVS     R0,#+0
        LDR.W    R3,??DataTable4_7
        LDR      R3,[R3, #+12]
        BLX      R3
//   57 	//nrf.Init();
//   58 	mpu_PIT2_Init();
        BL       mpu_PIT2_Init
//   59 
//   60 	showMyWords();
        BL       showMyWords
//   61 	oled.DispACat(70, 0);
        MOVS     R1,#+0
        MOVS     R0,#+70
        LDR.W    R2,??DataTable4_3
        LDR      R2,[R2, #+40]
        BLX      R2
//   62 
//   63 	int status = camera.Init();
        LDR.W    R0,??DataTable4_8
        LDR      R0,[R0, #+0]
        BLX      R0
//   64 	if (status)
        CMP      R0,#+0
        BEQ.N    ??main_0
//   65 	{
//   66 		switch (status)
        CMP      R0,#+1
        BEQ.N    ??main_1
        BCC.N    ??main_2
        CMP      R0,#+3
        BEQ.N    ??main_3
        BCC.N    ??main_4
        CMP      R0,#+4
        BEQ.N    ??main_5
        B.N      ??main_2
//   67 		{
//   68 		case 1: oled.Printf(20, 2, "Error: Camera 1."); break;
??main_1:
        LDR.W    R2,??DataTable4_9
        MOVS     R1,#+2
        MOVS     R0,#+20
        LDR.N    R3,??DataTable4_3
        LDR      R3,[R3, #+8]
        BLX      R3
        B.N      ??main_2
//   69 		case 2: oled.Printf(20, 2, "Error: Camera 2."); break;
??main_4:
        LDR.W    R2,??DataTable4_10
        MOVS     R1,#+2
        MOVS     R0,#+20
        LDR.N    R3,??DataTable4_3
        LDR      R3,[R3, #+8]
        BLX      R3
        B.N      ??main_2
//   70 		case 3: oled.Printf(20, 2, "Error: Camera 3."); break;
??main_3:
        LDR.N    R2,??DataTable4_11
        MOVS     R1,#+2
        MOVS     R0,#+20
        LDR.N    R3,??DataTable4_3
        LDR      R3,[R3, #+8]
        BLX      R3
        B.N      ??main_2
//   71 		case 4: oled.Printf(20, 2, "Error: Camera 4."); break;
??main_5:
        LDR.N    R2,??DataTable4_12
        MOVS     R1,#+2
        MOVS     R0,#+20
        LDR.N    R3,??DataTable4_3
        LDR      R3,[R3, #+8]
        BLX      R3
        B.N      ??main_2
//   72 		}
//   73 	}
//   74 	else
//   75 		oled.DispAImg();
??main_0:
        LDR.N    R0,??DataTable4_3
        LDR      R0,[R0, #+44]
        BLX      R0
//   76 
//   77 	EnableInterrupts;
??main_2:
        CPSIE    I
        B.N      ??main_6
//   78 
//   79 	while(1)
//   80 	{
//   81 		if (camera.isReady)
//   82 		{
//   83 			//task.Start();
//   84 
//   85 			camera.Extract();
//   86 			calc.Calc();
//   87 
//   88 			if (calc.flag_out && calc.cnt_effect)
//   89 			{
//   90 				twinCore.Set(0, calc.flag_out);
//   91 				twinCore.Send(); // 用以提高及时性
//   92 			}
//   93 //			if (calc.flag_out)
//   94 //				led.Set(LED4, ON);
//   95 //			else
//   96 //				led.Set(LED4, OFF);
//   97 
//   98 //			if (twinCore.data[1] == 1100)
//   99 //			{
//  100 				oled.DispImgCalc();
//  101 //				if (calc.flag_out)
//  102 //					oled.Printf(30, 1, "I found it!");
//  103 //			}
//  104 //			else if (twinCore.data[1] == 1101)
//  105 //			{
//  106 //				uart.SendImg();
//  107 //				oled.DispImgCalc();
//  108 //				if (calc.flag_out)
//  109 //					oled.Printf(30, 1, "I found it!");
//  110 //			}
//  111 
//  112 			//task.Stop();
//  113 
//  114 //			static int flag_frame = 0;
//  115 //			if (!flag_frame)
//  116 //			{
//  117 //				flag_frame = 1;
//  118 //				task.Start();
//  119 //			}
//  120 //			else
//  121 //			{
//  122 //				flag_frame = 0;
//  123 //				task.Stop();
//  124 //			}
//  125 		}
//  126 
//  127 		if (task.taskNum[0] == TASK_ENABLE)
//  128 		{
//  129 			task.taskNum[0] = 10;
//  130 
//  131 			if (calc.cnt_effect)
//  132 				twinCore.Set(0, calc.flag_out);
//  133 			twinCore.Set(1, (int16)mpu6050.pose.angleY);
//  134 			twinCore.Set(2, (int16)mpu6050.pose.angleZ);
//  135 			twinCore.Set(3, (int16)mpu6050.gry.y);
//  136 			twinCore.Set(4, (int16)calc.cnt_out);
//  137 			twinCore.Set(5, (int16)task.testTime);
//  138 			twinCore.Set(6, (int16)calc.reffer[0]);
//  139 			twinCore.Set(7, (int16)mpu6050.acc.z);
//  140 			twinCore.Set(8, (int16)calc.flag_zebra);
//  141 
//  142 			twinCore.Send();
//  143 		}
//  144 
//  145 		if (task.taskNum[1] == TASK_ENABLE)
//  146 		{
//  147 			task.taskNum[1] = 10;
//  148 
//  149 //			uart.Set(0, (int16)task.testTime);
//  150 //			uart.SendToScope();
//  151 
//  152 //			if (twinCore.data[1] == 1111)
//  153 //			{
//  154 //				calc.My3d();
//  155 //				oled.DispMyScene();
//  156 //			}
//  157 
//  158 			static int state_led = 0;
//  159 			static int state_dir = 0;
//  160 
//  161 			cnt_led++;
//  162 
//  163 			if (cnt_led < 50)
//  164 			{
//  165 				state_led <<= 1;
//  166 				if (!state_dir) state_led |= 1;
//  167 				else state_led &= ~(1);
//  168 
//  169 				state_led &= 0xFFFF;
//  170 				if (state_led == 0xFFFF) state_dir = 1;
//  171 				else if (state_led == 0x0000) state_dir = 0;
??main_7:
        LDR.N    R0,??DataTable4_13
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??main_8
        MOVS     R0,#+0
        LDR.N    R1,??DataTable4_14
        STR      R0,[R1, #+0]
//  172 
//  173 				ledArray.Show(state_led);
??main_8:
        LDR.N    R0,??DataTable4_13
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable4_5
        LDR      R1,[R1, #+8]
        BLX      R1
//  174 			}
//  175 
//  176 			if (twinCore.data[1] == 1110)
??main_9:
        LDR.N    R0,??DataTable4_6
        LDRSH    R0,[R0, #+14]
        MOVW     R1,#+1110
        CMP      R0,R1
        BNE.N    ??main_6
//  177 				ui.Update();
        LDR.N    R0,??DataTable4_15
        LDR      R0,[R0, #+8]
        BLX      R0
??main_6:
        LDR.N    R0,??DataTable4_8
        LDR      R0,[R0, #+16]
        CMP      R0,#+0
        BEQ.N    ??main_10
        LDR.N    R0,??DataTable4_8
        LDR      R0,[R0, #+8]
        BLX      R0
        LDR.N    R0,??DataTable4_16
        LDR      R0,[R0, #+0]
        BLX      R0
        LDR.N    R0,??DataTable4_16
        LDR      R0,[R0, #+12]
        CMP      R0,#+0
        BEQ.N    ??main_11
        LDR.N    R0,??DataTable4_16
        LDR      R0,[R0, #+8]
        CMP      R0,#+0
        BEQ.N    ??main_11
        LDR.N    R0,??DataTable4_16
        LDR      R1,[R0, #+12]
        MOVS     R0,#+0
        LDR.N    R2,??DataTable4_6
        LDR      R2,[R2, #+4]
        BLX      R2
        LDR.N    R0,??DataTable4_6
        LDR      R0,[R0, #+8]
        BLX      R0
??main_11:
        LDR.N    R0,??DataTable4_3
        LDR      R0,[R0, #+28]
        BLX      R0
??main_10:
        LDR.N    R0,??DataTable4_1
        LDR      R0,[R0, #+16]
        CMP      R0,#+0
        BNE.N    ??main_12
        MOVS     R0,#+10
        LDR.N    R1,??DataTable4_1
        STR      R0,[R1, #+16]
        LDR.N    R0,??DataTable4_16
        LDR      R0,[R0, #+8]
        CMP      R0,#+0
        BEQ.N    ??main_13
        LDR.N    R0,??DataTable4_16
        LDR      R1,[R0, #+12]
        MOVS     R0,#+0
        LDR.N    R2,??DataTable4_6
        LDR      R2,[R2, #+4]
        BLX      R2
??main_13:
        LDR.N    R0,??DataTable4_7
        LDR      R0,[R0, #+40]
        BL       __aeabi_f2iz
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        MOVS     R1,R0
        MOVS     R0,#+1
        LDR.N    R2,??DataTable4_6
        LDR      R2,[R2, #+4]
        BLX      R2
        LDR.N    R0,??DataTable4_7
        LDR      R0,[R0, #+44]
        BL       __aeabi_f2iz
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        MOVS     R1,R0
        MOVS     R0,#+2
        LDR.N    R2,??DataTable4_6
        LDR      R2,[R2, #+4]
        BLX      R2
        LDR.N    R0,??DataTable4_7
        LDRSH    R1,[R0, #+24]
        MOVS     R0,#+3
        LDR.N    R2,??DataTable4_6
        LDR      R2,[R2, #+4]
        BLX      R2
        LDR.N    R0,??DataTable4_16
        LDRSH    R1,[R0, #+1068]
        MOVS     R0,#+4
        LDR.N    R2,??DataTable4_6
        LDR      R2,[R2, #+4]
        BLX      R2
        LDR.N    R0,??DataTable4_1
        LDR      R0,[R0, #+36]
        BL       __aeabi_f2iz
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        MOVS     R1,R0
        MOVS     R0,#+5
        LDR.N    R2,??DataTable4_6
        LDR      R2,[R2, #+4]
        BLX      R2
        LDR.N    R0,??DataTable4_16
        LDRSH    R1,[R0, #+1076]
        MOVS     R0,#+6
        LDR.N    R2,??DataTable4_6
        LDR      R2,[R2, #+4]
        BLX      R2
        LDR.N    R0,??DataTable4_7
        LDRSH    R1,[R0, #+20]
        MOVS     R0,#+7
        LDR.N    R2,??DataTable4_6
        LDR      R2,[R2, #+4]
        BLX      R2
        LDR.N    R0,??DataTable4_16
        LDRSH    R1,[R0, #+20]
        MOVS     R0,#+8
        LDR.N    R2,??DataTable4_6
        LDR      R2,[R2, #+4]
        BLX      R2
        LDR.N    R0,??DataTable4_6
        LDR      R0,[R0, #+8]
        BLX      R0
??main_12:
        LDR.N    R0,??DataTable4_1
        LDR      R0,[R0, #+20]
        CMP      R0,#+0
        BNE.N    ??main_6
        MOVS     R0,#+10
        LDR.N    R1,??DataTable4_1
        STR      R0,[R1, #+20]
        LDR.N    R0,??DataTable4_17
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable4_17
        STR      R0,[R1, #+0]
        LDR.N    R0,??DataTable4_17
        LDR      R0,[R0, #+0]
        CMP      R0,#+50
        BGE.W    ??main_9
        LDR.N    R0,??DataTable4_13
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+1
        LDR.N    R1,??DataTable4_13
        STR      R0,[R1, #+0]
        LDR.N    R0,??DataTable4_14
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??main_14
        LDR.N    R0,??DataTable4_13
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.N    R1,??DataTable4_13
        STR      R0,[R1, #+0]
        B.N      ??main_15
??main_14:
        LDR.N    R0,??DataTable4_13
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x1
        LDR.N    R1,??DataTable4_13
        STR      R0,[R1, #+0]
??main_15:
        LDR.N    R0,??DataTable4_13
        LDR      R0,[R0, #+0]
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        LDR.N    R1,??DataTable4_13
        STR      R0,[R1, #+0]
        LDR.N    R0,??DataTable4_13
        LDR      R0,[R0, #+0]
        MOVW     R1,#+65535
        CMP      R0,R1
        BNE.W    ??main_7
        MOVS     R0,#+1
        LDR.N    R1,??DataTable4_14
        STR      R0,[R1, #+0]
        B.N      ??main_8
//  178 
//  179 			//led.Set(LED4, TOGGLE);
//  180 		}
//  181 	}
//  182 }

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
??state_led:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
??state_dir:
        DS8 4
//  183 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  184 void pit2_isr(void) // 10ms
//  185 {
pit2_isr:
        PUSH     {R7,LR}
//  186 	mpu6050.GetGry(MPU6050_X | MPU6050_Y | MPU6050_Z);
        MOVS     R0,#+7
        LDR.N    R1,??DataTable4_7
        LDR      R1,[R1, #+8]
        BLX      R1
//  187 //	mpu6050.GetAcc(MPU6050_Z);
//  188 
//  189 //	if (!mpu6050.pose.flagX) mpu6050.pose.angleX = 0;
//  190 //	if (!mpu6050.pose.flagY) mpu6050.pose.angleY = 0;
//  191 //	if (!mpu6050.pose.flagZ) mpu6050.pose.angleZ = 0;
//  192 //
//  193 //	twinCore.Set(1, (int16)mpu6050.pose.angleY);
//  194 //	twinCore.Set(2, (int16)mpu6050.pose.angleZ);
//  195 //	twinCore.Set(3, (int16)mpu6050.gry.y);
//  196 //	twinCore.Set(4, (int16)calc.cnt_out);
//  197 //	twinCore.Set(5, (int16)task.testTime);
//  198 
//  199 //	if (twinCore.data[1] == 1111)
//  200 //	{
//  201 //		calc.angX += mpu6050.gry.x;
//  202 //		calc.angY += mpu6050.gry.y;
//  203 //		calc.angZ += mpu6050.gry.z;
//  204 //	}
//  205 }
        POP      {R0,PC}          ;; return
//  206 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  207 void mpu_PIT2_Init(void)
//  208 {
mpu_PIT2_Init:
        PUSH     {R7,LR}
//  209 	static PIT_InitTypeDef PIT_InitStructure;
//  210 	static NVIC_InitTypeDef NVIC_InitStructure;
//  211 
//  212 	NVIC_InitStructure.NVIC_IRQChannel = PIT2_IRQn;
        MOVS     R0,#+70
        LDR.N    R1,??DataTable4_18
        STRB     R0,[R1, #+0]
//  213 	NVIC_InitStructure.NVIC_IRQChannelGroupPriority = NVIC_PriorityGroup_2;
        MOVS     R0,#+5
        LDR.N    R1,??DataTable4_18
        STR      R0,[R1, #+4]
//  214 	NVIC_InitStructure.NVIC_IRQChannelPreemptionPriority = 1;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable4_18
        STR      R0,[R1, #+8]
//  215 	NVIC_InitStructure.NVIC_IRQChannelSubPriority = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable4_18
        STR      R0,[R1, #+12]
//  216 
//  217 	LPLD_NVIC_Init(NVIC_InitStructure);
        LDR.N    R1,??DataTable4_18
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_NVIC_Init
//  218 
//  219 	PIT_InitStructure.PIT_Pitx = PIT2;
        MOVS     R0,#+2
        LDR.N    R1,??DataTable4_19
        STRB     R0,[R1, #+0]
//  220 	PIT_InitStructure.PIT_PeriodMs = 10;
        MOVS     R0,#+10
        LDR.N    R1,??DataTable4_19
        STR      R0,[R1, #+8]
//  221 	PIT_InitStructure.PIT_Isr = pit2_isr;
        LDR.N    R0,??DataTable4_20
        LDR.N    R1,??DataTable4_19
        STR      R0,[R1, #+16]
//  222 
//  223 	LPLD_PIT_Init(PIT_InitStructure);
        LDR.N    R1,??DataTable4_19
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_PIT_Init
//  224 	LPLD_PIT_EnableIrq(PIT_InitStructure);
        LDR.N    R1,??DataTable4_19
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_PIT_EnableIrq
//  225 }
        POP      {R0,PC}          ;; return

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
??PIT_InitStructure:
        DS8 20

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
??NVIC_InitStructure:
        DS8 20
//  226 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  227 void showMyWords(void)
//  228 {
showMyWords:
        PUSH     {R4,LR}
//  229 	int i;
//  230 	oled.PutCH(0, 0, 0);
        MOVS     R2,#+0
        MOVS     R1,#+0
        MOVS     R0,#+0
        LDR.N    R3,??DataTable4_3
        LDR      R3,[R3, #+36]
        BLX      R3
//  231 	oled.Putchar(16, 1, ',');
        MOVS     R2,#+44
        MOVS     R1,#+1
        MOVS     R0,#+16
        LDR.N    R3,??DataTable4_3
        LDR      R3,[R3, #+4]
        BLX      R3
//  232 	oled.PutCH(22, 0, 1);
        MOVS     R2,#+1
        MOVS     R1,#+0
        MOVS     R0,#+22
        LDR.N    R3,??DataTable4_3
        LDR      R3,[R3, #+36]
        BLX      R3
//  233 	oled.PutCH(38, 0, 2);
        MOVS     R2,#+2
        MOVS     R1,#+0
        MOVS     R0,#+38
        LDR.N    R3,??DataTable4_3
        LDR      R3,[R3, #+36]
        BLX      R3
//  234 
//  235 	for (i = 0; i < 3; i++)
        MOVS     R4,#+0
        B.N      ??showMyWords_0
//  236 		oled.PutCH(i * 16, 2, 3 + i);
??showMyWords_1:
        ADDS     R2,R4,#+3
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,#+2
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSLS     R0,R0,#+4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R3,??DataTable4_3
        LDR      R3,[R3, #+36]
        BLX      R3
        ADDS     R4,R4,#+1
??showMyWords_0:
        CMP      R4,#+3
        BLT.N    ??showMyWords_1
//  237 
//  238 	for (i = 0; i < 6; i++)
        MOVS     R4,#+0
        B.N      ??showMyWords_2
//  239 		oled.PutCH(i * 16, 4, 6 + i);
??showMyWords_3:
        ADDS     R2,R4,#+6
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,#+4
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSLS     R0,R0,#+4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R3,??DataTable4_3
        LDR      R3,[R3, #+36]
        BLX      R3
        ADDS     R4,R4,#+1
??showMyWords_2:
        CMP      R4,#+6
        BLT.N    ??showMyWords_3
//  240 
//  241 	for (i = 0; i < 5; i++)
        MOVS     R4,#+0
        B.N      ??showMyWords_4
//  242 		oled.PutCH(i * 16, 6, 12 + i);
??showMyWords_5:
        ADDS     R2,R4,#+12
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,#+6
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSLS     R0,R0,#+4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R3,??DataTable4_3
        LDR      R3,[R3, #+36]
        BLX      R3
        ADDS     R4,R4,#+1
??showMyWords_4:
        CMP      R4,#+5
        BLT.N    ??showMyWords_5
//  243 }
        POP      {R4,PC}          ;; return
//  244 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  245 int testCar(void)
//  246 {
testCar:
        PUSH     {R7,LR}
//  247 	static GPIO_InitTypeDef GPIO_InitStructure;
//  248 
//  249 	GPIO_InitStructure.GPIO_PTx = PTD;
        LDR.N    R0,??DataTable4_21  ;; 0x400ff0c0
        LDR.N    R1,??DataTable4_22
        STR      R0,[R1, #+0]
//  250 	GPIO_InitStructure.GPIO_Pins = GPIO_Pin15;
        MOV      R0,#+32768
        LDR.N    R1,??DataTable4_22
        STR      R0,[R1, #+4]
//  251 	GPIO_InitStructure.GPIO_PinControl = INPUT_PULL_DIS;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable4_22
        STR      R0,[R1, #+8]
//  252 	GPIO_InitStructure.GPIO_Dir = DIR_INPUT;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable4_22
        STRB     R0,[R1, #+12]
//  253 	LPLD_GPIO_Init(GPIO_InitStructure);
        LDR.N    R1,??DataTable4_22
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//  254 
//  255 	if (PTD15_I) return 1;
        LDR.N    R0,??DataTable4_23  ;; 0x43fe1a3c
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??testCar_0
        MOVS     R0,#+1
        B.N      ??testCar_1
//  256 	else return 2;
??testCar_0:
        MOVS     R0,#+2
??testCar_1:
        POP      {R1,PC}          ;; return
//  257 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4:
        DC32     carNum

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_1:
        DC32     task

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_2:
        DC32     uart

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_3:
        DC32     oled

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_4:
        DC32     led

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_5:
        DC32     ledArray

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_6:
        DC32     twinCore

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_7:
        DC32     mpu6050

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_8:
        DC32     camera

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_9:
        DC32     ?_0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_10:
        DC32     ?_1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_11:
        DC32     ?_2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_12:
        DC32     ?_3

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_13:
        DC32     ??state_led

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_14:
        DC32     ??state_dir

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_15:
        DC32     ui

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_16:
        DC32     calc

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_17:
        DC32     cnt_led

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_18:
        DC32     ??NVIC_InitStructure

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_19:
        DC32     ??PIT_InitStructure

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_20:
        DC32     pit2_isr

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_21:
        DC32     0x400ff0c0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_22:
        DC32     ??GPIO_InitStructure

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_23:
        DC32     0x43fe1a3c

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
??GPIO_InitStructure:
        DS8 20

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_0:
        DC8 "Error: Camera 1."
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_1:
        DC8 "Error: Camera 2."
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_2:
        DC8 "Error: Camera 3."
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_3:
        DC8 "Error: Camera 4."
        DC8 0, 0, 0

        END
// 
//    76 bytes in section .bss
//    80 bytes in section .rodata
// 1 004 bytes in section .text
// 
// 1 004 bytes of CODE  memory
//    80 bytes of CONST memory
//    76 bytes of DATA  memory
//
//Errors: none
//Warnings: none
