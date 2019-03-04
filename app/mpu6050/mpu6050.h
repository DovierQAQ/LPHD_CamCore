#ifndef __MPU6050_H
#define __MPU6050_H

/****Includes*************************************************/

#include "common.h"
#include "i2c.h"

/****Definitions**********************************************/

#define USE_SEQ_READ		1       //����MPU6050�Ƿ�����
#define MPU6050_IIC_ADDR	0x68
#define MPU6050_X			1
#define MPU6050_Y			(1 << 1)
#define MPU6050_Z			(1 << 2)

typedef struct
{
	int16 x, y, z;
} AXESDATA;

typedef struct {
	float angleX;
	float angleY;
	float angleZ;
	unsigned flagX:1;
	unsigned flagY:1;
	unsigned flagZ:1;
	unsigned pause:1;
} PoseType; // 18-04-01 by gf

typedef struct
{
	uint8 (*Init)(void);
	uint8 (*GetAcc)(uint16 accNum);
	uint8 (*GetGry)(uint16 gryNum);
	void (*SetOffset)(int16 x, int16 y, int16 z);

	AXESDATA acc, gry, offset;
	PoseType pose;
} MPU6050_CLASS;

typedef enum
{
	MPU6050_ACC_FULLSCALE_2G	= 0x00,
	MPU6050_ACC_FULLSCALE_4G	= 0x01,
	MPU6050_ACC_FULLSCALE_8G	= 0x02,
	MPU6050_ACC_FULLSCALE_16G	= 0x03
} MPU6050_ACC_Fullscale_t;

typedef enum
{
	MPU6050_GRY_FULLSCALE_250	= 0x00,
	MPU6050_GRY_FULLSCALE_500	= 0x01,
	MPU6050_GRY_FULLSCALE_1000	= 0x02,
	MPU6050_GRY_FULLSCALE_2000	= 0x03
} MPU6050_GRY_Fullscale_t;

typedef enum
{
	MPU6050_ODR_1000HZ			= 0x00,
	MPU6050_ODR_500HZ			= 0x01,
	MPU6050_ODR_250HZ			= 0x03,
	MPU6050_ODR_100HZ			= 0x09,
	MPU6050_ODR_50HZ			= 0x13
} MPU6050_ODR;

typedef enum
{
	MPU6050_SLEEP				= 0x01,
	MPU6050_ACTIVE				= 0x00
} MPU6050_Status_t;

typedef enum
{
	MPU6050_DLPF_BW_256			= 0x00,
	MPU6050_DLPF_BW_188			= 0x01,
	MPU6050_DLPF_BW_98			= 0x02,
	MPU6050_DLPF_BW_42			= 0x03,
	MPU6050_DLPF_BW_20			= 0x04,
	MPU6050_DLPF_BW_10			= 0x05,
	MPU6050_DLPF_BW_5			= 0x06
} MPU6050_DLPF_t;

//MPU6050�ڲ��Ĵ���
#define	MPU6050_SMPLRT_DIV		(0x19)	//�����ǲ����ʣ�����ֵ��0x07(125Hz)
#define	MPU6050_CONFIG			(0x1A)	//��ͨ�˲�Ƶ�ʣ�����ֵ��0x06(5Hz)
#define	MPU6050_GYRO_CONFIG		(0x1B)	//�������Լ켰������Χ������ֵ��0x18(���Լ죬2000deg/s)
#define	MPU6050_ACCEL_CONFIG	(0x1C)	//���ټ��Լ졢������Χ����ͨ�˲�Ƶ�ʣ�����ֵ��0x01(���Լ죬2G��5Hz)
#define	MPU6050_ACCEL_XOUT_H	(0x3B)  //X����ٶ�  ���ٶ�
#define	MPU6050_ACCEL_XOUT_L	(0x3C)
#define	MPU6050_ACCEL_YOUT_H	(0x3D)  //Y����ٶ�
#define	MPU6050_ACCEL_YOUT_L	(0x3E)
#define	MPU6050_ACCEL_ZOUT_H	(0x3F)  //Z����ٶ�
#define	MPU6050_ACCEL_ZOUT_L	(0x40)
#define	MPU6050_TEMP_OUT_H		(0x41)
#define	MPU6050_TEMP_OUT_L		(0x42)
#define	MPU6050_GYRO_XOUT_H		(0x43)  //X����ٶ�  ������
#define	MPU6050_GYRO_XOUT_L		(0x44)
#define	MPU6050_GYRO_YOUT_H		(0x45)  //Y����ٶ�
#define	MPU6050_GYRO_YOUT_L		(0x46)
#define	MPU6050_GYRO_ZOUT_H		(0x47)  //Z����ٶ�
#define	MPU6050_GYRO_ZOUT_L		(0x48)
#define	MPU6050_PWR_MGMT_1		(0x6B)	//��Դ��������ֵ��0x00(��������)
#define	MPU6050_WHO_AM_I		(0x0F)	//IIC��ַ�Ĵ���(Ĭ����ֵ0x68��ֻ��)
#define	MPU6050_ID				(0x68)
#define	MPU6050_SlaveAddress	(MPU6050_IIC_ADDR)	//Ӳ��I2C��ַ0x68 ���I2C��ַ0xD0

/****Variables************************************************/

extern MPU6050_CLASS mpu6050;

/****Functions************************************************/

/*************************************************************/

#endif /* __MPU6050_H */
