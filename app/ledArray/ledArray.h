#ifndef __LEDARRAY_H
#define __LEDARRAY_H

/****Includes*************************************************/

#include "common.h"

/****Definitions**********************************************/

#define LED(x)			(1 << x)
#define LED0_7			(0x00FF)
#define LED8_15			(0xFF00)
#define LEDARRAY_ON		1
#define LEDARRAY_OFF	0

typedef struct
{
	void (*Init)(void);
	void (*Set)(int ledNum, int state);
	void (*Show)(int state);
	void (*Go)(void);
} LEDARRAY_CLASS;

/****Variables************************************************/

extern LEDARRAY_CLASS ledArray;

/****Functions************************************************/

/*************************************************************/

#endif /* __LEDARRAY_H */
