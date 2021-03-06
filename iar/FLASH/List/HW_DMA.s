///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.50.1.10123/W32 for ARM      01/Aug/2018  12:09:45
// Copyright 1999-2015 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\ShowD\Desktop\LPHD\LPHD_camCore\LPHD_camCore\lib\LPLD\HW\HW_DMA.c
//    Command line =  
//        C:\Users\ShowD\Desktop\LPHD\LPHD_camCore\LPHD_camCore\lib\LPLD\HW\HW_DMA.c
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
//        C:\Users\ShowD\Desktop\LPHD\LPHD_camCore\LPHD_camCore\iar\FLASH\List\HW_DMA.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        PUBLIC DMA0_IRQHandler
        PUBLIC DMA10_IRQHandler
        PUBLIC DMA11_IRQHandler
        PUBLIC DMA12_IRQHandler
        PUBLIC DMA13_IRQHandler
        PUBLIC DMA14_IRQHandler
        PUBLIC DMA15_IRQHandler
        PUBLIC DMA1_IRQHandler
        PUBLIC DMA2_IRQHandler
        PUBLIC DMA3_IRQHandler
        PUBLIC DMA4_IRQHandler
        PUBLIC DMA5_IRQHandler
        PUBLIC DMA6_IRQHandler
        PUBLIC DMA7_IRQHandler
        PUBLIC DMA8_IRQHandler
        PUBLIC DMA9_IRQHandler
        PUBLIC DMA_ISR
        PUBLIC LPLD_DMA_DisableIrq
        PUBLIC LPLD_DMA_EnableIrq
        PUBLIC LPLD_DMA_Init
        PUBLIC LPLD_DMA_SoftwareStartService

// C:\Users\ShowD\Desktop\LPHD\LPHD_camCore\LPHD_camCore\lib\LPLD\HW\HW_DMA.c
//    1 /**
//    2  * @file HW_DMA.c
//    3  * @version 3.0[By LPLD]
//    4  * @date 2013-06-18
//    5  * @brief DMA底层模块相关函数
//    6  *
//    7  * 更改建议:不建议修改
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
//   22 #include "common.h"

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// static __interwork __softfp void NVIC_EnableIRQ(IRQn_Type)
NVIC_EnableIRQ:
        MOVS     R1,#+1
        ANDS     R2,R0,#0x1F
        LSLS     R1,R1,R2
        LDR.W    R2,??DataTable18  ;; 0xe000e100
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        LSRS     R0,R0,#+5
        STR      R1,[R2, R0, LSL #+2]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// static __interwork __softfp void NVIC_DisableIRQ(IRQn_Type)
NVIC_DisableIRQ:
        MOVS     R1,#+1
        ANDS     R2,R0,#0x1F
        LSLS     R1,R1,R2
        LDR.W    R2,??DataTable18_1  ;; 0xe000e180
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        LSRS     R0,R0,#+5
        STR      R1,[R2, R0, LSL #+2]
        BX       LR               ;; return
//   23 #include "HW_DMA.h"
//   24 
//   25 #if defined(CPU_MK60DZ10) || defined(CPU_MK60D10) 
//   26 //用户自定义中断服务函数数组

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   27 DMA_ISR_CALLBACK DMA_ISR[16];
DMA_ISR:
        DS8 64
//   28 #elif defined(CPU_MK60F12) || defined(CPU_MK60F15)
//   29 DMA_ISR_CALLBACK DMA_ISR[32];
//   30 #endif
//   31 /*
//   32  * LPLD_DMA_Init
//   33  * 初始化eDMA模块
//   34  * 
//   35  * 参数:
//   36  *    dma_init_struct--eDMA初始化结构体，
//   37  *                        具体定义见DMA_InitTypeDef
//   38  *
//   39  * 输出:
//   40  *    0--配置错误
//   41  *    1--配置成功
//   42  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   43 uint8 LPLD_DMA_Init(DMA_InitTypeDef dma_init_struct)
//   44 {
LPLD_DMA_Init:
        PUSH     {R0-R3}
        PUSH     {R3-R11,LR}
//   45   uint8 chx = dma_init_struct.DMA_CHx;
        LDRB     R0,[SP, #+40]
//   46   uint8 req = dma_init_struct.DMA_Req;
        LDRB     R1,[SP, #+41]
        STRB     R1,[SP, #+1]
//   47   boolean periodic_trigg = dma_init_struct.DMA_PeriodicTriggerEnable;
        LDRB     R1,[SP, #+42]
        STRB     R1,[SP, #+0]
//   48   uint16 major_cnt = dma_init_struct.DMA_MajorLoopCnt;
        LDRH     R1,[SP, #+44]
//   49   uint32 minor_cnt = dma_init_struct.DMA_MinorByteCnt;
        LDR      R2,[SP, #+48]
//   50   uint32 src_addr = dma_init_struct.DMA_SourceAddr;
        LDR      R9,[SP, #+52]
//   51   uint8 src_dsize = dma_init_struct.DMA_SourceDataSize;
        LDRB     R3,[SP, #+56]
//   52   int16 src_addroffset = dma_init_struct.DMA_SourceAddrOffset;
        LDRSH    R4,[SP, #+58]
//   53   int32 src_lastadj = dma_init_struct.DMA_LastSourceAddrAdj;
        LDR      R5,[SP, #+60]
//   54   uint32 dst_addr = dma_init_struct.DMA_DestAddr;
        LDR      R6,[SP, #+64]
//   55   uint8 dst_dsize = dma_init_struct.DMA_DestDataSize;
        LDRB     R7,[SP, #+68]
//   56   int16 dst_addroffset = dma_init_struct.DMA_DestAddrOffset;
        LDRSH    R12,[SP, #+70]
//   57   int32 dst_lastadj = dma_init_struct.DMA_LastDestAddrAdj;
        LDR      LR,[SP, #+72]
//   58   boolean auto_disable = dma_init_struct.DMA_AutoDisableReq;
        LDRB     R8,[SP, #+76]
//   59   
//   60   //参数检查
//   61 #if defined(CPU_MK60DZ10) || defined(CPU_MK60D10) 
//   62   ASSERT( chx <= DMA_CH15 );       //eDMA通道选择
//   63 #elif defined(CPU_MK60F12) || defined(CPU_MK60F15)
//   64   ASSERT( chx <= DMA_CH31 );       //eDMA通道选择
//   65 #endif
//   66   ASSERT( req <= DMA_MUX_63 );     //请求源选择
//   67   ASSERT( major_cnt <= 0x7FFF );   //主计数判断
//   68   ASSERT( src_addr != NULL );      //源地址判断
//   69   ASSERT( (src_dsize <= DMA_SRC_32BIT)||(src_dsize == DMA_SRC_16BYTE) );     //源数据传输大小判断
//   70   ASSERT( dst_addr != NULL );      //目的地址判断
//   71   ASSERT( (dst_dsize <= DMA_DST_32BIT)||(dst_dsize == DMA_DST_16BYTE) );     //目的数据传输大小判断
//   72  
//   73 #if defined(CPU_MK60DZ10) || defined(CPU_MK60D10)   
//   74   SIM->SCGC6 |= SIM_SCGC6_DMAMUX_MASK;  //打开DMA通道多路复用器时钟 
        LDR.W    R10,??DataTable18_2  ;; 0x4004803c
        LDR      R10,[R10, #+0]
        ORRS     R10,R10,#0x2
        LDR.W    R11,??DataTable18_2  ;; 0x4004803c
        STR      R10,[R11, #+0]
//   75 #elif defined(CPU_MK60F12) || defined(CPU_MK60F15)
//   76   SIM->SCGC6 |= SIM_SCGC6_DMAMUX0_MASK;  //打开DMA通道多路复用器时钟 
//   77   SIM->SCGC6 |= SIM_SCGC6_DMAMUX1_MASK;  //打开DMA通道多路复用器时钟 
//   78 #endif  
//   79   SIM->SCGC7 |= SIM_SCGC7_DMA_MASK;     //打开DMA模块时钟
        LDR.W    R10,??DataTable18_3  ;; 0x40048040
        LDR      R10,[R10, #+0]
        ORRS     R10,R10,#0x2
        LDR.W    R11,??DataTable18_3  ;; 0x40048040
        STR      R10,[R11, #+0]
//   80   
//   81   //关闭通道x硬件DMA请求 
//   82   DMA0->ERQ &= ~(1<<chx);
        LDR.W    R10,??DataTable18_4  ;; 0x4000800c
        LDR      R10,[R10, #+0]
        MOVS     R11,#+1
        LSLS     R11,R11,R0
        BICS     R10,R10,R11
        LDR.W    R11,??DataTable18_4  ;; 0x4000800c
        STR      R10,[R11, #+0]
//   83   
//   84   //选择 通道x 配置外设的DMA源请求编号
//   85 #if defined(CPU_MK60DZ10) || defined(CPU_MK60D10) 
//   86   DMAMUX->CHCFG[chx] = DMAMUX_CHCFG_SOURCE(req);
        LDRB     R10,[SP, #+1]
        ANDS     R10,R10,#0x3F
        LDR.W    R11,??DataTable18_5  ;; 0x40021000
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        STRB     R10,[R0, R11]
//   87   //是否使能周期触发功能
//   88   if(periodic_trigg == TRUE)
        LDRB     R10,[SP, #+0]
        CMP      R10,#+1
        BNE.N    ??LPLD_DMA_Init_0
//   89   {
//   90     DMAMUX->CHCFG[chx] |= DMAMUX_CHCFG_TRIG_MASK;
        LDR.W    R10,??DataTable18_5  ;; 0x40021000
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDRB     R10,[R0, R10]
        ORRS     R10,R10,#0x40
        LDR.W    R11,??DataTable18_5  ;; 0x40021000
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        STRB     R10,[R0, R11]
        B.N      ??LPLD_DMA_Init_1
//   91   }
//   92   else
//   93   {
//   94     DMAMUX->CHCFG[chx] &= ~(DMAMUX_CHCFG_TRIG_MASK);
??LPLD_DMA_Init_0:
        LDR.W    R10,??DataTable18_5  ;; 0x40021000
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDRB     R10,[R0, R10]
        ANDS     R10,R10,#0xBF
        LDR.W    R11,??DataTable18_5  ;; 0x40021000
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        STRB     R10,[R0, R11]
//   95   }
//   96 #elif defined(CPU_MK60F12) || defined(CPU_MK60F15)
//   97   if(chx < 16)
//   98   {
//   99     DMAMUX0->CHCFG[chx] = DMAMUX_CHCFG_SOURCE(req);
//  100     //是否使能周期触发功能
//  101     if(periodic_trigg == TRUE)
//  102     {
//  103       DMAMUX0->CHCFG[chx] |= DMAMUX_CHCFG_TRIG_MASK;
//  104     }
//  105     else
//  106     {
//  107       DMAMUX0->CHCFG[chx] &= ~(DMAMUX_CHCFG_TRIG_MASK);
//  108     }
//  109   }
//  110   else // ch > 16
//  111   {
//  112     DMAMUX1->CHCFG[chx - 16] = DMAMUX_CHCFG_SOURCE(req);
//  113     //是否使能周期触发功能
//  114     if(periodic_trigg == TRUE)
//  115     {
//  116       DMAMUX1->CHCFG[chx - 16] |= DMAMUX_CHCFG_TRIG_MASK;
//  117     }
//  118     else
//  119     {
//  120       DMAMUX1->CHCFG[chx - 16] &= ~(DMAMUX_CHCFG_TRIG_MASK);
//  121     }
//  122   }
//  123 #endif   
//  124 
//  125   
//  126   
//  127   //设置源地址   
//  128   DMA0->TCD[chx].SADDR = DMA_SADDR_SADDR(src_addr);
??LPLD_DMA_Init_1:
        LDR.W    R10,??DataTable18_6  ;; 0x40009000
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSLS     R11,R0,#+5
        STR      R9,[R11, R10]
//  129   //在执行完针对源地址的操作之后，在源地址的基础上增加/减少偏移地址
//  130   DMA0->TCD[chx].SOFF = DMA_SOFF_SOFF(src_addroffset);
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSLS     R9,R0,#+5
        ADD      R9,R9,#+1073741824
        ADDS     R9,R9,#+36864
        STRH     R4,[R9, #+4]
//  131   //设置源地址的传输大小
//  132   DMA0->TCD[chx].ATTR = 0 | DMA_ATTR_SSIZE(src_dsize);
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        LSLS     R3,R3,#+8
        ANDS     R3,R3,#0x700
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSLS     R4,R0,#+5
        ADD      R4,R4,#+1073741824
        ADDS     R4,R4,#+36864
        STRH     R3,[R4, #+6]
//  133   //主的计数次数（major iteration count）达到后，重新调整源地址
//  134   DMA0->TCD[chx].SLAST = DMA_SLAST_SLAST(src_lastadj);
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSLS     R3,R0,#+5
        ADD      R3,R3,#+1073741824
        ADDS     R3,R3,#+36864
        STR      R5,[R3, #+12]
//  135   
//  136   //设置目的地址 
//  137   DMA0->TCD[chx].DADDR = DMA_DADDR_DADDR(dst_addr);
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSLS     R3,R0,#+5
        ADD      R3,R3,#+1073741824
        ADDS     R3,R3,#+36864
        STR      R6,[R3, #+16]
//  138   //在执行完针对目的地址的操作之后，在目的地址的基础上增加/减少偏移地址
//  139   DMA0->TCD[chx].DOFF = DMA_DOFF_DOFF(dst_addroffset);
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSLS     R3,R0,#+5
        ADD      R3,R3,#+1073741824
        ADDS     R3,R3,#+36864
        STRH     R12,[R3, #+20]
//  140   //设置目的地址的传输宽度
//  141   DMA0->TCD[chx].ATTR |= DMA_ATTR_DSIZE(dst_dsize);
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSLS     R3,R0,#+5
        ADD      R3,R3,#+1073741824
        ADDS     R3,R3,#+36864
        LDRH     R3,[R3, #+6]
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        ANDS     R4,R7,#0x7
        ORRS     R3,R4,R3
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSLS     R4,R0,#+5
        ADD      R4,R4,#+1073741824
        ADDS     R4,R4,#+36864
        STRH     R3,[R4, #+6]
//  142   //主的计数次数（major iteration count）达到后，重新调整目的地址
//  143   DMA0->TCD[chx].DLAST_SGA = DMA_DLAST_SGA_DLASTSGA(dst_lastadj);
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSLS     R3,R0,#+5
        ADD      R3,R3,#+1073741824
        ADDS     R3,R3,#+36864
        STR      LR,[R3, #+24]
//  144   
//  145   //默认为禁用通道链接功能，后续更新添加此功能
//  146   if( 1 == 1)
//  147   {
//  148     //===============设置主计数器长度，循环次数====================================
//  149     //设置主循环计数器 current major loop count
//  150     DMA0->TCD[chx].CITER_ELINKNO = DMA_CITER_ELINKNO_CITER(major_cnt);
        LSLS     R3,R1,#+17       ;; ZeroExtS R3,R1,#+17,#+17
        LSRS     R3,R3,#+17
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSLS     R4,R0,#+5
        ADD      R4,R4,#+1073741824
        ADDS     R4,R4,#+36864
        STRH     R3,[R4, #+22]
//  151     //起始循环计数器，当主循环计数器为零的时候，将装载起始循环计数器的值
//  152     DMA0->TCD[chx].BITER_ELINKNO = DMA_CITER_ELINKNO_CITER(major_cnt);
        LSLS     R1,R1,#+17       ;; ZeroExtS R1,R1,#+17,#+17
        LSRS     R1,R1,#+17
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSLS     R3,R0,#+5
        ADD      R3,R3,#+1073741824
        ADDS     R3,R3,#+36864
        STRH     R1,[R3, #+30]
//  153   }
//  154   
//  155   //默认为禁用次循环地址偏移功能，后续更新添加此功能
//  156   if( 1 == 1)
//  157   {
//  158     //次循环一次传输字节的个数
//  159     DMA0->TCD[chx].NBYTES_MLNO = DMA_NBYTES_MLNO_NBYTES(minor_cnt);
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSLS     R1,R0,#+5
        ADD      R1,R1,#+1073741824
        ADDS     R1,R1,#+36864
        STR      R2,[R1, #+8]
//  160   }
//  161   
//  162   //清空TCD控制寄存器     
//  163   DMA0->TCD[chx].CSR = 0;
        MOVS     R1,#+0
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSLS     R2,R0,#+5
        ADD      R2,R2,#+1073741824
        ADDS     R2,R2,#+36864
        STRH     R1,[R2, #+28]
//  164   
//  165   //配置eDMA中断
//  166   if((dma_init_struct.DMA_Isr != NULL) && 
//  167      (dma_init_struct.DMA_MajorCompleteIntEnable == TRUE))
        LDR      R1,[SP, #+80]
        CMP      R1,#+0
        BEQ.N    ??LPLD_DMA_Init_2
        LDRB     R1,[SP, #+77]
        CMP      R1,#+1
        BNE.N    ??LPLD_DMA_Init_2
//  168   {
//  169 
//  170        DMA0->TCD[chx].CSR |= DMA_CSR_INTMAJOR_MASK; //使能DMA 主循环计数器减到零 中断
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSLS     R1,R0,#+5
        ADD      R1,R1,#+1073741824
        ADDS     R1,R1,#+36864
        LDRH     R1,[R1, #+28]
        ORRS     R1,R1,#0x2
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSLS     R2,R0,#+5
        ADD      R2,R2,#+1073741824
        ADDS     R2,R2,#+36864
        STRH     R1,[R2, #+28]
//  171        DMA_ISR[chx] = dma_init_struct.DMA_Isr;
        LDR      R1,[SP, #+80]
        LDR.N    R2,??DataTable18_7
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        STR      R1,[R2, R0, LSL #+2]
//  172   }
//  173   if((dma_init_struct.DMA_Isr != NULL) && 
//  174      (dma_init_struct.DMA_MajorHalfCompleteIntEnable == TRUE))
??LPLD_DMA_Init_2:
        LDR      R1,[SP, #+80]
        CMP      R1,#+0
        BEQ.N    ??LPLD_DMA_Init_3
        LDRB     R1,[SP, #+78]
        CMP      R1,#+1
        BNE.N    ??LPLD_DMA_Init_3
//  175   {
//  176 
//  177        DMA0->TCD[chx].CSR |= DMA_CSR_INTHALF_MASK; //使能DMA 主循环计数器减到一半 中断
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSLS     R1,R0,#+5
        ADD      R1,R1,#+1073741824
        ADDS     R1,R1,#+36864
        LDRH     R1,[R1, #+28]
        ORRS     R1,R1,#0x4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSLS     R2,R0,#+5
        ADD      R2,R2,#+1073741824
        ADDS     R2,R2,#+36864
        STRH     R1,[R2, #+28]
//  178        DMA_ISR[chx] = dma_init_struct.DMA_Isr;
        LDR      R1,[SP, #+80]
        LDR.N    R2,??DataTable18_7
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        STR      R1,[R2, R0, LSL #+2]
//  179   }
//  180     
//  181   if(auto_disable == TRUE)
??LPLD_DMA_Init_3:
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        CMP      R8,#+1
        BNE.N    ??LPLD_DMA_Init_4
//  182   {
//  183      DMA0->TCD[chx].CSR |= DMA_CSR_DREQ_MASK; //主循环计数器等于零后，自动关闭DMA 
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSLS     R1,R0,#+5
        ADD      R1,R1,#+1073741824
        ADDS     R1,R1,#+36864
        LDRH     R1,[R1, #+28]
        ORRS     R1,R1,#0x8
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSLS     R2,R0,#+5
        ADD      R2,R2,#+1073741824
        ADDS     R2,R2,#+36864
        STRH     R1,[R2, #+28]
        B.N      ??LPLD_DMA_Init_5
//  184   }
//  185   else
//  186   {
//  187      DMA0->TCD[chx].CSR &= ~(DMA_CSR_DREQ_MASK); //主循环计数器等于零后，不关闭DMA
??LPLD_DMA_Init_4:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSLS     R1,R0,#+5
        ADD      R1,R1,#+1073741824
        ADDS     R1,R1,#+36864
        LDRH     R1,[R1, #+28]
        MOVW     R2,#+65527
        ANDS     R1,R2,R1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSLS     R2,R0,#+5
        ADD      R2,R2,#+1073741824
        ADDS     R2,R2,#+36864
        STRH     R1,[R2, #+28]
//  188   } 
//  189  
//  190   //DMA通道使能
//  191 #if defined(CPU_MK60DZ10) || defined(CPU_MK60D10)   
//  192   DMAMUX->CHCFG[chx] |= DMAMUX_CHCFG_ENBL_MASK;
??LPLD_DMA_Init_5:
        LDR.N    R1,??DataTable18_5  ;; 0x40021000
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDRB     R1,[R0, R1]
        ORRS     R1,R1,#0x80
        LDR.N    R2,??DataTable18_5  ;; 0x40021000
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        STRB     R1,[R0, R2]
//  193 #elif defined(CPU_MK60F12) || defined(CPU_MK60F15)
//  194   if(chx < 16)
//  195   {
//  196     DMAMUX0->CHCFG[chx] |= DMAMUX_CHCFG_ENBL_MASK;
//  197   }
//  198   else
//  199   {
//  200     DMAMUX1->CHCFG[chx - 16] |= DMAMUX_CHCFG_ENBL_MASK;
//  201   }
//  202 #endif
//  203   return 1;
        MOVS     R0,#+1
        POP      {R1,R4-R11}
        LDR      PC,[SP], #+20    ;; return
//  204 }
//  205 
//  206 /*
//  207  * LPLD_DMA_EnableIrq
//  208  * 使能eDMA中断
//  209  * 
//  210  * 参数:
//  211  *    dma_init_struct--eDMA初始化结构体，
//  212  *                        具体定义见DMA_InitTypeDef
//  213  *
//  214  * 输出:
//  215  *    0--失败
//  216  *    1--成功
//  217  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  218 uint8 LPLD_DMA_EnableIrq(DMA_InitTypeDef dma_init_struct)
//  219 {
LPLD_DMA_EnableIrq:
        PUSH     {R0-R3}
        PUSH     {R7,LR}
//  220 #if defined(CPU_MK60DZ10) || defined(CPU_MK60D10) 
//  221   enable_irq((IRQn_Type)(dma_init_struct.DMA_CHx + DMA0_IRQn)); 
        LDRSB    R0,[SP, #+8]
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        BL       NVIC_EnableIRQ
//  222 #elif defined(CPU_MK60F12) || defined(CPU_MK60F15)
//  223   if(dma_init_struct.DMA_CHx < 16)
//  224   {
//  225     enable_irq((IRQn_Type)(dma_init_struct.DMA_CHx + DMA0_DMA16_IRQn));
//  226   }
//  227   else // ch > 16
//  228   {
//  229     enable_irq((IRQn_Type)(dma_init_struct.DMA_CHx - 16 + DMA0_DMA16_IRQn));
//  230   }
//  231 #endif 
//  232   return 1;
        MOVS     R0,#+1
        POP      {R1}
        LDR      PC,[SP], #+20    ;; return
//  233 }
//  234 
//  235 /*
//  236  * LPLD_DMA_DisableIrq
//  237  * 禁用eDMA中断
//  238  * 
//  239  * 参数:
//  240  *    dma_init_struct--eDMA初始化结构体，
//  241  *                        具体定义见DMA_InitTypeDef
//  242  *
//  243  * 输出:
//  244  *    0--失败
//  245  *    1--成功
//  246  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  247 uint8 LPLD_DMA_DisableIrq(DMA_InitTypeDef dma_init_struct)
//  248 {
LPLD_DMA_DisableIrq:
        PUSH     {R0-R3}
        PUSH     {R7,LR}
//  249 #if defined(CPU_MK60DZ10) || defined(CPU_MK60D10) 
//  250   disable_irq((IRQn_Type)(dma_init_struct.DMA_CHx + DMA0_IRQn)); 
        LDRSB    R0,[SP, #+8]
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        BL       NVIC_DisableIRQ
//  251 #elif defined(CPU_MK60F12) || defined(CPU_MK60F15)
//  252   if(dma_init_struct.DMA_CHx < 16)
//  253   {
//  254     disable_irq((IRQn_Type)(dma_init_struct.DMA_CHx + DMA0_DMA16_IRQn));
//  255   }
//  256   else // ch > 16
//  257   {
//  258     disable_irq((IRQn_Type)(dma_init_struct.DMA_CHx - 16 + DMA0_DMA16_IRQn));
//  259   }
//  260 #endif 
//  261   return 1;
        MOVS     R0,#+1
        POP      {R1}
        LDR      PC,[SP], #+20    ;; return
//  262 }
//  263 
//  264 /*
//  265  * LPLD_DMA_SoftwareStartService
//  266  * DMA服务请求软件开始
//  267  * 
//  268  * 参数:
//  269  *    dma_init_struct--eDMA初始化结构体，
//  270  *                        具体定义见DMA_InitTypeDef
//  271  *
//  272  * 输出:
//  273  *    无
//  274  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  275 __INLINE void LPLD_DMA_SoftwareStartService(DMA_InitTypeDef dma_init_struct)
//  276 {
LPLD_DMA_SoftwareStartService:
        PUSH     {R0-R3}
//  277   DMA0->TCD[dma_init_struct.DMA_CHx].CSR |= DMA_CSR_START_MASK; 
        LDRB     R0,[SP, #+0]
        LSLS     R0,R0,#+5
        ADD      R0,R0,#+1073741824
        ADDS     R0,R0,#+36864
        LDRH     R0,[R0, #+28]
        ORRS     R0,R0,#0x1
        LDRB     R1,[SP, #+0]
        LSLS     R1,R1,#+5
        ADD      R1,R1,#+1073741824
        ADDS     R1,R1,#+36864
        STRH     R0,[R1, #+28]
//  278 }
        ADD      SP,SP,#+16
        BX       LR               ;; return
//  279 
//  280 /*
//  281  * eDMA中断处理函数
//  282  * 与启动文件startup_K60.s中的中断向量表关联
//  283  * 用户无需修改，程序自动进入对应通道中断函数
//  284  */
//  285 #if defined(CPU_MK60DZ10) || defined(CPU_MK60D10) 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  286 void DMA0_IRQHandler(void)
//  287 {
DMA0_IRQHandler:
        PUSH     {R7,LR}
//  288 #if (UCOS_II > 0u)
//  289   OS_CPU_SR  cpu_sr = 0u;
//  290   OS_ENTER_CRITICAL(); //告知系统此时已经进入了中断服务子函数
//  291   OSIntEnter();
//  292   OS_EXIT_CRITICAL();
//  293 #endif  
//  294   
//  295   //调用用户自定义中断服务
//  296   DMA_ISR[0]();
        LDR.N    R0,??DataTable18_7
        LDR      R0,[R0, #+0]
        BLX      R0
//  297   //清除中断标志位
//  298   DMA0->INT |= 0x1u<<0;
        LDR.N    R0,??DataTable18_8  ;; 0x40008024
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.N    R1,??DataTable18_8  ;; 0x40008024
        STR      R0,[R1, #+0]
//  299   
//  300 #if (UCOS_II > 0u)
//  301   OSIntExit();          //告知系统此时即将离开中断服务子函数
//  302 #endif
//  303 }
        POP      {R0,PC}          ;; return
//  304 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  305 void DMA1_IRQHandler(void)
//  306 {
DMA1_IRQHandler:
        PUSH     {R7,LR}
//  307 #if (UCOS_II > 0u)
//  308   OS_CPU_SR  cpu_sr = 0u;
//  309   OS_ENTER_CRITICAL(); //告知系统此时已经进入了中断服务子函数
//  310   OSIntEnter();
//  311   OS_EXIT_CRITICAL();
//  312 #endif  
//  313   
//  314   //调用用户自定义中断服务
//  315   DMA_ISR[1]();
        LDR.N    R0,??DataTable18_7
        LDR      R0,[R0, #+4]
        BLX      R0
//  316   //清除中断标志位
//  317   DMA0->INT |= 0x1u<<1;
        LDR.N    R0,??DataTable18_8  ;; 0x40008024
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x2
        LDR.N    R1,??DataTable18_8  ;; 0x40008024
        STR      R0,[R1, #+0]
//  318   
//  319 #if (UCOS_II > 0u)
//  320   OSIntExit();          //告知系统此时即将离开中断服务子函数
//  321 #endif
//  322 }
        POP      {R0,PC}          ;; return
//  323 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  324 void DMA2_IRQHandler(void)
//  325 {
DMA2_IRQHandler:
        PUSH     {R7,LR}
//  326 #if (UCOS_II > 0u)
//  327   OS_CPU_SR  cpu_sr = 0u;
//  328   OS_ENTER_CRITICAL(); //告知系统此时已经进入了中断服务子函数
//  329   OSIntEnter();
//  330   OS_EXIT_CRITICAL();
//  331 #endif  
//  332   
//  333   //调用用户自定义中断服务
//  334   DMA_ISR[2]();
        LDR.N    R0,??DataTable18_7
        LDR      R0,[R0, #+8]
        BLX      R0
//  335   //清除中断标志位
//  336   DMA0->INT |= 0x1u<<2;
        LDR.N    R0,??DataTable18_8  ;; 0x40008024
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x4
        LDR.N    R1,??DataTable18_8  ;; 0x40008024
        STR      R0,[R1, #+0]
//  337   
//  338 #if (UCOS_II > 0u)
//  339   OSIntExit();          //告知系统此时即将离开中断服务子函数
//  340 #endif
//  341 }
        POP      {R0,PC}          ;; return
//  342 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  343 void DMA3_IRQHandler(void)
//  344 {
DMA3_IRQHandler:
        PUSH     {R7,LR}
//  345 #if (UCOS_II > 0u)
//  346   OS_CPU_SR  cpu_sr = 0u;
//  347   OS_ENTER_CRITICAL(); //告知系统此时已经进入了中断服务子函数
//  348   OSIntEnter();
//  349   OS_EXIT_CRITICAL();
//  350 #endif  
//  351   
//  352   //调用用户自定义中断服务
//  353   DMA_ISR[3]();
        LDR.N    R0,??DataTable18_7
        LDR      R0,[R0, #+12]
        BLX      R0
//  354   //清除中断标志位
//  355   DMA0->INT |= 0x1u<<3;
        LDR.N    R0,??DataTable18_8  ;; 0x40008024
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x8
        LDR.N    R1,??DataTable18_8  ;; 0x40008024
        STR      R0,[R1, #+0]
//  356   
//  357 #if (UCOS_II > 0u)
//  358   OSIntExit();          //告知系统此时即将离开中断服务子函数
//  359 #endif
//  360 }
        POP      {R0,PC}          ;; return
//  361 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  362 void DMA4_IRQHandler(void)
//  363 {
DMA4_IRQHandler:
        PUSH     {R7,LR}
//  364 #if (UCOS_II > 0u)
//  365   OS_CPU_SR  cpu_sr = 0u;
//  366   OS_ENTER_CRITICAL(); //告知系统此时已经进入了中断服务子函数
//  367   OSIntEnter();
//  368   OS_EXIT_CRITICAL();
//  369 #endif  
//  370   
//  371   //调用用户自定义中断服务
//  372   DMA_ISR[4]();
        LDR.N    R0,??DataTable18_7
        LDR      R0,[R0, #+16]
        BLX      R0
//  373   //清除中断标志位
//  374   DMA0->INT |= 0x1u<<4;
        LDR.N    R0,??DataTable18_8  ;; 0x40008024
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x10
        LDR.N    R1,??DataTable18_8  ;; 0x40008024
        STR      R0,[R1, #+0]
//  375   
//  376 #if (UCOS_II > 0u)
//  377   OSIntExit();          //告知系统此时即将离开中断服务子函数
//  378 #endif
//  379 }
        POP      {R0,PC}          ;; return
//  380 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  381 void DMA5_IRQHandler(void)
//  382 {
DMA5_IRQHandler:
        PUSH     {R7,LR}
//  383 #if (UCOS_II > 0u)
//  384   OS_CPU_SR  cpu_sr = 0u;
//  385   OS_ENTER_CRITICAL(); //告知系统此时已经进入了中断服务子函数
//  386   OSIntEnter();
//  387   OS_EXIT_CRITICAL();
//  388 #endif  
//  389   
//  390   //调用用户自定义中断服务
//  391   DMA_ISR[5]();
        LDR.N    R0,??DataTable18_7
        LDR      R0,[R0, #+20]
        BLX      R0
//  392   //清除中断标志位
//  393   DMA0->INT |= 0x1u<<5;
        LDR.N    R0,??DataTable18_8  ;; 0x40008024
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x20
        LDR.N    R1,??DataTable18_8  ;; 0x40008024
        STR      R0,[R1, #+0]
//  394   
//  395 #if (UCOS_II > 0u)
//  396   OSIntExit();          //告知系统此时即将离开中断服务子函数
//  397 #endif
//  398 }
        POP      {R0,PC}          ;; return
//  399 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  400 void DMA6_IRQHandler(void)
//  401 {
DMA6_IRQHandler:
        PUSH     {R7,LR}
//  402 #if (UCOS_II > 0u)
//  403   OS_CPU_SR  cpu_sr = 0u;
//  404   OS_ENTER_CRITICAL(); //告知系统此时已经进入了中断服务子函数
//  405   OSIntEnter();
//  406   OS_EXIT_CRITICAL();
//  407 #endif  
//  408   
//  409   //调用用户自定义中断服务
//  410   DMA_ISR[6]();
        LDR.N    R0,??DataTable18_7
        LDR      R0,[R0, #+24]
        BLX      R0
//  411   //清除中断标志位
//  412   DMA0->INT |= 0x1u<<6;
        LDR.N    R0,??DataTable18_8  ;; 0x40008024
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x40
        LDR.N    R1,??DataTable18_8  ;; 0x40008024
        STR      R0,[R1, #+0]
//  413   
//  414 #if (UCOS_II > 0u)
//  415   OSIntExit();          //告知系统此时即将离开中断服务子函数
//  416 #endif
//  417 }
        POP      {R0,PC}          ;; return
//  418 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  419 void DMA7_IRQHandler(void)
//  420 {
DMA7_IRQHandler:
        PUSH     {R7,LR}
//  421 #if (UCOS_II > 0u)
//  422   OS_CPU_SR  cpu_sr = 0u;
//  423   OS_ENTER_CRITICAL(); //告知系统此时已经进入了中断服务子函数
//  424   OSIntEnter();
//  425   OS_EXIT_CRITICAL();
//  426 #endif  
//  427   
//  428   //调用用户自定义中断服务
//  429   DMA_ISR[7]();
        LDR.N    R0,??DataTable18_7
        LDR      R0,[R0, #+28]
        BLX      R0
//  430   //清除中断标志位
//  431   DMA0->INT |= 0x1u<<7;
        LDR.N    R0,??DataTable18_8  ;; 0x40008024
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x80
        LDR.N    R1,??DataTable18_8  ;; 0x40008024
        STR      R0,[R1, #+0]
//  432   
//  433 #if (UCOS_II > 0u)
//  434   OSIntExit();          //告知系统此时即将离开中断服务子函数
//  435 #endif
//  436 }
        POP      {R0,PC}          ;; return
//  437 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  438 void DMA8_IRQHandler(void)
//  439 {
DMA8_IRQHandler:
        PUSH     {R7,LR}
//  440 #if (UCOS_II > 0u)
//  441   OS_CPU_SR  cpu_sr = 0u;
//  442   OS_ENTER_CRITICAL(); //告知系统此时已经进入了中断服务子函数
//  443   OSIntEnter();
//  444   OS_EXIT_CRITICAL();
//  445 #endif  
//  446   
//  447   //调用用户自定义中断服务
//  448   DMA_ISR[8]();
        LDR.N    R0,??DataTable18_7
        LDR      R0,[R0, #+32]
        BLX      R0
//  449   //清除中断标志位
//  450   DMA0->INT |= 0x1u<<8;
        LDR.N    R0,??DataTable18_8  ;; 0x40008024
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x100
        LDR.N    R1,??DataTable18_8  ;; 0x40008024
        STR      R0,[R1, #+0]
//  451   
//  452 #if (UCOS_II > 0u)
//  453   OSIntExit();          //告知系统此时即将离开中断服务子函数
//  454 #endif
//  455 }
        POP      {R0,PC}          ;; return
//  456 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  457 void DMA9_IRQHandler(void)
//  458 {
DMA9_IRQHandler:
        PUSH     {R7,LR}
//  459 #if (UCOS_II > 0u)
//  460   OS_CPU_SR  cpu_sr = 0u;
//  461   OS_ENTER_CRITICAL(); //告知系统此时已经进入了中断服务子函数
//  462   OSIntEnter();
//  463   OS_EXIT_CRITICAL();
//  464 #endif  
//  465   
//  466   //调用用户自定义中断服务
//  467   DMA_ISR[9]();
        LDR.N    R0,??DataTable18_7
        LDR      R0,[R0, #+36]
        BLX      R0
//  468   //清除中断标志位
//  469   DMA0->INT |= 0x1u<<9;
        LDR.N    R0,??DataTable18_8  ;; 0x40008024
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x200
        LDR.N    R1,??DataTable18_8  ;; 0x40008024
        STR      R0,[R1, #+0]
//  470   
//  471 #if (UCOS_II > 0u)
//  472   OSIntExit();          //告知系统此时即将离开中断服务子函数
//  473 #endif
//  474 }
        POP      {R0,PC}          ;; return
//  475 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  476 void DMA10_IRQHandler(void)
//  477 {
DMA10_IRQHandler:
        PUSH     {R7,LR}
//  478 #if (UCOS_II > 0u)
//  479   OS_CPU_SR  cpu_sr = 0u;
//  480   OS_ENTER_CRITICAL(); //告知系统此时已经进入了中断服务子函数
//  481   OSIntEnter();
//  482   OS_EXIT_CRITICAL();
//  483 #endif  
//  484   
//  485   //调用用户自定义中断服务
//  486   DMA_ISR[10]();
        LDR.N    R0,??DataTable18_7
        LDR      R0,[R0, #+40]
        BLX      R0
//  487   //清除中断标志位
//  488   DMA0->INT |= 0x1u<10;
        LDR.N    R0,??DataTable18_8  ;; 0x40008024
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.N    R1,??DataTable18_8  ;; 0x40008024
        STR      R0,[R1, #+0]
//  489   
//  490 #if (UCOS_II > 0u)
//  491   OSIntExit();          //告知系统此时即将离开中断服务子函数
//  492 #endif
//  493 }
        POP      {R0,PC}          ;; return
//  494 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  495 void DMA11_IRQHandler(void)
//  496 {
DMA11_IRQHandler:
        PUSH     {R7,LR}
//  497 #if (UCOS_II > 0u)
//  498   OS_CPU_SR  cpu_sr = 0u;
//  499   OS_ENTER_CRITICAL(); //告知系统此时已经进入了中断服务子函数
//  500   OSIntEnter();
//  501   OS_EXIT_CRITICAL();
//  502 #endif  
//  503   
//  504   //调用用户自定义中断服务
//  505   DMA_ISR[11]();
        LDR.N    R0,??DataTable18_7
        LDR      R0,[R0, #+44]
        BLX      R0
//  506   //清除中断标志位
//  507   DMA0->INT |= 0x1u<<11;
        LDR.N    R0,??DataTable18_8  ;; 0x40008024
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x800
        LDR.N    R1,??DataTable18_8  ;; 0x40008024
        STR      R0,[R1, #+0]
//  508   
//  509 #if (UCOS_II > 0u)
//  510   OSIntExit();          //告知系统此时即将离开中断服务子函数
//  511 #endif
//  512 }
        POP      {R0,PC}          ;; return
//  513 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  514 void DMA12_IRQHandler(void)
//  515 {
DMA12_IRQHandler:
        PUSH     {R7,LR}
//  516 #if (UCOS_II > 0u)
//  517   OS_CPU_SR  cpu_sr = 0u;
//  518   OS_ENTER_CRITICAL(); //告知系统此时已经进入了中断服务子函数
//  519   OSIntEnter();
//  520   OS_EXIT_CRITICAL();
//  521 #endif  
//  522   
//  523   //调用用户自定义中断服务
//  524   DMA_ISR[12]();
        LDR.N    R0,??DataTable18_7
        LDR      R0,[R0, #+48]
        BLX      R0
//  525   //清除中断标志位
//  526   DMA0->INT |= 0x1u<<12;
        LDR.N    R0,??DataTable18_8  ;; 0x40008024
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1000
        LDR.N    R1,??DataTable18_8  ;; 0x40008024
        STR      R0,[R1, #+0]
//  527   
//  528 #if (UCOS_II > 0u)
//  529   OSIntExit();          //告知系统此时即将离开中断服务子函数
//  530 #endif
//  531 }
        POP      {R0,PC}          ;; return
//  532 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  533 void DMA13_IRQHandler(void)
//  534 {
DMA13_IRQHandler:
        PUSH     {R7,LR}
//  535 #if (UCOS_II > 0u)
//  536   OS_CPU_SR  cpu_sr = 0u;
//  537   OS_ENTER_CRITICAL(); //告知系统此时已经进入了中断服务子函数
//  538   OSIntEnter();
//  539   OS_EXIT_CRITICAL();
//  540 #endif  
//  541   
//  542   //调用用户自定义中断服务
//  543   DMA_ISR[13]();
        LDR.N    R0,??DataTable18_7
        LDR      R0,[R0, #+52]
        BLX      R0
//  544   //清除中断标志位
//  545   DMA0->INT |= 0x1u<<13;
        LDR.N    R0,??DataTable18_8  ;; 0x40008024
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x2000
        LDR.N    R1,??DataTable18_8  ;; 0x40008024
        STR      R0,[R1, #+0]
//  546   
//  547 #if (UCOS_II > 0u)
//  548   OSIntExit();          //告知系统此时即将离开中断服务子函数
//  549 #endif
//  550 }
        POP      {R0,PC}          ;; return
//  551 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  552 void DMA14_IRQHandler(void)
//  553 {
DMA14_IRQHandler:
        PUSH     {R7,LR}
//  554 #if (UCOS_II > 0u)
//  555   OS_CPU_SR  cpu_sr = 0u;
//  556   OS_ENTER_CRITICAL(); //告知系统此时已经进入了中断服务子函数
//  557   OSIntEnter();
//  558   OS_EXIT_CRITICAL();
//  559 #endif  
//  560   
//  561   //调用用户自定义中断服务
//  562   DMA_ISR[14]();
        LDR.N    R0,??DataTable18_7
        LDR      R0,[R0, #+56]
        BLX      R0
//  563   //清除中断标志位
//  564   DMA0->INT |= 0x1u<<14;
        LDR.N    R0,??DataTable18_8  ;; 0x40008024
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x4000
        LDR.N    R1,??DataTable18_8  ;; 0x40008024
        STR      R0,[R1, #+0]
//  565   
//  566 #if (UCOS_II > 0u)
//  567   OSIntExit();          //告知系统此时即将离开中断服务子函数
//  568 #endif
//  569 }
        POP      {R0,PC}          ;; return
//  570 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  571 void DMA15_IRQHandler(void)
//  572 {
DMA15_IRQHandler:
        PUSH     {R7,LR}
//  573 #if (UCOS_II > 0u)
//  574   OS_CPU_SR  cpu_sr = 0u;
//  575   OS_ENTER_CRITICAL(); //告知系统此时已经进入了中断服务子函数
//  576   OSIntEnter();
//  577   OS_EXIT_CRITICAL();
//  578 #endif  
//  579   
//  580   //调用用户自定义中断服务
//  581   DMA_ISR[15]();
        LDR.N    R0,??DataTable18_7
        LDR      R0,[R0, #+60]
        BLX      R0
//  582   //清除中断标志位
//  583   DMA0->INT |= 0x1u<<15;
        LDR.N    R0,??DataTable18_8  ;; 0x40008024
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x8000
        LDR.N    R1,??DataTable18_8  ;; 0x40008024
        STR      R0,[R1, #+0]
//  584   
//  585 #if (UCOS_II > 0u)
//  586   OSIntExit();          //告知系统此时即将离开中断服务子函数
//  587 #endif
//  588 }
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18:
        DC32     0xe000e100

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_1:
        DC32     0xe000e180

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_2:
        DC32     0x4004803c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_3:
        DC32     0x40048040

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_4:
        DC32     0x4000800c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_5:
        DC32     0x40021000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_6:
        DC32     0x40009000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_7:
        DC32     DMA_ISR

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_8:
        DC32     0x40008024

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//  589 #elif defined(CPU_MK60F12) || defined(CPU_MK60F15)
//  590 //DMA0 DMA16共用此Handler
//  591 void DMA0_IRQHandler(void)
//  592 {
//  593 #if (UCOS_II > 0u)
//  594   OS_CPU_SR  cpu_sr = 0u;
//  595   OS_ENTER_CRITICAL(); //告知系统此时已经进入了中断服务子函数
//  596   OSIntEnter();
//  597   OS_EXIT_CRITICAL();
//  598 #endif  
//  599   
//  600   if( DMA0->INT & 0x1u<<0)
//  601   {
//  602     //调用用户自定义中断服务
//  603     DMA_ISR[0]();
//  604     //清除中断标志位
//  605     DMA0->INT |= 0x1u<<0;
//  606   }
//  607   else if(DMA0->INT & 0x1u<<16)
//  608   {
//  609     //调用用户自定义中断服务
//  610     DMA_ISR[16]();
//  611     //清除中断标志位
//  612     DMA0->INT |= 0x1u<<16;
//  613   }
//  614   else
//  615   {}
//  616   
//  617 #if (UCOS_II > 0u)
//  618   OSIntExit();          //告知系统此时即将离开中断服务子函数
//  619 #endif
//  620 }
//  621 //DMA1 DMA17共用此Handler
//  622 void DMA1_IRQHandler(void)
//  623 {
//  624 #if (UCOS_II > 0u)
//  625   OS_CPU_SR  cpu_sr = 0u;
//  626   OS_ENTER_CRITICAL(); //告知系统此时已经进入了中断服务子函数
//  627   OSIntEnter();
//  628   OS_EXIT_CRITICAL();
//  629 #endif  
//  630   
//  631   if( DMA0->INT & 0x1u<<1)
//  632   {
//  633     //调用用户自定义中断服务
//  634     DMA_ISR[1]();
//  635     //清除中断标志位
//  636     DMA0->INT |= 0x1u<<1;
//  637   }
//  638   else if(DMA0->INT & 0x1u<<17)
//  639   {
//  640     //调用用户自定义中断服务
//  641     DMA_ISR[17]();
//  642     //清除中断标志位
//  643     DMA0->INT |= 0x1u<<17;
//  644   }
//  645   else
//  646   {}
//  647   
//  648 #if (UCOS_II > 0u)
//  649   OSIntExit();          //告知系统此时即将离开中断服务子函数
//  650 #endif
//  651 }
//  652 //DMA2 DMA18共用此Handler
//  653 void DMA2_IRQHandler(void)
//  654 {
//  655 #if (UCOS_II > 0u)
//  656   OS_CPU_SR  cpu_sr = 0u;
//  657   OS_ENTER_CRITICAL(); //告知系统此时已经进入了中断服务子函数
//  658   OSIntEnter();
//  659   OS_EXIT_CRITICAL();
//  660 #endif  
//  661   
//  662   if( DMA0->INT & 0x1u<<2)
//  663   {
//  664     //调用用户自定义中断服务
//  665     DMA_ISR[2]();
//  666     //清除中断标志位
//  667     DMA0->INT |= 0x1u<<2;
//  668   }
//  669   else if(DMA0->INT & 0x1u<<18)
//  670   {
//  671     //调用用户自定义中断服务
//  672     DMA_ISR[18]();
//  673     //清除中断标志位
//  674     DMA0->INT |= 0x1u<<18;
//  675   }
//  676   else
//  677   {}
//  678   
//  679 #if (UCOS_II > 0u)
//  680   OSIntExit();          //告知系统此时即将离开中断服务子函数
//  681 #endif
//  682 }
//  683 //DMA3 DMA19共用此Handler
//  684 void DMA3_IRQHandler(void)
//  685 {
//  686 #if (UCOS_II > 0u)
//  687   OS_CPU_SR  cpu_sr = 0u;
//  688   OS_ENTER_CRITICAL(); //告知系统此时已经进入了中断服务子函数
//  689   OSIntEnter();
//  690   OS_EXIT_CRITICAL();
//  691 #endif  
//  692   
//  693   if( DMA0->INT & 0x1u<<3)
//  694   {
//  695     //调用用户自定义中断服务
//  696     DMA_ISR[3]();
//  697     //清除中断标志位
//  698     DMA0->INT |= 0x1u<<3;
//  699   }
//  700   else if(DMA0->INT & 0x1u<<19)
//  701   {
//  702     //调用用户自定义中断服务
//  703     DMA_ISR[19]();
//  704     //清除中断标志位
//  705     DMA0->INT |= 0x1u<<19;
//  706   }
//  707   else
//  708   {}
//  709   
//  710 #if (UCOS_II > 0u)
//  711   OSIntExit();          //告知系统此时即将离开中断服务子函数
//  712 #endif
//  713 }
//  714 //DMA4 DMA20共用此Handler
//  715 void DMA4_IRQHandler(void)
//  716 {
//  717 #if (UCOS_II > 0u)
//  718   OS_CPU_SR  cpu_sr = 0u;
//  719   OS_ENTER_CRITICAL(); //告知系统此时已经进入了中断服务子函数
//  720   OSIntEnter();
//  721   OS_EXIT_CRITICAL();
//  722 #endif  
//  723   
//  724   if( DMA0->INT & 0x1u<<4)
//  725   {
//  726     //调用用户自定义中断服务
//  727     DMA_ISR[4]();
//  728     //清除中断标志位
//  729     DMA0->INT |= 0x1u<<4;
//  730   }
//  731   else if(DMA0->INT & 0x1u<<20)
//  732   {
//  733     //调用用户自定义中断服务
//  734     DMA_ISR[20]();
//  735     //清除中断标志位
//  736     DMA0->INT |= 0x1u<<20;
//  737   }
//  738   else
//  739   {}
//  740   
//  741 #if (UCOS_II > 0u)
//  742   OSIntExit();          //告知系统此时即将离开中断服务子函数
//  743 #endif
//  744 }
//  745 //DMA5 DMA21共用此Handler
//  746 void DMA5_IRQHandler(void)
//  747 {
//  748 #if (UCOS_II > 0u)
//  749   OS_CPU_SR  cpu_sr = 0u;
//  750   OS_ENTER_CRITICAL(); //告知系统此时已经进入了中断服务子函数
//  751   OSIntEnter();
//  752   OS_EXIT_CRITICAL();
//  753 #endif  
//  754   
//  755   if( DMA0->INT & 0x1u<<5)
//  756   {
//  757     //调用用户自定义中断服务
//  758     DMA_ISR[5]();
//  759     //清除中断标志位
//  760     DMA0->INT |= 0x1u<<5;
//  761   }
//  762   else if(DMA0->INT & 0x1u<<21)
//  763   {
//  764     //调用用户自定义中断服务
//  765     DMA_ISR[21]();
//  766     //清除中断标志位
//  767     DMA0->INT |= 0x1u<<21;
//  768   }
//  769   else
//  770   {}
//  771   
//  772 #if (UCOS_II > 0u)
//  773   OSIntExit();          //告知系统此时即将离开中断服务子函数
//  774 #endif
//  775 }
//  776 //DMA6 DMA22共用此Handler
//  777 void DMA6_IRQHandler(void)
//  778 {
//  779 #if (UCOS_II > 0u)
//  780   OS_CPU_SR  cpu_sr = 0u;
//  781   OS_ENTER_CRITICAL(); //告知系统此时已经进入了中断服务子函数
//  782   OSIntEnter();
//  783   OS_EXIT_CRITICAL();
//  784 #endif  
//  785   
//  786   if( DMA0->INT & 0x1u<<6)
//  787   {
//  788     //调用用户自定义中断服务
//  789     DMA_ISR[6]();
//  790     //清除中断标志位
//  791     DMA0->INT |= 0x1u<<6;
//  792   }
//  793   else if(DMA0->INT & 0x1u<<22)
//  794   {
//  795     //调用用户自定义中断服务
//  796     DMA_ISR[22]();
//  797     //清除中断标志位
//  798     DMA0->INT |= 0x1u<<22;
//  799   }
//  800   else
//  801   {}
//  802   
//  803 #if (UCOS_II > 0u)
//  804   OSIntExit();          //告知系统此时即将离开中断服务子函数
//  805 #endif
//  806 }
//  807 //DMA7 DMA23共用此Handler
//  808 void DMA7_IRQHandler(void)
//  809 {
//  810 #if (UCOS_II > 0u)
//  811   OS_CPU_SR  cpu_sr = 0u;
//  812   OS_ENTER_CRITICAL(); //告知系统此时已经进入了中断服务子函数
//  813   OSIntEnter();
//  814   OS_EXIT_CRITICAL();
//  815 #endif  
//  816   
//  817   if( DMA0->INT & 0x1u<<7 )
//  818   {
//  819     //调用用户自定义中断服务
//  820     DMA_ISR[7]();
//  821     //清除中断标志位
//  822     DMA0->INT |= 0x1u<<7;
//  823   }
//  824   else if( DMA0->INT & 0x1u<<23 )
//  825   {
//  826     //调用用户自定义中断服务
//  827     DMA_ISR[23]();
//  828     //清除中断标志位
//  829     DMA0->INT |= 0x1u<<23;
//  830   }
//  831   else
//  832   {}
//  833   
//  834 #if (UCOS_II > 0u)
//  835   OSIntExit();          //告知系统此时即将离开中断服务子函数
//  836 #endif
//  837 }
//  838 //DMA8 DMA24共用此Handler
//  839 void DMA8_IRQHandler(void)
//  840 {
//  841 #if (UCOS_II > 0u)
//  842   OS_CPU_SR  cpu_sr = 0u;
//  843   OS_ENTER_CRITICAL(); //告知系统此时已经进入了中断服务子函数
//  844   OSIntEnter();
//  845   OS_EXIT_CRITICAL();
//  846 #endif  
//  847   
//  848   if( DMA0->INT & 0x1u<<8 )
//  849   {
//  850     //调用用户自定义中断服务
//  851     DMA_ISR[8]();
//  852     //清除中断标志位
//  853     DMA0->INT |= 0x1u<<8;
//  854   }
//  855   else if( DMA0->INT & 0x1u<<24 )
//  856   {
//  857     //调用用户自定义中断服务
//  858     DMA_ISR[24]();
//  859     //清除中断标志位
//  860     DMA0->INT |= 0x1u<<24;
//  861   }
//  862   else
//  863   {}
//  864   
//  865 #if (UCOS_II > 0u)
//  866   OSIntExit();          //告知系统此时即将离开中断服务子函数
//  867 #endif
//  868 }
//  869 //DMA9 DMA25共用此Handler
//  870 void DMA9_IRQHandler(void)
//  871 {
//  872 #if (UCOS_II > 0u)
//  873   OS_CPU_SR  cpu_sr = 0u;
//  874   OS_ENTER_CRITICAL(); //告知系统此时已经进入了中断服务子函数
//  875   OSIntEnter();
//  876   OS_EXIT_CRITICAL();
//  877 #endif  
//  878   
//  879   if( DMA0->INT & 0x1u<<9 )
//  880   {
//  881     //调用用户自定义中断服务
//  882     DMA_ISR[9]();
//  883     //清除中断标志位
//  884     DMA0->INT |= 0x1u<<9;
//  885   }
//  886   else if( DMA0->INT & 0x1u<<25 )
//  887   {
//  888     //调用用户自定义中断服务
//  889     DMA_ISR[25]();
//  890     //清除中断标志位
//  891     DMA0->INT |= 0x1u<<25;
//  892   }
//  893   else
//  894   {}
//  895   
//  896 #if (UCOS_II > 0u)
//  897   OSIntExit();          //告知系统此时即将离开中断服务子函数
//  898 #endif
//  899 }
//  900 //DMA10 DMA26共用此Handler
//  901 void DMA10_IRQHandler(void)
//  902 {
//  903 #if (UCOS_II > 0u)
//  904   OS_CPU_SR  cpu_sr = 0u;
//  905   OS_ENTER_CRITICAL(); //告知系统此时已经进入了中断服务子函数
//  906   OSIntEnter();
//  907   OS_EXIT_CRITICAL();
//  908 #endif  
//  909   
//  910   if( DMA0->INT & 0x1u<<10 )
//  911   {
//  912     //调用用户自定义中断服务
//  913     DMA_ISR[10]();
//  914     //清除中断标志位
//  915     DMA0->INT |= 0x1u<<10;
//  916   }
//  917   else if( DMA0->INT & 0x1u<<26 )
//  918   {
//  919     //调用用户自定义中断服务
//  920     DMA_ISR[26]();
//  921     //清除中断标志位
//  922     DMA0->INT |= 0x1u<<26;
//  923   }
//  924   else
//  925   {}
//  926   
//  927 #if (UCOS_II > 0u)
//  928   OSIntExit();          //告知系统此时即将离开中断服务子函数
//  929 #endif
//  930 }
//  931 //DMA11 DMA27共用此Handler
//  932 void DMA11_IRQHandler(void)
//  933 {
//  934 #if (UCOS_II > 0u)
//  935   OS_CPU_SR  cpu_sr = 0u;
//  936   OS_ENTER_CRITICAL(); //告知系统此时已经进入了中断服务子函数
//  937   OSIntEnter();
//  938   OS_EXIT_CRITICAL();
//  939 #endif  
//  940   
//  941   if( DMA0->INT & 0x1u<<11 )
//  942   {
//  943     //调用用户自定义中断服务
//  944     DMA_ISR[11]();
//  945     //清除中断标志位
//  946     DMA0->INT |= 0x1u<<11;
//  947   }
//  948   else if( DMA0->INT & 0x1u<<27 )
//  949   {
//  950     //调用用户自定义中断服务
//  951     DMA_ISR[27]();
//  952     //清除中断标志位
//  953     DMA0->INT |= 0x1u<<27;
//  954   }
//  955   else
//  956   {}  
//  957 #if (UCOS_II > 0u)
//  958   OSIntExit();          //告知系统此时即将离开中断服务子函数
//  959 #endif
//  960 }
//  961 //DMA12 DMA28共用此Handler
//  962 void DMA12_IRQHandler(void)
//  963 {
//  964 #if (UCOS_II > 0u)
//  965   OS_CPU_SR  cpu_sr = 0u;
//  966   OS_ENTER_CRITICAL(); //告知系统此时已经进入了中断服务子函数
//  967   OSIntEnter();
//  968   OS_EXIT_CRITICAL();
//  969 #endif  
//  970   
//  971   if( DMA0->INT & 0x1u<<12 )
//  972   {
//  973     //调用用户自定义中断服务
//  974     DMA_ISR[12]();
//  975     //清除中断标志位
//  976     DMA0->INT |= 0x1u<<12;
//  977   }
//  978   else if( DMA0->INT & 0x1u<<28 )
//  979   {
//  980     //调用用户自定义中断服务
//  981     DMA_ISR[28]();
//  982     //清除中断标志位
//  983     DMA0->INT |= 0x1u<<28;
//  984   }
//  985   else
//  986   {}  
//  987   
//  988 #if (UCOS_II > 0u)
//  989   OSIntExit();          //告知系统此时即将离开中断服务子函数
//  990 #endif
//  991 }
//  992 //DMA13 DMA29共用此Handler
//  993 void DMA13_IRQHandler(void)
//  994 {
//  995 #if (UCOS_II > 0u)
//  996   OS_CPU_SR  cpu_sr = 0u;
//  997   OS_ENTER_CRITICAL(); //告知系统此时已经进入了中断服务子函数
//  998   OSIntEnter();
//  999   OS_EXIT_CRITICAL();
// 1000 #endif  
// 1001   
// 1002   if( DMA0->INT & 0x1u<<13 )
// 1003   {
// 1004     //调用用户自定义中断服务
// 1005     DMA_ISR[13]();
// 1006     //清除中断标志位
// 1007     DMA0->INT |= 0x1u<<13;
// 1008   }
// 1009   else if( DMA0->INT & 0x1u<<29 )
// 1010   {
// 1011     //调用用户自定义中断服务
// 1012     DMA_ISR[29]();
// 1013     //清除中断标志位
// 1014     DMA0->INT |= 0x1u<<29;
// 1015   }
// 1016   else
// 1017   {}   
// 1018   
// 1019 #if (UCOS_II > 0u)
// 1020   OSIntExit();          //告知系统此时即将离开中断服务子函数
// 1021 #endif
// 1022 }
// 1023 //DMA14 DMA30共用此Handler
// 1024 void DMA14_IRQHandler(void)
// 1025 {
// 1026 #if (UCOS_II > 0u)
// 1027   OS_CPU_SR  cpu_sr = 0u;
// 1028   OS_ENTER_CRITICAL(); //告知系统此时已经进入了中断服务子函数
// 1029   OSIntEnter();
// 1030   OS_EXIT_CRITICAL();
// 1031 #endif  
// 1032   
// 1033   if( DMA0->INT & 0x1u<<14 )
// 1034   {
// 1035     //调用用户自定义中断服务
// 1036     DMA_ISR[14]();
// 1037     //清除中断标志位
// 1038     DMA0->INT |= 0x1u<<14;
// 1039   }
// 1040   else if( DMA0->INT & 0x1u<<30 )
// 1041   {
// 1042     //调用用户自定义中断服务
// 1043     DMA_ISR[30]();
// 1044     //清除中断标志位
// 1045     DMA0->INT |= 0x1u<<30;
// 1046   }
// 1047   else
// 1048   {}   
// 1049   
// 1050 #if (UCOS_II > 0u)
// 1051   OSIntExit();          //告知系统此时即将离开中断服务子函数
// 1052 #endif
// 1053 }
// 1054 
// 1055 //DMA15 DMA31共用此Handler
// 1056 void DMA15_IRQHandler(void)
// 1057 {
// 1058 #if (UCOS_II > 0u)
// 1059   OS_CPU_SR  cpu_sr = 0u;
// 1060   OS_ENTER_CRITICAL(); //告知系统此时已经进入了中断服务子函数
// 1061   OSIntEnter();
// 1062   OS_EXIT_CRITICAL();
// 1063 #endif  
// 1064   
// 1065   if( DMA0->INT & 0x1u<<15 )
// 1066   {
// 1067     //调用用户自定义中断服务
// 1068     DMA_ISR[15]();
// 1069     //清除中断标志位
// 1070     DMA0->INT |= 0x1u<<15;
// 1071   }
// 1072   else if( DMA0->INT & 0x1u<<31 )
// 1073   {
// 1074     //调用用户自定义中断服务
// 1075     DMA_ISR[31]();
// 1076     //清除中断标志位
// 1077     DMA0->INT |= 0x1u<<31;
// 1078   }
// 1079   else
// 1080   {}
// 1081   
// 1082 #if (UCOS_II > 0u)
// 1083   OSIntExit();          //告知系统此时即将离开中断服务子函数
// 1084 #endif
// 1085 }
// 1086 #endif
// 1087 
// 1088 
// 1089 
// 1090 
// 1091 
// 1092 
// 1093 
// 1094 
// 1095 
// 1096 
// 1097 
// 1098 
// 1099 
// 1100 
// 1101 
// 
//    64 bytes in section .bss
// 1 160 bytes in section .text
// 
// 1 160 bytes of CODE memory
//    64 bytes of DATA memory
//
//Errors: none
//Warnings: none
