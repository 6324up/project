#include "EM78P153B.H"
//#include "EM78P173N.H"
#include "TM1650.H"
#include "NTC3435.H"

#define 	TM1650_SCL 		P64
#define 	TM1650_SDA 		P65
#define 	TM1650_SDA_IN 	P6CR |= 0x20
#define 	TM1650_SDA_OUT	P6CR &= 0xDF

const unsigned int Display_data[10]=
{
	0xFC,//0
	0x60,//1
	0xDA,//2
	0xF2,//3
	0x66,//4
	0xB6,//5
	0xBE,//6
	0xE0,//7
	0xFE,//8
	0xF6,//9
};

bit Display_AIP1620_flag = 0;

//向TM1650发送8位数据，从低位开始----------------------
void TM1650_sendbit(unsigned int TM1650_sendbit_data)
{
    unsigned int TM1650_sendbit_i;
    for(TM1650_sendbit_i=0;TM1650_sendbit_i<8;TM1650_sendbit_i++)
    {  
        TM1650_SCL = 0;
        nop();nop();nop();nop();nop();
		if(TM1650_sendbit_data & 0x80)
		{
			TM1650_SDA = 1;
		}
		else
		{
		  	TM1650_SDA = 0;
		}
		TM1650_sendbit_data <<= 1;
        TM1650_SCL = 1;
        nop();nop();nop();nop();nop();
    }
}

void TM1650_START(void)
{
    TM1650_SDA = 1;       
    TM1650_SCL = 1;           
	nop();nop();nop();nop();nop();
    TM1650_SDA = 0;       
	nop();nop();nop();nop();nop();
}
void TM1650_STOP(void)
{
    TM1650_SCL = 1;
    TM1650_SDA = 0;
    nop();nop();nop();nop();nop();
	TM1650_SDA = 1;
	nop();nop();nop();nop();nop();
}
void TM1650_ASK(void)
{
	unsigned int AT24C16_SendNACK_i=0;
	TM1650_SCL = 0;
	nop();nop();nop();nop();nop();
	TM1650_SDA_IN;
	while((TM1650_SDA)&&(AT24C16_SendNACK_i<100))
	{
		AT24C16_SendNACK_i ++; 	
	}
	TM1650_SCL = 1;
	TM1650_SDA_OUT;
	TM1650_SCL = 0;
	TM1650_SDA = 0;
}

void TM1650_display(void)
{
	TM1650_START();
	TM1650_sendbit(0x48);//模式命令
	TM1650_ASK();
	TM1650_sendbit(0x71);//亮度等级7级
	TM1650_ASK();
	TM1650_STOP();
	
	
	TM1650_START();
	TM1650_sendbit(0x68);//com1
	TM1650_ASK();
	TM1650_sendbit(0xFF);//com1数据//基本显示亮
	TM1650_ASK();
	TM1650_STOP();
	
	TM1650_START();
	TM1650_sendbit(0x6a);//com2
	TM1650_ASK();
	TM1650_sendbit(0xFF);//com2数据//基本显示亮
	TM1650_ASK();
	TM1650_STOP();
	
	TM1650_START();
	TM1650_sendbit(0x6c);//com3
	TM1650_ASK();
	TM1650_sendbit(Display_data[Temperature_collection_data%10]);//com3数据//1~7低位数码管
	TM1650_ASK();
	TM1650_STOP();
	
	TM1650_START();
	TM1650_sendbit(0x6e);//com4
	TM1650_ASK();
	TM1650_sendbit(Display_data[Temperature_collection_data/10]);//com4数据//1~7高位数码管
	TM1650_ASK();
	TM1650_STOP();
}