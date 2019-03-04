///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.50.1.10123/W32 for ARM      25/Apr/2018  19:27:14
// Copyright 1999-2015 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\ShowD\Desktop\LPHD\LPHD_camCore\LPHD_camCore\lib\LPLD\DEV\DEV_MPU6050.c
//    Command line =  
//        C:\Users\ShowD\Desktop\LPHD\LPHD_camCore\LPHD_camCore\lib\LPLD\DEV\DEV_MPU6050.c
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
//        C:\Users\ShowD\Desktop\LPHD\LPHD_camCore\LPHD_camCore\iar\FLASH\List\DEV_MPU6050.s
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
        EXTERN LPLD_SYSTICK_DelayMs

        PUBLIC MPU6050_GetResult
        PUBLIC MPU6050_Init
        PUBLIC MPU6050_ReadReg
        PUBLIC MPU6050_WriteReg
        PUBLIC MPU6050_init_struct

// C:\Users\ShowD\Desktop\LPHD\LPHD_camCore\LPHD_camCore\lib\LPLD\DEV\DEV_MPU6050.c
//    1 /**
//    2  * @file DEV_MPU6050.c
//    3  * @version 0.1[By LPLD]
//    4  * @date 2015-02-22
//    5  * @brief MPU60506���˶����������������
//    6  *
//    7  * ���Ľ���:�ɸ���ʵ��Ӳ���޸�
//    8  *
//    9  * ʮ�ָ�л���ļ����߶Եײ��Ĺ��ף�
//   10  * http://www.lpld.cn
//   11  * mail:support@lpld.cn
//   12  * 
//   13  * �ļ�������LPLD_K60�ײ��Ⱥ
//   14  * ���ߣ�Ͷ�ʴ���
//   15  */
//   16 #include "common.h"
//   17 #include "DEV_MPU6050.h"
//   18 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   19 I2C_InitTypeDef MPU6050_init_struct;
MPU6050_init_struct:
        DS8 16
//   20 
//   21 /*
//   22  *   MPU6050_WriteReg
//   23  *   MPU6050д�Ĵ���״̬
//   24  *
//   25  *   ������
//   26  *    RegisterAddress �Ĵ�����ַ
//   27  *    Data ����Ҫд������
//   28 *
//   29  *   ����ֵ
//   30  *    ��
//   31  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   32 void MPU6050_WriteReg(uint8 RegisterAddress, uint8 Data)
//   33 {
MPU6050_WriteReg:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
//   34   //���ʹӻ���ַ
//   35   LPLD_I2C_StartTrans(I2C1, SlaveAddress, I2C_MWSR);
        MOVS     R2,#+0
        MOVS     R1,#+104
        LDR.N    R0,??DataTable2  ;; 0x40067000
        BL       LPLD_I2C_StartTrans
//   36   LPLD_I2C_WaitAck(I2C1, I2C_ACK_ON);
        MOVS     R1,#+1
        LDR.N    R0,??DataTable2  ;; 0x40067000
        BL       LPLD_I2C_WaitAck
//   37   
//   38   //дMPU6050�Ĵ�����ַ
//   39   LPLD_I2C_WriteByte(I2C1, RegisterAddress);
        MOVS     R1,R4
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.N    R0,??DataTable2  ;; 0x40067000
        BL       LPLD_I2C_WriteByte
//   40   LPLD_I2C_WaitAck(I2C1, I2C_ACK_ON);
        MOVS     R1,#+1
        LDR.N    R0,??DataTable2  ;; 0x40067000
        BL       LPLD_I2C_WaitAck
//   41   
//   42   //��Ĵ�����д��������
//   43   LPLD_I2C_WriteByte(I2C1, Data);
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.N    R0,??DataTable2  ;; 0x40067000
        BL       LPLD_I2C_WriteByte
//   44   LPLD_I2C_WaitAck(I2C1, I2C_ACK_ON);
        MOVS     R1,#+1
        LDR.N    R0,??DataTable2  ;; 0x40067000
        BL       LPLD_I2C_WaitAck
//   45 
//   46   LPLD_I2C_Stop(I2C1);
        LDR.N    R0,??DataTable2  ;; 0x40067000
        BL       LPLD_I2C_Stop
//   47 }
        POP      {R0,R4,R5,PC}    ;; return
//   48 
//   49 /*
//   50  *   MPU6050_ReadReg
//   51  *   MPU6050���Ĵ���״̬
//   52  *
//   53  *   ������
//   54  *    RegisterAddress �Ĵ�����ַ
//   55  *
//   56  *   ����ֵ
//   57  *    �����Ĵ���״̬
//   58  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   59 uint8 MPU6050_ReadReg(uint8 RegisterAddress)
//   60 {
MPU6050_ReadReg:
        PUSH     {R4,LR}
        MOVS     R4,R0
//   61   uint8 result;
//   62 
//   63   //���ʹӻ���ַ
//   64   LPLD_I2C_StartTrans(I2C1, SlaveAddress, I2C_MWSR);
        MOVS     R2,#+0
        MOVS     R1,#+104
        LDR.N    R0,??DataTable2  ;; 0x40067000
        BL       LPLD_I2C_StartTrans
//   65   LPLD_I2C_WaitAck(I2C1, I2C_ACK_ON);
        MOVS     R1,#+1
        LDR.N    R0,??DataTable2  ;; 0x40067000
        BL       LPLD_I2C_WaitAck
//   66 
//   67   //дMPU6050�Ĵ�����ַ
//   68   LPLD_I2C_WriteByte(I2C1, RegisterAddress);
        MOVS     R1,R4
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.N    R0,??DataTable2  ;; 0x40067000
        BL       LPLD_I2C_WriteByte
//   69   LPLD_I2C_WaitAck(I2C1, I2C_ACK_ON);
        MOVS     R1,#+1
        LDR.N    R0,??DataTable2  ;; 0x40067000
        BL       LPLD_I2C_WaitAck
//   70   
//   71   //�ٴβ�����ʼ�ź�
//   72   LPLD_I2C_ReStart(I2C1);
        LDR.N    R0,??DataTable2  ;; 0x40067000
        BL       LPLD_I2C_ReStart
//   73 
//   74   //���ʹӻ���ַ�Ͷ�ȡλ
//   75   LPLD_I2C_WriteByte(I2C1, (SlaveAddress<<1)|I2C_MRSW);
        MOVS     R1,#+209
        LDR.N    R0,??DataTable2  ;; 0x40067000
        BL       LPLD_I2C_WriteByte
//   76   LPLD_I2C_WaitAck(I2C1, I2C_ACK_ON);
        MOVS     R1,#+1
        LDR.N    R0,??DataTable2  ;; 0x40067000
        BL       LPLD_I2C_WaitAck
//   77 
//   78   //ת������ģʽΪ��
//   79   LPLD_I2C_SetMasterWR(I2C1, I2C_MRSW);
        MOVS     R1,#+1
        LDR.N    R0,??DataTable2  ;; 0x40067000
        BL       LPLD_I2C_SetMasterWR
//   80 
//   81   //�ر�Ӧ��ACK
//   82   LPLD_I2C_WaitAck(I2C1, I2C_ACK_OFF);//�ر�ACK
        MOVS     R1,#+0
        LDR.N    R0,??DataTable2  ;; 0x40067000
        BL       LPLD_I2C_WaitAck
//   83 
//   84   //��IIC����
//   85   result =LPLD_I2C_ReadByte(I2C1);
        LDR.N    R0,??DataTable2  ;; 0x40067000
        BL       LPLD_I2C_ReadByte
        MOVS     R4,R0
//   86   LPLD_I2C_WaitAck(I2C1, I2C_ACK_ON);
        MOVS     R1,#+1
        LDR.N    R0,??DataTable2  ;; 0x40067000
        BL       LPLD_I2C_WaitAck
//   87 
//   88   //����ֹͣ�ź�
//   89   LPLD_I2C_Stop(I2C1);
        LDR.N    R0,??DataTable2  ;; 0x40067000
        BL       LPLD_I2C_Stop
//   90 
//   91   //��IIC����
//   92   result = LPLD_I2C_ReadByte(I2C1);
        LDR.N    R0,??DataTable2  ;; 0x40067000
        BL       LPLD_I2C_ReadByte
        MOVS     R4,R0
//   93   
//   94   LPLD_SYSTICK_DelayMs(1);
        MOVS     R0,#+1
        BL       LPLD_SYSTICK_DelayMs
//   95 
//   96   return result;
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R4,PC}          ;; return
//   97 }
//   98 
//   99 /*
//  100  *   MPU6050_GetResult
//  101  *   ���MPU6050���
//  102  *
//  103  *   ������
//  104  *    ��
//  105  *
//  106  *   ����ֵ
//  107  *    ת����� 
//  108  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  109 int16 MPU6050_GetResult(uint8 Regs_Addr)
//  110 {
MPU6050_GetResult:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
//  111   int16 result,temp;
//  112   result = MPU6050_ReadReg(Regs_Addr);
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       MPU6050_ReadReg
        MOVS     R5,R0
//  113   temp   = MPU6050_ReadReg(Regs_Addr+1);
        ADDS     R0,R4,#+1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       MPU6050_ReadReg
//  114   result=result<<8;
        LSLS     R5,R5,#+8
//  115   result=result|temp;
        ORRS     R5,R0,R5
//  116   return result;
        MOVS     R0,R5
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        POP      {R1,R4,R5,PC}    ;; return
//  117 }
//  118 
//  119 /*
//  120  *   MPU6050_Init
//  121  *   ��ʼ��MPU6050��������ʼ��MPU6050�����I2C�ӿ��Լ�MPU6050�ļĴ���
//  122  *
//  123  *   ������
//  124  *    ��
//  125  *
//  126  *   ����ֵ
//  127  *    ��
//  128  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  129 void MPU6050_Init()
//  130 {
MPU6050_Init:
        PUSH     {R7,LR}
//  131   //��ʼ��MPU6050
//  132   MPU6050_init_struct.I2C_I2Cx = MPU6050_I2CX;          //��MPU6050.h���޸ĸ�ֵ
        LDR.N    R0,??DataTable2  ;; 0x40067000
        LDR.N    R1,??DataTable2_1
        STR      R0,[R1, #+0]
//  133   MPU6050_init_struct.I2C_IntEnable = FALSE;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable2_1
        STRB     R0,[R1, #+5]
//  134   MPU6050_init_struct.I2C_ICR = MPU6050_SCL_400KHZ;     //�ɸ���ʵ�ʵ�·����SCLƵ��
        MOVS     R0,#+23
        LDR.N    R1,??DataTable2_1
        STRB     R0,[R1, #+4]
//  135   MPU6050_init_struct.I2C_SclPin = MPU6050_SCLPIN;      //��MPU6050.h���޸ĸ�ֵ
        MOVS     R0,#+70
        LDR.N    R1,??DataTable2_1
        STRB     R0,[R1, #+6]
//  136   MPU6050_init_struct.I2C_SdaPin = MPU6050_SCLPIN;      //��MPU6050.h���޸ĸ�ֵ
        MOVS     R0,#+70
        LDR.N    R1,??DataTable2_1
        STRB     R0,[R1, #+7]
//  137   MPU6050_init_struct.I2C_Isr = NULL;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable2_1
        STR      R0,[R1, #+12]
//  138   LPLD_I2C_Init(MPU6050_init_struct);
        LDR.N    R0,??DataTable2_1
        LDM      R0,{R0-R3}
        BL       LPLD_I2C_Init
//  139   
//  140   LPLD_SYSTICK_DelayMs(1);
        MOVS     R0,#+1
        BL       LPLD_SYSTICK_DelayMs
//  141   
//  142   MPU6050_WriteReg(PWR_MGMT_1,0x00);    //�������״̬
        MOVS     R1,#+0
        MOVS     R0,#+107
        BL       MPU6050_WriteReg
//  143   MPU6050_WriteReg(SMPLRT_DIV,0x07);    //�����ǲ����ʣ�����ֵ��0x07(125Hz)
        MOVS     R1,#+7
        MOVS     R0,#+25
        BL       MPU6050_WriteReg
//  144   MPU6050_WriteReg(CONFIG,0x06);        //��ͨ�˲�Ƶ�ʣ�����ֵ��0x06(5Hz)
        MOVS     R1,#+6
        MOVS     R0,#+26
        BL       MPU6050_WriteReg
//  145   MPU6050_WriteReg(GYRO_CONFIG,0x18);   //�������Լ켰������Χ������ֵ��0x18(���Լ죬2000deg/s)
        MOVS     R1,#+24
        MOVS     R0,#+27
        BL       MPU6050_WriteReg
//  146   MPU6050_WriteReg(ACCEL_CONFIG,0x01);  //���ټ��Լ졢������Χ����ͨ�˲�Ƶ�ʣ�����ֵ��0x01(���Լ죬2G��5Hz)
        MOVS     R1,#+1
        MOVS     R0,#+28
        BL       MPU6050_WriteReg
//  147   
//  148   LPLD_SYSTICK_DelayMs(1);
        MOVS     R0,#+1
        BL       LPLD_SYSTICK_DelayMs
//  149 }
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2:
        DC32     0x40067000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_1:
        DC32     MPU6050_init_struct

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
//  16 bytes in section .bss
// 328 bytes in section .text
// 
// 328 bytes of CODE memory
//  16 bytes of DATA memory
//
//Errors: none
//Warnings: none
