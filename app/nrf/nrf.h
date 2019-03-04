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
#define NRF_RX_CH				40 // 调试用
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
//#define NRF_RX_CH				40 // 调试用
//#endif /* ROLL */

#define NRF_TX_SPIx				SPI2
#define NRF_TX_MOSI				PTD13
#define NRF_TX_MISO				PTD14
#define NRF_TX_SCK				PTD12
#define NRF_TX_PCS0				PTD11
#define NRF_TX_CE_PTx			PTD
#define NRF_TX_CE_Pinx			GPIO_Pin10
//#define NRF_TX_CE_H()			LPLD_GPIO_Output_b(NRF_TX_CE_PTx, NRF_TX_CE_Pinx, OUTPUT_H)
//#define NRF_TX_CE_L()			LPLD_GPIO_Output_b(NRF_TX_CE_PTx, NRF_TX_CE_Pinx, OUTPUT_L) // 不！能！用！这！两！句！
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

#define NRF_PLOAD_LEN			32 // 数据载荷长度
#define NRF_TX_ADR_LEN			5  // TX地址长度
#define NRF_RX_ADR_LEN			5  // RX地址长度

#define NRF_RX_ADDR_P0_RST_ID	0xE7E7E7E7
#define NRF_RX_ADDR_P1_RST_ID	0xC2C2C2C2
#define NRF_TX_ADDR_RST_ID		0xE7E7E7E7

#define NRF_READ_REG			0x00 // 读配置寄存器
#define NRF_WRITE_REG			0x20 // 写配置寄存器
#define NRF_RD_RX_PLOAD			0x61 // 读取RX FIFO中的数据
#define NRF_WR_TX_PLOAD			0xA0 // 向TX FIFO中写入数据
#define NRF_FLUSE_TX			0xE1 // 清除TX FIFO中的数据 应用于发射模式下
#define NRF_FLUSE_RX			0xE2 // 清除RX FIFO中的数据 应用于接收模式下
#define NRF_REUSE_TX_PL			0xE3 // 重新使用上一包有效数据
#define NRF_NOP					0xFF // 无操作 用于读STATUS寄存器

#define NRF_CONFIG				0x00  //配置发送状态，CRC校验模式以及发收发状态响应方式
#define NRF_EN_AA            	0x01  //自动应答功能设置
#define NRF_EN_RXADDR			0x02  //可用信道设置
#define NRF_SETUP_AW			0x03  //收发地址宽度设置
#define NRF_SETUP_RETR			0x04  //自动重发功能设设置
#define NRF_RF_CH				0x05  //工作信道设定
#define NRF_RF_SETUP			0x06  //发射速率、功耗功能设置
#define NRF_STATUS				0x07  //状态寄存器
#define NRF_OBSERVE_TX			0x08  //发送监测功能
#define NRF_CD					0x09  //地址检测
#define NRF_RX_ADDR_P0			0x0A  //频道0接收数据地址
#define NRF_RX_ADDR_P1			0x0B  //频道1接收数据地址
#define NRF_RX_ADDR_P2			0x0C  //频道2接收数据地址
#define NRF_RX_ADDR_P3			0x0D  //频道3接收数据地址
#define NRF_RX_ADDR_P4			0x0E  //频道4接收数据地址
#define NRF_RX_ADDR_P5			0x0F  //频道5接收数据地址
#define NRF_TX_ADDR				0x10  //发送地址寄存器
#define NRF_RX_PW_P0			0x11  //接收频道0接收数据长度
#define NRF_RX_PW_P1			0x12  //接收频道1接收数据长度
#define NRF_RX_PW_P2			0x13  //接收频道2接收数据长度
#define NRF_RX_PW_P3			0x14  //接收频道3接收数据长度
#define NRF_RX_PW_P4			0x15  //接收频道4接收数据长度
#define NRF_RX_PW_P5			0x16  //接收频道5接收数据长度
#define NRF_FIFO_STATUS			0x17  //FIFO栈入栈出状态寄存器设置

#define NRF_STATUS_MAX_RT		0x10 //达到最大重发状态
#define NRF_STATUS_TX_DS     	0x20 //发送成功
#define NRF_STATUS_RX_DR     	0x40 //接收成功

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
