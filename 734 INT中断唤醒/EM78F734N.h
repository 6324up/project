/****************************************************************************
 *	Title:       EM78F734N.H												*
 *	Target MCU:  EM78F734N					         	                    *
 *	Description: Register/bit definitions									*
 *	Company:     ELAN MICROELECTRONICS (SZ) LTD.       	                    *
 * 	Date:        2014-2-7                            	                    *
 *	Version:     v1.0                                  	                    *
 ***************************************************************************/

/*Register Bank 0  R4(7,6==00)*/
static unsigned int  R0				@0x00:rpage 0;//Indirect Address Register
static unsigned int  TCC			@0x01:rpage 0;//Timer Clock/Counter
static unsigned int  PC				@0x02:rpage 0;//Program Counter & Stack
static unsigned int  STATUS			@0x03:rpage 0;//Process Status Register
static unsigned int  RSR			@0x04:rpage 0;//RAM Select Register
static unsigned int  PORT5			@0x05:rpage 0;//I/O Port Address
static unsigned int  PORT6			@0x06:rpage 0;//I/O Port Address
static unsigned int  PORT7			@0x07:rpage 0;//I/O Port Address
static unsigned int  PORT8			@0x08:rpage 0;//I/O Port Address
static unsigned int  WUCR			@0x0A:rpage 0;//Wake-up Control register
static unsigned	int  EEPCR  		@0x0B:rpage 0;//EEPROM Control Register
static unsigned int  EEPA			@0x0C:rpage 0;//EEPROM address register
static unsigned int  EEPD			@0x0D:rpage 0;//EEPROM data register
static unsigned int  MSR 			@0x0E:rpage 0;//CPU operating control Register
static unsigned int  ISR1			@0x0F:rpage 0;//Interrupt Status Register

/*Register Bank 1  R4(7,6==0,1)*/
static unsigned int	 TC1CR			@0x05:rpage 1;//Timer 1 Control Register
static unsigned int	 TC1DA	 		@0x06:rpage 1;//Timer 1 Data Buffer A
static unsigned int	 TC1DB	 		@0x07:rpage 1;//Timer 1 Data Buffer B
static unsigned int	 OSCR			@0x08:rpage 1;//Oscillator control
static unsigned int	 TC2DA	 		@0x09:rpage 1;//Timer 2 Data Buffer A
static unsigned int  TC2DB			@0x0A:rpage 1;//Timer 2 Data Buffer B
static unsigned int	 ISR2			@0x0F:rpage 1;//Interrupt Status Register 2

/*Register Bank 2  R4(7,6==1,0)*/
static unsigned int  AISR			@0x05:rpage 2;//ADC Input Select Register
static unsigned int  ADCON			@0x06:rpage 2;//A/D Control Register
static unsigned int	 ADOC			@0x07:rpage 2;//A/D Offset Calibration Register
static unsigned	int	 ADDH			@0x08:rpage 2;//AD High 8-Bit Data Buffer
static unsigned int	 ADDL			@0x09:rpage 2;//AD Low 2-Bit Data Buffer
static unsigned int  PHCR1			@0x0F:rpage 2;//Pull-high Control Register 1

/*Register  Bank 3  R4(7,6==1,1)*/
static unsigned int  TC3CR			@0x0D:rpage 3;//Timer 3 Control
static unsigned int	 TC3D			@0x0E:rpage 3;//Timer 3 Data Buffer
static unsigned int	 PDCR1			@0x0F:rpage 3;//Pull-down Control Register 1

/*Control Register Page 0 */
static io unsigned int P5CR			@0x05:iopage 0;//I/O Port Control Register
static io unsigned int P6CR			@0x06:iopage 0;//I/O Port Control Register
static io unsigned int P7CR 		@0x07:iopage 0;//I/O Port Control Register
static io unsigned int P8CR  		@0x08:iopage 0;//I/O Port Control Register
static io unsigned int WDTCR		@0x0A:iopage 0;//WDT Control Register
static io unsigned int PDCR2		@0x0B:iopage 0;//Pull-down Control Register 2
static io unsigned int ODCR			@0x0C:iopage 0;//Open-drain Control Register
static io unsigned int PHCR2		@0x0D:iopage 0;//Pull-high Control Register 2
static io unsigned int IMR2			@0x0E:iopage 0;//Interrupt Mask Register 2
static io unsigned int IMR1			@0x0F:iopage 0;//Interrupt Mask Register 1

/*R3 Bits**/
static bit	T		@0x03@4:rpage 0;
static bit  P		@0x03@3:rpage 0;
static bit  Z		@0x03@2:rpage 0;
static bit 	DC	 	@0x03@1:rpage 0;
static bit 	C		@0x03@0:rpage 0;

/*RSR Bits*/
static bit  BS1		@0x04@7:rpage 0;
static bit	BS0		@0x04@6:rpage 0;
static bit  R45		@0x04@5:rpage 0;
static bit	R44		@0x04@4:rpage 0;
static bit  R43 	@0x04@3:rpage 0;
static bit	R42		@0x04@2:rpage 0;
static bit  R41		@0x04@1:rpage 0;
static bit	R40		@0x04@0:rpage 0;

/*PORT5 Bits*/
static bit	P57		@0x05@7:rpage 0;
static bit	P55		@0x05@5:rpage 0;
static bit  P54		@0x05@4:rpage 0;
static bit	P53		@0x05@3:rpage 0;
static bit	P52		@0x05@2:rpage 0;
static bit	P51		@0x05@1:rpage 0;
static bit	P50		@0x05@0:rpage 0;

/*PORT6 Bits*/
static bit  P63		@0x06@3:rpage 0;
static bit	P62		@0x06@2:rpage 0;
static bit	P61		@0x06@1:rpage 0;
static bit	P60		@0x06@0:rpage 0;

/*PORT7  Bits*/
static bit	P77		@0x07@7:rpage 0;
static bit	P74		@0x07@4:rpage 0;
static bit	P73		@0x07@3:rpage 0;
static bit	P72		@0x07@2:rpage 0;
static bit	P71		@0x07@1:rpage 0;
static bit	P70		@0x07@0:rpage 0;

/*PORT8  Bits*/
static bit	P83		@0x08@3:rpage 0;

/*WUCR  Bits*/
static bit	ICWE	@0x0A@6:rpage 0;
static bit	ADWE	@0x0A@5:rpage 0;
static bit	EXWE	@0x0A@4:rpage 0;

/*EEPCR Bits*/
static bit	RDB		@0x0B@7:rpage 0;
static bit	WR		@0x0B@6:rpage 0;
static bit	EEWE	@0x0B@5:rpage 0;
static bit	EEDF	@0x0B@4:rpage 0;
static bit	EEPC	@0x0B@3:rpage 0;

/*MSR Bits*/
static bit	TIMERSC	@0x0E@6:rpage 0;
static bit	CPUS	@0x0E@5:rpage 0;
static bit	IDLE	@0x0E@4:rpage 0;

/*ISR1 Bits*/
static bit	ADIF	@0x0F@6:rpage 0;
static bit	EXIF	@0x0F@2:rpage 0;
static bit	ICIF	@0x0F@1:rpage 0;
static bit	TCIF	@0x0F@0:rpage 0;


/*TC1CR Bits*/
static bit	TC1CAP	@0x05@7:rpage 1;
static bit	TC1S	@0x05@6:rpage 1;
static bit	TC1M	@0x05@5:rpage 1;
static bit	TC1ES	@0x05@4:rpage 1;
static bit	TC1MOD	@0x05@3:rpage 1;
static bit	TC1CK2	@0x05@2:rpage 1;
static bit	TC1CK1	@0x05@1:rpage 1;
static bit	TC1CK0	@0x05@0:rpage 1;
	

/*OSCR Bits*/
static bit	RCM1	@0x08@7:rpage 1;
static bit	RCM0	@0x08@6:rpage 1;

/*ISR2	Bits*/
static bit	TCIF3	@0x0F@5:rpage 1;
static bit	TCIF1	@0x0F@3:rpage 1;

/*AISR Bits*/
static bit	ADE7	@0x05@7:rpage 2;
static bit	ADE5	@0x05@5:rpage 2;
static bit	ADE4	@0x05@4:rpage 2;
static bit	ADE3	@0x05@3:rpage 2;
static bit	ADE2	@0x05@2:rpage 2;
static bit	ADE1	@0x05@1:rpage 2;
static bit	ADE0	@0x05@0:rpage 2;

/*ADCON Bits*/
static bit	VREFS	@0x06@7:rpage 2;
static bit	CKR1	@0x06@6:rpage 2;
static bit	CKR0	@0x06@5:rpage 2;
static bit	ADRUN	@0x06@4:rpage 2;
static bit	ADPD	@0x06@3:rpage 2;
static bit	ADIS2	@0x06@2:rpage 2;
static bit	ADIS1	@0x06@1:rpage 2;
static bit	ADIS0	@0x06@0:rpage 2;

/*ADOC Bits*/
static bit	PDE		@0x07@2:rpage 2;

/*ADDL Bits*/
static bit IRVS1	@0X09@5:rpage 2;
static bit IRVS0	@0X09@4:rpage 2;

/*PHCR1 Bits*/
static bit	PH73B	@0x0F@3:rpage 2;
static bit	PH72B	@0x0F@2:rpage 2;
static bit	PH71B	@0x0F@1:rpage 2;
static bit	PH70B	@0x0F@0:rpage 2;


/*TC3CR Bits*/
static bit	TC3FF1	@0x0D@7:rpage 3;
static bit	TC3FF0	@0x0D@6:rpage 3;
static bit	TC3S	@0x0D@5:rpage 3;
static bit	TC3CK2	@0x0D@4:rpage 3;
static bit	TC3CK1	@0x0D@3:rpage 3;
static bit	TC3CK0	@0x0D@2:rpage 3;
static bit	TC3M1	@0x0D@1:rpage 3;
static bit	TC3M0	@0x0D@0:rpage 3;

/*PDCR1 Bits*/
static bit	PD73B	@0x0F@3:rpage 3;
static bit	PD72B	@0x0F@2:rpage 3;
static bit	PD71B	@0x0F@1:rpage 3;
static bit	PD70B	@0x0F@0:rpage 3;