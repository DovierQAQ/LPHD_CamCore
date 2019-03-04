#include "MPU6050.h"

/****Discription**********************************************/

/*
	0.需先调用mpu6050.Init()函数再使用本驱动
	1.最好先调用mpu6050.SetOffset()来设置角速度零漂
		获得零漂的方法为让陀螺仪静止，看内存中获得的GRY值
	2.mpu6050.GetAcc/GetGry()函数为刷新相应的轴的值
		参数为轴可以MPU6050_X | MPU6050_Y
	3.访问mpu6050.acc.x可以获得x轴加速度的值

	@Time	2018-04-25
	@Author	郭帆
	@Usefor	mpu6050
*/

/****Definitions**********************************************/

/****Functions************************************************/

uint8 MPU6050_Init(void);
uint8 MPU6050_GetAcc(uint16 accNum);
uint8 MPU6050_GetGry(uint16 gryNum);
void MPU6050_SetOffset(int16 x, int16 y, int16 z);

uint8 MPU6050_SetACCFullScale(MPU6050_ACC_Fullscale_t fs);
uint8 MPU6050_SetGRYFullScale(MPU6050_GRY_Fullscale_t fs);
uint8 MPU6050_SetODR(MPU6050_ODR od);
uint8 MPU6050_SetLPF(MPU6050_DLPF_t hz);
uint8 MPU6050_SetMode(MPU6050_Status_t st);
uint8 MPU6050_GetAcc_X(int16_t* raw);
uint8 MPU6050_GetAcc_Y(int16_t* raw);
uint8 MPU6050_GetAcc_Z(int16_t* raw);
uint8 MPU6050_GetAngRateRaw_X(int16_t* raw);
uint8 MPU6050_GetAngRateRaw_Y(int16_t* raw);
uint8 MPU6050_GetAngRateRaw_Z(int16_t* raw);
uint8 MPU6050_GetChipID(uint8_t* buff);

/****Variables************************************************/

/****Objects**************************************************/

MPU6050_CLASS mpu6050 =
{
	&MPU6050_Init,
	&MPU6050_GetAcc,
	&MPU6050_GetGry,
	&MPU6050_SetOffset,

	{0}, {0}, {0}
};

/****Functions************************************************/

static void MPU6050_Delay(void)
{
	for (int i = 0; i < 1000; i++) asm("nop");
}

static uint8 MPU6050_Check(void)
{
	uint8 mpu6050ID = 0;

	MPU6050_GetChipID(&mpu6050ID);

	if (mpu6050ID != MPU6050_ID)
		return 1;

	return 0;
}

uint8 MPU6050_Init(void)
{
	int result = 0;

	if (i2c.Init()) result = 1;

	MPU6050_Delay();

	if (MPU6050_Check()) result = 1;

	MPU6050_SetACCFullScale(MPU6050_ACC_FULLSCALE_4G);
	MPU6050_SetGRYFullScale(MPU6050_GRY_FULLSCALE_500);
	MPU6050_SetODR(MPU6050_ODR_1000HZ);
	MPU6050_SetLPF(MPU6050_DLPF_BW_42);
	MPU6050_SetMode(MPU6050_ACTIVE);

	return result;
}

uint8 MPU6050_GetAcc(uint16 accNum)
{
	if (accNum & MPU6050_X) MPU6050_GetAcc_X(&mpu6050.acc.x);
	if (accNum & MPU6050_Y) MPU6050_GetAcc_Y(&mpu6050.acc.y);
	if (accNum & MPU6050_Z) MPU6050_GetAcc_Z(&mpu6050.acc.z);

	return 0;
}

uint8 MPU6050_GetGry(uint16 gryNum)
{
	if (gryNum & MPU6050_X)
	{
		MPU6050_GetAngRateRaw_X(&mpu6050.gry.x);
		mpu6050.gry.x = (int16)((float)mpu6050.gry.x / 65.5);
		mpu6050.gry.x -= mpu6050.offset.x;
		if (mpu6050.pose.flagX && !mpu6050.pose.pause /*&& abs(mpu6050.gry.x) > 10*/) mpu6050.pose.angleX += mpu6050.gry.x;
	}
	if (gryNum & MPU6050_Y)
	{
		MPU6050_GetAngRateRaw_Y(&mpu6050.gry.y);
		mpu6050.gry.y = (int16)((float)mpu6050.gry.y / 65.5);
		mpu6050.gry.y -= mpu6050.offset.y;
		if (mpu6050.pose.flagY && !mpu6050.pose.pause && abs(mpu6050.gry.y) > 10) mpu6050.pose.angleY += mpu6050.gry.y;
	}
	if (gryNum & MPU6050_Z)
	{
		MPU6050_GetAngRateRaw_Z(&mpu6050.gry.z);
		mpu6050.gry.z = (int16)((float)mpu6050.gry.z / 65.5);
		mpu6050.gry.z -= mpu6050.offset.z;
		if (mpu6050.pose.flagZ && !mpu6050.pose.pause /*&& abs(mpu6050.gry.z) > 10*/) mpu6050.pose.angleZ += mpu6050.gry.z;
	}

	return 0;
}

void MPU6050_SetOffset(int16 x, int16 y, int16 z)
{
	mpu6050.offset.x = x;
	mpu6050.offset.y = y;
	mpu6050.offset.z = z;
}

uint8_t MPU6050_ReadReg(uint8_t Reg, uint8_t* Data)
{
	//To be completed with either I2c or SPI reading function
	//i.e.: *Data = SPI_Mems_Read_Reg( Reg );
	*Data = i2c.ReadReg(MPU6050_SlaveAddress, Reg);
	return 0;
}

int16_t MPU6050_ReadWord(uint8_t Reg, int16_t* Data)
{
	//To be completed with either I2c or SPI reading function
	//i.e.: *Data = SPI_Mems_Read_Reg( Reg );
	*Data = i2c.ReadWord(MPU6050_SlaveAddress, Reg,MSB_FIRST);
	return 0;
}

uint8_t MPU6050_WriteReg(uint8_t Reg, uint8_t Data)
{
	//To be completed with either I2c or SPI writing function
	//i.e.: SPI_Mems_Write_Reg(Reg, Data);
	i2c.WriteReg(MPU6050_SlaveAddress, Reg, Data);
	return 0;
}

uint8 MPU6050_SetClockSource()
{
	return 0;
}

uint8 MPU6050_SetACCFullScale(MPU6050_ACC_Fullscale_t fs)
{
	if (!MPU6050_WriteReg(MPU6050_ACCEL_CONFIG, fs))
		return 1;

	return 0;
}

uint8 MPU6050_SetGRYFullScale(MPU6050_GRY_Fullscale_t fs)
{
	if (!MPU6050_WriteReg(MPU6050_GYRO_CONFIG, fs))
		return 1;

	return 0;
}

uint8 MPU6050_SetODR(MPU6050_ODR od)
{
	if (!MPU6050_WriteReg(MPU6050_SMPLRT_DIV, od))
		return 1;

	return 0;
}

uint8 MPU6050_SetLPF(MPU6050_DLPF_t hz)
{
	if (!MPU6050_WriteReg(MPU6050_CONFIG, hz))
		return 1;

	return 0;
}

uint8 MPU6050_SetMode(MPU6050_Status_t st)
{
	if (!MPU6050_WriteReg(MPU6050_PWR_MGMT_1, st))
		return 1;

	return 0;
}

uint8 MPU6050_GetAcc_X(int16_t *raw)
{
#if USE_SEQ_READ
	MPU6050_ReadWord(MPU6050_ACCEL_XOUT_H, raw);
#else
	uint8_t valueL;
	uint8_t valueH;
	if (!MPU6050_ReadReg(MPU6050_ACCEL_XOUT_L, &valueL))
		return 1;
	if (!MPU6050_ReadReg(MPU6050_ACCEL_XOUT_H, &valueH))
		return 1;
	*raw = (int16_t)((valueH << 8) | valueL);
#endif
	return 0;
}

uint8 MPU6050_GetAcc_Y(int16_t *raw)
{
#if USE_SEQ_READ
	MPU6050_ReadWord(MPU6050_ACCEL_YOUT_H, raw);
#else
	uint8_t valueL;
	uint8_t valueH;
	if (!MPU6050_ReadReg(MPU6050_ACCEL_YOUT_L, &valueL))
		return 1;
	if (!MPU6050_ReadReg(MPU6050_ACCEL_YOUT_H, &valueH))
		return 1;
	*raw = (int16_t)((valueH << 8) | valueL);
#endif
	return 0;
}

uint8 MPU6050_GetAcc_Z(int16_t *raw)
{
#if USE_SEQ_READ
	MPU6050_ReadWord(MPU6050_ACCEL_ZOUT_H, raw);
#else
	uint8_t valueL;
	uint8_t valueH;
	if (!MEMS_MPU6050_ReadReg(MPU6050_ACCEL_ZOUT_L, &valueL))
		return 1;
	if (!MEMS_MPU6050_ReadReg(MPU6050_ACCEL_ZOUT_H, &valueH))
		return 1;
	*raw = (int16_t)((valueH << 8) | valueL);
#endif
	return 0;
}

uint8 MPU6050_GetAngRateRaw_X(int16_t *raw)
{
#if USE_SEQ_READ
	MPU6050_ReadWord(MPU6050_GYRO_XOUT_H, raw);
#else
	uint8_t valueL;
	uint8_t valueH;
	if (!MPU6050_ReadReg(MPU6050_GYRO_XOUT_L, &valueL))
		return 1;
	if (!MPU6050_ReadReg(MPU6050_GYRO_XOUT_H, &valueH))
		return 1;
	*raw = (int16_t)((valueH << 8) | valueL);
#endif
	return 0;
}

uint8 MPU6050_GetAngRateRaw_Y(int16_t *raw)
{
#if USE_SEQ_READ
	MPU6050_ReadWord(MPU6050_GYRO_YOUT_H, raw);
#else
	uint8_t valueL;
	uint8_t valueH;
	if (!MPU6050_ReadReg(MPU6050_GYRO_YOUT_L, &valueL))
		return 1;
	if (!MPU6050_ReadReg(MPU6050_GYRO_YOUT_H, &valueH))
		return 1;
	*raw = (int16_t)((valueH << 8) | valueL);
#endif
	return 0;
}

uint8 MPU6050_GetAngRateRaw_Z(int16_t *raw)
{
#if USE_SEQ_READ
	MPU6050_ReadWord(MPU6050_GYRO_ZOUT_H, raw);
#else
	uint8_t valueL;
	uint8_t valueH;
	if (!MPU6050_ReadReg(MPU6050_GYRO_ZOUT_L, &valueL))
		return 1;
	if (!MPU6050_ReadReg(MPU6050_GYRO_ZOUT_H, &valueH))
		return 1;
	*raw = (int16_t)((valueH << 8) | valueL);
#endif
	return 0;
}

uint8 MPU6050_GetChipID(uint8_t *buff)
{
	if (!MPU6050_ReadReg(MPU6050_WHO_AM_I, buff))
		return 1;

	return 0;
}
