	.file	"reg-stack.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I . -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 reg-stack.c -mtune=generic -march=x86-64 -g
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
	.local	stack_regs_mentioned_data
	.comm	stack_regs_mentioned_data,8,8
	.local	current_block
	.comm	current_block,8,8
	.local	FP_mode_reg
	.comm	FP_mode_reg,3776,32
	.local	nan
	.comm	nan,8,8
	.type	stack_regs_mentioned_p, @function
stack_regs_mentioned_p:
.LFB2:
	.file 1 "reg-stack.c"
	.loc 1 275 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# pat, pat
	.loc 1 279 0
	movq	-24(%rbp), %rax	# pat, tmp83
	movzwl	(%rax), %eax	# pat_4(D)->code, D.15907
	cmpw	$61, %ax	#, D.15907
	jne	.L2	#,
	.loc 1 279 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# pat, tmp84
	movl	8(%rax), %eax	# pat_4(D)->fld[0].rtuint, D.15908
	cmpl	$7, %eax	#, D.15908
	jbe	.L2	#,
	movq	-24(%rbp), %rax	# pat, tmp85
	movl	8(%rax), %eax	# pat_4(D)->fld[0].rtuint, D.15908
	cmpl	$15, %eax	#, D.15908
	ja	.L2	#,
	.loc 1 280 0 is_stmt 1
	movl	$1, %eax	#, D.15906
	jmp	.L3	#
.L2:
	.loc 1 282 0
	movq	-24(%rbp), %rax	# pat, tmp86
	movzwl	(%rax), %eax	# pat_4(D)->code, D.15907
	movzwl	%ax, %eax	# D.15907, D.15906
	cltq
	movq	rtx_format(,%rax,8), %rax	# rtx_format, tmp88
	movq	%rax, -8(%rbp)	# tmp88, fmt
	.loc 1 283 0
	movq	-24(%rbp), %rax	# pat, tmp89
	movzwl	(%rax), %eax	# pat_4(D)->code, D.15907
	movzwl	%ax, %eax	# D.15907, D.15906
	cltq
	movzbl	rtx_length(%rax), %eax	# rtx_length, D.15909
	movzbl	%al, %eax	# D.15909, D.15906
	subl	$1, %eax	#, tmp91
	movl	%eax, -16(%rbp)	# tmp91, i
	jmp	.L4	#
.L10:
	.loc 1 285 0
	movl	-16(%rbp), %eax	# i, tmp92
	movslq	%eax, %rdx	# tmp92, D.15910
	movq	-8(%rbp), %rax	# fmt, tmp93
	addq	%rdx, %rax	# D.15910, D.15911
	movzbl	(%rax), %eax	# *_18, D.15912
	cmpb	$69, %al	#, D.15912
	jne	.L5	#,
.LBB2:
	.loc 1 289 0
	movq	-24(%rbp), %rax	# pat, tmp94
	movl	-16(%rbp), %edx	# i, tmp96
	movslq	%edx, %rdx	# tmp96, tmp95
	movq	8(%rax,%rdx,8), %rax	# pat_4(D)->fld[i_1].rtvec, D.15913
	movl	(%rax), %eax	# _20->num_elem, D.15906
	subl	$1, %eax	#, tmp97
	movl	%eax, -12(%rbp)	# tmp97, j
	jmp	.L6	#
.L8:
	.loc 1 290 0
	movq	-24(%rbp), %rax	# pat, tmp98
	movl	-16(%rbp), %edx	# i, tmp100
	movslq	%edx, %rdx	# tmp100, tmp99
	movq	8(%rax,%rdx,8), %rax	# pat_4(D)->fld[i_1].rtvec, D.15913
	movl	-12(%rbp), %edx	# j, tmp102
	movslq	%edx, %rdx	# tmp102, tmp101
	movq	8(%rax,%rdx,8), %rax	# _23->elem, D.15914
	movq	%rax, %rdi	# D.15914,
	call	stack_regs_mentioned_p	#
	testl	%eax, %eax	# D.15906
	je	.L7	#,
	.loc 1 291 0
	movl	$1, %eax	#, D.15906
	jmp	.L3	#
.L7:
	.loc 1 289 0
	subl	$1, -12(%rbp)	#, j
.L6:
	.loc 1 289 0 is_stmt 0 discriminator 1
	cmpl	$0, -12(%rbp)	#, j
	jns	.L8	#,
.LBE2:
	jmp	.L9	#
.L5:
	.loc 1 293 0 is_stmt 1
	movl	-16(%rbp), %eax	# i, tmp103
	movslq	%eax, %rdx	# tmp103, D.15910
	movq	-8(%rbp), %rax	# fmt, tmp104
	addq	%rdx, %rax	# D.15910, D.15911
	movzbl	(%rax), %eax	# *_29, D.15912
	cmpb	$101, %al	#, D.15912
	jne	.L9	#,
	.loc 1 293 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# pat, tmp105
	movl	-16(%rbp), %edx	# i, tmp107
	movslq	%edx, %rdx	# tmp107, tmp106
	movq	8(%rax,%rdx,8), %rax	# pat_4(D)->fld[i_1].rtx, D.15914
	movq	%rax, %rdi	# D.15914,
	call	stack_regs_mentioned_p	#
	testl	%eax, %eax	# D.15906
	je	.L9	#,
	.loc 1 294 0 is_stmt 1
	movl	$1, %eax	#, D.15906
	jmp	.L3	#
.L9:
	.loc 1 283 0
	subl	$1, -16(%rbp)	#, i
.L4:
	.loc 1 283 0 is_stmt 0 discriminator 1
	cmpl	$0, -16(%rbp)	#, i
	jns	.L10	#,
	.loc 1 297 0 is_stmt 1
	movl	$0, %eax	#, D.15906
.L3:
	.loc 1 298 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	stack_regs_mentioned_p, .-stack_regs_mentioned_p
	.globl	stack_regs_mentioned
	.type	stack_regs_mentioned, @function
stack_regs_mentioned:
.LFB3:
	.loc 1 305 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# insn, insn
	.loc 1 309 0
	movq	-24(%rbp), %rax	# insn, tmp80
	movzwl	(%rax), %eax	# insn_4(D)->code, D.15916
	movzwl	%ax, %eax	# D.15916, D.15915
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.15917
	cmpb	$105, %al	#, D.15917
	jne	.L12	#,
	.loc 1 309 0 is_stmt 0 discriminator 1
	movq	stack_regs_mentioned_data(%rip), %rax	# stack_regs_mentioned_data, stack_regs_mentioned_data.0
	testq	%rax, %rax	# stack_regs_mentioned_data.0
	jne	.L13	#,
.L12:
	.loc 1 310 0 is_stmt 1
	movl	$0, %eax	#, D.15915
	jmp	.L14	#
.L13:
	.loc 1 312 0
	movq	-24(%rbp), %rax	# insn, tmp82
	movl	8(%rax), %eax	# insn_4(D)->fld[0].rtint, D.15915
	movl	%eax, -8(%rbp)	# D.15915, uid
	.loc 1 313 0
	movq	stack_regs_mentioned_data(%rip), %rax	# stack_regs_mentioned_data, stack_regs_mentioned_data.1
	movq	(%rax), %rax	# stack_regs_mentioned_data.1_11->num_elements, D.15918
	movl	%eax, -4(%rbp)	# D.15918, max
	.loc 1 314 0
	movl	-8(%rbp), %eax	# uid, tmp83
	cmpl	-4(%rbp), %eax	# max, tmp83
	jb	.L15	#,
	.loc 1 318 0
	movl	-8(%rbp), %eax	# uid, tmp84
	movl	$-858993459, %edx	#, tmp86
	mull	%edx	# tmp86
	shrl	$4, %edx	#, D.15919
	movl	-8(%rbp), %eax	# uid, tmp90
	addl	%edx, %eax	# D.15919, tmp89
	movl	%eax, -4(%rbp)	# tmp89, max
	.loc 1 319 0
	movl	-4(%rbp), %edx	# max, D.15918
	movq	stack_regs_mentioned_data(%rip), %rax	# stack_regs_mentioned_data, stack_regs_mentioned_data.2
	movq	%rdx, %rsi	# D.15918,
	movq	%rax, %rdi	# stack_regs_mentioned_data.2,
	call	varray_grow	#
	movq	%rax, stack_regs_mentioned_data(%rip)	# stack_regs_mentioned_data.3, stack_regs_mentioned_data
.L15:
	.loc 1 322 0
	movq	stack_regs_mentioned_data(%rip), %rdx	# stack_regs_mentioned_data, stack_regs_mentioned_data.4
	movl	-8(%rbp), %eax	# uid, tmp91
	movzbl	32(%rdx,%rax), %eax	# stack_regs_mentioned_data.4_19->data.c, D.15917
	movsbl	%al, %eax	# D.15917, tmp92
	movl	%eax, -12(%rbp)	# tmp92, test
	.loc 1 323 0
	cmpl	$0, -12(%rbp)	#, test
	jne	.L16	#,
	.loc 1 326 0
	movq	-24(%rbp), %rax	# insn, tmp93
	movq	32(%rax), %rax	# insn_4(D)->fld[3].rtx, D.15920
	movq	%rax, %rdi	# D.15920,
	call	stack_regs_mentioned_p	#
	testl	%eax, %eax	# D.15915
	je	.L17	#,
	.loc 1 326 0 is_stmt 0 discriminator 1
	movl	$1, %eax	#, iftmp.5
	jmp	.L18	#
.L17:
	.loc 1 326 0 discriminator 2
	movl	$2, %eax	#, iftmp.5
.L18:
	.loc 1 326 0 discriminator 3
	movl	%eax, -12(%rbp)	# iftmp.5, test
	.loc 1 327 0 is_stmt 1 discriminator 3
	movq	stack_regs_mentioned_data(%rip), %rdx	# stack_regs_mentioned_data, stack_regs_mentioned_data.6
	movl	-12(%rbp), %eax	# test, tmp94
	movl	%eax, %ecx	# tmp94, D.15917
	movl	-8(%rbp), %eax	# uid, tmp95
	movb	%cl, 32(%rdx,%rax)	# D.15917, stack_regs_mentioned_data.6_27->data.c
.L16:
	.loc 1 330 0
	cmpl	$1, -12(%rbp)	#, test
	sete	%al	#, D.15921
	movzbl	%al, %eax	# D.15921, D.15915
.L14:
	.loc 1 331 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	stack_regs_mentioned, .-stack_regs_mentioned
	.local	ix86_flags_rtx
	.comm	ix86_flags_rtx,8,8
	.type	next_flags_user, @function
next_flags_user:
.LFB4:
	.loc 1 338 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# insn, insn
	.loc 1 342 0
	jmp	.L20	#
.L23:
	.loc 1 344 0
	movq	-8(%rbp), %rax	# insn, tmp70
	movq	24(%rax), %rax	# insn_1->fld[2].rtx, tmp71
	movq	%rax, -8(%rbp)	# tmp71, insn
	.loc 1 346 0
	movq	-8(%rbp), %rax	# insn, tmp72
	movzwl	(%rax), %eax	# insn_6->code, D.15924
	movzwl	%ax, %eax	# D.15924, D.15925
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.15926
	cmpb	$105, %al	#, D.15926
	jne	.L21	#,
	.loc 1 346 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# insn, tmp74
	movq	32(%rax), %rdx	# insn_6->fld[3].rtx, D.15923
	movq	ix86_flags_rtx(%rip), %rax	# ix86_flags_rtx, ix86_flags_rtx.7
	movq	%rdx, %rsi	# D.15923,
	movq	%rax, %rdi	# ix86_flags_rtx.7,
	call	reg_mentioned_p	#
	testl	%eax, %eax	# D.15925
	je	.L21	#,
	.loc 1 347 0 is_stmt 1
	movq	-8(%rbp), %rax	# insn, D.15922
	jmp	.L22	#
.L21:
	.loc 1 349 0
	movq	-8(%rbp), %rax	# insn, tmp75
	movzwl	(%rax), %eax	# insn_6->code, D.15924
	cmpw	$34, %ax	#, D.15924
	jne	.L20	#,
	.loc 1 350 0
	movl	$0, %eax	#, D.15922
	jmp	.L22	#
.L20:
	.loc 1 342 0 discriminator 1
	movq	current_block(%rip), %rax	# current_block, current_block.8
	movq	8(%rax), %rax	# current_block.8_4->end, D.15923
	cmpq	-8(%rbp), %rax	# insn, D.15923
	jne	.L23	#,
	.loc 1 352 0
	movl	$0, %eax	#, D.15922
.L22:
	.loc 1 353 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	next_flags_user, .-next_flags_user
	.type	straighten_stack, @function
straighten_stack:
.LFB5:
	.loc 1 362 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -56(%rbp)	# insn, insn
	movq	%rsi, -64(%rbp)	# regstack, regstack
	.loc 1 362 0
	movq	%fs:40, %rax	#, tmp77
	movq	%rax, -8(%rbp)	# tmp77, D.15930
	xorl	%eax, %eax	# tmp77
	.loc 1 370 0
	movq	-64(%rbp), %rax	# regstack, tmp67
	movl	(%rax), %eax	# regstack_2(D)->top, D.15927
	testl	%eax, %eax	# D.15927
	jle	.L24	#,
	.loc 1 373 0
	movq	-64(%rbp), %rax	# regstack, tmp68
	movq	8(%rax), %rax	# regstack_2(D)->reg_set, D.15928
	movq	%rax, -24(%rbp)	# D.15928, temp_stack.reg_set
	.loc 1 375 0
	movq	-64(%rbp), %rax	# regstack, tmp69
	movl	(%rax), %eax	# regstack_2(D)->top, D.15927
	movl	%eax, -32(%rbp)	# D.15927, temp_stack.top
	movl	-32(%rbp), %eax	# temp_stack.top, tmp70
	movl	%eax, -36(%rbp)	# tmp70, top
	jmp	.L27	#
.L28:
	.loc 1 376 0 discriminator 2
	movl	-32(%rbp), %eax	# temp_stack.top, D.15927
	movl	%eax, %edx	# D.15927, D.15929
	movl	-36(%rbp), %eax	# top, tmp71
	subl	%eax, %edx	# D.15929, D.15929
	movl	%edx, %eax	# D.15929, D.15929
	leal	8(%rax), %edx	#, D.15929
	movl	-36(%rbp), %eax	# top, tmp73
	cltq
	movb	%dl, -16(%rbp,%rax)	# D.15929, temp_stack.reg
	.loc 1 375 0 discriminator 2
	subl	$1, -36(%rbp)	#, top
.L27:
	.loc 1 375 0 is_stmt 0 discriminator 1
	cmpl	$0, -36(%rbp)	#, top
	jns	.L28	#,
	.loc 1 378 0 is_stmt 1
	leaq	-32(%rbp), %rdx	#, tmp74
	movq	-64(%rbp), %rsi	# regstack, tmp75
	movq	-56(%rbp), %rax	# insn, tmp76
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# tmp76,
	call	change_stack	#
.L24:
	.loc 1 379 0
	movq	-8(%rbp), %rax	# D.15930, tmp78
	xorq	%fs:40, %rax	#, tmp78
	je	.L29	#,
	call	__stack_chk_fail	#
.L29:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	straighten_stack, .-straighten_stack
	.type	pop_stack, @function
pop_stack:
.LFB6:
	.loc 1 387 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# regstack, regstack
	movl	%esi, -28(%rbp)	# regno, regno
	.loc 1 388 0
	movq	-24(%rbp), %rax	# regstack, tmp71
	movl	(%rax), %eax	# regstack_3(D)->top, tmp72
	movl	%eax, -4(%rbp)	# tmp72, top
	.loc 1 390 0
	movq	-24(%rbp), %rax	# regstack, tmp73
	movq	8(%rax), %rdx	# regstack_3(D)->reg_set, D.15933
	movl	-28(%rbp), %eax	# regno, tmp74
	movl	$1, %esi	#, tmp75
	movl	%eax, %ecx	# tmp74, tmp96
	salq	%cl, %rsi	# tmp96, D.15933
	movq	%rsi, %rax	# D.15933, D.15933
	notq	%rax	# D.15933
	andq	%rax, %rdx	# D.15933, D.15933
	movq	-24(%rbp), %rax	# regstack, tmp76
	movq	%rdx, 8(%rax)	# D.15933, regstack_3(D)->reg_set
	.loc 1 391 0
	movq	-24(%rbp), %rax	# regstack, tmp77
	movl	(%rax), %eax	# regstack_3(D)->top, D.15934
	leal	-1(%rax), %edx	#, D.15934
	movq	-24(%rbp), %rax	# regstack, tmp78
	movl	%edx, (%rax)	# D.15934, regstack_3(D)->top
	.loc 1 393 0
	movq	-24(%rbp), %rdx	# regstack, tmp79
	movl	-4(%rbp), %eax	# top, tmp81
	cltq
	movzbl	16(%rdx,%rax), %eax	# regstack_3(D)->reg, D.15935
	movzbl	%al, %eax	# D.15935, D.15934
	cmpl	-28(%rbp), %eax	# regno, D.15934
	je	.L30	#,
.LBB3:
	.loc 1 396 0
	movq	-24(%rbp), %rax	# regstack, tmp82
	movl	(%rax), %eax	# regstack_3(D)->top, tmp83
	movl	%eax, -12(%rbp)	# tmp83, i
	jmp	.L32	#
.L36:
	.loc 1 397 0
	movq	-24(%rbp), %rdx	# regstack, tmp84
	movl	-12(%rbp), %eax	# i, tmp86
	cltq
	movzbl	16(%rdx,%rax), %eax	# regstack_3(D)->reg, D.15935
	movzbl	%al, %eax	# D.15935, D.15934
	cmpl	-28(%rbp), %eax	# regno, D.15934
	jne	.L33	#,
.LBB4:
	.loc 1 400 0
	movl	-12(%rbp), %eax	# i, tmp87
	movl	%eax, -8(%rbp)	# tmp87, j
	jmp	.L34	#
.L35:
	.loc 1 401 0 discriminator 2
	movl	-8(%rbp), %eax	# j, tmp88
	addl	$1, %eax	#, D.15934
	movq	-24(%rbp), %rdx	# regstack, tmp89
	cltq
	movzbl	16(%rdx,%rax), %ecx	# regstack_3(D)->reg, D.15935
	movq	-24(%rbp), %rdx	# regstack, tmp91
	movl	-8(%rbp), %eax	# j, tmp93
	cltq
	movb	%cl, 16(%rdx,%rax)	# D.15935, regstack_3(D)->reg
	.loc 1 400 0 discriminator 2
	addl	$1, -8(%rbp)	#, j
.L34:
	.loc 1 400 0 is_stmt 0 discriminator 1
	movl	-8(%rbp), %eax	# j, tmp94
	cmpl	-4(%rbp), %eax	# top, tmp94
	jl	.L35	#,
	.loc 1 402 0 is_stmt 1
	jmp	.L30	#
.L33:
.LBE4:
	.loc 1 396 0
	subl	$1, -12(%rbp)	#, i
.L32:
	.loc 1 396 0 is_stmt 0 discriminator 1
	cmpl	$0, -12(%rbp)	#, i
	jns	.L36	#,
.L30:
.LBE3:
	.loc 1 405 0 is_stmt 1
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	pop_stack, .-pop_stack
	.section	.rodata
.LC0:
	.string	"stack_regs_mentioned cache"
	.text
	.globl	reg_to_stack
	.type	reg_to_stack, @function
reg_to_stack:
.LFB7:
	.loc 1 420 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r12	#
	pushq	%rbx	#
	subq	$48, %rsp	#,
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -56(%rbp)	# first, first
	movq	%rsi, -64(%rbp)	# file, file
	.loc 1 425 0
	movq	stack_regs_mentioned_data(%rip), %rax	# stack_regs_mentioned_data, stack_regs_mentioned_data.9
	testq	%rax, %rax	# stack_regs_mentioned_data.9
	je	.L38	#,
	.loc 1 427 0
	movq	stack_regs_mentioned_data(%rip), %rax	# stack_regs_mentioned_data, stack_regs_mentioned_data.10
	testq	%rax, %rax	# stack_regs_mentioned_data.10
	je	.L39	#,
	.loc 1 427 0 is_stmt 0 discriminator 1
	movq	stack_regs_mentioned_data(%rip), %rax	# stack_regs_mentioned_data, stack_regs_mentioned_data.11
	movq	%rax, %rdi	# stack_regs_mentioned_data.11,
	call	free	#
	movq	$0, stack_regs_mentioned_data(%rip)	#, stack_regs_mentioned_data
.L39:
	.loc 1 428 0 is_stmt 1
	movq	$0, stack_regs_mentioned_data(%rip)	#, stack_regs_mentioned_data
.L38:
	.loc 1 431 0
	movl	optimize(%rip), %eax	# optimize, optimize.12
	testl	%eax, %eax	# optimize.12
	jne	.L40	#,
	.loc 1 432 0
	movl	$0, %edi	#,
	call	split_all_insns	#
.L40:
	.loc 1 436 0
	movl	$8, -44(%rbp)	#, i
	jmp	.L41	#
.L44:
	.loc 1 437 0
	movl	-44(%rbp), %eax	# i, tmp95
	cltq
	movzbl	regs_ever_live(%rax), %eax	# regs_ever_live, D.15936
	testb	%al, %al	# D.15936
	je	.L42	#,
	.loc 1 438 0
	jmp	.L43	#
.L42:
	.loc 1 436 0
	addl	$1, -44(%rbp)	#, i
.L41:
	.loc 1 436 0 is_stmt 0 discriminator 1
	cmpl	$15, -44(%rbp)	#, i
	jle	.L44	#,
.L43:
	.loc 1 439 0 is_stmt 1
	cmpl	$15, -44(%rbp)	#, i
	jle	.L45	#,
	.loc 1 440 0
	jmp	.L37	#
.L45:
	.loc 1 444 0
	movl	optimize(%rip), %eax	# optimize, optimize.13
	testl	%eax, %eax	# optimize.13
	jne	.L47	#,
	.loc 1 446 0
	call	max_reg_num	#
	movl	%eax, %ecx	#, D.15937
	movq	-64(%rbp), %rdx	# file, tmp96
	movq	-56(%rbp), %rax	# first, tmp97
	movl	%ecx, %esi	# D.15937,
	movq	%rax, %rdi	# tmp97,
	call	find_basic_blocks	#
	.loc 1 447 0
	movl	$1, %esi	#,
	movl	$0, %edi	#,
	call	count_or_remove_death_notes	#
	.loc 1 448 0
	movq	-64(%rbp), %rcx	# file, tmp98
	movq	-56(%rbp), %rax	# first, tmp99
	movl	$1, %edx	#,
	movq	%rcx, %rsi	# tmp98,
	movq	%rax, %rdi	# tmp99,
	call	life_analysis	#
.L47:
	.loc 1 450 0
	call	mark_dfs_back_edges	#
	.loc 1 453 0
	movl	$64, %edi	#,
	call	alloc_aux_for_blocks	#
	.loc 1 454 0
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.14
	subl	$1, %eax	#, tmp100
	movl	%eax, -44(%rbp)	# tmp100, i
	jmp	.L48	#
.L52:
.LBB5:
	.loc 1 457 0
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.15
	movl	-44(%rbp), %edx	# i, tmp102
	movslq	%edx, %rdx	# tmp102, tmp101
	addq	$4, %rdx	#, tmp103
	movq	(%rax,%rdx,8), %rax	# basic_block_info.15_20->data.bb, tmp104
	movq	%rax, -24(%rbp)	# tmp104, bb
	.loc 1 458 0
	movq	-24(%rbp), %rax	# bb, tmp105
	movq	32(%rax), %rax	# bb_21->pred, tmp106
	movq	%rax, -32(%rbp)	# tmp106, e
	jmp	.L49	#
.L51:
	.loc 1 459 0
	movq	-32(%rbp), %rax	# e, tmp107
	movl	48(%rax), %eax	# e_4->flags, D.15937
	andl	$32, %eax	#, D.15937
	testl	%eax, %eax	# D.15937
	jne	.L50	#,
	.loc 1 460 0
	movq	-32(%rbp), %rax	# e, tmp108
	movq	16(%rax), %rax	# e_4->src, D.15938
	cmpq	$entry_exit_blocks, %rax	#, D.15938
	je	.L50	#,
	.loc 1 461 0
	movq	-24(%rbp), %rax	# bb, tmp109
	movq	80(%rax), %rax	# bb_21->aux, D.15939
	movl	60(%rax), %edx	# MEM[(struct block_info_def *)_26].predecessors, D.15937
	addl	$1, %edx	#, D.15937
	movl	%edx, 60(%rax)	# D.15937, MEM[(struct block_info_def *)_26].predecessors
.L50:
	.loc 1 458 0
	movq	-32(%rbp), %rax	# e, tmp110
	movq	(%rax), %rax	# e_4->pred_next, tmp111
	movq	%rax, -32(%rbp)	# tmp111, e
.L49:
	.loc 1 458 0 is_stmt 0 discriminator 1
	cmpq	$0, -32(%rbp)	#, e
	jne	.L51	#,
.LBE5:
	.loc 1 454 0 is_stmt 1
	subl	$1, -44(%rbp)	#, i
.L48:
	.loc 1 454 0 is_stmt 0 discriminator 1
	cmpl	$0, -44(%rbp)	#, i
	jns	.L52	#,
	.loc 1 465 0 is_stmt 1
	movl	$8, -44(%rbp)	#, i
	jmp	.L53	#
.L58:
.LBB6:
	.loc 1 468 0
	movl	class_narrowest_mode+8(%rip), %eax	# class_narrowest_mode, tmp112
	movl	%eax, -40(%rbp)	# tmp112, mode
	jmp	.L54	#
.L55:
	.loc 1 471 0
	movl	-44(%rbp), %eax	# i, tmp113
	leal	-8(%rax), %r12d	#, D.15937
	movl	-40(%rbp), %ebx	# mode, mode.16
	movl	-44(%rbp), %edx	# i, tmp114
	movl	-40(%rbp), %eax	# mode, tmp115
	movl	%edx, %esi	# tmp114,
	movl	%eax, %edi	# tmp115,
	call	gen_rtx_REG	#
	movq	%rax, %rsi	#, D.15940
	movslq	%ebx, %rdi	# mode.16, tmp116
	movslq	%r12d, %rcx	# D.15937, tmp117
	movq	%rcx, %rdx	# tmp117, tmp118
	leaq	0(,%rdx,4), %rax	#, tmp119
	movq	%rax, %rdx	# tmp119, tmp118
	movq	%rdx, %rax	# tmp118, tmp120
	salq	$4, %rax	#, tmp120
	subq	%rdx, %rax	# tmp118, tmp120
	subq	%rcx, %rax	# tmp117, tmp120
	addq	%rdi, %rax	# tmp116, tmp121
	movq	%rsi, FP_mode_reg(,%rax,8)	# D.15940, FP_mode_reg
	.loc 1 470 0
	movl	-40(%rbp), %eax	# mode, mode.17
	cltq
	movzbl	mode_wider_mode(%rax), %eax	# mode_wider_mode, D.15941
	movzbl	%al, %eax	# D.15941, tmp123
	movl	%eax, -40(%rbp)	# tmp123, mode
.L54:
	.loc 1 468 0 discriminator 1
	cmpl	$0, -40(%rbp)	#, mode
	jne	.L55	#,
	.loc 1 472 0
	movl	class_narrowest_mode+24(%rip), %eax	# class_narrowest_mode, tmp124
	movl	%eax, -40(%rbp)	# tmp124, mode
	jmp	.L56	#
.L57:
	.loc 1 475 0
	movl	-44(%rbp), %eax	# i, tmp125
	leal	-8(%rax), %r12d	#, D.15937
	movl	-40(%rbp), %ebx	# mode, mode.18
	movl	-44(%rbp), %edx	# i, tmp126
	movl	-40(%rbp), %eax	# mode, tmp127
	movl	%edx, %esi	# tmp126,
	movl	%eax, %edi	# tmp127,
	call	gen_rtx_REG	#
	movq	%rax, %rsi	#, D.15940
	movslq	%ebx, %rdi	# mode.18, tmp128
	movslq	%r12d, %rcx	# D.15937, tmp129
	movq	%rcx, %rdx	# tmp129, tmp130
	leaq	0(,%rdx,4), %rax	#, tmp131
	movq	%rax, %rdx	# tmp131, tmp130
	movq	%rdx, %rax	# tmp130, tmp132
	salq	$4, %rax	#, tmp132
	subq	%rdx, %rax	# tmp130, tmp132
	subq	%rcx, %rax	# tmp129, tmp132
	addq	%rdi, %rax	# tmp128, tmp133
	movq	%rsi, FP_mode_reg(,%rax,8)	# D.15940, FP_mode_reg
	.loc 1 474 0
	movl	-40(%rbp), %eax	# mode, mode.19
	cltq
	movzbl	mode_wider_mode(%rax), %eax	# mode_wider_mode, D.15941
	movzbl	%al, %eax	# D.15941, tmp135
	movl	%eax, -40(%rbp)	# tmp135, mode
.L56:
	.loc 1 472 0 discriminator 1
	cmpl	$0, -40(%rbp)	#, mode
	jne	.L57	#,
.LBE6:
	.loc 1 465 0
	addl	$1, -44(%rbp)	#, i
.L53:
	.loc 1 465 0 is_stmt 0 discriminator 1
	cmpl	$15, -44(%rbp)	#, i
	jle	.L58	#,
	.loc 1 478 0 is_stmt 1
	movl	$17, %esi	#,
	movl	$52, %edi	#,
	call	gen_rtx_REG	#
	movq	%rax, ix86_flags_rtx(%rip)	# ix86_flags_rtx.20, ix86_flags_rtx
	.loc 1 487 0
	movl	flag_pic(%rip), %eax	# flag_pic, flag_pic.21
	testl	%eax, %eax	# flag_pic.21
	je	.L59	#,
	.loc 1 488 0
	movq	const_tiny_rtx+120(%rip), %rax	# const_tiny_rtx, nan.22
	movq	%rax, nan(%rip)	# nan.22, nan
	jmp	.L60	#
.L59:
	.loc 1 491 0
	movl	$2143289344, %esi	#,
	movl	$0, %edi	#,
	call	gen_rtx_CONST_INT	#
	movq	%rax, %rsi	# D.15940,
	movl	$15, %edi	#,
	call	gen_lowpart	#
	movq	%rax, nan(%rip)	# nan.23, nan
	.loc 1 492 0
	movq	nan(%rip), %rax	# nan, nan.24
	movq	%rax, %rsi	# nan.24,
	movl	$15, %edi	#,
	call	force_const_mem	#
	movq	%rax, nan(%rip)	# nan.25, nan
.L60:
	.loc 1 496 0
	call	get_max_uid	#
	movl	%eax, -36(%rbp)	# tmp136, max_uid
	.loc 1 497 0
	movl	-36(%rbp), %eax	# max_uid, tmp137
	addl	$1, %eax	#, D.15937
	cltq
	movl	$.LC0, %edx	#,
	movl	$1, %esi	#,
	movq	%rax, %rdi	# D.15942,
	call	varray_init	#
	movq	%rax, stack_regs_mentioned_data(%rip)	# stack_regs_mentioned_data.26, stack_regs_mentioned_data
	.loc 1 500 0
	movq	-64(%rbp), %rax	# file, tmp138
	movq	%rax, %rdi	# tmp138,
	call	convert_regs	#
	.loc 1 502 0
	call	free_aux_for_blocks	#
.L37:
	.loc 1 503 0
	addq	$48, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	reg_to_stack, .-reg_to_stack
	.section	.rodata
.LC1:
	.string	"reg-stack.c"
	.text
	.type	record_label_references, @function
record_label_references:
.LFB8:
	.loc 1 512 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -56(%rbp)	# insn, insn
	movq	%rsi, -64(%rbp)	# pat, pat
	.loc 1 513 0
	movq	-64(%rbp), %rax	# pat, tmp79
	movzwl	(%rax), %eax	# pat_4(D)->code, D.15944
	movzwl	%ax, %eax	# D.15944, tmp80
	movl	%eax, -28(%rbp)	# tmp80, code
	.loc 1 517 0
	cmpl	$67, -28(%rbp)	#, code
	jne	.L62	#,
.LBB7:
	.loc 1 519 0
	movq	-64(%rbp), %rax	# pat, tmp81
	movq	8(%rax), %rax	# pat_4(D)->fld[0].rtx, tmp82
	movq	%rax, -16(%rbp)	# tmp82, label
	.loc 1 522 0
	movq	-16(%rbp), %rax	# label, tmp83
	movzwl	(%rax), %eax	# label_7->code, D.15944
	cmpw	$36, %ax	#, D.15944
	je	.L63	#,
	.loc 1 523 0
	movl	$__FUNCTION__.12901, %edx	#,
	movl	$523, %esi	#,
	movl	$.LC1, %edi	#,
	call	fancy_abort	#
.L63:
	.loc 1 527 0
	movq	-16(%rbp), %rax	# label, tmp84
	movl	8(%rax), %eax	# label_7->fld[0].rtint, D.15945
	testl	%eax, %eax	# D.15945
	jne	.L64	#,
	.loc 1 528 0
	jmp	.L61	#
.L64:
	.loc 1 532 0
	movq	-16(%rbp), %rax	# label, tmp85
	movq	40(%rax), %rax	# label_7->fld[4].rtx, tmp86
	movq	%rax, -24(%rbp)	# tmp86, ref
	jmp	.L66	#
.L69:
	.loc 1 535 0
	movq	-24(%rbp), %rax	# ref, tmp87
	movq	24(%rax), %rax	# ref_2->fld[2].rtx, D.15946
	cmpq	-56(%rbp), %rax	# insn, D.15946
	jne	.L67	#,
	.loc 1 536 0
	jmp	.L61	#
.L67:
	.loc 1 534 0
	movq	-24(%rbp), %rax	# ref, tmp88
	movq	16(%rax), %rax	# ref_2->fld[1].rtx, tmp89
	movq	%rax, -24(%rbp)	# tmp89, ref
.L66:
	.loc 1 532 0 discriminator 1
	cmpq	$0, -24(%rbp)	#, ref
	je	.L68	#,
	.loc 1 533 0
	movq	-24(%rbp), %rax	# ref, tmp90
	cmpq	-16(%rbp), %rax	# label, tmp90
	jne	.L69	#,
.L68:
	.loc 1 538 0
	movq	-64(%rbp), %rax	# pat, tmp91
	movq	-56(%rbp), %rdx	# insn, tmp92
	movq	%rdx, 24(%rax)	# tmp92, pat_4(D)->fld[2].rtx
	.loc 1 539 0
	movq	-16(%rbp), %rax	# label, tmp93
	movq	40(%rax), %rdx	# label_7->fld[4].rtx, D.15946
	movq	-64(%rbp), %rax	# pat, tmp94
	movq	%rdx, 16(%rax)	# D.15946, pat_4(D)->fld[1].rtx
	.loc 1 540 0
	movq	-16(%rbp), %rax	# label, tmp95
	movq	-64(%rbp), %rdx	# pat, tmp96
	movq	%rdx, 40(%rax)	# tmp96, label_7->fld[4].rtx
	.loc 1 542 0
	jmp	.L61	#
.L62:
.LBE7:
	.loc 1 545 0
	movl	-28(%rbp), %eax	# code, code.27
	cltq
	movq	rtx_format(,%rax,8), %rax	# rtx_format, tmp98
	movq	%rax, -8(%rbp)	# tmp98, fmt
	.loc 1 546 0
	movl	-28(%rbp), %eax	# code, code.28
	cltq
	movzbl	rtx_length(%rax), %eax	# rtx_length, D.15947
	movzbl	%al, %eax	# D.15947, D.15945
	subl	$1, %eax	#, tmp100
	movl	%eax, -36(%rbp)	# tmp100, i
	jmp	.L70	#
.L75:
	.loc 1 548 0
	movl	-36(%rbp), %eax	# i, tmp101
	movslq	%eax, %rdx	# tmp101, D.15948
	movq	-8(%rbp), %rax	# fmt, tmp102
	addq	%rdx, %rax	# D.15948, D.15949
	movzbl	(%rax), %eax	# *_22, D.15950
	cmpb	$101, %al	#, D.15950
	jne	.L71	#,
	.loc 1 549 0
	movq	-64(%rbp), %rax	# pat, tmp103
	movl	-36(%rbp), %edx	# i, tmp105
	movslq	%edx, %rdx	# tmp105, tmp104
	movq	8(%rax,%rdx,8), %rdx	# pat_4(D)->fld[i_1].rtx, D.15946
	movq	-56(%rbp), %rax	# insn, tmp106
	movq	%rdx, %rsi	# D.15946,
	movq	%rax, %rdi	# tmp106,
	call	record_label_references	#
.L71:
	.loc 1 550 0
	movl	-36(%rbp), %eax	# i, tmp107
	movslq	%eax, %rdx	# tmp107, D.15948
	movq	-8(%rbp), %rax	# fmt, tmp108
	addq	%rdx, %rax	# D.15948, D.15949
	movzbl	(%rax), %eax	# *_26, D.15950
	cmpb	$69, %al	#, D.15950
	jne	.L72	#,
.LBB8:
	.loc 1 553 0
	movl	$0, -32(%rbp)	#, j
	jmp	.L73	#
.L74:
	.loc 1 554 0 discriminator 2
	movq	-64(%rbp), %rax	# pat, tmp109
	movl	-36(%rbp), %edx	# i, tmp111
	movslq	%edx, %rdx	# tmp111, tmp110
	movq	8(%rax,%rdx,8), %rax	# pat_4(D)->fld[i_1].rtvec, D.15951
	movl	-32(%rbp), %edx	# j, tmp113
	movslq	%edx, %rdx	# tmp113, tmp112
	movq	8(%rax,%rdx,8), %rdx	# _31->elem, D.15946
	movq	-56(%rbp), %rax	# insn, tmp114
	movq	%rdx, %rsi	# D.15946,
	movq	%rax, %rdi	# tmp114,
	call	record_label_references	#
	.loc 1 553 0 discriminator 2
	addl	$1, -32(%rbp)	#, j
.L73:
	.loc 1 553 0 is_stmt 0 discriminator 1
	movq	-64(%rbp), %rax	# pat, tmp115
	movl	-36(%rbp), %edx	# i, tmp117
	movslq	%edx, %rdx	# tmp117, tmp116
	movq	8(%rax,%rdx,8), %rax	# pat_4(D)->fld[i_1].rtvec, D.15951
	movl	(%rax), %eax	# _29->num_elem, D.15945
	cmpl	-32(%rbp), %eax	# j, D.15945
	jg	.L74	#,
.L72:
.LBE8:
	.loc 1 546 0 is_stmt 1
	subl	$1, -36(%rbp)	#, i
.L70:
	.loc 1 546 0 is_stmt 0 discriminator 1
	cmpl	$0, -36(%rbp)	#, i
	jns	.L75	#,
.L61:
	.loc 1 557 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	record_label_references, .-record_label_references
	.type	get_true_reg, @function
get_true_reg:
.LFB9:
	.loc 1 566 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# pat, pat
.L82:
	.loc 1 568 0
	movq	-24(%rbp), %rax	# pat, tmp87
	movq	(%rax), %rax	# *pat_1, D.15953
	movzwl	(%rax), %eax	# _3->code, D.15954
	movzwl	%ax, %eax	# D.15954, D.15955
	cmpl	$123, %eax	#, D.15955
	je	.L78	#,
	cmpl	$123, %eax	#, D.15955
	ja	.L79	#,
	cmpl	$63, %eax	#, D.15955
	je	.L80	#,
	jmp	.L77	#
.L79:
	subl	$125, %eax	#, tmp88
	cmpl	$1, %eax	#, tmp88
	ja	.L77	#,
	jmp	.L78	#
.L80:
.LBB9:
	.loc 1 575 0
	movq	-24(%rbp), %rax	# pat, tmp89
	movq	(%rax), %rax	# *pat_1, D.15953
	movq	8(%rax), %rax	# _6->fld[0].rtx, tmp90
	movq	%rax, -8(%rbp)	# tmp90, subreg
	movq	-8(%rbp), %rax	# subreg, tmp91
	movzwl	(%rax), %eax	# subreg_7->code, D.15954
	cmpw	$61, %ax	#, D.15954
	jne	.L78	#,
	.loc 1 575 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# pat, tmp92
	movq	(%rax), %rax	# *pat_1, D.15953
	movq	8(%rax), %rax	# _9->fld[0].rtx, tmp93
	movq	%rax, -8(%rbp)	# tmp93, subreg
	movq	-8(%rbp), %rax	# subreg, tmp94
	movl	8(%rax), %eax	# subreg_10->fld[0].rtuint, D.15955
	cmpl	$7, %eax	#, D.15955
	jbe	.L78	#,
	movq	-24(%rbp), %rax	# pat, tmp95
	movq	(%rax), %rax	# *pat_1, D.15953
	movq	8(%rax), %rax	# _12->fld[0].rtx, tmp96
	movq	%rax, -8(%rbp)	# tmp96, subreg
	movq	-8(%rbp), %rax	# subreg, tmp97
	movl	8(%rax), %eax	# subreg_13->fld[0].rtuint, D.15955
	cmpl	$15, %eax	#, D.15955
	ja	.L78	#,
.LBB10:
	.loc 1 580 0 is_stmt 1
	movq	-24(%rbp), %rax	# pat, tmp98
	movq	(%rax), %rax	# *pat_1, D.15953
	movzbl	2(%rax), %eax	# _15->mode, D.15956
	.loc 1 577 0
	movzbl	%al, %ecx	# D.15956, D.15957
	.loc 1 579 0
	movq	-24(%rbp), %rax	# pat, tmp99
	movq	(%rax), %rax	# *pat_1, D.15953
	.loc 1 577 0
	movl	16(%rax), %edx	# _18->fld[1].rtuint, D.15955
	.loc 1 578 0
	movq	-8(%rbp), %rax	# subreg, tmp100
	movzbl	2(%rax), %eax	# subreg_13->mode, D.15956
	.loc 1 577 0
	movzbl	%al, %esi	# D.15956, D.15957
	movq	-8(%rbp), %rax	# subreg, tmp101
	movl	8(%rax), %eax	# subreg_13->fld[0].rtuint, D.15955
	movl	%eax, %edi	# D.15955,
	call	subreg_regno_offset	#
	movl	%eax, -12(%rbp)	# D.15955, regno_off
	.loc 1 581 0
	movq	-8(%rbp), %rax	# subreg, tmp102
	movl	8(%rax), %edx	# subreg_13->fld[0].rtuint, D.15955
	movl	-12(%rbp), %eax	# regno_off, regno_off.29
	addl	%edx, %eax	# D.15955, D.15955
	leal	-8(%rax), %edx	#, D.15955
	movq	-8(%rbp), %rax	# subreg, tmp103
	movzbl	2(%rax), %eax	# subreg_13->mode, D.15956
	movzbl	%al, %eax	# D.15956, D.15958
	movslq	%eax, %rsi	# D.15958, tmp104
	movl	%edx, %ecx	# D.15955, tmp105
	movq	%rcx, %rdx	# tmp105, tmp106
	leaq	0(,%rdx,4), %rax	#, tmp107
	movq	%rax, %rdx	# tmp107, tmp106
	movq	%rdx, %rax	# tmp106, tmp108
	salq	$4, %rax	#, tmp108
	subq	%rdx, %rax	# tmp106, tmp108
	subq	%rcx, %rax	# tmp105, tmp108
	addq	%rsi, %rax	# tmp104, tmp109
	movq	FP_mode_reg(,%rax,8), %rdx	# FP_mode_reg, D.15953
	movq	-24(%rbp), %rax	# pat, tmp110
	movq	%rdx, (%rax)	# D.15953, *pat_1
.L77:
	.loc 1 584 0
	movq	-24(%rbp), %rax	# pat, D.15959
	jmp	.L83	#
.L78:
.LBE10:
.LBE9:
	.loc 1 590 0
	movq	-24(%rbp), %rax	# pat, tmp111
	movq	(%rax), %rax	# *pat_1, D.15953
	addq	$8, %rax	#, tmp112
	movq	%rax, -24(%rbp)	# tmp112, pat
	.loc 1 591 0
	jmp	.L82	#
.L83:
	.loc 1 592 0 discriminator 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	get_true_reg, .-get_true_reg
	.section	.rodata
	.align 8
.LC2:
	.string	"output constraint %d must specify a single register"
	.align 8
.LC3:
	.string	"output constraint %d cannot be specified together with \"%s\" clobber"
	.align 8
.LC4:
	.string	"output regs must be grouped at top of stack"
	.align 8
.LC5:
	.string	"implicitly popped regs must be grouped at top of stack"
	.align 8
.LC6:
	.string	"output operand %d must use `&' constraint"
	.text
	.type	check_asm_stack_operands, @function
check_asm_stack_operands:
.LFB10:
	.loc 1 601 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$232, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -232(%rbp)	# insn, insn
	.loc 1 601 0
	movq	%fs:40, %rax	#, tmp293
	movq	%rax, -24(%rbp)	# tmp293, D.15971
	xorl	%eax, %eax	# tmp293
	.loc 1 604 0
	movl	$0, -204(%rbp)	#, malformed_asm
	.loc 1 605 0
	movq	-232(%rbp), %rax	# insn, tmp145
	movq	32(%rax), %rax	# insn_29(D)->fld[3].rtx, tmp146
	movq	%rax, -160(%rbp)	# tmp146, body
	.loc 1 611 0
	movq	$0, -176(%rbp)	#, clobber_reg
	.loc 1 616 0
	movq	-232(%rbp), %rax	# insn, tmp147
	movq	%rax, %rdi	# tmp147,
	call	extract_insn	#
	.loc 1 617 0
	movl	$1, %edi	#,
	call	constrain_operands	#
	.loc 1 618 0
	movl	which_alternative(%rip), %eax	# which_alternative, tmp148
	movl	%eax, -188(%rbp)	# tmp148, alt
	.loc 1 620 0
	call	preprocess_constraints	#
	.loc 1 622 0
	movq	-160(%rbp), %rax	# body, tmp149
	movq	%rax, %rdi	# tmp149,
	call	get_asm_operand_n_inputs	#
	movl	%eax, -184(%rbp)	# tmp150, n_inputs
	.loc 1 623 0
	movzbl	recog_data+996(%rip), %eax	# recog_data.n_operands, D.15962
	movsbl	%al, %eax	# D.15962, D.15961
	subl	-184(%rbp), %eax	# n_inputs, tmp152
	movl	%eax, -180(%rbp)	# tmp152, n_outputs
	.loc 1 625 0
	cmpl	$0, -188(%rbp)	#, alt
	jns	.L85	#,
	.loc 1 627 0
	movl	$1, -204(%rbp)	#, malformed_asm
	.loc 1 629 0
	movq	const_int_rtx+512(%rip), %rax	# const_int_rtx, D.15963
	movq	%rax, %rdx	# D.15963,
	movl	$0, %esi	#,
	movl	$48, %edi	#,
	call	gen_rtx_fmt_e	#
	movq	-232(%rbp), %rdx	# insn, tmp153
	movq	%rax, 32(%rdx)	# D.15963, insn_29(D)->fld[3].rtx
	.loc 1 630 0
	movl	$0, %eax	#, D.15961
	jmp	.L136	#
.L85:
	.loc 1 634 0
	movl	$0, -212(%rbp)	#, i
	jmp	.L87	#
.L89:
	.loc 1 635 0
	movl	-212(%rbp), %eax	# i, tmp155
	cltq
	movq	recog_data(,%rax,8), %rax	# recog_data.operand, D.15963
	movzwl	(%rax), %eax	# _44->code, D.15964
	cmpw	$63, %ax	#, D.15964
	jne	.L88	#,
	.loc 1 636 0
	movl	-212(%rbp), %eax	# i, tmp157
	cltq
	movq	recog_data(,%rax,8), %rax	# recog_data.operand, D.15963
	movq	8(%rax), %rax	# _46->fld[0].rtx, D.15963
	movzwl	(%rax), %eax	# _47->code, D.15964
	cmpw	$61, %ax	#, D.15964
	jne	.L88	#,
	.loc 1 637 0
	movl	-212(%rbp), %eax	# i, tmp159
	cltq
	movq	recog_data(,%rax,8), %rax	# recog_data.operand, D.15963
	movq	8(%rax), %rdx	# _49->fld[0].rtx, D.15963
	movl	-212(%rbp), %eax	# i, tmp161
	cltq
	movq	%rdx, recog_data(,%rax,8)	# D.15963, recog_data.operand
.L88:
	.loc 1 634 0
	addl	$1, -212(%rbp)	#, i
.L87:
	.loc 1 634 0 is_stmt 0 discriminator 1
	movzbl	recog_data+996(%rip), %eax	# recog_data.n_operands, D.15962
	movsbl	%al, %eax	# D.15962, D.15961
	cmpl	-212(%rbp), %eax	# i, D.15961
	jg	.L89	#,
	.loc 1 641 0 is_stmt 1
	movl	$0, -208(%rbp)	#, n_clobbers
	.loc 1 643 0
	movq	-160(%rbp), %rax	# body, tmp162
	movzwl	(%rax), %eax	# body_30->code, D.15964
	cmpw	$39, %ax	#, D.15964
	jne	.L90	#,
	.loc 1 645 0
	movq	-160(%rbp), %rax	# body, tmp163
	movq	8(%rax), %rax	# body_30->fld[0].rtvec, D.15965
	movl	(%rax), %eax	# _54->num_elem, D.15961
	cltq
	salq	$3, %rax	#, D.15966
	leaq	15(%rax), %rdx	#, tmp164
	movl	$16, %eax	#, tmp291
	subq	$1, %rax	#, tmp165
	addq	%rdx, %rax	# tmp164, tmp166
	movl	$16, %ebx	#, tmp292
	movl	$0, %edx	#, tmp169
	divq	%rbx	# tmp292
	imulq	$16, %rax, %rax	#, tmp168, tmp170
	subq	%rax, %rsp	# tmp170,
	movq	%rsp, %rax	#, tmp171
	addq	$15, %rax	#, tmp172
	shrq	$4, %rax	#, tmp173
	salq	$4, %rax	#, tmp174
	movq	%rax, -176(%rbp)	# tmp174, clobber_reg
	.loc 1 647 0
	movl	$0, -212(%rbp)	#, i
	jmp	.L91	#
.L94:
	.loc 1 648 0
	movq	-160(%rbp), %rax	# body, tmp175
	movq	8(%rax), %rax	# body_30->fld[0].rtvec, D.15965
	movl	-212(%rbp), %edx	# i, tmp177
	movslq	%edx, %rdx	# tmp177, tmp176
	movq	8(%rax,%rdx,8), %rax	# _62->elem, D.15963
	movzwl	(%rax), %eax	# _63->code, D.15964
	cmpw	$49, %ax	#, D.15964
	jne	.L92	#,
.LBB11:
	.loc 1 650 0
	movq	-160(%rbp), %rax	# body, tmp178
	movq	8(%rax), %rax	# body_30->fld[0].rtvec, D.15965
	movl	-212(%rbp), %edx	# i, tmp180
	movslq	%edx, %rdx	# tmp180, tmp179
	movq	8(%rax,%rdx,8), %rax	# _65->elem, tmp181
	movq	%rax, -152(%rbp)	# tmp181, clobber
	.loc 1 651 0
	movq	-152(%rbp), %rax	# clobber, tmp182
	movq	8(%rax), %rax	# clobber_66->fld[0].rtx, tmp183
	movq	%rax, -168(%rbp)	# tmp183, reg
	.loc 1 653 0
	movq	-168(%rbp), %rax	# reg, tmp184
	movzwl	(%rax), %eax	# reg_67->code, D.15964
	cmpw	$63, %ax	#, D.15964
	jne	.L93	#,
	.loc 1 653 0 is_stmt 0 discriminator 1
	movq	-168(%rbp), %rax	# reg, tmp185
	movq	8(%rax), %rax	# reg_67->fld[0].rtx, D.15963
	movzwl	(%rax), %eax	# _69->code, D.15964
	cmpw	$61, %ax	#, D.15964
	jne	.L93	#,
	.loc 1 654 0 is_stmt 1
	movq	-168(%rbp), %rax	# reg, tmp186
	movq	8(%rax), %rax	# reg_67->fld[0].rtx, tmp187
	movq	%rax, -168(%rbp)	# tmp187, reg
.L93:
	.loc 1 656 0
	movq	-168(%rbp), %rax	# reg, tmp188
	movzwl	(%rax), %eax	# reg_23->code, D.15964
	cmpw	$61, %ax	#, D.15964
	jne	.L92	#,
	.loc 1 656 0 is_stmt 0 discriminator 1
	movq	-168(%rbp), %rax	# reg, tmp189
	movl	8(%rax), %eax	# reg_23->fld[0].rtuint, D.15967
	cmpl	$7, %eax	#, D.15967
	jbe	.L92	#,
	movq	-168(%rbp), %rax	# reg, tmp190
	movl	8(%rax), %eax	# reg_23->fld[0].rtuint, D.15967
	cmpl	$15, %eax	#, D.15967
	ja	.L92	#,
	.loc 1 658 0 is_stmt 1
	movl	-208(%rbp), %eax	# n_clobbers, tmp191
	cltq
	leaq	0(,%rax,8), %rdx	#, D.15966
	movq	-176(%rbp), %rax	# clobber_reg, tmp192
	addq	%rax, %rdx	# tmp192, D.15968
	movq	-168(%rbp), %rax	# reg, tmp193
	movq	%rax, (%rdx)	# tmp193, *_77
	.loc 1 659 0
	addl	$1, -208(%rbp)	#, n_clobbers
.L92:
.LBE11:
	.loc 1 647 0
	addl	$1, -212(%rbp)	#, i
.L91:
	.loc 1 647 0 is_stmt 0 discriminator 1
	movq	-160(%rbp), %rax	# body, tmp194
	movq	8(%rax), %rax	# body_30->fld[0].rtvec, D.15965
	movl	(%rax), %eax	# _60->num_elem, D.15961
	cmpl	-212(%rbp), %eax	# i, D.15961
	jg	.L94	#,
.L90:
	.loc 1 671 0 is_stmt 1
	leaq	-144(%rbp), %rax	#, tmp195
	movl	$53, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp195,
	call	memset	#
	.loc 1 672 0
	movl	$0, -212(%rbp)	#, i
	jmp	.L95	#
.L102:
	.loc 1 673 0
	movl	-212(%rbp), %eax	# i, tmp197
	cltq
	movq	recog_data(,%rax,8), %rax	# recog_data.operand, D.15963
	movzwl	(%rax), %eax	# _81->code, D.15964
	cmpw	$61, %ax	#, D.15964
	jne	.L96	#,
	.loc 1 673 0 is_stmt 0 discriminator 1
	movl	-212(%rbp), %eax	# i, tmp199
	cltq
	movq	recog_data(,%rax,8), %rax	# recog_data.operand, D.15963
	movl	8(%rax), %eax	# _83->fld[0].rtuint, D.15967
	cmpl	$7, %eax	#, D.15967
	jbe	.L96	#,
	movl	-212(%rbp), %eax	# i, tmp201
	cltq
	movq	recog_data(,%rax,8), %rax	# recog_data.operand, D.15963
	movl	8(%rax), %eax	# _85->fld[0].rtuint, D.15967
	cmpl	$15, %eax	#, D.15967
	ja	.L96	#,
	.loc 1 675 0 is_stmt 1
	movl	-188(%rbp), %eax	# alt, tmp203
	movslq	%eax, %rcx	# tmp203, tmp202
	movl	-212(%rbp), %eax	# i, tmp205
	cltq
	addq	%rax, %rax	# tmp207
	movq	%rax, %rdx	# tmp206, tmp208
	salq	$4, %rdx	#, tmp208
	subq	%rax, %rdx	# tmp206, tmp208
	leaq	(%rdx,%rcx), %rax	#, tmp209
	salq	$5, %rax	#, tmp210
	addq	$recog_op_alt, %rax	#, tmp211
	movl	8(%rax), %eax	# recog_op_alt[i_3][alt_32].class, D.15969
	cltq
	movl	reg_class_size(,%rax,4), %eax	# reg_class_size, D.15967
	cmpl	$1, %eax	#, D.15967
	je	.L97	#,
	.loc 1 677 0
	movl	-212(%rbp), %edx	# i, tmp213
	movq	-232(%rbp), %rax	# insn, tmp214
	movl	$.LC2, %esi	#,
	movq	%rax, %rdi	# tmp214,
	movl	$0, %eax	#,
	call	error_for_asm	#
	.loc 1 678 0
	movl	$1, -204(%rbp)	#, malformed_asm
	jmp	.L96	#
.L97:
.LBB12:
	.loc 1 684 0
	movl	$0, -200(%rbp)	#, j
	jmp	.L98	#
.L101:
	.loc 1 685 0
	movl	-212(%rbp), %eax	# i, tmp216
	cltq
	movq	recog_data(,%rax,8), %rax	# recog_data.operand, D.15963
	movl	8(%rax), %edx	# _92->fld[0].rtuint, D.15967
	movl	-200(%rbp), %eax	# j, tmp217
	cltq
	leaq	0(,%rax,8), %rcx	#, D.15966
	movq	-176(%rbp), %rax	# clobber_reg, tmp218
	addq	%rcx, %rax	# D.15966, D.15968
	movq	(%rax), %rax	# *_96, D.15963
	movl	8(%rax), %eax	# _97->fld[0].rtuint, D.15967
	cmpl	%eax, %edx	# D.15967, D.15967
	jne	.L99	#,
	.loc 1 688 0
	movl	-200(%rbp), %eax	# j, tmp219
	cltq
	leaq	0(,%rax,8), %rdx	#, D.15966
	movq	-176(%rbp), %rax	# clobber_reg, tmp220
	addq	%rdx, %rax	# D.15966, D.15968
	movq	(%rax), %rax	# *_101, D.15963
	movl	8(%rax), %eax	# _102->fld[0].rtuint, D.15967
	.loc 1 687 0
	movl	%eax, %eax	# D.15967, tmp221
	movq	reg_names(,%rax,8), %rcx	# reg_names, D.15970
	movl	-212(%rbp), %edx	# i, tmp222
	movq	-232(%rbp), %rax	# insn, tmp223
	movl	$.LC3, %esi	#,
	movq	%rax, %rdi	# tmp223,
	movl	$0, %eax	#,
	call	error_for_asm	#
	.loc 1 689 0
	movl	$1, -204(%rbp)	#, malformed_asm
	.loc 1 690 0
	jmp	.L100	#
.L99:
	.loc 1 684 0
	addl	$1, -200(%rbp)	#, j
.L98:
	.loc 1 684 0 is_stmt 0 discriminator 1
	movl	-200(%rbp), %eax	# j, tmp224
	cmpl	-208(%rbp), %eax	# n_clobbers, tmp224
	jl	.L101	#,
.L100:
	.loc 1 692 0 is_stmt 1
	movl	-200(%rbp), %eax	# j, tmp225
	cmpl	-208(%rbp), %eax	# n_clobbers, tmp225
	jne	.L96	#,
	.loc 1 693 0
	movl	-212(%rbp), %eax	# i, tmp227
	cltq
	movq	recog_data(,%rax,8), %rax	# recog_data.operand, D.15963
	movl	8(%rax), %eax	# _107->fld[0].rtuint, D.15967
	movl	%eax, %eax	# D.15967, tmp228
	movb	$1, -144(%rbp,%rax)	#, reg_used_as_output
.L96:
.LBE12:
	.loc 1 672 0
	addl	$1, -212(%rbp)	#, i
.L95:
	.loc 1 672 0 is_stmt 0 discriminator 1
	movl	-212(%rbp), %eax	# i, tmp229
	cmpl	-180(%rbp), %eax	# n_outputs, tmp229
	jl	.L102	#,
	.loc 1 699 0 is_stmt 1
	movl	$8, -212(%rbp)	#, i
	jmp	.L103	#
.L106:
	.loc 1 700 0
	movl	-212(%rbp), %eax	# i, tmp231
	cltq
	movzbl	-144(%rbp,%rax), %eax	# reg_used_as_output, D.15962
	testb	%al, %al	# D.15962
	jne	.L104	#,
	.loc 1 701 0
	jmp	.L105	#
.L104:
	.loc 1 699 0
	addl	$1, -212(%rbp)	#, i
.L103:
	.loc 1 699 0 is_stmt 0 discriminator 1
	cmpl	$15, -212(%rbp)	#, i
	jle	.L106	#,
.L105:
	.loc 1 704 0 is_stmt 1
	jmp	.L107	#
.L110:
	.loc 1 705 0
	movl	-212(%rbp), %eax	# i, tmp233
	cltq
	movzbl	-144(%rbp,%rax), %eax	# reg_used_as_output, D.15962
	testb	%al, %al	# D.15962
	je	.L108	#,
	.loc 1 706 0
	jmp	.L109	#
.L108:
	.loc 1 704 0
	addl	$1, -212(%rbp)	#, i
.L107:
	.loc 1 704 0 is_stmt 0 discriminator 1
	cmpl	$15, -212(%rbp)	#, i
	jle	.L110	#,
.L109:
	.loc 1 708 0 is_stmt 1
	cmpl	$16, -212(%rbp)	#, i
	je	.L111	#,
	.loc 1 710 0
	movq	-232(%rbp), %rax	# insn, tmp234
	movl	$.LC4, %esi	#,
	movq	%rax, %rdi	# tmp234,
	movl	$0, %eax	#,
	call	error_for_asm	#
	.loc 1 711 0
	movl	$1, -204(%rbp)	#, malformed_asm
.L111:
	.loc 1 718 0
	leaq	-80(%rbp), %rax	#, tmp235
	movl	$53, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp235,
	call	memset	#
	.loc 1 719 0
	movl	-180(%rbp), %eax	# n_outputs, tmp236
	movl	%eax, -212(%rbp)	# tmp236, i
	jmp	.L112	#
.L119:
	.loc 1 720 0
	movl	-212(%rbp), %eax	# i, tmp238
	cltq
	movq	recog_data(,%rax,8), %rax	# recog_data.operand, D.15963
	movzwl	(%rax), %eax	# _118->code, D.15964
	cmpw	$61, %ax	#, D.15964
	jne	.L113	#,
	.loc 1 720 0 is_stmt 0 discriminator 1
	movl	-212(%rbp), %eax	# i, tmp240
	cltq
	movq	recog_data(,%rax,8), %rax	# recog_data.operand, D.15963
	movl	8(%rax), %eax	# _120->fld[0].rtuint, D.15967
	cmpl	$7, %eax	#, D.15967
	jbe	.L113	#,
	movl	-212(%rbp), %eax	# i, tmp242
	cltq
	movq	recog_data(,%rax,8), %rax	# recog_data.operand, D.15963
	movl	8(%rax), %eax	# _122->fld[0].rtuint, D.15967
	cmpl	$15, %eax	#, D.15967
	ja	.L113	#,
.LBB13:
	.loc 1 726 0 is_stmt 1
	movl	$0, -196(%rbp)	#, j
	jmp	.L114	#
.L117:
	.loc 1 727 0
	movl	-212(%rbp), %eax	# i, tmp244
	cltq
	movq	recog_data(,%rax,8), %rdx	# recog_data.operand, D.15963
	movl	-196(%rbp), %eax	# j, tmp245
	cltq
	leaq	0(,%rax,8), %rcx	#, D.15966
	movq	-176(%rbp), %rax	# clobber_reg, tmp246
	addq	%rcx, %rax	# D.15966, D.15968
	movq	(%rax), %rax	# *_128, D.15963
	movq	%rdx, %rsi	# D.15963,
	movq	%rax, %rdi	# D.15963,
	call	operands_match_p	#
	testl	%eax, %eax	# D.15961
	je	.L115	#,
	.loc 1 728 0
	jmp	.L116	#
.L115:
	.loc 1 726 0
	addl	$1, -196(%rbp)	#, j
.L114:
	.loc 1 726 0 is_stmt 0 discriminator 1
	movl	-196(%rbp), %eax	# j, tmp247
	cmpl	-208(%rbp), %eax	# n_clobbers, tmp247
	jl	.L117	#,
.L116:
	.loc 1 730 0 is_stmt 1
	movl	-196(%rbp), %eax	# j, tmp248
	cmpl	-208(%rbp), %eax	# n_clobbers, tmp248
	jl	.L118	#,
	.loc 1 730 0 is_stmt 0 discriminator 1
	movl	-188(%rbp), %eax	# alt, tmp250
	movslq	%eax, %rcx	# tmp250, tmp249
	movl	-212(%rbp), %eax	# i, tmp252
	cltq
	addq	%rax, %rax	# tmp254
	movq	%rax, %rdx	# tmp253, tmp255
	salq	$4, %rdx	#, tmp255
	subq	%rax, %rdx	# tmp253, tmp255
	leaq	(%rdx,%rcx), %rax	#, tmp256
	salq	$5, %rax	#, tmp257
	addq	$recog_op_alt+16, %rax	#, tmp258
	movl	(%rax), %eax	# recog_op_alt[i_6][alt_32].matches, D.15961
	testl	%eax, %eax	# D.15961
	js	.L113	#,
.L118:
	.loc 1 731 0 is_stmt 1
	movl	-212(%rbp), %eax	# i, tmp260
	cltq
	movq	recog_data(,%rax,8), %rax	# recog_data.operand, D.15963
	movl	8(%rax), %eax	# _133->fld[0].rtuint, D.15967
	movl	%eax, %eax	# D.15967, tmp261
	movb	$1, -80(%rbp,%rax)	#, implicitly_dies
.L113:
.LBE13:
	.loc 1 719 0
	addl	$1, -212(%rbp)	#, i
.L112:
	.loc 1 719 0 is_stmt 0 discriminator 1
	movl	-184(%rbp), %eax	# n_inputs, tmp262
	movl	-180(%rbp), %edx	# n_outputs, tmp263
	addl	%edx, %eax	# tmp263, D.15961
	cmpl	-212(%rbp), %eax	# i, D.15961
	jg	.L119	#,
	.loc 1 735 0 is_stmt 1
	movl	$8, -212(%rbp)	#, i
	jmp	.L120	#
.L123:
	.loc 1 736 0
	movl	-212(%rbp), %eax	# i, tmp265
	cltq
	movzbl	-80(%rbp,%rax), %eax	# implicitly_dies, D.15962
	testb	%al, %al	# D.15962
	jne	.L121	#,
	.loc 1 737 0
	jmp	.L122	#
.L121:
	.loc 1 735 0
	addl	$1, -212(%rbp)	#, i
.L120:
	.loc 1 735 0 is_stmt 0 discriminator 1
	cmpl	$15, -212(%rbp)	#, i
	jle	.L123	#,
.L122:
	.loc 1 740 0 is_stmt 1
	jmp	.L124	#
.L127:
	.loc 1 741 0
	movl	-212(%rbp), %eax	# i, tmp267
	cltq
	movzbl	-80(%rbp,%rax), %eax	# implicitly_dies, D.15962
	testb	%al, %al	# D.15962
	je	.L125	#,
	.loc 1 742 0
	jmp	.L126	#
.L125:
	.loc 1 740 0
	addl	$1, -212(%rbp)	#, i
.L124:
	.loc 1 740 0 is_stmt 0 discriminator 1
	cmpl	$15, -212(%rbp)	#, i
	jle	.L127	#,
.L126:
	.loc 1 744 0 is_stmt 1
	cmpl	$16, -212(%rbp)	#, i
	je	.L128	#,
	.loc 1 746 0
	movq	-232(%rbp), %rax	# insn, tmp268
	movl	$.LC5, %esi	#,
	movq	%rax, %rdi	# tmp268,
	movl	$0, %eax	#,
	call	error_for_asm	#
	.loc 1 748 0
	movl	$1, -204(%rbp)	#, malformed_asm
.L128:
	.loc 1 757 0
	movl	-180(%rbp), %eax	# n_outputs, tmp269
	movl	%eax, -212(%rbp)	# tmp269, i
	jmp	.L129	#
.L134:
	.loc 1 758 0
	movl	-188(%rbp), %eax	# alt, tmp271
	movslq	%eax, %rcx	# tmp271, tmp270
	movl	-212(%rbp), %eax	# i, tmp273
	cltq
	addq	%rax, %rax	# tmp275
	movq	%rax, %rdx	# tmp274, tmp276
	salq	$4, %rdx	#, tmp276
	subq	%rax, %rdx	# tmp274, tmp276
	leaq	(%rdx,%rcx), %rax	#, tmp277
	salq	$5, %rax	#, tmp278
	addq	$recog_op_alt+16, %rax	#, tmp279
	movl	(%rax), %eax	# recog_op_alt[i_9][alt_32].matches, D.15961
	cmpl	$-1, %eax	#, D.15961
	jne	.L130	#,
.LBB14:
	.loc 1 762 0
	movl	$0, -192(%rbp)	#, j
	jmp	.L131	#
.L133:
	.loc 1 763 0
	movl	-212(%rbp), %eax	# i, tmp281
	cltq
	movq	recog_data(,%rax,8), %rdx	# recog_data.operand, D.15963
	movl	-192(%rbp), %eax	# j, tmp283
	cltq
	movq	recog_data(,%rax,8), %rax	# recog_data.operand, D.15963
	movq	%rdx, %rsi	# D.15963,
	movq	%rax, %rdi	# D.15963,
	call	operands_match_p	#
	testl	%eax, %eax	# D.15961
	je	.L132	#,
	.loc 1 765 0
	movl	-192(%rbp), %edx	# j, tmp284
	movq	-232(%rbp), %rax	# insn, tmp285
	movl	$.LC6, %esi	#,
	movq	%rax, %rdi	# tmp285,
	movl	$0, %eax	#,
	call	error_for_asm	#
	.loc 1 767 0
	movl	$1, -204(%rbp)	#, malformed_asm
.L132:
	.loc 1 762 0
	addl	$1, -192(%rbp)	#, j
.L131:
	.loc 1 762 0 is_stmt 0 discriminator 1
	movl	-192(%rbp), %eax	# j, tmp286
	cmpl	-180(%rbp), %eax	# n_outputs, tmp286
	jl	.L133	#,
.L130:
.LBE14:
	.loc 1 757 0 is_stmt 1
	addl	$1, -212(%rbp)	#, i
.L129:
	.loc 1 757 0 is_stmt 0 discriminator 1
	movl	-184(%rbp), %eax	# n_inputs, tmp287
	movl	-180(%rbp), %edx	# n_outputs, tmp288
	addl	%edx, %eax	# tmp288, D.15961
	cmpl	-212(%rbp), %eax	# i, D.15961
	jg	.L134	#,
	.loc 1 771 0 is_stmt 1
	cmpl	$0, -204(%rbp)	#, malformed_asm
	je	.L135	#,
	.loc 1 774 0
	movq	const_int_rtx+512(%rip), %rax	# const_int_rtx, D.15963
	movq	%rax, %rdx	# D.15963,
	movl	$0, %esi	#,
	movl	$48, %edi	#,
	call	gen_rtx_fmt_e	#
	movq	-232(%rbp), %rdx	# insn, tmp289
	movq	%rax, 32(%rdx)	# D.15963, insn_29(D)->fld[3].rtx
	.loc 1 775 0
	movl	$0, %eax	#, D.15961
	jmp	.L136	#
.L135:
	.loc 1 778 0
	movl	$1, %eax	#, D.15961
.L136:
	.loc 1 779 0
	movq	-24(%rbp), %rbx	# D.15971, tmp294
	xorq	%fs:40, %rbx	#, tmp294
	je	.L137	#,
	call	__stack_chk_fail	#
.L137:
	movq	-8(%rbp), %rbx	#,
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	check_asm_stack_operands, .-check_asm_stack_operands
	.type	get_asm_operand_n_inputs, @function
get_asm_operand_n_inputs:
.LFB11:
	.loc 1 789 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# body, body
	.loc 1 790 0
	movq	-8(%rbp), %rax	# body, tmp83
	movzwl	(%rax), %eax	# body_2(D)->code, D.15979
	cmpw	$47, %ax	#, D.15979
	jne	.L139	#,
	.loc 1 790 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# body, tmp84
	movq	16(%rax), %rax	# body_2(D)->fld[1].rtx, D.15980
	movzwl	(%rax), %eax	# _4->code, D.15979
	cmpw	$41, %ax	#, D.15979
	jne	.L139	#,
	.loc 1 791 0 is_stmt 1
	movq	-8(%rbp), %rax	# body, tmp85
	movq	16(%rax), %rax	# body_2(D)->fld[1].rtx, D.15980
	movq	32(%rax), %rax	# _6->fld[3].rtvec, D.15981
	movl	(%rax), %eax	# _7->num_elem, D.15978
	jmp	.L140	#
.L139:
	.loc 1 793 0
	movq	-8(%rbp), %rax	# body, tmp86
	movzwl	(%rax), %eax	# body_2(D)->code, D.15979
	cmpw	$41, %ax	#, D.15979
	jne	.L141	#,
	.loc 1 794 0
	movq	-8(%rbp), %rax	# body, tmp87
	movq	32(%rax), %rax	# body_2(D)->fld[3].rtvec, D.15981
	movl	(%rax), %eax	# _10->num_elem, D.15978
	jmp	.L140	#
.L141:
	.loc 1 796 0
	movq	-8(%rbp), %rax	# body, tmp88
	movzwl	(%rax), %eax	# body_2(D)->code, D.15979
	cmpw	$39, %ax	#, D.15979
	jne	.L142	#,
	.loc 1 797 0
	movq	-8(%rbp), %rax	# body, tmp89
	movq	8(%rax), %rax	# body_2(D)->fld[0].rtvec, D.15981
	movq	8(%rax), %rax	# _13->elem, D.15980
	movzwl	(%rax), %eax	# _14->code, D.15979
	cmpw	$47, %ax	#, D.15979
	jne	.L142	#,
	.loc 1 798 0
	movq	-8(%rbp), %rax	# body, tmp90
	movq	8(%rax), %rax	# body_2(D)->fld[0].rtvec, D.15981
	movq	8(%rax), %rax	# _16->elem, D.15980
	movq	16(%rax), %rax	# _17->fld[1].rtx, D.15980
	movq	32(%rax), %rax	# _18->fld[3].rtvec, D.15981
	movl	(%rax), %eax	# _19->num_elem, D.15978
	jmp	.L140	#
.L142:
	.loc 1 800 0
	movq	-8(%rbp), %rax	# body, tmp91
	movzwl	(%rax), %eax	# body_2(D)->code, D.15979
	cmpw	$39, %ax	#, D.15979
	jne	.L143	#,
	.loc 1 801 0
	movq	-8(%rbp), %rax	# body, tmp92
	movq	8(%rax), %rax	# body_2(D)->fld[0].rtvec, D.15981
	movq	8(%rax), %rax	# _22->elem, D.15980
	movzwl	(%rax), %eax	# _23->code, D.15979
	cmpw	$41, %ax	#, D.15979
	jne	.L143	#,
	.loc 1 802 0
	movq	-8(%rbp), %rax	# body, tmp93
	movq	8(%rax), %rax	# body_2(D)->fld[0].rtvec, D.15981
	movq	8(%rax), %rax	# _25->elem, D.15980
	movq	32(%rax), %rax	# _26->fld[3].rtvec, D.15981
	movl	(%rax), %eax	# _27->num_elem, D.15978
	jmp	.L140	#
.L143:
	.loc 1 804 0
	movl	$__FUNCTION__.12980, %edx	#,
	movl	$804, %esi	#,
	movl	$.LC1, %edi	#,
	call	fancy_abort	#
.L140:
	.loc 1 805 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	get_asm_operand_n_inputs, .-get_asm_operand_n_inputs
	.type	stack_result, @function
stack_result:
.LFB12:
	.loc 1 813 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# decl, decl
	.loc 1 818 0
	movq	-24(%rbp), %rax	# decl, tmp78
	movq	96(%rax), %rax	# decl_6(D)->decl.result, D.15983
	movq	%rax, %rdi	# D.15983,
	call	aggregate_value_p	#
	testl	%eax, %eax	# D.15984
	je	.L145	#,
	.loc 1 819 0
	movl	$0, %eax	#, D.15982
	jmp	.L146	#
.L145:
	.loc 1 821 0
	movq	-24(%rbp), %rax	# decl, tmp79
	movq	96(%rax), %rax	# decl_6(D)->decl.result, D.15983
	movq	144(%rax), %rax	# _10->decl.rtl, D.15985
	testq	%rax, %rax	# D.15985
	je	.L147	#,
	.loc 1 821 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# decl, tmp80
	movq	96(%rax), %rax	# decl_6(D)->decl.result, D.15983
	movq	144(%rax), %rax	# _12->decl.rtl, D.15985
	testq	%rax, %rax	# D.15985
	je	.L148	#,
	movq	-24(%rbp), %rax	# decl, tmp81
	movq	96(%rax), %rax	# decl_6(D)->decl.result, D.15983
	movq	144(%rax), %rax	# _14->decl.rtl, iftmp.31
	jmp	.L150	#
.L148:
	.loc 1 821 0 discriminator 2
	movq	-24(%rbp), %rax	# decl, tmp82
	movq	96(%rax), %rax	# decl_6(D)->decl.result, D.15983
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.15983,
	call	make_decl_rtl	#
	movq	-24(%rbp), %rax	# decl, tmp83
	movq	96(%rax), %rax	# decl_6(D)->decl.result, D.15983
	movq	144(%rax), %rax	# _17->decl.rtl, iftmp.31
	jmp	.L150	#
.L147:
	movl	$0, %eax	#, iftmp.30
.L150:
	.loc 1 821 0 discriminator 3
	movq	%rax, -8(%rbp)	# iftmp.30, result
	.loc 1 822 0 is_stmt 1 discriminator 3
	cmpq	$0, -8(%rbp)	#, result
	je	.L151	#,
	.loc 1 828 0
	movq	-24(%rbp), %rax	# decl, tmp84
	movq	96(%rax), %rax	# decl_6(D)->decl.result, D.15983
	movq	8(%rax), %rax	# _22->common.type, D.15983
	movq	%rax, %rdi	# D.15983,
	call	ix86_function_value	#
	movq	%rax, -8(%rbp)	# tmp85, result
.L151:
	.loc 1 832 0
	cmpq	$0, -8(%rbp)	#, result
	je	.L152	#,
	.loc 1 832 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# result, tmp86
	movzwl	(%rax), %eax	# result_1->code, D.15986
	cmpw	$61, %ax	#, D.15986
	jne	.L152	#,
	movq	-8(%rbp), %rax	# result, tmp87
	movl	8(%rax), %eax	# result_1->fld[0].rtuint, D.15987
	cmpl	$7, %eax	#, D.15987
	jbe	.L152	#,
	movq	-8(%rbp), %rax	# result, tmp88
	movl	8(%rax), %eax	# result_1->fld[0].rtuint, D.15987
	cmpl	$15, %eax	#, D.15987
	ja	.L152	#,
	movq	-8(%rbp), %rax	# result, iftmp.32
	jmp	.L153	#
.L152:
	.loc 1 832 0 discriminator 2
	movl	$0, %eax	#, iftmp.32
.L153:
.L146:
	.loc 1 833 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	stack_result, .-stack_result
	.type	replace_reg, @function
replace_reg:
.LFB13:
	.loc 1 848 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# reg, reg
	movl	%esi, -12(%rbp)	# regno, regno
	.loc 1 849 0
	cmpl	$7, -12(%rbp)	#, regno
	jle	.L155	#,
	.loc 1 849 0 is_stmt 0 discriminator 1
	cmpl	$15, -12(%rbp)	#, regno
	jg	.L155	#,
	.loc 1 850 0 is_stmt 1
	movq	-8(%rbp), %rax	# reg, tmp74
	movq	(%rax), %rax	# *reg_2(D), D.15988
	movzwl	(%rax), %eax	# _3->code, D.15989
	cmpw	$61, %ax	#, D.15989
	jne	.L155	#,
	.loc 1 850 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# reg, tmp75
	movq	(%rax), %rax	# *reg_2(D), D.15988
	movl	8(%rax), %eax	# _5->fld[0].rtuint, D.15990
	cmpl	$7, %eax	#, D.15990
	jbe	.L155	#,
	movq	-8(%rbp), %rax	# reg, tmp76
	movq	(%rax), %rax	# *reg_2(D), D.15988
	movl	8(%rax), %eax	# _7->fld[0].rtuint, D.15990
	cmpl	$15, %eax	#, D.15990
	jbe	.L156	#,
.L155:
	.loc 1 851 0 is_stmt 1
	movl	$__FUNCTION__.12989, %edx	#,
	movl	$851, %esi	#,
	movl	$.LC1, %edi	#,
	call	fancy_abort	#
.L156:
	.loc 1 853 0
	movq	-8(%rbp), %rax	# reg, tmp77
	movq	(%rax), %rax	# *reg_2(D), D.15988
	movzbl	2(%rax), %eax	# _9->mode, D.15991
	movzbl	%al, %eax	# D.15991, D.15992
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.15993
	cmpl	$2, %eax	#, D.15993
	je	.L158	#,
	cmpl	$6, %eax	#, D.15993
	je	.L158	#,
	.loc 1 855 0
	movl	$__FUNCTION__.12989, %edx	#,
	movl	$855, %esi	#,
	movl	$.LC1, %edi	#,
	call	fancy_abort	#
.L158:
	.loc 1 860 0
	movl	-12(%rbp), %eax	# regno, tmp79
	leal	-8(%rax), %edx	#, D.15992
	movq	-8(%rbp), %rax	# reg, tmp80
	movq	(%rax), %rax	# *reg_2(D), D.15988
	movzbl	2(%rax), %eax	# _14->mode, D.15991
	movzbl	%al, %eax	# D.15991, D.15992
	movslq	%eax, %rsi	# D.15992, tmp81
	movslq	%edx, %rcx	# D.15992, tmp82
	movq	%rcx, %rdx	# tmp82, tmp83
	leaq	0(,%rdx,4), %rax	#, tmp84
	movq	%rax, %rdx	# tmp84, tmp83
	movq	%rdx, %rax	# tmp83, tmp85
	salq	$4, %rax	#, tmp85
	subq	%rdx, %rax	# tmp83, tmp85
	subq	%rcx, %rax	# tmp82, tmp85
	addq	%rsi, %rax	# tmp81, tmp86
	movq	FP_mode_reg(,%rax,8), %rdx	# FP_mode_reg, D.15988
	movq	-8(%rbp), %rax	# reg, tmp87
	movq	%rdx, (%rax)	# D.15988, *reg_2(D)
	.loc 1 861 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	replace_reg, .-replace_reg
	.type	remove_regno_note, @function
remove_regno_note:
.LFB14:
	.loc 1 871 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# insn, insn
	movl	%esi, -28(%rbp)	# note, note
	movl	%edx, -32(%rbp)	# regno, regno
	.loc 1 874 0
	movq	-24(%rbp), %rax	# insn, tmp69
	addq	$56, %rax	#, tmp68
	movq	%rax, -16(%rbp)	# tmp68, note_link
	.loc 1 875 0
	movq	-16(%rbp), %rax	# note_link, tmp70
	movq	(%rax), %rax	# *note_link_4, tmp71
	movq	%rax, -8(%rbp)	# tmp71, this
	jmp	.L160	#
.L163:
	.loc 1 876 0
	movq	-8(%rbp), %rax	# this, tmp72
	movzbl	2(%rax), %eax	# this_2->mode, D.15994
	movzbl	%al, %eax	# D.15994, D.15995
	cmpl	-28(%rbp), %eax	# note, D.15995
	jne	.L161	#,
	.loc 1 877 0
	movq	-8(%rbp), %rax	# this, tmp73
	movq	8(%rax), %rax	# this_2->fld[0].rtx, D.15996
	movzwl	(%rax), %eax	# _9->code, D.15997
	cmpw	$61, %ax	#, D.15997
	jne	.L161	#,
	.loc 1 877 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# this, tmp74
	movq	8(%rax), %rax	# this_2->fld[0].rtx, D.15996
	movl	8(%rax), %eax	# _11->fld[0].rtuint, D.15995
	cmpl	-32(%rbp), %eax	# regno, D.15995
	jne	.L161	#,
	.loc 1 879 0 is_stmt 1
	movq	-8(%rbp), %rax	# this, tmp75
	movq	16(%rax), %rdx	# this_2->fld[1].rtx, D.15996
	movq	-16(%rbp), %rax	# note_link, tmp76
	movq	%rdx, (%rax)	# D.15996, *note_link_1
	.loc 1 880 0
	jmp	.L164	#
.L161:
	.loc 1 883 0
	movq	-8(%rbp), %rax	# this, tmp80
	addq	$16, %rax	#, tmp79
	movq	%rax, -16(%rbp)	# tmp79, note_link
	.loc 1 875 0
	movq	-8(%rbp), %rax	# this, tmp81
	movq	16(%rax), %rax	# this_2->fld[1].rtx, tmp82
	movq	%rax, -8(%rbp)	# tmp82, this
.L160:
	.loc 1 875 0 is_stmt 0 discriminator 1
	cmpq	$0, -8(%rbp)	#, this
	jne	.L163	#,
	.loc 1 885 0 is_stmt 1
	movl	$__FUNCTION__.13003, %edx	#,
	movl	$885, %esi	#,
	movl	$.LC1, %edi	#,
	call	fancy_abort	#
.L164:
	.loc 1 886 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	remove_regno_note, .-remove_regno_note
	.type	get_hard_regnum, @function
get_hard_regnum:
.LFB15:
	.loc 1 896 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# regstack, regstack
	movq	%rsi, -32(%rbp)	# reg, reg
	.loc 1 899 0
	movq	-32(%rbp), %rax	# reg, tmp70
	movzwl	(%rax), %eax	# reg_3(D)->code, D.15998
	cmpw	$61, %ax	#, D.15998
	jne	.L166	#,
	.loc 1 899 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# reg, tmp71
	movl	8(%rax), %eax	# reg_3(D)->fld[0].rtuint, D.15999
	cmpl	$7, %eax	#, D.15999
	jbe	.L166	#,
	movq	-32(%rbp), %rax	# reg, tmp72
	movl	8(%rax), %eax	# reg_3(D)->fld[0].rtuint, D.15999
	cmpl	$15, %eax	#, D.15999
	jbe	.L167	#,
.L166:
	.loc 1 900 0 is_stmt 1
	movl	$__FUNCTION__.13009, %edx	#,
	movl	$900, %esi	#,
	movl	$.LC1, %edi	#,
	call	fancy_abort	#
.L167:
	.loc 1 902 0
	movq	-24(%rbp), %rax	# regstack, tmp73
	movl	(%rax), %eax	# regstack_7(D)->top, tmp74
	movl	%eax, -4(%rbp)	# tmp74, i
	jmp	.L168	#
.L171:
	.loc 1 903 0
	movq	-24(%rbp), %rdx	# regstack, tmp75
	movl	-4(%rbp), %eax	# i, tmp77
	cltq
	movzbl	16(%rdx,%rax), %eax	# regstack_7(D)->reg, D.16000
	movzbl	%al, %edx	# D.16000, D.15999
	movq	-32(%rbp), %rax	# reg, tmp78
	movl	8(%rax), %eax	# reg_3(D)->fld[0].rtuint, D.15999
	cmpl	%eax, %edx	# D.15999, D.15999
	jne	.L169	#,
	.loc 1 904 0
	jmp	.L170	#
.L169:
	.loc 1 902 0
	subl	$1, -4(%rbp)	#, i
.L168:
	.loc 1 902 0 is_stmt 0 discriminator 1
	cmpl	$0, -4(%rbp)	#, i
	jns	.L171	#,
.L170:
	.loc 1 906 0 is_stmt 1
	cmpl	$0, -4(%rbp)	#, i
	js	.L172	#,
	.loc 1 906 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# regstack, tmp79
	movl	(%rax), %eax	# regstack_7(D)->top, D.16001
	addl	$8, %eax	#, D.16001
	subl	-4(%rbp), %eax	# i, iftmp.33
	jmp	.L173	#
.L172:
	.loc 1 906 0 discriminator 2
	movl	$-1, %eax	#, iftmp.33
.L173:
	.loc 1 907 0 is_stmt 1 discriminator 3
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	get_hard_regnum, .-get_hard_regnum
	.type	emit_pop_insn, @function
emit_pop_insn:
.LFB16:
	.loc 1 922 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movq	%rdi, -56(%rbp)	# insn, insn
	movq	%rsi, -64(%rbp)	# regstack, regstack
	movq	%rdx, -72(%rbp)	# reg, reg
	movl	%ecx, -76(%rbp)	# where, where
	.loc 1 928 0
	movq	-72(%rbp), %rax	# reg, tmp92
	movzbl	2(%rax), %eax	# reg_5(D)->mode, D.16003
	movzbl	%al, %eax	# D.16003, D.16004
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.16005
	cmpl	$5, %eax	#, D.16005
	je	.L176	#,
	.loc 1 928 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# reg, tmp94
	movzbl	2(%rax), %eax	# reg_5(D)->mode, D.16003
	movzbl	%al, %eax	# D.16003, D.16004
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.16005
	cmpl	$6, %eax	#, D.16005
	jne	.L177	#,
.L176:
.LBB15:
	.loc 1 930 0 is_stmt 1
	movq	-72(%rbp), %rax	# reg, tmp96
	movl	8(%rax), %eax	# reg_5(D)->fld[0].rtuint, D.16008
	subl	$8, %eax	#, D.16008
	movl	%eax, %eax	# D.16008, tmp97
	imulq	$472, %rax, %rax	#, tmp97, tmp98
	addq	$FP_mode_reg+128, %rax	#, tmp99
	movq	(%rax), %rax	# FP_mode_reg, tmp100
	movq	%rax, -16(%rbp)	# tmp100, reg1
	.loc 1 931 0
	movq	-72(%rbp), %rax	# reg, tmp101
	movl	8(%rax), %eax	# reg_5(D)->fld[0].rtuint, D.16008
	subl	$7, %eax	#, D.16008
	movl	%eax, %eax	# D.16008, tmp102
	imulq	$472, %rax, %rax	#, tmp102, tmp103
	addq	$FP_mode_reg+128, %rax	#, tmp104
	movq	(%rax), %rax	# FP_mode_reg, tmp105
	movq	%rax, -8(%rbp)	# tmp105, reg2
	.loc 1 933 0
	movq	$0, -32(%rbp)	#, pop_insn
	.loc 1 934 0
	movq	-16(%rbp), %rdx	# reg1, tmp106
	movq	-64(%rbp), %rax	# regstack, tmp107
	movq	%rdx, %rsi	# tmp106,
	movq	%rax, %rdi	# tmp107,
	call	get_hard_regnum	#
	testl	%eax, %eax	# D.16004
	js	.L178	#,
	.loc 1 935 0
	movl	-76(%rbp), %ecx	# where, tmp108
	movq	-16(%rbp), %rdx	# reg1, tmp109
	movq	-64(%rbp), %rsi	# regstack, tmp110
	movq	-56(%rbp), %rax	# insn, tmp111
	movq	%rax, %rdi	# tmp111,
	call	emit_pop_insn	#
	movq	%rax, -32(%rbp)	# tmp112, pop_insn
.L178:
	.loc 1 936 0
	movq	-8(%rbp), %rdx	# reg2, tmp113
	movq	-64(%rbp), %rax	# regstack, tmp114
	movq	%rdx, %rsi	# tmp113,
	movq	%rax, %rdi	# tmp114,
	call	get_hard_regnum	#
	testl	%eax, %eax	# D.16004
	js	.L179	#,
	.loc 1 937 0
	movl	-76(%rbp), %ecx	# where, tmp115
	movq	-8(%rbp), %rdx	# reg2, tmp116
	movq	-64(%rbp), %rsi	# regstack, tmp117
	movq	-56(%rbp), %rax	# insn, tmp118
	movq	%rax, %rdi	# tmp118,
	call	emit_pop_insn	#
	movq	%rax, -32(%rbp)	# tmp119, pop_insn
.L179:
	.loc 1 938 0
	cmpq	$0, -32(%rbp)	#, pop_insn
	jne	.L180	#,
	.loc 1 939 0
	movl	$__FUNCTION__.13024, %edx	#,
	movl	$939, %esi	#,
	movl	$.LC1, %edi	#,
	call	fancy_abort	#
.L180:
	.loc 1 940 0
	movq	-32(%rbp), %rax	# pop_insn, D.16002
	jmp	.L181	#
.L177:
.LBE15:
	.loc 1 943 0
	movq	-72(%rbp), %rdx	# reg, tmp120
	movq	-64(%rbp), %rax	# regstack, tmp121
	movq	%rdx, %rsi	# tmp120,
	movq	%rax, %rdi	# tmp121,
	call	get_hard_regnum	#
	movl	%eax, -36(%rbp)	# tmp122, hard_regno
	.loc 1 945 0
	cmpl	$7, -36(%rbp)	#, hard_regno
	jg	.L182	#,
	.loc 1 946 0
	movl	$__FUNCTION__.13024, %edx	#,
	movl	$946, %esi	#,
	movl	$.LC1, %edi	#,
	call	fancy_abort	#
.L182:
	.loc 1 948 0
	movq	FP_mode_reg+128(%rip), %rdx	# FP_mode_reg, D.16006
	movl	-36(%rbp), %eax	# hard_regno, tmp123
	subl	$8, %eax	#, D.16004
	cltq
	imulq	$472, %rax, %rax	#, tmp124, tmp125
	addq	$FP_mode_reg+128, %rax	#, tmp126
	movq	(%rax), %rax	# FP_mode_reg, D.16006
	movq	%rdx, %rcx	# D.16006,
	movq	%rax, %rdx	# D.16006,
	movl	$0, %esi	#,
	movl	$47, %edi	#,
	call	gen_rtx_fmt_ee	#
	movq	%rax, -24(%rbp)	# tmp127, pop_rtx
	.loc 1 951 0
	cmpl	$0, -76(%rbp)	#, where
	jne	.L183	#,
	.loc 1 952 0
	movq	-56(%rbp), %rdx	# insn, tmp128
	movq	-24(%rbp), %rax	# pop_rtx, tmp129
	movq	%rdx, %rsi	# tmp128,
	movq	%rax, %rdi	# tmp129,
	call	emit_insn_after	#
	movq	%rax, -32(%rbp)	# tmp130, pop_insn
	jmp	.L184	#
.L183:
	.loc 1 954 0
	movq	-56(%rbp), %rdx	# insn, tmp131
	movq	-24(%rbp), %rax	# pop_rtx, tmp132
	movq	%rdx, %rsi	# tmp131,
	movq	%rax, %rdi	# tmp132,
	call	emit_insn_before	#
	movq	%rax, -32(%rbp)	# tmp133, pop_insn
.L184:
	.loc 1 957 0
	movq	-32(%rbp), %rax	# pop_insn, tmp134
	movq	56(%rax), %rdx	# pop_insn_3->fld[6].rtx, D.16006
	movq	FP_mode_reg+128(%rip), %rax	# FP_mode_reg, D.16006
	movq	%rdx, %rcx	# D.16006,
	movq	%rax, %rdx	# D.16006,
	movl	$1, %esi	#,
	movl	$3, %edi	#,
	call	gen_rtx_fmt_ee	#
	movq	-32(%rbp), %rdx	# pop_insn, tmp135
	movq	%rax, 56(%rdx)	# D.16006, pop_insn_3->fld[6].rtx
	.loc 1 960 0
	movq	-64(%rbp), %rax	# regstack, tmp136
	movl	(%rax), %edx	# regstack_12(D)->top, D.16004
	movl	$8, %eax	#, tmp137
	subl	-36(%rbp), %eax	# hard_regno, D.16004
	leal	(%rdx,%rax), %esi	#, D.16004
	.loc 1 961 0
	movq	-64(%rbp), %rax	# regstack, tmp138
	movl	(%rax), %eax	# regstack_12(D)->top, D.16004
	movq	-64(%rbp), %rdx	# regstack, tmp139
	cltq
	movzbl	16(%rdx,%rax), %ecx	# regstack_12(D)->reg, D.16003
	movq	-64(%rbp), %rdx	# regstack, tmp141
	movslq	%esi, %rax	# D.16004, tmp142
	movb	%cl, 16(%rdx,%rax)	# D.16003, regstack_12(D)->reg
	.loc 1 962 0
	movq	-64(%rbp), %rax	# regstack, tmp143
	movl	(%rax), %eax	# regstack_12(D)->top, D.16004
	leal	-1(%rax), %edx	#, D.16004
	movq	-64(%rbp), %rax	# regstack, tmp144
	movl	%edx, (%rax)	# D.16004, regstack_12(D)->top
	.loc 1 963 0
	movq	-64(%rbp), %rax	# regstack, tmp145
	movq	8(%rax), %rdx	# regstack_12(D)->reg_set, D.16007
	movq	-72(%rbp), %rax	# reg, tmp146
	movl	8(%rax), %eax	# reg_5(D)->fld[0].rtuint, D.16008
	movl	$1, %esi	#, tmp147
	movl	%eax, %ecx	# D.16004, tmp151
	salq	%cl, %rsi	# tmp151, D.16007
	movq	%rsi, %rax	# D.16007, D.16007
	notq	%rax	# D.16007
	andq	%rax, %rdx	# D.16007, D.16007
	movq	-64(%rbp), %rax	# regstack, tmp148
	movq	%rdx, 8(%rax)	# D.16007, regstack_12(D)->reg_set
	.loc 1 965 0
	movq	-32(%rbp), %rax	# pop_insn, D.16002
.L181:
	.loc 1 966 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	emit_pop_insn, .-emit_pop_insn
	.type	emit_swap_insn, @function
emit_swap_insn:
.LFB17:
	.loc 1 980 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$112, %rsp	#,
	movq	%rdi, -88(%rbp)	# insn, insn
	movq	%rsi, -96(%rbp)	# regstack, regstack
	movq	%rdx, -104(%rbp)	# reg, reg
	.loc 1 985 0
	movq	$0, -40(%rbp)	#, i1set
	.loc 1 987 0
	movq	-104(%rbp), %rdx	# reg, tmp108
	movq	-96(%rbp), %rax	# regstack, tmp109
	movq	%rdx, %rsi	# tmp108,
	movq	%rax, %rdi	# tmp109,
	call	get_hard_regnum	#
	movl	%eax, -68(%rbp)	# tmp110, hard_regno
	.loc 1 989 0
	cmpl	$7, -68(%rbp)	#, hard_regno
	jg	.L186	#,
	.loc 1 990 0
	movl	$__FUNCTION__.13036, %edx	#,
	movl	$990, %esi	#,
	movl	$.LC1, %edi	#,
	call	fancy_abort	#
.L186:
	.loc 1 991 0
	cmpl	$8, -68(%rbp)	#, hard_regno
	jne	.L187	#,
	.loc 1 992 0
	jmp	.L185	#
.L187:
	.loc 1 994 0
	movq	-96(%rbp), %rax	# regstack, tmp111
	movl	(%rax), %edx	# regstack_6(D)->top, D.16009
	movl	$8, %eax	#, tmp112
	subl	-68(%rbp), %eax	# hard_regno, D.16009
	addl	%edx, %eax	# D.16009, tmp113
	movl	%eax, -64(%rbp)	# tmp113, other_reg
	.loc 1 996 0
	movq	-96(%rbp), %rdx	# regstack, tmp114
	movl	-64(%rbp), %eax	# other_reg, tmp116
	cltq
	movzbl	16(%rdx,%rax), %eax	# regstack_6(D)->reg, D.16010
	movzbl	%al, %eax	# D.16010, tmp117
	movl	%eax, -60(%rbp)	# tmp117, tmp
	.loc 1 997 0
	movq	-96(%rbp), %rax	# regstack, tmp118
	movl	(%rax), %eax	# regstack_6(D)->top, D.16009
	movq	-96(%rbp), %rdx	# regstack, tmp119
	cltq
	movzbl	16(%rdx,%rax), %ecx	# regstack_6(D)->reg, D.16010
	movq	-96(%rbp), %rdx	# regstack, tmp121
	movl	-64(%rbp), %eax	# other_reg, tmp123
	cltq
	movb	%cl, 16(%rdx,%rax)	# D.16010, regstack_6(D)->reg
	.loc 1 998 0
	movq	-96(%rbp), %rax	# regstack, tmp124
	movl	(%rax), %eax	# regstack_6(D)->top, D.16009
	movl	-60(%rbp), %edx	# tmp, tmp125
	movl	%edx, %ecx	# tmp125, D.16010
	movq	-96(%rbp), %rdx	# regstack, tmp126
	cltq
	movb	%cl, 16(%rdx,%rax)	# D.16010, regstack_6(D)->reg
	.loc 1 1002 0
	movq	$0, -56(%rbp)	#, i1
	.loc 1 1003 0
	movq	current_block(%rip), %rax	# current_block, current_block.34
	testq	%rax, %rax	# current_block.34
	je	.L189	#,
	.loc 1 1003 0 is_stmt 0 discriminator 1
	movq	current_block(%rip), %rax	# current_block, current_block.35
	movq	(%rax), %rax	# current_block.35_20->head, D.16011
	cmpq	-88(%rbp), %rax	# insn, D.16011
	je	.L189	#,
.LBB16:
	.loc 1 1005 0 is_stmt 1
	movq	-88(%rbp), %rax	# insn, tmp128
	movq	16(%rax), %rax	# insn_22(D)->fld[1].rtx, tmp129
	movq	%rax, -48(%rbp)	# tmp129, tmp
	.loc 1 1006 0
	movq	current_block(%rip), %rax	# current_block, current_block.36
	movq	(%rax), %rax	# current_block.36_24->head, D.16011
	movq	16(%rax), %rax	# _25->fld[1].rtx, tmp130
	movq	%rax, -32(%rbp)	# tmp130, limit
	.loc 1 1007 0
	jmp	.L190	#
.L194:
	.loc 1 1009 0
	movq	-48(%rbp), %rax	# tmp, tmp131
	movzwl	(%rax), %eax	# tmp_2->code, D.16012
	cmpw	$36, %ax	#, D.16012
	je	.L191	#,
	.loc 1 1010 0
	movq	-48(%rbp), %rax	# tmp, tmp132
	movzwl	(%rax), %eax	# tmp_2->code, D.16012
	cmpw	$34, %ax	#, D.16012
	je	.L191	#,
	.loc 1 1011 0
	movq	-48(%rbp), %rax	# tmp, tmp133
	movzwl	(%rax), %eax	# tmp_2->code, D.16012
	cmpw	$37, %ax	#, D.16012
	jne	.L192	#,
	.loc 1 1011 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# tmp, tmp134
	movl	40(%rax), %eax	# tmp_2->fld[4].rtint, D.16009
	cmpl	$-80, %eax	#, D.16009
	je	.L191	#,
.L192:
	.loc 1 1012 0 is_stmt 1
	movq	-48(%rbp), %rax	# tmp, tmp135
	movzwl	(%rax), %eax	# tmp_2->code, D.16012
	cmpw	$32, %ax	#, D.16012
	jne	.L193	#,
	.loc 1 1013 0
	movq	-48(%rbp), %rax	# tmp, tmp136
	movq	%rax, %rdi	# tmp136,
	call	stack_regs_mentioned	#
	testl	%eax, %eax	# D.16009
	je	.L193	#,
.L191:
	.loc 1 1015 0
	movq	-48(%rbp), %rax	# tmp, tmp137
	movq	%rax, -56(%rbp)	# tmp137, i1
	.loc 1 1016 0
	jmp	.L189	#
.L193:
	.loc 1 1018 0
	movq	-48(%rbp), %rax	# tmp, tmp138
	movq	16(%rax), %rax	# tmp_2->fld[1].rtx, tmp139
	movq	%rax, -48(%rbp)	# tmp139, tmp
.L190:
	.loc 1 1007 0 discriminator 1
	movq	-48(%rbp), %rax	# tmp, tmp140
	cmpq	-32(%rbp), %rax	# limit, tmp140
	jne	.L194	#,
.L189:
.LBE16:
	.loc 1 1022 0
	cmpq	$0, -56(%rbp)	#, i1
	je	.L195	#,
	.loc 1 1023 0
	movq	-56(%rbp), %rax	# i1, tmp141
	movzwl	(%rax), %eax	# i1_1->code, D.16012
	movzwl	%ax, %eax	# D.16012, D.16009
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.16013
	cmpb	$105, %al	#, D.16013
	jne	.L196	#,
	.loc 1 1023 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# i1, tmp143
	movq	32(%rax), %rax	# i1_1->fld[3].rtx, D.16011
	movzwl	(%rax), %eax	# _38->code, D.16012
	cmpw	$47, %ax	#, D.16012
	jne	.L197	#,
	.loc 1 1023 0 discriminator 3
	movq	-56(%rbp), %rax	# i1, tmp144
	movq	32(%rax), %rax	# i1_1->fld[3].rtx, iftmp.38
	jmp	.L199	#
.L197:
	.loc 1 1023 0 discriminator 4
	movq	-56(%rbp), %rax	# i1, tmp145
	movq	32(%rax), %rdx	# i1_1->fld[3].rtx, D.16011
	movq	-56(%rbp), %rax	# i1, tmp146
	movq	%rdx, %rsi	# D.16011,
	movq	%rax, %rdi	# tmp146,
	call	single_set_2	#
	jmp	.L199	#
.L196:
	.loc 1 1023 0 discriminator 2
	movl	$0, %eax	#, iftmp.37
.L199:
	.loc 1 1023 0 discriminator 5
	movq	%rax, -40(%rbp)	# iftmp.37, i1set
	cmpq	$0, -40(%rbp)	#, i1set
	je	.L195	#,
.LBB17:
	.loc 1 1025 0 is_stmt 1
	movq	-40(%rbp), %rax	# i1set, tmp147
	addq	$16, %rax	#, D.16014
	movq	%rax, %rdi	# D.16014,
	call	get_true_reg	#
	movq	(%rax), %rax	# *_47, tmp148
	movq	%rax, -24(%rbp)	# tmp148, i1src
	.loc 1 1026 0
	movq	-40(%rbp), %rax	# i1set, tmp149
	addq	$8, %rax	#, D.16014
	movq	%rax, %rdi	# D.16014,
	call	get_true_reg	#
	movq	(%rax), %rax	# *_50, tmp150
	movq	%rax, -16(%rbp)	# tmp150, i1dest
	.loc 1 1031 0
	movq	-16(%rbp), %rax	# i1dest, tmp151
	movzwl	(%rax), %eax	# i1dest_51->code, D.16012
	cmpw	$61, %ax	#, D.16012
	jne	.L200	#,
	.loc 1 1031 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# i1dest, tmp152
	movl	8(%rax), %eax	# i1dest_51->fld[0].rtuint, D.16015
	cmpl	$8, %eax	#, D.16015
	jne	.L200	#,
	.loc 1 1032 0 is_stmt 1
	movq	-24(%rbp), %rax	# i1src, tmp153
	movzwl	(%rax), %eax	# i1src_48->code, D.16012
	cmpw	$61, %ax	#, D.16012
	jne	.L200	#,
	.loc 1 1033 0
	movq	-24(%rbp), %rax	# i1src, tmp154
	movl	8(%rax), %eax	# i1src_48->fld[0].rtuint, D.16015
	movl	-68(%rbp), %edx	# hard_regno, hard_regno.39
	subl	$1, %edx	#, D.16015
	cmpl	%edx, %eax	# D.16015, D.16015
	jne	.L200	#,
	.loc 1 1034 0
	movq	-56(%rbp), %rax	# i1, tmp155
	movl	$8, %edx	#,
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp155,
	call	find_regno_note	#
	testq	%rax, %rax	# D.16011
	jne	.L200	#,
	.loc 1 1035 0
	jmp	.L185	#
.L200:
	.loc 1 1040 0
	movq	-16(%rbp), %rax	# i1dest, tmp156
	movzwl	(%rax), %eax	# i1dest_51->code, D.16012
	cmpw	$61, %ax	#, D.16012
	jne	.L195	#,
	.loc 1 1040 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# i1dest, tmp157
	movl	8(%rax), %edx	# i1dest_51->fld[0].rtuint, D.16015
	movl	-68(%rbp), %eax	# hard_regno, hard_regno.40
	cmpl	%eax, %edx	# hard_regno.40, D.16015
	jne	.L195	#,
	.loc 1 1041 0 is_stmt 1
	movq	-24(%rbp), %rax	# i1src, tmp158
	movzwl	(%rax), %eax	# i1src_48->code, D.16012
	cmpw	$61, %ax	#, D.16012
	jne	.L195	#,
	.loc 1 1041 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# i1src, tmp159
	movl	8(%rax), %eax	# i1src_48->fld[0].rtuint, D.16015
	cmpl	$8, %eax	#, D.16015
	jne	.L195	#,
	.loc 1 1042 0 is_stmt 1
	movq	-56(%rbp), %rax	# i1, tmp160
	movl	$8, %edx	#,
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp160,
	call	find_regno_note	#
	testq	%rax, %rax	# D.16011
	jne	.L195	#,
	.loc 1 1043 0
	jmp	.L185	#
.L195:
.LBE17:
	.loc 1 1046 0
	movq	FP_mode_reg+136(%rip), %rdx	# FP_mode_reg, D.16011
	movl	-68(%rbp), %eax	# hard_regno, tmp161
	subl	$8, %eax	#, D.16009
	cltq
	imulq	$472, %rax, %rax	#, tmp162, tmp163
	addq	$FP_mode_reg+136, %rax	#, tmp164
	movq	(%rax), %rax	# FP_mode_reg, D.16011
	movq	%rdx, %rsi	# D.16011,
	movq	%rax, %rdi	# D.16011,
	call	gen_swapxf	#
	movq	%rax, -8(%rbp)	# tmp165, swap_rtx
	.loc 1 1049 0
	cmpq	$0, -56(%rbp)	#, i1
	je	.L201	#,
	.loc 1 1050 0
	movq	-56(%rbp), %rdx	# i1, tmp166
	movq	-8(%rbp), %rax	# swap_rtx, tmp167
	movq	%rdx, %rsi	# tmp166,
	movq	%rax, %rdi	# tmp167,
	call	emit_insn_after	#
	jmp	.L185	#
.L201:
	.loc 1 1051 0
	movq	current_block(%rip), %rax	# current_block, current_block.41
	testq	%rax, %rax	# current_block.41
	je	.L202	#,
	.loc 1 1052 0
	movq	current_block(%rip), %rax	# current_block, current_block.42
	movq	(%rax), %rdx	# current_block.42_70->head, D.16011
	movq	-8(%rbp), %rax	# swap_rtx, tmp168
	movq	%rdx, %rsi	# D.16011,
	movq	%rax, %rdi	# tmp168,
	call	emit_insn_before	#
	jmp	.L185	#
.L202:
	.loc 1 1054 0
	movq	-88(%rbp), %rdx	# insn, tmp169
	movq	-8(%rbp), %rax	# swap_rtx, tmp170
	movq	%rdx, %rsi	# tmp169,
	movq	%rax, %rdi	# tmp170,
	call	emit_insn_before	#
.L185:
	.loc 1 1055 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	emit_swap_insn, .-emit_swap_insn
	.type	move_for_stack_reg, @function
move_for_stack_reg:
.LFB18:
	.loc 1 1065 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$112, %rsp	#,
	movq	%rdi, -88(%rbp)	# insn, insn
	movq	%rsi, -96(%rbp)	# regstack, regstack
	movq	%rdx, -104(%rbp)	# pat, pat
	.loc 1 1066 0
	movq	-104(%rbp), %rax	# pat, tmp141
	addq	$16, %rax	#, D.16016
	movq	%rax, %rdi	# D.16016,
	call	get_true_reg	#
	movq	%rax, -56(%rbp)	# tmp142, psrc
	.loc 1 1067 0
	movq	-104(%rbp), %rax	# pat, tmp143
	addq	$8, %rax	#, D.16016
	movq	%rax, %rdi	# D.16016,
	call	get_true_reg	#
	movq	%rax, -48(%rbp)	# tmp144, pdest
	.loc 1 1071 0
	movq	-56(%rbp), %rax	# psrc, tmp145
	movq	(%rax), %rax	# *psrc_5, tmp146
	movq	%rax, -40(%rbp)	# tmp146, src
	movq	-48(%rbp), %rax	# pdest, tmp147
	movq	(%rax), %rax	# *pdest_7, tmp148
	movq	%rax, -32(%rbp)	# tmp148, dest
	.loc 1 1073 0
	movq	-40(%rbp), %rax	# src, tmp149
	movzwl	(%rax), %eax	# src_8->code, D.16017
	cmpw	$61, %ax	#, D.16017
	jne	.L204	#,
	.loc 1 1073 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# src, tmp150
	movl	8(%rax), %eax	# src_8->fld[0].rtuint, D.16018
	cmpl	$7, %eax	#, D.16018
	jbe	.L204	#,
	movq	-40(%rbp), %rax	# src, tmp151
	movl	8(%rax), %eax	# src_8->fld[0].rtuint, D.16018
	cmpl	$15, %eax	#, D.16018
	ja	.L204	#,
	movq	-32(%rbp), %rax	# dest, tmp152
	movzwl	(%rax), %eax	# dest_9->code, D.16017
	cmpw	$61, %ax	#, D.16017
	jne	.L204	#,
	movq	-32(%rbp), %rax	# dest, tmp153
	movl	8(%rax), %eax	# dest_9->fld[0].rtuint, D.16018
	cmpl	$7, %eax	#, D.16018
	jbe	.L204	#,
	movq	-32(%rbp), %rax	# dest, tmp154
	movl	8(%rax), %eax	# dest_9->fld[0].rtuint, D.16018
	cmpl	$15, %eax	#, D.16018
	ja	.L204	#,
	.loc 1 1078 0 is_stmt 1
	movq	-40(%rbp), %rax	# src, tmp155
	movl	8(%rax), %edx	# src_8->fld[0].rtuint, D.16018
	movq	-88(%rbp), %rax	# insn, tmp156
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp156,
	call	find_regno_note	#
	movq	%rax, -24(%rbp)	# tmp157, note
	.loc 1 1079 0
	cmpq	$0, -24(%rbp)	#, note
	je	.L205	#,
.LBB18:
	.loc 1 1084 0
	movq	-40(%rbp), %rax	# src, tmp158
	movl	8(%rax), %edx	# src_8->fld[0].rtuint, D.16018
	movq	-32(%rbp), %rax	# dest, tmp159
	movl	8(%rax), %eax	# dest_9->fld[0].rtuint, D.16018
	cmpl	%eax, %edx	# D.16018, D.16018
	jne	.L206	#,
	.loc 1 1085 0
	movl	$__FUNCTION__.13055, %edx	#,
	movl	$1085, %esi	#,
	movl	$.LC1, %edi	#,
	call	fancy_abort	#
.L206:
	.loc 1 1087 0
	movq	-96(%rbp), %rax	# regstack, tmp160
	movl	(%rax), %eax	# regstack_21(D)->top, tmp161
	movl	%eax, -68(%rbp)	# tmp161, i
	jmp	.L207	#
.L210:
	.loc 1 1088 0
	movq	-96(%rbp), %rdx	# regstack, tmp162
	movl	-68(%rbp), %eax	# i, tmp164
	cltq
	movzbl	16(%rdx,%rax), %eax	# regstack_21(D)->reg, D.16019
	movzbl	%al, %edx	# D.16019, D.16018
	movq	-40(%rbp), %rax	# src, tmp165
	movl	8(%rax), %eax	# src_8->fld[0].rtuint, D.16018
	cmpl	%eax, %edx	# D.16018, D.16018
	jne	.L208	#,
	.loc 1 1089 0
	jmp	.L209	#
.L208:
	.loc 1 1087 0
	subl	$1, -68(%rbp)	#, i
.L207:
	.loc 1 1087 0 is_stmt 0 discriminator 1
	cmpl	$0, -68(%rbp)	#, i
	jns	.L210	#,
.L209:
	.loc 1 1092 0 is_stmt 1
	cmpl	$0, -68(%rbp)	#, i
	js	.L211	#,
	.loc 1 1092 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rdx	# dest, tmp166
	movq	-96(%rbp), %rax	# regstack, tmp167
	movq	%rdx, %rsi	# tmp166,
	movq	%rax, %rdi	# tmp167,
	call	get_hard_regnum	#
	cmpl	$7, %eax	#, D.16020
	jle	.L212	#,
.L211:
	.loc 1 1093 0 is_stmt 1
	movl	$__FUNCTION__.13055, %edx	#,
	movl	$1093, %esi	#,
	movl	$.LC1, %edi	#,
	call	fancy_abort	#
.L212:
	.loc 1 1098 0
	movq	-32(%rbp), %rax	# dest, tmp168
	movl	8(%rax), %edx	# dest_9->fld[0].rtuint, D.16018
	movq	-88(%rbp), %rax	# insn, tmp169
	movl	$10, %esi	#,
	movq	%rax, %rdi	# tmp169,
	call	find_regno_note	#
	testq	%rax, %rax	# D.16021
	je	.L213	#,
	.loc 1 1100 0
	movq	-40(%rbp), %rdx	# src, tmp170
	movq	-96(%rbp), %rsi	# regstack, tmp171
	movq	-88(%rbp), %rax	# insn, tmp172
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# tmp172,
	call	emit_pop_insn	#
	.loc 1 1102 0
	movq	-88(%rbp), %rax	# insn, tmp173
	movq	%rax, %rdi	# tmp173,
	call	delete_insn	#
	.loc 1 1103 0
	jmp	.L203	#
.L213:
	.loc 1 1106 0
	movq	-32(%rbp), %rax	# dest, tmp174
	movl	8(%rax), %eax	# dest_9->fld[0].rtuint, D.16018
	movl	%eax, %ecx	# D.16018, D.16019
	movq	-96(%rbp), %rdx	# regstack, tmp175
	movl	-68(%rbp), %eax	# i, tmp177
	cltq
	movb	%cl, 16(%rdx,%rax)	# D.16019, regstack_21(D)->reg
	.loc 1 1108 0
	movq	-96(%rbp), %rax	# regstack, tmp178
	movq	8(%rax), %rdx	# regstack_21(D)->reg_set, D.16022
	movq	-32(%rbp), %rax	# dest, tmp179
	movl	8(%rax), %eax	# dest_9->fld[0].rtuint, D.16018
	movl	$1, %esi	#, tmp180
	movl	%eax, %ecx	# D.16020, tmp265
	salq	%cl, %rsi	# tmp265, D.16022
	movq	%rsi, %rax	# D.16022, D.16022
	orq	%rax, %rdx	# D.16022, D.16022
	movq	-96(%rbp), %rax	# regstack, tmp181
	movq	%rdx, 8(%rax)	# D.16022, regstack_21(D)->reg_set
	.loc 1 1109 0
	movq	-96(%rbp), %rax	# regstack, tmp182
	movq	8(%rax), %rdx	# regstack_21(D)->reg_set, D.16022
	movq	-40(%rbp), %rax	# src, tmp183
	movl	8(%rax), %eax	# src_8->fld[0].rtuint, D.16018
	movl	$1, %esi	#, tmp184
	movl	%eax, %ecx	# D.16020, tmp267
	salq	%cl, %rsi	# tmp267, D.16022
	movq	%rsi, %rax	# D.16022, D.16022
	notq	%rax	# D.16022
	andq	%rax, %rdx	# D.16022, D.16022
	movq	-96(%rbp), %rax	# regstack, tmp185
	movq	%rdx, 8(%rax)	# D.16022, regstack_21(D)->reg_set
	.loc 1 1111 0
	movq	-88(%rbp), %rax	# insn, tmp186
	movq	%rax, %rdi	# tmp186,
	call	delete_insn	#
	.loc 1 1113 0
	jmp	.L203	#
.L205:
.LBE18:
	.loc 1 1123 0
	movq	-40(%rbp), %rax	# src, tmp187
	movl	8(%rax), %edx	# src_8->fld[0].rtuint, D.16018
	movq	-32(%rbp), %rax	# dest, tmp188
	movl	8(%rax), %eax	# dest_9->fld[0].rtuint, D.16018
	cmpl	%eax, %edx	# D.16018, D.16018
	jne	.L215	#,
	.loc 1 1125 0
	movq	-32(%rbp), %rax	# dest, tmp189
	movl	8(%rax), %edx	# dest_9->fld[0].rtuint, D.16018
	movq	-88(%rbp), %rax	# insn, tmp190
	movl	$10, %esi	#,
	movq	%rax, %rdi	# tmp190,
	call	find_regno_note	#
	testq	%rax, %rax	# D.16021
	je	.L216	#,
	.loc 1 1126 0
	movq	-32(%rbp), %rdx	# dest, tmp191
	movq	-96(%rbp), %rsi	# regstack, tmp192
	movq	-88(%rbp), %rax	# insn, tmp193
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# tmp193,
	call	emit_pop_insn	#
.L216:
	.loc 1 1128 0
	movq	-88(%rbp), %rax	# insn, tmp194
	movq	%rax, %rdi	# tmp194,
	call	delete_insn	#
	.loc 1 1129 0
	jmp	.L203	#
.L215:
	.loc 1 1133 0
	movq	-32(%rbp), %rdx	# dest, tmp195
	movq	-96(%rbp), %rax	# regstack, tmp196
	movq	%rdx, %rsi	# tmp195,
	movq	%rax, %rdi	# tmp196,
	call	get_hard_regnum	#
	cmpl	$7, %eax	#, D.16020
	jle	.L217	#,
	.loc 1 1134 0
	movl	$__FUNCTION__.13055, %edx	#,
	movl	$1134, %esi	#,
	movl	$.LC1, %edi	#,
	call	fancy_abort	#
.L217:
	.loc 1 1136 0
	movq	-40(%rbp), %rdx	# src, tmp197
	movq	-96(%rbp), %rax	# regstack, tmp198
	movq	%rdx, %rsi	# tmp197,
	movq	%rax, %rdi	# tmp198,
	call	get_hard_regnum	#
	movl	%eax, %edx	#, D.16020
	movq	-56(%rbp), %rax	# psrc, tmp199
	movl	%edx, %esi	# D.16020,
	movq	%rax, %rdi	# tmp199,
	call	replace_reg	#
	.loc 1 1138 0
	movq	-96(%rbp), %rax	# regstack, tmp200
	movl	(%rax), %eax	# regstack_21(D)->top, D.16020
	leal	1(%rax), %edx	#, D.16020
	movq	-96(%rbp), %rax	# regstack, tmp201
	movl	%edx, (%rax)	# D.16020, regstack_21(D)->top
	movq	-96(%rbp), %rax	# regstack, tmp202
	movl	(%rax), %esi	# regstack_21(D)->top, D.16020
	movq	-32(%rbp), %rax	# dest, tmp203
	movl	8(%rax), %eax	# dest_9->fld[0].rtuint, D.16018
	movl	%eax, %ecx	# D.16018, D.16019
	movq	-96(%rbp), %rdx	# regstack, tmp204
	movslq	%esi, %rax	# D.16020, tmp205
	movb	%cl, 16(%rdx,%rax)	# D.16019, regstack_21(D)->reg
	.loc 1 1139 0
	movq	-96(%rbp), %rax	# regstack, tmp206
	movq	8(%rax), %rdx	# regstack_21(D)->reg_set, D.16022
	movq	-32(%rbp), %rax	# dest, tmp207
	movl	8(%rax), %eax	# dest_9->fld[0].rtuint, D.16018
	movl	$1, %esi	#, tmp208
	movl	%eax, %ecx	# D.16020, tmp269
	salq	%cl, %rsi	# tmp269, D.16022
	movq	%rsi, %rax	# D.16022, D.16022
	orq	%rax, %rdx	# D.16022, D.16022
	movq	-96(%rbp), %rax	# regstack, tmp209
	movq	%rdx, 8(%rax)	# D.16022, regstack_21(D)->reg_set
	.loc 1 1140 0
	movq	-48(%rbp), %rax	# pdest, tmp210
	movl	$8, %esi	#,
	movq	%rax, %rdi	# tmp210,
	call	replace_reg	#
	jmp	.L203	#
.L204:
	.loc 1 1142 0
	movq	-40(%rbp), %rax	# src, tmp211
	movzwl	(%rax), %eax	# src_8->code, D.16017
	cmpw	$61, %ax	#, D.16017
	jne	.L218	#,
	.loc 1 1142 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# src, tmp212
	movl	8(%rax), %eax	# src_8->fld[0].rtuint, D.16018
	cmpl	$7, %eax	#, D.16018
	jbe	.L218	#,
	movq	-40(%rbp), %rax	# src, tmp213
	movl	8(%rax), %eax	# src_8->fld[0].rtuint, D.16018
	cmpl	$15, %eax	#, D.16018
	ja	.L218	#,
	.loc 1 1148 0 is_stmt 1
	movq	-40(%rbp), %rdx	# src, tmp214
	movq	-96(%rbp), %rcx	# regstack, tmp215
	movq	-88(%rbp), %rax	# insn, tmp216
	movq	%rcx, %rsi	# tmp215,
	movq	%rax, %rdi	# tmp216,
	call	emit_swap_insn	#
	.loc 1 1150 0
	movq	-40(%rbp), %rax	# src, tmp217
	movl	8(%rax), %edx	# src_8->fld[0].rtuint, D.16018
	movq	-88(%rbp), %rax	# insn, tmp218
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp218,
	call	find_regno_note	#
	movq	%rax, -24(%rbp)	# tmp219, note
	.loc 1 1151 0
	cmpq	$0, -24(%rbp)	#, note
	je	.L219	#,
	.loc 1 1153 0
	movq	-24(%rbp), %rax	# note, tmp220
	addq	$8, %rax	#, D.16016
	movl	$8, %esi	#,
	movq	%rax, %rdi	# D.16016,
	call	replace_reg	#
	.loc 1 1154 0
	movq	-96(%rbp), %rax	# regstack, tmp221
	movl	(%rax), %eax	# regstack_21(D)->top, D.16020
	leal	-1(%rax), %edx	#, D.16020
	movq	-96(%rbp), %rax	# regstack, tmp222
	movl	%edx, (%rax)	# D.16020, regstack_21(D)->top
	.loc 1 1155 0
	movq	-96(%rbp), %rax	# regstack, tmp223
	movq	8(%rax), %rdx	# regstack_21(D)->reg_set, D.16022
	movq	-40(%rbp), %rax	# src, tmp224
	movl	8(%rax), %eax	# src_8->fld[0].rtuint, D.16018
	movl	$1, %esi	#, tmp225
	movl	%eax, %ecx	# D.16020, tmp271
	salq	%cl, %rsi	# tmp271, D.16022
	movq	%rsi, %rax	# D.16022, D.16022
	notq	%rax	# D.16022
	andq	%rax, %rdx	# D.16022, D.16022
	movq	-96(%rbp), %rax	# regstack, tmp226
	movq	%rdx, 8(%rax)	# D.16022, regstack_21(D)->reg_set
	jmp	.L220	#
.L219:
	.loc 1 1157 0
	movq	-40(%rbp), %rax	# src, tmp227
	movzbl	2(%rax), %eax	# src_8->mode, D.16019
	cmpb	$17, %al	#, D.16019
	je	.L221	#,
	.loc 1 1157 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# src, tmp228
	movzbl	2(%rax), %eax	# src_8->mode, D.16019
	cmpb	$18, %al	#, D.16019
	jne	.L220	#,
.L221:
	.loc 1 1158 0 is_stmt 1
	movq	-96(%rbp), %rax	# regstack, tmp229
	movl	(%rax), %eax	# regstack_21(D)->top, D.16020
	cmpl	$6, %eax	#, D.16020
	jg	.L220	#,
.LBB19:
	.loc 1 1168 0
	movq	-40(%rbp), %rax	# src, tmp230
	movzbl	2(%rax), %eax	# src_8->mode, D.16019
	movzbl	%al, %eax	# D.16019, D.16020
	cltq
	movq	FP_mode_reg(,%rax,8), %rax	# FP_mode_reg, tmp232
	movq	%rax, -16(%rbp)	# tmp232, top_stack_reg
	.loc 1 1170 0
	movq	-40(%rbp), %rax	# src, tmp233
	movzbl	2(%rax), %eax	# src_8->mode, D.16019
	cmpb	$18, %al	#, D.16019
	jne	.L222	#,
	.loc 1 1171 0
	movq	-16(%rbp), %rdx	# top_stack_reg, tmp234
	movq	-16(%rbp), %rax	# top_stack_reg, tmp235
	movq	%rdx, %rsi	# tmp234,
	movq	%rax, %rdi	# tmp235,
	call	gen_movtf	#
	movq	%rax, -64(%rbp)	# tmp236, push_rtx
	jmp	.L223	#
.L222:
	.loc 1 1173 0
	movq	-16(%rbp), %rdx	# top_stack_reg, tmp237
	movq	-16(%rbp), %rax	# top_stack_reg, tmp238
	movq	%rdx, %rsi	# tmp237,
	movq	%rax, %rdi	# tmp238,
	call	gen_movxf	#
	movq	%rax, -64(%rbp)	# tmp239, push_rtx
.L223:
	.loc 1 1174 0
	movq	-88(%rbp), %rdx	# insn, tmp240
	movq	-64(%rbp), %rax	# push_rtx, tmp241
	movq	%rdx, %rsi	# tmp240,
	movq	%rax, %rdi	# tmp241,
	call	emit_insn_before	#
	movq	%rax, -8(%rbp)	# tmp242, push_insn
	.loc 1 1175 0
	movq	-88(%rbp), %rax	# insn, tmp243
	movq	56(%rax), %rdx	# insn_17(D)->fld[6].rtx, D.16021
	movq	-16(%rbp), %rax	# top_stack_reg, tmp244
	movq	%rdx, %rcx	# D.16021,
	movq	%rax, %rdx	# tmp244,
	movl	$1, %esi	#,
	movl	$3, %edi	#,
	call	gen_rtx_fmt_ee	#
	movq	-88(%rbp), %rdx	# insn, tmp245
	movq	%rax, 56(%rdx)	# D.16021, insn_17(D)->fld[6].rtx
.L220:
.LBE19:
	.loc 1 1179 0
	movq	-56(%rbp), %rax	# psrc, tmp246
	movl	$8, %esi	#,
	movq	%rax, %rdi	# tmp246,
	call	replace_reg	#
	jmp	.L203	#
.L218:
	.loc 1 1181 0
	movq	-32(%rbp), %rax	# dest, tmp247
	movzwl	(%rax), %eax	# dest_9->code, D.16017
	cmpw	$61, %ax	#, D.16017
	jne	.L224	#,
	.loc 1 1181 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# dest, tmp248
	movl	8(%rax), %eax	# dest_9->fld[0].rtuint, D.16018
	cmpl	$7, %eax	#, D.16018
	jbe	.L224	#,
	movq	-32(%rbp), %rax	# dest, tmp249
	movl	8(%rax), %eax	# dest_9->fld[0].rtuint, D.16018
	cmpl	$15, %eax	#, D.16018
	ja	.L224	#,
	.loc 1 1189 0 is_stmt 1
	movq	-32(%rbp), %rdx	# dest, tmp250
	movq	-96(%rbp), %rax	# regstack, tmp251
	movq	%rdx, %rsi	# tmp250,
	movq	%rax, %rdi	# tmp251,
	call	get_hard_regnum	#
	cmpl	$7, %eax	#, D.16020
	jle	.L225	#,
	.loc 1 1190 0
	movl	$__FUNCTION__.13055, %edx	#,
	movl	$1190, %esi	#,
	movl	$.LC1, %edi	#,
	call	fancy_abort	#
.L225:
	.loc 1 1192 0
	movq	-96(%rbp), %rax	# regstack, tmp252
	movl	(%rax), %eax	# regstack_21(D)->top, D.16020
	cmpl	$7, %eax	#, D.16020
	jle	.L226	#,
	.loc 1 1193 0
	movl	$__FUNCTION__.13055, %edx	#,
	movl	$1193, %esi	#,
	movl	$.LC1, %edi	#,
	call	fancy_abort	#
.L226:
	.loc 1 1195 0
	movq	-96(%rbp), %rax	# regstack, tmp253
	movl	(%rax), %eax	# regstack_21(D)->top, D.16020
	leal	1(%rax), %edx	#, D.16020
	movq	-96(%rbp), %rax	# regstack, tmp254
	movl	%edx, (%rax)	# D.16020, regstack_21(D)->top
	movq	-96(%rbp), %rax	# regstack, tmp255
	movl	(%rax), %esi	# regstack_21(D)->top, D.16020
	movq	-32(%rbp), %rax	# dest, tmp256
	movl	8(%rax), %eax	# dest_9->fld[0].rtuint, D.16018
	movl	%eax, %ecx	# D.16018, D.16019
	movq	-96(%rbp), %rdx	# regstack, tmp257
	movslq	%esi, %rax	# D.16020, tmp258
	movb	%cl, 16(%rdx,%rax)	# D.16019, regstack_21(D)->reg
	.loc 1 1196 0
	movq	-96(%rbp), %rax	# regstack, tmp259
	movq	8(%rax), %rdx	# regstack_21(D)->reg_set, D.16022
	movq	-32(%rbp), %rax	# dest, tmp260
	movl	8(%rax), %eax	# dest_9->fld[0].rtuint, D.16018
	movl	$1, %esi	#, tmp261
	movl	%eax, %ecx	# D.16020, tmp273
	salq	%cl, %rsi	# tmp273, D.16022
	movq	%rsi, %rax	# D.16022, D.16022
	orq	%rax, %rdx	# D.16022, D.16022
	movq	-96(%rbp), %rax	# regstack, tmp262
	movq	%rdx, 8(%rax)	# D.16022, regstack_21(D)->reg_set
	.loc 1 1197 0
	movq	-48(%rbp), %rax	# pdest, tmp263
	movl	$8, %esi	#,
	movq	%rax, %rdi	# tmp263,
	call	replace_reg	#
	jmp	.L203	#
.L224:
	.loc 1 1200 0
	movl	$__FUNCTION__.13055, %edx	#,
	movl	$1200, %esi	#,
	movl	$.LC1, %edi	#,
	call	fancy_abort	#
.L203:
	.loc 1 1201 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	move_for_stack_reg, .-move_for_stack_reg
	.type	swap_rtx_condition_1, @function
swap_rtx_condition_1:
.LFB19:
	.loc 1 1210 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# pat, pat
	.loc 1 1212 0
	movl	$0, -16(%rbp)	#, r
	.loc 1 1214 0
	movq	-40(%rbp), %rax	# pat, tmp87
	movzwl	(%rax), %eax	# pat_8(D)->code, D.16023
	movzwl	%ax, %eax	# D.16023, D.16024
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.16025
	cmpb	$60, %al	#, D.16025
	jne	.L228	#,
	.loc 1 1216 0
	movq	-40(%rbp), %rax	# pat, tmp89
	movzwl	(%rax), %eax	# pat_8(D)->code, D.16023
	movzwl	%ax, %eax	# D.16023, D.16026
	movl	%eax, %edi	# D.16026,
	call	swap_condition	#
	movl	%eax, %edx	# D.16026, D.16023
	movq	-40(%rbp), %rax	# pat, tmp90
	movw	%dx, (%rax)	# D.16023, pat_8(D)->code
	.loc 1 1217 0
	movl	$1, -16(%rbp)	#, r
	jmp	.L229	#
.L228:
	.loc 1 1221 0
	movq	-40(%rbp), %rax	# pat, tmp91
	movzwl	(%rax), %eax	# pat_8(D)->code, D.16023
	movzwl	%ax, %eax	# D.16023, D.16024
	cltq
	movq	rtx_format(,%rax,8), %rax	# rtx_format, tmp93
	movq	%rax, -8(%rbp)	# tmp93, fmt
	.loc 1 1222 0
	movq	-40(%rbp), %rax	# pat, tmp94
	movzwl	(%rax), %eax	# pat_8(D)->code, D.16023
	movzwl	%ax, %eax	# D.16023, D.16024
	cltq
	movzbl	rtx_length(%rax), %eax	# rtx_length, D.16027
	movzbl	%al, %eax	# D.16027, D.16024
	subl	$1, %eax	#, tmp96
	movl	%eax, -20(%rbp)	# tmp96, i
	jmp	.L230	#
.L235:
	.loc 1 1224 0
	movl	-20(%rbp), %eax	# i, tmp97
	movslq	%eax, %rdx	# tmp97, D.16028
	movq	-8(%rbp), %rax	# fmt, tmp98
	addq	%rdx, %rax	# D.16028, D.16029
	movzbl	(%rax), %eax	# *_26, D.16025
	cmpb	$69, %al	#, D.16025
	jne	.L231	#,
.LBB20:
	.loc 1 1228 0
	movq	-40(%rbp), %rax	# pat, tmp99
	movl	-20(%rbp), %edx	# i, tmp101
	movslq	%edx, %rdx	# tmp101, tmp100
	movq	8(%rax,%rdx,8), %rax	# pat_8(D)->fld[i_1].rtvec, D.16030
	movl	(%rax), %eax	# _28->num_elem, D.16024
	subl	$1, %eax	#, tmp102
	movl	%eax, -12(%rbp)	# tmp102, j
	jmp	.L232	#
.L233:
	.loc 1 1229 0 discriminator 2
	movq	-40(%rbp), %rax	# pat, tmp103
	movl	-20(%rbp), %edx	# i, tmp105
	movslq	%edx, %rdx	# tmp105, tmp104
	movq	8(%rax,%rdx,8), %rax	# pat_8(D)->fld[i_1].rtvec, D.16030
	movl	-12(%rbp), %edx	# j, tmp107
	movslq	%edx, %rdx	# tmp107, tmp106
	movq	8(%rax,%rdx,8), %rax	# _31->elem, D.16031
	movq	%rax, %rdi	# D.16031,
	call	swap_rtx_condition_1	#
	orl	%eax, -16(%rbp)	# D.16024, r
	.loc 1 1228 0 discriminator 2
	subl	$1, -12(%rbp)	#, j
.L232:
	.loc 1 1228 0 is_stmt 0 discriminator 1
	cmpl	$0, -12(%rbp)	#, j
	jns	.L233	#,
.LBE20:
	jmp	.L234	#
.L231:
	.loc 1 1231 0 is_stmt 1
	movl	-20(%rbp), %eax	# i, tmp108
	movslq	%eax, %rdx	# tmp108, D.16028
	movq	-8(%rbp), %rax	# fmt, tmp109
	addq	%rdx, %rax	# D.16028, D.16029
	movzbl	(%rax), %eax	# *_37, D.16025
	cmpb	$101, %al	#, D.16025
	jne	.L234	#,
	.loc 1 1232 0
	movq	-40(%rbp), %rax	# pat, tmp110
	movl	-20(%rbp), %edx	# i, tmp112
	movslq	%edx, %rdx	# tmp112, tmp111
	movq	8(%rax,%rdx,8), %rax	# pat_8(D)->fld[i_1].rtx, D.16031
	movq	%rax, %rdi	# D.16031,
	call	swap_rtx_condition_1	#
	orl	%eax, -16(%rbp)	# D.16024, r
.L234:
	.loc 1 1222 0
	subl	$1, -20(%rbp)	#, i
.L230:
	.loc 1 1222 0 is_stmt 0 discriminator 1
	cmpl	$0, -20(%rbp)	#, i
	jns	.L235	#,
.L229:
	.loc 1 1236 0 is_stmt 1
	movl	-16(%rbp), %eax	# r, D.16024
	.loc 1 1237 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	swap_rtx_condition_1, .-swap_rtx_condition_1
	.type	swap_rtx_condition, @function
swap_rtx_condition:
.LFB20:
	.loc 1 1242 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# insn, insn
	.loc 1 1243 0
	movq	-40(%rbp), %rax	# insn, tmp92
	movq	32(%rax), %rax	# insn_10(D)->fld[3].rtx, tmp93
	movq	%rax, -16(%rbp)	# tmp93, pat
	.loc 1 1247 0
	movq	-16(%rbp), %rax	# pat, tmp94
	movzwl	(%rax), %eax	# pat_11->code, D.16033
	cmpw	$47, %ax	#, D.16033
	jne	.L238	#,
	.loc 1 1248 0
	movq	-16(%rbp), %rax	# pat, tmp95
	movq	8(%rax), %rax	# pat_11->fld[0].rtx, D.16034
	movzwl	(%rax), %eax	# _13->code, D.16033
	cmpw	$61, %ax	#, D.16033
	jne	.L238	#,
	.loc 1 1249 0
	movq	-16(%rbp), %rax	# pat, tmp96
	movq	8(%rax), %rax	# pat_11->fld[0].rtx, D.16034
	movl	8(%rax), %eax	# _15->fld[0].rtuint, D.16035
	cmpl	$17, %eax	#, D.16035
	jne	.L238	#,
	.loc 1 1251 0
	movq	-40(%rbp), %rax	# insn, tmp97
	movq	%rax, %rdi	# tmp97,
	call	next_flags_user	#
	movq	%rax, -40(%rbp)	# tmp98, insn
	.loc 1 1252 0
	cmpq	$0, -40(%rbp)	#, insn
	jne	.L239	#,
	.loc 1 1253 0
	movl	$0, %eax	#, D.16032
	jmp	.L240	#
.L239:
	.loc 1 1254 0
	movq	-40(%rbp), %rax	# insn, tmp99
	movq	32(%rax), %rax	# insn_17->fld[3].rtx, tmp100
	movq	%rax, -16(%rbp)	# tmp100, pat
.L238:
	.loc 1 1261 0
	movq	-16(%rbp), %rax	# pat, tmp101
	movzwl	(%rax), %eax	# pat_5->code, D.16033
	cmpw	$47, %ax	#, D.16033
	jne	.L241	#,
	.loc 1 1262 0
	movq	-16(%rbp), %rax	# pat, tmp102
	movq	16(%rax), %rax	# pat_5->fld[1].rtx, D.16034
	movzwl	(%rax), %eax	# _21->code, D.16033
	cmpw	$42, %ax	#, D.16033
	jne	.L241	#,
	.loc 1 1263 0
	movq	-16(%rbp), %rax	# pat, tmp103
	movq	16(%rax), %rax	# pat_5->fld[1].rtx, D.16034
	movl	16(%rax), %eax	# _23->fld[1].rtint, D.16032
	cmpl	$9, %eax	#, D.16032
	jne	.L241	#,
.LBB21:
	.loc 1 1265 0
	movq	-16(%rbp), %rax	# pat, tmp104
	movq	8(%rax), %rax	# pat_5->fld[0].rtx, tmp105
	movq	%rax, -8(%rbp)	# tmp105, dest
	.loc 1 1269 0
	jmp	.L242	#
.L245:
	.loc 1 1271 0
	movq	-40(%rbp), %rax	# insn, tmp106
	movq	24(%rax), %rax	# insn_2->fld[2].rtx, tmp107
	movq	%rax, -40(%rbp)	# tmp107, insn
	.loc 1 1272 0
	movq	-40(%rbp), %rax	# insn, tmp108
	movzwl	(%rax), %eax	# insn_28->code, D.16033
	movzwl	%ax, %eax	# D.16033, D.16032
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.16036
	cmpb	$105, %al	#, D.16036
	jne	.L243	#,
	.loc 1 1272 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rdx	# insn, tmp110
	movq	-8(%rbp), %rax	# dest, tmp111
	movq	%rdx, %rsi	# tmp110,
	movq	%rax, %rdi	# tmp111,
	call	reg_mentioned_p	#
	testl	%eax, %eax	# D.16032
	je	.L243	#,
	.loc 1 1273 0 is_stmt 1
	jmp	.L244	#
.L243:
	.loc 1 1274 0
	movq	-40(%rbp), %rax	# insn, tmp112
	movzwl	(%rax), %eax	# insn_28->code, D.16033
	cmpw	$34, %ax	#, D.16033
	jne	.L242	#,
	.loc 1 1275 0
	movl	$0, %eax	#, D.16032
	jmp	.L240	#
.L242:
	.loc 1 1269 0 discriminator 1
	movq	current_block(%rip), %rax	# current_block, current_block.43
	movq	8(%rax), %rax	# current_block.43_26->end, D.16034
	cmpq	-40(%rbp), %rax	# insn, D.16034
	jne	.L245	#,
.L244:
	.loc 1 1281 0
	movq	-40(%rbp), %rax	# insn, tmp113
	movq	32(%rax), %rax	# insn_3->fld[3].rtx, tmp114
	movq	%rax, -16(%rbp)	# tmp114, pat
	.loc 1 1282 0
	movq	-16(%rbp), %rax	# pat, tmp115
	movzwl	(%rax), %eax	# pat_35->code, D.16033
	cmpw	$47, %ax	#, D.16033
	jne	.L246	#,
	.loc 1 1283 0
	movq	-16(%rbp), %rax	# pat, tmp116
	movq	16(%rax), %rax	# pat_35->fld[1].rtx, D.16034
	movzwl	(%rax), %eax	# _37->code, D.16033
	cmpw	$42, %ax	#, D.16033
	jne	.L246	#,
	.loc 1 1284 0
	movq	-16(%rbp), %rax	# pat, tmp117
	movq	16(%rax), %rax	# pat_35->fld[1].rtx, D.16034
	movl	16(%rax), %eax	# _39->fld[1].rtint, D.16032
	cmpl	$10, %eax	#, D.16032
	jne	.L246	#,
	.loc 1 1285 0
	movq	-8(%rbp), %rdx	# dest, tmp118
	movq	-40(%rbp), %rax	# insn, tmp119
	movq	%rdx, %rsi	# tmp118,
	movq	%rax, %rdi	# tmp119,
	call	dead_or_set_p	#
	testl	%eax, %eax	# D.16032
	jne	.L247	#,
.L246:
	.loc 1 1286 0
	movl	$0, %eax	#, D.16032
	jmp	.L240	#
.L247:
	.loc 1 1289 0
	movq	-40(%rbp), %rax	# insn, tmp120
	movq	%rax, %rdi	# tmp120,
	call	next_flags_user	#
	movq	%rax, -40(%rbp)	# tmp121, insn
	.loc 1 1290 0
	cmpq	$0, -40(%rbp)	#, insn
	jne	.L248	#,
	.loc 1 1291 0
	movl	$0, %eax	#, D.16032
	jmp	.L240	#
.L248:
	.loc 1 1292 0
	movq	-40(%rbp), %rax	# insn, tmp122
	movq	32(%rax), %rax	# insn_42->fld[3].rtx, tmp123
	movq	%rax, -16(%rbp)	# tmp123, pat
.L241:
.LBE21:
	.loc 1 1295 0
	movq	-16(%rbp), %rax	# pat, tmp124
	movq	%rax, %rdi	# tmp124,
	call	swap_rtx_condition_1	#
	testl	%eax, %eax	# D.16032
	je	.L249	#,
.LBB22:
	.loc 1 1297 0
	movl	$0, -20(%rbp)	#, fail
	.loc 1 1298 0
	movq	-40(%rbp), %rax	# insn, tmp125
	movl	$-1, 40(%rax)	#, insn_4->fld[4].rtint
	.loc 1 1299 0
	movq	-40(%rbp), %rax	# insn, tmp126
	movl	40(%rax), %eax	# insn_4->fld[4].rtint, D.16032
	testl	%eax, %eax	# D.16032
	js	.L250	#,
	.loc 1 1299 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# insn, tmp127
	movl	40(%rax), %eax	# insn_4->fld[4].rtint, D.16032
	cmpl	$-1, %eax	#, D.16032
	sete	%al	#, iftmp.44
	jmp	.L251	#
.L250:
	.loc 1 1299 0 discriminator 2
	movq	-40(%rbp), %rax	# insn, tmp128
	movq	%rax, %rdi	# tmp128,
	call	recog_memoized_1	#
	cmpl	$-1, %eax	#, D.16032
	sete	%al	#, iftmp.44
.L251:
	.loc 1 1299 0 discriminator 3
	testb	%al, %al	# iftmp.44
	je	.L252	#,
	.loc 1 1300 0 is_stmt 1
	movl	$1, -20(%rbp)	#, fail
	jmp	.L253	#
.L252:
	.loc 1 1303 0
	movq	ix86_flags_rtx(%rip), %rdx	# ix86_flags_rtx, ix86_flags_rtx.45
	movq	-40(%rbp), %rax	# insn, tmp129
	movq	%rdx, %rsi	# ix86_flags_rtx.45,
	movq	%rax, %rdi	# tmp129,
	call	dead_or_set_p	#
	testl	%eax, %eax	# D.16032
	jne	.L253	#,
	.loc 1 1305 0
	movq	-40(%rbp), %rax	# insn, tmp130
	movq	%rax, %rdi	# tmp130,
	call	next_flags_user	#
	movq	%rax, -40(%rbp)	# tmp131, insn
	.loc 1 1306 0
	cmpq	$0, -40(%rbp)	#, insn
	je	.L254	#,
	.loc 1 1306 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# insn, tmp132
	movq	%rax, %rdi	# tmp132,
	call	swap_rtx_condition	#
	testl	%eax, %eax	# D.16032
	jne	.L253	#,
.L254:
	.loc 1 1307 0 is_stmt 1
	movl	$1, -20(%rbp)	#, fail
.L253:
	.loc 1 1309 0
	cmpl	$0, -20(%rbp)	#, fail
	je	.L255	#,
	.loc 1 1311 0
	movq	-16(%rbp), %rax	# pat, tmp133
	movq	%rax, %rdi	# tmp133,
	call	swap_rtx_condition_1	#
	.loc 1 1312 0
	movl	$0, %eax	#, D.16032
	jmp	.L240	#
.L255:
	.loc 1 1314 0
	movl	$1, %eax	#, D.16032
	jmp	.L240	#
.L249:
.LBE22:
	.loc 1 1316 0
	movl	$0, %eax	#, D.16032
.L240:
	.loc 1 1317 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	swap_rtx_condition, .-swap_rtx_condition
	.type	compare_for_stack_reg, @function
compare_for_stack_reg:
.LFB21:
	.loc 1 1332 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movq	%rdi, -56(%rbp)	# insn, insn
	movq	%rsi, -64(%rbp)	# regstack, regstack
	movq	%rdx, -72(%rbp)	# pat_src, pat_src
	.loc 1 1337 0
	movq	-72(%rbp), %rax	# pat_src, tmp127
	addq	$8, %rax	#, D.16037
	movq	%rax, %rdi	# D.16037,
	call	get_true_reg	#
	movq	%rax, -48(%rbp)	# tmp128, src1
	.loc 1 1338 0
	movq	-72(%rbp), %rax	# pat_src, tmp129
	addq	$16, %rax	#, D.16037
	movq	%rax, %rdi	# D.16037,
	call	get_true_reg	#
	movq	%rax, -40(%rbp)	# tmp130, src2
	.loc 1 1339 0
	movq	-56(%rbp), %rax	# insn, tmp131
	movq	%rax, %rdi	# tmp131,
	call	next_flags_user	#
	movq	%rax, -24(%rbp)	# tmp132, flags_user
	.loc 1 1343 0
	movq	-48(%rbp), %rax	# src1, tmp133
	movq	(%rax), %rax	# *src1_6, D.16038
	movzwl	(%rax), %eax	# _11->code, D.16039
	cmpw	$61, %ax	#, D.16039
	jne	.L257	#,
	.loc 1 1343 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# src1, tmp134
	movq	(%rax), %rax	# *src1_6, D.16038
	movl	8(%rax), %eax	# _13->fld[0].rtuint, D.16040
	cmpl	$7, %eax	#, D.16040
	jbe	.L257	#,
	movq	-48(%rbp), %rax	# src1, tmp135
	movq	(%rax), %rax	# *src1_6, D.16038
	movl	8(%rax), %eax	# _15->fld[0].rtuint, D.16040
	cmpl	$15, %eax	#, D.16040
	ja	.L257	#,
	.loc 1 1344 0 is_stmt 1
	movq	-40(%rbp), %rax	# src2, tmp136
	movq	(%rax), %rax	# *src2_8, D.16038
	movzwl	(%rax), %eax	# _17->code, D.16039
	cmpw	$61, %ax	#, D.16039
	jne	.L258	#,
	.loc 1 1344 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# src2, tmp137
	movq	(%rax), %rax	# *src2_8, D.16038
	movl	8(%rax), %eax	# _19->fld[0].rtuint, D.16040
	cmpl	$7, %eax	#, D.16040
	jbe	.L258	#,
	movq	-40(%rbp), %rax	# src2, tmp138
	movq	(%rax), %rax	# *src2_8, D.16038
	movl	8(%rax), %eax	# _21->fld[0].rtuint, D.16040
	cmpl	$15, %eax	#, D.16040
	ja	.L258	#,
	.loc 1 1345 0 is_stmt 1
	movq	-40(%rbp), %rax	# src2, tmp139
	movq	(%rax), %rdx	# *src2_8, D.16038
	movq	-64(%rbp), %rax	# regstack, tmp140
	movq	%rdx, %rsi	# D.16038,
	movq	%rax, %rdi	# tmp140,
	call	get_hard_regnum	#
	cmpl	$8, %eax	#, D.16041
	jne	.L258	#,
.L257:
	.loc 1 1346 0
	movq	-56(%rbp), %rax	# insn, tmp141
	movq	%rax, %rdi	# tmp141,
	call	swap_rtx_condition	#
	testl	%eax, %eax	# D.16041
	je	.L258	#,
.LBB23:
	.loc 1 1349 0
	movq	-72(%rbp), %rax	# pat_src, tmp142
	movq	8(%rax), %rax	# pat_src_4(D)->fld[0].rtx, tmp143
	movq	%rax, -16(%rbp)	# tmp143, temp
	.loc 1 1350 0
	movq	-72(%rbp), %rax	# pat_src, tmp144
	movq	16(%rax), %rdx	# pat_src_4(D)->fld[1].rtx, D.16038
	movq	-72(%rbp), %rax	# pat_src, tmp145
	movq	%rdx, 8(%rax)	# D.16038, pat_src_4(D)->fld[0].rtx
	.loc 1 1351 0
	movq	-72(%rbp), %rax	# pat_src, tmp146
	movq	-16(%rbp), %rdx	# temp, tmp147
	movq	%rdx, 16(%rax)	# tmp147, pat_src_4(D)->fld[1].rtx
	.loc 1 1353 0
	movq	-72(%rbp), %rax	# pat_src, tmp148
	addq	$8, %rax	#, D.16037
	movq	%rax, %rdi	# D.16037,
	call	get_true_reg	#
	movq	%rax, -48(%rbp)	# tmp149, src1
	.loc 1 1354 0
	movq	-72(%rbp), %rax	# pat_src, tmp150
	addq	$16, %rax	#, D.16037
	movq	%rax, %rdi	# D.16037,
	call	get_true_reg	#
	movq	%rax, -40(%rbp)	# tmp151, src2
	.loc 1 1356 0
	movq	-56(%rbp), %rax	# insn, tmp152
	movl	$-1, 40(%rax)	#, insn_9(D)->fld[4].rtint
.L258:
.LBE23:
	.loc 1 1361 0
	movq	-48(%rbp), %rax	# src1, tmp153
	movq	(%rax), %rax	# *src1_1, D.16038
	movl	8(%rax), %edx	# _33->fld[0].rtuint, D.16040
	movq	-56(%rbp), %rax	# insn, tmp154
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp154,
	call	find_regno_note	#
	movq	%rax, -8(%rbp)	# tmp155, src1_note
	.loc 1 1363 0
	movq	-40(%rbp), %rax	# src2, tmp156
	movq	(%rax), %rax	# *src2_2, D.16038
	movzwl	(%rax), %eax	# _36->code, D.16039
	cmpw	$61, %ax	#, D.16039
	jne	.L259	#,
	.loc 1 1363 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# src2, tmp157
	movq	(%rax), %rax	# *src2_2, D.16038
	movl	8(%rax), %eax	# _38->fld[0].rtuint, D.16040
	cmpl	$7, %eax	#, D.16040
	jbe	.L259	#,
	movq	-40(%rbp), %rax	# src2, tmp158
	movq	(%rax), %rax	# *src2_2, D.16038
	movl	8(%rax), %eax	# _40->fld[0].rtuint, D.16040
	cmpl	$15, %eax	#, D.16040
	ja	.L259	#,
	.loc 1 1364 0 is_stmt 1
	movq	-40(%rbp), %rax	# src2, tmp159
	movq	(%rax), %rax	# *src2_2, D.16038
	movl	8(%rax), %edx	# _42->fld[0].rtuint, D.16040
	movq	-56(%rbp), %rax	# insn, tmp160
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp160,
	call	find_regno_note	#
	movq	%rax, -32(%rbp)	# tmp161, src2_note
	jmp	.L260	#
.L259:
	.loc 1 1366 0
	movq	$0, -32(%rbp)	#, src2_note
.L260:
	.loc 1 1368 0
	movq	-48(%rbp), %rax	# src1, tmp162
	movq	(%rax), %rdx	# *src1_1, D.16038
	movq	-64(%rbp), %rcx	# regstack, tmp163
	movq	-56(%rbp), %rax	# insn, tmp164
	movq	%rcx, %rsi	# tmp163,
	movq	%rax, %rdi	# tmp164,
	call	emit_swap_insn	#
	.loc 1 1370 0
	movq	-48(%rbp), %rax	# src1, tmp165
	movl	$8, %esi	#,
	movq	%rax, %rdi	# tmp165,
	call	replace_reg	#
	.loc 1 1372 0
	movq	-40(%rbp), %rax	# src2, tmp166
	movq	(%rax), %rax	# *src2_2, D.16038
	movzwl	(%rax), %eax	# _47->code, D.16039
	cmpw	$61, %ax	#, D.16039
	jne	.L261	#,
	.loc 1 1372 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# src2, tmp167
	movq	(%rax), %rax	# *src2_2, D.16038
	movl	8(%rax), %eax	# _49->fld[0].rtuint, D.16040
	cmpl	$7, %eax	#, D.16040
	jbe	.L261	#,
	movq	-40(%rbp), %rax	# src2, tmp168
	movq	(%rax), %rax	# *src2_2, D.16038
	movl	8(%rax), %eax	# _51->fld[0].rtuint, D.16040
	cmpl	$15, %eax	#, D.16040
	ja	.L261	#,
	.loc 1 1373 0 is_stmt 1
	movq	-40(%rbp), %rax	# src2, tmp169
	movq	(%rax), %rdx	# *src2_2, D.16038
	movq	-64(%rbp), %rax	# regstack, tmp170
	movq	%rdx, %rsi	# D.16038,
	movq	%rax, %rdi	# tmp170,
	call	get_hard_regnum	#
	movl	%eax, %edx	#, D.16041
	movq	-40(%rbp), %rax	# src2, tmp171
	movl	%edx, %esi	# D.16041,
	movq	%rax, %rdi	# tmp171,
	call	replace_reg	#
.L261:
	.loc 1 1375 0
	cmpq	$0, -8(%rbp)	#, src1_note
	je	.L262	#,
	.loc 1 1377 0
	movq	-8(%rbp), %rax	# src1_note, tmp172
	movq	8(%rax), %rax	# src1_note_35->fld[0].rtx, D.16038
	movl	8(%rax), %eax	# _55->fld[0].rtuint, D.16040
	movl	%eax, %edx	# D.16040, D.16041
	movq	-64(%rbp), %rax	# regstack, tmp173
	movl	%edx, %esi	# D.16041,
	movq	%rax, %rdi	# tmp173,
	call	pop_stack	#
	.loc 1 1378 0
	movq	-8(%rbp), %rax	# src1_note, tmp174
	addq	$8, %rax	#, D.16037
	movl	$8, %esi	#,
	movq	%rax, %rdi	# D.16037,
	call	replace_reg	#
.L262:
	.loc 1 1385 0
	cmpq	$0, -32(%rbp)	#, src2_note
	je	.L256	#,
	.loc 1 1386 0
	movq	-48(%rbp), %rax	# src1, tmp175
	movq	(%rax), %rax	# *src1_1, D.16038
	movzwl	(%rax), %eax	# _59->code, D.16039
	cmpw	$61, %ax	#, D.16039
	jne	.L264	#,
	.loc 1 1386 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# src1, tmp176
	movq	(%rax), %rax	# *src1_1, D.16038
	movl	8(%rax), %eax	# _61->fld[0].rtuint, D.16040
	cmpl	$7, %eax	#, D.16040
	jbe	.L264	#,
	movq	-48(%rbp), %rax	# src1, tmp177
	movq	(%rax), %rax	# *src1_1, D.16038
	movl	8(%rax), %eax	# _63->fld[0].rtuint, D.16040
	cmpl	$15, %eax	#, D.16040
	ja	.L264	#,
	movq	-40(%rbp), %rax	# src2, tmp178
	movq	(%rax), %rax	# *src2_2, D.16038
	movzwl	(%rax), %eax	# _65->code, D.16039
	cmpw	$61, %ax	#, D.16039
	jne	.L264	#,
	movq	-40(%rbp), %rax	# src2, tmp179
	movq	(%rax), %rax	# *src2_2, D.16038
	movl	8(%rax), %eax	# _67->fld[0].rtuint, D.16040
	cmpl	$7, %eax	#, D.16040
	jbe	.L264	#,
	movq	-40(%rbp), %rax	# src2, tmp180
	movq	(%rax), %rax	# *src2_2, D.16038
	movl	8(%rax), %eax	# _69->fld[0].rtuint, D.16040
	cmpl	$15, %eax	#, D.16040
	ja	.L264	#,
	.loc 1 1387 0 is_stmt 1 discriminator 1
	movq	-48(%rbp), %rax	# src1, tmp181
	movq	(%rax), %rax	# *src1_1, D.16038
	movl	8(%rax), %edx	# _71->fld[0].rtuint, D.16040
	movq	-40(%rbp), %rax	# src2, tmp182
	movq	(%rax), %rax	# *src2_2, D.16038
	movl	8(%rax), %eax	# _73->fld[0].rtuint, D.16040
	.loc 1 1386 0 discriminator 1
	cmpl	%eax, %edx	# D.16040, D.16040
	je	.L256	#,
.L264:
	.loc 1 1394 0
	movq	-32(%rbp), %rax	# src2_note, tmp183
	movq	8(%rax), %rdx	# src2_note_3->fld[0].rtx, D.16038
	movq	-64(%rbp), %rax	# regstack, tmp184
	movq	%rdx, %rsi	# D.16038,
	movq	%rax, %rdi	# tmp184,
	call	get_hard_regnum	#
	cmpl	$8, %eax	#, D.16041
	jne	.L265	#,
	.loc 1 1395 0
	cmpq	$0, -8(%rbp)	#, src1_note
	je	.L265	#,
	.loc 1 1397 0
	movq	-32(%rbp), %rax	# src2_note, tmp185
	movq	8(%rax), %rax	# src2_note_3->fld[0].rtx, D.16038
	movl	8(%rax), %eax	# _77->fld[0].rtuint, D.16040
	movl	%eax, %edx	# D.16040, D.16041
	movq	-64(%rbp), %rax	# regstack, tmp186
	movl	%edx, %esi	# D.16041,
	movq	%rax, %rdi	# tmp186,
	call	pop_stack	#
	.loc 1 1398 0
	movq	-32(%rbp), %rax	# src2_note, tmp187
	addq	$8, %rax	#, D.16037
	movl	$9, %esi	#,
	movq	%rax, %rdi	# D.16037,
	call	replace_reg	#
	jmp	.L256	#
.L265:
	.loc 1 1408 0
	movq	-32(%rbp), %rax	# src2_note, tmp188
	movq	8(%rax), %rax	# src2_note_3->fld[0].rtx, D.16038
	movl	8(%rax), %edx	# _81->fld[0].rtuint, D.16040
	movq	-56(%rbp), %rax	# insn, tmp189
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp189,
	call	remove_regno_note	#
	.loc 1 1410 0
	movq	-32(%rbp), %rax	# src2_note, tmp190
	movq	8(%rax), %rdx	# src2_note_3->fld[0].rtx, D.16038
	movq	-64(%rbp), %rsi	# regstack, tmp191
	movq	-56(%rbp), %rax	# insn, tmp192
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# tmp192,
	call	emit_pop_insn	#
.L256:
	.loc 1 1414 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	compare_for_stack_reg, .-compare_for_stack_reg
	.type	subst_stack_regs_pat, @function
subst_stack_regs_pat:
.LFB22:
	.loc 1 1424 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$200, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -184(%rbp)	# insn, insn
	movq	%rsi, -192(%rbp)	# regstack, regstack
	movq	%rdx, -200(%rbp)	# pat, pat
	.loc 1 1427 0
	movq	-200(%rbp), %rax	# pat, tmp470
	movzwl	(%rax), %eax	# pat_17(D)->code, D.16042
	movzwl	%ax, %eax	# D.16042, D.16043
	cmpl	$48, %eax	#, D.16043
	je	.L268	#,
	cmpl	$49, %eax	#, D.16043
	je	.L269	#,
	cmpl	$47, %eax	#, D.16043
	je	.L270	#,
	.loc 1 1852 0
	jmp	.L266	#
.L268:
	.loc 1 1432 0
	movq	-200(%rbp), %rax	# pat, tmp471
	addq	$8, %rax	#, D.16044
	movq	%rax, %rdi	# D.16044,
	call	get_true_reg	#
	movq	%rax, -88(%rbp)	# tmp472, src
	.loc 1 1433 0
	movq	-88(%rbp), %rax	# src, tmp473
	movq	(%rax), %rax	# *src_21, D.16045
	movzwl	(%rax), %eax	# _22->code, D.16042
	cmpw	$61, %ax	#, D.16042
	jne	.L271	#,
	.loc 1 1433 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# src, tmp474
	movq	(%rax), %rax	# *src_21, D.16045
	movl	8(%rax), %eax	# _24->fld[0].rtuint, D.16043
	cmpl	$7, %eax	#, D.16043
	jbe	.L271	#,
	movq	-88(%rbp), %rax	# src, tmp475
	movq	(%rax), %rax	# *src_21, D.16045
	movl	8(%rax), %eax	# _26->fld[0].rtuint, D.16043
	cmpl	$15, %eax	#, D.16043
	ja	.L271	#,
	.loc 1 1434 0 is_stmt 1
	movq	-88(%rbp), %rax	# src, tmp476
	movq	(%rax), %rax	# *src_21, D.16045
	movl	8(%rax), %edx	# _28->fld[0].rtuint, D.16043
	movq	-184(%rbp), %rax	# insn, tmp477
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp477,
	call	find_regno_note	#
	testq	%rax, %rax	# D.16045
	je	.L271	#,
	.loc 1 1436 0
	movq	-88(%rbp), %rax	# src, tmp478
	movq	(%rax), %rdx	# *src_21, D.16045
	movq	-192(%rbp), %rsi	# regstack, tmp479
	movq	-184(%rbp), %rax	# insn, tmp480
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# tmp480,
	call	emit_pop_insn	#
	.loc 1 1437 0
	jmp	.L266	#
.L271:
	.loc 1 1440 0
	movq	-88(%rbp), %rax	# src, tmp481
	movq	(%rax), %rdx	# *src_21, D.16045
	movq	-192(%rbp), %rax	# regstack, tmp482
	movq	%rdx, %rsi	# D.16045,
	movq	%rax, %rdi	# tmp482,
	call	get_hard_regnum	#
	cmpl	$-1, %eax	#, D.16046
	jne	.L273	#,
	.loc 1 1441 0
	movl	$__FUNCTION__.13103, %edx	#,
	movl	$1441, %esi	#,
	movl	$.LC1, %edi	#,
	call	fancy_abort	#
.L273:
	.loc 1 1442 0
	jmp	.L266	#
.L269:
.LBB24:
	.loc 1 1448 0
	movq	-200(%rbp), %rax	# pat, tmp483
	addq	$8, %rax	#, D.16044
	movq	%rax, %rdi	# D.16044,
	call	get_true_reg	#
	movq	%rax, -80(%rbp)	# tmp484, dest
	.loc 1 1449 0
	movq	-80(%rbp), %rax	# dest, tmp485
	movq	(%rax), %rax	# *dest_37, D.16045
	movzwl	(%rax), %eax	# _38->code, D.16042
	cmpw	$61, %ax	#, D.16042
	jne	.L274	#,
	.loc 1 1449 0 is_stmt 0 discriminator 1
	movq	-80(%rbp), %rax	# dest, tmp486
	movq	(%rax), %rax	# *dest_37, D.16045
	movl	8(%rax), %eax	# _40->fld[0].rtuint, D.16043
	cmpl	$7, %eax	#, D.16043
	jbe	.L274	#,
	movq	-80(%rbp), %rax	# dest, tmp487
	movq	(%rax), %rax	# *dest_37, D.16045
	movl	8(%rax), %eax	# _42->fld[0].rtuint, D.16043
	cmpl	$15, %eax	#, D.16043
	ja	.L274	#,
	.loc 1 1451 0 is_stmt 1
	movq	-80(%rbp), %rax	# dest, tmp488
	movq	(%rax), %rdx	# *dest_37, D.16045
	movq	-184(%rbp), %rax	# insn, tmp489
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp489,
	call	find_reg_note	#
	movq	%rax, -128(%rbp)	# tmp490, note
	.loc 1 1453 0
	movq	-184(%rbp), %rax	# insn, tmp491
	movq	32(%rax), %rax	# insn_30(D)->fld[3].rtx, D.16045
	cmpq	-200(%rbp), %rax	# pat, D.16045
	je	.L275	#,
	.loc 1 1462 0
	cmpq	$0, -128(%rbp)	#, note
	je	.L276	#,
	.loc 1 1463 0
	movq	-80(%rbp), %rax	# dest, tmp492
	movq	(%rax), %rdx	# *dest_37, D.16045
	movq	-192(%rbp), %rsi	# regstack, tmp493
	movq	-184(%rbp), %rax	# insn, tmp494
	movl	$1, %ecx	#,
	movq	%rax, %rdi	# tmp494,
	call	emit_pop_insn	#
	jmp	.L277	#
.L276:
	.loc 1 1466 0
	movq	-80(%rbp), %rax	# dest, tmp495
	movq	(%rax), %rdx	# *dest_37, D.16045
	movq	-184(%rbp), %rax	# insn, tmp496
	movl	$10, %esi	#,
	movq	%rax, %rdi	# tmp496,
	call	find_reg_note	#
	movq	%rax, -128(%rbp)	# tmp497, note
	.loc 1 1467 0
	cmpq	$0, -128(%rbp)	#, note
	jne	.L277	#,
	.loc 1 1468 0
	movl	$__FUNCTION__.13103, %edx	#,
	movl	$1468, %esi	#,
	movl	$.LC1, %edi	#,
	call	fancy_abort	#
.L277:
	.loc 1 1470 0 discriminator 1
	movq	-128(%rbp), %rdx	# note, tmp498
	movq	-184(%rbp), %rax	# insn, tmp499
	movq	%rdx, %rsi	# tmp498,
	movq	%rax, %rdi	# tmp499,
	call	remove_note	#
	.loc 1 1471 0 discriminator 1
	movq	-80(%rbp), %rax	# dest, tmp500
	movl	$15, %esi	#,
	movq	%rax, %rdi	# tmp500,
	call	replace_reg	#
	jmp	.L274	#
.L275:
	.loc 1 1480 0
	cmpq	$0, -128(%rbp)	#, note
	jne	.L278	#,
	.loc 1 1481 0
	movq	-80(%rbp), %rax	# dest, tmp501
	movq	(%rax), %rdx	# *dest_37, D.16045
	movq	-192(%rbp), %rax	# regstack, tmp502
	movq	%rdx, %rsi	# D.16045,
	movq	%rax, %rdi	# tmp502,
	call	get_hard_regnum	#
	cmpl	$-1, %eax	#, D.16046
	jne	.L278	#,
	.loc 1 1483 0
	movq	nan(%rip), %rdx	# nan, nan.46
	movq	-80(%rbp), %rax	# dest, tmp503
	movq	(%rax), %rax	# *dest_37, D.16045
	movl	8(%rax), %eax	# _53->fld[0].rtuint, D.16043
	subl	$8, %eax	#, D.16043
	movl	%eax, %eax	# D.16043, tmp504
	imulq	$472, %rax, %rax	#, tmp504, tmp505
	addq	$FP_mode_reg+120, %rax	#, tmp506
	movq	(%rax), %rax	# FP_mode_reg, D.16045
	movq	%rdx, %rcx	# nan.46,
	movq	%rax, %rdx	# D.16045,
	movl	$0, %esi	#,
	movl	$47, %edi	#,
	call	gen_rtx_fmt_ee	#
	movq	%rax, -200(%rbp)	# tmp507, pat
	.loc 1 1486 0
	movq	-184(%rbp), %rax	# insn, tmp508
	movq	-200(%rbp), %rdx	# pat, tmp509
	movq	%rdx, 32(%rax)	# tmp509, insn_30(D)->fld[3].rtx
	.loc 1 1487 0
	movq	-200(%rbp), %rdx	# pat, tmp510
	movq	-192(%rbp), %rcx	# regstack, tmp511
	movq	-184(%rbp), %rax	# insn, tmp512
	movq	%rcx, %rsi	# tmp511,
	movq	%rax, %rdi	# tmp512,
	call	move_for_stack_reg	#
.L278:
	.loc 1 1489 0
	cmpq	$0, -128(%rbp)	#, note
	jne	.L274	#,
	.loc 1 1489 0 is_stmt 0 discriminator 1
	movq	-80(%rbp), %rax	# dest, tmp513
	movq	(%rax), %rax	# *dest_37, D.16045
	movzbl	2(%rax), %eax	# _58->mode, D.16047
	movzbl	%al, %eax	# D.16047, D.16046
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.16048
	cmpl	$5, %eax	#, D.16048
	je	.L279	#,
	movq	-80(%rbp), %rax	# dest, tmp515
	movq	(%rax), %rax	# *dest_37, D.16045
	movzbl	2(%rax), %eax	# _62->mode, D.16047
	movzbl	%al, %eax	# D.16047, D.16046
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.16048
	cmpl	$6, %eax	#, D.16048
	jne	.L274	#,
.L279:
	.loc 1 1490 0 is_stmt 1
	movq	-80(%rbp), %rax	# dest, tmp517
	movq	(%rax), %rax	# *dest_37, D.16045
	movl	8(%rax), %eax	# _66->fld[0].rtuint, D.16043
	subl	$8, %eax	#, D.16043
	movl	%eax, %eax	# D.16043, tmp518
	imulq	$472, %rax, %rax	#, tmp518, tmp519
	addq	$FP_mode_reg+128, %rax	#, tmp520
	movq	(%rax), %rdx	# FP_mode_reg, D.16045
	movq	-192(%rbp), %rax	# regstack, tmp521
	movq	%rdx, %rsi	# D.16045,
	movq	%rax, %rdi	# tmp521,
	call	get_hard_regnum	#
	cmpl	$-1, %eax	#, D.16046
	jne	.L274	#,
	.loc 1 1492 0
	movq	nan(%rip), %rdx	# nan, nan.47
	movq	-80(%rbp), %rax	# dest, tmp522
	movq	(%rax), %rax	# *dest_37, D.16045
	movl	8(%rax), %eax	# _72->fld[0].rtuint, D.16043
	subl	$7, %eax	#, D.16043
	movl	%eax, %eax	# D.16043, tmp523
	imulq	$472, %rax, %rax	#, tmp523, tmp524
	addq	$FP_mode_reg+120, %rax	#, tmp525
	movq	(%rax), %rax	# FP_mode_reg, D.16045
	movq	%rdx, %rcx	# nan.47,
	movq	%rax, %rdx	# D.16045,
	movl	$0, %esi	#,
	movl	$47, %edi	#,
	call	gen_rtx_fmt_ee	#
	movq	%rax, -200(%rbp)	# tmp526, pat
	.loc 1 1495 0
	movq	-184(%rbp), %rax	# insn, tmp527
	movq	-200(%rbp), %rdx	# pat, tmp528
	movq	%rdx, 32(%rax)	# tmp528, insn_30(D)->fld[3].rtx
	.loc 1 1496 0
	movq	-200(%rbp), %rdx	# pat, tmp529
	movq	-192(%rbp), %rcx	# regstack, tmp530
	movq	-184(%rbp), %rax	# insn, tmp531
	movq	%rcx, %rsi	# tmp530,
	movq	%rax, %rdi	# tmp531,
	call	move_for_stack_reg	#
	.loc 1 1500 0
	jmp	.L266	#
.L274:
	jmp	.L266	#
.L270:
.LBE24:
.LBB25:
	.loc 1 1505 0
	movq	$0, -120(%rbp)	#, src1
	.loc 1 1509 0
	movq	-200(%rbp), %rax	# pat, tmp532
	addq	$8, %rax	#, D.16044
	movq	%rax, %rdi	# D.16044,
	call	get_true_reg	#
	movq	%rax, -80(%rbp)	# tmp533, dest
	.loc 1 1510 0
	movq	-200(%rbp), %rax	# pat, tmp534
	addq	$16, %rax	#, D.16044
	movq	%rax, %rdi	# D.16044,
	call	get_true_reg	#
	movq	%rax, -88(%rbp)	# tmp535, src
	.loc 1 1511 0
	movq	-200(%rbp), %rax	# pat, tmp536
	movq	16(%rax), %rax	# pat_17(D)->fld[1].rtx, tmp537
	movq	%rax, -96(%rbp)	# tmp537, pat_src
	.loc 1 1514 0
	movq	-88(%rbp), %rax	# src, tmp538
	movq	(%rax), %rax	# *src_81, D.16045
	movzwl	(%rax), %eax	# _83->code, D.16042
	cmpw	$61, %ax	#, D.16042
	jne	.L280	#,
	.loc 1 1514 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# src, tmp539
	movq	(%rax), %rax	# *src_81, D.16045
	movl	8(%rax), %eax	# _85->fld[0].rtuint, D.16043
	cmpl	$7, %eax	#, D.16043
	jbe	.L280	#,
	movq	-88(%rbp), %rax	# src, tmp540
	movq	(%rax), %rax	# *src_81, D.16045
	movl	8(%rax), %eax	# _87->fld[0].rtuint, D.16043
	cmpl	$15, %eax	#, D.16043
	jbe	.L281	#,
.L280:
	.loc 1 1515 0 is_stmt 1
	movq	-80(%rbp), %rax	# dest, tmp541
	movq	(%rax), %rax	# *dest_79, D.16045
	movzwl	(%rax), %eax	# _89->code, D.16042
	cmpw	$61, %ax	#, D.16042
	jne	.L282	#,
	.loc 1 1515 0 is_stmt 0 discriminator 1
	movq	-80(%rbp), %rax	# dest, tmp542
	movq	(%rax), %rax	# *dest_79, D.16045
	movl	8(%rax), %eax	# _91->fld[0].rtuint, D.16043
	cmpl	$7, %eax	#, D.16043
	jbe	.L282	#,
	movq	-80(%rbp), %rax	# dest, tmp543
	movq	(%rax), %rax	# *dest_79, D.16045
	movl	8(%rax), %eax	# _93->fld[0].rtuint, D.16043
	cmpl	$15, %eax	#, D.16043
	ja	.L282	#,
	.loc 1 1516 0 is_stmt 1
	movq	-88(%rbp), %rax	# src, tmp544
	movq	(%rax), %rax	# *src_81, D.16045
	movzwl	(%rax), %eax	# _95->code, D.16042
	cmpw	$61, %ax	#, D.16042
	je	.L281	#,
	.loc 1 1516 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# src, tmp545
	movq	(%rax), %rax	# *src_81, D.16045
	movzwl	(%rax), %eax	# _97->code, D.16042
	cmpw	$66, %ax	#, D.16042
	je	.L281	#,
	.loc 1 1517 0 is_stmt 1
	movq	-88(%rbp), %rax	# src, tmp546
	movq	(%rax), %rax	# *src_81, D.16045
	movzwl	(%rax), %eax	# _99->code, D.16042
	cmpw	$55, %ax	#, D.16042
	jne	.L282	#,
.L281:
	.loc 1 1519 0
	movq	-200(%rbp), %rdx	# pat, tmp547
	movq	-192(%rbp), %rcx	# regstack, tmp548
	movq	-184(%rbp), %rax	# insn, tmp549
	movq	%rcx, %rsi	# tmp548,
	movq	%rax, %rdi	# tmp549,
	call	move_for_stack_reg	#
	.loc 1 1520 0
	jmp	.L266	#
.L282:
	.loc 1 1523 0
	movq	-96(%rbp), %rax	# pat_src, tmp550
	movzwl	(%rax), %eax	# pat_src_82->code, D.16042
	movzwl	%ax, %eax	# D.16042, D.16043
	subl	$42, %eax	#, tmp551
	cmpl	$88, %eax	#, tmp551
	ja	.L283	#,
	movl	%eax, %eax	# tmp551, tmp552
	movq	.L285(,%rax,8), %rax	#, tmp553
	jmp	*%rax	# tmp553
	.section	.rodata
	.align 8
	.align 4
.L285:
	.quad	.L284
	.quad	.L283
	.quad	.L283
	.quad	.L283
	.quad	.L283
	.quad	.L283
	.quad	.L283
	.quad	.L283
	.quad	.L286
	.quad	.L283
	.quad	.L283
	.quad	.L283
	.quad	.L283
	.quad	.L283
	.quad	.L283
	.quad	.L283
	.quad	.L283
	.quad	.L283
	.quad	.L283
	.quad	.L287
	.quad	.L283
	.quad	.L283
	.quad	.L283
	.quad	.L283
	.quad	.L283
	.quad	.L283
	.quad	.L283
	.quad	.L283
	.quad	.L283
	.quad	.L283
	.quad	.L288
	.quad	.L283
	.quad	.L289
	.quad	.L290
	.quad	.L290
	.quad	.L291
	.quad	.L290
	.quad	.L290
	.quad	.L283
	.quad	.L283
	.quad	.L283
	.quad	.L283
	.quad	.L283
	.quad	.L283
	.quad	.L283
	.quad	.L283
	.quad	.L283
	.quad	.L283
	.quad	.L283
	.quad	.L283
	.quad	.L283
	.quad	.L283
	.quad	.L283
	.quad	.L283
	.quad	.L283
	.quad	.L283
	.quad	.L283
	.quad	.L283
	.quad	.L283
	.quad	.L283
	.quad	.L283
	.quad	.L283
	.quad	.L283
	.quad	.L283
	.quad	.L283
	.quad	.L283
	.quad	.L283
	.quad	.L283
	.quad	.L283
	.quad	.L283
	.quad	.L283
	.quad	.L283
	.quad	.L283
	.quad	.L283
	.quad	.L283
	.quad	.L283
	.quad	.L283
	.quad	.L283
	.quad	.L283
	.quad	.L283
	.quad	.L283
	.quad	.L283
	.quad	.L291
	.quad	.L283
	.quad	.L283
	.quad	.L283
	.quad	.L283
	.quad	.L291
	.quad	.L291
	.text
.L289:
	.loc 1 1526 0
	movq	-96(%rbp), %rdx	# pat_src, tmp554
	movq	-192(%rbp), %rcx	# regstack, tmp555
	movq	-184(%rbp), %rax	# insn, tmp556
	movq	%rcx, %rsi	# tmp555,
	movq	%rax, %rdi	# tmp556,
	call	compare_for_stack_reg	#
	.loc 1 1527 0
	jmp	.L292	#
.L286:
.LBB26:
	.loc 1 1532 0
	movq	-80(%rbp), %rax	# dest, tmp557
	movq	(%rax), %rax	# *dest_79, D.16045
	movl	8(%rax), %eax	# _103->fld[0].rtuint, D.16043
	cmpl	$7, %eax	#, D.16043
	jbe	.L293	#,
	.loc 1 1532 0 is_stmt 0 discriminator 1
	movq	-80(%rbp), %rax	# dest, tmp558
	movq	(%rax), %rax	# *dest_79, D.16045
	movl	8(%rax), %eax	# _105->fld[0].rtuint, D.16043
	cmpl	$15, %eax	#, D.16043
	jbe	.L294	#,
.L293:
	.loc 1 1532 0 discriminator 2
	movq	-80(%rbp), %rax	# dest, tmp559
	movq	(%rax), %rax	# *dest_79, D.16045
	movl	8(%rax), %eax	# _107->fld[0].rtuint, D.16043
	cmpl	$20, %eax	#, D.16043
	jbe	.L295	#,
	.loc 1 1532 0 discriminator 1
	movq	-80(%rbp), %rax	# dest, tmp560
	movq	(%rax), %rax	# *dest_79, D.16045
	movl	8(%rax), %eax	# _109->fld[0].rtuint, D.16043
	cmpl	$28, %eax	#, D.16043
	jbe	.L294	#,
.L295:
	.loc 1 1532 0 discriminator 2
	movq	-80(%rbp), %rax	# dest, tmp561
	movq	(%rax), %rax	# *dest_79, D.16045
	movl	8(%rax), %eax	# _111->fld[0].rtuint, D.16043
	cmpl	$44, %eax	#, D.16043
	jbe	.L296	#,
	.loc 1 1532 0 discriminator 1
	movq	-80(%rbp), %rax	# dest, tmp562
	movq	(%rax), %rax	# *dest_79, D.16045
	movl	8(%rax), %eax	# _113->fld[0].rtuint, D.16043
	cmpl	$52, %eax	#, D.16043
	jbe	.L294	#,
.L296:
	.loc 1 1532 0 discriminator 2
	movq	-80(%rbp), %rax	# dest, tmp563
	movq	(%rax), %rax	# *dest_79, D.16045
	movl	8(%rax), %eax	# _115->fld[0].rtuint, D.16043
	cmpl	$28, %eax	#, D.16043
	jbe	.L297	#,
	.loc 1 1532 0 discriminator 1
	movq	-80(%rbp), %rax	# dest, tmp564
	movq	(%rax), %rax	# *dest_79, D.16045
	movl	8(%rax), %eax	# _117->fld[0].rtuint, D.16043
	cmpl	$36, %eax	#, D.16043
	ja	.L297	#,
.L294:
	movq	-80(%rbp), %rax	# dest, tmp565
	movq	(%rax), %rax	# *dest_79, D.16045
	movzbl	2(%rax), %eax	# _151->mode, D.16047
	movzbl	%al, %eax	# D.16047, D.16046
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.16048
	cmpl	$5, %eax	#, D.16048
	je	.L298	#,
	.loc 1 1532 0 discriminator 2
	movq	-80(%rbp), %rax	# dest, tmp567
	movq	(%rax), %rax	# *dest_79, D.16045
	movzbl	2(%rax), %eax	# _155->mode, D.16047
	movzbl	%al, %eax	# D.16047, D.16046
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.16048
	cmpl	$6, %eax	#, D.16048
	jne	.L299	#,
.L298:
	.loc 1 1532 0 discriminator 1
	movl	$2, %eax	#, iftmp.49
	jmp	.L300	#
.L299:
	movl	$1, %eax	#, iftmp.49
.L300:
	.loc 1 1532 0 discriminator 3
	jmp	.L301	#
.L297:
	.loc 1 1532 0 discriminator 2
	movq	-80(%rbp), %rax	# dest, tmp569
	movq	(%rax), %rax	# *dest_79, D.16045
	movzbl	2(%rax), %eax	# _119->mode, D.16047
	cmpb	$18, %al	#, D.16047
	jne	.L302	#,
	.loc 1 1532 0 discriminator 1
	movl	target_flags(%rip), %eax	# target_flags, target_flags.52
	andl	$33554432, %eax	#, D.16046
	testl	%eax, %eax	# D.16046
	je	.L303	#,
	movl	$2, %eax	#, iftmp.51
	jmp	.L301	#
.L303:
	.loc 1 1532 0 discriminator 2
	movl	$3, %eax	#, iftmp.51
	jmp	.L301	#
.L302:
	movq	-80(%rbp), %rax	# dest, tmp570
	movq	(%rax), %rax	# *dest_79, D.16045
	movzbl	2(%rax), %eax	# _126->mode, D.16047
	cmpb	$24, %al	#, D.16047
	jne	.L306	#,
	.loc 1 1532 0 discriminator 1
	movl	target_flags(%rip), %eax	# target_flags, target_flags.55
	andl	$33554432, %eax	#, D.16046
	testl	%eax, %eax	# D.16046
	je	.L307	#,
	movl	$4, %eax	#, iftmp.54
	jmp	.L301	#
.L307:
	.loc 1 1532 0 discriminator 2
	movl	$6, %eax	#, iftmp.54
	jmp	.L301	#
.L306:
	movq	-80(%rbp), %rax	# dest, tmp571
	movq	(%rax), %rax	# *dest_79, D.16045
	movzbl	2(%rax), %eax	# _133->mode, D.16047
	movzbl	%al, %eax	# D.16047, D.16046
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.16047
	movzbl	%al, %edx	# D.16047, D.16046
	movl	target_flags(%rip), %eax	# target_flags, target_flags.57
	andl	$33554432, %eax	#, D.16046
	testl	%eax, %eax	# D.16046
	je	.L310	#,
	.loc 1 1532 0 discriminator 1
	movl	$8, %eax	#, iftmp.56
	jmp	.L311	#
.L310:
	.loc 1 1532 0 discriminator 2
	movl	$4, %eax	#, iftmp.56
.L311:
	.loc 1 1532 0 discriminator 3
	addl	%edx, %eax	# D.16046, D.16046
	subl	$1, %eax	#, D.16046
	movl	target_flags(%rip), %edx	# target_flags, target_flags.59
	andl	$33554432, %edx	#, D.16046
	testl	%edx, %edx	# D.16046
	je	.L312	#,
	.loc 1 1532 0 discriminator 1
	movl	$8, %ebx	#, iftmp.58
	jmp	.L313	#
.L312:
	.loc 1 1532 0 discriminator 2
	movl	$4, %ebx	#, iftmp.58
.L313:
	.loc 1 1532 0 discriminator 3
	cltd
	idivl	%ebx	# iftmp.58
.L301:
	movl	%eax, -168(%rbp)	# iftmp.48, count
	jmp	.L314	#
.L315:
	.loc 1 1535 0 is_stmt 1
	movq	-192(%rbp), %rax	# regstack, tmp575
	movl	(%rax), %eax	# regstack_33(D)->top, D.16046
	leal	1(%rax), %edx	#, D.16046
	movq	-192(%rbp), %rax	# regstack, tmp576
	movl	%edx, (%rax)	# D.16046, regstack_33(D)->top
	movq	-192(%rbp), %rax	# regstack, tmp577
	movl	(%rax), %esi	# regstack_33(D)->top, D.16046
	movq	-80(%rbp), %rax	# dest, tmp578
	movq	(%rax), %rax	# *dest_79, D.16045
	movl	8(%rax), %eax	# _167->fld[0].rtuint, D.16043
	movl	%eax, %edx	# D.16043, D.16047
	movl	-168(%rbp), %eax	# count, tmp579
	leal	(%rdx,%rax), %ecx	#, D.16047
	movq	-192(%rbp), %rdx	# regstack, tmp580
	movslq	%esi, %rax	# D.16046, tmp581
	movb	%cl, 16(%rdx,%rax)	# D.16047, regstack_33(D)->reg
	.loc 1 1536 0
	movq	-192(%rbp), %rax	# regstack, tmp582
	movq	8(%rax), %rdx	# regstack_33(D)->reg_set, D.16049
	movq	-80(%rbp), %rax	# dest, tmp583
	movq	(%rax), %rax	# *dest_79, D.16045
	movl	8(%rax), %ecx	# _173->fld[0].rtuint, D.16043
	movl	-168(%rbp), %eax	# count, count.60
	addl	%ecx, %eax	# D.16043, D.16043
	movl	$1, %esi	#, tmp584
	movl	%eax, %ecx	# D.16046, tmp862
	salq	%cl, %rsi	# tmp862, D.16049
	movq	%rsi, %rax	# D.16049, D.16049
	orq	%rax, %rdx	# D.16049, D.16049
	movq	-192(%rbp), %rax	# regstack, tmp585
	movq	%rdx, 8(%rax)	# D.16049, regstack_33(D)->reg_set
.L314:
	.loc 1 1532 0 discriminator 1
	subl	$1, -168(%rbp)	#, count
	cmpl	$0, -168(%rbp)	#, count
	jns	.L315	#,
.LBE26:
	.loc 1 1539 0
	movq	-80(%rbp), %rax	# dest, tmp586
	movl	$8, %esi	#,
	movq	%rax, %rdi	# tmp586,
	call	replace_reg	#
	.loc 1 1540 0
	jmp	.L292	#
.L287:
	.loc 1 1544 0
	movq	-80(%rbp), %rax	# dest, tmp587
	movq	(%rax), %rdx	# *dest_79, D.16045
	movq	global_rtl+8(%rip), %rax	# global_rtl, D.16045
	cmpq	%rax, %rdx	# D.16045, D.16045
	je	.L316	#,
	.loc 1 1545 0
	movl	$__FUNCTION__.13103, %edx	#,
	movl	$1545, %esi	#,
	movl	$.LC1, %edi	#,
	call	fancy_abort	#
.L316:
	.loc 1 1546 0
	movq	-88(%rbp), %rax	# src, tmp588
	movq	%rax, -120(%rbp)	# tmp588, src1
.L291:
	.loc 1 1559 0
	cmpq	$0, -120(%rbp)	#, src1
	jne	.L317	#,
	.loc 1 1560 0
	movq	-96(%rbp), %rax	# pat_src, tmp589
	addq	$8, %rax	#, D.16044
	movq	%rax, %rdi	# D.16044,
	call	get_true_reg	#
	movq	%rax, -120(%rbp)	# tmp590, src1
.L317:
	.loc 1 1562 0
	movq	-120(%rbp), %rax	# src1, tmp591
	movq	(%rax), %rdx	# *src1_3, D.16045
	movq	-192(%rbp), %rcx	# regstack, tmp592
	movq	-184(%rbp), %rax	# insn, tmp593
	movq	%rcx, %rsi	# tmp592,
	movq	%rax, %rdi	# tmp593,
	call	emit_swap_insn	#
	.loc 1 1564 0
	movq	-120(%rbp), %rax	# src1, tmp594
	movq	(%rax), %rax	# *src1_3, D.16045
	movl	8(%rax), %edx	# _186->fld[0].rtuint, D.16043
	movq	-184(%rbp), %rax	# insn, tmp595
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp595,
	call	find_regno_note	#
	movq	%rax, -112(%rbp)	# tmp596, src1_note
	.loc 1 1566 0
	movq	-80(%rbp), %rax	# dest, tmp597
	movq	(%rax), %rax	# *dest_79, D.16045
	movzwl	(%rax), %eax	# _189->code, D.16042
	cmpw	$61, %ax	#, D.16042
	jne	.L318	#,
	.loc 1 1566 0 is_stmt 0 discriminator 1
	movq	-80(%rbp), %rax	# dest, tmp598
	movq	(%rax), %rax	# *dest_79, D.16045
	movl	8(%rax), %eax	# _191->fld[0].rtuint, D.16043
	cmpl	$7, %eax	#, D.16043
	jbe	.L318	#,
	movq	-80(%rbp), %rax	# dest, tmp599
	movq	(%rax), %rax	# *dest_79, D.16045
	movl	8(%rax), %eax	# _193->fld[0].rtuint, D.16043
	cmpl	$15, %eax	#, D.16043
	ja	.L318	#,
	.loc 1 1567 0 is_stmt 1
	movq	-80(%rbp), %rax	# dest, tmp600
	movl	$8, %esi	#,
	movq	%rax, %rdi	# tmp600,
	call	replace_reg	#
.L318:
	.loc 1 1569 0
	cmpq	$0, -112(%rbp)	#, src1_note
	je	.L319	#,
	.loc 1 1571 0
	movq	-112(%rbp), %rax	# src1_note, tmp601
	addq	$8, %rax	#, D.16044
	movl	$8, %esi	#,
	movq	%rax, %rdi	# D.16044,
	call	replace_reg	#
	.loc 1 1572 0
	movq	-192(%rbp), %rax	# regstack, tmp602
	movl	(%rax), %eax	# regstack_33(D)->top, D.16046
	leal	-1(%rax), %edx	#, D.16046
	movq	-192(%rbp), %rax	# regstack, tmp603
	movl	%edx, (%rax)	# D.16046, regstack_33(D)->top
	.loc 1 1573 0
	movq	-192(%rbp), %rax	# regstack, tmp604
	movq	8(%rax), %rdx	# regstack_33(D)->reg_set, D.16049
	movq	-120(%rbp), %rax	# src1, tmp605
	movq	(%rax), %rax	# *src1_3, D.16045
	movl	8(%rax), %eax	# _199->fld[0].rtuint, D.16043
	movl	$1, %esi	#, tmp606
	movl	%eax, %ecx	# D.16046, tmp864
	salq	%cl, %rsi	# tmp864, D.16049
	movq	%rsi, %rax	# D.16049, D.16049
	notq	%rax	# D.16049
	andq	%rax, %rdx	# D.16049, D.16049
	movq	-192(%rbp), %rax	# regstack, tmp607
	movq	%rdx, 8(%rax)	# D.16049, regstack_33(D)->reg_set
.L319:
	.loc 1 1576 0
	movq	-120(%rbp), %rax	# src1, tmp608
	movl	$8, %esi	#,
	movq	%rax, %rdi	# tmp608,
	call	replace_reg	#
	.loc 1 1577 0
	jmp	.L292	#
.L290:
	.loc 1 1591 0
	movq	-96(%rbp), %rax	# pat_src, tmp609
	addq	$8, %rax	#, D.16044
	movq	%rax, %rdi	# D.16044,
	call	get_true_reg	#
	movq	%rax, -120(%rbp)	# tmp610, src1
	.loc 1 1592 0
	movq	-96(%rbp), %rax	# pat_src, tmp611
	addq	$16, %rax	#, D.16044
	movq	%rax, %rdi	# D.16044,
	call	get_true_reg	#
	movq	%rax, -72(%rbp)	# tmp612, src2
	.loc 1 1596 0
	movq	-120(%rbp), %rax	# src1, tmp613
	movq	(%rax), %rax	# *src1_206, D.16045
	movzwl	(%rax), %eax	# _209->code, D.16042
	cmpw	$61, %ax	#, D.16042
	jne	.L320	#,
	.loc 1 1596 0 is_stmt 0 discriminator 1
	movq	-120(%rbp), %rax	# src1, tmp614
	movq	(%rax), %rax	# *src1_206, D.16045
	movl	8(%rax), %eax	# _211->fld[0].rtuint, D.16043
	cmpl	$7, %eax	#, D.16043
	jbe	.L320	#,
	movq	-120(%rbp), %rax	# src1, tmp615
	movq	(%rax), %rax	# *src1_206, D.16045
	movl	8(%rax), %eax	# _213->fld[0].rtuint, D.16043
	cmpl	$15, %eax	#, D.16043
	ja	.L320	#,
	.loc 1 1597 0 is_stmt 1
	movq	-120(%rbp), %rax	# src1, tmp616
	movq	(%rax), %rax	# *src1_206, D.16045
	movl	8(%rax), %edx	# _215->fld[0].rtuint, D.16043
	movq	-184(%rbp), %rax	# insn, tmp617
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp617,
	call	find_regno_note	#
	movq	%rax, -112(%rbp)	# tmp618, src1_note
	jmp	.L321	#
.L320:
	.loc 1 1599 0
	movq	$0, -112(%rbp)	#, src1_note
.L321:
	.loc 1 1600 0
	movq	-72(%rbp), %rax	# src2, tmp619
	movq	(%rax), %rax	# *src2_208, D.16045
	movzwl	(%rax), %eax	# _219->code, D.16042
	cmpw	$61, %ax	#, D.16042
	jne	.L322	#,
	.loc 1 1600 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# src2, tmp620
	movq	(%rax), %rax	# *src2_208, D.16045
	movl	8(%rax), %eax	# _221->fld[0].rtuint, D.16043
	cmpl	$7, %eax	#, D.16043
	jbe	.L322	#,
	movq	-72(%rbp), %rax	# src2, tmp621
	movq	(%rax), %rax	# *src2_208, D.16045
	movl	8(%rax), %eax	# _223->fld[0].rtuint, D.16043
	cmpl	$15, %eax	#, D.16043
	ja	.L322	#,
	.loc 1 1601 0 is_stmt 1
	movq	-72(%rbp), %rax	# src2, tmp622
	movq	(%rax), %rax	# *src2_208, D.16045
	movl	8(%rax), %edx	# _225->fld[0].rtuint, D.16043
	movq	-184(%rbp), %rax	# insn, tmp623
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp623,
	call	find_regno_note	#
	movq	%rax, -104(%rbp)	# tmp624, src2_note
	jmp	.L323	#
.L322:
	.loc 1 1603 0
	movq	$0, -104(%rbp)	#, src2_note
.L323:
	.loc 1 1608 0
	movq	-120(%rbp), %rax	# src1, tmp625
	movq	(%rax), %rax	# *src1_206, D.16045
	movzwl	(%rax), %eax	# _229->code, D.16042
	cmpw	$61, %ax	#, D.16042
	jne	.L324	#,
	.loc 1 1608 0 is_stmt 0 discriminator 1
	movq	-120(%rbp), %rax	# src1, tmp626
	movq	(%rax), %rax	# *src1_206, D.16045
	movl	8(%rax), %eax	# _231->fld[0].rtuint, D.16043
	cmpl	$7, %eax	#, D.16043
	jbe	.L324	#,
	movq	-120(%rbp), %rax	# src1, tmp627
	movq	(%rax), %rax	# *src1_206, D.16045
	movl	8(%rax), %eax	# _233->fld[0].rtuint, D.16043
	cmpl	$15, %eax	#, D.16043
	ja	.L324	#,
	movq	-72(%rbp), %rax	# src2, tmp628
	movq	(%rax), %rax	# *src2_208, D.16045
	movzwl	(%rax), %eax	# _235->code, D.16042
	cmpw	$61, %ax	#, D.16042
	jne	.L324	#,
	movq	-72(%rbp), %rax	# src2, tmp629
	movq	(%rax), %rax	# *src2_208, D.16045
	movl	8(%rax), %eax	# _237->fld[0].rtuint, D.16043
	cmpl	$7, %eax	#, D.16043
	jbe	.L324	#,
	movq	-72(%rbp), %rax	# src2, tmp630
	movq	(%rax), %rax	# *src2_208, D.16045
	movl	8(%rax), %eax	# _239->fld[0].rtuint, D.16043
	cmpl	$15, %eax	#, D.16043
	jbe	.L325	#,
.L324:
	.loc 1 1609 0 is_stmt 1
	movq	-80(%rbp), %rax	# dest, tmp631
	movq	(%rax), %rdx	# *dest_79, D.16045
	movq	-192(%rbp), %rcx	# regstack, tmp632
	movq	-184(%rbp), %rax	# insn, tmp633
	movq	%rcx, %rsi	# tmp632,
	movq	%rax, %rdi	# tmp633,
	call	emit_swap_insn	#
	jmp	.L326	#
.L325:
.LBB27:
	.loc 1 1618 0
	movq	-120(%rbp), %rax	# src1, tmp634
	movq	(%rax), %rdx	# *src1_206, D.16045
	movq	-192(%rbp), %rax	# regstack, tmp635
	movq	%rdx, %rsi	# D.16045,
	movq	%rax, %rdi	# tmp635,
	call	get_hard_regnum	#
	movl	%eax, -160(%rbp)	# tmp636, src1_hard_regnum
	.loc 1 1619 0
	movq	-72(%rbp), %rax	# src2, tmp637
	movq	(%rax), %rdx	# *src2_208, D.16045
	movq	-192(%rbp), %rax	# regstack, tmp638
	movq	%rdx, %rsi	# D.16045,
	movq	%rax, %rdi	# tmp638,
	call	get_hard_regnum	#
	movl	%eax, -156(%rbp)	# tmp639, src2_hard_regnum
	.loc 1 1620 0
	cmpl	$-1, -160(%rbp)	#, src1_hard_regnum
	je	.L327	#,
	.loc 1 1620 0 is_stmt 0 discriminator 1
	cmpl	$-1, -156(%rbp)	#, src2_hard_regnum
	jne	.L328	#,
.L327:
	.loc 1 1621 0 is_stmt 1
	movl	$__FUNCTION__.13103, %edx	#,
	movl	$1621, %esi	#,
	movl	$.LC1, %edi	#,
	call	fancy_abort	#
.L328:
	.loc 1 1623 0
	cmpl	$8, -160(%rbp)	#, src1_hard_regnum
	je	.L326	#,
	.loc 1 1624 0
	cmpl	$8, -156(%rbp)	#, src2_hard_regnum
	je	.L326	#,
	.loc 1 1625 0
	movq	-80(%rbp), %rax	# dest, tmp640
	movq	(%rax), %rdx	# *dest_79, D.16045
	movq	-192(%rbp), %rcx	# regstack, tmp641
	movq	-184(%rbp), %rax	# insn, tmp642
	movq	%rcx, %rsi	# tmp641,
	movq	%rax, %rdi	# tmp642,
	call	emit_swap_insn	#
.L326:
.LBE27:
	.loc 1 1628 0
	movq	-120(%rbp), %rax	# src1, tmp643
	movq	(%rax), %rax	# *src1_206, D.16045
	movzwl	(%rax), %eax	# _247->code, D.16042
	cmpw	$61, %ax	#, D.16042
	jne	.L329	#,
	.loc 1 1628 0 is_stmt 0 discriminator 1
	movq	-120(%rbp), %rax	# src1, tmp644
	movq	(%rax), %rax	# *src1_206, D.16045
	movl	8(%rax), %eax	# _249->fld[0].rtuint, D.16043
	cmpl	$7, %eax	#, D.16043
	jbe	.L329	#,
	movq	-120(%rbp), %rax	# src1, tmp645
	movq	(%rax), %rax	# *src1_206, D.16045
	movl	8(%rax), %eax	# _251->fld[0].rtuint, D.16043
	cmpl	$15, %eax	#, D.16043
	ja	.L329	#,
	.loc 1 1629 0 is_stmt 1
	movq	-120(%rbp), %rax	# src1, tmp646
	movq	(%rax), %rdx	# *src1_206, D.16045
	movq	-192(%rbp), %rax	# regstack, tmp647
	movq	%rdx, %rsi	# D.16045,
	movq	%rax, %rdi	# tmp647,
	call	get_hard_regnum	#
	movl	%eax, %edx	#, D.16046
	movq	-120(%rbp), %rax	# src1, tmp648
	movl	%edx, %esi	# D.16046,
	movq	%rax, %rdi	# tmp648,
	call	replace_reg	#
.L329:
	.loc 1 1630 0
	movq	-72(%rbp), %rax	# src2, tmp649
	movq	(%rax), %rax	# *src2_208, D.16045
	movzwl	(%rax), %eax	# _255->code, D.16042
	cmpw	$61, %ax	#, D.16042
	jne	.L330	#,
	.loc 1 1630 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# src2, tmp650
	movq	(%rax), %rax	# *src2_208, D.16045
	movl	8(%rax), %eax	# _257->fld[0].rtuint, D.16043
	cmpl	$7, %eax	#, D.16043
	jbe	.L330	#,
	movq	-72(%rbp), %rax	# src2, tmp651
	movq	(%rax), %rax	# *src2_208, D.16045
	movl	8(%rax), %eax	# _259->fld[0].rtuint, D.16043
	cmpl	$15, %eax	#, D.16043
	ja	.L330	#,
	.loc 1 1631 0 is_stmt 1
	movq	-72(%rbp), %rax	# src2, tmp652
	movq	(%rax), %rdx	# *src2_208, D.16045
	movq	-192(%rbp), %rax	# regstack, tmp653
	movq	%rdx, %rsi	# D.16045,
	movq	%rax, %rdi	# tmp653,
	call	get_hard_regnum	#
	movl	%eax, %edx	#, D.16046
	movq	-72(%rbp), %rax	# src2, tmp654
	movl	%edx, %esi	# D.16046,
	movq	%rax, %rdi	# tmp654,
	call	replace_reg	#
.L330:
	.loc 1 1633 0
	cmpq	$0, -112(%rbp)	#, src1_note
	je	.L331	#,
.LBB28:
	.loc 1 1635 0
	movq	-112(%rbp), %rax	# src1_note, tmp655
	movq	8(%rax), %rax	# src1_note_4->fld[0].rtx, tmp656
	movq	%rax, -64(%rbp)	# tmp656, src1_reg
	.loc 1 1643 0
	movq	-64(%rbp), %rax	# src1_reg, tmp657
	movl	8(%rax), %ecx	# src1_reg_263->fld[0].rtuint, D.16043
	movq	-192(%rbp), %rax	# regstack, tmp658
	movl	(%rax), %eax	# regstack_33(D)->top, D.16046
	movq	-192(%rbp), %rdx	# regstack, tmp659
	cltq
	movzbl	16(%rdx,%rax), %eax	# regstack_33(D)->reg, D.16047
	movzbl	%al, %eax	# D.16047, D.16043
	cmpl	%eax, %ecx	# D.16043, D.16043
	jne	.L332	#,
	.loc 1 1645 0
	movq	-192(%rbp), %rax	# regstack, tmp661
	movq	8(%rax), %rdx	# regstack_33(D)->reg_set, D.16049
	movq	-80(%rbp), %rax	# dest, tmp662
	movq	(%rax), %rax	# *dest_79, D.16045
	movl	8(%rax), %eax	# _269->fld[0].rtuint, D.16043
	movl	$1, %esi	#, tmp663
	movl	%eax, %ecx	# D.16046, tmp866
	salq	%cl, %rsi	# tmp866, D.16049
	movq	%rsi, %rax	# D.16049, D.16049
	orq	%rax, %rdx	# D.16049, D.16049
	movq	-192(%rbp), %rax	# regstack, tmp664
	movq	%rdx, 8(%rax)	# D.16049, regstack_33(D)->reg_set
	.loc 1 1646 0
	movq	-80(%rbp), %rax	# dest, tmp665
	movq	(%rax), %rdx	# *dest_79, D.16045
	movq	-192(%rbp), %rax	# regstack, tmp666
	movq	%rdx, %rsi	# D.16045,
	movq	%rax, %rdi	# tmp666,
	call	get_hard_regnum	#
	movl	%eax, %edx	#, D.16046
	movq	-80(%rbp), %rax	# dest, tmp667
	movl	%edx, %esi	# D.16046,
	movq	%rax, %rdi	# tmp667,
	call	replace_reg	#
	jmp	.L333	#
.L332:
.LBB29:
	.loc 1 1650 0
	movq	-64(%rbp), %rdx	# src1_reg, tmp668
	movq	-192(%rbp), %rax	# regstack, tmp669
	movq	%rdx, %rsi	# tmp668,
	movq	%rax, %rdi	# tmp669,
	call	get_hard_regnum	#
	movl	%eax, -152(%rbp)	# tmp670, regno
	.loc 1 1652 0
	movq	-192(%rbp), %rax	# regstack, tmp671
	movq	8(%rax), %rdx	# regstack_33(D)->reg_set, D.16049
	movq	-80(%rbp), %rax	# dest, tmp672
	movq	(%rax), %rax	# *dest_79, D.16045
	movl	8(%rax), %eax	# _278->fld[0].rtuint, D.16043
	movl	$1, %esi	#, tmp673
	movl	%eax, %ecx	# D.16046, tmp868
	salq	%cl, %rsi	# tmp868, D.16049
	movq	%rsi, %rax	# D.16049, D.16049
	orq	%rax, %rdx	# D.16049, D.16049
	movq	-192(%rbp), %rax	# regstack, tmp674
	movq	%rdx, 8(%rax)	# D.16049, regstack_33(D)->reg_set
	.loc 1 1653 0
	movl	-152(%rbp), %edx	# regno, tmp675
	movq	-80(%rbp), %rax	# dest, tmp676
	movl	%edx, %esi	# tmp675,
	movq	%rax, %rdi	# tmp676,
	call	replace_reg	#
	.loc 1 1655 0
	movq	-192(%rbp), %rax	# regstack, tmp677
	movl	(%rax), %edx	# regstack_33(D)->top, D.16046
	movl	$8, %eax	#, tmp678
	subl	-152(%rbp), %eax	# regno, D.16046
	leal	(%rdx,%rax), %esi	#, D.16046
	.loc 1 1656 0
	movq	-192(%rbp), %rax	# regstack, tmp679
	movl	(%rax), %eax	# regstack_33(D)->top, D.16046
	movq	-192(%rbp), %rdx	# regstack, tmp680
	cltq
	movzbl	16(%rdx,%rax), %ecx	# regstack_33(D)->reg, D.16047
	movq	-192(%rbp), %rdx	# regstack, tmp682
	movslq	%esi, %rax	# D.16046, tmp683
	movb	%cl, 16(%rdx,%rax)	# D.16047, regstack_33(D)->reg
.L333:
.LBE29:
	.loc 1 1659 0 discriminator 1
	movq	-192(%rbp), %rax	# regstack, tmp684
	movq	8(%rax), %rdx	# regstack_33(D)->reg_set, D.16049
	movq	-112(%rbp), %rax	# src1_note, tmp685
	movq	8(%rax), %rax	# src1_note_4->fld[0].rtx, D.16045
	movl	8(%rax), %eax	# _289->fld[0].rtuint, D.16043
	movl	$1, %esi	#, tmp686
	movl	%eax, %ecx	# D.16046, tmp870
	salq	%cl, %rsi	# tmp870, D.16049
	movq	%rsi, %rax	# D.16049, D.16049
	notq	%rax	# D.16049
	andq	%rax, %rdx	# D.16049, D.16049
	movq	-192(%rbp), %rax	# regstack, tmp687
	movq	%rdx, 8(%rax)	# D.16049, regstack_33(D)->reg_set
	.loc 1 1661 0 discriminator 1
	movq	-112(%rbp), %rax	# src1_note, tmp688
	addq	$8, %rax	#, D.16044
	movl	$8, %esi	#,
	movq	%rax, %rdi	# D.16044,
	call	replace_reg	#
	.loc 1 1662 0 discriminator 1
	movq	-192(%rbp), %rax	# regstack, tmp689
	movl	(%rax), %eax	# regstack_33(D)->top, D.16046
	leal	-1(%rax), %edx	#, D.16046
	movq	-192(%rbp), %rax	# regstack, tmp690
	movl	%edx, (%rax)	# D.16046, regstack_33(D)->top
.LBE28:
	jmp	.L334	#
.L331:
	.loc 1 1664 0
	cmpq	$0, -104(%rbp)	#, src2_note
	je	.L335	#,
.LBB30:
	.loc 1 1666 0
	movq	-104(%rbp), %rax	# src2_note, tmp691
	movq	8(%rax), %rax	# src2_note_5->fld[0].rtx, tmp692
	movq	%rax, -56(%rbp)	# tmp692, src2_reg
	.loc 1 1667 0
	movq	-56(%rbp), %rax	# src2_reg, tmp693
	movl	8(%rax), %ecx	# src2_reg_298->fld[0].rtuint, D.16043
	movq	-192(%rbp), %rax	# regstack, tmp694
	movl	(%rax), %eax	# regstack_33(D)->top, D.16046
	movq	-192(%rbp), %rdx	# regstack, tmp695
	cltq
	movzbl	16(%rdx,%rax), %eax	# regstack_33(D)->reg, D.16047
	movzbl	%al, %eax	# D.16047, D.16043
	cmpl	%eax, %ecx	# D.16043, D.16043
	jne	.L336	#,
	.loc 1 1669 0
	movq	-192(%rbp), %rax	# regstack, tmp697
	movq	8(%rax), %rdx	# regstack_33(D)->reg_set, D.16049
	movq	-80(%rbp), %rax	# dest, tmp698
	movq	(%rax), %rax	# *dest_79, D.16045
	movl	8(%rax), %eax	# _304->fld[0].rtuint, D.16043
	movl	$1, %esi	#, tmp699
	movl	%eax, %ecx	# D.16046, tmp872
	salq	%cl, %rsi	# tmp872, D.16049
	movq	%rsi, %rax	# D.16049, D.16049
	orq	%rax, %rdx	# D.16049, D.16049
	movq	-192(%rbp), %rax	# regstack, tmp700
	movq	%rdx, 8(%rax)	# D.16049, regstack_33(D)->reg_set
	.loc 1 1670 0
	movq	-80(%rbp), %rax	# dest, tmp701
	movq	(%rax), %rdx	# *dest_79, D.16045
	movq	-192(%rbp), %rax	# regstack, tmp702
	movq	%rdx, %rsi	# D.16045,
	movq	%rax, %rdi	# tmp702,
	call	get_hard_regnum	#
	movl	%eax, %edx	#, D.16046
	movq	-80(%rbp), %rax	# dest, tmp703
	movl	%edx, %esi	# D.16046,
	movq	%rax, %rdi	# tmp703,
	call	replace_reg	#
	jmp	.L337	#
.L336:
.LBB31:
	.loc 1 1674 0
	movq	-56(%rbp), %rdx	# src2_reg, tmp704
	movq	-192(%rbp), %rax	# regstack, tmp705
	movq	%rdx, %rsi	# tmp704,
	movq	%rax, %rdi	# tmp705,
	call	get_hard_regnum	#
	movl	%eax, -148(%rbp)	# tmp706, regno
	.loc 1 1676 0
	movq	-192(%rbp), %rax	# regstack, tmp707
	movq	8(%rax), %rdx	# regstack_33(D)->reg_set, D.16049
	movq	-80(%rbp), %rax	# dest, tmp708
	movq	(%rax), %rax	# *dest_79, D.16045
	movl	8(%rax), %eax	# _313->fld[0].rtuint, D.16043
	movl	$1, %esi	#, tmp709
	movl	%eax, %ecx	# D.16046, tmp874
	salq	%cl, %rsi	# tmp874, D.16049
	movq	%rsi, %rax	# D.16049, D.16049
	orq	%rax, %rdx	# D.16049, D.16049
	movq	-192(%rbp), %rax	# regstack, tmp710
	movq	%rdx, 8(%rax)	# D.16049, regstack_33(D)->reg_set
	.loc 1 1677 0
	movl	-148(%rbp), %edx	# regno, tmp711
	movq	-80(%rbp), %rax	# dest, tmp712
	movl	%edx, %esi	# tmp711,
	movq	%rax, %rdi	# tmp712,
	call	replace_reg	#
	.loc 1 1679 0
	movq	-192(%rbp), %rax	# regstack, tmp713
	movl	(%rax), %edx	# regstack_33(D)->top, D.16046
	movl	$8, %eax	#, tmp714
	subl	-148(%rbp), %eax	# regno, D.16046
	leal	(%rdx,%rax), %esi	#, D.16046
	.loc 1 1680 0
	movq	-192(%rbp), %rax	# regstack, tmp715
	movl	(%rax), %eax	# regstack_33(D)->top, D.16046
	movq	-192(%rbp), %rdx	# regstack, tmp716
	cltq
	movzbl	16(%rdx,%rax), %ecx	# regstack_33(D)->reg, D.16047
	movq	-192(%rbp), %rdx	# regstack, tmp718
	movslq	%esi, %rax	# D.16046, tmp719
	movb	%cl, 16(%rdx,%rax)	# D.16047, regstack_33(D)->reg
.L337:
.LBE31:
	.loc 1 1683 0 discriminator 1
	movq	-192(%rbp), %rax	# regstack, tmp720
	movq	8(%rax), %rdx	# regstack_33(D)->reg_set, D.16049
	movq	-104(%rbp), %rax	# src2_note, tmp721
	movq	8(%rax), %rax	# src2_note_5->fld[0].rtx, D.16045
	movl	8(%rax), %eax	# _324->fld[0].rtuint, D.16043
	movl	$1, %esi	#, tmp722
	movl	%eax, %ecx	# D.16046, tmp876
	salq	%cl, %rsi	# tmp876, D.16049
	movq	%rsi, %rax	# D.16049, D.16049
	notq	%rax	# D.16049
	andq	%rax, %rdx	# D.16049, D.16049
	movq	-192(%rbp), %rax	# regstack, tmp723
	movq	%rdx, 8(%rax)	# D.16049, regstack_33(D)->reg_set
	.loc 1 1685 0 discriminator 1
	movq	-104(%rbp), %rax	# src2_note, tmp724
	addq	$8, %rax	#, D.16044
	movl	$8, %esi	#,
	movq	%rax, %rdi	# D.16044,
	call	replace_reg	#
	.loc 1 1686 0 discriminator 1
	movq	-192(%rbp), %rax	# regstack, tmp725
	movl	(%rax), %eax	# regstack_33(D)->top, D.16046
	leal	-1(%rax), %edx	#, D.16046
	movq	-192(%rbp), %rax	# regstack, tmp726
	movl	%edx, (%rax)	# D.16046, regstack_33(D)->top
.LBE30:
	jmp	.L334	#
.L335:
	.loc 1 1690 0
	movq	-192(%rbp), %rax	# regstack, tmp727
	movq	8(%rax), %rdx	# regstack_33(D)->reg_set, D.16049
	movq	-80(%rbp), %rax	# dest, tmp728
	movq	(%rax), %rax	# *dest_79, D.16045
	movl	8(%rax), %eax	# _334->fld[0].rtuint, D.16043
	movl	$1, %esi	#, tmp729
	movl	%eax, %ecx	# D.16046, tmp878
	salq	%cl, %rsi	# tmp878, D.16049
	movq	%rsi, %rax	# D.16049, D.16049
	orq	%rax, %rdx	# D.16049, D.16049
	movq	-192(%rbp), %rax	# regstack, tmp730
	movq	%rdx, 8(%rax)	# D.16049, regstack_33(D)->reg_set
	.loc 1 1691 0
	movq	-80(%rbp), %rax	# dest, tmp731
	movq	(%rax), %rdx	# *dest_79, D.16045
	movq	-192(%rbp), %rax	# regstack, tmp732
	movq	%rdx, %rsi	# D.16045,
	movq	%rax, %rdi	# tmp732,
	call	get_hard_regnum	#
	movl	%eax, %edx	#, D.16046
	movq	-80(%rbp), %rax	# dest, tmp733
	movl	%edx, %esi	# D.16046,
	movq	%rax, %rdi	# tmp733,
	call	replace_reg	#
.L334:
	.loc 1 1695 0
	movq	-96(%rbp), %rax	# pat_src, tmp734
	movzwl	(%rax), %eax	# pat_src_82->code, D.16042
	movzwl	%ax, %eax	# D.16042, D.16046
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.16050
	cmpb	$99, %al	#, D.16050
	jne	.L338	#,
	.loc 1 1696 0
	movq	-120(%rbp), %rax	# src1, tmp736
	movq	(%rax), %rax	# *src1_206, D.16045
	movzwl	(%rax), %eax	# _344->code, D.16042
	cmpw	$61, %ax	#, D.16042
	jne	.L338	#,
	.loc 1 1696 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# src2, tmp737
	movq	(%rax), %rax	# *src2_208, D.16045
	movzwl	(%rax), %eax	# _346->code, D.16042
	cmpw	$61, %ax	#, D.16042
	jne	.L338	#,
	.loc 1 1697 0 is_stmt 1
	movq	-120(%rbp), %rax	# src1, tmp738
	movq	(%rax), %rax	# *src1_206, D.16045
	movl	8(%rax), %edx	# _348->fld[0].rtuint, D.16043
	movq	-80(%rbp), %rax	# dest, tmp739
	movq	(%rax), %rax	# *dest_79, D.16045
	movl	8(%rax), %eax	# _350->fld[0].rtuint, D.16043
	cmpl	%eax, %edx	# D.16043, D.16043
	je	.L338	#,
.LBB32:
	.loc 1 1699 0
	movq	-120(%rbp), %rax	# src1, tmp740
	movq	(%rax), %rax	# *src1_206, D.16045
	movl	8(%rax), %eax	# _352->fld[0].rtuint, D.16043
	movl	%eax, -144(%rbp)	# D.16043, tmp
	.loc 1 1700 0
	movq	-72(%rbp), %rax	# src2, tmp741
	movq	(%rax), %rax	# *src2_208, D.16045
	movl	8(%rax), %eax	# _355->fld[0].rtuint, D.16043
	movl	%eax, %edx	# D.16043, D.16046
	movq	-120(%rbp), %rax	# src1, tmp742
	movl	%edx, %esi	# D.16046,
	movq	%rax, %rdi	# tmp742,
	call	replace_reg	#
	.loc 1 1701 0
	movl	-144(%rbp), %edx	# tmp, tmp743
	movq	-72(%rbp), %rax	# src2, tmp744
	movl	%edx, %esi	# tmp743,
	movq	%rax, %rdi	# tmp744,
	call	replace_reg	#
.LBE32:
	.loc 1 1703 0
	jmp	.L292	#
.L338:
	jmp	.L292	#
.L284:
	.loc 1 1706 0
	movq	-96(%rbp), %rax	# pat_src, tmp745
	movl	16(%rax), %eax	# pat_src_82->fld[1].rtint, D.16046
	cmpl	$9, %eax	#, D.16046
	je	.L340	#,
	cmpl	$9, %eax	#, D.16046
	jg	.L341	#,
	subl	$1, %eax	#, tmp746
	cmpl	$1, %eax	#, tmp746
	ja	.L339	#,
	jmp	.L360	#
.L341:
	cmpl	$10, %eax	#, D.16046
	je	.L343	#,
	jmp	.L339	#
.L360:
	.loc 1 1712 0
	movq	-96(%rbp), %rax	# pat_src, tmp747
	movq	8(%rax), %rax	# pat_src_82->fld[0].rtvec, D.16051
	addq	$8, %rax	#, D.16044
	movq	%rax, %rdi	# D.16044,
	call	get_true_reg	#
	movq	%rax, -120(%rbp)	# tmp748, src1
	.loc 1 1714 0
	movq	-120(%rbp), %rax	# src1, tmp749
	movq	(%rax), %rdx	# *src1_361, D.16045
	movq	-192(%rbp), %rcx	# regstack, tmp750
	movq	-184(%rbp), %rax	# insn, tmp751
	movq	%rcx, %rsi	# tmp750,
	movq	%rax, %rdi	# tmp751,
	call	emit_swap_insn	#
	.loc 1 1716 0
	movq	-120(%rbp), %rax	# src1, tmp752
	movq	(%rax), %rax	# *src1_361, D.16045
	movl	8(%rax), %edx	# _363->fld[0].rtuint, D.16043
	movq	-184(%rbp), %rax	# insn, tmp753
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp753,
	call	find_regno_note	#
	movq	%rax, -112(%rbp)	# tmp754, src1_note
	.loc 1 1718 0
	movq	-80(%rbp), %rax	# dest, tmp755
	movq	(%rax), %rax	# *dest_79, D.16045
	movzwl	(%rax), %eax	# _366->code, D.16042
	cmpw	$61, %ax	#, D.16042
	jne	.L344	#,
	.loc 1 1718 0 is_stmt 0 discriminator 1
	movq	-80(%rbp), %rax	# dest, tmp756
	movq	(%rax), %rax	# *dest_79, D.16045
	movl	8(%rax), %eax	# _368->fld[0].rtuint, D.16043
	cmpl	$7, %eax	#, D.16043
	jbe	.L344	#,
	movq	-80(%rbp), %rax	# dest, tmp757
	movq	(%rax), %rax	# *dest_79, D.16045
	movl	8(%rax), %eax	# _370->fld[0].rtuint, D.16043
	cmpl	$15, %eax	#, D.16043
	ja	.L344	#,
	.loc 1 1719 0 is_stmt 1
	movq	-80(%rbp), %rax	# dest, tmp758
	movl	$8, %esi	#,
	movq	%rax, %rdi	# tmp758,
	call	replace_reg	#
.L344:
	.loc 1 1721 0
	cmpq	$0, -112(%rbp)	#, src1_note
	je	.L345	#,
	.loc 1 1723 0
	movq	-112(%rbp), %rax	# src1_note, tmp759
	addq	$8, %rax	#, D.16044
	movl	$8, %esi	#,
	movq	%rax, %rdi	# D.16044,
	call	replace_reg	#
	.loc 1 1724 0
	movq	-192(%rbp), %rax	# regstack, tmp760
	movl	(%rax), %eax	# regstack_33(D)->top, D.16046
	leal	-1(%rax), %edx	#, D.16046
	movq	-192(%rbp), %rax	# regstack, tmp761
	movl	%edx, (%rax)	# D.16046, regstack_33(D)->top
	.loc 1 1725 0
	movq	-192(%rbp), %rax	# regstack, tmp762
	movq	8(%rax), %rdx	# regstack_33(D)->reg_set, D.16049
	movq	-120(%rbp), %rax	# src1, tmp763
	movq	(%rax), %rax	# *src1_361, D.16045
	movl	8(%rax), %eax	# _376->fld[0].rtuint, D.16043
	movl	$1, %esi	#, tmp764
	movl	%eax, %ecx	# D.16046, tmp880
	salq	%cl, %rsi	# tmp880, D.16049
	movq	%rsi, %rax	# D.16049, D.16049
	notq	%rax	# D.16049
	andq	%rax, %rdx	# D.16049, D.16049
	movq	-192(%rbp), %rax	# regstack, tmp765
	movq	%rdx, 8(%rax)	# D.16049, regstack_33(D)->reg_set
.L345:
	.loc 1 1728 0
	movq	-120(%rbp), %rax	# src1, tmp766
	movl	$8, %esi	#,
	movq	%rax, %rdi	# tmp766,
	call	replace_reg	#
	.loc 1 1729 0
	jmp	.L346	#
.L343:
	.loc 1 1736 0
	movq	-96(%rbp), %rax	# pat_src, tmp767
	movq	8(%rax), %rax	# pat_src_82->fld[0].rtvec, D.16051
	movq	8(%rax), %rax	# _382->elem, tmp768
	movq	%rax, -96(%rbp)	# tmp768, pat_src
	.loc 1 1737 0
	movq	-96(%rbp), %rax	# pat_src, tmp769
	movzwl	(%rax), %eax	# pat_src_383->code, D.16042
	cmpw	$42, %ax	#, D.16042
	jne	.L347	#,
	.loc 1 1738 0
	movq	-96(%rbp), %rax	# pat_src, tmp770
	movl	16(%rax), %eax	# pat_src_383->fld[1].rtint, D.16046
	cmpl	$9, %eax	#, D.16046
	je	.L340	#,
.L347:
	.loc 1 1739 0
	movl	$__FUNCTION__.13103, %edx	#,
	movl	$1739, %esi	#,
	movl	$.LC1, %edi	#,
	call	fancy_abort	#
.L340:
	.loc 1 1748 0
	movq	-96(%rbp), %rax	# pat_src, tmp771
	movq	8(%rax), %rax	# pat_src_6->fld[0].rtvec, D.16051
	movq	8(%rax), %rax	# _386->elem, tmp772
	movq	%rax, -96(%rbp)	# tmp772, pat_src
	.loc 1 1749 0
	movq	-96(%rbp), %rax	# pat_src, tmp773
	movzwl	(%rax), %eax	# pat_src_387->code, D.16042
	cmpw	$74, %ax	#, D.16042
	je	.L348	#,
	.loc 1 1750 0
	movl	$__FUNCTION__.13103, %edx	#,
	movl	$1750, %esi	#,
	movl	$.LC1, %edi	#,
	call	fancy_abort	#
.L348:
	.loc 1 1752 0
	movq	-96(%rbp), %rdx	# pat_src, tmp774
	movq	-192(%rbp), %rcx	# regstack, tmp775
	movq	-184(%rbp), %rax	# insn, tmp776
	movq	%rcx, %rsi	# tmp775,
	movq	%rax, %rdi	# tmp776,
	call	compare_for_stack_reg	#
	.loc 1 1753 0
	jmp	.L346	#
.L339:
	.loc 1 1756 0
	movl	$__FUNCTION__.13103, %edx	#,
	movl	$1756, %esi	#,
	movl	$.LC1, %edi	#,
	call	fancy_abort	#
.L346:
	.loc 1 1758 0
	jmp	.L292	#
.L288:
	.loc 1 1763 0
	movq	-96(%rbp), %rax	# pat_src, tmp777
	addq	$16, %rax	#, D.16044
	movq	%rax, %rdi	# D.16044,
	call	get_true_reg	#
	movq	%rax, -120(%rbp)	# tmp778, src1
	.loc 1 1764 0
	movq	-96(%rbp), %rax	# pat_src, tmp779
	addq	$24, %rax	#, D.16044
	movq	%rax, %rdi	# D.16044,
	call	get_true_reg	#
	movq	%rax, -72(%rbp)	# tmp780, src2
	.loc 1 1766 0
	movq	-120(%rbp), %rax	# src1, tmp781
	movq	(%rax), %rax	# *src1_390, D.16045
	movl	8(%rax), %edx	# _393->fld[0].rtuint, D.16043
	movq	-184(%rbp), %rax	# insn, tmp782
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp782,
	call	find_regno_note	#
	movq	%rax, -112(%rbp)	# tmp783, src1_note
	.loc 1 1767 0
	movq	-72(%rbp), %rax	# src2, tmp784
	movq	(%rax), %rax	# *src2_392, D.16045
	movl	8(%rax), %edx	# _396->fld[0].rtuint, D.16043
	movq	-184(%rbp), %rax	# insn, tmp785
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp785,
	call	find_regno_note	#
	movq	%rax, -104(%rbp)	# tmp786, src2_note
	.loc 1 1774 0
	movq	-80(%rbp), %rax	# dest, tmp787
	movq	(%rax), %rdx	# *dest_79, D.16045
	movq	-192(%rbp), %rax	# regstack, tmp788
	movq	%rdx, %rsi	# D.16045,
	movq	%rax, %rdi	# tmp788,
	call	get_hard_regnum	#
	cmpl	$7, %eax	#, D.16046
	jle	.L349	#,
	.loc 1 1775 0
	movq	-80(%rbp), %rax	# dest, tmp789
	movq	(%rax), %rax	# *dest_79, D.16045
	movl	8(%rax), %ecx	# _401->fld[0].rtuint, D.16043
	movq	-192(%rbp), %rax	# regstack, tmp790
	movl	(%rax), %eax	# regstack_33(D)->top, D.16046
	movq	-192(%rbp), %rdx	# regstack, tmp791
	cltq
	movzbl	16(%rdx,%rax), %eax	# regstack_33(D)->reg, D.16047
	movzbl	%al, %eax	# D.16047, D.16043
	cmpl	%eax, %ecx	# D.16043, D.16043
	je	.L349	#,
	.loc 1 1780 0
	movq	-120(%rbp), %rax	# src1, tmp793
	movq	(%rax), %rax	# *src1_390, D.16045
	movl	8(%rax), %ecx	# _406->fld[0].rtuint, D.16043
	movq	-192(%rbp), %rax	# regstack, tmp794
	movl	(%rax), %eax	# regstack_33(D)->top, D.16046
	movq	-192(%rbp), %rdx	# regstack, tmp795
	cltq
	movzbl	16(%rdx,%rax), %eax	# regstack_33(D)->reg, D.16047
	movzbl	%al, %eax	# D.16047, D.16043
	cmpl	%eax, %ecx	# D.16043, D.16043
	jne	.L350	#,
	.loc 1 1781 0
	cmpq	$0, -112(%rbp)	#, src1_note
	jne	.L351	#,
.L350:
	.loc 1 1782 0
	movq	-72(%rbp), %rax	# src2, tmp797
	movq	(%rax), %rax	# *src2_392, D.16045
	movl	8(%rax), %ecx	# _411->fld[0].rtuint, D.16043
	movq	-192(%rbp), %rax	# regstack, tmp798
	movl	(%rax), %eax	# regstack_33(D)->top, D.16046
	movq	-192(%rbp), %rdx	# regstack, tmp799
	cltq
	movzbl	16(%rdx,%rax), %eax	# regstack_33(D)->reg, D.16047
	movzbl	%al, %eax	# D.16047, D.16043
	cmpl	%eax, %ecx	# D.16043, D.16043
	jne	.L352	#,
	.loc 1 1783 0
	cmpq	$0, -104(%rbp)	#, src2_note
	je	.L352	#,
.L351:
.LBB33:
	.loc 1 1785 0
	movq	-120(%rbp), %rax	# src1, tmp801
	movq	(%rax), %rdx	# *src1_390, D.16045
	movq	-192(%rbp), %rax	# regstack, tmp802
	movq	%rdx, %rsi	# D.16045,
	movq	%rax, %rdi	# tmp802,
	call	get_hard_regnum	#
	subl	$8, %eax	#, tmp803
	movl	%eax, -140(%rbp)	# tmp803, idx1
	.loc 1 1787 0
	movq	-72(%rbp), %rax	# src2, tmp804
	movq	(%rax), %rdx	# *src2_392, D.16045
	movq	-192(%rbp), %rax	# regstack, tmp805
	movq	%rdx, %rsi	# D.16045,
	movq	%rax, %rdi	# tmp805,
	call	get_hard_regnum	#
	subl	$8, %eax	#, tmp806
	movl	%eax, -136(%rbp)	# tmp806, idx2
	.loc 1 1792 0
	movq	-192(%rbp), %rax	# regstack, tmp807
	movl	(%rax), %eax	# regstack_33(D)->top, D.16046
	subl	-140(%rbp), %eax	# idx1, D.16046
	movl	%eax, %esi	# D.16046, D.16046
	movq	-72(%rbp), %rax	# src2, tmp808
	movq	(%rax), %rax	# *src2_392, D.16045
	movl	8(%rax), %eax	# _425->fld[0].rtuint, D.16043
	movl	%eax, %ecx	# D.16043, D.16047
	movq	-192(%rbp), %rdx	# regstack, tmp809
	movslq	%esi, %rax	# D.16046, tmp810
	movb	%cl, 16(%rdx,%rax)	# D.16047, regstack_33(D)->reg
	.loc 1 1793 0
	movq	-192(%rbp), %rax	# regstack, tmp811
	movl	(%rax), %eax	# regstack_33(D)->top, D.16046
	subl	-136(%rbp), %eax	# idx2, D.16046
	movl	%eax, %esi	# D.16046, D.16046
	movq	-120(%rbp), %rax	# src1, tmp812
	movq	(%rax), %rax	# *src1_390, D.16045
	movl	8(%rax), %eax	# _430->fld[0].rtuint, D.16043
	movl	%eax, %ecx	# D.16043, D.16047
	movq	-192(%rbp), %rdx	# regstack, tmp813
	movslq	%esi, %rax	# D.16046, tmp814
	movb	%cl, 16(%rdx,%rax)	# D.16047, regstack_33(D)->reg
	.loc 1 1797 0
	movq	-96(%rbp), %rax	# pat_src, tmp815
	movq	8(%rax), %rbx	# pat_src_82->fld[0].rtx, D.16045
	movq	-96(%rbp), %rax	# pat_src, tmp816
	movq	8(%rax), %rax	# pat_src_82->fld[0].rtx, D.16045
	movq	-184(%rbp), %rdx	# insn, tmp817
	movq	%rdx, %rsi	# tmp817,
	movq	%rax, %rdi	# D.16045,
	call	reversed_comparison_code	#
	movw	%ax, (%rbx)	# D.16042, _433->code
.LBE33:
	.loc 1 1784 0
	jmp	.L349	#
.L352:
	.loc 1 1801 0
	movq	-80(%rbp), %rax	# dest, tmp818
	movq	(%rax), %rdx	# *dest_79, D.16045
	movq	-192(%rbp), %rcx	# regstack, tmp819
	movq	-184(%rbp), %rax	# insn, tmp820
	movq	%rcx, %rsi	# tmp819,
	movq	%rax, %rdi	# tmp820,
	call	emit_swap_insn	#
.L349:
.LBB34:
	.loc 1 1808 0
	movq	$0, -48(%rbp)	#, src_note
	.loc 1 1809 0
	movq	-112(%rbp), %rax	# src1_note, tmp821
	movq	%rax, -40(%rbp)	# tmp821, src_note
	.loc 1 1810 0
	movq	-104(%rbp), %rax	# src2_note, tmp822
	movq	%rax, -32(%rbp)	# tmp822, src_note
	.loc 1 1812 0
	movq	-120(%rbp), %rax	# src1, tmp823
	movq	(%rax), %rax	# *src1_390, D.16045
	movzwl	(%rax), %eax	# _437->code, D.16042
	cmpw	$61, %ax	#, D.16042
	jne	.L353	#,
	.loc 1 1812 0 is_stmt 0 discriminator 1
	movq	-120(%rbp), %rax	# src1, tmp824
	movq	(%rax), %rax	# *src1_390, D.16045
	movl	8(%rax), %eax	# _439->fld[0].rtuint, D.16043
	cmpl	$7, %eax	#, D.16043
	jbe	.L353	#,
	movq	-120(%rbp), %rax	# src1, tmp825
	movq	(%rax), %rax	# *src1_390, D.16045
	movl	8(%rax), %eax	# _441->fld[0].rtuint, D.16043
	cmpl	$15, %eax	#, D.16043
	ja	.L353	#,
	.loc 1 1813 0 is_stmt 1
	movq	-120(%rbp), %rax	# src1, tmp826
	movq	(%rax), %rdx	# *src1_390, D.16045
	movq	-192(%rbp), %rax	# regstack, tmp827
	movq	%rdx, %rsi	# D.16045,
	movq	%rax, %rdi	# tmp827,
	call	get_hard_regnum	#
	movl	%eax, %edx	#, D.16046
	movq	-120(%rbp), %rax	# src1, tmp828
	movl	%edx, %esi	# D.16046,
	movq	%rax, %rdi	# tmp828,
	call	replace_reg	#
.L353:
	.loc 1 1814 0
	movq	-72(%rbp), %rax	# src2, tmp829
	movq	(%rax), %rax	# *src2_392, D.16045
	movzwl	(%rax), %eax	# _445->code, D.16042
	cmpw	$61, %ax	#, D.16042
	jne	.L354	#,
	.loc 1 1814 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# src2, tmp830
	movq	(%rax), %rax	# *src2_392, D.16045
	movl	8(%rax), %eax	# _447->fld[0].rtuint, D.16043
	cmpl	$7, %eax	#, D.16043
	jbe	.L354	#,
	movq	-72(%rbp), %rax	# src2, tmp831
	movq	(%rax), %rax	# *src2_392, D.16045
	movl	8(%rax), %eax	# _449->fld[0].rtuint, D.16043
	cmpl	$15, %eax	#, D.16043
	ja	.L354	#,
	.loc 1 1815 0 is_stmt 1
	movq	-72(%rbp), %rax	# src2, tmp832
	movq	(%rax), %rdx	# *src2_392, D.16045
	movq	-192(%rbp), %rax	# regstack, tmp833
	movq	%rdx, %rsi	# D.16045,
	movq	%rax, %rdi	# tmp833,
	call	get_hard_regnum	#
	movl	%eax, %edx	#, D.16046
	movq	-72(%rbp), %rax	# src2, tmp834
	movl	%edx, %esi	# D.16046,
	movq	%rax, %rdi	# tmp834,
	call	replace_reg	#
.L354:
	.loc 1 1817 0
	movl	$1, -164(%rbp)	#, i
	jmp	.L355	#
.L358:
	.loc 1 1818 0
	movl	-164(%rbp), %eax	# i, tmp836
	cltq
	movq	-48(%rbp,%rax,8), %rax	# src_note, D.16045
	testq	%rax, %rax	# D.16045
	je	.L356	#,
.LBB35:
	.loc 1 1820 0
	movl	-164(%rbp), %eax	# i, tmp838
	cltq
	movq	-48(%rbp,%rax,8), %rax	# src_note, D.16045
	movq	8(%rax), %rax	# _455->fld[0].rtx, D.16045
	movl	8(%rax), %eax	# _456->fld[0].rtuint, D.16043
	movl	%eax, -132(%rbp)	# D.16043, regno
	.loc 1 1824 0
	movq	-192(%rbp), %rax	# regstack, tmp839
	movl	(%rax), %eax	# regstack_33(D)->top, D.16046
	movq	-192(%rbp), %rdx	# regstack, tmp840
	cltq
	movzbl	16(%rdx,%rax), %eax	# regstack_33(D)->reg, D.16047
	movzbl	%al, %eax	# D.16047, D.16046
	cmpl	-132(%rbp), %eax	# regno, D.16046
	je	.L357	#,
	.loc 1 1826 0
	movl	-132(%rbp), %edx	# regno, regno.61
	movq	-184(%rbp), %rax	# insn, tmp842
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp842,
	call	remove_regno_note	#
	.loc 1 1827 0
	movl	-164(%rbp), %eax	# i, tmp844
	cltq
	movq	-48(%rbp,%rax,8), %rax	# src_note, D.16045
	movq	8(%rax), %rdx	# _463->fld[0].rtx, D.16045
	movq	-192(%rbp), %rsi	# regstack, tmp845
	movq	-184(%rbp), %rax	# insn, tmp846
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# tmp846,
	call	emit_pop_insn	#
	jmp	.L356	#
.L357:
	.loc 1 1833 0
	movl	$__FUNCTION__.13103, %edx	#,
	movl	$1833, %esi	#,
	movl	$.LC1, %edi	#,
	call	fancy_abort	#
.L356:
.LBE35:
	.loc 1 1817 0
	addl	$1, -164(%rbp)	#, i
.L355:
	.loc 1 1817 0 is_stmt 0 discriminator 1
	cmpl	$2, -164(%rbp)	#, i
	jle	.L358	#,
.LBE34:
	.loc 1 1839 0 is_stmt 1
	movq	-80(%rbp), %rax	# dest, tmp847
	movq	(%rax), %rdx	# *dest_79, D.16045
	movq	-192(%rbp), %rax	# regstack, tmp848
	movq	%rdx, %rsi	# D.16045,
	movq	%rax, %rdi	# tmp848,
	call	get_hard_regnum	#
	cmpl	$7, %eax	#, D.16046
	jg	.L359	#,
	.loc 1 1840 0
	movq	-192(%rbp), %rax	# regstack, tmp849
	movl	(%rax), %eax	# regstack_33(D)->top, D.16046
	leal	1(%rax), %edx	#, D.16046
	movq	-192(%rbp), %rax	# regstack, tmp850
	movl	%edx, (%rax)	# D.16046, regstack_33(D)->top
	movq	-192(%rbp), %rax	# regstack, tmp851
	movl	(%rax), %esi	# regstack_33(D)->top, D.16046
	movq	-80(%rbp), %rax	# dest, tmp852
	movq	(%rax), %rax	# *dest_79, D.16045
	movl	8(%rax), %eax	# _471->fld[0].rtuint, D.16043
	movl	%eax, %ecx	# D.16043, D.16047
	movq	-192(%rbp), %rdx	# regstack, tmp853
	movslq	%esi, %rax	# D.16046, tmp854
	movb	%cl, 16(%rdx,%rax)	# D.16047, regstack_33(D)->reg
.L359:
	.loc 1 1841 0
	movq	-192(%rbp), %rax	# regstack, tmp855
	movq	8(%rax), %rdx	# regstack_33(D)->reg_set, D.16049
	movq	-80(%rbp), %rax	# dest, tmp856
	movq	(%rax), %rax	# *dest_79, D.16045
	movl	8(%rax), %eax	# _475->fld[0].rtuint, D.16043
	movl	$1, %esi	#, tmp857
	movl	%eax, %ecx	# D.16046, tmp884
	salq	%cl, %rsi	# tmp884, D.16049
	movq	%rsi, %rax	# D.16049, D.16049
	orq	%rax, %rdx	# D.16049, D.16049
	movq	-192(%rbp), %rax	# regstack, tmp858
	movq	%rdx, 8(%rax)	# D.16049, regstack_33(D)->reg_set
	.loc 1 1842 0
	movq	-80(%rbp), %rax	# dest, tmp859
	movl	$8, %esi	#,
	movq	%rax, %rdi	# tmp859,
	call	replace_reg	#
	.loc 1 1843 0
	jmp	.L292	#
.L283:
	.loc 1 1846 0
	movl	$__FUNCTION__.13103, %edx	#,
	movl	$1846, %esi	#,
	movl	$.LC1, %edi	#,
	call	fancy_abort	#
.L292:
	.loc 1 1848 0
	nop
.L266:
.LBE25:
	.loc 1 1854 0
	addq	$200, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	subst_stack_regs_pat, .-subst_stack_regs_pat
	.type	subst_asm_stack_regs, @function
subst_asm_stack_regs:
.LFB23:
	.loc 1 1870 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$232, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -232(%rbp)	# insn, insn
	movq	%rsi, -240(%rbp)	# regstack, regstack
	.loc 1 1870 0
	movq	%fs:40, %rax	#, tmp612
	movq	%rax, -24(%rbp)	# tmp612, D.16067
	xorl	%eax, %eax	# tmp612
	.loc 1 1871 0
	movq	-232(%rbp), %rax	# insn, tmp263
	movq	32(%rax), %rax	# insn_33(D)->fld[3].rtx, tmp264
	movq	%rax, -88(%rbp)	# tmp264, body
	.loc 1 1878 0
	movq	$0, -144(%rbp)	#, clobber_reg
	.loc 1 1879 0
	movq	$0, -136(%rbp)	#, clobber_loc
	.loc 1 1888 0
	movq	-232(%rbp), %rax	# insn, tmp265
	movq	%rax, %rdi	# tmp265,
	call	check_asm_stack_operands	#
	testl	%eax, %eax	# D.16054
	je	.L361	#,
	.loc 1 1894 0
	movq	-232(%rbp), %rax	# insn, tmp266
	movq	%rax, %rdi	# tmp266,
	call	extract_insn	#
	.loc 1 1895 0
	movl	$1, %edi	#,
	call	constrain_operands	#
	.loc 1 1896 0
	movl	which_alternative(%rip), %eax	# which_alternative, tmp267
	movl	%eax, -184(%rbp)	# tmp267, alt
	.loc 1 1898 0
	call	preprocess_constraints	#
	.loc 1 1900 0
	movq	-88(%rbp), %rax	# body, tmp268
	movq	%rax, %rdi	# tmp268,
	call	get_asm_operand_n_inputs	#
	movl	%eax, -180(%rbp)	# tmp269, n_inputs
	.loc 1 1901 0
	movzbl	recog_data+996(%rip), %eax	# recog_data.n_operands, D.16055
	movsbl	%al, %eax	# D.16055, D.16054
	subl	-180(%rbp), %eax	# n_inputs, tmp271
	movl	%eax, -176(%rbp)	# tmp271, n_outputs
	.loc 1 1903 0
	cmpl	$0, -184(%rbp)	#, alt
	jns	.L364	#,
	.loc 1 1904 0
	movl	$__FUNCTION__.13172, %edx	#,
	movl	$1904, %esi	#,
	movl	$.LC1, %edi	#,
	call	fancy_abort	#
.L364:
	.loc 1 1907 0
	movl	$0, -204(%rbp)	#, i
	jmp	.L365	#
.L367:
	.loc 1 1908 0
	movl	-204(%rbp), %eax	# i, tmp273
	cltq
	movq	recog_data(,%rax,8), %rax	# recog_data.operand, D.16056
	movzwl	(%rax), %eax	# _46->code, D.16057
	cmpw	$63, %ax	#, D.16057
	jne	.L366	#,
	.loc 1 1909 0
	movl	-204(%rbp), %eax	# i, tmp275
	cltq
	movq	recog_data(,%rax,8), %rax	# recog_data.operand, D.16056
	movq	8(%rax), %rax	# _48->fld[0].rtx, D.16056
	movzwl	(%rax), %eax	# _49->code, D.16057
	cmpw	$61, %ax	#, D.16057
	jne	.L366	#,
	.loc 1 1911 0
	movl	-204(%rbp), %eax	# i, tmp277
	cltq
	movq	recog_data(,%rax,8), %rax	# recog_data.operand, D.16056
	leaq	8(%rax), %rdx	#, D.16058
	movl	-204(%rbp), %eax	# i, tmp279
	cltq
	addq	$30, %rax	#, tmp280
	movq	%rdx, recog_data(,%rax,8)	# D.16058, recog_data.operand_loc
	.loc 1 1912 0
	movl	-204(%rbp), %eax	# i, tmp282
	cltq
	movq	recog_data(,%rax,8), %rax	# recog_data.operand, D.16056
	movq	8(%rax), %rdx	# _53->fld[0].rtx, D.16056
	movl	-204(%rbp), %eax	# i, tmp284
	cltq
	movq	%rdx, recog_data(,%rax,8)	# D.16056, recog_data.operand
.L366:
	.loc 1 1907 0
	addl	$1, -204(%rbp)	#, i
.L365:
	.loc 1 1907 0 is_stmt 0 discriminator 1
	movzbl	recog_data+996(%rip), %eax	# recog_data.n_operands, D.16055
	movsbl	%al, %eax	# D.16055, D.16054
	cmpl	-204(%rbp), %eax	# i, D.16054
	jg	.L367	#,
	.loc 1 1917 0 is_stmt 1
	movl	$0, -204(%rbp)	#, i
	movq	-232(%rbp), %rax	# insn, tmp285
	movq	56(%rax), %rax	# insn_33(D)->fld[6].rtx, tmp286
	movq	%rax, -128(%rbp)	# tmp286, note
	jmp	.L368	#
.L369:
	.loc 1 1918 0 discriminator 2
	addl	$1, -204(%rbp)	#, i
	.loc 1 1917 0 discriminator 2
	movq	-128(%rbp), %rax	# note, tmp287
	movq	16(%rax), %rax	# note_12->fld[1].rtx, tmp288
	movq	%rax, -128(%rbp)	# tmp288, note
.L368:
	.loc 1 1917 0 is_stmt 0 discriminator 1
	cmpq	$0, -128(%rbp)	#, note
	jne	.L369	#,
	.loc 1 1920 0 is_stmt 1
	movl	-204(%rbp), %eax	# i, tmp289
	cltq
	salq	$3, %rax	#, D.16059
	leaq	15(%rax), %rdx	#, tmp290
	movl	$16, %eax	#, tmp602
	subq	$1, %rax	#, tmp291
	addq	%rdx, %rax	# tmp290, tmp292
	movl	$16, %ebx	#, tmp603
	movl	$0, %edx	#, tmp295
	divq	%rbx	# tmp603
	imulq	$16, %rax, %rax	#, tmp294, tmp296
	subq	%rax, %rsp	# tmp296,
	movq	%rsp, %rax	#, tmp297
	addq	$15, %rax	#, tmp298
	shrq	$4, %rax	#, tmp299
	salq	$4, %rax	#, tmp300
	movq	%rax, -80(%rbp)	# tmp300, note_reg
	.loc 1 1921 0
	movl	-204(%rbp), %eax	# i, tmp301
	cltq
	salq	$3, %rax	#, D.16059
	leaq	15(%rax), %rdx	#, tmp302
	movl	$16, %eax	#, tmp604
	subq	$1, %rax	#, tmp303
	addq	%rdx, %rax	# tmp302, tmp304
	movl	$16, %ebx	#, tmp605
	movl	$0, %edx	#, tmp307
	divq	%rbx	# tmp605
	imulq	$16, %rax, %rax	#, tmp306, tmp308
	subq	%rax, %rsp	# tmp308,
	movq	%rsp, %rax	#, tmp309
	addq	$15, %rax	#, tmp310
	shrq	$4, %rax	#, tmp311
	salq	$4, %rax	#, tmp312
	movq	%rax, -72(%rbp)	# tmp312, note_loc
	.loc 1 1922 0
	movl	-204(%rbp), %eax	# i, tmp313
	cltq
	salq	$2, %rax	#, D.16059
	leaq	15(%rax), %rdx	#, tmp314
	movl	$16, %eax	#, tmp606
	subq	$1, %rax	#, tmp315
	addq	%rdx, %rax	# tmp314, tmp316
	movl	$16, %ebx	#, tmp607
	movl	$0, %edx	#, tmp319
	divq	%rbx	# tmp607
	imulq	$16, %rax, %rax	#, tmp318, tmp320
	subq	%rax, %rsp	# tmp320,
	movq	%rsp, %rax	#, tmp321
	addq	$15, %rax	#, tmp322
	shrq	$4, %rax	#, tmp323
	salq	$4, %rax	#, tmp324
	movq	%rax, -64(%rbp)	# tmp324, note_kind
	.loc 1 1924 0
	movl	$0, -212(%rbp)	#, n_notes
	.loc 1 1925 0
	movq	-232(%rbp), %rax	# insn, tmp325
	movq	56(%rax), %rax	# insn_33(D)->fld[6].rtx, tmp326
	movq	%rax, -128(%rbp)	# tmp326, note
	jmp	.L370	#
.L374:
.LBB36:
	.loc 1 1927 0
	movq	-128(%rbp), %rax	# note, tmp327
	movq	8(%rax), %rax	# note_13->fld[0].rtx, tmp328
	movq	%rax, -120(%rbp)	# tmp328, reg
	.loc 1 1928 0
	movq	-128(%rbp), %rax	# note, tmp332
	addq	$8, %rax	#, tmp331
	movq	%rax, -112(%rbp)	# tmp331, loc
	.loc 1 1930 0
	movq	-120(%rbp), %rax	# reg, tmp333
	movzwl	(%rax), %eax	# reg_71->code, D.16057
	cmpw	$63, %ax	#, D.16057
	jne	.L371	#,
	.loc 1 1930 0 is_stmt 0 discriminator 1
	movq	-120(%rbp), %rax	# reg, tmp334
	movq	8(%rax), %rax	# reg_71->fld[0].rtx, D.16056
	movzwl	(%rax), %eax	# _74->code, D.16057
	cmpw	$61, %ax	#, D.16057
	jne	.L371	#,
	.loc 1 1932 0 is_stmt 1
	movq	-120(%rbp), %rax	# reg, tmp338
	addq	$8, %rax	#, tmp337
	movq	%rax, -112(%rbp)	# tmp337, loc
	.loc 1 1933 0
	movq	-120(%rbp), %rax	# reg, tmp339
	movq	8(%rax), %rax	# reg_71->fld[0].rtx, tmp340
	movq	%rax, -120(%rbp)	# tmp340, reg
.L371:
	.loc 1 1936 0
	movq	-120(%rbp), %rax	# reg, tmp341
	movzwl	(%rax), %eax	# reg_25->code, D.16057
	cmpw	$61, %ax	#, D.16057
	jne	.L372	#,
	.loc 1 1936 0 is_stmt 0 discriminator 1
	movq	-120(%rbp), %rax	# reg, tmp342
	movl	8(%rax), %eax	# reg_25->fld[0].rtuint, D.16060
	cmpl	$7, %eax	#, D.16060
	jbe	.L372	#,
	movq	-120(%rbp), %rax	# reg, tmp343
	movl	8(%rax), %eax	# reg_25->fld[0].rtuint, D.16060
	cmpl	$15, %eax	#, D.16060
	ja	.L372	#,
	.loc 1 1937 0 is_stmt 1
	movq	-128(%rbp), %rax	# note, tmp344
	movzbl	2(%rax), %eax	# note_13->mode, D.16061
	cmpb	$1, %al	#, D.16061
	je	.L373	#,
	.loc 1 1938 0
	movq	-128(%rbp), %rax	# note, tmp345
	movzbl	2(%rax), %eax	# note_13->mode, D.16061
	cmpb	$10, %al	#, D.16061
	jne	.L372	#,
.L373:
	.loc 1 1940 0
	movl	-212(%rbp), %eax	# n_notes, tmp346
	cltq
	leaq	0(,%rax,8), %rdx	#, D.16059
	movq	-80(%rbp), %rax	# note_reg, tmp347
	addq	%rax, %rdx	# tmp347, D.16058
	movq	-120(%rbp), %rax	# reg, tmp348
	movq	%rax, (%rdx)	# tmp348, *_85
	.loc 1 1941 0
	movl	-212(%rbp), %eax	# n_notes, tmp349
	cltq
	leaq	0(,%rax,8), %rdx	#, D.16059
	movq	-72(%rbp), %rax	# note_loc, tmp350
	addq	%rax, %rdx	# tmp350, D.16062
	movq	-112(%rbp), %rax	# loc, tmp351
	movq	%rax, (%rdx)	# tmp351, *_88
	.loc 1 1942 0
	movl	-212(%rbp), %eax	# n_notes, tmp352
	cltq
	leaq	0(,%rax,4), %rdx	#, D.16059
	movq	-64(%rbp), %rax	# note_kind, tmp353
	addq	%rax, %rdx	# tmp353, D.16063
	movq	-128(%rbp), %rax	# note, tmp354
	movzbl	2(%rax), %eax	# note_13->mode, D.16061
	movzbl	%al, %eax	# D.16061, D.16064
	movl	%eax, (%rdx)	# D.16064, *_91
	.loc 1 1943 0
	addl	$1, -212(%rbp)	#, n_notes
.L372:
.LBE36:
	.loc 1 1925 0
	movq	-128(%rbp), %rax	# note, tmp355
	movq	16(%rax), %rax	# note_13->fld[1].rtx, tmp356
	movq	%rax, -128(%rbp)	# tmp356, note
.L370:
	.loc 1 1925 0 is_stmt 0 discriminator 1
	cmpq	$0, -128(%rbp)	#, note
	jne	.L374	#,
	.loc 1 1949 0 is_stmt 1
	movl	$0, -208(%rbp)	#, n_clobbers
	.loc 1 1951 0
	movq	-88(%rbp), %rax	# body, tmp357
	movzwl	(%rax), %eax	# body_34->code, D.16057
	cmpw	$39, %ax	#, D.16057
	jne	.L375	#,
	.loc 1 1953 0
	movq	-88(%rbp), %rax	# body, tmp358
	movq	8(%rax), %rax	# body_34->fld[0].rtvec, D.16065
	movl	(%rax), %eax	# _98->num_elem, D.16054
	cltq
	salq	$3, %rax	#, D.16059
	leaq	15(%rax), %rdx	#, tmp359
	movl	$16, %eax	#, tmp608
	subq	$1, %rax	#, tmp360
	addq	%rdx, %rax	# tmp359, tmp361
	movl	$16, %ebx	#, tmp609
	movl	$0, %edx	#, tmp364
	divq	%rbx	# tmp609
	imulq	$16, %rax, %rax	#, tmp363, tmp365
	subq	%rax, %rsp	# tmp365,
	movq	%rsp, %rax	#, tmp366
	addq	$15, %rax	#, tmp367
	shrq	$4, %rax	#, tmp368
	salq	$4, %rax	#, tmp369
	movq	%rax, -144(%rbp)	# tmp369, clobber_reg
	.loc 1 1954 0
	movq	-88(%rbp), %rax	# body, tmp370
	movq	8(%rax), %rax	# body_34->fld[0].rtvec, D.16065
	movl	(%rax), %eax	# _103->num_elem, D.16054
	cltq
	salq	$3, %rax	#, D.16059
	leaq	15(%rax), %rdx	#, tmp371
	movl	$16, %eax	#, tmp610
	subq	$1, %rax	#, tmp372
	addq	%rdx, %rax	# tmp371, tmp373
	movl	$16, %ebx	#, tmp611
	movl	$0, %edx	#, tmp376
	divq	%rbx	# tmp611
	imulq	$16, %rax, %rax	#, tmp375, tmp377
	subq	%rax, %rsp	# tmp377,
	movq	%rsp, %rax	#, tmp378
	addq	$15, %rax	#, tmp379
	shrq	$4, %rax	#, tmp380
	salq	$4, %rax	#, tmp381
	movq	%rax, -136(%rbp)	# tmp381, clobber_loc
	.loc 1 1956 0
	movl	$0, -204(%rbp)	#, i
	jmp	.L376	#
.L379:
	.loc 1 1957 0
	movq	-88(%rbp), %rax	# body, tmp382
	movq	8(%rax), %rax	# body_34->fld[0].rtvec, D.16065
	movl	-204(%rbp), %edx	# i, tmp384
	movslq	%edx, %rdx	# tmp384, tmp383
	movq	8(%rax,%rdx,8), %rax	# _111->elem, D.16056
	movzwl	(%rax), %eax	# _112->code, D.16057
	cmpw	$49, %ax	#, D.16057
	jne	.L377	#,
.LBB37:
	.loc 1 1959 0
	movq	-88(%rbp), %rax	# body, tmp385
	movq	8(%rax), %rax	# body_34->fld[0].rtvec, D.16065
	movl	-204(%rbp), %edx	# i, tmp387
	movslq	%edx, %rdx	# tmp387, tmp386
	movq	8(%rax,%rdx,8), %rax	# _114->elem, tmp388
	movq	%rax, -56(%rbp)	# tmp388, clobber
	.loc 1 1960 0
	movq	-56(%rbp), %rax	# clobber, tmp389
	movq	8(%rax), %rax	# clobber_115->fld[0].rtx, tmp390
	movq	%rax, -104(%rbp)	# tmp390, reg
	.loc 1 1961 0
	movq	-56(%rbp), %rax	# clobber, tmp394
	addq	$8, %rax	#, tmp393
	movq	%rax, -96(%rbp)	# tmp393, loc
	.loc 1 1963 0
	movq	-104(%rbp), %rax	# reg, tmp395
	movzwl	(%rax), %eax	# reg_116->code, D.16057
	cmpw	$63, %ax	#, D.16057
	jne	.L378	#,
	.loc 1 1963 0 is_stmt 0 discriminator 1
	movq	-104(%rbp), %rax	# reg, tmp396
	movq	8(%rax), %rax	# reg_116->fld[0].rtx, D.16056
	movzwl	(%rax), %eax	# _119->code, D.16057
	cmpw	$61, %ax	#, D.16057
	jne	.L378	#,
	.loc 1 1965 0 is_stmt 1
	movq	-104(%rbp), %rax	# reg, tmp400
	addq	$8, %rax	#, tmp399
	movq	%rax, -96(%rbp)	# tmp399, loc
	.loc 1 1966 0
	movq	-104(%rbp), %rax	# reg, tmp401
	movq	8(%rax), %rax	# reg_116->fld[0].rtx, tmp402
	movq	%rax, -104(%rbp)	# tmp402, reg
.L378:
	.loc 1 1969 0
	movq	-104(%rbp), %rax	# reg, tmp403
	movzwl	(%rax), %eax	# reg_27->code, D.16057
	cmpw	$61, %ax	#, D.16057
	jne	.L377	#,
	.loc 1 1969 0 is_stmt 0 discriminator 1
	movq	-104(%rbp), %rax	# reg, tmp404
	movl	8(%rax), %eax	# reg_27->fld[0].rtuint, D.16060
	cmpl	$7, %eax	#, D.16060
	jbe	.L377	#,
	movq	-104(%rbp), %rax	# reg, tmp405
	movl	8(%rax), %eax	# reg_27->fld[0].rtuint, D.16060
	cmpl	$15, %eax	#, D.16060
	ja	.L377	#,
	.loc 1 1971 0 is_stmt 1
	movl	-208(%rbp), %eax	# n_clobbers, tmp406
	cltq
	leaq	0(,%rax,8), %rdx	#, D.16059
	movq	-144(%rbp), %rax	# clobber_reg, tmp407
	addq	%rax, %rdx	# tmp407, D.16058
	movq	-104(%rbp), %rax	# reg, tmp408
	movq	%rax, (%rdx)	# tmp408, *_128
	.loc 1 1972 0
	movl	-208(%rbp), %eax	# n_clobbers, tmp409
	cltq
	leaq	0(,%rax,8), %rdx	#, D.16059
	movq	-136(%rbp), %rax	# clobber_loc, tmp410
	addq	%rax, %rdx	# tmp410, D.16062
	movq	-96(%rbp), %rax	# loc, tmp411
	movq	%rax, (%rdx)	# tmp411, *_131
	.loc 1 1973 0
	addl	$1, -208(%rbp)	#, n_clobbers
.L377:
.LBE37:
	.loc 1 1956 0
	addl	$1, -204(%rbp)	#, i
.L376:
	.loc 1 1956 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# body, tmp412
	movq	8(%rax), %rax	# body_34->fld[0].rtvec, D.16065
	movl	(%rax), %eax	# _109->num_elem, D.16054
	cmpl	-204(%rbp), %eax	# i, D.16054
	jg	.L379	#,
.L375:
	.loc 1 1978 0 is_stmt 1
	movq	-240(%rbp), %rax	# regstack, tmp413
	movq	(%rax), %rdx	# *regstack_134(D), tmp414
	movq	%rdx, -48(%rbp)	# tmp414, temp_stack
	movq	8(%rax), %rdx	# *regstack_134(D), tmp415
	movq	%rdx, -40(%rbp)	# tmp415, temp_stack
	movq	16(%rax), %rax	# *regstack_134(D), tmp416
	movq	%rax, -32(%rbp)	# tmp416, temp_stack
	.loc 1 1982 0
	movl	-176(%rbp), %eax	# n_outputs, tmp417
	movl	%eax, -204(%rbp)	# tmp417, i
	jmp	.L380	#
.L383:
	.loc 1 1983 0
	movl	-204(%rbp), %eax	# i, tmp419
	cltq
	movq	recog_data(,%rax,8), %rax	# recog_data.operand, D.16056
	movzwl	(%rax), %eax	# _137->code, D.16057
	cmpw	$61, %ax	#, D.16057
	jne	.L381	#,
	.loc 1 1983 0 is_stmt 0 discriminator 1
	movl	-204(%rbp), %eax	# i, tmp421
	cltq
	movq	recog_data(,%rax,8), %rax	# recog_data.operand, D.16056
	movl	8(%rax), %eax	# _139->fld[0].rtuint, D.16060
	cmpl	$7, %eax	#, D.16060
	jbe	.L381	#,
	movl	-204(%rbp), %eax	# i, tmp423
	cltq
	movq	recog_data(,%rax,8), %rax	# recog_data.operand, D.16056
	movl	8(%rax), %eax	# _141->fld[0].rtuint, D.16060
	cmpl	$15, %eax	#, D.16060
	ja	.L381	#,
	.loc 1 1984 0 is_stmt 1
	movl	-184(%rbp), %eax	# alt, tmp425
	movslq	%eax, %rcx	# tmp425, tmp424
	movl	-204(%rbp), %eax	# i, tmp427
	cltq
	addq	%rax, %rax	# tmp429
	movq	%rax, %rdx	# tmp428, tmp430
	salq	$4, %rdx	#, tmp430
	subq	%rax, %rdx	# tmp428, tmp430
	leaq	(%rdx,%rcx), %rax	#, tmp431
	salq	$5, %rax	#, tmp432
	addq	$recog_op_alt, %rax	#, tmp433
	movl	8(%rax), %eax	# recog_op_alt[i_17][alt_38].class, D.16066
	movl	$15, %esi	#,
	movl	%eax, %edi	# D.16066,
	call	reg_class_subset_p	#
	testl	%eax, %eax	# D.16054
	je	.L381	#,
	.loc 1 1986 0
	movl	-184(%rbp), %eax	# alt, tmp435
	movslq	%eax, %rcx	# tmp435, tmp434
	movl	-204(%rbp), %eax	# i, tmp437
	cltq
	addq	%rax, %rax	# tmp439
	movq	%rax, %rdx	# tmp438, tmp440
	salq	$4, %rdx	#, tmp440
	subq	%rax, %rdx	# tmp438, tmp440
	leaq	(%rdx,%rcx), %rax	#, tmp441
	salq	$5, %rax	#, tmp442
	addq	$recog_op_alt, %rax	#, tmp443
	movl	8(%rax), %eax	# recog_op_alt[i_17][alt_38].class, D.16066
	cmpl	$15, %eax	#, D.16066
	je	.L381	#,
.LBB38:
	.loc 1 1995 0
	movl	-204(%rbp), %eax	# i, tmp445
	cltq
	movq	recog_data(,%rax,8), %rdx	# recog_data.operand, D.16056
	leaq	-48(%rbp), %rax	#, tmp446
	movq	%rdx, %rsi	# D.16056,
	movq	%rax, %rdi	# tmp446,
	call	get_hard_regnum	#
	movl	%eax, -172(%rbp)	# tmp447, regno
	.loc 1 1997 0
	cmpl	$0, -172(%rbp)	#, regno
	jns	.L382	#,
	.loc 1 1998 0
	movl	$__FUNCTION__.13172, %edx	#,
	movl	$1998, %esi	#,
	movl	$.LC1, %edi	#,
	call	fancy_abort	#
.L382:
	.loc 1 2000 0
	movl	-172(%rbp), %edx	# regno, regno.62
	movl	-204(%rbp), %eax	# i, tmp449
	cltq
	movq	recog_data(,%rax,8), %rax	# recog_data.operand, D.16056
	movl	8(%rax), %eax	# _149->fld[0].rtuint, D.16060
	cmpl	%eax, %edx	# D.16060, regno.62
	je	.L381	#,
.LBB39:
	.loc 1 2008 0
	movl	-48(%rbp), %edx	# temp_stack.top, D.16054
	movl	$8, %eax	#, tmp450
	subl	-172(%rbp), %eax	# regno, D.16054
	addl	%edx, %eax	# D.16054, tmp451
	movl	%eax, -168(%rbp)	# tmp451, k
	.loc 1 2009 0
	movl	-48(%rbp), %eax	# temp_stack.top, D.16054
	.loc 1 2010 0
	movl	%eax, %edx	# D.16054, D.16060
	movl	-204(%rbp), %eax	# i, tmp453
	cltq
	movq	recog_data(,%rax,8), %rax	# recog_data.operand, D.16056
	movl	8(%rax), %eax	# _156->fld[0].rtuint, D.16060
	subl	%eax, %edx	# D.16060, D.16060
	movl	%edx, %eax	# D.16060, D.16060
	addl	$8, %eax	#, D.16060
	.loc 1 2009 0
	movl	%eax, -164(%rbp)	# D.16060, j
	.loc 1 2012 0
	movl	-168(%rbp), %eax	# k, tmp455
	cltq
	movzbl	-32(%rbp,%rax), %eax	# temp_stack.reg, D.16061
	movzbl	%al, %eax	# D.16061, tmp456
	movl	%eax, -160(%rbp)	# tmp456, temp
	.loc 1 2013 0
	movl	-164(%rbp), %eax	# j, tmp458
	cltq
	movzbl	-32(%rbp,%rax), %edx	# temp_stack.reg, D.16061
	movl	-168(%rbp), %eax	# k, tmp460
	cltq
	movb	%dl, -32(%rbp,%rax)	# D.16061, temp_stack.reg
	.loc 1 2014 0
	movl	-160(%rbp), %eax	# temp, tmp461
	movl	%eax, %edx	# tmp461, D.16061
	movl	-164(%rbp), %eax	# j, tmp463
	cltq
	movb	%dl, -32(%rbp,%rax)	# D.16061, temp_stack.reg
.L381:
.LBE39:
.LBE38:
	.loc 1 1982 0
	addl	$1, -204(%rbp)	#, i
.L380:
	.loc 1 1982 0 is_stmt 0 discriminator 1
	movl	-180(%rbp), %eax	# n_inputs, tmp464
	movl	-176(%rbp), %edx	# n_outputs, tmp465
	addl	%edx, %eax	# tmp465, D.16054
	cmpl	-204(%rbp), %eax	# i, D.16054
	jg	.L383	#,
	.loc 1 2021 0 is_stmt 1
	leaq	-48(%rbp), %rdx	#, tmp466
	movq	-240(%rbp), %rsi	# regstack, tmp467
	movq	-232(%rbp), %rax	# insn, tmp468
	movl	$1, %ecx	#,
	movq	%rax, %rdi	# tmp468,
	call	change_stack	#
	.loc 1 2026 0
	movl	-176(%rbp), %eax	# n_outputs, tmp469
	movl	%eax, -204(%rbp)	# tmp469, i
	jmp	.L384	#
.L387:
	.loc 1 2027 0
	movl	-204(%rbp), %eax	# i, tmp471
	cltq
	movq	recog_data(,%rax,8), %rax	# recog_data.operand, D.16056
	movzwl	(%rax), %eax	# _168->code, D.16057
	cmpw	$61, %ax	#, D.16057
	jne	.L385	#,
	.loc 1 2027 0 is_stmt 0 discriminator 1
	movl	-204(%rbp), %eax	# i, tmp473
	cltq
	movq	recog_data(,%rax,8), %rax	# recog_data.operand, D.16056
	movl	8(%rax), %eax	# _170->fld[0].rtuint, D.16060
	cmpl	$7, %eax	#, D.16060
	jbe	.L385	#,
	movl	-204(%rbp), %eax	# i, tmp475
	cltq
	movq	recog_data(,%rax,8), %rax	# recog_data.operand, D.16056
	movl	8(%rax), %eax	# _172->fld[0].rtuint, D.16060
	cmpl	$15, %eax	#, D.16060
	ja	.L385	#,
.LBB40:
	.loc 1 2029 0 is_stmt 1
	movl	-204(%rbp), %eax	# i, tmp477
	cltq
	movq	recog_data(,%rax,8), %rdx	# recog_data.operand, D.16056
	movq	-240(%rbp), %rax	# regstack, tmp478
	movq	%rdx, %rsi	# D.16056,
	movq	%rax, %rdi	# tmp478,
	call	get_hard_regnum	#
	movl	%eax, -156(%rbp)	# tmp479, regnum
	.loc 1 2031 0
	cmpl	$0, -156(%rbp)	#, regnum
	jns	.L386	#,
	.loc 1 2032 0
	movl	$__FUNCTION__.13172, %edx	#,
	movl	$2032, %esi	#,
	movl	$.LC1, %edi	#,
	call	fancy_abort	#
.L386:
	.loc 1 2034 0
	movl	-204(%rbp), %eax	# i, tmp481
	cltq
	addq	$30, %rax	#, tmp482
	movq	recog_data(,%rax,8), %rax	# recog_data.operand_loc, D.16058
	movl	-156(%rbp), %edx	# regnum, tmp483
	movl	%edx, %esi	# tmp483,
	movq	%rax, %rdi	# D.16058,
	call	replace_reg	#
.L385:
.LBE40:
	.loc 1 2026 0
	addl	$1, -204(%rbp)	#, i
.L384:
	.loc 1 2026 0 is_stmt 0 discriminator 1
	movl	-180(%rbp), %eax	# n_inputs, tmp484
	movl	-176(%rbp), %edx	# n_outputs, tmp485
	addl	%edx, %eax	# tmp485, D.16054
	cmpl	-204(%rbp), %eax	# i, D.16054
	jg	.L387	#,
	.loc 1 2037 0 is_stmt 1
	movl	$0, -204(%rbp)	#, i
	jmp	.L388	#
.L391:
	.loc 1 2038 0
	movl	-204(%rbp), %eax	# i, tmp486
	cltq
	leaq	0(,%rax,4), %rdx	#, D.16059
	movq	-64(%rbp), %rax	# note_kind, tmp487
	addq	%rdx, %rax	# D.16059, D.16063
	movl	(%rax), %eax	# *_181, D.16064
	cmpl	$1, %eax	#, D.16064
	jne	.L389	#,
.LBB41:
	.loc 1 2040 0
	movl	-204(%rbp), %eax	# i, tmp488
	cltq
	leaq	0(,%rax,8), %rdx	#, D.16059
	movq	-80(%rbp), %rax	# note_reg, tmp489
	addq	%rdx, %rax	# D.16059, D.16058
	movq	(%rax), %rdx	# *_185, D.16056
	movq	-240(%rbp), %rax	# regstack, tmp490
	movq	%rdx, %rsi	# D.16056,
	movq	%rax, %rdi	# tmp490,
	call	get_hard_regnum	#
	movl	%eax, -152(%rbp)	# tmp491, regnum
	.loc 1 2042 0
	cmpl	$0, -152(%rbp)	#, regnum
	jns	.L390	#,
	.loc 1 2043 0
	movl	$__FUNCTION__.13172, %edx	#,
	movl	$2043, %esi	#,
	movl	$.LC1, %edi	#,
	call	fancy_abort	#
.L390:
	.loc 1 2045 0
	movl	-204(%rbp), %eax	# i, tmp492
	cltq
	leaq	0(,%rax,8), %rdx	#, D.16059
	movq	-72(%rbp), %rax	# note_loc, tmp493
	addq	%rdx, %rax	# D.16059, D.16062
	movq	(%rax), %rax	# *_190, D.16058
	movl	-152(%rbp), %edx	# regnum, tmp494
	movl	%edx, %esi	# tmp494,
	movq	%rax, %rdi	# D.16058,
	call	replace_reg	#
.L389:
.LBE41:
	.loc 1 2037 0
	addl	$1, -204(%rbp)	#, i
.L388:
	.loc 1 2037 0 is_stmt 0 discriminator 1
	movl	-204(%rbp), %eax	# i, tmp495
	cmpl	-212(%rbp), %eax	# n_notes, tmp495
	jl	.L391	#,
	.loc 1 2048 0 is_stmt 1
	movl	$0, -204(%rbp)	#, i
	jmp	.L392	#
.L394:
.LBB42:
	.loc 1 2052 0
	movl	-204(%rbp), %eax	# i, tmp496
	cltq
	leaq	0(,%rax,8), %rdx	#, D.16059
	movq	-144(%rbp), %rax	# clobber_reg, tmp497
	addq	%rdx, %rax	# D.16059, D.16058
	movq	(%rax), %rdx	# *_196, D.16056
	movq	-240(%rbp), %rax	# regstack, tmp498
	movq	%rdx, %rsi	# D.16056,
	movq	%rax, %rdi	# tmp498,
	call	get_hard_regnum	#
	movl	%eax, -148(%rbp)	# tmp499, regnum
	.loc 1 2054 0
	cmpl	$0, -148(%rbp)	#, regnum
	js	.L393	#,
	.loc 1 2060 0
	movl	-204(%rbp), %eax	# i, tmp500
	cltq
	leaq	0(,%rax,8), %rdx	#, D.16059
	movq	-136(%rbp), %rax	# clobber_loc, tmp501
	addq	%rdx, %rax	# D.16059, D.16062
	movq	(%rax), %rax	# *_201, D.16058
	movl	-148(%rbp), %edx	# regnum, tmp502
	subl	$8, %edx	#, D.16054
	movslq	%edx, %rdx	# D.16054, tmp503
	imulq	$472, %rdx, %rdx	#, tmp503, tmp504
	addq	$FP_mode_reg+128, %rdx	#, tmp505
	movq	(%rdx), %rdx	# FP_mode_reg, D.16056
	movq	%rdx, (%rax)	# D.16056, *_202
.L393:
.LBE42:
	.loc 1 2048 0
	addl	$1, -204(%rbp)	#, i
.L392:
	.loc 1 2048 0 is_stmt 0 discriminator 1
	movl	-204(%rbp), %eax	# i, tmp506
	cmpl	-208(%rbp), %eax	# n_clobbers, tmp506
	jl	.L394	#,
	.loc 1 2066 0 is_stmt 1
	movl	-176(%rbp), %eax	# n_outputs, tmp507
	movl	%eax, -204(%rbp)	# tmp507, i
	jmp	.L395	#
.L402:
	.loc 1 2067 0
	movl	-204(%rbp), %eax	# i, tmp509
	cltq
	movq	recog_data(,%rax,8), %rax	# recog_data.operand, D.16056
	movzwl	(%rax), %eax	# _208->code, D.16057
	cmpw	$61, %ax	#, D.16057
	jne	.L396	#,
	.loc 1 2067 0 is_stmt 0 discriminator 1
	movl	-204(%rbp), %eax	# i, tmp511
	cltq
	movq	recog_data(,%rax,8), %rax	# recog_data.operand, D.16056
	movl	8(%rax), %eax	# _210->fld[0].rtuint, D.16060
	cmpl	$7, %eax	#, D.16060
	jbe	.L396	#,
	movl	-204(%rbp), %eax	# i, tmp513
	cltq
	movq	recog_data(,%rax,8), %rax	# recog_data.operand, D.16056
	movl	8(%rax), %eax	# _212->fld[0].rtuint, D.16060
	cmpl	$15, %eax	#, D.16060
	ja	.L396	#,
.LBB43:
	.loc 1 2073 0 is_stmt 1
	movl	$0, -200(%rbp)	#, j
	jmp	.L397	#
.L400:
	.loc 1 2074 0
	movl	-204(%rbp), %eax	# i, tmp515
	cltq
	movq	recog_data(,%rax,8), %rdx	# recog_data.operand, D.16056
	movl	-200(%rbp), %eax	# j, tmp516
	cltq
	leaq	0(,%rax,8), %rcx	#, D.16059
	movq	-144(%rbp), %rax	# clobber_reg, tmp517
	addq	%rcx, %rax	# D.16059, D.16058
	movq	(%rax), %rax	# *_218, D.16056
	movq	%rdx, %rsi	# D.16056,
	movq	%rax, %rdi	# D.16056,
	call	operands_match_p	#
	testl	%eax, %eax	# D.16054
	je	.L398	#,
	.loc 1 2075 0
	jmp	.L399	#
.L398:
	.loc 1 2073 0
	addl	$1, -200(%rbp)	#, j
.L397:
	.loc 1 2073 0 is_stmt 0 discriminator 1
	movl	-200(%rbp), %eax	# j, tmp518
	cmpl	-208(%rbp), %eax	# n_clobbers, tmp518
	jl	.L400	#,
.L399:
	.loc 1 2077 0 is_stmt 1
	movl	-200(%rbp), %eax	# j, tmp519
	cmpl	-208(%rbp), %eax	# n_clobbers, tmp519
	jl	.L401	#,
	.loc 1 2077 0 is_stmt 0 discriminator 1
	movl	-184(%rbp), %eax	# alt, tmp521
	movslq	%eax, %rcx	# tmp521, tmp520
	movl	-204(%rbp), %eax	# i, tmp523
	cltq
	addq	%rax, %rax	# tmp525
	movq	%rax, %rdx	# tmp524, tmp526
	salq	$4, %rdx	#, tmp526
	subq	%rax, %rdx	# tmp524, tmp526
	leaq	(%rdx,%rcx), %rax	#, tmp527
	salq	$5, %rax	#, tmp528
	addq	$recog_op_alt+16, %rax	#, tmp529
	movl	(%rax), %eax	# recog_op_alt[i_21][alt_38].matches, D.16054
	testl	%eax, %eax	# D.16054
	js	.L396	#,
.L401:
	.loc 1 2085 0 is_stmt 1
	movq	-240(%rbp), %rax	# regstack, tmp530
	movq	8(%rax), %rsi	# regstack_134(D)->reg_set, D.16059
	movq	-240(%rbp), %rax	# regstack, tmp531
	movl	(%rax), %eax	# regstack_134(D)->top, D.16054
	movq	-240(%rbp), %rdx	# regstack, tmp532
	cltq
	movzbl	16(%rdx,%rax), %eax	# regstack_134(D)->reg, D.16061
	movzbl	%al, %eax	# D.16061, D.16054
	movl	$1, %edx	#, tmp534
	movl	%eax, %ecx	# D.16054, tmp624
	salq	%cl, %rdx	# tmp624, D.16059
	movq	%rdx, %rax	# D.16059, D.16059
	notq	%rax	# D.16059
	andq	%rax, %rsi	# D.16059, D.16059
	movq	%rsi, %rdx	# D.16059, D.16059
	movq	-240(%rbp), %rax	# regstack, tmp535
	movq	%rdx, 8(%rax)	# D.16059, regstack_134(D)->reg_set
	.loc 1 2087 0
	movq	-240(%rbp), %rax	# regstack, tmp536
	movl	(%rax), %eax	# regstack_134(D)->top, D.16054
	leal	-1(%rax), %edx	#, D.16054
	movq	-240(%rbp), %rax	# regstack, tmp537
	movl	%edx, (%rax)	# D.16054, regstack_134(D)->top
.L396:
.LBE43:
	.loc 1 2066 0
	addl	$1, -204(%rbp)	#, i
.L395:
	.loc 1 2066 0 is_stmt 0 discriminator 1
	movl	-180(%rbp), %eax	# n_inputs, tmp538
	movl	-176(%rbp), %edx	# n_outputs, tmp539
	addl	%edx, %eax	# tmp539, D.16054
	cmpl	-204(%rbp), %eax	# i, D.16054
	jg	.L402	#,
	.loc 1 2095 0 is_stmt 1
	movl	$15, -204(%rbp)	#, i
	jmp	.L403	#
.L408:
.LBB44:
	.loc 1 2100 0
	movl	$0, -196(%rbp)	#, j
	jmp	.L404	#
.L407:
	.loc 1 2101 0
	movl	-196(%rbp), %eax	# j, tmp541
	cltq
	movq	recog_data(,%rax,8), %rax	# recog_data.operand, D.16056
	movzwl	(%rax), %eax	# _235->code, D.16057
	cmpw	$61, %ax	#, D.16057
	jne	.L405	#,
	.loc 1 2101 0 is_stmt 0 discriminator 1
	movl	-196(%rbp), %eax	# j, tmp543
	cltq
	movq	recog_data(,%rax,8), %rax	# recog_data.operand, D.16056
	movl	8(%rax), %eax	# _237->fld[0].rtuint, D.16060
	cmpl	$7, %eax	#, D.16060
	jbe	.L405	#,
	movl	-196(%rbp), %eax	# j, tmp545
	cltq
	movq	recog_data(,%rax,8), %rax	# recog_data.operand, D.16056
	movl	8(%rax), %eax	# _239->fld[0].rtuint, D.16060
	cmpl	$15, %eax	#, D.16060
	ja	.L405	#,
	.loc 1 2102 0 is_stmt 1
	movl	-196(%rbp), %eax	# j, tmp547
	cltq
	movq	recog_data(,%rax,8), %rax	# recog_data.operand, D.16056
	movl	8(%rax), %edx	# _241->fld[0].rtuint, D.16060
	movl	-204(%rbp), %eax	# i, i.63
	cmpl	%eax, %edx	# i.63, D.16060
	jne	.L405	#,
	.loc 1 2104 0
	movq	-240(%rbp), %rax	# regstack, tmp548
	movl	(%rax), %eax	# regstack_134(D)->top, D.16054
	leal	1(%rax), %edx	#, D.16054
	movq	-240(%rbp), %rax	# regstack, tmp549
	movl	%edx, (%rax)	# D.16054, regstack_134(D)->top
	movq	-240(%rbp), %rax	# regstack, tmp550
	movl	(%rax), %eax	# regstack_134(D)->top, D.16054
	movl	-204(%rbp), %edx	# i, tmp551
	movl	%edx, %ecx	# tmp551, D.16061
	movq	-240(%rbp), %rdx	# regstack, tmp552
	cltq
	movb	%cl, 16(%rdx,%rax)	# D.16061, regstack_134(D)->reg
	.loc 1 2105 0
	movq	-240(%rbp), %rax	# regstack, tmp554
	movq	8(%rax), %rdx	# regstack_134(D)->reg_set, D.16059
	movl	-204(%rbp), %eax	# i, tmp555
	movl	$1, %esi	#, tmp556
	movl	%eax, %ecx	# tmp555, tmp627
	salq	%cl, %rsi	# tmp627, D.16059
	movq	%rsi, %rax	# D.16059, D.16059
	orq	%rax, %rdx	# D.16059, D.16059
	movq	-240(%rbp), %rax	# regstack, tmp557
	movq	%rdx, 8(%rax)	# D.16059, regstack_134(D)->reg_set
	.loc 1 2106 0
	jmp	.L406	#
.L405:
	.loc 1 2100 0
	addl	$1, -196(%rbp)	#, j
.L404:
	.loc 1 2100 0 is_stmt 0 discriminator 1
	movl	-196(%rbp), %eax	# j, tmp558
	cmpl	-176(%rbp), %eax	# n_outputs, tmp558
	jl	.L407	#,
.L406:
.LBE44:
	.loc 1 2095 0 is_stmt 1
	subl	$1, -204(%rbp)	#, i
.L403:
	.loc 1 2095 0 is_stmt 0 discriminator 1
	cmpl	$7, -204(%rbp)	#, i
	jg	.L408	#,
	.loc 1 2117 0 is_stmt 1
	movl	$0, -204(%rbp)	#, i
	jmp	.L409	#
.L414:
	.loc 1 2118 0
	movl	-204(%rbp), %eax	# i, tmp560
	cltq
	movq	recog_data(,%rax,8), %rax	# recog_data.operand, D.16056
	movzwl	(%rax), %eax	# _254->code, D.16057
	cmpw	$61, %ax	#, D.16057
	jne	.L410	#,
	.loc 1 2118 0 is_stmt 0 discriminator 1
	movl	-204(%rbp), %eax	# i, tmp562
	cltq
	movq	recog_data(,%rax,8), %rax	# recog_data.operand, D.16056
	movl	8(%rax), %eax	# _256->fld[0].rtuint, D.16060
	cmpl	$7, %eax	#, D.16060
	jbe	.L410	#,
	movl	-204(%rbp), %eax	# i, tmp564
	cltq
	movq	recog_data(,%rax,8), %rax	# recog_data.operand, D.16056
	movl	8(%rax), %eax	# _258->fld[0].rtuint, D.16060
	cmpl	$15, %eax	#, D.16060
	ja	.L410	#,
.LBB45:
	.loc 1 2122 0 is_stmt 1
	movl	$0, -192(%rbp)	#, j
	jmp	.L411	#
.L413:
	.loc 1 2123 0
	movl	-204(%rbp), %eax	# i, tmp566
	cltq
	movq	recog_data(,%rax,8), %rax	# recog_data.operand, D.16056
	movl	8(%rax), %edx	# _261->fld[0].rtuint, D.16060
	movl	-192(%rbp), %eax	# j, tmp567
	cltq
	leaq	0(,%rax,8), %rcx	#, D.16059
	movq	-80(%rbp), %rax	# note_reg, tmp568
	addq	%rcx, %rax	# D.16059, D.16058
	movq	(%rax), %rax	# *_265, D.16056
	movl	8(%rax), %eax	# _266->fld[0].rtuint, D.16060
	cmpl	%eax, %edx	# D.16060, D.16060
	jne	.L412	#,
	.loc 1 2124 0
	movl	-192(%rbp), %eax	# j, tmp569
	cltq
	leaq	0(,%rax,4), %rdx	#, D.16059
	movq	-64(%rbp), %rax	# note_kind, tmp570
	addq	%rdx, %rax	# D.16059, D.16063
	movl	(%rax), %eax	# *_270, D.16064
	cmpl	$10, %eax	#, D.16064
	jne	.L412	#,
	.loc 1 2126 0
	movl	-204(%rbp), %eax	# i, tmp572
	cltq
	movq	recog_data(,%rax,8), %rdx	# recog_data.operand, D.16056
	movq	-240(%rbp), %rsi	# regstack, tmp573
	movq	-232(%rbp), %rax	# insn, tmp574
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# tmp574,
	call	emit_pop_insn	#
	movq	%rax, -232(%rbp)	# tmp575, insn
	.loc 1 2128 0
	jmp	.L410	#
.L412:
	.loc 1 2122 0
	addl	$1, -192(%rbp)	#, j
.L411:
	.loc 1 2122 0 is_stmt 0 discriminator 1
	movl	-192(%rbp), %eax	# j, tmp576
	cmpl	-212(%rbp), %eax	# n_notes, tmp576
	jl	.L413	#,
.L410:
.LBE45:
	.loc 1 2117 0 is_stmt 1
	addl	$1, -204(%rbp)	#, i
.L409:
	.loc 1 2117 0 is_stmt 0 discriminator 1
	movl	-204(%rbp), %eax	# i, tmp577
	cmpl	-176(%rbp), %eax	# n_outputs, tmp577
	jl	.L414	#,
	.loc 1 2132 0 is_stmt 1
	movl	-176(%rbp), %eax	# n_outputs, tmp578
	movl	%eax, -204(%rbp)	# tmp578, i
	jmp	.L415	#
.L420:
	.loc 1 2133 0
	movl	-204(%rbp), %eax	# i, tmp580
	cltq
	movq	recog_data(,%rax,8), %rax	# recog_data.operand, D.16056
	movzwl	(%rax), %eax	# _278->code, D.16057
	cmpw	$61, %ax	#, D.16057
	jne	.L416	#,
	.loc 1 2133 0 is_stmt 0 discriminator 1
	movl	-204(%rbp), %eax	# i, tmp582
	cltq
	movq	recog_data(,%rax,8), %rax	# recog_data.operand, D.16056
	movl	8(%rax), %eax	# _280->fld[0].rtuint, D.16060
	cmpl	$7, %eax	#, D.16060
	jbe	.L416	#,
	movl	-204(%rbp), %eax	# i, tmp584
	cltq
	movq	recog_data(,%rax,8), %rax	# recog_data.operand, D.16056
	movl	8(%rax), %eax	# _282->fld[0].rtuint, D.16060
	cmpl	$15, %eax	#, D.16060
	ja	.L416	#,
.LBB46:
	.loc 1 2137 0 is_stmt 1
	movl	$0, -188(%rbp)	#, j
	jmp	.L417	#
.L419:
	.loc 1 2138 0
	movl	-204(%rbp), %eax	# i, tmp586
	cltq
	movq	recog_data(,%rax,8), %rax	# recog_data.operand, D.16056
	movl	8(%rax), %edx	# _285->fld[0].rtuint, D.16060
	movl	-188(%rbp), %eax	# j, tmp587
	cltq
	leaq	0(,%rax,8), %rcx	#, D.16059
	movq	-80(%rbp), %rax	# note_reg, tmp588
	addq	%rcx, %rax	# D.16059, D.16058
	movq	(%rax), %rax	# *_289, D.16056
	movl	8(%rax), %eax	# _290->fld[0].rtuint, D.16060
	cmpl	%eax, %edx	# D.16060, D.16060
	jne	.L418	#,
	.loc 1 2139 0
	movl	-188(%rbp), %eax	# j, tmp589
	cltq
	leaq	0(,%rax,4), %rdx	#, D.16059
	movq	-64(%rbp), %rax	# note_kind, tmp590
	addq	%rdx, %rax	# D.16059, D.16063
	movl	(%rax), %eax	# *_294, D.16064
	cmpl	$1, %eax	#, D.16064
	jne	.L418	#,
	.loc 1 2140 0
	movq	-240(%rbp), %rax	# regstack, tmp591
	movq	8(%rax), %rdx	# regstack_134(D)->reg_set, D.16059
	movl	-204(%rbp), %eax	# i, tmp593
	cltq
	movq	recog_data(,%rax,8), %rax	# recog_data.operand, D.16056
	movl	8(%rax), %eax	# _297->fld[0].rtuint, D.16060
	movl	%eax, %ecx	# D.16054, tmp629
	shrq	%cl, %rdx	# tmp629, D.16059
	movq	%rdx, %rax	# D.16059, D.16059
	andl	$1, %eax	#, D.16059
	testq	%rax, %rax	# D.16059
	je	.L418	#,
	.loc 1 2143 0
	movl	-204(%rbp), %eax	# i, tmp595
	cltq
	movq	recog_data(,%rax,8), %rdx	# recog_data.operand, D.16056
	movq	-240(%rbp), %rsi	# regstack, tmp596
	movq	-232(%rbp), %rax	# insn, tmp597
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# tmp597,
	call	emit_pop_insn	#
	movq	%rax, -232(%rbp)	# tmp598, insn
	.loc 1 2145 0
	jmp	.L416	#
.L418:
	.loc 1 2137 0
	addl	$1, -188(%rbp)	#, j
.L417:
	.loc 1 2137 0 is_stmt 0 discriminator 1
	movl	-188(%rbp), %eax	# j, tmp599
	cmpl	-212(%rbp), %eax	# n_notes, tmp599
	jl	.L419	#,
.L416:
.LBE46:
	.loc 1 2132 0 is_stmt 1
	addl	$1, -204(%rbp)	#, i
.L415:
	.loc 1 2132 0 is_stmt 0 discriminator 1
	movl	-180(%rbp), %eax	# n_inputs, tmp600
	movl	-176(%rbp), %edx	# n_outputs, tmp601
	addl	%edx, %eax	# tmp601, D.16054
	cmpl	-204(%rbp), %eax	# i, D.16054
	jg	.L420	#,
.L361:
	.loc 1 2148 0 is_stmt 1
	movq	-24(%rbp), %rax	# D.16067, tmp613
	xorq	%fs:40, %rax	#, tmp613
	je	.L421	#,
	call	__stack_chk_fail	#
.L421:
	movq	-8(%rbp), %rbx	#,
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE23:
	.size	subst_asm_stack_regs, .-subst_asm_stack_regs
	.type	subst_stack_regs, @function
subst_stack_regs:
.LFB24:
	.loc 1 2159 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# insn, insn
	movq	%rsi, -48(%rbp)	# regstack, regstack
	.loc 1 2163 0
	movq	-40(%rbp), %rax	# insn, tmp97
	movzwl	(%rax), %eax	# insn_7(D)->code, D.16068
	cmpw	$34, %ax	#, D.16068
	jne	.L423	#,
.LBB47:
	.loc 1 2165 0
	movq	-48(%rbp), %rax	# regstack, tmp98
	movl	(%rax), %eax	# regstack_9(D)->top, tmp99
	movl	%eax, -24(%rbp)	# tmp99, top
	.loc 1 2171 0
	cmpl	$0, -24(%rbp)	#, top
	js	.L423	#,
	.loc 1 2173 0
	movq	-40(%rbp), %rax	# insn, tmp100
	movq	16(%rax), %rax	# insn_7(D)->fld[1].rtx, D.16069
	movq	-48(%rbp), %rdx	# regstack, tmp101
	movq	%rdx, %rsi	# tmp101,
	movq	%rax, %rdi	# D.16069,
	call	straighten_stack	#
	.loc 1 2177 0
	jmp	.L424	#
.L425:
	.loc 1 2179 0
	movq	-48(%rbp), %rax	# regstack, tmp102
	movq	8(%rax), %rdx	# regstack_9(D)->reg_set, D.16071
	movq	-48(%rbp), %rax	# regstack, tmp103
	movl	(%rax), %eax	# regstack_9(D)->top, D.16070
	addl	$8, %eax	#, D.16070
	movl	$1, %esi	#, tmp104
	movl	%eax, %ecx	# D.16070, tmp152
	salq	%cl, %rsi	# tmp152, D.16071
	movq	%rsi, %rax	# D.16071, D.16071
	notq	%rax	# D.16071
	andq	%rax, %rdx	# D.16071, D.16071
	movq	-48(%rbp), %rax	# regstack, tmp105
	movq	%rdx, 8(%rax)	# D.16071, regstack_9(D)->reg_set
	.loc 1 2180 0
	movq	-48(%rbp), %rax	# regstack, tmp106
	movl	(%rax), %eax	# regstack_9(D)->top, D.16070
	leal	-1(%rax), %edx	#, D.16070
	movq	-48(%rbp), %rax	# regstack, tmp107
	movl	%edx, (%rax)	# D.16070, regstack_9(D)->top
.L424:
	.loc 1 2177 0 discriminator 1
	movq	-48(%rbp), %rax	# regstack, tmp108
	movl	(%rax), %eax	# regstack_9(D)->top, D.16070
	testl	%eax, %eax	# D.16070
	jns	.L425	#,
.L423:
.LBE47:
	.loc 1 2191 0
	movq	-40(%rbp), %rax	# insn, tmp109
	movq	%rax, %rdi	# tmp109,
	call	stack_regs_mentioned	#
	testl	%eax, %eax	# D.16070
	je	.L426	#,
.LBB48:
	.loc 1 2193 0
	movq	-40(%rbp), %rax	# insn, tmp110
	movq	32(%rax), %rax	# insn_7(D)->fld[3].rtx, D.16069
	movq	%rax, %rdi	# D.16069,
	call	asm_noperands	#
	movl	%eax, -20(%rbp)	# tmp111, n_operands
	.loc 1 2194 0
	cmpl	$0, -20(%rbp)	#, n_operands
	js	.L427	#,
	.loc 1 2200 0
	movq	-48(%rbp), %rdx	# regstack, tmp112
	movq	-40(%rbp), %rax	# insn, tmp113
	movq	%rdx, %rsi	# tmp112,
	movq	%rax, %rdi	# tmp113,
	call	subst_asm_stack_regs	#
	.loc 1 2201 0
	jmp	.L422	#
.L427:
	.loc 1 2204 0
	movq	-40(%rbp), %rax	# insn, tmp114
	movq	32(%rax), %rax	# insn_7(D)->fld[3].rtx, D.16069
	movzwl	(%rax), %eax	# _24->code, D.16068
	cmpw	$39, %ax	#, D.16068
	jne	.L429	#,
	.loc 1 2205 0
	movl	$0, -28(%rbp)	#, i
	jmp	.L430	#
.L432:
	.loc 1 2207 0
	movq	-40(%rbp), %rax	# insn, tmp115
	movq	32(%rax), %rax	# insn_7(D)->fld[3].rtx, D.16069
	movq	8(%rax), %rax	# _30->fld[0].rtvec, D.16072
	movl	-28(%rbp), %edx	# i, tmp117
	movslq	%edx, %rdx	# tmp117, tmp116
	movq	8(%rax,%rdx,8), %rax	# _31->elem, D.16069
	movq	%rax, %rdi	# D.16069,
	call	stack_regs_mentioned_p	#
	testl	%eax, %eax	# D.16070
	je	.L431	#,
	.loc 1 2209 0
	movq	-40(%rbp), %rax	# insn, tmp118
	movq	32(%rax), %rax	# insn_7(D)->fld[3].rtx, D.16069
	movq	8(%rax), %rax	# _34->fld[0].rtvec, D.16072
	.loc 1 2208 0
	movl	-28(%rbp), %edx	# i, tmp120
	movslq	%edx, %rdx	# tmp120, tmp119
	movq	8(%rax,%rdx,8), %rdx	# _35->elem, D.16069
	movq	-48(%rbp), %rcx	# regstack, tmp121
	movq	-40(%rbp), %rax	# insn, tmp122
	movq	%rcx, %rsi	# tmp121,
	movq	%rax, %rdi	# tmp122,
	call	subst_stack_regs_pat	#
.L431:
	.loc 1 2205 0
	addl	$1, -28(%rbp)	#, i
.L430:
	.loc 1 2205 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# insn, tmp123
	movq	32(%rax), %rax	# insn_7(D)->fld[3].rtx, D.16069
	movq	8(%rax), %rax	# _27->fld[0].rtvec, D.16072
	movl	(%rax), %eax	# _28->num_elem, D.16070
	cmpl	-28(%rbp), %eax	# i, D.16070
	jg	.L432	#,
	jmp	.L426	#
.L429:
	.loc 1 2212 0 is_stmt 1
	movq	-40(%rbp), %rax	# insn, tmp124
	movq	32(%rax), %rdx	# insn_7(D)->fld[3].rtx, D.16069
	movq	-48(%rbp), %rcx	# regstack, tmp125
	movq	-40(%rbp), %rax	# insn, tmp126
	movq	%rcx, %rsi	# tmp125,
	movq	%rax, %rdi	# tmp126,
	call	subst_stack_regs_pat	#
.L426:
.LBE48:
	.loc 1 2218 0
	movq	-40(%rbp), %rax	# insn, tmp127
	movzwl	(%rax), %eax	# insn_7(D)->code, D.16068
	cmpw	$37, %ax	#, D.16068
	je	.L433	#,
	.loc 1 2218 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# insn, tmp128
	movzbl	3(%rax), %eax	# *insn_7(D), D.16073
	andl	$8, %eax	#, D.16073
	testb	%al, %al	# D.16073
	je	.L434	#,
.L433:
	.loc 1 2219 0 is_stmt 1
	jmp	.L422	#
.L434:
	.loc 1 2226 0
	movq	-40(%rbp), %rax	# insn, tmp132
	addq	$56, %rax	#, tmp131
	movq	%rax, -16(%rbp)	# tmp131, note_link
	.loc 1 2227 0
	movq	-16(%rbp), %rax	# note_link, tmp133
	movq	(%rax), %rax	# *note_link_42, tmp134
	movq	%rax, -8(%rbp)	# tmp134, note
	jmp	.L435	#
.L438:
	.loc 1 2228 0
	movq	-8(%rbp), %rax	# note, tmp135
	movzbl	2(%rax), %eax	# note_5->mode, D.16073
	cmpb	$10, %al	#, D.16073
	jne	.L436	#,
	.loc 1 2228 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# note, tmp136
	movq	8(%rax), %rax	# note_5->fld[0].rtx, D.16069
	movzwl	(%rax), %eax	# _45->code, D.16068
	cmpw	$61, %ax	#, D.16068
	jne	.L436	#,
	movq	-8(%rbp), %rax	# note, tmp137
	movq	8(%rax), %rax	# note_5->fld[0].rtx, D.16069
	movl	8(%rax), %eax	# _47->fld[0].rtuint, D.16074
	cmpl	$7, %eax	#, D.16074
	jbe	.L436	#,
	movq	-8(%rbp), %rax	# note, tmp138
	movq	8(%rax), %rax	# note_5->fld[0].rtx, D.16069
	movl	8(%rax), %eax	# _49->fld[0].rtuint, D.16074
	cmpl	$15, %eax	#, D.16074
	ja	.L436	#,
	.loc 1 2230 0 is_stmt 1
	movq	-8(%rbp), %rax	# note, tmp139
	movq	16(%rax), %rdx	# note_5->fld[1].rtx, D.16069
	movq	-16(%rbp), %rax	# note_link, tmp140
	movq	%rdx, (%rax)	# D.16069, *note_link_4
	.loc 1 2231 0
	movq	-8(%rbp), %rax	# note, tmp141
	movq	8(%rax), %rdx	# note_5->fld[0].rtx, D.16069
	movq	-48(%rbp), %rsi	# regstack, tmp142
	movq	-40(%rbp), %rax	# insn, tmp143
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# tmp143,
	call	emit_pop_insn	#
	movq	%rax, -40(%rbp)	# tmp144, insn
	jmp	.L437	#
.L436:
	.loc 1 2234 0
	movq	-8(%rbp), %rax	# note, tmp148
	addq	$16, %rax	#, tmp147
	movq	%rax, -16(%rbp)	# tmp147, note_link
.L437:
	.loc 1 2227 0
	movq	-8(%rbp), %rax	# note, tmp149
	movq	16(%rax), %rax	# note_5->fld[1].rtx, tmp150
	movq	%rax, -8(%rbp)	# tmp150, note
.L435:
	.loc 1 2227 0 is_stmt 0 discriminator 1
	cmpq	$0, -8(%rbp)	#, note
	jne	.L438	#,
.L422:
	.loc 1 2235 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE24:
	.size	subst_stack_regs, .-subst_stack_regs
	.type	change_stack, @function
change_stack:
.LFB25:
	.loc 1 2255 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# insn, insn
	movq	%rsi, -32(%rbp)	# old, old
	movq	%rdx, -40(%rbp)	# new, new
	movl	%ecx, -44(%rbp)	# where, where
	.loc 1 2257 0
	movl	$0, -4(%rbp)	#, update_end
	.loc 1 2262 0
	cmpl	$0, -44(%rbp)	#, where
	jne	.L440	#,
	.loc 1 2264 0
	movq	current_block(%rip), %rax	# current_block, current_block.64
	testq	%rax, %rax	# current_block.64
	je	.L441	#,
	.loc 1 2264 0 is_stmt 0 discriminator 1
	movq	current_block(%rip), %rax	# current_block, current_block.65
	movq	8(%rax), %rax	# current_block.65_12->end, D.16075
	cmpq	-24(%rbp), %rax	# insn, D.16075
	jne	.L441	#,
	.loc 1 2265 0 is_stmt 1
	movl	$1, -4(%rbp)	#, update_end
.L441:
	.loc 1 2266 0
	movq	-24(%rbp), %rax	# insn, tmp101
	movq	24(%rax), %rax	# insn_10(D)->fld[2].rtx, tmp102
	movq	%rax, -24(%rbp)	# tmp102, insn
.L440:
	.loc 1 2271 0
	movq	-32(%rbp), %rax	# old, tmp103
	movl	(%rax), %eax	# old_16(D)->top, tmp104
	movl	%eax, -8(%rbp)	# tmp104, reg
	jmp	.L442	#
.L444:
	.loc 1 2272 0
	movq	-40(%rbp), %rax	# new, tmp105
	movq	8(%rax), %rsi	# new_18(D)->reg_set, D.16076
	movq	-32(%rbp), %rdx	# old, tmp106
	movl	-8(%rbp), %eax	# reg, tmp108
	cltq
	movzbl	16(%rdx,%rax), %eax	# old_16(D)->reg, D.16077
	movzbl	%al, %eax	# D.16077, D.16078
	movl	%eax, %ecx	# D.16078, tmp175
	shrq	%cl, %rsi	# tmp175, D.16076
	movq	%rsi, %rax	# D.16076, D.16076
	andl	$1, %eax	#, D.16076
	testq	%rax, %rax	# D.16076
	jne	.L443	#,
	.loc 1 2273 0
	movq	-32(%rbp), %rdx	# old, tmp109
	movl	-8(%rbp), %eax	# reg, tmp111
	cltq
	movzbl	16(%rdx,%rax), %eax	# old_16(D)->reg, D.16077
	movzbl	%al, %eax	# D.16077, D.16078
	subl	$8, %eax	#, D.16078
	cltq
	imulq	$472, %rax, %rax	#, tmp112, tmp113
	addq	$FP_mode_reg+128, %rax	#, tmp114
	movq	(%rax), %rdx	# FP_mode_reg, D.16075
	movq	-32(%rbp), %rsi	# old, tmp115
	movq	-24(%rbp), %rax	# insn, tmp116
	movl	$1, %ecx	#,
	movq	%rax, %rdi	# tmp116,
	call	emit_pop_insn	#
.L443:
	.loc 1 2271 0
	subl	$1, -8(%rbp)	#, reg
.L442:
	.loc 1 2271 0 is_stmt 0 discriminator 1
	cmpl	$0, -8(%rbp)	#, reg
	jns	.L444	#,
	.loc 1 2276 0 is_stmt 1
	movq	-40(%rbp), %rax	# new, tmp117
	movl	(%rax), %eax	# new_18(D)->top, D.16078
	cmpl	$-2, %eax	#, D.16078
	jne	.L445	#,
	.loc 1 2281 0
	movq	-32(%rbp), %rax	# old, tmp118
	movl	(%rax), %edx	# old_16(D)->top, D.16078
	movq	-40(%rbp), %rax	# new, tmp119
	movl	%edx, (%rax)	# D.16078, new_18(D)->top
	.loc 1 2282 0
	movq	-32(%rbp), %rax	# old, tmp120
	leaq	16(%rax), %rcx	#, D.16079
	movq	-40(%rbp), %rax	# new, tmp121
	addq	$16, %rax	#, D.16079
	movl	$8, %edx	#,
	movq	%rcx, %rsi	# D.16079,
	movq	%rax, %rdi	# D.16079,
	call	memcpy	#
	jmp	.L446	#
.L445:
	.loc 1 2292 0
	movq	-32(%rbp), %rax	# old, tmp122
	movq	8(%rax), %rdx	# old_16(D)->reg_set, D.16076
	movq	-40(%rbp), %rax	# new, tmp123
	movq	8(%rax), %rax	# new_18(D)->reg_set, D.16076
	cmpq	%rax, %rdx	# D.16076, D.16076
	jne	.L447	#,
	.loc 1 2292 0 is_stmt 0 discriminator 1
	nop
.L448:
	.loc 1 2295 0 is_stmt 1 discriminator 1
	movq	-32(%rbp), %rax	# old, tmp124
	movl	(%rax), %edx	# old_16(D)->top, D.16078
	movq	-40(%rbp), %rax	# new, tmp125
	movl	(%rax), %eax	# new_18(D)->top, D.16078
	cmpl	%eax, %edx	# D.16078, D.16078
	je	.L449	#,
	jmp	.L467	#
.L447:
	.loc 1 2293 0
	movl	$__FUNCTION__.13267, %edx	#,
	movl	$2293, %esi	#,
	movl	$.LC1, %edi	#,
	call	fancy_abort	#
.L467:
	.loc 1 2296 0
	movl	$__FUNCTION__.13267, %edx	#,
	movl	$2296, %esi	#,
	movl	$.LC1, %edi	#,
	call	fancy_abort	#
.L449:
	.loc 1 2307 0
	movq	-40(%rbp), %rax	# new, tmp126
	movl	(%rax), %eax	# new_18(D)->top, D.16078
	cmpl	$-1, %eax	#, D.16078
	je	.L450	#,
.L462:
	.loc 1 2313 0
	jmp	.L451	#
.L457:
	.loc 1 2315 0
	movq	-40(%rbp), %rax	# new, tmp127
	movl	(%rax), %eax	# new_18(D)->top, tmp128
	movl	%eax, -8(%rbp)	# tmp128, reg
	jmp	.L452	#
.L455:
	.loc 1 2316 0
	movq	-40(%rbp), %rdx	# new, tmp129
	movl	-8(%rbp), %eax	# reg, tmp131
	cltq
	movzbl	16(%rdx,%rax), %ecx	# new_18(D)->reg, D.16077
	movq	-32(%rbp), %rax	# old, tmp132
	movl	(%rax), %eax	# old_16(D)->top, D.16078
	movq	-32(%rbp), %rdx	# old, tmp133
	cltq
	movzbl	16(%rdx,%rax), %eax	# old_16(D)->reg, D.16077
	cmpb	%al, %cl	# D.16077, D.16077
	jne	.L453	#,
	.loc 1 2317 0
	jmp	.L454	#
.L453:
	.loc 1 2315 0
	subl	$1, -8(%rbp)	#, reg
.L452:
	.loc 1 2315 0 is_stmt 0 discriminator 1
	cmpl	$0, -8(%rbp)	#, reg
	jns	.L455	#,
.L454:
	.loc 1 2319 0 is_stmt 1
	cmpl	$-1, -8(%rbp)	#, reg
	jne	.L456	#,
	.loc 1 2320 0
	movl	$__FUNCTION__.13267, %edx	#,
	movl	$2320, %esi	#,
	movl	$.LC1, %edi	#,
	call	fancy_abort	#
.L456:
	.loc 1 2323 0
	movq	-32(%rbp), %rdx	# old, tmp135
	movl	-8(%rbp), %eax	# reg, tmp137
	cltq
	movzbl	16(%rdx,%rax), %eax	# old_16(D)->reg, D.16077
	movzbl	%al, %eax	# D.16077, D.16078
	subl	$8, %eax	#, D.16078
	.loc 1 2322 0
	cltq
	imulq	$472, %rax, %rax	#, tmp138, tmp139
	addq	$FP_mode_reg+128, %rax	#, tmp140
	movq	(%rax), %rdx	# FP_mode_reg, D.16075
	movq	-32(%rbp), %rcx	# old, tmp141
	movq	-24(%rbp), %rax	# insn, tmp142
	movq	%rcx, %rsi	# tmp141,
	movq	%rax, %rdi	# tmp142,
	call	emit_swap_insn	#
.L451:
	.loc 1 2313 0 discriminator 1
	movq	-32(%rbp), %rax	# old, tmp143
	movl	(%rax), %eax	# old_16(D)->top, D.16078
	movq	-32(%rbp), %rdx	# old, tmp144
	cltq
	movzbl	16(%rdx,%rax), %ecx	# old_16(D)->reg, D.16077
	movq	-40(%rbp), %rax	# new, tmp146
	movl	(%rax), %eax	# new_18(D)->top, D.16078
	movq	-40(%rbp), %rdx	# new, tmp147
	cltq
	movzbl	16(%rdx,%rax), %eax	# new_18(D)->reg, D.16077
	cmpb	%al, %cl	# D.16077, D.16077
	jne	.L457	#,
	.loc 1 2330 0
	movq	-40(%rbp), %rax	# new, tmp149
	movl	(%rax), %eax	# new_18(D)->top, tmp150
	movl	%eax, -8(%rbp)	# tmp150, reg
	jmp	.L458	#
.L461:
	.loc 1 2331 0
	movq	-40(%rbp), %rdx	# new, tmp151
	movl	-8(%rbp), %eax	# reg, tmp153
	cltq
	movzbl	16(%rdx,%rax), %ecx	# new_18(D)->reg, D.16077
	movq	-32(%rbp), %rdx	# old, tmp154
	movl	-8(%rbp), %eax	# reg, tmp156
	cltq
	movzbl	16(%rdx,%rax), %eax	# old_16(D)->reg, D.16077
	cmpb	%al, %cl	# D.16077, D.16077
	je	.L459	#,
	.loc 1 2334 0
	movq	-32(%rbp), %rdx	# old, tmp157
	movl	-8(%rbp), %eax	# reg, tmp159
	cltq
	movzbl	16(%rdx,%rax), %eax	# old_16(D)->reg, D.16077
	movzbl	%al, %eax	# D.16077, D.16078
	subl	$8, %eax	#, D.16078
	.loc 1 2333 0
	cltq
	imulq	$472, %rax, %rax	#, tmp160, tmp161
	addq	$FP_mode_reg+128, %rax	#, tmp162
	movq	(%rax), %rdx	# FP_mode_reg, D.16075
	movq	-32(%rbp), %rcx	# old, tmp163
	movq	-24(%rbp), %rax	# insn, tmp164
	movq	%rcx, %rsi	# tmp163,
	movq	%rax, %rdi	# tmp164,
	call	emit_swap_insn	#
	.loc 1 2335 0
	jmp	.L460	#
.L459:
	.loc 1 2330 0
	subl	$1, -8(%rbp)	#, reg
.L458:
	.loc 1 2330 0 is_stmt 0 discriminator 1
	cmpl	$0, -8(%rbp)	#, reg
	jns	.L461	#,
.L460:
	.loc 1 2337 0 is_stmt 1
	cmpl	$0, -8(%rbp)	#, reg
	jns	.L462	#,
.L450:
	.loc 1 2341 0
	movq	-32(%rbp), %rax	# old, tmp165
	movl	(%rax), %eax	# old_16(D)->top, tmp166
	movl	%eax, -8(%rbp)	# tmp166, reg
	jmp	.L463	#
.L465:
	.loc 1 2342 0
	movq	-32(%rbp), %rdx	# old, tmp167
	movl	-8(%rbp), %eax	# reg, tmp169
	cltq
	movzbl	16(%rdx,%rax), %ecx	# old_16(D)->reg, D.16077
	movq	-40(%rbp), %rdx	# new, tmp170
	movl	-8(%rbp), %eax	# reg, tmp172
	cltq
	movzbl	16(%rdx,%rax), %eax	# new_18(D)->reg, D.16077
	cmpb	%al, %cl	# D.16077, D.16077
	je	.L464	#,
	.loc 1 2343 0
	movl	$__FUNCTION__.13267, %edx	#,
	movl	$2343, %esi	#,
	movl	$.LC1, %edi	#,
	call	fancy_abort	#
.L464:
	.loc 1 2341 0
	subl	$1, -8(%rbp)	#, reg
.L463:
	.loc 1 2341 0 is_stmt 0 discriminator 1
	cmpl	$0, -8(%rbp)	#, reg
	jns	.L465	#,
.L446:
	.loc 1 2346 0 is_stmt 1
	cmpl	$0, -4(%rbp)	#, update_end
	je	.L439	#,
	.loc 1 2347 0
	movq	current_block(%rip), %rax	# current_block, current_block.66
	movq	-24(%rbp), %rdx	# insn, tmp173
	movq	16(%rdx), %rdx	# insn_1->fld[1].rtx, D.16075
	movq	%rdx, 8(%rax)	# D.16075, current_block.66_63->end
.L439:
	.loc 1 2348 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE25:
	.size	change_stack, .-change_stack
	.section	.rodata
.LC7:
	.string	"uninitialized\n"
.LC8:
	.string	"empty\n"
.LC9:
	.string	"[ "
.LC10:
	.string	"%d "
.LC11:
	.string	"]\n"
	.text
	.type	print_stack, @function
print_stack:
.LFB26:
	.loc 1 2356 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# file, file
	movq	%rsi, -32(%rbp)	# s, s
	.loc 1 2357 0
	cmpq	$0, -24(%rbp)	#, file
	jne	.L469	#,
	.loc 1 2358 0
	jmp	.L468	#
.L469:
	.loc 1 2360 0
	movq	-32(%rbp), %rax	# s, tmp64
	movl	(%rax), %eax	# s_3(D)->top, D.16080
	cmpl	$-2, %eax	#, D.16080
	jne	.L471	#,
	.loc 1 2361 0
	movq	-24(%rbp), %rax	# file, tmp65
	movq	%rax, %rcx	# tmp65,
	movl	$14, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC7, %edi	#,
	call	fwrite	#
	jmp	.L468	#
.L471:
	.loc 1 2362 0
	movq	-32(%rbp), %rax	# s, tmp66
	movl	(%rax), %eax	# s_3(D)->top, D.16080
	cmpl	$-1, %eax	#, D.16080
	jne	.L472	#,
	.loc 1 2363 0
	movq	-24(%rbp), %rax	# file, tmp67
	movq	%rax, %rcx	# tmp67,
	movl	$6, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC8, %edi	#,
	call	fwrite	#
	jmp	.L468	#
.L472:
.LBB49:
	.loc 1 2367 0
	movq	-24(%rbp), %rax	# file, tmp68
	movq	%rax, %rcx	# tmp68,
	movl	$2, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC9, %edi	#,
	call	fwrite	#
	.loc 1 2368 0
	movl	$0, -4(%rbp)	#, i
	jmp	.L473	#
.L474:
	.loc 1 2369 0 discriminator 2
	movq	-32(%rbp), %rdx	# s, tmp69
	movl	-4(%rbp), %eax	# i, tmp71
	cltq
	movzbl	16(%rdx,%rax), %eax	# s_3(D)->reg, D.16081
	movzbl	%al, %edx	# D.16081, D.16080
	movq	-24(%rbp), %rax	# file, tmp72
	movl	$.LC10, %esi	#,
	movq	%rax, %rdi	# tmp72,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 2368 0 discriminator 2
	addl	$1, -4(%rbp)	#, i
.L473:
	.loc 1 2368 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# s, tmp73
	movl	(%rax), %eax	# s_3(D)->top, D.16080
	cmpl	-4(%rbp), %eax	# i, D.16080
	jge	.L474	#,
	.loc 1 2370 0 is_stmt 1
	movq	-24(%rbp), %rax	# file, tmp74
	movq	%rax, %rcx	# tmp74,
	movl	$2, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC11, %edi	#,
	call	fwrite	#
.L468:
.LBE49:
	.loc 1 2372 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE26:
	.size	print_stack, .-print_stack
	.type	convert_regs_entry, @function
convert_regs_entry:
.LFB27:
	.loc 1 2384 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	.loc 1 2385 0
	movl	$0, -68(%rbp)	#, inserted
	.loc 1 2388 0
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.67
	subl	$1, %eax	#, tmp79
	movl	%eax, -64(%rbp)	# tmp79, i
	jmp	.L476	#
.L481:
.LBB50:
	.loc 1 2390 0
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.68
	movl	-64(%rbp), %edx	# i, tmp81
	movslq	%edx, %rdx	# tmp81, tmp80
	addq	$4, %rdx	#, tmp82
	movq	(%rax,%rdx,8), %rax	# basic_block_info.68_13->data.bb, tmp83
	movq	%rax, -40(%rbp)	# tmp83, block
	.loc 1 2391 0
	movq	-40(%rbp), %rax	# block, tmp84
	movq	80(%rax), %rax	# block_14->aux, tmp85
	movq	%rax, -32(%rbp)	# tmp85, bi
	.loc 1 2395 0
	movq	-32(%rbp), %rax	# bi, tmp86
	movl	$-2, (%rax)	#, bi_15->stack_in.top
	.loc 1 2398 0
	movl	$8, -60(%rbp)	#, reg
	jmp	.L477	#
.L480:
	.loc 1 2400 0
	movq	-40(%rbp), %rax	# block, tmp87
	movq	72(%rax), %rax	# block_14->global_live_at_end, D.16087
	movl	-60(%rbp), %edx	# reg, tmp88
	movl	%edx, %esi	# tmp88,
	movq	%rax, %rdi	# D.16087,
	call	bitmap_bit_p	#
	testl	%eax, %eax	# D.16088
	je	.L478	#,
	.loc 1 2401 0
	movq	-32(%rbp), %rax	# bi, tmp89
	movq	48(%rax), %rdx	# bi_15->out_reg_set, D.16089
	movl	-60(%rbp), %eax	# reg, tmp90
	movl	$1, %esi	#, tmp91
	movl	%eax, %ecx	# tmp90, tmp119
	salq	%cl, %rsi	# tmp119, D.16089
	movq	%rsi, %rax	# D.16089, D.16089
	orq	%rax, %rdx	# D.16089, D.16089
	movq	-32(%rbp), %rax	# bi, tmp92
	movq	%rdx, 48(%rax)	# D.16089, bi_15->out_reg_set
.L478:
	.loc 1 2402 0
	movq	-40(%rbp), %rax	# block, tmp93
	movq	64(%rax), %rax	# block_14->global_live_at_start, D.16087
	movl	-60(%rbp), %edx	# reg, tmp94
	movl	%edx, %esi	# tmp94,
	movq	%rax, %rdi	# D.16087,
	call	bitmap_bit_p	#
	testl	%eax, %eax	# D.16088
	je	.L479	#,
	.loc 1 2403 0
	movq	-32(%rbp), %rax	# bi, tmp95
	movq	8(%rax), %rdx	# bi_15->stack_in.reg_set, D.16089
	movl	-60(%rbp), %eax	# reg, tmp96
	movl	$1, %esi	#, tmp97
	movl	%eax, %ecx	# tmp96, tmp121
	salq	%cl, %rsi	# tmp121, D.16089
	movq	%rsi, %rax	# D.16089, D.16089
	orq	%rax, %rdx	# D.16089, D.16089
	movq	-32(%rbp), %rax	# bi, tmp98
	movq	%rdx, 8(%rax)	# D.16089, bi_15->stack_in.reg_set
.L479:
	.loc 1 2398 0
	addl	$1, -60(%rbp)	#, reg
.L477:
	.loc 1 2398 0 is_stmt 0 discriminator 1
	cmpl	$15, -60(%rbp)	#, reg
	jle	.L480	#,
.LBE50:
	.loc 1 2388 0 is_stmt 1
	subl	$1, -64(%rbp)	#, i
.L476:
	.loc 1 2388 0 is_stmt 0 discriminator 1
	cmpl	$0, -64(%rbp)	#, i
	jns	.L481	#,
	.loc 1 2416 0 is_stmt 1
	movq	entry_exit_blocks+40(%rip), %rax	# entry_exit_blocks[0].succ, tmp99
	movq	%rax, -48(%rbp)	# tmp99, e
	jmp	.L482	#
.L486:
.LBB51:
	.loc 1 2418 0
	movq	-48(%rbp), %rax	# e, tmp100
	movq	24(%rax), %rax	# e_5->dest, tmp101
	movq	%rax, -24(%rbp)	# tmp101, block
	.loc 1 2419 0
	movq	-24(%rbp), %rax	# block, tmp102
	movq	80(%rax), %rax	# block_30->aux, tmp103
	movq	%rax, -16(%rbp)	# tmp103, bi
	.loc 1 2420 0
	movl	$-1, -52(%rbp)	#, top
	.loc 1 2422 0
	movl	$15, -56(%rbp)	#, reg
	jmp	.L483	#
.L485:
	.loc 1 2423 0
	movq	-16(%rbp), %rax	# bi, tmp104
	movq	8(%rax), %rdx	# bi_31->stack_in.reg_set, D.16089
	movl	-56(%rbp), %eax	# reg, tmp105
	movl	%eax, %ecx	# tmp105, tmp123
	shrq	%cl, %rdx	# tmp123, D.16089
	movq	%rdx, %rax	# D.16089, D.16089
	andl	$1, %eax	#, D.16089
	testq	%rax, %rax	# D.16089
	je	.L484	#,
.LBB52:
	.loc 1 2427 0
	addl	$1, -52(%rbp)	#, top
	movl	-56(%rbp), %eax	# reg, tmp106
	movl	%eax, %ecx	# tmp106, D.16090
	movq	-16(%rbp), %rdx	# bi, tmp107
	movl	-52(%rbp), %eax	# top, tmp109
	cltq
	movb	%cl, 16(%rdx,%rax)	# D.16090, bi_31->stack_in.reg
	.loc 1 2429 0
	movq	nan(%rip), %rdx	# nan, nan.69
	movq	FP_mode_reg+120(%rip), %rax	# FP_mode_reg, D.16091
	movq	%rdx, %rcx	# nan.69,
	movq	%rax, %rdx	# D.16091,
	movl	$0, %esi	#,
	movl	$47, %edi	#,
	call	gen_rtx_fmt_ee	#
	movq	%rax, -8(%rbp)	# tmp110, init
	.loc 1 2432 0
	movq	-48(%rbp), %rdx	# e, tmp111
	movq	-8(%rbp), %rax	# init, tmp112
	movq	%rdx, %rsi	# tmp111,
	movq	%rax, %rdi	# tmp112,
	call	insert_insn_on_edge	#
	.loc 1 2433 0
	movl	$1, -68(%rbp)	#, inserted
.L484:
.LBE52:
	.loc 1 2422 0
	subl	$1, -56(%rbp)	#, reg
.L483:
	.loc 1 2422 0 is_stmt 0 discriminator 1
	cmpl	$7, -56(%rbp)	#, reg
	jg	.L485	#,
	.loc 1 2436 0 is_stmt 1
	movq	-16(%rbp), %rax	# bi, tmp113
	movl	-52(%rbp), %edx	# top, tmp114
	movl	%edx, (%rax)	# tmp114, bi_31->stack_in.top
.LBE51:
	.loc 1 2416 0
	movq	-48(%rbp), %rax	# e, tmp115
	movq	8(%rax), %rax	# e_5->succ_next, tmp116
	movq	%rax, -48(%rbp)	# tmp116, e
.L482:
	.loc 1 2416 0 is_stmt 0 discriminator 1
	cmpq	$0, -48(%rbp)	#, e
	jne	.L486	#,
	.loc 1 2439 0 is_stmt 1
	movl	-68(%rbp), %eax	# inserted, D.16088
	.loc 1 2440 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE27:
	.size	convert_regs_entry, .-convert_regs_entry
	.type	convert_regs_exit, @function
convert_regs_exit:
.LFB28:
	.loc 1 2447 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$40, %rsp	#,
	.cfi_offset 3, -24
	.loc 1 2452 0
	movq	current_function_decl(%rip), %rax	# current_function_decl, current_function_decl.70
	movq	%rax, %rdi	# current_function_decl.70,
	call	stack_result	#
	movq	%rax, -32(%rbp)	# tmp99, retvalue
	.loc 1 2453 0
	movl	$-1, -40(%rbp)	#, value_reg_high
	movl	-40(%rbp), %eax	# value_reg_high, tmp100
	movl	%eax, -44(%rbp)	# tmp100, value_reg_low
	.loc 1 2454 0
	cmpq	$0, -32(%rbp)	#, retvalue
	je	.L489	#,
	.loc 1 2456 0
	movq	-32(%rbp), %rax	# retvalue, tmp101
	movl	8(%rax), %eax	# retvalue_13->fld[0].rtuint, D.16092
	movl	%eax, -44(%rbp)	# D.16092, value_reg_low
	.loc 1 2458 0
	cmpl	$7, -44(%rbp)	#, value_reg_low
	jle	.L490	#,
	.loc 1 2458 0 is_stmt 0 discriminator 1
	cmpl	$15, -44(%rbp)	#, value_reg_low
	jle	.L491	#,
.L490:
	.loc 1 2458 0 discriminator 2
	cmpl	$20, -44(%rbp)	#, value_reg_low
	jle	.L492	#,
	.loc 1 2458 0 discriminator 1
	cmpl	$28, -44(%rbp)	#, value_reg_low
	jle	.L491	#,
.L492:
	.loc 1 2458 0 discriminator 2
	cmpl	$44, -44(%rbp)	#, value_reg_low
	jle	.L493	#,
	.loc 1 2458 0 discriminator 1
	cmpl	$52, -44(%rbp)	#, value_reg_low
	jle	.L491	#,
.L493:
	.loc 1 2458 0 discriminator 2
	cmpl	$28, -44(%rbp)	#, value_reg_low
	jle	.L494	#,
	.loc 1 2458 0 discriminator 1
	cmpl	$36, -44(%rbp)	#, value_reg_low
	jg	.L494	#,
.L491:
	movq	-32(%rbp), %rax	# retvalue, tmp102
	movzbl	2(%rax), %eax	# retvalue_13->mode, D.16093
	movzbl	%al, %eax	# D.16093, D.16094
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.16095
	cmpl	$5, %eax	#, D.16095
	je	.L495	#,
	.loc 1 2458 0 discriminator 2
	movq	-32(%rbp), %rax	# retvalue, tmp104
	movzbl	2(%rax), %eax	# retvalue_13->mode, D.16093
	movzbl	%al, %eax	# D.16093, D.16094
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.16095
	cmpl	$6, %eax	#, D.16095
	jne	.L496	#,
.L495:
	.loc 1 2458 0 discriminator 1
	movl	$2, %eax	#, iftmp.72
	jmp	.L497	#
.L496:
	movl	$1, %eax	#, iftmp.72
.L497:
	.loc 1 2458 0 discriminator 3
	jmp	.L498	#
.L494:
	.loc 1 2458 0 discriminator 2
	movq	-32(%rbp), %rax	# retvalue, tmp106
	movzbl	2(%rax), %eax	# retvalue_13->mode, D.16093
	cmpb	$18, %al	#, D.16093
	jne	.L499	#,
	.loc 1 2458 0 discriminator 1
	movl	target_flags(%rip), %eax	# target_flags, target_flags.75
	andl	$33554432, %eax	#, D.16094
	testl	%eax, %eax	# D.16094
	je	.L500	#,
	movl	$2, %eax	#, iftmp.74
	jmp	.L498	#
.L500:
	.loc 1 2458 0 discriminator 2
	movl	$3, %eax	#, iftmp.74
	jmp	.L498	#
.L499:
	movq	-32(%rbp), %rax	# retvalue, tmp107
	movzbl	2(%rax), %eax	# retvalue_13->mode, D.16093
	cmpb	$24, %al	#, D.16093
	jne	.L503	#,
	.loc 1 2458 0 discriminator 1
	movl	target_flags(%rip), %eax	# target_flags, target_flags.78
	andl	$33554432, %eax	#, D.16094
	testl	%eax, %eax	# D.16094
	je	.L504	#,
	movl	$4, %eax	#, iftmp.77
	jmp	.L498	#
.L504:
	.loc 1 2458 0 discriminator 2
	movl	$6, %eax	#, iftmp.77
	jmp	.L498	#
.L503:
	movq	-32(%rbp), %rax	# retvalue, tmp108
	movzbl	2(%rax), %eax	# retvalue_13->mode, D.16093
	movzbl	%al, %eax	# D.16093, D.16094
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.16093
	movzbl	%al, %edx	# D.16093, D.16094
	movl	target_flags(%rip), %eax	# target_flags, target_flags.80
	andl	$33554432, %eax	#, D.16094
	testl	%eax, %eax	# D.16094
	je	.L507	#,
	.loc 1 2458 0 discriminator 1
	movl	$8, %eax	#, iftmp.79
	jmp	.L508	#
.L507:
	.loc 1 2458 0 discriminator 2
	movl	$4, %eax	#, iftmp.79
.L508:
	.loc 1 2458 0 discriminator 3
	addl	%edx, %eax	# D.16094, D.16094
	subl	$1, %eax	#, D.16094
	movl	target_flags(%rip), %edx	# target_flags, target_flags.82
	andl	$33554432, %edx	#, D.16094
	testl	%edx, %edx	# D.16094
	je	.L509	#,
	.loc 1 2458 0 discriminator 1
	movl	$8, %ebx	#, iftmp.81
	jmp	.L510	#
.L509:
	.loc 1 2458 0 discriminator 2
	movl	$4, %ebx	#, iftmp.81
.L510:
	.loc 1 2458 0 discriminator 3
	cltd
	idivl	%ebx	# iftmp.81
.L498:
	movl	-44(%rbp), %edx	# value_reg_low, tmp112
	addl	%edx, %eax	# tmp112, D.16094
	.loc 1 2457 0 is_stmt 1 discriminator 3
	subl	$1, %eax	#, tmp113
	movl	%eax, -40(%rbp)	# tmp113, value_reg_high
.L489:
	.loc 1 2461 0
	movq	entry_exit_blocks+192(%rip), %rax	# entry_exit_blocks[1].aux, D.16096
	movq	%rax, -24(%rbp)	# D.16096, output_stack
	.loc 1 2462 0
	cmpl	$-1, -44(%rbp)	#, value_reg_low
	jne	.L511	#,
	.loc 1 2463 0
	movq	-24(%rbp), %rax	# output_stack, tmp114
	movl	$-1, (%rax)	#, output_stack_59->top
	jmp	.L488	#
.L511:
.LBB53:
	.loc 1 2468 0
	movl	-44(%rbp), %eax	# value_reg_low, tmp115
	movl	-40(%rbp), %edx	# value_reg_high, tmp116
	subl	%eax, %edx	# tmp115, D.16094
	movq	-24(%rbp), %rax	# output_stack, tmp117
	movl	%edx, (%rax)	# D.16094, output_stack_59->top
	.loc 1 2469 0
	movl	-44(%rbp), %eax	# value_reg_low, tmp118
	movl	%eax, -36(%rbp)	# tmp118, reg
	jmp	.L513	#
.L514:
	.loc 1 2471 0 discriminator 2
	movl	-36(%rbp), %eax	# reg, tmp119
	movl	-40(%rbp), %edx	# value_reg_high, tmp120
	movl	%edx, %esi	# tmp120, D.16094
	subl	%eax, %esi	# tmp119, D.16094
	movl	-36(%rbp), %eax	# reg, tmp121
	movl	%eax, %ecx	# tmp121, D.16093
	movq	-24(%rbp), %rdx	# output_stack, tmp122
	movslq	%esi, %rax	# D.16094, tmp123
	movb	%cl, 16(%rdx,%rax)	# D.16093, output_stack_59->reg
	.loc 1 2472 0 discriminator 2
	movq	-24(%rbp), %rax	# output_stack, tmp124
	movq	8(%rax), %rdx	# output_stack_59->reg_set, D.16097
	movl	-36(%rbp), %eax	# reg, tmp125
	movl	$1, %esi	#, tmp126
	movl	%eax, %ecx	# tmp125, tmp132
	salq	%cl, %rsi	# tmp132, D.16097
	movq	%rsi, %rax	# D.16097, D.16097
	orq	%rax, %rdx	# D.16097, D.16097
	movq	-24(%rbp), %rax	# output_stack, tmp127
	movq	%rdx, 8(%rax)	# D.16097, output_stack_59->reg_set
	.loc 1 2469 0 discriminator 2
	addl	$1, -36(%rbp)	#, reg
.L513:
	.loc 1 2469 0 is_stmt 0 discriminator 1
	movl	-36(%rbp), %eax	# reg, tmp128
	cmpl	-40(%rbp), %eax	# value_reg_high, tmp128
	jle	.L514	#,
.L488:
.LBE53:
	.loc 1 2475 0 is_stmt 1
	addq	$40, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE28:
	.size	convert_regs_exit, .-convert_regs_exit
	.section	.rodata
.LC12:
	.string	"Edge %d->%d: "
	.align 8
.LC13:
	.string	"new block; copying stack position\n"
.LC14:
	.string	"new block; pops needed\n"
.LC15:
	.string	"no changes needed\n"
.LC16:
	.string	"correcting stack to "
	.text
	.type	compensate_edge, @function
compensate_edge:
.LFB29:
	.loc 1 2484 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$152, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -152(%rbp)	# e, e
	movq	%rsi, -160(%rbp)	# file, file
	.loc 1 2484 0
	movq	%fs:40, %rax	#, tmp158
	movq	%rax, -24(%rbp)	# tmp158, D.16107
	xorl	%eax, %eax	# tmp158
	.loc 1 2485 0
	movq	-152(%rbp), %rax	# e, tmp92
	movq	16(%rax), %rax	# e_4(D)->src, tmp93
	movq	%rax, -136(%rbp)	# tmp93, block
	movq	-152(%rbp), %rax	# e, tmp94
	movq	24(%rax), %rax	# e_4(D)->dest, tmp95
	movq	%rax, -128(%rbp)	# tmp95, target
	.loc 1 2486 0
	movq	-136(%rbp), %rax	# block, tmp96
	movq	80(%rax), %rax	# block_5->aux, tmp97
	movq	%rax, -120(%rbp)	# tmp97, bi
	.loc 1 2488 0
	movq	-128(%rbp), %rax	# target, tmp98
	movq	80(%rax), %rax	# target_6->aux, D.16099
	movq	%rax, -112(%rbp)	# D.16099, target_stack
	.loc 1 2491 0
	movq	-136(%rbp), %rax	# block, tmp99
	movq	%rax, current_block(%rip)	# tmp99, current_block
	.loc 1 2492 0
	movq	-120(%rbp), %rax	# bi, tmp100
	movq	24(%rax), %rdx	# bi_7->stack_out, tmp101
	movq	%rdx, -80(%rbp)	# tmp101, regstack
	movq	32(%rax), %rdx	# bi_7->stack_out, tmp102
	movq	%rdx, -72(%rbp)	# tmp102, regstack
	movq	40(%rax), %rax	# bi_7->stack_out, tmp103
	movq	%rax, -64(%rbp)	# tmp103, regstack
	.loc 1 2493 0
	cmpq	$0, -160(%rbp)	#, file
	je	.L516	#,
	.loc 1 2494 0
	movq	-128(%rbp), %rax	# target, tmp104
	movl	88(%rax), %ecx	# target_6->index, D.16100
	movq	-136(%rbp), %rax	# block, tmp105
	movl	88(%rax), %edx	# block_5->index, D.16100
	movq	-160(%rbp), %rax	# file, tmp106
	movl	$.LC12, %esi	#,
	movq	%rax, %rdi	# tmp106,
	movl	$0, %eax	#,
	call	fprintf	#
.L516:
	.loc 1 2496 0
	movq	-112(%rbp), %rax	# target_stack, tmp107
	movl	(%rax), %eax	# target_stack_9->top, D.16100
	cmpl	$-2, %eax	#, D.16100
	jne	.L517	#,
	.loc 1 2500 0
	movl	-80(%rbp), %eax	# regstack.top, tmp108
	movl	%eax, -140(%rbp)	# tmp108, reg
	jmp	.L518	#
.L521:
	.loc 1 2501 0
	movq	-112(%rbp), %rax	# target_stack, tmp109
	movq	8(%rax), %rdx	# target_stack_9->reg_set, D.16101
	movl	-140(%rbp), %eax	# reg, tmp111
	cltq
	movzbl	-64(%rbp,%rax), %eax	# regstack.reg, D.16102
	movzbl	%al, %eax	# D.16102, D.16100
	movl	%eax, %ecx	# D.16100, tmp161
	shrq	%cl, %rdx	# tmp161, D.16101
	movq	%rdx, %rax	# D.16101, D.16101
	andl	$1, %eax	#, D.16101
	testq	%rax, %rax	# D.16101
	jne	.L519	#,
	.loc 1 2502 0
	jmp	.L520	#
.L519:
	.loc 1 2500 0
	subl	$1, -140(%rbp)	#, reg
.L518:
	.loc 1 2500 0 is_stmt 0 discriminator 1
	cmpl	$0, -140(%rbp)	#, reg
	jns	.L521	#,
.L520:
	.loc 1 2504 0 is_stmt 1
	cmpl	$-1, -140(%rbp)	#, reg
	jne	.L522	#,
	.loc 1 2506 0
	cmpq	$0, -160(%rbp)	#, file
	je	.L523	#,
	.loc 1 2507 0
	movq	-160(%rbp), %rax	# file, tmp112
	movq	%rax, %rcx	# tmp112,
	movl	$34, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC13, %edi	#,
	call	fwrite	#
.L523:
	.loc 1 2510 0
	movq	-80(%rbp), %rax	# regstack, tmp113
	movq	%rax, -48(%rbp)	# tmp113, tmpstack
	movq	-72(%rbp), %rax	# regstack, tmp114
	movq	%rax, -40(%rbp)	# tmp114, tmpstack
	movq	-64(%rbp), %rax	# regstack, tmp115
	movq	%rax, -32(%rbp)	# tmp115, tmpstack
	.loc 1 2512 0
	movq	-136(%rbp), %rax	# block, tmp116
	movq	8(%rax), %rax	# block_5->end, D.16103
	movq	-112(%rbp), %rdx	# target_stack, tmp117
	leaq	-48(%rbp), %rsi	#, tmp118
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# D.16103,
	call	change_stack	#
	.loc 1 2513 0
	movl	$0, %eax	#, D.16098
	jmp	.L542	#
.L522:
	.loc 1 2516 0
	cmpq	$0, -160(%rbp)	#, file
	je	.L526	#,
	.loc 1 2517 0
	movq	-160(%rbp), %rax	# file, tmp119
	movq	%rax, %rcx	# tmp119,
	movl	$23, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC14, %edi	#,
	call	fwrite	#
	jmp	.L526	#
.L517:
	.loc 1 2521 0
	movq	-112(%rbp), %rax	# target_stack, tmp120
	movl	(%rax), %edx	# target_stack_9->top, D.16100
	movl	-80(%rbp), %eax	# regstack.top, D.16100
	cmpl	%eax, %edx	# D.16100, D.16100
	jne	.L527	#,
	.loc 1 2523 0
	movq	-112(%rbp), %rax	# target_stack, tmp121
	movl	(%rax), %eax	# target_stack_9->top, tmp122
	movl	%eax, -140(%rbp)	# tmp122, reg
	jmp	.L528	#
.L531:
	.loc 1 2524 0
	movq	-112(%rbp), %rdx	# target_stack, tmp123
	movl	-140(%rbp), %eax	# reg, tmp125
	cltq
	movzbl	16(%rdx,%rax), %edx	# target_stack_9->reg, D.16102
	movl	-140(%rbp), %eax	# reg, tmp127
	cltq
	movzbl	-64(%rbp,%rax), %eax	# regstack.reg, D.16102
	cmpb	%al, %dl	# D.16102, D.16102
	je	.L529	#,
	.loc 1 2525 0
	jmp	.L530	#
.L529:
	.loc 1 2523 0
	subl	$1, -140(%rbp)	#, reg
.L528:
	.loc 1 2523 0 is_stmt 0 discriminator 1
	cmpl	$0, -140(%rbp)	#, reg
	jns	.L531	#,
.L530:
	.loc 1 2527 0 is_stmt 1
	cmpl	$-1, -140(%rbp)	#, reg
	jne	.L527	#,
	.loc 1 2529 0
	cmpq	$0, -160(%rbp)	#, file
	je	.L532	#,
	.loc 1 2530 0
	movq	-160(%rbp), %rax	# file, tmp128
	movq	%rax, %rcx	# tmp128,
	movl	$18, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC15, %edi	#,
	call	fwrite	#
.L532:
	.loc 1 2531 0
	movl	$0, %eax	#, D.16098
	jmp	.L542	#
.L527:
	.loc 1 2535 0
	cmpq	$0, -160(%rbp)	#, file
	je	.L526	#,
	.loc 1 2537 0
	movq	-160(%rbp), %rax	# file, tmp129
	movq	%rax, %rcx	# tmp129,
	movl	$20, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC16, %edi	#,
	call	fwrite	#
	.loc 1 2538 0
	movq	-112(%rbp), %rdx	# target_stack, tmp130
	movq	-160(%rbp), %rax	# file, tmp131
	movq	%rdx, %rsi	# tmp130,
	movq	%rax, %rdi	# tmp131,
	call	print_stack	#
.L526:
	.loc 1 2545 0
	movq	-152(%rbp), %rax	# e, tmp132
	movl	48(%rax), %eax	# e_4(D)->flags, D.16100
	andl	$12, %eax	#, D.16100
	cmpl	$8, %eax	#, D.16100
	jne	.L533	#,
	.loc 1 2546 0
	movq	-112(%rbp), %rax	# target_stack, tmp133
	movl	$-1, (%rax)	#, target_stack_9->top
	jmp	.L534	#
.L533:
	.loc 1 2550 0
	movq	-152(%rbp), %rax	# e, tmp134
	movl	48(%rax), %eax	# e_4(D)->flags, D.16100
	andl	$4, %eax	#, D.16100
	testl	%eax, %eax	# D.16100
	je	.L535	#,
.LBB54:
	.loc 1 2557 0
	movq	$0, -104(%rbp)	#, tmp
	.loc 1 2558 0
	movq	-112(%rbp), %rax	# target_stack, tmp135
	movq	8(%rax), %rax	# target_stack_9->reg_set, D.16101
	cmpq	-104(%rbp), %rax	# tmp, D.16101
	jne	.L536	#,
	.loc 1 2558 0 is_stmt 0 discriminator 1
	nop
.L537:
	.loc 1 2562 0 is_stmt 1 discriminator 1
	orq	$256, -104(%rbp)	#, tmp
	.loc 1 2563 0 discriminator 1
	movq	-72(%rbp), %rax	# regstack.reg_set, D.16101
	cmpq	-104(%rbp), %rax	# tmp, D.16101
	jne	.L538	#,
	jmp	.L544	#
.L536:
	.loc 1 2559 0
	movl	$__FUNCTION__.13344, %edx	#,
	movl	$2559, %esi	#,
	movl	$.LC1, %edi	#,
	call	fancy_abort	#
.L544:
	.loc 1 2563 0 discriminator 1
	nop
.L539:
	.loc 1 2567 0 discriminator 1
	movq	-112(%rbp), %rax	# target_stack, tmp136
	movl	$-1, (%rax)	#, target_stack_9->top
.LBE54:
	jmp	.L534	#
.L538:
.LBB55:
	.loc 1 2564 0
	movl	$__FUNCTION__.13344, %edx	#,
	movl	$2564, %esi	#,
	movl	$.LC1, %edi	#,
	call	fancy_abort	#
.L535:
.LBE55:
	.loc 1 2574 0
	movq	-136(%rbp), %rax	# block, tmp137
	movq	40(%rax), %rax	# block_5->succ, D.16104
	movq	8(%rax), %rax	# _38->succ_next, D.16104
	testq	%rax, %rax	# D.16104
	jne	.L540	#,
	.loc 1 2574 0 is_stmt 0 discriminator 1
	movq	-152(%rbp), %rax	# e, tmp138
	movl	48(%rax), %eax	# e_4(D)->flags, D.16100
	andl	$2, %eax	#, D.16100
	testl	%eax, %eax	# D.16100
	jne	.L540	#,
	.loc 1 2577 0 is_stmt 1
	movq	-80(%rbp), %rax	# regstack, tmp139
	movq	%rax, -48(%rbp)	# tmp139, tmpstack
	movq	-72(%rbp), %rax	# regstack, tmp140
	movq	%rax, -40(%rbp)	# tmp140, tmpstack
	movq	-64(%rbp), %rax	# regstack, tmp141
	movq	%rax, -32(%rbp)	# tmp141, tmpstack
	.loc 1 2580 0
	movq	-136(%rbp), %rax	# block, tmp142
	movq	8(%rax), %rax	# block_5->end, D.16103
	movzwl	(%rax), %eax	# _42->code, D.16105
	.loc 1 2579 0
	cmpw	$33, %ax	#, D.16105
	sete	%al	#, D.16098
	movzbl	%al, %ecx	# D.16098, D.16106
	movq	-136(%rbp), %rax	# block, tmp143
	movq	8(%rax), %rax	# block_5->end, D.16103
	movq	-112(%rbp), %rdx	# target_stack, tmp144
	leaq	-48(%rbp), %rsi	#, tmp145
	movq	%rax, %rdi	# D.16103,
	call	change_stack	#
	jmp	.L534	#
.L540:
.LBB56:
	.loc 1 2590 0
	movq	-152(%rbp), %rax	# e, tmp146
	movl	48(%rax), %eax	# e_4(D)->flags, D.16100
	andl	$2, %eax	#, D.16100
	testl	%eax, %eax	# D.16100
	je	.L541	#,
	.loc 1 2591 0
	movl	$__FUNCTION__.13344, %edx	#,
	movl	$2591, %esi	#,
	movl	$.LC1, %edi	#,
	call	fancy_abort	#
.L541:
	.loc 1 2593 0
	movq	$0, current_block(%rip)	#, current_block
	.loc 1 2594 0
	call	start_sequence	#
	.loc 1 2600 0
	movl	$-99, %esi	#,
	movl	$0, %edi	#,
	call	emit_note	#
	movq	%rax, -96(%rbp)	# tmp147, after
	.loc 1 2602 0
	movq	-80(%rbp), %rax	# regstack, tmp148
	movq	%rax, -48(%rbp)	# tmp148, tmpstack
	movq	-72(%rbp), %rax	# regstack, tmp149
	movq	%rax, -40(%rbp)	# tmp149, tmpstack
	movq	-64(%rbp), %rax	# regstack, tmp150
	movq	%rax, -32(%rbp)	# tmp150, tmpstack
	.loc 1 2603 0
	movq	-112(%rbp), %rdx	# target_stack, tmp151
	leaq	-48(%rbp), %rsi	#, tmp152
	movq	-96(%rbp), %rax	# after, tmp153
	movl	$1, %ecx	#,
	movq	%rax, %rdi	# tmp153,
	call	change_stack	#
	.loc 1 2605 0
	call	gen_sequence	#
	movq	%rax, -88(%rbp)	# tmp154, seq
	.loc 1 2606 0
	call	end_sequence	#
	.loc 1 2608 0
	movq	-152(%rbp), %rdx	# e, tmp155
	movq	-88(%rbp), %rax	# seq, tmp156
	movq	%rdx, %rsi	# tmp155,
	movq	%rax, %rdi	# tmp156,
	call	insert_insn_on_edge	#
	.loc 1 2609 0
	movl	$1, %eax	#, D.16098
	jmp	.L542	#
.L534:
.LBE56:
	.loc 1 2611 0
	movl	$0, %eax	#, D.16098
.L542:
	.loc 1 2612 0
	movq	-24(%rbp), %rbx	# D.16107, tmp159
	xorq	%fs:40, %rbx	#, tmp159
	je	.L543	#,
	call	__stack_chk_fail	#
.L543:
	addq	$152, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE29:
	.size	compensate_edge, .-compensate_edge
	.section	.rodata
.LC17:
	.string	"\nBasic block %d\nInput stack: "
.LC18:
	.string	"  insn %d input stack: "
.LC19:
	.string	"Expected live registers ["
.LC20:
	.string	" %d"
.LC21:
	.string	" ]\nOutput stack: "
	.align 8
.LC22:
	.string	"Emitting insn initializing reg %d\n"
	.text
	.type	convert_regs_1, @function
convert_regs_1:
.LFB30:
	.loc 1 2620 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$120, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -120(%rbp)	# file, file
	movq	%rsi, -128(%rbp)	# block, block
	.loc 1 2620 0
	movq	%fs:40, %rax	#, tmp286
	movq	%rax, -24(%rbp)	# tmp286, D.16123
	xorl	%eax, %eax	# tmp286
	.loc 1 2622 0
	movq	-128(%rbp), %rax	# block, tmp159
	movq	80(%rax), %rax	# block_22(D)->aux, tmp160
	movq	%rax, -64(%rbp)	# tmp160, bi
	.loc 1 2625 0
	movq	$0, -72(%rbp)	#, beste
	.loc 1 2627 0
	movl	$0, -104(%rbp)	#, inserted
	.loc 1 2634 0
	movq	-128(%rbp), %rax	# block, tmp161
	movq	32(%rax), %rax	# block_22(D)->pred, tmp162
	movq	%rax, -80(%rbp)	# tmp162, e
	jmp	.L546	#
.L557:
	.loc 1 2636 0
	movq	-80(%rbp), %rax	# e, tmp163
	movl	48(%rax), %eax	# e_13->flags, D.16113
	andl	$32, %eax	#, D.16113
	testl	%eax, %eax	# D.16113
	jne	.L547	#,
	.loc 1 2638 0
	cmpq	$0, -72(%rbp)	#, beste
	jne	.L548	#,
	.loc 1 2639 0
	movq	-80(%rbp), %rax	# e, tmp164
	movq	%rax, -72(%rbp)	# tmp164, beste
	jmp	.L547	#
.L548:
	.loc 1 2640 0
	movq	-72(%rbp), %rax	# beste, tmp165
	movq	16(%rax), %rax	# beste_18->src, D.16114
	movl	104(%rax), %edx	# _30->frequency, D.16113
	movq	-72(%rbp), %rax	# beste, tmp166
	movl	52(%rax), %eax	# beste_18->probability, D.16113
	imull	%edx, %eax	# D.16113, D.16113
	leal	5000(%rax), %ecx	#, D.16113
	movl	$1759218605, %edx	#, tmp168
	movl	%ecx, %eax	# D.16113, tmp287
	imull	%edx	# tmp168
	sarl	$12, %edx	#, tmp169
	movl	%ecx, %eax	# D.16113, tmp170
	sarl	$31, %eax	#, tmp170
	movl	%edx, %esi	# tmp169, D.16113
	subl	%eax, %esi	# tmp170, D.16113
	movq	-80(%rbp), %rax	# e, tmp171
	movq	16(%rax), %rax	# e_13->src, D.16114
	movl	104(%rax), %edx	# _36->frequency, D.16113
	movq	-80(%rbp), %rax	# e, tmp172
	movl	52(%rax), %eax	# e_13->probability, D.16113
	imull	%edx, %eax	# D.16113, D.16113
	leal	5000(%rax), %ecx	#, D.16113
	movl	$1759218605, %edx	#, tmp174
	movl	%ecx, %eax	# D.16113, tmp288
	imull	%edx	# tmp174
	sarl	$12, %edx	#, tmp175
	movl	%ecx, %eax	# D.16113, tmp176
	sarl	$31, %eax	#, tmp176
	subl	%eax, %edx	# tmp176, D.16113
	movl	%edx, %eax	# D.16113, D.16113
	cmpl	%eax, %esi	# D.16113, D.16113
	jge	.L549	#,
	.loc 1 2641 0
	movq	-80(%rbp), %rax	# e, tmp177
	movq	%rax, -72(%rbp)	# tmp177, beste
	jmp	.L547	#
.L549:
	.loc 1 2642 0
	movq	-72(%rbp), %rax	# beste, tmp178
	movq	16(%rax), %rax	# beste_18->src, D.16114
	movl	104(%rax), %edx	# _43->frequency, D.16113
	movq	-72(%rbp), %rax	# beste, tmp179
	movl	52(%rax), %eax	# beste_18->probability, D.16113
	imull	%edx, %eax	# D.16113, D.16113
	leal	5000(%rax), %ecx	#, D.16113
	movl	$1759218605, %edx	#, tmp181
	movl	%ecx, %eax	# D.16113, tmp289
	imull	%edx	# tmp181
	sarl	$12, %edx	#, tmp182
	movl	%ecx, %eax	# D.16113, tmp183
	sarl	$31, %eax	#, tmp183
	movl	%edx, %esi	# tmp182, D.16113
	subl	%eax, %esi	# tmp183, D.16113
	movq	-80(%rbp), %rax	# e, tmp184
	movq	16(%rax), %rax	# e_13->src, D.16114
	movl	104(%rax), %edx	# _49->frequency, D.16113
	movq	-80(%rbp), %rax	# e, tmp185
	movl	52(%rax), %eax	# e_13->probability, D.16113
	imull	%edx, %eax	# D.16113, D.16113
	leal	5000(%rax), %ecx	#, D.16113
	movl	$1759218605, %edx	#, tmp187
	movl	%ecx, %eax	# D.16113, tmp290
	imull	%edx	# tmp187
	sarl	$12, %edx	#, tmp188
	movl	%ecx, %eax	# D.16113, tmp189
	sarl	$31, %eax	#, tmp189
	subl	%eax, %edx	# tmp189, D.16113
	movl	%edx, %eax	# D.16113, D.16113
	cmpl	%eax, %esi	# D.16113, D.16113
	jg	.L547	#,
	.loc 1 2644 0
	movq	-72(%rbp), %rax	# beste, tmp190
	movq	56(%rax), %rdx	# beste_18->count, D.16115
	movq	-80(%rbp), %rax	# e, tmp191
	movq	56(%rax), %rax	# e_13->count, D.16115
	cmpq	%rax, %rdx	# D.16115, D.16115
	jge	.L550	#,
	.loc 1 2645 0
	movq	-80(%rbp), %rax	# e, tmp192
	movq	%rax, -72(%rbp)	# tmp192, beste
	jmp	.L547	#
.L550:
	.loc 1 2646 0
	movq	-72(%rbp), %rax	# beste, tmp193
	movq	56(%rax), %rdx	# beste_18->count, D.16115
	movq	-80(%rbp), %rax	# e, tmp194
	movq	56(%rax), %rax	# e_13->count, D.16115
	cmpq	%rax, %rdx	# D.16115, D.16115
	jg	.L547	#,
	.loc 1 2648 0
	movq	-80(%rbp), %rax	# e, tmp195
	movq	16(%rax), %rax	# e_13->src, D.16114
	movq	40(%rax), %rax	# _60->succ, D.16116
	movq	8(%rax), %rax	# _61->succ_next, D.16116
	testq	%rax, %rax	# D.16116
	je	.L551	#,
	.loc 1 2648 0 is_stmt 0 discriminator 1
	movq	-80(%rbp), %rax	# e, tmp196
	movq	24(%rax), %rax	# e_13->dest, D.16114
	movq	32(%rax), %rax	# _63->pred, D.16116
	movq	(%rax), %rax	# _64->pred_next, D.16116
	testq	%rax, %rax	# D.16116
	je	.L551	#,
	.loc 1 2648 0 discriminator 3
	movl	$1, %eax	#, iftmp.83
	jmp	.L552	#
.L551:
	.loc 1 2648 0 discriminator 2
	movl	$0, %eax	#, iftmp.83
.L552:
	.loc 1 2649 0 is_stmt 1
	testl	%eax, %eax	# iftmp.83
	setne	%dl	#, D.16117
	movq	-72(%rbp), %rax	# beste, tmp197
	movq	16(%rax), %rax	# beste_18->src, D.16114
	movq	40(%rax), %rax	# _69->succ, D.16116
	movq	8(%rax), %rax	# _70->succ_next, D.16116
	testq	%rax, %rax	# D.16116
	je	.L553	#,
	.loc 1 2649 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# beste, tmp198
	movq	24(%rax), %rax	# beste_18->dest, D.16114
	movq	32(%rax), %rax	# _72->pred, D.16116
	movq	(%rax), %rax	# _73->pred_next, D.16116
	testq	%rax, %rax	# D.16116
	je	.L553	#,
	.loc 1 2649 0 discriminator 3
	movl	$1, %eax	#, iftmp.84
	jmp	.L554	#
.L553:
	.loc 1 2649 0 discriminator 2
	movl	$0, %eax	#, iftmp.84
.L554:
	.loc 1 2649 0 discriminator 4
	testl	%eax, %eax	# iftmp.84
	setne	%al	#, D.16117
	xorl	%edx, %eax	# D.16117, D.16117
	.loc 1 2648 0 is_stmt 1 discriminator 4
	testb	%al, %al	# D.16117
	je	.L555	#,
	.loc 1 2651 0
	movq	-80(%rbp), %rax	# e, tmp199
	movq	16(%rax), %rax	# e_13->src, D.16114
	movq	40(%rax), %rax	# _79->succ, D.16116
	movq	8(%rax), %rax	# _80->succ_next, D.16116
	testq	%rax, %rax	# D.16116
	je	.L547	#,
	.loc 1 2651 0 is_stmt 0 discriminator 1
	movq	-80(%rbp), %rax	# e, tmp200
	movq	24(%rax), %rax	# e_13->dest, D.16114
	movq	32(%rax), %rax	# _82->pred, D.16116
	movq	(%rax), %rax	# _83->pred_next, D.16116
	testq	%rax, %rax	# D.16116
	je	.L547	#,
	.loc 1 2652 0 is_stmt 1
	movq	-80(%rbp), %rax	# e, tmp201
	movq	%rax, -72(%rbp)	# tmp201, beste
	jmp	.L547	#
.L555:
	.loc 1 2654 0
	movq	-80(%rbp), %rax	# e, tmp202
	movq	16(%rax), %rax	# e_13->src, D.16114
	movl	88(%rax), %edx	# _86->index, D.16113
	movq	-72(%rbp), %rax	# beste, tmp203
	movq	16(%rax), %rax	# beste_18->src, D.16114
	movl	88(%rax), %eax	# _88->index, D.16113
	cmpl	%eax, %edx	# D.16113, D.16113
	jge	.L547	#,
	.loc 1 2655 0
	movq	-80(%rbp), %rax	# e, tmp204
	movq	%rax, -72(%rbp)	# tmp204, beste
.L547:
	.loc 1 2634 0
	movq	-80(%rbp), %rax	# e, tmp205
	movq	(%rax), %rax	# e_13->pred_next, tmp206
	movq	%rax, -80(%rbp)	# tmp206, e
.L546:
	.loc 1 2634 0 is_stmt 0 discriminator 1
	cmpq	$0, -80(%rbp)	#, e
	jne	.L557	#,
	.loc 1 2659 0 is_stmt 1
	movq	-64(%rbp), %rax	# bi, tmp207
	movl	(%rax), %eax	# bi_23->stack_in.top, D.16113
	cmpl	$-2, %eax	#, D.16113
	jne	.L558	#,
	.loc 1 2660 0
	movq	-120(%rbp), %rdx	# file, tmp208
	movq	-72(%rbp), %rax	# beste, tmp209
	movq	%rdx, %rsi	# tmp208,
	movq	%rax, %rdi	# tmp209,
	call	compensate_edge	#
	movzbl	%al, %eax	# D.16117, D.16113
	orl	%eax, -104(%rbp)	# D.16113, inserted
	jmp	.L559	#
.L558:
	.loc 1 2662 0
	movq	$0, -72(%rbp)	#, beste
.L559:
	.loc 1 2664 0
	movq	-128(%rbp), %rax	# block, tmp210
	movq	%rax, current_block(%rip)	# tmp210, current_block
	.loc 1 2666 0
	cmpq	$0, -120(%rbp)	#, file
	je	.L560	#,
	.loc 1 2668 0
	movq	-128(%rbp), %rax	# block, tmp211
	movl	88(%rax), %edx	# block_22(D)->index, D.16113
	movq	-120(%rbp), %rax	# file, tmp212
	movl	$.LC17, %esi	#,
	movq	%rax, %rdi	# tmp212,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 2669 0
	movq	-64(%rbp), %rdx	# bi, D.16118
	movq	-120(%rbp), %rax	# file, tmp213
	movq	%rdx, %rsi	# D.16118,
	movq	%rax, %rdi	# tmp213,
	call	print_stack	#
.L560:
	.loc 1 2674 0
	movq	-128(%rbp), %rax	# block, tmp214
	movq	(%rax), %rax	# block_22(D)->head, tmp215
	movq	%rax, -88(%rbp)	# tmp215, next
	.loc 1 2675 0
	movq	-64(%rbp), %rax	# bi, tmp216
	movq	(%rax), %rdx	# bi_23->stack_in, tmp217
	movq	%rdx, -48(%rbp)	# tmp217, regstack
	movq	8(%rax), %rdx	# bi_23->stack_in, tmp218
	movq	%rdx, -40(%rbp)	# tmp218, regstack
	movq	16(%rax), %rax	# bi_23->stack_in, tmp219
	movq	%rax, -32(%rbp)	# tmp219, regstack
.L566:
	.loc 1 2678 0
	movq	-88(%rbp), %rax	# next, tmp220
	movq	%rax, -96(%rbp)	# tmp220, insn
	.loc 1 2679 0
	movq	-96(%rbp), %rax	# insn, tmp221
	movq	24(%rax), %rax	# insn_101->fld[2].rtx, tmp222
	movq	%rax, -88(%rbp)	# tmp222, next
	.loc 1 2682 0
	cmpq	$0, -88(%rbp)	#, next
	jne	.L561	#,
	.loc 1 2683 0
	movl	$__FUNCTION__.13363, %edx	#,
	movl	$2683, %esi	#,
	movl	$.LC1, %edi	#,
	call	fancy_abort	#
.L561:
	.loc 1 2684 0
	movq	-128(%rbp), %rax	# block, tmp223
	movq	8(%rax), %rax	# block_22(D)->end, D.16119
	cmpq	-96(%rbp), %rax	# insn, D.16119
	jne	.L562	#,
	.loc 1 2685 0
	movq	$0, -88(%rbp)	#, next
.L562:
	.loc 1 2689 0
	movq	-96(%rbp), %rax	# insn, tmp224
	movq	%rax, %rdi	# tmp224,
	call	stack_regs_mentioned	#
	testl	%eax, %eax	# D.16113
	jne	.L563	#,
	.loc 1 2690 0
	movq	-96(%rbp), %rax	# insn, tmp225
	movzwl	(%rax), %eax	# insn_101->code, D.16120
	cmpw	$34, %ax	#, D.16120
	jne	.L564	#,
.L563:
	.loc 1 2692 0
	cmpq	$0, -120(%rbp)	#, file
	je	.L565	#,
	.loc 1 2694 0
	movq	-96(%rbp), %rax	# insn, tmp226
	movl	8(%rax), %edx	# insn_101->fld[0].rtint, D.16113
	movq	-120(%rbp), %rax	# file, tmp227
	movl	$.LC18, %esi	#,
	movq	%rax, %rdi	# tmp227,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 2696 0
	leaq	-48(%rbp), %rdx	#, tmp228
	movq	-120(%rbp), %rax	# file, tmp229
	movq	%rdx, %rsi	# tmp228,
	movq	%rax, %rdi	# tmp229,
	call	print_stack	#
.L565:
	.loc 1 2698 0
	leaq	-48(%rbp), %rdx	#, tmp230
	movq	-96(%rbp), %rax	# insn, tmp231
	movq	%rdx, %rsi	# tmp230,
	movq	%rax, %rdi	# tmp231,
	call	subst_stack_regs	#
.L564:
	.loc 1 2701 0
	cmpq	$0, -88(%rbp)	#, next
	jne	.L566	#,
	.loc 1 2703 0
	cmpq	$0, -120(%rbp)	#, file
	je	.L567	#,
	.loc 1 2705 0
	movq	-120(%rbp), %rax	# file, tmp232
	movq	%rax, %rcx	# tmp232,
	movl	$25, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC19, %edi	#,
	call	fwrite	#
	.loc 1 2706 0
	movl	$8, -100(%rbp)	#, reg
	jmp	.L568	#
.L570:
	.loc 1 2707 0
	movq	-64(%rbp), %rax	# bi, tmp233
	movq	48(%rax), %rdx	# bi_23->out_reg_set, D.16121
	movl	-100(%rbp), %eax	# reg, tmp234
	movl	%eax, %ecx	# tmp234, tmp305
	shrq	%cl, %rdx	# tmp305, D.16121
	movq	%rdx, %rax	# D.16121, D.16121
	andl	$1, %eax	#, D.16121
	testq	%rax, %rax	# D.16121
	je	.L569	#,
	.loc 1 2708 0
	movl	-100(%rbp), %edx	# reg, tmp235
	movq	-120(%rbp), %rax	# file, tmp236
	movl	$.LC20, %esi	#,
	movq	%rax, %rdi	# tmp236,
	movl	$0, %eax	#,
	call	fprintf	#
.L569:
	.loc 1 2706 0
	addl	$1, -100(%rbp)	#, reg
.L568:
	.loc 1 2706 0 is_stmt 0 discriminator 1
	cmpl	$15, -100(%rbp)	#, reg
	jle	.L570	#,
	.loc 1 2709 0 is_stmt 1
	movq	-120(%rbp), %rax	# file, tmp237
	movq	%rax, %rcx	# tmp237,
	movl	$17, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC21, %edi	#,
	call	fwrite	#
	.loc 1 2710 0
	leaq	-48(%rbp), %rdx	#, tmp238
	movq	-120(%rbp), %rax	# file, tmp239
	movq	%rdx, %rsi	# tmp238,
	movq	%rax, %rdi	# tmp239,
	call	print_stack	#
.L567:
	.loc 1 2713 0
	movq	-128(%rbp), %rax	# block, tmp240
	movq	8(%rax), %rax	# block_22(D)->end, tmp241
	movq	%rax, -96(%rbp)	# tmp241, insn
	.loc 1 2714 0
	movq	-96(%rbp), %rax	# insn, tmp242
	movzwl	(%rax), %eax	# insn_113->code, D.16120
	cmpw	$33, %ax	#, D.16120
	jne	.L571	#,
	.loc 1 2715 0
	movq	-96(%rbp), %rax	# insn, tmp243
	movq	16(%rax), %rax	# insn_113->fld[1].rtx, tmp244
	movq	%rax, -96(%rbp)	# tmp244, insn
.L571:
	.loc 1 2721 0
	movl	$8, -100(%rbp)	#, reg
	jmp	.L572	#
.L575:
	.loc 1 2723 0
	movq	-64(%rbp), %rax	# bi, tmp245
	movq	48(%rax), %rdx	# bi_23->out_reg_set, D.16121
	movl	-100(%rbp), %eax	# reg, tmp246
	movl	%eax, %ecx	# tmp246, tmp307
	shrq	%cl, %rdx	# tmp307, D.16121
	movq	%rdx, %rax	# D.16121, D.16121
	andl	$1, %eax	#, D.16121
	testq	%rax, %rax	# D.16121
	je	.L573	#,
	.loc 1 2724 0
	movq	-40(%rbp), %rdx	# regstack.reg_set, D.16121
	movl	-100(%rbp), %eax	# reg, tmp247
	movl	%eax, %ecx	# tmp247, tmp309
	shrq	%cl, %rdx	# tmp309, D.16121
	movq	%rdx, %rax	# D.16121, D.16121
	andl	$1, %eax	#, D.16121
	testq	%rax, %rax	# D.16121
	jne	.L573	#,
.LBB57:
	.loc 1 2728 0
	cmpq	$0, -120(%rbp)	#, file
	je	.L574	#,
	.loc 1 2730 0
	movl	-100(%rbp), %edx	# reg, tmp248
	movq	-120(%rbp), %rax	# file, tmp249
	movl	$.LC22, %esi	#,
	movq	%rax, %rdi	# tmp249,
	movl	$0, %eax	#,
	call	fprintf	#
.L574:
	.loc 1 2734 0
	movq	nan(%rip), %rdx	# nan, nan.85
	movl	-100(%rbp), %eax	# reg, tmp250
	subl	$8, %eax	#, D.16113
	cltq
	imulq	$472, %rax, %rax	#, tmp251, tmp252
	addq	$FP_mode_reg+120, %rax	#, tmp253
	movq	(%rax), %rax	# FP_mode_reg, D.16119
	movq	%rdx, %rcx	# nan.85,
	movq	%rax, %rdx	# D.16119,
	movl	$0, %esi	#,
	movl	$47, %edi	#,
	call	gen_rtx_fmt_ee	#
	movq	%rax, -56(%rbp)	# tmp254, set
	.loc 1 2736 0
	movq	-96(%rbp), %rdx	# insn, tmp255
	movq	-56(%rbp), %rax	# set, tmp256
	movq	%rdx, %rsi	# tmp255,
	movq	%rax, %rdi	# tmp256,
	call	emit_insn_after	#
	movq	%rax, -96(%rbp)	# tmp257, insn
	.loc 1 2737 0
	leaq	-48(%rbp), %rdx	#, tmp258
	movq	-96(%rbp), %rax	# insn, tmp259
	movq	%rdx, %rsi	# tmp258,
	movq	%rax, %rdi	# tmp259,
	call	subst_stack_regs	#
.L573:
.LBE57:
	.loc 1 2721 0
	addl	$1, -100(%rbp)	#, reg
.L572:
	.loc 1 2721 0 is_stmt 0 discriminator 1
	cmpl	$15, -100(%rbp)	#, reg
	jle	.L575	#,
	.loc 1 2742 0 is_stmt 1
	movq	-40(%rbp), %rdx	# regstack.reg_set, D.16121
	movq	-64(%rbp), %rax	# bi, tmp260
	movq	48(%rax), %rax	# bi_23->out_reg_set, D.16121
	cmpq	%rax, %rdx	# D.16121, D.16121
	jne	.L576	#,
	.loc 1 2742 0 is_stmt 0 discriminator 1
	nop
.L577:
	.loc 1 2745 0 is_stmt 1 discriminator 1
	movq	-64(%rbp), %rax	# bi, tmp261
	movq	-48(%rbp), %rdx	# regstack, tmp262
	movq	%rdx, 24(%rax)	# tmp262, bi_23->stack_out
	movq	-40(%rbp), %rdx	# regstack, tmp263
	movq	%rdx, 32(%rax)	# tmp263, bi_23->stack_out
	movq	-32(%rbp), %rdx	# regstack, tmp264
	movq	%rdx, 40(%rax)	# tmp264, bi_23->stack_out
	.loc 1 2748 0 discriminator 1
	movq	-128(%rbp), %rax	# block, tmp265
	movq	40(%rax), %rax	# block_22(D)->succ, tmp266
	movq	%rax, -80(%rbp)	# tmp266, e
	jmp	.L578	#
.L576:
	.loc 1 2743 0
	movl	$__FUNCTION__.13363, %edx	#,
	movl	$2743, %esi	#,
	movl	$.LC1, %edi	#,
	call	fancy_abort	#
.L582:
	.loc 1 2750 0
	movq	-80(%rbp), %rax	# e, tmp267
	movl	48(%rax), %eax	# e_14->flags, D.16113
	andl	$32, %eax	#, D.16113
	testl	%eax, %eax	# D.16113
	jne	.L579	#,
	.loc 1 2751 0
	movq	-80(%rbp), %rax	# e, tmp268
	movq	24(%rax), %rax	# e_14->dest, D.16114
	cmpq	$entry_exit_blocks+112, %rax	#, D.16114
	jne	.L580	#,
.L579:
	.loc 1 2753 0
	movq	-80(%rbp), %rax	# e, tmp269
	movq	24(%rax), %rax	# e_14->dest, D.16114
	movq	80(%rax), %rax	# _135->aux, D.16122
	movl	56(%rax), %eax	# MEM[(struct block_info_def *)_136].done, D.16113
	testl	%eax, %eax	# D.16113
	jne	.L581	#,
	.loc 1 2754 0
	movq	-80(%rbp), %rax	# e, tmp270
	movq	24(%rax), %rax	# e_14->dest, D.16114
	cmpq	-128(%rbp), %rax	# block, D.16114
	je	.L581	#,
	.loc 1 2755 0
	movl	$__FUNCTION__.13363, %edx	#,
	movl	$2755, %esi	#,
	movl	$.LC1, %edi	#,
	call	fancy_abort	#
.L581:
	.loc 1 2756 0
	movq	-120(%rbp), %rdx	# file, tmp271
	movq	-80(%rbp), %rax	# e, tmp272
	movq	%rdx, %rsi	# tmp271,
	movq	%rax, %rdi	# tmp272,
	call	compensate_edge	#
	movzbl	%al, %eax	# D.16117, D.16113
	orl	%eax, -104(%rbp)	# D.16113, inserted
.L580:
	.loc 1 2748 0
	movq	-80(%rbp), %rax	# e, tmp273
	movq	8(%rax), %rax	# e_14->succ_next, tmp274
	movq	%rax, -80(%rbp)	# tmp274, e
.L578:
	.loc 1 2748 0 is_stmt 0 discriminator 1
	cmpq	$0, -80(%rbp)	#, e
	jne	.L582	#,
	.loc 1 2759 0 is_stmt 1
	movq	-128(%rbp), %rax	# block, tmp275
	movq	32(%rax), %rax	# block_22(D)->pred, tmp276
	movq	%rax, -80(%rbp)	# tmp276, e
	jmp	.L583	#
.L586:
	.loc 1 2761 0
	movq	-80(%rbp), %rax	# e, tmp277
	cmpq	-72(%rbp), %rax	# beste, tmp277
	je	.L584	#,
	.loc 1 2761 0 is_stmt 0 discriminator 1
	movq	-80(%rbp), %rax	# e, tmp278
	movl	48(%rax), %eax	# e_15->flags, D.16113
	andl	$32, %eax	#, D.16113
	testl	%eax, %eax	# D.16113
	jne	.L584	#,
	.loc 1 2762 0 is_stmt 1
	movq	-80(%rbp), %rax	# e, tmp279
	movq	16(%rax), %rax	# e_15->src, D.16114
	cmpq	$entry_exit_blocks, %rax	#, D.16114
	je	.L584	#,
	.loc 1 2764 0
	movq	-80(%rbp), %rax	# e, tmp280
	movq	16(%rax), %rax	# e_15->src, D.16114
	movq	80(%rax), %rax	# _147->aux, D.16122
	movl	56(%rax), %eax	# MEM[(struct block_info_def *)_148].done, D.16113
	testl	%eax, %eax	# D.16113
	jne	.L585	#,
	.loc 1 2765 0
	movl	$__FUNCTION__.13363, %edx	#,
	movl	$2765, %esi	#,
	movl	$.LC1, %edi	#,
	call	fancy_abort	#
.L585:
	.loc 1 2766 0
	movq	-120(%rbp), %rdx	# file, tmp281
	movq	-80(%rbp), %rax	# e, tmp282
	movq	%rdx, %rsi	# tmp281,
	movq	%rax, %rdi	# tmp282,
	call	compensate_edge	#
	movzbl	%al, %eax	# D.16117, D.16113
	orl	%eax, -104(%rbp)	# D.16113, inserted
.L584:
	.loc 1 2759 0
	movq	-80(%rbp), %rax	# e, tmp283
	movq	(%rax), %rax	# e_15->pred_next, tmp284
	movq	%rax, -80(%rbp)	# tmp284, e
.L583:
	.loc 1 2759 0 is_stmt 0 discriminator 1
	cmpq	$0, -80(%rbp)	#, e
	jne	.L586	#,
	.loc 1 2770 0 is_stmt 1
	movl	-104(%rbp), %eax	# inserted, D.16113
	.loc 1 2771 0
	movq	-24(%rbp), %rbx	# D.16123, tmp291
	xorq	%fs:40, %rbx	#, tmp291
	je	.L588	#,
	call	__stack_chk_fail	#
.L588:
	addq	$120, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE30:
	.size	convert_regs_1, .-convert_regs_1
	.type	convert_regs_2, @function
convert_regs_2:
.LFB31:
	.loc 1 2779 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# file, file
	movq	%rsi, -48(%rbp)	# block, block
	.loc 1 2783 0
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.86
	cltq
	salq	$3, %rax	#, D.16130
	movq	%rax, %rdi	# D.16130,
	call	xmalloc	#
	movq	%rax, -8(%rbp)	# tmp78, stack
	.loc 1 2784 0
	movq	-8(%rbp), %rax	# stack, tmp79
	movq	%rax, -24(%rbp)	# tmp79, sp
	.loc 1 2786 0
	movq	-24(%rbp), %rax	# sp, sp.87
	leaq	8(%rax), %rdx	#, tmp80
	movq	%rdx, -24(%rbp)	# tmp80, sp
	movq	-48(%rbp), %rdx	# block, tmp81
	movq	%rdx, (%rax)	# tmp81, *sp.87_11
	.loc 1 2788 0
	movl	$0, -28(%rbp)	#, inserted
.L593:
.LBB58:
	.loc 1 2793 0
	subq	$8, -24(%rbp)	#, sp
	movq	-24(%rbp), %rax	# sp, tmp82
	movq	(%rax), %rax	# *sp_15, tmp83
	movq	%rax, -48(%rbp)	# tmp83, block
	.loc 1 2794 0
	movq	-48(%rbp), %rdx	# block, tmp84
	movq	-40(%rbp), %rax	# file, tmp85
	movq	%rdx, %rsi	# tmp84,
	movq	%rax, %rdi	# tmp85,
	call	convert_regs_1	#
	orl	%eax, -28(%rbp)	# D.16131, inserted
	.loc 1 2795 0
	movq	-48(%rbp), %rax	# block, tmp86
	movq	80(%rax), %rax	# block_16->aux, D.16132
	movl	$1, 56(%rax)	#, MEM[(struct block_info_def *)_20].done
	.loc 1 2797 0
	movq	-48(%rbp), %rax	# block, tmp87
	movq	40(%rax), %rax	# block_16->succ, tmp88
	movq	%rax, -16(%rbp)	# tmp88, e
	jmp	.L590	#
.L592:
	.loc 1 2798 0
	movq	-16(%rbp), %rax	# e, tmp89
	movl	48(%rax), %eax	# e_5->flags, D.16131
	andl	$32, %eax	#, D.16131
	testl	%eax, %eax	# D.16131
	jne	.L591	#,
	.loc 1 2800 0
	movq	-16(%rbp), %rax	# e, tmp90
	movq	24(%rax), %rax	# e_5->dest, D.16133
	movq	80(%rax), %rax	# _24->aux, D.16132
	movl	60(%rax), %edx	# MEM[(struct block_info_def *)_25].predecessors, D.16131
	subl	$1, %edx	#, D.16131
	movl	%edx, 60(%rax)	# D.16131, MEM[(struct block_info_def *)_25].predecessors
	.loc 1 2801 0
	movq	-16(%rbp), %rax	# e, tmp91
	movq	24(%rax), %rax	# e_5->dest, D.16133
	movq	80(%rax), %rax	# _28->aux, D.16132
	movl	60(%rax), %eax	# MEM[(struct block_info_def *)_29].predecessors, D.16131
	testl	%eax, %eax	# D.16131
	jne	.L591	#,
	.loc 1 2802 0
	movq	-24(%rbp), %rax	# sp, sp.88
	leaq	8(%rax), %rdx	#, tmp92
	movq	%rdx, -24(%rbp)	# tmp92, sp
	movq	-16(%rbp), %rdx	# e, tmp93
	movq	24(%rdx), %rdx	# e_5->dest, D.16133
	movq	%rdx, (%rax)	# D.16133, *sp.88_31
.L591:
	.loc 1 2797 0
	movq	-16(%rbp), %rax	# e, tmp94
	movq	8(%rax), %rax	# e_5->succ_next, tmp95
	movq	%rax, -16(%rbp)	# tmp95, e
.L590:
	.loc 1 2797 0 is_stmt 0 discriminator 1
	cmpq	$0, -16(%rbp)	#, e
	jne	.L592	#,
.LBE58:
	.loc 1 2805 0 is_stmt 1
	movq	-24(%rbp), %rax	# sp, tmp96
	cmpq	-8(%rbp), %rax	# stack, tmp96
	jne	.L593	#,
	.loc 1 2807 0
	movl	-28(%rbp), %eax	# inserted, D.16131
	.loc 1 2808 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE31:
	.size	convert_regs_2, .-convert_regs_2
	.type	convert_regs, @function
convert_regs:
.LFB32:
	.loc 1 2817 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -56(%rbp)	# file, file
	.loc 1 2822 0
	call	convert_regs_entry	#
	movl	%eax, -36(%rbp)	# tmp75, inserted
	.loc 1 2825 0
	call	convert_regs_exit	#
	.loc 1 2826 0
	movq	entry_exit_blocks+192(%rip), %rax	# entry_exit_blocks[1].aux, D.16134
	movl	$1, 56(%rax)	#, MEM[(struct block_info_def *)_8].done
	.loc 1 2833 0
	movq	entry_exit_blocks+40(%rip), %rax	# entry_exit_blocks[0].succ, tmp76
	movq	%rax, -24(%rbp)	# tmp76, e
	jmp	.L596	#
.L597:
	.loc 1 2834 0 discriminator 2
	movq	-24(%rbp), %rax	# e, tmp77
	movq	24(%rax), %rdx	# e_5->dest, D.16135
	movq	-56(%rbp), %rax	# file, tmp78
	movq	%rdx, %rsi	# D.16135,
	movq	%rax, %rdi	# tmp78,
	call	convert_regs_2	#
	orl	%eax, -36(%rbp)	# D.16136, inserted
	.loc 1 2833 0 discriminator 2
	movq	-24(%rbp), %rax	# e, tmp79
	movq	8(%rax), %rax	# e_5->succ_next, tmp80
	movq	%rax, -24(%rbp)	# tmp80, e
.L596:
	.loc 1 2833 0 is_stmt 0 discriminator 1
	cmpq	$0, -24(%rbp)	#, e
	jne	.L597	#,
	.loc 1 2838 0 is_stmt 1
	movl	$0, -32(%rbp)	#, i
	jmp	.L598	#
.L603:
.LBB59:
	.loc 1 2840 0
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.89
	movl	-32(%rbp), %edx	# i, tmp82
	movslq	%edx, %rdx	# tmp82, tmp81
	addq	$4, %rdx	#, tmp83
	movq	(%rax,%rdx,8), %rax	# basic_block_info.89_17->data.bb, tmp84
	movq	%rax, -16(%rbp)	# tmp84, b
	.loc 1 2841 0
	movq	-16(%rbp), %rax	# b, tmp85
	movq	80(%rax), %rax	# b_18->aux, tmp86
	movq	%rax, -8(%rbp)	# tmp86, bi
	.loc 1 2843 0
	movq	-8(%rbp), %rax	# bi, tmp87
	movl	56(%rax), %eax	# bi_19->done, D.16136
	testl	%eax, %eax	# D.16136
	jne	.L599	#,
.LBB60:
	.loc 1 2848 0
	movq	-8(%rbp), %rax	# bi, tmp88
	movl	$-1, (%rax)	#, bi_19->stack_in.top
	.loc 1 2849 0
	movl	$15, -28(%rbp)	#, reg
	jmp	.L600	#
.L602:
	.loc 1 2850 0
	movq	-8(%rbp), %rax	# bi, tmp89
	movq	8(%rax), %rdx	# bi_19->stack_in.reg_set, D.16137
	movl	-28(%rbp), %eax	# reg, tmp90
	movl	%eax, %ecx	# tmp90, tmp102
	shrq	%cl, %rdx	# tmp102, D.16137
	movq	%rdx, %rax	# D.16137, D.16137
	andl	$1, %eax	#, D.16137
	testq	%rax, %rax	# D.16137
	je	.L601	#,
	.loc 1 2851 0
	movq	-8(%rbp), %rax	# bi, tmp91
	movl	(%rax), %eax	# bi_19->stack_in.top, D.16136
	leal	1(%rax), %edx	#, D.16136
	movq	-8(%rbp), %rax	# bi, tmp92
	movl	%edx, (%rax)	# D.16136, bi_19->stack_in.top
	movq	-8(%rbp), %rax	# bi, tmp93
	movl	(%rax), %eax	# bi_19->stack_in.top, D.16136
	movl	-28(%rbp), %edx	# reg, tmp94
	movl	%edx, %ecx	# tmp94, D.16138
	movq	-8(%rbp), %rdx	# bi, tmp95
	cltq
	movb	%cl, 16(%rdx,%rax)	# D.16138, bi_19->stack_in.reg
.L601:
	.loc 1 2849 0
	subl	$1, -28(%rbp)	#, reg
.L600:
	.loc 1 2849 0 is_stmt 0 discriminator 1
	cmpl	$7, -28(%rbp)	#, reg
	jg	.L602	#,
	.loc 1 2853 0 is_stmt 1
	movq	-16(%rbp), %rdx	# b, tmp97
	movq	-56(%rbp), %rax	# file, tmp98
	movq	%rdx, %rsi	# tmp97,
	movq	%rax, %rdi	# tmp98,
	call	convert_regs_2	#
	orl	%eax, -36(%rbp)	# D.16136, inserted
.L599:
.LBE60:
.LBE59:
	.loc 1 2838 0
	addl	$1, -32(%rbp)	#, i
.L598:
	.loc 1 2838 0 is_stmt 0 discriminator 1
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.90
	cmpl	%eax, -32(%rbp)	# n_basic_blocks.90, i
	jl	.L603	#,
	.loc 1 2857 0 is_stmt 1
	call	fixup_abnormal_edges	#
	.loc 1 2858 0
	cmpl	$0, -36(%rbp)	#, inserted
	je	.L604	#,
	.loc 1 2859 0
	call	commit_edge_insertions	#
.L604:
	.loc 1 2861 0
	cmpq	$0, -56(%rbp)	#, file
	je	.L605	#,
	.loc 1 2862 0
	movq	-56(%rbp), %rax	# file, tmp99
	movq	%rax, %rsi	# tmp99,
	movl	$10, %edi	#,
	call	fputc	#
.L605:
	.loc 1 2864 0
	movl	-36(%rbp), %eax	# inserted, D.16136
	.loc 1 2865 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE32:
	.size	convert_regs, .-convert_regs
	.section	.rodata
	.align 16
	.type	__FUNCTION__.12901, @object
	.size	__FUNCTION__.12901, 24
__FUNCTION__.12901:
	.string	"record_label_references"
	.align 16
	.type	__FUNCTION__.12980, @object
	.size	__FUNCTION__.12980, 25
__FUNCTION__.12980:
	.string	"get_asm_operand_n_inputs"
	.type	__FUNCTION__.12989, @object
	.size	__FUNCTION__.12989, 12
__FUNCTION__.12989:
	.string	"replace_reg"
	.align 16
	.type	__FUNCTION__.13003, @object
	.size	__FUNCTION__.13003, 18
__FUNCTION__.13003:
	.string	"remove_regno_note"
	.align 16
	.type	__FUNCTION__.13009, @object
	.size	__FUNCTION__.13009, 16
__FUNCTION__.13009:
	.string	"get_hard_regnum"
	.type	__FUNCTION__.13024, @object
	.size	__FUNCTION__.13024, 14
__FUNCTION__.13024:
	.string	"emit_pop_insn"
	.type	__FUNCTION__.13036, @object
	.size	__FUNCTION__.13036, 15
__FUNCTION__.13036:
	.string	"emit_swap_insn"
	.align 16
	.type	__FUNCTION__.13055, @object
	.size	__FUNCTION__.13055, 19
__FUNCTION__.13055:
	.string	"move_for_stack_reg"
	.align 16
	.type	__FUNCTION__.13103, @object
	.size	__FUNCTION__.13103, 21
__FUNCTION__.13103:
	.string	"subst_stack_regs_pat"
	.align 16
	.type	__FUNCTION__.13172, @object
	.size	__FUNCTION__.13172, 21
__FUNCTION__.13172:
	.string	"subst_asm_stack_regs"
	.type	__FUNCTION__.13267, @object
	.size	__FUNCTION__.13267, 13
__FUNCTION__.13267:
	.string	"change_stack"
	.align 16
	.type	__FUNCTION__.13344, @object
	.size	__FUNCTION__.13344, 16
__FUNCTION__.13344:
	.string	"compensate_edge"
	.type	__FUNCTION__.13363, @object
	.size	__FUNCTION__.13363, 15
__FUNCTION__.13363:
	.string	"convert_regs_1"
	.text
.Letext0:
	.file 2 "rtl.h"
	.file 3 "config.h"
	.file 4 "tree.h"
	.file 5 "i386.h"
	.file 6 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.file 7 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 8 "/usr/include/stdio.h"
	.file 9 "/usr/include/libio.h"
	.file 10 "machmode.h"
	.file 11 "real.h"
	.file 12 "hashtable.h"
	.file 13 "function.h"
	.file 14 "bitmap.h"
	.file 15 "basic-block.h"
	.file 16 "varray.h"
	.file 17 "regs.h"
	.file 18 "hard-reg-set.h"
	.file 19 "recog.h"
	.file 20 "flags.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x4826
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF1047
	.byte	0x1
	.long	.LASF1048
	.long	.LASF1049
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
	.long	0x30b
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.long	.LASF1
	.byte	0x2
	.byte	0x80
	.long	0x30b
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.long	.LASF2
	.byte	0x2
	.byte	0x87
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0x5
	.long	.LASF3
	.byte	0x2
	.byte	0x8a
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0x5
	.long	.LASF4
	.byte	0x2
	.byte	0x95
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0x5
	.long	.LASF5
	.byte	0x2
	.byte	0x9d
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.long	.LASF6
	.byte	0x2
	.byte	0xaf
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.long	.LASF7
	.byte	0x2
	.byte	0xb6
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.long	.LASF8
	.byte	0x2
	.byte	0xbb
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.long	.LASF9
	.byte	0x2
	.byte	0xc4
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x6
	.string	"fld"
	.byte	0x2
	.byte	0xc9
	.long	0x21b9
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
	.long	0x1de
	.byte	0
	.uleb128 0x8
	.long	.LASF14
	.byte	0x2
	.byte	0xe0
	.long	0x21c9
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
	.long	.LASF699
	.byte	0xd0
	.byte	0x4
	.value	0x744
	.long	0x1de
	.uleb128 0xa
	.long	.LASF16
	.byte	0x4
	.value	0x746
	.long	0x9b6
	.uleb128 0xa
	.long	.LASF17
	.byte	0x4
	.value	0x747
	.long	0xb76
	.uleb128 0xa
	.long	.LASF18
	.byte	0x4
	.value	0x748
	.long	0xbd9
	.uleb128 0xa
	.long	.LASF19
	.byte	0x4
	.value	0x749
	.long	0xc92
	.uleb128 0xa
	.long	.LASF20
	.byte	0x4
	.value	0x74a
	.long	0xc0e
	.uleb128 0xa
	.long	.LASF21
	.byte	0x4
	.value	0x74b
	.long	0xc50
	.uleb128 0xa
	.long	.LASF22
	.byte	0x4
	.value	0x74c
	.long	0xcf7
	.uleb128 0xa
	.long	.LASF23
	.byte	0x4
	.value	0x74d
	.long	0x15b0
	.uleb128 0xa
	.long	.LASF24
	.byte	0x4
	.value	0x74e
	.long	0xe86
	.uleb128 0xa
	.long	.LASF25
	.byte	0x4
	.value	0x74f
	.long	0xd1e
	.uleb128 0xb
	.string	"vec"
	.byte	0x4
	.value	0x750
	.long	0xd53
	.uleb128 0xb
	.string	"exp"
	.byte	0x4
	.value	0x751
	.long	0xd96
	.uleb128 0xa
	.long	.LASF26
	.byte	0x4
	.value	0x752
	.long	0xdcb
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0xd
	.byte	0x8
	.byte	0x7
	.long	.LASF27
	.uleb128 0xe
	.long	.LASF111
	.byte	0x4
	.byte	0x5
	.value	0x4b2
	.long	0x296
	.uleb128 0xf
	.long	.LASF28
	.sleb128 0
	.uleb128 0xf
	.long	.LASF29
	.sleb128 1
	.uleb128 0xf
	.long	.LASF30
	.sleb128 2
	.uleb128 0xf
	.long	.LASF31
	.sleb128 3
	.uleb128 0xf
	.long	.LASF32
	.sleb128 4
	.uleb128 0xf
	.long	.LASF33
	.sleb128 5
	.uleb128 0xf
	.long	.LASF34
	.sleb128 6
	.uleb128 0xf
	.long	.LASF35
	.sleb128 7
	.uleb128 0xf
	.long	.LASF36
	.sleb128 8
	.uleb128 0xf
	.long	.LASF37
	.sleb128 9
	.uleb128 0xf
	.long	.LASF38
	.sleb128 10
	.uleb128 0xf
	.long	.LASF39
	.sleb128 11
	.uleb128 0xf
	.long	.LASF40
	.sleb128 12
	.uleb128 0xf
	.long	.LASF41
	.sleb128 13
	.uleb128 0xf
	.long	.LASF42
	.sleb128 14
	.uleb128 0xf
	.long	.LASF43
	.sleb128 15
	.uleb128 0xf
	.long	.LASF44
	.sleb128 16
	.uleb128 0xf
	.long	.LASF45
	.sleb128 17
	.uleb128 0xf
	.long	.LASF46
	.sleb128 18
	.uleb128 0xf
	.long	.LASF47
	.sleb128 19
	.uleb128 0xf
	.long	.LASF48
	.sleb128 20
	.uleb128 0xf
	.long	.LASF49
	.sleb128 21
	.uleb128 0xf
	.long	.LASF50
	.sleb128 22
	.uleb128 0xf
	.long	.LASF51
	.sleb128 23
	.uleb128 0xf
	.long	.LASF52
	.sleb128 24
	.uleb128 0xf
	.long	.LASF53
	.sleb128 25
	.byte	0
	.uleb128 0x10
	.long	.LASF54
	.byte	0x1c
	.byte	0x5
	.value	0x683
	.long	0x2ff
	.uleb128 0x11
	.long	.LASF55
	.byte	0x5
	.value	0x684
	.long	0x1de
	.byte	0
	.uleb128 0x11
	.long	.LASF56
	.byte	0x5
	.value	0x685
	.long	0x1de
	.byte	0x4
	.uleb128 0x11
	.long	.LASF57
	.byte	0x5
	.value	0x686
	.long	0x1de
	.byte	0x8
	.uleb128 0x11
	.long	.LASF58
	.byte	0x5
	.value	0x687
	.long	0x1de
	.byte	0xc
	.uleb128 0x11
	.long	.LASF59
	.byte	0x5
	.value	0x688
	.long	0x1de
	.byte	0x10
	.uleb128 0x11
	.long	.LASF60
	.byte	0x5
	.value	0x689
	.long	0x1de
	.byte	0x14
	.uleb128 0x11
	.long	.LASF61
	.byte	0x5
	.value	0x68a
	.long	0x1de
	.byte	0x18
	.byte	0
	.uleb128 0x12
	.long	.LASF62
	.byte	0x5
	.value	0x68b
	.long	0x296
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.long	.LASF63
	.uleb128 0x13
	.byte	0x8
	.uleb128 0xd
	.byte	0x8
	.byte	0x5
	.long	.LASF64
	.uleb128 0x7
	.long	.LASF65
	.byte	0x6
	.byte	0xd4
	.long	0x326
	.uleb128 0xd
	.byte	0x8
	.byte	0x7
	.long	.LASF66
	.uleb128 0xd
	.byte	0x1
	.byte	0x8
	.long	.LASF67
	.uleb128 0xd
	.byte	0x2
	.byte	0x7
	.long	.LASF68
	.uleb128 0xd
	.byte	0x1
	.byte	0x6
	.long	.LASF69
	.uleb128 0xd
	.byte	0x2
	.byte	0x5
	.long	.LASF70
	.uleb128 0x7
	.long	.LASF71
	.byte	0x7
	.byte	0x8c
	.long	0x314
	.uleb128 0x7
	.long	.LASF72
	.byte	0x7
	.byte	0x8d
	.long	0x314
	.uleb128 0x3
	.byte	0x8
	.long	0x365
	.uleb128 0xd
	.byte	0x1
	.byte	0x6
	.long	.LASF73
	.uleb128 0x7
	.long	.LASF74
	.byte	0x8
	.byte	0x30
	.long	0x377
	.uleb128 0x4
	.long	.LASF75
	.byte	0xd8
	.byte	0x9
	.byte	0xf6
	.long	0x4f8
	.uleb128 0x8
	.long	.LASF76
	.byte	0x9
	.byte	0xf7
	.long	0x1de
	.byte	0
	.uleb128 0x8
	.long	.LASF77
	.byte	0x9
	.byte	0xfc
	.long	0x35f
	.byte	0x8
	.uleb128 0x8
	.long	.LASF78
	.byte	0x9
	.byte	0xfd
	.long	0x35f
	.byte	0x10
	.uleb128 0x8
	.long	.LASF79
	.byte	0x9
	.byte	0xfe
	.long	0x35f
	.byte	0x18
	.uleb128 0x8
	.long	.LASF80
	.byte	0x9
	.byte	0xff
	.long	0x35f
	.byte	0x20
	.uleb128 0x11
	.long	.LASF81
	.byte	0x9
	.value	0x100
	.long	0x35f
	.byte	0x28
	.uleb128 0x11
	.long	.LASF82
	.byte	0x9
	.value	0x101
	.long	0x35f
	.byte	0x30
	.uleb128 0x11
	.long	.LASF83
	.byte	0x9
	.value	0x102
	.long	0x35f
	.byte	0x38
	.uleb128 0x11
	.long	.LASF84
	.byte	0x9
	.value	0x103
	.long	0x35f
	.byte	0x40
	.uleb128 0x11
	.long	.LASF85
	.byte	0x9
	.value	0x105
	.long	0x35f
	.byte	0x48
	.uleb128 0x11
	.long	.LASF86
	.byte	0x9
	.value	0x106
	.long	0x35f
	.byte	0x50
	.uleb128 0x11
	.long	.LASF87
	.byte	0x9
	.value	0x107
	.long	0x35f
	.byte	0x58
	.uleb128 0x11
	.long	.LASF88
	.byte	0x9
	.value	0x109
	.long	0x540
	.byte	0x60
	.uleb128 0x11
	.long	.LASF89
	.byte	0x9
	.value	0x10b
	.long	0x546
	.byte	0x68
	.uleb128 0x11
	.long	.LASF90
	.byte	0x9
	.value	0x10d
	.long	0x1de
	.byte	0x70
	.uleb128 0x11
	.long	.LASF91
	.byte	0x9
	.value	0x111
	.long	0x1de
	.byte	0x74
	.uleb128 0x11
	.long	.LASF92
	.byte	0x9
	.value	0x113
	.long	0x349
	.byte	0x78
	.uleb128 0x11
	.long	.LASF93
	.byte	0x9
	.value	0x117
	.long	0x334
	.byte	0x80
	.uleb128 0x11
	.long	.LASF94
	.byte	0x9
	.value	0x118
	.long	0x33b
	.byte	0x82
	.uleb128 0x11
	.long	.LASF95
	.byte	0x9
	.value	0x119
	.long	0x54c
	.byte	0x83
	.uleb128 0x11
	.long	.LASF96
	.byte	0x9
	.value	0x11d
	.long	0x55c
	.byte	0x88
	.uleb128 0x11
	.long	.LASF97
	.byte	0x9
	.value	0x126
	.long	0x354
	.byte	0x90
	.uleb128 0x11
	.long	.LASF98
	.byte	0x9
	.value	0x12f
	.long	0x312
	.byte	0x98
	.uleb128 0x11
	.long	.LASF99
	.byte	0x9
	.value	0x130
	.long	0x312
	.byte	0xa0
	.uleb128 0x11
	.long	.LASF100
	.byte	0x9
	.value	0x131
	.long	0x312
	.byte	0xa8
	.uleb128 0x11
	.long	.LASF101
	.byte	0x9
	.value	0x132
	.long	0x312
	.byte	0xb0
	.uleb128 0x11
	.long	.LASF102
	.byte	0x9
	.value	0x133
	.long	0x31b
	.byte	0xb8
	.uleb128 0x11
	.long	.LASF103
	.byte	0x9
	.value	0x135
	.long	0x1de
	.byte	0xc0
	.uleb128 0x11
	.long	.LASF104
	.byte	0x9
	.value	0x137
	.long	0x562
	.byte	0xc4
	.byte	0
	.uleb128 0x14
	.long	0x365
	.long	0x508
	.uleb128 0x15
	.long	0x1e5
	.byte	0x3
	.byte	0
	.uleb128 0x16
	.long	.LASF1050
	.byte	0x9
	.byte	0x9b
	.uleb128 0x4
	.long	.LASF105
	.byte	0x18
	.byte	0x9
	.byte	0xa1
	.long	0x540
	.uleb128 0x8
	.long	.LASF106
	.byte	0x9
	.byte	0xa2
	.long	0x540
	.byte	0
	.uleb128 0x8
	.long	.LASF107
	.byte	0x9
	.byte	0xa3
	.long	0x546
	.byte	0x8
	.uleb128 0x8
	.long	.LASF108
	.byte	0x9
	.byte	0xa7
	.long	0x1de
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x50f
	.uleb128 0x3
	.byte	0x8
	.long	0x377
	.uleb128 0x14
	.long	0x365
	.long	0x55c
	.uleb128 0x15
	.long	0x1e5
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x508
	.uleb128 0x14
	.long	0x365
	.long	0x572
	.uleb128 0x15
	.long	0x1e5
	.byte	0x13
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x578
	.uleb128 0x17
	.long	0x365
	.uleb128 0xd
	.byte	0x8
	.byte	0x7
	.long	.LASF109
	.uleb128 0xd
	.byte	0x8
	.byte	0x5
	.long	.LASF110
	.uleb128 0x18
	.long	.LASF112
	.byte	0x4
	.byte	0xa
	.byte	0x1d
	.long	0x700
	.uleb128 0xf
	.long	.LASF113
	.sleb128 0
	.uleb128 0xf
	.long	.LASF114
	.sleb128 1
	.uleb128 0xf
	.long	.LASF115
	.sleb128 2
	.uleb128 0xf
	.long	.LASF116
	.sleb128 3
	.uleb128 0xf
	.long	.LASF117
	.sleb128 4
	.uleb128 0xf
	.long	.LASF118
	.sleb128 5
	.uleb128 0xf
	.long	.LASF119
	.sleb128 6
	.uleb128 0xf
	.long	.LASF120
	.sleb128 7
	.uleb128 0xf
	.long	.LASF121
	.sleb128 8
	.uleb128 0xf
	.long	.LASF122
	.sleb128 9
	.uleb128 0xf
	.long	.LASF123
	.sleb128 10
	.uleb128 0xf
	.long	.LASF124
	.sleb128 11
	.uleb128 0xf
	.long	.LASF125
	.sleb128 12
	.uleb128 0xf
	.long	.LASF126
	.sleb128 13
	.uleb128 0xf
	.long	.LASF127
	.sleb128 14
	.uleb128 0xf
	.long	.LASF128
	.sleb128 15
	.uleb128 0xf
	.long	.LASF129
	.sleb128 16
	.uleb128 0xf
	.long	.LASF130
	.sleb128 17
	.uleb128 0xf
	.long	.LASF131
	.sleb128 18
	.uleb128 0xf
	.long	.LASF132
	.sleb128 19
	.uleb128 0xf
	.long	.LASF133
	.sleb128 20
	.uleb128 0xf
	.long	.LASF134
	.sleb128 21
	.uleb128 0xf
	.long	.LASF135
	.sleb128 22
	.uleb128 0xf
	.long	.LASF136
	.sleb128 23
	.uleb128 0xf
	.long	.LASF137
	.sleb128 24
	.uleb128 0xf
	.long	.LASF138
	.sleb128 25
	.uleb128 0xf
	.long	.LASF139
	.sleb128 26
	.uleb128 0xf
	.long	.LASF140
	.sleb128 27
	.uleb128 0xf
	.long	.LASF141
	.sleb128 28
	.uleb128 0xf
	.long	.LASF142
	.sleb128 29
	.uleb128 0xf
	.long	.LASF143
	.sleb128 30
	.uleb128 0xf
	.long	.LASF144
	.sleb128 31
	.uleb128 0xf
	.long	.LASF145
	.sleb128 32
	.uleb128 0xf
	.long	.LASF146
	.sleb128 33
	.uleb128 0xf
	.long	.LASF147
	.sleb128 34
	.uleb128 0xf
	.long	.LASF148
	.sleb128 35
	.uleb128 0xf
	.long	.LASF149
	.sleb128 36
	.uleb128 0xf
	.long	.LASF150
	.sleb128 37
	.uleb128 0xf
	.long	.LASF151
	.sleb128 38
	.uleb128 0xf
	.long	.LASF152
	.sleb128 39
	.uleb128 0xf
	.long	.LASF153
	.sleb128 40
	.uleb128 0xf
	.long	.LASF154
	.sleb128 41
	.uleb128 0xf
	.long	.LASF155
	.sleb128 42
	.uleb128 0xf
	.long	.LASF156
	.sleb128 43
	.uleb128 0xf
	.long	.LASF157
	.sleb128 44
	.uleb128 0xf
	.long	.LASF158
	.sleb128 45
	.uleb128 0xf
	.long	.LASF159
	.sleb128 46
	.uleb128 0xf
	.long	.LASF160
	.sleb128 47
	.uleb128 0xf
	.long	.LASF161
	.sleb128 48
	.uleb128 0xf
	.long	.LASF162
	.sleb128 49
	.uleb128 0xf
	.long	.LASF163
	.sleb128 50
	.uleb128 0xf
	.long	.LASF164
	.sleb128 51
	.uleb128 0xf
	.long	.LASF165
	.sleb128 52
	.uleb128 0xf
	.long	.LASF166
	.sleb128 53
	.uleb128 0xf
	.long	.LASF167
	.sleb128 54
	.uleb128 0xf
	.long	.LASF168
	.sleb128 55
	.uleb128 0xf
	.long	.LASF169
	.sleb128 56
	.uleb128 0xf
	.long	.LASF170
	.sleb128 57
	.uleb128 0xf
	.long	.LASF171
	.sleb128 58
	.uleb128 0xf
	.long	.LASF172
	.sleb128 59
	.byte	0
	.uleb128 0x18
	.long	.LASF173
	.byte	0x4
	.byte	0xa
	.byte	0x2c
	.long	0x749
	.uleb128 0xf
	.long	.LASF174
	.sleb128 0
	.uleb128 0xf
	.long	.LASF175
	.sleb128 1
	.uleb128 0xf
	.long	.LASF176
	.sleb128 2
	.uleb128 0xf
	.long	.LASF177
	.sleb128 3
	.uleb128 0xf
	.long	.LASF178
	.sleb128 4
	.uleb128 0xf
	.long	.LASF179
	.sleb128 5
	.uleb128 0xf
	.long	.LASF180
	.sleb128 6
	.uleb128 0xf
	.long	.LASF181
	.sleb128 7
	.uleb128 0xf
	.long	.LASF182
	.sleb128 8
	.uleb128 0xf
	.long	.LASF183
	.sleb128 9
	.byte	0
	.uleb128 0x18
	.long	.LASF184
	.byte	0x4
	.byte	0x4
	.byte	0x54
	.long	0x9b6
	.uleb128 0xf
	.long	.LASF185
	.sleb128 0
	.uleb128 0xf
	.long	.LASF186
	.sleb128 1
	.uleb128 0xf
	.long	.LASF187
	.sleb128 2
	.uleb128 0xf
	.long	.LASF188
	.sleb128 3
	.uleb128 0xf
	.long	.LASF189
	.sleb128 4
	.uleb128 0xf
	.long	.LASF190
	.sleb128 5
	.uleb128 0xf
	.long	.LASF191
	.sleb128 6
	.uleb128 0xf
	.long	.LASF192
	.sleb128 7
	.uleb128 0xf
	.long	.LASF193
	.sleb128 8
	.uleb128 0xf
	.long	.LASF194
	.sleb128 9
	.uleb128 0xf
	.long	.LASF195
	.sleb128 10
	.uleb128 0xf
	.long	.LASF196
	.sleb128 11
	.uleb128 0xf
	.long	.LASF197
	.sleb128 12
	.uleb128 0xf
	.long	.LASF198
	.sleb128 13
	.uleb128 0xf
	.long	.LASF199
	.sleb128 14
	.uleb128 0xf
	.long	.LASF200
	.sleb128 15
	.uleb128 0xf
	.long	.LASF201
	.sleb128 16
	.uleb128 0xf
	.long	.LASF202
	.sleb128 17
	.uleb128 0xf
	.long	.LASF203
	.sleb128 18
	.uleb128 0xf
	.long	.LASF204
	.sleb128 19
	.uleb128 0xf
	.long	.LASF205
	.sleb128 20
	.uleb128 0xf
	.long	.LASF206
	.sleb128 21
	.uleb128 0xf
	.long	.LASF207
	.sleb128 22
	.uleb128 0xf
	.long	.LASF208
	.sleb128 23
	.uleb128 0xf
	.long	.LASF209
	.sleb128 24
	.uleb128 0xf
	.long	.LASF210
	.sleb128 25
	.uleb128 0xf
	.long	.LASF211
	.sleb128 26
	.uleb128 0xf
	.long	.LASF212
	.sleb128 27
	.uleb128 0xf
	.long	.LASF213
	.sleb128 28
	.uleb128 0xf
	.long	.LASF214
	.sleb128 29
	.uleb128 0xf
	.long	.LASF215
	.sleb128 30
	.uleb128 0xf
	.long	.LASF216
	.sleb128 31
	.uleb128 0xf
	.long	.LASF217
	.sleb128 32
	.uleb128 0xf
	.long	.LASF218
	.sleb128 33
	.uleb128 0xf
	.long	.LASF219
	.sleb128 34
	.uleb128 0xf
	.long	.LASF220
	.sleb128 35
	.uleb128 0xf
	.long	.LASF221
	.sleb128 36
	.uleb128 0xf
	.long	.LASF222
	.sleb128 37
	.uleb128 0xf
	.long	.LASF223
	.sleb128 38
	.uleb128 0xf
	.long	.LASF224
	.sleb128 39
	.uleb128 0xf
	.long	.LASF225
	.sleb128 40
	.uleb128 0xf
	.long	.LASF226
	.sleb128 41
	.uleb128 0xf
	.long	.LASF227
	.sleb128 42
	.uleb128 0xf
	.long	.LASF228
	.sleb128 43
	.uleb128 0xf
	.long	.LASF229
	.sleb128 44
	.uleb128 0xf
	.long	.LASF230
	.sleb128 45
	.uleb128 0xf
	.long	.LASF231
	.sleb128 46
	.uleb128 0xf
	.long	.LASF232
	.sleb128 47
	.uleb128 0xf
	.long	.LASF233
	.sleb128 48
	.uleb128 0xf
	.long	.LASF234
	.sleb128 49
	.uleb128 0xf
	.long	.LASF235
	.sleb128 50
	.uleb128 0xf
	.long	.LASF236
	.sleb128 51
	.uleb128 0xf
	.long	.LASF237
	.sleb128 52
	.uleb128 0xf
	.long	.LASF238
	.sleb128 53
	.uleb128 0xf
	.long	.LASF239
	.sleb128 54
	.uleb128 0xf
	.long	.LASF240
	.sleb128 55
	.uleb128 0xf
	.long	.LASF241
	.sleb128 56
	.uleb128 0xf
	.long	.LASF242
	.sleb128 57
	.uleb128 0xf
	.long	.LASF243
	.sleb128 58
	.uleb128 0xf
	.long	.LASF244
	.sleb128 59
	.uleb128 0xf
	.long	.LASF245
	.sleb128 60
	.uleb128 0xf
	.long	.LASF246
	.sleb128 61
	.uleb128 0xf
	.long	.LASF247
	.sleb128 62
	.uleb128 0xf
	.long	.LASF248
	.sleb128 63
	.uleb128 0xf
	.long	.LASF249
	.sleb128 64
	.uleb128 0xf
	.long	.LASF250
	.sleb128 65
	.uleb128 0xf
	.long	.LASF251
	.sleb128 66
	.uleb128 0xf
	.long	.LASF252
	.sleb128 67
	.uleb128 0xf
	.long	.LASF253
	.sleb128 68
	.uleb128 0xf
	.long	.LASF254
	.sleb128 69
	.uleb128 0xf
	.long	.LASF255
	.sleb128 70
	.uleb128 0xf
	.long	.LASF256
	.sleb128 71
	.uleb128 0xf
	.long	.LASF257
	.sleb128 72
	.uleb128 0xf
	.long	.LASF258
	.sleb128 73
	.uleb128 0xf
	.long	.LASF259
	.sleb128 74
	.uleb128 0xf
	.long	.LASF260
	.sleb128 75
	.uleb128 0xf
	.long	.LASF261
	.sleb128 76
	.uleb128 0xf
	.long	.LASF262
	.sleb128 77
	.uleb128 0xf
	.long	.LASF263
	.sleb128 78
	.uleb128 0xf
	.long	.LASF264
	.sleb128 79
	.uleb128 0xf
	.long	.LASF265
	.sleb128 80
	.uleb128 0xf
	.long	.LASF266
	.sleb128 81
	.uleb128 0xf
	.long	.LASF267
	.sleb128 82
	.uleb128 0xf
	.long	.LASF268
	.sleb128 83
	.uleb128 0xf
	.long	.LASF269
	.sleb128 84
	.uleb128 0xf
	.long	.LASF270
	.sleb128 85
	.uleb128 0xf
	.long	.LASF271
	.sleb128 86
	.uleb128 0xf
	.long	.LASF272
	.sleb128 87
	.uleb128 0xf
	.long	.LASF273
	.sleb128 88
	.uleb128 0xf
	.long	.LASF274
	.sleb128 89
	.uleb128 0xf
	.long	.LASF275
	.sleb128 90
	.uleb128 0xf
	.long	.LASF276
	.sleb128 91
	.uleb128 0xf
	.long	.LASF277
	.sleb128 92
	.uleb128 0xf
	.long	.LASF278
	.sleb128 93
	.uleb128 0xf
	.long	.LASF279
	.sleb128 94
	.uleb128 0xf
	.long	.LASF280
	.sleb128 95
	.byte	0
	.uleb128 0x4
	.long	.LASF281
	.byte	0x18
	.byte	0x4
	.byte	0x79
	.long	0xb52
	.uleb128 0x8
	.long	.LASF282
	.byte	0x4
	.byte	0x7b
	.long	0x123
	.byte	0
	.uleb128 0x8
	.long	.LASF24
	.byte	0x4
	.byte	0x7c
	.long	0x123
	.byte	0x8
	.uleb128 0x5
	.long	.LASF0
	.byte	0x4
	.byte	0x7e
	.long	0x30b
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x10
	.uleb128 0x5
	.long	.LASF283
	.byte	0x4
	.byte	0x80
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x10
	.uleb128 0x5
	.long	.LASF284
	.byte	0x4
	.byte	0x81
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x10
	.uleb128 0x5
	.long	.LASF285
	.byte	0x4
	.byte	0x82
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x10
	.uleb128 0x5
	.long	.LASF286
	.byte	0x4
	.byte	0x83
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x10
	.uleb128 0x5
	.long	.LASF287
	.byte	0x4
	.byte	0x84
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x10
	.uleb128 0x5
	.long	.LASF288
	.byte	0x4
	.byte	0x85
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x10
	.uleb128 0x5
	.long	.LASF289
	.byte	0x4
	.byte	0x86
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x10
	.uleb128 0x5
	.long	.LASF290
	.byte	0x4
	.byte	0x87
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x10
	.uleb128 0x5
	.long	.LASF291
	.byte	0x4
	.byte	0x89
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x10
	.uleb128 0x5
	.long	.LASF292
	.byte	0x4
	.byte	0x8a
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x10
	.uleb128 0x5
	.long	.LASF293
	.byte	0x4
	.byte	0x8b
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x10
	.uleb128 0x5
	.long	.LASF294
	.byte	0x4
	.byte	0x8c
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x10
	.uleb128 0x5
	.long	.LASF295
	.byte	0x4
	.byte	0x8d
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x10
	.uleb128 0x5
	.long	.LASF296
	.byte	0x4
	.byte	0x8e
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x10
	.uleb128 0x5
	.long	.LASF297
	.byte	0x4
	.byte	0x8f
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x10
	.uleb128 0x5
	.long	.LASF298
	.byte	0x4
	.byte	0x90
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x10
	.uleb128 0x5
	.long	.LASF299
	.byte	0x4
	.byte	0x92
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x10
	.uleb128 0x5
	.long	.LASF300
	.byte	0x4
	.byte	0x93
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x10
	.uleb128 0x5
	.long	.LASF301
	.byte	0x4
	.byte	0x94
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x10
	.uleb128 0x5
	.long	.LASF302
	.byte	0x4
	.byte	0x95
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x10
	.uleb128 0x5
	.long	.LASF303
	.byte	0x4
	.byte	0x96
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x10
	.uleb128 0x5
	.long	.LASF304
	.byte	0x4
	.byte	0x97
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x5
	.long	.LASF305
	.byte	0x4
	.byte	0x98
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x10
	.uleb128 0x5
	.long	.LASF306
	.byte	0x4
	.byte	0x99
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x10
	.byte	0
	.uleb128 0x19
	.byte	0x10
	.byte	0x4
	.value	0x2c9
	.long	0xb76
	.uleb128 0x1a
	.string	"low"
	.byte	0x4
	.value	0x2ca
	.long	0x326
	.byte	0
	.uleb128 0x11
	.long	.LASF307
	.byte	0x4
	.value	0x2cb
	.long	0x314
	.byte	0x8
	.byte	0
	.uleb128 0x10
	.long	.LASF308
	.byte	0x30
	.byte	0x4
	.value	0x2c1
	.long	0xbab
	.uleb128 0x11
	.long	.LASF16
	.byte	0x4
	.value	0x2c3
	.long	0x9b6
	.byte	0
	.uleb128 0x1a
	.string	"rtl"
	.byte	0x4
	.value	0x2c4
	.long	0x2d
	.byte	0x18
	.uleb128 0x11
	.long	.LASF17
	.byte	0x4
	.value	0x2cc
	.long	0xb52
	.byte	0x20
	.byte	0
	.uleb128 0x1b
	.byte	0x18
	.byte	0xb
	.byte	0x6b
	.long	0xbbe
	.uleb128 0x6
	.string	"r"
	.byte	0xb
	.byte	0x6c
	.long	0xbbe
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	0x314
	.long	0xbce
	.uleb128 0x15
	.long	0x1e5
	.byte	0x2
	.byte	0
	.uleb128 0x7
	.long	.LASF309
	.byte	0xb
	.byte	0x6d
	.long	0xbab
	.uleb128 0x10
	.long	.LASF310
	.byte	0x38
	.byte	0x4
	.value	0x2de
	.long	0xc0e
	.uleb128 0x11
	.long	.LASF16
	.byte	0x4
	.value	0x2e0
	.long	0x9b6
	.byte	0
	.uleb128 0x1a
	.string	"rtl"
	.byte	0x4
	.value	0x2e1
	.long	0x2d
	.byte	0x18
	.uleb128 0x11
	.long	.LASF18
	.byte	0x4
	.value	0x2e2
	.long	0xbce
	.byte	0x20
	.byte	0
	.uleb128 0x10
	.long	.LASF311
	.byte	0x30
	.byte	0x4
	.value	0x2e9
	.long	0xc50
	.uleb128 0x11
	.long	.LASF16
	.byte	0x4
	.value	0x2eb
	.long	0x9b6
	.byte	0
	.uleb128 0x1a
	.string	"rtl"
	.byte	0x4
	.value	0x2ec
	.long	0x2d
	.byte	0x18
	.uleb128 0x11
	.long	.LASF312
	.byte	0x4
	.value	0x2ed
	.long	0x1de
	.byte	0x20
	.uleb128 0x11
	.long	.LASF313
	.byte	0x4
	.value	0x2ee
	.long	0x572
	.byte	0x28
	.byte	0
	.uleb128 0x10
	.long	.LASF314
	.byte	0x30
	.byte	0x4
	.value	0x2f5
	.long	0xc92
	.uleb128 0x11
	.long	.LASF16
	.byte	0x4
	.value	0x2f7
	.long	0x9b6
	.byte	0
	.uleb128 0x1a
	.string	"rtl"
	.byte	0x4
	.value	0x2f8
	.long	0x2d
	.byte	0x18
	.uleb128 0x11
	.long	.LASF315
	.byte	0x4
	.value	0x2f9
	.long	0x123
	.byte	0x20
	.uleb128 0x11
	.long	.LASF316
	.byte	0x4
	.value	0x2fa
	.long	0x123
	.byte	0x28
	.byte	0
	.uleb128 0x10
	.long	.LASF317
	.byte	0x28
	.byte	0x4
	.value	0x300
	.long	0xcc7
	.uleb128 0x11
	.long	.LASF16
	.byte	0x4
	.value	0x302
	.long	0x9b6
	.byte	0
	.uleb128 0x1a
	.string	"rtl"
	.byte	0x4
	.value	0x303
	.long	0x2d
	.byte	0x18
	.uleb128 0x11
	.long	.LASF318
	.byte	0x4
	.value	0x304
	.long	0x123
	.byte	0x20
	.byte	0
	.uleb128 0x4
	.long	.LASF319
	.byte	0x10
	.byte	0xc
	.byte	0x1a
	.long	0xcec
	.uleb128 0x6
	.string	"len"
	.byte	0xc
	.byte	0x1c
	.long	0x30b
	.byte	0
	.uleb128 0x6
	.string	"str"
	.byte	0xc
	.byte	0x1d
	.long	0xcec
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0xcf2
	.uleb128 0x17
	.long	0x32d
	.uleb128 0x10
	.long	.LASF320
	.byte	0x28
	.byte	0x4
	.value	0x317
	.long	0xd1e
	.uleb128 0x11
	.long	.LASF16
	.byte	0x4
	.value	0x319
	.long	0x9b6
	.byte	0
	.uleb128 0x1a
	.string	"id"
	.byte	0x4
	.value	0x31a
	.long	0xcc7
	.byte	0x18
	.byte	0
	.uleb128 0x10
	.long	.LASF321
	.byte	0x28
	.byte	0x4
	.value	0x321
	.long	0xd53
	.uleb128 0x11
	.long	.LASF16
	.byte	0x4
	.value	0x323
	.long	0x9b6
	.byte	0
	.uleb128 0x11
	.long	.LASF322
	.byte	0x4
	.value	0x324
	.long	0x123
	.byte	0x18
	.uleb128 0x11
	.long	.LASF323
	.byte	0x4
	.value	0x325
	.long	0x123
	.byte	0x20
	.byte	0
	.uleb128 0x10
	.long	.LASF324
	.byte	0x28
	.byte	0x4
	.value	0x32e
	.long	0xd86
	.uleb128 0x11
	.long	.LASF16
	.byte	0x4
	.value	0x330
	.long	0x9b6
	.byte	0
	.uleb128 0x11
	.long	.LASF312
	.byte	0x4
	.value	0x331
	.long	0x1de
	.byte	0x18
	.uleb128 0x1a
	.string	"a"
	.byte	0x4
	.value	0x332
	.long	0xd86
	.byte	0x20
	.byte	0
	.uleb128 0x14
	.long	0x123
	.long	0xd96
	.uleb128 0x15
	.long	0x1e5
	.byte	0
	.byte	0
	.uleb128 0x10
	.long	.LASF325
	.byte	0x28
	.byte	0x4
	.value	0x36f
	.long	0xdcb
	.uleb128 0x11
	.long	.LASF16
	.byte	0x4
	.value	0x371
	.long	0x9b6
	.byte	0
	.uleb128 0x11
	.long	.LASF326
	.byte	0x4
	.value	0x372
	.long	0x1de
	.byte	0x18
	.uleb128 0x11
	.long	.LASF327
	.byte	0x4
	.value	0x373
	.long	0xd86
	.byte	0x20
	.byte	0
	.uleb128 0x10
	.long	.LASF328
	.byte	0x50
	.byte	0x4
	.value	0x3a3
	.long	0xe64
	.uleb128 0x11
	.long	.LASF16
	.byte	0x4
	.value	0x3a5
	.long	0x9b6
	.byte	0
	.uleb128 0x1c
	.long	.LASF329
	.byte	0x4
	.value	0x3a7
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x18
	.uleb128 0x1c
	.long	.LASF330
	.byte	0x4
	.value	0x3a8
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x18
	.uleb128 0x1c
	.long	.LASF331
	.byte	0x4
	.value	0x3a9
	.long	0x30b
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0x18
	.uleb128 0x11
	.long	.LASF332
	.byte	0x4
	.value	0x3ab
	.long	0x123
	.byte	0x20
	.uleb128 0x11
	.long	.LASF333
	.byte	0x4
	.value	0x3ac
	.long	0x123
	.byte	0x28
	.uleb128 0x11
	.long	.LASF334
	.byte	0x4
	.value	0x3ad
	.long	0x123
	.byte	0x30
	.uleb128 0x11
	.long	.LASF335
	.byte	0x4
	.value	0x3ae
	.long	0x123
	.byte	0x38
	.uleb128 0x11
	.long	.LASF336
	.byte	0x4
	.value	0x3af
	.long	0x123
	.byte	0x40
	.uleb128 0x11
	.long	.LASF337
	.byte	0x4
	.value	0x3b0
	.long	0x123
	.byte	0x48
	.byte	0
	.uleb128 0x1d
	.byte	0x8
	.byte	0x4
	.value	0x4d8
	.long	0xe86
	.uleb128 0xa
	.long	.LASF338
	.byte	0x4
	.value	0x4d8
	.long	0x1de
	.uleb128 0xa
	.long	.LASF313
	.byte	0x4
	.value	0x4d8
	.long	0x35f
	.byte	0
	.uleb128 0x10
	.long	.LASF339
	.byte	0xa8
	.byte	0x4
	.value	0x4b8
	.long	0x109b
	.uleb128 0x11
	.long	.LASF16
	.byte	0x4
	.value	0x4ba
	.long	0x9b6
	.byte	0
	.uleb128 0x11
	.long	.LASF340
	.byte	0x4
	.value	0x4bb
	.long	0x123
	.byte	0x18
	.uleb128 0x11
	.long	.LASF341
	.byte	0x4
	.value	0x4bc
	.long	0x123
	.byte	0x20
	.uleb128 0x11
	.long	.LASF342
	.byte	0x4
	.value	0x4bd
	.long	0x123
	.byte	0x28
	.uleb128 0x11
	.long	.LASF343
	.byte	0x4
	.value	0x4be
	.long	0x123
	.byte	0x30
	.uleb128 0x1a
	.string	"uid"
	.byte	0x4
	.value	0x4bf
	.long	0x30b
	.byte	0x38
	.uleb128 0x1c
	.long	.LASF344
	.byte	0x4
	.value	0x4c1
	.long	0x30b
	.byte	0x4
	.byte	0x9
	.byte	0x17
	.byte	0x3c
	.uleb128 0x1c
	.long	.LASF1
	.byte	0x4
	.value	0x4c2
	.long	0x30b
	.byte	0x4
	.byte	0x7
	.byte	0x10
	.byte	0x3c
	.uleb128 0x1c
	.long	.LASF345
	.byte	0x4
	.value	0x4c4
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x3c
	.uleb128 0x1c
	.long	.LASF346
	.byte	0x4
	.value	0x4c5
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x3c
	.uleb128 0x1c
	.long	.LASF347
	.byte	0x4
	.value	0x4c6
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x3c
	.uleb128 0x1c
	.long	.LASF348
	.byte	0x4
	.value	0x4c7
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x3c
	.uleb128 0x1c
	.long	.LASF349
	.byte	0x4
	.value	0x4c8
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x3c
	.uleb128 0x1c
	.long	.LASF350
	.byte	0x4
	.value	0x4c9
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x3c
	.uleb128 0x1c
	.long	.LASF351
	.byte	0x4
	.value	0x4ca
	.long	0x30b
	.byte	0x4
	.byte	0x2
	.byte	0x8
	.byte	0x3c
	.uleb128 0x1c
	.long	.LASF299
	.byte	0x4
	.value	0x4cc
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x3c
	.uleb128 0x1c
	.long	.LASF300
	.byte	0x4
	.value	0x4cd
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x3c
	.uleb128 0x1c
	.long	.LASF301
	.byte	0x4
	.value	0x4ce
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x3c
	.uleb128 0x1c
	.long	.LASF302
	.byte	0x4
	.value	0x4cf
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x3c
	.uleb128 0x1c
	.long	.LASF303
	.byte	0x4
	.value	0x4d0
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x3c
	.uleb128 0x1c
	.long	.LASF304
	.byte	0x4
	.value	0x4d1
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x3c
	.uleb128 0x1c
	.long	.LASF305
	.byte	0x4
	.value	0x4d2
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x3c
	.uleb128 0x1c
	.long	.LASF352
	.byte	0x4
	.value	0x4d3
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x3c
	.uleb128 0x11
	.long	.LASF353
	.byte	0x4
	.value	0x4d5
	.long	0x30b
	.byte	0x40
	.uleb128 0x11
	.long	.LASF354
	.byte	0x4
	.value	0x4d6
	.long	0x123
	.byte	0x48
	.uleb128 0x11
	.long	.LASF355
	.byte	0x4
	.value	0x4d7
	.long	0x123
	.byte	0x50
	.uleb128 0x11
	.long	.LASF356
	.byte	0x4
	.value	0x4d8
	.long	0xe64
	.byte	0x58
	.uleb128 0x11
	.long	.LASF357
	.byte	0x4
	.value	0x4d9
	.long	0x123
	.byte	0x60
	.uleb128 0x11
	.long	.LASF358
	.byte	0x4
	.value	0x4da
	.long	0x123
	.byte	0x68
	.uleb128 0x11
	.long	.LASF359
	.byte	0x4
	.value	0x4db
	.long	0x123
	.byte	0x70
	.uleb128 0x11
	.long	.LASF360
	.byte	0x4
	.value	0x4dc
	.long	0x123
	.byte	0x78
	.uleb128 0x11
	.long	.LASF361
	.byte	0x4
	.value	0x4dd
	.long	0x123
	.byte	0x80
	.uleb128 0x11
	.long	.LASF362
	.byte	0x4
	.value	0x4de
	.long	0x123
	.byte	0x88
	.uleb128 0x11
	.long	.LASF363
	.byte	0x4
	.value	0x4df
	.long	0x123
	.byte	0x90
	.uleb128 0x11
	.long	.LASF364
	.byte	0x4
	.value	0x4e0
	.long	0x314
	.byte	0x98
	.uleb128 0x11
	.long	.LASF365
	.byte	0x4
	.value	0x4e2
	.long	0x10a0
	.byte	0xa0
	.byte	0
	.uleb128 0x1e
	.long	.LASF483
	.uleb128 0x3
	.byte	0x8
	.long	0x109b
	.uleb128 0x19
	.byte	0x4
	.byte	0x4
	.value	0x717
	.long	0x10d0
	.uleb128 0x1c
	.long	.LASF353
	.byte	0x4
	.value	0x717
	.long	0x30b
	.byte	0x4
	.byte	0x18
	.byte	0x8
	.byte	0
	.uleb128 0x1c
	.long	.LASF366
	.byte	0x4
	.value	0x717
	.long	0x30b
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1d
	.byte	0x8
	.byte	0x4
	.value	0x70e
	.long	0x10f8
	.uleb128 0xb
	.string	"f"
	.byte	0x4
	.value	0x711
	.long	0x749
	.uleb128 0xb
	.string	"i"
	.byte	0x4
	.value	0x714
	.long	0x314
	.uleb128 0xb
	.string	"a"
	.byte	0x4
	.value	0x717
	.long	0x10a6
	.byte	0
	.uleb128 0x1d
	.byte	0x8
	.byte	0x4
	.value	0x72c
	.long	0x112a
	.uleb128 0xb
	.string	"f"
	.byte	0x4
	.value	0x72d
	.long	0x15aa
	.uleb128 0xb
	.string	"r"
	.byte	0x4
	.value	0x72e
	.long	0x2d
	.uleb128 0xb
	.string	"t"
	.byte	0x4
	.value	0x72f
	.long	0x123
	.uleb128 0xb
	.string	"i"
	.byte	0x4
	.value	0x730
	.long	0x1de
	.byte	0
	.uleb128 0x1f
	.long	.LASF367
	.value	0x1b0
	.byte	0xd
	.byte	0xae
	.long	0x15aa
	.uleb128 0x6
	.string	"eh"
	.byte	0xd
	.byte	0xb0
	.long	0x2541
	.byte	0
	.uleb128 0x8
	.long	.LASF368
	.byte	0xd
	.byte	0xb1
	.long	0x254c
	.byte	0x8
	.uleb128 0x8
	.long	.LASF369
	.byte	0xd
	.byte	0xb2
	.long	0x2552
	.byte	0x10
	.uleb128 0x8
	.long	.LASF370
	.byte	0xd
	.byte	0xb3
	.long	0x2558
	.byte	0x18
	.uleb128 0x8
	.long	.LASF371
	.byte	0xd
	.byte	0xb4
	.long	0x2563
	.byte	0x20
	.uleb128 0x8
	.long	.LASF357
	.byte	0xd
	.byte	0xb9
	.long	0x572
	.byte	0x28
	.uleb128 0x8
	.long	.LASF23
	.byte	0xd
	.byte	0xbc
	.long	0x123
	.byte	0x30
	.uleb128 0x8
	.long	.LASF372
	.byte	0xd
	.byte	0xbf
	.long	0x15aa
	.byte	0x38
	.uleb128 0x8
	.long	.LASF373
	.byte	0xd
	.byte	0xc4
	.long	0x1de
	.byte	0x40
	.uleb128 0x8
	.long	.LASF374
	.byte	0xd
	.byte	0xc9
	.long	0x1de
	.byte	0x44
	.uleb128 0x8
	.long	.LASF375
	.byte	0xd
	.byte	0xce
	.long	0x1de
	.byte	0x48
	.uleb128 0x8
	.long	.LASF376
	.byte	0xd
	.byte	0xd2
	.long	0x1de
	.byte	0x4c
	.uleb128 0x8
	.long	.LASF377
	.byte	0xd
	.byte	0xd6
	.long	0x2d
	.byte	0x50
	.uleb128 0x8
	.long	.LASF378
	.byte	0xd
	.byte	0xda
	.long	0x2ff
	.byte	0x58
	.uleb128 0x8
	.long	.LASF379
	.byte	0xd
	.byte	0xe0
	.long	0x2d
	.byte	0x78
	.uleb128 0x8
	.long	.LASF380
	.byte	0xd
	.byte	0xe3
	.long	0x2d
	.byte	0x80
	.uleb128 0x8
	.long	.LASF381
	.byte	0xd
	.byte	0xe7
	.long	0x572
	.byte	0x88
	.uleb128 0x8
	.long	.LASF382
	.byte	0xd
	.byte	0xeb
	.long	0x256e
	.byte	0x90
	.uleb128 0x8
	.long	.LASF383
	.byte	0xd
	.byte	0xee
	.long	0x1de
	.byte	0x98
	.uleb128 0x8
	.long	.LASF384
	.byte	0xd
	.byte	0xf3
	.long	0x123
	.byte	0xa0
	.uleb128 0x8
	.long	.LASF385
	.byte	0xd
	.byte	0xf9
	.long	0x2d
	.byte	0xa8
	.uleb128 0x8
	.long	.LASF386
	.byte	0xd
	.byte	0xfd
	.long	0x2d
	.byte	0xb0
	.uleb128 0x11
	.long	.LASF387
	.byte	0xd
	.value	0x102
	.long	0x2d
	.byte	0xb8
	.uleb128 0x11
	.long	.LASF388
	.byte	0xd
	.value	0x108
	.long	0x2d
	.byte	0xc0
	.uleb128 0x11
	.long	.LASF389
	.byte	0xd
	.value	0x10d
	.long	0x2d
	.byte	0xc8
	.uleb128 0x11
	.long	.LASF390
	.byte	0xd
	.value	0x111
	.long	0x2d
	.byte	0xd0
	.uleb128 0x11
	.long	.LASF391
	.byte	0xd
	.value	0x115
	.long	0x2d
	.byte	0xd8
	.uleb128 0x11
	.long	.LASF392
	.byte	0xd
	.value	0x118
	.long	0x123
	.byte	0xe0
	.uleb128 0x11
	.long	.LASF393
	.byte	0xd
	.value	0x11c
	.long	0x2d
	.byte	0xe8
	.uleb128 0x11
	.long	.LASF394
	.byte	0xd
	.value	0x11f
	.long	0x2d
	.byte	0xf0
	.uleb128 0x11
	.long	.LASF395
	.byte	0xd
	.value	0x125
	.long	0x2d
	.byte	0xf8
	.uleb128 0x20
	.long	.LASF396
	.byte	0xd
	.value	0x12a
	.long	0x2d
	.value	0x100
	.uleb128 0x20
	.long	.LASF397
	.byte	0xd
	.value	0x12f
	.long	0x314
	.value	0x108
	.uleb128 0x20
	.long	.LASF398
	.byte	0xd
	.value	0x134
	.long	0x123
	.value	0x110
	.uleb128 0x20
	.long	.LASF399
	.byte	0xd
	.value	0x13d
	.long	0x123
	.value	0x118
	.uleb128 0x20
	.long	.LASF400
	.byte	0xd
	.value	0x140
	.long	0x2d
	.value	0x120
	.uleb128 0x20
	.long	.LASF401
	.byte	0xd
	.value	0x144
	.long	0x2d
	.value	0x128
	.uleb128 0x20
	.long	.LASF402
	.byte	0xd
	.value	0x148
	.long	0x30b
	.value	0x130
	.uleb128 0x20
	.long	.LASF403
	.byte	0xd
	.value	0x14e
	.long	0x234a
	.value	0x138
	.uleb128 0x20
	.long	.LASF404
	.byte	0xd
	.value	0x151
	.long	0x2579
	.value	0x140
	.uleb128 0x20
	.long	.LASF405
	.byte	0xd
	.value	0x154
	.long	0x1de
	.value	0x148
	.uleb128 0x20
	.long	.LASF406
	.byte	0xd
	.value	0x157
	.long	0x1de
	.value	0x14c
	.uleb128 0x20
	.long	.LASF407
	.byte	0xd
	.value	0x15d
	.long	0x1de
	.value	0x150
	.uleb128 0x20
	.long	.LASF408
	.byte	0xd
	.value	0x161
	.long	0x23e3
	.value	0x158
	.uleb128 0x20
	.long	.LASF409
	.byte	0xd
	.value	0x164
	.long	0x1de
	.value	0x160
	.uleb128 0x20
	.long	.LASF410
	.byte	0xd
	.value	0x165
	.long	0x1de
	.value	0x164
	.uleb128 0x20
	.long	.LASF411
	.byte	0xd
	.value	0x167
	.long	0x312
	.value	0x168
	.uleb128 0x20
	.long	.LASF412
	.byte	0xd
	.value	0x168
	.long	0x123
	.value	0x170
	.uleb128 0x20
	.long	.LASF413
	.byte	0xd
	.value	0x16b
	.long	0x2d
	.value	0x178
	.uleb128 0x20
	.long	.LASF414
	.byte	0xd
	.value	0x16d
	.long	0x1de
	.value	0x180
	.uleb128 0x20
	.long	.LASF415
	.byte	0xd
	.value	0x170
	.long	0x1de
	.value	0x184
	.uleb128 0x20
	.long	.LASF416
	.byte	0xd
	.value	0x175
	.long	0x2584
	.value	0x188
	.uleb128 0x20
	.long	.LASF417
	.byte	0xd
	.value	0x177
	.long	0x1de
	.value	0x190
	.uleb128 0x20
	.long	.LASF418
	.byte	0xd
	.value	0x179
	.long	0x1de
	.value	0x194
	.uleb128 0x20
	.long	.LASF419
	.byte	0xd
	.value	0x17c
	.long	0x258f
	.value	0x198
	.uleb128 0x20
	.long	.LASF420
	.byte	0xd
	.value	0x182
	.long	0x2d
	.value	0x1a0
	.uleb128 0x21
	.long	.LASF421
	.byte	0xd
	.value	0x188
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.value	0x1a8
	.uleb128 0x21
	.long	.LASF422
	.byte	0xd
	.value	0x18c
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.value	0x1a8
	.uleb128 0x21
	.long	.LASF423
	.byte	0xd
	.value	0x18f
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.value	0x1a8
	.uleb128 0x21
	.long	.LASF424
	.byte	0xd
	.value	0x192
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.value	0x1a8
	.uleb128 0x21
	.long	.LASF425
	.byte	0xd
	.value	0x195
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.value	0x1a8
	.uleb128 0x21
	.long	.LASF426
	.byte	0xd
	.value	0x198
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.value	0x1a8
	.uleb128 0x21
	.long	.LASF427
	.byte	0xd
	.value	0x19c
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.value	0x1a8
	.uleb128 0x21
	.long	.LASF428
	.byte	0xd
	.value	0x19f
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.value	0x1a8
	.uleb128 0x21
	.long	.LASF429
	.byte	0xd
	.value	0x1a3
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.value	0x1a8
	.uleb128 0x21
	.long	.LASF430
	.byte	0xd
	.value	0x1a7
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.value	0x1a8
	.uleb128 0x21
	.long	.LASF431
	.byte	0xd
	.value	0x1aa
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.value	0x1a8
	.uleb128 0x21
	.long	.LASF432
	.byte	0xd
	.value	0x1ad
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.value	0x1a8
	.uleb128 0x21
	.long	.LASF433
	.byte	0xd
	.value	0x1b2
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.value	0x1a8
	.uleb128 0x21
	.long	.LASF434
	.byte	0xd
	.value	0x1b6
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.value	0x1a8
	.uleb128 0x21
	.long	.LASF435
	.byte	0xd
	.value	0x1b9
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.value	0x1a8
	.uleb128 0x21
	.long	.LASF436
	.byte	0xd
	.value	0x1bd
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.value	0x1a8
	.uleb128 0x21
	.long	.LASF437
	.byte	0xd
	.value	0x1c1
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.value	0x1a8
	.uleb128 0x21
	.long	.LASF438
	.byte	0xd
	.value	0x1c5
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.value	0x1a8
	.uleb128 0x21
	.long	.LASF439
	.byte	0xd
	.value	0x1cb
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.value	0x1a8
	.uleb128 0x21
	.long	.LASF440
	.byte	0xd
	.value	0x1d4
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.value	0x1a8
	.uleb128 0x21
	.long	.LASF441
	.byte	0xd
	.value	0x1d7
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.value	0x1a8
	.uleb128 0x21
	.long	.LASF442
	.byte	0xd
	.value	0x1da
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.value	0x1a8
	.uleb128 0x21
	.long	.LASF443
	.byte	0xd
	.value	0x1dd
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.value	0x1a8
	.uleb128 0x21
	.long	.LASF444
	.byte	0xd
	.value	0x1e0
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.value	0x1a8
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x112a
	.uleb128 0x10
	.long	.LASF445
	.byte	0xd0
	.byte	0x4
	.value	0x6dc
	.long	0x1934
	.uleb128 0x11
	.long	.LASF16
	.byte	0x4
	.value	0x6de
	.long	0x9b6
	.byte	0
	.uleb128 0x11
	.long	.LASF446
	.byte	0x4
	.value	0x6df
	.long	0x572
	.byte	0x18
	.uleb128 0x11
	.long	.LASF447
	.byte	0x4
	.value	0x6e0
	.long	0x1de
	.byte	0x20
	.uleb128 0x1a
	.string	"uid"
	.byte	0x4
	.value	0x6e1
	.long	0x30b
	.byte	0x24
	.uleb128 0x11
	.long	.LASF341
	.byte	0x4
	.value	0x6e2
	.long	0x123
	.byte	0x28
	.uleb128 0x1c
	.long	.LASF1
	.byte	0x4
	.value	0x6e3
	.long	0x30b
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x30
	.uleb128 0x1c
	.long	.LASF448
	.byte	0x4
	.value	0x6e5
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x30
	.uleb128 0x1c
	.long	.LASF449
	.byte	0x4
	.value	0x6e6
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x30
	.uleb128 0x1c
	.long	.LASF450
	.byte	0x4
	.value	0x6e7
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x30
	.uleb128 0x1c
	.long	.LASF451
	.byte	0x4
	.value	0x6e8
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x30
	.uleb128 0x1c
	.long	.LASF452
	.byte	0x4
	.value	0x6e9
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x30
	.uleb128 0x1c
	.long	.LASF453
	.byte	0x4
	.value	0x6ea
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x30
	.uleb128 0x1c
	.long	.LASF454
	.byte	0x4
	.value	0x6eb
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x30
	.uleb128 0x1c
	.long	.LASF330
	.byte	0x4
	.value	0x6ec
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x30
	.uleb128 0x1c
	.long	.LASF455
	.byte	0x4
	.value	0x6ee
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x30
	.uleb128 0x1c
	.long	.LASF456
	.byte	0x4
	.value	0x6ef
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x30
	.uleb128 0x1c
	.long	.LASF457
	.byte	0x4
	.value	0x6f0
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x30
	.uleb128 0x1c
	.long	.LASF458
	.byte	0x4
	.value	0x6f1
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x30
	.uleb128 0x1c
	.long	.LASF459
	.byte	0x4
	.value	0x6f2
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x30
	.uleb128 0x1c
	.long	.LASF460
	.byte	0x4
	.value	0x6f3
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x30
	.uleb128 0x1c
	.long	.LASF461
	.byte	0x4
	.value	0x6f4
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x30
	.uleb128 0x1c
	.long	.LASF462
	.byte	0x4
	.value	0x6f5
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x30
	.uleb128 0x1c
	.long	.LASF463
	.byte	0x4
	.value	0x6f7
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x30
	.uleb128 0x1c
	.long	.LASF464
	.byte	0x4
	.value	0x6f8
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x30
	.uleb128 0x1c
	.long	.LASF465
	.byte	0x4
	.value	0x6f9
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x30
	.uleb128 0x1c
	.long	.LASF466
	.byte	0x4
	.value	0x6fa
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x30
	.uleb128 0x1c
	.long	.LASF467
	.byte	0x4
	.value	0x6fb
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x30
	.uleb128 0x1c
	.long	.LASF468
	.byte	0x4
	.value	0x6fc
	.long	0x30b
	.byte	0x4
	.byte	0x2
	.byte	0x1
	.byte	0x30
	.uleb128 0x1c
	.long	.LASF469
	.byte	0x4
	.value	0x6fd
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x30
	.uleb128 0x1c
	.long	.LASF351
	.byte	0x4
	.value	0x6ff
	.long	0x30b
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0x34
	.uleb128 0x1c
	.long	.LASF470
	.byte	0x4
	.value	0x700
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x34
	.uleb128 0x1c
	.long	.LASF352
	.byte	0x4
	.value	0x701
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x34
	.uleb128 0x1c
	.long	.LASF471
	.byte	0x4
	.value	0x702
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x34
	.uleb128 0x1c
	.long	.LASF299
	.byte	0x4
	.value	0x705
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x34
	.uleb128 0x1c
	.long	.LASF300
	.byte	0x4
	.value	0x706
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x34
	.uleb128 0x1c
	.long	.LASF301
	.byte	0x4
	.value	0x707
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x34
	.uleb128 0x1c
	.long	.LASF302
	.byte	0x4
	.value	0x708
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x34
	.uleb128 0x1c
	.long	.LASF303
	.byte	0x4
	.value	0x709
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x34
	.uleb128 0x1c
	.long	.LASF304
	.byte	0x4
	.value	0x70a
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x34
	.uleb128 0x1c
	.long	.LASF305
	.byte	0x4
	.value	0x70b
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x34
	.uleb128 0x1c
	.long	.LASF472
	.byte	0x4
	.value	0x70c
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x34
	.uleb128 0x1a
	.string	"u1"
	.byte	0x4
	.value	0x718
	.long	0x10d0
	.byte	0x38
	.uleb128 0x11
	.long	.LASF342
	.byte	0x4
	.value	0x71a
	.long	0x123
	.byte	0x40
	.uleb128 0x11
	.long	.LASF357
	.byte	0x4
	.value	0x71b
	.long	0x123
	.byte	0x48
	.uleb128 0x11
	.long	.LASF363
	.byte	0x4
	.value	0x71c
	.long	0x123
	.byte	0x50
	.uleb128 0x11
	.long	.LASF473
	.byte	0x4
	.value	0x71d
	.long	0x123
	.byte	0x58
	.uleb128 0x11
	.long	.LASF474
	.byte	0x4
	.value	0x71e
	.long	0x123
	.byte	0x60
	.uleb128 0x11
	.long	.LASF475
	.byte	0x4
	.value	0x71f
	.long	0x123
	.byte	0x68
	.uleb128 0x11
	.long	.LASF335
	.byte	0x4
	.value	0x720
	.long	0x123
	.byte	0x70
	.uleb128 0x11
	.long	.LASF476
	.byte	0x4
	.value	0x721
	.long	0x123
	.byte	0x78
	.uleb128 0x11
	.long	.LASF477
	.byte	0x4
	.value	0x722
	.long	0x123
	.byte	0x80
	.uleb128 0x11
	.long	.LASF343
	.byte	0x4
	.value	0x723
	.long	0x123
	.byte	0x88
	.uleb128 0x1a
	.string	"rtl"
	.byte	0x4
	.value	0x724
	.long	0x2d
	.byte	0x90
	.uleb128 0x11
	.long	.LASF478
	.byte	0x4
	.value	0x725
	.long	0x2d
	.byte	0x98
	.uleb128 0x1a
	.string	"u2"
	.byte	0x4
	.value	0x731
	.long	0x10f8
	.byte	0xa0
	.uleb128 0x11
	.long	.LASF479
	.byte	0x4
	.value	0x734
	.long	0x123
	.byte	0xa8
	.uleb128 0x11
	.long	.LASF480
	.byte	0x4
	.value	0x738
	.long	0x123
	.byte	0xb0
	.uleb128 0x11
	.long	.LASF481
	.byte	0x4
	.value	0x73a
	.long	0x123
	.byte	0xb8
	.uleb128 0x11
	.long	.LASF482
	.byte	0x4
	.value	0x73b
	.long	0x314
	.byte	0xc0
	.uleb128 0x11
	.long	.LASF365
	.byte	0x4
	.value	0x73d
	.long	0x1939
	.byte	0xc8
	.byte	0
	.uleb128 0x1e
	.long	.LASF484
	.uleb128 0x3
	.byte	0x8
	.long	0x1934
	.uleb128 0xe
	.long	.LASF485
	.byte	0x4
	.byte	0x4
	.value	0x757
	.long	0x1a85
	.uleb128 0xf
	.long	.LASF486
	.sleb128 0
	.uleb128 0xf
	.long	.LASF487
	.sleb128 1
	.uleb128 0xf
	.long	.LASF488
	.sleb128 2
	.uleb128 0xf
	.long	.LASF489
	.sleb128 3
	.uleb128 0xf
	.long	.LASF490
	.sleb128 4
	.uleb128 0xf
	.long	.LASF491
	.sleb128 5
	.uleb128 0xf
	.long	.LASF492
	.sleb128 6
	.uleb128 0xf
	.long	.LASF493
	.sleb128 7
	.uleb128 0xf
	.long	.LASF494
	.sleb128 8
	.uleb128 0xf
	.long	.LASF495
	.sleb128 9
	.uleb128 0xf
	.long	.LASF496
	.sleb128 10
	.uleb128 0xf
	.long	.LASF497
	.sleb128 11
	.uleb128 0xf
	.long	.LASF498
	.sleb128 12
	.uleb128 0xf
	.long	.LASF499
	.sleb128 13
	.uleb128 0xf
	.long	.LASF500
	.sleb128 14
	.uleb128 0xf
	.long	.LASF501
	.sleb128 15
	.uleb128 0xf
	.long	.LASF502
	.sleb128 16
	.uleb128 0xf
	.long	.LASF503
	.sleb128 17
	.uleb128 0xf
	.long	.LASF504
	.sleb128 18
	.uleb128 0xf
	.long	.LASF505
	.sleb128 19
	.uleb128 0xf
	.long	.LASF506
	.sleb128 20
	.uleb128 0xf
	.long	.LASF507
	.sleb128 21
	.uleb128 0xf
	.long	.LASF508
	.sleb128 22
	.uleb128 0xf
	.long	.LASF509
	.sleb128 23
	.uleb128 0xf
	.long	.LASF510
	.sleb128 24
	.uleb128 0xf
	.long	.LASF511
	.sleb128 25
	.uleb128 0xf
	.long	.LASF512
	.sleb128 26
	.uleb128 0xf
	.long	.LASF513
	.sleb128 27
	.uleb128 0xf
	.long	.LASF514
	.sleb128 28
	.uleb128 0xf
	.long	.LASF515
	.sleb128 29
	.uleb128 0xf
	.long	.LASF516
	.sleb128 30
	.uleb128 0xf
	.long	.LASF517
	.sleb128 31
	.uleb128 0xf
	.long	.LASF518
	.sleb128 32
	.uleb128 0xf
	.long	.LASF519
	.sleb128 33
	.uleb128 0xf
	.long	.LASF520
	.sleb128 34
	.uleb128 0xf
	.long	.LASF521
	.sleb128 35
	.uleb128 0xf
	.long	.LASF522
	.sleb128 36
	.uleb128 0xf
	.long	.LASF523
	.sleb128 37
	.uleb128 0xf
	.long	.LASF524
	.sleb128 38
	.uleb128 0xf
	.long	.LASF525
	.sleb128 39
	.uleb128 0xf
	.long	.LASF526
	.sleb128 40
	.uleb128 0xf
	.long	.LASF527
	.sleb128 41
	.uleb128 0xf
	.long	.LASF528
	.sleb128 42
	.uleb128 0xf
	.long	.LASF529
	.sleb128 43
	.uleb128 0xf
	.long	.LASF530
	.sleb128 44
	.uleb128 0xf
	.long	.LASF531
	.sleb128 45
	.uleb128 0xf
	.long	.LASF532
	.sleb128 46
	.uleb128 0xf
	.long	.LASF533
	.sleb128 47
	.uleb128 0xf
	.long	.LASF534
	.sleb128 48
	.uleb128 0xf
	.long	.LASF535
	.sleb128 49
	.uleb128 0xf
	.long	.LASF536
	.sleb128 50
	.uleb128 0xf
	.long	.LASF537
	.sleb128 51
	.byte	0
	.uleb128 0xe
	.long	.LASF538
	.byte	0x4
	.byte	0x4
	.value	0x7e4
	.long	0x1adb
	.uleb128 0xf
	.long	.LASF539
	.sleb128 0
	.uleb128 0xf
	.long	.LASF540
	.sleb128 1
	.uleb128 0xf
	.long	.LASF541
	.sleb128 2
	.uleb128 0xf
	.long	.LASF542
	.sleb128 3
	.uleb128 0xf
	.long	.LASF543
	.sleb128 4
	.uleb128 0xf
	.long	.LASF544
	.sleb128 5
	.uleb128 0xf
	.long	.LASF545
	.sleb128 6
	.uleb128 0xf
	.long	.LASF546
	.sleb128 7
	.uleb128 0xf
	.long	.LASF547
	.sleb128 8
	.uleb128 0xf
	.long	.LASF548
	.sleb128 9
	.uleb128 0xf
	.long	.LASF549
	.sleb128 10
	.uleb128 0xf
	.long	.LASF550
	.sleb128 11
	.byte	0
	.uleb128 0xd
	.byte	0x1
	.byte	0x2
	.long	.LASF551
	.uleb128 0x3
	.byte	0x8
	.long	0x123
	.uleb128 0xe
	.long	.LASF552
	.byte	0x4
	.byte	0x4
	.value	0x972
	.long	0x1b20
	.uleb128 0xf
	.long	.LASF553
	.sleb128 0
	.uleb128 0xf
	.long	.LASF554
	.sleb128 1
	.uleb128 0xf
	.long	.LASF555
	.sleb128 2
	.uleb128 0xf
	.long	.LASF556
	.sleb128 3
	.uleb128 0xf
	.long	.LASF557
	.sleb128 4
	.uleb128 0xf
	.long	.LASF558
	.sleb128 5
	.uleb128 0xf
	.long	.LASF559
	.sleb128 6
	.byte	0
	.uleb128 0x18
	.long	.LASF560
	.byte	0x4
	.byte	0x2
	.byte	0x29
	.long	0x1f1c
	.uleb128 0xf
	.long	.LASF561
	.sleb128 0
	.uleb128 0x22
	.string	"NIL"
	.sleb128 1
	.uleb128 0xf
	.long	.LASF562
	.sleb128 2
	.uleb128 0xf
	.long	.LASF563
	.sleb128 3
	.uleb128 0xf
	.long	.LASF564
	.sleb128 4
	.uleb128 0xf
	.long	.LASF565
	.sleb128 5
	.uleb128 0xf
	.long	.LASF566
	.sleb128 6
	.uleb128 0xf
	.long	.LASF567
	.sleb128 7
	.uleb128 0xf
	.long	.LASF568
	.sleb128 8
	.uleb128 0xf
	.long	.LASF569
	.sleb128 9
	.uleb128 0xf
	.long	.LASF570
	.sleb128 10
	.uleb128 0xf
	.long	.LASF571
	.sleb128 11
	.uleb128 0xf
	.long	.LASF572
	.sleb128 12
	.uleb128 0xf
	.long	.LASF573
	.sleb128 13
	.uleb128 0xf
	.long	.LASF574
	.sleb128 14
	.uleb128 0xf
	.long	.LASF575
	.sleb128 15
	.uleb128 0xf
	.long	.LASF576
	.sleb128 16
	.uleb128 0xf
	.long	.LASF577
	.sleb128 17
	.uleb128 0xf
	.long	.LASF578
	.sleb128 18
	.uleb128 0xf
	.long	.LASF579
	.sleb128 19
	.uleb128 0xf
	.long	.LASF580
	.sleb128 20
	.uleb128 0xf
	.long	.LASF581
	.sleb128 21
	.uleb128 0xf
	.long	.LASF582
	.sleb128 22
	.uleb128 0xf
	.long	.LASF583
	.sleb128 23
	.uleb128 0xf
	.long	.LASF584
	.sleb128 24
	.uleb128 0xf
	.long	.LASF585
	.sleb128 25
	.uleb128 0xf
	.long	.LASF586
	.sleb128 26
	.uleb128 0xf
	.long	.LASF587
	.sleb128 27
	.uleb128 0xf
	.long	.LASF588
	.sleb128 28
	.uleb128 0xf
	.long	.LASF589
	.sleb128 29
	.uleb128 0xf
	.long	.LASF590
	.sleb128 30
	.uleb128 0xf
	.long	.LASF591
	.sleb128 31
	.uleb128 0xf
	.long	.LASF592
	.sleb128 32
	.uleb128 0xf
	.long	.LASF593
	.sleb128 33
	.uleb128 0xf
	.long	.LASF594
	.sleb128 34
	.uleb128 0xf
	.long	.LASF595
	.sleb128 35
	.uleb128 0xf
	.long	.LASF596
	.sleb128 36
	.uleb128 0xf
	.long	.LASF597
	.sleb128 37
	.uleb128 0xf
	.long	.LASF598
	.sleb128 38
	.uleb128 0xf
	.long	.LASF599
	.sleb128 39
	.uleb128 0xf
	.long	.LASF600
	.sleb128 40
	.uleb128 0xf
	.long	.LASF601
	.sleb128 41
	.uleb128 0xf
	.long	.LASF602
	.sleb128 42
	.uleb128 0xf
	.long	.LASF603
	.sleb128 43
	.uleb128 0xf
	.long	.LASF604
	.sleb128 44
	.uleb128 0xf
	.long	.LASF605
	.sleb128 45
	.uleb128 0xf
	.long	.LASF606
	.sleb128 46
	.uleb128 0x22
	.string	"SET"
	.sleb128 47
	.uleb128 0x22
	.string	"USE"
	.sleb128 48
	.uleb128 0xf
	.long	.LASF607
	.sleb128 49
	.uleb128 0xf
	.long	.LASF608
	.sleb128 50
	.uleb128 0xf
	.long	.LASF609
	.sleb128 51
	.uleb128 0xf
	.long	.LASF610
	.sleb128 52
	.uleb128 0xf
	.long	.LASF611
	.sleb128 53
	.uleb128 0xf
	.long	.LASF612
	.sleb128 54
	.uleb128 0xf
	.long	.LASF613
	.sleb128 55
	.uleb128 0xf
	.long	.LASF614
	.sleb128 56
	.uleb128 0xf
	.long	.LASF615
	.sleb128 57
	.uleb128 0xf
	.long	.LASF616
	.sleb128 58
	.uleb128 0x22
	.string	"PC"
	.sleb128 59
	.uleb128 0xf
	.long	.LASF617
	.sleb128 60
	.uleb128 0x22
	.string	"REG"
	.sleb128 61
	.uleb128 0xf
	.long	.LASF618
	.sleb128 62
	.uleb128 0xf
	.long	.LASF619
	.sleb128 63
	.uleb128 0xf
	.long	.LASF620
	.sleb128 64
	.uleb128 0xf
	.long	.LASF621
	.sleb128 65
	.uleb128 0x22
	.string	"MEM"
	.sleb128 66
	.uleb128 0xf
	.long	.LASF622
	.sleb128 67
	.uleb128 0xf
	.long	.LASF623
	.sleb128 68
	.uleb128 0x22
	.string	"CC0"
	.sleb128 69
	.uleb128 0xf
	.long	.LASF624
	.sleb128 70
	.uleb128 0xf
	.long	.LASF625
	.sleb128 71
	.uleb128 0xf
	.long	.LASF626
	.sleb128 72
	.uleb128 0xf
	.long	.LASF627
	.sleb128 73
	.uleb128 0xf
	.long	.LASF628
	.sleb128 74
	.uleb128 0xf
	.long	.LASF629
	.sleb128 75
	.uleb128 0xf
	.long	.LASF630
	.sleb128 76
	.uleb128 0x22
	.string	"NEG"
	.sleb128 77
	.uleb128 0xf
	.long	.LASF631
	.sleb128 78
	.uleb128 0x22
	.string	"DIV"
	.sleb128 79
	.uleb128 0x22
	.string	"MOD"
	.sleb128 80
	.uleb128 0xf
	.long	.LASF632
	.sleb128 81
	.uleb128 0xf
	.long	.LASF633
	.sleb128 82
	.uleb128 0x22
	.string	"AND"
	.sleb128 83
	.uleb128 0x22
	.string	"IOR"
	.sleb128 84
	.uleb128 0x22
	.string	"XOR"
	.sleb128 85
	.uleb128 0x22
	.string	"NOT"
	.sleb128 86
	.uleb128 0xf
	.long	.LASF634
	.sleb128 87
	.uleb128 0xf
	.long	.LASF635
	.sleb128 88
	.uleb128 0xf
	.long	.LASF636
	.sleb128 89
	.uleb128 0xf
	.long	.LASF637
	.sleb128 90
	.uleb128 0xf
	.long	.LASF638
	.sleb128 91
	.uleb128 0xf
	.long	.LASF639
	.sleb128 92
	.uleb128 0xf
	.long	.LASF640
	.sleb128 93
	.uleb128 0xf
	.long	.LASF641
	.sleb128 94
	.uleb128 0xf
	.long	.LASF642
	.sleb128 95
	.uleb128 0xf
	.long	.LASF643
	.sleb128 96
	.uleb128 0xf
	.long	.LASF644
	.sleb128 97
	.uleb128 0xf
	.long	.LASF645
	.sleb128 98
	.uleb128 0xf
	.long	.LASF646
	.sleb128 99
	.uleb128 0xf
	.long	.LASF647
	.sleb128 100
	.uleb128 0xf
	.long	.LASF648
	.sleb128 101
	.uleb128 0x22
	.string	"NE"
	.sleb128 102
	.uleb128 0x22
	.string	"EQ"
	.sleb128 103
	.uleb128 0x22
	.string	"GE"
	.sleb128 104
	.uleb128 0x22
	.string	"GT"
	.sleb128 105
	.uleb128 0x22
	.string	"LE"
	.sleb128 106
	.uleb128 0x22
	.string	"LT"
	.sleb128 107
	.uleb128 0x22
	.string	"GEU"
	.sleb128 108
	.uleb128 0x22
	.string	"GTU"
	.sleb128 109
	.uleb128 0x22
	.string	"LEU"
	.sleb128 110
	.uleb128 0x22
	.string	"LTU"
	.sleb128 111
	.uleb128 0xf
	.long	.LASF649
	.sleb128 112
	.uleb128 0xf
	.long	.LASF650
	.sleb128 113
	.uleb128 0xf
	.long	.LASF651
	.sleb128 114
	.uleb128 0xf
	.long	.LASF652
	.sleb128 115
	.uleb128 0xf
	.long	.LASF653
	.sleb128 116
	.uleb128 0xf
	.long	.LASF654
	.sleb128 117
	.uleb128 0xf
	.long	.LASF655
	.sleb128 118
	.uleb128 0xf
	.long	.LASF656
	.sleb128 119
	.uleb128 0xf
	.long	.LASF657
	.sleb128 120
	.uleb128 0xf
	.long	.LASF658
	.sleb128 121
	.uleb128 0xf
	.long	.LASF659
	.sleb128 122
	.uleb128 0xf
	.long	.LASF660
	.sleb128 123
	.uleb128 0xf
	.long	.LASF661
	.sleb128 124
	.uleb128 0xf
	.long	.LASF662
	.sleb128 125
	.uleb128 0x22
	.string	"FIX"
	.sleb128 126
	.uleb128 0xf
	.long	.LASF663
	.sleb128 127
	.uleb128 0xf
	.long	.LASF664
	.sleb128 128
	.uleb128 0x22
	.string	"ABS"
	.sleb128 129
	.uleb128 0xf
	.long	.LASF665
	.sleb128 130
	.uleb128 0x22
	.string	"FFS"
	.sleb128 131
	.uleb128 0xf
	.long	.LASF666
	.sleb128 132
	.uleb128 0xf
	.long	.LASF667
	.sleb128 133
	.uleb128 0xf
	.long	.LASF668
	.sleb128 134
	.uleb128 0xf
	.long	.LASF669
	.sleb128 135
	.uleb128 0xf
	.long	.LASF670
	.sleb128 136
	.uleb128 0xf
	.long	.LASF671
	.sleb128 137
	.uleb128 0xf
	.long	.LASF672
	.sleb128 138
	.uleb128 0xf
	.long	.LASF673
	.sleb128 139
	.uleb128 0xf
	.long	.LASF674
	.sleb128 140
	.uleb128 0xf
	.long	.LASF675
	.sleb128 141
	.uleb128 0xf
	.long	.LASF676
	.sleb128 142
	.uleb128 0xf
	.long	.LASF677
	.sleb128 143
	.uleb128 0xf
	.long	.LASF678
	.sleb128 144
	.uleb128 0xf
	.long	.LASF679
	.sleb128 145
	.uleb128 0xf
	.long	.LASF680
	.sleb128 146
	.uleb128 0xf
	.long	.LASF681
	.sleb128 147
	.uleb128 0xf
	.long	.LASF682
	.sleb128 148
	.uleb128 0xf
	.long	.LASF683
	.sleb128 149
	.uleb128 0xf
	.long	.LASF684
	.sleb128 150
	.uleb128 0xf
	.long	.LASF685
	.sleb128 151
	.uleb128 0x22
	.string	"PHI"
	.sleb128 152
	.uleb128 0xf
	.long	.LASF686
	.sleb128 153
	.byte	0
	.uleb128 0x1b
	.byte	0x4
	.byte	0x2
	.byte	0x44
	.long	0x1f9d
	.uleb128 0x5
	.long	.LASF687
	.byte	0x2
	.byte	0x47
	.long	0x30b
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.long	.LASF688
	.byte	0x2
	.byte	0x49
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x5
	.long	.LASF689
	.byte	0x2
	.byte	0x4a
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x5
	.long	.LASF690
	.byte	0x2
	.byte	0x4c
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x5
	.long	.LASF691
	.byte	0x2
	.byte	0x4e
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.long	.LASF692
	.byte	0x2
	.byte	0x50
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x5
	.long	.LASF693
	.byte	0x2
	.byte	0x53
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x5
	.long	.LASF694
	.byte	0x2
	.byte	0x55
	.long	0x30b
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0
	.byte	0
	.uleb128 0x7
	.long	.LASF695
	.byte	0x2
	.byte	0x56
	.long	0x1f1c
	.uleb128 0x1b
	.byte	0x28
	.byte	0x2
	.byte	0x5c
	.long	0x1fed
	.uleb128 0x8
	.long	.LASF696
	.byte	0x2
	.byte	0x5e
	.long	0x314
	.byte	0
	.uleb128 0x8
	.long	.LASF369
	.byte	0x2
	.byte	0x5f
	.long	0x123
	.byte	0x8
	.uleb128 0x8
	.long	.LASF697
	.byte	0x2
	.byte	0x60
	.long	0x2d
	.byte	0x10
	.uleb128 0x8
	.long	.LASF341
	.byte	0x2
	.byte	0x61
	.long	0x2d
	.byte	0x18
	.uleb128 0x8
	.long	.LASF353
	.byte	0x2
	.byte	0x62
	.long	0x30b
	.byte	0x20
	.byte	0
	.uleb128 0x7
	.long	.LASF698
	.byte	0x2
	.byte	0x63
	.long	0x1fa8
	.uleb128 0x23
	.long	.LASF700
	.byte	0x8
	.byte	0x2
	.byte	0x67
	.long	0x2093
	.uleb128 0x24
	.long	.LASF701
	.byte	0x2
	.byte	0x69
	.long	0x314
	.uleb128 0x24
	.long	.LASF702
	.byte	0x2
	.byte	0x6a
	.long	0x1de
	.uleb128 0x24
	.long	.LASF703
	.byte	0x2
	.byte	0x6b
	.long	0x30b
	.uleb128 0x24
	.long	.LASF704
	.byte	0x2
	.byte	0x6c
	.long	0x572
	.uleb128 0x25
	.string	"rtx"
	.byte	0x2
	.byte	0x6d
	.long	0x2d
	.uleb128 0x24
	.long	.LASF10
	.byte	0x2
	.byte	0x6e
	.long	0xed
	.uleb128 0x24
	.long	.LASF705
	.byte	0x2
	.byte	0x6f
	.long	0x58b
	.uleb128 0x24
	.long	.LASF706
	.byte	0x2
	.byte	0x70
	.long	0x1f9d
	.uleb128 0x24
	.long	.LASF707
	.byte	0x2
	.byte	0x71
	.long	0x2098
	.uleb128 0x24
	.long	.LASF708
	.byte	0x2
	.byte	0x72
	.long	0x20cf
	.uleb128 0x24
	.long	.LASF709
	.byte	0x2
	.byte	0x73
	.long	0x123
	.uleb128 0x25
	.string	"bb"
	.byte	0x2
	.byte	0x74
	.long	0x21a2
	.uleb128 0x24
	.long	.LASF710
	.byte	0x2
	.byte	0x75
	.long	0x21a8
	.byte	0
	.uleb128 0x1e
	.long	.LASF711
	.uleb128 0x3
	.byte	0x8
	.long	0x2093
	.uleb128 0x4
	.long	.LASF712
	.byte	0x18
	.byte	0xe
	.byte	0x34
	.long	0x20cf
	.uleb128 0x8
	.long	.LASF713
	.byte	0xe
	.byte	0x35
	.long	0x2b15
	.byte	0
	.uleb128 0x8
	.long	.LASF714
	.byte	0xe
	.byte	0x36
	.long	0x2b15
	.byte	0x8
	.uleb128 0x8
	.long	.LASF715
	.byte	0xe
	.byte	0x37
	.long	0x30b
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x209e
	.uleb128 0x4
	.long	.LASF716
	.byte	0x70
	.byte	0xf
	.byte	0xae
	.long	0x21a2
	.uleb128 0x8
	.long	.LASF717
	.byte	0xf
	.byte	0xb0
	.long	0x2d
	.byte	0
	.uleb128 0x6
	.string	"end"
	.byte	0xf
	.byte	0xb0
	.long	0x2d
	.byte	0x8
	.uleb128 0x8
	.long	.LASF718
	.byte	0xf
	.byte	0xb3
	.long	0x123
	.byte	0x10
	.uleb128 0x8
	.long	.LASF719
	.byte	0xf
	.byte	0xb4
	.long	0x123
	.byte	0x18
	.uleb128 0x8
	.long	.LASF720
	.byte	0xf
	.byte	0xb7
	.long	0x2bbb
	.byte	0x20
	.uleb128 0x8
	.long	.LASF721
	.byte	0xf
	.byte	0xb7
	.long	0x2bbb
	.byte	0x28
	.uleb128 0x8
	.long	.LASF722
	.byte	0xf
	.byte	0xbc
	.long	0x2b26
	.byte	0x30
	.uleb128 0x8
	.long	.LASF723
	.byte	0xf
	.byte	0xc0
	.long	0x2b26
	.byte	0x38
	.uleb128 0x8
	.long	.LASF724
	.byte	0xf
	.byte	0xc6
	.long	0x2b26
	.byte	0x40
	.uleb128 0x8
	.long	.LASF725
	.byte	0xf
	.byte	0xc8
	.long	0x2b26
	.byte	0x48
	.uleb128 0x6
	.string	"aux"
	.byte	0xf
	.byte	0xcb
	.long	0x312
	.byte	0x50
	.uleb128 0x8
	.long	.LASF726
	.byte	0xf
	.byte	0xce
	.long	0x1de
	.byte	0x58
	.uleb128 0x8
	.long	.LASF727
	.byte	0xf
	.byte	0xd1
	.long	0x1de
	.byte	0x5c
	.uleb128 0x8
	.long	.LASF728
	.byte	0xf
	.byte	0xd4
	.long	0x2b31
	.byte	0x60
	.uleb128 0x8
	.long	.LASF729
	.byte	0xf
	.byte	0xd7
	.long	0x1de
	.byte	0x68
	.uleb128 0x8
	.long	.LASF730
	.byte	0xf
	.byte	0xda
	.long	0x1de
	.byte	0x6c
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x20d5
	.uleb128 0x3
	.byte	0x8
	.long	0x1fed
	.uleb128 0x7
	.long	.LASF731
	.byte	0x2
	.byte	0x76
	.long	0x1ff8
	.uleb128 0x14
	.long	0x21ae
	.long	0x21c9
	.uleb128 0x15
	.long	0x1e5
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	0x2d
	.long	0x21d9
	.uleb128 0x15
	.long	0x1e5
	.byte	0
	.byte	0
	.uleb128 0xe
	.long	.LASF732
	.byte	0x4
	.byte	0x2
	.value	0x1c3
	.long	0x229b
	.uleb128 0xf
	.long	.LASF733
	.sleb128 1
	.uleb128 0xf
	.long	.LASF734
	.sleb128 2
	.uleb128 0xf
	.long	.LASF735
	.sleb128 3
	.uleb128 0xf
	.long	.LASF736
	.sleb128 4
	.uleb128 0xf
	.long	.LASF737
	.sleb128 5
	.uleb128 0xf
	.long	.LASF738
	.sleb128 6
	.uleb128 0xf
	.long	.LASF739
	.sleb128 7
	.uleb128 0xf
	.long	.LASF740
	.sleb128 8
	.uleb128 0xf
	.long	.LASF741
	.sleb128 9
	.uleb128 0xf
	.long	.LASF742
	.sleb128 10
	.uleb128 0xf
	.long	.LASF743
	.sleb128 11
	.uleb128 0xf
	.long	.LASF744
	.sleb128 12
	.uleb128 0xf
	.long	.LASF745
	.sleb128 13
	.uleb128 0xf
	.long	.LASF746
	.sleb128 14
	.uleb128 0xf
	.long	.LASF747
	.sleb128 15
	.uleb128 0xf
	.long	.LASF748
	.sleb128 16
	.uleb128 0xf
	.long	.LASF749
	.sleb128 17
	.uleb128 0xf
	.long	.LASF750
	.sleb128 18
	.uleb128 0xf
	.long	.LASF751
	.sleb128 19
	.uleb128 0xf
	.long	.LASF752
	.sleb128 20
	.uleb128 0xf
	.long	.LASF753
	.sleb128 21
	.uleb128 0xf
	.long	.LASF754
	.sleb128 22
	.uleb128 0xf
	.long	.LASF755
	.sleb128 23
	.uleb128 0xf
	.long	.LASF756
	.sleb128 24
	.uleb128 0xf
	.long	.LASF757
	.sleb128 25
	.uleb128 0xf
	.long	.LASF758
	.sleb128 26
	.uleb128 0xf
	.long	.LASF759
	.sleb128 27
	.uleb128 0xf
	.long	.LASF760
	.sleb128 28
	.uleb128 0xf
	.long	.LASF761
	.sleb128 29
	.uleb128 0xf
	.long	.LASF762
	.sleb128 30
	.byte	0
	.uleb128 0xe
	.long	.LASF763
	.byte	0x4
	.byte	0x2
	.value	0x297
	.long	0x234a
	.uleb128 0xf
	.long	.LASF764
	.sleb128 -100
	.uleb128 0xf
	.long	.LASF765
	.sleb128 -99
	.uleb128 0xf
	.long	.LASF766
	.sleb128 -98
	.uleb128 0xf
	.long	.LASF767
	.sleb128 -97
	.uleb128 0xf
	.long	.LASF768
	.sleb128 -96
	.uleb128 0xf
	.long	.LASF769
	.sleb128 -95
	.uleb128 0xf
	.long	.LASF770
	.sleb128 -94
	.uleb128 0xf
	.long	.LASF771
	.sleb128 -93
	.uleb128 0xf
	.long	.LASF772
	.sleb128 -92
	.uleb128 0xf
	.long	.LASF773
	.sleb128 -91
	.uleb128 0xf
	.long	.LASF774
	.sleb128 -90
	.uleb128 0xf
	.long	.LASF775
	.sleb128 -89
	.uleb128 0xf
	.long	.LASF776
	.sleb128 -88
	.uleb128 0xf
	.long	.LASF777
	.sleb128 -87
	.uleb128 0xf
	.long	.LASF778
	.sleb128 -86
	.uleb128 0xf
	.long	.LASF779
	.sleb128 -85
	.uleb128 0xf
	.long	.LASF780
	.sleb128 -84
	.uleb128 0xf
	.long	.LASF781
	.sleb128 -83
	.uleb128 0xf
	.long	.LASF782
	.sleb128 -82
	.uleb128 0xf
	.long	.LASF783
	.sleb128 -81
	.uleb128 0xf
	.long	.LASF784
	.sleb128 -80
	.uleb128 0xf
	.long	.LASF785
	.sleb128 -79
	.uleb128 0xf
	.long	.LASF786
	.sleb128 -78
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x2d
	.uleb128 0xe
	.long	.LASF787
	.byte	0x4
	.byte	0x2
	.value	0x630
	.long	0x23a6
	.uleb128 0xf
	.long	.LASF788
	.sleb128 0
	.uleb128 0xf
	.long	.LASF789
	.sleb128 1
	.uleb128 0xf
	.long	.LASF790
	.sleb128 2
	.uleb128 0xf
	.long	.LASF791
	.sleb128 3
	.uleb128 0xf
	.long	.LASF792
	.sleb128 4
	.uleb128 0xf
	.long	.LASF793
	.sleb128 5
	.uleb128 0xf
	.long	.LASF794
	.sleb128 6
	.uleb128 0xf
	.long	.LASF795
	.sleb128 7
	.uleb128 0xf
	.long	.LASF796
	.sleb128 8
	.uleb128 0xf
	.long	.LASF797
	.sleb128 9
	.uleb128 0xf
	.long	.LASF798
	.sleb128 10
	.uleb128 0xf
	.long	.LASF799
	.sleb128 11
	.byte	0
	.uleb128 0x4
	.long	.LASF800
	.byte	0x18
	.byte	0xd
	.byte	0x16
	.long	0x23e3
	.uleb128 0x8
	.long	.LASF801
	.byte	0xd
	.byte	0x18
	.long	0x2d
	.byte	0
	.uleb128 0x8
	.long	.LASF802
	.byte	0xd
	.byte	0x19
	.long	0x58b
	.byte	0x8
	.uleb128 0x8
	.long	.LASF803
	.byte	0xd
	.byte	0x1a
	.long	0x1de
	.byte	0xc
	.uleb128 0x8
	.long	.LASF804
	.byte	0xd
	.byte	0x1b
	.long	0x23e3
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x23a6
	.uleb128 0x4
	.long	.LASF805
	.byte	0x20
	.byte	0xd
	.byte	0x23
	.long	0x2426
	.uleb128 0x8
	.long	.LASF713
	.byte	0xd
	.byte	0x26
	.long	0x2d
	.byte	0
	.uleb128 0x8
	.long	.LASF806
	.byte	0xd
	.byte	0x26
	.long	0x2d
	.byte	0x8
	.uleb128 0x8
	.long	.LASF807
	.byte	0xd
	.byte	0x27
	.long	0x123
	.byte	0x10
	.uleb128 0x8
	.long	.LASF804
	.byte	0xd
	.byte	0x28
	.long	0x2426
	.byte	0x18
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x23e9
	.uleb128 0x4
	.long	.LASF808
	.byte	0x58
	.byte	0xd
	.byte	0x35
	.long	0x24d5
	.uleb128 0x8
	.long	.LASF809
	.byte	0xd
	.byte	0x39
	.long	0x1de
	.byte	0
	.uleb128 0x8
	.long	.LASF810
	.byte	0xd
	.byte	0x3c
	.long	0x1de
	.byte	0x4
	.uleb128 0x8
	.long	.LASF811
	.byte	0xd
	.byte	0x43
	.long	0x2d
	.byte	0x8
	.uleb128 0x8
	.long	.LASF812
	.byte	0xd
	.byte	0x44
	.long	0x2d
	.byte	0x10
	.uleb128 0x8
	.long	.LASF807
	.byte	0xd
	.byte	0x49
	.long	0x123
	.byte	0x18
	.uleb128 0x8
	.long	.LASF805
	.byte	0xd
	.byte	0x4f
	.long	0x2426
	.byte	0x20
	.uleb128 0x8
	.long	.LASF813
	.byte	0xd
	.byte	0x53
	.long	0x1de
	.byte	0x28
	.uleb128 0x8
	.long	.LASF814
	.byte	0xd
	.byte	0x57
	.long	0x1de
	.byte	0x2c
	.uleb128 0x8
	.long	.LASF815
	.byte	0xd
	.byte	0x58
	.long	0x572
	.byte	0x30
	.uleb128 0x8
	.long	.LASF816
	.byte	0xd
	.byte	0x5e
	.long	0x1de
	.byte	0x38
	.uleb128 0x8
	.long	.LASF817
	.byte	0xd
	.byte	0x63
	.long	0x24d5
	.byte	0x40
	.uleb128 0x8
	.long	.LASF818
	.byte	0xd
	.byte	0x67
	.long	0x1ae2
	.byte	0x48
	.uleb128 0x8
	.long	.LASF819
	.byte	0xd
	.byte	0x6b
	.long	0x234a
	.byte	0x50
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x32d
	.uleb128 0x4
	.long	.LASF820
	.byte	0x30
	.byte	0xd
	.byte	0x77
	.long	0x253c
	.uleb128 0x8
	.long	.LASF821
	.byte	0xd
	.byte	0x7b
	.long	0x1de
	.byte	0
	.uleb128 0x8
	.long	.LASF822
	.byte	0xd
	.byte	0x8c
	.long	0x1de
	.byte	0x4
	.uleb128 0x8
	.long	.LASF823
	.byte	0xd
	.byte	0x92
	.long	0x1de
	.byte	0x8
	.uleb128 0x8
	.long	.LASF824
	.byte	0xd
	.byte	0x97
	.long	0x2d
	.byte	0x10
	.uleb128 0x8
	.long	.LASF825
	.byte	0xd
	.byte	0x9a
	.long	0x2d
	.byte	0x18
	.uleb128 0x8
	.long	.LASF826
	.byte	0xd
	.byte	0x9d
	.long	0x2d
	.byte	0x20
	.uleb128 0x8
	.long	.LASF827
	.byte	0xd
	.byte	0xa0
	.long	0x2d
	.byte	0x28
	.byte	0
	.uleb128 0x1e
	.long	.LASF828
	.uleb128 0x3
	.byte	0x8
	.long	0x253c
	.uleb128 0x1e
	.long	.LASF829
	.uleb128 0x3
	.byte	0x8
	.long	0x2547
	.uleb128 0x3
	.byte	0x8
	.long	0x24db
	.uleb128 0x3
	.byte	0x8
	.long	0x242c
	.uleb128 0x1e
	.long	.LASF830
	.uleb128 0x3
	.byte	0x8
	.long	0x255e
	.uleb128 0x1e
	.long	.LASF831
	.uleb128 0x3
	.byte	0x8
	.long	0x2569
	.uleb128 0x1e
	.long	.LASF832
	.uleb128 0x3
	.byte	0x8
	.long	0x2574
	.uleb128 0x1e
	.long	.LASF833
	.uleb128 0x3
	.byte	0x8
	.long	0x257f
	.uleb128 0x1e
	.long	.LASF834
	.uleb128 0x3
	.byte	0x8
	.long	0x258a
	.uleb128 0x4
	.long	.LASF835
	.byte	0x10
	.byte	0x10
	.byte	0x24
	.long	0x25ba
	.uleb128 0x6
	.string	"rtx"
	.byte	0x10
	.byte	0x32
	.long	0x38
	.byte	0
	.uleb128 0x6
	.string	"age"
	.byte	0x10
	.byte	0x36
	.long	0x30b
	.byte	0x8
	.byte	0
	.uleb128 0x23
	.long	.LASF836
	.byte	0x10
	.byte	0x10
	.byte	0x3a
	.long	0x269f
	.uleb128 0x25
	.string	"c"
	.byte	0x10
	.byte	0x3b
	.long	0x54c
	.uleb128 0x25
	.string	"uc"
	.byte	0x10
	.byte	0x3c
	.long	0x269f
	.uleb128 0x25
	.string	"s"
	.byte	0x10
	.byte	0x3d
	.long	0x26af
	.uleb128 0x25
	.string	"us"
	.byte	0x10
	.byte	0x3e
	.long	0x26bf
	.uleb128 0x25
	.string	"i"
	.byte	0x10
	.byte	0x3f
	.long	0x26cf
	.uleb128 0x25
	.string	"u"
	.byte	0x10
	.byte	0x40
	.long	0x26df
	.uleb128 0x25
	.string	"l"
	.byte	0x10
	.byte	0x41
	.long	0x26ef
	.uleb128 0x25
	.string	"ul"
	.byte	0x10
	.byte	0x42
	.long	0x26ff
	.uleb128 0x24
	.long	.LASF837
	.byte	0x10
	.byte	0x43
	.long	0x26ef
	.uleb128 0x24
	.long	.LASF838
	.byte	0x10
	.byte	0x44
	.long	0x26ff
	.uleb128 0x24
	.long	.LASF839
	.byte	0x10
	.byte	0x45
	.long	0x270f
	.uleb128 0x24
	.long	.LASF840
	.byte	0x10
	.byte	0x46
	.long	0x271f
	.uleb128 0x25
	.string	"rtx"
	.byte	0x10
	.byte	0x47
	.long	0x272f
	.uleb128 0x24
	.long	.LASF10
	.byte	0x10
	.byte	0x48
	.long	0x273f
	.uleb128 0x24
	.long	.LASF15
	.byte	0x10
	.byte	0x49
	.long	0x274f
	.uleb128 0x24
	.long	.LASF841
	.byte	0x10
	.byte	0x4a
	.long	0x275f
	.uleb128 0x24
	.long	.LASF842
	.byte	0x10
	.byte	0x4b
	.long	0x276f
	.uleb128 0x25
	.string	"reg"
	.byte	0x10
	.byte	0x4c
	.long	0x278a
	.uleb128 0x24
	.long	.LASF843
	.byte	0x10
	.byte	0x4d
	.long	0x2831
	.uleb128 0x25
	.string	"bb"
	.byte	0x10
	.byte	0x4e
	.long	0x2841
	.uleb128 0x25
	.string	"te"
	.byte	0x10
	.byte	0x4f
	.long	0x2851
	.byte	0
	.uleb128 0x14
	.long	0x32d
	.long	0x26af
	.uleb128 0x15
	.long	0x1e5
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	0x342
	.long	0x26bf
	.uleb128 0x15
	.long	0x1e5
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	0x334
	.long	0x26cf
	.uleb128 0x15
	.long	0x1e5
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	0x1de
	.long	0x26df
	.uleb128 0x15
	.long	0x1e5
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	0x30b
	.long	0x26ef
	.uleb128 0x15
	.long	0x1e5
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	0x314
	.long	0x26ff
	.uleb128 0x15
	.long	0x1e5
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	0x326
	.long	0x270f
	.uleb128 0x15
	.long	0x1e5
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	0x312
	.long	0x271f
	.uleb128 0x15
	.long	0x1e5
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	0x35f
	.long	0x272f
	.uleb128 0x15
	.long	0x1e5
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	0x38
	.long	0x273f
	.uleb128 0x15
	.long	0x1e5
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	0xf8
	.long	0x274f
	.uleb128 0x15
	.long	0x1e5
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	0x12e
	.long	0x275f
	.uleb128 0x15
	.long	0x1e5
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	0x20cf
	.long	0x276f
	.uleb128 0x15
	.long	0x1e5
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	0x277f
	.long	0x277f
	.uleb128 0x15
	.long	0x1e5
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x2785
	.uleb128 0x1e
	.long	.LASF844
	.uleb128 0x14
	.long	0x279a
	.long	0x279a
	.uleb128 0x15
	.long	0x1e5
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x27a0
	.uleb128 0x4
	.long	.LASF845
	.byte	0x2c
	.byte	0x11
	.byte	0x2d
	.long	0x2831
	.uleb128 0x8
	.long	.LASF846
	.byte	0x11
	.byte	0x2f
	.long	0x1de
	.byte	0
	.uleb128 0x8
	.long	.LASF847
	.byte	0x11
	.byte	0x30
	.long	0x1de
	.byte	0x4
	.uleb128 0x8
	.long	.LASF848
	.byte	0x11
	.byte	0x31
	.long	0x1de
	.byte	0x8
	.uleb128 0x8
	.long	.LASF849
	.byte	0x11
	.byte	0x34
	.long	0x1de
	.byte	0xc
	.uleb128 0x8
	.long	.LASF850
	.byte	0x11
	.byte	0x37
	.long	0x1de
	.byte	0x10
	.uleb128 0x8
	.long	.LASF851
	.byte	0x11
	.byte	0x38
	.long	0x1de
	.byte	0x14
	.uleb128 0x8
	.long	.LASF852
	.byte	0x11
	.byte	0x39
	.long	0x1de
	.byte	0x18
	.uleb128 0x8
	.long	.LASF853
	.byte	0x11
	.byte	0x3a
	.long	0x1de
	.byte	0x1c
	.uleb128 0x8
	.long	.LASF854
	.byte	0x11
	.byte	0x3b
	.long	0x1de
	.byte	0x20
	.uleb128 0x8
	.long	.LASF855
	.byte	0x11
	.byte	0x3c
	.long	0x1de
	.byte	0x24
	.uleb128 0x8
	.long	.LASF856
	.byte	0x11
	.byte	0x3d
	.long	0x365
	.byte	0x28
	.byte	0
	.uleb128 0x14
	.long	0x2595
	.long	0x2841
	.uleb128 0x15
	.long	0x1e5
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	0x21a2
	.long	0x2851
	.uleb128 0x15
	.long	0x1e5
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	0x2861
	.long	0x2861
	.uleb128 0x15
	.long	0x1e5
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x2867
	.uleb128 0x1e
	.long	.LASF857
	.uleb128 0x7
	.long	.LASF858
	.byte	0x10
	.byte	0x50
	.long	0x25ba
	.uleb128 0x4
	.long	.LASF859
	.byte	0x30
	.byte	0x10
	.byte	0x53
	.long	0x28c0
	.uleb128 0x8
	.long	.LASF860
	.byte	0x10
	.byte	0x54
	.long	0x31b
	.byte	0
	.uleb128 0x8
	.long	.LASF861
	.byte	0x10
	.byte	0x55
	.long	0x31b
	.byte	0x8
	.uleb128 0x8
	.long	.LASF862
	.byte	0x10
	.byte	0x57
	.long	0x31b
	.byte	0x10
	.uleb128 0x8
	.long	.LASF357
	.byte	0x10
	.byte	0x58
	.long	0x572
	.byte	0x18
	.uleb128 0x8
	.long	.LASF863
	.byte	0x10
	.byte	0x59
	.long	0x286c
	.byte	0x20
	.byte	0
	.uleb128 0x7
	.long	.LASF864
	.byte	0x10
	.byte	0x5a
	.long	0x28cb
	.uleb128 0x3
	.byte	0x8
	.long	0x2877
	.uleb128 0x7
	.long	.LASF865
	.byte	0x12
	.byte	0x29
	.long	0x326
	.uleb128 0x18
	.long	.LASF866
	.byte	0x4
	.byte	0x13
	.byte	0x1c
	.long	0x28fb
	.uleb128 0xf
	.long	.LASF867
	.sleb128 0
	.uleb128 0xf
	.long	.LASF868
	.sleb128 1
	.uleb128 0xf
	.long	.LASF869
	.sleb128 2
	.byte	0
	.uleb128 0x4
	.long	.LASF870
	.byte	0x20
	.byte	0x13
	.byte	0x22
	.long	0x29bc
	.uleb128 0x8
	.long	.LASF871
	.byte	0x13
	.byte	0x26
	.long	0x572
	.byte	0
	.uleb128 0x8
	.long	.LASF872
	.byte	0x13
	.byte	0x29
	.long	0x1ec
	.byte	0x8
	.uleb128 0x8
	.long	.LASF873
	.byte	0x13
	.byte	0x2d
	.long	0x30b
	.byte	0xc
	.uleb128 0x8
	.long	.LASF874
	.byte	0x13
	.byte	0x30
	.long	0x1de
	.byte	0x10
	.uleb128 0x8
	.long	.LASF875
	.byte	0x13
	.byte	0x34
	.long	0x1de
	.byte	0x14
	.uleb128 0x5
	.long	.LASF876
	.byte	0x13
	.byte	0x37
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x18
	.uleb128 0x5
	.long	.LASF877
	.byte	0x13
	.byte	0x39
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x18
	.uleb128 0x5
	.long	.LASF878
	.byte	0x13
	.byte	0x3b
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x18
	.uleb128 0x5
	.long	.LASF879
	.byte	0x13
	.byte	0x3d
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x18
	.uleb128 0x5
	.long	.LASF880
	.byte	0x13
	.byte	0x3f
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x18
	.uleb128 0x5
	.long	.LASF881
	.byte	0x13
	.byte	0x41
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x18
	.uleb128 0x5
	.long	.LASF882
	.byte	0x13
	.byte	0x43
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x18
	.uleb128 0x5
	.long	.LASF883
	.byte	0x13
	.byte	0x46
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x18
	.byte	0
	.uleb128 0x1f
	.long	.LASF884
	.value	0x3f0
	.byte	0x13
	.byte	0x95
	.long	0x2a57
	.uleb128 0x8
	.long	.LASF885
	.byte	0x13
	.byte	0x9e
	.long	0x2a57
	.byte	0
	.uleb128 0x8
	.long	.LASF886
	.byte	0x13
	.byte	0xa1
	.long	0x2a67
	.byte	0xf0
	.uleb128 0x26
	.long	.LASF887
	.byte	0x13
	.byte	0xa4
	.long	0x2a77
	.value	0x1e0
	.uleb128 0x26
	.long	.LASF888
	.byte	0x13
	.byte	0xa7
	.long	0x2a87
	.value	0x2d0
	.uleb128 0x26
	.long	.LASF889
	.byte	0x13
	.byte	0xaa
	.long	0x2a97
	.value	0x348
	.uleb128 0x26
	.long	.LASF890
	.byte	0x13
	.byte	0xae
	.long	0x2aa7
	.value	0x3c0
	.uleb128 0x26
	.long	.LASF891
	.byte	0x13
	.byte	0xb2
	.long	0x4f8
	.value	0x3e0
	.uleb128 0x26
	.long	.LASF892
	.byte	0x13
	.byte	0xbf
	.long	0x365
	.value	0x3e4
	.uleb128 0x26
	.long	.LASF893
	.byte	0x13
	.byte	0xc2
	.long	0x365
	.value	0x3e5
	.uleb128 0x26
	.long	.LASF894
	.byte	0x13
	.byte	0xc5
	.long	0x365
	.value	0x3e6
	.uleb128 0x26
	.long	.LASF895
	.byte	0x13
	.byte	0xc8
	.long	0x2d
	.value	0x3e8
	.byte	0
	.uleb128 0x14
	.long	0x2d
	.long	0x2a67
	.uleb128 0x15
	.long	0x1e5
	.byte	0x1d
	.byte	0
	.uleb128 0x14
	.long	0x234a
	.long	0x2a77
	.uleb128 0x15
	.long	0x1e5
	.byte	0x1d
	.byte	0
	.uleb128 0x14
	.long	0x572
	.long	0x2a87
	.uleb128 0x15
	.long	0x1e5
	.byte	0x1d
	.byte	0
	.uleb128 0x14
	.long	0x58b
	.long	0x2a97
	.uleb128 0x15
	.long	0x1e5
	.byte	0x1d
	.byte	0
	.uleb128 0x14
	.long	0x28dc
	.long	0x2aa7
	.uleb128 0x15
	.long	0x1e5
	.byte	0x1d
	.byte	0
	.uleb128 0x14
	.long	0x234a
	.long	0x2ab7
	.uleb128 0x15
	.long	0x1e5
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.long	.LASF896
	.byte	0x28
	.byte	0xe
	.byte	0x2b
	.long	0x2af4
	.uleb128 0x8
	.long	.LASF804
	.byte	0xe
	.byte	0x2d
	.long	0x2af4
	.byte	0
	.uleb128 0x8
	.long	.LASF897
	.byte	0xe
	.byte	0x2e
	.long	0x2af4
	.byte	0x8
	.uleb128 0x8
	.long	.LASF715
	.byte	0xe
	.byte	0x2f
	.long	0x30b
	.byte	0x10
	.uleb128 0x8
	.long	.LASF898
	.byte	0xe
	.byte	0x30
	.long	0x2afa
	.byte	0x18
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x2ab7
	.uleb128 0x14
	.long	0x326
	.long	0x2b0a
	.uleb128 0x15
	.long	0x1e5
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.long	.LASF899
	.byte	0xe
	.byte	0x31
	.long	0x2ab7
	.uleb128 0x3
	.byte	0x8
	.long	0x2b0a
	.uleb128 0x7
	.long	.LASF841
	.byte	0xe
	.byte	0x39
	.long	0x20cf
	.uleb128 0x7
	.long	.LASF900
	.byte	0xf
	.byte	0x21
	.long	0x2b1b
	.uleb128 0x7
	.long	.LASF901
	.byte	0xf
	.byte	0x74
	.long	0x314
	.uleb128 0x4
	.long	.LASF902
	.byte	0x40
	.byte	0xf
	.byte	0x77
	.long	0x2bb5
	.uleb128 0x8
	.long	.LASF903
	.byte	0xf
	.byte	0x79
	.long	0x2bb5
	.byte	0
	.uleb128 0x8
	.long	.LASF904
	.byte	0xf
	.byte	0x79
	.long	0x2bb5
	.byte	0x8
	.uleb128 0x6
	.string	"src"
	.byte	0xf
	.byte	0x7c
	.long	0x21a2
	.byte	0x10
	.uleb128 0x8
	.long	.LASF905
	.byte	0xf
	.byte	0x7c
	.long	0x21a2
	.byte	0x18
	.uleb128 0x8
	.long	.LASF906
	.byte	0xf
	.byte	0x7f
	.long	0x2d
	.byte	0x20
	.uleb128 0x6
	.string	"aux"
	.byte	0xf
	.byte	0x82
	.long	0x312
	.byte	0x28
	.uleb128 0x8
	.long	.LASF730
	.byte	0xf
	.byte	0x84
	.long	0x1de
	.byte	0x30
	.uleb128 0x8
	.long	.LASF907
	.byte	0xf
	.byte	0x85
	.long	0x1de
	.byte	0x34
	.uleb128 0x8
	.long	.LASF728
	.byte	0xf
	.byte	0x86
	.long	0x2b31
	.byte	0x38
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x2b3c
	.uleb128 0x7
	.long	.LASF908
	.byte	0xf
	.byte	0x88
	.long	0x2bb5
	.uleb128 0x7
	.long	.LASF855
	.byte	0xf
	.byte	0xdb
	.long	0x21a2
	.uleb128 0x4
	.long	.LASF909
	.byte	0x18
	.byte	0x1
	.byte	0xb8
	.long	0x2c02
	.uleb128 0x6
	.string	"top"
	.byte	0x1
	.byte	0xba
	.long	0x1de
	.byte	0
	.uleb128 0x8
	.long	.LASF910
	.byte	0x1
	.byte	0xbb
	.long	0x28d1
	.byte	0x8
	.uleb128 0x6
	.string	"reg"
	.byte	0x1
	.byte	0xbc
	.long	0x2c02
	.byte	0x10
	.byte	0
	.uleb128 0x14
	.long	0x32d
	.long	0x2c12
	.uleb128 0x15
	.long	0x1e5
	.byte	0x7
	.byte	0
	.uleb128 0x7
	.long	.LASF911
	.byte	0x1
	.byte	0xbd
	.long	0x2c1d
	.uleb128 0x3
	.byte	0x8
	.long	0x2bd1
	.uleb128 0x4
	.long	.LASF912
	.byte	0x40
	.byte	0x1
	.byte	0xc2
	.long	0x2c6c
	.uleb128 0x8
	.long	.LASF913
	.byte	0x1
	.byte	0xc4
	.long	0x2bd1
	.byte	0
	.uleb128 0x8
	.long	.LASF914
	.byte	0x1
	.byte	0xc5
	.long	0x2bd1
	.byte	0x18
	.uleb128 0x8
	.long	.LASF915
	.byte	0x1
	.byte	0xc6
	.long	0x28d1
	.byte	0x30
	.uleb128 0x8
	.long	.LASF916
	.byte	0x1
	.byte	0xc7
	.long	0x1de
	.byte	0x38
	.uleb128 0x8
	.long	.LASF917
	.byte	0x1
	.byte	0xc8
	.long	0x1de
	.byte	0x3c
	.byte	0
	.uleb128 0x7
	.long	.LASF918
	.byte	0x1
	.byte	0xca
	.long	0x2c77
	.uleb128 0x3
	.byte	0x8
	.long	0x2c23
	.uleb128 0x18
	.long	.LASF919
	.byte	0x4
	.byte	0x1
	.byte	0xcf
	.long	0x2c96
	.uleb128 0xf
	.long	.LASF920
	.sleb128 0
	.uleb128 0xf
	.long	.LASF921
	.sleb128 1
	.byte	0
	.uleb128 0x27
	.long	.LASF923
	.byte	0x1
	.value	0x111
	.long	0x1de
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x2d03
	.uleb128 0x28
	.string	"pat"
	.byte	0x1
	.value	0x112
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x29
	.string	"fmt"
	.byte	0x1
	.value	0x114
	.long	0x572
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x29
	.string	"i"
	.byte	0x1
	.value	0x115
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2a
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x29
	.string	"j"
	.byte	0x1
	.value	0x11f
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.byte	0
	.uleb128 0x2b
	.long	.LASF1051
	.byte	0x1
	.value	0x12f
	.long	0x1de
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x2d62
	.uleb128 0x2c
	.long	.LASF895
	.byte	0x1
	.value	0x130
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x29
	.string	"uid"
	.byte	0x1
	.value	0x132
	.long	0x30b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x29
	.string	"max"
	.byte	0x1
	.value	0x132
	.long	0x30b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2d
	.long	.LASF922
	.byte	0x1
	.value	0x133
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x27
	.long	.LASF924
	.byte	0x1
	.value	0x150
	.long	0x2d
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x2d94
	.uleb128 0x2c
	.long	.LASF895
	.byte	0x1
	.value	0x151
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2e
	.long	.LASF927
	.byte	0x1
	.value	0x167
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x2df1
	.uleb128 0x2c
	.long	.LASF895
	.byte	0x1
	.value	0x168
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2c
	.long	.LASF925
	.byte	0x1
	.value	0x169
	.long	0x2c12
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2d
	.long	.LASF926
	.byte	0x1
	.value	0x16b
	.long	0x2bd1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x29
	.string	"top"
	.byte	0x1
	.value	0x16c
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.uleb128 0x2f
	.long	.LASF928
	.byte	0x1
	.value	0x180
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x2e7b
	.uleb128 0x2c
	.long	.LASF925
	.byte	0x1
	.value	0x181
	.long	0x2c12
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.long	.LASF57
	.byte	0x1
	.value	0x182
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x29
	.string	"top"
	.byte	0x1
	.value	0x184
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2a
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x29
	.string	"i"
	.byte	0x1
	.value	0x18b
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2a
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.uleb128 0x29
	.string	"j"
	.byte	0x1
	.value	0x18f
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x30
	.long	.LASF1052
	.byte	0x1
	.value	0x1a1
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x2f28
	.uleb128 0x2c
	.long	.LASF713
	.byte	0x1
	.value	0x1a2
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2c
	.long	.LASF929
	.byte	0x1
	.value	0x1a3
	.long	0x2f28
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x29
	.string	"i"
	.byte	0x1
	.value	0x1a5
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2d
	.long	.LASF930
	.byte	0x1
	.value	0x1a6
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x31
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.long	0x2f06
	.uleb128 0x29
	.string	"e"
	.byte	0x1
	.value	0x1c8
	.long	0x2bbb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x29
	.string	"bb"
	.byte	0x1
	.value	0x1c9
	.long	0x2bc6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x2a
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.uleb128 0x2d
	.long	.LASF1
	.byte	0x1
	.value	0x1d3
	.long	0x58b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x36c
	.uleb128 0x2e
	.long	.LASF931
	.byte	0x1
	.value	0x1fe
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x2ffe
	.uleb128 0x2c
	.long	.LASF895
	.byte	0x1
	.value	0x1ff
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x28
	.string	"pat"
	.byte	0x1
	.value	0x1ff
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2d
	.long	.LASF0
	.byte	0x1
	.value	0x201
	.long	0x1b20
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x29
	.string	"i"
	.byte	0x1
	.value	0x202
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x29
	.string	"fmt"
	.byte	0x1
	.value	0x203
	.long	0x572
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x32
	.long	.LASF947
	.long	0x300e
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.12901
	.uleb128 0x31
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.long	0x2fde
	.uleb128 0x2d
	.long	.LASF932
	.byte	0x1
	.value	0x207
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x29
	.string	"ref"
	.byte	0x1
	.value	0x208
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x2a
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.uleb128 0x29
	.string	"j"
	.byte	0x1
	.value	0x228
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	0x365
	.long	0x300e
	.uleb128 0x15
	.long	0x1e5
	.byte	0x17
	.byte	0
	.uleb128 0x17
	.long	0x2ffe
	.uleb128 0x27
	.long	.LASF933
	.byte	0x1
	.value	0x234
	.long	0x234a
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x3087
	.uleb128 0x28
	.string	"pat"
	.byte	0x1
	.value	0x235
	.long	0x234a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2a
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.uleb128 0x2d
	.long	.LASF934
	.byte	0x1
	.value	0x23e
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2a
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.uleb128 0x2d
	.long	.LASF935
	.byte	0x1
	.value	0x241
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x27
	.long	.LASF936
	.byte	0x1
	.value	0x257
	.long	0x1de
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x31f6
	.uleb128 0x2c
	.long	.LASF895
	.byte	0x1
	.value	0x258
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -248
	.uleb128 0x29
	.string	"i"
	.byte	0x1
	.value	0x25a
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -228
	.uleb128 0x2d
	.long	.LASF937
	.byte	0x1
	.value	0x25b
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x2d
	.long	.LASF938
	.byte	0x1
	.value	0x25c
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -220
	.uleb128 0x2d
	.long	.LASF939
	.byte	0x1
	.value	0x25d
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x2d
	.long	.LASF940
	.byte	0x1
	.value	0x25f
	.long	0x31f6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x2d
	.long	.LASF941
	.byte	0x1
	.value	0x260
	.long	0x31f6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x29
	.string	"alt"
	.byte	0x1
	.value	0x261
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -204
	.uleb128 0x2d
	.long	.LASF942
	.byte	0x1
	.value	0x263
	.long	0x234a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x2d
	.long	.LASF943
	.byte	0x1
	.value	0x264
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x2d
	.long	.LASF944
	.byte	0x1
	.value	0x264
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -196
	.uleb128 0x31
	.quad	.LBB11
	.quad	.LBE11-.LBB11
	.long	0x318d
	.uleb128 0x2d
	.long	.LASF945
	.byte	0x1
	.value	0x28a
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x29
	.string	"reg"
	.byte	0x1
	.value	0x28b
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.byte	0
	.uleb128 0x31
	.quad	.LBB12
	.quad	.LBE12-.LBB12
	.long	0x31b1
	.uleb128 0x29
	.string	"j"
	.byte	0x1
	.value	0x2aa
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.byte	0
	.uleb128 0x31
	.quad	.LBB13
	.quad	.LBE13-.LBB13
	.long	0x31d5
	.uleb128 0x29
	.string	"j"
	.byte	0x1
	.value	0x2d4
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -212
	.byte	0
	.uleb128 0x2a
	.quad	.LBB14
	.quad	.LBE14-.LBB14
	.uleb128 0x29
	.string	"j"
	.byte	0x1
	.value	0x2f8
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	0x365
	.long	0x3206
	.uleb128 0x15
	.long	0x1e5
	.byte	0x34
	.byte	0
	.uleb128 0x27
	.long	.LASF946
	.byte	0x1
	.value	0x313
	.long	0x1de
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x324b
	.uleb128 0x2c
	.long	.LASF939
	.byte	0x1
	.value	0x314
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x32
	.long	.LASF947
	.long	0x325b
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.12980
	.byte	0
	.uleb128 0x14
	.long	0x365
	.long	0x325b
	.uleb128 0x15
	.long	0x1e5
	.byte	0x18
	.byte	0
	.uleb128 0x17
	.long	0x324b
	.uleb128 0x27
	.long	.LASF948
	.byte	0x1
	.value	0x32b
	.long	0x2d
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x32a1
	.uleb128 0x2c
	.long	.LASF23
	.byte	0x1
	.value	0x32c
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2d
	.long	.LASF474
	.byte	0x1
	.value	0x32e
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2e
	.long	.LASF949
	.byte	0x1
	.value	0x34d
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x32f1
	.uleb128 0x28
	.string	"reg"
	.byte	0x1
	.value	0x34e
	.long	0x234a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2c
	.long	.LASF57
	.byte	0x1
	.value	0x34f
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x32
	.long	.LASF947
	.long	0x3301
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.12989
	.byte	0
	.uleb128 0x14
	.long	0x365
	.long	0x3301
	.uleb128 0x15
	.long	0x1e5
	.byte	0xb
	.byte	0
	.uleb128 0x17
	.long	0x32f1
	.uleb128 0x2e
	.long	.LASF950
	.byte	0x1
	.value	0x363
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0x3383
	.uleb128 0x2c
	.long	.LASF895
	.byte	0x1
	.value	0x364
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.long	.LASF951
	.byte	0x1
	.value	0x365
	.long	0x21d9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2c
	.long	.LASF57
	.byte	0x1
	.value	0x366
	.long	0x30b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2d
	.long	.LASF952
	.byte	0x1
	.value	0x368
	.long	0x234a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2d
	.long	.LASF953
	.byte	0x1
	.value	0x368
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x32
	.long	.LASF947
	.long	0x3393
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.13003
	.byte	0
	.uleb128 0x14
	.long	0x365
	.long	0x3393
	.uleb128 0x15
	.long	0x1e5
	.byte	0x11
	.byte	0
	.uleb128 0x17
	.long	0x3383
	.uleb128 0x27
	.long	.LASF954
	.byte	0x1
	.value	0x37d
	.long	0x1de
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0x33f9
	.uleb128 0x2c
	.long	.LASF925
	.byte	0x1
	.value	0x37e
	.long	0x2c12
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.string	"reg"
	.byte	0x1
	.value	0x37f
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x29
	.string	"i"
	.byte	0x1
	.value	0x381
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x32
	.long	.LASF947
	.long	0x3409
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.13009
	.byte	0
	.uleb128 0x14
	.long	0x365
	.long	0x3409
	.uleb128 0x15
	.long	0x1e5
	.byte	0xf
	.byte	0
	.uleb128 0x17
	.long	0x33f9
	.uleb128 0x27
	.long	.LASF955
	.byte	0x1
	.value	0x395
	.long	0x2d
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0x34e1
	.uleb128 0x2c
	.long	.LASF895
	.byte	0x1
	.value	0x396
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2c
	.long	.LASF925
	.byte	0x1
	.value	0x397
	.long	0x2c12
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x28
	.string	"reg"
	.byte	0x1
	.value	0x398
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2c
	.long	.LASF956
	.byte	0x1
	.value	0x399
	.long	0x2c7d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x2d
	.long	.LASF957
	.byte	0x1
	.value	0x39b
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2d
	.long	.LASF958
	.byte	0x1
	.value	0x39b
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2d
	.long	.LASF959
	.byte	0x1
	.value	0x39c
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x32
	.long	.LASF947
	.long	0x34f1
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.13024
	.uleb128 0x2a
	.quad	.LBB15
	.quad	.LBE15-.LBB15
	.uleb128 0x2d
	.long	.LASF960
	.byte	0x1
	.value	0x3a2
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2d
	.long	.LASF961
	.byte	0x1
	.value	0x3a3
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	0x365
	.long	0x34f1
	.uleb128 0x15
	.long	0x1e5
	.byte	0xd
	.byte	0
	.uleb128 0x17
	.long	0x34e1
	.uleb128 0x2e
	.long	.LASF962
	.byte	0x1
	.value	0x3d0
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0x3619
	.uleb128 0x2c
	.long	.LASF895
	.byte	0x1
	.value	0x3d1
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2c
	.long	.LASF925
	.byte	0x1
	.value	0x3d2
	.long	0x2c12
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x28
	.string	"reg"
	.byte	0x1
	.value	0x3d3
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x2d
	.long	.LASF959
	.byte	0x1
	.value	0x3d5
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x2d
	.long	.LASF963
	.byte	0x1
	.value	0x3d6
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x29
	.string	"tmp"
	.byte	0x1
	.value	0x3d7
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2d
	.long	.LASF964
	.byte	0x1
	.value	0x3d7
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x29
	.string	"i1"
	.byte	0x1
	.value	0x3d8
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2d
	.long	.LASF965
	.byte	0x1
	.value	0x3d9
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x32
	.long	.LASF947
	.long	0x3629
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.13036
	.uleb128 0x31
	.quad	.LBB16
	.quad	.LBE16-.LBB16
	.long	0x35e8
	.uleb128 0x29
	.string	"tmp"
	.byte	0x1
	.value	0x3ed
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2d
	.long	.LASF966
	.byte	0x1
	.value	0x3ee
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x2a
	.quad	.LBB17
	.quad	.LBE17-.LBB17
	.uleb128 0x2d
	.long	.LASF967
	.byte	0x1
	.value	0x401
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2d
	.long	.LASF968
	.byte	0x1
	.value	0x402
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	0x365
	.long	0x3629
	.uleb128 0x15
	.long	0x1e5
	.byte	0xe
	.byte	0
	.uleb128 0x17
	.long	0x3619
	.uleb128 0x2e
	.long	.LASF969
	.byte	0x1
	.value	0x425
	.quad	.LFB18
	.quad	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0x3740
	.uleb128 0x2c
	.long	.LASF895
	.byte	0x1
	.value	0x426
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2c
	.long	.LASF925
	.byte	0x1
	.value	0x427
	.long	0x2c12
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x28
	.string	"pat"
	.byte	0x1
	.value	0x428
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x2d
	.long	.LASF970
	.byte	0x1
	.value	0x42a
	.long	0x234a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2d
	.long	.LASF971
	.byte	0x1
	.value	0x42b
	.long	0x234a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x29
	.string	"src"
	.byte	0x1
	.value	0x42c
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2d
	.long	.LASF905
	.byte	0x1
	.value	0x42c
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2d
	.long	.LASF951
	.byte	0x1
	.value	0x42d
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x32
	.long	.LASF947
	.long	0x3750
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.13055
	.uleb128 0x31
	.quad	.LBB18
	.quad	.LBE18-.LBB18
	.long	0x36ff
	.uleb128 0x29
	.string	"i"
	.byte	0x1
	.value	0x439
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.byte	0
	.uleb128 0x2a
	.quad	.LBB19
	.quad	.LBE19-.LBB19
	.uleb128 0x2d
	.long	.LASF972
	.byte	0x1
	.value	0x48f
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2d
	.long	.LASF973
	.byte	0x1
	.value	0x48f
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2d
	.long	.LASF974
	.byte	0x1
	.value	0x490
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	0x365
	.long	0x3750
	.uleb128 0x15
	.long	0x1e5
	.byte	0x12
	.byte	0
	.uleb128 0x17
	.long	0x3740
	.uleb128 0x27
	.long	.LASF975
	.byte	0x1
	.value	0x4b8
	.long	0x1de
	.quad	.LFB19
	.quad	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0x37cf
	.uleb128 0x28
	.string	"pat"
	.byte	0x1
	.value	0x4b9
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x29
	.string	"fmt"
	.byte	0x1
	.value	0x4bb
	.long	0x572
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x29
	.string	"i"
	.byte	0x1
	.value	0x4bc
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x29
	.string	"r"
	.byte	0x1
	.value	0x4bc
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2a
	.quad	.LBB20
	.quad	.LBE20-.LBB20
	.uleb128 0x29
	.string	"j"
	.byte	0x1
	.value	0x4ca
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.byte	0
	.uleb128 0x27
	.long	.LASF976
	.byte	0x1
	.value	0x4d8
	.long	0x1de
	.quad	.LFB20
	.quad	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0x3856
	.uleb128 0x2c
	.long	.LASF895
	.byte	0x1
	.value	0x4d9
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x29
	.string	"pat"
	.byte	0x1
	.value	0x4db
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x31
	.quad	.LBB21
	.quad	.LBE21-.LBB21
	.long	0x3834
	.uleb128 0x2d
	.long	.LASF905
	.byte	0x1
	.value	0x4f1
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2a
	.quad	.LBB22
	.quad	.LBE22-.LBB22
	.uleb128 0x2d
	.long	.LASF977
	.byte	0x1
	.value	0x511
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.byte	0
	.uleb128 0x2e
	.long	.LASF978
	.byte	0x1
	.value	0x530
	.quad	.LFB21
	.quad	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.long	0x3911
	.uleb128 0x2c
	.long	.LASF895
	.byte	0x1
	.value	0x531
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2c
	.long	.LASF925
	.byte	0x1
	.value	0x532
	.long	0x2c12
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2c
	.long	.LASF979
	.byte	0x1
	.value	0x533
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2d
	.long	.LASF980
	.byte	0x1
	.value	0x535
	.long	0x234a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2d
	.long	.LASF981
	.byte	0x1
	.value	0x535
	.long	0x234a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2d
	.long	.LASF982
	.byte	0x1
	.value	0x536
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2d
	.long	.LASF983
	.byte	0x1
	.value	0x536
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2d
	.long	.LASF984
	.byte	0x1
	.value	0x537
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2a
	.quad	.LBB23
	.quad	.LBE23-.LBB23
	.uleb128 0x2d
	.long	.LASF985
	.byte	0x1
	.value	0x544
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x2e
	.long	.LASF986
	.byte	0x1
	.value	0x58c
	.quad	.LFB22
	.quad	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.long	0x3bb4
	.uleb128 0x2c
	.long	.LASF895
	.byte	0x1
	.value	0x58d
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x2c
	.long	.LASF925
	.byte	0x1
	.value	0x58e
	.long	0x2c12
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x28
	.string	"pat"
	.byte	0x1
	.value	0x58f
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x2d
	.long	.LASF905
	.byte	0x1
	.value	0x591
	.long	0x234a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x29
	.string	"src"
	.byte	0x1
	.value	0x591
	.long	0x234a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x32
	.long	.LASF947
	.long	0x3bc4
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.13103
	.uleb128 0x31
	.quad	.LBB24
	.quad	.LBE24-.LBB24
	.long	0x39b8
	.uleb128 0x2d
	.long	.LASF951
	.byte	0x1
	.value	0x5a6
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.byte	0
	.uleb128 0x2a
	.quad	.LBB25
	.quad	.LBE25-.LBB25
	.uleb128 0x2d
	.long	.LASF980
	.byte	0x1
	.value	0x5e1
	.long	0x234a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x2d
	.long	.LASF981
	.byte	0x1
	.value	0x5e1
	.long	0x234a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2d
	.long	.LASF982
	.byte	0x1
	.value	0x5e2
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x2d
	.long	.LASF983
	.byte	0x1
	.value	0x5e2
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x2d
	.long	.LASF979
	.byte	0x1
	.value	0x5e3
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x31
	.quad	.LBB26
	.quad	.LBE26-.LBB26
	.long	0x3a3f
	.uleb128 0x2d
	.long	.LASF728
	.byte	0x1
	.value	0x5fb
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.byte	0
	.uleb128 0x31
	.quad	.LBB27
	.quad	.LBE27-.LBB27
	.long	0x3a75
	.uleb128 0x2d
	.long	.LASF987
	.byte	0x1
	.value	0x650
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x2d
	.long	.LASF988
	.byte	0x1
	.value	0x650
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -172
	.byte	0
	.uleb128 0x31
	.quad	.LBB28
	.quad	.LBE28-.LBB28
	.long	0x3abd
	.uleb128 0x2d
	.long	.LASF989
	.byte	0x1
	.value	0x663
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2a
	.quad	.LBB29
	.quad	.LBE29-.LBB29
	.uleb128 0x2d
	.long	.LASF57
	.byte	0x1
	.value	0x672
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.byte	0
	.byte	0
	.uleb128 0x31
	.quad	.LBB30
	.quad	.LBE30-.LBB30
	.long	0x3b05
	.uleb128 0x2d
	.long	.LASF990
	.byte	0x1
	.value	0x682
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2a
	.quad	.LBB31
	.quad	.LBE31-.LBB31
	.uleb128 0x2d
	.long	.LASF57
	.byte	0x1
	.value	0x68a
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -164
	.byte	0
	.byte	0
	.uleb128 0x31
	.quad	.LBB32
	.quad	.LBE32-.LBB32
	.long	0x3b2b
	.uleb128 0x29
	.string	"tmp"
	.byte	0x1
	.value	0x6a3
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.byte	0
	.uleb128 0x31
	.quad	.LBB33
	.quad	.LBE33-.LBB33
	.long	0x3b61
	.uleb128 0x2d
	.long	.LASF991
	.byte	0x1
	.value	0x6f9
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -156
	.uleb128 0x2d
	.long	.LASF992
	.byte	0x1
	.value	0x6fb
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.byte	0
	.uleb128 0x2a
	.quad	.LBB34
	.quad	.LBE34-.LBB34
	.uleb128 0x2d
	.long	.LASF993
	.byte	0x1
	.value	0x70d
	.long	0x3bc9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x29
	.string	"i"
	.byte	0x1
	.value	0x70e
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -180
	.uleb128 0x2a
	.quad	.LBB35
	.quad	.LBE35-.LBB35
	.uleb128 0x2d
	.long	.LASF57
	.byte	0x1
	.value	0x71c
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -148
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	0x365
	.long	0x3bc4
	.uleb128 0x15
	.long	0x1e5
	.byte	0x14
	.byte	0
	.uleb128 0x17
	.long	0x3bb4
	.uleb128 0x14
	.long	0x2d
	.long	0x3bd9
	.uleb128 0x15
	.long	0x1e5
	.byte	0x2
	.byte	0
	.uleb128 0x2e
	.long	.LASF994
	.byte	0x1
	.value	0x74b
	.quad	.LFB23
	.quad	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.long	0x3ee6
	.uleb128 0x2c
	.long	.LASF895
	.byte	0x1
	.value	0x74c
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -248
	.uleb128 0x2c
	.long	.LASF925
	.byte	0x1
	.value	0x74d
	.long	0x2c12
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.uleb128 0x2d
	.long	.LASF939
	.byte	0x1
	.value	0x74f
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x29
	.string	"alt"
	.byte	0x1
	.value	0x750
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x2d
	.long	.LASF995
	.byte	0x1
	.value	0x752
	.long	0x234a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2d
	.long	.LASF996
	.byte	0x1
	.value	0x753
	.long	0x3ee6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2d
	.long	.LASF997
	.byte	0x1
	.value	0x754
	.long	0x3eec
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2d
	.long	.LASF942
	.byte	0x1
	.value	0x756
	.long	0x234a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x2d
	.long	.LASF998
	.byte	0x1
	.value	0x757
	.long	0x3ee6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x2d
	.long	.LASF926
	.byte	0x1
	.value	0x759
	.long	0x2bd1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2d
	.long	.LASF999
	.byte	0x1
	.value	0x75a
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -228
	.uleb128 0x2d
	.long	.LASF937
	.byte	0x1
	.value	0x75b
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x2d
	.long	.LASF951
	.byte	0x1
	.value	0x75c
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x29
	.string	"i"
	.byte	0x1
	.value	0x75d
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -220
	.uleb128 0x2d
	.long	.LASF943
	.byte	0x1
	.value	0x75e
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -196
	.uleb128 0x2d
	.long	.LASF944
	.byte	0x1
	.value	0x75e
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x32
	.long	.LASF947
	.long	0x3ef2
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.13172
	.uleb128 0x31
	.quad	.LBB36
	.quad	.LBE36-.LBB36
	.long	0x3d3d
	.uleb128 0x29
	.string	"reg"
	.byte	0x1
	.value	0x787
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x29
	.string	"loc"
	.byte	0x1
	.value	0x788
	.long	0x234a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.byte	0
	.uleb128 0x31
	.quad	.LBB37
	.quad	.LBE37-.LBB37
	.long	0x3d83
	.uleb128 0x2d
	.long	.LASF945
	.byte	0x1
	.value	0x7a7
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x29
	.string	"reg"
	.byte	0x1
	.value	0x7a8
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x29
	.string	"loc"
	.byte	0x1
	.value	0x7a9
	.long	0x234a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.byte	0
	.uleb128 0x31
	.quad	.LBB38
	.quad	.LBE38-.LBB38
	.long	0x3de7
	.uleb128 0x2d
	.long	.LASF57
	.byte	0x1
	.value	0x7cb
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -188
	.uleb128 0x2a
	.quad	.LBB39
	.quad	.LBE39-.LBB39
	.uleb128 0x29
	.string	"j"
	.byte	0x1
	.value	0x7d6
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -180
	.uleb128 0x29
	.string	"k"
	.byte	0x1
	.value	0x7d6
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x2d
	.long	.LASF985
	.byte	0x1
	.value	0x7d6
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.byte	0
	.byte	0
	.uleb128 0x31
	.quad	.LBB40
	.quad	.LBE40-.LBB40
	.long	0x3e0d
	.uleb128 0x2d
	.long	.LASF1000
	.byte	0x1
	.value	0x7ed
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -172
	.byte	0
	.uleb128 0x31
	.quad	.LBB41
	.quad	.LBE41-.LBB41
	.long	0x3e33
	.uleb128 0x2d
	.long	.LASF1000
	.byte	0x1
	.value	0x7f8
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.byte	0
	.uleb128 0x31
	.quad	.LBB42
	.quad	.LBE42-.LBB42
	.long	0x3e59
	.uleb128 0x2d
	.long	.LASF1000
	.byte	0x1
	.value	0x804
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -164
	.byte	0
	.uleb128 0x31
	.quad	.LBB43
	.quad	.LBE43-.LBB43
	.long	0x3e7d
	.uleb128 0x29
	.string	"j"
	.byte	0x1
	.value	0x817
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.byte	0
	.uleb128 0x31
	.quad	.LBB44
	.quad	.LBE44-.LBB44
	.long	0x3ea1
	.uleb128 0x29
	.string	"j"
	.byte	0x1
	.value	0x832
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -212
	.byte	0
	.uleb128 0x31
	.quad	.LBB45
	.quad	.LBE45-.LBB45
	.long	0x3ec5
	.uleb128 0x29
	.string	"j"
	.byte	0x1
	.value	0x848
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.byte	0
	.uleb128 0x2a
	.quad	.LBB46
	.quad	.LBE46-.LBB46
	.uleb128 0x29
	.string	"j"
	.byte	0x1
	.value	0x857
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -204
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x234a
	.uleb128 0x3
	.byte	0x8
	.long	0x21d9
	.uleb128 0x17
	.long	0x3bb4
	.uleb128 0x2e
	.long	.LASF1001
	.byte	0x1
	.value	0x86c
	.quad	.LFB24
	.quad	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.long	0x3fa5
	.uleb128 0x2c
	.long	.LASF895
	.byte	0x1
	.value	0x86d
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2c
	.long	.LASF925
	.byte	0x1
	.value	0x86e
	.long	0x2c12
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2d
	.long	.LASF952
	.byte	0x1
	.value	0x870
	.long	0x234a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2d
	.long	.LASF951
	.byte	0x1
	.value	0x870
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x29
	.string	"i"
	.byte	0x1
	.value	0x871
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x31
	.quad	.LBB47
	.quad	.LBE47-.LBB47
	.long	0x3f83
	.uleb128 0x29
	.string	"top"
	.byte	0x1
	.value	0x875
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x2a
	.quad	.LBB48
	.quad	.LBE48-.LBB48
	.uleb128 0x2d
	.long	.LASF892
	.byte	0x1
	.value	0x891
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.byte	0
	.uleb128 0x2e
	.long	.LASF1002
	.byte	0x1
	.value	0x8ca
	.quad	.LFB25
	.quad	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.long	0x4041
	.uleb128 0x2c
	.long	.LASF895
	.byte	0x1
	.value	0x8cb
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.string	"old"
	.byte	0x1
	.value	0x8cc
	.long	0x2c12
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x28
	.string	"new"
	.byte	0x1
	.value	0x8cd
	.long	0x2c12
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2c
	.long	.LASF956
	.byte	0x1
	.value	0x8ce
	.long	0x2c7d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x29
	.string	"reg"
	.byte	0x1
	.value	0x8d0
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2d
	.long	.LASF1003
	.byte	0x1
	.value	0x8d1
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x33
	.string	"win"
	.byte	0x1
	.value	0x8f6
	.quad	.L448
	.uleb128 0x32
	.long	.LASF947
	.long	0x4051
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.13267
	.byte	0
	.uleb128 0x14
	.long	0x365
	.long	0x4051
	.uleb128 0x15
	.long	0x1e5
	.byte	0xc
	.byte	0
	.uleb128 0x17
	.long	0x4041
	.uleb128 0x2e
	.long	.LASF1004
	.byte	0x1
	.value	0x931
	.quad	.LFB26
	.quad	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.long	0x40b0
	.uleb128 0x2c
	.long	.LASF929
	.byte	0x1
	.value	0x932
	.long	0x2f28
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.string	"s"
	.byte	0x1
	.value	0x933
	.long	0x2c12
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2a
	.quad	.LBB49
	.quad	.LBE49-.LBB49
	.uleb128 0x29
	.string	"i"
	.byte	0x1
	.value	0x93e
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x27
	.long	.LASF1005
	.byte	0x1
	.value	0x94f
	.long	0x1de
	.quad	.LFB27
	.quad	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.long	0x41b1
	.uleb128 0x2d
	.long	.LASF1006
	.byte	0x1
	.value	0x951
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x29
	.string	"i"
	.byte	0x1
	.value	0x951
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x29
	.string	"e"
	.byte	0x1
	.value	0x952
	.long	0x2bbb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x31
	.quad	.LBB50
	.quad	.LBE50-.LBB50
	.long	0x4140
	.uleb128 0x2d
	.long	.LASF26
	.byte	0x1
	.value	0x956
	.long	0x2bc6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x29
	.string	"bi"
	.byte	0x1
	.value	0x957
	.long	0x2c6c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x29
	.string	"reg"
	.byte	0x1
	.value	0x958
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.byte	0
	.uleb128 0x2a
	.quad	.LBB51
	.quad	.LBE51-.LBB51
	.uleb128 0x2d
	.long	.LASF26
	.byte	0x1
	.value	0x972
	.long	0x2bc6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x29
	.string	"bi"
	.byte	0x1
	.value	0x973
	.long	0x2c6c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x29
	.string	"reg"
	.byte	0x1
	.value	0x974
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x29
	.string	"top"
	.byte	0x1
	.value	0x974
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2a
	.quad	.LBB52
	.quad	.LBE52-.LBB52
	.uleb128 0x2d
	.long	.LASF1007
	.byte	0x1
	.value	0x979
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2e
	.long	.LASF1008
	.byte	0x1
	.value	0x98e
	.quad	.LFB28
	.quad	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.long	0x422d
	.uleb128 0x2d
	.long	.LASF1009
	.byte	0x1
	.value	0x990
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2d
	.long	.LASF1010
	.byte	0x1
	.value	0x990
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2d
	.long	.LASF1011
	.byte	0x1
	.value	0x991
	.long	0x2c12
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2d
	.long	.LASF1012
	.byte	0x1
	.value	0x992
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2a
	.quad	.LBB53
	.quad	.LBE53-.LBB53
	.uleb128 0x29
	.string	"reg"
	.byte	0x1
	.value	0x9a2
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.byte	0
	.uleb128 0x27
	.long	.LASF1013
	.byte	0x1
	.value	0x9b1
	.long	0x1adb
	.quad	.LFB29
	.quad	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.long	0x435b
	.uleb128 0x28
	.string	"e"
	.byte	0x1
	.value	0x9b2
	.long	0x2bbb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x2c
	.long	.LASF929
	.byte	0x1
	.value	0x9b3
	.long	0x2f28
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x2d
	.long	.LASF26
	.byte	0x1
	.value	0x9b5
	.long	0x2bc6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x2d
	.long	.LASF1014
	.byte	0x1
	.value	0x9b5
	.long	0x2bc6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x29
	.string	"bi"
	.byte	0x1
	.value	0x9b6
	.long	0x2c6c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x2d
	.long	.LASF925
	.byte	0x1
	.value	0x9b7
	.long	0x2bd1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2d
	.long	.LASF1015
	.byte	0x1
	.value	0x9b7
	.long	0x2bd1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2d
	.long	.LASF1016
	.byte	0x1
	.value	0x9b8
	.long	0x2c12
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x29
	.string	"reg"
	.byte	0x1
	.value	0x9b9
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -156
	.uleb128 0x33
	.string	"eh1"
	.byte	0x1
	.value	0xa00
	.quad	.L537
	.uleb128 0x32
	.long	.LASF947
	.long	0x435b
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.13344
	.uleb128 0x33
	.string	"eh2"
	.byte	0x1
	.value	0xa05
	.quad	.L539
	.uleb128 0x34
	.long	.Ldebug_ranges0+0
	.long	0x4328
	.uleb128 0x29
	.string	"tmp"
	.byte	0x1
	.value	0x9fb
	.long	0x28d1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.byte	0
	.uleb128 0x2a
	.quad	.LBB56
	.quad	.LBE56-.LBB56
	.uleb128 0x29
	.string	"seq"
	.byte	0x1
	.value	0xa19
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2d
	.long	.LASF1017
	.byte	0x1
	.value	0xa19
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.byte	0
	.byte	0
	.uleb128 0x17
	.long	0x33f9
	.uleb128 0x27
	.long	.LASF1018
	.byte	0x1
	.value	0xa39
	.long	0x1de
	.quad	.LFB30
	.quad	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.long	0x4464
	.uleb128 0x2c
	.long	.LASF929
	.byte	0x1
	.value	0xa3a
	.long	0x2f28
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x2c
	.long	.LASF26
	.byte	0x1
	.value	0xa3b
	.long	0x2bc6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x2d
	.long	.LASF925
	.byte	0x1
	.value	0xa3d
	.long	0x2bd1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x29
	.string	"bi"
	.byte	0x1
	.value	0xa3e
	.long	0x2c6c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2d
	.long	.LASF1006
	.byte	0x1
	.value	0xa3f
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x29
	.string	"reg"
	.byte	0x1
	.value	0xa3f
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x2d
	.long	.LASF895
	.byte	0x1
	.value	0xa40
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2d
	.long	.LASF804
	.byte	0x1
	.value	0xa40
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x29
	.string	"e"
	.byte	0x1
	.value	0xa41
	.long	0x2bbb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2d
	.long	.LASF1019
	.byte	0x1
	.value	0xa41
	.long	0x2bbb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x32
	.long	.LASF947
	.long	0x4464
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.13363
	.uleb128 0x33
	.string	"win"
	.byte	0x1
	.value	0xab8
	.quad	.L577
	.uleb128 0x2a
	.quad	.LBB57
	.quad	.LBE57-.LBB57
	.uleb128 0x29
	.string	"set"
	.byte	0x1
	.value	0xaa6
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.byte	0
	.uleb128 0x17
	.long	0x3619
	.uleb128 0x27
	.long	.LASF1020
	.byte	0x1
	.value	0xad8
	.long	0x1de
	.quad	.LFB31
	.quad	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.long	0x44f5
	.uleb128 0x2c
	.long	.LASF929
	.byte	0x1
	.value	0xad9
	.long	0x2f28
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2c
	.long	.LASF26
	.byte	0x1
	.value	0xada
	.long	0x2bc6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2d
	.long	.LASF911
	.byte	0x1
	.value	0xadc
	.long	0x44f5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x29
	.string	"sp"
	.byte	0x1
	.value	0xadc
	.long	0x44f5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2d
	.long	.LASF1006
	.byte	0x1
	.value	0xadd
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2a
	.quad	.LBB58
	.quad	.LBE58-.LBB58
	.uleb128 0x29
	.string	"e"
	.byte	0x1
	.value	0xae7
	.long	0x2bbb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x2bc6
	.uleb128 0x27
	.long	.LASF1021
	.byte	0x1
	.value	0xaff
	.long	0x1de
	.quad	.LFB32
	.quad	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.long	0x45a5
	.uleb128 0x2c
	.long	.LASF929
	.byte	0x1
	.value	0xb00
	.long	0x2f28
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2d
	.long	.LASF1006
	.byte	0x1
	.value	0xb02
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x29
	.string	"i"
	.byte	0x1
	.value	0xb02
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x29
	.string	"e"
	.byte	0x1
	.value	0xb03
	.long	0x2bbb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2a
	.quad	.LBB59
	.quad	.LBE59-.LBB59
	.uleb128 0x29
	.string	"b"
	.byte	0x1
	.value	0xb18
	.long	0x2bc6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x29
	.string	"bi"
	.byte	0x1
	.value	0xb19
	.long	0x2c6c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2a
	.quad	.LBB60
	.quad	.LBE60-.LBB60
	.uleb128 0x29
	.string	"reg"
	.byte	0x1
	.value	0xb1d
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x35
	.long	.LASF1022
	.byte	0x1
	.byte	0xdb
	.long	0x28c0
	.uleb128 0x9
	.byte	0x3
	.quad	stack_regs_mentioned_data
	.uleb128 0x35
	.long	.LASF1023
	.byte	0x1
	.byte	0xde
	.long	0x2bc6
	.uleb128 0x9
	.byte	0x3
	.quad	current_block
	.uleb128 0x14
	.long	0x2d
	.long	0x45e5
	.uleb128 0x15
	.long	0x1e5
	.byte	0x7
	.uleb128 0x15
	.long	0x1e5
	.byte	0x3a
	.byte	0
	.uleb128 0x35
	.long	.LASF1024
	.byte	0x1
	.byte	0xe2
	.long	0x45cf
	.uleb128 0x9
	.byte	0x3
	.quad	FP_mode_reg
	.uleb128 0x36
	.string	"nan"
	.byte	0x1
	.byte	0xe8
	.long	0x2d
	.uleb128 0x9
	.byte	0x3
	.quad	nan
	.uleb128 0x2d
	.long	.LASF1025
	.byte	0x1
	.value	0x14d
	.long	0x2d
	.uleb128 0x9
	.byte	0x3
	.quad	ix86_flags_rtx
	.uleb128 0x37
	.long	.LASF1026
	.byte	0x5
	.byte	0x62
	.long	0x1de
	.uleb128 0x14
	.long	0x700
	.long	0x4640
	.uleb128 0x15
	.long	0x1e5
	.byte	0x3a
	.byte	0
	.uleb128 0x37
	.long	.LASF173
	.byte	0xa
	.byte	0x34
	.long	0x464b
	.uleb128 0x17
	.long	0x4630
	.uleb128 0x14
	.long	0x32d
	.long	0x4660
	.uleb128 0x15
	.long	0x1e5
	.byte	0x3a
	.byte	0
	.uleb128 0x37
	.long	.LASF1027
	.byte	0xa
	.byte	0x50
	.long	0x466b
	.uleb128 0x17
	.long	0x4650
	.uleb128 0x37
	.long	.LASF1028
	.byte	0xa
	.byte	0x7b
	.long	0x467b
	.uleb128 0x17
	.long	0x4650
	.uleb128 0x14
	.long	0x58b
	.long	0x4690
	.uleb128 0x15
	.long	0x1e5
	.byte	0x8
	.byte	0
	.uleb128 0x37
	.long	.LASF1029
	.byte	0xa
	.byte	0x9d
	.long	0x469b
	.uleb128 0x17
	.long	0x4680
	.uleb128 0x38
	.long	.LASF1030
	.byte	0x4
	.value	0xa98
	.long	0x123
	.uleb128 0x14
	.long	0x32d
	.long	0x46bc
	.uleb128 0x15
	.long	0x1e5
	.byte	0x98
	.byte	0
	.uleb128 0x37
	.long	.LASF1031
	.byte	0x2
	.byte	0x36
	.long	0x46c7
	.uleb128 0x17
	.long	0x46ac
	.uleb128 0x14
	.long	0x572
	.long	0x46dc
	.uleb128 0x15
	.long	0x1e5
	.byte	0x98
	.byte	0
	.uleb128 0x37
	.long	.LASF1032
	.byte	0x2
	.byte	0x3c
	.long	0x46e7
	.uleb128 0x17
	.long	0x46cc
	.uleb128 0x14
	.long	0x365
	.long	0x46fc
	.uleb128 0x15
	.long	0x1e5
	.byte	0x98
	.byte	0
	.uleb128 0x37
	.long	.LASF1033
	.byte	0x2
	.byte	0x3f
	.long	0x4707
	.uleb128 0x17
	.long	0x46ec
	.uleb128 0x14
	.long	0x2d
	.long	0x471c
	.uleb128 0x15
	.long	0x1e5
	.byte	0x80
	.byte	0
	.uleb128 0x38
	.long	.LASF1034
	.byte	0x2
	.value	0x611
	.long	0x470c
	.uleb128 0x14
	.long	0x2d
	.long	0x473e
	.uleb128 0x15
	.long	0x1e5
	.byte	0x2
	.uleb128 0x15
	.long	0x1e5
	.byte	0x3a
	.byte	0
	.uleb128 0x38
	.long	.LASF1035
	.byte	0x2
	.value	0x619
	.long	0x4728
	.uleb128 0x14
	.long	0x2d
	.long	0x475a
	.uleb128 0x15
	.long	0x1e5
	.byte	0xa
	.byte	0
	.uleb128 0x38
	.long	.LASF1036
	.byte	0x2
	.value	0x652
	.long	0x474a
	.uleb128 0x37
	.long	.LASF1037
	.byte	0x11
	.byte	0xa2
	.long	0x31f6
	.uleb128 0x14
	.long	0x572
	.long	0x4781
	.uleb128 0x15
	.long	0x1e5
	.byte	0x34
	.byte	0
	.uleb128 0x38
	.long	.LASF1038
	.byte	0x12
	.value	0x1e5
	.long	0x4771
	.uleb128 0x14
	.long	0x30b
	.long	0x479d
	.uleb128 0x15
	.long	0x1e5
	.byte	0x18
	.byte	0
	.uleb128 0x38
	.long	.LASF1039
	.byte	0x12
	.value	0x1cb
	.long	0x478d
	.uleb128 0x37
	.long	.LASF1040
	.byte	0x14
	.byte	0x3d
	.long	0x1de
	.uleb128 0x38
	.long	.LASF1041
	.byte	0x14
	.value	0x1c8
	.long	0x1de
	.uleb128 0x37
	.long	.LASF1042
	.byte	0x13
	.byte	0x91
	.long	0x1de
	.uleb128 0x37
	.long	.LASF884
	.byte	0x13
	.byte	0xcb
	.long	0x29bc
	.uleb128 0x14
	.long	0x28fb
	.long	0x47ec
	.uleb128 0x15
	.long	0x1e5
	.byte	0x1d
	.uleb128 0x15
	.long	0x1e5
	.byte	0x1d
	.byte	0
	.uleb128 0x37
	.long	.LASF1043
	.byte	0x13
	.byte	0xcf
	.long	0x47d6
	.uleb128 0x37
	.long	.LASF1044
	.byte	0xf
	.byte	0xe4
	.long	0x1de
	.uleb128 0x37
	.long	.LASF1045
	.byte	0xf
	.byte	0xec
	.long	0x28c0
	.uleb128 0x14
	.long	0x20d5
	.long	0x481d
	.uleb128 0x15
	.long	0x1e5
	.byte	0x1
	.byte	0
	.uleb128 0x38
	.long	.LASF1046
	.byte	0xf
	.value	0x116
	.long	0x480d
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
	.uleb128 0xa
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
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x17
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
	.uleb128 0x1e
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x33
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x34
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0x38
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
	.quad	.LBB54-.Ltext0
	.quad	.LBE54-.Ltext0
	.quad	.LBB55-.Ltext0
	.quad	.LBE55-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF272:
	.string	"BUILT_IN_EXTRACT_RETURN_ADDR"
.LASF526:
	.string	"TI_UV16QI_TYPE"
.LASF193:
	.string	"BUILT_IN_CONJ"
.LASF415:
	.string	"profile_label_no"
.LASF1002:
	.string	"change_stack"
.LASF704:
	.string	"rtstr"
.LASF541:
	.string	"itk_unsigned_char"
.LASF924:
	.string	"next_flags_user"
.LASF765:
	.string	"NOTE_INSN_DELETED"
.LASF239:
	.string	"BUILT_IN_AGGREGATE_INCOMING_ADDRESS"
.LASF104:
	.string	"_unused2"
.LASF633:
	.string	"UMOD"
.LASF687:
	.string	"min_align"
.LASF189:
	.string	"BUILT_IN_FABSF"
.LASF90:
	.string	"_fileno"
.LASF190:
	.string	"BUILT_IN_FABSL"
.LASF836:
	.string	"varray_data_tag"
.LASF35:
	.string	"AD_REGS"
.LASF993:
	.string	"src_note"
.LASF986:
	.string	"subst_stack_regs_pat"
.LASF713:
	.string	"first"
.LASF938:
	.string	"malformed_asm"
.LASF533:
	.string	"TI_V2SI_TYPE"
.LASF409:
	.string	"inlinable"
.LASF441:
	.string	"uses_const_pool"
.LASF494:
	.string	"TI_UINTSI_TYPE"
.LASF674:
	.string	"CONSTANT_P_RTX"
.LASF339:
	.string	"tree_type"
.LASF804:
	.string	"next"
.LASF26:
	.string	"block"
.LASF551:
	.string	"_Bool"
.LASF703:
	.string	"rtuint"
.LASF1044:
	.string	"n_basic_blocks"
.LASF469:
	.string	"pure_flag"
.LASF707:
	.string	"rt_cselib"
.LASF577:
	.string	"DEFINE_PEEPHOLE2"
.LASF12:
	.string	"rtvec_def"
.LASF414:
	.string	"inl_max_label_num"
.LASF637:
	.string	"LSHIFTRT"
.LASF16:
	.string	"common"
.LASF1048:
	.string	"reg-stack.c"
.LASF273:
	.string	"BUILT_IN_EH_RETURN"
.LASF571:
	.string	"MATCH_PAR_DUP"
.LASF95:
	.string	"_shortbuf"
.LASF1049:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/403.gcc/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF632:
	.string	"UDIV"
.LASF10:
	.string	"rtvec"
.LASF493:
	.string	"TI_UINTHI_TYPE"
.LASF873:
	.string	"reject"
.LASF431:
	.string	"contains_functions"
.LASF212:
	.string	"BUILT_IN_STRCPY"
.LASF916:
	.string	"done"
.LASF565:
	.string	"MATCH_OPERAND"
.LASF513:
	.string	"TI_VOID_TYPE"
.LASF170:
	.string	"CCFPmode"
.LASF275:
	.string	"BUILT_IN_VARARGS_START"
.LASF992:
	.string	"idx2"
.LASF316:
	.string	"imag"
.LASF111:
	.string	"reg_class"
.LASF615:
	.string	"CONST_STRING"
.LASF869:
	.string	"OP_INOUT"
.LASF654:
	.string	"UNLE"
.LASF39:
	.string	"LEGACY_REGS"
.LASF692:
	.string	"max_after_base"
.LASF315:
	.string	"real"
.LASF500:
	.string	"TI_NULL_POINTER"
.LASF655:
	.string	"UNLT"
.LASF337:
	.string	"fragment_chain"
.LASF311:
	.string	"tree_string"
.LASF1037:
	.string	"regs_ever_live"
.LASF346:
	.string	"no_force_blk_flag"
.LASF336:
	.string	"fragment_origin"
.LASF831:
	.string	"initial_value_struct"
.LASF529:
	.string	"TI_V4SI_TYPE"
.LASF252:
	.string	"BUILT_IN_FWRITE"
.LASF907:
	.string	"probability"
.LASF142:
	.string	"CTImode"
.LASF76:
	.string	"_flags"
.LASF352:
	.string	"user_align"
.LASF1013:
	.string	"compensate_edge"
.LASF460:
	.string	"static_dtor_flag"
.LASF312:
	.string	"length"
.LASF483:
	.string	"lang_type"
.LASF468:
	.string	"built_in_class"
.LASF71:
	.string	"__off_t"
.LASF451:
	.string	"inline_flag"
.LASF1051:
	.string	"stack_regs_mentioned"
.LASF503:
	.string	"TI_BITSIZE_ZERO"
.LASF228:
	.string	"BUILT_IN_COSF"
.LASF878:
	.string	"offmem_ok"
.LASF140:
	.string	"CSImode"
.LASF41:
	.string	"FP_TOP_REG"
.LASF231:
	.string	"BUILT_IN_COSL"
.LASF676:
	.string	"VEC_MERGE"
.LASF778:
	.string	"NOTE_INSN_EH_REGION_BEG"
.LASF412:
	.string	"original_decl_initial"
.LASF994:
	.string	"subst_asm_stack_regs"
.LASF948:
	.string	"stack_result"
.LASF96:
	.string	"_lock"
.LASF838:
	.string	"uhint"
.LASF609:
	.string	"RETURN"
.LASF202:
	.string	"BUILT_IN_BZERO"
.LASF839:
	.string	"generic"
.LASF235:
	.string	"BUILT_IN_ARGS_INFO"
.LASF1046:
	.string	"entry_exit_blocks"
.LASF14:
	.string	"elem"
.LASF176:
	.string	"MODE_FLOAT"
.LASF208:
	.string	"BUILT_IN_MEMCMP"
.LASF250:
	.string	"BUILT_IN_FPUTC"
.LASF242:
	.string	"BUILT_IN_RETURN"
.LASF964:
	.string	"other_reg"
.LASF290:
	.string	"unused_0"
.LASF306:
	.string	"unused_1"
.LASF870:
	.string	"operand_alternative"
.LASF491:
	.string	"TI_INTTI_TYPE"
.LASF251:
	.string	"BUILT_IN_FPUTS"
.LASF696:
	.string	"alias"
.LASF693:
	.string	"offset_unsigned"
.LASF146:
	.string	"V2SImode"
.LASF257:
	.string	"BUILT_IN_FPUTC_UNLOCKED"
.LASF438:
	.string	"stdarg"
.LASF399:
	.string	"x_trampoline_list"
.LASF343:
	.string	"attributes"
.LASF510:
	.string	"TI_FLOAT_TYPE"
.LASF19:
	.string	"vector"
.LASF36:
	.string	"Q_REGS"
.LASF968:
	.string	"i1dest"
.LASF596:
	.string	"CODE_LABEL"
.LASF258:
	.string	"BUILT_IN_FPUTS_UNLOCKED"
.LASF141:
	.string	"CDImode"
.LASF602:
	.string	"UNSPEC"
.LASF224:
	.string	"BUILT_IN_SIN"
.LASF283:
	.string	"side_effects_flag"
.LASF516:
	.string	"TI_PTRDIFF_TYPE"
.LASF771:
	.string	"NOTE_INSN_LOOP_VTOP"
.LASF598:
	.string	"COND_EXEC"
.LASF612:
	.string	"CONST_INT"
.LASF608:
	.string	"CALL"
.LASF61:
	.string	"maybe_vaarg"
.LASF420:
	.string	"epilogue_delay_list"
.LASF471:
	.string	"uninlinable"
.LASF148:
	.string	"V4QImode"
.LASF587:
	.string	"ATTR"
.LASF271:
	.string	"BUILT_IN_FROB_RETURN_ADDR"
.LASF728:
	.string	"count"
.LASF1038:
	.string	"reg_names"
.LASF705:
	.string	"rttype"
.LASF1032:
	.string	"rtx_format"
.LASF30:
	.string	"DREG"
.LASF326:
	.string	"complexity"
.LASF718:
	.string	"head_tree"
.LASF48:
	.string	"FLOAT_SSE_REGS"
.LASF795:
	.string	"GR_VIRTUAL_STACK_ARGS"
.LASF340:
	.string	"values"
.LASF308:
	.string	"tree_int_cst"
.LASF1029:
	.string	"class_narrowest_mode"
.LASF969:
	.string	"move_for_stack_reg"
.LASF227:
	.string	"BUILT_IN_SINF"
.LASF147:
	.string	"V2DImode"
.LASF834:
	.string	"language_function"
.LASF729:
	.string	"frequency"
.LASF230:
	.string	"BUILT_IN_SINL"
.LASF287:
	.string	"readonly_flag"
.LASF1011:
	.string	"output_stack"
.LASF864:
	.string	"varray_type"
.LASF698:
	.string	"mem_attrs"
.LASF82:
	.string	"_IO_write_end"
.LASF742:
	.string	"REG_UNUSED"
.LASF580:
	.string	"DEFINE_DELAY"
.LASF630:
	.string	"MINUS"
.LASF396:
	.string	"x_clobber_return_insn"
.LASF33:
	.string	"SIREG"
.LASF844:
	.string	"sched_info_tag"
.LASF207:
	.string	"BUILT_IN_MEMCPY"
.LASF620:
	.string	"STRICT_LOW_PART"
.LASF1024:
	.string	"FP_mode_reg"
.LASF955:
	.string	"emit_pop_insn"
.LASF819:
	.string	"x_regno_reg_rtx"
.LASF562:
	.string	"INCLUDE"
.LASF925:
	.string	"regstack"
.LASF791:
	.string	"GR_FRAME_POINTER"
.LASF282:
	.string	"chain"
.LASF726:
	.string	"index"
.LASF851:
	.string	"freq"
.LASF658:
	.string	"ZERO_EXTEND"
.LASF236:
	.string	"BUILT_IN_CONSTANT_P"
.LASF661:
	.string	"FLOAT_TRUNCATE"
.LASF826:
	.string	"x_forced_labels"
.LASF262:
	.string	"BUILT_IN_ISGREATEREQUAL"
.LASF380:
	.string	"internal_arg_pointer"
.LASF882:
	.string	"is_address"
.LASF445:
	.string	"tree_decl"
.LASF1006:
	.string	"inserted"
.LASF788:
	.string	"GR_PC"
.LASF32:
	.string	"BREG"
.LASF157:
	.string	"V2SFmode"
.LASF858:
	.string	"varray_data"
.LASF833:
	.string	"machine_function"
.LASF662:
	.string	"FLOAT"
.LASF754:
	.string	"REG_EH_CONTEXT"
.LASF112:
	.string	"machine_mode"
.LASF710:
	.string	"rtmem"
.LASF408:
	.string	"fixup_var_refs_queue"
.LASF671:
	.string	"RANGE_REG"
.LASF1000:
	.string	"regnum"
.LASF708:
	.string	"rtbit"
.LASF896:
	.string	"bitmap_element_def"
.LASF3:
	.string	"call"
.LASF119:
	.string	"TImode"
.LASF647:
	.string	"PRE_MODIFY"
.LASF423:
	.string	"returns_pointer"
.LASF309:
	.string	"realvaluetype"
.LASF660:
	.string	"FLOAT_EXTEND"
.LASF205:
	.string	"BUILT_IN_INDEX"
.LASF965:
	.string	"i1set"
.LASF848:
	.string	"last_note_uid"
.LASF368:
	.string	"stmt"
.LASF6:
	.string	"in_struct"
.LASF766:
	.string	"NOTE_INSN_BLOCK_BEG"
.LASF117:
	.string	"SImode"
.LASF604:
	.string	"ADDR_VEC"
.LASF829:
	.string	"stmt_status"
.LASF158:
	.string	"V2DFmode"
.LASF686:
	.string	"LAST_AND_UNUSED_RTX_CODE"
.LASF296:
	.string	"protected_flag"
.LASF24:
	.string	"type"
.LASF60:
	.string	"sse_regno"
.LASF715:
	.string	"indx"
.LASF416:
	.string	"machine"
.LASF1005:
	.string	"convert_regs_entry"
.LASF623:
	.string	"SYMBOL_REF"
.LASF764:
	.string	"NOTE_INSN_BIAS"
.LASF145:
	.string	"V2HImode"
.LASF484:
	.string	"lang_decl"
.LASF786:
	.string	"NOTE_INSN_MAX"
.LASF824:
	.string	"x_saveregs_value"
.LASF935:
	.string	"regno_off"
.LASF331:
	.string	"block_num"
.LASF576:
	.string	"DEFINE_INSN_AND_SPLIT"
.LASF628:
	.string	"COMPARE"
.LASF656:
	.string	"LTGT"
.LASF325:
	.string	"tree_exp"
.LASF985:
	.string	"temp"
.LASF803:
	.string	"unsignedp"
.LASF668:
	.string	"HIGH"
.LASF625:
	.string	"QUEUED"
.LASF37:
	.string	"NON_Q_REGS"
.LASF1:
	.string	"mode"
.LASF118:
	.string	"DImode"
.LASF185:
	.string	"BUILT_IN_ALLOCA"
.LASF835:
	.string	"const_equiv_data"
.LASF382:
	.string	"hard_reg_initial_vals"
.LASF822:
	.string	"x_inhibit_defer_pop"
.LASF547:
	.string	"itk_unsigned_long"
.LASF89:
	.string	"_chain"
.LASF646:
	.string	"POST_INC"
.LASF496:
	.string	"TI_UINTTI_TYPE"
.LASF459:
	.string	"static_ctor_flag"
.LASF131:
	.string	"TFmode"
.LASF244:
	.string	"BUILT_IN_LONGJMP"
.LASF67:
	.string	"unsigned char"
.LASF832:
	.string	"temp_slot"
.LASF42:
	.string	"FP_SECOND_REG"
.LASF288:
	.string	"unsigned_flag"
.LASF912:
	.string	"block_info_def"
.LASF473:
	.string	"arguments"
.LASF381:
	.string	"cannot_inline"
.LASF1018:
	.string	"convert_regs_1"
.LASF1050:
	.string	"_IO_lock_t"
.LASF515:
	.string	"TI_CONST_PTR_TYPE"
.LASF365:
	.string	"lang_specific"
.LASF872:
	.string	"class"
.LASF855:
	.string	"basic_block"
.LASF114:
	.string	"BImode"
.LASF364:
	.string	"alias_set"
.LASF741:
	.string	"REG_NO_CONFLICT"
.LASF128:
	.string	"SFmode"
.LASF490:
	.string	"TI_INTDI_TYPE"
.LASF370:
	.string	"emit"
.LASF887:
	.string	"constraints"
.LASF349:
	.string	"packed_flag"
.LASF186:
	.string	"BUILT_IN_ABS"
.LASF310:
	.string	"tree_real_cst"
.LASF881:
	.string	"incmem_ok"
.LASF593:
	.string	"JUMP_INSN"
.LASF723:
	.string	"cond_local_set"
.LASF942:
	.string	"clobber_reg"
.LASF1014:
	.string	"target"
.LASF543:
	.string	"itk_unsigned_short"
.LASF908:
	.string	"edge"
.LASF196:
	.string	"BUILT_IN_CREAL"
.LASF180:
	.string	"MODE_COMPLEX_FLOAT"
.LASF709:
	.string	"rttree"
.LASF945:
	.string	"clobber"
.LASF450:
	.string	"regdecl_flag"
.LASF192:
	.string	"BUILT_IN_IMAXABS"
.LASF201:
	.string	"BUILT_IN_CIMAGL"
.LASF847:
	.string	"last_uid"
.LASF763:
	.string	"insn_note"
.LASF885:
	.string	"operand"
.LASF782:
	.string	"NOTE_INSN_RANGE_END"
.LASF890:
	.string	"dup_loc"
.LASF575:
	.string	"DEFINE_SPLIT"
.LASF430:
	.string	"has_nonlocal_goto"
.LASF444:
	.string	"arg_pointer_save_area_init"
.LASF261:
	.string	"BUILT_IN_ISGREATER"
.LASF245:
	.string	"BUILT_IN_TRAP"
.LASF614:
	.string	"CONST_VECTOR"
.LASF572:
	.string	"MATCH_INSN"
.LASF952:
	.string	"note_link"
.LASF307:
	.string	"high"
.LASF1007:
	.string	"init"
.LASF532:
	.string	"TI_V4HI_TYPE"
.LASF390:
	.string	"x_save_expr_regs"
.LASF129:
	.string	"DFmode"
.LASF44:
	.string	"SSE_REGS"
.LASF901:
	.string	"gcov_type"
.LASF970:
	.string	"psrc"
.LASF921:
	.string	"EMIT_BEFORE"
.LASF65:
	.string	"size_t"
.LASF606:
	.string	"PREFETCH"
.LASF53:
	.string	"LIM_REG_CLASSES"
.LASF52:
	.string	"ALL_REGS"
.LASF373:
	.string	"pops_args"
.LASF123:
	.string	"PSImode"
.LASF392:
	.string	"x_rtl_expr_chain"
.LASF211:
	.string	"BUILT_IN_STRNCAT"
.LASF419:
	.string	"language"
.LASF554:
	.string	"SSIZETYPE"
.LASF700:
	.string	"rtunion_def"
.LASF264:
	.string	"BUILT_IN_ISLESSEQUAL"
.LASF586:
	.string	"DEFINE_ATTR"
.LASF555:
	.string	"USIZETYPE"
.LASF588:
	.string	"SET_ATTR"
.LASF137:
	.string	"TCmode"
.LASF384:
	.string	"x_nonlocal_labels"
.LASF663:
	.string	"UNSIGNED_FLOAT"
.LASF753:
	.string	"REG_FRAME_RELATED_EXPR"
.LASF711:
	.string	"cselib_val_struct"
.LASF785:
	.string	"NOTE_INSN_EXPECTED_VALUE"
.LASF81:
	.string	"_IO_write_ptr"
.LASF635:
	.string	"ROTATE"
.LASF246:
	.string	"BUILT_IN_PREFETCH"
.LASF721:
	.string	"succ"
.LASF850:
	.string	"refs"
.LASF936:
	.string	"check_asm_stack_operands"
.LASF659:
	.string	"TRUNCATE"
.LASF961:
	.string	"reg2"
.LASF746:
	.string	"REG_DEP_ANTI"
.LASF134:
	.string	"SCmode"
.LASF919:
	.string	"emit_where"
.LASF1031:
	.string	"rtx_length"
.LASF1019:
	.string	"beste"
.LASF1036:
	.string	"global_rtl"
.LASF922:
	.string	"test"
.LASF371:
	.string	"varasm"
.LASF538:
	.string	"integer_type_kind"
.LASF124:
	.string	"PDImode"
.LASF767:
	.string	"NOTE_INSN_BLOCK_END"
.LASF507:
	.string	"TI_COMPLEX_FLOAT_TYPE"
.LASF841:
	.string	"bitmap"
.LASF413:
	.string	"inl_last_parm_insn"
.LASF776:
	.string	"NOTE_INSN_DELETED_LABEL"
.LASF1033:
	.string	"rtx_class"
.LASF361:
	.string	"main_variant"
.LASF730:
	.string	"flags"
.LASF499:
	.string	"TI_INTEGER_MINUS_ONE"
.LASF512:
	.string	"TI_LONG_DOUBLE_TYPE"
.LASF285:
	.string	"addressable_flag"
.LASF590:
	.string	"EQ_ATTR"
.LASF293:
	.string	"static_flag"
.LASF509:
	.string	"TI_COMPLEX_LONG_DOUBLE_TYPE"
.LASF167:
	.string	"CCGOCmode"
.LASF621:
	.string	"CONCAT"
.LASF222:
	.string	"BUILT_IN_STRRCHR"
.LASF903:
	.string	"pred_next"
.LASF341:
	.string	"size"
.LASF528:
	.string	"TI_V16SF_TYPE"
.LASF689:
	.string	"min_after_vec"
.LASF508:
	.string	"TI_COMPLEX_DOUBLE_TYPE"
.LASF74:
	.string	"FILE"
.LASF627:
	.string	"COND"
.LASF177:
	.string	"MODE_PARTIAL_INT"
.LASF400:
	.string	"x_parm_birth_insn"
.LASF1017:
	.string	"after"
.LASF402:
	.string	"x_max_parm_reg"
.LASF203:
	.string	"BUILT_IN_BCMP"
.LASF15:
	.string	"tree"
.LASF135:
	.string	"DCmode"
.LASF578:
	.string	"DEFINE_COMBINE"
.LASF1047:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF514:
	.string	"TI_PTR_TYPE"
.LASF394:
	.string	"x_tail_recursion_reentry"
.LASF22:
	.string	"identifier"
.LASF636:
	.string	"ASHIFTRT"
.LASF165:
	.string	"CCmode"
.LASF274:
	.string	"BUILT_IN_EH_RETURN_DATA_REGNO"
.LASF266:
	.string	"BUILT_IN_ISUNORDERED"
.LASF1043:
	.string	"recog_op_alt"
.LASF719:
	.string	"end_tree"
.LASF43:
	.string	"FLOAT_REGS"
.LASF769:
	.string	"NOTE_INSN_LOOP_END"
.LASF163:
	.string	"V16SFmode"
.LASF1009:
	.string	"value_reg_low"
.LASF680:
	.string	"SS_PLUS"
.LASF475:
	.string	"initial"
.LASF783:
	.string	"NOTE_INSN_LIVE"
.LASF583:
	.string	"DEFINE_COND_EXEC"
.LASF957:
	.string	"pop_insn"
.LASF85:
	.string	"_IO_save_base"
.LASF553:
	.string	"SIZETYPE"
.LASF800:
	.string	"var_refs_queue"
.LASF876:
	.string	"earlyclobber"
.LASF823:
	.string	"x_stack_pointer_delta"
.LASF579:
	.string	"DEFINE_EXPAND"
.LASF433:
	.string	"is_thunk"
.LASF861:
	.string	"elements_used"
.LASF154:
	.string	"V8SImode"
.LASF386:
	.string	"x_nonlocal_goto_handler_labels"
.LASF592:
	.string	"INSN"
.LASF702:
	.string	"rtint"
.LASF276:
	.string	"BUILT_IN_STDARG_START"
.LASF465:
	.string	"comdat_flag"
.LASF622:
	.string	"LABEL_REF"
.LASF996:
	.string	"note_loc"
.LASF495:
	.string	"TI_UINTDI_TYPE"
.LASF956:
	.string	"where"
.LASF745:
	.string	"REG_LABEL"
.LASF505:
	.string	"TI_BITSIZE_UNIT"
.LASF743:
	.string	"REG_CC_SETTER"
.LASF857:
	.string	"elt_list"
.LASF1015:
	.string	"tmpstack"
.LASF967:
	.string	"i1src"
.LASF733:
	.string	"REG_DEAD"
.LASF929:
	.string	"file"
.LASF773:
	.string	"NOTE_INSN_FUNCTION_END"
.LASF99:
	.string	"__pad2"
.LASF1027:
	.string	"mode_size"
.LASF736:
	.string	"REG_EQUAL"
.LASF0:
	.string	"code"
.LASF900:
	.string	"regset"
.LASF17:
	.string	"int_cst"
.LASF511:
	.string	"TI_DOUBLE_TYPE"
.LASF317:
	.string	"tree_vector"
.LASF1039:
	.string	"reg_class_size"
.LASF166:
	.string	"CCGCmode"
.LASF725:
	.string	"global_live_at_end"
.LASF25:
	.string	"list"
.LASF950:
	.string	"remove_regno_note"
.LASF618:
	.string	"SCRATCH"
.LASF152:
	.string	"V8QImode"
.LASF155:
	.string	"V8DImode"
.LASF183:
	.string	"MAX_MODE_CLASS"
.LASF549:
	.string	"itk_unsigned_long_long"
.LASF657:
	.string	"SIGN_EXTEND"
.LASF425:
	.string	"calls_setjmp"
.LASF323:
	.string	"value"
.LASF1034:
	.string	"const_int_rtx"
.LASF679:
	.string	"VEC_DUPLICATE"
.LASF387:
	.string	"x_nonlocal_goto_stack_level"
.LASF106:
	.string	"_next"
.LASF218:
	.string	"BUILT_IN_STRPBRK"
.LASF894:
	.string	"n_alternatives"
.LASF369:
	.string	"expr"
.LASF954:
	.string	"get_hard_regnum"
.LASF779:
	.string	"NOTE_INSN_EH_REGION_END"
.LASF338:
	.string	"address"
.LASF860:
	.string	"num_elements"
.LASF888:
	.string	"operand_mode"
.LASF247:
	.string	"BUILT_IN_PUTCHAR"
.LASF385:
	.string	"x_nonlocal_goto_handler_slots"
.LASF161:
	.string	"V8SFmode"
.LASF989:
	.string	"src1_reg"
.LASF953:
	.string	"this"
.LASF895:
	.string	"insn"
.LASF237:
	.string	"BUILT_IN_FRAME_ADDRESS"
.LASF34:
	.string	"DIREG"
.LASF744:
	.string	"REG_CC_USER"
.LASF972:
	.string	"push_rtx"
.LASF601:
	.string	"ASM_OPERANDS"
.LASF405:
	.string	"x_temp_slot_level"
.LASF358:
	.string	"minval"
.LASF403:
	.string	"x_parm_reg_stack_loc"
.LASF169:
	.string	"CCZmode"
.LASF770:
	.string	"NOTE_INSN_LOOP_CONT"
.LASF38:
	.string	"INDEX_REGS"
.LASF573:
	.string	"DEFINE_INSN"
.LASF487:
	.string	"TI_INTQI_TYPE"
.LASF335:
	.string	"abstract_origin"
.LASF759:
	.string	"REG_NON_LOCAL_GOTO"
.LASF605:
	.string	"ADDR_DIFF_VEC"
.LASF748:
	.string	"REG_BR_PROB"
.LASF909:
	.string	"stack_def"
.LASF740:
	.string	"REG_NONNEG"
.LASF871:
	.string	"constraint"
.LASF667:
	.string	"ZERO_EXTRACT"
.LASF837:
	.string	"hint"
.LASF600:
	.string	"ASM_INPUT"
.LASF319:
	.string	"ht_identifier"
.LASF650:
	.string	"ORDERED"
.LASF162:
	.string	"V8DFmode"
.LASF802:
	.string	"promoted_mode"
.LASF476:
	.string	"assembler_name"
.LASF943:
	.string	"n_inputs"
.LASF520:
	.string	"TI_UV4SI_TYPE"
.LASF347:
	.string	"needs_constructing_flag"
.LASF664:
	.string	"UNSIGNED_FIX"
.LASF453:
	.string	"virtual_flag"
.LASF960:
	.string	"reg1"
.LASF422:
	.string	"returns_pcc_struct"
.LASF215:
	.string	"BUILT_IN_STRNCMP"
.LASF1030:
	.string	"current_function_decl"
.LASF722:
	.string	"local_set"
.LASF314:
	.string	"tree_complex"
.LASF595:
	.string	"BARRIER"
.LASF58:
	.string	"sse_words"
.LASF40:
	.string	"GENERAL_REGS"
.LASF594:
	.string	"CALL_INSN"
.LASF467:
	.string	"no_limit_stack"
.LASF474:
	.string	"result"
.LASF589:
	.string	"SET_ATTR_ALTERNATIVE"
.LASF357:
	.string	"name"
.LASF564:
	.string	"INSN_LIST"
.LASF107:
	.string	"_sbuf"
.LASF879:
	.string	"nonoffmem_ok"
.LASF672:
	.string	"RANGE_VAR"
.LASF856:
	.string	"changes_mode"
.LASF918:
	.string	"block_info"
.LASF87:
	.string	"_IO_save_end"
.LASF175:
	.string	"MODE_INT"
.LASF862:
	.string	"element_size"
.LASF18:
	.string	"real_cst"
.LASF377:
	.string	"arg_offset_rtx"
.LASF2:
	.string	"jump"
.LASF328:
	.string	"tree_block"
.LASF57:
	.string	"regno"
.LASF501:
	.string	"TI_SIZE_ZERO"
.LASF796:
	.string	"GR_VIRTUAL_STACK_DYNAMIC"
.LASF820:
	.string	"expr_status"
.LASF333:
	.string	"subblocks"
.LASF429:
	.string	"has_nonlocal_label"
.LASF542:
	.string	"itk_short"
.LASF209:
	.string	"BUILT_IN_MEMSET"
.LASF673:
	.string	"RANGE_LIVE"
.LASF821:
	.string	"x_pending_stack_adjust"
.LASF374:
	.string	"args_size"
.LASF9:
	.string	"frame_related"
.LASF884:
	.string	"recog_data"
.LASF843:
	.string	"const_equiv"
.LASF351:
	.string	"pointer_depth"
.LASF313:
	.string	"pointer"
.LASF963:
	.string	"swap_rtx"
.LASF280:
	.string	"END_BUILTINS"
.LASF563:
	.string	"EXPR_LIST"
.LASF556:
	.string	"BITSIZETYPE"
.LASF793:
	.string	"GR_ARG_POINTER"
.LASF27:
	.string	"sizetype"
.LASF47:
	.string	"FP_SECOND_SSE_REGS"
.LASF682:
	.string	"SS_MINUS"
.LASF569:
	.string	"MATCH_PARALLEL"
.LASF150:
	.string	"V4SImode"
.LASF5:
	.string	"volatil"
.LASF1052:
	.string	"reg_to_stack"
.LASF281:
	.string	"tree_common"
.LASF735:
	.string	"REG_EQUIV"
.LASF362:
	.string	"binfo"
.LASF504:
	.string	"TI_BITSIZE_ONE"
.LASF68:
	.string	"short unsigned int"
.LASF69:
	.string	"signed char"
.LASF498:
	.string	"TI_INTEGER_ONE"
.LASF568:
	.string	"MATCH_OPERATOR"
.LASF756:
	.string	"REG_SAVE_NOTE"
.LASF983:
	.string	"src2_note"
.LASF640:
	.string	"SMAX"
.LASF322:
	.string	"purpose"
.LASF1028:
	.string	"mode_wider_mode"
.LASF401:
	.string	"x_last_parm_insn"
.LASF488:
	.string	"TI_INTHI_TYPE"
.LASF859:
	.string	"varray_head_tag"
.LASF714:
	.string	"current"
.LASF354:
	.string	"pointer_to"
.LASF462:
	.string	"weak_flag"
.LASF813:
	.string	"x_cur_insn_uid"
.LASF324:
	.string	"tree_vec"
.LASF827:
	.string	"x_pending_chain"
.LASF446:
	.string	"filename"
.LASF684:
	.string	"SS_TRUNCATE"
.LASF749:
	.string	"REG_EXEC_COUNT"
.LASF255:
	.string	"BUILT_IN_PUTS_UNLOCKED"
.LASF914:
	.string	"stack_out"
.LASF410:
	.string	"no_debugging_symbols"
.LASF982:
	.string	"src1_note"
.LASF259:
	.string	"BUILT_IN_FWRITE_UNLOCKED"
.LASF1035:
	.string	"const_tiny_rtx"
.LASF880:
	.string	"decmem_ok"
.LASF688:
	.string	"base_after_vec"
.LASF944:
	.string	"n_outputs"
.LASF72:
	.string	"__off64_t"
.LASF537:
	.string	"TI_MAX"
.LASF151:
	.string	"V4DImode"
.LASF292:
	.string	"nothrow_flag"
.LASF79:
	.string	"_IO_read_base"
.LASF50:
	.string	"INT_SSE_REGS"
.LASF97:
	.string	"_offset"
.LASF20:
	.string	"string"
.LASF794:
	.string	"GR_VIRTUAL_INCOMING_ARGS"
.LASF815:
	.string	"x_last_filename"
.LASF931:
	.string	"record_label_references"
.LASF747:
	.string	"REG_DEP_OUTPUT"
.LASF84:
	.string	"_IO_buf_end"
.LASF356:
	.string	"symtab"
.LASF582:
	.string	"DEFINE_ASM_ATTRIBUTES"
.LASF683:
	.string	"US_MINUS"
.LASF522:
	.string	"TI_UV8QI_TYPE"
.LASF913:
	.string	"stack_in"
.LASF977:
	.string	"fail"
.LASF379:
	.string	"return_rtx"
.LASF46:
	.string	"FP_TOP_SSE_REGS"
.LASF479:
	.string	"saved_tree"
.LASF666:
	.string	"SIGN_EXTRACT"
.LASF478:
	.string	"live_range_rtl"
.LASF8:
	.string	"integrated"
.LASF1020:
	.string	"convert_regs_2"
.LASF853:
	.string	"live_length"
.LASF607:
	.string	"CLOBBER"
.LASF360:
	.string	"next_variant"
.LASF902:
	.string	"edge_def"
.LASF103:
	.string	"_mode"
.LASF181:
	.string	"MODE_VECTOR_INT"
.LASF80:
	.string	"_IO_write_base"
.LASF751:
	.string	"REG_SAVE_AREA"
.LASF675:
	.string	"CALL_PLACEHOLDER"
.LASF367:
	.string	"function"
.LASF219:
	.string	"BUILT_IN_STRSPN"
.LASF159:
	.string	"V4SFmode"
.LASF867:
	.string	"OP_IN"
.LASF434:
	.string	"instrument_entry_exit"
.LASF492:
	.string	"TI_UINTQI_TYPE"
.LASF1042:
	.string	"which_alternative"
.LASF397:
	.string	"x_frame_offset"
.LASF238:
	.string	"BUILT_IN_RETURN_ADDRESS"
.LASF990:
	.string	"src2_reg"
.LASF342:
	.string	"size_unit"
.LASF254:
	.string	"BUILT_IN_PUTCHAR_UNLOCKED"
.LASF629:
	.string	"PLUS"
.LASF206:
	.string	"BUILT_IN_RINDEX"
.LASF645:
	.string	"POST_DEC"
.LASF898:
	.string	"bits"
.LASF116:
	.string	"HImode"
.LASF731:
	.string	"rtunion"
.LASF772:
	.string	"NOTE_INSN_LOOP_END_TOP_COND"
.LASF179:
	.string	"MODE_COMPLEX_INT"
.LASF828:
	.string	"eh_status"
.LASF805:
	.string	"sequence_stack"
.LASF64:
	.string	"long int"
.LASF798:
	.string	"GR_VIRTUAL_CFA"
.LASF1045:
	.string	"basic_block_info"
.LASF737:
	.string	"REG_WAS_0"
.LASF1008:
	.string	"convert_regs_exit"
.LASF486:
	.string	"TI_ERROR_MARK"
.LASF758:
	.string	"REG_NORETURN"
.LASF105:
	.string	"_IO_marker"
.LASF130:
	.string	"XFmode"
.LASF424:
	.string	"needs_context"
.LASF757:
	.string	"REG_MAYBE_DEAD"
.LASF917:
	.string	"predecessors"
.LASF966:
	.string	"limit"
.LASF160:
	.string	"V4DFmode"
.LASF4:
	.string	"unchanging"
.LASF457:
	.string	"defer_output"
.LASF534:
	.string	"TI_V2SF_TYPE"
.LASF732:
	.string	"reg_note"
.LASF428:
	.string	"calls_eh_return"
.LASF932:
	.string	"label"
.LASF407:
	.string	"x_target_temp_slot_level"
.LASF893:
	.string	"n_dups"
.LASF375:
	.string	"pretend_args_size"
.LASF363:
	.string	"context"
.LASF1040:
	.string	"optimize"
.LASF974:
	.string	"top_stack_reg"
.LASF560:
	.string	"rtx_code"
.LASF62:
	.string	"CUMULATIVE_ARGS"
.LASF806:
	.string	"last"
.LASF485:
	.string	"tree_index"
.LASF437:
	.string	"varargs"
.LASF883:
	.string	"anything_ok"
.LASF329:
	.string	"handler_block_flag"
.LASF470:
	.string	"non_addressable"
.LASF946:
	.string	"get_asm_operand_n_inputs"
.LASF31:
	.string	"CREG"
.LASF889:
	.string	"operand_type"
.LASF1016:
	.string	"target_stack"
.LASF270:
	.string	"BUILT_IN_INIT_DWARF_REG_SIZES"
.LASF439:
	.string	"x_whole_function_mode_p"
.LASF561:
	.string	"UNKNOWN"
.LASF603:
	.string	"UNSPEC_VOLATILE"
.LASF559:
	.string	"TYPE_KIND_LAST"
.LASF217:
	.string	"BUILT_IN_STRSTR"
.LASF456:
	.string	"common_flag"
.LASF775:
	.string	"NOTE_INSN_EPILOGUE_BEG"
.LASF66:
	.string	"long unsigned int"
.LASF464:
	.string	"no_instrument_function_entry_exit"
.LASF289:
	.string	"asm_written_flag"
.LASF11:
	.string	"rtx_def"
.LASF268:
	.string	"BUILT_IN_DWARF_CFA"
.LASF126:
	.string	"HFmode"
.LASF253:
	.string	"BUILT_IN_FPRINTF"
.LASF284:
	.string	"constant_flag"
.LASF225:
	.string	"BUILT_IN_COS"
.LASF610:
	.string	"TRAP_IF"
.LASF297:
	.string	"bounded_flag"
.LASF852:
	.string	"deaths"
.LASF928:
	.string	"pop_stack"
.LASF755:
	.string	"REG_EH_REGION"
.LASF527:
	.string	"TI_V4SF_TYPE"
.LASF321:
	.string	"tree_list"
.LASF892:
	.string	"n_operands"
.LASF937:
	.string	"n_clobbers"
.LASF738:
	.string	"REG_RETVAL"
.LASF987:
	.string	"src1_hard_regnum"
.LASF138:
	.string	"CQImode"
.LASF73:
	.string	"char"
.LASF421:
	.string	"returns_struct"
.LASF136:
	.string	"XCmode"
.LASF395:
	.string	"x_arg_pointer_save_area"
.LASF265:
	.string	"BUILT_IN_ISLESSGREATER"
.LASF29:
	.string	"AREG"
.LASF184:
	.string	"built_in_function"
.LASF393:
	.string	"x_tail_recursion_label"
.LASF701:
	.string	"rtwint"
.LASF933:
	.string	"get_true_reg"
.LASF466:
	.string	"malloc_flag"
.LASF926:
	.string	"temp_stack"
.LASF849:
	.string	"sets"
.LASF83:
	.string	"_IO_buf_base"
.LASF638:
	.string	"ROTATERT"
.LASF539:
	.string	"itk_char"
.LASF344:
	.string	"precision"
.LASF624:
	.string	"ADDRESSOF"
.LASF760:
	.string	"REG_SETJMP"
.LASF1012:
	.string	"retvalue"
.LASF144:
	.string	"V2QImode"
.LASF199:
	.string	"BUILT_IN_CIMAG"
.LASF240:
	.string	"BUILT_IN_APPLY_ARGS"
.LASF809:
	.string	"x_reg_rtx_no"
.LASF122:
	.string	"PHImode"
.LASF78:
	.string	"_IO_read_end"
.LASF348:
	.string	"transparent_union_flag"
.LASF801:
	.string	"modified"
.LASF818:
	.string	"regno_decl"
.LASF552:
	.string	"size_type_kind"
.LASF845:
	.string	"reg_info_def"
.LASF143:
	.string	"COImode"
.LASF643:
	.string	"PRE_DEC"
.LASF980:
	.string	"src1"
.LASF997:
	.string	"note_kind"
.LASF1023:
	.string	"current_block"
.LASF75:
	.string	"_IO_FILE"
.LASF774:
	.string	"NOTE_INSN_PROLOGUE_END"
.LASF792:
	.string	"GR_HARD_FRAME_POINTER"
.LASF1003:
	.string	"update_end"
.LASF911:
	.string	"stack"
.LASF353:
	.string	"align"
.LASF670:
	.string	"RANGE_INFO"
.LASF724:
	.string	"global_live_at_start"
.LASF267:
	.string	"BUILT_IN_UNWIND_INIT"
.LASF427:
	.string	"calls_alloca"
.LASF866:
	.string	"op_type"
.LASF506:
	.string	"TI_COMPLEX_INTEGER_TYPE"
.LASF406:
	.string	"x_var_temp_slot_level"
.LASF174:
	.string	"MODE_RANDOM"
.LASF681:
	.string	"US_PLUS"
.LASF164:
	.string	"BLKmode"
.LASF133:
	.string	"HCmode"
.LASF978:
	.string	"compare_for_stack_reg"
.LASF525:
	.string	"TI_UV2SF_TYPE"
.LASF531:
	.string	"TI_V8QI_TYPE"
.LASF536:
	.string	"TI_MAIN_IDENTIFIER"
.LASF216:
	.string	"BUILT_IN_STRLEN"
.LASF959:
	.string	"hard_regno"
.LASF1025:
	.string	"ix86_flags_rtx"
.LASF391:
	.string	"x_stack_slot_list"
.LASF678:
	.string	"VEC_CONCAT"
.LASF443:
	.string	"uses_eh_lsda"
.LASF234:
	.string	"BUILT_IN_NEXT_ARG"
.LASF98:
	.string	"__pad1"
.LASF100:
	.string	"__pad3"
.LASF101:
	.string	"__pad4"
.LASF102:
	.string	"__pad5"
.LASF750:
	.string	"REG_NOALIAS"
.LASF454:
	.string	"ignored_flag"
.LASF591:
	.string	"ATTR_FLAG"
.LASF171:
	.string	"CCFPUmode"
.LASF734:
	.string	"REG_INC"
.LASF581:
	.string	"DEFINE_FUNCTION_UNIT"
.LASF999:
	.string	"n_notes"
.LASF461:
	.string	"artificial_flag"
.LASF398:
	.string	"x_context_display"
.LASF88:
	.string	"_markers"
.LASF108:
	.string	"_pos"
.LASF585:
	.string	"ADDRESS"
.LASF906:
	.string	"insns"
.LASF278:
	.string	"BUILT_IN_VA_COPY"
.LASF411:
	.string	"original_arg_vector"
.LASF1010:
	.string	"value_reg_high"
.LASF21:
	.string	"complex"
.LASF840:
	.string	"cptr"
.LASF389:
	.string	"x_return_label"
.LASF334:
	.string	"supercontext"
.LASF279:
	.string	"BUILT_IN_EXPECT"
.LASF359:
	.string	"maxval"
.LASF558:
	.string	"UBITSIZETYPE"
.LASF519:
	.string	"TI_UV4SF_TYPE"
.LASF1001:
	.string	"subst_stack_regs"
.LASF854:
	.string	"calls_crossed"
.LASF685:
	.string	"US_TRUNCATE"
.LASF220:
	.string	"BUILT_IN_STRCSPN"
.LASF535:
	.string	"TI_V16QI_TYPE"
.LASF56:
	.string	"nregs"
.LASF548:
	.string	"itk_long_long"
.LASF1004:
	.string	"print_stack"
.LASF642:
	.string	"UMAX"
.LASF45:
	.string	"MMX_REGS"
.LASF727:
	.string	"loop_depth"
.LASF694:
	.string	"scale"
.LASF447:
	.string	"linenum"
.LASF115:
	.string	"QImode"
.LASF712:
	.string	"bitmap_head_def"
.LASF1026:
	.string	"target_flags"
.LASF863:
	.string	"data"
.LASF790:
	.string	"GR_STACK_POINTER"
.LASF1022:
	.string	"stack_regs_mentioned_data"
.LASF187:
	.string	"BUILT_IN_LABS"
.LASF976:
	.string	"swap_rtx_condition"
.LASF127:
	.string	"TQFmode"
.LASF717:
	.string	"head"
.LASF286:
	.string	"volatile_flag"
.LASF991:
	.string	"idx1"
.LASF55:
	.string	"words"
.LASF210:
	.string	"BUILT_IN_STRCAT"
.LASF226:
	.string	"BUILT_IN_SQRTF"
.LASF691:
	.string	"min_after_base"
.LASF229:
	.string	"BUILT_IN_SQRTL"
.LASF920:
	.string	"EMIT_AFTER"
.LASF842:
	.string	"sched"
.LASF545:
	.string	"itk_unsigned_int"
.LASF366:
	.string	"off_align"
.LASF440:
	.string	"x_dont_save_pending_sizes_p"
.LASF54:
	.string	"ix86_args"
.LASF787:
	.string	"global_rtl_index"
.LASF204:
	.string	"BUILT_IN_FFS"
.LASF291:
	.string	"used_flag"
.LASF249:
	.string	"BUILT_IN_PRINTF"
.LASF28:
	.string	"NO_REGS"
.LASF530:
	.string	"TI_V8HI_TYPE"
.LASF376:
	.string	"outgoing_args_size"
.LASF1041:
	.string	"flag_pic"
.LASF120:
	.string	"OImode"
.LASF295:
	.string	"private_flag"
.LASF256:
	.string	"BUILT_IN_PRINTF_UNLOCKED"
.LASF981:
	.string	"src2"
.LASF299:
	.string	"lang_flag_0"
.LASF300:
	.string	"lang_flag_1"
.LASF301:
	.string	"lang_flag_2"
.LASF302:
	.string	"lang_flag_3"
.LASF303:
	.string	"lang_flag_4"
.LASF304:
	.string	"lang_flag_5"
.LASF305:
	.string	"lang_flag_6"
.LASF472:
	.string	"lang_flag_7"
.LASF799:
	.string	"GR_MAX"
.LASF482:
	.string	"pointer_alias_set"
.LASF677:
	.string	"VEC_SELECT"
.LASF910:
	.string	"reg_set"
.LASF191:
	.string	"BUILT_IN_LLABS"
.LASF523:
	.string	"TI_UV4HI_TYPE"
.LASF417:
	.string	"stack_alignment_needed"
.LASF327:
	.string	"operands"
.LASF808:
	.string	"emit_status"
.LASF320:
	.string	"tree_identifier"
.LASF182:
	.string	"MODE_VECTOR_FLOAT"
.LASF648:
	.string	"POST_MODIFY"
.LASF846:
	.string	"first_uid"
.LASF232:
	.string	"BUILT_IN_SAVEREGS"
.LASF194:
	.string	"BUILT_IN_CONJF"
.LASF752:
	.string	"REG_BR_PRED"
.LASF195:
	.string	"BUILT_IN_CONJL"
.LASF574:
	.string	"DEFINE_PEEPHOLE"
.LASF109:
	.string	"long long unsigned int"
.LASF781:
	.string	"NOTE_INSN_RANGE_BEG"
.LASF697:
	.string	"offset"
.LASF695:
	.string	"addr_diff_vec_flags"
.LASF93:
	.string	"_cur_column"
.LASF570:
	.string	"MATCH_OP_DUP"
.LASF584:
	.string	"SEQUENCE"
.LASF125:
	.string	"QFmode"
.LASF949:
	.string	"replace_reg"
.LASF477:
	.string	"section_name"
.LASF971:
	.string	"pdest"
.LASF378:
	.string	"args_info"
.LASF998:
	.string	"clobber_loc"
.LASF988:
	.string	"src2_hard_regnum"
.LASF436:
	.string	"limit_stack"
.LASF611:
	.string	"RESX"
.LASF905:
	.string	"dest"
.LASF979:
	.string	"pat_src"
.LASF599:
	.string	"PARALLEL"
.LASF13:
	.string	"num_elem"
.LASF497:
	.string	"TI_INTEGER_ZERO"
.LASF86:
	.string	"_IO_backup_base"
.LASF649:
	.string	"UNORDERED"
.LASF172:
	.string	"MAX_MACHINE_MODE"
.LASF77:
	.string	"_IO_read_ptr"
.LASF927:
	.string	"straighten_stack"
.LASF544:
	.string	"itk_int"
.LASF233:
	.string	"BUILT_IN_CLASSIFY_TYPE"
.LASF51:
	.string	"FLOAT_INT_SSE_REGS"
.LASF294:
	.string	"public_flag"
.LASF616:
	.string	"CONST"
.LASF817:
	.string	"regno_pointer_align"
.LASF875:
	.string	"matched"
.LASF665:
	.string	"SQRT"
.LASF345:
	.string	"string_flag"
.LASF789:
	.string	"GR_CC0"
.LASF874:
	.string	"matches"
.LASF173:
	.string	"mode_class"
.LASF631:
	.string	"MULT"
.LASF178:
	.string	"MODE_CC"
.LASF332:
	.string	"vars"
.LASF566:
	.string	"MATCH_SCRATCH"
.LASF121:
	.string	"PQImode"
.LASF153:
	.string	"V8HImode"
.LASF653:
	.string	"UNGT"
.LASF934:
	.string	"subreg"
.LASF404:
	.string	"x_temp_slots"
.LASF489:
	.string	"TI_INTSI_TYPE"
.LASF200:
	.string	"BUILT_IN_CIMAGF"
.LASF449:
	.string	"nonlocal_flag"
.LASF92:
	.string	"_old_offset"
.LASF298:
	.string	"deprecated_flag"
.LASF930:
	.string	"max_uid"
.LASF619:
	.string	"SUBREG"
.LASF973:
	.string	"push_insn"
.LASF350:
	.string	"restrict_flag"
.LASF426:
	.string	"calls_longjmp"
.LASF156:
	.string	"V16QImode"
.LASF761:
	.string	"REG_ALWAYS_RETURN"
.LASF188:
	.string	"BUILT_IN_FABS"
.LASF984:
	.string	"flags_user"
.LASF23:
	.string	"decl"
.LASF110:
	.string	"long long int"
.LASF524:
	.string	"TI_UV2SI_TYPE"
.LASF480:
	.string	"inlined_fns"
.LASF550:
	.string	"itk_none"
.LASF739:
	.string	"REG_LIBCALL"
.LASF91:
	.string	"_flags2"
.LASF557:
	.string	"SBITSIZETYPE"
.LASF132:
	.string	"QCmode"
.LASF617:
	.string	"VALUE"
.LASF597:
	.string	"NOTE"
.LASF868:
	.string	"OP_OUT"
.LASF59:
	.string	"sse_nregs"
.LASF641:
	.string	"UMIN"
.LASF521:
	.string	"TI_UV8HI_TYPE"
.LASF263:
	.string	"BUILT_IN_ISLESS"
.LASF221:
	.string	"BUILT_IN_STRCHR"
.LASF865:
	.string	"HARD_REG_ELT_TYPE"
.LASF277:
	.string	"BUILT_IN_VA_END"
.LASF940:
	.string	"reg_used_as_output"
.LASF716:
	.string	"basic_block_def"
.LASF975:
	.string	"swap_rtx_condition_1"
.LASF355:
	.string	"reference_to"
.LASF995:
	.string	"note_reg"
.LASF830:
	.string	"varasm_status"
.LASF241:
	.string	"BUILT_IN_APPLY"
.LASF7:
	.string	"used"
.LASF939:
	.string	"body"
.LASF1021:
	.string	"convert_regs"
.LASF807:
	.string	"sequence_rtl_expr"
.LASF768:
	.string	"NOTE_INSN_LOOP_BEG"
.LASF962:
	.string	"emit_swap_insn"
.LASF899:
	.string	"bitmap_element"
.LASF383:
	.string	"x_function_call_count"
.LASF897:
	.string	"prev"
.LASF139:
	.string	"CHImode"
.LASF197:
	.string	"BUILT_IN_CREALF"
.LASF784:
	.string	"NOTE_INSN_BASIC_BLOCK"
.LASF330:
	.string	"abstract_flag"
.LASF198:
	.string	"BUILT_IN_CREALL"
.LASF463:
	.string	"non_addr_const_p"
.LASF318:
	.string	"elements"
.LASF816:
	.string	"regno_pointer_align_length"
.LASF811:
	.string	"x_first_insn"
.LASF540:
	.string	"itk_signed_char"
.LASF825:
	.string	"x_apply_args_value"
.LASF49:
	.string	"FLOAT_INT_REGS"
.LASF613:
	.string	"CONST_DOUBLE"
.LASF243:
	.string	"BUILT_IN_SETJMP"
.LASF260:
	.string	"BUILT_IN_FPRINTF_UNLOCKED"
.LASF546:
	.string	"itk_long"
.LASF168:
	.string	"CCNOmode"
.LASF149:
	.string	"V4HImode"
.LASF651:
	.string	"UNEQ"
.LASF958:
	.string	"pop_rtx"
.LASF634:
	.string	"ASHIFT"
.LASF518:
	.string	"TI_VOID_LIST_NODE"
.LASF639:
	.string	"SMIN"
.LASF947:
	.string	"__FUNCTION__"
.LASF626:
	.string	"IF_THEN_ELSE"
.LASF915:
	.string	"out_reg_set"
.LASF452:
	.string	"bit_field_flag"
.LASF248:
	.string	"BUILT_IN_PUTS"
.LASF891:
	.string	"dup_num"
.LASF455:
	.string	"in_system_header_flag"
.LASF458:
	.string	"transparent_union"
.LASF780:
	.string	"NOTE_INSN_REPEATED_LINE_NUMBER"
.LASF372:
	.string	"outer"
.LASF481:
	.string	"vindex"
.LASF567:
	.string	"MATCH_DUP"
.LASF941:
	.string	"implicitly_dies"
.LASF923:
	.string	"stack_regs_mentioned_p"
.LASF777:
	.string	"NOTE_INSN_FUNCTION_BEG"
.LASF814:
	.string	"x_last_linenum"
.LASF63:
	.string	"unsigned int"
.LASF699:
	.string	"tree_node"
.LASF951:
	.string	"note"
.LASF388:
	.string	"x_cleanup_label"
.LASF644:
	.string	"PRE_INC"
.LASF213:
	.string	"BUILT_IN_STRNCPY"
.LASF690:
	.string	"max_after_vec"
.LASF652:
	.string	"UNGE"
.LASF810:
	.string	"x_first_label_num"
.LASF886:
	.string	"operand_loc"
.LASF448:
	.string	"external_flag"
.LASF70:
	.string	"short int"
.LASF720:
	.string	"pred"
.LASF442:
	.string	"uses_pic_offset_table"
.LASF432:
	.string	"has_computed_jump"
.LASF223:
	.string	"BUILT_IN_SQRT"
.LASF812:
	.string	"x_last_insn"
.LASF877:
	.string	"memory_ok"
.LASF435:
	.string	"profile"
.LASF94:
	.string	"_vtable_offset"
.LASF269:
	.string	"BUILT_IN_DWARF_FP_REGNUM"
.LASF418:
	.string	"preferred_stack_boundary"
.LASF113:
	.string	"VOIDmode"
.LASF762:
	.string	"REG_VTABLE_REF"
.LASF706:
	.string	"rt_addr_diff_vec_flags"
.LASF517:
	.string	"TI_VA_LIST_TYPE"
.LASF797:
	.string	"GR_VIRTUAL_OUTGOING_ARGS"
.LASF669:
	.string	"LO_SUM"
.LASF214:
	.string	"BUILT_IN_STRCMP"
.LASF502:
	.string	"TI_SIZE_ONE"
.LASF904:
	.string	"succ_next"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
