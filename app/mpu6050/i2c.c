#include "i2c.h"

/****Discription**********************************************/

/*
	0.���ȵ���i2c.Init()������ʹ�ñ�����
		�з���ֵ��0��ʾ�ɹ�
	1.ͷ�ļ����޸�I2Cģ���������Լ�ʱ��Ƶ��
	2.i2c.ReadReg()���8λ�Ĵ�������
		i2c.ReadWord()���16λ����
	3.i2c.WriteReg()��Ĵ���

	@Time	2018-04-25
	@Author	����
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
	//���ʹӻ���ַ
	LPLD_I2C_StartTrans(I2C_IICx, addr, I2C_MWSR);
	LPLD_I2C_WaitAck(I2C_IICx, I2C_ACK_ON);
	//дMMA8451�Ĵ�����ַ
	LPLD_I2C_WriteByte(I2C_IICx, reg);
	LPLD_I2C_WaitAck(I2C_IICx, I2C_ACK_ON);
	//�ٴβ�����ʼ�ź�
	LPLD_I2C_ReStart(I2C_IICx);
	//���ʹӻ���ַ�Ͷ�ȡλ
	LPLD_I2C_WriteByte(I2C_IICx, (addr<<1)|I2C_MRSW);
	LPLD_I2C_WaitAck(I2C_IICx, I2C_ACK_ON);
	//ת������ģʽΪ��
	LPLD_I2C_SetMasterWR(I2C_IICx, I2C_MRSW);
	//�ر�Ӧ��ACK
	LPLD_I2C_WaitAck(I2C_IICx, I2C_ACK_OFF);//�ر�ACK
	//��IIC����
	result = LPLD_I2C_ReadByte(I2C_IICx);
	LPLD_I2C_WaitAck(I2C_IICx, I2C_ACK_ON);
	//����ֹͣ�ź�
	LPLD_I2C_Stop(I2C_IICx);
	//��IIC����
	result = LPLD_I2C_ReadByte(I2C_IICx);

	I2C_Delay();
	return result;
}

uint16 I2C_ReadWord(uint8 addr, uint8 reg, IIC_LSB_TURN tn)
{
	int16 result_L, result_H;

	//int i = 0;
	//���ʹӻ���ַ
	LPLD_I2C_StartTrans(I2C_IICx, addr, I2C_MWSR);
	LPLD_I2C_WaitAck(I2C_IICx, I2C_ACK_ON);
	//дMMA8451�Ĵ�����ַ
	LPLD_I2C_WriteByte(I2C_IICx, reg);
	LPLD_I2C_WaitAck(I2C_IICx, I2C_ACK_ON);
	//�ٴβ�����ʼ�ź�
	LPLD_I2C_ReStart(I2C_IICx);
	//���ʹӻ���ַ�Ͷ�ȡλ
	LPLD_I2C_WriteByte(I2C_IICx, (addr<<1)|I2C_MRSW);
	LPLD_I2C_WaitAck(I2C_IICx, I2C_ACK_ON);


	//ת������ģʽΪ��
	LPLD_I2C_SetMasterWR(I2C_IICx, I2C_MRSW);

	result_H = LPLD_I2C_ReadByte(I2C_IICx);
	I2C_IICx->C1 &= ~I2C_C1_TXAK_MASK;
	LPLD_I2C_WaitAck(I2C_IICx, I2C_ACK_ON);

	result_H = LPLD_I2C_ReadByte(I2C_IICx);
	I2C_IICx->C1 &= ~I2C_C1_TXAK_MASK;
	LPLD_I2C_WaitAck(I2C_IICx, I2C_ACK_ON);


	result_L = LPLD_I2C_ReadByte(I2C_IICx);

	LPLD_I2C_WaitAck(I2C_IICx, I2C_ACK_OFF);//�ر�ACK
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
	//д�Ĵ�����ַ
	LPLD_I2C_WriteByte(I2C_IICx, writeAddr);
	LPLD_I2C_WaitAck(I2C_IICx, I2C_ACK_ON);
	//��Ĵ�����д��������
	LPLD_I2C_WriteByte(I2C_IICx, data);
	LPLD_I2C_WaitAck(I2C_IICx, I2C_ACK_ON);
	//����ֹͣ�ź�
	LPLD_I2C_Stop(I2C_IICx);

	I2C_Delay();
	return 0;
}
