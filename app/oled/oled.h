#ifndef __OLED_H
#define __OLED_H

/****Includes*************************************************/

#include "common.h"
#include "camera.h"
#include "calc.h"

/****GPIOs****************************************************/

#define OLED_GPIO_PTx 	PTE
#define OLED_GPIO_SCLK 	GPIO_Pin2
#define OLED_GPIO_SDA 	GPIO_Pin0
#define OLED_GPIO_RST 	GPIO_Pin1
#define OLED_GPIO_DC	GPIO_Pin3

#define OLED_SCLK(x) LPLD_GPIO_Output_b(OLED_GPIO_PTx, 2, x)
#define OLED_SDA(x)  LPLD_GPIO_Output_b(OLED_GPIO_PTx, 0, x)
#define OLED_RST(x)  LPLD_GPIO_Output_b(OLED_GPIO_PTx, 1, x)
#define OLED_DC(x)   LPLD_GPIO_Output_b(OLED_GPIO_PTx, 3, x)

/****Definitions**********************************************/

typedef struct
{
	void (*Init)();
	void (*Putchar)(unsigned char x, unsigned char y, unsigned char ch);
	void (*Printf)(unsigned char x, unsigned char y, unsigned char ch[]);
	void (*PrintCharValue)(unsigned char x, unsigned char y, unsigned char data);
	void (*PrintIntValue)(unsigned char x, unsigned char y, int data);
	void (*PrintUintValue)(unsigned char x, unsigned char y, unsigned int data);
	void (*PrintFloatValue)(unsigned char x, unsigned char y, float data);
	void (*DispImgCalc)(void);
	void (*DispImg)(void);
	void (*PutCH)(unsigned char x, unsigned char y, unsigned char num);
	void (*DispACat)(unsigned char x, unsigned char y);
	void (*DispAImg)(void);
	void (*DispMyScene)(void);
} OLED_CLASS;

/****Variables************************************************/

extern const unsigned char F6x8[][6];
extern OLED_CLASS oled;

/****Functions************************************************/

/*************************************************************/

#endif /* __OLED_H */
