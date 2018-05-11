#include "EM78F734N.H"
#define	DISI()	_asm{disi}	//��ֹ�ж�
#define	ENI()	_asm{eni} 	//�����ж�
#define	WDTC()  _asm{wdtc}	//wdtc
#define	NOP()	_asm{nop}	//�ղ���
#define	SLEP()	_asm{slep}	//slep

extern int IntVecIdx; //occupied 0x10:rpage 0
void main()
{
	DISI();
	WDTC();
	MSR = 0X60;			//ѡ����Ƶģʽ
	P7CR = 0X00;		//P73����Ϊ���
	P73 = 0;			//P73����͵�ƽ

	P6CR = 0x01;		//P60����Ϊ����	
    WDTCR = 0x40;		//ʹ��/INT�ⲿ�ź�����
	_asm{
	MOV		A,@0x00			
	CONTW				//�ⲿ�ж��źű���ѡ��������
	} 
	IMR1 = 0x04;		//ʹ��EXIT�ж�
	PORT6 = PORT6;	
	WUCR =0x10;			//ʹ��INT�Ż���	
	ENI();				//ʹ�����ж�
	SLEP();				//����˯��
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
    	ISR1&=0XFB;			//�ⲿ�жϱ�־λ����   
   		P73=1;				//�����Ժ�P73����ߵ�ƽ 
    break;    
  } 	
}

void _intcall ext_interrupt_l(void) @ 0x03:low_int 0
{
 _asm{MOV A,0x2};  	
}