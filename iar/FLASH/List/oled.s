///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.50.1.10123/W32 for ARM      04/Aug/2018  19:58:27
// Copyright 1999-2015 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\ShowD\Desktop\LPHD\LPHD_camCore\LPHD_camCore\app\oled\oled.c
//    Command line =  
//        C:\Users\ShowD\Desktop\LPHD\LPHD_camCore\LPHD_camCore\app\oled\oled.c
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
//        C:\Users\ShowD\Desktop\LPHD\LPHD_camCore\LPHD_camCore\iar\FLASH\List\oled.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN LPLD_GPIO_Init
        EXTERN LPLD_GPIO_Output_b
        EXTERN __aeabi_f2iz
        EXTERN __aeabi_fadd
        EXTERN __aeabi_fmul
        EXTERN __aeabi_memcpy4
        EXTERN calc
        EXTERN camera
        EXTERN ubyRange

        PUBLIC CH16x16
        PUBLIC F6x8
        PUBLIC OLED_DelayMs
        PUBLIC OLED_DispACat
        PUBLIC OLED_DispAImg
        PUBLIC OLED_DispMyScene
        PUBLIC OLED_DisplayImg
        PUBLIC OLED_DisplayImgCalc
        PUBLIC OLED_Fill
        PUBLIC OLED_GPIO_Config
        PUBLIC OLED_Init
        PUBLIC OLED_PrintCharValue
        PUBLIC OLED_PrintFloatValue
        PUBLIC OLED_PrintIntValue
        PUBLIC OLED_PrintUintValue
        PUBLIC OLED_Put16x16CH
        PUBLIC OLED_Put6x8Char
        PUBLIC OLED_Put6x8Str
        PUBLIC OLED_SetPosition
        PUBLIC OLED_WriteCmd
        PUBLIC OLED_WriteData
        PUBLIC OLED_cat
        PUBLIC OLED_img
        PUBLIC SetAddressingMode
        PUBLIC SetChargePump
        PUBLIC SetColumnAddress
        PUBLIC SetCommonConfig
        PUBLIC SetCommonRemap
        PUBLIC SetContrastControl
        PUBLIC SetDisplayClock
        PUBLIC SetDisplayOffset
        PUBLIC SetDisplay_On_Off
        PUBLIC SetEntireDisplay
        PUBLIC SetInverseDisplay
        PUBLIC SetMultiplexRatio
        PUBLIC SetNOP
        PUBLIC SetPageAddress
        PUBLIC SetPrechargePeriod
        PUBLIC SetSegmentRemap
        PUBLIC SetStartColumn
        PUBLIC SetStartLine
        PUBLIC SetStartPage
        PUBLIC SetVCOMH
        PUBLIC oled

// C:\Users\ShowD\Desktop\LPHD\LPHD_camCore\LPHD_camCore\app\oled\oled.c
//    1 #include "oled.h"
//    2 
//    3 /****Discription**********************************************/
//    4 
//    5 /*
//    6 	0.oled驱动程序
//    7 	1.需先调用oled.Init()函数再使用本驱动
//    8 	2.oled.Printf(int, int, char *)函数可以在屏幕上打印字符串
//    9 	3.oled.PrintXXXXValue(int, int, data)函数可以在屏幕上打印相应的数值
//   10 		具体XXXX的写法参照h文件
//   11 	4.字库可以往后面加
//   12 
//   13 	@Time	2018-04-24
//   14 	@Author	郭帆
//   15 	@Usefor	oled驱动
//   16 */
//   17 
//   18 /****Variables************************************************/
//   19 

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
//   20 const unsigned char F6x8[][6] =
F6x8:
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 47, 0, 0, 0, 0, 7, 0, 7, 0, 0, 20, 127
        DC8 20, 127, 20, 0, 36, 42, 127, 42, 18, 0, 98, 100, 8, 19, 35, 0, 54
        DC8 73, 85, 34, 80, 0, 0, 5, 3, 0, 0, 0, 0, 28, 34, 65, 0, 0, 0, 65, 34
        DC8 28, 0, 0, 20, 8, 62, 8, 20, 0, 8, 8, 62, 8, 8, 0, 0, 0, 160, 96, 0
        DC8 0, 8, 8, 8, 8, 8, 0, 0, 96, 96, 0, 0, 0, 32, 16, 8, 4, 2, 0, 62, 81
        DC8 73, 69, 62, 0, 0, 66, 127, 64, 0, 0, 66, 97, 81, 73, 70, 0, 33, 65
        DC8 69, 75, 49, 0, 24, 20, 18, 127, 16, 0, 39, 69, 69, 69, 57, 0, 60
        DC8 74, 73, 73, 48, 0, 1, 113, 9, 5, 3, 0, 54, 73, 73, 73, 54, 0, 6, 73
        DC8 73, 41, 30, 0, 0, 54, 54, 0, 0, 0, 0, 86, 54, 0, 0, 0, 8, 20, 34
        DC8 65, 0, 0, 20, 20, 20, 20, 20, 0, 0, 65, 34, 20, 8, 0, 2, 1, 81, 9
        DC8 6, 0, 50, 73, 89, 81, 62, 0, 124, 18, 17, 18, 124, 0, 127, 73, 73
        DC8 73, 54, 0, 62, 65, 65, 65, 34, 0, 127, 65, 65, 34, 28, 0, 127, 73
        DC8 73, 73, 65, 0, 127, 9, 9, 9, 1, 0, 62, 65, 73, 73, 122, 0, 127, 8
        DC8 8, 8, 127, 0, 0, 65, 127, 65, 0, 0, 32, 64, 65, 63, 1, 0, 127, 8
        DC8 20, 34, 65, 0, 127, 64, 64, 64, 64, 0, 127, 2, 12, 2, 127, 0, 127
        DC8 4, 8, 16, 127, 0, 62, 65, 65, 65, 62, 0, 127, 9, 9, 9, 6, 0, 62, 65
        DC8 81, 33, 94, 0, 127, 9, 25, 41, 70, 0, 70, 73, 73, 73, 49, 0, 1, 1
        DC8 127, 1, 1, 0, 63, 64, 64, 64, 63, 0, 31, 32, 64, 32, 31, 0, 63, 64
        DC8 56, 64, 63, 0, 99, 20, 8, 20, 99, 0, 7, 8, 112, 8, 7, 0, 97, 81, 73
        DC8 69, 67, 0, 0, 127, 65, 65, 0, 0, 2, 4, 8, 16, 32, 0, 0, 65, 65, 127
        DC8 0, 0, 4, 2, 1, 2, 4, 0, 64, 64, 64, 64, 64, 0, 0, 1, 2, 4, 0, 0, 32
        DC8 84, 84, 84, 120, 0, 127, 72, 68, 68, 56, 0, 56, 68, 68, 68, 32, 0
        DC8 56, 68, 68, 72, 127, 0, 56, 84, 84, 84, 24, 0, 8, 126, 9, 1, 2, 0
        DC8 24, 164, 164, 164, 124, 0, 127, 8, 4, 4, 120, 0, 0, 68, 125, 64, 0
        DC8 0, 64, 128, 132, 125, 0, 0, 127, 16, 40, 68, 0, 0, 0, 65, 127, 64
        DC8 0, 0, 124, 4, 24, 4, 120, 0, 124, 8, 4, 4, 120, 0, 56, 68, 68, 68
        DC8 56, 0, 252, 36, 36, 36, 24, 0, 24, 36, 36, 24, 252, 0, 124, 8, 4, 4
        DC8 8, 0, 72, 84, 84, 84, 32, 0, 4, 63, 68, 64, 32, 0, 60, 64, 64, 32
        DC8 124, 0, 28, 32, 64, 32, 28, 0, 60, 64, 48, 64, 60, 0, 68, 40, 16
        DC8 40, 68, 0, 28, 160, 160, 160, 124, 0, 68, 100, 84, 76, 68, 8, 8, 73
        DC8 42, 20, 8
//   21 {
//   22 	{ 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 },   // sp
//   23 	{ 0x00, 0x00, 0x00, 0x2f, 0x00, 0x00 },   // !
//   24 	{ 0x00, 0x00, 0x07, 0x00, 0x07, 0x00 },   // "
//   25 	{ 0x00, 0x14, 0x7f, 0x14, 0x7f, 0x14 },   // #
//   26 	{ 0x00, 0x24, 0x2a, 0x7f, 0x2a, 0x12 },   // $
//   27 	{ 0x00, 0x62, 0x64, 0x08, 0x13, 0x23 },   // %
//   28 	{ 0x00, 0x36, 0x49, 0x55, 0x22, 0x50 },   // &
//   29 	{ 0x00, 0x00, 0x05, 0x03, 0x00, 0x00 },   // '
//   30 	{ 0x00, 0x00, 0x1c, 0x22, 0x41, 0x00 },   // (
//   31 	{ 0x00, 0x00, 0x41, 0x22, 0x1c, 0x00 },   // )
//   32 	{ 0x00, 0x14, 0x08, 0x3E, 0x08, 0x14 },   // *
//   33 	{ 0x00, 0x08, 0x08, 0x3E, 0x08, 0x08 },   // +
//   34 	{ 0x00, 0x00, 0x00, 0xA0, 0x60, 0x00 },   // ,
//   35 	{ 0x00, 0x08, 0x08, 0x08, 0x08, 0x08 },   // -
//   36 	{ 0x00, 0x00, 0x60, 0x60, 0x00, 0x00 },   // .
//   37 	{ 0x00, 0x20, 0x10, 0x08, 0x04, 0x02 },   // /
//   38 	{ 0x00, 0x3E, 0x51, 0x49, 0x45, 0x3E },   // 0
//   39 	{ 0x00, 0x00, 0x42, 0x7F, 0x40, 0x00 },   // 1
//   40 	{ 0x00, 0x42, 0x61, 0x51, 0x49, 0x46 },   // 2
//   41 	{ 0x00, 0x21, 0x41, 0x45, 0x4B, 0x31 },   // 3
//   42 	{ 0x00, 0x18, 0x14, 0x12, 0x7F, 0x10 },   // 4
//   43 	{ 0x00, 0x27, 0x45, 0x45, 0x45, 0x39 },   // 5
//   44 	{ 0x00, 0x3C, 0x4A, 0x49, 0x49, 0x30 },   // 6
//   45 	{ 0x00, 0x01, 0x71, 0x09, 0x05, 0x03 },   // 7
//   46 	{ 0x00, 0x36, 0x49, 0x49, 0x49, 0x36 },   // 8
//   47 	{ 0x00, 0x06, 0x49, 0x49, 0x29, 0x1E },   // 9
//   48 	{ 0x00, 0x00, 0x36, 0x36, 0x00, 0x00 },   // :
//   49 	{ 0x00, 0x00, 0x56, 0x36, 0x00, 0x00 },   // ;
//   50 	{ 0x00, 0x08, 0x14, 0x22, 0x41, 0x00 },   // <
//   51 	{ 0x00, 0x14, 0x14, 0x14, 0x14, 0x14 },   // =
//   52 	{ 0x00, 0x00, 0x41, 0x22, 0x14, 0x08 },   // >
//   53 	{ 0x00, 0x02, 0x01, 0x51, 0x09, 0x06 },   // ?
//   54 	{ 0x00, 0x32, 0x49, 0x59, 0x51, 0x3E },   // @
//   55 	{ 0x00, 0x7C, 0x12, 0x11, 0x12, 0x7C },   // A
//   56 	{ 0x00, 0x7F, 0x49, 0x49, 0x49, 0x36 },   // B
//   57 	{ 0x00, 0x3E, 0x41, 0x41, 0x41, 0x22 },   // C
//   58 	{ 0x00, 0x7F, 0x41, 0x41, 0x22, 0x1C },   // D
//   59 	{ 0x00, 0x7F, 0x49, 0x49, 0x49, 0x41 },   // E
//   60 	{ 0x00, 0x7F, 0x09, 0x09, 0x09, 0x01 },   // F
//   61 	{ 0x00, 0x3E, 0x41, 0x49, 0x49, 0x7A },   // G
//   62 	{ 0x00, 0x7F, 0x08, 0x08, 0x08, 0x7F },   // H
//   63 	{ 0x00, 0x00, 0x41, 0x7F, 0x41, 0x00 },   // I
//   64 	{ 0x00, 0x20, 0x40, 0x41, 0x3F, 0x01 },   // J
//   65 	{ 0x00, 0x7F, 0x08, 0x14, 0x22, 0x41 },   // K
//   66 	{ 0x00, 0x7F, 0x40, 0x40, 0x40, 0x40 },   // L
//   67 	{ 0x00, 0x7F, 0x02, 0x0C, 0x02, 0x7F },   // M
//   68 	{ 0x00, 0x7F, 0x04, 0x08, 0x10, 0x7F },   // N
//   69 	{ 0x00, 0x3E, 0x41, 0x41, 0x41, 0x3E },   // O
//   70 	{ 0x00, 0x7F, 0x09, 0x09, 0x09, 0x06 },   // P
//   71 	{ 0x00, 0x3E, 0x41, 0x51, 0x21, 0x5E },   // Q
//   72 	{ 0x00, 0x7F, 0x09, 0x19, 0x29, 0x46 },   // R
//   73 	{ 0x00, 0x46, 0x49, 0x49, 0x49, 0x31 },   // S
//   74 	{ 0x00, 0x01, 0x01, 0x7F, 0x01, 0x01 },   // T
//   75 	{ 0x00, 0x3F, 0x40, 0x40, 0x40, 0x3F },   // U
//   76 	{ 0x00, 0x1F, 0x20, 0x40, 0x20, 0x1F },   // V
//   77 	{ 0x00, 0x3F, 0x40, 0x38, 0x40, 0x3F },   // W
//   78 	{ 0x00, 0x63, 0x14, 0x08, 0x14, 0x63 },   // X
//   79 	{ 0x00, 0x07, 0x08, 0x70, 0x08, 0x07 },   // Y
//   80 	{ 0x00, 0x61, 0x51, 0x49, 0x45, 0x43 },   // Z
//   81 	{ 0x00, 0x00, 0x7F, 0x41, 0x41, 0x00 },   // [
//   82 	{ 0x00, 0x02, 0x04 ,0x08, 0x10, 0x20 },   // '\'
//   83 	{ 0x00, 0x00, 0x41, 0x41, 0x7F, 0x00 },   // ]
//   84 	{ 0x00, 0x04, 0x02, 0x01, 0x02, 0x04 },   // ^
//   85 	{ 0x00, 0x40, 0x40, 0x40, 0x40, 0x40 },   // _
//   86 	{ 0x00, 0x00, 0x01, 0x02, 0x04, 0x00 },   // '
//   87 	{ 0x00, 0x20, 0x54, 0x54, 0x54, 0x78 },   // a
//   88 	{ 0x00, 0x7F, 0x48, 0x44, 0x44, 0x38 },   // b
//   89 	{ 0x00, 0x38, 0x44, 0x44, 0x44, 0x20 },   // c
//   90 	{ 0x00, 0x38, 0x44, 0x44, 0x48, 0x7F },   // d
//   91 	{ 0x00, 0x38, 0x54, 0x54, 0x54, 0x18 },   // e
//   92 	{ 0x00, 0x08, 0x7E, 0x09, 0x01, 0x02 },   // f
//   93 	{ 0x00, 0x18, 0xA4, 0xA4, 0xA4, 0x7C },   // g
//   94 	{ 0x00, 0x7F, 0x08, 0x04, 0x04, 0x78 },   // h
//   95 	{ 0x00, 0x00, 0x44, 0x7D, 0x40, 0x00 },   // i
//   96 	{ 0x00, 0x40, 0x80, 0x84, 0x7D, 0x00 },   // j
//   97 	{ 0x00, 0x7F, 0x10, 0x28, 0x44, 0x00 },   // k
//   98 	{ 0x00, 0x00, 0x41, 0x7F, 0x40, 0x00 },   // l
//   99 	{ 0x00, 0x7C, 0x04, 0x18, 0x04, 0x78 },   // m
//  100 	{ 0x00, 0x7C, 0x08, 0x04, 0x04, 0x78 },   // n
//  101 	{ 0x00, 0x38, 0x44, 0x44, 0x44, 0x38 },   // o
//  102 	{ 0x00, 0xFC, 0x24, 0x24, 0x24, 0x18 },   // p
//  103 	{ 0x00, 0x18, 0x24, 0x24, 0x18, 0xFC },   // q
//  104 	{ 0x00, 0x7C, 0x08, 0x04, 0x04, 0x08 },   // r
//  105 	{ 0x00, 0x48, 0x54, 0x54, 0x54, 0x20 },   // s
//  106 	{ 0x00, 0x04, 0x3F, 0x44, 0x40, 0x20 },   // t
//  107 	{ 0x00, 0x3C, 0x40, 0x40, 0x20, 0x7C },   // u
//  108 	{ 0x00, 0x1C, 0x20, 0x40, 0x20, 0x1C },   // v
//  109 	{ 0x00, 0x3C, 0x40, 0x30, 0x40, 0x3C },   // w
//  110 	{ 0x00, 0x44, 0x28, 0x10, 0x28, 0x44 },   // x
//  111 	{ 0x00, 0x1C, 0xA0, 0xA0, 0xA0, 0x7C },   // y
//  112 	{ 0x00, 0x44, 0x64, 0x54, 0x4C, 0x44 },   // z
//  113 	{ 0x08, 0x08, 0x49, 0x2A, 0x14, 0x08 }    // cursor
//  114 };
//  115 
//  116 /****Function list********************************************/
//  117 
//  118 void OLED_WriteData(unsigned char data);
//  119 void OLED_WriteCmd(unsigned char cmd);
//  120 void OLED_SetPosition(unsigned char x, unsigned char y);
//  121 void OLED_Fill(unsigned char bmp_data);
//  122 void OLED_DelayMs(unsigned int ms);
//  123 
//  124 void SetStartColumn(unsigned char column);
//  125 void SetAddressingMode(unsigned char mode);
//  126 void SetColumnAddress(unsigned char begin, unsigned char end);
//  127 void SetPageAddress(unsigned char begin, unsigned char end);
//  128 void SetStartLine(unsigned char line);
//  129 void SetContrastControl(unsigned char contrast);
//  130 void SetChargePump(unsigned char cmd);
//  131 void SetSegmentRemap(unsigned char cmd);
//  132 void SetEntireDisplay(unsigned char cmd);
//  133 void SetInverseDisplay(unsigned char cmd);
//  134 void SetMultiplexRatio(unsigned char cmd);
//  135 void SetDisplay_On_Off(unsigned char cmd);
//  136 void SetStartPage(unsigned char address);
//  137 void SetCommonRemap(unsigned char dir);
//  138 void SetDisplayOffset(unsigned char cmd);
//  139 void SetDisplayClock(unsigned char cmd);
//  140 void SetPrechargePeriod(unsigned char cmd);
//  141 void SetCommonConfig(unsigned char cmd);
//  142 void SetVCOMH(unsigned char cmd);
//  143 void SetNOP(void);
//  144 void OLED_Init(void);
//  145 void OLED_GPIO_Config(void);
//  146 
//  147 void OLED_Put6x8Char(unsigned char x, unsigned char y, unsigned char ch);
//  148 void OLED_Put6x8Str(unsigned char x, unsigned char y, unsigned char ch[]);
//  149 void OLED_PrintCharValue(unsigned char x, unsigned char y, unsigned char data);
//  150 void OLED_PrintIntValue(unsigned char x, unsigned char y, int data);
//  151 void OLED_PrintUintValue(unsigned char x, unsigned char y, unsigned int data);
//  152 void OLED_PrintFloatValue(unsigned char x, unsigned char y, float data);
//  153 void OLED_DisplayImgCalc(void);
//  154 void OLED_DisplayImg(void);
//  155 void OLED_Put16x16CH(unsigned char x, unsigned char y, unsigned char num);
//  156 void OLED_DispACat(unsigned char x, unsigned char y);
//  157 void OLED_DispAImg(void);
//  158 void OLED_DispMyScene(void);
//  159 
//  160 /****Objects**************************************************/
//  161 

        SECTION `.data`:DATA:REORDER:NOROOT(2)
        DATA
//  162 OLED_CLASS oled =
oled:
        DC32 OLED_Init, OLED_Put6x8Char, OLED_Put6x8Str, OLED_PrintCharValue
        DC32 OLED_PrintIntValue, OLED_PrintUintValue, OLED_PrintFloatValue
        DC32 OLED_DisplayImgCalc, OLED_DisplayImg, OLED_Put16x16CH
        DC32 OLED_DispACat, OLED_DispAImg, OLED_DispMyScene
//  163 {
//  164 	&OLED_Init,
//  165 	&OLED_Put6x8Char,
//  166 	&OLED_Put6x8Str,
//  167 	&OLED_PrintCharValue,
//  168 	&OLED_PrintIntValue,
//  169 	&OLED_PrintUintValue,
//  170 	&OLED_PrintFloatValue,
//  171 	&OLED_DisplayImgCalc,
//  172 	&OLED_DisplayImg,
//  173 	&OLED_Put16x16CH,
//  174 	&OLED_DispACat,
//  175 	&OLED_DispAImg,
//  176 	&OLED_DispMyScene
//  177 };
//  178 
//  179 /****Functions************************************************/
//  180 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//  181 void OLED_WriteData(unsigned char data)
//  182 {
OLED_WriteData:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
//  183 	unsigned char i = 8;
        MOVS     R5,#+8
//  184 
//  185 	OLED_DC(1);
        MOVS     R2,#+1
        MOVS     R1,#+3
        LDR.W    R0,??DataTable12  ;; 0x400ff100
        BL       LPLD_GPIO_Output_b
//  186 	OLED_SCLK(0);
        MOVS     R2,#+0
        MOVS     R1,#+2
        LDR.W    R0,??DataTable12  ;; 0x400ff100
        BL       LPLD_GPIO_Output_b
        B.N      ??OLED_WriteData_0
//  187 
//  188 	while(i--)
//  189 	{
//  190 		if(data & 0x80)
//  191 			OLED_SDA(1);
//  192 		else
//  193 			OLED_SDA(0);
??OLED_WriteData_1:
        MOVS     R2,#+0
        MOVS     R1,#+0
        LDR.W    R0,??DataTable12  ;; 0x400ff100
        BL       LPLD_GPIO_Output_b
//  194 
//  195 		OLED_SCLK(1);
??OLED_WriteData_2:
        MOVS     R2,#+1
        MOVS     R1,#+2
        LDR.W    R0,??DataTable12  ;; 0x400ff100
        BL       LPLD_GPIO_Output_b
//  196 		asm("nop");
        nop
//  197 		OLED_SCLK(0);
        MOVS     R2,#+0
        MOVS     R1,#+2
        LDR.W    R0,??DataTable12  ;; 0x400ff100
        BL       LPLD_GPIO_Output_b
//  198 
//  199 		data <<= 1;
        LSLS     R4,R4,#+1
??OLED_WriteData_0:
        MOVS     R0,R5
        SUBS     R5,R0,#+1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??OLED_WriteData_3
        LSLS     R0,R4,#+24
        BPL.N    ??OLED_WriteData_1
        MOVS     R2,#+1
        MOVS     R1,#+0
        LDR.W    R0,??DataTable12  ;; 0x400ff100
        BL       LPLD_GPIO_Output_b
        B.N      ??OLED_WriteData_2
//  200 	}
//  201 }
??OLED_WriteData_3:
        POP      {R0,R4,R5,PC}    ;; return
//  202 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//  203 void OLED_WriteCmd(unsigned char cmd)
//  204 {
OLED_WriteCmd:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
//  205 	unsigned char i = 8;
        MOVS     R5,#+8
//  206 
//  207 	OLED_DC(0);
        MOVS     R2,#+0
        MOVS     R1,#+3
        LDR.W    R0,??DataTable12  ;; 0x400ff100
        BL       LPLD_GPIO_Output_b
//  208 	OLED_SCLK(0);
        MOVS     R2,#+0
        MOVS     R1,#+2
        LDR.W    R0,??DataTable12  ;; 0x400ff100
        BL       LPLD_GPIO_Output_b
        B.N      ??OLED_WriteCmd_0
//  209 
//  210 	while(i--)
//  211 	{
//  212 		if(cmd & 0x80)
//  213 			OLED_SDA(1);
//  214 		else
//  215 			OLED_SDA(0);
??OLED_WriteCmd_1:
        MOVS     R2,#+0
        MOVS     R1,#+0
        LDR.W    R0,??DataTable12  ;; 0x400ff100
        BL       LPLD_GPIO_Output_b
//  216 
//  217 		OLED_SCLK(1);
??OLED_WriteCmd_2:
        MOVS     R2,#+1
        MOVS     R1,#+2
        LDR.W    R0,??DataTable12  ;; 0x400ff100
        BL       LPLD_GPIO_Output_b
//  218 		asm("nop");
        nop
//  219 		OLED_SCLK(0);
        MOVS     R2,#+0
        MOVS     R1,#+2
        LDR.W    R0,??DataTable12  ;; 0x400ff100
        BL       LPLD_GPIO_Output_b
//  220 
//  221 		cmd <<= 1;
        LSLS     R4,R4,#+1
??OLED_WriteCmd_0:
        MOVS     R0,R5
        SUBS     R5,R0,#+1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??OLED_WriteCmd_3
        LSLS     R0,R4,#+24
        BPL.N    ??OLED_WriteCmd_1
        MOVS     R2,#+1
        MOVS     R1,#+0
        LDR.W    R0,??DataTable12  ;; 0x400ff100
        BL       LPLD_GPIO_Output_b
        B.N      ??OLED_WriteCmd_2
//  222 	}
//  223 }
??OLED_WriteCmd_3:
        POP      {R0,R4,R5,PC}    ;; return
//  224 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  225 void OLED_SetPosition(unsigned char x, unsigned char y)
//  226 {
OLED_SetPosition:
        PUSH     {R4,LR}
        MOVS     R4,R0
//  227 	OLED_WriteCmd(0xB0 + y);
        SUBS     R0,R1,#+80
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED_WriteCmd
//  228 	OLED_WriteCmd(((x & 0xF0) >> 4) | 0x10);
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSRS     R0,R0,#+4
        ORRS     R0,R0,#0x10
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED_WriteCmd
//  229 	OLED_WriteCmd((x & 0x0F) | 0x00);
        ANDS     R0,R4,#0xF
        BL       OLED_WriteCmd
//  230 }
        POP      {R4,PC}          ;; return
//  231 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  232 void OLED_Fill(unsigned char bmp_data)
//  233 {
OLED_Fill:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
//  234 	unsigned char x, y;
//  235 
//  236 	for(y = 0 ; y < 8 ; y++)
        MOVS     R6,#+0
        B.N      ??OLED_Fill_0
//  237 	{
//  238 		OLED_WriteCmd(0xB0 + y);	// 0xb0 + 0~7 means page 0~7
//  239 		OLED_WriteCmd(0x00);	// 0x00 + 0~16 means 128 pixs / 16
//  240 		OLED_WriteCmd(0x10);	// 0x10 + 0~16 means 128 pixs / 16 groups
//  241 
//  242 		for(x = 0 ; x < 128 ; x++)
//  243 			OLED_WriteData(bmp_data);
??OLED_Fill_1:
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED_WriteData
        ADDS     R5,R5,#+1
??OLED_Fill_2:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+128
        BLT.N    ??OLED_Fill_1
        ADDS     R6,R6,#+1
??OLED_Fill_0:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+8
        BGE.N    ??OLED_Fill_3
        SUBS     R0,R6,#+80
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED_WriteCmd
        MOVS     R0,#+0
        BL       OLED_WriteCmd
        MOVS     R0,#+16
        BL       OLED_WriteCmd
        MOVS     R5,#+0
        B.N      ??OLED_Fill_2
//  244 	}
//  245 }
??OLED_Fill_3:
        POP      {R4-R6,PC}       ;; return
//  246 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  247 void OLED_DelayMs(unsigned int ms)
//  248 {
//  249 	uint16 i;
//  250 	while(ms--)
OLED_DelayMs:
??OLED_DelayMs_0:
        MOVS     R1,R0
        SUBS     R0,R1,#+1
        CMP      R1,#+0
        BEQ.N    ??OLED_DelayMs_1
//  251 	{
//  252 		i = 6675;
        MOVW     R1,#+6675
//  253 		while(i--);
??OLED_DelayMs_2:
        MOVS     R2,R1
        SUBS     R1,R2,#+1
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        CMP      R2,#+0
        BNE.N    ??OLED_DelayMs_2
        B.N      ??OLED_DelayMs_0
//  254 	}
//  255 }
??OLED_DelayMs_1:
        BX       LR               ;; return
//  256 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  257 void SetStartColumn(unsigned char column)
//  258 {
SetStartColumn:
        PUSH     {R4,LR}
        MOVS     R4,R0
//  259 	OLED_WriteCmd(0x00 + column % 16);	// Set Lower Column Start Address for Page Addressing Mode
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        MOVS     R0,#+16
        SDIV     R1,R4,R0
        MLS      R1,R1,R0,R4
        MOVS     R0,R1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED_WriteCmd
//  260 										// Default => 0x00
//  261 	OLED_WriteCmd(0x10 + column / 16);	// Set Higher Column Start Address for Page Addressing Mode
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        MOVS     R0,#+16
        SDIV     R0,R4,R0
        ADDS     R0,R0,#+16
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED_WriteCmd
//  262 										// Default => 0x10
//  263 }
        POP      {R4,PC}          ;; return
//  264 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  265 void SetAddressingMode(unsigned char mode)
//  266 {
SetAddressingMode:
        PUSH     {R4,LR}
        MOVS     R4,R0
//  267 	OLED_WriteCmd(0x20);	// Set Memory Addressing Mode
        MOVS     R0,#+32
        BL       OLED_WriteCmd
//  268 	OLED_WriteCmd(mode);	// Default => 0x02
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED_WriteCmd
//  269 							// 0x00 => Horizontal Addressing Mode
//  270 							// 0x01 => Vertical Addressing Mode
//  271 							// 0x02 => Page Addressing Mode
//  272 }
        POP      {R4,PC}          ;; return
//  273 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  274 void SetColumnAddress(unsigned char begin, unsigned char end)
//  275 {
SetColumnAddress:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
//  276 	OLED_WriteCmd(0x21);	// Set Column Address
        MOVS     R0,#+33
        BL       OLED_WriteCmd
//  277 	OLED_WriteCmd(begin);	// Default => 0x00 (Column Begin Address)
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED_WriteCmd
//  278 	OLED_WriteCmd(end);		// Default => 0x7F (Column End Address)
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED_WriteCmd
//  279 }
        POP      {R0,R4,R5,PC}    ;; return
//  280 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  281 void SetPageAddress(unsigned char begin, unsigned char end)
//  282 {
SetPageAddress:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
//  283 	OLED_WriteCmd(0x22);	// Set Page Address
        MOVS     R0,#+34
        BL       OLED_WriteCmd
//  284 	OLED_WriteCmd(begin);	// Default => 0x00 (Page Begin Address)
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED_WriteCmd
//  285 	OLED_WriteCmd(end);		// Default => 0x7F (Page End Address)
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED_WriteCmd
//  286 }
        POP      {R0,R4,R5,PC}    ;; return
//  287 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  288 void SetStartLine(unsigned char line)
//  289 {
SetStartLine:
        PUSH     {R7,LR}
//  290 	OLED_WriteCmd(0x40 | line);	// Set Display Start Line
        ORRS     R0,R0,#0x40
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED_WriteCmd
//  291 								// Default => 0x40 (0x00)
//  292 }
        POP      {R0,PC}          ;; return
//  293 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  294 void SetContrastControl(unsigned char contrast)
//  295 {
SetContrastControl:
        PUSH     {R4,LR}
        MOVS     R4,R0
//  296 	OLED_WriteCmd(0x81);		// Set Contrast Control
        MOVS     R0,#+129
        BL       OLED_WriteCmd
//  297 	OLED_WriteCmd(contrast);	// Default => 0x7F
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED_WriteCmd
//  298 }
        POP      {R4,PC}          ;; return
//  299 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  300 void SetChargePump(unsigned char cmd)
//  301 {
SetChargePump:
        PUSH     {R4,LR}
        MOVS     R4,R0
//  302 	OLED_WriteCmd(0x8D);		// Set Charge Pump
        MOVS     R0,#+141
        BL       OLED_WriteCmd
//  303 	OLED_WriteCmd(0x10 | cmd);	// Default => 0x10
        ORRS     R0,R4,#0x10
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED_WriteCmd
//  304 								// 0x10 (0x00) => Disable Charge Pump
//  305 								// 0x14 (0x04) => Enable Charge Pump
//  306 }
        POP      {R4,PC}          ;; return
//  307 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  308 void SetSegmentRemap(unsigned char cmd)
//  309 {
SetSegmentRemap:
        PUSH     {R7,LR}
//  310 	OLED_WriteCmd(0xA0 | cmd);	// Set Segment Re-Map
        ORRS     R0,R0,#0xA0
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED_WriteCmd
//  311 								// Default => 0xA0
//  312 								// 0xA0 (0x00) => Column Address 0 Mapped to SEG0
//  313 								// 0xA1 (0x01) => Column Address 0 Mapped to SEG127
//  314 }
        POP      {R0,PC}          ;; return
//  315 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  316 void SetEntireDisplay(unsigned char cmd)
//  317 {
SetEntireDisplay:
        PUSH     {R7,LR}
//  318 	OLED_WriteCmd(0xA4 | cmd);	// Set Entire Display On / Off
        ORRS     R0,R0,#0xA4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED_WriteCmd
//  319 								// Default => 0xA4
//  320 								// 0xA4 (0x00) => Normal Display
//  321 								// 0xA5 (0x01) => Entire Display On
//  322 }
        POP      {R0,PC}          ;; return
//  323 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  324 void SetInverseDisplay(unsigned char cmd)
//  325 {
SetInverseDisplay:
        PUSH     {R7,LR}
//  326 	OLED_WriteCmd(0xA6 | cmd);	// Set Inverse Display On/Off
        ORRS     R0,R0,#0xA6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED_WriteCmd
//  327 								// Default => 0xA6
//  328 								// 0xA6 (0x00) => Normal Display
//  329 								// 0xA7 (0x01) => Inverse Display On
//  330 }
        POP      {R0,PC}          ;; return
//  331 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  332 void SetMultiplexRatio(unsigned char cmd)
//  333 {
SetMultiplexRatio:
        PUSH     {R4,LR}
        MOVS     R4,R0
//  334 	OLED_WriteCmd(0xA8);	// Set Multiplex Ratio
        MOVS     R0,#+168
        BL       OLED_WriteCmd
//  335 	OLED_WriteCmd(cmd);		// Default => 0x3F (1/64 Duty)
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED_WriteCmd
//  336 }
        POP      {R4,PC}          ;; return
//  337 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  338 void SetDisplay_On_Off(unsigned char cmd)
//  339 {
SetDisplay_On_Off:
        PUSH     {R7,LR}
//  340 	OLED_WriteCmd(0xAE | cmd);	// Set Display On/Off
        ORRS     R0,R0,#0xAE
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED_WriteCmd
//  341 								// Default => 0xAE
//  342 								// 0xAE (0x00) => Display Off
//  343 								// 0xAF (0x01) => Display On
//  344 }
        POP      {R0,PC}          ;; return
//  345 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  346 void SetStartPage(unsigned char address)
//  347 {
SetStartPage:
        PUSH     {R7,LR}
//  348 	OLED_WriteCmd(0xB0 | address);	// Set Page Start Address for Page Addressing Mode
        ORRS     R0,R0,#0xB0
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED_WriteCmd
//  349 									// Default => 0xB0 (0x00)
//  350 }
        POP      {R0,PC}          ;; return
//  351 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  352 void SetCommonRemap(unsigned char dir)
//  353 {
SetCommonRemap:
        PUSH     {R7,LR}
//  354 	OLED_WriteCmd(0xC0 | dir);	// Set COM Output Scan Direction
        ORRS     R0,R0,#0xC0
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED_WriteCmd
//  355 								// Default => 0xC0
//  356 								// 0xC0 (0x00) => Scan from COM0 to 63
//  357 								// 0xC8 (0x08) => Scan from COM63 to 0
//  358 }
        POP      {R0,PC}          ;; return
//  359 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  360 void SetDisplayOffset(unsigned char cmd)
//  361 {
SetDisplayOffset:
        PUSH     {R4,LR}
        MOVS     R4,R0
//  362 	OLED_WriteCmd(0xD3);	// Set Display Offset
        MOVS     R0,#+211
        BL       OLED_WriteCmd
//  363 	OLED_WriteCmd(cmd);		// Default => 0x00
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED_WriteCmd
//  364 }
        POP      {R4,PC}          ;; return
//  365 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  366 void SetDisplayClock(unsigned char cmd)
//  367 {
SetDisplayClock:
        PUSH     {R4,LR}
        MOVS     R4,R0
//  368 	OLED_WriteCmd(0xD5);	// Set Display Clock Divide Ratio / Oscillator Frequency
        MOVS     R0,#+213
        BL       OLED_WriteCmd
//  369 	OLED_WriteCmd(cmd);		// Default => 0x80
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED_WriteCmd
//  370 							// D[3:0] => Display Clock Divider
//  371 							// D[7:4] => Oscillator Frequency
//  372 }
        POP      {R4,PC}          ;; return
//  373 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  374 void SetPrechargePeriod(unsigned char cmd)
//  375 {
SetPrechargePeriod:
        PUSH     {R4,LR}
        MOVS     R4,R0
//  376 	OLED_WriteCmd(0xD9);	// Set Pre-Charge Period
        MOVS     R0,#+217
        BL       OLED_WriteCmd
//  377 	OLED_WriteCmd(cmd);		// Default => 0x22 (2 Display Clocks [Phase 2] / 2 Display Clocks [Phase 1])
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED_WriteCmd
//  378 							// D[3:0] => Phase 1 Period in 1~15 Display Clocks
//  379 							// D[7:4] => Phase 2 Period in 1~15 Display Clocks
//  380 }
        POP      {R4,PC}          ;; return
//  381 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  382 void SetCommonConfig(unsigned char cmd)
//  383 {
SetCommonConfig:
        PUSH     {R4,LR}
        MOVS     R4,R0
//  384 	OLED_WriteCmd(0xDA);		// Set COM Pins Hardware Configuration
        MOVS     R0,#+218
        BL       OLED_WriteCmd
//  385 	OLED_WriteCmd(0x02 | cmd);	// Default => 0x12 (0x10)
        ORRS     R0,R4,#0x2
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED_WriteCmd
//  386 								// Alternative COM Pin Configuration
//  387 								// Disable COM Left/Right Re-Map
//  388 }
        POP      {R4,PC}          ;; return
//  389 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  390 void SetVCOMH(unsigned char cmd)
//  391 {
SetVCOMH:
        PUSH     {R4,LR}
        MOVS     R4,R0
//  392 	OLED_WriteCmd(0xDB);	// Set VCOMH Deselect Level
        MOVS     R0,#+219
        BL       OLED_WriteCmd
//  393 	OLED_WriteCmd(cmd);		// Default => 0x20 (0.77*VCC)
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED_WriteCmd
//  394 }
        POP      {R4,PC}          ;; return
//  395 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  396 void SetNOP(void)
//  397 {
SetNOP:
        PUSH     {R7,LR}
//  398 	OLED_WriteCmd(0xE3);	// Command for No Operation
        MOVS     R0,#+227
        BL       OLED_WriteCmd
//  399 }
        POP      {R0,PC}          ;; return
//  400 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  401 void OLED_Init(void)
//  402 {
OLED_Init:
        PUSH     {R7,LR}
//  403 	OLED_GPIO_Config();
        BL       OLED_GPIO_Config
//  404 
//  405 	OLED_DC(0);
        MOVS     R2,#+0
        MOVS     R1,#+3
        LDR.W    R0,??DataTable12  ;; 0x400ff100
        BL       LPLD_GPIO_Output_b
//  406 	OLED_SDA(0);
        MOVS     R2,#+0
        MOVS     R1,#+0
        LDR.W    R0,??DataTable12  ;; 0x400ff100
        BL       LPLD_GPIO_Output_b
//  407 	OLED_SCLK(0);
        MOVS     R2,#+0
        MOVS     R1,#+2
        LDR.W    R0,??DataTable12  ;; 0x400ff100
        BL       LPLD_GPIO_Output_b
//  408 	OLED_RST(0);
        MOVS     R2,#+0
        MOVS     R1,#+1
        LDR.W    R0,??DataTable12  ;; 0x400ff100
        BL       LPLD_GPIO_Output_b
//  409 	OLED_DelayMs(50);
        MOVS     R0,#+50
        BL       OLED_DelayMs
//  410 	OLED_SCLK(1);
        MOVS     R2,#+1
        MOVS     R1,#+2
        LDR.W    R0,??DataTable12  ;; 0x400ff100
        BL       LPLD_GPIO_Output_b
//  411 	OLED_RST(0);
        MOVS     R2,#+0
        MOVS     R1,#+1
        LDR.W    R0,??DataTable12  ;; 0x400ff100
        BL       LPLD_GPIO_Output_b
//  412 	OLED_DelayMs(50);
        MOVS     R0,#+50
        BL       OLED_DelayMs
//  413 	OLED_RST(1);
        MOVS     R2,#+1
        MOVS     R1,#+1
        LDR.W    R0,??DataTable12  ;; 0x400ff100
        BL       LPLD_GPIO_Output_b
//  414 
//  415 	SetDisplay_On_Off(0x00);	// Display Off (0x00/0x01)
        MOVS     R0,#+0
        BL       SetDisplay_On_Off
//  416 	SetDisplayClock(0x80);		// Set Clock as 100 Frames/Sec
        MOVS     R0,#+128
        BL       SetDisplayClock
//  417 	SetMultiplexRatio(0x3F);	// 1/64 Duty (0x0F~0x3F)
        MOVS     R0,#+63
        BL       SetMultiplexRatio
//  418 	SetDisplayOffset(0x00);		// Shift Mapping RAM Counter (0x00~0x3F)
        MOVS     R0,#+0
        BL       SetDisplayOffset
//  419 	SetStartLine(0x00);			// Set Mapping RAM Display Start Line (0x00~0x3F)
        MOVS     R0,#+0
        BL       SetStartLine
//  420 	SetChargePump(0x04);		// Enable Embedded DC/DC Converter (0x00/0x04)
        MOVS     R0,#+4
        BL       SetChargePump
//  421 	SetAddressingMode(0x02);	// Set Page Addressing Mode (0x00/0x01/0x02)
        MOVS     R0,#+2
        BL       SetAddressingMode
//  422 	SetSegmentRemap(0x01);		// Set SEG/Column Mapping     0x00左右反置 0x01正常
        MOVS     R0,#+1
        BL       SetSegmentRemap
//  423 	SetCommonRemap(0x08);		// Set COM/Row Scan Direction 0x00上下反置 0x08正常
        MOVS     R0,#+8
        BL       SetCommonRemap
//  424 	SetCommonConfig(0x10);		// Set Sequential Configuration (0x00/0x10)
        MOVS     R0,#+16
        BL       SetCommonConfig
//  425 	SetContrastControl(0xCF);	// Set SEG Output Current
        MOVS     R0,#+207
        BL       SetContrastControl
//  426 	SetPrechargePeriod(0xF1);	// Set Pre-Charge as 15 Clocks & Discharge as 1 Clock
        MOVS     R0,#+241
        BL       SetPrechargePeriod
//  427 	SetVCOMH(0x40);				// Set VCOM Deselect Level
        MOVS     R0,#+64
        BL       SetVCOMH
//  428 	SetEntireDisplay(0x00);		// Disable Entire Display On (0x00/0x01)
        MOVS     R0,#+0
        BL       SetEntireDisplay
//  429 	SetInverseDisplay(0x00);	// Disable Inverse Display On (0x00/0x01)
        MOVS     R0,#+0
        BL       SetInverseDisplay
//  430 	SetDisplay_On_Off(0x01);	// Display On (0x00/0x01)
        MOVS     R0,#+1
        BL       SetDisplay_On_Off
//  431 	OLED_Fill(0x00);
        MOVS     R0,#+0
        BL       OLED_Fill
//  432 	OLED_SetPosition(0,0);
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       OLED_SetPosition
//  433 }
        POP      {R0,PC}          ;; return
//  434 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  435 void OLED_GPIO_Config(void)
//  436 {
OLED_GPIO_Config:
        PUSH     {R7,LR}
//  437 	static GPIO_InitTypeDef GPIO_InitStructure;
//  438 
//  439 	GPIO_InitStructure.GPIO_PTx = OLED_GPIO_PTx;
        LDR.W    R0,??DataTable12  ;; 0x400ff100
        LDR.W    R1,??DataTable12_1
        STR      R0,[R1, #+0]
//  440 	GPIO_InitStructure.GPIO_Pins =  OLED_GPIO_SCLK | OLED_GPIO_SDA | OLED_GPIO_RST | OLED_GPIO_DC;
        MOVS     R0,#+15
        LDR.W    R1,??DataTable12_1
        STR      R0,[R1, #+4]
//  441 	GPIO_InitStructure.GPIO_Dir = DIR_OUTPUT;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable12_1
        STRB     R0,[R1, #+12]
//  442 	GPIO_InitStructure.GPIO_Output = OUTPUT_H;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable12_1
        STRB     R0,[R1, #+13]
//  443 
//  444 	LPLD_GPIO_Init(GPIO_InitStructure);
        LDR.W    R1,??DataTable12_1
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//  445 }
        POP      {R0,PC}          ;; return

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
??GPIO_InitStructure:
        DS8 20
//  446 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  447 void OLED_Put6x8Char(unsigned char x, unsigned char y, unsigned char ch)
//  448 {
OLED_Put6x8Char:
        PUSH     {R3-R5,LR}
//  449 	unsigned char c = 0, i = 0;
        MOVS     R4,#+0
        MOVS     R5,#+0
//  450 
//  451 	c = ch - 32;
        SUBS     R4,R2,#+32
//  452 
//  453 	if(x > 122)
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+123
        BLT.N    ??OLED_Put6x8Char_0
//  454 	{
//  455 		x = 0;
        MOVS     R0,#+0
//  456 		y++;
        ADDS     R1,R1,#+1
//  457 	}
//  458 	OLED_SetPosition(x, y);
??OLED_Put6x8Char_0:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED_SetPosition
//  459 
//  460 	for(i = 0 ; i < 6 ; i++)
        MOVS     R5,#+0
        B.N      ??OLED_Put6x8Char_1
//  461 		OLED_WriteData(F6x8[c][i]);
??OLED_Put6x8Char_2:
        LDR.W    R0,??DataTable12_2
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        MOVS     R1,#+6
        MLA      R0,R1,R4,R0
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        LDRB     R0,[R5, R0]
        BL       OLED_WriteData
        ADDS     R5,R5,#+1
??OLED_Put6x8Char_1:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+6
        BLT.N    ??OLED_Put6x8Char_2
//  462 }
        POP      {R0,R4,R5,PC}    ;; return
//  463 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  464 void OLED_Put6x8Str(unsigned char x, unsigned char y, unsigned char ch[])
//  465 {
OLED_Put6x8Str:
        PUSH     {R3-R9,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
//  466 	unsigned char c = 0, i = 0, j = 0;
        MOVS     R8,#+0
        MOVS     R9,#+0
        MOVS     R7,#+0
        B.N      ??OLED_Put6x8Str_0
//  467 
//  468 	while(ch[j] != '\0')
//  469 	{
//  470 		c = ch[j] - 32;
//  471 
//  472 		if(x > 126)
//  473 		{
//  474 			x = 0;
//  475 			y++;
//  476 		}
//  477 		OLED_SetPosition(x, y);
//  478 
//  479 		for(i = 0 ; i < 6 ; i++)
//  480 			OLED_WriteData(F6x8[c][i]);
??OLED_Put6x8Str_1:
        LDR.W    R0,??DataTable12_2
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        MOVS     R1,#+6
        MLA      R0,R1,R8,R0
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        LDRB     R0,[R9, R0]
        BL       OLED_WriteData
        ADDS     R9,R9,#+1
??OLED_Put6x8Str_2:
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        CMP      R9,#+6
        BLT.N    ??OLED_Put6x8Str_1
//  481 		x += 6;
        ADDS     R4,R4,#+6
//  482 		j++;
        ADDS     R7,R7,#+1
??OLED_Put6x8Str_0:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LDRB     R0,[R7, R6]
        CMP      R0,#+0
        BEQ.N    ??OLED_Put6x8Str_3
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LDRB     R0,[R7, R6]
        SUBS     R8,R0,#+32
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+127
        BLT.N    ??OLED_Put6x8Str_4
        MOVS     R4,#+0
        ADDS     R5,R5,#+1
??OLED_Put6x8Str_4:
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED_SetPosition
        MOVS     R9,#+0
        B.N      ??OLED_Put6x8Str_2
//  483 	}
//  484 }
??OLED_Put6x8Str_3:
        POP      {R0,R4-R9,PC}    ;; return
//  485 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  486 void OLED_PrintCharValue(unsigned char x, unsigned char y, unsigned char data)
//  487 {
OLED_PrintCharValue:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
//  488 	OLED_Put6x8Char(x, y, (data / 100) + 48);
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        MOVS     R0,#+100
        SDIV     R0,R6,R0
        ADDS     R2,R0,#+48
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED_Put6x8Char
//  489 	OLED_Put6x8Char(x + 6, y, ((data % 100) / 10) + 48);
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        MOVS     R0,#+100
        SDIV     R1,R6,R0
        MLS      R0,R0,R1,R6
        MOVS     R1,#+10
        SDIV     R0,R0,R1
        ADDS     R2,R0,#+48
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADDS     R0,R4,#+6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED_Put6x8Char
//  490 	OLED_Put6x8Char(x + 12, y, (data % 10) + 48);
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        MOVS     R0,#+10
        SDIV     R1,R6,R0
        MLS      R0,R0,R1,R6
        ADDS     R2,R0,#+48
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADDS     R0,R4,#+12
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED_Put6x8Char
//  491 }
        POP      {R4-R6,PC}       ;; return
//  492 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  493 void OLED_PrintIntValue(unsigned char x, unsigned char y, int data)
//  494 {
OLED_PrintIntValue:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
//  495 	if(data < 0)
        CMP      R6,#+0
        BPL.N    ??OLED_PrintIntValue_0
//  496 	{
//  497 			OLED_Put6x8Char(x, y, '-');
        MOVS     R2,#+45
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED_Put6x8Char
//  498 			data = -data;
        RSBS     R6,R6,#+0
        B.N      ??OLED_PrintIntValue_1
//  499 	}
//  500 	else
//  501 			OLED_Put6x8Char(x, y, '+');
??OLED_PrintIntValue_0:
        MOVS     R2,#+43
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED_Put6x8Char
//  502 
//  503 	OLED_Put6x8Char(x + 6, y, (data / 1000) + 48);
??OLED_PrintIntValue_1:
        MOV      R0,#+1000
        SDIV     R0,R6,R0
        ADDS     R2,R0,#+48
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADDS     R0,R4,#+6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED_Put6x8Char
//  504 	OLED_Put6x8Char(x + 12, y, ((data % 1000) / 100) + 48);
        MOV      R0,#+1000
        SDIV     R1,R6,R0
        MLS      R0,R0,R1,R6
        MOVS     R1,#+100
        SDIV     R0,R0,R1
        ADDS     R2,R0,#+48
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADDS     R0,R4,#+12
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED_Put6x8Char
//  505 	OLED_Put6x8Char(x + 18, y, ((data % 100) / 10) + 48);
        MOVS     R0,#+100
        SDIV     R1,R6,R0
        MLS      R0,R0,R1,R6
        MOVS     R1,#+10
        SDIV     R0,R0,R1
        ADDS     R2,R0,#+48
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADDS     R0,R4,#+18
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED_Put6x8Char
//  506 	OLED_Put6x8Char(x + 24, y, (data % 10) + 48);
        MOVS     R0,#+10
        SDIV     R1,R6,R0
        MLS      R0,R0,R1,R6
        ADDS     R2,R0,#+48
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADDS     R0,R4,#+24
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED_Put6x8Char
//  507 }
        POP      {R4-R6,PC}       ;; return
//  508 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  509 void OLED_PrintUintValue(unsigned char x, unsigned char y, unsigned int data)
//  510 {
OLED_PrintUintValue:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
//  511 	OLED_Put6x8Char(x + 0, y, (data / 1000) + 48);
        MOV      R0,#+1000
        UDIV     R0,R6,R0
        ADDS     R2,R0,#+48
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED_Put6x8Char
//  512 	OLED_Put6x8Char(x + 6, y, ((data % 1000) / 100) + 48);
        MOV      R0,#+1000
        UDIV     R1,R6,R0
        MLS      R0,R0,R1,R6
        MOVS     R1,#+100
        UDIV     R0,R0,R1
        ADDS     R2,R0,#+48
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADDS     R0,R4,#+6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED_Put6x8Char
//  513 	OLED_Put6x8Char(x + 12, y, ((data % 100) / 10) + 48);
        MOVS     R0,#+100
        UDIV     R1,R6,R0
        MLS      R0,R0,R1,R6
        MOVS     R1,#+10
        UDIV     R0,R0,R1
        ADDS     R2,R0,#+48
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADDS     R0,R4,#+12
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED_Put6x8Char
//  514 	OLED_Put6x8Char(x + 18, y, (data % 10) + 48);
        MOVS     R0,#+10
        UDIV     R1,R6,R0
        MLS      R0,R0,R1,R6
        ADDS     R2,R0,#+48
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADDS     R0,R4,#+18
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED_Put6x8Char
//  515 }
        POP      {R4-R6,PC}       ;; return
//  516 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  517 void OLED_PrintFloatValue(unsigned char x, unsigned char y, float data)
//  518 {
OLED_PrintFloatValue:
        PUSH     {R3-R7,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R7,R2
//  519 	int temp;
//  520 
//  521 	temp = (int)data;
        MOVS     R0,R7
        BL       __aeabi_f2iz
        MOVS     R6,R0
//  522 	OLED_Put6x8Char(x + 0, y, ((temp % 1000) / 100) + 48);
        MOV      R0,#+1000
        SDIV     R1,R6,R0
        MLS      R0,R0,R1,R6
        MOVS     R1,#+100
        SDIV     R0,R0,R1
        ADDS     R2,R0,#+48
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED_Put6x8Char
//  523 	OLED_Put6x8Char(x + 6, y, ((temp % 100) / 10) + 48);
        MOVS     R0,#+100
        SDIV     R1,R6,R0
        MLS      R0,R0,R1,R6
        MOVS     R1,#+10
        SDIV     R0,R0,R1
        ADDS     R2,R0,#+48
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADDS     R0,R4,#+6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED_Put6x8Char
//  524 	OLED_Put6x8Char(x + 12, y, (temp % 10) + 48);
        MOVS     R0,#+10
        SDIV     R1,R6,R0
        MLS      R0,R0,R1,R6
        ADDS     R2,R0,#+48
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADDS     R0,R4,#+12
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED_Put6x8Char
//  525 
//  526 	OLED_Put6x8Char(x + 18, y, '.');
        MOVS     R2,#+46
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADDS     R0,R4,#+18
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED_Put6x8Char
//  527 
//  528 	data = data * 100000 + 1;
        LDR.N    R0,??DataTable12_3  ;; 0x47c35000
        MOVS     R1,R7
        BL       __aeabi_fmul
        MOVS     R1,#+1065353216
        BL       __aeabi_fadd
        MOVS     R7,R0
//  529 	temp = (int)data;
        MOVS     R0,R7
        BL       __aeabi_f2iz
        MOVS     R6,R0
//  530 	temp %= 100000;
        LDR.N    R0,??DataTable12_4  ;; 0x186a0
        SDIV     R1,R6,R0
        MLS      R6,R0,R1,R6
//  531 	OLED_Put6x8Char(x + 24, y, (temp / 10000) + 48);
        MOVW     R0,#+10000
        SDIV     R0,R6,R0
        ADDS     R2,R0,#+48
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADDS     R0,R4,#+24
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED_Put6x8Char
//  532 	OLED_Put6x8Char(x + 30, y, ((temp % 10000) / 1000) + 48);
        MOVW     R0,#+10000
        SDIV     R1,R6,R0
        MLS      R0,R0,R1,R6
        MOV      R1,#+1000
        SDIV     R0,R0,R1
        ADDS     R2,R0,#+48
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADDS     R0,R4,#+30
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED_Put6x8Char
//  533 	OLED_Put6x8Char(x + 36, y, ((temp % 1000) / 100) + 48);
        MOV      R0,#+1000
        SDIV     R1,R6,R0
        MLS      R0,R0,R1,R6
        MOVS     R1,#+100
        SDIV     R0,R0,R1
        ADDS     R2,R0,#+48
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADDS     R0,R4,#+36
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED_Put6x8Char
//  534 }
        POP      {R0,R4-R7,PC}    ;; return
//  535 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  536 static uint8 getBufPix(uint8 x, uint8 y)
//  537 {
getBufPix:
        PUSH     {R4}
//  538 	extern uint8 ubyRange;
//  539 
//  540 	if (ubyRange)
        LDR.N    R2,??DataTable12_5
        LDRB     R2,[R2, #+0]
        CMP      R2,#+0
        BEQ.N    ??getBufPix_0
//  541 	{
//  542 		return !(camera.buf1[x][y / 8] & (1 << (7 - (y % 8))));
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R2,#+8
        SDIV     R2,R1,R2
        LDR.N    R3,??DataTable12_6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        MOVS     R4,#+20
        MLA      R0,R4,R0,R3
        ADDS     R0,R2,R0
        LDRB     R0,[R0, #+32]
        MOVS     R2,#+1
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R3,#+8
        SDIV     R4,R1,R3
        MLS      R4,R4,R3,R1
        RSBS     R1,R4,#+7
        LSLS     R1,R2,R1
        TST      R0,R1
        BNE.N    ??getBufPix_1
        MOVS     R0,#+1
        B.N      ??getBufPix_2
??getBufPix_1:
        MOVS     R0,#+0
??getBufPix_2:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        B.N      ??getBufPix_3
//  543 	}
//  544 	else
//  545 	{
//  546 		return !(camera.buf2[x][y / 8] & (1 << (7 - (y % 8))));
??getBufPix_0:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R2,#+8
        SDIV     R2,R1,R2
        LDR.N    R3,??DataTable12_6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        MOVS     R4,#+20
        MLA      R0,R4,R0,R3
        ADDS     R0,R2,R0
        LDRB     R0,[R0, #+2632]
        MOVS     R2,#+1
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R3,#+8
        SDIV     R4,R1,R3
        MLS      R4,R4,R3,R1
        RSBS     R1,R4,#+7
        LSLS     R1,R2,R1
        TST      R0,R1
        BNE.N    ??getBufPix_4
        MOVS     R0,#+1
        B.N      ??getBufPix_5
??getBufPix_4:
        MOVS     R0,#+0
??getBufPix_5:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
??getBufPix_3:
        POP      {R4}
        BX       LR               ;; return
//  547 	}
//  548 }
//  549 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  550 void OLED_DisplayImgCalc(void)
//  551 {
OLED_DisplayImgCalc:
        PUSH     {R4-R6,LR}
//  552 	uint8 data;
//  553 	uint8 i, j;
//  554 	int cnt;
//  555 
//  556 	for (i = 0; i < 8; i++)
        MOVS     R4,#+0
        B.N      ??OLED_DisplayImgCalc_0
??OLED_DisplayImgCalc_1:
        ADDS     R4,R4,#+1
??OLED_DisplayImgCalc_0:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+8
        BGE.N    ??OLED_DisplayImgCalc_2
//  557 	{
//  558 		OLED_WriteCmd(0xb0 + i);
        SUBS     R0,R4,#+80
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED_WriteCmd
//  559 		OLED_WriteCmd(0x01);
        MOVS     R0,#+1
        BL       OLED_WriteCmd
//  560 		OLED_WriteCmd(0x10);
        MOVS     R0,#+16
        BL       OLED_WriteCmd
//  561 		for (j = 0; j < 128; j++)
        MOVS     R5,#+0
        B.N      ??OLED_DisplayImgCalc_3
//  562 		{
//  563 			data = 0;
//  564 
//  565 			for (cnt = 7; cnt >= 0; cnt--)
//  566 			{
//  567 				data <<= 1;
//  568 				data |= (camera.img[((i << 3) + cnt) << 1][j + (j >> 2)] && 1);
//  569 			}
//  570 
//  571 			if (i == 7)
??OLED_DisplayImgCalc_4:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+7
        BNE.N    ??OLED_DisplayImgCalc_5
//  572 				data &= 0x0F;
        ANDS     R0,R0,#0xF
//  573 
//  574 			OLED_WriteData(data);
??OLED_DisplayImgCalc_5:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED_WriteData
        ADDS     R5,R5,#+1
??OLED_DisplayImgCalc_3:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+128
        BGE.N    ??OLED_DisplayImgCalc_1
        MOVS     R0,#+0
        MOVS     R1,#+7
        B.N      ??OLED_DisplayImgCalc_6
??OLED_DisplayImgCalc_7:
        MOVS     R2,#+0
??OLED_DisplayImgCalc_8:
        ORRS     R0,R2,R0
        SUBS     R1,R1,#+1
??OLED_DisplayImgCalc_6:
        CMP      R1,#+0
        BMI.N    ??OLED_DisplayImgCalc_4
        LSLS     R0,R0,#+1
        LDR.N    R2,??DataTable12_6
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        ADDS     R3,R1,R4, LSL #+3
        LSLS     R3,R3,#+1
        MOVS     R6,#+160
        MLA      R2,R6,R3,R2
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ASRS     R3,R5,#+2
        UXTAB    R3,R3,R5
        ADDS     R2,R3,R2
        MOVW     R3,#+5232
        LDRB     R2,[R3, R2]
        CMP      R2,#+0
        BEQ.N    ??OLED_DisplayImgCalc_7
        MOVS     R2,#+1
        B.N      ??OLED_DisplayImgCalc_8
//  575 		}
//  576 	}
//  577 }
??OLED_DisplayImgCalc_2:
        POP      {R4-R6,PC}       ;; return
//  578 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  579 void OLED_DisplayImg(void)
//  580 {
OLED_DisplayImg:
        PUSH     {R3-R7,LR}
//  581 	uint8 i, j;
//  582 	uint8 data;
//  583 	int cnt;
//  584 
//  585 	for (i = 0; i < 8; i++)
        MOVS     R4,#+0
        B.N      ??OLED_DisplayImg_0
??OLED_DisplayImg_1:
        ADDS     R4,R4,#+1
??OLED_DisplayImg_0:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+8
        BGE.N    ??OLED_DisplayImg_2
//  586 	{
//  587 		OLED_WriteCmd(0xb0 + i);
        SUBS     R0,R4,#+80
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED_WriteCmd
//  588 		OLED_WriteCmd(0x01);
        MOVS     R0,#+1
        BL       OLED_WriteCmd
//  589 		OLED_WriteCmd(0x10);
        MOVS     R0,#+16
        BL       OLED_WriteCmd
//  590 		for (j = 0; j < 128; j++)
        MOVS     R5,#+0
        B.N      ??OLED_DisplayImg_3
//  591 		{
//  592 			data = 0;
//  593 
//  594 			for (cnt = 7; cnt >= 0; cnt--)
//  595 			{
//  596 				data <<= 1;
//  597 				data |= (getBufPix(((i << 3) + cnt) << 1, j + (j >> 2)) && 1);
//  598 			}
//  599 
//  600 			if (i == 7)
??OLED_DisplayImg_4:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+7
        BNE.N    ??OLED_DisplayImg_5
//  601 				data &= 0x0F;
        ANDS     R6,R6,#0xF
//  602 
//  603 			OLED_WriteData(data);
??OLED_DisplayImg_5:
        MOVS     R0,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED_WriteData
        ADDS     R5,R5,#+1
??OLED_DisplayImg_3:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+128
        BGE.N    ??OLED_DisplayImg_1
        MOVS     R6,#+0
        MOVS     R7,#+7
        B.N      ??OLED_DisplayImg_6
??OLED_DisplayImg_7:
        MOVS     R0,#+0
??OLED_DisplayImg_8:
        ORRS     R6,R0,R6
        SUBS     R7,R7,#+1
??OLED_DisplayImg_6:
        CMP      R7,#+0
        BMI.N    ??OLED_DisplayImg_4
        LSLS     R6,R6,#+1
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADDS     R1,R5,R0, LSR #+2
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADDS     R0,R7,R4, LSL #+3
        LSLS     R0,R0,#+1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       getBufPix
        CMP      R0,#+0
        BEQ.N    ??OLED_DisplayImg_7
        MOVS     R0,#+1
        B.N      ??OLED_DisplayImg_8
//  604 		}
//  605 	}
//  606 }
??OLED_DisplayImg_2:
        POP      {R0,R4-R7,PC}    ;; return
//  607 

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
//  608 const unsigned char CH16x16[][32] =
CH16x16:
        DC8 252, 4, 252, 0, 18, 100, 16, 8, 247, 20, 84, 148, 20, 244, 4, 0, 15
        DC8 4, 15, 0, 4, 126, 1, 29, 19, 17, 85, 153, 81, 63, 17, 0, 0, 128, 96
        DC8 248, 7, 64, 32, 24, 15, 8, 200, 8, 8, 40, 24, 0, 1, 0, 0, 255, 0
        DC8 16, 12, 3, 64, 128, 127, 0, 1, 6, 24, 0, 16, 16, 240, 31, 16, 240
        DC8 0, 128, 130, 130, 226, 146, 138, 134, 128, 0, 64, 34, 21, 8, 22, 97
        DC8 0, 0, 64, 128, 127, 0, 0, 0, 0, 0, 64, 66, 204, 0, 0, 68, 84, 84
        DC8 84, 127, 84, 84, 84, 68, 64, 0, 0, 0, 127, 32, 16, 0, 255, 21, 21
        DC8 21, 85, 149, 127, 0, 0, 0, 128, 130, 130, 130, 254, 130, 130, 130
        DC8 130, 130, 254, 130, 130, 130, 128, 0, 0, 128, 64, 48, 15, 0, 0, 0
        DC8 0, 0, 255, 0, 0, 0, 0, 0, 16, 16, 240, 31, 16, 240, 0, 64, 224, 88
        DC8 71, 64, 80, 96, 192, 0, 64, 34, 21, 8, 22, 33, 0, 0, 254, 66, 66
        DC8 66, 66, 254, 0, 0, 0, 252, 4, 4, 252, 0, 0, 252, 68, 70, 69, 68, 68
        DC8 252, 0, 0, 0, 31, 8, 8, 31, 0, 0, 255, 68, 68, 68, 68, 68, 255, 0
        DC8 0, 0, 128, 96, 248, 7, 0, 248, 1, 6, 0, 4, 4, 4, 252, 0, 0, 1, 0, 0
        DC8 255, 0, 0, 255, 0, 0, 0, 0, 64, 128, 127, 0, 0, 0, 248, 12, 11, 8
        DC8 8, 248, 64, 48, 143, 8, 8, 8, 248, 0, 0, 0, 127, 33, 33, 33, 33
        DC8 127, 0, 0, 0, 67, 128, 64, 63, 0, 0, 0, 4, 36, 36, 36, 36, 36, 255
        DC8 36, 36, 36, 36, 36, 4, 0, 0, 33, 33, 17, 9, 253, 131, 65, 35, 5, 9
        DC8 17, 41, 37, 65, 65, 0, 16, 96, 2, 140, 0, 12, 164, 164, 165, 230
        DC8 164, 164, 164, 12, 0, 0, 4, 4, 126, 1, 0, 128, 79, 42, 10, 15, 10
        DC8 42, 79, 128, 0, 0, 0, 252, 4, 4, 252, 0, 254, 130, 130, 254, 130
        DC8 130, 254, 0, 0, 0, 0, 15, 4, 4, 15, 0, 63, 64, 64, 64, 64, 64, 65
        DC8 64, 120, 0, 16, 16, 16, 255, 144, 64, 16, 144, 16, 17, 22, 16, 16
        DC8 208, 16, 0, 2, 66, 129, 127, 0, 64, 64, 65, 94, 64, 64, 112, 78, 65
        DC8 64, 0, 64, 68, 84, 100, 69, 126, 68, 68, 68, 126, 69, 100, 84, 68
        DC8 64, 0, 0, 0, 0, 255, 73, 73, 73, 73, 73, 73, 73, 255, 0, 0, 0, 0, 0
        DC8 0, 62, 34, 42, 50, 34, 254, 34, 50, 42, 34, 62, 0, 0, 0, 136, 104
        DC8 9, 9, 41, 201, 9, 15, 41, 201, 9, 9, 41, 200, 8, 0, 16, 136, 196
        DC8 51, 4, 244, 148, 148, 244, 159, 244, 148, 148, 244, 4, 0, 1, 0, 255
        DC8 0, 66, 50, 2, 114, 130, 134, 154, 130, 226, 10, 50, 0, 32, 48, 172
        DC8 99, 48, 0, 0, 254, 34, 34, 34, 34, 254, 0, 0, 0, 34, 103, 34, 18
        DC8 18, 64, 64, 127, 66, 66, 66, 66, 127, 64, 64, 0, 4, 116, 84, 85, 86
        DC8 84, 116, 4, 0, 254, 2, 34, 218, 6, 0, 0, 16, 17, 81, 145, 125, 11
        DC8 9, 8, 0, 255, 8, 16, 8, 7, 0, 0, 0, 248, 8, 255, 8, 248, 0, 254, 66
        DC8 130, 2, 254, 0, 0, 0, 0, 0, 15, 0, 255, 8, 143, 96, 31, 0, 1, 0, 63
        DC8 64, 64, 120, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
//  609 {
//  610 	{0xFC,0x04,0xFC,0x00,0x12,0x64,0x10,0x08,0xF7,0x14,0x54,0x94,0x14,0xF4,0x04,0x00,
//  611 	0x0F,0x04,0x0F,0x00,0x04,0x7E,0x01,0x1D,0x13,0x11,0x55,0x99,0x51,0x3F,0x11,0x00}, // 0 hai
//  612 	{0x00,0x80,0x60,0xF8,0x07,0x40,0x20,0x18,0x0F,0x08,0xC8,0x08,0x08,0x28,0x18,0x00,
//  613 	0x01,0x00,0x00,0xFF,0x00,0x10,0x0C,0x03,0x40,0x80,0x7F,0x00,0x01,0x06,0x18,0x00}, // 1 ni
//  614 	{0x10,0x10,0xF0,0x1F,0x10,0xF0,0x00,0x80,0x82,0x82,0xE2,0x92,0x8A,0x86,0x80,0x00,
//  615 	0x40,0x22,0x15,0x08,0x16,0x61,0x00,0x00,0x40,0x80,0x7F,0x00,0x00,0x00,0x00,0x00}, // 2 hao
//  616 	{0x40,0x42,0xCC,0x00,0x00,0x44,0x54,0x54,0x54,0x7F,0x54,0x54,0x54,0x44,0x40,0x00,
//  617 	0x00,0x00,0x7F,0x20,0x10,0x00,0xFF,0x15,0x15,0x15,0x55,0x95,0x7F,0x00,0x00,0x00}, // 3 qing
//  618 	{0x80,0x82,0x82,0x82,0xFE,0x82,0x82,0x82,0x82,0x82,0xFE,0x82,0x82,0x82,0x80,0x00,
//  619 	0x00,0x80,0x40,0x30,0x0F,0x00,0x00,0x00,0x00,0x00,0xFF,0x00,0x00,0x00,0x00,0x00}, // 4 kai
//  620 	{0x10,0x10,0xF0,0x1F,0x10,0xF0,0x00,0x40,0xE0,0x58,0x47,0x40,0x50,0x60,0xC0,0x00,
//  621 	0x40,0x22,0x15,0x08,0x16,0x21,0x00,0x00,0xFE,0x42,0x42,0x42,0x42,0xFE,0x00,0x00}, // 5 shi
//  622 	{0x00,0xFC,0x04,0x04,0xFC,0x00,0x00,0xFC,0x44,0x46,0x45,0x44,0x44,0xFC,0x00,0x00,
//  623 	0x00,0x1F,0x08,0x08,0x1F,0x00,0x00,0xFF,0x44,0x44,0x44,0x44,0x44,0xFF,0x00,0x00}, // 6 zan
//  624 	{0x00,0x80,0x60,0xF8,0x07,0x00,0xF8,0x01,0x06,0x00,0x04,0x04,0x04,0xFC,0x00,0x00,
//  625 	0x01,0x00,0x00,0xFF,0x00,0x00,0xFF,0x00,0x00,0x00,0x00,0x40,0x80,0x7F,0x00,0x00}, // 7 men
//  626 	{0x00,0xF8,0x0C,0x0B,0x08,0x08,0xF8,0x40,0x30,0x8F,0x08,0x08,0x08,0xF8,0x00,0x00,
//  627 	0x00,0x7F,0x21,0x21,0x21,0x21,0x7F,0x00,0x00,0x00,0x43,0x80,0x40,0x3F,0x00,0x00}, // 8 de
//  628 	{0x00,0x04,0x24,0x24,0x24,0x24,0x24,0xFF,0x24,0x24,0x24,0x24,0x24,0x04,0x00,0x00,
//  629 	0x21,0x21,0x11,0x09,0xFD,0x83,0x41,0x23,0x05,0x09,0x11,0x29,0x25,0x41,0x41,0x00}, // 9 biao
//  630 	{0x10,0x60,0x02,0x8C,0x00,0x0C,0xA4,0xA4,0xA5,0xE6,0xA4,0xA4,0xA4,0x0C,0x00,0x00,
//  631 	0x04,0x04,0x7E,0x01,0x00,0x80,0x4F,0x2A,0x0A,0x0F,0x0A,0x2A,0x4F,0x80,0x00,0x00}, // 10 yan
//  632 	{0x00,0xFC,0x04,0x04,0xFC,0x00,0xFE,0x82,0x82,0xFE,0x82,0x82,0xFE,0x00,0x00,0x00,
//  633 	0x00,0x0F,0x04,0x04,0x0F,0x00,0x3F,0x40,0x40,0x40,0x40,0x40,0x41,0x40,0x78,0x00}, // 11 ba
//  634 	{0x10,0x10,0x10,0xFF,0x90,0x40,0x10,0x90,0x10,0x11,0x16,0x10,0x10,0xD0,0x10,0x00,
//  635 	0x02,0x42,0x81,0x7F,0x00,0x40,0x40,0x41,0x5E,0x40,0x40,0x70,0x4E,0x41,0x40,0x00}, // 12 la
//  636 	{0x40,0x44,0x54,0x64,0x45,0x7E,0x44,0x44,0x44,0x7E,0x45,0x64,0x54,0x44,0x40,0x00,
//  637 	0x00,0x00,0x00,0xFF,0x49,0x49,0x49,0x49,0x49,0x49,0x49,0xFF,0x00,0x00,0x00,0x00}, // 13 pu
//  638 	{0x00,0x00,0x3E,0x22,0x2A,0x32,0x22,0xFE,0x22,0x32,0x2A,0x22,0x3E,0x00,0x00,0x00,
//  639 	0x88,0x68,0x09,0x09,0x29,0xC9,0x09,0x0F,0x29,0xC9,0x09,0x09,0x29,0xC8,0x08,0x00}, // 14 hei
//  640 	{0x10,0x88,0xC4,0x33,0x04,0xF4,0x94,0x94,0xF4,0x9F,0xF4,0x94,0x94,0xF4,0x04,0x00,
//  641 	0x01,0x00,0xFF,0x00,0x42,0x32,0x02,0x72,0x82,0x86,0x9A,0x82,0xE2,0x0A,0x32,0x00}, // 15 de
//  642 	{0x20,0x30,0xAC,0x63,0x30,0x00,0x00,0xFE,0x22,0x22,0x22,0x22,0xFE,0x00,0x00,0x00,
//  643 	0x22,0x67,0x22,0x12,0x12,0x40,0x40,0x7F,0x42,0x42,0x42,0x42,0x7F,0x40,0x40,0x00}, // 16 zu
//  644 	{0x04,0x74,0x54,0x55,0x56,0x54,0x74,0x04,0x00,0xFE,0x02,0x22,0xDA,0x06,0x00,0x00,
//  645 	0x10,0x11,0x51,0x91,0x7D,0x0B,0x09,0x08,0x00,0xFF,0x08,0x10,0x08,0x07,0x00,0x00}, // 17
//  646 	{0x00,0xF8,0x08,0xFF,0x08,0xF8,0x00,0xFE,0x42,0x82,0x02,0xFE,0x00,0x00,0x00,0x00,
//  647 	0x00,0x0F,0x00,0xFF,0x08,0x8F,0x60,0x1F,0x00,0x01,0x00,0x3F,0x40,0x40,0x78,0x00}, // 18
//  648 	{0}
//  649 };
//  650 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  651 void OLED_Put16x16CH(unsigned char x, unsigned char y, unsigned char num)
//  652 {
OLED_Put16x16CH:
        PUSH     {R3-R7,LR}
        MOVS     R4,R0
        MOVS     R5,R1
//  653 	unsigned char c = 0, i = 0;
        MOVS     R6,#+0
        MOVS     R7,#+0
//  654 
//  655 	c = num;
        MOVS     R6,R2
//  656 
//  657 	if (x > 114)
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+115
        BLT.N    ??OLED_Put16x16CH_0
//  658 	{
//  659 		x = 0;
        MOVS     R4,#+0
//  660 		y++;
        ADDS     R5,R5,#+1
//  661 	}
//  662 	OLED_SetPosition(x, y);
??OLED_Put16x16CH_0:
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED_SetPosition
//  663 
//  664 	for (i = 0; i < 16; i++)
        MOVS     R7,#+0
        B.N      ??OLED_Put16x16CH_1
//  665 		OLED_WriteData(CH16x16[c][i]);
??OLED_Put16x16CH_2:
        LDR.N    R0,??DataTable12_7
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        ADDS     R0,R0,R6, LSL #+5
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LDRB     R0,[R7, R0]
        BL       OLED_WriteData
        ADDS     R7,R7,#+1
??OLED_Put16x16CH_1:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+16
        BLT.N    ??OLED_Put16x16CH_2
//  666 
//  667 	y++;
        ADDS     R5,R5,#+1
//  668 	OLED_SetPosition(x, y);
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED_SetPosition
//  669 
//  670 	for (i = 16; i < 32; i++)
        MOVS     R7,#+16
        B.N      ??OLED_Put16x16CH_3
//  671 		OLED_WriteData(CH16x16[c][i]);
??OLED_Put16x16CH_4:
        LDR.N    R0,??DataTable12_7
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        ADDS     R0,R0,R6, LSL #+5
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LDRB     R0,[R7, R0]
        BL       OLED_WriteData
        ADDS     R7,R7,#+1
??OLED_Put16x16CH_3:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+32
        BLT.N    ??OLED_Put16x16CH_4
//  672 }
        POP      {R0,R4-R7,PC}    ;; return
//  673 

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
//  674 const unsigned char OLED_cat[] =
OLED_cat:
        DC8 0, 0, 0, 0, 224, 240, 240, 224, 224, 192, 128, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 128, 192, 224, 224, 240, 240, 224, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 193, 255, 255, 255, 255, 127, 127, 127, 254, 254, 254, 254, 254
        DC8 254, 254, 255, 127, 127, 127, 255, 255, 255, 193, 0, 0, 0, 0, 0
        DC8 206, 206, 206, 110, 127, 127, 255, 255, 252, 248, 248, 252, 255
        DC8 255, 255, 255, 255, 255, 255, 252, 248, 248, 248, 252, 255, 127
        DC8 127, 110, 206, 206, 206, 14, 0, 0, 0, 0, 0, 0, 0, 0, 1, 3, 3, 7, 7
        DC8 7, 7, 7, 7, 7, 7, 7, 3, 3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0
//  675 {
//  676 	0x00,0x00,0x00,0x00,0xE0,0xF0,0xF0,0xE0,0xE0,0xC0,0x80,0x00,0x00,0x00,0x00,0x00,
//  677 	0x00,0x00,0x00,0x00,0x80,0xC0,0xE0,0xE0,0xF0,0xF0,0xE0,0x00,0x00,0x00,0x00,0x00,
//  678 	0x00,0x00,0x00,0x00,0xC1,0xFF,0xFF,0xFF,0xFF,0x7F,0x7F,0x7F,0xFE,0xFE,0xFE,0xFE,
//  679 	0xFE,0xFE,0xFE,0xFF,0x7F,0x7F,0x7F,0xFF,0xFF,0xFF,0xC1,0x00,0x00,0x00,0x00,0x00,
//  680 	0xCE,0xCE,0xCE,0x6E,0x7F,0x7F,0xFF,0xFF,0xFC,0xF8,0xF8,0xFC,0xFF,0xFF,0xFF,0xFF,
//  681 	0xFF,0xFF,0xFF,0xFC,0xF8,0xF8,0xF8,0xFC,0xFF,0x7F,0x7F,0x6E,0xCE,0xCE,0xCE,0x0E,
//  682 	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x01,0x03,0x03,0x07,0x07,0x07,0x07,0x07,
//  683 	0x07,0x07,0x07,0x07,0x03,0x03,0x01,0x01,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
//  684 };
//  685 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  686 void OLED_DispACat(unsigned char x, unsigned char y)
//  687 {
OLED_DispACat:
        PUSH     {R3-R7,LR}
        MOVS     R4,R0
        MOVS     R5,R1
//  688 	unsigned char i = 0, j = 0;
        MOVS     R6,#+0
        MOVS     R7,#+0
//  689 
//  690 	if (x > 96)
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+97
        BLT.N    ??OLED_DispACat_0
//  691 	{
//  692 		x = 0;
        MOVS     R4,#+0
//  693 		y++;
        ADDS     R5,R5,#+1
//  694 	}
//  695 
//  696 	for (j = 0; j < 4; j++)
??OLED_DispACat_0:
        MOVS     R7,#+0
        B.N      ??OLED_DispACat_1
//  697 	{
//  698 		OLED_SetPosition(x, y);
//  699 		y++;
//  700 
//  701 		for (i = 0; i < 32; i++)
//  702 			OLED_WriteData(OLED_cat[i + j * 32]);
??OLED_DispACat_2:
        LDR.N    R0,??DataTable12_8
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LSLS     R1,R7,#+5
        UXTAB    R1,R1,R6
        LDRB     R0,[R1, R0]
        BL       OLED_WriteData
        ADDS     R6,R6,#+1
??OLED_DispACat_3:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+32
        BLT.N    ??OLED_DispACat_2
        ADDS     R7,R7,#+1
??OLED_DispACat_1:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+4
        BGE.N    ??OLED_DispACat_4
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED_SetPosition
        ADDS     R5,R5,#+1
        MOVS     R6,#+0
        B.N      ??OLED_DispACat_3
//  703 	}
//  704 }
??OLED_DispACat_4:
        POP      {R0,R4-R7,PC}    ;; return
//  705 

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
//  706 const unsigned char OLED_img[] =
OLED_img:
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 128
        DC8 224, 56, 12, 7, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 192, 224, 248, 254, 255, 240, 224
        DC8 128, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 128, 224, 240, 252, 255, 255, 127, 31, 15, 15, 63, 255, 255
        DC8 254, 248, 240, 192, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 192, 240, 248, 254, 255, 255, 63, 15, 7, 1, 0, 0, 0, 0, 0, 0, 3, 7
        DC8 31, 127, 255, 255, 252, 248, 224, 128, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 128, 224, 248
        DC8 252, 255, 255, 127, 31, 15, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 1, 3, 15, 63, 255, 255, 255, 252, 240, 192, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 192, 240, 252, 254
        DC8 255, 255, 255, 207, 195, 193, 192, 192, 192, 192, 192, 192, 192
        DC8 192, 192, 192, 192, 192, 192, 192, 192, 192, 192, 192, 192, 192
        DC8 192, 192, 192, 192, 193, 199, 207, 255, 255, 255, 254, 248, 224
        DC8 128, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 2, 2, 2, 2
        DC8 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2
        DC8 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 3, 3, 3, 3, 3, 3, 3
        DC8 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3
        DC8 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 7, 12, 56, 224, 128, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 7, 28, 112, 192, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0
//  707 {
//  708 	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
//  709 	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
//  710 	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
//  711 	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
//  712 	0x00,0x00,0x00,0x80,0xE0,0x38,0x0C,0x07,0x01,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
//  713 	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
//  714 	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
//  715 	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
//  716 	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
//  717 	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
//  718 	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
//  719 	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0xC0,
//  720 	0xE0,0xF8,0xFE,0xFF,0xF0,0xE0,0x80,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
//  721 	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
//  722 	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
//  723 	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
//  724 	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
//  725 	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
//  726 	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
//  727 	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x80,0xE0,0xF0,0xFC,0xFF,0xFF,
//  728 	0x7F,0x1F,0x0F,0x0F,0x3F,0xFF,0xFF,0xFE,0xF8,0xF0,0xC0,0x00,0x00,0x00,0x00,0x00,
//  729 	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
//  730 	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
//  731 	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
//  732 	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
//  733 	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
//  734 	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
//  735 	0x00,0x00,0x00,0x00,0x00,0x00,0xC0,0xF0,0xF8,0xFE,0xFF,0xFF,0x3F,0x0F,0x07,0x01,
//  736 	0x00,0x00,0x00,0x00,0x00,0x00,0x03,0x07,0x1F,0x7F,0xFF,0xFF,0xFC,0xF8,0xE0,0x80,
//  737 	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
//  738 	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
//  739 	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
//  740 	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
//  741 	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
//  742 	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
//  743 	0x00,0x80,0xE0,0xF8,0xFC,0xFF,0xFF,0x7F,0x1F,0x0F,0x03,0x00,0x00,0x00,0x00,0x00,
//  744 	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x01,0x03,0x0F,0x3F,0xFF,0xFF,
//  745 	0xFF,0xFC,0xF0,0xC0,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
//  746 	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
//  747 	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
//  748 	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
//  749 	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
//  750 	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0xC0,0xF0,0xFC,
//  751 	0xFE,0xFF,0xFF,0xFF,0xCF,0xC3,0xC1,0xC0,0xC0,0xC0,0xC0,0xC0,0xC0,0xC0,0xC0,0xC0,
//  752 	0xC0,0xC0,0xC0,0xC0,0xC0,0xC0,0xC0,0xC0,0xC0,0xC0,0xC0,0xC0,0xC0,0xC0,0xC0,0xC1,
//  753 	0xC7,0xCF,0xFF,0xFF,0xFF,0xFE,0xF8,0xE0,0x80,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
//  754 	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
//  755 	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
//  756 	0x02,0x02,0x02,0x02,0x02,0x02,0x02,0x02,0x02,0x02,0x02,0x02,0x02,0x02,0x02,0x02,
//  757 	0x02,0x02,0x02,0x02,0x02,0x02,0x02,0x02,0x02,0x02,0x02,0x02,0x02,0x02,0x02,0x02,
//  758 	0x02,0x02,0x02,0x02,0x02,0x02,0x02,0x02,0x02,0x02,0x02,0x02,0x03,0x03,0x03,0x03,
//  759 	0x03,0x03,0x03,0x03,0x03,0x03,0x03,0x03,0x03,0x03,0x03,0x03,0x03,0x03,0x03,0x03,
//  760 	0x03,0x03,0x03,0x03,0x03,0x03,0x03,0x03,0x03,0x03,0x03,0x03,0x03,0x03,0x03,0x03,
//  761 	0x03,0x03,0x03,0x03,0x03,0x03,0x03,0x03,0x03,0x07,0x0C,0x38,0xE0,0x80,0x00,0x00,
//  762 	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
//  763 	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
//  764 	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
//  765 	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
//  766 	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
//  767 	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
//  768 	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
//  769 	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x03,0x07,0x1C,
//  770 	0x70,0xC0,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
//  771 	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
//  772 };
//  773 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  774 void OLED_DispAImg(void)
//  775 {
OLED_DispAImg:
        PUSH     {R3-R5,LR}
//  776 	int i, j;
//  777 
//  778 	for (i = 0; i < 8; i++)
        MOVS     R4,#+0
        B.N      ??OLED_DispAImg_0
//  779 	{
//  780 		OLED_SetPosition(0, i);
//  781 
//  782 		for (j = 0; j < 128; j++)
//  783 			OLED_WriteData(OLED_img[j + i * 128]);
??OLED_DispAImg_1:
        LDR.N    R0,??DataTable12_9
        MOVS     R1,#+128
        MLA      R1,R1,R4,R5
        LDRB     R0,[R1, R0]
        BL       OLED_WriteData
        ADDS     R5,R5,#+1
??OLED_DispAImg_2:
        CMP      R5,#+128
        BLT.N    ??OLED_DispAImg_1
        ADDS     R4,R4,#+1
??OLED_DispAImg_0:
        CMP      R4,#+8
        BGE.N    ??OLED_DispAImg_3
        MOVS     R0,R4
        MOVS     R1,R0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+0
        BL       OLED_SetPosition
        MOVS     R5,#+0
        B.N      ??OLED_DispAImg_2
//  784 	}
//  785 }
??OLED_DispAImg_3:
        POP      {R0,R4,R5,PC}    ;; return
//  786 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  787 void OLED_DispMyScene(void)
//  788 {
OLED_DispMyScene:
        PUSH     {R3-R5,LR}
//  789 	int i, j;
//  790 
//  791 	for (i = 0; i < 8; i++)
        MOVS     R4,#+0
        B.N      ??OLED_DispMyScene_0
//  792 	{
//  793 		OLED_SetPosition(0, i);
//  794 
//  795 		for (j = 0; j < 128; j++)
//  796 			OLED_WriteData(calc.myScene[j][i]);
??OLED_DispMyScene_1:
        LDR.N    R0,??DataTable12_10
        ADDS     R0,R0,R5, LSL #+3
        ADDS     R0,R4,R0
        LDRB     R0,[R0, #+24]
        BL       OLED_WriteData
        ADDS     R5,R5,#+1
??OLED_DispMyScene_2:
        CMP      R5,#+128
        BLT.N    ??OLED_DispMyScene_1
        ADDS     R4,R4,#+1
??OLED_DispMyScene_0:
        CMP      R4,#+8
        BGE.N    ??OLED_DispMyScene_3
        MOVS     R0,R4
        MOVS     R1,R0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+0
        BL       OLED_SetPosition
        MOVS     R5,#+0
        B.N      ??OLED_DispMyScene_2
//  797 	}
//  798 }
??OLED_DispMyScene_3:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12:
        DC32     0x400ff100

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_1:
        DC32     ??GPIO_InitStructure

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_2:
        DC32     F6x8

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_3:
        DC32     0x47c35000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_4:
        DC32     0x186a0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_5:
        DC32     ubyRange

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_6:
        DC32     camera

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_7:
        DC32     CH16x16

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_8:
        DC32     OLED_cat

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_9:
        DC32     OLED_img

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_10:
        DC32     calc

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
//    20 bytes in section .bss
//    52 bytes in section .data
// 2 344 bytes in section .rodata
// 2 564 bytes in section .text
// 
// 2 564 bytes of CODE  memory
// 2 344 bytes of CONST memory
//    72 bytes of DATA  memory
//
//Errors: none
//Warnings: none
