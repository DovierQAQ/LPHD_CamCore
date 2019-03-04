#include "twinCore.h"

/****Discription**********************************************/

/*
	0.需先调用twinCore.Init()函数再使用本驱动
	1.移植于uart，因为双核通讯改为了uart连接
	2.先调用twinCore.Set()将某一个通道设置为相应的数值
	3.周期性调用twinCore.Send()来将数组内容发送给另外一个单片机
	4.在本文件的twinCore_Debug函数接收相应的数据

	@Time	2018-04-30
	@Author	郭帆
	@Usefor	双核通讯
*/

/*
	0--pose.flag
	1--SW_Mode
	2--pose.pause
	3--keyValue
	4--f2fMode
	5--findEnd
    6--cnt_clear
	7--calc.cnt_effect
	8--loseFlag
	9--gamma
*/

/*
	0--flag_out
	1--pose.angleY
	2--pose.angleZ
	3--mpu6050.gry.y
	4--calc.cnt_out
	5--testTime
	6--calc.reffer[0]
	7--mpu6050.acc.z
*/

/****Definitions**********************************************/

/****Functions************************************************/

void TWINCORE_isr(void);

/****Variables************************************************/

uint8 twinCore_sendData[TwinCoreRxChNum * 2] = {0};

TwinCorePortType TwinCorePortRx;

/****Functions************************************************/

static void TwinCore_Debug(void)
{
	static int gammaLst = 0;

	mpu6050.pose.flagY = twinCore.data[0];
	mpu6050.pose.flagZ = twinCore.data[0];
	if (!mpu6050.pose.flagX) mpu6050.pose.angleX = 0;
	if (!mpu6050.pose.flagY) mpu6050.pose.angleY = 0;
	if (!mpu6050.pose.flagZ) mpu6050.pose.angleZ = 0;

	mpu6050.pose.pause = twinCore.data[2];

	if (ui.keyLst != twinCore.data[3] && twinCore.data[1] == 1110)
	{
		ui.keyLst = twinCore.data[3];
		ui.keyNow = ui.keyLst;
		ui.ProcessKey();
	}

	calc.f2fMode = twinCore.data[4];
	calc.findEnd = twinCore.data[5];
    calc.cnt_clear = twinCore.data[6];
	calc.cnt_effect = twinCore.data[7];

	if (twinCore.data[9] != gammaLst)
		camera.ChangeGamma(twinCore.data[9]);
	gammaLst = twinCore.data[9];
}

static void TwinCore_Cmd(uint8 CmdNum,uint8 Data) {
	if (CmdNum == 2 && Data == 102) { // page up
		;
	}
	if (CmdNum == 2 && Data == 103) { //page down
		;
	}
}

static void TWINCORE_Init(void) {
	static UART_InitTypeDef UART_InitStructure;

	UART_InitStructure.UART_Uartx = TWINCORE_UART;
	UART_InitStructure.UART_BaudRate = TWINCORE_BAUDRATE;
	UART_InitStructure.UART_RxPin = TWINCORE_RxPinx;
	UART_InitStructure.UART_TxPin = TWINCORE_TxPinx;
	UART_InitStructure.UART_RxIntEnable = TRUE;
	UART_InitStructure.UART_RxIsr = TWINCORE_isr;

	LPLD_UART_Init(UART_InitStructure);
	LPLD_UART_EnableIrq(UART_InitStructure);
}

static void TWINCORE_Putchar(char ch) {
	LPLD_UART_PutChar(TWINCORE_UART, ch);
}

static void TWINCORE_Set(int chx, int data) {
	twinCore_sendData[chx * 2] = TWINCORE_HIGHBYTE(data);
	twinCore_sendData[chx * 2 + 1] = TWINCORE_LOWBYTE(data);
}

static void TWINCORE_Send(void) {
	int i = 0;
	uint8 sum = 0;

	TWINCORE_Putchar(0xff);
	TWINCORE_Putchar(0x55);
	TWINCORE_Putchar(0xaa);
	TWINCORE_Putchar(0x10);

	sum += (0xff + 0x55 + 0xaa + 0x10);

	for (i = 0; i < TwinCoreRxChNum * 2; i++) {
		TWINCORE_Putchar(twinCore_sendData[i]);
		sum += twinCore_sendData[i];
	}

	TWINCORE_Putchar(sum);
}

void TWINCORE_isr(void) {
	int i, begin;

	if ((TWINCORE_UART->S1 & UART_S1_RDRF_MASK) && (TWINCORE_UART->C2 & UART_C2_RIE_MASK)) {
		TwinCorePortRx.Data = LPLD_UART_GetChar(TWINCORE_UART);
		if (TwinCorePortRx.Stack < TwinCoreRxBufferLen) {
			TwinCorePortRx.Buffer[TwinCorePortRx.Stack++] = TwinCorePortRx.Data;
			if (TwinCorePortRx.Stack >= TwinCoreRxDataLen
				&& TwinCorePortRx.Buffer[TwinCorePortRx.Stack - TwinCoreRxDataLen]    ==0xff
				&& TwinCorePortRx.Buffer[TwinCorePortRx.Stack - TwinCoreRxDataLen + 1]==0x55
				&& TwinCorePortRx.Buffer[TwinCorePortRx.Stack - TwinCoreRxDataLen + 2]==0xaa
				&& TwinCorePortRx.Buffer[TwinCorePortRx.Stack - TwinCoreRxDataLen + 3]==0x10) {
				TwinCorePortRx.Check = 0;
				begin = TwinCorePortRx.Stack - TwinCoreRxDataLen;
				for(i = begin; i < TwinCorePortRx.Stack - 1; i++) {
					TwinCorePortRx.Check += TwinCorePortRx.Buffer[i];
				}
				if (TwinCorePortRx.Check == TwinCorePortRx.Buffer[TwinCorePortRx.Stack - 1]) {
					for (i = 0; i < TwinCoreRxChNum; i++)
					{
						twinCore.data[i] = (TwinCorePortRx.Buffer[begin + i * 2 + 4] << 8) | TwinCorePortRx.Buffer[begin + i * 2 + 5];
					}
					TwinCore_Debug();
				}
				TwinCorePortRx.Stack = 0;
			}
			else if (TwinCorePortRx.Stack >= TwinCoreRxCmdLen
					&& TwinCorePortRx.Buffer[TwinCorePortRx.Stack - TwinCoreRxCmdLen]    ==0xff
					&& TwinCorePortRx.Buffer[TwinCorePortRx.Stack - TwinCoreRxCmdLen + 1]==0x55
					&& TwinCorePortRx.Buffer[TwinCorePortRx.Stack - TwinCoreRxCmdLen + 2]==0xaa
					&& TwinCorePortRx.Buffer[TwinCorePortRx.Stack - TwinCoreRxCmdLen + 3]==0x77) { // cmd
				TwinCorePortRx.Check = 0;
				begin = TwinCorePortRx.Stack - TwinCoreRxCmdLen;
				for (i = begin; i < TwinCorePortRx.Stack - 1; i++)
					TwinCorePortRx.Check += TwinCorePortRx.Buffer[i];
				if(TwinCorePortRx.Check == TwinCorePortRx.Buffer[TwinCorePortRx.Stack - 1])
					TwinCore_Cmd(TwinCoreCmdNum, TwinCoreCmdData);
				TwinCorePortRx.Stack = 0;
			}
		}
		else
			TwinCorePortRx.Stack = 0;
	}
}

/****Objects**************************************************/

TWINCORE_CLASS twinCore = {
	&TWINCORE_Init,
	&TWINCORE_Set,
	&TWINCORE_Send
};
