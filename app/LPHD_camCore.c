#include "common.h"
#include "camera.h"
#include "led.h"
#include "oled.h"
#include "task.h"
#include "uart.h"
#include "twinCore.h"
#include "mpu6050.h"
//#include "nrf.h"
#include "calc.h"
#include "UI.h"
#include "ledArray.h"

/****Definitions**********************************************/

#define TASK_ENABLE 0

#define CARNUM		2

#if (CARNUM == 2)
#define GRYOFFSET_X	0
#define GRYOFFSET_Y	0
#define GRYOFFSET_Z	0
#elif (CARNUM == 1)
#define GRYOFFSET_X	0
#define GRYOFFSET_Y	0
#define GRYOFFSET_Z	0
#endif /* CARNUM */

/****Function list********************************************/

void mpu_PIT2_Init(void);
void showMyWords(void);
int testCar(void);

/****Variables************************************************/

int carNum = 0;
int cnt_led = 0;

/****main*****************************************************/

void main (void)
{
	DisableInterrupts;

	carNum = testCar();
	task.Init();
	uart.Init();
	oled.Init();
	led.Init(LED4); // 只给我一个（还是核心板上面的），TAT
	ledArray.Init(); // 来了！
	//ledArray.Show(0xAAAA);
	twinCore.Init();
	mpu6050.Init();
	mpu6050.SetOffset(0, 0, 0);
	//nrf.Init();
	mpu_PIT2_Init();

	showMyWords();
	oled.DispACat(70, 0);

	int status = camera.Init();
	if (status)
	{
		switch (status)
		{
		case 1: oled.Printf(20, 2, "Error: Camera 1."); break;
		case 2: oled.Printf(20, 2, "Error: Camera 2."); break;
		case 3: oled.Printf(20, 2, "Error: Camera 3."); break;
		case 4: oled.Printf(20, 2, "Error: Camera 4."); break;
		}
	}
	else
		oled.DispAImg();

	EnableInterrupts;

	while(1)
	{
		if (camera.isReady)
		{
			//task.Start();

			camera.Extract();
			calc.Calc();

			if (calc.flag_out && calc.cnt_effect)
			{
				twinCore.Set(0, calc.flag_out);
				twinCore.Send(); // 用以提高及时性
			}
//			if (calc.flag_out)
//				led.Set(LED4, ON);
//			else
//				led.Set(LED4, OFF);

//			if (twinCore.data[1] == 1100)
//			{
				oled.DispImgCalc();
//				if (calc.flag_out)
//					oled.Printf(30, 1, "I found it!");
//			}
//			else if (twinCore.data[1] == 1101)
//			{
//				uart.SendImg();
//				oled.DispImgCalc();
//				if (calc.flag_out)
//					oled.Printf(30, 1, "I found it!");
//			}

			//task.Stop();

//			static int flag_frame = 0;
//			if (!flag_frame)
//			{
//				flag_frame = 1;
//				task.Start();
//			}
//			else
//			{
//				flag_frame = 0;
//				task.Stop();
//			}
		}

		if (task.taskNum[0] == TASK_ENABLE)
		{
			task.taskNum[0] = 10;

			if (calc.cnt_effect)
				twinCore.Set(0, calc.flag_out);
			twinCore.Set(1, (int16)mpu6050.pose.angleY);
			twinCore.Set(2, (int16)mpu6050.pose.angleZ);
			twinCore.Set(3, (int16)mpu6050.gry.y);
			twinCore.Set(4, (int16)calc.cnt_out);
			twinCore.Set(5, (int16)task.testTime);
			twinCore.Set(6, (int16)calc.reffer[0]);
			twinCore.Set(7, (int16)mpu6050.acc.z);
			twinCore.Set(8, (int16)calc.flag_zebra);

			twinCore.Send();
		}

		if (task.taskNum[1] == TASK_ENABLE)
		{
			task.taskNum[1] = 10;

//			uart.Set(0, (int16)task.testTime);
//			uart.SendToScope();

//			if (twinCore.data[1] == 1111)
//			{
//				calc.My3d();
//				oled.DispMyScene();
//			}

			static int state_led = 0;
			static int state_dir = 0;

			cnt_led++;

			if (cnt_led < 50)
			{
				state_led <<= 1;
				if (!state_dir) state_led |= 1;
				else state_led &= ~(1);

				state_led &= 0xFFFF;
				if (state_led == 0xFFFF) state_dir = 1;
				else if (state_led == 0x0000) state_dir = 0;

				ledArray.Show(state_led);
			}

			if (twinCore.data[1] == 1110)
				ui.Update();

			//led.Set(LED4, TOGGLE);
		}
	}
}

void pit2_isr(void) // 10ms
{
	mpu6050.GetGry(MPU6050_X | MPU6050_Y | MPU6050_Z);
//	mpu6050.GetAcc(MPU6050_Z);

//	if (!mpu6050.pose.flagX) mpu6050.pose.angleX = 0;
//	if (!mpu6050.pose.flagY) mpu6050.pose.angleY = 0;
//	if (!mpu6050.pose.flagZ) mpu6050.pose.angleZ = 0;
//
//	twinCore.Set(1, (int16)mpu6050.pose.angleY);
//	twinCore.Set(2, (int16)mpu6050.pose.angleZ);
//	twinCore.Set(3, (int16)mpu6050.gry.y);
//	twinCore.Set(4, (int16)calc.cnt_out);
//	twinCore.Set(5, (int16)task.testTime);

//	if (twinCore.data[1] == 1111)
//	{
//		calc.angX += mpu6050.gry.x;
//		calc.angY += mpu6050.gry.y;
//		calc.angZ += mpu6050.gry.z;
//	}
}

void mpu_PIT2_Init(void)
{
	static PIT_InitTypeDef PIT_InitStructure;
	static NVIC_InitTypeDef NVIC_InitStructure;

	NVIC_InitStructure.NVIC_IRQChannel = PIT2_IRQn;
	NVIC_InitStructure.NVIC_IRQChannelGroupPriority = NVIC_PriorityGroup_2;
	NVIC_InitStructure.NVIC_IRQChannelPreemptionPriority = 1;
	NVIC_InitStructure.NVIC_IRQChannelSubPriority = 0;

	LPLD_NVIC_Init(NVIC_InitStructure);

	PIT_InitStructure.PIT_Pitx = PIT2;
	PIT_InitStructure.PIT_PeriodMs = 10;
	PIT_InitStructure.PIT_Isr = pit2_isr;

	LPLD_PIT_Init(PIT_InitStructure);
	LPLD_PIT_EnableIrq(PIT_InitStructure);
}

void showMyWords(void)
{
	int i;
	oled.PutCH(0, 0, 0);
	oled.Putchar(16, 1, ',');
	oled.PutCH(22, 0, 1);
	oled.PutCH(38, 0, 2);

	for (i = 0; i < 3; i++)
		oled.PutCH(i * 16, 2, 3 + i);

	for (i = 0; i < 6; i++)
		oled.PutCH(i * 16, 4, 6 + i);

	for (i = 0; i < 5; i++)
		oled.PutCH(i * 16, 6, 12 + i);
}

int testCar(void)
{
	static GPIO_InitTypeDef GPIO_InitStructure;

	GPIO_InitStructure.GPIO_PTx = PTD;
	GPIO_InitStructure.GPIO_Pins = GPIO_Pin15;
	GPIO_InitStructure.GPIO_PinControl = INPUT_PULL_DIS;
	GPIO_InitStructure.GPIO_Dir = DIR_INPUT;
	LPLD_GPIO_Init(GPIO_InitStructure);

	if (PTD15_I) return 1;
	else return 2;
}
