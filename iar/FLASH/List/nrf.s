///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.50.1.10123/W32 for ARM      01/Aug/2018  12:09:49
// Copyright 1999-2015 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\ShowD\Desktop\LPHD\LPHD_camCore\LPHD_camCore\app\nrf\nrf.c
//    Command line =  
//        C:\Users\ShowD\Desktop\LPHD\LPHD_camCore\LPHD_camCore\app\nrf\nrf.c
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
//        C:\Users\ShowD\Desktop\LPHD\LPHD_camCore\LPHD_camCore\iar\FLASH\List\nrf.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN LPLD_GPIO_EnableIrq
        EXTERN LPLD_GPIO_Init
        EXTERN LPLD_NVIC_Init
        EXTERN LPLD_SPI_Init
        EXTERN LPLD_SPI_Master_WriteRead
        EXTERN LPLD_SYSTICK_DelayUs
        EXTERN __aeabi_memcpy4

        PUBLIC LPLD_NRF_RX_RecvFrame
        PUBLIC LPLD_NRF_TX_SendFrame
        PUBLIC NRF_Init
        PUBLIC NRF_RX_ADDR_P0_RESET_BUF1
        PUBLIC NRF_RX_ADDR_P0_RESET_BUF2
        PUBLIC NRF_RX_ADDR_P1_RESET_BUF1
        PUBLIC NRF_RX_ADDR_P1_RESET_BUF2
        PUBLIC NRF_Send
        PUBLIC NRF_Set
        PUBLIC NRF_TX_ADDR_RESET_BUF1
        PUBLIC NRF_TX_ADDR_RESET_BUF2
        PUBLIC NRF_isr
        PUBLIC RX_ADDRESS
        PUBLIC TX_ADDRESS
        PUBLIC nrf

// C:\Users\ShowD\Desktop\LPHD\LPHD_camCore\LPHD_camCore\app\nrf\nrf.c
//    1 #include "nrf.h"
//    2 
//    3 /****Discription**********************************************/
//    4 
//    5 /*
//    6 	0.与另一辆车进行通讯，引脚输入接输出
//    7 	1.需先调用nrf.Init()函数再使用本驱动
//    8 	2.调用nrf.Send()可以将nrf.tx_buf数组的内容传输出去
//    9 	3.调用nrf.Set(uint8, int16)函数可以对相应的通道数据进行更改
//   10 	4.nrf.data数组将会自动更新，
//   11 		但是可以在本文件的NRF_isr函数中对对应的数据进行判断
//   12 
//   13 	@Time	2018-04-27
//   14 	@Author	郭帆
//   15 	@Usefor	双车通讯
//   16 */
//   17 
//   18 /****Variables************************************************/
//   19 

        SECTION `.data`:DATA:REORDER:NOROOT(2)
        DATA
//   20 uint8 TX_ADDRESS[NRF_TX_ADR_LEN] = NRF_TX_ADDRESS; //发送地址
TX_ADDRESS:
        DC8 223, 253, 16, 16, 1, 0, 0, 0

        SECTION `.data`:DATA:REORDER:NOROOT(2)
        DATA
//   21 uint8 RX_ADDRESS[NRF_RX_ADR_LEN] = NRF_RX_ADDRESS; //接收地址(本机地址,仅用于接收模式)
RX_ADDRESS:
        DC8 223, 253, 16, 16, 1, 0, 0, 0
//   22 //NRF24L01复位之后用于检测
//   23 // NRF24L01_RX_ADDR_P0的复位值是否为0xE7E7E7E7
//   24 // NRF24L01_RX_ADDR_P1的复位值是否为0xC2C2C2C2
//   25 // NRF24L01_TX_ADDR的复位值是否为0xE7E7E7E7

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   26 uint8 NRF_RX_ADDR_P0_RESET_BUF1[5], NRF_RX_ADDR_P0_RESET_BUF2[5];
NRF_RX_ADDR_P0_RESET_BUF1:
        DS8 8

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
NRF_RX_ADDR_P0_RESET_BUF2:
        DS8 8

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   27 uint8 NRF_RX_ADDR_P1_RESET_BUF1[5], NRF_RX_ADDR_P1_RESET_BUF2[5];
NRF_RX_ADDR_P1_RESET_BUF1:
        DS8 8

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
NRF_RX_ADDR_P1_RESET_BUF2:
        DS8 8

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   28 uint8 NRF_TX_ADDR_RESET_BUF1[5], NRF_TX_ADDR_RESET_BUF2[5];
NRF_TX_ADDR_RESET_BUF1:
        DS8 8

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
NRF_TX_ADDR_RESET_BUF2:
        DS8 8
//   29 
//   30 /****Function list********************************************/
//   31 
//   32 static uint8 LPLD_NRF_CheckID(SPI_Type *spix);
//   33 static uint8 LPLD_NRF_WriteBuf(SPI_Type *spix, uint8 reg, uint8 *pbuf, uint8 len);
//   34 static uint8 LPLD_NRF_ReadBuf(SPI_Type *spix, uint8 reg, uint8 *pbuf, uint8 len);
//   35 static uint8 LPLD_NRF_WriteReg(SPI_Type *spix, uint8 reg, uint8 value);
//   36 static uint8 LPLD_NRF_ReadReg(SPI_Type *spix, uint8 reg);
//   37 static void Nrf24L01_DelayUs(uint16 t);
//   38 uint8 LPLD_NRF_TX_SendFrame(uint8 *data, uint8 len);
//   39 void LPLD_NRF_RX_RecvFrame(uint8 *data, uint8 len);
//   40 
//   41 void NRF_isr(void);
//   42 void NRF_Init(void);
//   43 void NRF_Set(uint8 index, uint8 data);
//   44 void NRF_Send(void);
//   45 
//   46 /****Objects**************************************************/
//   47 

        SECTION `.data`:DATA:REORDER:NOROOT(2)
        DATA
//   48 NRF_CLASS nrf =
nrf:
        DC32 NRF_Init, NRF_Set, NRF_Send
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
//   49 {
//   50 	&NRF_Init,
//   51 	&NRF_Set,
//   52 	&NRF_Send,
//   53 
//   54 	{0}, {0}
//   55 };
//   56 
//   57 /****Functions************************************************/
//   58 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   59 void NRF_isr(void)
//   60 {
NRF_isr:
        PUSH     {R7,LR}
//   61 	if (LPLD_GPIO_IsPinxExt(NRF_RX_IRQ_PORT, NRF_RX_IRQ_Pinx))
        LDR.W    R0,??DataTable9  ;; 0x400490a0
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+21
        BPL.N    ??NRF_isr_0
//   62 		LPLD_NRF_RX_RecvFrame(nrf.data, NRF_PLOAD_LEN);
        MOVS     R1,#+32
        LDR.W    R0,??DataTable9_1
        BL       LPLD_NRF_RX_RecvFrame
//   63 }
??NRF_isr_0:
        POP      {R0,PC}          ;; return
//   64 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   65 uint8 LPLD_NRF_TX_SendFrame(uint8 *data, uint8 len)
//   66 {
LPLD_NRF_TX_SendFrame:
        PUSH     {R4-R6,LR}
        MOVS     R5,R0
        MOVS     R6,R1
//   67 	uint8 Status;
//   68 	int  time = 0;
        MOVS     R4,#+0
//   69 
//   70 	NRF_TX_CE_L(); //拉低CE，让Nrf24l01进入Standby-I模式
        MOVS     R0,#+0
        LDR.W    R1,??DataTable9_2  ;; 0x43fe1828
        STR      R0,[R1, #+0]
//   71 
//   72 	LPLD_NRF_WriteBuf(NRF_TX_SPIx, NRF_WRITE_REG + NRF_RX_ADDR_P0, TX_ADDRESS, NRF_RX_ADR_LEN); // 装载接收端地址
        MOVS     R3,#+5
        LDR.W    R2,??DataTable9_3
        MOVS     R1,#+42
        LDR.W    R0,??DataTable9_4  ;; 0x400ac000
        BL       LPLD_NRF_WriteBuf
//   73 	LPLD_NRF_WriteBuf(NRF_TX_SPIx, NRF_WR_TX_PLOAD, data, len); 			   // 装载数据
        MOVS     R3,R6
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        MOVS     R2,R5
        MOVS     R1,#+160
        LDR.W    R0,??DataTable9_4  ;; 0x400ac000
        BL       LPLD_NRF_WriteBuf
//   74 	LPLD_NRF_WriteReg(NRF_TX_SPIx, NRF_WRITE_REG + NRF_CONFIG, 0x0E);      //使能CRC校验，使能TX，并且上电
        MOVS     R2,#+14
        MOVS     R1,#+32
        LDR.W    R0,??DataTable9_4  ;; 0x400ac000
        BL       LPLD_NRF_WriteReg
//   75 
//   76 	NRF_TX_CE_H();
        MOVS     R0,#+1
        LDR.W    R1,??DataTable9_2  ;; 0x43fe1828
        STR      R0,[R1, #+0]
//   77 
//   78 	while (1)
//   79 	{
//   80 		Status = LPLD_NRF_ReadReg(NRF_TX_SPIx, NRF_STATUS);           //读取状态寄存器
??LPLD_NRF_TX_SendFrame_0:
        MOVS     R1,#+7
        LDR.W    R0,??DataTable9_4  ;; 0x400ac000
        BL       LPLD_NRF_ReadReg
        MOVS     R5,R0
//   81 		LPLD_NRF_WriteReg(NRF_TX_SPIx, NRF_WRITE_REG + NRF_STATUS, Status);  //清空状态奇存器
        MOVS     R2,R5
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,#+39
        LDR.W    R0,??DataTable9_4  ;; 0x400ac000
        BL       LPLD_NRF_WriteReg
//   82 		if (Status & NRF_STATUS_TX_DS)                //如果发送完毕，并接收到ACK，该标志位置位
        LSLS     R0,R5,#+26
        BPL.N    ??LPLD_NRF_TX_SendFrame_1
//   83 		{
//   84 			LPLD_NRF_WriteReg(NRF_TX_SPIx, NRF_FLUSE_TX, 0xFF); //清空发送缓冲区
        MOVS     R2,#+255
        MOVS     R1,#+225
        LDR.W    R0,??DataTable9_4  ;; 0x400ac000
        BL       LPLD_NRF_WriteReg
//   85 			Status = 1;
        MOVS     R5,#+1
//   86 			break;
        B.N      ??LPLD_NRF_TX_SendFrame_2
//   87 		}
//   88 		else if (Status & NRF_STATUS_MAX_RT)//如果达到多次发送的最大值，且期间没有接收到ACK
??LPLD_NRF_TX_SendFrame_1:
        LSLS     R0,R5,#+27
        BPL.N    ??LPLD_NRF_TX_SendFrame_3
//   89 		{
//   90 			Status = 0;
        MOVS     R5,#+0
//   91 			break;
        B.N      ??LPLD_NRF_TX_SendFrame_2
//   92 		}
//   93 
//   94 		time++;
??LPLD_NRF_TX_SendFrame_3:
        ADDS     R4,R4,#+1
//   95 		LPLD_SYSTICK_DelayUs(10);
        MOVS     R0,#+10
        BL       LPLD_SYSTICK_DelayUs
//   96 		if (time > 200)
        CMP      R4,#+201
        BLT.N    ??LPLD_NRF_TX_SendFrame_0
//   97 		{
//   98 			Status = 0;
        MOVS     R5,#+0
//   99 			break;
//  100 		}
//  101 	}
//  102 	return Status;
??LPLD_NRF_TX_SendFrame_2:
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R4-R6,PC}       ;; return
//  103 }
//  104 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  105 void LPLD_NRF_RX_RecvFrame(uint8 *data, uint8 len)
//  106 {
LPLD_NRF_RX_RecvFrame:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
//  107 	uint8 Status;
//  108 	Status = LPLD_NRF_ReadReg(NRF_RX_SPIx, NRF_STATUS);
        MOVS     R1,#+7
        LDR.W    R0,??DataTable9_5  ;; 0x4002c000
        BL       LPLD_NRF_ReadReg
        MOVS     R6,R0
//  109 	LPLD_NRF_ReadBuf(NRF_RX_SPIx, NRF_RD_RX_PLOAD, data, len);
        MOVS     R3,R5
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        MOVS     R2,R4
        MOVS     R1,#+97
        LDR.N    R0,??DataTable9_5  ;; 0x4002c000
        BL       LPLD_NRF_ReadBuf
//  110 	LPLD_NRF_WriteReg(NRF_RX_SPIx, NRF_WRITE_REG + NRF_STATUS, Status);
        MOVS     R2,R6
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,#+39
        LDR.N    R0,??DataTable9_5  ;; 0x4002c000
        BL       LPLD_NRF_WriteReg
//  111 	Status = 0;
        MOVS     R6,#+0
//  112 }
        POP      {R4-R6,PC}       ;; return
//  113 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  114 void NRF_Set(uint8 index, uint8 data)
//  115 {
//  116 	if (index < NRF_PLOAD_LEN)
NRF_Set:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+32
        BGE.N    ??NRF_Set_0
//  117 		nrf.tx_buf[index] = data;
        LDR.N    R2,??DataTable9_6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADDS     R0,R0,R2
        STRB     R1,[R0, #+44]
//  118 }
??NRF_Set_0:
        BX       LR               ;; return
//  119 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  120 void NRF_Send(void)
//  121 {
NRF_Send:
        PUSH     {R7,LR}
//  122 	LPLD_NRF_TX_SendFrame(nrf.tx_buf, NRF_PLOAD_LEN);
        MOVS     R1,#+32
        LDR.N    R0,??DataTable9_7
        BL       LPLD_NRF_TX_SendFrame
//  123 }
        POP      {R0,PC}          ;; return
//  124 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  125 static void NRF_SPI_Init(void)
//  126 {
NRF_SPI_Init:
        PUSH     {LR}
        SUB      SP,SP,#+36
//  127 	static SPI_InitTypeDef SPI_InitStructure;
//  128 	static GPIO_InitTypeDef GPIO_InitStructure;
//  129 
//  130 	// 初始化发送模块SPI
//  131 	SPI_InitStructure.SPI_SPIx = NRF_TX_SPIx;
        LDR.N    R0,??DataTable9_4  ;; 0x400ac000
        LDR.N    R1,??DataTable9_8
        STR      R0,[R1, #+0]
//  132 	SPI_InitStructure.SPI_SckDivider = SPI_SCK_DIV_32;
        MOVS     R0,#+5
        LDR.N    R1,??DataTable9_8
        STRB     R0,[R1, #+5]
//  133 	SPI_InitStructure.SPI_Pcs0Pin = NRF_TX_PCS0;
        MOVS     R0,#+103
        LDR.N    R1,??DataTable9_8
        STRB     R0,[R1, #+16]
//  134 	SPI_InitStructure.SPI_SckPin = NRF_TX_SCK;
        MOVS     R0,#+104
        LDR.N    R1,??DataTable9_8
        STRB     R0,[R1, #+22]
//  135 	SPI_InitStructure.SPI_MosiPin = NRF_TX_MOSI;
        MOVS     R0,#+105
        LDR.N    R1,??DataTable9_8
        STRB     R0,[R1, #+23]
//  136 	SPI_InitStructure.SPI_MisoPin = NRF_TX_MISO;
        MOVS     R0,#+106
        LDR.N    R1,??DataTable9_8
        STRB     R0,[R1, #+24]
//  137 
//  138 	SPI_InitStructure.SPI_TxCompleteIntIsr = NULL;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable9_8
        STR      R0,[R1, #+28]
//  139 	SPI_InitStructure.SPI_QueueEndIntIsr = NULL;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable9_8
        STR      R0,[R1, #+32]
//  140 	SPI_InitStructure.SPI_TxFIFO_FillIntIsr = NULL;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable9_8
        STR      R0,[R1, #+44]
//  141 	SPI_InitStructure.SPI_TxFIFO_UnderflowIntIsr = NULL;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable9_8
        STR      R0,[R1, #+36]
//  142 	SPI_InitStructure.SPI_RxFIFO_DrainIntIsr = NULL;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable9_8
        STR      R0,[R1, #+48]
//  143 	SPI_InitStructure.SPI_RxFIFO_OverflowIntIsr = NULL;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable9_8
        STR      R0,[R1, #+40]
//  144 
//  145 	LPLD_SPI_Init(SPI_InitStructure);
        LDR.N    R1,??DataTable9_8
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+52
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_SPI_Init
//  146 
//  147 	// 初始化发送模块CE
//  148 	GPIO_InitStructure.GPIO_PTx = NRF_TX_CE_PTx;
        LDR.N    R0,??DataTable9_9  ;; 0x400ff0c0
        LDR.N    R1,??DataTable9_10
        STR      R0,[R1, #+0]
//  149 	GPIO_InitStructure.GPIO_Pins = NRF_TX_CE_Pinx;
        MOV      R0,#+1024
        LDR.N    R1,??DataTable9_10
        STR      R0,[R1, #+4]
//  150 	GPIO_InitStructure.GPIO_Dir = DIR_OUTPUT;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable9_10
        STRB     R0,[R1, #+12]
//  151 	GPIO_InitStructure.GPIO_Output = OUTPUT_L;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable9_10
        STRB     R0,[R1, #+13]
//  152 
//  153 	LPLD_GPIO_Init(GPIO_InitStructure);
        LDR.N    R1,??DataTable9_10
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//  154 
//  155 	// 初始化接收模块SPI
//  156 	SPI_InitStructure.SPI_SPIx = NRF_RX_SPIx;
        LDR.N    R0,??DataTable9_5  ;; 0x4002c000
        LDR.N    R1,??DataTable9_8
        STR      R0,[R1, #+0]
//  157 	SPI_InitStructure.SPI_SckDivider = SPI_SCK_DIV_32;
        MOVS     R0,#+5
        LDR.N    R1,??DataTable9_8
        STRB     R0,[R1, #+5]
//  158 	SPI_InitStructure.SPI_Pcs0Pin = NRF_RX_PCS0;
        MOVS     R0,#+14
        LDR.N    R1,??DataTable9_8
        STRB     R0,[R1, #+16]
//  159 	SPI_InitStructure.SPI_SckPin = NRF_RX_SCK;
        MOVS     R0,#+15
        LDR.N    R1,??DataTable9_8
        STRB     R0,[R1, #+22]
//  160 	SPI_InitStructure.SPI_MosiPin = NRF_RX_MOSI;
        MOVS     R0,#+16
        LDR.N    R1,??DataTable9_8
        STRB     R0,[R1, #+23]
//  161 	SPI_InitStructure.SPI_MisoPin = NRF_RX_MISO;
        MOVS     R0,#+17
        LDR.N    R1,??DataTable9_8
        STRB     R0,[R1, #+24]
//  162 
//  163 	LPLD_SPI_Init(SPI_InitStructure);
        LDR.N    R1,??DataTable9_8
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+52
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_SPI_Init
//  164 
//  165 	// 初始化接收模块CE
//  166 	GPIO_InitStructure.GPIO_PTx = NRF_RX_CE_PTx;
        LDR.N    R0,??DataTable9_11  ;; 0x400ff000
        LDR.N    R1,??DataTable9_10
        STR      R0,[R1, #+0]
//  167 	GPIO_InitStructure.GPIO_Pins = NRF_RX_CE_Pinx;
        MOV      R0,#+8192
        LDR.N    R1,??DataTable9_10
        STR      R0,[R1, #+4]
//  168 	GPIO_InitStructure.GPIO_Dir = DIR_OUTPUT;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable9_10
        STRB     R0,[R1, #+12]
//  169 	GPIO_InitStructure.GPIO_Output = OUTPUT_L;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable9_10
        STRB     R0,[R1, #+13]
//  170 
//  171 	LPLD_GPIO_Init(GPIO_InitStructure);
        LDR.N    R1,??DataTable9_10
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//  172 }
        ADD      SP,SP,#+36
        POP      {PC}             ;; return

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
??SPI_InitStructure:
        DS8 52

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
??GPIO_InitStructure:
        DS8 20
//  173 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  174 static uint8 NRF_TX_Init(void)
//  175 {
NRF_TX_Init:
        PUSH     {R4,LR}
//  176 	uint8 Temp;
//  177 
//  178 	NRF_TX_CE_L();
        MOVS     R0,#+0
        LDR.N    R1,??DataTable9_2  ;; 0x43fe1828
        STR      R0,[R1, #+0]
//  179 	// 芯片上电复位后
//  180 	// 分别读取NRF24L01_RX_ADDR_P0、NRF24L01_RX_ADDR_P1、NRF24L01_TX_ADDR的值
//  181 	// 查看以下数据
//  182 	// NRF24L01_RX_ADDR_P0的复位值是否为0xE7E7E7E7
//  183 	// NRF24L01_RX_ADDR_P1的复位值是否为0xC2C2C2C2
//  184 	// NRF24L01_TX_ADDR的复位值是否为0xE7E7E7E7
//  185 	// 如果正确证明SPI读写没有问题，反之亦然
//  186 	LPLD_NRF_CheckID(NRF_TX_SPIx);
        LDR.N    R0,??DataTable9_4  ;; 0x400ac000
        BL       LPLD_NRF_CheckID
//  187 
//  188 	Temp = LPLD_NRF_WriteReg(NRF_TX_SPIx, NRF_FLUSE_TX, 0xFF);
        MOVS     R2,#+255
        MOVS     R1,#+225
        LDR.N    R0,??DataTable9_4  ;; 0x400ac000
        BL       LPLD_NRF_WriteReg
        MOVS     R4,R0
//  189 
//  190 	Temp = LPLD_NRF_WriteBuf(NRF_TX_SPIx, NRF_WRITE_REG + NRF_TX_ADDR, TX_ADDRESS, NRF_TX_ADR_LEN);
        MOVS     R3,#+5
        LDR.N    R2,??DataTable9_3
        MOVS     R1,#+48
        LDR.N    R0,??DataTable9_4  ;; 0x400ac000
        BL       LPLD_NRF_WriteBuf
        MOVS     R4,R0
//  191 
//  192 	Temp = LPLD_NRF_WriteReg(NRF_TX_SPIx, NRF_WRITE_REG + NRF_EN_AA, 0x01);       //频道0自动,ACK应答允许
        MOVS     R2,#+1
        MOVS     R1,#+33
        LDR.N    R0,??DataTable9_4  ;; 0x400ac000
        BL       LPLD_NRF_WriteReg
        MOVS     R4,R0
//  193 	Temp = LPLD_NRF_WriteReg(NRF_TX_SPIx, NRF_WRITE_REG + NRF_EN_RXADDR, 0x01);   //允许接收地址只有频道0
        MOVS     R2,#+1
        MOVS     R1,#+34
        LDR.N    R0,??DataTable9_4  ;; 0x400ac000
        BL       LPLD_NRF_WriteReg
        MOVS     R4,R0
//  194 	Temp = LPLD_NRF_WriteReg(NRF_TX_SPIx, NRF_WRITE_REG + NRF_SETUP_RETR, 0x1a);  //设置自动重发时间和次数：500us + 86us, 10 retrans...
        MOVS     R2,#+26
        MOVS     R1,#+36
        LDR.N    R0,??DataTable9_4  ;; 0x400ac000
        BL       LPLD_NRF_WriteReg
        MOVS     R4,R0
//  195 	Temp = LPLD_NRF_WriteReg(NRF_TX_SPIx, NRF_WRITE_REG + NRF_RF_CH, NRF_TX_CH);  //设置信道工作为2.4GHZ，收发必须一致
        MOVS     R2,#+99
        MOVS     R1,#+37
        LDR.N    R0,??DataTable9_4  ;; 0x400ac000
        BL       LPLD_NRF_WriteReg
        MOVS     R4,R0
//  196 	Temp = LPLD_NRF_WriteReg(NRF_TX_SPIx, NRF_WRITE_REG + NRF_RF_SETUP, 0x07);    //设置发射速率为2MHZ，发射功率为最大值0dB
        MOVS     R2,#+7
        MOVS     R1,#+38
        LDR.N    R0,??DataTable9_4  ;; 0x400ac000
        BL       LPLD_NRF_WriteReg
        MOVS     R4,R0
//  197 	Temp = LPLD_NRF_WriteReg(NRF_TX_SPIx, NRF_WRITE_REG + NRF_CONFIG, 0x0E);      //使能CRC校验，使能TX，并且上电
        MOVS     R2,#+14
        MOVS     R1,#+32
        LDR.N    R0,??DataTable9_4  ;; 0x400ac000
        BL       LPLD_NRF_WriteReg
        MOVS     R4,R0
//  198 
//  199 	NRF_TX_CE_H();
        MOVS     R0,#+1
        LDR.N    R1,??DataTable9_2  ;; 0x43fe1828
        STR      R0,[R1, #+0]
//  200 
//  201 	Nrf24L01_DelayUs(2000); //等待Nrf24L01发送模式初始化完毕
        MOV      R0,#+2000
        BL       Nrf24L01_DelayUs
//  202 
//  203 	return Temp;
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R4,PC}          ;; return
//  204 }
//  205 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  206 static uint8 NRF_RX_Init(void)
//  207 {
NRF_RX_Init:
        PUSH     {R4,LR}
//  208 	uint8 Temp;
//  209 
//  210 	NRF_RX_CE_L();
        MOVS     R0,#+0
        LDR.N    R1,??DataTable9_12  ;; 0x43fe0034
        STR      R0,[R1, #+0]
//  211 	// 芯片上电复位后
//  212 	// 分别读取NRF24L01_RX_ADDR_P0、NRF24L01_RX_ADDR_P1、NRF24L01_TX_ADDR的值
//  213 	// 查看以下数据
//  214 	// NRF24L01_RX_ADDR_P0的复位值是否为0xE7E7E7E7
//  215 	// NRF24L01_RX_ADDR_P1的复位值是否为0xC2C2C2C2
//  216 	// NRF24L01_TX_ADDR的复位值是否为0xE7E7E7E7
//  217 	// 如果正确证明SPI读写没有问题，反之亦然
//  218 	LPLD_NRF_CheckID(NRF_RX_SPIx);
        LDR.N    R0,??DataTable9_5  ;; 0x4002c000
        BL       LPLD_NRF_CheckID
//  219 
//  220 	Temp = LPLD_NRF_WriteBuf(NRF_RX_SPIx, NRF_WRITE_REG + NRF_RX_ADDR_P0, RX_ADDRESS, NRF_RX_ADR_LEN);
        MOVS     R3,#+5
        LDR.N    R2,??DataTable9_13
        MOVS     R1,#+42
        LDR.N    R0,??DataTable9_5  ;; 0x4002c000
        BL       LPLD_NRF_WriteBuf
        MOVS     R4,R0
//  221 	Temp = LPLD_NRF_WriteReg(NRF_RX_SPIx, NRF_WRITE_REG + NRF_RX_PW_P0, NRF_PLOAD_LEN);
        MOVS     R2,#+32
        MOVS     R1,#+49
        LDR.N    R0,??DataTable9_5  ;; 0x4002c000
        BL       LPLD_NRF_WriteReg
        MOVS     R4,R0
//  222 
//  223 	Temp = LPLD_NRF_WriteReg(NRF_RX_SPIx, NRF_WRITE_REG + NRF_EN_AA, 0x01);      //频道0自动,ACK应答允许
        MOVS     R2,#+1
        MOVS     R1,#+33
        LDR.N    R0,??DataTable9_5  ;; 0x4002c000
        BL       LPLD_NRF_WriteReg
        MOVS     R4,R0
//  224 	Temp = LPLD_NRF_WriteReg(NRF_RX_SPIx, NRF_WRITE_REG + NRF_EN_RXADDR, 0x01);  //允许接收地址只有频道0
        MOVS     R2,#+1
        MOVS     R1,#+34
        LDR.N    R0,??DataTable9_5  ;; 0x4002c000
        BL       LPLD_NRF_WriteReg
        MOVS     R4,R0
//  225 	Temp = LPLD_NRF_WriteReg(NRF_RX_SPIx, NRF_WRITE_REG + NRF_SETUP_RETR, 0x1a); // 500us + 86us, 10 retrans...
        MOVS     R2,#+26
        MOVS     R1,#+36
        LDR.N    R0,??DataTable9_5  ;; 0x4002c000
        BL       LPLD_NRF_WriteReg
        MOVS     R4,R0
//  226 	Temp = LPLD_NRF_WriteReg(NRF_RX_SPIx, NRF_WRITE_REG + NRF_RF_CH, NRF_RX_CH); //设置信道工作为2.4GHZ，收发必须一致
        MOVS     R2,#+40
        MOVS     R1,#+37
        LDR.N    R0,??DataTable9_5  ;; 0x4002c000
        BL       LPLD_NRF_WriteReg
        MOVS     R4,R0
//  227 	Temp = LPLD_NRF_WriteReg(NRF_RX_SPIx, NRF_WRITE_REG + NRF_RF_SETUP, 0x07);   //设置发射速率为2MHZ，发射功率为最大值0dB
        MOVS     R2,#+7
        MOVS     R1,#+38
        LDR.N    R0,??DataTable9_5  ;; 0x4002c000
        BL       LPLD_NRF_WriteReg
        MOVS     R4,R0
//  228 	Temp = LPLD_NRF_WriteReg(NRF_RX_SPIx, NRF_WRITE_REG + NRF_CONFIG, 0x0F);     //使能CRC校验，使能RX，并且上电
        MOVS     R2,#+15
        MOVS     R1,#+32
        LDR.N    R0,??DataTable9_5  ;; 0x4002c000
        BL       LPLD_NRF_WriteReg
        MOVS     R4,R0
//  229 
//  230 	NRF_RX_CE_H();
        MOVS     R0,#+1
        LDR.N    R1,??DataTable9_12  ;; 0x43fe0034
        STR      R0,[R1, #+0]
//  231 
//  232 	Nrf24L01_DelayUs(2000);//等待Nrf24L01接收模式初始化完毕
        MOV      R0,#+2000
        BL       Nrf24L01_DelayUs
//  233 
//  234 	return Temp;
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R4,PC}          ;; return
//  235 }
//  236 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  237 void NRF_Init(void)
//  238 {
NRF_Init:
        PUSH     {R7,LR}
//  239 	NRF_SPI_Init();
        BL       NRF_SPI_Init
//  240 
//  241 	NRF_TX_Init();
        BL       NRF_TX_Init
//  242 
//  243 	static NVIC_InitTypeDef NVIC_InitStructure;
//  244 	static GPIO_InitTypeDef GPIO_InitStructure;
//  245 
//  246 	NVIC_InitStructure.NVIC_IRQChannel = NRF_RX_IRQn;
        MOVS     R0,#+87
        LDR.N    R1,??DataTable9_14
        STRB     R0,[R1, #+0]
//  247 	NVIC_InitStructure.NVIC_IRQChannelGroupPriority = NVIC_PriorityGroup_2;
        MOVS     R0,#+5
        LDR.N    R1,??DataTable9_14
        STR      R0,[R1, #+4]
//  248 	NVIC_InitStructure.NVIC_IRQChannelPreemptionPriority = 2;
        MOVS     R0,#+2
        LDR.N    R1,??DataTable9_14
        STR      R0,[R1, #+8]
//  249 	NVIC_InitStructure.NVIC_IRQChannelSubPriority=3;
        MOVS     R0,#+3
        LDR.N    R1,??DataTable9_14
        STR      R0,[R1, #+12]
//  250 	NVIC_InitStructure.NVIC_IRQChannelEnable=0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable9_14
        STRB     R0,[R1, #+16]
//  251 	LPLD_NVIC_Init(NVIC_InitStructure);
        LDR.N    R1,??DataTable9_14
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_NVIC_Init
//  252 
//  253 	GPIO_InitStructure.GPIO_PTx = NRF_RX_IRQ_PTx;
        LDR.N    R0,??DataTable9_11  ;; 0x400ff000
        LDR.N    R1,??DataTable9_15
        STR      R0,[R1, #+0]
//  254 	GPIO_InitStructure.GPIO_Pins = NRF_RX_IRQ_Pinx;
        MOV      R0,#+1024
        LDR.N    R1,??DataTable9_15
        STR      R0,[R1, #+4]
//  255 	GPIO_InitStructure.GPIO_Dir = DIR_INPUT;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable9_15
        STRB     R0,[R1, #+12]
//  256 	GPIO_InitStructure.GPIO_PinControl =  INPUT_PULL_DOWN | IRQC_FA;
        LDR.N    R0,??DataTable9_16  ;; 0xa0002
        LDR.N    R1,??DataTable9_15
        STR      R0,[R1, #+8]
//  257 	GPIO_InitStructure.GPIO_Isr = NRF_isr;
        LDR.N    R0,??DataTable9_17
        LDR.N    R1,??DataTable9_15
        STR      R0,[R1, #+16]
//  258 
//  259 	LPLD_GPIO_Init(GPIO_InitStructure);
        LDR.N    R1,??DataTable9_15
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//  260 	LPLD_GPIO_EnableIrq(GPIO_InitStructure);
        LDR.N    R1,??DataTable9_15
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_EnableIrq
//  261 
//  262 	NRF_RX_Init();
        BL       NRF_RX_Init
//  263 }
        POP      {R0,PC}          ;; return

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
??NVIC_InitStructure:
        DS8 20

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
??GPIO_InitStructure_1:
        DS8 20
//  264 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//  265 static uint8 LPLD_NRF_CheckID(SPI_Type *spix)
//  266 {
LPLD_NRF_CheckID:
        PUSH     {R4,LR}
        MOVS     R4,R0
//  267 	uint8 Temp;
//  268 	if (spix == NRF_TX_SPIx)
        LDR.N    R1,??DataTable9_4  ;; 0x400ac000
        CMP      R4,R1
        BNE.N    ??LPLD_NRF_CheckID_0
//  269 	{
//  270 		Temp = LPLD_NRF_ReadBuf(spix, NRF_READ_REG + NRF_RX_ADDR_P1, NRF_RX_ADDR_P1_RESET_BUF1, 5);
        MOVS     R3,#+5
        LDR.N    R2,??DataTable9_18
        MOVS     R1,#+11
        MOVS     R0,R4
        BL       LPLD_NRF_ReadBuf
//  271 		asm("nop");
        nop
//  272 		Temp = LPLD_NRF_ReadBuf(spix, NRF_READ_REG + NRF_TX_ADDR, NRF_TX_ADDR_RESET_BUF1, 5);
        MOVS     R3,#+5
        LDR.N    R2,??DataTable9_19
        MOVS     R1,#+16
        MOVS     R0,R4
        BL       LPLD_NRF_ReadBuf
//  273 		asm("nop");
        nop
//  274 		Temp = LPLD_NRF_ReadBuf(spix, NRF_READ_REG + NRF_RX_ADDR_P0, NRF_RX_ADDR_P0_RESET_BUF1, 5);
        MOVS     R3,#+5
        LDR.N    R2,??DataTable9_20
        MOVS     R1,#+10
        MOVS     R0,R4
        BL       LPLD_NRF_ReadBuf
//  275 		asm("nop");
        nop
        B.N      ??LPLD_NRF_CheckID_1
//  276 	}
//  277 	else if (spix == NRF_RX_SPIx)
??LPLD_NRF_CheckID_0:
        LDR.N    R1,??DataTable9_5  ;; 0x4002c000
        CMP      R4,R1
        BNE.N    ??LPLD_NRF_CheckID_1
//  278 	{
//  279 		Temp = LPLD_NRF_ReadBuf(spix, NRF_READ_REG + NRF_RX_ADDR_P1, NRF_RX_ADDR_P1_RESET_BUF2, 5);
        MOVS     R3,#+5
        LDR.N    R2,??DataTable9_21
        MOVS     R1,#+11
        MOVS     R0,R4
        BL       LPLD_NRF_ReadBuf
//  280 		asm("nop");
        nop
//  281 		Temp = LPLD_NRF_ReadBuf(spix, NRF_READ_REG + NRF_TX_ADDR, NRF_TX_ADDR_RESET_BUF2, 5);
        MOVS     R3,#+5
        LDR.N    R2,??DataTable9_22
        MOVS     R1,#+16
        MOVS     R0,R4
        BL       LPLD_NRF_ReadBuf
//  282 		asm("nop");
        nop
//  283 		Temp = LPLD_NRF_ReadBuf(spix, NRF_READ_REG + NRF_RX_ADDR_P0, NRF_RX_ADDR_P0_RESET_BUF2, 5);
        MOVS     R3,#+5
        LDR.N    R2,??DataTable9_23
        MOVS     R1,#+10
        MOVS     R0,R4
        BL       LPLD_NRF_ReadBuf
//  284 		asm("nop");
        nop
//  285 	}
//  286 	return Temp;
??LPLD_NRF_CheckID_1:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R4,PC}          ;; return
//  287 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9:
        DC32     0x400490a0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_1:
        DC32     nrf+0xC

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_2:
        DC32     0x43fe1828

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_3:
        DC32     TX_ADDRESS

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_4:
        DC32     0x400ac000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_5:
        DC32     0x4002c000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_6:
        DC32     nrf

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_7:
        DC32     nrf+0x2C

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_8:
        DC32     ??SPI_InitStructure

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_9:
        DC32     0x400ff0c0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_10:
        DC32     ??GPIO_InitStructure

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_11:
        DC32     0x400ff000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_12:
        DC32     0x43fe0034

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_13:
        DC32     RX_ADDRESS

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_14:
        DC32     ??NVIC_InitStructure

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_15:
        DC32     ??GPIO_InitStructure_1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_16:
        DC32     0xa0002

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_17:
        DC32     NRF_isr

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_18:
        DC32     NRF_RX_ADDR_P1_RESET_BUF1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_19:
        DC32     NRF_TX_ADDR_RESET_BUF1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_20:
        DC32     NRF_RX_ADDR_P0_RESET_BUF1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_21:
        DC32     NRF_RX_ADDR_P1_RESET_BUF2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_22:
        DC32     NRF_TX_ADDR_RESET_BUF2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_23:
        DC32     NRF_RX_ADDR_P0_RESET_BUF2
//  288 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  289 static uint8 LPLD_NRF_WriteBuf(SPI_Type *spix, uint8 reg, uint8 *pbuf, uint8 len)
//  290 {
LPLD_NRF_WriteBuf:
        PUSH     {R4-R8,LR}
        MOVS     R4,R0
        MOVS     R5,R2
        MOVS     R6,R3
//  291 	uint8 status, i;
//  292 
//  293 	status = LPLD_SPI_Master_WriteRead(spix, reg, SPI_PCS0, SPI_PCS_ASSERTED); //帧发送完毕后PCS保持低电平
        MOVS     R3,#+1
        MOVS     R2,#+1
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R4
        BL       LPLD_SPI_Master_WriteRead
        MOVS     R7,R0
//  294 
//  295 	for (i = 0; i < len; i++)
        MOVS     R8,#+0
        B.N      ??LPLD_NRF_WriteBuf_0
//  296 	{
//  297 		if (i == (len - 1))
//  298 		{
//  299 			LPLD_SPI_Master_WriteRead(spix, *pbuf++, SPI_PCS0, SPI_PCS_INACTIVE);//帧发送完毕后PCS变成高电平
//  300 		}
//  301 		else
//  302 		{
//  303 			LPLD_SPI_Master_WriteRead(spix, *pbuf++, SPI_PCS0, SPI_PCS_ASSERTED);
??LPLD_NRF_WriteBuf_1:
        MOVS     R3,#+1
        MOVS     R2,#+1
        LDRB     R1,[R5, #+0]
        MOVS     R0,R4
        BL       LPLD_SPI_Master_WriteRead
        ADDS     R5,R5,#+1
//  304 		}
??LPLD_NRF_WriteBuf_2:
        ADDS     R8,R8,#+1
??LPLD_NRF_WriteBuf_0:
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R8,R6
        BCS.N    ??LPLD_NRF_WriteBuf_3
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        SUBS     R0,R6,#+1
        CMP      R8,R0
        BNE.N    ??LPLD_NRF_WriteBuf_1
        MOVS     R3,#+0
        MOVS     R2,#+1
        LDRB     R1,[R5, #+0]
        MOVS     R0,R4
        BL       LPLD_SPI_Master_WriteRead
        ADDS     R5,R5,#+1
        B.N      ??LPLD_NRF_WriteBuf_2
//  305 	}
//  306 	return status;
??LPLD_NRF_WriteBuf_3:
        MOVS     R0,R7
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R4-R8,PC}       ;; return
//  307 }
//  308 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  309 static uint8 LPLD_NRF_ReadBuf(SPI_Type *spix, uint8 reg, uint8 *pbuf, uint8 len)
//  310 {
LPLD_NRF_ReadBuf:
        PUSH     {R4-R8,LR}
        MOVS     R4,R0
        MOVS     R5,R2
        MOVS     R6,R3
//  311 	uint8 Status,i;
//  312 
//  313 	Status = LPLD_SPI_Master_WriteRead(spix, reg, SPI_PCS0, SPI_PCS_ASSERTED);
        MOVS     R3,#+1
        MOVS     R2,#+1
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R4
        BL       LPLD_SPI_Master_WriteRead
        MOVS     R7,R0
//  314 
//  315 	for (i = 0; i < len; i++)
        MOVS     R8,#+0
        B.N      ??LPLD_NRF_ReadBuf_0
//  316 	{
//  317 		if (i == (len - 1))
//  318 		{
//  319 			pbuf[i] = LPLD_SPI_Master_WriteRead(spix, 0xFF, SPI_PCS0, SPI_PCS_INACTIVE);
//  320 		}
//  321 		else
//  322 		{
//  323 			pbuf[i] = LPLD_SPI_Master_WriteRead(spix, 0xFF, SPI_PCS0, SPI_PCS_ASSERTED);
??LPLD_NRF_ReadBuf_1:
        MOVS     R3,#+1
        MOVS     R2,#+1
        MOVS     R1,#+255
        MOVS     R0,R4
        BL       LPLD_SPI_Master_WriteRead
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        STRB     R0,[R8, R5]
//  324 		}
??LPLD_NRF_ReadBuf_2:
        ADDS     R8,R8,#+1
??LPLD_NRF_ReadBuf_0:
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R8,R6
        BCS.N    ??LPLD_NRF_ReadBuf_3
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        SUBS     R0,R6,#+1
        CMP      R8,R0
        BNE.N    ??LPLD_NRF_ReadBuf_1
        MOVS     R3,#+0
        MOVS     R2,#+1
        MOVS     R1,#+255
        MOVS     R0,R4
        BL       LPLD_SPI_Master_WriteRead
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        STRB     R0,[R8, R5]
        B.N      ??LPLD_NRF_ReadBuf_2
//  325 	}
//  326 	return Status ;
??LPLD_NRF_ReadBuf_3:
        MOVS     R0,R7
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R4-R8,PC}       ;; return
//  327 }
//  328 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  329 static uint8 LPLD_NRF_WriteReg(SPI_Type *spix, uint8 reg, uint8 value)
//  330 {
LPLD_NRF_WriteReg:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R2
//  331 	uint8 Status;
//  332 	Status = LPLD_SPI_Master_WriteRead(spix, reg, SPI_PCS0, SPI_PCS_ASSERTED);
        MOVS     R3,#+1
        MOVS     R2,#+1
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R4
        BL       LPLD_SPI_Master_WriteRead
        MOVS     R6,R0
//  333 	LPLD_SPI_Master_WriteRead(spix, value, SPI_PCS0, SPI_PCS_INACTIVE);
        MOVS     R3,#+0
        MOVS     R2,#+1
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R4
        BL       LPLD_SPI_Master_WriteRead
//  334 	return Status;
        MOVS     R0,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R4-R6,PC}       ;; return
//  335 }
//  336 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  337 static uint8 LPLD_NRF_ReadReg(SPI_Type *spix, uint8 reg)
//  338 {
LPLD_NRF_ReadReg:
        PUSH     {R4,LR}
        MOVS     R4,R0
//  339 	uint8 temp;
//  340 	LPLD_SPI_Master_WriteRead(spix, reg, SPI_PCS0, SPI_PCS_ASSERTED);
        MOVS     R3,#+1
        MOVS     R2,#+1
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R4
        BL       LPLD_SPI_Master_WriteRead
//  341 	temp = LPLD_SPI_Master_WriteRead(spix, 0xFF, SPI_PCS0, SPI_PCS_INACTIVE);
        MOVS     R3,#+0
        MOVS     R2,#+1
        MOVS     R1,#+255
        MOVS     R0,R4
        BL       LPLD_SPI_Master_WriteRead
//  342 	return temp;
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R4,PC}          ;; return
//  343 }
//  344 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//  345 static void Nrf24L01_DelayUs(uint16 t)
//  346 {
//  347 	uint16 i;
//  348 	for(i = 0; i < t;i++)
Nrf24L01_DelayUs:
        MOVS     R1,#+0
        B.N      ??Nrf24L01_DelayUs_0
//  349 	{
//  350 		asm("nop");
??Nrf24L01_DelayUs_1:
        nop
//  351 	}
        ADDS     R1,R1,#+1
??Nrf24L01_DelayUs_0:
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        CMP      R1,R0
        BCC.N    ??Nrf24L01_DelayUs_1
//  352 }
        BX       LR               ;; return

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
//   160 bytes in section .bss
//    92 bytes in section .data
// 1 372 bytes in section .text
// 
// 1 372 bytes of CODE memory
//   252 bytes of DATA memory
//
//Errors: none
//Warnings: none
