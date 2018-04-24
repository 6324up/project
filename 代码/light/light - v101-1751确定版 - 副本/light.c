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
#define white P60
#define red1  P61
#define red2  P62
#define S1    P65				//�׵ƿ��ư���
#define S2    P64				//ģʽ�л�����
bit	Timer_interrupt_flag = 0;	//�жϱ�־
uchar mode_count=0;				//��ʼģʽ0
uchar mode1_count1=0;			//ģʽ1��������
uchar mode1_count2=0;			//ģʽ1�������

uchar mode2_count1=0;			//ģʽ2��������
uchar mode2_count2=0;			//ģʽ2�������
uchar mode2_four_cycle_flag=1;	//ģʽ2�Ĵ�ѭ����־
uchar mode2_four_cycle_count=0; //ģʽ2�Ĵ�ѭ������

uchar white_status=2;			//0:��ɫ���� 1:��ɫ���� 2:�ָ�ԭ״

bit mode1_light_flag=1;			//mode1��ǰ������־
bit mode2_red1_flag=1;			//ģʽ2���1������־
bit mode2_light_flag=1;			//mode2��ǰ������־

bit S1_flag=0;					//S1���±�־
bit S2_flag=0;					//S2���±�־
bit S1_sleep_flag=0;			//S1���ѱ�־
void keyscan();
void mode0(void)				//ģʽ0����,PORT6����
{	
	
	
	{
		white=0;red1=0;red2=0;
		_asm{
		mov		a,@0x0f
		contw				
		WDTC	                //��ֹ WDT
		MOV		0X6,0X6			//��ȡPORT6״̬
		}	
		DISI();					//��ֹȫ���ж�
		SCR=0X23;				//IRC 4MHz IDLE=0 TCCʱ��Դ:fs(������) cpu��Դ:fm(������)
		IMR=0X02;				//ʹ��Port6״̬�ı份��
		SLEP();					//����˯��ģʽ ������ͣ�ڴ˲���
		NOP();
		NOP();
		WDTC();					//��WDT
		WDTCR=0;				//��ֹWDT   
		
		SCR=0X63;				////IRC 4MHz IDLE=0 TCCʱ��Դ:fm(������) cpu��Դ:fm(������)
 		keyscan();
 		if(S1_flag)
 		{
 			S1_sleep_flag=1;
 			white=1;
 			S1_flag=0;
 		}
 			
//		mode_count=1;				//���Ѻ�ģʽ��ʼ��
//		white_status=2;				//��ʼ��ģʽ1,�׵�״̬2
		WDTC();
		DISI();
		WDTCR=0;				//��ֹWDT
	//	P6CR=0xFE;				//P60��Ϊ���
	//	PORT6=0;				//PORT6�����
		_asm{
			mov	a,@0x07
			contw				//TCC��Ƶ����Ϊ1��256
			}
		TCC=0;					//timer=1/4*(256-0)*256*2=32.768ms
		ISR=0;
		IMR=1;
		ENI();
	}
	
}

void mode1(void)				//ģʽ1
{	
	if(mode1_light_flag)	 	//�жϵ�ǰ���Ƿ����
	{
		switch (white_status)	//�׵Ƶ��ڰ�ť
		{
			case 0: white=1;red1=1;red2=1;break;
			case 1: white=0;red1=1;red2=1;break;
			case 2: white=1;red1=1;red2=1;break;
			default: break;
		}
		mode1_count1++;			//����1��λ
		if(mode1_count1>=4)		//�жϵ����Ƿ�4��λ
		{
			mode1_count1=0;		//���ü���
			mode1_light_flag=0;	//������־����
		}
		else ;
	}
	else 
	{
		switch (white_status)
		{
			case 0: white=1;red1=0;red2=0;break;
			case 1: white=0;red1=0;red2=0;break;
			case 2: white=0;red1=0;red2=0;break;
			default: break;
		}
		mode1_count2++;
		if(mode1_count2>=4)
		{	
			mode1_count2=0;
			mode1_light_flag=1;
		}
		else ;
	}
}



void mode2(void)						//ģʽ2
{
	if(mode2_red1_flag)					//�ж��Ƿ�������1	 
	{
		if(mode2_four_cycle_flag)	//�ж��Ĵ�ѭ���Ƿ����
		{
			if(mode2_light_flag)		//�жϵ�ǰ�Ƿ�����
			{
				switch (white_status)	//�׵Ƶ��ڰ�ť
				{
					case 0: white=1;red1=1;red2=0;break;
					case 1: white=0;red1=1;red2=0;break;
					case 2: white=1;red1=1;red2=0;break;//case0ͬcase2
					default: break;
				}
				mode2_count1++;
				if(mode2_count1>=2)
				{	
					mode2_count1=0;
					mode2_light_flag=0;
				}
				else ;
			}
			else						//����1��λ,�����Ĵ�ѭ������һ��
			{
				switch (white_status)	//�׵Ƶ��ڰ�ť
				{
					case 0: white=1;red1=0;red2=0;break;
					case 1: white=0;red1=0;red2=0;break;
					case 2: white=0;red1=0;red2=0;break;//case1ͬcase2
					default: break;
				}
				mode2_light_flag=1;
				mode2_four_cycle_count++;
				if(mode2_four_cycle_count>=4)
				{
					mode2_four_cycle_count=0;	//��������
					mode2_four_cycle_flag=0;
				}
			}
		}
		else							//�Ĵ�ѭ������
		{
			
			
			switch (white_status)		//�׵Ƶ��ڰ�ť
			{
				case 0: white=1;red1=0;red2=0;break;
				case 1: white=0;red1=0;red2=0;break;
				case 2: white=0;red1=0;red2=0;break;//case1ͬcase2
				default: break;
			}
			mode2_count2++;
			if(mode2_count2>=16)		//����16��λ����
			{
				mode2_count2=0;
				mode2_red1_flag=0;
				mode2_four_cycle_flag=1;//�Ĵ�ѭ�����¿�ʼ
			}	
		}
	}
	else								//���2��
	{
		if(mode2_four_cycle_flag)	//�ж��Ĵ�ѭ���Ƿ����
		{
			if(mode2_light_flag)		//�жϵ�ǰ�Ƿ�����
			{
				switch (white_status)	//�׵Ƶ��ڰ�ť
				{
					case 0: white=1;red1=0;red2=1;break;
					case 1: white=0;red1=0;red2=1;break;
					case 2: white=1;red1=0;red2=1;break;//case0ͬcase2
					default: break;
				}
				mode2_count1++;
				if(mode2_count1>=2)
				{	
					mode2_count1=0;
					mode2_light_flag=0;
				}
				else ;
			}
			else						//����1��λ,�����Ĵ�ѭ������һ��
			{
				switch (white_status)	//�׵Ƶ��ڰ�ť
				{
					case 0: white=1;red1=0;red2=0;break;
					case 1: white=0;red1=0;red2=0;break;
					case 2: white=0;red1=0;red2=0;break;//case1ͬcase2
					default: break;
				}
				mode2_light_flag=1;
				mode2_four_cycle_count++;
				if(mode2_four_cycle_count>=4)
				{
					mode2_four_cycle_count=0;	//��������
					mode2_four_cycle_flag=0;
				}
			}
		}
		else							//�Ĵ�ѭ������
		{
			switch (white_status)		//�׵Ƶ��ڰ�ť
			{
				case 0: white=1;red1=0;red2=0;break;
				case 1: white=0;red1=0;red2=0;break;
				case 2: white=0;red1=0;red2=0;break;//case1ͬcase2
				default: break;
			}
			mode2_count2++;
			if(mode2_count2>=16)		//����16��λ����
			{
				mode2_count2=0;
				mode2_red1_flag=1;
				mode2_four_cycle_flag=1;//�Ĵ�ѭ�����¿�ʼ
			}	
		}
	} 
}

void delayms(uchar xms) 	//��ʱ
{
	uchar i,j;
	for(i=xms;i>0;i--)
		for(j=200;j>0;j--);
}
void keyscan()				//����ɨ��
{
	if(!S1)					//S1����
	{
		delayms(10);
		if(!S1)
		{	
			S1_flag=1;
			white_status++;
			if(white_status>=3)
			white_status=0;
			while(!S1);		//�ȴ������ͷ�
		}
	}	
	if(!S2)					//S2����
	{ 
		delayms(10);
		if(!S2)
		{	
			S2_flag=1;
			white_status=2;
			mode_count++;
			if(mode_count>=3)
			{mode_count=0;
			S1_sleep_flag=0;}
			while(!S2);		//�ȴ������ͷ�
		}
	}
	
}

void main()
{
	
	WDTC();
	DISI();
	WDTCR=0;				//��ֹWDT
	P6CR=0x38;				//P63,P64,P65��Ϊ����,�������
	P5CR=0;
	PORT5=0;
	PHCR=0b11001111;		//0ʹ������,1�ر�����
	PORT6=0;				//PORT6�����
	_asm{
		mov	a,@0x07
		contw				//TCC��Ƶ����Ϊ1��256
	}
	TCC=0;					//timer=1/4*(256-0)*256*2=32.768ms
	ISR=0;
	ENI();
	IMR=0X03;
	while(1)
	{	
		keyscan(); 	 		//����ɨ��	    
							//32768US��ʱ��
		if(Timer_interrupt_flag)
		{
			Timer_interrupt_flag=0;
			
			switch(mode_count)
			{
 				case 0: if(S1_sleep_flag==0)mode0();break;
				case 1: S1_sleep_flag=0; mode1();break;
				case 2: S1_sleep_flag=0; mode2();break;
				
				default: break; 
			}
			if(S1_sleep_flag==1)
			{	
				if(S1_flag)
				{
					white=!white;
					S1_flag=0;
					if(white==0)
					{
						S1_sleep_flag=0;
					}
				}
			}
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
	//	PORT5^=0x01;				
		Timer_interrupt_flag = 1;
	}
}

void _intcall interrupt_l(void) @ 0x08:low_int 0
{ 
}