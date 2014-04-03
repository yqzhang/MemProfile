	.file	"regmove.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I . -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 regmove.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.local	regmove_bb_head
	.comm	regmove_bb_head,8,8
	.type	regclass_compatible_p, @function
regclass_compatible_p:
.LFB2:
	.file 1 "regmove.c"
	.loc 1 88 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movl	%edi, -4(%rbp)	# class0, class0
	movl	%esi, -8(%rbp)	# class1, class1
	.loc 1 92 0
	movl	-4(%rbp), %eax	# class0, tmp68
	cmpl	-8(%rbp), %eax	# class1, tmp68
	je	.L2	#,
	.loc 1 90 0
	movl	-8(%rbp), %edx	# class1, class1.1
	movl	-4(%rbp), %eax	# class0, class0.2
	movl	%edx, %esi	# class1.1,
	movl	%eax, %edi	# class0.2,
	call	reg_class_subset_p	#
	testl	%eax, %eax	# D.14221
	je	.L3	#,
	.loc 1 91 0
	cmpl	$1, -4(%rbp)	#, class0
	je	.L3	#,
	.loc 1 91 0 is_stmt 0 discriminator 1
	cmpl	$2, -4(%rbp)	#, class0
	je	.L3	#,
	cmpl	$3, -4(%rbp)	#, class0
	je	.L3	#,
	cmpl	$4, -4(%rbp)	#, class0
	je	.L3	#,
	cmpl	$7, -4(%rbp)	#, class0
	je	.L3	#,
	cmpl	$5, -4(%rbp)	#, class0
	je	.L3	#,
	cmpl	$6, -4(%rbp)	#, class0
	jne	.L2	#,
.L3:
	.loc 1 92 0 is_stmt 1
	movl	-4(%rbp), %edx	# class0, class0.3
	movl	-8(%rbp), %eax	# class1, class1.4
	movl	%edx, %esi	# class0.3,
	movl	%eax, %edi	# class1.4,
	call	reg_class_subset_p	#
	testl	%eax, %eax	# D.14221
	je	.L4	#,
	.loc 1 93 0
	cmpl	$1, -8(%rbp)	#, class1
	je	.L4	#,
	.loc 1 93 0 is_stmt 0 discriminator 1
	cmpl	$2, -8(%rbp)	#, class1
	je	.L4	#,
	cmpl	$3, -8(%rbp)	#, class1
	je	.L4	#,
	cmpl	$4, -8(%rbp)	#, class1
	je	.L4	#,
	cmpl	$7, -8(%rbp)	#, class1
	je	.L4	#,
	cmpl	$5, -8(%rbp)	#, class1
	je	.L4	#,
	cmpl	$6, -8(%rbp)	#, class1
	je	.L4	#,
.L2:
	.loc 1 92 0 is_stmt 1 discriminator 1
	movl	$1, %eax	#, iftmp.0
	jmp	.L5	#
.L4:
	.loc 1 92 0 is_stmt 0 discriminator 2
	movl	$0, %eax	#, iftmp.0
.L5:
	.loc 1 94 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	regclass_compatible_p, .-regclass_compatible_p
	.type	try_auto_increment, @function
try_auto_increment:
.LFB3:
	.loc 1 105 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movq	%rdi, -40(%rbp)	# insn, insn
	movq	%rsi, -48(%rbp)	# inc_insn, inc_insn
	movq	%rdx, -56(%rbp)	# inc_insn_set, inc_insn_set
	movq	%rcx, -64(%rbp)	# reg, reg
	movq	%r8, -72(%rbp)	# increment, increment
	movl	%r9d, -76(%rbp)	# pre, pre
	.loc 1 108 0
	movq	-40(%rbp), %rax	# insn, tmp72
	movzwl	(%rax), %eax	# insn_3(D)->code, D.14222
	movzwl	%ax, %eax	# D.14222, D.14223
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.14224
	cmpb	$105, %al	#, D.14224
	jne	.L8	#,
	.loc 1 108 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# insn, tmp74
	movq	32(%rax), %rax	# insn_3(D)->fld[3].rtx, D.14225
	movzwl	(%rax), %eax	# _7->code, D.14222
	cmpw	$47, %ax	#, D.14222
	jne	.L9	#,
	.loc 1 108 0 discriminator 3
	movq	-40(%rbp), %rax	# insn, tmp75
	movq	32(%rax), %rax	# insn_3(D)->fld[3].rtx, iftmp.6
	jmp	.L11	#
.L9:
	.loc 1 108 0 discriminator 4
	movq	-40(%rbp), %rax	# insn, tmp76
	movq	32(%rax), %rdx	# insn_3(D)->fld[3].rtx, D.14225
	movq	-40(%rbp), %rax	# insn, tmp77
	movq	%rdx, %rsi	# D.14225,
	movq	%rax, %rdi	# tmp77,
	call	single_set_2	#
	jmp	.L11	#
.L8:
	.loc 1 108 0 discriminator 2
	movl	$0, %eax	#, iftmp.5
.L11:
	.loc 1 108 0 discriminator 5
	movq	%rax, -16(%rbp)	# iftmp.5, pset
	.loc 1 109 0 is_stmt 1 discriminator 5
	cmpq	$0, -16(%rbp)	#, pset
	je	.L12	#,
.LBB2:
	.loc 1 113 0
	movq	-64(%rbp), %rcx	# reg, tmp78
	movq	-16(%rbp), %rax	# pset, tmp79
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp78,
	movq	%rax, %rdi	# tmp79,
	call	find_use_as_address	#
	movq	%rax, -8(%rbp)	# tmp80, use
	.loc 1 114 0
	cmpq	$0, -8(%rbp)	#, use
	je	.L12	#,
	.loc 1 114 0 is_stmt 0 discriminator 1
	cmpq	$1, -8(%rbp)	#, use
	je	.L12	#,
.LBB3:
	.loc 1 116 0 is_stmt 1
	movq	-8(%rbp), %rax	# use, tmp81
	movzbl	2(%rax), %eax	# use_16->mode, D.14226
	movzbl	%al, %eax	# D.14226, D.14223
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.14226
	movzbl	%al, %eax	# D.14226, tmp83
	movl	%eax, -20(%rbp)	# tmp83, size
.L12:
.LBE3:
.LBE2:
	.loc 1 157 0
	movl	$0, %eax	#, D.14223
	.loc 1 158 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	try_auto_increment, .-try_auto_increment
	.type	discover_flags_reg, @function
discover_flags_reg:
.LFB4:
	.loc 1 169 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	.loc 1 171 0
	movl	word_mode(%rip), %eax	# word_mode, word_mode.9
	movl	$10000, %esi	#,
	movl	%eax, %edi	# word_mode.9,
	call	gen_rtx_REG	#
	movq	%rax, -8(%rbp)	# tmp78, tmp
	.loc 1 172 0
	movl	$2, %esi	#,
	movl	$0, %edi	#,
	call	gen_rtx_CONST_INT	#
	movq	%rax, %rdx	#, D.14228
	movq	-8(%rbp), %rcx	# tmp, tmp79
	movq	-8(%rbp), %rax	# tmp, tmp80
	movq	%rcx, %rsi	# tmp79,
	movq	%rax, %rdi	# tmp80,
	call	gen_add3_insn	#
	movq	%rax, -8(%rbp)	# tmp81, tmp
	.loc 1 176 0
	movq	-8(%rbp), %rax	# tmp, tmp82
	movzwl	(%rax), %eax	# tmp_7->code, D.14229
	cmpw	$47, %ax	#, D.14229
	jne	.L15	#,
	.loc 1 177 0
	movl	$0, %eax	#, D.14227
	jmp	.L16	#
.L15:
	.loc 1 178 0
	movq	-8(%rbp), %rax	# tmp, tmp83
	movzwl	(%rax), %eax	# tmp_7->code, D.14229
	cmpw	$39, %ax	#, D.14229
	jne	.L17	#,
.LBB4:
	.loc 1 182 0
	movq	-8(%rbp), %rax	# tmp, tmp84
	movq	8(%rax), %rax	# tmp_7->fld[0].rtvec, D.14230
	movl	(%rax), %eax	# _11->num_elem, D.14231
	cmpl	$2, %eax	#, D.14231
	je	.L18	#,
	.loc 1 183 0
	movq	global_rtl(%rip), %rax	# global_rtl, D.14227
	jmp	.L16	#
.L18:
	.loc 1 184 0
	movq	-8(%rbp), %rax	# tmp, tmp85
	movq	8(%rax), %rax	# tmp_7->fld[0].rtvec, D.14230
	movq	16(%rax), %rax	# _14->elem, tmp86
	movq	%rax, -8(%rbp)	# tmp86, tmp
	.loc 1 185 0
	movq	-8(%rbp), %rax	# tmp, tmp87
	movzwl	(%rax), %eax	# tmp_15->code, D.14229
	cmpw	$49, %ax	#, D.14229
	je	.L19	#,
	.loc 1 186 0
	movq	global_rtl(%rip), %rax	# global_rtl, D.14227
	jmp	.L16	#
.L19:
	.loc 1 187 0
	movq	-8(%rbp), %rax	# tmp, tmp88
	movq	8(%rax), %rax	# tmp_15->fld[0].rtx, tmp89
	movq	%rax, -8(%rbp)	# tmp89, tmp
	.loc 1 192 0
	movq	-8(%rbp), %rax	# tmp, tmp90
	movzwl	(%rax), %eax	# tmp_18->code, D.14229
	cmpw	$63, %ax	#, D.14229
	jne	.L20	#,
	.loc 1 193 0
	movq	-8(%rbp), %rax	# tmp, tmp91
	movq	8(%rax), %rax	# tmp_18->fld[0].rtx, D.14228
	movzwl	(%rax), %eax	# _20->code, D.14229
	cmpw	$61, %ax	#, D.14229
	jne	.L20	#,
	.loc 1 194 0
	movq	-8(%rbp), %rax	# tmp, tmp92
	movq	8(%rax), %rax	# tmp_18->fld[0].rtx, D.14228
	movl	8(%rax), %eax	# _22->fld[0].rtuint, D.14232
	cmpl	$52, %eax	#, D.14232
	ja	.L20	#,
	.loc 1 195 0
	movq	global_rtl(%rip), %rax	# global_rtl, D.14227
	jmp	.L16	#
.L20:
	.loc 1 196 0
	movq	-8(%rbp), %rax	# tmp, tmp93
	movzwl	(%rax), %eax	# tmp_18->code, D.14229
	cmpw	$61, %ax	#, D.14229
	jne	.L21	#,
	.loc 1 196 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# tmp, tmp94
	movl	8(%rax), %eax	# tmp_18->fld[0].rtuint, D.14232
	cmpl	$52, %eax	#, D.14232
	ja	.L21	#,
	.loc 1 196 0 discriminator 3
	movl	$1, %eax	#, iftmp.10
	jmp	.L22	#
.L21:
	.loc 1 196 0 discriminator 2
	movl	$0, %eax	#, iftmp.10
.L22:
	.loc 1 196 0 discriminator 4
	movl	%eax, -12(%rbp)	# iftmp.10, found
	.loc 1 198 0 is_stmt 1 discriminator 4
	cmpl	$0, -12(%rbp)	#, found
	je	.L23	#,
	.loc 1 198 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# tmp, iftmp.11
	jmp	.L24	#
.L23:
	.loc 1 198 0 discriminator 2
	movl	$0, %eax	#, iftmp.11
.L24:
	.loc 1 198 0 discriminator 3
	jmp	.L16	#
.L17:
.LBE4:
	.loc 1 201 0 is_stmt 1
	movq	global_rtl(%rip), %rax	# global_rtl, D.14227
.L16:
	.loc 1 202 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	discover_flags_reg, .-discover_flags_reg
	.local	flags_set_1_rtx
	.comm	flags_set_1_rtx,8,8
	.local	flags_set_1_set
	.comm	flags_set_1_set,4,4
	.type	mark_flags_life_zones, @function
mark_flags_life_zones:
.LFB5:
	.loc 1 223 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$72, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -72(%rbp)	# flags, flags
	.loc 1 238 0
	cmpq	$0, -72(%rbp)	#, flags
	je	.L26	#,
	.loc 1 238 0 is_stmt 0 discriminator 1
	movq	global_rtl(%rip), %rax	# global_rtl, D.14233
	cmpq	-72(%rbp), %rax	# flags, D.14233
	jne	.L27	#,
.L26:
.LBB5:
	.loc 1 240 0 is_stmt 1
	cmpq	$0, -72(%rbp)	#, flags
	je	.L28	#,
	.loc 1 240 0 is_stmt 0 discriminator 1
	movl	$3, %eax	#, iftmp.12
	jmp	.L29	#
.L28:
	.loc 1 240 0 discriminator 2
	movl	$0, %eax	#, iftmp.12
.L29:
	.loc 1 240 0 discriminator 3
	movl	%eax, -44(%rbp)	# iftmp.12, mode
	.loc 1 242 0 is_stmt 1 discriminator 3
	call	get_insns	#
	movq	%rax, -40(%rbp)	# tmp112, insn
	jmp	.L30	#
.L31:
	.loc 1 243 0 discriminator 2
	movl	-44(%rbp), %eax	# mode, tmp113
	movl	%eax, %edx	# tmp113, D.14235
	movq	-40(%rbp), %rax	# insn, tmp114
	movb	%dl, 2(%rax)	# D.14235, insn_2->mode
	.loc 1 242 0 discriminator 2
	movq	-40(%rbp), %rax	# insn, tmp115
	movq	24(%rax), %rax	# insn_2->fld[2].rtx, tmp116
	movq	%rax, -40(%rbp)	# tmp116, insn
.L30:
	.loc 1 242 0 is_stmt 0 discriminator 1
	cmpq	$0, -40(%rbp)	#, insn
	jne	.L31	#,
	.loc 1 244 0 is_stmt 1
	jmp	.L25	#
.L27:
.LBE5:
	.loc 1 251 0
	movq	-72(%rbp), %rax	# flags, tmp117
	movl	8(%rax), %eax	# flags_21(D)->fld[0].rtuint, D.14234
	movl	%eax, -52(%rbp)	# D.14234, flags_regno
	.loc 1 252 0
	cmpl	$7, -52(%rbp)	#, flags_regno
	jle	.L33	#,
	.loc 1 252 0 is_stmt 0 discriminator 1
	cmpl	$15, -52(%rbp)	#, flags_regno
	jle	.L34	#,
.L33:
	.loc 1 252 0 discriminator 2
	cmpl	$20, -52(%rbp)	#, flags_regno
	jle	.L35	#,
	.loc 1 252 0 discriminator 1
	cmpl	$28, -52(%rbp)	#, flags_regno
	jle	.L34	#,
.L35:
	.loc 1 252 0 discriminator 2
	cmpl	$44, -52(%rbp)	#, flags_regno
	jle	.L36	#,
	.loc 1 252 0 discriminator 1
	cmpl	$52, -52(%rbp)	#, flags_regno
	jle	.L34	#,
.L36:
	.loc 1 252 0 discriminator 2
	cmpl	$28, -52(%rbp)	#, flags_regno
	jle	.L37	#,
	.loc 1 252 0 discriminator 1
	cmpl	$36, -52(%rbp)	#, flags_regno
	jg	.L37	#,
.L34:
	movq	-72(%rbp), %rax	# flags, tmp118
	movzbl	2(%rax), %eax	# flags_21(D)->mode, D.14235
	movzbl	%al, %eax	# D.14235, D.14236
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.14237
	cmpl	$5, %eax	#, D.14237
	je	.L38	#,
	.loc 1 252 0 discriminator 2
	movq	-72(%rbp), %rax	# flags, tmp120
	movzbl	2(%rax), %eax	# flags_21(D)->mode, D.14235
	movzbl	%al, %eax	# D.14235, D.14236
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.14237
	cmpl	$6, %eax	#, D.14237
	jne	.L39	#,
.L38:
	.loc 1 252 0 discriminator 1
	movl	$2, %eax	#, iftmp.14
	jmp	.L40	#
.L39:
	movl	$1, %eax	#, iftmp.14
.L40:
	.loc 1 252 0 discriminator 3
	jmp	.L41	#
.L37:
	.loc 1 252 0 discriminator 2
	movq	-72(%rbp), %rax	# flags, tmp122
	movzbl	2(%rax), %eax	# flags_21(D)->mode, D.14235
	cmpb	$18, %al	#, D.14235
	jne	.L42	#,
	.loc 1 252 0 discriminator 1
	movl	target_flags(%rip), %eax	# target_flags, target_flags.17
	andl	$33554432, %eax	#, D.14236
	testl	%eax, %eax	# D.14236
	je	.L43	#,
	movl	$2, %eax	#, iftmp.16
	jmp	.L41	#
.L43:
	.loc 1 252 0 discriminator 2
	movl	$3, %eax	#, iftmp.16
	jmp	.L41	#
.L42:
	movq	-72(%rbp), %rax	# flags, tmp123
	movzbl	2(%rax), %eax	# flags_21(D)->mode, D.14235
	cmpb	$24, %al	#, D.14235
	jne	.L46	#,
	.loc 1 252 0 discriminator 1
	movl	target_flags(%rip), %eax	# target_flags, target_flags.20
	andl	$33554432, %eax	#, D.14236
	testl	%eax, %eax	# D.14236
	je	.L47	#,
	movl	$4, %eax	#, iftmp.19
	jmp	.L41	#
.L47:
	.loc 1 252 0 discriminator 2
	movl	$6, %eax	#, iftmp.19
	jmp	.L41	#
.L46:
	movq	-72(%rbp), %rax	# flags, tmp124
	movzbl	2(%rax), %eax	# flags_21(D)->mode, D.14235
	movzbl	%al, %eax	# D.14235, D.14236
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.14235
	movzbl	%al, %edx	# D.14235, D.14236
	movl	target_flags(%rip), %eax	# target_flags, target_flags.22
	andl	$33554432, %eax	#, D.14236
	testl	%eax, %eax	# D.14236
	je	.L50	#,
	.loc 1 252 0 discriminator 1
	movl	$8, %eax	#, iftmp.21
	jmp	.L51	#
.L50:
	.loc 1 252 0 discriminator 2
	movl	$4, %eax	#, iftmp.21
.L51:
	.loc 1 252 0 discriminator 3
	addl	%edx, %eax	# D.14236, D.14236
	subl	$1, %eax	#, D.14236
	movl	target_flags(%rip), %edx	# target_flags, target_flags.24
	andl	$33554432, %edx	#, D.14236
	testl	%edx, %edx	# D.14236
	je	.L52	#,
	.loc 1 252 0 discriminator 1
	movl	$8, %ebx	#, iftmp.23
	jmp	.L53	#
.L52:
	.loc 1 252 0 discriminator 2
	movl	$4, %ebx	#, iftmp.23
.L53:
	.loc 1 252 0 discriminator 3
	cltd
	idivl	%ebx	# iftmp.23
.L41:
	movl	%eax, -48(%rbp)	# iftmp.13, flags_nregs
	.loc 1 254 0 is_stmt 1 discriminator 3
	movq	-72(%rbp), %rax	# flags, tmp128
	movq	%rax, flags_set_1_rtx(%rip)	# tmp128, flags_set_1_rtx
	.loc 1 257 0 discriminator 3
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.25
	subl	$1, %eax	#, tmp129
	movl	%eax, -64(%rbp)	# tmp129, block
	jmp	.L54	#
.L68:
.LBB6:
	.loc 1 262 0
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.26
	movl	-64(%rbp), %edx	# block, tmp131
	movslq	%edx, %rdx	# tmp131, tmp130
	addq	$4, %rdx	#, tmp132
	movq	(%rax,%rdx,8), %rax	# basic_block_info.26_66->data.bb, D.14238
	movq	(%rax), %rax	# _67->head, tmp133
	movq	%rax, -32(%rbp)	# tmp133, insn
	.loc 1 263 0
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.27
	movl	-64(%rbp), %edx	# block, tmp135
	movslq	%edx, %rdx	# tmp135, tmp134
	addq	$4, %rdx	#, tmp136
	movq	(%rax,%rdx,8), %rax	# basic_block_info.27_69->data.bb, D.14238
	movq	8(%rax), %rax	# _70->end, tmp137
	movq	%rax, -24(%rbp)	# tmp137, end
	.loc 1 267 0
	movl	$0, -60(%rbp)	#, live
.LBB7:
	.loc 1 271 0
	movl	$0, -56(%rbp)	#, i
	jmp	.L55	#
.L56:
	.loc 1 272 0 discriminator 2
	movl	-56(%rbp), %eax	# i, tmp138
	movl	-52(%rbp), %edx	# flags_regno, tmp139
	addl	%eax, %edx	# tmp138, D.14236
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.28
	movl	-64(%rbp), %ecx	# block, tmp141
	movslq	%ecx, %rcx	# tmp141, tmp140
	addq	$4, %rcx	#, tmp142
	movq	(%rax,%rcx,8), %rax	# basic_block_info.28_75->data.bb, D.14238
	movq	64(%rax), %rax	# _76->global_live_at_start, D.14239
	movl	%edx, %esi	# D.14236,
	movq	%rax, %rdi	# D.14239,
	call	bitmap_bit_p	#
	orl	%eax, -60(%rbp)	# D.14236, live
	.loc 1 271 0 discriminator 2
	addl	$1, -56(%rbp)	#, i
.L55:
	.loc 1 271 0 is_stmt 0 discriminator 1
	movl	-56(%rbp), %eax	# i, tmp143
	cmpl	-48(%rbp), %eax	# flags_nregs, tmp143
	jl	.L56	#,
.L67:
.LBE7:
	.loc 1 283 0 is_stmt 1
	movq	-32(%rbp), %rax	# insn, tmp144
	movzwl	(%rax), %eax	# insn_3->code, D.14240
	movzwl	%ax, %eax	# D.14240, D.14236
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.14241
	cmpb	$105, %al	#, D.14241
	jne	.L57	#,
	.loc 1 292 0
	cmpl	$0, -60(%rbp)	#, live
	je	.L58	#,
	.loc 1 292 0 is_stmt 0 discriminator 1
	movl	-52(%rbp), %edx	# flags_regno, flags_regno.29
	movq	-32(%rbp), %rax	# insn, tmp146
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp146,
	call	find_regno_note	#
	testq	%rax, %rax	# D.14233
	je	.L58	#,
	.loc 1 293 0 is_stmt 1
	movl	$0, -60(%rbp)	#, live
.L58:
	.loc 1 295 0
	cmpl	$0, -60(%rbp)	#, live
	je	.L59	#,
	.loc 1 295 0 is_stmt 0 discriminator 1
	movl	$3, %eax	#, iftmp.30
	jmp	.L60	#
.L59:
	.loc 1 295 0 discriminator 2
	movl	$0, %eax	#, iftmp.30
.L60:
	.loc 1 295 0 discriminator 3
	movq	-32(%rbp), %rdx	# insn, tmp147
	movb	%al, 2(%rdx)	# iftmp.30, insn_3->mode
	.loc 1 299 0 is_stmt 1 discriminator 3
	movl	$0, flags_set_1_set(%rip)	#, flags_set_1_set
	.loc 1 300 0 discriminator 3
	movq	-32(%rbp), %rax	# insn, tmp148
	movq	32(%rax), %rax	# insn_3->fld[3].rtx, D.14233
	movl	$0, %edx	#,
	movl	$flags_set_1, %esi	#,
	movq	%rax, %rdi	# D.14233,
	call	note_stores	#
	.loc 1 301 0 discriminator 3
	movl	flags_set_1_set(%rip), %eax	# flags_set_1_set, flags_set_1_set.31
	testl	%eax, %eax	# flags_set_1_set.31
	je	.L62	#,
	.loc 1 303 0
	movl	$1, -60(%rbp)	#, live
	.loc 1 304 0
	movq	-32(%rbp), %rax	# insn, tmp149
	movb	$2, 2(%rax)	#, insn_3->mode
	jmp	.L62	#
.L57:
	.loc 1 308 0
	cmpl	$0, -60(%rbp)	#, live
	je	.L63	#,
	.loc 1 308 0 is_stmt 0 discriminator 1
	movl	$3, %eax	#, iftmp.32
	jmp	.L64	#
.L63:
	.loc 1 308 0 discriminator 2
	movl	$0, %eax	#, iftmp.32
.L64:
	.loc 1 308 0 discriminator 3
	movq	-32(%rbp), %rdx	# insn, tmp150
	movb	%al, 2(%rdx)	# iftmp.32, insn_3->mode
.L62:
	.loc 1 310 0 is_stmt 1
	movq	-32(%rbp), %rax	# insn, tmp151
	cmpq	-24(%rbp), %rax	# end, tmp151
	jne	.L65	#,
	.loc 1 311 0
	nop
.LBE6:
	.loc 1 257 0
	subl	$1, -64(%rbp)	#, block
	jmp	.L54	#
.L65:
.LBB8:
	.loc 1 312 0
	movq	-32(%rbp), %rax	# insn, tmp152
	movq	24(%rax), %rax	# insn_3->fld[2].rtx, tmp153
	movq	%rax, -32(%rbp)	# tmp153, insn
	.loc 1 313 0
	jmp	.L67	#
.L54:
.LBE8:
	.loc 1 257 0 discriminator 1
	cmpl	$0, -64(%rbp)	#, block
	jns	.L68	#,
.L25:
	.loc 1 315 0
	addq	$72, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	mark_flags_life_zones, .-mark_flags_life_zones
	.type	flags_set_1, @function
flags_set_1:
.LFB6:
	.loc 1 323 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -8(%rbp)	# x, x
	movq	%rsi, -16(%rbp)	# pat, pat
	movq	%rdx, -24(%rbp)	# data, data
	.loc 1 324 0
	movq	-16(%rbp), %rax	# pat, tmp62
	movzwl	(%rax), %eax	# pat_1(D)->code, D.14242
	cmpw	$47, %ax	#, D.14242
	jne	.L69	#,
	.loc 1 325 0
	movq	flags_set_1_rtx(%rip), %rdx	# flags_set_1_rtx, flags_set_1_rtx.33
	movq	-8(%rbp), %rax	# x, tmp63
	movq	%rdx, %rsi	# flags_set_1_rtx.33,
	movq	%rax, %rdi	# tmp63,
	call	reg_overlap_mentioned_p	#
	testl	%eax, %eax	# D.14243
	je	.L69	#,
	.loc 1 326 0
	movl	$1, flags_set_1_set(%rip)	#, flags_set_1_set
.L69:
	.loc 1 327 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	flags_set_1, .-flags_set_1
	.local	regno_src_regno
	.comm	regno_src_regno,8,8
	.type	replacement_quality, @function
replacement_quality:
.LFB7:
	.loc 1 339 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# reg, reg
	.loc 1 343 0
	movq	-24(%rbp), %rax	# reg, tmp71
	movzwl	(%rax), %eax	# reg_2(D)->code, D.14245
	cmpw	$61, %ax	#, D.14245
	je	.L72	#,
	.loc 1 344 0
	movl	$0, %eax	#, D.14244
	jmp	.L73	#
.L72:
	.loc 1 348 0
	movq	reg_n_info(%rip), %rax	# reg_n_info, reg_n_info.34
	movq	-24(%rbp), %rdx	# reg, tmp72
	movl	8(%rdx), %edx	# reg_2(D)->fld[0].rtuint, D.14246
	movl	%edx, %edx	# D.14246, tmp73
	addq	$4, %rdx	#, tmp74
	movq	(%rax,%rdx,8), %rax	# reg_n_info.34_5->data.reg, D.14247
	movl	28(%rax), %eax	# _7->live_length, D.14244
	testl	%eax, %eax	# D.14244
	jns	.L74	#,
	.loc 1 349 0
	movl	$0, %eax	#, D.14244
	jmp	.L73	#
.L74:
	.loc 1 351 0
	movq	regno_src_regno(%rip), %rdx	# regno_src_regno, regno_src_regno.35
	movq	-24(%rbp), %rax	# reg, tmp75
	movl	8(%rax), %eax	# reg_2(D)->fld[0].rtuint, D.14246
	movl	%eax, %eax	# D.14246, D.14248
	salq	$2, %rax	#, D.14248
	addq	%rdx, %rax	# regno_src_regno.35, D.14249
	movl	(%rax), %eax	# *_14, tmp76
	movl	%eax, -4(%rbp)	# tmp76, src_regno
	.loc 1 354 0
	cmpl	$0, -4(%rbp)	#, src_regno
	jns	.L75	#,
	.loc 1 355 0
	movl	$3, %eax	#, D.14244
	jmp	.L73	#
.L75:
	.loc 1 358 0
	cmpl	$52, -4(%rbp)	#, src_regno
	jg	.L76	#,
	.loc 1 359 0
	movl	$1, %eax	#, D.14244
	jmp	.L73	#
.L76:
	.loc 1 364 0
	movl	$2, %eax	#, D.14244
.L73:
	.loc 1 365 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	replacement_quality, .-replacement_quality
	.type	perhaps_ends_bb_p, @function
perhaps_ends_bb_p:
.LFB8:
	.loc 1 371 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# insn, insn
	.loc 1 372 0
	movq	-8(%rbp), %rax	# insn, tmp66
	movzwl	(%rax), %eax	# insn_2(D)->code, D.14251
	movzwl	%ax, %eax	# D.14251, D.14252
	cmpl	$34, %eax	#, D.14252
	je	.L79	#,
	cmpl	$36, %eax	#, D.14252
	je	.L80	#,
	cmpl	$33, %eax	#, D.14252
	jne	.L78	#,
.L80:
	.loc 1 377 0
	movl	$1, %eax	#, D.14250
	jmp	.L81	#
.L79:
	.loc 1 383 0
	movq	cfun(%rip), %rax	# cfun, cfun.36
	movq	176(%rax), %rax	# cfun.36_6->x_nonlocal_goto_handler_labels, D.14253
	testq	%rax, %rax	# D.14253
	je	.L78	#,
	.loc 1 384 0
	movl	$1, %eax	#, D.14250
	jmp	.L81	#
.L78:
	.loc 1 387 0
	movq	-8(%rbp), %rax	# insn, tmp67
	movq	%rax, %rdi	# tmp67,
	call	can_throw_internal	#
	movzbl	%al, %eax	# D.14254, D.14250
.L81:
	.loc 1 389 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	perhaps_ends_bb_p, .-perhaps_ends_bb_p
	.type	optimize_reg_copy_1, @function
optimize_reg_copy_1:
.LFB9:
	.loc 1 407 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$96, %rsp	#,
	movq	%rdi, -72(%rbp)	# insn, insn
	movq	%rsi, -80(%rbp)	# dest, dest
	movq	%rdx, -88(%rbp)	# src, src
	.loc 1 410 0
	movq	$0, -16(%rbp)	#, dest_death
	.loc 1 411 0
	movq	-88(%rbp), %rax	# src, tmp131
	movl	8(%rax), %eax	# src_18(D)->fld[0].rtuint, D.14256
	movl	%eax, -40(%rbp)	# D.14256, sregno
	.loc 1 412 0
	movq	-80(%rbp), %rax	# dest, tmp132
	movl	8(%rax), %eax	# dest_21(D)->fld[0].rtuint, D.14256
	movl	%eax, -36(%rbp)	# D.14256, dregno
	.loc 1 415 0
	movl	-40(%rbp), %eax	# sregno, tmp133
	cmpl	-36(%rbp), %eax	# dregno, tmp133
	je	.L83	#,
	.loc 1 416 0
	cmpl	$52, -40(%rbp)	#, sregno
	jle	.L83	#,
	.loc 1 417 0
	cmpl	$52, -36(%rbp)	#, dregno
	jle	.L83	#,
	.loc 1 421 0
	cmpl	$7, -40(%rbp)	#, sregno
	je	.L83	#,
	.loc 1 421 0 is_stmt 0 discriminator 1
	cmpl	$7, -36(%rbp)	#, dregno
	jne	.L84	#,
.L83:
	.loc 1 422 0 is_stmt 1
	movl	$0, %eax	#, D.14255
	jmp	.L85	#
.L84:
	.loc 1 424 0
	movq	-72(%rbp), %rax	# insn, tmp134
	movq	24(%rax), %rax	# insn_24(D)->fld[2].rtx, tmp135
	movq	%rax, -32(%rbp)	# tmp135, p
	jmp	.L86	#
.L109:
	.loc 1 428 0
	movq	-32(%rbp), %rax	# p, tmp136
	movq	%rax, %rdi	# tmp136,
	call	perhaps_ends_bb_p	#
	testl	%eax, %eax	# D.14255
	je	.L87	#,
	.loc 1 429 0
	jmp	.L88	#
.L87:
	.loc 1 430 0
	movq	-32(%rbp), %rax	# p, tmp137
	movzwl	(%rax), %eax	# p_1->code, D.14257
	movzwl	%ax, %eax	# D.14257, D.14255
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.14258
	cmpb	$105, %al	#, D.14258
	je	.L89	#,
	.loc 1 431 0
	jmp	.L90	#
.L89:
	.loc 1 433 0
	movq	-32(%rbp), %rdx	# p, tmp139
	movq	-88(%rbp), %rax	# src, tmp140
	movq	%rdx, %rsi	# tmp139,
	movq	%rax, %rdi	# tmp140,
	call	reg_set_p	#
	testl	%eax, %eax	# D.14255
	jne	.L88	#,
	.loc 1 433 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rdx	# p, tmp141
	movq	-80(%rbp), %rax	# dest, tmp142
	movq	%rdx, %rsi	# tmp141,
	movq	%rax, %rdi	# tmp142,
	call	reg_set_p	#
	testl	%eax, %eax	# D.14255
	jne	.L88	#,
	.loc 1 435 0 is_stmt 1
	movq	-32(%rbp), %rax	# p, tmp143
	movq	32(%rax), %rax	# p_1->fld[3].rtx, D.14259
	movzwl	(%rax), %eax	# _32->code, D.14257
	cmpw	$48, %ax	#, D.14257
	jne	.L91	#,
	.loc 1 436 0
	movq	-32(%rbp), %rax	# p, tmp144
	movq	32(%rax), %rax	# p_1->fld[3].rtx, D.14259
	movq	8(%rax), %rdx	# _34->fld[0].rtx, D.14259
	movq	-88(%rbp), %rax	# src, tmp145
	movq	%rdx, %rsi	# D.14259,
	movq	%rax, %rdi	# tmp145,
	call	reg_overlap_mentioned_p	#
	testl	%eax, %eax	# D.14255
	jne	.L88	#,
.L91:
	.loc 1 441 0
	movl	-40(%rbp), %edx	# sregno, sregno.37
	movq	-32(%rbp), %rax	# p, tmp146
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp146,
	call	find_regno_note	#
	movq	%rax, -8(%rbp)	# tmp147, note
	cmpq	$0, -8(%rbp)	#, note
	je	.L92	#,
	.loc 1 442 0
	movq	-8(%rbp), %rax	# note, tmp148
	movq	8(%rax), %rax	# note_38->fld[0].rtx, D.14259
	movzbl	2(%rax), %edx	# _39->mode, D.14260
	movq	-88(%rbp), %rax	# src, tmp149
	movzbl	2(%rax), %eax	# src_18(D)->mode, D.14260
	cmpb	%al, %dl	# D.14260, D.14260
	jne	.L92	#,
.LBB9:
	.loc 1 444 0
	movl	$0, -60(%rbp)	#, failed
	.loc 1 445 0
	movl	$0, -56(%rbp)	#, d_length
	.loc 1 446 0
	movl	$0, -52(%rbp)	#, s_length
	.loc 1 447 0
	movl	$0, -48(%rbp)	#, d_n_calls
	.loc 1 448 0
	movl	$0, -44(%rbp)	#, s_n_calls
	.loc 1 456 0
	movq	-72(%rbp), %rax	# insn, tmp150
	movq	%rax, %rdi	# tmp150,
	call	next_real_insn	#
	movq	%rax, -24(%rbp)	# tmp151, q
	jmp	.L93	#
.L102:
	.loc 1 460 0
	movq	-24(%rbp), %rax	# q, tmp152
	movq	32(%rax), %rdx	# q_2->fld[3].rtx, D.14259
	movq	-88(%rbp), %rax	# src, tmp153
	movq	%rdx, %rsi	# D.14259,
	movq	%rax, %rdi	# tmp153,
	call	reg_overlap_mentioned_p	#
	testl	%eax, %eax	# D.14255
	je	.L94	#,
	.loc 1 467 0
	cmpl	$52, -40(%rbp)	#, sregno
	jg	.L95	#,
	.loc 1 468 0
	movq	-24(%rbp), %rax	# q, tmp154
	movq	32(%rax), %rdx	# q_2->fld[3].rtx, D.14259
	movq	-80(%rbp), %rax	# dest, tmp155
	movq	%rdx, %rsi	# D.14259,
	movq	%rax, %rdi	# tmp155,
	call	reg_mentioned_p	#
	testl	%eax, %eax	# D.14255
	je	.L95	#,
	.loc 1 469 0
	movl	$1, -60(%rbp)	#, failed
	jmp	.L94	#
.L95:
	.loc 1 473 0
	movq	-24(%rbp), %rdx	# q, tmp156
	movq	-80(%rbp), %rcx	# dest, tmp157
	movq	-88(%rbp), %rax	# src, tmp158
	movq	%rcx, %rsi	# tmp157,
	movq	%rax, %rdi	# tmp158,
	call	validate_replace_rtx	#
	testl	%eax, %eax	# D.14255
	je	.L96	#,
	.loc 1 474 0
	cmpl	$52, -40(%rbp)	#, sregno
	jg	.L97	#,
	.loc 1 475 0
	movq	-24(%rbp), %rax	# q, tmp159
	movq	32(%rax), %rdx	# q_2->fld[3].rtx, D.14259
	movq	-88(%rbp), %rax	# src, tmp160
	movq	%rdx, %rsi	# D.14259,
	movq	%rax, %rdi	# tmp160,
	call	reg_overlap_mentioned_p	#
	testl	%eax, %eax	# D.14255
	jne	.L96	#,
.L97:
	.loc 1 473 0
	jmp	.L94	#
.L96:
	.loc 1 480 0
	movq	-24(%rbp), %rdx	# q, tmp161
	movq	-88(%rbp), %rcx	# src, tmp162
	movq	-80(%rbp), %rax	# dest, tmp163
	movq	%rcx, %rsi	# tmp162,
	movq	%rax, %rdi	# tmp163,
	call	validate_replace_rtx	#
	.loc 1 481 0
	movl	$1, -60(%rbp)	#, failed
.L94:
	.loc 1 488 0
	addl	$1, -52(%rbp)	#, s_length
	.loc 1 489 0
	cmpq	$0, -16(%rbp)	#, dest_death
	je	.L98	#,
	.loc 1 490 0
	addl	$1, -56(%rbp)	#, d_length
.L98:
	.loc 1 494 0
	movq	-24(%rbp), %rax	# q, tmp164
	cmpq	-32(%rbp), %rax	# p, tmp164
	je	.L99	#,
	.loc 1 494 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# q, tmp165
	movzwl	(%rax), %eax	# q_2->code, D.14257
	cmpw	$34, %ax	#, D.14257
	jne	.L99	#,
	.loc 1 498 0 is_stmt 1
	addl	$1, -44(%rbp)	#, s_n_calls
	.loc 1 499 0
	cmpq	$0, -16(%rbp)	#, dest_death
	je	.L99	#,
	.loc 1 500 0
	addl	$1, -48(%rbp)	#, d_n_calls
.L99:
	.loc 1 506 0
	cmpq	$0, -16(%rbp)	#, dest_death
	jne	.L100	#,
	.loc 1 507 0
	movl	-36(%rbp), %edx	# dregno, dregno.38
	movq	-24(%rbp), %rax	# q, tmp166
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp166,
	call	find_regno_note	#
	movq	%rax, -16(%rbp)	# tmp167, dest_death
	cmpq	$0, -16(%rbp)	#, dest_death
	je	.L100	#,
	.loc 1 509 0
	movq	-16(%rbp), %rax	# dest_death, tmp168
	movq	8(%rax), %rax	# dest_death_64->fld[0].rtx, D.14259
	movzbl	2(%rax), %edx	# _65->mode, D.14260
	movq	-80(%rbp), %rax	# dest, tmp169
	movzbl	2(%rax), %eax	# dest_21(D)->mode, D.14260
	cmpb	%al, %dl	# D.14260, D.14260
	je	.L101	#,
	.loc 1 510 0
	movl	$1, -60(%rbp)	#, failed
	movq	$0, -16(%rbp)	#, dest_death
	jmp	.L100	#
.L101:
	.loc 1 512 0
	movq	-16(%rbp), %rdx	# dest_death, tmp170
	movq	-24(%rbp), %rax	# q, tmp171
	movq	%rdx, %rsi	# tmp170,
	movq	%rax, %rdi	# tmp171,
	call	remove_note	#
.L100:
	.loc 1 458 0
	movq	-24(%rbp), %rax	# q, tmp172
	movq	%rax, %rdi	# tmp172,
	call	next_real_insn	#
	movq	%rax, -24(%rbp)	# tmp173, q
.L93:
	.loc 1 457 0 discriminator 1
	movq	-32(%rbp), %rax	# p, tmp174
	movq	%rax, %rdi	# tmp174,
	call	next_real_insn	#
	.loc 1 456 0 discriminator 1
	cmpq	-24(%rbp), %rax	# q, D.14259
	jne	.L102	#,
	.loc 1 516 0
	cmpl	$0, -60(%rbp)	#, failed
	jne	.L103	#,
	.loc 1 520 0
	cmpl	$52, -40(%rbp)	#, sregno
	jle	.L104	#,
	.loc 1 522 0
	movq	reg_n_info(%rip), %rax	# reg_n_info, reg_n_info.39
	movl	-40(%rbp), %edx	# sregno, tmp176
	movslq	%edx, %rdx	# tmp176, tmp175
	addq	$4, %rdx	#, tmp177
	movq	(%rax,%rdx,8), %rax	# reg_n_info.39_71->data.reg, D.14261
	movl	28(%rax), %eax	# _72->live_length, D.14255
	testl	%eax, %eax	# D.14255
	js	.L105	#,
	.loc 1 524 0
	movq	reg_n_info(%rip), %rax	# reg_n_info, reg_n_info.40
	movl	-40(%rbp), %edx	# sregno, tmp179
	movslq	%edx, %rdx	# tmp179, tmp178
	addq	$4, %rdx	#, tmp180
	movq	(%rax,%rdx,8), %rax	# reg_n_info.40_74->data.reg, D.14261
	movq	reg_n_info(%rip), %rdx	# reg_n_info, reg_n_info.41
	movl	-40(%rbp), %ecx	# sregno, tmp182
	movslq	%ecx, %rcx	# tmp182, tmp181
	addq	$4, %rcx	#, tmp183
	movq	(%rdx,%rcx,8), %rdx	# reg_n_info.41_76->data.reg, D.14261
	movl	28(%rdx), %edx	# _77->live_length, D.14255
	subl	-52(%rbp), %edx	# s_length, D.14255
	movl	%edx, 28(%rax)	# D.14255, _75->live_length
	.loc 1 528 0
	movq	reg_n_info(%rip), %rax	# reg_n_info, reg_n_info.42
	movl	-40(%rbp), %edx	# sregno, tmp185
	movslq	%edx, %rdx	# tmp185, tmp184
	addq	$4, %rdx	#, tmp186
	movq	(%rax,%rdx,8), %rax	# reg_n_info.42_80->data.reg, D.14261
	movl	28(%rax), %eax	# _81->live_length, D.14255
	cmpl	$1, %eax	#, D.14255
	jg	.L105	#,
	.loc 1 529 0
	movq	reg_n_info(%rip), %rax	# reg_n_info, reg_n_info.43
	movl	-40(%rbp), %edx	# sregno, tmp188
	movslq	%edx, %rdx	# tmp188, tmp187
	addq	$4, %rdx	#, tmp189
	movq	(%rax,%rdx,8), %rax	# reg_n_info.43_83->data.reg, D.14261
	movl	$2, 28(%rax)	#, _84->live_length
.L105:
	.loc 1 532 0
	movq	reg_n_info(%rip), %rax	# reg_n_info, reg_n_info.44
	movl	-40(%rbp), %edx	# sregno, tmp191
	movslq	%edx, %rdx	# tmp191, tmp190
	addq	$4, %rdx	#, tmp192
	movq	(%rax,%rdx,8), %rax	# reg_n_info.44_85->data.reg, D.14261
	movq	reg_n_info(%rip), %rdx	# reg_n_info, reg_n_info.45
	movl	-40(%rbp), %ecx	# sregno, tmp194
	movslq	%ecx, %rcx	# tmp194, tmp193
	addq	$4, %rcx	#, tmp195
	movq	(%rdx,%rcx,8), %rdx	# reg_n_info.45_87->data.reg, D.14261
	movl	32(%rdx), %edx	# _88->calls_crossed, D.14255
	subl	-44(%rbp), %edx	# s_n_calls, D.14255
	movl	%edx, 32(%rax)	# D.14255, _86->calls_crossed
.L104:
	.loc 1 536 0
	movq	-8(%rbp), %rdx	# note, tmp196
	movq	-32(%rbp), %rax	# p, tmp197
	movq	%rdx, %rsi	# tmp196,
	movq	%rax, %rdi	# tmp197,
	call	remove_note	#
	.loc 1 537 0
	movq	-72(%rbp), %rax	# insn, tmp198
	movq	56(%rax), %rdx	# insn_24(D)->fld[6].rtx, D.14259
	movq	-8(%rbp), %rax	# note, tmp199
	movq	%rdx, 16(%rax)	# D.14259, note_38->fld[1].rtx
	.loc 1 538 0
	movq	-72(%rbp), %rax	# insn, tmp200
	movq	-8(%rbp), %rdx	# note, tmp201
	movq	%rdx, 56(%rax)	# tmp201, insn_24(D)->fld[6].rtx
.L103:
	.loc 1 542 0
	cmpq	$0, -16(%rbp)	#, dest_death
	jne	.L106	#,
	.loc 1 543 0
	movl	-36(%rbp), %edx	# dregno, dregno.46
	movq	-72(%rbp), %rax	# insn, tmp202
	movl	$10, %esi	#,
	movq	%rax, %rdi	# tmp202,
	call	find_regno_note	#
	movq	%rax, -16(%rbp)	# tmp203, dest_death
	cmpq	$0, -16(%rbp)	#, dest_death
	je	.L106	#,
	.loc 1 545 0
	movq	-16(%rbp), %rax	# dest_death, tmp204
	movb	$1, 2(%rax)	#, dest_death_93->mode
	.loc 1 546 0
	movq	-16(%rbp), %rdx	# dest_death, tmp205
	movq	-72(%rbp), %rax	# insn, tmp206
	movq	%rdx, %rsi	# tmp205,
	movq	%rax, %rdi	# tmp206,
	call	remove_note	#
.L106:
	.loc 1 550 0
	cmpq	$0, -16(%rbp)	#, dest_death
	je	.L107	#,
	.loc 1 552 0
	movq	-32(%rbp), %rax	# p, tmp207
	movq	56(%rax), %rdx	# p_1->fld[6].rtx, D.14259
	movq	-16(%rbp), %rax	# dest_death, tmp208
	movq	%rdx, 16(%rax)	# D.14259, dest_death_5->fld[1].rtx
	.loc 1 553 0
	movq	-32(%rbp), %rax	# p, tmp209
	movq	-16(%rbp), %rdx	# dest_death, tmp210
	movq	%rdx, 56(%rax)	# tmp210, p_1->fld[6].rtx
	.loc 1 555 0
	cmpl	$52, -36(%rbp)	#, dregno
	jle	.L107	#,
	.loc 1 559 0
	movq	reg_n_info(%rip), %rax	# reg_n_info, reg_n_info.47
	movl	-36(%rbp), %edx	# dregno, tmp212
	movslq	%edx, %rdx	# tmp212, tmp211
	addq	$4, %rdx	#, tmp213
	movq	(%rax,%rdx,8), %rax	# reg_n_info.47_95->data.reg, D.14261
	movl	28(%rax), %eax	# _96->live_length, D.14255
	testl	%eax, %eax	# D.14255
	js	.L108	#,
	.loc 1 560 0
	movq	reg_n_info(%rip), %rax	# reg_n_info, reg_n_info.48
	movl	-36(%rbp), %edx	# dregno, tmp215
	movslq	%edx, %rdx	# tmp215, tmp214
	addq	$4, %rdx	#, tmp216
	movq	(%rax,%rdx,8), %rax	# reg_n_info.48_98->data.reg, D.14261
	movq	reg_n_info(%rip), %rdx	# reg_n_info, reg_n_info.49
	movl	-36(%rbp), %ecx	# dregno, tmp218
	movslq	%ecx, %rcx	# tmp218, tmp217
	addq	$4, %rcx	#, tmp219
	movq	(%rdx,%rcx,8), %rdx	# reg_n_info.49_100->data.reg, D.14261
	movl	28(%rdx), %ecx	# _101->live_length, D.14255
	movl	-56(%rbp), %edx	# d_length, tmp220
	addl	%ecx, %edx	# D.14255, D.14255
	movl	%edx, 28(%rax)	# D.14255, _99->live_length
.L108:
	.loc 1 561 0
	movq	reg_n_info(%rip), %rax	# reg_n_info, reg_n_info.50
	movl	-36(%rbp), %edx	# dregno, tmp222
	movslq	%edx, %rdx	# tmp222, tmp221
	addq	$4, %rdx	#, tmp223
	movq	(%rax,%rdx,8), %rax	# reg_n_info.50_104->data.reg, D.14261
	movq	reg_n_info(%rip), %rdx	# reg_n_info, reg_n_info.51
	movl	-36(%rbp), %ecx	# dregno, tmp225
	movslq	%ecx, %rcx	# tmp225, tmp224
	addq	$4, %rcx	#, tmp226
	movq	(%rdx,%rcx,8), %rdx	# reg_n_info.51_106->data.reg, D.14261
	movl	32(%rdx), %ecx	# _107->calls_crossed, D.14255
	movl	-48(%rbp), %edx	# d_n_calls, tmp227
	addl	%ecx, %edx	# D.14255, D.14255
	movl	%edx, 32(%rax)	# D.14255, _105->calls_crossed
.L107:
	.loc 1 565 0
	cmpl	$0, -60(%rbp)	#, failed
	sete	%al	#, D.14262
	movzbl	%al, %eax	# D.14262, D.14255
	jmp	.L85	#
.L92:
.LBE9:
	.loc 1 570 0
	cmpl	$52, -40(%rbp)	#, sregno
	jg	.L90	#,
	.loc 1 571 0
	movq	-88(%rbp), %rdx	# src, tmp228
	movq	-32(%rbp), %rax	# p, tmp229
	movq	%rdx, %rsi	# tmp228,
	movq	%rax, %rdi	# tmp229,
	call	dead_or_set_p	#
	testl	%eax, %eax	# D.14255
	je	.L90	#,
	.loc 1 572 0
	jmp	.L88	#
.L90:
	.loc 1 424 0
	movq	-32(%rbp), %rax	# p, tmp230
	movq	24(%rax), %rax	# p_1->fld[2].rtx, tmp231
	movq	%rax, -32(%rbp)	# tmp231, p
.L86:
	.loc 1 424 0 is_stmt 0 discriminator 1
	cmpq	$0, -32(%rbp)	#, p
	jne	.L109	#,
.L88:
	.loc 1 574 0 is_stmt 1
	movl	$0, %eax	#, D.14255
.L85:
	.loc 1 575 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	optimize_reg_copy_1, .-optimize_reg_copy_1
	.type	optimize_reg_copy_2, @function
optimize_reg_copy_2:
.LFB10:
	.loc 1 596 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -40(%rbp)	# insn, insn
	movq	%rsi, -48(%rbp)	# dest, dest
	movq	%rdx, -56(%rbp)	# src, src
	.loc 1 599 0
	movq	-56(%rbp), %rax	# src, tmp109
	movl	8(%rax), %eax	# src_5(D)->fld[0].rtuint, D.14263
	movl	%eax, -32(%rbp)	# D.14263, sregno
	.loc 1 600 0
	movq	-48(%rbp), %rax	# dest, tmp110
	movl	8(%rax), %eax	# dest_8(D)->fld[0].rtuint, D.14263
	movl	%eax, -28(%rbp)	# D.14263, dregno
	.loc 1 602 0
	movq	-40(%rbp), %rax	# insn, tmp111
	movq	24(%rax), %rax	# insn_11(D)->fld[2].rtx, tmp112
	movq	%rax, -24(%rbp)	# tmp112, p
	jmp	.L111	#
.L125:
	.loc 1 606 0
	movq	-24(%rbp), %rax	# p, tmp113
	movq	%rax, %rdi	# tmp113,
	call	perhaps_ends_bb_p	#
	testl	%eax, %eax	# D.14264
	je	.L112	#,
	.loc 1 607 0
	jmp	.L110	#
.L112:
	.loc 1 608 0
	movq	-24(%rbp), %rax	# p, tmp114
	movzwl	(%rax), %eax	# p_1->code, D.14265
	movzwl	%ax, %eax	# D.14265, D.14264
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.14266
	cmpb	$105, %al	#, D.14266
	je	.L114	#,
	.loc 1 609 0
	jmp	.L115	#
.L114:
	.loc 1 611 0
	movq	-24(%rbp), %rax	# p, tmp116
	movzwl	(%rax), %eax	# p_1->code, D.14265
	movzwl	%ax, %eax	# D.14265, D.14264
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.14266
	cmpb	$105, %al	#, D.14266
	jne	.L116	#,
	.loc 1 611 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# p, tmp118
	movq	32(%rax), %rax	# p_1->fld[3].rtx, D.14267
	movzwl	(%rax), %eax	# _20->code, D.14265
	cmpw	$47, %ax	#, D.14265
	jne	.L117	#,
	.loc 1 611 0 discriminator 3
	movq	-24(%rbp), %rax	# p, tmp119
	movq	32(%rax), %rax	# p_1->fld[3].rtx, iftmp.53
	jmp	.L119	#
.L117:
	.loc 1 611 0 discriminator 4
	movq	-24(%rbp), %rax	# p, tmp120
	movq	32(%rax), %rdx	# p_1->fld[3].rtx, D.14267
	movq	-24(%rbp), %rax	# p, tmp121
	movq	%rdx, %rsi	# D.14267,
	movq	%rax, %rdi	# tmp121,
	call	single_set_2	#
	jmp	.L119	#
.L116:
	.loc 1 611 0 discriminator 2
	movl	$0, %eax	#, iftmp.52
.L119:
	.loc 1 611 0 discriminator 5
	movq	%rax, -8(%rbp)	# iftmp.52, set
	.loc 1 612 0 is_stmt 1 discriminator 5
	cmpq	$0, -8(%rbp)	#, set
	je	.L120	#,
	.loc 1 612 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# set, tmp122
	movq	16(%rax), %rax	# set_27->fld[1].rtx, D.14267
	cmpq	-48(%rbp), %rax	# dest, D.14267
	jne	.L120	#,
	movq	-8(%rbp), %rax	# set, tmp123
	movq	8(%rax), %rax	# set_27->fld[0].rtx, D.14267
	cmpq	-56(%rbp), %rax	# src, D.14267
	jne	.L120	#,
	.loc 1 613 0 is_stmt 1
	movq	-48(%rbp), %rdx	# dest, tmp124
	movq	-24(%rbp), %rax	# p, tmp125
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp125,
	call	find_reg_note	#
	testq	%rax, %rax	# D.14267
	je	.L120	#,
	.loc 1 619 0
	movq	-40(%rbp), %rax	# insn, tmp126
	movq	%rax, -16(%rbp)	# tmp126, q
	jmp	.L121	#
.L124:
	.loc 1 620 0
	movq	-16(%rbp), %rax	# q, tmp127
	movzwl	(%rax), %eax	# q_2->code, D.14265
	movzwl	%ax, %eax	# D.14265, D.14264
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.14266
	cmpb	$105, %al	#, D.14266
	jne	.L122	#,
	.loc 1 622 0
	movq	-16(%rbp), %rax	# q, tmp129
	movq	32(%rax), %rdx	# q_2->fld[3].rtx, D.14267
	movq	-48(%rbp), %rax	# dest, tmp130
	movq	%rdx, %rsi	# D.14267,
	movq	%rax, %rdi	# tmp130,
	call	reg_mentioned_p	#
	testl	%eax, %eax	# D.14264
	je	.L123	#,
	.loc 1 623 0
	movq	-16(%rbp), %rax	# q, tmp131
	movq	32(%rax), %rax	# q_2->fld[3].rtx, D.14267
	movq	-56(%rbp), %rdx	# src, tmp132
	movq	-48(%rbp), %rcx	# dest, tmp133
	movq	%rcx, %rsi	# tmp133,
	movq	%rax, %rdi	# D.14267,
	call	replace_rtx	#
	movq	-16(%rbp), %rdx	# q, tmp134
	movq	%rax, 32(%rdx)	# D.14267, q_2->fld[3].rtx
.L123:
	.loc 1 626 0
	movq	-16(%rbp), %rax	# q, tmp135
	movzwl	(%rax), %eax	# q_2->code, D.14265
	cmpw	$34, %ax	#, D.14265
	jne	.L122	#,
	.loc 1 628 0
	movq	reg_n_info(%rip), %rax	# reg_n_info, reg_n_info.54
	movl	-28(%rbp), %edx	# dregno, tmp137
	movslq	%edx, %rdx	# tmp137, tmp136
	addq	$4, %rdx	#, tmp138
	movq	(%rax,%rdx,8), %rax	# reg_n_info.54_41->data.reg, D.14268
	movl	32(%rax), %edx	# _42->calls_crossed, D.14264
	subl	$1, %edx	#, D.14264
	movl	%edx, 32(%rax)	# D.14264, _42->calls_crossed
	.loc 1 629 0
	movq	reg_n_info(%rip), %rax	# reg_n_info, reg_n_info.55
	movl	-32(%rbp), %edx	# sregno, tmp140
	movslq	%edx, %rdx	# tmp140, tmp139
	addq	$4, %rdx	#, tmp141
	movq	(%rax,%rdx,8), %rax	# reg_n_info.55_45->data.reg, D.14268
	movl	32(%rax), %edx	# _46->calls_crossed, D.14264
	addl	$1, %edx	#, D.14264
	movl	%edx, 32(%rax)	# D.14264, _46->calls_crossed
.L122:
	.loc 1 619 0
	movq	-16(%rbp), %rax	# q, tmp142
	movq	24(%rax), %rax	# q_2->fld[2].rtx, tmp143
	movq	%rax, -16(%rbp)	# tmp143, q
.L121:
	.loc 1 619 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# p, tmp144
	movq	24(%rax), %rax	# p_1->fld[2].rtx, D.14267
	cmpq	-16(%rbp), %rax	# q, D.14267
	jne	.L124	#,
	.loc 1 633 0 is_stmt 1
	movq	-48(%rbp), %rdx	# dest, tmp145
	movq	-24(%rbp), %rax	# p, tmp146
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp146,
	call	find_reg_note	#
	movq	%rax, %rdx	#, D.14267
	movq	-24(%rbp), %rax	# p, tmp147
	movq	%rdx, %rsi	# D.14267,
	movq	%rax, %rdi	# tmp147,
	call	remove_note	#
	.loc 1 634 0
	movq	reg_n_info(%rip), %rax	# reg_n_info, reg_n_info.56
	movl	-28(%rbp), %edx	# dregno, tmp149
	movslq	%edx, %rdx	# tmp149, tmp148
	addq	$4, %rdx	#, tmp150
	movq	(%rax,%rdx,8), %rax	# reg_n_info.56_51->data.reg, D.14268
	movl	24(%rax), %edx	# _52->deaths, D.14264
	subl	$1, %edx	#, D.14264
	movl	%edx, 24(%rax)	# D.14264, _52->deaths
	.loc 1 635 0
	movq	-56(%rbp), %rdx	# src, tmp151
	movq	-40(%rbp), %rax	# insn, tmp152
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp152,
	call	find_reg_note	#
	movq	%rax, %rdx	#, D.14267
	movq	-40(%rbp), %rax	# insn, tmp153
	movq	%rdx, %rsi	# D.14267,
	movq	%rax, %rdi	# tmp153,
	call	remove_note	#
	.loc 1 636 0
	movq	reg_n_info(%rip), %rax	# reg_n_info, reg_n_info.57
	movl	-32(%rbp), %edx	# sregno, tmp155
	movslq	%edx, %rdx	# tmp155, tmp154
	addq	$4, %rdx	#, tmp156
	movq	(%rax,%rdx,8), %rax	# reg_n_info.57_56->data.reg, D.14268
	movl	24(%rax), %edx	# _57->deaths, D.14264
	subl	$1, %edx	#, D.14264
	movl	%edx, 24(%rax)	# D.14264, _57->deaths
	.loc 1 637 0
	jmp	.L110	#
.L120:
	.loc 1 640 0
	movq	-24(%rbp), %rdx	# p, tmp157
	movq	-56(%rbp), %rax	# src, tmp158
	movq	%rdx, %rsi	# tmp157,
	movq	%rax, %rdi	# tmp158,
	call	reg_set_p	#
	testl	%eax, %eax	# D.14264
	jne	.L110	#,
	.loc 1 641 0
	movq	-48(%rbp), %rdx	# dest, tmp159
	movq	-24(%rbp), %rax	# p, tmp160
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp160,
	call	find_reg_note	#
	testq	%rax, %rax	# D.14267
	jne	.L110	#,
	.loc 1 642 0
	movq	-24(%rbp), %rax	# p, tmp161
	movzwl	(%rax), %eax	# p_1->code, D.14265
	cmpw	$34, %ax	#, D.14265
	jne	.L115	#,
	.loc 1 642 0 is_stmt 0 discriminator 1
	movq	reg_n_info(%rip), %rax	# reg_n_info, reg_n_info.58
	movl	-32(%rbp), %edx	# sregno, tmp163
	movslq	%edx, %rdx	# tmp163, tmp162
	addq	$4, %rdx	#, tmp164
	movq	(%rax,%rdx,8), %rax	# reg_n_info.58_63->data.reg, D.14268
	movl	32(%rax), %eax	# _64->calls_crossed, D.14264
	testl	%eax, %eax	# D.14264
	je	.L110	#,
.L115:
	.loc 1 602 0 is_stmt 1
	movq	-24(%rbp), %rax	# p, tmp165
	movq	24(%rax), %rax	# p_1->fld[2].rtx, tmp166
	movq	%rax, -24(%rbp)	# tmp166, p
.L111:
	.loc 1 602 0 is_stmt 0 discriminator 1
	cmpq	$0, -24(%rbp)	#, p
	jne	.L125	#,
.L110:
	.loc 1 645 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	optimize_reg_copy_2, .-optimize_reg_copy_2
	.type	optimize_reg_copy_3, @function
optimize_reg_copy_3:
.LFB11:
	.loc 1 657 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$96, %rsp	#,
	movq	%rdi, -72(%rbp)	# insn, insn
	movq	%rsi, -80(%rbp)	# dest, dest
	movq	%rdx, -88(%rbp)	# src, src
	.loc 1 658 0
	movq	-88(%rbp), %rax	# src, tmp94
	movq	8(%rax), %rax	# src_5(D)->fld[0].rtx, tmp95
	movq	%rax, -32(%rbp)	# tmp95, src_reg
	.loc 1 659 0
	movq	-32(%rbp), %rax	# src_reg, tmp96
	movl	8(%rax), %eax	# src_reg_6->fld[0].rtuint, D.14269
	movl	%eax, -52(%rbp)	# D.14269, src_no
	.loc 1 660 0
	movq	-80(%rbp), %rax	# dest, tmp97
	movl	8(%rax), %eax	# dest_9(D)->fld[0].rtuint, D.14269
	movl	%eax, -48(%rbp)	# D.14269, dst_no
	.loc 1 664 0
	cmpl	$52, -52(%rbp)	#, src_no
	jle	.L127	#,
	.loc 1 665 0
	cmpl	$52, -48(%rbp)	#, dst_no
	jle	.L127	#,
	.loc 1 666 0
	movq	-32(%rbp), %rdx	# src_reg, tmp98
	movq	-72(%rbp), %rax	# insn, tmp99
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp99,
	call	find_reg_note	#
	testq	%rax, %rax	# D.14270
	je	.L127	#,
	.loc 1 667 0
	movq	reg_n_info(%rip), %rax	# reg_n_info, reg_n_info.59
	movl	-52(%rbp), %edx	# src_no, tmp101
	movslq	%edx, %rdx	# tmp101, tmp100
	addq	$4, %rdx	#, tmp102
	movq	(%rax,%rdx,8), %rax	# reg_n_info.59_14->data.reg, D.14271
	movl	24(%rax), %eax	# _15->deaths, D.14272
	cmpl	$1, %eax	#, D.14272
	jne	.L127	#,
	.loc 1 668 0
	movq	reg_n_info(%rip), %rax	# reg_n_info, reg_n_info.60
	movl	-52(%rbp), %edx	# src_no, tmp104
	movslq	%edx, %rdx	# tmp104, tmp103
	addq	$4, %rdx	#, tmp105
	movq	(%rax,%rdx,8), %rax	# reg_n_info.60_17->data.reg, D.14271
	movl	12(%rax), %eax	# _18->sets, D.14272
	cmpl	$1, %eax	#, D.14272
	je	.L128	#,
.L127:
	.loc 1 669 0
	jmp	.L126	#
.L128:
	.loc 1 670 0
	movq	-72(%rbp), %rax	# insn, tmp106
	movq	16(%rax), %rax	# insn_12(D)->fld[1].rtx, tmp107
	movq	%rax, -40(%rbp)	# tmp107, p
	jmp	.L130	#
.L133:
	.loc 1 673 0
	movq	-40(%rbp), %rax	# p, tmp108
	movq	%rax, %rdi	# tmp108,
	call	perhaps_ends_bb_p	#
	testl	%eax, %eax	# D.14272
	je	.L131	#,
	.loc 1 674 0
	jmp	.L132	#
.L131:
	.loc 1 670 0
	movq	-40(%rbp), %rax	# p, tmp109
	movq	16(%rax), %rax	# p_1->fld[1].rtx, tmp110
	movq	%rax, -40(%rbp)	# tmp110, p
.L130:
	.loc 1 670 0 is_stmt 0 discriminator 1
	cmpq	$0, -40(%rbp)	#, p
	je	.L132	#,
	.loc 1 670 0 discriminator 2
	movq	-40(%rbp), %rdx	# p, tmp111
	movq	-32(%rbp), %rax	# src_reg, tmp112
	movq	%rdx, %rsi	# tmp111,
	movq	%rax, %rdi	# tmp112,
	call	reg_set_p	#
	testl	%eax, %eax	# D.14272
	je	.L133	#,
.L132:
	.loc 1 676 0 is_stmt 1
	cmpq	$0, -40(%rbp)	#, p
	jne	.L134	#,
	.loc 1 677 0
	jmp	.L126	#
.L134:
	.loc 1 679 0
	movq	-40(%rbp), %rax	# p, tmp113
	movzwl	(%rax), %eax	# p_1->code, D.14273
	movzwl	%ax, %eax	# D.14273, D.14272
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.14274
	cmpb	$105, %al	#, D.14274
	jne	.L135	#,
	.loc 1 679 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# p, tmp115
	movq	32(%rax), %rax	# p_1->fld[3].rtx, D.14270
	movzwl	(%rax), %eax	# _27->code, D.14273
	cmpw	$47, %ax	#, D.14273
	jne	.L136	#,
	.loc 1 679 0 discriminator 3
	movq	-40(%rbp), %rax	# p, tmp116
	movq	32(%rax), %rax	# p_1->fld[3].rtx, iftmp.62
	jmp	.L138	#
.L136:
	.loc 1 679 0 discriminator 4
	movq	-40(%rbp), %rax	# p, tmp117
	movq	32(%rax), %rdx	# p_1->fld[3].rtx, D.14270
	movq	-40(%rbp), %rax	# p, tmp118
	movq	%rdx, %rsi	# D.14270,
	movq	%rax, %rdi	# tmp118,
	call	single_set_2	#
	jmp	.L138	#
.L135:
	.loc 1 679 0 discriminator 2
	movl	$0, %eax	#, iftmp.61
.L138:
	.loc 1 679 0 discriminator 5
	movq	%rax, -24(%rbp)	# iftmp.61, set
	cmpq	$0, -24(%rbp)	#, set
	je	.L139	#,
	.loc 1 680 0 is_stmt 1
	movq	-24(%rbp), %rax	# set, tmp119
	movq	16(%rax), %rax	# set_34->fld[1].rtx, D.14270
	movzwl	(%rax), %eax	# _35->code, D.14273
	cmpw	$66, %ax	#, D.14273
	jne	.L139	#,
	.loc 1 683 0
	movq	-40(%rbp), %rax	# p, tmp120
	movl	$0, %edx	#,
	movl	$3, %esi	#,
	movq	%rax, %rdi	# tmp120,
	call	find_reg_note	#
	testq	%rax, %rax	# D.14270
	jne	.L139	#,
	.loc 1 684 0
	movq	-24(%rbp), %rax	# set, tmp121
	movq	8(%rax), %rax	# set_34->fld[0].rtx, D.14270
	cmpq	-32(%rbp), %rax	# src_reg, D.14270
	je	.L140	#,
.L139:
	.loc 1 685 0
	jmp	.L126	#
.L140:
	.loc 1 689 0
	movq	-24(%rbp), %rax	# set, tmp122
	movq	16(%rax), %rax	# set_34->fld[1].rtx, D.14270
	movzbl	3(%rax), %eax	# *_39, D.14275
	andl	$8, %eax	#, D.14275
	testb	%al, %al	# D.14275
	je	.L141	#,
	.loc 1 690 0
	jmp	.L126	#
.L141:
	.loc 1 699 0
	movq	-32(%rbp), %rax	# src_reg, tmp123
	movzbl	2(%rax), %eax	# src_reg_6->mode, D.14275
	movzbl	%al, %eax	# D.14275, tmp124
	movl	%eax, -44(%rbp)	# tmp124, old_mode
	.loc 1 700 0
	movq	-88(%rbp), %rax	# src, tmp125
	movzbl	2(%rax), %edx	# src_5(D)->mode, D.14275
	movq	-32(%rbp), %rax	# src_reg, tmp126
	movb	%dl, 2(%rax)	# D.14275, src_reg_6->mode
	.loc 1 701 0
	movq	-24(%rbp), %rax	# set, tmp127
	movq	16(%rax), %rdx	# set_34->fld[1].rtx, D.14270
	movq	-88(%rbp), %rax	# src, tmp128
	movq	%rdx, 8(%rax)	# D.14270, src_5(D)->fld[0].rtx
	.loc 1 705 0
	movq	-24(%rbp), %rax	# set, tmp129
	leaq	16(%rax), %rsi	#, D.14276
	movq	-88(%rbp), %rdx	# src, tmp130
	movq	-40(%rbp), %rax	# p, tmp131
	movl	$1, %ecx	#,
	movq	%rax, %rdi	# tmp131,
	call	validate_change	#
	.loc 1 709 0
	movq	-32(%rbp), %rdx	# src_reg, tmp132
	movl	-44(%rbp), %eax	# old_mode, tmp133
	movq	%rdx, %rsi	# tmp132,
	movl	%eax, %edi	# tmp133,
	call	gen_lowpart_SUBREG	#
	movq	%rax, -16(%rbp)	# tmp134, subreg
	.loc 1 710 0
	jmp	.L142	#
.L144:
	.loc 1 712 0
	movq	-40(%rbp), %rax	# p, tmp135
	movzwl	(%rax), %eax	# p_48->code, D.14273
	movzwl	%ax, %eax	# D.14273, D.14272
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.14274
	cmpb	$105, %al	#, D.14274
	je	.L143	#,
	.loc 1 713 0
	jmp	.L142	#
.L143:
	.loc 1 716 0
	movq	-40(%rbp), %rdx	# p, tmp137
	movq	-16(%rbp), %rcx	# subreg, tmp138
	movq	-32(%rbp), %rax	# src_reg, tmp139
	movq	%rcx, %rsi	# tmp138,
	movq	%rax, %rdi	# tmp139,
	call	validate_replace_rtx_group	#
.L142:
	.loc 1 710 0 discriminator 1
	movq	-40(%rbp), %rax	# p, tmp140
	movq	24(%rax), %rax	# p_2->fld[2].rtx, tmp141
	movq	%rax, -40(%rbp)	# tmp141, p
	movq	-40(%rbp), %rax	# p, tmp142
	cmpq	-72(%rbp), %rax	# insn, tmp142
	jne	.L144	#,
	.loc 1 719 0
	movq	-72(%rbp), %rdx	# insn, tmp143
	movq	-32(%rbp), %rcx	# src_reg, tmp144
	movq	-88(%rbp), %rax	# src, tmp145
	movq	%rcx, %rsi	# tmp144,
	movq	%rax, %rdi	# tmp145,
	call	validate_replace_rtx_group	#
	.loc 1 722 0
	call	apply_change_group	#
	testl	%eax, %eax	# D.14272
	jne	.L145	#,
	.loc 1 725 0
	movl	-44(%rbp), %eax	# old_mode, tmp146
	movl	%eax, %edx	# tmp146, D.14275
	movq	-32(%rbp), %rax	# src_reg, tmp147
	movb	%dl, 2(%rax)	# D.14275, src_reg_6->mode
	.loc 1 726 0
	movq	-88(%rbp), %rax	# src, tmp148
	movq	-32(%rbp), %rdx	# src_reg, tmp149
	movq	%rdx, 8(%rax)	# tmp149, src_5(D)->fld[0].rtx
	jmp	.L126	#
.L145:
.LBB10:
	.loc 1 730 0
	movq	-40(%rbp), %rax	# p, tmp150
	movl	$0, %edx	#,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp150,
	call	find_reg_note	#
	movq	%rax, -8(%rbp)	# tmp151, note
	.loc 1 731 0
	cmpq	$0, -8(%rbp)	#, note
	je	.L126	#,
	.loc 1 732 0
	movq	-8(%rbp), %rdx	# note, tmp152
	movq	-40(%rbp), %rax	# p, tmp153
	movq	%rdx, %rsi	# tmp152,
	movq	%rax, %rdi	# tmp153,
	call	remove_note	#
.L126:
.LBE10:
	.loc 1 734 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	optimize_reg_copy_3, .-optimize_reg_copy_3
	.type	copy_src_to_dest, @function
copy_src_to_dest:
.LFB12:
	.loc 1 746 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$112, %rsp	#,
	movq	%rdi, -88(%rbp)	# insn, insn
	movq	%rsi, -96(%rbp)	# src, src
	movq	%rdx, -104(%rbp)	# dest, dest
	movl	%ecx, -108(%rbp)	# old_max_uid, old_max_uid
	.loc 1 765 0
	movq	-96(%rbp), %rax	# src, tmp137
	movzwl	(%rax), %eax	# src_8(D)->code, D.14277
	cmpw	$61, %ax	#, D.14277
	jne	.L146	#,
	.loc 1 766 0
	movq	reg_n_info(%rip), %rax	# reg_n_info, reg_n_info.63
	movq	-96(%rbp), %rdx	# src, tmp138
	movl	8(%rdx), %edx	# src_8(D)->fld[0].rtuint, D.14278
	movl	%edx, %edx	# D.14278, tmp139
	addq	$4, %rdx	#, tmp140
	movq	(%rax,%rdx,8), %rax	# reg_n_info.63_10->data.reg, D.14279
	movl	28(%rax), %eax	# _12->live_length, D.14280
	testl	%eax, %eax	# D.14280
	jle	.L146	#,
	.loc 1 767 0
	movq	-104(%rbp), %rax	# dest, tmp141
	movzwl	(%rax), %eax	# dest_14(D)->code, D.14277
	cmpw	$61, %ax	#, D.14277
	jne	.L146	#,
	.loc 1 768 0
	movq	-104(%rbp), %rax	# dest, tmp142
	movzbl	3(%rax), %eax	# *dest_14(D), D.14281
	andl	$4, %eax	#, D.14281
	testb	%al, %al	# D.14281
	jne	.L146	#,
	.loc 1 769 0
	movq	reg_n_info(%rip), %rax	# reg_n_info, reg_n_info.64
	movq	-104(%rbp), %rdx	# dest, tmp143
	movl	8(%rdx), %edx	# dest_14(D)->fld[0].rtuint, D.14278
	movl	%edx, %edx	# D.14278, tmp144
	addq	$4, %rdx	#, tmp145
	movq	(%rax,%rdx,8), %rax	# reg_n_info.64_18->data.reg, D.14279
	movl	28(%rax), %eax	# _20->live_length, D.14280
	testl	%eax, %eax	# D.14280
	jle	.L146	#,
	.loc 1 770 0
	movq	-88(%rbp), %rax	# insn, tmp146
	movzwl	(%rax), %eax	# insn_22(D)->code, D.14277
	movzwl	%ax, %eax	# D.14277, D.14280
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.14282
	cmpb	$105, %al	#, D.14282
	jne	.L148	#,
	.loc 1 770 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# insn, tmp148
	movq	32(%rax), %rax	# insn_22(D)->fld[3].rtx, D.14283
	movzwl	(%rax), %eax	# _26->code, D.14277
	cmpw	$47, %ax	#, D.14277
	jne	.L149	#,
	.loc 1 770 0 discriminator 3
	movq	-88(%rbp), %rax	# insn, tmp149
	movq	32(%rax), %rax	# insn_22(D)->fld[3].rtx, iftmp.66
	jmp	.L151	#
.L149:
	.loc 1 770 0 discriminator 4
	movq	-88(%rbp), %rax	# insn, tmp150
	movq	32(%rax), %rdx	# insn_22(D)->fld[3].rtx, D.14283
	movq	-88(%rbp), %rax	# insn, tmp151
	movq	%rdx, %rsi	# D.14283,
	movq	%rax, %rdi	# tmp151,
	call	single_set_2	#
	jmp	.L151	#
.L148:
	.loc 1 770 0 discriminator 2
	movl	$0, %eax	#, iftmp.65
.L151:
	.loc 1 770 0 discriminator 5
	movq	%rax, -32(%rbp)	# iftmp.65, set
	cmpq	$0, -32(%rbp)	#, set
	je	.L146	#,
	.loc 1 771 0 is_stmt 1
	movq	-32(%rbp), %rax	# set, tmp152
	movq	16(%rax), %rdx	# set_33->fld[1].rtx, D.14283
	movq	-104(%rbp), %rax	# dest, tmp153
	movq	%rdx, %rsi	# D.14283,
	movq	%rax, %rdi	# tmp153,
	call	reg_mentioned_p	#
	testl	%eax, %eax	# D.14280
	jne	.L146	#,
	.loc 1 772 0
	movq	-96(%rbp), %rax	# src, tmp154
	movzbl	2(%rax), %edx	# src_8(D)->mode, D.14281
	movq	-104(%rbp), %rax	# dest, tmp155
	movzbl	2(%rax), %eax	# dest_14(D)->mode, D.14281
	cmpb	%al, %dl	# D.14281, D.14281
	jne	.L146	#,
.LBB11:
	.loc 1 774 0
	movq	cfun(%rip), %rax	# cfun, cfun.67
	movq	24(%rax), %rax	# cfun.67_38->emit, D.14284
	movl	(%rax), %eax	# _39->x_reg_rtx_no, tmp156
	movl	%eax, -80(%rbp)	# tmp156, old_num_regs
	.loc 1 777 0
	call	start_sequence	#
	.loc 1 778 0
	movq	-96(%rbp), %rdx	# src, tmp157
	movq	-104(%rbp), %rax	# dest, tmp158
	movq	%rdx, %rsi	# tmp157,
	movq	%rax, %rdi	# tmp158,
	call	emit_move_insn	#
	.loc 1 779 0
	call	gen_sequence	#
	movq	%rax, -24(%rbp)	# tmp159, seq
	.loc 1 780 0
	call	end_sequence	#
	.loc 1 782 0
	movq	cfun(%rip), %rax	# cfun, cfun.68
	movq	24(%rax), %rax	# cfun.68_42->emit, D.14284
	movl	(%rax), %eax	# _43->x_reg_rtx_no, D.14280
	cmpl	-80(%rbp), %eax	# old_num_regs, D.14280
	jne	.L152	#,
	.loc 1 783 0
	movq	-88(%rbp), %rdx	# insn, tmp160
	movq	-104(%rbp), %rcx	# dest, tmp161
	movq	-96(%rbp), %rax	# src, tmp162
	movq	%rcx, %rsi	# tmp161,
	movq	%rax, %rdi	# tmp162,
	call	validate_replace_rtx	#
	testl	%eax, %eax	# D.14280
	jne	.L153	#,
.L152:
	.loc 1 788 0
	movq	cfun(%rip), %rax	# cfun, cfun.69
	movq	24(%rax), %rax	# cfun.69_106->emit, D.14284
	movl	-80(%rbp), %edx	# old_num_regs, tmp163
	movl	%edx, (%rax)	# tmp163, _107->x_reg_rtx_no
	.loc 1 789 0
	jmp	.L146	#
.L153:
	.loc 1 791 0
	movq	-88(%rbp), %rdx	# insn, tmp164
	movq	-24(%rbp), %rax	# seq, tmp165
	movq	%rdx, %rsi	# tmp164,
	movq	%rax, %rdi	# tmp165,
	call	emit_insn_before	#
	.loc 1 792 0
	movq	-88(%rbp), %rax	# insn, tmp166
	movq	16(%rax), %rax	# insn_22(D)->fld[1].rtx, tmp167
	movq	%rax, -16(%rbp)	# tmp167, move_insn
	.loc 1 793 0
	movq	-16(%rbp), %rax	# move_insn, tmp171
	addq	$56, %rax	#, tmp170
	movq	%rax, -40(%rbp)	# tmp170, p_move_notes
	.loc 1 794 0
	movq	-88(%rbp), %rax	# insn, tmp175
	addq	$56, %rax	#, tmp174
	movq	%rax, -48(%rbp)	# tmp174, p_insn_notes
	.loc 1 797 0
	movq	-88(%rbp), %rax	# insn, tmp176
	movq	56(%rax), %rax	# insn_22(D)->fld[6].rtx, tmp177
	movq	%rax, -56(%rbp)	# tmp177, link
	jmp	.L154	#
.L157:
	.loc 1 799 0
	movq	-56(%rbp), %rax	# link, tmp178
	movq	16(%rax), %rax	# link_1->fld[1].rtx, tmp179
	movq	%rax, -8(%rbp)	# tmp179, next
	.loc 1 800 0
	movq	-56(%rbp), %rax	# link, tmp180
	movq	8(%rax), %rax	# link_1->fld[0].rtx, D.14283
	cmpq	-96(%rbp), %rax	# src, D.14283
	jne	.L155	#,
	.loc 1 802 0
	movq	-40(%rbp), %rax	# p_move_notes, tmp181
	movq	-56(%rbp), %rdx	# link, tmp182
	movq	%rdx, (%rax)	# tmp182, *p_move_notes_5
	.loc 1 803 0
	movq	-56(%rbp), %rax	# link, tmp186
	addq	$16, %rax	#, tmp185
	movq	%rax, -40(%rbp)	# tmp185, p_move_notes
	jmp	.L156	#
.L155:
	.loc 1 807 0
	movq	-48(%rbp), %rax	# p_insn_notes, tmp187
	movq	-56(%rbp), %rdx	# link, tmp188
	movq	%rdx, (%rax)	# tmp188, *p_insn_notes_3
	.loc 1 808 0
	movq	-56(%rbp), %rax	# link, tmp192
	addq	$16, %rax	#, tmp191
	movq	%rax, -48(%rbp)	# tmp191, p_insn_notes
.L156:
	.loc 1 797 0
	movq	-8(%rbp), %rax	# next, tmp193
	movq	%rax, -56(%rbp)	# tmp193, link
.L154:
	.loc 1 797 0 is_stmt 0 discriminator 1
	cmpq	$0, -56(%rbp)	#, link
	jne	.L157	#,
	.loc 1 812 0 is_stmt 1
	movq	-40(%rbp), %rax	# p_move_notes, tmp194
	movq	$0, (%rax)	#, *p_move_notes_5
	.loc 1 813 0
	movq	-48(%rbp), %rax	# p_insn_notes, tmp195
	movq	$0, (%rax)	#, *p_insn_notes_3
	.loc 1 816 0
	movq	-88(%rbp), %rax	# insn, tmp196
	movl	8(%rax), %eax	# insn_22(D)->fld[0].rtint, tmp197
	movl	%eax, -76(%rbp)	# tmp197, insn_uid
	.loc 1 817 0
	movq	-16(%rbp), %rax	# move_insn, tmp198
	movl	8(%rax), %eax	# move_insn_46->fld[0].rtint, tmp199
	movl	%eax, -72(%rbp)	# tmp199, move_uid
	.loc 1 818 0
	movl	-76(%rbp), %eax	# insn_uid, tmp200
	cmpl	-108(%rbp), %eax	# old_max_uid, tmp200
	jge	.L158	#,
	.loc 1 820 0
	movq	regmove_bb_head(%rip), %rax	# regmove_bb_head, regmove_bb_head.70
	movl	-76(%rbp), %edx	# insn_uid, tmp201
	movslq	%edx, %rdx	# tmp201, D.14285
	salq	$2, %rdx	#, D.14285
	addq	%rdx, %rax	# D.14285, D.14286
	movl	(%rax), %eax	# *_61, tmp202
	movl	%eax, -68(%rbp)	# tmp202, bb
	.loc 1 821 0
	cmpl	$0, -68(%rbp)	#, bb
	js	.L158	#,
	.loc 1 823 0
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.71
	movl	-68(%rbp), %edx	# bb, tmp204
	movslq	%edx, %rdx	# tmp204, tmp203
	addq	$4, %rdx	#, tmp205
	movq	(%rax,%rdx,8), %rax	# basic_block_info.71_63->data.bb, D.14287
	movq	-16(%rbp), %rdx	# move_insn, tmp206
	movq	%rdx, (%rax)	# tmp206, _64->head
	.loc 1 824 0
	movq	regmove_bb_head(%rip), %rax	# regmove_bb_head, regmove_bb_head.72
	movl	-76(%rbp), %edx	# insn_uid, tmp207
	movslq	%edx, %rdx	# tmp207, D.14285
	salq	$2, %rdx	#, D.14285
	addq	%rdx, %rax	# D.14285, D.14286
	movl	$-1, (%rax)	#, *_68
.L158:
	.loc 1 829 0
	movq	-104(%rbp), %rax	# dest, tmp208
	movl	8(%rax), %eax	# dest_14(D)->fld[0].rtuint, D.14278
	movl	%eax, -64(%rbp)	# D.14278, dest_regno
	.loc 1 830 0
	movq	reg_n_info(%rip), %rax	# reg_n_info, reg_n_info.73
	movl	-64(%rbp), %edx	# dest_regno, tmp210
	movslq	%edx, %rdx	# tmp210, tmp209
	addq	$4, %rdx	#, tmp211
	movq	(%rax,%rdx,8), %rax	# reg_n_info.73_71->data.reg, D.14279
	movl	12(%rax), %edx	# _72->sets, D.14280
	addl	$1, %edx	#, D.14280
	movl	%edx, 12(%rax)	# D.14280, _72->sets
	.loc 1 831 0
	movq	reg_n_info(%rip), %rax	# reg_n_info, reg_n_info.74
	movl	-64(%rbp), %edx	# dest_regno, tmp213
	movslq	%edx, %rdx	# tmp213, tmp212
	addq	$4, %rdx	#, tmp214
	movq	(%rax,%rdx,8), %rax	# reg_n_info.74_75->data.reg, D.14279
	movl	28(%rax), %edx	# _76->live_length, D.14280
	addl	$1, %edx	#, D.14280
	movl	%edx, 28(%rax)	# D.14280, _76->live_length
	.loc 1 832 0
	movq	reg_n_info(%rip), %rax	# reg_n_info, reg_n_info.75
	movl	-64(%rbp), %edx	# dest_regno, tmp216
	movslq	%edx, %rdx	# tmp216, tmp215
	addq	$4, %rdx	#, tmp217
	movq	(%rax,%rdx,8), %rax	# reg_n_info.75_79->data.reg, D.14279
	movl	(%rax), %eax	# _80->first_uid, D.14280
	cmpl	-76(%rbp), %eax	# insn_uid, D.14280
	jne	.L159	#,
	.loc 1 833 0
	movq	reg_n_info(%rip), %rax	# reg_n_info, reg_n_info.76
	movl	-64(%rbp), %edx	# dest_regno, tmp219
	movslq	%edx, %rdx	# tmp219, tmp218
	addq	$4, %rdx	#, tmp220
	movq	(%rax,%rdx,8), %rax	# reg_n_info.76_82->data.reg, D.14279
	movl	-72(%rbp), %edx	# move_uid, tmp221
	movl	%edx, (%rax)	# tmp221, _83->first_uid
.L159:
	.loc 1 835 0
	movq	-96(%rbp), %rax	# src, tmp222
	movl	8(%rax), %eax	# src_8(D)->fld[0].rtuint, D.14278
	movl	%eax, -60(%rbp)	# D.14278, src_regno
	.loc 1 836 0
	movq	-96(%rbp), %rdx	# src, tmp223
	movq	-16(%rbp), %rax	# move_insn, tmp224
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp224,
	call	find_reg_note	#
	testq	%rax, %rax	# D.14283
	jne	.L160	#,
	.loc 1 837 0
	movq	reg_n_info(%rip), %rax	# reg_n_info, reg_n_info.77
	movl	-60(%rbp), %edx	# src_regno, tmp226
	movslq	%edx, %rdx	# tmp226, tmp225
	addq	$4, %rdx	#, tmp227
	movq	(%rax,%rdx,8), %rax	# reg_n_info.77_87->data.reg, D.14279
	movl	28(%rax), %edx	# _88->live_length, D.14280
	addl	$1, %edx	#, D.14280
	movl	%edx, 28(%rax)	# D.14280, _88->live_length
.L160:
	.loc 1 839 0
	movq	reg_n_info(%rip), %rax	# reg_n_info, reg_n_info.78
	movl	-60(%rbp), %edx	# src_regno, tmp229
	movslq	%edx, %rdx	# tmp229, tmp228
	addq	$4, %rdx	#, tmp230
	movq	(%rax,%rdx,8), %rax	# reg_n_info.78_91->data.reg, D.14279
	movl	(%rax), %eax	# _92->first_uid, D.14280
	cmpl	-76(%rbp), %eax	# insn_uid, D.14280
	jne	.L161	#,
	.loc 1 840 0
	movq	reg_n_info(%rip), %rax	# reg_n_info, reg_n_info.79
	movl	-60(%rbp), %edx	# src_regno, tmp232
	movslq	%edx, %rdx	# tmp232, tmp231
	addq	$4, %rdx	#, tmp233
	movq	(%rax,%rdx,8), %rax	# reg_n_info.79_94->data.reg, D.14279
	movl	-72(%rbp), %edx	# move_uid, tmp234
	movl	%edx, (%rax)	# tmp234, _95->first_uid
.L161:
	.loc 1 842 0
	movq	reg_n_info(%rip), %rax	# reg_n_info, reg_n_info.80
	movl	-60(%rbp), %edx	# src_regno, tmp236
	movslq	%edx, %rdx	# tmp236, tmp235
	addq	$4, %rdx	#, tmp237
	movq	(%rax,%rdx,8), %rax	# reg_n_info.80_96->data.reg, D.14279
	movl	4(%rax), %eax	# _97->last_uid, D.14280
	cmpl	-76(%rbp), %eax	# insn_uid, D.14280
	jne	.L162	#,
	.loc 1 843 0
	movq	reg_n_info(%rip), %rax	# reg_n_info, reg_n_info.81
	movl	-60(%rbp), %edx	# src_regno, tmp239
	movslq	%edx, %rdx	# tmp239, tmp238
	addq	$4, %rdx	#, tmp240
	movq	(%rax,%rdx,8), %rax	# reg_n_info.81_99->data.reg, D.14279
	movl	-72(%rbp), %edx	# move_uid, tmp241
	movl	%edx, 4(%rax)	# tmp241, _100->last_uid
.L162:
	.loc 1 845 0
	movq	reg_n_info(%rip), %rax	# reg_n_info, reg_n_info.82
	movl	-60(%rbp), %edx	# src_regno, tmp243
	movslq	%edx, %rdx	# tmp243, tmp242
	addq	$4, %rdx	#, tmp244
	movq	(%rax,%rdx,8), %rax	# reg_n_info.82_101->data.reg, D.14279
	movl	8(%rax), %eax	# _102->last_note_uid, D.14280
	cmpl	-76(%rbp), %eax	# insn_uid, D.14280
	jne	.L146	#,
	.loc 1 846 0
	movq	reg_n_info(%rip), %rax	# reg_n_info, reg_n_info.83
	movl	-60(%rbp), %edx	# src_regno, tmp246
	movslq	%edx, %rdx	# tmp246, tmp245
	addq	$4, %rdx	#, tmp247
	movq	(%rax,%rdx,8), %rax	# reg_n_info.83_104->data.reg, D.14279
	movl	-72(%rbp), %edx	# move_uid, tmp248
	movl	%edx, 8(%rax)	# tmp248, _105->last_note_uid
.L146:
.LBE11:
	.loc 1 848 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	copy_src_to_dest, .-copy_src_to_dest
	.type	reg_is_remote_constant_p, @function
reg_is_remote_constant_p:
.LFB13:
	.loc 1 866 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -40(%rbp)	# reg, reg
	movq	%rsi, -48(%rbp)	# insn, insn
	movq	%rdx, -56(%rbp)	# first, first
	.loc 1 869 0
	movq	reg_n_info(%rip), %rax	# reg_n_info, reg_n_info.84
	movq	-40(%rbp), %rdx	# reg, tmp101
	movl	8(%rdx), %edx	# reg_9(D)->fld[0].rtuint, D.14289
	movl	%edx, %edx	# D.14289, tmp102
	addq	$4, %rdx	#, tmp103
	movq	(%rax,%rdx,8), %rax	# reg_n_info.84_8->data.reg, D.14290
	movl	12(%rax), %eax	# _11->sets, D.14288
	cmpl	$1, %eax	#, D.14288
	je	.L164	#,
	.loc 1 870 0
	movl	$0, %eax	#, D.14288
	jmp	.L165	#
.L164:
	.loc 1 873 0
	movq	-48(%rbp), %rax	# insn, tmp104
	movq	48(%rax), %rax	# insn_14(D)->fld[5].rtx, tmp105
	movq	%rax, -24(%rbp)	# tmp105, p
	jmp	.L166	#
.L173:
.LBB12:
	.loc 1 877 0
	movq	-24(%rbp), %rax	# p, tmp106
	movzbl	2(%rax), %eax	# p_1->mode, D.14291
	testb	%al, %al	# D.14291
	je	.L167	#,
	.loc 1 878 0
	jmp	.L168	#
.L167:
	.loc 1 879 0
	movq	-24(%rbp), %rax	# p, tmp107
	movq	8(%rax), %rax	# p_1->fld[0].rtx, D.14292
	movzwl	(%rax), %eax	# _17->code, D.14293
	movzwl	%ax, %eax	# D.14293, D.14288
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.14294
	cmpb	$105, %al	#, D.14294
	jne	.L169	#,
	.loc 1 879 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# p, tmp109
	movq	8(%rax), %rax	# p_1->fld[0].rtx, D.14292
	movq	32(%rax), %rax	# _21->fld[3].rtx, D.14292
	movzwl	(%rax), %eax	# _22->code, D.14293
	cmpw	$47, %ax	#, D.14293
	jne	.L170	#,
	.loc 1 879 0 discriminator 3
	movq	-24(%rbp), %rax	# p, tmp110
	movq	8(%rax), %rax	# p_1->fld[0].rtx, D.14292
	movq	32(%rax), %rax	# _24->fld[3].rtx, iftmp.86
	jmp	.L172	#
.L170:
	.loc 1 879 0 discriminator 4
	movq	-24(%rbp), %rax	# p, tmp111
	movq	8(%rax), %rax	# p_1->fld[0].rtx, D.14292
	movq	32(%rax), %rdx	# _26->fld[3].rtx, D.14292
	movq	-24(%rbp), %rax	# p, tmp112
	movq	8(%rax), %rax	# p_1->fld[0].rtx, D.14292
	movq	%rdx, %rsi	# D.14292,
	movq	%rax, %rdi	# D.14292,
	call	single_set_2	#
	jmp	.L172	#
.L169:
	.loc 1 879 0 discriminator 2
	movl	$0, %eax	#, iftmp.85
.L172:
	.loc 1 879 0 discriminator 5
	movq	%rax, -16(%rbp)	# iftmp.85, s
	.loc 1 880 0 is_stmt 1 discriminator 5
	cmpq	$0, -16(%rbp)	#, s
	je	.L168	#,
	.loc 1 881 0
	movq	-16(%rbp), %rax	# s, tmp113
	movq	8(%rax), %rax	# s_32->fld[0].rtx, D.14292
	movzwl	(%rax), %eax	# _33->code, D.14293
	cmpw	$61, %ax	#, D.14293
	jne	.L168	#,
	.loc 1 882 0
	movq	-16(%rbp), %rax	# s, tmp114
	movq	8(%rax), %rax	# s_32->fld[0].rtx, D.14292
	movl	8(%rax), %edx	# _35->fld[0].rtuint, D.14289
	movq	-40(%rbp), %rax	# reg, tmp115
	movl	8(%rax), %eax	# reg_9(D)->fld[0].rtuint, D.14289
	cmpl	%eax, %edx	# D.14289, D.14289
	jne	.L168	#,
	.loc 1 885 0
	movl	$0, %eax	#, D.14288
	jmp	.L165	#
.L168:
.LBE12:
	.loc 1 873 0
	movq	-24(%rbp), %rax	# p, tmp116
	movq	16(%rax), %rax	# p_1->fld[1].rtx, tmp117
	movq	%rax, -24(%rbp)	# tmp117, p
.L166:
	.loc 1 873 0 is_stmt 0 discriminator 1
	cmpq	$0, -24(%rbp)	#, p
	jne	.L173	#,
	.loc 1 889 0 is_stmt 1
	movq	-56(%rbp), %rax	# first, tmp118
	movq	%rax, -24(%rbp)	# tmp118, p
	jmp	.L174	#
.L183:
.LBB13:
	.loc 1 893 0
	movq	-24(%rbp), %rax	# p, tmp119
	movzwl	(%rax), %eax	# p_2->code, D.14293
	movzwl	%ax, %eax	# D.14293, D.14288
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.14294
	cmpb	$105, %al	#, D.14294
	je	.L175	#,
	.loc 1 894 0
	jmp	.L176	#
.L175:
	.loc 1 895 0
	movq	-24(%rbp), %rax	# p, tmp121
	movzwl	(%rax), %eax	# p_2->code, D.14293
	movzwl	%ax, %eax	# D.14293, D.14288
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.14294
	cmpb	$105, %al	#, D.14294
	jne	.L177	#,
	.loc 1 895 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# p, tmp123
	movq	32(%rax), %rax	# p_2->fld[3].rtx, D.14292
	movzwl	(%rax), %eax	# _48->code, D.14293
	cmpw	$47, %ax	#, D.14293
	jne	.L178	#,
	.loc 1 895 0 discriminator 3
	movq	-24(%rbp), %rax	# p, tmp124
	movq	32(%rax), %rax	# p_2->fld[3].rtx, iftmp.88
	jmp	.L180	#
.L178:
	.loc 1 895 0 discriminator 4
	movq	-24(%rbp), %rax	# p, tmp125
	movq	32(%rax), %rdx	# p_2->fld[3].rtx, D.14292
	movq	-24(%rbp), %rax	# p, tmp126
	movq	%rdx, %rsi	# D.14292,
	movq	%rax, %rdi	# tmp126,
	call	single_set_2	#
	jmp	.L180	#
.L177:
	.loc 1 895 0 discriminator 2
	movl	$0, %eax	#, iftmp.87
.L180:
	.loc 1 895 0 discriminator 5
	movq	%rax, -8(%rbp)	# iftmp.87, s
	.loc 1 896 0 is_stmt 1 discriminator 5
	cmpq	$0, -8(%rbp)	#, s
	je	.L176	#,
	.loc 1 897 0
	movq	-8(%rbp), %rax	# s, tmp127
	movq	8(%rax), %rax	# s_55->fld[0].rtx, D.14292
	movzwl	(%rax), %eax	# _56->code, D.14293
	cmpw	$61, %ax	#, D.14293
	jne	.L176	#,
	.loc 1 898 0
	movq	-8(%rbp), %rax	# s, tmp128
	movq	8(%rax), %rax	# s_55->fld[0].rtx, D.14292
	movl	8(%rax), %edx	# _58->fld[0].rtuint, D.14289
	movq	-40(%rbp), %rax	# reg, tmp129
	movl	8(%rax), %eax	# reg_9(D)->fld[0].rtuint, D.14289
	cmpl	%eax, %edx	# D.14289, D.14289
	jne	.L176	#,
	.loc 1 902 0
	movq	-24(%rbp), %rax	# p, tmp130
	movl	$0, %edx	#,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp130,
	call	find_reg_note	#
	testq	%rax, %rax	# D.14292
	je	.L181	#,
	.loc 1 903 0
	movl	$1, %eax	#, D.14288
	jmp	.L165	#
.L181:
	.loc 1 904 0
	movl	$0, %eax	#, D.14288
	jmp	.L165	#
.L176:
.LBE13:
	.loc 1 889 0
	movq	-24(%rbp), %rax	# p, tmp131
	movq	24(%rax), %rax	# p_2->fld[2].rtx, tmp132
	movq	%rax, -24(%rbp)	# tmp132, p
.L174:
	.loc 1 889 0 is_stmt 0 discriminator 1
	cmpq	$0, -24(%rbp)	#, p
	je	.L182	#,
	.loc 1 889 0 discriminator 2
	movq	-24(%rbp), %rax	# p, tmp133
	cmpq	-48(%rbp), %rax	# insn, tmp133
	jne	.L183	#,
.L182:
	.loc 1 908 0 is_stmt 1
	movl	$0, %eax	#, D.14288
.L165:
	.loc 1 909 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	reg_is_remote_constant_p, .-reg_is_remote_constant_p
	.section	.rodata
.LC0:
	.string	"Fixed operand of insn %d.\n"
	.text
	.type	fixup_match_2, @function
fixup_match_2:
.LFB14:
	.loc 1 933 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$96, %rsp	#,
	movq	%rdi, -56(%rbp)	# insn, insn
	movq	%rsi, -64(%rbp)	# dst, dst
	movq	%rdx, -72(%rbp)	# src, src
	movq	%rcx, -80(%rbp)	# offset, offset
	movq	%r8, -88(%rbp)	# regmove_dump_file, regmove_dump_file
	.loc 1 934 0
	movq	$0, -32(%rbp)	#, dst_death
	.loc 1 935 0
	movl	$0, -44(%rbp)	#, num_calls
	.loc 1 940 0
	movq	-72(%rbp), %rax	# src, tmp122
	movl	8(%rax), %edx	# src_16(D)->fld[0].rtuint, D.14296
	movq	-56(%rbp), %rax	# insn, tmp123
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp123,
	call	find_regno_note	#
	testq	%rax, %rax	# D.14297
	je	.L185	#,
	.loc 1 941 0
	movl	$0, %eax	#, D.14295
	jmp	.L186	#
.L185:
	.loc 1 945 0
	movl	$0, -48(%rbp)	#, length
	movq	-56(%rbp), %rax	# insn, tmp124
	movq	16(%rax), %rax	# insn_18(D)->fld[1].rtx, tmp125
	movq	%rax, -40(%rbp)	# tmp125, p
	jmp	.L187	#
.L205:
.LBB14:
	.loc 1 951 0
	movq	-40(%rbp), %rax	# p, tmp126
	movq	%rax, %rdi	# tmp126,
	call	perhaps_ends_bb_p	#
	testl	%eax, %eax	# D.14295
	je	.L188	#,
	.loc 1 952 0
	jmp	.L189	#
.L188:
	.loc 1 953 0
	movq	-40(%rbp), %rax	# p, tmp127
	movzwl	(%rax), %eax	# p_1->code, D.14298
	movzwl	%ax, %eax	# D.14298, D.14295
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.14299
	cmpb	$105, %al	#, D.14299
	je	.L190	#,
	.loc 1 954 0
	jmp	.L191	#
.L190:
	.loc 1 956 0
	movq	-64(%rbp), %rax	# dst, tmp129
	movl	8(%rax), %edx	# dst_27(D)->fld[0].rtuint, D.14296
	movq	-40(%rbp), %rax	# p, tmp130
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp130,
	call	find_regno_note	#
	testq	%rax, %rax	# D.14297
	je	.L192	#,
	.loc 1 957 0
	movq	-40(%rbp), %rax	# p, tmp131
	movq	%rax, -32(%rbp)	# tmp131, dst_death
.L192:
	.loc 1 958 0
	cmpq	$0, -32(%rbp)	#, dst_death
	jne	.L193	#,
	.loc 1 959 0
	addl	$1, -48(%rbp)	#, length
.L193:
	.loc 1 961 0
	movq	-40(%rbp), %rax	# p, tmp132
	movzwl	(%rax), %eax	# p_1->code, D.14298
	movzwl	%ax, %eax	# D.14298, D.14295
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.14299
	cmpb	$105, %al	#, D.14299
	jne	.L194	#,
	.loc 1 961 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# p, tmp134
	movq	32(%rax), %rax	# p_1->fld[3].rtx, D.14297
	movzwl	(%rax), %eax	# _35->code, D.14298
	cmpw	$47, %ax	#, D.14298
	jne	.L195	#,
	.loc 1 961 0 discriminator 3
	movq	-40(%rbp), %rax	# p, tmp135
	movq	32(%rax), %rax	# p_1->fld[3].rtx, iftmp.90
	jmp	.L197	#
.L195:
	.loc 1 961 0 discriminator 4
	movq	-40(%rbp), %rax	# p, tmp136
	movq	32(%rax), %rdx	# p_1->fld[3].rtx, D.14297
	movq	-40(%rbp), %rax	# p, tmp137
	movq	%rdx, %rsi	# D.14297,
	movq	%rax, %rdi	# tmp137,
	call	single_set_2	#
	jmp	.L197	#
.L194:
	.loc 1 961 0 discriminator 2
	movl	$0, %eax	#, iftmp.89
.L197:
	.loc 1 961 0 discriminator 5
	movq	%rax, -24(%rbp)	# iftmp.89, pset
	.loc 1 962 0 is_stmt 1 discriminator 5
	cmpq	$0, -24(%rbp)	#, pset
	je	.L198	#,
	.loc 1 962 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# pset, tmp138
	movq	8(%rax), %rax	# pset_42->fld[0].rtx, D.14297
	cmpq	-64(%rbp), %rax	# dst, D.14297
	jne	.L198	#,
	.loc 1 963 0 is_stmt 1
	movq	-24(%rbp), %rax	# pset, tmp139
	movq	16(%rax), %rax	# pset_42->fld[1].rtx, D.14297
	movzwl	(%rax), %eax	# _44->code, D.14298
	cmpw	$75, %ax	#, D.14298
	jne	.L198	#,
	.loc 1 964 0
	movq	-24(%rbp), %rax	# pset, tmp140
	movq	16(%rax), %rax	# pset_42->fld[1].rtx, D.14297
	movq	8(%rax), %rax	# _46->fld[0].rtx, D.14297
	cmpq	-72(%rbp), %rax	# src, D.14297
	jne	.L198	#,
	.loc 1 965 0
	movq	-24(%rbp), %rax	# pset, tmp141
	movq	16(%rax), %rax	# pset_42->fld[1].rtx, D.14297
	movq	16(%rax), %rax	# _48->fld[1].rtx, D.14297
	movzwl	(%rax), %eax	# _49->code, D.14298
	cmpw	$54, %ax	#, D.14298
	jne	.L198	#,
.LBB15:
	.loc 1 968 0
	movq	-80(%rbp), %rax	# offset, tmp142
	movq	8(%rax), %rdx	# offset_51(D)->fld[0].rtwint, D.14300
	movq	-24(%rbp), %rax	# pset, tmp143
	movq	16(%rax), %rax	# pset_42->fld[1].rtx, D.14297
	movq	16(%rax), %rax	# _53->fld[1].rtx, D.14297
	movq	8(%rax), %rax	# _54->fld[0].rtwint, D.14300
	.loc 1 967 0
	subq	%rax, %rdx	# D.14300, tmp144
	movq	%rdx, %rax	# tmp144, tmp144
	movq	%rax, -16(%rbp)	# tmp144, newconst
	.loc 1 969 0
	movq	-16(%rbp), %rax	# newconst, tmp145
	movq	%rax, %rsi	# tmp145,
	movl	$0, %edi	#,
	call	gen_rtx_CONST_INT	#
	movq	%rax, %rdx	#, D.14297
	movq	-64(%rbp), %rcx	# dst, tmp146
	movq	-64(%rbp), %rax	# dst, tmp147
	movq	%rcx, %rsi	# tmp146,
	movq	%rax, %rdi	# tmp147,
	call	gen_add3_insn	#
	movq	%rax, -8(%rbp)	# tmp148, add
	.loc 1 971 0
	cmpq	$0, -8(%rbp)	#, add
	je	.L198	#,
	.loc 1 971 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# insn, tmp149
	leaq	32(%rax), %rsi	#, D.14301
	movq	-8(%rbp), %rdx	# add, tmp150
	movq	-56(%rbp), %rax	# insn, tmp151
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# tmp151,
	call	validate_change	#
	testl	%eax, %eax	# D.14295
	je	.L198	#,
	.loc 1 974 0 is_stmt 1
	cmpq	$0, -32(%rbp)	#, dst_death
	je	.L199	#,
	.loc 1 976 0
	movq	-64(%rbp), %rax	# dst, tmp152
	movl	8(%rax), %eax	# dst_27(D)->fld[0].rtuint, D.14296
	movq	-32(%rbp), %rdx	# dst_death, tmp153
	movq	%rdx, %rsi	# tmp153,
	movl	%eax, %edi	# D.14296,
	call	remove_death	#
	.loc 1 977 0
	movq	reg_n_info(%rip), %rax	# reg_n_info, reg_n_info.91
	movq	-64(%rbp), %rdx	# dst, tmp154
	movl	8(%rdx), %edx	# dst_27(D)->fld[0].rtuint, D.14296
	movl	%edx, %edx	# D.14296, tmp155
	addq	$4, %rdx	#, tmp156
	movq	(%rax,%rdx,8), %rax	# reg_n_info.91_62->data.reg, D.14302
	movq	reg_n_info(%rip), %rdx	# reg_n_info, reg_n_info.92
	movq	-64(%rbp), %rcx	# dst, tmp157
	movl	8(%rcx), %ecx	# dst_27(D)->fld[0].rtuint, D.14296
	movl	%ecx, %ecx	# D.14296, tmp158
	addq	$4, %rcx	#, tmp159
	movq	(%rdx,%rcx,8), %rdx	# reg_n_info.92_65->data.reg, D.14302
	movl	28(%rdx), %ecx	# _67->live_length, D.14295
	movl	-48(%rbp), %edx	# length, tmp160
	addl	%ecx, %edx	# D.14295, D.14295
	movl	%edx, 28(%rax)	# D.14295, _64->live_length
	.loc 1 978 0
	movq	reg_n_info(%rip), %rax	# reg_n_info, reg_n_info.93
	movq	-64(%rbp), %rdx	# dst, tmp161
	movl	8(%rdx), %edx	# dst_27(D)->fld[0].rtuint, D.14296
	movl	%edx, %edx	# D.14296, tmp162
	addq	$4, %rdx	#, tmp163
	movq	(%rax,%rdx,8), %rax	# reg_n_info.93_70->data.reg, D.14302
	movq	reg_n_info(%rip), %rdx	# reg_n_info, reg_n_info.94
	movq	-64(%rbp), %rcx	# dst, tmp164
	movl	8(%rcx), %ecx	# dst_27(D)->fld[0].rtuint, D.14296
	movl	%ecx, %ecx	# D.14296, tmp165
	addq	$4, %rcx	#, tmp166
	movq	(%rdx,%rcx,8), %rdx	# reg_n_info.94_73->data.reg, D.14302
	movl	32(%rdx), %ecx	# _75->calls_crossed, D.14295
	movl	-44(%rbp), %edx	# num_calls, tmp167
	addl	%ecx, %edx	# D.14295, D.14295
	movl	%edx, 32(%rax)	# D.14295, _72->calls_crossed
.L199:
	.loc 1 981 0
	cmpq	$0, -88(%rbp)	#, regmove_dump_file
	je	.L200	#,
	.loc 1 982 0
	movq	-56(%rbp), %rax	# insn, tmp168
	movl	8(%rax), %edx	# insn_18(D)->fld[0].rtint, D.14295
	movq	-88(%rbp), %rax	# regmove_dump_file, tmp169
	movl	$.LC0, %esi	#,
	movq	%rax, %rdi	# tmp169,
	movl	$0, %eax	#,
	call	fprintf	#
.L200:
	.loc 1 1015 0
	movl	$1, %eax	#, D.14295
	jmp	.L186	#
.L198:
.LBE15:
	.loc 1 1019 0
	movq	-40(%rbp), %rax	# p, tmp170
	movq	32(%rax), %rdx	# p_1->fld[3].rtx, D.14297
	movq	-64(%rbp), %rax	# dst, tmp171
	movq	%rdx, %rsi	# D.14297,
	movq	%rax, %rdi	# tmp171,
	call	reg_set_p	#
	testl	%eax, %eax	# D.14295
	je	.L201	#,
	.loc 1 1020 0
	jmp	.L189	#
.L201:
	.loc 1 1028 0
	movq	-40(%rbp), %rax	# p, tmp172
	movzwl	(%rax), %eax	# p_1->code, D.14298
	cmpw	$34, %ax	#, D.14298
	jne	.L202	#,
	.loc 1 1030 0
	cmpq	$0, -32(%rbp)	#, dst_death
	jne	.L203	#,
	.loc 1 1031 0
	addl	$1, -44(%rbp)	#, num_calls
.L203:
	.loc 1 1033 0
	movq	reg_n_info(%rip), %rax	# reg_n_info, reg_n_info.95
	movq	-72(%rbp), %rdx	# src, tmp173
	movl	8(%rdx), %edx	# src_16(D)->fld[0].rtuint, D.14296
	movl	%edx, %edx	# D.14296, tmp174
	addq	$4, %rdx	#, tmp175
	movq	(%rax,%rdx,8), %rax	# reg_n_info.95_85->data.reg, D.14302
	movl	32(%rax), %eax	# _87->calls_crossed, D.14295
	testl	%eax, %eax	# D.14295
	jne	.L204	#,
	.loc 1 1034 0
	jmp	.L189	#
.L204:
	.loc 1 1036 0
	movq	-64(%rbp), %rax	# dst, tmp176
	movl	8(%rax), %eax	# dst_27(D)->fld[0].rtuint, D.14296
	movl	%eax, %eax	# D.14296, tmp177
	movzbl	call_used_regs(%rax), %eax	# call_used_regs, D.14299
	testb	%al, %al	# D.14299
	jne	.L189	#,
	.loc 1 1037 0
	movq	-64(%rbp), %rdx	# dst, tmp178
	movq	-40(%rbp), %rax	# p, tmp179
	movl	$49, %esi	#,
	movq	%rax, %rdi	# tmp179,
	call	find_reg_fusage	#
	testl	%eax, %eax	# D.14295
	jne	.L189	#,
	jmp	.L191	#
.L202:
	.loc 1 1040 0
	movq	-40(%rbp), %rax	# p, tmp180
	movq	32(%rax), %rdx	# p_1->fld[3].rtx, D.14297
	movq	-72(%rbp), %rax	# src, tmp181
	movq	%rdx, %rsi	# D.14297,
	movq	%rax, %rdi	# tmp181,
	call	reg_set_p	#
	testl	%eax, %eax	# D.14295
	je	.L191	#,
	.loc 1 1041 0
	jmp	.L189	#
.L191:
.LBE14:
	.loc 1 945 0
	movq	-40(%rbp), %rax	# p, tmp182
	movq	16(%rax), %rax	# p_1->fld[1].rtx, tmp183
	movq	%rax, -40(%rbp)	# tmp183, p
.L187:
	.loc 1 945 0 is_stmt 0 discriminator 1
	cmpq	$0, -40(%rbp)	#, p
	jne	.L205	#,
.L189:
	.loc 1 1044 0 is_stmt 1
	movl	$0, %eax	#, D.14295
.L186:
	.loc 1 1045 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	fixup_match_2, .-fixup_match_2
	.section	.rodata
.LC1:
	.string	"backward"
.LC2:
	.string	"forward"
.LC3:
	.string	"Starting %s pass...\n"
.LC4:
	.string	"Starting backward pass...\n"
	.align 8
.LC5:
	.string	"Could fix operand %d of insn %d matching operand %d.\n"
	.align 8
.LC6:
	.string	"Fixed operand %d of insn %d matching operand %d.\n"
	.text
	.globl	regmove_optimize
	.type	regmove_optimize, @function
regmove_optimize:
.LFB15:
	.loc 1 1058 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$760, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -728(%rbp)	# f, f
	movl	%esi, -732(%rbp)	# nregs, nregs
	movq	%rdx, -744(%rbp)	# regmove_dump_file, regmove_dump_file
	.loc 1 1059 0
	call	get_max_uid	#
	movl	%eax, -684(%rbp)	# tmp351, old_max_uid
	.loc 1 1068 0
	movl	flag_non_call_exceptions(%rip), %eax	# flag_non_call_exceptions, flag_non_call_exceptions.96
	testl	%eax, %eax	# flag_non_call_exceptions.96
	jne	.L206	#,
	.loc 1 1073 0
	call	discover_flags_reg	#
	movq	%rax, %rdi	# D.14304,
	call	mark_flags_life_zones	#
	.loc 1 1075 0
	movl	-732(%rbp), %eax	# nregs, tmp352
	cltq
	salq	$2, %rax	#, D.14305
	movq	%rax, %rdi	# D.14305,
	call	xmalloc	#
	movq	%rax, regno_src_regno(%rip)	# regno_src_regno.97, regno_src_regno
	.loc 1 1076 0
	movl	-732(%rbp), %eax	# nregs, tmp354
	movl	%eax, -712(%rbp)	# tmp354, i
	jmp	.L209	#
.L210:
	.loc 1 1076 0 is_stmt 0 discriminator 2
	movq	regno_src_regno(%rip), %rax	# regno_src_regno, regno_src_regno.98
	movl	-712(%rbp), %edx	# i, tmp355
	movslq	%edx, %rdx	# tmp355, D.14305
	salq	$2, %rdx	#, D.14305
	addq	%rdx, %rax	# D.14305, D.14306
	movl	$-1, (%rax)	#, *_58
.L209:
	.loc 1 1076 0 discriminator 1
	subl	$1, -712(%rbp)	#, i
	cmpl	$0, -712(%rbp)	#, i
	jns	.L210	#,
	.loc 1 1078 0 is_stmt 1
	movl	-684(%rbp), %eax	# old_max_uid, tmp356
	addl	$1, %eax	#, D.14307
	cltq
	salq	$2, %rax	#, D.14305
	movq	%rax, %rdi	# D.14305,
	call	xmalloc	#
	movq	%rax, regmove_bb_head(%rip)	# regmove_bb_head.99, regmove_bb_head
	.loc 1 1079 0
	movl	-684(%rbp), %eax	# old_max_uid, tmp358
	movl	%eax, -712(%rbp)	# tmp358, i
	jmp	.L211	#
.L212:
	.loc 1 1079 0 is_stmt 0 discriminator 2
	movq	regmove_bb_head(%rip), %rax	# regmove_bb_head, regmove_bb_head.100
	movl	-712(%rbp), %edx	# i, tmp359
	movslq	%edx, %rdx	# tmp359, D.14305
	salq	$2, %rdx	#, D.14305
	addq	%rdx, %rax	# D.14305, D.14306
	movl	$-1, (%rax)	#, *_67
	subl	$1, -712(%rbp)	#, i
.L211:
	.loc 1 1079 0 discriminator 1
	cmpl	$0, -712(%rbp)	#, i
	jns	.L212	#,
	.loc 1 1080 0 is_stmt 1
	movl	$0, -712(%rbp)	#, i
	jmp	.L213	#
.L214:
	.loc 1 1081 0 discriminator 2
	movq	regmove_bb_head(%rip), %rdx	# regmove_bb_head, regmove_bb_head.101
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.102
	movl	-712(%rbp), %ecx	# i, tmp361
	movslq	%ecx, %rcx	# tmp361, tmp360
	addq	$4, %rcx	#, tmp362
	movq	(%rax,%rcx,8), %rax	# basic_block_info.102_72->data.bb, D.14308
	movq	(%rax), %rax	# _73->head, D.14304
	movl	8(%rax), %eax	# _74->fld[0].rtint, D.14307
	cltq
	salq	$2, %rax	#, D.14305
	addq	%rax, %rdx	# D.14305, D.14306
	movl	-712(%rbp), %eax	# i, tmp363
	movl	%eax, (%rdx)	# tmp363, *_78
	.loc 1 1080 0 discriminator 2
	addl	$1, -712(%rbp)	#, i
.L213:
	.loc 1 1080 0 is_stmt 0 discriminator 1
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.103
	cmpl	%eax, -712(%rbp)	# n_basic_blocks.103, i
	jl	.L214	#,
	.loc 1 1085 0 is_stmt 1
	movl	$0, -716(%rbp)	#, pass
	jmp	.L215	#
.L260:
	.loc 1 1087 0
	movl	flag_regmove(%rip), %eax	# flag_regmove, flag_regmove.104
	testl	%eax, %eax	# flag_regmove.104
	jne	.L216	#,
	.loc 1 1087 0 is_stmt 0 discriminator 1
	movl	flag_expensive_optimizations(%rip), %eax	# flag_expensive_optimizations, flag_expensive_optimizations.105
	cmpl	%eax, -716(%rbp)	# flag_expensive_optimizations.105, pass
	jl	.L216	#,
	.loc 1 1088 0 is_stmt 1
	jmp	.L217	#
.L216:
	.loc 1 1090 0
	cmpq	$0, -744(%rbp)	#, regmove_dump_file
	je	.L218	#,
	.loc 1 1091 0
	cmpl	$0, -716(%rbp)	#, pass
	je	.L219	#,
	.loc 1 1091 0 is_stmt 0 discriminator 1
	movl	$.LC1, %eax	#, iftmp.106
	jmp	.L220	#
.L219:
	.loc 1 1091 0 discriminator 2
	movl	$.LC2, %eax	#, iftmp.106
.L220:
	.loc 1 1091 0 discriminator 3
	movq	-744(%rbp), %rcx	# regmove_dump_file, tmp364
	movq	%rax, %rdx	# iftmp.106,
	movl	$.LC3, %esi	#,
	movq	%rcx, %rdi	# tmp364,
	movl	$0, %eax	#,
	call	fprintf	#
.L218:
	.loc 1 1094 0 is_stmt 1
	cmpl	$0, -716(%rbp)	#, pass
	je	.L221	#,
	.loc 1 1094 0 is_stmt 0 discriminator 1
	call	get_last_insn	#
	jmp	.L222	#
.L221:
	.loc 1 1094 0 discriminator 2
	movq	-728(%rbp), %rax	# f, iftmp.107
.L222:
	.loc 1 1094 0 discriminator 3
	movq	%rax, -648(%rbp)	# iftmp.107, insn
	jmp	.L223	#
.L259:
.LBB16:
	.loc 1 1100 0 is_stmt 1
	movq	-648(%rbp), %rax	# insn, tmp365
	movzwl	(%rax), %eax	# insn_1->code, D.14309
	movzwl	%ax, %eax	# D.14309, D.14307
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.14310
	cmpb	$105, %al	#, D.14310
	jne	.L224	#,
	.loc 1 1100 0 is_stmt 0 discriminator 1
	movq	-648(%rbp), %rax	# insn, tmp367
	movq	32(%rax), %rax	# insn_1->fld[3].rtx, D.14304
	movzwl	(%rax), %eax	# _93->code, D.14309
	cmpw	$47, %ax	#, D.14309
	jne	.L225	#,
	.loc 1 1100 0 discriminator 3
	movq	-648(%rbp), %rax	# insn, tmp368
	movq	32(%rax), %rax	# insn_1->fld[3].rtx, iftmp.109
	jmp	.L227	#
.L225:
	.loc 1 1100 0 discriminator 4
	movq	-648(%rbp), %rax	# insn, tmp369
	movq	32(%rax), %rdx	# insn_1->fld[3].rtx, D.14304
	movq	-648(%rbp), %rax	# insn, tmp370
	movq	%rdx, %rsi	# D.14304,
	movq	%rax, %rdi	# tmp370,
	call	single_set_2	#
	jmp	.L227	#
.L224:
	.loc 1 1100 0 discriminator 2
	movl	$0, %eax	#, iftmp.108
.L227:
	.loc 1 1100 0 discriminator 5
	movq	%rax, -584(%rbp)	# iftmp.108, set
	.loc 1 1101 0 is_stmt 1 discriminator 5
	cmpq	$0, -584(%rbp)	#, set
	jne	.L228	#,
	.loc 1 1102 0
	jmp	.L229	#
.L228:
	.loc 1 1104 0
	movl	flag_expensive_optimizations(%rip), %eax	# flag_expensive_optimizations, flag_expensive_optimizations.110
	testl	%eax, %eax	# flag_expensive_optimizations.110
	je	.L230	#,
	.loc 1 1104 0 is_stmt 0 discriminator 1
	cmpl	$0, -716(%rbp)	#, pass
	jne	.L230	#,
	.loc 1 1105 0 is_stmt 1
	movq	-584(%rbp), %rax	# set, tmp371
	movq	16(%rax), %rax	# set_100->fld[1].rtx, D.14304
	movzwl	(%rax), %eax	# _102->code, D.14309
	cmpw	$120, %ax	#, D.14309
	je	.L231	#,
	.loc 1 1106 0
	movq	-584(%rbp), %rax	# set, tmp372
	movq	16(%rax), %rax	# set_100->fld[1].rtx, D.14304
	movzwl	(%rax), %eax	# _104->code, D.14309
	cmpw	$121, %ax	#, D.14309
	jne	.L230	#,
.L231:
	.loc 1 1107 0
	movq	-584(%rbp), %rax	# set, tmp373
	movq	16(%rax), %rax	# set_100->fld[1].rtx, D.14304
	movq	8(%rax), %rax	# _106->fld[0].rtx, D.14304
	movzwl	(%rax), %eax	# _107->code, D.14309
	cmpw	$61, %ax	#, D.14309
	jne	.L230	#,
	.loc 1 1108 0
	movq	-584(%rbp), %rax	# set, tmp374
	movq	8(%rax), %rax	# set_100->fld[0].rtx, D.14304
	movzwl	(%rax), %eax	# _109->code, D.14309
	cmpw	$61, %ax	#, D.14309
	jne	.L230	#,
	.loc 1 1109 0
	movq	-584(%rbp), %rax	# set, tmp375
	movq	16(%rax), %rdx	# set_100->fld[1].rtx, D.14304
	movq	-584(%rbp), %rax	# set, tmp376
	movq	8(%rax), %rcx	# set_100->fld[0].rtx, D.14304
	movq	-648(%rbp), %rax	# insn, tmp377
	movq	%rcx, %rsi	# D.14304,
	movq	%rax, %rdi	# tmp377,
	call	optimize_reg_copy_3	#
.L230:
	.loc 1 1111 0
	movl	flag_expensive_optimizations(%rip), %eax	# flag_expensive_optimizations, flag_expensive_optimizations.111
	testl	%eax, %eax	# flag_expensive_optimizations.111
	je	.L232	#,
	.loc 1 1111 0 is_stmt 0 discriminator 1
	cmpl	$0, -716(%rbp)	#, pass
	jne	.L232	#,
	.loc 1 1112 0 is_stmt 1
	movq	-584(%rbp), %rax	# set, tmp378
	movq	16(%rax), %rax	# set_100->fld[1].rtx, D.14304
	movzwl	(%rax), %eax	# _114->code, D.14309
	cmpw	$61, %ax	#, D.14309
	jne	.L232	#,
	.loc 1 1113 0
	movq	-584(%rbp), %rax	# set, tmp379
	movq	8(%rax), %rax	# set_100->fld[0].rtx, D.14304
	movzwl	(%rax), %eax	# _116->code, D.14309
	cmpw	$61, %ax	#, D.14309
	jne	.L232	#,
	.loc 1 1118 0
	movq	-584(%rbp), %rax	# set, tmp380
	movq	16(%rax), %rdx	# set_100->fld[1].rtx, D.14304
	movq	-648(%rbp), %rax	# insn, tmp381
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp381,
	call	find_reg_note	#
	testq	%rax, %rax	# D.14304
	jne	.L233	#,
	.loc 1 1119 0
	movq	-584(%rbp), %rax	# set, tmp382
	movq	16(%rax), %rdx	# set_100->fld[1].rtx, D.14304
	movq	-584(%rbp), %rax	# set, tmp383
	movq	8(%rax), %rcx	# set_100->fld[0].rtx, D.14304
	movq	-648(%rbp), %rax	# insn, tmp384
	movq	%rcx, %rsi	# D.14304,
	movq	%rax, %rdi	# tmp384,
	call	optimize_reg_copy_1	#
	testl	%eax, %eax	# D.14307
	je	.L232	#,
.L233:
	.loc 1 1120 0
	movq	-584(%rbp), %rax	# set, tmp385
	movq	8(%rax), %rax	# set_100->fld[0].rtx, D.14304
	movl	8(%rax), %eax	# _123->fld[0].rtuint, D.14311
	cmpl	$52, %eax	#, D.14311
	jbe	.L232	#,
	.loc 1 1123 0
	movq	-584(%rbp), %rax	# set, tmp386
	movq	16(%rax), %rax	# set_100->fld[1].rtx, D.14304
	movl	8(%rax), %eax	# _125->fld[0].rtuint, D.14311
	cmpl	$52, %eax	#, D.14311
	jbe	.L234	#,
	.loc 1 1124 0
	movq	-584(%rbp), %rax	# set, tmp387
	movq	16(%rax), %rdx	# set_100->fld[1].rtx, D.14304
	movq	-584(%rbp), %rax	# set, tmp388
	movq	8(%rax), %rcx	# set_100->fld[0].rtx, D.14304
	movq	-648(%rbp), %rax	# insn, tmp389
	movq	%rcx, %rsi	# D.14304,
	movq	%rax, %rdi	# tmp389,
	call	optimize_reg_copy_2	#
.L234:
	.loc 1 1125 0
	movq	regno_src_regno(%rip), %rdx	# regno_src_regno, regno_src_regno.112
	movq	-584(%rbp), %rax	# set, tmp390
	movq	8(%rax), %rax	# set_100->fld[0].rtx, D.14304
	movl	8(%rax), %eax	# _130->fld[0].rtuint, D.14311
	movl	%eax, %eax	# D.14311, D.14305
	salq	$2, %rax	#, D.14305
	addq	%rdx, %rax	# regno_src_regno.112, D.14306
	movl	(%rax), %eax	# *_134, D.14307
	testl	%eax, %eax	# D.14307
	jns	.L232	#,
	.loc 1 1126 0
	movq	-584(%rbp), %rax	# set, tmp391
	movq	16(%rax), %rdx	# set_100->fld[1].rtx, D.14304
	movq	-584(%rbp), %rax	# set, tmp392
	movq	8(%rax), %rax	# set_100->fld[0].rtx, D.14304
	cmpq	%rax, %rdx	# D.14304, D.14304
	je	.L232	#,
.LBB17:
	.loc 1 1128 0
	movq	-584(%rbp), %rax	# set, tmp393
	movq	16(%rax), %rax	# set_100->fld[1].rtx, D.14304
	movl	8(%rax), %eax	# _138->fld[0].rtuint, D.14311
	movl	%eax, -704(%rbp)	# D.14311, srcregno
	.loc 1 1129 0
	movq	regno_src_regno(%rip), %rax	# regno_src_regno, regno_src_regno.113
	movl	-704(%rbp), %edx	# srcregno, tmp394
	movslq	%edx, %rdx	# tmp394, D.14305
	salq	$2, %rdx	#, D.14305
	addq	%rdx, %rax	# D.14305, D.14306
	movl	(%rax), %eax	# *_144, D.14307
	testl	%eax, %eax	# D.14307
	js	.L235	#,
	.loc 1 1130 0
	movq	regno_src_regno(%rip), %rax	# regno_src_regno, regno_src_regno.114
	movl	-704(%rbp), %edx	# srcregno, tmp395
	movslq	%edx, %rdx	# tmp395, D.14305
	salq	$2, %rdx	#, D.14305
	addq	%rdx, %rax	# D.14305, D.14306
	movl	(%rax), %eax	# *_149, tmp396
	movl	%eax, -704(%rbp)	# tmp396, srcregno
.L235:
	.loc 1 1131 0
	movq	regno_src_regno(%rip), %rdx	# regno_src_regno, regno_src_regno.115
	movq	-584(%rbp), %rax	# set, tmp397
	movq	8(%rax), %rax	# set_100->fld[0].rtx, D.14304
	movl	8(%rax), %eax	# _152->fld[0].rtuint, D.14311
	movl	%eax, %eax	# D.14311, D.14305
	salq	$2, %rax	#, D.14305
	addq	%rax, %rdx	# D.14305, D.14306
	movl	-704(%rbp), %eax	# srcregno, tmp398
	movl	%eax, (%rdx)	# tmp398, *_156
.L232:
.LBE17:
	.loc 1 1135 0
	movl	flag_regmove(%rip), %eax	# flag_regmove, flag_regmove.116
	testl	%eax, %eax	# flag_regmove.116
	jne	.L236	#,
	.loc 1 1136 0
	jmp	.L229	#
.L236:
	.loc 1 1138 0
	leaq	-496(%rbp), %rdx	#, tmp399
	movq	-648(%rbp), %rax	# insn, tmp400
	movq	%rdx, %rsi	# tmp399,
	movq	%rax, %rdi	# tmp400,
	call	find_matches	#
	testl	%eax, %eax	# D.14307
	jne	.L237	#,
	.loc 1 1139 0
	jmp	.L229	#
.L237:
	.loc 1 1148 0
	movl	$0, -708(%rbp)	#, op_no
	jmp	.L238	#
.L256:
.LBB18:
	.loc 1 1153 0
	movl	-708(%rbp), %eax	# op_no, tmp402
	cltq
	movl	-496(%rbp,%rax,4), %eax	# match.with, tmp403
	movl	%eax, -680(%rbp)	# tmp403, match_no
	.loc 1 1156 0
	cmpl	$0, -680(%rbp)	#, match_no
	jns	.L239	#,
	.loc 1 1157 0
	jmp	.L240	#
.L239:
	.loc 1 1159 0
	movl	-708(%rbp), %eax	# op_no, tmp405
	cltq
	movq	recog_data(,%rax,8), %rax	# recog_data.operand, tmp406
	movq	%rax, -576(%rbp)	# tmp406, src
	.loc 1 1160 0
	movl	-680(%rbp), %eax	# match_no, tmp408
	cltq
	movq	recog_data(,%rax,8), %rax	# recog_data.operand, tmp409
	movq	%rax, -624(%rbp)	# tmp409, dst
	.loc 1 1162 0
	movq	-576(%rbp), %rax	# src, tmp410
	movzwl	(%rax), %eax	# src_163->code, D.14309
	cmpw	$61, %ax	#, D.14309
	je	.L241	#,
	.loc 1 1163 0
	jmp	.L240	#
.L241:
	.loc 1 1165 0
	movq	-576(%rbp), %rax	# src, tmp411
	movq	%rax, -616(%rbp)	# tmp411, src_subreg
	.loc 1 1166 0
	movq	-624(%rbp), %rax	# dst, tmp412
	movzwl	(%rax), %eax	# dst_164->code, D.14309
	cmpw	$63, %ax	#, D.14309
	jne	.L242	#,
	.loc 1 1167 0
	movq	-624(%rbp), %rax	# dst, tmp413
	movzbl	2(%rax), %eax	# dst_164->mode, D.14312
	movzbl	%al, %eax	# D.14312, D.14307
	cltq
	movzbl	mode_size(%rax), %edx	# mode_size, D.14312
	.loc 1 1168 0
	movq	-624(%rbp), %rax	# dst, tmp415
	movq	8(%rax), %rax	# dst_164->fld[0].rtx, D.14304
	movzbl	2(%rax), %eax	# _171->mode, D.14312
	movzbl	%al, %eax	# D.14312, D.14307
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.14312
	.loc 1 1167 0
	cmpb	%al, %dl	# D.14312, D.14312
	jb	.L242	#,
	.loc 1 1172 0
	movq	-624(%rbp), %rax	# dst, tmp417
	movl	16(%rax), %eax	# dst_164->fld[1].rtuint, D.14311
	.loc 1 1171 0
	movl	%eax, %edx	# D.14311, D.14307
	movq	-624(%rbp), %rax	# dst, tmp418
	movq	8(%rax), %rax	# dst_164->fld[0].rtx, D.14304
	movzbl	2(%rax), %eax	# _177->mode, D.14312
	movzbl	%al, %eax	# D.14312, D.14313
	movq	-576(%rbp), %rcx	# src, tmp419
	movq	%rcx, %rsi	# tmp419,
	movl	%eax, %edi	# D.14313,
	call	gen_rtx_SUBREG	#
	movq	%rax, -616(%rbp)	# tmp420, src_subreg
	.loc 1 1173 0
	movq	-624(%rbp), %rax	# dst, tmp421
	movq	8(%rax), %rax	# dst_164->fld[0].rtx, tmp422
	movq	%rax, -624(%rbp)	# tmp422, dst
.L242:
	.loc 1 1175 0
	movq	-624(%rbp), %rax	# dst, tmp423
	movzwl	(%rax), %eax	# dst_20->code, D.14309
	cmpw	$61, %ax	#, D.14309
	jne	.L243	#,
	.loc 1 1176 0
	movq	-624(%rbp), %rax	# dst, tmp424
	movl	8(%rax), %eax	# dst_20->fld[0].rtuint, D.14311
	cmpl	$52, %eax	#, D.14311
	ja	.L244	#,
.L243:
	.loc 1 1177 0
	jmp	.L240	#
.L244:
	.loc 1 1179 0
	movq	-576(%rbp), %rax	# src, tmp425
	movl	8(%rax), %eax	# src_163->fld[0].rtuint, D.14311
	cmpl	$52, %eax	#, D.14311
	ja	.L245	#,
	.loc 1 1181 0
	movl	-708(%rbp), %eax	# op_no, tmp427
	cltq
	addq	$60, %rax	#, tmp428
	movl	-496(%rbp,%rax,4), %eax	# match.commutative, D.14307
	cmpl	-708(%rbp), %eax	# op_no, D.14307
	jge	.L246	#,
	.loc 1 1182 0
	movq	regno_src_regno(%rip), %rdx	# regno_src_regno, regno_src_regno.117
	movq	-624(%rbp), %rax	# dst, tmp429
	movl	8(%rax), %eax	# dst_20->fld[0].rtuint, D.14311
	movl	%eax, %eax	# D.14311, D.14305
	salq	$2, %rax	#, D.14305
	addq	%rax, %rdx	# D.14305, D.14306
	movq	-576(%rbp), %rax	# src, tmp430
	movl	8(%rax), %eax	# src_163->fld[0].rtuint, D.14311
	movl	%eax, (%rdx)	# D.14307, *_190
	.loc 1 1183 0
	jmp	.L240	#
.L246:
	jmp	.L240	#
.L245:
	.loc 1 1186 0
	movq	reg_n_info(%rip), %rax	# reg_n_info, reg_n_info.118
	movq	-576(%rbp), %rdx	# src, tmp431
	movl	8(%rdx), %edx	# src_163->fld[0].rtuint, D.14311
	movl	%edx, %edx	# D.14311, tmp432
	addq	$4, %rdx	#, tmp433
	movq	(%rax,%rdx,8), %rax	# reg_n_info.118_193->data.reg, D.14314
	movl	28(%rax), %eax	# _195->live_length, D.14307
	testl	%eax, %eax	# D.14307
	jns	.L247	#,
	.loc 1 1187 0
	jmp	.L240	#
.L247:
	.loc 1 1191 0
	movl	-708(%rbp), %eax	# op_no, tmp435
	cltq
	addq	$28, %rax	#, tmp436
	movl	-488(%rbp,%rax,4), %eax	# match.use, D.14315
	testl	%eax, %eax	# D.14315
	jne	.L248	#,
	.loc 1 1192 0
	movl	-680(%rbp), %eax	# match_no, tmp438
	cltq
	addq	$28, %rax	#, tmp439
	movl	-488(%rbp,%rax,4), %eax	# match.use, D.14315
	cmpl	$1, %eax	#, D.14315
	je	.L249	#,
.L248:
	.loc 1 1193 0
	jmp	.L240	#
.L249:
	.loc 1 1195 0
	movl	-680(%rbp), %eax	# match_no, tmp441
	cltq
	addq	$88, %rax	#, tmp442
	movl	-488(%rbp,%rax,4), %eax	# match.early_clobber, D.14307
	testl	%eax, %eax	# D.14307
	je	.L250	#,
	.loc 1 1196 0
	movq	-648(%rbp), %rax	# insn, tmp443
	movq	32(%rax), %rax	# insn_1->fld[3].rtx, D.14304
	movq	-576(%rbp), %rcx	# src, tmp444
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp444,
	movq	%rax, %rdi	# D.14304,
	call	count_occurrences	#
	cmpl	$1, %eax	#, D.14307
	jle	.L250	#,
	.loc 1 1197 0
	jmp	.L240	#
.L250:
	.loc 1 1200 0
	movl	-680(%rbp), %eax	# match_no, tmp446
	cltq
	movq	recog_data(,%rax,8), %rdx	# recog_data.operand, D.14304
	movq	-584(%rbp), %rax	# set, tmp447
	movq	8(%rax), %rax	# set_100->fld[0].rtx, D.14304
	cmpq	%rax, %rdx	# D.14304, D.14304
	je	.L251	#,
	.loc 1 1201 0
	jmp	.L240	#
.L251:
	.loc 1 1204 0
	movq	-624(%rbp), %rdx	# dst, tmp448
	movq	-576(%rbp), %rax	# src, tmp449
	movq	%rdx, %rsi	# tmp448,
	movq	%rax, %rdi	# tmp449,
	call	operands_match_p	#
	testl	%eax, %eax	# D.14307
	je	.L252	#,
	.loc 1 1205 0
	jmp	.L240	#
.L252:
	.loc 1 1208 0
	movl	-708(%rbp), %eax	# op_no, tmp451
	cltq
	addq	$60, %rax	#, tmp452
	movl	-496(%rbp,%rax,4), %eax	# match.commutative, D.14307
	testl	%eax, %eax	# D.14307
	js	.L253	#,
.LBB19:
	.loc 1 1210 0
	movl	-708(%rbp), %eax	# op_no, tmp454
	cltq
	addq	$60, %rax	#, tmp455
	movl	-496(%rbp,%rax,4), %eax	# match.commutative, D.14307
	cltq
	movq	recog_data(,%rax,8), %rax	# recog_data.operand, tmp457
	movq	%rax, -568(%rbp)	# tmp457, comm
	.loc 1 1211 0
	movq	-624(%rbp), %rdx	# dst, tmp458
	movq	-568(%rbp), %rax	# comm, tmp459
	movq	%rdx, %rsi	# tmp458,
	movq	%rax, %rdi	# tmp459,
	call	operands_match_p	#
	testl	%eax, %eax	# D.14307
	je	.L253	#,
	.loc 1 1212 0
	movq	-568(%rbp), %rax	# comm, tmp460
	movq	%rax, %rdi	# tmp460,
	call	replacement_quality	#
	movl	%eax, %ebx	#, D.14307
	.loc 1 1213 0
	movq	-576(%rbp), %rax	# src, tmp461
	movq	%rax, %rdi	# tmp461,
	call	replacement_quality	#
	.loc 1 1212 0
	cmpl	%eax, %ebx	# D.14307, D.14307
	jl	.L253	#,
	.loc 1 1214 0
	jmp	.L240	#
.L253:
.LBE19:
	.loc 1 1217 0
	movq	-576(%rbp), %rax	# src, tmp462
	movl	8(%rax), %eax	# src_163->fld[0].rtuint, D.14311
	movl	%eax, %edi	# D.14307,
	call	reg_preferred_class	#
	movl	%eax, -676(%rbp)	# tmp463, src_class
	.loc 1 1218 0
	movq	-624(%rbp), %rax	# dst, tmp464
	movl	8(%rax), %eax	# dst_20->fld[0].rtuint, D.14311
	movl	%eax, %edi	# D.14307,
	call	reg_preferred_class	#
	movl	%eax, -672(%rbp)	# tmp465, dst_class
	.loc 1 1219 0
	movl	-672(%rbp), %edx	# dst_class, dst_class.119
	movl	-676(%rbp), %eax	# src_class, src_class.120
	movl	%edx, %esi	# dst_class.119,
	movl	%eax, %edi	# src_class.120,
	call	regclass_compatible_p	#
	testl	%eax, %eax	# D.14307
	jne	.L254	#,
	.loc 1 1220 0
	jmp	.L240	#
.L254:
	.loc 1 1222 0
	movq	-576(%rbp), %rax	# src, tmp466
	movzbl	2(%rax), %edx	# src_163->mode, D.14312
	movq	-624(%rbp), %rax	# dst, tmp467
	movzbl	2(%rax), %eax	# dst_20->mode, D.14312
	cmpb	%al, %dl	# D.14312, D.14312
	je	.L255	#,
	.loc 1 1223 0
	jmp	.L240	#
.L255:
	.loc 1 1225 0
	movl	-716(%rbp), %r9d	# pass, tmp468
	movq	-624(%rbp), %r8	# dst, tmp469
	movq	-616(%rbp), %rcx	# src_subreg, tmp470
	movq	-576(%rbp), %rdx	# src, tmp471
	movq	-584(%rbp), %rsi	# set, tmp472
	movq	-648(%rbp), %rax	# insn, tmp473
	movq	-744(%rbp), %rdi	# regmove_dump_file, tmp474
	movq	%rdi, 16(%rsp)	# tmp474,
	movl	-680(%rbp), %edi	# match_no, tmp475
	movl	%edi, 8(%rsp)	# tmp475,
	movl	-708(%rbp), %edi	# op_no, tmp476
	movl	%edi, (%rsp)	# tmp476,
	movq	%rax, %rdi	# tmp473,
	call	fixup_match_1	#
	testl	%eax, %eax	# D.14307
	je	.L240	#,
	.loc 1 1228 0
	jmp	.L229	#
.L240:
.LBE18:
	.loc 1 1148 0
	addl	$1, -708(%rbp)	#, op_no
.L238:
	.loc 1 1148 0 is_stmt 0 discriminator 1
	movzbl	recog_data+996(%rip), %eax	# recog_data.n_operands, D.14310
	movsbl	%al, %eax	# D.14310, D.14307
	cmpl	-708(%rbp), %eax	# op_no, D.14307
	jg	.L256	#,
.L229:
.LBE16:
	.loc 1 1095 0 is_stmt 1
	cmpl	$0, -716(%rbp)	#, pass
	je	.L257	#,
	.loc 1 1095 0 is_stmt 0 discriminator 1
	movq	-648(%rbp), %rax	# insn, tmp477
	movq	16(%rax), %rax	# insn_1->fld[1].rtx, iftmp.121
	jmp	.L258	#
.L257:
	.loc 1 1095 0 discriminator 2
	movq	-648(%rbp), %rax	# insn, tmp478
	movq	24(%rax), %rax	# insn_1->fld[2].rtx, iftmp.121
.L258:
	.loc 1 1095 0 discriminator 3
	movq	%rax, -648(%rbp)	# iftmp.121, insn
.L223:
	.loc 1 1094 0 is_stmt 1 discriminator 1
	cmpq	$0, -648(%rbp)	#, insn
	jne	.L259	#,
	.loc 1 1085 0
	addl	$1, -716(%rbp)	#, pass
.L215:
	.loc 1 1085 0 is_stmt 0 discriminator 1
	cmpl	$2, -716(%rbp)	#, pass
	jle	.L260	#,
	.loc 1 1235 0 is_stmt 1
	cmpq	$0, -744(%rbp)	#, regmove_dump_file
	je	.L261	#,
	.loc 1 1236 0
	movq	-744(%rbp), %rax	# regmove_dump_file, tmp479
	movq	%rax, %rcx	# tmp479,
	movl	$26, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC4, %edi	#,
	call	fwrite	#
.L261:
	.loc 1 1238 0
	call	get_last_insn	#
	movq	%rax, -648(%rbp)	# tmp480, insn
	jmp	.L262	#
.L312:
	.loc 1 1240 0
	movq	-648(%rbp), %rax	# insn, tmp481
	movzwl	(%rax), %eax	# insn_2->code, D.14309
	movzwl	%ax, %eax	# D.14309, D.14307
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.14310
	cmpb	$105, %al	#, D.14310
	jne	.L263	#,
.LBB20:
	.loc 1 1243 0
	movl	$0, -696(%rbp)	#, success
	.loc 1 1245 0
	leaq	-496(%rbp), %rdx	#, tmp483
	movq	-648(%rbp), %rax	# insn, tmp484
	movq	%rdx, %rsi	# tmp483,
	movq	%rax, %rdi	# tmp484,
	call	find_matches	#
	testl	%eax, %eax	# D.14307
	jne	.L264	#,
	.loc 1 1246 0
	jmp	.L263	#
.L264:
	.loc 1 1254 0
	movq	$0, -640(%rbp)	#, copy_src
	.loc 1 1255 0
	movq	$0, -632(%rbp)	#, copy_dst
	.loc 1 1256 0
	movl	$0, -700(%rbp)	#, op_no
	jmp	.L265	#
.L311:
.LBB21:
	.loc 1 1260 0
	movl	$0, -692(%rbp)	#, num_calls
	.loc 1 1264 0
	movl	-700(%rbp), %eax	# op_no, tmp486
	cltq
	movl	-496(%rbp,%rax,4), %eax	# match.with, tmp487
	movl	%eax, -668(%rbp)	# tmp487, match_no
	.loc 1 1267 0
	cmpl	$0, -668(%rbp)	#, match_no
	jns	.L266	#,
	.loc 1 1268 0
	jmp	.L267	#
.L266:
	.loc 1 1270 0
	movl	-668(%rbp), %eax	# match_no, tmp489
	cltq
	movq	recog_data(,%rax,8), %rax	# recog_data.operand, tmp490
	movq	%rax, -560(%rbp)	# tmp490, dst
	.loc 1 1271 0
	movl	-700(%rbp), %eax	# op_no, tmp492
	cltq
	movq	recog_data(,%rax,8), %rax	# recog_data.operand, tmp493
	movq	%rax, -552(%rbp)	# tmp493, src
	.loc 1 1273 0
	movq	-552(%rbp), %rax	# src, tmp494
	movzwl	(%rax), %eax	# src_242->code, D.14309
	cmpw	$61, %ax	#, D.14309
	je	.L268	#,
	.loc 1 1274 0
	jmp	.L267	#
.L268:
	.loc 1 1276 0
	movq	-560(%rbp), %rax	# dst, tmp495
	movzwl	(%rax), %eax	# dst_241->code, D.14309
	cmpw	$61, %ax	#, D.14309
	jne	.L269	#,
	.loc 1 1277 0
	movq	-560(%rbp), %rax	# dst, tmp496
	movl	8(%rax), %eax	# dst_241->fld[0].rtuint, D.14311
	cmpl	$52, %eax	#, D.14311
	jbe	.L269	#,
	.loc 1 1278 0
	movq	reg_n_info(%rip), %rax	# reg_n_info, reg_n_info.122
	movq	-560(%rbp), %rdx	# dst, tmp497
	movl	8(%rdx), %edx	# dst_241->fld[0].rtuint, D.14311
	movl	%edx, %edx	# D.14311, tmp498
	addq	$4, %rdx	#, tmp499
	movq	(%rax,%rdx,8), %rax	# reg_n_info.122_246->data.reg, D.14314
	movl	28(%rax), %eax	# _248->live_length, D.14307
	testl	%eax, %eax	# D.14307
	js	.L269	#,
	.loc 1 1279 0
	movq	-560(%rbp), %rax	# dst, tmp500
	movzbl	3(%rax), %eax	# *dst_241, D.14312
	andl	$4, %eax	#, D.14312
	testb	%al, %al	# D.14312
	je	.L270	#,
.L269:
	.loc 1 1280 0
	jmp	.L267	#
.L270:
	.loc 1 1283 0
	movq	-560(%rbp), %rdx	# dst, tmp501
	movq	-552(%rbp), %rax	# src, tmp502
	movq	%rdx, %rsi	# tmp501,
	movq	%rax, %rdi	# tmp502,
	call	operands_match_p	#
	testl	%eax, %eax	# D.14307
	je	.L271	#,
	.loc 1 1284 0
	jmp	.L267	#
.L271:
	.loc 1 1286 0
	movl	-700(%rbp), %eax	# op_no, tmp504
	cltq
	addq	$60, %rax	#, tmp505
	movl	-496(%rbp,%rax,4), %eax	# match.commutative, D.14307
	testl	%eax, %eax	# D.14307
	js	.L272	#,
.LBB22:
	.loc 1 1288 0
	movl	-700(%rbp), %eax	# op_no, tmp507
	cltq
	addq	$60, %rax	#, tmp508
	movl	-496(%rbp,%rax,4), %eax	# match.commutative, D.14307
	cltq
	movq	recog_data(,%rax,8), %rax	# recog_data.operand, tmp510
	movq	%rax, -544(%rbp)	# tmp510, comm
	.loc 1 1289 0
	movq	-560(%rbp), %rdx	# dst, tmp511
	movq	-544(%rbp), %rax	# comm, tmp512
	movq	%rdx, %rsi	# tmp511,
	movq	%rax, %rdi	# tmp512,
	call	operands_match_p	#
	testl	%eax, %eax	# D.14307
	je	.L272	#,
	.loc 1 1290 0
	jmp	.L267	#
.L272:
.LBE22:
	.loc 1 1293 0
	movq	-648(%rbp), %rax	# insn, tmp513
	movzwl	(%rax), %eax	# insn_2->code, D.14309
	movzwl	%ax, %eax	# D.14309, D.14307
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.14310
	cmpb	$105, %al	#, D.14310
	jne	.L273	#,
	.loc 1 1293 0 is_stmt 0 discriminator 1
	movq	-648(%rbp), %rax	# insn, tmp515
	movq	32(%rax), %rax	# insn_2->fld[3].rtx, D.14304
	movzwl	(%rax), %eax	# _260->code, D.14309
	cmpw	$47, %ax	#, D.14309
	jne	.L274	#,
	.loc 1 1293 0 discriminator 3
	movq	-648(%rbp), %rax	# insn, tmp516
	movq	32(%rax), %rax	# insn_2->fld[3].rtx, iftmp.124
	jmp	.L276	#
.L274:
	.loc 1 1293 0 discriminator 4
	movq	-648(%rbp), %rax	# insn, tmp517
	movq	32(%rax), %rdx	# insn_2->fld[3].rtx, D.14304
	movq	-648(%rbp), %rax	# insn, tmp518
	movq	%rdx, %rsi	# D.14304,
	movq	%rax, %rdi	# tmp518,
	call	single_set_2	#
	jmp	.L276	#
.L273:
	.loc 1 1293 0 discriminator 2
	movl	$0, %eax	#, iftmp.123
.L276:
	.loc 1 1293 0 discriminator 5
	movq	%rax, -536(%rbp)	# iftmp.123, set
	.loc 1 1294 0 is_stmt 1 discriminator 5
	cmpq	$0, -536(%rbp)	#, set
	jne	.L277	#,
	.loc 1 1295 0
	jmp	.L267	#
.L277:
	.loc 1 1302 0
	movq	-648(%rbp), %rdx	# insn, tmp519
	movq	-552(%rbp), %rax	# src, tmp520
	movq	%rdx, %rsi	# tmp519,
	movq	%rax, %rdi	# tmp520,
	call	reg_set_p	#
	testl	%eax, %eax	# D.14307
	je	.L278	#,
	.loc 1 1303 0
	jmp	.L267	#
.L278:
	.loc 1 1307 0
	movl	-700(%rbp), %eax	# op_no, tmp522
	cltq
	addq	$28, %rax	#, tmp523
	movl	-488(%rbp,%rax,4), %eax	# match.use, D.14315
	testl	%eax, %eax	# D.14315
	jne	.L279	#,
	.loc 1 1308 0
	movl	-668(%rbp), %eax	# match_no, tmp525
	cltq
	addq	$28, %rax	#, tmp526
	movl	-488(%rbp,%rax,4), %eax	# match.use, D.14315
	cmpl	$1, %eax	#, D.14315
	je	.L280	#,
.L279:
	.loc 1 1309 0
	jmp	.L267	#
.L280:
	.loc 1 1311 0
	movl	-668(%rbp), %eax	# match_no, tmp528
	cltq
	addq	$88, %rax	#, tmp529
	movl	-488(%rbp,%rax,4), %eax	# match.early_clobber, D.14307
	testl	%eax, %eax	# D.14307
	je	.L281	#,
	.loc 1 1312 0
	movq	-648(%rbp), %rax	# insn, tmp530
	movq	32(%rax), %rax	# insn_2->fld[3].rtx, D.14304
	movq	-552(%rbp), %rcx	# src, tmp531
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp531,
	movq	%rax, %rdi	# D.14304,
	call	count_occurrences	#
	cmpl	$1, %eax	#, D.14307
	jle	.L281	#,
	.loc 1 1313 0
	jmp	.L267	#
.L281:
	.loc 1 1316 0
	movl	-668(%rbp), %eax	# match_no, tmp533
	cltq
	movq	recog_data(,%rax,8), %rdx	# recog_data.operand, D.14304
	movq	-536(%rbp), %rax	# set, tmp534
	movq	8(%rax), %rax	# set_267->fld[0].rtx, D.14304
	cmpq	%rax, %rdx	# D.14304, D.14304
	je	.L282	#,
	.loc 1 1317 0
	jmp	.L267	#
.L282:
	.loc 1 1319 0
	movq	-552(%rbp), %rax	# src, tmp535
	movl	8(%rax), %eax	# src_242->fld[0].rtuint, D.14311
	cmpl	$52, %eax	#, D.14311
	ja	.L283	#,
	.loc 1 1321 0
	movq	-536(%rbp), %rax	# set, tmp536
	movq	16(%rax), %rax	# set_267->fld[1].rtx, D.14304
	movzwl	(%rax), %eax	# _277->code, D.14309
	cmpw	$75, %ax	#, D.14309
	jne	.L284	#,
	.loc 1 1322 0
	movq	-536(%rbp), %rax	# set, tmp537
	movq	16(%rax), %rax	# set_267->fld[1].rtx, D.14304
	movq	16(%rax), %rax	# _279->fld[1].rtx, D.14304
	movzwl	(%rax), %eax	# _280->code, D.14309
	cmpw	$54, %ax	#, D.14309
	jne	.L284	#,
	.loc 1 1323 0
	movq	-536(%rbp), %rax	# set, tmp538
	movq	16(%rax), %rax	# set_267->fld[1].rtx, D.14304
	movq	8(%rax), %rax	# _282->fld[0].rtx, D.14304
	cmpq	-552(%rbp), %rax	# src, D.14304
	jne	.L284	#,
	.loc 1 1325 0
	movq	-536(%rbp), %rax	# set, tmp539
	movq	16(%rax), %rax	# set_267->fld[1].rtx, D.14304
	.loc 1 1324 0
	movq	16(%rax), %rcx	# _284->fld[1].rtx, D.14304
	movq	-744(%rbp), %rdi	# regmove_dump_file, tmp540
	movq	-552(%rbp), %rdx	# src, tmp541
	movq	-560(%rbp), %rsi	# dst, tmp542
	movq	-648(%rbp), %rax	# insn, tmp543
	movq	%rdi, %r8	# tmp540,
	movq	%rax, %rdi	# tmp543,
	call	fixup_match_2	#
	testl	%eax, %eax	# D.14307
	je	.L284	#,
	.loc 1 1327 0
	jmp	.L285	#
.L284:
	.loc 1 1328 0
	jmp	.L267	#
.L283:
	.loc 1 1330 0
	movq	-552(%rbp), %rax	# src, tmp544
	movl	8(%rax), %eax	# src_242->fld[0].rtuint, D.14311
	movl	%eax, %edi	# D.14307,
	call	reg_preferred_class	#
	movl	%eax, -664(%rbp)	# tmp545, src_class
	.loc 1 1331 0
	movq	-560(%rbp), %rax	# dst, tmp546
	movl	8(%rax), %eax	# dst_241->fld[0].rtuint, D.14311
	movl	%eax, %edi	# D.14307,
	call	reg_preferred_class	#
	movl	%eax, -660(%rbp)	# tmp547, dst_class
	.loc 1 1333 0
	movq	-552(%rbp), %rdx	# src, tmp548
	movq	-648(%rbp), %rax	# insn, tmp549
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp549,
	call	find_reg_note	#
	movq	%rax, -528(%rbp)	# tmp550, src_note
	cmpq	$0, -528(%rbp)	#, src_note
	jne	.L286	#,
	.loc 1 1344 0
	jmp	.L267	#
.L286:
	.loc 1 1347 0
	movl	-660(%rbp), %edx	# dst_class, dst_class.125
	movl	-664(%rbp), %eax	# src_class, src_class.126
	movl	%edx, %esi	# dst_class.125,
	movl	%eax, %edi	# src_class.126,
	call	regclass_compatible_p	#
	testl	%eax, %eax	# D.14307
	jne	.L287	#,
	.loc 1 1349 0
	cmpq	$0, -640(%rbp)	#, copy_src
	jne	.L288	#,
	.loc 1 1351 0
	movq	-552(%rbp), %rax	# src, tmp551
	movq	%rax, -640(%rbp)	# tmp551, copy_src
	.loc 1 1352 0
	movq	-560(%rbp), %rax	# dst, tmp552
	movq	%rax, -632(%rbp)	# tmp552, copy_dst
	.loc 1 1354 0
	jmp	.L267	#
.L288:
	jmp	.L267	#
.L287:
	.loc 1 1359 0
	movq	-536(%rbp), %rax	# set, tmp553
	movq	16(%rax), %rdx	# set_267->fld[1].rtx, D.14304
	movq	-560(%rbp), %rax	# dst, tmp554
	movq	%rdx, %rsi	# D.14304,
	movq	%rax, %rdi	# tmp554,
	call	reg_overlap_mentioned_p	#
	testl	%eax, %eax	# D.14307
	je	.L289	#,
	.loc 1 1361 0
	cmpq	$0, -640(%rbp)	#, copy_src
	jne	.L290	#,
	.loc 1 1363 0
	movq	-552(%rbp), %rax	# src, tmp555
	movq	%rax, -640(%rbp)	# tmp555, copy_src
	.loc 1 1364 0
	movq	-560(%rbp), %rax	# dst, tmp556
	movq	%rax, -632(%rbp)	# tmp556, copy_dst
	.loc 1 1366 0
	jmp	.L267	#
.L290:
	jmp	.L267	#
.L289:
	.loc 1 1374 0
	movq	-728(%rbp), %rdx	# f, tmp557
	movq	-648(%rbp), %rcx	# insn, tmp558
	movq	-552(%rbp), %rax	# src, tmp559
	movq	%rcx, %rsi	# tmp558,
	movq	%rax, %rdi	# tmp559,
	call	reg_is_remote_constant_p	#
	testl	%eax, %eax	# D.14307
	je	.L291	#,
	.loc 1 1376 0
	cmpq	$0, -640(%rbp)	#, copy_src
	jne	.L292	#,
	.loc 1 1378 0
	movq	-552(%rbp), %rax	# src, tmp560
	movq	%rax, -640(%rbp)	# tmp560, copy_src
	.loc 1 1379 0
	movq	-560(%rbp), %rax	# dst, tmp561
	movq	%rax, -632(%rbp)	# tmp561, copy_dst
	.loc 1 1381 0
	jmp	.L267	#
.L292:
	jmp	.L267	#
.L291:
	.loc 1 1385 0
	cmpq	$0, -744(%rbp)	#, regmove_dump_file
	je	.L293	#,
	.loc 1 1386 0
	movq	-648(%rbp), %rax	# insn, tmp562
	movl	8(%rax), %ecx	# insn_2->fld[0].rtint, D.14307
	movl	-668(%rbp), %esi	# match_no, tmp563
	movl	-700(%rbp), %edx	# op_no, tmp564
	movq	-744(%rbp), %rax	# regmove_dump_file, tmp565
	movl	%esi, %r8d	# tmp563,
	movl	$.LC5, %esi	#,
	movq	%rax, %rdi	# tmp565,
	movl	$0, %eax	#,
	call	fprintf	#
.L293:
	.loc 1 1394 0
	movl	$0, -688(%rbp)	#, length
	movq	-648(%rbp), %rax	# insn, tmp566
	movq	16(%rax), %rax	# insn_2->fld[1].rtx, tmp567
	movq	%rax, -608(%rbp)	# tmp567, p
	jmp	.L294	#
.L306:
.LBB23:
	.loc 1 1401 0
	movq	-608(%rbp), %rax	# p, tmp568
	movq	%rax, %rdi	# tmp568,
	call	perhaps_ends_bb_p	#
	testl	%eax, %eax	# D.14307
	je	.L295	#,
	.loc 1 1402 0
	jmp	.L296	#
.L295:
	.loc 1 1403 0
	movq	-608(%rbp), %rax	# p, tmp569
	movzwl	(%rax), %eax	# p_28->code, D.14309
	movzwl	%ax, %eax	# D.14309, D.14307
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.14310
	cmpb	$105, %al	#, D.14310
	je	.L297	#,
	.loc 1 1404 0
	jmp	.L298	#
.L297:
	.loc 1 1406 0
	addl	$1, -688(%rbp)	#, length
	.loc 1 1410 0
	movq	-608(%rbp), %rax	# p, tmp571
	movzwl	(%rax), %eax	# p_28->code, D.14309
	movzwl	%ax, %eax	# D.14309, D.14307
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.14310
	cmpb	$105, %al	#, D.14310
	jne	.L299	#,
	.loc 1 1410 0 is_stmt 0 discriminator 1
	movq	-608(%rbp), %rax	# p, tmp573
	movq	32(%rax), %rax	# p_28->fld[3].rtx, D.14304
	movzwl	(%rax), %eax	# _317->code, D.14309
	cmpw	$47, %ax	#, D.14309
	jne	.L300	#,
	.loc 1 1410 0 discriminator 3
	movq	-608(%rbp), %rax	# p, tmp574
	movq	32(%rax), %rax	# p_28->fld[3].rtx, iftmp.128
	jmp	.L302	#
.L300:
	.loc 1 1410 0 discriminator 4
	movq	-608(%rbp), %rax	# p, tmp575
	movq	32(%rax), %rdx	# p_28->fld[3].rtx, D.14304
	movq	-608(%rbp), %rax	# p, tmp576
	movq	%rdx, %rsi	# D.14304,
	movq	%rax, %rdi	# tmp576,
	call	single_set_2	#
	jmp	.L302	#
.L299:
	.loc 1 1410 0 discriminator 2
	movl	$0, %eax	#, iftmp.127
.L302:
	.loc 1 1410 0 discriminator 5
	movq	%rax, -520(%rbp)	# iftmp.127, pset
	.loc 1 1411 0 is_stmt 1 discriminator 5
	cmpq	$0, -520(%rbp)	#, pset
	je	.L303	#,
	.loc 1 1411 0 is_stmt 0 discriminator 1
	movq	-520(%rbp), %rax	# pset, tmp577
	movq	8(%rax), %rax	# pset_324->fld[0].rtx, D.14304
	cmpq	-552(%rbp), %rax	# src, D.14304
	jne	.L303	#,
	.loc 1 1416 0 is_stmt 1
	movq	-648(%rbp), %rdx	# insn, tmp578
	movq	-560(%rbp), %rcx	# dst, tmp579
	movq	-552(%rbp), %rax	# src, tmp580
	movq	%rcx, %rsi	# tmp579,
	movq	%rax, %rdi	# tmp580,
	call	validate_replace_rtx	#
	testl	%eax, %eax	# D.14307
	je	.L304	#,
	.loc 1 1418 0
	movq	-520(%rbp), %rax	# pset, tmp581
	leaq	8(%rax), %rsi	#, D.14316
	movq	-560(%rbp), %rdx	# dst, tmp582
	movq	-608(%rbp), %rax	# p, tmp583
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# tmp583,
	call	validate_change	#
	testl	%eax, %eax	# D.14307
	je	.L305	#,
	.loc 1 1420 0
	movl	$1, -696(%rbp)	#, success
	jmp	.L304	#
.L305:
	.loc 1 1425 0
	movq	-648(%rbp), %rdx	# insn, tmp584
	movq	-552(%rbp), %rcx	# src, tmp585
	movq	-560(%rbp), %rax	# dst, tmp586
	movq	%rcx, %rsi	# tmp585,
	movq	%rax, %rdi	# tmp586,
	call	validate_replace_rtx	#
	.loc 1 1427 0
	movl	-668(%rbp), %eax	# match_no, tmp588
	cltq
	addq	$30, %rax	#, tmp589
	movq	recog_data(,%rax,8), %rsi	# recog_data.operand_loc, D.14316
	movq	-560(%rbp), %rdx	# dst, tmp590
	movq	-648(%rbp), %rax	# insn, tmp591
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# tmp591,
	call	validate_change	#
	.loc 1 1432 0
	jmp	.L296	#
.L304:
	jmp	.L296	#
.L303:
	.loc 1 1435 0
	movq	-608(%rbp), %rax	# p, tmp592
	movq	32(%rax), %rdx	# p_28->fld[3].rtx, D.14304
	movq	-552(%rbp), %rax	# src, tmp593
	movq	%rdx, %rsi	# D.14304,
	movq	%rax, %rdi	# tmp593,
	call	reg_overlap_mentioned_p	#
	testl	%eax, %eax	# D.14307
	jne	.L296	#,
	.loc 1 1436 0
	movq	-608(%rbp), %rax	# p, tmp594
	movq	32(%rax), %rdx	# p_28->fld[3].rtx, D.14304
	movq	-560(%rbp), %rax	# dst, tmp595
	movq	%rdx, %rsi	# D.14304,
	movq	%rax, %rdi	# tmp595,
	call	reg_overlap_mentioned_p	#
	testl	%eax, %eax	# D.14307
	jne	.L296	#,
	.loc 1 1442 0
	movq	-608(%rbp), %rax	# p, tmp596
	movzwl	(%rax), %eax	# p_28->code, D.14309
	cmpw	$34, %ax	#, D.14309
	jne	.L298	#,
	.loc 1 1444 0
	addl	$1, -692(%rbp)	#, num_calls
	.loc 1 1446 0
	movq	reg_n_info(%rip), %rax	# reg_n_info, reg_n_info.129
	movq	-560(%rbp), %rdx	# dst, tmp597
	movl	8(%rdx), %edx	# dst_241->fld[0].rtuint, D.14311
	movl	%edx, %edx	# D.14311, tmp598
	addq	$4, %rdx	#, tmp599
	movq	(%rax,%rdx,8), %rax	# reg_n_info.129_337->data.reg, D.14314
	movl	32(%rax), %eax	# _339->calls_crossed, D.14307
	testl	%eax, %eax	# D.14307
	jne	.L298	#,
	.loc 1 1447 0
	jmp	.L296	#
.L298:
.LBE23:
	.loc 1 1394 0
	movq	-608(%rbp), %rax	# p, tmp600
	movq	16(%rax), %rax	# p_28->fld[1].rtx, tmp601
	movq	%rax, -608(%rbp)	# tmp601, p
.L294:
	.loc 1 1394 0 is_stmt 0 discriminator 1
	cmpq	$0, -608(%rbp)	#, p
	jne	.L306	#,
.L296:
	.loc 1 1451 0 is_stmt 1
	cmpl	$0, -696(%rbp)	#, success
	je	.L267	#,
.LBB24:
	.loc 1 1456 0
	movq	-528(%rbp), %rdx	# src_note, tmp602
	movq	-648(%rbp), %rax	# insn, tmp603
	movq	%rdx, %rsi	# tmp602,
	movq	%rax, %rdi	# tmp603,
	call	remove_note	#
	.loc 1 1459 0
	movq	-608(%rbp), %rax	# p, tmp604
	movq	32(%rax), %rdx	# p_28->fld[3].rtx, D.14304
	movq	-552(%rbp), %rax	# src, tmp605
	movq	%rdx, %rsi	# D.14304,
	movq	%rax, %rdi	# tmp605,
	call	reg_overlap_mentioned_p	#
	testl	%eax, %eax	# D.14307
	je	.L307	#,
	.loc 1 1461 0
	movq	-608(%rbp), %rax	# p, tmp606
	movq	56(%rax), %rdx	# p_28->fld[6].rtx, D.14304
	movq	-528(%rbp), %rax	# src_note, tmp607
	movq	%rdx, 16(%rax)	# D.14304, src_note_293->fld[1].rtx
	.loc 1 1462 0
	movq	-608(%rbp), %rax	# p, tmp608
	movq	-528(%rbp), %rdx	# src_note, tmp609
	movq	%rdx, 56(%rax)	# tmp609, p_28->fld[6].rtx
.L307:
	.loc 1 1466 0
	movq	-560(%rbp), %rdx	# dst, tmp610
	movq	-608(%rbp), %rax	# p, tmp611
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp611,
	call	find_reg_note	#
	movq	%rax, -512(%rbp)	# tmp612, dst_note
	cmpq	$0, -512(%rbp)	#, dst_note
	je	.L308	#,
	.loc 1 1467 0
	movq	-512(%rbp), %rdx	# dst_note, tmp613
	movq	-608(%rbp), %rax	# p, tmp614
	movq	%rdx, %rsi	# tmp613,
	movq	%rax, %rdi	# tmp614,
	call	remove_note	#
.L308:
	.loc 1 1469 0
	movq	-560(%rbp), %rax	# dst, tmp615
	movl	8(%rax), %eax	# dst_241->fld[0].rtuint, D.14311
	movl	%eax, -656(%rbp)	# D.14311, dstno
	.loc 1 1470 0
	movq	-552(%rbp), %rax	# src, tmp616
	movl	8(%rax), %eax	# src_242->fld[0].rtuint, D.14311
	movl	%eax, -652(%rbp)	# D.14311, srcno
	.loc 1 1472 0
	movq	reg_n_info(%rip), %rax	# reg_n_info, reg_n_info.130
	movl	-656(%rbp), %edx	# dstno, tmp618
	movslq	%edx, %rdx	# tmp618, tmp617
	addq	$4, %rdx	#, tmp619
	movq	(%rax,%rdx,8), %rax	# reg_n_info.130_350->data.reg, D.14314
	movl	12(%rax), %edx	# _351->sets, D.14307
	addl	$1, %edx	#, D.14307
	movl	%edx, 12(%rax)	# D.14307, _351->sets
	.loc 1 1473 0
	movq	reg_n_info(%rip), %rax	# reg_n_info, reg_n_info.131
	movl	-652(%rbp), %edx	# srcno, tmp621
	movslq	%edx, %rdx	# tmp621, tmp620
	addq	$4, %rdx	#, tmp622
	movq	(%rax,%rdx,8), %rax	# reg_n_info.131_354->data.reg, D.14314
	movl	12(%rax), %edx	# _355->sets, D.14307
	subl	$1, %edx	#, D.14307
	movl	%edx, 12(%rax)	# D.14307, _355->sets
	.loc 1 1475 0
	movq	reg_n_info(%rip), %rax	# reg_n_info, reg_n_info.132
	movl	-656(%rbp), %edx	# dstno, tmp624
	movslq	%edx, %rdx	# tmp624, tmp623
	addq	$4, %rdx	#, tmp625
	movq	(%rax,%rdx,8), %rax	# reg_n_info.132_358->data.reg, D.14314
	movq	reg_n_info(%rip), %rdx	# reg_n_info, reg_n_info.133
	movl	-656(%rbp), %ecx	# dstno, tmp627
	movslq	%ecx, %rcx	# tmp627, tmp626
	addq	$4, %rcx	#, tmp628
	movq	(%rdx,%rcx,8), %rdx	# reg_n_info.133_360->data.reg, D.14314
	movl	32(%rdx), %ecx	# _361->calls_crossed, D.14307
	movl	-692(%rbp), %edx	# num_calls, tmp629
	addl	%ecx, %edx	# D.14307, D.14307
	movl	%edx, 32(%rax)	# D.14307, _359->calls_crossed
	.loc 1 1476 0
	movq	reg_n_info(%rip), %rax	# reg_n_info, reg_n_info.134
	movl	-652(%rbp), %edx	# srcno, tmp631
	movslq	%edx, %rdx	# tmp631, tmp630
	addq	$4, %rdx	#, tmp632
	movq	(%rax,%rdx,8), %rax	# reg_n_info.134_364->data.reg, D.14314
	movq	reg_n_info(%rip), %rdx	# reg_n_info, reg_n_info.135
	movl	-652(%rbp), %ecx	# srcno, tmp634
	movslq	%ecx, %rcx	# tmp634, tmp633
	addq	$4, %rcx	#, tmp635
	movq	(%rdx,%rcx,8), %rdx	# reg_n_info.135_366->data.reg, D.14314
	movl	32(%rdx), %edx	# _367->calls_crossed, D.14307
	subl	-692(%rbp), %edx	# num_calls, D.14307
	movl	%edx, 32(%rax)	# D.14307, _365->calls_crossed
	.loc 1 1478 0
	movq	reg_n_info(%rip), %rax	# reg_n_info, reg_n_info.136
	movl	-656(%rbp), %edx	# dstno, tmp637
	movslq	%edx, %rdx	# tmp637, tmp636
	addq	$4, %rdx	#, tmp638
	movq	(%rax,%rdx,8), %rax	# reg_n_info.136_370->data.reg, D.14314
	movq	reg_n_info(%rip), %rdx	# reg_n_info, reg_n_info.137
	movl	-656(%rbp), %ecx	# dstno, tmp640
	movslq	%ecx, %rcx	# tmp640, tmp639
	addq	$4, %rcx	#, tmp641
	movq	(%rdx,%rcx,8), %rdx	# reg_n_info.137_372->data.reg, D.14314
	movl	28(%rdx), %ecx	# _373->live_length, D.14307
	movl	-688(%rbp), %edx	# length, tmp642
	addl	%ecx, %edx	# D.14307, D.14307
	movl	%edx, 28(%rax)	# D.14307, _371->live_length
	.loc 1 1479 0
	movq	reg_n_info(%rip), %rax	# reg_n_info, reg_n_info.138
	movl	-652(%rbp), %edx	# srcno, tmp644
	movslq	%edx, %rdx	# tmp644, tmp643
	addq	$4, %rdx	#, tmp645
	movq	(%rax,%rdx,8), %rax	# reg_n_info.138_376->data.reg, D.14314
	movl	28(%rax), %eax	# _377->live_length, D.14307
	testl	%eax, %eax	# D.14307
	js	.L309	#,
	.loc 1 1481 0
	movq	reg_n_info(%rip), %rax	# reg_n_info, reg_n_info.139
	movl	-652(%rbp), %edx	# srcno, tmp647
	movslq	%edx, %rdx	# tmp647, tmp646
	addq	$4, %rdx	#, tmp648
	movq	(%rax,%rdx,8), %rax	# reg_n_info.139_379->data.reg, D.14314
	movq	reg_n_info(%rip), %rdx	# reg_n_info, reg_n_info.140
	movl	-652(%rbp), %ecx	# srcno, tmp650
	movslq	%ecx, %rcx	# tmp650, tmp649
	addq	$4, %rcx	#, tmp651
	movq	(%rdx,%rcx,8), %rdx	# reg_n_info.140_381->data.reg, D.14314
	movl	28(%rdx), %edx	# _382->live_length, D.14307
	subl	-688(%rbp), %edx	# length, D.14307
	movl	%edx, 28(%rax)	# D.14307, _380->live_length
	.loc 1 1485 0
	movq	reg_n_info(%rip), %rax	# reg_n_info, reg_n_info.141
	movl	-652(%rbp), %edx	# srcno, tmp653
	movslq	%edx, %rdx	# tmp653, tmp652
	addq	$4, %rdx	#, tmp654
	movq	(%rax,%rdx,8), %rax	# reg_n_info.141_385->data.reg, D.14314
	movl	28(%rax), %eax	# _386->live_length, D.14307
	cmpl	$1, %eax	#, D.14307
	jg	.L309	#,
	.loc 1 1486 0
	movq	reg_n_info(%rip), %rax	# reg_n_info, reg_n_info.142
	movl	-652(%rbp), %edx	# srcno, tmp656
	movslq	%edx, %rdx	# tmp656, tmp655
	addq	$4, %rdx	#, tmp657
	movq	(%rax,%rdx,8), %rax	# reg_n_info.142_388->data.reg, D.14314
	movl	$2, 28(%rax)	#, _389->live_length
.L309:
	.loc 1 1489 0
	cmpq	$0, -744(%rbp)	#, regmove_dump_file
	je	.L310	#,
	.loc 1 1490 0
	movq	-648(%rbp), %rax	# insn, tmp658
	movl	8(%rax), %ecx	# insn_2->fld[0].rtint, D.14307
	movl	-668(%rbp), %esi	# match_no, tmp659
	movl	-700(%rbp), %edx	# op_no, tmp660
	movq	-744(%rbp), %rax	# regmove_dump_file, tmp661
	movl	%esi, %r8d	# tmp659,
	movl	$.LC6, %esi	#,
	movq	%rax, %rdi	# tmp661,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 1494 0
	jmp	.L285	#
.L310:
	jmp	.L285	#
.L267:
.LBE24:
.LBE21:
	.loc 1 1256 0
	addl	$1, -700(%rbp)	#, op_no
.L265:
	.loc 1 1256 0 is_stmt 0 discriminator 1
	movzbl	recog_data+996(%rip), %eax	# recog_data.n_operands, D.14310
	movsbl	%al, %eax	# D.14310, D.14307
	cmpl	-700(%rbp), %eax	# op_no, D.14307
	jg	.L311	#,
.L285:
	.loc 1 1500 0 is_stmt 1
	cmpl	$0, -696(%rbp)	#, success
	jne	.L263	#,
	.loc 1 1500 0 is_stmt 0 discriminator 1
	cmpq	$0, -640(%rbp)	#, copy_src
	je	.L263	#,
	.loc 1 1501 0 is_stmt 1
	movl	-684(%rbp), %ecx	# old_max_uid, tmp662
	movq	-632(%rbp), %rdx	# copy_dst, tmp663
	movq	-640(%rbp), %rsi	# copy_src, tmp664
	movq	-648(%rbp), %rax	# insn, tmp665
	movq	%rax, %rdi	# tmp665,
	call	copy_src_to_dest	#
.L263:
.LBE20:
	.loc 1 1238 0
	movq	-648(%rbp), %rax	# insn, tmp666
	movq	16(%rax), %rax	# insn_2->fld[1].rtx, tmp667
	movq	%rax, -648(%rbp)	# tmp667, insn
.L262:
	.loc 1 1238 0 is_stmt 0 discriminator 1
	cmpq	$0, -648(%rbp)	#, insn
	jne	.L312	#,
	.loc 1 1508 0 is_stmt 1
	movl	$0, -712(%rbp)	#, i
	jmp	.L313	#
.L317:
.LBB25:
	.loc 1 1510 0
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.143
	movl	-712(%rbp), %edx	# i, tmp669
	movslq	%edx, %rdx	# tmp669, tmp668
	addq	$4, %rdx	#, tmp670
	movq	(%rax,%rdx,8), %rax	# basic_block_info.143_395->data.bb, D.14308
	movq	8(%rax), %rax	# _396->end, tmp671
	movq	%rax, -504(%rbp)	# tmp671, end
	.loc 1 1511 0
	movq	-504(%rbp), %rax	# end, tmp672
	movq	%rax, -600(%rbp)	# tmp672, new
	.loc 1 1512 0
	movq	-600(%rbp), %rax	# new, tmp673
	movq	24(%rax), %rax	# new_398->fld[2].rtx, tmp674
	movq	%rax, -592(%rbp)	# tmp674, next
	.loc 1 1513 0
	jmp	.L314	#
.L316:
	.loc 1 1515 0
	movq	-592(%rbp), %rax	# next, tmp675
	movq	%rax, -600(%rbp)	# tmp675, new
	movq	-600(%rbp), %rax	# new, tmp676
	movq	24(%rax), %rax	# new_407->fld[2].rtx, tmp677
	movq	%rax, -592(%rbp)	# tmp677, next
.L314:
	.loc 1 1513 0 discriminator 1
	cmpq	$0, -592(%rbp)	#, next
	je	.L315	#,
	.loc 1 1513 0 is_stmt 0 discriminator 2
	movq	-592(%rbp), %rax	# next, tmp678
	movl	8(%rax), %eax	# next_36->fld[0].rtint, D.14307
	cmpl	-684(%rbp), %eax	# old_max_uid, D.14307
	jl	.L315	#,
	.loc 1 1514 0 is_stmt 1
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.144
	subl	$1, %eax	#, D.14307
	cmpl	-712(%rbp), %eax	# i, D.14307
	je	.L316	#,
	.loc 1 1514 0 is_stmt 0 discriminator 1
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.145
	movl	-712(%rbp), %edx	# i, tmp679
	addl	$1, %edx	#, D.14307
	movslq	%edx, %rdx	# D.14307, tmp680
	addq	$4, %rdx	#, tmp681
	movq	(%rax,%rdx,8), %rax	# basic_block_info.145_403->data.bb, D.14308
	movq	(%rax), %rax	# _405->head, D.14304
	cmpq	-592(%rbp), %rax	# next, D.14304
	jne	.L316	#,
.L315:
	.loc 1 1516 0 is_stmt 1
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.146
	movl	-712(%rbp), %edx	# i, tmp683
	movslq	%edx, %rdx	# tmp683, tmp682
	addq	$4, %rdx	#, tmp684
	movq	(%rax,%rdx,8), %rax	# basic_block_info.146_409->data.bb, D.14308
	movq	-600(%rbp), %rdx	# new, tmp685
	movq	%rdx, 8(%rax)	# tmp685, _410->end
.LBE25:
	.loc 1 1508 0
	addl	$1, -712(%rbp)	#, i
.L313:
	.loc 1 1508 0 is_stmt 0 discriminator 1
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.147
	cmpl	%eax, -712(%rbp)	# n_basic_blocks.147, i
	jl	.L317	#,
.L217:
	.loc 1 1521 0 is_stmt 1
	movq	regno_src_regno(%rip), %rax	# regno_src_regno, regno_src_regno.148
	movq	%rax, %rdi	# regno_src_regno.148,
	call	free	#
	.loc 1 1522 0
	movq	regmove_bb_head(%rip), %rax	# regmove_bb_head, regmove_bb_head.149
	movq	%rax, %rdi	# regmove_bb_head.149,
	call	free	#
.L206:
	.loc 1 1523 0
	addq	$760, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	regmove_optimize, .-regmove_optimize
	.type	find_matches, @function
find_matches:
.LFB16:
	.loc 1 1535 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$192, %rsp	#,
	movq	%rdi, -184(%rbp)	# insn, insn
	movq	%rsi, -192(%rbp)	# matchp, matchp
	.loc 1 1538 0
	movl	$0, -164(%rbp)	#, any_matches
	.loc 1 1540 0
	movq	-184(%rbp), %rax	# insn, tmp79
	movq	%rax, %rdi	# tmp79,
	call	extract_insn	#
	.loc 1 1541 0
	movl	$0, %edi	#,
	call	constrain_operands	#
	testl	%eax, %eax	# D.14323
	jne	.L319	#,
	.loc 1 1542 0
	movl	$0, %eax	#, D.14323
	jmp	.L351	#
.L319:
	.loc 1 1547 0
	movzbl	recog_data+996(%rip), %eax	# recog_data.n_operands, D.14324
	movsbl	%al, %eax	# D.14324, tmp80
	movl	%eax, -168(%rbp)	# tmp80, op_no
	jmp	.L321	#
.L322:
	.loc 1 1548 0
	movq	-192(%rbp), %rax	# matchp, tmp81
	movl	-168(%rbp), %edx	# op_no, tmp83
	movslq	%edx, %rdx	# tmp83, tmp82
	addq	$60, %rdx	#, tmp84
	movl	$-1, (%rax,%rdx,4)	#, matchp_17(D)->commutative
	movq	-192(%rbp), %rax	# matchp, tmp85
	movl	-168(%rbp), %edx	# op_no, tmp87
	movslq	%edx, %rdx	# tmp87, tmp86
	addq	$60, %rdx	#, tmp88
	movl	(%rax,%rdx,4), %ecx	# matchp_17(D)->commutative, D.14323
	movq	-192(%rbp), %rax	# matchp, tmp89
	movl	-168(%rbp), %edx	# op_no, tmp91
	movslq	%edx, %rdx	# tmp91, tmp90
	movl	%ecx, (%rax,%rdx,4)	# D.14323, matchp_17(D)->with
.L321:
	.loc 1 1547 0 discriminator 1
	subl	$1, -168(%rbp)	#, op_no
	cmpl	$0, -168(%rbp)	#, op_no
	jns	.L322	#,
	.loc 1 1550 0
	movl	$0, -168(%rbp)	#, op_no
	jmp	.L323	#
.L350:
.LBB26:
	.loc 1 1554 0
	movl	$0, -160(%rbp)	#, i
	.loc 1 1556 0
	movl	-168(%rbp), %eax	# op_no, tmp93
	cltq
	addq	$60, %rax	#, tmp94
	movq	recog_data(,%rax,8), %rax	# recog_data.constraints, tmp95
	movq	%rax, -144(%rbp)	# tmp95, p
	.loc 1 1558 0
	movl	-168(%rbp), %eax	# op_no, tmp97
	cltq
	movl	$0, -128(%rbp,%rax,4)	#, likely_spilled
	.loc 1 1559 0
	movq	-192(%rbp), %rax	# matchp, tmp98
	movl	-168(%rbp), %edx	# op_no, tmp100
	movslq	%edx, %rdx	# tmp100, tmp99
	addq	$28, %rdx	#, tmp101
	movl	$0, 8(%rax,%rdx,4)	#, matchp_17(D)->use
	.loc 1 1560 0
	movq	-192(%rbp), %rax	# matchp, tmp102
	movl	-168(%rbp), %edx	# op_no, tmp104
	movslq	%edx, %rdx	# tmp104, tmp103
	addq	$88, %rdx	#, tmp105
	movl	$0, 8(%rax,%rdx,4)	#, matchp_17(D)->early_clobber
	.loc 1 1561 0
	movq	-144(%rbp), %rax	# p, tmp106
	movzbl	(%rax), %eax	# *p_23, D.14324
	cmpb	$61, %al	#, D.14324
	jne	.L324	#,
	.loc 1 1562 0
	movq	-192(%rbp), %rax	# matchp, tmp107
	movl	-168(%rbp), %edx	# op_no, tmp109
	movslq	%edx, %rdx	# tmp109, tmp108
	addq	$28, %rdx	#, tmp110
	movl	$1, 8(%rax,%rdx,4)	#, matchp_17(D)->use
	jmp	.L325	#
.L324:
	.loc 1 1563 0
	movq	-144(%rbp), %rax	# p, tmp111
	movzbl	(%rax), %eax	# *p_23, D.14324
	cmpb	$43, %al	#, D.14324
	jne	.L325	#,
	.loc 1 1564 0
	movq	-192(%rbp), %rax	# matchp, tmp112
	movl	-168(%rbp), %edx	# op_no, tmp114
	movslq	%edx, %rdx	# tmp114, tmp113
	addq	$28, %rdx	#, tmp115
	movl	$2, 8(%rax,%rdx,4)	#, matchp_17(D)->use
	.loc 1 1566 0
	jmp	.L326	#
.L325:
	jmp	.L326	#
.L329:
	.loc 1 1567 0
	movq	-144(%rbp), %rax	# p, tmp116
	movzbl	(%rax), %eax	# *p_5, D.14324
	cmpb	$44, %al	#, D.14324
	jne	.L327	#,
	.loc 1 1568 0
	addl	$1, -160(%rbp)	#, i
.L327:
	.loc 1 1566 0
	addq	$1, -144(%rbp)	#, p
.L326:
	.loc 1 1566 0 is_stmt 0 discriminator 1
	movq	-144(%rbp), %rax	# p, tmp117
	movzbl	(%rax), %eax	# *p_5, D.14324
	testb	%al, %al	# D.14324
	je	.L328	#,
	.loc 1 1566 0 discriminator 2
	movl	which_alternative(%rip), %eax	# which_alternative, which_alternative.150
	cmpl	%eax, -160(%rbp)	# which_alternative.150, i
	jl	.L329	#,
.L328:
	.loc 1 1570 0 is_stmt 1
	jmp	.L330	#
.L349:
	.loc 1 1571 0
	movsbl	-169(%rbp), %eax	# c, D.14323
	subl	$37, %eax	#, tmp118
	cmpl	$85, %eax	#, tmp118
	ja	.L330	#,
	movl	%eax, %eax	# tmp118, tmp119
	movq	.L332(,%rax,8), %rax	#, tmp120
	jmp	*%rax	# tmp120
	.section	.rodata
	.align 8
	.align 4
.L332:
	.quad	.L331
	.quad	.L333
	.quad	.L330
	.quad	.L330
	.quad	.L330
	.quad	.L330
	.quad	.L330
	.quad	.L330
	.quad	.L330
	.quad	.L330
	.quad	.L330
	.quad	.L335
	.quad	.L335
	.quad	.L335
	.quad	.L335
	.quad	.L335
	.quad	.L335
	.quad	.L335
	.quad	.L335
	.quad	.L335
	.quad	.L335
	.quad	.L330
	.quad	.L330
	.quad	.L330
	.quad	.L330
	.quad	.L330
	.quad	.L330
	.quad	.L330
	.quad	.L337
	.quad	.L337
	.quad	.L337
	.quad	.L337
	.quad	.L330
	.quad	.L330
	.quad	.L330
	.quad	.L330
	.quad	.L330
	.quad	.L330
	.quad	.L330
	.quad	.L330
	.quad	.L330
	.quad	.L330
	.quad	.L330
	.quad	.L330
	.quad	.L330
	.quad	.L330
	.quad	.L330
	.quad	.L330
	.quad	.L330
	.quad	.L330
	.quad	.L337
	.quad	.L330
	.quad	.L337
	.quad	.L337
	.quad	.L330
	.quad	.L330
	.quad	.L330
	.quad	.L330
	.quad	.L330
	.quad	.L330
	.quad	.L337
	.quad	.L337
	.quad	.L337
	.quad	.L337
	.quad	.L337
	.quad	.L337
	.quad	.L330
	.quad	.L337
	.quad	.L330
	.quad	.L337
	.quad	.L337
	.quad	.L337
	.quad	.L330
	.quad	.L330
	.quad	.L330
	.quad	.L337
	.quad	.L337
	.quad	.L330
	.quad	.L330
	.quad	.L337
	.quad	.L337
	.quad	.L337
	.quad	.L337
	.quad	.L337
	.quad	.L337
	.quad	.L337
	.text
.L333:
	.loc 1 1578 0
	movq	-192(%rbp), %rax	# matchp, tmp121
	movl	-168(%rbp), %edx	# op_no, tmp123
	movslq	%edx, %rdx	# tmp123, tmp122
	addq	$88, %rdx	#, tmp124
	movl	$1, 8(%rax,%rdx,4)	#, matchp_17(D)->early_clobber
	.loc 1 1579 0
	jmp	.L330	#
.L331:
	.loc 1 1581 0
	movl	-168(%rbp), %eax	# op_no, tmp125
	leal	1(%rax), %ecx	#, D.14323
	movq	-192(%rbp), %rax	# matchp, tmp126
	movl	-168(%rbp), %edx	# op_no, tmp128
	movslq	%edx, %rdx	# tmp128, tmp127
	addq	$60, %rdx	#, tmp129
	movl	%ecx, (%rax,%rdx,4)	# D.14323, matchp_17(D)->commutative
	.loc 1 1582 0
	movl	-168(%rbp), %eax	# op_no, tmp130
	leal	1(%rax), %edx	#, D.14323
	movq	-192(%rbp), %rax	# matchp, tmp131
	movslq	%edx, %rdx	# D.14323, tmp132
	leaq	60(%rdx), %rcx	#, tmp133
	movl	-168(%rbp), %edx	# op_no, tmp134
	movl	%edx, (%rax,%rcx,4)	# tmp134, matchp_17(D)->commutative
	.loc 1 1583 0
	jmp	.L330	#
.L335:
.LBB27:
	.loc 1 1589 0
	movq	-144(%rbp), %rax	# p, tmp135
	leaq	-1(%rax), %rcx	#, D.14325
	leaq	-152(%rbp), %rax	#, tmp136
	movl	$10, %edx	#,
	movq	%rax, %rsi	# tmp136,
	movq	%rcx, %rdi	# D.14325,
	call	strtoul	#
	movq	%rax, -136(%rbp)	# tmp137, match_ul
	.loc 1 1590 0
	movq	-136(%rbp), %rax	# match_ul, tmp138
	movl	%eax, -156(%rbp)	# tmp138, match
	.loc 1 1592 0
	movq	-152(%rbp), %rax	# end, tmp139
	movq	%rax, -144(%rbp)	# tmp139, p
	.loc 1 1594 0
	movl	-156(%rbp), %eax	# match, tmp140
	cmpl	-168(%rbp), %eax	# op_no, tmp140
	jge	.L338	#,
	.loc 1 1594 0 is_stmt 0 discriminator 1
	movl	-156(%rbp), %eax	# match, tmp142
	cltq
	movl	-128(%rbp,%rax,4), %eax	# likely_spilled, D.14323
	testl	%eax, %eax	# D.14323
	jne	.L330	#,
.L338:
	.loc 1 1596 0 is_stmt 1
	movq	-192(%rbp), %rax	# matchp, tmp143
	movl	-168(%rbp), %edx	# op_no, tmp145
	movslq	%edx, %rdx	# tmp145, tmp144
	movl	-156(%rbp), %ecx	# match, tmp146
	movl	%ecx, (%rax,%rdx,4)	# tmp146, matchp_17(D)->with
	.loc 1 1597 0
	movl	$1, -164(%rbp)	#, any_matches
	.loc 1 1598 0
	movq	-192(%rbp), %rax	# matchp, tmp147
	movl	-168(%rbp), %edx	# op_no, tmp149
	movslq	%edx, %rdx	# tmp149, tmp148
	addq	$60, %rdx	#, tmp150
	movl	(%rax,%rdx,4), %eax	# matchp_17(D)->commutative, D.14323
	testl	%eax, %eax	# D.14323
	js	.L339	#,
	.loc 1 1599 0
	movq	-192(%rbp), %rax	# matchp, tmp151
	movl	-168(%rbp), %edx	# op_no, tmp153
	movslq	%edx, %rdx	# tmp153, tmp152
	addq	$60, %rdx	#, tmp154
	movl	(%rax,%rdx,4), %edx	# matchp_17(D)->commutative, D.14323
	movq	-192(%rbp), %rax	# matchp, tmp155
	movslq	%edx, %rdx	# D.14323, tmp156
	movl	-156(%rbp), %ecx	# match, tmp157
	movl	%ecx, (%rax,%rdx,4)	# tmp157, matchp_17(D)->with
.LBE27:
	.loc 1 1601 0
	jmp	.L330	#
.L339:
	jmp	.L330	#
.L337:
	.loc 1 1607 0
	cmpb	$114, -169(%rbp)	#, c
	je	.L340	#,
	.loc 1 1607 0 is_stmt 0 discriminator 1
	cmpb	$82, -169(%rbp)	#, c
	je	.L340	#,
	cmpb	$113, -169(%rbp)	#, c
	je	.L340	#,
	.loc 1 1607 0 discriminator 2
	cmpb	$81, -169(%rbp)	#, c
	je	.L340	#,
	.loc 1 1607 0 discriminator 3
	cmpb	$102, -169(%rbp)	#, c
	je	.L340	#,
	.loc 1 1607 0 discriminator 4
	cmpb	$116, -169(%rbp)	#, c
	je	.L340	#,
	.loc 1 1607 0 discriminator 5
	cmpb	$117, -169(%rbp)	#, c
	je	.L340	#,
	.loc 1 1607 0 discriminator 6
	cmpb	$97, -169(%rbp)	#, c
	je	.L341	#,
.L340:
	.loc 1 1607 0 discriminator 2
	cmpb	$114, -169(%rbp)	#, c
	je	.L342	#,
	.loc 1 1607 0 discriminator 1
	cmpb	$82, -169(%rbp)	#, c
	je	.L342	#,
	cmpb	$113, -169(%rbp)	#, c
	je	.L342	#,
	.loc 1 1607 0 discriminator 2
	cmpb	$81, -169(%rbp)	#, c
	je	.L342	#,
	.loc 1 1607 0 discriminator 3
	cmpb	$102, -169(%rbp)	#, c
	je	.L342	#,
	.loc 1 1607 0 discriminator 4
	cmpb	$116, -169(%rbp)	#, c
	je	.L342	#,
	.loc 1 1607 0 discriminator 5
	cmpb	$117, -169(%rbp)	#, c
	je	.L342	#,
	.loc 1 1607 0 discriminator 6
	cmpb	$97, -169(%rbp)	#, c
	je	.L342	#,
	.loc 1 1607 0 discriminator 7
	cmpb	$98, -169(%rbp)	#, c
	je	.L342	#,
	.loc 1 1607 0 discriminator 8
	cmpb	$99, -169(%rbp)	#, c
	je	.L342	#,
	.loc 1 1607 0 discriminator 9
	cmpb	$100, -169(%rbp)	#, c
	je	.L341	#,
.L342:
	.loc 1 1607 0 discriminator 2
	cmpb	$114, -169(%rbp)	#, c
	je	.L343	#,
	.loc 1 1607 0 discriminator 1
	cmpb	$82, -169(%rbp)	#, c
	je	.L343	#,
	cmpb	$113, -169(%rbp)	#, c
	je	.L343	#,
	.loc 1 1607 0 discriminator 2
	cmpb	$81, -169(%rbp)	#, c
	je	.L343	#,
	.loc 1 1607 0 discriminator 3
	cmpb	$102, -169(%rbp)	#, c
	je	.L343	#,
	.loc 1 1607 0 discriminator 4
	cmpb	$116, -169(%rbp)	#, c
	je	.L343	#,
	.loc 1 1607 0 discriminator 5
	cmpb	$117, -169(%rbp)	#, c
	je	.L343	#,
	.loc 1 1607 0 discriminator 6
	cmpb	$97, -169(%rbp)	#, c
	je	.L343	#,
	.loc 1 1607 0 discriminator 7
	cmpb	$98, -169(%rbp)	#, c
	je	.L343	#,
	.loc 1 1607 0 discriminator 8
	cmpb	$99, -169(%rbp)	#, c
	je	.L341	#,
.L343:
	.loc 1 1607 0 discriminator 2
	cmpb	$114, -169(%rbp)	#, c
	je	.L344	#,
	.loc 1 1607 0 discriminator 1
	cmpb	$82, -169(%rbp)	#, c
	je	.L344	#,
	cmpb	$113, -169(%rbp)	#, c
	je	.L344	#,
	.loc 1 1607 0 discriminator 2
	cmpb	$81, -169(%rbp)	#, c
	je	.L344	#,
	.loc 1 1607 0 discriminator 3
	cmpb	$102, -169(%rbp)	#, c
	je	.L344	#,
	.loc 1 1607 0 discriminator 4
	cmpb	$116, -169(%rbp)	#, c
	je	.L344	#,
	.loc 1 1607 0 discriminator 5
	cmpb	$117, -169(%rbp)	#, c
	je	.L344	#,
	.loc 1 1607 0 discriminator 6
	cmpb	$97, -169(%rbp)	#, c
	je	.L344	#,
	.loc 1 1607 0 discriminator 7
	cmpb	$98, -169(%rbp)	#, c
	je	.L341	#,
.L344:
	.loc 1 1607 0 discriminator 2
	cmpb	$114, -169(%rbp)	#, c
	je	.L345	#,
	.loc 1 1607 0 discriminator 1
	cmpb	$82, -169(%rbp)	#, c
	je	.L345	#,
	cmpb	$113, -169(%rbp)	#, c
	je	.L345	#,
	.loc 1 1607 0 discriminator 2
	cmpb	$81, -169(%rbp)	#, c
	je	.L345	#,
	.loc 1 1607 0 discriminator 3
	cmpb	$102, -169(%rbp)	#, c
	je	.L345	#,
	.loc 1 1607 0 discriminator 4
	cmpb	$116, -169(%rbp)	#, c
	je	.L345	#,
	.loc 1 1607 0 discriminator 5
	cmpb	$117, -169(%rbp)	#, c
	je	.L345	#,
	.loc 1 1607 0 discriminator 6
	cmpb	$97, -169(%rbp)	#, c
	je	.L345	#,
	.loc 1 1607 0 discriminator 7
	cmpb	$98, -169(%rbp)	#, c
	je	.L345	#,
	.loc 1 1607 0 discriminator 8
	cmpb	$99, -169(%rbp)	#, c
	je	.L345	#,
	.loc 1 1607 0 discriminator 9
	cmpb	$100, -169(%rbp)	#, c
	je	.L345	#,
	.loc 1 1607 0 discriminator 10
	cmpb	$120, -169(%rbp)	#, c
	je	.L345	#,
	.loc 1 1607 0 discriminator 11
	cmpb	$89, -169(%rbp)	#, c
	je	.L345	#,
	.loc 1 1607 0 discriminator 12
	cmpb	$121, -169(%rbp)	#, c
	je	.L345	#,
	.loc 1 1607 0 discriminator 13
	cmpb	$65, -169(%rbp)	#, c
	je	.L341	#,
.L345:
	.loc 1 1607 0 discriminator 2
	cmpb	$114, -169(%rbp)	#, c
	je	.L346	#,
	.loc 1 1607 0 discriminator 1
	cmpb	$82, -169(%rbp)	#, c
	je	.L346	#,
	cmpb	$113, -169(%rbp)	#, c
	je	.L346	#,
	.loc 1 1607 0 discriminator 2
	cmpb	$81, -169(%rbp)	#, c
	je	.L346	#,
	.loc 1 1607 0 discriminator 3
	cmpb	$102, -169(%rbp)	#, c
	je	.L346	#,
	.loc 1 1607 0 discriminator 4
	cmpb	$116, -169(%rbp)	#, c
	je	.L346	#,
	.loc 1 1607 0 discriminator 5
	cmpb	$117, -169(%rbp)	#, c
	je	.L346	#,
	.loc 1 1607 0 discriminator 6
	cmpb	$97, -169(%rbp)	#, c
	je	.L346	#,
	.loc 1 1607 0 discriminator 7
	cmpb	$98, -169(%rbp)	#, c
	je	.L346	#,
	.loc 1 1607 0 discriminator 8
	cmpb	$99, -169(%rbp)	#, c
	je	.L346	#,
	.loc 1 1607 0 discriminator 9
	cmpb	$100, -169(%rbp)	#, c
	je	.L346	#,
	.loc 1 1607 0 discriminator 10
	cmpb	$120, -169(%rbp)	#, c
	je	.L346	#,
	.loc 1 1607 0 discriminator 11
	cmpb	$89, -169(%rbp)	#, c
	je	.L346	#,
	.loc 1 1607 0 discriminator 12
	cmpb	$121, -169(%rbp)	#, c
	je	.L346	#,
	.loc 1 1607 0 discriminator 13
	cmpb	$65, -169(%rbp)	#, c
	je	.L346	#,
	.loc 1 1607 0 discriminator 14
	cmpb	$68, -169(%rbp)	#, c
	je	.L346	#,
	.loc 1 1607 0 discriminator 15
	cmpb	$83, -169(%rbp)	#, c
	je	.L341	#,
.L346:
	.loc 1 1607 0 discriminator 2
	cmpb	$114, -169(%rbp)	#, c
	je	.L347	#,
	.loc 1 1607 0 discriminator 1
	cmpb	$82, -169(%rbp)	#, c
	je	.L347	#,
	cmpb	$113, -169(%rbp)	#, c
	je	.L347	#,
	.loc 1 1607 0 discriminator 2
	cmpb	$81, -169(%rbp)	#, c
	je	.L347	#,
	.loc 1 1607 0 discriminator 3
	cmpb	$102, -169(%rbp)	#, c
	je	.L347	#,
	.loc 1 1607 0 discriminator 4
	cmpb	$116, -169(%rbp)	#, c
	je	.L347	#,
	.loc 1 1607 0 discriminator 5
	cmpb	$117, -169(%rbp)	#, c
	je	.L347	#,
	.loc 1 1607 0 discriminator 6
	cmpb	$97, -169(%rbp)	#, c
	je	.L347	#,
	.loc 1 1607 0 discriminator 7
	cmpb	$98, -169(%rbp)	#, c
	je	.L347	#,
	.loc 1 1607 0 discriminator 8
	cmpb	$99, -169(%rbp)	#, c
	je	.L347	#,
	.loc 1 1607 0 discriminator 9
	cmpb	$100, -169(%rbp)	#, c
	je	.L347	#,
	.loc 1 1607 0 discriminator 10
	cmpb	$120, -169(%rbp)	#, c
	je	.L347	#,
	.loc 1 1607 0 discriminator 11
	cmpb	$89, -169(%rbp)	#, c
	je	.L347	#,
	.loc 1 1607 0 discriminator 12
	cmpb	$121, -169(%rbp)	#, c
	je	.L347	#,
	.loc 1 1607 0 discriminator 13
	cmpb	$65, -169(%rbp)	#, c
	je	.L347	#,
	.loc 1 1607 0 discriminator 14
	cmpb	$68, -169(%rbp)	#, c
	jne	.L347	#,
.L341:
	.loc 1 1608 0 is_stmt 1
	movl	-168(%rbp), %eax	# op_no, tmp159
	cltq
	movl	$1, -128(%rbp,%rax,4)	#, likely_spilled
	.loc 1 1609 0
	jmp	.L352	#
.L347:
.L352:
	nop
.L330:
	.loc 1 1570 0 discriminator 1
	movq	-144(%rbp), %rax	# p, p.151
	leaq	1(%rax), %rdx	#, tmp160
	movq	%rdx, -144(%rbp)	# tmp160, p
	movzbl	(%rax), %eax	# *p.151_31, tmp161
	movb	%al, -169(%rbp)	# tmp161, c
	cmpb	$0, -169(%rbp)	#, c
	je	.L348	#,
	.loc 1 1570 0 is_stmt 0 discriminator 2
	cmpb	$44, -169(%rbp)	#, c
	jne	.L349	#,
.L348:
.LBE26:
	.loc 1 1550 0 is_stmt 1
	addl	$1, -168(%rbp)	#, op_no
.L323:
	.loc 1 1550 0 is_stmt 0 discriminator 1
	movzbl	recog_data+996(%rip), %eax	# recog_data.n_operands, D.14324
	movsbl	%al, %eax	# D.14324, D.14323
	cmpl	-168(%rbp), %eax	# op_no, D.14323
	jg	.L350	#,
	.loc 1 1612 0 is_stmt 1
	movl	-164(%rbp), %eax	# any_matches, D.14323
.L351:
	.loc 1 1613 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	find_matches, .-find_matches
	.type	replace_in_call_usage, @function
replace_in_call_usage:
.LFB17:
	.loc 1 1624 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -40(%rbp)	# loc, loc
	movl	%esi, -44(%rbp)	# dst_reg, dst_reg
	movq	%rdx, -56(%rbp)	# src, src
	movq	%rcx, -64(%rbp)	# insn, insn
	.loc 1 1625 0
	movq	-40(%rbp), %rax	# loc, tmp72
	movq	(%rax), %rax	# *loc_4(D), tmp73
	movq	%rax, -8(%rbp)	# tmp73, x
	.loc 1 1630 0
	cmpq	$0, -8(%rbp)	#, x
	jne	.L354	#,
	.loc 1 1631 0
	jmp	.L353	#
.L354:
	.loc 1 1633 0
	movq	-8(%rbp), %rax	# x, tmp74
	movzwl	(%rax), %eax	# x_5->code, D.14326
	movzwl	%ax, %eax	# D.14326, tmp75
	movl	%eax, -20(%rbp)	# tmp75, code
	.loc 1 1634 0
	cmpl	$61, -20(%rbp)	#, code
	jne	.L356	#,
	.loc 1 1636 0
	movq	-8(%rbp), %rax	# x, tmp76
	movl	8(%rax), %eax	# x_5->fld[0].rtuint, D.14327
	cmpl	-44(%rbp), %eax	# dst_reg, D.14327
	je	.L357	#,
	.loc 1 1637 0
	jmp	.L353	#
.L357:
	.loc 1 1639 0
	movq	-56(%rbp), %rdx	# src, tmp77
	movq	-40(%rbp), %rsi	# loc, tmp78
	movq	-64(%rbp), %rax	# insn, tmp79
	movl	$1, %ecx	#,
	movq	%rax, %rdi	# tmp79,
	call	validate_change	#
	.loc 1 1641 0
	jmp	.L353	#
.L356:
	.loc 1 1645 0
	movl	-20(%rbp), %eax	# code, code.152
	cltq
	movq	rtx_format(,%rax,8), %rax	# rtx_format, tmp81
	movq	%rax, -16(%rbp)	# tmp81, fmt
	.loc 1 1646 0
	movl	$0, -28(%rbp)	#, i
	jmp	.L358	#
.L363:
	.loc 1 1647 0
	movq	-16(%rbp), %rax	# fmt, tmp82
	movzbl	(%rax), %eax	# *fmt_1, D.14330
	cmpb	$101, %al	#, D.14330
	jne	.L359	#,
	.loc 1 1648 0
	movl	-28(%rbp), %eax	# i, tmp84
	cltq
	leaq	0(,%rax,8), %rdx	#, tmp85
	movq	-8(%rbp), %rax	# x, tmp87
	addq	%rdx, %rax	# tmp85, tmp86
	leaq	8(%rax), %rdi	#, D.14331
	movq	-64(%rbp), %rcx	# insn, tmp88
	movq	-56(%rbp), %rdx	# src, tmp89
	movl	-44(%rbp), %eax	# dst_reg, tmp90
	movl	%eax, %esi	# tmp90,
	call	replace_in_call_usage	#
	jmp	.L360	#
.L359:
	.loc 1 1649 0
	movq	-16(%rbp), %rax	# fmt, tmp91
	movzbl	(%rax), %eax	# *fmt_1, D.14330
	cmpb	$69, %al	#, D.14330
	jne	.L360	#,
	.loc 1 1650 0
	movl	$0, -24(%rbp)	#, j
	jmp	.L361	#
.L362:
	.loc 1 1651 0 discriminator 2
	movq	-8(%rbp), %rax	# x, tmp92
	movl	-28(%rbp), %edx	# i, tmp94
	movslq	%edx, %rdx	# tmp94, tmp93
	movq	8(%rax,%rdx,8), %rax	# x_5->fld[i_2].rtvec, D.14332
	movl	-24(%rbp), %edx	# j, tmp96
	movslq	%edx, %rdx	# tmp96, tmp95
	salq	$3, %rdx	#, tmp97
	addq	%rdx, %rax	# tmp97, tmp98
	leaq	8(%rax), %rdi	#, D.14331
	movq	-64(%rbp), %rcx	# insn, tmp99
	movq	-56(%rbp), %rdx	# src, tmp100
	movl	-44(%rbp), %eax	# dst_reg, tmp101
	movl	%eax, %esi	# tmp101,
	call	replace_in_call_usage	#
	.loc 1 1650 0 discriminator 2
	addl	$1, -24(%rbp)	#, j
.L361:
	.loc 1 1650 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# x, tmp102
	movl	-28(%rbp), %edx	# i, tmp104
	movslq	%edx, %rdx	# tmp104, tmp103
	movq	8(%rax,%rdx,8), %rax	# x_5->fld[i_2].rtvec, D.14332
	movl	(%rax), %eax	# _22->num_elem, D.14329
	cmpl	-24(%rbp), %eax	# j, D.14329
	jg	.L362	#,
.L360:
	.loc 1 1646 0 is_stmt 1
	addl	$1, -28(%rbp)	#, i
	addq	$1, -16(%rbp)	#, fmt
.L358:
	.loc 1 1646 0 is_stmt 0 discriminator 1
	movl	-20(%rbp), %eax	# code, code.153
	cltq
	movzbl	rtx_length(%rax), %eax	# rtx_length, D.14328
	movzbl	%al, %eax	# D.14328, D.14329
	cmpl	-28(%rbp), %eax	# i, D.14329
	jg	.L363	#,
.L353:
	.loc 1 1652 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	replace_in_call_usage, .-replace_in_call_usage
	.type	fixup_match_1, @function
fixup_match_1:
.LFB18:
	.loc 1 1667 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$208, %rsp	#,
	movq	%rdi, -168(%rbp)	# insn, insn
	movq	%rsi, -176(%rbp)	# set, set
	movq	%rdx, -184(%rbp)	# src, src
	movq	%rcx, -192(%rbp)	# src_subreg, src_subreg
	movq	%r8, -200(%rbp)	# dst, dst
	movl	%r9d, -204(%rbp)	# backward, backward
	.loc 1 1669 0
	movq	$0, -48(%rbp)	#, post_inc
	movq	$0, -40(%rbp)	#, post_inc_set
	movq	$0, -32(%rbp)	#, search_end
	.loc 1 1670 0
	movl	$0, -160(%rbp)	#, success
	.loc 1 1671 0
	movl	$0, -156(%rbp)	#, num_calls
	movl	$0, -152(%rbp)	#, s_num_calls
	.loc 1 1672 0
	movl	$37, -148(%rbp)	#, code
	.loc 1 1673 0
	movq	$0, -120(%rbp)	#, insn_const
	.loc 1 1674 0
	movq	$0, -104(%rbp)	#, overlap
	.loc 1 1675 0
	movq	-184(%rbp), %rdx	# src, tmp332
	movq	-168(%rbp), %rax	# insn, tmp333
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp333,
	call	find_reg_note	#
	movq	%rax, -96(%rbp)	# tmp334, src_note
	movq	$0, -88(%rbp)	#, dst_note
	.loc 1 1681 0
	movq	-184(%rbp), %rax	# src, tmp335
	movzbl	3(%rax), %eax	# *src_66(D), D.14334
	andl	$4, %eax	#, D.14334
	testb	%al, %al	# D.14334
	je	.L365	#,
	.loc 1 1682 0
	movl	$0, %eax	#, D.14333
	jmp	.L366	#
.L365:
	.loc 1 1684 0
	cmpq	$0, -96(%rbp)	#, src_note
	jne	.L367	#,
	.loc 1 1694 0
	movq	-176(%rbp), %rax	# set, tmp336
	movq	16(%rax), %rax	# set_72(D)->fld[1].rtx, D.14335
	movzwl	(%rax), %eax	# _73->code, D.14336
	movzwl	%ax, %eax	# D.14336, tmp337
	movl	%eax, -148(%rbp)	# tmp337, code
	.loc 1 1695 0
	cmpl	$75, -148(%rbp)	#, code
	je	.L368	#,
	.loc 1 1695 0 is_stmt 0 discriminator 1
	cmpl	$90, -148(%rbp)	#, code
	je	.L368	#,
	.loc 1 1696 0 is_stmt 1
	cmpl	$87, -148(%rbp)	#, code
	je	.L368	#,
	.loc 1 1696 0 is_stmt 0 discriminator 1
	cmpl	$89, -148(%rbp)	#, code
	jne	.L369	#,
.L368:
	.loc 1 1697 0 is_stmt 1
	movq	-176(%rbp), %rax	# set, tmp338
	movq	16(%rax), %rax	# set_72(D)->fld[1].rtx, D.14335
	movq	8(%rax), %rax	# _76->fld[0].rtx, D.14335
	cmpq	-184(%rbp), %rax	# src, D.14335
	jne	.L369	#,
	.loc 1 1698 0
	movq	-176(%rbp), %rax	# set, tmp339
	movq	16(%rax), %rax	# set_72(D)->fld[1].rtx, D.14335
	movq	16(%rax), %rax	# _78->fld[1].rtx, D.14335
	movzwl	(%rax), %eax	# _79->code, D.14336
	cmpw	$54, %ax	#, D.14336
	jne	.L369	#,
	.loc 1 1699 0
	movq	-176(%rbp), %rax	# set, tmp340
	movq	16(%rax), %rax	# set_72(D)->fld[1].rtx, D.14335
	movq	16(%rax), %rax	# _81->fld[1].rtx, D.14335
	movq	8(%rax), %rax	# _82->fld[0].rtwint, tmp341
	movq	%rax, -120(%rbp)	# tmp341, insn_const
	jmp	.L367	#
.L369:
	.loc 1 1700 0
	movq	-176(%rbp), %rax	# set, tmp342
	movq	16(%rax), %rax	# set_72(D)->fld[1].rtx, D.14335
	movq	-200(%rbp), %rdx	# dst, tmp343
	movq	-184(%rbp), %rcx	# src, tmp344
	movq	%rcx, %rsi	# tmp344,
	movq	%rax, %rdi	# D.14335,
	call	stable_and_no_regs_but_for_p	#
	testl	%eax, %eax	# D.14333
	jne	.L370	#,
	.loc 1 1701 0
	movl	$0, %eax	#, D.14333
	jmp	.L366	#
.L370:
	.loc 1 1704 0
	movl	$37, -148(%rbp)	#, code
.L367:
	.loc 1 1707 0
	cmpq	$0, 32(%rbp)	#, regmove_dump_file
	je	.L371	#,
	.loc 1 1708 0
	movq	-168(%rbp), %rax	# insn, tmp345
	movl	8(%rax), %edx	# insn_65(D)->fld[0].rtint, D.14333
	movl	24(%rbp), %ecx	# match_number, tmp346
	movq	32(%rbp), %rax	# regmove_dump_file, tmp347
	movl	%ecx, %r8d	# tmp346,
	movl	%edx, %ecx	# D.14333,
	movl	16(%rbp), %edx	# operand_number,
	movl	$.LC5, %esi	#,
	movq	%rax, %rdi	# tmp347,
	movl	$0, %eax	#,
	call	fprintf	#
.L371:
	.loc 1 1716 0
	call	get_insns	#
	movq	%rax, %rdx	#, D.14335
	movq	-168(%rbp), %rcx	# insn, tmp348
	movq	-184(%rbp), %rax	# src, tmp349
	movq	%rcx, %rsi	# tmp348,
	movq	%rax, %rdi	# tmp349,
	call	reg_is_remote_constant_p	#
	testl	%eax, %eax	# D.14333
	je	.L372	#,
	.loc 1 1717 0
	movl	$0, %eax	#, D.14333
	jmp	.L366	#
.L372:
	.loc 1 1724 0
	movl	$0, -140(%rbp)	#, s_length
	movl	-140(%rbp), %eax	# s_length, tmp350
	movl	%eax, -144(%rbp)	# tmp350, length
	movq	-168(%rbp), %rax	# insn, tmp351
	movq	24(%rax), %rax	# insn_65(D)->fld[2].rtx, tmp352
	movq	%rax, -128(%rbp)	# tmp352, p
	jmp	.L373	#
.L415:
	.loc 1 1726 0
	movq	-128(%rbp), %rax	# p, tmp353
	movzwl	(%rax), %eax	# p_3->code, D.14336
	cmpw	$34, %ax	#, D.14336
	jne	.L374	#,
	.loc 1 1727 0
	movq	-200(%rbp), %rax	# dst, tmp354
	movl	8(%rax), %eax	# dst_85(D)->fld[0].rtuint, D.14337
	movq	-128(%rbp), %rdx	# p, tmp355
	leaq	64(%rdx), %rdi	#, D.14338
	movq	-128(%rbp), %rcx	# p, tmp356
	movq	-184(%rbp), %rdx	# src, tmp357
	movl	%eax, %esi	# D.14337,
	call	replace_in_call_usage	#
.L374:
	.loc 1 1732 0
	movq	-128(%rbp), %rax	# p, tmp358
	movq	%rax, %rdi	# tmp358,
	call	perhaps_ends_bb_p	#
	testl	%eax, %eax	# D.14333
	je	.L375	#,
	.loc 1 1733 0
	jmp	.L376	#
.L375:
	.loc 1 1734 0
	movq	-128(%rbp), %rax	# p, tmp359
	movzwl	(%rax), %eax	# p_3->code, D.14336
	movzwl	%ax, %eax	# D.14336, D.14333
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.14339
	cmpb	$105, %al	#, D.14339
	je	.L377	#,
	.loc 1 1735 0
	jmp	.L378	#
.L377:
	.loc 1 1737 0
	addl	$1, -144(%rbp)	#, length
	.loc 1 1738 0
	cmpq	$0, -96(%rbp)	#, src_note
	je	.L379	#,
	.loc 1 1739 0
	addl	$1, -140(%rbp)	#, s_length
.L379:
	.loc 1 1741 0
	movq	-128(%rbp), %rdx	# p, tmp361
	movq	-184(%rbp), %rax	# src, tmp362
	movq	%rdx, %rsi	# tmp361,
	movq	%rax, %rdi	# tmp362,
	call	reg_set_p	#
	testl	%eax, %eax	# D.14333
	jne	.L376	#,
	.loc 1 1741 0 is_stmt 0 discriminator 1
	movq	-128(%rbp), %rdx	# p, tmp363
	movq	-200(%rbp), %rax	# dst, tmp364
	movq	%rdx, %rsi	# tmp363,
	movq	%rax, %rdi	# tmp364,
	call	reg_set_p	#
	testl	%eax, %eax	# D.14333
	jne	.L376	#,
	.loc 1 1742 0 is_stmt 1
	movq	-128(%rbp), %rax	# p, tmp365
	movq	32(%rax), %rax	# p_3->fld[3].rtx, D.14335
	movzwl	(%rax), %eax	# _110->code, D.14336
	cmpw	$48, %ax	#, D.14336
	jne	.L380	#,
	.loc 1 1743 0
	movq	-128(%rbp), %rax	# p, tmp366
	movq	32(%rax), %rax	# p_3->fld[3].rtx, D.14335
	movq	8(%rax), %rdx	# _112->fld[0].rtx, D.14335
	movq	-184(%rbp), %rax	# src, tmp367
	movq	%rdx, %rsi	# D.14335,
	movq	%rax, %rdi	# tmp367,
	call	reg_overlap_mentioned_p	#
	testl	%eax, %eax	# D.14333
	jne	.L376	#,
.L380:
	.loc 1 1748 0
	movq	-200(%rbp), %rax	# dst, tmp368
	movl	8(%rax), %edx	# dst_85(D)->fld[0].rtuint, D.14337
	movq	-128(%rbp), %rax	# p, tmp369
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp369,
	call	find_regno_note	#
	movq	%rax, -88(%rbp)	# tmp370, dst_note
	cmpq	$0, -88(%rbp)	#, dst_note
	je	.L381	#,
	.loc 1 1749 0
	movq	-88(%rbp), %rax	# dst_note, tmp371
	movq	8(%rax), %rax	# dst_note_116->fld[0].rtx, D.14335
	movzbl	2(%rax), %edx	# _117->mode, D.14334
	movq	-200(%rbp), %rax	# dst, tmp372
	movzbl	2(%rax), %eax	# dst_85(D)->mode, D.14334
	cmpb	%al, %dl	# D.14334, D.14334
	jne	.L381	#,
	.loc 1 1755 0
	cmpq	$0, -104(%rbp)	#, overlap
	je	.L382	#,
	.loc 1 1755 0 is_stmt 0 discriminator 1
	movq	-128(%rbp), %rax	# p, tmp373
	movq	16(%rax), %rax	# p_3->fld[1].rtx, D.14335
	movzbl	2(%rax), %eax	# _120->mode, D.14334
	testb	%al, %al	# D.14334
	je	.L382	#,
	.loc 1 1756 0 is_stmt 1
	jmp	.L376	#
.L382:
	.loc 1 1758 0
	cmpq	$0, -96(%rbp)	#, src_note
	jne	.L383	#,
.LBB28:
	.loc 1 1761 0
	movq	$0, -72(%rbp)	#, set2
	.loc 1 1765 0
	movq	-128(%rbp), %rax	# p, tmp374
	movq	32(%rax), %rdx	# p_3->fld[3].rtx, D.14335
	movq	-184(%rbp), %rax	# src, tmp375
	movq	%rdx, %rsi	# D.14335,
	movq	%rax, %rdi	# tmp375,
	call	reg_overlap_mentioned_p	#
	testl	%eax, %eax	# D.14333
	je	.L384	#,
	.loc 1 1766 0
	jmp	.L376	#
.L384:
	.loc 1 1767 0
	movq	-128(%rbp), %rax	# p, tmp376
	movq	%rax, -80(%rbp)	# tmp376, q
	jmp	.L385	#
.L390:
	.loc 1 1772 0
	movq	-80(%rbp), %rax	# q, tmp377
	movq	%rax, %rdi	# tmp377,
	call	perhaps_ends_bb_p	#
	testl	%eax, %eax	# D.14333
	je	.L386	#,
	.loc 1 1774 0
	movq	$0, -80(%rbp)	#, q
	.loc 1 1775 0
	jmp	.L387	#
.L386:
	.loc 1 1777 0
	movq	-80(%rbp), %rax	# q, tmp378
	movzwl	(%rax), %eax	# q_34->code, D.14336
	movzwl	%ax, %eax	# D.14336, D.14333
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.14339
	cmpb	$105, %al	#, D.14339
	je	.L388	#,
	.loc 1 1778 0
	jmp	.L389	#
.L388:
	.loc 1 1779 0
	movq	-80(%rbp), %rax	# q, tmp380
	movq	32(%rax), %rdx	# q_34->fld[3].rtx, D.14335
	movq	-184(%rbp), %rax	# src, tmp381
	movq	%rdx, %rsi	# D.14335,
	movq	%rax, %rdi	# tmp381,
	call	reg_overlap_mentioned_p	#
	testl	%eax, %eax	# D.14333
	jne	.L387	#,
	.loc 1 1780 0
	movq	-80(%rbp), %rdx	# q, tmp382
	movq	-184(%rbp), %rax	# src, tmp383
	movq	%rdx, %rsi	# tmp382,
	movq	%rax, %rdi	# tmp383,
	call	reg_set_p	#
	testl	%eax, %eax	# D.14333
	jne	.L387	#,
.L389:
	.loc 1 1767 0
	movq	-80(%rbp), %rax	# q, tmp384
	movq	24(%rax), %rax	# q_34->fld[2].rtx, tmp385
	movq	%rax, -80(%rbp)	# tmp385, q
.L385:
	.loc 1 1767 0 is_stmt 0 discriminator 1
	cmpq	$0, -80(%rbp)	#, q
	jne	.L390	#,
.L387:
	.loc 1 1783 0 is_stmt 1
	cmpq	$0, -80(%rbp)	#, q
	je	.L391	#,
	.loc 1 1784 0
	movq	-80(%rbp), %rax	# q, tmp386
	movzwl	(%rax), %eax	# q_35->code, D.14336
	movzwl	%ax, %eax	# D.14336, D.14333
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.14339
	cmpb	$105, %al	#, D.14339
	jne	.L392	#,
	.loc 1 1784 0 is_stmt 0 discriminator 1
	movq	-80(%rbp), %rax	# q, tmp388
	movq	32(%rax), %rax	# q_35->fld[3].rtx, D.14335
	movzwl	(%rax), %eax	# _138->code, D.14336
	cmpw	$47, %ax	#, D.14336
	jne	.L393	#,
	.loc 1 1784 0 discriminator 3
	movq	-80(%rbp), %rax	# q, tmp389
	movq	32(%rax), %rax	# q_35->fld[3].rtx, iftmp.155
	jmp	.L395	#
.L393:
	.loc 1 1784 0 discriminator 4
	movq	-80(%rbp), %rax	# q, tmp390
	movq	32(%rax), %rdx	# q_35->fld[3].rtx, D.14335
	movq	-80(%rbp), %rax	# q, tmp391
	movq	%rdx, %rsi	# D.14335,
	movq	%rax, %rdi	# tmp391,
	call	single_set_2	#
	jmp	.L395	#
.L392:
	.loc 1 1784 0 discriminator 2
	movl	$0, %eax	#, iftmp.154
.L395:
	.loc 1 1784 0 discriminator 5
	movq	%rax, -72(%rbp)	# iftmp.154, set2
.L391:
	.loc 1 1785 0 is_stmt 1
	cmpq	$0, -80(%rbp)	#, q
	je	.L396	#,
	.loc 1 1785 0 is_stmt 0 discriminator 1
	cmpq	$0, -72(%rbp)	#, set2
	je	.L396	#,
	movq	-72(%rbp), %rax	# set2, tmp392
	movq	16(%rax), %rax	# set2_37->fld[1].rtx, D.14335
	movzwl	(%rax), %eax	# _146->code, D.14336
	movzwl	%ax, %eax	# D.14336, D.14337
	cmpl	-148(%rbp), %eax	# code, D.14337
	jne	.L396	#,
	.loc 1 1786 0 is_stmt 1
	movq	-72(%rbp), %rax	# set2, tmp393
	movq	16(%rax), %rax	# set2_37->fld[1].rtx, D.14335
	movq	8(%rax), %rax	# _149->fld[0].rtx, D.14335
	cmpq	-184(%rbp), %rax	# src, D.14335
	jne	.L396	#,
	.loc 1 1787 0
	movq	-72(%rbp), %rax	# set2, tmp394
	movq	16(%rax), %rax	# set2_37->fld[1].rtx, D.14335
	movq	16(%rax), %rax	# _151->fld[1].rtx, D.14335
	movzwl	(%rax), %eax	# _152->code, D.14336
	cmpw	$54, %ax	#, D.14336
	jne	.L396	#,
	.loc 1 1788 0
	movq	-72(%rbp), %rax	# set2, tmp395
	movq	8(%rax), %rax	# set2_37->fld[0].rtx, D.14335
	cmpq	-184(%rbp), %rax	# src, D.14335
	je	.L397	#,
	.loc 1 1789 0
	movq	-184(%rbp), %rdx	# src, tmp396
	movq	-80(%rbp), %rax	# q, tmp397
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp397,
	call	find_reg_note	#
	testq	%rax, %rax	# D.14335
	jne	.L397	#,
.L396:
	.loc 1 1797 0
	cmpl	$75, -148(%rbp)	#, code
	jne	.L376	#,
	.loc 1 1797 0 is_stmt 0 discriminator 1
	cmpl	$0, -204(%rbp)	#, backward
	je	.L376	#,
	.loc 1 1801 0 is_stmt 1
	cmpq	$0, -88(%rbp)	#, dst_note
	je	.L398	#,
	.loc 1 1801 0 is_stmt 0 discriminator 1
	movq	reg_n_info(%rip), %rax	# reg_n_info, reg_n_info.156
	movq	-200(%rbp), %rdx	# dst, tmp398
	movl	8(%rdx), %edx	# dst_85(D)->fld[0].rtuint, D.14337
	movl	%edx, %edx	# D.14337, tmp399
	addq	$4, %rdx	#, tmp400
	movq	(%rax,%rdx,8), %rax	# reg_n_info.156_170->data.reg, D.14342
	movl	32(%rax), %eax	# _172->calls_crossed, D.14333
	testl	%eax, %eax	# D.14333
	jne	.L398	#,
	.loc 1 1802 0 is_stmt 1
	movq	-128(%rbp), %rax	# p, tmp401
	movzwl	(%rax), %eax	# p_3->code, D.14336
	movzwl	%ax, %eax	# D.14336, D.14333
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.14339
	.loc 1 1797 0
	cmpb	$105, %al	#, D.14339
	jne	.L398	#,
	.loc 1 1802 0 discriminator 2
	movq	-128(%rbp), %rax	# p, tmp403
	movq	32(%rax), %rax	# p_3->fld[3].rtx, D.14335
	movzwl	(%rax), %eax	# _177->code, D.14336
	.loc 1 1797 0 discriminator 2
	cmpw	$47, %ax	#, D.14336
	jne	.L399	#,
	.loc 1 1802 0
	movq	-128(%rbp), %rax	# p, tmp404
	movq	32(%rax), %rax	# p_3->fld[3].rtx, D.14335
	testq	%rax, %rax	# D.14335
	je	.L398	#,
	jmp	.L400	#
.L399:
	movq	-128(%rbp), %rax	# p, tmp405
	movq	32(%rax), %rdx	# p_3->fld[3].rtx, D.14335
	movq	-128(%rbp), %rax	# p, tmp406
	movq	%rdx, %rsi	# D.14335,
	movq	%rax, %rdi	# tmp406,
	call	single_set_2	#
	testq	%rax, %rax	# D.14335
	je	.L398	#,
.L400:
	.loc 1 1803 0
	movq	-128(%rbp), %rax	# p, tmp407
	movzwl	(%rax), %eax	# p_3->code, D.14336
	movzwl	%ax, %eax	# D.14336, D.14333
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.14339
	cmpb	$105, %al	#, D.14339
	jne	.L401	#,
	.loc 1 1803 0 is_stmt 0 discriminator 1
	movq	-128(%rbp), %rax	# p, tmp409
	movq	32(%rax), %rax	# p_3->fld[3].rtx, D.14335
	movzwl	(%rax), %eax	# _185->code, D.14336
	cmpw	$47, %ax	#, D.14336
	jne	.L402	#,
	.loc 1 1803 0 discriminator 3
	movq	-128(%rbp), %rax	# p, tmp410
	movq	32(%rax), %rax	# p_3->fld[3].rtx, iftmp.158
	jmp	.L404	#
.L402:
	.loc 1 1803 0 discriminator 4
	movq	-128(%rbp), %rax	# p, tmp411
	movq	32(%rax), %rdx	# p_3->fld[3].rtx, D.14335
	movq	-128(%rbp), %rax	# p, tmp412
	movq	%rdx, %rsi	# D.14335,
	movq	%rax, %rdi	# tmp412,
	call	single_set_2	#
	jmp	.L404	#
.L401:
	.loc 1 1803 0 discriminator 2
	movl	$0, %eax	#, iftmp.157
.L404:
	.loc 1 1803 0 discriminator 5
	movq	8(%rax), %rax	# iftmp.157_50->fld[0].rtx, D.14335
	movzwl	(%rax), %eax	# _192->code, D.14336
	cmpw	$61, %ax	#, D.14336
	jne	.L398	#,
	.loc 1 1804 0 is_stmt 1
	movq	-128(%rbp), %rax	# p, tmp413
	movzwl	(%rax), %eax	# p_3->code, D.14336
	movzwl	%ax, %eax	# D.14336, D.14333
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.14339
	cmpb	$105, %al	#, D.14339
	jne	.L405	#,
	.loc 1 1804 0 is_stmt 0 discriminator 1
	movq	-128(%rbp), %rax	# p, tmp415
	movq	32(%rax), %rax	# p_3->fld[3].rtx, D.14335
	movzwl	(%rax), %eax	# _197->code, D.14336
	cmpw	$47, %ax	#, D.14336
	jne	.L406	#,
	.loc 1 1804 0 discriminator 3
	movq	-128(%rbp), %rax	# p, tmp416
	movq	32(%rax), %rax	# p_3->fld[3].rtx, iftmp.160
	jmp	.L408	#
.L406:
	.loc 1 1804 0 discriminator 4
	movq	-128(%rbp), %rax	# p, tmp417
	movq	32(%rax), %rdx	# p_3->fld[3].rtx, D.14335
	movq	-128(%rbp), %rax	# p, tmp418
	movq	%rdx, %rsi	# D.14335,
	movq	%rax, %rdi	# tmp418,
	call	single_set_2	#
	jmp	.L408	#
.L405:
	.loc 1 1804 0 discriminator 2
	movl	$0, %eax	#, iftmp.159
.L408:
	.loc 1 1804 0 discriminator 5
	movq	8(%rax), %rax	# iftmp.159_52->fld[0].rtx, D.14335
	movl	8(%rax), %eax	# _204->fld[0].rtuint, D.14337
	.loc 1 1801 0 is_stmt 1 discriminator 5
	cmpl	$52, %eax	#, D.14337
	jbe	.L376	#,
.L398:
	.loc 1 1808 0
	movq	-128(%rbp), %rax	# p, tmp419
	movzbl	2(%rax), %eax	# p_3->mode, D.14334
	testb	%al, %al	# D.14334
	jne	.L376	#,
	.loc 1 1810 0
	movq	-80(%rbp), %rax	# q, tmp420
	movq	%rax, -32(%rbp)	# tmp420, search_end
	.loc 1 1811 0
	movq	-168(%rbp), %rax	# insn, tmp421
	movq	%rax, -80(%rbp)	# tmp421, q
	.loc 1 1812 0
	movq	-176(%rbp), %rax	# set, tmp422
	movq	%rax, -72(%rbp)	# tmp422, set2
	.loc 1 1813 0
	movq	-120(%rbp), %rax	# insn_const, tmp426
	negq	%rax	# tmp425
	movq	%rax, -112(%rbp)	# tmp425, newconst
	.loc 1 1814 0
	movl	$76, -148(%rbp)	#, code
	.loc 1 1797 0
	jmp	.L409	#
.L397:
	.loc 1 1821 0
	movq	-72(%rbp), %rax	# set2, tmp427
	movq	16(%rax), %rax	# set2_37->fld[1].rtx, D.14335
	movq	16(%rax), %rax	# _156->fld[1].rtx, D.14335
	movq	8(%rax), %rax	# _157->fld[0].rtwint, D.14340
	subq	-120(%rbp), %rax	# insn_const, tmp429
	movq	%rax, -112(%rbp)	# tmp429, newconst
	.loc 1 1823 0
	cmpl	$75, -148(%rbp)	#, code
	je	.L410	#,
	.loc 1 1824 0
	cmpq	$0, -112(%rbp)	#, newconst
	js	.L376	#,
	.loc 1 1825 0
	movq	-112(%rbp), %rdx	# newconst, newconst.161
	.loc 1 1826 0
	movq	-72(%rbp), %rax	# set2, tmp430
	movq	16(%rax), %rax	# set2_37->fld[1].rtx, D.14335
	movzbl	2(%rax), %eax	# _161->mode, D.14334
	movzbl	%al, %eax	# D.14334, D.14333
	cltq
	movzwl	mode_bitsize(%rax,%rax), %eax	# mode_bitsize, D.14336
	movzwl	%ax, %eax	# D.14336, D.14341
	.loc 1 1825 0
	cmpq	%rax, %rdx	# D.14341, newconst.161
	jae	.L376	#,
.L410:
	.loc 1 1829 0
	cmpl	$75, -148(%rbp)	#, code
	jne	.L409	#,
	.loc 1 1831 0
	movq	-80(%rbp), %rax	# q, tmp432
	movq	%rax, -48(%rbp)	# tmp432, post_inc
	.loc 1 1832 0
	movq	-72(%rbp), %rax	# set2, tmp433
	movq	8(%rax), %rax	# set2_37->fld[0].rtx, D.14335
	cmpq	-184(%rbp), %rax	# src, D.14335
	je	.L409	#,
	.loc 1 1833 0
	movq	-72(%rbp), %rax	# set2, tmp434
	movq	%rax, -40(%rbp)	# tmp434, post_inc_set
.L409:
	.loc 1 1839 0
	movq	-112(%rbp), %rax	# newconst, tmp435
	movq	%rax, %rsi	# tmp435,
	movl	$0, %edi	#,
	call	gen_rtx_CONST_INT	#
	movq	%rax, %rdx	#, D.14335
	movq	-72(%rbp), %rax	# set2, tmp436
	movq	16(%rax), %rax	# set2_38->fld[1].rtx, D.14335
	leaq	16(%rax), %rsi	#, D.14338
	movq	-80(%rbp), %rax	# q, tmp437
	movl	$1, %ecx	#,
	movq	%rax, %rdi	# tmp437,
	call	validate_change	#
.L383:
.LBE28:
	.loc 1 1842 0
	movl	24(%rbp), %eax	# match_number, tmp439
	cltq
	addq	$30, %rax	#, tmp440
	movq	recog_data(,%rax,8), %rsi	# recog_data.operand_loc, D.14338
	movq	-184(%rbp), %rdx	# src, tmp441
	movq	-168(%rbp), %rax	# insn, tmp442
	movl	$1, %ecx	#,
	movq	%rax, %rdi	# tmp442,
	call	validate_change	#
	.loc 1 1843 0
	movq	-128(%rbp), %rdx	# p, tmp443
	movq	-192(%rbp), %rcx	# src_subreg, tmp444
	movq	-200(%rbp), %rax	# dst, tmp445
	movq	%rcx, %rsi	# tmp444,
	movq	%rax, %rdi	# tmp445,
	call	validate_replace_rtx	#
	testl	%eax, %eax	# D.14333
	je	.L411	#,
	.loc 1 1844 0
	movl	$1, -160(%rbp)	#, success
	.loc 1 1845 0
	jmp	.L376	#
.L411:
	jmp	.L376	#
.L381:
	.loc 1 1848 0
	movq	-128(%rbp), %rax	# p, tmp446
	movq	32(%rax), %rdx	# p_3->fld[3].rtx, D.14335
	movq	-200(%rbp), %rax	# dst, tmp447
	movq	%rdx, %rsi	# D.14335,
	movq	%rax, %rdi	# tmp447,
	call	reg_overlap_mentioned_p	#
	testl	%eax, %eax	# D.14333
	je	.L412	#,
	.loc 1 1849 0
	jmp	.L376	#
.L412:
	.loc 1 1850 0
	cmpq	$0, -96(%rbp)	#, src_note
	jne	.L413	#,
	.loc 1 1850 0 is_stmt 0 discriminator 1
	movq	-128(%rbp), %rax	# p, tmp448
	movq	32(%rax), %rdx	# p_3->fld[3].rtx, D.14335
	movq	-184(%rbp), %rax	# src, tmp449
	movq	%rdx, %rsi	# D.14335,
	movq	%rax, %rdi	# tmp449,
	call	reg_overlap_mentioned_p	#
	testl	%eax, %eax	# D.14333
	je	.L413	#,
	.loc 1 1857 0 is_stmt 1
	movq	-128(%rbp), %rax	# p, tmp450
	movq	%rax, -104(%rbp)	# tmp450, overlap
	.loc 1 1858 0
	movq	-184(%rbp), %rdx	# src, tmp451
	movq	-128(%rbp), %rax	# p, tmp452
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp452,
	call	find_reg_note	#
	movq	%rax, -96(%rbp)	# tmp453, src_note
.L413:
	.loc 1 1863 0
	movq	-128(%rbp), %rax	# p, tmp454
	movzwl	(%rax), %eax	# p_3->code, D.14336
	cmpw	$34, %ax	#, D.14336
	jne	.L378	#,
	.loc 1 1865 0
	movq	reg_n_info(%rip), %rax	# reg_n_info, reg_n_info.162
	movq	-184(%rbp), %rdx	# src, tmp455
	movl	8(%rdx), %edx	# src_66(D)->fld[0].rtuint, D.14337
	movl	%edx, %edx	# D.14337, tmp456
	addq	$4, %rdx	#, tmp457
	movq	(%rax,%rdx,8), %rax	# reg_n_info.162_226->data.reg, D.14342
	movl	32(%rax), %eax	# _228->calls_crossed, D.14333
	testl	%eax, %eax	# D.14333
	jne	.L414	#,
	.loc 1 1866 0
	jmp	.L376	#
.L414:
	.loc 1 1868 0
	addl	$1, -156(%rbp)	#, num_calls
	.loc 1 1870 0
	cmpq	$0, -96(%rbp)	#, src_note
	je	.L378	#,
	.loc 1 1871 0
	addl	$1, -152(%rbp)	#, s_num_calls
.L378:
	.loc 1 1724 0
	movq	-128(%rbp), %rax	# p, tmp458
	movq	24(%rax), %rax	# p_3->fld[2].rtx, tmp459
	movq	%rax, -128(%rbp)	# tmp459, p
.L373:
	.loc 1 1724 0 is_stmt 0 discriminator 1
	cmpq	$0, -128(%rbp)	#, p
	jne	.L415	#,
.L376:
	.loc 1 1876 0 is_stmt 1
	cmpl	$0, -160(%rbp)	#, success
	jne	.L416	#,
	.loc 1 1877 0
	movl	$0, %eax	#, D.14333
	jmp	.L366	#
.L416:
	.loc 1 1880 0
	movq	-88(%rbp), %rdx	# dst_note, tmp460
	movq	-128(%rbp), %rax	# p, tmp461
	movq	%rdx, %rsi	# tmp460,
	movq	%rax, %rdi	# tmp461,
	call	remove_note	#
	.loc 1 1881 0
	cmpl	$76, -148(%rbp)	#, code
	jne	.L417	#,
	.loc 1 1883 0
	movq	-168(%rbp), %rax	# insn, tmp462
	movq	32(%rax), %rax	# insn_65(D)->fld[3].rtx, D.14335
	movq	%rax, %rdi	# D.14335,
	call	copy_rtx	#
	movq	-128(%rbp), %rdx	# p, tmp463
	movq	%rdx, %rsi	# tmp463,
	movq	%rax, %rdi	# D.14335,
	call	emit_insn_after	#
	movq	%rax, -48(%rbp)	# tmp464, post_inc
	.loc 1 1888 0
	movq	-120(%rbp), %rax	# insn_const, tmp465
	movq	%rax, %rsi	# tmp465,
	movl	$0, %edi	#,
	call	gen_rtx_CONST_INT	#
	movq	%rax, %rdx	#, D.14335
	movq	-176(%rbp), %rax	# set, tmp466
	movq	16(%rax), %rax	# set_72(D)->fld[1].rtx, D.14335
	leaq	16(%rax), %rsi	#, D.14338
	movq	-168(%rbp), %rax	# insn, tmp467
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# tmp467,
	call	validate_change	#
	.loc 1 1889 0
	movq	reg_n_info(%rip), %rax	# reg_n_info, reg_n_info.163
	movq	-184(%rbp), %rdx	# src, tmp468
	movl	8(%rdx), %edx	# src_66(D)->fld[0].rtuint, D.14337
	movl	%edx, %edx	# D.14337, tmp469
	addq	$4, %rdx	#, tmp470
	movq	(%rax,%rdx,8), %rax	# reg_n_info.163_240->data.reg, D.14342
	movl	12(%rax), %edx	# _242->sets, D.14333
	addl	$1, %edx	#, D.14333
	movl	%edx, 12(%rax)	# D.14333, _242->sets
	.loc 1 1890 0
	movq	reg_n_info(%rip), %rax	# reg_n_info, reg_n_info.164
	movq	-184(%rbp), %rdx	# src, tmp471
	movl	8(%rdx), %edx	# src_66(D)->fld[0].rtuint, D.14337
	movl	%edx, %edx	# D.14337, tmp472
	addq	$4, %rdx	#, tmp473
	movq	(%rax,%rdx,8), %rax	# reg_n_info.164_245->data.reg, D.14342
	movl	28(%rax), %edx	# _247->live_length, D.14333
	addl	$1, %edx	#, D.14333
	movl	%edx, 28(%rax)	# D.14333, _247->live_length
.L417:
	.loc 1 1892 0
	cmpq	$0, -104(%rbp)	#, overlap
	je	.L418	#,
.LBB29:
	.loc 1 1896 0
	movq	-168(%rbp), %rax	# insn, tmp474
	movq	32(%rax), %rax	# insn_65(D)->fld[3].rtx, tmp475
	movq	%rax, -24(%rbp)	# tmp475, pat
	.loc 1 1897 0
	cmpq	$0, -96(%rbp)	#, src_note
	je	.L443	#,
	.loc 1 1898 0
	movq	-96(%rbp), %rdx	# src_note, tmp476
	movq	-104(%rbp), %rax	# overlap, tmp477
	movq	%rdx, %rsi	# tmp476,
	movq	%rax, %rdi	# tmp477,
	call	remove_note	#
.L443:
.LBB30:
	.loc 1 1905 0
	movq	-168(%rbp), %rax	# insn, tmp478
	movq	56(%rax), %rax	# insn_65(D)->fld[6].rtx, tmp479
	movq	%rax, -16(%rbp)	# tmp479, notes
	.loc 1 1907 0
	movq	-128(%rbp), %rax	# p, tmp480
	movq	16(%rax), %rcx	# p_3->fld[1].rtx, D.14335
	movq	-168(%rbp), %rdx	# insn, tmp481
	movq	-24(%rbp), %rax	# pat, tmp482
	movq	%rcx, %rsi	# D.14335,
	movq	%rax, %rdi	# tmp482,
	call	emit_insn_after_with_line_notes	#
	.loc 1 1908 0
	movq	-168(%rbp), %rax	# insn, tmp483
	movq	%rax, %rdi	# tmp483,
	call	delete_insn	#
	.loc 1 1911 0
	movq	-128(%rbp), %rax	# p, tmp484
	movq	%rax, -168(%rbp)	# tmp484, insn
	.loc 1 1912 0
	jmp	.L420	#
.L421:
	.loc 1 1913 0
	movq	-168(%rbp), %rax	# insn, tmp485
	movq	16(%rax), %rax	# insn_1->fld[1].rtx, tmp486
	movq	%rax, -168(%rbp)	# tmp486, insn
.L420:
	.loc 1 1912 0 discriminator 1
	movq	-168(%rbp), %rax	# insn, tmp487
	movzwl	(%rax), %eax	# insn_1->code, D.14336
	movzwl	%ax, %eax	# D.14336, D.14333
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.14339
	cmpb	$105, %al	#, D.14339
	jne	.L421	#,
	.loc 1 1912 0 is_stmt 0 discriminator 2
	movq	-168(%rbp), %rax	# insn, tmp489
	movq	32(%rax), %rax	# insn_1->fld[3].rtx, D.14335
	cmpq	-24(%rbp), %rax	# pat, D.14335
	jne	.L421	#,
	.loc 1 1915 0 is_stmt 1
	movq	-168(%rbp), %rax	# insn, tmp490
	movq	-16(%rbp), %rdx	# notes, tmp491
	movq	%rdx, 56(%rax)	# tmp491, insn_1->fld[6].rtx
.L418:
.LBE30:
.LBE29:
	.loc 1 1922 0
	cmpq	$0, -104(%rbp)	#, overlap
	jne	.L422	#,
	.loc 1 1922 0 is_stmt 0 discriminator 1
	cmpl	$75, -148(%rbp)	#, code
	je	.L423	#,
	cmpl	$76, -148(%rbp)	#, code
	jne	.L422	#,
.L423:
.LBB31:
	.loc 1 1924 0 is_stmt 1
	movq	-168(%rbp), %rax	# insn, tmp492
	movl	$0, %edx	#,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp492,
	call	find_reg_note	#
	movq	%rax, -8(%rbp)	# tmp493, note
	.loc 1 1925 0
	movq	$0, -56(%rbp)	#, set2
	.loc 1 1926 0
	movl	$0, -136(%rbp)	#, num_calls2
	movl	$0, -132(%rbp)	#, s_length2
	.loc 1 1928 0
	cmpq	$0, -8(%rbp)	#, note
	je	.L422	#,
	.loc 1 1928 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# note, tmp494
	movq	8(%rax), %rax	# note_259->fld[0].rtx, D.14335
	movzwl	(%rax), %eax	# _263->code, D.14336
	cmpw	$67, %ax	#, D.14336
	je	.L424	#,
	movq	-8(%rbp), %rax	# note, tmp495
	movq	8(%rax), %rax	# note_259->fld[0].rtx, D.14335
	movzwl	(%rax), %eax	# _265->code, D.14336
	cmpw	$68, %ax	#, D.14336
	je	.L424	#,
	movq	-8(%rbp), %rax	# note, tmp496
	movq	8(%rax), %rax	# note_259->fld[0].rtx, D.14335
	movzwl	(%rax), %eax	# _267->code, D.14336
	cmpw	$54, %ax	#, D.14336
	je	.L424	#,
	movq	-8(%rbp), %rax	# note, tmp497
	movq	8(%rax), %rax	# note_259->fld[0].rtx, D.14335
	movzwl	(%rax), %eax	# _269->code, D.14336
	cmpw	$55, %ax	#, D.14336
	je	.L424	#,
	movq	-8(%rbp), %rax	# note, tmp498
	movq	8(%rax), %rax	# note_259->fld[0].rtx, D.14335
	movzwl	(%rax), %eax	# _271->code, D.14336
	cmpw	$58, %ax	#, D.14336
	je	.L424	#,
	movq	-8(%rbp), %rax	# note, tmp499
	movq	8(%rax), %rax	# note_259->fld[0].rtx, D.14335
	movzwl	(%rax), %eax	# _273->code, D.14336
	cmpw	$134, %ax	#, D.14336
	je	.L424	#,
	movq	-8(%rbp), %rax	# note, tmp500
	movq	8(%rax), %rax	# note_259->fld[0].rtx, D.14335
	movzwl	(%rax), %eax	# _275->code, D.14336
	cmpw	$56, %ax	#, D.14336
	je	.L424	#,
	movq	-8(%rbp), %rax	# note, tmp501
	movq	8(%rax), %rax	# note_259->fld[0].rtx, D.14335
	movzwl	(%rax), %eax	# _277->code, D.14336
	cmpw	$140, %ax	#, D.14336
	jne	.L422	#,
.L424:
	.loc 1 1930 0 is_stmt 1
	movq	-168(%rbp), %rax	# insn, tmp502
	movq	16(%rax), %rax	# insn_2->fld[1].rtx, tmp503
	movq	%rax, -64(%rbp)	# tmp503, q
	jmp	.L425	#
.L436:
	.loc 1 1935 0
	movq	-64(%rbp), %rax	# q, tmp504
	movq	%rax, %rdi	# tmp504,
	call	perhaps_ends_bb_p	#
	testl	%eax, %eax	# D.14333
	je	.L426	#,
	.loc 1 1937 0
	movq	$0, -64(%rbp)	#, q
	.loc 1 1938 0
	jmp	.L427	#
.L426:
	.loc 1 1940 0
	movq	-64(%rbp), %rax	# q, tmp505
	movzwl	(%rax), %eax	# q_39->code, D.14336
	movzwl	%ax, %eax	# D.14336, D.14333
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.14339
	cmpb	$105, %al	#, D.14339
	je	.L428	#,
	.loc 1 1941 0
	jmp	.L429	#
.L428:
	.loc 1 1943 0
	addl	$1, -132(%rbp)	#, s_length2
	.loc 1 1944 0
	movq	-64(%rbp), %rdx	# q, tmp507
	movq	-184(%rbp), %rax	# src, tmp508
	movq	%rdx, %rsi	# tmp507,
	movq	%rax, %rdi	# tmp508,
	call	reg_set_p	#
	testl	%eax, %eax	# D.14333
	je	.L430	#,
	.loc 1 1946 0
	movq	-64(%rbp), %rax	# q, tmp509
	movzwl	(%rax), %eax	# q_39->code, D.14336
	movzwl	%ax, %eax	# D.14336, D.14333
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.14339
	cmpb	$105, %al	#, D.14339
	jne	.L431	#,
	.loc 1 1946 0 is_stmt 0 discriminator 1
	movq	-64(%rbp), %rax	# q, tmp511
	movq	32(%rax), %rax	# q_39->fld[3].rtx, D.14335
	movzwl	(%rax), %eax	# _290->code, D.14336
	cmpw	$47, %ax	#, D.14336
	jne	.L432	#,
	.loc 1 1946 0 discriminator 3
	movq	-64(%rbp), %rax	# q, tmp512
	movq	32(%rax), %rax	# q_39->fld[3].rtx, iftmp.166
	jmp	.L434	#
.L432:
	.loc 1 1946 0 discriminator 4
	movq	-64(%rbp), %rax	# q, tmp513
	movq	32(%rax), %rdx	# q_39->fld[3].rtx, D.14335
	movq	-64(%rbp), %rax	# q, tmp514
	movq	%rdx, %rsi	# D.14335,
	movq	%rax, %rdi	# tmp514,
	call	single_set_2	#
	jmp	.L434	#
.L431:
	.loc 1 1946 0 discriminator 2
	movl	$0, %eax	#, iftmp.165
.L434:
	.loc 1 1946 0 discriminator 5
	movq	%rax, -56(%rbp)	# iftmp.165, set2
	.loc 1 1947 0 is_stmt 1 discriminator 5
	jmp	.L427	#
.L430:
	.loc 1 1949 0
	movq	-64(%rbp), %rax	# q, tmp515
	movq	32(%rax), %rdx	# q_39->fld[3].rtx, D.14335
	movq	-184(%rbp), %rax	# src, tmp516
	movq	%rdx, %rsi	# D.14335,
	movq	%rax, %rdi	# tmp516,
	call	reg_overlap_mentioned_p	#
	testl	%eax, %eax	# D.14333
	je	.L435	#,
	.loc 1 1951 0
	movq	$0, -64(%rbp)	#, q
	.loc 1 1952 0
	jmp	.L427	#
.L435:
	.loc 1 1954 0
	movq	-128(%rbp), %rax	# p, tmp517
	movzwl	(%rax), %eax	# p_3->code, D.14336
	cmpw	$34, %ax	#, D.14336
	jne	.L429	#,
	.loc 1 1955 0
	addl	$1, -136(%rbp)	#, num_calls2
.L429:
	.loc 1 1930 0
	movq	-64(%rbp), %rax	# q, tmp518
	movq	16(%rax), %rax	# q_39->fld[1].rtx, tmp519
	movq	%rax, -64(%rbp)	# tmp519, q
.L425:
	.loc 1 1930 0 is_stmt 0 discriminator 1
	cmpq	$0, -64(%rbp)	#, q
	jne	.L436	#,
.L427:
	.loc 1 1957 0 is_stmt 1
	cmpq	$0, -64(%rbp)	#, q
	je	.L422	#,
	.loc 1 1957 0 is_stmt 0 discriminator 1
	cmpq	$0, -56(%rbp)	#, set2
	je	.L422	#,
	movq	-56(%rbp), %rax	# set2, tmp520
	movq	8(%rax), %rax	# set2_41->fld[0].rtx, D.14335
	cmpq	-184(%rbp), %rax	# src, D.14335
	jne	.L422	#,
	movq	-56(%rbp), %rax	# set2, tmp521
	movq	16(%rax), %rax	# set2_41->fld[1].rtx, D.14335
	movzwl	(%rax), %eax	# _305->code, D.14336
	cmpw	$67, %ax	#, D.14336
	je	.L437	#,
	movq	-56(%rbp), %rax	# set2, tmp522
	movq	16(%rax), %rax	# set2_41->fld[1].rtx, D.14335
	movzwl	(%rax), %eax	# _307->code, D.14336
	cmpw	$68, %ax	#, D.14336
	je	.L437	#,
	movq	-56(%rbp), %rax	# set2, tmp523
	movq	16(%rax), %rax	# set2_41->fld[1].rtx, D.14335
	movzwl	(%rax), %eax	# _309->code, D.14336
	cmpw	$54, %ax	#, D.14336
	je	.L437	#,
	movq	-56(%rbp), %rax	# set2, tmp524
	movq	16(%rax), %rax	# set2_41->fld[1].rtx, D.14335
	movzwl	(%rax), %eax	# _311->code, D.14336
	cmpw	$55, %ax	#, D.14336
	je	.L437	#,
	movq	-56(%rbp), %rax	# set2, tmp525
	movq	16(%rax), %rax	# set2_41->fld[1].rtx, D.14335
	movzwl	(%rax), %eax	# _313->code, D.14336
	cmpw	$58, %ax	#, D.14336
	je	.L437	#,
	movq	-56(%rbp), %rax	# set2, tmp526
	movq	16(%rax), %rax	# set2_41->fld[1].rtx, D.14335
	movzwl	(%rax), %eax	# _315->code, D.14336
	cmpw	$134, %ax	#, D.14336
	je	.L437	#,
	movq	-56(%rbp), %rax	# set2, tmp527
	movq	16(%rax), %rax	# set2_41->fld[1].rtx, D.14335
	movzwl	(%rax), %eax	# _317->code, D.14336
	cmpw	$56, %ax	#, D.14336
	je	.L437	#,
	movq	-56(%rbp), %rax	# set2, tmp528
	movq	16(%rax), %rax	# set2_41->fld[1].rtx, D.14335
	movzwl	(%rax), %eax	# _319->code, D.14336
	cmpw	$140, %ax	#, D.14336
	jne	.L422	#,
.L437:
	.loc 1 1958 0 is_stmt 1
	movq	-8(%rbp), %rax	# note, tmp529
	movq	8(%rax), %rdx	# note_259->fld[0].rtx, D.14335
	movq	-176(%rbp), %rax	# set, tmp530
	leaq	16(%rax), %rsi	#, D.14338
	movq	-168(%rbp), %rax	# insn, tmp531
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# tmp531,
	call	validate_change	#
	testl	%eax, %eax	# D.14333
	je	.L422	#,
	.loc 1 1960 0
	movq	-64(%rbp), %rax	# q, tmp532
	movq	%rax, %rdi	# tmp532,
	call	delete_insn	#
	.loc 1 1961 0
	movq	reg_n_info(%rip), %rax	# reg_n_info, reg_n_info.167
	movq	-184(%rbp), %rdx	# src, tmp533
	movl	8(%rdx), %edx	# src_66(D)->fld[0].rtuint, D.14337
	movl	%edx, %edx	# D.14337, tmp534
	addq	$4, %rdx	#, tmp535
	movq	(%rax,%rdx,8), %rax	# reg_n_info.167_324->data.reg, D.14342
	movl	12(%rax), %edx	# _326->sets, D.14333
	subl	$1, %edx	#, D.14333
	movl	%edx, 12(%rax)	# D.14333, _326->sets
	.loc 1 1962 0
	movq	reg_n_info(%rip), %rax	# reg_n_info, reg_n_info.168
	movq	-184(%rbp), %rdx	# src, tmp536
	movl	8(%rdx), %edx	# src_66(D)->fld[0].rtuint, D.14337
	movl	%edx, %edx	# D.14337, tmp537
	addq	$4, %rdx	#, tmp538
	movq	(%rax,%rdx,8), %rax	# reg_n_info.168_329->data.reg, D.14342
	movq	reg_n_info(%rip), %rdx	# reg_n_info, reg_n_info.169
	movq	-184(%rbp), %rcx	# src, tmp539
	movl	8(%rcx), %ecx	# src_66(D)->fld[0].rtuint, D.14337
	movl	%ecx, %ecx	# D.14337, tmp540
	addq	$4, %rcx	#, tmp541
	movq	(%rdx,%rcx,8), %rdx	# reg_n_info.169_332->data.reg, D.14342
	movl	32(%rdx), %edx	# _334->calls_crossed, D.14333
	subl	-136(%rbp), %edx	# num_calls2, D.14333
	movl	%edx, 32(%rax)	# D.14333, _331->calls_crossed
	.loc 1 1963 0
	movq	reg_n_info(%rip), %rax	# reg_n_info, reg_n_info.170
	movq	-184(%rbp), %rdx	# src, tmp542
	movl	8(%rdx), %edx	# src_66(D)->fld[0].rtuint, D.14337
	movl	%edx, %edx	# D.14337, tmp543
	addq	$4, %rdx	#, tmp544
	movq	(%rax,%rdx,8), %rax	# reg_n_info.170_337->data.reg, D.14342
	movq	reg_n_info(%rip), %rdx	# reg_n_info, reg_n_info.171
	movq	-184(%rbp), %rcx	# src, tmp545
	movl	8(%rcx), %ecx	# src_66(D)->fld[0].rtuint, D.14337
	movl	%ecx, %ecx	# D.14337, tmp546
	addq	$4, %rcx	#, tmp547
	movq	(%rdx,%rcx,8), %rdx	# reg_n_info.171_340->data.reg, D.14342
	movl	28(%rdx), %edx	# _342->live_length, D.14333
	subl	-132(%rbp), %edx	# s_length2, D.14333
	movl	%edx, 28(%rax)	# D.14333, _339->live_length
	.loc 1 1964 0
	movq	$0, -120(%rbp)	#, insn_const
.L422:
.LBE31:
	.loc 1 2016 0
	movq	-168(%rbp), %rax	# insn, tmp548
	movq	32(%rax), %rdx	# insn_2->fld[3].rtx, D.14335
	movq	-200(%rbp), %rax	# dst, tmp549
	movq	%rdx, %rsi	# D.14335,
	movq	%rax, %rdi	# tmp549,
	call	reg_overlap_mentioned_p	#
	testl	%eax, %eax	# D.14333
	je	.L438	#,
	.loc 1 2018 0
	movq	-168(%rbp), %rax	# insn, tmp550
	movq	56(%rax), %rdx	# insn_2->fld[6].rtx, D.14335
	movq	-88(%rbp), %rax	# dst_note, tmp551
	movq	%rdx, 16(%rax)	# D.14335, dst_note_26->fld[1].rtx
	.loc 1 2019 0
	movq	-168(%rbp), %rax	# insn, tmp552
	movq	-88(%rbp), %rdx	# dst_note, tmp553
	movq	%rdx, 56(%rax)	# tmp553, insn_2->fld[6].rtx
.L438:
	.loc 1 2022 0
	cmpq	$0, -96(%rbp)	#, src_note
	je	.L439	#,
	.loc 1 2025 0
	cmpq	$0, -104(%rbp)	#, overlap
	jne	.L440	#,
	.loc 1 2026 0
	movq	-96(%rbp), %rdx	# src_note, tmp554
	movq	-168(%rbp), %rax	# insn, tmp555
	movq	%rdx, %rsi	# tmp554,
	movq	%rax, %rdi	# tmp555,
	call	remove_note	#
.L440:
	.loc 1 2027 0
	movq	-128(%rbp), %rax	# p, tmp556
	movq	56(%rax), %rdx	# p_3->fld[6].rtx, D.14335
	movq	-96(%rbp), %rax	# src_note, tmp557
	movq	%rdx, 16(%rax)	# D.14335, src_note_23->fld[1].rtx
	.loc 1 2028 0
	movq	-128(%rbp), %rax	# p, tmp558
	movq	-96(%rbp), %rdx	# src_note, tmp559
	movq	%rdx, 56(%rax)	# tmp559, p_3->fld[6].rtx
	.loc 1 2030 0
	movq	reg_n_info(%rip), %rax	# reg_n_info, reg_n_info.173
	movq	-184(%rbp), %rdx	# src, tmp560
	movl	8(%rdx), %edx	# src_66(D)->fld[0].rtuint, D.14337
	movl	%edx, %edx	# D.14337, tmp561
	addq	$4, %rdx	#, tmp562
	movq	(%rax,%rdx,8), %rax	# reg_n_info.173_350->data.reg, D.14342
	movq	reg_n_info(%rip), %rdx	# reg_n_info, reg_n_info.174
	movq	-184(%rbp), %rcx	# src, tmp563
	movl	8(%rcx), %ecx	# src_66(D)->fld[0].rtuint, D.14337
	movl	%ecx, %ecx	# D.14337, tmp564
	addq	$4, %rcx	#, tmp565
	movq	(%rdx,%rcx,8), %rdx	# reg_n_info.174_353->data.reg, D.14342
	movl	32(%rdx), %ecx	# _355->calls_crossed, D.14333
	movl	-152(%rbp), %edx	# s_num_calls, tmp566
	addl	%ecx, %edx	# D.14333, D.14333
	movl	%edx, 32(%rax)	# D.14333, _352->calls_crossed
.L439:
	.loc 1 2033 0
	movq	reg_n_info(%rip), %rax	# reg_n_info, reg_n_info.175
	movq	-184(%rbp), %rdx	# src, tmp567
	movl	8(%rdx), %edx	# src_66(D)->fld[0].rtuint, D.14337
	movl	%edx, %edx	# D.14337, tmp568
	addq	$4, %rdx	#, tmp569
	movq	(%rax,%rdx,8), %rax	# reg_n_info.175_358->data.reg, D.14342
	movl	12(%rax), %edx	# _360->sets, D.14333
	addl	$1, %edx	#, D.14333
	movl	%edx, 12(%rax)	# D.14333, _360->sets
	.loc 1 2034 0
	movq	reg_n_info(%rip), %rax	# reg_n_info, reg_n_info.176
	movq	-200(%rbp), %rdx	# dst, tmp570
	movl	8(%rdx), %edx	# dst_85(D)->fld[0].rtuint, D.14337
	movl	%edx, %edx	# D.14337, tmp571
	addq	$4, %rdx	#, tmp572
	movq	(%rax,%rdx,8), %rax	# reg_n_info.176_363->data.reg, D.14342
	movl	12(%rax), %edx	# _365->sets, D.14333
	subl	$1, %edx	#, D.14333
	movl	%edx, 12(%rax)	# D.14333, _365->sets
	.loc 1 2036 0
	movq	reg_n_info(%rip), %rax	# reg_n_info, reg_n_info.177
	movq	-200(%rbp), %rdx	# dst, tmp573
	movl	8(%rdx), %edx	# dst_85(D)->fld[0].rtuint, D.14337
	movl	%edx, %edx	# D.14337, tmp574
	addq	$4, %rdx	#, tmp575
	movq	(%rax,%rdx,8), %rax	# reg_n_info.177_368->data.reg, D.14342
	movq	reg_n_info(%rip), %rdx	# reg_n_info, reg_n_info.178
	movq	-200(%rbp), %rcx	# dst, tmp576
	movl	8(%rcx), %ecx	# dst_85(D)->fld[0].rtuint, D.14337
	movl	%ecx, %ecx	# D.14337, tmp577
	addq	$4, %rcx	#, tmp578
	movq	(%rdx,%rcx,8), %rdx	# reg_n_info.178_371->data.reg, D.14342
	movl	32(%rdx), %edx	# _373->calls_crossed, D.14333
	subl	-156(%rbp), %edx	# num_calls, D.14333
	movl	%edx, 32(%rax)	# D.14333, _370->calls_crossed
	.loc 1 2038 0
	movq	reg_n_info(%rip), %rax	# reg_n_info, reg_n_info.179
	movq	-184(%rbp), %rdx	# src, tmp579
	movl	8(%rdx), %edx	# src_66(D)->fld[0].rtuint, D.14337
	movl	%edx, %edx	# D.14337, tmp580
	addq	$4, %rdx	#, tmp581
	movq	(%rax,%rdx,8), %rax	# reg_n_info.179_376->data.reg, D.14342
	movq	reg_n_info(%rip), %rdx	# reg_n_info, reg_n_info.180
	movq	-184(%rbp), %rcx	# src, tmp582
	movl	8(%rcx), %ecx	# src_66(D)->fld[0].rtuint, D.14337
	movl	%ecx, %ecx	# D.14337, tmp583
	addq	$4, %rcx	#, tmp584
	movq	(%rdx,%rcx,8), %rdx	# reg_n_info.180_379->data.reg, D.14342
	movl	28(%rdx), %ecx	# _381->live_length, D.14333
	movl	-140(%rbp), %edx	# s_length, tmp585
	addl	%ecx, %edx	# D.14333, D.14333
	movl	%edx, 28(%rax)	# D.14333, _378->live_length
	.loc 1 2039 0
	movq	reg_n_info(%rip), %rax	# reg_n_info, reg_n_info.181
	movq	-200(%rbp), %rdx	# dst, tmp586
	movl	8(%rdx), %edx	# dst_85(D)->fld[0].rtuint, D.14337
	movl	%edx, %edx	# D.14337, tmp587
	addq	$4, %rdx	#, tmp588
	movq	(%rax,%rdx,8), %rax	# reg_n_info.181_384->data.reg, D.14342
	movl	28(%rax), %eax	# _386->live_length, D.14333
	testl	%eax, %eax	# D.14333
	js	.L441	#,
	.loc 1 2041 0
	movq	reg_n_info(%rip), %rax	# reg_n_info, reg_n_info.182
	movq	-200(%rbp), %rdx	# dst, tmp589
	movl	8(%rdx), %edx	# dst_85(D)->fld[0].rtuint, D.14337
	movl	%edx, %edx	# D.14337, tmp590
	addq	$4, %rdx	#, tmp591
	movq	(%rax,%rdx,8), %rax	# reg_n_info.182_388->data.reg, D.14342
	movq	reg_n_info(%rip), %rdx	# reg_n_info, reg_n_info.183
	movq	-200(%rbp), %rcx	# dst, tmp592
	movl	8(%rcx), %ecx	# dst_85(D)->fld[0].rtuint, D.14337
	movl	%ecx, %ecx	# D.14337, tmp593
	addq	$4, %rcx	#, tmp594
	movq	(%rdx,%rcx,8), %rdx	# reg_n_info.183_391->data.reg, D.14342
	movl	28(%rdx), %edx	# _393->live_length, D.14333
	subl	-144(%rbp), %edx	# length, D.14333
	movl	%edx, 28(%rax)	# D.14333, _390->live_length
	.loc 1 2045 0
	movq	reg_n_info(%rip), %rax	# reg_n_info, reg_n_info.184
	movq	-200(%rbp), %rdx	# dst, tmp595
	movl	8(%rdx), %edx	# dst_85(D)->fld[0].rtuint, D.14337
	movl	%edx, %edx	# D.14337, tmp596
	addq	$4, %rdx	#, tmp597
	movq	(%rax,%rdx,8), %rax	# reg_n_info.184_396->data.reg, D.14342
	movl	28(%rax), %eax	# _398->live_length, D.14333
	cmpl	$1, %eax	#, D.14333
	jg	.L441	#,
	.loc 1 2046 0
	movq	reg_n_info(%rip), %rax	# reg_n_info, reg_n_info.185
	movq	-200(%rbp), %rdx	# dst, tmp598
	movl	8(%rdx), %edx	# dst_85(D)->fld[0].rtuint, D.14337
	movl	%edx, %edx	# D.14337, tmp599
	addq	$4, %rdx	#, tmp600
	movq	(%rax,%rdx,8), %rax	# reg_n_info.185_400->data.reg, D.14342
	movl	$2, 28(%rax)	#, _402->live_length
.L441:
	.loc 1 2048 0
	cmpq	$0, 32(%rbp)	#, regmove_dump_file
	je	.L442	#,
	.loc 1 2049 0
	movq	-168(%rbp), %rax	# insn, tmp601
	movl	8(%rax), %edx	# insn_2->fld[0].rtint, D.14333
	movl	24(%rbp), %ecx	# match_number, tmp602
	movq	32(%rbp), %rax	# regmove_dump_file, tmp603
	movl	%ecx, %r8d	# tmp602,
	movl	%edx, %ecx	# D.14333,
	movl	16(%rbp), %edx	# operand_number,
	movl	$.LC6, %esi	#,
	movq	%rax, %rdi	# tmp603,
	movl	$0, %eax	#,
	call	fprintf	#
.L442:
	.loc 1 2052 0
	movl	$1, %eax	#, D.14333
.L366:
	.loc 1 2053 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	fixup_match_1, .-fixup_match_1
	.type	stable_and_no_regs_but_for_p, @function
stable_and_no_regs_but_for_p:
.LFB19:
	.loc 1 2067 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# x, x
	movq	%rsi, -32(%rbp)	# src, src
	movq	%rdx, -40(%rbp)	# dst, dst
	.loc 1 2068 0
	movq	-24(%rbp), %rax	# x, tmp79
	movzwl	(%rax), %eax	# x_4(D)->code, D.14344
	movzwl	%ax, %eax	# D.14344, tmp80
	movl	%eax, -12(%rbp)	# tmp80, code
	.loc 1 2069 0
	movl	-12(%rbp), %eax	# code, code.186
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.14345
	movsbl	%al, %eax	# D.14345, D.14343
	cmpl	$60, %eax	#, D.14343
	je	.L446	#,
	cmpl	$60, %eax	#, D.14343
	jg	.L447	#,
	subl	$49, %eax	#, tmp82
	cmpl	$2, %eax	#, tmp82
	ja	.L445	#,
	jmp	.L446	#
.L447:
	cmpl	$98, %eax	#, D.14343
	jl	.L445	#,
	cmpl	$99, %eax	#, D.14343
	jle	.L446	#,
	cmpl	$111, %eax	#, D.14343
	je	.L448	#,
	jmp	.L445	#
.L446:
.LBB32:
	.loc 1 2074 0
	movl	-12(%rbp), %eax	# code, code.187
	cltq
	movq	rtx_format(,%rax,8), %rax	# rtx_format, tmp84
	movq	%rax, -8(%rbp)	# tmp84, fmt
	.loc 1 2075 0
	movl	-12(%rbp), %eax	# code, code.188
	cltq
	movzbl	rtx_length(%rax), %eax	# rtx_length, D.14346
	movzbl	%al, %eax	# D.14346, D.14343
	subl	$1, %eax	#, tmp86
	movl	%eax, -16(%rbp)	# tmp86, i
	jmp	.L449	#
.L452:
	.loc 1 2076 0
	movl	-16(%rbp), %eax	# i, tmp87
	movslq	%eax, %rdx	# tmp87, D.14347
	movq	-8(%rbp), %rax	# fmt, tmp88
	addq	%rdx, %rax	# D.14347, D.14348
	movzbl	(%rax), %eax	# *_17, D.14345
	cmpb	$101, %al	#, D.14345
	jne	.L450	#,
	.loc 1 2077 0
	movq	-24(%rbp), %rax	# x, tmp89
	movl	-16(%rbp), %edx	# i, tmp91
	movslq	%edx, %rdx	# tmp91, tmp90
	movq	8(%rax,%rdx,8), %rax	# x_4(D)->fld[i_1].rtx, D.14349
	movq	-40(%rbp), %rdx	# dst, tmp92
	movq	-32(%rbp), %rcx	# src, tmp93
	movq	%rcx, %rsi	# tmp93,
	movq	%rax, %rdi	# D.14349,
	call	stable_and_no_regs_but_for_p	#
	testl	%eax, %eax	# D.14343
	jne	.L450	#,
	.loc 1 2078 0
	movl	$0, %eax	#, D.14343
	jmp	.L451	#
.L450:
	.loc 1 2075 0
	subl	$1, -16(%rbp)	#, i
.L449:
	.loc 1 2075 0 is_stmt 0 discriminator 1
	cmpl	$0, -16(%rbp)	#, i
	jns	.L452	#,
	.loc 1 2079 0 is_stmt 1
	movl	$1, %eax	#, D.14343
	jmp	.L451	#
.L448:
.LBE32:
	.loc 1 2082 0
	cmpl	$61, -12(%rbp)	#, code
	jne	.L453	#,
	.loc 1 2083 0
	movq	-24(%rbp), %rax	# x, tmp94
	cmpq	-32(%rbp), %rax	# src, tmp94
	je	.L454	#,
	.loc 1 2083 0 is_stmt 0 discriminator 2
	movq	-24(%rbp), %rax	# x, tmp95
	cmpq	-40(%rbp), %rax	# dst, tmp95
	jne	.L455	#,
.L454:
	.loc 1 2083 0 discriminator 1
	movl	$1, %eax	#, iftmp.189
	jmp	.L456	#
.L455:
	.loc 1 2083 0 discriminator 3
	movl	$0, %eax	#, iftmp.189
.L456:
	.loc 1 2083 0 discriminator 4
	jmp	.L451	#
.L453:
	.loc 1 2086 0 is_stmt 1
	cmpl	$66, -12(%rbp)	#, code
	jne	.L445	#,
	.loc 1 2087 0
	movq	-24(%rbp), %rax	# x, tmp96
	movq	8(%rax), %rax	# x_4(D)->fld[0].rtx, D.14349
	movq	-40(%rbp), %rdx	# dst, tmp97
	movq	-32(%rbp), %rcx	# src, tmp98
	movq	%rcx, %rsi	# tmp98,
	movq	%rax, %rdi	# D.14349,
	call	stable_and_no_regs_but_for_p	#
	testl	%eax, %eax	# D.14343
	jne	.L445	#,
	.loc 1 2088 0
	movl	$0, %eax	#, D.14343
	jmp	.L451	#
.L445:
	.loc 1 2091 0
	movq	-24(%rbp), %rax	# x, tmp99
	movq	%rax, %rdi	# tmp99,
	call	rtx_unstable_p	#
	testl	%eax, %eax	# D.14343
	sete	%al	#, D.14350
	movzbl	%al, %eax	# D.14350, D.14343
.L451:
	.loc 1 2093 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	stable_and_no_regs_but_for_p, .-stable_and_no_regs_but_for_p
	.globl	combine_stack_adjustments
	.type	combine_stack_adjustments, @function
combine_stack_adjustments:
.LFB20:
	.loc 1 2141 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	.loc 1 2144 0
	movl	$0, -4(%rbp)	#, i
	jmp	.L458	#
.L459:
	.loc 1 2145 0 discriminator 2
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.190
	movl	-4(%rbp), %edx	# i, tmp63
	movslq	%edx, %rdx	# tmp63, tmp62
	addq	$4, %rdx	#, tmp64
	movq	(%rax,%rdx,8), %rax	# basic_block_info.190_4->data.bb, D.14352
	movq	%rax, %rdi	# D.14352,
	call	combine_stack_adjustments_for_block	#
	.loc 1 2144 0 discriminator 2
	addl	$1, -4(%rbp)	#, i
.L458:
	.loc 1 2144 0 is_stmt 0 discriminator 1
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.191
	cmpl	%eax, -4(%rbp)	# n_basic_blocks.191, i
	jl	.L459	#,
	.loc 1 2146 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	combine_stack_adjustments, .-combine_stack_adjustments
	.type	stack_memref_p, @function
stack_memref_p:
.LFB21:
	.loc 1 2153 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# x, x
	.loc 1 2154 0
	movq	-8(%rbp), %rax	# x, tmp68
	movzwl	(%rax), %eax	# x_2(D)->code, D.14354
	cmpw	$66, %ax	#, D.14354
	je	.L461	#,
	.loc 1 2155 0
	movl	$0, %eax	#, D.14353
	jmp	.L462	#
.L461:
	.loc 1 2156 0
	movq	-8(%rbp), %rax	# x, tmp69
	movq	8(%rax), %rax	# x_2(D)->fld[0].rtx, tmp70
	movq	%rax, -8(%rbp)	# tmp70, x
	.loc 1 2158 0
	movq	global_rtl+16(%rip), %rax	# global_rtl, D.14355
	cmpq	-8(%rbp), %rax	# x, D.14355
	jne	.L463	#,
	.loc 1 2159 0
	movl	$1, %eax	#, D.14353
	jmp	.L462	#
.L463:
	.loc 1 2160 0
	movq	-8(%rbp), %rax	# x, tmp71
	movzwl	(%rax), %eax	# x_5->code, D.14354
	cmpw	$75, %ax	#, D.14354
	jne	.L464	#,
	.loc 1 2161 0
	movq	-8(%rbp), %rax	# x, tmp72
	movq	8(%rax), %rdx	# x_5->fld[0].rtx, D.14355
	movq	global_rtl+16(%rip), %rax	# global_rtl, D.14355
	cmpq	%rax, %rdx	# D.14355, D.14355
	jne	.L464	#,
	.loc 1 2162 0
	movq	-8(%rbp), %rax	# x, tmp73
	movq	16(%rax), %rax	# x_5->fld[1].rtx, D.14355
	movzwl	(%rax), %eax	# _11->code, D.14354
	cmpw	$54, %ax	#, D.14354
	jne	.L464	#,
	.loc 1 2163 0
	movl	$1, %eax	#, D.14353
	jmp	.L462	#
.L464:
	.loc 1 2165 0
	movl	$0, %eax	#, D.14353
.L462:
	.loc 1 2166 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	stack_memref_p, .-stack_memref_p
	.type	single_set_for_csa, @function
single_set_for_csa:
.LFB22:
	.loc 1 2174 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# insn, insn
	.loc 1 2176 0
	movq	-40(%rbp), %rax	# insn, tmp84
	movzwl	(%rax), %eax	# insn_5(D)->code, D.14357
	movzwl	%ax, %eax	# D.14357, D.14358
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.14359
	cmpb	$105, %al	#, D.14359
	jne	.L466	#,
	.loc 1 2176 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# insn, tmp86
	movq	32(%rax), %rax	# insn_5(D)->fld[3].rtx, D.14360
	movzwl	(%rax), %eax	# _9->code, D.14357
	cmpw	$47, %ax	#, D.14357
	jne	.L467	#,
	.loc 1 2176 0 discriminator 3
	movq	-40(%rbp), %rax	# insn, tmp87
	movq	32(%rax), %rax	# insn_5(D)->fld[3].rtx, iftmp.193
	jmp	.L469	#
.L467:
	.loc 1 2176 0 discriminator 4
	movq	-40(%rbp), %rax	# insn, tmp88
	movq	32(%rax), %rdx	# insn_5(D)->fld[3].rtx, D.14360
	movq	-40(%rbp), %rax	# insn, tmp89
	movq	%rdx, %rsi	# D.14360,
	movq	%rax, %rdi	# tmp89,
	call	single_set_2	#
	jmp	.L469	#
.L466:
	.loc 1 2176 0 discriminator 2
	movl	$0, %eax	#, iftmp.192
.L469:
	.loc 1 2176 0 discriminator 5
	movq	%rax, -16(%rbp)	# iftmp.192, tmp
	.loc 1 2177 0 is_stmt 1 discriminator 5
	cmpq	$0, -16(%rbp)	#, tmp
	je	.L470	#,
	.loc 1 2178 0
	movq	-16(%rbp), %rax	# tmp, D.14356
	jmp	.L471	#
.L470:
	.loc 1 2180 0
	movq	-40(%rbp), %rax	# insn, tmp90
	movzwl	(%rax), %eax	# insn_5(D)->code, D.14357
	cmpw	$32, %ax	#, D.14357
	jne	.L472	#,
	.loc 1 2181 0
	movq	-40(%rbp), %rax	# insn, tmp91
	movq	32(%rax), %rax	# insn_5(D)->fld[3].rtx, D.14360
	movzwl	(%rax), %eax	# _19->code, D.14357
	cmpw	$39, %ax	#, D.14357
	je	.L473	#,
.L472:
	.loc 1 2182 0
	movl	$0, %eax	#, D.14356
	jmp	.L471	#
.L473:
	.loc 1 2184 0
	movq	-40(%rbp), %rax	# insn, tmp92
	movq	32(%rax), %rax	# insn_5(D)->fld[3].rtx, tmp93
	movq	%rax, -16(%rbp)	# tmp93, tmp
	.loc 1 2185 0
	movq	-16(%rbp), %rax	# tmp, tmp94
	movq	8(%rax), %rax	# tmp_21->fld[0].rtvec, D.14361
	movq	8(%rax), %rax	# _22->elem, D.14360
	movzwl	(%rax), %eax	# _23->code, D.14357
	cmpw	$47, %ax	#, D.14357
	je	.L474	#,
	.loc 1 2186 0
	movl	$0, %eax	#, D.14356
	jmp	.L471	#
.L474:
	.loc 1 2188 0
	movl	$1, -20(%rbp)	#, i
	jmp	.L475	#
.L478:
.LBB33:
	.loc 1 2190 0
	movq	-16(%rbp), %rax	# tmp, tmp95
	movq	8(%rax), %rax	# tmp_21->fld[0].rtvec, D.14361
	movl	-20(%rbp), %edx	# i, tmp97
	movslq	%edx, %rdx	# tmp97, tmp96
	movq	8(%rax,%rdx,8), %rax	# _29->elem, tmp98
	movq	%rax, -8(%rbp)	# tmp98, this
	.loc 1 2193 0
	movq	-8(%rbp), %rax	# this, tmp99
	movzwl	(%rax), %eax	# this_30->code, D.14357
	cmpw	$47, %ax	#, D.14357
	jne	.L476	#,
	.loc 1 2194 0
	movq	-8(%rbp), %rax	# this, tmp100
	movq	16(%rax), %rdx	# this_30->fld[1].rtx, D.14360
	movq	-8(%rbp), %rax	# this, tmp101
	movq	8(%rax), %rax	# this_30->fld[0].rtx, D.14360
	cmpq	%rax, %rdx	# D.14360, D.14360
	jne	.L476	#,
	.loc 1 2194 0 is_stmt 0 discriminator 1
	jmp	.L477	#
.L476:
	.loc 1 2196 0 is_stmt 1
	movq	-8(%rbp), %rax	# this, tmp102
	movzwl	(%rax), %eax	# this_30->code, D.14357
	cmpw	$49, %ax	#, D.14357
	je	.L477	#,
	.loc 1 2197 0
	movq	-8(%rbp), %rax	# this, tmp103
	movzwl	(%rax), %eax	# this_30->code, D.14357
	cmpw	$48, %ax	#, D.14357
	je	.L477	#,
	.loc 1 2198 0
	movl	$0, %eax	#, D.14356
	jmp	.L471	#
.L477:
.LBE33:
	.loc 1 2188 0
	addl	$1, -20(%rbp)	#, i
.L475:
	.loc 1 2188 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# tmp, tmp104
	movq	8(%rax), %rax	# tmp_21->fld[0].rtvec, D.14361
	movl	(%rax), %eax	# _27->num_elem, D.14358
	cmpl	-20(%rbp), %eax	# i, D.14358
	jg	.L478	#,
	.loc 1 2201 0 is_stmt 1
	movq	-16(%rbp), %rax	# tmp, tmp105
	movq	8(%rax), %rax	# tmp_21->fld[0].rtvec, D.14361
	movq	8(%rax), %rax	# _38->elem, D.14356
.L471:
	.loc 1 2202 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	single_set_for_csa, .-single_set_for_csa
	.type	free_csa_memlist, @function
free_csa_memlist:
.LFB23:
	.loc 1 2209 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# memlist, memlist
	.loc 1 2211 0
	jmp	.L480	#
.L481:
	.loc 1 2213 0 discriminator 2
	movq	-24(%rbp), %rax	# memlist, tmp59
	movq	24(%rax), %rax	# memlist_1->next, tmp60
	movq	%rax, -8(%rbp)	# tmp60, next
	.loc 1 2214 0 discriminator 2
	movq	-24(%rbp), %rax	# memlist, tmp61
	movq	%rax, %rdi	# tmp61,
	call	free	#
	.loc 1 2211 0 discriminator 2
	movq	-8(%rbp), %rax	# next, tmp62
	movq	%rax, -24(%rbp)	# tmp62, memlist
.L480:
	.loc 1 2211 0 is_stmt 0 discriminator 1
	cmpq	$0, -24(%rbp)	#, memlist
	jne	.L481	#,
	.loc 1 2216 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE23:
	.size	free_csa_memlist, .-free_csa_memlist
	.type	record_one_stack_memref, @function
record_one_stack_memref:
.LFB24:
	.loc 1 2225 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# insn, insn
	movq	%rsi, -32(%rbp)	# mem, mem
	movq	%rdx, -40(%rbp)	# next_memlist, next_memlist
	.loc 1 2228 0
	movl	$32, %edi	#,
	call	xmalloc	#
	movq	%rax, -8(%rbp)	# tmp68, ml
	.loc 1 2230 0
	movq	-32(%rbp), %rax	# mem, tmp69
	movq	(%rax), %rax	# *mem_2(D), D.14362
	movq	8(%rax), %rdx	# _3->fld[0].rtx, D.14362
	movq	global_rtl+16(%rip), %rax	# global_rtl, D.14362
	cmpq	%rax, %rdx	# D.14362, D.14362
	jne	.L483	#,
	.loc 1 2231 0
	movq	-8(%rbp), %rax	# ml, tmp70
	movq	$0, (%rax)	#, ml_1->sp_offset
	jmp	.L484	#
.L483:
	.loc 1 2233 0
	movq	-32(%rbp), %rax	# mem, tmp71
	movq	(%rax), %rax	# *mem_2(D), D.14362
	movq	8(%rax), %rax	# _6->fld[0].rtx, D.14362
	movq	16(%rax), %rax	# _7->fld[1].rtx, D.14362
	movq	8(%rax), %rdx	# _8->fld[0].rtwint, D.14363
	movq	-8(%rbp), %rax	# ml, tmp72
	movq	%rdx, (%rax)	# D.14363, ml_1->sp_offset
.L484:
	.loc 1 2235 0
	movq	-8(%rbp), %rax	# ml, tmp73
	movq	-24(%rbp), %rdx	# insn, tmp74
	movq	%rdx, 8(%rax)	# tmp74, ml_1->insn
	.loc 1 2236 0
	movq	-8(%rbp), %rax	# ml, tmp75
	movq	-32(%rbp), %rdx	# mem, tmp76
	movq	%rdx, 16(%rax)	# tmp76, ml_1->mem
	.loc 1 2237 0
	movq	-8(%rbp), %rax	# ml, tmp77
	movq	-40(%rbp), %rdx	# next_memlist, tmp78
	movq	%rdx, 24(%rax)	# tmp78, ml_1->next
	.loc 1 2239 0
	movq	-8(%rbp), %rax	# ml, D.14364
	.loc 1 2240 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE24:
	.size	record_one_stack_memref, .-record_one_stack_memref
	.type	try_apply_stack_adjustment, @function
try_apply_stack_adjustment:
.LFB25:
	.loc 1 2250 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# insn, insn
	movq	%rsi, -32(%rbp)	# memlist, memlist
	movq	%rdx, -40(%rbp)	# new_adjust, new_adjust
	movq	%rcx, -48(%rbp)	# delta, delta
	.loc 1 2254 0
	movq	-24(%rbp), %rax	# insn, tmp76
	movq	%rax, %rdi	# tmp76,
	call	single_set_for_csa	#
	movq	%rax, -8(%rbp)	# tmp77, set
	.loc 1 2255 0
	movq	-40(%rbp), %rax	# new_adjust, tmp78
	movq	%rax, %rsi	# tmp78,
	movl	$0, %edi	#,
	call	gen_rtx_CONST_INT	#
	movq	%rax, %rdx	#, D.14366
	movq	-8(%rbp), %rax	# set, tmp79
	movq	16(%rax), %rax	# set_5->fld[1].rtx, D.14366
	leaq	16(%rax), %rsi	#, D.14367
	movq	-24(%rbp), %rax	# insn, tmp80
	movl	$1, %ecx	#,
	movq	%rax, %rdi	# tmp80,
	call	validate_change	#
	.loc 1 2257 0
	movq	-32(%rbp), %rax	# memlist, tmp81
	movq	%rax, -16(%rbp)	# tmp81, ml
	jmp	.L487	#
.L488:
	.loc 1 2261 0 discriminator 2
	movq	-16(%rbp), %rax	# ml, tmp82
	movq	(%rax), %rax	# ml_1->sp_offset, D.14368
	.loc 1 2259 0 discriminator 2
	subq	-48(%rbp), %rax	# delta, D.14368
	movq	%rax, %rdx	# D.14368, D.14368
	movq	global_rtl+16(%rip), %rax	# global_rtl, D.14366
	movq	%rdx, %rsi	# D.14368,
	movq	%rax, %rdi	# D.14366,
	call	plus_constant_wide	#
	movq	%rax, %rdx	#, D.14366
	.loc 1 2260 0 discriminator 2
	movq	-16(%rbp), %rax	# ml, tmp83
	movq	16(%rax), %rax	# ml_1->mem, D.14367
	.loc 1 2259 0 discriminator 2
	movq	(%rax), %rax	# *_17, D.14366
	movq	%rdx, %rsi	# D.14366,
	movq	%rax, %rdi	# D.14366,
	call	replace_equiv_address_nv	#
	movq	%rax, %rdx	#, D.14366
	movq	-16(%rbp), %rax	# ml, tmp84
	movq	16(%rax), %rsi	# ml_1->mem, D.14367
	movq	-16(%rbp), %rax	# ml, tmp85
	movq	8(%rax), %rax	# ml_1->insn, D.14366
	movl	$1, %ecx	#,
	movq	%rax, %rdi	# D.14366,
	call	validate_change	#
	.loc 1 2257 0 discriminator 2
	movq	-16(%rbp), %rax	# ml, tmp86
	movq	24(%rax), %rax	# ml_1->next, tmp87
	movq	%rax, -16(%rbp)	# tmp87, ml
.L487:
	.loc 1 2257 0 is_stmt 0 discriminator 1
	cmpq	$0, -16(%rbp)	#, ml
	jne	.L488	#,
	.loc 1 2264 0 is_stmt 1
	call	apply_change_group	#
	testl	%eax, %eax	# D.14365
	je	.L489	#,
	.loc 1 2267 0
	movq	-32(%rbp), %rax	# memlist, tmp88
	movq	%rax, -16(%rbp)	# tmp88, ml
	jmp	.L490	#
.L491:
	.loc 1 2268 0 discriminator 2
	movq	-16(%rbp), %rax	# ml, tmp89
	movq	(%rax), %rax	# ml_2->sp_offset, D.14368
	subq	-48(%rbp), %rax	# delta, D.14368
	movq	%rax, %rdx	# D.14368, D.14368
	movq	-16(%rbp), %rax	# ml, tmp90
	movq	%rdx, (%rax)	# D.14368, ml_2->sp_offset
	.loc 1 2267 0 discriminator 2
	movq	-16(%rbp), %rax	# ml, tmp91
	movq	24(%rax), %rax	# ml_2->next, tmp92
	movq	%rax, -16(%rbp)	# tmp92, ml
.L490:
	.loc 1 2267 0 is_stmt 0 discriminator 1
	cmpq	$0, -16(%rbp)	#, ml
	jne	.L491	#,
	.loc 1 2270 0 is_stmt 1
	movl	$1, %eax	#, D.14365
	jmp	.L492	#
.L489:
	.loc 1 2273 0
	movl	$0, %eax	#, D.14365
.L492:
	.loc 1 2274 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE25:
	.size	try_apply_stack_adjustment, .-try_apply_stack_adjustment
	.type	record_stack_memrefs, @function
record_stack_memrefs:
.LFB26:
	.loc 1 2288 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# xp, xp
	movq	%rsi, -32(%rbp)	# data, data
	.loc 1 2289 0
	movq	-24(%rbp), %rax	# xp, tmp70
	movq	(%rax), %rax	# *xp_2(D), tmp71
	movq	%rax, -16(%rbp)	# tmp71, x
	.loc 1 2290 0
	movq	-32(%rbp), %rax	# data, tmp72
	movq	%rax, -8(%rbp)	# tmp72, d
	.loc 1 2292 0
	cmpq	$0, -16(%rbp)	#, x
	jne	.L494	#,
	.loc 1 2293 0
	movl	$0, %eax	#, D.14369
	jmp	.L495	#
.L494:
	.loc 1 2294 0
	movq	-16(%rbp), %rax	# x, tmp73
	movzwl	(%rax), %eax	# x_3->code, D.14370
	movzwl	%ax, %eax	# D.14370, D.14371
	cmpl	$61, %eax	#, D.14371
	je	.L497	#,
	cmpl	$66, %eax	#, D.14371
	je	.L498	#,
	.loc 1 2321 0
	jmp	.L502	#
.L498:
	.loc 1 2297 0
	movq	global_rtl+16(%rip), %rax	# global_rtl, D.14372
	movq	-16(%rbp), %rdx	# x, tmp74
	movq	%rdx, %rsi	# tmp74,
	movq	%rax, %rdi	# D.14372,
	call	reg_mentioned_p	#
	testl	%eax, %eax	# D.14369
	jne	.L499	#,
	.loc 1 2298 0
	movl	$-1, %eax	#, D.14369
	jmp	.L495	#
.L499:
	.loc 1 2301 0
	movq	-16(%rbp), %rax	# x, tmp75
	movq	%rax, %rdi	# tmp75,
	call	stack_memref_p	#
	testl	%eax, %eax	# D.14369
	je	.L500	#,
	.loc 1 2303 0
	movq	-8(%rbp), %rax	# d, tmp76
	movq	8(%rax), %rdx	# d_5->memlist, D.14373
	movq	-8(%rbp), %rax	# d, tmp77
	movq	(%rax), %rax	# d_5->insn, D.14372
	movq	-24(%rbp), %rcx	# xp, tmp78
	movq	%rcx, %rsi	# tmp78,
	movq	%rax, %rdi	# D.14372,
	call	record_one_stack_memref	#
	movq	-8(%rbp), %rdx	# d, tmp79
	movq	%rax, 8(%rdx)	# D.14373, d_5->memlist
	.loc 1 2304 0
	movl	$-1, %eax	#, D.14369
	jmp	.L495	#
.L500:
	.loc 1 2306 0
	movl	$1, %eax	#, D.14369
	jmp	.L495	#
.L497:
	.loc 1 2317 0
	movq	-16(%rbp), %rax	# x, tmp80
	movl	8(%rax), %eax	# x_3->fld[0].rtuint, D.14371
	cmpl	$7, %eax	#, D.14371
	jne	.L501	#,
	.loc 1 2318 0
	movl	$1, %eax	#, D.14369
	jmp	.L495	#
.L501:
	.loc 1 2319 0
	nop
.L502:
	.loc 1 2323 0
	movl	$0, %eax	#, D.14369
.L495:
	.loc 1 2324 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE26:
	.size	record_stack_memrefs, .-record_stack_memrefs
	.type	combine_stack_adjustments_for_block, @function
combine_stack_adjustments_for_block:
.LFB27:
	.loc 1 2331 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$112, %rsp	#,
	movq	%rdi, -104(%rbp)	# bb, bb
	.loc 1 2332 0
	movq	$0, -88(%rbp)	#, last_sp_adjust
	.loc 1 2333 0
	movq	$0, -80(%rbp)	#, last_sp_set
	.loc 1 2334 0
	movq	$0, -72(%rbp)	#, memlist
	.loc 1 2337 0
	movb	$0, -89(%rbp)	#, end_of_block
	.loc 1 2339 0
	movq	-104(%rbp), %rax	# bb, tmp121
	movq	(%rax), %rax	# bb_13(D)->head, tmp122
	movq	%rax, -64(%rbp)	# tmp122, insn
	jmp	.L504	#
.L518:
	.loc 1 2341 0
	movq	-104(%rbp), %rax	# bb, tmp123
	movq	8(%rax), %rax	# bb_13(D)->end, D.14375
	cmpq	-64(%rbp), %rax	# insn, D.14375
	sete	%al	#, tmp124
	movb	%al, -89(%rbp)	# tmp124, end_of_block
	.loc 1 2342 0
	movq	-64(%rbp), %rax	# insn, tmp125
	movq	24(%rax), %rax	# insn_7->fld[2].rtx, tmp126
	movq	%rax, -56(%rbp)	# tmp126, next
	.loc 1 2344 0
	movq	-64(%rbp), %rax	# insn, tmp127
	movzwl	(%rax), %eax	# insn_7->code, D.14376
	movzwl	%ax, %eax	# D.14376, D.14377
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.14378
	cmpb	$105, %al	#, D.14378
	je	.L505	#,
	.loc 1 2345 0
	jmp	.L506	#
.L505:
	.loc 1 2347 0
	movq	-64(%rbp), %rax	# insn, tmp129
	movq	%rax, %rdi	# tmp129,
	call	single_set_for_csa	#
	movq	%rax, -48(%rbp)	# tmp130, set
	.loc 1 2348 0
	cmpq	$0, -48(%rbp)	#, set
	je	.L507	#,
.LBB34:
	.loc 1 2350 0
	movq	-48(%rbp), %rax	# set, tmp131
	movq	8(%rax), %rax	# set_22->fld[0].rtx, tmp132
	movq	%rax, -40(%rbp)	# tmp132, dest
	.loc 1 2351 0
	movq	-48(%rbp), %rax	# set, tmp133
	movq	16(%rax), %rax	# set_22->fld[1].rtx, tmp134
	movq	%rax, -32(%rbp)	# tmp134, src
	.loc 1 2354 0
	movq	global_rtl+16(%rip), %rax	# global_rtl, D.14375
	cmpq	-40(%rbp), %rax	# dest, D.14375
	jne	.L508	#,
	.loc 1 2355 0
	movq	-32(%rbp), %rax	# src, tmp135
	movzwl	(%rax), %eax	# src_24->code, D.14376
	cmpw	$75, %ax	#, D.14376
	jne	.L508	#,
	.loc 1 2356 0
	movq	-32(%rbp), %rax	# src, tmp136
	movq	8(%rax), %rdx	# src_24->fld[0].rtx, D.14375
	movq	global_rtl+16(%rip), %rax	# global_rtl, D.14375
	cmpq	%rax, %rdx	# D.14375, D.14375
	jne	.L508	#,
	.loc 1 2357 0
	movq	-32(%rbp), %rax	# src, tmp137
	movq	16(%rax), %rax	# src_24->fld[1].rtx, D.14375
	movzwl	(%rax), %eax	# _29->code, D.14376
	cmpw	$54, %ax	#, D.14376
	jne	.L508	#,
.LBB35:
	.loc 1 2359 0
	movq	-32(%rbp), %rax	# src, tmp138
	movq	16(%rax), %rax	# src_24->fld[1].rtx, D.14375
	movq	8(%rax), %rax	# _31->fld[0].rtwint, tmp139
	movq	%rax, -24(%rbp)	# tmp139, this_adjust
	.loc 1 2363 0
	cmpq	$0, -80(%rbp)	#, last_sp_set
	jne	.L509	#,
	.loc 1 2365 0
	movq	-64(%rbp), %rax	# insn, tmp140
	movq	%rax, -80(%rbp)	# tmp140, last_sp_set
	.loc 1 2366 0
	movq	-24(%rbp), %rax	# this_adjust, tmp141
	movq	%rax, -88(%rbp)	# tmp141, last_sp_adjust
	.loc 1 2367 0
	jmp	.L506	#
.L509:
	.loc 1 2392 0
	cmpq	$0, -24(%rbp)	#, this_adjust
	jg	.L510	#,
	.loc 1 2394 0
	movq	-24(%rbp), %rax	# this_adjust, tmp142
	movq	-88(%rbp), %rdx	# last_sp_adjust, tmp143
	leaq	(%rdx,%rax), %rdi	#, D.14379
	movq	-24(%rbp), %rdx	# this_adjust, tmp144
	movq	-72(%rbp), %rsi	# memlist, tmp145
	movq	-80(%rbp), %rax	# last_sp_set, tmp146
	movq	%rdx, %rcx	# tmp144,
	movq	%rdi, %rdx	# D.14379,
	movq	%rax, %rdi	# tmp146,
	call	try_apply_stack_adjustment	#
	testl	%eax, %eax	# D.14377
	je	.L511	#,
	.loc 1 2399 0
	movq	-64(%rbp), %rax	# insn, tmp147
	movq	%rax, %rdi	# tmp147,
	call	delete_insn	#
	.loc 1 2400 0
	movq	-24(%rbp), %rax	# this_adjust, tmp148
	addq	%rax, -88(%rbp)	# tmp148, last_sp_adjust
	.loc 1 2401 0
	jmp	.L506	#
.L510:
	.loc 1 2407 0
	cmpq	$0, -88(%rbp)	#, last_sp_adjust
	js	.L511	#,
	.loc 1 2410 0
	movq	-88(%rbp), %rax	# last_sp_adjust, tmp149
	negq	%rax	# D.14379
	movq	%rax, %rcx	# D.14379, D.14379
	movq	-24(%rbp), %rax	# this_adjust, tmp150
	movq	-88(%rbp), %rdx	# last_sp_adjust, tmp151
	addq	%rax, %rdx	# tmp150, D.14379
	movq	-72(%rbp), %rsi	# memlist, tmp152
	movq	-64(%rbp), %rax	# insn, tmp153
	movq	%rax, %rdi	# tmp153,
	call	try_apply_stack_adjustment	#
	testl	%eax, %eax	# D.14377
	je	.L511	#,
	.loc 1 2415 0
	movq	-80(%rbp), %rax	# last_sp_set, tmp154
	movq	%rax, %rdi	# tmp154,
	call	delete_insn	#
	.loc 1 2416 0
	movq	-64(%rbp), %rax	# insn, tmp155
	movq	%rax, -80(%rbp)	# tmp155, last_sp_set
	.loc 1 2417 0
	movq	-24(%rbp), %rax	# this_adjust, tmp156
	addq	%rax, -88(%rbp)	# tmp156, last_sp_adjust
	.loc 1 2418 0
	movq	-72(%rbp), %rax	# memlist, tmp157
	movq	%rax, %rdi	# tmp157,
	call	free_csa_memlist	#
	.loc 1 2419 0
	movq	$0, -72(%rbp)	#, memlist
	.loc 1 2420 0
	jmp	.L506	#
.L511:
	.loc 1 2427 0
	cmpq	$0, -80(%rbp)	#, last_sp_set
	je	.L512	#,
	.loc 1 2427 0 is_stmt 0 discriminator 1
	cmpq	$0, -88(%rbp)	#, last_sp_adjust
	jne	.L512	#,
	.loc 1 2428 0 is_stmt 1
	movq	-64(%rbp), %rax	# insn, tmp158
	movq	%rax, %rdi	# tmp158,
	call	delete_insn	#
.L512:
	.loc 1 2429 0
	movq	-72(%rbp), %rax	# memlist, tmp159
	movq	%rax, %rdi	# tmp159,
	call	free_csa_memlist	#
	.loc 1 2430 0
	movq	$0, -72(%rbp)	#, memlist
	.loc 1 2431 0
	movq	-64(%rbp), %rax	# insn, tmp160
	movq	%rax, -80(%rbp)	# tmp160, last_sp_set
	.loc 1 2432 0
	movq	-24(%rbp), %rax	# this_adjust, tmp161
	movq	%rax, -88(%rbp)	# tmp161, last_sp_adjust
	.loc 1 2433 0
	jmp	.L506	#
.L508:
.LBE35:
	.loc 1 2439 0
	cmpq	$0, -72(%rbp)	#, memlist
	jne	.L507	#,
	.loc 1 2440 0
	movq	-40(%rbp), %rax	# dest, tmp162
	movzwl	(%rax), %eax	# dest_23->code, D.14376
	cmpw	$66, %ax	#, D.14376
	jne	.L507	#,
	.loc 1 2441 0
	movq	-40(%rbp), %rax	# dest, tmp163
	movq	8(%rax), %rax	# dest_23->fld[0].rtx, D.14375
	movzwl	(%rax), %eax	# _48->code, D.14376
	cmpw	$96, %ax	#, D.14376
	jne	.L513	#,
	.loc 1 2443 0
	movq	-40(%rbp), %rax	# dest, tmp164
	movzbl	2(%rax), %eax	# dest_23->mode, D.14380
	movzbl	%al, %eax	# D.14380, D.14377
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.14380
	movzbl	%al, %eax	# D.14380, D.14379
	.loc 1 2442 0
	cmpq	-88(%rbp), %rax	# last_sp_adjust, D.14379
	je	.L514	#,
.L513:
	.loc 1 2444 0
	movq	-40(%rbp), %rax	# dest, tmp166
	movq	8(%rax), %rax	# dest_23->fld[0].rtx, D.14375
	movzwl	(%rax), %eax	# _54->code, D.14376
	cmpw	$100, %ax	#, D.14376
	jne	.L507	#,
	.loc 1 2445 0
	movq	-40(%rbp), %rax	# dest, tmp167
	movq	8(%rax), %rax	# dest_23->fld[0].rtx, D.14375
	movq	16(%rax), %rax	# _56->fld[1].rtx, D.14375
	movzwl	(%rax), %eax	# _57->code, D.14376
	cmpw	$75, %ax	#, D.14376
	jne	.L507	#,
	.loc 1 2446 0
	movq	-40(%rbp), %rax	# dest, tmp168
	movq	8(%rax), %rax	# dest_23->fld[0].rtx, D.14375
	movq	16(%rax), %rax	# _59->fld[1].rtx, D.14375
	movq	8(%rax), %rdx	# _60->fld[0].rtx, D.14375
	movq	global_rtl+16(%rip), %rax	# global_rtl, D.14375
	cmpq	%rax, %rdx	# D.14375, D.14375
	jne	.L507	#,
	.loc 1 2447 0
	movq	-40(%rbp), %rax	# dest, tmp169
	movq	8(%rax), %rax	# dest_23->fld[0].rtx, D.14375
	movq	16(%rax), %rax	# _63->fld[1].rtx, D.14375
	movq	16(%rax), %rax	# _64->fld[1].rtx, D.14375
	movzwl	(%rax), %eax	# _65->code, D.14376
	cmpw	$54, %ax	#, D.14376
	jne	.L507	#,
	.loc 1 2449 0
	movq	-40(%rbp), %rax	# dest, tmp170
	movq	8(%rax), %rax	# dest_23->fld[0].rtx, D.14375
	movq	16(%rax), %rax	# _67->fld[1].rtx, D.14375
	movq	16(%rax), %rax	# _68->fld[1].rtx, D.14375
	movq	8(%rax), %rax	# _69->fld[0].rtwint, D.14379
	.loc 1 2450 0
	movq	-88(%rbp), %rdx	# last_sp_adjust, tmp171
	negq	%rdx	# D.14379
	.loc 1 2449 0
	cmpq	%rdx, %rax	# D.14379, D.14379
	jne	.L507	#,
.L514:
	.loc 1 2451 0
	movq	-40(%rbp), %rax	# dest, tmp172
	movq	8(%rax), %rax	# dest_23->fld[0].rtx, D.14375
	movq	8(%rax), %rdx	# _72->fld[0].rtx, D.14375
	movq	global_rtl+16(%rip), %rax	# global_rtl, D.14375
	cmpq	%rax, %rdx	# D.14375, D.14375
	jne	.L507	#,
	.loc 1 2452 0
	movq	global_rtl+16(%rip), %rax	# global_rtl, D.14375
	movq	-32(%rbp), %rdx	# src, tmp173
	movq	%rdx, %rsi	# tmp173,
	movq	%rax, %rdi	# D.14375,
	call	reg_mentioned_p	#
	testl	%eax, %eax	# D.14377
	jne	.L507	#,
	.loc 1 2453 0
	movq	global_rtl+16(%rip), %rdx	# global_rtl, D.14375
	movq	-40(%rbp), %rax	# dest, tmp174
	movzbl	2(%rax), %eax	# dest_23->mode, D.14380
	movzbl	%al, %eax	# D.14380, D.14381
	movq	%rdx, %rsi	# D.14375,
	movl	%eax, %edi	# D.14381,
	call	memory_address_p	#
	testl	%eax, %eax	# D.14377
	je	.L507	#,
	.loc 1 2454 0
	movq	global_rtl+16(%rip), %rdx	# global_rtl, D.14375
	movq	-40(%rbp), %rax	# dest, tmp175
	movq	%rdx, %rsi	# D.14375,
	movq	%rax, %rdi	# tmp175,
	call	replace_equiv_address	#
	movq	%rax, %rdx	#, D.14375
	movq	-48(%rbp), %rax	# set, tmp176
	leaq	8(%rax), %rsi	#, D.14382
	movq	-64(%rbp), %rax	# insn, tmp177
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# tmp177,
	call	validate_change	#
	testl	%eax, %eax	# D.14377
	je	.L507	#,
	.loc 1 2459 0
	movq	-80(%rbp), %rax	# last_sp_set, tmp178
	movq	%rax, %rdi	# tmp178,
	call	delete_insn	#
	.loc 1 2460 0
	movq	-72(%rbp), %rax	# memlist, tmp179
	movq	%rax, %rdi	# tmp179,
	call	free_csa_memlist	#
	.loc 1 2461 0
	movq	$0, -72(%rbp)	#, memlist
	.loc 1 2462 0
	movq	$0, -80(%rbp)	#, last_sp_set
	.loc 1 2463 0
	movq	$0, -88(%rbp)	#, last_sp_adjust
	.loc 1 2464 0
	jmp	.L506	#
.L507:
.LBE34:
	.loc 1 2468 0
	movq	-64(%rbp), %rax	# insn, tmp180
	movq	%rax, -16(%rbp)	# tmp180, data.insn
	.loc 1 2469 0
	movq	-72(%rbp), %rax	# memlist, tmp181
	movq	%rax, -8(%rbp)	# tmp181, data.memlist
	.loc 1 2470 0
	movq	-64(%rbp), %rax	# insn, tmp182
	movzwl	(%rax), %eax	# insn_7->code, D.14376
	cmpw	$34, %ax	#, D.14376
	je	.L515	#,
	.loc 1 2470 0 is_stmt 0 discriminator 1
	cmpq	$0, -80(%rbp)	#, last_sp_set
	je	.L515	#,
	.loc 1 2471 0 is_stmt 1
	movq	-64(%rbp), %rax	# insn, tmp183
	leaq	32(%rax), %rcx	#, D.14382
	leaq	-16(%rbp), %rax	#, tmp184
	movq	%rax, %rdx	# tmp184,
	movl	$record_stack_memrefs, %esi	#,
	movq	%rcx, %rdi	# D.14382,
	call	for_each_rtx	#
	testl	%eax, %eax	# D.14377
	jne	.L515	#,
	.loc 1 2473 0
	movq	-8(%rbp), %rax	# data.memlist, tmp185
	movq	%rax, -72(%rbp)	# tmp185, memlist
	.loc 1 2474 0
	jmp	.L506	#
.L515:
	.loc 1 2476 0
	movq	-8(%rbp), %rax	# data.memlist, tmp186
	movq	%rax, -72(%rbp)	# tmp186, memlist
	.loc 1 2480 0
	cmpq	$0, -80(%rbp)	#, last_sp_set
	je	.L506	#,
	.loc 1 2481 0
	movq	-64(%rbp), %rax	# insn, tmp187
	movzwl	(%rax), %eax	# insn_7->code, D.14376
	cmpw	$34, %ax	#, D.14376
	je	.L516	#,
	.loc 1 2482 0
	movq	-64(%rbp), %rax	# insn, tmp188
	movq	32(%rax), %rdx	# insn_7->fld[3].rtx, D.14375
	movq	global_rtl+16(%rip), %rax	# global_rtl, D.14375
	movq	%rdx, %rsi	# D.14375,
	movq	%rax, %rdi	# D.14375,
	call	reg_mentioned_p	#
	testl	%eax, %eax	# D.14377
	je	.L506	#,
.L516:
	.loc 1 2484 0
	cmpq	$0, -80(%rbp)	#, last_sp_set
	je	.L517	#,
	.loc 1 2484 0 is_stmt 0 discriminator 1
	cmpq	$0, -88(%rbp)	#, last_sp_adjust
	jne	.L517	#,
	.loc 1 2485 0 is_stmt 1
	movq	-80(%rbp), %rax	# last_sp_set, tmp189
	movq	%rax, %rdi	# tmp189,
	call	delete_insn	#
.L517:
	.loc 1 2486 0
	movq	-72(%rbp), %rax	# memlist, tmp190
	movq	%rax, %rdi	# tmp190,
	call	free_csa_memlist	#
	.loc 1 2487 0
	movq	$0, -72(%rbp)	#, memlist
	.loc 1 2488 0
	movq	$0, -80(%rbp)	#, last_sp_set
	.loc 1 2489 0
	movq	$0, -88(%rbp)	#, last_sp_adjust
.L506:
	.loc 1 2339 0
	movq	-56(%rbp), %rax	# next, tmp191
	movq	%rax, -64(%rbp)	# tmp191, insn
.L504:
	.loc 1 2339 0 is_stmt 0 discriminator 1
	movzbl	-89(%rbp), %eax	# end_of_block, tmp192
	xorl	$1, %eax	#, D.14374
	testb	%al, %al	# D.14374
	jne	.L518	#,
	.loc 1 2493 0 is_stmt 1
	cmpq	$0, -80(%rbp)	#, last_sp_set
	je	.L503	#,
	.loc 1 2493 0 is_stmt 0 discriminator 1
	cmpq	$0, -88(%rbp)	#, last_sp_adjust
	jne	.L503	#,
	.loc 1 2494 0 is_stmt 1
	movq	-80(%rbp), %rax	# last_sp_set, tmp193
	movq	%rax, %rdi	# tmp193,
	call	delete_insn	#
.L503:
	.loc 1 2495 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE27:
	.size	combine_stack_adjustments_for_block, .-combine_stack_adjustments_for_block
.Letext0:
	.file 2 "rtl.h"
	.file 3 "config.h"
	.file 4 "i386.h"
	.file 5 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.file 6 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 7 "/usr/include/stdio.h"
	.file 8 "/usr/include/libio.h"
	.file 9 "machmode.h"
	.file 10 "bitmap.h"
	.file 11 "basic-block.h"
	.file 12 "recog.h"
	.file 13 "varray.h"
	.file 14 "regs.h"
	.file 15 "function.h"
	.file 16 "hard-reg-set.h"
	.file 17 "flags.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x316b
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF728
	.byte	0x1
	.long	.LASF729
	.long	.LASF730
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
	.long	0x266
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.long	.LASF1
	.byte	0x2
	.byte	0x80
	.long	0x266
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.long	.LASF2
	.byte	0x2
	.byte	0x87
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0x5
	.long	.LASF3
	.byte	0x2
	.byte	0x8a
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0x5
	.long	.LASF4
	.byte	0x2
	.byte	0x95
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0x5
	.long	.LASF5
	.byte	0x2
	.byte	0x9d
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.long	.LASF6
	.byte	0x2
	.byte	0xaf
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.long	.LASF7
	.byte	0x2
	.byte	0xb6
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.long	.LASF8
	.byte	0x2
	.byte	0xbb
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.long	.LASF9
	.byte	0x2
	.byte	0xc4
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x6
	.string	"fld"
	.byte	0x2
	.byte	0xc9
	.long	0xd43
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
	.long	0xd53
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
	.long	.LASF731
	.uleb128 0xa
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0xb
	.byte	0x8
	.byte	0x7
	.long	.LASF16
	.uleb128 0xc
	.long	.LASF100
	.byte	0x4
	.byte	0x4
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
	.uleb128 0xe
	.long	.LASF43
	.byte	0x1c
	.byte	0x4
	.value	0x683
	.long	0x25a
	.uleb128 0xf
	.long	.LASF44
	.byte	0x4
	.value	0x684
	.long	0x139
	.byte	0
	.uleb128 0xf
	.long	.LASF45
	.byte	0x4
	.value	0x685
	.long	0x139
	.byte	0x4
	.uleb128 0xf
	.long	.LASF46
	.byte	0x4
	.value	0x686
	.long	0x139
	.byte	0x8
	.uleb128 0xf
	.long	.LASF47
	.byte	0x4
	.value	0x687
	.long	0x139
	.byte	0xc
	.uleb128 0xf
	.long	.LASF48
	.byte	0x4
	.value	0x688
	.long	0x139
	.byte	0x10
	.uleb128 0xf
	.long	.LASF49
	.byte	0x4
	.value	0x689
	.long	0x139
	.byte	0x14
	.uleb128 0xf
	.long	.LASF50
	.byte	0x4
	.value	0x68a
	.long	0x139
	.byte	0x18
	.byte	0
	.uleb128 0x10
	.long	.LASF51
	.byte	0x4
	.value	0x68b
	.long	0x1f1
	.uleb128 0xb
	.byte	0x4
	.byte	0x7
	.long	.LASF52
	.uleb128 0x11
	.byte	0x8
	.uleb128 0xb
	.byte	0x8
	.byte	0x5
	.long	.LASF53
	.uleb128 0x7
	.long	.LASF54
	.byte	0x5
	.byte	0xd4
	.long	0x281
	.uleb128 0xb
	.byte	0x8
	.byte	0x7
	.long	.LASF55
	.uleb128 0xb
	.byte	0x1
	.byte	0x8
	.long	.LASF56
	.uleb128 0xb
	.byte	0x2
	.byte	0x7
	.long	.LASF57
	.uleb128 0xb
	.byte	0x1
	.byte	0x6
	.long	.LASF58
	.uleb128 0xb
	.byte	0x2
	.byte	0x5
	.long	.LASF59
	.uleb128 0x7
	.long	.LASF60
	.byte	0x6
	.byte	0x8c
	.long	0x26f
	.uleb128 0x7
	.long	.LASF61
	.byte	0x6
	.byte	0x8d
	.long	0x26f
	.uleb128 0x3
	.byte	0x8
	.long	0x2c0
	.uleb128 0xb
	.byte	0x1
	.byte	0x6
	.long	.LASF62
	.uleb128 0x7
	.long	.LASF63
	.byte	0x7
	.byte	0x30
	.long	0x2d2
	.uleb128 0x4
	.long	.LASF64
	.byte	0xd8
	.byte	0x8
	.byte	0xf6
	.long	0x453
	.uleb128 0x8
	.long	.LASF65
	.byte	0x8
	.byte	0xf7
	.long	0x139
	.byte	0
	.uleb128 0x8
	.long	.LASF66
	.byte	0x8
	.byte	0xfc
	.long	0x2ba
	.byte	0x8
	.uleb128 0x8
	.long	.LASF67
	.byte	0x8
	.byte	0xfd
	.long	0x2ba
	.byte	0x10
	.uleb128 0x8
	.long	.LASF68
	.byte	0x8
	.byte	0xfe
	.long	0x2ba
	.byte	0x18
	.uleb128 0x8
	.long	.LASF69
	.byte	0x8
	.byte	0xff
	.long	0x2ba
	.byte	0x20
	.uleb128 0xf
	.long	.LASF70
	.byte	0x8
	.value	0x100
	.long	0x2ba
	.byte	0x28
	.uleb128 0xf
	.long	.LASF71
	.byte	0x8
	.value	0x101
	.long	0x2ba
	.byte	0x30
	.uleb128 0xf
	.long	.LASF72
	.byte	0x8
	.value	0x102
	.long	0x2ba
	.byte	0x38
	.uleb128 0xf
	.long	.LASF73
	.byte	0x8
	.value	0x103
	.long	0x2ba
	.byte	0x40
	.uleb128 0xf
	.long	.LASF74
	.byte	0x8
	.value	0x105
	.long	0x2ba
	.byte	0x48
	.uleb128 0xf
	.long	.LASF75
	.byte	0x8
	.value	0x106
	.long	0x2ba
	.byte	0x50
	.uleb128 0xf
	.long	.LASF76
	.byte	0x8
	.value	0x107
	.long	0x2ba
	.byte	0x58
	.uleb128 0xf
	.long	.LASF77
	.byte	0x8
	.value	0x109
	.long	0x49b
	.byte	0x60
	.uleb128 0xf
	.long	.LASF78
	.byte	0x8
	.value	0x10b
	.long	0x4a1
	.byte	0x68
	.uleb128 0xf
	.long	.LASF79
	.byte	0x8
	.value	0x10d
	.long	0x139
	.byte	0x70
	.uleb128 0xf
	.long	.LASF80
	.byte	0x8
	.value	0x111
	.long	0x139
	.byte	0x74
	.uleb128 0xf
	.long	.LASF81
	.byte	0x8
	.value	0x113
	.long	0x2a4
	.byte	0x78
	.uleb128 0xf
	.long	.LASF82
	.byte	0x8
	.value	0x117
	.long	0x28f
	.byte	0x80
	.uleb128 0xf
	.long	.LASF83
	.byte	0x8
	.value	0x118
	.long	0x296
	.byte	0x82
	.uleb128 0xf
	.long	.LASF84
	.byte	0x8
	.value	0x119
	.long	0x4a7
	.byte	0x83
	.uleb128 0xf
	.long	.LASF85
	.byte	0x8
	.value	0x11d
	.long	0x4b7
	.byte	0x88
	.uleb128 0xf
	.long	.LASF86
	.byte	0x8
	.value	0x126
	.long	0x2af
	.byte	0x90
	.uleb128 0xf
	.long	.LASF87
	.byte	0x8
	.value	0x12f
	.long	0x26d
	.byte	0x98
	.uleb128 0xf
	.long	.LASF88
	.byte	0x8
	.value	0x130
	.long	0x26d
	.byte	0xa0
	.uleb128 0xf
	.long	.LASF89
	.byte	0x8
	.value	0x131
	.long	0x26d
	.byte	0xa8
	.uleb128 0xf
	.long	.LASF90
	.byte	0x8
	.value	0x132
	.long	0x26d
	.byte	0xb0
	.uleb128 0xf
	.long	.LASF91
	.byte	0x8
	.value	0x133
	.long	0x276
	.byte	0xb8
	.uleb128 0xf
	.long	.LASF92
	.byte	0x8
	.value	0x135
	.long	0x139
	.byte	0xc0
	.uleb128 0xf
	.long	.LASF93
	.byte	0x8
	.value	0x137
	.long	0x4bd
	.byte	0xc4
	.byte	0
	.uleb128 0x12
	.long	0x2c0
	.long	0x463
	.uleb128 0x13
	.long	0x140
	.byte	0x3
	.byte	0
	.uleb128 0x14
	.long	.LASF732
	.byte	0x8
	.byte	0x9b
	.uleb128 0x4
	.long	.LASF94
	.byte	0x18
	.byte	0x8
	.byte	0xa1
	.long	0x49b
	.uleb128 0x8
	.long	.LASF95
	.byte	0x8
	.byte	0xa2
	.long	0x49b
	.byte	0
	.uleb128 0x8
	.long	.LASF96
	.byte	0x8
	.byte	0xa3
	.long	0x4a1
	.byte	0x8
	.uleb128 0x8
	.long	.LASF97
	.byte	0x8
	.byte	0xa7
	.long	0x139
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x46a
	.uleb128 0x3
	.byte	0x8
	.long	0x2d2
	.uleb128 0x12
	.long	0x2c0
	.long	0x4b7
	.uleb128 0x13
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x463
	.uleb128 0x12
	.long	0x2c0
	.long	0x4cd
	.uleb128 0x13
	.long	0x140
	.byte	0x13
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x4d3
	.uleb128 0x15
	.long	0x2c0
	.uleb128 0xb
	.byte	0x8
	.byte	0x7
	.long	.LASF98
	.uleb128 0xb
	.byte	0x8
	.byte	0x5
	.long	.LASF99
	.uleb128 0x3
	.byte	0x8
	.long	0x139
	.uleb128 0x16
	.long	.LASF101
	.byte	0x4
	.byte	0x9
	.byte	0x1d
	.long	0x661
	.uleb128 0xd
	.long	.LASF102
	.sleb128 0
	.uleb128 0xd
	.long	.LASF103
	.sleb128 1
	.uleb128 0xd
	.long	.LASF104
	.sleb128 2
	.uleb128 0xd
	.long	.LASF105
	.sleb128 3
	.uleb128 0xd
	.long	.LASF106
	.sleb128 4
	.uleb128 0xd
	.long	.LASF107
	.sleb128 5
	.uleb128 0xd
	.long	.LASF108
	.sleb128 6
	.uleb128 0xd
	.long	.LASF109
	.sleb128 7
	.uleb128 0xd
	.long	.LASF110
	.sleb128 8
	.uleb128 0xd
	.long	.LASF111
	.sleb128 9
	.uleb128 0xd
	.long	.LASF112
	.sleb128 10
	.uleb128 0xd
	.long	.LASF113
	.sleb128 11
	.uleb128 0xd
	.long	.LASF114
	.sleb128 12
	.uleb128 0xd
	.long	.LASF115
	.sleb128 13
	.uleb128 0xd
	.long	.LASF116
	.sleb128 14
	.uleb128 0xd
	.long	.LASF117
	.sleb128 15
	.uleb128 0xd
	.long	.LASF118
	.sleb128 16
	.uleb128 0xd
	.long	.LASF119
	.sleb128 17
	.uleb128 0xd
	.long	.LASF120
	.sleb128 18
	.uleb128 0xd
	.long	.LASF121
	.sleb128 19
	.uleb128 0xd
	.long	.LASF122
	.sleb128 20
	.uleb128 0xd
	.long	.LASF123
	.sleb128 21
	.uleb128 0xd
	.long	.LASF124
	.sleb128 22
	.uleb128 0xd
	.long	.LASF125
	.sleb128 23
	.uleb128 0xd
	.long	.LASF126
	.sleb128 24
	.uleb128 0xd
	.long	.LASF127
	.sleb128 25
	.uleb128 0xd
	.long	.LASF128
	.sleb128 26
	.uleb128 0xd
	.long	.LASF129
	.sleb128 27
	.uleb128 0xd
	.long	.LASF130
	.sleb128 28
	.uleb128 0xd
	.long	.LASF131
	.sleb128 29
	.uleb128 0xd
	.long	.LASF132
	.sleb128 30
	.uleb128 0xd
	.long	.LASF133
	.sleb128 31
	.uleb128 0xd
	.long	.LASF134
	.sleb128 32
	.uleb128 0xd
	.long	.LASF135
	.sleb128 33
	.uleb128 0xd
	.long	.LASF136
	.sleb128 34
	.uleb128 0xd
	.long	.LASF137
	.sleb128 35
	.uleb128 0xd
	.long	.LASF138
	.sleb128 36
	.uleb128 0xd
	.long	.LASF139
	.sleb128 37
	.uleb128 0xd
	.long	.LASF140
	.sleb128 38
	.uleb128 0xd
	.long	.LASF141
	.sleb128 39
	.uleb128 0xd
	.long	.LASF142
	.sleb128 40
	.uleb128 0xd
	.long	.LASF143
	.sleb128 41
	.uleb128 0xd
	.long	.LASF144
	.sleb128 42
	.uleb128 0xd
	.long	.LASF145
	.sleb128 43
	.uleb128 0xd
	.long	.LASF146
	.sleb128 44
	.uleb128 0xd
	.long	.LASF147
	.sleb128 45
	.uleb128 0xd
	.long	.LASF148
	.sleb128 46
	.uleb128 0xd
	.long	.LASF149
	.sleb128 47
	.uleb128 0xd
	.long	.LASF150
	.sleb128 48
	.uleb128 0xd
	.long	.LASF151
	.sleb128 49
	.uleb128 0xd
	.long	.LASF152
	.sleb128 50
	.uleb128 0xd
	.long	.LASF153
	.sleb128 51
	.uleb128 0xd
	.long	.LASF154
	.sleb128 52
	.uleb128 0xd
	.long	.LASF155
	.sleb128 53
	.uleb128 0xd
	.long	.LASF156
	.sleb128 54
	.uleb128 0xd
	.long	.LASF157
	.sleb128 55
	.uleb128 0xd
	.long	.LASF158
	.sleb128 56
	.uleb128 0xd
	.long	.LASF159
	.sleb128 57
	.uleb128 0xd
	.long	.LASF160
	.sleb128 58
	.uleb128 0xd
	.long	.LASF161
	.sleb128 59
	.byte	0
	.uleb128 0x16
	.long	.LASF162
	.byte	0x4
	.byte	0x9
	.byte	0x2c
	.long	0x6aa
	.uleb128 0xd
	.long	.LASF163
	.sleb128 0
	.uleb128 0xd
	.long	.LASF164
	.sleb128 1
	.uleb128 0xd
	.long	.LASF165
	.sleb128 2
	.uleb128 0xd
	.long	.LASF166
	.sleb128 3
	.uleb128 0xd
	.long	.LASF167
	.sleb128 4
	.uleb128 0xd
	.long	.LASF168
	.sleb128 5
	.uleb128 0xd
	.long	.LASF169
	.sleb128 6
	.uleb128 0xd
	.long	.LASF170
	.sleb128 7
	.uleb128 0xd
	.long	.LASF171
	.sleb128 8
	.uleb128 0xd
	.long	.LASF172
	.sleb128 9
	.byte	0
	.uleb128 0x16
	.long	.LASF173
	.byte	0x4
	.byte	0x2
	.byte	0x29
	.long	0xaa6
	.uleb128 0xd
	.long	.LASF174
	.sleb128 0
	.uleb128 0x17
	.string	"NIL"
	.sleb128 1
	.uleb128 0xd
	.long	.LASF175
	.sleb128 2
	.uleb128 0xd
	.long	.LASF176
	.sleb128 3
	.uleb128 0xd
	.long	.LASF177
	.sleb128 4
	.uleb128 0xd
	.long	.LASF178
	.sleb128 5
	.uleb128 0xd
	.long	.LASF179
	.sleb128 6
	.uleb128 0xd
	.long	.LASF180
	.sleb128 7
	.uleb128 0xd
	.long	.LASF181
	.sleb128 8
	.uleb128 0xd
	.long	.LASF182
	.sleb128 9
	.uleb128 0xd
	.long	.LASF183
	.sleb128 10
	.uleb128 0xd
	.long	.LASF184
	.sleb128 11
	.uleb128 0xd
	.long	.LASF185
	.sleb128 12
	.uleb128 0xd
	.long	.LASF186
	.sleb128 13
	.uleb128 0xd
	.long	.LASF187
	.sleb128 14
	.uleb128 0xd
	.long	.LASF188
	.sleb128 15
	.uleb128 0xd
	.long	.LASF189
	.sleb128 16
	.uleb128 0xd
	.long	.LASF190
	.sleb128 17
	.uleb128 0xd
	.long	.LASF191
	.sleb128 18
	.uleb128 0xd
	.long	.LASF192
	.sleb128 19
	.uleb128 0xd
	.long	.LASF193
	.sleb128 20
	.uleb128 0xd
	.long	.LASF194
	.sleb128 21
	.uleb128 0xd
	.long	.LASF195
	.sleb128 22
	.uleb128 0xd
	.long	.LASF196
	.sleb128 23
	.uleb128 0xd
	.long	.LASF197
	.sleb128 24
	.uleb128 0xd
	.long	.LASF198
	.sleb128 25
	.uleb128 0xd
	.long	.LASF199
	.sleb128 26
	.uleb128 0xd
	.long	.LASF200
	.sleb128 27
	.uleb128 0xd
	.long	.LASF201
	.sleb128 28
	.uleb128 0xd
	.long	.LASF202
	.sleb128 29
	.uleb128 0xd
	.long	.LASF203
	.sleb128 30
	.uleb128 0xd
	.long	.LASF204
	.sleb128 31
	.uleb128 0xd
	.long	.LASF205
	.sleb128 32
	.uleb128 0xd
	.long	.LASF206
	.sleb128 33
	.uleb128 0xd
	.long	.LASF207
	.sleb128 34
	.uleb128 0xd
	.long	.LASF208
	.sleb128 35
	.uleb128 0xd
	.long	.LASF209
	.sleb128 36
	.uleb128 0xd
	.long	.LASF210
	.sleb128 37
	.uleb128 0xd
	.long	.LASF211
	.sleb128 38
	.uleb128 0xd
	.long	.LASF212
	.sleb128 39
	.uleb128 0xd
	.long	.LASF213
	.sleb128 40
	.uleb128 0xd
	.long	.LASF214
	.sleb128 41
	.uleb128 0xd
	.long	.LASF215
	.sleb128 42
	.uleb128 0xd
	.long	.LASF216
	.sleb128 43
	.uleb128 0xd
	.long	.LASF217
	.sleb128 44
	.uleb128 0xd
	.long	.LASF218
	.sleb128 45
	.uleb128 0xd
	.long	.LASF219
	.sleb128 46
	.uleb128 0x17
	.string	"SET"
	.sleb128 47
	.uleb128 0x17
	.string	"USE"
	.sleb128 48
	.uleb128 0xd
	.long	.LASF220
	.sleb128 49
	.uleb128 0xd
	.long	.LASF221
	.sleb128 50
	.uleb128 0xd
	.long	.LASF222
	.sleb128 51
	.uleb128 0xd
	.long	.LASF223
	.sleb128 52
	.uleb128 0xd
	.long	.LASF224
	.sleb128 53
	.uleb128 0xd
	.long	.LASF225
	.sleb128 54
	.uleb128 0xd
	.long	.LASF226
	.sleb128 55
	.uleb128 0xd
	.long	.LASF227
	.sleb128 56
	.uleb128 0xd
	.long	.LASF228
	.sleb128 57
	.uleb128 0xd
	.long	.LASF229
	.sleb128 58
	.uleb128 0x17
	.string	"PC"
	.sleb128 59
	.uleb128 0xd
	.long	.LASF230
	.sleb128 60
	.uleb128 0x17
	.string	"REG"
	.sleb128 61
	.uleb128 0xd
	.long	.LASF231
	.sleb128 62
	.uleb128 0xd
	.long	.LASF232
	.sleb128 63
	.uleb128 0xd
	.long	.LASF233
	.sleb128 64
	.uleb128 0xd
	.long	.LASF234
	.sleb128 65
	.uleb128 0x17
	.string	"MEM"
	.sleb128 66
	.uleb128 0xd
	.long	.LASF235
	.sleb128 67
	.uleb128 0xd
	.long	.LASF236
	.sleb128 68
	.uleb128 0x17
	.string	"CC0"
	.sleb128 69
	.uleb128 0xd
	.long	.LASF237
	.sleb128 70
	.uleb128 0xd
	.long	.LASF238
	.sleb128 71
	.uleb128 0xd
	.long	.LASF239
	.sleb128 72
	.uleb128 0xd
	.long	.LASF240
	.sleb128 73
	.uleb128 0xd
	.long	.LASF241
	.sleb128 74
	.uleb128 0xd
	.long	.LASF242
	.sleb128 75
	.uleb128 0xd
	.long	.LASF243
	.sleb128 76
	.uleb128 0x17
	.string	"NEG"
	.sleb128 77
	.uleb128 0xd
	.long	.LASF244
	.sleb128 78
	.uleb128 0x17
	.string	"DIV"
	.sleb128 79
	.uleb128 0x17
	.string	"MOD"
	.sleb128 80
	.uleb128 0xd
	.long	.LASF245
	.sleb128 81
	.uleb128 0xd
	.long	.LASF246
	.sleb128 82
	.uleb128 0x17
	.string	"AND"
	.sleb128 83
	.uleb128 0x17
	.string	"IOR"
	.sleb128 84
	.uleb128 0x17
	.string	"XOR"
	.sleb128 85
	.uleb128 0x17
	.string	"NOT"
	.sleb128 86
	.uleb128 0xd
	.long	.LASF247
	.sleb128 87
	.uleb128 0xd
	.long	.LASF248
	.sleb128 88
	.uleb128 0xd
	.long	.LASF249
	.sleb128 89
	.uleb128 0xd
	.long	.LASF250
	.sleb128 90
	.uleb128 0xd
	.long	.LASF251
	.sleb128 91
	.uleb128 0xd
	.long	.LASF252
	.sleb128 92
	.uleb128 0xd
	.long	.LASF253
	.sleb128 93
	.uleb128 0xd
	.long	.LASF254
	.sleb128 94
	.uleb128 0xd
	.long	.LASF255
	.sleb128 95
	.uleb128 0xd
	.long	.LASF256
	.sleb128 96
	.uleb128 0xd
	.long	.LASF257
	.sleb128 97
	.uleb128 0xd
	.long	.LASF258
	.sleb128 98
	.uleb128 0xd
	.long	.LASF259
	.sleb128 99
	.uleb128 0xd
	.long	.LASF260
	.sleb128 100
	.uleb128 0xd
	.long	.LASF261
	.sleb128 101
	.uleb128 0x17
	.string	"NE"
	.sleb128 102
	.uleb128 0x17
	.string	"EQ"
	.sleb128 103
	.uleb128 0x17
	.string	"GE"
	.sleb128 104
	.uleb128 0x17
	.string	"GT"
	.sleb128 105
	.uleb128 0x17
	.string	"LE"
	.sleb128 106
	.uleb128 0x17
	.string	"LT"
	.sleb128 107
	.uleb128 0x17
	.string	"GEU"
	.sleb128 108
	.uleb128 0x17
	.string	"GTU"
	.sleb128 109
	.uleb128 0x17
	.string	"LEU"
	.sleb128 110
	.uleb128 0x17
	.string	"LTU"
	.sleb128 111
	.uleb128 0xd
	.long	.LASF262
	.sleb128 112
	.uleb128 0xd
	.long	.LASF263
	.sleb128 113
	.uleb128 0xd
	.long	.LASF264
	.sleb128 114
	.uleb128 0xd
	.long	.LASF265
	.sleb128 115
	.uleb128 0xd
	.long	.LASF266
	.sleb128 116
	.uleb128 0xd
	.long	.LASF267
	.sleb128 117
	.uleb128 0xd
	.long	.LASF268
	.sleb128 118
	.uleb128 0xd
	.long	.LASF269
	.sleb128 119
	.uleb128 0xd
	.long	.LASF270
	.sleb128 120
	.uleb128 0xd
	.long	.LASF271
	.sleb128 121
	.uleb128 0xd
	.long	.LASF272
	.sleb128 122
	.uleb128 0xd
	.long	.LASF273
	.sleb128 123
	.uleb128 0xd
	.long	.LASF274
	.sleb128 124
	.uleb128 0xd
	.long	.LASF275
	.sleb128 125
	.uleb128 0x17
	.string	"FIX"
	.sleb128 126
	.uleb128 0xd
	.long	.LASF276
	.sleb128 127
	.uleb128 0xd
	.long	.LASF277
	.sleb128 128
	.uleb128 0x17
	.string	"ABS"
	.sleb128 129
	.uleb128 0xd
	.long	.LASF278
	.sleb128 130
	.uleb128 0x17
	.string	"FFS"
	.sleb128 131
	.uleb128 0xd
	.long	.LASF279
	.sleb128 132
	.uleb128 0xd
	.long	.LASF280
	.sleb128 133
	.uleb128 0xd
	.long	.LASF281
	.sleb128 134
	.uleb128 0xd
	.long	.LASF282
	.sleb128 135
	.uleb128 0xd
	.long	.LASF283
	.sleb128 136
	.uleb128 0xd
	.long	.LASF284
	.sleb128 137
	.uleb128 0xd
	.long	.LASF285
	.sleb128 138
	.uleb128 0xd
	.long	.LASF286
	.sleb128 139
	.uleb128 0xd
	.long	.LASF287
	.sleb128 140
	.uleb128 0xd
	.long	.LASF288
	.sleb128 141
	.uleb128 0xd
	.long	.LASF289
	.sleb128 142
	.uleb128 0xd
	.long	.LASF290
	.sleb128 143
	.uleb128 0xd
	.long	.LASF291
	.sleb128 144
	.uleb128 0xd
	.long	.LASF292
	.sleb128 145
	.uleb128 0xd
	.long	.LASF293
	.sleb128 146
	.uleb128 0xd
	.long	.LASF294
	.sleb128 147
	.uleb128 0xd
	.long	.LASF295
	.sleb128 148
	.uleb128 0xd
	.long	.LASF296
	.sleb128 149
	.uleb128 0xd
	.long	.LASF297
	.sleb128 150
	.uleb128 0xd
	.long	.LASF298
	.sleb128 151
	.uleb128 0x17
	.string	"PHI"
	.sleb128 152
	.uleb128 0xd
	.long	.LASF299
	.sleb128 153
	.byte	0
	.uleb128 0x18
	.byte	0x4
	.byte	0x2
	.byte	0x44
	.long	0xb27
	.uleb128 0x5
	.long	.LASF300
	.byte	0x2
	.byte	0x47
	.long	0x266
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.long	.LASF301
	.byte	0x2
	.byte	0x49
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x5
	.long	.LASF302
	.byte	0x2
	.byte	0x4a
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x5
	.long	.LASF303
	.byte	0x2
	.byte	0x4c
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x5
	.long	.LASF304
	.byte	0x2
	.byte	0x4e
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.long	.LASF305
	.byte	0x2
	.byte	0x50
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x5
	.long	.LASF306
	.byte	0x2
	.byte	0x53
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x5
	.long	.LASF307
	.byte	0x2
	.byte	0x55
	.long	0x266
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0
	.byte	0
	.uleb128 0x7
	.long	.LASF308
	.byte	0x2
	.byte	0x56
	.long	0xaa6
	.uleb128 0x18
	.byte	0x28
	.byte	0x2
	.byte	0x5c
	.long	0xb77
	.uleb128 0x8
	.long	.LASF309
	.byte	0x2
	.byte	0x5e
	.long	0x26f
	.byte	0
	.uleb128 0x8
	.long	.LASF310
	.byte	0x2
	.byte	0x5f
	.long	0x123
	.byte	0x8
	.uleb128 0x8
	.long	.LASF311
	.byte	0x2
	.byte	0x60
	.long	0x2d
	.byte	0x10
	.uleb128 0x8
	.long	.LASF312
	.byte	0x2
	.byte	0x61
	.long	0x2d
	.byte	0x18
	.uleb128 0x8
	.long	.LASF313
	.byte	0x2
	.byte	0x62
	.long	0x266
	.byte	0x20
	.byte	0
	.uleb128 0x7
	.long	.LASF314
	.byte	0x2
	.byte	0x63
	.long	0xb32
	.uleb128 0x19
	.long	.LASF430
	.byte	0x8
	.byte	0x2
	.byte	0x67
	.long	0xc1d
	.uleb128 0x1a
	.long	.LASF315
	.byte	0x2
	.byte	0x69
	.long	0x26f
	.uleb128 0x1a
	.long	.LASF316
	.byte	0x2
	.byte	0x6a
	.long	0x139
	.uleb128 0x1a
	.long	.LASF317
	.byte	0x2
	.byte	0x6b
	.long	0x266
	.uleb128 0x1a
	.long	.LASF318
	.byte	0x2
	.byte	0x6c
	.long	0x4cd
	.uleb128 0x1b
	.string	"rtx"
	.byte	0x2
	.byte	0x6d
	.long	0x2d
	.uleb128 0x1a
	.long	.LASF10
	.byte	0x2
	.byte	0x6e
	.long	0xed
	.uleb128 0x1a
	.long	.LASF319
	.byte	0x2
	.byte	0x6f
	.long	0x4ec
	.uleb128 0x1a
	.long	.LASF320
	.byte	0x2
	.byte	0x70
	.long	0xb27
	.uleb128 0x1a
	.long	.LASF321
	.byte	0x2
	.byte	0x71
	.long	0xc22
	.uleb128 0x1a
	.long	.LASF322
	.byte	0x2
	.byte	0x72
	.long	0xc59
	.uleb128 0x1a
	.long	.LASF323
	.byte	0x2
	.byte	0x73
	.long	0x123
	.uleb128 0x1b
	.string	"bb"
	.byte	0x2
	.byte	0x74
	.long	0xd2c
	.uleb128 0x1a
	.long	.LASF324
	.byte	0x2
	.byte	0x75
	.long	0xd32
	.byte	0
	.uleb128 0x1c
	.long	.LASF439
	.uleb128 0x3
	.byte	0x8
	.long	0xc1d
	.uleb128 0x4
	.long	.LASF325
	.byte	0x18
	.byte	0xa
	.byte	0x34
	.long	0xc59
	.uleb128 0x8
	.long	.LASF326
	.byte	0xa
	.byte	0x35
	.long	0x1a5f
	.byte	0
	.uleb128 0x8
	.long	.LASF327
	.byte	0xa
	.byte	0x36
	.long	0x1a5f
	.byte	0x8
	.uleb128 0x8
	.long	.LASF328
	.byte	0xa
	.byte	0x37
	.long	0x266
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0xc28
	.uleb128 0x4
	.long	.LASF329
	.byte	0x70
	.byte	0xb
	.byte	0xae
	.long	0xd2c
	.uleb128 0x8
	.long	.LASF330
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
	.long	.LASF331
	.byte	0xb
	.byte	0xb3
	.long	0x123
	.byte	0x10
	.uleb128 0x8
	.long	.LASF332
	.byte	0xb
	.byte	0xb4
	.long	0x123
	.byte	0x18
	.uleb128 0x8
	.long	.LASF333
	.byte	0xb
	.byte	0xb7
	.long	0x1b05
	.byte	0x20
	.uleb128 0x8
	.long	.LASF334
	.byte	0xb
	.byte	0xb7
	.long	0x1b05
	.byte	0x28
	.uleb128 0x8
	.long	.LASF335
	.byte	0xb
	.byte	0xbc
	.long	0x1a70
	.byte	0x30
	.uleb128 0x8
	.long	.LASF336
	.byte	0xb
	.byte	0xc0
	.long	0x1a70
	.byte	0x38
	.uleb128 0x8
	.long	.LASF337
	.byte	0xb
	.byte	0xc6
	.long	0x1a70
	.byte	0x40
	.uleb128 0x8
	.long	.LASF338
	.byte	0xb
	.byte	0xc8
	.long	0x1a70
	.byte	0x48
	.uleb128 0x6
	.string	"aux"
	.byte	0xb
	.byte	0xcb
	.long	0x26d
	.byte	0x50
	.uleb128 0x8
	.long	.LASF339
	.byte	0xb
	.byte	0xce
	.long	0x139
	.byte	0x58
	.uleb128 0x8
	.long	.LASF340
	.byte	0xb
	.byte	0xd1
	.long	0x139
	.byte	0x5c
	.uleb128 0x8
	.long	.LASF341
	.byte	0xb
	.byte	0xd4
	.long	0x1a7b
	.byte	0x60
	.uleb128 0x8
	.long	.LASF342
	.byte	0xb
	.byte	0xd7
	.long	0x139
	.byte	0x68
	.uleb128 0x8
	.long	.LASF343
	.byte	0xb
	.byte	0xda
	.long	0x139
	.byte	0x6c
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0xc5f
	.uleb128 0x3
	.byte	0x8
	.long	0xb77
	.uleb128 0x7
	.long	.LASF344
	.byte	0x2
	.byte	0x76
	.long	0xb82
	.uleb128 0x12
	.long	0xd38
	.long	0xd53
	.uleb128 0x13
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	0x2d
	.long	0xd63
	.uleb128 0x13
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0xc
	.long	.LASF345
	.byte	0x4
	.byte	0x2
	.value	0x1c3
	.long	0xe25
	.uleb128 0xd
	.long	.LASF346
	.sleb128 1
	.uleb128 0xd
	.long	.LASF347
	.sleb128 2
	.uleb128 0xd
	.long	.LASF348
	.sleb128 3
	.uleb128 0xd
	.long	.LASF349
	.sleb128 4
	.uleb128 0xd
	.long	.LASF350
	.sleb128 5
	.uleb128 0xd
	.long	.LASF351
	.sleb128 6
	.uleb128 0xd
	.long	.LASF352
	.sleb128 7
	.uleb128 0xd
	.long	.LASF353
	.sleb128 8
	.uleb128 0xd
	.long	.LASF354
	.sleb128 9
	.uleb128 0xd
	.long	.LASF355
	.sleb128 10
	.uleb128 0xd
	.long	.LASF356
	.sleb128 11
	.uleb128 0xd
	.long	.LASF357
	.sleb128 12
	.uleb128 0xd
	.long	.LASF358
	.sleb128 13
	.uleb128 0xd
	.long	.LASF359
	.sleb128 14
	.uleb128 0xd
	.long	.LASF360
	.sleb128 15
	.uleb128 0xd
	.long	.LASF361
	.sleb128 16
	.uleb128 0xd
	.long	.LASF362
	.sleb128 17
	.uleb128 0xd
	.long	.LASF363
	.sleb128 18
	.uleb128 0xd
	.long	.LASF364
	.sleb128 19
	.uleb128 0xd
	.long	.LASF365
	.sleb128 20
	.uleb128 0xd
	.long	.LASF366
	.sleb128 21
	.uleb128 0xd
	.long	.LASF367
	.sleb128 22
	.uleb128 0xd
	.long	.LASF368
	.sleb128 23
	.uleb128 0xd
	.long	.LASF369
	.sleb128 24
	.uleb128 0xd
	.long	.LASF370
	.sleb128 25
	.uleb128 0xd
	.long	.LASF371
	.sleb128 26
	.uleb128 0xd
	.long	.LASF372
	.sleb128 27
	.uleb128 0xd
	.long	.LASF373
	.sleb128 28
	.uleb128 0xd
	.long	.LASF374
	.sleb128 29
	.uleb128 0xd
	.long	.LASF375
	.sleb128 30
	.byte	0
	.uleb128 0xc
	.long	.LASF376
	.byte	0x4
	.byte	0x2
	.value	0x297
	.long	0xed4
	.uleb128 0xd
	.long	.LASF377
	.sleb128 -100
	.uleb128 0xd
	.long	.LASF378
	.sleb128 -99
	.uleb128 0xd
	.long	.LASF379
	.sleb128 -98
	.uleb128 0xd
	.long	.LASF380
	.sleb128 -97
	.uleb128 0xd
	.long	.LASF381
	.sleb128 -96
	.uleb128 0xd
	.long	.LASF382
	.sleb128 -95
	.uleb128 0xd
	.long	.LASF383
	.sleb128 -94
	.uleb128 0xd
	.long	.LASF384
	.sleb128 -93
	.uleb128 0xd
	.long	.LASF385
	.sleb128 -92
	.uleb128 0xd
	.long	.LASF386
	.sleb128 -91
	.uleb128 0xd
	.long	.LASF387
	.sleb128 -90
	.uleb128 0xd
	.long	.LASF388
	.sleb128 -89
	.uleb128 0xd
	.long	.LASF389
	.sleb128 -88
	.uleb128 0xd
	.long	.LASF390
	.sleb128 -87
	.uleb128 0xd
	.long	.LASF391
	.sleb128 -86
	.uleb128 0xd
	.long	.LASF392
	.sleb128 -85
	.uleb128 0xd
	.long	.LASF393
	.sleb128 -84
	.uleb128 0xd
	.long	.LASF394
	.sleb128 -83
	.uleb128 0xd
	.long	.LASF395
	.sleb128 -82
	.uleb128 0xd
	.long	.LASF396
	.sleb128 -81
	.uleb128 0xd
	.long	.LASF397
	.sleb128 -80
	.uleb128 0xd
	.long	.LASF398
	.sleb128 -79
	.uleb128 0xd
	.long	.LASF399
	.sleb128 -78
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x2d
	.uleb128 0xc
	.long	.LASF400
	.byte	0x4
	.byte	0x2
	.value	0x630
	.long	0xf30
	.uleb128 0xd
	.long	.LASF401
	.sleb128 0
	.uleb128 0xd
	.long	.LASF402
	.sleb128 1
	.uleb128 0xd
	.long	.LASF403
	.sleb128 2
	.uleb128 0xd
	.long	.LASF404
	.sleb128 3
	.uleb128 0xd
	.long	.LASF405
	.sleb128 4
	.uleb128 0xd
	.long	.LASF406
	.sleb128 5
	.uleb128 0xd
	.long	.LASF407
	.sleb128 6
	.uleb128 0xd
	.long	.LASF408
	.sleb128 7
	.uleb128 0xd
	.long	.LASF409
	.sleb128 8
	.uleb128 0xd
	.long	.LASF410
	.sleb128 9
	.uleb128 0xd
	.long	.LASF411
	.sleb128 10
	.uleb128 0xd
	.long	.LASF412
	.sleb128 11
	.byte	0
	.uleb128 0x16
	.long	.LASF413
	.byte	0x4
	.byte	0xc
	.byte	0x1c
	.long	0xf4f
	.uleb128 0xd
	.long	.LASF414
	.sleb128 0
	.uleb128 0xd
	.long	.LASF415
	.sleb128 1
	.uleb128 0xd
	.long	.LASF416
	.sleb128 2
	.byte	0
	.uleb128 0x1d
	.long	.LASF417
	.value	0x3f0
	.byte	0xc
	.byte	0x95
	.long	0xfea
	.uleb128 0x8
	.long	.LASF418
	.byte	0xc
	.byte	0x9e
	.long	0xfea
	.byte	0
	.uleb128 0x8
	.long	.LASF419
	.byte	0xc
	.byte	0xa1
	.long	0xffa
	.byte	0xf0
	.uleb128 0x1e
	.long	.LASF420
	.byte	0xc
	.byte	0xa4
	.long	0x100a
	.value	0x1e0
	.uleb128 0x1e
	.long	.LASF421
	.byte	0xc
	.byte	0xa7
	.long	0x101a
	.value	0x2d0
	.uleb128 0x1e
	.long	.LASF422
	.byte	0xc
	.byte	0xaa
	.long	0x102a
	.value	0x348
	.uleb128 0x1e
	.long	.LASF423
	.byte	0xc
	.byte	0xae
	.long	0x103a
	.value	0x3c0
	.uleb128 0x1e
	.long	.LASF424
	.byte	0xc
	.byte	0xb2
	.long	0x453
	.value	0x3e0
	.uleb128 0x1e
	.long	.LASF425
	.byte	0xc
	.byte	0xbf
	.long	0x2c0
	.value	0x3e4
	.uleb128 0x1e
	.long	.LASF426
	.byte	0xc
	.byte	0xc2
	.long	0x2c0
	.value	0x3e5
	.uleb128 0x1e
	.long	.LASF427
	.byte	0xc
	.byte	0xc5
	.long	0x2c0
	.value	0x3e6
	.uleb128 0x1e
	.long	.LASF428
	.byte	0xc
	.byte	0xc8
	.long	0x2d
	.value	0x3e8
	.byte	0
	.uleb128 0x12
	.long	0x2d
	.long	0xffa
	.uleb128 0x13
	.long	0x140
	.byte	0x1d
	.byte	0
	.uleb128 0x12
	.long	0xed4
	.long	0x100a
	.uleb128 0x13
	.long	0x140
	.byte	0x1d
	.byte	0
	.uleb128 0x12
	.long	0x4cd
	.long	0x101a
	.uleb128 0x13
	.long	0x140
	.byte	0x1d
	.byte	0
	.uleb128 0x12
	.long	0x4ec
	.long	0x102a
	.uleb128 0x13
	.long	0x140
	.byte	0x1d
	.byte	0
	.uleb128 0x12
	.long	0xf30
	.long	0x103a
	.uleb128 0x13
	.long	0x140
	.byte	0x1d
	.byte	0
	.uleb128 0x12
	.long	0xed4
	.long	0x104a
	.uleb128 0x13
	.long	0x140
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.long	.LASF429
	.byte	0x10
	.byte	0xd
	.byte	0x24
	.long	0x106f
	.uleb128 0x6
	.string	"rtx"
	.byte	0xd
	.byte	0x32
	.long	0x38
	.byte	0
	.uleb128 0x6
	.string	"age"
	.byte	0xd
	.byte	0x36
	.long	0x266
	.byte	0x8
	.byte	0
	.uleb128 0x19
	.long	.LASF431
	.byte	0x10
	.byte	0xd
	.byte	0x3a
	.long	0x1154
	.uleb128 0x1b
	.string	"c"
	.byte	0xd
	.byte	0x3b
	.long	0x4a7
	.uleb128 0x1b
	.string	"uc"
	.byte	0xd
	.byte	0x3c
	.long	0x1154
	.uleb128 0x1b
	.string	"s"
	.byte	0xd
	.byte	0x3d
	.long	0x1164
	.uleb128 0x1b
	.string	"us"
	.byte	0xd
	.byte	0x3e
	.long	0x1174
	.uleb128 0x1b
	.string	"i"
	.byte	0xd
	.byte	0x3f
	.long	0x1184
	.uleb128 0x1b
	.string	"u"
	.byte	0xd
	.byte	0x40
	.long	0x1194
	.uleb128 0x1b
	.string	"l"
	.byte	0xd
	.byte	0x41
	.long	0x11a4
	.uleb128 0x1b
	.string	"ul"
	.byte	0xd
	.byte	0x42
	.long	0x11b4
	.uleb128 0x1a
	.long	.LASF432
	.byte	0xd
	.byte	0x43
	.long	0x11a4
	.uleb128 0x1a
	.long	.LASF433
	.byte	0xd
	.byte	0x44
	.long	0x11b4
	.uleb128 0x1a
	.long	.LASF434
	.byte	0xd
	.byte	0x45
	.long	0x11c4
	.uleb128 0x1a
	.long	.LASF435
	.byte	0xd
	.byte	0x46
	.long	0x11d4
	.uleb128 0x1b
	.string	"rtx"
	.byte	0xd
	.byte	0x47
	.long	0x11e4
	.uleb128 0x1a
	.long	.LASF10
	.byte	0xd
	.byte	0x48
	.long	0x11f4
	.uleb128 0x1a
	.long	.LASF15
	.byte	0xd
	.byte	0x49
	.long	0x1204
	.uleb128 0x1a
	.long	.LASF436
	.byte	0xd
	.byte	0x4a
	.long	0x1214
	.uleb128 0x1a
	.long	.LASF437
	.byte	0xd
	.byte	0x4b
	.long	0x1224
	.uleb128 0x1b
	.string	"reg"
	.byte	0xd
	.byte	0x4c
	.long	0x123f
	.uleb128 0x1a
	.long	.LASF438
	.byte	0xd
	.byte	0x4d
	.long	0x12e6
	.uleb128 0x1b
	.string	"bb"
	.byte	0xd
	.byte	0x4e
	.long	0x12f6
	.uleb128 0x1b
	.string	"te"
	.byte	0xd
	.byte	0x4f
	.long	0x1306
	.byte	0
	.uleb128 0x12
	.long	0x288
	.long	0x1164
	.uleb128 0x13
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	0x29d
	.long	0x1174
	.uleb128 0x13
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	0x28f
	.long	0x1184
	.uleb128 0x13
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	0x139
	.long	0x1194
	.uleb128 0x13
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	0x266
	.long	0x11a4
	.uleb128 0x13
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	0x26f
	.long	0x11b4
	.uleb128 0x13
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	0x281
	.long	0x11c4
	.uleb128 0x13
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	0x26d
	.long	0x11d4
	.uleb128 0x13
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	0x2ba
	.long	0x11e4
	.uleb128 0x13
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	0x38
	.long	0x11f4
	.uleb128 0x13
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	0xf8
	.long	0x1204
	.uleb128 0x13
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	0x12e
	.long	0x1214
	.uleb128 0x13
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	0xc59
	.long	0x1224
	.uleb128 0x13
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	0x1234
	.long	0x1234
	.uleb128 0x13
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x123a
	.uleb128 0x1c
	.long	.LASF440
	.uleb128 0x12
	.long	0x124f
	.long	0x124f
	.uleb128 0x13
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1255
	.uleb128 0x4
	.long	.LASF441
	.byte	0x2c
	.byte	0xe
	.byte	0x2d
	.long	0x12e6
	.uleb128 0x8
	.long	.LASF442
	.byte	0xe
	.byte	0x2f
	.long	0x139
	.byte	0
	.uleb128 0x8
	.long	.LASF443
	.byte	0xe
	.byte	0x30
	.long	0x139
	.byte	0x4
	.uleb128 0x8
	.long	.LASF444
	.byte	0xe
	.byte	0x31
	.long	0x139
	.byte	0x8
	.uleb128 0x8
	.long	.LASF445
	.byte	0xe
	.byte	0x34
	.long	0x139
	.byte	0xc
	.uleb128 0x8
	.long	.LASF446
	.byte	0xe
	.byte	0x37
	.long	0x139
	.byte	0x10
	.uleb128 0x8
	.long	.LASF447
	.byte	0xe
	.byte	0x38
	.long	0x139
	.byte	0x14
	.uleb128 0x8
	.long	.LASF448
	.byte	0xe
	.byte	0x39
	.long	0x139
	.byte	0x18
	.uleb128 0x8
	.long	.LASF449
	.byte	0xe
	.byte	0x3a
	.long	0x139
	.byte	0x1c
	.uleb128 0x8
	.long	.LASF450
	.byte	0xe
	.byte	0x3b
	.long	0x139
	.byte	0x20
	.uleb128 0x8
	.long	.LASF451
	.byte	0xe
	.byte	0x3c
	.long	0x139
	.byte	0x24
	.uleb128 0x8
	.long	.LASF452
	.byte	0xe
	.byte	0x3d
	.long	0x2c0
	.byte	0x28
	.byte	0
	.uleb128 0x12
	.long	0x104a
	.long	0x12f6
	.uleb128 0x13
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	0xd2c
	.long	0x1306
	.uleb128 0x13
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	0x1316
	.long	0x1316
	.uleb128 0x13
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x131c
	.uleb128 0x1c
	.long	.LASF453
	.uleb128 0x7
	.long	.LASF454
	.byte	0xd
	.byte	0x50
	.long	0x106f
	.uleb128 0x4
	.long	.LASF455
	.byte	0x30
	.byte	0xd
	.byte	0x53
	.long	0x1375
	.uleb128 0x8
	.long	.LASF456
	.byte	0xd
	.byte	0x54
	.long	0x276
	.byte	0
	.uleb128 0x8
	.long	.LASF457
	.byte	0xd
	.byte	0x55
	.long	0x276
	.byte	0x8
	.uleb128 0x8
	.long	.LASF458
	.byte	0xd
	.byte	0x57
	.long	0x276
	.byte	0x10
	.uleb128 0x8
	.long	.LASF459
	.byte	0xd
	.byte	0x58
	.long	0x4cd
	.byte	0x18
	.uleb128 0x8
	.long	.LASF460
	.byte	0xd
	.byte	0x59
	.long	0x1321
	.byte	0x20
	.byte	0
	.uleb128 0x7
	.long	.LASF461
	.byte	0xd
	.byte	0x5a
	.long	0x1380
	.uleb128 0x3
	.byte	0x8
	.long	0x132c
	.uleb128 0x4
	.long	.LASF462
	.byte	0x18
	.byte	0xf
	.byte	0x16
	.long	0x13c3
	.uleb128 0x8
	.long	.LASF463
	.byte	0xf
	.byte	0x18
	.long	0x2d
	.byte	0
	.uleb128 0x8
	.long	.LASF464
	.byte	0xf
	.byte	0x19
	.long	0x4ec
	.byte	0x8
	.uleb128 0x8
	.long	.LASF465
	.byte	0xf
	.byte	0x1a
	.long	0x139
	.byte	0xc
	.uleb128 0x8
	.long	.LASF466
	.byte	0xf
	.byte	0x1b
	.long	0x13c3
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1386
	.uleb128 0x4
	.long	.LASF467
	.byte	0x20
	.byte	0xf
	.byte	0x23
	.long	0x1406
	.uleb128 0x8
	.long	.LASF326
	.byte	0xf
	.byte	0x26
	.long	0x2d
	.byte	0
	.uleb128 0x8
	.long	.LASF468
	.byte	0xf
	.byte	0x26
	.long	0x2d
	.byte	0x8
	.uleb128 0x8
	.long	.LASF469
	.byte	0xf
	.byte	0x27
	.long	0x123
	.byte	0x10
	.uleb128 0x8
	.long	.LASF466
	.byte	0xf
	.byte	0x28
	.long	0x1406
	.byte	0x18
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x13c9
	.uleb128 0x4
	.long	.LASF470
	.byte	0x58
	.byte	0xf
	.byte	0x35
	.long	0x14b5
	.uleb128 0x8
	.long	.LASF471
	.byte	0xf
	.byte	0x39
	.long	0x139
	.byte	0
	.uleb128 0x8
	.long	.LASF472
	.byte	0xf
	.byte	0x3c
	.long	0x139
	.byte	0x4
	.uleb128 0x8
	.long	.LASF473
	.byte	0xf
	.byte	0x43
	.long	0x2d
	.byte	0x8
	.uleb128 0x8
	.long	.LASF474
	.byte	0xf
	.byte	0x44
	.long	0x2d
	.byte	0x10
	.uleb128 0x8
	.long	.LASF469
	.byte	0xf
	.byte	0x49
	.long	0x123
	.byte	0x18
	.uleb128 0x8
	.long	.LASF467
	.byte	0xf
	.byte	0x4f
	.long	0x1406
	.byte	0x20
	.uleb128 0x8
	.long	.LASF475
	.byte	0xf
	.byte	0x53
	.long	0x139
	.byte	0x28
	.uleb128 0x8
	.long	.LASF476
	.byte	0xf
	.byte	0x57
	.long	0x139
	.byte	0x2c
	.uleb128 0x8
	.long	.LASF477
	.byte	0xf
	.byte	0x58
	.long	0x4cd
	.byte	0x30
	.uleb128 0x8
	.long	.LASF478
	.byte	0xf
	.byte	0x5e
	.long	0x139
	.byte	0x38
	.uleb128 0x8
	.long	.LASF479
	.byte	0xf
	.byte	0x63
	.long	0x14b5
	.byte	0x40
	.uleb128 0x8
	.long	.LASF480
	.byte	0xf
	.byte	0x67
	.long	0x14bb
	.byte	0x48
	.uleb128 0x8
	.long	.LASF481
	.byte	0xf
	.byte	0x6b
	.long	0xed4
	.byte	0x50
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x288
	.uleb128 0x3
	.byte	0x8
	.long	0x123
	.uleb128 0x4
	.long	.LASF482
	.byte	0x30
	.byte	0xf
	.byte	0x77
	.long	0x1522
	.uleb128 0x8
	.long	.LASF483
	.byte	0xf
	.byte	0x7b
	.long	0x139
	.byte	0
	.uleb128 0x8
	.long	.LASF484
	.byte	0xf
	.byte	0x8c
	.long	0x139
	.byte	0x4
	.uleb128 0x8
	.long	.LASF485
	.byte	0xf
	.byte	0x92
	.long	0x139
	.byte	0x8
	.uleb128 0x8
	.long	.LASF486
	.byte	0xf
	.byte	0x97
	.long	0x2d
	.byte	0x10
	.uleb128 0x8
	.long	.LASF487
	.byte	0xf
	.byte	0x9a
	.long	0x2d
	.byte	0x18
	.uleb128 0x8
	.long	.LASF488
	.byte	0xf
	.byte	0x9d
	.long	0x2d
	.byte	0x20
	.uleb128 0x8
	.long	.LASF489
	.byte	0xf
	.byte	0xa0
	.long	0x2d
	.byte	0x28
	.byte	0
	.uleb128 0x1d
	.long	.LASF490
	.value	0x1b0
	.byte	0xf
	.byte	0xae
	.long	0x19a2
	.uleb128 0x6
	.string	"eh"
	.byte	0xf
	.byte	0xb0
	.long	0x19a7
	.byte	0
	.uleb128 0x8
	.long	.LASF491
	.byte	0xf
	.byte	0xb1
	.long	0x19b2
	.byte	0x8
	.uleb128 0x8
	.long	.LASF310
	.byte	0xf
	.byte	0xb2
	.long	0x19b8
	.byte	0x10
	.uleb128 0x8
	.long	.LASF492
	.byte	0xf
	.byte	0xb3
	.long	0x19be
	.byte	0x18
	.uleb128 0x8
	.long	.LASF493
	.byte	0xf
	.byte	0xb4
	.long	0x19c9
	.byte	0x20
	.uleb128 0x8
	.long	.LASF459
	.byte	0xf
	.byte	0xb9
	.long	0x4cd
	.byte	0x28
	.uleb128 0x8
	.long	.LASF494
	.byte	0xf
	.byte	0xbc
	.long	0x123
	.byte	0x30
	.uleb128 0x8
	.long	.LASF495
	.byte	0xf
	.byte	0xbf
	.long	0x19cf
	.byte	0x38
	.uleb128 0x8
	.long	.LASF496
	.byte	0xf
	.byte	0xc4
	.long	0x139
	.byte	0x40
	.uleb128 0x8
	.long	.LASF497
	.byte	0xf
	.byte	0xc9
	.long	0x139
	.byte	0x44
	.uleb128 0x8
	.long	.LASF498
	.byte	0xf
	.byte	0xce
	.long	0x139
	.byte	0x48
	.uleb128 0x8
	.long	.LASF499
	.byte	0xf
	.byte	0xd2
	.long	0x139
	.byte	0x4c
	.uleb128 0x8
	.long	.LASF500
	.byte	0xf
	.byte	0xd6
	.long	0x2d
	.byte	0x50
	.uleb128 0x8
	.long	.LASF501
	.byte	0xf
	.byte	0xda
	.long	0x25a
	.byte	0x58
	.uleb128 0x8
	.long	.LASF502
	.byte	0xf
	.byte	0xe0
	.long	0x2d
	.byte	0x78
	.uleb128 0x8
	.long	.LASF503
	.byte	0xf
	.byte	0xe3
	.long	0x2d
	.byte	0x80
	.uleb128 0x8
	.long	.LASF504
	.byte	0xf
	.byte	0xe7
	.long	0x4cd
	.byte	0x88
	.uleb128 0x8
	.long	.LASF505
	.byte	0xf
	.byte	0xeb
	.long	0x19da
	.byte	0x90
	.uleb128 0x8
	.long	.LASF506
	.byte	0xf
	.byte	0xee
	.long	0x139
	.byte	0x98
	.uleb128 0x8
	.long	.LASF507
	.byte	0xf
	.byte	0xf3
	.long	0x123
	.byte	0xa0
	.uleb128 0x8
	.long	.LASF508
	.byte	0xf
	.byte	0xf9
	.long	0x2d
	.byte	0xa8
	.uleb128 0x8
	.long	.LASF509
	.byte	0xf
	.byte	0xfd
	.long	0x2d
	.byte	0xb0
	.uleb128 0xf
	.long	.LASF510
	.byte	0xf
	.value	0x102
	.long	0x2d
	.byte	0xb8
	.uleb128 0xf
	.long	.LASF511
	.byte	0xf
	.value	0x108
	.long	0x2d
	.byte	0xc0
	.uleb128 0xf
	.long	.LASF512
	.byte	0xf
	.value	0x10d
	.long	0x2d
	.byte	0xc8
	.uleb128 0xf
	.long	.LASF513
	.byte	0xf
	.value	0x111
	.long	0x2d
	.byte	0xd0
	.uleb128 0xf
	.long	.LASF514
	.byte	0xf
	.value	0x115
	.long	0x2d
	.byte	0xd8
	.uleb128 0xf
	.long	.LASF515
	.byte	0xf
	.value	0x118
	.long	0x123
	.byte	0xe0
	.uleb128 0xf
	.long	.LASF516
	.byte	0xf
	.value	0x11c
	.long	0x2d
	.byte	0xe8
	.uleb128 0xf
	.long	.LASF517
	.byte	0xf
	.value	0x11f
	.long	0x2d
	.byte	0xf0
	.uleb128 0xf
	.long	.LASF518
	.byte	0xf
	.value	0x125
	.long	0x2d
	.byte	0xf8
	.uleb128 0x1f
	.long	.LASF519
	.byte	0xf
	.value	0x12a
	.long	0x2d
	.value	0x100
	.uleb128 0x1f
	.long	.LASF520
	.byte	0xf
	.value	0x12f
	.long	0x26f
	.value	0x108
	.uleb128 0x1f
	.long	.LASF521
	.byte	0xf
	.value	0x134
	.long	0x123
	.value	0x110
	.uleb128 0x1f
	.long	.LASF522
	.byte	0xf
	.value	0x13d
	.long	0x123
	.value	0x118
	.uleb128 0x1f
	.long	.LASF523
	.byte	0xf
	.value	0x140
	.long	0x2d
	.value	0x120
	.uleb128 0x1f
	.long	.LASF524
	.byte	0xf
	.value	0x144
	.long	0x2d
	.value	0x128
	.uleb128 0x1f
	.long	.LASF525
	.byte	0xf
	.value	0x148
	.long	0x266
	.value	0x130
	.uleb128 0x1f
	.long	.LASF526
	.byte	0xf
	.value	0x14e
	.long	0xed4
	.value	0x138
	.uleb128 0x1f
	.long	.LASF527
	.byte	0xf
	.value	0x151
	.long	0x19e5
	.value	0x140
	.uleb128 0x1f
	.long	.LASF528
	.byte	0xf
	.value	0x154
	.long	0x139
	.value	0x148
	.uleb128 0x1f
	.long	.LASF529
	.byte	0xf
	.value	0x157
	.long	0x139
	.value	0x14c
	.uleb128 0x1f
	.long	.LASF530
	.byte	0xf
	.value	0x15d
	.long	0x139
	.value	0x150
	.uleb128 0x1f
	.long	.LASF531
	.byte	0xf
	.value	0x161
	.long	0x13c3
	.value	0x158
	.uleb128 0x1f
	.long	.LASF532
	.byte	0xf
	.value	0x164
	.long	0x139
	.value	0x160
	.uleb128 0x1f
	.long	.LASF533
	.byte	0xf
	.value	0x165
	.long	0x139
	.value	0x164
	.uleb128 0x1f
	.long	.LASF534
	.byte	0xf
	.value	0x167
	.long	0x26d
	.value	0x168
	.uleb128 0x1f
	.long	.LASF535
	.byte	0xf
	.value	0x168
	.long	0x123
	.value	0x170
	.uleb128 0x1f
	.long	.LASF536
	.byte	0xf
	.value	0x16b
	.long	0x2d
	.value	0x178
	.uleb128 0x1f
	.long	.LASF537
	.byte	0xf
	.value	0x16d
	.long	0x139
	.value	0x180
	.uleb128 0x1f
	.long	.LASF538
	.byte	0xf
	.value	0x170
	.long	0x139
	.value	0x184
	.uleb128 0x1f
	.long	.LASF539
	.byte	0xf
	.value	0x175
	.long	0x19f0
	.value	0x188
	.uleb128 0x1f
	.long	.LASF540
	.byte	0xf
	.value	0x177
	.long	0x139
	.value	0x190
	.uleb128 0x1f
	.long	.LASF541
	.byte	0xf
	.value	0x179
	.long	0x139
	.value	0x194
	.uleb128 0x1f
	.long	.LASF542
	.byte	0xf
	.value	0x17c
	.long	0x19fb
	.value	0x198
	.uleb128 0x1f
	.long	.LASF543
	.byte	0xf
	.value	0x182
	.long	0x2d
	.value	0x1a0
	.uleb128 0x20
	.long	.LASF544
	.byte	0xf
	.value	0x188
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.value	0x1a8
	.uleb128 0x20
	.long	.LASF545
	.byte	0xf
	.value	0x18c
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.value	0x1a8
	.uleb128 0x20
	.long	.LASF546
	.byte	0xf
	.value	0x18f
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.value	0x1a8
	.uleb128 0x20
	.long	.LASF547
	.byte	0xf
	.value	0x192
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.value	0x1a8
	.uleb128 0x20
	.long	.LASF548
	.byte	0xf
	.value	0x195
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.value	0x1a8
	.uleb128 0x20
	.long	.LASF549
	.byte	0xf
	.value	0x198
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.value	0x1a8
	.uleb128 0x20
	.long	.LASF550
	.byte	0xf
	.value	0x19c
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.value	0x1a8
	.uleb128 0x20
	.long	.LASF551
	.byte	0xf
	.value	0x19f
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.value	0x1a8
	.uleb128 0x20
	.long	.LASF552
	.byte	0xf
	.value	0x1a3
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.value	0x1a8
	.uleb128 0x20
	.long	.LASF553
	.byte	0xf
	.value	0x1a7
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.value	0x1a8
	.uleb128 0x20
	.long	.LASF554
	.byte	0xf
	.value	0x1aa
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.value	0x1a8
	.uleb128 0x20
	.long	.LASF555
	.byte	0xf
	.value	0x1ad
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.value	0x1a8
	.uleb128 0x20
	.long	.LASF556
	.byte	0xf
	.value	0x1b2
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.value	0x1a8
	.uleb128 0x20
	.long	.LASF557
	.byte	0xf
	.value	0x1b6
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.value	0x1a8
	.uleb128 0x20
	.long	.LASF558
	.byte	0xf
	.value	0x1b9
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.value	0x1a8
	.uleb128 0x20
	.long	.LASF559
	.byte	0xf
	.value	0x1bd
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.value	0x1a8
	.uleb128 0x20
	.long	.LASF560
	.byte	0xf
	.value	0x1c1
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.value	0x1a8
	.uleb128 0x20
	.long	.LASF561
	.byte	0xf
	.value	0x1c5
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.value	0x1a8
	.uleb128 0x20
	.long	.LASF562
	.byte	0xf
	.value	0x1cb
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.value	0x1a8
	.uleb128 0x20
	.long	.LASF563
	.byte	0xf
	.value	0x1d4
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.value	0x1a8
	.uleb128 0x20
	.long	.LASF564
	.byte	0xf
	.value	0x1d7
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.value	0x1a8
	.uleb128 0x20
	.long	.LASF565
	.byte	0xf
	.value	0x1da
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.value	0x1a8
	.uleb128 0x20
	.long	.LASF566
	.byte	0xf
	.value	0x1dd
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.value	0x1a8
	.uleb128 0x20
	.long	.LASF567
	.byte	0xf
	.value	0x1e0
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.value	0x1a8
	.byte	0
	.uleb128 0x1c
	.long	.LASF568
	.uleb128 0x3
	.byte	0x8
	.long	0x19a2
	.uleb128 0x1c
	.long	.LASF569
	.uleb128 0x3
	.byte	0x8
	.long	0x19ad
	.uleb128 0x3
	.byte	0x8
	.long	0x14c1
	.uleb128 0x3
	.byte	0x8
	.long	0x140c
	.uleb128 0x1c
	.long	.LASF570
	.uleb128 0x3
	.byte	0x8
	.long	0x19c4
	.uleb128 0x3
	.byte	0x8
	.long	0x1522
	.uleb128 0x1c
	.long	.LASF571
	.uleb128 0x3
	.byte	0x8
	.long	0x19d5
	.uleb128 0x1c
	.long	.LASF572
	.uleb128 0x3
	.byte	0x8
	.long	0x19e0
	.uleb128 0x1c
	.long	.LASF573
	.uleb128 0x3
	.byte	0x8
	.long	0x19eb
	.uleb128 0x1c
	.long	.LASF574
	.uleb128 0x3
	.byte	0x8
	.long	0x19f6
	.uleb128 0x4
	.long	.LASF575
	.byte	0x28
	.byte	0xa
	.byte	0x2b
	.long	0x1a3e
	.uleb128 0x8
	.long	.LASF466
	.byte	0xa
	.byte	0x2d
	.long	0x1a3e
	.byte	0
	.uleb128 0x8
	.long	.LASF576
	.byte	0xa
	.byte	0x2e
	.long	0x1a3e
	.byte	0x8
	.uleb128 0x8
	.long	.LASF328
	.byte	0xa
	.byte	0x2f
	.long	0x266
	.byte	0x10
	.uleb128 0x8
	.long	.LASF577
	.byte	0xa
	.byte	0x30
	.long	0x1a44
	.byte	0x18
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1a01
	.uleb128 0x12
	.long	0x281
	.long	0x1a54
	.uleb128 0x13
	.long	0x140
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.long	.LASF578
	.byte	0xa
	.byte	0x31
	.long	0x1a01
	.uleb128 0x3
	.byte	0x8
	.long	0x1a54
	.uleb128 0x7
	.long	.LASF436
	.byte	0xa
	.byte	0x39
	.long	0xc59
	.uleb128 0x7
	.long	.LASF579
	.byte	0xb
	.byte	0x21
	.long	0x1a65
	.uleb128 0x7
	.long	.LASF580
	.byte	0xb
	.byte	0x74
	.long	0x26f
	.uleb128 0x4
	.long	.LASF581
	.byte	0x40
	.byte	0xb
	.byte	0x77
	.long	0x1aff
	.uleb128 0x8
	.long	.LASF582
	.byte	0xb
	.byte	0x79
	.long	0x1aff
	.byte	0
	.uleb128 0x8
	.long	.LASF583
	.byte	0xb
	.byte	0x79
	.long	0x1aff
	.byte	0x8
	.uleb128 0x6
	.string	"src"
	.byte	0xb
	.byte	0x7c
	.long	0xd2c
	.byte	0x10
	.uleb128 0x8
	.long	.LASF584
	.byte	0xb
	.byte	0x7c
	.long	0xd2c
	.byte	0x18
	.uleb128 0x8
	.long	.LASF585
	.byte	0xb
	.byte	0x7f
	.long	0x2d
	.byte	0x20
	.uleb128 0x6
	.string	"aux"
	.byte	0xb
	.byte	0x82
	.long	0x26d
	.byte	0x28
	.uleb128 0x8
	.long	.LASF343
	.byte	0xb
	.byte	0x84
	.long	0x139
	.byte	0x30
	.uleb128 0x8
	.long	.LASF586
	.byte	0xb
	.byte	0x85
	.long	0x139
	.byte	0x34
	.uleb128 0x8
	.long	.LASF341
	.byte	0xb
	.byte	0x86
	.long	0x1a7b
	.byte	0x38
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1a86
	.uleb128 0x7
	.long	.LASF587
	.byte	0xb
	.byte	0x88
	.long	0x1aff
	.uleb128 0x7
	.long	.LASF451
	.byte	0xb
	.byte	0xdb
	.long	0xd2c
	.uleb128 0x21
	.byte	0x4
	.byte	0x1
	.byte	0x3f
	.long	0x1b36
	.uleb128 0xd
	.long	.LASF588
	.sleb128 0
	.uleb128 0xd
	.long	.LASF589
	.sleb128 1
	.uleb128 0xd
	.long	.LASF590
	.sleb128 2
	.byte	0
	.uleb128 0x1d
	.long	.LASF591
	.value	0x1e0
	.byte	0x1
	.byte	0x3d
	.long	0x1b75
	.uleb128 0x8
	.long	.LASF592
	.byte	0x1
	.byte	0x3e
	.long	0x1b75
	.byte	0
	.uleb128 0x6
	.string	"use"
	.byte	0x1
	.byte	0x3f
	.long	0x1b85
	.byte	0x78
	.uleb128 0x8
	.long	.LASF593
	.byte	0x1
	.byte	0x40
	.long	0x1b75
	.byte	0xf0
	.uleb128 0x1e
	.long	.LASF594
	.byte	0x1
	.byte	0x41
	.long	0x1b75
	.value	0x168
	.byte	0
	.uleb128 0x12
	.long	0x139
	.long	0x1b85
	.uleb128 0x13
	.long	0x140
	.byte	0x1d
	.byte	0
	.uleb128 0x12
	.long	0x1b1b
	.long	0x1b95
	.uleb128 0x13
	.long	0x140
	.byte	0x1d
	.byte	0
	.uleb128 0xe
	.long	.LASF595
	.byte	0x20
	.byte	0x1
	.value	0x847
	.long	0x1bd7
	.uleb128 0xf
	.long	.LASF596
	.byte	0x1
	.value	0x849
	.long	0x26f
	.byte	0
	.uleb128 0xf
	.long	.LASF428
	.byte	0x1
	.value	0x84a
	.long	0x2d
	.byte	0x8
	.uleb128 0x22
	.string	"mem"
	.byte	0x1
	.value	0x84a
	.long	0xed4
	.byte	0x10
	.uleb128 0xf
	.long	.LASF466
	.byte	0x1
	.value	0x84b
	.long	0x1bd7
	.byte	0x18
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1b95
	.uleb128 0xe
	.long	.LASF597
	.byte	0x10
	.byte	0x1
	.value	0x8e6
	.long	0x1c05
	.uleb128 0xf
	.long	.LASF428
	.byte	0x1
	.value	0x8e8
	.long	0x2d
	.byte	0
	.uleb128 0xf
	.long	.LASF598
	.byte	0x1
	.value	0x8e9
	.long	0x1bd7
	.byte	0x8
	.byte	0
	.uleb128 0x23
	.long	.LASF601
	.byte	0x1
	.byte	0x56
	.long	0x139
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x1c43
	.uleb128 0x24
	.long	.LASF599
	.byte	0x1
	.byte	0x57
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x24
	.long	.LASF600
	.byte	0x1
	.byte	0x57
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x23
	.long	.LASF602
	.byte	0x1
	.byte	0x65
	.long	0x139
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x1d16
	.uleb128 0x24
	.long	.LASF428
	.byte	0x1
	.byte	0x66
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x24
	.long	.LASF603
	.byte	0x1
	.byte	0x66
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x24
	.long	.LASF604
	.byte	0x1
	.byte	0x66
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x25
	.string	"reg"
	.byte	0x1
	.byte	0x66
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x24
	.long	.LASF605
	.byte	0x1
	.byte	0x67
	.long	0x26f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x25
	.string	"pre"
	.byte	0x1
	.byte	0x68
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x26
	.long	.LASF733
	.byte	0x1
	.byte	0x6a
	.long	0x6aa
	.uleb128 0x27
	.long	.LASF606
	.byte	0x1
	.byte	0x6c
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x28
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x29
	.string	"use"
	.byte	0x1
	.byte	0x71
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x28
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x27
	.long	.LASF312
	.byte	0x1
	.byte	0x74
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x23
	.long	.LASF607
	.byte	0x1
	.byte	0xa8
	.long	0x2d
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x1d66
	.uleb128 0x29
	.string	"tmp"
	.byte	0x1
	.byte	0xaa
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x28
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.uleb128 0x27
	.long	.LASF608
	.byte	0x1
	.byte	0xb4
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.byte	0
	.uleb128 0x2a
	.long	.LASF613
	.byte	0x1
	.byte	0xdd
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x1e45
	.uleb128 0x24
	.long	.LASF343
	.byte	0x1
	.byte	0xde
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x27
	.long	.LASF609
	.byte	0x1
	.byte	0xe0
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x27
	.long	.LASF610
	.byte	0x1
	.byte	0xe1
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x27
	.long	.LASF611
	.byte	0x1
	.byte	0xe2
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2b
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.long	0x1df0
	.uleb128 0x27
	.long	.LASF1
	.byte	0x1
	.byte	0xf0
	.long	0x4ec
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x27
	.long	.LASF428
	.byte	0x1
	.byte	0xf1
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x2c
	.long	.Ldebug_ranges0+0
	.uleb128 0x2d
	.long	.LASF428
	.byte	0x1
	.value	0x103
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2e
	.string	"end"
	.byte	0x1
	.value	0x103
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2d
	.long	.LASF612
	.byte	0x1
	.value	0x104
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x28
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.uleb128 0x2e
	.string	"i"
	.byte	0x1
	.value	0x10e
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2f
	.long	.LASF614
	.byte	0x1
	.value	0x140
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x1e8f
	.uleb128 0x30
	.string	"x"
	.byte	0x1
	.value	0x141
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x30
	.string	"pat"
	.byte	0x1
	.value	0x141
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x31
	.long	.LASF460
	.byte	0x1
	.value	0x142
	.long	0x26d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x32
	.long	.LASF615
	.byte	0x1
	.value	0x151
	.long	0x139
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x1ed0
	.uleb128 0x30
	.string	"reg"
	.byte	0x1
	.value	0x152
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2d
	.long	.LASF616
	.byte	0x1
	.value	0x154
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x33
	.long	.LASF617
	.byte	0x1
	.value	0x171
	.long	0x139
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x1f02
	.uleb128 0x31
	.long	.LASF428
	.byte	0x1
	.value	0x172
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x33
	.long	.LASF618
	.byte	0x1
	.value	0x193
	.long	0x139
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x200b
	.uleb128 0x31
	.long	.LASF428
	.byte	0x1
	.value	0x194
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x31
	.long	.LASF584
	.byte	0x1
	.value	0x195
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x30
	.string	"src"
	.byte	0x1
	.value	0x196
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2e
	.string	"p"
	.byte	0x1
	.value	0x198
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2e
	.string	"q"
	.byte	0x1
	.value	0x198
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2d
	.long	.LASF619
	.byte	0x1
	.value	0x199
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2d
	.long	.LASF620
	.byte	0x1
	.value	0x19a
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2d
	.long	.LASF621
	.byte	0x1
	.value	0x19b
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2d
	.long	.LASF622
	.byte	0x1
	.value	0x19c
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x28
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.uleb128 0x2d
	.long	.LASF623
	.byte	0x1
	.value	0x1bc
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2d
	.long	.LASF624
	.byte	0x1
	.value	0x1bd
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2d
	.long	.LASF625
	.byte	0x1
	.value	0x1be
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2d
	.long	.LASF626
	.byte	0x1
	.value	0x1bf
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2d
	.long	.LASF627
	.byte	0x1
	.value	0x1c0
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.byte	0
	.byte	0
	.uleb128 0x2f
	.long	.LASF628
	.byte	0x1
	.value	0x250
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x209f
	.uleb128 0x31
	.long	.LASF428
	.byte	0x1
	.value	0x251
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x31
	.long	.LASF584
	.byte	0x1
	.value	0x252
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x30
	.string	"src"
	.byte	0x1
	.value	0x253
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2e
	.string	"p"
	.byte	0x1
	.value	0x255
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2e
	.string	"q"
	.byte	0x1
	.value	0x255
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2e
	.string	"set"
	.byte	0x1
	.value	0x256
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2d
	.long	.LASF621
	.byte	0x1
	.value	0x257
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2d
	.long	.LASF622
	.byte	0x1
	.value	0x258
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x2f
	.long	.LASF629
	.byte	0x1
	.value	0x28d
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x2177
	.uleb128 0x31
	.long	.LASF428
	.byte	0x1
	.value	0x28e
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x31
	.long	.LASF584
	.byte	0x1
	.value	0x28f
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x30
	.string	"src"
	.byte	0x1
	.value	0x290
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2d
	.long	.LASF630
	.byte	0x1
	.value	0x292
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2d
	.long	.LASF631
	.byte	0x1
	.value	0x293
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2d
	.long	.LASF632
	.byte	0x1
	.value	0x294
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2e
	.string	"p"
	.byte	0x1
	.value	0x295
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2e
	.string	"set"
	.byte	0x1
	.value	0x295
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2d
	.long	.LASF633
	.byte	0x1
	.value	0x295
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2d
	.long	.LASF634
	.byte	0x1
	.value	0x296
	.long	0x4ec
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x28
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.uleb128 0x2d
	.long	.LASF619
	.byte	0x1
	.value	0x2da
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x2f
	.long	.LASF635
	.byte	0x1
	.value	0x2e5
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x22b1
	.uleb128 0x31
	.long	.LASF428
	.byte	0x1
	.value	0x2e6
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x30
	.string	"src"
	.byte	0x1
	.value	0x2e7
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x31
	.long	.LASF584
	.byte	0x1
	.value	0x2e8
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x31
	.long	.LASF636
	.byte	0x1
	.value	0x2e9
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x2e
	.string	"seq"
	.byte	0x1
	.value	0x2eb
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2d
	.long	.LASF637
	.byte	0x1
	.value	0x2ec
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2d
	.long	.LASF466
	.byte	0x1
	.value	0x2ed
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2e
	.string	"set"
	.byte	0x1
	.value	0x2ee
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2d
	.long	.LASF638
	.byte	0x1
	.value	0x2ef
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2d
	.long	.LASF639
	.byte	0x1
	.value	0x2f0
	.long	0xed4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2d
	.long	.LASF640
	.byte	0x1
	.value	0x2f1
	.long	0xed4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2d
	.long	.LASF616
	.byte	0x1
	.value	0x2f2
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2d
	.long	.LASF641
	.byte	0x1
	.value	0x2f3
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2e
	.string	"bb"
	.byte	0x1
	.value	0x2f4
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x2d
	.long	.LASF642
	.byte	0x1
	.value	0x2f5
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x2d
	.long	.LASF643
	.byte	0x1
	.value	0x2f6
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x28
	.quad	.LBB11
	.quad	.LBE11-.LBB11
	.uleb128 0x2d
	.long	.LASF644
	.byte	0x1
	.value	0x306
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.byte	0
	.uleb128 0x33
	.long	.LASF645
	.byte	0x1
	.value	0x35e
	.long	0x139
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x2351
	.uleb128 0x30
	.string	"reg"
	.byte	0x1
	.value	0x35f
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x31
	.long	.LASF428
	.byte	0x1
	.value	0x360
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x31
	.long	.LASF326
	.byte	0x1
	.value	0x361
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2e
	.string	"p"
	.byte	0x1
	.value	0x363
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.quad	.LBB12
	.quad	.LBE12-.LBB12
	.long	0x2331
	.uleb128 0x2e
	.string	"s"
	.byte	0x1
	.value	0x36b
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x28
	.quad	.LBB13
	.quad	.LBE13-.LBB13
	.uleb128 0x2e
	.string	"s"
	.byte	0x1
	.value	0x37b
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x33
	.long	.LASF646
	.byte	0x1
	.value	0x3a2
	.long	0x139
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0x244f
	.uleb128 0x31
	.long	.LASF428
	.byte	0x1
	.value	0x3a3
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x30
	.string	"dst"
	.byte	0x1
	.value	0x3a3
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x30
	.string	"src"
	.byte	0x1
	.value	0x3a3
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x31
	.long	.LASF311
	.byte	0x1
	.value	0x3a3
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x31
	.long	.LASF647
	.byte	0x1
	.value	0x3a4
	.long	0x244f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2e
	.string	"p"
	.byte	0x1
	.value	0x3a6
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2d
	.long	.LASF648
	.byte	0x1
	.value	0x3a6
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2d
	.long	.LASF649
	.byte	0x1
	.value	0x3a7
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2d
	.long	.LASF650
	.byte	0x1
	.value	0x3a7
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x28
	.quad	.LBB14
	.quad	.LBE14-.LBB14
	.uleb128 0x2d
	.long	.LASF606
	.byte	0x1
	.value	0x3b3
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.quad	.LBB15
	.quad	.LBE15-.LBB15
	.uleb128 0x2d
	.long	.LASF651
	.byte	0x1
	.value	0x3c7
	.long	0x26f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2e
	.string	"add"
	.byte	0x1
	.value	0x3c9
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x2c7
	.uleb128 0x34
	.long	.LASF689
	.byte	0x1
	.value	0x41e
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0x27c6
	.uleb128 0x30
	.string	"f"
	.byte	0x1
	.value	0x41f
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -744
	.uleb128 0x31
	.long	.LASF45
	.byte	0x1
	.value	0x420
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -748
	.uleb128 0x31
	.long	.LASF647
	.byte	0x1
	.value	0x421
	.long	0x244f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -760
	.uleb128 0x2d
	.long	.LASF636
	.byte	0x1
	.value	0x423
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -700
	.uleb128 0x2d
	.long	.LASF428
	.byte	0x1
	.value	0x424
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -664
	.uleb128 0x2d
	.long	.LASF591
	.byte	0x1
	.value	0x425
	.long	0x1b36
	.uleb128 0x3
	.byte	0x91
	.sleb128 -512
	.uleb128 0x2d
	.long	.LASF652
	.byte	0x1
	.value	0x426
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -732
	.uleb128 0x2e
	.string	"i"
	.byte	0x1
	.value	0x427
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -728
	.uleb128 0x2d
	.long	.LASF653
	.byte	0x1
	.value	0x428
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -656
	.uleb128 0x2d
	.long	.LASF654
	.byte	0x1
	.value	0x428
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -648
	.uleb128 0x35
	.long	.LASF734
	.byte	0x1
	.value	0x5ef
	.quad	.L217
	.uleb128 0x2b
	.quad	.LBB16
	.quad	.LBE16-.LBB16
	.long	0x260f
	.uleb128 0x2e
	.string	"set"
	.byte	0x1
	.value	0x449
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -600
	.uleb128 0x2d
	.long	.LASF655
	.byte	0x1
	.value	0x44a
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -724
	.uleb128 0x2d
	.long	.LASF656
	.byte	0x1
	.value	0x44a
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -696
	.uleb128 0x2b
	.quad	.LBB17
	.quad	.LBE17-.LBB17
	.long	0x258a
	.uleb128 0x2d
	.long	.LASF657
	.byte	0x1
	.value	0x468
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -720
	.byte	0
	.uleb128 0x28
	.quad	.LBB18
	.quad	.LBE18-.LBB18
	.uleb128 0x2e
	.string	"src"
	.byte	0x1
	.value	0x47e
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -592
	.uleb128 0x2e
	.string	"dst"
	.byte	0x1
	.value	0x47e
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -640
	.uleb128 0x2d
	.long	.LASF658
	.byte	0x1
	.value	0x47e
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -632
	.uleb128 0x2d
	.long	.LASF659
	.byte	0x1
	.value	0x47f
	.long	0x147
	.uleb128 0x3
	.byte	0x91
	.sleb128 -692
	.uleb128 0x2d
	.long	.LASF660
	.byte	0x1
	.value	0x47f
	.long	0x147
	.uleb128 0x3
	.byte	0x91
	.sleb128 -688
	.uleb128 0x28
	.quad	.LBB19
	.quad	.LBE19-.LBB19
	.uleb128 0x2d
	.long	.LASF661
	.byte	0x1
	.value	0x4ba
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -584
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2b
	.quad	.LBB20
	.quad	.LBE20-.LBB20
	.long	0x2783
	.uleb128 0x2d
	.long	.LASF655
	.byte	0x1
	.value	0x4da
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -716
	.uleb128 0x2d
	.long	.LASF656
	.byte	0x1
	.value	0x4da
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -684
	.uleb128 0x2d
	.long	.LASF662
	.byte	0x1
	.value	0x4db
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -712
	.uleb128 0x28
	.quad	.LBB21
	.quad	.LBE21-.LBB21
	.uleb128 0x2e
	.string	"set"
	.byte	0x1
	.value	0x4ea
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -552
	.uleb128 0x2e
	.string	"p"
	.byte	0x1
	.value	0x4ea
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -624
	.uleb128 0x2e
	.string	"src"
	.byte	0x1
	.value	0x4ea
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -568
	.uleb128 0x2e
	.string	"dst"
	.byte	0x1
	.value	0x4ea
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -576
	.uleb128 0x2d
	.long	.LASF663
	.byte	0x1
	.value	0x4eb
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -544
	.uleb128 0x2d
	.long	.LASF664
	.byte	0x1
	.value	0x4eb
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -528
	.uleb128 0x2d
	.long	.LASF650
	.byte	0x1
	.value	0x4ec
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -708
	.uleb128 0x2d
	.long	.LASF659
	.byte	0x1
	.value	0x4ed
	.long	0x147
	.uleb128 0x3
	.byte	0x91
	.sleb128 -680
	.uleb128 0x2d
	.long	.LASF660
	.byte	0x1
	.value	0x4ed
	.long	0x147
	.uleb128 0x3
	.byte	0x91
	.sleb128 -676
	.uleb128 0x2d
	.long	.LASF649
	.byte	0x1
	.value	0x4ee
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -704
	.uleb128 0x2b
	.quad	.LBB22
	.quad	.LBE22-.LBB22
	.long	0x2729
	.uleb128 0x2d
	.long	.LASF661
	.byte	0x1
	.value	0x508
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -560
	.byte	0
	.uleb128 0x2b
	.quad	.LBB23
	.quad	.LBE23-.LBB23
	.long	0x274f
	.uleb128 0x2d
	.long	.LASF606
	.byte	0x1
	.value	0x574
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -536
	.byte	0
	.uleb128 0x28
	.quad	.LBB24
	.quad	.LBE24-.LBB24
	.uleb128 0x2d
	.long	.LASF665
	.byte	0x1
	.value	0x5ad
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -672
	.uleb128 0x2d
	.long	.LASF666
	.byte	0x1
	.value	0x5ad
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -668
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x28
	.quad	.LBB25
	.quad	.LBE25-.LBB25
	.uleb128 0x2e
	.string	"end"
	.byte	0x1
	.value	0x5e6
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -520
	.uleb128 0x2e
	.string	"new"
	.byte	0x1
	.value	0x5e7
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -616
	.uleb128 0x2d
	.long	.LASF466
	.byte	0x1
	.value	0x5e8
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -608
	.byte	0
	.byte	0
	.uleb128 0x33
	.long	.LASF667
	.byte	0x1
	.value	0x5fc
	.long	0x139
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0x28b7
	.uleb128 0x31
	.long	.LASF428
	.byte	0x1
	.value	0x5fd
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x31
	.long	.LASF668
	.byte	0x1
	.value	0x5fe
	.long	0x28b7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x2d
	.long	.LASF669
	.byte	0x1
	.value	0x600
	.long	0x1b75
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x2d
	.long	.LASF655
	.byte	0x1
	.value	0x601
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x2d
	.long	.LASF670
	.byte	0x1
	.value	0x602
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -180
	.uleb128 0x28
	.quad	.LBB26
	.quad	.LBE26-.LBB26
	.uleb128 0x2e
	.string	"p"
	.byte	0x1
	.value	0x610
	.long	0x4cd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x2e
	.string	"c"
	.byte	0x1
	.value	0x611
	.long	0x2c0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -185
	.uleb128 0x2e
	.string	"i"
	.byte	0x1
	.value	0x612
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x28
	.quad	.LBB27
	.quad	.LBE27-.LBB27
	.uleb128 0x2e
	.string	"end"
	.byte	0x1
	.value	0x634
	.long	0x2ba
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x2d
	.long	.LASF671
	.byte	0x1
	.value	0x635
	.long	0x281
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x2d
	.long	.LASF591
	.byte	0x1
	.value	0x636
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -172
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1b36
	.uleb128 0x2f
	.long	.LASF672
	.byte	0x1
	.value	0x653
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0x295f
	.uleb128 0x30
	.string	"loc"
	.byte	0x1
	.value	0x654
	.long	0xed4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x31
	.long	.LASF673
	.byte	0x1
	.value	0x655
	.long	0x266
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x30
	.string	"src"
	.byte	0x1
	.value	0x656
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x31
	.long	.LASF428
	.byte	0x1
	.value	0x657
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2e
	.string	"x"
	.byte	0x1
	.value	0x659
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2d
	.long	.LASF0
	.byte	0x1
	.value	0x65a
	.long	0x6aa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2e
	.string	"fmt"
	.byte	0x1
	.value	0x65b
	.long	0x4cd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2e
	.string	"i"
	.byte	0x1
	.value	0x65c
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2e
	.string	"j"
	.byte	0x1
	.value	0x65c
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x33
	.long	.LASF674
	.byte	0x1
	.value	0x67e
	.long	0x139
	.quad	.LFB18
	.quad	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0x2bd3
	.uleb128 0x31
	.long	.LASF428
	.byte	0x1
	.value	0x680
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x30
	.string	"set"
	.byte	0x1
	.value	0x680
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x30
	.string	"src"
	.byte	0x1
	.value	0x680
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x31
	.long	.LASF658
	.byte	0x1
	.value	0x680
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x30
	.string	"dst"
	.byte	0x1
	.value	0x680
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x31
	.long	.LASF675
	.byte	0x1
	.value	0x681
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -220
	.uleb128 0x31
	.long	.LASF676
	.byte	0x1
	.value	0x681
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.long	.LASF677
	.byte	0x1
	.value	0x681
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x31
	.long	.LASF647
	.byte	0x1
	.value	0x682
	.long	0x244f
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x2e
	.string	"p"
	.byte	0x1
	.value	0x684
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x2d
	.long	.LASF678
	.byte	0x1
	.value	0x685
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2d
	.long	.LASF679
	.byte	0x1
	.value	0x685
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2d
	.long	.LASF680
	.byte	0x1
	.value	0x685
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2d
	.long	.LASF662
	.byte	0x1
	.value	0x686
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x2d
	.long	.LASF650
	.byte	0x1
	.value	0x687
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -172
	.uleb128 0x2d
	.long	.LASF681
	.byte	0x1
	.value	0x687
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x2d
	.long	.LASF0
	.byte	0x1
	.value	0x688
	.long	0x6aa
	.uleb128 0x3
	.byte	0x91
	.sleb128 -164
	.uleb128 0x2d
	.long	.LASF682
	.byte	0x1
	.value	0x689
	.long	0x26f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x2d
	.long	.LASF651
	.byte	0x1
	.value	0x689
	.long	0x26f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x2d
	.long	.LASF683
	.byte	0x1
	.value	0x68a
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x2d
	.long	.LASF663
	.byte	0x1
	.value	0x68b
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2d
	.long	.LASF664
	.byte	0x1
	.value	0x68b
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2d
	.long	.LASF649
	.byte	0x1
	.value	0x68c
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x2d
	.long	.LASF625
	.byte	0x1
	.value	0x68c
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -156
	.uleb128 0x2b
	.quad	.LBB28
	.quad	.LBE28-.LBB28
	.long	0x2b2d
	.uleb128 0x2e
	.string	"q"
	.byte	0x1
	.value	0x6e0
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2d
	.long	.LASF684
	.byte	0x1
	.value	0x6e1
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.byte	0
	.uleb128 0x2b
	.quad	.LBB29
	.quad	.LBE29-.LBB29
	.long	0x2b73
	.uleb128 0x2e
	.string	"pat"
	.byte	0x1
	.value	0x768
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.quad	.LBB30
	.quad	.LBE30-.LBB30
	.uleb128 0x2d
	.long	.LASF685
	.byte	0x1
	.value	0x771
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x28
	.quad	.LBB31
	.quad	.LBE31-.LBB31
	.uleb128 0x2d
	.long	.LASF619
	.byte	0x1
	.value	0x784
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2e
	.string	"q"
	.byte	0x1
	.value	0x785
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2d
	.long	.LASF684
	.byte	0x1
	.value	0x785
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2d
	.long	.LASF686
	.byte	0x1
	.value	0x786
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x2d
	.long	.LASF687
	.byte	0x1
	.value	0x786
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -148
	.byte	0
	.byte	0
	.uleb128 0x33
	.long	.LASF688
	.byte	0x1
	.value	0x811
	.long	0x139
	.quad	.LFB19
	.quad	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0x2c5e
	.uleb128 0x30
	.string	"x"
	.byte	0x1
	.value	0x812
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x30
	.string	"src"
	.byte	0x1
	.value	0x812
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x30
	.string	"dst"
	.byte	0x1
	.value	0x812
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2d
	.long	.LASF0
	.byte	0x1
	.value	0x814
	.long	0x6aa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x28
	.quad	.LBB32
	.quad	.LBE32-.LBB32
	.uleb128 0x2e
	.string	"i"
	.byte	0x1
	.value	0x819
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2e
	.string	"fmt"
	.byte	0x1
	.value	0x81a
	.long	0x4cd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x34
	.long	.LASF690
	.byte	0x1
	.value	0x85c
	.quad	.LFB20
	.quad	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0x2c8a
	.uleb128 0x2e
	.string	"i"
	.byte	0x1
	.value	0x85e
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x32
	.long	.LASF691
	.byte	0x1
	.value	0x867
	.long	0x139
	.quad	.LFB21
	.quad	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.long	0x2cba
	.uleb128 0x30
	.string	"x"
	.byte	0x1
	.value	0x868
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x33
	.long	.LASF692
	.byte	0x1
	.value	0x87c
	.long	0x2d
	.quad	.LFB22
	.quad	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.long	0x2d29
	.uleb128 0x31
	.long	.LASF428
	.byte	0x1
	.value	0x87d
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2e
	.string	"i"
	.byte	0x1
	.value	0x87f
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2e
	.string	"tmp"
	.byte	0x1
	.value	0x880
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x28
	.quad	.LBB33
	.quad	.LBE33-.LBB33
	.uleb128 0x2d
	.long	.LASF693
	.byte	0x1
	.value	0x88e
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x2f
	.long	.LASF694
	.byte	0x1
	.value	0x89f
	.quad	.LFB23
	.quad	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.long	0x2d66
	.uleb128 0x31
	.long	.LASF598
	.byte	0x1
	.value	0x8a0
	.long	0x1bd7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2d
	.long	.LASF466
	.byte	0x1
	.value	0x8a2
	.long	0x1bd7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x33
	.long	.LASF695
	.byte	0x1
	.value	0x8ae
	.long	0x1bd7
	.quad	.LFB24
	.quad	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.long	0x2dc4
	.uleb128 0x31
	.long	.LASF428
	.byte	0x1
	.value	0x8af
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x30
	.string	"mem"
	.byte	0x1
	.value	0x8af
	.long	0xed4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x31
	.long	.LASF696
	.byte	0x1
	.value	0x8b0
	.long	0x1bd7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2e
	.string	"ml"
	.byte	0x1
	.value	0x8b2
	.long	0x1bd7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x33
	.long	.LASF697
	.byte	0x1
	.value	0x8c6
	.long	0x139
	.quad	.LFB25
	.quad	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.long	0x2e40
	.uleb128 0x31
	.long	.LASF428
	.byte	0x1
	.value	0x8c7
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x31
	.long	.LASF598
	.byte	0x1
	.value	0x8c8
	.long	0x1bd7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x31
	.long	.LASF698
	.byte	0x1
	.value	0x8c9
	.long	0x26f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x31
	.long	.LASF699
	.byte	0x1
	.value	0x8c9
	.long	0x26f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2e
	.string	"ml"
	.byte	0x1
	.value	0x8cb
	.long	0x1bd7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2e
	.string	"set"
	.byte	0x1
	.value	0x8cc
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x33
	.long	.LASF700
	.byte	0x1
	.value	0x8ed
	.long	0x139
	.quad	.LFB26
	.quad	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.long	0x2e9a
	.uleb128 0x30
	.string	"xp"
	.byte	0x1
	.value	0x8ee
	.long	0xed4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x31
	.long	.LASF460
	.byte	0x1
	.value	0x8ef
	.long	0x26d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2e
	.string	"x"
	.byte	0x1
	.value	0x8f1
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2e
	.string	"d"
	.byte	0x1
	.value	0x8f2
	.long	0x2e9a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1bdd
	.uleb128 0x2f
	.long	.LASF701
	.byte	0x1
	.value	0x919
	.quad	.LFB27
	.quad	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.long	0x2f9d
	.uleb128 0x30
	.string	"bb"
	.byte	0x1
	.value	0x91a
	.long	0x1b10
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x2d
	.long	.LASF702
	.byte	0x1
	.value	0x91c
	.long	0x26f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2d
	.long	.LASF703
	.byte	0x1
	.value	0x91d
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2d
	.long	.LASF598
	.byte	0x1
	.value	0x91e
	.long	0x1bd7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2d
	.long	.LASF428
	.byte	0x1
	.value	0x91f
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2d
	.long	.LASF466
	.byte	0x1
	.value	0x91f
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2e
	.string	"set"
	.byte	0x1
	.value	0x91f
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2d
	.long	.LASF460
	.byte	0x1
	.value	0x920
	.long	0x1bdd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2d
	.long	.LASF704
	.byte	0x1
	.value	0x921
	.long	0x2f9d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -105
	.uleb128 0x28
	.quad	.LBB34
	.quad	.LBE34-.LBB34
	.uleb128 0x2d
	.long	.LASF584
	.byte	0x1
	.value	0x92e
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2e
	.string	"src"
	.byte	0x1
	.value	0x92f
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x28
	.quad	.LBB35
	.quad	.LBE35-.LBB35
	.uleb128 0x2d
	.long	.LASF705
	.byte	0x1
	.value	0x937
	.long	0x26f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.byte	0x2
	.long	.LASF706
	.uleb128 0x27
	.long	.LASF707
	.byte	0x1
	.byte	0x3b
	.long	0x4e6
	.uleb128 0x9
	.byte	0x3
	.quad	regmove_bb_head
	.uleb128 0x27
	.long	.LASF708
	.byte	0x1
	.byte	0xd9
	.long	0x2d
	.uleb128 0x9
	.byte	0x3
	.quad	flags_set_1_rtx
	.uleb128 0x27
	.long	.LASF709
	.byte	0x1
	.byte	0xda
	.long	0x139
	.uleb128 0x9
	.byte	0x3
	.quad	flags_set_1_set
	.uleb128 0x2d
	.long	.LASF710
	.byte	0x1
	.value	0x149
	.long	0x4e6
	.uleb128 0x9
	.byte	0x3
	.quad	regno_src_regno
	.uleb128 0x36
	.long	.LASF711
	.byte	0x4
	.byte	0x62
	.long	0x139
	.uleb128 0x12
	.long	0x661
	.long	0x3014
	.uleb128 0x13
	.long	0x140
	.byte	0x3a
	.byte	0
	.uleb128 0x36
	.long	.LASF162
	.byte	0x9
	.byte	0x34
	.long	0x301f
	.uleb128 0x15
	.long	0x3004
	.uleb128 0x12
	.long	0x288
	.long	0x3034
	.uleb128 0x13
	.long	0x140
	.byte	0x3a
	.byte	0
	.uleb128 0x36
	.long	.LASF712
	.byte	0x9
	.byte	0x50
	.long	0x303f
	.uleb128 0x15
	.long	0x3024
	.uleb128 0x12
	.long	0x28f
	.long	0x3054
	.uleb128 0x13
	.long	0x140
	.byte	0x3a
	.byte	0
	.uleb128 0x36
	.long	.LASF713
	.byte	0x9
	.byte	0x60
	.long	0x305f
	.uleb128 0x15
	.long	0x3044
	.uleb128 0x36
	.long	.LASF714
	.byte	0x9
	.byte	0xa4
	.long	0x4ec
	.uleb128 0x12
	.long	0x288
	.long	0x307f
	.uleb128 0x13
	.long	0x140
	.byte	0x98
	.byte	0
	.uleb128 0x36
	.long	.LASF715
	.byte	0x2
	.byte	0x36
	.long	0x308a
	.uleb128 0x15
	.long	0x306f
	.uleb128 0x12
	.long	0x4cd
	.long	0x309f
	.uleb128 0x13
	.long	0x140
	.byte	0x98
	.byte	0
	.uleb128 0x36
	.long	.LASF716
	.byte	0x2
	.byte	0x3c
	.long	0x30aa
	.uleb128 0x15
	.long	0x308f
	.uleb128 0x12
	.long	0x2c0
	.long	0x30bf
	.uleb128 0x13
	.long	0x140
	.byte	0x98
	.byte	0
	.uleb128 0x36
	.long	.LASF717
	.byte	0x2
	.byte	0x3f
	.long	0x30ca
	.uleb128 0x15
	.long	0x30af
	.uleb128 0x12
	.long	0x2d
	.long	0x30df
	.uleb128 0x13
	.long	0x140
	.byte	0xa
	.byte	0
	.uleb128 0x37
	.long	.LASF718
	.byte	0x2
	.value	0x652
	.long	0x30cf
	.uleb128 0x36
	.long	.LASF719
	.byte	0xc
	.byte	0x91
	.long	0x139
	.uleb128 0x36
	.long	.LASF417
	.byte	0xc
	.byte	0xcb
	.long	0xf4f
	.uleb128 0x36
	.long	.LASF720
	.byte	0xe
	.byte	0x41
	.long	0x1375
	.uleb128 0x12
	.long	0x2c0
	.long	0x311c
	.uleb128 0x13
	.long	0x140
	.byte	0x34
	.byte	0
	.uleb128 0x37
	.long	.LASF721
	.byte	0x10
	.value	0x196
	.long	0x310c
	.uleb128 0x37
	.long	.LASF722
	.byte	0x11
	.value	0x12a
	.long	0x139
	.uleb128 0x37
	.long	.LASF723
	.byte	0x11
	.value	0x21a
	.long	0x139
	.uleb128 0x37
	.long	.LASF724
	.byte	0x11
	.value	0x282
	.long	0x139
	.uleb128 0x37
	.long	.LASF725
	.byte	0xf
	.value	0x1e4
	.long	0x19cf
	.uleb128 0x36
	.long	.LASF726
	.byte	0xb
	.byte	0xe4
	.long	0x139
	.uleb128 0x36
	.long	.LASF727
	.byte	0xb
	.byte	0xec
	.long	0x1375
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x28
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x37
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
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.LBB6-.Ltext0
	.quad	.LBE6-.Ltext0
	.quad	.LBB8-.Ltext0
	.quad	.LBE8-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF361:
	.string	"REG_BR_PROB"
.LASF391:
	.string	"NOTE_INSN_EH_REGION_BEG"
.LASF538:
	.string	"profile_label_no"
.LASF318:
	.string	"rtstr"
.LASF378:
	.string	"NOTE_INSN_DELETED"
.LASF93:
	.string	"_unused2"
.LASF246:
	.string	"UMOD"
.LASF300:
	.string	"min_align"
.LASF79:
	.string	"_fileno"
.LASF431:
	.string	"varray_data_tag"
.LASF687:
	.string	"s_length2"
.LASF24:
	.string	"AD_REGS"
.LASF663:
	.string	"src_note"
.LASF326:
	.string	"first"
.LASF532:
	.string	"inlinable"
.LASF564:
	.string	"uses_const_pool"
.LASF287:
	.string	"CONSTANT_P_RTX"
.LASF620:
	.string	"dest_death"
.LASF611:
	.string	"block"
.LASF706:
	.string	"_Bool"
.LASF317:
	.string	"rtuint"
.LASF726:
	.string	"n_basic_blocks"
.LASF321:
	.string	"rt_cselib"
.LASF190:
	.string	"DEFINE_PEEPHOLE2"
.LASF12:
	.string	"rtvec_def"
.LASF537:
	.string	"inl_max_label_num"
.LASF250:
	.string	"LSHIFTRT"
.LASF184:
	.string	"MATCH_PAR_DUP"
.LASF84:
	.string	"_shortbuf"
.LASF730:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/403.gcc/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF721:
	.string	"call_used_regs"
.LASF245:
	.string	"UDIV"
.LASF10:
	.string	"rtvec"
.LASF734:
	.string	"done"
.LASF178:
	.string	"MATCH_OPERAND"
.LASF472:
	.string	"x_first_label_num"
.LASF159:
	.string	"CCFPmode"
.LASF100:
	.string	"reg_class"
.LASF416:
	.string	"OP_INOUT"
.LASF267:
	.string	"UNLE"
.LASF28:
	.string	"LEGACY_REGS"
.LASF305:
	.string	"max_after_base"
.LASF268:
	.string	"UNLT"
.LASF565:
	.string	"uses_pic_offset_table"
.LASF571:
	.string	"initial_value_struct"
.LASF586:
	.string	"probability"
.LASF131:
	.string	"CTImode"
.LASF65:
	.string	"_flags"
.LASF466:
	.string	"next"
.LASF649:
	.string	"length"
.LASF60:
	.string	"__off_t"
.LASF640:
	.string	"p_move_notes"
.LASF606:
	.string	"pset"
.LASF129:
	.string	"CSImode"
.LASF30:
	.string	"FP_TOP_REG"
.LASF289:
	.string	"VEC_MERGE"
.LASF535:
	.string	"original_decl_initial"
.LASF652:
	.string	"pass"
.LASF85:
	.string	"_lock"
.LASF433:
	.string	"uhint"
.LASF222:
	.string	"RETURN"
.LASF434:
	.string	"generic"
.LASF14:
	.string	"elem"
.LASF165:
	.string	"MODE_FLOAT"
.LASF309:
	.string	"alias"
.LASF306:
	.string	"offset_unsigned"
.LASF135:
	.string	"V2SImode"
.LASF614:
	.string	"flags_set_1"
.LASF561:
	.string	"stdarg"
.LASF522:
	.string	"x_trampoline_list"
.LASF694:
	.string	"free_csa_memlist"
.LASF25:
	.string	"Q_REGS"
.LASF589:
	.string	"WRITE"
.LASF209:
	.string	"CODE_LABEL"
.LASF130:
	.string	"CDImode"
.LASF215:
	.string	"UNSPEC"
.LASF208:
	.string	"BARRIER"
.LASF384:
	.string	"NOTE_INSN_LOOP_VTOP"
.LASF211:
	.string	"COND_EXEC"
.LASF668:
	.string	"matchp"
.LASF225:
	.string	"CONST_INT"
.LASF221:
	.string	"CALL"
.LASF50:
	.string	"maybe_vaarg"
.LASF543:
	.string	"epilogue_delay_list"
.LASF710:
	.string	"regno_src_regno"
.LASF137:
	.string	"V4QImode"
.LASF200:
	.string	"ATTR"
.LASF341:
	.string	"count"
.LASF319:
	.string	"rttype"
.LASF716:
	.string	"rtx_format"
.LASF19:
	.string	"DREG"
.LASF331:
	.string	"head_tree"
.LASF37:
	.string	"FLOAT_SSE_REGS"
.LASF408:
	.string	"GR_VIRTUAL_STACK_ARGS"
.LASF656:
	.string	"match_no"
.LASF616:
	.string	"src_regno"
.LASF136:
	.string	"V2DImode"
.LASF512:
	.string	"x_return_label"
.LASF704:
	.string	"end_of_block"
.LASF461:
	.string	"varray_type"
.LASF314:
	.string	"mem_attrs"
.LASF71:
	.string	"_IO_write_end"
.LASF355:
	.string	"REG_UNUSED"
.LASF193:
	.string	"DEFINE_DELAY"
.LASF243:
	.string	"MINUS"
.LASF519:
	.string	"x_clobber_return_insn"
.LASF22:
	.string	"SIREG"
.LASF440:
	.string	"sched_info_tag"
.LASF233:
	.string	"STRICT_LOW_PART"
.LASF175:
	.string	"INCLUDE"
.LASF593:
	.string	"commutative"
.LASF404:
	.string	"GR_FRAME_POINTER"
.LASF339:
	.string	"index"
.LASF447:
	.string	"freq"
.LASF271:
	.string	"ZERO_EXTEND"
.LASF603:
	.string	"inc_insn"
.LASF274:
	.string	"FLOAT_TRUNCATE"
.LASF488:
	.string	"x_forced_labels"
.LASF503:
	.string	"internal_arg_pointer"
.LASF401:
	.string	"GR_PC"
.LASF609:
	.string	"flags_regno"
.LASF21:
	.string	"BREG"
.LASF146:
	.string	"V2SFmode"
.LASF454:
	.string	"varray_data"
.LASF573:
	.string	"machine_function"
.LASF275:
	.string	"FLOAT"
.LASF367:
	.string	"REG_EH_CONTEXT"
.LASF101:
	.string	"machine_mode"
.LASF324:
	.string	"rtmem"
.LASF531:
	.string	"fixup_var_refs_queue"
.LASF284:
	.string	"RANGE_REG"
.LASF322:
	.string	"rtbit"
.LASF575:
	.string	"bitmap_element_def"
.LASF3:
	.string	"call"
.LASF108:
	.string	"TImode"
.LASF260:
	.string	"PRE_MODIFY"
.LASF546:
	.string	"returns_pointer"
.LASF273:
	.string	"FLOAT_EXTEND"
.LASF444:
	.string	"last_note_uid"
.LASF491:
	.string	"stmt"
.LASF6:
	.string	"in_struct"
.LASF379:
	.string	"NOTE_INSN_BLOCK_BEG"
.LASF106:
	.string	"SImode"
.LASF217:
	.string	"ADDR_VEC"
.LASF569:
	.string	"stmt_status"
.LASF147:
	.string	"V2DFmode"
.LASF299:
	.string	"LAST_AND_UNUSED_RTX_CODE"
.LASF650:
	.string	"num_calls"
.LASF724:
	.string	"flag_non_call_exceptions"
.LASF313:
	.string	"align"
.LASF49:
	.string	"sse_regno"
.LASF328:
	.string	"indx"
.LASF539:
	.string	"machine"
.LASF236:
	.string	"SYMBOL_REF"
.LASF377:
	.string	"NOTE_INSN_BIAS"
.LASF714:
	.string	"word_mode"
.LASF399:
	.string	"NOTE_INSN_MAX"
.LASF486:
	.string	"x_saveregs_value"
.LASF613:
	.string	"mark_flags_life_zones"
.LASF189:
	.string	"DEFINE_INSN_AND_SPLIT"
.LASF241:
	.string	"COMPARE"
.LASF269:
	.string	"LTGT"
.LASF465:
	.string	"unsignedp"
.LASF281:
	.string	"HIGH"
.LASF238:
	.string	"QUEUED"
.LASF26:
	.string	"NON_Q_REGS"
.LASF1:
	.string	"mode"
.LASF643:
	.string	"move_uid"
.LASF107:
	.string	"DImode"
.LASF429:
	.string	"const_equiv_data"
.LASF505:
	.string	"hard_reg_initial_vals"
.LASF484:
	.string	"x_inhibit_defer_pop"
.LASF78:
	.string	"_chain"
.LASF259:
	.string	"POST_INC"
.LASF686:
	.string	"num_calls2"
.LASF120:
	.string	"TFmode"
.LASF56:
	.string	"unsigned char"
.LASF572:
	.string	"temp_slot"
.LASF31:
	.string	"FP_SECOND_REG"
.LASF489:
	.string	"x_pending_chain"
.LASF630:
	.string	"src_reg"
.LASF504:
	.string	"cannot_inline"
.LASF713:
	.string	"mode_bitsize"
.LASF732:
	.string	"_IO_lock_t"
.LASF451:
	.string	"basic_block"
.LASF103:
	.string	"BImode"
.LASF257:
	.string	"PRE_INC"
.LASF354:
	.string	"REG_NO_CONFLICT"
.LASF117:
	.string	"SFmode"
.LASF492:
	.string	"emit"
.LASF420:
	.string	"constraints"
.LASF206:
	.string	"JUMP_INSN"
.LASF336:
	.string	"cond_local_set"
.LASF699:
	.string	"delta"
.LASF587:
	.string	"edge"
.LASF169:
	.string	"MODE_COMPLEX_FLOAT"
.LASF323:
	.string	"rttree"
.LASF376:
	.string	"insn_note"
.LASF418:
	.string	"operand"
.LASF395:
	.string	"NOTE_INSN_RANGE_END"
.LASF188:
	.string	"DEFINE_SPLIT"
.LASF553:
	.string	"has_nonlocal_goto"
.LASF567:
	.string	"arg_pointer_save_area_init"
.LASF227:
	.string	"CONST_VECTOR"
.LASF185:
	.string	"MATCH_INSN"
.LASF632:
	.string	"dst_no"
.LASF605:
	.string	"increment"
.LASF513:
	.string	"x_save_expr_regs"
.LASF118:
	.string	"DFmode"
.LASF695:
	.string	"record_one_stack_memref"
.LASF33:
	.string	"SSE_REGS"
.LASF580:
	.string	"gcov_type"
.LASF54:
	.string	"size_t"
.LASF219:
	.string	"PREFETCH"
.LASF42:
	.string	"LIM_REG_CLASSES"
.LASF41:
	.string	"ALL_REGS"
.LASF496:
	.string	"pops_args"
.LASF112:
	.string	"PSImode"
.LASF515:
	.string	"x_rtl_expr_chain"
.LASF283:
	.string	"RANGE_INFO"
.LASF430:
	.string	"rtunion_def"
.LASF199:
	.string	"DEFINE_ATTR"
.LASF201:
	.string	"SET_ATTR"
.LASF126:
	.string	"TCmode"
.LASF507:
	.string	"x_nonlocal_labels"
.LASF276:
	.string	"UNSIGNED_FLOAT"
.LASF366:
	.string	"REG_FRAME_RELATED_EXPR"
.LASF439:
	.string	"cselib_val_struct"
.LASF398:
	.string	"NOTE_INSN_EXPECTED_VALUE"
.LASF70:
	.string	"_IO_write_ptr"
.LASF698:
	.string	"new_adjust"
.LASF248:
	.string	"ROTATE"
.LASF334:
	.string	"succ"
.LASF446:
	.string	"refs"
.LASF272:
	.string	"TRUNCATE"
.LASF359:
	.string	"REG_DEP_ANTI"
.LASF123:
	.string	"SCmode"
.LASF715:
	.string	"rtx_length"
.LASF718:
	.string	"global_rtl"
.LASF409:
	.string	"GR_VIRTUAL_STACK_DYNAMIC"
.LASF113:
	.string	"PDImode"
.LASF380:
	.string	"NOTE_INSN_BLOCK_END"
.LASF436:
	.string	"bitmap"
.LASF389:
	.string	"NOTE_INSN_DELETED_LABEL"
.LASF717:
	.string	"rtx_class"
.LASF637:
	.string	"link"
.LASF343:
	.string	"flags"
.LASF481:
	.string	"x_regno_reg_rtx"
.LASF176:
	.string	"EXPR_LIST"
.LASF203:
	.string	"EQ_ATTR"
.LASF474:
	.string	"x_last_insn"
.LASF156:
	.string	"CCGOCmode"
.LASF234:
	.string	"CONCAT"
.LASF582:
	.string	"pred_next"
.LASF302:
	.string	"min_after_vec"
.LASF63:
	.string	"FILE"
.LASF240:
	.string	"COND"
.LASF166:
	.string	"MODE_PARTIAL_INT"
.LASF523:
	.string	"x_parm_birth_insn"
.LASF644:
	.string	"old_num_regs"
.LASF525:
	.string	"x_max_parm_reg"
.LASF15:
	.string	"tree"
.LASF124:
	.string	"DCmode"
.LASF642:
	.string	"insn_uid"
.LASF191:
	.string	"DEFINE_COMBINE"
.LASF728:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF517:
	.string	"x_tail_recursion_reentry"
.LASF249:
	.string	"ASHIFTRT"
.LASF601:
	.string	"regclass_compatible_p"
.LASF154:
	.string	"CCmode"
.LASF332:
	.string	"end_tree"
.LASF32:
	.string	"FLOAT_REGS"
.LASF382:
	.string	"NOTE_INSN_LOOP_END"
.LASF152:
	.string	"V16SFmode"
.LASF396:
	.string	"NOTE_INSN_LIVE"
.LASF639:
	.string	"p_insn_notes"
.LASF196:
	.string	"DEFINE_COND_EXEC"
.LASF74:
	.string	"_IO_save_base"
.LASF701:
	.string	"combine_stack_adjustments_for_block"
.LASF462:
	.string	"var_refs_queue"
.LASF485:
	.string	"x_stack_pointer_delta"
.LASF192:
	.string	"DEFINE_EXPAND"
.LASF556:
	.string	"is_thunk"
.LASF457:
	.string	"elements_used"
.LASF143:
	.string	"V8SImode"
.LASF509:
	.string	"x_nonlocal_goto_handler_labels"
.LASF205:
	.string	"INSN"
.LASF316:
	.string	"rtint"
.LASF235:
	.string	"LABEL_REF"
.LASF679:
	.string	"post_inc_set"
.LASF358:
	.string	"REG_LABEL"
.LASF453:
	.string	"elt_list"
.LASF346:
	.string	"REG_DEAD"
.LASF386:
	.string	"NOTE_INSN_FUNCTION_END"
.LASF88:
	.string	"__pad2"
.LASF712:
	.string	"mode_size"
.LASF349:
	.string	"REG_EQUAL"
.LASF0:
	.string	"code"
.LASF579:
	.string	"regset"
.LASF155:
	.string	"CCGCmode"
.LASF338:
	.string	"global_live_at_end"
.LASF672:
	.string	"replace_in_call_usage"
.LASF231:
	.string	"SCRATCH"
.LASF141:
	.string	"V8QImode"
.LASF144:
	.string	"V8DImode"
.LASF172:
	.string	"MAX_MODE_CLASS"
.LASF720:
	.string	"reg_n_info"
.LASF723:
	.string	"flag_regmove"
.LASF647:
	.string	"regmove_dump_file"
.LASF664:
	.string	"dst_note"
.LASF689:
	.string	"regmove_optimize"
.LASF636:
	.string	"old_max_uid"
.LASF270:
	.string	"SIGN_EXTEND"
.LASF548:
	.string	"calls_setjmp"
.LASF682:
	.string	"insn_const"
.LASF674:
	.string	"fixup_match_1"
.LASF646:
	.string	"fixup_match_2"
.LASF292:
	.string	"VEC_DUPLICATE"
.LASF510:
	.string	"x_nonlocal_goto_stack_level"
.LASF95:
	.string	"_next"
.LASF722:
	.string	"flag_expensive_optimizations"
.LASF690:
	.string	"combine_stack_adjustments"
.LASF427:
	.string	"n_alternatives"
.LASF729:
	.string	"regmove.c"
.LASF310:
	.string	"expr"
.LASF392:
	.string	"NOTE_INSN_EH_REGION_END"
.LASF675:
	.string	"backward"
.LASF421:
	.string	"operand_mode"
.LASF508:
	.string	"x_nonlocal_goto_handler_slots"
.LASF150:
	.string	"V8SFmode"
.LASF693:
	.string	"this"
.LASF428:
	.string	"insn"
.LASF23:
	.string	"DIREG"
.LASF357:
	.string	"REG_CC_USER"
.LASF214:
	.string	"ASM_OPERANDS"
.LASF528:
	.string	"x_temp_slot_level"
.LASF158:
	.string	"CCZmode"
.LASF383:
	.string	"NOTE_INSN_LOOP_CONT"
.LASF27:
	.string	"INDEX_REGS"
.LASF612:
	.string	"live"
.LASF554:
	.string	"contains_functions"
.LASF676:
	.string	"operand_number"
.LASF692:
	.string	"single_set_for_csa"
.LASF493:
	.string	"varasm"
.LASF372:
	.string	"REG_NON_LOCAL_GOTO"
.LASF218:
	.string	"ADDR_DIFF_VEC"
.LASF280:
	.string	"ZERO_EXTRACT"
.LASF432:
	.string	"hint"
.LASF213:
	.string	"ASM_INPUT"
.LASF263:
	.string	"ORDERED"
.LASF151:
	.string	"V8DFmode"
.LASF464:
	.string	"promoted_mode"
.LASF621:
	.string	"sregno"
.LASF456:
	.string	"num_elements"
.LASF277:
	.string	"UNSIGNED_FIX"
.LASF545:
	.string	"returns_pcc_struct"
.LASF608:
	.string	"found"
.LASF47:
	.string	"sse_words"
.LASF29:
	.string	"GENERAL_REGS"
.LASF459:
	.string	"name"
.LASF177:
	.string	"INSN_LIST"
.LASF96:
	.string	"_sbuf"
.LASF285:
	.string	"RANGE_VAR"
.LASF452:
	.string	"changes_mode"
.LASF76:
	.string	"_IO_save_end"
.LASF164:
	.string	"MODE_INT"
.LASF458:
	.string	"element_size"
.LASF610:
	.string	"flags_nregs"
.LASF500:
	.string	"arg_offset_rtx"
.LASF2:
	.string	"jump"
.LASF46:
	.string	"regno"
.LASF482:
	.string	"expr_status"
.LASF622:
	.string	"dregno"
.LASF552:
	.string	"has_nonlocal_label"
.LASF607:
	.string	"discover_flags_reg"
.LASF286:
	.string	"RANGE_LIVE"
.LASF483:
	.string	"x_pending_stack_adjust"
.LASF134:
	.string	"V2HImode"
.LASF497:
	.string	"args_size"
.LASF9:
	.string	"frame_related"
.LASF691:
	.string	"stack_memref_p"
.LASF417:
	.string	"recog_data"
.LASF438:
	.string	"const_equiv"
.LASF677:
	.string	"match_number"
.LASF443:
	.string	"last_uid"
.LASF320:
	.string	"rt_addr_diff_vec_flags"
.LASF406:
	.string	"GR_ARG_POINTER"
.LASF604:
	.string	"inc_insn_set"
.LASF16:
	.string	"sizetype"
.LASF36:
	.string	"FP_SECOND_SSE_REGS"
.LASF295:
	.string	"SS_MINUS"
.LASF182:
	.string	"MATCH_PARALLEL"
.LASF139:
	.string	"V4SImode"
.LASF5:
	.string	"volatil"
.LASF348:
	.string	"REG_EQUIV"
.LASF57:
	.string	"short unsigned int"
.LASF58:
	.string	"signed char"
.LASF181:
	.string	"MATCH_OPERATOR"
.LASF662:
	.string	"success"
.LASF707:
	.string	"regmove_bb_head"
.LASF592:
	.string	"with"
.LASF455:
	.string	"varray_head_tag"
.LASF327:
	.string	"current"
.LASF475:
	.string	"x_cur_insn_uid"
.LASF524:
	.string	"x_last_parm_insn"
.LASF596:
	.string	"sp_offset"
.LASF661:
	.string	"comm"
.LASF297:
	.string	"SS_TRUNCATE"
.LASF362:
	.string	"REG_EXEC_COUNT"
.LASF533:
	.string	"no_debugging_symbols"
.LASF588:
	.string	"READ"
.LASF301:
	.string	"base_after_vec"
.LASF186:
	.string	"DEFINE_INSN"
.LASF61:
	.string	"__off64_t"
.LASF140:
	.string	"V4DImode"
.LASF340:
	.string	"loop_depth"
.LASF68:
	.string	"_IO_read_base"
.LASF39:
	.string	"INT_SSE_REGS"
.LASF86:
	.string	"_offset"
.LASF407:
	.string	"GR_VIRTUAL_INCOMING_ARGS"
.LASF477:
	.string	"x_last_filename"
.LASF360:
	.string	"REG_DEP_OUTPUT"
.LASF73:
	.string	"_IO_buf_end"
.LASF195:
	.string	"DEFINE_ASM_ATTRIBUTES"
.LASF296:
	.string	"US_MINUS"
.LASF502:
	.string	"return_rtx"
.LASF626:
	.string	"d_n_calls"
.LASF35:
	.string	"FP_TOP_SSE_REGS"
.LASF279:
	.string	"SIGN_EXTRACT"
.LASF8:
	.string	"integrated"
.LASF449:
	.string	"live_length"
.LASF220:
	.string	"CLOBBER"
.LASF581:
	.string	"edge_def"
.LASF92:
	.string	"_mode"
.LASF170:
	.string	"MODE_VECTOR_INT"
.LASF69:
	.string	"_IO_write_base"
.LASF364:
	.string	"REG_SAVE_AREA"
.LASF288:
	.string	"CALL_PLACEHOLDER"
.LASF490:
	.string	"function"
.LASF148:
	.string	"V4SFmode"
.LASF414:
	.string	"OP_IN"
.LASF557:
	.string	"instrument_entry_exit"
.LASF688:
	.string	"stable_and_no_regs_but_for_p"
.LASF719:
	.string	"which_alternative"
.LASF520:
	.string	"x_frame_offset"
.LASF242:
	.string	"PLUS"
.LASF258:
	.string	"POST_DEC"
.LASF577:
	.string	"bits"
.LASF105:
	.string	"HImode"
.LASF344:
	.string	"rtunion"
.LASF385:
	.string	"NOTE_INSN_LOOP_END_TOP_COND"
.LASF168:
	.string	"MODE_COMPLEX_INT"
.LASF568:
	.string	"eh_status"
.LASF680:
	.string	"search_end"
.LASF467:
	.string	"sequence_stack"
.LASF53:
	.string	"long int"
.LASF411:
	.string	"GR_VIRTUAL_CFA"
.LASF727:
	.string	"basic_block_info"
.LASF350:
	.string	"REG_WAS_0"
.LASF371:
	.string	"REG_NORETURN"
.LASF671:
	.string	"match_ul"
.LASF94:
	.string	"_IO_marker"
.LASF119:
	.string	"XFmode"
.LASF547:
	.string	"needs_context"
.LASF370:
	.string	"REG_MAYBE_DEAD"
.LASF627:
	.string	"s_n_calls"
.LASF149:
	.string	"V4DFmode"
.LASF4:
	.string	"unchanging"
.LASF345:
	.string	"reg_note"
.LASF551:
	.string	"calls_eh_return"
.LASF530:
	.string	"x_target_temp_slot_level"
.LASF426:
	.string	"n_dups"
.LASF498:
	.string	"pretend_args_size"
.LASF624:
	.string	"d_length"
.LASF173:
	.string	"rtx_code"
.LASF51:
	.string	"CUMULATIVE_ARGS"
.LASF468:
	.string	"last"
.LASF560:
	.string	"varargs"
.LASF20:
	.string	"CREG"
.LASF591:
	.string	"match"
.LASF562:
	.string	"x_whole_function_mode_p"
.LASF174:
	.string	"UNKNOWN"
.LASF216:
	.string	"UNSPEC_VOLATILE"
.LASF574:
	.string	"language_function"
.LASF423:
	.string	"dup_loc"
.LASF388:
	.string	"NOTE_INSN_EPILOGUE_BEG"
.LASF55:
	.string	"long unsigned int"
.LASF11:
	.string	"rtx_def"
.LASF655:
	.string	"op_no"
.LASF115:
	.string	"HFmode"
.LASF536:
	.string	"inl_last_parm_insn"
.LASF223:
	.string	"TRAP_IF"
.LASF448:
	.string	"deaths"
.LASF368:
	.string	"REG_EH_REGION"
.LASF526:
	.string	"x_parm_reg_stack_loc"
.LASF425:
	.string	"n_operands"
.LASF351:
	.string	"REG_RETVAL"
.LASF127:
	.string	"CQImode"
.LASF700:
	.string	"record_stack_memrefs"
.LASF62:
	.string	"char"
.LASF544:
	.string	"returns_struct"
.LASF638:
	.string	"move_insn"
.LASF125:
	.string	"XCmode"
.LASF518:
	.string	"x_arg_pointer_save_area"
.LASF651:
	.string	"newconst"
.LASF18:
	.string	"AREG"
.LASF516:
	.string	"x_tail_recursion_label"
.LASF703:
	.string	"last_sp_set"
.LASF72:
	.string	"_IO_buf_base"
.LASF542:
	.string	"language"
.LASF251:
	.string	"ROTATERT"
.LASF237:
	.string	"ADDRESSOF"
.LASF373:
	.string	"REG_SETJMP"
.LASF665:
	.string	"dstno"
.LASF133:
	.string	"V2QImode"
.LASF471:
	.string	"x_reg_rtx_no"
.LASF111:
	.string	"PHImode"
.LASF67:
	.string	"_IO_read_end"
.LASF463:
	.string	"modified"
.LASF480:
	.string	"regno_decl"
.LASF441:
	.string	"reg_info_def"
.LASF132:
	.string	"COImode"
.LASF666:
	.string	"srcno"
.LASF256:
	.string	"PRE_DEC"
.LASF64:
	.string	"_IO_FILE"
.LASF387:
	.string	"NOTE_INSN_PROLOGUE_END"
.LASF594:
	.string	"early_clobber"
.LASF405:
	.string	"GR_HARD_FRAME_POINTER"
.LASF356:
	.string	"REG_CC_SETTER"
.LASF550:
	.string	"calls_alloca"
.LASF413:
	.string	"op_type"
.LASF529:
	.string	"x_var_temp_slot_level"
.LASF681:
	.string	"s_num_calls"
.LASF163:
	.string	"MODE_RANDOM"
.LASF294:
	.string	"US_PLUS"
.LASF153:
	.string	"BLKmode"
.LASF122:
	.string	"HCmode"
.LASF598:
	.string	"memlist"
.LASF228:
	.string	"CONST_STRING"
.LASF291:
	.string	"VEC_CONCAT"
.LASF312:
	.string	"size"
.LASF87:
	.string	"__pad1"
.LASF89:
	.string	"__pad3"
.LASF90:
	.string	"__pad4"
.LASF91:
	.string	"__pad5"
.LASF363:
	.string	"REG_NOALIAS"
.LASF204:
	.string	"ATTR_FLAG"
.LASF160:
	.string	"CCFPUmode"
.LASF347:
	.string	"REG_INC"
.LASF194:
	.string	"DEFINE_FUNCTION_UNIT"
.LASF521:
	.string	"x_context_display"
.LASF77:
	.string	"_markers"
.LASF97:
	.string	"_pos"
.LASF685:
	.string	"notes"
.LASF669:
	.string	"likely_spilled"
.LASF198:
	.string	"ADDRESS"
.LASF585:
	.string	"insns"
.LASF602:
	.string	"try_auto_increment"
.LASF534:
	.string	"original_arg_vector"
.LASF566:
	.string	"uses_eh_lsda"
.LASF435:
	.string	"cptr"
.LASF325:
	.string	"bitmap_head_def"
.LASF450:
	.string	"calls_crossed"
.LASF298:
	.string	"US_TRUNCATE"
.LASF400:
	.string	"global_rtl_index"
.LASF45:
	.string	"nregs"
.LASF293:
	.string	"SS_PLUS"
.LASF657:
	.string	"srcregno"
.LASF255:
	.string	"UMAX"
.LASF34:
	.string	"MMX_REGS"
.LASF307:
	.string	"scale"
.LASF104:
	.string	"QImode"
.LASF711:
	.string	"target_flags"
.LASF658:
	.string	"src_subreg"
.LASF460:
	.string	"data"
.LASF403:
	.string	"GR_STACK_POINTER"
.LASF116:
	.string	"TQFmode"
.LASF330:
	.string	"head"
.LASF44:
	.string	"words"
.LASF304:
	.string	"min_after_base"
.LASF437:
	.string	"sched"
.LASF696:
	.string	"next_memlist"
.LASF563:
	.string	"x_dont_save_pending_sizes_p"
.LASF43:
	.string	"ix86_args"
.LASF635:
	.string	"copy_src_to_dest"
.LASF17:
	.string	"NO_REGS"
.LASF725:
	.string	"cfun"
.LASF499:
	.string	"outgoing_args_size"
.LASF109:
	.string	"OImode"
.LASF645:
	.string	"reg_is_remote_constant_p"
.LASF369:
	.string	"REG_SAVE_NOTE"
.LASF253:
	.string	"SMAX"
.LASF412:
	.string	"GR_MAX"
.LASF290:
	.string	"VEC_SELECT"
.LASF353:
	.string	"REG_NONNEG"
.LASF540:
	.string	"stack_alignment_needed"
.LASF670:
	.string	"any_matches"
.LASF470:
	.string	"emit_status"
.LASF171:
	.string	"MODE_VECTOR_FLOAT"
.LASF261:
	.string	"POST_MODIFY"
.LASF709:
	.string	"flags_set_1_set"
.LASF595:
	.string	"csa_memlist"
.LASF365:
	.string	"REG_BR_PRED"
.LASF684:
	.string	"set2"
.LASF187:
	.string	"DEFINE_PEEPHOLE"
.LASF98:
	.string	"long long unsigned int"
.LASF394:
	.string	"NOTE_INSN_RANGE_BEG"
.LASF311:
	.string	"offset"
.LASF308:
	.string	"addr_diff_vec_flags"
.LASF82:
	.string	"_cur_column"
.LASF183:
	.string	"MATCH_OP_DUP"
.LASF197:
	.string	"SEQUENCE"
.LASF597:
	.string	"record_stack_memrefs_data"
.LASF625:
	.string	"s_length"
.LASF114:
	.string	"QFmode"
.LASF590:
	.string	"READWRITE"
.LASF445:
	.string	"sets"
.LASF501:
	.string	"args_info"
.LASF559:
	.string	"limit_stack"
.LASF623:
	.string	"failed"
.LASF224:
	.string	"RESX"
.LASF584:
	.string	"dest"
.LASF212:
	.string	"PARALLEL"
.LASF13:
	.string	"num_elem"
.LASF75:
	.string	"_IO_backup_base"
.LASF262:
	.string	"UNORDERED"
.LASF161:
	.string	"MAX_MACHINE_MODE"
.LASF66:
	.string	"_IO_read_ptr"
.LASF337:
	.string	"global_live_at_start"
.LASF40:
	.string	"FLOAT_INT_SSE_REGS"
.LASF179:
	.string	"MATCH_SCRATCH"
.LASF229:
	.string	"CONST"
.LASF479:
	.string	"regno_pointer_align"
.LASF278:
	.string	"SQRT"
.LASF402:
	.string	"GR_CC0"
.LASF617:
	.string	"perhaps_ends_bb_p"
.LASF162:
	.string	"mode_class"
.LASF244:
	.string	"MULT"
.LASF167:
	.string	"MODE_CC"
.LASF335:
	.string	"local_set"
.LASF110:
	.string	"PQImode"
.LASF469:
	.string	"sequence_rtl_expr"
.LASF142:
	.string	"V8HImode"
.LASF633:
	.string	"subreg"
.LASF527:
	.string	"x_temp_slots"
.LASF514:
	.string	"x_stack_slot_list"
.LASF81:
	.string	"_old_offset"
.LASF207:
	.string	"CALL_INSN"
.LASF641:
	.string	"dest_regno"
.LASF232:
	.string	"SUBREG"
.LASF549:
	.string	"calls_longjmp"
.LASF145:
	.string	"V16QImode"
.LASF374:
	.string	"REG_ALWAYS_RETURN"
.LASF631:
	.string	"src_no"
.LASF494:
	.string	"decl"
.LASF99:
	.string	"long long int"
.LASF352:
	.string	"REG_LIBCALL"
.LASF80:
	.string	"_flags2"
.LASF121:
	.string	"QCmode"
.LASF230:
	.string	"VALUE"
.LASF210:
	.string	"NOTE"
.LASF415:
	.string	"OP_OUT"
.LASF705:
	.string	"this_adjust"
.LASF48:
	.string	"sse_nregs"
.LASF615:
	.string	"replacement_quality"
.LASF254:
	.string	"UMIN"
.LASF180:
	.string	"MATCH_DUP"
.LASF329:
	.string	"basic_block_def"
.LASF634:
	.string	"old_mode"
.LASF683:
	.string	"overlap"
.LASF673:
	.string	"dst_reg"
.LASF570:
	.string	"varasm_status"
.LASF7:
	.string	"used"
.LASF648:
	.string	"dst_death"
.LASF381:
	.string	"NOTE_INSN_LOOP_BEG"
.LASF618:
	.string	"optimize_reg_copy_1"
.LASF628:
	.string	"optimize_reg_copy_2"
.LASF629:
	.string	"optimize_reg_copy_3"
.LASF578:
	.string	"bitmap_element"
.LASF506:
	.string	"x_function_call_count"
.LASF576:
	.string	"prev"
.LASF128:
	.string	"CHImode"
.LASF397:
	.string	"NOTE_INSN_BASIC_BLOCK"
.LASF202:
	.string	"SET_ATTR_ALTERNATIVE"
.LASF659:
	.string	"src_class"
.LASF478:
	.string	"regno_pointer_align_length"
.LASF473:
	.string	"x_first_insn"
.LASF487:
	.string	"x_apply_args_value"
.LASF38:
	.string	"FLOAT_INT_REGS"
.LASF226:
	.string	"CONST_DOUBLE"
.LASF442:
	.string	"first_uid"
.LASF157:
	.string	"CCNOmode"
.LASF138:
	.string	"V4HImode"
.LASF599:
	.string	"class0"
.LASF600:
	.string	"class1"
.LASF264:
	.string	"UNEQ"
.LASF247:
	.string	"ASHIFT"
.LASF252:
	.string	"SMIN"
.LASF239:
	.string	"IF_THEN_ELSE"
.LASF702:
	.string	"last_sp_adjust"
.LASF424:
	.string	"dup_num"
.LASF678:
	.string	"post_inc"
.LASF697:
	.string	"try_apply_stack_adjustment"
.LASF393:
	.string	"NOTE_INSN_REPEATED_LINE_NUMBER"
.LASF495:
	.string	"outer"
.LASF733:
	.string	"inc_code"
.LASF390:
	.string	"NOTE_INSN_FUNCTION_BEG"
.LASF476:
	.string	"x_last_linenum"
.LASF52:
	.string	"unsigned int"
.LASF667:
	.string	"find_matches"
.LASF731:
	.string	"tree_node"
.LASF654:
	.string	"copy_dst"
.LASF619:
	.string	"note"
.LASF511:
	.string	"x_cleanup_label"
.LASF303:
	.string	"max_after_vec"
.LASF265:
	.string	"UNGE"
.LASF660:
	.string	"dst_class"
.LASF419:
	.string	"operand_loc"
.LASF59:
	.string	"short int"
.LASF333:
	.string	"pred"
.LASF266:
	.string	"UNGT"
.LASF555:
	.string	"has_computed_jump"
.LASF422:
	.string	"operand_type"
.LASF708:
	.string	"flags_set_1_rtx"
.LASF558:
	.string	"profile"
.LASF83:
	.string	"_vtable_offset"
.LASF541:
	.string	"preferred_stack_boundary"
.LASF102:
	.string	"VOIDmode"
.LASF375:
	.string	"REG_VTABLE_REF"
.LASF410:
	.string	"GR_VIRTUAL_OUTGOING_ARGS"
.LASF282:
	.string	"LO_SUM"
.LASF653:
	.string	"copy_src"
.LASF342:
	.string	"frequency"
.LASF315:
	.string	"rtwint"
.LASF583:
	.string	"succ_next"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
