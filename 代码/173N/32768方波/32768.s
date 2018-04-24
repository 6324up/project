.autoimport
EM78P173N EQU 1
_SIMPLE_RSR_ EQU 1
.include "sysdefii.inc"
ccounter equ pr1
.stabs "icc_compiled.",60,0,0,0
.stabs "C:\Users\daminger\Desktop\Á·Ï°\173N\32768·½²¨\32768.c",100,0,3,0
.stabs "int:t1=r1;-128;127;",128,0,0,0
.stabs "char:t2=r2;-128;127;",128,0,0,0
.stabs "double:t3=r1;3;0;",128,0,0,0
.stabs "float:t4=r1;3;0;",128,0,0,0
.stabs "long double:t5=r1;3;0;",128,0,0,0
.stabs "long:t6=r1;-2147483648;2147483647;",128,0,0,0
.stabs "long long:t7=r1;-2147483648;2147483647;",128,0,0,0
.stabs "short:t8=r1;-32768;32767;",128,0,0,0
.stabs "signed char:t9=r1;-128;127;",128,0,0,0
.stabs "unsigned char:t10=r1;0;255;",128,0,0,0
.stabs "unsigned long:t11=r1;0;4294967295;",128,0,0,0
.stabs "unsigned long long:t12=r1;0;4294967295;",128,0,0,0
.stabs "unsigned short:t13=r1;0;65535;",128,0,0,0
.stabs "unsigned int:t14=r1;0;255;",128,0,0,0
.stabs "void:t15=15",128,0,0,0
.stabs "bit:t16=r16;0;1;",128,0,0,0
.section ".data"
public _Timer_interrupt_flag
.align 1
_Timer_interrupt_flag:
.SYMDEF "_Timer_interrupt_flag" BIT,LEN:1
db 0
.stabs "Timer_interrupt_flag:G16",32,0,0,_Timer_interrupt_flag@0
public _main
public main_bp
.section ".code"
.stabs "main:F15",36,0,0,_main
.section ".S0",C_CODE
.SYMDEF ".S0" 
_main:
.SYMDEF "_main" 
.stabn 192,0,0,L10
L10:
.stabn 68,0,23,L12
L12:
.stabn 68,0,25,L13
L13:
.cfile "C:\Users\daminger\Desktop\Á·Ï°\173N\32768·½²¨\32768.c(25):"
wdtc
.stabn 68,0,25,L14
L14:
.stabn 68,0,26,L15
L15:
.cfile "C:\Users\daminger\Desktop\Á·Ï°\173N\32768·½²¨\32768.c(26):"
disi
.stabn 68,0,26,L16
L16:
.stabn 68,0,28,L17
L17:
mov a,@0
STA _WDTCR,0,2
.stabn 68,0,29,L18
L18:
mov a,@254
STA _P6CR,0,2
.stabn 68,0,30,L19
L19:
clr _PORT6
.stabn 68,0,32,L20
L20:
.cfile "C:\Users\daminger\Desktop\Á·Ï°\173N\32768·½²¨\32768.c(32):"
mov	a,@0x07
.stabn 68,0,33,L21
L21:
.cfile "C:\Users\daminger\Desktop\Á·Ï°\173N\32768·½²¨\32768.c(33):"
contw
.stabn 68,0,35,L22
L22:
clr _TCC
.stabn 68,0,36,L23
L23:
clr _ISR
.stabn 68,0,37,L24
L24:
mov a,@1
STA _IMR,0,2
.stabn 68,0,38,L25
L25:
.cfile "C:\Users\daminger\Desktop\Á·Ï°\173N\32768·½²¨\32768.c(38):"
eni
.stabn 68,0,38,L26
L26:
jmp @L$3
L$2:
.stabn 192,0,1,L27
L27:
.stabn 68,0,40,L28
L28:
.stabn 68,0,41,L29
L29:
jbs _Timer_interrupt_flag,BIT
EXTJMP @L$5
.stabn 192,0,2,L30
L30:
.stabn 68,0,42,L31
L31:
.stabn 68,0,43,L32
L32:
bc _Timer_interrupt_flag,BIT
.stabn 68,0,44,L33
L33:
jbc _P60,0
EXTJMP @L$8
mov a,@1
STA main_bp-1,0,0
jmp @L$9
L$8:
clr main_bp-1
L$9:
LDA main_bp-1,0,0
mov ecx,a
bc _P60,0
jbc ecx,0
bs _P60,0
.stabn 68,0,45,L34
L34:
.stabn 224,0,2,L35
L35:
L$5:
.stabn 68,0,46,L36
L36:
.stabn 224,0,1,L37
L37:
L$3:
.stabn 68,0,39,L38
L38:
jmp @L$2
.stabn 68,0,47,L39
L39:
.stabn 224,0,0,L40
L40:
L$1:
ret
.STACK main_bp,local,1
public _interrupt
public interrupt_bp
.stabs "interrupt:F15",36,0,0,_interrupt
.section ".S1",C_CODE
.SYMDEF ".S1" INT:-1
_interrupt:
.SYMDEF "_interrupt" INT:-1
.stabn 192,0,0,L44
L44:
.stabn 68,0,50,L45
L45:
.stabn 68,0,53,L46
L46:
jbs _TCIF,0
EXTJMP @L$42
.stabn 192,0,1,L47
L47:
.stabn 68,0,54,L48
L48:
.stabn 68,0,56,L49
L49:
LDA _ISR,0,0
and a,@254
STA _ISR,0,0
.stabn 68,0,57,L50
L50:
clr _TCC
.stabn 68,0,59,L51
L51:
bs _Timer_interrupt_flag,BIT
.stabn 68,0,60,L52
L52:
.stabn 224,0,1,L53
L53:
L$42:
.stabn 68,0,61,L54
L54:
.stabn 224,0,0,L55
L55:
L$41:
reti
.STACK interrupt_bp,local,0
public _interrupt_l
public interrupt_l_bp
.stabs "interrupt_l:F15",36,0,0,_interrupt_l
.section ".S2",C_CODE
.SYMDEF ".S2" LOWINT:0,8
_interrupt_l:
.SYMDEF "_interrupt_l" LOWINT:0,8
.stabn 192,0,0,L57
L57:
.stabn 68,0,64,L58
L58:
.stabn 68,0,65,L59
L59:
.stabn 224,0,0,L60
L60:
L$56:
reti
.STACK interrupt_l_bp,local,0
.section ".bss"
.align 1
_RCM0:
.SYMDEF "_RCM0" REG:1,BIT:0,15,LEN:1
ds 1
.stabs "RCM0:S16",40,0,0,_RCM0
.align 1
_RCM1:
.SYMDEF "_RCM1" REG:1,BIT:1,15,LEN:1
ds 1
.stabs "RCM1:S16",40,0,0,_RCM1
.align 1
_IDLE:
.SYMDEF "_IDLE" REG:1,BIT:4,15,LEN:1
ds 1
.stabs "IDLE:S16",40,0,0,_IDLE
.align 1
_CPUS:
.SYMDEF "_CPUS" REG:1,BIT:5,15,LEN:1
ds 1
.stabs "CPUS:S16",40,0,0,_CPUS
.align 1
_TIMERSC:
.SYMDEF "_TIMERSC" REG:1,BIT:6,15,LEN:1
ds 1
.stabs "TIMERSC:S16",40,0,0,_TIMERSC
.align 1
_EXWE:
.SYMDEF "_EXWE" REG:1,BIT:0,14,LEN:1
ds 1
.stabs "EXWE:S16",40,0,0,_EXWE
.align 1
_LVD0:
.SYMDEF "_LVD0" REG:1,BIT:4,14,LEN:1
ds 1
.stabs "LVD0:S16",40,0,0,_LVD0
.align 1
_LVD1:
.SYMDEF "_LVD1" REG:1,BIT:5,14,LEN:1
ds 1
.stabs "LVD1:S16",40,0,0,_LVD1
.align 1
_LVDEN:
.SYMDEF "_LVDEN" REG:1,BIT:6,14,LEN:1
ds 1
.stabs "LVDEN:S16",40,0,0,_LVDEN
.align 1
_LVDIE:
.SYMDEF "_LVDIE" REG:1,BIT:7,14,LEN:1
ds 1
.stabs "LVDIE:S16",40,0,0,_LVDIE
.align 1
_Rbit0:
.SYMDEF "_Rbit0" REG:1,BIT:0,6,LEN:1
ds 1
.stabs "Rbit0:S16",40,0,0,_Rbit0
.align 1
_Rbit1:
.SYMDEF "_Rbit1" REG:1,BIT:1,6,LEN:1
ds 1
.stabs "Rbit1:S16",40,0,0,_Rbit1
.align 1
_Rbit2:
.SYMDEF "_Rbit2" REG:1,BIT:2,6,LEN:1
ds 1
.stabs "Rbit2:S16",40,0,0,_Rbit2
.align 1
_Rbit3:
.SYMDEF "_Rbit3" REG:1,BIT:3,6,LEN:1
ds 1
.stabs "Rbit3:S16",40,0,0,_Rbit3
.align 1
_Rbit4:
.SYMDEF "_Rbit4" REG:1,BIT:4,6,LEN:1
ds 1
.stabs "Rbit4:S16",40,0,0,_Rbit4
.align 1
_Rbit5:
.SYMDEF "_Rbit5" REG:1,BIT:5,6,LEN:1
ds 1
.stabs "Rbit5:S16",40,0,0,_Rbit5
.align 1
_Rbit6:
.SYMDEF "_Rbit6" REG:1,BIT:6,6,LEN:1
ds 1
.stabs "Rbit6:S16",40,0,0,_Rbit6
.align 1
_Rbit7:
.SYMDEF "_Rbit7" REG:1,BIT:7,6,LEN:1
ds 1
.stabs "Rbit7:S16",40,0,0,_Rbit7
.align 1
_Rbit8:
.SYMDEF "_Rbit8" REG:1,BIT:0,5,LEN:1
ds 1
.stabs "Rbit8:S16",40,0,0,_Rbit8
.align 1
_Rbit9:
.SYMDEF "_Rbit9" REG:1,BIT:1,5,LEN:1
ds 1
.stabs "Rbit9:S16",40,0,0,_Rbit9
.align 1
_MLB:
.SYMDEF "_MLB" REG:1,BIT:7,5,LEN:1
ds 1
.stabs "MLB:S16",40,0,0,_MLB
.align 1
_TCIF:
.SYMDEF "_TCIF" REG:0,BIT:0,15,LEN:1
ds 1
.stabs "TCIF:S16",40,0,0,_TCIF
.align 1
_ICIF:
.SYMDEF "_ICIF" REG:0,BIT:1,15,LEN:1
ds 1
.stabs "ICIF:S16",40,0,0,_ICIF
.align 1
_EXIF:
.SYMDEF "_EXIF" REG:0,BIT:2,15,LEN:1
ds 1
.stabs "EXIF:S16",40,0,0,_EXIF
.align 1
_LVDWE:
.SYMDEF "_LVDWE" REG:0,BIT:0,14,LEN:1
ds 1
.stabs "LVDWE:S16",40,0,0,_LVDWE
.align 1
_LVDIF:
.SYMDEF "_LVDIF" REG:0,BIT:0,14,LEN:1
ds 1
.stabs "LVDIF:S16",40,0,0,_LVDIF
.align 1
__LVD:
.SYMDEF "__LVD" REG:0,BIT:0,14,LEN:1
ds 1
.stabs "_LVD:S16",40,0,0,__LVD
.align 1
_P60:
.SYMDEF "_P60" REG:0,BIT:0,6,LEN:1
ds 1
.stabs "P60:S16",40,0,0,_P60
.align 1
_P61:
.SYMDEF "_P61" REG:0,BIT:1,6,LEN:1
ds 1
.stabs "P61:S16",40,0,0,_P61
.align 1
_P62:
.SYMDEF "_P62" REG:0,BIT:2,6,LEN:1
ds 1
.stabs "P62:S16",40,0,0,_P62
.align 1
_P63:
.SYMDEF "_P63" REG:0,BIT:3,6,LEN:1
ds 1
.stabs "P63:S16",40,0,0,_P63
.align 1
_P64:
.SYMDEF "_P64" REG:0,BIT:4,6,LEN:1
ds 1
.stabs "P64:S16",40,0,0,_P64
.align 1
_P65:
.SYMDEF "_P65" REG:0,BIT:5,6,LEN:1
ds 1
.stabs "P65:S16",40,0,0,_P65
.align 1
_P66:
.SYMDEF "_P66" REG:0,BIT:6,6,LEN:1
ds 1
.stabs "P66:S16",40,0,0,_P66
.align 1
_P67:
.SYMDEF "_P67" REG:0,BIT:7,6,LEN:1
ds 1
.stabs "P67:S16",40,0,0,_P67
.align 1
_P50:
.SYMDEF "_P50" REG:0,BIT:0,5,LEN:1
ds 1
.stabs "P50:S16",40,0,0,_P50
.align 1
_P51:
.SYMDEF "_P51" REG:0,BIT:1,5,LEN:1
ds 1
.stabs "P51:S16",40,0,0,_P51
.align 1
_P52:
.SYMDEF "_P52" REG:0,BIT:2,5,LEN:1
ds 1
.stabs "P52:S16",40,0,0,_P52
.align 1
_P53:
.SYMDEF "_P53" REG:0,BIT:3,5,LEN:1
ds 1
.stabs "P53:S16",40,0,0,_P53
.align 1
_C:
.SYMDEF "_C" REG:0,BIT:0,3,LEN:1
ds 1
.stabs "C:S16",40,0,0,_C
.align 1
_DC:
.SYMDEF "_DC" REG:0,BIT:1,3,LEN:1
ds 1
.stabs "DC:S16",40,0,0,_DC
.align 1
_Z:
.SYMDEF "_Z" REG:0,BIT:2,3,LEN:1
ds 1
.stabs "Z:S16",40,0,0,_Z
.align 1
_P:
.SYMDEF "_P" REG:0,BIT:3,3,LEN:1
ds 1
.stabs "P:S16",40,0,0,_P
.align 1
_T:
.SYMDEF "_T" REG:0,BIT:4,3,LEN:1
ds 1
.stabs "T:S16",40,0,0,_T
.align 1
_GP0:
.SYMDEF "_GP0" REG:0,BIT:5,3,LEN:1
ds 1
.stabs "GP0:S16",40,0,0,_GP0
.align 1
_GP1:
.SYMDEF "_GP1" REG:0,BIT:6,3,LEN:1
ds 1
.stabs "GP1:S16",40,0,0,_GP1
.align 1
_RST:
.SYMDEF "_RST" REG:0,BIT:7,3,LEN:1
ds 1
.stabs "RST:S16",40,0,0,_RST
.align 1
_IMR:
.SYMDEF "_IMR" IO:0,15,LEN:1
ds 1
.stabs "IMR:S14",40,0,0,_IMR
.align 1
_WDTCR:
.SYMDEF "_WDTCR" IO:0,14,LEN:1
ds 1
.stabs "WDTCR:S14",40,0,0,_WDTCR
.align 1
_PHCR:
.SYMDEF "_PHCR" IO:0,13,LEN:1
ds 1
.stabs "PHCR:S14",40,0,0,_PHCR
.align 1
_ODCR:
.SYMDEF "_ODCR" IO:0,12,LEN:1
ds 1
.stabs "ODCR:S14",40,0,0,_ODCR
.align 1
_PDCR:
.SYMDEF "_PDCR" IO:0,11,LEN:1
ds 1
.stabs "PDCR:S14",40,0,0,_PDCR
.align 1
_P6CR:
.SYMDEF "_P6CR" IO:0,6,LEN:1
ds 1
.stabs "P6CR:S14",40,0,0,_P6CR
.align 1
_P5CR:
.SYMDEF "_P5CR" IO:0,5,LEN:1
ds 1
.stabs "P5CR:S14",40,0,0,_P5CR
.align 1
_SCR:
.SYMDEF "_SCR" REG:1,15,LEN:1
ds 1
.stabs "SCR:S14",40,0,0,_SCR
.align 1
_LVDIMR:
.SYMDEF "_LVDIMR" REG:1,14,LEN:1
ds 1
.stabs "LVDIMR:S14",40,0,0,_LVDIMR
.align 1
_TBLP:
.SYMDEF "_TBLP" REG:1,6,LEN:1
ds 1
.stabs "TBLP:S14",40,0,0,_TBLP
.align 1
_TBHP:
.SYMDEF "_TBHP" REG:1,5,LEN:1
ds 1
.stabs "TBHP:S14",40,0,0,_TBHP
.align 1
_ISR:
.SYMDEF "_ISR" REG:0,15,LEN:1
ds 1
.stabs "ISR:S14",40,0,0,_ISR
.align 1
_LVDCR:
.SYMDEF "_LVDCR" REG:0,14,LEN:1
ds 1
.stabs "LVDCR:S14",40,0,0,_LVDCR
.align 1
_PORT6:
.SYMDEF "_PORT6" REG:0,6,LEN:1
ds 1
.stabs "PORT6:S14",40,0,0,_PORT6
.align 1
_PORT5:
.SYMDEF "_PORT5" REG:0,5,LEN:1
ds 1
.stabs "PORT5:S14",40,0,0,_PORT5
.align 1
_RSR:
.SYMDEF "_RSR" REG:0,4,LEN:1
ds 1
.stabs "RSR:S14",40,0,0,_RSR
.align 1
_STATUS:
.SYMDEF "_STATUS" REG:0,3,LEN:1
ds 1
.stabs "STATUS:S14",40,0,0,_STATUS
.align 1
_PC:
.SYMDEF "_PC" REG:0,2,LEN:1
ds 1
.stabs "PC:S14",40,0,0,_PC
.align 1
_TCC:
.SYMDEF "_TCC" REG:0,1,LEN:1
ds 1
.stabs "TCC:S14",40,0,0,_TCC
.align 1
_R0:
.SYMDEF "_R0" REG:0,0,LEN:1
ds 1
.stabs "R0:S14",40,0,0,_R0
.section ".code"
end
