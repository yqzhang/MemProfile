	.file	"q_matrix.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 q_matrix.c -mtune=generic -march=x86-64 -g -fverbose-asm
# -fno-strict-aliasing -fstack-protector -Wformat -Wformat-security
# options enabled:  -faggressive-loop-optimizations
# -fasynchronous-unwind-tables -fauto-inc-dec -fbranch-count-reg -fcommon
# -fdelete-null-pointer-checks -fdwarf2-cfi-asm -fearly-inlining
# -feliminate-unused-debug-types -ffunction-cse -fgcse-lm -fgnu-runtime
# -fident -finline-atomics -fira-hoist-pressure -fira-share-save-slots
# -fira-share-spill-slots -fivopts -fkeep-static-consts
# -fleading-underscore -fmath-errno -fmerge-debug-strings
# -fmove-loop-invariants -fpeephole -fprefetch-loop-arrays
# -freg-struct-return -fsched-critical-path-heuristic
# -fsched-dep-count-heuristic -fsched-group-heuristic -fsched-interblock
# -fsched-last-insn-heuristic -fsched-rank-heuristic -fsched-spec
# -fsched-spec-insn-heuristic -fsched-stalled-insns-dep -fshow-column
# -fsigned-zeros -fsplit-ivs-in-unroller -fstack-protector
# -fstrict-volatile-bitfields -fsync-libcalls -ftrapping-math
# -ftree-coalesce-vars -ftree-cselim -ftree-forwprop -ftree-loop-if-convert
# -ftree-loop-im -ftree-loop-ivcanon -ftree-loop-optimize
# -ftree-parallelize-loops= -ftree-phiprop -ftree-pta -ftree-reassoc
# -ftree-scev-cprop -ftree-slp-vectorize -ftree-vect-loop-version
# -funit-at-a-time -funwind-tables -fverbose-asm -fzero-initialized-in-bss
# -m128bit-long-double -m64 -m80387 -maccumulate-outgoing-args
# -malign-stringops -mfancy-math-387 -mfp-ret-in-387 -mfxsr -mglibc
# -mieee-fp -mlong-double-80 -mmmx -mno-sse4 -mpush-args -mred-zone -msse
# -msse2 -mtls-direct-seg-refs

	.text
.Ltext0:
	.globl	matrix4x4_check
	.bss
	.align 16
	.type	matrix4x4_check, @object
	.size	matrix4x4_check, 24
matrix4x4_check:
	.zero	24
	.globl	matrix8x8_check
	.align 4
	.type	matrix8x8_check, @object
	.size	matrix8x8_check, 8
matrix8x8_check:
	.zero	8
	.section	.rodata
	.align 32
	.type	MatrixType4x4, @object
	.size	MatrixType4x4, 120
MatrixType4x4:
	.string	"INTRA4X4_LUMA"
	.zero	6
	.string	"INTRA4X4_CHROMAU"
	.zero	3
	.string	"INTRA4X4_CHROMAV"
	.zero	3
	.string	"INTER4X4_LUMA"
	.zero	6
	.string	"INTER4X4_CHROMAU"
	.zero	3
	.string	"INTER4X4_CHROMAV"
	.zero	3
	.align 32
	.type	MatrixType8x8, @object
	.size	MatrixType8x8, 40
MatrixType8x8:
	.string	"INTRA8X8_LUMA"
	.zero	6
	.string	"INTER8X8_LUMA"
	.zero	6
	.comm	LevelScale4x4Luma_Intra,384,32
	.comm	LevelScale4x4Chroma_Intra,768,32
	.comm	LevelScale4x4Luma_Inter,384,32
	.comm	LevelScale4x4Chroma_Inter,768,32
	.comm	LevelScale8x8Luma_Intra,1536,32
	.comm	LevelScale8x8Luma_Inter,1536,32
	.comm	InvLevelScale4x4Luma_Intra,384,32
	.comm	InvLevelScale4x4Chroma_Intra,768,32
	.comm	InvLevelScale4x4Luma_Inter,384,32
	.comm	InvLevelScale4x4Chroma_Inter,768,32
	.comm	InvLevelScale8x8Luma_Intra,1536,32
	.comm	InvLevelScale8x8Luma_Inter,1536,32
	.comm	ScalingList4x4input,192,32
	.comm	ScalingList8x8input,256,32
	.comm	ScalingList4x4,192,32
	.comm	ScalingList8x8,256,32
	.comm	UseDefaultScalingMatrix4x4Flag,12,2
	.comm	UseDefaultScalingMatrix8x8Flag,4,2
	.align 32
	.type	Quant_intra_default, @object
	.size	Quant_intra_default, 32
Quant_intra_default:
	.value	6
	.value	13
	.value	20
	.value	28
	.value	13
	.value	20
	.value	28
	.value	32
	.value	20
	.value	28
	.value	32
	.value	37
	.value	28
	.value	32
	.value	37
	.value	42
	.align 32
	.type	Quant_inter_default, @object
	.size	Quant_inter_default, 32
Quant_inter_default:
	.value	10
	.value	14
	.value	20
	.value	24
	.value	14
	.value	20
	.value	24
	.value	27
	.value	20
	.value	24
	.value	27
	.value	30
	.value	24
	.value	27
	.value	30
	.value	34
	.align 32
	.type	Quant8_intra_default, @object
	.size	Quant8_intra_default, 128
Quant8_intra_default:
	.value	6
	.value	10
	.value	13
	.value	16
	.value	18
	.value	23
	.value	25
	.value	27
	.value	10
	.value	11
	.value	16
	.value	18
	.value	23
	.value	25
	.value	27
	.value	29
	.value	13
	.value	16
	.value	18
	.value	23
	.value	25
	.value	27
	.value	29
	.value	31
	.value	16
	.value	18
	.value	23
	.value	25
	.value	27
	.value	29
	.value	31
	.value	33
	.value	18
	.value	23
	.value	25
	.value	27
	.value	29
	.value	31
	.value	33
	.value	36
	.value	23
	.value	25
	.value	27
	.value	29
	.value	31
	.value	33
	.value	36
	.value	38
	.value	25
	.value	27
	.value	29
	.value	31
	.value	33
	.value	36
	.value	38
	.value	40
	.value	27
	.value	29
	.value	31
	.value	33
	.value	36
	.value	38
	.value	40
	.value	42
	.align 32
	.type	Quant8_inter_default, @object
	.size	Quant8_inter_default, 128
Quant8_inter_default:
	.value	9
	.value	13
	.value	15
	.value	17
	.value	19
	.value	21
	.value	22
	.value	24
	.value	13
	.value	13
	.value	17
	.value	19
	.value	21
	.value	22
	.value	24
	.value	25
	.value	15
	.value	17
	.value	19
	.value	21
	.value	22
	.value	24
	.value	25
	.value	27
	.value	17
	.value	19
	.value	21
	.value	22
	.value	24
	.value	25
	.value	27
	.value	28
	.value	19
	.value	21
	.value	22
	.value	24
	.value	25
	.value	27
	.value	28
	.value	30
	.value	21
	.value	22
	.value	24
	.value	25
	.value	27
	.value	28
	.value	30
	.value	32
	.value	22
	.value	24
	.value	25
	.value	27
	.value	28
	.value	30
	.value	32
	.value	33
	.value	24
	.value	25
	.value	27
	.value	28
	.value	30
	.value	32
	.value	33
	.value	35
	.text
	.globl	CheckParameterName
	.type	CheckParameterName, @function
CheckParameterName:
.LFB2:
	.file 1 "q_matrix.c"
	.loc 1 127 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# s, s
	movq	%rsi, -32(%rbp)	# type, type
	.loc 1 128 0
	movl	$0, -4(%rbp)	#, i
	.loc 1 130 0
	movq	-32(%rbp), %rax	# type, tmp65
	movl	$0, (%rax)	#, *type_5(D)
	.loc 1 131 0
	jmp	.L2	#
.L5:
	.loc 1 133 0
	movl	-4(%rbp), %eax	# i, tmp67
	movslq	%eax, %rdx	# tmp67, tmp66
	movq	%rdx, %rax	# tmp66, tmp68
	salq	$2, %rax	#, tmp68
	addq	%rdx, %rax	# tmp66, tmp68
	salq	$2, %rax	#, tmp69
	leaq	MatrixType4x4(%rax), %rdx	#, D.4823
	movq	-24(%rbp), %rax	# s, tmp70
	movq	%rax, %rsi	# tmp70,
	movq	%rdx, %rdi	# D.4823,
	call	strcmp	#
	testl	%eax, %eax	# D.4822
	jne	.L3	#,
	.loc 1 134 0
	movl	-4(%rbp), %eax	# i, D.4822
	jmp	.L4	#
.L3:
	.loc 1 136 0
	addl	$1, -4(%rbp)	#, i
.L2:
	.loc 1 131 0 discriminator 1
	cmpl	$5, -4(%rbp)	#, i
	jle	.L5	#,
	.loc 1 139 0
	movl	$0, -4(%rbp)	#, i
	.loc 1 140 0
	movq	-32(%rbp), %rax	# type, tmp71
	movl	$1, (%rax)	#, *type_5(D)
	.loc 1 141 0
	jmp	.L6	#
.L8:
	.loc 1 143 0
	movl	-4(%rbp), %eax	# i, tmp73
	movslq	%eax, %rdx	# tmp73, tmp72
	movq	%rdx, %rax	# tmp72, tmp74
	salq	$2, %rax	#, tmp74
	addq	%rdx, %rax	# tmp72, tmp74
	salq	$2, %rax	#, tmp75
	leaq	MatrixType8x8(%rax), %rdx	#, D.4823
	movq	-24(%rbp), %rax	# s, tmp76
	movq	%rax, %rsi	# tmp76,
	movq	%rdx, %rdi	# D.4823,
	call	strcmp	#
	testl	%eax, %eax	# D.4822
	jne	.L7	#,
	.loc 1 144 0
	movl	-4(%rbp), %eax	# i, D.4822
	jmp	.L4	#
.L7:
	.loc 1 146 0
	addl	$1, -4(%rbp)	#, i
.L6:
	.loc 1 141 0 discriminator 1
	cmpl	$1, -4(%rbp)	#, i
	jle	.L8	#,
	.loc 1 149 0
	movl	$-1, %eax	#, D.4822
.L4:
	.loc 1 150 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	CheckParameterName, .-CheckParameterName
	.section	.rodata
	.align 8
.LC0:
	.string	" Parsing error in config file: Parameter Name '%s' not recognized."
.LC1:
	.string	"="
.LC2:
	.string	"%d"
	.align 8
.LC3:
	.string	" Parsing error: Expected numerical value for Parameter of %s, found '%s'."
	.text
	.globl	ParseMatrix
	.type	ParseMatrix, @function
ParseMatrix:
.LFB3:
	.loc 1 163 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$8080, %rsp	#,
	movq	%rdi, -8072(%rbp)	# buf, buf
	movl	%esi, -8076(%rbp)	# bufsize, bufsize
	.loc 1 166 0
	movl	$0, -8056(%rbp)	#, item
	.loc 1 167 0
	movl	$0, -8052(%rbp)	#, InString
	movl	$0, -8048(%rbp)	#, InItem
	.loc 1 168 0
	movq	-8072(%rbp), %rax	# buf, tmp89
	movq	%rax, -8024(%rbp)	# tmp89, p
	.loc 1 169 0
	movl	-8076(%rbp), %eax	# bufsize, tmp90
	movslq	%eax, %rdx	# tmp90, D.4824
	movq	-8072(%rbp), %rax	# buf, tmp94
	addq	%rdx, %rax	# D.4824, tmp93
	movq	%rax, -8008(%rbp)	# tmp93, bufend
	.loc 1 174 0
	jmp	.L10	#
.L27:
	.loc 1 176 0
	movq	-8024(%rbp), %rax	# p, tmp95
	movzbl	(%rax), %eax	# *p_11, D.4825
	movsbl	%al, %eax	# D.4825, D.4826
	subl	$9, %eax	#, tmp96
	cmpl	$35, %eax	#, tmp96
	ja	.L11	#,
	movl	%eax, %eax	# tmp96, tmp97
	movq	.L13(,%rax,8), %rax	#, tmp98
	jmp	*%rax	# tmp98
	.section	.rodata
	.align 8
	.align 4
.L13:
	.quad	.L12
	.quad	.L14
	.quad	.L11
	.quad	.L11
	.quad	.L15
	.quad	.L11
	.quad	.L11
	.quad	.L11
	.quad	.L11
	.quad	.L11
	.quad	.L11
	.quad	.L11
	.quad	.L11
	.quad	.L11
	.quad	.L11
	.quad	.L11
	.quad	.L11
	.quad	.L11
	.quad	.L11
	.quad	.L11
	.quad	.L11
	.quad	.L11
	.quad	.L11
	.quad	.L12
	.quad	.L11
	.quad	.L16
	.quad	.L17
	.quad	.L11
	.quad	.L11
	.quad	.L11
	.quad	.L11
	.quad	.L11
	.quad	.L11
	.quad	.L11
	.quad	.L11
	.quad	.L18
	.text
.L15:
	.loc 1 179 0
	addq	$1, -8024(%rbp)	#, p
	.loc 1 180 0
	jmp	.L10	#
.L17:
	.loc 1 182 0
	movq	-8024(%rbp), %rax	# p, tmp99
	movb	$0, (%rax)	#, *p_11
	.loc 1 183 0
	jmp	.L19	#
.L21:
	.loc 1 184 0
	addq	$1, -8024(%rbp)	#, p
.L19:
	.loc 1 183 0 discriminator 1
	movq	-8024(%rbp), %rax	# p, tmp100
	movzbl	(%rax), %eax	# *p_9, D.4825
	cmpb	$10, %al	#, D.4825
	je	.L20	#,
	.loc 1 183 0 is_stmt 0 discriminator 2
	movq	-8024(%rbp), %rax	# p, tmp101
	cmpq	-8008(%rbp), %rax	# bufend, tmp101
	jb	.L21	#,
.L20:
	.loc 1 185 0 is_stmt 1
	movl	$0, -8052(%rbp)	#, InString
	.loc 1 186 0
	movl	$0, -8048(%rbp)	#, InItem
	.loc 1 187 0
	jmp	.L10	#
.L14:
	.loc 1 189 0
	movl	$0, -8048(%rbp)	#, InItem
	.loc 1 190 0
	movl	$0, -8052(%rbp)	#, InString
	.loc 1 191 0
	movq	-8024(%rbp), %rax	# p, p.0
	leaq	1(%rax), %rdx	#, tmp102
	movq	%rdx, -8024(%rbp)	# tmp102, p
	movb	$0, (%rax)	#, *p.0_33
	.loc 1 192 0
	jmp	.L10	#
.L12:
	.loc 1 195 0
	cmpl	$0, -8052(%rbp)	#, InString
	je	.L22	#,
	.loc 1 196 0
	addq	$1, -8024(%rbp)	#, p
	.loc 1 202 0
	jmp	.L10	#
.L22:
	.loc 1 199 0
	movq	-8024(%rbp), %rax	# p, p.1
	leaq	1(%rax), %rdx	#, tmp103
	movq	%rdx, -8024(%rbp)	# tmp103, p
	movb	$0, (%rax)	#, *p.1_36
	.loc 1 200 0
	movl	$0, -8048(%rbp)	#, InItem
	.loc 1 202 0
	jmp	.L10	#
.L16:
	.loc 1 205 0
	movq	-8024(%rbp), %rax	# p, p.2
	leaq	1(%rax), %rdx	#, tmp104
	movq	%rdx, -8024(%rbp)	# tmp104, p
	movb	$0, (%rax)	#, *p.2_39
	.loc 1 206 0
	cmpl	$0, -8052(%rbp)	#, InString
	jne	.L24	#,
	.loc 1 208 0
	movl	-8056(%rbp), %eax	# item, item.3
	leal	1(%rax), %edx	#, tmp105
	movl	%edx, -8056(%rbp)	# tmp105, item
	cltq
	movq	-8024(%rbp), %rdx	# p, tmp107
	movq	%rdx, -8000(%rbp,%rax,8)	# tmp107, items
	.loc 1 209 0
	notl	-8048(%rbp)	# InItem
	jmp	.L25	#
.L24:
	.loc 1 212 0
	movl	$0, -8048(%rbp)	#, InItem
.L25:
	.loc 1 213 0
	notl	-8052(%rbp)	# InString
	.loc 1 214 0
	jmp	.L10	#
.L18:
	.loc 1 217 0
	addq	$1, -8024(%rbp)	#, p
	.loc 1 218 0
	movl	$0, -8048(%rbp)	#, InItem
	.loc 1 219 0
	jmp	.L10	#
.L11:
	.loc 1 222 0
	cmpl	$0, -8048(%rbp)	#, InItem
	jne	.L26	#,
	.loc 1 224 0
	movl	-8056(%rbp), %eax	# item, item.4
	leal	1(%rax), %edx	#, tmp108
	movl	%edx, -8056(%rbp)	# tmp108, item
	cltq
	movq	-8024(%rbp), %rdx	# p, tmp110
	movq	%rdx, -8000(%rbp,%rax,8)	# tmp110, items
	.loc 1 225 0
	notl	-8048(%rbp)	# InItem
.L26:
	.loc 1 227 0
	addq	$1, -8024(%rbp)	#, p
.L10:
	.loc 1 174 0 discriminator 1
	movq	-8024(%rbp), %rax	# p, tmp111
	cmpq	-8008(%rbp), %rax	# bufend, tmp111
	jb	.L27	#,
	.loc 1 231 0
	subl	$1, -8056(%rbp)	#, item
	.loc 1 233 0
	movl	$0, -8044(%rbp)	#, i
	jmp	.L28	#
.L36:
	.loc 1 235 0
	movl	$0, -8032(%rbp)	#, cnt
	.loc 1 236 0
	movl	-8032(%rbp), %eax	# cnt, tmp112
	movl	-8044(%rbp), %edx	# i, tmp113
	addl	%edx, %eax	# tmp113, D.4826
	cltq
	movq	-8000(%rbp,%rax,8), %rax	# items, D.4827
	leaq	-8060(%rbp), %rdx	#, tmp115
	movq	%rdx, %rsi	# tmp115,
	movq	%rax, %rdi	# D.4827,
	call	CheckParameterName	#
	movl	%eax, -8028(%rbp)	# tmp116, MapIdx
	cmpl	$0, -8028(%rbp)	#, MapIdx
	jns	.L29	#,
	.loc 1 238 0
	movl	-8032(%rbp), %eax	# cnt, tmp117
	movl	-8044(%rbp), %edx	# i, tmp118
	addl	%edx, %eax	# tmp118, D.4826
	cltq
	movq	-8000(%rbp,%rax,8), %rax	# items, D.4827
	movq	%rax, %rcx	# D.4827,
	movl	$.LC0, %edx	#,
	movl	$300, %esi	#,
	movl	$errortext, %edi	#,
	movl	$0, %eax	#,
	call	snprintf	#
	.loc 1 239 0
	movl	$300, %esi	#,
	movl	$errortext, %edi	#,
	call	error	#
.L29:
	.loc 1 241 0
	addl	$1, -8032(%rbp)	#, cnt
	.loc 1 242 0
	movl	-8032(%rbp), %eax	# cnt, tmp120
	movl	-8044(%rbp), %edx	# i, tmp121
	addl	%edx, %eax	# tmp121, D.4826
	cltq
	movq	-8000(%rbp,%rax,8), %rax	# items, D.4827
	movq	%rax, %rsi	# D.4827,
	movl	$.LC1, %edi	#,
	call	strcmp	#
	testl	%eax, %eax	# D.4826
	je	.L30	#,
	.loc 1 244 0
	movabsq	$7453010377905885216, %rax	#, tmp153
	movq	%rax, errortext(%rip)	# tmp153, MEM[(void *)&errortext]
	movabsq	$7575180396224210208, %rax	#, tmp154
	movq	%rax, errortext+8(%rip)	# tmp154, MEM[(void *)&errortext]
	movabsq	$7451599682962399342, %rax	#, tmp155
	movq	%rax, errortext+16(%rip)	# tmp155, MEM[(void *)&errortext]
	movabsq	$2819317574018885152, %rax	#, tmp156
	movq	%rax, errortext+24(%rip)	# tmp156, MEM[(void *)&errortext]
	movabsq	$7162254444797634365, %rax	#, tmp157
	movq	%rax, errortext+32(%rip)	# tmp157, MEM[(void *)&errortext]
	movabsq	$8367814968646854004, %rax	#, tmp158
	movq	%rax, errortext+40(%rip)	# tmp158, MEM[(void *)&errortext]
	movabsq	$7957688353961305448, %rax	#, tmp159
	movq	%rax, errortext+48(%rip)	# tmp159, MEM[(void *)&errortext]
	movabsq	$2336916768757653604, %rax	#, tmp160
	movq	%rax, errortext+56(%rip)	# tmp160, MEM[(void *)&errortext]
	movabsq	$2335225676751203945, %rax	#, tmp161
	movq	%rax, errortext+64(%rip)	# tmp161, MEM[(void *)&errortext]
	movl	$1835365481, errortext+72(%rip)	#, MEM[(void *)&errortext]
	movw	$46, errortext+76(%rip)	#, MEM[(void *)&errortext]
	.loc 1 245 0
	movl	$300, %esi	#,
	movl	$errortext, %edi	#,
	call	error	#
.L30:
	.loc 1 247 0
	addl	$1, -8032(%rbp)	#, cnt
	.loc 1 249 0
	movl	-8060(%rbp), %eax	# type, type.5
	testl	%eax, %eax	# type.5
	jne	.L31	#,
	.loc 1 251 0
	movl	$16, -8036(%rbp)	#, range
	.loc 1 252 0
	movl	-8028(%rbp), %eax	# MapIdx, tmp125
	cltq
	salq	$5, %rax	#, tmp126
	addq	$ScalingList4x4input, %rax	#, tmp127
	movq	%rax, -8016(%rbp)	# tmp127, ScalingList
	.loc 1 253 0
	movl	-8028(%rbp), %eax	# MapIdx, tmp129
	cltq
	movl	$1, matrix4x4_check(,%rax,4)	#, matrix4x4_check
	jmp	.L32	#
.L31:
	.loc 1 257 0
	movl	$64, -8036(%rbp)	#, range
	.loc 1 258 0
	movl	-8028(%rbp), %eax	# MapIdx, tmp131
	cltq
	salq	$7, %rax	#, tmp132
	addq	$ScalingList8x8input, %rax	#, tmp133
	movq	%rax, -8016(%rbp)	# tmp133, ScalingList
	.loc 1 259 0
	movl	-8028(%rbp), %eax	# MapIdx, tmp135
	cltq
	movl	$1, matrix8x8_check(,%rax,4)	#, matrix8x8_check
.L32:
	.loc 1 262 0
	movl	$0, -8040(%rbp)	#, j
	jmp	.L33	#
.L35:
	.loc 1 264 0
	movl	-8032(%rbp), %eax	# cnt, tmp136
	movl	-8044(%rbp), %edx	# i, tmp137
	addl	%eax, %edx	# tmp136, D.4826
	movl	-8040(%rbp), %eax	# j, tmp138
	addl	%edx, %eax	# D.4826, D.4826
	cltq
	movq	-8000(%rbp,%rax,8), %rax	# items, D.4827
	leaq	-8064(%rbp), %rdx	#, tmp140
	movl	$.LC2, %esi	#,
	movq	%rax, %rdi	# D.4827,
	movl	$0, %eax	#,
	call	__isoc99_sscanf	#
	cmpl	$1, %eax	#, D.4826
	je	.L34	#,
	.loc 1 266 0
	movl	-8032(%rbp), %eax	# cnt, tmp141
	movl	-8044(%rbp), %edx	# i, tmp142
	addl	%eax, %edx	# tmp141, D.4826
	movl	-8040(%rbp), %eax	# j, tmp143
	addl	%edx, %eax	# D.4826, D.4826
	cltq
	movq	-8000(%rbp,%rax,8), %rdx	# items, D.4827
	movl	-8044(%rbp), %eax	# i, tmp146
	cltq
	movq	-8000(%rbp,%rax,8), %rax	# items, D.4827
	movq	%rdx, %r8	# D.4827,
	movq	%rax, %rcx	# D.4827,
	movl	$.LC3, %edx	#,
	movl	$300, %esi	#,
	movl	$errortext, %edi	#,
	movl	$0, %eax	#,
	call	snprintf	#
	.loc 1 267 0
	movl	$300, %esi	#,
	movl	$errortext, %edi	#,
	call	error	#
.L34:
	.loc 1 270 0
	movl	-8040(%rbp), %eax	# j, tmp147
	cltq
	leaq	(%rax,%rax), %rdx	#, D.4828
	movq	-8016(%rbp), %rax	# ScalingList, tmp148
	addq	%rax, %rdx	# tmp148, D.4829
	movl	-8064(%rbp), %eax	# IntContent, IntContent.6
	movw	%ax, (%rdx)	# D.4830, *_81
	.loc 1 262 0
	addl	$1, -8040(%rbp)	#, j
.L33:
	.loc 1 262 0 is_stmt 0 discriminator 1
	movl	-8040(%rbp), %eax	# j, tmp149
	cmpl	-8036(%rbp), %eax	# range, tmp149
	jl	.L35	#,
	.loc 1 272 0 is_stmt 1
	movl	-8040(%rbp), %eax	# j, tmp150
	addl	%eax, -8032(%rbp)	# tmp150, cnt
	.loc 1 273 0
	movl	$46, %edi	#,
	call	putchar	#
	.loc 1 233 0
	movl	-8032(%rbp), %eax	# cnt, tmp151
	addl	%eax, -8044(%rbp)	# tmp151, i
.L28:
	.loc 1 233 0 is_stmt 0 discriminator 1
	movl	-8044(%rbp), %eax	# i, tmp152
	cmpl	-8056(%rbp), %eax	# item, tmp152
	jl	.L36	#,
	.loc 1 275 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	ParseMatrix, .-ParseMatrix
	.section	.rodata
	.align 8
.LC4:
	.string	"\n%s value exceed range. (Value must be 1 to 255)\n"
	.align 8
.LC5:
	.string	"Setting default values for this matrix."
	.align 8
.LC6:
	.string	"\n%s matrix definition not found. Setting default values."
	.text
	.globl	PatchMatrix
	.type	PatchMatrix, @function
PatchMatrix:
.LFB4:
	.loc 1 285 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	.loc 1 289 0
	movl	$0, -20(%rbp)	#, i
	jmp	.L38	#
.L59:
	.loc 1 291 0
	movq	input(%rip), %rax	# input, input.7
	movl	-20(%rbp), %edx	# i, tmp87
	movslq	%edx, %rdx	# tmp87, tmp86
	addq	$812, %rdx	#, tmp88
	movl	12(%rax,%rdx,4), %eax	# input.7_7->ScalingListPresentFlag, D.4835
	testl	%eax, %eax	# D.4835
	je	.L39	#,
	.loc 1 293 0
	movl	-20(%rbp), %eax	# i, tmp90
	cltq
	salq	$5, %rax	#, tmp91
	addq	$ScalingList4x4input, %rax	#, tmp92
	movq	%rax, -8(%rbp)	# tmp92, ScalingList
	.loc 1 294 0
	movl	-20(%rbp), %eax	# i, tmp94
	cltq
	movl	matrix4x4_check(,%rax,4), %eax	# matrix4x4_check, D.4835
	testl	%eax, %eax	# D.4835
	je	.L40	#,
	.loc 1 296 0
	movl	$0, -12(%rbp)	#, fail
	.loc 1 297 0
	movl	$0, -16(%rbp)	#, cnt
	jmp	.L41	#
.L45:
	.loc 1 299 0
	movl	-16(%rbp), %eax	# cnt, tmp95
	cltq
	leaq	(%rax,%rax), %rdx	#, D.4836
	movq	-8(%rbp), %rax	# ScalingList, tmp96
	addq	%rdx, %rax	# D.4836, D.4837
	movzwl	(%rax), %eax	# *_15, D.4838
	testw	%ax, %ax	# D.4838
	js	.L42	#,
	.loc 1 299 0 is_stmt 0 discriminator 1
	movl	-16(%rbp), %eax	# cnt, tmp97
	cltq
	leaq	(%rax,%rax), %rdx	#, D.4836
	movq	-8(%rbp), %rax	# ScalingList, tmp98
	addq	%rdx, %rax	# D.4836, D.4837
	movzwl	(%rax), %eax	# *_19, D.4838
	cmpw	$255, %ax	#, D.4838
	jle	.L43	#,
.L42:
	.loc 1 301 0 is_stmt 1
	movl	$1, -12(%rbp)	#, fail
	.loc 1 302 0
	jmp	.L44	#
.L43:
	.loc 1 297 0
	addl	$1, -16(%rbp)	#, cnt
.L41:
	.loc 1 297 0 is_stmt 0 discriminator 1
	cmpl	$15, -16(%rbp)	#, cnt
	jle	.L45	#,
.L44:
	.loc 1 306 0 is_stmt 1
	cmpl	$0, -12(%rbp)	#, fail
	je	.L39	#,
	.loc 1 308 0
	movl	-20(%rbp), %eax	# i, tmp100
	movslq	%eax, %rdx	# tmp100, tmp99
	movq	%rdx, %rax	# tmp99, tmp101
	salq	$2, %rax	#, tmp101
	addq	%rdx, %rax	# tmp99, tmp101
	salq	$2, %rax	#, tmp102
	addq	$MatrixType4x4, %rax	#, D.4839
	movq	%rax, %rsi	# D.4839,
	movl	$.LC4, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 309 0
	movl	$.LC5, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 310 0
	cmpl	$2, -20(%rbp)	#, i
	jle	.L47	#,
	.loc 1 311 0
	movq	-8(%rbp), %rax	# ScalingList, tmp103
	movl	$32, %edx	#,
	movl	$Quant_inter_default, %esi	#,
	movq	%rax, %rdi	# tmp103,
	call	memcpy	#
	jmp	.L39	#
.L47:
	.loc 1 313 0
	movq	-8(%rbp), %rax	# ScalingList, tmp104
	movl	$32, %edx	#,
	movl	$Quant_intra_default, %esi	#,
	movq	%rax, %rdi	# tmp104,
	call	memcpy	#
	jmp	.L39	#
.L40:
	.loc 1 318 0
	movl	-20(%rbp), %eax	# i, tmp106
	movslq	%eax, %rdx	# tmp106, tmp105
	movq	%rdx, %rax	# tmp105, tmp107
	salq	$2, %rax	#, tmp107
	addq	%rdx, %rax	# tmp105, tmp107
	salq	$2, %rax	#, tmp108
	addq	$MatrixType4x4, %rax	#, D.4839
	movq	%rax, %rsi	# D.4839,
	movl	$.LC6, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 319 0
	cmpl	$2, -20(%rbp)	#, i
	jle	.L48	#,
	.loc 1 320 0
	movq	-8(%rbp), %rax	# ScalingList, tmp109
	movl	$32, %edx	#,
	movl	$Quant_inter_default, %esi	#,
	movq	%rax, %rdi	# tmp109,
	call	memcpy	#
	jmp	.L39	#
.L48:
	.loc 1 322 0
	movq	-8(%rbp), %rax	# ScalingList, tmp110
	movl	$32, %edx	#,
	movl	$Quant_intra_default, %esi	#,
	movq	%rax, %rdi	# tmp110,
	call	memcpy	#
.L39:
	.loc 1 326 0
	cmpl	$1, -20(%rbp)	#, i
	jg	.L49	#,
	.loc 1 326 0 is_stmt 0 discriminator 1
	movq	input(%rip), %rax	# input, input.8
	movl	-20(%rbp), %edx	# i, tmp111
	addl	$6, %edx	#, D.4835
	movslq	%edx, %rdx	# D.4835, tmp112
	addq	$812, %rdx	#, tmp113
	movl	12(%rax,%rdx,4), %eax	# input.8_25->ScalingListPresentFlag, D.4835
	testl	%eax, %eax	# D.4835
	je	.L49	#,
	.loc 1 328 0 is_stmt 1
	movl	-20(%rbp), %eax	# i, tmp115
	cltq
	salq	$7, %rax	#, tmp116
	addq	$ScalingList8x8input, %rax	#, tmp117
	movq	%rax, -8(%rbp)	# tmp117, ScalingList
	.loc 1 329 0
	movl	-20(%rbp), %eax	# i, tmp119
	cltq
	movl	matrix8x8_check(,%rax,4), %eax	# matrix8x8_check, D.4835
	testl	%eax, %eax	# D.4835
	je	.L50	#,
	.loc 1 331 0
	movl	$0, -12(%rbp)	#, fail
	.loc 1 332 0
	movl	$0, -16(%rbp)	#, cnt
	jmp	.L51	#
.L55:
	.loc 1 334 0
	movl	-16(%rbp), %eax	# cnt, tmp120
	cltq
	leaq	(%rax,%rax), %rdx	#, D.4836
	movq	-8(%rbp), %rax	# ScalingList, tmp121
	addq	%rdx, %rax	# D.4836, D.4837
	movzwl	(%rax), %eax	# *_34, D.4838
	testw	%ax, %ax	# D.4838
	js	.L52	#,
	.loc 1 334 0 is_stmt 0 discriminator 1
	movl	-16(%rbp), %eax	# cnt, tmp122
	cltq
	leaq	(%rax,%rax), %rdx	#, D.4836
	movq	-8(%rbp), %rax	# ScalingList, tmp123
	addq	%rdx, %rax	# D.4836, D.4837
	movzwl	(%rax), %eax	# *_38, D.4838
	cmpw	$255, %ax	#, D.4838
	jle	.L53	#,
.L52:
	.loc 1 336 0 is_stmt 1
	movl	$1, -12(%rbp)	#, fail
	.loc 1 337 0
	jmp	.L54	#
.L53:
	.loc 1 332 0
	addl	$1, -16(%rbp)	#, cnt
.L51:
	.loc 1 332 0 is_stmt 0 discriminator 1
	cmpl	$63, -16(%rbp)	#, cnt
	jle	.L55	#,
.L54:
	.loc 1 341 0 is_stmt 1
	cmpl	$0, -12(%rbp)	#, fail
	je	.L49	#,
	.loc 1 343 0
	movl	-20(%rbp), %eax	# i, tmp125
	movslq	%eax, %rdx	# tmp125, tmp124
	movq	%rdx, %rax	# tmp124, tmp126
	salq	$2, %rax	#, tmp126
	addq	%rdx, %rax	# tmp124, tmp126
	salq	$2, %rax	#, tmp127
	addq	$MatrixType8x8, %rax	#, D.4839
	movq	%rax, %rsi	# D.4839,
	movl	$.LC4, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 344 0
	movl	$.LC5, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 345 0
	cmpl	$7, -20(%rbp)	#, i
	jne	.L57	#,
	.loc 1 346 0
	movq	-8(%rbp), %rax	# ScalingList, tmp128
	movl	$128, %edx	#,
	movl	$Quant8_inter_default, %esi	#,
	movq	%rax, %rdi	# tmp128,
	call	memcpy	#
	jmp	.L49	#
.L57:
	.loc 1 348 0
	movq	-8(%rbp), %rax	# ScalingList, tmp129
	movl	$128, %edx	#,
	movl	$Quant8_intra_default, %esi	#,
	movq	%rax, %rdi	# tmp129,
	call	memcpy	#
	jmp	.L49	#
.L50:
	.loc 1 353 0
	movl	-20(%rbp), %eax	# i, tmp131
	movslq	%eax, %rdx	# tmp131, tmp130
	movq	%rdx, %rax	# tmp130, tmp132
	salq	$2, %rax	#, tmp132
	addq	%rdx, %rax	# tmp130, tmp132
	salq	$2, %rax	#, tmp133
	addq	$MatrixType8x8, %rax	#, D.4839
	movq	%rax, %rsi	# D.4839,
	movl	$.LC6, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 354 0
	cmpl	$7, -20(%rbp)	#, i
	jne	.L58	#,
	.loc 1 355 0
	movq	-8(%rbp), %rax	# ScalingList, tmp134
	movl	$128, %edx	#,
	movl	$Quant8_inter_default, %esi	#,
	movq	%rax, %rdi	# tmp134,
	call	memcpy	#
	jmp	.L49	#
.L58:
	.loc 1 357 0
	movq	-8(%rbp), %rax	# ScalingList, tmp135
	movl	$128, %edx	#,
	movl	$Quant8_intra_default, %esi	#,
	movq	%rax, %rdi	# tmp135,
	call	memcpy	#
.L49:
	.loc 1 289 0
	addl	$1, -20(%rbp)	#, i
.L38:
	.loc 1 289 0 is_stmt 0 discriminator 1
	cmpl	$5, -20(%rbp)	#, i
	jle	.L59	#,
	.loc 1 361 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	PatchMatrix, .-PatchMatrix
	.section	.rodata
.LC7:
	.string	"Parsing QMatrix file %s "
	.align 8
.LC8:
	.string	"\nError: %s\nProceeding with default values for all matrices."
	.text
	.globl	Init_QMatrix
	.type	Init_QMatrix, @function
Init_QMatrix:
.LFB5:
	.loc 1 370 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	.loc 1 373 0
	movq	input(%rip), %rax	# input, input.9
	movl	3256(%rax), %eax	# input.9_1->ScalingMatrixPresentFlag, D.4843
	testl	%eax, %eax	# D.4843
	je	.L60	#,
	.loc 1 375 0
	movq	input(%rip), %rax	# input, input.10
	addq	$1024, %rax	#, D.4844
	movq	%rax, %rsi	# D.4844,
	movl	$.LC7, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 376 0
	movq	input(%rip), %rax	# input, input.11
	addq	$1024, %rax	#, D.4844
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.4844,
	call	GetConfigFileContent	#
	movq	%rax, -8(%rbp)	# tmp68, content
	.loc 1 377 0
	cmpq	$0, -8(%rbp)	#, content
	je	.L62	#,
	.loc 1 378 0
	movq	-8(%rbp), %rax	# content, tmp69
	movq	%rax, %rdi	# tmp69,
	call	strlen	#
	movl	%eax, %edx	# D.4845, D.4843
	movq	-8(%rbp), %rax	# content, tmp70
	movl	%edx, %esi	# D.4843,
	movq	%rax, %rdi	# tmp70,
	call	ParseMatrix	#
	jmp	.L63	#
.L62:
	.loc 1 380 0
	movl	$errortext, %esi	#,
	movl	$.LC8, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
.L63:
	.loc 1 382 0
	call	PatchMatrix	#
	.loc 1 383 0
	movl	$10, %edi	#,
	call	putchar	#
	.loc 1 385 0
	movl	$12, %edx	#,
	movl	$0, %esi	#,
	movl	$UseDefaultScalingMatrix4x4Flag, %edi	#,
	call	memset	#
	.loc 1 386 0
	movw	$0, UseDefaultScalingMatrix8x8Flag+2(%rip)	#, UseDefaultScalingMatrix8x8Flag
	movzwl	UseDefaultScalingMatrix8x8Flag+2(%rip), %eax	# UseDefaultScalingMatrix8x8Flag, D.4846
	movw	%ax, UseDefaultScalingMatrix8x8Flag(%rip)	# D.4846, UseDefaultScalingMatrix8x8Flag
	.loc 1 388 0
	movq	-8(%rbp), %rax	# content, tmp71
	movq	%rax, %rdi	# tmp71,
	call	free	#
.L60:
	.loc 1 390 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	Init_QMatrix, .-Init_QMatrix
	.globl	CalculateQuantParam
	.type	CalculateQuantParam, @function
CalculateQuantParam:
.LFB6:
	.loc 1 405 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$72, %rsp	#,
	.cfi_offset 3, -24
	.loc 1 408 0
	movl	$0, -56(%rbp)	#, no_q_matrix
	.loc 1 410 0
	movq	active_sps(%rip), %rax	# active_sps, active_sps.12
	movl	36(%rax), %eax	# active_sps.12_19->seq_scaling_matrix_present_flag, D.4849
	testl	%eax, %eax	# D.4849
	jne	.L65	#,
	.loc 1 410 0 is_stmt 0 discriminator 1
	movq	active_pps(%rip), %rax	# active_pps, active_pps.13
	movl	20(%rax), %eax	# active_pps.13_21->pic_scaling_matrix_present_flag, D.4849
	testl	%eax, %eax	# D.4849
	jne	.L65	#,
	.loc 1 411 0 is_stmt 1
	movl	$1, -56(%rbp)	#, no_q_matrix
	jmp	.L66	#
.L65:
	.loc 1 414 0
	leaq	-48(%rbp), %rax	#, tmp198
	movl	$24, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp198,
	call	memset	#
	.loc 1 416 0
	movq	active_sps(%rip), %rax	# active_sps, active_sps.14
	movl	36(%rax), %eax	# active_sps.14_24->seq_scaling_matrix_present_flag, D.4849
	testl	%eax, %eax	# D.4849
	je	.L67	#,
	.loc 1 417 0
	movl	$0, -68(%rbp)	#, i
	jmp	.L68	#
.L69:
	.loc 1 418 0 discriminator 2
	movq	active_sps(%rip), %rax	# active_sps, active_sps.15
	movl	-68(%rbp), %edx	# i, tmp200
	movslq	%edx, %rdx	# tmp200, tmp199
	addq	$8, %rdx	#, tmp201
	movl	8(%rax,%rdx,4), %edx	# active_sps.15_27->seq_scaling_list_present_flag, D.4850
	movl	-68(%rbp), %eax	# i, tmp203
	cltq
	movl	%edx, -48(%rbp,%rax,4)	# D.4850, present
	.loc 1 417 0 discriminator 2
	addl	$1, -68(%rbp)	#, i
.L68:
	.loc 1 417 0 is_stmt 0 discriminator 1
	cmpl	$5, -68(%rbp)	#, i
	jle	.L69	#,
.L67:
	.loc 1 420 0 is_stmt 1
	movq	active_pps(%rip), %rax	# active_pps, active_pps.16
	movl	20(%rax), %eax	# active_pps.16_30->pic_scaling_matrix_present_flag, D.4849
	testl	%eax, %eax	# D.4849
	je	.L66	#,
	.loc 1 421 0
	movl	$0, -68(%rbp)	#, i
	jmp	.L70	#
.L74:
	.loc 1 423 0
	cmpl	$0, -68(%rbp)	#, i
	je	.L71	#,
	.loc 1 423 0 is_stmt 0 discriminator 1
	cmpl	$3, -68(%rbp)	#, i
	jne	.L72	#,
.L71:
	.loc 1 424 0 is_stmt 1
	movl	-68(%rbp), %eax	# i, tmp205
	cltq
	movl	-48(%rbp,%rax,4), %edx	# present, D.4850
	movq	active_pps(%rip), %rax	# active_pps, active_pps.17
	movl	-68(%rbp), %ecx	# i, tmp207
	movslq	%ecx, %rcx	# tmp207, tmp206
	addq	$4, %rcx	#, tmp208
	movl	8(%rax,%rcx,4), %eax	# active_pps.17_36->pic_scaling_list_present_flag, D.4850
	orl	%eax, %edx	# D.4850, D.4850
	movl	-68(%rbp), %eax	# i, tmp210
	cltq
	movl	%edx, -48(%rbp,%rax,4)	# D.4850, present
	jmp	.L73	#
.L72:
	.loc 1 426 0
	movq	active_pps(%rip), %rax	# active_pps, active_pps.18
	movl	-68(%rbp), %edx	# i, tmp212
	movslq	%edx, %rdx	# tmp212, tmp211
	addq	$4, %rdx	#, tmp213
	movl	8(%rax,%rdx,4), %edx	# active_pps.18_33->pic_scaling_list_present_flag, D.4850
	movl	-68(%rbp), %eax	# i, tmp215
	cltq
	movl	%edx, -48(%rbp,%rax,4)	# D.4850, present
.L73:
	.loc 1 421 0
	addl	$1, -68(%rbp)	#, i
.L70:
	.loc 1 421 0 is_stmt 0 discriminator 1
	cmpl	$5, -68(%rbp)	#, i
	jle	.L74	#,
.L66:
	.loc 1 430 0 is_stmt 1
	cmpl	$1, -56(%rbp)	#, no_q_matrix
	jne	.L75	#,
	.loc 1 432 0
	movl	$0, -60(%rbp)	#, k
	jmp	.L76	#
.L81:
	.loc 1 433 0
	movl	$0, -64(%rbp)	#, j
	jmp	.L77	#
.L80:
	.loc 1 434 0
	movl	$0, -68(%rbp)	#, i
	jmp	.L78	#
.L79:
	.loc 1 436 0 discriminator 2
	movl	-68(%rbp), %eax	# i, tmp217
	cltq
	movl	-60(%rbp), %edx	# k, tmp219
	movslq	%edx, %rcx	# tmp219, tmp218
	movl	-64(%rbp), %edx	# j, tmp221
	movslq	%edx, %rdx	# tmp221, tmp220
	salq	$2, %rcx	#, tmp222
	addq	%rcx, %rdx	# tmp222, tmp223
	salq	$2, %rdx	#, tmp224
	addq	%rdx, %rax	# tmp224, tmp225
	movl	quant_coef(,%rax,4), %eax	# quant_coef, D.4850
	movl	-68(%rbp), %edx	# i, tmp227
	movslq	%edx, %rdx	# tmp227, tmp226
	movl	-60(%rbp), %ecx	# k, tmp229
	movslq	%ecx, %rsi	# tmp229, tmp228
	movl	-64(%rbp), %ecx	# j, tmp231
	movslq	%ecx, %rcx	# tmp231, tmp230
	salq	$2, %rsi	#, tmp232
	addq	%rsi, %rcx	# tmp232, tmp233
	salq	$2, %rcx	#, tmp234
	addq	%rcx, %rdx	# tmp234, tmp235
	movl	%eax, LevelScale4x4Luma_Intra(,%rdx,4)	# D.4850, LevelScale4x4Luma_Intra
	.loc 1 437 0 discriminator 2
	movl	-68(%rbp), %eax	# i, tmp237
	cltq
	movl	-60(%rbp), %edx	# k, tmp239
	movslq	%edx, %rcx	# tmp239, tmp238
	movl	-64(%rbp), %edx	# j, tmp241
	movslq	%edx, %rdx	# tmp241, tmp240
	salq	$2, %rcx	#, tmp242
	addq	%rcx, %rdx	# tmp242, tmp243
	salq	$2, %rdx	#, tmp244
	addq	%rdx, %rax	# tmp244, tmp245
	movl	dequant_coef(,%rax,4), %eax	# dequant_coef, D.4850
	sall	$4, %eax	#, D.4850
	movl	%eax, %edx	# D.4850, D.4850
	movl	-68(%rbp), %eax	# i, tmp247
	cltq
	movl	-60(%rbp), %ecx	# k, tmp249
	movslq	%ecx, %rsi	# tmp249, tmp248
	movl	-64(%rbp), %ecx	# j, tmp251
	movslq	%ecx, %rcx	# tmp251, tmp250
	salq	$2, %rsi	#, tmp252
	addq	%rsi, %rcx	# tmp252, tmp253
	salq	$2, %rcx	#, tmp254
	addq	%rcx, %rax	# tmp254, tmp255
	movl	%edx, InvLevelScale4x4Luma_Intra(,%rax,4)	# D.4850, InvLevelScale4x4Luma_Intra
	.loc 1 439 0 discriminator 2
	movl	-68(%rbp), %eax	# i, tmp257
	cltq
	movl	-60(%rbp), %edx	# k, tmp259
	movslq	%edx, %rcx	# tmp259, tmp258
	movl	-64(%rbp), %edx	# j, tmp261
	movslq	%edx, %rdx	# tmp261, tmp260
	salq	$2, %rcx	#, tmp262
	addq	%rcx, %rdx	# tmp262, tmp263
	salq	$2, %rdx	#, tmp264
	addq	%rdx, %rax	# tmp264, tmp265
	movl	quant_coef(,%rax,4), %eax	# quant_coef, D.4850
	movl	-68(%rbp), %edx	# i, tmp267
	movslq	%edx, %rdx	# tmp267, tmp266
	movl	-60(%rbp), %ecx	# k, tmp269
	movslq	%ecx, %rsi	# tmp269, tmp268
	movl	-64(%rbp), %ecx	# j, tmp271
	movslq	%ecx, %rcx	# tmp271, tmp270
	salq	$2, %rsi	#, tmp272
	addq	%rsi, %rcx	# tmp272, tmp273
	salq	$2, %rcx	#, tmp274
	addq	%rcx, %rdx	# tmp274, tmp275
	movl	%eax, LevelScale4x4Chroma_Intra(,%rdx,4)	# D.4850, LevelScale4x4Chroma_Intra
	.loc 1 440 0 discriminator 2
	movl	-68(%rbp), %eax	# i, tmp277
	cltq
	movl	-60(%rbp), %edx	# k, tmp279
	movslq	%edx, %rcx	# tmp279, tmp278
	movl	-64(%rbp), %edx	# j, tmp281
	movslq	%edx, %rdx	# tmp281, tmp280
	salq	$2, %rcx	#, tmp282
	addq	%rcx, %rdx	# tmp282, tmp283
	salq	$2, %rdx	#, tmp284
	addq	%rdx, %rax	# tmp284, tmp285
	movl	dequant_coef(,%rax,4), %eax	# dequant_coef, D.4850
	sall	$4, %eax	#, D.4850
	movl	%eax, %edx	# D.4850, D.4850
	movl	-68(%rbp), %eax	# i, tmp287
	cltq
	movl	-60(%rbp), %ecx	# k, tmp289
	movslq	%ecx, %rsi	# tmp289, tmp288
	movl	-64(%rbp), %ecx	# j, tmp291
	movslq	%ecx, %rcx	# tmp291, tmp290
	salq	$2, %rsi	#, tmp292
	addq	%rsi, %rcx	# tmp292, tmp293
	salq	$2, %rcx	#, tmp294
	addq	%rcx, %rax	# tmp294, tmp295
	movl	%edx, InvLevelScale4x4Chroma_Intra(,%rax,4)	# D.4850, InvLevelScale4x4Chroma_Intra
	.loc 1 442 0 discriminator 2
	movl	-68(%rbp), %eax	# i, tmp297
	cltq
	movl	-60(%rbp), %edx	# k, tmp299
	movslq	%edx, %rcx	# tmp299, tmp298
	movl	-64(%rbp), %edx	# j, tmp301
	movslq	%edx, %rdx	# tmp301, tmp300
	salq	$2, %rcx	#, tmp302
	addq	%rcx, %rdx	# tmp302, tmp303
	salq	$2, %rdx	#, tmp304
	addq	%rdx, %rax	# tmp304, tmp305
	movl	quant_coef(,%rax,4), %eax	# quant_coef, D.4850
	movl	-68(%rbp), %edx	# i, tmp307
	movslq	%edx, %rdx	# tmp307, tmp306
	movl	-60(%rbp), %ecx	# k, tmp309
	movslq	%ecx, %rsi	# tmp309, tmp308
	movl	-64(%rbp), %ecx	# j, tmp311
	movslq	%ecx, %rcx	# tmp311, tmp310
	salq	$2, %rsi	#, tmp312
	addq	%rsi, %rcx	# tmp312, tmp313
	salq	$2, %rcx	#, tmp314
	addq	%rcx, %rdx	# tmp314, tmp315
	addq	$96, %rdx	#, tmp316
	movl	%eax, LevelScale4x4Chroma_Intra(,%rdx,4)	# D.4850, LevelScale4x4Chroma_Intra
	.loc 1 443 0 discriminator 2
	movl	-68(%rbp), %eax	# i, tmp318
	cltq
	movl	-60(%rbp), %edx	# k, tmp320
	movslq	%edx, %rcx	# tmp320, tmp319
	movl	-64(%rbp), %edx	# j, tmp322
	movslq	%edx, %rdx	# tmp322, tmp321
	salq	$2, %rcx	#, tmp323
	addq	%rcx, %rdx	# tmp323, tmp324
	salq	$2, %rdx	#, tmp325
	addq	%rdx, %rax	# tmp325, tmp326
	movl	dequant_coef(,%rax,4), %eax	# dequant_coef, D.4850
	sall	$4, %eax	#, D.4850
	movl	%eax, %edx	# D.4850, D.4850
	movl	-68(%rbp), %eax	# i, tmp328
	cltq
	movl	-60(%rbp), %ecx	# k, tmp330
	movslq	%ecx, %rsi	# tmp330, tmp329
	movl	-64(%rbp), %ecx	# j, tmp332
	movslq	%ecx, %rcx	# tmp332, tmp331
	salq	$2, %rsi	#, tmp333
	addq	%rsi, %rcx	# tmp333, tmp334
	salq	$2, %rcx	#, tmp335
	addq	%rcx, %rax	# tmp335, tmp336
	addq	$96, %rax	#, tmp337
	movl	%edx, InvLevelScale4x4Chroma_Intra(,%rax,4)	# D.4850, InvLevelScale4x4Chroma_Intra
	.loc 1 445 0 discriminator 2
	movl	-68(%rbp), %eax	# i, tmp339
	cltq
	movl	-60(%rbp), %edx	# k, tmp341
	movslq	%edx, %rcx	# tmp341, tmp340
	movl	-64(%rbp), %edx	# j, tmp343
	movslq	%edx, %rdx	# tmp343, tmp342
	salq	$2, %rcx	#, tmp344
	addq	%rcx, %rdx	# tmp344, tmp345
	salq	$2, %rdx	#, tmp346
	addq	%rdx, %rax	# tmp346, tmp347
	movl	quant_coef(,%rax,4), %eax	# quant_coef, D.4850
	movl	-68(%rbp), %edx	# i, tmp349
	movslq	%edx, %rdx	# tmp349, tmp348
	movl	-60(%rbp), %ecx	# k, tmp351
	movslq	%ecx, %rsi	# tmp351, tmp350
	movl	-64(%rbp), %ecx	# j, tmp353
	movslq	%ecx, %rcx	# tmp353, tmp352
	salq	$2, %rsi	#, tmp354
	addq	%rsi, %rcx	# tmp354, tmp355
	salq	$2, %rcx	#, tmp356
	addq	%rcx, %rdx	# tmp356, tmp357
	movl	%eax, LevelScale4x4Luma_Inter(,%rdx,4)	# D.4850, LevelScale4x4Luma_Inter
	.loc 1 446 0 discriminator 2
	movl	-68(%rbp), %eax	# i, tmp359
	cltq
	movl	-60(%rbp), %edx	# k, tmp361
	movslq	%edx, %rcx	# tmp361, tmp360
	movl	-64(%rbp), %edx	# j, tmp363
	movslq	%edx, %rdx	# tmp363, tmp362
	salq	$2, %rcx	#, tmp364
	addq	%rcx, %rdx	# tmp364, tmp365
	salq	$2, %rdx	#, tmp366
	addq	%rdx, %rax	# tmp366, tmp367
	movl	dequant_coef(,%rax,4), %eax	# dequant_coef, D.4850
	sall	$4, %eax	#, D.4850
	movl	%eax, %edx	# D.4850, D.4850
	movl	-68(%rbp), %eax	# i, tmp369
	cltq
	movl	-60(%rbp), %ecx	# k, tmp371
	movslq	%ecx, %rsi	# tmp371, tmp370
	movl	-64(%rbp), %ecx	# j, tmp373
	movslq	%ecx, %rcx	# tmp373, tmp372
	salq	$2, %rsi	#, tmp374
	addq	%rsi, %rcx	# tmp374, tmp375
	salq	$2, %rcx	#, tmp376
	addq	%rcx, %rax	# tmp376, tmp377
	movl	%edx, InvLevelScale4x4Luma_Inter(,%rax,4)	# D.4850, InvLevelScale4x4Luma_Inter
	.loc 1 448 0 discriminator 2
	movl	-68(%rbp), %eax	# i, tmp379
	cltq
	movl	-60(%rbp), %edx	# k, tmp381
	movslq	%edx, %rcx	# tmp381, tmp380
	movl	-64(%rbp), %edx	# j, tmp383
	movslq	%edx, %rdx	# tmp383, tmp382
	salq	$2, %rcx	#, tmp384
	addq	%rcx, %rdx	# tmp384, tmp385
	salq	$2, %rdx	#, tmp386
	addq	%rdx, %rax	# tmp386, tmp387
	movl	quant_coef(,%rax,4), %eax	# quant_coef, D.4850
	movl	-68(%rbp), %edx	# i, tmp389
	movslq	%edx, %rdx	# tmp389, tmp388
	movl	-60(%rbp), %ecx	# k, tmp391
	movslq	%ecx, %rsi	# tmp391, tmp390
	movl	-64(%rbp), %ecx	# j, tmp393
	movslq	%ecx, %rcx	# tmp393, tmp392
	salq	$2, %rsi	#, tmp394
	addq	%rsi, %rcx	# tmp394, tmp395
	salq	$2, %rcx	#, tmp396
	addq	%rcx, %rdx	# tmp396, tmp397
	movl	%eax, LevelScale4x4Chroma_Inter(,%rdx,4)	# D.4850, LevelScale4x4Chroma_Inter
	.loc 1 449 0 discriminator 2
	movl	-68(%rbp), %eax	# i, tmp399
	cltq
	movl	-60(%rbp), %edx	# k, tmp401
	movslq	%edx, %rcx	# tmp401, tmp400
	movl	-64(%rbp), %edx	# j, tmp403
	movslq	%edx, %rdx	# tmp403, tmp402
	salq	$2, %rcx	#, tmp404
	addq	%rcx, %rdx	# tmp404, tmp405
	salq	$2, %rdx	#, tmp406
	addq	%rdx, %rax	# tmp406, tmp407
	movl	dequant_coef(,%rax,4), %eax	# dequant_coef, D.4850
	sall	$4, %eax	#, D.4850
	movl	%eax, %edx	# D.4850, D.4850
	movl	-68(%rbp), %eax	# i, tmp409
	cltq
	movl	-60(%rbp), %ecx	# k, tmp411
	movslq	%ecx, %rsi	# tmp411, tmp410
	movl	-64(%rbp), %ecx	# j, tmp413
	movslq	%ecx, %rcx	# tmp413, tmp412
	salq	$2, %rsi	#, tmp414
	addq	%rsi, %rcx	# tmp414, tmp415
	salq	$2, %rcx	#, tmp416
	addq	%rcx, %rax	# tmp416, tmp417
	movl	%edx, InvLevelScale4x4Chroma_Inter(,%rax,4)	# D.4850, InvLevelScale4x4Chroma_Inter
	.loc 1 451 0 discriminator 2
	movl	-68(%rbp), %eax	# i, tmp419
	cltq
	movl	-60(%rbp), %edx	# k, tmp421
	movslq	%edx, %rcx	# tmp421, tmp420
	movl	-64(%rbp), %edx	# j, tmp423
	movslq	%edx, %rdx	# tmp423, tmp422
	salq	$2, %rcx	#, tmp424
	addq	%rcx, %rdx	# tmp424, tmp425
	salq	$2, %rdx	#, tmp426
	addq	%rdx, %rax	# tmp426, tmp427
	movl	quant_coef(,%rax,4), %eax	# quant_coef, D.4850
	movl	-68(%rbp), %edx	# i, tmp429
	movslq	%edx, %rdx	# tmp429, tmp428
	movl	-60(%rbp), %ecx	# k, tmp431
	movslq	%ecx, %rsi	# tmp431, tmp430
	movl	-64(%rbp), %ecx	# j, tmp433
	movslq	%ecx, %rcx	# tmp433, tmp432
	salq	$2, %rsi	#, tmp434
	addq	%rsi, %rcx	# tmp434, tmp435
	salq	$2, %rcx	#, tmp436
	addq	%rcx, %rdx	# tmp436, tmp437
	addq	$96, %rdx	#, tmp438
	movl	%eax, LevelScale4x4Chroma_Inter(,%rdx,4)	# D.4850, LevelScale4x4Chroma_Inter
	.loc 1 452 0 discriminator 2
	movl	-68(%rbp), %eax	# i, tmp440
	cltq
	movl	-60(%rbp), %edx	# k, tmp442
	movslq	%edx, %rcx	# tmp442, tmp441
	movl	-64(%rbp), %edx	# j, tmp444
	movslq	%edx, %rdx	# tmp444, tmp443
	salq	$2, %rcx	#, tmp445
	addq	%rcx, %rdx	# tmp445, tmp446
	salq	$2, %rdx	#, tmp447
	addq	%rdx, %rax	# tmp447, tmp448
	movl	dequant_coef(,%rax,4), %eax	# dequant_coef, D.4850
	sall	$4, %eax	#, D.4850
	movl	%eax, %edx	# D.4850, D.4850
	movl	-68(%rbp), %eax	# i, tmp450
	cltq
	movl	-60(%rbp), %ecx	# k, tmp452
	movslq	%ecx, %rsi	# tmp452, tmp451
	movl	-64(%rbp), %ecx	# j, tmp454
	movslq	%ecx, %rcx	# tmp454, tmp453
	salq	$2, %rsi	#, tmp455
	addq	%rsi, %rcx	# tmp455, tmp456
	salq	$2, %rcx	#, tmp457
	addq	%rcx, %rax	# tmp457, tmp458
	addq	$96, %rax	#, tmp459
	movl	%edx, InvLevelScale4x4Chroma_Inter(,%rax,4)	# D.4850, InvLevelScale4x4Chroma_Inter
	.loc 1 434 0 discriminator 2
	addl	$1, -68(%rbp)	#, i
.L78:
	.loc 1 434 0 is_stmt 0 discriminator 1
	cmpl	$3, -68(%rbp)	#, i
	jle	.L79	#,
	.loc 1 433 0 is_stmt 1
	addl	$1, -64(%rbp)	#, j
.L77:
	.loc 1 433 0 is_stmt 0 discriminator 1
	cmpl	$3, -64(%rbp)	#, j
	jle	.L80	#,
	.loc 1 432 0 is_stmt 1
	addl	$1, -60(%rbp)	#, k
.L76:
	.loc 1 432 0 is_stmt 0 discriminator 1
	cmpl	$5, -60(%rbp)	#, k
	jle	.L81	#,
	jmp	.L64	#
.L75:
	.loc 1 457 0 is_stmt 1
	movl	$0, -60(%rbp)	#, k
	jmp	.L83	#
.L118:
	.loc 1 458 0
	movl	$0, -64(%rbp)	#, j
	jmp	.L84	#
.L117:
	.loc 1 459 0
	movl	$0, -68(%rbp)	#, i
	jmp	.L85	#
.L116:
	.loc 1 461 0
	movl	-68(%rbp), %eax	# i, tmp460
	leal	0(,%rax,4), %edx	#, D.4850
	movl	-64(%rbp), %eax	# j, tmp464
	addl	%edx, %eax	# D.4850, tmp463
	movl	%eax, -52(%rbp)	# tmp463, temp
	.loc 1 462 0
	movl	-48(%rbp), %eax	# present, D.4850
	testl	%eax, %eax	# D.4850
	je	.L86	#,
	.loc 1 462 0 is_stmt 0 discriminator 1
	movzwl	UseDefaultScalingMatrix4x4Flag(%rip), %eax	# UseDefaultScalingMatrix4x4Flag, D.4851
	testw	%ax, %ax	# D.4851
	je	.L87	#,
.L86:
	.loc 1 464 0 is_stmt 1
	movl	-68(%rbp), %eax	# i, tmp466
	cltq
	movl	-60(%rbp), %edx	# k, tmp468
	movslq	%edx, %rcx	# tmp468, tmp467
	movl	-64(%rbp), %edx	# j, tmp470
	movslq	%edx, %rdx	# tmp470, tmp469
	salq	$2, %rcx	#, tmp471
	addq	%rcx, %rdx	# tmp471, tmp472
	salq	$2, %rdx	#, tmp473
	addq	%rdx, %rax	# tmp473, tmp474
	movl	quant_coef(,%rax,4), %eax	# quant_coef, D.4850
	sall	$4, %eax	#, D.4850
	movl	%eax, %ecx	# D.4850, D.4850
	movl	-52(%rbp), %eax	# temp, tmp476
	cltq
	movzwl	Quant_intra_default(%rax,%rax), %eax	# Quant_intra_default, D.4851
	movswl	%ax, %edi	# D.4851, D.4850
	movl	%ecx, %eax	# D.4850, tmp477
	cltd
	idivl	%edi	# D.4850
	movl	-68(%rbp), %edx	# i, tmp480
	movslq	%edx, %rdx	# tmp480, tmp479
	movl	-60(%rbp), %ecx	# k, tmp482
	movslq	%ecx, %rsi	# tmp482, tmp481
	movl	-64(%rbp), %ecx	# j, tmp484
	movslq	%ecx, %rcx	# tmp484, tmp483
	salq	$2, %rsi	#, tmp485
	addq	%rsi, %rcx	# tmp485, tmp486
	salq	$2, %rcx	#, tmp487
	addq	%rcx, %rdx	# tmp487, tmp488
	movl	%eax, LevelScale4x4Luma_Intra(,%rdx,4)	# D.4850, LevelScale4x4Luma_Intra
	.loc 1 465 0
	movl	-68(%rbp), %eax	# i, tmp490
	cltq
	movl	-60(%rbp), %edx	# k, tmp492
	movslq	%edx, %rcx	# tmp492, tmp491
	movl	-64(%rbp), %edx	# j, tmp494
	movslq	%edx, %rdx	# tmp494, tmp493
	salq	$2, %rcx	#, tmp495
	addq	%rcx, %rdx	# tmp495, tmp496
	salq	$2, %rdx	#, tmp497
	addq	%rdx, %rax	# tmp497, tmp498
	movl	dequant_coef(,%rax,4), %edx	# dequant_coef, D.4850
	movl	-52(%rbp), %eax	# temp, tmp500
	cltq
	movzwl	Quant_intra_default(%rax,%rax), %eax	# Quant_intra_default, D.4851
	cwtl
	imull	%edx, %eax	# D.4850, D.4850
	movl	-68(%rbp), %edx	# i, tmp502
	movslq	%edx, %rdx	# tmp502, tmp501
	movl	-60(%rbp), %ecx	# k, tmp504
	movslq	%ecx, %rsi	# tmp504, tmp503
	movl	-64(%rbp), %ecx	# j, tmp506
	movslq	%ecx, %rcx	# tmp506, tmp505
	salq	$2, %rsi	#, tmp507
	addq	%rsi, %rcx	# tmp507, tmp508
	salq	$2, %rcx	#, tmp509
	addq	%rcx, %rdx	# tmp509, tmp510
	movl	%eax, InvLevelScale4x4Luma_Intra(,%rdx,4)	# D.4850, InvLevelScale4x4Luma_Intra
	jmp	.L88	#
.L87:
	.loc 1 469 0
	movl	-68(%rbp), %eax	# i, tmp512
	cltq
	movl	-60(%rbp), %edx	# k, tmp514
	movslq	%edx, %rcx	# tmp514, tmp513
	movl	-64(%rbp), %edx	# j, tmp516
	movslq	%edx, %rdx	# tmp516, tmp515
	salq	$2, %rcx	#, tmp517
	addq	%rcx, %rdx	# tmp517, tmp518
	salq	$2, %rdx	#, tmp519
	addq	%rdx, %rax	# tmp519, tmp520
	movl	quant_coef(,%rax,4), %eax	# quant_coef, D.4850
	sall	$4, %eax	#, D.4850
	movl	%eax, %ecx	# D.4850, D.4850
	movl	-52(%rbp), %eax	# temp, tmp522
	cltq
	movzwl	ScalingList4x4(%rax,%rax), %eax	# ScalingList4x4, D.4851
	movswl	%ax, %ebx	# D.4851, D.4850
	movl	%ecx, %eax	# D.4850, tmp523
	cltd
	idivl	%ebx	# D.4850
	movl	-68(%rbp), %edx	# i, tmp526
	movslq	%edx, %rdx	# tmp526, tmp525
	movl	-60(%rbp), %ecx	# k, tmp528
	movslq	%ecx, %rsi	# tmp528, tmp527
	movl	-64(%rbp), %ecx	# j, tmp530
	movslq	%ecx, %rcx	# tmp530, tmp529
	salq	$2, %rsi	#, tmp531
	addq	%rsi, %rcx	# tmp531, tmp532
	salq	$2, %rcx	#, tmp533
	addq	%rcx, %rdx	# tmp533, tmp534
	movl	%eax, LevelScale4x4Luma_Intra(,%rdx,4)	# D.4850, LevelScale4x4Luma_Intra
	.loc 1 470 0
	movl	-68(%rbp), %eax	# i, tmp536
	cltq
	movl	-60(%rbp), %edx	# k, tmp538
	movslq	%edx, %rcx	# tmp538, tmp537
	movl	-64(%rbp), %edx	# j, tmp540
	movslq	%edx, %rdx	# tmp540, tmp539
	salq	$2, %rcx	#, tmp541
	addq	%rcx, %rdx	# tmp541, tmp542
	salq	$2, %rdx	#, tmp543
	addq	%rdx, %rax	# tmp543, tmp544
	movl	dequant_coef(,%rax,4), %edx	# dequant_coef, D.4850
	movl	-52(%rbp), %eax	# temp, tmp546
	cltq
	movzwl	ScalingList4x4(%rax,%rax), %eax	# ScalingList4x4, D.4851
	cwtl
	imull	%edx, %eax	# D.4850, D.4850
	movl	-68(%rbp), %edx	# i, tmp548
	movslq	%edx, %rdx	# tmp548, tmp547
	movl	-60(%rbp), %ecx	# k, tmp550
	movslq	%ecx, %rsi	# tmp550, tmp549
	movl	-64(%rbp), %ecx	# j, tmp552
	movslq	%ecx, %rcx	# tmp552, tmp551
	salq	$2, %rsi	#, tmp553
	addq	%rsi, %rcx	# tmp553, tmp554
	salq	$2, %rcx	#, tmp555
	addq	%rcx, %rdx	# tmp555, tmp556
	movl	%eax, InvLevelScale4x4Luma_Intra(,%rdx,4)	# D.4850, InvLevelScale4x4Luma_Intra
.L88:
	.loc 1 473 0
	movl	-44(%rbp), %eax	# present, D.4850
	testl	%eax, %eax	# D.4850
	jne	.L89	#,
	.loc 1 475 0
	movl	-68(%rbp), %eax	# i, tmp558
	cltq
	movl	-60(%rbp), %edx	# k, tmp560
	movslq	%edx, %rcx	# tmp560, tmp559
	movl	-64(%rbp), %edx	# j, tmp562
	movslq	%edx, %rdx	# tmp562, tmp561
	salq	$2, %rcx	#, tmp563
	addq	%rcx, %rdx	# tmp563, tmp564
	salq	$2, %rdx	#, tmp565
	addq	%rdx, %rax	# tmp565, tmp566
	movl	LevelScale4x4Luma_Intra(,%rax,4), %eax	# LevelScale4x4Luma_Intra, D.4850
	movl	-68(%rbp), %edx	# i, tmp568
	movslq	%edx, %rdx	# tmp568, tmp567
	movl	-60(%rbp), %ecx	# k, tmp570
	movslq	%ecx, %rsi	# tmp570, tmp569
	movl	-64(%rbp), %ecx	# j, tmp572
	movslq	%ecx, %rcx	# tmp572, tmp571
	salq	$2, %rsi	#, tmp573
	addq	%rsi, %rcx	# tmp573, tmp574
	salq	$2, %rcx	#, tmp575
	addq	%rcx, %rdx	# tmp575, tmp576
	movl	%eax, LevelScale4x4Chroma_Intra(,%rdx,4)	# D.4850, LevelScale4x4Chroma_Intra
	.loc 1 476 0
	movl	-68(%rbp), %eax	# i, tmp578
	cltq
	movl	-60(%rbp), %edx	# k, tmp580
	movslq	%edx, %rcx	# tmp580, tmp579
	movl	-64(%rbp), %edx	# j, tmp582
	movslq	%edx, %rdx	# tmp582, tmp581
	salq	$2, %rcx	#, tmp583
	addq	%rcx, %rdx	# tmp583, tmp584
	salq	$2, %rdx	#, tmp585
	addq	%rdx, %rax	# tmp585, tmp586
	movl	InvLevelScale4x4Luma_Intra(,%rax,4), %eax	# InvLevelScale4x4Luma_Intra, D.4850
	movl	-68(%rbp), %edx	# i, tmp588
	movslq	%edx, %rdx	# tmp588, tmp587
	movl	-60(%rbp), %ecx	# k, tmp590
	movslq	%ecx, %rsi	# tmp590, tmp589
	movl	-64(%rbp), %ecx	# j, tmp592
	movslq	%ecx, %rcx	# tmp592, tmp591
	salq	$2, %rsi	#, tmp593
	addq	%rsi, %rcx	# tmp593, tmp594
	salq	$2, %rcx	#, tmp595
	addq	%rcx, %rdx	# tmp595, tmp596
	movl	%eax, InvLevelScale4x4Chroma_Intra(,%rdx,4)	# D.4850, InvLevelScale4x4Chroma_Intra
	jmp	.L90	#
.L89:
	.loc 1 480 0
	movl	-68(%rbp), %eax	# i, tmp598
	cltq
	movl	-60(%rbp), %edx	# k, tmp600
	movslq	%edx, %rcx	# tmp600, tmp599
	movl	-64(%rbp), %edx	# j, tmp602
	movslq	%edx, %rdx	# tmp602, tmp601
	salq	$2, %rcx	#, tmp603
	addq	%rcx, %rdx	# tmp603, tmp604
	salq	$2, %rdx	#, tmp605
	addq	%rdx, %rax	# tmp605, tmp606
	movl	quant_coef(,%rax,4), %eax	# quant_coef, D.4850
	sall	$4, %eax	#, D.4850
	movl	%eax, %ecx	# D.4850, D.4850
	movzwl	UseDefaultScalingMatrix4x4Flag+2(%rip), %eax	# UseDefaultScalingMatrix4x4Flag, D.4851
	testw	%ax, %ax	# D.4851
	je	.L91	#,
	.loc 1 480 0 is_stmt 0 discriminator 1
	movl	-52(%rbp), %eax	# temp, tmp608
	cltq
	movzwl	Quant_intra_default(%rax,%rax), %eax	# Quant_intra_default, D.4851
	movswl	%ax, %ebx	# D.4851, iftmp.19
	jmp	.L92	#
.L91:
	.loc 1 480 0 discriminator 2
	movl	-52(%rbp), %eax	# temp, tmp610
	cltq
	addq	$16, %rax	#, tmp611
	movzwl	ScalingList4x4(%rax,%rax), %eax	# ScalingList4x4, D.4851
	movswl	%ax, %ebx	# D.4851, iftmp.19
.L92:
	.loc 1 480 0 discriminator 3
	movl	%ecx, %eax	# D.4850, tmp612
	cltd
	idivl	%ebx	# iftmp.19
	movl	-68(%rbp), %edx	# i, tmp615
	movslq	%edx, %rdx	# tmp615, tmp614
	movl	-60(%rbp), %ecx	# k, tmp617
	movslq	%ecx, %rsi	# tmp617, tmp616
	movl	-64(%rbp), %ecx	# j, tmp619
	movslq	%ecx, %rcx	# tmp619, tmp618
	salq	$2, %rsi	#, tmp620
	addq	%rsi, %rcx	# tmp620, tmp621
	salq	$2, %rcx	#, tmp622
	addq	%rcx, %rdx	# tmp622, tmp623
	movl	%eax, LevelScale4x4Chroma_Intra(,%rdx,4)	# D.4850, LevelScale4x4Chroma_Intra
	.loc 1 481 0 is_stmt 1 discriminator 3
	movl	-68(%rbp), %eax	# i, tmp625
	cltq
	movl	-60(%rbp), %edx	# k, tmp627
	movslq	%edx, %rcx	# tmp627, tmp626
	movl	-64(%rbp), %edx	# j, tmp629
	movslq	%edx, %rdx	# tmp629, tmp628
	salq	$2, %rcx	#, tmp630
	addq	%rcx, %rdx	# tmp630, tmp631
	salq	$2, %rdx	#, tmp632
	addq	%rdx, %rax	# tmp632, tmp633
	movl	dequant_coef(,%rax,4), %edx	# dequant_coef, D.4850
	movzwl	UseDefaultScalingMatrix4x4Flag+2(%rip), %eax	# UseDefaultScalingMatrix4x4Flag, D.4851
	testw	%ax, %ax	# D.4851
	je	.L93	#,
	.loc 1 481 0 is_stmt 0 discriminator 1
	movl	-52(%rbp), %eax	# temp, tmp635
	cltq
	movzwl	Quant_intra_default(%rax,%rax), %eax	# Quant_intra_default, D.4851
	cwtl
	jmp	.L94	#
.L93:
	.loc 1 481 0 discriminator 2
	movl	-52(%rbp), %eax	# temp, tmp637
	cltq
	addq	$16, %rax	#, tmp638
	movzwl	ScalingList4x4(%rax,%rax), %eax	# ScalingList4x4, D.4851
	cwtl
.L94:
	.loc 1 481 0 discriminator 3
	imull	%edx, %eax	# D.4850, D.4850
	movl	-68(%rbp), %edx	# i, tmp640
	movslq	%edx, %rdx	# tmp640, tmp639
	movl	-60(%rbp), %ecx	# k, tmp642
	movslq	%ecx, %rsi	# tmp642, tmp641
	movl	-64(%rbp), %ecx	# j, tmp644
	movslq	%ecx, %rcx	# tmp644, tmp643
	salq	$2, %rsi	#, tmp645
	addq	%rsi, %rcx	# tmp645, tmp646
	salq	$2, %rcx	#, tmp647
	addq	%rcx, %rdx	# tmp647, tmp648
	movl	%eax, InvLevelScale4x4Chroma_Intra(,%rdx,4)	# D.4850, InvLevelScale4x4Chroma_Intra
.L90:
	.loc 1 484 0 is_stmt 1
	movl	-40(%rbp), %eax	# present, D.4850
	testl	%eax, %eax	# D.4850
	jne	.L95	#,
	.loc 1 486 0
	movl	-68(%rbp), %eax	# i, tmp650
	cltq
	movl	-60(%rbp), %edx	# k, tmp652
	movslq	%edx, %rcx	# tmp652, tmp651
	movl	-64(%rbp), %edx	# j, tmp654
	movslq	%edx, %rdx	# tmp654, tmp653
	salq	$2, %rcx	#, tmp655
	addq	%rcx, %rdx	# tmp655, tmp656
	salq	$2, %rdx	#, tmp657
	addq	%rdx, %rax	# tmp657, tmp658
	movl	LevelScale4x4Chroma_Intra(,%rax,4), %eax	# LevelScale4x4Chroma_Intra, D.4850
	movl	-68(%rbp), %edx	# i, tmp660
	movslq	%edx, %rdx	# tmp660, tmp659
	movl	-60(%rbp), %ecx	# k, tmp662
	movslq	%ecx, %rsi	# tmp662, tmp661
	movl	-64(%rbp), %ecx	# j, tmp664
	movslq	%ecx, %rcx	# tmp664, tmp663
	salq	$2, %rsi	#, tmp665
	addq	%rsi, %rcx	# tmp665, tmp666
	salq	$2, %rcx	#, tmp667
	addq	%rcx, %rdx	# tmp667, tmp668
	addq	$96, %rdx	#, tmp669
	movl	%eax, LevelScale4x4Chroma_Intra(,%rdx,4)	# D.4850, LevelScale4x4Chroma_Intra
	.loc 1 487 0
	movl	-68(%rbp), %eax	# i, tmp671
	cltq
	movl	-60(%rbp), %edx	# k, tmp673
	movslq	%edx, %rcx	# tmp673, tmp672
	movl	-64(%rbp), %edx	# j, tmp675
	movslq	%edx, %rdx	# tmp675, tmp674
	salq	$2, %rcx	#, tmp676
	addq	%rcx, %rdx	# tmp676, tmp677
	salq	$2, %rdx	#, tmp678
	addq	%rdx, %rax	# tmp678, tmp679
	movl	InvLevelScale4x4Chroma_Intra(,%rax,4), %eax	# InvLevelScale4x4Chroma_Intra, D.4850
	movl	-68(%rbp), %edx	# i, tmp681
	movslq	%edx, %rdx	# tmp681, tmp680
	movl	-60(%rbp), %ecx	# k, tmp683
	movslq	%ecx, %rsi	# tmp683, tmp682
	movl	-64(%rbp), %ecx	# j, tmp685
	movslq	%ecx, %rcx	# tmp685, tmp684
	salq	$2, %rsi	#, tmp686
	addq	%rsi, %rcx	# tmp686, tmp687
	salq	$2, %rcx	#, tmp688
	addq	%rcx, %rdx	# tmp688, tmp689
	addq	$96, %rdx	#, tmp690
	movl	%eax, InvLevelScale4x4Chroma_Intra(,%rdx,4)	# D.4850, InvLevelScale4x4Chroma_Intra
	jmp	.L96	#
.L95:
	.loc 1 491 0
	movl	-68(%rbp), %eax	# i, tmp692
	cltq
	movl	-60(%rbp), %edx	# k, tmp694
	movslq	%edx, %rcx	# tmp694, tmp693
	movl	-64(%rbp), %edx	# j, tmp696
	movslq	%edx, %rdx	# tmp696, tmp695
	salq	$2, %rcx	#, tmp697
	addq	%rcx, %rdx	# tmp697, tmp698
	salq	$2, %rdx	#, tmp699
	addq	%rdx, %rax	# tmp699, tmp700
	movl	quant_coef(,%rax,4), %eax	# quant_coef, D.4850
	sall	$4, %eax	#, D.4850
	movl	%eax, %ecx	# D.4850, D.4850
	movzwl	UseDefaultScalingMatrix4x4Flag+4(%rip), %eax	# UseDefaultScalingMatrix4x4Flag, D.4851
	testw	%ax, %ax	# D.4851
	je	.L97	#,
	.loc 1 491 0 is_stmt 0 discriminator 1
	movl	-52(%rbp), %eax	# temp, tmp702
	cltq
	movzwl	Quant_intra_default(%rax,%rax), %eax	# Quant_intra_default, D.4851
	movswl	%ax, %edi	# D.4851, iftmp.21
	jmp	.L98	#
.L97:
	.loc 1 491 0 discriminator 2
	movl	-52(%rbp), %eax	# temp, tmp704
	cltq
	addq	$32, %rax	#, tmp705
	movzwl	ScalingList4x4(%rax,%rax), %eax	# ScalingList4x4, D.4851
	movswl	%ax, %edi	# D.4851, iftmp.21
.L98:
	.loc 1 491 0 discriminator 3
	movl	%ecx, %eax	# D.4850, tmp706
	cltd
	idivl	%edi	# iftmp.21
	movl	-68(%rbp), %edx	# i, tmp709
	movslq	%edx, %rdx	# tmp709, tmp708
	movl	-60(%rbp), %ecx	# k, tmp711
	movslq	%ecx, %rsi	# tmp711, tmp710
	movl	-64(%rbp), %ecx	# j, tmp713
	movslq	%ecx, %rcx	# tmp713, tmp712
	salq	$2, %rsi	#, tmp714
	addq	%rsi, %rcx	# tmp714, tmp715
	salq	$2, %rcx	#, tmp716
	addq	%rcx, %rdx	# tmp716, tmp717
	addq	$96, %rdx	#, tmp718
	movl	%eax, LevelScale4x4Chroma_Intra(,%rdx,4)	# D.4850, LevelScale4x4Chroma_Intra
	.loc 1 492 0 is_stmt 1 discriminator 3
	movl	-68(%rbp), %eax	# i, tmp720
	cltq
	movl	-60(%rbp), %edx	# k, tmp722
	movslq	%edx, %rcx	# tmp722, tmp721
	movl	-64(%rbp), %edx	# j, tmp724
	movslq	%edx, %rdx	# tmp724, tmp723
	salq	$2, %rcx	#, tmp725
	addq	%rcx, %rdx	# tmp725, tmp726
	salq	$2, %rdx	#, tmp727
	addq	%rdx, %rax	# tmp727, tmp728
	movl	dequant_coef(,%rax,4), %edx	# dequant_coef, D.4850
	movzwl	UseDefaultScalingMatrix4x4Flag+4(%rip), %eax	# UseDefaultScalingMatrix4x4Flag, D.4851
	testw	%ax, %ax	# D.4851
	je	.L99	#,
	.loc 1 492 0 is_stmt 0 discriminator 1
	movl	-52(%rbp), %eax	# temp, tmp730
	cltq
	movzwl	Quant_intra_default(%rax,%rax), %eax	# Quant_intra_default, D.4851
	cwtl
	jmp	.L100	#
.L99:
	.loc 1 492 0 discriminator 2
	movl	-52(%rbp), %eax	# temp, tmp732
	cltq
	addq	$32, %rax	#, tmp733
	movzwl	ScalingList4x4(%rax,%rax), %eax	# ScalingList4x4, D.4851
	cwtl
.L100:
	.loc 1 492 0 discriminator 3
	imull	%edx, %eax	# D.4850, D.4850
	movl	-68(%rbp), %edx	# i, tmp735
	movslq	%edx, %rdx	# tmp735, tmp734
	movl	-60(%rbp), %ecx	# k, tmp737
	movslq	%ecx, %rsi	# tmp737, tmp736
	movl	-64(%rbp), %ecx	# j, tmp739
	movslq	%ecx, %rcx	# tmp739, tmp738
	salq	$2, %rsi	#, tmp740
	addq	%rsi, %rcx	# tmp740, tmp741
	salq	$2, %rcx	#, tmp742
	addq	%rcx, %rdx	# tmp742, tmp743
	addq	$96, %rdx	#, tmp744
	movl	%eax, InvLevelScale4x4Chroma_Intra(,%rdx,4)	# D.4850, InvLevelScale4x4Chroma_Intra
.L96:
	.loc 1 495 0 is_stmt 1
	movl	-36(%rbp), %eax	# present, D.4850
	testl	%eax, %eax	# D.4850
	je	.L101	#,
	.loc 1 495 0 is_stmt 0 discriminator 1
	movzwl	UseDefaultScalingMatrix4x4Flag+6(%rip), %eax	# UseDefaultScalingMatrix4x4Flag, D.4851
	testw	%ax, %ax	# D.4851
	je	.L102	#,
.L101:
	.loc 1 497 0 is_stmt 1
	movl	-68(%rbp), %eax	# i, tmp746
	cltq
	movl	-60(%rbp), %edx	# k, tmp748
	movslq	%edx, %rcx	# tmp748, tmp747
	movl	-64(%rbp), %edx	# j, tmp750
	movslq	%edx, %rdx	# tmp750, tmp749
	salq	$2, %rcx	#, tmp751
	addq	%rcx, %rdx	# tmp751, tmp752
	salq	$2, %rdx	#, tmp753
	addq	%rdx, %rax	# tmp753, tmp754
	movl	quant_coef(,%rax,4), %eax	# quant_coef, D.4850
	sall	$4, %eax	#, D.4850
	movl	%eax, %ecx	# D.4850, D.4850
	movl	-52(%rbp), %eax	# temp, tmp756
	cltq
	movzwl	Quant_inter_default(%rax,%rax), %eax	# Quant_inter_default, D.4851
	movswl	%ax, %edi	# D.4851, D.4850
	movl	%ecx, %eax	# D.4850, tmp757
	cltd
	idivl	%edi	# D.4850
	movl	-68(%rbp), %edx	# i, tmp760
	movslq	%edx, %rdx	# tmp760, tmp759
	movl	-60(%rbp), %ecx	# k, tmp762
	movslq	%ecx, %rsi	# tmp762, tmp761
	movl	-64(%rbp), %ecx	# j, tmp764
	movslq	%ecx, %rcx	# tmp764, tmp763
	salq	$2, %rsi	#, tmp765
	addq	%rsi, %rcx	# tmp765, tmp766
	salq	$2, %rcx	#, tmp767
	addq	%rcx, %rdx	# tmp767, tmp768
	movl	%eax, LevelScale4x4Luma_Inter(,%rdx,4)	# D.4850, LevelScale4x4Luma_Inter
	.loc 1 498 0
	movl	-68(%rbp), %eax	# i, tmp770
	cltq
	movl	-60(%rbp), %edx	# k, tmp772
	movslq	%edx, %rcx	# tmp772, tmp771
	movl	-64(%rbp), %edx	# j, tmp774
	movslq	%edx, %rdx	# tmp774, tmp773
	salq	$2, %rcx	#, tmp775
	addq	%rcx, %rdx	# tmp775, tmp776
	salq	$2, %rdx	#, tmp777
	addq	%rdx, %rax	# tmp777, tmp778
	movl	dequant_coef(,%rax,4), %edx	# dequant_coef, D.4850
	movl	-52(%rbp), %eax	# temp, tmp780
	cltq
	movzwl	Quant_inter_default(%rax,%rax), %eax	# Quant_inter_default, D.4851
	cwtl
	imull	%edx, %eax	# D.4850, D.4850
	movl	-68(%rbp), %edx	# i, tmp782
	movslq	%edx, %rdx	# tmp782, tmp781
	movl	-60(%rbp), %ecx	# k, tmp784
	movslq	%ecx, %rsi	# tmp784, tmp783
	movl	-64(%rbp), %ecx	# j, tmp786
	movslq	%ecx, %rcx	# tmp786, tmp785
	salq	$2, %rsi	#, tmp787
	addq	%rsi, %rcx	# tmp787, tmp788
	salq	$2, %rcx	#, tmp789
	addq	%rcx, %rdx	# tmp789, tmp790
	movl	%eax, InvLevelScale4x4Luma_Inter(,%rdx,4)	# D.4850, InvLevelScale4x4Luma_Inter
	jmp	.L103	#
.L102:
	.loc 1 502 0
	movl	-68(%rbp), %eax	# i, tmp792
	cltq
	movl	-60(%rbp), %edx	# k, tmp794
	movslq	%edx, %rcx	# tmp794, tmp793
	movl	-64(%rbp), %edx	# j, tmp796
	movslq	%edx, %rdx	# tmp796, tmp795
	salq	$2, %rcx	#, tmp797
	addq	%rcx, %rdx	# tmp797, tmp798
	salq	$2, %rdx	#, tmp799
	addq	%rdx, %rax	# tmp799, tmp800
	movl	quant_coef(,%rax,4), %eax	# quant_coef, D.4850
	sall	$4, %eax	#, D.4850
	movl	-52(%rbp), %edx	# temp, tmp802
	movslq	%edx, %rdx	# tmp802, tmp801
	addq	$48, %rdx	#, tmp803
	movzwl	ScalingList4x4(%rdx,%rdx), %edx	# ScalingList4x4, D.4851
	movswl	%dx, %ebx	# D.4851, D.4850
	cltd
	idivl	%ebx	# D.4850
	movl	-68(%rbp), %edx	# i, tmp807
	movslq	%edx, %rdx	# tmp807, tmp806
	movl	-60(%rbp), %ecx	# k, tmp809
	movslq	%ecx, %rsi	# tmp809, tmp808
	movl	-64(%rbp), %ecx	# j, tmp811
	movslq	%ecx, %rcx	# tmp811, tmp810
	salq	$2, %rsi	#, tmp812
	addq	%rsi, %rcx	# tmp812, tmp813
	salq	$2, %rcx	#, tmp814
	addq	%rcx, %rdx	# tmp814, tmp815
	movl	%eax, LevelScale4x4Luma_Inter(,%rdx,4)	# D.4850, LevelScale4x4Luma_Inter
	.loc 1 503 0
	movl	-68(%rbp), %eax	# i, tmp817
	cltq
	movl	-60(%rbp), %edx	# k, tmp819
	movslq	%edx, %rcx	# tmp819, tmp818
	movl	-64(%rbp), %edx	# j, tmp821
	movslq	%edx, %rdx	# tmp821, tmp820
	salq	$2, %rcx	#, tmp822
	addq	%rcx, %rdx	# tmp822, tmp823
	salq	$2, %rdx	#, tmp824
	addq	%rdx, %rax	# tmp824, tmp825
	movl	dequant_coef(,%rax,4), %edx	# dequant_coef, D.4850
	movl	-52(%rbp), %eax	# temp, tmp827
	cltq
	addq	$48, %rax	#, tmp828
	movzwl	ScalingList4x4(%rax,%rax), %eax	# ScalingList4x4, D.4851
	cwtl
	imull	%edx, %eax	# D.4850, D.4850
	movl	-68(%rbp), %edx	# i, tmp830
	movslq	%edx, %rdx	# tmp830, tmp829
	movl	-60(%rbp), %ecx	# k, tmp832
	movslq	%ecx, %rsi	# tmp832, tmp831
	movl	-64(%rbp), %ecx	# j, tmp834
	movslq	%ecx, %rcx	# tmp834, tmp833
	salq	$2, %rsi	#, tmp835
	addq	%rsi, %rcx	# tmp835, tmp836
	salq	$2, %rcx	#, tmp837
	addq	%rcx, %rdx	# tmp837, tmp838
	movl	%eax, InvLevelScale4x4Luma_Inter(,%rdx,4)	# D.4850, InvLevelScale4x4Luma_Inter
.L103:
	.loc 1 506 0
	movl	-32(%rbp), %eax	# present, D.4850
	testl	%eax, %eax	# D.4850
	jne	.L104	#,
	.loc 1 508 0
	movl	-68(%rbp), %eax	# i, tmp840
	cltq
	movl	-60(%rbp), %edx	# k, tmp842
	movslq	%edx, %rcx	# tmp842, tmp841
	movl	-64(%rbp), %edx	# j, tmp844
	movslq	%edx, %rdx	# tmp844, tmp843
	salq	$2, %rcx	#, tmp845
	addq	%rcx, %rdx	# tmp845, tmp846
	salq	$2, %rdx	#, tmp847
	addq	%rdx, %rax	# tmp847, tmp848
	movl	LevelScale4x4Luma_Inter(,%rax,4), %eax	# LevelScale4x4Luma_Inter, D.4850
	movl	-68(%rbp), %edx	# i, tmp850
	movslq	%edx, %rdx	# tmp850, tmp849
	movl	-60(%rbp), %ecx	# k, tmp852
	movslq	%ecx, %rsi	# tmp852, tmp851
	movl	-64(%rbp), %ecx	# j, tmp854
	movslq	%ecx, %rcx	# tmp854, tmp853
	salq	$2, %rsi	#, tmp855
	addq	%rsi, %rcx	# tmp855, tmp856
	salq	$2, %rcx	#, tmp857
	addq	%rcx, %rdx	# tmp857, tmp858
	movl	%eax, LevelScale4x4Chroma_Inter(,%rdx,4)	# D.4850, LevelScale4x4Chroma_Inter
	.loc 1 509 0
	movl	-68(%rbp), %eax	# i, tmp860
	cltq
	movl	-60(%rbp), %edx	# k, tmp862
	movslq	%edx, %rcx	# tmp862, tmp861
	movl	-64(%rbp), %edx	# j, tmp864
	movslq	%edx, %rdx	# tmp864, tmp863
	salq	$2, %rcx	#, tmp865
	addq	%rcx, %rdx	# tmp865, tmp866
	salq	$2, %rdx	#, tmp867
	addq	%rdx, %rax	# tmp867, tmp868
	movl	InvLevelScale4x4Luma_Inter(,%rax,4), %eax	# InvLevelScale4x4Luma_Inter, D.4850
	movl	-68(%rbp), %edx	# i, tmp870
	movslq	%edx, %rdx	# tmp870, tmp869
	movl	-60(%rbp), %ecx	# k, tmp872
	movslq	%ecx, %rsi	# tmp872, tmp871
	movl	-64(%rbp), %ecx	# j, tmp874
	movslq	%ecx, %rcx	# tmp874, tmp873
	salq	$2, %rsi	#, tmp875
	addq	%rsi, %rcx	# tmp875, tmp876
	salq	$2, %rcx	#, tmp877
	addq	%rcx, %rdx	# tmp877, tmp878
	movl	%eax, InvLevelScale4x4Chroma_Inter(,%rdx,4)	# D.4850, InvLevelScale4x4Chroma_Inter
	jmp	.L105	#
.L104:
	.loc 1 513 0
	movl	-68(%rbp), %eax	# i, tmp880
	cltq
	movl	-60(%rbp), %edx	# k, tmp882
	movslq	%edx, %rcx	# tmp882, tmp881
	movl	-64(%rbp), %edx	# j, tmp884
	movslq	%edx, %rdx	# tmp884, tmp883
	salq	$2, %rcx	#, tmp885
	addq	%rcx, %rdx	# tmp885, tmp886
	salq	$2, %rdx	#, tmp887
	addq	%rdx, %rax	# tmp887, tmp888
	movl	quant_coef(,%rax,4), %eax	# quant_coef, D.4850
	sall	$4, %eax	#, D.4850
	movl	%eax, %ecx	# D.4850, D.4850
	movzwl	UseDefaultScalingMatrix4x4Flag+8(%rip), %eax	# UseDefaultScalingMatrix4x4Flag, D.4851
	testw	%ax, %ax	# D.4851
	je	.L106	#,
	.loc 1 513 0 is_stmt 0 discriminator 1
	movl	-52(%rbp), %eax	# temp, tmp890
	cltq
	movzwl	Quant_inter_default(%rax,%rax), %eax	# Quant_inter_default, D.4851
	movswl	%ax, %ebx	# D.4851, iftmp.23
	jmp	.L107	#
.L106:
	.loc 1 513 0 discriminator 2
	movl	-52(%rbp), %eax	# temp, tmp892
	cltq
	addq	$64, %rax	#, tmp893
	movzwl	ScalingList4x4(%rax,%rax), %eax	# ScalingList4x4, D.4851
	movswl	%ax, %ebx	# D.4851, iftmp.23
.L107:
	.loc 1 513 0 discriminator 3
	movl	%ecx, %eax	# D.4850, tmp894
	cltd
	idivl	%ebx	# iftmp.23
	movl	-68(%rbp), %edx	# i, tmp897
	movslq	%edx, %rdx	# tmp897, tmp896
	movl	-60(%rbp), %ecx	# k, tmp899
	movslq	%ecx, %rsi	# tmp899, tmp898
	movl	-64(%rbp), %ecx	# j, tmp901
	movslq	%ecx, %rcx	# tmp901, tmp900
	salq	$2, %rsi	#, tmp902
	addq	%rsi, %rcx	# tmp902, tmp903
	salq	$2, %rcx	#, tmp904
	addq	%rcx, %rdx	# tmp904, tmp905
	movl	%eax, LevelScale4x4Chroma_Inter(,%rdx,4)	# D.4850, LevelScale4x4Chroma_Inter
	.loc 1 514 0 is_stmt 1 discriminator 3
	movl	-68(%rbp), %eax	# i, tmp907
	cltq
	movl	-60(%rbp), %edx	# k, tmp909
	movslq	%edx, %rcx	# tmp909, tmp908
	movl	-64(%rbp), %edx	# j, tmp911
	movslq	%edx, %rdx	# tmp911, tmp910
	salq	$2, %rcx	#, tmp912
	addq	%rcx, %rdx	# tmp912, tmp913
	salq	$2, %rdx	#, tmp914
	addq	%rdx, %rax	# tmp914, tmp915
	movl	dequant_coef(,%rax,4), %edx	# dequant_coef, D.4850
	movzwl	UseDefaultScalingMatrix4x4Flag+8(%rip), %eax	# UseDefaultScalingMatrix4x4Flag, D.4851
	testw	%ax, %ax	# D.4851
	je	.L108	#,
	.loc 1 514 0 is_stmt 0 discriminator 1
	movl	-52(%rbp), %eax	# temp, tmp917
	cltq
	movzwl	Quant_inter_default(%rax,%rax), %eax	# Quant_inter_default, D.4851
	cwtl
	jmp	.L109	#
.L108:
	.loc 1 514 0 discriminator 2
	movl	-52(%rbp), %eax	# temp, tmp919
	cltq
	addq	$64, %rax	#, tmp920
	movzwl	ScalingList4x4(%rax,%rax), %eax	# ScalingList4x4, D.4851
	cwtl
.L109:
	.loc 1 514 0 discriminator 3
	imull	%edx, %eax	# D.4850, D.4850
	movl	-68(%rbp), %edx	# i, tmp922
	movslq	%edx, %rdx	# tmp922, tmp921
	movl	-60(%rbp), %ecx	# k, tmp924
	movslq	%ecx, %rsi	# tmp924, tmp923
	movl	-64(%rbp), %ecx	# j, tmp926
	movslq	%ecx, %rcx	# tmp926, tmp925
	salq	$2, %rsi	#, tmp927
	addq	%rsi, %rcx	# tmp927, tmp928
	salq	$2, %rcx	#, tmp929
	addq	%rcx, %rdx	# tmp929, tmp930
	movl	%eax, InvLevelScale4x4Chroma_Inter(,%rdx,4)	# D.4850, InvLevelScale4x4Chroma_Inter
.L105:
	.loc 1 517 0 is_stmt 1
	movl	-28(%rbp), %eax	# present, D.4850
	testl	%eax, %eax	# D.4850
	jne	.L110	#,
	.loc 1 519 0
	movl	-68(%rbp), %eax	# i, tmp932
	cltq
	movl	-60(%rbp), %edx	# k, tmp934
	movslq	%edx, %rcx	# tmp934, tmp933
	movl	-64(%rbp), %edx	# j, tmp936
	movslq	%edx, %rdx	# tmp936, tmp935
	salq	$2, %rcx	#, tmp937
	addq	%rcx, %rdx	# tmp937, tmp938
	salq	$2, %rdx	#, tmp939
	addq	%rdx, %rax	# tmp939, tmp940
	movl	LevelScale4x4Chroma_Inter(,%rax,4), %eax	# LevelScale4x4Chroma_Inter, D.4850
	movl	-68(%rbp), %edx	# i, tmp942
	movslq	%edx, %rdx	# tmp942, tmp941
	movl	-60(%rbp), %ecx	# k, tmp944
	movslq	%ecx, %rsi	# tmp944, tmp943
	movl	-64(%rbp), %ecx	# j, tmp946
	movslq	%ecx, %rcx	# tmp946, tmp945
	salq	$2, %rsi	#, tmp947
	addq	%rsi, %rcx	# tmp947, tmp948
	salq	$2, %rcx	#, tmp949
	addq	%rcx, %rdx	# tmp949, tmp950
	addq	$96, %rdx	#, tmp951
	movl	%eax, LevelScale4x4Chroma_Inter(,%rdx,4)	# D.4850, LevelScale4x4Chroma_Inter
	.loc 1 520 0
	movl	-68(%rbp), %eax	# i, tmp953
	cltq
	movl	-60(%rbp), %edx	# k, tmp955
	movslq	%edx, %rcx	# tmp955, tmp954
	movl	-64(%rbp), %edx	# j, tmp957
	movslq	%edx, %rdx	# tmp957, tmp956
	salq	$2, %rcx	#, tmp958
	addq	%rcx, %rdx	# tmp958, tmp959
	salq	$2, %rdx	#, tmp960
	addq	%rdx, %rax	# tmp960, tmp961
	movl	InvLevelScale4x4Chroma_Inter(,%rax,4), %eax	# InvLevelScale4x4Chroma_Inter, D.4850
	movl	-68(%rbp), %edx	# i, tmp963
	movslq	%edx, %rdx	# tmp963, tmp962
	movl	-60(%rbp), %ecx	# k, tmp965
	movslq	%ecx, %rsi	# tmp965, tmp964
	movl	-64(%rbp), %ecx	# j, tmp967
	movslq	%ecx, %rcx	# tmp967, tmp966
	salq	$2, %rsi	#, tmp968
	addq	%rsi, %rcx	# tmp968, tmp969
	salq	$2, %rcx	#, tmp970
	addq	%rcx, %rdx	# tmp970, tmp971
	addq	$96, %rdx	#, tmp972
	movl	%eax, InvLevelScale4x4Chroma_Inter(,%rdx,4)	# D.4850, InvLevelScale4x4Chroma_Inter
	jmp	.L111	#
.L110:
	.loc 1 524 0
	movl	-68(%rbp), %eax	# i, tmp974
	cltq
	movl	-60(%rbp), %edx	# k, tmp976
	movslq	%edx, %rcx	# tmp976, tmp975
	movl	-64(%rbp), %edx	# j, tmp978
	movslq	%edx, %rdx	# tmp978, tmp977
	salq	$2, %rcx	#, tmp979
	addq	%rcx, %rdx	# tmp979, tmp980
	salq	$2, %rdx	#, tmp981
	addq	%rdx, %rax	# tmp981, tmp982
	movl	quant_coef(,%rax,4), %eax	# quant_coef, D.4850
	sall	$4, %eax	#, D.4850
	movl	%eax, %ecx	# D.4850, D.4850
	movzwl	UseDefaultScalingMatrix4x4Flag+10(%rip), %eax	# UseDefaultScalingMatrix4x4Flag, D.4851
	testw	%ax, %ax	# D.4851
	je	.L112	#,
	.loc 1 524 0 is_stmt 0 discriminator 1
	movl	-52(%rbp), %eax	# temp, tmp984
	cltq
	movzwl	Quant_inter_default(%rax,%rax), %eax	# Quant_inter_default, D.4851
	movswl	%ax, %edi	# D.4851, iftmp.25
	jmp	.L113	#
.L112:
	.loc 1 524 0 discriminator 2
	movl	-52(%rbp), %eax	# temp, tmp986
	cltq
	addq	$80, %rax	#, tmp987
	movzwl	ScalingList4x4(%rax,%rax), %eax	# ScalingList4x4, D.4851
	movswl	%ax, %edi	# D.4851, iftmp.25
.L113:
	.loc 1 524 0 discriminator 3
	movl	%ecx, %eax	# D.4850, tmp988
	cltd
	idivl	%edi	# iftmp.25
	movl	-68(%rbp), %edx	# i, tmp991
	movslq	%edx, %rdx	# tmp991, tmp990
	movl	-60(%rbp), %ecx	# k, tmp993
	movslq	%ecx, %rsi	# tmp993, tmp992
	movl	-64(%rbp), %ecx	# j, tmp995
	movslq	%ecx, %rcx	# tmp995, tmp994
	salq	$2, %rsi	#, tmp996
	addq	%rsi, %rcx	# tmp996, tmp997
	salq	$2, %rcx	#, tmp998
	addq	%rcx, %rdx	# tmp998, tmp999
	addq	$96, %rdx	#, tmp1000
	movl	%eax, LevelScale4x4Chroma_Inter(,%rdx,4)	# D.4850, LevelScale4x4Chroma_Inter
	.loc 1 525 0 is_stmt 1 discriminator 3
	movl	-68(%rbp), %eax	# i, tmp1002
	cltq
	movl	-60(%rbp), %edx	# k, tmp1004
	movslq	%edx, %rcx	# tmp1004, tmp1003
	movl	-64(%rbp), %edx	# j, tmp1006
	movslq	%edx, %rdx	# tmp1006, tmp1005
	salq	$2, %rcx	#, tmp1007
	addq	%rcx, %rdx	# tmp1007, tmp1008
	salq	$2, %rdx	#, tmp1009
	addq	%rdx, %rax	# tmp1009, tmp1010
	movl	dequant_coef(,%rax,4), %edx	# dequant_coef, D.4850
	movzwl	UseDefaultScalingMatrix4x4Flag+10(%rip), %eax	# UseDefaultScalingMatrix4x4Flag, D.4851
	testw	%ax, %ax	# D.4851
	je	.L114	#,
	.loc 1 525 0 is_stmt 0 discriminator 1
	movl	-52(%rbp), %eax	# temp, tmp1012
	cltq
	movzwl	Quant_inter_default(%rax,%rax), %eax	# Quant_inter_default, D.4851
	cwtl
	jmp	.L115	#
.L114:
	.loc 1 525 0 discriminator 2
	movl	-52(%rbp), %eax	# temp, tmp1014
	cltq
	addq	$80, %rax	#, tmp1015
	movzwl	ScalingList4x4(%rax,%rax), %eax	# ScalingList4x4, D.4851
	cwtl
.L115:
	.loc 1 525 0 discriminator 3
	imull	%edx, %eax	# D.4850, D.4850
	movl	-68(%rbp), %edx	# i, tmp1017
	movslq	%edx, %rdx	# tmp1017, tmp1016
	movl	-60(%rbp), %ecx	# k, tmp1019
	movslq	%ecx, %rsi	# tmp1019, tmp1018
	movl	-64(%rbp), %ecx	# j, tmp1021
	movslq	%ecx, %rcx	# tmp1021, tmp1020
	salq	$2, %rsi	#, tmp1022
	addq	%rsi, %rcx	# tmp1022, tmp1023
	salq	$2, %rcx	#, tmp1024
	addq	%rcx, %rdx	# tmp1024, tmp1025
	addq	$96, %rdx	#, tmp1026
	movl	%eax, InvLevelScale4x4Chroma_Inter(,%rdx,4)	# D.4850, InvLevelScale4x4Chroma_Inter
.L111:
	.loc 1 459 0 is_stmt 1
	addl	$1, -68(%rbp)	#, i
.L85:
	.loc 1 459 0 is_stmt 0 discriminator 1
	cmpl	$3, -68(%rbp)	#, i
	jle	.L116	#,
	.loc 1 458 0 is_stmt 1
	addl	$1, -64(%rbp)	#, j
.L84:
	.loc 1 458 0 is_stmt 0 discriminator 1
	cmpl	$3, -64(%rbp)	#, j
	jle	.L117	#,
	.loc 1 457 0 is_stmt 1
	addl	$1, -60(%rbp)	#, k
.L83:
	.loc 1 457 0 is_stmt 0 discriminator 1
	cmpl	$5, -60(%rbp)	#, k
	jle	.L118	#,
.L64:
	.loc 1 529 0 is_stmt 1
	addq	$72, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	CalculateQuantParam, .-CalculateQuantParam
	.globl	CalculateQuant8Param
	.type	CalculateQuant8Param, @function
CalculateQuant8Param:
.LFB7:
	.loc 1 539 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$56, %rsp	#,
	.cfi_offset 3, -24
	.loc 1 542 0
	movl	$0, -40(%rbp)	#, no_q_matrix
	.loc 1 544 0
	movq	active_sps(%rip), %rax	# active_sps, active_sps.27
	movl	36(%rax), %eax	# active_sps.27_11->seq_scaling_matrix_present_flag, D.4852
	testl	%eax, %eax	# D.4852
	jne	.L120	#,
	.loc 1 544 0 is_stmt 0 discriminator 1
	movq	active_pps(%rip), %rax	# active_pps, active_pps.28
	movl	20(%rax), %eax	# active_pps.28_13->pic_scaling_matrix_present_flag, D.4852
	testl	%eax, %eax	# D.4852
	jne	.L120	#,
	.loc 1 545 0 is_stmt 1
	movl	$1, -40(%rbp)	#, no_q_matrix
	jmp	.L121	#
.L120:
	.loc 1 548 0
	leaq	-32(%rbp), %rax	#, tmp122
	movl	$8, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp122,
	call	memset	#
	.loc 1 550 0
	movq	active_sps(%rip), %rax	# active_sps, active_sps.29
	movl	36(%rax), %eax	# active_sps.29_16->seq_scaling_matrix_present_flag, D.4852
	testl	%eax, %eax	# D.4852
	je	.L122	#,
	.loc 1 551 0
	movl	$0, -52(%rbp)	#, i
	jmp	.L123	#
.L124:
	.loc 1 552 0 discriminator 2
	movq	active_sps(%rip), %rax	# active_sps, active_sps.30
	movl	-52(%rbp), %edx	# i, tmp123
	addl	$6, %edx	#, D.4853
	movslq	%edx, %rdx	# D.4853, tmp124
	addq	$8, %rdx	#, tmp125
	movl	8(%rax,%rdx,4), %edx	# active_sps.30_19->seq_scaling_list_present_flag, D.4853
	movl	-52(%rbp), %eax	# i, tmp127
	cltq
	movl	%edx, -32(%rbp,%rax,4)	# D.4853, present
	.loc 1 551 0 discriminator 2
	addl	$1, -52(%rbp)	#, i
.L123:
	.loc 1 551 0 is_stmt 0 discriminator 1
	cmpl	$1, -52(%rbp)	#, i
	jle	.L124	#,
.L122:
	.loc 1 554 0 is_stmt 1
	movq	active_pps(%rip), %rax	# active_pps, active_pps.31
	movl	20(%rax), %eax	# active_pps.31_23->pic_scaling_matrix_present_flag, D.4852
	testl	%eax, %eax	# D.4852
	je	.L121	#,
	.loc 1 555 0
	movl	$0, -52(%rbp)	#, i
	jmp	.L125	#
.L126:
	.loc 1 556 0 discriminator 2
	movl	-52(%rbp), %eax	# i, tmp129
	cltq
	movl	-32(%rbp,%rax,4), %edx	# present, D.4853
	movq	active_pps(%rip), %rax	# active_pps, active_pps.32
	movl	-52(%rbp), %ecx	# i, tmp130
	addl	$6, %ecx	#, D.4853
	movslq	%ecx, %rcx	# D.4853, tmp131
	addq	$4, %rcx	#, tmp132
	movl	8(%rax,%rcx,4), %eax	# active_pps.32_27->pic_scaling_list_present_flag, D.4853
	orl	%eax, %edx	# D.4853, D.4853
	movl	-52(%rbp), %eax	# i, tmp134
	cltq
	movl	%edx, -32(%rbp,%rax,4)	# D.4853, present
	.loc 1 555 0 discriminator 2
	addl	$1, -52(%rbp)	#, i
.L125:
	.loc 1 555 0 is_stmt 0 discriminator 1
	cmpl	$1, -52(%rbp)	#, i
	jle	.L126	#,
.L121:
	.loc 1 559 0 is_stmt 1
	cmpl	$1, -40(%rbp)	#, no_q_matrix
	jne	.L127	#,
	.loc 1 561 0
	movl	$0, -44(%rbp)	#, k
	jmp	.L128	#
.L133:
	.loc 1 562 0
	movl	$0, -48(%rbp)	#, j
	jmp	.L129	#
.L132:
	.loc 1 563 0
	movl	$0, -52(%rbp)	#, i
	jmp	.L130	#
.L131:
	.loc 1 565 0 discriminator 2
	movl	-52(%rbp), %eax	# i, tmp136
	cltq
	movl	-44(%rbp), %edx	# k, tmp138
	movslq	%edx, %rcx	# tmp138, tmp137
	movl	-48(%rbp), %edx	# j, tmp140
	movslq	%edx, %rdx	# tmp140, tmp139
	salq	$3, %rcx	#, tmp141
	addq	%rcx, %rdx	# tmp141, tmp142
	salq	$3, %rdx	#, tmp143
	addq	%rdx, %rax	# tmp143, tmp144
	movl	quant_coef8(,%rax,4), %eax	# quant_coef8, D.4853
	movl	-52(%rbp), %edx	# i, tmp146
	movslq	%edx, %rdx	# tmp146, tmp145
	movl	-44(%rbp), %ecx	# k, tmp148
	movslq	%ecx, %rsi	# tmp148, tmp147
	movl	-48(%rbp), %ecx	# j, tmp150
	movslq	%ecx, %rcx	# tmp150, tmp149
	salq	$3, %rsi	#, tmp151
	addq	%rsi, %rcx	# tmp151, tmp152
	salq	$3, %rcx	#, tmp153
	addq	%rcx, %rdx	# tmp153, tmp154
	movl	%eax, LevelScale8x8Luma_Intra(,%rdx,4)	# D.4853, LevelScale8x8Luma_Intra
	.loc 1 566 0 discriminator 2
	movl	-52(%rbp), %eax	# i, tmp156
	cltq
	movl	-44(%rbp), %edx	# k, tmp158
	movslq	%edx, %rcx	# tmp158, tmp157
	movl	-48(%rbp), %edx	# j, tmp160
	movslq	%edx, %rdx	# tmp160, tmp159
	salq	$3, %rcx	#, tmp161
	addq	%rcx, %rdx	# tmp161, tmp162
	salq	$3, %rdx	#, tmp163
	addq	%rdx, %rax	# tmp163, tmp164
	movl	dequant_coef8(,%rax,4), %eax	# dequant_coef8, D.4853
	sall	$4, %eax	#, D.4853
	movl	%eax, %edx	# D.4853, D.4853
	movl	-52(%rbp), %eax	# i, tmp166
	cltq
	movl	-44(%rbp), %ecx	# k, tmp168
	movslq	%ecx, %rsi	# tmp168, tmp167
	movl	-48(%rbp), %ecx	# j, tmp170
	movslq	%ecx, %rcx	# tmp170, tmp169
	salq	$3, %rsi	#, tmp171
	addq	%rsi, %rcx	# tmp171, tmp172
	salq	$3, %rcx	#, tmp173
	addq	%rcx, %rax	# tmp173, tmp174
	movl	%edx, InvLevelScale8x8Luma_Intra(,%rax,4)	# D.4853, InvLevelScale8x8Luma_Intra
	.loc 1 568 0 discriminator 2
	movl	-52(%rbp), %eax	# i, tmp176
	cltq
	movl	-44(%rbp), %edx	# k, tmp178
	movslq	%edx, %rcx	# tmp178, tmp177
	movl	-48(%rbp), %edx	# j, tmp180
	movslq	%edx, %rdx	# tmp180, tmp179
	salq	$3, %rcx	#, tmp181
	addq	%rcx, %rdx	# tmp181, tmp182
	salq	$3, %rdx	#, tmp183
	addq	%rdx, %rax	# tmp183, tmp184
	movl	quant_coef8(,%rax,4), %eax	# quant_coef8, D.4853
	movl	-52(%rbp), %edx	# i, tmp186
	movslq	%edx, %rdx	# tmp186, tmp185
	movl	-44(%rbp), %ecx	# k, tmp188
	movslq	%ecx, %rsi	# tmp188, tmp187
	movl	-48(%rbp), %ecx	# j, tmp190
	movslq	%ecx, %rcx	# tmp190, tmp189
	salq	$3, %rsi	#, tmp191
	addq	%rsi, %rcx	# tmp191, tmp192
	salq	$3, %rcx	#, tmp193
	addq	%rcx, %rdx	# tmp193, tmp194
	movl	%eax, LevelScale8x8Luma_Inter(,%rdx,4)	# D.4853, LevelScale8x8Luma_Inter
	.loc 1 569 0 discriminator 2
	movl	-52(%rbp), %eax	# i, tmp196
	cltq
	movl	-44(%rbp), %edx	# k, tmp198
	movslq	%edx, %rcx	# tmp198, tmp197
	movl	-48(%rbp), %edx	# j, tmp200
	movslq	%edx, %rdx	# tmp200, tmp199
	salq	$3, %rcx	#, tmp201
	addq	%rcx, %rdx	# tmp201, tmp202
	salq	$3, %rdx	#, tmp203
	addq	%rdx, %rax	# tmp203, tmp204
	movl	dequant_coef8(,%rax,4), %eax	# dequant_coef8, D.4853
	sall	$4, %eax	#, D.4853
	movl	%eax, %edx	# D.4853, D.4853
	movl	-52(%rbp), %eax	# i, tmp206
	cltq
	movl	-44(%rbp), %ecx	# k, tmp208
	movslq	%ecx, %rsi	# tmp208, tmp207
	movl	-48(%rbp), %ecx	# j, tmp210
	movslq	%ecx, %rcx	# tmp210, tmp209
	salq	$3, %rsi	#, tmp211
	addq	%rsi, %rcx	# tmp211, tmp212
	salq	$3, %rcx	#, tmp213
	addq	%rcx, %rax	# tmp213, tmp214
	movl	%edx, InvLevelScale8x8Luma_Inter(,%rax,4)	# D.4853, InvLevelScale8x8Luma_Inter
	.loc 1 563 0 discriminator 2
	addl	$1, -52(%rbp)	#, i
.L130:
	.loc 1 563 0 is_stmt 0 discriminator 1
	cmpl	$7, -52(%rbp)	#, i
	jle	.L131	#,
	.loc 1 562 0 is_stmt 1
	addl	$1, -48(%rbp)	#, j
.L129:
	.loc 1 562 0 is_stmt 0 discriminator 1
	cmpl	$7, -48(%rbp)	#, j
	jle	.L132	#,
	.loc 1 561 0 is_stmt 1
	addl	$1, -44(%rbp)	#, k
.L128:
	.loc 1 561 0 is_stmt 0 discriminator 1
	cmpl	$5, -44(%rbp)	#, k
	jle	.L133	#,
	jmp	.L119	#
.L127:
	.loc 1 574 0 is_stmt 1
	movl	$0, -44(%rbp)	#, k
	jmp	.L135	#
.L146:
	.loc 1 575 0
	movl	$0, -48(%rbp)	#, j
	jmp	.L136	#
.L145:
	.loc 1 576 0
	movl	$0, -52(%rbp)	#, i
	jmp	.L137	#
.L144:
	.loc 1 578 0
	movl	-52(%rbp), %eax	# i, tmp215
	leal	0(,%rax,8), %edx	#, D.4853
	movl	-48(%rbp), %eax	# j, tmp219
	addl	%edx, %eax	# D.4853, tmp218
	movl	%eax, -36(%rbp)	# tmp218, temp
	.loc 1 579 0
	movl	-32(%rbp), %eax	# present, D.4853
	testl	%eax, %eax	# D.4853
	je	.L138	#,
	.loc 1 579 0 is_stmt 0 discriminator 1
	movzwl	UseDefaultScalingMatrix8x8Flag(%rip), %eax	# UseDefaultScalingMatrix8x8Flag, D.4854
	testw	%ax, %ax	# D.4854
	je	.L139	#,
.L138:
	.loc 1 581 0 is_stmt 1
	movl	-52(%rbp), %eax	# i, tmp221
	cltq
	movl	-44(%rbp), %edx	# k, tmp223
	movslq	%edx, %rcx	# tmp223, tmp222
	movl	-48(%rbp), %edx	# j, tmp225
	movslq	%edx, %rdx	# tmp225, tmp224
	salq	$3, %rcx	#, tmp226
	addq	%rcx, %rdx	# tmp226, tmp227
	salq	$3, %rdx	#, tmp228
	addq	%rdx, %rax	# tmp228, tmp229
	movl	quant_coef8(,%rax,4), %eax	# quant_coef8, D.4853
	sall	$4, %eax	#, D.4853
	movl	%eax, %ecx	# D.4853, D.4853
	movl	-36(%rbp), %eax	# temp, tmp231
	cltq
	movzwl	Quant8_intra_default(%rax,%rax), %eax	# Quant8_intra_default, D.4854
	movswl	%ax, %edi	# D.4854, D.4853
	movl	%ecx, %eax	# D.4853, tmp232
	cltd
	idivl	%edi	# D.4853
	movl	-52(%rbp), %edx	# i, tmp235
	movslq	%edx, %rdx	# tmp235, tmp234
	movl	-44(%rbp), %ecx	# k, tmp237
	movslq	%ecx, %rsi	# tmp237, tmp236
	movl	-48(%rbp), %ecx	# j, tmp239
	movslq	%ecx, %rcx	# tmp239, tmp238
	salq	$3, %rsi	#, tmp240
	addq	%rsi, %rcx	# tmp240, tmp241
	salq	$3, %rcx	#, tmp242
	addq	%rcx, %rdx	# tmp242, tmp243
	movl	%eax, LevelScale8x8Luma_Intra(,%rdx,4)	# D.4853, LevelScale8x8Luma_Intra
	.loc 1 582 0
	movl	-52(%rbp), %eax	# i, tmp245
	cltq
	movl	-44(%rbp), %edx	# k, tmp247
	movslq	%edx, %rcx	# tmp247, tmp246
	movl	-48(%rbp), %edx	# j, tmp249
	movslq	%edx, %rdx	# tmp249, tmp248
	salq	$3, %rcx	#, tmp250
	addq	%rcx, %rdx	# tmp250, tmp251
	salq	$3, %rdx	#, tmp252
	addq	%rdx, %rax	# tmp252, tmp253
	movl	dequant_coef8(,%rax,4), %edx	# dequant_coef8, D.4853
	movl	-36(%rbp), %eax	# temp, tmp255
	cltq
	movzwl	Quant8_intra_default(%rax,%rax), %eax	# Quant8_intra_default, D.4854
	cwtl
	imull	%edx, %eax	# D.4853, D.4853
	movl	-52(%rbp), %edx	# i, tmp257
	movslq	%edx, %rdx	# tmp257, tmp256
	movl	-44(%rbp), %ecx	# k, tmp259
	movslq	%ecx, %rsi	# tmp259, tmp258
	movl	-48(%rbp), %ecx	# j, tmp261
	movslq	%ecx, %rcx	# tmp261, tmp260
	salq	$3, %rsi	#, tmp262
	addq	%rsi, %rcx	# tmp262, tmp263
	salq	$3, %rcx	#, tmp264
	addq	%rcx, %rdx	# tmp264, tmp265
	movl	%eax, InvLevelScale8x8Luma_Intra(,%rdx,4)	# D.4853, InvLevelScale8x8Luma_Intra
	jmp	.L140	#
.L139:
	.loc 1 586 0
	movl	-52(%rbp), %eax	# i, tmp267
	cltq
	movl	-44(%rbp), %edx	# k, tmp269
	movslq	%edx, %rcx	# tmp269, tmp268
	movl	-48(%rbp), %edx	# j, tmp271
	movslq	%edx, %rdx	# tmp271, tmp270
	salq	$3, %rcx	#, tmp272
	addq	%rcx, %rdx	# tmp272, tmp273
	salq	$3, %rdx	#, tmp274
	addq	%rdx, %rax	# tmp274, tmp275
	movl	quant_coef8(,%rax,4), %eax	# quant_coef8, D.4853
	sall	$4, %eax	#, D.4853
	movl	%eax, %ecx	# D.4853, D.4853
	movl	-36(%rbp), %eax	# temp, tmp277
	cltq
	movzwl	ScalingList8x8(%rax,%rax), %eax	# ScalingList8x8, D.4854
	movswl	%ax, %ebx	# D.4854, D.4853
	movl	%ecx, %eax	# D.4853, tmp278
	cltd
	idivl	%ebx	# D.4853
	movl	-52(%rbp), %edx	# i, tmp281
	movslq	%edx, %rdx	# tmp281, tmp280
	movl	-44(%rbp), %ecx	# k, tmp283
	movslq	%ecx, %rsi	# tmp283, tmp282
	movl	-48(%rbp), %ecx	# j, tmp285
	movslq	%ecx, %rcx	# tmp285, tmp284
	salq	$3, %rsi	#, tmp286
	addq	%rsi, %rcx	# tmp286, tmp287
	salq	$3, %rcx	#, tmp288
	addq	%rcx, %rdx	# tmp288, tmp289
	movl	%eax, LevelScale8x8Luma_Intra(,%rdx,4)	# D.4853, LevelScale8x8Luma_Intra
	.loc 1 587 0
	movl	-52(%rbp), %eax	# i, tmp291
	cltq
	movl	-44(%rbp), %edx	# k, tmp293
	movslq	%edx, %rcx	# tmp293, tmp292
	movl	-48(%rbp), %edx	# j, tmp295
	movslq	%edx, %rdx	# tmp295, tmp294
	salq	$3, %rcx	#, tmp296
	addq	%rcx, %rdx	# tmp296, tmp297
	salq	$3, %rdx	#, tmp298
	addq	%rdx, %rax	# tmp298, tmp299
	movl	dequant_coef8(,%rax,4), %edx	# dequant_coef8, D.4853
	movl	-36(%rbp), %eax	# temp, tmp301
	cltq
	movzwl	ScalingList8x8(%rax,%rax), %eax	# ScalingList8x8, D.4854
	cwtl
	imull	%edx, %eax	# D.4853, D.4853
	movl	-52(%rbp), %edx	# i, tmp303
	movslq	%edx, %rdx	# tmp303, tmp302
	movl	-44(%rbp), %ecx	# k, tmp305
	movslq	%ecx, %rsi	# tmp305, tmp304
	movl	-48(%rbp), %ecx	# j, tmp307
	movslq	%ecx, %rcx	# tmp307, tmp306
	salq	$3, %rsi	#, tmp308
	addq	%rsi, %rcx	# tmp308, tmp309
	salq	$3, %rcx	#, tmp310
	addq	%rcx, %rdx	# tmp310, tmp311
	movl	%eax, InvLevelScale8x8Luma_Intra(,%rdx,4)	# D.4853, InvLevelScale8x8Luma_Intra
.L140:
	.loc 1 590 0
	movl	-28(%rbp), %eax	# present, D.4853
	testl	%eax, %eax	# D.4853
	je	.L141	#,
	.loc 1 590 0 is_stmt 0 discriminator 1
	movzwl	UseDefaultScalingMatrix8x8Flag+2(%rip), %eax	# UseDefaultScalingMatrix8x8Flag, D.4854
	testw	%ax, %ax	# D.4854
	je	.L142	#,
.L141:
	.loc 1 592 0 is_stmt 1
	movl	-52(%rbp), %eax	# i, tmp313
	cltq
	movl	-44(%rbp), %edx	# k, tmp315
	movslq	%edx, %rcx	# tmp315, tmp314
	movl	-48(%rbp), %edx	# j, tmp317
	movslq	%edx, %rdx	# tmp317, tmp316
	salq	$3, %rcx	#, tmp318
	addq	%rcx, %rdx	# tmp318, tmp319
	salq	$3, %rdx	#, tmp320
	addq	%rdx, %rax	# tmp320, tmp321
	movl	quant_coef8(,%rax,4), %eax	# quant_coef8, D.4853
	sall	$4, %eax	#, D.4853
	movl	%eax, %ecx	# D.4853, D.4853
	movl	-36(%rbp), %eax	# temp, tmp323
	cltq
	movzwl	Quant8_inter_default(%rax,%rax), %eax	# Quant8_inter_default, D.4854
	movswl	%ax, %edi	# D.4854, D.4853
	movl	%ecx, %eax	# D.4853, tmp324
	cltd
	idivl	%edi	# D.4853
	movl	-52(%rbp), %edx	# i, tmp327
	movslq	%edx, %rdx	# tmp327, tmp326
	movl	-44(%rbp), %ecx	# k, tmp329
	movslq	%ecx, %rsi	# tmp329, tmp328
	movl	-48(%rbp), %ecx	# j, tmp331
	movslq	%ecx, %rcx	# tmp331, tmp330
	salq	$3, %rsi	#, tmp332
	addq	%rsi, %rcx	# tmp332, tmp333
	salq	$3, %rcx	#, tmp334
	addq	%rcx, %rdx	# tmp334, tmp335
	movl	%eax, LevelScale8x8Luma_Inter(,%rdx,4)	# D.4853, LevelScale8x8Luma_Inter
	.loc 1 593 0
	movl	-52(%rbp), %eax	# i, tmp337
	cltq
	movl	-44(%rbp), %edx	# k, tmp339
	movslq	%edx, %rcx	# tmp339, tmp338
	movl	-48(%rbp), %edx	# j, tmp341
	movslq	%edx, %rdx	# tmp341, tmp340
	salq	$3, %rcx	#, tmp342
	addq	%rcx, %rdx	# tmp342, tmp343
	salq	$3, %rdx	#, tmp344
	addq	%rdx, %rax	# tmp344, tmp345
	movl	dequant_coef8(,%rax,4), %edx	# dequant_coef8, D.4853
	movl	-36(%rbp), %eax	# temp, tmp347
	cltq
	movzwl	Quant8_inter_default(%rax,%rax), %eax	# Quant8_inter_default, D.4854
	cwtl
	imull	%edx, %eax	# D.4853, D.4853
	movl	-52(%rbp), %edx	# i, tmp349
	movslq	%edx, %rdx	# tmp349, tmp348
	movl	-44(%rbp), %ecx	# k, tmp351
	movslq	%ecx, %rsi	# tmp351, tmp350
	movl	-48(%rbp), %ecx	# j, tmp353
	movslq	%ecx, %rcx	# tmp353, tmp352
	salq	$3, %rsi	#, tmp354
	addq	%rsi, %rcx	# tmp354, tmp355
	salq	$3, %rcx	#, tmp356
	addq	%rcx, %rdx	# tmp356, tmp357
	movl	%eax, InvLevelScale8x8Luma_Inter(,%rdx,4)	# D.4853, InvLevelScale8x8Luma_Inter
	jmp	.L143	#
.L142:
	.loc 1 597 0
	movl	-52(%rbp), %eax	# i, tmp359
	cltq
	movl	-44(%rbp), %edx	# k, tmp361
	movslq	%edx, %rcx	# tmp361, tmp360
	movl	-48(%rbp), %edx	# j, tmp363
	movslq	%edx, %rdx	# tmp363, tmp362
	salq	$3, %rcx	#, tmp364
	addq	%rcx, %rdx	# tmp364, tmp365
	salq	$3, %rdx	#, tmp366
	addq	%rdx, %rax	# tmp366, tmp367
	movl	quant_coef8(,%rax,4), %eax	# quant_coef8, D.4853
	sall	$4, %eax	#, D.4853
	movl	-36(%rbp), %edx	# temp, tmp369
	movslq	%edx, %rdx	# tmp369, tmp368
	addq	$64, %rdx	#, tmp370
	movzwl	ScalingList8x8(%rdx,%rdx), %edx	# ScalingList8x8, D.4854
	movswl	%dx, %ebx	# D.4854, D.4853
	cltd
	idivl	%ebx	# D.4853
	movl	-52(%rbp), %edx	# i, tmp374
	movslq	%edx, %rdx	# tmp374, tmp373
	movl	-44(%rbp), %ecx	# k, tmp376
	movslq	%ecx, %rsi	# tmp376, tmp375
	movl	-48(%rbp), %ecx	# j, tmp378
	movslq	%ecx, %rcx	# tmp378, tmp377
	salq	$3, %rsi	#, tmp379
	addq	%rsi, %rcx	# tmp379, tmp380
	salq	$3, %rcx	#, tmp381
	addq	%rcx, %rdx	# tmp381, tmp382
	movl	%eax, LevelScale8x8Luma_Inter(,%rdx,4)	# D.4853, LevelScale8x8Luma_Inter
	.loc 1 598 0
	movl	-52(%rbp), %eax	# i, tmp384
	cltq
	movl	-44(%rbp), %edx	# k, tmp386
	movslq	%edx, %rcx	# tmp386, tmp385
	movl	-48(%rbp), %edx	# j, tmp388
	movslq	%edx, %rdx	# tmp388, tmp387
	salq	$3, %rcx	#, tmp389
	addq	%rcx, %rdx	# tmp389, tmp390
	salq	$3, %rdx	#, tmp391
	addq	%rdx, %rax	# tmp391, tmp392
	movl	dequant_coef8(,%rax,4), %edx	# dequant_coef8, D.4853
	movl	-36(%rbp), %eax	# temp, tmp394
	cltq
	addq	$64, %rax	#, tmp395
	movzwl	ScalingList8x8(%rax,%rax), %eax	# ScalingList8x8, D.4854
	cwtl
	imull	%edx, %eax	# D.4853, D.4853
	movl	-52(%rbp), %edx	# i, tmp397
	movslq	%edx, %rdx	# tmp397, tmp396
	movl	-44(%rbp), %ecx	# k, tmp399
	movslq	%ecx, %rsi	# tmp399, tmp398
	movl	-48(%rbp), %ecx	# j, tmp401
	movslq	%ecx, %rcx	# tmp401, tmp400
	salq	$3, %rsi	#, tmp402
	addq	%rsi, %rcx	# tmp402, tmp403
	salq	$3, %rcx	#, tmp404
	addq	%rcx, %rdx	# tmp404, tmp405
	movl	%eax, InvLevelScale8x8Luma_Inter(,%rdx,4)	# D.4853, InvLevelScale8x8Luma_Inter
.L143:
	.loc 1 576 0
	addl	$1, -52(%rbp)	#, i
.L137:
	.loc 1 576 0 is_stmt 0 discriminator 1
	cmpl	$7, -52(%rbp)	#, i
	jle	.L144	#,
	.loc 1 575 0 is_stmt 1
	addl	$1, -48(%rbp)	#, j
.L136:
	.loc 1 575 0 is_stmt 0 discriminator 1
	cmpl	$7, -48(%rbp)	#, j
	jle	.L145	#,
	.loc 1 574 0 is_stmt 1
	addl	$1, -44(%rbp)	#, k
.L135:
	.loc 1 574 0 is_stmt 0 discriminator 1
	cmpl	$5, -44(%rbp)	#, k
	jle	.L146	#,
.L119:
	.loc 1 602 0 is_stmt 1
	addq	$56, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	CalculateQuant8Param, .-CalculateQuant8Param
.Letext0:
	.file 2 "defines.h"
	.file 3 "parsetcommon.h"
	.file 4 "global.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x15e3
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF323
	.byte	0x1
	.long	.LASF324
	.long	.LASF325
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF0
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF1
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF2
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF3
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF4
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.long	.LASF5
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF6
	.uleb128 0x4
	.long	0x34
	.long	0x75
	.uleb128 0x5
	.long	0x75
	.byte	0x1
	.byte	0
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF7
	.uleb128 0x6
	.byte	0x8
	.long	0x82
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF8
	.uleb128 0x6
	.byte	0x8
	.long	0x34
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF9
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF10
	.uleb128 0x7
	.long	.LASF13
	.byte	0x2
	.byte	0x1e
	.long	0x3b
	.uleb128 0x8
	.byte	0x4
	.byte	0x3
	.byte	0x2a
	.long	0xbd
	.uleb128 0x9
	.long	.LASF11
	.sleb128 0
	.uleb128 0x9
	.long	.LASF12
	.sleb128 1
	.byte	0
	.uleb128 0x7
	.long	.LASF14
	.byte	0x3
	.byte	0x2d
	.long	0xa8
	.uleb128 0xa
	.value	0x19c
	.byte	0x3
	.byte	0x30
	.long	0x14f
	.uleb128 0xb
	.long	.LASF15
	.byte	0x3
	.byte	0x32
	.long	0x49
	.byte	0
	.uleb128 0xb
	.long	.LASF16
	.byte	0x3
	.byte	0x33
	.long	0x49
	.byte	0x4
	.uleb128 0xb
	.long	.LASF17
	.byte	0x3
	.byte	0x34
	.long	0x49
	.byte	0x8
	.uleb128 0xb
	.long	.LASF18
	.byte	0x3
	.byte	0x35
	.long	0x14f
	.byte	0xc
	.uleb128 0xb
	.long	.LASF19
	.byte	0x3
	.byte	0x36
	.long	0x14f
	.byte	0x8c
	.uleb128 0xc
	.long	.LASF20
	.byte	0x3
	.byte	0x37
	.long	0x14f
	.value	0x10c
	.uleb128 0xc
	.long	.LASF21
	.byte	0x3
	.byte	0x38
	.long	0x49
	.value	0x18c
	.uleb128 0xc
	.long	.LASF22
	.byte	0x3
	.byte	0x39
	.long	0x49
	.value	0x190
	.uleb128 0xc
	.long	.LASF23
	.byte	0x3
	.byte	0x3a
	.long	0x49
	.value	0x194
	.uleb128 0xc
	.long	.LASF24
	.byte	0x3
	.byte	0x3b
	.long	0x49
	.value	0x198
	.byte	0
	.uleb128 0x4
	.long	0x49
	.long	0x15f
	.uleb128 0x5
	.long	0x75
	.byte	0x1f
	.byte	0
	.uleb128 0x7
	.long	.LASF25
	.byte	0x3
	.byte	0x3c
	.long	0xc8
	.uleb128 0xa
	.value	0x3b4
	.byte	0x3
	.byte	0x3f
	.long	0x30b
	.uleb128 0xb
	.long	.LASF26
	.byte	0x3
	.byte	0x41
	.long	0xbd
	.byte	0
	.uleb128 0xb
	.long	.LASF27
	.byte	0x3
	.byte	0x42
	.long	0x49
	.byte	0x4
	.uleb128 0xb
	.long	.LASF28
	.byte	0x3
	.byte	0x43
	.long	0x49
	.byte	0x8
	.uleb128 0xb
	.long	.LASF29
	.byte	0x3
	.byte	0x44
	.long	0x49
	.byte	0xc
	.uleb128 0xb
	.long	.LASF30
	.byte	0x3
	.byte	0x45
	.long	0xbd
	.byte	0x10
	.uleb128 0xb
	.long	.LASF31
	.byte	0x3
	.byte	0x46
	.long	0xbd
	.byte	0x14
	.uleb128 0xb
	.long	.LASF32
	.byte	0x3
	.byte	0x47
	.long	0xbd
	.byte	0x18
	.uleb128 0xb
	.long	.LASF33
	.byte	0x3
	.byte	0x48
	.long	0x49
	.byte	0x1c
	.uleb128 0xb
	.long	.LASF34
	.byte	0x3
	.byte	0x49
	.long	0xbd
	.byte	0x20
	.uleb128 0xb
	.long	.LASF35
	.byte	0x3
	.byte	0x4a
	.long	0xbd
	.byte	0x24
	.uleb128 0xb
	.long	.LASF36
	.byte	0x3
	.byte	0x4b
	.long	0x49
	.byte	0x28
	.uleb128 0xb
	.long	.LASF37
	.byte	0x3
	.byte	0x4c
	.long	0x49
	.byte	0x2c
	.uleb128 0xb
	.long	.LASF38
	.byte	0x3
	.byte	0x4d
	.long	0x49
	.byte	0x30
	.uleb128 0xb
	.long	.LASF39
	.byte	0x3
	.byte	0x4e
	.long	0xbd
	.byte	0x34
	.uleb128 0xb
	.long	.LASF40
	.byte	0x3
	.byte	0x4f
	.long	0x49
	.byte	0x38
	.uleb128 0xb
	.long	.LASF41
	.byte	0x3
	.byte	0x50
	.long	0x49
	.byte	0x3c
	.uleb128 0xb
	.long	.LASF42
	.byte	0x3
	.byte	0x51
	.long	0xbd
	.byte	0x40
	.uleb128 0xb
	.long	.LASF43
	.byte	0x3
	.byte	0x52
	.long	0x49
	.byte	0x44
	.uleb128 0xb
	.long	.LASF44
	.byte	0x3
	.byte	0x53
	.long	0x49
	.byte	0x48
	.uleb128 0xb
	.long	.LASF45
	.byte	0x3
	.byte	0x54
	.long	0xbd
	.byte	0x4c
	.uleb128 0xb
	.long	.LASF46
	.byte	0x3
	.byte	0x55
	.long	0xbd
	.byte	0x50
	.uleb128 0xb
	.long	.LASF47
	.byte	0x3
	.byte	0x56
	.long	0x15f
	.byte	0x54
	.uleb128 0xc
	.long	.LASF48
	.byte	0x3
	.byte	0x57
	.long	0xbd
	.value	0x1f0
	.uleb128 0xc
	.long	.LASF49
	.byte	0x3
	.byte	0x58
	.long	0x15f
	.value	0x1f4
	.uleb128 0xc
	.long	.LASF50
	.byte	0x3
	.byte	0x5a
	.long	0xbd
	.value	0x390
	.uleb128 0xc
	.long	.LASF51
	.byte	0x3
	.byte	0x5b
	.long	0xbd
	.value	0x394
	.uleb128 0xc
	.long	.LASF52
	.byte	0x3
	.byte	0x5c
	.long	0xbd
	.value	0x398
	.uleb128 0xc
	.long	.LASF53
	.byte	0x3
	.byte	0x5d
	.long	0x49
	.value	0x39c
	.uleb128 0xc
	.long	.LASF54
	.byte	0x3
	.byte	0x5e
	.long	0x49
	.value	0x3a0
	.uleb128 0xc
	.long	.LASF55
	.byte	0x3
	.byte	0x5f
	.long	0x49
	.value	0x3a4
	.uleb128 0xc
	.long	.LASF56
	.byte	0x3
	.byte	0x60
	.long	0x49
	.value	0x3a8
	.uleb128 0xc
	.long	.LASF57
	.byte	0x3
	.byte	0x61
	.long	0x49
	.value	0x3ac
	.uleb128 0xc
	.long	.LASF58
	.byte	0x3
	.byte	0x62
	.long	0x49
	.value	0x3b0
	.byte	0
	.uleb128 0x7
	.long	.LASF59
	.byte	0x3
	.byte	0x63
	.long	0x16a
	.uleb128 0xd
	.byte	0xf0
	.byte	0x3
	.byte	0x67
	.long	0x487
	.uleb128 0xb
	.long	.LASF60
	.byte	0x3
	.byte	0x69
	.long	0xbd
	.byte	0
	.uleb128 0xb
	.long	.LASF61
	.byte	0x3
	.byte	0x6a
	.long	0x49
	.byte	0x4
	.uleb128 0xb
	.long	.LASF62
	.byte	0x3
	.byte	0x6b
	.long	0x49
	.byte	0x8
	.uleb128 0xb
	.long	.LASF63
	.byte	0x3
	.byte	0x6c
	.long	0xbd
	.byte	0xc
	.uleb128 0xb
	.long	.LASF64
	.byte	0x3
	.byte	0x6e
	.long	0xbd
	.byte	0x10
	.uleb128 0xb
	.long	.LASF65
	.byte	0x3
	.byte	0x6f
	.long	0xbd
	.byte	0x14
	.uleb128 0xb
	.long	.LASF66
	.byte	0x3
	.byte	0x70
	.long	0x487
	.byte	0x18
	.uleb128 0xb
	.long	.LASF67
	.byte	0x3
	.byte	0x73
	.long	0xbd
	.byte	0x38
	.uleb128 0xb
	.long	.LASF68
	.byte	0x3
	.byte	0x74
	.long	0x49
	.byte	0x3c
	.uleb128 0xb
	.long	.LASF69
	.byte	0x3
	.byte	0x75
	.long	0x49
	.byte	0x40
	.uleb128 0xb
	.long	.LASF70
	.byte	0x3
	.byte	0x77
	.long	0x497
	.byte	0x44
	.uleb128 0xb
	.long	.LASF71
	.byte	0x3
	.byte	0x79
	.long	0x497
	.byte	0x64
	.uleb128 0xb
	.long	.LASF72
	.byte	0x3
	.byte	0x7a
	.long	0x497
	.byte	0x84
	.uleb128 0xb
	.long	.LASF73
	.byte	0x3
	.byte	0x7c
	.long	0xbd
	.byte	0xa4
	.uleb128 0xb
	.long	.LASF74
	.byte	0x3
	.byte	0x7d
	.long	0x49
	.byte	0xa8
	.uleb128 0xb
	.long	.LASF75
	.byte	0x3
	.byte	0x7f
	.long	0x49
	.byte	0xac
	.uleb128 0xb
	.long	.LASF76
	.byte	0x3
	.byte	0x80
	.long	0x4a7
	.byte	0xb0
	.uleb128 0xb
	.long	.LASF77
	.byte	0x3
	.byte	0x82
	.long	0x34
	.byte	0xb8
	.uleb128 0xb
	.long	.LASF78
	.byte	0x3
	.byte	0x83
	.long	0x34
	.byte	0xbc
	.uleb128 0xb
	.long	.LASF79
	.byte	0x3
	.byte	0x84
	.long	0xbd
	.byte	0xc0
	.uleb128 0xb
	.long	.LASF80
	.byte	0x3
	.byte	0x85
	.long	0x49
	.byte	0xc4
	.uleb128 0xb
	.long	.LASF81
	.byte	0x3
	.byte	0x86
	.long	0x34
	.byte	0xc8
	.uleb128 0xb
	.long	.LASF82
	.byte	0x3
	.byte	0x87
	.long	0x34
	.byte	0xcc
	.uleb128 0xb
	.long	.LASF83
	.byte	0x3
	.byte	0x88
	.long	0x34
	.byte	0xd0
	.uleb128 0xb
	.long	.LASF84
	.byte	0x3
	.byte	0x8a
	.long	0x34
	.byte	0xd4
	.uleb128 0xb
	.long	.LASF85
	.byte	0x3
	.byte	0x8b
	.long	0x34
	.byte	0xd8
	.uleb128 0xb
	.long	.LASF86
	.byte	0x3
	.byte	0x8d
	.long	0xbd
	.byte	0xdc
	.uleb128 0xb
	.long	.LASF87
	.byte	0x3
	.byte	0x8e
	.long	0xbd
	.byte	0xe0
	.uleb128 0xb
	.long	.LASF88
	.byte	0x3
	.byte	0x8f
	.long	0xbd
	.byte	0xe4
	.uleb128 0xb
	.long	.LASF89
	.byte	0x3
	.byte	0x90
	.long	0xbd
	.byte	0xe8
	.byte	0
	.uleb128 0x4
	.long	0x34
	.long	0x497
	.uleb128 0x5
	.long	0x75
	.byte	0x7
	.byte	0
	.uleb128 0x4
	.long	0x49
	.long	0x4a7
	.uleb128 0x5
	.long	0x75
	.byte	0x7
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x9d
	.uleb128 0x7
	.long	.LASF90
	.byte	0x3
	.byte	0x91
	.long	0x316
	.uleb128 0xa
	.value	0x854
	.byte	0x3
	.byte	0x95
	.long	0x674
	.uleb128 0xb
	.long	.LASF60
	.byte	0x3
	.byte	0x97
	.long	0xbd
	.byte	0
	.uleb128 0xb
	.long	.LASF91
	.byte	0x3
	.byte	0x99
	.long	0x49
	.byte	0x4
	.uleb128 0xb
	.long	.LASF92
	.byte	0x3
	.byte	0x9a
	.long	0xbd
	.byte	0x8
	.uleb128 0xb
	.long	.LASF93
	.byte	0x3
	.byte	0x9b
	.long	0xbd
	.byte	0xc
	.uleb128 0xb
	.long	.LASF94
	.byte	0x3
	.byte	0x9c
	.long	0xbd
	.byte	0x10
	.uleb128 0xb
	.long	.LASF95
	.byte	0x3
	.byte	0x9d
	.long	0xbd
	.byte	0x14
	.uleb128 0xb
	.long	.LASF96
	.byte	0x3
	.byte	0x9e
	.long	0x49
	.byte	0x18
	.uleb128 0xb
	.long	.LASF62
	.byte	0x3
	.byte	0x9f
	.long	0x49
	.byte	0x1c
	.uleb128 0xb
	.long	.LASF97
	.byte	0x3
	.byte	0xa0
	.long	0x49
	.byte	0x20
	.uleb128 0xb
	.long	.LASF98
	.byte	0x3
	.byte	0xa2
	.long	0xbd
	.byte	0x24
	.uleb128 0xb
	.long	.LASF99
	.byte	0x3
	.byte	0xa3
	.long	0x487
	.byte	0x28
	.uleb128 0xb
	.long	.LASF100
	.byte	0x3
	.byte	0xa5
	.long	0x49
	.byte	0x48
	.uleb128 0xb
	.long	.LASF101
	.byte	0x3
	.byte	0xa6
	.long	0x49
	.byte	0x4c
	.uleb128 0xb
	.long	.LASF102
	.byte	0x3
	.byte	0xa7
	.long	0x49
	.byte	0x50
	.uleb128 0xb
	.long	.LASF103
	.byte	0x3
	.byte	0xa8
	.long	0x49
	.byte	0x54
	.uleb128 0xb
	.long	.LASF104
	.byte	0x3
	.byte	0xaa
	.long	0x49
	.byte	0x58
	.uleb128 0xb
	.long	.LASF105
	.byte	0x3
	.byte	0xac
	.long	0xbd
	.byte	0x5c
	.uleb128 0xb
	.long	.LASF106
	.byte	0x3
	.byte	0xad
	.long	0x34
	.byte	0x60
	.uleb128 0xb
	.long	.LASF107
	.byte	0x3
	.byte	0xae
	.long	0x34
	.byte	0x64
	.uleb128 0xb
	.long	.LASF108
	.byte	0x3
	.byte	0xaf
	.long	0x49
	.byte	0x68
	.uleb128 0xb
	.long	.LASF109
	.byte	0x3
	.byte	0xb1
	.long	0x674
	.byte	0x6c
	.uleb128 0xc
	.long	.LASF110
	.byte	0x3
	.byte	0xb2
	.long	0x49
	.value	0x46c
	.uleb128 0xc
	.long	.LASF111
	.byte	0x3
	.byte	0xb3
	.long	0xbd
	.value	0x470
	.uleb128 0xc
	.long	.LASF112
	.byte	0x3
	.byte	0xb4
	.long	0x49
	.value	0x474
	.uleb128 0xc
	.long	.LASF113
	.byte	0x3
	.byte	0xb5
	.long	0x49
	.value	0x478
	.uleb128 0xc
	.long	.LASF114
	.byte	0x3
	.byte	0xb6
	.long	0xbd
	.value	0x47c
	.uleb128 0xc
	.long	.LASF115
	.byte	0x3
	.byte	0xb8
	.long	0xbd
	.value	0x480
	.uleb128 0xc
	.long	.LASF116
	.byte	0x3
	.byte	0xb9
	.long	0xbd
	.value	0x484
	.uleb128 0xc
	.long	.LASF117
	.byte	0x3
	.byte	0xba
	.long	0xbd
	.value	0x488
	.uleb128 0xc
	.long	.LASF118
	.byte	0x3
	.byte	0xbb
	.long	0x49
	.value	0x48c
	.uleb128 0xc
	.long	.LASF119
	.byte	0x3
	.byte	0xbc
	.long	0x49
	.value	0x490
	.uleb128 0xc
	.long	.LASF120
	.byte	0x3
	.byte	0xbd
	.long	0x49
	.value	0x494
	.uleb128 0xc
	.long	.LASF121
	.byte	0x3
	.byte	0xbe
	.long	0x49
	.value	0x498
	.uleb128 0xc
	.long	.LASF122
	.byte	0x3
	.byte	0xbf
	.long	0xbd
	.value	0x49c
	.uleb128 0xc
	.long	.LASF123
	.byte	0x3
	.byte	0xc0
	.long	0x30b
	.value	0x4a0
	.byte	0
	.uleb128 0x4
	.long	0x34
	.long	0x684
	.uleb128 0x5
	.long	0x75
	.byte	0xff
	.byte	0
	.uleb128 0x7
	.long	.LASF124
	.byte	0x3
	.byte	0xc1
	.long	0x4b8
	.uleb128 0x8
	.byte	0x4
	.byte	0x4
	.byte	0x9b
	.long	0x6ce
	.uleb128 0x9
	.long	.LASF125
	.sleb128 0
	.uleb128 0x9
	.long	.LASF126
	.sleb128 1
	.uleb128 0x9
	.long	.LASF127
	.sleb128 2
	.uleb128 0x9
	.long	.LASF128
	.sleb128 3
	.uleb128 0x9
	.long	.LASF129
	.sleb128 4
	.uleb128 0x9
	.long	.LASF130
	.sleb128 5
	.uleb128 0x9
	.long	.LASF131
	.sleb128 6
	.uleb128 0x9
	.long	.LASF132
	.sleb128 7
	.uleb128 0x9
	.long	.LASF133
	.sleb128 8
	.byte	0
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.long	.LASF134
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF135
	.uleb128 0xe
	.value	0xe08
	.byte	0x4
	.value	0x295
	.long	0xee4
	.uleb128 0xf
	.long	.LASF136
	.byte	0x4
	.value	0x297
	.long	0x34
	.byte	0
	.uleb128 0xf
	.long	.LASF137
	.byte	0x4
	.value	0x298
	.long	0x34
	.byte	0x4
	.uleb128 0xf
	.long	.LASF138
	.byte	0x4
	.value	0x29a
	.long	0x34
	.byte	0x8
	.uleb128 0x10
	.string	"qp0"
	.byte	0x4
	.value	0x29b
	.long	0x34
	.byte	0xc
	.uleb128 0x10
	.string	"qpN"
	.byte	0x4
	.value	0x29c
	.long	0x34
	.byte	0x10
	.uleb128 0xf
	.long	.LASF139
	.byte	0x4
	.value	0x29d
	.long	0x34
	.byte	0x14
	.uleb128 0xf
	.long	.LASF140
	.byte	0x4
	.value	0x29e
	.long	0x34
	.byte	0x18
	.uleb128 0xf
	.long	.LASF141
	.byte	0x4
	.value	0x2a0
	.long	0x34
	.byte	0x1c
	.uleb128 0xf
	.long	.LASF142
	.byte	0x4
	.value	0x2a1
	.long	0x34
	.byte	0x20
	.uleb128 0xf
	.long	.LASF110
	.byte	0x4
	.value	0x2a4
	.long	0x34
	.byte	0x24
	.uleb128 0xf
	.long	.LASF143
	.byte	0x4
	.value	0x2a5
	.long	0x34
	.byte	0x28
	.uleb128 0xf
	.long	.LASF144
	.byte	0x4
	.value	0x2a6
	.long	0x34
	.byte	0x2c
	.uleb128 0xf
	.long	.LASF145
	.byte	0x4
	.value	0x2a7
	.long	0x34
	.byte	0x30
	.uleb128 0xf
	.long	.LASF146
	.byte	0x4
	.value	0x2a8
	.long	0x34
	.byte	0x34
	.uleb128 0xf
	.long	.LASF147
	.byte	0x4
	.value	0x2a9
	.long	0x34
	.byte	0x38
	.uleb128 0xf
	.long	.LASF148
	.byte	0x4
	.value	0x2aa
	.long	0x34
	.byte	0x3c
	.uleb128 0xf
	.long	.LASF149
	.byte	0x4
	.value	0x2ac
	.long	0x34
	.byte	0x40
	.uleb128 0xf
	.long	.LASF150
	.byte	0x4
	.value	0x2ad
	.long	0x34
	.byte	0x44
	.uleb128 0xf
	.long	.LASF151
	.byte	0x4
	.value	0x2ae
	.long	0x34
	.byte	0x48
	.uleb128 0xf
	.long	.LASF152
	.byte	0x4
	.value	0x2af
	.long	0x34
	.byte	0x4c
	.uleb128 0xf
	.long	.LASF153
	.byte	0x4
	.value	0x2b3
	.long	0xee4
	.byte	0x50
	.uleb128 0xf
	.long	.LASF154
	.byte	0x4
	.value	0x2b4
	.long	0xee4
	.byte	0x90
	.uleb128 0xf
	.long	.LASF155
	.byte	0x4
	.value	0x2b5
	.long	0x34
	.byte	0xd0
	.uleb128 0xf
	.long	.LASF156
	.byte	0x4
	.value	0x2b6
	.long	0x34
	.byte	0xd4
	.uleb128 0xf
	.long	.LASF157
	.byte	0x4
	.value	0x2b7
	.long	0x34
	.byte	0xd8
	.uleb128 0xf
	.long	.LASF158
	.byte	0x4
	.value	0x2b8
	.long	0x34
	.byte	0xdc
	.uleb128 0xf
	.long	.LASF159
	.byte	0x4
	.value	0x2b9
	.long	0xefa
	.byte	0xe0
	.uleb128 0x11
	.long	.LASF160
	.byte	0x4
	.value	0x2ba
	.long	0xefa
	.value	0x1a8
	.uleb128 0x11
	.long	.LASF161
	.byte	0x4
	.value	0x2bb
	.long	0xefa
	.value	0x270
	.uleb128 0x11
	.long	.LASF162
	.byte	0x4
	.value	0x2bc
	.long	0xefa
	.value	0x338
	.uleb128 0x11
	.long	.LASF163
	.byte	0x4
	.value	0x2bd
	.long	0xefa
	.value	0x400
	.uleb128 0x11
	.long	.LASF164
	.byte	0x4
	.value	0x2be
	.long	0x34
	.value	0x4c8
	.uleb128 0x11
	.long	.LASF165
	.byte	0x4
	.value	0x2c0
	.long	0x34
	.value	0x4cc
	.uleb128 0x11
	.long	.LASF166
	.byte	0x4
	.value	0x2c1
	.long	0x34
	.value	0x4d0
	.uleb128 0x11
	.long	.LASF167
	.byte	0x4
	.value	0x2c4
	.long	0x34
	.value	0x4d4
	.uleb128 0x12
	.string	"qpB"
	.byte	0x4
	.value	0x2c5
	.long	0x34
	.value	0x4d8
	.uleb128 0x11
	.long	.LASF168
	.byte	0x4
	.value	0x2c6
	.long	0x34
	.value	0x4dc
	.uleb128 0x11
	.long	.LASF169
	.byte	0x4
	.value	0x2c7
	.long	0x34
	.value	0x4e0
	.uleb128 0x11
	.long	.LASF170
	.byte	0x4
	.value	0x2c8
	.long	0x34
	.value	0x4e4
	.uleb128 0x11
	.long	.LASF171
	.byte	0x4
	.value	0x2ca
	.long	0x34
	.value	0x4e8
	.uleb128 0x11
	.long	.LASF172
	.byte	0x4
	.value	0x2cb
	.long	0x34
	.value	0x4ec
	.uleb128 0x11
	.long	.LASF173
	.byte	0x4
	.value	0x2cc
	.long	0x34
	.value	0x4f0
	.uleb128 0x11
	.long	.LASF174
	.byte	0x4
	.value	0x2cd
	.long	0x34
	.value	0x4f4
	.uleb128 0x11
	.long	.LASF175
	.byte	0x4
	.value	0x2d1
	.long	0x34
	.value	0x4f8
	.uleb128 0x11
	.long	.LASF176
	.byte	0x4
	.value	0x2d2
	.long	0x34
	.value	0x4fc
	.uleb128 0x11
	.long	.LASF177
	.byte	0x4
	.value	0x2d3
	.long	0x34
	.value	0x500
	.uleb128 0x11
	.long	.LASF178
	.byte	0x4
	.value	0x2d5
	.long	0x34
	.value	0x504
	.uleb128 0x11
	.long	.LASF179
	.byte	0x4
	.value	0x2d6
	.long	0x34
	.value	0x508
	.uleb128 0x11
	.long	.LASF180
	.byte	0x4
	.value	0x2d7
	.long	0x34
	.value	0x50c
	.uleb128 0x11
	.long	.LASF181
	.byte	0x4
	.value	0x2d8
	.long	0x34
	.value	0x510
	.uleb128 0x11
	.long	.LASF182
	.byte	0x4
	.value	0x2d9
	.long	0x34
	.value	0x514
	.uleb128 0x11
	.long	.LASF183
	.byte	0x4
	.value	0x2da
	.long	0x34
	.value	0x518
	.uleb128 0x11
	.long	.LASF184
	.byte	0x4
	.value	0x2db
	.long	0x34
	.value	0x51c
	.uleb128 0x11
	.long	.LASF185
	.byte	0x4
	.value	0x2dc
	.long	0x34
	.value	0x520
	.uleb128 0x11
	.long	.LASF186
	.byte	0x4
	.value	0x2dd
	.long	0x34
	.value	0x524
	.uleb128 0x11
	.long	.LASF187
	.byte	0x4
	.value	0x2de
	.long	0x34
	.value	0x528
	.uleb128 0x11
	.long	.LASF188
	.byte	0x4
	.value	0x2df
	.long	0xf0a
	.value	0x52c
	.uleb128 0x11
	.long	.LASF189
	.byte	0x4
	.value	0x2e0
	.long	0x34
	.value	0x92c
	.uleb128 0x11
	.long	.LASF190
	.byte	0x4
	.value	0x2e1
	.long	0x34
	.value	0x930
	.uleb128 0x11
	.long	.LASF191
	.byte	0x4
	.value	0x2e3
	.long	0x34
	.value	0x934
	.uleb128 0x11
	.long	.LASF192
	.byte	0x4
	.value	0x2e4
	.long	0x34
	.value	0x938
	.uleb128 0x11
	.long	.LASF193
	.byte	0x4
	.value	0x2e5
	.long	0x34
	.value	0x93c
	.uleb128 0x11
	.long	.LASF194
	.byte	0x4
	.value	0x2e7
	.long	0x34
	.value	0x940
	.uleb128 0x11
	.long	.LASF195
	.byte	0x4
	.value	0x2e8
	.long	0x34
	.value	0x944
	.uleb128 0x11
	.long	.LASF196
	.byte	0x4
	.value	0x2e9
	.long	0x34
	.value	0x948
	.uleb128 0x11
	.long	.LASF197
	.byte	0x4
	.value	0x2ea
	.long	0x34
	.value	0x94c
	.uleb128 0x11
	.long	.LASF198
	.byte	0x4
	.value	0x2eb
	.long	0x34
	.value	0x950
	.uleb128 0x11
	.long	.LASF199
	.byte	0x4
	.value	0x2ec
	.long	0x34
	.value	0x954
	.uleb128 0x11
	.long	.LASF200
	.byte	0x4
	.value	0x2ed
	.long	0x34
	.value	0x958
	.uleb128 0x11
	.long	.LASF201
	.byte	0x4
	.value	0x2ef
	.long	0x34
	.value	0x95c
	.uleb128 0x11
	.long	.LASF202
	.byte	0x4
	.value	0x2f0
	.long	0x34
	.value	0x960
	.uleb128 0x11
	.long	.LASF203
	.byte	0x4
	.value	0x2f1
	.long	0x34
	.value	0x964
	.uleb128 0x11
	.long	.LASF204
	.byte	0x4
	.value	0x2f2
	.long	0x34
	.value	0x968
	.uleb128 0x11
	.long	.LASF205
	.byte	0x4
	.value	0x2f3
	.long	0x34
	.value	0x96c
	.uleb128 0x11
	.long	.LASF206
	.byte	0x4
	.value	0x2f4
	.long	0x34
	.value	0x970
	.uleb128 0x11
	.long	.LASF207
	.byte	0x4
	.value	0x2f5
	.long	0x34
	.value	0x974
	.uleb128 0x11
	.long	.LASF208
	.byte	0x4
	.value	0x2f7
	.long	0x6ce
	.value	0x978
	.uleb128 0x11
	.long	.LASF83
	.byte	0x4
	.value	0x2f9
	.long	0x34
	.value	0x980
	.uleb128 0x11
	.long	.LASF209
	.byte	0x4
	.value	0x2fb
	.long	0x34
	.value	0x984
	.uleb128 0x11
	.long	.LASF210
	.byte	0x4
	.value	0x2fe
	.long	0x34
	.value	0x988
	.uleb128 0x11
	.long	.LASF211
	.byte	0x4
	.value	0x301
	.long	0x34
	.value	0x98c
	.uleb128 0x11
	.long	.LASF212
	.byte	0x4
	.value	0x301
	.long	0x34
	.value	0x990
	.uleb128 0x11
	.long	.LASF213
	.byte	0x4
	.value	0x301
	.long	0x34
	.value	0x994
	.uleb128 0x11
	.long	.LASF214
	.byte	0x4
	.value	0x302
	.long	0x34
	.value	0x998
	.uleb128 0x11
	.long	.LASF215
	.byte	0x4
	.value	0x302
	.long	0x34
	.value	0x99c
	.uleb128 0x11
	.long	.LASF216
	.byte	0x4
	.value	0x304
	.long	0x34
	.value	0x9a0
	.uleb128 0x11
	.long	.LASF217
	.byte	0x4
	.value	0x305
	.long	0x34
	.value	0x9a4
	.uleb128 0x11
	.long	.LASF218
	.byte	0x4
	.value	0x306
	.long	0x34
	.value	0x9a8
	.uleb128 0x11
	.long	.LASF219
	.byte	0x4
	.value	0x309
	.long	0x34
	.value	0x9ac
	.uleb128 0x11
	.long	.LASF220
	.byte	0x4
	.value	0x30a
	.long	0xefa
	.value	0x9b0
	.uleb128 0x11
	.long	.LASF221
	.byte	0x4
	.value	0x30b
	.long	0xefa
	.value	0xa78
	.uleb128 0x11
	.long	.LASF222
	.byte	0x4
	.value	0x30e
	.long	0x34
	.value	0xb40
	.uleb128 0x11
	.long	.LASF223
	.byte	0x4
	.value	0x30f
	.long	0x34
	.value	0xb44
	.uleb128 0x11
	.long	.LASF224
	.byte	0x4
	.value	0x311
	.long	0x34
	.value	0xb48
	.uleb128 0x11
	.long	.LASF225
	.byte	0x4
	.value	0x313
	.long	0x34
	.value	0xb4c
	.uleb128 0x11
	.long	.LASF226
	.byte	0x4
	.value	0x314
	.long	0x34
	.value	0xb50
	.uleb128 0x11
	.long	.LASF227
	.byte	0x4
	.value	0x315
	.long	0x34
	.value	0xb54
	.uleb128 0x11
	.long	.LASF228
	.byte	0x4
	.value	0x316
	.long	0x34
	.value	0xb58
	.uleb128 0x11
	.long	.LASF229
	.byte	0x4
	.value	0x317
	.long	0x34
	.value	0xb5c
	.uleb128 0x11
	.long	.LASF230
	.byte	0x4
	.value	0x318
	.long	0x34
	.value	0xb60
	.uleb128 0x11
	.long	.LASF231
	.byte	0x4
	.value	0x319
	.long	0x34
	.value	0xb64
	.uleb128 0x11
	.long	.LASF232
	.byte	0x4
	.value	0x31b
	.long	0x34
	.value	0xb68
	.uleb128 0x11
	.long	.LASF233
	.byte	0x4
	.value	0x31d
	.long	0x34
	.value	0xb6c
	.uleb128 0x11
	.long	.LASF234
	.byte	0x4
	.value	0x31e
	.long	0x34
	.value	0xb70
	.uleb128 0x11
	.long	.LASF235
	.byte	0x4
	.value	0x31f
	.long	0x34
	.value	0xb74
	.uleb128 0x11
	.long	.LASF236
	.byte	0x4
	.value	0x320
	.long	0x34
	.value	0xb78
	.uleb128 0x11
	.long	.LASF237
	.byte	0x4
	.value	0x322
	.long	0x34
	.value	0xb7c
	.uleb128 0x11
	.long	.LASF238
	.byte	0x4
	.value	0x323
	.long	0x34
	.value	0xb80
	.uleb128 0x11
	.long	.LASF239
	.byte	0x4
	.value	0x324
	.long	0x34
	.value	0xb84
	.uleb128 0x11
	.long	.LASF240
	.byte	0x4
	.value	0x327
	.long	0xefa
	.value	0xb88
	.uleb128 0x11
	.long	.LASF68
	.byte	0x4
	.value	0x328
	.long	0x34
	.value	0xc50
	.uleb128 0x11
	.long	.LASF69
	.byte	0x4
	.value	0x329
	.long	0x34
	.value	0xc54
	.uleb128 0x11
	.long	.LASF71
	.byte	0x4
	.value	0x32b
	.long	0x89
	.value	0xc58
	.uleb128 0x11
	.long	.LASF72
	.byte	0x4
	.value	0x32c
	.long	0x89
	.value	0xc60
	.uleb128 0x11
	.long	.LASF76
	.byte	0x4
	.value	0x32d
	.long	0x4a7
	.value	0xc68
	.uleb128 0x11
	.long	.LASF70
	.byte	0x4
	.value	0x32e
	.long	0x89
	.value	0xc70
	.uleb128 0x11
	.long	.LASF73
	.byte	0x4
	.value	0x330
	.long	0x34
	.value	0xc78
	.uleb128 0x11
	.long	.LASF74
	.byte	0x4
	.value	0x331
	.long	0x34
	.value	0xc7c
	.uleb128 0x11
	.long	.LASF241
	.byte	0x4
	.value	0x332
	.long	0x34
	.value	0xc80
	.uleb128 0x11
	.long	.LASF242
	.byte	0x4
	.value	0x334
	.long	0x34
	.value	0xc84
	.uleb128 0x11
	.long	.LASF103
	.byte	0x4
	.value	0x335
	.long	0x34
	.value	0xc88
	.uleb128 0x11
	.long	.LASF243
	.byte	0x4
	.value	0x337
	.long	0x34
	.value	0xc8c
	.uleb128 0x11
	.long	.LASF244
	.byte	0x4
	.value	0x338
	.long	0x34
	.value	0xc90
	.uleb128 0x11
	.long	.LASF245
	.byte	0x4
	.value	0x339
	.long	0x34
	.value	0xc94
	.uleb128 0x11
	.long	.LASF246
	.byte	0x4
	.value	0x33a
	.long	0x34
	.value	0xc98
	.uleb128 0x11
	.long	.LASF247
	.byte	0x4
	.value	0x33b
	.long	0x34
	.value	0xc9c
	.uleb128 0x11
	.long	.LASF248
	.byte	0x4
	.value	0x33c
	.long	0x34
	.value	0xca0
	.uleb128 0x11
	.long	.LASF249
	.byte	0x4
	.value	0x33f
	.long	0x34
	.value	0xca4
	.uleb128 0x11
	.long	.LASF250
	.byte	0x4
	.value	0x340
	.long	0x34
	.value	0xca8
	.uleb128 0x11
	.long	.LASF251
	.byte	0x4
	.value	0x341
	.long	0x34
	.value	0xcac
	.uleb128 0x11
	.long	.LASF252
	.byte	0x4
	.value	0x342
	.long	0x34
	.value	0xcb0
	.uleb128 0x11
	.long	.LASF253
	.byte	0x4
	.value	0x343
	.long	0x34
	.value	0xcb4
	.uleb128 0x11
	.long	.LASF254
	.byte	0x4
	.value	0x345
	.long	0x34
	.value	0xcb8
	.uleb128 0x11
	.long	.LASF255
	.byte	0x4
	.value	0x346
	.long	0x487
	.value	0xcbc
	.uleb128 0x11
	.long	.LASF256
	.byte	0x4
	.value	0x349
	.long	0x34
	.value	0xcdc
	.uleb128 0x11
	.long	.LASF257
	.byte	0x4
	.value	0x34c
	.long	0x34
	.value	0xce0
	.uleb128 0x11
	.long	.LASF258
	.byte	0x4
	.value	0x34d
	.long	0x34
	.value	0xce4
	.uleb128 0x11
	.long	.LASF259
	.byte	0x4
	.value	0x34e
	.long	0x34
	.value	0xce8
	.uleb128 0x11
	.long	.LASF260
	.byte	0x4
	.value	0x34f
	.long	0x34
	.value	0xcec
	.uleb128 0x11
	.long	.LASF261
	.byte	0x4
	.value	0x350
	.long	0x34
	.value	0xcf0
	.uleb128 0x11
	.long	.LASF84
	.byte	0x4
	.value	0x351
	.long	0x34
	.value	0xcf4
	.uleb128 0x11
	.long	.LASF85
	.byte	0x4
	.value	0x352
	.long	0x34
	.value	0xcf8
	.uleb128 0x11
	.long	.LASF262
	.byte	0x4
	.value	0x355
	.long	0x34
	.value	0xcfc
	.uleb128 0x11
	.long	.LASF263
	.byte	0x4
	.value	0x358
	.long	0x34
	.value	0xd00
	.uleb128 0x11
	.long	.LASF264
	.byte	0x4
	.value	0x35b
	.long	0x34
	.value	0xd04
	.uleb128 0x11
	.long	.LASF265
	.byte	0x4
	.value	0x35c
	.long	0xf1b
	.value	0xd08
	.uleb128 0x11
	.long	.LASF266
	.byte	0x4
	.value	0x35e
	.long	0xefa
	.value	0xd38
	.uleb128 0x11
	.long	.LASF267
	.byte	0x4
	.value	0x35f
	.long	0x34
	.value	0xe00
	.byte	0
	.uleb128 0x4
	.long	0x34
	.long	0xefa
	.uleb128 0x5
	.long	0x75
	.byte	0x7
	.uleb128 0x5
	.long	0x75
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.long	0x82
	.long	0xf0a
	.uleb128 0x5
	.long	0x75
	.byte	0xc7
	.byte	0
	.uleb128 0x4
	.long	0x82
	.long	0xf1b
	.uleb128 0x13
	.long	0x75
	.value	0x3ff
	.byte	0
	.uleb128 0x4
	.long	0x6ce
	.long	0xf2b
	.uleb128 0x5
	.long	0x75
	.byte	0x5
	.byte	0
	.uleb128 0x14
	.long	.LASF268
	.byte	0x4
	.value	0x361
	.long	0x6dc
	.uleb128 0x6
	.byte	0x8
	.long	0x57
	.uleb128 0x15
	.long	.LASF326
	.byte	0x1
	.byte	0x7e
	.long	0x34
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0xf85
	.uleb128 0x16
	.string	"s"
	.byte	0x1
	.byte	0x7e
	.long	0x7c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x17
	.long	.LASF269
	.byte	0x1
	.byte	0x7e
	.long	0x89
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x18
	.string	"i"
	.byte	0x1
	.byte	0x80
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x19
	.long	.LASF280
	.byte	0x1
	.byte	0xa2
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x108d
	.uleb128 0x16
	.string	"buf"
	.byte	0x1
	.byte	0xa2
	.long	0x7c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -8088
	.uleb128 0x17
	.long	.LASF270
	.byte	0x1
	.byte	0xa2
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -8092
	.uleb128 0x1a
	.long	.LASF271
	.byte	0x1
	.byte	0xa4
	.long	0x108d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -8016
	.uleb128 0x1a
	.long	.LASF272
	.byte	0x1
	.byte	0xa5
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -8044
	.uleb128 0x1a
	.long	.LASF273
	.byte	0x1
	.byte	0xa6
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -8072
	.uleb128 0x1a
	.long	.LASF274
	.byte	0x1
	.byte	0xa7
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -8068
	.uleb128 0x1a
	.long	.LASF275
	.byte	0x1
	.byte	0xa7
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -8064
	.uleb128 0x18
	.string	"p"
	.byte	0x1
	.byte	0xa8
	.long	0x7c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -8040
	.uleb128 0x1a
	.long	.LASF276
	.byte	0x1
	.byte	0xa9
	.long	0x7c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -8024
	.uleb128 0x1a
	.long	.LASF277
	.byte	0x1
	.byte	0xaa
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -8080
	.uleb128 0x18
	.string	"i"
	.byte	0x1
	.byte	0xab
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -8060
	.uleb128 0x18
	.string	"j"
	.byte	0x1
	.byte	0xab
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -8056
	.uleb128 0x1a
	.long	.LASF278
	.byte	0x1
	.byte	0xab
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -8052
	.uleb128 0x1a
	.long	.LASF269
	.byte	0x1
	.byte	0xab
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -8076
	.uleb128 0x18
	.string	"cnt"
	.byte	0x1
	.byte	0xab
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -8048
	.uleb128 0x1a
	.long	.LASF279
	.byte	0x1
	.byte	0xac
	.long	0xf37
	.uleb128 0x3
	.byte	0x91
	.sleb128 -8032
	.byte	0
	.uleb128 0x4
	.long	0x7c
	.long	0x109e
	.uleb128 0x13
	.long	0x75
	.value	0x3e7
	.byte	0
	.uleb128 0x1b
	.long	.LASF281
	.byte	0x1
	.value	0x11c
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x10f7
	.uleb128 0x1c
	.long	.LASF279
	.byte	0x1
	.value	0x11e
	.long	0xf37
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1d
	.string	"i"
	.byte	0x1
	.value	0x11f
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1d
	.string	"cnt"
	.byte	0x1
	.value	0x11f
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1c
	.long	.LASF282
	.byte	0x1
	.value	0x11f
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x1b
	.long	.LASF283
	.byte	0x1
	.value	0x171
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x1125
	.uleb128 0x1c
	.long	.LASF284
	.byte	0x1
	.value	0x173
	.long	0x7c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1b
	.long	.LASF285
	.byte	0x1
	.value	0x194
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x119d
	.uleb128 0x1d
	.string	"i"
	.byte	0x1
	.value	0x196
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x1d
	.string	"j"
	.byte	0x1
	.value	0x196
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1d
	.string	"k"
	.byte	0x1
	.value	0x196
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x1c
	.long	.LASF286
	.byte	0x1
	.value	0x196
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x1c
	.long	.LASF287
	.byte	0x1
	.value	0x197
	.long	0x119d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1c
	.long	.LASF288
	.byte	0x1
	.value	0x198
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.uleb128 0x4
	.long	0x34
	.long	0x11ad
	.uleb128 0x5
	.long	0x75
	.byte	0x5
	.byte	0
	.uleb128 0x1e
	.long	.LASF327
	.byte	0x1
	.value	0x21a
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x1221
	.uleb128 0x1d
	.string	"i"
	.byte	0x1
	.value	0x21c
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x1d
	.string	"j"
	.byte	0x1
	.value	0x21c
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1d
	.string	"k"
	.byte	0x1
	.value	0x21c
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1c
	.long	.LASF286
	.byte	0x1
	.value	0x21c
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1c
	.long	.LASF287
	.byte	0x1
	.value	0x21d
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1c
	.long	.LASF288
	.byte	0x1
	.value	0x21e
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x4
	.long	0x82
	.long	0x1237
	.uleb128 0x5
	.long	0x75
	.byte	0x5
	.uleb128 0x5
	.long	0x75
	.byte	0x13
	.byte	0
	.uleb128 0x1a
	.long	.LASF289
	.byte	0x1
	.byte	0x1e
	.long	0x124c
	.uleb128 0x9
	.byte	0x3
	.quad	MatrixType4x4
	.uleb128 0x1f
	.long	0x1221
	.uleb128 0x4
	.long	0x82
	.long	0x1267
	.uleb128 0x5
	.long	0x75
	.byte	0x1
	.uleb128 0x5
	.long	0x75
	.byte	0x13
	.byte	0
	.uleb128 0x1a
	.long	.LASF290
	.byte	0x1
	.byte	0x28
	.long	0x127c
	.uleb128 0x9
	.byte	0x3
	.quad	MatrixType8x8
	.uleb128 0x1f
	.long	0x1251
	.uleb128 0x4
	.long	0x57
	.long	0x1291
	.uleb128 0x5
	.long	0x75
	.byte	0xf
	.byte	0
	.uleb128 0x1a
	.long	.LASF291
	.byte	0x1
	.byte	0x48
	.long	0x12a6
	.uleb128 0x9
	.byte	0x3
	.quad	Quant_intra_default
	.uleb128 0x1f
	.long	0x1281
	.uleb128 0x1a
	.long	.LASF292
	.byte	0x1
	.byte	0x50
	.long	0x12c0
	.uleb128 0x9
	.byte	0x3
	.quad	Quant_inter_default
	.uleb128 0x1f
	.long	0x1281
	.uleb128 0x4
	.long	0x57
	.long	0x12d5
	.uleb128 0x5
	.long	0x75
	.byte	0x3f
	.byte	0
	.uleb128 0x1a
	.long	.LASF293
	.byte	0x1
	.byte	0x58
	.long	0x12ea
	.uleb128 0x9
	.byte	0x3
	.quad	Quant8_intra_default
	.uleb128 0x1f
	.long	0x12c5
	.uleb128 0x1a
	.long	.LASF294
	.byte	0x1
	.byte	0x64
	.long	0x1304
	.uleb128 0x9
	.byte	0x3
	.quad	Quant8_inter_default
	.uleb128 0x1f
	.long	0x12c5
	.uleb128 0x4
	.long	0x34
	.long	0x1325
	.uleb128 0x5
	.long	0x75
	.byte	0x5
	.uleb128 0x5
	.long	0x75
	.byte	0x3
	.uleb128 0x5
	.long	0x75
	.byte	0x3
	.byte	0
	.uleb128 0x20
	.long	.LASF295
	.byte	0x1
	.byte	0x2e
	.long	0x1309
	.uleb128 0x9
	.byte	0x3
	.quad	LevelScale4x4Luma_Intra
	.uleb128 0x4
	.long	0x34
	.long	0x135c
	.uleb128 0x5
	.long	0x75
	.byte	0x1
	.uleb128 0x5
	.long	0x75
	.byte	0x5
	.uleb128 0x5
	.long	0x75
	.byte	0x3
	.uleb128 0x5
	.long	0x75
	.byte	0x3
	.byte	0
	.uleb128 0x20
	.long	.LASF296
	.byte	0x1
	.byte	0x2f
	.long	0x133a
	.uleb128 0x9
	.byte	0x3
	.quad	LevelScale4x4Chroma_Intra
	.uleb128 0x20
	.long	.LASF297
	.byte	0x1
	.byte	0x31
	.long	0x1309
	.uleb128 0x9
	.byte	0x3
	.quad	LevelScale4x4Luma_Inter
	.uleb128 0x20
	.long	.LASF298
	.byte	0x1
	.byte	0x32
	.long	0x133a
	.uleb128 0x9
	.byte	0x3
	.quad	LevelScale4x4Chroma_Inter
	.uleb128 0x4
	.long	0x34
	.long	0x13b7
	.uleb128 0x5
	.long	0x75
	.byte	0x5
	.uleb128 0x5
	.long	0x75
	.byte	0x7
	.uleb128 0x5
	.long	0x75
	.byte	0x7
	.byte	0
	.uleb128 0x20
	.long	.LASF299
	.byte	0x1
	.byte	0x34
	.long	0x139b
	.uleb128 0x9
	.byte	0x3
	.quad	LevelScale8x8Luma_Intra
	.uleb128 0x20
	.long	.LASF300
	.byte	0x1
	.byte	0x35
	.long	0x139b
	.uleb128 0x9
	.byte	0x3
	.quad	LevelScale8x8Luma_Inter
	.uleb128 0x20
	.long	.LASF301
	.byte	0x1
	.byte	0x37
	.long	0x1309
	.uleb128 0x9
	.byte	0x3
	.quad	InvLevelScale4x4Luma_Intra
	.uleb128 0x20
	.long	.LASF302
	.byte	0x1
	.byte	0x38
	.long	0x133a
	.uleb128 0x9
	.byte	0x3
	.quad	InvLevelScale4x4Chroma_Intra
	.uleb128 0x20
	.long	.LASF303
	.byte	0x1
	.byte	0x3a
	.long	0x1309
	.uleb128 0x9
	.byte	0x3
	.quad	InvLevelScale4x4Luma_Inter
	.uleb128 0x20
	.long	.LASF304
	.byte	0x1
	.byte	0x3b
	.long	0x133a
	.uleb128 0x9
	.byte	0x3
	.quad	InvLevelScale4x4Chroma_Inter
	.uleb128 0x20
	.long	.LASF305
	.byte	0x1
	.byte	0x3d
	.long	0x139b
	.uleb128 0x9
	.byte	0x3
	.quad	InvLevelScale8x8Luma_Intra
	.uleb128 0x20
	.long	.LASF306
	.byte	0x1
	.byte	0x3e
	.long	0x139b
	.uleb128 0x9
	.byte	0x3
	.quad	InvLevelScale8x8Luma_Inter
	.uleb128 0x4
	.long	0x57
	.long	0x1475
	.uleb128 0x5
	.long	0x75
	.byte	0x5
	.uleb128 0x5
	.long	0x75
	.byte	0xf
	.byte	0
	.uleb128 0x20
	.long	.LASF307
	.byte	0x1
	.byte	0x40
	.long	0x145f
	.uleb128 0x9
	.byte	0x3
	.quad	ScalingList4x4input
	.uleb128 0x4
	.long	0x57
	.long	0x14a0
	.uleb128 0x5
	.long	0x75
	.byte	0x1
	.uleb128 0x5
	.long	0x75
	.byte	0x3f
	.byte	0
	.uleb128 0x20
	.long	.LASF308
	.byte	0x1
	.byte	0x41
	.long	0x148a
	.uleb128 0x9
	.byte	0x3
	.quad	ScalingList8x8input
	.uleb128 0x20
	.long	.LASF309
	.byte	0x1
	.byte	0x42
	.long	0x145f
	.uleb128 0x9
	.byte	0x3
	.quad	ScalingList4x4
	.uleb128 0x20
	.long	.LASF310
	.byte	0x1
	.byte	0x43
	.long	0x148a
	.uleb128 0x9
	.byte	0x3
	.quad	ScalingList8x8
	.uleb128 0x4
	.long	0x57
	.long	0x14ef
	.uleb128 0x5
	.long	0x75
	.byte	0x5
	.byte	0
	.uleb128 0x20
	.long	.LASF311
	.byte	0x1
	.byte	0x45
	.long	0x14df
	.uleb128 0x9
	.byte	0x3
	.quad	UseDefaultScalingMatrix4x4Flag
	.uleb128 0x4
	.long	0x57
	.long	0x1514
	.uleb128 0x5
	.long	0x75
	.byte	0x1
	.byte	0
	.uleb128 0x20
	.long	.LASF312
	.byte	0x1
	.byte	0x46
	.long	0x1504
	.uleb128 0x9
	.byte	0x3
	.quad	UseDefaultScalingMatrix8x8Flag
	.uleb128 0x21
	.long	.LASF313
	.byte	0x4
	.value	0x1f6
	.long	0x1535
	.uleb128 0x6
	.byte	0x8
	.long	0x4ad
	.uleb128 0x21
	.long	.LASF314
	.byte	0x4
	.value	0x1f7
	.long	0x1547
	.uleb128 0x6
	.byte	0x8
	.long	0x684
	.uleb128 0x4
	.long	0x82
	.long	0x155e
	.uleb128 0x13
	.long	0x75
	.value	0x12b
	.byte	0
	.uleb128 0x21
	.long	.LASF315
	.byte	0x4
	.value	0x222
	.long	0x154d
	.uleb128 0x21
	.long	.LASF316
	.byte	0x4
	.value	0x4b7
	.long	0x1576
	.uleb128 0x6
	.byte	0x8
	.long	0xf2b
	.uleb128 0x22
	.long	.LASF317
	.byte	0x1
	.byte	0x14
	.long	0x1587
	.uleb128 0x1f
	.long	0x1309
	.uleb128 0x22
	.long	.LASF318
	.byte	0x1
	.byte	0x15
	.long	0x1597
	.uleb128 0x1f
	.long	0x1309
	.uleb128 0x22
	.long	.LASF319
	.byte	0x1
	.byte	0x17
	.long	0x15a7
	.uleb128 0x1f
	.long	0x139b
	.uleb128 0x22
	.long	.LASF320
	.byte	0x1
	.byte	0x18
	.long	0x15b7
	.uleb128 0x1f
	.long	0x139b
	.uleb128 0x20
	.long	.LASF321
	.byte	0x1
	.byte	0x1b
	.long	0x119d
	.uleb128 0x9
	.byte	0x3
	.quad	matrix4x4_check
	.uleb128 0x20
	.long	.LASF322
	.byte	0x1
	.byte	0x1c
	.long	0x65
	.uleb128 0x9
	.byte	0x3
	.quad	matrix8x8_check
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x4
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.long	0x2c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x8
	.byte	0
	.value	0
	.value	0
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF253:
	.string	"channel_type"
.LASF82:
	.string	"pic_init_qs_minus26"
.LASF254:
	.string	"ScalingMatrixPresentFlag"
.LASF128:
	.string	"BITS_INTER_MB"
.LASF297:
	.string	"LevelScale4x4Luma_Inter"
.LASF7:
	.string	"sizetype"
.LASF53:
	.string	"max_bytes_per_pic_denom"
.LASF133:
	.string	"MAX_BITCOUNTER_MB"
.LASF283:
	.string	"Init_QMatrix"
.LASF294:
	.string	"Quant8_inter_default"
.LASF58:
	.string	"max_dec_frame_buffering"
.LASF190:
	.string	"PocMemoryManagement"
.LASF142:
	.string	"search_range"
.LASF38:
	.string	"matrix_coefficients"
.LASF20:
	.string	"vbr_cbr_flag"
.LASF158:
	.string	"infile_header"
.LASF209:
	.string	"full_search"
.LASF86:
	.string	"deblocking_filter_control_present_flag"
.LASF248:
	.string	"DisplayEncParams"
.LASF303:
	.string	"InvLevelScale4x4Luma_Inter"
.LASF87:
	.string	"constrained_intra_pred_flag"
.LASF95:
	.string	"constrained_set3_flag"
.LASF205:
	.string	"Intra16x16ParDisable"
.LASF302:
	.string	"InvLevelScale4x4Chroma_Intra"
.LASF21:
	.string	"initial_cpb_removal_delay_length_minus1"
.LASF167:
	.string	"successive_Bframe"
.LASF30:
	.string	"overscan_info_present_flag"
.LASF178:
	.string	"WeightedPrediction"
.LASF269:
	.string	"type"
.LASF44:
	.string	"time_scale"
.LASF234:
	.string	"LFDisableIdc"
.LASF170:
	.string	"directInferenceFlag"
.LASF172:
	.string	"BiPredMERefinements"
.LASF243:
	.string	"context_init_method"
.LASF245:
	.string	"AllowTransform8x8"
.LASF156:
	.string	"slice_argument"
.LASF270:
	.string	"bufsize"
.LASF198:
	.string	"InterSearch8x4"
.LASF197:
	.string	"InterSearch8x8"
.LASF230:
	.string	"NumFramesInELSubSeq"
.LASF184:
	.string	"RDBSliceWeightOnly"
.LASF148:
	.string	"GenerateMultiplePPS"
.LASF22:
	.string	"cpb_removal_delay_length_minus1"
.LASF79:
	.string	"weighted_pred_flag"
.LASF96:
	.string	"level_idc"
.LASF110:
	.string	"num_ref_frames"
.LASF28:
	.string	"sar_width"
.LASF132:
	.string	"BITS_DELTA_QUANT_MB"
.LASF6:
	.string	"long int"
.LASF305:
	.string	"InvLevelScale8x8Luma_Intra"
.LASF49:
	.string	"vcl_hrd_parameters"
.LASF43:
	.string	"num_units_in_tick"
.LASF218:
	.string	"nobskip"
.LASF314:
	.string	"active_sps"
.LASF102:
	.string	"log2_max_frame_num_minus4"
.LASF180:
	.string	"UseWeightedReferenceME"
.LASF232:
	.string	"RandomIntraMBRefresh"
.LASF125:
	.string	"BITS_HEADER"
.LASF268:
	.string	"InputParameters"
.LASF27:
	.string	"aspect_ratio_idc"
.LASF290:
	.string	"MatrixType8x8"
.LASF29:
	.string	"sar_height"
.LASF281:
	.string	"PatchMatrix"
.LASF129:
	.string	"BITS_CBP_MB"
.LASF161:
	.string	"ReconFile"
.LASF4:
	.string	"signed char"
.LASF324:
	.string	"q_matrix.c"
.LASF105:
	.string	"delta_pic_order_always_zero_flag"
.LASF312:
	.string	"UseDefaultScalingMatrix8x8Flag"
.LASF61:
	.string	"pic_parameter_set_id"
.LASF162:
	.string	"TraceFile"
.LASF267:
	.string	"OffsetMatrixPresentFlag"
.LASF1:
	.string	"unsigned char"
.LASF322:
	.string	"matrix8x8_check"
.LASF159:
	.string	"infile"
.LASF66:
	.string	"pic_scaling_list_present_flag"
.LASF113:
	.string	"pic_height_in_map_units_minus1"
.LASF39:
	.string	"chroma_location_info_present_flag"
.LASF97:
	.string	"chroma_format_idc"
.LASF171:
	.string	"BiPredMotionEstimation"
.LASF70:
	.string	"run_length_minus1"
.LASF152:
	.string	"intra_upd"
.LASF239:
	.string	"SPPercentageThreshold"
.LASF136:
	.string	"ProfileIDC"
.LASF83:
	.string	"chroma_qp_index_offset"
.LASF16:
	.string	"bit_rate_scale"
.LASF8:
	.string	"char"
.LASF146:
	.string	"Log2MaxFrameNum"
.LASF249:
	.string	"RCEnable"
.LASF182:
	.string	"RDPictureIntra"
.LASF145:
	.string	"B_List1_refs"
.LASF168:
	.string	"qpBRSOffset"
.LASF237:
	.string	"SparePictureOption"
.LASF126:
	.string	"BITS_TOTAL_MB"
.LASF211:
	.string	"qpN2"
.LASF164:
	.string	"intra_period"
.LASF18:
	.string	"bit_rate_value"
.LASF200:
	.string	"InterSearch4x4"
.LASF199:
	.string	"InterSearch4x8"
.LASF325:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/464.h264ref/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF214:
	.string	"qp02"
.LASF51:
	.string	"bitstream_restriction_flag"
.LASF255:
	.string	"ScalingListPresentFlag"
.LASF185:
	.string	"SkipIntraInInterSlices"
.LASF42:
	.string	"timing_info_present_flag"
.LASF90:
	.string	"pic_parameter_set_rbsp_t"
.LASF72:
	.string	"bottom_right"
.LASF179:
	.string	"WeightedBiprediction"
.LASF316:
	.string	"input"
.LASF221:
	.string	"LeakyBucketParamFile"
.LASF138:
	.string	"no_frames"
.LASF81:
	.string	"pic_init_qp_minus26"
.LASF149:
	.string	"img_width"
.LASF189:
	.string	"PyramidRefReorder"
.LASF91:
	.string	"profile_idc"
.LASF155:
	.string	"slice_mode"
.LASF194:
	.string	"InterSearch16x16"
.LASF15:
	.string	"cpb_cnt"
.LASF71:
	.string	"top_left"
.LASF195:
	.string	"InterSearch16x8"
.LASF233:
	.string	"LFSendParameters"
.LASF244:
	.string	"model_number"
.LASF206:
	.string	"Intra16x16PlaneDisable"
.LASF173:
	.string	"BiPredMESearchRange"
.LASF54:
	.string	"max_bits_per_mb_denom"
.LASF252:
	.string	"basicunit"
.LASF222:
	.string	"PicInterlace"
.LASF111:
	.string	"gaps_in_frame_num_value_allowed_flag"
.LASF262:
	.string	"lossless_qpprime_y_zero_flag"
.LASF89:
	.string	"vui_pic_parameters_flag"
.LASF163:
	.string	"QmatrixFile"
.LASF277:
	.string	"IntContent"
.LASF274:
	.string	"InString"
.LASF181:
	.string	"RDPictureDecision"
.LASF50:
	.string	"low_delay_hrd_flag"
.LASF112:
	.string	"pic_width_in_mbs_minus1"
.LASF137:
	.string	"LevelIDC"
.LASF0:
	.string	"long unsigned int"
.LASF56:
	.string	"log2_max_mv_length_horizontal"
.LASF40:
	.string	"chroma_location_frame"
.LASF124:
	.string	"seq_parameter_set_rbsp_t"
.LASF147:
	.string	"ResendPPS"
.LASF280:
	.string	"ParseMatrix"
.LASF295:
	.string	"LevelScale4x4Luma_Intra"
.LASF203:
	.string	"Intra4x4DiagDisable"
.LASF272:
	.string	"MapIdx"
.LASF157:
	.string	"UseConstrainedIntraPred"
.LASF276:
	.string	"bufend"
.LASF285:
	.string	"CalculateQuantParam"
.LASF23:
	.string	"dpb_output_delay_length_minus1"
.LASF37:
	.string	"transfer_characteristics"
.LASF94:
	.string	"constrained_set2_flag"
.LASF140:
	.string	"hadamard"
.LASF228:
	.string	"NoOfDecoders"
.LASF235:
	.string	"LFAlphaC0Offset"
.LASF309:
	.string	"ScalingList4x4"
.LASF231:
	.string	"NumFrameIn2ndIGOP"
.LASF165:
	.string	"idr_enable"
.LASF166:
	.string	"start_frame"
.LASF326:
	.string	"CheckParameterName"
.LASF9:
	.string	"long long int"
.LASF77:
	.string	"num_ref_idx_l0_active_minus1"
.LASF60:
	.string	"Valid"
.LASF109:
	.string	"offset_for_ref_frame"
.LASF236:
	.string	"LFBetaOffset"
.LASF100:
	.string	"bit_depth_luma_minus8"
.LASF134:
	.string	"double"
.LASF93:
	.string	"constrained_set1_flag"
.LASF238:
	.string	"SPDetectionThreshold"
.LASF263:
	.string	"residue_transform_flag"
.LASF327:
	.string	"CalculateQuant8Param"
.LASF223:
	.string	"MbInterlace"
.LASF176:
	.string	"qpsp"
.LASF135:
	.string	"float"
.LASF247:
	.string	"ReportFrameStats"
.LASF187:
	.string	"PyramidCoding"
.LASF116:
	.string	"direct_8x8_inference_flag"
.LASF191:
	.string	"symbol_mode"
.LASF308:
	.string	"ScalingList8x8input"
.LASF55:
	.string	"log2_max_mv_length_vertical"
.LASF3:
	.string	"unsigned int"
.LASF313:
	.string	"active_pps"
.LASF85:
	.string	"cr_qp_index_offset"
.LASF298:
	.string	"LevelScale4x4Chroma_Inter"
.LASF175:
	.string	"sp_periodicity"
.LASF300:
	.string	"LevelScale8x8Luma_Inter"
.LASF104:
	.string	"log2_max_pic_order_cnt_lsb_minus4"
.LASF241:
	.string	"slice_group_change_cycle"
.LASF265:
	.string	"LambdaWeight"
.LASF219:
	.string	"NumberLeakyBuckets"
.LASF301:
	.string	"InvLevelScale4x4Luma_Intra"
.LASF293:
	.string	"Quant8_intra_default"
.LASF107:
	.string	"offset_for_top_to_bottom_field"
.LASF121:
	.string	"frame_cropping_rect_bottom_offset"
.LASF32:
	.string	"video_signal_type_present_flag"
.LASF177:
	.string	"qpsp_pred"
.LASF103:
	.string	"pic_order_cnt_type"
.LASF188:
	.string	"ExplicitPyramidFormat"
.LASF323:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF11:
	.string	"FALSE"
.LASF117:
	.string	"frame_cropping_flag"
.LASF282:
	.string	"fail"
.LASF275:
	.string	"InItem"
.LASF311:
	.string	"UseDefaultScalingMatrix4x4Flag"
.LASF141:
	.string	"hadamardqpel"
.LASF202:
	.string	"Intra4x4ParDisable"
.LASF220:
	.string	"LeakyBucketRateFile"
.LASF41:
	.string	"chroma_location_field"
.LASF154:
	.string	"part_size"
.LASF193:
	.string	"partition_mode"
.LASF315:
	.string	"errortext"
.LASF99:
	.string	"seq_scaling_list_present_flag"
.LASF106:
	.string	"offset_for_non_ref_pic"
.LASF119:
	.string	"frame_cropping_rect_right_offset"
.LASF88:
	.string	"redundant_pic_cnt_present_flag"
.LASF240:
	.string	"SliceGroupConfigFileName"
.LASF304:
	.string	"InvLevelScale4x4Chroma_Inter"
.LASF224:
	.string	"IntraBottom"
.LASF266:
	.string	"QOffsetMatrixFile"
.LASF144:
	.string	"B_List0_refs"
.LASF317:
	.string	"quant_coef"
.LASF115:
	.string	"mb_adaptive_frame_field_flag"
.LASF291:
	.string	"Quant_intra_default"
.LASF48:
	.string	"vcl_hrd_parameters_present_flag"
.LASF63:
	.string	"entropy_coding_mode_flag"
.LASF114:
	.string	"frame_mbs_only_flag"
.LASF25:
	.string	"hrd_parameters_t"
.LASF78:
	.string	"num_ref_idx_l1_active_minus1"
.LASF10:
	.string	"long long unsigned int"
.LASF127:
	.string	"BITS_MB_MODE"
.LASF24:
	.string	"time_offset_length"
.LASF213:
	.string	"qp2start"
.LASF80:
	.string	"weighted_bipred_idc"
.LASF217:
	.string	"disthres"
.LASF120:
	.string	"frame_cropping_rect_top_offset"
.LASF251:
	.string	"SeinitialQP"
.LASF320:
	.string	"dequant_coef8"
.LASF108:
	.string	"num_ref_frames_in_pic_order_cnt_cycle"
.LASF288:
	.string	"no_q_matrix"
.LASF52:
	.string	"motion_vectors_over_pic_boundaries_flag"
.LASF306:
	.string	"InvLevelScale8x8Luma_Inter"
.LASF118:
	.string	"frame_cropping_rect_left_offset"
.LASF261:
	.string	"rgb_input_flag"
.LASF143:
	.string	"P_List0_refs"
.LASF229:
	.string	"RestrictRef"
.LASF69:
	.string	"slice_group_map_type"
.LASF47:
	.string	"nal_hrd_parameters"
.LASF14:
	.string	"Boolean"
.LASF192:
	.string	"of_mode"
.LASF310:
	.string	"ScalingList8x8"
.LASF26:
	.string	"aspect_ratio_info_present_flag"
.LASF215:
	.string	"qpBRS2Offset"
.LASF62:
	.string	"seq_parameter_set_id"
.LASF225:
	.string	"LossRateA"
.LASF226:
	.string	"LossRateB"
.LASF227:
	.string	"LossRateC"
.LASF183:
	.string	"RDPSliceWeightOnly"
.LASF260:
	.string	"img_width_cr"
.LASF35:
	.string	"colour_description_present_flag"
.LASF101:
	.string	"bit_depth_chroma_minus8"
.LASF258:
	.string	"BitDepthChroma"
.LASF153:
	.string	"blc_size"
.LASF131:
	.string	"BITS_COEFF_UV_MB"
.LASF13:
	.string	"byte"
.LASF186:
	.string	"BRefPictures"
.LASF5:
	.string	"short int"
.LASF46:
	.string	"nal_hrd_parameters_present_flag"
.LASF151:
	.string	"yuv_format"
.LASF321:
	.string	"matrix4x4_check"
.LASF256:
	.string	"FMEnable"
.LASF278:
	.string	"range"
.LASF57:
	.string	"max_dec_frame_reordering"
.LASF289:
	.string	"MatrixType4x4"
.LASF242:
	.string	"redundant_slice_flag"
.LASF257:
	.string	"BitDepthLuma"
.LASF12:
	.string	"TRUE"
.LASF216:
	.string	"rdopt"
.LASF273:
	.string	"item"
.LASF123:
	.string	"vui_seq_parameters"
.LASF17:
	.string	"cpb_size_scale"
.LASF201:
	.string	"IntraDisableInterOnly"
.LASF196:
	.string	"InterSearch8x16"
.LASF250:
	.string	"bit_rate"
.LASF45:
	.string	"fixed_frame_rate_flag"
.LASF68:
	.string	"num_slice_groups_minus1"
.LASF130:
	.string	"BITS_COEFF_Y_MB"
.LASF160:
	.string	"outfile"
.LASF271:
	.string	"items"
.LASF284:
	.string	"content"
.LASF246:
	.string	"LowPassForIntra8x8"
.LASF307:
	.string	"ScalingList4x4input"
.LASF19:
	.string	"cpb_size_value"
.LASF204:
	.string	"Intra4x4DirDisable"
.LASF212:
	.string	"qpB2"
.LASF92:
	.string	"constrained_set0_flag"
.LASF31:
	.string	"overscan_appropriate_flag"
.LASF67:
	.string	"pic_order_present_flag"
.LASF174:
	.string	"BiPredMESubPel"
.LASF36:
	.string	"colour_primaries"
.LASF287:
	.string	"present"
.LASF279:
	.string	"ScalingList"
.LASF2:
	.string	"short unsigned int"
.LASF210:
	.string	"last_frame"
.LASF292:
	.string	"Quant_inter_default"
.LASF169:
	.string	"direct_spatial_mv_pred_flag"
.LASF150:
	.string	"img_height"
.LASF139:
	.string	"jumpd"
.LASF59:
	.string	"vui_seq_parameters_t"
.LASF259:
	.string	"img_height_cr"
.LASF207:
	.string	"ChromaIntraDisable"
.LASF98:
	.string	"seq_scaling_matrix_present_flag"
.LASF74:
	.string	"slice_group_change_rate_minus1"
.LASF76:
	.string	"slice_group_id"
.LASF34:
	.string	"video_full_range_flag"
.LASF73:
	.string	"slice_group_change_direction_flag"
.LASF65:
	.string	"pic_scaling_matrix_present_flag"
.LASF208:
	.string	"FrameRate"
.LASF122:
	.string	"vui_parameters_present_flag"
.LASF286:
	.string	"temp"
.LASF33:
	.string	"video_format"
.LASF84:
	.string	"cb_qp_index_offset"
.LASF75:
	.string	"pic_size_in_map_units_minus1"
.LASF318:
	.string	"dequant_coef"
.LASF64:
	.string	"transform_8x8_mode_flag"
.LASF264:
	.string	"UseExplicitLambdaParams"
.LASF319:
	.string	"quant_coef8"
.LASF296:
	.string	"LevelScale4x4Chroma_Intra"
.LASF299:
	.string	"LevelScale8x8Luma_Intra"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
