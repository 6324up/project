.autoimport
EM78F734N EQU 1
_SIMPLE_RSR_ EQU 1
.include "sysdefii.inc"
ccounter equ pr1
.stabs "icc_compiled.",60,0,0,0
.stabs "C:\Users\daminger\OneDrive\github\project\734\wake up.c",100,0,3,0
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
public _main
public main_bp
.section ".code"
.stabs "main:F15",36,0,0,_main
.section ".S0",C_CODE
.SYMDEF ".S0" 
_main:
.SYMDEF "_main" 
.stabn 192,0,0,L5
L5:
.stabn 68,0,10,L7
L7:
.stabn 68,0,11,L8
L8:
.cfile "C:\Users\daminger\OneDrive\github\project\734\wake up.c(11):"
disi
.stabn 68,0,11,L9
L9:
.stabn 68,0,12,L10
L10:
.cfile "C:\Users\daminger\OneDrive\github\project\734\wake up.c(12):"
wdtc
.stabn 68,0,12,L11
L11:
.stabn 68,0,13,L12
L12:
mov a,@96
STA _MSR,0,0
.stabn 68,0,14,L13
L13:
mov a,@0
STA _P7CR,0,2
.stabn 68,0,15,L14
L14:
bc _P73,3
.stabn 68,0,17,L15
L15:
mov a,@1
STA _P6CR,0,2
.stabn 68,0,18,L16
L16:
mov a,@64
STA _WDTCR,0,2
.stabn 68,0,20,L17
L17:
.cfile "C:\Users\daminger\OneDrive\github\project\734\wake up.c(20):"
MOV		A,@0x00
.stabn 68,0,21,L18
L18:
.cfile "C:\Users\daminger\OneDrive\github\project\734\wake up.c(21):"
CONTW
.stabn 68,0,23,L19
L19:
mov a,@4
STA _IMR1,0,2
.stabn 68,0,24,L20
L20:
LDA _PORT6,0,0
STA _PORT6,0,0
.stabn 68,0,25,L21
L21:
mov a,@16
STA _WUCR,0,0
.stabn 68,0,26,L22
L22:
.cfile "C:\Users\daminger\OneDrive\github\project\734\wake up.c(26):"
eni
.stabn 68,0,26,L23
L23:
.stabn 68,0,27,L24
L24:
.cfile "C:\Users\daminger\OneDrive\github\project\734\wake up.c(27):"
slep
.stabn 68,0,27,L25
L25:
.stabn 68,0,28,L26
L26:
.cfile "C:\Users\daminger\OneDrive\github\project\734\wake up.c(28):"
nop
.stabn 68,0,28,L27
L27:
.stabn 68,0,29,L28
L28:
.cfile "C:\Users\daminger\OneDrive\github\project\734\wake up.c(29):"
wdtc
.stabn 68,0,29,L29
L29:
.stabn 68,0,30,L30
L30:
.cfile "C:\Users\daminger\OneDrive\github\project\734\wake up.c(30):"
nop
.stabn 68,0,30,L31
L31:
L$2:
.stabn 68,0,31,L32
L32:
L$3:
.stabn 68,0,31,L33
L33:
jmp @L$2
.stabn 68,0,32,L34
L34:
.stabn 224,0,0,L35
L35:
L$1:
ret
.STACK main_bp,local,0
public _ALLint
public ALLint_bp
.stabs "ALLint:F15",36,0,0,_ALLint
.section ".S1",C_CODE
.SYMDEF ".S1" INT:-1
_ALLint:
.SYMDEF "_ALLint" INT:-1
.stabn 192,0,0,L40
L40:
.stabn 68,0,35,L41
L41:
.stabn 68,0,36,L42
L42:
EQNEPRIB _IntVecIdx,4
jbc STATUS,zf
EXTJMP @L$39
jmp @L$37
.stabn 192,0,1,L43
L43:
.stabn 68,0,37,L44
L44:
L$39:
.stabn 68,0,39,L45
L45:
LDA _ISR1,0,0
and a,@251
STA _ISR1,0,0
.stabn 68,0,40,L46
L46:
bs _P73,3
.stabn 68,0,41,L47
L47:
.stabn 68,0,42,L48
L48:
.stabn 224,0,1,L49
L49:
L$37:
L$38:
.stabn 68,0,43,L50
L50:
.stabn 224,0,0,L51
L51:
L$36:
reti
.STACK ALLint_bp,local,0
public _ext_interrupt_l
public ext_interrupt_l_bp
.stabs "ext_interrupt_l:F15",36,0,0,_ext_interrupt_l
.section ".S2",C_CODE
.SYMDEF ".S2" LOWINT:0,3
_ext_interrupt_l:
.SYMDEF "_ext_interrupt_l" LOWINT:0,3
.stabn 192,0,0,L53
L53:
.stabn 68,0,46,L54
L54:
.stabn 68,0,47,L55
L55:
.cfile "C:\Users\daminger\OneDrive\github\project\734\wake up.c(47):"
MOV A,0x2
.stabn 68,0,47,L56
L56:
.stabn 68,0,48,L57
L57:
.stabn 224,0,0,L58
L58:
L$52:
reti
.STACK ext_interrupt_l_bp,local,0
extrn _IntVecIdx
.section ".code"
.section ".bss"
.align 1
_PD70B:
.SYMDEF "_PD70B" REG:3,BIT:0,15,LEN:1
ds 1
.stabs "PD70B:S16",40,0,0,_PD70B
.align 1
_PD71B:
.SYMDEF "_PD71B" REG:3,BIT:1,15,LEN:1
ds 1
.stabs "PD71B:S16",40,0,0,_PD71B
.align 1
_PD72B:
.SYMDEF "_PD72B" REG:3,BIT:2,15,LEN:1
ds 1
.stabs "PD72B:S16",40,0,0,_PD72B
.align 1
_PD73B:
.SYMDEF "_PD73B" REG:3,BIT:3,15,LEN:1
ds 1
.stabs "PD73B:S16",40,0,0,_PD73B
.align 1
_TC3M0:
.SYMDEF "_TC3M0" REG:3,BIT:0,13,LEN:1
ds 1
.stabs "TC3M0:S16",40,0,0,_TC3M0
.align 1
_TC3M1:
.SYMDEF "_TC3M1" REG:3,BIT:1,13,LEN:1
ds 1
.stabs "TC3M1:S16",40,0,0,_TC3M1
.align 1
_TC3CK0:
.SYMDEF "_TC3CK0" REG:3,BIT:2,13,LEN:1
ds 1
.stabs "TC3CK0:S16",40,0,0,_TC3CK0
.align 1
_TC3CK1:
.SYMDEF "_TC3CK1" REG:3,BIT:3,13,LEN:1
ds 1
.stabs "TC3CK1:S16",40,0,0,_TC3CK1
.align 1
_TC3CK2:
.SYMDEF "_TC3CK2" REG:3,BIT:4,13,LEN:1
ds 1
.stabs "TC3CK2:S16",40,0,0,_TC3CK2
.align 1
_TC3S:
.SYMDEF "_TC3S" REG:3,BIT:5,13,LEN:1
ds 1
.stabs "TC3S:S16",40,0,0,_TC3S
.align 1
_TC3FF0:
.SYMDEF "_TC3FF0" REG:3,BIT:6,13,LEN:1
ds 1
.stabs "TC3FF0:S16",40,0,0,_TC3FF0
.align 1
_TC3FF1:
.SYMDEF "_TC3FF1" REG:3,BIT:7,13,LEN:1
ds 1
.stabs "TC3FF1:S16",40,0,0,_TC3FF1
.align 1
_PH70B:
.SYMDEF "_PH70B" REG:2,BIT:0,15,LEN:1
ds 1
.stabs "PH70B:S16",40,0,0,_PH70B
.align 1
_PH71B:
.SYMDEF "_PH71B" REG:2,BIT:1,15,LEN:1
ds 1
.stabs "PH71B:S16",40,0,0,_PH71B
.align 1
_PH72B:
.SYMDEF "_PH72B" REG:2,BIT:2,15,LEN:1
ds 1
.stabs "PH72B:S16",40,0,0,_PH72B
.align 1
_PH73B:
.SYMDEF "_PH73B" REG:2,BIT:3,15,LEN:1
ds 1
.stabs "PH73B:S16",40,0,0,_PH73B
.align 1
_IRVS0:
.SYMDEF "_IRVS0" REG:2,BIT:4,9,LEN:1
ds 1
.stabs "IRVS0:S16",40,0,0,_IRVS0
.align 1
_IRVS1:
.SYMDEF "_IRVS1" REG:2,BIT:5,9,LEN:1
ds 1
.stabs "IRVS1:S16",40,0,0,_IRVS1
.align 1
_PDE:
.SYMDEF "_PDE" REG:2,BIT:2,7,LEN:1
ds 1
.stabs "PDE:S16",40,0,0,_PDE
.align 1
_ADIS0:
.SYMDEF "_ADIS0" REG:2,BIT:0,6,LEN:1
ds 1
.stabs "ADIS0:S16",40,0,0,_ADIS0
.align 1
_ADIS1:
.SYMDEF "_ADIS1" REG:2,BIT:1,6,LEN:1
ds 1
.stabs "ADIS1:S16",40,0,0,_ADIS1
.align 1
_ADIS2:
.SYMDEF "_ADIS2" REG:2,BIT:2,6,LEN:1
ds 1
.stabs "ADIS2:S16",40,0,0,_ADIS2
.align 1
_ADPD:
.SYMDEF "_ADPD" REG:2,BIT:3,6,LEN:1
ds 1
.stabs "ADPD:S16",40,0,0,_ADPD
.align 1
_ADRUN:
.SYMDEF "_ADRUN" REG:2,BIT:4,6,LEN:1
ds 1
.stabs "ADRUN:S16",40,0,0,_ADRUN
.align 1
_CKR0:
.SYMDEF "_CKR0" REG:2,BIT:5,6,LEN:1
ds 1
.stabs "CKR0:S16",40,0,0,_CKR0
.align 1
_CKR1:
.SYMDEF "_CKR1" REG:2,BIT:6,6,LEN:1
ds 1
.stabs "CKR1:S16",40,0,0,_CKR1
.align 1
_VREFS:
.SYMDEF "_VREFS" REG:2,BIT:7,6,LEN:1
ds 1
.stabs "VREFS:S16",40,0,0,_VREFS
.align 1
_ADE0:
.SYMDEF "_ADE0" REG:2,BIT:0,5,LEN:1
ds 1
.stabs "ADE0:S16",40,0,0,_ADE0
.align 1
_ADE1:
.SYMDEF "_ADE1" REG:2,BIT:1,5,LEN:1
ds 1
.stabs "ADE1:S16",40,0,0,_ADE1
.align 1
_ADE2:
.SYMDEF "_ADE2" REG:2,BIT:2,5,LEN:1
ds 1
.stabs "ADE2:S16",40,0,0,_ADE2
.align 1
_ADE3:
.SYMDEF "_ADE3" REG:2,BIT:3,5,LEN:1
ds 1
.stabs "ADE3:S16",40,0,0,_ADE3
.align 1
_ADE4:
.SYMDEF "_ADE4" REG:2,BIT:4,5,LEN:1
ds 1
.stabs "ADE4:S16",40,0,0,_ADE4
.align 1
_ADE5:
.SYMDEF "_ADE5" REG:2,BIT:5,5,LEN:1
ds 1
.stabs "ADE5:S16",40,0,0,_ADE5
.align 1
_ADE7:
.SYMDEF "_ADE7" REG:2,BIT:7,5,LEN:1
ds 1
.stabs "ADE7:S16",40,0,0,_ADE7
.align 1
_TCIF1:
.SYMDEF "_TCIF1" REG:1,BIT:3,15,LEN:1
ds 1
.stabs "TCIF1:S16",40,0,0,_TCIF1
.align 1
_TCIF3:
.SYMDEF "_TCIF3" REG:1,BIT:5,15,LEN:1
ds 1
.stabs "TCIF3:S16",40,0,0,_TCIF3
.align 1
_RCM0:
.SYMDEF "_RCM0" REG:1,BIT:6,8,LEN:1
ds 1
.stabs "RCM0:S16",40,0,0,_RCM0
.align 1
_RCM1:
.SYMDEF "_RCM1" REG:1,BIT:7,8,LEN:1
ds 1
.stabs "RCM1:S16",40,0,0,_RCM1
.align 1
_TC1CK0:
.SYMDEF "_TC1CK0" REG:1,BIT:0,5,LEN:1
ds 1
.stabs "TC1CK0:S16",40,0,0,_TC1CK0
.align 1
_TC1CK1:
.SYMDEF "_TC1CK1" REG:1,BIT:1,5,LEN:1
ds 1
.stabs "TC1CK1:S16",40,0,0,_TC1CK1
.align 1
_TC1CK2:
.SYMDEF "_TC1CK2" REG:1,BIT:2,5,LEN:1
ds 1
.stabs "TC1CK2:S16",40,0,0,_TC1CK2
.align 1
_TC1MOD:
.SYMDEF "_TC1MOD" REG:1,BIT:3,5,LEN:1
ds 1
.stabs "TC1MOD:S16",40,0,0,_TC1MOD
.align 1
_TC1ES:
.SYMDEF "_TC1ES" REG:1,BIT:4,5,LEN:1
ds 1
.stabs "TC1ES:S16",40,0,0,_TC1ES
.align 1
_TC1M:
.SYMDEF "_TC1M" REG:1,BIT:5,5,LEN:1
ds 1
.stabs "TC1M:S16",40,0,0,_TC1M
.align 1
_TC1S:
.SYMDEF "_TC1S" REG:1,BIT:6,5,LEN:1
ds 1
.stabs "TC1S:S16",40,0,0,_TC1S
.align 1
_TC1CAP:
.SYMDEF "_TC1CAP" REG:1,BIT:7,5,LEN:1
ds 1
.stabs "TC1CAP:S16",40,0,0,_TC1CAP
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
_ADIF:
.SYMDEF "_ADIF" REG:0,BIT:6,15,LEN:1
ds 1
.stabs "ADIF:S16",40,0,0,_ADIF
.align 1
_IDLE:
.SYMDEF "_IDLE" REG:0,BIT:4,14,LEN:1
ds 1
.stabs "IDLE:S16",40,0,0,_IDLE
.align 1
_CPUS:
.SYMDEF "_CPUS" REG:0,BIT:5,14,LEN:1
ds 1
.stabs "CPUS:S16",40,0,0,_CPUS
.align 1
_TIMERSC:
.SYMDEF "_TIMERSC" REG:0,BIT:6,14,LEN:1
ds 1
.stabs "TIMERSC:S16",40,0,0,_TIMERSC
.align 1
_EEPC:
.SYMDEF "_EEPC" REG:0,BIT:3,11,LEN:1
ds 1
.stabs "EEPC:S16",40,0,0,_EEPC
.align 1
_EEDF:
.SYMDEF "_EEDF" REG:0,BIT:4,11,LEN:1
ds 1
.stabs "EEDF:S16",40,0,0,_EEDF
.align 1
_EEWE:
.SYMDEF "_EEWE" REG:0,BIT:5,11,LEN:1
ds 1
.stabs "EEWE:S16",40,0,0,_EEWE
.align 1
_WR:
.SYMDEF "_WR" REG:0,BIT:6,11,LEN:1
ds 1
.stabs "WR:S16",40,0,0,_WR
.align 1
_RDB:
.SYMDEF "_RDB" REG:0,BIT:7,11,LEN:1
ds 1
.stabs "RDB:S16",40,0,0,_RDB
.align 1
_EXWE:
.SYMDEF "_EXWE" REG:0,BIT:4,10,LEN:1
ds 1
.stabs "EXWE:S16",40,0,0,_EXWE
.align 1
_ADWE:
.SYMDEF "_ADWE" REG:0,BIT:5,10,LEN:1
ds 1
.stabs "ADWE:S16",40,0,0,_ADWE
.align 1
_ICWE:
.SYMDEF "_ICWE" REG:0,BIT:6,10,LEN:1
ds 1
.stabs "ICWE:S16",40,0,0,_ICWE
.align 1
_P83:
.SYMDEF "_P83" REG:0,BIT:3,8,LEN:1
ds 1
.stabs "P83:S16",40,0,0,_P83
.align 1
_P70:
.SYMDEF "_P70" REG:0,BIT:0,7,LEN:1
ds 1
.stabs "P70:S16",40,0,0,_P70
.align 1
_P71:
.SYMDEF "_P71" REG:0,BIT:1,7,LEN:1
ds 1
.stabs "P71:S16",40,0,0,_P71
.align 1
_P72:
.SYMDEF "_P72" REG:0,BIT:2,7,LEN:1
ds 1
.stabs "P72:S16",40,0,0,_P72
.align 1
_P73:
.SYMDEF "_P73" REG:0,BIT:3,7,LEN:1
ds 1
.stabs "P73:S16",40,0,0,_P73
.align 1
_P74:
.SYMDEF "_P74" REG:0,BIT:4,7,LEN:1
ds 1
.stabs "P74:S16",40,0,0,_P74
.align 1
_P77:
.SYMDEF "_P77" REG:0,BIT:7,7,LEN:1
ds 1
.stabs "P77:S16",40,0,0,_P77
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
_P54:
.SYMDEF "_P54" REG:0,BIT:4,5,LEN:1
ds 1
.stabs "P54:S16",40,0,0,_P54
.align 1
_P55:
.SYMDEF "_P55" REG:0,BIT:5,5,LEN:1
ds 1
.stabs "P55:S16",40,0,0,_P55
.align 1
_P57:
.SYMDEF "_P57" REG:0,BIT:7,5,LEN:1
ds 1
.stabs "P57:S16",40,0,0,_P57
.align 1
_R40:
.SYMDEF "_R40" REG:0,BIT:0,4,LEN:1
ds 1
.stabs "R40:S16",40,0,0,_R40
.align 1
_R41:
.SYMDEF "_R41" REG:0,BIT:1,4,LEN:1
ds 1
.stabs "R41:S16",40,0,0,_R41
.align 1
_R42:
.SYMDEF "_R42" REG:0,BIT:2,4,LEN:1
ds 1
.stabs "R42:S16",40,0,0,_R42
.align 1
_R43:
.SYMDEF "_R43" REG:0,BIT:3,4,LEN:1
ds 1
.stabs "R43:S16",40,0,0,_R43
.align 1
_R44:
.SYMDEF "_R44" REG:0,BIT:4,4,LEN:1
ds 1
.stabs "R44:S16",40,0,0,_R44
.align 1
_R45:
.SYMDEF "_R45" REG:0,BIT:5,4,LEN:1
ds 1
.stabs "R45:S16",40,0,0,_R45
.align 1
_BS0:
.SYMDEF "_BS0" REG:0,BIT:6,4,LEN:1
ds 1
.stabs "BS0:S16",40,0,0,_BS0
.align 1
_BS1:
.SYMDEF "_BS1" REG:0,BIT:7,4,LEN:1
ds 1
.stabs "BS1:S16",40,0,0,_BS1
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
_IMR1:
.SYMDEF "_IMR1" IO:0,15,LEN:1
ds 1
.stabs "IMR1:S14",40,0,0,_IMR1
.align 1
_IMR2:
.SYMDEF "_IMR2" IO:0,14,LEN:1
ds 1
.stabs "IMR2:S14",40,0,0,_IMR2
.align 1
_PHCR2:
.SYMDEF "_PHCR2" IO:0,13,LEN:1
ds 1
.stabs "PHCR2:S14",40,0,0,_PHCR2
.align 1
_ODCR:
.SYMDEF "_ODCR" IO:0,12,LEN:1
ds 1
.stabs "ODCR:S14",40,0,0,_ODCR
.align 1
_PDCR2:
.SYMDEF "_PDCR2" IO:0,11,LEN:1
ds 1
.stabs "PDCR2:S14",40,0,0,_PDCR2
.align 1
_WDTCR:
.SYMDEF "_WDTCR" IO:0,10,LEN:1
ds 1
.stabs "WDTCR:S14",40,0,0,_WDTCR
.align 1
_P8CR:
.SYMDEF "_P8CR" IO:0,8,LEN:1
ds 1
.stabs "P8CR:S14",40,0,0,_P8CR
.align 1
_P7CR:
.SYMDEF "_P7CR" IO:0,7,LEN:1
ds 1
.stabs "P7CR:S14",40,0,0,_P7CR
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
_PDCR1:
.SYMDEF "_PDCR1" REG:3,15,LEN:1
ds 1
.stabs "PDCR1:S14",40,0,0,_PDCR1
.align 1
_TC3D:
.SYMDEF "_TC3D" REG:3,14,LEN:1
ds 1
.stabs "TC3D:S14",40,0,0,_TC3D
.align 1
_TC3CR:
.SYMDEF "_TC3CR" REG:3,13,LEN:1
ds 1
.stabs "TC3CR:S14",40,0,0,_TC3CR
.align 1
_PHCR1:
.SYMDEF "_PHCR1" REG:2,15,LEN:1
ds 1
.stabs "PHCR1:S14",40,0,0,_PHCR1
.align 1
_ADDL:
.SYMDEF "_ADDL" REG:2,9,LEN:1
ds 1
.stabs "ADDL:S14",40,0,0,_ADDL
.align 1
_ADDH:
.SYMDEF "_ADDH" REG:2,8,LEN:1
ds 1
.stabs "ADDH:S14",40,0,0,_ADDH
.align 1
_ADOC:
.SYMDEF "_ADOC" REG:2,7,LEN:1
ds 1
.stabs "ADOC:S14",40,0,0,_ADOC
.align 1
_ADCON:
.SYMDEF "_ADCON" REG:2,6,LEN:1
ds 1
.stabs "ADCON:S14",40,0,0,_ADCON
.align 1
_AISR:
.SYMDEF "_AISR" REG:2,5,LEN:1
ds 1
.stabs "AISR:S14",40,0,0,_AISR
.align 1
_ISR2:
.SYMDEF "_ISR2" REG:1,15,LEN:1
ds 1
.stabs "ISR2:S14",40,0,0,_ISR2
.align 1
_TC2DB:
.SYMDEF "_TC2DB" REG:1,10,LEN:1
ds 1
.stabs "TC2DB:S14",40,0,0,_TC2DB
.align 1
_TC2DA:
.SYMDEF "_TC2DA" REG:1,9,LEN:1
ds 1
.stabs "TC2DA:S14",40,0,0,_TC2DA
.align 1
_OSCR:
.SYMDEF "_OSCR" REG:1,8,LEN:1
ds 1
.stabs "OSCR:S14",40,0,0,_OSCR
.align 1
_TC1DB:
.SYMDEF "_TC1DB" REG:1,7,LEN:1
ds 1
.stabs "TC1DB:S14",40,0,0,_TC1DB
.align 1
_TC1DA:
.SYMDEF "_TC1DA" REG:1,6,LEN:1
ds 1
.stabs "TC1DA:S14",40,0,0,_TC1DA
.align 1
_TC1CR:
.SYMDEF "_TC1CR" REG:1,5,LEN:1
ds 1
.stabs "TC1CR:S14",40,0,0,_TC1CR
.align 1
_ISR1:
.SYMDEF "_ISR1" REG:0,15,LEN:1
ds 1
.stabs "ISR1:S14",40,0,0,_ISR1
.align 1
_MSR:
.SYMDEF "_MSR" REG:0,14,LEN:1
ds 1
.stabs "MSR:S14",40,0,0,_MSR
.align 1
_EEPD:
.SYMDEF "_EEPD" REG:0,13,LEN:1
ds 1
.stabs "EEPD:S14",40,0,0,_EEPD
.align 1
_EEPA:
.SYMDEF "_EEPA" REG:0,12,LEN:1
ds 1
.stabs "EEPA:S14",40,0,0,_EEPA
.align 1
_EEPCR:
.SYMDEF "_EEPCR" REG:0,11,LEN:1
ds 1
.stabs "EEPCR:S14",40,0,0,_EEPCR
.align 1
_WUCR:
.SYMDEF "_WUCR" REG:0,10,LEN:1
ds 1
.stabs "WUCR:S14",40,0,0,_WUCR
.align 1
_PORT8:
.SYMDEF "_PORT8" REG:0,8,LEN:1
ds 1
.stabs "PORT8:S14",40,0,0,_PORT8
.align 1
_PORT7:
.SYMDEF "_PORT7" REG:0,7,LEN:1
ds 1
.stabs "PORT7:S14",40,0,0,_PORT7
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
