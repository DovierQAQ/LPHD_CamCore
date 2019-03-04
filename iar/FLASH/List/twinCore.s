///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.50.1.10123/W32 for ARM      17/Aug/2018  19:18:30
// Copyright 1999-2015 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\ShowD\Desktop\LPHD\LPHD_camCore\LPHD_camCore\app\twinCore\twinCore.c
//    Command line =  
//        C:\Users\ShowD\Desktop\LPHD\LPHD_camCore\LPHD_camCore\app\twinCore\twinCore.c
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
//        C:\Users\ShowD\Desktop\LPHD\LPHD_camCore\LPHD_camCore\iar\FLASH\List\twinCore.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN LPLD_UART_EnableIrq
        EXTERN LPLD_UART_GetChar
        EXTERN LPLD_UART_Init
        EXTERN LPLD_UART_PutChar
        EXTERN __aeabi_memcpy4
        EXTERN calc
        EXTERN camera
        EXTERN mpu6050
        EXTERN ui

        PUBLIC TWINCORE_isr
        PUBLIC TwinCorePortRx
        PUBLIC twinCore
        PUBLIC twinCore_sendData

// C:\Users\ShowD\Desktop\LPHD\LPHD_camCore\LPHD_camCore\app\twinCore\twinCore.c
//    1 #include "twinCore.h"
//    2 
//    3 /****Discription**********************************************/
//    4 
//    5 /*
//    6 	0.需先调用twinCore.Init()函数再使用本驱动
//    7 	1.移植于uart，因为双核通讯改为了uart连接
//    8 	2.先调用twinCore.Set()将某一个通道设置为相应的数值
//    9 	3.周期性调用twinCore.Send()来将数组内容发送给另外一个单片机
//   10 	4.在本文件的twinCore_Debug函数接收相应的数据
//   11 
//   12 	@Time	2018-04-30
//   13 	@Author	郭帆
//   14 	@Usefor	双核通讯
//   15 */
//   16 
//   17 /*
//   18 	0--pose.flag
//   19 	1--SW_Mode
//   20 	2--pose.pause
//   21 	3--keyValue
//   22 	4--f2fMode
//   23 	5--findEnd
//   24     6--cnt_clear
//   25 	7--calc.cnt_effect
//   26 	8--loseFlag
//   27 	9--gamma
//   28 */
//   29 
//   30 /*
//   31 	0--flag_out
//   32 	1--pose.angleY
//   33 	2--pose.angleZ
//   34 	3--mpu6050.gry.y
//   35 	4--calc.cnt_out
//   36 	5--testTime
//   37 	6--calc.reffer[0]
//   38 	7--mpu6050.acc.z
//   39 */
//   40 
//   41 /****Definitions**********************************************/
//   42 
//   43 /****Functions************************************************/
//   44 
//   45 void TWINCORE_isr(void);
//   46 
//   47 /****Variables************************************************/
//   48 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   49 uint8 twinCore_sendData[TwinCoreRxChNum * 2] = {0};
twinCore_sendData:
        DS8 20
//   50 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   51 TwinCorePortType TwinCorePortRx;
TwinCorePortRx:
        DS8 108
//   52 
//   53 /****Functions************************************************/
//   54 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   55 static void TwinCore_Debug(void)
//   56 {
TwinCore_Debug:
        PUSH     {R7,LR}
//   57 	static int gammaLst = 0;
//   58 
//   59 	mpu6050.pose.flagY = twinCore.data[0];
        LDR.W    R0,??DataTable5
        LDRSH    R0,[R0, #+12]
        LDR.W    R1,??DataTable5_1
        LDR      R1,[R1, #+48]
        BFI      R1,R0,#+1,#+1
        LDR.W    R0,??DataTable5_1
        STR      R1,[R0, #+48]
//   60 	mpu6050.pose.flagZ = twinCore.data[0];
        LDR.W    R0,??DataTable5
        LDRSH    R0,[R0, #+12]
        LDR.W    R1,??DataTable5_1
        LDR      R1,[R1, #+48]
        BFI      R1,R0,#+2,#+1
        LDR.W    R0,??DataTable5_1
        STR      R1,[R0, #+48]
//   61 	if (!mpu6050.pose.flagX) mpu6050.pose.angleX = 0;
        LDR.W    R0,??DataTable5_1
        LDRB     R0,[R0, #+48]
        LSLS     R0,R0,#+31
        BMI.N    ??TwinCore_Debug_0
        MOVS     R0,#+0
        LDR.W    R1,??DataTable5_1
        STR      R0,[R1, #+36]
//   62 	if (!mpu6050.pose.flagY) mpu6050.pose.angleY = 0;
??TwinCore_Debug_0:
        LDR.W    R0,??DataTable5_1
        LDR      R0,[R0, #+48]
        UBFX     R0,R0,#+1,#+1
        CMP      R0,#+0
        BNE.N    ??TwinCore_Debug_1
        MOVS     R0,#+0
        LDR.W    R1,??DataTable5_1
        STR      R0,[R1, #+40]
//   63 	if (!mpu6050.pose.flagZ) mpu6050.pose.angleZ = 0;
??TwinCore_Debug_1:
        LDR.W    R0,??DataTable5_1
        LDR      R0,[R0, #+48]
        UBFX     R0,R0,#+2,#+1
        CMP      R0,#+0
        BNE.N    ??TwinCore_Debug_2
        MOVS     R0,#+0
        LDR.W    R1,??DataTable5_1
        STR      R0,[R1, #+44]
//   64 
//   65 	mpu6050.pose.pause = twinCore.data[2];
??TwinCore_Debug_2:
        LDR.W    R0,??DataTable5
        LDRSH    R0,[R0, #+16]
        LDR.W    R1,??DataTable5_1
        LDR      R1,[R1, #+48]
        BFI      R1,R0,#+3,#+1
        LDR.W    R0,??DataTable5_1
        STR      R1,[R0, #+48]
//   66 
//   67 	if (ui.keyLst != twinCore.data[3] && twinCore.data[1] == 1110)
        LDR.N    R0,??DataTable5_2
        LDR      R0,[R0, #+20]
        LDR.N    R1,??DataTable5
        LDRSH    R1,[R1, #+18]
        CMP      R0,R1
        BEQ.N    ??TwinCore_Debug_3
        LDR.N    R0,??DataTable5
        LDRSH    R0,[R0, #+14]
        MOVW     R1,#+1110
        CMP      R0,R1
        BNE.N    ??TwinCore_Debug_3
//   68 	{
//   69 		ui.keyLst = twinCore.data[3];
        LDR.N    R0,??DataTable5
        LDRSH    R0,[R0, #+18]
        LDR.N    R1,??DataTable5_2
        STR      R0,[R1, #+20]
//   70 		ui.keyNow = ui.keyLst;
        LDR.N    R0,??DataTable5_2
        LDR      R0,[R0, #+20]
        LDR.N    R1,??DataTable5_2
        STR      R0,[R1, #+16]
//   71 		ui.ProcessKey();
        LDR.N    R0,??DataTable5_2
        LDR      R0,[R0, #+12]
        BLX      R0
//   72 	}
//   73 
//   74 	calc.f2fMode = twinCore.data[4];
??TwinCore_Debug_3:
        LDR.N    R0,??DataTable5
        LDRSH    R0,[R0, #+20]
        LDR.N    R1,??DataTable5_3
        STR      R0,[R1, #+1060]
//   75 	calc.findEnd = twinCore.data[5];
        LDR.N    R0,??DataTable5
        LDRSH    R0,[R0, #+22]
        LDR.N    R1,??DataTable5_3
        STR      R0,[R1, #+1064]
//   76     calc.cnt_clear = twinCore.data[6];
        LDR.N    R0,??DataTable5
        LDRSH    R0,[R0, #+24]
        LDR.N    R1,??DataTable5_3
        STR      R0,[R1, #+1072]
//   77 	calc.cnt_effect = twinCore.data[7];
        LDR.N    R0,??DataTable5
        LDRSH    R0,[R0, #+26]
        LDR.N    R1,??DataTable5_3
        STR      R0,[R1, #+8]
//   78 
//   79 	if (twinCore.data[9] != gammaLst)
        LDR.N    R0,??DataTable5
        LDRSH    R0,[R0, #+30]
        LDR.N    R1,??DataTable5_4
        LDR      R1,[R1, #+0]
        CMP      R0,R1
        BEQ.N    ??TwinCore_Debug_4
//   80 		camera.ChangeGamma(twinCore.data[9]);
        LDR.N    R0,??DataTable5
        LDRSH    R0,[R0, #+30]
        LDR.N    R1,??DataTable5_5
        LDR      R1,[R1, #+4]
        BLX      R1
//   81 	gammaLst = twinCore.data[9];
??TwinCore_Debug_4:
        LDR.N    R0,??DataTable5
        LDRSH    R0,[R0, #+30]
        LDR.N    R1,??DataTable5_4
        STR      R0,[R1, #+0]
//   82 }
        POP      {R0,PC}          ;; return

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
??gammaLst:
        DS8 4
//   83 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   84 static void TwinCore_Cmd(uint8 CmdNum,uint8 Data) {
//   85 	if (CmdNum == 2 && Data == 102) { // page up
//   86 		;
//   87 	}
//   88 	if (CmdNum == 2 && Data == 103) { //page down
//   89 		;
//   90 	}
//   91 }
TwinCore_Cmd:
        BX       LR               ;; return
//   92 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   93 static void TWINCORE_Init(void) {
TWINCORE_Init:
        PUSH     {R5-R7,LR}
//   94 	static UART_InitTypeDef UART_InitStructure;
//   95 
//   96 	UART_InitStructure.UART_Uartx = TWINCORE_UART;
        LDR.N    R0,??DataTable5_6  ;; 0x400ea000
        LDR.N    R1,??DataTable5_7
        STR      R0,[R1, #+0]
//   97 	UART_InitStructure.UART_BaudRate = TWINCORE_BAUDRATE;
        MOVS     R0,#+115200
        LDR.N    R1,??DataTable5_7
        STR      R0,[R1, #+4]
//   98 	UART_InitStructure.UART_RxPin = TWINCORE_RxPinx;
        MOVS     R0,#+149
        LDR.N    R1,??DataTable5_7
        STRB     R0,[R1, #+9]
//   99 	UART_InitStructure.UART_TxPin = TWINCORE_TxPinx;
        MOVS     R0,#+148
        LDR.N    R1,??DataTable5_7
        STRB     R0,[R1, #+8]
//  100 	UART_InitStructure.UART_RxIntEnable = TRUE;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable5_7
        STRB     R0,[R1, #+10]
//  101 	UART_InitStructure.UART_RxIsr = TWINCORE_isr;
        ADR.W    R0,TWINCORE_isr
        LDR.N    R1,??DataTable5_7
        STR      R0,[R1, #+20]
//  102 
//  103 	LPLD_UART_Init(UART_InitStructure);
        LDR.N    R1,??DataTable5_7
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+28
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_UART_Init
//  104 	LPLD_UART_EnableIrq(UART_InitStructure);
        LDR.N    R1,??DataTable5_7
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+28
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_UART_EnableIrq
//  105 }
        POP      {R0-R2,PC}       ;; return

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
??UART_InitStructure:
        DS8 28
//  106 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  107 static void TWINCORE_Putchar(char ch) {
TWINCORE_Putchar:
        PUSH     {R7,LR}
//  108 	LPLD_UART_PutChar(TWINCORE_UART, ch);
        MOVS     R1,R0
        SXTB     R1,R1            ;; SignExt  R1,R1,#+24,#+24
        LDR.N    R0,??DataTable5_6  ;; 0x400ea000
        BL       LPLD_UART_PutChar
//  109 }
        POP      {R0,PC}          ;; return
//  110 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  111 static void TWINCORE_Set(int chx, int data) {
//  112 	twinCore_sendData[chx * 2] = TWINCORE_HIGHBYTE(data);
TWINCORE_Set:
        ASRS     R2,R1,#+8
        LDR.N    R3,??DataTable5_8
        STRB     R2,[R3, R0, LSL #+1]
//  113 	twinCore_sendData[chx * 2 + 1] = TWINCORE_LOWBYTE(data);
        LDR.N    R2,??DataTable5_8
        ADDS     R0,R2,R0, LSL #+1
        STRB     R1,[R0, #+1]
//  114 }
        BX       LR               ;; return
//  115 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  116 static void TWINCORE_Send(void) {
TWINCORE_Send:
        PUSH     {R3-R5,LR}
//  117 	int i = 0;
        MOVS     R4,#+0
//  118 	uint8 sum = 0;
        MOVS     R5,#+0
//  119 
//  120 	TWINCORE_Putchar(0xff);
        MOVS     R0,#+255
        BL       TWINCORE_Putchar
//  121 	TWINCORE_Putchar(0x55);
        MOVS     R0,#+85
        BL       TWINCORE_Putchar
//  122 	TWINCORE_Putchar(0xaa);
        MOVS     R0,#+170
        BL       TWINCORE_Putchar
//  123 	TWINCORE_Putchar(0x10);
        MOVS     R0,#+16
        BL       TWINCORE_Putchar
//  124 
//  125 	sum += (0xff + 0x55 + 0xaa + 0x10);
        ADDS     R5,R5,#+14
//  126 
//  127 	for (i = 0; i < TwinCoreRxChNum * 2; i++) {
        MOVS     R4,#+0
        B.N      ??TWINCORE_Send_0
//  128 		TWINCORE_Putchar(twinCore_sendData[i]);
??TWINCORE_Send_1:
        LDR.N    R0,??DataTable5_8
        LDRB     R0,[R4, R0]
        BL       TWINCORE_Putchar
//  129 		sum += twinCore_sendData[i];
        LDR.N    R0,??DataTable5_8
        LDRB     R0,[R4, R0]
        ADDS     R5,R0,R5
//  130 	}
        ADDS     R4,R4,#+1
??TWINCORE_Send_0:
        CMP      R4,#+20
        BLT.N    ??TWINCORE_Send_1
//  131 
//  132 	TWINCORE_Putchar(sum);
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       TWINCORE_Putchar
//  133 }
        POP      {R0,R4,R5,PC}    ;; return
//  134 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//  135 void TWINCORE_isr(void) {
TWINCORE_isr:
        PUSH     {R4,LR}
//  136 	int i, begin;
//  137 
//  138 	if ((TWINCORE_UART->S1 & UART_S1_RDRF_MASK) && (TWINCORE_UART->C2 & UART_C2_RIE_MASK)) {
        LDR.N    R0,??DataTable5_9  ;; 0x400ea004
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+26
        BPL.W    ??TWINCORE_isr_0
        LDR.N    R0,??DataTable5_10  ;; 0x400ea003
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+26
        BPL.W    ??TWINCORE_isr_0
//  139 		TwinCorePortRx.Data = LPLD_UART_GetChar(TWINCORE_UART);
        LDR.N    R0,??DataTable5_6  ;; 0x400ea000
        BL       LPLD_UART_GetChar
        LDR.N    R1,??DataTable5_11
        STRB     R0,[R1, #+4]
//  140 		if (TwinCorePortRx.Stack < TwinCoreRxBufferLen) {
        LDR.N    R0,??DataTable5_11
        LDR      R0,[R0, #+0]
        CMP      R0,#+100
        BGE.W    ??TWINCORE_isr_1
//  141 			TwinCorePortRx.Buffer[TwinCorePortRx.Stack++] = TwinCorePortRx.Data;
        LDR.N    R0,??DataTable5_11
        LDRB     R0,[R0, #+4]
        LDR.N    R1,??DataTable5_11
        LDR.N    R2,??DataTable5_11
        LDR      R2,[R2, #+0]
        ADDS     R1,R2,R1
        STRB     R0,[R1, #+6]
        LDR.N    R0,??DataTable5_11
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable5_11
        STR      R0,[R1, #+0]
//  142 			if (TwinCorePortRx.Stack >= TwinCoreRxDataLen
//  143 				&& TwinCorePortRx.Buffer[TwinCorePortRx.Stack - TwinCoreRxDataLen]    ==0xff
//  144 				&& TwinCorePortRx.Buffer[TwinCorePortRx.Stack - TwinCoreRxDataLen + 1]==0x55
//  145 				&& TwinCorePortRx.Buffer[TwinCorePortRx.Stack - TwinCoreRxDataLen + 2]==0xaa
//  146 				&& TwinCorePortRx.Buffer[TwinCorePortRx.Stack - TwinCoreRxDataLen + 3]==0x10) {
        LDR.N    R0,??DataTable5_11
        LDR      R0,[R0, #+0]
        CMP      R0,#+25
        BLT.N    ??TWINCORE_isr_2
        LDR.N    R0,??DataTable5_11
        LDR.N    R1,??DataTable5_11
        LDR      R1,[R1, #+0]
        ADDS     R0,R1,R0
        LDRB     R0,[R0, #-19]
        CMP      R0,#+255
        BNE.N    ??TWINCORE_isr_2
        LDR.N    R0,??DataTable5_11
        LDR.N    R1,??DataTable5_11
        LDR      R1,[R1, #+0]
        ADDS     R0,R1,R0
        LDRB     R0,[R0, #-18]
        CMP      R0,#+85
        BNE.N    ??TWINCORE_isr_2
        LDR.N    R0,??DataTable5_11
        LDR.N    R1,??DataTable5_11
        LDR      R1,[R1, #+0]
        ADDS     R0,R1,R0
        LDRB     R0,[R0, #-17]
        CMP      R0,#+170
        BNE.N    ??TWINCORE_isr_2
        LDR.N    R0,??DataTable5_11
        LDR.N    R1,??DataTable5_11
        LDR      R1,[R1, #+0]
        ADDS     R0,R1,R0
        LDRB     R0,[R0, #-16]
        CMP      R0,#+16
        BNE.N    ??TWINCORE_isr_2
//  147 				TwinCorePortRx.Check = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable5_11
        STRB     R0,[R1, #+107]
//  148 				begin = TwinCorePortRx.Stack - TwinCoreRxDataLen;
        LDR.N    R0,??DataTable5_11
        LDR      R0,[R0, #+0]
        SUBS     R0,R0,#+25
//  149 				for(i = begin; i < TwinCorePortRx.Stack - 1; i++) {
        MOVS     R1,R0
        B.N      ??TWINCORE_isr_3
//  150 					TwinCorePortRx.Check += TwinCorePortRx.Buffer[i];
??TWINCORE_isr_4:
        LDR.N    R2,??DataTable5_11
        LDRB     R2,[R2, #+107]
        LDR.N    R3,??DataTable5_11
        ADDS     R3,R1,R3
        LDRB     R3,[R3, #+6]
        ADDS     R2,R3,R2
        LDR.N    R3,??DataTable5_11
        STRB     R2,[R3, #+107]
//  151 				}
        ADDS     R1,R1,#+1
??TWINCORE_isr_3:
        LDR.N    R2,??DataTable5_11
        LDR      R2,[R2, #+0]
        SUBS     R2,R2,#+1
        CMP      R1,R2
        BLT.N    ??TWINCORE_isr_4
//  152 				if (TwinCorePortRx.Check == TwinCorePortRx.Buffer[TwinCorePortRx.Stack - 1]) {
        LDR.N    R1,??DataTable5_11
        LDRB     R1,[R1, #+107]
        LDR.N    R2,??DataTable5_11
        LDR.N    R3,??DataTable5_11
        LDR      R3,[R3, #+0]
        ADDS     R2,R3,R2
        LDRB     R2,[R2, #+5]
        CMP      R1,R2
        BNE.N    ??TWINCORE_isr_5
//  153 					for (i = 0; i < TwinCoreRxChNum; i++)
        MOVS     R1,#+0
        B.N      ??TWINCORE_isr_6
//  154 					{
//  155 						twinCore.data[i] = (TwinCorePortRx.Buffer[begin + i * 2 + 4] << 8) | TwinCorePortRx.Buffer[begin + i * 2 + 5];
??TWINCORE_isr_7:
        LDR.N    R2,??DataTable5_11
        ADDS     R3,R0,R1, LSL #+1
        ADDS     R2,R3,R2
        LDRB     R2,[R2, #+10]
        LDR.N    R3,??DataTable5_11
        ADDS     R4,R0,R1, LSL #+1
        ADDS     R3,R4,R3
        LDRB     R3,[R3, #+11]
        ORRS     R2,R3,R2, LSL #+8
        LDR.N    R3,??DataTable5
        ADDS     R3,R3,R1, LSL #+1
        STRH     R2,[R3, #+12]
//  156 					}
        ADDS     R1,R1,#+1
??TWINCORE_isr_6:
        CMP      R1,#+10
        BLT.N    ??TWINCORE_isr_7
//  157 					TwinCore_Debug();
        BL       TwinCore_Debug
//  158 				}
//  159 				TwinCorePortRx.Stack = 0;
??TWINCORE_isr_5:
        MOVS     R0,#+0
        LDR.N    R1,??DataTable5_11
        STR      R0,[R1, #+0]
        B.N      ??TWINCORE_isr_0
//  160 			}
//  161 			else if (TwinCorePortRx.Stack >= TwinCoreRxCmdLen
//  162 					&& TwinCorePortRx.Buffer[TwinCorePortRx.Stack - TwinCoreRxCmdLen]    ==0xff
//  163 					&& TwinCorePortRx.Buffer[TwinCorePortRx.Stack - TwinCoreRxCmdLen + 1]==0x55
//  164 					&& TwinCorePortRx.Buffer[TwinCorePortRx.Stack - TwinCoreRxCmdLen + 2]==0xaa
//  165 					&& TwinCorePortRx.Buffer[TwinCorePortRx.Stack - TwinCoreRxCmdLen + 3]==0x77) { // cmd
??TWINCORE_isr_2:
        LDR.N    R0,??DataTable5_11
        LDR      R0,[R0, #+0]
        CMP      R0,#+7
        BLT.N    ??TWINCORE_isr_0
        LDR.N    R0,??DataTable5_11
        LDR.N    R1,??DataTable5_11
        LDR      R1,[R1, #+0]
        ADDS     R0,R1,R0
        LDRB     R0,[R0, #-1]
        CMP      R0,#+255
        BNE.N    ??TWINCORE_isr_0
        LDR.N    R0,??DataTable5_11
        LDR.N    R1,??DataTable5_11
        LDR      R1,[R1, #+0]
        LDRB     R0,[R1, R0]
        CMP      R0,#+85
        BNE.N    ??TWINCORE_isr_0
        LDR.N    R0,??DataTable5_11
        LDR.N    R1,??DataTable5_11
        LDR      R1,[R1, #+0]
        ADDS     R0,R1,R0
        LDRB     R0,[R0, #+1]
        CMP      R0,#+170
        BNE.N    ??TWINCORE_isr_0
        LDR.N    R0,??DataTable5_11
        LDR.N    R1,??DataTable5_11
        LDR      R1,[R1, #+0]
        ADDS     R0,R1,R0
        LDRB     R0,[R0, #+2]
        CMP      R0,#+119
        BNE.N    ??TWINCORE_isr_0
//  166 				TwinCorePortRx.Check = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable5_11
        STRB     R0,[R1, #+107]
//  167 				begin = TwinCorePortRx.Stack - TwinCoreRxCmdLen;
        LDR.N    R0,??DataTable5_11
        LDR      R0,[R0, #+0]
        SUBS     R0,R0,#+7
//  168 				for (i = begin; i < TwinCorePortRx.Stack - 1; i++)
        MOVS     R1,R0
        B.N      ??TWINCORE_isr_8
//  169 					TwinCorePortRx.Check += TwinCorePortRx.Buffer[i];
??TWINCORE_isr_9:
        LDR.N    R0,??DataTable5_11
        LDRB     R0,[R0, #+107]
        LDR.N    R2,??DataTable5_11
        ADDS     R2,R1,R2
        LDRB     R2,[R2, #+6]
        ADDS     R0,R2,R0
        LDR.N    R2,??DataTable5_11
        STRB     R0,[R2, #+107]
        ADDS     R1,R1,#+1
??TWINCORE_isr_8:
        LDR.N    R0,??DataTable5_11
        LDR      R0,[R0, #+0]
        SUBS     R0,R0,#+1
        CMP      R1,R0
        BLT.N    ??TWINCORE_isr_9
//  170 				if(TwinCorePortRx.Check == TwinCorePortRx.Buffer[TwinCorePortRx.Stack - 1])
        LDR.N    R0,??DataTable5_11
        LDRB     R0,[R0, #+107]
        LDR.N    R1,??DataTable5_11
        LDR.N    R2,??DataTable5_11
        LDR      R2,[R2, #+0]
        ADDS     R1,R2,R1
        LDRB     R1,[R1, #+5]
        CMP      R0,R1
        BNE.N    ??TWINCORE_isr_10
//  171 					TwinCore_Cmd(TwinCoreCmdNum, TwinCoreCmdData);
        LDR.N    R0,??DataTable5_11
        LDR.N    R1,??DataTable5_11
        LDR      R1,[R1, #+0]
        ADDS     R0,R1,R0
        LDRB     R1,[R0, #+4]
        LDR.N    R0,??DataTable5_11
        LDR.N    R2,??DataTable5_11
        LDR      R2,[R2, #+0]
        ADDS     R0,R2,R0
        LDRB     R0,[R0, #+3]
        BL       TwinCore_Cmd
//  172 				TwinCorePortRx.Stack = 0;
??TWINCORE_isr_10:
        MOVS     R0,#+0
        LDR.N    R1,??DataTable5_11
        STR      R0,[R1, #+0]
        B.N      ??TWINCORE_isr_0
//  173 			}
//  174 		}
//  175 		else
//  176 			TwinCorePortRx.Stack = 0;
??TWINCORE_isr_1:
        MOVS     R0,#+0
        LDR.N    R1,??DataTable5_11
        STR      R0,[R1, #+0]
//  177 	}
//  178 }
??TWINCORE_isr_0:
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5:
        DC32     twinCore

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_1:
        DC32     mpu6050

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_2:
        DC32     ui

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_3:
        DC32     calc

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_4:
        DC32     ??gammaLst

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_5:
        DC32     camera

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_6:
        DC32     0x400ea000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_7:
        DC32     ??UART_InitStructure

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_8:
        DC32     twinCore_sendData

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_9:
        DC32     0x400ea004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_10:
        DC32     0x400ea003

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_11:
        DC32     TwinCorePortRx
//  179 
//  180 /****Objects**************************************************/
//  181 

        SECTION `.data`:DATA:REORDER:NOROOT(2)
        DATA
//  182 TWINCORE_CLASS twinCore = {
twinCore:
        DC32 TWINCORE_Init, TWINCORE_Set, TWINCORE_Send
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//  183 	&TWINCORE_Init,
//  184 	&TWINCORE_Set,
//  185 	&TWINCORE_Send
//  186 };
// 
// 160 bytes in section .bss
//  32 bytes in section .data
// 938 bytes in section .text
// 
// 938 bytes of CODE memory
// 192 bytes of DATA memory
//
//Errors: none
//Warnings: none
