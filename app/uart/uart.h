#ifndef __UART_H
#define __UART_H

/****Includes*************************************************/

#include "common.h"
#include "camera.h"

/****Definitions**********************************************/

#define WHICH_UART  	UART0
#define UART_RxPinx 	PTA1
#define UART_TxPinx		PTA2

#define BAUDRATE		115200

#define UartRxBufferLen	100
#define UartRxDataLen	41
#define UartRxCmdLen	7
#define UartRxChNum		17
#define UartCmdNum		SerialPortRx.Buffer[SerialPortRx.Stack - 3]
#define UartCmdData		SerialPortRx.Buffer[SerialPortRx.Stack - 2]

#define HIGHBYTE(x)	(uint8)(x >> 8)
#define LOWBYTE(x)	(uint8)(x & 0xFF)

typedef struct
{
	void (*Init)(void);
	void (*Putchar)(char ch);
	void (*Printf)(char *str);
	void (*Set)(int chx, int data);
	void (*SendToScope)(void);
	void (*SendImg)(void);
} UART_CLASS;

typedef struct
{
	int Stack;
	uint8 Data;
	uint8 PreData;
	uint8 Buffer[UartRxBufferLen];
	uint8 Enable;
	uint8 Check;
} SerialPortType;

/****Variables************************************************/

extern UART_CLASS uart;

/****Functions************************************************/

/*************************************************************/

#endif /* __UART_H */
