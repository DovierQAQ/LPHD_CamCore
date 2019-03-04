#include "uart.h"

/****Discription**********************************************/

/*
	0.需先调用uart.Init()函数再使用本驱动
	1.与FreeCars上位机相对应的uart驱动及应用文件
	2.如果使用虚拟示波器功能，则在某一个定时器里面调用uart.SendToScope();
	3.如果需要改变某一个通道发送的数值，则调用uart.Set(channel, data);
		第一个参数为通道编号，第二个为数据，16位整形
	4.如果要使用上位机发送参数的功能，则在UART_Debug函数里面给所需的变量赋值
		访问uartData[]数组的成员就行
	5.如果要使用上位机热键功能，则在UART_Cmd函数的对应位置写好自己的操作就行

	@Time	2018-03-30
	@Author	gf
	@Usefor	FreeCars
*/

/****Definitions**********************************************/

/****Functions************************************************/

void UART_isr(void);

/****Variables************************************************/

double UartData[9] = {0};
uint8 sendData[34] = {0};

SerialPortType SerialPortRx;

/****Functions************************************************/

static void UartDebug(void) {
//	int temp;

//	temp = (int)UartData[0];
//	if (temp != 0)
//		pid.leftMoto.kp = temp;

//	temp = (int)UartData[1];
//	if (temp != 0)
//		pid.leftMoto.ki = temp;
//	temp = (int)UartData[2];
//	if (temp != 0)
//		pid.leftMoto.kd = temp;
//	temp = (int)UartData[3];
//	if (temp != 0)
//		pid.rightMoto.kp = temp;
//	temp = (int)UartData[4];
//	if (temp != 0)
//		pid.rightMoto.ki = temp;
//	temp = (int)UartData[5];
//	if (temp != 0)
//		pid.leftMoto.kd = temp;
//	if (UartData[6] != 0)
//		pid.turner.kp = UartData[6];
//	if (UartData[7] != 0)
//		pid.turner.kd = UartData[7];
//	if (UartData[8] != 0)
//		pid.turner.fuzzy_k = UartData[8];
}

static void UartCmd(uint8 CmdNum,uint8 Data) {
	if (CmdNum == 2 && Data == 102) { // page up
		;
	}
	if (CmdNum == 2 && Data == 103) { //page down
		;
	}
}

static void UART_Init(void) {
	static UART_InitTypeDef UART_InitStructure;

	UART_InitStructure.UART_Uartx = WHICH_UART;
	UART_InitStructure.UART_BaudRate = BAUDRATE;
	UART_InitStructure.UART_RxPin = UART_RxPinx;
	UART_InitStructure.UART_TxPin = UART_TxPinx;
	UART_InitStructure.UART_RxIntEnable = TRUE;
	UART_InitStructure.UART_RxIsr = UART_isr;

	LPLD_UART_Init(UART_InitStructure);
	LPLD_UART_EnableIrq(UART_InitStructure);
}

static void UART_Putchar(char ch) {
	LPLD_UART_PutChar(WHICH_UART, ch);
}

static void UART_Printf(char *str) {
	int i = 0;

	while (str[i] != '\0')
	{
		UART_Putchar(str[i]);
		i++;
	}
}

static void UART_Set(int chx, int data) {
	sendData[chx * 2] = HIGHBYTE(data);
	sendData[chx * 2 + 1] = LOWBYTE(data);
}

static void UART_SendToScope(void) {
	int i = 0;
	uint8 sum = 0;

	UART_Putchar(251);
	UART_Putchar(109);
	UART_Putchar(37);

	sum += (251 + 109 + 37);

	for (i = 0; i < UartRxChNum * 2; i++) {
		UART_Putchar(sendData[i]);
		sum += sendData[i];
	}

	UART_Putchar(sum);
}

void UART_isr(void) {
	int i, begin, d1;
	uint32 d;

	if ((UART0->S1 & UART_S1_RDRF_MASK) && (UART0->C2 & UART_C2_RIE_MASK)) {
		SerialPortRx.Data = LPLD_UART_GetChar(WHICH_UART);
		if (SerialPortRx.Stack < UartRxBufferLen) {
			SerialPortRx.Buffer[SerialPortRx.Stack++] = SerialPortRx.Data;
			if (SerialPortRx.Stack >= UartRxDataLen
				&& SerialPortRx.Buffer[SerialPortRx.Stack - UartRxDataLen]    ==0xff
				&& SerialPortRx.Buffer[SerialPortRx.Stack - UartRxDataLen + 1]==0x55
				&& SerialPortRx.Buffer[SerialPortRx.Stack - UartRxDataLen + 2]==0xaa
				&& SerialPortRx.Buffer[SerialPortRx.Stack - UartRxDataLen + 3]==0x10) {
				SerialPortRx.Check = 0;
				begin = SerialPortRx.Stack - UartRxDataLen;
				for(i = begin; i < SerialPortRx.Stack - 1; i++) {
					SerialPortRx.Check += SerialPortRx.Buffer[i];
				}
				if (SerialPortRx.Check == SerialPortRx.Buffer[SerialPortRx.Stack - 1]) {
					for (i = 0; i < 9; i++) {
						d = SerialPortRx.Buffer[begin + i * 4 + 4] * 0x1000000L + SerialPortRx.Buffer[begin + i * 4 + 5] * 0x10000L +
							SerialPortRx.Buffer[begin + i * 4 + 6] * 0x100L + SerialPortRx.Buffer[begin + i * 4 + 7];
						if (d > 0x7FFFFFFF)
							d1 = 0x7FFFFFFF - d;
						else
							d1 = d;
						UartData[i] = d1;
						UartData[i] /= 65536.0;
					}
					UartDebug();
				}
				SerialPortRx.Stack = 0;
			}
			else if (SerialPortRx.Stack >= UartRxCmdLen
					&& SerialPortRx.Buffer[SerialPortRx.Stack - UartRxCmdLen]    ==0xff
					&& SerialPortRx.Buffer[SerialPortRx.Stack - UartRxCmdLen + 1]==0x55
					&& SerialPortRx.Buffer[SerialPortRx.Stack - UartRxCmdLen + 2]==0xaa
					&& SerialPortRx.Buffer[SerialPortRx.Stack - UartRxCmdLen + 3]==0x77) { // cmd
				SerialPortRx.Check = 0;
				begin = SerialPortRx.Stack - UartRxCmdLen;
				for (i = begin; i < SerialPortRx.Stack - 1; i++)
					SerialPortRx.Check += SerialPortRx.Buffer[i];
				if(SerialPortRx.Check == SerialPortRx.Buffer[SerialPortRx.Stack - 1])
					UartCmd(UartCmdNum, UartCmdData);
				SerialPortRx.Stack = 0;
			}
		}
		else
			SerialPortRx.Stack = 0;
	}
}

void Image_2_computer(void)
{
	int i, j, k;
	uint8 temp;

	uart.Putchar(0x01);
	uart.Putchar(0xFE);

	for (i = 0; i < ROW; i++)
	{
		for (j = 0; j < (COLUMN >> 3); j++)
		{
			temp = 0;
			for (k = 0; k < 8; k++)
				temp |= (camera.img[i][(j << 3) + (7 - k)] && 1) << k;
			uart.Putchar(~temp);
		}
	}

	uart.Putchar(0xFE);
	uart.Putchar(0x01);
} // 18-04-01 by gf

//int fputc(int ch, FILE *f)
//{
//	uart.Putchar((unsigned char)ch);
//
//	//while(USART_GetFlagStatus(Usartx, USART_FLAG_TC) != SET);
//
//	return ch;
//}

/****Objects**************************************************/

UART_CLASS uart = {
	&UART_Init,
	&UART_Putchar,
	&UART_Printf,
	&UART_Set,
	&UART_SendToScope,
	&Image_2_computer
};
