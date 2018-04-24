/*
测温函数每50MS调用一次，温度值保存在WENDU中
*/

#include "EM78P173N.H"
#include "TM1650.H"
#include "NTC3435.H"

#define NTC_io		P60
#define R10K_io 	P61
#define TEST_io		P62

unsigned short CAP_charge_time;
unsigned short NTC_CAP_charge_time;
unsigned short R10K_CAP_charge_time;
unsigned short NTC_CAP_charge_time_temp;

unsigned char  Temperature_collection_data;
unsigned char  Temperature_collection_temp;
unsigned char  Temperature_collection_count;
unsigned char  Temperature_collection_times;
unsigned char  Temperature_collection_status;

void NTC_in(void)
{
	P6CR |= 0x01;//P60//0为输出，1为输入
}
void R10K_in(void)
{
	P6CR |= 0x02;//P61//0为输出，1为输入
}
void TEST_in(void)
{
	P6CR |= 0x04;//P62//0为输出，1为输入
}
void NTC_out(void)
{
	P6CR &= 0xFE;//P60//0为输出，1为输入
}
void R10K_out(void)
{
	P6CR &= 0xFD;//P61//0为输出，1为输入
}
void TEST_out(void)
{
	P6CR &= 0xFB;//P62//0为输出，1为输入
}
//***********温度表**************
//参数为0~71摄氏度
//数据为           NTC阻值*128/标准电阻阻值。
//不标准
const unsigned char wenducode[100]=
{
	214,//0
	205,//1
	196,//2
	188,//3
	180,//4
	173,//5
	166,//6
	159,//7
	153,//8
	147,//9
	141,//10
	135,//11
	130,//12
	125,//13
	120,//14
	115,//15
	111,//16
	107,//17
	103,//18
	99,//19
	95,//20
	91,//21
	88,//22
	85,//23
	82,//24
	79,//25
	76,//26
	73,//27
	70,//28
	68,//29
	65,//30
	63,//31
	61,//32
	59,//33
	57,//34
	55,//35
	53,//36
	51,//37
	49,//38
	47,//39
	46,//40
	44,//41
	43,//42
	41,//43
	40,//44
	39,//45
	37,//46
	36,//47
	35,//48
	34,//49
	33,//50
	32,//51
	31,//52
	30,//53
	29,//54
	28,//55
	27,//56
	26,//57
	25,//58
	25,//59
	24,//60
	23,//61
	22,//62
	22,//63
	21,//64
	20,//65
	20,//66
	19,//67
	19,//68
	18,//69
	18,//70
	17,//71
	17,//72
	16,//73
	16,//74
	15,//75
	15,//76
	14,//77
	14,//78
	14,//79
	13,//80
	13,//81
	12,//82
	12,//83
	12,//84
	11,//85
	11,//86
	11,//87
	11,//88
	10,//89
	10,//90
	10,//91
	10,//92
	9,//93
	9,//94
	9,//95
	9,//96
	8,//97
	8,//98
	7,//99
};

void Temperature_collection(void)
{
		NTC_out();R10K_out();TEST_out();
		NTC_io=0;R10K_io=0;TEST_io=0;//三个脚全部输出0
		
		while(TEST_io);
		CAP_charge_time = 0;
		do
		{
			nop();nop();
			CAP_charge_time ++;  //电容放电+延时
		}
		while(CAP_charge_time < 0x0100);
		CAP_charge_time = 0;
		
		switch(Temperature_collection_status)		//0:采集10K电阻充电时间 1:采集NTC充电时间 2:数据处理
		{
			case 0:
				Temperature_collection_times ++;	//检测数据次数+1
				R10K_in();TEST_in();    			//NTC脚输出其余脚输入
				CAP_charge_time = 0;
				NTC_io=1;       					//NTC脚充电
				do
				{
					CAP_charge_time ++;  			//计时
				}
				while((!TEST_io)&&(CAP_charge_time<0x0200)); //大于0x200无效
				NTC_CAP_charge_time += CAP_charge_time;	//累加计时
				if(Temperature_collection_times >= 16)
				{
					Temperature_collection_times = 0;
					Temperature_collection_status = 1;
					NTC_CAP_charge_time >>= 4;
				}
			break;
			case 1:
				Temperature_collection_times ++;
				NTC_in();TEST_in();    					//R10K脚输出其余脚输入
				CAP_charge_time = 0;
				R10K_io = 1;
				do
				{
					CAP_charge_time ++;  				//计时
				}
				while((!TEST_io)&&(CAP_charge_time<0x0200));
				if(CAP_charge_time >= 0x0200)
				{
					CAP_charge_time = 0;
				}
				R10K_CAP_charge_time += CAP_charge_time;
				if(Temperature_collection_times >= 16)
				{
					Temperature_collection_times = 0;
					Temperature_collection_status = 2;
					R10K_CAP_charge_time >>= 4;
				}
			break;
			
			case 2:
			
				NTC_CAP_charge_time *= 10;
				NTC_CAP_charge_time <<= 3;				//ntc延时时间*100K
				NTC_CAP_charge_time /= R10K_CAP_charge_time;
				
//				if(NTC_CAP_charge_time_temp == NTC_CAP_charge_time)
//				{
					Temperature_collection_count ++;
					if(Temperature_collection_count > 4)
					{
						for(Temperature_collection_temp=0;Temperature_collection_temp<100;Temperature_collection_temp++)
						{
							if(NTC_CAP_charge_time > wenducode[Temperature_collection_temp])
							{
								Temperature_collection_data = Temperature_collection_temp;
								break;
							}
						}
						if(Temperature_collection_temp == 100)
						{
							Temperature_collection_data = 99;
						}
						Temperature_collection_count = 0;
						Display_AIP1620_flag = 1;			
					}
//				}
//				else
//				{
//					NTC_CAP_charge_time_temp = NTC_CAP_charge_time;
//					Temperature_collection_count = 0;
//				}
				NTC_CAP_charge_time = 0;
				R10K_CAP_charge_time = 0;
				Temperature_collection_times = 0;
				Temperature_collection_status = 0;
			break;
			
			default:
				Temperature_collection_status = 0;
			break;
		}
}