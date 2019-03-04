#ifndef __LED_H
#define __LED_H

/****Includes*************************************************/

#include "common.h"

/****Definitions**********************************************/

#define LED1_PTx		PTD
#define LED1_Pinx		GPIO_Pin13

#define LED2_PTx		PTD
#define LED2_Pinx		GPIO_Pin14

#define LED3_PTx		PTD
#define LED3_Pinx		GPIO_Pin15

#define LED4_PTx		PTA
#define LED4_Pinx		GPIO_Pin19

#define LED1_O			PTD13_O
#define LED2_O			PTD14_O
#define LED3_O			PTD15_O
#define LED4_O			PTA19_O

//#define LED1_Toggle()	LPLD_GPIO_Toggle_b(PTD, 13)
//#define LED2_Toggle()	LPLD_GPIO_Toggle_b(PTD, 14)
//#define LED3_Toggle()	LPLD_GPIO_Toggle_b(PTD, 15)
//#define LED4_Toggle()	LPLD_GPIO_Toggle_b(PTA, 19)

#define LED1_Toggle()	PTD13_O = !PTD13_O
#define LED2_Toggle()	PTD14_O = !PTD14_O
#define LED3_Toggle()	PTD15_O = !PTD15_O
#define LED4_Toggle()	PTA19_O = !PTA19_O

#define LED1			1
#define LED2			(1 << 1)
#define LED3			(1 << 2)
#define LED4			(1 << 3)

#define OFF				1
#define ON				0
#define TOGGLE			2

typedef struct
{
	void (*Init)(int LEDNum);
	void (*Set)(int LEDNum, int state);
} LED_CLASS;

/****Variables************************************************/

extern LED_CLASS led;

/****Function list********************************************/

/*************************************************************/

#endif /* __LED_H*/
