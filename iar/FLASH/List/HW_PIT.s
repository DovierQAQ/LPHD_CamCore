///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.50.1.10123/W32 for ARM      01/Aug/2018  12:09:47
// Copyright 1999-2015 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\ShowD\Desktop\LPHD\LPHD_camCore\LPHD_camCore\lib\LPLD\HW\HW_PIT.c
//    Command line =  
//        C:\Users\ShowD\Desktop\LPHD\LPHD_camCore\LPHD_camCore\lib\LPLD\HW\HW_PIT.c
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
//        C:\Users\ShowD\Desktop\LPHD\LPHD_camCore\LPHD_camCore\iar\FLASH\List\HW_PIT.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN g_bus_clock

        PUBLIC LPLD_PIT_Close
        PUBLIC LPLD_PIT_Deinit
        PUBLIC LPLD_PIT_Delay
        PUBLIC LPLD_PIT_DisableIrq
        PUBLIC LPLD_PIT_EnableIrq
        PUBLIC LPLD_PIT_Init
        PUBLIC LPLD_PIT_Time_Get
        PUBLIC LPLD_PIT_Time_Start
        PUBLIC PIT0_IRQHandler
        PUBLIC PIT1_IRQHandler
        PUBLIC PIT2_IRQHandler
        PUBLIC PIT3_IRQHandler
        PUBLIC PIT_ISR

// C:\Users\ShowD\Desktop\LPHD\LPHD_camCore\LPHD_camCore\lib\LPLD\HW\HW_PIT.c
//    1 /**
//    2  * @file HW_PIT.c
//    3  * @version 3.0[By LPLD]
//    4  * @date 2013-06-18
//    5  * @brief PIT底层模块相关函数
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
        LDR.N    R2,??DataTable11  ;; 0xe000e100
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
        LDR.N    R2,??DataTable11_1  ;; 0xe000e180
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        LSRS     R0,R0,#+5
        STR      R1,[R2, R0, LSL #+2]
        BX       LR               ;; return
//   23 #include "HW_PIT.h"
//   24 
//   25 //用户自定义中断服务函数数组

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   26 PIT_ISR_CALLBACK PIT_ISR[4];
PIT_ISR:
        DS8 16
//   27 
//   28 /*
//   29  * LPLD_PIT_Init
//   30  * PIT通用初始化函数，选择PITx、配置中断周期、中断函数
//   31  * 
//   32  * 参数:
//   33  *    pit_init_structure--PIT初始化结构体，
//   34  *                        具体定义见PIT_InitTypeDef
//   35  *
//   36  * 输出:
//   37  *    0--配置错误
//   38  *    1--配置成功
//   39  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   40 uint8 LPLD_PIT_Init(PIT_InitTypeDef pit_init_structure)
//   41 { 
LPLD_PIT_Init:
        PUSH     {R0-R3}
        PUSH     {R4}
//   42   //计算定时加载值
//   43   uint32 ldval = pit_init_structure.PIT_PeriodUs*(g_bus_clock/1000000)
//   44                + pit_init_structure.PIT_PeriodMs*1000*(g_bus_clock/1000000)
//   45                + pit_init_structure.PIT_PeriodS*1000000*(g_bus_clock/1000000);
        LDR      R0,[SP, #+8]
        LDR.N    R1,??DataTable11_2
        LDR      R1,[R1, #+0]
        LDR.N    R2,??DataTable11_3  ;; 0xf4240
        UDIV     R1,R1,R2
        LDR      R2,[SP, #+12]
        LDR.N    R3,??DataTable11_2
        LDR      R3,[R3, #+0]
        LDR.N    R4,??DataTable11_3  ;; 0xf4240
        UDIV     R3,R3,R4
        MULS     R2,R3,R2
        MOV      R3,#+1000
        MULS     R2,R3,R2
        MLA      R0,R1,R0,R2
        LDR      R1,[SP, #+16]
        LDR.N    R2,??DataTable11_2
        LDR      R2,[R2, #+0]
        LDR.N    R3,??DataTable11_3  ;; 0xf4240
        UDIV     R2,R2,R3
        MULS     R1,R2,R1
        LDR.N    R2,??DataTable11_3  ;; 0xf4240
        MLA      R1,R2,R1,R0
//   46   PITx pitx = pit_init_structure.PIT_Pitx;
        LDRB     R0,[SP, #+4]
//   47   PIT_ISR_CALLBACK isr_func = pit_init_structure.PIT_Isr;
        LDR      R2,[SP, #+20]
//   48   
//   49   //参数检查
//   50   ASSERT( pitx <= PIT3);        //判断模块号
//   51   ASSERT( ldval > 0);           //判断时加载值                
//   52   
//   53   //开启定时模块时钟
//   54   SIM->SCGC6 |= SIM_SCGC6_PIT_MASK;
        LDR.N    R3,??DataTable11_4  ;; 0x4004803c
        LDR      R3,[R3, #+0]
        ORRS     R3,R3,#0x800000
        LDR.N    R4,??DataTable11_4  ;; 0x4004803c
        STR      R3,[R4, #+0]
//   55   
//   56   // 开启 PIT
//   57   PIT->MCR = 0x00;
        MOVS     R3,#+0
        LDR.N    R4,??DataTable11_5  ;; 0x40037000
        STR      R3,[R4, #+0]
//   58  
//   59   if(isr_func != NULL){
        MOVS     R3,R2
        CMP      R3,#+0
        BEQ.N    ??LPLD_PIT_Init_0
//   60     PIT_ISR[pitx] = isr_func;
        LDR.N    R3,??DataTable11_6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        STR      R2,[R3, R0, LSL #+2]
//   61     //使能中断
//   62     PIT->CHANNEL[pitx].TCTRL = PIT_TCTRL_TIE_MASK;
        MOVS     R2,#+2
        LDR.N    R3,??DataTable11_7  ;; 0x40037100
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADDS     R3,R3,R0, LSL #+4
        STR      R2,[R3, #+8]
//   63     //在NVIC中使能PIT中断
//   64     //enable_irq((IRQn_Type)(PIT0_IRQn + (IRQn_Type)pitx)); 
//   65   }
//   66   
//   67   //period = (period_ns/bus_period_ns)-1
//   68   PIT->CHANNEL[pitx].LDVAL = ldval-1;
??LPLD_PIT_Init_0:
        SUBS     R1,R1,#+1
        LDR.N    R2,??DataTable11_7  ;; 0x40037100
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSLS     R3,R0,#+4
        STR      R1,[R3, R2]
//   69   //使能中断
//   70   //PIT->CHANNEL[pitx].TCTRL = PIT_TCTRL_TIE_MASK;
//   71   //开始定时
//   72   PIT->CHANNEL[pitx].TCTRL |= PIT_TCTRL_TEN_MASK;
        LDR.N    R1,??DataTable11_7  ;; 0x40037100
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADDS     R1,R1,R0, LSL #+4
        LDR      R1,[R1, #+8]
        ORRS     R1,R1,#0x1
        LDR.N    R2,??DataTable11_7  ;; 0x40037100
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADDS     R0,R2,R0, LSL #+4
        STR      R1,[R0, #+8]
//   73   
//   74   return 1;
        MOVS     R0,#+1
        POP      {R4}
        ADD      SP,SP,#+16
        BX       LR               ;; return
//   75 }
//   76 
//   77 /*
//   78  * LPLD_PIT_Deinit
//   79  * PIT反初始化函数，关闭选择的PITx
//   80  * 
//   81  * 参数:
//   82  *    pit_init_structure--PIT初始化结构体，
//   83  *                        具体定义见PIT_InitTypeDef
//   84  *
//   85  * 输出:
//   86  *    无
//   87  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   88 void LPLD_PIT_Deinit(PIT_InitTypeDef pit_init_structure)
//   89 { 
LPLD_PIT_Deinit:
        PUSH     {R0-R3}
        PUSH     {R4,LR}
//   90   PITx pitx = pit_init_structure.PIT_Pitx;
        LDRB     R4,[SP, #+8]
//   91   
//   92   //参数检查
//   93   ASSERT( pitx <= PIT3);        //判断模块号              
//   94 
//   95   disable_irq((IRQn_Type)(PIT0_IRQn + (IRQn_Type)pitx)); 
        ADDS     R0,R4,#+68
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        BL       NVIC_DisableIRQ
//   96 
//   97   //禁用中断\停止定时
//   98   PIT->CHANNEL[pitx].TCTRL = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable11_7  ;; 0x40037100
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        ADDS     R1,R1,R4, LSL #+4
        STR      R0,[R1, #+8]
//   99 }
        POP      {R4}
        LDR      PC,[SP], #+20    ;; return
//  100 
//  101 /*
//  102  * LPLD_PIT_EnableIrq
//  103  * 使能PITx中断
//  104  * 
//  105  * 参数:
//  106  *    pit_init_structure--PIT初始化结构体，
//  107  *                        具体定义见PIT_InitTypeDef
//  108  *
//  109  * 输出:
//  110  *    无
//  111  *
//  112  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  113 void LPLD_PIT_EnableIrq(PIT_InitTypeDef pit_init_structure)
//  114 {
LPLD_PIT_EnableIrq:
        PUSH     {R0-R3}
        PUSH     {R7,LR}
//  115   PITx pitx = pit_init_structure.PIT_Pitx;
        LDRB     R0,[SP, #+8]
//  116   
//  117   //参数检查
//  118   ASSERT( pitx <= PIT3);                //判断PITx
//  119 
//  120   enable_irq((IRQn_Type)(PIT0_IRQn + (IRQn_Type)pitx)); 
        ADDS     R0,R0,#+68
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        BL       NVIC_EnableIRQ
//  121 }
        POP      {R0}
        LDR      PC,[SP], #+20    ;; return
//  122 
//  123 /*
//  124  * LPLD_PIT_DisableIrq
//  125  * 禁用PITx中断
//  126  * 
//  127  * 参数:
//  128  *    pit_init_structure--PIT初始化结构体，
//  129  *                        具体定义见PIT_InitTypeDef
//  130  *
//  131  * 输出:
//  132  *    无
//  133  *
//  134  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  135 void LPLD_PIT_DisableIrq(PIT_InitTypeDef pit_init_structure)
//  136 {
LPLD_PIT_DisableIrq:
        PUSH     {R0-R3}
        PUSH     {R7,LR}
//  137   PITx pitx = pit_init_structure.PIT_Pitx;
        LDRB     R0,[SP, #+8]
//  138   
//  139   //参数检查
//  140   ASSERT( pitx <= PIT3);                //判断PITx
//  141   
//  142   disable_irq((IRQn_Type)(PIT0_IRQn + (IRQn_Type)pitx));
        ADDS     R0,R0,#+68
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        BL       NVIC_DisableIRQ
//  143 }
        POP      {R0}
        LDR      PC,[SP], #+20    ;; return
//  144 
//  145 
//  146 /*
//  147  * PIT0--PIT3中断处理函数
//  148  * 与启动文件startup_K60.s中的中断向量表关联
//  149  * 用户无需修改，程序自动进入对应通道中断函数
//  150  */
//  151 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  152 void PIT0_IRQHandler(void)
//  153 {
PIT0_IRQHandler:
        PUSH     {R7,LR}
//  154 #if (UCOS_II > 0u)
//  155   OS_CPU_SR  cpu_sr = 0u;
//  156   OS_ENTER_CRITICAL(); //告知系统此时已经进入了中断服务子函数
//  157   OSIntEnter();
//  158   OS_EXIT_CRITICAL();
//  159 #endif
//  160   
//  161   //调用用户自定义中断服务
//  162   PIT_ISR[0]();  
        LDR.N    R0,??DataTable11_6
        LDR      R0,[R0, #+0]
        BLX      R0
//  163   //清除中断标志位
//  164   PIT->CHANNEL[0].TFLG |= PIT_TFLG_TIF_MASK;
        LDR.N    R0,??DataTable11_8  ;; 0x4003710c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.N    R1,??DataTable11_8  ;; 0x4003710c
        STR      R0,[R1, #+0]
//  165   
//  166 #if (UCOS_II > 0u)
//  167   OSIntExit();          //告知系统此时即将离开中断服务子函数
//  168 #endif
//  169 }
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  170 void PIT1_IRQHandler(void)
//  171 {
PIT1_IRQHandler:
        PUSH     {R7,LR}
//  172 #if (UCOS_II > 0u)
//  173   OS_CPU_SR  cpu_sr = 0u;
//  174   OS_ENTER_CRITICAL(); //告知系统此时已经进入了中断服务子函数
//  175   OSIntEnter();
//  176   OS_EXIT_CRITICAL();
//  177 #endif
//  178   
//  179   //调用用户自定义中断服务
//  180   PIT_ISR[1]();  
        LDR.N    R0,??DataTable11_6
        LDR      R0,[R0, #+4]
        BLX      R0
//  181   //清除中断标志位
//  182   PIT->CHANNEL[1].TFLG |= PIT_TFLG_TIF_MASK;
        LDR.N    R0,??DataTable11_9  ;; 0x4003711c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.N    R1,??DataTable11_9  ;; 0x4003711c
        STR      R0,[R1, #+0]
//  183   
//  184 #if (UCOS_II > 0u)
//  185   OSIntExit();          //告知系统此时即将离开中断服务子函数
//  186 #endif
//  187 }
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  188 void PIT2_IRQHandler(void)
//  189 {
PIT2_IRQHandler:
        PUSH     {R7,LR}
//  190 #if (UCOS_II > 0u)
//  191   OS_CPU_SR  cpu_sr = 0u;
//  192   OS_ENTER_CRITICAL(); //告知系统此时已经进入了中断服务子函数
//  193   OSIntEnter();
//  194   OS_EXIT_CRITICAL();
//  195 #endif
//  196   
//  197   //调用用户自定义中断服务
//  198   PIT_ISR[2]();  
        LDR.N    R0,??DataTable11_6
        LDR      R0,[R0, #+8]
        BLX      R0
//  199   //清除中断标志位
//  200   PIT->CHANNEL[2].TFLG |= PIT_TFLG_TIF_MASK;
        LDR.N    R0,??DataTable11_10  ;; 0x4003712c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.N    R1,??DataTable11_10  ;; 0x4003712c
        STR      R0,[R1, #+0]
//  201   
//  202 #if (UCOS_II > 0u)
//  203   OSIntExit();          //告知系统此时即将离开中断服务子函数
//  204 #endif
//  205 }
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  206 void PIT3_IRQHandler(void)
//  207 {
PIT3_IRQHandler:
        PUSH     {R7,LR}
//  208 #if (UCOS_II > 0u)
//  209   OS_CPU_SR  cpu_sr = 0u;
//  210   OS_ENTER_CRITICAL(); //告知系统此时已经进入了中断服务子函数
//  211   OSIntEnter();
//  212   OS_EXIT_CRITICAL();
//  213 #endif
//  214   
//  215   //调用用户自定义中断服务
//  216   PIT_ISR[3]();  
        LDR.N    R0,??DataTable11_6
        LDR      R0,[R0, #+12]
        BLX      R0
//  217   //清除中断标志位
//  218   PIT->CHANNEL[3].TFLG |= PIT_TFLG_TIF_MASK;
        LDR.N    R0,??DataTable11_11  ;; 0x4003713c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.N    R1,??DataTable11_11  ;; 0x4003713c
        STR      R0,[R1, #+0]
//  219   
//  220 #if (UCOS_II > 0u)
//  221   OSIntExit();          //告知系统此时即将离开中断服务子函数
//  222 #endif
//  223 }
        POP      {R0,PC}          ;; return
//  224 /*********************************以下移植山外**********************************/
//  225 /*!
//  226  *  @brief      PITn延时
//  227  *  @param      PITn        模块号（PIT0~PIT3）
//  228  *  @param      cnt         延时时间(单位为bus时钟周期)
//  229  *  @since      v5.0
//  230  *  Sample usage:
//  231                     pit_delay(PIT0, 1000);                         //延时 1000 个bus时钟
//  232  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  233 void LPLD_PIT_Delay(PITx pitn, uint32 cnt)
//  234 {
//  235     //PIT 用的是 Bus Clock 总线频率
//  236     //溢出计数 = 总线频率 * 时间
//  237 
//  238     ASSERT( cnt > 0 );              //用断言检测 时间必须不能为 0
//  239 
//  240     SIM->SCGC6       |= SIM_SCGC6_PIT_MASK;                          //使能PIT时钟
LPLD_PIT_Delay:
        LDR.N    R2,??DataTable11_4  ;; 0x4004803c
        LDR      R2,[R2, #+0]
        ORRS     R2,R2,#0x800000
        LDR.N    R3,??DataTable11_4  ;; 0x4004803c
        STR      R2,[R3, #+0]
//  241 
//  242     PIT->MCR         &= ~(PIT_MCR_MDIS_MASK | PIT_MCR_FRZ_MASK );    //使能PIT定时器时钟 ，调试模式下继续运行
        LDR.N    R2,??DataTable11_5  ;; 0x40037000
        LDR      R2,[R2, #+0]
        LSRS     R2,R2,#+2
        LSLS     R2,R2,#+2
        LDR.N    R3,??DataTable11_5  ;; 0x40037000
        STR      R2,[R3, #+0]
//  243 
//  244     PIT->CHANNEL[pitn].TCTRL &= ~( PIT_TCTRL_TEN_MASK );                     //禁用PIT ，以便设置加载值生效
        LDR.N    R2,??DataTable11_7  ;; 0x40037100
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADDS     R2,R2,R0, LSL #+4
        LDR      R2,[R2, #+8]
        LSRS     R2,R2,#+1
        LSLS     R2,R2,#+1
        LDR.N    R3,??DataTable11_7  ;; 0x40037100
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADDS     R3,R3,R0, LSL #+4
        STR      R2,[R3, #+8]
//  245 
//  246     PIT->CHANNEL[pitn].LDVAL  = cnt - 1;                                     //设置溢出中断时间
        SUBS     R1,R1,#+1
        LDR.N    R2,??DataTable11_7  ;; 0x40037100
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSLS     R3,R0,#+4
        STR      R1,[R3, R2]
//  247 
//  248     PIT_Flag_Clear(pitn);                                           //清中断标志位
        LDR.N    R1,??DataTable11_7  ;; 0x40037100
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADDS     R1,R1,R0, LSL #+4
        LDR      R1,[R1, #+12]
        ORRS     R1,R1,#0x1
        LDR.N    R2,??DataTable11_7  ;; 0x40037100
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADDS     R2,R2,R0, LSL #+4
        STR      R1,[R2, #+12]
//  249 
//  250     PIT->CHANNEL[pitn].TCTRL &= ~ PIT_TCTRL_TEN_MASK;                        //禁止PITn定时器（用于清空计数值）
        LDR.N    R1,??DataTable11_7  ;; 0x40037100
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADDS     R1,R1,R0, LSL #+4
        LDR      R1,[R1, #+8]
        LSRS     R1,R1,#+1
        LSLS     R1,R1,#+1
        LDR.N    R2,??DataTable11_7  ;; 0x40037100
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADDS     R2,R2,R0, LSL #+4
        STR      R1,[R2, #+8]
//  251     PIT->CHANNEL[pitn].TCTRL  = ( 0
//  252                          | PIT_TCTRL_TEN_MASK                        //使能 PITn定时器
//  253                          //| PIT_TCTRL_TIE_MASK                      //开PITn中断
//  254                        );
        MOVS     R1,#+1
        LDR.N    R2,??DataTable11_7  ;; 0x40037100
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADDS     R2,R2,R0, LSL #+4
        STR      R1,[R2, #+8]
//  255 
//  256     while( !(PIT->CHANNEL[pitn].TFLG& PIT_TFLG_TIF_MASK));
??LPLD_PIT_Delay_0:
        LDR.N    R1,??DataTable11_7  ;; 0x40037100
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADDS     R1,R1,R0, LSL #+4
        LDR      R1,[R1, #+12]
        LSLS     R1,R1,#+31
        BPL.N    ??LPLD_PIT_Delay_0
//  257 
//  258     PIT_Flag_Clear(pitn);                                           //清中断标志位
        LDR.N    R1,??DataTable11_7  ;; 0x40037100
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADDS     R1,R1,R0, LSL #+4
        LDR      R1,[R1, #+12]
        ORRS     R1,R1,#0x1
        LDR.N    R2,??DataTable11_7  ;; 0x40037100
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADDS     R0,R2,R0, LSL #+4
        STR      R1,[R0, #+12]
//  259 }
        BX       LR               ;; return
//  260 
//  261 /*!
//  262  *  @brief      PITn计时开始
//  263  *  @param      PITn        模块号（PIT0~PIT3）
//  264  *  @since      v5.0
//  265  *  Sample usage:
//  266                     pit_time_start(PIT0);                          //PIT0计时开始
//  267  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  268 void LPLD_PIT_Time_Start(PITx pitn)
//  269 {
//  270     //PIT 用的是 Bus Clock 总线频率
//  271     //溢出计数 = 总线频率 * 时间
//  272 
//  273     SIM->SCGC6       |= SIM_SCGC6_PIT_MASK;                          //使能PIT时钟
LPLD_PIT_Time_Start:
        LDR.N    R1,??DataTable11_4  ;; 0x4004803c
        LDR      R1,[R1, #+0]
        ORRS     R1,R1,#0x800000
        LDR.N    R2,??DataTable11_4  ;; 0x4004803c
        STR      R1,[R2, #+0]
//  274 
//  275     PIT->MCR         &= ~(PIT_MCR_MDIS_MASK | PIT_MCR_FRZ_MASK );    //使能PIT定时器时钟 ，调试模式下继续运行
        LDR.N    R1,??DataTable11_5  ;; 0x40037000
        LDR      R1,[R1, #+0]
        LSRS     R1,R1,#+2
        LSLS     R1,R1,#+2
        LDR.N    R2,??DataTable11_5  ;; 0x40037000
        STR      R1,[R2, #+0]
//  276 
//  277     PIT->CHANNEL[pitn].TCTRL &= ~( PIT_TCTRL_TEN_MASK );                     //禁用PIT ，以便设置加载值生效
        LDR.N    R1,??DataTable11_7  ;; 0x40037100
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADDS     R1,R1,R0, LSL #+4
        LDR      R1,[R1, #+8]
        LSRS     R1,R1,#+1
        LSLS     R1,R1,#+1
        LDR.N    R2,??DataTable11_7  ;; 0x40037100
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADDS     R2,R2,R0, LSL #+4
        STR      R1,[R2, #+8]
//  278 
//  279     PIT->CHANNEL[pitn].LDVAL  = ~0;                                          //设置溢出中断时间
        MOVS     R1,#-1
        LDR.N    R2,??DataTable11_7  ;; 0x40037100
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSLS     R3,R0,#+4
        STR      R1,[R3, R2]
//  280 
//  281     PIT_Flag_Clear(pitn);                                           //清中断标志位
        LDR.N    R1,??DataTable11_7  ;; 0x40037100
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADDS     R1,R1,R0, LSL #+4
        LDR      R1,[R1, #+12]
        ORRS     R1,R1,#0x1
        LDR.N    R2,??DataTable11_7  ;; 0x40037100
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADDS     R2,R2,R0, LSL #+4
        STR      R1,[R2, #+12]
//  282 
//  283      PIT->CHANNEL[pitn].TCTRL &= ~ PIT_TCTRL_TEN_MASK;                        //禁止PITn定时器（用于清空计数值）
        LDR.N    R1,??DataTable11_7  ;; 0x40037100
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADDS     R1,R1,R0, LSL #+4
        LDR      R1,[R1, #+8]
        LSRS     R1,R1,#+1
        LSLS     R1,R1,#+1
        LDR.N    R2,??DataTable11_7  ;; 0x40037100
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADDS     R2,R2,R0, LSL #+4
        STR      R1,[R2, #+8]
//  284      PIT->CHANNEL[pitn].TCTRL  = ( 0
//  285                          | PIT_TCTRL_TEN_MASK                        //使能 PITn定时器
//  286                          //| PIT_TCTRL_TIE_MASK                      //开PITn中断
//  287                        );
        MOVS     R1,#+1
        LDR.N    R2,??DataTable11_7  ;; 0x40037100
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADDS     R0,R2,R0, LSL #+4
        STR      R1,[R0, #+8]
//  288 }
        BX       LR               ;; return
//  289 
//  290 /*!
//  291  *  @brief      获取 PITn计时时间(超时时会关闭 定时器)
//  292  *  @param      PITn        模块号（PIT0~PIT3）
//  293  *  @since      v5.0
//  294  *  Sample usage:
//  295                         uint32 time = pit_time_get(PIT0);                         //获取 PITn计时时间
//  296                         if(time != ~0)       //没超时
//  297                         {
//  298                             printf("\n计时时间为：%d us",time*1000/bus_clk_khz);
//  299                         }
//  300  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  301 uint32 LPLD_PIT_Time_Get(PITx pitn)
//  302 {
LPLD_PIT_Time_Get:
        PUSH     {R4}
//  303     uint32 val;
//  304 
//  305     val = (~0) - PIT->CHANNEL[pitn].CVAL;
        MOVS     R1,#-1
        LDR.N    R2,??DataTable11_7  ;; 0x40037100
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADDS     R2,R2,R0, LSL #+4
        LDR      R2,[R2, #+4]
        SUBS     R1,R1,R2
//  306 
//  307     if(PIT->CHANNEL[pitn].TFLG& PIT_TFLG_TIF_MASK)                   //判断是否时间超时
        LDR.N    R2,??DataTable11_7  ;; 0x40037100
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADDS     R2,R2,R0, LSL #+4
        LDR      R2,[R2, #+12]
        LSLS     R2,R2,#+31
        BPL.N    ??LPLD_PIT_Time_Get_0
//  308     {
//  309         PIT_Flag_Clear(pitn);                                       //清中断标志位
        LDR.N    R2,??DataTable11_7  ;; 0x40037100
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADDS     R2,R2,R0, LSL #+4
        LDR      R2,[R2, #+12]
        ORRS     R2,R2,#0x1
        LDR.N    R3,??DataTable11_7  ;; 0x40037100
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADDS     R3,R3,R0, LSL #+4
        STR      R2,[R3, #+12]
//  310         PIT->CHANNEL[pitn].TCTRL &= ~ PIT_TCTRL_TEN_MASK;           //禁止PITn定时器（用于清空计数值）
        LDR.N    R2,??DataTable11_7  ;; 0x40037100
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADDS     R2,R2,R0, LSL #+4
        LDR      R2,[R2, #+8]
        LSRS     R2,R2,#+1
        LSLS     R2,R2,#+1
        LDR.N    R3,??DataTable11_7  ;; 0x40037100
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADDS     R3,R3,R0, LSL #+4
        STR      R2,[R3, #+8]
//  311         PIT->CHANNEL[pitn].LDVAL  = ~0;
        MOVS     R2,#-1
        LDR.N    R3,??DataTable11_7  ;; 0x40037100
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSLS     R4,R0,#+4
        STR      R2,[R4, R3]
//  312         PIT->CHANNEL[pitn].TCTRL  = ( 0
//  313                          | PIT_TCTRL_TEN_MASK                       //使能 PITn定时器
//  314                          //| PIT_TCTRL_TIE_MASK                     //开PITn中断
//  315                        );       
        MOVS     R2,#+1
        LDR.N    R3,??DataTable11_7  ;; 0x40037100
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADDS     R0,R3,R0, LSL #+4
        STR      R2,[R0, #+8]
//  316         //return ~0;
//  317     }
//  318 
//  319     if(val == (~0))
??LPLD_PIT_Time_Get_0:
        CMN      R1,#+1
        BNE.N    ??LPLD_PIT_Time_Get_1
//  320     {
//  321         val--;              //确保 不等于 ~0
        SUBS     R1,R1,#+1
//  322     }
//  323     return val;
??LPLD_PIT_Time_Get_1:
        MOVS     R0,R1
        POP      {R4}
        BX       LR               ;; return
//  324 }
//  325 
//  326 /*!
//  327  *  @brief      关闭 pit
//  328  *  @param      PITn        模块号（PIT0~PIT3）
//  329  *  @since      v5.0
//  330  *  Sample usage:
//  331                         pit_close(PIT0);                         //关闭PIT
//  332  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  333 void LPLD_PIT_Close(PITx pitn)
//  334 {
//  335     PIT_Flag_Clear(pitn);                                       //清中断标志位
LPLD_PIT_Close:
        LDR.N    R1,??DataTable11_7  ;; 0x40037100
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADDS     R1,R1,R0, LSL #+4
        LDR      R1,[R1, #+12]
        ORRS     R1,R1,#0x1
        LDR.N    R2,??DataTable11_7  ;; 0x40037100
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADDS     R2,R2,R0, LSL #+4
        STR      R1,[R2, #+12]
//  336      PIT->CHANNEL[pitn].TCTRL &= ~ PIT_TCTRL_TEN_MASK;                    //禁止PITn定时器（用于清空计数值）
        LDR.N    R1,??DataTable11_7  ;; 0x40037100
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADDS     R1,R1,R0, LSL #+4
        LDR      R1,[R1, #+8]
        LSRS     R1,R1,#+1
        LSLS     R1,R1,#+1
        LDR.N    R2,??DataTable11_7  ;; 0x40037100
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADDS     R0,R2,R0, LSL #+4
        STR      R1,[R0, #+8]
//  337 }
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11:
        DC32     0xe000e100

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_1:
        DC32     0xe000e180

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_2:
        DC32     g_bus_clock

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_3:
        DC32     0xf4240

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_4:
        DC32     0x4004803c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_5:
        DC32     0x40037000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_6:
        DC32     PIT_ISR

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_7:
        DC32     0x40037100

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_8:
        DC32     0x4003710c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_9:
        DC32     0x4003711c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_10:
        DC32     0x4003712c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_11:
        DC32     0x4003713c

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
// 856 bytes in section .text
// 
// 856 bytes of CODE memory
//  16 bytes of DATA memory
//
//Errors: none
//Warnings: none
