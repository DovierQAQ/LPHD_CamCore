///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.50.1.10123/W32 for ARM      04/Aug/2018  19:58:28
// Copyright 1999-2015 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\ShowD\Desktop\LPHD\LPHD_camCore\LPHD_camCore\app\uart\uart.c
//    Command line =  
//        C:\Users\ShowD\Desktop\LPHD\LPHD_camCore\LPHD_camCore\app\uart\uart.c
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
//        C:\Users\ShowD\Desktop\LPHD\LPHD_camCore\LPHD_camCore\iar\FLASH\List\uart.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN LPLD_UART_EnableIrq
        EXTERN LPLD_UART_GetChar
        EXTERN LPLD_UART_Init
        EXTERN LPLD_UART_PutChar
        EXTERN __aeabi_ddiv
        EXTERN __aeabi_i2d
        EXTERN __aeabi_memcpy4
        EXTERN camera

        PUBLIC Image_2_computer
        PUBLIC SerialPortRx
        PUBLIC UART_isr
        PUBLIC UartData
        PUBLIC sendData
        PUBLIC uart

// C:\Users\ShowD\Desktop\LPHD\LPHD_camCore\LPHD_camCore\app\uart\uart.c
//    1 #include "uart.h"
//    2 
//    3 /****Discription**********************************************/
//    4 
//    5 /*
//    6 	0.需先调用uart.Init()函数再使用本驱动
//    7 	1.与FreeCars上位机相对应的uart驱动及应用文件
//    8 	2.如果使用虚拟示波器功能，则在某一个定时器里面调用uart.SendToScope();
//    9 	3.如果需要改变某一个通道发送的数值，则调用uart.Set(channel, data);
//   10 		第一个参数为通道编号，第二个为数据，16位整形
//   11 	4.如果要使用上位机发送参数的功能，则在UART_Debug函数里面给所需的变量赋值
//   12 		访问uartData[]数组的成员就行
//   13 	5.如果要使用上位机热键功能，则在UART_Cmd函数的对应位置写好自己的操作就行
//   14 
//   15 	@Time	2018-03-30
//   16 	@Author	gf
//   17 	@Usefor	FreeCars
//   18 */
//   19 
//   20 /****Definitions**********************************************/
//   21 
//   22 /****Functions************************************************/
//   23 
//   24 void UART_isr(void);
//   25 
//   26 /****Variables************************************************/
//   27 

        SECTION `.bss`:DATA:REORDER:NOROOT(3)
        DATA
//   28 double UartData[9] = {0};
UartData:
        DS8 72

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   29 uint8 sendData[34] = {0};
sendData:
        DS8 36
//   30 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   31 SerialPortType SerialPortRx;
SerialPortRx:
        DS8 108
//   32 
//   33 /****Functions************************************************/
//   34 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   35 static void UartDebug(void) {
//   36 //	int temp;
//   37 
//   38 //	temp = (int)UartData[0];
//   39 //	if (temp != 0)
//   40 //		pid.leftMoto.kp = temp;
//   41 
//   42 //	temp = (int)UartData[1];
//   43 //	if (temp != 0)
//   44 //		pid.leftMoto.ki = temp;
//   45 //	temp = (int)UartData[2];
//   46 //	if (temp != 0)
//   47 //		pid.leftMoto.kd = temp;
//   48 //	temp = (int)UartData[3];
//   49 //	if (temp != 0)
//   50 //		pid.rightMoto.kp = temp;
//   51 //	temp = (int)UartData[4];
//   52 //	if (temp != 0)
//   53 //		pid.rightMoto.ki = temp;
//   54 //	temp = (int)UartData[5];
//   55 //	if (temp != 0)
//   56 //		pid.leftMoto.kd = temp;
//   57 //	if (UartData[6] != 0)
//   58 //		pid.turner.kp = UartData[6];
//   59 //	if (UartData[7] != 0)
//   60 //		pid.turner.kd = UartData[7];
//   61 //	if (UartData[8] != 0)
//   62 //		pid.turner.fuzzy_k = UartData[8];
//   63 }
UartDebug:
        BX       LR               ;; return
//   64 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   65 static void UartCmd(uint8 CmdNum,uint8 Data) {
//   66 	if (CmdNum == 2 && Data == 102) { // page up
//   67 		;
//   68 	}
//   69 	if (CmdNum == 2 && Data == 103) { //page down
//   70 		;
//   71 	}
//   72 }
UartCmd:
        BX       LR               ;; return
//   73 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   74 static void UART_Init(void) {
UART_Init:
        PUSH     {R5-R7,LR}
//   75 	static UART_InitTypeDef UART_InitStructure;
//   76 
//   77 	UART_InitStructure.UART_Uartx = WHICH_UART;
        LDR.W    R0,??DataTable5  ;; 0x4006a000
        LDR.W    R1,??DataTable5_1
        STR      R0,[R1, #+0]
//   78 	UART_InitStructure.UART_BaudRate = BAUDRATE;
        MOVS     R0,#+115200
        LDR.W    R1,??DataTable5_1
        STR      R0,[R1, #+4]
//   79 	UART_InitStructure.UART_RxPin = UART_RxPinx;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable5_1
        STRB     R0,[R1, #+9]
//   80 	UART_InitStructure.UART_TxPin = UART_TxPinx;
        MOVS     R0,#+2
        LDR.W    R1,??DataTable5_1
        STRB     R0,[R1, #+8]
//   81 	UART_InitStructure.UART_RxIntEnable = TRUE;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable5_1
        STRB     R0,[R1, #+10]
//   82 	UART_InitStructure.UART_RxIsr = UART_isr;
        ADR.W    R0,UART_isr
        LDR.W    R1,??DataTable5_1
        STR      R0,[R1, #+20]
//   83 
//   84 	LPLD_UART_Init(UART_InitStructure);
        LDR.W    R1,??DataTable5_1
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+28
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_UART_Init
//   85 	LPLD_UART_EnableIrq(UART_InitStructure);
        LDR.W    R1,??DataTable5_1
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+28
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_UART_EnableIrq
//   86 }
        POP      {R0-R2,PC}       ;; return

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
??UART_InitStructure:
        DS8 28
//   87 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   88 static void UART_Putchar(char ch) {
UART_Putchar:
        PUSH     {R7,LR}
//   89 	LPLD_UART_PutChar(WHICH_UART, ch);
        MOVS     R1,R0
        SXTB     R1,R1            ;; SignExt  R1,R1,#+24,#+24
        LDR.N    R0,??DataTable5  ;; 0x4006a000
        BL       LPLD_UART_PutChar
//   90 }
        POP      {R0,PC}          ;; return
//   91 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   92 static void UART_Printf(char *str) {
UART_Printf:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
//   93 	int i = 0;
        MOVS     R5,#+0
        B.N      ??UART_Printf_0
//   94 
//   95 	while (str[i] != '\0')
//   96 	{
//   97 		UART_Putchar(str[i]);
??UART_Printf_1:
        LDRB     R0,[R5, R4]
        BL       UART_Putchar
//   98 		i++;
        ADDS     R5,R5,#+1
//   99 	}
??UART_Printf_0:
        LDRB     R0,[R5, R4]
        CMP      R0,#+0
        BNE.N    ??UART_Printf_1
//  100 }
        POP      {R0,R4,R5,PC}    ;; return
//  101 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  102 static void UART_Set(int chx, int data) {
//  103 	sendData[chx * 2] = HIGHBYTE(data);
UART_Set:
        ASRS     R2,R1,#+8
        LDR.N    R3,??DataTable5_2
        STRB     R2,[R3, R0, LSL #+1]
//  104 	sendData[chx * 2 + 1] = LOWBYTE(data);
        LDR.N    R2,??DataTable5_2
        ADDS     R0,R2,R0, LSL #+1
        STRB     R1,[R0, #+1]
//  105 }
        BX       LR               ;; return
//  106 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  107 static void UART_SendToScope(void) {
UART_SendToScope:
        PUSH     {R3-R5,LR}
//  108 	int i = 0;
        MOVS     R4,#+0
//  109 	uint8 sum = 0;
        MOVS     R5,#+0
//  110 
//  111 	UART_Putchar(251);
        MOVS     R0,#+251
        BL       UART_Putchar
//  112 	UART_Putchar(109);
        MOVS     R0,#+109
        BL       UART_Putchar
//  113 	UART_Putchar(37);
        MOVS     R0,#+37
        BL       UART_Putchar
//  114 
//  115 	sum += (251 + 109 + 37);
        SUBS     R5,R5,#+115
//  116 
//  117 	for (i = 0; i < UartRxChNum * 2; i++) {
        MOVS     R4,#+0
        B.N      ??UART_SendToScope_0
//  118 		UART_Putchar(sendData[i]);
??UART_SendToScope_1:
        LDR.N    R0,??DataTable5_2
        LDRB     R0,[R4, R0]
        BL       UART_Putchar
//  119 		sum += sendData[i];
        LDR.N    R0,??DataTable5_2
        LDRB     R0,[R4, R0]
        ADDS     R5,R0,R5
//  120 	}
        ADDS     R4,R4,#+1
??UART_SendToScope_0:
        CMP      R4,#+34
        BLT.N    ??UART_SendToScope_1
//  121 
//  122 	UART_Putchar(sum);
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       UART_Putchar
//  123 }
        POP      {R0,R4,R5,PC}    ;; return
//  124 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//  125 void UART_isr(void) {
UART_isr:
        PUSH     {R3-R5,LR}
//  126 	int i, begin, d1;
//  127 	uint32 d;
//  128 
//  129 	if ((UART0->S1 & UART_S1_RDRF_MASK) && (UART0->C2 & UART_C2_RIE_MASK)) {
        LDR.N    R0,??DataTable5_3  ;; 0x4006a004
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+26
        BPL.W    ??UART_isr_0
        LDR.N    R0,??DataTable5_4  ;; 0x4006a003
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+26
        BPL.W    ??UART_isr_0
//  130 		SerialPortRx.Data = LPLD_UART_GetChar(WHICH_UART);
        LDR.N    R0,??DataTable5  ;; 0x4006a000
        BL       LPLD_UART_GetChar
        LDR.N    R1,??DataTable5_5
        STRB     R0,[R1, #+4]
//  131 		if (SerialPortRx.Stack < UartRxBufferLen) {
        LDR.N    R0,??DataTable5_5
        LDR      R0,[R0, #+0]
        CMP      R0,#+100
        BGE.W    ??UART_isr_1
//  132 			SerialPortRx.Buffer[SerialPortRx.Stack++] = SerialPortRx.Data;
        LDR.N    R0,??DataTable5_5
        LDRB     R0,[R0, #+4]
        LDR.N    R1,??DataTable5_5
        LDR.N    R2,??DataTable5_5
        LDR      R2,[R2, #+0]
        ADDS     R1,R2,R1
        STRB     R0,[R1, #+6]
        LDR.N    R0,??DataTable5_5
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable5_5
        STR      R0,[R1, #+0]
//  133 			if (SerialPortRx.Stack >= UartRxDataLen
//  134 				&& SerialPortRx.Buffer[SerialPortRx.Stack - UartRxDataLen]    ==0xff
//  135 				&& SerialPortRx.Buffer[SerialPortRx.Stack - UartRxDataLen + 1]==0x55
//  136 				&& SerialPortRx.Buffer[SerialPortRx.Stack - UartRxDataLen + 2]==0xaa
//  137 				&& SerialPortRx.Buffer[SerialPortRx.Stack - UartRxDataLen + 3]==0x10) {
        LDR.N    R0,??DataTable5_5
        LDR      R0,[R0, #+0]
        CMP      R0,#+41
        BLT.W    ??UART_isr_2
        LDR.N    R0,??DataTable5_5
        LDR.N    R1,??DataTable5_5
        LDR      R1,[R1, #+0]
        ADDS     R0,R1,R0
        LDRB     R0,[R0, #-35]
        CMP      R0,#+255
        BNE.W    ??UART_isr_2
        LDR.N    R0,??DataTable5_5
        LDR.N    R1,??DataTable5_5
        LDR      R1,[R1, #+0]
        ADDS     R0,R1,R0
        LDRB     R0,[R0, #-34]
        CMP      R0,#+85
        BNE.N    ??UART_isr_2
        LDR.N    R0,??DataTable5_5
        LDR.N    R1,??DataTable5_5
        LDR      R1,[R1, #+0]
        ADDS     R0,R1,R0
        LDRB     R0,[R0, #-33]
        CMP      R0,#+170
        BNE.N    ??UART_isr_2
        LDR.N    R0,??DataTable5_5
        LDR.N    R1,??DataTable5_5
        LDR      R1,[R1, #+0]
        ADDS     R0,R1,R0
        LDRB     R0,[R0, #-32]
        CMP      R0,#+16
        BNE.N    ??UART_isr_2
//  138 				SerialPortRx.Check = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable5_5
        STRB     R0,[R1, #+107]
//  139 				begin = SerialPortRx.Stack - UartRxDataLen;
        LDR.N    R0,??DataTable5_5
        LDR      R0,[R0, #+0]
        SUBS     R4,R0,#+41
//  140 				for(i = begin; i < SerialPortRx.Stack - 1; i++) {
        MOVS     R5,R4
        B.N      ??UART_isr_3
//  141 					SerialPortRx.Check += SerialPortRx.Buffer[i];
??UART_isr_4:
        LDR.N    R0,??DataTable5_5
        LDRB     R0,[R0, #+107]
        LDR.N    R1,??DataTable5_5
        ADDS     R1,R5,R1
        LDRB     R1,[R1, #+6]
        ADDS     R0,R1,R0
        LDR.N    R1,??DataTable5_5
        STRB     R0,[R1, #+107]
//  142 				}
        ADDS     R5,R5,#+1
??UART_isr_3:
        LDR.N    R0,??DataTable5_5
        LDR      R0,[R0, #+0]
        SUBS     R0,R0,#+1
        CMP      R5,R0
        BLT.N    ??UART_isr_4
//  143 				if (SerialPortRx.Check == SerialPortRx.Buffer[SerialPortRx.Stack - 1]) {
        LDR.N    R0,??DataTable5_5
        LDRB     R0,[R0, #+107]
        LDR.N    R1,??DataTable5_5
        LDR.N    R2,??DataTable5_5
        LDR      R2,[R2, #+0]
        ADDS     R1,R2,R1
        LDRB     R1,[R1, #+5]
        CMP      R0,R1
        BNE.N    ??UART_isr_5
//  144 					for (i = 0; i < 9; i++) {
        MOVS     R5,#+0
        B.N      ??UART_isr_6
//  145 						d = SerialPortRx.Buffer[begin + i * 4 + 4] * 0x1000000L + SerialPortRx.Buffer[begin + i * 4 + 5] * 0x10000L +
//  146 							SerialPortRx.Buffer[begin + i * 4 + 6] * 0x100L + SerialPortRx.Buffer[begin + i * 4 + 7];
//  147 						if (d > 0x7FFFFFFF)
//  148 							d1 = 0x7FFFFFFF - d;
//  149 						else
//  150 							d1 = d;
//  151 						UartData[i] = d1;
??UART_isr_7:
??UART_isr_8:
        BL       __aeabi_i2d
        LDR.N    R2,??DataTable5_6
        ADDS     R2,R2,R5, LSL #+3
        STRD     R0,R1,[R2, #+0]
//  152 						UartData[i] /= 65536.0;
        LDR.N    R0,??DataTable5_6
        ADDS     R2,R0,R5, LSL #+3
        LDRD     R0,R1,[R2, #+0]
        MOVS     R2,#+0
        LDR.N    R3,??DataTable5_7  ;; 0x40f00000
        BL       __aeabi_ddiv
        LDR.N    R2,??DataTable5_6
        ADDS     R2,R2,R5, LSL #+3
        STRD     R0,R1,[R2, #+0]
        ADDS     R5,R5,#+1
??UART_isr_6:
        CMP      R5,#+9
        BGE.N    ??UART_isr_9
        LDR.N    R0,??DataTable5_5
        ADDS     R1,R4,R5, LSL #+2
        ADDS     R0,R1,R0
        LDRB     R0,[R0, #+10]
        MOVS     R1,#+16777216
        LDR.N    R2,??DataTable5_5
        ADDS     R3,R4,R5, LSL #+2
        ADDS     R2,R3,R2
        LDRB     R2,[R2, #+11]
        MOVS     R3,#+65536
        MULS     R2,R3,R2
        MLA      R0,R1,R0,R2
        LDR.N    R1,??DataTable5_5
        ADDS     R2,R4,R5, LSL #+2
        ADDS     R1,R2,R1
        LDRB     R1,[R1, #+12]
        MOV      R2,#+256
        MLA      R0,R2,R1,R0
        LDR.N    R1,??DataTable5_5
        ADDS     R2,R4,R5, LSL #+2
        ADDS     R1,R2,R1
        LDRB     R1,[R1, #+13]
        UXTAB    R0,R0,R1
        CMP      R0,#-2147483648
        BCC.N    ??UART_isr_7
        MVNS     R1,#-2147483648
        SUBS     R0,R1,R0
        B.N      ??UART_isr_8
//  153 					}
//  154 					UartDebug();
??UART_isr_9:
        BL       UartDebug
//  155 				}
//  156 				SerialPortRx.Stack = 0;
??UART_isr_5:
        MOVS     R0,#+0
        LDR.N    R1,??DataTable5_5
        STR      R0,[R1, #+0]
        B.N      ??UART_isr_0
//  157 			}
//  158 			else if (SerialPortRx.Stack >= UartRxCmdLen
//  159 					&& SerialPortRx.Buffer[SerialPortRx.Stack - UartRxCmdLen]    ==0xff
//  160 					&& SerialPortRx.Buffer[SerialPortRx.Stack - UartRxCmdLen + 1]==0x55
//  161 					&& SerialPortRx.Buffer[SerialPortRx.Stack - UartRxCmdLen + 2]==0xaa
//  162 					&& SerialPortRx.Buffer[SerialPortRx.Stack - UartRxCmdLen + 3]==0x77) { // cmd
??UART_isr_2:
        LDR.N    R0,??DataTable5_5
        LDR      R0,[R0, #+0]
        CMP      R0,#+7
        BLT.N    ??UART_isr_0
        LDR.N    R0,??DataTable5_5
        LDR.N    R1,??DataTable5_5
        LDR      R1,[R1, #+0]
        ADDS     R0,R1,R0
        LDRB     R0,[R0, #-1]
        CMP      R0,#+255
        BNE.N    ??UART_isr_0
        LDR.N    R0,??DataTable5_5
        LDR.N    R1,??DataTable5_5
        LDR      R1,[R1, #+0]
        LDRB     R0,[R1, R0]
        CMP      R0,#+85
        BNE.N    ??UART_isr_0
        LDR.N    R0,??DataTable5_5
        LDR.N    R1,??DataTable5_5
        LDR      R1,[R1, #+0]
        ADDS     R0,R1,R0
        LDRB     R0,[R0, #+1]
        CMP      R0,#+170
        BNE.N    ??UART_isr_0
        LDR.N    R0,??DataTable5_5
        LDR.N    R1,??DataTable5_5
        LDR      R1,[R1, #+0]
        ADDS     R0,R1,R0
        LDRB     R0,[R0, #+2]
        CMP      R0,#+119
        BNE.N    ??UART_isr_0
//  163 				SerialPortRx.Check = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable5_5
        STRB     R0,[R1, #+107]
//  164 				begin = SerialPortRx.Stack - UartRxCmdLen;
        LDR.N    R0,??DataTable5_5
        LDR      R0,[R0, #+0]
        SUBS     R4,R0,#+7
//  165 				for (i = begin; i < SerialPortRx.Stack - 1; i++)
        MOVS     R5,R4
        B.N      ??UART_isr_10
//  166 					SerialPortRx.Check += SerialPortRx.Buffer[i];
??UART_isr_11:
        LDR.N    R0,??DataTable5_5
        LDRB     R0,[R0, #+107]
        LDR.N    R1,??DataTable5_5
        ADDS     R1,R5,R1
        LDRB     R1,[R1, #+6]
        ADDS     R0,R1,R0
        LDR.N    R1,??DataTable5_5
        STRB     R0,[R1, #+107]
        ADDS     R5,R5,#+1
??UART_isr_10:
        LDR.N    R0,??DataTable5_5
        LDR      R0,[R0, #+0]
        SUBS     R0,R0,#+1
        CMP      R5,R0
        BLT.N    ??UART_isr_11
//  167 				if(SerialPortRx.Check == SerialPortRx.Buffer[SerialPortRx.Stack - 1])
        LDR.N    R0,??DataTable5_5
        LDRB     R0,[R0, #+107]
        LDR.N    R1,??DataTable5_5
        LDR.N    R2,??DataTable5_5
        LDR      R2,[R2, #+0]
        ADDS     R1,R2,R1
        LDRB     R1,[R1, #+5]
        CMP      R0,R1
        BNE.N    ??UART_isr_12
//  168 					UartCmd(UartCmdNum, UartCmdData);
        LDR.N    R0,??DataTable5_5
        LDR.N    R1,??DataTable5_5
        LDR      R1,[R1, #+0]
        ADDS     R0,R1,R0
        LDRB     R1,[R0, #+4]
        LDR.N    R0,??DataTable5_5
        LDR.N    R2,??DataTable5_5
        LDR      R2,[R2, #+0]
        ADDS     R0,R2,R0
        LDRB     R0,[R0, #+3]
        BL       UartCmd
//  169 				SerialPortRx.Stack = 0;
??UART_isr_12:
        MOVS     R0,#+0
        LDR.N    R1,??DataTable5_5
        STR      R0,[R1, #+0]
        B.N      ??UART_isr_0
//  170 			}
//  171 		}
//  172 		else
//  173 			SerialPortRx.Stack = 0;
??UART_isr_1:
        MOVS     R0,#+0
        LDR.N    R1,??DataTable5_5
        STR      R0,[R1, #+0]
//  174 	}
//  175 }
??UART_isr_0:
        POP      {R0,R4,R5,PC}    ;; return
//  176 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  177 void Image_2_computer(void)
//  178 {
Image_2_computer:
        PUSH     {R3-R5,LR}
//  179 	int i, j, k;
//  180 	uint8 temp;
//  181 
//  182 	uart.Putchar(0x01);
        MOVS     R0,#+1
        LDR.N    R1,??DataTable5_8
        LDR      R1,[R1, #+4]
        BLX      R1
//  183 	uart.Putchar(0xFE);
        MOVS     R0,#+254
        LDR.N    R1,??DataTable5_8
        LDR      R1,[R1, #+4]
        BLX      R1
//  184 
//  185 	for (i = 0; i < ROW; i++)
        MOVS     R4,#+0
        B.N      ??Image_2_computer_0
??Image_2_computer_1:
        ADDS     R4,R4,#+1
??Image_2_computer_0:
        CMP      R4,#+120
        BGE.N    ??Image_2_computer_2
//  186 	{
//  187 		for (j = 0; j < (COLUMN >> 3); j++)
        MOVS     R5,#+0
        B.N      ??Image_2_computer_3
//  188 		{
//  189 			temp = 0;
//  190 			for (k = 0; k < 8; k++)
//  191 				temp |= (camera.img[i][(j << 3) + (7 - k)] && 1) << k;
//  192 			uart.Putchar(~temp);
??Image_2_computer_4:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        MVNS     R0,R0
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R1,??DataTable5_8
        LDR      R1,[R1, #+4]
        BLX      R1
        ADDS     R5,R5,#+1
??Image_2_computer_3:
        CMP      R5,#+20
        BGE.N    ??Image_2_computer_1
        MOVS     R0,#+0
        MOVS     R1,#+0
        B.N      ??Image_2_computer_5
??Image_2_computer_6:
        MOVS     R2,#+0
??Image_2_computer_7:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        LSLS     R2,R2,R1
        ORRS     R0,R2,R0
        ADDS     R1,R1,#+1
??Image_2_computer_5:
        CMP      R1,#+8
        BGE.N    ??Image_2_computer_4
        LDR.N    R2,??DataTable5_9
        MOVS     R3,#+160
        MLA      R2,R3,R4,R2
        LSLS     R3,R5,#+3
        ADDS     R3,R3,#+7
        SUBS     R3,R3,R1
        ADDS     R2,R3,R2
        MOVW     R3,#+5232
        LDRB     R2,[R3, R2]
        CMP      R2,#+0
        BEQ.N    ??Image_2_computer_6
        MOVS     R2,#+1
        B.N      ??Image_2_computer_7
//  193 		}
//  194 	}
//  195 
//  196 	uart.Putchar(0xFE);
??Image_2_computer_2:
        MOVS     R0,#+254
        LDR.N    R1,??DataTable5_8
        LDR      R1,[R1, #+4]
        BLX      R1
//  197 	uart.Putchar(0x01);
        MOVS     R0,#+1
        LDR.N    R1,??DataTable5_8
        LDR      R1,[R1, #+4]
        BLX      R1
//  198 } // 18-04-01 by gf
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5:
        DC32     0x4006a000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_1:
        DC32     ??UART_InitStructure

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_2:
        DC32     sendData

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_3:
        DC32     0x4006a004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_4:
        DC32     0x4006a003

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_5:
        DC32     SerialPortRx

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_6:
        DC32     UartData

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_7:
        DC32     0x40f00000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_8:
        DC32     uart

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_9:
        DC32     camera
//  199 
//  200 //int fputc(int ch, FILE *f)
//  201 //{
//  202 //	uart.Putchar((unsigned char)ch);
//  203 //
//  204 //	//while(USART_GetFlagStatus(Usartx, USART_FLAG_TC) != SET);
//  205 //
//  206 //	return ch;
//  207 //}
//  208 
//  209 /****Objects**************************************************/
//  210 

        SECTION `.data`:DATA:REORDER:NOROOT(2)
        DATA
//  211 UART_CLASS uart = {
uart:
        DC32 UART_Init, UART_Putchar, UART_Printf, UART_Set, UART_SendToScope
        DC32 Image_2_computer

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//  212 	&UART_Init,
//  213 	&UART_Putchar,
//  214 	&UART_Printf,
//  215 	&UART_Set,
//  216 	&UART_SendToScope,
//  217 	&Image_2_computer
//  218 };
// 
// 244 bytes in section .bss
//  24 bytes in section .data
// 908 bytes in section .text
// 
// 908 bytes of CODE memory
// 268 bytes of DATA memory
//
//Errors: none
//Warnings: none
