#include "ledArray.h"

/****Discription**********************************************/

/*
	0.�ȵ���ledArray.Init()��ʹ�ñ�����
	1.����Ҫ�޸�ĳһ������ĳ�����Ƶ�״̬��
		ʹ��ledArray.Set(int , int);���ﵽĿ��
		��һ������ΪLED�ı�ţ�����ʹ��LED(x)����������������LED0_7	LED8_15
			������ | ������
		�ڶ�������Ϊ״̬����һ������ѡ�е�LED���ȫ�����Ϊ���״̬
			��ѡ��״̬ΪLEDARRAY_ON����LEDARRAY_OFF
	2.����Ҫͬʱ�޸�����LED��״̬����ÿ��LED״̬���ܲ�ͬʱ
		ʹ��ledArray.Show(int);���ﵽĿ��
		ֻ��һ����������������ĵ�16λ�ֱ����16���Ƶ�״̬
	3.���Ҫ��ʾ�ַ�����������ģ��ȡ�����ȡ16�����ظߵ�����
		����ȡ������ģ�滻�����ļ��µ�CH16x16�����е�Ԫ��
		�����ļ��µ�LEDARRAY_CHNUM���ΪҪ��ʾ���ַ���
		�������Եص���ledArray.Go();��ѭ����ʾ�ַ�
		���ڵ��õ�����ʱ��ȡ�����˶��Ŀ���

	@Time	2018-08-01
	@Author	����
	@Usefor	ҡҡ��16������������ģ��ȡ����ʾ����
*/

/****Definitions**********************************************/

#define LEDARRAY_CHNUM	4

#define LEDARRAY_PTx1	PTA
#define LEDARRAY_PTx2	PTB
#define LEDARRAY_Pinx1	GPIO_Pin24 | GPIO_Pin25 | GPIO_Pin26 | GPIO_Pin27 | GPIO_Pin28 | GPIO_Pin29
#define LEDARRAY_Pinx2	GPIO_Pin0_7 | GPIO_Pin18 | GPIO_Pin19

#define LED0(x)			PTA24_O = x
#define LED1(x)			PTA25_O = x
#define LED2(x)			PTA26_O = x
#define LED3(x)			PTA27_O = x
#define LED4(x)			PTA28_O = x
#define LED5(x)			PTA29_O = x
#define LED6(x)			PTB0_O  = x
#define LED7(x)			PTB1_O  = x
#define LED8(x)			PTB2_O  = x
#define LED9(x)			PTB3_O  = x
#define LED10(x)		PTB4_O  = x
#define LED11(x)		PTB5_O  = x
#define LED12(x)		PTB6_O  = x
#define LED13(x)		PTB7_O  = x
#define LED14(x)		PTB18_O = x
#define LED15(x)		PTB19_O = x

/****Functions************************************************/

void LEDARRAY_Init(void);
void LEDARRAY_Set(int ledNum, int state);
void LEDARRAY_Show(int state);
void LEDARRAY_Go(void);

/****Variables************************************************/

static const char CH16x16[][32] =
{
//	{0xFC,0x44,0xFC,0x44,0xFC,0x20,0x10,0x18,0xA7,0x44,0xA4,0x14,0x0C,0x00,0x00,0x00,
//	0x1F,0x08,0x0F,0x08,0x1F,0x04,0x02,0xFD,0x44,0x44,0x44,0x45,0xFD,0x02,0x02,0x00}, // ��

	{0x10,0x10,0x10,0xFF,0x90,0x40,0x10,0x90,0x10,0x11,0x16,0x10,0x10,0xD0,0x10,0x00,
	0x02,0x42,0x81,0x7F,0x00,0x40,0x40,0x41,0x5E,0x40,0x40,0x70,0x4E,0x41,0x40,0x00}, // 12 ��
	{0x40,0x44,0x54,0x64,0x45,0x7E,0x44,0x44,0x44,0x7E,0x45,0x64,0x54,0x44,0x40,0x00,
	0x00,0x00,0x00,0xFF,0x49,0x49,0x49,0x49,0x49,0x49,0x49,0xFF,0x00,0x00,0x00,0x00}, // 13 ��
	{0x00,0x00,0x3E,0x22,0x2A,0x32,0x22,0xFE,0x22,0x32,0x2A,0x22,0x3E,0x00,0x00,0x00,
	0x88,0x68,0x09,0x09,0x29,0xC9,0x09,0x0F,0x29,0xC9,0x09,0x09,0x29,0xC8,0x08,0x00}, // 14 ��
	{0x10,0x88,0xC4,0x33,0x04,0xF4,0x94,0x94,0xF4,0x9F,0xF4,0x94,0x94,0xF4,0x04,0x00,
	0x01,0x00,0xFF,0x00,0x42,0x32,0x02,0x72,0x82,0x86,0x9A,0x82,0xE2,0x0A,0x32,0x00}, // 15 ��

	{0x00,0x3E,0x22,0xE2,0x22,0x3E,0x10,0xEC,0x27,0x24,0x24,0xE4,0x04,0xFC,0x00,0x00,
	0x20,0x3F,0x20,0x1F,0x11,0x11,0x00,0x3F,0x42,0x42,0x4A,0x53,0x48,0x47,0x70,0x00}, // ��

	{0xFC,0x04,0xFC,0x00,0xFE,0x42,0xBE,0x00,0xF2,0x12,0xF2,0x02,0xFE,0x02,0x00,0x00,
	0x0F,0x04,0x0F,0x00,0xFF,0x10,0x0F,0x00,0x0F,0x04,0x4F,0x80,0x7F,0x00,0x00,0x00} // ��
};

/****Objects**************************************************/

LEDARRAY_CLASS ledArray =
{
	.Init = &LEDARRAY_Init,
	.Set = &LEDARRAY_Set,
	.Show = &LEDARRAY_Show,
	.Go = &LEDARRAY_Go
};

/****Functions************************************************/

void LEDARRAY_Init(void)
{
	static GPIO_InitTypeDef GPIO_InitStructure;

	GPIO_InitStructure.GPIO_PTx = LEDARRAY_PTx1;
	GPIO_InitStructure.GPIO_Pins = LEDARRAY_Pinx1;
	GPIO_InitStructure.GPIO_Dir = DIR_OUTPUT;
	GPIO_InitStructure.GPIO_Output = OUTPUT_H;
	LPLD_GPIO_Init(GPIO_InitStructure);

	GPIO_InitStructure.GPIO_PTx = LEDARRAY_PTx2;
	GPIO_InitStructure.GPIO_Pins = LEDARRAY_Pinx2;
	GPIO_InitStructure.GPIO_Dir = DIR_OUTPUT;
	GPIO_InitStructure.GPIO_Output = OUTPUT_H;
	LPLD_GPIO_Init(GPIO_InitStructure);
}

void LEDARRAY_Set(int ledNum, int state)
{
	state = !state;
	if (ledNum & LED(0)) LED0(state);
	if (ledNum & LED(1)) LED1(state);
	if (ledNum & LED(2)) LED2(state);
	if (ledNum & LED(3)) LED3(state);
	if (ledNum & LED(4)) LED4(state);
	if (ledNum & LED(5)) LED5(state);
	if (ledNum & LED(6)) LED6(state);
	if (ledNum & LED(7)) LED7(state);
	if (ledNum & LED(8)) LED8(state);
	if (ledNum & LED(9)) LED9(state);
	if (ledNum & LED(10)) LED10(state);
	if (ledNum & LED(11)) LED11(state);
	if (ledNum & LED(12)) LED12(state);
	if (ledNum & LED(13)) LED13(state);
	if (ledNum & LED(14)) LED14(state);
	if (ledNum & LED(15)) LED15(state);
}

void LEDARRAY_Show(int state)
{
	state = ~state;
	LED0((state & LED(0)) && 1);
	LED1((state & LED(1)) && 1);
	LED2((state & LED(2)) && 1);
	LED3((state & LED(3)) && 1);
	LED4((state & LED(4)) && 1);
	LED5((state & LED(5)) && 1);
	LED6((state & LED(6)) && 1);
	LED7((state & LED(7)) && 1);
	LED8((state & LED(8)) && 1);
	LED9((state & LED(9)) && 1);
	LED10((state & LED(10)) && 1);
	LED11((state & LED(11)) && 1);
	LED12((state & LED(12)) && 1);
	LED13((state & LED(13)) && 1);
	LED14((state & LED(14)) && 1);
	LED15((state & LED(15)) && 1);
}

int cnt_ch = 0, cnt_step = 0;
void LEDARRAY_Go(void)
{
	ledArray.Show((CH16x16[cnt_ch][cnt_step]) | (CH16x16[cnt_ch][cnt_step + 16] << 8));

	cnt_step++;
	if (cnt_step >= 15)
	{
		cnt_step = 0;
		cnt_ch++;
		if (cnt_ch >= LEDARRAY_CHNUM)
			cnt_ch = 0;
	}
}
