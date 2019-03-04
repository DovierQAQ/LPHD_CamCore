#ifndef __TWINCORE_H
#define __TWINCORE_H

/****Includes*************************************************/

#include "common.h"
#include "mpu6050.h"
#include "UI.h"
#include "camera.h"

/****Definitions**********************************************/

#define TWINCORE_ROLL			0

#if TWINCORE_ROLL
#define TWINCORE_UART  			UART4
#define TWINCORE_RxPinx 		PTC14
#define TWINCORE_TxPinx			PTC15
#else
#define TWINCORE_UART  			UART4
#define TWINCORE_RxPinx 		PTE25
#define TWINCORE_TxPinx			PTE24
#endif /* TWINCORE_ROLL */

#define TWINCORE_BAUDRATE		115200

#define TwinCoreRxBufferLen		100
#define TwinCoreRxDataLen		25 // 4 + 10*2 + 1
#define TwinCoreRxCmdLen		7
#define TwinCoreRxChNum			10
#define TwinCoreCmdNum			TwinCorePortRx.Buffer[TwinCorePortRx.Stack - 3]
#define TwinCoreCmdData			TwinCorePortRx.Buffer[TwinCorePortRx.Stack - 2]

#define TWINCORE_HIGHBYTE(x)	(uint8)(x >> 8)
#define TWINCORE_LOWBYTE(x)		(uint8)(x & 0xFF)

typedef struct
{
	void (*Init)(void);
	void (*Set)(int chx, int data);
	void (*Send)(void);

	int16 data[TwinCoreRxChNum];
} TWINCORE_CLASS;

typedef struct
{
	int Stack;
	uint8 Data;
	uint8 PreData;
	uint8 Buffer[TwinCoreRxBufferLen];
	uint8 Enable;
	uint8 Check;
} TwinCorePortType;

/****Variables************************************************/

extern TWINCORE_CLASS twinCore;

/****Functions************************************************/

/*************************************************************/

#endif /* __TWINCORE_H */
