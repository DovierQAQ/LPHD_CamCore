#ifndef __CALC_H
#define __CALC_H

/****Includes*************************************************/

#include "common.h"
#include "camera.h"
#include "stdlib.h"
#include "twinCore.h"
#include "mpu6050.h"
#include "math.h"
#include "led.h"

/****Definitions**********************************************/

typedef struct
{
	int x, y;
} point;

typedef struct
{
	int x, y, z;
} points;

typedef struct
{
	void (*Calc)(void);
	void (*My3d)(void);

	int cnt_effect;
	int flag_out, flag_start, flag_zebra;
	uint8 myScene[128][8];
	int angX, angY, angZ;
	int f2fMode, findEnd;
	int cnt_out, cnt_clear;
	int reffer[3];
} CALC_CLASS;

/****Variables************************************************/

extern CALC_CLASS calc;

/****Functions************************************************/

/*************************************************************/

#endif /* __CALC_H */
