//**************************************************************
//P67唤醒MCU后P61输出高,延时1s再进入睡眠P61输出低
//**************************************************************
//MCU: EM78P173N
//Oscillator: IRC 4MHz
//Clock: 2
//WDT: Enable
//工作电压: 5V              
//编译软件: eUIDE 1.03.00
#include"EM78P173N.H"							//EM78P173N头文件
#define DISI()  _asm{disi}
#define WDTC()  _asm{wdtc}
#define NOP()   _asm{nop}
#define ENI()   _asm{eni}
#define SLEP()   _asm{slep}
#define uchar  unsigned char
void DELAY(void);

void main()
{
	do
	{
		P5CR=0;
		PORT5=0;
		P6CR=0Xfd;				//P61输出,其他输入
		PHCR=0X0A;				//除P61上拉
		PORT6=0;
		_asm{
		mov		a,@0x0f
		contw				
		WDTC	                //禁止 WDT
		MOV		0X6,0X6			//读取PORT6状态
		}	
		DISI();					//禁止全局中断
		SCR=0X23;				//IRC 4MHz IDLE=0
		IMR=0X02;				//使能Port6状态改变唤醒
		SLEP();					//进入睡眠模式
		NOP();
		NOP();
		WDTC();					//清WDT
		WDTCR=0;				//禁止WDT   此前是判断是否有port6状态改变,没改变,则休眠,改变,往下执行,如果有中断就进入中断
		P61=1;					//P61输出高
		DELAY();
	}while(1);
	
}
void	DELAY()
{
	unsigned int COUNTER0;	//定义计数器，用来作延时
	unsigned int COUNTER1;
	unsigned int COUNTER2;

	for(COUNTER2=0;COUNTER2<7;COUNTER2++)
	{
		for(COUNTER1=0;COUNTER1<200;COUNTER1++)
		{
			for(COUNTER0=0;COUNTER0<200;COUNTER0++)
			{
				NOP();		
				
			}			
		}	
	}
}