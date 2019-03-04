#include "UI.h"

/****Discription**********************************************/

/*
	0.针对副单片机编写的UI，可能移植性不太好，不做过多的说明了

	@Time	2018-05-08
	@Author	郭帆
	@Usefor	UI
*/

/****Definitions**********************************************/

#define UI_CURSOR	('z' + 1)

#define UI_MENU		0

/****Functions************************************************/

void UI_SetLevel(int level);
void UI_SetCursor(int level, int num);
void UI_Update(void);
void UI_ProcessKey(void);

/****Variables************************************************/

static int flag_static = 0, flag_cursor = 0;

/****Objects**************************************************/

UI_CLASS ui =
{
	&UI_SetLevel,
	&UI_SetCursor,
	&UI_Update,

	0
};

/****Functions************************************************/

void UI_SetLevel(int level)
{
	ui.level = level;
	flag_static = 1;
}

void UI_SetCursor(int level, int num)
{
	ui.cursor[level] += num;

	if (ui.cursor[level] > 7)
		ui.cursor[level] = 0;
	else if (ui.cursor[level] < 0)
		ui.cursor[level] = 7;

	flag_cursor = 1;
}

void UI_Update(void)
{
	int i;

	if (flag_static)
	{
		for (i = 0; i < 8; i++)
			oled.Printf(i, 0, UI_Menu[i]);

		flag_static = 0;
	}

	if (flag_cursor)
		oled.Putchar(ui.cursor[ui.level], 6, UI_CURSOR);
}

void UI_ProcessKey(void)
{
	if (ui.keyNow)
	{
		switch (ui.keyNow)
		{
			/*-------------------------------------------------------*/
		case KEY_UP:
			ui.SetCursor(ui.level, -1);
			break;

			/*-------------------------------------------------------*/
		case KEY_DOWN:
			ui.SetCursor(ui.level, 1);
			break;

			/*-------------------------------------------------------*/
		case KEY_RIGHT:
			break;

			/*-------------------------------------------------------*/
		case KEY_LEFT:
			break;

			/*-------------------------------------------------------*/
		case KEY_MAKE:
			break;

			/*-------------------------------------------------------*/
		case KEY_BACK:
			break;
		}

		ui.keyNow = KEY_NONE;
	}
}
