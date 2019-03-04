#include "led.h"

/****Discription**********************************************/

/*
	0.led驱动程序
	1.需先调用oled.Init()函数再使用本驱动
	2.Init函数有参数，为需要初始化的LED号，可用|进行连接，如LED1 | LED2
	3.led.Set(int, int)函数可以设置led状态
		第一个参数为LED号，格式与初始化类似
		第二个参数为状态，从LED_ON和LED_OFF选择
	4.引脚定义在头文件里面修改

	@Time	2018-04-24
	@Author	郭帆
	@Usefor	led驱动
*/

/****Functions************************************************/

void LED_Init(int LEDNum)
{
	static GPIO_InitTypeDef GPIO_InitStructure;

	if (LEDNum & LED1)
	{
		GPIO_InitStructure.GPIO_PTx = LED1_PTx;
		GPIO_InitStructure.GPIO_Pins = LED1_Pinx;
		GPIO_InitStructure.GPIO_Dir = DIR_OUTPUT;
		GPIO_InitStructure.GPIO_Output = OUTPUT_H;
		LPLD_GPIO_Init(GPIO_InitStructure);
	}

	if (LEDNum & LED2)
	{
		GPIO_InitStructure.GPIO_PTx = LED2_PTx;
		GPIO_InitStructure.GPIO_Pins = LED2_Pinx;
		GPIO_InitStructure.GPIO_Dir = DIR_OUTPUT;
		GPIO_InitStructure.GPIO_Output = OUTPUT_H;
		LPLD_GPIO_Init(GPIO_InitStructure);
	}

	if (LEDNum & LED3)
	{
		GPIO_InitStructure.GPIO_PTx = LED3_PTx;
		GPIO_InitStructure.GPIO_Pins = LED3_Pinx;
		GPIO_InitStructure.GPIO_Dir = DIR_OUTPUT;
		GPIO_InitStructure.GPIO_Output = OUTPUT_H;
		LPLD_GPIO_Init(GPIO_InitStructure);
	}

	if (LEDNum & LED4)
	{
		GPIO_InitStructure.GPIO_PTx = LED4_PTx;
		GPIO_InitStructure.GPIO_Pins = LED4_Pinx;
		GPIO_InitStructure.GPIO_Dir = DIR_OUTPUT;
		GPIO_InitStructure.GPIO_Output = OUTPUT_H;
		LPLD_GPIO_Init(GPIO_InitStructure);
	}
}

void LED_Set(int LEDNum, int state)
{
	if (LEDNum & LED1)
	{
		switch (state)
		{
		case ON:
		case OFF:
			LED1_O = state;
			break;
		case TOGGLE:
			LED1_Toggle();
			break;
		}
	}

	if (LEDNum & LED2)
	{
		switch (state)
		{
		case ON:
		case OFF:
			LED2_O = state;
			break;
		case TOGGLE:
			LED2_Toggle();
			break;
		}
	}

	if (LEDNum & LED3)
	{
		switch (state)
		{
		case ON:
		case OFF:
			LED3_O = state;
			break;
		case TOGGLE:
			LED3_Toggle();
			break;
		}
	}

	if (LEDNum & LED4)
	{
		switch (state)
		{
		case ON:
		case OFF:
			LED4_O = state;
			break;
		case TOGGLE:
			LED4_Toggle();
			break;
		}
	}
}

/****Objects**************************************************/

LED_CLASS led = {&LED_Init, &LED_Set};
