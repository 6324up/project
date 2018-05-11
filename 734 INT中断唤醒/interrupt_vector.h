#ifndef __INTERRUPT_VECTOR_H__
#define __INTERRUPT_VECTOR_H__

/* You can remove marks, if you want using any interrupt funcitons.	*/
/*
extern int IntVecIdx; //occupied 0x10:rpage 0
void _intcall ALLint(void) @ int 
{
  switch(IntVecIdx)
  {
    //case 0x4:
    //break;
    
    //case 0x7:
    //break;
    
    //case 0xA:
    //break;
  
    //case 0x19:
    //break;
          
    //case 0x28:
    //break;    
           
    //case 0x31:
    //break;      
  } 	
}
*/

/*void _intcall ext_interrupt_l(void) @ 0x03:low_int 0
{
 _asm{MOV A,0x2};  	
}*/

/*void _intcall port6pinchange_l(void) @ 0x06:low_int 1
{
 _asm{MOV A,0x2};  	
}*/

/*void _intcall tccint_l(void) @ 0x09:low_int 2
{
 _asm{MOV A,0x2};  	
}*/

/*void _intcall TC1_l(void) @ 0x18:low_int 5
{
 _asm{MOV A,0x2};  	
}*/

/*void _intcall TC3_l(void) @ 0x27:low_int 6
{
 _asm{MOV A,0x2};  	
}*/

/*void _intcall AD_l(void) @ 0x30:low_int 7
{
 _asm{MOV A,0x2};  	
}*/



#endif