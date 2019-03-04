///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.50.1.10123/W32 for ARM      01/Aug/2018  12:09:48
// Copyright 1999-2015 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\ShowD\Desktop\LPHD\LPHD_camCore\LPHD_camCore\app\mpu6050\i2c.c
//    Command line =  
//        C:\Users\ShowD\Desktop\LPHD\LPHD_camCore\LPHD_camCore\app\mpu6050\i2c.c
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
//        C:\Users\ShowD\Desktop\LPHD\LPHD_camCore\LPHD_camCore\iar\FLASH\List\i2c.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN LPLD_I2C_Init
        EXTERN LPLD_I2C_ReStart
        EXTERN LPLD_I2C_ReadByte
        EXTERN LPLD_I2C_SetMasterWR
        EXTERN LPLD_I2C_StartTrans
        EXTERN LPLD_I2C_Stop
        EXTERN LPLD_I2C_WaitAck
        EXTERN LPLD_I2C_WriteByte

        PUBLIC I2C_Init
        PUBLIC I2C_ReadReg
        PUBLIC I2C_ReadWord
        PUBLIC I2C_WriteReg
        PUBLIC i2c

// C:\Users\ShowD\Desktop\LPHD\LPHD_camCore\LPHD_camCore\app\mpu6050\i2c.c
//    1 #include "i2c.h"
//    2 
//    3 /****Discription**********************************************/
//    4 
//    5 /*
//    6 	0.需先调用i2c.Init()函数再使用本驱动
//    7 		有返回值，0表示成功
//    8 	1.头文件中修改I2C模块与引脚以及时钟频率
//    9 	2.i2c.ReadReg()获得8位寄存器数据
//   10 		i2c.ReadWord()获得16位数据
//   11 	3.i2c.WriteReg()填寄存器
//   12 
//   13 	@Time	2018-04-25
//   14 	@Author	郭帆
//   15 	@Usefor	mpu6050
//   16 */
//   17 
//   18 /****Definitions**********************************************/
//   19 
//   20 /****Functions************************************************/
//   21 
//   22 uint8 I2C_Init(void);
//   23 uint8 I2C_ReadReg(uint8 addr, uint8 reg);
//   24 uint16 I2C_ReadWord(uint8 addr, uint8 reg, IIC_LSB_TURN tn);
//   25 uint8 I2C_WriteReg(uint8 addr, uint8 writeAddr, uint8 data);
//   26 
//   27 /****Variables************************************************/
//   28 
//   29 /****Objects**************************************************/
//   30 

        SECTION `.data`:DATA:REORDER:NOROOT(2)
        DATA
//   31 I2C_CLASS i2c =
i2c:
        DC32 I2C_Init, I2C_ReadReg, I2C_ReadWord, I2C_WriteReg
//   32 {
//   33 	&I2C_Init,
//   34 	&I2C_ReadReg,
//   35 	&I2C_ReadWord,
//   36 	&I2C_WriteReg
//   37 };
//   38 
//   39 /****Functions************************************************/
//   40 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//   41 static void I2C_Delay(void)
//   42 {
//   43 	for (int i = 0; i < 100; i++) asm("nop");
I2C_Delay:
        MOVS     R0,#+0
        B.N      ??I2C_Delay_0
??I2C_Delay_1:
        nop
        ADDS     R0,R0,#+1
??I2C_Delay_0:
        CMP      R0,#+100
        BLT.N    ??I2C_Delay_1
//   44 }
        BX       LR               ;; return
//   45 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   46 uint8 I2C_Init(void)
//   47 {
I2C_Init:
        PUSH     {R7,LR}
//   48 	static I2C_InitTypeDef I2C_InitStructure;
//   49 
//   50 	I2C_InitStructure.I2C_I2Cx		= I2C_IICx;
        LDR.N    R0,??DataTable3  ;; 0x40067000
        LDR.N    R1,??DataTable3_1
        STR      R0,[R1, #+0]
//   51 	I2C_InitStructure.I2C_IntEnable	= FALSE;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable3_1
        STRB     R0,[R1, #+5]
//   52 	I2C_InitStructure.I2C_ICR		= I2C_SCL_FREQ;
        MOVS     R0,#+23
        LDR.N    R1,??DataTable3_1
        STRB     R0,[R1, #+4]
//   53 	I2C_InitStructure.I2C_SclPin	= I2C_SCL_Pinx;
        MOVS     R0,#+70
        LDR.N    R1,??DataTable3_1
        STRB     R0,[R1, #+6]
//   54 	I2C_InitStructure.I2C_SdaPin	= I2C_SDA_Pinx;
        MOVS     R0,#+71
        LDR.N    R1,??DataTable3_1
        STRB     R0,[R1, #+7]
//   55 	I2C_InitStructure.I2C_Isr		= NULL;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable3_1
        STR      R0,[R1, #+12]
//   56 
//   57 	if (LPLD_I2C_Init(I2C_InitStructure))
        LDR.N    R0,??DataTable3_1
        LDM      R0,{R0-R3}
        BL       LPLD_I2C_Init
        CMP      R0,#+0
        BEQ.N    ??I2C_Init_0
//   58 		return 0;
        MOVS     R0,#+0
        B.N      ??I2C_Init_1
//   59 
//   60 	return 1;
??I2C_Init_0:
        MOVS     R0,#+1
??I2C_Init_1:
        POP      {R1,PC}          ;; return
//   61 }

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
??I2C_InitStructure:
        DS8 16
//   62 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   63 uint8 I2C_ReadReg(uint8 addr, uint8 reg)
//   64 {
I2C_ReadReg:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
//   65 	static uint8 result;
//   66 	//发送从机地址
//   67 	LPLD_I2C_StartTrans(I2C_IICx, addr, I2C_MWSR);
        MOVS     R2,#+0
        MOVS     R1,R4
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.N    R0,??DataTable3  ;; 0x40067000
        BL       LPLD_I2C_StartTrans
//   68 	LPLD_I2C_WaitAck(I2C_IICx, I2C_ACK_ON);
        MOVS     R1,#+1
        LDR.N    R0,??DataTable3  ;; 0x40067000
        BL       LPLD_I2C_WaitAck
//   69 	//写MMA8451寄存器地址
//   70 	LPLD_I2C_WriteByte(I2C_IICx, reg);
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.N    R0,??DataTable3  ;; 0x40067000
        BL       LPLD_I2C_WriteByte
//   71 	LPLD_I2C_WaitAck(I2C_IICx, I2C_ACK_ON);
        MOVS     R1,#+1
        LDR.N    R0,??DataTable3  ;; 0x40067000
        BL       LPLD_I2C_WaitAck
//   72 	//再次产生开始信号
//   73 	LPLD_I2C_ReStart(I2C_IICx);
        LDR.N    R0,??DataTable3  ;; 0x40067000
        BL       LPLD_I2C_ReStart
//   74 	//发送从机地址和读取位
//   75 	LPLD_I2C_WriteByte(I2C_IICx, (addr<<1)|I2C_MRSW);
        LSLS     R0,R4,#+1
        ORRS     R1,R0,#0x1
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.N    R0,??DataTable3  ;; 0x40067000
        BL       LPLD_I2C_WriteByte
//   76 	LPLD_I2C_WaitAck(I2C_IICx, I2C_ACK_ON);
        MOVS     R1,#+1
        LDR.N    R0,??DataTable3  ;; 0x40067000
        BL       LPLD_I2C_WaitAck
//   77 	//转换主机模式为读
//   78 	LPLD_I2C_SetMasterWR(I2C_IICx, I2C_MRSW);
        MOVS     R1,#+1
        LDR.N    R0,??DataTable3  ;; 0x40067000
        BL       LPLD_I2C_SetMasterWR
//   79 	//关闭应答ACK
//   80 	LPLD_I2C_WaitAck(I2C_IICx, I2C_ACK_OFF);//关闭ACK
        MOVS     R1,#+0
        LDR.N    R0,??DataTable3  ;; 0x40067000
        BL       LPLD_I2C_WaitAck
//   81 	//读IIC数据
//   82 	result = LPLD_I2C_ReadByte(I2C_IICx);
        LDR.N    R0,??DataTable3  ;; 0x40067000
        BL       LPLD_I2C_ReadByte
        LDR.N    R1,??DataTable3_2
        STRB     R0,[R1, #+0]
//   83 	LPLD_I2C_WaitAck(I2C_IICx, I2C_ACK_ON);
        MOVS     R1,#+1
        LDR.N    R0,??DataTable3  ;; 0x40067000
        BL       LPLD_I2C_WaitAck
//   84 	//发送停止信号
//   85 	LPLD_I2C_Stop(I2C_IICx);
        LDR.N    R0,??DataTable3  ;; 0x40067000
        BL       LPLD_I2C_Stop
//   86 	//读IIC数据
//   87 	result = LPLD_I2C_ReadByte(I2C_IICx);
        LDR.N    R0,??DataTable3  ;; 0x40067000
        BL       LPLD_I2C_ReadByte
        LDR.N    R1,??DataTable3_2
        STRB     R0,[R1, #+0]
//   88 
//   89 	I2C_Delay();
        BL       I2C_Delay
//   90 	return result;
        LDR.N    R0,??DataTable3_2
        LDRB     R0,[R0, #+0]
        POP      {R1,R4,R5,PC}    ;; return
//   91 }

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
??result:
        DS8 1
//   92 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//   93 uint16 I2C_ReadWord(uint8 addr, uint8 reg, IIC_LSB_TURN tn)
//   94 {
I2C_ReadWord:
        PUSH     {R3-R7,LR}
        MOVS     R5,R0
        MOVS     R6,R1
        MOVS     R4,R2
//   95 	int16 result_L, result_H;
//   96 
//   97 	//int i = 0;
//   98 	//发送从机地址
//   99 	LPLD_I2C_StartTrans(I2C_IICx, addr, I2C_MWSR);
        MOVS     R2,#+0
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.N    R0,??DataTable3  ;; 0x40067000
        BL       LPLD_I2C_StartTrans
//  100 	LPLD_I2C_WaitAck(I2C_IICx, I2C_ACK_ON);
        MOVS     R1,#+1
        LDR.N    R0,??DataTable3  ;; 0x40067000
        BL       LPLD_I2C_WaitAck
//  101 	//写MMA8451寄存器地址
//  102 	LPLD_I2C_WriteByte(I2C_IICx, reg);
        MOVS     R1,R6
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.N    R0,??DataTable3  ;; 0x40067000
        BL       LPLD_I2C_WriteByte
//  103 	LPLD_I2C_WaitAck(I2C_IICx, I2C_ACK_ON);
        MOVS     R1,#+1
        LDR.N    R0,??DataTable3  ;; 0x40067000
        BL       LPLD_I2C_WaitAck
//  104 	//再次产生开始信号
//  105 	LPLD_I2C_ReStart(I2C_IICx);
        LDR.N    R0,??DataTable3  ;; 0x40067000
        BL       LPLD_I2C_ReStart
//  106 	//发送从机地址和读取位
//  107 	LPLD_I2C_WriteByte(I2C_IICx, (addr<<1)|I2C_MRSW);
        LSLS     R0,R5,#+1
        ORRS     R1,R0,#0x1
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.N    R0,??DataTable3  ;; 0x40067000
        BL       LPLD_I2C_WriteByte
//  108 	LPLD_I2C_WaitAck(I2C_IICx, I2C_ACK_ON);
        MOVS     R1,#+1
        LDR.N    R0,??DataTable3  ;; 0x40067000
        BL       LPLD_I2C_WaitAck
//  109 
//  110 
//  111 	//转换主机模式为读
//  112 	LPLD_I2C_SetMasterWR(I2C_IICx, I2C_MRSW);
        MOVS     R1,#+1
        LDR.N    R0,??DataTable3  ;; 0x40067000
        BL       LPLD_I2C_SetMasterWR
//  113 
//  114 	result_H = LPLD_I2C_ReadByte(I2C_IICx);
        LDR.N    R0,??DataTable3  ;; 0x40067000
        BL       LPLD_I2C_ReadByte
        MOVS     R5,R0
//  115 	I2C_IICx->C1 &= ~I2C_C1_TXAK_MASK;
        LDR.N    R0,??DataTable3_3  ;; 0x40067002
        LDRB     R0,[R0, #+0]
        ANDS     R0,R0,#0xF7
        LDR.N    R1,??DataTable3_3  ;; 0x40067002
        STRB     R0,[R1, #+0]
//  116 	LPLD_I2C_WaitAck(I2C_IICx, I2C_ACK_ON);
        MOVS     R1,#+1
        LDR.N    R0,??DataTable3  ;; 0x40067000
        BL       LPLD_I2C_WaitAck
//  117 
//  118 	result_H = LPLD_I2C_ReadByte(I2C_IICx);
        LDR.N    R0,??DataTable3  ;; 0x40067000
        BL       LPLD_I2C_ReadByte
        MOVS     R5,R0
//  119 	I2C_IICx->C1 &= ~I2C_C1_TXAK_MASK;
        LDR.N    R0,??DataTable3_3  ;; 0x40067002
        LDRB     R0,[R0, #+0]
        ANDS     R0,R0,#0xF7
        LDR.N    R1,??DataTable3_3  ;; 0x40067002
        STRB     R0,[R1, #+0]
//  120 	LPLD_I2C_WaitAck(I2C_IICx, I2C_ACK_ON);
        MOVS     R1,#+1
        LDR.N    R0,??DataTable3  ;; 0x40067000
        BL       LPLD_I2C_WaitAck
//  121 
//  122 
//  123 	result_L = LPLD_I2C_ReadByte(I2C_IICx);
        LDR.N    R0,??DataTable3  ;; 0x40067000
        BL       LPLD_I2C_ReadByte
        MOVS     R6,R0
//  124 
//  125 	LPLD_I2C_WaitAck(I2C_IICx, I2C_ACK_OFF);//关闭ACK
        MOVS     R1,#+0
        LDR.N    R0,??DataTable3  ;; 0x40067000
        BL       LPLD_I2C_WaitAck
//  126 	LPLD_I2C_WaitAck(I2C_IICx, I2C_ACK_ON);
        MOVS     R1,#+1
        LDR.N    R0,??DataTable3  ;; 0x40067000
        BL       LPLD_I2C_WaitAck
//  127 	LPLD_I2C_Stop(I2C_IICx);
        LDR.N    R0,??DataTable3  ;; 0x40067000
        BL       LPLD_I2C_Stop
//  128 
//  129 	for (int i = 0; i<20; i++){
        MOVS     R0,#+0
        B.N      ??I2C_ReadWord_0
//  130 		asm("nop");
??I2C_ReadWord_1:
        nop
//  131 	}
        ADDS     R0,R0,#+1
??I2C_ReadWord_0:
        CMP      R0,#+20
        BLT.N    ??I2C_ReadWord_1
//  132 	int t = 0;
        MOVS     R7,#+0
//  133 	while ((I2C_IICx->S & I2C_S_BUSY_MASK))
??I2C_ReadWord_2:
        LDR.N    R0,??DataTable3_4  ;; 0x40067003
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+26
        BPL.N    ??I2C_ReadWord_3
//  134 	{
//  135 		LPLD_I2C_Stop(I2C_IICx);
        LDR.N    R0,??DataTable3  ;; 0x40067000
        BL       LPLD_I2C_Stop
//  136 		t++;
        ADDS     R7,R7,#+1
//  137 		if (t > 10)
        CMP      R7,#+11
        BLT.N    ??I2C_ReadWord_2
//  138 		{
//  139 			I2C_Init();
        BL       I2C_Init
//  140 			if (t > 13)
        CMP      R7,#+14
        BLT.N    ??I2C_ReadWord_2
//  141 			{
//  142 				break;
//  143 			}
//  144 		}
//  145 	}
//  146 	if(tn==LSB_FIRST)
??I2C_ReadWord_3:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+1
        BNE.N    ??I2C_ReadWord_4
//  147 		result_H = result_L << 8 | result_H;
        ORRS     R5,R5,R6, LSL #+8
        B.N      ??I2C_ReadWord_5
//  148 	else
//  149 		result_H = result_H << 8 | result_L;
??I2C_ReadWord_4:
        ORRS     R5,R6,R5, LSL #+8
//  150 	return result_H;
??I2C_ReadWord_5:
        MOVS     R0,R5
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        POP      {R1,R4-R7,PC}    ;; return
//  151 }
//  152 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  153 uint8 I2C_WriteReg(uint8 addr, uint8 writeAddr, uint8 data)
//  154 {
I2C_WriteReg:
        PUSH     {R3-R5,LR}
        MOVS     R4,R1
        MOVS     R5,R2
//  155 	LPLD_I2C_StartTrans(I2C_IICx, addr, I2C_MWSR);
        MOVS     R2,#+0
        MOVS     R1,R0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.N    R0,??DataTable3  ;; 0x40067000
        BL       LPLD_I2C_StartTrans
//  156 	LPLD_I2C_WaitAck(I2C_IICx, I2C_ACK_ON);
        MOVS     R1,#+1
        LDR.N    R0,??DataTable3  ;; 0x40067000
        BL       LPLD_I2C_WaitAck
//  157 	//写寄存器地址
//  158 	LPLD_I2C_WriteByte(I2C_IICx, writeAddr);
        MOVS     R1,R4
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.N    R0,??DataTable3  ;; 0x40067000
        BL       LPLD_I2C_WriteByte
//  159 	LPLD_I2C_WaitAck(I2C_IICx, I2C_ACK_ON);
        MOVS     R1,#+1
        LDR.N    R0,??DataTable3  ;; 0x40067000
        BL       LPLD_I2C_WaitAck
//  160 	//向寄存器中写具体数据
//  161 	LPLD_I2C_WriteByte(I2C_IICx, data);
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.N    R0,??DataTable3  ;; 0x40067000
        BL       LPLD_I2C_WriteByte
//  162 	LPLD_I2C_WaitAck(I2C_IICx, I2C_ACK_ON);
        MOVS     R1,#+1
        LDR.N    R0,??DataTable3  ;; 0x40067000
        BL       LPLD_I2C_WaitAck
//  163 	//发送停止信号
//  164 	LPLD_I2C_Stop(I2C_IICx);
        LDR.N    R0,??DataTable3  ;; 0x40067000
        BL       LPLD_I2C_Stop
//  165 
//  166 	I2C_Delay();
        BL       I2C_Delay
//  167 	return 0;
        MOVS     R0,#+0
        POP      {R1,R4,R5,PC}    ;; return
//  168 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3:
        DC32     0x40067000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_1:
        DC32     ??I2C_InitStructure

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_2:
        DC32     ??result

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_3:
        DC32     0x40067002

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_4:
        DC32     0x40067003

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
//  17 bytes in section .bss
//  16 bytes in section .data
// 532 bytes in section .text
// 
// 532 bytes of CODE memory
//  33 bytes of DATA memory
//
//Errors: none
//Warnings: none
