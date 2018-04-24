.autoimport
EM78P173N EQU 1
_SIMPLE_RSR_ EQU 1
.include "sysdefii.inc"
ccounter equ pr1
.stabs "icc_compiled.",60,0,0,0
.stabs "C:\Users\daminger\OneDrive\代码\light - v101 - 25A8\light.c",100,0,3,0
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
.stabn 192,0,0,L2
L2:
.stabn 68,0,37,L4
L4:
.stabn 192,0,1,L5
L5:
.stabn 68,0,40,L6
L6:
.stabn 68,0,41,L7
L7:
bc _P60,0
.stabn 68,0,41,L8
L8:
bc _P61,1
.stabn 68,0,41,L9
L9:
bc _P62,2
.stabn 68,0,43,L10
L10:
.cfile "C:\Users\daminger\OneDrive\代码\light - v101 - 25A8\light.c(43):"
mov		a,@0x0f
.stabn 68,0,44,L11
L11:
.cfile "C:\Users\daminger\OneDrive\代码\light - v101 - 25A8\light.c(44):"
contw
.stabn 68,0,45,L12
L12:
.cfile "C:\Users\daminger\OneDrive\代码\light - v101 - 25A8\light.c(45):"
WDTC
.stabn 68,0,46,L13
L13:
.cfile "C:\Users\daminger\OneDrive\代码\light - v101 - 25A8\light.c(46):"
MOV		0X6,0X6
.stabn 68,0,48,L14
L14:
.cfile "C:\Users\daminger\OneDrive\代码\light - v101 - 25A8\light.c(48):"
disi
.stabn 68,0,48,L15
L15:
.stabn 68,0,49,L16
L16:
mov a,@35
STA _SCR,0,0
.stabn 68,0,50,L17
L17:
mov a,@2
STA _IMR,0,2
.stabn 68,0,51,L18
L18:
.cfile "C:\Users\daminger\OneDrive\代码\light - v101 - 25A8\light.c(51):"
slep
.stabn 68,0,51,L19
L19:
.stabn 68,0,52,L20
L20:
.cfile "C:\Users\daminger\OneDrive\代码\light - v101 - 25A8\light.c(52):"
nop
.stabn 68,0,52,L21
L21:
.stabn 68,0,53,L22
L22:
.cfile "C:\Users\daminger\OneDrive\代码\light - v101 - 25A8\light.c(53):"
nop
.stabn 68,0,53,L23
L23:
.stabn 68,0,54,L24
L24:
.cfile "C:\Users\daminger\OneDrive\代码\light - v101 - 25A8\light.c(54):"
wdtc
.stabn 68,0,54,L25
L25:
.stabn 68,0,55,L26
L26:
mov a,@0
STA _WDTCR,0,2
.stabn 68,0,57,L27
L27:
mov a,@99
STA _SCR,0,0
.stabn 68,0,58,L28
L28:
call _keyscan
.stabn 68,0,59,L29
L29:
mov a,@1
STA _mode_count,0,0
.stabn 68,0,60,L30
L30:
mov a,@2
STA _white_status,0,0
.stabn 68,0,61,L31
L31:
.cfile "C:\Users\daminger\OneDrive\代码\light - v101 - 25A8\light.c(61):"
wdtc
.stabn 68,0,61,L32
L32:
.stabn 68,0,62,L33
L33:
.cfile "C:\Users\daminger\OneDrive\代码\light - v101 - 25A8\light.c(62):"
disi
.stabn 68,0,62,L34
L34:
.stabn 68,0,63,L35
L35:
mov a,@0
STA _WDTCR,0,2
.stabn 68,0,67,L36
L36:
.cfile "C:\Users\daminger\OneDrive\代码\light - v101 - 25A8\light.c(67):"
mov	a,@0x07
.stabn 68,0,68,L37
L37:
.cfile "C:\Users\daminger\OneDrive\代码\light - v101 - 25A8\light.c(68):"
contw
.stabn 68,0,70,L38
L38:
clr _TCC
.stabn 68,0,71,L39
L39:
clr _ISR
.stabn 68,0,72,L40
L40:
mov a,@1
STA _IMR,0,2
.stabn 68,0,73,L41
L41:
.cfile "C:\Users\daminger\OneDrive\代码\light - v101 - 25A8\light.c(73):"
eni
.stabn 68,0,73,L42
L42:
.stabn 68,0,74,L43
L43:
.stabn 224,0,1,L44
L44:
.stabn 68,0,76,L45
L45:
.stabn 224,0,0,L46
L46:
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
.stabn 192,0,0,L64
L64:
.stabn 68,0,79,L65
L65:
.stabn 68,0,80,L66
L66:
jbs _mode1_light_flag,BIT
EXTJMP @L$48
.stabn 192,0,1,L67
L67:
.stabn 68,0,81,L68
L68:
.stabn 68,0,82,L69
L69:
LDA _white_status,0,0
mov ecx,a
EQNEPRIB ecx,0
jbc STATUS,zf
EXTJMP @L$52
EQNEPRIB ecx,1
jbc STATUS,zf
EXTJMP @L$53
EQNEPRIB ecx,2
jbc STATUS,zf
EXTJMP @L$54
jmp @L$51
.stabn 192,0,2,L70
L70:
.stabn 68,0,83,L71
L71:
L$52:
.stabn 68,0,84,L72
L72:
bs _P60,0
.stabn 68,0,84,L73
L73:
bs _P61,1
.stabn 68,0,84,L74
L74:
bs _P62,2
.stabn 68,0,84,L75
L75:
jmp @L$51
L$53:
.stabn 68,0,85,L76
L76:
bc _P60,0
.stabn 68,0,85,L77
L77:
bs _P61,1
.stabn 68,0,85,L78
L78:
bs _P62,2
.stabn 68,0,85,L79
L79:
jmp @L$51
L$54:
.stabn 68,0,86,L80
L80:
bs _P60,0
.stabn 68,0,86,L81
L81:
bs _P61,1
.stabn 68,0,86,L82
L82:
bs _P62,2
.stabn 68,0,86,L83
L83:
.stabn 68,0,87,L84
L84:
.stabn 68,0,88,L85
L85:
.stabn 224,0,2,L86
L86:
L$51:
.stabn 68,0,89,L87
L87:
LDA _mode1_count1,0,0
add a,@1
STA _mode1_count1,0,0
.stabn 68,0,90,L88
L88:
ULTRIB _mode1_count1,0x4
jbs STATUS, cf
EXTJMP L$49
.stabn 192,0,2,L89
L89:
.stabn 68,0,91,L90
L90:
.stabn 68,0,92,L91
L91:
clr _mode1_count1
.stabn 68,0,93,L92
L92:
bc _mode1_light_flag,BIT
.stabn 68,0,94,L93
L93:
.stabn 224,0,2,L94
L94:
.stabn 68,0,95,L95
L95:
.stabn 68,0,96,L96
L96:
.stabn 224,0,1,L97
L97:
jmp @L$49
L$48:
.stabn 192,0,1,L98
L98:
.stabn 68,0,98,L99
L99:
.stabn 68,0,99,L100
L100:
LDA _white_status,0,0
mov ecx,a
EQNEPRIB ecx,0
jbc STATUS,zf
EXTJMP @L$59
EQNEPRIB ecx,1
jbc STATUS,zf
EXTJMP @L$60
EQNEPRIB ecx,2
jbc STATUS,zf
EXTJMP @L$61
jmp @L$58
.stabn 192,0,2,L101
L101:
.stabn 68,0,100,L102
L102:
L$59:
.stabn 68,0,101,L103
L103:
bs _P60,0
.stabn 68,0,101,L104
L104:
bc _P61,1
.stabn 68,0,101,L105
L105:
bc _P62,2
.stabn 68,0,101,L106
L106:
jmp @L$58
L$60:
.stabn 68,0,102,L107
L107:
bc _P60,0
.stabn 68,0,102,L108
L108:
bc _P61,1
.stabn 68,0,102,L109
L109:
bc _P62,2
.stabn 68,0,102,L110
L110:
jmp @L$58
L$61:
.stabn 68,0,103,L111
L111:
bc _P60,0
.stabn 68,0,103,L112
L112:
bc _P61,1
.stabn 68,0,103,L113
L113:
bc _P62,2
.stabn 68,0,103,L114
L114:
.stabn 68,0,104,L115
L115:
.stabn 68,0,105,L116
L116:
.stabn 224,0,2,L117
L117:
L$58:
.stabn 68,0,106,L118
L118:
LDA _mode1_count2,0,0
add a,@1
STA _mode1_count2,0,0
.stabn 68,0,107,L119
L119:
ULTRIB _mode1_count2,0x4
jbs STATUS, cf
EXTJMP L$62
.stabn 192,0,2,L120
L120:
.stabn 68,0,108,L121
L121:
.stabn 68,0,109,L122
L122:
clr _mode1_count2
.stabn 68,0,110,L123
L123:
bs _mode1_light_flag,BIT
.stabn 68,0,111,L124
L124:
.stabn 224,0,2,L125
L125:
L$62:
.stabn 68,0,112,L126
L126:
L$63:
.stabn 68,0,113,L127
L127:
.stabn 224,0,1,L128
L128:
L$49:
.stabn 68,0,114,L129
L129:
.stabn 224,0,0,L130
L130:
L$47:
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
.stabn 192,0,0,L184
L184:
.stabn 68,0,119,L185
L185:
.stabn 68,0,120,L186
L186:
jbs _mode2_red1_flag,BIT
EXTJMP @L$132
.stabn 192,0,1,L187
L187:
.stabn 68,0,121,L188
L188:
.stabn 68,0,122,L189
L189:
EQNEPRIB _mode2_four_cycle_flag,0
jbc STATUS,zf
EXTJMP @L$134
.stabn 192,0,2,L190
L190:
.stabn 68,0,123,L191
L191:
.stabn 68,0,124,L192
L192:
jbs _mode2_light_flag,BIT
EXTJMP @L$136
.stabn 192,0,3,L193
L193:
.stabn 68,0,125,L194
L194:
.stabn 68,0,126,L195
L195:
LDA _white_status,0,0
mov ecx,a
EQNEPRIB ecx,0
jbc STATUS,zf
EXTJMP @L$140
EQNEPRIB ecx,1
jbc STATUS,zf
EXTJMP @L$141
EQNEPRIB ecx,2
jbc STATUS,zf
EXTJMP @L$142
jmp @L$139
.stabn 192,0,4,L196
L196:
.stabn 68,0,127,L197
L197:
L$140:
.stabn 68,0,128,L198
L198:
bs _P60,0
.stabn 68,0,128,L199
L199:
bs _P61,1
.stabn 68,0,128,L200
L200:
bc _P62,2
.stabn 68,0,128,L201
L201:
jmp @L$139
L$141:
.stabn 68,0,129,L202
L202:
bc _P60,0
.stabn 68,0,129,L203
L203:
bs _P61,1
.stabn 68,0,129,L204
L204:
bc _P62,2
.stabn 68,0,129,L205
L205:
jmp @L$139
L$142:
.stabn 68,0,130,L206
L206:
bs _P60,0
.stabn 68,0,130,L207
L207:
bs _P61,1
.stabn 68,0,130,L208
L208:
bc _P62,2
.stabn 68,0,130,L209
L209:
.stabn 68,0,131,L210
L210:
.stabn 68,0,132,L211
L211:
.stabn 224,0,4,L212
L212:
L$139:
.stabn 68,0,133,L213
L213:
LDA _mode2_count1,0,0
add a,@1
STA _mode2_count1,0,0
.stabn 68,0,134,L214
L214:
ULTRIB _mode2_count1,0x2
jbs STATUS, cf
EXTJMP L$133
.stabn 192,0,4,L215
L215:
.stabn 68,0,135,L216
L216:
.stabn 68,0,136,L217
L217:
clr _mode2_count1
.stabn 68,0,137,L218
L218:
bc _mode2_light_flag,BIT
.stabn 68,0,138,L219
L219:
.stabn 224,0,4,L220
L220:
.stabn 68,0,139,L221
L221:
.stabn 68,0,140,L222
L222:
.stabn 224,0,3,L223
L223:
jmp @L$133
L$136:
.stabn 192,0,3,L224
L224:
.stabn 68,0,142,L225
L225:
.stabn 68,0,143,L226
L226:
LDA _white_status,0,0
mov ecx,a
EQNEPRIB ecx,0
jbc STATUS,zf
EXTJMP @L$147
EQNEPRIB ecx,1
jbc STATUS,zf
EXTJMP @L$148
EQNEPRIB ecx,2
jbc STATUS,zf
EXTJMP @L$149
jmp @L$146
.stabn 192,0,4,L227
L227:
.stabn 68,0,144,L228
L228:
L$147:
.stabn 68,0,145,L229
L229:
bs _P60,0
.stabn 68,0,145,L230
L230:
bc _P61,1
.stabn 68,0,145,L231
L231:
bc _P62,2
.stabn 68,0,145,L232
L232:
jmp @L$146
L$148:
.stabn 68,0,146,L233
L233:
bc _P60,0
.stabn 68,0,146,L234
L234:
bc _P61,1
.stabn 68,0,146,L235
L235:
bc _P62,2
.stabn 68,0,146,L236
L236:
jmp @L$146
L$149:
.stabn 68,0,147,L237
L237:
bc _P60,0
.stabn 68,0,147,L238
L238:
bc _P61,1
.stabn 68,0,147,L239
L239:
bc _P62,2
.stabn 68,0,147,L240
L240:
.stabn 68,0,148,L241
L241:
.stabn 68,0,149,L242
L242:
.stabn 224,0,4,L243
L243:
L$146:
.stabn 68,0,150,L244
L244:
bs _mode2_light_flag,BIT
.stabn 68,0,151,L245
L245:
LDA _mode2_four_cycle_count,0,0
add a,@1
STA _mode2_four_cycle_count,0,0
.stabn 68,0,152,L246
L246:
ULTRIB _mode2_four_cycle_count,0x4
jbs STATUS, cf
EXTJMP L$133
.stabn 192,0,4,L247
L247:
.stabn 68,0,153,L248
L248:
.stabn 68,0,154,L249
L249:
clr _mode2_four_cycle_count
.stabn 68,0,155,L250
L250:
clr _mode2_four_cycle_flag
.stabn 68,0,156,L251
L251:
.stabn 224,0,4,L252
L252:
.stabn 68,0,157,L253
L253:
.stabn 224,0,3,L254
L254:
.stabn 68,0,158,L255
L255:
.stabn 224,0,2,L256
L256:
jmp @L$133
L$134:
.stabn 192,0,2,L257
L257:
.stabn 68,0,160,L258
L258:
.stabn 68,0,163,L259
L259:
LDA _white_status,0,0
mov ecx,a
EQNEPRIB ecx,0
jbc STATUS,zf
EXTJMP @L$154
EQNEPRIB ecx,1
jbc STATUS,zf
EXTJMP @L$155
EQNEPRIB ecx,2
jbc STATUS,zf
EXTJMP @L$156
jmp @L$153
.stabn 192,0,3,L260
L260:
.stabn 68,0,164,L261
L261:
L$154:
.stabn 68,0,165,L262
L262:
bs _P60,0
.stabn 68,0,165,L263
L263:
bc _P61,1
.stabn 68,0,165,L264
L264:
bc _P62,2
.stabn 68,0,165,L265
L265:
jmp @L$153
L$155:
.stabn 68,0,166,L266
L266:
bc _P60,0
.stabn 68,0,166,L267
L267:
bc _P61,1
.stabn 68,0,166,L268
L268:
bc _P62,2
.stabn 68,0,166,L269
L269:
jmp @L$153
L$156:
.stabn 68,0,167,L270
L270:
bc _P60,0
.stabn 68,0,167,L271
L271:
bc _P61,1
.stabn 68,0,167,L272
L272:
bc _P62,2
.stabn 68,0,167,L273
L273:
.stabn 68,0,168,L274
L274:
.stabn 68,0,169,L275
L275:
.stabn 224,0,3,L276
L276:
L$153:
.stabn 68,0,170,L277
L277:
LDA _mode2_count2,0,0
add a,@1
STA _mode2_count2,0,0
.stabn 68,0,171,L278
L278:
ULTRIB _mode2_count2,0x10
jbs STATUS, cf
EXTJMP L$133
.stabn 192,0,3,L279
L279:
.stabn 68,0,172,L280
L280:
.stabn 68,0,173,L281
L281:
clr _mode2_count2
.stabn 68,0,174,L282
L282:
bc _mode2_red1_flag,BIT
.stabn 68,0,175,L283
L283:
mov a,@1
STA _mode2_four_cycle_flag,0,0
.stabn 68,0,176,L284
L284:
.stabn 224,0,3,L285
L285:
.stabn 68,0,177,L286
L286:
.stabn 224,0,2,L287
L287:
.stabn 68,0,178,L288
L288:
.stabn 224,0,1,L289
L289:
jmp @L$133
L$132:
.stabn 192,0,1,L290
L290:
.stabn 68,0,180,L291
L291:
.stabn 68,0,181,L292
L292:
EQNEPRIB _mode2_four_cycle_flag,0
jbc STATUS,zf
EXTJMP @L$159
.stabn 192,0,2,L293
L293:
.stabn 68,0,182,L294
L294:
.stabn 68,0,183,L295
L295:
jbs _mode2_light_flag,BIT
EXTJMP @L$161
.stabn 192,0,3,L296
L296:
.stabn 68,0,184,L297
L297:
.stabn 68,0,185,L298
L298:
LDA _white_status,0,0
mov ecx,a
EQNEPRIB ecx,0
jbc STATUS,zf
EXTJMP @L$165
EQNEPRIB ecx,1
jbc STATUS,zf
EXTJMP @L$166
EQNEPRIB ecx,2
jbc STATUS,zf
EXTJMP @L$167
jmp @L$164
.stabn 192,0,4,L299
L299:
.stabn 68,0,186,L300
L300:
L$165:
.stabn 68,0,187,L301
L301:
bs _P60,0
.stabn 68,0,187,L302
L302:
bc _P61,1
.stabn 68,0,187,L303
L303:
bs _P62,2
.stabn 68,0,187,L304
L304:
jmp @L$164
L$166:
.stabn 68,0,188,L305
L305:
bc _P60,0
.stabn 68,0,188,L306
L306:
bc _P61,1
.stabn 68,0,188,L307
L307:
bs _P62,2
.stabn 68,0,188,L308
L308:
jmp @L$164
L$167:
.stabn 68,0,189,L309
L309:
bs _P60,0
.stabn 68,0,189,L310
L310:
bc _P61,1
.stabn 68,0,189,L311
L311:
bs _P62,2
.stabn 68,0,189,L312
L312:
.stabn 68,0,190,L313
L313:
.stabn 68,0,191,L314
L314:
.stabn 224,0,4,L315
L315:
L$164:
.stabn 68,0,192,L316
L316:
LDA _mode2_count1,0,0
add a,@1
STA _mode2_count1,0,0
.stabn 68,0,193,L317
L317:
ULTRIB _mode2_count1,0x2
jbs STATUS, cf
EXTJMP L$160
.stabn 192,0,4,L318
L318:
.stabn 68,0,194,L319
L319:
.stabn 68,0,195,L320
L320:
clr _mode2_count1
.stabn 68,0,196,L321
L321:
bc _mode2_light_flag,BIT
.stabn 68,0,197,L322
L322:
.stabn 224,0,4,L323
L323:
.stabn 68,0,198,L324
L324:
.stabn 68,0,199,L325
L325:
.stabn 224,0,3,L326
L326:
jmp @L$160
L$161:
.stabn 192,0,3,L327
L327:
.stabn 68,0,201,L328
L328:
.stabn 68,0,202,L329
L329:
LDA _white_status,0,0
mov ecx,a
EQNEPRIB ecx,0
jbc STATUS,zf
EXTJMP @L$172
EQNEPRIB ecx,1
jbc STATUS,zf
EXTJMP @L$173
EQNEPRIB ecx,2
jbc STATUS,zf
EXTJMP @L$174
jmp @L$171
.stabn 192,0,4,L330
L330:
.stabn 68,0,203,L331
L331:
L$172:
.stabn 68,0,204,L332
L332:
bs _P60,0
.stabn 68,0,204,L333
L333:
bc _P61,1
.stabn 68,0,204,L334
L334:
bc _P62,2
.stabn 68,0,204,L335
L335:
jmp @L$171
L$173:
.stabn 68,0,205,L336
L336:
bc _P60,0
.stabn 68,0,205,L337
L337:
bc _P61,1
.stabn 68,0,205,L338
L338:
bc _P62,2
.stabn 68,0,205,L339
L339:
jmp @L$171
L$174:
.stabn 68,0,206,L340
L340:
bc _P60,0
.stabn 68,0,206,L341
L341:
bc _P61,1
.stabn 68,0,206,L342
L342:
bc _P62,2
.stabn 68,0,206,L343
L343:
.stabn 68,0,207,L344
L344:
.stabn 68,0,208,L345
L345:
.stabn 224,0,4,L346
L346:
L$171:
.stabn 68,0,209,L347
L347:
bs _mode2_light_flag,BIT
.stabn 68,0,210,L348
L348:
LDA _mode2_four_cycle_count,0,0
add a,@1
STA _mode2_four_cycle_count,0,0
.stabn 68,0,211,L349
L349:
ULTRIB _mode2_four_cycle_count,0x4
jbs STATUS, cf
EXTJMP L$160
.stabn 192,0,4,L350
L350:
.stabn 68,0,212,L351
L351:
.stabn 68,0,213,L352
L352:
clr _mode2_four_cycle_count
.stabn 68,0,214,L353
L353:
clr _mode2_four_cycle_flag
.stabn 68,0,215,L354
L354:
.stabn 224,0,4,L355
L355:
.stabn 68,0,216,L356
L356:
.stabn 224,0,3,L357
L357:
.stabn 68,0,217,L358
L358:
.stabn 224,0,2,L359
L359:
jmp @L$160
L$159:
.stabn 192,0,2,L360
L360:
.stabn 68,0,219,L361
L361:
.stabn 68,0,220,L362
L362:
LDA _white_status,0,0
mov ecx,a
EQNEPRIB ecx,0
jbc STATUS,zf
EXTJMP @L$179
EQNEPRIB ecx,1
jbc STATUS,zf
EXTJMP @L$180
EQNEPRIB ecx,2
jbc STATUS,zf
EXTJMP @L$181
jmp @L$178
.stabn 192,0,3,L363
L363:
.stabn 68,0,221,L364
L364:
L$179:
.stabn 68,0,222,L365
L365:
bs _P60,0
.stabn 68,0,222,L366
L366:
bc _P61,1
.stabn 68,0,222,L367
L367:
bc _P62,2
.stabn 68,0,222,L368
L368:
jmp @L$178
L$180:
.stabn 68,0,223,L369
L369:
bc _P60,0
.stabn 68,0,223,L370
L370:
bc _P61,1
.stabn 68,0,223,L371
L371:
bc _P62,2
.stabn 68,0,223,L372
L372:
jmp @L$178
L$181:
.stabn 68,0,224,L373
L373:
bc _P60,0
.stabn 68,0,224,L374
L374:
bc _P61,1
.stabn 68,0,224,L375
L375:
bc _P62,2
.stabn 68,0,224,L376
L376:
.stabn 68,0,225,L377
L377:
.stabn 68,0,226,L378
L378:
.stabn 224,0,3,L379
L379:
L$178:
.stabn 68,0,227,L380
L380:
LDA _mode2_count2,0,0
add a,@1
STA _mode2_count2,0,0
.stabn 68,0,228,L381
L381:
ULTRIB _mode2_count2,0x10
jbs STATUS, cf
EXTJMP L$182
.stabn 192,0,3,L382
L382:
.stabn 68,0,229,L383
L383:
.stabn 68,0,230,L384
L384:
clr _mode2_count2
.stabn 68,0,231,L385
L385:
bs _mode2_red1_flag,BIT
.stabn 68,0,232,L386
L386:
mov a,@1
STA _mode2_four_cycle_flag,0,0
.stabn 68,0,233,L387
L387:
.stabn 224,0,3,L388
L388:
L$182:
.stabn 68,0,234,L389
L389:
.stabn 224,0,2,L390
L390:
L$160:
.stabn 68,0,235,L391
L391:
.stabn 224,0,1,L392
L392:
L$133:
.stabn 68,0,236,L393
L393:
.stabn 224,0,0,L394
L394:
L$131:
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
.stabn 192,0,0,L404
L404:
.stabn 68,0,239,L405
L405:
.stabn 68,0,241,L406
L406:
LDA delayms_bp+0,0,0
STA delayms_bp-6,0,0
jmp @L$399
L$396:
.stabn 68,0,242,L407
L407:
mov a,@200
STA delayms_bp-5,0,0
jmp @L$403
L$400:
.stabn 68,0,242,L408
L408:
L$401:
.stabn 68,0,242,L409
L409:
DECMB delayms_bp-5,0
L$403:
.stabn 68,0,242,L410
L410:
EQNEPRIB delayms_bp-5,0
jbs STATUS, zf
EXTJMP L$400
L$397:
.stabn 68,0,241,L411
L411:
DECMB delayms_bp-6,0
L$399:
.stabn 68,0,241,L412
L412:
EQNEPRIB delayms_bp-6,0
jbs STATUS, zf
EXTJMP L$396
.stabn 68,0,243,L413
L413:
.stabn 224,0,0,L414
L414:
L$395:
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
.stabn 192,0,0,L434
L434:
.stabn 68,0,245,L435
L435:
.stabn 68,0,246,L436
L436:
jbc _P65,5
EXTJMP @L$416
.stabn 192,0,1,L437
L437:
.stabn 68,0,247,L438
L438:
.stabn 68,0,248,L439
L439:
mov a,@10
mov delayms_bp+0,a
.STACK delayms_bp,parameter,1
call _delayms
.stabn 68,0,249,L440
L440:
jbc _P65,5
EXTJMP @L$418
.stabn 192,0,2,L441
L441:
.stabn 68,0,250,L442
L442:
.stabn 68,0,251,L443
L443:
LDA _white_status,0,0
add a,@1
STA _white_status,0,0
.stabn 68,0,252,L444
L444:
ULTRIB _white_status,0x3
jbs STATUS, cf
EXTJMP L$423
.stabn 68,0,253,L445
L445:
clr _white_status
L$422:
.stabn 68,0,254,L446
L446:
L$423:
.stabn 68,0,254,L447
L447:
jbs _P65,5
EXTJMP @L$422
.stabn 68,0,255,L448
L448:
.stabn 224,0,2,L449
L449:
L$418:
.stabn 68,0,256,L450
L450:
.stabn 224,0,1,L451
L451:
L$416:
.stabn 68,0,257,L452
L452:
jbc _P64,4
EXTJMP @L$425
.stabn 192,0,1,L453
L453:
.stabn 68,0,258,L454
L454:
.stabn 68,0,259,L455
L455:
mov a,@10
mov delayms_bp+0,a
.STACK delayms_bp,parameter,1
call _delayms
.stabn 68,0,260,L456
L456:
jbc _P64,4
EXTJMP @L$427
.stabn 192,0,2,L457
L457:
.stabn 68,0,261,L458
L458:
.stabn 68,0,262,L459
L459:
mov a,@2
STA _white_status,0,0
.stabn 68,0,263,L460
L460:
LDA _mode_count,0,0
add a,@1
STA _mode_count,0,0
.stabn 68,0,264,L461
L461:
ULTRIB _mode_count,0x3
jbs STATUS, cf
EXTJMP L$432
.stabn 68,0,265,L462
L462:
clr _mode_count
L$431:
.stabn 68,0,266,L463
L463:
L$432:
.stabn 68,0,266,L464
L464:
jbs _P64,4
EXTJMP @L$431
.stabn 68,0,267,L465
L465:
.stabn 224,0,2,L466
L466:
L$427:
.stabn 68,0,268,L467
L467:
.stabn 224,0,1,L468
L468:
L$425:
.stabn 68,0,270,L469
L469:
.stabn 224,0,0,L470
L470:
L$415:
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
.stabn 192,0,0,L482
L482:
.stabn 68,0,273,L483
L483:
.stabn 68,0,275,L484
L484:
.cfile "C:\Users\daminger\OneDrive\代码\light - v101 - 25A8\light.c(275):"
wdtc
.stabn 68,0,275,L485
L485:
.stabn 68,0,276,L486
L486:
.cfile "C:\Users\daminger\OneDrive\代码\light - v101 - 25A8\light.c(276):"
disi
.stabn 68,0,276,L487
L487:
.stabn 68,0,277,L488
L488:
mov a,@0
STA _WDTCR,0,2
.stabn 68,0,278,L489
L489:
mov a,@56
STA _P6CR,0,2
.stabn 68,0,279,L490
L490:
mov a,@0
STA _P5CR,0,2
.stabn 68,0,280,L491
L491:
clr _PORT5
.stabn 68,0,281,L492
L492:
mov a,@207
STA _PHCR,0,2
.stabn 68,0,282,L493
L493:
clr _PORT6
.stabn 68,0,284,L494
L494:
.cfile "C:\Users\daminger\OneDrive\代码\light - v101 - 25A8\light.c(284):"
mov	a,@0x07
.stabn 68,0,285,L495
L495:
.cfile "C:\Users\daminger\OneDrive\代码\light - v101 - 25A8\light.c(285):"
contw
.stabn 68,0,287,L496
L496:
clr _TCC
.stabn 68,0,288,L497
L497:
clr _ISR
.stabn 68,0,289,L498
L498:
.cfile "C:\Users\daminger\OneDrive\代码\light - v101 - 25A8\light.c(289):"
eni
.stabn 68,0,289,L499
L499:
.stabn 68,0,290,L500
L500:
mov a,@3
STA _IMR,0,2
jmp @L$473
L$472:
.stabn 192,0,1,L501
L501:
.stabn 68,0,292,L502
L502:
.stabn 68,0,293,L503
L503:
call _keyscan
.stabn 68,0,295,L504
L504:
jbs _Timer_interrupt_flag,BIT
EXTJMP @L$475
.stabn 192,0,2,L505
L505:
.stabn 68,0,296,L506
L506:
.stabn 68,0,297,L507
L507:
bc _Timer_interrupt_flag,BIT
.stabn 68,0,299,L508
L508:
LDA _mode_count,0,0
mov ecx,a
EQNEPRIB ecx,0
jbc STATUS,zf
EXTJMP @L$479
EQNEPRIB ecx,1
jbc STATUS,zf
EXTJMP @L$480
EQNEPRIB ecx,2
jbc STATUS,zf
EXTJMP @L$481
jmp @L$478
.stabn 192,0,3,L509
L509:
.stabn 68,0,300,L510
L510:
L$479:
.stabn 68,0,301,L511
L511:
call _mode0
.stabn 68,0,301,L512
L512:
jmp @L$478
L$480:
.stabn 68,0,302,L513
L513:
call _mode1
.stabn 68,0,302,L514
L514:
jmp @L$478
L$481:
.stabn 68,0,303,L515
L515:
call _mode2
.stabn 68,0,303,L516
L516:
.stabn 68,0,305,L517
L517:
.stabn 68,0,306,L518
L518:
.stabn 224,0,3,L519
L519:
L$478:
.stabn 68,0,307,L520
L520:
.stabn 224,0,2,L521
L521:
L$475:
.stabn 68,0,308,L522
L522:
.stabn 224,0,1,L523
L523:
L$473:
.stabn 68,0,291,L524
L524:
jmp @L$472
.stabn 68,0,309,L525
L525:
.stabn 224,0,0,L526
L526:
L$471:
ret
.STACK main_bp,local,0
public _interrupt
public interrupt_bp
.stabs "interrupt:F15",36,0,0,_interrupt
.section ".S6",C_CODE
.SYMDEF ".S6" INT:-1
_interrupt:
.SYMDEF "_interrupt" INT:-1
.stabn 192,0,0,L530
L530:
.stabn 68,0,312,L531
L531:
.stabn 68,0,315,L532
L532:
jbs _TCIF,0
EXTJMP @L$528
.stabn 192,0,1,L533
L533:
.stabn 68,0,316,L534
L534:
.stabn 68,0,318,L535
L535:
LDA _ISR,0,0
and a,@254
STA _ISR,0,0
.stabn 68,0,319,L536
L536:
clr _TCC
.stabn 68,0,320,L537
L537:
LDA _PORT5,0,0
xor a,@1
STA _PORT5,0,0
.stabn 68,0,321,L538
L538:
bs _Timer_interrupt_flag,BIT
.stabn 68,0,322,L539
L539:
.stabn 224,0,1,L540
L540:
L$528:
.stabn 68,0,323,L541
L541:
.stabn 224,0,0,L542
L542:
L$527:
reti
.STACK interrupt_bp,local,0
public _interrupt_l
public interrupt_l_bp
.stabs "interrupt_l:F15",36,0,0,_interrupt_l
.section ".S7",C_CODE
.SYMDEF ".S7" LOWINT:0,8
_interrupt_l:
.SYMDEF "_interrupt_l" LOWINT:0,8
.stabn 192,0,0,L544
L544:
.stabn 68,0,326,L545
L545:
.stabn 68,0,327,L546
L546:
.stabn 224,0,0,L547
L547:
L$543:
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
