.autoimport
EM78P173N EQU 1
_SIMPLE_RSR_ EQU 1
.include "sysdefii.inc"
ccounter equ pr1
.stabs "icc_compiled.",60,0,0,0
.stabs "C:\Users\daminger\Desktop\练习\MD-01程序资料\MD-01程序173N-SOP8\TM1650.c",100,0,3,0
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
.section ".rom",T_ROM
public _Display_data
.align 1
_Display_data:
.SYMDEF "_Display_data" LEN:10
db 252
db 96
db 218
db 242
db 102
db 182
db 190
db 224
db 254
db 246
.stabs ":t17=ar1;0;9;14",128,0,0,0
.stabs "Display_data:G17",32,0,0,_Display_data
.section ".data"
public _Display_AIP1620_flag
.align 1
_Display_AIP1620_flag:
.SYMDEF "_Display_AIP1620_flag" BIT,LEN:1
db 0
.stabs "Display_AIP1620_flag:G16",32,0,0,_Display_AIP1620_flag@BIT
public _TM1650_sendbit
public TM1650_sendbit_bp
.section ".code"
.stabs "TM1650_sendbit:F15",36,0,0,_TM1650_sendbit
.section ".S0",C_CODE
.SYMDEF ".S0" 
_TM1650_sendbit:
.SYMDEF "_TM1650_sendbit" 
mov a,ecx
mov TM1650_sendbit_bp-4,a
mov a,ecx+1
mov TM1650_sendbit_bp-3,a
mov a,ecx+2
mov TM1650_sendbit_bp-2,a
mov a,ecx+3
mov TM1650_sendbit_bp-1,a
.stabs "TM1650_sendbit_data:14",160,0,0,TM1650_sendbit_bp+0
.stabs "TM1650_sendbit_i:14",128,0,0,TM1650_sendbit_bp-5
.stabn 192,0,0,L8
L8:
.stabn 68,0,28,L10
L10:
.stabn 68,0,30,L11
L11:
clr TM1650_sendbit_bp-5
jmp @L$5
L$2:
.stabn 192,0,1,L12
L12:
.stabn 68,0,31,L13
L13:
.stabn 68,0,32,L14
L14:
bc _P64,4
.stabn 68,0,33,L15
L15:
.cfile "C:\Users\daminger\Desktop\练习\MD-01程序资料\MD-01程序173N-SOP8\TM1650.c(33):"
NOP
.stabn 68,0,33,L16
L16:
.stabn 68,0,33,L17
L17:
.cfile "C:\Users\daminger\Desktop\练习\MD-01程序资料\MD-01程序173N-SOP8\TM1650.c(33):"
NOP
.stabn 68,0,33,L18
L18:
.stabn 68,0,33,L19
L19:
.cfile "C:\Users\daminger\Desktop\练习\MD-01程序资料\MD-01程序173N-SOP8\TM1650.c(33):"
NOP
.stabn 68,0,33,L20
L20:
.stabn 68,0,33,L21
L21:
.cfile "C:\Users\daminger\Desktop\练习\MD-01程序资料\MD-01程序173N-SOP8\TM1650.c(33):"
NOP
.stabn 68,0,33,L22
L22:
.stabn 68,0,33,L23
L23:
.cfile "C:\Users\daminger\Desktop\练习\MD-01程序资料\MD-01程序173N-SOP8\TM1650.c(33):"
NOP
.stabn 68,0,33,L24
L24:
.stabn 68,0,34,L25
L25:
LDA TM1650_sendbit_bp+0,0,0
mov ecx,a
mov a,@128
and ecx,a
EQNEPRIB ecx,0
jbc STATUS,zf
EXTJMP @L$6
.stabn 192,0,2,L26
L26:
.stabn 68,0,35,L27
L27:
.stabn 68,0,36,L28
L28:
bs _P65,5
.stabn 68,0,37,L29
L29:
.stabn 224,0,2,L30
L30:
jmp @L$7
L$6:
.stabn 192,0,2,L31
L31:
.stabn 68,0,39,L32
L32:
.stabn 68,0,40,L33
L33:
bc _P65,5
.stabn 68,0,41,L34
L34:
.stabn 224,0,2,L35
L35:
L$7:
.stabn 68,0,42,L36
L36:
LSHUMIB TM1650_sendbit_bp+0,1,0
.stabn 68,0,43,L37
L37:
bs _P64,4
.stabn 68,0,44,L38
L38:
.cfile "C:\Users\daminger\Desktop\练习\MD-01程序资料\MD-01程序173N-SOP8\TM1650.c(44):"
NOP
.stabn 68,0,44,L39
L39:
.stabn 68,0,44,L40
L40:
.cfile "C:\Users\daminger\Desktop\练习\MD-01程序资料\MD-01程序173N-SOP8\TM1650.c(44):"
NOP
.stabn 68,0,44,L41
L41:
.stabn 68,0,44,L42
L42:
.cfile "C:\Users\daminger\Desktop\练习\MD-01程序资料\MD-01程序173N-SOP8\TM1650.c(44):"
NOP
.stabn 68,0,44,L43
L43:
.stabn 68,0,44,L44
L44:
.cfile "C:\Users\daminger\Desktop\练习\MD-01程序资料\MD-01程序173N-SOP8\TM1650.c(44):"
NOP
.stabn 68,0,44,L45
L45:
.stabn 68,0,44,L46
L46:
.cfile "C:\Users\daminger\Desktop\练习\MD-01程序资料\MD-01程序173N-SOP8\TM1650.c(44):"
NOP
.stabn 68,0,44,L47
L47:
.stabn 68,0,45,L48
L48:
.stabn 224,0,1,L49
L49:
L$3:
.stabn 68,0,30,L50
L50:
LDA TM1650_sendbit_bp-5,0,0
add a,@1
STA TM1650_sendbit_bp-5,0,0
L$5:
.stabn 68,0,30,L51
L51:
ULTRIB TM1650_sendbit_bp-5,0x8
jbs STATUS, cf
EXTJMP L$2
.stabn 68,0,46,L52
L52:
.stabn 224,0,0,L53
L53:
L$1:
mov a,TM1650_sendbit_bp-4
mov ecx,a
mov a,TM1650_sendbit_bp-3
mov ecx+1,a
mov a,TM1650_sendbit_bp-2
mov ecx+2,a
mov a,TM1650_sendbit_bp-1
mov ecx+3,a
ret
.STACK TM1650_sendbit_bp,local,5
public _TM1650_START
public TM1650_START_bp
.stabs "TM1650_START:F15",36,0,0,_TM1650_START
.section ".S1",C_CODE
.SYMDEF ".S1" 
_TM1650_START:
.SYMDEF "_TM1650_START" 
mov a,ecx
mov TM1650_START_bp-4,a
mov a,ecx+1
mov TM1650_START_bp-3,a
mov a,ecx+2
mov TM1650_START_bp-2,a
mov a,ecx+3
mov TM1650_START_bp-1,a
.stabn 192,0,0,L55
L55:
.stabn 68,0,49,L56
L56:
.stabn 68,0,50,L57
L57:
bs _P65,5
.stabn 68,0,51,L58
L58:
bs _P64,4
.stabn 68,0,52,L59
L59:
.cfile "C:\Users\daminger\Desktop\练习\MD-01程序资料\MD-01程序173N-SOP8\TM1650.c(52):"
NOP
.stabn 68,0,52,L60
L60:
.stabn 68,0,52,L61
L61:
.cfile "C:\Users\daminger\Desktop\练习\MD-01程序资料\MD-01程序173N-SOP8\TM1650.c(52):"
NOP
.stabn 68,0,52,L62
L62:
.stabn 68,0,52,L63
L63:
.cfile "C:\Users\daminger\Desktop\练习\MD-01程序资料\MD-01程序173N-SOP8\TM1650.c(52):"
NOP
.stabn 68,0,52,L64
L64:
.stabn 68,0,52,L65
L65:
.cfile "C:\Users\daminger\Desktop\练习\MD-01程序资料\MD-01程序173N-SOP8\TM1650.c(52):"
NOP
.stabn 68,0,52,L66
L66:
.stabn 68,0,52,L67
L67:
.cfile "C:\Users\daminger\Desktop\练习\MD-01程序资料\MD-01程序173N-SOP8\TM1650.c(52):"
NOP
.stabn 68,0,52,L68
L68:
.stabn 68,0,53,L69
L69:
bc _P65,5
.stabn 68,0,54,L70
L70:
.cfile "C:\Users\daminger\Desktop\练习\MD-01程序资料\MD-01程序173N-SOP8\TM1650.c(54):"
NOP
.stabn 68,0,54,L71
L71:
.stabn 68,0,54,L72
L72:
.cfile "C:\Users\daminger\Desktop\练习\MD-01程序资料\MD-01程序173N-SOP8\TM1650.c(54):"
NOP
.stabn 68,0,54,L73
L73:
.stabn 68,0,54,L74
L74:
.cfile "C:\Users\daminger\Desktop\练习\MD-01程序资料\MD-01程序173N-SOP8\TM1650.c(54):"
NOP
.stabn 68,0,54,L75
L75:
.stabn 68,0,54,L76
L76:
.cfile "C:\Users\daminger\Desktop\练习\MD-01程序资料\MD-01程序173N-SOP8\TM1650.c(54):"
NOP
.stabn 68,0,54,L77
L77:
.stabn 68,0,54,L78
L78:
.cfile "C:\Users\daminger\Desktop\练习\MD-01程序资料\MD-01程序173N-SOP8\TM1650.c(54):"
NOP
.stabn 68,0,54,L79
L79:
.stabn 68,0,55,L80
L80:
.stabn 224,0,0,L81
L81:
L$54:
mov a,TM1650_START_bp-4
mov ecx,a
mov a,TM1650_START_bp-3
mov ecx+1,a
mov a,TM1650_START_bp-2
mov ecx+2,a
mov a,TM1650_START_bp-1
mov ecx+3,a
ret
.STACK TM1650_START_bp,local,4
public _TM1650_STOP
public TM1650_STOP_bp
.stabs "TM1650_STOP:F15",36,0,0,_TM1650_STOP
.section ".S2",C_CODE
.SYMDEF ".S2" 
_TM1650_STOP:
.SYMDEF "_TM1650_STOP" 
mov a,ecx
mov TM1650_STOP_bp-4,a
mov a,ecx+1
mov TM1650_STOP_bp-3,a
mov a,ecx+2
mov TM1650_STOP_bp-2,a
mov a,ecx+3
mov TM1650_STOP_bp-1,a
.stabn 192,0,0,L83
L83:
.stabn 68,0,57,L84
L84:
.stabn 68,0,58,L85
L85:
bs _P64,4
.stabn 68,0,59,L86
L86:
bc _P65,5
.stabn 68,0,60,L87
L87:
.cfile "C:\Users\daminger\Desktop\练习\MD-01程序资料\MD-01程序173N-SOP8\TM1650.c(60):"
NOP
.stabn 68,0,60,L88
L88:
.stabn 68,0,60,L89
L89:
.cfile "C:\Users\daminger\Desktop\练习\MD-01程序资料\MD-01程序173N-SOP8\TM1650.c(60):"
NOP
.stabn 68,0,60,L90
L90:
.stabn 68,0,60,L91
L91:
.cfile "C:\Users\daminger\Desktop\练习\MD-01程序资料\MD-01程序173N-SOP8\TM1650.c(60):"
NOP
.stabn 68,0,60,L92
L92:
.stabn 68,0,60,L93
L93:
.cfile "C:\Users\daminger\Desktop\练习\MD-01程序资料\MD-01程序173N-SOP8\TM1650.c(60):"
NOP
.stabn 68,0,60,L94
L94:
.stabn 68,0,60,L95
L95:
.cfile "C:\Users\daminger\Desktop\练习\MD-01程序资料\MD-01程序173N-SOP8\TM1650.c(60):"
NOP
.stabn 68,0,60,L96
L96:
.stabn 68,0,61,L97
L97:
bs _P65,5
.stabn 68,0,62,L98
L98:
.cfile "C:\Users\daminger\Desktop\练习\MD-01程序资料\MD-01程序173N-SOP8\TM1650.c(62):"
NOP
.stabn 68,0,62,L99
L99:
.stabn 68,0,62,L100
L100:
.cfile "C:\Users\daminger\Desktop\练习\MD-01程序资料\MD-01程序173N-SOP8\TM1650.c(62):"
NOP
.stabn 68,0,62,L101
L101:
.stabn 68,0,62,L102
L102:
.cfile "C:\Users\daminger\Desktop\练习\MD-01程序资料\MD-01程序173N-SOP8\TM1650.c(62):"
NOP
.stabn 68,0,62,L103
L103:
.stabn 68,0,62,L104
L104:
.cfile "C:\Users\daminger\Desktop\练习\MD-01程序资料\MD-01程序173N-SOP8\TM1650.c(62):"
NOP
.stabn 68,0,62,L105
L105:
.stabn 68,0,62,L106
L106:
.cfile "C:\Users\daminger\Desktop\练习\MD-01程序资料\MD-01程序173N-SOP8\TM1650.c(62):"
NOP
.stabn 68,0,62,L107
L107:
.stabn 68,0,63,L108
L108:
.stabn 224,0,0,L109
L109:
L$82:
mov a,TM1650_STOP_bp-4
mov ecx,a
mov a,TM1650_STOP_bp-3
mov ecx+1,a
mov a,TM1650_STOP_bp-2
mov ecx+2,a
mov a,TM1650_STOP_bp-1
mov ecx+3,a
ret
.STACK TM1650_STOP_bp,local,4
public _TM1650_ASK
public TM1650_ASK_bp
.stabs "TM1650_ASK:F15",36,0,0,_TM1650_ASK
.section ".S3",C_CODE
.SYMDEF ".S3" 
_TM1650_ASK:
.SYMDEF "_TM1650_ASK" 
mov a,ecx
mov TM1650_ASK_bp-4,a
mov a,ecx+1
mov TM1650_ASK_bp-3,a
mov a,ecx+2
mov TM1650_ASK_bp-2,a
mov a,ecx+3
mov TM1650_ASK_bp-1,a
.stabs "AT24C16_SendNACK_i:14",128,0,0,TM1650_ASK_bp-5
.stabn 192,0,0,L115
L115:
.stabn 68,0,65,L116
L116:
.stabn 68,0,66,L117
L117:
clr TM1650_ASK_bp-5
.stabn 68,0,67,L118
L118:
bc _P64,4
.stabn 68,0,68,L119
L119:
.cfile "C:\Users\daminger\Desktop\练习\MD-01程序资料\MD-01程序173N-SOP8\TM1650.c(68):"
NOP
.stabn 68,0,68,L120
L120:
.stabn 68,0,68,L121
L121:
.cfile "C:\Users\daminger\Desktop\练习\MD-01程序资料\MD-01程序173N-SOP8\TM1650.c(68):"
NOP
.stabn 68,0,68,L122
L122:
.stabn 68,0,68,L123
L123:
.cfile "C:\Users\daminger\Desktop\练习\MD-01程序资料\MD-01程序173N-SOP8\TM1650.c(68):"
NOP
.stabn 68,0,68,L124
L124:
.stabn 68,0,68,L125
L125:
.cfile "C:\Users\daminger\Desktop\练习\MD-01程序资料\MD-01程序173N-SOP8\TM1650.c(68):"
NOP
.stabn 68,0,68,L126
L126:
.stabn 68,0,68,L127
L127:
.cfile "C:\Users\daminger\Desktop\练习\MD-01程序资料\MD-01程序173N-SOP8\TM1650.c(68):"
NOP
.stabn 68,0,68,L128
L128:
.stabn 68,0,69,L129
L129:
LDA _P6CR,0,2
or a,@32
STA _P6CR,0,2
jmp @L$112
L$111:
.stabn 192,0,1,L130
L130:
.stabn 68,0,71,L131
L131:
.stabn 68,0,72,L132
L132:
LDA TM1650_ASK_bp-5,0,0
add a,@1
STA TM1650_ASK_bp-5,0,0
.stabn 68,0,73,L133
L133:
.stabn 224,0,1,L134
L134:
L$112:
.stabn 68,0,70,L135
L135:
jbs _P65,5
EXTJMP @L$114
ULTRIB TM1650_ASK_bp-5,0x64
jbs STATUS, cf
EXTJMP L$111
L$114:
.stabn 68,0,74,L136
L136:
bs _P64,4
.stabn 68,0,75,L137
L137:
LDA _P6CR,0,2
and a,@223
STA _P6CR,0,2
.stabn 68,0,76,L138
L138:
bc _P64,4
.stabn 68,0,77,L139
L139:
bc _P65,5
.stabn 68,0,78,L140
L140:
.stabn 224,0,0,L141
L141:
L$110:
mov a,TM1650_ASK_bp-4
mov ecx,a
mov a,TM1650_ASK_bp-3
mov ecx+1,a
mov a,TM1650_ASK_bp-2
mov ecx+2,a
mov a,TM1650_ASK_bp-1
mov ecx+3,a
ret
.STACK TM1650_ASK_bp,local,5
public _TM1650_display
public TM1650_display_bp
.stabs "TM1650_display:F15",36,0,0,_TM1650_display
.section ".S4",C_CODE
.SYMDEF ".S4" 
_TM1650_display:
.SYMDEF "_TM1650_display" 
mov a,ecx
mov TM1650_display_bp-4,a
mov a,ecx+1
mov TM1650_display_bp-3,a
mov a,ecx+2
mov TM1650_display_bp-2,a
mov a,ecx+3
mov TM1650_display_bp-1,a
.stabn 192,0,0,L143
L143:
.stabn 68,0,81,L144
L144:
.stabn 68,0,82,L145
L145:
call _TM1650_START
.stabn 68,0,83,L146
L146:
mov a,@72
mov TM1650_sendbit_bp+0,a
.STACK TM1650_sendbit_bp,parameter,1
call _TM1650_sendbit
.stabn 68,0,84,L147
L147:
call _TM1650_ASK
.stabn 68,0,85,L148
L148:
mov a,@113
mov TM1650_sendbit_bp+0,a
.STACK TM1650_sendbit_bp,parameter,1
call _TM1650_sendbit
.stabn 68,0,86,L149
L149:
call _TM1650_ASK
.stabn 68,0,87,L150
L150:
call _TM1650_STOP
.stabn 68,0,90,L151
L151:
call _TM1650_START
.stabn 68,0,91,L152
L152:
mov a,@104
mov TM1650_sendbit_bp+0,a
.STACK TM1650_sendbit_bp,parameter,1
call _TM1650_sendbit
.stabn 68,0,92,L153
L153:
call _TM1650_ASK
.stabn 68,0,93,L154
L154:
mov a,@255
mov TM1650_sendbit_bp+0,a
.STACK TM1650_sendbit_bp,parameter,1
call _TM1650_sendbit
.stabn 68,0,94,L155
L155:
call _TM1650_ASK
.stabn 68,0,95,L156
L156:
call _TM1650_STOP
.stabn 68,0,97,L157
L157:
call _TM1650_START
.stabn 68,0,98,L158
L158:
mov a,@106
mov TM1650_sendbit_bp+0,a
.STACK TM1650_sendbit_bp,parameter,1
call _TM1650_sendbit
.stabn 68,0,99,L159
L159:
call _TM1650_ASK
.stabn 68,0,100,L160
L160:
mov a,@255
mov TM1650_sendbit_bp+0,a
.STACK TM1650_sendbit_bp,parameter,1
call _TM1650_sendbit
.stabn 68,0,101,L161
L161:
call _TM1650_ASK
.stabn 68,0,102,L162
L162:
call _TM1650_STOP
.stabn 68,0,104,L163
L163:
call _TM1650_START
.stabn 68,0,105,L164
L164:
mov a,@108
mov TM1650_sendbit_bp+0,a
.STACK TM1650_sendbit_bp,parameter,1
call _TM1650_sendbit
.stabn 68,0,106,L165
L165:
call _TM1650_ASK
.stabn 68,0,107,L166
L166:
LDA _Temperature_collection_data,0,0
mov ecx,a
UMODRIB ecx,10
mov a,ecx
call _Display_data
mov ecx,a
mov a,ecx
mov TM1650_sendbit_bp+0,a
.STACK TM1650_sendbit_bp,parameter,1
call _TM1650_sendbit
.stabn 68,0,108,L167
L167:
call _TM1650_ASK
.stabn 68,0,109,L168
L168:
call _TM1650_STOP
.stabn 68,0,111,L169
L169:
call _TM1650_START
.stabn 68,0,112,L170
L170:
mov a,@110
mov TM1650_sendbit_bp+0,a
.STACK TM1650_sendbit_bp,parameter,1
call _TM1650_sendbit
.stabn 68,0,113,L171
L171:
call _TM1650_ASK
.stabn 68,0,114,L172
L172:
LDA _Temperature_collection_data,0,0
mov ecx,a
UDIVRIB ecx,10
mov a,ecx
call _Display_data
mov ecx,a
mov a,ecx
mov TM1650_sendbit_bp+0,a
.STACK TM1650_sendbit_bp,parameter,1
call _TM1650_sendbit
.stabn 68,0,115,L173
L173:
call _TM1650_ASK
.stabn 68,0,116,L174
L174:
call _TM1650_STOP
.stabn 68,0,117,L175
L175:
.stabn 224,0,0,L176
L176:
L$142:
mov a,TM1650_display_bp-4
mov ecx,a
mov a,TM1650_display_bp-3
mov ecx+1,a
mov a,TM1650_display_bp-2
mov ecx+2,a
mov a,TM1650_display_bp-1
mov ecx+3,a
ret
.STACK TM1650_display_bp,local,4
extrn _Temperature_collection_data
.section ".code"
.section ".bss"
.align 1
_TCIF:
.SYMDEF "_TCIF" REG:0,BIT:0,15,LEN:1
ds 1
.stabs "TCIF:S16",40,0,0,_TCIF
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
