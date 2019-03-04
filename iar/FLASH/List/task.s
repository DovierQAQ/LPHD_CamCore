///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.50.1.10123/W32 for ARM      17/Aug/2018  19:50:43
// Copyright 1999-2015 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\ShowD\Desktop\LPHD\LPHD_camCore\LPHD_camCore\app\task\task.c
//    Command line =  
//        C:\Users\ShowD\Desktop\LPHD\LPHD_camCore\LPHD_camCore\app\task\task.c
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
//        C:\Users\ShowD\Desktop\LPHD\LPHD_camCore\LPHD_camCore\iar\FLASH\List\task.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN LPLD_NVIC_Init
        EXTERN LPLD_PIT_Close
        EXTERN LPLD_PIT_EnableIrq
        EXTERN LPLD_PIT_Init
        EXTERN LPLD_PIT_Time_Get
        EXTERN LPLD_PIT_Time_Start
        EXTERN __aeabi_d2iz
        EXTERN __aeabi_ddiv
        EXTERN __aeabi_dmul
        EXTERN __aeabi_fadd
        EXTERN __aeabi_i2d
        EXTERN __aeabi_i2f
        EXTERN __aeabi_memcpy4
        EXTERN __aeabi_ui2d
        EXTERN cnt_led
        EXTERN g_bus_clock
        EXTERN ledArray
        EXTERN twinCore

        PUBLIC TASK_Delay
        PUBLIC TASK_PIT0_Init
        PUBLIC TASK_PIT3_Start
        PUBLIC TASK_PIT3_Stop
        PUBLIC delayMs
        PUBLIC pit0_isr
        PUBLIC task

// C:\Users\ShowD\Desktop\LPHD\LPHD_camCore\LPHD_camCore\app\task\task.c
//    1 #include "task.h"
//    2 
//    3 /****Discription**********************************************/
//    4 
//    5 /*
//    6 	0.PIT定时器控制时序
//    7 	1.需先调用task.Init()函数再使用本驱动
//    8 	2.task.Start()函数可以开始计时，task.Stop()函数结束计时
//    9 		task.timeTest变量存储了计时结果，用来测试某段程序跑的时间
//   10 	3.task.Delay(int)函数可以用来毫秒定时
//   11 	4.默认使用PIT0和PIT3，可以修改
//   12 
//   13 	@Time	2017-04-24
//   14 	@Author	郭帆
//   15 	@Usefor	任务
//   16 */
//   17 
//   18 /****Variables************************************************/
//   19 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   20 int delayMs;
delayMs:
        DS8 4
//   21 
//   22 /****Function list********************************************/
//   23 
//   24 void pit0_isr(void);
//   25 void TASK_PIT0_Init(void);
//   26 void TASK_PIT3_Start(void);
//   27 void TASK_PIT3_Stop(void);
//   28 void TASK_Delay(int xms);
//   29 
//   30 /****Objects**************************************************/
//   31 

        SECTION `.data`:DATA:REORDER:NOROOT(2)
        DATA
//   32 TASK_CLASS task = {&TASK_PIT0_Init, &TASK_Delay, &TASK_PIT3_Start, &TASK_PIT3_Stop, {0}, 0};
task:
        DC32 TASK_PIT0_Init, TASK_Delay, TASK_PIT3_Start, TASK_PIT3_Stop, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC32 0H
        DC8 0, 0, 0, 0
//   33 
//   34 /****Functions************************************************/
//   35 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   36 void TASK_PIT0_Init(void)
//   37 {
TASK_PIT0_Init:
        PUSH     {R7,LR}
//   38 	static PIT_InitTypeDef PIT_InitStructure;
//   39 	static NVIC_InitTypeDef NVIC_InitStructure;
//   40 
//   41 	NVIC_InitStructure.NVIC_IRQChannel = PIT0_IRQn;
        MOVS     R0,#+68
        LDR.N    R1,??DataTable3
        STRB     R0,[R1, #+0]
//   42 	NVIC_InitStructure.NVIC_IRQChannelGroupPriority = NVIC_PriorityGroup_2;
        MOVS     R0,#+5
        LDR.N    R1,??DataTable3
        STR      R0,[R1, #+4]
//   43 	NVIC_InitStructure.NVIC_IRQChannelPreemptionPriority = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable3
        STR      R0,[R1, #+8]
//   44 	NVIC_InitStructure.NVIC_IRQChannelSubPriority = 1;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable3
        STR      R0,[R1, #+12]
//   45 
//   46 	LPLD_NVIC_Init(NVIC_InitStructure);
        LDR.N    R1,??DataTable3
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_NVIC_Init
//   47 
//   48 	PIT_InitStructure.PIT_Pitx = PIT0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable3_1
        STRB     R0,[R1, #+0]
//   49 	PIT_InitStructure.PIT_PeriodMs = 1;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable3_1
        STR      R0,[R1, #+8]
//   50 	PIT_InitStructure.PIT_Isr = pit0_isr;
        ADR.W    R0,pit0_isr
        LDR.N    R1,??DataTable3_1
        STR      R0,[R1, #+16]
//   51 
//   52 	LPLD_PIT_Init(PIT_InitStructure);
        LDR.N    R1,??DataTable3_1
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_PIT_Init
//   53 	LPLD_PIT_EnableIrq(PIT_InitStructure);
        LDR.N    R1,??DataTable3_1
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_PIT_EnableIrq
//   54 }
        POP      {R0,PC}          ;; return

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
??PIT_InitStructure:
        DS8 20

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
??NVIC_InitStructure:
        DS8 20
//   55 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   56 void TASK_Delay(int xms)
//   57 {
//   58 	delayMs = xms;
TASK_Delay:
        LDR.N    R1,??DataTable3_2
        STR      R0,[R1, #+0]
//   59 	while (delayMs);
??TASK_Delay_0:
        LDR.N    R0,??DataTable3_2
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??TASK_Delay_0
//   60 }
        BX       LR               ;; return
//   61 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   62 void TASK_PIT3_Start(void)
//   63 {
TASK_PIT3_Start:
        PUSH     {R7,LR}
//   64 	LPLD_PIT_Time_Start(PIT3);
        MOVS     R0,#+3
        BL       LPLD_PIT_Time_Start
//   65 }
        POP      {R0,PC}          ;; return
//   66 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   67 void TASK_PIT3_Stop(void)
//   68 {
TASK_PIT3_Stop:
        PUSH     {R3-R5,LR}
//   69 	int time;
//   70 
//   71 	time = LPLD_PIT_Time_Get(PIT3);
        MOVS     R0,#+3
        BL       LPLD_PIT_Time_Get
        MOVS     R4,R0
//   72 	LPLD_PIT_Close(PIT3);
        MOVS     R0,#+3
        BL       LPLD_PIT_Close
//   73 	time *= (1000000.0 / g_bus_clock);
        MOVS     R0,R4
        BL       __aeabi_i2d
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.N    R0,??DataTable3_3
        LDR      R0,[R0, #+0]
        BL       __aeabi_ui2d
        MOVS     R2,R0
        MOVS     R3,R1
        MOVS     R0,#+0
        LDR.N    R1,??DataTable3_4  ;; 0x412e8480
        BL       __aeabi_ddiv
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dmul
        BL       __aeabi_d2iz
        MOVS     R4,R0
//   74 
//   75 	task.testTime = time;
        MOVS     R0,R4
        BL       __aeabi_i2f
        LDR.N    R1,??DataTable3_5
        STR      R0,[R1, #+36]
//   76 }
        POP      {R0,R4,R5,PC}    ;; return
//   77 
//   78 extern int cnt_led;

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//   79 void pit0_isr(void)
//   80 {
pit0_isr:
        PUSH     {R7,LR}
//   81 	unsigned char i;
//   82 
//   83 	task.time++;
        LDR.N    R0,??DataTable3_5
        LDR      R1,[R0, #+32]
        MOVS     R0,#+1065353216
        BL       __aeabi_fadd
        LDR.N    R1,??DataTable3_5
        STR      R0,[R1, #+32]
//   84 
//   85 	for (i = 0; i < NumOfTask; i++)
        MOVS     R0,#+0
        B.N      ??pit0_isr_0
//   86 		if (task.taskNum[i])
??pit0_isr_1:
        LDR.N    R1,??DataTable3_5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADDS     R1,R1,R0, LSL #+2
        LDR      R1,[R1, #+16]
        CMP      R1,#+0
        BEQ.N    ??pit0_isr_2
//   87 			task.taskNum[i]--;
        LDR.N    R1,??DataTable3_5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADDS     R1,R1,R0, LSL #+2
        LDR      R1,[R1, #+16]
        SUBS     R1,R1,#+1
        LDR.N    R2,??DataTable3_5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADDS     R2,R2,R0, LSL #+2
        STR      R1,[R2, #+16]
??pit0_isr_2:
        ADDS     R0,R0,#+1
??pit0_isr_0:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+4
        BLT.N    ??pit0_isr_1
//   88 
//   89 	if (delayMs > 0)
        LDR.N    R0,??DataTable3_2
        LDR      R0,[R0, #+0]
        CMP      R0,#+1
        BLT.N    ??pit0_isr_3
//   90 		delayMs--;
        LDR.N    R0,??DataTable3_2
        LDR      R0,[R0, #+0]
        SUBS     R0,R0,#+1
        LDR.N    R1,??DataTable3_2
        STR      R0,[R1, #+0]
//   91 
//   92 	if (cnt_led > 50)
??pit0_isr_3:
        LDR.N    R0,??DataTable3_6
        LDR      R0,[R0, #+0]
        CMP      R0,#+51
        BLT.N    ??pit0_isr_4
//   93 	{
//   94 		if (!twinCore.data[8])
        LDR.N    R0,??DataTable3_7
        LDRSH    R0,[R0, #+28]
        CMP      R0,#+0
        BNE.N    ??pit0_isr_5
//   95 			ledArray.Go();
        LDR.N    R0,??DataTable3_8
        LDR      R0,[R0, #+12]
        BLX      R0
        B.N      ??pit0_isr_4
//   96 		else
//   97 			ledArray.Set(LED0_7 | LED8_15, LEDARRAY_OFF);
??pit0_isr_5:
        MOVS     R1,#+0
        MOVW     R0,#+65535
        LDR.N    R2,??DataTable3_8
        LDR      R2,[R2, #+4]
        BLX      R2
//   98 	}
//   99 }
??pit0_isr_4:
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3:
        DC32     ??NVIC_InitStructure

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_1:
        DC32     ??PIT_InitStructure

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_2:
        DC32     delayMs

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_3:
        DC32     g_bus_clock

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_4:
        DC32     0x412e8480

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_5:
        DC32     task

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_6:
        DC32     cnt_led

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_7:
        DC32     twinCore

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_8:
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
//  44 bytes in section .bss
//  40 bytes in section .data
// 358 bytes in section .text
// 
// 358 bytes of CODE memory
//  84 bytes of DATA memory
//
//Errors: none
//Warnings: none
