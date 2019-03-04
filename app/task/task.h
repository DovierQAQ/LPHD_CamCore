#ifndef __TASK_H
#define __TASK_H

/****Includes*************************************************/

#include "common.h"
#include "ledArray.h"
#include "twinCore.h"

/****Definitions**********************************************/

typedef struct
{
	void (*Init)(void);
	void (*Delay)(int xms);
	void (*Start)(void);
	void (*Stop)(void);

	unsigned int taskNum[NumOfTask];
	float time, testTime;
} TASK_CLASS;

/****Variables************************************************/

extern TASK_CLASS task;

/****Function list********************************************/

/*************************************************************/

#endif /* __TASK_H */
