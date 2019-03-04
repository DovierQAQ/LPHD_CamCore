///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.50.1.10123/W32 for ARM      27/Apr/2018  22:33:37
// Copyright 1999-2015 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\ShowD\Desktop\LPHD\LPHD_camCore\LPHD_camCore\lib\LPLD\DEV\DEV_Touchscreen.c
//    Command line =  
//        C:\Users\ShowD\Desktop\LPHD\LPHD_camCore\LPHD_camCore\lib\LPLD\DEV\DEV_Touchscreen.c
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
//        C:\Users\ShowD\Desktop\LPHD\LPHD_camCore\LPHD_camCore\iar\FLASH\List\DEV_Touchscreen.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN LPLD_SPI_Init
        EXTERN LPLD_SPI_Master_WriteRead
        EXTERN __aeabi_memcpy4

        PUBLIC LPLD_Touchscreen_GetCovValue
        PUBLIC LPLD_Touchscreen_GetResult
        PUBLIC LPLD_Touchscreen_Init
        PUBLIC LPLD_Touchscreen_SendCmd
        PUBLIC touch_spi_param

// C:\Users\ShowD\Desktop\LPHD\LPHD_camCore\LPHD_camCore\lib\LPLD\DEV\DEV_Touchscreen.c
//    1 /**
//    2  * @file DEV_Touchscreen.c
//    3  * @version 1.0[By LPLD]
//    4  * @date 2013-09-24
//    5  * @brief Touchscreen设备驱动程序
//    6  *
//    7  * 更改建议:可根据实际硬件修改
//    8  *
//    9  * 版权所有:北京拉普兰德电子技术有限公司
//   10  * http://www.lpld.cn
//   11  * mail:support@lpld.cn
//   12  *
//   13  * @par
//   14  * 本代码由拉普兰德[LPLD]开发并维护，并向所有使用者开放源代码。
//   15  * 开发者可以随意修使用或改源代码。但本段及以上注释应予以保留。
//   16  * 不得更改或删除原版权所有者姓名，二次开发者可以加注二次版权所有者。
//   17  * 但应在遵守此协议的基础上，开放源代码、不得出售代码本身。
//   18  * 拉普兰德不负责由于使用本代码所带来的任何事故、法律责任或相关不良影响。
//   19  * 拉普兰德无义务解释、说明本代码的具体原理、功能、实现方法。
//   20  * 除非拉普兰德[LPLD]授权，开发者不得将本代码用于商业产品。
//   21  */
//   22 #include "DEV_Touchscreen.h"
//   23 
//   24 static void LPLD_Touchscreen_Delay(int i);

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   25 SPI_InitTypeDef touch_spi_param;
touch_spi_param:
        DS8 52
//   26 /*
//   27  * LPLD_Touchscreen_Init
//   28  * 配置与ADS7843芯片连接的SPI模块
//   29  * 
//   30  * 参数:
//   31  *    无
//   32  * 输出：
//   33  *    无
//   34  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   35 void LPLD_Touchscreen_Init (void)
//   36 {
LPLD_Touchscreen_Init:
        PUSH     {LR}
        SUB      SP,SP,#+36
//   37 
//   38   touch_spi_param.SPI_SPIx = TOUCHSCREEN_SPIX;
        LDR.N    R0,??DataTable2  ;; 0x400ac000
        LDR.N    R1,??DataTable2_1
        STR      R0,[R1, #+0]
//   39   touch_spi_param.SPI_SckDivider = SPI_SCK_DIV_32;//1.56Mhz
        MOVS     R0,#+5
        LDR.N    R1,??DataTable2_1
        STRB     R0,[R1, #+5]
//   40   touch_spi_param.SPI_Pcs0Pin = TOUCHSCREEN_PCS0;
        MOVS     R0,#+103
        LDR.N    R1,??DataTable2_1
        STRB     R0,[R1, #+16]
//   41   touch_spi_param.SPI_SckPin  = TOUCHSCREEN_SCK;
        MOVS     R0,#+104
        LDR.N    R1,??DataTable2_1
        STRB     R0,[R1, #+22]
//   42   touch_spi_param.SPI_MosiPin = TOUCHSCREEN_MOSI;
        MOVS     R0,#+105
        LDR.N    R1,??DataTable2_1
        STRB     R0,[R1, #+23]
//   43   touch_spi_param.SPI_MisoPin = TOUCHSCREEN_MISO;
        MOVS     R0,#+106
        LDR.N    R1,??DataTable2_1
        STRB     R0,[R1, #+24]
//   44   
//   45   touch_spi_param.SPI_TxCompleteIntIsr = NULL;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable2_1
        STR      R0,[R1, #+28]
//   46   touch_spi_param.SPI_QueueEndIntIsr = NULL;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable2_1
        STR      R0,[R1, #+32]
//   47   touch_spi_param.SPI_TxFIFO_FillIntIsr = NULL;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable2_1
        STR      R0,[R1, #+44]
//   48   touch_spi_param.SPI_TxFIFO_UnderflowIntIsr = NULL;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable2_1
        STR      R0,[R1, #+36]
//   49   touch_spi_param.SPI_RxFIFO_DrainIntIsr = NULL;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable2_1
        STR      R0,[R1, #+48]
//   50   touch_spi_param.SPI_RxFIFO_OverflowIntIsr = NULL;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable2_1
        STR      R0,[R1, #+40]
//   51   
//   52   LPLD_SPI_Init(touch_spi_param);
        LDR.N    R1,??DataTable2_1
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+52
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_SPI_Init
//   53 
//   54 }
        ADD      SP,SP,#+36
        POP      {PC}             ;; return
//   55 
//   56 /*
//   57  * LPLD_Touch_SendCmd
//   58  * 向ADS7843芯片发送控制指令
//   59  * 
//   60  * 参数:
//   61  *    CMD--控制命令，在DEV_Touchscreen.h中有定义
//   62  *
//   63  *    pcs_state--片选PCSx发送完一帧数据之后的状态
//   64  *      |__0  保持低电平
//   65  *      |__1  由低电平拉高到高电平     
//   66  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   67 void LPLD_Touchscreen_SendCmd(uint8_t CMD,uint8_t pcs_state)
//   68 {
LPLD_Touchscreen_SendCmd:
        PUSH     {R7,LR}
//   69   LPLD_SPI_Master_WriteRead(TOUCHSCREEN_SPIX,CMD,SPI_PCS0,pcs_state);
        MOVS     R3,R1
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        MOVS     R2,#+1
        MOVS     R1,R0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.N    R0,??DataTable2  ;; 0x400ac000
        BL       LPLD_SPI_Master_WriteRead
//   70 }
        POP      {R0,PC}          ;; return
//   71 
//   72 /*
//   73  * LPLD_Touchscreen_GetCovValue
//   74  * 从ADS7843芯片获得数据
//   75  * 
//   76  * 参数:
//   77  *    CMD--控制命令，在Touch.h中有定义
//   78  *
//   79  *    pcs_state--片选PCSx发送完一帧数据之后的状态
//   80  *      |__0  保持低电平
//   81  *      |__1  由低电平拉高到高电平     
//   82  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   83 uint8_t LPLD_Touchscreen_GetCovValue(uint8_t CMD,uint8_t pcs_state)
//   84 {
LPLD_Touchscreen_GetCovValue:
        PUSH     {R7,LR}
//   85   return LPLD_SPI_Master_WriteRead(TOUCHSCREEN_SPIX,CMD,SPI_PCS0,pcs_state);
        MOVS     R3,R1
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        MOVS     R2,#+1
        MOVS     R1,R0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.N    R0,??DataTable2  ;; 0x400ac000
        BL       LPLD_SPI_Master_WriteRead
        POP      {R1,PC}          ;; return
//   86 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2:
        DC32     0x400ac000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_1:
        DC32     touch_spi_param
//   87 
//   88 /*
//   89  * LPLD_Touchscreen_GetResult
//   90  * 获得触摸屏位置的12位AD转换结果
//   91  * 
//   92  * 参数:
//   93  *    CMD--控制命令，在Touch.h中有定义
//   94  *
//   95  *    pcs_state--片选PCSx发送完一帧数据之后的状态
//   96  *      |__0  保持低电平
//   97  *      |__1  由低电平拉高到高电平     
//   98  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   99 uint16_t LPLD_Touchscreen_GetResult(uint8_t Cmd)
//  100 {
LPLD_Touchscreen_GetResult:
        PUSH     {R4,LR}
//  101   uint16_t HI,LO,Data;
//  102   //发送完毕CMD，CS保持在低电平状态
//  103   LPLD_Touchscreen_SendCmd(Cmd,SPI_PCS_ASSERTED);
        MOVS     R1,#+1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LPLD_Touchscreen_SendCmd
//  104   //如有必要判断忙
//  105   //在此添加判断忙函数或者延时函数，延时大于125khz即可
//  106   LPLD_Touchscreen_Delay(500);
        MOV      R0,#+500
        BL       LPLD_Touchscreen_Delay
//  107   //获得12位精度的高8位
//  108   HI=LPLD_Touchscreen_GetCovValue(LPLD_CMD_DUMMY,SPI_PCS_ASSERTED);
        MOVS     R1,#+1
        MOVS     R0,#+0
        BL       LPLD_Touchscreen_GetCovValue
        MOVS     R4,R0
//  109   //获得12位精度的低4位，并将CS拉高
//  110   LO=LPLD_Touchscreen_GetCovValue(LPLD_CMD_DUMMY,SPI_PCS_INACTIVE);
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       LPLD_Touchscreen_GetCovValue
//  111   //合成12位的转换结果
//  112   //参考ADS7843技术文档
//  113   Data = ((HI<<8)&0xFF00)|LO;
        ORRS     R0,R0,R4, LSL #+8
//  114   Data = Data>>4; 
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        LSRS     R0,R0,#+4
//  115   return Data;
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        POP      {R4,PC}          ;; return
//  116 }
//  117 
//  118 /*
//  119  * LPLD_Touchscreen_Delay
//  120  * Touchscreen延时函数
//  121  * 
//  122  * 参数:
//  123  *    i--延时
//  124  *    
//  125  */

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//  126 static void LPLD_Touchscreen_Delay(int i)
//  127 {
//  128   int k;
//  129   for(k=0;k<i;k++)
LPLD_Touchscreen_Delay:
        MOVS     R1,#+0
        B.N      ??LPLD_Touchscreen_Delay_0
//  130     asm("nop");
??LPLD_Touchscreen_Delay_1:
        nop
        ADDS     R1,R1,#+1
??LPLD_Touchscreen_Delay_0:
        CMP      R1,R0
        BLT.N    ??LPLD_Touchscreen_Delay_1
//  131 }
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
//  132 /********************************************************************/
// 
//  52 bytes in section .bss
// 208 bytes in section .text
// 
// 208 bytes of CODE memory
//  52 bytes of DATA memory
//
//Errors: none
//Warnings: none
