.autoimport
EM78P153B48 EQU 1
_SIMPLE_RSR_ EQU 1
.include "sysdefii.inc"
ccounter equ pr1
.stabs "icc_compiled.",60,0,0,0
.stabs "D:\项目任务文件\项目任务文件\项目任务\项目（3）2018年开发\项目141（嘉兴英伦集成吊顶）MD-01\MD-01程序153B-SOP8\main.c",100,0,3,0
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
.stabn 192,0,0,L9
L9:
.stabn 68,0,12,L11
L11:
.stabn 68,0,13,L12
L12:
call _init
jmp @L$3
L$2:
.stabn 192,0,1,L13
L13:
.stabn 68,0,15,L14
L14:
.stabn 68,0,16,L15
L15:
jbs _Timer_interrupt_flag,BIT
EXTJMP @L$5
.stabn 192,0,2,L16
L16:
.stabn 68,0,17,L17
L17:
.stabn 68,0,18,L18
L18:
call _Temperature_collection
.stabn 68,0,19,L19
L19:
jbs _Display_AIP1620_flag,BIT
EXTJMP @L$7
.stabn 192,0,3,L20
L20:
.stabn 68,0,20,L21
L21:
.stabn 68,0,21,L22
L22:
call _TM1650_display
.stabn 68,0,22,L23
L23:
bc _Display_AIP1620_flag,BIT
.stabn 68,0,23,L24
L24:
.stabn 224,0,3,L25
L25:
L$7:
.stabn 68,0,24,L26
L26:
bc _Timer_interrupt_flag,BIT
.stabn 68,0,25,L27
L27:
.stabn 224,0,2,L28
L28:
L$5:
.stabn 68,0,26,L29
L29:
.stabn 224,0,1,L30
L30:
L$3:
.stabn 68,0,14,L31
L31:
jmp @L$2
.stabn 68,0,27,L32
L32:
.stabn 224,0,0,L33
L33:
L$1:
ret
.STACK main_bp,local,0
public _init
public init_bp
.stabs "init:F15",36,0,0,_init
.section ".S1",C_CODE
.SYMDEF ".S1" 
_init:
.SYMDEF "_init" 
mov a,ecx
mov init_bp-4,a
mov a,ecx+1
mov init_bp-3,a
mov a,ecx+2
mov init_bp-2,a
mov a,ecx+3
mov init_bp-1,a
.stabn 192,0,0,L35
L35:
.stabn 68,0,30,L36
L36:
.stabn 68,0,31,L37
L37:
.cfile "D:\项目任务文件\项目任务文件\项目任务\项目（3）2018年开发\项目141（嘉兴英伦集成吊顶）MD-01\MD-01程序153B-SOP8\main.c(31):"
DISI
.stabn 68,0,31,L38
L38:
.stabn 68,0,32,L39
L39:
.cfile "D:\项目任务文件\项目任务文件\项目任务\项目（3）2018年开发\项目141（嘉兴英伦集成吊顶）MD-01\MD-01程序153B-SOP8\main.c(32):"
WDTC
.stabn 68,0,32,L40
L40:
.stabn 68,0,35,L41
L41:
.cfile "D:\项目任务文件\项目任务文件\项目任务\项目（3）2018年开发\项目141（嘉兴英伦集成吊顶）MD-01\MD-01程序153B-SOP8\main.c(35):"
mov a,@0x06
.stabn 68,0,36,L42
L42:
.cfile "D:\项目任务文件\项目任务文件\项目任务\项目（3）2018年开发\项目141（嘉兴英伦集成吊顶）MD-01\MD-01程序153B-SOP8\main.c(36):"
contw
.stabn 68,0,39,L43
L43:
mov a,@0
STA _WDTCR,0,2
.stabn 68,0,41,L44
L44:
mov a,@0
STA _P6CR,0,2
.stabn 68,0,42,L45
L45:
mov a,@255
STA _PHCR,0,2
.stabn 68,0,43,L46
L46:
mov a,@255
STA _PDCR,0,2
.stabn 68,0,44,L47
L47:
mov a,@0
STA _ODCR,0,2
.stabn 68,0,46,L48
L48:
call _clrram
.stabn 68,0,47,L49
L49:
clr _ISR
.stabn 68,0,48,L50
L50:
mov a,@1
STA _IMR,0,2
.stabn 68,0,49,L51
L51:
mov a,@6
STA _TCC,0,0
.stabn 68,0,50,L52
L52:
.cfile "D:\项目任务文件\项目任务文件\项目任务\项目（3）2018年开发\项目141（嘉兴英伦集成吊顶）MD-01\MD-01程序153B-SOP8\main.c(50):"
ENI
.stabn 68,0,50,L53
L53:
.stabn 68,0,51,L54
L54:
.stabn 224,0,0,L55
L55:
L$34:
mov a,init_bp-4
mov ecx,a
mov a,init_bp-3
mov ecx+1,a
mov a,init_bp-2
mov ecx+2,a
mov a,init_bp-1
mov ecx+3,a
ret
.STACK init_bp,local,4
public _clrram
public clrram_bp
.stabs "clrram:F15",36,0,0,_clrram
.section ".S2",C_CODE
.SYMDEF ".S2" 
_clrram:
.SYMDEF "_clrram" 
mov a,ecx
mov clrram_bp-4,a
mov a,ecx+1
mov clrram_bp-3,a
mov a,ecx+2
mov clrram_bp-2,a
mov a,ecx+3
mov clrram_bp-1,a
.stabn 192,0,0,L57
L57:
.stabn 68,0,53,L58
L58:
.stabn 68,0,56,L59
L59:
.cfile "D:\项目任务文件\项目任务文件\项目任务\项目（3）2018年开发\项目141（嘉兴英伦集成吊顶）MD-01\MD-01程序153B-SOP8\main.c(56):"
MOV A,@0X11
.stabn 68,0,57,L60
L60:
.cfile "D:\项目任务文件\项目任务文件\项目任务\项目（3）2018年开发\项目141（嘉兴英伦集成吊顶）MD-01\MD-01程序153B-SOP8\main.c(57):"
MOV	0X10,A
.stabn 68,0,58,L61
L61:
.cfile "D:\项目任务文件\项目任务文件\项目任务\项目（3）2018年开发\项目141（嘉兴英伦集成吊顶）MD-01\MD-01程序153B-SOP8\main.c(58):"
clrloop:
.stabn 68,0,59,L62
L62:
.cfile "D:\项目任务文件\项目任务文件\项目任务\项目（3）2018年开发\项目141（嘉兴英伦集成吊顶）MD-01\MD-01程序153B-SOP8\main.c(59):"
MOV	A,0X10
.stabn 68,0,60,L63
L63:
.cfile "D:\项目任务文件\项目任务文件\项目任务\项目（3）2018年开发\项目141（嘉兴英伦集成吊顶）MD-01\MD-01程序153B-SOP8\main.c(60):"
MOV 0X04,A
.stabn 68,0,61,L64
L64:
.cfile "D:\项目任务文件\项目任务文件\项目任务\项目（3）2018年开发\项目141（嘉兴英伦集成吊顶）MD-01\MD-01程序153B-SOP8\main.c(61):"
CLR 0x00
.stabn 68,0,62,L65
L65:
.cfile "D:\项目任务文件\项目任务文件\项目任务\项目（3）2018年开发\项目141（嘉兴英伦集成吊顶）MD-01\MD-01程序153B-SOP8\main.c(62):"
INC 0X10
.stabn 68,0,63,L66
L66:
.cfile "D:\项目任务文件\项目任务文件\项目任务\项目（3）2018年开发\项目141（嘉兴英伦集成吊顶）MD-01\MD-01程序153B-SOP8\main.c(63):"
JBS 0X10,6
.stabn 68,0,64,L67
L67:
.cfile "D:\项目任务文件\项目任务文件\项目任务\项目（3）2018年开发\项目141（嘉兴英伦集成吊顶）MD-01\MD-01程序153B-SOP8\main.c(64):"
JMP clrloop
.stabn 68,0,65,L68
L68:
.cfile "D:\项目任务文件\项目任务文件\项目任务\项目（3）2018年开发\项目141（嘉兴英伦集成吊顶）MD-01\MD-01程序153B-SOP8\main.c(65):"
CLR 0X04
.stabn 68,0,66,L69
L69:
.cfile "D:\项目任务文件\项目任务文件\项目任务\项目（3）2018年开发\项目141（嘉兴英伦集成吊顶）MD-01\MD-01程序153B-SOP8\main.c(66):"
CLR	0X10
.stabn 68,0,68,L70
L70:
.stabn 224,0,0,L71
L71:
L$56:
mov a,clrram_bp-4
mov ecx,a
mov a,clrram_bp-3
mov ecx+1,a
mov a,clrram_bp-2
mov ecx+2,a
mov a,clrram_bp-1
mov ecx+3,a
ret
.STACK clrram_bp,local,4
public _interrupt
public interrupt_bp
.stabs "interrupt:F15",36,0,0,_interrupt
.section ".S3",C_CODE
.SYMDEF ".S3" INT:-1
_interrupt:
.SYMDEF "_interrupt" INT:-1
.stabn 192,0,0,L75
L75:
.stabn 68,0,71,L76
L76:
.stabn 68,0,72,L77
L77:
jbs _TCIF,0
EXTJMP @L$73
.stabn 192,0,1,L78
L78:
.stabn 68,0,73,L79
L79:
.stabn 68,0,74,L80
L80:
bc _TCIF,0
.stabn 68,0,75,L81
L81:
mov a,@6
STA _TCC,0,0
.stabn 68,0,76,L82
L82:
bs _Timer_interrupt_flag,BIT
.stabn 68,0,77,L83
L83:
.stabn 224,0,1,L84
L84:
L$73:
.stabn 68,0,80,L85
L85:
.cfile "D:\项目任务文件\项目任务文件\项目任务\项目（3）2018年开发\项目141（嘉兴英伦集成吊顶）MD-01\MD-01程序153B-SOP8\main.c(80):"
reti
.stabn 68,0,83,L86
L86:
.stabn 224,0,0,L87
L87:
L$72:
reti
.STACK interrupt_bp,local,0
public _interrupt_l
public interrupt_l_bp
.stabs "interrupt_l:F15",36,0,0,_interrupt_l
.section ".S4",C_CODE
.SYMDEF ".S4" LOWINT:0,8
_interrupt_l:
.SYMDEF "_interrupt_l" LOWINT:0,8
.stabn 192,0,0,L89
L89:
.stabn 68,0,86,L90
L90:
.stabn 68,0,89,L91
L91:
.cfile "D:\项目任务文件\项目任务文件\项目任务\项目（3）2018年开发\项目141（嘉兴英伦集成吊顶）MD-01\MD-01程序153B-SOP8\main.c(89):"
mov 0x1F , a
.stabn 68,0,91,L92
L92:
.stabn 224,0,0,L93
L93:
L$88:
reti
.STACK interrupt_l_bp,local,0
extrn _Temperature_collection
.section ".code"
extrn _Display_AIP1620_flag
.section ".code"
extrn _TM1650_display
.section ".code"
.section ".bss"
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
_ISR:
.SYMDEF "_ISR" REG:0,15,LEN:1
ds 1
.stabs "ISR:S14",40,0,0,_ISR
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
