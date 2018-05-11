#include "EM78F734N.H"
#define	DISI()	_asm{disi}	//禁止中断
#define	ENI()	_asm{eni} 	//允许中断
#define	WDTC()  _asm{wdtc}	//wdtc
#define	NOP()	_asm{nop}	//空操作
#define	SLEP()	_asm{slep}	//slep

extern int IntVecIdx; //occupied 0x10:rpage 0
void main()
{
	DISI();
	WDTC();
	MSR = 0X60;			//选择主频模式
	P7CR = 0X00;		//P73设置为输出
	P73 = 0;			//P73输出低电平

	P6CR = 0x01;		//P60设置为输入	
    WDTCR = 0x40;		//使能/INT外部信号输入
	_asm{
	MOV		A,@0x00			
	CONTW				//外部中断信号边沿选择上升沿
	} 
	IMR1 = 0x04;		//使能EXIT中断
	PORT6 = PORT6;	
	WUCR =0x10;			//使能INT脚唤醒	
	ENI();				//使能总中断
	SLEP();				//进入睡眠
	NOP();
	WDTC();
	NOP();
	while(1);
}

void _intcall ALLint(void) @ int 
{
  switch(IntVecIdx)
  {   
    case 0x4:
    	ISR1&=0XFB;			//外部中断标志位清零   
   		P73=1;				//唤醒以后P73输出高电平 
    break;    
  } 	
}

void _intcall ext_interrupt_l(void) @ 0x03:low_int 0
{
 _asm{MOV A,0x2};  	
}