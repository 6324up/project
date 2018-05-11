#include "EM78P173N.H"
#include "TM1650.H"
#include "NTC3435.H"

bit		Timer_interrupt_flag = 0;

void init(void);
void clrram(void);

void main(void)
{
	init();
	while(1)
	{
		if(Timer_interrupt_flag == 1)
		{
			Temperature_collection();
			if(Display_AIP1620_flag == 1)
			{
				TM1650_display();
				Display_AIP1620_flag = 0;
			}
			Timer_interrupt_flag = 0;
		}
	}
}

void init(void)
{
	disi();
	wdtc();
	_asm
	{
		mov a,@0x06  //128��Ƶ
		contw
	}
//	SCR = 0x63;
	WDTCR = 0;
	
	P6CR = 0x00;  	//����IO��λ�����	//0Ϊ�����1Ϊ����
	PHCR = 0xFF;	//�ر������������ܡ�//0Ϊ����1Ϊ�ر�
	PDCR = 0xFF;	//�ر������������ܡ�//0Ϊ����1Ϊ�ر�
	ODCR = 0x00;	//�ر�����©����·������ܡ�//0Ϊ�رգ�//1Ϊ����
	
	clrram();
	ISR = 0;   		//
	IMR = 1;  		//ʹ�ܶ�ʱ���ж�
	TCC = 6;  		//TIMEINT = 2*32*(256-6)/8M=2MS
	eni();			
}
void clrram(void)
{
  	_asm
  	{
		MOV A,@0X11
    	MOV	0X10,A
 	clrloop:
    	MOV	A,0X10
		MOV 0X04,A
		CLR 0x00
		INC 0X10
		JBS 0X10,6
		JMP clrloop
		CLR 0X04
		CLR	0X10
	}
}
/******************�ж�********************/
void _intcall interrupt(void) @ int 
{
	if(TCIF)
	{
		TCIF = 0;
		TCC = 6;
		Timer_interrupt_flag = 1;
	}
	_asm
	{
		reti            //Tell Compiler to recover common registers here. 
     					//Don't remove or duplicate this instruction in this function 
	}   
}

void _intcall interrupt_l(void) @ 0x08:low_int 0
{
	_asm
	{
		mov 0x1F , a	//backup acc, don't remove
	}	
}