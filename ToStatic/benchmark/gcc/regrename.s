	.file	"regrename.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I . -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 regrename.c -mtune=generic -march=x86-64 -g
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
	.section	.rodata
.LC0:
	.string	"NO_REGS"
.LC1:
	.string	"AREG"
.LC2:
	.string	"DREG"
.LC3:
	.string	"CREG"
.LC4:
	.string	"BREG"
.LC5:
	.string	"SIREG"
.LC6:
	.string	"DIREG"
.LC7:
	.string	"AD_REGS"
.LC8:
	.string	"Q_REGS"
.LC9:
	.string	"NON_Q_REGS"
.LC10:
	.string	"INDEX_REGS"
.LC11:
	.string	"LEGACY_REGS"
.LC12:
	.string	"GENERAL_REGS"
.LC13:
	.string	"FP_TOP_REG"
.LC14:
	.string	"FP_SECOND_REG"
.LC15:
	.string	"FLOAT_REGS"
.LC16:
	.string	"SSE_REGS"
.LC17:
	.string	"MMX_REGS"
.LC18:
	.string	"FP_TOP_SSE_REGS"
.LC19:
	.string	"FP_SECOND_SSE_REGS"
.LC20:
	.string	"FLOAT_SSE_REGS"
.LC21:
	.string	"FLOAT_INT_REGS"
.LC22:
	.string	"INT_SSE_REGS"
.LC23:
	.string	"FLOAT_INT_SSE_REGS"
.LC24:
	.string	"ALL_REGS"
	.align 32
	.type	reg_class_names, @object
	.size	reg_class_names, 200
reg_class_names:
	.quad	.LC0
	.quad	.LC1
	.quad	.LC2
	.quad	.LC3
	.quad	.LC4
	.quad	.LC5
	.quad	.LC6
	.quad	.LC7
	.quad	.LC8
	.quad	.LC9
	.quad	.LC10
	.quad	.LC11
	.quad	.LC12
	.quad	.LC13
	.quad	.LC14
	.quad	.LC15
	.quad	.LC16
	.quad	.LC17
	.quad	.LC18
	.quad	.LC19
	.quad	.LC20
	.quad	.LC21
	.quad	.LC22
	.quad	.LC23
	.quad	.LC24
.LC25:
	.string	"terminate_all_read"
.LC26:
	.string	"terminate_overlapping_read"
.LC27:
	.string	"terminate_write"
.LC28:
	.string	"terminate_dead"
.LC29:
	.string	"mark_read"
.LC30:
	.string	"mark_write"
	.align 32
	.type	scan_actions_name, @object
	.size	scan_actions_name, 48
scan_actions_name:
	.quad	.LC25
	.quad	.LC26
	.quad	.LC27
	.quad	.LC28
	.quad	.LC29
	.quad	.LC30
	.local	rename_obstack
	.comm	rename_obstack,88,32
.LC31:
	.string	"regrename.c"
	.text
	.type	note_sets, @function
note_sets:
.LFB2:
	.file 1 "regrename.c"
	.loc 1 108 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$56, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)	# x, x
	movq	%rsi, -48(%rbp)	# set, set
	movq	%rdx, -56(%rbp)	# data, data
	.loc 1 109 0
	movq	-56(%rbp), %rax	# data, tmp99
	movq	%rax, -24(%rbp)	# tmp99, pset
	.loc 1 112 0
	movq	-40(%rbp), %rax	# x, tmp100
	movzwl	(%rax), %eax	# x_12(D)->code, D.14313
	cmpw	$61, %ax	#, D.14313
	je	.L2	#,
	.loc 1 113 0
	jmp	.L1	#
.L2:
	.loc 1 114 0
	movq	-40(%rbp), %rax	# x, tmp101
	movl	8(%rax), %eax	# x_12(D)->fld[0].rtuint, tmp102
	movl	%eax, -28(%rbp)	# tmp102, regno
	.loc 1 115 0
	cmpl	$7, -28(%rbp)	#, regno
	jbe	.L4	#,
	.loc 1 115 0 is_stmt 0 discriminator 1
	cmpl	$15, -28(%rbp)	#, regno
	jbe	.L5	#,
.L4:
	.loc 1 115 0 discriminator 2
	cmpl	$20, -28(%rbp)	#, regno
	jbe	.L6	#,
	.loc 1 115 0 discriminator 1
	cmpl	$28, -28(%rbp)	#, regno
	jbe	.L5	#,
.L6:
	.loc 1 115 0 discriminator 2
	cmpl	$44, -28(%rbp)	#, regno
	jbe	.L7	#,
	.loc 1 115 0 discriminator 1
	cmpl	$52, -28(%rbp)	#, regno
	jbe	.L5	#,
.L7:
	.loc 1 115 0 discriminator 2
	cmpl	$28, -28(%rbp)	#, regno
	jbe	.L8	#,
	.loc 1 115 0 discriminator 1
	cmpl	$36, -28(%rbp)	#, regno
	ja	.L8	#,
.L5:
	movq	-40(%rbp), %rax	# x, tmp103
	movzbl	2(%rax), %eax	# x_12(D)->mode, D.14314
	movzbl	%al, %eax	# D.14314, D.14315
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.14316
	cmpl	$5, %eax	#, D.14316
	je	.L9	#,
	.loc 1 115 0 discriminator 2
	movq	-40(%rbp), %rax	# x, tmp105
	movzbl	2(%rax), %eax	# x_12(D)->mode, D.14314
	movzbl	%al, %eax	# D.14314, D.14315
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.14316
	cmpl	$6, %eax	#, D.14316
	jne	.L10	#,
.L9:
	.loc 1 115 0 discriminator 1
	movl	$2, %eax	#, iftmp.1
	jmp	.L11	#
.L10:
	movl	$1, %eax	#, iftmp.1
.L11:
	.loc 1 115 0 discriminator 3
	jmp	.L12	#
.L8:
	.loc 1 115 0 discriminator 2
	movq	-40(%rbp), %rax	# x, tmp107
	movzbl	2(%rax), %eax	# x_12(D)->mode, D.14314
	cmpb	$18, %al	#, D.14314
	jne	.L13	#,
	.loc 1 115 0 discriminator 1
	movl	target_flags(%rip), %eax	# target_flags, target_flags.4
	andl	$33554432, %eax	#, D.14315
	testl	%eax, %eax	# D.14315
	je	.L14	#,
	movl	$2, %eax	#, iftmp.3
	jmp	.L12	#
.L14:
	.loc 1 115 0 discriminator 2
	movl	$3, %eax	#, iftmp.3
	jmp	.L12	#
.L13:
	movq	-40(%rbp), %rax	# x, tmp108
	movzbl	2(%rax), %eax	# x_12(D)->mode, D.14314
	cmpb	$24, %al	#, D.14314
	jne	.L17	#,
	.loc 1 115 0 discriminator 1
	movl	target_flags(%rip), %eax	# target_flags, target_flags.7
	andl	$33554432, %eax	#, D.14315
	testl	%eax, %eax	# D.14315
	je	.L18	#,
	movl	$4, %eax	#, iftmp.6
	jmp	.L12	#
.L18:
	.loc 1 115 0 discriminator 2
	movl	$6, %eax	#, iftmp.6
	jmp	.L12	#
.L17:
	movq	-40(%rbp), %rax	# x, tmp109
	movzbl	2(%rax), %eax	# x_12(D)->mode, D.14314
	movzbl	%al, %eax	# D.14314, D.14315
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.14314
	movzbl	%al, %edx	# D.14314, D.14315
	movl	target_flags(%rip), %eax	# target_flags, target_flags.9
	andl	$33554432, %eax	#, D.14315
	testl	%eax, %eax	# D.14315
	je	.L21	#,
	.loc 1 115 0 discriminator 1
	movl	$8, %eax	#, iftmp.8
	jmp	.L22	#
.L21:
	.loc 1 115 0 discriminator 2
	movl	$4, %eax	#, iftmp.8
.L22:
	.loc 1 115 0 discriminator 3
	addl	%edx, %eax	# D.14315, D.14315
	subl	$1, %eax	#, D.14315
	movl	target_flags(%rip), %edx	# target_flags, target_flags.11
	andl	$33554432, %edx	#, D.14315
	testl	%edx, %edx	# D.14315
	je	.L23	#,
	.loc 1 115 0 discriminator 1
	movl	$8, %ebx	#, iftmp.10
	jmp	.L24	#
.L23:
	.loc 1 115 0 discriminator 2
	movl	$4, %ebx	#, iftmp.10
.L24:
	.loc 1 115 0 discriminator 3
	cltd
	idivl	%ebx	# iftmp.10
.L12:
	movl	%eax, -32(%rbp)	# iftmp.0, nregs
	.loc 1 118 0 is_stmt 1 discriminator 3
	movl	-32(%rbp), %edx	# nregs, nregs.12
	movl	-28(%rbp), %eax	# regno, tmp113
	addl	%edx, %eax	# nregs.12, D.14317
	cmpl	$53, %eax	#, D.14317
	jbe	.L25	#,
	.loc 1 119 0
	movl	$__FUNCTION__.10920, %edx	#,
	movl	$119, %esi	#,
	movl	$.LC31, %edi	#,
	call	fancy_abort	#
.L25:
	.loc 1 121 0
	jmp	.L26	#
.L27:
	.loc 1 122 0
	movq	-24(%rbp), %rax	# pset, tmp114
	movq	(%rax), %rdx	# *pset_11, D.14318
	movl	-32(%rbp), %ecx	# nregs, nregs.13
	movl	-28(%rbp), %eax	# regno, tmp115
	addl	%ecx, %eax	# nregs.13, D.14317
	movl	$1, %esi	#, tmp116
	movl	%eax, %ecx	# D.14315, tmp121
	salq	%cl, %rsi	# tmp121, D.14318
	movq	%rsi, %rax	# D.14318, D.14318
	orq	%rax, %rdx	# D.14318, D.14318
	movq	-24(%rbp), %rax	# pset, tmp117
	movq	%rdx, (%rax)	# D.14318, *pset_11
.L26:
	.loc 1 121 0 discriminator 1
	movl	-32(%rbp), %eax	# nregs, nregs.14
	leal	-1(%rax), %edx	#, tmp118
	movl	%edx, -32(%rbp)	# tmp118, nregs
	testl	%eax, %eax	# nregs.14
	jg	.L27	#,
.L1:
	.loc 1 123 0
	addq	$56, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	note_sets, .-note_sets
	.type	clear_dead_regs, @function
clear_dead_regs:
.LFB3:
	.loc 1 133 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$72, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)	# pset, pset
	movl	%esi, -60(%rbp)	# kind, kind
	movq	%rdx, -72(%rbp)	# notes, notes
	.loc 1 135 0
	movq	-72(%rbp), %rax	# notes, tmp103
	movq	%rax, -32(%rbp)	# tmp103, note
	jmp	.L29	#
.L55:
	.loc 1 136 0
	movq	-32(%rbp), %rax	# note, tmp104
	movzbl	2(%rax), %eax	# note_1->mode, D.14320
	movzbl	%al, %eax	# D.14320, D.14321
	cmpl	-60(%rbp), %eax	# kind, D.14321
	jne	.L30	#,
	.loc 1 136 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# note, tmp105
	movq	8(%rax), %rax	# note_1->fld[0].rtx, D.14322
	movzwl	(%rax), %eax	# _16->code, D.14323
	cmpw	$61, %ax	#, D.14323
	jne	.L30	#,
.LBB2:
	.loc 1 138 0 is_stmt 1
	movq	-32(%rbp), %rax	# note, tmp106
	movq	8(%rax), %rax	# note_1->fld[0].rtx, tmp107
	movq	%rax, -24(%rbp)	# tmp107, reg
	.loc 1 139 0
	movq	-24(%rbp), %rax	# reg, tmp108
	movl	8(%rax), %eax	# reg_18->fld[0].rtuint, tmp109
	movl	%eax, -36(%rbp)	# tmp109, regno
	.loc 1 140 0
	cmpl	$7, -36(%rbp)	#, regno
	jbe	.L31	#,
	.loc 1 140 0 is_stmt 0 discriminator 1
	cmpl	$15, -36(%rbp)	#, regno
	jbe	.L32	#,
.L31:
	.loc 1 140 0 discriminator 2
	cmpl	$20, -36(%rbp)	#, regno
	jbe	.L33	#,
	.loc 1 140 0 discriminator 1
	cmpl	$28, -36(%rbp)	#, regno
	jbe	.L32	#,
.L33:
	.loc 1 140 0 discriminator 2
	cmpl	$44, -36(%rbp)	#, regno
	jbe	.L34	#,
	.loc 1 140 0 discriminator 1
	cmpl	$52, -36(%rbp)	#, regno
	jbe	.L32	#,
.L34:
	.loc 1 140 0 discriminator 2
	cmpl	$28, -36(%rbp)	#, regno
	jbe	.L35	#,
	.loc 1 140 0 discriminator 1
	cmpl	$36, -36(%rbp)	#, regno
	ja	.L35	#,
.L32:
	movq	-24(%rbp), %rax	# reg, tmp110
	movzbl	2(%rax), %eax	# reg_18->mode, D.14320
	movzbl	%al, %eax	# D.14320, D.14324
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.14325
	cmpl	$5, %eax	#, D.14325
	je	.L36	#,
	.loc 1 140 0 discriminator 2
	movq	-24(%rbp), %rax	# reg, tmp112
	movzbl	2(%rax), %eax	# reg_18->mode, D.14320
	movzbl	%al, %eax	# D.14320, D.14324
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.14325
	cmpl	$6, %eax	#, D.14325
	jne	.L37	#,
.L36:
	.loc 1 140 0 discriminator 1
	movl	$2, %eax	#, iftmp.16
	jmp	.L38	#
.L37:
	movl	$1, %eax	#, iftmp.16
.L38:
	.loc 1 140 0 discriminator 3
	jmp	.L39	#
.L35:
	.loc 1 140 0 discriminator 2
	movq	-24(%rbp), %rax	# reg, tmp114
	movzbl	2(%rax), %eax	# reg_18->mode, D.14320
	cmpb	$18, %al	#, D.14320
	jne	.L40	#,
	.loc 1 140 0 discriminator 1
	movl	target_flags(%rip), %eax	# target_flags, target_flags.19
	andl	$33554432, %eax	#, D.14324
	testl	%eax, %eax	# D.14324
	je	.L41	#,
	movl	$2, %eax	#, iftmp.18
	jmp	.L39	#
.L41:
	.loc 1 140 0 discriminator 2
	movl	$3, %eax	#, iftmp.18
	jmp	.L39	#
.L40:
	movq	-24(%rbp), %rax	# reg, tmp115
	movzbl	2(%rax), %eax	# reg_18->mode, D.14320
	cmpb	$24, %al	#, D.14320
	jne	.L44	#,
	.loc 1 140 0 discriminator 1
	movl	target_flags(%rip), %eax	# target_flags, target_flags.22
	andl	$33554432, %eax	#, D.14324
	testl	%eax, %eax	# D.14324
	je	.L45	#,
	movl	$4, %eax	#, iftmp.21
	jmp	.L39	#
.L45:
	.loc 1 140 0 discriminator 2
	movl	$6, %eax	#, iftmp.21
	jmp	.L39	#
.L44:
	movq	-24(%rbp), %rax	# reg, tmp116
	movzbl	2(%rax), %eax	# reg_18->mode, D.14320
	movzbl	%al, %eax	# D.14320, D.14324
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.14320
	movzbl	%al, %edx	# D.14320, D.14324
	movl	target_flags(%rip), %eax	# target_flags, target_flags.24
	andl	$33554432, %eax	#, D.14324
	testl	%eax, %eax	# D.14324
	je	.L48	#,
	.loc 1 140 0 discriminator 1
	movl	$8, %eax	#, iftmp.23
	jmp	.L49	#
.L48:
	.loc 1 140 0 discriminator 2
	movl	$4, %eax	#, iftmp.23
.L49:
	.loc 1 140 0 discriminator 3
	addl	%edx, %eax	# D.14324, D.14324
	subl	$1, %eax	#, D.14324
	movl	target_flags(%rip), %edx	# target_flags, target_flags.26
	andl	$33554432, %edx	#, D.14324
	testl	%edx, %edx	# D.14324
	je	.L50	#,
	.loc 1 140 0 discriminator 1
	movl	$8, %ebx	#, iftmp.25
	jmp	.L51	#
.L50:
	.loc 1 140 0 discriminator 2
	movl	$4, %ebx	#, iftmp.25
.L51:
	.loc 1 140 0 discriminator 3
	cltd
	idivl	%ebx	# iftmp.25
.L39:
	movl	%eax, -40(%rbp)	# iftmp.15, nregs
	.loc 1 143 0 is_stmt 1 discriminator 3
	movl	-40(%rbp), %edx	# nregs, nregs.27
	movl	-36(%rbp), %eax	# regno, tmp120
	addl	%edx, %eax	# nregs.27, D.14321
	cmpl	$53, %eax	#, D.14321
	jbe	.L52	#,
	.loc 1 144 0
	movl	$__FUNCTION__.10933, %edx	#,
	movl	$144, %esi	#,
	movl	$.LC31, %edi	#,
	call	fancy_abort	#
.L52:
	.loc 1 146 0
	jmp	.L53	#
.L54:
	.loc 1 147 0
	movq	-56(%rbp), %rax	# pset, tmp121
	movq	(%rax), %rdx	# *pset_63(D), D.14326
	movl	-40(%rbp), %ecx	# nregs, nregs.28
	movl	-36(%rbp), %eax	# regno, tmp122
	addl	%ecx, %eax	# nregs.28, D.14321
	movl	$1, %esi	#, tmp123
	movl	%eax, %ecx	# D.14324, tmp130
	salq	%cl, %rsi	# tmp130, D.14326
	movq	%rsi, %rax	# D.14326, D.14326
	notq	%rax	# D.14326
	andq	%rax, %rdx	# D.14326, D.14326
	movq	-56(%rbp), %rax	# pset, tmp124
	movq	%rdx, (%rax)	# D.14326, *pset_63(D)
.L53:
	.loc 1 146 0 discriminator 1
	movl	-40(%rbp), %eax	# nregs, nregs.29
	leal	-1(%rax), %edx	#, tmp125
	movl	%edx, -40(%rbp)	# tmp125, nregs
	testl	%eax, %eax	# nregs.29
	jg	.L54	#,
.L30:
.LBE2:
	.loc 1 135 0
	movq	-32(%rbp), %rax	# note, tmp126
	movq	16(%rax), %rax	# note_1->fld[1].rtx, tmp127
	movq	%rax, -32(%rbp)	# tmp127, note
.L29:
	.loc 1 135 0 is_stmt 0 discriminator 1
	cmpq	$0, -32(%rbp)	#, note
	jne	.L55	#,
	.loc 1 149 0 is_stmt 1
	addq	$72, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	clear_dead_regs, .-clear_dead_regs
	.type	merge_overlapping_regs, @function
merge_overlapping_regs:
.LFB4:
	.loc 1 159 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -40(%rbp)	# b, b
	movq	%rsi, -48(%rbp)	# pset, pset
	movq	%rdx, -56(%rbp)	# chain, chain
	.loc 1 160 0
	movq	-56(%rbp), %rax	# chain, tmp75
	movq	%rax, -16(%rbp)	# tmp75, t
	.loc 1 164 0
	movq	$0, -24(%rbp)	#, live
	movq	-40(%rbp), %rax	# b, tmp76
	movq	64(%rax), %rdx	# b_6(D)->global_live_at_start, D.14327
	leaq	-24(%rbp), %rax	#, tmp77
	movq	%rdx, %rsi	# D.14327,
	movq	%rax, %rdi	# tmp77,
	call	reg_set_to_hard_reg_set	#
	.loc 1 165 0
	movq	-40(%rbp), %rax	# b, tmp78
	movq	(%rax), %rax	# b_6(D)->head, tmp79
	movq	%rax, -8(%rbp)	# tmp79, insn
	.loc 1 166 0
	jmp	.L57	#
.L63:
	.loc 1 170 0
	jmp	.L58	#
.L61:
	.loc 1 172 0
	movq	-8(%rbp), %rax	# insn, tmp80
	movzwl	(%rax), %eax	# insn_2->code, D.14329
	movzwl	%ax, %eax	# D.14329, D.14330
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.14331
	cmpb	$105, %al	#, D.14331
	jne	.L59	#,
	.loc 1 174 0
	movq	-8(%rbp), %rax	# insn, tmp82
	movq	56(%rax), %rdx	# insn_2->fld[6].rtx, D.14328
	leaq	-24(%rbp), %rax	#, tmp83
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp83,
	call	clear_dead_regs	#
	.loc 1 175 0
	movq	-8(%rbp), %rax	# insn, tmp84
	movq	32(%rax), %rax	# insn_2->fld[3].rtx, D.14328
	leaq	-24(%rbp), %rdx	#, tmp85
	movl	$note_sets, %esi	#,
	movq	%rax, %rdi	# D.14328,
	call	note_stores	#
	.loc 1 178 0
	movq	-16(%rbp), %rax	# t, tmp86
	cmpq	-56(%rbp), %rax	# chain, tmp86
	je	.L60	#,
	.loc 1 179 0
	movq	-48(%rbp), %rax	# pset, tmp87
	movq	(%rax), %rdx	# *pset_15(D), D.14332
	movq	-24(%rbp), %rax	# live, live.30
	orq	%rax, %rdx	# live.30, D.14332
	movq	-48(%rbp), %rax	# pset, tmp88
	movq	%rdx, (%rax)	# D.14332, *pset_15(D)
.L60:
	.loc 1 180 0
	movq	-8(%rbp), %rax	# insn, tmp89
	movq	56(%rax), %rdx	# insn_2->fld[6].rtx, D.14328
	leaq	-24(%rbp), %rax	#, tmp90
	movl	$10, %esi	#,
	movq	%rax, %rdi	# tmp90,
	call	clear_dead_regs	#
.L59:
	.loc 1 182 0
	movq	-8(%rbp), %rax	# insn, tmp91
	movq	24(%rax), %rax	# insn_2->fld[2].rtx, tmp92
	movq	%rax, -8(%rbp)	# tmp92, insn
.L58:
	.loc 1 170 0 discriminator 1
	movq	-16(%rbp), %rax	# t, tmp93
	movq	16(%rax), %rax	# t_1->insn, D.14328
	cmpq	-8(%rbp), %rax	# insn, D.14328
	jne	.L61	#,
	.loc 1 185 0
	movq	-48(%rbp), %rax	# pset, tmp94
	movq	(%rax), %rdx	# *pset_15(D), D.14332
	movq	-24(%rbp), %rax	# live, live.31
	orq	%rax, %rdx	# live.31, D.14332
	movq	-48(%rbp), %rax	# pset, tmp95
	movq	%rdx, (%rax)	# D.14332, *pset_15(D)
	.loc 1 190 0
	movq	-16(%rbp), %rax	# t, tmp96
	movq	8(%rax), %rax	# t_1->next_use, D.14333
	testq	%rax, %rax	# D.14333
	jne	.L62	#,
	.loc 1 191 0
	movq	-8(%rbp), %rax	# insn, tmp97
	movq	32(%rax), %rax	# insn_2->fld[3].rtx, D.14328
	movq	-48(%rbp), %rdx	# pset, tmp98
	movl	$note_sets, %esi	#,
	movq	%rax, %rdi	# D.14328,
	call	note_stores	#
.L62:
	.loc 1 193 0
	movq	-16(%rbp), %rax	# t, tmp99
	movq	8(%rax), %rax	# t_1->next_use, tmp100
	movq	%rax, -16(%rbp)	# tmp100, t
.L57:
	.loc 1 166 0 discriminator 1
	cmpq	$0, -16(%rbp)	#, t
	jne	.L63	#,
	.loc 1 195 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	merge_overlapping_regs, .-merge_overlapping_regs
	.section	.rodata
.LC32:
	.string	"\nBasic block %d:\n"
.LC33:
	.string	"Register %s in insn %d"
.LC34:
	.string	" crosses a call"
.LC35:
	.string	"; no available registers\n"
.LC36:
	.string	", renamed as %s\n"
	.text
	.globl	regrename_optimize
	.type	regrename_optimize, @function
regrename_optimize:
.LFB5:
	.loc 1 201 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$408, %rsp	#,
	.cfi_offset 3, -24
	.loc 1 203 0
	movl	$0, -416(%rbp)	#, this_tick
	.loc 1 207 0
	leaq	-240(%rbp), %rax	#, tmp236
	movl	$212, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp236,
	call	memset	#
	.loc 1 209 0
	movl	$rename_obstack, %edi	#,
	call	gcc_obstack_init	#
.LBB3:
	.loc 1 210 0
	movq	$rename_obstack, -336(%rbp)	#, __h
.LBB4:
	movq	-336(%rbp), %rax	# __h, tmp237
	movq	%rax, -328(%rbp)	# tmp237, __o
	movl	$0, -388(%rbp)	#, __len
	movq	-328(%rbp), %rax	# __o, tmp238
	movq	32(%rax), %rax	# __o_33->chunk_limit, D.14334
	movq	%rax, %rdx	# D.14334, D.14335
	movq	-328(%rbp), %rax	# __o, tmp239
	movq	24(%rax), %rax	# __o_33->next_free, D.14334
	subq	%rax, %rdx	# D.14335, D.14335
	movl	-388(%rbp), %eax	# __len, tmp240
	cltq
	cmpq	%rax, %rdx	# D.14335, D.14335
	jge	.L65	#,
	.loc 1 210 0 is_stmt 0 discriminator 1
	movl	-388(%rbp), %edx	# __len, tmp241
	movq	-328(%rbp), %rax	# __o, tmp242
	movl	%edx, %esi	# tmp241,
	movq	%rax, %rdi	# tmp242,
	call	_obstack_newchunk	#
.L65:
	.loc 1 210 0 discriminator 2
	movq	-328(%rbp), %rax	# __o, tmp243
	movq	24(%rax), %rdx	# __o_33->next_free, D.14334
	movl	-388(%rbp), %eax	# __len, tmp244
	cltq
	addq	%rax, %rdx	# D.14336, D.14334
	movq	-328(%rbp), %rax	# __o, tmp245
	movq	%rdx, 24(%rax)	# D.14334, __o_33->next_free
.LBE4:
.LBB5:
	movq	-336(%rbp), %rax	# __h, tmp246
	movq	%rax, -320(%rbp)	# tmp246, __o1
	movq	-320(%rbp), %rax	# __o1, tmp247
	movq	16(%rax), %rax	# __o1_44->object_base, tmp248
	movq	%rax, -312(%rbp)	# tmp248, value
	movq	-320(%rbp), %rax	# __o1, tmp249
	movq	24(%rax), %rax	# __o1_44->next_free, D.14334
	cmpq	-312(%rbp), %rax	# value, D.14334
	jne	.L66	#,
	.loc 1 210 0 discriminator 1
	movq	-320(%rbp), %rax	# __o1, tmp250
	movzbl	80(%rax), %edx	# __o1_44->maybe_empty_object, tmp253
	orl	$2, %edx	#, tmp254
	movb	%dl, 80(%rax)	# tmp254, __o1_44->maybe_empty_object
.L66:
	.loc 1 210 0 discriminator 2
	movq	-320(%rbp), %rax	# __o1, tmp255
	movq	24(%rax), %rax	# __o1_44->next_free, D.14334
	movq	%rax, %rdx	# D.14334, D.14335
	movq	-320(%rbp), %rax	# __o1, tmp256
	movl	48(%rax), %eax	# __o1_44->alignment_mask, D.14337
	cltq
	addq	%rax, %rdx	# D.14335, D.14335
	movq	-320(%rbp), %rax	# __o1, tmp257
	movl	48(%rax), %eax	# __o1_44->alignment_mask, D.14337
	notl	%eax	# D.14337
	cltq
	andq	%rdx, %rax	# D.14335, D.14335
	movq	%rax, %rdx	# D.14335, D.14334
	movq	-320(%rbp), %rax	# __o1, tmp258
	movq	%rdx, 24(%rax)	# D.14334, __o1_44->next_free
	movq	-320(%rbp), %rax	# __o1, tmp259
	movq	24(%rax), %rax	# __o1_44->next_free, D.14334
	movq	%rax, %rdx	# D.14334, D.14335
	movq	-320(%rbp), %rax	# __o1, tmp260
	movq	8(%rax), %rax	# __o1_44->chunk, D.14338
	movq	%rdx, %rcx	# D.14335, D.14335
	subq	%rax, %rcx	# D.14335, D.14335
	movq	-320(%rbp), %rax	# __o1, tmp261
	movq	32(%rax), %rax	# __o1_44->chunk_limit, D.14334
	movq	%rax, %rdx	# D.14334, D.14335
	movq	-320(%rbp), %rax	# __o1, tmp262
	movq	8(%rax), %rax	# __o1_44->chunk, D.14338
	subq	%rax, %rdx	# D.14335, D.14335
	movq	%rdx, %rax	# D.14335, D.14335
	cmpq	%rax, %rcx	# D.14335, D.14335
	jle	.L67	#,
	.loc 1 210 0 discriminator 1
	movq	-320(%rbp), %rax	# __o1, tmp263
	movq	32(%rax), %rdx	# __o1_44->chunk_limit, D.14334
	movq	-320(%rbp), %rax	# __o1, tmp264
	movq	%rdx, 24(%rax)	# D.14334, __o1_44->next_free
.L67:
	.loc 1 210 0 discriminator 2
	movq	-320(%rbp), %rax	# __o1, tmp265
	movq	24(%rax), %rdx	# __o1_44->next_free, D.14334
	movq	-320(%rbp), %rax	# __o1, tmp266
	movq	%rdx, 16(%rax)	# D.14334, __o1_44->object_base
	movq	-312(%rbp), %rax	# value, D.14339
.LBE5:
.LBE3:
	movq	%rax, -304(%rbp)	# first_obj.32, first_obj
	.loc 1 212 0 is_stmt 1 discriminator 2
	movl	$0, -412(%rbp)	#, b
	jmp	.L68	#
.L137:
.LBB6:
	.loc 1 214 0
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.33
	movl	-412(%rbp), %edx	# b, tmp268
	movslq	%edx, %rdx	# tmp268, tmp267
	addq	$4, %rdx	#, tmp269
	movq	(%rax,%rdx,8), %rax	# basic_block_info.33_74->data.bb, tmp270
	movq	%rax, -296(%rbp)	# tmp270, bb
	.loc 1 215 0
	movq	$0, -368(%rbp)	#, all_chains
	.loc 1 219 0
	movq	$0, -360(%rbp)	#, unavailable
	.loc 1 221 0
	movq	rtl_dump_file(%rip), %rax	# rtl_dump_file, rtl_dump_file.34
	testq	%rax, %rax	# rtl_dump_file.34
	je	.L69	#,
	.loc 1 222 0
	movq	rtl_dump_file(%rip), %rax	# rtl_dump_file, rtl_dump_file.35
	movl	-412(%rbp), %edx	# b, tmp271
	movl	$.LC32, %esi	#,
	movq	%rax, %rdi	# rtl_dump_file.35,
	movl	$0, %eax	#,
	call	fprintf	#
.L69:
	.loc 1 224 0
	movq	-296(%rbp), %rax	# bb, tmp272
	movq	%rax, %rdi	# tmp272,
	call	build_def_use	#
	movq	%rax, -368(%rbp)	# tmp273, all_chains
	.loc 1 226 0
	movq	rtl_dump_file(%rip), %rax	# rtl_dump_file, rtl_dump_file.36
	testq	%rax, %rax	# rtl_dump_file.36
	je	.L70	#,
	.loc 1 227 0
	movq	-368(%rbp), %rax	# all_chains, tmp274
	movq	%rax, %rdi	# tmp274,
	call	dump_def_use_chain	#
.L70:
	.loc 1 229 0
	movq	$0, -360(%rbp)	#, unavailable
	.loc 1 231 0
	movl	frame_pointer_needed(%rip), %eax	# frame_pointer_needed, frame_pointer_needed.37
	testl	%eax, %eax	# frame_pointer_needed.37
	je	.L71	#,
.LBB7:
	.loc 1 235 0
	movl	target_flags(%rip), %eax	# target_flags, target_flags.39
	andl	$33554432, %eax	#, D.14337
	testl	%eax, %eax	# D.14337
	je	.L72	#,
	.loc 1 235 0 is_stmt 0 discriminator 1
	movl	$5, %eax	#, iftmp.38
	jmp	.L73	#
.L72:
	.loc 1 235 0 discriminator 2
	movl	$4, %eax	#, iftmp.38
.L73:
	.loc 1 235 0 discriminator 3
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.14340
	movzbl	%al, %edx	# D.14340, D.14337
	movl	target_flags(%rip), %eax	# target_flags, target_flags.41
	andl	$33554432, %eax	#, D.14337
	testl	%eax, %eax	# D.14337
	je	.L74	#,
	.loc 1 235 0 discriminator 1
	movl	$8, %eax	#, iftmp.40
	jmp	.L75	#
.L74:
	.loc 1 235 0 discriminator 2
	movl	$4, %eax	#, iftmp.40
.L75:
	.loc 1 235 0 discriminator 3
	addl	%edx, %eax	# D.14337, D.14337
	subl	$1, %eax	#, D.14337
	movl	target_flags(%rip), %edx	# target_flags, target_flags.43
	andl	$33554432, %edx	#, D.14337
	testl	%edx, %edx	# D.14337
	je	.L76	#,
	.loc 1 235 0 discriminator 1
	movl	$8, %ebx	#, iftmp.42
	jmp	.L77	#
.L76:
	.loc 1 235 0 discriminator 2
	movl	$4, %ebx	#, iftmp.42
.L77:
	.loc 1 235 0 discriminator 3
	cltd
	idivl	%ebx	# iftmp.42
	movl	%eax, -408(%rbp)	# tmp276, i
	jmp	.L78	#
.L79:
	.loc 1 236 0 is_stmt 1
	movl	-408(%rbp), %eax	# i, tmp278
	addl	$20, %eax	#, D.14337
	movl	$1, %edx	#, tmp279
	movl	%eax, %ecx	# D.14337, tmp382
	salq	%cl, %rdx	# tmp382, D.14341
	movq	%rdx, %rax	# D.14341, D.14341
	orq	%rax, -360(%rbp)	# D.14341, unavailable
.L78:
	.loc 1 235 0 discriminator 1
	movl	-408(%rbp), %eax	# i, i.44
	leal	-1(%rax), %edx	#, tmp280
	movl	%edx, -408(%rbp)	# tmp280, i
	testl	%eax, %eax	# i.44
	jne	.L79	#,
	.loc 1 239 0
	movl	target_flags(%rip), %eax	# target_flags, target_flags.46
	andl	$33554432, %eax	#, D.14337
	testl	%eax, %eax	# D.14337
	je	.L80	#,
	.loc 1 239 0 is_stmt 0 discriminator 1
	movl	$5, %eax	#, iftmp.45
	jmp	.L81	#
.L80:
	.loc 1 239 0 discriminator 2
	movl	$4, %eax	#, iftmp.45
.L81:
	.loc 1 239 0 discriminator 3
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.14340
	movzbl	%al, %edx	# D.14340, D.14337
	movl	target_flags(%rip), %eax	# target_flags, target_flags.48
	andl	$33554432, %eax	#, D.14337
	testl	%eax, %eax	# D.14337
	je	.L82	#,
	.loc 1 239 0 discriminator 1
	movl	$8, %eax	#, iftmp.47
	jmp	.L83	#
.L82:
	.loc 1 239 0 discriminator 2
	movl	$4, %eax	#, iftmp.47
.L83:
	.loc 1 239 0 discriminator 3
	addl	%edx, %eax	# D.14337, D.14337
	subl	$1, %eax	#, D.14337
	movl	target_flags(%rip), %edx	# target_flags, target_flags.50
	andl	$33554432, %edx	#, D.14337
	testl	%edx, %edx	# D.14337
	je	.L84	#,
	.loc 1 239 0 discriminator 1
	movl	$8, %ebx	#, iftmp.49
	jmp	.L85	#
.L84:
	.loc 1 239 0 discriminator 2
	movl	$4, %ebx	#, iftmp.49
.L85:
	.loc 1 239 0 discriminator 3
	cltd
	idivl	%ebx	# iftmp.49
	movl	%eax, -408(%rbp)	# tmp282, i
	jmp	.L86	#
.L87:
	.loc 1 240 0 is_stmt 1
	movl	-408(%rbp), %eax	# i, tmp284
	addl	$6, %eax	#, D.14337
	movl	$1, %edx	#, tmp285
	movl	%eax, %ecx	# D.14337, tmp385
	salq	%cl, %rdx	# tmp385, D.14341
	movq	%rdx, %rax	# D.14341, D.14341
	orq	%rax, -360(%rbp)	# D.14341, unavailable
.L86:
	.loc 1 239 0 discriminator 1
	movl	-408(%rbp), %eax	# i, i.51
	leal	-1(%rax), %edx	#, tmp286
	movl	%edx, -408(%rbp)	# tmp286, i
	testl	%eax, %eax	# i.51
	jne	.L87	#,
.L71:
.LBE7:
	.loc 1 244 0
	movq	$0, -288(%rbp)	#, regs_seen
	.loc 1 245 0
	jmp	.L88	#
.L134:
.LBB8:
	.loc 1 247 0
	movl	$-1, -400(%rbp)	#, best_new_reg
	.loc 1 249 0
	movq	-368(%rbp), %rax	# all_chains, tmp287
	movq	%rax, -280(%rbp)	# tmp287, this
	.loc 1 252 0
	movq	-280(%rbp), %rax	# this, tmp288
	movq	24(%rax), %rax	# this_130->loc, D.14342
	movq	(%rax), %rax	# *_131, D.14343
	movl	8(%rax), %eax	# _132->fld[0].rtuint, D.14344
	movl	%eax, -384(%rbp)	# D.14344, reg
	.loc 1 255 0
	movq	-280(%rbp), %rax	# this, tmp289
	movq	(%rax), %rax	# this_130->next_chain, tmp290
	movq	%rax, -368(%rbp)	# tmp290, all_chains
	.loc 1 266 0
	movl	-384(%rbp), %eax	# reg, tmp292
	cltq
	movzbl	fixed_regs(%rax), %eax	# fixed_regs, D.14345
	testb	%al, %al	# D.14345
	jne	.L89	#,
	.loc 1 266 0 is_stmt 0 discriminator 1
	movl	-384(%rbp), %eax	# reg, tmp294
	cltq
	movzbl	global_regs(%rax), %eax	# global_regs, D.14345
	testb	%al, %al	# D.14345
	jne	.L89	#,
	.loc 1 268 0 is_stmt 1
	movl	frame_pointer_needed(%rip), %eax	# frame_pointer_needed, frame_pointer_needed.52
	testl	%eax, %eax	# frame_pointer_needed.52
	je	.L90	#,
	.loc 1 268 0 is_stmt 0 discriminator 1
	cmpl	$6, -384(%rbp)	#, reg
	jne	.L90	#,
.L89:
	.loc 1 273 0 is_stmt 1
	jmp	.L88	#
.L90:
	.loc 1 275 0
	movq	-360(%rbp), %rax	# unavailable, tmp295
	movq	%rax, -376(%rbp)	# tmp295, this_unavailable
	.loc 1 280 0
	movl	$0, -396(%rbp)	#, n_uses
	.loc 1 281 0
	movq	-280(%rbp), %rax	# this, tmp296
	movq	%rax, -344(%rbp)	# tmp296, last
	jmp	.L92	#
.L93:
	.loc 1 283 0 discriminator 2
	addl	$1, -396(%rbp)	#, n_uses
	.loc 1 284 0 discriminator 2
	movq	-344(%rbp), %rax	# last, tmp297
	movl	32(%rax), %eax	# last_15->class, D.14347
	movl	%eax, %eax	# D.14347, tmp298
	movq	reg_class_contents(,%rax,8), %rax	# reg_class_contents, D.14341
	notq	%rax	# D.14341
	movq	%rax, %rdx	# D.14341, D.14341
	movq	-376(%rbp), %rax	# this_unavailable, this_unavailable.53
	orq	%rdx, %rax	# D.14341, this_unavailable.54
	movq	%rax, -376(%rbp)	# this_unavailable.54, this_unavailable
	.loc 1 281 0 discriminator 2
	movq	-344(%rbp), %rax	# last, tmp299
	movq	8(%rax), %rax	# last_15->next_use, tmp300
	movq	%rax, -344(%rbp)	# tmp300, last
.L92:
	.loc 1 281 0 is_stmt 0 discriminator 1
	movq	-344(%rbp), %rax	# last, tmp301
	movq	8(%rax), %rax	# last_15->next_use, D.14346
	testq	%rax, %rax	# D.14346
	jne	.L93	#,
	.loc 1 287 0 is_stmt 1
	cmpl	$0, -396(%rbp)	#, n_uses
	jg	.L94	#,
	.loc 1 288 0
	jmp	.L88	#
.L94:
	.loc 1 290 0
	movq	-344(%rbp), %rax	# last, tmp302
	movl	32(%rax), %eax	# last_15->class, D.14347
	movl	%eax, %eax	# D.14347, tmp303
	movq	reg_class_contents(,%rax,8), %rax	# reg_class_contents, D.14341
	notq	%rax	# D.14341
	movq	%rax, %rdx	# D.14341, D.14341
	movq	-376(%rbp), %rax	# this_unavailable, this_unavailable.55
	orq	%rdx, %rax	# D.14341, this_unavailable.56
	movq	%rax, -376(%rbp)	# this_unavailable.56, this_unavailable
	.loc 1 293 0
	movq	-280(%rbp), %rax	# this, tmp304
	movzbl	36(%rax), %eax	# *this_130, D.14340
	andl	$1, %eax	#, D.14340
	testb	%al, %al	# D.14340
	je	.L95	#,
	.loc 1 294 0
	movq	-376(%rbp), %rdx	# this_unavailable, this_unavailable.57
	movq	call_used_reg_set(%rip), %rax	# call_used_reg_set, call_used_reg_set.58
	orq	%rdx, %rax	# this_unavailable.57, this_unavailable.59
	movq	%rax, -376(%rbp)	# this_unavailable.59, this_unavailable
.L95:
	.loc 1 296 0
	movq	-280(%rbp), %rdx	# this, tmp305
	leaq	-376(%rbp), %rcx	#, tmp306
	movq	-296(%rbp), %rax	# bb, tmp307
	movq	%rcx, %rsi	# tmp306,
	movq	%rax, %rdi	# tmp307,
	call	merge_overlapping_regs	#
	.loc 1 300 0
	movl	$0, -404(%rbp)	#, new_reg
	jmp	.L96	#
.L129:
.LBB9:
	.loc 1 302 0
	cmpl	$7, -404(%rbp)	#, new_reg
	jle	.L97	#,
	.loc 1 302 0 is_stmt 0 discriminator 1
	cmpl	$15, -404(%rbp)	#, new_reg
	jle	.L98	#,
.L97:
	.loc 1 302 0 discriminator 2
	cmpl	$20, -404(%rbp)	#, new_reg
	jle	.L99	#,
	.loc 1 302 0 discriminator 1
	cmpl	$28, -404(%rbp)	#, new_reg
	jle	.L98	#,
.L99:
	.loc 1 302 0 discriminator 2
	cmpl	$44, -404(%rbp)	#, new_reg
	jle	.L100	#,
	.loc 1 302 0 discriminator 1
	cmpl	$52, -404(%rbp)	#, new_reg
	jle	.L98	#,
.L100:
	.loc 1 302 0 discriminator 2
	cmpl	$28, -404(%rbp)	#, new_reg
	jle	.L101	#,
	.loc 1 302 0 discriminator 1
	cmpl	$36, -404(%rbp)	#, new_reg
	jg	.L101	#,
.L98:
	movq	-280(%rbp), %rax	# this, tmp308
	movq	24(%rax), %rax	# this_130->loc, D.14342
	movq	(%rax), %rax	# *_195, D.14343
	movzbl	2(%rax), %eax	# _196->mode, D.14340
	movzbl	%al, %eax	# D.14340, D.14337
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.14348
	cmpl	$5, %eax	#, D.14348
	je	.L102	#,
	.loc 1 302 0 discriminator 2
	movq	-280(%rbp), %rax	# this, tmp310
	movq	24(%rax), %rax	# this_130->loc, D.14342
	movq	(%rax), %rax	# *_200, D.14343
	movzbl	2(%rax), %eax	# _201->mode, D.14340
	movzbl	%al, %eax	# D.14340, D.14337
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.14348
	cmpl	$6, %eax	#, D.14348
	jne	.L103	#,
.L102:
	.loc 1 302 0 discriminator 1
	movl	$2, %eax	#, iftmp.61
	jmp	.L104	#
.L103:
	movl	$1, %eax	#, iftmp.61
.L104:
	.loc 1 302 0 discriminator 3
	jmp	.L105	#
.L101:
	.loc 1 302 0 discriminator 2
	movq	-280(%rbp), %rax	# this, tmp312
	movq	24(%rax), %rax	# this_130->loc, D.14342
	movq	(%rax), %rax	# *_160, D.14343
	movzbl	2(%rax), %eax	# _161->mode, D.14340
	cmpb	$18, %al	#, D.14340
	jne	.L106	#,
	.loc 1 302 0 discriminator 1
	movl	target_flags(%rip), %eax	# target_flags, target_flags.64
	andl	$33554432, %eax	#, D.14337
	testl	%eax, %eax	# D.14337
	je	.L107	#,
	movl	$2, %eax	#, iftmp.63
	jmp	.L105	#
.L107:
	.loc 1 302 0 discriminator 2
	movl	$3, %eax	#, iftmp.63
	jmp	.L105	#
.L106:
	movq	-280(%rbp), %rax	# this, tmp313
	movq	24(%rax), %rax	# this_130->loc, D.14342
	movq	(%rax), %rax	# *_168, D.14343
	movzbl	2(%rax), %eax	# _169->mode, D.14340
	cmpb	$24, %al	#, D.14340
	jne	.L110	#,
	.loc 1 302 0 discriminator 1
	movl	target_flags(%rip), %eax	# target_flags, target_flags.67
	andl	$33554432, %eax	#, D.14337
	testl	%eax, %eax	# D.14337
	je	.L111	#,
	movl	$4, %eax	#, iftmp.66
	jmp	.L105	#
.L111:
	.loc 1 302 0 discriminator 2
	movl	$6, %eax	#, iftmp.66
	jmp	.L105	#
.L110:
	movq	-280(%rbp), %rax	# this, tmp314
	movq	24(%rax), %rax	# this_130->loc, D.14342
	movq	(%rax), %rax	# *_176, D.14343
	movzbl	2(%rax), %eax	# _177->mode, D.14340
	movzbl	%al, %eax	# D.14340, D.14337
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.14340
	movzbl	%al, %edx	# D.14340, D.14337
	movl	target_flags(%rip), %eax	# target_flags, target_flags.69
	andl	$33554432, %eax	#, D.14337
	testl	%eax, %eax	# D.14337
	je	.L114	#,
	.loc 1 302 0 discriminator 1
	movl	$8, %eax	#, iftmp.68
	jmp	.L115	#
.L114:
	.loc 1 302 0 discriminator 2
	movl	$4, %eax	#, iftmp.68
.L115:
	.loc 1 302 0 discriminator 3
	addl	%edx, %eax	# D.14337, D.14337
	subl	$1, %eax	#, D.14337
	movl	target_flags(%rip), %edx	# target_flags, target_flags.71
	andl	$33554432, %edx	#, D.14337
	testl	%edx, %edx	# D.14337
	je	.L116	#,
	.loc 1 302 0 discriminator 1
	movl	$8, %ebx	#, iftmp.70
	jmp	.L117	#
.L116:
	.loc 1 302 0 discriminator 2
	movl	$4, %ebx	#, iftmp.70
.L117:
	.loc 1 302 0 discriminator 3
	cltd
	idivl	%ebx	# iftmp.70
.L105:
	movl	%eax, -380(%rbp)	# iftmp.60, nregs
	.loc 1 304 0 is_stmt 1 discriminator 3
	movl	-380(%rbp), %eax	# nregs, tmp321
	subl	$1, %eax	#, tmp320
	movl	%eax, -392(%rbp)	# tmp320, i
	jmp	.L118	#
.L122:
	.loc 1 305 0
	movq	-376(%rbp), %rdx	# this_unavailable, this_unavailable.72
	movl	-392(%rbp), %eax	# i, tmp322
	movl	-404(%rbp), %ecx	# new_reg, tmp323
	addl	%ecx, %eax	# tmp323, D.14337
	movl	%eax, %ecx	# D.14337, tmp390
	shrq	%cl, %rdx	# tmp390, D.14341
	movq	%rdx, %rax	# D.14341, D.14341
	andl	$1, %eax	#, D.14341
	testq	%rax, %rax	# D.14341
	jne	.L119	#,
	.loc 1 306 0
	movl	-392(%rbp), %eax	# i, tmp324
	movl	-404(%rbp), %edx	# new_reg, tmp325
	addl	%edx, %eax	# tmp325, D.14337
	cltq
	movzbl	fixed_regs(%rax), %eax	# fixed_regs, D.14345
	testb	%al, %al	# D.14345
	jne	.L119	#,
	.loc 1 307 0
	movl	-392(%rbp), %eax	# i, tmp327
	movl	-404(%rbp), %edx	# new_reg, tmp328
	addl	%edx, %eax	# tmp328, D.14337
	cltq
	movzbl	global_regs(%rax), %eax	# global_regs, D.14345
	testb	%al, %al	# D.14345
	jne	.L119	#,
	.loc 1 309 0
	movl	-392(%rbp), %eax	# i, tmp330
	movl	-404(%rbp), %edx	# new_reg, tmp331
	addl	%edx, %eax	# tmp331, D.14337
	cltq
	movzbl	regs_ever_live(%rax), %eax	# regs_ever_live, D.14345
	testb	%al, %al	# D.14345
	jne	.L120	#,
	.loc 1 310 0
	movl	-392(%rbp), %eax	# i, tmp333
	movl	-404(%rbp), %edx	# new_reg, tmp334
	addl	%edx, %eax	# tmp334, D.14337
	cltq
	movzbl	call_used_regs(%rax), %eax	# call_used_regs, D.14345
	testb	%al, %al	# D.14345
	je	.L119	#,
.L120:
	.loc 1 318 0
	movl	-392(%rbp), %eax	# i, tmp336
	movl	-384(%rbp), %edx	# reg, tmp337
	addl	%edx, %eax	# tmp337, D.14337
	cmpl	$7, %eax	#, D.14337
	jle	.L121	#,
	.loc 1 318 0 is_stmt 0 discriminator 1
	movl	-392(%rbp), %eax	# i, tmp338
	movl	-384(%rbp), %edx	# reg, tmp339
	addl	%edx, %eax	# tmp339, D.14337
	cmpl	$15, %eax	#, D.14337
	jle	.L119	#,
.L121:
	.loc 1 304 0 is_stmt 1
	subl	$1, -392(%rbp)	#, i
.L118:
	.loc 1 304 0 is_stmt 0 discriminator 1
	cmpl	$0, -392(%rbp)	#, i
	jns	.L122	#,
.L119:
	.loc 1 322 0 is_stmt 1
	cmpl	$0, -392(%rbp)	#, i
	js	.L123	#,
	.loc 1 323 0
	jmp	.L124	#
.L123:
	.loc 1 327 0
	movq	-280(%rbp), %rax	# this, tmp340
	movq	%rax, -352(%rbp)	# tmp340, tmp
	jmp	.L125	#
.L127:
	.loc 1 328 0
	movq	-352(%rbp), %rax	# tmp, tmp341
	movq	24(%rax), %rax	# tmp_14->loc, D.14342
	movq	(%rax), %rax	# *_226, D.14343
	movzbl	2(%rax), %eax	# _227->mode, D.14340
	movzbl	%al, %edx	# D.14340, D.14349
	movl	-404(%rbp), %eax	# new_reg, tmp342
	movl	%edx, %esi	# D.14349,
	movl	%eax, %edi	# tmp342,
	call	ix86_hard_regno_mode_ok	#
	testl	%eax, %eax	# D.14337
	je	.L126	#,
	.loc 1 327 0
	movq	-352(%rbp), %rax	# tmp, tmp343
	movq	8(%rax), %rax	# tmp_14->next_use, tmp344
	movq	%rax, -352(%rbp)	# tmp344, tmp
.L125:
	.loc 1 327 0 is_stmt 0 discriminator 1
	cmpq	$0, -352(%rbp)	#, tmp
	jne	.L127	#,
.L126:
	.loc 1 335 0 is_stmt 1
	cmpq	$0, -352(%rbp)	#, tmp
	jne	.L124	#,
	.loc 1 337 0
	cmpl	$-1, -400(%rbp)	#, best_new_reg
	je	.L128	#,
	.loc 1 338 0
	movl	-400(%rbp), %eax	# best_new_reg, tmp346
	cltq
	movl	-240(%rbp,%rax,4), %edx	# tick, D.14337
	movl	-404(%rbp), %eax	# new_reg, tmp348
	cltq
	movl	-240(%rbp,%rax,4), %eax	# tick, D.14337
	cmpl	%eax, %edx	# D.14337, D.14337
	jle	.L124	#,
.L128:
	.loc 1 339 0
	movl	-404(%rbp), %eax	# new_reg, tmp349
	movl	%eax, -400(%rbp)	# tmp349, best_new_reg
.L124:
.LBE9:
	.loc 1 300 0
	addl	$1, -404(%rbp)	#, new_reg
.L96:
	.loc 1 300 0 is_stmt 0 discriminator 1
	cmpl	$52, -404(%rbp)	#, new_reg
	jle	.L129	#,
	.loc 1 343 0 is_stmt 1
	movq	rtl_dump_file(%rip), %rax	# rtl_dump_file, rtl_dump_file.73
	testq	%rax, %rax	# rtl_dump_file.73
	je	.L130	#,
	.loc 1 346 0
	movq	-344(%rbp), %rax	# last, tmp350
	movq	16(%rax), %rax	# last_15->insn, D.14343
	.loc 1 345 0
	movl	8(%rax), %ecx	# _237->fld[0].rtint, D.14337
	movl	-384(%rbp), %eax	# reg, tmp352
	cltq
	movq	reg_names(,%rax,8), %rdx	# reg_names, D.14350
	movq	rtl_dump_file(%rip), %rax	# rtl_dump_file, rtl_dump_file.74
	movl	$.LC33, %esi	#,
	movq	%rax, %rdi	# rtl_dump_file.74,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 347 0
	movq	-344(%rbp), %rax	# last, tmp353
	movzbl	36(%rax), %eax	# *last_15, D.14340
	andl	$1, %eax	#, D.14340
	testb	%al, %al	# D.14340
	je	.L130	#,
	.loc 1 348 0
	movq	rtl_dump_file(%rip), %rax	# rtl_dump_file, rtl_dump_file.75
	movq	%rax, %rcx	# rtl_dump_file.75,
	movl	$15, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC34, %edi	#,
	call	fwrite	#
.L130:
	.loc 1 351 0
	cmpl	$-1, -400(%rbp)	#, best_new_reg
	jne	.L131	#,
	.loc 1 353 0
	movq	rtl_dump_file(%rip), %rax	# rtl_dump_file, rtl_dump_file.76
	testq	%rax, %rax	# rtl_dump_file.76
	je	.L132	#,
	.loc 1 354 0
	movq	rtl_dump_file(%rip), %rax	# rtl_dump_file, rtl_dump_file.77
	movq	%rax, %rcx	# rtl_dump_file.77,
	movl	$25, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC35, %edi	#,
	call	fwrite	#
	.loc 1 355 0
	jmp	.L88	#
.L132:
	jmp	.L88	#
.L131:
	.loc 1 358 0
	movl	-400(%rbp), %edx	# best_new_reg, tmp354
	movq	-280(%rbp), %rax	# this, tmp355
	movl	%edx, %esi	# tmp354,
	movq	%rax, %rdi	# tmp355,
	call	do_replace	#
	.loc 1 359 0
	movl	-416(%rbp), %eax	# this_tick, this_tick.78
	leal	1(%rax), %edx	#, tmp356
	movl	%edx, -416(%rbp)	# tmp356, this_tick
	movl	-400(%rbp), %edx	# best_new_reg, tmp358
	movslq	%edx, %rdx	# tmp358, tmp357
	movl	%eax, -240(%rbp,%rdx,4)	# this_tick.78, tick
	.loc 1 361 0
	movq	rtl_dump_file(%rip), %rax	# rtl_dump_file, rtl_dump_file.79
	testq	%rax, %rax	# rtl_dump_file.79
	je	.L88	#,
	.loc 1 362 0
	movl	-400(%rbp), %eax	# best_new_reg, tmp360
	cltq
	movq	reg_names(,%rax,8), %rdx	# reg_names, D.14350
	movq	rtl_dump_file(%rip), %rax	# rtl_dump_file, rtl_dump_file.80
	movl	$.LC36, %esi	#,
	movq	%rax, %rdi	# rtl_dump_file.80,
	movl	$0, %eax	#,
	call	fprintf	#
.L88:
.LBE8:
	.loc 1 245 0 discriminator 1
	cmpq	$0, -368(%rbp)	#, all_chains
	jne	.L134	#,
.LBB10:
	.loc 1 365 0
	movq	$rename_obstack, -272(%rbp)	#, __o
	movq	-304(%rbp), %rax	# first_obj, tmp361
	movq	%rax, -264(%rbp)	# tmp361, __obj
	movq	-272(%rbp), %rax	# __o, tmp362
	movq	8(%rax), %rax	# __o_251->chunk, D.14338
	cmpq	-264(%rbp), %rax	# __obj, D.14338
	jae	.L135	#,
	.loc 1 365 0 is_stmt 0 discriminator 1
	movq	-272(%rbp), %rax	# __o, tmp363
	movq	32(%rax), %rax	# __o_251->chunk_limit, D.14334
	cmpq	-264(%rbp), %rax	# __obj, D.14334
	jbe	.L135	#,
	movq	-272(%rbp), %rax	# __o, tmp364
	movq	-264(%rbp), %rdx	# __obj, tmp365
	movq	%rdx, 16(%rax)	# tmp365, __o_251->object_base
	movq	-272(%rbp), %rax	# __o, tmp366
	movq	16(%rax), %rdx	# __o_251->object_base, D.14334
	movq	-272(%rbp), %rax	# __o, tmp367
	movq	%rdx, 24(%rax)	# D.14334, __o_251->next_free
	jmp	.L136	#
.L135:
	.loc 1 365 0 discriminator 2
	movq	-264(%rbp), %rdx	# __obj, tmp368
	movq	-272(%rbp), %rax	# __o, tmp369
	movq	%rdx, %rsi	# tmp368,
	movq	%rax, %rdi	# tmp369,
	call	obstack_free	#
.L136:
.LBE10:
.LBE6:
	.loc 1 212 0 is_stmt 1
	addl	$1, -412(%rbp)	#, b
.L68:
	.loc 1 212 0 is_stmt 0 discriminator 1
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.81
	cmpl	%eax, -412(%rbp)	# n_basic_blocks.81, b
	jl	.L137	#,
.LBB11:
	.loc 1 368 0 is_stmt 1
	movq	$rename_obstack, -256(%rbp)	#, __o
	movq	$0, -248(%rbp)	#, __obj
	movq	-256(%rbp), %rax	# __o, tmp370
	movq	8(%rax), %rax	# __o_257->chunk, D.14338
	cmpq	-248(%rbp), %rax	# __obj, D.14338
	jae	.L138	#,
	.loc 1 368 0 is_stmt 0 discriminator 1
	movq	-256(%rbp), %rax	# __o, tmp371
	movq	32(%rax), %rax	# __o_257->chunk_limit, D.14334
	cmpq	-248(%rbp), %rax	# __obj, D.14334
	jbe	.L138	#,
	movq	-256(%rbp), %rax	# __o, tmp372
	movq	-248(%rbp), %rdx	# __obj, tmp373
	movq	%rdx, 16(%rax)	# tmp373, __o_257->object_base
	movq	-256(%rbp), %rax	# __o, tmp374
	movq	16(%rax), %rdx	# __o_257->object_base, D.14334
	movq	-256(%rbp), %rax	# __o, tmp375
	movq	%rdx, 24(%rax)	# D.14334, __o_257->next_free
	jmp	.L139	#
.L138:
	.loc 1 368 0 discriminator 2
	movq	-248(%rbp), %rdx	# __obj, tmp376
	movq	-256(%rbp), %rax	# __o, tmp377
	movq	%rdx, %rsi	# tmp376,
	movq	%rax, %rdi	# tmp377,
	call	obstack_free	#
.L139:
.LBE11:
	.loc 1 370 0 is_stmt 1
	movq	rtl_dump_file(%rip), %rax	# rtl_dump_file, rtl_dump_file.82
	testq	%rax, %rax	# rtl_dump_file.82
	je	.L140	#,
	.loc 1 371 0
	movq	rtl_dump_file(%rip), %rax	# rtl_dump_file, rtl_dump_file.83
	movq	%rax, %rsi	# rtl_dump_file.83,
	movl	$10, %edi	#,
	call	fputc	#
.L140:
	.loc 1 373 0
	movl	$1, %esi	#,
	movl	$0, %edi	#,
	call	count_or_remove_death_notes	#
	.loc 1 374 0
	movl	$5, %edx	#,
	movl	$0, %esi	#,
	movl	$0, %edi	#,
	call	update_life_info	#
	.loc 1 376 0
	addq	$408, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	regrename_optimize, .-regrename_optimize
	.type	do_replace, @function
do_replace:
.LFB6:
	.loc 1 382 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$40, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)	# chain, chain
	movl	%esi, -44(%rbp)	# reg, reg
	.loc 1 383 0
	jmp	.L142	#
.L144:
.LBB12:
	.loc 1 385 0
	movq	-40(%rbp), %rax	# chain, tmp69
	movq	24(%rax), %rax	# chain_1->loc, D.14356
	movq	(%rax), %rax	# *_3, D.14357
	movl	16(%rax), %eax	# _4->fld[1].rtuint, tmp70
	movl	%eax, -20(%rbp)	# tmp70, regno
	.loc 1 386 0
	movq	-40(%rbp), %rax	# chain, tmp71
	movq	24(%rax), %rbx	# chain_1->loc, D.14356
	movq	-40(%rbp), %rax	# chain, tmp72
	movq	24(%rax), %rax	# chain_1->loc, D.14356
	movq	(%rax), %rax	# *_7, D.14357
	movzbl	2(%rax), %eax	# _8->mode, D.14358
	movzbl	%al, %eax	# D.14358, D.14359
	movl	-44(%rbp), %edx	# reg, tmp73
	movl	%edx, %esi	# tmp73,
	movl	%eax, %edi	# D.14359,
	call	gen_raw_REG	#
	movq	%rax, (%rbx)	# D.14357, *_6
	.loc 1 387 0
	cmpl	$52, -20(%rbp)	#, regno
	jbe	.L143	#,
	.loc 1 388 0
	movq	-40(%rbp), %rax	# chain, tmp74
	movq	24(%rax), %rax	# chain_1->loc, D.14356
	movq	(%rax), %rax	# *_13, D.14357
	movl	-20(%rbp), %edx	# regno, tmp75
	movl	%edx, 16(%rax)	# tmp75, _14->fld[1].rtuint
.L143:
	.loc 1 389 0
	movq	-40(%rbp), %rax	# chain, tmp76
	movq	8(%rax), %rax	# chain_1->next_use, tmp77
	movq	%rax, -40(%rbp)	# tmp77, chain
.L142:
.LBE12:
	.loc 1 383 0 discriminator 1
	cmpq	$0, -40(%rbp)	#, chain
	jne	.L144	#,
	.loc 1 391 0
	addq	$40, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	do_replace, .-do_replace
	.local	open_chains
	.comm	open_chains,8,8
	.local	closed_chains
	.comm	closed_chains,8,8
	.section	.rodata
	.align 8
.LC37:
	.string	"Closing chain %s at insn %d (%s)\n"
	.align 8
.LC38:
	.string	"Discarding chain %s at insn %d (%s)\n"
	.text
	.type	scan_rtx_reg, @function
scan_rtx_reg:
.LFB7:
	.loc 1 405 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$184, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -168(%rbp)	# insn, insn
	movq	%rsi, -176(%rbp)	# loc, loc
	movl	%edx, -180(%rbp)	# class, class
	movl	%ecx, -184(%rbp)	# action, action
	movl	%r8d, -188(%rbp)	# type, type
	movl	%r9d, -192(%rbp)	# earlyclobber, earlyclobber
	.loc 1 407 0
	movq	-176(%rbp), %rax	# loc, tmp230
	movq	(%rax), %rax	# *loc_20(D), tmp231
	movq	%rax, -112(%rbp)	# tmp231, x
	.loc 1 408 0
	movq	-112(%rbp), %rax	# x, tmp232
	movzbl	2(%rax), %eax	# x_21->mode, D.14360
	movzbl	%al, %eax	# D.14360, tmp233
	movl	%eax, -152(%rbp)	# tmp233, mode
	.loc 1 409 0
	movq	-112(%rbp), %rax	# x, tmp234
	movl	8(%rax), %eax	# x_21->fld[0].rtuint, D.14361
	movl	%eax, -148(%rbp)	# D.14361, this_regno
	.loc 1 410 0
	cmpl	$7, -148(%rbp)	#, this_regno
	jle	.L146	#,
	.loc 1 410 0 is_stmt 0 discriminator 1
	cmpl	$15, -148(%rbp)	#, this_regno
	jle	.L147	#,
.L146:
	.loc 1 410 0 discriminator 2
	cmpl	$20, -148(%rbp)	#, this_regno
	jle	.L148	#,
	.loc 1 410 0 discriminator 1
	cmpl	$28, -148(%rbp)	#, this_regno
	jle	.L147	#,
.L148:
	.loc 1 410 0 discriminator 2
	cmpl	$44, -148(%rbp)	#, this_regno
	jle	.L149	#,
	.loc 1 410 0 discriminator 1
	cmpl	$52, -148(%rbp)	#, this_regno
	jle	.L147	#,
.L149:
	.loc 1 410 0 discriminator 2
	cmpl	$28, -148(%rbp)	#, this_regno
	jle	.L150	#,
	.loc 1 410 0 discriminator 1
	cmpl	$36, -148(%rbp)	#, this_regno
	jg	.L150	#,
.L147:
	movl	-152(%rbp), %eax	# mode, mode.86
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.14363
	cmpl	$5, %eax	#, D.14363
	je	.L151	#,
	.loc 1 410 0 discriminator 2
	movl	-152(%rbp), %eax	# mode, mode.87
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.14363
	cmpl	$6, %eax	#, D.14363
	jne	.L152	#,
.L151:
	.loc 1 410 0 discriminator 1
	movl	$2, %eax	#, iftmp.85
	jmp	.L153	#
.L152:
	movl	$1, %eax	#, iftmp.85
.L153:
	.loc 1 410 0 discriminator 3
	jmp	.L154	#
.L150:
	.loc 1 410 0 discriminator 2
	cmpl	$18, -152(%rbp)	#, mode
	jne	.L155	#,
	.loc 1 410 0 discriminator 1
	movl	target_flags(%rip), %eax	# target_flags, target_flags.90
	andl	$33554432, %eax	#, D.14362
	testl	%eax, %eax	# D.14362
	je	.L156	#,
	movl	$2, %eax	#, iftmp.89
	jmp	.L154	#
.L156:
	.loc 1 410 0 discriminator 2
	movl	$3, %eax	#, iftmp.89
	jmp	.L154	#
.L155:
	cmpl	$24, -152(%rbp)	#, mode
	jne	.L159	#,
	.loc 1 410 0 discriminator 1
	movl	target_flags(%rip), %eax	# target_flags, target_flags.93
	andl	$33554432, %eax	#, D.14362
	testl	%eax, %eax	# D.14362
	je	.L160	#,
	movl	$4, %eax	#, iftmp.92
	jmp	.L154	#
.L160:
	.loc 1 410 0 discriminator 2
	movl	$6, %eax	#, iftmp.92
	jmp	.L154	#
.L159:
	movl	-152(%rbp), %eax	# mode, mode.94
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.14360
	movzbl	%al, %edx	# D.14360, D.14362
	movl	target_flags(%rip), %eax	# target_flags, target_flags.96
	andl	$33554432, %eax	#, D.14362
	testl	%eax, %eax	# D.14362
	je	.L163	#,
	.loc 1 410 0 discriminator 1
	movl	$8, %eax	#, iftmp.95
	jmp	.L164	#
.L163:
	.loc 1 410 0 discriminator 2
	movl	$4, %eax	#, iftmp.95
.L164:
	.loc 1 410 0 discriminator 3
	addl	%edx, %eax	# D.14362, D.14362
	subl	$1, %eax	#, D.14362
	movl	target_flags(%rip), %edx	# target_flags, target_flags.98
	andl	$33554432, %edx	#, D.14362
	testl	%edx, %edx	# D.14362
	je	.L165	#,
	.loc 1 410 0 discriminator 1
	movl	$8, %ebx	#, iftmp.97
	jmp	.L166	#
.L165:
	.loc 1 410 0 discriminator 2
	movl	$4, %ebx	#, iftmp.97
.L166:
	.loc 1 410 0 discriminator 3
	cltd
	idivl	%ebx	# iftmp.97
.L154:
	movl	%eax, -144(%rbp)	# iftmp.84, this_nregs
	.loc 1 412 0 is_stmt 1 discriminator 3
	cmpl	$5, -184(%rbp)	#, action
	jne	.L167	#,
	.loc 1 414 0
	cmpl	$1, -188(%rbp)	#, type
	jne	.L168	#,
.LBB13:
.LBB14:
	.loc 1 417 0
	movq	$rename_obstack, -104(%rbp)	#, __h
.LBB15:
	movq	-104(%rbp), %rax	# __h, tmp240
	movq	%rax, -96(%rbp)	# tmp240, __o
	movl	$40, -140(%rbp)	#, __len
	movq	-96(%rbp), %rax	# __o, tmp241
	movq	32(%rax), %rax	# __o_63->chunk_limit, D.14364
	movq	%rax, %rdx	# D.14364, D.14365
	movq	-96(%rbp), %rax	# __o, tmp242
	movq	24(%rax), %rax	# __o_63->next_free, D.14364
	subq	%rax, %rdx	# D.14365, D.14365
	movl	-140(%rbp), %eax	# __len, tmp243
	cltq
	cmpq	%rax, %rdx	# D.14365, D.14365
	jge	.L169	#,
	.loc 1 417 0 is_stmt 0 discriminator 1
	movl	-140(%rbp), %edx	# __len, tmp244
	movq	-96(%rbp), %rax	# __o, tmp245
	movl	%edx, %esi	# tmp244,
	movq	%rax, %rdi	# tmp245,
	call	_obstack_newchunk	#
.L169:
	.loc 1 417 0 discriminator 2
	movq	-96(%rbp), %rax	# __o, tmp246
	movq	24(%rax), %rdx	# __o_63->next_free, D.14364
	movl	-140(%rbp), %eax	# __len, tmp247
	cltq
	addq	%rax, %rdx	# D.14366, D.14364
	movq	-96(%rbp), %rax	# __o, tmp248
	movq	%rdx, 24(%rax)	# D.14364, __o_63->next_free
.LBE15:
.LBB16:
	movq	-104(%rbp), %rax	# __h, tmp249
	movq	%rax, -88(%rbp)	# tmp249, __o1
	movq	-88(%rbp), %rax	# __o1, tmp250
	movq	16(%rax), %rax	# __o1_74->object_base, tmp251
	movq	%rax, -80(%rbp)	# tmp251, value
	movq	-88(%rbp), %rax	# __o1, tmp252
	movq	24(%rax), %rax	# __o1_74->next_free, D.14364
	cmpq	-80(%rbp), %rax	# value, D.14364
	jne	.L170	#,
	.loc 1 417 0 discriminator 1
	movq	-88(%rbp), %rax	# __o1, tmp253
	movzbl	80(%rax), %edx	# __o1_74->maybe_empty_object, tmp256
	orl	$2, %edx	#, tmp257
	movb	%dl, 80(%rax)	# tmp257, __o1_74->maybe_empty_object
.L170:
	.loc 1 417 0 discriminator 2
	movq	-88(%rbp), %rax	# __o1, tmp258
	movq	24(%rax), %rax	# __o1_74->next_free, D.14364
	movq	%rax, %rdx	# D.14364, D.14365
	movq	-88(%rbp), %rax	# __o1, tmp259
	movl	48(%rax), %eax	# __o1_74->alignment_mask, D.14362
	cltq
	addq	%rax, %rdx	# D.14365, D.14365
	movq	-88(%rbp), %rax	# __o1, tmp260
	movl	48(%rax), %eax	# __o1_74->alignment_mask, D.14362
	notl	%eax	# D.14362
	cltq
	andq	%rdx, %rax	# D.14365, D.14365
	movq	%rax, %rdx	# D.14365, D.14364
	movq	-88(%rbp), %rax	# __o1, tmp261
	movq	%rdx, 24(%rax)	# D.14364, __o1_74->next_free
	movq	-88(%rbp), %rax	# __o1, tmp262
	movq	24(%rax), %rax	# __o1_74->next_free, D.14364
	movq	%rax, %rdx	# D.14364, D.14365
	movq	-88(%rbp), %rax	# __o1, tmp263
	movq	8(%rax), %rax	# __o1_74->chunk, D.14367
	movq	%rdx, %rcx	# D.14365, D.14365
	subq	%rax, %rcx	# D.14365, D.14365
	movq	-88(%rbp), %rax	# __o1, tmp264
	movq	32(%rax), %rax	# __o1_74->chunk_limit, D.14364
	movq	%rax, %rdx	# D.14364, D.14365
	movq	-88(%rbp), %rax	# __o1, tmp265
	movq	8(%rax), %rax	# __o1_74->chunk, D.14367
	subq	%rax, %rdx	# D.14365, D.14365
	movq	%rdx, %rax	# D.14365, D.14365
	cmpq	%rax, %rcx	# D.14365, D.14365
	jle	.L171	#,
	.loc 1 417 0 discriminator 1
	movq	-88(%rbp), %rax	# __o1, tmp266
	movq	32(%rax), %rdx	# __o1_74->chunk_limit, D.14364
	movq	-88(%rbp), %rax	# __o1, tmp267
	movq	%rdx, 24(%rax)	# D.14364, __o1_74->next_free
.L171:
	.loc 1 417 0 discriminator 2
	movq	-88(%rbp), %rax	# __o1, tmp268
	movq	24(%rax), %rdx	# __o1_74->next_free, D.14364
	movq	-88(%rbp), %rax	# __o1, tmp269
	movq	%rdx, 16(%rax)	# D.14364, __o1_74->object_base
	movq	-80(%rbp), %rax	# value, D.14368
.LBE16:
.LBE14:
	.loc 1 416 0 is_stmt 1 discriminator 2
	movq	%rax, -72(%rbp)	# this.99, this
	.loc 1 418 0 discriminator 2
	movq	-72(%rbp), %rax	# this, tmp270
	movq	$0, 8(%rax)	#, this_101->next_use
	.loc 1 419 0 discriminator 2
	movq	open_chains(%rip), %rdx	# open_chains, open_chains.100
	movq	-72(%rbp), %rax	# this, tmp271
	movq	%rdx, (%rax)	# open_chains.100, this_101->next_chain
	.loc 1 420 0 discriminator 2
	movq	-72(%rbp), %rax	# this, tmp272
	movq	-176(%rbp), %rdx	# loc, tmp273
	movq	%rdx, 24(%rax)	# tmp273, this_101->loc
	.loc 1 421 0 discriminator 2
	movq	-72(%rbp), %rax	# this, tmp274
	movq	-168(%rbp), %rdx	# insn, tmp275
	movq	%rdx, 16(%rax)	# tmp275, this_101->insn
	.loc 1 422 0 discriminator 2
	movq	-72(%rbp), %rax	# this, tmp276
	movl	-180(%rbp), %edx	# class, tmp277
	movl	%edx, 32(%rax)	# tmp277, this_101->class
	.loc 1 423 0 discriminator 2
	movq	-72(%rbp), %rax	# this, tmp278
	movzbl	36(%rax), %edx	# this_101->need_caller_save_reg, tmp281
	andl	$-2, %edx	#, tmp282
	movb	%dl, 36(%rax)	# tmp282, this_101->need_caller_save_reg
	.loc 1 424 0 discriminator 2
	movl	-192(%rbp), %eax	# earlyclobber, tmp283
	andl	$1, %eax	#, D.14369
	movl	%eax, %edx	# D.14369, D.14369
	movq	-72(%rbp), %rax	# this, tmp284
	andl	$1, %edx	#, tmp286
	leal	(%rdx,%rdx), %ecx	#, tmp287
	movzbl	36(%rax), %edx	# this_101->earlyclobber, tmp288
	andl	$-3, %edx	#, tmp289
	orl	%ecx, %edx	# tmp287, tmp290
	movb	%dl, 36(%rax)	# tmp290, this_101->earlyclobber
	.loc 1 425 0 discriminator 2
	movq	-72(%rbp), %rax	# this, tmp291
	movq	%rax, open_chains(%rip)	# tmp291, open_chains
.LBE13:
	.loc 1 427 0 discriminator 2
	jmp	.L145	#
.L168:
	.loc 1 427 0 is_stmt 0
	jmp	.L145	#
.L167:
	.loc 1 430 0 is_stmt 1
	cmpl	$1, -188(%rbp)	#, type
	jne	.L173	#,
	.loc 1 430 0 is_stmt 0 discriminator 1
	cmpl	$2, -184(%rbp)	#, action
	jne	.L174	#,
.L173:
	.loc 1 431 0 is_stmt 1
	cmpl	$1, -188(%rbp)	#, type
	je	.L175	#,
	.loc 1 431 0 is_stmt 0 discriminator 1
	cmpl	$2, -184(%rbp)	#, action
	jne	.L175	#,
.L174:
	.loc 1 432 0 is_stmt 1
	jmp	.L145	#
.L175:
	.loc 1 434 0
	movq	$open_chains, -120(%rbp)	#, p
	jmp	.L176	#
.L216:
.LBB17:
	.loc 1 436 0
	movq	-120(%rbp), %rax	# p, tmp292
	movq	(%rax), %rax	# *p_2, tmp293
	movq	%rax, -64(%rbp)	# tmp293, this
	.loc 1 445 0
	movq	-64(%rbp), %rax	# this, tmp294
	movq	24(%rax), %rax	# this_110->loc, D.14371
	movq	(%rax), %rdx	# *_111, D.14372
	movq	global_rtl+8(%rip), %rax	# global_rtl, D.14372
	cmpq	%rax, %rdx	# D.14372, D.14372
	jne	.L177	#,
	.loc 1 446 0
	movq	-64(%rbp), %rax	# this, tmp295
	movq	%rax, -120(%rbp)	# tmp295, p
	jmp	.L176	#
.L177:
.LBB18:
	.loc 1 449 0
	movq	-64(%rbp), %rax	# this, tmp296
	movq	24(%rax), %rax	# this_110->loc, D.14371
	movq	(%rax), %rax	# *_115, D.14372
	movl	8(%rax), %eax	# _116->fld[0].rtuint, D.14361
	movl	%eax, -136(%rbp)	# D.14361, regno
	.loc 1 450 0
	cmpl	$7, -136(%rbp)	#, regno
	jle	.L178	#,
	.loc 1 450 0 is_stmt 0 discriminator 1
	cmpl	$15, -136(%rbp)	#, regno
	jle	.L179	#,
.L178:
	.loc 1 450 0 discriminator 2
	cmpl	$20, -136(%rbp)	#, regno
	jle	.L180	#,
	.loc 1 450 0 discriminator 1
	cmpl	$28, -136(%rbp)	#, regno
	jle	.L179	#,
.L180:
	.loc 1 450 0 discriminator 2
	cmpl	$44, -136(%rbp)	#, regno
	jle	.L181	#,
	.loc 1 450 0 discriminator 1
	cmpl	$52, -136(%rbp)	#, regno
	jle	.L179	#,
.L181:
	.loc 1 450 0 discriminator 2
	cmpl	$28, -136(%rbp)	#, regno
	jle	.L182	#,
	.loc 1 450 0 discriminator 1
	cmpl	$36, -136(%rbp)	#, regno
	jg	.L182	#,
.L179:
	movq	-64(%rbp), %rax	# this, tmp297
	movq	24(%rax), %rax	# this_110->loc, D.14371
	movq	(%rax), %rax	# *_154, D.14372
	movzbl	2(%rax), %eax	# _155->mode, D.14360
	movzbl	%al, %eax	# D.14360, D.14362
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.14363
	cmpl	$5, %eax	#, D.14363
	je	.L183	#,
	.loc 1 450 0 discriminator 2
	movq	-64(%rbp), %rax	# this, tmp299
	movq	24(%rax), %rax	# this_110->loc, D.14371
	movq	(%rax), %rax	# *_159, D.14372
	movzbl	2(%rax), %eax	# _160->mode, D.14360
	movzbl	%al, %eax	# D.14360, D.14362
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.14363
	cmpl	$6, %eax	#, D.14363
	jne	.L184	#,
.L183:
	.loc 1 450 0 discriminator 1
	movl	$2, %eax	#, iftmp.102
	jmp	.L185	#
.L184:
	movl	$1, %eax	#, iftmp.102
.L185:
	.loc 1 450 0 discriminator 3
	jmp	.L186	#
.L182:
	.loc 1 450 0 discriminator 2
	movq	-64(%rbp), %rax	# this, tmp301
	movq	24(%rax), %rax	# this_110->loc, D.14371
	movq	(%rax), %rax	# *_119, D.14372
	movzbl	2(%rax), %eax	# _120->mode, D.14360
	cmpb	$18, %al	#, D.14360
	jne	.L187	#,
	.loc 1 450 0 discriminator 1
	movl	target_flags(%rip), %eax	# target_flags, target_flags.105
	andl	$33554432, %eax	#, D.14362
	testl	%eax, %eax	# D.14362
	je	.L188	#,
	movl	$2, %eax	#, iftmp.104
	jmp	.L186	#
.L188:
	.loc 1 450 0 discriminator 2
	movl	$3, %eax	#, iftmp.104
	jmp	.L186	#
.L187:
	movq	-64(%rbp), %rax	# this, tmp302
	movq	24(%rax), %rax	# this_110->loc, D.14371
	movq	(%rax), %rax	# *_127, D.14372
	movzbl	2(%rax), %eax	# _128->mode, D.14360
	cmpb	$24, %al	#, D.14360
	jne	.L191	#,
	.loc 1 450 0 discriminator 1
	movl	target_flags(%rip), %eax	# target_flags, target_flags.108
	andl	$33554432, %eax	#, D.14362
	testl	%eax, %eax	# D.14362
	je	.L192	#,
	movl	$4, %eax	#, iftmp.107
	jmp	.L186	#
.L192:
	.loc 1 450 0 discriminator 2
	movl	$6, %eax	#, iftmp.107
	jmp	.L186	#
.L191:
	movq	-64(%rbp), %rax	# this, tmp303
	movq	24(%rax), %rax	# this_110->loc, D.14371
	movq	(%rax), %rax	# *_135, D.14372
	movzbl	2(%rax), %eax	# _136->mode, D.14360
	movzbl	%al, %eax	# D.14360, D.14362
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.14360
	movzbl	%al, %edx	# D.14360, D.14362
	movl	target_flags(%rip), %eax	# target_flags, target_flags.110
	andl	$33554432, %eax	#, D.14362
	testl	%eax, %eax	# D.14362
	je	.L195	#,
	.loc 1 450 0 discriminator 1
	movl	$8, %eax	#, iftmp.109
	jmp	.L196	#
.L195:
	.loc 1 450 0 discriminator 2
	movl	$4, %eax	#, iftmp.109
.L196:
	.loc 1 450 0 discriminator 3
	addl	%edx, %eax	# D.14362, D.14362
	subl	$1, %eax	#, D.14362
	movl	target_flags(%rip), %edx	# target_flags, target_flags.112
	andl	$33554432, %edx	#, D.14362
	testl	%edx, %edx	# D.14362
	je	.L197	#,
	.loc 1 450 0 discriminator 1
	movl	$8, %ebx	#, iftmp.111
	jmp	.L198	#
.L197:
	.loc 1 450 0 discriminator 2
	movl	$4, %ebx	#, iftmp.111
.L198:
	.loc 1 450 0 discriminator 3
	cltd
	idivl	%ebx	# iftmp.111
.L186:
	movl	%eax, -132(%rbp)	# iftmp.101, nregs
	.loc 1 451 0 is_stmt 1 discriminator 3
	movl	-136(%rbp), %eax	# regno, tmp307
	cmpl	-148(%rbp), %eax	# this_regno, tmp307
	jne	.L199	#,
	.loc 1 451 0 is_stmt 0 discriminator 1
	movl	-132(%rbp), %eax	# nregs, tmp308
	cmpl	-144(%rbp), %eax	# this_nregs, tmp308
	jne	.L199	#,
	.loc 1 451 0 discriminator 3
	movl	$1, %eax	#, iftmp.113
	jmp	.L200	#
.L199:
	.loc 1 451 0 discriminator 2
	movl	$0, %eax	#, iftmp.113
.L200:
	.loc 1 451 0 discriminator 4
	movl	%eax, -128(%rbp)	# iftmp.113, exact_match
	.loc 1 453 0 is_stmt 1 discriminator 4
	movl	-132(%rbp), %eax	# nregs, tmp309
	movl	-136(%rbp), %edx	# regno, tmp310
	addl	%edx, %eax	# tmp310, D.14362
	cmpl	-148(%rbp), %eax	# this_regno, D.14362
	jle	.L201	#,
	.loc 1 454 0
	movl	-144(%rbp), %eax	# this_nregs, tmp311
	movl	-148(%rbp), %edx	# this_regno, tmp312
	addl	%edx, %eax	# tmp312, D.14362
	cmpl	-136(%rbp), %eax	# regno, D.14362
	jg	.L202	#,
.L201:
	.loc 1 456 0
	movq	-64(%rbp), %rax	# this, tmp313
	movq	%rax, -120(%rbp)	# tmp313, p
	.loc 1 457 0
	jmp	.L176	#
.L202:
	.loc 1 460 0
	cmpl	$4, -184(%rbp)	#, action
	jne	.L203	#,
	.loc 1 462 0
	cmpl	$0, -128(%rbp)	#, exact_match
	jne	.L204	#,
	.loc 1 463 0
	movl	$__FUNCTION__.11047, %edx	#,
	movl	$463, %esi	#,
	movl	$.LC31, %edi	#,
	call	fancy_abort	#
.L204:
	.loc 1 469 0
	cmpl	$0, -180(%rbp)	#, class
	je	.L203	#,
.LBB19:
	.loc 1 472 0
	movq	$rename_obstack, -56(%rbp)	#, __h
.LBB20:
	movq	-56(%rbp), %rax	# __h, tmp314
	movq	%rax, -48(%rbp)	# tmp314, __o
	movl	$40, -124(%rbp)	#, __len
	movq	-48(%rbp), %rax	# __o, tmp315
	movq	32(%rax), %rax	# __o_174->chunk_limit, D.14364
	movq	%rax, %rdx	# D.14364, D.14365
	movq	-48(%rbp), %rax	# __o, tmp316
	movq	24(%rax), %rax	# __o_174->next_free, D.14364
	subq	%rax, %rdx	# D.14365, D.14365
	movl	-124(%rbp), %eax	# __len, tmp317
	cltq
	cmpq	%rax, %rdx	# D.14365, D.14365
	jge	.L205	#,
	.loc 1 472 0 is_stmt 0 discriminator 1
	movl	-124(%rbp), %edx	# __len, tmp318
	movq	-48(%rbp), %rax	# __o, tmp319
	movl	%edx, %esi	# tmp318,
	movq	%rax, %rdi	# tmp319,
	call	_obstack_newchunk	#
.L205:
	.loc 1 472 0 discriminator 2
	movq	-48(%rbp), %rax	# __o, tmp320
	movq	24(%rax), %rdx	# __o_174->next_free, D.14364
	movl	-124(%rbp), %eax	# __len, tmp321
	cltq
	addq	%rax, %rdx	# D.14366, D.14364
	movq	-48(%rbp), %rax	# __o, tmp322
	movq	%rdx, 24(%rax)	# D.14364, __o_174->next_free
.LBE20:
.LBB21:
	movq	-56(%rbp), %rax	# __h, tmp323
	movq	%rax, -40(%rbp)	# tmp323, __o1
	movq	-40(%rbp), %rax	# __o1, tmp324
	movq	16(%rax), %rax	# __o1_185->object_base, tmp325
	movq	%rax, -32(%rbp)	# tmp325, value
	movq	-40(%rbp), %rax	# __o1, tmp326
	movq	24(%rax), %rax	# __o1_185->next_free, D.14364
	cmpq	-32(%rbp), %rax	# value, D.14364
	jne	.L206	#,
	.loc 1 472 0 discriminator 1
	movq	-40(%rbp), %rax	# __o1, tmp327
	movzbl	80(%rax), %edx	# __o1_185->maybe_empty_object, tmp330
	orl	$2, %edx	#, tmp331
	movb	%dl, 80(%rax)	# tmp331, __o1_185->maybe_empty_object
.L206:
	.loc 1 472 0 discriminator 2
	movq	-40(%rbp), %rax	# __o1, tmp332
	movq	24(%rax), %rax	# __o1_185->next_free, D.14364
	movq	%rax, %rdx	# D.14364, D.14365
	movq	-40(%rbp), %rax	# __o1, tmp333
	movl	48(%rax), %eax	# __o1_185->alignment_mask, D.14362
	cltq
	addq	%rax, %rdx	# D.14365, D.14365
	movq	-40(%rbp), %rax	# __o1, tmp334
	movl	48(%rax), %eax	# __o1_185->alignment_mask, D.14362
	notl	%eax	# D.14362
	cltq
	andq	%rdx, %rax	# D.14365, D.14365
	movq	%rax, %rdx	# D.14365, D.14364
	movq	-40(%rbp), %rax	# __o1, tmp335
	movq	%rdx, 24(%rax)	# D.14364, __o1_185->next_free
	movq	-40(%rbp), %rax	# __o1, tmp336
	movq	24(%rax), %rax	# __o1_185->next_free, D.14364
	movq	%rax, %rdx	# D.14364, D.14365
	movq	-40(%rbp), %rax	# __o1, tmp337
	movq	8(%rax), %rax	# __o1_185->chunk, D.14367
	movq	%rdx, %rcx	# D.14365, D.14365
	subq	%rax, %rcx	# D.14365, D.14365
	movq	-40(%rbp), %rax	# __o1, tmp338
	movq	32(%rax), %rax	# __o1_185->chunk_limit, D.14364
	movq	%rax, %rdx	# D.14364, D.14365
	movq	-40(%rbp), %rax	# __o1, tmp339
	movq	8(%rax), %rax	# __o1_185->chunk, D.14367
	subq	%rax, %rdx	# D.14365, D.14365
	movq	%rdx, %rax	# D.14365, D.14365
	cmpq	%rax, %rcx	# D.14365, D.14365
	jle	.L207	#,
	.loc 1 472 0 discriminator 1
	movq	-40(%rbp), %rax	# __o1, tmp340
	movq	32(%rax), %rdx	# __o1_185->chunk_limit, D.14364
	movq	-40(%rbp), %rax	# __o1, tmp341
	movq	%rdx, 24(%rax)	# D.14364, __o1_185->next_free
.L207:
	.loc 1 472 0 discriminator 2
	movq	-40(%rbp), %rax	# __o1, tmp342
	movq	24(%rax), %rdx	# __o1_185->next_free, D.14364
	movq	-40(%rbp), %rax	# __o1, tmp343
	movq	%rdx, 16(%rax)	# D.14364, __o1_185->object_base
	movq	-32(%rbp), %rax	# value, D.14368
.LBE21:
.LBE19:
	.loc 1 471 0 is_stmt 1 discriminator 2
	movq	%rax, -64(%rbp)	# this.114, this
	.loc 1 473 0 discriminator 2
	movq	-64(%rbp), %rax	# this, tmp344
	movq	$0, 8(%rax)	#, this_212->next_use
	.loc 1 474 0 discriminator 2
	movq	-120(%rbp), %rax	# p, tmp345
	movq	(%rax), %rax	# *p_2, D.14370
	movq	(%rax), %rdx	# _213->next_chain, D.14370
	movq	-64(%rbp), %rax	# this, tmp346
	movq	%rdx, (%rax)	# D.14370, this_212->next_chain
	.loc 1 475 0 discriminator 2
	movq	-64(%rbp), %rax	# this, tmp347
	movq	-176(%rbp), %rdx	# loc, tmp348
	movq	%rdx, 24(%rax)	# tmp348, this_212->loc
	.loc 1 476 0 discriminator 2
	movq	-64(%rbp), %rax	# this, tmp349
	movq	-168(%rbp), %rdx	# insn, tmp350
	movq	%rdx, 16(%rax)	# tmp350, this_212->insn
	.loc 1 477 0 discriminator 2
	movq	-64(%rbp), %rax	# this, tmp351
	movl	-180(%rbp), %edx	# class, tmp352
	movl	%edx, 32(%rax)	# tmp352, this_212->class
	.loc 1 478 0 discriminator 2
	movq	-64(%rbp), %rax	# this, tmp353
	movzbl	36(%rax), %edx	# this_212->need_caller_save_reg, tmp356
	andl	$-2, %edx	#, tmp357
	movb	%dl, 36(%rax)	# tmp357, this_212->need_caller_save_reg
	.loc 1 479 0 discriminator 2
	jmp	.L208	#
.L209:
	.loc 1 480 0
	movq	-120(%rbp), %rax	# p, tmp358
	movq	(%rax), %rax	# *p_1, D.14370
	addq	$8, %rax	#, tmp359
	movq	%rax, -120(%rbp)	# tmp359, p
.L208:
	.loc 1 479 0 discriminator 1
	movq	-120(%rbp), %rax	# p, tmp360
	movq	(%rax), %rax	# *p_1, D.14370
	testq	%rax, %rax	# D.14370
	jne	.L209	#,
	.loc 1 481 0
	movq	-120(%rbp), %rax	# p, tmp361
	movq	-64(%rbp), %rdx	# this, tmp362
	movq	%rdx, (%rax)	# tmp362, *p_1
	.loc 1 482 0
	jmp	.L145	#
.L203:
	.loc 1 486 0
	cmpl	$1, -184(%rbp)	#, action
	jne	.L210	#,
	.loc 1 486 0 is_stmt 0 discriminator 1
	cmpl	$0, -128(%rbp)	#, exact_match
	jne	.L211	#,
.L210:
.LBB22:
	.loc 1 488 0 is_stmt 1
	movq	-64(%rbp), %rax	# this, tmp363
	movq	(%rax), %rax	# this_110->next_chain, tmp364
	movq	%rax, -24(%rbp)	# tmp364, next
	.loc 1 494 0
	cmpl	$3, -184(%rbp)	#, action
	je	.L212	#,
	.loc 1 494 0 is_stmt 0 discriminator 1
	cmpl	$2, -184(%rbp)	#, action
	jne	.L213	#,
.L212:
	.loc 1 495 0 is_stmt 1
	cmpl	$0, -128(%rbp)	#, exact_match
	je	.L213	#,
	.loc 1 497 0
	movq	closed_chains(%rip), %rdx	# closed_chains, closed_chains.115
	movq	-64(%rbp), %rax	# this, tmp365
	movq	%rdx, (%rax)	# closed_chains.115, this_110->next_chain
	.loc 1 498 0
	movq	-64(%rbp), %rax	# this, tmp366
	movq	%rax, closed_chains(%rip)	# tmp366, closed_chains
	.loc 1 499 0
	movq	rtl_dump_file(%rip), %rax	# rtl_dump_file, rtl_dump_file.116
	testq	%rax, %rax	# rtl_dump_file.116
	je	.L214	#,
	.loc 1 503 0
	movl	-184(%rbp), %eax	# action, action.117
	.loc 1 500 0
	cltq
	movq	scan_actions_name(,%rax,8), %rsi	# scan_actions_name, D.14373
	movq	-168(%rbp), %rax	# insn, tmp368
	movl	8(%rax), %ecx	# insn_103(D)->fld[0].rtint, D.14362
	.loc 1 502 0
	movq	-64(%rbp), %rax	# this, tmp369
	movq	24(%rax), %rax	# this_110->loc, D.14371
	movq	(%rax), %rax	# *_225, D.14372
	movl	8(%rax), %eax	# _226->fld[0].rtuint, D.14361
	.loc 1 500 0
	movl	%eax, %eax	# D.14361, tmp370
	movq	reg_names(,%rax,8), %rdx	# reg_names, D.14373
	movq	rtl_dump_file(%rip), %rax	# rtl_dump_file, rtl_dump_file.118
	movq	%rsi, %r8	# D.14373,
	movl	$.LC37, %esi	#,
	movq	%rax, %rdi	# rtl_dump_file.118,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 499 0
	jmp	.L215	#
.L214:
	.loc 1 499 0 is_stmt 0 discriminator 1
	jmp	.L215	#
.L213:
	.loc 1 507 0 is_stmt 1
	movq	rtl_dump_file(%rip), %rax	# rtl_dump_file, rtl_dump_file.119
	testq	%rax, %rax	# rtl_dump_file.119
	je	.L215	#,
	.loc 1 511 0
	movl	-184(%rbp), %eax	# action, action.120
	.loc 1 508 0
	cltq
	movq	scan_actions_name(,%rax,8), %rsi	# scan_actions_name, D.14373
	movq	-168(%rbp), %rax	# insn, tmp372
	movl	8(%rax), %ecx	# insn_103(D)->fld[0].rtint, D.14362
	.loc 1 510 0
	movq	-64(%rbp), %rax	# this, tmp373
	movq	24(%rax), %rax	# this_110->loc, D.14371
	movq	(%rax), %rax	# *_234, D.14372
	movl	8(%rax), %eax	# _235->fld[0].rtuint, D.14361
	.loc 1 508 0
	movl	%eax, %eax	# D.14361, tmp374
	movq	reg_names(,%rax,8), %rdx	# reg_names, D.14373
	movq	rtl_dump_file(%rip), %rax	# rtl_dump_file, rtl_dump_file.121
	movq	%rsi, %r8	# D.14373,
	movl	$.LC38, %esi	#,
	movq	%rax, %rdi	# rtl_dump_file.121,
	movl	$0, %eax	#,
	call	fprintf	#
.L215:
	.loc 1 513 0
	movq	-120(%rbp), %rax	# p, tmp375
	movq	-24(%rbp), %rdx	# next, tmp376
	movq	%rdx, (%rax)	# tmp376, *p_2
.LBE22:
	.loc 1 487 0
	jmp	.L176	#
.L211:
	.loc 1 516 0
	movq	-64(%rbp), %rax	# this, tmp377
	movq	%rax, -120(%rbp)	# tmp377, p
.L176:
.LBE18:
.LBE17:
	.loc 1 434 0 discriminator 1
	movq	-120(%rbp), %rax	# p, tmp378
	movq	(%rax), %rax	# *p_2, D.14370
	testq	%rax, %rax	# D.14370
	jne	.L216	#,
.L145:
	.loc 1 519 0
	addq	$184, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	scan_rtx_reg, .-scan_rtx_reg
	.type	scan_rtx_address, @function
scan_rtx_address:
.LFB8:
	.loc 1 531 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	addq	$-128, %rsp	#,
	movq	%rdi, -104(%rbp)	# insn, insn
	movq	%rsi, -112(%rbp)	# loc, loc
	movl	%edx, -116(%rbp)	# class, class
	movl	%ecx, -120(%rbp)	# action, action
	movl	%r8d, -124(%rbp)	# mode, mode
	.loc 1 532 0
	movq	-112(%rbp), %rax	# loc, tmp262
	movq	(%rax), %rax	# *loc_11(D), tmp263
	movq	%rax, -32(%rbp)	# tmp263, x
	.loc 1 533 0
	movq	-32(%rbp), %rax	# x, tmp264
	movzwl	(%rax), %eax	# x_12->code, D.14376
	movzwl	%ax, %eax	# D.14376, tmp265
	movl	%eax, -68(%rbp)	# tmp265, code
	.loc 1 537 0
	cmpl	$5, -120(%rbp)	#, action
	jne	.L218	#,
	.loc 1 538 0
	jmp	.L217	#
.L218:
	.loc 1 540 0
	movl	-68(%rbp), %eax	# code, tmp267
	subl	$61, %eax	#, tmp266
	cmpl	$40, %eax	#, tmp266
	ja	.L275	#,
	movl	%eax, %eax	# tmp266, tmp268
	movq	.L222(,%rax,8), %rax	#, tmp269
	jmp	*%rax	# tmp269
	.section	.rodata
	.align 8
	.align 4
.L222:
	.quad	.L221
	.quad	.L275
	.quad	.L275
	.quad	.L275
	.quad	.L275
	.quad	.L223
	.quad	.L275
	.quad	.L275
	.quad	.L275
	.quad	.L275
	.quad	.L275
	.quad	.L275
	.quad	.L275
	.quad	.L275
	.quad	.L224
	.quad	.L275
	.quad	.L275
	.quad	.L275
	.quad	.L275
	.quad	.L275
	.quad	.L275
	.quad	.L275
	.quad	.L275
	.quad	.L275
	.quad	.L275
	.quad	.L275
	.quad	.L275
	.quad	.L275
	.quad	.L275
	.quad	.L275
	.quad	.L275
	.quad	.L275
	.quad	.L275
	.quad	.L275
	.quad	.L275
	.quad	.L225
	.quad	.L225
	.quad	.L225
	.quad	.L225
	.quad	.L225
	.quad	.L225
	.text
.L224:
.LBB23:
	.loc 1 544 0
	movq	-32(%rbp), %rax	# x, tmp270
	movq	8(%rax), %rax	# x_12->fld[0].rtx, tmp271
	movq	%rax, -24(%rbp)	# tmp271, orig_op0
	.loc 1 545 0
	movq	-32(%rbp), %rax	# x, tmp272
	movq	16(%rax), %rax	# x_12->fld[1].rtx, tmp273
	movq	%rax, -16(%rbp)	# tmp273, orig_op1
	.loc 1 546 0
	movq	-24(%rbp), %rax	# orig_op0, tmp274
	movzwl	(%rax), %eax	# orig_op0_16->code, D.14376
	movzwl	%ax, %eax	# D.14376, tmp275
	movl	%eax, -80(%rbp)	# tmp275, code0
	.loc 1 547 0
	movq	-16(%rbp), %rax	# orig_op1, tmp276
	movzwl	(%rax), %eax	# orig_op1_17->code, D.14376
	movzwl	%ax, %eax	# D.14376, tmp277
	movl	%eax, -76(%rbp)	# tmp277, code1
	.loc 1 548 0
	movq	-24(%rbp), %rax	# orig_op0, tmp278
	movq	%rax, -64(%rbp)	# tmp278, op0
	.loc 1 549 0
	movq	-16(%rbp), %rax	# orig_op1, tmp279
	movq	%rax, -56(%rbp)	# tmp279, op1
	.loc 1 550 0
	movq	$0, -48(%rbp)	#, locI
	.loc 1 551 0
	movq	$0, -40(%rbp)	#, locB
	.loc 1 553 0
	movq	-64(%rbp), %rax	# op0, tmp280
	movzwl	(%rax), %eax	# op0_22->code, D.14376
	cmpw	$63, %ax	#, D.14376
	jne	.L226	#,
	.loc 1 555 0
	movq	-64(%rbp), %rax	# op0, tmp281
	movq	8(%rax), %rax	# op0_22->fld[0].rtx, tmp282
	movq	%rax, -64(%rbp)	# tmp282, op0
	.loc 1 556 0
	movq	-64(%rbp), %rax	# op0, tmp283
	movzwl	(%rax), %eax	# op0_27->code, D.14376
	movzwl	%ax, %eax	# D.14376, tmp284
	movl	%eax, -80(%rbp)	# tmp284, code0
.L226:
	.loc 1 559 0
	movq	-56(%rbp), %rax	# op1, tmp285
	movzwl	(%rax), %eax	# op1_23->code, D.14376
	cmpw	$63, %ax	#, D.14376
	jne	.L227	#,
	.loc 1 561 0
	movq	-56(%rbp), %rax	# op1, tmp286
	movq	8(%rax), %rax	# op1_23->fld[0].rtx, tmp287
	movq	%rax, -56(%rbp)	# tmp287, op1
	.loc 1 562 0
	movq	-56(%rbp), %rax	# op1, tmp288
	movzwl	(%rax), %eax	# op1_31->code, D.14376
	movzwl	%ax, %eax	# D.14376, tmp289
	movl	%eax, -76(%rbp)	# tmp289, code1
.L227:
	.loc 1 565 0
	cmpl	$78, -80(%rbp)	#, code0
	je	.L228	#,
	.loc 1 565 0 is_stmt 0 discriminator 1
	cmpl	$120, -80(%rbp)	#, code0
	je	.L228	#,
	cmpl	$122, -80(%rbp)	#, code0
	je	.L228	#,
	.loc 1 566 0 is_stmt 1
	cmpl	$121, -80(%rbp)	#, code0
	je	.L228	#,
	.loc 1 566 0 is_stmt 0 discriminator 1
	cmpl	$66, -76(%rbp)	#, code1
	jne	.L229	#,
.L228:
	.loc 1 568 0 is_stmt 1
	movq	-32(%rbp), %rax	# x, tmp293
	addq	$8, %rax	#, tmp292
	movq	%rax, -48(%rbp)	# tmp292, locI
	.loc 1 569 0
	movq	-32(%rbp), %rax	# x, tmp297
	addq	$16, %rax	#, tmp296
	movq	%rax, -40(%rbp)	# tmp296, locB
	jmp	.L230	#
.L229:
	.loc 1 571 0
	cmpl	$78, -76(%rbp)	#, code1
	je	.L231	#,
	.loc 1 571 0 is_stmt 0 discriminator 1
	cmpl	$120, -76(%rbp)	#, code1
	je	.L231	#,
	cmpl	$122, -76(%rbp)	#, code1
	je	.L231	#,
	.loc 1 572 0 is_stmt 1
	cmpl	$121, -76(%rbp)	#, code1
	je	.L231	#,
	.loc 1 572 0 is_stmt 0 discriminator 1
	cmpl	$66, -80(%rbp)	#, code0
	jne	.L232	#,
.L231:
	.loc 1 574 0 is_stmt 1
	movq	-32(%rbp), %rax	# x, tmp301
	addq	$16, %rax	#, tmp300
	movq	%rax, -48(%rbp)	# tmp300, locI
	.loc 1 575 0
	movq	-32(%rbp), %rax	# x, tmp305
	addq	$8, %rax	#, tmp304
	movq	%rax, -40(%rbp)	# tmp304, locB
	jmp	.L230	#
.L232:
	.loc 1 577 0
	cmpl	$54, -80(%rbp)	#, code0
	je	.L233	#,
	.loc 1 577 0 is_stmt 0 discriminator 1
	cmpl	$58, -80(%rbp)	#, code0
	je	.L233	#,
	.loc 1 578 0 is_stmt 1
	cmpl	$68, -80(%rbp)	#, code0
	je	.L233	#,
	.loc 1 578 0 is_stmt 0 discriminator 1
	cmpl	$67, -80(%rbp)	#, code0
	jne	.L234	#,
.L233:
	.loc 1 579 0 is_stmt 1
	movq	-32(%rbp), %rax	# x, tmp309
	addq	$16, %rax	#, tmp308
	movq	%rax, -40(%rbp)	# tmp308, locB
	jmp	.L230	#
.L234:
	.loc 1 580 0
	cmpl	$54, -76(%rbp)	#, code1
	je	.L235	#,
	.loc 1 580 0 is_stmt 0 discriminator 1
	cmpl	$58, -76(%rbp)	#, code1
	je	.L235	#,
	.loc 1 581 0 is_stmt 1
	cmpl	$68, -76(%rbp)	#, code1
	je	.L235	#,
	.loc 1 581 0 is_stmt 0 discriminator 1
	cmpl	$67, -76(%rbp)	#, code1
	jne	.L236	#,
.L235:
	.loc 1 582 0 is_stmt 1
	movq	-32(%rbp), %rax	# x, tmp313
	addq	$8, %rax	#, tmp312
	movq	%rax, -40(%rbp)	# tmp312, locB
	jmp	.L230	#
.L236:
	.loc 1 583 0
	cmpl	$61, -80(%rbp)	#, code0
	jne	.L237	#,
	.loc 1 583 0 is_stmt 0 discriminator 1
	cmpl	$61, -76(%rbp)	#, code1
	jne	.L237	#,
.LBB24:
	.loc 1 587 0 is_stmt 1
	movq	-64(%rbp), %rax	# op0, tmp314
	movl	8(%rax), %eax	# op0_6->fld[0].rtuint, D.14377
	cmpl	$6, %eax	#, D.14377
	jbe	.L238	#,
	.loc 1 587 0 is_stmt 0 discriminator 1
	movq	-64(%rbp), %rax	# op0, tmp315
	movl	8(%rax), %eax	# op0_6->fld[0].rtuint, D.14377
	cmpl	$36, %eax	#, D.14377
	jbe	.L239	#,
	movq	-64(%rbp), %rax	# op0, tmp316
	movl	8(%rax), %eax	# op0_6->fld[0].rtuint, D.14377
	cmpl	$44, %eax	#, D.14377
	jbe	.L238	#,
.L239:
	.loc 1 587 0 discriminator 2
	movq	reg_renumber(%rip), %rdx	# reg_renumber, reg_renumber.122
	movq	-64(%rbp), %rax	# op0, tmp317
	movl	8(%rax), %eax	# op0_6->fld[0].rtuint, D.14377
	movl	%eax, %eax	# D.14377, D.14378
	addq	%rax, %rax	# D.14378
	addq	%rdx, %rax	# reg_renumber.122, D.14379
	movzwl	(%rax), %eax	# *_41, D.14380
	cmpw	$36, %ax	#, D.14376
	jbe	.L240	#,
	.loc 1 587 0 discriminator 1
	movq	reg_renumber(%rip), %rdx	# reg_renumber, reg_renumber.123
	movq	-64(%rbp), %rax	# op0, tmp318
	movl	8(%rax), %eax	# op0_6->fld[0].rtuint, D.14377
	movl	%eax, %eax	# D.14377, D.14378
	addq	%rax, %rax	# D.14378
	addq	%rdx, %rax	# reg_renumber.123, D.14379
	movzwl	(%rax), %eax	# *_48, D.14380
	cmpw	$44, %ax	#, D.14376
	jbe	.L238	#,
.L240:
	.loc 1 587 0 discriminator 2
	movq	reg_renumber(%rip), %rdx	# reg_renumber, reg_renumber.124
	movq	-64(%rbp), %rax	# op0, tmp319
	movl	8(%rax), %eax	# op0_6->fld[0].rtuint, D.14377
	movl	%eax, %eax	# D.14377, D.14378
	addq	%rax, %rax	# D.14378
	addq	%rdx, %rax	# reg_renumber.124, D.14379
	movzwl	(%rax), %eax	# *_55, D.14380
	cmpw	$6, %ax	#, D.14376
	ja	.L241	#,
.L238:
	.loc 1 588 0 is_stmt 1
	movq	-56(%rbp), %rax	# op1, tmp320
	movl	8(%rax), %eax	# op1_7->fld[0].rtuint, D.14377
	cmpl	$7, %eax	#, D.14377
	jbe	.L242	#,
	.loc 1 588 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# op1, tmp321
	movl	8(%rax), %eax	# op1_7->fld[0].rtuint, D.14377
	cmpl	$16, %eax	#, D.14377
	je	.L242	#,
	movq	-56(%rbp), %rax	# op1, tmp322
	movl	8(%rax), %eax	# op1_7->fld[0].rtuint, D.14377
	cmpl	$20, %eax	#, D.14377
	je	.L242	#,
	movq	-56(%rbp), %rax	# op1, tmp323
	movl	8(%rax), %eax	# op1_7->fld[0].rtuint, D.14377
	cmpl	$36, %eax	#, D.14377
	jbe	.L243	#,
	movq	-56(%rbp), %rax	# op1, tmp324
	movl	8(%rax), %eax	# op1_7->fld[0].rtuint, D.14377
	cmpl	$44, %eax	#, D.14377
	jbe	.L242	#,
.L243:
	.loc 1 588 0 discriminator 2
	movq	reg_renumber(%rip), %rdx	# reg_renumber, reg_renumber.125
	movq	-56(%rbp), %rax	# op1, tmp325
	movl	8(%rax), %eax	# op1_7->fld[0].rtuint, D.14377
	movl	%eax, %eax	# D.14377, D.14378
	addq	%rax, %rax	# D.14378
	addq	%rdx, %rax	# reg_renumber.125, D.14379
	movzwl	(%rax), %eax	# *_67, D.14380
	cmpw	$36, %ax	#, D.14376
	jbe	.L244	#,
	.loc 1 588 0 discriminator 1
	movq	reg_renumber(%rip), %rdx	# reg_renumber, reg_renumber.126
	movq	-56(%rbp), %rax	# op1, tmp326
	movl	8(%rax), %eax	# op1_7->fld[0].rtuint, D.14377
	movl	%eax, %eax	# D.14377, D.14378
	addq	%rax, %rax	# D.14378
	addq	%rdx, %rax	# reg_renumber.126, D.14379
	movzwl	(%rax), %eax	# *_74, D.14380
	cmpw	$44, %ax	#, D.14376
	jbe	.L242	#,
.L244:
	.loc 1 588 0 discriminator 2
	movq	reg_renumber(%rip), %rdx	# reg_renumber, reg_renumber.127
	movq	-56(%rbp), %rax	# op1, tmp327
	movl	8(%rax), %eax	# op1_7->fld[0].rtuint, D.14377
	movl	%eax, %eax	# D.14377, D.14378
	addq	%rax, %rax	# D.14378
	addq	%rdx, %rax	# reg_renumber.127, D.14379
	movzwl	(%rax), %eax	# *_81, D.14380
	cmpw	$7, %ax	#, D.14376
	ja	.L241	#,
.L242:
	.loc 1 589 0 is_stmt 1
	movl	$0, -72(%rbp)	#, index_op
	jmp	.L245	#
.L241:
	.loc 1 590 0
	movq	-56(%rbp), %rax	# op1, tmp328
	movl	8(%rax), %eax	# op1_7->fld[0].rtuint, D.14377
	cmpl	$6, %eax	#, D.14377
	jbe	.L246	#,
	.loc 1 590 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# op1, tmp329
	movl	8(%rax), %eax	# op1_7->fld[0].rtuint, D.14377
	cmpl	$36, %eax	#, D.14377
	jbe	.L247	#,
	movq	-56(%rbp), %rax	# op1, tmp330
	movl	8(%rax), %eax	# op1_7->fld[0].rtuint, D.14377
	cmpl	$44, %eax	#, D.14377
	jbe	.L246	#,
.L247:
	.loc 1 590 0 discriminator 2
	movq	reg_renumber(%rip), %rdx	# reg_renumber, reg_renumber.128
	movq	-56(%rbp), %rax	# op1, tmp331
	movl	8(%rax), %eax	# op1_7->fld[0].rtuint, D.14377
	movl	%eax, %eax	# D.14377, D.14378
	addq	%rax, %rax	# D.14378
	addq	%rdx, %rax	# reg_renumber.128, D.14379
	movzwl	(%rax), %eax	# *_92, D.14380
	cmpw	$36, %ax	#, D.14376
	jbe	.L248	#,
	.loc 1 590 0 discriminator 1
	movq	reg_renumber(%rip), %rdx	# reg_renumber, reg_renumber.129
	movq	-56(%rbp), %rax	# op1, tmp332
	movl	8(%rax), %eax	# op1_7->fld[0].rtuint, D.14377
	movl	%eax, %eax	# D.14377, D.14378
	addq	%rax, %rax	# D.14378
	addq	%rdx, %rax	# reg_renumber.129, D.14379
	movzwl	(%rax), %eax	# *_99, D.14380
	cmpw	$44, %ax	#, D.14376
	jbe	.L246	#,
.L248:
	.loc 1 590 0 discriminator 2
	movq	reg_renumber(%rip), %rdx	# reg_renumber, reg_renumber.130
	movq	-56(%rbp), %rax	# op1, tmp333
	movl	8(%rax), %eax	# op1_7->fld[0].rtuint, D.14377
	movl	%eax, %eax	# D.14377, D.14378
	addq	%rax, %rax	# D.14378
	addq	%rdx, %rax	# reg_renumber.130, D.14379
	movzwl	(%rax), %eax	# *_106, D.14380
	cmpw	$6, %ax	#, D.14376
	ja	.L249	#,
.L246:
	.loc 1 591 0 is_stmt 1
	movq	-64(%rbp), %rax	# op0, tmp334
	movl	8(%rax), %eax	# op0_6->fld[0].rtuint, D.14377
	cmpl	$7, %eax	#, D.14377
	jbe	.L250	#,
	.loc 1 591 0 is_stmt 0 discriminator 1
	movq	-64(%rbp), %rax	# op0, tmp335
	movl	8(%rax), %eax	# op0_6->fld[0].rtuint, D.14377
	cmpl	$16, %eax	#, D.14377
	je	.L250	#,
	movq	-64(%rbp), %rax	# op0, tmp336
	movl	8(%rax), %eax	# op0_6->fld[0].rtuint, D.14377
	cmpl	$20, %eax	#, D.14377
	je	.L250	#,
	movq	-64(%rbp), %rax	# op0, tmp337
	movl	8(%rax), %eax	# op0_6->fld[0].rtuint, D.14377
	cmpl	$36, %eax	#, D.14377
	jbe	.L251	#,
	movq	-64(%rbp), %rax	# op0, tmp338
	movl	8(%rax), %eax	# op0_6->fld[0].rtuint, D.14377
	cmpl	$44, %eax	#, D.14377
	jbe	.L250	#,
.L251:
	.loc 1 591 0 discriminator 2
	movq	reg_renumber(%rip), %rdx	# reg_renumber, reg_renumber.131
	movq	-64(%rbp), %rax	# op0, tmp339
	movl	8(%rax), %eax	# op0_6->fld[0].rtuint, D.14377
	movl	%eax, %eax	# D.14377, D.14378
	addq	%rax, %rax	# D.14378
	addq	%rdx, %rax	# reg_renumber.131, D.14379
	movzwl	(%rax), %eax	# *_118, D.14380
	cmpw	$36, %ax	#, D.14376
	jbe	.L252	#,
	.loc 1 591 0 discriminator 1
	movq	reg_renumber(%rip), %rdx	# reg_renumber, reg_renumber.132
	movq	-64(%rbp), %rax	# op0, tmp340
	movl	8(%rax), %eax	# op0_6->fld[0].rtuint, D.14377
	movl	%eax, %eax	# D.14377, D.14378
	addq	%rax, %rax	# D.14378
	addq	%rdx, %rax	# reg_renumber.132, D.14379
	movzwl	(%rax), %eax	# *_125, D.14380
	cmpw	$44, %ax	#, D.14376
	jbe	.L250	#,
.L252:
	.loc 1 591 0 discriminator 2
	movq	reg_renumber(%rip), %rdx	# reg_renumber, reg_renumber.133
	movq	-64(%rbp), %rax	# op0, tmp341
	movl	8(%rax), %eax	# op0_6->fld[0].rtuint, D.14377
	movl	%eax, %eax	# D.14377, D.14378
	addq	%rax, %rax	# D.14378
	addq	%rdx, %rax	# reg_renumber.133, D.14379
	movzwl	(%rax), %eax	# *_132, D.14380
	cmpw	$7, %ax	#, D.14376
	ja	.L249	#,
.L250:
	.loc 1 592 0 is_stmt 1
	movl	$1, -72(%rbp)	#, index_op
	jmp	.L245	#
.L249:
	.loc 1 593 0
	movq	-56(%rbp), %rax	# op1, tmp342
	movl	8(%rax), %eax	# op1_7->fld[0].rtuint, D.14377
	cmpl	$7, %eax	#, D.14377
	jbe	.L253	#,
	.loc 1 593 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# op1, tmp343
	movl	8(%rax), %eax	# op1_7->fld[0].rtuint, D.14377
	cmpl	$16, %eax	#, D.14377
	je	.L253	#,
	movq	-56(%rbp), %rax	# op1, tmp344
	movl	8(%rax), %eax	# op1_7->fld[0].rtuint, D.14377
	cmpl	$20, %eax	#, D.14377
	je	.L253	#,
	movq	-56(%rbp), %rax	# op1, tmp345
	movl	8(%rax), %eax	# op1_7->fld[0].rtuint, D.14377
	cmpl	$36, %eax	#, D.14377
	jbe	.L254	#,
	movq	-56(%rbp), %rax	# op1, tmp346
	movl	8(%rax), %eax	# op1_7->fld[0].rtuint, D.14377
	cmpl	$44, %eax	#, D.14377
	jbe	.L253	#,
.L254:
	.loc 1 593 0 discriminator 2
	movq	reg_renumber(%rip), %rdx	# reg_renumber, reg_renumber.134
	movq	-56(%rbp), %rax	# op1, tmp347
	movl	8(%rax), %eax	# op1_7->fld[0].rtuint, D.14377
	movl	%eax, %eax	# D.14377, D.14378
	addq	%rax, %rax	# D.14378
	addq	%rdx, %rax	# reg_renumber.134, D.14379
	movzwl	(%rax), %eax	# *_145, D.14380
	cmpw	$36, %ax	#, D.14376
	jbe	.L255	#,
	.loc 1 593 0 discriminator 1
	movq	reg_renumber(%rip), %rdx	# reg_renumber, reg_renumber.135
	movq	-56(%rbp), %rax	# op1, tmp348
	movl	8(%rax), %eax	# op1_7->fld[0].rtuint, D.14377
	movl	%eax, %eax	# D.14377, D.14378
	addq	%rax, %rax	# D.14378
	addq	%rdx, %rax	# reg_renumber.135, D.14379
	movzwl	(%rax), %eax	# *_152, D.14380
	cmpw	$44, %ax	#, D.14376
	jbe	.L253	#,
.L255:
	.loc 1 593 0 discriminator 2
	movq	reg_renumber(%rip), %rdx	# reg_renumber, reg_renumber.136
	movq	-56(%rbp), %rax	# op1, tmp349
	movl	8(%rax), %eax	# op1_7->fld[0].rtuint, D.14377
	movl	%eax, %eax	# D.14377, D.14378
	addq	%rax, %rax	# D.14378
	addq	%rdx, %rax	# reg_renumber.136, D.14379
	movzwl	(%rax), %eax	# *_159, D.14380
	cmpw	$7, %ax	#, D.14376
	ja	.L256	#,
.L253:
	.loc 1 594 0 is_stmt 1
	movl	$0, -72(%rbp)	#, index_op
	jmp	.L245	#
.L256:
	.loc 1 595 0
	movq	-64(%rbp), %rax	# op0, tmp350
	movl	8(%rax), %eax	# op0_6->fld[0].rtuint, D.14377
	cmpl	$7, %eax	#, D.14377
	jbe	.L257	#,
	.loc 1 595 0 is_stmt 0 discriminator 1
	movq	-64(%rbp), %rax	# op0, tmp351
	movl	8(%rax), %eax	# op0_6->fld[0].rtuint, D.14377
	cmpl	$16, %eax	#, D.14377
	je	.L257	#,
	movq	-64(%rbp), %rax	# op0, tmp352
	movl	8(%rax), %eax	# op0_6->fld[0].rtuint, D.14377
	cmpl	$20, %eax	#, D.14377
	je	.L257	#,
	movq	-64(%rbp), %rax	# op0, tmp353
	movl	8(%rax), %eax	# op0_6->fld[0].rtuint, D.14377
	cmpl	$36, %eax	#, D.14377
	jbe	.L258	#,
	movq	-64(%rbp), %rax	# op0, tmp354
	movl	8(%rax), %eax	# op0_6->fld[0].rtuint, D.14377
	cmpl	$44, %eax	#, D.14377
	jbe	.L257	#,
.L258:
	.loc 1 595 0 discriminator 2
	movq	reg_renumber(%rip), %rdx	# reg_renumber, reg_renumber.137
	movq	-64(%rbp), %rax	# op0, tmp355
	movl	8(%rax), %eax	# op0_6->fld[0].rtuint, D.14377
	movl	%eax, %eax	# D.14377, D.14378
	addq	%rax, %rax	# D.14378
	addq	%rdx, %rax	# reg_renumber.137, D.14379
	movzwl	(%rax), %eax	# *_171, D.14380
	cmpw	$36, %ax	#, D.14376
	jbe	.L259	#,
	.loc 1 595 0 discriminator 1
	movq	reg_renumber(%rip), %rdx	# reg_renumber, reg_renumber.138
	movq	-64(%rbp), %rax	# op0, tmp356
	movl	8(%rax), %eax	# op0_6->fld[0].rtuint, D.14377
	movl	%eax, %eax	# D.14377, D.14378
	addq	%rax, %rax	# D.14378
	addq	%rdx, %rax	# reg_renumber.138, D.14379
	movzwl	(%rax), %eax	# *_178, D.14380
	cmpw	$44, %ax	#, D.14376
	jbe	.L257	#,
.L259:
	.loc 1 595 0 discriminator 2
	movq	reg_renumber(%rip), %rdx	# reg_renumber, reg_renumber.139
	movq	-64(%rbp), %rax	# op0, tmp357
	movl	8(%rax), %eax	# op0_6->fld[0].rtuint, D.14377
	movl	%eax, %eax	# D.14377, D.14378
	addq	%rax, %rax	# D.14378
	addq	%rdx, %rax	# reg_renumber.139, D.14379
	movzwl	(%rax), %eax	# *_185, D.14380
	cmpw	$7, %ax	#, D.14376
	ja	.L260	#,
.L257:
	.loc 1 596 0 is_stmt 1
	movl	$1, -72(%rbp)	#, index_op
	jmp	.L245	#
.L260:
	.loc 1 597 0
	movq	-56(%rbp), %rax	# op1, tmp358
	movl	8(%rax), %eax	# op1_7->fld[0].rtuint, D.14377
	cmpl	$6, %eax	#, D.14377
	jbe	.L261	#,
	.loc 1 597 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# op1, tmp359
	movl	8(%rax), %eax	# op1_7->fld[0].rtuint, D.14377
	cmpl	$36, %eax	#, D.14377
	jbe	.L262	#,
	movq	-56(%rbp), %rax	# op1, tmp360
	movl	8(%rax), %eax	# op1_7->fld[0].rtuint, D.14377
	cmpl	$44, %eax	#, D.14377
	jbe	.L261	#,
.L262:
	.loc 1 597 0 discriminator 2
	movq	reg_renumber(%rip), %rdx	# reg_renumber, reg_renumber.140
	movq	-56(%rbp), %rax	# op1, tmp361
	movl	8(%rax), %eax	# op1_7->fld[0].rtuint, D.14377
	movl	%eax, %eax	# D.14377, D.14378
	addq	%rax, %rax	# D.14378
	addq	%rdx, %rax	# reg_renumber.140, D.14379
	movzwl	(%rax), %eax	# *_195, D.14380
	cmpw	$36, %ax	#, D.14376
	jbe	.L263	#,
	.loc 1 597 0 discriminator 1
	movq	reg_renumber(%rip), %rdx	# reg_renumber, reg_renumber.141
	movq	-56(%rbp), %rax	# op1, tmp362
	movl	8(%rax), %eax	# op1_7->fld[0].rtuint, D.14377
	movl	%eax, %eax	# D.14377, D.14378
	addq	%rax, %rax	# D.14378
	addq	%rdx, %rax	# reg_renumber.141, D.14379
	movzwl	(%rax), %eax	# *_202, D.14380
	cmpw	$44, %ax	#, D.14376
	jbe	.L261	#,
.L263:
	.loc 1 597 0 discriminator 2
	movq	reg_renumber(%rip), %rdx	# reg_renumber, reg_renumber.142
	movq	-56(%rbp), %rax	# op1, tmp363
	movl	8(%rax), %eax	# op1_7->fld[0].rtuint, D.14377
	movl	%eax, %eax	# D.14377, D.14378
	addq	%rax, %rax	# D.14378
	addq	%rdx, %rax	# reg_renumber.142, D.14379
	movzwl	(%rax), %eax	# *_209, D.14380
	cmpw	$6, %ax	#, D.14376
	ja	.L264	#,
.L261:
	.loc 1 598 0 is_stmt 1
	movl	$1, -72(%rbp)	#, index_op
	jmp	.L245	#
.L264:
	.loc 1 600 0
	movl	$0, -72(%rbp)	#, index_op
.L245:
	.loc 1 602 0
	movl	-72(%rbp), %eax	# index_op, tmp365
	cltq
	leaq	0(,%rax,8), %rdx	#, tmp366
	movq	-32(%rbp), %rax	# x, tmp368
	addq	%rdx, %rax	# tmp366, tmp367
	addq	$8, %rax	#, tmp369
	movq	%rax, -48(%rbp)	# tmp369, locI
	.loc 1 603 0
	cmpl	$0, -72(%rbp)	#, index_op
	sete	%al	#, D.14381
	movzbl	%al, %eax	# D.14381, D.14382
	cltq
	leaq	0(,%rax,8), %rdx	#, tmp371
	movq	-32(%rbp), %rax	# x, tmp373
	addq	%rdx, %rax	# tmp371, tmp372
	addq	$8, %rax	#, tmp374
	movq	%rax, -40(%rbp)	# tmp374, locB
.LBE24:
	.loc 1 584 0
	jmp	.L230	#
.L237:
	.loc 1 605 0
	cmpl	$61, -80(%rbp)	#, code0
	jne	.L265	#,
	.loc 1 607 0
	movq	-32(%rbp), %rax	# x, tmp378
	addq	$8, %rax	#, tmp377
	movq	%rax, -48(%rbp)	# tmp377, locI
	.loc 1 608 0
	movq	-32(%rbp), %rax	# x, tmp382
	addq	$16, %rax	#, tmp381
	movq	%rax, -40(%rbp)	# tmp381, locB
	jmp	.L230	#
.L265:
	.loc 1 610 0
	cmpl	$61, -76(%rbp)	#, code1
	jne	.L230	#,
	.loc 1 612 0
	movq	-32(%rbp), %rax	# x, tmp386
	addq	$16, %rax	#, tmp385
	movq	%rax, -48(%rbp)	# tmp385, locI
	.loc 1 613 0
	movq	-32(%rbp), %rax	# x, tmp390
	addq	$8, %rax	#, tmp389
	movq	%rax, -40(%rbp)	# tmp389, locB
.L230:
	.loc 1 616 0
	cmpq	$0, -48(%rbp)	#, locI
	je	.L266	#,
	.loc 1 617 0
	movl	-124(%rbp), %ecx	# mode, tmp391
	movl	-120(%rbp), %edx	# action, tmp392
	movq	-48(%rbp), %rsi	# locI, tmp393
	movq	-104(%rbp), %rax	# insn, tmp394
	movl	%ecx, %r8d	# tmp391,
	movl	%edx, %ecx	# tmp392,
	movl	$10, %edx	#,
	movq	%rax, %rdi	# tmp394,
	call	scan_rtx_address	#
.L266:
	.loc 1 618 0
	cmpq	$0, -40(%rbp)	#, locB
	je	.L267	#,
	.loc 1 619 0
	movl	-124(%rbp), %ecx	# mode, tmp395
	movl	-120(%rbp), %edx	# action, tmp396
	movq	-40(%rbp), %rsi	# locB, tmp397
	movq	-104(%rbp), %rax	# insn, tmp398
	movl	%ecx, %r8d	# tmp395,
	movl	%edx, %ecx	# tmp396,
	movl	$12, %edx	#,
	movq	%rax, %rdi	# tmp398,
	call	scan_rtx_address	#
	.loc 1 620 0
	jmp	.L217	#
.L267:
	jmp	.L217	#
.L225:
.LBE23:
	.loc 1 632 0
	movl	$0, -120(%rbp)	#, action
	.loc 1 634 0
	jmp	.L268	#
.L223:
	.loc 1 639 0
	movq	-32(%rbp), %rax	# x, tmp399
	movzbl	2(%rax), %eax	# x_12->mode, D.14383
	.loc 1 637 0
	movzbl	%al, %ecx	# D.14383, D.14384
	movq	-32(%rbp), %rax	# x, tmp400
	leaq	8(%rax), %rsi	#, D.14385
	movl	-120(%rbp), %edx	# action, tmp401
	movq	-104(%rbp), %rax	# insn, tmp402
	movl	%ecx, %r8d	# D.14384,
	movl	%edx, %ecx	# tmp401,
	movl	$12, %edx	#,
	movq	%rax, %rdi	# tmp402,
	call	scan_rtx_address	#
	.loc 1 640 0
	jmp	.L217	#
.L221:
	.loc 1 643 0
	movl	-120(%rbp), %ecx	# action, tmp403
	movl	-116(%rbp), %edx	# class, tmp404
	movq	-112(%rbp), %rsi	# loc, tmp405
	movq	-104(%rbp), %rax	# insn, tmp406
	movl	$0, %r9d	#,
	movl	$0, %r8d	#,
	movq	%rax, %rdi	# tmp406,
	call	scan_rtx_reg	#
	.loc 1 644 0
	jmp	.L217	#
.L275:
	.loc 1 647 0
	nop
.L268:
	.loc 1 650 0
	movl	-68(%rbp), %eax	# code, code.143
	cltq
	movq	rtx_format(,%rax,8), %rax	# rtx_format, tmp408
	movq	%rax, -8(%rbp)	# tmp408, fmt
	.loc 1 651 0
	movl	-68(%rbp), %eax	# code, code.144
	cltq
	movzbl	rtx_length(%rax), %eax	# rtx_length, D.14383
	movzbl	%al, %eax	# D.14383, D.14382
	subl	$1, %eax	#, tmp410
	movl	%eax, -88(%rbp)	# tmp410, i
	jmp	.L269	#
.L274:
	.loc 1 653 0
	movl	-88(%rbp), %eax	# i, tmp411
	movslq	%eax, %rdx	# tmp411, D.14386
	movq	-8(%rbp), %rax	# fmt, tmp412
	addq	%rdx, %rax	# D.14386, D.14387
	movzbl	(%rax), %eax	# *_244, D.14388
	cmpb	$101, %al	#, D.14388
	jne	.L270	#,
	.loc 1 654 0
	movl	-88(%rbp), %eax	# i, tmp414
	cltq
	leaq	0(,%rax,8), %rdx	#, tmp415
	movq	-32(%rbp), %rax	# x, tmp417
	addq	%rdx, %rax	# tmp415, tmp416
	leaq	8(%rax), %rsi	#, D.14385
	movl	-124(%rbp), %edi	# mode, tmp418
	movl	-120(%rbp), %ecx	# action, tmp419
	movl	-116(%rbp), %edx	# class, tmp420
	movq	-104(%rbp), %rax	# insn, tmp421
	movl	%edi, %r8d	# tmp418,
	movq	%rax, %rdi	# tmp421,
	call	scan_rtx_address	#
	jmp	.L271	#
.L270:
	.loc 1 655 0
	movl	-88(%rbp), %eax	# i, tmp422
	movslq	%eax, %rdx	# tmp422, D.14386
	movq	-8(%rbp), %rax	# fmt, tmp423
	addq	%rdx, %rax	# D.14386, D.14387
	movzbl	(%rax), %eax	# *_248, D.14388
	cmpb	$69, %al	#, D.14388
	jne	.L271	#,
	.loc 1 656 0
	movq	-32(%rbp), %rax	# x, tmp424
	movl	-88(%rbp), %edx	# i, tmp426
	movslq	%edx, %rdx	# tmp426, tmp425
	movq	8(%rax,%rdx,8), %rax	# x_12->fld[i_2].rtvec, D.14389
	movl	(%rax), %eax	# _250->num_elem, D.14382
	subl	$1, %eax	#, tmp427
	movl	%eax, -84(%rbp)	# tmp427, j
	jmp	.L272	#
.L273:
	.loc 1 657 0 discriminator 2
	movq	-32(%rbp), %rax	# x, tmp428
	movl	-88(%rbp), %edx	# i, tmp430
	movslq	%edx, %rdx	# tmp430, tmp429
	movq	8(%rax,%rdx,8), %rax	# x_12->fld[i_2].rtvec, D.14389
	movl	-84(%rbp), %edx	# j, tmp432
	movslq	%edx, %rdx	# tmp432, tmp431
	salq	$3, %rdx	#, tmp433
	addq	%rdx, %rax	# tmp433, tmp434
	leaq	8(%rax), %rsi	#, D.14385
	movl	-124(%rbp), %edi	# mode, tmp435
	movl	-120(%rbp), %ecx	# action, tmp436
	movl	-116(%rbp), %edx	# class, tmp437
	movq	-104(%rbp), %rax	# insn, tmp438
	movl	%edi, %r8d	# tmp435,
	movq	%rax, %rdi	# tmp438,
	call	scan_rtx_address	#
	.loc 1 656 0 discriminator 2
	subl	$1, -84(%rbp)	#, j
.L272:
	.loc 1 656 0 is_stmt 0 discriminator 1
	cmpl	$0, -84(%rbp)	#, j
	jns	.L273	#,
.L271:
	.loc 1 651 0 is_stmt 1
	subl	$1, -88(%rbp)	#, i
.L269:
	.loc 1 651 0 is_stmt 0 discriminator 1
	cmpl	$0, -88(%rbp)	#, i
	jns	.L274	#,
.L217:
	.loc 1 659 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	scan_rtx_address, .-scan_rtx_address
	.type	scan_rtx, @function
scan_rtx:
.LFB9:
	.loc 1 669 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -40(%rbp)	# insn, insn
	movq	%rsi, -48(%rbp)	# loc, loc
	movl	%edx, -52(%rbp)	# class, class
	movl	%ecx, -56(%rbp)	# action, action
	movl	%r8d, -60(%rbp)	# type, type
	movl	%r9d, -64(%rbp)	# earlyclobber, earlyclobber
	.loc 1 671 0
	movq	-48(%rbp), %rax	# loc, tmp90
	movq	(%rax), %rax	# *loc_4(D), tmp91
	movq	%rax, -16(%rbp)	# tmp91, x
	.loc 1 672 0
	movq	-16(%rbp), %rax	# x, tmp92
	movzwl	(%rax), %eax	# x_5->code, D.14390
	movzwl	%ax, %eax	# D.14390, tmp93
	movl	%eax, -20(%rbp)	# tmp93, code
	.loc 1 675 0
	movq	-16(%rbp), %rax	# x, tmp94
	movzwl	(%rax), %eax	# x_5->code, D.14390
	movzwl	%ax, %eax	# D.14390, tmp95
	movl	%eax, -20(%rbp)	# tmp95, code
	.loc 1 676 0
	movl	-20(%rbp), %eax	# code, tmp97
	subl	$3, %eax	#, tmp96
	cmpl	$130, %eax	#, tmp96
	ja	.L299	#,
	movl	%eax, %eax	# tmp96, tmp98
	movq	.L279(,%rax,8), %rax	#, tmp99
	jmp	*%rax	# tmp99
	.section	.rodata
	.align 8
	.align 4
.L279:
	.quad	.L278
	.quad	.L299
	.quad	.L299
	.quad	.L299
	.quad	.L299
	.quad	.L299
	.quad	.L299
	.quad	.L299
	.quad	.L299
	.quad	.L299
	.quad	.L299
	.quad	.L299
	.quad	.L299
	.quad	.L299
	.quad	.L299
	.quad	.L299
	.quad	.L299
	.quad	.L299
	.quad	.L299
	.quad	.L299
	.quad	.L299
	.quad	.L299
	.quad	.L299
	.quad	.L299
	.quad	.L299
	.quad	.L299
	.quad	.L299
	.quad	.L299
	.quad	.L299
	.quad	.L299
	.quad	.L299
	.quad	.L299
	.quad	.L299
	.quad	.L299
	.quad	.L299
	.quad	.L299
	.quad	.L299
	.quad	.L299
	.quad	.L299
	.quad	.L299
	.quad	.L299
	.quad	.L299
	.quad	.L299
	.quad	.L299
	.quad	.L280
	.quad	.L299
	.quad	.L281
	.quad	.L299
	.quad	.L299
	.quad	.L299
	.quad	.L299
	.quad	.L300
	.quad	.L300
	.quad	.L300
	.quad	.L299
	.quad	.L300
	.quad	.L300
	.quad	.L299
	.quad	.L283
	.quad	.L299
	.quad	.L299
	.quad	.L284
	.quad	.L299
	.quad	.L285
	.quad	.L300
	.quad	.L300
	.quad	.L300
	.quad	.L299
	.quad	.L299
	.quad	.L299
	.quad	.L299
	.quad	.L299
	.quad	.L299
	.quad	.L299
	.quad	.L299
	.quad	.L299
	.quad	.L299
	.quad	.L299
	.quad	.L299
	.quad	.L299
	.quad	.L299
	.quad	.L299
	.quad	.L299
	.quad	.L299
	.quad	.L299
	.quad	.L299
	.quad	.L299
	.quad	.L299
	.quad	.L299
	.quad	.L299
	.quad	.L299
	.quad	.L299
	.quad	.L299
	.quad	.L286
	.quad	.L286
	.quad	.L286
	.quad	.L286
	.quad	.L286
	.quad	.L286
	.quad	.L299
	.quad	.L299
	.quad	.L299
	.quad	.L299
	.quad	.L299
	.quad	.L299
	.quad	.L299
	.quad	.L299
	.quad	.L299
	.quad	.L299
	.quad	.L299
	.quad	.L299
	.quad	.L299
	.quad	.L299
	.quad	.L299
	.quad	.L299
	.quad	.L299
	.quad	.L299
	.quad	.L299
	.quad	.L299
	.quad	.L299
	.quad	.L299
	.quad	.L299
	.quad	.L299
	.quad	.L299
	.quad	.L299
	.quad	.L299
	.quad	.L299
	.quad	.L299
	.quad	.L299
	.quad	.L287
	.quad	.L287
	.text
.L283:
	.loc 1 689 0
	movl	-64(%rbp), %r8d	# earlyclobber, tmp100
	movl	-60(%rbp), %edi	# type, tmp101
	movl	-56(%rbp), %ecx	# action, tmp102
	movl	-52(%rbp), %edx	# class, tmp103
	movq	-48(%rbp), %rsi	# loc, tmp104
	movq	-40(%rbp), %rax	# insn, tmp105
	movl	%r8d, %r9d	# tmp100,
	movl	%edi, %r8d	# tmp101,
	movq	%rax, %rdi	# tmp105,
	call	scan_rtx_reg	#
	.loc 1 690 0
	jmp	.L276	#
.L285:
	.loc 1 695 0
	movq	-16(%rbp), %rax	# x, tmp106
	movzbl	2(%rax), %eax	# x_5->mode, D.14391
	.loc 1 693 0
	movzbl	%al, %ecx	# D.14391, D.14392
	movq	-16(%rbp), %rax	# x, tmp107
	leaq	8(%rax), %rsi	#, D.14393
	movl	-56(%rbp), %edx	# action, tmp108
	movq	-40(%rbp), %rax	# insn, tmp109
	movl	%ecx, %r8d	# D.14392,
	movl	%edx, %ecx	# tmp108,
	movl	$12, %edx	#,
	movq	%rax, %rdi	# tmp109,
	call	scan_rtx_address	#
	.loc 1 696 0
	jmp	.L276	#
.L280:
	.loc 1 699 0
	movq	-16(%rbp), %rax	# x, tmp110
	leaq	16(%rax), %rsi	#, D.14393
	movl	-56(%rbp), %ecx	# action, tmp111
	movl	-52(%rbp), %edx	# class, tmp112
	movq	-40(%rbp), %rax	# insn, tmp113
	movl	$0, %r9d	#,
	movl	$0, %r8d	#,
	movq	%rax, %rdi	# tmp113,
	call	scan_rtx	#
	.loc 1 700 0
	movq	-16(%rbp), %rax	# x, tmp114
	leaq	8(%rax), %rsi	#, D.14393
	movl	-56(%rbp), %ecx	# action, tmp115
	movl	-52(%rbp), %edx	# class, tmp116
	movq	-40(%rbp), %rax	# insn, tmp117
	movl	$0, %r9d	#,
	movl	$1, %r8d	#,
	movq	%rax, %rdi	# tmp117,
	call	scan_rtx	#
	.loc 1 701 0
	jmp	.L276	#
.L284:
	.loc 1 704 0
	movq	-16(%rbp), %rax	# x, tmp118
	leaq	8(%rax), %rsi	#, D.14393
	movl	-64(%rbp), %edi	# earlyclobber, tmp119
	movl	-56(%rbp), %ecx	# action, tmp120
	movl	-52(%rbp), %edx	# class, tmp121
	movq	-40(%rbp), %rax	# insn, tmp122
	movl	%edi, %r9d	# tmp119,
	movl	$2, %r8d	#,
	movq	%rax, %rdi	# tmp122,
	call	scan_rtx	#
	.loc 1 705 0
	jmp	.L276	#
.L287:
	.loc 1 709 0
	cmpl	$0, -60(%rbp)	#, type
	jne	.L289	#,
	.loc 1 709 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, iftmp.145
	jmp	.L290	#
.L289:
	.loc 1 709 0 discriminator 2
	movl	$2, %eax	#, iftmp.145
.L290:
	.loc 1 709 0 discriminator 3
	movq	-16(%rbp), %rdx	# x, tmp123
	leaq	8(%rdx), %rsi	#, D.14393
	movl	-64(%rbp), %r8d	# earlyclobber, tmp124
	movl	-56(%rbp), %ecx	# action, tmp125
	movl	-52(%rbp), %edx	# class, tmp126
	movq	-40(%rbp), %rdi	# insn, tmp127
	movl	%r8d, %r9d	# tmp124,
	movl	%eax, %r8d	# iftmp.145,
	call	scan_rtx	#
	.loc 1 711 0 is_stmt 1 discriminator 3
	movq	-16(%rbp), %rax	# x, tmp128
	leaq	16(%rax), %rsi	#, D.14393
	movl	-56(%rbp), %ecx	# action, tmp129
	movl	-52(%rbp), %edx	# class, tmp130
	movq	-40(%rbp), %rax	# insn, tmp131
	movl	$0, %r9d	#,
	movl	$0, %r8d	#,
	movq	%rax, %rdi	# tmp131,
	call	scan_rtx	#
	.loc 1 712 0 discriminator 3
	movq	-16(%rbp), %rax	# x, tmp132
	leaq	24(%rax), %rsi	#, D.14393
	movl	-56(%rbp), %ecx	# action, tmp133
	movl	-52(%rbp), %edx	# class, tmp134
	movq	-40(%rbp), %rax	# insn, tmp135
	movl	$0, %r9d	#,
	movl	$0, %r8d	#,
	movq	%rax, %rdi	# tmp135,
	call	scan_rtx	#
	.loc 1 713 0 discriminator 3
	jmp	.L276	#
.L286:
	.loc 1 722 0
	movl	$__FUNCTION__.11132, %edx	#,
	movl	$722, %esi	#,
	movl	$.LC31, %edi	#,
	call	fancy_abort	#
.L281:
	.loc 1 725 0
	movq	-16(%rbp), %rax	# x, tmp136
	leaq	8(%rax), %rsi	#, D.14393
	movl	-56(%rbp), %ecx	# action, tmp137
	movl	-52(%rbp), %edx	# class, tmp138
	movq	-40(%rbp), %rax	# insn, tmp139
	movl	$1, %r9d	#,
	movl	$1, %r8d	#,
	movq	%rax, %rdi	# tmp139,
	call	scan_rtx	#
	.loc 1 726 0
	jmp	.L276	#
.L278:
	.loc 1 729 0
	movq	-16(%rbp), %rax	# x, tmp140
	leaq	8(%rax), %rsi	#, D.14393
	movl	-60(%rbp), %edi	# type, tmp141
	movl	-56(%rbp), %ecx	# action, tmp142
	movl	-52(%rbp), %edx	# class, tmp143
	movq	-40(%rbp), %rax	# insn, tmp144
	movl	$0, %r9d	#,
	movl	%edi, %r8d	# tmp141,
	movq	%rax, %rdi	# tmp144,
	call	scan_rtx	#
	.loc 1 730 0
	movq	-16(%rbp), %rax	# x, tmp145
	movq	16(%rax), %rax	# x_5->fld[1].rtx, D.14394
	testq	%rax, %rax	# D.14394
	je	.L291	#,
	.loc 1 731 0
	movq	-16(%rbp), %rax	# x, tmp146
	leaq	16(%rax), %rsi	#, D.14393
	movl	-60(%rbp), %edi	# type, tmp147
	movl	-56(%rbp), %ecx	# action, tmp148
	movl	-52(%rbp), %edx	# class, tmp149
	movq	-40(%rbp), %rax	# insn, tmp150
	movl	$0, %r9d	#,
	movl	%edi, %r8d	# tmp147,
	movq	%rax, %rdi	# tmp150,
	call	scan_rtx	#
	.loc 1 732 0
	jmp	.L276	#
.L291:
	jmp	.L276	#
.L299:
	.loc 1 735 0
	nop
	.loc 1 738 0
	movl	-20(%rbp), %eax	# code, code.146
	cltq
	movq	rtx_format(,%rax,8), %rax	# rtx_format, tmp152
	movq	%rax, -8(%rbp)	# tmp152, fmt
	.loc 1 739 0
	movl	-20(%rbp), %eax	# code, code.147
	cltq
	movzbl	rtx_length(%rax), %eax	# rtx_length, D.14391
	movzbl	%al, %eax	# D.14391, D.14395
	subl	$1, %eax	#, tmp154
	movl	%eax, -28(%rbp)	# tmp154, i
	jmp	.L292	#
.L297:
	.loc 1 741 0
	movl	-28(%rbp), %eax	# i, tmp155
	movslq	%eax, %rdx	# tmp155, D.14396
	movq	-8(%rbp), %rax	# fmt, tmp156
	addq	%rdx, %rax	# D.14396, D.14397
	movzbl	(%rax), %eax	# *_37, D.14398
	cmpb	$101, %al	#, D.14398
	jne	.L293	#,
	.loc 1 742 0
	movl	-28(%rbp), %eax	# i, tmp158
	cltq
	leaq	0(,%rax,8), %rdx	#, tmp159
	movq	-16(%rbp), %rax	# x, tmp161
	addq	%rdx, %rax	# tmp159, tmp160
	leaq	8(%rax), %rsi	#, D.14393
	movl	-60(%rbp), %edi	# type, tmp162
	movl	-56(%rbp), %ecx	# action, tmp163
	movl	-52(%rbp), %edx	# class, tmp164
	movq	-40(%rbp), %rax	# insn, tmp165
	movl	$0, %r9d	#,
	movl	%edi, %r8d	# tmp162,
	movq	%rax, %rdi	# tmp165,
	call	scan_rtx	#
	jmp	.L294	#
.L293:
	.loc 1 743 0
	movl	-28(%rbp), %eax	# i, tmp166
	movslq	%eax, %rdx	# tmp166, D.14396
	movq	-8(%rbp), %rax	# fmt, tmp167
	addq	%rdx, %rax	# D.14396, D.14397
	movzbl	(%rax), %eax	# *_41, D.14398
	cmpb	$69, %al	#, D.14398
	jne	.L294	#,
	.loc 1 744 0
	movq	-16(%rbp), %rax	# x, tmp168
	movl	-28(%rbp), %edx	# i, tmp170
	movslq	%edx, %rdx	# tmp170, tmp169
	movq	8(%rax,%rdx,8), %rax	# x_5->fld[i_1].rtvec, D.14399
	movl	(%rax), %eax	# _43->num_elem, D.14395
	subl	$1, %eax	#, tmp171
	movl	%eax, -24(%rbp)	# tmp171, j
	jmp	.L295	#
.L296:
	.loc 1 745 0 discriminator 2
	movq	-16(%rbp), %rax	# x, tmp172
	movl	-28(%rbp), %edx	# i, tmp174
	movslq	%edx, %rdx	# tmp174, tmp173
	movq	8(%rax,%rdx,8), %rax	# x_5->fld[i_1].rtvec, D.14399
	movl	-24(%rbp), %edx	# j, tmp176
	movslq	%edx, %rdx	# tmp176, tmp175
	salq	$3, %rdx	#, tmp177
	addq	%rdx, %rax	# tmp177, tmp178
	leaq	8(%rax), %rsi	#, D.14393
	movl	-60(%rbp), %edi	# type, tmp179
	movl	-56(%rbp), %ecx	# action, tmp180
	movl	-52(%rbp), %edx	# class, tmp181
	movq	-40(%rbp), %rax	# insn, tmp182
	movl	$0, %r9d	#,
	movl	%edi, %r8d	# tmp179,
	movq	%rax, %rdi	# tmp182,
	call	scan_rtx	#
	.loc 1 744 0 discriminator 2
	subl	$1, -24(%rbp)	#, j
.L295:
	.loc 1 744 0 is_stmt 0 discriminator 1
	cmpl	$0, -24(%rbp)	#, j
	jns	.L296	#,
.L294:
	.loc 1 739 0 is_stmt 1
	subl	$1, -28(%rbp)	#, i
.L292:
	.loc 1 739 0 is_stmt 0 discriminator 1
	cmpl	$0, -28(%rbp)	#, i
	jns	.L297	#,
	jmp	.L276	#
.L300:
	.loc 1 686 0 is_stmt 1
	nop
.L276:
	.loc 1 747 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	scan_rtx, .-scan_rtx
	.type	build_def_use, @function
build_def_use:
.LFB10:
	.loc 1 754 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$416, %rsp	#,
	movq	%rdi, -408(%rbp)	# bb, bb
	.loc 1 757 0
	movq	$0, closed_chains(%rip)	#, closed_chains
	movq	closed_chains(%rip), %rax	# closed_chains, closed_chains.148
	movq	%rax, open_chains(%rip)	# closed_chains.148, open_chains
	.loc 1 759 0
	movq	-408(%rbp), %rax	# bb, tmp169
	movq	(%rax), %rax	# bb_25(D)->head, tmp170
	movq	%rax, -344(%rbp)	# tmp170, insn
.L373:
	.loc 1 761 0
	movq	-344(%rbp), %rax	# insn, tmp171
	movzwl	(%rax), %eax	# insn_1->code, D.14400
	movzwl	%ax, %eax	# D.14400, D.14401
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.14402
	cmpb	$105, %al	#, D.14402
	jne	.L302	#,
.LBB25:
	.loc 1 787 0
	movq	-344(%rbp), %rax	# insn, tmp173
	movl	40(%rax), %eax	# insn_1->fld[4].rtint, D.14401
	testl	%eax, %eax	# D.14401
	js	.L303	#,
	.loc 1 787 0 is_stmt 0 discriminator 1
	movq	-344(%rbp), %rax	# insn, tmp174
	movl	40(%rax), %eax	# insn_1->fld[4].rtint, iftmp.149
	jmp	.L304	#
.L303:
	.loc 1 787 0 discriminator 2
	movq	-344(%rbp), %rax	# insn, tmp175
	movq	%rax, %rdi	# tmp175,
	call	recog_memoized_1	#
.L304:
	.loc 1 787 0 discriminator 3
	movl	%eax, -396(%rbp)	# iftmp.149, icode
	.loc 1 788 0 is_stmt 1 discriminator 3
	movq	-344(%rbp), %rax	# insn, tmp176
	movq	%rax, %rdi	# tmp176,
	call	extract_insn	#
	.loc 1 789 0 discriminator 3
	movl	$1, %edi	#,
	call	constrain_operands	#
	.loc 1 790 0 discriminator 3
	call	preprocess_constraints	#
	.loc 1 791 0 discriminator 3
	movl	which_alternative(%rip), %eax	# which_alternative, tmp177
	movl	%eax, -392(%rbp)	# tmp177, alt
	.loc 1 792 0 discriminator 3
	movzbl	recog_data+996(%rip), %eax	# recog_data.n_operands, D.14402
	movsbl	%al, %eax	# D.14402, tmp178
	movl	%eax, -388(%rbp)	# tmp178, n_ops
	.loc 1 798 0 discriminator 3
	movq	-344(%rbp), %rax	# insn, tmp179
	movq	32(%rax), %rax	# insn_1->fld[3].rtx, D.14403
	movzwl	(%rax), %eax	# _37->code, D.14400
	cmpw	$38, %ax	#, D.14400
	sete	%al	#, D.14404
	movzbl	%al, %eax	# D.14404, tmp180
	movl	%eax, -384(%rbp)	# tmp180, predicated
	.loc 1 799 0 discriminator 3
	movl	$0, -400(%rbp)	#, i
	jmp	.L305	#
.L309:
.LBB26:
	.loc 1 801 0
	movl	-392(%rbp), %eax	# alt, tmp182
	movslq	%eax, %rcx	# tmp182, tmp181
	movl	-400(%rbp), %eax	# i, tmp184
	cltq
	addq	%rax, %rax	# tmp186
	movq	%rax, %rdx	# tmp185, tmp187
	salq	$4, %rdx	#, tmp187
	subq	%rax, %rdx	# tmp185, tmp187
	leaq	(%rdx,%rcx), %rax	#, tmp188
	salq	$5, %rax	#, tmp189
	addq	$recog_op_alt+16, %rax	#, tmp190
	movl	(%rax), %eax	# recog_op_alt[i_4][alt_34].matches, tmp191
	movl	%eax, -380(%rbp)	# tmp191, matches
	.loc 1 802 0
	cmpl	$0, -380(%rbp)	#, matches
	js	.L306	#,
	.loc 1 803 0
	movl	-392(%rbp), %eax	# alt, tmp193
	movslq	%eax, %rcx	# tmp193, tmp192
	movl	-380(%rbp), %eax	# matches, tmp195
	cltq
	addq	%rax, %rax	# tmp197
	movq	%rax, %rdx	# tmp196, tmp198
	salq	$4, %rdx	#, tmp198
	subq	%rax, %rdx	# tmp196, tmp198
	leaq	(%rdx,%rcx), %rax	#, tmp199
	salq	$5, %rax	#, tmp200
	addq	$recog_op_alt, %rax	#, tmp201
	movl	8(%rax), %ecx	# recog_op_alt[matches_42][alt_34].class, D.14405
	movl	-392(%rbp), %eax	# alt, tmp203
	movslq	%eax, %rsi	# tmp203, tmp202
	movl	-400(%rbp), %eax	# i, tmp205
	cltq
	addq	%rax, %rax	# tmp207
	movq	%rax, %rdx	# tmp206, tmp208
	salq	$4, %rdx	#, tmp208
	subq	%rax, %rdx	# tmp206, tmp208
	leaq	(%rdx,%rsi), %rax	#, tmp209
	salq	$5, %rax	#, tmp210
	addq	$recog_op_alt, %rax	#, tmp211
	movl	%ecx, 8(%rax)	# D.14405, recog_op_alt[i_4][alt_34].class
.L306:
	.loc 1 804 0
	cmpl	$0, -380(%rbp)	#, matches
	jns	.L307	#,
	.loc 1 804 0 is_stmt 0 discriminator 1
	movl	-392(%rbp), %eax	# alt, tmp213
	movslq	%eax, %rcx	# tmp213, tmp212
	movl	-400(%rbp), %eax	# i, tmp215
	cltq
	addq	%rax, %rax	# tmp217
	movq	%rax, %rdx	# tmp216, tmp218
	salq	$4, %rdx	#, tmp218
	subq	%rax, %rdx	# tmp216, tmp218
	leaq	(%rdx,%rcx), %rax	#, tmp219
	salq	$5, %rax	#, tmp220
	addq	$recog_op_alt+16, %rax	#, tmp221
	movl	4(%rax), %eax	# recog_op_alt[i_4][alt_34].matched, D.14401
	testl	%eax, %eax	# D.14401
	jns	.L307	#,
	.loc 1 805 0 is_stmt 1
	cmpl	$0, -384(%rbp)	#, predicated
	je	.L308	#,
	.loc 1 805 0 is_stmt 0 discriminator 1
	movl	-400(%rbp), %eax	# i, tmp223
	cltq
	addq	$208, %rax	#, tmp224
	movl	recog_data+8(,%rax,4), %eax	# recog_data.operand_type, D.14406
	cmpl	$1, %eax	#, D.14406
	jne	.L308	#,
.L307:
	.loc 1 806 0 is_stmt 1
	movl	-400(%rbp), %eax	# i, tmp226
	cltq
	addq	$208, %rax	#, tmp227
	movl	$2, recog_data+8(,%rax,4)	#, recog_data.operand_type
.L308:
.LBE26:
	.loc 1 799 0
	addl	$1, -400(%rbp)	#, i
.L305:
	.loc 1 799 0 is_stmt 0 discriminator 1
	movl	-400(%rbp), %eax	# i, tmp228
	cmpl	-388(%rbp), %eax	# n_ops, tmp228
	jl	.L309	#,
	.loc 1 810 0 is_stmt 1
	movl	$0, -400(%rbp)	#, i
	jmp	.L310	#
.L311:
	.loc 1 811 0 discriminator 2
	movl	-400(%rbp), %eax	# i, tmp230
	cltq
	addq	$208, %rax	#, tmp231
	movl	recog_data+8(,%rax,4), %edx	# recog_data.operand_type, D.14406
	movl	-400(%rbp), %eax	# i, tmp233
	cltq
	addq	$30, %rax	#, tmp234
	movq	recog_data(,%rax,8), %rsi	# recog_data.operand_loc, D.14407
	movq	-344(%rbp), %rax	# insn, tmp235
	movl	$0, %r9d	#,
	movl	%edx, %r8d	# D.14406,
	movl	$1, %ecx	#,
	movl	$0, %edx	#,
	movq	%rax, %rdi	# tmp235,
	call	scan_rtx	#
	.loc 1 810 0 discriminator 2
	addl	$1, -400(%rbp)	#, i
.L310:
	.loc 1 810 0 is_stmt 0 discriminator 1
	movl	-400(%rbp), %eax	# i, tmp236
	cmpl	-388(%rbp), %eax	# n_ops, tmp236
	jl	.L311	#,
	.loc 1 819 0 is_stmt 1
	movl	$0, -400(%rbp)	#, i
	jmp	.L312	#
.L315:
	.loc 1 821 0
	movl	-400(%rbp), %eax	# i, tmp238
	cltq
	movq	recog_data(,%rax,8), %rdx	# recog_data.operand, D.14403
	movl	-400(%rbp), %eax	# i, tmp240
	cltq
	movq	%rdx, -240(%rbp,%rax,8)	# D.14403, old_operands
	.loc 1 825 0
	movl	-400(%rbp), %eax	# i, tmp242
	cltq
	addq	$60, %rax	#, tmp243
	movq	recog_data(,%rax,8), %rax	# recog_data.constraints, D.14408
	movzbl	(%rax), %eax	# *_53, D.14402
	testb	%al, %al	# D.14402
	jne	.L313	#,
	.loc 1 826 0
	jmp	.L314	#
.L313:
	.loc 1 827 0
	movl	-400(%rbp), %eax	# i, tmp245
	cltq
	addq	$30, %rax	#, tmp246
	movq	recog_data(,%rax,8), %rax	# recog_data.operand_loc, D.14407
	movq	global_rtl+8(%rip), %rdx	# global_rtl, D.14403
	movq	%rdx, (%rax)	# D.14403, *_55
.L314:
	.loc 1 819 0
	addl	$1, -400(%rbp)	#, i
.L312:
	.loc 1 819 0 is_stmt 0 discriminator 1
	movl	-400(%rbp), %eax	# i, tmp247
	cmpl	-388(%rbp), %eax	# n_ops, tmp247
	jl	.L315	#,
	.loc 1 829 0 is_stmt 1
	movl	$0, -400(%rbp)	#, i
	jmp	.L316	#
.L318:
.LBB27:
	.loc 1 831 0
	movl	-400(%rbp), %eax	# i, tmp249
	cltq
	movzbl	recog_data+992(%rax), %eax	# recog_data.dup_num, D.14402
	movsbl	%al, %eax	# D.14402, tmp250
	movl	%eax, -376(%rbp)	# tmp250, dup_num
	.loc 1 833 0
	movl	-400(%rbp), %eax	# i, tmp252
	cltq
	addq	$120, %rax	#, tmp253
	movq	recog_data(,%rax,8), %rax	# recog_data.dup_loc, D.14407
	movq	(%rax), %rdx	# *_63, D.14403
	movl	-400(%rbp), %eax	# i, tmp255
	cltq
	movq	%rdx, -272(%rbp,%rax,8)	# D.14403, old_dups
	.loc 1 834 0
	movl	-400(%rbp), %eax	# i, tmp257
	cltq
	addq	$120, %rax	#, tmp258
	movq	recog_data(,%rax,8), %rax	# recog_data.dup_loc, D.14407
	movq	global_rtl+8(%rip), %rdx	# global_rtl, D.14403
	movq	%rdx, (%rax)	# D.14403, *_65
	.loc 1 838 0
	cmpl	$0, -396(%rbp)	#, icode
	js	.L317	#,
	.loc 1 839 0
	movl	-396(%rbp), %eax	# icode, tmp260
	movslq	%eax, %rdx	# tmp260, tmp259
	movq	%rdx, %rax	# tmp259, tmp261
	salq	$2, %rax	#, tmp261
	addq	%rdx, %rax	# tmp259, tmp261
	salq	$3, %rax	#, tmp262
	addq	$insn_data+24, %rax	#, tmp263
	movq	(%rax), %rcx	# insn_data[icode_33].operand, D.14409
	movl	-376(%rbp), %eax	# dup_num, tmp264
	movslq	%eax, %rdx	# tmp264, D.14410
	movq	%rdx, %rax	# D.14410, tmp265
	addq	%rax, %rax	# tmp265
	addq	%rdx, %rax	# D.14410, tmp265
	salq	$3, %rax	#, tmp266
	addq	%rcx, %rax	# D.14409, D.14409
	movzbl	19(%rax), %eax	# _70->eliminable, D.14402
	testb	%al, %al	# D.14402
	jne	.L317	#,
	.loc 1 840 0
	movl	-376(%rbp), %eax	# dup_num, tmp268
	cltq
	movq	recog_data(,%rax,8), %rdx	# recog_data.operand, D.14403
	movl	-400(%rbp), %eax	# i, tmp270
	cltq
	movq	%rdx, -272(%rbp,%rax,8)	# D.14403, old_dups
.L317:
.LBE27:
	.loc 1 829 0
	addl	$1, -400(%rbp)	#, i
.L316:
	.loc 1 829 0 is_stmt 0 discriminator 1
	movzbl	recog_data+997(%rip), %eax	# recog_data.n_dups, D.14402
	movsbl	%al, %eax	# D.14402, D.14401
	cmpl	-400(%rbp), %eax	# i, D.14401
	jg	.L318	#,
	.loc 1 843 0 is_stmt 1
	movq	-344(%rbp), %rax	# insn, tmp271
	leaq	32(%rax), %rsi	#, D.14407
	movq	-344(%rbp), %rax	# insn, tmp272
	movl	$0, %r9d	#,
	movl	$0, %r8d	#,
	movl	$0, %ecx	#,
	movl	$0, %edx	#,
	movq	%rax, %rdi	# tmp272,
	call	scan_rtx	#
	.loc 1 846 0
	movl	$0, -400(%rbp)	#, i
	jmp	.L319	#
.L320:
	.loc 1 847 0 discriminator 2
	movl	-400(%rbp), %eax	# i, tmp274
	cltq
	addq	$120, %rax	#, tmp275
	movq	recog_data(,%rax,8), %rax	# recog_data.dup_loc, D.14407
	movl	-400(%rbp), %edx	# i, tmp277
	movslq	%edx, %rdx	# tmp277, tmp276
	movq	-272(%rbp,%rdx,8), %rdx	# old_dups, D.14403
	movq	%rdx, (%rax)	# D.14403, *_78
	.loc 1 846 0 discriminator 2
	addl	$1, -400(%rbp)	#, i
.L319:
	.loc 1 846 0 is_stmt 0 discriminator 1
	movzbl	recog_data+997(%rip), %eax	# recog_data.n_dups, D.14402
	movsbl	%al, %eax	# D.14402, D.14401
	cmpl	-400(%rbp), %eax	# i, D.14401
	jg	.L320	#,
	.loc 1 848 0 is_stmt 1
	movl	$0, -400(%rbp)	#, i
	jmp	.L321	#
.L322:
	.loc 1 849 0 discriminator 2
	movl	-400(%rbp), %eax	# i, tmp279
	cltq
	addq	$30, %rax	#, tmp280
	movq	recog_data(,%rax,8), %rax	# recog_data.operand_loc, D.14407
	movl	-400(%rbp), %edx	# i, tmp282
	movslq	%edx, %rdx	# tmp282, tmp281
	movq	-240(%rbp,%rdx,8), %rdx	# old_operands, D.14403
	movq	%rdx, (%rax)	# D.14403, *_82
	.loc 1 848 0 discriminator 2
	addl	$1, -400(%rbp)	#, i
.L321:
	.loc 1 848 0 is_stmt 0 discriminator 1
	movl	-400(%rbp), %eax	# i, tmp283
	cmpl	-388(%rbp), %eax	# n_ops, tmp283
	jl	.L322	#,
	.loc 1 852 0 is_stmt 1
	movq	-344(%rbp), %rax	# insn, tmp284
	movzwl	(%rax), %eax	# insn_1->code, D.14400
	cmpw	$34, %ax	#, D.14400
	jne	.L323	#,
	.loc 1 852 0 is_stmt 0 discriminator 1
	movq	-344(%rbp), %rax	# insn, tmp285
	movq	64(%rax), %rax	# insn_1->fld[7].rtx, D.14403
	testq	%rax, %rax	# D.14403
	je	.L323	#,
	.loc 1 853 0 is_stmt 1
	movq	-344(%rbp), %rax	# insn, tmp286
	leaq	64(%rax), %rsi	#, D.14407
	movq	-344(%rbp), %rax	# insn, tmp287
	movl	$0, %r9d	#,
	movl	$0, %r8d	#,
	movl	$0, %ecx	#,
	movl	$0, %edx	#,
	movq	%rax, %rdi	# tmp287,
	call	scan_rtx	#
.L323:
	.loc 1 858 0
	movq	-344(%rbp), %rax	# insn, tmp288
	movq	32(%rax), %rax	# insn_1->fld[3].rtx, D.14403
	movq	%rax, %rdi	# D.14403,
	call	asm_noperands	#
	testl	%eax, %eax	# D.14401
	jle	.L324	#,
	.loc 1 859 0
	movl	$0, -400(%rbp)	#, i
	jmp	.L325	#
.L328:
.LBB28:
	.loc 1 861 0
	movl	-400(%rbp), %eax	# i, tmp290
	cltq
	addq	$30, %rax	#, tmp291
	movq	recog_data(,%rax,8), %rax	# recog_data.operand_loc, tmp292
	movq	%rax, -320(%rbp)	# tmp292, loc
	.loc 1 862 0
	movq	-320(%rbp), %rax	# loc, tmp293
	movq	(%rax), %rax	# *loc_91, tmp294
	movq	%rax, -312(%rbp)	# tmp294, op
	.loc 1 864 0
	movq	-312(%rbp), %rax	# op, tmp295
	movzwl	(%rax), %eax	# op_92->code, D.14400
	cmpw	$61, %ax	#, D.14400
	jne	.L326	#,
	.loc 1 865 0
	movq	-312(%rbp), %rax	# op, tmp296
	movl	8(%rax), %edx	# op_92->fld[0].rtuint, D.14411
	movq	-312(%rbp), %rax	# op, tmp297
	movl	16(%rax), %eax	# op_92->fld[1].rtuint, D.14411
	cmpl	%eax, %edx	# D.14411, D.14411
	jne	.L326	#,
	.loc 1 866 0
	movl	-400(%rbp), %eax	# i, tmp299
	cltq
	addq	$208, %rax	#, tmp300
	movl	recog_data+8(,%rax,4), %eax	# recog_data.operand_type, D.14406
	testl	%eax, %eax	# D.14406
	je	.L327	#,
	.loc 1 867 0
	movl	-400(%rbp), %eax	# i, tmp302
	cltq
	addq	$208, %rax	#, tmp303
	movl	recog_data+8(,%rax,4), %eax	# recog_data.operand_type, D.14406
	cmpl	$2, %eax	#, D.14406
	jne	.L326	#,
.L327:
	.loc 1 868 0
	movq	-320(%rbp), %rsi	# loc, tmp304
	movq	-344(%rbp), %rax	# insn, tmp305
	movl	$0, %r9d	#,
	movl	$0, %r8d	#,
	movl	$0, %ecx	#,
	movl	$0, %edx	#,
	movq	%rax, %rdi	# tmp305,
	call	scan_rtx	#
.L326:
.LBE28:
	.loc 1 859 0
	addl	$1, -400(%rbp)	#, i
.L325:
	.loc 1 859 0 is_stmt 0 discriminator 1
	movl	-400(%rbp), %eax	# i, tmp306
	cmpl	-388(%rbp), %eax	# n_ops, tmp306
	jl	.L328	#,
.L324:
	.loc 1 872 0 is_stmt 1
	movl	$0, -400(%rbp)	#, i
	jmp	.L329	#
.L337:
.LBB29:
	.loc 1 874 0
	movl	-400(%rbp), %eax	# i, tmp307
	cmpl	-388(%rbp), %eax	# n_ops, tmp307
	jl	.L330	#,
	.loc 1 874 0 is_stmt 0 discriminator 1
	movl	-388(%rbp), %eax	# n_ops, tmp308
	movl	-400(%rbp), %edx	# i, tmp309
	subl	%eax, %edx	# tmp308, D.14401
	movl	%edx, %eax	# D.14401, D.14401
	cltq
	movzbl	recog_data+992(%rax), %eax	# recog_data.dup_num, D.14402
	movsbl	%al, %eax	# D.14402, iftmp.150
	jmp	.L331	#
.L330:
	.loc 1 874 0 discriminator 2
	movl	-400(%rbp), %eax	# i, iftmp.150
.L331:
	.loc 1 874 0 discriminator 3
	movl	%eax, -372(%rbp)	# iftmp.150, opn
	.loc 1 877 0 is_stmt 1 discriminator 3
	movl	-400(%rbp), %eax	# i, tmp311
	cmpl	-388(%rbp), %eax	# n_ops, tmp311
	jge	.L332	#,
	.loc 1 877 0 is_stmt 0 discriminator 1
	movl	-372(%rbp), %eax	# opn, tmp313
	cltq
	addq	$30, %rax	#, tmp314
	movq	recog_data(,%rax,8), %rax	# recog_data.operand_loc, iftmp.151
	jmp	.L333	#
.L332:
	.loc 1 877 0 discriminator 2
	movl	-388(%rbp), %eax	# n_ops, tmp315
	movl	-400(%rbp), %edx	# i, tmp316
	subl	%eax, %edx	# tmp315, D.14401
	movl	%edx, %eax	# D.14401, D.14401
	cltq
	addq	$120, %rax	#, tmp318
	movq	recog_data(,%rax,8), %rax	# recog_data.dup_loc, iftmp.151
.L333:
	.loc 1 875 0 is_stmt 1
	movq	%rax, -304(%rbp)	# iftmp.151, loc
	.loc 1 878 0
	movl	-392(%rbp), %eax	# alt, tmp320
	movslq	%eax, %rcx	# tmp320, tmp319
	movl	-372(%rbp), %eax	# opn, tmp322
	cltq
	addq	%rax, %rax	# tmp324
	movq	%rax, %rdx	# tmp323, tmp325
	salq	$4, %rdx	#, tmp325
	subq	%rax, %rdx	# tmp323, tmp325
	leaq	(%rdx,%rcx), %rax	#, tmp326
	salq	$5, %rax	#, tmp327
	addq	$recog_op_alt, %rax	#, tmp328
	movl	8(%rax), %eax	# recog_op_alt[opn_107][alt_34].class, tmp329
	movl	%eax, -368(%rbp)	# tmp329, class
	.loc 1 879 0
	movl	-372(%rbp), %eax	# opn, tmp331
	cltq
	addq	$208, %rax	#, tmp332
	movl	recog_data+8(,%rax,4), %eax	# recog_data.operand_type, tmp333
	movl	%eax, -364(%rbp)	# tmp333, type
	.loc 1 884 0
	movl	-372(%rbp), %eax	# opn, tmp335
	cltq
	addq	$60, %rax	#, tmp336
	movq	recog_data(,%rax,8), %rax	# recog_data.constraints, D.14408
	movzbl	(%rax), %eax	# *_114, D.14402
	testb	%al, %al	# D.14402
	jne	.L334	#,
	.loc 1 885 0
	jmp	.L335	#
.L334:
	.loc 1 887 0
	movl	-392(%rbp), %eax	# alt, tmp338
	movslq	%eax, %rcx	# tmp338, tmp337
	movl	-372(%rbp), %eax	# opn, tmp340
	cltq
	addq	%rax, %rax	# tmp342
	movq	%rax, %rdx	# tmp341, tmp343
	salq	$4, %rdx	#, tmp343
	subq	%rax, %rdx	# tmp341, tmp343
	leaq	(%rdx,%rcx), %rax	#, tmp344
	salq	$5, %rax	#, tmp345
	addq	$recog_op_alt+16, %rax	#, tmp346
	movzbl	8(%rax), %eax	#, tmp349
	shrb	$6, %al	#, D.14412
	andl	$1, %eax	#, D.14412
	testb	%al, %al	# D.14412
	je	.L336	#,
	.loc 1 888 0
	movl	-368(%rbp), %edx	# class, tmp350
	movq	-304(%rbp), %rsi	# loc, tmp351
	movq	-344(%rbp), %rax	# insn, tmp352
	movl	$0, %r8d	#,
	movl	$4, %ecx	#,
	movq	%rax, %rdi	# tmp352,
	call	scan_rtx_address	#
	jmp	.L335	#
.L336:
	.loc 1 890 0
	movl	-364(%rbp), %ecx	# type, tmp353
	movl	-368(%rbp), %edx	# class, tmp354
	movq	-304(%rbp), %rsi	# loc, tmp355
	movq	-344(%rbp), %rax	# insn, tmp356
	movl	$0, %r9d	#,
	movl	%ecx, %r8d	# tmp353,
	movl	$4, %ecx	#,
	movq	%rax, %rdi	# tmp356,
	call	scan_rtx	#
.L335:
.LBE29:
	.loc 1 872 0
	addl	$1, -400(%rbp)	#, i
.L329:
	.loc 1 872 0 is_stmt 0 discriminator 1
	movzbl	recog_data+997(%rip), %eax	# recog_data.n_dups, D.14402
	movsbl	%al, %edx	# D.14402, D.14401
	movl	-388(%rbp), %eax	# n_ops, tmp357
	addl	%edx, %eax	# D.14401, D.14401
	cmpl	-400(%rbp), %eax	# i, D.14401
	jg	.L337	#,
	.loc 1 895 0 is_stmt 1
	movq	-344(%rbp), %rax	# insn, tmp358
	movq	56(%rax), %rax	# insn_1->fld[6].rtx, tmp359
	movq	%rax, -336(%rbp)	# tmp359, note
	jmp	.L338	#
.L341:
	.loc 1 897 0
	movq	-336(%rbp), %rax	# note, tmp360
	movzbl	2(%rax), %eax	# note_2->mode, D.14413
	cmpb	$1, %al	#, D.14413
	jne	.L339	#,
	.loc 1 898 0
	movq	-336(%rbp), %rax	# note, tmp361
	leaq	8(%rax), %rsi	#, D.14407
	movq	-344(%rbp), %rax	# insn, tmp362
	movl	$0, %r9d	#,
	movl	$0, %r8d	#,
	movl	$3, %ecx	#,
	movl	$0, %edx	#,
	movq	%rax, %rdi	# tmp362,
	call	scan_rtx	#
	jmp	.L340	#
.L339:
	.loc 1 900 0
	movq	-336(%rbp), %rax	# note, tmp363
	movzbl	2(%rax), %eax	# note_2->mode, D.14413
	cmpb	$2, %al	#, D.14413
	jne	.L340	#,
	.loc 1 901 0
	movq	-336(%rbp), %rax	# note, tmp364
	leaq	8(%rax), %rsi	#, D.14407
	movq	-344(%rbp), %rax	# insn, tmp365
	movl	$0, %r9d	#,
	movl	$2, %r8d	#,
	movl	$4, %ecx	#,
	movl	$24, %edx	#,
	movq	%rax, %rdi	# tmp365,
	call	scan_rtx	#
.L340:
	.loc 1 895 0
	movq	-336(%rbp), %rax	# note, tmp366
	movq	16(%rax), %rax	# note_2->fld[1].rtx, tmp367
	movq	%rax, -336(%rbp)	# tmp367, note
.L338:
	.loc 1 895 0 is_stmt 0 discriminator 1
	cmpq	$0, -336(%rbp)	#, note
	jne	.L341	#,
	.loc 1 907 0 is_stmt 1
	movq	-344(%rbp), %rax	# insn, tmp368
	movzwl	(%rax), %eax	# insn_1->code, D.14400
	cmpw	$34, %ax	#, D.14400
	jne	.L342	#,
.LBB30:
	.loc 1 910 0
	movq	open_chains(%rip), %rax	# open_chains, tmp369
	movq	%rax, -328(%rbp)	# tmp369, p
	jmp	.L343	#
.L344:
	.loc 1 911 0 discriminator 2
	movq	-328(%rbp), %rax	# p, tmp370
	movzbl	36(%rax), %edx	# p_18->need_caller_save_reg, tmp373
	orl	$1, %edx	#, tmp374
	movb	%dl, 36(%rax)	# tmp374, p_18->need_caller_save_reg
	.loc 1 910 0 discriminator 2
	movq	-328(%rbp), %rax	# p, tmp375
	movq	(%rax), %rax	# p_18->next_chain, tmp376
	movq	%rax, -328(%rbp)	# tmp376, p
.L343:
	.loc 1 910 0 is_stmt 0 discriminator 1
	cmpq	$0, -328(%rbp)	#, p
	jne	.L344	#,
.L342:
.LBE30:
	.loc 1 918 0 is_stmt 1
	movl	$0, -400(%rbp)	#, i
	jmp	.L345	#
.L347:
	.loc 1 920 0
	movl	-400(%rbp), %eax	# i, tmp378
	cltq
	movq	recog_data(,%rax,8), %rdx	# recog_data.operand, D.14403
	movl	-400(%rbp), %eax	# i, tmp380
	cltq
	movq	%rdx, -240(%rbp,%rax,8)	# D.14403, old_operands
	.loc 1 921 0
	movl	-400(%rbp), %eax	# i, tmp382
	cltq
	addq	$208, %rax	#, tmp383
	movl	recog_data+8(,%rax,4), %eax	# recog_data.operand_type, D.14406
	cmpl	$2, %eax	#, D.14406
	jne	.L346	#,
	.loc 1 922 0
	movl	-400(%rbp), %eax	# i, tmp385
	cltq
	addq	$30, %rax	#, tmp386
	movq	recog_data(,%rax,8), %rax	# recog_data.operand_loc, D.14407
	movq	global_rtl+8(%rip), %rdx	# global_rtl, D.14403
	movq	%rdx, (%rax)	# D.14403, *_130
.L346:
	.loc 1 918 0
	addl	$1, -400(%rbp)	#, i
.L345:
	.loc 1 918 0 is_stmt 0 discriminator 1
	movl	-400(%rbp), %eax	# i, tmp387
	cmpl	-388(%rbp), %eax	# n_ops, tmp387
	jl	.L347	#,
	.loc 1 924 0 is_stmt 1
	movl	$0, -400(%rbp)	#, i
	jmp	.L348	#
.L350:
.LBB31:
	.loc 1 926 0
	movl	-400(%rbp), %eax	# i, tmp389
	cltq
	movzbl	recog_data+992(%rax), %eax	# recog_data.dup_num, D.14402
	movsbl	%al, %eax	# D.14402, tmp390
	movl	%eax, -360(%rbp)	# tmp390, opn
	.loc 1 927 0
	movl	-400(%rbp), %eax	# i, tmp392
	cltq
	addq	$120, %rax	#, tmp393
	movq	recog_data(,%rax,8), %rax	# recog_data.dup_loc, D.14407
	movq	(%rax), %rdx	# *_138, D.14403
	movl	-400(%rbp), %eax	# i, tmp395
	cltq
	movq	%rdx, -272(%rbp,%rax,8)	# D.14403, old_dups
	.loc 1 928 0
	movl	-360(%rbp), %eax	# opn, tmp397
	cltq
	addq	$208, %rax	#, tmp398
	movl	recog_data+8(,%rax,4), %eax	# recog_data.operand_type, D.14406
	cmpl	$2, %eax	#, D.14406
	jne	.L349	#,
	.loc 1 929 0
	movl	-400(%rbp), %eax	# i, tmp400
	cltq
	addq	$120, %rax	#, tmp401
	movq	recog_data(,%rax,8), %rax	# recog_data.dup_loc, D.14407
	movq	global_rtl+8(%rip), %rdx	# global_rtl, D.14403
	movq	%rdx, (%rax)	# D.14403, *_141
.L349:
.LBE31:
	.loc 1 924 0
	addl	$1, -400(%rbp)	#, i
.L348:
	.loc 1 924 0 is_stmt 0 discriminator 1
	movzbl	recog_data+997(%rip), %eax	# recog_data.n_dups, D.14402
	movsbl	%al, %eax	# D.14402, D.14401
	cmpl	-400(%rbp), %eax	# i, D.14401
	jg	.L350	#,
	.loc 1 932 0 is_stmt 1
	movq	-344(%rbp), %rax	# insn, tmp402
	leaq	32(%rax), %rsi	#, D.14407
	movq	-344(%rbp), %rax	# insn, tmp403
	movl	$0, %r9d	#,
	movl	$0, %r8d	#,
	movl	$2, %ecx	#,
	movl	$0, %edx	#,
	movq	%rax, %rdi	# tmp403,
	call	scan_rtx	#
	.loc 1 934 0
	movl	$0, -400(%rbp)	#, i
	jmp	.L351	#
.L352:
	.loc 1 935 0 discriminator 2
	movl	-400(%rbp), %eax	# i, tmp405
	cltq
	addq	$120, %rax	#, tmp406
	movq	recog_data(,%rax,8), %rax	# recog_data.dup_loc, D.14407
	movl	-400(%rbp), %edx	# i, tmp408
	movslq	%edx, %rdx	# tmp408, tmp407
	movq	-272(%rbp,%rdx,8), %rdx	# old_dups, D.14403
	movq	%rdx, (%rax)	# D.14403, *_148
	.loc 1 934 0 discriminator 2
	addl	$1, -400(%rbp)	#, i
.L351:
	.loc 1 934 0 is_stmt 0 discriminator 1
	movzbl	recog_data+997(%rip), %eax	# recog_data.n_dups, D.14402
	movsbl	%al, %eax	# D.14402, D.14401
	cmpl	-400(%rbp), %eax	# i, D.14401
	jg	.L352	#,
	.loc 1 936 0 is_stmt 1
	movl	$0, -400(%rbp)	#, i
	jmp	.L353	#
.L354:
	.loc 1 937 0 discriminator 2
	movl	-400(%rbp), %eax	# i, tmp410
	cltq
	addq	$30, %rax	#, tmp411
	movq	recog_data(,%rax,8), %rax	# recog_data.operand_loc, D.14407
	movl	-400(%rbp), %edx	# i, tmp413
	movslq	%edx, %rdx	# tmp413, tmp412
	movq	-240(%rbp,%rdx,8), %rdx	# old_operands, D.14403
	movq	%rdx, (%rax)	# D.14403, *_152
	.loc 1 936 0 discriminator 2
	addl	$1, -400(%rbp)	#, i
.L353:
	.loc 1 936 0 is_stmt 0 discriminator 1
	movl	-400(%rbp), %eax	# i, tmp414
	cmpl	-388(%rbp), %eax	# n_ops, tmp414
	jl	.L354	#,
	.loc 1 945 0 is_stmt 1
	movq	-344(%rbp), %rax	# insn, tmp415
	movq	32(%rax), %rax	# insn_1->fld[3].rtx, D.14403
	movq	%rax, %rdi	# D.14403,
	call	asm_noperands	#
	testl	%eax, %eax	# D.14401
	jle	.L355	#,
	.loc 1 947 0
	movl	$0, -400(%rbp)	#, i
	jmp	.L356	#
.L359:
	.loc 1 948 0
	movl	-400(%rbp), %eax	# i, tmp417
	cltq
	addq	$208, %rax	#, tmp418
	movl	recog_data+8(,%rax,4), %eax	# recog_data.operand_type, D.14406
	cmpl	$1, %eax	#, D.14406
	jne	.L357	#,
.LBB32:
	.loc 1 950 0
	movl	-400(%rbp), %eax	# i, tmp420
	cltq
	addq	$30, %rax	#, tmp421
	movq	recog_data(,%rax,8), %rax	# recog_data.operand_loc, tmp422
	movq	%rax, -296(%rbp)	# tmp422, loc
	.loc 1 951 0
	movq	-296(%rbp), %rax	# loc, tmp423
	movq	(%rax), %rax	# *loc_159, tmp424
	movq	%rax, -288(%rbp)	# tmp424, op
	.loc 1 952 0
	movl	-392(%rbp), %eax	# alt, tmp426
	movslq	%eax, %rcx	# tmp426, tmp425
	movl	-400(%rbp), %eax	# i, tmp428
	cltq
	addq	%rax, %rax	# tmp430
	movq	%rax, %rdx	# tmp429, tmp431
	salq	$4, %rdx	#, tmp431
	subq	%rax, %rdx	# tmp429, tmp431
	leaq	(%rdx,%rcx), %rax	#, tmp432
	salq	$5, %rax	#, tmp433
	addq	$recog_op_alt, %rax	#, tmp434
	movl	8(%rax), %eax	# recog_op_alt[i_16][alt_34].class, tmp435
	movl	%eax, -356(%rbp)	# tmp435, class
	.loc 1 954 0
	movq	-288(%rbp), %rax	# op, tmp436
	movzwl	(%rax), %eax	# op_160->code, D.14400
	cmpw	$61, %ax	#, D.14400
	jne	.L358	#,
	.loc 1 955 0
	movq	-288(%rbp), %rax	# op, tmp437
	movl	8(%rax), %edx	# op_160->fld[0].rtuint, D.14411
	movq	-288(%rbp), %rax	# op, tmp438
	movl	16(%rax), %eax	# op_160->fld[1].rtuint, D.14411
	cmpl	%eax, %edx	# D.14411, D.14411
	jne	.L358	#,
	.loc 1 956 0
	jmp	.L357	#
.L358:
	.loc 1 959 0
	movl	-392(%rbp), %eax	# alt, tmp440
	movslq	%eax, %rcx	# tmp440, tmp439
	movl	-400(%rbp), %eax	# i, tmp442
	cltq
	addq	%rax, %rax	# tmp444
	movq	%rax, %rdx	# tmp443, tmp445
	salq	$4, %rdx	#, tmp445
	subq	%rax, %rdx	# tmp443, tmp445
	leaq	(%rdx,%rcx), %rax	#, tmp446
	salq	$5, %rax	#, tmp447
	addq	$recog_op_alt+16, %rax	#, tmp448
	movzbl	8(%rax), %eax	#, tmp451
	andl	$1, %eax	#, D.14412
	.loc 1 958 0
	movzbl	%al, %ecx	# D.14412, D.14401
	movl	-356(%rbp), %edx	# class, tmp452
	movq	-296(%rbp), %rsi	# loc, tmp453
	movq	-344(%rbp), %rax	# insn, tmp454
	movl	%ecx, %r9d	# D.14401,
	movl	$1, %r8d	#,
	movl	$5, %ecx	#,
	movq	%rax, %rdi	# tmp454,
	call	scan_rtx	#
.L357:
.LBE32:
	.loc 1 947 0
	addl	$1, -400(%rbp)	#, i
.L356:
	.loc 1 947 0 is_stmt 0 discriminator 1
	movl	-400(%rbp), %eax	# i, tmp455
	cmpl	-388(%rbp), %eax	# n_ops, tmp455
	jl	.L359	#,
	jmp	.L360	#
.L355:
	.loc 1 962 0 is_stmt 1
	movq	-344(%rbp), %rax	# insn, tmp456
	movzwl	(%rax), %eax	# insn_1->code, D.14400
	cmpw	$34, %ax	#, D.14400
	je	.L360	#,
	.loc 1 963 0
	movl	$0, -400(%rbp)	#, i
	jmp	.L361	#
.L367:
.LBB33:
	.loc 1 965 0
	movl	-400(%rbp), %eax	# i, tmp457
	cmpl	-388(%rbp), %eax	# n_ops, tmp457
	jl	.L362	#,
	.loc 1 965 0 is_stmt 0 discriminator 1
	movl	-388(%rbp), %eax	# n_ops, tmp458
	movl	-400(%rbp), %edx	# i, tmp459
	subl	%eax, %edx	# tmp458, D.14401
	movl	%edx, %eax	# D.14401, D.14401
	cltq
	movzbl	recog_data+992(%rax), %eax	# recog_data.dup_num, D.14402
	movsbl	%al, %eax	# D.14402, iftmp.152
	jmp	.L363	#
.L362:
	.loc 1 965 0 discriminator 2
	movl	-400(%rbp), %eax	# i, iftmp.152
.L363:
	.loc 1 965 0 discriminator 3
	movl	%eax, -352(%rbp)	# iftmp.152, opn
	.loc 1 968 0 is_stmt 1 discriminator 3
	movl	-400(%rbp), %eax	# i, tmp461
	cmpl	-388(%rbp), %eax	# n_ops, tmp461
	jge	.L364	#,
	.loc 1 968 0 is_stmt 0 discriminator 1
	movl	-352(%rbp), %eax	# opn, tmp463
	cltq
	addq	$30, %rax	#, tmp464
	movq	recog_data(,%rax,8), %rax	# recog_data.operand_loc, iftmp.153
	jmp	.L365	#
.L364:
	.loc 1 968 0 discriminator 2
	movl	-388(%rbp), %eax	# n_ops, tmp465
	movl	-400(%rbp), %edx	# i, tmp466
	subl	%eax, %edx	# tmp465, D.14401
	movl	%edx, %eax	# D.14401, D.14401
	cltq
	addq	$120, %rax	#, tmp468
	movq	recog_data(,%rax,8), %rax	# recog_data.dup_loc, iftmp.153
.L365:
	.loc 1 966 0 is_stmt 1
	movq	%rax, -280(%rbp)	# iftmp.153, loc
	.loc 1 969 0
	movl	-392(%rbp), %eax	# alt, tmp470
	movslq	%eax, %rcx	# tmp470, tmp469
	movl	-352(%rbp), %eax	# opn, tmp472
	cltq
	addq	%rax, %rax	# tmp474
	movq	%rax, %rdx	# tmp473, tmp475
	salq	$4, %rdx	#, tmp475
	subq	%rax, %rdx	# tmp473, tmp475
	leaq	(%rdx,%rcx), %rax	#, tmp476
	salq	$5, %rax	#, tmp477
	addq	$recog_op_alt, %rax	#, tmp478
	movl	8(%rax), %eax	# recog_op_alt[opn_177][alt_34].class, tmp479
	movl	%eax, -348(%rbp)	# tmp479, class
	.loc 1 971 0
	movl	-352(%rbp), %eax	# opn, tmp481
	cltq
	addq	$208, %rax	#, tmp482
	movl	recog_data+8(,%rax,4), %eax	# recog_data.operand_type, D.14406
	cmpl	$1, %eax	#, D.14406
	jne	.L366	#,
	.loc 1 973 0
	movl	-392(%rbp), %eax	# alt, tmp484
	movslq	%eax, %rcx	# tmp484, tmp483
	movl	-352(%rbp), %eax	# opn, tmp486
	cltq
	addq	%rax, %rax	# tmp488
	movq	%rax, %rdx	# tmp487, tmp489
	salq	$4, %rdx	#, tmp489
	subq	%rax, %rdx	# tmp487, tmp489
	leaq	(%rdx,%rcx), %rax	#, tmp490
	salq	$5, %rax	#, tmp491
	addq	$recog_op_alt+16, %rax	#, tmp492
	movzbl	8(%rax), %eax	#, tmp495
	andl	$1, %eax	#, D.14412
	.loc 1 972 0
	movzbl	%al, %ecx	# D.14412, D.14401
	movl	-348(%rbp), %edx	# class, tmp496
	movq	-280(%rbp), %rsi	# loc, tmp497
	movq	-344(%rbp), %rax	# insn, tmp498
	movl	%ecx, %r9d	# D.14401,
	movl	$1, %r8d	#,
	movl	$5, %ecx	#,
	movq	%rax, %rdi	# tmp498,
	call	scan_rtx	#
.L366:
.LBE33:
	.loc 1 963 0
	addl	$1, -400(%rbp)	#, i
.L361:
	.loc 1 963 0 is_stmt 0 discriminator 1
	movzbl	recog_data+997(%rip), %eax	# recog_data.n_dups, D.14402
	movsbl	%al, %edx	# D.14402, D.14401
	movl	-388(%rbp), %eax	# n_ops, tmp499
	addl	%edx, %eax	# D.14401, D.14401
	cmpl	-400(%rbp), %eax	# i, D.14401
	jg	.L367	#,
.L360:
	.loc 1 978 0 is_stmt 1
	movq	-344(%rbp), %rax	# insn, tmp500
	movq	56(%rax), %rax	# insn_1->fld[6].rtx, tmp501
	movq	%rax, -336(%rbp)	# tmp501, note
	jmp	.L368	#
.L370:
	.loc 1 979 0
	movq	-336(%rbp), %rax	# note, tmp502
	movzbl	2(%rax), %eax	# note_3->mode, D.14413
	cmpb	$10, %al	#, D.14413
	jne	.L369	#,
	.loc 1 980 0
	movq	-336(%rbp), %rax	# note, tmp503
	leaq	8(%rax), %rsi	#, D.14407
	movq	-344(%rbp), %rax	# insn, tmp504
	movl	$0, %r9d	#,
	movl	$0, %r8d	#,
	movl	$3, %ecx	#,
	movl	$0, %edx	#,
	movq	%rax, %rdi	# tmp504,
	call	scan_rtx	#
.L369:
	.loc 1 978 0
	movq	-336(%rbp), %rax	# note, tmp505
	movq	16(%rax), %rax	# note_3->fld[1].rtx, tmp506
	movq	%rax, -336(%rbp)	# tmp506, note
.L368:
	.loc 1 978 0 is_stmt 0 discriminator 1
	cmpq	$0, -336(%rbp)	#, note
	jne	.L370	#,
.L302:
.LBE25:
	.loc 1 983 0 is_stmt 1
	movq	-408(%rbp), %rax	# bb, tmp507
	movq	8(%rax), %rax	# bb_25(D)->end, D.14403
	cmpq	-344(%rbp), %rax	# insn, D.14403
	jne	.L371	#,
	.loc 1 984 0
	jmp	.L375	#
.L371:
	.loc 1 759 0
	movq	-344(%rbp), %rax	# insn, tmp508
	movq	24(%rax), %rax	# insn_1->fld[2].rtx, tmp509
	movq	%rax, -344(%rbp)	# tmp509, insn
	.loc 1 985 0
	jmp	.L373	#
.L375:
	.loc 1 989 0
	movq	closed_chains(%rip), %rax	# closed_chains, D.14414
	.loc 1 990 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	build_def_use, .-build_def_use
	.section	.rodata
.LC39:
	.string	"Register %s (%d):"
.LC40:
	.string	" %d [%s]"
	.text
	.type	dump_def_use_chain, @function
dump_def_use_chain:
.LFB11:
	.loc 1 998 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$40, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)	# chains, chains
	.loc 1 999 0
	jmp	.L377	#
.L401:
.LBB34:
	.loc 1 1001 0
	movq	-40(%rbp), %rax	# chains, tmp110
	movq	%rax, -24(%rbp)	# tmp110, this
	.loc 1 1002 0
	movq	-24(%rbp), %rax	# this, tmp111
	movq	24(%rax), %rax	# this_12->loc, D.14415
	movq	(%rax), %rax	# *_13, D.14416
	movl	8(%rax), %eax	# _14->fld[0].rtuint, D.14417
	movl	%eax, -32(%rbp)	# D.14417, r
	.loc 1 1003 0
	cmpl	$7, -32(%rbp)	#, r
	jle	.L378	#,
	.loc 1 1003 0 is_stmt 0 discriminator 1
	cmpl	$15, -32(%rbp)	#, r
	jle	.L379	#,
.L378:
	.loc 1 1003 0 discriminator 2
	cmpl	$20, -32(%rbp)	#, r
	jle	.L380	#,
	.loc 1 1003 0 discriminator 1
	cmpl	$28, -32(%rbp)	#, r
	jle	.L379	#,
.L380:
	.loc 1 1003 0 discriminator 2
	cmpl	$44, -32(%rbp)	#, r
	jle	.L381	#,
	.loc 1 1003 0 discriminator 1
	cmpl	$52, -32(%rbp)	#, r
	jle	.L379	#,
.L381:
	.loc 1 1003 0 discriminator 2
	cmpl	$28, -32(%rbp)	#, r
	jle	.L382	#,
	.loc 1 1003 0 discriminator 1
	cmpl	$36, -32(%rbp)	#, r
	jg	.L382	#,
.L379:
	movq	-24(%rbp), %rax	# this, tmp112
	movq	24(%rax), %rax	# this_12->loc, D.14415
	movq	(%rax), %rax	# *_52, D.14416
	movzbl	2(%rax), %eax	# _53->mode, D.14418
	movzbl	%al, %eax	# D.14418, D.14419
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.14420
	cmpl	$5, %eax	#, D.14420
	je	.L383	#,
	.loc 1 1003 0 discriminator 2
	movq	-24(%rbp), %rax	# this, tmp114
	movq	24(%rax), %rax	# this_12->loc, D.14415
	movq	(%rax), %rax	# *_57, D.14416
	movzbl	2(%rax), %eax	# _58->mode, D.14418
	movzbl	%al, %eax	# D.14418, D.14419
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.14420
	cmpl	$6, %eax	#, D.14420
	jne	.L384	#,
.L383:
	.loc 1 1003 0 discriminator 1
	movl	$2, %eax	#, iftmp.155
	jmp	.L385	#
.L384:
	movl	$1, %eax	#, iftmp.155
.L385:
	.loc 1 1003 0 discriminator 3
	jmp	.L386	#
.L382:
	.loc 1 1003 0 discriminator 2
	movq	-24(%rbp), %rax	# this, tmp116
	movq	24(%rax), %rax	# this_12->loc, D.14415
	movq	(%rax), %rax	# *_17, D.14416
	movzbl	2(%rax), %eax	# _18->mode, D.14418
	cmpb	$18, %al	#, D.14418
	jne	.L387	#,
	.loc 1 1003 0 discriminator 1
	movl	target_flags(%rip), %eax	# target_flags, target_flags.158
	andl	$33554432, %eax	#, D.14419
	testl	%eax, %eax	# D.14419
	je	.L388	#,
	movl	$2, %eax	#, iftmp.157
	jmp	.L386	#
.L388:
	.loc 1 1003 0 discriminator 2
	movl	$3, %eax	#, iftmp.157
	jmp	.L386	#
.L387:
	movq	-24(%rbp), %rax	# this, tmp117
	movq	24(%rax), %rax	# this_12->loc, D.14415
	movq	(%rax), %rax	# *_25, D.14416
	movzbl	2(%rax), %eax	# _26->mode, D.14418
	cmpb	$24, %al	#, D.14418
	jne	.L391	#,
	.loc 1 1003 0 discriminator 1
	movl	target_flags(%rip), %eax	# target_flags, target_flags.161
	andl	$33554432, %eax	#, D.14419
	testl	%eax, %eax	# D.14419
	je	.L392	#,
	movl	$4, %eax	#, iftmp.160
	jmp	.L386	#
.L392:
	.loc 1 1003 0 discriminator 2
	movl	$6, %eax	#, iftmp.160
	jmp	.L386	#
.L391:
	movq	-24(%rbp), %rax	# this, tmp118
	movq	24(%rax), %rax	# this_12->loc, D.14415
	movq	(%rax), %rax	# *_33, D.14416
	movzbl	2(%rax), %eax	# _34->mode, D.14418
	movzbl	%al, %eax	# D.14418, D.14419
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.14418
	movzbl	%al, %edx	# D.14418, D.14419
	movl	target_flags(%rip), %eax	# target_flags, target_flags.163
	andl	$33554432, %eax	#, D.14419
	testl	%eax, %eax	# D.14419
	je	.L395	#,
	.loc 1 1003 0 discriminator 1
	movl	$8, %eax	#, iftmp.162
	jmp	.L396	#
.L395:
	.loc 1 1003 0 discriminator 2
	movl	$4, %eax	#, iftmp.162
.L396:
	.loc 1 1003 0 discriminator 3
	addl	%edx, %eax	# D.14419, D.14419
	subl	$1, %eax	#, D.14419
	movl	target_flags(%rip), %edx	# target_flags, target_flags.165
	andl	$33554432, %edx	#, D.14419
	testl	%edx, %edx	# D.14419
	je	.L397	#,
	.loc 1 1003 0 discriminator 1
	movl	$8, %ebx	#, iftmp.164
	jmp	.L398	#
.L397:
	.loc 1 1003 0 discriminator 2
	movl	$4, %ebx	#, iftmp.164
.L398:
	.loc 1 1003 0 discriminator 3
	cltd
	idivl	%ebx	# iftmp.164
.L386:
	movl	%eax, -28(%rbp)	# iftmp.154, nregs
	.loc 1 1004 0 is_stmt 1 discriminator 3
	movl	-32(%rbp), %eax	# r, tmp123
	cltq
	movq	reg_names(,%rax,8), %rdx	# reg_names, D.14421
	movq	rtl_dump_file(%rip), %rax	# rtl_dump_file, rtl_dump_file.166
	movl	-28(%rbp), %ecx	# nregs, tmp124
	movl	$.LC39, %esi	#,
	movq	%rax, %rdi	# rtl_dump_file.166,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 1005 0 discriminator 3
	jmp	.L399	#
.L400:
	.loc 1 1008 0
	movq	-24(%rbp), %rax	# this, tmp125
	movl	32(%rax), %eax	# this_2->class, D.14422
	.loc 1 1007 0
	movl	%eax, %eax	# D.14422, tmp126
	movq	reg_class_names(,%rax,8), %rcx	# reg_class_names, D.14421
	movq	-24(%rbp), %rax	# this, tmp127
	movq	16(%rax), %rax	# this_2->insn, D.14416
	movl	8(%rax), %edx	# _70->fld[0].rtint, D.14419
	movq	rtl_dump_file(%rip), %rax	# rtl_dump_file, rtl_dump_file.167
	movl	$.LC40, %esi	#,
	movq	%rax, %rdi	# rtl_dump_file.167,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 1009 0
	movq	-24(%rbp), %rax	# this, tmp128
	movq	8(%rax), %rax	# this_2->next_use, tmp129
	movq	%rax, -24(%rbp)	# tmp129, this
.L399:
	.loc 1 1005 0 discriminator 1
	cmpq	$0, -24(%rbp)	#, this
	jne	.L400	#,
	.loc 1 1011 0
	movq	rtl_dump_file(%rip), %rax	# rtl_dump_file, rtl_dump_file.168
	movq	%rax, %rsi	# rtl_dump_file.168,
	movl	$10, %edi	#,
	call	fputc	#
	.loc 1 1012 0
	movq	-40(%rbp), %rax	# chains, tmp130
	movq	(%rax), %rax	# chains_1->next_chain, tmp131
	movq	%rax, -40(%rbp)	# tmp131, chains
.L377:
.LBE34:
	.loc 1 999 0 discriminator 1
	cmpq	$0, -40(%rbp)	#, chains
	jne	.L401	#,
	.loc 1 1014 0
	addq	$40, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	dump_def_use_chain, .-dump_def_use_chain
	.type	kill_value_regno, @function
kill_value_regno:
.LFB12:
	.loc 1 1074 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)	# regno, regno
	movq	%rsi, -32(%rbp)	# vd, vd
	.loc 1 1077 0
	movq	-32(%rbp), %rcx	# vd, tmp62
	movl	-20(%rbp), %edx	# regno, tmp63
	movq	%rdx, %rax	# tmp63, tmp64
	addq	%rax, %rax	# tmp64
	addq	%rdx, %rax	# tmp63, tmp64
	salq	$2, %rax	#, tmp65
	addq	%rcx, %rax	# tmp62, tmp66
	addq	$4, %rax	#, tmp67
	movl	(%rax), %eax	# vd_3(D)->e[regno_4(D)].oldest_regno, D.14425
	cmpl	-20(%rbp), %eax	# regno, D.14425
	je	.L403	#,
	.loc 1 1079 0
	movq	-32(%rbp), %rcx	# vd, tmp68
	movl	-20(%rbp), %edx	# regno, tmp69
	movq	%rdx, %rax	# tmp69, tmp70
	addq	%rax, %rax	# tmp70
	addq	%rdx, %rax	# tmp69, tmp70
	salq	$2, %rax	#, tmp71
	addq	%rcx, %rax	# tmp68, tmp72
	addq	$4, %rax	#, tmp73
	movl	(%rax), %eax	# vd_3(D)->e[regno_4(D)].oldest_regno, tmp74
	movl	%eax, -8(%rbp)	# tmp74, i
	jmp	.L404	#
.L405:
	.loc 1 1081 0
	movq	-32(%rbp), %rcx	# vd, tmp75
	movl	-8(%rbp), %edx	# i, tmp76
	movq	%rdx, %rax	# tmp76, tmp77
	addq	%rax, %rax	# tmp77
	addq	%rdx, %rax	# tmp76, tmp77
	salq	$2, %rax	#, tmp78
	addq	%rcx, %rax	# tmp75, tmp79
	addq	$8, %rax	#, tmp80
	movl	(%rax), %eax	# vd_3(D)->e[i_1].next_regno, tmp81
	movl	%eax, -8(%rbp)	# tmp81, i
.L404:
	.loc 1 1080 0 discriminator 1
	movq	-32(%rbp), %rcx	# vd, tmp82
	movl	-8(%rbp), %edx	# i, tmp83
	movq	%rdx, %rax	# tmp83, tmp84
	addq	%rax, %rax	# tmp84
	addq	%rdx, %rax	# tmp83, tmp84
	salq	$2, %rax	#, tmp85
	addq	%rcx, %rax	# tmp82, tmp86
	addq	$8, %rax	#, tmp87
	movl	(%rax), %eax	# vd_3(D)->e[i_1].next_regno, D.14425
	.loc 1 1079 0 discriminator 1
	cmpl	-20(%rbp), %eax	# regno, D.14425
	jne	.L405	#,
	.loc 1 1083 0
	movq	-32(%rbp), %rcx	# vd, tmp88
	movl	-20(%rbp), %edx	# regno, tmp89
	movq	%rdx, %rax	# tmp89, tmp90
	addq	%rax, %rax	# tmp90
	addq	%rdx, %rax	# tmp89, tmp90
	salq	$2, %rax	#, tmp91
	addq	%rcx, %rax	# tmp88, tmp92
	addq	$8, %rax	#, tmp93
	movl	(%rax), %ecx	# vd_3(D)->e[regno_4(D)].next_regno, D.14425
	movq	-32(%rbp), %rsi	# vd, tmp94
	movl	-8(%rbp), %edx	# i, tmp95
	movq	%rdx, %rax	# tmp95, tmp96
	addq	%rax, %rax	# tmp96
	addq	%rdx, %rax	# tmp95, tmp96
	salq	$2, %rax	#, tmp97
	addq	%rsi, %rax	# tmp94, tmp98
	addq	$8, %rax	#, tmp99
	movl	%ecx, (%rax)	# D.14425, vd_3(D)->e[i_1].next_regno
	jmp	.L406	#
.L403:
	.loc 1 1085 0
	movq	-32(%rbp), %rcx	# vd, tmp100
	movl	-20(%rbp), %edx	# regno, tmp101
	movq	%rdx, %rax	# tmp101, tmp102
	addq	%rax, %rax	# tmp102
	addq	%rdx, %rax	# tmp101, tmp102
	salq	$2, %rax	#, tmp103
	addq	%rcx, %rax	# tmp100, tmp104
	addq	$8, %rax	#, tmp105
	movl	(%rax), %eax	# vd_3(D)->e[regno_4(D)].next_regno, tmp106
	movl	%eax, -4(%rbp)	# tmp106, next
	cmpl	$-1, -4(%rbp)	#, next
	je	.L406	#,
	.loc 1 1087 0
	movl	-4(%rbp), %eax	# next, tmp107
	movl	%eax, -8(%rbp)	# tmp107, i
	jmp	.L407	#
.L408:
	.loc 1 1088 0 discriminator 2
	movq	-32(%rbp), %rcx	# vd, tmp108
	movl	-8(%rbp), %edx	# i, tmp109
	movq	%rdx, %rax	# tmp109, tmp110
	addq	%rax, %rax	# tmp110
	addq	%rdx, %rax	# tmp109, tmp110
	salq	$2, %rax	#, tmp111
	addq	%rcx, %rax	# tmp108, tmp112
	leaq	4(%rax), %rdx	#, tmp113
	movl	-4(%rbp), %eax	# next, tmp114
	movl	%eax, (%rdx)	# tmp114, vd_3(D)->e[i_2].oldest_regno
	.loc 1 1087 0 discriminator 2
	movq	-32(%rbp), %rcx	# vd, tmp115
	movl	-8(%rbp), %edx	# i, tmp116
	movq	%rdx, %rax	# tmp116, tmp117
	addq	%rax, %rax	# tmp117
	addq	%rdx, %rax	# tmp116, tmp117
	salq	$2, %rax	#, tmp118
	addq	%rcx, %rax	# tmp115, tmp119
	addq	$8, %rax	#, tmp120
	movl	(%rax), %eax	# vd_3(D)->e[i_2].next_regno, tmp121
	movl	%eax, -8(%rbp)	# tmp121, i
.L407:
	.loc 1 1087 0 is_stmt 0 discriminator 1
	cmpl	$-1, -8(%rbp)	#, i
	jne	.L408	#,
.L406:
	.loc 1 1091 0 is_stmt 1
	movq	-32(%rbp), %rcx	# vd, tmp122
	movl	-20(%rbp), %edx	# regno, tmp123
	movq	%rdx, %rax	# tmp123, tmp124
	addq	%rax, %rax	# tmp124
	addq	%rdx, %rax	# tmp123, tmp124
	salq	$2, %rax	#, tmp125
	addq	%rcx, %rax	# tmp122, tmp126
	movl	$0, (%rax)	#, vd_3(D)->e[regno_4(D)].mode
	.loc 1 1092 0
	movq	-32(%rbp), %rcx	# vd, tmp127
	movl	-20(%rbp), %edx	# regno, tmp128
	movq	%rdx, %rax	# tmp128, tmp129
	addq	%rax, %rax	# tmp129
	addq	%rdx, %rax	# tmp128, tmp129
	salq	$2, %rax	#, tmp130
	addq	%rcx, %rax	# tmp127, tmp131
	leaq	4(%rax), %rdx	#, tmp132
	movl	-20(%rbp), %eax	# regno, tmp133
	movl	%eax, (%rdx)	# tmp133, vd_3(D)->e[regno_4(D)].oldest_regno
	.loc 1 1093 0
	movq	-32(%rbp), %rcx	# vd, tmp134
	movl	-20(%rbp), %edx	# regno, tmp135
	movq	%rdx, %rax	# tmp135, tmp136
	addq	%rax, %rax	# tmp136
	addq	%rdx, %rax	# tmp135, tmp136
	salq	$2, %rax	#, tmp137
	addq	%rcx, %rax	# tmp134, tmp138
	addq	$8, %rax	#, tmp139
	movl	$-1, (%rax)	#, vd_3(D)->e[regno_4(D)].next_regno
	.loc 1 1098 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	kill_value_regno, .-kill_value_regno
	.type	kill_value, @function
kill_value:
.LFB13:
	.loc 1 1107 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$40, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)	# x, x
	movq	%rsi, -48(%rbp)	# vd, vd
	.loc 1 1113 0
	movq	-40(%rbp), %rax	# x, tmp136
	movzwl	(%rax), %eax	# x_22(D)->code, D.14426
	cmpw	$63, %ax	#, D.14426
	jne	.L410	#,
	.loc 1 1114 0
	movq	-40(%rbp), %rax	# x, tmp137
	movl	16(%rax), %ecx	# x_22(D)->fld[1].rtuint, D.14427
	.loc 1 1115 0
	movq	-40(%rbp), %rax	# x, tmp138
	movq	8(%rax), %rax	# x_22(D)->fld[0].rtx, D.14428
	movzbl	2(%rax), %eax	# _25->mode, D.14429
	.loc 1 1114 0
	movzbl	%al, %edx	# D.14429, D.14430
	movq	-40(%rbp), %rax	# x, tmp139
	movq	8(%rax), %rsi	# x_22(D)->fld[0].rtx, D.14428
	movq	-40(%rbp), %rax	# x, tmp140
	movzbl	2(%rax), %eax	# x_22(D)->mode, D.14429
	movzbl	%al, %eax	# D.14429, D.14430
	movl	%eax, %edi	# D.14430,
	call	simplify_subreg	#
	movq	%rax, -40(%rbp)	# tmp141, x
.L410:
	.loc 1 1116 0
	movq	-40(%rbp), %rax	# x, tmp142
	movzwl	(%rax), %eax	# x_1->code, D.14426
	cmpw	$61, %ax	#, D.14426
	jne	.L409	#,
.LBB35:
	.loc 1 1118 0
	movq	-40(%rbp), %rax	# x, tmp143
	movl	8(%rax), %eax	# x_1->fld[0].rtuint, tmp144
	movl	%eax, -24(%rbp)	# tmp144, regno
	.loc 1 1119 0
	cmpl	$7, -24(%rbp)	#, regno
	jbe	.L412	#,
	.loc 1 1119 0 is_stmt 0 discriminator 1
	cmpl	$15, -24(%rbp)	#, regno
	jbe	.L413	#,
.L412:
	.loc 1 1119 0 discriminator 2
	cmpl	$20, -24(%rbp)	#, regno
	jbe	.L414	#,
	.loc 1 1119 0 discriminator 1
	cmpl	$28, -24(%rbp)	#, regno
	jbe	.L413	#,
.L414:
	.loc 1 1119 0 discriminator 2
	cmpl	$44, -24(%rbp)	#, regno
	jbe	.L415	#,
	.loc 1 1119 0 discriminator 1
	cmpl	$52, -24(%rbp)	#, regno
	jbe	.L413	#,
.L415:
	.loc 1 1119 0 discriminator 2
	cmpl	$28, -24(%rbp)	#, regno
	jbe	.L416	#,
	.loc 1 1119 0 discriminator 1
	cmpl	$36, -24(%rbp)	#, regno
	ja	.L416	#,
.L413:
	movq	-40(%rbp), %rax	# x, tmp145
	movzbl	2(%rax), %eax	# x_1->mode, D.14429
	movzbl	%al, %eax	# D.14429, D.14431
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.14432
	cmpl	$5, %eax	#, D.14432
	je	.L417	#,
	.loc 1 1119 0 discriminator 4
	movq	-40(%rbp), %rax	# x, tmp147
	movzbl	2(%rax), %eax	# x_1->mode, D.14429
	movzbl	%al, %eax	# D.14429, D.14431
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.14432
	cmpl	$6, %eax	#, D.14432
	jne	.L418	#,
.L417:
	.loc 1 1119 0 discriminator 3
	movl	$2, %eax	#, iftmp.170
	jmp	.L420	#
.L418:
	.loc 1 1119 0 discriminator 1
	movl	$1, %eax	#, iftmp.170
	jmp	.L420	#
.L416:
	.loc 1 1119 0 discriminator 2
	movq	-40(%rbp), %rax	# x, tmp149
	movzbl	2(%rax), %eax	# x_1->mode, D.14429
	cmpb	$18, %al	#, D.14429
	jne	.L421	#,
	.loc 1 1119 0 discriminator 7
	movl	target_flags(%rip), %eax	# target_flags, target_flags.173
	andl	$33554432, %eax	#, D.14431
	testl	%eax, %eax	# D.14431
	je	.L422	#,
	.loc 1 1119 0 discriminator 9
	movl	$2, %eax	#, iftmp.172
	jmp	.L420	#
.L422:
	.loc 1 1119 0 discriminator 10
	movl	$3, %eax	#, iftmp.172
	jmp	.L420	#
.L421:
	.loc 1 1119 0 discriminator 8
	movq	-40(%rbp), %rax	# x, tmp150
	movzbl	2(%rax), %eax	# x_1->mode, D.14429
	cmpb	$24, %al	#, D.14429
	jne	.L425	#,
	.loc 1 1119 0 discriminator 11
	movl	target_flags(%rip), %eax	# target_flags, target_flags.176
	andl	$33554432, %eax	#, D.14431
	testl	%eax, %eax	# D.14431
	je	.L426	#,
	.loc 1 1119 0 discriminator 13
	movl	$4, %eax	#, iftmp.175
	jmp	.L420	#
.L426:
	.loc 1 1119 0 discriminator 14
	movl	$6, %eax	#, iftmp.175
	jmp	.L420	#
.L425:
	.loc 1 1119 0 discriminator 12
	movq	-40(%rbp), %rax	# x, tmp151
	movzbl	2(%rax), %eax	# x_1->mode, D.14429
	movzbl	%al, %eax	# D.14429, D.14431
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.14429
	movzbl	%al, %edx	# D.14429, D.14431
	movl	target_flags(%rip), %eax	# target_flags, target_flags.178
	andl	$33554432, %eax	#, D.14431
	testl	%eax, %eax	# D.14431
	je	.L429	#,
	.loc 1 1119 0 discriminator 1
	movl	$8, %eax	#, iftmp.177
	jmp	.L430	#
.L429:
	.loc 1 1119 0 discriminator 2
	movl	$4, %eax	#, iftmp.177
.L430:
	.loc 1 1119 0 discriminator 3
	addl	%edx, %eax	# D.14431, D.14431
	subl	$1, %eax	#, D.14431
	movl	target_flags(%rip), %edx	# target_flags, target_flags.180
	andl	$33554432, %edx	#, D.14431
	testl	%edx, %edx	# D.14431
	je	.L431	#,
	.loc 1 1119 0 discriminator 1
	movl	$8, %ebx	#, iftmp.179
	jmp	.L432	#
.L431:
	.loc 1 1119 0 discriminator 2
	movl	$4, %ebx	#, iftmp.179
.L432:
	.loc 1 1119 0 discriminator 3
	cltd
	idivl	%ebx	# iftmp.179
.L420:
	.loc 1 1119 0 discriminator 6
	movl	%eax, -20(%rbp)	# iftmp.169, n
	.loc 1 1123 0 is_stmt 1 discriminator 6
	movl	$0, -32(%rbp)	#, i
	jmp	.L433	#
.L434:
	.loc 1 1124 0 discriminator 2
	movl	-32(%rbp), %eax	# i, tmp155
	movl	-24(%rbp), %edx	# regno, tmp156
	addl	%eax, %edx	# tmp155, D.14427
	movq	-48(%rbp), %rax	# vd, tmp157
	movq	%rax, %rsi	# tmp157,
	movl	%edx, %edi	# D.14427,
	call	kill_value_regno	#
	.loc 1 1123 0 discriminator 2
	addl	$1, -32(%rbp)	#, i
.L433:
	.loc 1 1123 0 is_stmt 0 discriminator 1
	movl	-32(%rbp), %eax	# i, tmp158
	cmpl	-20(%rbp), %eax	# n, tmp158
	jb	.L434	#,
	.loc 1 1127 0 is_stmt 1
	movq	-48(%rbp), %rax	# vd, tmp159
	movl	636(%rax), %eax	# vd_76(D)->max_value_regs, D.14427
	cmpl	-24(%rbp), %eax	# regno, D.14427
	jbe	.L435	#,
	.loc 1 1128 0
	movl	$0, -28(%rbp)	#, j
	.loc 1 1131 0
	jmp	.L437	#
.L435:
	.loc 1 1130 0
	movq	-48(%rbp), %rax	# vd, tmp160
	movl	636(%rax), %eax	# vd_76(D)->max_value_regs, D.14427
	movl	-24(%rbp), %edx	# regno, tmp164
	subl	%eax, %edx	# D.14427, tmp163
	movl	%edx, %eax	# tmp163, tmp163
	movl	%eax, -28(%rbp)	# tmp163, j
	.loc 1 1131 0
	jmp	.L437	#
.L463:
	.loc 1 1133 0
	movq	-48(%rbp), %rcx	# vd, tmp165
	movl	-28(%rbp), %edx	# j, tmp166
	movq	%rdx, %rax	# tmp166, tmp167
	addq	%rax, %rax	# tmp167
	addq	%rdx, %rax	# tmp166, tmp167
	salq	$2, %rax	#, tmp168
	addq	%rcx, %rax	# tmp165, tmp169
	movl	(%rax), %eax	# vd_76(D)->e[j_5].mode, D.14430
	testl	%eax, %eax	# D.14430
	jne	.L438	#,
	.loc 1 1134 0
	jmp	.L439	#
.L438:
	.loc 1 1135 0
	cmpl	$7, -28(%rbp)	#, j
	jbe	.L440	#,
	.loc 1 1135 0 is_stmt 0 discriminator 1
	cmpl	$15, -28(%rbp)	#, j
	jbe	.L441	#,
.L440:
	.loc 1 1135 0 discriminator 2
	cmpl	$20, -28(%rbp)	#, j
	jbe	.L442	#,
	.loc 1 1135 0 discriminator 1
	cmpl	$28, -28(%rbp)	#, j
	jbe	.L441	#,
.L442:
	.loc 1 1135 0 discriminator 2
	cmpl	$44, -28(%rbp)	#, j
	jbe	.L443	#,
	.loc 1 1135 0 discriminator 1
	cmpl	$52, -28(%rbp)	#, j
	jbe	.L441	#,
.L443:
	.loc 1 1135 0 discriminator 2
	cmpl	$28, -28(%rbp)	#, j
	jbe	.L444	#,
	.loc 1 1135 0 discriminator 1
	cmpl	$36, -28(%rbp)	#, j
	ja	.L444	#,
.L441:
	movq	-48(%rbp), %rcx	# vd, tmp170
	movl	-28(%rbp), %edx	# j, tmp171
	movq	%rdx, %rax	# tmp171, tmp172
	addq	%rax, %rax	# tmp172
	addq	%rdx, %rax	# tmp171, tmp172
	salq	$2, %rax	#, tmp173
	addq	%rcx, %rax	# tmp170, tmp174
	movl	(%rax), %eax	# vd_76(D)->e[j_5].mode, D.14430
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.14432
	cmpl	$5, %eax	#, D.14432
	je	.L445	#,
	.loc 1 1135 0 discriminator 4
	movq	-48(%rbp), %rcx	# vd, tmp176
	movl	-28(%rbp), %edx	# j, tmp177
	movq	%rdx, %rax	# tmp177, tmp178
	addq	%rax, %rax	# tmp178
	addq	%rdx, %rax	# tmp177, tmp178
	salq	$2, %rax	#, tmp179
	addq	%rcx, %rax	# tmp176, tmp180
	movl	(%rax), %eax	# vd_76(D)->e[j_5].mode, D.14430
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.14432
	cmpl	$6, %eax	#, D.14432
	jne	.L446	#,
.L445:
	.loc 1 1135 0 discriminator 3
	movl	$2, %eax	#, iftmp.182
	jmp	.L448	#
.L446:
	.loc 1 1135 0 discriminator 1
	movl	$1, %eax	#, iftmp.182
	jmp	.L448	#
.L444:
	.loc 1 1135 0 discriminator 2
	movq	-48(%rbp), %rcx	# vd, tmp182
	movl	-28(%rbp), %edx	# j, tmp183
	movq	%rdx, %rax	# tmp183, tmp184
	addq	%rax, %rax	# tmp184
	addq	%rdx, %rax	# tmp183, tmp184
	salq	$2, %rax	#, tmp185
	addq	%rcx, %rax	# tmp182, tmp186
	movl	(%rax), %eax	# vd_76(D)->e[j_5].mode, D.14430
	cmpl	$18, %eax	#, D.14430
	jne	.L449	#,
	.loc 1 1135 0 discriminator 7
	movl	target_flags(%rip), %eax	# target_flags, target_flags.185
	andl	$33554432, %eax	#, D.14431
	testl	%eax, %eax	# D.14431
	je	.L450	#,
	.loc 1 1135 0 discriminator 9
	movl	$2, %eax	#, iftmp.184
	jmp	.L448	#
.L450:
	.loc 1 1135 0 discriminator 10
	movl	$3, %eax	#, iftmp.184
	jmp	.L448	#
.L449:
	.loc 1 1135 0 discriminator 8
	movq	-48(%rbp), %rcx	# vd, tmp187
	movl	-28(%rbp), %edx	# j, tmp188
	movq	%rdx, %rax	# tmp188, tmp189
	addq	%rax, %rax	# tmp189
	addq	%rdx, %rax	# tmp188, tmp189
	salq	$2, %rax	#, tmp190
	addq	%rcx, %rax	# tmp187, tmp191
	movl	(%rax), %eax	# vd_76(D)->e[j_5].mode, D.14430
	cmpl	$24, %eax	#, D.14430
	jne	.L453	#,
	.loc 1 1135 0 discriminator 11
	movl	target_flags(%rip), %eax	# target_flags, target_flags.188
	andl	$33554432, %eax	#, D.14431
	testl	%eax, %eax	# D.14431
	je	.L454	#,
	.loc 1 1135 0 discriminator 13
	movl	$4, %eax	#, iftmp.187
	jmp	.L448	#
.L454:
	.loc 1 1135 0 discriminator 14
	movl	$6, %eax	#, iftmp.187
	jmp	.L448	#
.L453:
	.loc 1 1135 0 discriminator 12
	movq	-48(%rbp), %rcx	# vd, tmp192
	movl	-28(%rbp), %edx	# j, tmp193
	movq	%rdx, %rax	# tmp193, tmp194
	addq	%rax, %rax	# tmp194
	addq	%rdx, %rax	# tmp193, tmp194
	salq	$2, %rax	#, tmp195
	addq	%rcx, %rax	# tmp192, tmp196
	movl	(%rax), %eax	# vd_76(D)->e[j_5].mode, D.14430
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.14429
	movzbl	%al, %edx	# D.14429, D.14431
	movl	target_flags(%rip), %eax	# target_flags, target_flags.190
	andl	$33554432, %eax	#, D.14431
	testl	%eax, %eax	# D.14431
	je	.L457	#,
	.loc 1 1135 0 discriminator 1
	movl	$8, %eax	#, iftmp.189
	jmp	.L458	#
.L457:
	.loc 1 1135 0 discriminator 2
	movl	$4, %eax	#, iftmp.189
.L458:
	.loc 1 1135 0 discriminator 3
	addl	%edx, %eax	# D.14431, D.14431
	subl	$1, %eax	#, D.14431
	movl	target_flags(%rip), %edx	# target_flags, target_flags.192
	andl	$33554432, %edx	#, D.14431
	testl	%edx, %edx	# D.14431
	je	.L459	#,
	.loc 1 1135 0 discriminator 1
	movl	$8, %ebx	#, iftmp.191
	jmp	.L460	#
.L459:
	.loc 1 1135 0 discriminator 2
	movl	$4, %ebx	#, iftmp.191
.L460:
	.loc 1 1135 0 discriminator 3
	cltd
	idivl	%ebx	# iftmp.191
.L448:
	.loc 1 1135 0 discriminator 6
	movl	%eax, -20(%rbp)	# iftmp.181, n
	.loc 1 1136 0 is_stmt 1 discriminator 6
	movl	-20(%rbp), %eax	# n, tmp200
	movl	-28(%rbp), %edx	# j, tmp201
	addl	%edx, %eax	# tmp201, D.14427
	cmpl	-24(%rbp), %eax	# regno, D.14427
	jbe	.L439	#,
	.loc 1 1137 0
	movl	$0, -32(%rbp)	#, i
	jmp	.L461	#
.L462:
	.loc 1 1138 0 discriminator 2
	movl	-32(%rbp), %eax	# i, tmp202
	movl	-28(%rbp), %edx	# j, tmp203
	addl	%eax, %edx	# tmp202, D.14427
	movq	-48(%rbp), %rax	# vd, tmp204
	movq	%rax, %rsi	# tmp204,
	movl	%edx, %edi	# D.14427,
	call	kill_value_regno	#
	.loc 1 1137 0 discriminator 2
	addl	$1, -32(%rbp)	#, i
.L461:
	.loc 1 1137 0 is_stmt 0 discriminator 1
	movl	-32(%rbp), %eax	# i, tmp205
	cmpl	-20(%rbp), %eax	# n, tmp205
	jb	.L462	#,
.L439:
	.loc 1 1131 0 is_stmt 1
	addl	$1, -28(%rbp)	#, j
.L437:
	.loc 1 1131 0 is_stmt 0 discriminator 1
	movl	-28(%rbp), %eax	# j, tmp206
	cmpl	-24(%rbp), %eax	# regno, tmp206
	jb	.L463	#,
.L409:
.LBE35:
	.loc 1 1141 0 is_stmt 1
	addq	$40, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	kill_value, .-kill_value
	.type	set_value_regno, @function
set_value_regno:
.LFB14:
	.loc 1 1150 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	.cfi_offset 3, -24
	movl	%edi, -28(%rbp)	# regno, regno
	movl	%esi, -32(%rbp)	# mode, mode
	movq	%rdx, -40(%rbp)	# vd, vd
	.loc 1 1153 0
	movq	-40(%rbp), %rcx	# vd, tmp86
	movl	-28(%rbp), %edx	# regno, tmp87
	movq	%rdx, %rax	# tmp87, tmp88
	addq	%rax, %rax	# tmp88
	addq	%rdx, %rax	# tmp87, tmp88
	salq	$2, %rax	#, tmp89
	leaq	(%rcx,%rax), %rdx	#, tmp90
	movl	-32(%rbp), %eax	# mode, tmp91
	movl	%eax, (%rdx)	# tmp91, vd_9(D)->e[regno_10(D)].mode
	.loc 1 1155 0
	cmpl	$7, -28(%rbp)	#, regno
	jbe	.L465	#,
	.loc 1 1155 0 is_stmt 0 discriminator 1
	cmpl	$15, -28(%rbp)	#, regno
	jbe	.L466	#,
.L465:
	.loc 1 1155 0 discriminator 2
	cmpl	$20, -28(%rbp)	#, regno
	jbe	.L467	#,
	.loc 1 1155 0 discriminator 1
	cmpl	$28, -28(%rbp)	#, regno
	jbe	.L466	#,
.L467:
	.loc 1 1155 0 discriminator 2
	cmpl	$44, -28(%rbp)	#, regno
	jbe	.L468	#,
	.loc 1 1155 0 discriminator 1
	cmpl	$52, -28(%rbp)	#, regno
	jbe	.L466	#,
.L468:
	.loc 1 1155 0 discriminator 2
	cmpl	$28, -28(%rbp)	#, regno
	jbe	.L469	#,
	.loc 1 1155 0 discriminator 1
	cmpl	$36, -28(%rbp)	#, regno
	ja	.L469	#,
.L466:
	movl	-32(%rbp), %eax	# mode, mode.195
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.14435
	cmpl	$5, %eax	#, D.14435
	je	.L470	#,
	.loc 1 1155 0 discriminator 4
	movl	-32(%rbp), %eax	# mode, mode.196
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.14435
	cmpl	$6, %eax	#, D.14435
	jne	.L471	#,
.L470:
	.loc 1 1155 0 discriminator 3
	movl	$2, %eax	#, iftmp.194
	jmp	.L473	#
.L471:
	.loc 1 1155 0 discriminator 1
	movl	$1, %eax	#, iftmp.194
	jmp	.L473	#
.L469:
	.loc 1 1155 0 discriminator 2
	cmpl	$18, -32(%rbp)	#, mode
	jne	.L474	#,
	.loc 1 1155 0 discriminator 7
	movl	target_flags(%rip), %eax	# target_flags, target_flags.199
	andl	$33554432, %eax	#, D.14433
	testl	%eax, %eax	# D.14433
	je	.L475	#,
	.loc 1 1155 0 discriminator 9
	movl	$2, %eax	#, iftmp.198
	jmp	.L473	#
.L475:
	.loc 1 1155 0 discriminator 10
	movl	$3, %eax	#, iftmp.198
	jmp	.L473	#
.L474:
	.loc 1 1155 0 discriminator 8
	cmpl	$24, -32(%rbp)	#, mode
	jne	.L478	#,
	.loc 1 1155 0 discriminator 11
	movl	target_flags(%rip), %eax	# target_flags, target_flags.202
	andl	$33554432, %eax	#, D.14433
	testl	%eax, %eax	# D.14433
	je	.L479	#,
	.loc 1 1155 0 discriminator 13
	movl	$4, %eax	#, iftmp.201
	jmp	.L473	#
.L479:
	.loc 1 1155 0 discriminator 14
	movl	$6, %eax	#, iftmp.201
	jmp	.L473	#
.L478:
	.loc 1 1155 0 discriminator 12
	movl	-32(%rbp), %eax	# mode, mode.203
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.14434
	movzbl	%al, %edx	# D.14434, D.14433
	movl	target_flags(%rip), %eax	# target_flags, target_flags.205
	andl	$33554432, %eax	#, D.14433
	testl	%eax, %eax	# D.14433
	je	.L482	#,
	.loc 1 1155 0 discriminator 1
	movl	$8, %eax	#, iftmp.204
	jmp	.L483	#
.L482:
	.loc 1 1155 0 discriminator 2
	movl	$4, %eax	#, iftmp.204
.L483:
	.loc 1 1155 0 discriminator 3
	addl	%edx, %eax	# D.14433, D.14433
	subl	$1, %eax	#, D.14433
	movl	target_flags(%rip), %edx	# target_flags, target_flags.207
	andl	$33554432, %edx	#, D.14433
	testl	%edx, %edx	# D.14433
	je	.L484	#,
	.loc 1 1155 0 discriminator 1
	movl	$8, %ebx	#, iftmp.206
	jmp	.L485	#
.L484:
	.loc 1 1155 0 discriminator 2
	movl	$4, %ebx	#, iftmp.206
.L485:
	.loc 1 1155 0 discriminator 3
	cltd
	idivl	%ebx	# iftmp.206
.L473:
	.loc 1 1155 0 discriminator 6
	movl	%eax, -12(%rbp)	# iftmp.193, nregs
	.loc 1 1156 0 is_stmt 1 discriminator 6
	movq	-40(%rbp), %rax	# vd, tmp97
	movl	636(%rax), %eax	# vd_9(D)->max_value_regs, D.14436
	cmpl	-12(%rbp), %eax	# nregs, D.14436
	jae	.L464	#,
	.loc 1 1157 0
	movq	-40(%rbp), %rax	# vd, tmp98
	movl	-12(%rbp), %edx	# nregs, tmp99
	movl	%edx, 636(%rax)	# tmp99, vd_9(D)->max_value_regs
.L464:
	.loc 1 1158 0
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	set_value_regno, .-set_value_regno
	.type	init_value_data, @function
init_value_data:
.LFB15:
	.loc 1 1165 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# vd, vd
	.loc 1 1167 0
	movl	$0, -4(%rbp)	#, i
	jmp	.L488	#
.L489:
	.loc 1 1169 0 discriminator 2
	movq	-24(%rbp), %rcx	# vd, tmp60
	movl	-4(%rbp), %eax	# i, tmp62
	movslq	%eax, %rdx	# tmp62, tmp61
	movq	%rdx, %rax	# tmp61, tmp63
	addq	%rax, %rax	# tmp63
	addq	%rdx, %rax	# tmp61, tmp63
	salq	$2, %rax	#, tmp64
	addq	%rcx, %rax	# tmp60, tmp65
	movl	$0, (%rax)	#, vd_3(D)->e[i_1].mode
	.loc 1 1170 0 discriminator 2
	movl	-4(%rbp), %ecx	# i, i.208
	movq	-24(%rbp), %rsi	# vd, tmp66
	movl	-4(%rbp), %eax	# i, tmp68
	movslq	%eax, %rdx	# tmp68, tmp67
	movq	%rdx, %rax	# tmp67, tmp69
	addq	%rax, %rax	# tmp69
	addq	%rdx, %rax	# tmp67, tmp69
	salq	$2, %rax	#, tmp70
	addq	%rsi, %rax	# tmp66, tmp71
	addq	$4, %rax	#, tmp72
	movl	%ecx, (%rax)	# i.208, vd_3(D)->e[i_1].oldest_regno
	.loc 1 1171 0 discriminator 2
	movq	-24(%rbp), %rcx	# vd, tmp73
	movl	-4(%rbp), %eax	# i, tmp75
	movslq	%eax, %rdx	# tmp75, tmp74
	movq	%rdx, %rax	# tmp74, tmp76
	addq	%rax, %rax	# tmp76
	addq	%rdx, %rax	# tmp74, tmp76
	salq	$2, %rax	#, tmp77
	addq	%rcx, %rax	# tmp73, tmp78
	addq	$8, %rax	#, tmp79
	movl	$-1, (%rax)	#, vd_3(D)->e[i_1].next_regno
	.loc 1 1167 0 discriminator 2
	addl	$1, -4(%rbp)	#, i
.L488:
	.loc 1 1167 0 is_stmt 0 discriminator 1
	cmpl	$52, -4(%rbp)	#, i
	jle	.L489	#,
	.loc 1 1173 0 is_stmt 1
	movq	-24(%rbp), %rax	# vd, tmp80
	movl	$0, 636(%rax)	#, vd_3(D)->max_value_regs
	.loc 1 1174 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	init_value_data, .-init_value_data
	.type	kill_clobbered_value, @function
kill_clobbered_value:
.LFB16:
	.loc 1 1183 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# x, x
	movq	%rsi, -32(%rbp)	# set, set
	movq	%rdx, -40(%rbp)	# data, data
	.loc 1 1184 0
	movq	-40(%rbp), %rax	# data, tmp60
	movq	%rax, -8(%rbp)	# tmp60, vd
	.loc 1 1185 0
	movq	-32(%rbp), %rax	# set, tmp61
	movzwl	(%rax), %eax	# set_3(D)->code, D.14437
	cmpw	$49, %ax	#, D.14437
	jne	.L490	#,
	.loc 1 1186 0
	movq	-8(%rbp), %rdx	# vd, tmp62
	movq	-24(%rbp), %rax	# x, tmp63
	movq	%rdx, %rsi	# tmp62,
	movq	%rax, %rdi	# tmp63,
	call	kill_value	#
.L490:
	.loc 1 1187 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	kill_clobbered_value, .-kill_clobbered_value
	.type	kill_set_value, @function
kill_set_value:
.LFB17:
	.loc 1 1197 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# x, x
	movq	%rsi, -32(%rbp)	# set, set
	movq	%rdx, -40(%rbp)	# data, data
	.loc 1 1198 0
	movq	-40(%rbp), %rax	# data, tmp64
	movq	%rax, -8(%rbp)	# tmp64, vd
	.loc 1 1199 0
	movq	-32(%rbp), %rax	# set, tmp65
	movzwl	(%rax), %eax	# set_3(D)->code, D.14438
	cmpw	$49, %ax	#, D.14438
	je	.L492	#,
	.loc 1 1201 0
	movq	-8(%rbp), %rdx	# vd, tmp66
	movq	-24(%rbp), %rax	# x, tmp67
	movq	%rdx, %rsi	# tmp66,
	movq	%rax, %rdi	# tmp67,
	call	kill_value	#
	.loc 1 1202 0
	movq	-24(%rbp), %rax	# x, tmp68
	movzwl	(%rax), %eax	# x_5(D)->code, D.14438
	cmpw	$61, %ax	#, D.14438
	jne	.L492	#,
	.loc 1 1203 0
	movq	-24(%rbp), %rax	# x, tmp69
	movzbl	2(%rax), %eax	# x_5(D)->mode, D.14439
	movzbl	%al, %ecx	# D.14439, D.14440
	movq	-24(%rbp), %rax	# x, tmp70
	movl	8(%rax), %eax	# x_5(D)->fld[0].rtuint, D.14441
	movq	-8(%rbp), %rdx	# vd, tmp71
	movl	%ecx, %esi	# D.14440,
	movl	%eax, %edi	# D.14441,
	call	set_value_regno	#
.L492:
	.loc 1 1205 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	kill_set_value, .-kill_set_value
	.type	kill_autoinc_value, @function
kill_autoinc_value:
.LFB18:
	.loc 1 1215 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# px, px
	movq	%rsi, -32(%rbp)	# data, data
	.loc 1 1216 0
	movq	-24(%rbp), %rax	# px, tmp68
	movq	(%rax), %rax	# *px_3(D), tmp69
	movq	%rax, -16(%rbp)	# tmp69, x
	.loc 1 1217 0
	movq	-32(%rbp), %rax	# data, tmp70
	movq	%rax, -8(%rbp)	# tmp70, vd
	.loc 1 1219 0
	movq	-16(%rbp), %rax	# x, tmp71
	movzwl	(%rax), %eax	# x_4->code, D.14443
	movzwl	%ax, %eax	# D.14443, D.14442
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.14444
	cmpb	$97, %al	#, D.14444
	jne	.L495	#,
	.loc 1 1221 0
	movq	-16(%rbp), %rax	# x, tmp73
	movq	8(%rax), %rax	# x_4->fld[0].rtx, tmp74
	movq	%rax, -16(%rbp)	# tmp74, x
	.loc 1 1222 0
	movq	-8(%rbp), %rdx	# vd, tmp75
	movq	-16(%rbp), %rax	# x, tmp76
	movq	%rdx, %rsi	# tmp75,
	movq	%rax, %rdi	# tmp76,
	call	kill_value	#
	.loc 1 1223 0
	movl	target_flags(%rip), %eax	# target_flags, target_flags.210
	andl	$33554432, %eax	#, D.14442
	testl	%eax, %eax	# D.14442
	je	.L496	#,
	.loc 1 1223 0 is_stmt 0 discriminator 1
	movl	$5, %eax	#, iftmp.209
	jmp	.L497	#
.L496:
	.loc 1 1223 0 discriminator 2
	movl	$4, %eax	#, iftmp.209
.L497:
	.loc 1 1223 0 discriminator 3
	movq	-16(%rbp), %rdx	# x, tmp77
	movl	8(%rdx), %ecx	# x_10->fld[0].rtuint, D.14445
	movq	-8(%rbp), %rdx	# vd, tmp78
	movl	%eax, %esi	# iftmp.209,
	movl	%ecx, %edi	# D.14445,
	call	set_value_regno	#
	.loc 1 1224 0 is_stmt 1 discriminator 3
	movl	$-1, %eax	#, D.14442
	jmp	.L498	#
.L495:
	.loc 1 1227 0
	movl	$0, %eax	#, D.14442
.L498:
	.loc 1 1228 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	kill_autoinc_value, .-kill_autoinc_value
	.type	copy_value, @function
copy_value:
.LFB19:
	.loc 1 1238 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$56, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -48(%rbp)	# dest, dest
	movq	%rsi, -56(%rbp)	# src, src
	movq	%rdx, -64(%rbp)	# vd, vd
	.loc 1 1239 0
	movq	-48(%rbp), %rax	# dest, tmp159
	movl	8(%rax), %eax	# dest_26(D)->fld[0].rtuint, tmp160
	movl	%eax, -24(%rbp)	# tmp160, dr
	.loc 1 1240 0
	movq	-56(%rbp), %rax	# src, tmp161
	movl	8(%rax), %eax	# src_28(D)->fld[0].rtuint, tmp162
	movl	%eax, -20(%rbp)	# tmp162, sr
	.loc 1 1246 0
	movl	-20(%rbp), %eax	# sr, tmp163
	cmpl	-24(%rbp), %eax	# dr, tmp163
	jne	.L500	#,
	.loc 1 1247 0
	jmp	.L499	#
.L500:
	.loc 1 1251 0
	cmpl	$7, -24(%rbp)	#, dr
	jne	.L502	#,
	.loc 1 1252 0
	jmp	.L499	#
.L502:
	.loc 1 1255 0
	movl	frame_pointer_needed(%rip), %eax	# frame_pointer_needed, frame_pointer_needed.211
	testl	%eax, %eax	# frame_pointer_needed.211
	je	.L503	#,
	.loc 1 1255 0 is_stmt 0 discriminator 1
	cmpl	$6, -24(%rbp)	#, dr
	jne	.L503	#,
	.loc 1 1256 0 is_stmt 1
	jmp	.L499	#
.L503:
	.loc 1 1259 0
	cmpl	$7, -24(%rbp)	#, dr
	jbe	.L504	#,
	.loc 1 1259 0 is_stmt 0 discriminator 1
	cmpl	$15, -24(%rbp)	#, dr
	jbe	.L505	#,
.L504:
	.loc 1 1259 0 discriminator 2
	cmpl	$20, -24(%rbp)	#, dr
	jbe	.L506	#,
	.loc 1 1259 0 discriminator 1
	cmpl	$28, -24(%rbp)	#, dr
	jbe	.L505	#,
.L506:
	.loc 1 1259 0 discriminator 2
	cmpl	$44, -24(%rbp)	#, dr
	jbe	.L507	#,
	.loc 1 1259 0 discriminator 1
	cmpl	$52, -24(%rbp)	#, dr
	jbe	.L505	#,
.L507:
	.loc 1 1259 0 discriminator 2
	cmpl	$28, -24(%rbp)	#, dr
	jbe	.L508	#,
	.loc 1 1259 0 discriminator 1
	cmpl	$36, -24(%rbp)	#, dr
	ja	.L508	#,
.L505:
	movq	-48(%rbp), %rax	# dest, tmp164
	movzbl	2(%rax), %eax	# dest_26(D)->mode, D.14446
	movzbl	%al, %eax	# D.14446, D.14447
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.14448
	cmpl	$5, %eax	#, D.14448
	je	.L509	#,
	.loc 1 1259 0 discriminator 4
	movq	-48(%rbp), %rax	# dest, tmp166
	movzbl	2(%rax), %eax	# dest_26(D)->mode, D.14446
	movzbl	%al, %eax	# D.14446, D.14447
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.14448
	cmpl	$6, %eax	#, D.14448
	jne	.L510	#,
.L509:
	.loc 1 1259 0 discriminator 3
	movl	$2, %eax	#, iftmp.213
	jmp	.L512	#
.L510:
	.loc 1 1259 0 discriminator 1
	movl	$1, %eax	#, iftmp.213
	jmp	.L512	#
.L508:
	.loc 1 1259 0 discriminator 2
	movq	-48(%rbp), %rax	# dest, tmp168
	movzbl	2(%rax), %eax	# dest_26(D)->mode, D.14446
	cmpb	$18, %al	#, D.14446
	jne	.L513	#,
	.loc 1 1259 0 discriminator 7
	movl	target_flags(%rip), %eax	# target_flags, target_flags.216
	andl	$33554432, %eax	#, D.14447
	testl	%eax, %eax	# D.14447
	je	.L514	#,
	.loc 1 1259 0 discriminator 9
	movl	$2, %eax	#, iftmp.215
	jmp	.L512	#
.L514:
	.loc 1 1259 0 discriminator 10
	movl	$3, %eax	#, iftmp.215
	jmp	.L512	#
.L513:
	.loc 1 1259 0 discriminator 8
	movq	-48(%rbp), %rax	# dest, tmp169
	movzbl	2(%rax), %eax	# dest_26(D)->mode, D.14446
	cmpb	$24, %al	#, D.14446
	jne	.L517	#,
	.loc 1 1259 0 discriminator 11
	movl	target_flags(%rip), %eax	# target_flags, target_flags.219
	andl	$33554432, %eax	#, D.14447
	testl	%eax, %eax	# D.14447
	je	.L518	#,
	.loc 1 1259 0 discriminator 13
	movl	$4, %eax	#, iftmp.218
	jmp	.L512	#
.L518:
	.loc 1 1259 0 discriminator 14
	movl	$6, %eax	#, iftmp.218
	jmp	.L512	#
.L517:
	.loc 1 1259 0 discriminator 12
	movq	-48(%rbp), %rax	# dest, tmp170
	movzbl	2(%rax), %eax	# dest_26(D)->mode, D.14446
	movzbl	%al, %eax	# D.14446, D.14447
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.14446
	movzbl	%al, %edx	# D.14446, D.14447
	movl	target_flags(%rip), %eax	# target_flags, target_flags.221
	andl	$33554432, %eax	#, D.14447
	testl	%eax, %eax	# D.14447
	je	.L521	#,
	.loc 1 1259 0 discriminator 1
	movl	$8, %eax	#, iftmp.220
	jmp	.L522	#
.L521:
	.loc 1 1259 0 discriminator 2
	movl	$4, %eax	#, iftmp.220
.L522:
	.loc 1 1259 0 discriminator 3
	addl	%edx, %eax	# D.14447, D.14447
	subl	$1, %eax	#, D.14447
	movl	target_flags(%rip), %edx	# target_flags, target_flags.223
	andl	$33554432, %edx	#, D.14447
	testl	%edx, %edx	# D.14447
	je	.L523	#,
	.loc 1 1259 0 discriminator 1
	movl	$8, %ebx	#, iftmp.222
	jmp	.L524	#
.L523:
	.loc 1 1259 0 discriminator 2
	movl	$4, %ebx	#, iftmp.222
.L524:
	.loc 1 1259 0 discriminator 3
	cltd
	idivl	%ebx	# iftmp.222
.L512:
	.loc 1 1259 0 discriminator 6
	movl	%eax, -16(%rbp)	# iftmp.212, dn
	.loc 1 1260 0 is_stmt 1 discriminator 6
	cmpl	$7, -20(%rbp)	#, sr
	jbe	.L525	#,
	.loc 1 1260 0 is_stmt 0 discriminator 1
	cmpl	$15, -20(%rbp)	#, sr
	jbe	.L526	#,
.L525:
	.loc 1 1260 0 discriminator 2
	cmpl	$20, -20(%rbp)	#, sr
	jbe	.L527	#,
	.loc 1 1260 0 discriminator 1
	cmpl	$28, -20(%rbp)	#, sr
	jbe	.L526	#,
.L527:
	.loc 1 1260 0 discriminator 2
	cmpl	$44, -20(%rbp)	#, sr
	jbe	.L528	#,
	.loc 1 1260 0 discriminator 1
	cmpl	$52, -20(%rbp)	#, sr
	jbe	.L526	#,
.L528:
	.loc 1 1260 0 discriminator 2
	cmpl	$28, -20(%rbp)	#, sr
	jbe	.L529	#,
	.loc 1 1260 0 discriminator 1
	cmpl	$36, -20(%rbp)	#, sr
	ja	.L529	#,
.L526:
	movq	-48(%rbp), %rax	# dest, tmp174
	movzbl	2(%rax), %eax	# dest_26(D)->mode, D.14446
	movzbl	%al, %eax	# D.14446, D.14447
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.14448
	cmpl	$5, %eax	#, D.14448
	je	.L530	#,
	.loc 1 1260 0 discriminator 4
	movq	-48(%rbp), %rax	# dest, tmp176
	movzbl	2(%rax), %eax	# dest_26(D)->mode, D.14446
	movzbl	%al, %eax	# D.14446, D.14447
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.14448
	cmpl	$6, %eax	#, D.14448
	jne	.L531	#,
.L530:
	.loc 1 1260 0 discriminator 3
	movl	$2, %eax	#, iftmp.225
	jmp	.L533	#
.L531:
	.loc 1 1260 0 discriminator 1
	movl	$1, %eax	#, iftmp.225
	jmp	.L533	#
.L529:
	.loc 1 1260 0 discriminator 2
	movq	-48(%rbp), %rax	# dest, tmp178
	movzbl	2(%rax), %eax	# dest_26(D)->mode, D.14446
	cmpb	$18, %al	#, D.14446
	jne	.L534	#,
	.loc 1 1260 0 discriminator 7
	movl	target_flags(%rip), %eax	# target_flags, target_flags.228
	andl	$33554432, %eax	#, D.14447
	testl	%eax, %eax	# D.14447
	je	.L535	#,
	.loc 1 1260 0 discriminator 9
	movl	$2, %eax	#, iftmp.227
	jmp	.L533	#
.L535:
	.loc 1 1260 0 discriminator 10
	movl	$3, %eax	#, iftmp.227
	jmp	.L533	#
.L534:
	.loc 1 1260 0 discriminator 8
	movq	-48(%rbp), %rax	# dest, tmp179
	movzbl	2(%rax), %eax	# dest_26(D)->mode, D.14446
	cmpb	$24, %al	#, D.14446
	jne	.L538	#,
	.loc 1 1260 0 discriminator 11
	movl	target_flags(%rip), %eax	# target_flags, target_flags.231
	andl	$33554432, %eax	#, D.14447
	testl	%eax, %eax	# D.14447
	je	.L539	#,
	.loc 1 1260 0 discriminator 13
	movl	$4, %eax	#, iftmp.230
	jmp	.L533	#
.L539:
	.loc 1 1260 0 discriminator 14
	movl	$6, %eax	#, iftmp.230
	jmp	.L533	#
.L538:
	.loc 1 1260 0 discriminator 12
	movq	-48(%rbp), %rax	# dest, tmp180
	movzbl	2(%rax), %eax	# dest_26(D)->mode, D.14446
	movzbl	%al, %eax	# D.14446, D.14447
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.14446
	movzbl	%al, %edx	# D.14446, D.14447
	movl	target_flags(%rip), %eax	# target_flags, target_flags.233
	andl	$33554432, %eax	#, D.14447
	testl	%eax, %eax	# D.14447
	je	.L542	#,
	.loc 1 1260 0 discriminator 1
	movl	$8, %eax	#, iftmp.232
	jmp	.L543	#
.L542:
	.loc 1 1260 0 discriminator 2
	movl	$4, %eax	#, iftmp.232
.L543:
	.loc 1 1260 0 discriminator 3
	addl	%edx, %eax	# D.14447, D.14447
	subl	$1, %eax	#, D.14447
	movl	target_flags(%rip), %edx	# target_flags, target_flags.235
	andl	$33554432, %edx	#, D.14447
	testl	%edx, %edx	# D.14447
	je	.L544	#,
	.loc 1 1260 0 discriminator 1
	movl	$8, %edi	#, iftmp.234
	jmp	.L545	#
.L544:
	.loc 1 1260 0 discriminator 2
	movl	$4, %edi	#, iftmp.234
.L545:
	.loc 1 1260 0 discriminator 3
	cltd
	idivl	%edi	# iftmp.234
.L533:
	.loc 1 1260 0 discriminator 6
	movl	%eax, -12(%rbp)	# iftmp.224, sn
	.loc 1 1261 0 is_stmt 1 discriminator 6
	movl	-24(%rbp), %eax	# dr, tmp184
	cmpl	-20(%rbp), %eax	# sr, tmp184
	jbe	.L546	#,
	.loc 1 1261 0 is_stmt 0 discriminator 1
	movl	-12(%rbp), %eax	# sn, tmp185
	movl	-20(%rbp), %edx	# sr, tmp186
	addl	%edx, %eax	# tmp186, D.14449
	cmpl	-24(%rbp), %eax	# dr, D.14449
	ja	.L547	#,
.L546:
	.loc 1 1262 0 is_stmt 1
	movl	-20(%rbp), %eax	# sr, tmp187
	cmpl	-24(%rbp), %eax	# dr, tmp187
	jbe	.L548	#,
	.loc 1 1262 0 is_stmt 0 discriminator 1
	movl	-16(%rbp), %eax	# dn, tmp188
	movl	-24(%rbp), %edx	# dr, tmp189
	addl	%edx, %eax	# tmp189, D.14449
	cmpl	-20(%rbp), %eax	# sr, D.14449
	jbe	.L548	#,
.L547:
	.loc 1 1263 0 is_stmt 1
	jmp	.L499	#
.L548:
	.loc 1 1268 0
	movq	-64(%rbp), %rcx	# vd, tmp190
	movl	-20(%rbp), %edx	# sr, tmp191
	movq	%rdx, %rax	# tmp191, tmp192
	addq	%rax, %rax	# tmp192
	addq	%rdx, %rax	# tmp191, tmp192
	salq	$2, %rax	#, tmp193
	addq	%rcx, %rax	# tmp190, tmp194
	movl	(%rax), %eax	# vd_113(D)->e[sr_29].mode, D.14450
	testl	%eax, %eax	# D.14450
	jne	.L549	#,
	.loc 1 1269 0
	movq	-64(%rbp), %rcx	# vd, tmp195
	movl	-24(%rbp), %edx	# dr, tmp196
	movq	%rdx, %rax	# tmp196, tmp197
	addq	%rax, %rax	# tmp197
	addq	%rdx, %rax	# tmp196, tmp197
	salq	$2, %rax	#, tmp198
	addq	%rcx, %rax	# tmp195, tmp199
	movl	(%rax), %ecx	# vd_113(D)->e[dr_27].mode, D.14450
	movq	-64(%rbp), %rdx	# vd, tmp200
	movl	-20(%rbp), %eax	# sr, tmp201
	movl	%ecx, %esi	# D.14450,
	movl	%eax, %edi	# tmp201,
	call	set_value_regno	#
	jmp	.L550	#
.L549:
	.loc 1 1274 0
	cmpl	$7, -20(%rbp)	#, sr
	jbe	.L551	#,
	.loc 1 1274 0 is_stmt 0 discriminator 1
	cmpl	$15, -20(%rbp)	#, sr
	jbe	.L552	#,
.L551:
	.loc 1 1274 0 discriminator 2
	cmpl	$20, -20(%rbp)	#, sr
	jbe	.L553	#,
	.loc 1 1274 0 discriminator 1
	cmpl	$28, -20(%rbp)	#, sr
	jbe	.L552	#,
.L553:
	.loc 1 1274 0 discriminator 2
	cmpl	$44, -20(%rbp)	#, sr
	jbe	.L554	#,
	.loc 1 1274 0 discriminator 1
	cmpl	$52, -20(%rbp)	#, sr
	jbe	.L552	#,
.L554:
	.loc 1 1274 0 discriminator 2
	cmpl	$28, -20(%rbp)	#, sr
	jbe	.L555	#,
	.loc 1 1274 0 discriminator 1
	cmpl	$36, -20(%rbp)	#, sr
	ja	.L555	#,
.L552:
	movq	-64(%rbp), %rcx	# vd, tmp202
	movl	-20(%rbp), %edx	# sr, tmp203
	movq	%rdx, %rax	# tmp203, tmp204
	addq	%rax, %rax	# tmp204
	addq	%rdx, %rax	# tmp203, tmp204
	salq	$2, %rax	#, tmp205
	addq	%rcx, %rax	# tmp202, tmp206
	movl	(%rax), %eax	# vd_113(D)->e[sr_29].mode, D.14450
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.14448
	cmpl	$5, %eax	#, D.14448
	je	.L556	#,
	.loc 1 1274 0 discriminator 4
	movq	-64(%rbp), %rcx	# vd, tmp208
	movl	-20(%rbp), %edx	# sr, tmp209
	movq	%rdx, %rax	# tmp209, tmp210
	addq	%rax, %rax	# tmp210
	addq	%rdx, %rax	# tmp209, tmp210
	salq	$2, %rax	#, tmp211
	addq	%rcx, %rax	# tmp208, tmp212
	movl	(%rax), %eax	# vd_113(D)->e[sr_29].mode, D.14450
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.14448
	cmpl	$6, %eax	#, D.14448
	jne	.L557	#,
.L556:
	.loc 1 1274 0 discriminator 3
	movl	$2, %eax	#, iftmp.237
	jmp	.L559	#
.L557:
	.loc 1 1274 0 discriminator 1
	movl	$1, %eax	#, iftmp.237
	jmp	.L559	#
.L555:
	.loc 1 1274 0 discriminator 2
	movq	-64(%rbp), %rcx	# vd, tmp214
	movl	-20(%rbp), %edx	# sr, tmp215
	movq	%rdx, %rax	# tmp215, tmp216
	addq	%rax, %rax	# tmp216
	addq	%rdx, %rax	# tmp215, tmp216
	salq	$2, %rax	#, tmp217
	addq	%rcx, %rax	# tmp214, tmp218
	movl	(%rax), %eax	# vd_113(D)->e[sr_29].mode, D.14450
	cmpl	$18, %eax	#, D.14450
	jne	.L560	#,
	.loc 1 1274 0 discriminator 7
	movl	target_flags(%rip), %eax	# target_flags, target_flags.240
	andl	$33554432, %eax	#, D.14447
	testl	%eax, %eax	# D.14447
	je	.L561	#,
	.loc 1 1274 0 discriminator 9
	movl	$2, %eax	#, iftmp.239
	jmp	.L559	#
.L561:
	.loc 1 1274 0 discriminator 10
	movl	$3, %eax	#, iftmp.239
	jmp	.L559	#
.L560:
	.loc 1 1274 0 discriminator 8
	movq	-64(%rbp), %rcx	# vd, tmp219
	movl	-20(%rbp), %edx	# sr, tmp220
	movq	%rdx, %rax	# tmp220, tmp221
	addq	%rax, %rax	# tmp221
	addq	%rdx, %rax	# tmp220, tmp221
	salq	$2, %rax	#, tmp222
	addq	%rcx, %rax	# tmp219, tmp223
	movl	(%rax), %eax	# vd_113(D)->e[sr_29].mode, D.14450
	cmpl	$24, %eax	#, D.14450
	jne	.L564	#,
	.loc 1 1274 0 discriminator 11
	movl	target_flags(%rip), %eax	# target_flags, target_flags.243
	andl	$33554432, %eax	#, D.14447
	testl	%eax, %eax	# D.14447
	je	.L565	#,
	.loc 1 1274 0 discriminator 13
	movl	$4, %eax	#, iftmp.242
	jmp	.L559	#
.L565:
	.loc 1 1274 0 discriminator 14
	movl	$6, %eax	#, iftmp.242
	jmp	.L559	#
.L564:
	.loc 1 1274 0 discriminator 12
	movq	-64(%rbp), %rcx	# vd, tmp224
	movl	-20(%rbp), %edx	# sr, tmp225
	movq	%rdx, %rax	# tmp225, tmp226
	addq	%rax, %rax	# tmp226
	addq	%rdx, %rax	# tmp225, tmp226
	salq	$2, %rax	#, tmp227
	addq	%rcx, %rax	# tmp224, tmp228
	movl	(%rax), %eax	# vd_113(D)->e[sr_29].mode, D.14450
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.14446
	movzbl	%al, %edx	# D.14446, D.14447
	movl	target_flags(%rip), %eax	# target_flags, target_flags.245
	andl	$33554432, %eax	#, D.14447
	testl	%eax, %eax	# D.14447
	je	.L568	#,
	.loc 1 1274 0 discriminator 1
	movl	$8, %eax	#, iftmp.244
	jmp	.L569	#
.L568:
	.loc 1 1274 0 discriminator 2
	movl	$4, %eax	#, iftmp.244
.L569:
	.loc 1 1274 0 discriminator 3
	addl	%edx, %eax	# D.14447, D.14447
	subl	$1, %eax	#, D.14447
	movl	target_flags(%rip), %edx	# target_flags, target_flags.247
	andl	$33554432, %edx	#, D.14447
	testl	%edx, %edx	# D.14447
	je	.L570	#,
	.loc 1 1274 0 discriminator 1
	movl	$8, %ebx	#, iftmp.246
	jmp	.L571	#
.L570:
	.loc 1 1274 0 discriminator 2
	movl	$4, %ebx	#, iftmp.246
.L571:
	.loc 1 1274 0 discriminator 3
	cltd
	idivl	%ebx	# iftmp.246
.L559:
	.loc 1 1274 0 discriminator 6
	cmpl	-12(%rbp), %eax	# sn, iftmp.236
	jae	.L550	#,
	.loc 1 1275 0 is_stmt 1
	jmp	.L499	#
.L550:
	.loc 1 1279 0
	movq	-64(%rbp), %rcx	# vd, tmp232
	movl	-20(%rbp), %edx	# sr, tmp233
	movq	%rdx, %rax	# tmp233, tmp234
	addq	%rax, %rax	# tmp234
	addq	%rdx, %rax	# tmp233, tmp234
	salq	$2, %rax	#, tmp235
	addq	%rcx, %rax	# tmp232, tmp236
	addq	$4, %rax	#, tmp237
	movl	(%rax), %ecx	# vd_113(D)->e[sr_29].oldest_regno, D.14449
	movq	-64(%rbp), %rsi	# vd, tmp238
	movl	-24(%rbp), %edx	# dr, tmp239
	movq	%rdx, %rax	# tmp239, tmp240
	addq	%rax, %rax	# tmp240
	addq	%rdx, %rax	# tmp239, tmp240
	salq	$2, %rax	#, tmp241
	addq	%rsi, %rax	# tmp238, tmp242
	addq	$4, %rax	#, tmp243
	movl	%ecx, (%rax)	# D.14449, vd_113(D)->e[dr_27].oldest_regno
	.loc 1 1281 0
	movl	-20(%rbp), %eax	# sr, tmp244
	movl	%eax, -28(%rbp)	# tmp244, i
	jmp	.L572	#
.L573:
	movq	-64(%rbp), %rcx	# vd, tmp245
	movl	-28(%rbp), %edx	# i, tmp246
	movq	%rdx, %rax	# tmp246, tmp247
	addq	%rax, %rax	# tmp247
	addq	%rdx, %rax	# tmp246, tmp247
	salq	$2, %rax	#, tmp248
	addq	%rcx, %rax	# tmp245, tmp249
	addq	$8, %rax	#, tmp250
	movl	(%rax), %eax	# vd_113(D)->e[i_1].next_regno, tmp251
	movl	%eax, -28(%rbp)	# tmp251, i
.L572:
	.loc 1 1281 0 is_stmt 0 discriminator 1
	movq	-64(%rbp), %rcx	# vd, tmp252
	movl	-28(%rbp), %edx	# i, tmp253
	movq	%rdx, %rax	# tmp253, tmp254
	addq	%rax, %rax	# tmp254
	addq	%rdx, %rax	# tmp253, tmp254
	salq	$2, %rax	#, tmp255
	addq	%rcx, %rax	# tmp252, tmp256
	addq	$8, %rax	#, tmp257
	movl	(%rax), %eax	# vd_113(D)->e[i_1].next_regno, D.14449
	cmpl	$-1, %eax	#, D.14449
	jne	.L573	#,
	.loc 1 1283 0 is_stmt 1
	movq	-64(%rbp), %rcx	# vd, tmp258
	movl	-28(%rbp), %edx	# i, tmp259
	movq	%rdx, %rax	# tmp259, tmp260
	addq	%rax, %rax	# tmp260
	addq	%rdx, %rax	# tmp259, tmp260
	salq	$2, %rax	#, tmp261
	addq	%rcx, %rax	# tmp258, tmp262
	leaq	8(%rax), %rdx	#, tmp263
	movl	-24(%rbp), %eax	# dr, tmp264
	movl	%eax, (%rdx)	# tmp264, vd_113(D)->e[i_1].next_regno
.L499:
	.loc 1 1288 0
	addq	$56, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	copy_value, .-copy_value
	.type	mode_change_ok, @function
mode_change_ok:
.LFB20:
	.loc 1 1296 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)	# orig_mode, orig_mode
	movl	%esi, -8(%rbp)	# new_mode, new_mode
	movl	%edx, -12(%rbp)	# regno, regno
	.loc 1 1297 0
	movl	-4(%rbp), %eax	# orig_mode, orig_mode.248
	cltq
	movzbl	mode_size(%rax), %edx	# mode_size, D.14452
	movl	-8(%rbp), %eax	# new_mode, new_mode.249
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.14452
	cmpb	%al, %dl	# D.14452, D.14452
	jae	.L575	#,
	.loc 1 1298 0
	movl	$0, %eax	#, D.14451
	jmp	.L576	#
.L575:
	.loc 1 1306 0
	movl	$1, %eax	#, D.14451
.L576:
	.loc 1 1307 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	mode_change_ok, .-mode_change_ok
	.type	find_oldest_value_reg, @function
find_oldest_value_reg:
.LFB21:
	.loc 1 1318 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$72, %rsp	#,
	.cfi_offset 3, -24
	movl	%edi, -52(%rbp)	# class, class
	movq	%rsi, -64(%rbp)	# reg, reg
	movq	%rdx, -72(%rbp)	# vd, vd
	.loc 1 1319 0
	movq	-64(%rbp), %rax	# reg, tmp127
	movl	8(%rax), %eax	# reg_19(D)->fld[0].rtuint, tmp128
	movl	%eax, -32(%rbp)	# tmp128, regno
	.loc 1 1320 0
	movq	-64(%rbp), %rax	# reg, tmp129
	movzbl	2(%rax), %eax	# reg_19(D)->mode, D.14454
	movzbl	%al, %eax	# D.14454, tmp130
	movl	%eax, -28(%rbp)	# tmp130, mode
	.loc 1 1330 0
	movq	-72(%rbp), %rcx	# vd, tmp131
	movl	-32(%rbp), %edx	# regno, tmp132
	movq	%rdx, %rax	# tmp132, tmp133
	addq	%rax, %rax	# tmp133
	addq	%rdx, %rax	# tmp132, tmp133
	salq	$2, %rax	#, tmp134
	addq	%rcx, %rax	# tmp131, tmp135
	movl	(%rax), %eax	# vd_23(D)->e[regno_20].mode, D.14455
	cmpl	-28(%rbp), %eax	# mode, D.14455
	je	.L578	#,
	.loc 1 1332 0
	cmpl	$7, -32(%rbp)	#, regno
	jbe	.L579	#,
	.loc 1 1332 0 is_stmt 0 discriminator 1
	cmpl	$15, -32(%rbp)	#, regno
	jbe	.L580	#,
.L579:
	.loc 1 1332 0 discriminator 2
	cmpl	$20, -32(%rbp)	#, regno
	jbe	.L581	#,
	.loc 1 1332 0 discriminator 1
	cmpl	$28, -32(%rbp)	#, regno
	jbe	.L580	#,
.L581:
	.loc 1 1332 0 discriminator 2
	cmpl	$44, -32(%rbp)	#, regno
	jbe	.L582	#,
	.loc 1 1332 0 discriminator 1
	cmpl	$52, -32(%rbp)	#, regno
	jbe	.L580	#,
.L582:
	.loc 1 1332 0 discriminator 2
	cmpl	$28, -32(%rbp)	#, regno
	jbe	.L583	#,
	.loc 1 1332 0 discriminator 1
	cmpl	$36, -32(%rbp)	#, regno
	ja	.L583	#,
.L580:
	movl	-28(%rbp), %eax	# mode, mode.252
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.14457
	cmpl	$5, %eax	#, D.14457
	je	.L584	#,
	.loc 1 1332 0 discriminator 2
	movl	-28(%rbp), %eax	# mode, mode.253
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.14457
	cmpl	$6, %eax	#, D.14457
	jne	.L585	#,
.L584:
	.loc 1 1332 0 discriminator 1
	movl	$2, %eax	#, iftmp.251
	jmp	.L586	#
.L585:
	movl	$1, %eax	#, iftmp.251
.L586:
	.loc 1 1332 0 discriminator 3
	movl	%eax, %ecx	# iftmp.251, iftmp.250
	jmp	.L587	#
.L583:
	.loc 1 1332 0 discriminator 2
	cmpl	$18, -28(%rbp)	#, mode
	jne	.L588	#,
	.loc 1 1332 0 discriminator 1
	movl	target_flags(%rip), %eax	# target_flags, target_flags.256
	andl	$33554432, %eax	#, D.14456
	testl	%eax, %eax	# D.14456
	je	.L589	#,
	movl	$2, %eax	#, iftmp.255
	jmp	.L591	#
.L589:
	.loc 1 1332 0 discriminator 2
	movl	$3, %eax	#, iftmp.255
	jmp	.L591	#
.L588:
	cmpl	$24, -28(%rbp)	#, mode
	jne	.L592	#,
	.loc 1 1332 0 discriminator 1
	movl	target_flags(%rip), %eax	# target_flags, target_flags.259
	andl	$33554432, %eax	#, D.14456
	testl	%eax, %eax	# D.14456
	je	.L593	#,
	movl	$4, %eax	#, iftmp.258
	jmp	.L591	#
.L593:
	.loc 1 1332 0 discriminator 2
	movl	$6, %eax	#, iftmp.258
	jmp	.L591	#
.L592:
	movl	-28(%rbp), %eax	# mode, mode.260
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.14454
	movzbl	%al, %edx	# D.14454, D.14456
	movl	target_flags(%rip), %eax	# target_flags, target_flags.262
	andl	$33554432, %eax	#, D.14456
	testl	%eax, %eax	# D.14456
	je	.L596	#,
	.loc 1 1332 0 discriminator 1
	movl	$8, %eax	#, iftmp.261
	jmp	.L597	#
.L596:
	.loc 1 1332 0 discriminator 2
	movl	$4, %eax	#, iftmp.261
.L597:
	.loc 1 1332 0 discriminator 3
	addl	%edx, %eax	# D.14456, D.14456
	subl	$1, %eax	#, D.14456
	movl	target_flags(%rip), %edx	# target_flags, target_flags.264
	andl	$33554432, %edx	#, D.14456
	testl	%edx, %edx	# D.14456
	je	.L598	#,
	.loc 1 1332 0 discriminator 1
	movl	$8, %ebx	#, iftmp.263
	jmp	.L599	#
.L598:
	.loc 1 1332 0 discriminator 2
	movl	$4, %ebx	#, iftmp.263
.L599:
	.loc 1 1332 0 discriminator 3
	cltd
	idivl	%ebx	# iftmp.263
.L591:
	movl	%eax, %ecx	# iftmp.254, iftmp.250
.L587:
	.loc 1 1333 0 is_stmt 1
	cmpl	$7, -32(%rbp)	#, regno
	jbe	.L600	#,
	.loc 1 1333 0 is_stmt 0 discriminator 1
	cmpl	$15, -32(%rbp)	#, regno
	jbe	.L601	#,
.L600:
	.loc 1 1333 0 discriminator 2
	cmpl	$20, -32(%rbp)	#, regno
	jbe	.L602	#,
	.loc 1 1333 0 discriminator 1
	cmpl	$28, -32(%rbp)	#, regno
	jbe	.L601	#,
.L602:
	.loc 1 1333 0 discriminator 2
	cmpl	$44, -32(%rbp)	#, regno
	jbe	.L603	#,
	.loc 1 1333 0 discriminator 1
	cmpl	$52, -32(%rbp)	#, regno
	jbe	.L601	#,
.L603:
	.loc 1 1333 0 discriminator 2
	cmpl	$28, -32(%rbp)	#, regno
	jbe	.L604	#,
	.loc 1 1333 0 discriminator 1
	cmpl	$36, -32(%rbp)	#, regno
	ja	.L604	#,
.L601:
	movq	-72(%rbp), %rsi	# vd, tmp141
	movl	-32(%rbp), %edx	# regno, tmp142
	movq	%rdx, %rax	# tmp142, tmp143
	addq	%rax, %rax	# tmp143
	addq	%rdx, %rax	# tmp142, tmp143
	salq	$2, %rax	#, tmp144
	addq	%rsi, %rax	# tmp141, tmp145
	movl	(%rax), %eax	# vd_23(D)->e[regno_20].mode, D.14455
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.14457
	cmpl	$5, %eax	#, D.14457
	je	.L605	#,
	.loc 1 1333 0 discriminator 2
	movq	-72(%rbp), %rsi	# vd, tmp147
	movl	-32(%rbp), %edx	# regno, tmp148
	movq	%rdx, %rax	# tmp148, tmp149
	addq	%rax, %rax	# tmp149
	addq	%rdx, %rax	# tmp148, tmp149
	salq	$2, %rax	#, tmp150
	addq	%rsi, %rax	# tmp147, tmp151
	movl	(%rax), %eax	# vd_23(D)->e[regno_20].mode, D.14455
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.14457
	cmpl	$6, %eax	#, D.14457
	jne	.L606	#,
.L605:
	.loc 1 1333 0 discriminator 1
	movl	$2, %eax	#, iftmp.266
	jmp	.L607	#
.L606:
	movl	$1, %eax	#, iftmp.266
.L607:
	.loc 1 1333 0 discriminator 3
	jmp	.L608	#
.L604:
	.loc 1 1333 0 discriminator 2
	movq	-72(%rbp), %rsi	# vd, tmp153
	movl	-32(%rbp), %edx	# regno, tmp154
	movq	%rdx, %rax	# tmp154, tmp155
	addq	%rax, %rax	# tmp155
	addq	%rdx, %rax	# tmp154, tmp155
	salq	$2, %rax	#, tmp156
	addq	%rsi, %rax	# tmp153, tmp157
	movl	(%rax), %eax	# vd_23(D)->e[regno_20].mode, D.14455
	cmpl	$18, %eax	#, D.14455
	jne	.L609	#,
	.loc 1 1333 0 discriminator 1
	movl	target_flags(%rip), %eax	# target_flags, target_flags.269
	andl	$33554432, %eax	#, D.14456
	testl	%eax, %eax	# D.14456
	je	.L610	#,
	movl	$2, %eax	#, iftmp.268
	jmp	.L608	#
.L610:
	.loc 1 1333 0 discriminator 2
	movl	$3, %eax	#, iftmp.268
	jmp	.L608	#
.L609:
	movq	-72(%rbp), %rsi	# vd, tmp158
	movl	-32(%rbp), %edx	# regno, tmp159
	movq	%rdx, %rax	# tmp159, tmp160
	addq	%rax, %rax	# tmp160
	addq	%rdx, %rax	# tmp159, tmp160
	salq	$2, %rax	#, tmp161
	addq	%rsi, %rax	# tmp158, tmp162
	movl	(%rax), %eax	# vd_23(D)->e[regno_20].mode, D.14455
	cmpl	$24, %eax	#, D.14455
	jne	.L613	#,
	.loc 1 1333 0 discriminator 1
	movl	target_flags(%rip), %eax	# target_flags, target_flags.272
	andl	$33554432, %eax	#, D.14456
	testl	%eax, %eax	# D.14456
	je	.L614	#,
	movl	$4, %eax	#, iftmp.271
	jmp	.L608	#
.L614:
	.loc 1 1333 0 discriminator 2
	movl	$6, %eax	#, iftmp.271
	jmp	.L608	#
.L613:
	movq	-72(%rbp), %rsi	# vd, tmp163
	movl	-32(%rbp), %edx	# regno, tmp164
	movq	%rdx, %rax	# tmp164, tmp165
	addq	%rax, %rax	# tmp165
	addq	%rdx, %rax	# tmp164, tmp165
	salq	$2, %rax	#, tmp166
	addq	%rsi, %rax	# tmp163, tmp167
	movl	(%rax), %eax	# vd_23(D)->e[regno_20].mode, D.14455
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.14454
	movzbl	%al, %edx	# D.14454, D.14456
	movl	target_flags(%rip), %eax	# target_flags, target_flags.274
	andl	$33554432, %eax	#, D.14456
	testl	%eax, %eax	# D.14456
	je	.L617	#,
	.loc 1 1333 0 discriminator 1
	movl	$8, %eax	#, iftmp.273
	jmp	.L618	#
.L617:
	.loc 1 1333 0 discriminator 2
	movl	$4, %eax	#, iftmp.273
.L618:
	.loc 1 1333 0 discriminator 3
	addl	%edx, %eax	# D.14456, D.14456
	subl	$1, %eax	#, D.14456
	movl	target_flags(%rip), %edx	# target_flags, target_flags.276
	andl	$33554432, %edx	#, D.14456
	testl	%edx, %edx	# D.14456
	je	.L619	#,
	.loc 1 1333 0 discriminator 1
	movl	$8, %edi	#, iftmp.275
	jmp	.L620	#
.L619:
	.loc 1 1333 0 discriminator 2
	movl	$4, %edi	#, iftmp.275
.L620:
	.loc 1 1333 0 discriminator 3
	cltd
	idivl	%edi	# iftmp.275
.L608:
	.loc 1 1332 0 is_stmt 1
	cmpl	%eax, %ecx	# iftmp.265, iftmp.250
	jle	.L578	#,
	.loc 1 1334 0
	movl	$0, %eax	#, D.14453
	jmp	.L621	#
.L578:
	.loc 1 1337 0
	movq	-72(%rbp), %rcx	# vd, tmp171
	movl	-32(%rbp), %edx	# regno, tmp172
	movq	%rdx, %rax	# tmp172, tmp173
	addq	%rax, %rax	# tmp173
	addq	%rdx, %rax	# tmp172, tmp173
	salq	$2, %rax	#, tmp174
	addq	%rcx, %rax	# tmp171, tmp175
	addq	$4, %rax	#, tmp176
	movl	(%rax), %eax	# vd_23(D)->e[regno_20].oldest_regno, tmp177
	movl	%eax, -36(%rbp)	# tmp177, i
	jmp	.L622	#
.L625:
	.loc 1 1338 0
	movl	-52(%rbp), %eax	# class, tmp178
	movq	reg_class_contents(,%rax,8), %rdx	# reg_class_contents, D.14458
	movl	-36(%rbp), %eax	# i, i.277
	movl	%eax, %ecx	# i.277, tmp207
	shrq	%cl, %rdx	# tmp207, D.14458
	movq	%rdx, %rax	# D.14458, D.14458
	andl	$1, %eax	#, D.14458
	testq	%rax, %rax	# D.14458
	je	.L623	#,
	.loc 1 1339 0
	movq	-72(%rbp), %rcx	# vd, tmp179
	movl	-36(%rbp), %edx	# i, tmp180
	movq	%rdx, %rax	# tmp180, tmp181
	addq	%rax, %rax	# tmp181
	addq	%rdx, %rax	# tmp180, tmp181
	salq	$2, %rax	#, tmp182
	addq	%rcx, %rax	# tmp179, tmp183
	movl	(%rax), %eax	# vd_23(D)->e[i_1].mode, D.14455
	cmpl	-28(%rbp), %eax	# mode, D.14455
	je	.L624	#,
	.loc 1 1340 0
	movq	-72(%rbp), %rcx	# vd, tmp184
	movl	-36(%rbp), %edx	# i, tmp185
	movq	%rdx, %rax	# tmp185, tmp186
	addq	%rax, %rax	# tmp186
	addq	%rdx, %rax	# tmp185, tmp186
	salq	$2, %rax	#, tmp187
	addq	%rcx, %rax	# tmp184, tmp188
	movl	(%rax), %eax	# vd_23(D)->e[i_1].mode, D.14455
	movl	-36(%rbp), %edx	# i, tmp189
	movl	-28(%rbp), %ecx	# mode, tmp190
	movl	%ecx, %esi	# tmp190,
	movl	%eax, %edi	# D.14455,
	call	mode_change_ok	#
	testb	%al, %al	# D.14459
	je	.L623	#,
.L624:
.LBB36:
	.loc 1 1342 0
	movl	-36(%rbp), %edx	# i, i.278
	movl	-28(%rbp), %eax	# mode, tmp191
	movl	%eax, %esi	# tmp191,
	movl	$61, %edi	#,
	call	gen_rtx_fmt_i0	#
	movq	%rax, -24(%rbp)	# tmp192, new
	.loc 1 1343 0
	movq	-64(%rbp), %rax	# reg, tmp193
	movl	16(%rax), %edx	# reg_19(D)->fld[1].rtuint, D.14460
	movq	-24(%rbp), %rax	# new, tmp194
	movl	%edx, 16(%rax)	# D.14460, new_107->fld[1].rtuint
	.loc 1 1344 0
	movq	-24(%rbp), %rax	# new, D.14453
	jmp	.L621	#
.L623:
.LBE36:
	.loc 1 1337 0
	movq	-72(%rbp), %rcx	# vd, tmp195
	movl	-36(%rbp), %edx	# i, tmp196
	movq	%rdx, %rax	# tmp196, tmp197
	addq	%rax, %rax	# tmp197
	addq	%rdx, %rax	# tmp196, tmp197
	salq	$2, %rax	#, tmp198
	addq	%rcx, %rax	# tmp195, tmp199
	addq	$8, %rax	#, tmp200
	movl	(%rax), %eax	# vd_23(D)->e[i_1].next_regno, tmp201
	movl	%eax, -36(%rbp)	# tmp201, i
.L622:
	.loc 1 1337 0 is_stmt 0 discriminator 1
	movl	-36(%rbp), %eax	# i, tmp202
	cmpl	-32(%rbp), %eax	# regno, tmp202
	jne	.L625	#,
	.loc 1 1347 0 is_stmt 1
	movl	$0, %eax	#, D.14453
.L621:
	.loc 1 1348 0
	addq	$72, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	find_oldest_value_reg, .-find_oldest_value_reg
	.section	.rodata
	.align 8
.LC41:
	.string	"insn %u: replaced reg %u with %u\n"
	.text
	.type	replace_oldest_value_reg, @function
replace_oldest_value_reg:
.LFB22:
	.loc 1 1359 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# loc, loc
	movl	%esi, -28(%rbp)	# class, class
	movq	%rdx, -40(%rbp)	# insn, insn
	movq	%rcx, -48(%rbp)	# vd, vd
	.loc 1 1360 0
	movq	-24(%rbp), %rax	# loc, tmp68
	movq	(%rax), %rcx	# *loc_2(D), D.14462
	movq	-48(%rbp), %rdx	# vd, tmp69
	movl	-28(%rbp), %eax	# class, tmp70
	movq	%rcx, %rsi	# D.14462,
	movl	%eax, %edi	# tmp70,
	call	find_oldest_value_reg	#
	movq	%rax, -8(%rbp)	# tmp71, new
	.loc 1 1361 0
	cmpq	$0, -8(%rbp)	#, new
	je	.L627	#,
	.loc 1 1363 0
	movq	rtl_dump_file(%rip), %rax	# rtl_dump_file, rtl_dump_file.279
	testq	%rax, %rax	# rtl_dump_file.279
	je	.L628	#,
	.loc 1 1364 0
	movq	-8(%rbp), %rax	# new, tmp72
	movl	8(%rax), %esi	# new_6->fld[0].rtuint, D.14463
	.loc 1 1365 0
	movq	-24(%rbp), %rax	# loc, tmp73
	movq	(%rax), %rax	# *loc_2(D), D.14462
	.loc 1 1364 0
	movl	8(%rax), %ecx	# _9->fld[0].rtuint, D.14463
	movq	-40(%rbp), %rax	# insn, tmp74
	movl	8(%rax), %edx	# insn_11(D)->fld[0].rtint, D.14464
	movq	rtl_dump_file(%rip), %rax	# rtl_dump_file, rtl_dump_file.280
	movl	%esi, %r8d	# D.14463,
	movl	$.LC41, %esi	#,
	movq	%rax, %rdi	# rtl_dump_file.280,
	movl	$0, %eax	#,
	call	fprintf	#
.L628:
	.loc 1 1367 0
	movq	-24(%rbp), %rax	# loc, tmp75
	movq	-8(%rbp), %rdx	# new, tmp76
	movq	%rdx, (%rax)	# tmp76, *loc_2(D)
	.loc 1 1368 0
	movl	$1, %eax	#, D.14461
	jmp	.L629	#
.L627:
	.loc 1 1370 0
	movl	$0, %eax	#, D.14461
.L629:
	.loc 1 1371 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	replace_oldest_value_reg, .-replace_oldest_value_reg
	.type	replace_oldest_value_addr, @function
replace_oldest_value_addr:
.LFB23:
	.loc 1 1384 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$136, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -120(%rbp)	# loc, loc
	movl	%esi, -124(%rbp)	# class, class
	movl	%edx, -128(%rbp)	# mode, mode
	movq	%rcx, -136(%rbp)	# insn, insn
	movq	%r8, -144(%rbp)	# vd, vd
	.loc 1 1385 0
	movq	-120(%rbp), %rax	# loc, tmp277
	movq	(%rax), %rax	# *loc_16(D), tmp278
	movq	%rax, -48(%rbp)	# tmp278, x
	.loc 1 1386 0
	movq	-48(%rbp), %rax	# x, tmp279
	movzwl	(%rax), %eax	# x_17->code, D.14467
	movzwl	%ax, %eax	# D.14467, tmp280
	movl	%eax, -84(%rbp)	# tmp280, code
	.loc 1 1389 0
	movb	$0, -105(%rbp)	#, changed
	.loc 1 1391 0
	movl	-84(%rbp), %eax	# code, tmp282
	subl	$61, %eax	#, tmp281
	cmpl	$40, %eax	#, tmp281
	ja	.L687	#,
	movl	%eax, %eax	# tmp281, tmp283
	movq	.L633(,%rax,8), %rax	#, tmp284
	jmp	*%rax	# tmp284
	.section	.rodata
	.align 8
	.align 4
.L633:
	.quad	.L632
	.quad	.L687
	.quad	.L687
	.quad	.L687
	.quad	.L687
	.quad	.L634
	.quad	.L687
	.quad	.L687
	.quad	.L687
	.quad	.L687
	.quad	.L687
	.quad	.L687
	.quad	.L687
	.quad	.L687
	.quad	.L635
	.quad	.L687
	.quad	.L687
	.quad	.L687
	.quad	.L687
	.quad	.L687
	.quad	.L687
	.quad	.L687
	.quad	.L687
	.quad	.L687
	.quad	.L687
	.quad	.L687
	.quad	.L687
	.quad	.L687
	.quad	.L687
	.quad	.L687
	.quad	.L687
	.quad	.L687
	.quad	.L687
	.quad	.L687
	.quad	.L687
	.quad	.L636
	.quad	.L636
	.quad	.L636
	.quad	.L636
	.quad	.L636
	.quad	.L636
	.text
.L635:
.LBB37:
	.loc 1 1395 0
	movq	-48(%rbp), %rax	# x, tmp285
	movq	8(%rax), %rax	# x_17->fld[0].rtx, tmp286
	movq	%rax, -40(%rbp)	# tmp286, orig_op0
	.loc 1 1396 0
	movq	-48(%rbp), %rax	# x, tmp287
	movq	16(%rax), %rax	# x_17->fld[1].rtx, tmp288
	movq	%rax, -32(%rbp)	# tmp288, orig_op1
	.loc 1 1397 0
	movq	-40(%rbp), %rax	# orig_op0, tmp289
	movzwl	(%rax), %eax	# orig_op0_21->code, D.14467
	movzwl	%ax, %eax	# D.14467, tmp290
	movl	%eax, -96(%rbp)	# tmp290, code0
	.loc 1 1398 0
	movq	-32(%rbp), %rax	# orig_op1, tmp291
	movzwl	(%rax), %eax	# orig_op1_22->code, D.14467
	movzwl	%ax, %eax	# D.14467, tmp292
	movl	%eax, -92(%rbp)	# tmp292, code1
	.loc 1 1399 0
	movq	-40(%rbp), %rax	# orig_op0, tmp293
	movq	%rax, -80(%rbp)	# tmp293, op0
	.loc 1 1400 0
	movq	-32(%rbp), %rax	# orig_op1, tmp294
	movq	%rax, -72(%rbp)	# tmp294, op1
	.loc 1 1401 0
	movq	$0, -64(%rbp)	#, locI
	.loc 1 1402 0
	movq	$0, -56(%rbp)	#, locB
	.loc 1 1404 0
	movq	-80(%rbp), %rax	# op0, tmp295
	movzwl	(%rax), %eax	# op0_27->code, D.14467
	cmpw	$63, %ax	#, D.14467
	jne	.L637	#,
	.loc 1 1406 0
	movq	-80(%rbp), %rax	# op0, tmp296
	movq	8(%rax), %rax	# op0_27->fld[0].rtx, tmp297
	movq	%rax, -80(%rbp)	# tmp297, op0
	.loc 1 1407 0
	movq	-80(%rbp), %rax	# op0, tmp298
	movzwl	(%rax), %eax	# op0_32->code, D.14467
	movzwl	%ax, %eax	# D.14467, tmp299
	movl	%eax, -96(%rbp)	# tmp299, code0
.L637:
	.loc 1 1410 0
	movq	-72(%rbp), %rax	# op1, tmp300
	movzwl	(%rax), %eax	# op1_28->code, D.14467
	cmpw	$63, %ax	#, D.14467
	jne	.L638	#,
	.loc 1 1412 0
	movq	-72(%rbp), %rax	# op1, tmp301
	movq	8(%rax), %rax	# op1_28->fld[0].rtx, tmp302
	movq	%rax, -72(%rbp)	# tmp302, op1
	.loc 1 1413 0
	movq	-72(%rbp), %rax	# op1, tmp303
	movzwl	(%rax), %eax	# op1_36->code, D.14467
	movzwl	%ax, %eax	# D.14467, tmp304
	movl	%eax, -92(%rbp)	# tmp304, code1
.L638:
	.loc 1 1416 0
	cmpl	$78, -96(%rbp)	#, code0
	je	.L639	#,
	.loc 1 1416 0 is_stmt 0 discriminator 1
	cmpl	$120, -96(%rbp)	#, code0
	je	.L639	#,
	cmpl	$122, -96(%rbp)	#, code0
	je	.L639	#,
	.loc 1 1417 0 is_stmt 1
	cmpl	$121, -96(%rbp)	#, code0
	je	.L639	#,
	.loc 1 1417 0 is_stmt 0 discriminator 1
	cmpl	$66, -92(%rbp)	#, code1
	jne	.L640	#,
.L639:
	.loc 1 1419 0 is_stmt 1
	movq	-48(%rbp), %rax	# x, tmp308
	addq	$8, %rax	#, tmp307
	movq	%rax, -64(%rbp)	# tmp307, locI
	.loc 1 1420 0
	movq	-48(%rbp), %rax	# x, tmp312
	addq	$16, %rax	#, tmp311
	movq	%rax, -56(%rbp)	# tmp311, locB
	jmp	.L641	#
.L640:
	.loc 1 1422 0
	cmpl	$78, -92(%rbp)	#, code1
	je	.L642	#,
	.loc 1 1422 0 is_stmt 0 discriminator 1
	cmpl	$120, -92(%rbp)	#, code1
	je	.L642	#,
	cmpl	$122, -92(%rbp)	#, code1
	je	.L642	#,
	.loc 1 1423 0 is_stmt 1
	cmpl	$121, -92(%rbp)	#, code1
	je	.L642	#,
	.loc 1 1423 0 is_stmt 0 discriminator 1
	cmpl	$66, -96(%rbp)	#, code0
	jne	.L643	#,
.L642:
	.loc 1 1425 0 is_stmt 1
	movq	-48(%rbp), %rax	# x, tmp316
	addq	$16, %rax	#, tmp315
	movq	%rax, -64(%rbp)	# tmp315, locI
	.loc 1 1426 0
	movq	-48(%rbp), %rax	# x, tmp320
	addq	$8, %rax	#, tmp319
	movq	%rax, -56(%rbp)	# tmp319, locB
	jmp	.L641	#
.L643:
	.loc 1 1428 0
	cmpl	$54, -96(%rbp)	#, code0
	je	.L644	#,
	.loc 1 1428 0 is_stmt 0 discriminator 1
	cmpl	$58, -96(%rbp)	#, code0
	je	.L644	#,
	.loc 1 1429 0 is_stmt 1
	cmpl	$68, -96(%rbp)	#, code0
	je	.L644	#,
	.loc 1 1429 0 is_stmt 0 discriminator 1
	cmpl	$67, -96(%rbp)	#, code0
	jne	.L645	#,
.L644:
	.loc 1 1430 0 is_stmt 1
	movq	-48(%rbp), %rax	# x, tmp324
	addq	$16, %rax	#, tmp323
	movq	%rax, -56(%rbp)	# tmp323, locB
	jmp	.L641	#
.L645:
	.loc 1 1431 0
	cmpl	$54, -92(%rbp)	#, code1
	je	.L646	#,
	.loc 1 1431 0 is_stmt 0 discriminator 1
	cmpl	$58, -92(%rbp)	#, code1
	je	.L646	#,
	.loc 1 1432 0 is_stmt 1
	cmpl	$68, -92(%rbp)	#, code1
	je	.L646	#,
	.loc 1 1432 0 is_stmt 0 discriminator 1
	cmpl	$67, -92(%rbp)	#, code1
	jne	.L647	#,
.L646:
	.loc 1 1433 0 is_stmt 1
	movq	-48(%rbp), %rax	# x, tmp328
	addq	$8, %rax	#, tmp327
	movq	%rax, -56(%rbp)	# tmp327, locB
	jmp	.L641	#
.L647:
	.loc 1 1434 0
	cmpl	$61, -96(%rbp)	#, code0
	jne	.L648	#,
	.loc 1 1434 0 is_stmt 0 discriminator 1
	cmpl	$61, -92(%rbp)	#, code1
	jne	.L648	#,
.LBB38:
	.loc 1 1438 0 is_stmt 1
	movq	-80(%rbp), %rax	# op0, tmp329
	movl	8(%rax), %eax	# op0_10->fld[0].rtuint, D.14468
	cmpl	$6, %eax	#, D.14468
	jbe	.L649	#,
	.loc 1 1438 0 is_stmt 0 discriminator 1
	movq	-80(%rbp), %rax	# op0, tmp330
	movl	8(%rax), %eax	# op0_10->fld[0].rtuint, D.14468
	cmpl	$36, %eax	#, D.14468
	jbe	.L650	#,
	movq	-80(%rbp), %rax	# op0, tmp331
	movl	8(%rax), %eax	# op0_10->fld[0].rtuint, D.14468
	cmpl	$44, %eax	#, D.14468
	jbe	.L649	#,
.L650:
	.loc 1 1438 0 discriminator 2
	movq	reg_renumber(%rip), %rdx	# reg_renumber, reg_renumber.281
	movq	-80(%rbp), %rax	# op0, tmp332
	movl	8(%rax), %eax	# op0_10->fld[0].rtuint, D.14468
	movl	%eax, %eax	# D.14468, D.14469
	addq	%rax, %rax	# D.14469
	addq	%rdx, %rax	# reg_renumber.281, D.14470
	movzwl	(%rax), %eax	# *_46, D.14471
	cmpw	$36, %ax	#, D.14467
	jbe	.L651	#,
	.loc 1 1438 0 discriminator 1
	movq	reg_renumber(%rip), %rdx	# reg_renumber, reg_renumber.282
	movq	-80(%rbp), %rax	# op0, tmp333
	movl	8(%rax), %eax	# op0_10->fld[0].rtuint, D.14468
	movl	%eax, %eax	# D.14468, D.14469
	addq	%rax, %rax	# D.14469
	addq	%rdx, %rax	# reg_renumber.282, D.14470
	movzwl	(%rax), %eax	# *_53, D.14471
	cmpw	$44, %ax	#, D.14467
	jbe	.L649	#,
.L651:
	.loc 1 1438 0 discriminator 2
	movq	reg_renumber(%rip), %rdx	# reg_renumber, reg_renumber.283
	movq	-80(%rbp), %rax	# op0, tmp334
	movl	8(%rax), %eax	# op0_10->fld[0].rtuint, D.14468
	movl	%eax, %eax	# D.14468, D.14469
	addq	%rax, %rax	# D.14469
	addq	%rdx, %rax	# reg_renumber.283, D.14470
	movzwl	(%rax), %eax	# *_60, D.14471
	cmpw	$6, %ax	#, D.14467
	ja	.L652	#,
.L649:
	.loc 1 1439 0 is_stmt 1
	movq	-72(%rbp), %rax	# op1, tmp335
	movl	8(%rax), %eax	# op1_11->fld[0].rtuint, D.14468
	cmpl	$7, %eax	#, D.14468
	jbe	.L653	#,
	.loc 1 1439 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# op1, tmp336
	movl	8(%rax), %eax	# op1_11->fld[0].rtuint, D.14468
	cmpl	$16, %eax	#, D.14468
	je	.L653	#,
	movq	-72(%rbp), %rax	# op1, tmp337
	movl	8(%rax), %eax	# op1_11->fld[0].rtuint, D.14468
	cmpl	$20, %eax	#, D.14468
	je	.L653	#,
	movq	-72(%rbp), %rax	# op1, tmp338
	movl	8(%rax), %eax	# op1_11->fld[0].rtuint, D.14468
	cmpl	$36, %eax	#, D.14468
	jbe	.L654	#,
	movq	-72(%rbp), %rax	# op1, tmp339
	movl	8(%rax), %eax	# op1_11->fld[0].rtuint, D.14468
	cmpl	$44, %eax	#, D.14468
	jbe	.L653	#,
.L654:
	.loc 1 1439 0 discriminator 2
	movq	reg_renumber(%rip), %rdx	# reg_renumber, reg_renumber.284
	movq	-72(%rbp), %rax	# op1, tmp340
	movl	8(%rax), %eax	# op1_11->fld[0].rtuint, D.14468
	movl	%eax, %eax	# D.14468, D.14469
	addq	%rax, %rax	# D.14469
	addq	%rdx, %rax	# reg_renumber.284, D.14470
	movzwl	(%rax), %eax	# *_72, D.14471
	cmpw	$36, %ax	#, D.14467
	jbe	.L655	#,
	.loc 1 1439 0 discriminator 1
	movq	reg_renumber(%rip), %rdx	# reg_renumber, reg_renumber.285
	movq	-72(%rbp), %rax	# op1, tmp341
	movl	8(%rax), %eax	# op1_11->fld[0].rtuint, D.14468
	movl	%eax, %eax	# D.14468, D.14469
	addq	%rax, %rax	# D.14469
	addq	%rdx, %rax	# reg_renumber.285, D.14470
	movzwl	(%rax), %eax	# *_79, D.14471
	cmpw	$44, %ax	#, D.14467
	jbe	.L653	#,
.L655:
	.loc 1 1439 0 discriminator 2
	movq	reg_renumber(%rip), %rdx	# reg_renumber, reg_renumber.286
	movq	-72(%rbp), %rax	# op1, tmp342
	movl	8(%rax), %eax	# op1_11->fld[0].rtuint, D.14468
	movl	%eax, %eax	# D.14468, D.14469
	addq	%rax, %rax	# D.14469
	addq	%rdx, %rax	# reg_renumber.286, D.14470
	movzwl	(%rax), %eax	# *_86, D.14471
	cmpw	$7, %ax	#, D.14467
	ja	.L652	#,
.L653:
	.loc 1 1440 0 is_stmt 1
	movl	$0, -88(%rbp)	#, index_op
	jmp	.L656	#
.L652:
	.loc 1 1441 0
	movq	-72(%rbp), %rax	# op1, tmp343
	movl	8(%rax), %eax	# op1_11->fld[0].rtuint, D.14468
	cmpl	$6, %eax	#, D.14468
	jbe	.L657	#,
	.loc 1 1441 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# op1, tmp344
	movl	8(%rax), %eax	# op1_11->fld[0].rtuint, D.14468
	cmpl	$36, %eax	#, D.14468
	jbe	.L658	#,
	movq	-72(%rbp), %rax	# op1, tmp345
	movl	8(%rax), %eax	# op1_11->fld[0].rtuint, D.14468
	cmpl	$44, %eax	#, D.14468
	jbe	.L657	#,
.L658:
	.loc 1 1441 0 discriminator 2
	movq	reg_renumber(%rip), %rdx	# reg_renumber, reg_renumber.287
	movq	-72(%rbp), %rax	# op1, tmp346
	movl	8(%rax), %eax	# op1_11->fld[0].rtuint, D.14468
	movl	%eax, %eax	# D.14468, D.14469
	addq	%rax, %rax	# D.14469
	addq	%rdx, %rax	# reg_renumber.287, D.14470
	movzwl	(%rax), %eax	# *_97, D.14471
	cmpw	$36, %ax	#, D.14467
	jbe	.L659	#,
	.loc 1 1441 0 discriminator 1
	movq	reg_renumber(%rip), %rdx	# reg_renumber, reg_renumber.288
	movq	-72(%rbp), %rax	# op1, tmp347
	movl	8(%rax), %eax	# op1_11->fld[0].rtuint, D.14468
	movl	%eax, %eax	# D.14468, D.14469
	addq	%rax, %rax	# D.14469
	addq	%rdx, %rax	# reg_renumber.288, D.14470
	movzwl	(%rax), %eax	# *_104, D.14471
	cmpw	$44, %ax	#, D.14467
	jbe	.L657	#,
.L659:
	.loc 1 1441 0 discriminator 2
	movq	reg_renumber(%rip), %rdx	# reg_renumber, reg_renumber.289
	movq	-72(%rbp), %rax	# op1, tmp348
	movl	8(%rax), %eax	# op1_11->fld[0].rtuint, D.14468
	movl	%eax, %eax	# D.14468, D.14469
	addq	%rax, %rax	# D.14469
	addq	%rdx, %rax	# reg_renumber.289, D.14470
	movzwl	(%rax), %eax	# *_111, D.14471
	cmpw	$6, %ax	#, D.14467
	ja	.L660	#,
.L657:
	.loc 1 1442 0 is_stmt 1
	movq	-80(%rbp), %rax	# op0, tmp349
	movl	8(%rax), %eax	# op0_10->fld[0].rtuint, D.14468
	cmpl	$7, %eax	#, D.14468
	jbe	.L661	#,
	.loc 1 1442 0 is_stmt 0 discriminator 1
	movq	-80(%rbp), %rax	# op0, tmp350
	movl	8(%rax), %eax	# op0_10->fld[0].rtuint, D.14468
	cmpl	$16, %eax	#, D.14468
	je	.L661	#,
	movq	-80(%rbp), %rax	# op0, tmp351
	movl	8(%rax), %eax	# op0_10->fld[0].rtuint, D.14468
	cmpl	$20, %eax	#, D.14468
	je	.L661	#,
	movq	-80(%rbp), %rax	# op0, tmp352
	movl	8(%rax), %eax	# op0_10->fld[0].rtuint, D.14468
	cmpl	$36, %eax	#, D.14468
	jbe	.L662	#,
	movq	-80(%rbp), %rax	# op0, tmp353
	movl	8(%rax), %eax	# op0_10->fld[0].rtuint, D.14468
	cmpl	$44, %eax	#, D.14468
	jbe	.L661	#,
.L662:
	.loc 1 1442 0 discriminator 2
	movq	reg_renumber(%rip), %rdx	# reg_renumber, reg_renumber.290
	movq	-80(%rbp), %rax	# op0, tmp354
	movl	8(%rax), %eax	# op0_10->fld[0].rtuint, D.14468
	movl	%eax, %eax	# D.14468, D.14469
	addq	%rax, %rax	# D.14469
	addq	%rdx, %rax	# reg_renumber.290, D.14470
	movzwl	(%rax), %eax	# *_123, D.14471
	cmpw	$36, %ax	#, D.14467
	jbe	.L663	#,
	.loc 1 1442 0 discriminator 1
	movq	reg_renumber(%rip), %rdx	# reg_renumber, reg_renumber.291
	movq	-80(%rbp), %rax	# op0, tmp355
	movl	8(%rax), %eax	# op0_10->fld[0].rtuint, D.14468
	movl	%eax, %eax	# D.14468, D.14469
	addq	%rax, %rax	# D.14469
	addq	%rdx, %rax	# reg_renumber.291, D.14470
	movzwl	(%rax), %eax	# *_130, D.14471
	cmpw	$44, %ax	#, D.14467
	jbe	.L661	#,
.L663:
	.loc 1 1442 0 discriminator 2
	movq	reg_renumber(%rip), %rdx	# reg_renumber, reg_renumber.292
	movq	-80(%rbp), %rax	# op0, tmp356
	movl	8(%rax), %eax	# op0_10->fld[0].rtuint, D.14468
	movl	%eax, %eax	# D.14468, D.14469
	addq	%rax, %rax	# D.14469
	addq	%rdx, %rax	# reg_renumber.292, D.14470
	movzwl	(%rax), %eax	# *_137, D.14471
	cmpw	$7, %ax	#, D.14467
	ja	.L660	#,
.L661:
	.loc 1 1443 0 is_stmt 1
	movl	$1, -88(%rbp)	#, index_op
	jmp	.L656	#
.L660:
	.loc 1 1444 0
	movq	-72(%rbp), %rax	# op1, tmp357
	movl	8(%rax), %eax	# op1_11->fld[0].rtuint, D.14468
	cmpl	$7, %eax	#, D.14468
	jbe	.L664	#,
	.loc 1 1444 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# op1, tmp358
	movl	8(%rax), %eax	# op1_11->fld[0].rtuint, D.14468
	cmpl	$16, %eax	#, D.14468
	je	.L664	#,
	movq	-72(%rbp), %rax	# op1, tmp359
	movl	8(%rax), %eax	# op1_11->fld[0].rtuint, D.14468
	cmpl	$20, %eax	#, D.14468
	je	.L664	#,
	movq	-72(%rbp), %rax	# op1, tmp360
	movl	8(%rax), %eax	# op1_11->fld[0].rtuint, D.14468
	cmpl	$36, %eax	#, D.14468
	jbe	.L665	#,
	movq	-72(%rbp), %rax	# op1, tmp361
	movl	8(%rax), %eax	# op1_11->fld[0].rtuint, D.14468
	cmpl	$44, %eax	#, D.14468
	jbe	.L664	#,
.L665:
	.loc 1 1444 0 discriminator 2
	movq	reg_renumber(%rip), %rdx	# reg_renumber, reg_renumber.293
	movq	-72(%rbp), %rax	# op1, tmp362
	movl	8(%rax), %eax	# op1_11->fld[0].rtuint, D.14468
	movl	%eax, %eax	# D.14468, D.14469
	addq	%rax, %rax	# D.14469
	addq	%rdx, %rax	# reg_renumber.293, D.14470
	movzwl	(%rax), %eax	# *_150, D.14471
	cmpw	$36, %ax	#, D.14467
	jbe	.L666	#,
	.loc 1 1444 0 discriminator 1
	movq	reg_renumber(%rip), %rdx	# reg_renumber, reg_renumber.294
	movq	-72(%rbp), %rax	# op1, tmp363
	movl	8(%rax), %eax	# op1_11->fld[0].rtuint, D.14468
	movl	%eax, %eax	# D.14468, D.14469
	addq	%rax, %rax	# D.14469
	addq	%rdx, %rax	# reg_renumber.294, D.14470
	movzwl	(%rax), %eax	# *_157, D.14471
	cmpw	$44, %ax	#, D.14467
	jbe	.L664	#,
.L666:
	.loc 1 1444 0 discriminator 2
	movq	reg_renumber(%rip), %rdx	# reg_renumber, reg_renumber.295
	movq	-72(%rbp), %rax	# op1, tmp364
	movl	8(%rax), %eax	# op1_11->fld[0].rtuint, D.14468
	movl	%eax, %eax	# D.14468, D.14469
	addq	%rax, %rax	# D.14469
	addq	%rdx, %rax	# reg_renumber.295, D.14470
	movzwl	(%rax), %eax	# *_164, D.14471
	cmpw	$7, %ax	#, D.14467
	ja	.L667	#,
.L664:
	.loc 1 1445 0 is_stmt 1
	movl	$0, -88(%rbp)	#, index_op
	jmp	.L656	#
.L667:
	.loc 1 1446 0
	movq	-80(%rbp), %rax	# op0, tmp365
	movl	8(%rax), %eax	# op0_10->fld[0].rtuint, D.14468
	cmpl	$7, %eax	#, D.14468
	jbe	.L668	#,
	.loc 1 1446 0 is_stmt 0 discriminator 1
	movq	-80(%rbp), %rax	# op0, tmp366
	movl	8(%rax), %eax	# op0_10->fld[0].rtuint, D.14468
	cmpl	$16, %eax	#, D.14468
	je	.L668	#,
	movq	-80(%rbp), %rax	# op0, tmp367
	movl	8(%rax), %eax	# op0_10->fld[0].rtuint, D.14468
	cmpl	$20, %eax	#, D.14468
	je	.L668	#,
	movq	-80(%rbp), %rax	# op0, tmp368
	movl	8(%rax), %eax	# op0_10->fld[0].rtuint, D.14468
	cmpl	$36, %eax	#, D.14468
	jbe	.L669	#,
	movq	-80(%rbp), %rax	# op0, tmp369
	movl	8(%rax), %eax	# op0_10->fld[0].rtuint, D.14468
	cmpl	$44, %eax	#, D.14468
	jbe	.L668	#,
.L669:
	.loc 1 1446 0 discriminator 2
	movq	reg_renumber(%rip), %rdx	# reg_renumber, reg_renumber.296
	movq	-80(%rbp), %rax	# op0, tmp370
	movl	8(%rax), %eax	# op0_10->fld[0].rtuint, D.14468
	movl	%eax, %eax	# D.14468, D.14469
	addq	%rax, %rax	# D.14469
	addq	%rdx, %rax	# reg_renumber.296, D.14470
	movzwl	(%rax), %eax	# *_176, D.14471
	cmpw	$36, %ax	#, D.14467
	jbe	.L670	#,
	.loc 1 1446 0 discriminator 1
	movq	reg_renumber(%rip), %rdx	# reg_renumber, reg_renumber.297
	movq	-80(%rbp), %rax	# op0, tmp371
	movl	8(%rax), %eax	# op0_10->fld[0].rtuint, D.14468
	movl	%eax, %eax	# D.14468, D.14469
	addq	%rax, %rax	# D.14469
	addq	%rdx, %rax	# reg_renumber.297, D.14470
	movzwl	(%rax), %eax	# *_183, D.14471
	cmpw	$44, %ax	#, D.14467
	jbe	.L668	#,
.L670:
	.loc 1 1446 0 discriminator 2
	movq	reg_renumber(%rip), %rdx	# reg_renumber, reg_renumber.298
	movq	-80(%rbp), %rax	# op0, tmp372
	movl	8(%rax), %eax	# op0_10->fld[0].rtuint, D.14468
	movl	%eax, %eax	# D.14468, D.14469
	addq	%rax, %rax	# D.14469
	addq	%rdx, %rax	# reg_renumber.298, D.14470
	movzwl	(%rax), %eax	# *_190, D.14471
	cmpw	$7, %ax	#, D.14467
	ja	.L671	#,
.L668:
	.loc 1 1447 0 is_stmt 1
	movl	$1, -88(%rbp)	#, index_op
	jmp	.L656	#
.L671:
	.loc 1 1448 0
	movq	-72(%rbp), %rax	# op1, tmp373
	movl	8(%rax), %eax	# op1_11->fld[0].rtuint, D.14468
	cmpl	$6, %eax	#, D.14468
	jbe	.L672	#,
	.loc 1 1448 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# op1, tmp374
	movl	8(%rax), %eax	# op1_11->fld[0].rtuint, D.14468
	cmpl	$36, %eax	#, D.14468
	jbe	.L673	#,
	movq	-72(%rbp), %rax	# op1, tmp375
	movl	8(%rax), %eax	# op1_11->fld[0].rtuint, D.14468
	cmpl	$44, %eax	#, D.14468
	jbe	.L672	#,
.L673:
	.loc 1 1448 0 discriminator 2
	movq	reg_renumber(%rip), %rdx	# reg_renumber, reg_renumber.299
	movq	-72(%rbp), %rax	# op1, tmp376
	movl	8(%rax), %eax	# op1_11->fld[0].rtuint, D.14468
	movl	%eax, %eax	# D.14468, D.14469
	addq	%rax, %rax	# D.14469
	addq	%rdx, %rax	# reg_renumber.299, D.14470
	movzwl	(%rax), %eax	# *_200, D.14471
	cmpw	$36, %ax	#, D.14467
	jbe	.L674	#,
	.loc 1 1448 0 discriminator 1
	movq	reg_renumber(%rip), %rdx	# reg_renumber, reg_renumber.300
	movq	-72(%rbp), %rax	# op1, tmp377
	movl	8(%rax), %eax	# op1_11->fld[0].rtuint, D.14468
	movl	%eax, %eax	# D.14468, D.14469
	addq	%rax, %rax	# D.14469
	addq	%rdx, %rax	# reg_renumber.300, D.14470
	movzwl	(%rax), %eax	# *_207, D.14471
	cmpw	$44, %ax	#, D.14467
	jbe	.L672	#,
.L674:
	.loc 1 1448 0 discriminator 2
	movq	reg_renumber(%rip), %rdx	# reg_renumber, reg_renumber.301
	movq	-72(%rbp), %rax	# op1, tmp378
	movl	8(%rax), %eax	# op1_11->fld[0].rtuint, D.14468
	movl	%eax, %eax	# D.14468, D.14469
	addq	%rax, %rax	# D.14469
	addq	%rdx, %rax	# reg_renumber.301, D.14470
	movzwl	(%rax), %eax	# *_214, D.14471
	cmpw	$6, %ax	#, D.14467
	ja	.L675	#,
.L672:
	.loc 1 1449 0 is_stmt 1
	movl	$1, -88(%rbp)	#, index_op
	jmp	.L656	#
.L675:
	.loc 1 1451 0
	movl	$0, -88(%rbp)	#, index_op
.L656:
	.loc 1 1453 0
	movl	-88(%rbp), %eax	# index_op, tmp380
	cltq
	leaq	0(,%rax,8), %rdx	#, tmp381
	movq	-48(%rbp), %rax	# x, tmp383
	addq	%rdx, %rax	# tmp381, tmp382
	addq	$8, %rax	#, tmp384
	movq	%rax, -64(%rbp)	# tmp384, locI
	.loc 1 1454 0
	cmpl	$0, -88(%rbp)	#, index_op
	sete	%al	#, D.14466
	movzbl	%al, %eax	# D.14466, D.14472
	cltq
	leaq	0(,%rax,8), %rdx	#, tmp386
	movq	-48(%rbp), %rax	# x, tmp388
	addq	%rdx, %rax	# tmp386, tmp387
	addq	$8, %rax	#, tmp389
	movq	%rax, -56(%rbp)	# tmp389, locB
.LBE38:
	.loc 1 1435 0
	jmp	.L641	#
.L648:
	.loc 1 1456 0
	cmpl	$61, -96(%rbp)	#, code0
	jne	.L676	#,
	.loc 1 1458 0
	movq	-48(%rbp), %rax	# x, tmp393
	addq	$8, %rax	#, tmp392
	movq	%rax, -64(%rbp)	# tmp392, locI
	.loc 1 1459 0
	movq	-48(%rbp), %rax	# x, tmp397
	addq	$16, %rax	#, tmp396
	movq	%rax, -56(%rbp)	# tmp396, locB
	jmp	.L641	#
.L676:
	.loc 1 1461 0
	cmpl	$61, -92(%rbp)	#, code1
	jne	.L641	#,
	.loc 1 1463 0
	movq	-48(%rbp), %rax	# x, tmp401
	addq	$16, %rax	#, tmp400
	movq	%rax, -64(%rbp)	# tmp400, locI
	.loc 1 1464 0
	movq	-48(%rbp), %rax	# x, tmp405
	addq	$8, %rax	#, tmp404
	movq	%rax, -56(%rbp)	# tmp404, locB
.L641:
	.loc 1 1467 0
	cmpq	$0, -64(%rbp)	#, locI
	je	.L677	#,
	.loc 1 1468 0
	movzbl	-105(%rbp), %ebx	# changed, D.14472
	movq	-144(%rbp), %rsi	# vd, tmp406
	movq	-136(%rbp), %rcx	# insn, tmp407
	movl	-128(%rbp), %edx	# mode, tmp408
	movq	-64(%rbp), %rax	# locI, tmp409
	movq	%rsi, %r8	# tmp406,
	movl	$10, %esi	#,
	movq	%rax, %rdi	# tmp409,
	call	replace_oldest_value_addr	#
	movzbl	%al, %eax	# D.14466, D.14472
	orl	%ebx, %eax	# D.14472, D.14472
	testl	%eax, %eax	# D.14472
	setne	%al	#, tmp410
	movb	%al, -105(%rbp)	# tmp410, changed
.L677:
	.loc 1 1470 0
	cmpq	$0, -56(%rbp)	#, locB
	je	.L678	#,
	.loc 1 1471 0
	movzbl	-105(%rbp), %ebx	# changed, D.14472
	movq	-144(%rbp), %rsi	# vd, tmp411
	movq	-136(%rbp), %rcx	# insn, tmp412
	movl	-128(%rbp), %edx	# mode, tmp413
	movq	-56(%rbp), %rax	# locB, tmp414
	movq	%rsi, %r8	# tmp411,
	movl	$12, %esi	#,
	movq	%rax, %rdi	# tmp414,
	call	replace_oldest_value_addr	#
	movzbl	%al, %eax	# D.14466, D.14472
	orl	%ebx, %eax	# D.14472, D.14472
	testl	%eax, %eax	# D.14472
	setne	%al	#, tmp415
	movb	%al, -105(%rbp)	# tmp415, changed
.L678:
	.loc 1 1474 0
	movzbl	-105(%rbp), %eax	# changed, D.14466
	jmp	.L679	#
.L636:
.LBE37:
	.loc 1 1483 0
	movl	$0, %eax	#, D.14466
	jmp	.L679	#
.L634:
	.loc 1 1486 0
	movq	-144(%rbp), %rdx	# vd, tmp416
	movq	-136(%rbp), %rcx	# insn, tmp417
	movq	-48(%rbp), %rax	# x, tmp418
	movq	%rcx, %rsi	# tmp417,
	movq	%rax, %rdi	# tmp418,
	call	replace_oldest_value_mem	#
	jmp	.L679	#
.L632:
	.loc 1 1489 0
	movq	-144(%rbp), %rcx	# vd, tmp419
	movq	-136(%rbp), %rdx	# insn, tmp420
	movl	-124(%rbp), %esi	# class, tmp421
	movq	-120(%rbp), %rax	# loc, tmp422
	movq	%rax, %rdi	# tmp422,
	call	replace_oldest_value_reg	#
	jmp	.L679	#
.L687:
	.loc 1 1492 0
	nop
	.loc 1 1495 0
	movl	-84(%rbp), %eax	# code, code.302
	cltq
	movq	rtx_format(,%rax,8), %rax	# rtx_format, tmp424
	movq	%rax, -24(%rbp)	# tmp424, fmt
	.loc 1 1496 0
	movl	-84(%rbp), %eax	# code, code.303
	cltq
	movzbl	rtx_length(%rax), %eax	# rtx_length, D.14473
	movzbl	%al, %eax	# D.14473, D.14472
	subl	$1, %eax	#, tmp426
	movl	%eax, -104(%rbp)	# tmp426, i
	jmp	.L680	#
.L685:
	.loc 1 1498 0
	movl	-104(%rbp), %eax	# i, tmp427
	movslq	%eax, %rdx	# tmp427, D.14474
	movq	-24(%rbp), %rax	# fmt, tmp428
	addq	%rdx, %rax	# D.14474, D.14475
	movzbl	(%rax), %eax	# *_260, D.14476
	cmpb	$101, %al	#, D.14476
	jne	.L681	#,
	.loc 1 1499 0
	movzbl	-105(%rbp), %ebx	# changed, D.14472
	movl	-104(%rbp), %eax	# i, tmp430
	cltq
	leaq	0(,%rax,8), %rdx	#, tmp431
	movq	-48(%rbp), %rax	# x, tmp433
	addq	%rdx, %rax	# tmp431, tmp432
	leaq	8(%rax), %rdi	#, D.14477
	movq	-144(%rbp), %rsi	# vd, tmp434
	movq	-136(%rbp), %rcx	# insn, tmp435
	movl	-128(%rbp), %edx	# mode, tmp436
	movl	-124(%rbp), %eax	# class, tmp437
	movq	%rsi, %r8	# tmp434,
	movl	%eax, %esi	# tmp437,
	call	replace_oldest_value_addr	#
	movzbl	%al, %eax	# D.14466, D.14472
	orl	%ebx, %eax	# D.14472, D.14472
	testl	%eax, %eax	# D.14472
	setne	%al	#, tmp438
	movb	%al, -105(%rbp)	# tmp438, changed
	jmp	.L682	#
.L681:
	.loc 1 1501 0
	movl	-104(%rbp), %eax	# i, tmp439
	movslq	%eax, %rdx	# tmp439, D.14474
	movq	-24(%rbp), %rax	# fmt, tmp440
	addq	%rdx, %rax	# D.14474, D.14475
	movzbl	(%rax), %eax	# *_269, D.14476
	cmpb	$69, %al	#, D.14476
	jne	.L682	#,
	.loc 1 1502 0
	movq	-48(%rbp), %rax	# x, tmp441
	movl	-104(%rbp), %edx	# i, tmp443
	movslq	%edx, %rdx	# tmp443, tmp442
	movq	8(%rax,%rdx,8), %rax	# x_17->fld[i_1].rtvec, D.14478
	movl	(%rax), %eax	# _271->num_elem, D.14472
	subl	$1, %eax	#, tmp444
	movl	%eax, -100(%rbp)	# tmp444, j
	jmp	.L683	#
.L684:
	.loc 1 1503 0 discriminator 2
	movzbl	-105(%rbp), %ebx	# changed, D.14472
	movq	-48(%rbp), %rax	# x, tmp445
	movl	-104(%rbp), %edx	# i, tmp447
	movslq	%edx, %rdx	# tmp447, tmp446
	movq	8(%rax,%rdx,8), %rax	# x_17->fld[i_1].rtvec, D.14478
	movl	-100(%rbp), %edx	# j, tmp449
	movslq	%edx, %rdx	# tmp449, tmp448
	salq	$3, %rdx	#, tmp450
	addq	%rdx, %rax	# tmp450, tmp451
	leaq	8(%rax), %rdi	#, D.14477
	movq	-144(%rbp), %rsi	# vd, tmp452
	movq	-136(%rbp), %rcx	# insn, tmp453
	movl	-128(%rbp), %edx	# mode, tmp454
	movl	-124(%rbp), %eax	# class, tmp455
	movq	%rsi, %r8	# tmp452,
	movl	%eax, %esi	# tmp455,
	call	replace_oldest_value_addr	#
	movzbl	%al, %eax	# D.14466, D.14472
	orl	%ebx, %eax	# D.14472, D.14472
	testl	%eax, %eax	# D.14472
	setne	%al	#, tmp456
	movb	%al, -105(%rbp)	# tmp456, changed
	.loc 1 1502 0 discriminator 2
	subl	$1, -100(%rbp)	#, j
.L683:
	.loc 1 1502 0 is_stmt 0 discriminator 1
	cmpl	$0, -100(%rbp)	#, j
	jns	.L684	#,
.L682:
	.loc 1 1496 0 is_stmt 1
	subl	$1, -104(%rbp)	#, i
.L680:
	.loc 1 1496 0 is_stmt 0 discriminator 1
	cmpl	$0, -104(%rbp)	#, i
	jns	.L685	#,
	.loc 1 1507 0 is_stmt 1
	movzbl	-105(%rbp), %eax	# changed, D.14466
.L679:
	.loc 1 1508 0
	addq	$136, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE23:
	.size	replace_oldest_value_addr, .-replace_oldest_value_addr
	.type	replace_oldest_value_mem, @function
replace_oldest_value_mem:
.LFB24:
	.loc 1 1517 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -8(%rbp)	# x, x
	movq	%rsi, -16(%rbp)	# insn, insn
	movq	%rdx, -24(%rbp)	# vd, vd
	.loc 1 1520 0
	movq	-8(%rbp), %rax	# x, tmp64
	movzbl	2(%rax), %eax	# x_1(D)->mode, D.14479
	.loc 1 1518 0
	movzbl	%al, %eax	# D.14479, D.14480
	movq	-8(%rbp), %rdx	# x, tmp65
	leaq	8(%rdx), %rdi	#, D.14481
	movq	-24(%rbp), %rcx	# vd, tmp66
	movq	-16(%rbp), %rdx	# insn, tmp67
	movq	%rcx, %r8	# tmp66,
	movq	%rdx, %rcx	# tmp67,
	movl	%eax, %edx	# D.14480,
	movl	$12, %esi	#,
	call	replace_oldest_value_addr	#
	.loc 1 1521 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE24:
	.size	replace_oldest_value_mem, .-replace_oldest_value_mem
	.type	copyprop_hardreg_forward_1, @function
copyprop_hardreg_forward_1:
.LFB25:
	.loc 1 1529 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$104, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -104(%rbp)	# bb, bb
	movq	%rsi, -112(%rbp)	# vd, vd
	.loc 1 1530 0
	movb	$0, -95(%rbp)	#, changed
	.loc 1 1533 0
	movq	-104(%rbp), %rax	# bb, tmp208
	movq	(%rax), %rax	# bb_36(D)->head, tmp209
	movq	%rax, -56(%rbp)	# tmp209, insn
.L780:
.LBB39:
	.loc 1 1539 0
	movq	-56(%rbp), %rax	# insn, tmp210
	movzwl	(%rax), %eax	# insn_7->code, D.14483
	movzwl	%ax, %eax	# D.14483, D.14484
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.14485
	cmpb	$105, %al	#, D.14485
	je	.L691	#,
	.loc 1 1541 0
	movq	-104(%rbp), %rax	# bb, tmp212
	movq	8(%rax), %rax	# bb_36(D)->end, D.14486
	cmpq	-56(%rbp), %rax	# insn, D.14486
	jne	.L692	#,
	.loc 1 1542 0
	jmp	.L693	#
.L692:
	.loc 1 1544 0
	jmp	.L694	#
.L691:
	.loc 1 1547 0
	movq	-56(%rbp), %rax	# insn, tmp213
	movzwl	(%rax), %eax	# insn_7->code, D.14483
	movzwl	%ax, %eax	# D.14483, D.14484
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.14485
	cmpb	$105, %al	#, D.14485
	jne	.L695	#,
	.loc 1 1547 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# insn, tmp215
	movq	32(%rax), %rax	# insn_7->fld[3].rtx, D.14486
	movzwl	(%rax), %eax	# _45->code, D.14483
	cmpw	$47, %ax	#, D.14483
	jne	.L696	#,
	.loc 1 1547 0 discriminator 3
	movq	-56(%rbp), %rax	# insn, tmp216
	movq	32(%rax), %rax	# insn_7->fld[3].rtx, iftmp.305
	jmp	.L698	#
.L696:
	.loc 1 1547 0 discriminator 4
	movq	-56(%rbp), %rax	# insn, tmp217
	movq	32(%rax), %rdx	# insn_7->fld[3].rtx, D.14486
	movq	-56(%rbp), %rax	# insn, tmp218
	movq	%rdx, %rsi	# D.14486,
	movq	%rax, %rdi	# tmp218,
	call	single_set_2	#
	jmp	.L698	#
.L695:
	.loc 1 1547 0 discriminator 2
	movl	$0, %eax	#, iftmp.304
.L698:
	.loc 1 1547 0 discriminator 5
	movq	%rax, -48(%rbp)	# iftmp.304, set
	.loc 1 1548 0 is_stmt 1 discriminator 5
	movq	-56(%rbp), %rax	# insn, tmp219
	movq	%rax, %rdi	# tmp219,
	call	extract_insn	#
	.loc 1 1549 0 discriminator 5
	movl	$1, %edi	#,
	call	constrain_operands	#
	.loc 1 1550 0 discriminator 5
	call	preprocess_constraints	#
	.loc 1 1551 0 discriminator 5
	movl	which_alternative(%rip), %eax	# which_alternative, tmp220
	movl	%eax, -80(%rbp)	# tmp220, alt
	.loc 1 1552 0 discriminator 5
	movzbl	recog_data+996(%rip), %eax	# recog_data.n_operands, D.14485
	movsbl	%al, %eax	# D.14485, tmp221
	movl	%eax, -76(%rbp)	# tmp221, n_ops
	.loc 1 1553 0 discriminator 5
	movq	-56(%rbp), %rax	# insn, tmp222
	movq	32(%rax), %rax	# insn_7->fld[3].rtx, D.14486
	movq	%rax, %rdi	# D.14486,
	call	asm_noperands	#
	notl	%eax	# tmp223
	shrl	$31, %eax	#, tmp224
	movb	%al, -93(%rbp)	# tmp224, is_asm
	.loc 1 1559 0 discriminator 5
	movq	-56(%rbp), %rax	# insn, tmp225
	movq	32(%rax), %rax	# insn_7->fld[3].rtx, D.14486
	movzwl	(%rax), %eax	# _59->code, D.14483
	cmpw	$38, %ax	#, D.14483
	sete	%al	#, D.14487
	movzbl	%al, %eax	# D.14487, tmp226
	movl	%eax, -72(%rbp)	# tmp226, predicated
	.loc 1 1560 0 discriminator 5
	movl	$0, -92(%rbp)	#, i
	jmp	.L699	#
.L703:
.LBB40:
	.loc 1 1562 0
	movl	-80(%rbp), %eax	# alt, tmp228
	movslq	%eax, %rcx	# tmp228, tmp227
	movl	-92(%rbp), %eax	# i, tmp230
	cltq
	addq	%rax, %rax	# tmp232
	movq	%rax, %rdx	# tmp231, tmp233
	salq	$4, %rdx	#, tmp233
	subq	%rax, %rdx	# tmp231, tmp233
	leaq	(%rdx,%rcx), %rax	#, tmp234
	salq	$5, %rax	#, tmp235
	addq	$recog_op_alt+16, %rax	#, tmp236
	movl	(%rax), %eax	# recog_op_alt[i_8][alt_53].matches, tmp237
	movl	%eax, -68(%rbp)	# tmp237, matches
	.loc 1 1563 0
	cmpl	$0, -68(%rbp)	#, matches
	js	.L700	#,
	.loc 1 1564 0
	movl	-80(%rbp), %eax	# alt, tmp239
	movslq	%eax, %rcx	# tmp239, tmp238
	movl	-68(%rbp), %eax	# matches, tmp241
	cltq
	addq	%rax, %rax	# tmp243
	movq	%rax, %rdx	# tmp242, tmp244
	salq	$4, %rdx	#, tmp244
	subq	%rax, %rdx	# tmp242, tmp244
	leaq	(%rdx,%rcx), %rax	#, tmp245
	salq	$5, %rax	#, tmp246
	addq	$recog_op_alt, %rax	#, tmp247
	movl	8(%rax), %ecx	# recog_op_alt[matches_64][alt_53].class, D.14488
	movl	-80(%rbp), %eax	# alt, tmp249
	movslq	%eax, %rsi	# tmp249, tmp248
	movl	-92(%rbp), %eax	# i, tmp251
	cltq
	addq	%rax, %rax	# tmp253
	movq	%rax, %rdx	# tmp252, tmp254
	salq	$4, %rdx	#, tmp254
	subq	%rax, %rdx	# tmp252, tmp254
	leaq	(%rdx,%rsi), %rax	#, tmp255
	salq	$5, %rax	#, tmp256
	addq	$recog_op_alt, %rax	#, tmp257
	movl	%ecx, 8(%rax)	# D.14488, recog_op_alt[i_8][alt_53].class
.L700:
	.loc 1 1565 0
	cmpl	$0, -68(%rbp)	#, matches
	jns	.L701	#,
	.loc 1 1565 0 is_stmt 0 discriminator 1
	movl	-80(%rbp), %eax	# alt, tmp259
	movslq	%eax, %rcx	# tmp259, tmp258
	movl	-92(%rbp), %eax	# i, tmp261
	cltq
	addq	%rax, %rax	# tmp263
	movq	%rax, %rdx	# tmp262, tmp264
	salq	$4, %rdx	#, tmp264
	subq	%rax, %rdx	# tmp262, tmp264
	leaq	(%rdx,%rcx), %rax	#, tmp265
	salq	$5, %rax	#, tmp266
	addq	$recog_op_alt+16, %rax	#, tmp267
	movl	4(%rax), %eax	# recog_op_alt[i_8][alt_53].matched, D.14484
	testl	%eax, %eax	# D.14484
	jns	.L701	#,
	.loc 1 1566 0 is_stmt 1
	cmpl	$0, -72(%rbp)	#, predicated
	je	.L702	#,
	.loc 1 1566 0 is_stmt 0 discriminator 1
	movl	-92(%rbp), %eax	# i, tmp269
	cltq
	addq	$208, %rax	#, tmp270
	movl	recog_data+8(,%rax,4), %eax	# recog_data.operand_type, D.14489
	cmpl	$1, %eax	#, D.14489
	jne	.L702	#,
.L701:
	.loc 1 1567 0 is_stmt 1
	movl	-92(%rbp), %eax	# i, tmp272
	cltq
	addq	$208, %rax	#, tmp273
	movl	$2, recog_data+8(,%rax,4)	#, recog_data.operand_type
.L702:
.LBE40:
	.loc 1 1560 0
	addl	$1, -92(%rbp)	#, i
.L699:
	.loc 1 1560 0 is_stmt 0 discriminator 1
	movl	-92(%rbp), %eax	# i, tmp274
	cmpl	-76(%rbp), %eax	# n_ops, tmp274
	jl	.L703	#,
	.loc 1 1571 0 is_stmt 1
	movl	$0, -92(%rbp)	#, i
	jmp	.L704	#
.L706:
	.loc 1 1572 0
	movl	-80(%rbp), %eax	# alt, tmp276
	movslq	%eax, %rcx	# tmp276, tmp275
	movl	-92(%rbp), %eax	# i, tmp278
	cltq
	addq	%rax, %rax	# tmp280
	movq	%rax, %rdx	# tmp279, tmp281
	salq	$4, %rdx	#, tmp281
	subq	%rax, %rdx	# tmp279, tmp281
	leaq	(%rdx,%rcx), %rax	#, tmp282
	salq	$5, %rax	#, tmp283
	addq	$recog_op_alt+16, %rax	#, tmp284
	movzbl	8(%rax), %eax	#, tmp287
	andl	$1, %eax	#, D.14490
	testb	%al, %al	# D.14490
	je	.L705	#,
	.loc 1 1573 0
	movl	-92(%rbp), %eax	# i, tmp289
	cltq
	movq	recog_data(,%rax,8), %rax	# recog_data.operand, D.14486
	movq	-112(%rbp), %rdx	# vd, tmp290
	movq	%rdx, %rsi	# tmp290,
	movq	%rax, %rdi	# D.14486,
	call	kill_value	#
.L705:
	.loc 1 1571 0
	addl	$1, -92(%rbp)	#, i
.L704:
	.loc 1 1571 0 is_stmt 0 discriminator 1
	movl	-92(%rbp), %eax	# i, tmp291
	cmpl	-76(%rbp), %eax	# n_ops, tmp291
	jl	.L706	#,
	.loc 1 1578 0 is_stmt 1
	movq	-56(%rbp), %rax	# insn, tmp292
	movq	32(%rax), %rax	# insn_7->fld[3].rtx, D.14486
	movq	-112(%rbp), %rdx	# vd, tmp293
	movl	$kill_clobbered_value, %esi	#,
	movq	%rax, %rdi	# D.14486,
	call	note_stores	#
	.loc 1 1582 0
	movq	-56(%rbp), %rax	# insn, tmp294
	leaq	32(%rax), %rcx	#, D.14491
	movq	-112(%rbp), %rax	# vd, tmp295
	movq	%rax, %rdx	# tmp295,
	movl	$kill_autoinc_value, %esi	#,
	movq	%rcx, %rdi	# D.14491,
	call	for_each_rtx	#
	.loc 1 1585 0
	movl	$0, -92(%rbp)	#, i
	jmp	.L707	#
.L709:
	.loc 1 1586 0
	movl	-80(%rbp), %eax	# alt, tmp297
	movslq	%eax, %rcx	# tmp297, tmp296
	movl	-92(%rbp), %eax	# i, tmp299
	cltq
	addq	%rax, %rax	# tmp301
	movq	%rax, %rdx	# tmp300, tmp302
	salq	$4, %rdx	#, tmp302
	subq	%rax, %rdx	# tmp300, tmp302
	leaq	(%rdx,%rcx), %rax	#, tmp303
	salq	$5, %rax	#, tmp304
	addq	$recog_op_alt+16, %rax	#, tmp305
	movzbl	8(%rax), %eax	#, tmp308
	andl	$1, %eax	#, D.14490
	testb	%al, %al	# D.14490
	je	.L708	#,
	.loc 1 1587 0
	movl	-92(%rbp), %eax	# i, tmp310
	cltq
	movq	recog_data(,%rax,8), %rax	# recog_data.operand, D.14486
	movq	-112(%rbp), %rdx	# vd, tmp311
	movq	%rdx, %rsi	# tmp311,
	movq	%rax, %rdi	# D.14486,
	call	kill_value	#
.L708:
	.loc 1 1585 0
	addl	$1, -92(%rbp)	#, i
.L707:
	.loc 1 1585 0 is_stmt 0 discriminator 1
	movl	-92(%rbp), %eax	# i, tmp312
	cmpl	-76(%rbp), %eax	# n_ops, tmp312
	jl	.L709	#,
	.loc 1 1591 0 is_stmt 1
	cmpq	$0, -48(%rbp)	#, set
	je	.L710	#,
	.loc 1 1591 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# set, tmp313
	movq	16(%rax), %rax	# set_52->fld[1].rtx, D.14486
	movzwl	(%rax), %eax	# _80->code, D.14483
	cmpw	$61, %ax	#, D.14483
	jne	.L710	#,
.LBB41:
	.loc 1 1593 0 is_stmt 1
	movq	-48(%rbp), %rax	# set, tmp314
	movq	16(%rax), %rax	# set_52->fld[1].rtx, tmp315
	movq	%rax, -40(%rbp)	# tmp315, src
	.loc 1 1594 0
	movq	-40(%rbp), %rax	# src, tmp316
	movl	8(%rax), %eax	# src_82->fld[0].rtuint, tmp317
	movl	%eax, -64(%rbp)	# tmp317, regno
	.loc 1 1595 0
	movq	-40(%rbp), %rax	# src, tmp318
	movzbl	2(%rax), %eax	# src_82->mode, D.14492
	movzbl	%al, %eax	# D.14492, tmp319
	movl	%eax, -60(%rbp)	# tmp319, mode
	.loc 1 1601 0
	movq	-112(%rbp), %rcx	# vd, tmp320
	movl	-64(%rbp), %edx	# regno, tmp321
	movq	%rdx, %rax	# tmp321, tmp322
	addq	%rax, %rax	# tmp322
	addq	%rdx, %rax	# tmp321, tmp322
	salq	$2, %rax	#, tmp323
	addq	%rcx, %rax	# tmp320, tmp324
	movl	(%rax), %eax	# vd_72(D)->e[regno_83].mode, D.14493
	cmpl	-60(%rbp), %eax	# mode, D.14493
	je	.L711	#,
	.loc 1 1603 0
	cmpl	$7, -64(%rbp)	#, regno
	jbe	.L712	#,
	.loc 1 1603 0 is_stmt 0 discriminator 1
	cmpl	$15, -64(%rbp)	#, regno
	jbe	.L713	#,
.L712:
	.loc 1 1603 0 discriminator 2
	cmpl	$20, -64(%rbp)	#, regno
	jbe	.L714	#,
	.loc 1 1603 0 discriminator 1
	cmpl	$28, -64(%rbp)	#, regno
	jbe	.L713	#,
.L714:
	.loc 1 1603 0 discriminator 2
	cmpl	$44, -64(%rbp)	#, regno
	jbe	.L715	#,
	.loc 1 1603 0 discriminator 1
	cmpl	$52, -64(%rbp)	#, regno
	jbe	.L713	#,
.L715:
	.loc 1 1603 0 discriminator 2
	cmpl	$28, -64(%rbp)	#, regno
	jbe	.L716	#,
	.loc 1 1603 0 discriminator 1
	cmpl	$36, -64(%rbp)	#, regno
	ja	.L716	#,
.L713:
	movl	-60(%rbp), %eax	# mode, mode.308
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.14494
	cmpl	$5, %eax	#, D.14494
	je	.L717	#,
	.loc 1 1603 0 discriminator 2
	movl	-60(%rbp), %eax	# mode, mode.309
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.14494
	cmpl	$6, %eax	#, D.14494
	jne	.L718	#,
.L717:
	.loc 1 1603 0 discriminator 1
	movl	$2, %eax	#, iftmp.307
	jmp	.L719	#
.L718:
	movl	$1, %eax	#, iftmp.307
.L719:
	.loc 1 1603 0 discriminator 3
	movl	%eax, %ecx	# iftmp.307, iftmp.306
	jmp	.L720	#
.L716:
	.loc 1 1603 0 discriminator 2
	cmpl	$18, -60(%rbp)	#, mode
	jne	.L721	#,
	.loc 1 1603 0 discriminator 1
	movl	target_flags(%rip), %eax	# target_flags, target_flags.312
	andl	$33554432, %eax	#, D.14484
	testl	%eax, %eax	# D.14484
	je	.L722	#,
	movl	$2, %eax	#, iftmp.311
	jmp	.L724	#
.L722:
	.loc 1 1603 0 discriminator 2
	movl	$3, %eax	#, iftmp.311
	jmp	.L724	#
.L721:
	cmpl	$24, -60(%rbp)	#, mode
	jne	.L725	#,
	.loc 1 1603 0 discriminator 1
	movl	target_flags(%rip), %eax	# target_flags, target_flags.315
	andl	$33554432, %eax	#, D.14484
	testl	%eax, %eax	# D.14484
	je	.L726	#,
	movl	$4, %eax	#, iftmp.314
	jmp	.L724	#
.L726:
	.loc 1 1603 0 discriminator 2
	movl	$6, %eax	#, iftmp.314
	jmp	.L724	#
.L725:
	movl	-60(%rbp), %eax	# mode, mode.316
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.14492
	movzbl	%al, %edx	# D.14492, D.14484
	movl	target_flags(%rip), %eax	# target_flags, target_flags.318
	andl	$33554432, %eax	#, D.14484
	testl	%eax, %eax	# D.14484
	je	.L729	#,
	.loc 1 1603 0 discriminator 1
	movl	$8, %eax	#, iftmp.317
	jmp	.L730	#
.L729:
	.loc 1 1603 0 discriminator 2
	movl	$4, %eax	#, iftmp.317
.L730:
	.loc 1 1603 0 discriminator 3
	addl	%edx, %eax	# D.14484, D.14484
	subl	$1, %eax	#, D.14484
	movl	target_flags(%rip), %edx	# target_flags, target_flags.320
	andl	$33554432, %edx	#, D.14484
	testl	%edx, %edx	# D.14484
	je	.L731	#,
	.loc 1 1603 0 discriminator 1
	movl	$8, %ebx	#, iftmp.319
	jmp	.L732	#
.L731:
	.loc 1 1603 0 discriminator 2
	movl	$4, %ebx	#, iftmp.319
.L732:
	.loc 1 1603 0 discriminator 3
	cltd
	idivl	%ebx	# iftmp.319
.L724:
	movl	%eax, %ecx	# iftmp.310, iftmp.306
.L720:
	.loc 1 1604 0 is_stmt 1
	cmpl	$7, -64(%rbp)	#, regno
	jbe	.L733	#,
	.loc 1 1604 0 is_stmt 0 discriminator 1
	cmpl	$15, -64(%rbp)	#, regno
	jbe	.L734	#,
.L733:
	.loc 1 1604 0 discriminator 2
	cmpl	$20, -64(%rbp)	#, regno
	jbe	.L735	#,
	.loc 1 1604 0 discriminator 1
	cmpl	$28, -64(%rbp)	#, regno
	jbe	.L734	#,
.L735:
	.loc 1 1604 0 discriminator 2
	cmpl	$44, -64(%rbp)	#, regno
	jbe	.L736	#,
	.loc 1 1604 0 discriminator 1
	cmpl	$52, -64(%rbp)	#, regno
	jbe	.L734	#,
.L736:
	.loc 1 1604 0 discriminator 2
	cmpl	$28, -64(%rbp)	#, regno
	jbe	.L737	#,
	.loc 1 1604 0 discriminator 1
	cmpl	$36, -64(%rbp)	#, regno
	ja	.L737	#,
.L734:
	movq	-112(%rbp), %rsi	# vd, tmp330
	movl	-64(%rbp), %edx	# regno, tmp331
	movq	%rdx, %rax	# tmp331, tmp332
	addq	%rax, %rax	# tmp332
	addq	%rdx, %rax	# tmp331, tmp332
	salq	$2, %rax	#, tmp333
	addq	%rsi, %rax	# tmp330, tmp334
	movl	(%rax), %eax	# vd_72(D)->e[regno_83].mode, D.14493
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.14494
	cmpl	$5, %eax	#, D.14494
	je	.L738	#,
	.loc 1 1604 0 discriminator 2
	movq	-112(%rbp), %rsi	# vd, tmp336
	movl	-64(%rbp), %edx	# regno, tmp337
	movq	%rdx, %rax	# tmp337, tmp338
	addq	%rax, %rax	# tmp338
	addq	%rdx, %rax	# tmp337, tmp338
	salq	$2, %rax	#, tmp339
	addq	%rsi, %rax	# tmp336, tmp340
	movl	(%rax), %eax	# vd_72(D)->e[regno_83].mode, D.14493
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.14494
	cmpl	$6, %eax	#, D.14494
	jne	.L739	#,
.L738:
	.loc 1 1604 0 discriminator 1
	movl	$2, %eax	#, iftmp.322
	jmp	.L740	#
.L739:
	movl	$1, %eax	#, iftmp.322
.L740:
	.loc 1 1604 0 discriminator 3
	jmp	.L741	#
.L737:
	.loc 1 1604 0 discriminator 2
	movq	-112(%rbp), %rsi	# vd, tmp342
	movl	-64(%rbp), %edx	# regno, tmp343
	movq	%rdx, %rax	# tmp343, tmp344
	addq	%rax, %rax	# tmp344
	addq	%rdx, %rax	# tmp343, tmp344
	salq	$2, %rax	#, tmp345
	addq	%rsi, %rax	# tmp342, tmp346
	movl	(%rax), %eax	# vd_72(D)->e[regno_83].mode, D.14493
	cmpl	$18, %eax	#, D.14493
	jne	.L742	#,
	.loc 1 1604 0 discriminator 1
	movl	target_flags(%rip), %eax	# target_flags, target_flags.325
	andl	$33554432, %eax	#, D.14484
	testl	%eax, %eax	# D.14484
	je	.L743	#,
	movl	$2, %eax	#, iftmp.324
	jmp	.L741	#
.L743:
	.loc 1 1604 0 discriminator 2
	movl	$3, %eax	#, iftmp.324
	jmp	.L741	#
.L742:
	movq	-112(%rbp), %rsi	# vd, tmp347
	movl	-64(%rbp), %edx	# regno, tmp348
	movq	%rdx, %rax	# tmp348, tmp349
	addq	%rax, %rax	# tmp349
	addq	%rdx, %rax	# tmp348, tmp349
	salq	$2, %rax	#, tmp350
	addq	%rsi, %rax	# tmp347, tmp351
	movl	(%rax), %eax	# vd_72(D)->e[regno_83].mode, D.14493
	cmpl	$24, %eax	#, D.14493
	jne	.L746	#,
	.loc 1 1604 0 discriminator 1
	movl	target_flags(%rip), %eax	# target_flags, target_flags.328
	andl	$33554432, %eax	#, D.14484
	testl	%eax, %eax	# D.14484
	je	.L747	#,
	movl	$4, %eax	#, iftmp.327
	jmp	.L741	#
.L747:
	.loc 1 1604 0 discriminator 2
	movl	$6, %eax	#, iftmp.327
	jmp	.L741	#
.L746:
	movq	-112(%rbp), %rsi	# vd, tmp352
	movl	-64(%rbp), %edx	# regno, tmp353
	movq	%rdx, %rax	# tmp353, tmp354
	addq	%rax, %rax	# tmp354
	addq	%rdx, %rax	# tmp353, tmp354
	salq	$2, %rax	#, tmp355
	addq	%rsi, %rax	# tmp352, tmp356
	movl	(%rax), %eax	# vd_72(D)->e[regno_83].mode, D.14493
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.14492
	movzbl	%al, %edx	# D.14492, D.14484
	movl	target_flags(%rip), %eax	# target_flags, target_flags.330
	andl	$33554432, %eax	#, D.14484
	testl	%eax, %eax	# D.14484
	je	.L750	#,
	.loc 1 1604 0 discriminator 1
	movl	$8, %eax	#, iftmp.329
	jmp	.L751	#
.L750:
	.loc 1 1604 0 discriminator 2
	movl	$4, %eax	#, iftmp.329
.L751:
	.loc 1 1604 0 discriminator 3
	addl	%edx, %eax	# D.14484, D.14484
	subl	$1, %eax	#, D.14484
	movl	target_flags(%rip), %edx	# target_flags, target_flags.332
	andl	$33554432, %edx	#, D.14484
	testl	%edx, %edx	# D.14484
	je	.L752	#,
	.loc 1 1604 0 discriminator 1
	movl	$8, %ebx	#, iftmp.331
	jmp	.L753	#
.L752:
	.loc 1 1604 0 discriminator 2
	movl	$4, %ebx	#, iftmp.331
.L753:
	.loc 1 1604 0 discriminator 3
	cltd
	idivl	%ebx	# iftmp.331
.L741:
	.loc 1 1603 0 is_stmt 1
	cmpl	%eax, %ecx	# iftmp.321, iftmp.306
	jle	.L711	#,
	.loc 1 1605 0
	jmp	.L710	#
.L711:
	.loc 1 1610 0
	movq	-48(%rbp), %rax	# set, tmp360
	movq	8(%rax), %rax	# set_52->fld[0].rtx, D.14486
	movzwl	(%rax), %eax	# _158->code, D.14483
	cmpw	$61, %ax	#, D.14483
	jne	.L754	#,
	.loc 1 1612 0
	movl	-64(%rbp), %eax	# regno, tmp361
	movl	regclass_map(,%rax,4), %eax	# regclass_map, D.14488
	movq	-112(%rbp), %rdx	# vd, tmp362
	movq	-40(%rbp), %rcx	# src, tmp363
	movq	%rcx, %rsi	# tmp363,
	movl	%eax, %edi	# D.14488,
	call	find_oldest_value_reg	#
	movq	%rax, -32(%rbp)	# tmp364, new
	.loc 1 1613 0
	cmpq	$0, -32(%rbp)	#, new
	je	.L754	#,
	.loc 1 1613 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# set, tmp365
	leaq	16(%rax), %rsi	#, D.14491
	movq	-32(%rbp), %rdx	# new, tmp366
	movq	-56(%rbp), %rax	# insn, tmp367
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# tmp367,
	call	validate_change	#
	testl	%eax, %eax	# D.14484
	je	.L754	#,
	.loc 1 1615 0 is_stmt 1
	movq	rtl_dump_file(%rip), %rax	# rtl_dump_file, rtl_dump_file.333
	testq	%rax, %rax	# rtl_dump_file.333
	je	.L755	#,
	.loc 1 1616 0
	movq	-32(%rbp), %rax	# new, tmp368
	movl	8(%rax), %esi	# new_161->fld[0].rtuint, D.14495
	movq	-56(%rbp), %rax	# insn, tmp369
	movl	8(%rax), %edx	# insn_7->fld[0].rtint, D.14484
	movq	rtl_dump_file(%rip), %rax	# rtl_dump_file, rtl_dump_file.334
	movl	-64(%rbp), %ecx	# regno, tmp370
	movl	%esi, %r8d	# D.14495,
	movl	$.LC41, %esi	#,
	movq	%rax, %rdi	# rtl_dump_file.334,
	movl	$0, %eax	#,
	call	fprintf	#
.L755:
	.loc 1 1619 0
	movb	$1, -95(%rbp)	#, changed
	.loc 1 1620 0
	jmp	.L756	#
.L754:
	.loc 1 1625 0
	movq	-112(%rbp), %rcx	# vd, tmp371
	movl	-64(%rbp), %edx	# regno, tmp372
	movq	%rdx, %rax	# tmp372, tmp373
	addq	%rax, %rax	# tmp373
	addq	%rdx, %rax	# tmp372, tmp373
	salq	$2, %rax	#, tmp374
	addq	%rcx, %rax	# tmp371, tmp375
	addq	$4, %rax	#, tmp376
	movl	(%rax), %eax	# vd_72(D)->e[regno_83].oldest_regno, tmp377
	movl	%eax, -88(%rbp)	# tmp377, i
	jmp	.L757	#
.L761:
	.loc 1 1627 0
	movq	-112(%rbp), %rcx	# vd, tmp378
	movl	-88(%rbp), %edx	# i, tmp379
	movq	%rdx, %rax	# tmp379, tmp380
	addq	%rax, %rax	# tmp380
	addq	%rdx, %rax	# tmp379, tmp380
	salq	$2, %rax	#, tmp381
	addq	%rcx, %rax	# tmp378, tmp382
	movl	(%rax), %eax	# vd_72(D)->e[i_13].mode, D.14493
	cmpl	-60(%rbp), %eax	# mode, D.14493
	je	.L758	#,
	.loc 1 1628 0
	movq	-112(%rbp), %rcx	# vd, tmp383
	movl	-88(%rbp), %edx	# i, tmp384
	movq	%rdx, %rax	# tmp384, tmp385
	addq	%rax, %rax	# tmp385
	addq	%rdx, %rax	# tmp384, tmp385
	salq	$2, %rax	#, tmp386
	addq	%rcx, %rax	# tmp383, tmp387
	movl	(%rax), %eax	# vd_72(D)->e[i_13].mode, D.14493
	movl	-88(%rbp), %edx	# i, tmp388
	movl	-60(%rbp), %ecx	# mode, tmp389
	movl	%ecx, %esi	# tmp389,
	movl	%eax, %edi	# D.14493,
	call	mode_change_ok	#
	testb	%al, %al	# D.14487
	je	.L759	#,
.L758:
	.loc 1 1630 0
	movl	-88(%rbp), %edx	# i, i.335
	movl	-60(%rbp), %eax	# mode, tmp390
	movl	%eax, %esi	# tmp390,
	movl	$61, %edi	#,
	call	gen_rtx_fmt_i0	#
	movq	%rax, -32(%rbp)	# tmp391, new
	.loc 1 1631 0
	movq	-48(%rbp), %rax	# set, tmp392
	leaq	16(%rax), %rsi	#, D.14491
	movq	-32(%rbp), %rdx	# new, tmp393
	movq	-56(%rbp), %rax	# insn, tmp394
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# tmp394,
	call	validate_change	#
	testl	%eax, %eax	# D.14484
	je	.L759	#,
	.loc 1 1633 0
	movq	-40(%rbp), %rax	# src, tmp395
	movl	16(%rax), %edx	# src_82->fld[1].rtuint, D.14495
	movq	-32(%rbp), %rax	# new, tmp396
	movl	%edx, 16(%rax)	# D.14495, new_174->fld[1].rtuint
	.loc 1 1634 0
	movq	rtl_dump_file(%rip), %rax	# rtl_dump_file, rtl_dump_file.336
	testq	%rax, %rax	# rtl_dump_file.336
	je	.L760	#,
	.loc 1 1635 0
	movq	-32(%rbp), %rax	# new, tmp397
	movl	8(%rax), %esi	# new_174->fld[0].rtuint, D.14495
	movq	-56(%rbp), %rax	# insn, tmp398
	movl	8(%rax), %edx	# insn_7->fld[0].rtint, D.14484
	movq	rtl_dump_file(%rip), %rax	# rtl_dump_file, rtl_dump_file.337
	movl	-64(%rbp), %ecx	# regno, tmp399
	movl	%esi, %r8d	# D.14495,
	movl	$.LC41, %esi	#,
	movq	%rax, %rdi	# rtl_dump_file.337,
	movl	$0, %eax	#,
	call	fprintf	#
.L760:
	.loc 1 1638 0
	movb	$1, -95(%rbp)	#, changed
	.loc 1 1639 0
	jmp	.L756	#
.L759:
	.loc 1 1626 0
	movq	-112(%rbp), %rcx	# vd, tmp400
	movl	-88(%rbp), %edx	# i, tmp401
	movq	%rdx, %rax	# tmp401, tmp402
	addq	%rax, %rax	# tmp402
	addq	%rdx, %rax	# tmp401, tmp402
	salq	$2, %rax	#, tmp403
	addq	%rcx, %rax	# tmp400, tmp404
	addq	$8, %rax	#, tmp405
	movl	(%rax), %eax	# vd_72(D)->e[i_13].next_regno, tmp406
	movl	%eax, -88(%rbp)	# tmp406, i
.L757:
	.loc 1 1625 0 discriminator 1
	movl	-88(%rbp), %eax	# i, tmp407
	cmpl	-64(%rbp), %eax	# regno, tmp407
	jne	.L761	#,
.L710:
.LBE41:
	.loc 1 1647 0
	movl	$0, -92(%rbp)	#, i
	jmp	.L762	#
.L774:
.LBB42:
	.loc 1 1649 0
	movb	$0, -94(%rbp)	#, replaced
	.loc 1 1654 0
	movl	-92(%rbp), %eax	# i, tmp409
	cltq
	addq	$60, %rax	#, tmp410
	movq	recog_data(,%rax,8), %rax	# recog_data.constraints, D.14496
	movzbl	(%rax), %eax	# *_186, D.14485
	testb	%al, %al	# D.14485
	jne	.L763	#,
	.loc 1 1655 0
	jmp	.L764	#
.L763:
	.loc 1 1658 0
	cmpb	$0, -93(%rbp)	#, is_asm
	je	.L765	#,
	.loc 1 1658 0 is_stmt 0 discriminator 1
	movl	-92(%rbp), %eax	# i, tmp412
	cltq
	movq	recog_data(,%rax,8), %rax	# recog_data.operand, D.14486
	movzwl	(%rax), %eax	# _188->code, D.14483
	cmpw	$61, %ax	#, D.14483
	jne	.L765	#,
	.loc 1 1659 0 is_stmt 1
	movl	-92(%rbp), %eax	# i, tmp414
	cltq
	movq	recog_data(,%rax,8), %rax	# recog_data.operand, D.14486
	movl	8(%rax), %edx	# _190->fld[0].rtuint, D.14495
	.loc 1 1660 0
	movl	-92(%rbp), %eax	# i, tmp416
	cltq
	movq	recog_data(,%rax,8), %rax	# recog_data.operand, D.14486
	movl	16(%rax), %eax	# _192->fld[1].rtuint, D.14495
	.loc 1 1659 0
	cmpl	%eax, %edx	# D.14495, D.14495
	jne	.L765	#,
	.loc 1 1661 0
	jmp	.L764	#
.L765:
	.loc 1 1663 0
	movl	-92(%rbp), %eax	# i, tmp418
	cltq
	addq	$208, %rax	#, tmp419
	movl	recog_data+8(,%rax,4), %eax	# recog_data.operand_type, D.14489
	testl	%eax, %eax	# D.14489
	jne	.L766	#,
	.loc 1 1665 0
	movl	-80(%rbp), %eax	# alt, tmp421
	movslq	%eax, %rcx	# tmp421, tmp420
	movl	-92(%rbp), %eax	# i, tmp423
	cltq
	addq	%rax, %rax	# tmp425
	movq	%rax, %rdx	# tmp424, tmp426
	salq	$4, %rdx	#, tmp426
	subq	%rax, %rdx	# tmp424, tmp426
	leaq	(%rdx,%rcx), %rax	#, tmp427
	salq	$5, %rax	#, tmp428
	addq	$recog_op_alt+16, %rax	#, tmp429
	movzbl	8(%rax), %eax	#, tmp432
	shrb	$6, %al	#, D.14490
	andl	$1, %eax	#, D.14490
	testb	%al, %al	# D.14490
	je	.L767	#,
	.loc 1 1667 0
	movl	-80(%rbp), %eax	# alt, tmp434
	movslq	%eax, %rcx	# tmp434, tmp433
	movl	-92(%rbp), %eax	# i, tmp436
	cltq
	addq	%rax, %rax	# tmp438
	movq	%rax, %rdx	# tmp437, tmp439
	salq	$4, %rdx	#, tmp439
	subq	%rax, %rdx	# tmp437, tmp439
	leaq	(%rdx,%rcx), %rax	#, tmp440
	salq	$5, %rax	#, tmp441
	addq	$recog_op_alt, %rax	#, tmp442
	movl	8(%rax), %esi	# recog_op_alt[i_11][alt_53].class, D.14488
	movl	-92(%rbp), %eax	# i, tmp444
	cltq
	addq	$30, %rax	#, tmp445
	movq	recog_data(,%rax,8), %rax	# recog_data.operand_loc, D.14491
	movq	-112(%rbp), %rcx	# vd, tmp446
	movq	-56(%rbp), %rdx	# insn, tmp447
	movq	%rcx, %r8	# tmp446,
	movq	%rdx, %rcx	# tmp447,
	movl	$0, %edx	#,
	movq	%rax, %rdi	# D.14491,
	call	replace_oldest_value_addr	#
	movb	%al, -94(%rbp)	# tmp448, replaced
	jmp	.L770	#
.L767:
	.loc 1 1670 0
	movl	-92(%rbp), %eax	# i, tmp450
	cltq
	movq	recog_data(,%rax,8), %rax	# recog_data.operand, D.14486
	movzwl	(%rax), %eax	# _199->code, D.14483
	cmpw	$61, %ax	#, D.14483
	jne	.L769	#,
	.loc 1 1672 0
	movl	-80(%rbp), %eax	# alt, tmp452
	movslq	%eax, %rcx	# tmp452, tmp451
	movl	-92(%rbp), %eax	# i, tmp454
	cltq
	addq	%rax, %rax	# tmp456
	movq	%rax, %rdx	# tmp455, tmp457
	salq	$4, %rdx	#, tmp457
	subq	%rax, %rdx	# tmp455, tmp457
	leaq	(%rdx,%rcx), %rax	#, tmp458
	salq	$5, %rax	#, tmp459
	addq	$recog_op_alt, %rax	#, tmp460
	movl	8(%rax), %esi	# recog_op_alt[i_11][alt_53].class, D.14488
	movl	-92(%rbp), %eax	# i, tmp462
	cltq
	addq	$30, %rax	#, tmp463
	movq	recog_data(,%rax,8), %rax	# recog_data.operand_loc, D.14491
	movq	-112(%rbp), %rcx	# vd, tmp464
	movq	-56(%rbp), %rdx	# insn, tmp465
	movq	%rax, %rdi	# D.14491,
	call	replace_oldest_value_reg	#
	movb	%al, -94(%rbp)	# tmp466, replaced
	jmp	.L770	#
.L769:
	.loc 1 1675 0
	movl	-92(%rbp), %eax	# i, tmp468
	cltq
	movq	recog_data(,%rax,8), %rax	# recog_data.operand, D.14486
	movzwl	(%rax), %eax	# _204->code, D.14483
	cmpw	$66, %ax	#, D.14483
	jne	.L770	#,
	.loc 1 1676 0
	movl	-92(%rbp), %eax	# i, tmp470
	cltq
	movq	recog_data(,%rax,8), %rax	# recog_data.operand, D.14486
	movq	-112(%rbp), %rdx	# vd, tmp471
	movq	-56(%rbp), %rcx	# insn, tmp472
	movq	%rcx, %rsi	# tmp472,
	movq	%rax, %rdi	# D.14486,
	call	replace_oldest_value_mem	#
	movb	%al, -94(%rbp)	# tmp473, replaced
	jmp	.L770	#
.L766:
	.loc 1 1679 0
	movl	-92(%rbp), %eax	# i, tmp475
	cltq
	movq	recog_data(,%rax,8), %rax	# recog_data.operand, D.14486
	movzwl	(%rax), %eax	# _208->code, D.14483
	cmpw	$66, %ax	#, D.14483
	jne	.L770	#,
	.loc 1 1680 0
	movl	-92(%rbp), %eax	# i, tmp477
	cltq
	movq	recog_data(,%rax,8), %rax	# recog_data.operand, D.14486
	movq	-112(%rbp), %rdx	# vd, tmp478
	movq	-56(%rbp), %rcx	# insn, tmp479
	movq	%rcx, %rsi	# tmp479,
	movq	%rax, %rdi	# D.14486,
	call	replace_oldest_value_mem	#
	movb	%al, -94(%rbp)	# tmp480, replaced
.L770:
	.loc 1 1684 0
	cmpb	$0, -94(%rbp)	#, replaced
	je	.L764	#,
.LBB43:
	.loc 1 1689 0
	movb	$1, -95(%rbp)	#, changed
	.loc 1 1691 0
	movl	-92(%rbp), %eax	# i, tmp482
	cltq
	addq	$30, %rax	#, tmp483
	movq	recog_data(,%rax,8), %rax	# recog_data.operand_loc, D.14491
	movq	(%rax), %rax	# *_213, tmp484
	movq	%rax, -24(%rbp)	# tmp484, new
	.loc 1 1692 0
	movl	-92(%rbp), %eax	# i, tmp486
	cltq
	movq	-24(%rbp), %rdx	# new, tmp487
	movq	%rdx, recog_data(,%rax,8)	# tmp487, recog_data.operand
	.loc 1 1693 0
	movl	$0, -84(%rbp)	#, j
	jmp	.L771	#
.L773:
	.loc 1 1694 0
	movl	-84(%rbp), %eax	# j, tmp489
	cltq
	movzbl	recog_data+992(%rax), %eax	# recog_data.dup_num, D.14485
	movsbl	%al, %eax	# D.14485, D.14484
	cmpl	-92(%rbp), %eax	# i, D.14484
	jne	.L772	#,
	.loc 1 1695 0
	movl	-84(%rbp), %eax	# j, tmp491
	cltq
	addq	$120, %rax	#, tmp492
	movq	recog_data(,%rax,8), %rax	# recog_data.dup_loc, D.14491
	movq	-24(%rbp), %rdx	# new, tmp493
	movq	%rdx, (%rax)	# tmp493, *_220
.L772:
	.loc 1 1693 0
	addl	$1, -84(%rbp)	#, j
.L771:
	.loc 1 1693 0 is_stmt 0 discriminator 1
	movzbl	recog_data+997(%rip), %eax	# recog_data.n_dups, D.14485
	movsbl	%al, %eax	# D.14485, D.14484
	cmpl	-84(%rbp), %eax	# j, D.14484
	jg	.L773	#,
.L764:
.LBE43:
.LBE42:
	.loc 1 1647 0 is_stmt 1
	addl	$1, -92(%rbp)	#, i
.L762:
	.loc 1 1647 0 is_stmt 0 discriminator 1
	movl	-92(%rbp), %eax	# i, tmp494
	cmpl	-76(%rbp), %eax	# n_ops, tmp494
	jl	.L774	#,
.L756:
	.loc 1 1701 0 is_stmt 1
	movq	-56(%rbp), %rax	# insn, tmp495
	movzwl	(%rax), %eax	# insn_7->code, D.14483
	cmpw	$34, %ax	#, D.14483
	jne	.L775	#,
	.loc 1 1702 0
	movl	$0, -92(%rbp)	#, i
	jmp	.L776	#
.L778:
	.loc 1 1703 0
	movq	regs_invalidated_by_call(%rip), %rdx	# regs_invalidated_by_call, regs_invalidated_by_call.338
	movl	-92(%rbp), %eax	# i, tmp496
	movl	%eax, %ecx	# tmp496, tmp521
	shrq	%cl, %rdx	# tmp521, D.14497
	movq	%rdx, %rax	# D.14497, D.14497
	andl	$1, %eax	#, D.14497
	testq	%rax, %rax	# D.14497
	je	.L777	#,
	.loc 1 1704 0
	movl	-92(%rbp), %eax	# i, i.339
	movq	-112(%rbp), %rdx	# vd, tmp497
	movq	%rdx, %rsi	# tmp497,
	movl	%eax, %edi	# i.339,
	call	kill_value_regno	#
.L777:
	.loc 1 1702 0
	addl	$1, -92(%rbp)	#, i
.L776:
	.loc 1 1702 0 is_stmt 0 discriminator 1
	cmpl	$52, -92(%rbp)	#, i
	jle	.L778	#,
.L775:
	.loc 1 1707 0 is_stmt 1
	movq	-56(%rbp), %rax	# insn, tmp498
	movq	32(%rax), %rax	# insn_7->fld[3].rtx, D.14486
	movq	-112(%rbp), %rdx	# vd, tmp499
	movl	$kill_set_value, %esi	#,
	movq	%rax, %rdi	# D.14486,
	call	note_stores	#
	.loc 1 1710 0
	cmpq	$0, -48(%rbp)	#, set
	je	.L779	#,
	.loc 1 1710 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# set, tmp500
	movq	8(%rax), %rax	# set_52->fld[0].rtx, D.14486
	movzwl	(%rax), %eax	# _231->code, D.14483
	cmpw	$61, %ax	#, D.14483
	jne	.L779	#,
	movq	-48(%rbp), %rax	# set, tmp501
	movq	16(%rax), %rax	# set_52->fld[1].rtx, D.14486
	movzwl	(%rax), %eax	# _233->code, D.14483
	cmpw	$61, %ax	#, D.14483
	jne	.L779	#,
	.loc 1 1711 0 is_stmt 1
	movq	-48(%rbp), %rax	# set, tmp502
	movq	16(%rax), %rcx	# set_52->fld[1].rtx, D.14486
	movq	-48(%rbp), %rax	# set, tmp503
	movq	8(%rax), %rax	# set_52->fld[0].rtx, D.14486
	movq	-112(%rbp), %rdx	# vd, tmp504
	movq	%rcx, %rsi	# D.14486,
	movq	%rax, %rdi	# D.14486,
	call	copy_value	#
.L779:
	.loc 1 1713 0
	movq	-104(%rbp), %rax	# bb, tmp505
	movq	8(%rax), %rax	# bb_36(D)->end, D.14486
	cmpq	-56(%rbp), %rax	# insn, D.14486
	jne	.L694	#,
	.loc 1 1714 0
	jmp	.L693	#
.L694:
.LBE39:
	.loc 1 1533 0
	movq	-56(%rbp), %rax	# insn, tmp506
	movq	24(%rax), %rax	# insn_7->fld[2].rtx, tmp507
	movq	%rax, -56(%rbp)	# tmp507, insn
	.loc 1 1715 0
	jmp	.L780	#
.L693:
	.loc 1 1717 0
	movzbl	-95(%rbp), %eax	# changed, D.14487
	.loc 1 1718 0
	addq	$104, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE25:
	.size	copyprop_hardreg_forward_1, .-copyprop_hardreg_forward_1
	.section	.rodata
.LC42:
	.string	"\n\n"
	.text
	.globl	copyprop_hardreg_forward
	.type	copyprop_hardreg_forward, @function
copyprop_hardreg_forward:
.LFB26:
	.loc 1 1724 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	.loc 1 1729 0
	movb	$0, -21(%rbp)	#, need_refresh
	.loc 1 1731 0
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.340
	movslq	%eax, %rdx	# n_basic_blocks.340, D.14498
	movq	%rdx, %rax	# D.14498, tmp95
	salq	$2, %rax	#, tmp95
	addq	%rdx, %rax	# D.14498, tmp95
	salq	$7, %rax	#, tmp96
	movq	%rax, %rdi	# D.14498,
	call	xmalloc	#
	movq	%rax, -16(%rbp)	# tmp97, all_vd
	.loc 1 1733 0
	movl	$0, -20(%rbp)	#, b
	jmp	.L783	#
.L791:
.LBB44:
	.loc 1 1735 0
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.341
	movl	-20(%rbp), %edx	# b, tmp99
	movslq	%edx, %rdx	# tmp99, tmp98
	addq	$4, %rdx	#, tmp100
	movq	(%rax,%rdx,8), %rax	# basic_block_info.341_11->data.bb, tmp101
	movq	%rax, -8(%rbp)	# tmp101, bb
	.loc 1 1741 0
	movq	-8(%rbp), %rax	# bb, tmp102
	movq	32(%rax), %rax	# bb_12->pred, D.14499
	testq	%rax, %rax	# D.14499
	je	.L784	#,
	.loc 1 1742 0
	movq	-8(%rbp), %rax	# bb, tmp103
	movq	32(%rax), %rax	# bb_12->pred, D.14499
	movq	(%rax), %rax	# _14->pred_next, D.14499
	testq	%rax, %rax	# D.14499
	jne	.L784	#,
	.loc 1 1743 0
	movq	-8(%rbp), %rax	# bb, tmp104
	movq	32(%rax), %rax	# bb_12->pred, D.14499
	movl	48(%rax), %eax	# _16->flags, D.14500
	andl	$12, %eax	#, D.14500
	testl	%eax, %eax	# D.14500
	jne	.L784	#,
	.loc 1 1744 0
	movq	-8(%rbp), %rax	# bb, tmp105
	movq	32(%rax), %rax	# bb_12->pred, D.14499
	movq	16(%rax), %rax	# _19->src, D.14501
	movl	88(%rax), %eax	# _20->index, D.14500
	cmpl	$-1, %eax	#, D.14500
	je	.L784	#,
	.loc 1 1745 0
	movq	-8(%rbp), %rax	# bb, tmp106
	movq	32(%rax), %rax	# bb_12->pred, D.14499
	movq	16(%rax), %rax	# _22->src, D.14501
	movl	88(%rax), %eax	# _23->index, D.14500
	cmpl	-20(%rbp), %eax	# b, D.14500
	jge	.L784	#,
	.loc 1 1746 0
	movl	-20(%rbp), %eax	# b, tmp107
	movslq	%eax, %rdx	# tmp107, D.14498
	movq	%rdx, %rax	# D.14498, tmp108
	salq	$2, %rax	#, tmp108
	addq	%rdx, %rax	# D.14498, tmp108
	salq	$7, %rax	#, tmp109
	movq	%rax, %rdx	# tmp108, D.14498
	movq	-16(%rbp), %rax	# all_vd, tmp110
	leaq	(%rdx,%rax), %rcx	#, D.14502
	movq	-8(%rbp), %rax	# bb, tmp111
	movq	32(%rax), %rax	# bb_12->pred, D.14499
	movq	16(%rax), %rax	# _28->src, D.14501
	movl	88(%rax), %eax	# _29->index, D.14500
	movslq	%eax, %rdx	# D.14500, D.14498
	movq	%rdx, %rax	# D.14498, tmp112
	salq	$2, %rax	#, tmp112
	addq	%rdx, %rax	# D.14498, tmp112
	salq	$7, %rax	#, tmp113
	movq	%rax, %rdx	# tmp112, D.14498
	movq	-16(%rbp), %rax	# all_vd, tmp114
	addq	%rax, %rdx	# tmp114, D.14502
	movq	%rcx, %rax	# D.14502, tmp115
	movq	%rdx, %rsi	# D.14502, tmp116
	movl	$640, %r8d	#, tmp117
	movq	%rax, %rdx	# tmp115, tmp118
	andl	$4, %edx	#, tmp118
	testq	%rdx, %rdx	# tmp118
	je	.L785	#,
	movl	(%rsi), %edx	#, tmp119
	movl	%edx, (%rax)	# tmp119,
	addq	$4, %rax	#, tmp115
	addq	$4, %rsi	#, tmp116
	subl	$4, %r8d	#, tmp117
.L785:
	movl	%r8d, %edx	# tmp117, tmp120
	shrl	$3, %edx	#, tmp120
	movl	%edx, %edx	# tmp120, tmp121
	movq	%rax, %rdi	# tmp115, tmp115
	movq	%rdx, %rcx	# tmp121, tmp121
	rep movsq
	movq	%rdi, %rax	# tmp115, tmp115
	movl	$0, %edx	#, tmp122
	movl	%r8d, %ecx	# tmp117, tmp123
	andl	$4, %ecx	#, tmp123
	testl	%ecx, %ecx	# tmp123
	je	.L786	#,
	movl	(%rsi), %ecx	#, tmp124
	movl	%ecx, (%rax)	# tmp124,
	addq	$4, %rdx	#, tmp125
.L786:
	movl	%r8d, %ecx	# tmp117, tmp126
	andl	$2, %ecx	#, tmp126
	testl	%ecx, %ecx	# tmp126
	je	.L787	#,
	movzwl	(%rsi,%rdx), %ecx	#, tmp127
	movw	%cx, (%rax,%rdx)	# tmp127,
	addq	$2, %rdx	#, tmp128
.L787:
	movl	%r8d, %ecx	# tmp117, tmp129
	andl	$1, %ecx	#, tmp129
	testl	%ecx, %ecx	# tmp129
	je	.L789	#,
	movzbl	(%rsi,%rdx), %ecx	#, tmp130
	movb	%cl, (%rax,%rdx)	# tmp130,
	jmp	.L789	#
.L784:
	.loc 1 1748 0
	movl	-20(%rbp), %eax	# b, tmp131
	movslq	%eax, %rdx	# tmp131, D.14498
	movq	%rdx, %rax	# D.14498, tmp132
	salq	$2, %rax	#, tmp132
	addq	%rdx, %rax	# D.14498, tmp132
	salq	$7, %rax	#, tmp133
	movq	%rax, %rdx	# tmp132, D.14498
	movq	-16(%rbp), %rax	# all_vd, tmp134
	addq	%rdx, %rax	# D.14498, D.14502
	movq	%rax, %rdi	# D.14502,
	call	init_value_data	#
.L789:
	.loc 1 1750 0
	movl	-20(%rbp), %eax	# b, tmp135
	movslq	%eax, %rdx	# tmp135, D.14498
	movq	%rdx, %rax	# D.14498, tmp136
	salq	$2, %rax	#, tmp136
	addq	%rdx, %rax	# D.14498, tmp136
	salq	$7, %rax	#, tmp137
	movq	%rax, %rdx	# tmp136, D.14498
	movq	-16(%rbp), %rax	# all_vd, tmp138
	addq	%rax, %rdx	# tmp138, D.14502
	movq	-8(%rbp), %rax	# bb, tmp139
	movq	%rdx, %rsi	# D.14502,
	movq	%rax, %rdi	# tmp139,
	call	copyprop_hardreg_forward_1	#
	testb	%al, %al	# D.14503
	je	.L790	#,
	.loc 1 1751 0
	movb	$1, -21(%rbp)	#, need_refresh
.L790:
.LBE44:
	.loc 1 1733 0
	addl	$1, -20(%rbp)	#, b
.L783:
	.loc 1 1733 0 is_stmt 0 discriminator 1
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.342
	cmpl	%eax, -20(%rbp)	# n_basic_blocks.342, b
	jl	.L791	#,
	.loc 1 1754 0 is_stmt 1
	cmpb	$0, -21(%rbp)	#, need_refresh
	je	.L792	#,
	.loc 1 1756 0
	movq	rtl_dump_file(%rip), %rax	# rtl_dump_file, rtl_dump_file.343
	testq	%rax, %rax	# rtl_dump_file.343
	je	.L793	#,
	.loc 1 1757 0
	movq	rtl_dump_file(%rip), %rax	# rtl_dump_file, rtl_dump_file.344
	movq	%rax, %rcx	# rtl_dump_file.344,
	movl	$2, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC42, %edi	#,
	call	fwrite	#
.L793:
	.loc 1 1762 0
	call	get_insns	#
	movq	%rax, %rdi	# D.14504,
	call	delete_noop_moves	#
	.loc 1 1763 0
	movl	$25, %edx	#,
	movl	$2, %esi	#,
	movl	$0, %edi	#,
	call	update_life_info	#
.L792:
	.loc 1 1769 0
	movq	-16(%rbp), %rax	# all_vd, tmp140
	movq	%rax, %rdi	# tmp140,
	call	free	#
	.loc 1 1770 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE26:
	.size	copyprop_hardreg_forward, .-copyprop_hardreg_forward
	.section	.rodata
	.align 8
.LC43:
	.string	"[%u] Bad next_regno for empty chain (%u)\n"
.LC44:
	.string	"[%u %s] "
.LC45:
	.string	"[%u] Loop in regno chain\n"
.LC46:
	.string	"[%u] Bad oldest_regno (%u)\n"
	.align 8
.LC47:
	.string	"[%u] Non-empty reg in chain (%s %u %i)\n"
	.text
	.globl	debug_value_data
	.type	debug_value_data, @function
debug_value_data:
.LFB27:
	.loc 1 1777 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# vd, vd
	.loc 1 1781 0
	movq	$0, -8(%rbp)	#, set
	.loc 1 1783 0
	movl	$0, -16(%rbp)	#, i
	jmp	.L795	#
.L804:
	.loc 1 1784 0
	movq	-24(%rbp), %rcx	# vd, tmp96
	movl	-16(%rbp), %edx	# i, tmp97
	movq	%rdx, %rax	# tmp97, tmp98
	addq	%rax, %rax	# tmp98
	addq	%rdx, %rax	# tmp97, tmp98
	salq	$2, %rax	#, tmp99
	addq	%rcx, %rax	# tmp96, tmp100
	addq	$4, %rax	#, tmp101
	movl	(%rax), %eax	# vd_9(D)->e[i_4].oldest_regno, D.14506
	cmpl	-16(%rbp), %eax	# i, D.14506
	jne	.L796	#,
	.loc 1 1786 0
	movq	-24(%rbp), %rcx	# vd, tmp102
	movl	-16(%rbp), %edx	# i, tmp103
	movq	%rdx, %rax	# tmp103, tmp104
	addq	%rax, %rax	# tmp104
	addq	%rdx, %rax	# tmp103, tmp104
	salq	$2, %rax	#, tmp105
	addq	%rcx, %rax	# tmp102, tmp106
	movl	(%rax), %eax	# vd_9(D)->e[i_4].mode, D.14507
	testl	%eax, %eax	# D.14507
	jne	.L797	#,
	.loc 1 1788 0
	movq	-24(%rbp), %rcx	# vd, tmp107
	movl	-16(%rbp), %edx	# i, tmp108
	movq	%rdx, %rax	# tmp108, tmp109
	addq	%rax, %rax	# tmp109
	addq	%rdx, %rax	# tmp108, tmp109
	salq	$2, %rax	#, tmp110
	addq	%rcx, %rax	# tmp107, tmp111
	addq	$8, %rax	#, tmp112
	movl	(%rax), %eax	# vd_9(D)->e[i_4].next_regno, D.14506
	cmpl	$-1, %eax	#, D.14506
	je	.L798	#,
	.loc 1 1789 0
	movq	-24(%rbp), %rcx	# vd, tmp113
	movl	-16(%rbp), %edx	# i, tmp114
	movq	%rdx, %rax	# tmp114, tmp115
	addq	%rax, %rax	# tmp115
	addq	%rdx, %rax	# tmp114, tmp115
	salq	$2, %rax	#, tmp116
	addq	%rcx, %rax	# tmp113, tmp117
	addq	$8, %rax	#, tmp118
	movl	(%rax), %ecx	# vd_9(D)->e[i_4].next_regno, D.14506
	movq	stderr(%rip), %rax	# stderr, stderr.345
	movl	-16(%rbp), %edx	# i, tmp119
	movl	$.LC43, %esi	#,
	movq	%rax, %rdi	# stderr.345,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 1791 0
	jmp	.L796	#
.L798:
	jmp	.L796	#
.L797:
	.loc 1 1794 0
	movl	-16(%rbp), %eax	# i, i.346
	movl	$1, %edx	#, tmp120
	movl	%eax, %ecx	# i.346, tmp203
	salq	%cl, %rdx	# tmp203, D.14508
	movq	%rdx, %rax	# D.14508, D.14508
	orq	%rax, -8(%rbp)	# D.14508, set
	.loc 1 1795 0
	movq	-24(%rbp), %rcx	# vd, tmp121
	movl	-16(%rbp), %edx	# i, tmp122
	movq	%rdx, %rax	# tmp122, tmp123
	addq	%rax, %rax	# tmp123
	addq	%rdx, %rax	# tmp122, tmp123
	salq	$2, %rax	#, tmp124
	addq	%rcx, %rax	# tmp121, tmp125
	movl	(%rax), %eax	# vd_9(D)->e[i_4].mode, D.14507
	cltq
	movq	mode_name(,%rax,8), %rcx	# mode_name, D.14510
	movq	stderr(%rip), %rax	# stderr, stderr.347
	movl	-16(%rbp), %edx	# i, tmp127
	movl	$.LC44, %esi	#,
	movq	%rax, %rdi	# stderr.347,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 1797 0
	movq	-24(%rbp), %rcx	# vd, tmp128
	movl	-16(%rbp), %edx	# i, tmp129
	movq	%rdx, %rax	# tmp129, tmp130
	addq	%rax, %rax	# tmp130
	addq	%rdx, %rax	# tmp129, tmp130
	salq	$2, %rax	#, tmp131
	addq	%rcx, %rax	# tmp128, tmp132
	addq	$8, %rax	#, tmp133
	movl	(%rax), %eax	# vd_9(D)->e[i_4].next_regno, tmp134
	movl	%eax, -12(%rbp)	# tmp134, j
	jmp	.L799	#
.L803:
	.loc 1 1801 0
	movl	-12(%rbp), %eax	# j, j.348
	movq	-8(%rbp), %rdx	# set, tmp135
	movl	%eax, %ecx	# j.348, tmp205
	shrq	%cl, %rdx	# tmp205, D.14508
	movq	%rdx, %rax	# D.14508, D.14508
	andl	$1, %eax	#, D.14508
	testq	%rax, %rax	# D.14508
	je	.L800	#,
	.loc 1 1803 0
	movq	stderr(%rip), %rax	# stderr, stderr.349
	movl	-12(%rbp), %edx	# j, tmp136
	movl	$.LC45, %esi	#,
	movq	%rax, %rdi	# stderr.349,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 1804 0
	jmp	.L794	#
.L800:
	.loc 1 1807 0
	movq	-24(%rbp), %rcx	# vd, tmp137
	movl	-12(%rbp), %edx	# j, tmp138
	movq	%rdx, %rax	# tmp138, tmp139
	addq	%rax, %rax	# tmp139
	addq	%rdx, %rax	# tmp138, tmp139
	salq	$2, %rax	#, tmp140
	addq	%rcx, %rax	# tmp137, tmp141
	addq	$4, %rax	#, tmp142
	movl	(%rax), %eax	# vd_9(D)->e[j_6].oldest_regno, D.14506
	cmpl	-16(%rbp), %eax	# i, D.14506
	je	.L802	#,
	.loc 1 1809 0
	movq	-24(%rbp), %rcx	# vd, tmp143
	movl	-12(%rbp), %edx	# j, tmp144
	movq	%rdx, %rax	# tmp144, tmp145
	addq	%rax, %rax	# tmp145
	addq	%rdx, %rax	# tmp144, tmp145
	salq	$2, %rax	#, tmp146
	addq	%rcx, %rax	# tmp143, tmp147
	addq	$4, %rax	#, tmp148
	movl	(%rax), %ecx	# vd_9(D)->e[j_6].oldest_regno, D.14506
	movq	stderr(%rip), %rax	# stderr, stderr.350
	movl	-12(%rbp), %edx	# j, tmp149
	movl	$.LC46, %esi	#,
	movq	%rax, %rdi	# stderr.350,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 1811 0
	jmp	.L794	#
.L802:
	.loc 1 1813 0
	movl	-12(%rbp), %eax	# j, j.351
	movl	$1, %edx	#, tmp150
	movl	%eax, %ecx	# j.351, tmp207
	salq	%cl, %rdx	# tmp207, D.14508
	movq	%rdx, %rax	# D.14508, D.14508
	orq	%rax, -8(%rbp)	# D.14508, set
	.loc 1 1814 0
	movq	-24(%rbp), %rcx	# vd, tmp151
	movl	-12(%rbp), %edx	# j, tmp152
	movq	%rdx, %rax	# tmp152, tmp153
	addq	%rax, %rax	# tmp153
	addq	%rdx, %rax	# tmp152, tmp153
	salq	$2, %rax	#, tmp154
	addq	%rcx, %rax	# tmp151, tmp155
	movl	(%rax), %eax	# vd_9(D)->e[j_6].mode, D.14507
	cltq
	movq	mode_name(,%rax,8), %rcx	# mode_name, D.14510
	movq	stderr(%rip), %rax	# stderr, stderr.352
	movl	-12(%rbp), %edx	# j, tmp157
	movl	$.LC44, %esi	#,
	movq	%rax, %rdi	# stderr.352,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 1799 0
	movq	-24(%rbp), %rcx	# vd, tmp158
	movl	-12(%rbp), %edx	# j, tmp159
	movq	%rdx, %rax	# tmp159, tmp160
	addq	%rax, %rax	# tmp160
	addq	%rdx, %rax	# tmp159, tmp160
	salq	$2, %rax	#, tmp161
	addq	%rcx, %rax	# tmp158, tmp162
	addq	$8, %rax	#, tmp163
	movl	(%rax), %eax	# vd_9(D)->e[j_6].next_regno, tmp164
	movl	%eax, -12(%rbp)	# tmp164, j
.L799:
	.loc 1 1797 0 discriminator 1
	cmpl	$-1, -12(%rbp)	#, j
	jne	.L803	#,
	.loc 1 1816 0
	movq	stderr(%rip), %rax	# stderr, stderr.353
	movq	%rax, %rsi	# stderr.353,
	movl	$10, %edi	#,
	call	fputc	#
.L796:
	.loc 1 1783 0
	addl	$1, -16(%rbp)	#, i
.L795:
	.loc 1 1783 0 is_stmt 0 discriminator 1
	cmpl	$52, -16(%rbp)	#, i
	jbe	.L804	#,
	.loc 1 1819 0 is_stmt 1
	movl	$0, -16(%rbp)	#, i
	jmp	.L805	#
.L808:
	.loc 1 1820 0
	movl	-16(%rbp), %eax	# i, i.354
	movq	-8(%rbp), %rdx	# set, tmp165
	movl	%eax, %ecx	# i.354, tmp209
	shrq	%cl, %rdx	# tmp209, D.14508
	movq	%rdx, %rax	# D.14508, D.14508
	andl	$1, %eax	#, D.14508
	testq	%rax, %rax	# D.14508
	jne	.L806	#,
	.loc 1 1821 0
	movq	-24(%rbp), %rcx	# vd, tmp166
	movl	-16(%rbp), %edx	# i, tmp167
	movq	%rdx, %rax	# tmp167, tmp168
	addq	%rax, %rax	# tmp168
	addq	%rdx, %rax	# tmp167, tmp168
	salq	$2, %rax	#, tmp169
	addq	%rcx, %rax	# tmp166, tmp170
	movl	(%rax), %eax	# vd_9(D)->e[i_5].mode, D.14507
	testl	%eax, %eax	# D.14507
	jne	.L807	#,
	.loc 1 1822 0
	movq	-24(%rbp), %rcx	# vd, tmp171
	movl	-16(%rbp), %edx	# i, tmp172
	movq	%rdx, %rax	# tmp172, tmp173
	addq	%rax, %rax	# tmp173
	addq	%rdx, %rax	# tmp172, tmp173
	salq	$2, %rax	#, tmp174
	addq	%rcx, %rax	# tmp171, tmp175
	addq	$4, %rax	#, tmp176
	movl	(%rax), %eax	# vd_9(D)->e[i_5].oldest_regno, D.14506
	cmpl	-16(%rbp), %eax	# i, D.14506
	jne	.L807	#,
	.loc 1 1823 0
	movq	-24(%rbp), %rcx	# vd, tmp177
	movl	-16(%rbp), %edx	# i, tmp178
	movq	%rdx, %rax	# tmp178, tmp179
	addq	%rax, %rax	# tmp179
	addq	%rdx, %rax	# tmp178, tmp179
	salq	$2, %rax	#, tmp180
	addq	%rcx, %rax	# tmp177, tmp181
	addq	$8, %rax	#, tmp182
	movl	(%rax), %eax	# vd_9(D)->e[i_5].next_regno, D.14506
	cmpl	$-1, %eax	#, D.14506
	je	.L806	#,
.L807:
	.loc 1 1824 0
	movq	-24(%rbp), %rcx	# vd, tmp183
	movl	-16(%rbp), %edx	# i, tmp184
	movq	%rdx, %rax	# tmp184, tmp185
	addq	%rax, %rax	# tmp185
	addq	%rdx, %rax	# tmp184, tmp185
	salq	$2, %rax	#, tmp186
	addq	%rcx, %rax	# tmp183, tmp187
	addq	$8, %rax	#, tmp188
	movl	(%rax), %edi	# vd_9(D)->e[i_5].next_regno, D.14506
	movq	-24(%rbp), %rcx	# vd, tmp189
	movl	-16(%rbp), %edx	# i, tmp190
	movq	%rdx, %rax	# tmp190, tmp191
	addq	%rax, %rax	# tmp191
	addq	%rdx, %rax	# tmp190, tmp191
	salq	$2, %rax	#, tmp192
	addq	%rcx, %rax	# tmp189, tmp193
	addq	$4, %rax	#, tmp194
	movl	(%rax), %esi	# vd_9(D)->e[i_5].oldest_regno, D.14506
	.loc 1 1825 0
	movq	-24(%rbp), %rcx	# vd, tmp195
	movl	-16(%rbp), %edx	# i, tmp196
	movq	%rdx, %rax	# tmp196, tmp197
	addq	%rax, %rax	# tmp197
	addq	%rdx, %rax	# tmp196, tmp197
	salq	$2, %rax	#, tmp198
	addq	%rcx, %rax	# tmp195, tmp199
	movl	(%rax), %eax	# vd_9(D)->e[i_5].mode, D.14507
	.loc 1 1824 0
	cltq
	movq	mode_name(,%rax,8), %rcx	# mode_name, D.14510
	movq	stderr(%rip), %rax	# stderr, stderr.355
	movl	-16(%rbp), %edx	# i, tmp201
	movl	%edi, %r9d	# D.14506,
	movl	%esi, %r8d	# D.14506,
	movl	$.LC47, %esi	#,
	movq	%rax, %rdi	# stderr.355,
	movl	$0, %eax	#,
	call	fprintf	#
.L806:
	.loc 1 1819 0
	addl	$1, -16(%rbp)	#, i
.L805:
	.loc 1 1819 0 is_stmt 0 discriminator 1
	cmpl	$52, -16(%rbp)	#, i
	jbe	.L808	#,
.L794:
	.loc 1 1827 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE27:
	.size	debug_value_data, .-debug_value_data
	.section	.rodata
	.type	__FUNCTION__.10920, @object
	.size	__FUNCTION__.10920, 10
__FUNCTION__.10920:
	.string	"note_sets"
	.align 16
	.type	__FUNCTION__.10933, @object
	.size	__FUNCTION__.10933, 16
__FUNCTION__.10933:
	.string	"clear_dead_regs"
	.type	__FUNCTION__.11047, @object
	.size	__FUNCTION__.11047, 13
__FUNCTION__.11047:
	.string	"scan_rtx_reg"
	.type	__FUNCTION__.11132, @object
	.size	__FUNCTION__.11132, 9
__FUNCTION__.11132:
	.string	"scan_rtx"
	.text
.Letext0:
	.file 2 "rtl.h"
	.file 3 "config.h"
	.file 4 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.file 5 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 6 "/usr/include/stdio.h"
	.file 7 "/usr/include/libio.h"
	.file 8 "i386.h"
	.file 9 "machmode.h"
	.file 10 "bitmap.h"
	.file 11 "basic-block.h"
	.file 12 "varray.h"
	.file 13 "regs.h"
	.file 14 "hard-reg-set.h"
	.file 15 "obstack.h"
	.file 16 "recog.h"
	.file 17 "output.h"
	.file 18 "flags.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x30a3
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF637
	.byte	0x1
	.long	.LASF638
	.long	.LASF639
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.string	"rtx"
	.byte	0x3
	.byte	0x8
	.long	0x38
	.uleb128 0x3
	.byte	0x8
	.long	0x3e
	.uleb128 0x4
	.long	.LASF11
	.byte	0x10
	.byte	0x2
	.byte	0x7a
	.long	0xed
	.uleb128 0x5
	.long	.LASF0
	.byte	0x2
	.byte	0x7d
	.long	0x1f1
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.long	.LASF1
	.byte	0x2
	.byte	0x80
	.long	0x1f1
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.long	.LASF2
	.byte	0x2
	.byte	0x87
	.long	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0x5
	.long	.LASF3
	.byte	0x2
	.byte	0x8a
	.long	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0x5
	.long	.LASF4
	.byte	0x2
	.byte	0x95
	.long	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0x5
	.long	.LASF5
	.byte	0x2
	.byte	0x9d
	.long	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.long	.LASF6
	.byte	0x2
	.byte	0xaf
	.long	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.long	.LASF7
	.byte	0x2
	.byte	0xb6
	.long	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.long	.LASF8
	.byte	0x2
	.byte	0xbb
	.long	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.long	.LASF9
	.byte	0x2
	.byte	0xc4
	.long	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x6
	.string	"fld"
	.byte	0x2
	.byte	0xc9
	.long	0xccf
	.byte	0x8
	.byte	0
	.uleb128 0x7
	.long	.LASF10
	.byte	0x3
	.byte	0xa
	.long	0xf8
	.uleb128 0x3
	.byte	0x8
	.long	0xfe
	.uleb128 0x4
	.long	.LASF12
	.byte	0x10
	.byte	0x2
	.byte	0xde
	.long	0x123
	.uleb128 0x8
	.long	.LASF13
	.byte	0x2
	.byte	0xdf
	.long	0x139
	.byte	0
	.uleb128 0x8
	.long	.LASF14
	.byte	0x2
	.byte	0xe0
	.long	0xcdf
	.byte	0x8
	.byte	0
	.uleb128 0x7
	.long	.LASF15
	.byte	0x3
	.byte	0xc
	.long	0x12e
	.uleb128 0x3
	.byte	0x8
	.long	0x134
	.uleb128 0x9
	.long	.LASF640
	.uleb128 0xa
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0xb
	.byte	0x8
	.byte	0x7
	.long	.LASF16
	.uleb128 0xc
	.long	.LASF91
	.byte	0x4
	.byte	0x8
	.value	0x4b2
	.long	0x1f1
	.uleb128 0xd
	.long	.LASF17
	.sleb128 0
	.uleb128 0xd
	.long	.LASF18
	.sleb128 1
	.uleb128 0xd
	.long	.LASF19
	.sleb128 2
	.uleb128 0xd
	.long	.LASF20
	.sleb128 3
	.uleb128 0xd
	.long	.LASF21
	.sleb128 4
	.uleb128 0xd
	.long	.LASF22
	.sleb128 5
	.uleb128 0xd
	.long	.LASF23
	.sleb128 6
	.uleb128 0xd
	.long	.LASF24
	.sleb128 7
	.uleb128 0xd
	.long	.LASF25
	.sleb128 8
	.uleb128 0xd
	.long	.LASF26
	.sleb128 9
	.uleb128 0xd
	.long	.LASF27
	.sleb128 10
	.uleb128 0xd
	.long	.LASF28
	.sleb128 11
	.uleb128 0xd
	.long	.LASF29
	.sleb128 12
	.uleb128 0xd
	.long	.LASF30
	.sleb128 13
	.uleb128 0xd
	.long	.LASF31
	.sleb128 14
	.uleb128 0xd
	.long	.LASF32
	.sleb128 15
	.uleb128 0xd
	.long	.LASF33
	.sleb128 16
	.uleb128 0xd
	.long	.LASF34
	.sleb128 17
	.uleb128 0xd
	.long	.LASF35
	.sleb128 18
	.uleb128 0xd
	.long	.LASF36
	.sleb128 19
	.uleb128 0xd
	.long	.LASF37
	.sleb128 20
	.uleb128 0xd
	.long	.LASF38
	.sleb128 21
	.uleb128 0xd
	.long	.LASF39
	.sleb128 22
	.uleb128 0xd
	.long	.LASF40
	.sleb128 23
	.uleb128 0xd
	.long	.LASF41
	.sleb128 24
	.uleb128 0xd
	.long	.LASF42
	.sleb128 25
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.byte	0x7
	.long	.LASF43
	.uleb128 0xe
	.byte	0x8
	.uleb128 0xb
	.byte	0x8
	.byte	0x5
	.long	.LASF44
	.uleb128 0x7
	.long	.LASF45
	.byte	0x4
	.byte	0xd4
	.long	0x20c
	.uleb128 0xb
	.byte	0x8
	.byte	0x7
	.long	.LASF46
	.uleb128 0xb
	.byte	0x1
	.byte	0x8
	.long	.LASF47
	.uleb128 0xb
	.byte	0x2
	.byte	0x7
	.long	.LASF48
	.uleb128 0xb
	.byte	0x1
	.byte	0x6
	.long	.LASF49
	.uleb128 0xb
	.byte	0x2
	.byte	0x5
	.long	.LASF50
	.uleb128 0x7
	.long	.LASF51
	.byte	0x5
	.byte	0x8c
	.long	0x1fa
	.uleb128 0x7
	.long	.LASF52
	.byte	0x5
	.byte	0x8d
	.long	0x1fa
	.uleb128 0x3
	.byte	0x8
	.long	0x24b
	.uleb128 0xb
	.byte	0x1
	.byte	0x6
	.long	.LASF53
	.uleb128 0x7
	.long	.LASF54
	.byte	0x6
	.byte	0x30
	.long	0x25d
	.uleb128 0x4
	.long	.LASF55
	.byte	0xd8
	.byte	0x7
	.byte	0xf6
	.long	0x3de
	.uleb128 0x8
	.long	.LASF56
	.byte	0x7
	.byte	0xf7
	.long	0x139
	.byte	0
	.uleb128 0x8
	.long	.LASF57
	.byte	0x7
	.byte	0xfc
	.long	0x245
	.byte	0x8
	.uleb128 0x8
	.long	.LASF58
	.byte	0x7
	.byte	0xfd
	.long	0x245
	.byte	0x10
	.uleb128 0x8
	.long	.LASF59
	.byte	0x7
	.byte	0xfe
	.long	0x245
	.byte	0x18
	.uleb128 0x8
	.long	.LASF60
	.byte	0x7
	.byte	0xff
	.long	0x245
	.byte	0x20
	.uleb128 0xf
	.long	.LASF61
	.byte	0x7
	.value	0x100
	.long	0x245
	.byte	0x28
	.uleb128 0xf
	.long	.LASF62
	.byte	0x7
	.value	0x101
	.long	0x245
	.byte	0x30
	.uleb128 0xf
	.long	.LASF63
	.byte	0x7
	.value	0x102
	.long	0x245
	.byte	0x38
	.uleb128 0xf
	.long	.LASF64
	.byte	0x7
	.value	0x103
	.long	0x245
	.byte	0x40
	.uleb128 0xf
	.long	.LASF65
	.byte	0x7
	.value	0x105
	.long	0x245
	.byte	0x48
	.uleb128 0xf
	.long	.LASF66
	.byte	0x7
	.value	0x106
	.long	0x245
	.byte	0x50
	.uleb128 0xf
	.long	.LASF67
	.byte	0x7
	.value	0x107
	.long	0x245
	.byte	0x58
	.uleb128 0xf
	.long	.LASF68
	.byte	0x7
	.value	0x109
	.long	0x426
	.byte	0x60
	.uleb128 0xf
	.long	.LASF69
	.byte	0x7
	.value	0x10b
	.long	0x42c
	.byte	0x68
	.uleb128 0xf
	.long	.LASF70
	.byte	0x7
	.value	0x10d
	.long	0x139
	.byte	0x70
	.uleb128 0xf
	.long	.LASF71
	.byte	0x7
	.value	0x111
	.long	0x139
	.byte	0x74
	.uleb128 0xf
	.long	.LASF72
	.byte	0x7
	.value	0x113
	.long	0x22f
	.byte	0x78
	.uleb128 0xf
	.long	.LASF73
	.byte	0x7
	.value	0x117
	.long	0x21a
	.byte	0x80
	.uleb128 0xf
	.long	.LASF74
	.byte	0x7
	.value	0x118
	.long	0x221
	.byte	0x82
	.uleb128 0xf
	.long	.LASF75
	.byte	0x7
	.value	0x119
	.long	0x432
	.byte	0x83
	.uleb128 0xf
	.long	.LASF76
	.byte	0x7
	.value	0x11d
	.long	0x442
	.byte	0x88
	.uleb128 0xf
	.long	.LASF77
	.byte	0x7
	.value	0x126
	.long	0x23a
	.byte	0x90
	.uleb128 0xf
	.long	.LASF78
	.byte	0x7
	.value	0x12f
	.long	0x1f8
	.byte	0x98
	.uleb128 0xf
	.long	.LASF79
	.byte	0x7
	.value	0x130
	.long	0x1f8
	.byte	0xa0
	.uleb128 0xf
	.long	.LASF80
	.byte	0x7
	.value	0x131
	.long	0x1f8
	.byte	0xa8
	.uleb128 0xf
	.long	.LASF81
	.byte	0x7
	.value	0x132
	.long	0x1f8
	.byte	0xb0
	.uleb128 0xf
	.long	.LASF82
	.byte	0x7
	.value	0x133
	.long	0x201
	.byte	0xb8
	.uleb128 0xf
	.long	.LASF83
	.byte	0x7
	.value	0x135
	.long	0x139
	.byte	0xc0
	.uleb128 0xf
	.long	.LASF84
	.byte	0x7
	.value	0x137
	.long	0x448
	.byte	0xc4
	.byte	0
	.uleb128 0x10
	.long	0x24b
	.long	0x3ee
	.uleb128 0x11
	.long	0x140
	.byte	0x3
	.byte	0
	.uleb128 0x12
	.long	.LASF641
	.byte	0x7
	.byte	0x9b
	.uleb128 0x4
	.long	.LASF85
	.byte	0x18
	.byte	0x7
	.byte	0xa1
	.long	0x426
	.uleb128 0x8
	.long	.LASF86
	.byte	0x7
	.byte	0xa2
	.long	0x426
	.byte	0
	.uleb128 0x8
	.long	.LASF87
	.byte	0x7
	.byte	0xa3
	.long	0x42c
	.byte	0x8
	.uleb128 0x8
	.long	.LASF88
	.byte	0x7
	.byte	0xa7
	.long	0x139
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x3f5
	.uleb128 0x3
	.byte	0x8
	.long	0x25d
	.uleb128 0x10
	.long	0x24b
	.long	0x442
	.uleb128 0x11
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x3ee
	.uleb128 0x10
	.long	0x24b
	.long	0x458
	.uleb128 0x11
	.long	0x140
	.byte	0x13
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x45e
	.uleb128 0x13
	.long	0x24b
	.uleb128 0xb
	.byte	0x8
	.byte	0x7
	.long	.LASF89
	.uleb128 0xb
	.byte	0x8
	.byte	0x5
	.long	.LASF90
	.uleb128 0x3
	.byte	0x8
	.long	0x477
	.uleb128 0x14
	.uleb128 0x15
	.long	.LASF92
	.byte	0x4
	.byte	0x9
	.byte	0x1d
	.long	0x5ed
	.uleb128 0xd
	.long	.LASF93
	.sleb128 0
	.uleb128 0xd
	.long	.LASF94
	.sleb128 1
	.uleb128 0xd
	.long	.LASF95
	.sleb128 2
	.uleb128 0xd
	.long	.LASF96
	.sleb128 3
	.uleb128 0xd
	.long	.LASF97
	.sleb128 4
	.uleb128 0xd
	.long	.LASF98
	.sleb128 5
	.uleb128 0xd
	.long	.LASF99
	.sleb128 6
	.uleb128 0xd
	.long	.LASF100
	.sleb128 7
	.uleb128 0xd
	.long	.LASF101
	.sleb128 8
	.uleb128 0xd
	.long	.LASF102
	.sleb128 9
	.uleb128 0xd
	.long	.LASF103
	.sleb128 10
	.uleb128 0xd
	.long	.LASF104
	.sleb128 11
	.uleb128 0xd
	.long	.LASF105
	.sleb128 12
	.uleb128 0xd
	.long	.LASF106
	.sleb128 13
	.uleb128 0xd
	.long	.LASF107
	.sleb128 14
	.uleb128 0xd
	.long	.LASF108
	.sleb128 15
	.uleb128 0xd
	.long	.LASF109
	.sleb128 16
	.uleb128 0xd
	.long	.LASF110
	.sleb128 17
	.uleb128 0xd
	.long	.LASF111
	.sleb128 18
	.uleb128 0xd
	.long	.LASF112
	.sleb128 19
	.uleb128 0xd
	.long	.LASF113
	.sleb128 20
	.uleb128 0xd
	.long	.LASF114
	.sleb128 21
	.uleb128 0xd
	.long	.LASF115
	.sleb128 22
	.uleb128 0xd
	.long	.LASF116
	.sleb128 23
	.uleb128 0xd
	.long	.LASF117
	.sleb128 24
	.uleb128 0xd
	.long	.LASF118
	.sleb128 25
	.uleb128 0xd
	.long	.LASF119
	.sleb128 26
	.uleb128 0xd
	.long	.LASF120
	.sleb128 27
	.uleb128 0xd
	.long	.LASF121
	.sleb128 28
	.uleb128 0xd
	.long	.LASF122
	.sleb128 29
	.uleb128 0xd
	.long	.LASF123
	.sleb128 30
	.uleb128 0xd
	.long	.LASF124
	.sleb128 31
	.uleb128 0xd
	.long	.LASF125
	.sleb128 32
	.uleb128 0xd
	.long	.LASF126
	.sleb128 33
	.uleb128 0xd
	.long	.LASF127
	.sleb128 34
	.uleb128 0xd
	.long	.LASF128
	.sleb128 35
	.uleb128 0xd
	.long	.LASF129
	.sleb128 36
	.uleb128 0xd
	.long	.LASF130
	.sleb128 37
	.uleb128 0xd
	.long	.LASF131
	.sleb128 38
	.uleb128 0xd
	.long	.LASF132
	.sleb128 39
	.uleb128 0xd
	.long	.LASF133
	.sleb128 40
	.uleb128 0xd
	.long	.LASF134
	.sleb128 41
	.uleb128 0xd
	.long	.LASF135
	.sleb128 42
	.uleb128 0xd
	.long	.LASF136
	.sleb128 43
	.uleb128 0xd
	.long	.LASF137
	.sleb128 44
	.uleb128 0xd
	.long	.LASF138
	.sleb128 45
	.uleb128 0xd
	.long	.LASF139
	.sleb128 46
	.uleb128 0xd
	.long	.LASF140
	.sleb128 47
	.uleb128 0xd
	.long	.LASF141
	.sleb128 48
	.uleb128 0xd
	.long	.LASF142
	.sleb128 49
	.uleb128 0xd
	.long	.LASF143
	.sleb128 50
	.uleb128 0xd
	.long	.LASF144
	.sleb128 51
	.uleb128 0xd
	.long	.LASF145
	.sleb128 52
	.uleb128 0xd
	.long	.LASF146
	.sleb128 53
	.uleb128 0xd
	.long	.LASF147
	.sleb128 54
	.uleb128 0xd
	.long	.LASF148
	.sleb128 55
	.uleb128 0xd
	.long	.LASF149
	.sleb128 56
	.uleb128 0xd
	.long	.LASF150
	.sleb128 57
	.uleb128 0xd
	.long	.LASF151
	.sleb128 58
	.uleb128 0xd
	.long	.LASF152
	.sleb128 59
	.byte	0
	.uleb128 0x15
	.long	.LASF153
	.byte	0x4
	.byte	0x9
	.byte	0x2c
	.long	0x636
	.uleb128 0xd
	.long	.LASF154
	.sleb128 0
	.uleb128 0xd
	.long	.LASF155
	.sleb128 1
	.uleb128 0xd
	.long	.LASF156
	.sleb128 2
	.uleb128 0xd
	.long	.LASF157
	.sleb128 3
	.uleb128 0xd
	.long	.LASF158
	.sleb128 4
	.uleb128 0xd
	.long	.LASF159
	.sleb128 5
	.uleb128 0xd
	.long	.LASF160
	.sleb128 6
	.uleb128 0xd
	.long	.LASF161
	.sleb128 7
	.uleb128 0xd
	.long	.LASF162
	.sleb128 8
	.uleb128 0xd
	.long	.LASF163
	.sleb128 9
	.byte	0
	.uleb128 0x15
	.long	.LASF164
	.byte	0x4
	.byte	0x2
	.byte	0x29
	.long	0xa32
	.uleb128 0xd
	.long	.LASF165
	.sleb128 0
	.uleb128 0x16
	.string	"NIL"
	.sleb128 1
	.uleb128 0xd
	.long	.LASF166
	.sleb128 2
	.uleb128 0xd
	.long	.LASF167
	.sleb128 3
	.uleb128 0xd
	.long	.LASF168
	.sleb128 4
	.uleb128 0xd
	.long	.LASF169
	.sleb128 5
	.uleb128 0xd
	.long	.LASF170
	.sleb128 6
	.uleb128 0xd
	.long	.LASF171
	.sleb128 7
	.uleb128 0xd
	.long	.LASF172
	.sleb128 8
	.uleb128 0xd
	.long	.LASF173
	.sleb128 9
	.uleb128 0xd
	.long	.LASF174
	.sleb128 10
	.uleb128 0xd
	.long	.LASF175
	.sleb128 11
	.uleb128 0xd
	.long	.LASF176
	.sleb128 12
	.uleb128 0xd
	.long	.LASF177
	.sleb128 13
	.uleb128 0xd
	.long	.LASF178
	.sleb128 14
	.uleb128 0xd
	.long	.LASF179
	.sleb128 15
	.uleb128 0xd
	.long	.LASF180
	.sleb128 16
	.uleb128 0xd
	.long	.LASF181
	.sleb128 17
	.uleb128 0xd
	.long	.LASF182
	.sleb128 18
	.uleb128 0xd
	.long	.LASF183
	.sleb128 19
	.uleb128 0xd
	.long	.LASF184
	.sleb128 20
	.uleb128 0xd
	.long	.LASF185
	.sleb128 21
	.uleb128 0xd
	.long	.LASF186
	.sleb128 22
	.uleb128 0xd
	.long	.LASF187
	.sleb128 23
	.uleb128 0xd
	.long	.LASF188
	.sleb128 24
	.uleb128 0xd
	.long	.LASF189
	.sleb128 25
	.uleb128 0xd
	.long	.LASF190
	.sleb128 26
	.uleb128 0xd
	.long	.LASF191
	.sleb128 27
	.uleb128 0xd
	.long	.LASF192
	.sleb128 28
	.uleb128 0xd
	.long	.LASF193
	.sleb128 29
	.uleb128 0xd
	.long	.LASF194
	.sleb128 30
	.uleb128 0xd
	.long	.LASF195
	.sleb128 31
	.uleb128 0xd
	.long	.LASF196
	.sleb128 32
	.uleb128 0xd
	.long	.LASF197
	.sleb128 33
	.uleb128 0xd
	.long	.LASF198
	.sleb128 34
	.uleb128 0xd
	.long	.LASF199
	.sleb128 35
	.uleb128 0xd
	.long	.LASF200
	.sleb128 36
	.uleb128 0xd
	.long	.LASF201
	.sleb128 37
	.uleb128 0xd
	.long	.LASF202
	.sleb128 38
	.uleb128 0xd
	.long	.LASF203
	.sleb128 39
	.uleb128 0xd
	.long	.LASF204
	.sleb128 40
	.uleb128 0xd
	.long	.LASF205
	.sleb128 41
	.uleb128 0xd
	.long	.LASF206
	.sleb128 42
	.uleb128 0xd
	.long	.LASF207
	.sleb128 43
	.uleb128 0xd
	.long	.LASF208
	.sleb128 44
	.uleb128 0xd
	.long	.LASF209
	.sleb128 45
	.uleb128 0xd
	.long	.LASF210
	.sleb128 46
	.uleb128 0x16
	.string	"SET"
	.sleb128 47
	.uleb128 0x16
	.string	"USE"
	.sleb128 48
	.uleb128 0xd
	.long	.LASF211
	.sleb128 49
	.uleb128 0xd
	.long	.LASF212
	.sleb128 50
	.uleb128 0xd
	.long	.LASF213
	.sleb128 51
	.uleb128 0xd
	.long	.LASF214
	.sleb128 52
	.uleb128 0xd
	.long	.LASF215
	.sleb128 53
	.uleb128 0xd
	.long	.LASF216
	.sleb128 54
	.uleb128 0xd
	.long	.LASF217
	.sleb128 55
	.uleb128 0xd
	.long	.LASF218
	.sleb128 56
	.uleb128 0xd
	.long	.LASF219
	.sleb128 57
	.uleb128 0xd
	.long	.LASF220
	.sleb128 58
	.uleb128 0x16
	.string	"PC"
	.sleb128 59
	.uleb128 0xd
	.long	.LASF221
	.sleb128 60
	.uleb128 0x16
	.string	"REG"
	.sleb128 61
	.uleb128 0xd
	.long	.LASF222
	.sleb128 62
	.uleb128 0xd
	.long	.LASF223
	.sleb128 63
	.uleb128 0xd
	.long	.LASF224
	.sleb128 64
	.uleb128 0xd
	.long	.LASF225
	.sleb128 65
	.uleb128 0x16
	.string	"MEM"
	.sleb128 66
	.uleb128 0xd
	.long	.LASF226
	.sleb128 67
	.uleb128 0xd
	.long	.LASF227
	.sleb128 68
	.uleb128 0x16
	.string	"CC0"
	.sleb128 69
	.uleb128 0xd
	.long	.LASF228
	.sleb128 70
	.uleb128 0xd
	.long	.LASF229
	.sleb128 71
	.uleb128 0xd
	.long	.LASF230
	.sleb128 72
	.uleb128 0xd
	.long	.LASF231
	.sleb128 73
	.uleb128 0xd
	.long	.LASF232
	.sleb128 74
	.uleb128 0xd
	.long	.LASF233
	.sleb128 75
	.uleb128 0xd
	.long	.LASF234
	.sleb128 76
	.uleb128 0x16
	.string	"NEG"
	.sleb128 77
	.uleb128 0xd
	.long	.LASF235
	.sleb128 78
	.uleb128 0x16
	.string	"DIV"
	.sleb128 79
	.uleb128 0x16
	.string	"MOD"
	.sleb128 80
	.uleb128 0xd
	.long	.LASF236
	.sleb128 81
	.uleb128 0xd
	.long	.LASF237
	.sleb128 82
	.uleb128 0x16
	.string	"AND"
	.sleb128 83
	.uleb128 0x16
	.string	"IOR"
	.sleb128 84
	.uleb128 0x16
	.string	"XOR"
	.sleb128 85
	.uleb128 0x16
	.string	"NOT"
	.sleb128 86
	.uleb128 0xd
	.long	.LASF238
	.sleb128 87
	.uleb128 0xd
	.long	.LASF239
	.sleb128 88
	.uleb128 0xd
	.long	.LASF240
	.sleb128 89
	.uleb128 0xd
	.long	.LASF241
	.sleb128 90
	.uleb128 0xd
	.long	.LASF242
	.sleb128 91
	.uleb128 0xd
	.long	.LASF243
	.sleb128 92
	.uleb128 0xd
	.long	.LASF244
	.sleb128 93
	.uleb128 0xd
	.long	.LASF245
	.sleb128 94
	.uleb128 0xd
	.long	.LASF246
	.sleb128 95
	.uleb128 0xd
	.long	.LASF247
	.sleb128 96
	.uleb128 0xd
	.long	.LASF248
	.sleb128 97
	.uleb128 0xd
	.long	.LASF249
	.sleb128 98
	.uleb128 0xd
	.long	.LASF250
	.sleb128 99
	.uleb128 0xd
	.long	.LASF251
	.sleb128 100
	.uleb128 0xd
	.long	.LASF252
	.sleb128 101
	.uleb128 0x16
	.string	"NE"
	.sleb128 102
	.uleb128 0x16
	.string	"EQ"
	.sleb128 103
	.uleb128 0x16
	.string	"GE"
	.sleb128 104
	.uleb128 0x16
	.string	"GT"
	.sleb128 105
	.uleb128 0x16
	.string	"LE"
	.sleb128 106
	.uleb128 0x16
	.string	"LT"
	.sleb128 107
	.uleb128 0x16
	.string	"GEU"
	.sleb128 108
	.uleb128 0x16
	.string	"GTU"
	.sleb128 109
	.uleb128 0x16
	.string	"LEU"
	.sleb128 110
	.uleb128 0x16
	.string	"LTU"
	.sleb128 111
	.uleb128 0xd
	.long	.LASF253
	.sleb128 112
	.uleb128 0xd
	.long	.LASF254
	.sleb128 113
	.uleb128 0xd
	.long	.LASF255
	.sleb128 114
	.uleb128 0xd
	.long	.LASF256
	.sleb128 115
	.uleb128 0xd
	.long	.LASF257
	.sleb128 116
	.uleb128 0xd
	.long	.LASF258
	.sleb128 117
	.uleb128 0xd
	.long	.LASF259
	.sleb128 118
	.uleb128 0xd
	.long	.LASF260
	.sleb128 119
	.uleb128 0xd
	.long	.LASF261
	.sleb128 120
	.uleb128 0xd
	.long	.LASF262
	.sleb128 121
	.uleb128 0xd
	.long	.LASF263
	.sleb128 122
	.uleb128 0xd
	.long	.LASF264
	.sleb128 123
	.uleb128 0xd
	.long	.LASF265
	.sleb128 124
	.uleb128 0xd
	.long	.LASF266
	.sleb128 125
	.uleb128 0x16
	.string	"FIX"
	.sleb128 126
	.uleb128 0xd
	.long	.LASF267
	.sleb128 127
	.uleb128 0xd
	.long	.LASF268
	.sleb128 128
	.uleb128 0x16
	.string	"ABS"
	.sleb128 129
	.uleb128 0xd
	.long	.LASF269
	.sleb128 130
	.uleb128 0x16
	.string	"FFS"
	.sleb128 131
	.uleb128 0xd
	.long	.LASF270
	.sleb128 132
	.uleb128 0xd
	.long	.LASF271
	.sleb128 133
	.uleb128 0xd
	.long	.LASF272
	.sleb128 134
	.uleb128 0xd
	.long	.LASF273
	.sleb128 135
	.uleb128 0xd
	.long	.LASF274
	.sleb128 136
	.uleb128 0xd
	.long	.LASF275
	.sleb128 137
	.uleb128 0xd
	.long	.LASF276
	.sleb128 138
	.uleb128 0xd
	.long	.LASF277
	.sleb128 139
	.uleb128 0xd
	.long	.LASF278
	.sleb128 140
	.uleb128 0xd
	.long	.LASF279
	.sleb128 141
	.uleb128 0xd
	.long	.LASF280
	.sleb128 142
	.uleb128 0xd
	.long	.LASF281
	.sleb128 143
	.uleb128 0xd
	.long	.LASF282
	.sleb128 144
	.uleb128 0xd
	.long	.LASF283
	.sleb128 145
	.uleb128 0xd
	.long	.LASF284
	.sleb128 146
	.uleb128 0xd
	.long	.LASF285
	.sleb128 147
	.uleb128 0xd
	.long	.LASF286
	.sleb128 148
	.uleb128 0xd
	.long	.LASF287
	.sleb128 149
	.uleb128 0xd
	.long	.LASF288
	.sleb128 150
	.uleb128 0xd
	.long	.LASF289
	.sleb128 151
	.uleb128 0x16
	.string	"PHI"
	.sleb128 152
	.uleb128 0xd
	.long	.LASF290
	.sleb128 153
	.byte	0
	.uleb128 0x17
	.byte	0x4
	.byte	0x2
	.byte	0x44
	.long	0xab3
	.uleb128 0x5
	.long	.LASF291
	.byte	0x2
	.byte	0x47
	.long	0x1f1
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.long	.LASF292
	.byte	0x2
	.byte	0x49
	.long	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x5
	.long	.LASF293
	.byte	0x2
	.byte	0x4a
	.long	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x5
	.long	.LASF294
	.byte	0x2
	.byte	0x4c
	.long	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x5
	.long	.LASF295
	.byte	0x2
	.byte	0x4e
	.long	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.long	.LASF296
	.byte	0x2
	.byte	0x50
	.long	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x5
	.long	.LASF297
	.byte	0x2
	.byte	0x53
	.long	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x5
	.long	.LASF298
	.byte	0x2
	.byte	0x55
	.long	0x1f1
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0
	.byte	0
	.uleb128 0x7
	.long	.LASF299
	.byte	0x2
	.byte	0x56
	.long	0xa32
	.uleb128 0x17
	.byte	0x28
	.byte	0x2
	.byte	0x5c
	.long	0xb03
	.uleb128 0x8
	.long	.LASF300
	.byte	0x2
	.byte	0x5e
	.long	0x1fa
	.byte	0
	.uleb128 0x8
	.long	.LASF301
	.byte	0x2
	.byte	0x5f
	.long	0x123
	.byte	0x8
	.uleb128 0x8
	.long	.LASF302
	.byte	0x2
	.byte	0x60
	.long	0x2d
	.byte	0x10
	.uleb128 0x8
	.long	.LASF303
	.byte	0x2
	.byte	0x61
	.long	0x2d
	.byte	0x18
	.uleb128 0x8
	.long	.LASF304
	.byte	0x2
	.byte	0x62
	.long	0x1f1
	.byte	0x20
	.byte	0
	.uleb128 0x7
	.long	.LASF305
	.byte	0x2
	.byte	0x63
	.long	0xabe
	.uleb128 0x18
	.long	.LASF405
	.byte	0x8
	.byte	0x2
	.byte	0x67
	.long	0xba9
	.uleb128 0x19
	.long	.LASF306
	.byte	0x2
	.byte	0x69
	.long	0x1fa
	.uleb128 0x19
	.long	.LASF307
	.byte	0x2
	.byte	0x6a
	.long	0x139
	.uleb128 0x19
	.long	.LASF308
	.byte	0x2
	.byte	0x6b
	.long	0x1f1
	.uleb128 0x19
	.long	.LASF309
	.byte	0x2
	.byte	0x6c
	.long	0x458
	.uleb128 0x1a
	.string	"rtx"
	.byte	0x2
	.byte	0x6d
	.long	0x2d
	.uleb128 0x19
	.long	.LASF10
	.byte	0x2
	.byte	0x6e
	.long	0xed
	.uleb128 0x19
	.long	.LASF310
	.byte	0x2
	.byte	0x6f
	.long	0x478
	.uleb128 0x19
	.long	.LASF311
	.byte	0x2
	.byte	0x70
	.long	0xab3
	.uleb128 0x19
	.long	.LASF312
	.byte	0x2
	.byte	0x71
	.long	0xbae
	.uleb128 0x19
	.long	.LASF313
	.byte	0x2
	.byte	0x72
	.long	0xbe5
	.uleb128 0x19
	.long	.LASF314
	.byte	0x2
	.byte	0x73
	.long	0x123
	.uleb128 0x1a
	.string	"bb"
	.byte	0x2
	.byte	0x74
	.long	0xcb8
	.uleb128 0x19
	.long	.LASF315
	.byte	0x2
	.byte	0x75
	.long	0xcbe
	.byte	0
	.uleb128 0x1b
	.long	.LASF414
	.uleb128 0x3
	.byte	0x8
	.long	0xba9
	.uleb128 0x4
	.long	.LASF316
	.byte	0x18
	.byte	0xa
	.byte	0x34
	.long	0xbe5
	.uleb128 0x8
	.long	.LASF317
	.byte	0xa
	.byte	0x35
	.long	0x1261
	.byte	0
	.uleb128 0x8
	.long	.LASF318
	.byte	0xa
	.byte	0x36
	.long	0x1261
	.byte	0x8
	.uleb128 0x8
	.long	.LASF319
	.byte	0xa
	.byte	0x37
	.long	0x1f1
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0xbb4
	.uleb128 0x4
	.long	.LASF320
	.byte	0x70
	.byte	0xb
	.byte	0xae
	.long	0xcb8
	.uleb128 0x8
	.long	.LASF321
	.byte	0xb
	.byte	0xb0
	.long	0x2d
	.byte	0
	.uleb128 0x6
	.string	"end"
	.byte	0xb
	.byte	0xb0
	.long	0x2d
	.byte	0x8
	.uleb128 0x8
	.long	.LASF322
	.byte	0xb
	.byte	0xb3
	.long	0x123
	.byte	0x10
	.uleb128 0x8
	.long	.LASF323
	.byte	0xb
	.byte	0xb4
	.long	0x123
	.byte	0x18
	.uleb128 0x8
	.long	.LASF324
	.byte	0xb
	.byte	0xb7
	.long	0x1307
	.byte	0x20
	.uleb128 0x8
	.long	.LASF325
	.byte	0xb
	.byte	0xb7
	.long	0x1307
	.byte	0x28
	.uleb128 0x8
	.long	.LASF326
	.byte	0xb
	.byte	0xbc
	.long	0x1272
	.byte	0x30
	.uleb128 0x8
	.long	.LASF327
	.byte	0xb
	.byte	0xc0
	.long	0x1272
	.byte	0x38
	.uleb128 0x8
	.long	.LASF328
	.byte	0xb
	.byte	0xc6
	.long	0x1272
	.byte	0x40
	.uleb128 0x8
	.long	.LASF329
	.byte	0xb
	.byte	0xc8
	.long	0x1272
	.byte	0x48
	.uleb128 0x6
	.string	"aux"
	.byte	0xb
	.byte	0xcb
	.long	0x1f8
	.byte	0x50
	.uleb128 0x8
	.long	.LASF330
	.byte	0xb
	.byte	0xce
	.long	0x139
	.byte	0x58
	.uleb128 0x8
	.long	.LASF331
	.byte	0xb
	.byte	0xd1
	.long	0x139
	.byte	0x5c
	.uleb128 0x8
	.long	.LASF332
	.byte	0xb
	.byte	0xd4
	.long	0x127d
	.byte	0x60
	.uleb128 0x8
	.long	.LASF333
	.byte	0xb
	.byte	0xd7
	.long	0x139
	.byte	0x68
	.uleb128 0x8
	.long	.LASF334
	.byte	0xb
	.byte	0xda
	.long	0x139
	.byte	0x6c
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0xbeb
	.uleb128 0x3
	.byte	0x8
	.long	0xb03
	.uleb128 0x7
	.long	.LASF335
	.byte	0x2
	.byte	0x76
	.long	0xb0e
	.uleb128 0x10
	.long	0xcc4
	.long	0xcdf
	.uleb128 0x11
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x10
	.long	0x2d
	.long	0xcef
	.uleb128 0x11
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0xc
	.long	.LASF336
	.byte	0x4
	.byte	0x2
	.value	0x1c3
	.long	0xdb1
	.uleb128 0xd
	.long	.LASF337
	.sleb128 1
	.uleb128 0xd
	.long	.LASF338
	.sleb128 2
	.uleb128 0xd
	.long	.LASF339
	.sleb128 3
	.uleb128 0xd
	.long	.LASF340
	.sleb128 4
	.uleb128 0xd
	.long	.LASF341
	.sleb128 5
	.uleb128 0xd
	.long	.LASF342
	.sleb128 6
	.uleb128 0xd
	.long	.LASF343
	.sleb128 7
	.uleb128 0xd
	.long	.LASF344
	.sleb128 8
	.uleb128 0xd
	.long	.LASF345
	.sleb128 9
	.uleb128 0xd
	.long	.LASF346
	.sleb128 10
	.uleb128 0xd
	.long	.LASF347
	.sleb128 11
	.uleb128 0xd
	.long	.LASF348
	.sleb128 12
	.uleb128 0xd
	.long	.LASF349
	.sleb128 13
	.uleb128 0xd
	.long	.LASF350
	.sleb128 14
	.uleb128 0xd
	.long	.LASF351
	.sleb128 15
	.uleb128 0xd
	.long	.LASF352
	.sleb128 16
	.uleb128 0xd
	.long	.LASF353
	.sleb128 17
	.uleb128 0xd
	.long	.LASF354
	.sleb128 18
	.uleb128 0xd
	.long	.LASF355
	.sleb128 19
	.uleb128 0xd
	.long	.LASF356
	.sleb128 20
	.uleb128 0xd
	.long	.LASF357
	.sleb128 21
	.uleb128 0xd
	.long	.LASF358
	.sleb128 22
	.uleb128 0xd
	.long	.LASF359
	.sleb128 23
	.uleb128 0xd
	.long	.LASF360
	.sleb128 24
	.uleb128 0xd
	.long	.LASF361
	.sleb128 25
	.uleb128 0xd
	.long	.LASF362
	.sleb128 26
	.uleb128 0xd
	.long	.LASF363
	.sleb128 27
	.uleb128 0xd
	.long	.LASF364
	.sleb128 28
	.uleb128 0xd
	.long	.LASF365
	.sleb128 29
	.uleb128 0xd
	.long	.LASF366
	.sleb128 30
	.byte	0
	.uleb128 0xc
	.long	.LASF367
	.byte	0x4
	.byte	0x2
	.value	0x297
	.long	0xe60
	.uleb128 0xd
	.long	.LASF368
	.sleb128 -100
	.uleb128 0xd
	.long	.LASF369
	.sleb128 -99
	.uleb128 0xd
	.long	.LASF370
	.sleb128 -98
	.uleb128 0xd
	.long	.LASF371
	.sleb128 -97
	.uleb128 0xd
	.long	.LASF372
	.sleb128 -96
	.uleb128 0xd
	.long	.LASF373
	.sleb128 -95
	.uleb128 0xd
	.long	.LASF374
	.sleb128 -94
	.uleb128 0xd
	.long	.LASF375
	.sleb128 -93
	.uleb128 0xd
	.long	.LASF376
	.sleb128 -92
	.uleb128 0xd
	.long	.LASF377
	.sleb128 -91
	.uleb128 0xd
	.long	.LASF378
	.sleb128 -90
	.uleb128 0xd
	.long	.LASF379
	.sleb128 -89
	.uleb128 0xd
	.long	.LASF380
	.sleb128 -88
	.uleb128 0xd
	.long	.LASF381
	.sleb128 -87
	.uleb128 0xd
	.long	.LASF382
	.sleb128 -86
	.uleb128 0xd
	.long	.LASF383
	.sleb128 -85
	.uleb128 0xd
	.long	.LASF384
	.sleb128 -84
	.uleb128 0xd
	.long	.LASF385
	.sleb128 -83
	.uleb128 0xd
	.long	.LASF386
	.sleb128 -82
	.uleb128 0xd
	.long	.LASF387
	.sleb128 -81
	.uleb128 0xd
	.long	.LASF388
	.sleb128 -80
	.uleb128 0xd
	.long	.LASF389
	.sleb128 -79
	.uleb128 0xd
	.long	.LASF390
	.sleb128 -78
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x2d
	.uleb128 0xc
	.long	.LASF391
	.byte	0x4
	.byte	0x2
	.value	0x630
	.long	0xebc
	.uleb128 0xd
	.long	.LASF392
	.sleb128 0
	.uleb128 0xd
	.long	.LASF393
	.sleb128 1
	.uleb128 0xd
	.long	.LASF394
	.sleb128 2
	.uleb128 0xd
	.long	.LASF395
	.sleb128 3
	.uleb128 0xd
	.long	.LASF396
	.sleb128 4
	.uleb128 0xd
	.long	.LASF397
	.sleb128 5
	.uleb128 0xd
	.long	.LASF398
	.sleb128 6
	.uleb128 0xd
	.long	.LASF399
	.sleb128 7
	.uleb128 0xd
	.long	.LASF400
	.sleb128 8
	.uleb128 0xd
	.long	.LASF401
	.sleb128 9
	.uleb128 0xd
	.long	.LASF402
	.sleb128 10
	.uleb128 0xd
	.long	.LASF403
	.sleb128 11
	.byte	0
	.uleb128 0x4
	.long	.LASF404
	.byte	0x10
	.byte	0xc
	.byte	0x24
	.long	0xee1
	.uleb128 0x6
	.string	"rtx"
	.byte	0xc
	.byte	0x32
	.long	0x38
	.byte	0
	.uleb128 0x6
	.string	"age"
	.byte	0xc
	.byte	0x36
	.long	0x1f1
	.byte	0x8
	.byte	0
	.uleb128 0x18
	.long	.LASF406
	.byte	0x10
	.byte	0xc
	.byte	0x3a
	.long	0xfc6
	.uleb128 0x1a
	.string	"c"
	.byte	0xc
	.byte	0x3b
	.long	0x432
	.uleb128 0x1a
	.string	"uc"
	.byte	0xc
	.byte	0x3c
	.long	0xfc6
	.uleb128 0x1a
	.string	"s"
	.byte	0xc
	.byte	0x3d
	.long	0xfd6
	.uleb128 0x1a
	.string	"us"
	.byte	0xc
	.byte	0x3e
	.long	0xfe6
	.uleb128 0x1a
	.string	"i"
	.byte	0xc
	.byte	0x3f
	.long	0xff6
	.uleb128 0x1a
	.string	"u"
	.byte	0xc
	.byte	0x40
	.long	0x1006
	.uleb128 0x1a
	.string	"l"
	.byte	0xc
	.byte	0x41
	.long	0x1016
	.uleb128 0x1a
	.string	"ul"
	.byte	0xc
	.byte	0x42
	.long	0x1026
	.uleb128 0x19
	.long	.LASF407
	.byte	0xc
	.byte	0x43
	.long	0x1016
	.uleb128 0x19
	.long	.LASF408
	.byte	0xc
	.byte	0x44
	.long	0x1026
	.uleb128 0x19
	.long	.LASF409
	.byte	0xc
	.byte	0x45
	.long	0x1036
	.uleb128 0x19
	.long	.LASF410
	.byte	0xc
	.byte	0x46
	.long	0x1046
	.uleb128 0x1a
	.string	"rtx"
	.byte	0xc
	.byte	0x47
	.long	0x1056
	.uleb128 0x19
	.long	.LASF10
	.byte	0xc
	.byte	0x48
	.long	0x1066
	.uleb128 0x19
	.long	.LASF15
	.byte	0xc
	.byte	0x49
	.long	0x1076
	.uleb128 0x19
	.long	.LASF411
	.byte	0xc
	.byte	0x4a
	.long	0x1086
	.uleb128 0x19
	.long	.LASF412
	.byte	0xc
	.byte	0x4b
	.long	0x1096
	.uleb128 0x1a
	.string	"reg"
	.byte	0xc
	.byte	0x4c
	.long	0x10b1
	.uleb128 0x19
	.long	.LASF413
	.byte	0xc
	.byte	0x4d
	.long	0x1158
	.uleb128 0x1a
	.string	"bb"
	.byte	0xc
	.byte	0x4e
	.long	0x1168
	.uleb128 0x1a
	.string	"te"
	.byte	0xc
	.byte	0x4f
	.long	0x1178
	.byte	0
	.uleb128 0x10
	.long	0x213
	.long	0xfd6
	.uleb128 0x11
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x10
	.long	0x228
	.long	0xfe6
	.uleb128 0x11
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x10
	.long	0x21a
	.long	0xff6
	.uleb128 0x11
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x10
	.long	0x139
	.long	0x1006
	.uleb128 0x11
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x10
	.long	0x1f1
	.long	0x1016
	.uleb128 0x11
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x10
	.long	0x1fa
	.long	0x1026
	.uleb128 0x11
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x10
	.long	0x20c
	.long	0x1036
	.uleb128 0x11
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x10
	.long	0x1f8
	.long	0x1046
	.uleb128 0x11
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x10
	.long	0x245
	.long	0x1056
	.uleb128 0x11
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x10
	.long	0x38
	.long	0x1066
	.uleb128 0x11
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x10
	.long	0xf8
	.long	0x1076
	.uleb128 0x11
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x10
	.long	0x12e
	.long	0x1086
	.uleb128 0x11
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x10
	.long	0xbe5
	.long	0x1096
	.uleb128 0x11
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x10
	.long	0x10a6
	.long	0x10a6
	.uleb128 0x11
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x10ac
	.uleb128 0x1b
	.long	.LASF415
	.uleb128 0x10
	.long	0x10c1
	.long	0x10c1
	.uleb128 0x11
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x10c7
	.uleb128 0x4
	.long	.LASF416
	.byte	0x2c
	.byte	0xd
	.byte	0x2d
	.long	0x1158
	.uleb128 0x8
	.long	.LASF417
	.byte	0xd
	.byte	0x2f
	.long	0x139
	.byte	0
	.uleb128 0x8
	.long	.LASF418
	.byte	0xd
	.byte	0x30
	.long	0x139
	.byte	0x4
	.uleb128 0x8
	.long	.LASF419
	.byte	0xd
	.byte	0x31
	.long	0x139
	.byte	0x8
	.uleb128 0x8
	.long	.LASF420
	.byte	0xd
	.byte	0x34
	.long	0x139
	.byte	0xc
	.uleb128 0x8
	.long	.LASF421
	.byte	0xd
	.byte	0x37
	.long	0x139
	.byte	0x10
	.uleb128 0x8
	.long	.LASF422
	.byte	0xd
	.byte	0x38
	.long	0x139
	.byte	0x14
	.uleb128 0x8
	.long	.LASF423
	.byte	0xd
	.byte	0x39
	.long	0x139
	.byte	0x18
	.uleb128 0x8
	.long	.LASF424
	.byte	0xd
	.byte	0x3a
	.long	0x139
	.byte	0x1c
	.uleb128 0x8
	.long	.LASF425
	.byte	0xd
	.byte	0x3b
	.long	0x139
	.byte	0x20
	.uleb128 0x8
	.long	.LASF426
	.byte	0xd
	.byte	0x3c
	.long	0x139
	.byte	0x24
	.uleb128 0x8
	.long	.LASF427
	.byte	0xd
	.byte	0x3d
	.long	0x24b
	.byte	0x28
	.byte	0
	.uleb128 0x10
	.long	0xebc
	.long	0x1168
	.uleb128 0x11
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x10
	.long	0xcb8
	.long	0x1178
	.uleb128 0x11
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x10
	.long	0x1188
	.long	0x1188
	.uleb128 0x11
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x118e
	.uleb128 0x1b
	.long	.LASF428
	.uleb128 0x7
	.long	.LASF429
	.byte	0xc
	.byte	0x50
	.long	0xee1
	.uleb128 0x4
	.long	.LASF430
	.byte	0x30
	.byte	0xc
	.byte	0x53
	.long	0x11e7
	.uleb128 0x8
	.long	.LASF431
	.byte	0xc
	.byte	0x54
	.long	0x201
	.byte	0
	.uleb128 0x8
	.long	.LASF432
	.byte	0xc
	.byte	0x55
	.long	0x201
	.byte	0x8
	.uleb128 0x8
	.long	.LASF433
	.byte	0xc
	.byte	0x57
	.long	0x201
	.byte	0x10
	.uleb128 0x8
	.long	.LASF434
	.byte	0xc
	.byte	0x58
	.long	0x458
	.byte	0x18
	.uleb128 0x8
	.long	.LASF435
	.byte	0xc
	.byte	0x59
	.long	0x1193
	.byte	0x20
	.byte	0
	.uleb128 0x7
	.long	.LASF436
	.byte	0xc
	.byte	0x5a
	.long	0x11f2
	.uleb128 0x3
	.byte	0x8
	.long	0x119e
	.uleb128 0x7
	.long	.LASF437
	.byte	0xe
	.byte	0x29
	.long	0x20c
	.uleb128 0x4
	.long	.LASF438
	.byte	0x28
	.byte	0xa
	.byte	0x2b
	.long	0x1240
	.uleb128 0x8
	.long	.LASF439
	.byte	0xa
	.byte	0x2d
	.long	0x1240
	.byte	0
	.uleb128 0x8
	.long	.LASF440
	.byte	0xa
	.byte	0x2e
	.long	0x1240
	.byte	0x8
	.uleb128 0x8
	.long	.LASF319
	.byte	0xa
	.byte	0x2f
	.long	0x1f1
	.byte	0x10
	.uleb128 0x8
	.long	.LASF441
	.byte	0xa
	.byte	0x30
	.long	0x1246
	.byte	0x18
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1203
	.uleb128 0x10
	.long	0x20c
	.long	0x1256
	.uleb128 0x11
	.long	0x140
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.long	.LASF442
	.byte	0xa
	.byte	0x31
	.long	0x1203
	.uleb128 0x3
	.byte	0x8
	.long	0x1256
	.uleb128 0x7
	.long	.LASF411
	.byte	0xa
	.byte	0x39
	.long	0xbe5
	.uleb128 0x7
	.long	.LASF443
	.byte	0xb
	.byte	0x21
	.long	0x1267
	.uleb128 0x7
	.long	.LASF444
	.byte	0xb
	.byte	0x74
	.long	0x1fa
	.uleb128 0x4
	.long	.LASF445
	.byte	0x40
	.byte	0xb
	.byte	0x77
	.long	0x1301
	.uleb128 0x8
	.long	.LASF446
	.byte	0xb
	.byte	0x79
	.long	0x1301
	.byte	0
	.uleb128 0x8
	.long	.LASF447
	.byte	0xb
	.byte	0x79
	.long	0x1301
	.byte	0x8
	.uleb128 0x6
	.string	"src"
	.byte	0xb
	.byte	0x7c
	.long	0xcb8
	.byte	0x10
	.uleb128 0x8
	.long	.LASF448
	.byte	0xb
	.byte	0x7c
	.long	0xcb8
	.byte	0x18
	.uleb128 0x8
	.long	.LASF449
	.byte	0xb
	.byte	0x7f
	.long	0x2d
	.byte	0x20
	.uleb128 0x6
	.string	"aux"
	.byte	0xb
	.byte	0x82
	.long	0x1f8
	.byte	0x28
	.uleb128 0x8
	.long	.LASF334
	.byte	0xb
	.byte	0x84
	.long	0x139
	.byte	0x30
	.uleb128 0x8
	.long	.LASF450
	.byte	0xb
	.byte	0x85
	.long	0x139
	.byte	0x34
	.uleb128 0x8
	.long	.LASF332
	.byte	0xb
	.byte	0x86
	.long	0x127d
	.byte	0x38
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1288
	.uleb128 0x7
	.long	.LASF451
	.byte	0xb
	.byte	0x88
	.long	0x1301
	.uleb128 0x7
	.long	.LASF426
	.byte	0xb
	.byte	0xdb
	.long	0xcb8
	.uleb128 0xc
	.long	.LASF452
	.byte	0x4
	.byte	0xb
	.value	0x223
	.long	0x133d
	.uleb128 0xd
	.long	.LASF453
	.sleb128 0
	.uleb128 0xd
	.long	.LASF454
	.sleb128 1
	.uleb128 0xd
	.long	.LASF455
	.sleb128 2
	.byte	0
	.uleb128 0x4
	.long	.LASF456
	.byte	0x58
	.byte	0xf
	.byte	0xa8
	.long	0x13ef
	.uleb128 0x8
	.long	.LASF457
	.byte	0xf
	.byte	0xaa
	.long	0x1fa
	.byte	0
	.uleb128 0x8
	.long	.LASF458
	.byte	0xf
	.byte	0xab
	.long	0x1724
	.byte	0x8
	.uleb128 0x8
	.long	.LASF459
	.byte	0xf
	.byte	0xac
	.long	0x245
	.byte	0x10
	.uleb128 0x8
	.long	.LASF460
	.byte	0xf
	.byte	0xad
	.long	0x245
	.byte	0x18
	.uleb128 0x8
	.long	.LASF461
	.byte	0xf
	.byte	0xae
	.long	0x245
	.byte	0x20
	.uleb128 0x8
	.long	.LASF462
	.byte	0xf
	.byte	0xaf
	.long	0x1fa
	.byte	0x28
	.uleb128 0x8
	.long	.LASF463
	.byte	0xf
	.byte	0xb0
	.long	0x139
	.byte	0x30
	.uleb128 0x8
	.long	.LASF464
	.byte	0xf
	.byte	0xb5
	.long	0x173e
	.byte	0x38
	.uleb128 0x8
	.long	.LASF465
	.byte	0xf
	.byte	0xb6
	.long	0x1754
	.byte	0x40
	.uleb128 0x8
	.long	.LASF466
	.byte	0xf
	.byte	0xb7
	.long	0x1f8
	.byte	0x48
	.uleb128 0x5
	.long	.LASF467
	.byte	0xf
	.byte	0xbd
	.long	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x50
	.uleb128 0x5
	.long	.LASF468
	.byte	0xf
	.byte	0xbe
	.long	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x50
	.uleb128 0x5
	.long	.LASF469
	.byte	0xf
	.byte	0xc2
	.long	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x50
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x133d
	.uleb128 0x15
	.long	.LASF470
	.byte	0x4
	.byte	0x10
	.byte	0x1c
	.long	0x1414
	.uleb128 0xd
	.long	.LASF471
	.sleb128 0
	.uleb128 0xd
	.long	.LASF472
	.sleb128 1
	.uleb128 0xd
	.long	.LASF473
	.sleb128 2
	.byte	0
	.uleb128 0x4
	.long	.LASF474
	.byte	0x20
	.byte	0x10
	.byte	0x22
	.long	0x14d5
	.uleb128 0x8
	.long	.LASF475
	.byte	0x10
	.byte	0x26
	.long	0x458
	.byte	0
	.uleb128 0x8
	.long	.LASF476
	.byte	0x10
	.byte	0x29
	.long	0x147
	.byte	0x8
	.uleb128 0x8
	.long	.LASF477
	.byte	0x10
	.byte	0x2d
	.long	0x1f1
	.byte	0xc
	.uleb128 0x8
	.long	.LASF478
	.byte	0x10
	.byte	0x30
	.long	0x139
	.byte	0x10
	.uleb128 0x8
	.long	.LASF479
	.byte	0x10
	.byte	0x34
	.long	0x139
	.byte	0x14
	.uleb128 0x5
	.long	.LASF480
	.byte	0x10
	.byte	0x37
	.long	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x18
	.uleb128 0x5
	.long	.LASF481
	.byte	0x10
	.byte	0x39
	.long	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x18
	.uleb128 0x5
	.long	.LASF482
	.byte	0x10
	.byte	0x3b
	.long	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x18
	.uleb128 0x5
	.long	.LASF483
	.byte	0x10
	.byte	0x3d
	.long	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x18
	.uleb128 0x5
	.long	.LASF484
	.byte	0x10
	.byte	0x3f
	.long	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x18
	.uleb128 0x5
	.long	.LASF485
	.byte	0x10
	.byte	0x41
	.long	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x18
	.uleb128 0x5
	.long	.LASF486
	.byte	0x10
	.byte	0x43
	.long	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x18
	.uleb128 0x5
	.long	.LASF487
	.byte	0x10
	.byte	0x46
	.long	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x18
	.byte	0
	.uleb128 0x1c
	.long	.LASF488
	.value	0x3f0
	.byte	0x10
	.byte	0x95
	.long	0x1570
	.uleb128 0x8
	.long	.LASF489
	.byte	0x10
	.byte	0x9e
	.long	0x1570
	.byte	0
	.uleb128 0x8
	.long	.LASF490
	.byte	0x10
	.byte	0xa1
	.long	0x1580
	.byte	0xf0
	.uleb128 0x1d
	.long	.LASF491
	.byte	0x10
	.byte	0xa4
	.long	0x1590
	.value	0x1e0
	.uleb128 0x1d
	.long	.LASF492
	.byte	0x10
	.byte	0xa7
	.long	0x15a0
	.value	0x2d0
	.uleb128 0x1d
	.long	.LASF493
	.byte	0x10
	.byte	0xaa
	.long	0x15b0
	.value	0x348
	.uleb128 0x1d
	.long	.LASF494
	.byte	0x10
	.byte	0xae
	.long	0x15c0
	.value	0x3c0
	.uleb128 0x1d
	.long	.LASF495
	.byte	0x10
	.byte	0xb2
	.long	0x3de
	.value	0x3e0
	.uleb128 0x1d
	.long	.LASF496
	.byte	0x10
	.byte	0xbf
	.long	0x24b
	.value	0x3e4
	.uleb128 0x1d
	.long	.LASF497
	.byte	0x10
	.byte	0xc2
	.long	0x24b
	.value	0x3e5
	.uleb128 0x1d
	.long	.LASF498
	.byte	0x10
	.byte	0xc5
	.long	0x24b
	.value	0x3e6
	.uleb128 0x1d
	.long	.LASF499
	.byte	0x10
	.byte	0xc8
	.long	0x2d
	.value	0x3e8
	.byte	0
	.uleb128 0x10
	.long	0x2d
	.long	0x1580
	.uleb128 0x11
	.long	0x140
	.byte	0x1d
	.byte	0
	.uleb128 0x10
	.long	0xe60
	.long	0x1590
	.uleb128 0x11
	.long	0x140
	.byte	0x1d
	.byte	0
	.uleb128 0x10
	.long	0x458
	.long	0x15a0
	.uleb128 0x11
	.long	0x140
	.byte	0x1d
	.byte	0
	.uleb128 0x10
	.long	0x478
	.long	0x15b0
	.uleb128 0x11
	.long	0x140
	.byte	0x1d
	.byte	0
	.uleb128 0x10
	.long	0x13f5
	.long	0x15c0
	.uleb128 0x11
	.long	0x140
	.byte	0x1d
	.byte	0
	.uleb128 0x10
	.long	0xe60
	.long	0x15d0
	.uleb128 0x11
	.long	0x140
	.byte	0x3
	.byte	0
	.uleb128 0x7
	.long	.LASF500
	.byte	0x10
	.byte	0xd4
	.long	0x15db
	.uleb128 0x3
	.byte	0x8
	.long	0x15e1
	.uleb128 0x1e
	.long	0x139
	.long	0x15f5
	.uleb128 0x1f
	.long	0x2d
	.uleb128 0x1f
	.long	0x478
	.byte	0
	.uleb128 0x7
	.long	.LASF501
	.byte	0x10
	.byte	0xd6
	.long	0x1600
	.uleb128 0x3
	.byte	0x8
	.long	0x1606
	.uleb128 0x1e
	.long	0x2d
	.long	0x1616
	.uleb128 0x1f
	.long	0x2d
	.uleb128 0x20
	.byte	0
	.uleb128 0x4
	.long	.LASF502
	.byte	0x18
	.byte	0x10
	.byte	0xd8
	.long	0x1662
	.uleb128 0x8
	.long	.LASF503
	.byte	0x10
	.byte	0xda
	.long	0x1662
	.byte	0
	.uleb128 0x8
	.long	.LASF475
	.byte	0x10
	.byte	0xdc
	.long	0x1667
	.byte	0x8
	.uleb128 0x5
	.long	.LASF1
	.byte	0x10
	.byte	0xde
	.long	0x166c
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0x10
	.uleb128 0x8
	.long	.LASF504
	.byte	0x10
	.byte	0xe0
	.long	0x45e
	.byte	0x12
	.uleb128 0x8
	.long	.LASF505
	.byte	0x10
	.byte	0xe2
	.long	0x45e
	.byte	0x13
	.byte	0
	.uleb128 0x13
	.long	0x15d0
	.uleb128 0x13
	.long	0x458
	.uleb128 0x13
	.long	0x1f1
	.uleb128 0x4
	.long	.LASF506
	.byte	0x28
	.byte	0x10
	.byte	0xec
	.long	0x16de
	.uleb128 0x8
	.long	.LASF434
	.byte	0x10
	.byte	0xee
	.long	0x1667
	.byte	0
	.uleb128 0x8
	.long	.LASF507
	.byte	0x10
	.byte	0xef
	.long	0x471
	.byte	0x8
	.uleb128 0x8
	.long	.LASF508
	.byte	0x10
	.byte	0xf0
	.long	0x16de
	.byte	0x10
	.uleb128 0x8
	.long	.LASF489
	.byte	0x10
	.byte	0xf1
	.long	0x16e3
	.byte	0x18
	.uleb128 0x8
	.long	.LASF496
	.byte	0x10
	.byte	0xf3
	.long	0x45e
	.byte	0x20
	.uleb128 0x8
	.long	.LASF497
	.byte	0x10
	.byte	0xf4
	.long	0x45e
	.byte	0x21
	.uleb128 0x8
	.long	.LASF498
	.byte	0x10
	.byte	0xf5
	.long	0x45e
	.byte	0x22
	.uleb128 0x8
	.long	.LASF509
	.byte	0x10
	.byte	0xf6
	.long	0x45e
	.byte	0x23
	.byte	0
	.uleb128 0x13
	.long	0x15f5
	.uleb128 0x13
	.long	0x16e8
	.uleb128 0x3
	.byte	0x8
	.long	0x16ee
	.uleb128 0x13
	.long	0x1616
	.uleb128 0x4
	.long	.LASF510
	.byte	0x18
	.byte	0xf
	.byte	0xa1
	.long	0x1724
	.uleb128 0x8
	.long	.LASF511
	.byte	0xf
	.byte	0xa3
	.long	0x245
	.byte	0
	.uleb128 0x8
	.long	.LASF440
	.byte	0xf
	.byte	0xa4
	.long	0x1724
	.byte	0x8
	.uleb128 0x8
	.long	.LASF512
	.byte	0xf
	.byte	0xa5
	.long	0x3de
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x16f3
	.uleb128 0x1e
	.long	0x1724
	.long	0x173e
	.uleb128 0x1f
	.long	0x1f8
	.uleb128 0x1f
	.long	0x1fa
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x172a
	.uleb128 0x21
	.long	0x1754
	.uleb128 0x1f
	.long	0x1f8
	.uleb128 0x1f
	.long	0x1724
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1744
	.uleb128 0x4
	.long	.LASF513
	.byte	0x28
	.byte	0x1
	.byte	0x34
	.long	0x17c1
	.uleb128 0x8
	.long	.LASF514
	.byte	0x1
	.byte	0x36
	.long	0x17c1
	.byte	0
	.uleb128 0x8
	.long	.LASF515
	.byte	0x1
	.byte	0x37
	.long	0x17c1
	.byte	0x8
	.uleb128 0x8
	.long	.LASF499
	.byte	0x1
	.byte	0x39
	.long	0x2d
	.byte	0x10
	.uleb128 0x6
	.string	"loc"
	.byte	0x1
	.byte	0x3a
	.long	0xe60
	.byte	0x18
	.uleb128 0x8
	.long	.LASF476
	.byte	0x1
	.byte	0x3b
	.long	0x147
	.byte	0x20
	.uleb128 0x5
	.long	.LASF516
	.byte	0x1
	.byte	0x3c
	.long	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x24
	.uleb128 0x5
	.long	.LASF480
	.byte	0x1
	.byte	0x3d
	.long	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x24
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x175a
	.uleb128 0x15
	.long	.LASF517
	.byte	0x4
	.byte	0x1
	.byte	0x40
	.long	0x17f8
	.uleb128 0xd
	.long	.LASF518
	.sleb128 0
	.uleb128 0xd
	.long	.LASF519
	.sleb128 1
	.uleb128 0xd
	.long	.LASF520
	.sleb128 2
	.uleb128 0xd
	.long	.LASF521
	.sleb128 3
	.uleb128 0xd
	.long	.LASF522
	.sleb128 4
	.uleb128 0xd
	.long	.LASF523
	.sleb128 5
	.byte	0
	.uleb128 0x22
	.long	.LASF524
	.byte	0xc
	.byte	0x1
	.value	0x404
	.long	0x182d
	.uleb128 0xf
	.long	.LASF1
	.byte	0x1
	.value	0x406
	.long	0x478
	.byte	0
	.uleb128 0xf
	.long	.LASF525
	.byte	0x1
	.value	0x407
	.long	0x1f1
	.byte	0x4
	.uleb128 0xf
	.long	.LASF526
	.byte	0x1
	.value	0x408
	.long	0x1f1
	.byte	0x8
	.byte	0
	.uleb128 0x23
	.long	.LASF527
	.value	0x280
	.byte	0x1
	.value	0x40b
	.long	0x1855
	.uleb128 0x24
	.string	"e"
	.byte	0x1
	.value	0x40d
	.long	0x1855
	.byte	0
	.uleb128 0x25
	.long	.LASF528
	.byte	0x1
	.value	0x40e
	.long	0x1f1
	.value	0x27c
	.byte	0
	.uleb128 0x10
	.long	0x17f8
	.long	0x1865
	.uleb128 0x11
	.long	0x140
	.byte	0x34
	.byte	0
	.uleb128 0x26
	.long	.LASF532
	.byte	0x1
	.byte	0x68
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x18e9
	.uleb128 0x27
	.string	"x"
	.byte	0x1
	.byte	0x69
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x27
	.string	"set"
	.byte	0x1
	.byte	0x6a
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x28
	.long	.LASF435
	.byte	0x1
	.byte	0x6b
	.long	0x1f8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x29
	.long	.LASF529
	.byte	0x1
	.byte	0x6d
	.long	0x18e9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x29
	.long	.LASF530
	.byte	0x1
	.byte	0x6e
	.long	0x1f1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x29
	.long	.LASF531
	.byte	0x1
	.byte	0x6f
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2a
	.long	.LASF537
	.long	0x18ff
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.10920
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x11f8
	.uleb128 0x10
	.long	0x24b
	.long	0x18ff
	.uleb128 0x11
	.long	0x140
	.byte	0x9
	.byte	0
	.uleb128 0x13
	.long	0x18ef
	.uleb128 0x26
	.long	.LASF533
	.byte	0x1
	.byte	0x81
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x19ac
	.uleb128 0x28
	.long	.LASF529
	.byte	0x1
	.byte	0x82
	.long	0x18e9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x28
	.long	.LASF534
	.byte	0x1
	.byte	0x83
	.long	0x478
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x28
	.long	.LASF535
	.byte	0x1
	.byte	0x84
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x29
	.long	.LASF536
	.byte	0x1
	.byte	0x86
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2a
	.long	.LASF537
	.long	0x19bc
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.10933
	.uleb128 0x2b
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x2c
	.string	"reg"
	.byte	0x1
	.byte	0x8a
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x29
	.long	.LASF530
	.byte	0x1
	.byte	0x8b
	.long	0x1f1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x29
	.long	.LASF531
	.byte	0x1
	.byte	0x8c
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.byte	0
	.uleb128 0x10
	.long	0x24b
	.long	0x19bc
	.uleb128 0x11
	.long	0x140
	.byte	0xf
	.byte	0
	.uleb128 0x13
	.long	0x19ac
	.uleb128 0x26
	.long	.LASF538
	.byte	0x1
	.byte	0x9b
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x1a30
	.uleb128 0x27
	.string	"b"
	.byte	0x1
	.byte	0x9c
	.long	0x1312
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x28
	.long	.LASF529
	.byte	0x1
	.byte	0x9d
	.long	0x18e9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x28
	.long	.LASF539
	.byte	0x1
	.byte	0x9e
	.long	0x17c1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2c
	.string	"t"
	.byte	0x1
	.byte	0xa0
	.long	0x17c1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x29
	.long	.LASF499
	.byte	0x1
	.byte	0xa1
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x29
	.long	.LASF540
	.byte	0x1
	.byte	0xa2
	.long	0x11f8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x2d
	.long	.LASF603
	.byte	0x1
	.byte	0xc8
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x1ca6
	.uleb128 0x29
	.long	.LASF541
	.byte	0x1
	.byte	0xca
	.long	0x1ca6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.uleb128 0x29
	.long	.LASF542
	.byte	0x1
	.byte	0xcb
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -432
	.uleb128 0x2c
	.string	"b"
	.byte	0x1
	.byte	0xcc
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -428
	.uleb128 0x29
	.long	.LASF543
	.byte	0x1
	.byte	0xcd
	.long	0x245
	.uleb128 0x3
	.byte	0x91
	.sleb128 -320
	.uleb128 0x2e
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.long	0x1b10
	.uleb128 0x2c
	.string	"__h"
	.byte	0x1
	.byte	0xd2
	.long	0x13ef
	.uleb128 0x3
	.byte	0x91
	.sleb128 -352
	.uleb128 0x2e
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.long	0x1adf
	.uleb128 0x2c
	.string	"__o"
	.byte	0x1
	.byte	0xd2
	.long	0x13ef
	.uleb128 0x3
	.byte	0x91
	.sleb128 -344
	.uleb128 0x29
	.long	.LASF544
	.byte	0x1
	.byte	0xd2
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -404
	.byte	0
	.uleb128 0x2b
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.uleb128 0x29
	.long	.LASF545
	.byte	0x1
	.byte	0xd2
	.long	0x13ef
	.uleb128 0x3
	.byte	0x91
	.sleb128 -336
	.uleb128 0x29
	.long	.LASF546
	.byte	0x1
	.byte	0xd2
	.long	0x1f8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -328
	.byte	0
	.byte	0
	.uleb128 0x2e
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.long	0x1c73
	.uleb128 0x2c
	.string	"bb"
	.byte	0x1
	.byte	0xd6
	.long	0x1312
	.uleb128 0x3
	.byte	0x91
	.sleb128 -312
	.uleb128 0x29
	.long	.LASF547
	.byte	0x1
	.byte	0xd7
	.long	0x17c1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -384
	.uleb128 0x29
	.long	.LASF548
	.byte	0x1
	.byte	0xd8
	.long	0x11f8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -376
	.uleb128 0x29
	.long	.LASF549
	.byte	0x1
	.byte	0xd9
	.long	0x11f8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -304
	.uleb128 0x2e
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.long	0x1b83
	.uleb128 0x2c
	.string	"i"
	.byte	0x1
	.byte	0xe9
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -424
	.byte	0
	.uleb128 0x2e
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.long	0x1c40
	.uleb128 0x29
	.long	.LASF550
	.byte	0x1
	.byte	0xf7
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -420
	.uleb128 0x29
	.long	.LASF551
	.byte	0x1
	.byte	0xf7
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -416
	.uleb128 0x29
	.long	.LASF552
	.byte	0x1
	.byte	0xf8
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -412
	.uleb128 0x29
	.long	.LASF553
	.byte	0x1
	.byte	0xf9
	.long	0x17c1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -296
	.uleb128 0x2c
	.string	"tmp"
	.byte	0x1
	.byte	0xfa
	.long	0x17c1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -368
	.uleb128 0x29
	.long	.LASF554
	.byte	0x1
	.byte	0xfa
	.long	0x17c1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -360
	.uleb128 0x29
	.long	.LASF555
	.byte	0x1
	.byte	0xfb
	.long	0x11f8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -392
	.uleb128 0x2c
	.string	"reg"
	.byte	0x1
	.byte	0xfc
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -400
	.uleb128 0x2c
	.string	"i"
	.byte	0x1
	.byte	0xfd
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -408
	.uleb128 0x2b
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.uleb128 0x2f
	.long	.LASF531
	.byte	0x1
	.value	0x12e
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -396
	.byte	0
	.byte	0
	.uleb128 0x2b
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.uleb128 0x30
	.string	"__o"
	.byte	0x1
	.value	0x16d
	.long	0x13ef
	.uleb128 0x3
	.byte	0x91
	.sleb128 -288
	.uleb128 0x2f
	.long	.LASF556
	.byte	0x1
	.value	0x16d
	.long	0x1f8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -280
	.byte	0
	.byte	0
	.uleb128 0x2b
	.quad	.LBB11
	.quad	.LBE11-.LBB11
	.uleb128 0x30
	.string	"__o"
	.byte	0x1
	.value	0x170
	.long	0x13ef
	.uleb128 0x3
	.byte	0x91
	.sleb128 -272
	.uleb128 0x2f
	.long	.LASF556
	.byte	0x1
	.value	0x170
	.long	0x1f8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -264
	.byte	0
	.byte	0
	.uleb128 0x10
	.long	0x139
	.long	0x1cb6
	.uleb128 0x11
	.long	0x140
	.byte	0x34
	.byte	0
	.uleb128 0x31
	.long	.LASF557
	.byte	0x1
	.value	0x17b
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x1d14
	.uleb128 0x32
	.long	.LASF539
	.byte	0x1
	.value	0x17c
	.long	0x17c1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x33
	.string	"reg"
	.byte	0x1
	.value	0x17d
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2b
	.quad	.LBB12
	.quad	.LBE12-.LBB12
	.uleb128 0x2f
	.long	.LASF530
	.byte	0x1
	.value	0x181
	.long	0x1f1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.byte	0
	.uleb128 0x31
	.long	.LASF558
	.byte	0x1
	.value	0x18e
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x1fb2
	.uleb128 0x32
	.long	.LASF499
	.byte	0x1
	.value	0x18f
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x33
	.string	"loc"
	.byte	0x1
	.value	0x190
	.long	0xe60
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x32
	.long	.LASF476
	.byte	0x1
	.value	0x191
	.long	0x147
	.uleb128 0x3
	.byte	0x91
	.sleb128 -196
	.uleb128 0x32
	.long	.LASF559
	.byte	0x1
	.value	0x192
	.long	0x17c7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x32
	.long	.LASF560
	.byte	0x1
	.value	0x193
	.long	0x13f5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -204
	.uleb128 0x32
	.long	.LASF480
	.byte	0x1
	.value	0x194
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x30
	.string	"p"
	.byte	0x1
	.value	0x196
	.long	0x1fb2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x30
	.string	"x"
	.byte	0x1
	.value	0x197
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x2f
	.long	.LASF1
	.byte	0x1
	.value	0x198
	.long	0x478
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x2f
	.long	.LASF561
	.byte	0x1
	.value	0x199
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -164
	.uleb128 0x2f
	.long	.LASF562
	.byte	0x1
	.value	0x19a
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x2a
	.long	.LASF537
	.long	0x1fc8
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.11047
	.uleb128 0x2e
	.quad	.LBB13
	.quad	.LBE13-.LBB13
	.long	0x1ea1
	.uleb128 0x2f
	.long	.LASF553
	.byte	0x1
	.value	0x1a0
	.long	0x17c1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2b
	.quad	.LBB14
	.quad	.LBE14-.LBB14
	.uleb128 0x30
	.string	"__h"
	.byte	0x1
	.value	0x1a1
	.long	0x13ef
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x2e
	.quad	.LBB15
	.quad	.LBE15-.LBB15
	.long	0x1e6d
	.uleb128 0x30
	.string	"__o"
	.byte	0x1
	.value	0x1a1
	.long	0x13ef
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2f
	.long	.LASF544
	.byte	0x1
	.value	0x1a1
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -156
	.byte	0
	.uleb128 0x2b
	.quad	.LBB16
	.quad	.LBE16-.LBB16
	.uleb128 0x2f
	.long	.LASF545
	.byte	0x1
	.value	0x1a1
	.long	0x13ef
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2f
	.long	.LASF546
	.byte	0x1
	.value	0x1a1
	.long	0x1f8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2b
	.quad	.LBB17
	.quad	.LBE17-.LBB17
	.uleb128 0x2f
	.long	.LASF553
	.byte	0x1
	.value	0x1b4
	.long	0x17c1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2b
	.quad	.LBB18
	.quad	.LBE18-.LBB18
	.uleb128 0x2f
	.long	.LASF530
	.byte	0x1
	.value	0x1c1
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x2f
	.long	.LASF531
	.byte	0x1
	.value	0x1c2
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0x2f
	.long	.LASF563
	.byte	0x1
	.value	0x1c3
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x2e
	.quad	.LBB19
	.quad	.LBE19-.LBB19
	.long	0x1f8e
	.uleb128 0x30
	.string	"__h"
	.byte	0x1
	.value	0x1d8
	.long	0x13ef
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2e
	.quad	.LBB20
	.quad	.LBE20-.LBB20
	.long	0x1f5d
	.uleb128 0x30
	.string	"__o"
	.byte	0x1
	.value	0x1d8
	.long	0x13ef
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2f
	.long	.LASF544
	.byte	0x1
	.value	0x1d8
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -140
	.byte	0
	.uleb128 0x2b
	.quad	.LBB21
	.quad	.LBE21-.LBB21
	.uleb128 0x2f
	.long	.LASF545
	.byte	0x1
	.value	0x1d8
	.long	0x13ef
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2f
	.long	.LASF546
	.byte	0x1
	.value	0x1d8
	.long	0x1f8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x2b
	.quad	.LBB22
	.quad	.LBE22-.LBB22
	.uleb128 0x2f
	.long	.LASF439
	.byte	0x1
	.value	0x1e8
	.long	0x17c1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x17c1
	.uleb128 0x10
	.long	0x24b
	.long	0x1fc8
	.uleb128 0x11
	.long	0x140
	.byte	0xc
	.byte	0
	.uleb128 0x13
	.long	0x1fb8
	.uleb128 0x31
	.long	.LASF564
	.byte	0x1
	.value	0x20d
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x2134
	.uleb128 0x32
	.long	.LASF499
	.byte	0x1
	.value	0x20e
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x33
	.string	"loc"
	.byte	0x1
	.value	0x20f
	.long	0xe60
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x32
	.long	.LASF476
	.byte	0x1
	.value	0x210
	.long	0x147
	.uleb128 0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x32
	.long	.LASF559
	.byte	0x1
	.value	0x211
	.long	0x17c7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x32
	.long	.LASF1
	.byte	0x1
	.value	0x212
	.long	0x478
	.uleb128 0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0x30
	.string	"x"
	.byte	0x1
	.value	0x214
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2f
	.long	.LASF0
	.byte	0x1
	.value	0x215
	.long	0x636
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x30
	.string	"fmt"
	.byte	0x1
	.value	0x216
	.long	0x458
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x30
	.string	"i"
	.byte	0x1
	.value	0x217
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x30
	.string	"j"
	.byte	0x1
	.value	0x217
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x2b
	.quad	.LBB23
	.quad	.LBE23-.LBB23
	.uleb128 0x2f
	.long	.LASF565
	.byte	0x1
	.value	0x220
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.long	.LASF566
	.byte	0x1
	.value	0x221
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2f
	.long	.LASF567
	.byte	0x1
	.value	0x222
	.long	0x636
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2f
	.long	.LASF568
	.byte	0x1
	.value	0x223
	.long	0x636
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x30
	.string	"op0"
	.byte	0x1
	.value	0x224
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x30
	.string	"op1"
	.byte	0x1
	.value	0x225
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2f
	.long	.LASF569
	.byte	0x1
	.value	0x226
	.long	0xe60
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2f
	.long	.LASF570
	.byte	0x1
	.value	0x227
	.long	0xe60
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2b
	.quad	.LBB24
	.quad	.LBE24-.LBB24
	.uleb128 0x2f
	.long	.LASF571
	.byte	0x1
	.value	0x249
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x31
	.long	.LASF572
	.byte	0x1
	.value	0x296
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x2209
	.uleb128 0x32
	.long	.LASF499
	.byte	0x1
	.value	0x297
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x33
	.string	"loc"
	.byte	0x1
	.value	0x298
	.long	0xe60
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x32
	.long	.LASF476
	.byte	0x1
	.value	0x299
	.long	0x147
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x32
	.long	.LASF559
	.byte	0x1
	.value	0x29a
	.long	0x17c7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x32
	.long	.LASF560
	.byte	0x1
	.value	0x29b
	.long	0x13f5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x32
	.long	.LASF480
	.byte	0x1
	.value	0x29c
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x30
	.string	"fmt"
	.byte	0x1
	.value	0x29e
	.long	0x458
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x30
	.string	"x"
	.byte	0x1
	.value	0x29f
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2f
	.long	.LASF0
	.byte	0x1
	.value	0x2a0
	.long	0x636
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x30
	.string	"i"
	.byte	0x1
	.value	0x2a1
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x30
	.string	"j"
	.byte	0x1
	.value	0x2a1
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2a
	.long	.LASF537
	.long	0x2219
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.11132
	.byte	0
	.uleb128 0x10
	.long	0x24b
	.long	0x2219
	.uleb128 0x11
	.long	0x140
	.byte	0x8
	.byte	0
	.uleb128 0x13
	.long	0x2209
	.uleb128 0x34
	.long	.LASF586
	.byte	0x1
	.value	0x2f0
	.long	0x17c1
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x2498
	.uleb128 0x33
	.string	"bb"
	.byte	0x1
	.value	0x2f1
	.long	0x1312
	.uleb128 0x3
	.byte	0x91
	.sleb128 -424
	.uleb128 0x2f
	.long	.LASF499
	.byte	0x1
	.value	0x2f3
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -360
	.uleb128 0x2b
	.quad	.LBB25
	.quad	.LBE25-.LBB25
	.uleb128 0x2f
	.long	.LASF573
	.byte	0x1
	.value	0x2fb
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -404
	.uleb128 0x2f
	.long	.LASF536
	.byte	0x1
	.value	0x2fc
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -352
	.uleb128 0x2f
	.long	.LASF574
	.byte	0x1
	.value	0x2fd
	.long	0x1570
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.uleb128 0x2f
	.long	.LASF575
	.byte	0x1
	.value	0x2fe
	.long	0x2498
	.uleb128 0x3
	.byte	0x91
	.sleb128 -288
	.uleb128 0x30
	.string	"i"
	.byte	0x1
	.value	0x2ff
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -416
	.uleb128 0x2f
	.long	.LASF576
	.byte	0x1
	.value	0x2ff
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -412
	.uleb128 0x30
	.string	"alt"
	.byte	0x1
	.value	0x300
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -408
	.uleb128 0x2f
	.long	.LASF577
	.byte	0x1
	.value	0x301
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -400
	.uleb128 0x2e
	.quad	.LBB26
	.quad	.LBE26-.LBB26
	.long	0x2314
	.uleb128 0x2f
	.long	.LASF478
	.byte	0x1
	.value	0x321
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -396
	.byte	0
	.uleb128 0x2e
	.quad	.LBB27
	.quad	.LBE27-.LBB27
	.long	0x233a
	.uleb128 0x2f
	.long	.LASF495
	.byte	0x1
	.value	0x33f
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -392
	.byte	0
	.uleb128 0x2e
	.quad	.LBB28
	.quad	.LBE28-.LBB28
	.long	0x236f
	.uleb128 0x30
	.string	"loc"
	.byte	0x1
	.value	0x35d
	.long	0xe60
	.uleb128 0x3
	.byte	0x91
	.sleb128 -336
	.uleb128 0x30
	.string	"op"
	.byte	0x1
	.value	0x35e
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -328
	.byte	0
	.uleb128 0x2e
	.quad	.LBB29
	.quad	.LBE29-.LBB29
	.long	0x23c5
	.uleb128 0x30
	.string	"opn"
	.byte	0x1
	.value	0x36a
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -388
	.uleb128 0x30
	.string	"loc"
	.byte	0x1
	.value	0x36b
	.long	0xe60
	.uleb128 0x3
	.byte	0x91
	.sleb128 -320
	.uleb128 0x2f
	.long	.LASF476
	.byte	0x1
	.value	0x36e
	.long	0x147
	.uleb128 0x3
	.byte	0x91
	.sleb128 -384
	.uleb128 0x2f
	.long	.LASF560
	.byte	0x1
	.value	0x36f
	.long	0x13f5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -380
	.byte	0
	.uleb128 0x2e
	.quad	.LBB30
	.quad	.LBE30-.LBB30
	.long	0x23e9
	.uleb128 0x30
	.string	"p"
	.byte	0x1
	.value	0x38d
	.long	0x17c1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -344
	.byte	0
	.uleb128 0x2e
	.quad	.LBB31
	.quad	.LBE31-.LBB31
	.long	0x240f
	.uleb128 0x30
	.string	"opn"
	.byte	0x1
	.value	0x39e
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -376
	.byte	0
	.uleb128 0x2e
	.quad	.LBB32
	.quad	.LBE32-.LBB32
	.long	0x2454
	.uleb128 0x30
	.string	"loc"
	.byte	0x1
	.value	0x3b6
	.long	0xe60
	.uleb128 0x3
	.byte	0x91
	.sleb128 -312
	.uleb128 0x30
	.string	"op"
	.byte	0x1
	.value	0x3b7
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -304
	.uleb128 0x2f
	.long	.LASF476
	.byte	0x1
	.value	0x3b8
	.long	0x147
	.uleb128 0x3
	.byte	0x91
	.sleb128 -372
	.byte	0
	.uleb128 0x2b
	.quad	.LBB33
	.quad	.LBE33-.LBB33
	.uleb128 0x30
	.string	"opn"
	.byte	0x1
	.value	0x3c5
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -368
	.uleb128 0x30
	.string	"loc"
	.byte	0x1
	.value	0x3c6
	.long	0xe60
	.uleb128 0x3
	.byte	0x91
	.sleb128 -296
	.uleb128 0x2f
	.long	.LASF476
	.byte	0x1
	.value	0x3c9
	.long	0x147
	.uleb128 0x3
	.byte	0x91
	.sleb128 -364
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.long	0x2d
	.long	0x24a8
	.uleb128 0x11
	.long	0x140
	.byte	0x3
	.byte	0
	.uleb128 0x31
	.long	.LASF578
	.byte	0x1
	.value	0x3e4
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x2513
	.uleb128 0x32
	.long	.LASF579
	.byte	0x1
	.value	0x3e5
	.long	0x17c1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2b
	.quad	.LBB34
	.quad	.LBE34-.LBB34
	.uleb128 0x2f
	.long	.LASF553
	.byte	0x1
	.value	0x3e9
	.long	0x17c1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x30
	.string	"r"
	.byte	0x1
	.value	0x3ea
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2f
	.long	.LASF531
	.byte	0x1
	.value	0x3eb
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.byte	0
	.uleb128 0x35
	.long	.LASF580
	.byte	0x1
	.value	0x42f
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x256b
	.uleb128 0x32
	.long	.LASF530
	.byte	0x1
	.value	0x430
	.long	0x1f1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x33
	.string	"vd"
	.byte	0x1
	.value	0x431
	.long	0x256b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x30
	.string	"i"
	.byte	0x1
	.value	0x433
	.long	0x1f1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2f
	.long	.LASF439
	.byte	0x1
	.value	0x433
	.long	0x1f1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x182d
	.uleb128 0x31
	.long	.LASF581
	.byte	0x1
	.value	0x450
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x25f3
	.uleb128 0x33
	.string	"x"
	.byte	0x1
	.value	0x451
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x33
	.string	"vd"
	.byte	0x1
	.value	0x452
	.long	0x256b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2b
	.quad	.LBB35
	.quad	.LBE35-.LBB35
	.uleb128 0x2f
	.long	.LASF530
	.byte	0x1
	.value	0x45e
	.long	0x1f1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x30
	.string	"n"
	.byte	0x1
	.value	0x45f
	.long	0x1f1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x30
	.string	"i"
	.byte	0x1
	.value	0x460
	.long	0x1f1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x30
	.string	"j"
	.byte	0x1
	.value	0x460
	.long	0x1f1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.byte	0
	.uleb128 0x35
	.long	.LASF582
	.byte	0x1
	.value	0x47a
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0x264d
	.uleb128 0x32
	.long	.LASF530
	.byte	0x1
	.value	0x47b
	.long	0x1f1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x32
	.long	.LASF1
	.byte	0x1
	.value	0x47c
	.long	0x478
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x33
	.string	"vd"
	.byte	0x1
	.value	0x47d
	.long	0x256b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2f
	.long	.LASF531
	.byte	0x1
	.value	0x47f
	.long	0x1f1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x35
	.long	.LASF583
	.byte	0x1
	.value	0x48b
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0x2687
	.uleb128 0x33
	.string	"vd"
	.byte	0x1
	.value	0x48c
	.long	0x256b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x30
	.string	"i"
	.byte	0x1
	.value	0x48e
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x31
	.long	.LASF584
	.byte	0x1
	.value	0x49b
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0x26df
	.uleb128 0x33
	.string	"x"
	.byte	0x1
	.value	0x49c
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x33
	.string	"set"
	.byte	0x1
	.value	0x49d
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x32
	.long	.LASF435
	.byte	0x1
	.value	0x49e
	.long	0x1f8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x30
	.string	"vd"
	.byte	0x1
	.value	0x4a0
	.long	0x256b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x31
	.long	.LASF585
	.byte	0x1
	.value	0x4a9
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0x2737
	.uleb128 0x33
	.string	"x"
	.byte	0x1
	.value	0x4aa
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x33
	.string	"set"
	.byte	0x1
	.value	0x4ab
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x32
	.long	.LASF435
	.byte	0x1
	.value	0x4ac
	.long	0x1f8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x30
	.string	"vd"
	.byte	0x1
	.value	0x4ae
	.long	0x256b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x34
	.long	.LASF587
	.byte	0x1
	.value	0x4bc
	.long	0x139
	.quad	.LFB18
	.quad	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0x2792
	.uleb128 0x33
	.string	"px"
	.byte	0x1
	.value	0x4bd
	.long	0xe60
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x32
	.long	.LASF435
	.byte	0x1
	.value	0x4be
	.long	0x1f8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x30
	.string	"x"
	.byte	0x1
	.value	0x4c0
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x30
	.string	"vd"
	.byte	0x1
	.value	0x4c1
	.long	0x256b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x31
	.long	.LASF588
	.byte	0x1
	.value	0x4d2
	.quad	.LFB19
	.quad	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0x2824
	.uleb128 0x32
	.long	.LASF448
	.byte	0x1
	.value	0x4d3
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x33
	.string	"src"
	.byte	0x1
	.value	0x4d4
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x33
	.string	"vd"
	.byte	0x1
	.value	0x4d5
	.long	0x256b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x30
	.string	"dr"
	.byte	0x1
	.value	0x4d7
	.long	0x1f1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x30
	.string	"sr"
	.byte	0x1
	.value	0x4d8
	.long	0x1f1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x30
	.string	"dn"
	.byte	0x1
	.value	0x4d9
	.long	0x1f1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x30
	.string	"sn"
	.byte	0x1
	.value	0x4d9
	.long	0x1f1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x30
	.string	"i"
	.byte	0x1
	.value	0x4da
	.long	0x1f1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x36
	.long	.LASF589
	.byte	0x1
	.value	0x50d
	.long	0x2874
	.quad	.LFB20
	.quad	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0x2874
	.uleb128 0x32
	.long	.LASF590
	.byte	0x1
	.value	0x50e
	.long	0x478
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x32
	.long	.LASF591
	.byte	0x1
	.value	0x50e
	.long	0x478
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x32
	.long	.LASF530
	.byte	0x1
	.value	0x50f
	.long	0x1f1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.byte	0x2
	.long	.LASF592
	.uleb128 0x34
	.long	.LASF593
	.byte	0x1
	.value	0x522
	.long	0x2d
	.quad	.LFB21
	.quad	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.long	0x2919
	.uleb128 0x32
	.long	.LASF476
	.byte	0x1
	.value	0x523
	.long	0x147
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x33
	.string	"reg"
	.byte	0x1
	.value	0x524
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x33
	.string	"vd"
	.byte	0x1
	.value	0x525
	.long	0x256b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2f
	.long	.LASF530
	.byte	0x1
	.value	0x527
	.long	0x1f1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2f
	.long	.LASF1
	.byte	0x1
	.value	0x528
	.long	0x478
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x30
	.string	"i"
	.byte	0x1
	.value	0x529
	.long	0x1f1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2b
	.quad	.LBB36
	.quad	.LBE36-.LBB36
	.uleb128 0x30
	.string	"new"
	.byte	0x1
	.value	0x53e
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x34
	.long	.LASF594
	.byte	0x1
	.value	0x54a
	.long	0x2874
	.quad	.LFB22
	.quad	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.long	0x2986
	.uleb128 0x33
	.string	"loc"
	.byte	0x1
	.value	0x54b
	.long	0xe60
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x32
	.long	.LASF476
	.byte	0x1
	.value	0x54c
	.long	0x147
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x32
	.long	.LASF499
	.byte	0x1
	.value	0x54d
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x33
	.string	"vd"
	.byte	0x1
	.value	0x54e
	.long	0x256b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x30
	.string	"new"
	.byte	0x1
	.value	0x550
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x34
	.long	.LASF595
	.byte	0x1
	.value	0x562
	.long	0x2874
	.quad	.LFB23
	.quad	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.long	0x2b02
	.uleb128 0x33
	.string	"loc"
	.byte	0x1
	.value	0x563
	.long	0xe60
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x32
	.long	.LASF476
	.byte	0x1
	.value	0x564
	.long	0x147
	.uleb128 0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0x32
	.long	.LASF1
	.byte	0x1
	.value	0x565
	.long	0x478
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x32
	.long	.LASF499
	.byte	0x1
	.value	0x566
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x33
	.string	"vd"
	.byte	0x1
	.value	0x567
	.long	0x256b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x30
	.string	"x"
	.byte	0x1
	.value	0x569
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2f
	.long	.LASF0
	.byte	0x1
	.value	0x56a
	.long	0x636
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x30
	.string	"fmt"
	.byte	0x1
	.value	0x56b
	.long	0x458
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x30
	.string	"i"
	.byte	0x1
	.value	0x56c
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x30
	.string	"j"
	.byte	0x1
	.value	0x56c
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x2f
	.long	.LASF596
	.byte	0x1
	.value	0x56d
	.long	0x2874
	.uleb128 0x3
	.byte	0x91
	.sleb128 -121
	.uleb128 0x2b
	.quad	.LBB37
	.quad	.LBE37-.LBB37
	.uleb128 0x2f
	.long	.LASF565
	.byte	0x1
	.value	0x573
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2f
	.long	.LASF566
	.byte	0x1
	.value	0x574
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2f
	.long	.LASF567
	.byte	0x1
	.value	0x575
	.long	0x636
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2f
	.long	.LASF568
	.byte	0x1
	.value	0x576
	.long	0x636
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x30
	.string	"op0"
	.byte	0x1
	.value	0x577
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x30
	.string	"op1"
	.byte	0x1
	.value	0x578
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2f
	.long	.LASF569
	.byte	0x1
	.value	0x579
	.long	0xe60
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2f
	.long	.LASF570
	.byte	0x1
	.value	0x57a
	.long	0xe60
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2b
	.quad	.LBB38
	.quad	.LBE38-.LBB38
	.uleb128 0x2f
	.long	.LASF571
	.byte	0x1
	.value	0x59c
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x34
	.long	.LASF597
	.byte	0x1
	.value	0x5e9
	.long	0x2874
	.quad	.LFB24
	.quad	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.long	0x2b4f
	.uleb128 0x33
	.string	"x"
	.byte	0x1
	.value	0x5ea
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x32
	.long	.LASF499
	.byte	0x1
	.value	0x5eb
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x33
	.string	"vd"
	.byte	0x1
	.value	0x5ec
	.long	0x256b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x34
	.long	.LASF598
	.byte	0x1
	.value	0x5f6
	.long	0x2874
	.quad	.LFB25
	.quad	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.long	0x2d18
	.uleb128 0x33
	.string	"bb"
	.byte	0x1
	.value	0x5f7
	.long	0x1312
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x33
	.string	"vd"
	.byte	0x1
	.value	0x5f8
	.long	0x256b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x2f
	.long	.LASF596
	.byte	0x1
	.value	0x5fa
	.long	0x2874
	.uleb128 0x3
	.byte	0x91
	.sleb128 -111
	.uleb128 0x2f
	.long	.LASF499
	.byte	0x1
	.value	0x5fb
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x37
	.long	.LASF599
	.byte	0x1
	.value	0x66b
	.quad	.L710
	.uleb128 0x37
	.long	.LASF600
	.byte	0x1
	.value	0x6a3
	.quad	.L756
	.uleb128 0x2b
	.quad	.LBB39
	.quad	.LBE39-.LBB39
	.uleb128 0x2f
	.long	.LASF573
	.byte	0x1
	.value	0x5ff
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x30
	.string	"i"
	.byte	0x1
	.value	0x5ff
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x30
	.string	"alt"
	.byte	0x1
	.value	0x5ff
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2f
	.long	.LASF577
	.byte	0x1
	.value	0x5ff
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2f
	.long	.LASF601
	.byte	0x1
	.value	0x600
	.long	0x2874
	.uleb128 0x3
	.byte	0x91
	.sleb128 -109
	.uleb128 0x30
	.string	"set"
	.byte	0x1
	.value	0x601
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2e
	.quad	.LBB40
	.quad	.LBE40-.LBB40
	.long	0x2c63
	.uleb128 0x2f
	.long	.LASF478
	.byte	0x1
	.value	0x61a
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.byte	0
	.uleb128 0x2e
	.quad	.LBB41
	.quad	.LBE41-.LBB41
	.long	0x2cc5
	.uleb128 0x30
	.string	"src"
	.byte	0x1
	.value	0x639
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2f
	.long	.LASF530
	.byte	0x1
	.value	0x63a
	.long	0x1f1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2f
	.long	.LASF1
	.byte	0x1
	.value	0x63b
	.long	0x478
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x30
	.string	"i"
	.byte	0x1
	.value	0x63c
	.long	0x1f1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x30
	.string	"new"
	.byte	0x1
	.value	0x63d
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x2b
	.quad	.LBB42
	.quad	.LBE42-.LBB42
	.uleb128 0x2f
	.long	.LASF602
	.byte	0x1
	.value	0x671
	.long	0x2874
	.uleb128 0x3
	.byte	0x91
	.sleb128 -110
	.uleb128 0x2b
	.quad	.LBB43
	.quad	.LBE43-.LBB43
	.uleb128 0x30
	.string	"j"
	.byte	0x1
	.value	0x696
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x30
	.string	"new"
	.byte	0x1
	.value	0x697
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x38
	.long	.LASF604
	.byte	0x1
	.value	0x6bb
	.quad	.LFB26
	.quad	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.long	0x2d82
	.uleb128 0x2f
	.long	.LASF605
	.byte	0x1
	.value	0x6bd
	.long	0x256b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2f
	.long	.LASF606
	.byte	0x1
	.value	0x6be
	.long	0x2874
	.uleb128 0x2
	.byte	0x91
	.sleb128 -37
	.uleb128 0x30
	.string	"b"
	.byte	0x1
	.value	0x6bf
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2b
	.quad	.LBB44
	.quad	.LBE44-.LBB44
	.uleb128 0x30
	.string	"bb"
	.byte	0x1
	.value	0x6c7
	.long	0x1312
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x38
	.long	.LASF607
	.byte	0x1
	.value	0x6ef
	.quad	.LFB27
	.quad	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.long	0x2dd8
	.uleb128 0x33
	.string	"vd"
	.byte	0x1
	.value	0x6f0
	.long	0x256b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x30
	.string	"set"
	.byte	0x1
	.value	0x6f2
	.long	0x11f8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x30
	.string	"i"
	.byte	0x1
	.value	0x6f3
	.long	0x1f1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x30
	.string	"j"
	.byte	0x1
	.value	0x6f3
	.long	0x1f1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x10
	.long	0x458
	.long	0x2de8
	.uleb128 0x11
	.long	0x140
	.byte	0x18
	.byte	0
	.uleb128 0x29
	.long	.LASF608
	.byte	0x1
	.byte	0x32
	.long	0x2dfd
	.uleb128 0x9
	.byte	0x3
	.quad	reg_class_names
	.uleb128 0x13
	.long	0x2dd8
	.uleb128 0x10
	.long	0x458
	.long	0x2e12
	.uleb128 0x11
	.long	0x140
	.byte	0x5
	.byte	0
	.uleb128 0x29
	.long	.LASF609
	.byte	0x1
	.byte	0x4a
	.long	0x2e27
	.uleb128 0x9
	.byte	0x3
	.quad	scan_actions_name
	.uleb128 0x13
	.long	0x2e02
	.uleb128 0x29
	.long	.LASF610
	.byte	0x1
	.byte	0x54
	.long	0x133d
	.uleb128 0x9
	.byte	0x3
	.quad	rename_obstack
	.uleb128 0x2f
	.long	.LASF611
	.byte	0x1
	.value	0x18a
	.long	0x17c1
	.uleb128 0x9
	.byte	0x3
	.quad	open_chains
	.uleb128 0x2f
	.long	.LASF612
	.byte	0x1
	.value	0x18b
	.long	0x17c1
	.uleb128 0x9
	.byte	0x3
	.quad	closed_chains
	.uleb128 0x39
	.long	.LASF613
	.byte	0x8
	.byte	0x62
	.long	0x139
	.uleb128 0x10
	.long	0x147
	.long	0x2e88
	.uleb128 0x11
	.long	0x140
	.byte	0x34
	.byte	0
	.uleb128 0x3a
	.long	.LASF614
	.byte	0x8
	.value	0xc3a
	.long	0x2e94
	.uleb128 0x13
	.long	0x2e78
	.uleb128 0x39
	.long	.LASF615
	.byte	0x6
	.byte	0xaa
	.long	0x42c
	.uleb128 0x10
	.long	0x458
	.long	0x2eb4
	.uleb128 0x11
	.long	0x140
	.byte	0x3a
	.byte	0
	.uleb128 0x39
	.long	.LASF616
	.byte	0x9
	.byte	0x29
	.long	0x2ebf
	.uleb128 0x13
	.long	0x2ea4
	.uleb128 0x10
	.long	0x5ed
	.long	0x2ed4
	.uleb128 0x11
	.long	0x140
	.byte	0x3a
	.byte	0
	.uleb128 0x39
	.long	.LASF153
	.byte	0x9
	.byte	0x34
	.long	0x2edf
	.uleb128 0x13
	.long	0x2ec4
	.uleb128 0x10
	.long	0x213
	.long	0x2ef4
	.uleb128 0x11
	.long	0x140
	.byte	0x3a
	.byte	0
	.uleb128 0x39
	.long	.LASF617
	.byte	0x9
	.byte	0x50
	.long	0x2eff
	.uleb128 0x13
	.long	0x2ee4
	.uleb128 0x10
	.long	0x213
	.long	0x2f14
	.uleb128 0x11
	.long	0x140
	.byte	0x98
	.byte	0
	.uleb128 0x39
	.long	.LASF618
	.byte	0x2
	.byte	0x36
	.long	0x2f1f
	.uleb128 0x13
	.long	0x2f04
	.uleb128 0x10
	.long	0x458
	.long	0x2f34
	.uleb128 0x11
	.long	0x140
	.byte	0x98
	.byte	0
	.uleb128 0x39
	.long	.LASF619
	.byte	0x2
	.byte	0x3c
	.long	0x2f3f
	.uleb128 0x13
	.long	0x2f24
	.uleb128 0x10
	.long	0x24b
	.long	0x2f54
	.uleb128 0x11
	.long	0x140
	.byte	0x98
	.byte	0
	.uleb128 0x39
	.long	.LASF620
	.byte	0x2
	.byte	0x3f
	.long	0x2f5f
	.uleb128 0x13
	.long	0x2f44
	.uleb128 0x10
	.long	0x2d
	.long	0x2f74
	.uleb128 0x11
	.long	0x140
	.byte	0xa
	.byte	0
	.uleb128 0x3a
	.long	.LASF621
	.byte	0x2
	.value	0x652
	.long	0x2f64
	.uleb128 0x39
	.long	.LASF622
	.byte	0xd
	.byte	0x9d
	.long	0x2f8b
	.uleb128 0x3
	.byte	0x8
	.long	0x228
	.uleb128 0x10
	.long	0x24b
	.long	0x2fa1
	.uleb128 0x11
	.long	0x140
	.byte	0x34
	.byte	0
	.uleb128 0x39
	.long	.LASF623
	.byte	0xd
	.byte	0xa2
	.long	0x2f91
	.uleb128 0x10
	.long	0x458
	.long	0x2fbc
	.uleb128 0x11
	.long	0x140
	.byte	0x34
	.byte	0
	.uleb128 0x3a
	.long	.LASF624
	.byte	0xe
	.value	0x1e5
	.long	0x2fac
	.uleb128 0x3a
	.long	.LASF625
	.byte	0xe
	.value	0x18b
	.long	0x2f91
	.uleb128 0x3a
	.long	.LASF626
	.byte	0xe
	.value	0x196
	.long	0x2f91
	.uleb128 0x3a
	.long	.LASF627
	.byte	0xe
	.value	0x19a
	.long	0x11f8
	.uleb128 0x3a
	.long	.LASF628
	.byte	0xe
	.value	0x1b0
	.long	0x2f91
	.uleb128 0x3a
	.long	.LASF629
	.byte	0xe
	.value	0x1b9
	.long	0x11f8
	.uleb128 0x10
	.long	0x11f8
	.long	0x3014
	.uleb128 0x11
	.long	0x140
	.byte	0x18
	.byte	0
	.uleb128 0x3a
	.long	.LASF630
	.byte	0xe
	.value	0x1c7
	.long	0x3004
	.uleb128 0x39
	.long	.LASF631
	.byte	0xb
	.byte	0xe4
	.long	0x139
	.uleb128 0x39
	.long	.LASF632
	.byte	0xb
	.byte	0xec
	.long	0x11e7
	.uleb128 0x3a
	.long	.LASF633
	.byte	0x11
	.value	0x1cb
	.long	0x3042
	.uleb128 0x3
	.byte	0x8
	.long	0x252
	.uleb128 0x39
	.long	.LASF634
	.byte	0x10
	.byte	0x91
	.long	0x139
	.uleb128 0x39
	.long	.LASF488
	.byte	0x10
	.byte	0xcb
	.long	0x14d5
	.uleb128 0x10
	.long	0x1414
	.long	0x3074
	.uleb128 0x11
	.long	0x140
	.byte	0x1d
	.uleb128 0x11
	.long	0x140
	.byte	0x1d
	.byte	0
	.uleb128 0x39
	.long	.LASF635
	.byte	0x10
	.byte	0xcf
	.long	0x305e
	.uleb128 0x10
	.long	0x1671
	.long	0x308a
	.uleb128 0x3b
	.byte	0
	.uleb128 0x39
	.long	.LASF506
	.byte	0x10
	.byte	0xf9
	.long	0x3095
	.uleb128 0x13
	.long	0x307f
	.uleb128 0x3a
	.long	.LASF636
	.byte	0x12
	.value	0x244
	.long	0x139
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
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x5
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
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x9
	.uleb128 0x17
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x4
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
	.uleb128 0xd
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x16
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
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
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x17
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x19
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
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x32
	.uleb128 0x5
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
	.uleb128 0x33
	.uleb128 0x5
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
	.uleb128 0x34
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x35
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x36
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x37
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x38
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
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.uleb128 0x3b
	.uleb128 0x21
	.byte	0
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
.LASF352:
	.string	"REG_BR_PROB"
.LASF382:
	.string	"NOTE_INSN_EH_REGION_BEG"
.LASF542:
	.string	"this_tick"
.LASF309:
	.string	"rtstr"
.LASF369:
	.string	"NOTE_INSN_DELETED"
.LASF589:
	.string	"mode_change_ok"
.LASF84:
	.string	"_unused2"
.LASF237:
	.string	"UMOD"
.LASF291:
	.string	"min_align"
.LASF70:
	.string	"_fileno"
.LASF406:
	.string	"varray_data_tag"
.LASF24:
	.string	"AD_REGS"
.LASF538:
	.string	"merge_overlapping_regs"
.LASF317:
	.string	"first"
.LASF278:
	.string	"CONSTANT_P_RTX"
.LASF628:
	.string	"global_regs"
.LASF592:
	.string	"_Bool"
.LASF308:
	.string	"rtuint"
.LASF631:
	.string	"n_basic_blocks"
.LASF576:
	.string	"icode"
.LASF312:
	.string	"rt_cselib"
.LASF181:
	.string	"DEFINE_PEEPHOLE2"
.LASF12:
	.string	"rtvec_def"
.LASF241:
	.string	"LSHIFTRT"
.LASF175:
	.string	"MATCH_PAR_DUP"
.LASF75:
	.string	"_shortbuf"
.LASF639:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/403.gcc/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF626:
	.string	"call_used_regs"
.LASF236:
	.string	"UDIV"
.LASF10:
	.string	"rtvec"
.LASF555:
	.string	"this_unavailable"
.LASF169:
	.string	"MATCH_OPERAND"
.LASF150:
	.string	"CCFPmode"
.LASF91:
	.string	"reg_class"
.LASF473:
	.string	"OP_INOUT"
.LASF258:
	.string	"UNLE"
.LASF28:
	.string	"LEGACY_REGS"
.LASF296:
	.string	"max_after_base"
.LASF259:
	.string	"UNLT"
.LASF603:
	.string	"regrename_optimize"
.LASF623:
	.string	"regs_ever_live"
.LASF450:
	.string	"probability"
.LASF122:
	.string	"CTImode"
.LASF56:
	.string	"_flags"
.LASF439:
	.string	"next"
.LASF51:
	.string	"__off_t"
.LASF529:
	.string	"pset"
.LASF120:
	.string	"CSImode"
.LASF30:
	.string	"FP_TOP_REG"
.LASF280:
	.string	"VEC_MERGE"
.LASF554:
	.string	"last"
.LASF76:
	.string	"_lock"
.LASF408:
	.string	"uhint"
.LASF213:
	.string	"RETURN"
.LASF509:
	.string	"output_format"
.LASF409:
	.string	"generic"
.LASF14:
	.string	"elem"
.LASF506:
	.string	"insn_data"
.LASF156:
	.string	"MODE_FLOAT"
.LASF474:
	.string	"operand_alternative"
.LASF300:
	.string	"alias"
.LASF297:
	.string	"offset_unsigned"
.LASF126:
	.string	"V2SImode"
.LASF565:
	.string	"orig_op0"
.LASF25:
	.string	"Q_REGS"
.LASF200:
	.string	"CODE_LABEL"
.LASF121:
	.string	"CDImode"
.LASF206:
	.string	"UNSPEC"
.LASF199:
	.string	"BARRIER"
.LASF375:
	.string	"NOTE_INSN_LOOP_VTOP"
.LASF202:
	.string	"COND_EXEC"
.LASF216:
	.string	"CONST_INT"
.LASF212:
	.string	"CALL"
.LASF128:
	.string	"V4QImode"
.LASF638:
	.string	"regrename.c"
.LASF191:
	.string	"ATTR"
.LASF332:
	.string	"count"
.LASF624:
	.string	"reg_names"
.LASF310:
	.string	"rttype"
.LASF619:
	.string	"rtx_format"
.LASF19:
	.string	"DREG"
.LASF322:
	.string	"head_tree"
.LASF37:
	.string	"FLOAT_SSE_REGS"
.LASF399:
	.string	"GR_VIRTUAL_STACK_ARGS"
.LASF127:
	.string	"V2DImode"
.LASF436:
	.string	"varray_type"
.LASF305:
	.string	"mem_attrs"
.LASF62:
	.string	"_IO_write_end"
.LASF346:
	.string	"REG_UNUSED"
.LASF184:
	.string	"DEFINE_DELAY"
.LASF234:
	.string	"MINUS"
.LASF22:
	.string	"SIREG"
.LASF415:
	.string	"sched_info_tag"
.LASF585:
	.string	"kill_set_value"
.LASF224:
	.string	"STRICT_LOW_PART"
.LASF544:
	.string	"__len"
.LASF166:
	.string	"INCLUDE"
.LASF395:
	.string	"GR_FRAME_POINTER"
.LASF539:
	.string	"chain"
.LASF330:
	.string	"index"
.LASF422:
	.string	"freq"
.LASF262:
	.string	"ZERO_EXTEND"
.LASF520:
	.string	"terminate_write"
.LASF265:
	.string	"FLOAT_TRUNCATE"
.LASF486:
	.string	"is_address"
.LASF392:
	.string	"GR_PC"
.LASF21:
	.string	"BREG"
.LASF137:
	.string	"V2SFmode"
.LASF429:
	.string	"varray_data"
.LASF266:
	.string	"FLOAT"
.LASF358:
	.string	"REG_EH_CONTEXT"
.LASF92:
	.string	"machine_mode"
.LASF458:
	.string	"chunk"
.LASF527:
	.string	"value_data"
.LASF315:
	.string	"rtmem"
.LASF275:
	.string	"RANGE_REG"
.LASF313:
	.string	"rtbit"
.LASF438:
	.string	"bitmap_element_def"
.LASF3:
	.string	"call"
.LASF99:
	.string	"TImode"
.LASF562:
	.string	"this_nregs"
.LASF251:
	.string	"PRE_MODIFY"
.LASF264:
	.string	"FLOAT_EXTEND"
.LASF419:
	.string	"last_note_uid"
.LASF6:
	.string	"in_struct"
.LASF519:
	.string	"terminate_overlapping_read"
.LASF370:
	.string	"NOTE_INSN_BLOCK_BEG"
.LASF97:
	.string	"SImode"
.LASF208:
	.string	"ADDR_VEC"
.LASF597:
	.string	"replace_oldest_value_mem"
.LASF138:
	.string	"V2DFmode"
.LASF290:
	.string	"LAST_AND_UNUSED_RTX_CODE"
.LASF304:
	.string	"align"
.LASF319:
	.string	"indx"
.LASF227:
	.string	"SYMBOL_REF"
.LASF368:
	.string	"NOTE_INSN_BIAS"
.LASF390:
	.string	"NOTE_INSN_MAX"
.LASF485:
	.string	"incmem_ok"
.LASF630:
	.string	"reg_class_contents"
.LASF180:
	.string	"DEFINE_INSN_AND_SPLIT"
.LASF232:
	.string	"COMPARE"
.LASF260:
	.string	"LTGT"
.LASF462:
	.string	"temp"
.LASF272:
	.string	"HIGH"
.LASF229:
	.string	"QUEUED"
.LASF26:
	.string	"NON_Q_REGS"
.LASF1:
	.string	"mode"
.LASF98:
	.string	"DImode"
.LASF510:
	.string	"_obstack_chunk"
.LASF532:
	.string	"note_sets"
.LASF404:
	.string	"const_equiv_data"
.LASF69:
	.string	"_chain"
.LASF601:
	.string	"is_asm"
.LASF250:
	.string	"POST_INC"
.LASF595:
	.string	"replace_oldest_value_addr"
.LASF111:
	.string	"TFmode"
.LASF47:
	.string	"unsigned char"
.LASF31:
	.string	"FP_SECOND_REG"
.LASF609:
	.string	"scan_actions_name"
.LASF641:
	.string	"_IO_lock_t"
.LASF482:
	.string	"offmem_ok"
.LASF476:
	.string	"class"
.LASF457:
	.string	"chunk_size"
.LASF426:
	.string	"basic_block"
.LASF94:
	.string	"BImode"
.LASF248:
	.string	"PRE_INC"
.LASF345:
	.string	"REG_NO_CONFLICT"
.LASF108:
	.string	"SFmode"
.LASF570:
	.string	"locB"
.LASF491:
	.string	"constraints"
.LASF600:
	.string	"did_replacement"
.LASF507:
	.string	"output"
.LASF197:
	.string	"JUMP_INSN"
.LASF327:
	.string	"cond_local_set"
.LASF451:
	.string	"edge"
.LASF500:
	.string	"insn_operand_predicate_fn"
.LASF160:
	.string	"MODE_COMPLEX_FLOAT"
.LASF314:
	.string	"rttree"
.LASF459:
	.string	"object_base"
.LASF367:
	.string	"insn_note"
.LASF489:
	.string	"operand"
.LASF386:
	.string	"NOTE_INSN_RANGE_END"
.LASF179:
	.string	"DEFINE_SPLIT"
.LASF218:
	.string	"CONST_VECTOR"
.LASF176:
	.string	"MATCH_INSN"
.LASF109:
	.string	"DFmode"
.LASF33:
	.string	"SSE_REGS"
.LASF444:
	.string	"gcov_type"
.LASF602:
	.string	"replaced"
.LASF45:
	.string	"size_t"
.LASF210:
	.string	"PREFETCH"
.LASF42:
	.string	"LIM_REG_CLASSES"
.LASF41:
	.string	"ALL_REGS"
.LASF103:
	.string	"PSImode"
.LASF274:
	.string	"RANGE_INFO"
.LASF405:
	.string	"rtunion_def"
.LASF190:
	.string	"DEFINE_ATTR"
.LASF192:
	.string	"SET_ATTR"
.LASF117:
	.string	"TCmode"
.LASF267:
	.string	"UNSIGNED_FLOAT"
.LASF357:
	.string	"REG_FRAME_RELATED_EXPR"
.LASF414:
	.string	"cselib_val_struct"
.LASF389:
	.string	"NOTE_INSN_EXPECTED_VALUE"
.LASF61:
	.string	"_IO_write_ptr"
.LASF548:
	.string	"unavailable"
.LASF512:
	.string	"contents"
.LASF239:
	.string	"ROTATE"
.LASF572:
	.string	"scan_rtx"
.LASF325:
	.string	"succ"
.LASF421:
	.string	"refs"
.LASF591:
	.string	"new_mode"
.LASF263:
	.string	"TRUNCATE"
.LASF350:
	.string	"REG_DEP_ANTI"
.LASF114:
	.string	"SCmode"
.LASF618:
	.string	"rtx_length"
.LASF621:
	.string	"global_rtl"
.LASF400:
	.string	"GR_VIRTUAL_STACK_DYNAMIC"
.LASF104:
	.string	"PDImode"
.LASF371:
	.string	"NOTE_INSN_BLOCK_END"
.LASF411:
	.string	"bitmap"
.LASF380:
	.string	"NOTE_INSN_DELETED_LABEL"
.LASF620:
	.string	"rtx_class"
.LASF334:
	.string	"flags"
.LASF167:
	.string	"EXPR_LIST"
.LASF194:
	.string	"EQ_ATTR"
.LASF147:
	.string	"CCGOCmode"
.LASF225:
	.string	"CONCAT"
.LASF446:
	.string	"pred_next"
.LASF293:
	.string	"min_after_vec"
.LASF564:
	.string	"scan_rtx_address"
.LASF54:
	.string	"FILE"
.LASF231:
	.string	"COND"
.LASF157:
	.string	"MODE_PARTIAL_INT"
.LASF15:
	.string	"tree"
.LASF563:
	.string	"exact_match"
.LASF115:
	.string	"DCmode"
.LASF581:
	.string	"kill_value"
.LASF182:
	.string	"DEFINE_COMBINE"
.LASF637:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF533:
	.string	"clear_dead_regs"
.LASF240:
	.string	"ASHIFTRT"
.LASF575:
	.string	"old_dups"
.LASF543:
	.string	"first_obj"
.LASF145:
	.string	"CCmode"
.LASF323:
	.string	"end_tree"
.LASF32:
	.string	"FLOAT_REGS"
.LASF373:
	.string	"NOTE_INSN_LOOP_END"
.LASF143:
	.string	"V16SFmode"
.LASF599:
	.string	"no_move_special_case"
.LASF387:
	.string	"NOTE_INSN_LIVE"
.LASF187:
	.string	"DEFINE_COND_EXEC"
.LASF65:
	.string	"_IO_save_base"
.LASF480:
	.string	"earlyclobber"
.LASF183:
	.string	"DEFINE_EXPAND"
.LASF610:
	.string	"rename_obstack"
.LASF432:
	.string	"elements_used"
.LASF134:
	.string	"V8SImode"
.LASF196:
	.string	"INSN"
.LASF307:
	.string	"rtint"
.LASF515:
	.string	"next_use"
.LASF226:
	.string	"LABEL_REF"
.LASF349:
	.string	"REG_LABEL"
.LASF428:
	.string	"elt_list"
.LASF337:
	.string	"REG_DEAD"
.LASF377:
	.string	"NOTE_INSN_FUNCTION_END"
.LASF79:
	.string	"__pad2"
.LASF617:
	.string	"mode_size"
.LASF340:
	.string	"REG_EQUAL"
.LASF0:
	.string	"code"
.LASF443:
	.string	"regset"
.LASF454:
	.string	"UPDATE_LIFE_GLOBAL"
.LASF505:
	.string	"eliminable"
.LASF146:
	.string	"CCGCmode"
.LASF329:
	.string	"global_live_at_end"
.LASF629:
	.string	"regs_invalidated_by_call"
.LASF222:
	.string	"SCRATCH"
.LASF132:
	.string	"V8QImode"
.LASF135:
	.string	"V8DImode"
.LASF163:
	.string	"MAX_MODE_CLASS"
.LASF583:
	.string	"init_value_data"
.LASF261:
	.string	"SIGN_EXTEND"
.LASF627:
	.string	"call_used_reg_set"
.LASF546:
	.string	"value"
.LASF283:
	.string	"VEC_DUPLICATE"
.LASF86:
	.string	"_next"
.LASF498:
	.string	"n_alternatives"
.LASF301:
	.string	"expr"
.LASF383:
	.string	"NOTE_INSN_EH_REGION_END"
.LASF464:
	.string	"chunkfun"
.LASF492:
	.string	"operand_mode"
.LASF541:
	.string	"tick"
.LASF141:
	.string	"V8SFmode"
.LASF553:
	.string	"this"
.LASF499:
	.string	"insn"
.LASF23:
	.string	"DIREG"
.LASF348:
	.string	"REG_CC_USER"
.LASF205:
	.string	"ASM_OPERANDS"
.LASF149:
	.string	"CCZmode"
.LASF374:
	.string	"NOTE_INSN_LOOP_CONT"
.LASF27:
	.string	"INDEX_REGS"
.LASF540:
	.string	"live"
.LASF552:
	.string	"n_uses"
.LASF616:
	.string	"mode_name"
.LASF477:
	.string	"reject"
.LASF558:
	.string	"scan_rtx_reg"
.LASF363:
	.string	"REG_NON_LOCAL_GOTO"
.LASF209:
	.string	"ADDR_DIFF_VEC"
.LASF561:
	.string	"this_regno"
.LASF475:
	.string	"constraint"
.LASF271:
	.string	"ZERO_EXTRACT"
.LASF407:
	.string	"hint"
.LASF204:
	.string	"ASM_INPUT"
.LASF254:
	.string	"ORDERED"
.LASF142:
	.string	"V8DFmode"
.LASF431:
	.string	"num_elements"
.LASF268:
	.string	"UNSIGNED_FIX"
.LASF29:
	.string	"GENERAL_REGS"
.LASF615:
	.string	"stderr"
.LASF434:
	.string	"name"
.LASF168:
	.string	"INSN_LIST"
.LASF87:
	.string	"_sbuf"
.LASF483:
	.string	"nonoffmem_ok"
.LASF276:
	.string	"RANGE_VAR"
.LASF427:
	.string	"changes_mode"
.LASF67:
	.string	"_IO_save_end"
.LASF155:
	.string	"MODE_INT"
.LASF433:
	.string	"element_size"
.LASF2:
	.string	"jump"
.LASF530:
	.string	"regno"
.LASF560:
	.string	"type"
.LASF277:
	.string	"RANGE_LIVE"
.LASF125:
	.string	"V2HImode"
.LASF9:
	.string	"frame_related"
.LASF488:
	.string	"recog_data"
.LASF413:
	.string	"const_equiv"
.LASF418:
	.string	"last_uid"
.LASF311:
	.string	"rt_addr_diff_vec_flags"
.LASF397:
	.string	"GR_ARG_POINTER"
.LASF16:
	.string	"sizetype"
.LASF36:
	.string	"FP_SECOND_SSE_REGS"
.LASF545:
	.string	"__o1"
.LASF286:
	.string	"SS_MINUS"
.LASF528:
	.string	"max_value_regs"
.LASF173:
	.string	"MATCH_PARALLEL"
.LASF130:
	.string	"V4SImode"
.LASF5:
	.string	"volatil"
.LASF455:
	.string	"UPDATE_LIFE_GLOBAL_RM_NOTES"
.LASF339:
	.string	"REG_EQUIV"
.LASF593:
	.string	"find_oldest_value_reg"
.LASF48:
	.string	"short unsigned int"
.LASF49:
	.string	"signed char"
.LASF172:
	.string	"MATCH_OPERATOR"
.LASF430:
	.string	"varray_head_tag"
.LASF318:
	.string	"current"
.LASF502:
	.string	"insn_operand_data"
.LASF288:
	.string	"SS_TRUNCATE"
.LASF353:
	.string	"REG_EXEC_COUNT"
.LASF625:
	.string	"fixed_regs"
.LASF484:
	.string	"decmem_ok"
.LASF292:
	.string	"base_after_vec"
.LASF177:
	.string	"DEFINE_INSN"
.LASF52:
	.string	"__off64_t"
.LASF131:
	.string	"V4DImode"
.LASF468:
	.string	"maybe_empty_object"
.LASF331:
	.string	"loop_depth"
.LASF59:
	.string	"_IO_read_base"
.LASF39:
	.string	"INT_SSE_REGS"
.LASF77:
	.string	"_offset"
.LASF398:
	.string	"GR_VIRTUAL_INCOMING_ARGS"
.LASF606:
	.string	"need_refresh"
.LASF351:
	.string	"REG_DEP_OUTPUT"
.LASF64:
	.string	"_IO_buf_end"
.LASF186:
	.string	"DEFINE_ASM_ATTRIBUTES"
.LASF287:
	.string	"US_MINUS"
.LASF35:
	.string	"FP_TOP_SSE_REGS"
.LASF270:
	.string	"SIGN_EXTRACT"
.LASF8:
	.string	"integrated"
.LASF424:
	.string	"live_length"
.LASF211:
	.string	"CLOBBER"
.LASF587:
	.string	"kill_autoinc_value"
.LASF445:
	.string	"edge_def"
.LASF83:
	.string	"_mode"
.LASF161:
	.string	"MODE_VECTOR_INT"
.LASF60:
	.string	"_IO_write_base"
.LASF571:
	.string	"index_op"
.LASF355:
	.string	"REG_SAVE_AREA"
.LASF279:
	.string	"CALL_PLACEHOLDER"
.LASF139:
	.string	"V4SFmode"
.LASF471:
	.string	"OP_IN"
.LASF522:
	.string	"mark_read"
.LASF233:
	.string	"PLUS"
.LASF249:
	.string	"POST_DEC"
.LASF441:
	.string	"bits"
.LASF96:
	.string	"HImode"
.LASF335:
	.string	"rtunion"
.LASF376:
	.string	"NOTE_INSN_LOOP_END_TOP_COND"
.LASF453:
	.string	"UPDATE_LIFE_LOCAL"
.LASF159:
	.string	"MODE_COMPLEX_INT"
.LASF44:
	.string	"long int"
.LASF402:
	.string	"GR_VIRTUAL_CFA"
.LASF551:
	.string	"best_new_reg"
.LASF632:
	.string	"basic_block_info"
.LASF341:
	.string	"REG_WAS_0"
.LASF362:
	.string	"REG_NORETURN"
.LASF85:
	.string	"_IO_marker"
.LASF110:
	.string	"XFmode"
.LASF361:
	.string	"REG_MAYBE_DEAD"
.LASF511:
	.string	"limit"
.LASF140:
	.string	"V4DFmode"
.LASF622:
	.string	"reg_renumber"
.LASF4:
	.string	"unchanging"
.LASF336:
	.string	"reg_note"
.LASF497:
	.string	"n_dups"
.LASF164:
	.string	"rtx_code"
.LASF504:
	.string	"strict_low"
.LASF633:
	.string	"rtl_dump_file"
.LASF524:
	.string	"value_data_entry"
.LASF487:
	.string	"anything_ok"
.LASF20:
	.string	"CREG"
.LASF518:
	.string	"terminate_all_read"
.LASF165:
	.string	"UNKNOWN"
.LASF207:
	.string	"UNSPEC_VOLATILE"
.LASF588:
	.string	"copy_value"
.LASF579:
	.string	"chains"
.LASF494:
	.string	"dup_loc"
.LASF465:
	.string	"freefun"
.LASF379:
	.string	"NOTE_INSN_EPILOGUE_BEG"
.LASF46:
	.string	"long unsigned int"
.LASF11:
	.string	"rtx_def"
.LASF106:
	.string	"HFmode"
.LASF214:
	.string	"TRAP_IF"
.LASF549:
	.string	"regs_seen"
.LASF423:
	.string	"deaths"
.LASF635:
	.string	"recog_op_alt"
.LASF359:
	.string	"REG_EH_REGION"
.LASF496:
	.string	"n_operands"
.LASF342:
	.string	"REG_RETVAL"
.LASF118:
	.string	"CQImode"
.LASF574:
	.string	"old_operands"
.LASF53:
	.string	"char"
.LASF594:
	.string	"replace_oldest_value_reg"
.LASF116:
	.string	"XCmode"
.LASF18:
	.string	"AREG"
.LASF460:
	.string	"next_free"
.LASF63:
	.string	"_IO_buf_base"
.LASF242:
	.string	"ROTATERT"
.LASF614:
	.string	"regclass_map"
.LASF228:
	.string	"ADDRESSOF"
.LASF364:
	.string	"REG_SETJMP"
.LASF124:
	.string	"V2QImode"
.LASF525:
	.string	"oldest_regno"
.LASF463:
	.string	"alignment_mask"
.LASF102:
	.string	"PHImode"
.LASF58:
	.string	"_IO_read_end"
.LASF577:
	.string	"predicated"
.LASF456:
	.string	"obstack"
.LASF416:
	.string	"reg_info_def"
.LASF123:
	.string	"COImode"
.LASF247:
	.string	"PRE_DEC"
.LASF503:
	.string	"predicate"
.LASF55:
	.string	"_IO_FILE"
.LASF378:
	.string	"NOTE_INSN_PROLOGUE_END"
.LASF396:
	.string	"GR_HARD_FRAME_POINTER"
.LASF347:
	.string	"REG_CC_SETTER"
.LASF470:
	.string	"op_type"
.LASF154:
	.string	"MODE_RANDOM"
.LASF285:
	.string	"US_PLUS"
.LASF569:
	.string	"locI"
.LASF144:
	.string	"BLKmode"
.LASF113:
	.string	"HCmode"
.LASF590:
	.string	"orig_mode"
.LASF573:
	.string	"n_ops"
.LASF516:
	.string	"need_caller_save_reg"
.LASF219:
	.string	"CONST_STRING"
.LASF282:
	.string	"VEC_CONCAT"
.LASF303:
	.string	"size"
.LASF608:
	.string	"reg_class_names"
.LASF78:
	.string	"__pad1"
.LASF80:
	.string	"__pad3"
.LASF81:
	.string	"__pad4"
.LASF82:
	.string	"__pad5"
.LASF354:
	.string	"REG_NOALIAS"
.LASF195:
	.string	"ATTR_FLAG"
.LASF567:
	.string	"code0"
.LASF568:
	.string	"code1"
.LASF151:
	.string	"CCFPUmode"
.LASF338:
	.string	"REG_INC"
.LASF185:
	.string	"DEFINE_FUNCTION_UNIT"
.LASF68:
	.string	"_markers"
.LASF88:
	.string	"_pos"
.LASF535:
	.string	"notes"
.LASF189:
	.string	"ADDRESS"
.LASF449:
	.string	"insns"
.LASF469:
	.string	"alloc_failed"
.LASF410:
	.string	"cptr"
.LASF316:
	.string	"bitmap_head_def"
.LASF508:
	.string	"genfun"
.LASF596:
	.string	"changed"
.LASF425:
	.string	"calls_crossed"
.LASF289:
	.string	"US_TRUNCATE"
.LASF391:
	.string	"global_rtl_index"
.LASF531:
	.string	"nregs"
.LASF284:
	.string	"SS_PLUS"
.LASF246:
	.string	"UMAX"
.LASF34:
	.string	"MMX_REGS"
.LASF298:
	.string	"scale"
.LASF611:
	.string	"open_chains"
.LASF95:
	.string	"QImode"
.LASF613:
	.string	"target_flags"
.LASF435:
	.string	"data"
.LASF394:
	.string	"GR_STACK_POINTER"
.LASF586:
	.string	"build_def_use"
.LASF550:
	.string	"new_reg"
.LASF107:
	.string	"TQFmode"
.LASF321:
	.string	"head"
.LASF295:
	.string	"min_after_base"
.LASF556:
	.string	"__obj"
.LASF412:
	.string	"sched"
.LASF526:
	.string	"next_regno"
.LASF461:
	.string	"chunk_limit"
.LASF17:
	.string	"NO_REGS"
.LASF100:
	.string	"OImode"
.LASF360:
	.string	"REG_SAVE_NOTE"
.LASF547:
	.string	"all_chains"
.LASF244:
	.string	"SMAX"
.LASF403:
	.string	"GR_MAX"
.LASF281:
	.string	"VEC_SELECT"
.LASF344:
	.string	"REG_NONNEG"
.LASF162:
	.string	"MODE_VECTOR_FLOAT"
.LASF252:
	.string	"POST_MODIFY"
.LASF356:
	.string	"REG_BR_PRED"
.LASF178:
	.string	"DEFINE_PEEPHOLE"
.LASF89:
	.string	"long long unsigned int"
.LASF385:
	.string	"NOTE_INSN_RANGE_BEG"
.LASF302:
	.string	"offset"
.LASF299:
	.string	"addr_diff_vec_flags"
.LASF73:
	.string	"_cur_column"
.LASF174:
	.string	"MATCH_OP_DUP"
.LASF188:
	.string	"SEQUENCE"
.LASF534:
	.string	"kind"
.LASF467:
	.string	"use_extra_arg"
.LASF105:
	.string	"QFmode"
.LASF420:
	.string	"sets"
.LASF215:
	.string	"RESX"
.LASF448:
	.string	"dest"
.LASF203:
	.string	"PARALLEL"
.LASF13:
	.string	"num_elem"
.LASF559:
	.string	"action"
.LASF66:
	.string	"_IO_backup_base"
.LASF253:
	.string	"UNORDERED"
.LASF152:
	.string	"MAX_MACHINE_MODE"
.LASF57:
	.string	"_IO_read_ptr"
.LASF584:
	.string	"kill_clobbered_value"
.LASF612:
	.string	"closed_chains"
.LASF328:
	.string	"global_live_at_start"
.LASF40:
	.string	"FLOAT_INT_SSE_REGS"
.LASF170:
	.string	"MATCH_SCRATCH"
.LASF220:
	.string	"CONST"
.LASF634:
	.string	"which_alternative"
.LASF479:
	.string	"matched"
.LASF269:
	.string	"SQRT"
.LASF393:
	.string	"GR_CC0"
.LASF478:
	.string	"matches"
.LASF153:
	.string	"mode_class"
.LASF235:
	.string	"MULT"
.LASF582:
	.string	"set_value_regno"
.LASF158:
	.string	"MODE_CC"
.LASF326:
	.string	"local_set"
.LASF101:
	.string	"PQImode"
.LASF133:
	.string	"V8HImode"
.LASF72:
	.string	"_old_offset"
.LASF198:
	.string	"CALL_INSN"
.LASF514:
	.string	"next_chain"
.LASF223:
	.string	"SUBREG"
.LASF517:
	.string	"scan_actions"
.LASF136:
	.string	"V16QImode"
.LASF365:
	.string	"REG_ALWAYS_RETURN"
.LASF598:
	.string	"copyprop_hardreg_forward_1"
.LASF90:
	.string	"long long int"
.LASF343:
	.string	"REG_LIBCALL"
.LASF71:
	.string	"_flags2"
.LASF112:
	.string	"QCmode"
.LASF221:
	.string	"VALUE"
.LASF201:
	.string	"NOTE"
.LASF472:
	.string	"OP_OUT"
.LASF245:
	.string	"UMIN"
.LASF171:
	.string	"MATCH_DUP"
.LASF437:
	.string	"HARD_REG_ELT_TYPE"
.LASF320:
	.string	"basic_block_def"
.LASF513:
	.string	"du_chain"
.LASF523:
	.string	"mark_write"
.LASF7:
	.string	"used"
.LASF372:
	.string	"NOTE_INSN_LOOP_BEG"
.LASF442:
	.string	"bitmap_element"
.LASF119:
	.string	"CHImode"
.LASF578:
	.string	"dump_def_use_chain"
.LASF388:
	.string	"NOTE_INSN_BASIC_BLOCK"
.LASF193:
	.string	"SET_ATTR_ALTERNATIVE"
.LASF566:
	.string	"orig_op1"
.LASF38:
	.string	"FLOAT_INT_REGS"
.LASF217:
	.string	"CONST_DOUBLE"
.LASF417:
	.string	"first_uid"
.LASF148:
	.string	"CCNOmode"
.LASF129:
	.string	"V4HImode"
.LASF255:
	.string	"UNEQ"
.LASF557:
	.string	"do_replace"
.LASF238:
	.string	"ASHIFT"
.LASF243:
	.string	"SMIN"
.LASF537:
	.string	"__FUNCTION__"
.LASF230:
	.string	"IF_THEN_ELSE"
.LASF521:
	.string	"terminate_dead"
.LASF636:
	.string	"frame_pointer_needed"
.LASF495:
	.string	"dup_num"
.LASF384:
	.string	"NOTE_INSN_REPEATED_LINE_NUMBER"
.LASF466:
	.string	"extra_arg"
.LASF381:
	.string	"NOTE_INSN_FUNCTION_BEG"
.LASF43:
	.string	"unsigned int"
.LASF604:
	.string	"copyprop_hardreg_forward"
.LASF640:
	.string	"tree_node"
.LASF605:
	.string	"all_vd"
.LASF536:
	.string	"note"
.LASF294:
	.string	"max_after_vec"
.LASF256:
	.string	"UNGE"
.LASF490:
	.string	"operand_loc"
.LASF50:
	.string	"short int"
.LASF324:
	.string	"pred"
.LASF257:
	.string	"UNGT"
.LASF493:
	.string	"operand_type"
.LASF481:
	.string	"memory_ok"
.LASF440:
	.string	"prev"
.LASF74:
	.string	"_vtable_offset"
.LASF501:
	.string	"insn_gen_fn"
.LASF580:
	.string	"kill_value_regno"
.LASF93:
	.string	"VOIDmode"
.LASF366:
	.string	"REG_VTABLE_REF"
.LASF401:
	.string	"GR_VIRTUAL_OUTGOING_ARGS"
.LASF273:
	.string	"LO_SUM"
.LASF607:
	.string	"debug_value_data"
.LASF452:
	.string	"update_life_extent"
.LASF333:
	.string	"frequency"
.LASF306:
	.string	"rtwint"
.LASF447:
	.string	"succ_next"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
