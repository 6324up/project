/****************************************************************************
 *	Title:       EM78P173N.H												*
 *	Target MCU:  EM78P173N    	                    		*
 * 	Description: Register/bit definitions									*
 * 	Company:     ELAN MICROELECTRONICS (SZ) LTD.       	                    *
 * 	Date:        2010/09/07                           	                    *
 *	Version:     v1.0                                  	                    *
 ***************************************************************************/
 
#define wdtc() _asm{WDTC}
#define disi() _asm{DISI}
#define eni() _asm{ENI}
#define nop() _asm{NOP} 
 
static unsigned int R0			@0x00:rpage 0;//Indirect Address Register 
static unsigned int TCC     	@0x01:rpage 0;//Timer Clock/Counter
static unsigned int PC      	@0x02:rpage 0;//Program Counter Stack
static unsigned int STATUS  	@0x03:rpage 0;//Status	Register
static unsigned int RSR     	@0x04:rpage 0;//RAM Select Register
static unsigned int PORT5   	@0x05:rpage 0;//Port5
static unsigned int PORT6   	@0x06:rpage 0;//Port6
static unsigned int ISR     	@0x0F:rpage 0;//Interrupt Status Register


static io unsigned int P5CR 	@0x05:iopage 0;//Port5 Control Register
static io unsigned int P6CR 	@0x06:iopage 0;//Port6 Control Register
static io unsigned int PDCR 	@0x0B:iopage 0;	//Push-down Control Register
static io unsigned int ODCR 	@0x0C:iopage 0;	//Open-drain Control Register
static io unsigned int PHCR 	@0x0D:iopage 0;	//Push-high Control Register
static io unsigned int WDTCR	@0x0E:iopage 0;	//WDT Control Register
static io unsigned int IMR		@0x0F:iopage 0;	//Interrupt Mask Register
 
/*	R3 bits (Status Register) */
static bit RST		@0x03@7:rpage 0;	//bit for reset type
static bit GP1 		@0x03@6:rpage 0;
static bit GP0 		@0x03@5:rpage 0;	//general purpose read/write bits
static bit T   		@0x03@4:rpage 0;	//time-out bit
static bit P   		@0x03@3:rpage 0;	//power down bit
static bit Z   		@0x03@2:rpage 0;	///Zero flag
static bit DC  		@0x03@1:rpage 0;	//Auxiliary carry bit
static bit C   		@0x03@0:rpage 0;	//carry flag
               		
/*	R5 bits(Port5 Register) */
static bit P53 		@0x05@3:rpage 0;
static bit P52 		@0x05@2:rpage 0;
static bit P51 		@0x05@1:rpage 0;
static bit P50 		@0x05@0:rpage 0;
               		
/*	R6 bits(Port6 Register) */
static bit P67 		@0x06@7:rpage 0;
static bit P66 		@0x06@6:rpage 0;
static bit P65 		@0x06@5:rpage 0;
static bit P64 		@0x06@4:rpage 0;
static bit P63 		@0x06@3:rpage 0;
static bit P62 		@0x06@2:rpage 0;
static bit P61 		@0x06@1:rpage 0;
static bit P60 		@0x06@0:rpage 0;


/* RF bits(Interrupt status register) */
static bit EXIF		@0x0F@2:rpage 0;	//External interrupt flag
static bit ICIF		@0x0F@1:rpage 0;	//input status changed interrupt flag
static bit TCIF		@0x0F@0:rpage 0;	//TCC overflowing interrupt flag 

