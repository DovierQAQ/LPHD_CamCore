#include "calc.h"

/****Discription**********************************************/

/*
	0.calc.Calc()

	@Time	2018-04-28
	@Author	郭帆
	@Usefor	calc
*/

/****Definitions**********************************************/

/****Functions************************************************/

void CALC_Calc(void);
void CALC_My3d(void);

/****Variables************************************************/

/****Objects**************************************************/

CALC_CLASS calc =
{
	&CALC_Calc,
	&CALC_My3d,

	.cnt_effect = 4
};

/****Functions************************************************/

static int limitX(int num)
{
	if (num > 158) return 158;
	if (num < 1) return 1;
	return num;
}

//static int calc_LinearRegression(int y[], int xMin, int num, float *a, float *b)
//{
//	int i;
//	float xiyiSum = 0;
//	float xAve = 0, yAve = 0;
//	float xi2Sum = 0;
//	float temp;
//
//	*a = 0;
//	*b = 0;
//
//	for (i = xMin; i < xMin + num; i++)
//	{
//		xiyiSum += (y[i] * i);
//		xAve += i;
//		yAve += y[i];
//		xi2Sum += (i * i);
//	}
//
//	xAve /= num;
//	yAve /= num;
//
//	temp = xi2Sum - num * xAve * xAve;
//
//	if (temp)
//	{
//		*a = (xiyiSum - num * xAve * yAve) / temp;
//		*b = yAve - *a * xAve;
//
//		return 0;
//	}
//	else
//		return -1;
//}

//#define STARTROW	60
//static void CALC_testforStart(void)
//{
//	int i, j;
//	int curJump = 0, cntOk = 0;
//	static int cntJump = 0;
//
//	calc.flag_start = 0;
//
//	for (i = 0; i < 3; i++)
//	{
//		cntJump = 0;
//		for (j = 0; j < 159; j++)
//		{
//			if (camera.img[i + STARTROW][j] == camera.white && camera.img[i + STARTROW][j + 1] == camera.black && !curJump)
//			{
//				curJump = 1;
//				cntJump++;
//			}
//			else if (camera.img[i + STARTROW][j] == camera.black && camera.img[i + STARTROW][j + 1] == camera.white && curJump)
//			{
//				curJump = 0;
//				cntJump++;
//			}
//		}
//		if (cntJump > 10)
//			cntOk++;
//	}
//
//	if (cntOk)
//		calc.flag_start = 1;
//}

#define CNTMAX		20  			// 利用多少帧来统计滤波
//#define CNTEFF		4
static int lineR[120], lineL[120];	// 左边线右边线
static int lineMid[120];
int state_out[CNTMAX + 1] = {0};	// 结果数组
int flag_stopL = 0, flag_stopR = 0;	// 截至标记
#define ROADEND		50
#define FIRSTJUMP	60
#define STOPLINE	50
#define ZEBRALINE	95
#define ZEBRALINE2	110
#define ZEBRANUM	5
#define JMPDELTAX	20 // 有S弯会车改为30

void CALC_Calc(void)
{
	int i, j;
	int flag_startL = 0, flag_startR = 0;
	static int curJumpR = 0, curJumpL = 0;
	static int cntJumpR = 0, cntJumpL = 0;
	static int posJumpR[10] = {0}, posJumpL[10] = {0};

	curJumpR = 0, curJumpL = 0;
	cntJumpR = 0, cntJumpL = 0;
	flag_stopL = 0, flag_stopR = 0;
	calc.cnt_out = 0;

    if (calc.cnt_clear)
        for (i = 0; i < CNTMAX; i++)
            state_out[i] = 0;

	for (int k = 2; k > 0; k--)
		calc.reffer[k] = calc.reffer[k - 1];
	calc.reffer[0] = 0;

	//CALC_testforStart();

	camera.img[119][0] = camera.white; // 用来防止摄像头伸出去
	camera.img[119][159] = camera.white;

	/*---------------------------------------------------------------------------------------------------------*/
	//斑马线

	calc.flag_zebra = 0;
//	int cnt_zebra = 0;
//	int curJumpZebra = 0;
//	for (i = 0; i < 159; i++)
//	{
//		if (camera.img[ZEBRALINE][i] == camera.black && camera.img[ZEBRALINE][i + 1] == camera.white && !curJumpZebra)
//		{
//			curJumpZebra = 1;
//			cnt_zebra++;
//		}
//		else if (camera.img[ZEBRALINE][i] == camera.white && camera.img[ZEBRALINE][i + 1] == camera.black && curJumpZebra)
//		{
//			curJumpZebra = 0;
//			cnt_zebra++;
//		}
//	}
//	if (cnt_zebra > ZEBRANUM)
//		calc.flag_zebra = 1;
//
//	cnt_zebra = 0;
//	curJumpZebra = 0;
//	for (i = 0; i < 159; i++)
//	{
//		if (camera.img[ZEBRALINE2][i] == camera.black && camera.img[ZEBRALINE2][i + 1] == camera.white && !curJumpZebra)
//		{
//			curJumpZebra = 1;
//			cnt_zebra++;
//		}
//		else if (camera.img[ZEBRALINE2][i] == camera.white && camera.img[ZEBRALINE2][i + 1] == camera.black && curJumpZebra)
//		{
//			curJumpZebra = 0;
//			cnt_zebra++;
//		}
//	}
//	if (cnt_zebra > ZEBRANUM)
//		calc.flag_zebra = 1;
//
//	for (i = 0; i < 159; i++)
//	{
//		camera.img[ZEBRALINE][i] = camera.black;
//		camera.img[ZEBRALINE + 1][i] = camera.black;
//	}

	/*---------------------------------------------------------------------------------------------------------*/

	// 右边线第一个点
	for (i = 0; i < 159; i++)
		if (camera.img[119][i] == camera.white && camera.img[119][i + 1] == camera.black)
		{
			lineR[119] = i;
			break;
		}
	if (i == 159)
		lineR[119] = 159;

	// 左边线第一个点
	for (i = 159; i > 0; i--)
		if (camera.img[119][i] == camera.white && camera.img[119][i - 1] == camera.black)
		{
			lineL[119] = i;
			break;
		}
	if (i == 0)
		lineL[119] = 0;

	if (lineL[119] > lineR[119]) // 用来防止大拐弯摄像头看出去的情况
	{
		if ((lineL[119] + lineR[119]) / 2 > 80)
			flag_stopR = 1;
		else if ((lineL[119] + lineR[119]) / 2 < 80)
			flag_stopL = 1;
	}

	/*---------------------------------------------------------------------------------------------------------*/

	for (i = 118; i > 30; i--)
	{
		// 右边线下一个点
		if (!flag_stopR)
		{
			lineR[i] = 0;
			for (j = 0; j < 40; j++) // 左扫
			{
				if (camera.img[i][limitX(lineR[i + 1] - j)] == camera.white && camera.img[i][limitX(lineR[i + 1] - j + 1)] == camera.black)
				{
					lineR[i] = limitX(lineR[i + 1] - j);
					break;
				}

				if (lineR[i + 1] - j < 0) // 防止摄像头伸出去
				{
					flag_stopR = 1;
					break;
				}
			}
			if (!lineR[i]) // 左扫不到，右扫
			{
				for (j = 0; j < 40; j++)
				{
					if (camera.img[i][limitX(lineR[i + 1] + j)] == camera.white && camera.img[i][limitX(lineR[i + 1] + j + 1)] == camera.black)
					{
						lineR[i] = limitX(lineR[i + 1] + j);
						break;
					}
				}
				if (j == 40)
					lineR[i] = limitX(lineR[i + 1] + j);
			}

			// 异常退出寻线
			if (i < STOPLINE || // 屏蔽墙壁
				(lineR[i] == 158 && i < 65 && (flag_startR || abs(lineR[i] - lineR[i + 1]) > 20)) || // 十字
				(i < 117 && lineR[i] - lineR[i + 1] > 10 && lineR[i + 1] - lineR[i + 2] > 10) || // q出现的现象以及摄像头伸出去
				lineL[i + 1] > 130 // 边线不存在但是还在继续寻
				)
			{
				flag_stopR = 1;
				lineR[i] = -1;
				//break;
			}

			if (lineR[i] != 158 && !flag_startR)
				flag_startR = i;

			// 调试用，将边界线画为虚线
			if (twinCore.data[1] == 1100 || twinCore.data[1] == 1101)
			{
				camera.img[i][lineR[i]] = camera.white;
				camera.img[i][lineR[i] - 1] = camera.black;
			}
		}

		/*---------------------------------------------------------------------------------------------------------*/

		// 左边线下一个点
		if (!flag_stopL)
		{
			lineL[i] = 0;
			for (j = 0; j < 40; j++) // 右扫
			{
				if (camera.img[i][limitX(lineL[i + 1] + j)] == camera.white && camera.img[i][limitX(lineL[i + 1] + j - 1)] == camera.black)
				{
					lineL[i] = limitX(lineL[i + 1] + j);
					break;
				}

				if (lineL[i + 1] + j > 159)
				{
					flag_stopL = 1;
					break;
				}
			}
			if (!lineL[i]) // 右扫不到
			{
				for (j = 0; j < 40; j++)
				{
					if (camera.img[i][limitX(lineL[i + 1] - j)] == camera.white && camera.img[i][limitX(lineL[i + 1] - j - 1)] == camera.black)
					{
						lineL[i] = limitX(lineL[i + 1] - j);
						break;
					}
				}
				if (j == 40)
					lineL[i] = limitX(lineL[i + 1] - j);
			}

			// 异常
			if (i < STOPLINE ||
				(lineL[i] == 1 && i < 65 && (flag_startL || abs(lineL[i] - lineL[i + 1]) > 20)) ||
				(i < 117 && lineL[i + 1] - lineL[i] > 10 && lineL[i + 2] - lineL[i + 1] > 10) ||
				(lineR[i + 1] < 30 && lineR[i + 1] != -1))
			{
				flag_stopL = 1;
				lineL[i] = -1;
				//break;
			}

			if (lineL[i] != 1 && !flag_startL)
				flag_startL = i;

			// 调试
			if (twinCore.data[1] == 1100 || twinCore.data[1] == 1101)
			{
				camera.img[i][lineL[i] - 1] = camera.white;
				camera.img[i][lineL[i]] = camera.black;
			}
		}

		/*---------------------------------------------------------------------------------------------------------*/

		// 找跳变点
		if (i < 117)
		{
			if (!flag_stopR)
			{
				// 右边线左跳右
				if (i < 100 && lineR[i] <= lineR[i + 1] && lineR[i + 1] > lineR[i + 2] && (curJumpR == 2 || !curJumpR))
				{
					// 倾斜情况
					for (j = i; j < i + 20; j++)
					{
						if (lineR[j] > lineR[j + 1] && lineR[j + 1] <= lineR[j + 2] && abs(lineR[i] - lineR[j]) > 5)
						{
							if (!curJumpR)
							{
								if (i < FIRSTJUMP)
								{
									flag_stopR = 1;
									lineR[i] = -1;
									break;
								}

								curJumpR = 1;
								cntJumpR++;
								posJumpR[cntJumpR] = i;
							}
							else if (abs(i - posJumpR[cntJumpR]) > 10)
							{
								curJumpR = 1;
								cntJumpR++;
								posJumpR[cntJumpR] = i;
							}
						}
					}
				}
				else if (lineR[i] - lineR[i + 1] > lineR[i + 2] - lineR[i + 1] + 3 && lineR[i] > lineR[i + 1] && (curJumpR == 2 || !curJumpR))
				{
					// 正常情况
					if (!curJumpR)
					{
						if (i < FIRSTJUMP)
						{
							flag_stopR = 1;
							lineR[i] = -1;
						}
						else
						{
							curJumpR = 1;
							cntJumpR++;
							posJumpR[cntJumpR] = i;
						}
					}
					else if (abs(i - posJumpR[cntJumpR]) > 10)
					{
						curJumpR = 1;
						cntJumpR++;
						posJumpR[cntJumpR] = i;
					}
				}

				// 右边线右跳左
				if (lineR[i + 1] != 158 && lineR[i + 1] - lineR[i] > lineR[i + 2] - lineR[i + 1] + 3 && lineR[i + 1] > lineR[i] && (curJumpR == 1 || !curJumpR))
				{
					// 只考虑正常情况
					if (!curJumpR)
					{
						if (i < FIRSTJUMP)
						{
							flag_stopR = 1;
							lineR[i] = -1;
						}
						else
						{
							curJumpR = 2;
							cntJumpR++;
							posJumpR[cntJumpR] = i;
						}
					}
					else if (abs(i - posJumpR[cntJumpR]) > 10)
					{
						curJumpR = 2;
						cntJumpR++;
						posJumpR[cntJumpR] = i;
					}
				}
			}

			/*---------------------------------------------------------------------------------------------------------*/

			if (!flag_stopL)
			{
				// 左边线右跳左
				if (i < 100 && lineL[i] >= lineL[i + 1] && lineL[i + 1] < lineL[i + 2] && (curJumpL == 2 || !curJumpL))
				{
					// 倾斜
					for (j = i; j < i + 20; j++)
					{
						if (lineL[j] < lineL[j + 1] && lineL[j + 1] >= lineL[j + 2] && abs(lineL[i] - lineL[j]) > 5)
						{
							if (!curJumpL)
							{
								if (i < FIRSTJUMP)
								{
									flag_stopL = 1;
									lineL[i] = -1;
									break;
								}

								curJumpL = 1;
								cntJumpL++;
								posJumpL[cntJumpL] = i;
							}
							else if (abs(i - posJumpL[cntJumpL]) > 10)
							{
								curJumpL = 1;
								cntJumpL++;
								posJumpL[cntJumpL] = i;
							}
						}
					}
				}
				else if (lineL[i + 1] - lineL[i] > lineL[i + 1] - lineL[i + 2] + 3 && lineL[i] < lineL[i + 1] && (curJumpL == 2 || !curJumpL))
				{
					// 正常
					if (!curJumpL)
					{
						if (i < FIRSTJUMP)
						{
							flag_stopL = 1;
							lineL[i] = -1;
						}
						else
						{
							curJumpL = 1;
							cntJumpL++;
							posJumpL[cntJumpL] = i;
						}
					}
					else if (abs(i - posJumpL[cntJumpL]) > 10)
					{
						curJumpL = 1;
						cntJumpL++;
						posJumpL[cntJumpL] = i;
					}
				}

				// 左边线左跳右
				if (lineL[i + 1] != 1 && lineL[i] - lineL[i + 1] > lineL[i + 1] - lineL[i + 2] + 3 && lineL[i + 1] < lineL[i] && (curJumpL == 1 || !curJumpL))
				{
					// 正常
					if (!curJumpL)
					{
						if (i < FIRSTJUMP)
						{
							flag_stopL = 1;
							lineL[i] = -1;
						}
						else
						{
							curJumpL = 2;
							cntJumpL++;
							posJumpL[cntJumpL] = i;
						}
					}
					else if (abs(i - posJumpL[cntJumpL]) > 10)
					{
						curJumpL = 2;
						cntJumpL++;
						posJumpL[cntJumpL] = i;
					}
				}
			}
		}

		/*---------------------------------------------------------------------------------------------------------*/
		// 中线

//		lineMid[i] = (lineL[i] + lineR[i]) / 2;
//		if ((lineL[i] == -1 || lineR[i] == -1) && !calc.reffer[0])
//		{
//			if (i > 50)
//				calc.reffer[0] = lineMid[i + 2];
//			else
//				calc.reffer[0] = lineMid[50];
//
//			calc.reffer[0] = (calc.reffer[0] + calc.reffer[1] + calc.reffer[2]) / 3;
//		}
//
//		int cnt_black = 0;
//		if (i > 60 && camera.img[i][lineMid[i]] == camera.black && calc.findEnd == 0 && (twinCore.data[8] == 0 || twinCore.data[8] == 1)) // 20180724颠簸阴影
//		{
//			for (j = 0; j < 10; j++)
//			{
//				if (camera.img[i][limitX(lineMid[i] + j)] == camera.black)
//					cnt_black++;
//				if (camera.img[i][limitX(lineMid[i] - j)] == camera.black)
//					cnt_black++;
//			}
//			if (cnt_black > 15)
//			{
//				flag_stopL = 1;
//				flag_stopR = 1;
//			}
//
////			flag_stopL = 1;
////			flag_stopR = 1;
//		}
//
//		if (twinCore.data[1] == 1100)
//			camera.img[i][lineMid[i]] = camera.black;

		/*---------------------------------------------------------------------------------------------------------*/

		// 达到识别条件
		if
		(
			(/*(calc.f2fMode == 0 || calc.f2fMode == 1 || calc.f2fMode == 2 || calc.f2fMode == 4 || calc.f2fMode == 6) &&*/
			cntJumpR >= 3 &&
			abs(abs(lineR[posJumpR[cntJumpR]] - lineR[posJumpR[cntJumpR - 1]]) -
			abs(lineR[posJumpR[cntJumpR - 1]] - lineR[posJumpR[cntJumpR - 2]])) < JMPDELTAX /*&&
			abs(lineR[posJumpR[cntJumpR]] - lineR[posJumpR[cntJumpR - 1]]) <
			abs(lineR[posJumpR[cntJumpR - 1]] - lineR[posJumpR[cntJumpR - 2]])*/)

		 || (/*(calc.f2fMode == 0 || calc.f2fMode == 1 || calc.f2fMode == 3 || calc.f2fMode == 4 || calc.f2fMode == 7) &&*/
			cntJumpL >= 3 &&
			abs(abs(lineL[posJumpL[cntJumpL]] - lineL[posJumpL[cntJumpL - 1]]) -
			abs(lineL[posJumpL[cntJumpL - 1]] - lineL[posJumpL[cntJumpL - 2]])) < JMPDELTAX /*&&
			abs(lineL[posJumpL[cntJumpL]] - lineL[posJumpL[cntJumpL - 1]]) <
			abs(lineL[posJumpL[cntJumpL - 1]] - lineL[posJumpL[cntJumpL - 2]])*/) // 边线三个点

		 ||	(/*(calc.f2fMode == 0 || calc.f2fMode == 1) &&
			calc.findEnd != 0 &&*/
			cntJumpL + cntJumpR >= 5) // 总和5个点

		 || (/*(calc.f2fMode == 2 || calc.f2fMode == 6) &&*/
			/*calc.findEnd == 0 &&*/
			!flag_stopR && cntJumpR >= 2 && lineR[i] < 30 && lineR[i + 1] < 30 &&
			flag_startL < flag_startR)

		 || (/*(calc.f2fMode == 3 || calc.f2fMode == 7) &&*/
			/*calc.findEnd == 0 &&*/
			!flag_stopL && cntJumpL >= 2 && lineL[i] > 130 && lineL[i + 1] > 130 &&
			flag_startL > flag_startR) // 弯道特殊寻
		)
		{
			// 调试用，画出跳变点的位置
			if (twinCore.data[1] == 1100 /*|| twinCore.data[1] == 1101*/)
			{
				for (int k = 1; k <= cntJumpR; k++)
					for (int l = 0; l < 159; l++)
					{
						camera.img[posJumpR[k]][l] = camera.black;
						camera.img[posJumpR[k] + 1][l] = camera.black;
					}

				for (int k = 1; k <= cntJumpL; k++)
					for (int l = 0; l < 159; l++)
					{
						camera.img[posJumpL[k]][l] = camera.black;
						camera.img[posJumpL[k] + 1][l] = camera.black;
					}

				for (int l = 0; l < 159; l++) // 定位线
				{
					if (camera.img[ROADEND][l] == camera.black)
					{
						camera.img[ROADEND][l] = camera.white;
						camera.img[ROADEND + 1][l] = camera.white;
					}
					else
					{
						camera.img[ROADEND][l] = camera.black;
						camera.img[ROADEND + 1][l] = camera.black;
					}
				}
			}

			calc.flag_out = 1;

			led.Set(LED4, ON); // 灯

			for (int k = CNTMAX; k > 0; k--)
				state_out[k] = state_out[k - 1]; // 用作统计
			state_out[0] = calc.flag_out;

#define USE_MYFILTER	0

			if (USE_MYFILTER)
			{
				if (state_out[0] != state_out[2])
					calc.flag_out = state_out[1]; // 14-04-14 by gf 炒鸡神奇的滤波
			}
			else
			{
//				if (state_out[0] && state_out[1])
//					calc.flag_out = 1;
//				else
//					calc.flag_out = 0;
				//int cnt_out = 0;
				for (int k = 0; k < CNTMAX; k++)
					if (state_out[k])
						calc.cnt_out++;
				if (calc.cnt_out >= calc.cnt_effect)
					calc.flag_out = 1;
				else
				{
					calc.flag_out = 0;
					led.Set(LED4, OFF);
				}
			}

//			static float a, b;
//			static int reffer;
//
//			calc_LinearRegression(lineR, posJumpR[cntJumpR], 119 - posJumpR[cntJumpR], &a, &b);
//			reffer = (int)b;

			return;
		}

		if (flag_stopL && flag_stopR)
		{
			i = 30;
			break;
		}
	}

	// 调试用，画出跳变点的位置
	if (twinCore.data[1] == 1100/* || twinCore.data[1] == 1101*/)
	{
		for (int k = 1; k <= cntJumpR; k++)
			for (int l = 0; l < 159; l++)
			{
				camera.img[posJumpR[k]][l] = camera.black;
				camera.img[posJumpR[k] + 1][l] = camera.black;
			}

		for (int k = 1; k <= cntJumpL; k++)
			for (int l = 0; l < 159; l++)
			{
				camera.img[posJumpL[k]][l] = camera.black;
				camera.img[posJumpL[k] + 1][l] = camera.black;
			}

		for (int l = 0; l < 159; l++)
		{
			if (camera.img[ROADEND][l] == camera.black)
			{
				camera.img[ROADEND][l] = camera.white;
				camera.img[ROADEND + 1][l] = camera.white;
			}
			else
			{
				camera.img[ROADEND][l] = camera.black;
				camera.img[ROADEND + 1][l] = camera.black;
			}
		}
	}

	/*---------------------------------------------------------------------------------------------------------*/

	// 未识别到
	if (i == 30)
	{
		calc.flag_out = 0;

		led.Set(LED4, OFF); // 灯

		for (int k = CNTMAX; k > 0; k--)
			state_out[k] = state_out[k - 1]; // 用作统计
		state_out[0] = calc.flag_out;

		if (USE_MYFILTER)
		{
			if (state_out[0] != state_out[2])
				calc.flag_out = state_out[1];
		}
		else
		{
			for (int k = 0; k < CNTMAX; k++)
				if (state_out[k])
					calc.cnt_out++;
			if (calc.cnt_out >= calc.cnt_effect)
			{
				calc.flag_out = 1;
				led.Set(LED4, ON);
			}
			else
			{
				calc.flag_out = 0;
			}
		}
	}
}

//void CALC_Calc(void)
//{
//	int i, j;
//	static int cntJumpR = 0;
//	static int posJumpR[10] = {0};
//
//	curJumpR = 0;
//	cntJumpR = 0;
//
//	camera.img[119][0] = camera.white; // 用来防止摄像头伸出去
//
//	// 右边线第一个点
//	for (i = 0; i < 159; i++)
//		if (camera.img[119][i] == camera.white && camera.img[119][i + 1] == camera.black)
//		{
//			lineR[119] = i;
//			break;
//		}
//	if (i == 159)
//		lineR[119] = 159;
//
//	for (i = 118; i > 30; i--)
//	{
//		// 右边线下一个点
//		lineR[i] = 0;
//		for (j = 0; j < 40; j++) // 左扫
//		{
//			if (camera.img[i][limitX(lineR[i + 1] - j)] == camera.white && camera.img[i][limitX(lineR[i + 1] - j + 1)] == camera.black)
//			{
//				lineR[i] = limitX(lineR[i + 1] - j);
//				break;
//			}
//
//			if (lineR[i + 1] - j < 0) // 防止摄像头伸出去
//			{
//				i = 30;
//				break;
//			}
//		}
//		if (!lineR[i]) // 左扫不到，右扫
//		{
//			for (j = 0; j < 40; j++)
//			{
//				if (camera.img[i][limitX(lineR[i + 1] + j)] == camera.white && camera.img[i][limitX(lineR[i + 1] + j + 1)] == camera.black)
//				{
//					lineR[i] = limitX(lineR[i + 1] + j);
//					break;
//				}
//			}
//			if (j == 40)
//				lineR[i] = limitX(lineR[i + 1] + j);
//		}
//
//		// 异常退出寻线
//		if ((lineR[i] == 158 && i < 80) || (i < 117 && lineR[i] - lineR[i + 1] > 10 && lineR[i + 1] - lineR[i + 2] > 10))
//		{
//			i = 30;
//			lineR[i] = 0;
//			break;
//		}
//
//		// 调试用，将边界线画为虚线
//		if (twinCore.data[1] == 1100 || twinCore.data[1] == 1101)
//		{
//			camera.img[i][lineR[i]] = camera.white;
//			camera.img[i][lineR[i] - 1] = camera.black;
//		}
//
//		/*---------------------------------------------------------------------------------------------------------*/
//
//		// 找跳变点
//		if (i < 117)
//		{
//			// 左跳右
//			if (i < 100 && lineR[i] <= lineR[i + 1] && lineR[i + 1] > lineR[i + 2] && (curJumpR == 2 || !curJumpR))
//			{
//				// 倾斜情况
//				for (j = i; j < i + 20; j++)
//				{
//					if (lineR[j] > lineR[j + 1] && lineR[j + 1] <= lineR[j + 2] && abs(lineR[i] - lineR[j]) > 5)
//					{
//						if (!curJumpR)
//						{
//							if (i < 60)
//							{
//								i = 31;
//								lineR[i] = 0;
//								break;
//							}
//
//							curJumpR = 1;
//							cntJumpR++;
//							posJumpR[cntJumpR] = i;
//						}
//						else if (abs(i - posJumpR[cntJumpR]) > 10)
//						{
//							curJumpR = 1;
//							cntJumpR++;
//							posJumpR[cntJumpR] = i;
//						}
//					}
//				}
//			}
//			else if (lineR[i] - lineR[i + 1] > lineR[i + 2] - lineR[i + 1] + 3 && lineR[i] > lineR[i + 1] && (curJumpR == 2 || !curJumpR))
//			{
//				// 正常情况
//				if (!curJumpR)
//				{
//					if (i < 60)
//					{
//						i = 30;
//						lineR[i] = 0;
//						break;
//					}
//
//					curJumpR = 1;
//					cntJumpR++;
//					posJumpR[cntJumpR] = i;
//				}
//				else if (abs(i - posJumpR[cntJumpR]) > 10)
//				{
//					curJumpR = 1;
//					cntJumpR++;
//					posJumpR[cntJumpR] = i;
//				}
//			}
//
//			// 右跳左
//			if (lineR[i + 1] - lineR[i] > lineR[i + 2] - lineR[i + 1] + 3 && lineR[i + 1] > lineR[i] && (curJumpR == 1 || !curJumpR))
//			{
//				// 只考虑正常情况
//				if (!curJumpR)
//				{
//					if (i < 60)
//					{
//						i = 30;
//						lineR[i] = 0;
//						break;
//					}
//
//					curJumpR = 2;
//					cntJumpR++;
//					posJumpR[cntJumpR] = i;
//				}
//				else if (abs(i - posJumpR[cntJumpR]) > 10)
//				{
//					curJumpR = 2;
//					cntJumpR++;
//					posJumpR[cntJumpR] = i;
//				}
//			}
//		}
//
//		/*---------------------------------------------------------------------------------------------------------*/
//
//		// 达到识别条件
//		if (cntJumpR >= 3 &&
//			abs(abs(lineR[posJumpR[cntJumpR]] - lineR[posJumpR[cntJumpR - 1]]) -
//			abs(lineR[posJumpR[cntJumpR - 1]] - lineR[posJumpR[cntJumpR - 2]])) < 30 &&
//			abs(lineR[posJumpR[cntJumpR]] - lineR[posJumpR[cntJumpR - 1]]) <
//			abs(lineR[posJumpR[cntJumpR - 1]] - lineR[posJumpR[cntJumpR - 2]]))
//		{
//			// 调试用，画出调变点的位置
//			if (twinCore.data[1] == 1100 || twinCore.data[1] == 1101)
//			{
//				for (int k = 1; k <= cntJumpR; k++)
//					for (int l = 0; l < 159; l++)
//					{
//						camera.img[posJumpR[k]][l] = 0;
//						camera.img[posJumpR[k] + 1][l] = 0;
//					}
//			}
//
//			calc.flag_out = 1;
//
//			state_out[2] = state_out[1];
//			state_out[1] = state_out[0];
//			state_out[0] = calc.flag_out;
//
//			if (state_out[0] != state_out[2])
//				calc.flag_out = state_out[1]; // 14-04-14 by gf 炒鸡神奇的滤波
//
////			static float a, b;
////			static int reffer;
////
////			calc_LinearRegression(lineR, posJumpR[cntJumpR], 119 - posJumpR[cntJumpR], &a, &b);
////			reffer = (int)b;
//
//			return;
//		}
//	}
//
//	// 调试用，画出调变点的位置
//	if (twinCore.data[1] == 1100 || twinCore.data[1] == 1101)
//	{
//		for (int k = 1; k <= cntJumpR; k++)
//			for (int l = 0; l < 159; l++)
//			{
//				camera.img[posJumpR[k]][l] = 0;
//				camera.img[posJumpR[k] + 1][l] = 0;
//			}
//	}
//
//	/*---------------------------------------------------------------------------------------------------------*/
//
//	// 未识别到
//	if (i == 30)
//	{
//		calc.flag_out = 0;
//		state_out[2] = state_out[1];
//		state_out[1] = state_out[0];
//		state_out[0] = calc.flag_out;
//
//		if (state_out[0] != state_out[2])
//			calc.flag_out = state_out[1];
//	}
//}

/*
	z
	↑  y
	|↗
	+---→ x
	玩
*/

int z_buf[128][64];

const unsigned char bit[] = {0x01, 0x02, 0x04, 0x08, 0x10, 0x20, 0x40, 0x80};
const unsigned char aBit[] = {0x80, 0x40, 0x20, 0x10, 0x08, 0x04, 0x02, 0x01};
#define CALC_WIDTH	128
#define CALC_HEIGHT	64

#define CALC_AXISX	0
#define CALC_AXISY	1
#define CALC_AXISZ	2

#define CALC_CAMDIS	128
static point CALC_3to2(points pt)
{
	point result;

	pt.y += CALC_CAMDIS;

	result.x = CALC_WIDTH / 2 * pt.x / pt.y;
	result.y = CALC_WIDTH / 2 * pt.z / pt.y;

	result.x += CALC_WIDTH / 2;
	result.y += CALC_HEIGHT / 2;

	return result;
}

static void CALC_SetPix(point pt, char data)
{
	if (data)
		calc.myScene[pt.x][pt.y / 8] |= bit[pt.y % 8];
	else
		calc.myScene[pt.x][pt.y / 8] &= ~bit[pt.y % 8];
}

static void CALC_DrawLine(point pt1, point pt2, char usColor)
{
	int us;
	int usX_Current, usY_Current;

	int32_t lError_X = 0, lError_Y = 0, lDelta_X, lDelta_Y, lDistance;
	int32_t lIncrease_X, lIncrease_Y;

	lDelta_X = pt2.x - pt1.x;
	lDelta_Y = pt2.y - pt1.y;

	usX_Current = pt1.x;
	usY_Current = pt1.y;

	if (lDelta_X > 0)
		lIncrease_X = 1;

	else if (lDelta_X == 0)
		lIncrease_X = 0;
	else
	{
		lIncrease_X = -1;
		lDelta_X = -lDelta_X;
	}

	if (lDelta_Y > 0)
		lIncrease_Y = 1;
	else if (lDelta_Y == 0)
		lIncrease_Y = 0;
	else
	{
		lIncrease_Y = -1;
		lDelta_Y = -lDelta_Y;
	}

	if (lDelta_X > lDelta_Y)
		lDistance = lDelta_X;
	else
		lDistance = lDelta_Y;

	for (us = 0; us <= lDistance + 1; us++)
	{
		if (usX_Current < CALC_WIDTH && usX_Current >= 0 && usY_Current < CALC_HEIGHT && usY_Current >= 0)
		{
			point pt = {usX_Current, usY_Current};
			CALC_SetPix(pt, usColor);
		}

		lError_X += lDelta_X;
		lError_Y += lDelta_Y;

		if (lError_X > lDistance)
		{
			lError_X -= lDistance;
			usX_Current += lIncrease_X;
		}

		if (lError_Y > lDistance)
		{
			lError_Y -= lDistance;
			usY_Current += lIncrease_Y;
		}
	}
}

static void CALC_3dSetPix(points pt, char data)
{
	point pt2d;

	pt2d = CALC_3to2(pt);

	if (pt2d.x >= CALC_WIDTH || pt2d.x < 0 || pt2d.y >= CALC_HEIGHT || pt2d.y < 0) return;

	CALC_SetPix(pt2d, data);
}

static void CALC_3dDrawLine(points pt1, points pt2, char usColor)
{
	point pt2d1, pt2d2;

	pt2d1 = CALC_3to2(pt1);
	pt2d2 = CALC_3to2(pt2);

	CALC_DrawLine(pt2d1, pt2d2, usColor);
}

static void CALC_3dConnect(points *lineR, int num, int color, int isCircle)
{
	int i;

	for (i = 0; i < num - 1; i++)
		CALC_3dDrawLine(lineR[i], lineR[i + 1], color);

	if (isCircle)
		CALC_3dDrawLine(lineR[0], lineR[num - 1], color);
}

const unsigned char charCH[][32] =
{
	{0x04,0x74,0x54,0x55,0x56,0x54,0x74,0x04,0x00,0xFE,0x02,0x22,0xDA,0x06,0x00,0x00,
	0x10,0x11,0x51,0x91,0x7D,0x0B,0x09,0x08,0x00,0xFF,0x08,0x10,0x08,0x07,0x00,0x00},
	{0x00,0xF8,0x08,0xFF,0x08,0xF8,0x00,0xFE,0x42,0x82,0x02,0xFE,0x00,0x00,0x00,0x00,
	0x00,0x0F,0x00,0xFF,0x08,0x8F,0x60,0x1F,0x00,0x01,0x00,0x3F,0x40,0x40,0x78,0x00}
};

static char CALC_GetCHPix(int num, int x, int y)
{
	return charCH[num][x + (y / 8) * 16] & bit[y % 8];
}

#define CALC_CUBEX	64
#define CALC_CUBEYA	-16
#define CALC_CUBEYB	128
#define CALC_CUBEZ	32
static const points cube[8] =
{
	{-CALC_CUBEX, CALC_CUBEYA, -CALC_CUBEZ}, {CALC_CUBEX, CALC_CUBEYA, -CALC_CUBEZ},
	{CALC_CUBEX, CALC_CUBEYA, CALC_CUBEZ}, {-CALC_CUBEX, CALC_CUBEYA, CALC_CUBEZ},
	{-CALC_CUBEX, CALC_CUBEYB,  -CALC_CUBEZ}, {CALC_CUBEX, CALC_CUBEYB,  -CALC_CUBEZ},
	{CALC_CUBEX, CALC_CUBEYB,  CALC_CUBEZ}, {-CALC_CUBEX, CALC_CUBEYB,  CALC_CUBEZ}
};

static points CALC_PtRotate(points pt, int axis, float ang, points origin)
{
	points result;

	switch (axis)
	{
	case CALC_AXISZ:
		result.x = (int)((pt.x - origin.x) * cos(ang) - (pt.y - origin.y) * sin(ang) + origin.x);
		result.y = (int)((pt.y - origin.y) * cos(ang) + (pt.x - origin.x) * sin(ang) + origin.y);
		result.z = pt.z;
		break;
	case CALC_AXISY:
		result.x = (int)((pt.x - origin.x) * cos(ang) - (pt.z - origin.z) * sin(ang) + origin.x);
		result.z = (int)((pt.z - origin.z) * cos(ang) + (pt.x - origin.x) * sin(ang) + origin.z);
		result.y = pt.y;
		break;
	case CALC_AXISX:
		result.y = (int)((pt.y - origin.y) * cos(ang) - (pt.z - origin.z) * sin(ang) + origin.y);
		result.z = (int)((pt.z - origin.z) * cos(ang) + (pt.y - origin.y) * sin(ang) + origin.z);
		result.x = pt.x;
		break;
	}

	return result;
}

void CALC_My3d(void)
{
	int i, j;

	for (i = 0; i < 128; i++)
		for (j = 0; j < 8; j++)
			calc.myScene[i][j] = 0;

	for (i = 0; i < 128; i++)
		for (j = 0; j < 64; j++)
			z_buf[i][j] = 0;

	points rotateCube[8];
	points origin = {0, 0, 0};
	for (i = 0; i < 8; i++)
		rotateCube[i] = cube[i];

	for (i = 0; i < 8; i++)
	{
		rotateCube[i] = CALC_PtRotate(rotateCube[i], CALC_AXISX, (calc.angY / 13000.0), origin);
		rotateCube[i] = CALC_PtRotate(rotateCube[i], CALC_AXISY, (calc.angZ / 13000.0), origin);
		rotateCube[i] = CALC_PtRotate(rotateCube[i], CALC_AXISZ, (calc.angX / 13000.0), origin);
	}

	CALC_3dConnect(&rotateCube[0], 4, 1, 1);
	CALC_3dConnect(&rotateCube[4], 4, 1, 1);
	for (i = 0; i < 4; i++)
		CALC_3dDrawLine(rotateCube[i], rotateCube[i + 4], 1);

//	points surface[256] = {0};

	points surface;

	for (i = 0; i < 16; i++)
	{
		for (j = 0; j < 16; j++)
		{
//			surface[i * 16 + j].y -= 90;
//			surface[i * 16 + j].x += i;
//			surface[i * 16 + j].z += j;
//
//			surface[i * 16 + j] = CALC_PtRotate(surface[i * 16 + j], CALC_AXISX, (calc.angY / 13000.0), origin);
//			surface[i * 16 + j] = CALC_PtRotate(surface[i * 16 + j], CALC_AXISY, (calc.angZ / 13000.0), origin);
//			surface[i * 16 + j] = CALC_PtRotate(surface[i * 16 + j], CALC_AXISZ, (calc.angX / 13000.0), origin);
//
//			CALC_3dSetPix(surface[i * 16 + j], CALC_GetCHPix(1, i, j));

			surface = origin;

			surface.y -= 70;
			surface.x += i;
			surface.z += j;

			surface = CALC_PtRotate(surface, CALC_AXISX, (calc.angY / 13000.0), origin);
			surface = CALC_PtRotate(surface, CALC_AXISY, (calc.angZ / 13000.0), origin);
			surface = CALC_PtRotate(surface, CALC_AXISZ, (calc.angX / 13000.0), origin);

			CALC_3dSetPix(surface, CALC_GetCHPix(0, i, j));

			surface = origin;

			surface.y -= 70;
			surface.x += i + 16;
			surface.z += j;

			surface = CALC_PtRotate(surface, CALC_AXISX, (calc.angY / 13000.0), origin);
			surface = CALC_PtRotate(surface, CALC_AXISY, (calc.angZ / 13000.0), origin);
			surface = CALC_PtRotate(surface, CALC_AXISZ, (calc.angX / 13000.0), origin);

			CALC_3dSetPix(surface, CALC_GetCHPix(1, i, j));
		}
	}
}
