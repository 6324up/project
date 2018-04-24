.autoimport
EM78P173N EQU 1
_SIMPLE_RSR_ EQU 1
.include "sysdefii.inc"
ccounter equ pr1
.stabs "icc_compiled.",60,0,0,0
.stabs "C:\Users\daminger\Desktop\练习\MD-01程序资料\MD-01程序173N-SOP8\NTC3435.c",100,0,3,0
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
public _NTC_in
public NTC_in_bp
.section ".code"
.stabs "NTC_in:F15",36,0,0,_NTC_in
.section ".S0",C_CODE
.SYMDEF ".S0" 
_NTC_in:
.SYMDEF "_NTC_in" 
mov a,ecx
mov NTC_in_bp-4,a
mov a,ecx+1
mov NTC_in_bp-3,a
mov a,ecx+2
mov NTC_in_bp-2,a
mov a,ecx+3
mov NTC_in_bp-1,a
.stabn 192,0,0,L2
L2:
.stabn 68,0,25,L4
L4:
.stabn 68,0,26,L5
L5:
LDA _P6CR,0,2
or a,@1
STA _P6CR,0,2
.stabn 68,0,27,L6
L6:
.stabn 224,0,0,L7
L7:
L$1:
mov a,NTC_in_bp-4
mov ecx,a
mov a,NTC_in_bp-3
mov ecx+1,a
mov a,NTC_in_bp-2
mov ecx+2,a
mov a,NTC_in_bp-1
mov ecx+3,a
ret
.STACK NTC_in_bp,local,4
public _R10K_in
public R10K_in_bp
.stabs "R10K_in:F15",36,0,0,_R10K_in
.section ".S1",C_CODE
.SYMDEF ".S1" 
_R10K_in:
.SYMDEF "_R10K_in" 
mov a,ecx
mov R10K_in_bp-4,a
mov a,ecx+1
mov R10K_in_bp-3,a
mov a,ecx+2
mov R10K_in_bp-2,a
mov a,ecx+3
mov R10K_in_bp-1,a
.stabn 192,0,0,L9
L9:
.stabn 68,0,29,L10
L10:
.stabn 68,0,30,L11
L11:
LDA _P6CR,0,2
or a,@2
STA _P6CR,0,2
.stabn 68,0,31,L12
L12:
.stabn 224,0,0,L13
L13:
L$8:
mov a,R10K_in_bp-4
mov ecx,a
mov a,R10K_in_bp-3
mov ecx+1,a
mov a,R10K_in_bp-2
mov ecx+2,a
mov a,R10K_in_bp-1
mov ecx+3,a
ret
.STACK R10K_in_bp,local,4
public _TEST_in
public TEST_in_bp
.stabs "TEST_in:F15",36,0,0,_TEST_in
.section ".S2",C_CODE
.SYMDEF ".S2" 
_TEST_in:
.SYMDEF "_TEST_in" 
mov a,ecx
mov TEST_in_bp-4,a
mov a,ecx+1
mov TEST_in_bp-3,a
mov a,ecx+2
mov TEST_in_bp-2,a
mov a,ecx+3
mov TEST_in_bp-1,a
.stabn 192,0,0,L15
L15:
.stabn 68,0,33,L16
L16:
.stabn 68,0,34,L17
L17:
LDA _P6CR,0,2
or a,@4
STA _P6CR,0,2
.stabn 68,0,35,L18
L18:
.stabn 224,0,0,L19
L19:
L$14:
mov a,TEST_in_bp-4
mov ecx,a
mov a,TEST_in_bp-3
mov ecx+1,a
mov a,TEST_in_bp-2
mov ecx+2,a
mov a,TEST_in_bp-1
mov ecx+3,a
ret
.STACK TEST_in_bp,local,4
public _NTC_out
public NTC_out_bp
.stabs "NTC_out:F15",36,0,0,_NTC_out
.section ".S3",C_CODE
.SYMDEF ".S3" 
_NTC_out:
.SYMDEF "_NTC_out" 
mov a,ecx
mov NTC_out_bp-4,a
mov a,ecx+1
mov NTC_out_bp-3,a
mov a,ecx+2
mov NTC_out_bp-2,a
mov a,ecx+3
mov NTC_out_bp-1,a
.stabn 192,0,0,L21
L21:
.stabn 68,0,37,L22
L22:
.stabn 68,0,38,L23
L23:
LDA _P6CR,0,2
and a,@254
STA _P6CR,0,2
.stabn 68,0,39,L24
L24:
.stabn 224,0,0,L25
L25:
L$20:
mov a,NTC_out_bp-4
mov ecx,a
mov a,NTC_out_bp-3
mov ecx+1,a
mov a,NTC_out_bp-2
mov ecx+2,a
mov a,NTC_out_bp-1
mov ecx+3,a
ret
.STACK NTC_out_bp,local,4
public _R10K_out
public R10K_out_bp
.stabs "R10K_out:F15",36,0,0,_R10K_out
.section ".S4",C_CODE
.SYMDEF ".S4" 
_R10K_out:
.SYMDEF "_R10K_out" 
mov a,ecx
mov R10K_out_bp-4,a
mov a,ecx+1
mov R10K_out_bp-3,a
mov a,ecx+2
mov R10K_out_bp-2,a
mov a,ecx+3
mov R10K_out_bp-1,a
.stabn 192,0,0,L27
L27:
.stabn 68,0,41,L28
L28:
.stabn 68,0,42,L29
L29:
LDA _P6CR,0,2
and a,@253
STA _P6CR,0,2
.stabn 68,0,43,L30
L30:
.stabn 224,0,0,L31
L31:
L$26:
mov a,R10K_out_bp-4
mov ecx,a
mov a,R10K_out_bp-3
mov ecx+1,a
mov a,R10K_out_bp-2
mov ecx+2,a
mov a,R10K_out_bp-1
mov ecx+3,a
ret
.STACK R10K_out_bp,local,4
public _TEST_out
public TEST_out_bp
.stabs "TEST_out:F15",36,0,0,_TEST_out
.section ".S5",C_CODE
.SYMDEF ".S5" 
_TEST_out:
.SYMDEF "_TEST_out" 
mov a,ecx
mov TEST_out_bp-4,a
mov a,ecx+1
mov TEST_out_bp-3,a
mov a,ecx+2
mov TEST_out_bp-2,a
mov a,ecx+3
mov TEST_out_bp-1,a
.stabn 192,0,0,L33
L33:
.stabn 68,0,45,L34
L34:
.stabn 68,0,46,L35
L35:
LDA _P6CR,0,2
and a,@251
STA _P6CR,0,2
.stabn 68,0,47,L36
L36:
.stabn 224,0,0,L37
L37:
L$32:
mov a,TEST_out_bp-4
mov ecx,a
mov a,TEST_out_bp-3
mov ecx+1,a
mov a,TEST_out_bp-2
mov ecx+2,a
mov a,TEST_out_bp-1
mov ecx+3,a
ret
.STACK TEST_out_bp,local,4
.section ".rom",T_ROM
public _wenducode
.align 1
_wenducode:
.SYMDEF "_wenducode" LEN:100
db 214
db 205
db 196
db 188
db 180
db 173
db 166
db 159
db 153
db 147
db 141
db 135
db 130
db 125
db 120
db 115
db 111
db 107
db 103
db 99
db 95
db 91
db 88
db 85
db 82
db 79
db 76
db 73
db 70
db 68
db 65
db 63
db 61
db 59
db 57
db 55
db 53
db 51
db 49
db 47
db 46
db 44
db 43
db 41
db 40
db 39
db 37
db 36
db 35
db 34
db 33
db 32
db 31
db 30
db 29
db 28
db 27
db 26
db 25
db 25
db 24
db 23
db 22
db 22
db 21
db 20
db 20
db 19
db 19
db 18
db 18
db 17
db 17
db 16
db 16
db 15
db 15
db 14
db 14
db 14
db 13
db 13
db 12
db 12
db 12
db 11
db 11
db 11
db 11
db 10
db 10
db 10
db 10
db 9
db 9
db 9
db 9
db 8
db 8
db 7
.stabs ":t17=ar1;0;99;10",128,0,0,0
.stabs "wenducode:G17",32,0,0,_wenducode
public _Temperature_collection
public Temperature_collection_bp
.section ".code"
.stabs "Temperature_collection:F15",36,0,0,_Temperature_collection
.section ".S6",C_CODE
.SYMDEF ".S6" 
_Temperature_collection:
.SYMDEF "_Temperature_collection" 
mov a,ecx
mov Temperature_collection_bp-4,a
mov a,ecx+1
mov Temperature_collection_bp-3,a
mov a,ecx+2
mov Temperature_collection_bp-2,a
mov a,ecx+3
mov Temperature_collection_bp-1,a
.stabn 192,0,0,L74
L74:
.stabn 68,0,157,L75
L75:
.stabn 68,0,158,L76
L76:
call _NTC_out
.stabn 68,0,158,L77
L77:
call _R10K_out
.stabn 68,0,158,L78
L78:
call _TEST_out
.stabn 68,0,159,L79
L79:
bc _P60,0
.stabn 68,0,159,L80
L80:
bc _P61,1
.stabn 68,0,159,L81
L81:
bc _P62,2
L$39:
.stabn 68,0,161,L82
L82:
L$40:
.stabn 68,0,161,L83
L83:
jbc _P62,2
EXTJMP @L$39
.stabn 68,0,162,L84
L84:
clr _CAP_charge_time+1
clr _CAP_charge_time
L$42:
.stabn 192,0,1,L85
L85:
.stabn 68,0,164,L86
L86:
.stabn 68,0,165,L87
L87:
.cfile "C:\Users\daminger\Desktop\练习\MD-01程序资料\MD-01程序173N-SOP8\NTC3435.c(165):"
NOP
.stabn 68,0,165,L88
L88:
.stabn 68,0,165,L89
L89:
.cfile "C:\Users\daminger\Desktop\练习\MD-01程序资料\MD-01程序173N-SOP8\NTC3435.c(165):"
NOP
.stabn 68,0,165,L90
L90:
.stabn 68,0,166,L91
L91:
INCMW _CAP_charge_time,0
.stabn 68,0,167,L92
L92:
.stabn 224,0,1,L93
L93:
L$43:
.stabn 68,0,168,L94
L94:
ULTRIW _CAP_charge_time,0x100
jbs STATUS, cf
EXTJMP L$42
.stabn 68,0,169,L95
L95:
clr _CAP_charge_time+1
clr _CAP_charge_time
.stabn 68,0,171,L96
L96:
LDA _Temperature_collection_status,0,0
mov ecx,a
EQNEPRIB ecx,0
jbc STATUS,zf
EXTJMP @L$47
EQNEPRIB ecx,1
jbc STATUS,zf
EXTJMP @L$54
EQNEPRIB ecx,2
jbc STATUS,zf
EXTJMP @L$63
jmp @L$45
.stabn 192,0,1,L97
L97:
.stabn 68,0,172,L98
L98:
L$47:
.stabn 68,0,174,L99
L99:
LDA _Temperature_collection_times,0,0
add a,@1
STA _Temperature_collection_times,0,0
.stabn 68,0,175,L100
L100:
call _R10K_in
.stabn 68,0,175,L101
L101:
call _TEST_in
.stabn 68,0,176,L102
L102:
clr _CAP_charge_time+1
clr _CAP_charge_time
.stabn 68,0,177,L103
L103:
bs _P60,0
L$48:
.stabn 192,0,2,L104
L104:
.stabn 68,0,179,L105
L105:
.stabn 68,0,180,L106
L106:
INCMW _CAP_charge_time,0
.stabn 68,0,181,L107
L107:
.stabn 224,0,2,L108
L108:
L$49:
.stabn 68,0,182,L109
L109:
jbc _P62,2
EXTJMP @L$51
ULTRIW _CAP_charge_time,0x200
jbs STATUS, cf
EXTJMP L$48
L$51:
.stabn 68,0,183,L110
L110:
ADDMRW _NTC_CAP_charge_time,_CAP_charge_time,0
.stabn 68,0,184,L111
L111:
ULTRIB _Temperature_collection_times,0x10
jbs STATUS, cf
EXTJMP L$46
.stabn 192,0,2,L112
L112:
.stabn 68,0,185,L113
L113:
.stabn 68,0,186,L114
L114:
clr _Temperature_collection_times
.stabn 68,0,187,L115
L115:
mov a,@1
STA _Temperature_collection_status,0,0
.stabn 68,0,188,L116
L116:
RSHUMIW _NTC_CAP_charge_time,4,0
.stabn 68,0,189,L117
L117:
.stabn 224,0,2,L118
L118:
.stabn 68,0,190,L119
L119:
jmp @L$46
L$54:
.stabn 68,0,192,L120
L120:
LDA _Temperature_collection_times,0,0
add a,@1
STA _Temperature_collection_times,0,0
.stabn 68,0,193,L121
L121:
call _NTC_in
.stabn 68,0,193,L122
L122:
call _TEST_in
.stabn 68,0,194,L123
L123:
clr _CAP_charge_time+1
clr _CAP_charge_time
.stabn 68,0,195,L124
L124:
bs _P61,1
L$55:
.stabn 192,0,2,L125
L125:
.stabn 68,0,197,L126
L126:
.stabn 68,0,198,L127
L127:
INCMW _CAP_charge_time,0
.stabn 68,0,199,L128
L128:
.stabn 224,0,2,L129
L129:
L$56:
.stabn 68,0,200,L130
L130:
jbc _P62,2
EXTJMP @L$58
ULTRIW _CAP_charge_time,0x200
jbs STATUS, cf
EXTJMP L$55
L$58:
.stabn 68,0,201,L131
L131:
ULTRIW _CAP_charge_time,0x200
jbs STATUS, cf
EXTJMP L$59
.stabn 192,0,2,L132
L132:
.stabn 68,0,202,L133
L133:
.stabn 68,0,203,L134
L134:
clr _CAP_charge_time+1
clr _CAP_charge_time
.stabn 68,0,204,L135
L135:
.stabn 224,0,2,L136
L136:
L$59:
.stabn 68,0,205,L137
L137:
ADDMRW _R10K_CAP_charge_time,_CAP_charge_time,0
.stabn 68,0,206,L138
L138:
ULTRIB _Temperature_collection_times,0x10
jbs STATUS, cf
EXTJMP L$46
.stabn 192,0,2,L139
L139:
.stabn 68,0,207,L140
L140:
.stabn 68,0,208,L141
L141:
clr _Temperature_collection_times
.stabn 68,0,209,L142
L142:
mov a,@2
STA _Temperature_collection_status,0,0
.stabn 68,0,210,L143
L143:
RSHUMIW _R10K_CAP_charge_time,4,0
.stabn 68,0,211,L144
L144:
.stabn 224,0,2,L145
L145:
.stabn 68,0,212,L146
L146:
jmp @L$46
L$63:
.stabn 68,0,216,L147
L147:
mov a,@.b0.10
mov ecx,a
mov a,@.b1.10
mov ecx+1,a
LDA _NTC_CAP_charge_time,0,0
mov eax,a
LDA _NTC_CAP_charge_time,1,0
mov eax+1,a
mov a,@ecx
mov pr0,a
mov a,@eax
mov pr1,a
call umulrrw
mov a,ecx
STA _NTC_CAP_charge_time,0,0
mov a,ecx+1
STA _NTC_CAP_charge_time,1,0
.stabn 68,0,217,L148
L148:
LSHMIW _NTC_CAP_charge_time,3,0
.stabn 68,0,218,L149
L149:
LDA _NTC_CAP_charge_time,0,0
mov ecx,a
LDA _NTC_CAP_charge_time,1,0
mov ecx+1,a
LDA _R10K_CAP_charge_time,0,0
mov eax,a
LDA _R10K_CAP_charge_time,1,0
mov eax+1,a
mov a,@ecx
mov pr0,a
mov a,@eax
mov pr1,a
call udivrrw
mov a,ecx
STA _NTC_CAP_charge_time,0,0
mov a,ecx+1
STA _NTC_CAP_charge_time,1,0
.stabn 68,0,222,L150
L150:
LDA _Temperature_collection_count,0,0
add a,@1
STA _Temperature_collection_count,0,0
.stabn 68,0,223,L151
L151:
UGTRIB _Temperature_collection_count,0x4
jbc STATUS, cf
EXTJMP L$64
.stabn 192,0,2,L152
L152:
.stabn 68,0,224,L153
L153:
.stabn 68,0,225,L154
L154:
clr _Temperature_collection_temp
jmp @L$69
L$66:
.stabn 192,0,3,L155
L155:
.stabn 68,0,226,L156
L156:
.stabn 68,0,227,L157
L157:
LDA _Temperature_collection_temp,0,0
mov ecx,a
LDA _NTC_CAP_charge_time,0,0
mov eax,a
LDA _NTC_CAP_charge_time,1,0
mov eax+1,a
mov a,ecx
call _wenducode
mov ecx,a
clr ecx+1
UGTRRW eax,ecx
jbc STATUS,cf
EXTJMP @L$70
.stabn 192,0,4,L158
L158:
.stabn 68,0,228,L159
L159:
.stabn 68,0,229,L160
L160:
LDA _Temperature_collection_temp,0,0
STA _Temperature_collection_data,0,0
.stabn 68,0,230,L161
L161:
jmp @L$68
.stabn 68,0,231,L162
L162:
.stabn 224,0,4,L163
L163:
L$70:
.stabn 68,0,232,L164
L164:
.stabn 224,0,3,L165
L165:
L$67:
.stabn 68,0,225,L166
L166:
LDA _Temperature_collection_temp,0,0
add a,@1
STA _Temperature_collection_temp,0,0
L$69:
.stabn 68,0,225,L167
L167:
ULTRIB _Temperature_collection_temp,0x64
jbs STATUS, cf
EXTJMP L$66
L$68:
.stabn 68,0,233,L168
L168:
EQNEPRIB _Temperature_collection_temp,100
jbs STATUS,zf
EXTJMP @L$72
.stabn 192,0,3,L169
L169:
.stabn 68,0,234,L170
L170:
.stabn 68,0,235,L171
L171:
mov a,@99
STA _Temperature_collection_data,0,0
.stabn 68,0,236,L172
L172:
.stabn 224,0,3,L173
L173:
L$72:
.stabn 68,0,237,L174
L174:
clr _Temperature_collection_count
.stabn 68,0,238,L175
L175:
bs _Display_AIP1620_flag,BIT
.stabn 68,0,239,L176
L176:
.stabn 224,0,2,L177
L177:
L$64:
.stabn 68,0,246,L178
L178:
clr _NTC_CAP_charge_time+1
clr _NTC_CAP_charge_time
.stabn 68,0,247,L179
L179:
clr _R10K_CAP_charge_time+1
clr _R10K_CAP_charge_time
.stabn 68,0,248,L180
L180:
clr _Temperature_collection_times
.stabn 68,0,249,L181
L181:
clr _Temperature_collection_status
.stabn 68,0,250,L182
L182:
jmp @L$46
L$45:
.stabn 68,0,253,L183
L183:
clr _Temperature_collection_status
.stabn 68,0,254,L184
L184:
.stabn 68,0,255,L185
L185:
.stabn 224,0,1,L186
L186:
L$46:
.stabn 68,0,256,L187
L187:
.stabn 224,0,0,L188
L188:
L$38:
mov a,Temperature_collection_bp-4
mov ecx,a
mov a,Temperature_collection_bp-3
mov ecx+1,a
mov a,Temperature_collection_bp-2
mov ecx+2,a
mov a,Temperature_collection_bp-1
mov ecx+3,a
ret
.STACK Temperature_collection_bp,local,4
.section ".bss"
public _Temperature_collection_status
.align 1
_Temperature_collection_status:
.SYMDEF "_Temperature_collection_status" LEN:1
ds 1
.stabs "Temperature_collection_status:G10",32,0,0,_Temperature_collection_status
public _Temperature_collection_times
.align 1
_Temperature_collection_times:
.SYMDEF "_Temperature_collection_times" LEN:1
ds 1
.stabs "Temperature_collection_times:G10",32,0,0,_Temperature_collection_times
public _Temperature_collection_count
.align 1
_Temperature_collection_count:
.SYMDEF "_Temperature_collection_count" LEN:1
ds 1
.stabs "Temperature_collection_count:G10",32,0,0,_Temperature_collection_count
public _Temperature_collection_temp
.align 1
_Temperature_collection_temp:
.SYMDEF "_Temperature_collection_temp" LEN:1
ds 1
.stabs "Temperature_collection_temp:G10",32,0,0,_Temperature_collection_temp
public _NTC_CAP_charge_time_temp
.align 1
_NTC_CAP_charge_time_temp:
.SYMDEF "_NTC_CAP_charge_time_temp" LEN:2
ds 2
.stabs "NTC_CAP_charge_time_temp:G13",32,0,0,_NTC_CAP_charge_time_temp
public _R10K_CAP_charge_time
.align 1
_R10K_CAP_charge_time:
.SYMDEF "_R10K_CAP_charge_time" LEN:2
ds 2
.stabs "R10K_CAP_charge_time:G13",32,0,0,_R10K_CAP_charge_time
public _NTC_CAP_charge_time
.align 1
_NTC_CAP_charge_time:
.SYMDEF "_NTC_CAP_charge_time" LEN:2
ds 2
.stabs "NTC_CAP_charge_time:G13",32,0,0,_NTC_CAP_charge_time
public _CAP_charge_time
.align 1
_CAP_charge_time:
.SYMDEF "_CAP_charge_time" LEN:2
ds 2
.stabs "CAP_charge_time:G13",32,0,0,_CAP_charge_time
public _Temperature_collection_data
.align 1
_Temperature_collection_data:
.SYMDEF "_Temperature_collection_data" LEN:1
ds 1
.stabs "Temperature_collection_data:G10",32,0,0,_Temperature_collection_data
extrn _Display_AIP1620_flag
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
