///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.50.1.10123/W32 for ARM      01/Aug/2018  12:09:48
// Copyright 1999-2015 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\ShowD\Desktop\LPHD\LPHD_camCore\LPHD_camCore\app\led\led.c
//    Command line =  
//        C:\Users\ShowD\Desktop\LPHD\LPHD_camCore\LPHD_camCore\app\led\led.c
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
//        C:\Users\ShowD\Desktop\LPHD\LPHD_camCore\LPHD_camCore\iar\FLASH\List\led.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN LPLD_GPIO_Init
        EXTERN __aeabi_memcpy4

        PUBLIC LED_Init
        PUBLIC LED_Set
        PUBLIC led

// C:\Users\ShowD\Desktop\LPHD\LPHD_camCore\LPHD_camCore\app\led\led.c
//    1 #include "led.h"
//    2 
//    3 /****Discription**********************************************/
//    4 
//    5 /*
//    6 	0.led驱动程序
//    7 	1.需先调用oled.Init()函数再使用本驱动
//    8 	2.Init函数有参数，为需要初始化的LED号，可用|进行连接，如LED1 | LED2
//    9 	3.led.Set(int, int)函数可以设置led状态
//   10 		第一个参数为LED号，格式与初始化类似
//   11 		第二个参数为状态，从LED_ON和LED_OFF选择
//   12 	4.引脚定义在头文件里面修改
//   13 
//   14 	@Time	2018-04-24
//   15 	@Author	郭帆
//   16 	@Usefor	led驱动
//   17 */
//   18 
//   19 /****Functions************************************************/
//   20 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   21 void LED_Init(int LEDNum)
//   22 {
LED_Init:
        PUSH     {R4,LR}
        SUB      SP,SP,#+8
        MOVS     R4,R0
//   23 	static GPIO_InitTypeDef GPIO_InitStructure;
//   24 
//   25 	if (LEDNum & LED1)
        LSLS     R0,R4,#+31
        BPL.N    ??LED_Init_0
//   26 	{
//   27 		GPIO_InitStructure.GPIO_PTx = LED1_PTx;
        LDR.N    R0,??DataTable1  ;; 0x400ff0c0
        LDR.N    R1,??DataTable1_1
        STR      R0,[R1, #+0]
//   28 		GPIO_InitStructure.GPIO_Pins = LED1_Pinx;
        MOV      R0,#+8192
        LDR.N    R1,??DataTable1_1
        STR      R0,[R1, #+4]
//   29 		GPIO_InitStructure.GPIO_Dir = DIR_OUTPUT;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable1_1
        STRB     R0,[R1, #+12]
//   30 		GPIO_InitStructure.GPIO_Output = OUTPUT_H;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable1_1
        STRB     R0,[R1, #+13]
//   31 		LPLD_GPIO_Init(GPIO_InitStructure);
        LDR.N    R1,??DataTable1_1
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//   32 	}
//   33 
//   34 	if (LEDNum & LED2)
??LED_Init_0:
        LSLS     R0,R4,#+30
        BPL.N    ??LED_Init_1
//   35 	{
//   36 		GPIO_InitStructure.GPIO_PTx = LED2_PTx;
        LDR.N    R0,??DataTable1  ;; 0x400ff0c0
        LDR.N    R1,??DataTable1_1
        STR      R0,[R1, #+0]
//   37 		GPIO_InitStructure.GPIO_Pins = LED2_Pinx;
        MOV      R0,#+16384
        LDR.N    R1,??DataTable1_1
        STR      R0,[R1, #+4]
//   38 		GPIO_InitStructure.GPIO_Dir = DIR_OUTPUT;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable1_1
        STRB     R0,[R1, #+12]
//   39 		GPIO_InitStructure.GPIO_Output = OUTPUT_H;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable1_1
        STRB     R0,[R1, #+13]
//   40 		LPLD_GPIO_Init(GPIO_InitStructure);
        LDR.N    R1,??DataTable1_1
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//   41 	}
//   42 
//   43 	if (LEDNum & LED3)
??LED_Init_1:
        LSLS     R0,R4,#+29
        BPL.N    ??LED_Init_2
//   44 	{
//   45 		GPIO_InitStructure.GPIO_PTx = LED3_PTx;
        LDR.N    R0,??DataTable1  ;; 0x400ff0c0
        LDR.N    R1,??DataTable1_1
        STR      R0,[R1, #+0]
//   46 		GPIO_InitStructure.GPIO_Pins = LED3_Pinx;
        MOV      R0,#+32768
        LDR.N    R1,??DataTable1_1
        STR      R0,[R1, #+4]
//   47 		GPIO_InitStructure.GPIO_Dir = DIR_OUTPUT;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable1_1
        STRB     R0,[R1, #+12]
//   48 		GPIO_InitStructure.GPIO_Output = OUTPUT_H;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable1_1
        STRB     R0,[R1, #+13]
//   49 		LPLD_GPIO_Init(GPIO_InitStructure);
        LDR.N    R1,??DataTable1_1
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//   50 	}
//   51 
//   52 	if (LEDNum & LED4)
??LED_Init_2:
        LSLS     R0,R4,#+28
        BPL.N    ??LED_Init_3
//   53 	{
//   54 		GPIO_InitStructure.GPIO_PTx = LED4_PTx;
        LDR.N    R0,??DataTable1_2  ;; 0x400ff000
        LDR.N    R1,??DataTable1_1
        STR      R0,[R1, #+0]
//   55 		GPIO_InitStructure.GPIO_Pins = LED4_Pinx;
        MOVS     R0,#+524288
        LDR.N    R1,??DataTable1_1
        STR      R0,[R1, #+4]
//   56 		GPIO_InitStructure.GPIO_Dir = DIR_OUTPUT;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable1_1
        STRB     R0,[R1, #+12]
//   57 		GPIO_InitStructure.GPIO_Output = OUTPUT_H;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable1_1
        STRB     R0,[R1, #+13]
//   58 		LPLD_GPIO_Init(GPIO_InitStructure);
        LDR.N    R1,??DataTable1_1
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//   59 	}
//   60 }
??LED_Init_3:
        POP      {R0,R1,R4,PC}    ;; return

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
??GPIO_InitStructure:
        DS8 20
//   61 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   62 void LED_Set(int LEDNum, int state)
//   63 {
//   64 	if (LEDNum & LED1)
LED_Set:
        LSLS     R2,R0,#+31
        BPL.N    ??LED_Set_0
//   65 	{
//   66 		switch (state)
        CMP      R1,#+0
        BEQ.N    ??LED_Set_1
        CMP      R1,#+2
        BEQ.N    ??LED_Set_2
        BCS.N    ??LED_Set_0
//   67 		{
//   68 		case ON:
//   69 		case OFF:
//   70 			LED1_O = state;
??LED_Set_1:
        LDR.N    R2,??DataTable1_3  ;; 0x43fe1834
        STR      R1,[R2, #+0]
//   71 			break;
        B.N      ??LED_Set_0
//   72 		case TOGGLE:
//   73 			LED1_Toggle();
??LED_Set_2:
        LDR.N    R2,??DataTable1_3  ;; 0x43fe1834
        LDR      R2,[R2, #+0]
        CMP      R2,#+0
        BNE.N    ??LED_Set_3
        MOVS     R2,#+1
        B.N      ??LED_Set_4
??LED_Set_3:
        MOVS     R2,#+0
??LED_Set_4:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        LDR.N    R3,??DataTable1_3  ;; 0x43fe1834
        STR      R2,[R3, #+0]
//   74 			break;
//   75 		}
//   76 	}
//   77 
//   78 	if (LEDNum & LED2)
??LED_Set_0:
        LSLS     R2,R0,#+30
        BPL.N    ??LED_Set_5
//   79 	{
//   80 		switch (state)
        CMP      R1,#+0
        BEQ.N    ??LED_Set_6
        CMP      R1,#+2
        BEQ.N    ??LED_Set_7
        BCS.N    ??LED_Set_5
//   81 		{
//   82 		case ON:
//   83 		case OFF:
//   84 			LED2_O = state;
??LED_Set_6:
        LDR.N    R2,??DataTable1_4  ;; 0x43fe1838
        STR      R1,[R2, #+0]
//   85 			break;
        B.N      ??LED_Set_5
//   86 		case TOGGLE:
//   87 			LED2_Toggle();
??LED_Set_7:
        LDR.N    R2,??DataTable1_4  ;; 0x43fe1838
        LDR      R2,[R2, #+0]
        CMP      R2,#+0
        BNE.N    ??LED_Set_8
        MOVS     R2,#+1
        B.N      ??LED_Set_9
??LED_Set_8:
        MOVS     R2,#+0
??LED_Set_9:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        LDR.N    R3,??DataTable1_4  ;; 0x43fe1838
        STR      R2,[R3, #+0]
//   88 			break;
//   89 		}
//   90 	}
//   91 
//   92 	if (LEDNum & LED3)
??LED_Set_5:
        LSLS     R2,R0,#+29
        BPL.N    ??LED_Set_10
//   93 	{
//   94 		switch (state)
        CMP      R1,#+0
        BEQ.N    ??LED_Set_11
        CMP      R1,#+2
        BEQ.N    ??LED_Set_12
        BCS.N    ??LED_Set_10
//   95 		{
//   96 		case ON:
//   97 		case OFF:
//   98 			LED3_O = state;
??LED_Set_11:
        LDR.N    R2,??DataTable1_5  ;; 0x43fe183c
        STR      R1,[R2, #+0]
//   99 			break;
        B.N      ??LED_Set_10
//  100 		case TOGGLE:
//  101 			LED3_Toggle();
??LED_Set_12:
        LDR.N    R2,??DataTable1_5  ;; 0x43fe183c
        LDR      R2,[R2, #+0]
        CMP      R2,#+0
        BNE.N    ??LED_Set_13
        MOVS     R2,#+1
        B.N      ??LED_Set_14
??LED_Set_13:
        MOVS     R2,#+0
??LED_Set_14:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        LDR.N    R3,??DataTable1_5  ;; 0x43fe183c
        STR      R2,[R3, #+0]
//  102 			break;
//  103 		}
//  104 	}
//  105 
//  106 	if (LEDNum & LED4)
??LED_Set_10:
        LSLS     R0,R0,#+28
        BPL.N    ??LED_Set_15
//  107 	{
//  108 		switch (state)
        CMP      R1,#+0
        BEQ.N    ??LED_Set_16
        CMP      R1,#+2
        BEQ.N    ??LED_Set_17
        BCS.N    ??LED_Set_15
//  109 		{
//  110 		case ON:
//  111 		case OFF:
//  112 			LED4_O = state;
??LED_Set_16:
        LDR.N    R0,??DataTable1_6  ;; 0x43fe004c
        STR      R1,[R0, #+0]
//  113 			break;
        B.N      ??LED_Set_15
//  114 		case TOGGLE:
//  115 			LED4_Toggle();
??LED_Set_17:
        LDR.N    R0,??DataTable1_6  ;; 0x43fe004c
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??LED_Set_18
        MOVS     R0,#+1
        B.N      ??LED_Set_19
??LED_Set_18:
        MOVS     R0,#+0
??LED_Set_19:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R1,??DataTable1_6  ;; 0x43fe004c
        STR      R0,[R1, #+0]
//  116 			break;
//  117 		}
//  118 	}
//  119 }
??LED_Set_15:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1:
        DC32     0x400ff0c0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_1:
        DC32     ??GPIO_InitStructure

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_2:
        DC32     0x400ff000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_3:
        DC32     0x43fe1834

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_4:
        DC32     0x43fe1838

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_5:
        DC32     0x43fe183c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_6:
        DC32     0x43fe004c
//  120 
//  121 /****Objects**************************************************/
//  122 

        SECTION `.data`:DATA:REORDER:NOROOT(2)
        DATA
//  123 LED_CLASS led = {&LED_Init, &LED_Set};
led:
        DC32 LED_Init, LED_Set

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
//  20 bytes in section .bss
//   8 bytes in section .data
// 390 bytes in section .text
// 
// 390 bytes of CODE memory
//  28 bytes of DATA memory
//
//Errors: none
//Warnings: none
