///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.50.1.10123/W32 for ARM      01/Aug/2018  12:09:48
// Copyright 1999-2015 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\ShowD\Desktop\LPHD\LPHD_camCore\LPHD_camCore\app\mpu6050\mpu6050.c
//    Command line =  
//        C:\Users\ShowD\Desktop\LPHD\LPHD_camCore\LPHD_camCore\app\mpu6050\mpu6050.c
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
//        C:\Users\ShowD\Desktop\LPHD\LPHD_camCore\LPHD_camCore\iar\FLASH\List\mpu6050.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN __aeabi_d2iz
        EXTERN __aeabi_ddiv
        EXTERN __aeabi_f2d
        EXTERN __aeabi_fadd
        EXTERN __aeabi_i2f
        EXTERN abs
        EXTERN i2c

        PUBLIC MPU6050_GetAcc
        PUBLIC MPU6050_GetAcc_X
        PUBLIC MPU6050_GetAcc_Y
        PUBLIC MPU6050_GetAcc_Z
        PUBLIC MPU6050_GetAngRateRaw_X
        PUBLIC MPU6050_GetAngRateRaw_Y
        PUBLIC MPU6050_GetAngRateRaw_Z
        PUBLIC MPU6050_GetChipID
        PUBLIC MPU6050_GetGry
        PUBLIC MPU6050_Init
        PUBLIC MPU6050_ReadReg
        PUBLIC MPU6050_ReadWord
        PUBLIC MPU6050_SetACCFullScale
        PUBLIC MPU6050_SetClockSource
        PUBLIC MPU6050_SetGRYFullScale
        PUBLIC MPU6050_SetLPF
        PUBLIC MPU6050_SetMode
        PUBLIC MPU6050_SetODR
        PUBLIC MPU6050_SetOffset
        PUBLIC MPU6050_WriteReg
        PUBLIC mpu6050

// C:\Users\ShowD\Desktop\LPHD\LPHD_camCore\LPHD_camCore\app\mpu6050\mpu6050.c
//    1 #include "MPU6050.h"
//    2 
//    3 /****Discription**********************************************/
//    4 
//    5 /*
//    6 	0.需先调用mpu6050.Init()函数再使用本驱动
//    7 	1.最好先调用mpu6050.SetOffset()来设置角速度零漂
//    8 		获得零漂的方法为让陀螺仪静止，看内存中获得的GRY值
//    9 	2.mpu6050.GetAcc/GetGry()函数为刷新相应的轴的值
//   10 		参数为轴可以MPU6050_X | MPU6050_Y
//   11 	3.访问mpu6050.acc.x可以获得x轴加速度的值
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
//   22 uint8 MPU6050_Init(void);
//   23 uint8 MPU6050_GetAcc(uint16 accNum);
//   24 uint8 MPU6050_GetGry(uint16 gryNum);
//   25 void MPU6050_SetOffset(int16 x, int16 y, int16 z);
//   26 
//   27 uint8 MPU6050_SetACCFullScale(MPU6050_ACC_Fullscale_t fs);
//   28 uint8 MPU6050_SetGRYFullScale(MPU6050_GRY_Fullscale_t fs);
//   29 uint8 MPU6050_SetODR(MPU6050_ODR od);
//   30 uint8 MPU6050_SetLPF(MPU6050_DLPF_t hz);
//   31 uint8 MPU6050_SetMode(MPU6050_Status_t st);
//   32 uint8 MPU6050_GetAcc_X(int16_t* raw);
//   33 uint8 MPU6050_GetAcc_Y(int16_t* raw);
//   34 uint8 MPU6050_GetAcc_Z(int16_t* raw);
//   35 uint8 MPU6050_GetAngRateRaw_X(int16_t* raw);
//   36 uint8 MPU6050_GetAngRateRaw_Y(int16_t* raw);
//   37 uint8 MPU6050_GetAngRateRaw_Z(int16_t* raw);
//   38 uint8 MPU6050_GetChipID(uint8_t* buff);
//   39 
//   40 /****Variables************************************************/
//   41 
//   42 /****Objects**************************************************/
//   43 

        SECTION `.data`:DATA:REORDER:NOROOT(2)
        DATA
//   44 MPU6050_CLASS mpu6050 =
mpu6050:
        DC32 MPU6050_Init, MPU6050_GetAcc, MPU6050_GetGry, MPU6050_SetOffset
        DC16 0
        DC8 0, 0, 0, 0
        DC16 0
        DC8 0, 0, 0, 0
        DC16 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
//   45 {
//   46 	&MPU6050_Init,
//   47 	&MPU6050_GetAcc,
//   48 	&MPU6050_GetGry,
//   49 	&MPU6050_SetOffset,
//   50 
//   51 	{0}, {0}, {0}
//   52 };
//   53 
//   54 /****Functions************************************************/
//   55 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//   56 static void MPU6050_Delay(void)
//   57 {
//   58 	for (int i = 0; i < 1000; i++) asm("nop");
MPU6050_Delay:
        MOVS     R0,#+0
        B.N      ??MPU6050_Delay_0
??MPU6050_Delay_1:
        nop
        ADDS     R0,R0,#+1
??MPU6050_Delay_0:
        CMP      R0,#+1000
        BLT.N    ??MPU6050_Delay_1
//   59 }
        BX       LR               ;; return
//   60 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   61 static uint8 MPU6050_Check(void)
//   62 {
MPU6050_Check:
        PUSH     {R7,LR}
//   63 	uint8 mpu6050ID = 0;
        MOVS     R0,#+0
        STRB     R0,[SP, #+0]
//   64 
//   65 	MPU6050_GetChipID(&mpu6050ID);
        MOV      R0,SP
        BL       MPU6050_GetChipID
//   66 
//   67 	if (mpu6050ID != MPU6050_ID)
        LDRB     R0,[SP, #+0]
        CMP      R0,#+104
        BEQ.N    ??MPU6050_Check_0
//   68 		return 1;
        MOVS     R0,#+1
        B.N      ??MPU6050_Check_1
//   69 
//   70 	return 0;
??MPU6050_Check_0:
        MOVS     R0,#+0
??MPU6050_Check_1:
        POP      {R1,PC}          ;; return
//   71 }
//   72 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   73 uint8 MPU6050_Init(void)
//   74 {
MPU6050_Init:
        PUSH     {R4,LR}
//   75 	int result = 0;
        MOVS     R4,#+0
//   76 
//   77 	if (i2c.Init()) result = 1;
        LDR.N    R0,??DataTable6
        LDR      R0,[R0, #+0]
        BLX      R0
        CMP      R0,#+0
        BEQ.N    ??MPU6050_Init_0
        MOVS     R4,#+1
//   78 
//   79 	MPU6050_Delay();
??MPU6050_Init_0:
        BL       MPU6050_Delay
//   80 
//   81 	if (MPU6050_Check()) result = 1;
        BL       MPU6050_Check
        CMP      R0,#+0
        BEQ.N    ??MPU6050_Init_1
        MOVS     R4,#+1
//   82 
//   83 	MPU6050_SetACCFullScale(MPU6050_ACC_FULLSCALE_4G);
??MPU6050_Init_1:
        MOVS     R0,#+1
        BL       MPU6050_SetACCFullScale
//   84 	MPU6050_SetGRYFullScale(MPU6050_GRY_FULLSCALE_500);
        MOVS     R0,#+1
        BL       MPU6050_SetGRYFullScale
//   85 	MPU6050_SetODR(MPU6050_ODR_1000HZ);
        MOVS     R0,#+0
        BL       MPU6050_SetODR
//   86 	MPU6050_SetLPF(MPU6050_DLPF_BW_42);
        MOVS     R0,#+3
        BL       MPU6050_SetLPF
//   87 	MPU6050_SetMode(MPU6050_ACTIVE);
        MOVS     R0,#+0
        BL       MPU6050_SetMode
//   88 
//   89 	return result;
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R4,PC}          ;; return
//   90 }
//   91 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   92 uint8 MPU6050_GetAcc(uint16 accNum)
//   93 {
MPU6050_GetAcc:
        PUSH     {R4,LR}
        MOVS     R4,R0
//   94 	if (accNum & MPU6050_X) MPU6050_GetAcc_X(&mpu6050.acc.x);
        LSLS     R0,R4,#+31
        BPL.N    ??MPU6050_GetAcc_0
        LDR.N    R0,??DataTable6_1
        BL       MPU6050_GetAcc_X
//   95 	if (accNum & MPU6050_Y) MPU6050_GetAcc_Y(&mpu6050.acc.y);
??MPU6050_GetAcc_0:
        LSLS     R0,R4,#+30
        BPL.N    ??MPU6050_GetAcc_1
        LDR.N    R0,??DataTable6_2
        BL       MPU6050_GetAcc_Y
//   96 	if (accNum & MPU6050_Z) MPU6050_GetAcc_Z(&mpu6050.acc.z);
??MPU6050_GetAcc_1:
        LSLS     R0,R4,#+29
        BPL.N    ??MPU6050_GetAcc_2
        LDR.N    R0,??DataTable6_3
        BL       MPU6050_GetAcc_Z
//   97 
//   98 	return 0;
??MPU6050_GetAcc_2:
        MOVS     R0,#+0
        POP      {R4,PC}          ;; return
//   99 }
//  100 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  101 uint8 MPU6050_GetGry(uint16 gryNum)
//  102 {
MPU6050_GetGry:
        PUSH     {R4,LR}
        MOVS     R4,R0
//  103 	if (gryNum & MPU6050_X)
        LSLS     R0,R4,#+31
        BPL.N    ??MPU6050_GetGry_0
//  104 	{
//  105 		MPU6050_GetAngRateRaw_X(&mpu6050.gry.x);
        LDR.N    R0,??DataTable6_4
        BL       MPU6050_GetAngRateRaw_X
//  106 		mpu6050.gry.x = (int16)((float)mpu6050.gry.x / 65.5);
        LDR.N    R0,??DataTable6_5
        LDRSH    R0,[R0, #+22]
        BL       __aeabi_i2f
        BL       __aeabi_f2d
        MOVS     R2,#+0
        LDR.N    R3,??DataTable6_6  ;; 0x40506000
        BL       __aeabi_ddiv
        BL       __aeabi_d2iz
        LDR.N    R1,??DataTable6_5
        STRH     R0,[R1, #+22]
//  107 		mpu6050.gry.x -= mpu6050.offset.x;
        LDR.N    R0,??DataTable6_5
        LDRH     R0,[R0, #+22]
        LDR.N    R1,??DataTable6_5
        LDRH     R1,[R1, #+28]
        SUBS     R0,R0,R1
        LDR.N    R1,??DataTable6_5
        STRH     R0,[R1, #+22]
//  108 		if (mpu6050.pose.flagX && !mpu6050.pose.pause /*&& abs(mpu6050.gry.x) > 10*/) mpu6050.pose.angleX += mpu6050.gry.x;
        LDR.N    R0,??DataTable6_5
        LDRB     R0,[R0, #+48]
        ANDS     R0,R0,#0x9
        CMP      R0,#+1
        BNE.N    ??MPU6050_GetGry_0
        LDR.N    R0,??DataTable6_5
        LDRSH    R0,[R0, #+22]
        BL       __aeabi_i2f
        LDR.N    R1,??DataTable6_5
        LDR      R1,[R1, #+36]
        BL       __aeabi_fadd
        LDR.N    R1,??DataTable6_5
        STR      R0,[R1, #+36]
//  109 	}
//  110 	if (gryNum & MPU6050_Y)
??MPU6050_GetGry_0:
        LSLS     R0,R4,#+30
        BPL.N    ??MPU6050_GetGry_1
//  111 	{
//  112 		MPU6050_GetAngRateRaw_Y(&mpu6050.gry.y);
        LDR.N    R0,??DataTable6_7
        BL       MPU6050_GetAngRateRaw_Y
//  113 		mpu6050.gry.y = (int16)((float)mpu6050.gry.y / 65.5);
        LDR.N    R0,??DataTable6_5
        LDRSH    R0,[R0, #+24]
        BL       __aeabi_i2f
        BL       __aeabi_f2d
        MOVS     R2,#+0
        LDR.N    R3,??DataTable6_6  ;; 0x40506000
        BL       __aeabi_ddiv
        BL       __aeabi_d2iz
        LDR.N    R1,??DataTable6_5
        STRH     R0,[R1, #+24]
//  114 		mpu6050.gry.y -= mpu6050.offset.y;
        LDR.N    R0,??DataTable6_5
        LDRH     R0,[R0, #+24]
        LDR.N    R1,??DataTable6_5
        LDRH     R1,[R1, #+30]
        SUBS     R0,R0,R1
        LDR.N    R1,??DataTable6_5
        STRH     R0,[R1, #+24]
//  115 		if (mpu6050.pose.flagY && !mpu6050.pose.pause && abs(mpu6050.gry.y) > 10) mpu6050.pose.angleY += mpu6050.gry.y;
        LDR.N    R0,??DataTable6_5
        LDRB     R0,[R0, #+48]
        ANDS     R0,R0,#0xA
        CMP      R0,#+2
        BNE.N    ??MPU6050_GetGry_1
        LDR.N    R0,??DataTable6_5
        LDRSH    R0,[R0, #+24]
        BL       abs
        CMP      R0,#+11
        BLT.N    ??MPU6050_GetGry_1
        LDR.N    R0,??DataTable6_5
        LDRSH    R0,[R0, #+24]
        BL       __aeabi_i2f
        LDR.N    R1,??DataTable6_5
        LDR      R1,[R1, #+40]
        BL       __aeabi_fadd
        LDR.N    R1,??DataTable6_5
        STR      R0,[R1, #+40]
//  116 	}
//  117 	if (gryNum & MPU6050_Z)
??MPU6050_GetGry_1:
        LSLS     R0,R4,#+29
        BPL.N    ??MPU6050_GetGry_2
//  118 	{
//  119 		MPU6050_GetAngRateRaw_Z(&mpu6050.gry.z);
        LDR.N    R0,??DataTable6_8
        BL       MPU6050_GetAngRateRaw_Z
//  120 		mpu6050.gry.z = (int16)((float)mpu6050.gry.z / 65.5);
        LDR.N    R0,??DataTable6_5
        LDRSH    R0,[R0, #+26]
        BL       __aeabi_i2f
        BL       __aeabi_f2d
        MOVS     R2,#+0
        LDR.N    R3,??DataTable6_6  ;; 0x40506000
        BL       __aeabi_ddiv
        BL       __aeabi_d2iz
        LDR.N    R1,??DataTable6_5
        STRH     R0,[R1, #+26]
//  121 		mpu6050.gry.z -= mpu6050.offset.z;
        LDR.N    R0,??DataTable6_5
        LDRH     R0,[R0, #+26]
        LDR.N    R1,??DataTable6_5
        LDRH     R1,[R1, #+32]
        SUBS     R0,R0,R1
        LDR.N    R1,??DataTable6_5
        STRH     R0,[R1, #+26]
//  122 		if (mpu6050.pose.flagZ && !mpu6050.pose.pause /*&& abs(mpu6050.gry.z) > 10*/) mpu6050.pose.angleZ += mpu6050.gry.z;
        LDR.N    R0,??DataTable6_5
        LDRB     R0,[R0, #+48]
        ANDS     R0,R0,#0xC
        CMP      R0,#+4
        BNE.N    ??MPU6050_GetGry_2
        LDR.N    R0,??DataTable6_5
        LDRSH    R0,[R0, #+26]
        BL       __aeabi_i2f
        LDR.N    R1,??DataTable6_5
        LDR      R1,[R1, #+44]
        BL       __aeabi_fadd
        LDR.N    R1,??DataTable6_5
        STR      R0,[R1, #+44]
//  123 	}
//  124 
//  125 	return 0;
??MPU6050_GetGry_2:
        MOVS     R0,#+0
        POP      {R4,PC}          ;; return
//  126 }
//  127 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  128 void MPU6050_SetOffset(int16 x, int16 y, int16 z)
//  129 {
//  130 	mpu6050.offset.x = x;
MPU6050_SetOffset:
        LDR.N    R3,??DataTable6_5
        STRH     R0,[R3, #+28]
//  131 	mpu6050.offset.y = y;
        LDR.N    R0,??DataTable6_5
        STRH     R1,[R0, #+30]
//  132 	mpu6050.offset.z = z;
        LDR.N    R0,??DataTable6_5
        STRH     R2,[R0, #+32]
//  133 }
        BX       LR               ;; return
//  134 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  135 uint8_t MPU6050_ReadReg(uint8_t Reg, uint8_t* Data)
//  136 {
MPU6050_ReadReg:
        PUSH     {R4,LR}
        MOVS     R4,R1
//  137 	//To be completed with either I2c or SPI reading function
//  138 	//i.e.: *Data = SPI_Mems_Read_Reg( Reg );
//  139 	*Data = i2c.ReadReg(MPU6050_SlaveAddress, Reg);
        MOVS     R1,R0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+104
        LDR.N    R2,??DataTable6
        LDR      R2,[R2, #+4]
        BLX      R2
        STRB     R0,[R4, #+0]
//  140 	return 0;
        MOVS     R0,#+0
        POP      {R4,PC}          ;; return
//  141 }
//  142 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  143 int16_t MPU6050_ReadWord(uint8_t Reg, int16_t* Data)
//  144 {
MPU6050_ReadWord:
        PUSH     {R4,LR}
        MOVS     R4,R1
//  145 	//To be completed with either I2c or SPI reading function
//  146 	//i.e.: *Data = SPI_Mems_Read_Reg( Reg );
//  147 	*Data = i2c.ReadWord(MPU6050_SlaveAddress, Reg,MSB_FIRST);
        MOVS     R2,#+0
        MOVS     R1,R0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+104
        LDR.N    R3,??DataTable6
        LDR      R3,[R3, #+8]
        BLX      R3
        STRH     R0,[R4, #+0]
//  148 	return 0;
        MOVS     R0,#+0
        POP      {R4,PC}          ;; return
//  149 }
//  150 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  151 uint8_t MPU6050_WriteReg(uint8_t Reg, uint8_t Data)
//  152 {
MPU6050_WriteReg:
        PUSH     {R7,LR}
//  153 	//To be completed with either I2c or SPI writing function
//  154 	//i.e.: SPI_Mems_Write_Reg(Reg, Data);
//  155 	i2c.WriteReg(MPU6050_SlaveAddress, Reg, Data);
        MOVS     R2,R1
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,R0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+104
        LDR.N    R3,??DataTable6
        LDR      R3,[R3, #+12]
        BLX      R3
//  156 	return 0;
        MOVS     R0,#+0
        POP      {R1,PC}          ;; return
//  157 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6:
        DC32     i2c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_1:
        DC32     mpu6050+0x10

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_2:
        DC32     mpu6050+0x12

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_3:
        DC32     mpu6050+0x14

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_4:
        DC32     mpu6050+0x16

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_5:
        DC32     mpu6050

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_6:
        DC32     0x40506000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_7:
        DC32     mpu6050+0x18

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_8:
        DC32     mpu6050+0x1A
//  158 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  159 uint8 MPU6050_SetClockSource()
//  160 {
//  161 	return 0;
MPU6050_SetClockSource:
        MOVS     R0,#+0
        BX       LR               ;; return
//  162 }
//  163 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  164 uint8 MPU6050_SetACCFullScale(MPU6050_ACC_Fullscale_t fs)
//  165 {
MPU6050_SetACCFullScale:
        PUSH     {R7,LR}
//  166 	if (!MPU6050_WriteReg(MPU6050_ACCEL_CONFIG, fs))
        MOVS     R1,R0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+28
        BL       MPU6050_WriteReg
        CMP      R0,#+0
        BNE.N    ??MPU6050_SetACCFullScale_0
//  167 		return 1;
        MOVS     R0,#+1
        B.N      ??MPU6050_SetACCFullScale_1
//  168 
//  169 	return 0;
??MPU6050_SetACCFullScale_0:
        MOVS     R0,#+0
??MPU6050_SetACCFullScale_1:
        POP      {R1,PC}          ;; return
//  170 }
//  171 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  172 uint8 MPU6050_SetGRYFullScale(MPU6050_GRY_Fullscale_t fs)
//  173 {
MPU6050_SetGRYFullScale:
        PUSH     {R7,LR}
//  174 	if (!MPU6050_WriteReg(MPU6050_GYRO_CONFIG, fs))
        MOVS     R1,R0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+27
        BL       MPU6050_WriteReg
        CMP      R0,#+0
        BNE.N    ??MPU6050_SetGRYFullScale_0
//  175 		return 1;
        MOVS     R0,#+1
        B.N      ??MPU6050_SetGRYFullScale_1
//  176 
//  177 	return 0;
??MPU6050_SetGRYFullScale_0:
        MOVS     R0,#+0
??MPU6050_SetGRYFullScale_1:
        POP      {R1,PC}          ;; return
//  178 }
//  179 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  180 uint8 MPU6050_SetODR(MPU6050_ODR od)
//  181 {
MPU6050_SetODR:
        PUSH     {R7,LR}
//  182 	if (!MPU6050_WriteReg(MPU6050_SMPLRT_DIV, od))
        MOVS     R1,R0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+25
        BL       MPU6050_WriteReg
        CMP      R0,#+0
        BNE.N    ??MPU6050_SetODR_0
//  183 		return 1;
        MOVS     R0,#+1
        B.N      ??MPU6050_SetODR_1
//  184 
//  185 	return 0;
??MPU6050_SetODR_0:
        MOVS     R0,#+0
??MPU6050_SetODR_1:
        POP      {R1,PC}          ;; return
//  186 }
//  187 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  188 uint8 MPU6050_SetLPF(MPU6050_DLPF_t hz)
//  189 {
MPU6050_SetLPF:
        PUSH     {R7,LR}
//  190 	if (!MPU6050_WriteReg(MPU6050_CONFIG, hz))
        MOVS     R1,R0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+26
        BL       MPU6050_WriteReg
        CMP      R0,#+0
        BNE.N    ??MPU6050_SetLPF_0
//  191 		return 1;
        MOVS     R0,#+1
        B.N      ??MPU6050_SetLPF_1
//  192 
//  193 	return 0;
??MPU6050_SetLPF_0:
        MOVS     R0,#+0
??MPU6050_SetLPF_1:
        POP      {R1,PC}          ;; return
//  194 }
//  195 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  196 uint8 MPU6050_SetMode(MPU6050_Status_t st)
//  197 {
MPU6050_SetMode:
        PUSH     {R7,LR}
//  198 	if (!MPU6050_WriteReg(MPU6050_PWR_MGMT_1, st))
        MOVS     R1,R0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+107
        BL       MPU6050_WriteReg
        CMP      R0,#+0
        BNE.N    ??MPU6050_SetMode_0
//  199 		return 1;
        MOVS     R0,#+1
        B.N      ??MPU6050_SetMode_1
//  200 
//  201 	return 0;
??MPU6050_SetMode_0:
        MOVS     R0,#+0
??MPU6050_SetMode_1:
        POP      {R1,PC}          ;; return
//  202 }
//  203 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  204 uint8 MPU6050_GetAcc_X(int16_t *raw)
//  205 {
MPU6050_GetAcc_X:
        PUSH     {R7,LR}
//  206 #if USE_SEQ_READ
//  207 	MPU6050_ReadWord(MPU6050_ACCEL_XOUT_H, raw);
        MOVS     R1,R0
        MOVS     R0,#+59
        BL       MPU6050_ReadWord
//  208 #else
//  209 	uint8_t valueL;
//  210 	uint8_t valueH;
//  211 	if (!MPU6050_ReadReg(MPU6050_ACCEL_XOUT_L, &valueL))
//  212 		return 1;
//  213 	if (!MPU6050_ReadReg(MPU6050_ACCEL_XOUT_H, &valueH))
//  214 		return 1;
//  215 	*raw = (int16_t)((valueH << 8) | valueL);
//  216 #endif
//  217 	return 0;
        MOVS     R0,#+0
        POP      {R1,PC}          ;; return
//  218 }
//  219 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  220 uint8 MPU6050_GetAcc_Y(int16_t *raw)
//  221 {
MPU6050_GetAcc_Y:
        PUSH     {R7,LR}
//  222 #if USE_SEQ_READ
//  223 	MPU6050_ReadWord(MPU6050_ACCEL_YOUT_H, raw);
        MOVS     R1,R0
        MOVS     R0,#+61
        BL       MPU6050_ReadWord
//  224 #else
//  225 	uint8_t valueL;
//  226 	uint8_t valueH;
//  227 	if (!MPU6050_ReadReg(MPU6050_ACCEL_YOUT_L, &valueL))
//  228 		return 1;
//  229 	if (!MPU6050_ReadReg(MPU6050_ACCEL_YOUT_H, &valueH))
//  230 		return 1;
//  231 	*raw = (int16_t)((valueH << 8) | valueL);
//  232 #endif
//  233 	return 0;
        MOVS     R0,#+0
        POP      {R1,PC}          ;; return
//  234 }
//  235 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  236 uint8 MPU6050_GetAcc_Z(int16_t *raw)
//  237 {
MPU6050_GetAcc_Z:
        PUSH     {R7,LR}
//  238 #if USE_SEQ_READ
//  239 	MPU6050_ReadWord(MPU6050_ACCEL_ZOUT_H, raw);
        MOVS     R1,R0
        MOVS     R0,#+63
        BL       MPU6050_ReadWord
//  240 #else
//  241 	uint8_t valueL;
//  242 	uint8_t valueH;
//  243 	if (!MEMS_MPU6050_ReadReg(MPU6050_ACCEL_ZOUT_L, &valueL))
//  244 		return 1;
//  245 	if (!MEMS_MPU6050_ReadReg(MPU6050_ACCEL_ZOUT_H, &valueH))
//  246 		return 1;
//  247 	*raw = (int16_t)((valueH << 8) | valueL);
//  248 #endif
//  249 	return 0;
        MOVS     R0,#+0
        POP      {R1,PC}          ;; return
//  250 }
//  251 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  252 uint8 MPU6050_GetAngRateRaw_X(int16_t *raw)
//  253 {
MPU6050_GetAngRateRaw_X:
        PUSH     {R7,LR}
//  254 #if USE_SEQ_READ
//  255 	MPU6050_ReadWord(MPU6050_GYRO_XOUT_H, raw);
        MOVS     R1,R0
        MOVS     R0,#+67
        BL       MPU6050_ReadWord
//  256 #else
//  257 	uint8_t valueL;
//  258 	uint8_t valueH;
//  259 	if (!MPU6050_ReadReg(MPU6050_GYRO_XOUT_L, &valueL))
//  260 		return 1;
//  261 	if (!MPU6050_ReadReg(MPU6050_GYRO_XOUT_H, &valueH))
//  262 		return 1;
//  263 	*raw = (int16_t)((valueH << 8) | valueL);
//  264 #endif
//  265 	return 0;
        MOVS     R0,#+0
        POP      {R1,PC}          ;; return
//  266 }
//  267 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  268 uint8 MPU6050_GetAngRateRaw_Y(int16_t *raw)
//  269 {
MPU6050_GetAngRateRaw_Y:
        PUSH     {R7,LR}
//  270 #if USE_SEQ_READ
//  271 	MPU6050_ReadWord(MPU6050_GYRO_YOUT_H, raw);
        MOVS     R1,R0
        MOVS     R0,#+69
        BL       MPU6050_ReadWord
//  272 #else
//  273 	uint8_t valueL;
//  274 	uint8_t valueH;
//  275 	if (!MPU6050_ReadReg(MPU6050_GYRO_YOUT_L, &valueL))
//  276 		return 1;
//  277 	if (!MPU6050_ReadReg(MPU6050_GYRO_YOUT_H, &valueH))
//  278 		return 1;
//  279 	*raw = (int16_t)((valueH << 8) | valueL);
//  280 #endif
//  281 	return 0;
        MOVS     R0,#+0
        POP      {R1,PC}          ;; return
//  282 }
//  283 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  284 uint8 MPU6050_GetAngRateRaw_Z(int16_t *raw)
//  285 {
MPU6050_GetAngRateRaw_Z:
        PUSH     {R7,LR}
//  286 #if USE_SEQ_READ
//  287 	MPU6050_ReadWord(MPU6050_GYRO_ZOUT_H, raw);
        MOVS     R1,R0
        MOVS     R0,#+71
        BL       MPU6050_ReadWord
//  288 #else
//  289 	uint8_t valueL;
//  290 	uint8_t valueH;
//  291 	if (!MPU6050_ReadReg(MPU6050_GYRO_ZOUT_L, &valueL))
//  292 		return 1;
//  293 	if (!MPU6050_ReadReg(MPU6050_GYRO_ZOUT_H, &valueH))
//  294 		return 1;
//  295 	*raw = (int16_t)((valueH << 8) | valueL);
//  296 #endif
//  297 	return 0;
        MOVS     R0,#+0
        POP      {R1,PC}          ;; return
//  298 }
//  299 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  300 uint8 MPU6050_GetChipID(uint8_t *buff)
//  301 {
MPU6050_GetChipID:
        PUSH     {R7,LR}
//  302 	if (!MPU6050_ReadReg(MPU6050_WHO_AM_I, buff))
        MOVS     R1,R0
        MOVS     R0,#+15
        BL       MPU6050_ReadReg
        CMP      R0,#+0
        BNE.N    ??MPU6050_GetChipID_0
//  303 		return 1;
        MOVS     R0,#+1
        B.N      ??MPU6050_GetChipID_1
//  304 
//  305 	return 0;
??MPU6050_GetChipID_0:
        MOVS     R0,#+0
??MPU6050_GetChipID_1:
        POP      {R1,PC}          ;; return
//  306 }

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
//  52 bytes in section .data
// 790 bytes in section .text
// 
// 790 bytes of CODE memory
//  52 bytes of DATA memory
//
//Errors: none
//Warnings: none
