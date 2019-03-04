#ifndef __NRF_H
#define __NRF_H

/****Includes*************************************************/

#include "common.h"

/****Definitions**********************************************/

#define NRF_ROLL		1

#if (NRF_ROLL == 0)
#define NRF_TX_ADDRESS			{0xDF, 0xFD, 0x10, 0x10, 0x01}
#define NRF_RX_ADDRESS			{0xDF, 0xFD, 0x10, 0x10, 0x01}
#define NRF_TX_CH				40
#define NRF_RX_CH				99
#elif (NRF_ROLL == 1)
#define NRF_TX_ADDRESS			{0xDF, 0xFD, 0x10, 0x10, 0x01}
#define NRF_RX_ADDRESS			{0xDF, 0xFD, 0x10, 0x10, 0x01}
#define NRF_TX_CH				99
#define NRF_RX_CH				40
#elif (NRF_ROLL == 2)
#define NRF_TX_ADDRESS			{0xDF, 0xFD, 0x10, 0x10, 0x01}
#define NRF_RX_ADDRESS			{0xDF, 0xFD, 0x10, 0x10, 0x01}
#define NRF_TX_CH				99
#define NRF_RX_CH				40 // ������
#endif /* ROLL */

//#if (NRF_ROLL == 0)
//#define NRF_TX_ADDRESS			{0xDF, 0xFD, 0x10, 0x10, 0x01}
//#define NRF_RX_ADDRESS			{0xDF, 0xFD, 0x10, 0x10, 0x02}
//#define NRF_TX_CH				40
//#define NRF_RX_CH				99
//#elif (NRF_ROLL == 1)
//#define NRF_TX_ADDRESS			{0xDF, 0xFD, 0x10, 0x10, 0x02}
//#define NRF_RX_ADDRESS			{0xDF, 0xFD, 0x10, 0x10, 0x01}
//#define NRF_TX_CH				99
//#define NRF_RX_CH				40
//#elif (NRF_ROLL == 2)
//#define NRF_TX_ADDRESS			{0xDF, 0xFD, 0x10, 0x10, 0x01}
//#define NRF_RX_ADDRESS			{0xDF, 0xFD, 0x10, 0x10, 0x01}
//#define NRF_TX_CH				40
//#define NRF_RX_CH				40 // ������
//#endif /* ROLL */

#define NRF_TX_SPIx				SPI2
#define NRF_TX_MOSI				PTD13
#define NRF_TX_MISO				PTD14
#define NRF_TX_SCK				PTD12
#define NRF_TX_PCS0				PTD11
#define NRF_TX_CE_PTx			PTD
#define NRF_TX_CE_Pinx			GPIO_Pin10
//#define NRF_TX_CE_H()			LPLD_GPIO_Output_b(NRF_TX_CE_PTx, NRF_TX_CE_Pinx, OUTPUT_H)
//#define NRF_TX_CE_L()			LPLD_GPIO_Output_b(NRF_TX_CE_PTx, NRF_TX_CE_Pinx, OUTPUT_L) // �����ܣ��ã��⣡�����䣡
#define NRF_TX_CE_H()			PTD10_O = 1
#define NRF_TX_CE_L()			PTD10_O = 0

#define NRF_RX_SPIx				SPI0
#define NRF_RX_MOSI				PTA16
#define NRF_RX_MISO				PTA17
#define NRF_RX_SCK				PTA15
#define NRF_RX_PCS0				PTA14
#define NRF_RX_CE_PTx			PTA
#define NRF_RX_CE_Pinx			GPIO_Pin13
//#define NRF_RX_CE_H()			LPLD_GPIO_Output_b(NRF_RX_CE_PTx, NRF_RX_CE_Pinx, OUTPUT_H)
//#define NRF_RX_CE_L()			LPLD_GPIO_Output_b(NRF_RX_CE_PTx, NRF_RX_CE_Pinx, OUTPUT_L)
#define NRF_RX_CE_H()			PTA13_O = 1
#define NRF_RX_CE_L()			PTA13_O = 0
#define NRF_RX_IRQ_PTx			PTA
#define NRF_RX_IRQ_Pinx			GPIO_Pin10
#define NRF_RX_IRQ_PORT			PORTA
#define NRF_RX_IRQn				PORTA_IRQn

//#define NRF_TX_SPIx				SPI0
//#define NRF_TX_MOSI				PTA16
//#define NRF_TX_MISO				PTA17
//#define NRF_TX_SCK				PTA15
//#define NRF_TX_PCS0				PTA14
//#define NRF_TX_CE_PTx			PTA
//#define NRF_TX_CE_Pinx			GPIO_Pin13
//#define NRF_TX_CE_H()			LPLD_GPIO_Output_b(NRF_TX_CE_PTx, NRF_TX_CE_Pinx, OUTPUT_H)
//#define NRF_TX_CE_L()			LPLD_GPIO_Output_b(NRF_TX_CE_PTx, NRF_TX_CE_Pinx, OUTPUT_L)
//
//#define NRF_RX_SPIx				SPI2
//#define NRF_RX_MOSI				PTD13
//#define NRF_RX_MISO				PTD14
//#define NRF_RX_SCK				PTD12
//#define NRF_RX_PCS0				PTD11
//#define NRF_RX_CE_PTx			PTD
//#define NRF_RX_CE_Pinx			GPIO_Pin10
//#define NRF_RX_CE_H()			LPLD_GPIO_Output_b(NRF_RX_CE_PTx, NRF_RX_CE_Pinx, OUTPUT_H)
//#define NRF_RX_CE_L()			LPLD_GPIO_Output_b(NRF_RX_CE_PTx, NRF_RX_CE_Pinx, OUTPUT_L)
//#define NRF_RX_IRQ_PTx			PTD
//#define NRF_RX_IRQ_Pinx			GPIO_Pin15
//#define NRF_RX_IRQ_PORT			PORTD
//#define NRF_RX_IRQn				PORTD_IRQn

#define NRF_PLOAD_LEN			32 // �����غɳ���
#define NRF_TX_ADR_LEN			5  // TX��ַ����
#define NRF_RX_ADR_LEN			5  // RX��ַ����

#define NRF_RX_ADDR_P0_RST_ID	0xE7E7E7E7
#define NRF_RX_ADDR_P1_RST_ID	0xC2C2C2C2
#define NRF_TX_ADDR_RST_ID		0xE7E7E7E7

#define NRF_READ_REG			0x00 // �����üĴ���
#define NRF_WRITE_REG			0x20 // д���üĴ���
#define NRF_RD_RX_PLOAD			0x61 // ��ȡRX FIFO�е�����
#define NRF_WR_TX_PLOAD			0xA0 // ��TX FIFO��д������
#define NRF_FLUSE_TX			0xE1 // ���TX FIFO�е����� Ӧ���ڷ���ģʽ��
#define NRF_FLUSE_RX			0xE2 // ���RX FIFO�е����� Ӧ���ڽ���ģʽ��
#define NRF_REUSE_TX_PL			0xE3 // ����ʹ����һ����Ч����
#define NRF_NOP					0xFF // �޲��� ���ڶ�STATUS�Ĵ���

#define NRF_CONFIG				0x00  //���÷���״̬��CRCУ��ģʽ�Լ����շ�״̬��Ӧ��ʽ
#define NRF_EN_AA            	0x01  //�Զ�Ӧ��������
#define NRF_EN_RXADDR			0x02  //�����ŵ�����
#define NRF_SETUP_AW			0x03  //�շ���ַ�������
#define NRF_SETUP_RETR			0x04  //�Զ��ط�����������
#define NRF_RF_CH				0x05  //�����ŵ��趨
#define NRF_RF_SETUP			0x06  //�������ʡ����Ĺ�������
#define NRF_STATUS				0x07  //״̬�Ĵ���
#define NRF_OBSERVE_TX			0x08  //���ͼ�⹦��
#define NRF_CD					0x09  //��ַ���
#define NRF_RX_ADDR_P0			0x0A  //Ƶ��0�������ݵ�ַ
#define NRF_RX_ADDR_P1			0x0B  //Ƶ��1�������ݵ�ַ
#define NRF_RX_ADDR_P2			0x0C  //Ƶ��2�������ݵ�ַ
#define NRF_RX_ADDR_P3			0x0D  //Ƶ��3�������ݵ�ַ
#define NRF_RX_ADDR_P4			0x0E  //Ƶ��4�������ݵ�ַ
#define NRF_RX_ADDR_P5			0x0F  //Ƶ��5�������ݵ�ַ
#define NRF_TX_ADDR				0x10  //���͵�ַ�Ĵ���
#define NRF_RX_PW_P0			0x11  //����Ƶ��0�������ݳ���
#define NRF_RX_PW_P1			0x12  //����Ƶ��1�������ݳ���
#define NRF_RX_PW_P2			0x13  //����Ƶ��2�������ݳ���
#define NRF_RX_PW_P3			0x14  //����Ƶ��3�������ݳ���
#define NRF_RX_PW_P4			0x15  //����Ƶ��4�������ݳ���
#define NRF_RX_PW_P5			0x16  //����Ƶ��5�������ݳ���
#define NRF_FIFO_STATUS			0x17  //FIFOջ��ջ��״̬�Ĵ�������

#define NRF_STATUS_MAX_RT		0x10 //�ﵽ����ط�״̬
#define NRF_STATUS_TX_DS     	0x20 //���ͳɹ�
#define NRF_STATUS_RX_DR     	0x40 //���ճɹ�

typedef struct
{
	void (*Init)(void);
	void (*Set)(uint8 index, uint8 data);
	void (*Send)(void);

	uint8 data[NRF_PLOAD_LEN];
	uint8 tx_buf[NRF_PLOAD_LEN];
} NRF_CLASS;

/****Variables************************************************/

extern NRF_CLASS nrf;

/****Function list********************************************/

/*************************************************************/

#endif /* __NRF_H */
