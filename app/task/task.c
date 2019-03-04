#include "task.h"

/****Discription**********************************************/

/*
	0.PIT定时器控制时序
	1.需先调用task.Init()函数再使用本驱动
	2.task.Start()函数可以开始计时，task.Stop()函数结束计时
		task.timeTest变量存储了计时结果，用来测试某段程序跑的时间
	3.task.Delay(int)函数可以用来毫秒定时
	4.默认使用PIT0和PIT3，可以修改

	@Time	2017-04-24
	@Author	郭帆
	@Usefor	任务
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
