#include "i2c.h"

/****Discription**********************************************/

/*
	0.需先调用i2c.Init()函数再使用本驱动
		有返回值，0表示成功
	1.头文件中修改I2C模块与引脚以及时钟频率
	2.i2c.ReadReg()获得8位寄存器数据
		i2c.ReadWord()获得16位数据
	3.i2c.WriteReg()填寄存器

	@Time	2018-04-25
	@Author	郭帆
	@Usefor	mpu6050
*/

/****Definitions**********************************************/

/****Functions************************************************/

uint8 I2C_Init(void);
uint8 I2C_ReadReg(uint8 addr, uint8 reg);
uint16 I2C_ReadWord(uint8 addr, uint8 reg, IIC_LSB_TURN tn);
uint8 I2C_WriteReg(uint8 addr, uint8 writeAddr, uint8 data);

/****Variables************************************************/

/****Objects**************************************************/

I2C_CLASS i2c =
{
	&I2C_Init,
	&I2C_ReadReg,
	&I2C_ReadWord,
	&I2C_WriteReg
};

/****Functions************************************************/

static void I2C_Delay(void)
{
	for (int i = 0; i < 100; i++) asm("nop");
}

uint8 I2C_Init(void)
{
	static I2C_InitTypeDef I2C_InitStructure;

	I2C_InitStructure.I2C_I2Cx		= I2C_IICx;
	I2C_InitStructure.I2C_IntEnable	= FALSE;
	I2C_InitStructure.I2C_ICR		= I2C_SCL_FREQ;
	I2C_InitStructure.I2C_SclPin	= I2C_SCL_Pinx;
	I2C_InitStructure.I2C_SdaPin	= I2C_SDA_Pinx;
	I2C_InitStructure.I2C_Isr		= NULL;

	if (LPLD_I2C_Init(I2C_InitStructure))
		return 0;

	return 1;
}

uint8 I2C_ReadReg(uint8 addr, uint8 reg)
{
	static uint8 result;
	//发送从机地址
	LPLD_I2C_StartTrans(I2C_IICx, addr, I2C_MWSR);
	LPLD_I2C_WaitAck(I2C_IICx, I2C_ACK_ON);
	//写MMA8451寄存器地址
	LPLD_I2C_WriteByte(I2C_IICx, reg);
	LPLD_I2C_WaitAck(I2C_IICx, I2C_ACK_ON);
	//再次产生开始信号
	LPLD_I2C_ReStart(I2C_IICx);
	//发送从机地址和读取位
	LPLD_I2C_WriteByte(I2C_IICx, (addr<<1)|I2C_MRSW);
	LPLD_I2C_WaitAck(I2C_IICx, I2C_ACK_ON);
	//转换主机模式为读
	LPLD_I2C_SetMasterWR(I2C_IICx, I2C_MRSW);
	//关闭应答ACK
	LPLD_I2C_WaitAck(I2C_IICx, I2C_ACK_OFF);//关闭ACK
	//读IIC数据
	result = LPLD_I2C_ReadByte(I2C_IICx);
	LPLD_I2C_WaitAck(I2C_IICx, I2C_ACK_ON);
	//发送停止信号
	LPLD_I2C_Stop(I2C_IICx);
	//读IIC数据
	result = LPLD_I2C_ReadByte(I2C_IICx);

	I2C_Delay();
	return result;
}

uint16 I2C_ReadWord(uint8 addr, uint8 reg, IIC_LSB_TURN tn)
{
	int16 result_L, result_H;

	//int i = 0;
	//发送从机地址
	LPLD_I2C_StartTrans(I2C_IICx, addr, I2C_MWSR);
	LPLD_I2C_WaitAck(I2C_IICx, I2C_ACK_ON);
	//写MMA8451寄存器地址
	LPLD_I2C_WriteByte(I2C_IICx, reg);
	LPLD_I2C_WaitAck(I2C_IICx, I2C_ACK_ON);
	//再次产生开始信号
	LPLD_I2C_ReStart(I2C_IICx);
	//发送从机地址和读取位
	LPLD_I2C_WriteByte(I2C_IICx, (addr<<1)|I2C_MRSW);
	LPLD_I2C_WaitAck(I2C_IICx, I2C_ACK_ON);


	//转换主机模式为读
	LPLD_I2C_SetMasterWR(I2C_IICx, I2C_MRSW);

	result_H = LPLD_I2C_ReadByte(I2C_IICx);
	I2C_IICx->C1 &= ~I2C_C1_TXAK_MASK;
	LPLD_I2C_WaitAck(I2C_IICx, I2C_ACK_ON);

	result_H = LPLD_I2C_ReadByte(I2C_IICx);
	I2C_IICx->C1 &= ~I2C_C1_TXAK_MASK;
	LPLD_I2C_WaitAck(I2C_IICx, I2C_ACK_ON);


	result_L = LPLD_I2C_ReadByte(I2C_IICx);

	LPLD_I2C_WaitAck(I2C_IICx, I2C_ACK_OFF);//关闭ACK
	LPLD_I2C_WaitAck(I2C_IICx, I2C_ACK_ON);
	LPLD_I2C_Stop(I2C_IICx);

	for (int i = 0; i<20; i++){
		asm("nop");
	}
	int t = 0;
	while ((I2C_IICx->S & I2C_S_BUSY_MASK))
	{
		LPLD_I2C_Stop(I2C_IICx);
		t++;
		if (t > 10)
		{
			I2C_Init();
			if (t > 13)
			{
				break;
			}
		}
	}
	if(tn==LSB_FIRST)
		result_H = result_L << 8 | result_H;
	else
		result_H = result_H << 8 | result_L;
	return result_H;
}

uint8 I2C_WriteReg(uint8 addr, uint8 writeAddr, uint8 data)
{
	LPLD_I2C_StartTrans(I2C_IICx, addr, I2C_MWSR);
	LPLD_I2C_WaitAck(I2C_IICx, I2C_ACK_ON);
	//写寄存器地址
	LPLD_I2C_WriteByte(I2C_IICx, writeAddr);
	LPLD_I2C_WaitAck(I2C_IICx, I2C_ACK_ON);
	//向寄存器中写具体数据
	LPLD_I2C_WriteByte(I2C_IICx, data);
	LPLD_I2C_WaitAck(I2C_IICx, I2C_ACK_ON);
	//发送停止信号
	LPLD_I2C_Stop(I2C_IICx);

	I2C_Delay();
	return 0;
}
