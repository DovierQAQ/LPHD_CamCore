#ifndef __I2C_H
#define __I2C_H

/****Includes*************************************************/

#include "common.h"

/****Definitions**********************************************/

#define I2C_IICx			I2C1
#define I2C_SCL_300KHz		0x20
#define I2C_SCL_400KHz		0x17
#define I2C_SCL_FREQ		I2C_SCL_400KHz
#define I2C_SCL_Pinx		PTC10
#define I2C_SDA_Pinx		PTC11

typedef enum
{
	LSB_FIRST = 0x01,
	MSB_FIRST = 0x00
} IIC_LSB_TURN;

typedef struct
{
	uint8 (*Init)(void);
	uint8 (*ReadReg)(uint8 addr, uint8 reg);
	uint16 (*ReadWord)(uint8 addr, uint8 reg, IIC_LSB_TURN tn);
	uint8 (*WriteReg)(uint8 addr, uint8 writeAddr, uint8 data);
} I2C_CLASS;

/****Variables************************************************/

extern I2C_CLASS i2c;

/****Functions************************************************/

/*************************************************************/

#endif /* __I2C_H */
