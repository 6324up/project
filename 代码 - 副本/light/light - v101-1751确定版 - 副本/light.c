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
#define white P60
#define red1  P61
#define red2  P62
#define S1    P65				//白灯控制按键
#define S2    P64				//模式切换按键
bit	Timer_interrupt_flag = 0;	//中断标志
uchar mode_count=0;				//初始模式0
uchar mode1_count1=0;			//模式1灯亮计数
uchar mode1_count2=0;			//模式1灯灭计数

uchar mode2_count1=0;			//模式2灯亮计数
uchar mode2_count2=0;			//模式2灯灭计数
uchar mode2_four_cycle_flag=1;	//模式2四次循环标志
uchar mode2_four_cycle_count=0; //模式2四次循环计数

uchar white_status=2;			//0:白色常量 1:白色常灭 2:恢复原状

bit mode1_light_flag=1;			//mode1当前灯亮标志
bit mode2_red1_flag=1;			//模式2红灯1灯亮标志
bit mode2_light_flag=1;			//mode2当前灯亮标志

bit S1_flag=0;					//S1按下标志
bit S2_flag=0;					//S2按下标志
bit S1_sleep_flag=0;			//S1唤醒标志
void keyscan();
void mode0(void)				//模式0休眠,PORT6唤醒
{	
	
	
	{
		white=0;red1=0;red2=0;
		_asm{
		mov		a,@0x0f
		contw				
		WDTC	                //禁止 WDT
		MOV		0X6,0X6			//读取PORT6状态
		}	
		DISI();					//禁止全局中断
		SCR=0X23;				//IRC 4MHz IDLE=0 TCC时钟源:fs(副振荡器) cpu振荡源:fm(主振荡器)
		IMR=0X02;				//使能Port6状态改变唤醒
		SLEP();					//进入睡眠模式 程序暂停在此不动
		NOP();
		NOP();
		WDTC();					//清WDT
		WDTCR=0;				//禁止WDT   
		
		SCR=0X63;				////IRC 4MHz IDLE=0 TCC时钟源:fm(主振荡器) cpu振荡源:fm(主振荡器)
 		keyscan();
 		if(S1_flag)
 		{
 			S1_sleep_flag=1;
 			white=1;
 			S1_flag=0;
 		}
 			
//		mode_count=1;				//唤醒后模式初始化
//		white_status=2;				//初始化模式1,白灯状态2
		WDTC();
		DISI();
		WDTCR=0;				//禁止WDT
	//	P6CR=0xFE;				//P60设为输出
	//	PORT6=0;				//PORT6输出低
		_asm{
			mov	a,@0x07
			contw				//TCC分频比设为1：256
			}
		TCC=0;					//timer=1/4*(256-0)*256*2=32.768ms
		ISR=0;
		IMR=1;
		ENI();
	}
	
}

void mode1(void)				//模式1
{	
	if(mode1_light_flag)	 	//判断当前灯是否该亮
	{
		switch (white_status)	//白灯调节按钮
		{
			case 0: white=1;red1=1;red2=1;break;
			case 1: white=0;red1=1;red2=1;break;
			case 2: white=1;red1=1;red2=1;break;
			default: break;
		}
		mode1_count1++;			//灯亮1单位
		if(mode1_count1>=4)		//判断灯亮是否到4单位
		{
			mode1_count1=0;		//重置计数
			mode1_light_flag=0;	//灯亮标志置零
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



void mode2(void)						//模式2
{
	if(mode2_red1_flag)					//判断是否该亮红灯1	 
	{
		if(mode2_four_cycle_flag)	//判断四次循环是否结束
		{
			if(mode2_light_flag)		//判断当前是否亮灯
			{
				switch (white_status)	//白灯调节按钮
				{
					case 0: white=1;red1=1;red2=0;break;
					case 1: white=0;red1=1;red2=0;break;
					case 2: white=1;red1=1;red2=0;break;//case0同case2
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
			else						//灯灭1单位,结束四次循环其中一次
			{
				switch (white_status)	//白灯调节按钮
				{
					case 0: white=1;red1=0;red2=0;break;
					case 1: white=0;red1=0;red2=0;break;
					case 2: white=0;red1=0;red2=0;break;//case1同case2
					default: break;
				}
				mode2_light_flag=1;
				mode2_four_cycle_count++;
				if(mode2_four_cycle_count>=4)
				{
					mode2_four_cycle_count=0;	//计数归零
					mode2_four_cycle_flag=0;
				}
			}
		}
		else							//四次循环结束
		{
			
			
			switch (white_status)		//白灯调节按钮
			{
				case 0: white=1;red1=0;red2=0;break;
				case 1: white=0;red1=0;red2=0;break;
				case 2: white=0;red1=0;red2=0;break;//case1同case2
				default: break;
			}
			mode2_count2++;
			if(mode2_count2>=16)		//灯灭16单位结束
			{
				mode2_count2=0;
				mode2_red1_flag=0;
				mode2_four_cycle_flag=1;//四次循环重新开始
			}	
		}
	}
	else								//红灯2亮
	{
		if(mode2_four_cycle_flag)	//判断四次循环是否结束
		{
			if(mode2_light_flag)		//判断当前是否亮灯
			{
				switch (white_status)	//白灯调节按钮
				{
					case 0: white=1;red1=0;red2=1;break;
					case 1: white=0;red1=0;red2=1;break;
					case 2: white=1;red1=0;red2=1;break;//case0同case2
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
			else						//灯灭1单位,结束四次循环其中一次
			{
				switch (white_status)	//白灯调节按钮
				{
					case 0: white=1;red1=0;red2=0;break;
					case 1: white=0;red1=0;red2=0;break;
					case 2: white=0;red1=0;red2=0;break;//case1同case2
					default: break;
				}
				mode2_light_flag=1;
				mode2_four_cycle_count++;
				if(mode2_four_cycle_count>=4)
				{
					mode2_four_cycle_count=0;	//计数归零
					mode2_four_cycle_flag=0;
				}
			}
		}
		else							//四次循环结束
		{
			switch (white_status)		//白灯调节按钮
			{
				case 0: white=1;red1=0;red2=0;break;
				case 1: white=0;red1=0;red2=0;break;
				case 2: white=0;red1=0;red2=0;break;//case1同case2
				default: break;
			}
			mode2_count2++;
			if(mode2_count2>=16)		//灯灭16单位结束
			{
				mode2_count2=0;
				mode2_red1_flag=1;
				mode2_four_cycle_flag=1;//四次循环重新开始
			}	
		}
	} 
}

void delayms(uchar xms) 	//延时
{
	uchar i,j;
	for(i=xms;i>0;i--)
		for(j=200;j>0;j--);
}
void keyscan()				//按键扫描
{
	if(!S1)					//S1按下
	{
		delayms(10);
		if(!S1)
		{	
			S1_flag=1;
			white_status++;
			if(white_status>=3)
			white_status=0;
			while(!S1);		//等待按键释放
		}
	}	
	if(!S2)					//S2按下
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
			while(!S2);		//等待按键释放
		}
	}
	
}

void main()
{
	
	WDTC();
	DISI();
	WDTCR=0;				//禁止WDT
	P6CR=0x38;				//P63,P64,P65设为输入,其他输出
	P5CR=0;
	PORT5=0;
	PHCR=0b11001111;		//0使能上拉,1关闭上拉
	PORT6=0;				//PORT6输出低
	_asm{
		mov	a,@0x07
		contw				//TCC分频比设为1：256
	}
	TCC=0;					//timer=1/4*(256-0)*256*2=32.768ms
	ISR=0;
	ENI();
	IMR=0X03;
	while(1)
	{	
		keyscan(); 	 		//键盘扫描	    
							//32768US定时到
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
		
		ISR&=0XFE;				//清TCC中断标志位
		TCC=0;					//TCC赋初值
	//	PORT5^=0x01;				
		Timer_interrupt_flag = 1;
	}
}

void _intcall interrupt_l(void) @ 0x08:low_int 0
{ 
}