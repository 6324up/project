//**************************************************************
//P67����MCU��P61�����,��ʱ1s�ٽ���˯��P61�����
//**************************************************************
//MCU: EM78P173N
//Oscillator: IRC 4MHz
//Clock: 2
//WDT: Enable
//������ѹ: 5V              
//�������: eUIDE 1.03.00
#include"EM78P173N.H"							//EM78P173Nͷ�ļ�
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
		P6CR=0Xfd;				//P61���,��������
		PHCR=0X0A;				//��P61����
		PORT6=0;
		_asm{
		mov		a,@0x0f
		contw				
		WDTC	                //��ֹ WDT
		MOV		0X6,0X6			//��ȡPORT6״̬
		}	
		DISI();					//��ֹȫ���ж�
		SCR=0X23;				//IRC 4MHz IDLE=0
		IMR=0X02;				//ʹ��Port6״̬�ı份��
		SLEP();					//����˯��ģʽ
		NOP();
		NOP();
		WDTC();					//��WDT
		WDTCR=0;				//��ֹWDT   ��ǰ���ж��Ƿ���port6״̬�ı�,û�ı�,������,�ı�,����ִ��,������жϾͽ����ж�
		P61=1;					//P61�����
		DELAY();
	}while(1);
	
}
void	DELAY()
{
	unsigned int COUNTER0;	//�������������������ʱ
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