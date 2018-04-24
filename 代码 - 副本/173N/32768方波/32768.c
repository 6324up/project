//*****************************************************************************
//举例：利用TCC定时来实现在P6输出脉冲波形，
//P5口每隔100ms翻转一次。
//**************************************************************
//MCU:EM78P173N
//Oscillator: IRC	4MHz
//Clock:2
//WDT:disable
//工作电压:5V
//编译软件:eUIDE 1.03.00
//***************************************************************
#include"EM78P173N.H"							//EM78P173N头文件
#define DISI()  _asm{disi}
#define WDTC()  _asm{wdtc}
#define NOP()   _asm{nop}
#define ENI()   _asm{eni}
#define SLEP()   _asm{slep}
#define uchar  unsigned char

bit	Timer_interrupt_flag = 0;

void main()
{

	WDTC();
	DISI();
	WDTCR=0;				//禁止WDT
	P6CR=0xFE;				//P60设为输出
	PORT6=0;				//PORT6输出低
	_asm{
		mov	a,@0x07
		contw				//TCC分频比设为1：256
	}
	TCC=0;					//timer=1/4*(256-0)*256*2=32.768ms
	ISR=0;
	IMR=1;
	ENI();
	while(1)
	{	//32768US定时到
		if(Timer_interrupt_flag)
		{
			Timer_interrupt_flag=0;
			P60=!P60;
		}
	}
}

void _intcall interrupt(void) @ int 
{
     
 // Write your code (inline assembly or C) here
	if	(TCIF==1)
	{
		
		ISR&=0XFE;				//清TCC中断标志位
		TCC=0;					//TCC赋初值
		//COUNTER++;				
		Timer_interrupt_flag = 1;
	}
}

void _intcall interrupt_l(void) @ 0x08:low_int 0
{ 
}