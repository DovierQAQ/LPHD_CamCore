#include "camera.h"

/****Discription**********************************************/

/*
	0.摄像头驱动程序
	1.需先调用camera.Init()函数再使用本驱动，返回值为错误信息，0为无错
	2.camera.isReady表示摄像头是否准备好图像，为1表示可以进行解压
	3.camera.Extract()函数用来解压图像
	4.如果要修改gamma值，一种方法是在Init之前修改camera.cnst
	5.camera.img为获取到的图像数组

	@Time	2017-04-24
	@Author	郭帆
	@Usefor	摄像头
*/

/****Variables************************************************/

reg_s regaCameraEagle[] =
{
	//寄存器，寄存器值次

	/*50帧：
	{COM4, 0xC1},
	{CLKRC, 0x02},

	75帧：
	{COM4, 0x41},
	{CLKRC, 0x00},


	112帧：
	{COM4, 0x81},
	{CLKRC, 0x00},


	150帧：
	{COM4, 0xC1},
	{CLKRC, 0x00},
	*/
	{OV7725_COM4,		0xC1},
	{OV7725_CLKRC,		0x00},
	\

	{OV7725_COM2,		0x03},
	{OV7725_COM3,		0xD0},
	{OV7725_COM7,		0x40},
	{OV7725_HSTART,		0x3F},
	{OV7725_HSIZE,		0x50},
	{OV7725_VSTRT,		0x03},
	{OV7725_VSIZE,		0x78},
	{OV7725_HREF,		0x00},
	{OV7725_SCAL0,		0x0A},
	{OV7725_AWB_Ctrl0,	0xE0},
	{OV7725_DSPAuto,	0xff},
	{OV7725_DSP_Ctrl2,	0x0C},
	{OV7725_DSP_Ctrl3,	0x00},
	{OV7725_DSP_Ctrl4,	0x00},

#if (CAMERA_W == 80)
	{OV7725_HOutSize, 0x14},
#elif (CAMERA_W == 160)
	{OV7725_HOutSize, 0x28},
#elif (CAMERA_W == 240)
	{OV7725_HOutSize, 0x3c},
#elif (CAMERA_W == 320)
	{OV7725_HOutSize, 0x50},
#else

#endif

#if (CAMERA_H == 60 )
	{OV7725_VOutSize, 0x1E},
#elif (CAMERA_H == 120 )
	{OV7725_VOutSize, 0x3c},
#elif (CAMERA_H == 180 )
	{OV7725_VOutSize, 0x5a},
#elif (CAMERA_H == 240 )
	{OV7725_VOutSize, 0x78},
#else

#endif

	{OV7725_EXHCH,		0x00},
	{OV7725_GAM1,		0x0c},
	{OV7725_GAM2,		0x16},
	{OV7725_GAM3,		0x2a},
	{OV7725_GAM4,		0x4e},
	{OV7725_GAM5,		0x61},
	{OV7725_GAM6,		0x6f},
	{OV7725_GAM7,		0x7b},
	{OV7725_GAM8,		0x86},
	{OV7725_GAM9,		0x8e},
	{OV7725_GAM10,		0x97},
	{OV7725_GAM11,		0xa4},
	{OV7725_GAM12, 		0xaf},
	{OV7725_GAM13, 		0xc5},
	{OV7725_GAM14,		0xd7},
	{OV7725_GAM15,		0xe8},
	{OV7725_SLOP,		0x20},
	{OV7725_LC_RADI,	0x00},
	{OV7725_LC_COEF,	0x13},
	{OV7725_LC_XC,		0x08},
	{OV7725_LC_COEFB,	0x14},
	{OV7725_LC_COEFR,	0x17},
	{OV7725_LC_CTR,		0x05},
	{OV7725_BDBase,		0x99},
	{OV7725_BDMStep,	0x03},
	{OV7725_SDE,		0x04},
	{OV7725_BRIGHT,		0x00},
	{OV7725_CNST,		0x45},//gamma
	{OV7725_SIGN,		0x06},
	{OV7725_UVADJ0,		0x11},
	{OV7725_UVADJ1,		0x02}
};

/****Variables************************************************/

const uint8 c_ubyColor[] = {253, 0};

uint8 ubyCameraEagle_CfgNum = ARR_SIZE(regaCameraEagle);
int nFlag_Range = 1;
uint8 ubyRange;

/****Function list********************************************/

uint8 ubyCamera_Init(void);
void Camera_ChangeGamma(int gamma);
void Img_extract(void);
void Img_diffExtract(void);
void DMA_Complete_isr(void);
void IMG_isr(void);

/****Objects**************************************************/

CAMERA_CLASS camera =
{
	&ubyCamera_Init,
	&Camera_ChangeGamma,
	&Img_extract,
	&Img_diffExtract,
	1,
	253,
	0,
	64
};

/****Functions************************************************/

static void Camera_Delay(void)
{
	int i, n;

	for (i = 0; i < 100; i++)
		for (n = 0; n < 200; n++)
			asm("nop");
}

static void Camera_GPIO_Init(void)
{
	static GPIO_InitTypeDef isr_InitStructure;
	static GPIO_InitTypeDef DMA_GPIO_InitStructure;
	static GPIO_InitTypeDef CameraPT_InitStructure;
	static DMA_InitTypeDef DMA_InitStructure;

	/* img interrupt */
	isr_InitStructure.GPIO_PTx = IMG_IRQ_PTx;
	isr_InitStructure.GPIO_Pins = IMG_IRQ_Pin;
	isr_InitStructure.GPIO_Dir = DIR_INPUT;
	isr_InitStructure.GPIO_PinControl = IRQC_FA | INPUT_PF_EN;
	isr_InitStructure.GPIO_Isr = IMG_isr;
	LPLD_GPIO_Init(isr_InitStructure);
	LPLD_GPIO_EnableIrq(isr_InitStructure);

	CameraPT_InitStructure.GPIO_PTx = CameraPT_PTx;
	CameraPT_InitStructure.GPIO_Pins = CameraPT_Pin;
	CameraPT_InitStructure.GPIO_Dir = DIR_INPUT;
	CameraPT_InitStructure.GPIO_PinControl = IRQC_DIS;
	LPLD_GPIO_Init(CameraPT_InitStructure);

	DMA_GPIO_InitStructure.GPIO_PTx = DMA_PTx;
	DMA_GPIO_InitStructure.GPIO_Pins = DMA_Pin;
	DMA_GPIO_InitStructure.GPIO_Dir = DIR_INPUT;
	DMA_GPIO_InitStructure.GPIO_PinControl = IRQC_DMAFA | INPUT_PULL_DIS;
	LPLD_GPIO_Init(DMA_GPIO_InitStructure);

	DMA_InitStructure.DMA_CHx = DMA_CH0;
	DMA_InitStructure.DMA_Req = DMA_REQ;	//PORTB为请求源
	DMA_InitStructure.DMA_MajorLoopCnt = ROW * COLUMN / 8;
	DMA_InitStructure.DMA_MinorByteCnt = 1;
	DMA_InitStructure.DMA_SourceAddr = (uint32)&PTC->PDIR;//源地址：PTC0-PTC7
	DMA_InitStructure.DMA_DestAddr = (uint32)camera.buf1;
	DMA_InitStructure.DMA_DestAddrOffset = 1;
	DMA_InitStructure.DMA_MajorCompleteIntEnable = TRUE;
	DMA_InitStructure.DMA_AutoDisableReq = TRUE;
	DMA_InitStructure.DMA_Isr = DMA_Complete_isr;
	LPLD_DMA_Init(DMA_InitStructure);
	LPLD_DMA_EnableIrq(DMA_InitStructure);
}

uint8 ubyCamera_Init(void)
{
	uint16 i = 0;
	uint8 ubyDeviceID = 0;

	LPLD_SCCB_Init();

	Camera_GPIO_Init();

	Camera_Delay();

	/* reset */
	while (!LPLD_SCCB_WriteReg(OV7725_COM7, 0x80))
	{
		i++;
		if (i == 500)
			return 1; // 通信失败
	}

	Camera_Delay();

	if (!LPLD_SCCB_ReadReg(OV7725_VER, &ubyDeviceID, 1))
		return 2; // 摄像头验证失败

	Camera_Delay();

	if (ubyDeviceID == OV7725_ID)
	{
		for (i = 0; i < ubyCameraEagle_CfgNum; i++)
		{
			if (!LPLD_SCCB_WriteReg(regaCameraEagle[i].addr, regaCameraEagle[i].val))
				return 3; // 寄存器初始化失败
		}

		LPLD_SCCB_WriteReg(OV7725_CNST, camera.cnst);
	}
	else
		return 4; // 摄像头不是7725

	return 0;
}

void Camera_ChangeGamma(int gamma)
{
	LPLD_SCCB_WriteReg(OV7725_CNST, gamma);
}

void Img_extract(void)
{
	uint8 i, j, k;

	camera.isReady = 0;

	if (ubyRange)
	{
		for (i = 0; i < ROW; i++)
			for (j = 0; j < (COLUMN >> 3); j++)
				for (k = 0; k < 8; k++)
					camera.img[i][(j << 3) + k] = c_ubyColor[(camera.buf1[i][j] >> (7 - k) & 0x01)];
	}
	else
	{
		for (i = 0; i < ROW; i++)
			for (j = 0; j < (COLUMN >> 3); j++)
				for (k = 0; k < 8; k++)
					camera.img[i][(j << 3) + k] = c_ubyColor[(camera.buf2[i][j] >> (7 - k) & 0x01)];
	}
}

void Img_diffExtract(void)
{
	uint8 i, j, k;
	uint8 tempNow, tempOld;

	camera.isReady = 0;

	if (ubyRange)
	{
		for (i = 0; i < ROW; i++)
		{
			tempOld = camera.buf1[i][0] >> 7 & 0x01;
			for(j = 0; j < (COLUMN >> 3); j++)
			{
				for (k = 0; k < 8; k++)
				{
					tempNow = camera.buf1[i][j] >> (7 - k) & 0x01;
					camera.img[i][(j << 3) + k] = c_ubyColor[!(tempOld ^ tempNow)];

					tempOld = tempNow;
				}
			}
		}
	}
	else
	{
		for (i = 0; i < ROW; i++)
		{
			tempOld = camera.buf2[i][0] >> 7 & 0x01;
			for(j = 0; j < COLUMN / 8; j++)
			{
				for (k = 0; k < 8; k++)
				{
					tempNow = camera.buf2[i][j] >> (7 - k) & 0x01;
					camera.img[i][j * 8 + k] = c_ubyColor[!(tempOld ^ tempNow)];

					tempOld = tempNow;
				}
			}
		}
	}
}

void DMA_Complete_isr(void)
{
	camera.isReady = 1;
	nFlag_Range = 1;

	if (ubyRange)
		ubyRange = 0;
	else
		ubyRange = 1;
}

void IMG_isr(void)
{
	static short i;

	if (LPLD_GPIO_IsPinxExt(IMG_IRQ_PORT, IMG_IRQ_Pin))
	{
		i++;
		if (i >= 3)
		{
			if (nFlag_Range)
			{
				nFlag_Range = 0;
				i = 0;

				if (ubyRange)
					LPLD_DMA_LoadDstAddr(DMA_CH0, (uint8 *)camera.buf1 - 1);
				else
					LPLD_DMA_LoadDstAddr(DMA_CH0, (uint8 *)camera.buf2 - 1);

				LPLD_DMA_EnableReq(DMA_CH0);
			}
		}
		LPLD_GPIO_ClearIntFlag(IMG_IRQ_PORT);
	}
}
