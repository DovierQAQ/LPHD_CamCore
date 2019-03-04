#include "task.h"

/****Discription**********************************************/

/*
	0.PIT��ʱ������ʱ��
	1.���ȵ���task.Init()������ʹ�ñ�����
	2.task.Start()�������Կ�ʼ��ʱ��task.Stop()����������ʱ
		task.timeTest�����洢�˼�ʱ�������������ĳ�γ����ܵ�ʱ��
	3.task.Delay(int)���������������붨ʱ
	4.Ĭ��ʹ��PIT0��PIT3�������޸�

	@Time	2017-04-24
	@Author	����
	@Usefor	����
*/

/****Variables************************************************/

int delayMs;

/****Function list********************************************/

void pit0_isr(void);
void TASK_PIT0_Init(void);
void TASK_PIT3_Start(void);
void TASK_PIT3_Stop(void);
void TASK_Delay(int xms);

/****Objects**************************************************/

TASK_CLASS task = {&TASK_PIT0_Init, &TASK_Delay, &TASK_PIT3_Start, &TASK_PIT3_Stop, {0}, 0};

/****Functions************************************************/

void TASK_PIT0_Init(void)
{
	static PIT_InitTypeDef PIT_InitStructure;
	static NVIC_InitTypeDef NVIC_InitStructure;

	NVIC_InitStructure.NVIC_IRQChannel = PIT0_IRQn;
	NVIC_InitStructure.NVIC_IRQChannelGroupPriority = NVIC_PriorityGroup_2;
	NVIC_InitStructure.NVIC_IRQChannelPreemptionPriority = 0;
	NVIC_InitStructure.NVIC_IRQChannelSubPriority = 1;

	LPLD_NVIC_Init(NVIC_InitStructure);

	PIT_InitStructure.PIT_Pitx = PIT0;
	PIT_InitStructure.PIT_PeriodMs = 1;
	PIT_InitStructure.PIT_Isr = pit0_isr;

	LPLD_PIT_Init(PIT_InitStructure);
	LPLD_PIT_EnableIrq(PIT_InitStructure);
}

void TASK_Delay(int xms)
{
	delayMs = xms;
	while (delayMs);
}

void TASK_PIT3_Start(void)
{
	LPLD_PIT_Time_Start(PIT3);
}

void TASK_PIT3_Stop(void)
{
	int time;

	time = LPLD_PIT_Time_Get(PIT3);
	LPLD_PIT_Close(PIT3);
	time *= (1000000.0 / g_bus_clock);

	task.testTime = time;
}

extern int cnt_led;
void pit0_isr(void)
{
	unsigned char i;

	task.time++;

	for (i = 0; i < NumOfTask; i++)
		if (task.taskNum[i])
			task.taskNum[i]--;

	if (delayMs > 0)
		delayMs--;

	if (cnt_led > 50)
	{
		if (!twinCore.data[8])
			ledArray.Go();
		else
			ledArray.Set(LED0_7 | LED8_15, LEDARRAY_OFF);
	}
}
