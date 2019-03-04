#include "nrf.h"

/****Discription**********************************************/

/*
	0.����һ��������ͨѶ��������������
	1.���ȵ���nrf.Init()������ʹ�ñ�����
	2.����nrf.Send()���Խ�nrf.tx_buf��������ݴ����ȥ
	3.����nrf.Set(uint8, int16)�������Զ���Ӧ��ͨ�����ݽ��и���
	4.nrf.data���齫���Զ����£�
		���ǿ����ڱ��ļ���NRF_isr�����жԶ�Ӧ�����ݽ����ж�

	@Time	2018-04-27
	@Author	����
	@Usefor	˫��ͨѶ
*/

/****Variables************************************************/

uint8 TX_ADDRESS[NRF_TX_ADR_LEN] = NRF_TX_ADDRESS; //���͵�ַ
uint8 RX_ADDRESS[NRF_RX_ADR_LEN] = NRF_RX_ADDRESS; //���յ�ַ(������ַ,�����ڽ���ģʽ)
//NRF24L01��λ֮�����ڼ��
// NRF24L01_RX_ADDR_P0�ĸ�λֵ�Ƿ�Ϊ0xE7E7E7E7
// NRF24L01_RX_ADDR_P1�ĸ�λֵ�Ƿ�Ϊ0xC2C2C2C2
// NRF24L01_TX_ADDR�ĸ�λֵ�Ƿ�Ϊ0xE7E7E7E7
uint8 NRF_RX_ADDR_P0_RESET_BUF1[5], NRF_RX_ADDR_P0_RESET_BUF2[5];
uint8 NRF_RX_ADDR_P1_RESET_BUF1[5], NRF_RX_ADDR_P1_RESET_BUF2[5];
uint8 NRF_TX_ADDR_RESET_BUF1[5], NRF_TX_ADDR_RESET_BUF2[5];

/****Function list********************************************/

static uint8 LPLD_NRF_CheckID(SPI_Type *spix);
static uint8 LPLD_NRF_WriteBuf(SPI_Type *spix, uint8 reg, uint8 *pbuf, uint8 len);
static uint8 LPLD_NRF_ReadBuf(SPI_Type *spix, uint8 reg, uint8 *pbuf, uint8 len);
static uint8 LPLD_NRF_WriteReg(SPI_Type *spix, uint8 reg, uint8 value);
static uint8 LPLD_NRF_ReadReg(SPI_Type *spix, uint8 reg);
static void Nrf24L01_DelayUs(uint16 t);
uint8 LPLD_NRF_TX_SendFrame(uint8 *data, uint8 len);
void LPLD_NRF_RX_RecvFrame(uint8 *data, uint8 len);

void NRF_isr(void);
void NRF_Init(void);
void NRF_Set(uint8 index, uint8 data);
void NRF_Send(void);

/****Objects**************************************************/

NRF_CLASS nrf =
{
	&NRF_Init,
	&NRF_Set,
	&NRF_Send,

	{0}, {0}
};

/****Functions************************************************/

void NRF_isr(void)
{
	if (LPLD_GPIO_IsPinxExt(NRF_RX_IRQ_PORT, NRF_RX_IRQ_Pinx))
		LPLD_NRF_RX_RecvFrame(nrf.data, NRF_PLOAD_LEN);
}

uint8 LPLD_NRF_TX_SendFrame(uint8 *data, uint8 len)
{
	uint8 Status;
	int  time = 0;

	NRF_TX_CE_L(); //����CE����Nrf24l01����Standby-Iģʽ

	LPLD_NRF_WriteBuf(NRF_TX_SPIx, NRF_WRITE_REG + NRF_RX_ADDR_P0, TX_ADDRESS, NRF_RX_ADR_LEN); // װ�ؽ��ն˵�ַ
	LPLD_NRF_WriteBuf(NRF_TX_SPIx, NRF_WR_TX_PLOAD, data, len); 			   // װ������
	LPLD_NRF_WriteReg(NRF_TX_SPIx, NRF_WRITE_REG + NRF_CONFIG, 0x0E);      //ʹ��CRCУ�飬ʹ��TX�������ϵ�

	NRF_TX_CE_H();

	while (1)
	{
		Status = LPLD_NRF_ReadReg(NRF_TX_SPIx, NRF_STATUS);           //��ȡ״̬�Ĵ���
		LPLD_NRF_WriteReg(NRF_TX_SPIx, NRF_WRITE_REG + NRF_STATUS, Status);  //���״̬�����
		if (Status & NRF_STATUS_TX_DS)                //���������ϣ������յ�ACK���ñ�־λ��λ
		{
			LPLD_NRF_WriteReg(NRF_TX_SPIx, NRF_FLUSE_TX, 0xFF); //��շ��ͻ�����
			Status = 1;
			break;
		}
		else if (Status & NRF_STATUS_MAX_RT)//����ﵽ��η��͵����ֵ�����ڼ�û�н��յ�ACK
		{
			Status = 0;
			break;
		}

		time++;
		LPLD_SYSTICK_DelayUs(10);
		if (time > 200)
		{
			Status = 0;
			break;
		}
	}
	return Status;
}

void LPLD_NRF_RX_RecvFrame(uint8 *data, uint8 len)
{
	uint8 Status;
	Status = LPLD_NRF_ReadReg(NRF_RX_SPIx, NRF_STATUS);
	LPLD_NRF_ReadBuf(NRF_RX_SPIx, NRF_RD_RX_PLOAD, data, len);
	LPLD_NRF_WriteReg(NRF_RX_SPIx, NRF_WRITE_REG + NRF_STATUS, Status);
	Status = 0;
}

void NRF_Set(uint8 index, uint8 data)
{
	if (index < NRF_PLOAD_LEN)
		nrf.tx_buf[index] = data;
}

void NRF_Send(void)
{
	LPLD_NRF_TX_SendFrame(nrf.tx_buf, NRF_PLOAD_LEN);
}

static void NRF_SPI_Init(void)
{
	static SPI_InitTypeDef SPI_InitStructure;
	static GPIO_InitTypeDef GPIO_InitStructure;

	// ��ʼ������ģ��SPI
	SPI_InitStructure.SPI_SPIx = NRF_TX_SPIx;
	SPI_InitStructure.SPI_SckDivider = SPI_SCK_DIV_32;
	SPI_InitStructure.SPI_Pcs0Pin = NRF_TX_PCS0;
	SPI_InitStructure.SPI_SckPin = NRF_TX_SCK;
	SPI_InitStructure.SPI_MosiPin = NRF_TX_MOSI;
	SPI_InitStructure.SPI_MisoPin = NRF_TX_MISO;

	SPI_InitStructure.SPI_TxCompleteIntIsr = NULL;
	SPI_InitStructure.SPI_QueueEndIntIsr = NULL;
	SPI_InitStructure.SPI_TxFIFO_FillIntIsr = NULL;
	SPI_InitStructure.SPI_TxFIFO_UnderflowIntIsr = NULL;
	SPI_InitStructure.SPI_RxFIFO_DrainIntIsr = NULL;
	SPI_InitStructure.SPI_RxFIFO_OverflowIntIsr = NULL;

	LPLD_SPI_Init(SPI_InitStructure);

	// ��ʼ������ģ��CE
	GPIO_InitStructure.GPIO_PTx = NRF_TX_CE_PTx;
	GPIO_InitStructure.GPIO_Pins = NRF_TX_CE_Pinx;
	GPIO_InitStructure.GPIO_Dir = DIR_OUTPUT;
	GPIO_InitStructure.GPIO_Output = OUTPUT_L;

	LPLD_GPIO_Init(GPIO_InitStructure);

	// ��ʼ������ģ��SPI
	SPI_InitStructure.SPI_SPIx = NRF_RX_SPIx;
	SPI_InitStructure.SPI_SckDivider = SPI_SCK_DIV_32;
	SPI_InitStructure.SPI_Pcs0Pin = NRF_RX_PCS0;
	SPI_InitStructure.SPI_SckPin = NRF_RX_SCK;
	SPI_InitStructure.SPI_MosiPin = NRF_RX_MOSI;
	SPI_InitStructure.SPI_MisoPin = NRF_RX_MISO;

	LPLD_SPI_Init(SPI_InitStructure);

	// ��ʼ������ģ��CE
	GPIO_InitStructure.GPIO_PTx = NRF_RX_CE_PTx;
	GPIO_InitStructure.GPIO_Pins = NRF_RX_CE_Pinx;
	GPIO_InitStructure.GPIO_Dir = DIR_OUTPUT;
	GPIO_InitStructure.GPIO_Output = OUTPUT_L;

	LPLD_GPIO_Init(GPIO_InitStructure);
}

static uint8 NRF_TX_Init(void)
{
	uint8 Temp;

	NRF_TX_CE_L();
	// оƬ�ϵ縴λ��
	// �ֱ��ȡNRF24L01_RX_ADDR_P0��NRF24L01_RX_ADDR_P1��NRF24L01_TX_ADDR��ֵ
	// �鿴��������
	// NRF24L01_RX_ADDR_P0�ĸ�λֵ�Ƿ�Ϊ0xE7E7E7E7
	// NRF24L01_RX_ADDR_P1�ĸ�λֵ�Ƿ�Ϊ0xC2C2C2C2
	// NRF24L01_TX_ADDR�ĸ�λֵ�Ƿ�Ϊ0xE7E7E7E7
	// �����ȷ֤��SPI��дû�����⣬��֮��Ȼ
	LPLD_NRF_CheckID(NRF_TX_SPIx);

	Temp = LPLD_NRF_WriteReg(NRF_TX_SPIx, NRF_FLUSE_TX, 0xFF);

	Temp = LPLD_NRF_WriteBuf(NRF_TX_SPIx, NRF_WRITE_REG + NRF_TX_ADDR, TX_ADDRESS, NRF_TX_ADR_LEN);

	Temp = LPLD_NRF_WriteReg(NRF_TX_SPIx, NRF_WRITE_REG + NRF_EN_AA, 0x01);       //Ƶ��0�Զ�,ACKӦ������
	Temp = LPLD_NRF_WriteReg(NRF_TX_SPIx, NRF_WRITE_REG + NRF_EN_RXADDR, 0x01);   //������յ�ַֻ��Ƶ��0
	Temp = LPLD_NRF_WriteReg(NRF_TX_SPIx, NRF_WRITE_REG + NRF_SETUP_RETR, 0x1a);  //�����Զ��ط�ʱ��ʹ�����500us + 86us, 10 retrans...
	Temp = LPLD_NRF_WriteReg(NRF_TX_SPIx, NRF_WRITE_REG + NRF_RF_CH, NRF_TX_CH);  //�����ŵ�����Ϊ2.4GHZ���շ�����һ��
	Temp = LPLD_NRF_WriteReg(NRF_TX_SPIx, NRF_WRITE_REG + NRF_RF_SETUP, 0x07);    //���÷�������Ϊ2MHZ�����书��Ϊ���ֵ0dB
	Temp = LPLD_NRF_WriteReg(NRF_TX_SPIx, NRF_WRITE_REG + NRF_CONFIG, 0x0E);      //ʹ��CRCУ�飬ʹ��TX�������ϵ�

	NRF_TX_CE_H();

	Nrf24L01_DelayUs(2000); //�ȴ�Nrf24L01����ģʽ��ʼ�����

	return Temp;
}

static uint8 NRF_RX_Init(void)
{
	uint8 Temp;

	NRF_RX_CE_L();
	// оƬ�ϵ縴λ��
	// �ֱ��ȡNRF24L01_RX_ADDR_P0��NRF24L01_RX_ADDR_P1��NRF24L01_TX_ADDR��ֵ
	// �鿴��������
	// NRF24L01_RX_ADDR_P0�ĸ�λֵ�Ƿ�Ϊ0xE7E7E7E7
	// NRF24L01_RX_ADDR_P1�ĸ�λֵ�Ƿ�Ϊ0xC2C2C2C2
	// NRF24L01_TX_ADDR�ĸ�λֵ�Ƿ�Ϊ0xE7E7E7E7
	// �����ȷ֤��SPI��дû�����⣬��֮��Ȼ
	LPLD_NRF_CheckID(NRF_RX_SPIx);

	Temp = LPLD_NRF_WriteBuf(NRF_RX_SPIx, NRF_WRITE_REG + NRF_RX_ADDR_P0, RX_ADDRESS, NRF_RX_ADR_LEN);
	Temp = LPLD_NRF_WriteReg(NRF_RX_SPIx, NRF_WRITE_REG + NRF_RX_PW_P0, NRF_PLOAD_LEN);

	Temp = LPLD_NRF_WriteReg(NRF_RX_SPIx, NRF_WRITE_REG + NRF_EN_AA, 0x01);      //Ƶ��0�Զ�,ACKӦ������
	Temp = LPLD_NRF_WriteReg(NRF_RX_SPIx, NRF_WRITE_REG + NRF_EN_RXADDR, 0x01);  //������յ�ַֻ��Ƶ��0
	Temp = LPLD_NRF_WriteReg(NRF_RX_SPIx, NRF_WRITE_REG + NRF_SETUP_RETR, 0x1a); // 500us + 86us, 10 retrans...
	Temp = LPLD_NRF_WriteReg(NRF_RX_SPIx, NRF_WRITE_REG + NRF_RF_CH, NRF_RX_CH); //�����ŵ�����Ϊ2.4GHZ���շ�����һ��
	Temp = LPLD_NRF_WriteReg(NRF_RX_SPIx, NRF_WRITE_REG + NRF_RF_SETUP, 0x07);   //���÷�������Ϊ2MHZ�����书��Ϊ���ֵ0dB
	Temp = LPLD_NRF_WriteReg(NRF_RX_SPIx, NRF_WRITE_REG + NRF_CONFIG, 0x0F);     //ʹ��CRCУ�飬ʹ��RX�������ϵ�

	NRF_RX_CE_H();

	Nrf24L01_DelayUs(2000);//�ȴ�Nrf24L01����ģʽ��ʼ�����

	return Temp;
}

void NRF_Init(void)
{
	NRF_SPI_Init();

	NRF_TX_Init();

	static NVIC_InitTypeDef NVIC_InitStructure;
	static GPIO_InitTypeDef GPIO_InitStructure;

	NVIC_InitStructure.NVIC_IRQChannel = NRF_RX_IRQn;
	NVIC_InitStructure.NVIC_IRQChannelGroupPriority = NVIC_PriorityGroup_2;
	NVIC_InitStructure.NVIC_IRQChannelPreemptionPriority = 2;
	NVIC_InitStructure.NVIC_IRQChannelSubPriority=3;
	NVIC_InitStructure.NVIC_IRQChannelEnable=0;
	LPLD_NVIC_Init(NVIC_InitStructure);

	GPIO_InitStructure.GPIO_PTx = NRF_RX_IRQ_PTx;
	GPIO_InitStructure.GPIO_Pins = NRF_RX_IRQ_Pinx;
	GPIO_InitStructure.GPIO_Dir = DIR_INPUT;
	GPIO_InitStructure.GPIO_PinControl =  INPUT_PULL_DOWN | IRQC_FA;
	GPIO_InitStructure.GPIO_Isr = NRF_isr;

	LPLD_GPIO_Init(GPIO_InitStructure);
	LPLD_GPIO_EnableIrq(GPIO_InitStructure);

	NRF_RX_Init();
}

static uint8 LPLD_NRF_CheckID(SPI_Type *spix)
{
	uint8 Temp;
	if (spix == NRF_TX_SPIx)
	{
		Temp = LPLD_NRF_ReadBuf(spix, NRF_READ_REG + NRF_RX_ADDR_P1, NRF_RX_ADDR_P1_RESET_BUF1, 5);
		asm("nop");
		Temp = LPLD_NRF_ReadBuf(spix, NRF_READ_REG + NRF_TX_ADDR, NRF_TX_ADDR_RESET_BUF1, 5);
		asm("nop");
		Temp = LPLD_NRF_ReadBuf(spix, NRF_READ_REG + NRF_RX_ADDR_P0, NRF_RX_ADDR_P0_RESET_BUF1, 5);
		asm("nop");
	}
	else if (spix == NRF_RX_SPIx)
	{
		Temp = LPLD_NRF_ReadBuf(spix, NRF_READ_REG + NRF_RX_ADDR_P1, NRF_RX_ADDR_P1_RESET_BUF2, 5);
		asm("nop");
		Temp = LPLD_NRF_ReadBuf(spix, NRF_READ_REG + NRF_TX_ADDR, NRF_TX_ADDR_RESET_BUF2, 5);
		asm("nop");
		Temp = LPLD_NRF_ReadBuf(spix, NRF_READ_REG + NRF_RX_ADDR_P0, NRF_RX_ADDR_P0_RESET_BUF2, 5);
		asm("nop");
	}
	return Temp;
}

static uint8 LPLD_NRF_WriteBuf(SPI_Type *spix, uint8 reg, uint8 *pbuf, uint8 len)
{
	uint8 status, i;

	status = LPLD_SPI_Master_WriteRead(spix, reg, SPI_PCS0, SPI_PCS_ASSERTED); //֡������Ϻ�PCS���ֵ͵�ƽ

	for (i = 0; i < len; i++)
	{
		if (i == (len - 1))
		{
			LPLD_SPI_Master_WriteRead(spix, *pbuf++, SPI_PCS0, SPI_PCS_INACTIVE);//֡������Ϻ�PCS��ɸߵ�ƽ
		}
		else
		{
			LPLD_SPI_Master_WriteRead(spix, *pbuf++, SPI_PCS0, SPI_PCS_ASSERTED);
		}
	}
	return status;
}

static uint8 LPLD_NRF_ReadBuf(SPI_Type *spix, uint8 reg, uint8 *pbuf, uint8 len)
{
	uint8 Status,i;

	Status = LPLD_SPI_Master_WriteRead(spix, reg, SPI_PCS0, SPI_PCS_ASSERTED);

	for (i = 0; i < len; i++)
	{
		if (i == (len - 1))
		{
			pbuf[i] = LPLD_SPI_Master_WriteRead(spix, 0xFF, SPI_PCS0, SPI_PCS_INACTIVE);
		}
		else
		{
			pbuf[i] = LPLD_SPI_Master_WriteRead(spix, 0xFF, SPI_PCS0, SPI_PCS_ASSERTED);
		}
	}
	return Status ;
}

static uint8 LPLD_NRF_WriteReg(SPI_Type *spix, uint8 reg, uint8 value)
{
	uint8 Status;
	Status = LPLD_SPI_Master_WriteRead(spix, reg, SPI_PCS0, SPI_PCS_ASSERTED);
	LPLD_SPI_Master_WriteRead(spix, value, SPI_PCS0, SPI_PCS_INACTIVE);
	return Status;
}

static uint8 LPLD_NRF_ReadReg(SPI_Type *spix, uint8 reg)
{
	uint8 temp;
	LPLD_SPI_Master_WriteRead(spix, reg, SPI_PCS0, SPI_PCS_ASSERTED);
	temp = LPLD_SPI_Master_WriteRead(spix, 0xFF, SPI_PCS0, SPI_PCS_INACTIVE);
	return temp;
}

static void Nrf24L01_DelayUs(uint16 t)
{
	uint16 i;
	for(i = 0; i < t;i++)
	{
		asm("nop");
	}
}
