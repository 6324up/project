.autoimport
EM78P173N EQU 1
_SIMPLE_RSR_ EQU 1
.include "sysdefii.inc"
ccounter equ pr1
.stabs "icc_compiled.",60,0,0,0
.stabs "C:\Users\daminger\OneDrive\github\project\light - v101-1751确定版\light.c",100,0,3,0
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
public _mode_count
.align 1
_mode_count:
.SYMDEF "_mode_count" LEN:1
db 0x0
.stabs "mode_count:G10",32,0,0,_mode_count
public _mode1_count1
.align 1
_mode1_count1:
.SYMDEF "_mode1_count1" LEN:1
db 0x0
.stabs "mode1_count1:G10",32,0,0,_mode1_count1
public _mode1_count2
.align 1
_mode1_count2:
.SYMDEF "_mode1_count2" LEN:1
db 0x0
.stabs "mode1_count2:G10",32,0,0,_mode1_count2
public _mode2_count1
.align 1
_mode2_count1:
.SYMDEF "_mode2_count1" LEN:1
db 0x0
.stabs "mode2_count1:G10",32,0,0,_mode2_count1
public _mode2_count2
.align 1
_mode2_count2:
.SYMDEF "_mode2_count2" LEN:1
db 0x0
.stabs "mode2_count2:G10",32,0,0,_mode2_count2
public _mode2_four_cycle_flag
.align 1
_mode2_four_cycle_flag:
.SYMDEF "_mode2_four_cycle_flag" LEN:1
db 0x1
.stabs "mode2_four_cycle_flag:G10",32,0,0,_mode2_four_cycle_flag
public _mode2_four_cycle_count
.align 1
_mode2_four_cycle_count:
.SYMDEF "_mode2_four_cycle_count" LEN:1
db 0x0
.stabs "mode2_four_cycle_count:G10",32,0,0,_mode2_four_cycle_count
public _white_status
.align 1
_white_status:
.SYMDEF "_white_status" LEN:1
db 0x2
.stabs "white_status:G10",32,0,0,_white_status
public _mode1_light_flag
.align 1
_mode1_light_flag:
.SYMDEF "_mode1_light_flag" BIT,LEN:1
db 1
.stabs "mode1_light_flag:G16",32,0,0,_mode1_light_flag@0
public _mode2_red1_flag
.align 1
_mode2_red1_flag:
.SYMDEF "_mode2_red1_flag" BIT,LEN:1
db 1
.stabs "mode2_red1_flag:G16",32,0,0,_mode2_red1_flag@0
public _mode2_light_flag
.align 1
_mode2_light_flag:
.SYMDEF "_mode2_light_flag" BIT,LEN:1
db 1
.stabs "mode2_light_flag:G16",32,0,0,_mode2_light_flag@0
public _S1_flag
.align 1
_S1_flag:
.SYMDEF "_S1_flag" BIT,LEN:1
db 0
.stabs "S1_flag:G16",32,0,0,_S1_flag@0
public _S2_flag
.align 1
_S2_flag:
.SYMDEF "_S2_flag" BIT,LEN:1
db 0
.stabs "S2_flag:G16",32,0,0,_S2_flag@0
public _S1_sleep_flag
.align 1
_S1_sleep_flag:
.SYMDEF "_S1_sleep_flag" BIT,LEN:1
db 0
.stabs "S1_sleep_flag:G16",32,0,0,_S1_sleep_flag@0
public _mode0
public mode0_bp
.section ".code"
.stabs "mode0:F15",36,0,0,_mode0
.section ".S0",C_CODE
.SYMDEF ".S0" 
_mode0:
.SYMDEF "_mode0" 
mov a,ecx
mov mode0_bp-4,a
mov a,ecx+1
mov mode0_bp-3,a
mov a,ecx+2
mov mode0_bp-2,a
mov a,ecx+3
mov mode0_bp-1,a
.stabn 192,0,0,L4
L4:
.stabn 68,0,40,L6
L6:
.stabn 192,0,1,L7
L7:
.stabn 68,0,41,L8
L8:
.stabn 68,0,42,L9
L9:
bc _P60,0
.stabn 68,0,42,L10
L10:
bc _P61,1
.stabn 68,0,42,L11
L11:
bc _P62,2
.stabn 68,0,44,L12
L12:
.cfile "C:\Users\daminger\OneDrive\github\project\light - v101-1751确定版\light.c(44):"
mov		a,@0x0f
.stabn 68,0,45,L13
L13:
.cfile "C:\Users\daminger\OneDrive\github\project\light - v101-1751确定版\light.c(45):"
contw
.stabn 68,0,46,L14
L14:
.cfile "C:\Users\daminger\OneDrive\github\project\light - v101-1751确定版\light.c(46):"
WDTC
.stabn 68,0,47,L15
L15:
.cfile "C:\Users\daminger\OneDrive\github\project\light - v101-1751确定版\light.c(47):"
MOV		0X6,0X6
.stabn 68,0,49,L16
L16:
.cfile "C:\Users\daminger\OneDrive\github\project\light - v101-1751确定版\light.c(49):"
disi
.stabn 68,0,49,L17
L17:
.stabn 68,0,50,L18
L18:
mov a,@35
STA _SCR,0,0
.stabn 68,0,51,L19
L19:
mov a,@2
STA _IMR,0,2
.stabn 68,0,52,L20
L20:
.cfile "C:\Users\daminger\OneDrive\github\project\light - v101-1751确定版\light.c(52):"
slep
.stabn 68,0,52,L21
L21:
.stabn 68,0,53,L22
L22:
.cfile "C:\Users\daminger\OneDrive\github\project\light - v101-1751确定版\light.c(53):"
nop
.stabn 68,0,53,L23
L23:
.stabn 68,0,54,L24
L24:
.cfile "C:\Users\daminger\OneDrive\github\project\light - v101-1751确定版\light.c(54):"
nop
.stabn 68,0,54,L25
L25:
.stabn 68,0,55,L26
L26:
.cfile "C:\Users\daminger\OneDrive\github\project\light - v101-1751确定版\light.c(55):"
wdtc
.stabn 68,0,55,L27
L27:
.stabn 68,0,56,L28
L28:
mov a,@0
STA _WDTCR,0,2
.stabn 68,0,58,L29
L29:
mov a,@99
STA _SCR,0,0
.stabn 68,0,59,L30
L30:
call _keyscan
.stabn 68,0,60,L31
L31:
jbs _S1_flag,BIT
EXTJMP @L$2
.stabn 192,0,2,L32
L32:
.stabn 68,0,61,L33
L33:
.stabn 68,0,62,L34
L34:
bs _S1_sleep_flag,BIT
.stabn 68,0,63,L35
L35:
bs _P60,0
.stabn 68,0,64,L36
L36:
bc _S1_flag,BIT
.stabn 68,0,65,L37
L37:
.stabn 224,0,2,L38
L38:
L$2:
.stabn 68,0,70,L39
L39:
.cfile "C:\Users\daminger\OneDrive\github\project\light - v101-1751确定版\light.c(70):"
wdtc
.stabn 68,0,70,L40
L40:
.stabn 68,0,71,L41
L41:
.cfile "C:\Users\daminger\OneDrive\github\project\light - v101-1751确定版\light.c(71):"
disi
.stabn 68,0,71,L42
L42:
.stabn 68,0,72,L43
L43:
mov a,@0
STA _WDTCR,0,2
.stabn 68,0,76,L44
L44:
.cfile "C:\Users\daminger\OneDrive\github\project\light - v101-1751确定版\light.c(76):"
mov	a,@0x07
.stabn 68,0,77,L45
L45:
.cfile "C:\Users\daminger\OneDrive\github\project\light - v101-1751确定版\light.c(77):"
contw
.stabn 68,0,79,L46
L46:
clr _TCC
.stabn 68,0,80,L47
L47:
clr _ISR
.stabn 68,0,81,L48
L48:
mov a,@1
STA _IMR,0,2
.stabn 68,0,82,L49
L49:
.cfile "C:\Users\daminger\OneDrive\github\project\light - v101-1751确定版\light.c(82):"
eni
.stabn 68,0,82,L50
L50:
.stabn 68,0,83,L51
L51:
.stabn 224,0,1,L52
L52:
.stabn 68,0,85,L53
L53:
.stabn 224,0,0,L54
L54:
L$1:
mov a,mode0_bp-4
mov ecx,a
mov a,mode0_bp-3
mov ecx+1,a
mov a,mode0_bp-2
mov ecx+2,a
mov a,mode0_bp-1
mov ecx+3,a
ret
.STACK mode0_bp,local,4
public _mode1
public mode1_bp
.stabs "mode1:F15",36,0,0,_mode1
.section ".S1",C_CODE
.SYMDEF ".S1" 
_mode1:
.SYMDEF "_mode1" 
mov a,ecx
mov mode1_bp-4,a
mov a,ecx+1
mov mode1_bp-3,a
mov a,ecx+2
mov mode1_bp-2,a
mov a,ecx+3
mov mode1_bp-1,a
.stabn 192,0,0,L72
L72:
.stabn 68,0,88,L73
L73:
.stabn 68,0,89,L74
L74:
jbs _mode1_light_flag,BIT
EXTJMP @L$56
.stabn 192,0,1,L75
L75:
.stabn 68,0,90,L76
L76:
.stabn 68,0,91,L77
L77:
LDA _white_status,0,0
mov ecx,a
EQNEPRIB ecx,0
jbc STATUS,zf
EXTJMP @L$60
EQNEPRIB ecx,1
jbc STATUS,zf
EXTJMP @L$61
EQNEPRIB ecx,2
jbc STATUS,zf
EXTJMP @L$62
jmp @L$59
.stabn 192,0,2,L78
L78:
.stabn 68,0,92,L79
L79:
L$60:
.stabn 68,0,93,L80
L80:
bs _P60,0
.stabn 68,0,93,L81
L81:
bs _P61,1
.stabn 68,0,93,L82
L82:
bs _P62,2
.stabn 68,0,93,L83
L83:
jmp @L$59
L$61:
.stabn 68,0,94,L84
L84:
bc _P60,0
.stabn 68,0,94,L85
L85:
bs _P61,1
.stabn 68,0,94,L86
L86:
bs _P62,2
.stabn 68,0,94,L87
L87:
jmp @L$59
L$62:
.stabn 68,0,95,L88
L88:
bs _P60,0
.stabn 68,0,95,L89
L89:
bs _P61,1
.stabn 68,0,95,L90
L90:
bs _P62,2
.stabn 68,0,95,L91
L91:
.stabn 68,0,96,L92
L92:
.stabn 68,0,97,L93
L93:
.stabn 224,0,2,L94
L94:
L$59:
.stabn 68,0,98,L95
L95:
LDA _mode1_count1,0,0
add a,@1
STA _mode1_count1,0,0
.stabn 68,0,99,L96
L96:
ULTRIB _mode1_count1,0x4
jbs STATUS, cf
EXTJMP L$57
.stabn 192,0,2,L97
L97:
.stabn 68,0,100,L98
L98:
.stabn 68,0,101,L99
L99:
clr _mode1_count1
.stabn 68,0,102,L100
L100:
bc _mode1_light_flag,BIT
.stabn 68,0,103,L101
L101:
.stabn 224,0,2,L102
L102:
.stabn 68,0,104,L103
L103:
.stabn 68,0,105,L104
L104:
.stabn 224,0,1,L105
L105:
jmp @L$57
L$56:
.stabn 192,0,1,L106
L106:
.stabn 68,0,107,L107
L107:
.stabn 68,0,108,L108
L108:
LDA _white_status,0,0
mov ecx,a
EQNEPRIB ecx,0
jbc STATUS,zf
EXTJMP @L$67
EQNEPRIB ecx,1
jbc STATUS,zf
EXTJMP @L$68
EQNEPRIB ecx,2
jbc STATUS,zf
EXTJMP @L$69
jmp @L$66
.stabn 192,0,2,L109
L109:
.stabn 68,0,109,L110
L110:
L$67:
.stabn 68,0,110,L111
L111:
bs _P60,0
.stabn 68,0,110,L112
L112:
bc _P61,1
.stabn 68,0,110,L113
L113:
bc _P62,2
.stabn 68,0,110,L114
L114:
jmp @L$66
L$68:
.stabn 68,0,111,L115
L115:
bc _P60,0
.stabn 68,0,111,L116
L116:
bc _P61,1
.stabn 68,0,111,L117
L117:
bc _P62,2
.stabn 68,0,111,L118
L118:
jmp @L$66
L$69:
.stabn 68,0,112,L119
L119:
bc _P60,0
.stabn 68,0,112,L120
L120:
bc _P61,1
.stabn 68,0,112,L121
L121:
bc _P62,2
.stabn 68,0,112,L122
L122:
.stabn 68,0,113,L123
L123:
.stabn 68,0,114,L124
L124:
.stabn 224,0,2,L125
L125:
L$66:
.stabn 68,0,115,L126
L126:
LDA _mode1_count2,0,0
add a,@1
STA _mode1_count2,0,0
.stabn 68,0,116,L127
L127:
ULTRIB _mode1_count2,0x4
jbs STATUS, cf
EXTJMP L$70
.stabn 192,0,2,L128
L128:
.stabn 68,0,117,L129
L129:
.stabn 68,0,118,L130
L130:
clr _mode1_count2
.stabn 68,0,119,L131
L131:
bs _mode1_light_flag,BIT
.stabn 68,0,120,L132
L132:
.stabn 224,0,2,L133
L133:
L$70:
.stabn 68,0,121,L134
L134:
L$71:
.stabn 68,0,122,L135
L135:
.stabn 224,0,1,L136
L136:
L$57:
.stabn 68,0,123,L137
L137:
.stabn 224,0,0,L138
L138:
L$55:
mov a,mode1_bp-4
mov ecx,a
mov a,mode1_bp-3
mov ecx+1,a
mov a,mode1_bp-2
mov ecx+2,a
mov a,mode1_bp-1
mov ecx+3,a
ret
.STACK mode1_bp,local,4
public _mode2
public mode2_bp
.stabs "mode2:F15",36,0,0,_mode2
.section ".S2",C_CODE
.SYMDEF ".S2" 
_mode2:
.SYMDEF "_mode2" 
mov a,ecx
mov mode2_bp-4,a
mov a,ecx+1
mov mode2_bp-3,a
mov a,ecx+2
mov mode2_bp-2,a
mov a,ecx+3
mov mode2_bp-1,a
.stabn 192,0,0,L192
L192:
.stabn 68,0,128,L193
L193:
.stabn 68,0,129,L194
L194:
jbs _mode2_red1_flag,BIT
EXTJMP @L$140
.stabn 192,0,1,L195
L195:
.stabn 68,0,130,L196
L196:
.stabn 68,0,131,L197
L197:
EQNEPRIB _mode2_four_cycle_flag,0
jbc STATUS,zf
EXTJMP @L$142
.stabn 192,0,2,L198
L198:
.stabn 68,0,132,L199
L199:
.stabn 68,0,133,L200
L200:
jbs _mode2_light_flag,BIT
EXTJMP @L$144
.stabn 192,0,3,L201
L201:
.stabn 68,0,134,L202
L202:
.stabn 68,0,135,L203
L203:
LDA _white_status,0,0
mov ecx,a
EQNEPRIB ecx,0
jbc STATUS,zf
EXTJMP @L$148
EQNEPRIB ecx,1
jbc STATUS,zf
EXTJMP @L$149
EQNEPRIB ecx,2
jbc STATUS,zf
EXTJMP @L$150
jmp @L$147
.stabn 192,0,4,L204
L204:
.stabn 68,0,136,L205
L205:
L$148:
.stabn 68,0,137,L206
L206:
bs _P60,0
.stabn 68,0,137,L207
L207:
bs _P61,1
.stabn 68,0,137,L208
L208:
bc _P62,2
.stabn 68,0,137,L209
L209:
jmp @L$147
L$149:
.stabn 68,0,138,L210
L210:
bc _P60,0
.stabn 68,0,138,L211
L211:
bs _P61,1
.stabn 68,0,138,L212
L212:
bc _P62,2
.stabn 68,0,138,L213
L213:
jmp @L$147
L$150:
.stabn 68,0,139,L214
L214:
bs _P60,0
.stabn 68,0,139,L215
L215:
bs _P61,1
.stabn 68,0,139,L216
L216:
bc _P62,2
.stabn 68,0,139,L217
L217:
.stabn 68,0,140,L218
L218:
.stabn 68,0,141,L219
L219:
.stabn 224,0,4,L220
L220:
L$147:
.stabn 68,0,142,L221
L221:
LDA _mode2_count1,0,0
add a,@1
STA _mode2_count1,0,0
.stabn 68,0,143,L222
L222:
ULTRIB _mode2_count1,0x2
jbs STATUS, cf
EXTJMP L$141
.stabn 192,0,4,L223
L223:
.stabn 68,0,144,L224
L224:
.stabn 68,0,145,L225
L225:
clr _mode2_count1
.stabn 68,0,146,L226
L226:
bc _mode2_light_flag,BIT
.stabn 68,0,147,L227
L227:
.stabn 224,0,4,L228
L228:
.stabn 68,0,148,L229
L229:
.stabn 68,0,149,L230
L230:
.stabn 224,0,3,L231
L231:
jmp @L$141
L$144:
.stabn 192,0,3,L232
L232:
.stabn 68,0,151,L233
L233:
.stabn 68,0,152,L234
L234:
LDA _white_status,0,0
mov ecx,a
EQNEPRIB ecx,0
jbc STATUS,zf
EXTJMP @L$155
EQNEPRIB ecx,1
jbc STATUS,zf
EXTJMP @L$156
EQNEPRIB ecx,2
jbc STATUS,zf
EXTJMP @L$157
jmp @L$154
.stabn 192,0,4,L235
L235:
.stabn 68,0,153,L236
L236:
L$155:
.stabn 68,0,154,L237
L237:
bs _P60,0
.stabn 68,0,154,L238
L238:
bc _P61,1
.stabn 68,0,154,L239
L239:
bc _P62,2
.stabn 68,0,154,L240
L240:
jmp @L$154
L$156:
.stabn 68,0,155,L241
L241:
bc _P60,0
.stabn 68,0,155,L242
L242:
bc _P61,1
.stabn 68,0,155,L243
L243:
bc _P62,2
.stabn 68,0,155,L244
L244:
jmp @L$154
L$157:
.stabn 68,0,156,L245
L245:
bc _P60,0
.stabn 68,0,156,L246
L246:
bc _P61,1
.stabn 68,0,156,L247
L247:
bc _P62,2
.stabn 68,0,156,L248
L248:
.stabn 68,0,157,L249
L249:
.stabn 68,0,158,L250
L250:
.stabn 224,0,4,L251
L251:
L$154:
.stabn 68,0,159,L252
L252:
bs _mode2_light_flag,BIT
.stabn 68,0,160,L253
L253:
LDA _mode2_four_cycle_count,0,0
add a,@1
STA _mode2_four_cycle_count,0,0
.stabn 68,0,161,L254
L254:
ULTRIB _mode2_four_cycle_count,0x4
jbs STATUS, cf
EXTJMP L$141
.stabn 192,0,4,L255
L255:
.stabn 68,0,162,L256
L256:
.stabn 68,0,163,L257
L257:
clr _mode2_four_cycle_count
.stabn 68,0,164,L258
L258:
clr _mode2_four_cycle_flag
.stabn 68,0,165,L259
L259:
.stabn 224,0,4,L260
L260:
.stabn 68,0,166,L261
L261:
.stabn 224,0,3,L262
L262:
.stabn 68,0,167,L263
L263:
.stabn 224,0,2,L264
L264:
jmp @L$141
L$142:
.stabn 192,0,2,L265
L265:
.stabn 68,0,169,L266
L266:
.stabn 68,0,172,L267
L267:
LDA _white_status,0,0
mov ecx,a
EQNEPRIB ecx,0
jbc STATUS,zf
EXTJMP @L$162
EQNEPRIB ecx,1
jbc STATUS,zf
EXTJMP @L$163
EQNEPRIB ecx,2
jbc STATUS,zf
EXTJMP @L$164
jmp @L$161
.stabn 192,0,3,L268
L268:
.stabn 68,0,173,L269
L269:
L$162:
.stabn 68,0,174,L270
L270:
bs _P60,0
.stabn 68,0,174,L271
L271:
bc _P61,1
.stabn 68,0,174,L272
L272:
bc _P62,2
.stabn 68,0,174,L273
L273:
jmp @L$161
L$163:
.stabn 68,0,175,L274
L274:
bc _P60,0
.stabn 68,0,175,L275
L275:
bc _P61,1
.stabn 68,0,175,L276
L276:
bc _P62,2
.stabn 68,0,175,L277
L277:
jmp @L$161
L$164:
.stabn 68,0,176,L278
L278:
bc _P60,0
.stabn 68,0,176,L279
L279:
bc _P61,1
.stabn 68,0,176,L280
L280:
bc _P62,2
.stabn 68,0,176,L281
L281:
.stabn 68,0,177,L282
L282:
.stabn 68,0,178,L283
L283:
.stabn 224,0,3,L284
L284:
L$161:
.stabn 68,0,179,L285
L285:
LDA _mode2_count2,0,0
add a,@1
STA _mode2_count2,0,0
.stabn 68,0,180,L286
L286:
ULTRIB _mode2_count2,0x10
jbs STATUS, cf
EXTJMP L$141
.stabn 192,0,3,L287
L287:
.stabn 68,0,181,L288
L288:
.stabn 68,0,182,L289
L289:
clr _mode2_count2
.stabn 68,0,183,L290
L290:
bc _mode2_red1_flag,BIT
.stabn 68,0,184,L291
L291:
mov a,@1
STA _mode2_four_cycle_flag,0,0
.stabn 68,0,185,L292
L292:
.stabn 224,0,3,L293
L293:
.stabn 68,0,186,L294
L294:
.stabn 224,0,2,L295
L295:
.stabn 68,0,187,L296
L296:
.stabn 224,0,1,L297
L297:
jmp @L$141
L$140:
.stabn 192,0,1,L298
L298:
.stabn 68,0,189,L299
L299:
.stabn 68,0,190,L300
L300:
EQNEPRIB _mode2_four_cycle_flag,0
jbc STATUS,zf
EXTJMP @L$167
.stabn 192,0,2,L301
L301:
.stabn 68,0,191,L302
L302:
.stabn 68,0,192,L303
L303:
jbs _mode2_light_flag,BIT
EXTJMP @L$169
.stabn 192,0,3,L304
L304:
.stabn 68,0,193,L305
L305:
.stabn 68,0,194,L306
L306:
LDA _white_status,0,0
mov ecx,a
EQNEPRIB ecx,0
jbc STATUS,zf
EXTJMP @L$173
EQNEPRIB ecx,1
jbc STATUS,zf
EXTJMP @L$174
EQNEPRIB ecx,2
jbc STATUS,zf
EXTJMP @L$175
jmp @L$172
.stabn 192,0,4,L307
L307:
.stabn 68,0,195,L308
L308:
L$173:
.stabn 68,0,196,L309
L309:
bs _P60,0
.stabn 68,0,196,L310
L310:
bc _P61,1
.stabn 68,0,196,L311
L311:
bs _P62,2
.stabn 68,0,196,L312
L312:
jmp @L$172
L$174:
.stabn 68,0,197,L313
L313:
bc _P60,0
.stabn 68,0,197,L314
L314:
bc _P61,1
.stabn 68,0,197,L315
L315:
bs _P62,2
.stabn 68,0,197,L316
L316:
jmp @L$172
L$175:
.stabn 68,0,198,L317
L317:
bs _P60,0
.stabn 68,0,198,L318
L318:
bc _P61,1
.stabn 68,0,198,L319
L319:
bs _P62,2
.stabn 68,0,198,L320
L320:
.stabn 68,0,199,L321
L321:
.stabn 68,0,200,L322
L322:
.stabn 224,0,4,L323
L323:
L$172:
.stabn 68,0,201,L324
L324:
LDA _mode2_count1,0,0
add a,@1
STA _mode2_count1,0,0
.stabn 68,0,202,L325
L325:
ULTRIB _mode2_count1,0x2
jbs STATUS, cf
EXTJMP L$168
.stabn 192,0,4,L326
L326:
.stabn 68,0,203,L327
L327:
.stabn 68,0,204,L328
L328:
clr _mode2_count1
.stabn 68,0,205,L329
L329:
bc _mode2_light_flag,BIT
.stabn 68,0,206,L330
L330:
.stabn 224,0,4,L331
L331:
.stabn 68,0,207,L332
L332:
.stabn 68,0,208,L333
L333:
.stabn 224,0,3,L334
L334:
jmp @L$168
L$169:
.stabn 192,0,3,L335
L335:
.stabn 68,0,210,L336
L336:
.stabn 68,0,211,L337
L337:
LDA _white_status,0,0
mov ecx,a
EQNEPRIB ecx,0
jbc STATUS,zf
EXTJMP @L$180
EQNEPRIB ecx,1
jbc STATUS,zf
EXTJMP @L$181
EQNEPRIB ecx,2
jbc STATUS,zf
EXTJMP @L$182
jmp @L$179
.stabn 192,0,4,L338
L338:
.stabn 68,0,212,L339
L339:
L$180:
.stabn 68,0,213,L340
L340:
bs _P60,0
.stabn 68,0,213,L341
L341:
bc _P61,1
.stabn 68,0,213,L342
L342:
bc _P62,2
.stabn 68,0,213,L343
L343:
jmp @L$179
L$181:
.stabn 68,0,214,L344
L344:
bc _P60,0
.stabn 68,0,214,L345
L345:
bc _P61,1
.stabn 68,0,214,L346
L346:
bc _P62,2
.stabn 68,0,214,L347
L347:
jmp @L$179
L$182:
.stabn 68,0,215,L348
L348:
bc _P60,0
.stabn 68,0,215,L349
L349:
bc _P61,1
.stabn 68,0,215,L350
L350:
bc _P62,2
.stabn 68,0,215,L351
L351:
.stabn 68,0,216,L352
L352:
.stabn 68,0,217,L353
L353:
.stabn 224,0,4,L354
L354:
L$179:
.stabn 68,0,218,L355
L355:
bs _mode2_light_flag,BIT
.stabn 68,0,219,L356
L356:
LDA _mode2_four_cycle_count,0,0
add a,@1
STA _mode2_four_cycle_count,0,0
.stabn 68,0,220,L357
L357:
ULTRIB _mode2_four_cycle_count,0x4
jbs STATUS, cf
EXTJMP L$168
.stabn 192,0,4,L358
L358:
.stabn 68,0,221,L359
L359:
.stabn 68,0,222,L360
L360:
clr _mode2_four_cycle_count
.stabn 68,0,223,L361
L361:
clr _mode2_four_cycle_flag
.stabn 68,0,224,L362
L362:
.stabn 224,0,4,L363
L363:
.stabn 68,0,225,L364
L364:
.stabn 224,0,3,L365
L365:
.stabn 68,0,226,L366
L366:
.stabn 224,0,2,L367
L367:
jmp @L$168
L$167:
.stabn 192,0,2,L368
L368:
.stabn 68,0,228,L369
L369:
.stabn 68,0,229,L370
L370:
LDA _white_status,0,0
mov ecx,a
EQNEPRIB ecx,0
jbc STATUS,zf
EXTJMP @L$187
EQNEPRIB ecx,1
jbc STATUS,zf
EXTJMP @L$188
EQNEPRIB ecx,2
jbc STATUS,zf
EXTJMP @L$189
jmp @L$186
.stabn 192,0,3,L371
L371:
.stabn 68,0,230,L372
L372:
L$187:
.stabn 68,0,231,L373
L373:
bs _P60,0
.stabn 68,0,231,L374
L374:
bc _P61,1
.stabn 68,0,231,L375
L375:
bc _P62,2
.stabn 68,0,231,L376
L376:
jmp @L$186
L$188:
.stabn 68,0,232,L377
L377:
bc _P60,0
.stabn 68,0,232,L378
L378:
bc _P61,1
.stabn 68,0,232,L379
L379:
bc _P62,2
.stabn 68,0,232,L380
L380:
jmp @L$186
L$189:
.stabn 68,0,233,L381
L381:
bc _P60,0
.stabn 68,0,233,L382
L382:
bc _P61,1
.stabn 68,0,233,L383
L383:
bc _P62,2
.stabn 68,0,233,L384
L384:
.stabn 68,0,234,L385
L385:
.stabn 68,0,235,L386
L386:
.stabn 224,0,3,L387
L387:
L$186:
.stabn 68,0,236,L388
L388:
LDA _mode2_count2,0,0
add a,@1
STA _mode2_count2,0,0
.stabn 68,0,237,L389
L389:
ULTRIB _mode2_count2,0x10
jbs STATUS, cf
EXTJMP L$190
.stabn 192,0,3,L390
L390:
.stabn 68,0,238,L391
L391:
.stabn 68,0,239,L392
L392:
clr _mode2_count2
.stabn 68,0,240,L393
L393:
bs _mode2_red1_flag,BIT
.stabn 68,0,241,L394
L394:
mov a,@1
STA _mode2_four_cycle_flag,0,0
.stabn 68,0,242,L395
L395:
.stabn 224,0,3,L396
L396:
L$190:
.stabn 68,0,243,L397
L397:
.stabn 224,0,2,L398
L398:
L$168:
.stabn 68,0,244,L399
L399:
.stabn 224,0,1,L400
L400:
L$141:
.stabn 68,0,245,L401
L401:
.stabn 224,0,0,L402
L402:
L$139:
mov a,mode2_bp-4
mov ecx,a
mov a,mode2_bp-3
mov ecx+1,a
mov a,mode2_bp-2
mov ecx+2,a
mov a,mode2_bp-1
mov ecx+3,a
ret
.STACK mode2_bp,local,4
public _delayms
public delayms_bp
.stabs "delayms:F15",36,0,0,_delayms
.section ".S3",C_CODE
.SYMDEF ".S3" 
_delayms:
.SYMDEF "_delayms" 
mov a,ecx
mov delayms_bp-4,a
mov a,ecx+1
mov delayms_bp-3,a
mov a,ecx+2
mov delayms_bp-2,a
mov a,ecx+3
mov delayms_bp-1,a
.stabs "xms:10",160,0,0,delayms_bp+0
.stabs "j:10",128,0,0,delayms_bp-5
.stabs "i:10",128,0,0,delayms_bp-6
.stabn 192,0,0,L412
L412:
.stabn 68,0,248,L413
L413:
.stabn 68,0,250,L414
L414:
LDA delayms_bp+0,0,0
STA delayms_bp-6,0,0
jmp @L$407
L$404:
.stabn 68,0,251,L415
L415:
mov a,@200
STA delayms_bp-5,0,0
jmp @L$411
L$408:
.stabn 68,0,251,L416
L416:
L$409:
.stabn 68,0,251,L417
L417:
DECMB delayms_bp-5,0
L$411:
.stabn 68,0,251,L418
L418:
EQNEPRIB delayms_bp-5,0
jbs STATUS, zf
EXTJMP L$408
L$405:
.stabn 68,0,250,L419
L419:
DECMB delayms_bp-6,0
L$407:
.stabn 68,0,250,L420
L420:
EQNEPRIB delayms_bp-6,0
jbs STATUS, zf
EXTJMP L$404
.stabn 68,0,252,L421
L421:
.stabn 224,0,0,L422
L422:
L$403:
mov a,delayms_bp-4
mov ecx,a
mov a,delayms_bp-3
mov ecx+1,a
mov a,delayms_bp-2
mov ecx+2,a
mov a,delayms_bp-1
mov ecx+3,a
ret
.STACK delayms_bp,local,6
public _keyscan
public keyscan_bp
.stabs "keyscan:F15",36,0,0,_keyscan
.section ".S4",C_CODE
.SYMDEF ".S4" 
_keyscan:
.SYMDEF "_keyscan" 
mov a,ecx
mov keyscan_bp-4,a
mov a,ecx+1
mov keyscan_bp-3,a
mov a,ecx+2
mov keyscan_bp-2,a
mov a,ecx+3
mov keyscan_bp-1,a
.stabn 192,0,0,L442
L442:
.stabn 68,0,254,L443
L443:
.stabn 68,0,255,L444
L444:
jbc _P65,5
EXTJMP @L$424
.stabn 192,0,1,L445
L445:
.stabn 68,0,256,L446
L446:
.stabn 68,0,257,L447
L447:
mov a,@10
mov delayms_bp+0,a
.STACK delayms_bp,parameter,1
call _delayms
.stabn 68,0,258,L448
L448:
jbc _P65,5
EXTJMP @L$426
.stabn 192,0,2,L449
L449:
.stabn 68,0,259,L450
L450:
.stabn 68,0,260,L451
L451:
bs _S1_flag,BIT
.stabn 68,0,261,L452
L452:
LDA _white_status,0,0
add a,@1
STA _white_status,0,0
.stabn 68,0,262,L453
L453:
ULTRIB _white_status,0x3
jbs STATUS, cf
EXTJMP L$431
.stabn 68,0,263,L454
L454:
clr _white_status
L$430:
.stabn 68,0,264,L455
L455:
L$431:
.stabn 68,0,264,L456
L456:
jbs _P65,5
EXTJMP @L$430
.stabn 68,0,265,L457
L457:
.stabn 224,0,2,L458
L458:
L$426:
.stabn 68,0,266,L459
L459:
.stabn 224,0,1,L460
L460:
L$424:
.stabn 68,0,267,L461
L461:
jbc _P64,4
EXTJMP @L$433
.stabn 192,0,1,L462
L462:
.stabn 68,0,268,L463
L463:
.stabn 68,0,269,L464
L464:
mov a,@10
mov delayms_bp+0,a
.STACK delayms_bp,parameter,1
call _delayms
.stabn 68,0,270,L465
L465:
jbc _P64,4
EXTJMP @L$435
.stabn 192,0,2,L466
L466:
.stabn 68,0,271,L467
L467:
.stabn 68,0,272,L468
L468:
bs _S2_flag,BIT
.stabn 68,0,273,L469
L469:
mov a,@2
STA _white_status,0,0
.stabn 68,0,274,L470
L470:
LDA _mode_count,0,0
add a,@1
STA _mode_count,0,0
.stabn 68,0,275,L471
L471:
ULTRIB _mode_count,0x3
jbs STATUS, cf
EXTJMP L$440
.stabn 192,0,3,L472
L472:
.stabn 68,0,276,L473
L473:
.stabn 68,0,276,L474
L474:
clr _mode_count
.stabn 68,0,277,L475
L475:
bc _S1_sleep_flag,BIT
.stabn 68,0,277,L476
L476:
.stabn 224,0,3,L477
L477:
L$439:
.stabn 68,0,278,L478
L478:
L$440:
.stabn 68,0,278,L479
L479:
jbs _P64,4
EXTJMP @L$439
.stabn 68,0,279,L480
L480:
.stabn 224,0,2,L481
L481:
L$435:
.stabn 68,0,280,L482
L482:
.stabn 224,0,1,L483
L483:
L$433:
.stabn 68,0,282,L484
L484:
.stabn 224,0,0,L485
L485:
L$423:
mov a,keyscan_bp-4
mov ecx,a
mov a,keyscan_bp-3
mov ecx+1,a
mov a,keyscan_bp-2
mov ecx+2,a
mov a,keyscan_bp-1
mov ecx+3,a
ret
.STACK keyscan_bp,local,4
public _main
public main_bp
.stabs "main:F15",36,0,0,_main
.section ".S5",C_CODE
.SYMDEF ".S5" 
_main:
.SYMDEF "_main" 
.stabn 192,0,0,L506
L506:
.stabn 68,0,285,L507
L507:
.stabn 68,0,287,L508
L508:
.cfile "C:\Users\daminger\OneDrive\github\project\light - v101-1751确定版\light.c(287):"
wdtc
.stabn 68,0,287,L509
L509:
.stabn 68,0,288,L510
L510:
.cfile "C:\Users\daminger\OneDrive\github\project\light - v101-1751确定版\light.c(288):"
disi
.stabn 68,0,288,L511
L511:
.stabn 68,0,289,L512
L512:
mov a,@0
STA _WDTCR,0,2
.stabn 68,0,290,L513
L513:
mov a,@56
STA _P6CR,0,2
.stabn 68,0,291,L514
L514:
mov a,@0
STA _P5CR,0,2
.stabn 68,0,292,L515
L515:
clr _PORT5
.stabn 68,0,293,L516
L516:
mov a,@207
STA _PHCR,0,2
.stabn 68,0,294,L517
L517:
clr _PORT6
.stabn 68,0,296,L518
L518:
.cfile "C:\Users\daminger\OneDrive\github\project\light - v101-1751确定版\light.c(296):"
mov	a,@0x07
.stabn 68,0,297,L519
L519:
.cfile "C:\Users\daminger\OneDrive\github\project\light - v101-1751确定版\light.c(297):"
contw
.stabn 68,0,299,L520
L520:
clr _TCC
.stabn 68,0,300,L521
L521:
clr _ISR
.stabn 68,0,301,L522
L522:
.cfile "C:\Users\daminger\OneDrive\github\project\light - v101-1751确定版\light.c(301):"
eni
.stabn 68,0,301,L523
L523:
.stabn 68,0,302,L524
L524:
mov a,@3
STA _IMR,0,2
jmp @L$488
L$487:
.stabn 192,0,1,L525
L525:
.stabn 68,0,304,L526
L526:
.stabn 68,0,305,L527
L527:
call _keyscan
.stabn 68,0,307,L528
L528:
jbs _Timer_interrupt_flag,BIT
EXTJMP @L$490
.stabn 192,0,2,L529
L529:
.stabn 68,0,308,L530
L530:
.stabn 68,0,309,L531
L531:
bc _Timer_interrupt_flag,BIT
.stabn 68,0,311,L532
L532:
LDA _mode_count,0,0
mov ecx,a
EQNEPRIB ecx,0
jbc STATUS,zf
EXTJMP @L$494
EQNEPRIB ecx,1
jbc STATUS,zf
EXTJMP @L$497
EQNEPRIB ecx,2
jbc STATUS,zf
EXTJMP @L$498
jmp @L$493
.stabn 192,0,3,L533
L533:
.stabn 68,0,312,L534
L534:
L$494:
.stabn 68,0,313,L535
L535:
jbc _S1_sleep_flag,BIT
EXTJMP @L$493
.stabn 68,0,313,L536
L536:
call _mode0
.stabn 68,0,313,L537
L537:
jmp @L$493
L$497:
.stabn 68,0,314,L538
L538:
bc _S1_sleep_flag,BIT
.stabn 68,0,314,L539
L539:
call _mode1
.stabn 68,0,314,L540
L540:
jmp @L$493
L$498:
.stabn 68,0,315,L541
L541:
bc _S1_sleep_flag,BIT
.stabn 68,0,315,L542
L542:
call _mode2
.stabn 68,0,315,L543
L543:
.stabn 68,0,316,L544
L544:
.stabn 68,0,317,L545
L545:
.stabn 224,0,3,L546
L546:
L$493:
.stabn 68,0,319,L547
L547:
jbs _S1_sleep_flag,BIT
EXTJMP @L$499
.stabn 192,0,3,L548
L548:
.stabn 68,0,320,L549
L549:
.stabn 68,0,321,L550
L550:
jbs _S1_flag,BIT
EXTJMP @L$501
.stabn 192,0,4,L551
L551:
.stabn 68,0,322,L552
L552:
.stabn 68,0,323,L553
L553:
jbc _P60,0
EXTJMP @L$504
mov a,@1
STA main_bp-1,0,0
jmp @L$505
L$504:
clr main_bp-1
L$505:
LDA main_bp-1,0,0
mov ecx,a
bc _P60,0
jbc ecx,0
bs _P60,0
.stabn 68,0,324,L554
L554:
bc _S1_flag,BIT
.stabn 68,0,325,L555
L555:
bc _S1_sleep_flag,BIT
.stabn 68,0,326,L556
L556:
.stabn 224,0,4,L557
L557:
L$501:
.stabn 68,0,327,L558
L558:
.stabn 224,0,3,L559
L559:
L$499:
.stabn 68,0,354,L560
L560:
.stabn 224,0,2,L561
L561:
L$490:
.stabn 68,0,355,L562
L562:
.stabn 224,0,1,L563
L563:
L$488:
.stabn 68,0,303,L564
L564:
jmp @L$487
.stabn 68,0,356,L565
L565:
.stabn 224,0,0,L566
L566:
L$486:
ret
.STACK main_bp,local,1
public _interrupt
public interrupt_bp
.stabs "interrupt:F15",36,0,0,_interrupt
.section ".S6",C_CODE
.SYMDEF ".S6" INT:-1
_interrupt:
.SYMDEF "_interrupt" INT:-1
.stabn 192,0,0,L570
L570:
.stabn 68,0,359,L571
L571:
.stabn 68,0,362,L572
L572:
jbs _TCIF,0
EXTJMP @L$568
.stabn 192,0,1,L573
L573:
.stabn 68,0,363,L574
L574:
.stabn 68,0,365,L575
L575:
LDA _ISR,0,0
and a,@254
STA _ISR,0,0
.stabn 68,0,366,L576
L576:
clr _TCC
.stabn 68,0,368,L577
L577:
bs _Timer_interrupt_flag,BIT
.stabn 68,0,369,L578
L578:
.stabn 224,0,1,L579
L579:
L$568:
.stabn 68,0,370,L580
L580:
.stabn 224,0,0,L581
L581:
L$567:
reti
.STACK interrupt_bp,local,0
public _interrupt_l
public interrupt_l_bp
.stabs "interrupt_l:F15",36,0,0,_interrupt_l
.section ".S7",C_CODE
.SYMDEF ".S7" LOWINT:0,8
_interrupt_l:
.SYMDEF "_interrupt_l" LOWINT:0,8
.stabn 192,0,0,L583
L583:
.stabn 68,0,373,L584
L584:
.stabn 68,0,374,L585
L585:
.stabn 224,0,0,L586
L586:
L$582:
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
