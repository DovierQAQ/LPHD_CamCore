///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.50.1.10123/W32 for ARM      04/Aug/2018  19:58:28
// Copyright 1999-2015 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\ShowD\Desktop\LPHD\LPHD_camCore\LPHD_camCore\app\UI\UI.c
//    Command line =  
//        C:\Users\ShowD\Desktop\LPHD\LPHD_camCore\LPHD_camCore\app\UI\UI.c -D
//        LPLD_K60 -D USE_K60D10 -lCN
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
//        C:\Users\ShowD\Desktop\LPHD\LPHD_camCore\LPHD_camCore\iar\FLASH\List\UI.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN UI_Menu
        EXTERN oled

        PUBLIC UI_ProcessKey
        PUBLIC UI_SetCursor
        PUBLIC UI_SetLevel
        PUBLIC UI_Update
        PUBLIC ui

// C:\Users\ShowD\Desktop\LPHD\LPHD_camCore\LPHD_camCore\app\UI\UI.c
//    1 #include "UI.h"
//    2 
//    3 /****Discription**********************************************/
//    4 
//    5 /*
//    6 	0.针对副单片机编写的UI，可能移植性不太好，不做过多的说明了
//    7 
//    8 	@Time	2018-05-08
//    9 	@Author	郭帆
//   10 	@Usefor	UI
//   11 */
//   12 
//   13 /****Definitions**********************************************/
//   14 
//   15 #define UI_CURSOR	('z' + 1)
//   16 
//   17 #define UI_MENU		0
//   18 
//   19 /****Functions************************************************/
//   20 
//   21 void UI_SetLevel(int level);
//   22 void UI_SetCursor(int level, int num);
//   23 void UI_Update(void);
//   24 void UI_ProcessKey(void);
//   25 
//   26 /****Variables************************************************/
//   27 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   28 static int flag_static = 0, flag_cursor = 0;
flag_static:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
flag_cursor:
        DS8 4
//   29 
//   30 /****Objects**************************************************/
//   31 

        SECTION `.data`:DATA:REORDER:NOROOT(2)
        DATA
//   32 UI_CLASS ui =
ui:
        DC32 UI_SetLevel, UI_SetCursor, UI_Update, 0H
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
//   33 {
//   34 	&UI_SetLevel,
//   35 	&UI_SetCursor,
//   36 	&UI_Update,
//   37 
//   38 	0
//   39 };
//   40 
//   41 /****Functions************************************************/
//   42 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   43 void UI_SetLevel(int level)
//   44 {
//   45 	ui.level = level;
UI_SetLevel:
        LDR.N    R1,??DataTable3
        STR      R0,[R1, #+24]
//   46 	flag_static = 1;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable3_1
        STR      R0,[R1, #+0]
//   47 }
        BX       LR               ;; return
//   48 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   49 void UI_SetCursor(int level, int num)
//   50 {
//   51 	ui.cursor[level] += num;
UI_SetCursor:
        LDR.N    R2,??DataTable3
        ADDS     R2,R2,R0, LSL #+2
        LDR      R2,[R2, #+28]
        ADDS     R1,R1,R2
        LDR.N    R2,??DataTable3
        ADDS     R2,R2,R0, LSL #+2
        STR      R1,[R2, #+28]
//   52 
//   53 	if (ui.cursor[level] > 7)
        LDR.N    R1,??DataTable3
        ADDS     R1,R1,R0, LSL #+2
        LDR      R1,[R1, #+28]
        CMP      R1,#+8
        BLT.N    ??UI_SetCursor_0
//   54 		ui.cursor[level] = 0;
        MOVS     R1,#+0
        LDR.N    R2,??DataTable3
        ADDS     R0,R2,R0, LSL #+2
        STR      R1,[R0, #+28]
        B.N      ??UI_SetCursor_1
//   55 	else if (ui.cursor[level] < 0)
??UI_SetCursor_0:
        LDR.N    R1,??DataTable3
        ADDS     R1,R1,R0, LSL #+2
        LDR      R1,[R1, #+28]
        CMP      R1,#+0
        BPL.N    ??UI_SetCursor_1
//   56 		ui.cursor[level] = 7;
        MOVS     R1,#+7
        LDR.N    R2,??DataTable3
        ADDS     R0,R2,R0, LSL #+2
        STR      R1,[R0, #+28]
//   57 
//   58 	flag_cursor = 1;
??UI_SetCursor_1:
        MOVS     R0,#+1
        LDR.N    R1,??DataTable3_2
        STR      R0,[R1, #+0]
//   59 }
        BX       LR               ;; return
//   60 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   61 void UI_Update(void)
//   62 {
UI_Update:
        PUSH     {R4,LR}
//   63 	int i;
//   64 
//   65 	if (flag_static)
        LDR.N    R0,??DataTable3_1
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??UI_Update_0
//   66 	{
//   67 		for (i = 0; i < 8; i++)
        MOVS     R4,#+0
        B.N      ??UI_Update_1
//   68 			oled.Printf(i, 0, UI_Menu[i]);
??UI_Update_2:
        LDR.N    R0,??DataTable3_3
        MOVS     R1,#+22
        MLA      R2,R1,R4,R0
        MOVS     R1,#+0
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R3,??DataTable3_4
        LDR      R3,[R3, #+8]
        BLX      R3
        ADDS     R4,R4,#+1
??UI_Update_1:
        CMP      R4,#+8
        BLT.N    ??UI_Update_2
//   69 
//   70 		flag_static = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable3_1
        STR      R0,[R1, #+0]
//   71 	}
//   72 
//   73 	if (flag_cursor)
??UI_Update_0:
        LDR.N    R0,??DataTable3_2
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??UI_Update_3
//   74 		oled.Putchar(ui.cursor[ui.level], 6, UI_CURSOR);
        MOVS     R2,#+123
        MOVS     R1,#+6
        LDR.N    R0,??DataTable3
        LDR.N    R3,??DataTable3
        LDR      R3,[R3, #+24]
        ADDS     R0,R0,R3, LSL #+2
        LDR      R0,[R0, #+28]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R3,??DataTable3_4
        LDR      R3,[R3, #+4]
        BLX      R3
//   75 }
??UI_Update_3:
        POP      {R4,PC}          ;; return
//   76 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   77 void UI_ProcessKey(void)
//   78 {
UI_ProcessKey:
        PUSH     {R7,LR}
//   79 	if (ui.keyNow)
        LDR.N    R0,??DataTable3
        LDR      R0,[R0, #+16]
        CMP      R0,#+0
        BEQ.N    ??UI_ProcessKey_0
//   80 	{
//   81 		switch (ui.keyNow)
        LDR.N    R0,??DataTable3
        LDR      R0,[R0, #+16]
        CMP      R0,#+1
        BEQ.N    ??UI_ProcessKey_1
        BCC.N    ??UI_ProcessKey_2
        CMP      R0,#+3
        BEQ.N    ??UI_ProcessKey_3
        BCC.N    ??UI_ProcessKey_4
        CMP      R0,#+5
        BEQ.N    ??UI_ProcessKey_5
        BCC.N    ??UI_ProcessKey_6
        CMP      R0,#+6
        BEQ.N    ??UI_ProcessKey_7
        B.N      ??UI_ProcessKey_2
//   82 		{
//   83 			/*-------------------------------------------------------*/
//   84 		case KEY_UP:
//   85 			ui.SetCursor(ui.level, -1);
??UI_ProcessKey_1:
        MOVS     R1,#-1
        LDR.N    R0,??DataTable3
        LDR      R0,[R0, #+24]
        LDR.N    R2,??DataTable3
        LDR      R2,[R2, #+4]
        BLX      R2
//   86 			break;
        B.N      ??UI_ProcessKey_2
//   87 
//   88 			/*-------------------------------------------------------*/
//   89 		case KEY_DOWN:
//   90 			ui.SetCursor(ui.level, 1);
??UI_ProcessKey_4:
        MOVS     R1,#+1
        LDR.N    R0,??DataTable3
        LDR      R0,[R0, #+24]
        LDR.N    R2,??DataTable3
        LDR      R2,[R2, #+4]
        BLX      R2
//   91 			break;
        B.N      ??UI_ProcessKey_2
//   92 
//   93 			/*-------------------------------------------------------*/
//   94 		case KEY_RIGHT:
//   95 			break;
??UI_ProcessKey_3:
        B.N      ??UI_ProcessKey_2
//   96 
//   97 			/*-------------------------------------------------------*/
//   98 		case KEY_LEFT:
//   99 			break;
??UI_ProcessKey_6:
        B.N      ??UI_ProcessKey_2
//  100 
//  101 			/*-------------------------------------------------------*/
//  102 		case KEY_MAKE:
//  103 			break;
??UI_ProcessKey_5:
        B.N      ??UI_ProcessKey_2
//  104 
//  105 			/*-------------------------------------------------------*/
//  106 		case KEY_BACK:
//  107 			break;
//  108 		}
//  109 
//  110 		ui.keyNow = KEY_NONE;
??UI_ProcessKey_7:
??UI_ProcessKey_2:
        MOVS     R0,#+0
        LDR.N    R1,??DataTable3
        STR      R0,[R1, #+16]
//  111 	}
//  112 }
??UI_ProcessKey_0:
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3:
        DC32     ui

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_1:
        DC32     flag_static

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_2:
        DC32     flag_cursor

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_3:
        DC32     UI_Menu

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_4:
        DC32     oled

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
//   8 bytes in section .bss
//  68 bytes in section .data
// 266 bytes in section .text
// 
// 266 bytes of CODE memory
//  76 bytes of DATA memory
//
//Errors: none
//Warnings: none
