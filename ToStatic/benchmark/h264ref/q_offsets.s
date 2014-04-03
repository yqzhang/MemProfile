	.file	"q_offsets.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 q_offsets.c -mtune=generic -march=x86-64 -g
# -fverbose-asm -fno-strict-aliasing -fstack-protector -Wformat
# -Wformat-security
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
	.globl	offset4x4_check
	.bss
	.align 16
	.type	offset4x4_check, @object
	.size	offset4x4_check, 24
offset4x4_check:
	.zero	24
	.globl	offset8x8_check
	.align 4
	.type	offset8x8_check, @object
	.size	offset8x8_check, 8
offset8x8_check:
	.zero	8
	.section	.rodata
	.align 32
	.type	OffsetType4x4, @object
	.size	OffsetType4x4, 216
OffsetType4x4:
	.string	"INTRA4X4_LUMA_INTRA"
	.zero	4
	.string	"INTRA4X4_CHROMAU_INTRA"
	.zero	1
	.string	"INTRA4X4_CHROMAV_INTRA"
	.zero	1
	.string	"INTRA4X4_LUMA_INTER"
	.zero	4
	.string	"INTRA4X4_CHROMAU_INTER"
	.zero	1
	.string	"INTRA4X4_CHROMAV_INTER"
	.zero	1
	.string	"INTER4X4_LUMA"
	.zero	10
	.string	"INTER4X4_CHROMAU"
	.zero	7
	.string	"INTER4X4_CHROMAV"
	.zero	7
	.align 32
	.type	OffsetType8x8, @object
	.size	OffsetType8x8, 72
OffsetType8x8:
	.string	"INTRA8X8_LUMA_INTRA"
	.zero	4
	.string	"INTRA8X8_LUMA_INTER"
	.zero	4
	.string	"INTER8X8_LUMA"
	.zero	10
	.comm	LevelOffset4x4Luma_Intra,832,32
	.comm	LevelOffset4x4Chroma_Intra,1664,32
	.comm	LevelOffset4x4Luma_Inter,832,32
	.comm	LevelOffset4x4Chroma_Inter,1664,32
	.comm	LevelOffset8x8Luma_Intra,3328,32
	.comm	LevelOffset8x8Luma_Inter,3328,32
	.comm	OffsetList4x4input,288,32
	.comm	OffsetList8x8input,384,32
	.comm	OffsetList4x4,288,32
	.comm	OffsetList8x8,384,32
	.align 32
	.type	Offset_intra_default_intra, @object
	.size	Offset_intra_default_intra, 32
Offset_intra_default_intra:
	.value	341
	.value	341
	.value	341
	.value	341
	.value	341
	.value	341
	.value	341
	.value	341
	.value	341
	.value	341
	.value	341
	.value	341
	.value	341
	.value	341
	.value	341
	.value	341
	.align 32
	.type	Offset_intra_default_inter, @object
	.size	Offset_intra_default_inter, 32
Offset_intra_default_inter:
	.value	171
	.value	171
	.value	171
	.value	171
	.value	171
	.value	171
	.value	171
	.value	171
	.value	171
	.value	171
	.value	171
	.value	171
	.value	171
	.value	171
	.value	171
	.value	171
	.align 32
	.type	Offset_inter_default, @object
	.size	Offset_inter_default, 32
Offset_inter_default:
	.value	171
	.value	171
	.value	171
	.value	171
	.value	171
	.value	171
	.value	171
	.value	171
	.value	171
	.value	171
	.value	171
	.value	171
	.value	171
	.value	171
	.value	171
	.value	171
	.align 32
	.type	Offset8_intra_default_intra, @object
	.size	Offset8_intra_default_intra, 128
Offset8_intra_default_intra:
	.value	341
	.value	341
	.value	341
	.value	341
	.value	341
	.value	341
	.value	341
	.value	341
	.value	341
	.value	341
	.value	341
	.value	341
	.value	341
	.value	341
	.value	341
	.value	341
	.value	341
	.value	341
	.value	341
	.value	341
	.value	341
	.value	341
	.value	341
	.value	341
	.value	341
	.value	341
	.value	341
	.value	341
	.value	341
	.value	341
	.value	341
	.value	341
	.value	341
	.value	341
	.value	341
	.value	341
	.value	341
	.value	341
	.value	341
	.value	341
	.value	341
	.value	341
	.value	341
	.value	341
	.value	341
	.value	341
	.value	341
	.value	341
	.value	341
	.value	341
	.value	341
	.value	341
	.value	341
	.value	341
	.value	341
	.value	341
	.value	341
	.value	341
	.value	341
	.value	341
	.value	341
	.value	341
	.value	341
	.value	341
	.align 32
	.type	Offset8_intra_default_inter, @object
	.size	Offset8_intra_default_inter, 128
Offset8_intra_default_inter:
	.value	171
	.value	171
	.value	171
	.value	171
	.value	171
	.value	171
	.value	171
	.value	171
	.value	171
	.value	171
	.value	171
	.value	171
	.value	171
	.value	171
	.value	171
	.value	171
	.value	171
	.value	171
	.value	171
	.value	171
	.value	171
	.value	171
	.value	171
	.value	171
	.value	171
	.value	171
	.value	171
	.value	171
	.value	171
	.value	171
	.value	171
	.value	171
	.value	171
	.value	171
	.value	171
	.value	171
	.value	171
	.value	171
	.value	171
	.value	171
	.value	171
	.value	171
	.value	171
	.value	171
	.value	171
	.value	171
	.value	171
	.value	171
	.value	171
	.value	171
	.value	171
	.value	171
	.value	171
	.value	171
	.value	171
	.value	171
	.value	171
	.value	171
	.value	171
	.value	171
	.value	171
	.value	171
	.value	171
	.value	171
	.align 32
	.type	Offset8_inter_default, @object
	.size	Offset8_inter_default, 128
Offset8_inter_default:
	.value	171
	.value	171
	.value	171
	.value	171
	.value	171
	.value	171
	.value	171
	.value	171
	.value	171
	.value	171
	.value	171
	.value	171
	.value	171
	.value	171
	.value	171
	.value	171
	.value	171
	.value	171
	.value	171
	.value	171
	.value	171
	.value	171
	.value	171
	.value	171
	.value	171
	.value	171
	.value	171
	.value	171
	.value	171
	.value	171
	.value	171
	.value	171
	.value	171
	.value	171
	.value	171
	.value	171
	.value	171
	.value	171
	.value	171
	.value	171
	.value	171
	.value	171
	.value	171
	.value	171
	.value	171
	.value	171
	.value	171
	.value	171
	.value	171
	.value	171
	.value	171
	.value	171
	.value	171
	.value	171
	.value	171
	.value	171
	.value	171
	.value	171
	.value	171
	.value	171
	.value	171
	.value	171
	.value	171
	.value	171
	.text
	.globl	CheckOffsetParameterName
	.type	CheckOffsetParameterName, @function
CheckOffsetParameterName:
.LFB2:
	.file 1 "q_offsets.c"
	.loc 1 137 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# s, s
	movq	%rsi, -32(%rbp)	# type, type
	.loc 1 138 0
	movl	$0, -4(%rbp)	#, i
	.loc 1 140 0
	movq	-32(%rbp), %rax	# type, tmp65
	movl	$0, (%rax)	#, *type_5(D)
	.loc 1 141 0
	jmp	.L2	#
.L5:
	.loc 1 143 0
	movl	-4(%rbp), %eax	# i, tmp67
	movslq	%eax, %rdx	# tmp67, tmp66
	movq	%rdx, %rax	# tmp66, tmp68
	addq	%rax, %rax	# tmp68
	addq	%rdx, %rax	# tmp66, tmp68
	salq	$3, %rax	#, tmp69
	leaq	OffsetType4x4(%rax), %rdx	#, D.4545
	movq	-24(%rbp), %rax	# s, tmp70
	movq	%rax, %rsi	# tmp70,
	movq	%rdx, %rdi	# D.4545,
	call	strcmp	#
	testl	%eax, %eax	# D.4544
	jne	.L3	#,
	.loc 1 144 0
	movl	-4(%rbp), %eax	# i, D.4544
	jmp	.L4	#
.L3:
	.loc 1 146 0
	addl	$1, -4(%rbp)	#, i
.L2:
	.loc 1 141 0 discriminator 1
	cmpl	$8, -4(%rbp)	#, i
	jle	.L5	#,
	.loc 1 149 0
	movl	$0, -4(%rbp)	#, i
	.loc 1 150 0
	movq	-32(%rbp), %rax	# type, tmp71
	movl	$1, (%rax)	#, *type_5(D)
	.loc 1 151 0
	jmp	.L6	#
.L8:
	.loc 1 153 0
	movl	-4(%rbp), %eax	# i, tmp73
	movslq	%eax, %rdx	# tmp73, tmp72
	movq	%rdx, %rax	# tmp72, tmp74
	addq	%rax, %rax	# tmp74
	addq	%rdx, %rax	# tmp72, tmp74
	salq	$3, %rax	#, tmp75
	leaq	OffsetType8x8(%rax), %rdx	#, D.4545
	movq	-24(%rbp), %rax	# s, tmp76
	movq	%rax, %rsi	# tmp76,
	movq	%rdx, %rdi	# D.4545,
	call	strcmp	#
	testl	%eax, %eax	# D.4544
	jne	.L7	#,
	.loc 1 154 0
	movl	-4(%rbp), %eax	# i, D.4544
	jmp	.L4	#
.L7:
	.loc 1 156 0
	addl	$1, -4(%rbp)	#, i
.L6:
	.loc 1 151 0 discriminator 1
	cmpl	$2, -4(%rbp)	#, i
	jle	.L8	#,
	.loc 1 159 0
	movl	$-1, %eax	#, D.4544
.L4:
	.loc 1 160 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	CheckOffsetParameterName, .-CheckOffsetParameterName
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
	.globl	ParseQOffsetMatrix
	.type	ParseQOffsetMatrix, @function
ParseQOffsetMatrix:
.LFB3:
	.loc 1 173 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$8080, %rsp	#,
	movq	%rdi, -8072(%rbp)	# buf, buf
	movl	%esi, -8076(%rbp)	# bufsize, bufsize
	.loc 1 176 0
	movl	$0, -8056(%rbp)	#, item
	.loc 1 177 0
	movl	$0, -8052(%rbp)	#, InString
	movl	$0, -8048(%rbp)	#, InItem
	.loc 1 178 0
	movq	-8072(%rbp), %rax	# buf, tmp89
	movq	%rax, -8024(%rbp)	# tmp89, p
	.loc 1 179 0
	movl	-8076(%rbp), %eax	# bufsize, tmp90
	movslq	%eax, %rdx	# tmp90, D.4546
	movq	-8072(%rbp), %rax	# buf, tmp94
	addq	%rdx, %rax	# D.4546, tmp93
	movq	%rax, -8008(%rbp)	# tmp93, bufend
	.loc 1 184 0
	jmp	.L10	#
.L27:
	.loc 1 186 0
	movq	-8024(%rbp), %rax	# p, tmp95
	movzbl	(%rax), %eax	# *p_11, D.4547
	movsbl	%al, %eax	# D.4547, D.4548
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
	.loc 1 189 0
	addq	$1, -8024(%rbp)	#, p
	.loc 1 190 0
	jmp	.L10	#
.L17:
	.loc 1 192 0
	movq	-8024(%rbp), %rax	# p, tmp99
	movb	$0, (%rax)	#, *p_11
	.loc 1 193 0
	jmp	.L19	#
.L21:
	.loc 1 194 0
	addq	$1, -8024(%rbp)	#, p
.L19:
	.loc 1 193 0 discriminator 1
	movq	-8024(%rbp), %rax	# p, tmp100
	movzbl	(%rax), %eax	# *p_9, D.4547
	cmpb	$10, %al	#, D.4547
	je	.L20	#,
	.loc 1 193 0 is_stmt 0 discriminator 2
	movq	-8024(%rbp), %rax	# p, tmp101
	cmpq	-8008(%rbp), %rax	# bufend, tmp101
	jb	.L21	#,
.L20:
	.loc 1 195 0 is_stmt 1
	movl	$0, -8052(%rbp)	#, InString
	.loc 1 196 0
	movl	$0, -8048(%rbp)	#, InItem
	.loc 1 197 0
	jmp	.L10	#
.L14:
	.loc 1 199 0
	movl	$0, -8048(%rbp)	#, InItem
	.loc 1 200 0
	movl	$0, -8052(%rbp)	#, InString
	.loc 1 201 0
	movq	-8024(%rbp), %rax	# p, p.0
	leaq	1(%rax), %rdx	#, tmp102
	movq	%rdx, -8024(%rbp)	# tmp102, p
	movb	$0, (%rax)	#, *p.0_33
	.loc 1 202 0
	jmp	.L10	#
.L12:
	.loc 1 205 0
	cmpl	$0, -8052(%rbp)	#, InString
	je	.L22	#,
	.loc 1 206 0
	addq	$1, -8024(%rbp)	#, p
	.loc 1 212 0
	jmp	.L10	#
.L22:
	.loc 1 209 0
	movq	-8024(%rbp), %rax	# p, p.1
	leaq	1(%rax), %rdx	#, tmp103
	movq	%rdx, -8024(%rbp)	# tmp103, p
	movb	$0, (%rax)	#, *p.1_36
	.loc 1 210 0
	movl	$0, -8048(%rbp)	#, InItem
	.loc 1 212 0
	jmp	.L10	#
.L16:
	.loc 1 215 0
	movq	-8024(%rbp), %rax	# p, p.2
	leaq	1(%rax), %rdx	#, tmp104
	movq	%rdx, -8024(%rbp)	# tmp104, p
	movb	$0, (%rax)	#, *p.2_39
	.loc 1 216 0
	cmpl	$0, -8052(%rbp)	#, InString
	jne	.L24	#,
	.loc 1 218 0
	movl	-8056(%rbp), %eax	# item, item.3
	leal	1(%rax), %edx	#, tmp105
	movl	%edx, -8056(%rbp)	# tmp105, item
	cltq
	movq	-8024(%rbp), %rdx	# p, tmp107
	movq	%rdx, -8000(%rbp,%rax,8)	# tmp107, items
	.loc 1 219 0
	notl	-8048(%rbp)	# InItem
	jmp	.L25	#
.L24:
	.loc 1 222 0
	movl	$0, -8048(%rbp)	#, InItem
.L25:
	.loc 1 223 0
	notl	-8052(%rbp)	# InString
	.loc 1 224 0
	jmp	.L10	#
.L18:
	.loc 1 227 0
	addq	$1, -8024(%rbp)	#, p
	.loc 1 228 0
	movl	$0, -8048(%rbp)	#, InItem
	.loc 1 229 0
	jmp	.L10	#
.L11:
	.loc 1 232 0
	cmpl	$0, -8048(%rbp)	#, InItem
	jne	.L26	#,
	.loc 1 234 0
	movl	-8056(%rbp), %eax	# item, item.4
	leal	1(%rax), %edx	#, tmp108
	movl	%edx, -8056(%rbp)	# tmp108, item
	cltq
	movq	-8024(%rbp), %rdx	# p, tmp110
	movq	%rdx, -8000(%rbp,%rax,8)	# tmp110, items
	.loc 1 235 0
	notl	-8048(%rbp)	# InItem
.L26:
	.loc 1 237 0
	addq	$1, -8024(%rbp)	#, p
.L10:
	.loc 1 184 0 discriminator 1
	movq	-8024(%rbp), %rax	# p, tmp111
	cmpq	-8008(%rbp), %rax	# bufend, tmp111
	jb	.L27	#,
	.loc 1 241 0
	subl	$1, -8056(%rbp)	#, item
	.loc 1 243 0
	movl	$0, -8044(%rbp)	#, i
	jmp	.L28	#
.L36:
	.loc 1 245 0
	movl	$0, -8032(%rbp)	#, cnt
	.loc 1 246 0
	movl	-8032(%rbp), %eax	# cnt, tmp112
	movl	-8044(%rbp), %edx	# i, tmp113
	addl	%edx, %eax	# tmp113, D.4548
	cltq
	movq	-8000(%rbp,%rax,8), %rax	# items, D.4549
	leaq	-8060(%rbp), %rdx	#, tmp115
	movq	%rdx, %rsi	# tmp115,
	movq	%rax, %rdi	# D.4549,
	call	CheckOffsetParameterName	#
	movl	%eax, -8028(%rbp)	# tmp116, MapIdx
	cmpl	$0, -8028(%rbp)	#, MapIdx
	jns	.L29	#,
	.loc 1 248 0
	movl	-8032(%rbp), %eax	# cnt, tmp117
	movl	-8044(%rbp), %edx	# i, tmp118
	addl	%edx, %eax	# tmp118, D.4548
	cltq
	movq	-8000(%rbp,%rax,8), %rax	# items, D.4549
	movq	%rax, %rcx	# D.4549,
	movl	$.LC0, %edx	#,
	movl	$300, %esi	#,
	movl	$errortext, %edi	#,
	movl	$0, %eax	#,
	call	snprintf	#
	.loc 1 249 0
	movl	$300, %esi	#,
	movl	$errortext, %edi	#,
	call	error	#
.L29:
	.loc 1 251 0
	addl	$1, -8032(%rbp)	#, cnt
	.loc 1 252 0
	movl	-8032(%rbp), %eax	# cnt, tmp120
	movl	-8044(%rbp), %edx	# i, tmp121
	addl	%edx, %eax	# tmp121, D.4548
	cltq
	movq	-8000(%rbp,%rax,8), %rax	# items, D.4549
	movq	%rax, %rsi	# D.4549,
	movl	$.LC1, %edi	#,
	call	strcmp	#
	testl	%eax, %eax	# D.4548
	je	.L30	#,
	.loc 1 254 0
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
	.loc 1 255 0
	movl	$300, %esi	#,
	movl	$errortext, %edi	#,
	call	error	#
.L30:
	.loc 1 257 0
	addl	$1, -8032(%rbp)	#, cnt
	.loc 1 259 0
	movl	-8060(%rbp), %eax	# type, type.5
	testl	%eax, %eax	# type.5
	jne	.L31	#,
	.loc 1 261 0
	movl	$16, -8036(%rbp)	#, range
	.loc 1 262 0
	movl	-8028(%rbp), %eax	# MapIdx, tmp125
	cltq
	salq	$5, %rax	#, tmp126
	addq	$OffsetList4x4input, %rax	#, tmp127
	movq	%rax, -8016(%rbp)	# tmp127, OffsetList
	.loc 1 263 0
	movl	-8028(%rbp), %eax	# MapIdx, tmp129
	cltq
	movl	$1, offset4x4_check(,%rax,4)	#, offset4x4_check
	jmp	.L32	#
.L31:
	.loc 1 267 0
	movl	$64, -8036(%rbp)	#, range
	.loc 1 268 0
	movl	-8028(%rbp), %eax	# MapIdx, tmp131
	cltq
	salq	$7, %rax	#, tmp132
	addq	$OffsetList8x8input, %rax	#, tmp133
	movq	%rax, -8016(%rbp)	# tmp133, OffsetList
	.loc 1 269 0
	movl	-8028(%rbp), %eax	# MapIdx, tmp135
	cltq
	movl	$1, offset8x8_check(,%rax,4)	#, offset8x8_check
.L32:
	.loc 1 272 0
	movl	$0, -8040(%rbp)	#, j
	jmp	.L33	#
.L35:
	.loc 1 274 0
	movl	-8032(%rbp), %eax	# cnt, tmp136
	movl	-8044(%rbp), %edx	# i, tmp137
	addl	%eax, %edx	# tmp136, D.4548
	movl	-8040(%rbp), %eax	# j, tmp138
	addl	%edx, %eax	# D.4548, D.4548
	cltq
	movq	-8000(%rbp,%rax,8), %rax	# items, D.4549
	leaq	-8064(%rbp), %rdx	#, tmp140
	movl	$.LC2, %esi	#,
	movq	%rax, %rdi	# D.4549,
	movl	$0, %eax	#,
	call	__isoc99_sscanf	#
	cmpl	$1, %eax	#, D.4548
	je	.L34	#,
	.loc 1 276 0
	movl	-8032(%rbp), %eax	# cnt, tmp141
	movl	-8044(%rbp), %edx	# i, tmp142
	addl	%eax, %edx	# tmp141, D.4548
	movl	-8040(%rbp), %eax	# j, tmp143
	addl	%edx, %eax	# D.4548, D.4548
	cltq
	movq	-8000(%rbp,%rax,8), %rdx	# items, D.4549
	movl	-8044(%rbp), %eax	# i, tmp146
	cltq
	movq	-8000(%rbp,%rax,8), %rax	# items, D.4549
	movq	%rdx, %r8	# D.4549,
	movq	%rax, %rcx	# D.4549,
	movl	$.LC3, %edx	#,
	movl	$300, %esi	#,
	movl	$errortext, %edi	#,
	movl	$0, %eax	#,
	call	snprintf	#
	.loc 1 277 0
	movl	$300, %esi	#,
	movl	$errortext, %edi	#,
	call	error	#
.L34:
	.loc 1 280 0
	movl	-8040(%rbp), %eax	# j, tmp147
	cltq
	leaq	(%rax,%rax), %rdx	#, D.4550
	movq	-8016(%rbp), %rax	# OffsetList, tmp148
	addq	%rax, %rdx	# tmp148, D.4551
	movl	-8064(%rbp), %eax	# IntContent, IntContent.6
	movw	%ax, (%rdx)	# D.4552, *_81
	.loc 1 272 0
	addl	$1, -8040(%rbp)	#, j
.L33:
	.loc 1 272 0 is_stmt 0 discriminator 1
	movl	-8040(%rbp), %eax	# j, tmp149
	cmpl	-8036(%rbp), %eax	# range, tmp149
	jl	.L35	#,
	.loc 1 282 0 is_stmt 1
	movl	-8040(%rbp), %eax	# j, tmp150
	addl	%eax, -8032(%rbp)	# tmp150, cnt
	.loc 1 283 0
	movl	$46, %edi	#,
	call	putchar	#
	.loc 1 243 0
	movl	-8032(%rbp), %eax	# cnt, tmp151
	addl	%eax, -8044(%rbp)	# tmp151, i
.L28:
	.loc 1 243 0 is_stmt 0 discriminator 1
	movl	-8044(%rbp), %eax	# i, tmp152
	cmpl	-8056(%rbp), %eax	# item, tmp152
	jl	.L36	#,
	.loc 1 285 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	ParseQOffsetMatrix, .-ParseQOffsetMatrix
	.section	.rodata
	.align 8
.LC4:
	.string	"Parsing Quantization Offset Matrix file %s "
	.align 8
.LC5:
	.string	"\nError: %s\nProceeding with default values for all matrices."
	.text
	.globl	Init_QOffsetMatrix
	.type	Init_QOffsetMatrix, @function
Init_QOffsetMatrix:
.LFB4:
	.loc 1 295 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	.loc 1 298 0
	movq	input(%rip), %rax	# input, input.7
	movl	3584(%rax), %eax	# input.7_1->OffsetMatrixPresentFlag, D.4557
	testl	%eax, %eax	# D.4557
	je	.L37	#,
	.loc 1 300 0
	movq	input(%rip), %rax	# input, input.8
	addq	$3384, %rax	#, D.4558
	movq	%rax, %rsi	# D.4558,
	movl	$.LC4, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 301 0
	movq	input(%rip), %rax	# input, input.9
	addq	$3384, %rax	#, D.4558
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.4558,
	call	GetConfigFileContent	#
	movq	%rax, -8(%rbp)	# tmp68, content
	.loc 1 302 0
	cmpq	$0, -8(%rbp)	#, content
	je	.L39	#,
	.loc 1 303 0
	movq	-8(%rbp), %rax	# content, tmp69
	movq	%rax, %rdi	# tmp69,
	call	strlen	#
	movl	%eax, %edx	# D.4559, D.4557
	movq	-8(%rbp), %rax	# content, tmp70
	movl	%edx, %esi	# D.4557,
	movq	%rax, %rdi	# tmp70,
	call	ParseQOffsetMatrix	#
	jmp	.L40	#
.L39:
	.loc 1 306 0
	movl	$errortext, %esi	#,
	movl	$.LC5, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 307 0
	movq	input(%rip), %rax	# input, input.10
	movl	$0, 3584(%rax)	#, input.10_10->OffsetMatrixPresentFlag
.L40:
	.loc 1 310 0
	movl	$10, %edi	#,
	call	putchar	#
	.loc 1 313 0
	movq	-8(%rbp), %rax	# content, tmp71
	movq	%rax, %rdi	# tmp71,
	call	free	#
.L37:
	.loc 1 315 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	Init_QOffsetMatrix, .-Init_QOffsetMatrix
	.globl	CalculateOffsetParam
	.type	CalculateOffsetParam, @function
CalculateOffsetParam:
.LFB5:
	.loc 1 331 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 335 0
	movq	input(%rip), %rax	# input, input.11
	movl	3584(%rax), %eax	# input.11_7->OffsetMatrixPresentFlag, D.4562
	testl	%eax, %eax	# D.4562
	je	.L42	#,
	.loc 1 337 0
	movl	$0, -12(%rbp)	#, k
	jmp	.L43	#
.L50:
	.loc 1 339 0
	movl	-12(%rbp), %eax	# k, tmp124
	addl	$5, %eax	#, tmp123
	movl	%eax, -8(%rbp)	# tmp123, qp_per
	.loc 1 340 0
	movl	$0, -16(%rbp)	#, j
	jmp	.L44	#
.L49:
	.loc 1 342 0
	movl	$0, -20(%rbp)	#, i
	jmp	.L45	#
.L48:
	.loc 1 344 0
	movl	-20(%rbp), %eax	# i, tmp125
	leal	0(,%rax,4), %edx	#, D.4562
	movl	-16(%rbp), %eax	# j, tmp129
	addl	%edx, %eax	# D.4562, tmp128
	movl	%eax, -4(%rbp)	# tmp128, temp
	.loc 1 345 0
	movq	img(%rip), %rax	# img, img.12
	movl	24(%rax), %eax	# img.12_15->type, D.4562
	cmpl	$2, %eax	#, D.4562
	jne	.L46	#,
	.loc 1 347 0
	movl	-4(%rbp), %eax	# temp, tmp131
	cltq
	movzwl	OffsetList4x4input(%rax,%rax), %eax	# OffsetList4x4input, D.4563
	movswl	%ax, %edx	# D.4563, D.4562
	movl	-8(%rbp), %eax	# qp_per, tmp132
	movl	%eax, %ecx	# tmp132, tmp387
	sall	%cl, %edx	# tmp387, D.4562
	movl	-20(%rbp), %eax	# i, tmp134
	cltq
	movl	-12(%rbp), %ecx	# k, tmp136
	movslq	%ecx, %rsi	# tmp136, tmp135
	movl	-16(%rbp), %ecx	# j, tmp138
	movslq	%ecx, %rcx	# tmp138, tmp137
	salq	$2, %rsi	#, tmp139
	addq	%rsi, %rcx	# tmp139, tmp140
	salq	$2, %rcx	#, tmp141
	addq	%rcx, %rax	# tmp141, tmp142
	movl	%edx, LevelOffset4x4Luma_Intra(,%rax,4)	# D.4562, LevelOffset4x4Luma_Intra
	.loc 1 348 0
	movl	-4(%rbp), %eax	# temp, tmp144
	cltq
	addq	$16, %rax	#, tmp145
	movzwl	OffsetList4x4input(%rax,%rax), %eax	# OffsetList4x4input, D.4563
	movswl	%ax, %edx	# D.4563, D.4562
	movl	-8(%rbp), %eax	# qp_per, tmp146
	movl	%eax, %ecx	# tmp146, tmp388
	sall	%cl, %edx	# tmp388, D.4562
	movl	-20(%rbp), %eax	# i, tmp148
	cltq
	movl	-12(%rbp), %ecx	# k, tmp150
	movslq	%ecx, %rsi	# tmp150, tmp149
	movl	-16(%rbp), %ecx	# j, tmp152
	movslq	%ecx, %rcx	# tmp152, tmp151
	salq	$2, %rsi	#, tmp153
	addq	%rsi, %rcx	# tmp153, tmp154
	salq	$2, %rcx	#, tmp155
	addq	%rcx, %rax	# tmp155, tmp156
	movl	%edx, LevelOffset4x4Chroma_Intra(,%rax,4)	# D.4562, LevelOffset4x4Chroma_Intra
	.loc 1 349 0
	movl	-4(%rbp), %eax	# temp, tmp158
	cltq
	addq	$32, %rax	#, tmp159
	movzwl	OffsetList4x4input(%rax,%rax), %eax	# OffsetList4x4input, D.4563
	movswl	%ax, %edx	# D.4563, D.4562
	movl	-8(%rbp), %eax	# qp_per, tmp160
	movl	%eax, %ecx	# tmp160, tmp389
	sall	%cl, %edx	# tmp389, D.4562
	movl	-20(%rbp), %eax	# i, tmp162
	cltq
	movl	-12(%rbp), %ecx	# k, tmp164
	movslq	%ecx, %rsi	# tmp164, tmp163
	movl	-16(%rbp), %ecx	# j, tmp166
	movslq	%ecx, %rcx	# tmp166, tmp165
	salq	$2, %rsi	#, tmp167
	addq	%rsi, %rcx	# tmp167, tmp168
	salq	$2, %rcx	#, tmp169
	addq	%rcx, %rax	# tmp169, tmp170
	addq	$208, %rax	#, tmp171
	movl	%edx, LevelOffset4x4Chroma_Intra(,%rax,4)	# D.4562, LevelOffset4x4Chroma_Intra
	jmp	.L47	#
.L46:
	.loc 1 353 0
	movl	-4(%rbp), %eax	# temp, tmp173
	cltq
	addq	$48, %rax	#, tmp174
	movzwl	OffsetList4x4input(%rax,%rax), %eax	# OffsetList4x4input, D.4563
	movswl	%ax, %edx	# D.4563, D.4562
	movl	-8(%rbp), %eax	# qp_per, tmp175
	movl	%eax, %ecx	# tmp175, tmp390
	sall	%cl, %edx	# tmp390, D.4562
	movl	-20(%rbp), %eax	# i, tmp177
	cltq
	movl	-12(%rbp), %ecx	# k, tmp179
	movslq	%ecx, %rsi	# tmp179, tmp178
	movl	-16(%rbp), %ecx	# j, tmp181
	movslq	%ecx, %rcx	# tmp181, tmp180
	salq	$2, %rsi	#, tmp182
	addq	%rsi, %rcx	# tmp182, tmp183
	salq	$2, %rcx	#, tmp184
	addq	%rcx, %rax	# tmp184, tmp185
	movl	%edx, LevelOffset4x4Luma_Intra(,%rax,4)	# D.4562, LevelOffset4x4Luma_Intra
	.loc 1 354 0
	movl	-4(%rbp), %eax	# temp, tmp187
	cltq
	addq	$64, %rax	#, tmp188
	movzwl	OffsetList4x4input(%rax,%rax), %eax	# OffsetList4x4input, D.4563
	movswl	%ax, %edx	# D.4563, D.4562
	movl	-8(%rbp), %eax	# qp_per, tmp189
	movl	%eax, %ecx	# tmp189, tmp391
	sall	%cl, %edx	# tmp391, D.4562
	movl	-20(%rbp), %eax	# i, tmp191
	cltq
	movl	-12(%rbp), %ecx	# k, tmp193
	movslq	%ecx, %rsi	# tmp193, tmp192
	movl	-16(%rbp), %ecx	# j, tmp195
	movslq	%ecx, %rcx	# tmp195, tmp194
	salq	$2, %rsi	#, tmp196
	addq	%rsi, %rcx	# tmp196, tmp197
	salq	$2, %rcx	#, tmp198
	addq	%rcx, %rax	# tmp198, tmp199
	movl	%edx, LevelOffset4x4Chroma_Intra(,%rax,4)	# D.4562, LevelOffset4x4Chroma_Intra
	.loc 1 355 0
	movl	-4(%rbp), %eax	# temp, tmp201
	cltq
	addq	$80, %rax	#, tmp202
	movzwl	OffsetList4x4input(%rax,%rax), %eax	# OffsetList4x4input, D.4563
	movswl	%ax, %edx	# D.4563, D.4562
	movl	-8(%rbp), %eax	# qp_per, tmp203
	movl	%eax, %ecx	# tmp203, tmp392
	sall	%cl, %edx	# tmp392, D.4562
	movl	-20(%rbp), %eax	# i, tmp205
	cltq
	movl	-12(%rbp), %ecx	# k, tmp207
	movslq	%ecx, %rsi	# tmp207, tmp206
	movl	-16(%rbp), %ecx	# j, tmp209
	movslq	%ecx, %rcx	# tmp209, tmp208
	salq	$2, %rsi	#, tmp210
	addq	%rsi, %rcx	# tmp210, tmp211
	salq	$2, %rcx	#, tmp212
	addq	%rcx, %rax	# tmp212, tmp213
	addq	$208, %rax	#, tmp214
	movl	%edx, LevelOffset4x4Chroma_Intra(,%rax,4)	# D.4562, LevelOffset4x4Chroma_Intra
.L47:
	.loc 1 358 0
	movl	-4(%rbp), %eax	# temp, tmp216
	cltq
	addq	$96, %rax	#, tmp217
	movzwl	OffsetList4x4input(%rax,%rax), %eax	# OffsetList4x4input, D.4563
	movswl	%ax, %edx	# D.4563, D.4562
	movl	-8(%rbp), %eax	# qp_per, tmp218
	movl	%eax, %ecx	# tmp218, tmp393
	sall	%cl, %edx	# tmp393, D.4562
	movl	-20(%rbp), %eax	# i, tmp220
	cltq
	movl	-12(%rbp), %ecx	# k, tmp222
	movslq	%ecx, %rsi	# tmp222, tmp221
	movl	-16(%rbp), %ecx	# j, tmp224
	movslq	%ecx, %rcx	# tmp224, tmp223
	salq	$2, %rsi	#, tmp225
	addq	%rsi, %rcx	# tmp225, tmp226
	salq	$2, %rcx	#, tmp227
	addq	%rcx, %rax	# tmp227, tmp228
	movl	%edx, LevelOffset4x4Luma_Inter(,%rax,4)	# D.4562, LevelOffset4x4Luma_Inter
	.loc 1 359 0
	movl	-4(%rbp), %eax	# temp, tmp230
	cltq
	addq	$112, %rax	#, tmp231
	movzwl	OffsetList4x4input(%rax,%rax), %eax	# OffsetList4x4input, D.4563
	movswl	%ax, %edx	# D.4563, D.4562
	movl	-8(%rbp), %eax	# qp_per, tmp232
	movl	%eax, %ecx	# tmp232, tmp394
	sall	%cl, %edx	# tmp394, D.4562
	movl	-20(%rbp), %eax	# i, tmp234
	cltq
	movl	-12(%rbp), %ecx	# k, tmp236
	movslq	%ecx, %rsi	# tmp236, tmp235
	movl	-16(%rbp), %ecx	# j, tmp238
	movslq	%ecx, %rcx	# tmp238, tmp237
	salq	$2, %rsi	#, tmp239
	addq	%rsi, %rcx	# tmp239, tmp240
	salq	$2, %rcx	#, tmp241
	addq	%rcx, %rax	# tmp241, tmp242
	movl	%edx, LevelOffset4x4Chroma_Inter(,%rax,4)	# D.4562, LevelOffset4x4Chroma_Inter
	.loc 1 360 0
	movl	-4(%rbp), %eax	# temp, tmp244
	cltq
	subq	$-128, %rax	#, tmp245
	movzwl	OffsetList4x4input(%rax,%rax), %eax	# OffsetList4x4input, D.4563
	movswl	%ax, %edx	# D.4563, D.4562
	movl	-8(%rbp), %eax	# qp_per, tmp246
	movl	%eax, %ecx	# tmp246, tmp395
	sall	%cl, %edx	# tmp395, D.4562
	movl	-20(%rbp), %eax	# i, tmp248
	cltq
	movl	-12(%rbp), %ecx	# k, tmp250
	movslq	%ecx, %rsi	# tmp250, tmp249
	movl	-16(%rbp), %ecx	# j, tmp252
	movslq	%ecx, %rcx	# tmp252, tmp251
	salq	$2, %rsi	#, tmp253
	addq	%rsi, %rcx	# tmp253, tmp254
	salq	$2, %rcx	#, tmp255
	addq	%rcx, %rax	# tmp255, tmp256
	addq	$208, %rax	#, tmp257
	movl	%edx, LevelOffset4x4Chroma_Inter(,%rax,4)	# D.4562, LevelOffset4x4Chroma_Inter
	.loc 1 342 0
	addl	$1, -20(%rbp)	#, i
.L45:
	.loc 1 342 0 is_stmt 0 discriminator 1
	cmpl	$3, -20(%rbp)	#, i
	jle	.L48	#,
	.loc 1 340 0 is_stmt 1
	addl	$1, -16(%rbp)	#, j
.L44:
	.loc 1 340 0 is_stmt 0 discriminator 1
	cmpl	$3, -16(%rbp)	#, j
	jle	.L49	#,
	.loc 1 337 0 is_stmt 1
	addl	$1, -12(%rbp)	#, k
.L43:
	.loc 1 337 0 is_stmt 0 discriminator 1
	cmpl	$12, -12(%rbp)	#, k
	jle	.L50	#,
	jmp	.L41	#
.L42:
	.loc 1 367 0 is_stmt 1
	movl	$0, -12(%rbp)	#, k
	jmp	.L52	#
.L59:
	.loc 1 369 0
	movl	-12(%rbp), %eax	# k, tmp261
	addl	$5, %eax	#, tmp260
	movl	%eax, -8(%rbp)	# tmp260, qp_per
	.loc 1 370 0
	movl	$0, -16(%rbp)	#, j
	jmp	.L53	#
.L58:
	.loc 1 372 0
	movl	$0, -20(%rbp)	#, i
	jmp	.L54	#
.L57:
	.loc 1 374 0
	movl	-20(%rbp), %eax	# i, tmp262
	leal	0(,%rax,4), %edx	#, D.4562
	movl	-16(%rbp), %eax	# j, tmp266
	addl	%edx, %eax	# D.4562, tmp265
	movl	%eax, -4(%rbp)	# tmp265, temp
	.loc 1 375 0
	movq	img(%rip), %rax	# img, img.13
	movl	24(%rax), %eax	# img.13_53->type, D.4562
	cmpl	$2, %eax	#, D.4562
	jne	.L55	#,
	.loc 1 377 0
	movl	-4(%rbp), %eax	# temp, tmp268
	cltq
	movzwl	Offset_intra_default_intra(%rax,%rax), %eax	# Offset_intra_default_intra, D.4563
	movswl	%ax, %edx	# D.4563, D.4562
	movl	-8(%rbp), %eax	# qp_per, tmp269
	movl	%eax, %ecx	# tmp269, tmp396
	sall	%cl, %edx	# tmp396, D.4562
	movl	-20(%rbp), %eax	# i, tmp271
	cltq
	movl	-12(%rbp), %ecx	# k, tmp273
	movslq	%ecx, %rsi	# tmp273, tmp272
	movl	-16(%rbp), %ecx	# j, tmp275
	movslq	%ecx, %rcx	# tmp275, tmp274
	salq	$2, %rsi	#, tmp276
	addq	%rsi, %rcx	# tmp276, tmp277
	salq	$2, %rcx	#, tmp278
	addq	%rcx, %rax	# tmp278, tmp279
	movl	%edx, LevelOffset4x4Luma_Intra(,%rax,4)	# D.4562, LevelOffset4x4Luma_Intra
	.loc 1 378 0
	movl	-4(%rbp), %eax	# temp, tmp281
	cltq
	movzwl	Offset_intra_default_intra(%rax,%rax), %eax	# Offset_intra_default_intra, D.4563
	movswl	%ax, %edx	# D.4563, D.4562
	movl	-8(%rbp), %eax	# qp_per, tmp282
	movl	%eax, %ecx	# tmp282, tmp397
	sall	%cl, %edx	# tmp397, D.4562
	movl	-20(%rbp), %eax	# i, tmp284
	cltq
	movl	-12(%rbp), %ecx	# k, tmp286
	movslq	%ecx, %rsi	# tmp286, tmp285
	movl	-16(%rbp), %ecx	# j, tmp288
	movslq	%ecx, %rcx	# tmp288, tmp287
	salq	$2, %rsi	#, tmp289
	addq	%rsi, %rcx	# tmp289, tmp290
	salq	$2, %rcx	#, tmp291
	addq	%rcx, %rax	# tmp291, tmp292
	movl	%edx, LevelOffset4x4Chroma_Intra(,%rax,4)	# D.4562, LevelOffset4x4Chroma_Intra
	.loc 1 379 0
	movl	-4(%rbp), %eax	# temp, tmp294
	cltq
	movzwl	Offset_intra_default_intra(%rax,%rax), %eax	# Offset_intra_default_intra, D.4563
	movswl	%ax, %edx	# D.4563, D.4562
	movl	-8(%rbp), %eax	# qp_per, tmp295
	movl	%eax, %ecx	# tmp295, tmp398
	sall	%cl, %edx	# tmp398, D.4562
	movl	-20(%rbp), %eax	# i, tmp297
	cltq
	movl	-12(%rbp), %ecx	# k, tmp299
	movslq	%ecx, %rsi	# tmp299, tmp298
	movl	-16(%rbp), %ecx	# j, tmp301
	movslq	%ecx, %rcx	# tmp301, tmp300
	salq	$2, %rsi	#, tmp302
	addq	%rsi, %rcx	# tmp302, tmp303
	salq	$2, %rcx	#, tmp304
	addq	%rcx, %rax	# tmp304, tmp305
	addq	$208, %rax	#, tmp306
	movl	%edx, LevelOffset4x4Chroma_Intra(,%rax,4)	# D.4562, LevelOffset4x4Chroma_Intra
	jmp	.L56	#
.L55:
	.loc 1 383 0
	movl	-4(%rbp), %eax	# temp, tmp308
	cltq
	movzwl	Offset_intra_default_inter(%rax,%rax), %eax	# Offset_intra_default_inter, D.4563
	movswl	%ax, %edx	# D.4563, D.4562
	movl	-8(%rbp), %eax	# qp_per, tmp309
	movl	%eax, %ecx	# tmp309, tmp399
	sall	%cl, %edx	# tmp399, D.4562
	movl	-20(%rbp), %eax	# i, tmp311
	cltq
	movl	-12(%rbp), %ecx	# k, tmp313
	movslq	%ecx, %rsi	# tmp313, tmp312
	movl	-16(%rbp), %ecx	# j, tmp315
	movslq	%ecx, %rcx	# tmp315, tmp314
	salq	$2, %rsi	#, tmp316
	addq	%rsi, %rcx	# tmp316, tmp317
	salq	$2, %rcx	#, tmp318
	addq	%rcx, %rax	# tmp318, tmp319
	movl	%edx, LevelOffset4x4Luma_Intra(,%rax,4)	# D.4562, LevelOffset4x4Luma_Intra
	.loc 1 384 0
	movl	-4(%rbp), %eax	# temp, tmp321
	cltq
	movzwl	Offset_intra_default_inter(%rax,%rax), %eax	# Offset_intra_default_inter, D.4563
	movswl	%ax, %edx	# D.4563, D.4562
	movl	-8(%rbp), %eax	# qp_per, tmp322
	movl	%eax, %ecx	# tmp322, tmp400
	sall	%cl, %edx	# tmp400, D.4562
	movl	-20(%rbp), %eax	# i, tmp324
	cltq
	movl	-12(%rbp), %ecx	# k, tmp326
	movslq	%ecx, %rsi	# tmp326, tmp325
	movl	-16(%rbp), %ecx	# j, tmp328
	movslq	%ecx, %rcx	# tmp328, tmp327
	salq	$2, %rsi	#, tmp329
	addq	%rsi, %rcx	# tmp329, tmp330
	salq	$2, %rcx	#, tmp331
	addq	%rcx, %rax	# tmp331, tmp332
	movl	%edx, LevelOffset4x4Chroma_Intra(,%rax,4)	# D.4562, LevelOffset4x4Chroma_Intra
	.loc 1 385 0
	movl	-4(%rbp), %eax	# temp, tmp334
	cltq
	movzwl	Offset_intra_default_inter(%rax,%rax), %eax	# Offset_intra_default_inter, D.4563
	movswl	%ax, %edx	# D.4563, D.4562
	movl	-8(%rbp), %eax	# qp_per, tmp335
	movl	%eax, %ecx	# tmp335, tmp401
	sall	%cl, %edx	# tmp401, D.4562
	movl	-20(%rbp), %eax	# i, tmp337
	cltq
	movl	-12(%rbp), %ecx	# k, tmp339
	movslq	%ecx, %rsi	# tmp339, tmp338
	movl	-16(%rbp), %ecx	# j, tmp341
	movslq	%ecx, %rcx	# tmp341, tmp340
	salq	$2, %rsi	#, tmp342
	addq	%rsi, %rcx	# tmp342, tmp343
	salq	$2, %rcx	#, tmp344
	addq	%rcx, %rax	# tmp344, tmp345
	addq	$208, %rax	#, tmp346
	movl	%edx, LevelOffset4x4Chroma_Intra(,%rax,4)	# D.4562, LevelOffset4x4Chroma_Intra
.L56:
	.loc 1 387 0
	movl	-4(%rbp), %eax	# temp, tmp348
	cltq
	movzwl	Offset_inter_default(%rax,%rax), %eax	# Offset_inter_default, D.4563
	movswl	%ax, %edx	# D.4563, D.4562
	movl	-8(%rbp), %eax	# qp_per, tmp349
	movl	%eax, %ecx	# tmp349, tmp402
	sall	%cl, %edx	# tmp402, D.4562
	movl	-20(%rbp), %eax	# i, tmp351
	cltq
	movl	-12(%rbp), %ecx	# k, tmp353
	movslq	%ecx, %rsi	# tmp353, tmp352
	movl	-16(%rbp), %ecx	# j, tmp355
	movslq	%ecx, %rcx	# tmp355, tmp354
	salq	$2, %rsi	#, tmp356
	addq	%rsi, %rcx	# tmp356, tmp357
	salq	$2, %rcx	#, tmp358
	addq	%rcx, %rax	# tmp358, tmp359
	movl	%edx, LevelOffset4x4Luma_Inter(,%rax,4)	# D.4562, LevelOffset4x4Luma_Inter
	.loc 1 388 0
	movl	-4(%rbp), %eax	# temp, tmp361
	cltq
	movzwl	Offset_inter_default(%rax,%rax), %eax	# Offset_inter_default, D.4563
	movswl	%ax, %edx	# D.4563, D.4562
	movl	-8(%rbp), %eax	# qp_per, tmp362
	movl	%eax, %ecx	# tmp362, tmp403
	sall	%cl, %edx	# tmp403, D.4562
	movl	-20(%rbp), %eax	# i, tmp364
	cltq
	movl	-12(%rbp), %ecx	# k, tmp366
	movslq	%ecx, %rsi	# tmp366, tmp365
	movl	-16(%rbp), %ecx	# j, tmp368
	movslq	%ecx, %rcx	# tmp368, tmp367
	salq	$2, %rsi	#, tmp369
	addq	%rsi, %rcx	# tmp369, tmp370
	salq	$2, %rcx	#, tmp371
	addq	%rcx, %rax	# tmp371, tmp372
	movl	%edx, LevelOffset4x4Chroma_Inter(,%rax,4)	# D.4562, LevelOffset4x4Chroma_Inter
	.loc 1 389 0
	movl	-4(%rbp), %eax	# temp, tmp374
	cltq
	movzwl	Offset_inter_default(%rax,%rax), %eax	# Offset_inter_default, D.4563
	movswl	%ax, %edx	# D.4563, D.4562
	movl	-8(%rbp), %eax	# qp_per, tmp375
	movl	%eax, %ecx	# tmp375, tmp404
	sall	%cl, %edx	# tmp404, D.4562
	movl	-20(%rbp), %eax	# i, tmp377
	cltq
	movl	-12(%rbp), %ecx	# k, tmp379
	movslq	%ecx, %rsi	# tmp379, tmp378
	movl	-16(%rbp), %ecx	# j, tmp381
	movslq	%ecx, %rcx	# tmp381, tmp380
	salq	$2, %rsi	#, tmp382
	addq	%rsi, %rcx	# tmp382, tmp383
	salq	$2, %rcx	#, tmp384
	addq	%rcx, %rax	# tmp384, tmp385
	addq	$208, %rax	#, tmp386
	movl	%edx, LevelOffset4x4Chroma_Inter(,%rax,4)	# D.4562, LevelOffset4x4Chroma_Inter
	.loc 1 372 0
	addl	$1, -20(%rbp)	#, i
.L54:
	.loc 1 372 0 is_stmt 0 discriminator 1
	cmpl	$3, -20(%rbp)	#, i
	jle	.L57	#,
	.loc 1 370 0 is_stmt 1
	addl	$1, -16(%rbp)	#, j
.L53:
	.loc 1 370 0 is_stmt 0 discriminator 1
	cmpl	$3, -16(%rbp)	#, j
	jle	.L58	#,
	.loc 1 367 0 is_stmt 1
	addl	$1, -12(%rbp)	#, k
.L52:
	.loc 1 367 0 is_stmt 0 discriminator 1
	cmpl	$12, -12(%rbp)	#, k
	jle	.L59	#,
.L41:
	.loc 1 394 0 is_stmt 1
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	CalculateOffsetParam, .-CalculateOffsetParam
	.globl	CalculateOffset8Param
	.type	CalculateOffset8Param, @function
CalculateOffset8Param:
.LFB6:
	.loc 1 404 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 409 0
	movq	input(%rip), %rax	# input, input.14
	movl	3584(%rax), %eax	# input.14_7->OffsetMatrixPresentFlag, D.4564
	testl	%eax, %eax	# D.4564
	je	.L61	#,
	.loc 1 411 0
	movl	$0, -12(%rbp)	#, k
	jmp	.L62	#
.L69:
	.loc 1 413 0
	movl	-12(%rbp), %eax	# k, tmp88
	addl	$6, %eax	#, tmp87
	movl	%eax, -8(%rbp)	# tmp87, q_bits
	.loc 1 414 0
	movl	$0, -16(%rbp)	#, j
	jmp	.L63	#
.L68:
	.loc 1 416 0
	movl	$0, -20(%rbp)	#, i
	jmp	.L64	#
.L67:
	.loc 1 418 0
	movl	-20(%rbp), %eax	# i, tmp89
	leal	0(,%rax,8), %edx	#, D.4564
	movl	-16(%rbp), %eax	# j, tmp93
	addl	%edx, %eax	# D.4564, tmp92
	movl	%eax, -4(%rbp)	# tmp92, temp
	.loc 1 419 0
	movq	img(%rip), %rax	# img, img.15
	movl	24(%rax), %eax	# img.15_15->type, D.4564
	cmpl	$2, %eax	#, D.4564
	jne	.L65	#,
	.loc 1 420 0
	movl	-4(%rbp), %eax	# temp, tmp95
	cltq
	movzwl	OffsetList8x8input(%rax,%rax), %eax	# OffsetList8x8input, D.4565
	movswl	%ax, %edx	# D.4565, D.4564
	movl	-8(%rbp), %eax	# q_bits, tmp96
	movl	%eax, %ecx	# tmp96, tmp183
	sall	%cl, %edx	# tmp183, D.4564
	movl	-20(%rbp), %eax	# i, tmp98
	cltq
	movl	-12(%rbp), %ecx	# k, tmp100
	movslq	%ecx, %rsi	# tmp100, tmp99
	movl	-16(%rbp), %ecx	# j, tmp102
	movslq	%ecx, %rcx	# tmp102, tmp101
	salq	$3, %rsi	#, tmp103
	addq	%rsi, %rcx	# tmp103, tmp104
	salq	$3, %rcx	#, tmp105
	addq	%rcx, %rax	# tmp105, tmp106
	movl	%edx, LevelOffset8x8Luma_Intra(,%rax,4)	# D.4564, LevelOffset8x8Luma_Intra
	jmp	.L66	#
.L65:
	.loc 1 422 0
	movl	-4(%rbp), %eax	# temp, tmp108
	cltq
	addq	$64, %rax	#, tmp109
	movzwl	OffsetList8x8input(%rax,%rax), %eax	# OffsetList8x8input, D.4565
	movswl	%ax, %edx	# D.4565, D.4564
	movl	-8(%rbp), %eax	# q_bits, tmp110
	movl	%eax, %ecx	# tmp110, tmp184
	sall	%cl, %edx	# tmp184, D.4564
	movl	-20(%rbp), %eax	# i, tmp112
	cltq
	movl	-12(%rbp), %ecx	# k, tmp114
	movslq	%ecx, %rsi	# tmp114, tmp113
	movl	-16(%rbp), %ecx	# j, tmp116
	movslq	%ecx, %rcx	# tmp116, tmp115
	salq	$3, %rsi	#, tmp117
	addq	%rsi, %rcx	# tmp117, tmp118
	salq	$3, %rcx	#, tmp119
	addq	%rcx, %rax	# tmp119, tmp120
	movl	%edx, LevelOffset8x8Luma_Intra(,%rax,4)	# D.4564, LevelOffset8x8Luma_Intra
.L66:
	.loc 1 424 0
	movl	-4(%rbp), %eax	# temp, tmp122
	cltq
	subq	$-128, %rax	#, tmp123
	movzwl	OffsetList8x8input(%rax,%rax), %eax	# OffsetList8x8input, D.4565
	movswl	%ax, %edx	# D.4565, D.4564
	movl	-8(%rbp), %eax	# q_bits, tmp124
	movl	%eax, %ecx	# tmp124, tmp185
	sall	%cl, %edx	# tmp185, D.4564
	movl	-20(%rbp), %eax	# i, tmp126
	cltq
	movl	-12(%rbp), %ecx	# k, tmp128
	movslq	%ecx, %rsi	# tmp128, tmp127
	movl	-16(%rbp), %ecx	# j, tmp130
	movslq	%ecx, %rcx	# tmp130, tmp129
	salq	$3, %rsi	#, tmp131
	addq	%rsi, %rcx	# tmp131, tmp132
	salq	$3, %rcx	#, tmp133
	addq	%rcx, %rax	# tmp133, tmp134
	movl	%edx, LevelOffset8x8Luma_Inter(,%rax,4)	# D.4564, LevelOffset8x8Luma_Inter
	.loc 1 416 0
	addl	$1, -20(%rbp)	#, i
.L64:
	.loc 1 416 0 is_stmt 0 discriminator 1
	cmpl	$7, -20(%rbp)	#, i
	jle	.L67	#,
	.loc 1 414 0 is_stmt 1
	addl	$1, -16(%rbp)	#, j
.L63:
	.loc 1 414 0 is_stmt 0 discriminator 1
	cmpl	$7, -16(%rbp)	#, j
	jle	.L68	#,
	.loc 1 411 0 is_stmt 1
	addl	$1, -12(%rbp)	#, k
.L62:
	.loc 1 411 0 is_stmt 0 discriminator 1
	cmpl	$12, -12(%rbp)	#, k
	jle	.L69	#,
	jmp	.L60	#
.L61:
	.loc 1 431 0 is_stmt 1
	movl	$0, -12(%rbp)	#, k
	jmp	.L71	#
.L78:
	.loc 1 433 0
	movl	-12(%rbp), %eax	# k, tmp138
	addl	$6, %eax	#, tmp137
	movl	%eax, -8(%rbp)	# tmp137, q_bits
	.loc 1 434 0
	movl	$0, -16(%rbp)	#, j
	jmp	.L72	#
.L77:
	.loc 1 436 0
	movl	$0, -20(%rbp)	#, i
	jmp	.L73	#
.L76:
	.loc 1 438 0
	movl	-20(%rbp), %eax	# i, tmp139
	leal	0(,%rax,8), %edx	#, D.4564
	movl	-16(%rbp), %eax	# j, tmp143
	addl	%edx, %eax	# D.4564, tmp142
	movl	%eax, -4(%rbp)	# tmp142, temp
	.loc 1 439 0
	movq	img(%rip), %rax	# img, img.16
	movl	24(%rax), %eax	# img.16_35->type, D.4564
	cmpl	$2, %eax	#, D.4564
	jne	.L74	#,
	.loc 1 440 0
	movl	-4(%rbp), %eax	# temp, tmp145
	cltq
	movzwl	Offset8_intra_default_intra(%rax,%rax), %eax	# Offset8_intra_default_intra, D.4565
	movswl	%ax, %edx	# D.4565, D.4564
	movl	-8(%rbp), %eax	# q_bits, tmp146
	movl	%eax, %ecx	# tmp146, tmp186
	sall	%cl, %edx	# tmp186, D.4564
	movl	-20(%rbp), %eax	# i, tmp148
	cltq
	movl	-12(%rbp), %ecx	# k, tmp150
	movslq	%ecx, %rsi	# tmp150, tmp149
	movl	-16(%rbp), %ecx	# j, tmp152
	movslq	%ecx, %rcx	# tmp152, tmp151
	salq	$3, %rsi	#, tmp153
	addq	%rsi, %rcx	# tmp153, tmp154
	salq	$3, %rcx	#, tmp155
	addq	%rcx, %rax	# tmp155, tmp156
	movl	%edx, LevelOffset8x8Luma_Intra(,%rax,4)	# D.4564, LevelOffset8x8Luma_Intra
	jmp	.L75	#
.L74:
	.loc 1 442 0
	movl	-4(%rbp), %eax	# temp, tmp158
	cltq
	movzwl	Offset8_intra_default_inter(%rax,%rax), %eax	# Offset8_intra_default_inter, D.4565
	movswl	%ax, %edx	# D.4565, D.4564
	movl	-8(%rbp), %eax	# q_bits, tmp159
	movl	%eax, %ecx	# tmp159, tmp187
	sall	%cl, %edx	# tmp187, D.4564
	movl	-20(%rbp), %eax	# i, tmp161
	cltq
	movl	-12(%rbp), %ecx	# k, tmp163
	movslq	%ecx, %rsi	# tmp163, tmp162
	movl	-16(%rbp), %ecx	# j, tmp165
	movslq	%ecx, %rcx	# tmp165, tmp164
	salq	$3, %rsi	#, tmp166
	addq	%rsi, %rcx	# tmp166, tmp167
	salq	$3, %rcx	#, tmp168
	addq	%rcx, %rax	# tmp168, tmp169
	movl	%edx, LevelOffset8x8Luma_Intra(,%rax,4)	# D.4564, LevelOffset8x8Luma_Intra
.L75:
	.loc 1 443 0
	movl	-4(%rbp), %eax	# temp, tmp171
	cltq
	movzwl	Offset8_inter_default(%rax,%rax), %eax	# Offset8_inter_default, D.4565
	movswl	%ax, %edx	# D.4565, D.4564
	movl	-8(%rbp), %eax	# q_bits, tmp172
	movl	%eax, %ecx	# tmp172, tmp188
	sall	%cl, %edx	# tmp188, D.4564
	movl	-20(%rbp), %eax	# i, tmp174
	cltq
	movl	-12(%rbp), %ecx	# k, tmp176
	movslq	%ecx, %rsi	# tmp176, tmp175
	movl	-16(%rbp), %ecx	# j, tmp178
	movslq	%ecx, %rcx	# tmp178, tmp177
	salq	$3, %rsi	#, tmp179
	addq	%rsi, %rcx	# tmp179, tmp180
	salq	$3, %rcx	#, tmp181
	addq	%rcx, %rax	# tmp181, tmp182
	movl	%edx, LevelOffset8x8Luma_Inter(,%rax,4)	# D.4564, LevelOffset8x8Luma_Inter
	.loc 1 436 0
	addl	$1, -20(%rbp)	#, i
.L73:
	.loc 1 436 0 is_stmt 0 discriminator 1
	cmpl	$7, -20(%rbp)	#, i
	jle	.L76	#,
	.loc 1 434 0 is_stmt 1
	addl	$1, -16(%rbp)	#, j
.L72:
	.loc 1 434 0 is_stmt 0 discriminator 1
	cmpl	$7, -16(%rbp)	#, j
	jle	.L77	#,
	.loc 1 431 0 is_stmt 1
	addl	$1, -12(%rbp)	#, k
.L71:
	.loc 1 431 0 is_stmt 0 discriminator 1
	cmpl	$12, -12(%rbp)	#, k
	jle	.L78	#,
.L60:
	.loc 1 448 0 is_stmt 1
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	CalculateOffset8Param, .-CalculateOffset8Param
.Letext0:
	.file 2 "/usr/include/x86_64-linux-gnu/sys/types.h"
	.file 3 "defines.h"
	.file 4 "parsetcommon.h"
	.file 5 "global.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x24d3
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF512
	.byte	0x1
	.long	.LASF513
	.long	.LASF514
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
	.uleb128 0x7
	.long	.LASF11
	.byte	0x2
	.byte	0xc5
	.long	0x5e
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF10
	.uleb128 0x7
	.long	.LASF12
	.byte	0x3
	.byte	0x1e
	.long	0x3b
	.uleb128 0x8
	.byte	0x4
	.byte	0x4
	.byte	0x2a
	.long	0xc8
	.uleb128 0x9
	.long	.LASF13
	.sleb128 0
	.uleb128 0x9
	.long	.LASF14
	.sleb128 1
	.byte	0
	.uleb128 0x7
	.long	.LASF15
	.byte	0x4
	.byte	0x2d
	.long	0xb3
	.uleb128 0x4
	.long	0x34
	.long	0xe3
	.uleb128 0x5
	.long	0x75
	.byte	0x7
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xa8
	.uleb128 0x7
	.long	.LASF16
	.byte	0x5
	.byte	0x3e
	.long	0x96
	.uleb128 0x8
	.byte	0x4
	.byte	0x5
	.byte	0x9b
	.long	0x133
	.uleb128 0x9
	.long	.LASF17
	.sleb128 0
	.uleb128 0x9
	.long	.LASF18
	.sleb128 1
	.uleb128 0x9
	.long	.LASF19
	.sleb128 2
	.uleb128 0x9
	.long	.LASF20
	.sleb128 3
	.uleb128 0x9
	.long	.LASF21
	.sleb128 4
	.uleb128 0x9
	.long	.LASF22
	.sleb128 5
	.uleb128 0x9
	.long	.LASF23
	.sleb128 6
	.uleb128 0x9
	.long	.LASF24
	.sleb128 7
	.uleb128 0x9
	.long	.LASF25
	.sleb128 8
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.byte	0x5
	.byte	0xc1
	.long	0x15a
	.uleb128 0x9
	.long	.LASF26
	.sleb128 0
	.uleb128 0x9
	.long	.LASF27
	.sleb128 1
	.uleb128 0x9
	.long	.LASF28
	.sleb128 2
	.uleb128 0x9
	.long	.LASF29
	.sleb128 3
	.uleb128 0x9
	.long	.LASF30
	.sleb128 4
	.byte	0
	.uleb128 0xa
	.byte	0x68
	.byte	0x5
	.byte	0xcf
	.long	0x24a
	.uleb128 0xb
	.long	.LASF31
	.byte	0x5
	.byte	0xd1
	.long	0x49
	.byte	0
	.uleb128 0xb
	.long	.LASF32
	.byte	0x5
	.byte	0xd1
	.long	0x49
	.byte	0x4
	.uleb128 0xb
	.long	.LASF33
	.byte	0x5
	.byte	0xd2
	.long	0x49
	.byte	0x8
	.uleb128 0xb
	.long	.LASF34
	.byte	0x5
	.byte	0xd3
	.long	0x49
	.byte	0xc
	.uleb128 0xb
	.long	.LASF35
	.byte	0x5
	.byte	0xd4
	.long	0x49
	.byte	0x10
	.uleb128 0xb
	.long	.LASF36
	.byte	0x5
	.byte	0xd5
	.long	0xe3
	.byte	0x18
	.uleb128 0xb
	.long	.LASF37
	.byte	0x5
	.byte	0xd6
	.long	0x89
	.byte	0x20
	.uleb128 0xb
	.long	.LASF38
	.byte	0x5
	.byte	0xd9
	.long	0x49
	.byte	0x28
	.uleb128 0xb
	.long	.LASF39
	.byte	0x5
	.byte	0xd9
	.long	0x49
	.byte	0x2c
	.uleb128 0xb
	.long	.LASF40
	.byte	0x5
	.byte	0xda
	.long	0x49
	.byte	0x30
	.uleb128 0xb
	.long	.LASF41
	.byte	0x5
	.byte	0xdb
	.long	0x49
	.byte	0x34
	.uleb128 0xb
	.long	.LASF42
	.byte	0x5
	.byte	0xdc
	.long	0x49
	.byte	0x38
	.uleb128 0xb
	.long	.LASF43
	.byte	0x5
	.byte	0xdd
	.long	0xe3
	.byte	0x40
	.uleb128 0xb
	.long	.LASF44
	.byte	0x5
	.byte	0xde
	.long	0x89
	.byte	0x48
	.uleb128 0xc
	.string	"C"
	.byte	0x5
	.byte	0xdf
	.long	0x34
	.byte	0x50
	.uleb128 0xc
	.string	"CS"
	.byte	0x5
	.byte	0xdf
	.long	0x34
	.byte	0x54
	.uleb128 0xc
	.string	"E"
	.byte	0x5
	.byte	0xe0
	.long	0x34
	.byte	0x58
	.uleb128 0xc
	.string	"ES"
	.byte	0x5
	.byte	0xe0
	.long	0x34
	.byte	0x5c
	.uleb128 0xc
	.string	"B"
	.byte	0x5
	.byte	0xe1
	.long	0x34
	.byte	0x60
	.uleb128 0xc
	.string	"BS"
	.byte	0x5
	.byte	0xe1
	.long	0x34
	.byte	0x64
	.byte	0
	.uleb128 0x7
	.long	.LASF45
	.byte	0x5
	.byte	0xe2
	.long	0x15a
	.uleb128 0x7
	.long	.LASF46
	.byte	0x5
	.byte	0xe4
	.long	0x260
	.uleb128 0x6
	.byte	0x8
	.long	0x24a
	.uleb128 0xa
	.byte	0x10
	.byte	0x5
	.byte	0xe7
	.long	0x293
	.uleb128 0xb
	.long	.LASF47
	.byte	0x5
	.byte	0xe9
	.long	0x42
	.byte	0
	.uleb128 0xc
	.string	"MPS"
	.byte	0x5
	.byte	0xea
	.long	0x3b
	.byte	0x2
	.uleb128 0xb
	.long	.LASF48
	.byte	0x5
	.byte	0xec
	.long	0x2d
	.byte	0x8
	.byte	0
	.uleb128 0x7
	.long	.LASF49
	.byte	0x5
	.byte	0xee
	.long	0x266
	.uleb128 0xd
	.value	0x5e0
	.byte	0x5
	.value	0x102
	.long	0x30a
	.uleb128 0xe
	.long	.LASF50
	.byte	0x5
	.value	0x104
	.long	0x30a
	.byte	0
	.uleb128 0xf
	.long	.LASF51
	.byte	0x5
	.value	0x105
	.long	0x320
	.value	0x210
	.uleb128 0xf
	.long	.LASF52
	.byte	0x5
	.value	0x106
	.long	0x336
	.value	0x330
	.uleb128 0xf
	.long	.LASF53
	.byte	0x5
	.value	0x107
	.long	0x34c
	.value	0x470
	.uleb128 0xf
	.long	.LASF54
	.byte	0x5
	.value	0x108
	.long	0x362
	.value	0x530
	.uleb128 0xf
	.long	.LASF55
	.byte	0x5
	.value	0x109
	.long	0x362
	.value	0x570
	.uleb128 0xf
	.long	.LASF56
	.byte	0x5
	.value	0x10a
	.long	0x372
	.value	0x5b0
	.byte	0
	.uleb128 0x4
	.long	0x293
	.long	0x320
	.uleb128 0x5
	.long	0x75
	.byte	0x2
	.uleb128 0x5
	.long	0x75
	.byte	0xa
	.byte	0
	.uleb128 0x4
	.long	0x293
	.long	0x336
	.uleb128 0x5
	.long	0x75
	.byte	0x1
	.uleb128 0x5
	.long	0x75
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.long	0x293
	.long	0x34c
	.uleb128 0x5
	.long	0x75
	.byte	0x1
	.uleb128 0x5
	.long	0x75
	.byte	0x9
	.byte	0
	.uleb128 0x4
	.long	0x293
	.long	0x362
	.uleb128 0x5
	.long	0x75
	.byte	0x1
	.uleb128 0x5
	.long	0x75
	.byte	0x5
	.byte	0
	.uleb128 0x4
	.long	0x293
	.long	0x372
	.uleb128 0x5
	.long	0x75
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.long	0x293
	.long	0x382
	.uleb128 0x5
	.long	0x75
	.byte	0x2
	.byte	0
	.uleb128 0x10
	.long	.LASF57
	.byte	0x5
	.value	0x10c
	.long	0x29e
	.uleb128 0xd
	.value	0x2f60
	.byte	0x5
	.value	0x119
	.long	0x422
	.uleb128 0xe
	.long	.LASF58
	.byte	0x5
	.value	0x11b
	.long	0x422
	.byte	0
	.uleb128 0xe
	.long	.LASF59
	.byte	0x5
	.value	0x11c
	.long	0x362
	.byte	0x20
	.uleb128 0xe
	.long	.LASF60
	.byte	0x5
	.value	0x11d
	.long	0x432
	.byte	0x60
	.uleb128 0xf
	.long	.LASF61
	.byte	0x5
	.value	0x11e
	.long	0x448
	.value	0x120
	.uleb128 0xf
	.long	.LASF62
	.byte	0x5
	.value	0x11f
	.long	0x45e
	.value	0x3a0
	.uleb128 0xf
	.long	.LASF63
	.byte	0x5
	.value	0x120
	.long	0x45e
	.value	0xd00
	.uleb128 0xf
	.long	.LASF64
	.byte	0x5
	.value	0x121
	.long	0x474
	.value	0x1660
	.uleb128 0xf
	.long	.LASF65
	.byte	0x5
	.value	0x122
	.long	0x474
	.value	0x1980
	.uleb128 0xf
	.long	.LASF66
	.byte	0x5
	.value	0x123
	.long	0x45e
	.value	0x1ca0
	.uleb128 0xf
	.long	.LASF67
	.byte	0x5
	.value	0x124
	.long	0x45e
	.value	0x2600
	.byte	0
	.uleb128 0x4
	.long	0x293
	.long	0x432
	.uleb128 0x5
	.long	0x75
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.long	0x293
	.long	0x448
	.uleb128 0x5
	.long	0x75
	.byte	0x2
	.uleb128 0x5
	.long	0x75
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.long	0x293
	.long	0x45e
	.uleb128 0x5
	.long	0x75
	.byte	0x9
	.uleb128 0x5
	.long	0x75
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.long	0x293
	.long	0x474
	.uleb128 0x5
	.long	0x75
	.byte	0x9
	.uleb128 0x5
	.long	0x75
	.byte	0xe
	.byte	0
	.uleb128 0x4
	.long	0x293
	.long	0x48a
	.uleb128 0x5
	.long	0x75
	.byte	0x9
	.uleb128 0x5
	.long	0x75
	.byte	0x4
	.byte	0
	.uleb128 0x10
	.long	.LASF68
	.byte	0x5
	.value	0x125
	.long	0x38e
	.uleb128 0x11
	.long	.LASF73
	.byte	0x10
	.byte	0x5
	.value	0x134
	.long	0x4cb
	.uleb128 0xe
	.long	.LASF69
	.byte	0x5
	.value	0x136
	.long	0x34
	.byte	0
	.uleb128 0xe
	.long	.LASF70
	.byte	0x5
	.value	0x137
	.long	0x34
	.byte	0x4
	.uleb128 0xe
	.long	.LASF71
	.byte	0x5
	.value	0x138
	.long	0x4cb
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x496
	.uleb128 0x10
	.long	.LASF72
	.byte	0x5
	.value	0x139
	.long	0x496
	.uleb128 0x11
	.long	.LASF74
	.byte	0x20
	.byte	0x5
	.value	0x13c
	.long	0x539
	.uleb128 0xe
	.long	.LASF75
	.byte	0x5
	.value	0x13e
	.long	0x34
	.byte	0
	.uleb128 0xe
	.long	.LASF76
	.byte	0x5
	.value	0x13f
	.long	0x34
	.byte	0x4
	.uleb128 0xe
	.long	.LASF77
	.byte	0x5
	.value	0x140
	.long	0x34
	.byte	0x8
	.uleb128 0xe
	.long	.LASF78
	.byte	0x5
	.value	0x141
	.long	0x34
	.byte	0xc
	.uleb128 0xe
	.long	.LASF79
	.byte	0x5
	.value	0x142
	.long	0x34
	.byte	0x10
	.uleb128 0xe
	.long	.LASF71
	.byte	0x5
	.value	0x143
	.long	0x539
	.byte	0x18
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x4dd
	.uleb128 0x10
	.long	.LASF80
	.byte	0x5
	.value	0x144
	.long	0x4dd
	.uleb128 0x11
	.long	.LASF81
	.byte	0x30
	.byte	0x5
	.value	0x147
	.long	0x5d9
	.uleb128 0xe
	.long	.LASF82
	.byte	0x5
	.value	0x149
	.long	0x34
	.byte	0
	.uleb128 0xe
	.long	.LASF83
	.byte	0x5
	.value	0x14a
	.long	0x34
	.byte	0x4
	.uleb128 0xe
	.long	.LASF84
	.byte	0x5
	.value	0x14b
	.long	0x34
	.byte	0x8
	.uleb128 0x12
	.string	"len"
	.byte	0x5
	.value	0x14c
	.long	0x34
	.byte	0xc
	.uleb128 0x12
	.string	"inf"
	.byte	0x5
	.value	0x14d
	.long	0x34
	.byte	0x10
	.uleb128 0xe
	.long	.LASF85
	.byte	0x5
	.value	0x14e
	.long	0x49
	.byte	0x14
	.uleb128 0xe
	.long	.LASF86
	.byte	0x5
	.value	0x14f
	.long	0x34
	.byte	0x18
	.uleb128 0x12
	.string	"k"
	.byte	0x5
	.value	0x150
	.long	0x34
	.byte	0x1c
	.uleb128 0xe
	.long	.LASF87
	.byte	0x5
	.value	0x158
	.long	0x5f3
	.byte	0x20
	.uleb128 0xe
	.long	.LASF88
	.byte	0x5
	.value	0x15a
	.long	0x60f
	.byte	0x28
	.byte	0
	.uleb128 0x13
	.long	0x5f3
	.uleb128 0x14
	.long	0x34
	.uleb128 0x14
	.long	0x34
	.uleb128 0x14
	.long	0x89
	.uleb128 0x14
	.long	0x89
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x5d9
	.uleb128 0x13
	.long	0x609
	.uleb128 0x14
	.long	0x609
	.uleb128 0x14
	.long	0x255
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x54b
	.uleb128 0x6
	.byte	0x8
	.long	0x5f9
	.uleb128 0x10
	.long	.LASF89
	.byte	0x5
	.value	0x15c
	.long	0x54b
	.uleb128 0x15
	.long	.LASF90
	.value	0x278
	.byte	0x5
	.value	0x15f
	.long	0x89b
	.uleb128 0xe
	.long	.LASF91
	.byte	0x5
	.value	0x161
	.long	0x34
	.byte	0
	.uleb128 0xe
	.long	.LASF92
	.byte	0x5
	.value	0x162
	.long	0x34
	.byte	0x4
	.uleb128 0xe
	.long	.LASF93
	.byte	0x5
	.value	0x163
	.long	0x34
	.byte	0x8
	.uleb128 0x12
	.string	"qp"
	.byte	0x5
	.value	0x164
	.long	0x34
	.byte	0xc
	.uleb128 0xe
	.long	.LASF94
	.byte	0x5
	.value	0x165
	.long	0x34
	.byte	0x10
	.uleb128 0xe
	.long	.LASF95
	.byte	0x5
	.value	0x166
	.long	0xd3
	.byte	0x14
	.uleb128 0xe
	.long	.LASF96
	.byte	0x5
	.value	0x168
	.long	0x89b
	.byte	0x38
	.uleb128 0xe
	.long	.LASF97
	.byte	0x5
	.value	0x169
	.long	0x89b
	.byte	0x40
	.uleb128 0xe
	.long	.LASF98
	.byte	0x5
	.value	0x16b
	.long	0x34
	.byte	0x48
	.uleb128 0x12
	.string	"mvd"
	.byte	0x5
	.value	0x16c
	.long	0x8a1
	.byte	0x4c
	.uleb128 0xf
	.long	.LASF99
	.byte	0x5
	.value	0x16d
	.long	0x8c3
	.value	0x14c
	.uleb128 0xf
	.long	.LASF100
	.byte	0x5
	.value	0x16e
	.long	0x8c3
	.value	0x18c
	.uleb128 0x16
	.string	"cbp"
	.byte	0x5
	.value	0x16f
	.long	0x34
	.value	0x1cc
	.uleb128 0xf
	.long	.LASF101
	.byte	0x5
	.value	0x170
	.long	0xe9
	.value	0x1d0
	.uleb128 0xf
	.long	.LASF102
	.byte	0x5
	.value	0x171
	.long	0x8d3
	.value	0x1d8
	.uleb128 0xf
	.long	.LASF103
	.byte	0x5
	.value	0x172
	.long	0x8d3
	.value	0x1e8
	.uleb128 0xf
	.long	.LASF104
	.byte	0x5
	.value	0x173
	.long	0x2d
	.value	0x1f8
	.uleb128 0xf
	.long	.LASF105
	.byte	0x5
	.value	0x175
	.long	0x34
	.value	0x200
	.uleb128 0xf
	.long	.LASF106
	.byte	0x5
	.value	0x176
	.long	0x34
	.value	0x204
	.uleb128 0xf
	.long	.LASF107
	.byte	0x5
	.value	0x177
	.long	0x34
	.value	0x208
	.uleb128 0xf
	.long	.LASF108
	.byte	0x5
	.value	0x179
	.long	0x34
	.value	0x20c
	.uleb128 0xf
	.long	.LASF109
	.byte	0x5
	.value	0x17a
	.long	0x34
	.value	0x210
	.uleb128 0xf
	.long	.LASF110
	.byte	0x5
	.value	0x17c
	.long	0x34
	.value	0x214
	.uleb128 0xf
	.long	.LASF111
	.byte	0x5
	.value	0x17e
	.long	0x34
	.value	0x218
	.uleb128 0xf
	.long	.LASF112
	.byte	0x5
	.value	0x17e
	.long	0x34
	.value	0x21c
	.uleb128 0xf
	.long	.LASF113
	.byte	0x5
	.value	0x17e
	.long	0x34
	.value	0x220
	.uleb128 0xf
	.long	.LASF114
	.byte	0x5
	.value	0x17e
	.long	0x34
	.value	0x224
	.uleb128 0xf
	.long	.LASF115
	.byte	0x5
	.value	0x17f
	.long	0x34
	.value	0x228
	.uleb128 0xf
	.long	.LASF116
	.byte	0x5
	.value	0x17f
	.long	0x34
	.value	0x22c
	.uleb128 0xf
	.long	.LASF117
	.byte	0x5
	.value	0x17f
	.long	0x34
	.value	0x230
	.uleb128 0xf
	.long	.LASF118
	.byte	0x5
	.value	0x17f
	.long	0x34
	.value	0x234
	.uleb128 0xf
	.long	.LASF119
	.byte	0x5
	.value	0x181
	.long	0x34
	.value	0x238
	.uleb128 0xf
	.long	.LASF120
	.byte	0x5
	.value	0x182
	.long	0x34
	.value	0x23c
	.uleb128 0xf
	.long	.LASF121
	.byte	0x5
	.value	0x183
	.long	0x34
	.value	0x240
	.uleb128 0xf
	.long	.LASF122
	.byte	0x5
	.value	0x186
	.long	0x34
	.value	0x244
	.uleb128 0xf
	.long	.LASF123
	.byte	0x5
	.value	0x18a
	.long	0x8e3
	.value	0x248
	.uleb128 0xf
	.long	.LASF124
	.byte	0x5
	.value	0x18b
	.long	0x34
	.value	0x250
	.uleb128 0xf
	.long	.LASF125
	.byte	0x5
	.value	0x18c
	.long	0x34
	.value	0x254
	.uleb128 0xf
	.long	.LASF126
	.byte	0x5
	.value	0x18d
	.long	0x34
	.value	0x258
	.uleb128 0xf
	.long	.LASF127
	.byte	0x5
	.value	0x18e
	.long	0x34
	.value	0x25c
	.uleb128 0xf
	.long	.LASF128
	.byte	0x5
	.value	0x18f
	.long	0x34
	.value	0x260
	.uleb128 0xf
	.long	.LASF129
	.byte	0x5
	.value	0x191
	.long	0x34
	.value	0x264
	.uleb128 0xf
	.long	.LASF130
	.byte	0x5
	.value	0x192
	.long	0x34
	.value	0x268
	.uleb128 0xf
	.long	.LASF131
	.byte	0x5
	.value	0x193
	.long	0x34
	.value	0x26c
	.uleb128 0xf
	.long	.LASF132
	.byte	0x5
	.value	0x195
	.long	0x34
	.value	0x270
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x621
	.uleb128 0x4
	.long	0x34
	.long	0x8c3
	.uleb128 0x5
	.long	0x75
	.byte	0x1
	.uleb128 0x5
	.long	0x75
	.byte	0x3
	.uleb128 0x5
	.long	0x75
	.byte	0x3
	.uleb128 0x5
	.long	0x75
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.long	0x34
	.long	0x8d3
	.uleb128 0x5
	.long	0x75
	.byte	0xf
	.byte	0
	.uleb128 0x4
	.long	0x34
	.long	0x8e3
	.uleb128 0x5
	.long	0x75
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.long	.LASF133
	.uleb128 0x10
	.long	.LASF134
	.byte	0x5
	.value	0x196
	.long	0x621
	.uleb128 0x17
	.byte	0x30
	.byte	0x5
	.value	0x19b
	.long	0x98f
	.uleb128 0xe
	.long	.LASF135
	.byte	0x5
	.value	0x19d
	.long	0x34
	.byte	0
	.uleb128 0xe
	.long	.LASF136
	.byte	0x5
	.value	0x19e
	.long	0x34
	.byte	0x4
	.uleb128 0xe
	.long	.LASF137
	.byte	0x5
	.value	0x19f
	.long	0xa8
	.byte	0x8
	.uleb128 0xe
	.long	.LASF138
	.byte	0x5
	.value	0x1a0
	.long	0x34
	.byte	0xc
	.uleb128 0xe
	.long	.LASF139
	.byte	0x5
	.value	0x1a1
	.long	0x34
	.byte	0x10
	.uleb128 0xe
	.long	.LASF140
	.byte	0x5
	.value	0x1a2
	.long	0xa8
	.byte	0x14
	.uleb128 0xe
	.long	.LASF141
	.byte	0x5
	.value	0x1a4
	.long	0xa8
	.byte	0x15
	.uleb128 0xe
	.long	.LASF142
	.byte	0x5
	.value	0x1a5
	.long	0x34
	.byte	0x18
	.uleb128 0xe
	.long	.LASF143
	.byte	0x5
	.value	0x1a6
	.long	0x34
	.byte	0x1c
	.uleb128 0xe
	.long	.LASF144
	.byte	0x5
	.value	0x1a8
	.long	0xe3
	.byte	0x20
	.uleb128 0xe
	.long	.LASF145
	.byte	0x5
	.value	0x1a9
	.long	0x34
	.byte	0x28
	.byte	0
	.uleb128 0x10
	.long	.LASF146
	.byte	0x5
	.value	0x1ab
	.long	0x8f6
	.uleb128 0x11
	.long	.LASF147
	.byte	0x78
	.byte	0x5
	.value	0x1ae
	.long	0x9d0
	.uleb128 0xe
	.long	.LASF148
	.byte	0x5
	.value	0x1b1
	.long	0x9d0
	.byte	0
	.uleb128 0xe
	.long	.LASF149
	.byte	0x5
	.value	0x1b2
	.long	0x24a
	.byte	0x8
	.uleb128 0xe
	.long	.LASF150
	.byte	0x5
	.value	0x1b4
	.long	0x9f6
	.byte	0x70
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x98f
	.uleb128 0x18
	.long	0x34
	.long	0x9ea
	.uleb128 0x14
	.long	0x9ea
	.uleb128 0x14
	.long	0x9f0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x615
	.uleb128 0x6
	.byte	0x8
	.long	0x99b
	.uleb128 0x6
	.byte	0x8
	.long	0x9d6
	.uleb128 0x10
	.long	.LASF151
	.byte	0x5
	.value	0x1b8
	.long	0x99b
	.uleb128 0x17
	.byte	0x98
	.byte	0x5
	.value	0x1bb
	.long	0xb15
	.uleb128 0xe
	.long	.LASF152
	.byte	0x5
	.value	0x1bd
	.long	0x34
	.byte	0
	.uleb128 0x12
	.string	"qp"
	.byte	0x5
	.value	0x1be
	.long	0x34
	.byte	0x4
	.uleb128 0xe
	.long	.LASF153
	.byte	0x5
	.value	0x1bf
	.long	0x34
	.byte	0x8
	.uleb128 0xe
	.long	.LASF154
	.byte	0x5
	.value	0x1c0
	.long	0x34
	.byte	0xc
	.uleb128 0xe
	.long	.LASF155
	.byte	0x5
	.value	0x1c1
	.long	0x34
	.byte	0x10
	.uleb128 0xe
	.long	.LASF156
	.byte	0x5
	.value	0x1c2
	.long	0x34
	.byte	0x14
	.uleb128 0xe
	.long	.LASF157
	.byte	0x5
	.value	0x1c3
	.long	0xb15
	.byte	0x18
	.uleb128 0xe
	.long	.LASF158
	.byte	0x5
	.value	0x1c4
	.long	0xb1b
	.byte	0x20
	.uleb128 0xe
	.long	.LASF159
	.byte	0x5
	.value	0x1c5
	.long	0xb21
	.byte	0x28
	.uleb128 0xe
	.long	.LASF160
	.byte	0x5
	.value	0x1c8
	.long	0xb27
	.byte	0x30
	.uleb128 0xe
	.long	.LASF161
	.byte	0x5
	.value	0x1ca
	.long	0x34
	.byte	0x38
	.uleb128 0xe
	.long	.LASF162
	.byte	0x5
	.value	0x1cb
	.long	0x89
	.byte	0x40
	.uleb128 0xe
	.long	.LASF163
	.byte	0x5
	.value	0x1cc
	.long	0x89
	.byte	0x48
	.uleb128 0xe
	.long	.LASF164
	.byte	0x5
	.value	0x1cd
	.long	0x89
	.byte	0x50
	.uleb128 0xe
	.long	.LASF165
	.byte	0x5
	.value	0x1ce
	.long	0x34
	.byte	0x58
	.uleb128 0xe
	.long	.LASF166
	.byte	0x5
	.value	0x1cf
	.long	0x89
	.byte	0x60
	.uleb128 0xe
	.long	.LASF167
	.byte	0x5
	.value	0x1d0
	.long	0x89
	.byte	0x68
	.uleb128 0xe
	.long	.LASF168
	.byte	0x5
	.value	0x1d1
	.long	0x89
	.byte	0x70
	.uleb128 0xe
	.long	.LASF169
	.byte	0x5
	.value	0x1d3
	.long	0xb3c
	.byte	0x78
	.uleb128 0xe
	.long	.LASF170
	.byte	0x5
	.value	0x1d5
	.long	0xb42
	.byte	0x80
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x9fc
	.uleb128 0x6
	.byte	0x8
	.long	0x382
	.uleb128 0x6
	.byte	0x8
	.long	0x48a
	.uleb128 0x6
	.byte	0x8
	.long	0x4d1
	.uleb128 0x18
	.long	0xc8
	.long	0xb3c
	.uleb128 0x14
	.long	0x34
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xb2d
	.uleb128 0x4
	.long	0x34
	.long	0xb58
	.uleb128 0x5
	.long	0x75
	.byte	0x2
	.uleb128 0x5
	.long	0x75
	.byte	0x1
	.byte	0
	.uleb128 0x10
	.long	.LASF171
	.byte	0x5
	.value	0x1d7
	.long	0xa08
	.uleb128 0xd
	.value	0x338
	.byte	0x5
	.value	0x1db
	.long	0xbce
	.uleb128 0xe
	.long	.LASF172
	.byte	0x5
	.value	0x1dd
	.long	0x34
	.byte	0
	.uleb128 0xe
	.long	.LASF173
	.byte	0x5
	.value	0x1de
	.long	0x34
	.byte	0x4
	.uleb128 0xe
	.long	.LASF174
	.byte	0x5
	.value	0x1df
	.long	0xbce
	.byte	0x8
	.uleb128 0xf
	.long	.LASF175
	.byte	0x5
	.value	0x1e0
	.long	0x34
	.value	0x328
	.uleb128 0xf
	.long	.LASF176
	.byte	0x5
	.value	0x1e1
	.long	0xbe4
	.value	0x32c
	.uleb128 0xf
	.long	.LASF177
	.byte	0x5
	.value	0x1e2
	.long	0xbe4
	.value	0x330
	.uleb128 0xf
	.long	.LASF178
	.byte	0x5
	.value	0x1e3
	.long	0xbe4
	.value	0x334
	.byte	0
	.uleb128 0x4
	.long	0xbde
	.long	0xbde
	.uleb128 0x5
	.long	0x75
	.byte	0x63
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xb58
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF179
	.uleb128 0x10
	.long	.LASF180
	.byte	0x5
	.value	0x1e4
	.long	0xb64
	.uleb128 0x6
	.byte	0x8
	.long	0x89
	.uleb128 0xd
	.value	0xe08
	.byte	0x5
	.value	0x295
	.long	0x1405
	.uleb128 0xe
	.long	.LASF181
	.byte	0x5
	.value	0x297
	.long	0x34
	.byte	0
	.uleb128 0xe
	.long	.LASF182
	.byte	0x5
	.value	0x298
	.long	0x34
	.byte	0x4
	.uleb128 0xe
	.long	.LASF183
	.byte	0x5
	.value	0x29a
	.long	0x34
	.byte	0x8
	.uleb128 0x12
	.string	"qp0"
	.byte	0x5
	.value	0x29b
	.long	0x34
	.byte	0xc
	.uleb128 0x12
	.string	"qpN"
	.byte	0x5
	.value	0x29c
	.long	0x34
	.byte	0x10
	.uleb128 0xe
	.long	.LASF184
	.byte	0x5
	.value	0x29d
	.long	0x34
	.byte	0x14
	.uleb128 0xe
	.long	.LASF185
	.byte	0x5
	.value	0x29e
	.long	0x34
	.byte	0x18
	.uleb128 0xe
	.long	.LASF186
	.byte	0x5
	.value	0x2a0
	.long	0x34
	.byte	0x1c
	.uleb128 0xe
	.long	.LASF187
	.byte	0x5
	.value	0x2a1
	.long	0x34
	.byte	0x20
	.uleb128 0xe
	.long	.LASF188
	.byte	0x5
	.value	0x2a4
	.long	0x34
	.byte	0x24
	.uleb128 0xe
	.long	.LASF189
	.byte	0x5
	.value	0x2a5
	.long	0x34
	.byte	0x28
	.uleb128 0xe
	.long	.LASF190
	.byte	0x5
	.value	0x2a6
	.long	0x34
	.byte	0x2c
	.uleb128 0xe
	.long	.LASF191
	.byte	0x5
	.value	0x2a7
	.long	0x34
	.byte	0x30
	.uleb128 0xe
	.long	.LASF192
	.byte	0x5
	.value	0x2a8
	.long	0x34
	.byte	0x34
	.uleb128 0xe
	.long	.LASF193
	.byte	0x5
	.value	0x2a9
	.long	0x34
	.byte	0x38
	.uleb128 0xe
	.long	.LASF194
	.byte	0x5
	.value	0x2aa
	.long	0x34
	.byte	0x3c
	.uleb128 0xe
	.long	.LASF195
	.byte	0x5
	.value	0x2ac
	.long	0x34
	.byte	0x40
	.uleb128 0xe
	.long	.LASF196
	.byte	0x5
	.value	0x2ad
	.long	0x34
	.byte	0x44
	.uleb128 0xe
	.long	.LASF197
	.byte	0x5
	.value	0x2ae
	.long	0x34
	.byte	0x48
	.uleb128 0xe
	.long	.LASF198
	.byte	0x5
	.value	0x2af
	.long	0x34
	.byte	0x4c
	.uleb128 0xe
	.long	.LASF199
	.byte	0x5
	.value	0x2b3
	.long	0x1405
	.byte	0x50
	.uleb128 0xe
	.long	.LASF200
	.byte	0x5
	.value	0x2b4
	.long	0x1405
	.byte	0x90
	.uleb128 0xe
	.long	.LASF201
	.byte	0x5
	.value	0x2b5
	.long	0x34
	.byte	0xd0
	.uleb128 0xe
	.long	.LASF202
	.byte	0x5
	.value	0x2b6
	.long	0x34
	.byte	0xd4
	.uleb128 0xe
	.long	.LASF203
	.byte	0x5
	.value	0x2b7
	.long	0x34
	.byte	0xd8
	.uleb128 0xe
	.long	.LASF204
	.byte	0x5
	.value	0x2b8
	.long	0x34
	.byte	0xdc
	.uleb128 0xe
	.long	.LASF205
	.byte	0x5
	.value	0x2b9
	.long	0x141b
	.byte	0xe0
	.uleb128 0xf
	.long	.LASF206
	.byte	0x5
	.value	0x2ba
	.long	0x141b
	.value	0x1a8
	.uleb128 0xf
	.long	.LASF207
	.byte	0x5
	.value	0x2bb
	.long	0x141b
	.value	0x270
	.uleb128 0xf
	.long	.LASF208
	.byte	0x5
	.value	0x2bc
	.long	0x141b
	.value	0x338
	.uleb128 0xf
	.long	.LASF209
	.byte	0x5
	.value	0x2bd
	.long	0x141b
	.value	0x400
	.uleb128 0xf
	.long	.LASF210
	.byte	0x5
	.value	0x2be
	.long	0x34
	.value	0x4c8
	.uleb128 0xf
	.long	.LASF211
	.byte	0x5
	.value	0x2c0
	.long	0x34
	.value	0x4cc
	.uleb128 0xf
	.long	.LASF212
	.byte	0x5
	.value	0x2c1
	.long	0x34
	.value	0x4d0
	.uleb128 0xf
	.long	.LASF213
	.byte	0x5
	.value	0x2c4
	.long	0x34
	.value	0x4d4
	.uleb128 0x16
	.string	"qpB"
	.byte	0x5
	.value	0x2c5
	.long	0x34
	.value	0x4d8
	.uleb128 0xf
	.long	.LASF214
	.byte	0x5
	.value	0x2c6
	.long	0x34
	.value	0x4dc
	.uleb128 0xf
	.long	.LASF215
	.byte	0x5
	.value	0x2c7
	.long	0x34
	.value	0x4e0
	.uleb128 0xf
	.long	.LASF216
	.byte	0x5
	.value	0x2c8
	.long	0x34
	.value	0x4e4
	.uleb128 0xf
	.long	.LASF217
	.byte	0x5
	.value	0x2ca
	.long	0x34
	.value	0x4e8
	.uleb128 0xf
	.long	.LASF218
	.byte	0x5
	.value	0x2cb
	.long	0x34
	.value	0x4ec
	.uleb128 0xf
	.long	.LASF219
	.byte	0x5
	.value	0x2cc
	.long	0x34
	.value	0x4f0
	.uleb128 0xf
	.long	.LASF220
	.byte	0x5
	.value	0x2cd
	.long	0x34
	.value	0x4f4
	.uleb128 0xf
	.long	.LASF221
	.byte	0x5
	.value	0x2d1
	.long	0x34
	.value	0x4f8
	.uleb128 0xf
	.long	.LASF94
	.byte	0x5
	.value	0x2d2
	.long	0x34
	.value	0x4fc
	.uleb128 0xf
	.long	.LASF222
	.byte	0x5
	.value	0x2d3
	.long	0x34
	.value	0x500
	.uleb128 0xf
	.long	.LASF223
	.byte	0x5
	.value	0x2d5
	.long	0x34
	.value	0x504
	.uleb128 0xf
	.long	.LASF224
	.byte	0x5
	.value	0x2d6
	.long	0x34
	.value	0x508
	.uleb128 0xf
	.long	.LASF225
	.byte	0x5
	.value	0x2d7
	.long	0x34
	.value	0x50c
	.uleb128 0xf
	.long	.LASF226
	.byte	0x5
	.value	0x2d8
	.long	0x34
	.value	0x510
	.uleb128 0xf
	.long	.LASF227
	.byte	0x5
	.value	0x2d9
	.long	0x34
	.value	0x514
	.uleb128 0xf
	.long	.LASF228
	.byte	0x5
	.value	0x2da
	.long	0x34
	.value	0x518
	.uleb128 0xf
	.long	.LASF229
	.byte	0x5
	.value	0x2db
	.long	0x34
	.value	0x51c
	.uleb128 0xf
	.long	.LASF230
	.byte	0x5
	.value	0x2dc
	.long	0x34
	.value	0x520
	.uleb128 0xf
	.long	.LASF231
	.byte	0x5
	.value	0x2dd
	.long	0x34
	.value	0x524
	.uleb128 0xf
	.long	.LASF232
	.byte	0x5
	.value	0x2de
	.long	0x34
	.value	0x528
	.uleb128 0xf
	.long	.LASF233
	.byte	0x5
	.value	0x2df
	.long	0x142b
	.value	0x52c
	.uleb128 0xf
	.long	.LASF234
	.byte	0x5
	.value	0x2e0
	.long	0x34
	.value	0x92c
	.uleb128 0xf
	.long	.LASF235
	.byte	0x5
	.value	0x2e1
	.long	0x34
	.value	0x930
	.uleb128 0xf
	.long	.LASF236
	.byte	0x5
	.value	0x2e3
	.long	0x34
	.value	0x934
	.uleb128 0xf
	.long	.LASF237
	.byte	0x5
	.value	0x2e4
	.long	0x34
	.value	0x938
	.uleb128 0xf
	.long	.LASF238
	.byte	0x5
	.value	0x2e5
	.long	0x34
	.value	0x93c
	.uleb128 0xf
	.long	.LASF239
	.byte	0x5
	.value	0x2e7
	.long	0x34
	.value	0x940
	.uleb128 0xf
	.long	.LASF240
	.byte	0x5
	.value	0x2e8
	.long	0x34
	.value	0x944
	.uleb128 0xf
	.long	.LASF241
	.byte	0x5
	.value	0x2e9
	.long	0x34
	.value	0x948
	.uleb128 0xf
	.long	.LASF242
	.byte	0x5
	.value	0x2ea
	.long	0x34
	.value	0x94c
	.uleb128 0xf
	.long	.LASF243
	.byte	0x5
	.value	0x2eb
	.long	0x34
	.value	0x950
	.uleb128 0xf
	.long	.LASF244
	.byte	0x5
	.value	0x2ec
	.long	0x34
	.value	0x954
	.uleb128 0xf
	.long	.LASF245
	.byte	0x5
	.value	0x2ed
	.long	0x34
	.value	0x958
	.uleb128 0xf
	.long	.LASF246
	.byte	0x5
	.value	0x2ef
	.long	0x34
	.value	0x95c
	.uleb128 0xf
	.long	.LASF247
	.byte	0x5
	.value	0x2f0
	.long	0x34
	.value	0x960
	.uleb128 0xf
	.long	.LASF248
	.byte	0x5
	.value	0x2f1
	.long	0x34
	.value	0x964
	.uleb128 0xf
	.long	.LASF249
	.byte	0x5
	.value	0x2f2
	.long	0x34
	.value	0x968
	.uleb128 0xf
	.long	.LASF250
	.byte	0x5
	.value	0x2f3
	.long	0x34
	.value	0x96c
	.uleb128 0xf
	.long	.LASF251
	.byte	0x5
	.value	0x2f4
	.long	0x34
	.value	0x970
	.uleb128 0xf
	.long	.LASF252
	.byte	0x5
	.value	0x2f5
	.long	0x34
	.value	0x974
	.uleb128 0xf
	.long	.LASF253
	.byte	0x5
	.value	0x2f7
	.long	0x8e3
	.value	0x978
	.uleb128 0xf
	.long	.LASF254
	.byte	0x5
	.value	0x2f9
	.long	0x34
	.value	0x980
	.uleb128 0xf
	.long	.LASF255
	.byte	0x5
	.value	0x2fb
	.long	0x34
	.value	0x984
	.uleb128 0xf
	.long	.LASF256
	.byte	0x5
	.value	0x2fe
	.long	0x34
	.value	0x988
	.uleb128 0xf
	.long	.LASF257
	.byte	0x5
	.value	0x301
	.long	0x34
	.value	0x98c
	.uleb128 0xf
	.long	.LASF258
	.byte	0x5
	.value	0x301
	.long	0x34
	.value	0x990
	.uleb128 0xf
	.long	.LASF259
	.byte	0x5
	.value	0x301
	.long	0x34
	.value	0x994
	.uleb128 0xf
	.long	.LASF260
	.byte	0x5
	.value	0x302
	.long	0x34
	.value	0x998
	.uleb128 0xf
	.long	.LASF261
	.byte	0x5
	.value	0x302
	.long	0x34
	.value	0x99c
	.uleb128 0xf
	.long	.LASF262
	.byte	0x5
	.value	0x304
	.long	0x34
	.value	0x9a0
	.uleb128 0xf
	.long	.LASF263
	.byte	0x5
	.value	0x305
	.long	0x34
	.value	0x9a4
	.uleb128 0xf
	.long	.LASF264
	.byte	0x5
	.value	0x306
	.long	0x34
	.value	0x9a8
	.uleb128 0xf
	.long	.LASF265
	.byte	0x5
	.value	0x309
	.long	0x34
	.value	0x9ac
	.uleb128 0xf
	.long	.LASF266
	.byte	0x5
	.value	0x30a
	.long	0x141b
	.value	0x9b0
	.uleb128 0xf
	.long	.LASF267
	.byte	0x5
	.value	0x30b
	.long	0x141b
	.value	0xa78
	.uleb128 0xf
	.long	.LASF268
	.byte	0x5
	.value	0x30e
	.long	0x34
	.value	0xb40
	.uleb128 0xf
	.long	.LASF269
	.byte	0x5
	.value	0x30f
	.long	0x34
	.value	0xb44
	.uleb128 0xf
	.long	.LASF270
	.byte	0x5
	.value	0x311
	.long	0x34
	.value	0xb48
	.uleb128 0xf
	.long	.LASF271
	.byte	0x5
	.value	0x313
	.long	0x34
	.value	0xb4c
	.uleb128 0xf
	.long	.LASF272
	.byte	0x5
	.value	0x314
	.long	0x34
	.value	0xb50
	.uleb128 0xf
	.long	.LASF273
	.byte	0x5
	.value	0x315
	.long	0x34
	.value	0xb54
	.uleb128 0xf
	.long	.LASF274
	.byte	0x5
	.value	0x316
	.long	0x34
	.value	0xb58
	.uleb128 0xf
	.long	.LASF275
	.byte	0x5
	.value	0x317
	.long	0x34
	.value	0xb5c
	.uleb128 0xf
	.long	.LASF276
	.byte	0x5
	.value	0x318
	.long	0x34
	.value	0xb60
	.uleb128 0xf
	.long	.LASF277
	.byte	0x5
	.value	0x319
	.long	0x34
	.value	0xb64
	.uleb128 0xf
	.long	.LASF278
	.byte	0x5
	.value	0x31b
	.long	0x34
	.value	0xb68
	.uleb128 0xf
	.long	.LASF279
	.byte	0x5
	.value	0x31d
	.long	0x34
	.value	0xb6c
	.uleb128 0xf
	.long	.LASF129
	.byte	0x5
	.value	0x31e
	.long	0x34
	.value	0xb70
	.uleb128 0xf
	.long	.LASF130
	.byte	0x5
	.value	0x31f
	.long	0x34
	.value	0xb74
	.uleb128 0xf
	.long	.LASF131
	.byte	0x5
	.value	0x320
	.long	0x34
	.value	0xb78
	.uleb128 0xf
	.long	.LASF280
	.byte	0x5
	.value	0x322
	.long	0x34
	.value	0xb7c
	.uleb128 0xf
	.long	.LASF281
	.byte	0x5
	.value	0x323
	.long	0x34
	.value	0xb80
	.uleb128 0xf
	.long	.LASF282
	.byte	0x5
	.value	0x324
	.long	0x34
	.value	0xb84
	.uleb128 0xf
	.long	.LASF283
	.byte	0x5
	.value	0x327
	.long	0x141b
	.value	0xb88
	.uleb128 0xf
	.long	.LASF284
	.byte	0x5
	.value	0x328
	.long	0x34
	.value	0xc50
	.uleb128 0xf
	.long	.LASF285
	.byte	0x5
	.value	0x329
	.long	0x34
	.value	0xc54
	.uleb128 0xf
	.long	.LASF286
	.byte	0x5
	.value	0x32b
	.long	0x89
	.value	0xc58
	.uleb128 0xf
	.long	.LASF287
	.byte	0x5
	.value	0x32c
	.long	0x89
	.value	0xc60
	.uleb128 0xf
	.long	.LASF288
	.byte	0x5
	.value	0x32d
	.long	0xe3
	.value	0xc68
	.uleb128 0xf
	.long	.LASF289
	.byte	0x5
	.value	0x32e
	.long	0x89
	.value	0xc70
	.uleb128 0xf
	.long	.LASF290
	.byte	0x5
	.value	0x330
	.long	0x34
	.value	0xc78
	.uleb128 0xf
	.long	.LASF291
	.byte	0x5
	.value	0x331
	.long	0x34
	.value	0xc7c
	.uleb128 0xf
	.long	.LASF292
	.byte	0x5
	.value	0x332
	.long	0x34
	.value	0xc80
	.uleb128 0xf
	.long	.LASF293
	.byte	0x5
	.value	0x334
	.long	0x34
	.value	0xc84
	.uleb128 0xf
	.long	.LASF294
	.byte	0x5
	.value	0x335
	.long	0x34
	.value	0xc88
	.uleb128 0xf
	.long	.LASF295
	.byte	0x5
	.value	0x337
	.long	0x34
	.value	0xc8c
	.uleb128 0xf
	.long	.LASF296
	.byte	0x5
	.value	0x338
	.long	0x34
	.value	0xc90
	.uleb128 0xf
	.long	.LASF297
	.byte	0x5
	.value	0x339
	.long	0x34
	.value	0xc94
	.uleb128 0xf
	.long	.LASF298
	.byte	0x5
	.value	0x33a
	.long	0x34
	.value	0xc98
	.uleb128 0xf
	.long	.LASF299
	.byte	0x5
	.value	0x33b
	.long	0x34
	.value	0xc9c
	.uleb128 0xf
	.long	.LASF300
	.byte	0x5
	.value	0x33c
	.long	0x34
	.value	0xca0
	.uleb128 0xf
	.long	.LASF301
	.byte	0x5
	.value	0x33f
	.long	0x34
	.value	0xca4
	.uleb128 0xf
	.long	.LASF302
	.byte	0x5
	.value	0x340
	.long	0x34
	.value	0xca8
	.uleb128 0xf
	.long	.LASF303
	.byte	0x5
	.value	0x341
	.long	0x34
	.value	0xcac
	.uleb128 0xf
	.long	.LASF304
	.byte	0x5
	.value	0x342
	.long	0x34
	.value	0xcb0
	.uleb128 0xf
	.long	.LASF305
	.byte	0x5
	.value	0x343
	.long	0x34
	.value	0xcb4
	.uleb128 0xf
	.long	.LASF306
	.byte	0x5
	.value	0x345
	.long	0x34
	.value	0xcb8
	.uleb128 0xf
	.long	.LASF307
	.byte	0x5
	.value	0x346
	.long	0xd3
	.value	0xcbc
	.uleb128 0xf
	.long	.LASF308
	.byte	0x5
	.value	0x349
	.long	0x34
	.value	0xcdc
	.uleb128 0xf
	.long	.LASF309
	.byte	0x5
	.value	0x34c
	.long	0x34
	.value	0xce0
	.uleb128 0xf
	.long	.LASF310
	.byte	0x5
	.value	0x34d
	.long	0x34
	.value	0xce4
	.uleb128 0xf
	.long	.LASF311
	.byte	0x5
	.value	0x34e
	.long	0x34
	.value	0xce8
	.uleb128 0xf
	.long	.LASF312
	.byte	0x5
	.value	0x34f
	.long	0x34
	.value	0xcec
	.uleb128 0xf
	.long	.LASF313
	.byte	0x5
	.value	0x350
	.long	0x34
	.value	0xcf0
	.uleb128 0xf
	.long	.LASF314
	.byte	0x5
	.value	0x351
	.long	0x34
	.value	0xcf4
	.uleb128 0xf
	.long	.LASF315
	.byte	0x5
	.value	0x352
	.long	0x34
	.value	0xcf8
	.uleb128 0xf
	.long	.LASF316
	.byte	0x5
	.value	0x355
	.long	0x34
	.value	0xcfc
	.uleb128 0xf
	.long	.LASF317
	.byte	0x5
	.value	0x358
	.long	0x34
	.value	0xd00
	.uleb128 0xf
	.long	.LASF318
	.byte	0x5
	.value	0x35b
	.long	0x34
	.value	0xd04
	.uleb128 0xf
	.long	.LASF319
	.byte	0x5
	.value	0x35c
	.long	0x143c
	.value	0xd08
	.uleb128 0xf
	.long	.LASF320
	.byte	0x5
	.value	0x35e
	.long	0x141b
	.value	0xd38
	.uleb128 0xf
	.long	.LASF321
	.byte	0x5
	.value	0x35f
	.long	0x34
	.value	0xe00
	.byte	0
	.uleb128 0x4
	.long	0x34
	.long	0x141b
	.uleb128 0x5
	.long	0x75
	.byte	0x7
	.uleb128 0x5
	.long	0x75
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.long	0x82
	.long	0x142b
	.uleb128 0x5
	.long	0x75
	.byte	0xc7
	.byte	0
	.uleb128 0x4
	.long	0x82
	.long	0x143c
	.uleb128 0x19
	.long	0x75
	.value	0x3ff
	.byte	0
	.uleb128 0x4
	.long	0x8e3
	.long	0x144c
	.uleb128 0x5
	.long	0x75
	.byte	0x5
	.byte	0
	.uleb128 0x10
	.long	.LASF322
	.byte	0x5
	.value	0x361
	.long	0xbfd
	.uleb128 0x1a
	.long	0x11c20
	.byte	0x5
	.value	0x364
	.long	0x1e3d
	.uleb128 0xe
	.long	.LASF323
	.byte	0x5
	.value	0x366
	.long	0x34
	.byte	0
	.uleb128 0x12
	.string	"pn"
	.byte	0x5
	.value	0x367
	.long	0x34
	.byte	0x4
	.uleb128 0xe
	.long	.LASF324
	.byte	0x5
	.value	0x368
	.long	0x34
	.byte	0x8
	.uleb128 0xe
	.long	.LASF325
	.byte	0x5
	.value	0x369
	.long	0x34
	.byte	0xc
	.uleb128 0xe
	.long	.LASF326
	.byte	0x5
	.value	0x36a
	.long	0x34
	.byte	0x10
	.uleb128 0xe
	.long	.LASF327
	.byte	0x5
	.value	0x36b
	.long	0x34
	.byte	0x14
	.uleb128 0xe
	.long	.LASF82
	.byte	0x5
	.value	0x36c
	.long	0x34
	.byte	0x18
	.uleb128 0xe
	.long	.LASF328
	.byte	0x5
	.value	0x36d
	.long	0x34
	.byte	0x1c
	.uleb128 0xe
	.long	.LASF188
	.byte	0x5
	.value	0x36e
	.long	0x34
	.byte	0x20
	.uleb128 0xe
	.long	.LASF329
	.byte	0x5
	.value	0x36f
	.long	0x34
	.byte	0x24
	.uleb128 0x12
	.string	"qp"
	.byte	0x5
	.value	0x370
	.long	0x34
	.byte	0x28
	.uleb128 0xe
	.long	.LASF94
	.byte	0x5
	.value	0x371
	.long	0x34
	.byte	0x2c
	.uleb128 0xe
	.long	.LASF330
	.byte	0x5
	.value	0x372
	.long	0xbe4
	.byte	0x30
	.uleb128 0xe
	.long	.LASF331
	.byte	0x5
	.value	0x373
	.long	0x34
	.byte	0x34
	.uleb128 0xe
	.long	.LASF332
	.byte	0x5
	.value	0x374
	.long	0x34
	.byte	0x38
	.uleb128 0xe
	.long	.LASF333
	.byte	0x5
	.value	0x375
	.long	0x34
	.byte	0x3c
	.uleb128 0xe
	.long	.LASF334
	.byte	0x5
	.value	0x376
	.long	0x34
	.byte	0x40
	.uleb128 0xe
	.long	.LASF335
	.byte	0x5
	.value	0x377
	.long	0x34
	.byte	0x44
	.uleb128 0xe
	.long	.LASF336
	.byte	0x5
	.value	0x378
	.long	0x34
	.byte	0x48
	.uleb128 0xe
	.long	.LASF337
	.byte	0x5
	.value	0x379
	.long	0x34
	.byte	0x4c
	.uleb128 0xe
	.long	.LASF338
	.byte	0x5
	.value	0x37a
	.long	0x34
	.byte	0x50
	.uleb128 0xe
	.long	.LASF339
	.byte	0x5
	.value	0x37b
	.long	0x34
	.byte	0x54
	.uleb128 0xe
	.long	.LASF340
	.byte	0x5
	.value	0x37c
	.long	0x34
	.byte	0x58
	.uleb128 0xe
	.long	.LASF341
	.byte	0x5
	.value	0x37d
	.long	0x34
	.byte	0x5c
	.uleb128 0xe
	.long	.LASF342
	.byte	0x5
	.value	0x37e
	.long	0x34
	.byte	0x60
	.uleb128 0xe
	.long	.LASF343
	.byte	0x5
	.value	0x37f
	.long	0xbf7
	.byte	0x68
	.uleb128 0xe
	.long	.LASF344
	.byte	0x5
	.value	0x380
	.long	0xbf7
	.byte	0x70
	.uleb128 0xe
	.long	.LASF345
	.byte	0x5
	.value	0x382
	.long	0x34
	.byte	0x78
	.uleb128 0xe
	.long	.LASF346
	.byte	0x5
	.value	0x383
	.long	0x1e3d
	.byte	0x80
	.uleb128 0xe
	.long	.LASF347
	.byte	0x5
	.value	0x385
	.long	0x34
	.byte	0x88
	.uleb128 0xe
	.long	.LASF348
	.byte	0x5
	.value	0x386
	.long	0x34
	.byte	0x8c
	.uleb128 0xe
	.long	.LASF349
	.byte	0x5
	.value	0x387
	.long	0x34
	.byte	0x90
	.uleb128 0xe
	.long	.LASF350
	.byte	0x5
	.value	0x388
	.long	0x34
	.byte	0x94
	.uleb128 0xe
	.long	.LASF351
	.byte	0x5
	.value	0x389
	.long	0x34
	.byte	0x98
	.uleb128 0xe
	.long	.LASF352
	.byte	0x5
	.value	0x38a
	.long	0x34
	.byte	0x9c
	.uleb128 0xe
	.long	.LASF353
	.byte	0x5
	.value	0x38b
	.long	0x34
	.byte	0xa0
	.uleb128 0xe
	.long	.LASF354
	.byte	0x5
	.value	0x38c
	.long	0x34
	.byte	0xa4
	.uleb128 0xe
	.long	.LASF355
	.byte	0x5
	.value	0x38e
	.long	0x34
	.byte	0xa8
	.uleb128 0xe
	.long	.LASF356
	.byte	0x5
	.value	0x38f
	.long	0x34
	.byte	0xac
	.uleb128 0xe
	.long	.LASF357
	.byte	0x5
	.value	0x390
	.long	0x34
	.byte	0xb0
	.uleb128 0xe
	.long	.LASF358
	.byte	0x5
	.value	0x391
	.long	0x34
	.byte	0xb4
	.uleb128 0xe
	.long	.LASF359
	.byte	0x5
	.value	0x395
	.long	0x1e43
	.byte	0xb8
	.uleb128 0xf
	.long	.LASF360
	.byte	0x5
	.value	0x397
	.long	0x1e5f
	.value	0x12b8
	.uleb128 0xf
	.long	.LASF361
	.byte	0x5
	.value	0x398
	.long	0x1e7b
	.value	0x1cb8
	.uleb128 0xf
	.long	.LASF362
	.byte	0x5
	.value	0x399
	.long	0x1e97
	.value	0x2138
	.uleb128 0x16
	.string	"mpr"
	.byte	0x5
	.value	0x39a
	.long	0x1eb9
	.value	0x3138
	.uleb128 0x16
	.string	"m7"
	.byte	0x5
	.value	0x39b
	.long	0x1ecf
	.value	0x3338
	.uleb128 0xf
	.long	.LASF363
	.byte	0x5
	.value	0x39d
	.long	0x1ee5
	.value	0x3738
	.uleb128 0xf
	.long	.LASF364
	.byte	0x5
	.value	0x39e
	.long	0x1e3d
	.value	0x3740
	.uleb128 0xf
	.long	.LASF365
	.byte	0x5
	.value	0x3a0
	.long	0x1eeb
	.value	0x3748
	.uleb128 0xf
	.long	.LASF366
	.byte	0x5
	.value	0x3a1
	.long	0xbde
	.value	0x3750
	.uleb128 0xf
	.long	.LASF367
	.byte	0x5
	.value	0x3a2
	.long	0x1ef1
	.value	0x3758
	.uleb128 0xf
	.long	.LASF368
	.byte	0x5
	.value	0x3a3
	.long	0x1ef7
	.value	0x3760
	.uleb128 0x1b
	.long	.LASF369
	.byte	0x5
	.value	0x3a5
	.long	0x89
	.long	0x11860
	.uleb128 0x1b
	.long	.LASF370
	.byte	0x5
	.value	0x3a6
	.long	0x89
	.long	0x11868
	.uleb128 0x1c
	.string	"tr"
	.byte	0x5
	.value	0x3a8
	.long	0x34
	.long	0x11870
	.uleb128 0x1b
	.long	.LASF371
	.byte	0x5
	.value	0x3a9
	.long	0x34
	.long	0x11874
	.uleb128 0x1b
	.long	.LASF372
	.byte	0x5
	.value	0x3aa
	.long	0x49
	.long	0x11878
	.uleb128 0x1b
	.long	.LASF373
	.byte	0x5
	.value	0x3ab
	.long	0x49
	.long	0x1187c
	.uleb128 0x1b
	.long	.LASF374
	.byte	0x5
	.value	0x3ac
	.long	0x1f08
	.long	0x11880
	.uleb128 0x1b
	.long	.LASF375
	.byte	0x5
	.value	0x3ad
	.long	0x34
	.long	0x118c0
	.uleb128 0x1b
	.long	.LASF376
	.byte	0x5
	.value	0x3ae
	.long	0x34
	.long	0x118c4
	.uleb128 0x1b
	.long	.LASF377
	.byte	0x5
	.value	0x3af
	.long	0x34
	.long	0x118c8
	.uleb128 0x1b
	.long	.LASF378
	.byte	0x5
	.value	0x3b0
	.long	0x34
	.long	0x118cc
	.uleb128 0x1b
	.long	.LASF379
	.byte	0x5
	.value	0x3b1
	.long	0x34
	.long	0x118d0
	.uleb128 0x1b
	.long	.LASF380
	.byte	0x5
	.value	0x3b4
	.long	0x8e3
	.long	0x118d8
	.uleb128 0x1b
	.long	.LASF381
	.byte	0x5
	.value	0x3b5
	.long	0x34
	.long	0x118e0
	.uleb128 0x1b
	.long	.LASF382
	.byte	0x5
	.value	0x3b6
	.long	0x34
	.long	0x118e4
	.uleb128 0x1b
	.long	.LASF383
	.byte	0x5
	.value	0x3b7
	.long	0x34
	.long	0x118e8
	.uleb128 0x1b
	.long	.LASF384
	.byte	0x5
	.value	0x3b8
	.long	0x34
	.long	0x118ec
	.uleb128 0x1b
	.long	.LASF385
	.byte	0x5
	.value	0x3ba
	.long	0x1f1e
	.long	0x118f0
	.uleb128 0x1b
	.long	.LASF386
	.byte	0x5
	.value	0x3bb
	.long	0x1f1e
	.long	0x118f8
	.uleb128 0x1b
	.long	.LASF387
	.byte	0x5
	.value	0x3bd
	.long	0x1f1e
	.long	0x11900
	.uleb128 0x1b
	.long	.LASF388
	.byte	0x5
	.value	0x3be
	.long	0x1f1e
	.long	0x11908
	.uleb128 0x1b
	.long	.LASF122
	.byte	0x5
	.value	0x3bf
	.long	0x1f42
	.long	0x11910
	.uleb128 0x1b
	.long	.LASF129
	.byte	0x5
	.value	0x3c3
	.long	0x34
	.long	0x11930
	.uleb128 0x1b
	.long	.LASF130
	.byte	0x5
	.value	0x3c4
	.long	0x34
	.long	0x11934
	.uleb128 0x1b
	.long	.LASF131
	.byte	0x5
	.value	0x3c5
	.long	0x34
	.long	0x11938
	.uleb128 0x1b
	.long	.LASF215
	.byte	0x5
	.value	0x3c7
	.long	0x34
	.long	0x1193c
	.uleb128 0x1b
	.long	.LASF389
	.byte	0x5
	.value	0x3c9
	.long	0x34
	.long	0x11940
	.uleb128 0x1b
	.long	.LASF390
	.byte	0x5
	.value	0x3ca
	.long	0x34
	.long	0x11944
	.uleb128 0x1b
	.long	.LASF391
	.byte	0x5
	.value	0x3cc
	.long	0x34
	.long	0x11948
	.uleb128 0x1b
	.long	.LASF392
	.byte	0x5
	.value	0x3cd
	.long	0x34
	.long	0x1194c
	.uleb128 0x1b
	.long	.LASF393
	.byte	0x5
	.value	0x3ce
	.long	0x1f52
	.long	0x11950
	.uleb128 0x1b
	.long	.LASF394
	.byte	0x5
	.value	0x3cf
	.long	0x34
	.long	0x11ab8
	.uleb128 0x1b
	.long	.LASF395
	.byte	0x5
	.value	0x3d0
	.long	0x34
	.long	0x11abc
	.uleb128 0x1b
	.long	.LASF396
	.byte	0x5
	.value	0x3d2
	.long	0x34
	.long	0x11ac0
	.uleb128 0x1b
	.long	.LASF397
	.byte	0x5
	.value	0x3d3
	.long	0x34
	.long	0x11ac4
	.uleb128 0x1b
	.long	.LASF398
	.byte	0x5
	.value	0x3d4
	.long	0x34
	.long	0x11ac8
	.uleb128 0x1b
	.long	.LASF399
	.byte	0x5
	.value	0x3d6
	.long	0x34
	.long	0x11acc
	.uleb128 0x1b
	.long	.LASF400
	.byte	0x5
	.value	0x3d8
	.long	0x34
	.long	0x11ad0
	.uleb128 0x1b
	.long	.LASF294
	.byte	0x5
	.value	0x3dc
	.long	0x49
	.long	0x11ad4
	.uleb128 0x1b
	.long	.LASF401
	.byte	0x5
	.value	0x3e0
	.long	0x49
	.long	0x11ad8
	.uleb128 0x1b
	.long	.LASF402
	.byte	0x5
	.value	0x3e1
	.long	0x34
	.long	0x11adc
	.uleb128 0x1b
	.long	.LASF403
	.byte	0x5
	.value	0x3e2
	.long	0x34
	.long	0x11ae0
	.uleb128 0x1b
	.long	.LASF404
	.byte	0x5
	.value	0x3e3
	.long	0x49
	.long	0x11ae4
	.uleb128 0x1b
	.long	.LASF405
	.byte	0x5
	.value	0x3e4
	.long	0x1f68
	.long	0x11ae8
	.uleb128 0x1b
	.long	.LASF406
	.byte	0x5
	.value	0x3e9
	.long	0x49
	.long	0x11aec
	.uleb128 0x1b
	.long	.LASF407
	.byte	0x5
	.value	0x3ea
	.long	0x34
	.long	0x11af0
	.uleb128 0x1b
	.long	.LASF408
	.byte	0x5
	.value	0x3ec
	.long	0x65
	.long	0x11af4
	.uleb128 0x1b
	.long	.LASF409
	.byte	0x5
	.value	0x3f0
	.long	0x49
	.long	0x11afc
	.uleb128 0x1b
	.long	.LASF410
	.byte	0x5
	.value	0x3f1
	.long	0x34
	.long	0x11b00
	.uleb128 0x1b
	.long	.LASF411
	.byte	0x5
	.value	0x3f2
	.long	0x34
	.long	0x11b04
	.uleb128 0x1b
	.long	.LASF412
	.byte	0x5
	.value	0x3f3
	.long	0x34
	.long	0x11b08
	.uleb128 0x1b
	.long	.LASF413
	.byte	0x5
	.value	0x3f4
	.long	0x34
	.long	0x11b0c
	.uleb128 0x1b
	.long	.LASF414
	.byte	0x5
	.value	0x3f5
	.long	0x49
	.long	0x11b10
	.uleb128 0x1b
	.long	.LASF415
	.byte	0x5
	.value	0x3f7
	.long	0x49
	.long	0x11b14
	.uleb128 0x1b
	.long	.LASF416
	.byte	0x5
	.value	0x3f8
	.long	0x49
	.long	0x11b18
	.uleb128 0x1b
	.long	.LASF417
	.byte	0x5
	.value	0x3f9
	.long	0x49
	.long	0x11b1c
	.uleb128 0x1b
	.long	.LASF418
	.byte	0x5
	.value	0x3fa
	.long	0x49
	.long	0x11b20
	.uleb128 0x1b
	.long	.LASF419
	.byte	0x5
	.value	0x3fb
	.long	0x49
	.long	0x11b24
	.uleb128 0x1b
	.long	.LASF420
	.byte	0x5
	.value	0x3fc
	.long	0x49
	.long	0x11b28
	.uleb128 0x1b
	.long	.LASF421
	.byte	0x5
	.value	0x3ff
	.long	0x49
	.long	0x11b2c
	.uleb128 0x1b
	.long	.LASF422
	.byte	0x5
	.value	0x403
	.long	0x34
	.long	0x11b30
	.uleb128 0x1b
	.long	.LASF423
	.byte	0x5
	.value	0x405
	.long	0x34
	.long	0x11b34
	.uleb128 0x1b
	.long	.LASF424
	.byte	0x5
	.value	0x406
	.long	0x34
	.long	0x11b38
	.uleb128 0x1b
	.long	.LASF425
	.byte	0x5
	.value	0x407
	.long	0x34
	.long	0x11b3c
	.uleb128 0x1b
	.long	.LASF426
	.byte	0x5
	.value	0x409
	.long	0x1f78
	.long	0x11b40
	.uleb128 0x1b
	.long	.LASF296
	.byte	0x5
	.value	0x40b
	.long	0x34
	.long	0x11b48
	.uleb128 0x1b
	.long	.LASF427
	.byte	0x5
	.value	0x40f
	.long	0x34
	.long	0x11b4c
	.uleb128 0x1b
	.long	.LASF428
	.byte	0x5
	.value	0x410
	.long	0x34
	.long	0x11b50
	.uleb128 0x1b
	.long	.LASF429
	.byte	0x5
	.value	0x411
	.long	0x34
	.long	0x11b54
	.uleb128 0x1b
	.long	.LASF430
	.byte	0x5
	.value	0x412
	.long	0x34
	.long	0x11b58
	.uleb128 0x1b
	.long	.LASF431
	.byte	0x5
	.value	0x413
	.long	0x8e3
	.long	0x11b60
	.uleb128 0x1b
	.long	.LASF432
	.byte	0x5
	.value	0x414
	.long	0x34
	.long	0x11b68
	.uleb128 0x1b
	.long	.LASF433
	.byte	0x5
	.value	0x415
	.long	0x34
	.long	0x11b6c
	.uleb128 0x1b
	.long	.LASF434
	.byte	0x5
	.value	0x416
	.long	0x34
	.long	0x11b70
	.uleb128 0x1b
	.long	.LASF435
	.byte	0x5
	.value	0x417
	.long	0x34
	.long	0x11b74
	.uleb128 0x1b
	.long	.LASF436
	.byte	0x5
	.value	0x418
	.long	0x34
	.long	0x11b78
	.uleb128 0x1b
	.long	.LASF437
	.byte	0x5
	.value	0x419
	.long	0x34
	.long	0x11b7c
	.uleb128 0x1b
	.long	.LASF438
	.byte	0x5
	.value	0x41a
	.long	0x34
	.long	0x11b80
	.uleb128 0x1b
	.long	.LASF439
	.byte	0x5
	.value	0x41b
	.long	0x1f7e
	.long	0x11b88
	.uleb128 0x1b
	.long	.LASF440
	.byte	0x5
	.value	0x41c
	.long	0x34
	.long	0x11b90
	.uleb128 0x1b
	.long	.LASF441
	.byte	0x5
	.value	0x41d
	.long	0x34
	.long	0x11b94
	.uleb128 0x1b
	.long	.LASF442
	.byte	0x5
	.value	0x41e
	.long	0x34
	.long	0x11b98
	.uleb128 0x1b
	.long	.LASF443
	.byte	0x5
	.value	0x41f
	.long	0x34
	.long	0x11b9c
	.uleb128 0x1b
	.long	.LASF444
	.byte	0x5
	.value	0x420
	.long	0x34
	.long	0x11ba0
	.uleb128 0x1b
	.long	.LASF445
	.byte	0x5
	.value	0x421
	.long	0x34
	.long	0x11ba4
	.uleb128 0x1b
	.long	.LASF446
	.byte	0x5
	.value	0x422
	.long	0x34
	.long	0x11ba8
	.uleb128 0x1b
	.long	.LASF447
	.byte	0x5
	.value	0x423
	.long	0x34
	.long	0x11bac
	.uleb128 0x1b
	.long	.LASF448
	.byte	0x5
	.value	0x424
	.long	0x34
	.long	0x11bb0
	.uleb128 0x1b
	.long	.LASF449
	.byte	0x5
	.value	0x425
	.long	0x34
	.long	0x11bb4
	.uleb128 0x1b
	.long	.LASF450
	.byte	0x5
	.value	0x426
	.long	0x34
	.long	0x11bb8
	.uleb128 0x1b
	.long	.LASF451
	.byte	0x5
	.value	0x428
	.long	0x34
	.long	0x11bbc
	.uleb128 0x1b
	.long	.LASF452
	.byte	0x5
	.value	0x42a
	.long	0x34
	.long	0x11bc0
	.uleb128 0x1b
	.long	.LASF453
	.byte	0x5
	.value	0x42b
	.long	0x34
	.long	0x11bc4
	.uleb128 0x1b
	.long	.LASF454
	.byte	0x5
	.value	0x42c
	.long	0x34
	.long	0x11bc8
	.uleb128 0x1b
	.long	.LASF292
	.byte	0x5
	.value	0x42e
	.long	0x34
	.long	0x11bcc
	.uleb128 0x1b
	.long	.LASF455
	.byte	0x5
	.value	0x430
	.long	0x34
	.long	0x11bd0
	.uleb128 0x1b
	.long	.LASF456
	.byte	0x5
	.value	0x431
	.long	0x34
	.long	0x11bd4
	.uleb128 0x1b
	.long	.LASF457
	.byte	0x5
	.value	0x432
	.long	0x34
	.long	0x11bd8
	.uleb128 0x1b
	.long	.LASF458
	.byte	0x5
	.value	0x433
	.long	0x34
	.long	0x11bdc
	.uleb128 0x1b
	.long	.LASF459
	.byte	0x5
	.value	0x434
	.long	0x34
	.long	0x11be0
	.uleb128 0x1b
	.long	.LASF460
	.byte	0x5
	.value	0x435
	.long	0x34
	.long	0x11be4
	.uleb128 0x1b
	.long	.LASF461
	.byte	0x5
	.value	0x436
	.long	0x49
	.long	0x11be8
	.uleb128 0x1b
	.long	.LASF462
	.byte	0x5
	.value	0x437
	.long	0x34
	.long	0x11bec
	.uleb128 0x1b
	.long	.LASF463
	.byte	0x5
	.value	0x438
	.long	0x34
	.long	0x11bf0
	.uleb128 0x1b
	.long	.LASF464
	.byte	0x5
	.value	0x43a
	.long	0x34
	.long	0x11bf4
	.uleb128 0x1b
	.long	.LASF465
	.byte	0x5
	.value	0x43b
	.long	0x34
	.long	0x11bf8
	.uleb128 0x1b
	.long	.LASF197
	.byte	0x5
	.value	0x43c
	.long	0x34
	.long	0x11bfc
	.uleb128 0x1b
	.long	.LASF466
	.byte	0x5
	.value	0x43d
	.long	0x34
	.long	0x11c00
	.uleb128 0x1b
	.long	.LASF467
	.byte	0x5
	.value	0x43e
	.long	0x34
	.long	0x11c04
	.uleb128 0x1b
	.long	.LASF468
	.byte	0x5
	.value	0x43f
	.long	0x34
	.long	0x11c08
	.uleb128 0x1b
	.long	.LASF469
	.byte	0x5
	.value	0x441
	.long	0x65
	.long	0x11c0c
	.uleb128 0x1b
	.long	.LASF317
	.byte	0x5
	.value	0x444
	.long	0x34
	.long	0x11c14
	.uleb128 0x1b
	.long	.LASF470
	.byte	0x5
	.value	0x446
	.long	0x34
	.long	0x11c18
	.uleb128 0x1b
	.long	.LASF471
	.byte	0x5
	.value	0x447
	.long	0x34
	.long	0x11c1c
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xbf7
	.uleb128 0x4
	.long	0x42
	.long	0x1e5f
	.uleb128 0x5
	.long	0x75
	.byte	0x8
	.uleb128 0x5
	.long	0x75
	.byte	0xf
	.uleb128 0x5
	.long	0x75
	.byte	0xf
	.byte	0
	.uleb128 0x4
	.long	0x42
	.long	0x1e7b
	.uleb128 0x5
	.long	0x75
	.byte	0x4
	.uleb128 0x5
	.long	0x75
	.byte	0xf
	.uleb128 0x5
	.long	0x75
	.byte	0xf
	.byte	0
	.uleb128 0x4
	.long	0x42
	.long	0x1e97
	.uleb128 0x5
	.long	0x75
	.byte	0x8
	.uleb128 0x5
	.long	0x75
	.byte	0x7
	.uleb128 0x5
	.long	0x75
	.byte	0x7
	.byte	0
	.uleb128 0x4
	.long	0x42
	.long	0x1eb9
	.uleb128 0x5
	.long	0x75
	.byte	0x1
	.uleb128 0x5
	.long	0x75
	.byte	0x3
	.uleb128 0x5
	.long	0x75
	.byte	0xf
	.uleb128 0x5
	.long	0x75
	.byte	0xf
	.byte	0
	.uleb128 0x4
	.long	0x42
	.long	0x1ecf
	.uleb128 0x5
	.long	0x75
	.byte	0xf
	.uleb128 0x5
	.long	0x75
	.byte	0xf
	.byte	0
	.uleb128 0x4
	.long	0x34
	.long	0x1ee5
	.uleb128 0x5
	.long	0x75
	.byte	0xf
	.uleb128 0x5
	.long	0x75
	.byte	0xf
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x1e3d
	.uleb128 0x6
	.byte	0x8
	.long	0xbeb
	.uleb128 0x6
	.byte	0x8
	.long	0x8ea
	.uleb128 0x4
	.long	0x615
	.long	0x1f08
	.uleb128 0x19
	.long	0x75
	.value	0x4af
	.byte	0
	.uleb128 0x4
	.long	0x34
	.long	0x1f1e
	.uleb128 0x5
	.long	0x75
	.byte	0x3
	.uleb128 0x5
	.long	0x75
	.byte	0x3
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x1f24
	.uleb128 0x6
	.byte	0x8
	.long	0x1f2a
	.uleb128 0x6
	.byte	0x8
	.long	0x1f30
	.uleb128 0x6
	.byte	0x8
	.long	0x1f36
	.uleb128 0x6
	.byte	0x8
	.long	0x1f3c
	.uleb128 0x6
	.byte	0x8
	.long	0x57
	.uleb128 0x4
	.long	0x57
	.long	0x1f52
	.uleb128 0x5
	.long	0x75
	.byte	0xe
	.byte	0
	.uleb128 0x4
	.long	0x34
	.long	0x1f68
	.uleb128 0x5
	.long	0x75
	.byte	0x5
	.uleb128 0x5
	.long	0x75
	.byte	0xe
	.byte	0
	.uleb128 0x4
	.long	0x34
	.long	0x1f78
	.uleb128 0x5
	.long	0x75
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x53f
	.uleb128 0x6
	.byte	0x8
	.long	0x8e3
	.uleb128 0x10
	.long	.LASF472
	.byte	0x5
	.value	0x449
	.long	0x1458
	.uleb128 0x1d
	.long	.LASF515
	.byte	0x1
	.byte	0x88
	.long	0x34
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x1fd8
	.uleb128 0x1e
	.string	"s"
	.byte	0x1
	.byte	0x88
	.long	0x7c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1f
	.long	.LASF82
	.byte	0x1
	.byte	0x88
	.long	0x89
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x20
	.string	"i"
	.byte	0x1
	.byte	0x8a
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x21
	.long	.LASF516
	.byte	0x1
	.byte	0xac
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x20e0
	.uleb128 0x1e
	.string	"buf"
	.byte	0x1
	.byte	0xac
	.long	0x7c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -8088
	.uleb128 0x1f
	.long	.LASF473
	.byte	0x1
	.byte	0xac
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -8092
	.uleb128 0x22
	.long	.LASF474
	.byte	0x1
	.byte	0xae
	.long	0x20e0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -8016
	.uleb128 0x22
	.long	.LASF475
	.byte	0x1
	.byte	0xaf
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -8044
	.uleb128 0x22
	.long	.LASF476
	.byte	0x1
	.byte	0xb0
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -8072
	.uleb128 0x22
	.long	.LASF477
	.byte	0x1
	.byte	0xb1
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -8068
	.uleb128 0x22
	.long	.LASF478
	.byte	0x1
	.byte	0xb1
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -8064
	.uleb128 0x20
	.string	"p"
	.byte	0x1
	.byte	0xb2
	.long	0x7c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -8040
	.uleb128 0x22
	.long	.LASF479
	.byte	0x1
	.byte	0xb3
	.long	0x7c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -8024
	.uleb128 0x22
	.long	.LASF480
	.byte	0x1
	.byte	0xb4
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -8080
	.uleb128 0x20
	.string	"i"
	.byte	0x1
	.byte	0xb5
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -8060
	.uleb128 0x20
	.string	"j"
	.byte	0x1
	.byte	0xb5
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -8056
	.uleb128 0x22
	.long	.LASF481
	.byte	0x1
	.byte	0xb5
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -8052
	.uleb128 0x22
	.long	.LASF82
	.byte	0x1
	.byte	0xb5
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -8076
	.uleb128 0x20
	.string	"cnt"
	.byte	0x1
	.byte	0xb5
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -8048
	.uleb128 0x22
	.long	.LASF482
	.byte	0x1
	.byte	0xb6
	.long	0x1f3c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -8032
	.byte	0
	.uleb128 0x4
	.long	0x7c
	.long	0x20f1
	.uleb128 0x19
	.long	0x75
	.value	0x3e7
	.byte	0
	.uleb128 0x23
	.long	.LASF484
	.byte	0x1
	.value	0x126
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x211f
	.uleb128 0x24
	.long	.LASF483
	.byte	0x1
	.value	0x128
	.long	0x7c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x25
	.long	.LASF485
	.byte	0x1
	.value	0x14a
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x2183
	.uleb128 0x26
	.string	"i"
	.byte	0x1
	.value	0x14c
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x26
	.string	"j"
	.byte	0x1
	.value	0x14c
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x26
	.string	"k"
	.byte	0x1
	.value	0x14c
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x24
	.long	.LASF486
	.byte	0x1
	.value	0x14c
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x24
	.long	.LASF487
	.byte	0x1
	.value	0x14d
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x25
	.long	.LASF488
	.byte	0x1
	.value	0x193
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x21e7
	.uleb128 0x26
	.string	"i"
	.byte	0x1
	.value	0x196
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x26
	.string	"j"
	.byte	0x1
	.value	0x196
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x26
	.string	"k"
	.byte	0x1
	.value	0x196
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x24
	.long	.LASF486
	.byte	0x1
	.value	0x196
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x24
	.long	.LASF489
	.byte	0x1
	.value	0x197
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x4
	.long	0x82
	.long	0x21fd
	.uleb128 0x5
	.long	0x75
	.byte	0x8
	.uleb128 0x5
	.long	0x75
	.byte	0x17
	.byte	0
	.uleb128 0x22
	.long	.LASF490
	.byte	0x1
	.byte	0x17
	.long	0x2212
	.uleb128 0x9
	.byte	0x3
	.quad	OffsetType4x4
	.uleb128 0x27
	.long	0x21e7
	.uleb128 0x4
	.long	0x82
	.long	0x222d
	.uleb128 0x5
	.long	0x75
	.byte	0x2
	.uleb128 0x5
	.long	0x75
	.byte	0x17
	.byte	0
	.uleb128 0x22
	.long	.LASF491
	.byte	0x1
	.byte	0x24
	.long	0x2242
	.uleb128 0x9
	.byte	0x3
	.quad	OffsetType8x8
	.uleb128 0x27
	.long	0x2217
	.uleb128 0x4
	.long	0x57
	.long	0x2257
	.uleb128 0x5
	.long	0x75
	.byte	0xf
	.byte	0
	.uleb128 0x22
	.long	.LASF492
	.byte	0x1
	.byte	0x3d
	.long	0x226c
	.uleb128 0x9
	.byte	0x3
	.quad	Offset_intra_default_intra
	.uleb128 0x27
	.long	0x2247
	.uleb128 0x22
	.long	.LASF493
	.byte	0x1
	.byte	0x45
	.long	0x2286
	.uleb128 0x9
	.byte	0x3
	.quad	Offset_intra_default_inter
	.uleb128 0x27
	.long	0x2247
	.uleb128 0x22
	.long	.LASF494
	.byte	0x1
	.byte	0x4d
	.long	0x22a0
	.uleb128 0x9
	.byte	0x3
	.quad	Offset_inter_default
	.uleb128 0x27
	.long	0x2247
	.uleb128 0x4
	.long	0x57
	.long	0x22b5
	.uleb128 0x5
	.long	0x75
	.byte	0x3f
	.byte	0
	.uleb128 0x22
	.long	.LASF495
	.byte	0x1
	.byte	0x55
	.long	0x22ca
	.uleb128 0x9
	.byte	0x3
	.quad	Offset8_intra_default_intra
	.uleb128 0x27
	.long	0x22a5
	.uleb128 0x22
	.long	.LASF496
	.byte	0x1
	.byte	0x61
	.long	0x22e4
	.uleb128 0x9
	.byte	0x3
	.quad	Offset8_intra_default_inter
	.uleb128 0x27
	.long	0x22a5
	.uleb128 0x22
	.long	.LASF497
	.byte	0x1
	.byte	0x6d
	.long	0x22fe
	.uleb128 0x9
	.byte	0x3
	.quad	Offset8_inter_default
	.uleb128 0x27
	.long	0x22a5
	.uleb128 0x4
	.long	0x34
	.long	0x231f
	.uleb128 0x5
	.long	0x75
	.byte	0xc
	.uleb128 0x5
	.long	0x75
	.byte	0x3
	.uleb128 0x5
	.long	0x75
	.byte	0x3
	.byte	0
	.uleb128 0x28
	.long	.LASF498
	.byte	0x1
	.byte	0x2c
	.long	0x2303
	.uleb128 0x9
	.byte	0x3
	.quad	LevelOffset4x4Luma_Intra
	.uleb128 0x4
	.long	0x34
	.long	0x2356
	.uleb128 0x5
	.long	0x75
	.byte	0x1
	.uleb128 0x5
	.long	0x75
	.byte	0xc
	.uleb128 0x5
	.long	0x75
	.byte	0x3
	.uleb128 0x5
	.long	0x75
	.byte	0x3
	.byte	0
	.uleb128 0x28
	.long	.LASF499
	.byte	0x1
	.byte	0x2d
	.long	0x2334
	.uleb128 0x9
	.byte	0x3
	.quad	LevelOffset4x4Chroma_Intra
	.uleb128 0x28
	.long	.LASF500
	.byte	0x1
	.byte	0x2f
	.long	0x2303
	.uleb128 0x9
	.byte	0x3
	.quad	LevelOffset4x4Luma_Inter
	.uleb128 0x28
	.long	.LASF501
	.byte	0x1
	.byte	0x30
	.long	0x2334
	.uleb128 0x9
	.byte	0x3
	.quad	LevelOffset4x4Chroma_Inter
	.uleb128 0x4
	.long	0x34
	.long	0x23b1
	.uleb128 0x5
	.long	0x75
	.byte	0xc
	.uleb128 0x5
	.long	0x75
	.byte	0x7
	.uleb128 0x5
	.long	0x75
	.byte	0x7
	.byte	0
	.uleb128 0x28
	.long	.LASF502
	.byte	0x1
	.byte	0x32
	.long	0x2395
	.uleb128 0x9
	.byte	0x3
	.quad	LevelOffset8x8Luma_Intra
	.uleb128 0x28
	.long	.LASF503
	.byte	0x1
	.byte	0x33
	.long	0x2395
	.uleb128 0x9
	.byte	0x3
	.quad	LevelOffset8x8Luma_Inter
	.uleb128 0x4
	.long	0x82
	.long	0x23ec
	.uleb128 0x19
	.long	0x75
	.value	0x12b
	.byte	0
	.uleb128 0x29
	.long	.LASF504
	.byte	0x5
	.value	0x222
	.long	0x23db
	.uleb128 0x29
	.long	.LASF505
	.byte	0x5
	.value	0x4b7
	.long	0x2404
	.uleb128 0x6
	.byte	0x8
	.long	0x144c
	.uleb128 0x2a
	.string	"img"
	.byte	0x5
	.value	0x4b8
	.long	0x2416
	.uleb128 0x6
	.byte	0x8
	.long	0x1f84
	.uleb128 0x4
	.long	0x34
	.long	0x242c
	.uleb128 0x5
	.long	0x75
	.byte	0x5
	.byte	0
	.uleb128 0x28
	.long	.LASF506
	.byte	0x1
	.byte	0x14
	.long	0x241c
	.uleb128 0x9
	.byte	0x3
	.quad	offset4x4_check
	.uleb128 0x28
	.long	.LASF507
	.byte	0x1
	.byte	0x15
	.long	0x65
	.uleb128 0x9
	.byte	0x3
	.quad	offset8x8_check
	.uleb128 0x4
	.long	0x57
	.long	0x246c
	.uleb128 0x5
	.long	0x75
	.byte	0x8
	.uleb128 0x5
	.long	0x75
	.byte	0xf
	.byte	0
	.uleb128 0x28
	.long	.LASF508
	.byte	0x1
	.byte	0x35
	.long	0x2456
	.uleb128 0x9
	.byte	0x3
	.quad	OffsetList4x4input
	.uleb128 0x4
	.long	0x57
	.long	0x2497
	.uleb128 0x5
	.long	0x75
	.byte	0x2
	.uleb128 0x5
	.long	0x75
	.byte	0x3f
	.byte	0
	.uleb128 0x28
	.long	.LASF509
	.byte	0x1
	.byte	0x36
	.long	0x2481
	.uleb128 0x9
	.byte	0x3
	.quad	OffsetList8x8input
	.uleb128 0x28
	.long	.LASF510
	.byte	0x1
	.byte	0x37
	.long	0x2456
	.uleb128 0x9
	.byte	0x3
	.quad	OffsetList4x4
	.uleb128 0x28
	.long	.LASF511
	.byte	0x1
	.byte	0x38
	.long	0x2481
	.uleb128 0x9
	.byte	0x3
	.quad	OffsetList8x8
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
	.uleb128 0xb
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
	.uleb128 0x8
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0x6
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x27
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
.LASF458:
	.string	"bitdepth_luma_qp_scale"
.LASF305:
	.string	"channel_type"
.LASF324:
	.string	"nb_references"
.LASF459:
	.string	"bitdepth_chroma_qp_scale"
.LASF306:
	.string	"ScalingMatrixPresentFlag"
.LASF424:
	.string	"no_output_of_prior_pics_flag"
.LASF20:
	.string	"BITS_INTER_MB"
.LASF390:
	.string	"num_ref_idx_l1_active"
.LASF406:
	.string	"pic_order_cnt_lsb"
.LASF448:
	.string	"write_macroblock"
.LASF7:
	.string	"sizetype"
.LASF451:
	.string	"DeblockCall"
.LASF25:
	.string	"MAX_BITCOUNTER_MB"
.LASF332:
	.string	"width_cr"
.LASF419:
	.string	"PicSizeInMbs"
.LASF27:
	.string	"B_SLICE"
.LASF368:
	.string	"MB_SyntaxElements"
.LASF363:
	.string	"cofAC"
.LASF466:
	.string	"lossless_qpprime_flag"
.LASF235:
	.string	"PocMemoryManagement"
.LASF378:
	.string	"imgtr_next_P_fld"
.LASF187:
	.string	"search_range"
.LASF393:
	.string	"mvscale"
.LASF16:
	.string	"int64"
.LASF174:
	.string	"slices"
.LASF77:
	.string	"long_term_pic_num"
.LASF26:
	.string	"P_SLICE"
.LASF344:
	.string	"ipredmode8x8"
.LASF348:
	.string	"mb_y"
.LASF426:
	.string	"dec_ref_pic_marking_buffer"
.LASF204:
	.string	"infile_header"
.LASF489:
	.string	"q_bits"
.LASF255:
	.string	"full_search"
.LASF513:
	.string	"q_offsets.c"
.LASF79:
	.string	"max_long_term_frame_idx_plus1"
.LASF467:
	.string	"mb_cr_size_x"
.LASF300:
	.string	"DisplayEncParams"
.LASF392:
	.string	"top_field"
.LASF47:
	.string	"state"
.LASF250:
	.string	"Intra16x16ParDisable"
.LASF61:
	.string	"bcbp_contexts"
.LASF81:
	.string	"syntaxelement"
.LASF213:
	.string	"successive_Bframe"
.LASF223:
	.string	"WeightedPrediction"
.LASF82:
	.string	"type"
.LASF383:
	.string	"fw_mb_mode"
.LASF420:
	.string	"FrameSizeInMbs"
.LASF129:
	.string	"LFDisableIdc"
.LASF216:
	.string	"directInferenceFlag"
.LASF143:
	.string	"bits_to_go_skip"
.LASF385:
	.string	"pred_mv"
.LASF295:
	.string	"context_init_method"
.LASF297:
	.string	"AllowTransform8x8"
.LASF464:
	.string	"num_blk8x8_uv"
.LASF509:
	.string	"OffsetList8x8input"
.LASF202:
	.string	"slice_argument"
.LASF160:
	.string	"rmpni_buffer"
.LASF243:
	.string	"InterSearch8x4"
.LASF110:
	.string	"mb_field"
.LASF242:
	.string	"InterSearch8x8"
.LASF276:
	.string	"NumFramesInELSubSeq"
.LASF516:
	.string	"ParseQOffsetMatrix"
.LASF78:
	.string	"long_term_frame_idx"
.LASF343:
	.string	"ipredmode"
.LASF229:
	.string	"RDBSliceWeightOnly"
.LASF194:
	.string	"GenerateMultiplePPS"
.LASF102:
	.string	"b8mode"
.LASF315:
	.string	"cr_qp_index_offset"
.LASF169:
	.string	"slice_too_big"
.LASF360:
	.string	"mprr_2"
.LASF361:
	.string	"mprr_3"
.LASF136:
	.string	"bits_to_go"
.LASF74:
	.string	"DecRefPicMarking_s"
.LASF80:
	.string	"DecRefPicMarking_t"
.LASF449:
	.string	"bot_MB"
.LASF447:
	.string	"BasicUnit"
.LASF188:
	.string	"num_ref_frames"
.LASF43:
	.string	"EcodestrmS"
.LASF370:
	.string	"intra_block"
.LASF24:
	.string	"BITS_DELTA_QUANT_MB"
.LASF487:
	.string	"qp_per"
.LASF6:
	.string	"long int"
.LASF470:
	.string	"auto_crop_right"
.LASF362:
	.string	"mprr_c"
.LASF119:
	.string	"all_blk_8x8"
.LASF264:
	.string	"nobskip"
.LASF422:
	.string	"nal_reference_idc"
.LASF412:
	.string	"framepoc"
.LASF428:
	.string	"NumberofTextureBits"
.LASF358:
	.string	"opix_c_y"
.LASF225:
	.string	"UseWeightedReferenceME"
.LASF488:
	.string	"CalculateOffset8Param"
.LASF278:
	.string	"RandomIntraMBRefresh"
.LASF450:
	.string	"write_macroblock_frame"
.LASF140:
	.string	"stored_byte_buf"
.LASF17:
	.string	"BITS_HEADER"
.LASF322:
	.string	"InputParameters"
.LASF279:
	.string	"LFSendParameters"
.LASF416:
	.string	"PicHeightInMapUnits"
.LASF436:
	.string	"NumberofGOP"
.LASF456:
	.string	"bitdepth_luma"
.LASF21:
	.string	"BITS_CBP_MB"
.LASF357:
	.string	"opix_c_x"
.LASF33:
	.string	"Ebuffer"
.LASF205:
	.string	"infile"
.LASF32:
	.string	"Erange"
.LASF4:
	.string	"signed char"
.LASF330:
	.string	"framerate"
.LASF155:
	.string	"max_part_nr"
.LASF46:
	.string	"EncodingEnvironmentPtr"
.LASF401:
	.string	"delta_pic_order_always_zero_flag"
.LASF347:
	.string	"mb_x"
.LASF109:
	.string	"IntraChromaPredModeFlag"
.LASF86:
	.string	"context"
.LASF164:
	.string	"long_term_pic_idx_l0"
.LASF168:
	.string	"long_term_pic_idx_l1"
.LASF161:
	.string	"ref_pic_list_reordering_flag_l0"
.LASF165:
	.string	"ref_pic_list_reordering_flag_l1"
.LASF438:
	.string	"NumberofPPicture"
.LASF433:
	.string	"NumberofMBHeaderBits"
.LASF364:
	.string	"cofDC"
.LASF1:
	.string	"unsigned char"
.LASF485:
	.string	"CalculateOffsetParam"
.LASF481:
	.string	"range"
.LASF100:
	.string	"intra_pred_modes8x8"
.LASF491:
	.string	"OffsetType8x8"
.LASF452:
	.string	"last_pic_bottom_field"
.LASF217:
	.string	"BiPredMotionEstimation"
.LASF387:
	.string	"bipred_mv1"
.LASF388:
	.string	"bipred_mv2"
.LASF63:
	.string	"last_contexts"
.LASF108:
	.string	"c_ipred_mode"
.LASF289:
	.string	"run_length_minus1"
.LASF463:
	.string	"max_imgpel_value_uv"
.LASF198:
	.string	"intra_upd"
.LASF162:
	.string	"remapping_of_pic_nums_idc_l0"
.LASF166:
	.string	"remapping_of_pic_nums_idc_l1"
.LASF163:
	.string	"abs_diff_pic_num_minus1_l0"
.LASF167:
	.string	"abs_diff_pic_num_minus1_l1"
.LASF282:
	.string	"SPPercentageThreshold"
.LASF137:
	.string	"byte_buf"
.LASF181:
	.string	"ProfileIDC"
.LASF122:
	.string	"bi_pred_me"
.LASF510:
	.string	"OffsetList4x4"
.LASF93:
	.string	"delta_qp"
.LASF254:
	.string	"chroma_qp_index_offset"
.LASF329:
	.string	"max_num_references"
.LASF8:
	.string	"char"
.LASF342:
	.string	"block_c_x"
.LASF56:
	.string	"transform_size_contexts"
.LASF425:
	.string	"long_term_reference_flag"
.LASF192:
	.string	"Log2MaxFrameNum"
.LASF338:
	.string	"is_intra_block"
.LASF154:
	.string	"start_mb_nr"
.LASF301:
	.string	"RCEnable"
.LASF227:
	.string	"RDPictureIntra"
.LASF191:
	.string	"B_List1_refs"
.LASF214:
	.string	"qpBRSOffset"
.LASF280:
	.string	"SparePictureOption"
.LASF18:
	.string	"BITS_TOTAL_MB"
.LASF496:
	.string	"Offset8_intra_default_inter"
.LASF257:
	.string	"qpN2"
.LASF210:
	.string	"intra_period"
.LASF96:
	.string	"mb_available_up"
.LASF408:
	.string	"delta_pic_order_cnt"
.LASF245:
	.string	"InterSearch4x4"
.LASF244:
	.string	"InterSearch4x8"
.LASF514:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/464.h264ref/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF502:
	.string	"LevelOffset8x8Luma_Intra"
.LASF427:
	.string	"NumberofHeaderBits"
.LASF260:
	.string	"qp02"
.LASF85:
	.string	"bitpattern"
.LASF30:
	.string	"SI_SLICE"
.LASF55:
	.string	"mb_aff_contexts"
.LASF120:
	.string	"luma_transform_size_8x8_flag"
.LASF307:
	.string	"ScalingListPresentFlag"
.LASF350:
	.string	"block_y"
.LASF230:
	.string	"SkipIntraInInterSlices"
.LASF365:
	.string	"currentPicture"
.LASF51:
	.string	"b8_type_contexts"
.LASF287:
	.string	"bottom_right"
.LASF224:
	.string	"WeightedBiprediction"
.LASF381:
	.string	"p_interval"
.LASF180:
	.string	"Picture"
.LASF379:
	.string	"imgtr_last_P_fld"
.LASF505:
	.string	"input"
.LASF267:
	.string	"LeakyBucketParamFile"
.LASF183:
	.string	"no_frames"
.LASF125:
	.string	"prev_delta_qp"
.LASF195:
	.string	"img_width"
.LASF234:
	.string	"PyramidRefReorder"
.LASF339:
	.string	"is_v_block"
.LASF201:
	.string	"slice_mode"
.LASF239:
	.string	"InterSearch16x16"
.LASF341:
	.string	"mb_y_intra"
.LASF50:
	.string	"mb_type_contexts"
.LASF286:
	.string	"top_left"
.LASF144:
	.string	"streamBuffer"
.LASF41:
	.string	"Ebits_to_goS"
.LASF240:
	.string	"InterSearch16x8"
.LASF439:
	.string	"MADofMB"
.LASF389:
	.string	"num_ref_idx_l0_active"
.LASF296:
	.string	"model_number"
.LASF28:
	.string	"I_SLICE"
.LASF219:
	.string	"BiPredMESearchRange"
.LASF90:
	.string	"macroblock"
.LASF410:
	.string	"toppoc"
.LASF400:
	.string	"MbaffFrameFlag"
.LASF31:
	.string	"Elow"
.LASF355:
	.string	"opix_x"
.LASF304:
	.string	"basicunit"
.LASF268:
	.string	"PicInterlace"
.LASF153:
	.string	"picture_type"
.LASF469:
	.string	"chroma_qp_offset"
.LASF233:
	.string	"ExplicitPyramidFormat"
.LASF418:
	.string	"PicHeightInMbs"
.LASF316:
	.string	"lossless_qpprime_y_zero_flag"
.LASF209:
	.string	"QmatrixFile"
.LASF480:
	.string	"IntContent"
.LASF477:
	.string	"InString"
.LASF226:
	.string	"RDPictureDecision"
.LASF45:
	.string	"EncodingEnvironment"
.LASF150:
	.string	"writeSyntaxElement"
.LASF182:
	.string	"LevelIDC"
.LASF0:
	.string	"long unsigned int"
.LASF59:
	.string	"cipr_contexts"
.LASF44:
	.string	"Ecodestrm_lenS"
.LASF302:
	.string	"bit_rate"
.LASF156:
	.string	"num_mb"
.LASF411:
	.string	"bottompoc"
.LASF490:
	.string	"OffsetType4x4"
.LASF193:
	.string	"ResendPPS"
.LASF248:
	.string	"Intra4x4DiagDisable"
.LASF493:
	.string	"Offset_intra_default_inter"
.LASF375:
	.string	"pstruct_next_P"
.LASF106:
	.string	"lf_alpha_c0_offset"
.LASF471:
	.string	"auto_crop_bottom"
.LASF208:
	.string	"TraceFile"
.LASF484:
	.string	"Init_QOffsetMatrix"
.LASF203:
	.string	"UseConstrainedIntraPred"
.LASF479:
	.string	"bufend"
.LASF440:
	.string	"BasicUnitQP"
.LASF508:
	.string	"OffsetList4x4input"
.LASF432:
	.string	"NumberofMBTextureBits"
.LASF104:
	.string	"cbp_bits"
.LASF353:
	.string	"pix_c_x"
.LASF354:
	.string	"pix_c_y"
.LASF185:
	.string	"hadamard"
.LASF382:
	.string	"b_frame_to_code"
.LASF175:
	.string	"bits_per_picture"
.LASF340:
	.string	"mb_y_upd"
.LASF321:
	.string	"OffsetMatrixPresentFlag"
.LASF274:
	.string	"NoOfDecoders"
.LASF511:
	.string	"OffsetList8x8"
.LASF69:
	.string	"RMPNI"
.LASF130:
	.string	"LFAlphaC0Offset"
.LASF107:
	.string	"lf_beta_offset"
.LASF76:
	.string	"difference_of_pic_nums_minus1"
.LASF277:
	.string	"NumFrameIn2ndIGOP"
.LASF409:
	.string	"field_picture"
.LASF211:
	.string	"idr_enable"
.LASF359:
	.string	"mprr"
.LASF212:
	.string	"start_frame"
.LASF57:
	.string	"MotionInfoContexts"
.LASF9:
	.string	"long long int"
.LASF380:
	.string	"b_interval"
.LASF34:
	.string	"Ebits_to_go"
.LASF372:
	.string	"fld_flag"
.LASF506:
	.string	"offset4x4_check"
.LASF374:
	.string	"direct_intraP_ref"
.LASF331:
	.string	"width"
.LASF98:
	.string	"mb_type"
.LASF139:
	.string	"stored_bits_to_go"
.LASF468:
	.string	"mb_cr_size_y"
.LASF405:
	.string	"offset_for_ref_frame"
.LASF92:
	.string	"slice_nr"
.LASF177:
	.string	"distortion_u"
.LASF178:
	.string	"distortion_v"
.LASF176:
	.string	"distortion_y"
.LASF142:
	.string	"byte_pos_skip"
.LASF131:
	.string	"LFBetaOffset"
.LASF133:
	.string	"double"
.LASF281:
	.string	"SPDetectionThreshold"
.LASF138:
	.string	"stored_byte_pos"
.LASF317:
	.string	"residue_transform_flag"
.LASF377:
	.string	"imgtr_last_P_frm"
.LASF64:
	.string	"one_contexts"
.LASF269:
	.string	"MbInterlace"
.LASF94:
	.string	"qpsp"
.LASF179:
	.string	"float"
.LASF299:
	.string	"ReportFrameStats"
.LASF232:
	.string	"PyramidCoding"
.LASF48:
	.string	"count"
.LASF126:
	.string	"prev_cbp"
.LASF236:
	.string	"symbol_mode"
.LASF49:
	.string	"BiContextType"
.LASF373:
	.string	"rd_pass"
.LASF369:
	.string	"quad"
.LASF3:
	.string	"unsigned int"
.LASF65:
	.string	"abs_contexts"
.LASF35:
	.string	"Ebits_to_follow"
.LASF145:
	.string	"write_flag"
.LASF326:
	.string	"total_number_mb"
.LASF207:
	.string	"ReconFile"
.LASF37:
	.string	"Ecodestrm_len"
.LASF159:
	.string	"tex_ctx"
.LASF221:
	.string	"sp_periodicity"
.LASF497:
	.string	"Offset8_inter_default"
.LASF437:
	.string	"TotalQpforPPicture"
.LASF97:
	.string	"mb_available_left"
.LASF73:
	.string	"RMPNIbuffer_s"
.LASF72:
	.string	"RMPNIbuffer_t"
.LASF292:
	.string	"slice_group_change_cycle"
.LASF319:
	.string	"LambdaWeight"
.LASF68:
	.string	"TextureInfoContexts"
.LASF507:
	.string	"offset8x8_check"
.LASF325:
	.string	"current_mb_nr"
.LASF265:
	.string	"NumberLeakyBuckets"
.LASF396:
	.string	"layer"
.LASF103:
	.string	"b8pdir"
.LASF172:
	.string	"no_slices"
.LASF403:
	.string	"offset_for_top_to_bottom_field"
.LASF252:
	.string	"ChromaIntraDisable"
.LASF376:
	.string	"imgtr_next_P_frm"
.LASF442:
	.string	"FieldControl"
.LASF434:
	.string	"NumberofCodedBFrame"
.LASF395:
	.string	"i16offset"
.LASF251:
	.string	"Intra16x16PlaneDisable"
.LASF222:
	.string	"qpsp_pred"
.LASF294:
	.string	"pic_order_cnt_type"
.LASF351:
	.string	"pix_x"
.LASF352:
	.string	"pix_y"
.LASF512:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF472:
	.string	"ImageParameters"
.LASF149:
	.string	"ee_cabac"
.LASF13:
	.string	"FALSE"
.LASF127:
	.string	"predict_qp"
.LASF478:
	.string	"InItem"
.LASF186:
	.string	"hadamardqpel"
.LASF391:
	.string	"field_mode"
.LASF247:
	.string	"Intra4x4ParDisable"
.LASF349:
	.string	"block_x"
.LASF266:
	.string	"LeakyBucketRateFile"
.LASF196:
	.string	"img_height"
.LASF200:
	.string	"part_size"
.LASF238:
	.string	"partition_mode"
.LASF453:
	.string	"last_has_mmco_5"
.LASF67:
	.string	"fld_last_contexts"
.LASF402:
	.string	"offset_for_non_ref_pic"
.LASF132:
	.string	"skip_flag"
.LASF414:
	.string	"frame_num"
.LASF62:
	.string	"map_contexts"
.LASF283:
	.string	"SliceGroupConfigFileName"
.LASF29:
	.string	"SP_SLICE"
.LASF75:
	.string	"memory_management_control_operation"
.LASF270:
	.string	"IntraBottom"
.LASF482:
	.string	"OffsetList"
.LASF146:
	.string	"Bitstream"
.LASF320:
	.string	"QOffsetMatrixFile"
.LASF190:
	.string	"B_List0_refs"
.LASF398:
	.string	"NoResidueDirect"
.LASF446:
	.string	"NumberofCodedMacroBlocks"
.LASF152:
	.string	"picture_id"
.LASF371:
	.string	"fld_type"
.LASF435:
	.string	"NumberofCodedPFrame"
.LASF10:
	.string	"long long unsigned int"
.LASF19:
	.string	"BITS_MB_MODE"
.LASF218:
	.string	"BiPredMERefinements"
.LASF474:
	.string	"items"
.LASF99:
	.string	"intra_pred_modes"
.LASF334:
	.string	"height_cr"
.LASF386:
	.string	"all_mv"
.LASF259:
	.string	"qp2start"
.LASF333:
	.string	"height"
.LASF328:
	.string	"structure"
.LASF170:
	.string	"field_ctx"
.LASF151:
	.string	"DataPartition"
.LASF367:
	.string	"mb_data"
.LASF495:
	.string	"Offset8_intra_default_intra"
.LASF303:
	.string	"SeinitialQP"
.LASF430:
	.string	"NumberofBasicUnitTextureBits"
.LASF404:
	.string	"num_ref_frames_in_pic_order_cnt_cycle"
.LASF500:
	.string	"LevelOffset4x4Luma_Inter"
.LASF171:
	.string	"Slice"
.LASF147:
	.string	"datapartition"
.LASF42:
	.string	"Ebits_to_followS"
.LASF335:
	.string	"height_cr_frame"
.LASF475:
	.string	"MapIdx"
.LASF444:
	.string	"Frame_Total_Number_MB"
.LASF83:
	.string	"value1"
.LASF84:
	.string	"value2"
.LASF313:
	.string	"rgb_input_flag"
.LASF148:
	.string	"bitstream"
.LASF189:
	.string	"P_List0_refs"
.LASF275:
	.string	"RestrictRef"
.LASF498:
	.string	"LevelOffset4x4Luma_Intra"
.LASF38:
	.string	"ElowS"
.LASF285:
	.string	"slice_group_map_type"
.LASF494:
	.string	"Offset_inter_default"
.LASF15:
	.string	"Boolean"
.LASF237:
	.string	"of_mode"
.LASF460:
	.string	"bitdepth_lambda_scale"
.LASF263:
	.string	"disthres"
.LASF397:
	.string	"old_layer"
.LASF323:
	.string	"number"
.LASF261:
	.string	"qpBRS2Offset"
.LASF462:
	.string	"max_imgpel_value"
.LASF415:
	.string	"PicWidthInMbs"
.LASF271:
	.string	"LossRateA"
.LASF272:
	.string	"LossRateB"
.LASF273:
	.string	"LossRateC"
.LASF455:
	.string	"pic_unit_size_on_disk"
.LASF461:
	.string	"dc_pred_value"
.LASF465:
	.string	"num_cdc_coeff"
.LASF312:
	.string	"img_width_cr"
.LASF134:
	.string	"Macroblock"
.LASF53:
	.string	"ref_no_contexts"
.LASF199:
	.string	"blc_size"
.LASF423:
	.string	"adaptive_ref_pic_buffering_flag"
.LASF515:
	.string	"CheckOffsetParameterName"
.LASF23:
	.string	"BITS_COEFF_UV_MB"
.LASF12:
	.string	"byte"
.LASF71:
	.string	"Next"
.LASF231:
	.string	"BRefPictures"
.LASF70:
	.string	"Data"
.LASF441:
	.string	"TopFieldFlag"
.LASF5:
	.string	"short int"
.LASF36:
	.string	"Ecodestrm"
.LASF356:
	.string	"opix_y"
.LASF197:
	.string	"yuv_format"
.LASF308:
	.string	"FMEnable"
.LASF399:
	.string	"redundant_pic_cnt"
.LASF384:
	.string	"bw_mb_mode"
.LASF293:
	.string	"redundant_slice_flag"
.LASF504:
	.string	"errortext"
.LASF309:
	.string	"BitDepthLuma"
.LASF14:
	.string	"TRUE"
.LASF262:
	.string	"rdopt"
.LASF476:
	.string	"item"
.LASF40:
	.string	"EbufferS"
.LASF492:
	.string	"Offset_intra_default_intra"
.LASF499:
	.string	"LevelOffset4x4Chroma_Intra"
.LASF413:
	.string	"ThisPOC"
.LASF431:
	.string	"TotalMADBasicUnit"
.LASF124:
	.string	"prev_qp"
.LASF246:
	.string	"IntraDisableInterOnly"
.LASF52:
	.string	"mv_res_contexts"
.LASF241:
	.string	"InterSearch8x16"
.LASF123:
	.string	"actj"
.LASF284:
	.string	"num_slice_groups_minus1"
.LASF407:
	.string	"delta_pic_order_cnt_bottom"
.LASF394:
	.string	"buf_cycle"
.LASF22:
	.string	"BITS_COEFF_Y_MB"
.LASF345:
	.string	"cod_counter"
.LASF157:
	.string	"partArr"
.LASF135:
	.string	"byte_pos"
.LASF206:
	.string	"outfile"
.LASF58:
	.string	"ipr_contexts"
.LASF111:
	.string	"mbAddrA"
.LASF112:
	.string	"mbAddrB"
.LASF113:
	.string	"mbAddrC"
.LASF114:
	.string	"mbAddrD"
.LASF483:
	.string	"content"
.LASF298:
	.string	"LowPassForIntra8x8"
.LASF346:
	.string	"nz_coeff"
.LASF503:
	.string	"LevelOffset8x8Luma_Inter"
.LASF54:
	.string	"delta_qp_contexts"
.LASF473:
	.string	"bufsize"
.LASF249:
	.string	"Intra4x4DirDisable"
.LASF429:
	.string	"NumberofBasicUnitHeaderBits"
.LASF89:
	.string	"SyntaxElement"
.LASF258:
	.string	"qpB2"
.LASF310:
	.string	"BitDepthChroma"
.LASF445:
	.string	"IFLAG"
.LASF454:
	.string	"pre_frame_num"
.LASF421:
	.string	"pic_order_present_flag"
.LASF105:
	.string	"lf_disable"
.LASF220:
	.string	"BiPredMESubPel"
.LASF173:
	.string	"idr_flag"
.LASF2:
	.string	"short unsigned int"
.LASF443:
	.string	"FieldFrame"
.LASF256:
	.string	"last_frame"
.LASF128:
	.string	"predict_error"
.LASF327:
	.string	"current_slice_nr"
.LASF215:
	.string	"direct_spatial_mv_pred_flag"
.LASF184:
	.string	"jumpd"
.LASF457:
	.string	"bitdepth_chroma"
.LASF87:
	.string	"mapping"
.LASF311:
	.string	"img_height_cr"
.LASF291:
	.string	"slice_group_change_rate_minus1"
.LASF11:
	.string	"int64_t"
.LASF88:
	.string	"writing"
.LASF288:
	.string	"slice_group_id"
.LASF66:
	.string	"fld_map_contexts"
.LASF141:
	.string	"byte_buf_skip"
.LASF290:
	.string	"slice_group_change_direction_flag"
.LASF253:
	.string	"FrameRate"
.LASF486:
	.string	"temp"
.LASF228:
	.string	"RDPSliceWeightOnly"
.LASF60:
	.string	"cbp_contexts"
.LASF314:
	.string	"cb_qp_index_offset"
.LASF158:
	.string	"mot_ctx"
.LASF121:
	.string	"NoMbPartLessThan8x8Flag"
.LASF336:
	.string	"subblock_x"
.LASF337:
	.string	"subblock_y"
.LASF318:
	.string	"UseExplicitLambdaParams"
.LASF91:
	.string	"currSEnr"
.LASF417:
	.string	"FrameHeightInMbs"
.LASF366:
	.string	"currentSlice"
.LASF95:
	.string	"bitcounter"
.LASF39:
	.string	"ErangeS"
.LASF115:
	.string	"mbAvailA"
.LASF116:
	.string	"mbAvailB"
.LASF117:
	.string	"mbAvailC"
.LASF118:
	.string	"mbAvailD"
.LASF101:
	.string	"cbp_blk"
.LASF501:
	.string	"LevelOffset4x4Chroma_Inter"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
