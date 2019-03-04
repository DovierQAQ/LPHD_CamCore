#ifndef __UI_H
#define __UI_H

/****Includes*************************************************/

#include "common.h"
#include "UIStrings.h"
#include "oled.h"

/****Definitions**********************************************/

#define KEY_NONE	0
#define KEY_UP		1
#define KEY_DOWN	2
#define KEY_RIGHT	3
#define KEY_LEFT	4
#define KEY_MAKE	5
#define KEY_BACK	6

typedef struct
{
	void (*SetLevel)(int level);
	void (*SetCursor)(int level, int num);
	void (*Update)(void);
	void (*ProcessKey)(void);

	int keyNow, keyLst;
	int level;
	int cursor[10];
} UI_CLASS;

/****Variables************************************************/

extern UI_CLASS ui;

/****Functions************************************************/

/*************************************************************/

#endif /* __UI_H */
