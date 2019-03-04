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
//    5  * @brief PIT�ײ�ģ����غ���
//    6  *
//    7  * ���Ľ���:�������޸�
//    8  *
//    9  * ��Ȩ����:�����������µ��Ӽ������޹�˾
//   10  * http://www.lpld.cn
//   11  * mail:support@lpld.cn
//   12  *
//   13  * @par
//   14  * ����������������[LPLD]������ά������������ʹ���߿���Դ���롣
//   15  * �����߿���������ʹ�û��Դ���롣�����μ�����ע��Ӧ���Ա�����
//   16  * ���ø��Ļ�ɾ��ԭ��Ȩ���������������ο����߿��Լ�ע���ΰ�Ȩ�����ߡ�
//   17  * ��Ӧ�����ش�Э��Ļ����ϣ�����Դ���롢���ó��۴��뱾��
//   18  * �������²���������ʹ�ñ��������������κ��¹ʡ��������λ���ز���Ӱ�졣
//   19  * ����������������͡�˵��������ľ���ԭ�����ܡ�ʵ�ַ�����
//   20  * ������������[LPLD]��Ȩ�������߲��ý�������������ҵ��Ʒ��
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
//   25 //�û��Զ����жϷ���������

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   26 PIT_ISR_CALLBACK PIT_ISR[4];
PIT_ISR:
        DS8 16
//   27 
//   28 /*
//   29  * LPLD_PIT_Init
//   30  * PITͨ�ó�ʼ��������ѡ��PITx�������ж����ڡ��жϺ���
//   31  * 
//   32  * ����:
//   33  *    pit_init_structure--PIT��ʼ���ṹ�壬
//   34  *                        ���嶨���PIT_InitTypeDef
//   35  *
//   36  * ���:
//   37  *    0--���ô���
//   38  *    1--���óɹ�
//   39  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   40 uint8 LPLD_PIT_Init(PIT_InitTypeDef pit_init_structure)
//   41 { 
LPLD_PIT_Init:
        PUSH     {R0-R3}
        PUSH     {R4}
//   42   //���㶨ʱ����ֵ
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
//   49   //�������
//   50   ASSERT( pitx <= PIT3);        //�ж�ģ���
//   51   ASSERT( ldval > 0);           //�ж�ʱ����ֵ                
//   52   
//   53   //������ʱģ��ʱ��
//   54   SIM->SCGC6 |= SIM_SCGC6_PIT_MASK;
        LDR.N    R3,??DataTable11_4  ;; 0x4004803c
        LDR      R3,[R3, #+0]
        ORRS     R3,R3,#0x800000
        LDR.N    R4,??DataTable11_4  ;; 0x4004803c
        STR      R3,[R4, #+0]
//   55   
//   56   // ���� PIT
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
//   61     //ʹ���ж�
//   62     PIT->CHANNEL[pitx].TCTRL = PIT_TCTRL_TIE_MASK;
        MOVS     R2,#+2
        LDR.N    R3,??DataTable11_7  ;; 0x40037100
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADDS     R3,R3,R0, LSL #+4
        STR      R2,[R3, #+8]
//   63     //��NVIC��ʹ��PIT�ж�
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
//   69   //ʹ���ж�
//   70   //PIT->CHANNEL[pitx].TCTRL = PIT_TCTRL_TIE_MASK;
//   71   //��ʼ��ʱ
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
//   79  * PIT����ʼ���������ر�ѡ���PITx
//   80  * 
//   81  * ����:
//   82  *    pit_init_structure--PIT��ʼ���ṹ�壬
//   83  *                        ���嶨���PIT_InitTypeDef
//   84  *
//   85  * ���:
//   86  *    ��
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
//   92   //�������
//   93   ASSERT( pitx <= PIT3);        //�ж�ģ���              
//   94 
//   95   disable_irq((IRQn_Type)(PIT0_IRQn + (IRQn_Type)pitx)); 
        ADDS     R0,R4,#+68
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        BL       NVIC_DisableIRQ
//   96 
//   97   //�����ж�\ֹͣ��ʱ
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
//  103  * ʹ��PITx�ж�
//  104  * 
//  105  * ����:
//  106  *    pit_init_structure--PIT��ʼ���ṹ�壬
//  107  *                        ���嶨���PIT_InitTypeDef
//  108  *
//  109  * ���:
//  110  *    ��
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
//  117   //�������
//  118   ASSERT( pitx <= PIT3);                //�ж�PITx
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
//  125  * ����PITx�ж�
//  126  * 
//  127  * ����:
//  128  *    pit_init_structure--PIT��ʼ���ṹ�壬
//  129  *                        ���嶨���PIT_InitTypeDef
//  130  *
//  131  * ���:
//  132  *    ��
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
//  139   //�������
//  140   ASSERT( pitx <= PIT3);                //�ж�PITx
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
//  147  * PIT0--PIT3�жϴ�����
//  148  * �������ļ�startup_K60.s�е��ж����������
//  149  * �û������޸ģ������Զ������Ӧͨ���жϺ���
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
//  156   OS_ENTER_CRITICAL(); //��֪ϵͳ��ʱ�Ѿ��������жϷ����Ӻ���
//  157   OSIntEnter();
//  158   OS_EXIT_CRITICAL();
//  159 #endif
//  160   
//  161   //�����û��Զ����жϷ���
//  162   PIT_ISR[0]();  
        LDR.N    R0,??DataTable11_6
        LDR      R0,[R0, #+0]
        BLX      R0
//  163   //����жϱ�־λ
//  164   PIT->CHANNEL[0].TFLG |= PIT_TFLG_TIF_MASK;
        LDR.N    R0,??DataTable11_8  ;; 0x4003710c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.N    R1,??DataTable11_8  ;; 0x4003710c
        STR      R0,[R1, #+0]
//  165   
//  166 #if (UCOS_II > 0u)
//  167   OSIntExit();          //��֪ϵͳ��ʱ�����뿪�жϷ����Ӻ���
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
//  174   OS_ENTER_CRITICAL(); //��֪ϵͳ��ʱ�Ѿ��������жϷ����Ӻ���
//  175   OSIntEnter();
//  176   OS_EXIT_CRITICAL();
//  177 #endif
//  178   
//  179   //�����û��Զ����жϷ���
//  180   PIT_ISR[1]();  
        LDR.N    R0,??DataTable11_6
        LDR      R0,[R0, #+4]
        BLX      R0
//  181   //����жϱ�־λ
//  182   PIT->CHANNEL[1].TFLG |= PIT_TFLG_TIF_MASK;
        LDR.N    R0,??DataTable11_9  ;; 0x4003711c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.N    R1,??DataTable11_9  ;; 0x4003711c
        STR      R0,[R1, #+0]
//  183   
//  184 #if (UCOS_II > 0u)
//  185   OSIntExit();          //��֪ϵͳ��ʱ�����뿪�жϷ����Ӻ���
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
//  192   OS_ENTER_CRITICAL(); //��֪ϵͳ��ʱ�Ѿ��������жϷ����Ӻ���
//  193   OSIntEnter();
//  194   OS_EXIT_CRITICAL();
//  195 #endif
//  196   
//  197   //�����û��Զ����жϷ���
//  198   PIT_ISR[2]();  
        LDR.N    R0,??DataTable11_6
        LDR      R0,[R0, #+8]
        BLX      R0
//  199   //����жϱ�־λ
//  200   PIT->CHANNEL[2].TFLG |= PIT_TFLG_TIF_MASK;
        LDR.N    R0,??DataTable11_10  ;; 0x4003712c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.N    R1,??DataTable11_10  ;; 0x4003712c
        STR      R0,[R1, #+0]
//  201   
//  202 #if (UCOS_II > 0u)
//  203   OSIntExit();          //��֪ϵͳ��ʱ�����뿪�жϷ����Ӻ���
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
//  210   OS_ENTER_CRITICAL(); //��֪ϵͳ��ʱ�Ѿ��������жϷ����Ӻ���
//  211   OSIntEnter();
//  212   OS_EXIT_CRITICAL();
//  213 #endif
//  214   
//  215   //�����û��Զ����жϷ���
//  216   PIT_ISR[3]();  
        LDR.N    R0,??DataTable11_6
        LDR      R0,[R0, #+12]
        BLX      R0
//  217   //����жϱ�־λ
//  218   PIT->CHANNEL[3].TFLG |= PIT_TFLG_TIF_MASK;
        LDR.N    R0,??DataTable11_11  ;; 0x4003713c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.N    R1,??DataTable11_11  ;; 0x4003713c
        STR      R0,[R1, #+0]
//  219   
//  220 #if (UCOS_II > 0u)
//  221   OSIntExit();          //��֪ϵͳ��ʱ�����뿪�жϷ����Ӻ���
//  222 #endif
//  223 }
        POP      {R0,PC}          ;; return
//  224 /*********************************������ֲɽ��**********************************/
//  225 /*!
//  226  *  @brief      PITn��ʱ
//  227  *  @param      PITn        ģ��ţ�PIT0~PIT3��
//  228  *  @param      cnt         ��ʱʱ��(��λΪbusʱ������)
//  229  *  @since      v5.0
//  230  *  Sample usage:
//  231                     pit_delay(PIT0, 1000);                         //��ʱ 1000 ��busʱ��
//  232  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  233 void LPLD_PIT_Delay(PITx pitn, uint32 cnt)
//  234 {
//  235     //PIT �õ��� Bus Clock ����Ƶ��
//  236     //������� = ����Ƶ�� * ʱ��
//  237 
//  238     ASSERT( cnt > 0 );              //�ö��Լ�� ʱ����벻��Ϊ 0
//  239 
//  240     SIM->SCGC6       |= SIM_SCGC6_PIT_MASK;                          //ʹ��PITʱ��
LPLD_PIT_Delay:
        LDR.N    R2,??DataTable11_4  ;; 0x4004803c
        LDR      R2,[R2, #+0]
        ORRS     R2,R2,#0x800000
        LDR.N    R3,??DataTable11_4  ;; 0x4004803c
        STR      R2,[R3, #+0]
//  241 
//  242     PIT->MCR         &= ~(PIT_MCR_MDIS_MASK | PIT_MCR_FRZ_MASK );    //ʹ��PIT��ʱ��ʱ�� ������ģʽ�¼�������
        LDR.N    R2,??DataTable11_5  ;; 0x40037000
        LDR      R2,[R2, #+0]
        LSRS     R2,R2,#+2
        LSLS     R2,R2,#+2
        LDR.N    R3,??DataTable11_5  ;; 0x40037000
        STR      R2,[R3, #+0]
//  243 
//  244     PIT->CHANNEL[pitn].TCTRL &= ~( PIT_TCTRL_TEN_MASK );                     //����PIT ���Ա����ü���ֵ��Ч
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
//  246     PIT->CHANNEL[pitn].LDVAL  = cnt - 1;                                     //��������ж�ʱ��
        SUBS     R1,R1,#+1
        LDR.N    R2,??DataTable11_7  ;; 0x40037100
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSLS     R3,R0,#+4
        STR      R1,[R3, R2]
//  247 
//  248     PIT_Flag_Clear(pitn);                                           //���жϱ�־λ
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
//  250     PIT->CHANNEL[pitn].TCTRL &= ~ PIT_TCTRL_TEN_MASK;                        //��ֹPITn��ʱ����������ռ���ֵ��
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
//  252                          | PIT_TCTRL_TEN_MASK                        //ʹ�� PITn��ʱ��
//  253                          //| PIT_TCTRL_TIE_MASK                      //��PITn�ж�
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
//  258     PIT_Flag_Clear(pitn);                                           //���жϱ�־λ
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
//  262  *  @brief      PITn��ʱ��ʼ
//  263  *  @param      PITn        ģ��ţ�PIT0~PIT3��
//  264  *  @since      v5.0
//  265  *  Sample usage:
//  266                     pit_time_start(PIT0);                          //PIT0��ʱ��ʼ
//  267  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  268 void LPLD_PIT_Time_Start(PITx pitn)
//  269 {
//  270     //PIT �õ��� Bus Clock ����Ƶ��
//  271     //������� = ����Ƶ�� * ʱ��
//  272 
//  273     SIM->SCGC6       |= SIM_SCGC6_PIT_MASK;                          //ʹ��PITʱ��
LPLD_PIT_Time_Start:
        LDR.N    R1,??DataTable11_4  ;; 0x4004803c
        LDR      R1,[R1, #+0]
        ORRS     R1,R1,#0x800000
        LDR.N    R2,??DataTable11_4  ;; 0x4004803c
        STR      R1,[R2, #+0]
//  274 
//  275     PIT->MCR         &= ~(PIT_MCR_MDIS_MASK | PIT_MCR_FRZ_MASK );    //ʹ��PIT��ʱ��ʱ�� ������ģʽ�¼�������
        LDR.N    R1,??DataTable11_5  ;; 0x40037000
        LDR      R1,[R1, #+0]
        LSRS     R1,R1,#+2
        LSLS     R1,R1,#+2
        LDR.N    R2,??DataTable11_5  ;; 0x40037000
        STR      R1,[R2, #+0]
//  276 
//  277     PIT->CHANNEL[pitn].TCTRL &= ~( PIT_TCTRL_TEN_MASK );                     //����PIT ���Ա����ü���ֵ��Ч
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
//  279     PIT->CHANNEL[pitn].LDVAL  = ~0;                                          //��������ж�ʱ��
        MOVS     R1,#-1
        LDR.N    R2,??DataTable11_7  ;; 0x40037100
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSLS     R3,R0,#+4
        STR      R1,[R3, R2]
//  280 
//  281     PIT_Flag_Clear(pitn);                                           //���жϱ�־λ
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
//  283      PIT->CHANNEL[pitn].TCTRL &= ~ PIT_TCTRL_TEN_MASK;                        //��ֹPITn��ʱ����������ռ���ֵ��
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
//  285                          | PIT_TCTRL_TEN_MASK                        //ʹ�� PITn��ʱ��
//  286                          //| PIT_TCTRL_TIE_MASK                      //��PITn�ж�
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
//  291  *  @brief      ��ȡ PITn��ʱʱ��(��ʱʱ��ر� ��ʱ��)
//  292  *  @param      PITn        ģ��ţ�PIT0~PIT3��
//  293  *  @since      v5.0
//  294  *  Sample usage:
//  295                         uint32 time = pit_time_get(PIT0);                         //��ȡ PITn��ʱʱ��
//  296                         if(time != ~0)       //û��ʱ
//  297                         {
//  298                             printf("\n��ʱʱ��Ϊ��%d us",time*1000/bus_clk_khz);
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
//  307     if(PIT->CHANNEL[pitn].TFLG& PIT_TFLG_TIF_MASK)                   //�ж��Ƿ�ʱ�䳬ʱ
        LDR.N    R2,??DataTable11_7  ;; 0x40037100
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADDS     R2,R2,R0, LSL #+4
        LDR      R2,[R2, #+12]
        LSLS     R2,R2,#+31
        BPL.N    ??LPLD_PIT_Time_Get_0
//  308     {
//  309         PIT_Flag_Clear(pitn);                                       //���жϱ�־λ
        LDR.N    R2,??DataTable11_7  ;; 0x40037100
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADDS     R2,R2,R0, LSL #+4
        LDR      R2,[R2, #+12]
        ORRS     R2,R2,#0x1
        LDR.N    R3,??DataTable11_7  ;; 0x40037100
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADDS     R3,R3,R0, LSL #+4
        STR      R2,[R3, #+12]
//  310         PIT->CHANNEL[pitn].TCTRL &= ~ PIT_TCTRL_TEN_MASK;           //��ֹPITn��ʱ����������ռ���ֵ��
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
//  313                          | PIT_TCTRL_TEN_MASK                       //ʹ�� PITn��ʱ��
//  314                          //| PIT_TCTRL_TIE_MASK                     //��PITn�ж�
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
//  321         val--;              //ȷ�� ������ ~0
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
//  327  *  @brief      �ر� pit
//  328  *  @param      PITn        ģ��ţ�PIT0~PIT3��
//  329  *  @since      v5.0
//  330  *  Sample usage:
//  331                         pit_close(PIT0);                         //�ر�PIT
//  332  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  333 void LPLD_PIT_Close(PITx pitn)
//  334 {
//  335     PIT_Flag_Clear(pitn);                                       //���жϱ�־λ
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
//  336      PIT->CHANNEL[pitn].TCTRL &= ~ PIT_TCTRL_TEN_MASK;                    //��ֹPITn��ʱ����������ռ���ֵ��
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
