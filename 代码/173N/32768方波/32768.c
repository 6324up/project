//*****************************************************************************
//����������TCC��ʱ��ʵ����P6������岨�Σ�
//P5��ÿ��100ms��תһ�Ρ�
//**************************************************************
//MCU:EM78P173N
//Oscillator: IRC	4MHz
//Clock:2
//WDT:disable
//������ѹ:5V
//�������:eUIDE 1.03.00
//***************************************************************
#include"EM78P173N.H"							//EM78P173Nͷ�ļ�
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
	WDTCR=0;				//��ֹWDT
	P6CR=0xFE;				//P60��Ϊ���
	PORT6=0;				//PORT6�����
	_asm{
		mov	a,@0x07
		contw				//TCC��Ƶ����Ϊ1��256
	}
	TCC=0;					//timer=1/4*(256-0)*256*2=32.768ms
	ISR=0;
	IMR=1;
	ENI();
	while(1)
	{	//32768US��ʱ��
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
		
		ISR&=0XFE;				//��TCC�жϱ�־λ
		TCC=0;					//TCC����ֵ
		//COUNTER++;				
		Timer_interrupt_flag = 1;
	}
}

void _intcall interrupt_l(void) @ 0x08:low_int 0
{ 
}