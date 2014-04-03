	.file	"df.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I . -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 df.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.local	df_ref_obstack
	.comm	df_ref_obstack,88,32
	.local	ddf
	.comm	ddf,8,8
	.type	df_insn_table_realloc, @function
df_insn_table_realloc:
.LFB2:
	.file 1 "df.c"
	.loc 1 325 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# df, df
	movl	%esi, -12(%rbp)	# size, size
	.loc 1 327 0
	cmpl	$0, -12(%rbp)	#, size
	jne	.L2	#,
	.loc 1 328 0
	movq	-8(%rbp), %rax	# df, tmp83
	movl	64(%rax), %eax	# df_3(D)->insn_size, D.15747
	shrl	$2, %eax	#, D.15747
	movl	%eax, -12(%rbp)	# D.15747, size
.L2:
	.loc 1 330 0
	movq	-8(%rbp), %rax	# df, tmp84
	movl	64(%rax), %edx	# df_3(D)->insn_size, D.15747
	movl	-12(%rbp), %eax	# size, size.0
	addl	%edx, %eax	# D.15747, D.15747
	movl	%eax, -12(%rbp)	# D.15747, size
	.loc 1 333 0
	movl	-12(%rbp), %eax	# size, tmp85
	movslq	%eax, %rdx	# tmp85, D.15748
	movq	%rdx, %rax	# D.15748, tmp86
	addq	%rax, %rax	# tmp86
	addq	%rdx, %rax	# D.15748, tmp86
	salq	$3, %rax	#, tmp87
	movq	%rax, %rdx	# tmp86, D.15748
	movq	-8(%rbp), %rax	# df, tmp88
	movq	56(%rax), %rax	# df_3(D)->insns, D.15749
	movq	%rdx, %rsi	# D.15748,
	movq	%rax, %rdi	# D.15749,
	call	xrealloc	#
	.loc 1 332 0
	movq	-8(%rbp), %rdx	# df, tmp89
	movq	%rax, 56(%rdx)	# D.15750, df_3(D)->insns
	.loc 1 336 0
	movl	-12(%rbp), %edx	# size, size.1
	movq	-8(%rbp), %rax	# df, tmp90
	movl	64(%rax), %eax	# df_3(D)->insn_size, D.15747
	subl	%eax, %edx	# D.15747, D.15747
	movl	%edx, %eax	# D.15747, D.15747
	.loc 1 335 0
	movl	%eax, %edx	# D.15747, D.15748
	movq	%rdx, %rax	# D.15748, tmp91
	addq	%rax, %rax	# tmp91
	addq	%rdx, %rax	# D.15748, tmp91
	salq	$3, %rax	#, tmp92
	movq	%rax, %rcx	# tmp91, D.15748
	movq	-8(%rbp), %rax	# df, tmp93
	movq	56(%rax), %rsi	# df_3(D)->insns, D.15749
	movq	-8(%rbp), %rax	# df, tmp94
	movl	64(%rax), %eax	# df_3(D)->insn_size, D.15747
	movl	%eax, %edx	# D.15747, D.15748
	movq	%rdx, %rax	# D.15748, tmp95
	addq	%rax, %rax	# tmp95
	addq	%rdx, %rax	# D.15748, tmp95
	salq	$3, %rax	#, tmp96
	addq	%rsi, %rax	# D.15749, D.15750
	movq	%rcx, %rdx	# D.15748,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.15750,
	call	memset	#
	.loc 1 338 0
	movl	-12(%rbp), %edx	# size, size.2
	movq	-8(%rbp), %rax	# df, tmp97
	movl	%edx, 64(%rax)	# size.2, df_3(D)->insn_size
	.loc 1 340 0
	movq	-8(%rbp), %rax	# df, tmp98
	movq	112(%rax), %rax	# df_3(D)->insns_modified, D.15751
	testq	%rax, %rax	# D.15751
	jne	.L1	#,
	.loc 1 342 0
	movl	$24, %edi	#,
	call	xmalloc	#
	movq	%rax, %rdi	# D.15750,
	call	bitmap_initialize	#
	movq	-8(%rbp), %rdx	# df, tmp100
	movq	%rax, 112(%rdx)	# D.15751, df_3(D)->insns_modified
	.loc 1 343 0
	movq	-8(%rbp), %rax	# df, tmp101
	movq	112(%rax), %rax	# df_3(D)->insns_modified, D.15751
	movq	%rax, %rdi	# D.15751,
	call	bitmap_clear	#
.L1:
	.loc 1 345 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	df_insn_table_realloc, .-df_insn_table_realloc
	.type	df_reg_table_realloc, @function
df_reg_table_realloc:
.LFB3:
	.loc 1 353 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# df, df
	movl	%esi, -12(%rbp)	# size, size
	.loc 1 355 0
	cmpl	$0, -12(%rbp)	#, size
	jne	.L5	#,
	.loc 1 356 0
	movq	-8(%rbp), %rax	# df, tmp79
	movl	48(%rax), %eax	# df_3(D)->reg_size, D.15752
	shrl	$2, %eax	#, D.15752
	movl	%eax, -12(%rbp)	# D.15752, size
.L5:
	.loc 1 358 0
	movq	-8(%rbp), %rax	# df, tmp80
	movl	48(%rax), %edx	# df_3(D)->reg_size, D.15752
	movl	-12(%rbp), %eax	# size, size.3
	addl	%edx, %eax	# D.15752, D.15752
	movl	%eax, -12(%rbp)	# D.15752, size
	.loc 1 361 0
	movl	-12(%rbp), %eax	# size, tmp81
	cltq
	salq	$5, %rax	#, D.15753
	movq	%rax, %rdx	# D.15753, D.15753
	movq	-8(%rbp), %rax	# df, tmp82
	movq	40(%rax), %rax	# df_3(D)->regs, D.15754
	movq	%rdx, %rsi	# D.15753,
	movq	%rax, %rdi	# D.15754,
	call	xrealloc	#
	.loc 1 360 0
	movq	-8(%rbp), %rdx	# df, tmp83
	movq	%rax, 40(%rdx)	# D.15755, df_3(D)->regs
	.loc 1 365 0
	movl	-12(%rbp), %edx	# size, size.4
	movq	-8(%rbp), %rax	# df, tmp84
	movl	48(%rax), %eax	# df_3(D)->reg_size, D.15752
	subl	%eax, %edx	# D.15752, D.15752
	movl	%edx, %eax	# D.15752, D.15752
	.loc 1 364 0
	movl	%eax, %eax	# D.15752, D.15753
	salq	$5, %rax	#, D.15753
	movq	%rax, %rdx	# D.15753, D.15753
	movq	-8(%rbp), %rax	# df, tmp85
	movq	40(%rax), %rcx	# df_3(D)->regs, D.15754
	movq	-8(%rbp), %rax	# df, tmp86
	movl	48(%rax), %eax	# df_3(D)->reg_size, D.15752
	movl	%eax, %eax	# D.15752, D.15753
	salq	$5, %rax	#, D.15753
	addq	%rcx, %rax	# D.15754, D.15755
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.15755,
	call	memset	#
	.loc 1 367 0
	movl	-12(%rbp), %edx	# size, size.5
	movq	-8(%rbp), %rax	# df, tmp87
	movl	%edx, 48(%rax)	# size.5, df_3(D)->reg_size
	.loc 1 368 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	df_reg_table_realloc, .-df_reg_table_realloc
	.type	df_bitmaps_alloc, @function
df_bitmaps_alloc:
.LFB4:
	.loc 1 408 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$56, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)	# df, df
	movl	%esi, -60(%rbp)	# flags, flags
	.loc 1 410 0
	movl	$0, -36(%rbp)	#, dflags
	.loc 1 413 0
	movl	-60(%rbp), %eax	# flags, tmp113
	andl	$4, %eax	#, D.15756
	testl	%eax, %eax	# D.15756
	je	.L7	#,
	.loc 1 413 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# df, tmp114
	movl	96(%rax), %ebx	# df_8(D)->n_regs, D.15757
	call	max_reg_num	#
	cmpl	%eax, %ebx	# D.15757, D.15757
	jae	.L7	#,
	.loc 1 414 0 is_stmt 1
	orl	$6, -36(%rbp)	#, dflags
.L7:
	.loc 1 415 0
	movl	-60(%rbp), %eax	# flags, tmp115
	andl	$2, %eax	#, D.15756
	testl	%eax, %eax	# D.15756
	je	.L8	#,
	.loc 1 415 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# df, tmp116
	movl	88(%rax), %edx	# df_8(D)->n_uses, D.15757
	movq	-56(%rbp), %rax	# df, tmp117
	movl	80(%rax), %eax	# df_8(D)->use_id, D.15757
	cmpl	%eax, %edx	# D.15757, D.15757
	jae	.L8	#,
	.loc 1 416 0 is_stmt 1
	orl	$2, -36(%rbp)	#, dflags
.L8:
	.loc 1 417 0
	movl	-60(%rbp), %eax	# flags, tmp118
	andl	$1, %eax	#, D.15756
	testl	%eax, %eax	# D.15756
	je	.L9	#,
	.loc 1 417 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# df, tmp119
	movl	76(%rax), %edx	# df_8(D)->n_defs, D.15757
	movq	-56(%rbp), %rax	# df, tmp120
	movl	68(%rax), %eax	# df_8(D)->def_id, D.15757
	cmpl	%eax, %edx	# D.15757, D.15757
	jae	.L9	#,
	.loc 1 418 0 is_stmt 1
	orl	$1, -36(%rbp)	#, dflags
.L9:
	.loc 1 420 0
	cmpl	$0, -36(%rbp)	#, dflags
	je	.L10	#,
	.loc 1 421 0
	movl	-36(%rbp), %edx	# dflags, tmp121
	movq	-56(%rbp), %rax	# df, tmp122
	movl	%edx, %esi	# tmp121,
	movq	%rax, %rdi	# tmp122,
	call	df_bitmaps_free	#
.L10:
	.loc 1 423 0
	movq	-56(%rbp), %rax	# df, tmp123
	movl	68(%rax), %edx	# df_8(D)->def_id, D.15757
	movq	-56(%rbp), %rax	# df, tmp124
	movl	%edx, 76(%rax)	# D.15757, df_8(D)->n_defs
	.loc 1 424 0
	movq	-56(%rbp), %rax	# df, tmp125
	movl	80(%rax), %edx	# df_8(D)->use_id, D.15757
	movq	-56(%rbp), %rax	# df, tmp126
	movl	%edx, 88(%rax)	# D.15757, df_8(D)->n_uses
	.loc 1 426 0
	movl	$0, -40(%rbp)	#, i
	jmp	.L11	#
.L15:
.LBB2:
	.loc 1 428 0
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.6
	movl	-40(%rbp), %edx	# i, tmp127
	addq	$4, %rdx	#, tmp128
	movq	(%rax,%rdx,8), %rax	# basic_block_info.6_25->data.bb, tmp129
	movq	%rax, -32(%rbp)	# tmp129, bb
	.loc 1 429 0
	movq	-56(%rbp), %rax	# df, tmp130
	movq	8(%rax), %rdx	# df_8(D)->bbs, D.15758
	movq	-32(%rbp), %rax	# bb, tmp131
	movl	88(%rax), %eax	# bb_26->index, D.15756
	cltq
	salq	$4, %rax	#, tmp133
	leaq	0(,%rax,8), %rcx	#, tmp134
	subq	%rax, %rcx	# tmp132, D.15759
	movq	%rcx, %rax	# D.15759, D.15759
	addq	%rdx, %rax	# D.15758, tmp135
	movq	%rax, -24(%rbp)	# tmp135, bb_info
	.loc 1 431 0
	movl	-60(%rbp), %eax	# flags, tmp136
	andl	$1, %eax	#, D.15756
	testl	%eax, %eax	# D.15756
	je	.L12	#,
	.loc 1 431 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# bb_info, tmp137
	movq	16(%rax), %rax	# bb_info_31->rd_in, D.15760
	testq	%rax, %rax	# D.15760
	jne	.L12	#,
	.loc 1 434 0 is_stmt 1
	movl	$24, %edi	#,
	call	xmalloc	#
	movq	%rax, %rdi	# D.15761,
	call	bitmap_initialize	#
	movq	-24(%rbp), %rdx	# bb_info, tmp139
	movq	%rax, (%rdx)	# D.15760, bb_info_31->rd_kill
	.loc 1 435 0
	movq	-24(%rbp), %rax	# bb_info, tmp140
	movq	(%rax), %rax	# bb_info_31->rd_kill, D.15760
	movq	%rax, %rdi	# D.15760,
	call	bitmap_clear	#
	.loc 1 436 0
	movl	$24, %edi	#,
	call	xmalloc	#
	movq	%rax, %rdi	# D.15761,
	call	bitmap_initialize	#
	movq	-24(%rbp), %rdx	# bb_info, tmp142
	movq	%rax, 8(%rdx)	# D.15760, bb_info_31->rd_gen
	.loc 1 437 0
	movq	-24(%rbp), %rax	# bb_info, tmp143
	movq	8(%rax), %rax	# bb_info_31->rd_gen, D.15760
	movq	%rax, %rdi	# D.15760,
	call	bitmap_clear	#
	.loc 1 438 0
	movl	$24, %edi	#,
	call	xmalloc	#
	movq	%rax, %rdi	# D.15761,
	call	bitmap_initialize	#
	movq	-24(%rbp), %rdx	# bb_info, tmp145
	movq	%rax, 16(%rdx)	# D.15760, bb_info_31->rd_in
	.loc 1 439 0
	movl	$24, %edi	#,
	call	xmalloc	#
	movq	%rax, %rdi	# D.15761,
	call	bitmap_initialize	#
	movq	-24(%rbp), %rdx	# bb_info, tmp147
	movq	%rax, 24(%rdx)	# D.15760, bb_info_31->rd_out
	.loc 1 440 0
	movq	-24(%rbp), %rax	# bb_info, tmp148
	movl	$0, 96(%rax)	#, bb_info_31->rd_valid
.L12:
	.loc 1 443 0
	movl	-60(%rbp), %eax	# flags, tmp149
	andl	$2, %eax	#, D.15756
	testl	%eax, %eax	# D.15756
	je	.L13	#,
	.loc 1 443 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# bb_info, tmp150
	movq	48(%rax), %rax	# bb_info_31->ru_in, D.15760
	testq	%rax, %rax	# D.15760
	jne	.L13	#,
	.loc 1 446 0 is_stmt 1
	movl	$24, %edi	#,
	call	xmalloc	#
	movq	%rax, %rdi	# D.15761,
	call	bitmap_initialize	#
	movq	-24(%rbp), %rdx	# bb_info, tmp152
	movq	%rax, 32(%rdx)	# D.15760, bb_info_31->ru_kill
	.loc 1 447 0
	movq	-24(%rbp), %rax	# bb_info, tmp153
	movq	32(%rax), %rax	# bb_info_31->ru_kill, D.15760
	movq	%rax, %rdi	# D.15760,
	call	bitmap_clear	#
	.loc 1 449 0
	movl	$24, %edi	#,
	call	xmalloc	#
	movq	%rax, %rdi	# D.15761,
	call	bitmap_initialize	#
	movq	-24(%rbp), %rdx	# bb_info, tmp155
	movq	%rax, 40(%rdx)	# D.15760, bb_info_31->ru_gen
	.loc 1 450 0
	movq	-24(%rbp), %rax	# bb_info, tmp156
	movq	40(%rax), %rax	# bb_info_31->ru_gen, D.15760
	movq	%rax, %rdi	# D.15760,
	call	bitmap_clear	#
	.loc 1 451 0
	movl	$24, %edi	#,
	call	xmalloc	#
	movq	%rax, %rdi	# D.15761,
	call	bitmap_initialize	#
	movq	-24(%rbp), %rdx	# bb_info, tmp158
	movq	%rax, 48(%rdx)	# D.15760, bb_info_31->ru_in
	.loc 1 452 0
	movl	$24, %edi	#,
	call	xmalloc	#
	movq	%rax, %rdi	# D.15761,
	call	bitmap_initialize	#
	movq	-24(%rbp), %rdx	# bb_info, tmp160
	movq	%rax, 56(%rdx)	# D.15760, bb_info_31->ru_out
	.loc 1 453 0
	movq	-24(%rbp), %rax	# bb_info, tmp161
	movl	$0, 100(%rax)	#, bb_info_31->ru_valid
.L13:
	.loc 1 456 0
	movl	-60(%rbp), %eax	# flags, tmp162
	andl	$4, %eax	#, D.15756
	testl	%eax, %eax	# D.15756
	je	.L14	#,
	.loc 1 456 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# bb_info, tmp163
	movq	80(%rax), %rax	# bb_info_31->lr_in, D.15760
	testq	%rax, %rax	# D.15760
	jne	.L14	#,
	.loc 1 459 0 is_stmt 1
	movl	$24, %edi	#,
	call	xmalloc	#
	movq	%rax, %rdi	# D.15761,
	call	bitmap_initialize	#
	movq	-24(%rbp), %rdx	# bb_info, tmp165
	movq	%rax, 64(%rdx)	# D.15760, bb_info_31->lr_def
	.loc 1 460 0
	movq	-24(%rbp), %rax	# bb_info, tmp166
	movq	64(%rax), %rax	# bb_info_31->lr_def, D.15760
	movq	%rax, %rdi	# D.15760,
	call	bitmap_clear	#
	.loc 1 461 0
	movl	$24, %edi	#,
	call	xmalloc	#
	movq	%rax, %rdi	# D.15761,
	call	bitmap_initialize	#
	movq	-24(%rbp), %rdx	# bb_info, tmp168
	movq	%rax, 72(%rdx)	# D.15760, bb_info_31->lr_use
	.loc 1 462 0
	movq	-24(%rbp), %rax	# bb_info, tmp169
	movq	72(%rax), %rax	# bb_info_31->lr_use, D.15760
	movq	%rax, %rdi	# D.15760,
	call	bitmap_clear	#
	.loc 1 463 0
	movl	$24, %edi	#,
	call	xmalloc	#
	movq	%rax, %rdi	# D.15761,
	call	bitmap_initialize	#
	movq	-24(%rbp), %rdx	# bb_info, tmp171
	movq	%rax, 80(%rdx)	# D.15760, bb_info_31->lr_in
	.loc 1 464 0
	movl	$24, %edi	#,
	call	xmalloc	#
	movq	%rax, %rdi	# D.15761,
	call	bitmap_initialize	#
	movq	-24(%rbp), %rdx	# bb_info, tmp173
	movq	%rax, 88(%rdx)	# D.15760, bb_info_31->lr_out
	.loc 1 465 0
	movq	-24(%rbp), %rax	# bb_info, tmp174
	movl	$0, 104(%rax)	#, bb_info_31->lr_valid
.L14:
.LBE2:
	.loc 1 426 0
	addl	$1, -40(%rbp)	#, i
.L11:
	.loc 1 426 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# df, tmp175
	movl	92(%rax), %eax	# df_8(D)->n_bbs, D.15757
	cmpl	-40(%rbp), %eax	# i, D.15757
	ja	.L15	#,
	.loc 1 468 0 is_stmt 1
	addq	$56, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	df_bitmaps_alloc, .-df_bitmaps_alloc
	.type	df_bitmaps_free, @function
df_bitmaps_free:
.LFB5:
	.loc 1 476 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# df, df
	movl	%esi, -44(%rbp)	# flags, flags
	.loc 1 479 0
	movl	$0, -20(%rbp)	#, i
	jmp	.L17	#
.L34:
.LBB3:
	.loc 1 481 0
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.7
	movl	-20(%rbp), %edx	# i, tmp111
	addq	$4, %rdx	#, tmp112
	movq	(%rax,%rdx,8), %rax	# basic_block_info.7_5->data.bb, tmp113
	movq	%rax, -16(%rbp)	# tmp113, bb
	.loc 1 482 0
	movq	-40(%rbp), %rax	# df, tmp114
	movq	8(%rax), %rdx	# df_3(D)->bbs, D.15763
	movq	-16(%rbp), %rax	# bb, tmp115
	movl	88(%rax), %eax	# bb_6->index, D.15764
	cltq
	salq	$4, %rax	#, tmp117
	leaq	0(,%rax,8), %rcx	#, tmp118
	subq	%rax, %rcx	# tmp116, D.15765
	movq	%rcx, %rax	# D.15765, D.15765
	addq	%rdx, %rax	# D.15763, tmp119
	movq	%rax, -8(%rbp)	# tmp119, bb_info
	.loc 1 484 0
	cmpq	$0, -8(%rbp)	#, bb_info
	jne	.L18	#,
	.loc 1 485 0
	jmp	.L19	#
.L18:
	.loc 1 487 0
	movl	-44(%rbp), %eax	# flags, tmp120
	andl	$1, %eax	#, D.15764
	testl	%eax, %eax	# D.15764
	je	.L20	#,
	.loc 1 487 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# bb_info, tmp121
	movq	16(%rax), %rax	# bb_info_11->rd_in, D.15766
	testq	%rax, %rax	# D.15766
	je	.L20	#,
	.loc 1 490 0 is_stmt 1
	movq	-8(%rbp), %rax	# bb_info, tmp122
	movq	(%rax), %rax	# bb_info_11->rd_kill, D.15766
	testq	%rax, %rax	# D.15766
	je	.L21	#,
	.loc 1 490 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# bb_info, tmp123
	movq	(%rax), %rax	# bb_info_11->rd_kill, D.15766
	movq	%rax, %rdi	# D.15766,
	call	bitmap_clear	#
	movq	-8(%rbp), %rax	# bb_info, tmp124
	movq	(%rax), %rax	# bb_info_11->rd_kill, D.15766
	movq	%rax, %rdi	# D.15766,
	call	free	#
	movq	-8(%rbp), %rax	# bb_info, tmp125
	movq	$0, (%rax)	#, bb_info_11->rd_kill
.L21:
	.loc 1 491 0 is_stmt 1
	movq	-8(%rbp), %rax	# bb_info, tmp126
	movq	$0, (%rax)	#, bb_info_11->rd_kill
	.loc 1 492 0
	movq	-8(%rbp), %rax	# bb_info, tmp127
	movq	8(%rax), %rax	# bb_info_11->rd_gen, D.15766
	testq	%rax, %rax	# D.15766
	je	.L22	#,
	.loc 1 492 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# bb_info, tmp128
	movq	8(%rax), %rax	# bb_info_11->rd_gen, D.15766
	movq	%rax, %rdi	# D.15766,
	call	bitmap_clear	#
	movq	-8(%rbp), %rax	# bb_info, tmp129
	movq	8(%rax), %rax	# bb_info_11->rd_gen, D.15766
	movq	%rax, %rdi	# D.15766,
	call	free	#
	movq	-8(%rbp), %rax	# bb_info, tmp130
	movq	$0, 8(%rax)	#, bb_info_11->rd_gen
.L22:
	.loc 1 493 0 is_stmt 1
	movq	-8(%rbp), %rax	# bb_info, tmp131
	movq	$0, 8(%rax)	#, bb_info_11->rd_gen
	.loc 1 494 0
	movq	-8(%rbp), %rax	# bb_info, tmp132
	movq	16(%rax), %rax	# bb_info_11->rd_in, D.15766
	testq	%rax, %rax	# D.15766
	je	.L23	#,
	.loc 1 494 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# bb_info, tmp133
	movq	16(%rax), %rax	# bb_info_11->rd_in, D.15766
	movq	%rax, %rdi	# D.15766,
	call	bitmap_clear	#
	movq	-8(%rbp), %rax	# bb_info, tmp134
	movq	16(%rax), %rax	# bb_info_11->rd_in, D.15766
	movq	%rax, %rdi	# D.15766,
	call	free	#
	movq	-8(%rbp), %rax	# bb_info, tmp135
	movq	$0, 16(%rax)	#, bb_info_11->rd_in
.L23:
	.loc 1 495 0 is_stmt 1
	movq	-8(%rbp), %rax	# bb_info, tmp136
	movq	$0, 16(%rax)	#, bb_info_11->rd_in
	.loc 1 496 0
	movq	-8(%rbp), %rax	# bb_info, tmp137
	movq	24(%rax), %rax	# bb_info_11->rd_out, D.15766
	testq	%rax, %rax	# D.15766
	je	.L24	#,
	.loc 1 496 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# bb_info, tmp138
	movq	24(%rax), %rax	# bb_info_11->rd_out, D.15766
	movq	%rax, %rdi	# D.15766,
	call	bitmap_clear	#
	movq	-8(%rbp), %rax	# bb_info, tmp139
	movq	24(%rax), %rax	# bb_info_11->rd_out, D.15766
	movq	%rax, %rdi	# D.15766,
	call	free	#
	movq	-8(%rbp), %rax	# bb_info, tmp140
	movq	$0, 24(%rax)	#, bb_info_11->rd_out
.L24:
	.loc 1 497 0 is_stmt 1
	movq	-8(%rbp), %rax	# bb_info, tmp141
	movq	$0, 24(%rax)	#, bb_info_11->rd_out
.L20:
	.loc 1 500 0
	movl	-44(%rbp), %eax	# flags, tmp142
	andl	$2, %eax	#, D.15764
	testl	%eax, %eax	# D.15764
	je	.L25	#,
	.loc 1 500 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# bb_info, tmp143
	movq	48(%rax), %rax	# bb_info_11->ru_in, D.15766
	testq	%rax, %rax	# D.15766
	je	.L25	#,
	.loc 1 503 0 is_stmt 1
	movq	-8(%rbp), %rax	# bb_info, tmp144
	movq	32(%rax), %rax	# bb_info_11->ru_kill, D.15766
	testq	%rax, %rax	# D.15766
	je	.L26	#,
	.loc 1 503 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# bb_info, tmp145
	movq	32(%rax), %rax	# bb_info_11->ru_kill, D.15766
	movq	%rax, %rdi	# D.15766,
	call	bitmap_clear	#
	movq	-8(%rbp), %rax	# bb_info, tmp146
	movq	32(%rax), %rax	# bb_info_11->ru_kill, D.15766
	movq	%rax, %rdi	# D.15766,
	call	free	#
	movq	-8(%rbp), %rax	# bb_info, tmp147
	movq	$0, 32(%rax)	#, bb_info_11->ru_kill
.L26:
	.loc 1 504 0 is_stmt 1
	movq	-8(%rbp), %rax	# bb_info, tmp148
	movq	$0, 32(%rax)	#, bb_info_11->ru_kill
	.loc 1 505 0
	movq	-8(%rbp), %rax	# bb_info, tmp149
	movq	40(%rax), %rax	# bb_info_11->ru_gen, D.15766
	testq	%rax, %rax	# D.15766
	je	.L27	#,
	.loc 1 505 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# bb_info, tmp150
	movq	40(%rax), %rax	# bb_info_11->ru_gen, D.15766
	movq	%rax, %rdi	# D.15766,
	call	bitmap_clear	#
	movq	-8(%rbp), %rax	# bb_info, tmp151
	movq	40(%rax), %rax	# bb_info_11->ru_gen, D.15766
	movq	%rax, %rdi	# D.15766,
	call	free	#
	movq	-8(%rbp), %rax	# bb_info, tmp152
	movq	$0, 40(%rax)	#, bb_info_11->ru_gen
.L27:
	.loc 1 506 0 is_stmt 1
	movq	-8(%rbp), %rax	# bb_info, tmp153
	movq	$0, 40(%rax)	#, bb_info_11->ru_gen
	.loc 1 507 0
	movq	-8(%rbp), %rax	# bb_info, tmp154
	movq	48(%rax), %rax	# bb_info_11->ru_in, D.15766
	testq	%rax, %rax	# D.15766
	je	.L28	#,
	.loc 1 507 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# bb_info, tmp155
	movq	48(%rax), %rax	# bb_info_11->ru_in, D.15766
	movq	%rax, %rdi	# D.15766,
	call	bitmap_clear	#
	movq	-8(%rbp), %rax	# bb_info, tmp156
	movq	48(%rax), %rax	# bb_info_11->ru_in, D.15766
	movq	%rax, %rdi	# D.15766,
	call	free	#
	movq	-8(%rbp), %rax	# bb_info, tmp157
	movq	$0, 48(%rax)	#, bb_info_11->ru_in
.L28:
	.loc 1 508 0 is_stmt 1
	movq	-8(%rbp), %rax	# bb_info, tmp158
	movq	$0, 48(%rax)	#, bb_info_11->ru_in
	.loc 1 509 0
	movq	-8(%rbp), %rax	# bb_info, tmp159
	movq	56(%rax), %rax	# bb_info_11->ru_out, D.15766
	testq	%rax, %rax	# D.15766
	je	.L29	#,
	.loc 1 509 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# bb_info, tmp160
	movq	56(%rax), %rax	# bb_info_11->ru_out, D.15766
	movq	%rax, %rdi	# D.15766,
	call	bitmap_clear	#
	movq	-8(%rbp), %rax	# bb_info, tmp161
	movq	56(%rax), %rax	# bb_info_11->ru_out, D.15766
	movq	%rax, %rdi	# D.15766,
	call	free	#
	movq	-8(%rbp), %rax	# bb_info, tmp162
	movq	$0, 56(%rax)	#, bb_info_11->ru_out
.L29:
	.loc 1 510 0 is_stmt 1
	movq	-8(%rbp), %rax	# bb_info, tmp163
	movq	$0, 56(%rax)	#, bb_info_11->ru_out
.L25:
	.loc 1 513 0
	movl	-44(%rbp), %eax	# flags, tmp164
	andl	$4, %eax	#, D.15764
	testl	%eax, %eax	# D.15764
	je	.L19	#,
	.loc 1 513 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# bb_info, tmp165
	movq	80(%rax), %rax	# bb_info_11->lr_in, D.15766
	testq	%rax, %rax	# D.15766
	je	.L19	#,
	.loc 1 516 0 is_stmt 1
	movq	-8(%rbp), %rax	# bb_info, tmp166
	movq	64(%rax), %rax	# bb_info_11->lr_def, D.15766
	testq	%rax, %rax	# D.15766
	je	.L30	#,
	.loc 1 516 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# bb_info, tmp167
	movq	64(%rax), %rax	# bb_info_11->lr_def, D.15766
	movq	%rax, %rdi	# D.15766,
	call	bitmap_clear	#
	movq	-8(%rbp), %rax	# bb_info, tmp168
	movq	64(%rax), %rax	# bb_info_11->lr_def, D.15766
	movq	%rax, %rdi	# D.15766,
	call	free	#
	movq	-8(%rbp), %rax	# bb_info, tmp169
	movq	$0, 64(%rax)	#, bb_info_11->lr_def
.L30:
	.loc 1 517 0 is_stmt 1
	movq	-8(%rbp), %rax	# bb_info, tmp170
	movq	$0, 64(%rax)	#, bb_info_11->lr_def
	.loc 1 518 0
	movq	-8(%rbp), %rax	# bb_info, tmp171
	movq	72(%rax), %rax	# bb_info_11->lr_use, D.15766
	testq	%rax, %rax	# D.15766
	je	.L31	#,
	.loc 1 518 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# bb_info, tmp172
	movq	72(%rax), %rax	# bb_info_11->lr_use, D.15766
	movq	%rax, %rdi	# D.15766,
	call	bitmap_clear	#
	movq	-8(%rbp), %rax	# bb_info, tmp173
	movq	72(%rax), %rax	# bb_info_11->lr_use, D.15766
	movq	%rax, %rdi	# D.15766,
	call	free	#
	movq	-8(%rbp), %rax	# bb_info, tmp174
	movq	$0, 72(%rax)	#, bb_info_11->lr_use
.L31:
	.loc 1 519 0 is_stmt 1
	movq	-8(%rbp), %rax	# bb_info, tmp175
	movq	$0, 72(%rax)	#, bb_info_11->lr_use
	.loc 1 520 0
	movq	-8(%rbp), %rax	# bb_info, tmp176
	movq	80(%rax), %rax	# bb_info_11->lr_in, D.15766
	testq	%rax, %rax	# D.15766
	je	.L32	#,
	.loc 1 520 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# bb_info, tmp177
	movq	80(%rax), %rax	# bb_info_11->lr_in, D.15766
	movq	%rax, %rdi	# D.15766,
	call	bitmap_clear	#
	movq	-8(%rbp), %rax	# bb_info, tmp178
	movq	80(%rax), %rax	# bb_info_11->lr_in, D.15766
	movq	%rax, %rdi	# D.15766,
	call	free	#
	movq	-8(%rbp), %rax	# bb_info, tmp179
	movq	$0, 80(%rax)	#, bb_info_11->lr_in
.L32:
	.loc 1 521 0 is_stmt 1
	movq	-8(%rbp), %rax	# bb_info, tmp180
	movq	$0, 80(%rax)	#, bb_info_11->lr_in
	.loc 1 522 0
	movq	-8(%rbp), %rax	# bb_info, tmp181
	movq	88(%rax), %rax	# bb_info_11->lr_out, D.15766
	testq	%rax, %rax	# D.15766
	je	.L33	#,
	.loc 1 522 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# bb_info, tmp182
	movq	88(%rax), %rax	# bb_info_11->lr_out, D.15766
	movq	%rax, %rdi	# D.15766,
	call	bitmap_clear	#
	movq	-8(%rbp), %rax	# bb_info, tmp183
	movq	88(%rax), %rax	# bb_info_11->lr_out, D.15766
	movq	%rax, %rdi	# D.15766,
	call	free	#
	movq	-8(%rbp), %rax	# bb_info, tmp184
	movq	$0, 88(%rax)	#, bb_info_11->lr_out
.L33:
	.loc 1 523 0 is_stmt 1
	movq	-8(%rbp), %rax	# bb_info, tmp185
	movq	$0, 88(%rax)	#, bb_info_11->lr_out
.L19:
.LBE3:
	.loc 1 479 0
	addl	$1, -20(%rbp)	#, i
.L17:
	.loc 1 479 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# df, tmp186
	movl	92(%rax), %eax	# df_3(D)->n_bbs, D.15762
	cmpl	-20(%rbp), %eax	# i, D.15762
	ja	.L34	#,
	.loc 1 526 0 is_stmt 1
	movq	-40(%rbp), %rax	# df, tmp187
	movl	(%rax), %eax	# df_3(D)->flags, D.15764
	movl	-44(%rbp), %edx	# flags, tmp188
	andl	$7, %edx	#, D.15764
	notl	%edx	# D.15764
	andl	%eax, %edx	# D.15764, D.15764
	movq	-40(%rbp), %rax	# df, tmp189
	movl	%edx, (%rax)	# D.15764, df_3(D)->flags
	.loc 1 527 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	df_bitmaps_free, .-df_bitmaps_free
	.type	df_alloc, @function
df_alloc:
.LFB6:
	.loc 1 535 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# df, df
	movl	%esi, -28(%rbp)	# n_regs, n_regs
	.loc 1 539 0
	movl	$df_ref_obstack, %edi	#,
	call	gcc_obstack_init	#
	.loc 1 543 0
	call	get_max_uid	#
	addl	$1, %eax	#, tmp90
	movl	%eax, -4(%rbp)	# tmp90, n_insns
	.loc 1 545 0
	movq	-24(%rbp), %rax	# df, tmp91
	movl	$0, 68(%rax)	#, df_4(D)->def_id
	.loc 1 546 0
	movq	-24(%rbp), %rax	# df, tmp92
	movl	$0, 76(%rax)	#, df_4(D)->n_defs
	.loc 1 548 0
	movl	-4(%rbp), %edx	# n_insns, n_insns.8
	movq	-24(%rbp), %rax	# df, tmp93
	movl	%edx, 72(%rax)	# n_insns.8, df_4(D)->def_size
	.loc 1 549 0
	movq	-24(%rbp), %rax	# df, tmp94
	movl	72(%rax), %eax	# df_4(D)->def_size, D.15768
	movl	%eax, %eax	# D.15768, D.15769
	salq	$3, %rax	#, D.15769
	movq	%rax, %rdi	# D.15769,
	call	xmalloc	#
	movq	%rax, %rdx	# tmp95, D.15770
	movq	-24(%rbp), %rax	# df, tmp96
	movq	%rdx, 16(%rax)	# D.15770, df_4(D)->defs
	.loc 1 551 0
	movq	-24(%rbp), %rax	# df, tmp97
	movl	$0, 80(%rax)	#, df_4(D)->use_id
	.loc 1 552 0
	movq	-24(%rbp), %rax	# df, tmp98
	movl	$0, 88(%rax)	#, df_4(D)->n_uses
	.loc 1 554 0
	movl	-4(%rbp), %eax	# n_insns, tmp99
	addl	%eax, %eax	# D.15767
	movl	%eax, %edx	# D.15767, D.15768
	movq	-24(%rbp), %rax	# df, tmp100
	movl	%edx, 84(%rax)	# D.15768, df_4(D)->use_size
	.loc 1 555 0
	movq	-24(%rbp), %rax	# df, tmp101
	movl	84(%rax), %eax	# df_4(D)->use_size, D.15768
	movl	%eax, %eax	# D.15768, D.15769
	salq	$3, %rax	#, D.15769
	movq	%rax, %rdi	# D.15769,
	call	xmalloc	#
	movq	%rax, %rdx	# tmp102, D.15770
	movq	-24(%rbp), %rax	# df, tmp103
	movq	%rdx, 24(%rax)	# D.15770, df_4(D)->uses
	.loc 1 557 0
	movl	-28(%rbp), %edx	# n_regs, n_regs.9
	movq	-24(%rbp), %rax	# df, tmp104
	movl	%edx, 96(%rax)	# n_regs.9, df_4(D)->n_regs
	.loc 1 558 0
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.10
	movl	%eax, %edx	# n_basic_blocks.10, n_basic_blocks.11
	movq	-24(%rbp), %rax	# df, tmp105
	movl	%edx, 92(%rax)	# n_basic_blocks.11, df_4(D)->n_bbs
	.loc 1 561 0
	movq	-24(%rbp), %rax	# df, tmp106
	movl	96(%rax), %eax	# df_4(D)->n_regs, D.15768
	movl	%eax, %eax	# D.15768, D.15769
	salq	$3, %rax	#, D.15769
	movq	%rax, %rdi	# D.15769,
	call	xmalloc	#
	movq	%rax, %rdx	# tmp107, D.15770
	movq	-24(%rbp), %rax	# df, tmp108
	movq	%rdx, 32(%rax)	# D.15770, df_4(D)->reg_def_last
	.loc 1 563 0
	movl	-4(%rbp), %edx	# n_insns, tmp109
	movq	-24(%rbp), %rax	# df, tmp110
	movl	%edx, %esi	# tmp109,
	movq	%rax, %rdi	# tmp110,
	call	df_insn_table_realloc	#
	.loc 1 565 0
	movq	-24(%rbp), %rax	# df, tmp111
	movl	96(%rax), %eax	# df_4(D)->n_regs, D.15768
	movl	%eax, %edx	# D.15768, D.15767
	movq	-24(%rbp), %rax	# df, tmp112
	movl	%edx, %esi	# D.15767,
	movq	%rax, %rdi	# tmp112,
	call	df_reg_table_realloc	#
	.loc 1 567 0
	movl	$24, %edi	#,
	call	xmalloc	#
	movq	%rax, %rdi	# D.15770,
	call	bitmap_initialize	#
	movq	-24(%rbp), %rdx	# df, tmp114
	movq	%rax, 120(%rdx)	# D.15771, df_4(D)->bbs_modified
	.loc 1 568 0
	movq	-24(%rbp), %rax	# df, tmp115
	movq	120(%rax), %rax	# df_4(D)->bbs_modified, D.15771
	movq	%rax, %rdi	# D.15771,
	call	bitmap_clear	#
	.loc 1 570 0
	movq	-24(%rbp), %rax	# df, tmp116
	movl	$0, (%rax)	#, df_4(D)->flags
	.loc 1 572 0
	movq	-24(%rbp), %rax	# df, tmp117
	movl	92(%rax), %eax	# df_4(D)->n_bbs, D.15768
	movl	%eax, %eax	# D.15768, D.15769
	movl	$112, %esi	#,
	movq	%rax, %rdi	# D.15769,
	call	xcalloc	#
	movq	%rax, %rdx	# tmp118, D.15770
	movq	-24(%rbp), %rax	# df, tmp119
	movq	%rdx, 8(%rax)	# D.15770, df_4(D)->bbs
	.loc 1 574 0
	movl	$24, %edi	#,
	call	xmalloc	#
	movq	%rax, %rdi	# D.15770,
	call	bitmap_initialize	#
	movq	-24(%rbp), %rdx	# df, tmp121
	movq	%rax, 128(%rdx)	# D.15771, df_4(D)->all_blocks
	.loc 1 575 0
	movl	$0, -8(%rbp)	#, i
	jmp	.L36	#
.L37:
	.loc 1 576 0 discriminator 2
	movq	-24(%rbp), %rax	# df, tmp122
	movq	128(%rax), %rax	# df_4(D)->all_blocks, D.15771
	movl	-8(%rbp), %edx	# i, tmp123
	movl	%edx, %esi	# tmp123,
	movq	%rax, %rdi	# D.15771,
	call	bitmap_set_bit	#
	.loc 1 575 0 discriminator 2
	addl	$1, -8(%rbp)	#, i
.L36:
	.loc 1 575 0 is_stmt 0 discriminator 1
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.12
	cmpl	%eax, -8(%rbp)	# n_basic_blocks.12, i
	jl	.L37	#,
	.loc 1 577 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	df_alloc, .-df_alloc
	.type	df_free, @function
df_free:
.LFB7:
	.loc 1 584 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# df, df
	.loc 1 585 0
	movq	-24(%rbp), %rax	# df, tmp83
	movl	$255, %esi	#,
	movq	%rax, %rdi	# tmp83,
	call	df_bitmaps_free	#
	.loc 1 587 0
	movq	-24(%rbp), %rax	# df, tmp84
	movq	8(%rax), %rax	# df_1(D)->bbs, D.15772
	testq	%rax, %rax	# D.15772
	je	.L39	#,
	.loc 1 588 0
	movq	-24(%rbp), %rax	# df, tmp85
	movq	8(%rax), %rax	# df_1(D)->bbs, D.15772
	movq	%rax, %rdi	# D.15772,
	call	free	#
.L39:
	.loc 1 589 0
	movq	-24(%rbp), %rax	# df, tmp86
	movq	$0, 8(%rax)	#, df_1(D)->bbs
	.loc 1 591 0
	movq	-24(%rbp), %rax	# df, tmp87
	movq	56(%rax), %rax	# df_1(D)->insns, D.15773
	testq	%rax, %rax	# D.15773
	je	.L40	#,
	.loc 1 592 0
	movq	-24(%rbp), %rax	# df, tmp88
	movq	56(%rax), %rax	# df_1(D)->insns, D.15773
	movq	%rax, %rdi	# D.15773,
	call	free	#
.L40:
	.loc 1 593 0
	movq	-24(%rbp), %rax	# df, tmp89
	movq	$0, 56(%rax)	#, df_1(D)->insns
	.loc 1 594 0
	movq	-24(%rbp), %rax	# df, tmp90
	movl	$0, 64(%rax)	#, df_1(D)->insn_size
	.loc 1 596 0
	movq	-24(%rbp), %rax	# df, tmp91
	movq	16(%rax), %rax	# df_1(D)->defs, D.15774
	testq	%rax, %rax	# D.15774
	je	.L41	#,
	.loc 1 597 0
	movq	-24(%rbp), %rax	# df, tmp92
	movq	16(%rax), %rax	# df_1(D)->defs, D.15774
	movq	%rax, %rdi	# D.15774,
	call	free	#
.L41:
	.loc 1 598 0
	movq	-24(%rbp), %rax	# df, tmp93
	movq	$0, 16(%rax)	#, df_1(D)->defs
	.loc 1 599 0
	movq	-24(%rbp), %rax	# df, tmp94
	movl	$0, 72(%rax)	#, df_1(D)->def_size
	.loc 1 600 0
	movq	-24(%rbp), %rax	# df, tmp95
	movl	$0, 68(%rax)	#, df_1(D)->def_id
	.loc 1 602 0
	movq	-24(%rbp), %rax	# df, tmp96
	movq	24(%rax), %rax	# df_1(D)->uses, D.15774
	testq	%rax, %rax	# D.15774
	je	.L42	#,
	.loc 1 603 0
	movq	-24(%rbp), %rax	# df, tmp97
	movq	24(%rax), %rax	# df_1(D)->uses, D.15774
	movq	%rax, %rdi	# D.15774,
	call	free	#
.L42:
	.loc 1 604 0
	movq	-24(%rbp), %rax	# df, tmp98
	movq	$0, 24(%rax)	#, df_1(D)->uses
	.loc 1 605 0
	movq	-24(%rbp), %rax	# df, tmp99
	movl	$0, 84(%rax)	#, df_1(D)->use_size
	.loc 1 606 0
	movq	-24(%rbp), %rax	# df, tmp100
	movl	$0, 80(%rax)	#, df_1(D)->use_id
	.loc 1 608 0
	movq	-24(%rbp), %rax	# df, tmp101
	movq	40(%rax), %rax	# df_1(D)->regs, D.15775
	testq	%rax, %rax	# D.15775
	je	.L43	#,
	.loc 1 609 0
	movq	-24(%rbp), %rax	# df, tmp102
	movq	40(%rax), %rax	# df_1(D)->regs, D.15775
	movq	%rax, %rdi	# D.15775,
	call	free	#
.L43:
	.loc 1 610 0
	movq	-24(%rbp), %rax	# df, tmp103
	movq	$0, 40(%rax)	#, df_1(D)->regs
	.loc 1 611 0
	movq	-24(%rbp), %rax	# df, tmp104
	movl	$0, 48(%rax)	#, df_1(D)->reg_size
	.loc 1 613 0
	movq	-24(%rbp), %rax	# df, tmp105
	movq	120(%rax), %rax	# df_1(D)->bbs_modified, D.15776
	testq	%rax, %rax	# D.15776
	je	.L44	#,
	.loc 1 614 0
	movq	-24(%rbp), %rax	# df, tmp106
	movq	120(%rax), %rax	# df_1(D)->bbs_modified, D.15776
	testq	%rax, %rax	# D.15776
	je	.L44	#,
	.loc 1 614 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# df, tmp107
	movq	120(%rax), %rax	# df_1(D)->bbs_modified, D.15776
	movq	%rax, %rdi	# D.15776,
	call	bitmap_clear	#
	movq	-24(%rbp), %rax	# df, tmp108
	movq	120(%rax), %rax	# df_1(D)->bbs_modified, D.15776
	movq	%rax, %rdi	# D.15776,
	call	free	#
	movq	-24(%rbp), %rax	# df, tmp109
	movq	$0, 120(%rax)	#, df_1(D)->bbs_modified
.L44:
	.loc 1 615 0 is_stmt 1
	movq	-24(%rbp), %rax	# df, tmp110
	movq	$0, 120(%rax)	#, df_1(D)->bbs_modified
	.loc 1 617 0
	movq	-24(%rbp), %rax	# df, tmp111
	movq	112(%rax), %rax	# df_1(D)->insns_modified, D.15776
	testq	%rax, %rax	# D.15776
	je	.L45	#,
	.loc 1 618 0
	movq	-24(%rbp), %rax	# df, tmp112
	movq	112(%rax), %rax	# df_1(D)->insns_modified, D.15776
	testq	%rax, %rax	# D.15776
	je	.L45	#,
	.loc 1 618 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# df, tmp113
	movq	112(%rax), %rax	# df_1(D)->insns_modified, D.15776
	movq	%rax, %rdi	# D.15776,
	call	bitmap_clear	#
	movq	-24(%rbp), %rax	# df, tmp114
	movq	112(%rax), %rax	# df_1(D)->insns_modified, D.15776
	movq	%rax, %rdi	# D.15776,
	call	free	#
	movq	-24(%rbp), %rax	# df, tmp115
	movq	$0, 112(%rax)	#, df_1(D)->insns_modified
.L45:
	.loc 1 619 0 is_stmt 1
	movq	-24(%rbp), %rax	# df, tmp116
	movq	$0, 112(%rax)	#, df_1(D)->insns_modified
	.loc 1 621 0
	movq	-24(%rbp), %rax	# df, tmp117
	movq	128(%rax), %rax	# df_1(D)->all_blocks, D.15776
	testq	%rax, %rax	# D.15776
	je	.L46	#,
	.loc 1 621 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# df, tmp118
	movq	128(%rax), %rax	# df_1(D)->all_blocks, D.15776
	movq	%rax, %rdi	# D.15776,
	call	bitmap_clear	#
	movq	-24(%rbp), %rax	# df, tmp119
	movq	128(%rax), %rax	# df_1(D)->all_blocks, D.15776
	movq	%rax, %rdi	# D.15776,
	call	free	#
	movq	-24(%rbp), %rax	# df, tmp120
	movq	$0, 128(%rax)	#, df_1(D)->all_blocks
.L46:
	.loc 1 622 0 is_stmt 1
	movq	-24(%rbp), %rax	# df, tmp121
	movq	$0, 128(%rax)	#, df_1(D)->all_blocks
.LBB4:
	.loc 1 624 0
	movq	$df_ref_obstack, -16(%rbp)	#, __o
	movq	$0, -8(%rbp)	#, __obj
	movq	-16(%rbp), %rax	# __o, tmp122
	movq	8(%rax), %rax	# __o_23->chunk, D.15777
	cmpq	-8(%rbp), %rax	# __obj, D.15777
	jae	.L47	#,
	.loc 1 624 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# __o, tmp123
	movq	32(%rax), %rax	# __o_23->chunk_limit, D.15778
	cmpq	-8(%rbp), %rax	# __obj, D.15778
	jbe	.L47	#,
	movq	-16(%rbp), %rax	# __o, tmp124
	movq	-8(%rbp), %rdx	# __obj, tmp125
	movq	%rdx, 16(%rax)	# tmp125, __o_23->object_base
	movq	-16(%rbp), %rax	# __o, tmp126
	movq	16(%rax), %rdx	# __o_23->object_base, D.15778
	movq	-16(%rbp), %rax	# __o, tmp127
	movq	%rdx, 24(%rax)	# D.15778, __o_23->next_free
	jmp	.L38	#
.L47:
	.loc 1 624 0 discriminator 2
	movq	-8(%rbp), %rdx	# __obj, tmp128
	movq	-16(%rbp), %rax	# __o, tmp129
	movq	%rdx, %rsi	# tmp128,
	movq	%rax, %rdi	# tmp129,
	call	obstack_free	#
.L38:
.LBE4:
	.loc 1 625 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	df_free, .-df_free
	.type	df_reg_use_gen, @function
df_reg_use_gen:
.LFB8:
	.loc 1 632 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	%edi, -20(%rbp)	# regno, regno
	.loc 1 637 0
	cmpl	$52, -20(%rbp)	#, regno
	jbe	.L50	#,
	.loc 1 637 0 is_stmt 0 discriminator 1
	movq	cfun(%rip), %rax	# cfun, cfun.14
	movq	24(%rax), %rax	# cfun.14_3->emit, D.15779
	movq	80(%rax), %rax	# _4->x_regno_reg_rtx, D.15780
	movl	-20(%rbp), %edx	# regno, D.15781
	salq	$3, %rdx	#, D.15781
	addq	%rdx, %rax	# D.15781, D.15780
	movq	(%rax), %rax	# *_8, iftmp.13
	jmp	.L51	#
.L50:
	.loc 1 637 0 discriminator 2
	movl	-20(%rbp), %edx	# regno, regno.15
	movl	-20(%rbp), %eax	# regno, tmp72
	movl	reg_raw_mode(,%rax,4), %eax	# reg_raw_mode, D.15782
	movl	%edx, %esi	# regno.15,
	movl	%eax, %edi	# D.15782,
	call	gen_rtx_REG	#
.L51:
	.loc 1 636 0 is_stmt 1
	movq	%rax, -16(%rbp)	# iftmp.13, reg
	.loc 1 639 0
	movq	-16(%rbp), %rax	# reg, tmp73
	movzbl	2(%rax), %eax	# reg_13->mode, D.15783
	movzbl	%al, %eax	# D.15783, D.15782
	movq	-16(%rbp), %rdx	# reg, tmp74
	movl	%eax, %esi	# D.15782,
	movl	$48, %edi	#,
	call	gen_rtx_fmt_e	#
	movq	%rax, -8(%rbp)	# tmp75, use
	.loc 1 640 0
	movq	-8(%rbp), %rax	# use, D.15784
	.loc 1 641 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	df_reg_use_gen, .-df_reg_use_gen
	.type	df_reg_clobber_gen, @function
df_reg_clobber_gen:
.LFB9:
	.loc 1 647 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	%edi, -20(%rbp)	# regno, regno
	.loc 1 652 0
	cmpl	$52, -20(%rbp)	#, regno
	jbe	.L54	#,
	.loc 1 652 0 is_stmt 0 discriminator 1
	movq	cfun(%rip), %rax	# cfun, cfun.17
	movq	24(%rax), %rax	# cfun.17_3->emit, D.15785
	movq	80(%rax), %rax	# _4->x_regno_reg_rtx, D.15786
	movl	-20(%rbp), %edx	# regno, D.15787
	salq	$3, %rdx	#, D.15787
	addq	%rdx, %rax	# D.15787, D.15786
	movq	(%rax), %rax	# *_8, iftmp.16
	jmp	.L55	#
.L54:
	.loc 1 652 0 discriminator 2
	movl	-20(%rbp), %edx	# regno, regno.18
	movl	-20(%rbp), %eax	# regno, tmp72
	movl	reg_raw_mode(,%rax,4), %eax	# reg_raw_mode, D.15788
	movl	%edx, %esi	# regno.18,
	movl	%eax, %edi	# D.15788,
	call	gen_rtx_REG	#
.L55:
	.loc 1 651 0 is_stmt 1
	movq	%rax, -16(%rbp)	# iftmp.16, reg
	.loc 1 654 0
	movq	-16(%rbp), %rax	# reg, tmp73
	movzbl	2(%rax), %eax	# reg_13->mode, D.15789
	movzbl	%al, %eax	# D.15789, D.15788
	movq	-16(%rbp), %rdx	# reg, tmp74
	movl	%eax, %esi	# D.15788,
	movl	$49, %edi	#,
	call	gen_rtx_fmt_e	#
	movq	%rax, -8(%rbp)	# tmp75, use
	.loc 1 655 0
	movq	-8(%rbp), %rax	# use, D.15790
	.loc 1 656 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	df_reg_clobber_gen, .-df_reg_clobber_gen
	.type	df_link_create, @function
df_link_create:
.LFB10:
	.loc 1 665 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -56(%rbp)	# ref, ref
	movq	%rsi, -64(%rbp)	# next, next
.LBB5:
	.loc 1 668 0
	movq	$df_ref_obstack, -40(%rbp)	#, __h
.LBB6:
	movq	-40(%rbp), %rax	# __h, tmp95
	movq	%rax, -32(%rbp)	# tmp95, __o
	movl	$16, -44(%rbp)	#, __len
	movq	-32(%rbp), %rax	# __o, tmp96
	movq	32(%rax), %rax	# __o_2->chunk_limit, D.15791
	movq	%rax, %rdx	# D.15791, D.15792
	movq	-32(%rbp), %rax	# __o, tmp97
	movq	24(%rax), %rax	# __o_2->next_free, D.15791
	subq	%rax, %rdx	# D.15792, D.15792
	movl	-44(%rbp), %eax	# __len, tmp98
	cltq
	cmpq	%rax, %rdx	# D.15792, D.15792
	jge	.L58	#,
	.loc 1 668 0 is_stmt 0 discriminator 1
	movl	-44(%rbp), %edx	# __len, tmp99
	movq	-32(%rbp), %rax	# __o, tmp100
	movl	%edx, %esi	# tmp99,
	movq	%rax, %rdi	# tmp100,
	call	_obstack_newchunk	#
.L58:
	.loc 1 668 0 discriminator 2
	movq	-32(%rbp), %rax	# __o, tmp101
	movq	24(%rax), %rdx	# __o_2->next_free, D.15791
	movl	-44(%rbp), %eax	# __len, tmp102
	cltq
	addq	%rax, %rdx	# D.15793, D.15791
	movq	-32(%rbp), %rax	# __o, tmp103
	movq	%rdx, 24(%rax)	# D.15791, __o_2->next_free
.LBE6:
.LBB7:
	movq	-40(%rbp), %rax	# __h, tmp104
	movq	%rax, -24(%rbp)	# tmp104, __o1
	movq	-24(%rbp), %rax	# __o1, tmp105
	movq	16(%rax), %rax	# __o1_13->object_base, tmp106
	movq	%rax, -16(%rbp)	# tmp106, value
	movq	-24(%rbp), %rax	# __o1, tmp107
	movq	24(%rax), %rax	# __o1_13->next_free, D.15791
	cmpq	-16(%rbp), %rax	# value, D.15791
	jne	.L59	#,
	.loc 1 668 0 discriminator 1
	movq	-24(%rbp), %rax	# __o1, tmp108
	movzbl	80(%rax), %edx	# __o1_13->maybe_empty_object, tmp111
	orl	$2, %edx	#, tmp112
	movb	%dl, 80(%rax)	# tmp112, __o1_13->maybe_empty_object
.L59:
	.loc 1 668 0 discriminator 2
	movq	-24(%rbp), %rax	# __o1, tmp113
	movq	24(%rax), %rax	# __o1_13->next_free, D.15791
	movq	%rax, %rdx	# D.15791, D.15792
	movq	-24(%rbp), %rax	# __o1, tmp114
	movl	48(%rax), %eax	# __o1_13->alignment_mask, D.15794
	cltq
	addq	%rax, %rdx	# D.15792, D.15792
	movq	-24(%rbp), %rax	# __o1, tmp115
	movl	48(%rax), %eax	# __o1_13->alignment_mask, D.15794
	notl	%eax	# D.15794
	cltq
	andq	%rdx, %rax	# D.15792, D.15792
	movq	%rax, %rdx	# D.15792, D.15791
	movq	-24(%rbp), %rax	# __o1, tmp116
	movq	%rdx, 24(%rax)	# D.15791, __o1_13->next_free
	movq	-24(%rbp), %rax	# __o1, tmp117
	movq	24(%rax), %rax	# __o1_13->next_free, D.15791
	movq	%rax, %rdx	# D.15791, D.15792
	movq	-24(%rbp), %rax	# __o1, tmp118
	movq	8(%rax), %rax	# __o1_13->chunk, D.15795
	movq	%rdx, %rcx	# D.15792, D.15792
	subq	%rax, %rcx	# D.15792, D.15792
	movq	-24(%rbp), %rax	# __o1, tmp119
	movq	32(%rax), %rax	# __o1_13->chunk_limit, D.15791
	movq	%rax, %rdx	# D.15791, D.15792
	movq	-24(%rbp), %rax	# __o1, tmp120
	movq	8(%rax), %rax	# __o1_13->chunk, D.15795
	subq	%rax, %rdx	# D.15792, D.15792
	movq	%rdx, %rax	# D.15792, D.15792
	cmpq	%rax, %rcx	# D.15792, D.15792
	jle	.L60	#,
	.loc 1 668 0 discriminator 1
	movq	-24(%rbp), %rax	# __o1, tmp121
	movq	32(%rax), %rdx	# __o1_13->chunk_limit, D.15791
	movq	-24(%rbp), %rax	# __o1, tmp122
	movq	%rdx, 24(%rax)	# D.15791, __o1_13->next_free
.L60:
	.loc 1 668 0 discriminator 2
	movq	-24(%rbp), %rax	# __o1, tmp123
	movq	24(%rax), %rdx	# __o1_13->next_free, D.15791
	movq	-24(%rbp), %rax	# __o1, tmp124
	movq	%rdx, 16(%rax)	# D.15791, __o1_13->object_base
	movq	-16(%rbp), %rax	# value, D.15796
.LBE7:
.LBE5:
	movq	%rax, -8(%rbp)	# link.49, link
	.loc 1 670 0 is_stmt 1 discriminator 2
	movq	-8(%rbp), %rax	# link, tmp125
	movq	-64(%rbp), %rdx	# next, tmp126
	movq	%rdx, (%rax)	# tmp126, link_40->next
	.loc 1 671 0 discriminator 2
	movq	-8(%rbp), %rax	# link, tmp127
	movq	-56(%rbp), %rdx	# ref, tmp128
	movq	%rdx, 8(%rax)	# tmp128, link_40->ref
	.loc 1 672 0 discriminator 2
	movq	-8(%rbp), %rax	# link, D.15797
	.loc 1 673 0 discriminator 2
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	df_link_create, .-df_link_create
	.section	.rodata
.LC0:
	.string	"df.c"
	.text
	.type	df_ref_unlink, @function
df_ref_unlink:
.LFB11:
	.loc 1 681 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# phead, phead
	movq	%rsi, -32(%rbp)	# ref, ref
	.loc 1 682 0
	movq	-24(%rbp), %rax	# phead, tmp70
	movq	(%rax), %rax	# *phead_4(D), tmp71
	movq	%rax, -8(%rbp)	# tmp71, link
	.loc 1 684 0
	cmpq	$0, -8(%rbp)	#, link
	je	.L63	#,
	.loc 1 686 0
	movq	-8(%rbp), %rax	# link, tmp72
	movq	(%rax), %rax	# link_5->next, D.15798
	testq	%rax, %rax	# D.15798
	jne	.L64	#,
	.loc 1 691 0
	movq	-8(%rbp), %rax	# link, tmp73
	movq	8(%rax), %rax	# link_5->ref, D.15799
	cmpq	-32(%rbp), %rax	# ref, D.15799
	je	.L65	#,
	.loc 1 692 0
	movl	$__FUNCTION__.10827, %edx	#,
	movl	$692, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L65:
	.loc 1 694 0
	movq	-24(%rbp), %rax	# phead, tmp74
	movq	$0, (%rax)	#, *phead_4(D)
	jmp	.L63	#
.L64:
	.loc 1 699 0
	movq	-8(%rbp), %rax	# link, tmp75
	movq	8(%rax), %rax	# link_5->ref, D.15799
	cmpq	-32(%rbp), %rax	# ref, D.15799
	jne	.L66	#,
	.loc 1 700 0
	movq	-8(%rbp), %rax	# link, tmp76
	movq	(%rax), %rdx	# link_5->next, D.15798
	movq	-24(%rbp), %rax	# phead, tmp77
	movq	%rdx, (%rax)	# D.15798, *phead_4(D)
	jmp	.L63	#
.L66:
	.loc 1 704 0
	jmp	.L67	#
.L70:
	.loc 1 706 0
	movq	-8(%rbp), %rax	# link, tmp78
	movq	(%rax), %rax	# link_1->next, D.15798
	movq	8(%rax), %rax	# _12->ref, D.15799
	cmpq	-32(%rbp), %rax	# ref, D.15799
	jne	.L68	#,
	.loc 1 709 0
	movq	-8(%rbp), %rax	# link, tmp79
	movq	(%rax), %rax	# link_1->next, D.15798
	movq	(%rax), %rdx	# _14->next, D.15798
	movq	-8(%rbp), %rax	# link, tmp80
	movq	%rdx, (%rax)	# D.15798, link_1->next
	.loc 1 710 0
	movq	-8(%rbp), %rax	# link, tmp81
	movq	(%rax), %rax	# link_1->next, D.15798
	jmp	.L69	#
.L68:
	.loc 1 704 0
	movq	-8(%rbp), %rax	# link, tmp82
	movq	(%rax), %rax	# link_1->next, tmp83
	movq	%rax, -8(%rbp)	# tmp83, link
.L67:
	.loc 1 704 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# link, tmp84
	movq	(%rax), %rax	# link_1->next, D.15798
	testq	%rax, %rax	# D.15798
	jne	.L70	#,
.L63:
	.loc 1 716 0 is_stmt 1
	movq	-8(%rbp), %rax	# link, D.15798
.L69:
	.loc 1 717 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	df_ref_unlink, .-df_ref_unlink
	.globl	df_ref_remove
	.type	df_ref_remove, @function
df_ref_remove:
.LFB12:
	.loc 1 725 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# df, df
	movq	%rsi, -16(%rbp)	# ref, ref
	.loc 1 726 0
	movq	-16(%rbp), %rax	# ref, tmp76
	movl	32(%rax), %eax	# ref_1(D)->type, D.15801
	testl	%eax, %eax	# D.15801
	jne	.L72	#,
	.loc 1 728 0
	movq	-16(%rbp), %rdx	# ref, tmp77
	movq	-8(%rbp), %rax	# df, tmp78
	movq	%rdx, %rsi	# tmp77,
	movq	%rax, %rdi	# tmp78,
	call	df_def_unlink	#
	.loc 1 729 0
	movq	-8(%rbp), %rax	# df, tmp79
	movq	56(%rax), %rcx	# df_3(D)->insns, D.15802
	movq	-16(%rbp), %rax	# ref, tmp80
	movq	8(%rax), %rax	# ref_1(D)->insn, D.15803
	movl	8(%rax), %eax	# _5->fld[0].rtint, D.15804
	movslq	%eax, %rdx	# D.15804, D.15805
	movq	%rdx, %rax	# D.15805, tmp81
	addq	%rax, %rax	# tmp81
	addq	%rdx, %rax	# D.15805, tmp81
	salq	$3, %rax	#, tmp82
	addq	%rcx, %rax	# D.15802, D.15802
	movq	-16(%rbp), %rdx	# ref, tmp83
	movq	%rdx, %rsi	# tmp83,
	movq	%rax, %rdi	# D.15806,
	call	df_ref_unlink	#
	jmp	.L73	#
.L72:
	.loc 1 733 0
	movq	-16(%rbp), %rdx	# ref, tmp84
	movq	-8(%rbp), %rax	# df, tmp85
	movq	%rdx, %rsi	# tmp84,
	movq	%rax, %rdi	# tmp85,
	call	df_use_unlink	#
	.loc 1 734 0
	movq	-8(%rbp), %rax	# df, tmp86
	movq	56(%rax), %rcx	# df_3(D)->insns, D.15802
	movq	-16(%rbp), %rax	# ref, tmp87
	movq	8(%rax), %rax	# ref_1(D)->insn, D.15803
	movl	8(%rax), %eax	# _12->fld[0].rtint, D.15804
	movslq	%eax, %rdx	# D.15804, D.15805
	movq	%rdx, %rax	# D.15805, tmp88
	addq	%rax, %rax	# tmp88
	addq	%rdx, %rax	# D.15805, tmp88
	salq	$3, %rax	#, tmp89
	addq	%rcx, %rax	# D.15802, D.15802
	leaq	8(%rax), %rdx	#, D.15806
	movq	-16(%rbp), %rax	# ref, tmp90
	movq	%rax, %rsi	# tmp90,
	movq	%rdx, %rdi	# D.15806,
	call	df_ref_unlink	#
.L73:
	.loc 1 736 0
	movl	$1, %eax	#, D.15804
	.loc 1 737 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	df_ref_remove, .-df_ref_remove
	.type	df_def_unlink, @function
df_def_unlink:
.LFB13:
	.loc 1 745 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# df, df
	movq	%rsi, -48(%rbp)	# def, def
	.loc 1 747 0
	movq	-48(%rbp), %rax	# def, tmp74
	movq	(%rax), %rax	# def_3(D)->reg, D.15807
	movzwl	(%rax), %eax	# _4->code, D.15808
	cmpw	$63, %ax	#, D.15808
	jne	.L76	#,
	.loc 1 747 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# def, tmp75
	movq	(%rax), %rax	# def_3(D)->reg, D.15807
	movq	8(%rax), %rax	# _6->fld[0].rtx, iftmp.19
	jmp	.L77	#
.L76:
	.loc 1 747 0 discriminator 2
	movq	-48(%rbp), %rax	# def, tmp76
	movq	(%rax), %rax	# def_3(D)->reg, iftmp.19
.L77:
	.loc 1 747 0 discriminator 3
	movl	8(%rax), %eax	# iftmp.19_2->fld[0].rtuint, tmp77
	movl	%eax, -20(%rbp)	# tmp77, dregno
	.loc 1 750 0 is_stmt 1 discriminator 3
	movq	-48(%rbp), %rax	# def, tmp78
	movq	24(%rax), %rax	# def_3(D)->chain, tmp79
	movq	%rax, -16(%rbp)	# tmp79, du_link
	jmp	.L78	#
.L79:
.LBB8:
	.loc 1 752 0 discriminator 2
	movq	-16(%rbp), %rax	# du_link, tmp80
	movq	8(%rax), %rax	# du_link_1->ref, tmp81
	movq	%rax, -8(%rbp)	# tmp81, use
	.loc 1 755 0 discriminator 2
	movq	-8(%rbp), %rax	# use, tmp82
	leaq	24(%rax), %rdx	#, D.15809
	movq	-48(%rbp), %rax	# def, tmp83
	movq	%rax, %rsi	# tmp83,
	movq	%rdx, %rdi	# D.15809,
	call	df_ref_unlink	#
.LBE8:
	.loc 1 750 0 discriminator 2
	movq	-16(%rbp), %rax	# du_link, tmp84
	movq	(%rax), %rax	# du_link_1->next, tmp85
	movq	%rax, -16(%rbp)	# tmp85, du_link
.L78:
	.loc 1 750 0 is_stmt 0 discriminator 1
	cmpq	$0, -16(%rbp)	#, du_link
	jne	.L79	#,
	.loc 1 757 0 is_stmt 1
	movq	-48(%rbp), %rax	# def, tmp86
	movq	$0, 24(%rax)	#, def_3(D)->chain
	.loc 1 760 0
	movq	-40(%rbp), %rax	# df, tmp87
	movq	40(%rax), %rax	# df_14(D)->regs, D.15810
	movl	-20(%rbp), %edx	# dregno, D.15811
	salq	$5, %rdx	#, D.15811
	addq	%rdx, %rax	# D.15811, D.15810
	movq	-48(%rbp), %rdx	# def, tmp88
	movq	%rdx, %rsi	# tmp88,
	movq	%rax, %rdi	# D.15809,
	call	df_ref_unlink	#
	.loc 1 762 0
	movq	-40(%rbp), %rax	# df, tmp89
	movq	16(%rax), %rdx	# df_14(D)->defs, D.15812
	movq	-48(%rbp), %rax	# def, tmp90
	movl	36(%rax), %eax	# def_3(D)->id, D.15813
	cltq
	salq	$3, %rax	#, D.15811
	addq	%rdx, %rax	# D.15812, D.15812
	movq	$0, (%rax)	#, *_24
	.loc 1 763 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	df_def_unlink, .-df_def_unlink
	.type	df_use_unlink, @function
df_use_unlink:
.LFB14:
	.loc 1 771 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# df, df
	movq	%rsi, -48(%rbp)	# use, use
	.loc 1 773 0
	movq	-48(%rbp), %rax	# use, tmp74
	movq	(%rax), %rax	# use_3(D)->reg, D.15814
	movzwl	(%rax), %eax	# _4->code, D.15815
	cmpw	$63, %ax	#, D.15815
	jne	.L81	#,
	.loc 1 773 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# use, tmp75
	movq	(%rax), %rax	# use_3(D)->reg, D.15814
	movq	8(%rax), %rax	# _6->fld[0].rtx, iftmp.20
	jmp	.L82	#
.L81:
	.loc 1 773 0 discriminator 2
	movq	-48(%rbp), %rax	# use, tmp76
	movq	(%rax), %rax	# use_3(D)->reg, iftmp.20
.L82:
	.loc 1 773 0 discriminator 3
	movl	8(%rax), %eax	# iftmp.20_2->fld[0].rtuint, tmp77
	movl	%eax, -20(%rbp)	# tmp77, uregno
	.loc 1 776 0 is_stmt 1 discriminator 3
	movq	-48(%rbp), %rax	# use, tmp78
	movq	24(%rax), %rax	# use_3(D)->chain, tmp79
	movq	%rax, -16(%rbp)	# tmp79, ud_link
	jmp	.L83	#
.L84:
.LBB9:
	.loc 1 778 0 discriminator 2
	movq	-16(%rbp), %rax	# ud_link, tmp80
	movq	8(%rax), %rax	# ud_link_1->ref, tmp81
	movq	%rax, -8(%rbp)	# tmp81, def
	.loc 1 781 0 discriminator 2
	movq	-8(%rbp), %rax	# def, tmp82
	leaq	24(%rax), %rdx	#, D.15816
	movq	-48(%rbp), %rax	# use, tmp83
	movq	%rax, %rsi	# tmp83,
	movq	%rdx, %rdi	# D.15816,
	call	df_ref_unlink	#
.LBE9:
	.loc 1 776 0 discriminator 2
	movq	-16(%rbp), %rax	# ud_link, tmp84
	movq	(%rax), %rax	# ud_link_1->next, tmp85
	movq	%rax, -16(%rbp)	# tmp85, ud_link
.L83:
	.loc 1 776 0 is_stmt 0 discriminator 1
	cmpq	$0, -16(%rbp)	#, ud_link
	jne	.L84	#,
	.loc 1 783 0 is_stmt 1
	movq	-48(%rbp), %rax	# use, tmp86
	movq	$0, 24(%rax)	#, use_3(D)->chain
	.loc 1 786 0
	movq	-40(%rbp), %rax	# df, tmp87
	movq	40(%rax), %rax	# df_14(D)->regs, D.15817
	movl	-20(%rbp), %edx	# uregno, D.15818
	salq	$5, %rdx	#, D.15818
	addq	%rdx, %rax	# D.15818, D.15817
	leaq	8(%rax), %rdx	#, D.15816
	movq	-48(%rbp), %rax	# use, tmp88
	movq	%rax, %rsi	# tmp88,
	movq	%rdx, %rdi	# D.15816,
	call	df_ref_unlink	#
	.loc 1 788 0
	movq	-40(%rbp), %rax	# df, tmp89
	movq	24(%rax), %rdx	# df_14(D)->uses, D.15819
	movq	-48(%rbp), %rax	# use, tmp90
	movl	36(%rax), %eax	# use_3(D)->id, D.15820
	cltq
	salq	$3, %rax	#, D.15818
	addq	%rdx, %rax	# D.15819, D.15819
	movq	$0, (%rax)	#, *_24
	.loc 1 789 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	df_use_unlink, .-df_use_unlink
	.type	df_ref_create, @function
df_ref_create:
.LFB15:
	.loc 1 804 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$96, %rsp	#,
	movq	%rdi, -56(%rbp)	# df, df
	movq	%rsi, -64(%rbp)	# reg, reg
	movq	%rdx, -72(%rbp)	# loc, loc
	movq	%rcx, -80(%rbp)	# insn, insn
	movl	%r8d, -84(%rbp)	# ref_type, ref_type
	movl	%r9d, -88(%rbp)	# ref_flags, ref_flags
.LBB10:
	.loc 1 808 0
	movq	$df_ref_obstack, -40(%rbp)	#, __h
.LBB11:
	movq	-40(%rbp), %rax	# __h, tmp134
	movq	%rax, -32(%rbp)	# tmp134, __o
	movl	$48, -48(%rbp)	#, __len
	movq	-32(%rbp), %rax	# __o, tmp135
	movq	32(%rax), %rax	# __o_2->chunk_limit, D.15821
	movq	%rax, %rdx	# D.15821, D.15822
	movq	-32(%rbp), %rax	# __o, tmp136
	movq	24(%rax), %rax	# __o_2->next_free, D.15821
	subq	%rax, %rdx	# D.15822, D.15822
	movl	-48(%rbp), %eax	# __len, tmp137
	cltq
	cmpq	%rax, %rdx	# D.15822, D.15822
	jge	.L86	#,
	.loc 1 808 0 is_stmt 0 discriminator 1
	movl	-48(%rbp), %edx	# __len, tmp138
	movq	-32(%rbp), %rax	# __o, tmp139
	movl	%edx, %esi	# tmp138,
	movq	%rax, %rdi	# tmp139,
	call	_obstack_newchunk	#
.L86:
	.loc 1 808 0 discriminator 2
	movq	-32(%rbp), %rax	# __o, tmp140
	movq	24(%rax), %rdx	# __o_2->next_free, D.15821
	movl	-48(%rbp), %eax	# __len, tmp141
	cltq
	addq	%rax, %rdx	# D.15823, D.15821
	movq	-32(%rbp), %rax	# __o, tmp142
	movq	%rdx, 24(%rax)	# D.15821, __o_2->next_free
.LBE11:
.LBB12:
	movq	-40(%rbp), %rax	# __h, tmp143
	movq	%rax, -24(%rbp)	# tmp143, __o1
	movq	-24(%rbp), %rax	# __o1, tmp144
	movq	16(%rax), %rax	# __o1_13->object_base, tmp145
	movq	%rax, -16(%rbp)	# tmp145, value
	movq	-24(%rbp), %rax	# __o1, tmp146
	movq	24(%rax), %rax	# __o1_13->next_free, D.15821
	cmpq	-16(%rbp), %rax	# value, D.15821
	jne	.L87	#,
	.loc 1 808 0 discriminator 1
	movq	-24(%rbp), %rax	# __o1, tmp147
	movzbl	80(%rax), %edx	# __o1_13->maybe_empty_object, tmp150
	orl	$2, %edx	#, tmp151
	movb	%dl, 80(%rax)	# tmp151, __o1_13->maybe_empty_object
.L87:
	.loc 1 808 0 discriminator 2
	movq	-24(%rbp), %rax	# __o1, tmp152
	movq	24(%rax), %rax	# __o1_13->next_free, D.15821
	movq	%rax, %rdx	# D.15821, D.15822
	movq	-24(%rbp), %rax	# __o1, tmp153
	movl	48(%rax), %eax	# __o1_13->alignment_mask, D.15824
	cltq
	addq	%rax, %rdx	# D.15822, D.15822
	movq	-24(%rbp), %rax	# __o1, tmp154
	movl	48(%rax), %eax	# __o1_13->alignment_mask, D.15824
	notl	%eax	# D.15824
	cltq
	andq	%rdx, %rax	# D.15822, D.15822
	movq	%rax, %rdx	# D.15822, D.15821
	movq	-24(%rbp), %rax	# __o1, tmp155
	movq	%rdx, 24(%rax)	# D.15821, __o1_13->next_free
	movq	-24(%rbp), %rax	# __o1, tmp156
	movq	24(%rax), %rax	# __o1_13->next_free, D.15821
	movq	%rax, %rdx	# D.15821, D.15822
	movq	-24(%rbp), %rax	# __o1, tmp157
	movq	8(%rax), %rax	# __o1_13->chunk, D.15825
	movq	%rdx, %rcx	# D.15822, D.15822
	subq	%rax, %rcx	# D.15822, D.15822
	movq	-24(%rbp), %rax	# __o1, tmp158
	movq	32(%rax), %rax	# __o1_13->chunk_limit, D.15821
	movq	%rax, %rdx	# D.15821, D.15822
	movq	-24(%rbp), %rax	# __o1, tmp159
	movq	8(%rax), %rax	# __o1_13->chunk, D.15825
	subq	%rax, %rdx	# D.15822, D.15822
	movq	%rdx, %rax	# D.15822, D.15822
	cmpq	%rax, %rcx	# D.15822, D.15822
	jle	.L88	#,
	.loc 1 808 0 discriminator 1
	movq	-24(%rbp), %rax	# __o1, tmp160
	movq	32(%rax), %rdx	# __o1_13->chunk_limit, D.15821
	movq	-24(%rbp), %rax	# __o1, tmp161
	movq	%rdx, 24(%rax)	# D.15821, __o1_13->next_free
.L88:
	.loc 1 808 0 discriminator 2
	movq	-24(%rbp), %rax	# __o1, tmp162
	movq	24(%rax), %rdx	# __o1_13->next_free, D.15821
	movq	-24(%rbp), %rax	# __o1, tmp163
	movq	%rdx, 16(%rax)	# D.15821, __o1_13->object_base
	movq	-16(%rbp), %rax	# value, D.15826
.LBE12:
.LBE10:
	movq	%rax, -8(%rbp)	# this_ref.21, this_ref
	.loc 1 810 0 is_stmt 1 discriminator 2
	movq	-8(%rbp), %rax	# this_ref, tmp164
	movq	-64(%rbp), %rdx	# reg, tmp165
	movq	%rdx, (%rax)	# tmp165, this_ref_40->reg
	.loc 1 811 0 discriminator 2
	movq	-8(%rbp), %rax	# this_ref, tmp166
	movq	-72(%rbp), %rdx	# loc, tmp167
	movq	%rdx, 16(%rax)	# tmp167, this_ref_40->loc
	.loc 1 812 0 discriminator 2
	movq	-8(%rbp), %rax	# this_ref, tmp168
	movq	-80(%rbp), %rdx	# insn, tmp169
	movq	%rdx, 8(%rax)	# tmp169, this_ref_40->insn
	.loc 1 813 0 discriminator 2
	movq	-8(%rbp), %rax	# this_ref, tmp170
	movq	$0, 24(%rax)	#, this_ref_40->chain
	.loc 1 814 0 discriminator 2
	movq	-8(%rbp), %rax	# this_ref, tmp171
	movl	-84(%rbp), %edx	# ref_type, tmp172
	movl	%edx, 32(%rax)	# tmp172, this_ref_40->type
	.loc 1 815 0 discriminator 2
	movq	-8(%rbp), %rax	# this_ref, tmp173
	movl	-88(%rbp), %edx	# ref_flags, tmp174
	movl	%edx, 40(%rax)	# tmp174, this_ref_40->flags
	.loc 1 816 0 discriminator 2
	movq	-80(%rbp), %rax	# insn, tmp175
	movl	8(%rax), %eax	# insn_43(D)->fld[0].rtint, D.15824
	movl	%eax, -44(%rbp)	# D.15824, uid
	.loc 1 818 0 discriminator 2
	cmpl	$0, -84(%rbp)	#, ref_type
	jne	.L89	#,
	.loc 1 820 0
	movq	-56(%rbp), %rax	# df, tmp176
	movl	68(%rax), %edx	# df_48(D)->def_id, D.15827
	movq	-56(%rbp), %rax	# df, tmp177
	movl	72(%rax), %eax	# df_48(D)->def_size, D.15827
	cmpl	%eax, %edx	# D.15827, D.15827
	jb	.L90	#,
	.loc 1 823 0
	movq	-56(%rbp), %rax	# df, tmp178
	movl	72(%rax), %edx	# df_48(D)->def_size, D.15827
	movq	-56(%rbp), %rax	# df, tmp179
	movl	72(%rax), %eax	# df_48(D)->def_size, D.15827
	shrl	$2, %eax	#, D.15827
	addl	%eax, %edx	# D.15827, D.15827
	movq	-56(%rbp), %rax	# df, tmp180
	movl	%edx, 72(%rax)	# D.15827, df_48(D)->def_size
	.loc 1 825 0
	movq	-56(%rbp), %rax	# df, tmp181
	movl	72(%rax), %eax	# df_48(D)->def_size, D.15827
	.loc 1 824 0
	movl	%eax, %eax	# D.15827, D.15828
	leaq	0(,%rax,8), %rdx	#, D.15828
	movq	-56(%rbp), %rax	# df, tmp182
	movq	16(%rax), %rax	# df_48(D)->defs, D.15829
	movq	%rdx, %rsi	# D.15828,
	movq	%rax, %rdi	# D.15829,
	call	xrealloc	#
	movq	-56(%rbp), %rdx	# df, tmp183
	movq	%rax, 16(%rdx)	# D.15826, df_48(D)->defs
.L90:
	.loc 1 827 0
	movq	-56(%rbp), %rax	# df, tmp184
	movl	68(%rax), %eax	# df_48(D)->def_id, D.15827
	movl	%eax, %edx	# D.15827, D.15824
	movq	-8(%rbp), %rax	# this_ref, tmp185
	movl	%edx, 36(%rax)	# D.15824, this_ref_40->id
	.loc 1 828 0
	movq	-56(%rbp), %rax	# df, tmp186
	movq	16(%rax), %rsi	# df_48(D)->defs, D.15829
	movq	-56(%rbp), %rax	# df, tmp187
	movl	68(%rax), %eax	# df_48(D)->def_id, D.15827
	leal	1(%rax), %ecx	#, D.15827
	movq	-56(%rbp), %rdx	# df, tmp188
	movl	%ecx, 68(%rdx)	# D.15827, df_48(D)->def_id
	movl	%eax, %eax	# D.15827, D.15828
	salq	$3, %rax	#, D.15828
	leaq	(%rsi,%rax), %rdx	#, D.15829
	movq	-8(%rbp), %rax	# this_ref, tmp189
	movq	%rax, (%rdx)	# tmp189, *_68
	jmp	.L91	#
.L89:
	.loc 1 832 0
	movq	-56(%rbp), %rax	# df, tmp190
	movl	80(%rax), %edx	# df_48(D)->use_id, D.15827
	movq	-56(%rbp), %rax	# df, tmp191
	movl	84(%rax), %eax	# df_48(D)->use_size, D.15827
	cmpl	%eax, %edx	# D.15827, D.15827
	jb	.L92	#,
	.loc 1 835 0
	movq	-56(%rbp), %rax	# df, tmp192
	movl	84(%rax), %edx	# df_48(D)->use_size, D.15827
	movq	-56(%rbp), %rax	# df, tmp193
	movl	84(%rax), %eax	# df_48(D)->use_size, D.15827
	shrl	$2, %eax	#, D.15827
	addl	%eax, %edx	# D.15827, D.15827
	movq	-56(%rbp), %rax	# df, tmp194
	movl	%edx, 84(%rax)	# D.15827, df_48(D)->use_size
	.loc 1 837 0
	movq	-56(%rbp), %rax	# df, tmp195
	movl	84(%rax), %eax	# df_48(D)->use_size, D.15827
	.loc 1 836 0
	movl	%eax, %eax	# D.15827, D.15828
	leaq	0(,%rax,8), %rdx	#, D.15828
	movq	-56(%rbp), %rax	# df, tmp196
	movq	24(%rax), %rax	# df_48(D)->uses, D.15829
	movq	%rdx, %rsi	# D.15828,
	movq	%rax, %rdi	# D.15829,
	call	xrealloc	#
	movq	-56(%rbp), %rdx	# df, tmp197
	movq	%rax, 24(%rdx)	# D.15826, df_48(D)->uses
.L92:
	.loc 1 839 0
	movq	-56(%rbp), %rax	# df, tmp198
	movl	80(%rax), %eax	# df_48(D)->use_id, D.15827
	movl	%eax, %edx	# D.15827, D.15824
	movq	-8(%rbp), %rax	# this_ref, tmp199
	movl	%edx, 36(%rax)	# D.15824, this_ref_40->id
	.loc 1 840 0
	movq	-56(%rbp), %rax	# df, tmp200
	movq	24(%rax), %rsi	# df_48(D)->uses, D.15829
	movq	-56(%rbp), %rax	# df, tmp201
	movl	80(%rax), %eax	# df_48(D)->use_id, D.15827
	leal	1(%rax), %ecx	#, D.15827
	movq	-56(%rbp), %rdx	# df, tmp202
	movl	%ecx, 80(%rdx)	# D.15827, df_48(D)->use_id
	movl	%eax, %eax	# D.15827, D.15828
	salq	$3, %rax	#, D.15828
	leaq	(%rsi,%rax), %rdx	#, D.15829
	movq	-8(%rbp), %rax	# this_ref, tmp203
	movq	%rax, (%rdx)	# tmp203, *_88
.L91:
	.loc 1 842 0
	movq	-8(%rbp), %rax	# this_ref, D.15830
	.loc 1 843 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	df_ref_create, .-df_ref_create
	.type	df_ref_record_1, @function
df_ref_record_1:
.LFB16:
	.loc 1 856 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -8(%rbp)	# df, df
	movq	%rsi, -16(%rbp)	# reg, reg
	movq	%rdx, -24(%rbp)	# loc, loc
	movq	%rcx, -32(%rbp)	# insn, insn
	movl	%r8d, -36(%rbp)	# ref_type, ref_type
	movl	%r9d, -40(%rbp)	# ref_flags, ref_flags
	.loc 1 857 0
	movl	-40(%rbp), %r8d	# ref_flags, tmp59
	movl	-36(%rbp), %edi	# ref_type, tmp60
	movq	-32(%rbp), %rcx	# insn, tmp61
	movq	-24(%rbp), %rdx	# loc, tmp62
	movq	-16(%rbp), %rsi	# reg, tmp63
	movq	-8(%rbp), %rax	# df, tmp64
	movl	%r8d, %r9d	# tmp59,
	movl	%edi, %r8d	# tmp60,
	movq	%rax, %rdi	# tmp64,
	call	df_ref_create	#
	.loc 1 858 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	df_ref_record_1, .-df_ref_record_1
	.type	df_ref_record, @function
df_ref_record:
.LFB17:
	.loc 1 871 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$72, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)	# df, df
	movq	%rsi, -48(%rbp)	# reg, reg
	movq	%rdx, -56(%rbp)	# loc, loc
	movq	%rcx, -64(%rbp)	# insn, insn
	movl	%r8d, -68(%rbp)	# ref_type, ref_type
	movl	%r9d, -72(%rbp)	# ref_flags, ref_flags
	.loc 1 874 0
	movq	-48(%rbp), %rax	# reg, tmp113
	movzwl	(%rax), %eax	# reg_13(D)->code, D.15831
	cmpw	$61, %ax	#, D.15831
	je	.L96	#,
	.loc 1 874 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# reg, tmp114
	movzwl	(%rax), %eax	# reg_13(D)->code, D.15831
	cmpw	$63, %ax	#, D.15831
	je	.L96	#,
	.loc 1 875 0 is_stmt 1
	movl	$__FUNCTION__.10889, %edx	#,
	movl	$875, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L96:
	.loc 1 882 0
	movq	-48(%rbp), %rax	# reg, tmp115
	movzwl	(%rax), %eax	# reg_13(D)->code, D.15831
	cmpw	$63, %ax	#, D.15831
	jne	.L97	#,
	.loc 1 883 0
	movq	-48(%rbp), %rax	# reg, tmp116
	movzbl	2(%rax), %eax	# reg_13(D)->mode, D.15832
	movzbl	%al, %eax	# D.15832, D.15833
	cltq
	movzbl	mode_size(%rax), %edx	# mode_size, D.15832
	movl	word_mode(%rip), %eax	# word_mode, word_mode.22
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.15832
	cmpb	%al, %dl	# D.15832, D.15832
	jb	.L98	#,
	.loc 1 884 0
	movq	-48(%rbp), %rax	# reg, tmp119
	movzbl	2(%rax), %eax	# reg_13(D)->mode, D.15832
	movzbl	%al, %eax	# D.15832, D.15833
	cltq
	movzbl	mode_size(%rax), %edx	# mode_size, D.15832
	.loc 1 885 0
	movq	-48(%rbp), %rax	# reg, tmp121
	movq	8(%rax), %rax	# reg_13(D)->fld[0].rtx, D.15834
	movzbl	2(%rax), %eax	# _27->mode, D.15832
	movzbl	%al, %eax	# D.15832, D.15833
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.15832
	.loc 1 884 0
	cmpb	%al, %dl	# D.15832, D.15832
	jb	.L97	#,
.L98:
	.loc 1 887 0
	movq	-48(%rbp), %rax	# reg, tmp126
	addq	$8, %rax	#, tmp125
	movq	%rax, -56(%rbp)	# tmp125, loc
	.loc 1 888 0
	movq	-56(%rbp), %rax	# loc, tmp127
	movq	(%rax), %rax	# *loc_31, tmp128
	movq	%rax, -48(%rbp)	# tmp128, reg
.L97:
	.loc 1 891 0
	movq	-48(%rbp), %rax	# reg, tmp129
	movzwl	(%rax), %eax	# reg_1->code, D.15831
	cmpw	$63, %ax	#, D.15831
	jne	.L99	#,
	.loc 1 891 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# reg, tmp130
	movq	8(%rax), %rax	# reg_1->fld[0].rtx, iftmp.24
	jmp	.L100	#
.L99:
	.loc 1 891 0 discriminator 2
	movq	-48(%rbp), %rax	# reg, iftmp.24
.L100:
	.loc 1 891 0 discriminator 3
	movl	8(%rax), %eax	# iftmp.24_4->fld[0].rtuint, tmp131
	movl	%eax, -24(%rbp)	# tmp131, regno
	.loc 1 892 0 is_stmt 1 discriminator 3
	cmpl	$52, -24(%rbp)	#, regno
	ja	.L101	#,
.LBB13:
	.loc 1 897 0
	movq	-40(%rbp), %rax	# df, tmp132
	movl	(%rax), %eax	# df_37(D)->flags, D.15833
	andl	$1024, %eax	#, D.15833
	testl	%eax, %eax	# D.15833
	jne	.L102	#,
	.loc 1 898 0
	jmp	.L95	#
.L102:
	.loc 1 905 0
	cmpl	$7, -24(%rbp)	#, regno
	jbe	.L104	#,
	.loc 1 905 0 is_stmt 0 discriminator 1
	cmpl	$15, -24(%rbp)	#, regno
	jbe	.L105	#,
.L104:
	.loc 1 905 0 discriminator 2
	cmpl	$20, -24(%rbp)	#, regno
	jbe	.L106	#,
	.loc 1 905 0 discriminator 1
	cmpl	$28, -24(%rbp)	#, regno
	jbe	.L105	#,
.L106:
	.loc 1 905 0 discriminator 2
	cmpl	$44, -24(%rbp)	#, regno
	jbe	.L107	#,
	.loc 1 905 0 discriminator 1
	cmpl	$52, -24(%rbp)	#, regno
	jbe	.L105	#,
.L107:
	.loc 1 905 0 discriminator 2
	cmpl	$28, -24(%rbp)	#, regno
	jbe	.L108	#,
	.loc 1 905 0 discriminator 1
	cmpl	$36, -24(%rbp)	#, regno
	ja	.L108	#,
.L105:
	movq	-48(%rbp), %rax	# reg, tmp133
	movzbl	2(%rax), %eax	# reg_1->mode, D.15832
	movzbl	%al, %eax	# D.15832, D.15833
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.15835
	cmpl	$5, %eax	#, D.15835
	je	.L109	#,
	.loc 1 905 0 discriminator 4
	movq	-48(%rbp), %rax	# reg, tmp135
	movzbl	2(%rax), %eax	# reg_1->mode, D.15832
	movzbl	%al, %eax	# D.15832, D.15833
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.15835
	cmpl	$6, %eax	#, D.15835
	jne	.L110	#,
.L109:
	.loc 1 905 0 discriminator 3
	movl	$2, %eax	#, iftmp.26
	jmp	.L112	#
.L110:
	.loc 1 905 0 discriminator 1
	movl	$1, %eax	#, iftmp.26
	jmp	.L112	#
.L108:
	.loc 1 905 0 discriminator 2
	movq	-48(%rbp), %rax	# reg, tmp137
	movzbl	2(%rax), %eax	# reg_1->mode, D.15832
	cmpb	$18, %al	#, D.15832
	jne	.L113	#,
	.loc 1 905 0 discriminator 7
	movl	target_flags(%rip), %eax	# target_flags, target_flags.29
	andl	$33554432, %eax	#, D.15833
	testl	%eax, %eax	# D.15833
	je	.L114	#,
	.loc 1 905 0 discriminator 9
	movl	$2, %eax	#, iftmp.28
	jmp	.L112	#
.L114:
	.loc 1 905 0 discriminator 10
	movl	$3, %eax	#, iftmp.28
	jmp	.L112	#
.L113:
	.loc 1 905 0 discriminator 8
	movq	-48(%rbp), %rax	# reg, tmp138
	movzbl	2(%rax), %eax	# reg_1->mode, D.15832
	cmpb	$24, %al	#, D.15832
	jne	.L117	#,
	.loc 1 905 0 discriminator 11
	movl	target_flags(%rip), %eax	# target_flags, target_flags.32
	andl	$33554432, %eax	#, D.15833
	testl	%eax, %eax	# D.15833
	je	.L118	#,
	.loc 1 905 0 discriminator 13
	movl	$4, %eax	#, iftmp.31
	jmp	.L112	#
.L118:
	.loc 1 905 0 discriminator 14
	movl	$6, %eax	#, iftmp.31
	jmp	.L112	#
.L117:
	.loc 1 905 0 discriminator 12
	movq	-48(%rbp), %rax	# reg, tmp139
	movzbl	2(%rax), %eax	# reg_1->mode, D.15832
	movzbl	%al, %eax	# D.15832, D.15833
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.15832
	movzbl	%al, %edx	# D.15832, D.15833
	movl	target_flags(%rip), %eax	# target_flags, target_flags.34
	andl	$33554432, %eax	#, D.15833
	testl	%eax, %eax	# D.15833
	je	.L121	#,
	.loc 1 905 0 discriminator 1
	movl	$8, %eax	#, iftmp.33
	jmp	.L122	#
.L121:
	.loc 1 905 0 discriminator 2
	movl	$4, %eax	#, iftmp.33
.L122:
	.loc 1 905 0 discriminator 3
	addl	%edx, %eax	# D.15833, D.15833
	subl	$1, %eax	#, D.15833
	movl	target_flags(%rip), %edx	# target_flags, target_flags.36
	andl	$33554432, %edx	#, D.15833
	testl	%edx, %edx	# D.15833
	je	.L123	#,
	.loc 1 905 0 discriminator 1
	movl	$8, %ebx	#, iftmp.35
	jmp	.L124	#
.L123:
	.loc 1 905 0 discriminator 2
	movl	$4, %ebx	#, iftmp.35
.L124:
	.loc 1 905 0 discriminator 3
	cltd
	idivl	%ebx	# iftmp.35
.L112:
	.loc 1 905 0 discriminator 6
	movl	-24(%rbp), %edx	# regno, tmp143
	addl	%edx, %eax	# tmp143, D.15836
	movl	%eax, -20(%rbp)	# D.15836, endregno
	.loc 1 907 0 is_stmt 1 discriminator 6
	movl	-24(%rbp), %eax	# regno, tmp144
	movl	%eax, -28(%rbp)	# tmp144, i
	jmp	.L125	#
.L126:
	.loc 1 908 0 discriminator 2
	movl	-28(%rbp), %eax	# i, tmp146
	cltq
	movl	reg_raw_mode(,%rax,4), %eax	# reg_raw_mode, D.15837
	movl	-28(%rbp), %edx	# i, tmp147
	movl	%edx, %esi	# tmp147,
	movl	%eax, %edi	# D.15837,
	call	gen_rtx_REG	#
	movq	%rax, %rsi	#, D.15834
	movl	-72(%rbp), %r8d	# ref_flags, tmp148
	movl	-68(%rbp), %edi	# ref_type, tmp149
	movq	-64(%rbp), %rcx	# insn, tmp150
	movq	-56(%rbp), %rdx	# loc, tmp151
	movq	-40(%rbp), %rax	# df, tmp152
	movl	%r8d, %r9d	# tmp148,
	movl	%edi, %r8d	# tmp149,
	movq	%rax, %rdi	# tmp152,
	call	df_ref_record_1	#
	.loc 1 907 0 discriminator 2
	addl	$1, -28(%rbp)	#, i
.L125:
	.loc 1 907 0 is_stmt 0 discriminator 1
	movl	-28(%rbp), %eax	# i, tmp153
	cmpl	-20(%rbp), %eax	# endregno, tmp153
	jl	.L126	#,
.LBE13:
	jmp	.L95	#
.L101:
	.loc 1 913 0 is_stmt 1
	movl	-72(%rbp), %r8d	# ref_flags, tmp154
	movl	-68(%rbp), %edi	# ref_type, tmp155
	movq	-64(%rbp), %rcx	# insn, tmp156
	movq	-56(%rbp), %rdx	# loc, tmp157
	movq	-48(%rbp), %rsi	# reg, tmp158
	movq	-40(%rbp), %rax	# df, tmp159
	movl	%r8d, %r9d	# tmp154,
	movl	%edi, %r8d	# tmp155,
	movq	%rax, %rdi	# tmp159,
	call	df_ref_record_1	#
.L95:
	.loc 1 915 0
	addq	$72, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	df_ref_record, .-df_ref_record
	.type	read_modify_subreg_p, @function
read_modify_subreg_p:
.LFB18:
	.loc 1 923 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# x, x
	.loc 1 924 0
	movq	-8(%rbp), %rax	# x, tmp77
	movzwl	(%rax), %eax	# x_4(D)->code, D.15839
	cmpw	$63, %ax	#, D.15839
	je	.L128	#,
	.loc 1 925 0
	movl	$0, %eax	#, D.15838
	jmp	.L129	#
.L128:
	.loc 1 926 0
	movq	-8(%rbp), %rax	# x, tmp78
	movq	8(%rax), %rax	# x_4(D)->fld[0].rtx, D.15840
	movzbl	2(%rax), %eax	# _7->mode, D.15841
	movzbl	%al, %eax	# D.15841, D.15842
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.15841
	movzbl	%al, %edx	# D.15841, D.15842
	movl	target_flags(%rip), %eax	# target_flags, target_flags.38
	andl	$33554432, %eax	#, D.15842
	testl	%eax, %eax	# D.15842
	je	.L130	#,
	.loc 1 926 0 is_stmt 0 discriminator 1
	movl	$8, %eax	#, iftmp.37
	jmp	.L131	#
.L130:
	.loc 1 926 0 discriminator 2
	movl	$4, %eax	#, iftmp.37
.L131:
	.loc 1 926 0 discriminator 3
	cmpl	%eax, %edx	# iftmp.37, D.15842
	jg	.L132	#,
	.loc 1 927 0 is_stmt 1
	movl	$0, %eax	#, D.15838
	jmp	.L129	#
.L132:
	.loc 1 928 0
	movq	-8(%rbp), %rax	# x, tmp80
	movzbl	2(%rax), %eax	# x_4(D)->mode, D.15841
	movzbl	%al, %eax	# D.15841, D.15842
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.15841
	movzbl	%al, %edx	# D.15841, D.15842
	movl	target_flags(%rip), %eax	# target_flags, target_flags.40
	andl	$33554432, %eax	#, D.15842
	testl	%eax, %eax	# D.15842
	je	.L133	#,
	.loc 1 928 0 is_stmt 0 discriminator 1
	movl	$8, %eax	#, iftmp.39
	jmp	.L134	#
.L133:
	.loc 1 928 0 discriminator 2
	movl	$4, %eax	#, iftmp.39
.L134:
	.loc 1 928 0 discriminator 3
	cmpl	%eax, %edx	# iftmp.39, D.15842
	jle	.L135	#,
	.loc 1 929 0 is_stmt 1
	movl	$0, %eax	#, D.15838
	jmp	.L129	#
.L135:
	.loc 1 930 0
	movl	$1, %eax	#, D.15838
.L129:
	.loc 1 931 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	read_modify_subreg_p, .-read_modify_subreg_p
	.type	df_def_record_1, @function
df_def_record_1:
.LFB19:
	.loc 1 940 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -40(%rbp)	# df, df
	movq	%rsi, -48(%rbp)	# x, x
	movq	%rdx, -56(%rbp)	# bb, bb
	movq	%rcx, -64(%rbp)	# insn, insn
	.loc 1 941 0
	movq	-48(%rbp), %rax	# x, tmp77
	addq	$8, %rax	#, tmp76
	movq	%rax, -16(%rbp)	# tmp76, loc
	.loc 1 942 0
	movq	-16(%rbp), %rax	# loc, tmp78
	movq	(%rax), %rax	# *loc_7, tmp79
	movq	%rax, -8(%rbp)	# tmp79, dst
	.loc 1 943 0
	movl	$0, -24(%rbp)	#, flags
	.loc 1 947 0
	movq	-8(%rbp), %rax	# dst, tmp80
	movzwl	(%rax), %eax	# dst_8->code, D.15843
	cmpw	$39, %ax	#, D.15843
	jne	.L137	#,
	.loc 1 947 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# dst, tmp81
	movzbl	2(%rax), %eax	# dst_8->mode, D.15844
	cmpb	$51, %al	#, D.15844
	jne	.L137	#,
.LBB14:
	.loc 1 951 0 is_stmt 1
	movq	-8(%rbp), %rax	# dst, tmp82
	movq	8(%rax), %rax	# dst_8->fld[0].rtvec, D.15845
	movl	(%rax), %eax	# _12->num_elem, D.15846
	subl	$1, %eax	#, tmp83
	movl	%eax, -20(%rbp)	# tmp83, i
	jmp	.L138	#
.L139:
	.loc 1 952 0 discriminator 2
	movq	-8(%rbp), %rax	# dst, tmp84
	movq	8(%rax), %rax	# dst_8->fld[0].rtvec, D.15845
	movl	-20(%rbp), %edx	# i, tmp86
	movslq	%edx, %rdx	# tmp86, tmp85
	movq	8(%rax,%rdx,8), %rsi	# _15->elem, D.15847
	movq	-64(%rbp), %rcx	# insn, tmp87
	movq	-56(%rbp), %rdx	# bb, tmp88
	movq	-40(%rbp), %rax	# df, tmp89
	movq	%rax, %rdi	# tmp89,
	call	df_def_record_1	#
	.loc 1 951 0 discriminator 2
	subl	$1, -20(%rbp)	#, i
.L138:
	.loc 1 951 0 is_stmt 0 discriminator 1
	cmpl	$0, -20(%rbp)	#, i
	jns	.L139	#,
	.loc 1 953 0 is_stmt 1
	jmp	.L136	#
.L137:
.LBE14:
	.loc 1 958 0
	jmp	.L141	#
.L143:
	.loc 1 965 0
	movq	-8(%rbp), %rax	# dst, tmp90
	movzwl	(%rax), %eax	# dst_3->code, D.15843
	cmpw	$64, %ax	#, D.15843
	jne	.L142	#,
	.loc 1 967 0
	movq	-8(%rbp), %rax	# dst, tmp94
	addq	$8, %rax	#, tmp93
	movq	%rax, -16(%rbp)	# tmp93, loc
	.loc 1 968 0
	movq	-16(%rbp), %rax	# loc, tmp95
	movq	(%rax), %rax	# *loc_30, tmp96
	movq	%rax, -8(%rbp)	# tmp96, dst
.L142:
	.loc 1 970 0
	movq	-8(%rbp), %rax	# dst, tmp100
	addq	$8, %rax	#, tmp99
	movq	%rax, -16(%rbp)	# tmp99, loc
	.loc 1 971 0
	movq	-16(%rbp), %rax	# loc, tmp101
	movq	(%rax), %rax	# *loc_32, tmp102
	movq	%rax, -8(%rbp)	# tmp102, dst
	.loc 1 972 0
	orl	$1, -24(%rbp)	#, flags
.L141:
	.loc 1 958 0 discriminator 1
	movq	-8(%rbp), %rax	# dst, tmp103
	movzwl	(%rax), %eax	# dst_3->code, D.15843
	cmpw	$64, %ax	#, D.15843
	je	.L143	#,
	.loc 1 959 0
	movq	-8(%rbp), %rax	# dst, tmp104
	movzwl	(%rax), %eax	# dst_3->code, D.15843
	cmpw	$133, %ax	#, D.15843
	je	.L143	#,
	.loc 1 960 0
	movq	-8(%rbp), %rax	# dst, tmp105
	movzwl	(%rax), %eax	# dst_3->code, D.15843
	cmpw	$132, %ax	#, D.15843
	je	.L143	#,
	.loc 1 961 0
	movq	-8(%rbp), %rax	# dst, tmp106
	movq	%rax, %rdi	# tmp106,
	call	read_modify_subreg_p	#
	testb	%al, %al	# D.15848
	jne	.L143	#,
	.loc 1 975 0
	movq	-8(%rbp), %rax	# dst, tmp107
	movzwl	(%rax), %eax	# dst_3->code, D.15843
	cmpw	$61, %ax	#, D.15843
	je	.L144	#,
	.loc 1 976 0
	movq	-8(%rbp), %rax	# dst, tmp108
	movzwl	(%rax), %eax	# dst_3->code, D.15843
	cmpw	$63, %ax	#, D.15843
	jne	.L136	#,
	.loc 1 976 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# dst, tmp109
	movq	8(%rax), %rax	# dst_3->fld[0].rtx, D.15847
	movzwl	(%rax), %eax	# _27->code, D.15843
	cmpw	$61, %ax	#, D.15843
	jne	.L136	#,
.L144:
	.loc 1 977 0 is_stmt 1
	movl	-24(%rbp), %edi	# flags, tmp110
	movq	-64(%rbp), %rcx	# insn, tmp111
	movq	-16(%rbp), %rdx	# loc, tmp112
	movq	-8(%rbp), %rsi	# dst, tmp113
	movq	-40(%rbp), %rax	# df, tmp114
	movl	%edi, %r9d	# tmp110,
	movl	$0, %r8d	#,
	movq	%rax, %rdi	# tmp114,
	call	df_ref_record	#
.L136:
	.loc 1 978 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	df_def_record_1, .-df_def_record_1
	.type	df_defs_record, @function
df_defs_record:
.LFB20:
	.loc 1 988 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# df, df
	movq	%rsi, -32(%rbp)	# x, x
	movq	%rdx, -40(%rbp)	# bb, bb
	movq	%rcx, -48(%rbp)	# insn, insn
	.loc 1 989 0
	movq	-32(%rbp), %rax	# x, tmp67
	movzwl	(%rax), %eax	# x_2(D)->code, D.15849
	movzwl	%ax, %eax	# D.15849, tmp68
	movl	%eax, -4(%rbp)	# tmp68, code
	.loc 1 991 0
	cmpl	$47, -4(%rbp)	#, code
	je	.L146	#,
	.loc 1 991 0 is_stmt 0 discriminator 1
	cmpl	$49, -4(%rbp)	#, code
	jne	.L147	#,
.L146:
	.loc 1 994 0 is_stmt 1
	movq	-48(%rbp), %rcx	# insn, tmp69
	movq	-40(%rbp), %rdx	# bb, tmp70
	movq	-32(%rbp), %rsi	# x, tmp71
	movq	-24(%rbp), %rax	# df, tmp72
	movq	%rax, %rdi	# tmp72,
	call	df_def_record_1	#
	jmp	.L145	#
.L147:
	.loc 1 996 0
	cmpl	$39, -4(%rbp)	#, code
	jne	.L145	#,
.LBB15:
	.loc 1 1001 0
	movq	-32(%rbp), %rax	# x, tmp73
	movq	8(%rax), %rax	# x_2(D)->fld[0].rtvec, D.15850
	movl	(%rax), %eax	# _5->num_elem, D.15851
	subl	$1, %eax	#, tmp74
	movl	%eax, -8(%rbp)	# tmp74, i
	jmp	.L149	#
.L152:
	.loc 1 1003 0
	movq	-32(%rbp), %rax	# x, tmp75
	movq	8(%rax), %rax	# x_2(D)->fld[0].rtvec, D.15850
	movl	-8(%rbp), %edx	# i, tmp77
	movslq	%edx, %rdx	# tmp77, tmp76
	movq	8(%rax,%rdx,8), %rax	# _8->elem, D.15852
	movzwl	(%rax), %eax	# _9->code, D.15849
	movzwl	%ax, %eax	# D.15849, tmp78
	movl	%eax, -4(%rbp)	# tmp78, code
	.loc 1 1004 0
	cmpl	$47, -4(%rbp)	#, code
	je	.L150	#,
	.loc 1 1004 0 is_stmt 0 discriminator 1
	cmpl	$49, -4(%rbp)	#, code
	jne	.L151	#,
.L150:
	.loc 1 1005 0 is_stmt 1
	movq	-32(%rbp), %rax	# x, tmp79
	movq	8(%rax), %rax	# x_2(D)->fld[0].rtvec, D.15850
	movl	-8(%rbp), %edx	# i, tmp81
	movslq	%edx, %rdx	# tmp81, tmp80
	movq	8(%rax,%rdx,8), %rsi	# _12->elem, D.15852
	movq	-48(%rbp), %rcx	# insn, tmp82
	movq	-40(%rbp), %rdx	# bb, tmp83
	movq	-24(%rbp), %rax	# df, tmp84
	movq	%rax, %rdi	# tmp84,
	call	df_def_record_1	#
.L151:
	.loc 1 1001 0
	subl	$1, -8(%rbp)	#, i
.L149:
	.loc 1 1001 0 is_stmt 0 discriminator 1
	cmpl	$0, -8(%rbp)	#, i
	jns	.L152	#,
.L145:
.LBE15:
	.loc 1 1008 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	df_defs_record, .-df_defs_record
	.type	df_uses_record, @function
df_uses_record:
.LFB21:
	.loc 1 1020 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$96, %rsp	#,
	movq	%rdi, -56(%rbp)	# df, df
	movq	%rsi, -64(%rbp)	# loc, loc
	movl	%edx, -68(%rbp)	# ref_type, ref_type
	movq	%rcx, -80(%rbp)	# bb, bb
	movq	%r8, -88(%rbp)	# insn, insn
	movl	%r9d, -72(%rbp)	# flags, flags
.L154:
	.loc 1 1024 0
	movq	-64(%rbp), %rax	# loc, tmp99
	movq	(%rax), %rax	# *loc_1, tmp100
	movq	%rax, -24(%rbp)	# tmp100, x
	.loc 1 1025 0
	cmpq	$0, -24(%rbp)	#, x
	jne	.L155	#,
	.loc 1 1026 0
	jmp	.L153	#
.L155:
	.loc 1 1027 0
	movq	-24(%rbp), %rax	# x, tmp101
	movzwl	(%rax), %eax	# x_6->code, D.15853
	movzwl	%ax, %eax	# D.15853, tmp102
	movl	%eax, -28(%rbp)	# tmp102, code
	.loc 1 1028 0
	movl	-28(%rbp), %eax	# code, tmp104
	subl	$40, %eax	#, tmp103
	cmpl	$61, %eax	#, tmp103
	ja	.L190	#,
	movl	%eax, %eax	# tmp103, tmp105
	movq	.L159(,%rax,8), %rax	#, tmp106
	jmp	*%rax	# tmp106
	.section	.rodata
	.align 8
	.align 4
.L159:
	.quad	.L158
	.quad	.L158
	.quad	.L190
	.quad	.L158
	.quad	.L191
	.quad	.L191
	.quad	.L190
	.quad	.L161
	.quad	.L190
	.quad	.L162
	.quad	.L190
	.quad	.L190
	.quad	.L158
	.quad	.L190
	.quad	.L191
	.quad	.L191
	.quad	.L191
	.quad	.L190
	.quad	.L191
	.quad	.L191
	.quad	.L190
	.quad	.L164
	.quad	.L190
	.quad	.L165
	.quad	.L190
	.quad	.L190
	.quad	.L166
	.quad	.L191
	.quad	.L191
	.quad	.L190
	.quad	.L190
	.quad	.L190
	.quad	.L190
	.quad	.L190
	.quad	.L190
	.quad	.L190
	.quad	.L190
	.quad	.L190
	.quad	.L190
	.quad	.L190
	.quad	.L190
	.quad	.L190
	.quad	.L190
	.quad	.L190
	.quad	.L190
	.quad	.L190
	.quad	.L190
	.quad	.L190
	.quad	.L190
	.quad	.L190
	.quad	.L190
	.quad	.L190
	.quad	.L190
	.quad	.L190
	.quad	.L190
	.quad	.L190
	.quad	.L167
	.quad	.L167
	.quad	.L167
	.quad	.L167
	.quad	.L167
	.quad	.L167
	.text
.L162:
	.loc 1 1044 0
	movq	-24(%rbp), %rax	# x, tmp107
	movq	8(%rax), %rax	# x_6->fld[0].rtx, D.15854
	movzwl	(%rax), %eax	# _9->code, D.15853
	cmpw	$66, %ax	#, D.15853
	jne	.L168	#,
	.loc 1 1045 0
	movq	-24(%rbp), %rax	# x, tmp108
	movq	8(%rax), %rax	# x_6->fld[0].rtx, D.15854
	leaq	8(%rax), %rsi	#, D.15855
	movl	-72(%rbp), %edi	# flags, tmp109
	movq	-88(%rbp), %rcx	# insn, tmp110
	movq	-80(%rbp), %rdx	# bb, tmp111
	movq	-56(%rbp), %rax	# df, tmp112
	movl	%edi, %r9d	# tmp109,
	movq	%rcx, %r8	# tmp110,
	movq	%rdx, %rcx	# tmp111,
	movl	$3, %edx	#,
	movq	%rax, %rdi	# tmp112,
	call	df_uses_record	#
	.loc 1 1049 0
	jmp	.L153	#
.L168:
	jmp	.L153	#
.L166:
	.loc 1 1052 0
	movq	-24(%rbp), %rax	# x, tmp113
	leaq	8(%rax), %rsi	#, D.15855
	movl	-72(%rbp), %edi	# flags, tmp114
	movq	-88(%rbp), %rcx	# insn, tmp115
	movq	-80(%rbp), %rdx	# bb, tmp116
	movq	-56(%rbp), %rax	# df, tmp117
	movl	%edi, %r9d	# tmp114,
	movq	%rcx, %r8	# tmp115,
	movq	%rdx, %rcx	# tmp116,
	movl	$2, %edx	#,
	movq	%rax, %rdi	# tmp117,
	call	df_uses_record	#
	.loc 1 1053 0
	jmp	.L153	#
.L165:
	.loc 1 1059 0
	movq	-24(%rbp), %rax	# x, tmp118
	movq	8(%rax), %rax	# x_6->fld[0].rtx, D.15854
	movzwl	(%rax), %eax	# _18->code, D.15853
	cmpw	$61, %ax	#, D.15853
	je	.L164	#,
	.loc 1 1061 0
	movq	-24(%rbp), %rax	# x, tmp122
	addq	$8, %rax	#, tmp121
	movq	%rax, -64(%rbp)	# tmp121, loc
	.loc 1 1062 0
	movl	-72(%rbp), %r8d	# flags, tmp123
	movq	-88(%rbp), %rdi	# insn, tmp124
	movq	-80(%rbp), %rcx	# bb, tmp125
	movl	-68(%rbp), %edx	# ref_type, tmp126
	movq	-64(%rbp), %rsi	# loc, tmp127
	movq	-56(%rbp), %rax	# df, tmp128
	movl	%r8d, %r9d	# tmp123,
	movq	%rdi, %r8	# tmp124,
	movq	%rax, %rdi	# tmp128,
	call	df_uses_record	#
	.loc 1 1063 0
	jmp	.L153	#
.L164:
	.loc 1 1070 0
	movl	-72(%rbp), %r8d	# flags, tmp129
	movl	-68(%rbp), %edi	# ref_type, tmp130
	movq	-88(%rbp), %rcx	# insn, tmp131
	movq	-64(%rbp), %rdx	# loc, tmp132
	movq	-24(%rbp), %rsi	# x, tmp133
	movq	-56(%rbp), %rax	# df, tmp134
	movl	%r8d, %r9d	# tmp129,
	movl	%edi, %r8d	# tmp130,
	movq	%rax, %rdi	# tmp134,
	call	df_ref_record	#
	.loc 1 1071 0
	jmp	.L153	#
.L161:
.LBB16:
	.loc 1 1075 0
	movq	-24(%rbp), %rax	# x, tmp135
	movq	8(%rax), %rax	# x_6->fld[0].rtx, tmp136
	movq	%rax, -16(%rbp)	# tmp136, dst
	.loc 1 1077 0
	movq	-24(%rbp), %rax	# x, tmp137
	leaq	16(%rax), %rsi	#, D.15855
	movq	-88(%rbp), %rcx	# insn, tmp138
	movq	-80(%rbp), %rdx	# bb, tmp139
	movq	-56(%rbp), %rax	# df, tmp140
	movl	$0, %r9d	#,
	movq	%rcx, %r8	# tmp138,
	movq	%rdx, %rcx	# tmp139,
	movl	$1, %edx	#,
	movq	%rax, %rdi	# tmp140,
	call	df_uses_record	#
	.loc 1 1079 0
	movq	-16(%rbp), %rax	# dst, tmp141
	movzwl	(%rax), %eax	# dst_22->code, D.15853
	movzwl	%ax, %eax	# D.15853, D.15856
	cmpl	$64, %eax	#, D.15856
	je	.L170	#,
	cmpl	$64, %eax	#, D.15856
	ja	.L171	#,
	cmpl	$61, %eax	#, D.15856
	je	.L192	#,
	cmpl	$63, %eax	#, D.15856
	je	.L173	#,
	cmpl	$59, %eax	#, D.15856
	je	.L192	#,
	jmp	.L169	#
.L171:
	cmpl	$66, %eax	#, D.15856
	je	.L174	#,
	cmpl	$66, %eax	#, D.15856
	jb	.L169	#,
	subl	$132, %eax	#, tmp142
	cmpl	$1, %eax	#, tmp142
	ja	.L169	#,
	jmp	.L189	#
.L173:
	.loc 1 1082 0
	movq	-16(%rbp), %rax	# dst, tmp143
	movq	%rax, %rdi	# tmp143,
	call	read_modify_subreg_p	#
	testb	%al, %al	# D.15857
	je	.L172	#,
	.loc 1 1084 0
	movq	-16(%rbp), %rax	# dst, tmp144
	leaq	8(%rax), %rsi	#, D.15855
	movq	-88(%rbp), %rcx	# insn, tmp145
	movq	-80(%rbp), %rdx	# bb, tmp146
	movq	-56(%rbp), %rax	# df, tmp147
	movl	$1, %r9d	#,
	movq	%rcx, %r8	# tmp145,
	movq	%rdx, %rcx	# tmp146,
	movl	$1, %edx	#,
	movq	%rax, %rdi	# tmp147,
	call	df_uses_record	#
	.loc 1 1086 0
	jmp	.L176	#
.L172:
	.loc 1 1091 0
	jmp	.L192	#
.L174:
	.loc 1 1093 0
	movq	-16(%rbp), %rax	# dst, tmp148
	leaq	8(%rax), %rsi	#, D.15855
	movq	-88(%rbp), %rcx	# insn, tmp149
	movq	-80(%rbp), %rdx	# bb, tmp150
	movq	-56(%rbp), %rax	# df, tmp151
	movl	$0, %r9d	#,
	movq	%rcx, %r8	# tmp149,
	movq	%rdx, %rcx	# tmp150,
	movl	$3, %edx	#,
	movq	%rax, %rdi	# tmp151,
	call	df_uses_record	#
	.loc 1 1096 0
	jmp	.L176	#
.L170:
	.loc 1 1099 0
	movq	-16(%rbp), %rax	# dst, tmp152
	movq	8(%rax), %rax	# dst_22->fld[0].rtx, tmp153
	movq	%rax, -16(%rbp)	# tmp153, dst
	.loc 1 1100 0
	movq	-16(%rbp), %rax	# dst, tmp154
	movzwl	(%rax), %eax	# dst_29->code, D.15853
	cmpw	$63, %ax	#, D.15853
	je	.L177	#,
	.loc 1 1101 0
	movl	$__FUNCTION__.10957, %edx	#,
	movl	$1101, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L177:
	.loc 1 1102 0
	movq	-16(%rbp), %rax	# dst, tmp155
	leaq	8(%rax), %rsi	#, D.15855
	movq	-88(%rbp), %rcx	# insn, tmp156
	movq	-80(%rbp), %rdx	# bb, tmp157
	movq	-56(%rbp), %rax	# df, tmp158
	movl	$1, %r9d	#,
	movq	%rcx, %r8	# tmp156,
	movq	%rdx, %rcx	# tmp157,
	movl	$1, %edx	#,
	movq	%rax, %rdi	# tmp158,
	call	df_uses_record	#
	.loc 1 1104 0
	jmp	.L176	#
.L189:
	.loc 1 1107 0
	movq	-16(%rbp), %rax	# dst, tmp159
	leaq	8(%rax), %rsi	#, D.15855
	movq	-88(%rbp), %rcx	# insn, tmp160
	movq	-80(%rbp), %rdx	# bb, tmp161
	movq	-56(%rbp), %rax	# df, tmp162
	movl	$1, %r9d	#,
	movq	%rcx, %r8	# tmp160,
	movq	%rdx, %rcx	# tmp161,
	movl	$1, %edx	#,
	movq	%rax, %rdi	# tmp162,
	call	df_uses_record	#
	.loc 1 1109 0
	movq	-16(%rbp), %rax	# dst, tmp163
	leaq	16(%rax), %rsi	#, D.15855
	movq	-88(%rbp), %rcx	# insn, tmp164
	movq	-80(%rbp), %rdx	# bb, tmp165
	movq	-56(%rbp), %rax	# df, tmp166
	movl	$0, %r9d	#,
	movq	%rcx, %r8	# tmp164,
	movq	%rdx, %rcx	# tmp165,
	movl	$1, %edx	#,
	movq	%rax, %rdi	# tmp166,
	call	df_uses_record	#
	.loc 1 1110 0
	movq	-16(%rbp), %rax	# dst, tmp167
	leaq	24(%rax), %rsi	#, D.15855
	movq	-88(%rbp), %rcx	# insn, tmp168
	movq	-80(%rbp), %rdx	# bb, tmp169
	movq	-56(%rbp), %rax	# df, tmp170
	movl	$0, %r9d	#,
	movq	%rcx, %r8	# tmp168,
	movq	%rdx, %rcx	# tmp169,
	movl	$1, %edx	#,
	movq	%rax, %rdi	# tmp170,
	call	df_uses_record	#
	.loc 1 1111 0
	movq	-16(%rbp), %rax	# dst, tmp171
	movq	8(%rax), %rax	# dst_22->fld[0].rtx, tmp172
	movq	%rax, -16(%rbp)	# tmp172, dst
	.loc 1 1112 0
	jmp	.L176	#
.L169:
	.loc 1 1114 0
	movl	$__FUNCTION__.10957, %edx	#,
	movl	$1114, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L192:
	.loc 1 1091 0
	nop
.L176:
	.loc 1 1116 0
	jmp	.L153	#
.L158:
.LBE16:
	.loc 1 1142 0
	cmpl	$41, -28(%rbp)	#, code
	jne	.L179	#,
.LBB17:
	.loc 1 1146 0
	movl	$0, -40(%rbp)	#, j
	jmp	.L180	#
.L181:
	.loc 1 1147 0 discriminator 2
	movq	-24(%rbp), %rax	# x, tmp173
	movq	32(%rax), %rax	# x_6->fld[3].rtvec, D.15858
	movl	-40(%rbp), %edx	# j, tmp175
	movslq	%edx, %rdx	# tmp175, tmp174
	salq	$3, %rdx	#, tmp176
	addq	%rdx, %rax	# tmp176, tmp177
	leaq	8(%rax), %rsi	#, D.15855
	movq	-88(%rbp), %rcx	# insn, tmp178
	movq	-80(%rbp), %rdx	# bb, tmp179
	movq	-56(%rbp), %rax	# df, tmp180
	movl	$0, %r9d	#,
	movq	%rcx, %r8	# tmp178,
	movq	%rdx, %rcx	# tmp179,
	movl	$1, %edx	#,
	movq	%rax, %rdi	# tmp180,
	call	df_uses_record	#
	.loc 1 1146 0 discriminator 2
	addl	$1, -40(%rbp)	#, j
.L180:
	.loc 1 1146 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# x, tmp181
	movq	32(%rax), %rax	# x_6->fld[3].rtvec, D.15858
	movl	(%rax), %eax	# _37->num_elem, D.15859
	cmpl	-40(%rbp), %eax	# j, D.15859
	jg	.L181	#,
	.loc 1 1149 0 is_stmt 1
	jmp	.L153	#
.L179:
.LBE17:
	.loc 1 1151 0
	jmp	.L178	#
.L167:
	.loc 1 1161 0
	movq	-24(%rbp), %rax	# x, tmp182
	leaq	8(%rax), %rdi	#, D.15855
	movq	-24(%rbp), %rax	# x, tmp183
	movq	8(%rax), %rsi	# x_6->fld[0].rtx, D.15854
	movq	-88(%rbp), %rdx	# insn, tmp184
	movq	-56(%rbp), %rax	# df, tmp185
	movl	$1, %r9d	#,
	movl	$0, %r8d	#,
	movq	%rdx, %rcx	# tmp184,
	movq	%rdi, %rdx	# D.15855,
	movq	%rax, %rdi	# tmp185,
	call	df_ref_record	#
.L190:
	.loc 1 1166 0
	nop
.L178:
.LBB18:
	.loc 1 1171 0
	movl	-28(%rbp), %eax	# code, code.41
	cltq
	movq	rtx_format(,%rax,8), %rax	# rtx_format, tmp187
	movq	%rax, -8(%rbp)	# tmp187, fmt
	.loc 1 1174 0
	movl	-28(%rbp), %eax	# code, code.42
	cltq
	movzbl	rtx_length(%rax), %eax	# rtx_length, D.15860
	movzbl	%al, %eax	# D.15860, D.15859
	subl	$1, %eax	#, tmp189
	movl	%eax, -36(%rbp)	# tmp189, i
	jmp	.L182	#
.L188:
	.loc 1 1176 0
	movl	-36(%rbp), %eax	# i, tmp190
	movslq	%eax, %rdx	# tmp190, D.15861
	movq	-8(%rbp), %rax	# fmt, tmp191
	addq	%rdx, %rax	# D.15861, D.15862
	movzbl	(%rax), %eax	# *_51, D.15863
	cmpb	$101, %al	#, D.15863
	jne	.L183	#,
	.loc 1 1179 0
	cmpl	$0, -36(%rbp)	#, i
	jne	.L184	#,
	.loc 1 1181 0
	movq	-24(%rbp), %rax	# x, tmp195
	addq	$8, %rax	#, tmp194
	movq	%rax, -64(%rbp)	# tmp194, loc
	.loc 1 1182 0
	jmp	.L154	#
.L184:
	.loc 1 1184 0
	movl	-36(%rbp), %eax	# i, tmp197
	cltq
	leaq	0(,%rax,8), %rdx	#, tmp198
	movq	-24(%rbp), %rax	# x, tmp200
	addq	%rdx, %rax	# tmp198, tmp199
	leaq	8(%rax), %rsi	#, D.15855
	movl	-72(%rbp), %r8d	# flags, tmp201
	movq	-88(%rbp), %rdi	# insn, tmp202
	movq	-80(%rbp), %rcx	# bb, tmp203
	movl	-68(%rbp), %edx	# ref_type, tmp204
	movq	-56(%rbp), %rax	# df, tmp205
	movl	%r8d, %r9d	# tmp201,
	movq	%rdi, %r8	# tmp202,
	movq	%rax, %rdi	# tmp205,
	call	df_uses_record	#
	jmp	.L185	#
.L183:
	.loc 1 1186 0
	movl	-36(%rbp), %eax	# i, tmp206
	movslq	%eax, %rdx	# tmp206, D.15861
	movq	-8(%rbp), %rax	# fmt, tmp207
	addq	%rdx, %rax	# D.15861, D.15862
	movzbl	(%rax), %eax	# *_56, D.15863
	cmpb	$69, %al	#, D.15863
	jne	.L185	#,
.LBB19:
	.loc 1 1189 0
	movl	$0, -32(%rbp)	#, j
	jmp	.L186	#
.L187:
	.loc 1 1190 0 discriminator 2
	movq	-24(%rbp), %rax	# x, tmp208
	movl	-36(%rbp), %edx	# i, tmp210
	movslq	%edx, %rdx	# tmp210, tmp209
	movq	8(%rax,%rdx,8), %rax	# x_6->fld[i_3].rtvec, D.15858
	movl	-32(%rbp), %edx	# j, tmp212
	movslq	%edx, %rdx	# tmp212, tmp211
	salq	$3, %rdx	#, tmp213
	addq	%rdx, %rax	# tmp213, tmp214
	leaq	8(%rax), %rsi	#, D.15855
	movl	-72(%rbp), %r8d	# flags, tmp215
	movq	-88(%rbp), %rdi	# insn, tmp216
	movq	-80(%rbp), %rcx	# bb, tmp217
	movl	-68(%rbp), %edx	# ref_type, tmp218
	movq	-56(%rbp), %rax	# df, tmp219
	movl	%r8d, %r9d	# tmp215,
	movq	%rdi, %r8	# tmp216,
	movq	%rax, %rdi	# tmp219,
	call	df_uses_record	#
	.loc 1 1189 0 discriminator 2
	addl	$1, -32(%rbp)	#, j
.L186:
	.loc 1 1189 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# x, tmp220
	movl	-36(%rbp), %edx	# i, tmp222
	movslq	%edx, %rdx	# tmp222, tmp221
	movq	8(%rax,%rdx,8), %rax	# x_6->fld[i_3].rtvec, D.15858
	movl	(%rax), %eax	# _59->num_elem, D.15859
	cmpl	-32(%rbp), %eax	# j, D.15859
	jg	.L187	#,
.L185:
.LBE19:
	.loc 1 1174 0 is_stmt 1
	subl	$1, -36(%rbp)	#, i
.L182:
	.loc 1 1174 0 is_stmt 0 discriminator 1
	cmpl	$0, -36(%rbp)	#, i
	jns	.L188	#,
	jmp	.L153	#
.L191:
.LBE18:
	.loc 1 1039 0 is_stmt 1
	nop
.L153:
	.loc 1 1195 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	df_uses_record, .-df_uses_record
	.type	df_insn_refs_record, @function
df_insn_refs_record:
.LFB22:
	.loc 1 1204 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movq	%rdi, -56(%rbp)	# df, df
	movq	%rsi, -64(%rbp)	# bb, bb
	movq	%rdx, -72(%rbp)	# insn, insn
	.loc 1 1207 0
	movq	-72(%rbp), %rax	# insn, tmp90
	movzwl	(%rax), %eax	# insn_6(D)->code, D.15865
	movzwl	%ax, %eax	# D.15865, D.15866
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.15867
	cmpb	$105, %al	#, D.15867
	jne	.L193	#,
.LBB20:
	.loc 1 1212 0
	movq	-72(%rbp), %rax	# insn, tmp92
	movq	32(%rax), %rsi	# insn_6(D)->fld[3].rtx, D.15868
	movq	-72(%rbp), %rcx	# insn, tmp93
	movq	-64(%rbp), %rdx	# bb, tmp94
	movq	-56(%rbp), %rax	# df, tmp95
	movq	%rax, %rdi	# tmp95,
	call	df_defs_record	#
	.loc 1 1214 0
	movq	-56(%rbp), %rax	# df, tmp96
	movl	(%rax), %eax	# df_11(D)->flags, D.15866
	andl	$2048, %eax	#, D.15866
	testl	%eax, %eax	# D.15866
	je	.L195	#,
	.loc 1 1215 0
	movq	-72(%rbp), %rax	# insn, tmp97
	movq	56(%rax), %rax	# insn_6(D)->fld[6].rtx, tmp98
	movq	%rax, -40(%rbp)	# tmp98, note
	jmp	.L196	#
.L199:
	.loc 1 1218 0
	movq	-40(%rbp), %rax	# note, tmp99
	movzbl	2(%rax), %eax	# note_3->mode, D.15869
	movzbl	%al, %eax	# D.15869, D.15870
	subl	$3, %eax	#, tmp100
	cmpl	$1, %eax	#, tmp100
	ja	.L215	#,
	.loc 1 1222 0
	movq	-40(%rbp), %rax	# note, tmp101
	leaq	8(%rax), %rsi	#, D.15871
	movq	-72(%rbp), %rcx	# insn, tmp102
	movq	-64(%rbp), %rdx	# bb, tmp103
	movq	-56(%rbp), %rax	# df, tmp104
	movl	$0, %r9d	#,
	movq	%rcx, %r8	# tmp102,
	movq	%rdx, %rcx	# tmp103,
	movl	$1, %edx	#,
	movq	%rax, %rdi	# tmp104,
	call	df_uses_record	#
.L215:
	.loc 1 1225 0
	nop
	.loc 1 1216 0
	movq	-40(%rbp), %rax	# note, tmp105
	movq	16(%rax), %rax	# note_3->fld[1].rtx, tmp106
	movq	%rax, -40(%rbp)	# tmp106, note
.L196:
	.loc 1 1215 0 discriminator 1
	cmpq	$0, -40(%rbp)	#, note
	jne	.L199	#,
.L195:
	.loc 1 1229 0
	movq	-72(%rbp), %rax	# insn, tmp107
	movzwl	(%rax), %eax	# insn_6(D)->code, D.15865
	cmpw	$34, %ax	#, D.15865
	jne	.L200	#,
.LBB21:
	.loc 1 1235 0
	movq	-72(%rbp), %rax	# insn, tmp108
	movq	64(%rax), %rax	# insn_6(D)->fld[7].rtx, tmp109
	movq	%rax, -32(%rbp)	# tmp109, note
	jmp	.L201	#
.L203:
	.loc 1 1238 0
	movq	-32(%rbp), %rax	# note, tmp110
	movq	8(%rax), %rax	# note_4->fld[0].rtx, D.15868
	movzwl	(%rax), %eax	# _22->code, D.15865
	cmpw	$48, %ax	#, D.15865
	jne	.L202	#,
	.loc 1 1239 0
	movq	-32(%rbp), %rax	# note, tmp111
	movq	8(%rax), %rax	# note_4->fld[0].rtx, D.15868
	leaq	8(%rax), %rsi	#, D.15871
	movq	-72(%rbp), %rcx	# insn, tmp112
	movq	-64(%rbp), %rdx	# bb, tmp113
	movq	-56(%rbp), %rax	# df, tmp114
	movl	$0, %r9d	#,
	movq	%rcx, %r8	# tmp112,
	movq	%rdx, %rcx	# tmp113,
	movl	$1, %edx	#,
	movq	%rax, %rdi	# tmp114,
	call	df_uses_record	#
.L202:
	.loc 1 1236 0
	movq	-32(%rbp), %rax	# note, tmp115
	movq	16(%rax), %rax	# note_4->fld[1].rtx, tmp116
	movq	%rax, -32(%rbp)	# tmp116, note
.L201:
	.loc 1 1235 0 discriminator 1
	cmpq	$0, -32(%rbp)	#, note
	jne	.L203	#,
	.loc 1 1244 0
	movl	$7, %edi	#,
	call	df_reg_use_gen	#
	movq	%rax, -16(%rbp)	# tmp117, x
	.loc 1 1245 0
	movq	-16(%rbp), %rax	# x, tmp118
	leaq	8(%rax), %rsi	#, D.15871
	movq	-72(%rbp), %rcx	# insn, tmp119
	movq	-64(%rbp), %rdx	# bb, tmp120
	movq	-56(%rbp), %rax	# df, tmp121
	movl	$0, %r9d	#,
	movq	%rcx, %r8	# tmp119,
	movq	%rdx, %rcx	# tmp120,
	movl	$1, %edx	#,
	movq	%rax, %rdi	# tmp121,
	call	df_uses_record	#
	.loc 1 1247 0
	movq	-56(%rbp), %rax	# df, tmp122
	movl	(%rax), %eax	# df_11(D)->flags, D.15866
	andl	$1024, %eax	#, D.15866
	testl	%eax, %eax	# D.15866
	je	.L200	#,
	.loc 1 1251 0
	movl	$0, -44(%rbp)	#, i
	jmp	.L204	#
.L206:
	.loc 1 1252 0
	movl	-44(%rbp), %eax	# i, tmp124
	cltq
	movzbl	global_regs(%rax), %eax	# global_regs, D.15867
	testb	%al, %al	# D.15867
	je	.L205	#,
	.loc 1 1254 0
	movl	-44(%rbp), %eax	# i, i.43
	movl	%eax, %edi	# i.43,
	call	df_reg_use_gen	#
	movq	%rax, -16(%rbp)	# tmp125, x
	.loc 1 1255 0
	movq	-16(%rbp), %rax	# x, tmp126
	leaq	8(%rax), %rsi	#, D.15871
	movq	-72(%rbp), %rcx	# insn, tmp127
	movq	-64(%rbp), %rdx	# bb, tmp128
	movq	-56(%rbp), %rax	# df, tmp129
	movl	$0, %r9d	#,
	movq	%rcx, %r8	# tmp127,
	movq	%rdx, %rcx	# tmp128,
	movl	$1, %edx	#,
	movq	%rax, %rdi	# tmp129,
	call	df_uses_record	#
.L205:
	.loc 1 1251 0
	addl	$1, -44(%rbp)	#, i
.L204:
	.loc 1 1251 0 is_stmt 0 discriminator 1
	cmpl	$52, -44(%rbp)	#, i
	jle	.L206	#,
.L200:
.LBE21:
	.loc 1 1262 0 is_stmt 1
	movq	-72(%rbp), %rax	# insn, tmp130
	leaq	32(%rax), %rsi	#, D.15871
	movq	-72(%rbp), %rcx	# insn, tmp131
	movq	-64(%rbp), %rdx	# bb, tmp132
	movq	-56(%rbp), %rax	# df, tmp133
	movl	$0, %r9d	#,
	movq	%rcx, %r8	# tmp131,
	movq	%rdx, %rcx	# tmp132,
	movl	$1, %edx	#,
	movq	%rax, %rdi	# tmp133,
	call	df_uses_record	#
	.loc 1 1266 0
	movq	-72(%rbp), %rax	# insn, tmp134
	movzwl	(%rax), %eax	# insn_6(D)->code, D.15865
	cmpw	$34, %ax	#, D.15865
	jne	.L193	#,
.LBB22:
	.loc 1 1270 0
	movq	-56(%rbp), %rax	# df, tmp135
	movl	(%rax), %eax	# df_11(D)->flags, D.15866
	andl	$1024, %eax	#, D.15866
	testl	%eax, %eax	# D.15866
	je	.L207	#,
	.loc 1 1273 0
	movl	$0, -44(%rbp)	#, i
	jmp	.L208	#
.L210:
	.loc 1 1274 0
	movq	regs_invalidated_by_call(%rip), %rdx	# regs_invalidated_by_call, regs_invalidated_by_call.44
	movl	-44(%rbp), %eax	# i, tmp136
	movl	%eax, %ecx	# tmp136, tmp152
	shrq	%cl, %rdx	# tmp152, D.15872
	movq	%rdx, %rax	# D.15872, D.15872
	andl	$1, %eax	#, D.15872
	testq	%rax, %rax	# D.15872
	je	.L209	#,
.LBB23:
	.loc 1 1276 0
	movl	-44(%rbp), %eax	# i, i.45
	movl	%eax, %edi	# i.45,
	call	df_reg_clobber_gen	#
	movq	%rax, -8(%rbp)	# tmp137, reg_clob
	.loc 1 1277 0
	movq	-72(%rbp), %rcx	# insn, tmp138
	movq	-64(%rbp), %rdx	# bb, tmp139
	movq	-8(%rbp), %rsi	# reg_clob, tmp140
	movq	-56(%rbp), %rax	# df, tmp141
	movq	%rax, %rdi	# tmp141,
	call	df_defs_record	#
.L209:
.LBE23:
	.loc 1 1273 0
	addl	$1, -44(%rbp)	#, i
.L208:
	.loc 1 1273 0 is_stmt 0 discriminator 1
	cmpl	$52, -44(%rbp)	#, i
	jle	.L210	#,
.L207:
	.loc 1 1282 0 is_stmt 1
	movq	-72(%rbp), %rax	# insn, tmp142
	movq	64(%rax), %rax	# insn_6(D)->fld[7].rtx, tmp143
	movq	%rax, -24(%rbp)	# tmp143, note
	jmp	.L211	#
.L213:
	.loc 1 1285 0
	movq	-24(%rbp), %rax	# note, tmp144
	movq	8(%rax), %rax	# note_5->fld[0].rtx, D.15868
	movzwl	(%rax), %eax	# _49->code, D.15865
	cmpw	$49, %ax	#, D.15865
	jne	.L212	#,
	.loc 1 1286 0
	movq	-24(%rbp), %rax	# note, tmp145
	movq	8(%rax), %rsi	# note_5->fld[0].rtx, D.15868
	movq	-72(%rbp), %rcx	# insn, tmp146
	movq	-64(%rbp), %rdx	# bb, tmp147
	movq	-56(%rbp), %rax	# df, tmp148
	movq	%rax, %rdi	# tmp148,
	call	df_defs_record	#
.L212:
	.loc 1 1284 0
	movq	-24(%rbp), %rax	# note, tmp149
	movq	16(%rax), %rax	# note_5->fld[1].rtx, tmp150
	movq	%rax, -24(%rbp)	# tmp150, note
.L211:
	.loc 1 1282 0 discriminator 1
	cmpq	$0, -24(%rbp)	#, note
	jne	.L213	#,
.L193:
.LBE22:
.LBE20:
	.loc 1 1289 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	df_insn_refs_record, .-df_insn_refs_record
	.type	df_bb_refs_record, @function
df_bb_refs_record:
.LFB23:
	.loc 1 1297 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# df, df
	movq	%rsi, -32(%rbp)	# bb, bb
	.loc 1 1301 0
	movq	-32(%rbp), %rax	# bb, tmp63
	movq	(%rax), %rax	# bb_2(D)->head, tmp64
	movq	%rax, -8(%rbp)	# tmp64, insn
.L220:
	.loc 1 1303 0
	movq	-8(%rbp), %rax	# insn, tmp65
	movzwl	(%rax), %eax	# insn_1->code, D.15873
	movzwl	%ax, %eax	# D.15873, D.15874
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.15875
	cmpb	$105, %al	#, D.15875
	jne	.L217	#,
	.loc 1 1306 0
	movq	-8(%rbp), %rdx	# insn, tmp67
	movq	-32(%rbp), %rcx	# bb, tmp68
	movq	-24(%rbp), %rax	# df, tmp69
	movq	%rcx, %rsi	# tmp68,
	movq	%rax, %rdi	# tmp69,
	call	df_insn_refs_record	#
.L217:
	.loc 1 1308 0
	movq	-32(%rbp), %rax	# bb, tmp70
	movq	8(%rax), %rax	# bb_2(D)->end, D.15876
	cmpq	-8(%rbp), %rax	# insn, D.15876
	jne	.L218	#,
	.loc 1 1309 0
	jmp	.L221	#
.L218:
	.loc 1 1301 0
	movq	-8(%rbp), %rax	# insn, tmp71
	movq	24(%rax), %rax	# insn_1->fld[2].rtx, tmp72
	movq	%rax, -8(%rbp)	# tmp72, insn
	.loc 1 1310 0
	jmp	.L220	#
.L221:
	.loc 1 1311 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE23:
	.size	df_bb_refs_record, .-df_bb_refs_record
	.type	df_refs_record, @function
df_refs_record:
.LFB24:
	.loc 1 1319 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -56(%rbp)	# df, df
	movq	%rsi, -64(%rbp)	# blocks, blocks
.LBB24:
.LBB25:
	.loc 1 1322 0
	movq	-64(%rbp), %rax	# blocks, tmp69
	movq	(%rax), %rax	# blocks_12(D)->first, tmp70
	movq	%rax, -32(%rbp)	# tmp70, ptr_
	movl	$0, -40(%rbp)	#, indx_
	movl	$0, -48(%rbp)	#, bit_num_
	movl	$0, -44(%rbp)	#, word_num_
	jmp	.L223	#
.L225:
	.loc 1 1322 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# ptr_, tmp71
	movq	(%rax), %rax	# ptr__1->next, tmp72
	movq	%rax, -32(%rbp)	# tmp72, ptr_
.L223:
	cmpq	$0, -32(%rbp)	#, ptr_
	je	.L224	#,
	.loc 1 1322 0 discriminator 2
	movq	-32(%rbp), %rax	# ptr_, tmp73
	movl	16(%rax), %eax	# ptr__1->indx, D.15877
	cmpl	-40(%rbp), %eax	# indx_, D.15877
	jb	.L225	#,
.L224:
	.loc 1 1322 0 discriminator 3
	cmpq	$0, -32(%rbp)	#, ptr_
	je	.L226	#,
	.loc 1 1322 0 discriminator 1
	movq	-32(%rbp), %rax	# ptr_, tmp74
	movl	16(%rax), %eax	# ptr__1->indx, D.15877
	cmpl	-40(%rbp), %eax	# indx_, D.15877
	je	.L226	#,
	movl	$0, -48(%rbp)	#, bit_num_
	movl	$0, -44(%rbp)	#, word_num_
	jmp	.L227	#
.L226:
	.loc 1 1322 0 discriminator 2
	jmp	.L227	#
.L234:
	.loc 1 1322 0
	jmp	.L228	#
.L233:
.LBB26:
	.loc 1 1322 0 discriminator 2
	movq	-32(%rbp), %rax	# ptr_, tmp75
	movl	-44(%rbp), %edx	# word_num_, tmp76
	addq	$2, %rdx	#, tmp77
	movq	8(%rax,%rdx,8), %rax	# ptr__2->bits, tmp78
	movq	%rax, -24(%rbp)	# tmp78, word_
	cmpq	$0, -24(%rbp)	#, word_
	je	.L229	#,
	.loc 1 1322 0 discriminator 1
	jmp	.L230	#
.L232:
.LBB27:
	.loc 1 1322 0 discriminator 2
	movl	-48(%rbp), %eax	# bit_num_, bit_num_.46
	movl	$1, %edx	#, tmp79
	movl	%eax, %ecx	# bit_num_.46, tmp98
	salq	%cl, %rdx	# tmp98, tmp80
	movq	%rdx, %rax	# tmp80, tmp80
	movq	%rax, -16(%rbp)	# tmp80, mask_
	movq	-16(%rbp), %rax	# mask_, tmp81
	movq	-24(%rbp), %rdx	# word_, tmp82
	andq	%rdx, %rax	# tmp82, D.15878
	testq	%rax, %rax	# D.15878
	je	.L231	#,
	.loc 1 1322 0 discriminator 1
	movq	-16(%rbp), %rax	# mask_, tmp83
	notq	%rax	# D.15878
	andq	%rax, -24(%rbp)	# D.15878, word_
	movq	-32(%rbp), %rax	# ptr_, tmp84
	movl	16(%rax), %eax	# ptr__2->indx, D.15877
	leal	(%rax,%rax), %edx	#, D.15877
	movl	-44(%rbp), %eax	# word_num_, tmp85
	addl	%edx, %eax	# D.15877, D.15877
	sall	$6, %eax	#, D.15877
	movl	%eax, %edx	# D.15877, D.15877
	movl	-48(%rbp), %eax	# bit_num_, tmp89
	addl	%edx, %eax	# D.15877, tmp88
	movl	%eax, -36(%rbp)	# tmp88, node_
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.47
	movl	-36(%rbp), %edx	# node_, tmp90
	addq	$4, %rdx	#, tmp91
	movq	(%rax,%rdx,8), %rax	# basic_block_info.47_33->data.bb, tmp92
	movq	%rax, -8(%rbp)	# tmp92, bb
	movq	-8(%rbp), %rdx	# bb, tmp93
	movq	-56(%rbp), %rax	# df, tmp94
	movq	%rdx, %rsi	# tmp93,
	movq	%rax, %rdi	# tmp94,
	call	df_bb_refs_record	#
	cmpq	$0, -24(%rbp)	#, word_
	jne	.L231	#,
	jmp	.L229	#
.L231:
.LBE27:
	.loc 1 1322 0 discriminator 2
	addl	$1, -48(%rbp)	#, bit_num_
.L230:
	.loc 1 1322 0 discriminator 1
	cmpl	$63, -48(%rbp)	#, bit_num_
	jbe	.L232	#,
.L229:
	.loc 1 1322 0 discriminator 2
	movl	$0, -48(%rbp)	#, bit_num_
.LBE26:
	addl	$1, -44(%rbp)	#, word_num_
.L228:
	.loc 1 1322 0 discriminator 1
	cmpl	$1, -44(%rbp)	#, word_num_
	jbe	.L233	#,
	.loc 1 1322 0 discriminator 3
	movl	$0, -44(%rbp)	#, word_num_
	movq	-32(%rbp), %rax	# ptr_, tmp95
	movq	(%rax), %rax	# ptr__2->next, tmp96
	movq	%rax, -32(%rbp)	# tmp96, ptr_
.L227:
	.loc 1 1322 0 discriminator 1
	cmpq	$0, -32(%rbp)	#, ptr_
	jne	.L234	#,
.LBE25:
.LBE24:
	.loc 1 1326 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE24:
	.size	df_refs_record, .-df_refs_record
	.type	df_bb_reg_def_chain_create, @function
df_bb_reg_def_chain_create:
.LFB25:
	.loc 1 1337 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$56, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)	# df, df
	movq	%rsi, -64(%rbp)	# bb, bb
	.loc 1 1345 0
	movq	-64(%rbp), %rax	# bb, tmp83
	movq	8(%rax), %rax	# bb_4(D)->end, tmp84
	movq	%rax, -40(%rbp)	# tmp84, insn
	jmp	.L236	#
.L244:
.LBB28:
	.loc 1 1349 0
	movq	-40(%rbp), %rax	# insn, tmp85
	movl	8(%rax), %eax	# insn_1->fld[0].rtint, D.15880
	movl	%eax, -48(%rbp)	# D.15880, uid
	.loc 1 1351 0
	movq	-40(%rbp), %rax	# insn, tmp86
	movzwl	(%rax), %eax	# insn_1->code, D.15881
	movzwl	%ax, %eax	# D.15881, D.15880
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.15882
	cmpb	$105, %al	#, D.15882
	je	.L237	#,
	.loc 1 1352 0
	jmp	.L238	#
.L237:
	.loc 1 1354 0
	movq	-56(%rbp), %rax	# df, tmp88
	movq	56(%rax), %rcx	# df_13(D)->insns, D.15883
	movl	-48(%rbp), %edx	# uid, D.15884
	movq	%rdx, %rax	# D.15884, tmp89
	addq	%rax, %rax	# tmp89
	addq	%rdx, %rax	# D.15884, tmp89
	salq	$3, %rax	#, tmp90
	addq	%rcx, %rax	# D.15883, D.15883
	movq	(%rax), %rax	# _17->defs, tmp91
	movq	%rax, -32(%rbp)	# tmp91, link
	jmp	.L239	#
.L242:
.LBB29:
	.loc 1 1356 0
	movq	-32(%rbp), %rax	# link, tmp92
	movq	8(%rax), %rax	# link_2->ref, tmp93
	movq	%rax, -24(%rbp)	# tmp93, def
	.loc 1 1357 0
	movq	-24(%rbp), %rax	# def, tmp94
	movq	(%rax), %rax	# def_19->reg, D.15879
	movzwl	(%rax), %eax	# _20->code, D.15881
	cmpw	$63, %ax	#, D.15881
	jne	.L240	#,
	.loc 1 1357 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# def, tmp95
	movq	(%rax), %rax	# def_19->reg, D.15879
	movq	8(%rax), %rax	# _22->fld[0].rtx, iftmp.48
	jmp	.L241	#
.L240:
	.loc 1 1357 0 discriminator 2
	movq	-24(%rbp), %rax	# def, tmp96
	movq	(%rax), %rax	# def_19->reg, iftmp.48
.L241:
	.loc 1 1357 0 discriminator 3
	movl	8(%rax), %eax	# iftmp.48_3->fld[0].rtuint, tmp97
	movl	%eax, -44(%rbp)	# tmp97, dregno
	.loc 1 1359 0 is_stmt 1 discriminator 3
	movq	-56(%rbp), %rax	# df, tmp98
	movq	40(%rax), %rax	# df_13(D)->regs, D.15885
	movl	-44(%rbp), %edx	# dregno, D.15884
	salq	$5, %rdx	#, D.15884
	leaq	(%rax,%rdx), %rbx	#, D.15885
	.loc 1 1360 0 discriminator 3
	movq	-56(%rbp), %rax	# df, tmp99
	movq	40(%rax), %rax	# df_13(D)->regs, D.15885
	movl	-44(%rbp), %edx	# dregno, D.15884
	salq	$5, %rdx	#, D.15884
	addq	%rdx, %rax	# D.15884, D.15885
	movq	(%rax), %rdx	# _33->defs, D.15886
	movq	-24(%rbp), %rax	# def, tmp100
	movq	%rdx, %rsi	# D.15886,
	movq	%rax, %rdi	# tmp100,
	call	df_link_create	#
	movq	%rax, (%rbx)	# D.15886, _29->defs
.LBE29:
	.loc 1 1354 0 discriminator 3
	movq	-32(%rbp), %rax	# link, tmp101
	movq	(%rax), %rax	# link_2->next, tmp102
	movq	%rax, -32(%rbp)	# tmp102, link
.L239:
	.loc 1 1354 0 is_stmt 0 discriminator 1
	cmpq	$0, -32(%rbp)	#, link
	jne	.L242	#,
.L238:
.LBE28:
	.loc 1 1346 0 is_stmt 1
	movq	-40(%rbp), %rax	# insn, tmp103
	movq	16(%rax), %rax	# insn_1->fld[1].rtx, tmp104
	movq	%rax, -40(%rbp)	# tmp104, insn
.L236:
	.loc 1 1345 0 discriminator 1
	cmpq	$0, -40(%rbp)	#, insn
	je	.L235	#,
	.loc 1 1345 0 is_stmt 0 discriminator 2
	movq	-64(%rbp), %rax	# bb, tmp105
	movq	(%rax), %rax	# bb_4(D)->head, D.15879
	movq	16(%rax), %rax	# _6->fld[1].rtx, D.15879
	cmpq	-40(%rbp), %rax	# insn, D.15879
	jne	.L244	#,
.L235:
	.loc 1 1363 0 is_stmt 1
	addq	$56, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE25:
	.size	df_bb_reg_def_chain_create, .-df_bb_reg_def_chain_create
	.type	df_reg_def_chain_create, @function
df_reg_def_chain_create:
.LFB26:
	.loc 1 1372 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -56(%rbp)	# df, df
	movq	%rsi, -64(%rbp)	# blocks, blocks
.LBB30:
.LBB31:
	.loc 1 1375 0
	movq	-64(%rbp), %rax	# blocks, tmp69
	movq	(%rax), %rax	# blocks_12(D)->first, tmp70
	movq	%rax, -32(%rbp)	# tmp70, ptr_
	movl	$0, -40(%rbp)	#, indx_
	movl	$0, -48(%rbp)	#, bit_num_
	movl	$0, -44(%rbp)	#, word_num_
	jmp	.L246	#
.L248:
	.loc 1 1375 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# ptr_, tmp71
	movq	(%rax), %rax	# ptr__1->next, tmp72
	movq	%rax, -32(%rbp)	# tmp72, ptr_
.L246:
	cmpq	$0, -32(%rbp)	#, ptr_
	je	.L247	#,
	.loc 1 1375 0 discriminator 2
	movq	-32(%rbp), %rax	# ptr_, tmp73
	movl	16(%rax), %eax	# ptr__1->indx, D.15887
	cmpl	-40(%rbp), %eax	# indx_, D.15887
	jb	.L248	#,
.L247:
	.loc 1 1375 0 discriminator 3
	cmpq	$0, -32(%rbp)	#, ptr_
	je	.L249	#,
	.loc 1 1375 0 discriminator 1
	movq	-32(%rbp), %rax	# ptr_, tmp74
	movl	16(%rax), %eax	# ptr__1->indx, D.15887
	cmpl	-40(%rbp), %eax	# indx_, D.15887
	je	.L249	#,
	movl	$0, -48(%rbp)	#, bit_num_
	movl	$0, -44(%rbp)	#, word_num_
	jmp	.L250	#
.L249:
	.loc 1 1375 0 discriminator 2
	jmp	.L250	#
.L257:
	.loc 1 1375 0
	jmp	.L251	#
.L256:
.LBB32:
	.loc 1 1375 0 discriminator 2
	movq	-32(%rbp), %rax	# ptr_, tmp75
	movl	-44(%rbp), %edx	# word_num_, tmp76
	addq	$2, %rdx	#, tmp77
	movq	8(%rax,%rdx,8), %rax	# ptr__2->bits, tmp78
	movq	%rax, -24(%rbp)	# tmp78, word_
	cmpq	$0, -24(%rbp)	#, word_
	je	.L252	#,
	.loc 1 1375 0 discriminator 1
	jmp	.L253	#
.L255:
.LBB33:
	.loc 1 1375 0 discriminator 2
	movl	-48(%rbp), %eax	# bit_num_, bit_num_.50
	movl	$1, %edx	#, tmp79
	movl	%eax, %ecx	# bit_num_.50, tmp98
	salq	%cl, %rdx	# tmp98, tmp80
	movq	%rdx, %rax	# tmp80, tmp80
	movq	%rax, -16(%rbp)	# tmp80, mask_
	movq	-16(%rbp), %rax	# mask_, tmp81
	movq	-24(%rbp), %rdx	# word_, tmp82
	andq	%rdx, %rax	# tmp82, D.15888
	testq	%rax, %rax	# D.15888
	je	.L254	#,
	.loc 1 1375 0 discriminator 1
	movq	-16(%rbp), %rax	# mask_, tmp83
	notq	%rax	# D.15888
	andq	%rax, -24(%rbp)	# D.15888, word_
	movq	-32(%rbp), %rax	# ptr_, tmp84
	movl	16(%rax), %eax	# ptr__2->indx, D.15887
	leal	(%rax,%rax), %edx	#, D.15887
	movl	-44(%rbp), %eax	# word_num_, tmp85
	addl	%edx, %eax	# D.15887, D.15887
	sall	$6, %eax	#, D.15887
	movl	%eax, %edx	# D.15887, D.15887
	movl	-48(%rbp), %eax	# bit_num_, tmp89
	addl	%edx, %eax	# D.15887, tmp88
	movl	%eax, -36(%rbp)	# tmp88, node_
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.51
	movl	-36(%rbp), %edx	# node_, tmp90
	addq	$4, %rdx	#, tmp91
	movq	(%rax,%rdx,8), %rax	# basic_block_info.51_33->data.bb, tmp92
	movq	%rax, -8(%rbp)	# tmp92, bb
	movq	-8(%rbp), %rdx	# bb, tmp93
	movq	-56(%rbp), %rax	# df, tmp94
	movq	%rdx, %rsi	# tmp93,
	movq	%rax, %rdi	# tmp94,
	call	df_bb_reg_def_chain_create	#
	cmpq	$0, -24(%rbp)	#, word_
	jne	.L254	#,
	jmp	.L252	#
.L254:
.LBE33:
	.loc 1 1375 0 discriminator 2
	addl	$1, -48(%rbp)	#, bit_num_
.L253:
	.loc 1 1375 0 discriminator 1
	cmpl	$63, -48(%rbp)	#, bit_num_
	jbe	.L255	#,
.L252:
	.loc 1 1375 0 discriminator 2
	movl	$0, -48(%rbp)	#, bit_num_
.LBE32:
	addl	$1, -44(%rbp)	#, word_num_
.L251:
	.loc 1 1375 0 discriminator 1
	cmpl	$1, -44(%rbp)	#, word_num_
	jbe	.L256	#,
	.loc 1 1375 0 discriminator 3
	movl	$0, -44(%rbp)	#, word_num_
	movq	-32(%rbp), %rax	# ptr_, tmp95
	movq	(%rax), %rax	# ptr__2->next, tmp96
	movq	%rax, -32(%rbp)	# tmp96, ptr_
.L250:
	.loc 1 1375 0 discriminator 1
	cmpq	$0, -32(%rbp)	#, ptr_
	jne	.L257	#,
.LBE31:
.LBE30:
	.loc 1 1379 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE26:
	.size	df_reg_def_chain_create, .-df_reg_def_chain_create
	.type	df_bb_reg_use_chain_create, @function
df_bb_reg_use_chain_create:
.LFB27:
	.loc 1 1388 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$56, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)	# df, df
	movq	%rsi, -64(%rbp)	# bb, bb
	.loc 1 1394 0
	movq	-64(%rbp), %rax	# bb, tmp83
	movq	(%rax), %rax	# bb_4(D)->head, tmp84
	movq	%rax, -40(%rbp)	# tmp84, insn
	jmp	.L259	#
.L267:
.LBB34:
	.loc 1 1398 0
	movq	-40(%rbp), %rax	# insn, tmp85
	movl	8(%rax), %eax	# insn_1->fld[0].rtint, D.15890
	movl	%eax, -48(%rbp)	# D.15890, uid
	.loc 1 1400 0
	movq	-40(%rbp), %rax	# insn, tmp86
	movzwl	(%rax), %eax	# insn_1->code, D.15891
	movzwl	%ax, %eax	# D.15891, D.15890
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.15892
	cmpb	$105, %al	#, D.15892
	je	.L260	#,
	.loc 1 1401 0
	jmp	.L261	#
.L260:
	.loc 1 1403 0
	movq	-56(%rbp), %rax	# df, tmp88
	movq	56(%rax), %rcx	# df_13(D)->insns, D.15893
	movl	-48(%rbp), %edx	# uid, D.15894
	movq	%rdx, %rax	# D.15894, tmp89
	addq	%rax, %rax	# tmp89
	addq	%rdx, %rax	# D.15894, tmp89
	salq	$3, %rax	#, tmp90
	addq	%rcx, %rax	# D.15893, D.15893
	movq	8(%rax), %rax	# _17->uses, tmp91
	movq	%rax, -32(%rbp)	# tmp91, link
	jmp	.L262	#
.L265:
.LBB35:
	.loc 1 1405 0
	movq	-32(%rbp), %rax	# link, tmp92
	movq	8(%rax), %rax	# link_2->ref, tmp93
	movq	%rax, -24(%rbp)	# tmp93, use
	.loc 1 1406 0
	movq	-24(%rbp), %rax	# use, tmp94
	movq	(%rax), %rax	# use_19->reg, D.15889
	movzwl	(%rax), %eax	# _20->code, D.15891
	cmpw	$63, %ax	#, D.15891
	jne	.L263	#,
	.loc 1 1406 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# use, tmp95
	movq	(%rax), %rax	# use_19->reg, D.15889
	movq	8(%rax), %rax	# _22->fld[0].rtx, iftmp.52
	jmp	.L264	#
.L263:
	.loc 1 1406 0 discriminator 2
	movq	-24(%rbp), %rax	# use, tmp96
	movq	(%rax), %rax	# use_19->reg, iftmp.52
.L264:
	.loc 1 1406 0 discriminator 3
	movl	8(%rax), %eax	# iftmp.52_3->fld[0].rtuint, tmp97
	movl	%eax, -44(%rbp)	# tmp97, uregno
	.loc 1 1408 0 is_stmt 1 discriminator 3
	movq	-56(%rbp), %rax	# df, tmp98
	movq	40(%rax), %rax	# df_13(D)->regs, D.15895
	movl	-44(%rbp), %edx	# uregno, D.15894
	salq	$5, %rdx	#, D.15894
	leaq	(%rax,%rdx), %rbx	#, D.15895
	.loc 1 1409 0 discriminator 3
	movq	-56(%rbp), %rax	# df, tmp99
	movq	40(%rax), %rax	# df_13(D)->regs, D.15895
	movl	-44(%rbp), %edx	# uregno, D.15894
	salq	$5, %rdx	#, D.15894
	addq	%rdx, %rax	# D.15894, D.15895
	movq	8(%rax), %rdx	# _33->uses, D.15896
	movq	-24(%rbp), %rax	# use, tmp100
	movq	%rdx, %rsi	# D.15896,
	movq	%rax, %rdi	# tmp100,
	call	df_link_create	#
	movq	%rax, 8(%rbx)	# D.15896, _29->uses
.LBE35:
	.loc 1 1403 0 discriminator 3
	movq	-32(%rbp), %rax	# link, tmp101
	movq	(%rax), %rax	# link_2->next, tmp102
	movq	%rax, -32(%rbp)	# tmp102, link
.L262:
	.loc 1 1403 0 is_stmt 0 discriminator 1
	cmpq	$0, -32(%rbp)	#, link
	jne	.L265	#,
.L261:
.LBE34:
	.loc 1 1395 0 is_stmt 1
	movq	-40(%rbp), %rax	# insn, tmp103
	movq	24(%rax), %rax	# insn_1->fld[2].rtx, tmp104
	movq	%rax, -40(%rbp)	# tmp104, insn
.L259:
	.loc 1 1394 0 discriminator 1
	cmpq	$0, -40(%rbp)	#, insn
	je	.L258	#,
	.loc 1 1394 0 is_stmt 0 discriminator 2
	movq	-64(%rbp), %rax	# bb, tmp105
	movq	8(%rax), %rax	# bb_4(D)->end, D.15889
	movq	24(%rax), %rax	# _6->fld[2].rtx, D.15889
	cmpq	-40(%rbp), %rax	# insn, D.15889
	jne	.L267	#,
.L258:
	.loc 1 1412 0 is_stmt 1
	addq	$56, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE27:
	.size	df_bb_reg_use_chain_create, .-df_bb_reg_use_chain_create
	.type	df_reg_use_chain_create, @function
df_reg_use_chain_create:
.LFB28:
	.loc 1 1421 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -56(%rbp)	# df, df
	movq	%rsi, -64(%rbp)	# blocks, blocks
.LBB36:
.LBB37:
	.loc 1 1424 0
	movq	-64(%rbp), %rax	# blocks, tmp69
	movq	(%rax), %rax	# blocks_12(D)->first, tmp70
	movq	%rax, -32(%rbp)	# tmp70, ptr_
	movl	$0, -40(%rbp)	#, indx_
	movl	$0, -48(%rbp)	#, bit_num_
	movl	$0, -44(%rbp)	#, word_num_
	jmp	.L269	#
.L271:
	.loc 1 1424 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# ptr_, tmp71
	movq	(%rax), %rax	# ptr__1->next, tmp72
	movq	%rax, -32(%rbp)	# tmp72, ptr_
.L269:
	cmpq	$0, -32(%rbp)	#, ptr_
	je	.L270	#,
	.loc 1 1424 0 discriminator 2
	movq	-32(%rbp), %rax	# ptr_, tmp73
	movl	16(%rax), %eax	# ptr__1->indx, D.15897
	cmpl	-40(%rbp), %eax	# indx_, D.15897
	jb	.L271	#,
.L270:
	.loc 1 1424 0 discriminator 3
	cmpq	$0, -32(%rbp)	#, ptr_
	je	.L272	#,
	.loc 1 1424 0 discriminator 1
	movq	-32(%rbp), %rax	# ptr_, tmp74
	movl	16(%rax), %eax	# ptr__1->indx, D.15897
	cmpl	-40(%rbp), %eax	# indx_, D.15897
	je	.L272	#,
	movl	$0, -48(%rbp)	#, bit_num_
	movl	$0, -44(%rbp)	#, word_num_
	jmp	.L273	#
.L272:
	.loc 1 1424 0 discriminator 2
	jmp	.L273	#
.L280:
	.loc 1 1424 0
	jmp	.L274	#
.L279:
.LBB38:
	.loc 1 1424 0 discriminator 2
	movq	-32(%rbp), %rax	# ptr_, tmp75
	movl	-44(%rbp), %edx	# word_num_, tmp76
	addq	$2, %rdx	#, tmp77
	movq	8(%rax,%rdx,8), %rax	# ptr__2->bits, tmp78
	movq	%rax, -24(%rbp)	# tmp78, word_
	cmpq	$0, -24(%rbp)	#, word_
	je	.L275	#,
	.loc 1 1424 0 discriminator 1
	jmp	.L276	#
.L278:
.LBB39:
	.loc 1 1424 0 discriminator 2
	movl	-48(%rbp), %eax	# bit_num_, bit_num_.53
	movl	$1, %edx	#, tmp79
	movl	%eax, %ecx	# bit_num_.53, tmp98
	salq	%cl, %rdx	# tmp98, tmp80
	movq	%rdx, %rax	# tmp80, tmp80
	movq	%rax, -16(%rbp)	# tmp80, mask_
	movq	-16(%rbp), %rax	# mask_, tmp81
	movq	-24(%rbp), %rdx	# word_, tmp82
	andq	%rdx, %rax	# tmp82, D.15898
	testq	%rax, %rax	# D.15898
	je	.L277	#,
	.loc 1 1424 0 discriminator 1
	movq	-16(%rbp), %rax	# mask_, tmp83
	notq	%rax	# D.15898
	andq	%rax, -24(%rbp)	# D.15898, word_
	movq	-32(%rbp), %rax	# ptr_, tmp84
	movl	16(%rax), %eax	# ptr__2->indx, D.15897
	leal	(%rax,%rax), %edx	#, D.15897
	movl	-44(%rbp), %eax	# word_num_, tmp85
	addl	%edx, %eax	# D.15897, D.15897
	sall	$6, %eax	#, D.15897
	movl	%eax, %edx	# D.15897, D.15897
	movl	-48(%rbp), %eax	# bit_num_, tmp89
	addl	%edx, %eax	# D.15897, tmp88
	movl	%eax, -36(%rbp)	# tmp88, node_
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.54
	movl	-36(%rbp), %edx	# node_, tmp90
	addq	$4, %rdx	#, tmp91
	movq	(%rax,%rdx,8), %rax	# basic_block_info.54_33->data.bb, tmp92
	movq	%rax, -8(%rbp)	# tmp92, bb
	movq	-8(%rbp), %rdx	# bb, tmp93
	movq	-56(%rbp), %rax	# df, tmp94
	movq	%rdx, %rsi	# tmp93,
	movq	%rax, %rdi	# tmp94,
	call	df_bb_reg_use_chain_create	#
	cmpq	$0, -24(%rbp)	#, word_
	jne	.L277	#,
	jmp	.L275	#
.L277:
.LBE39:
	.loc 1 1424 0 discriminator 2
	addl	$1, -48(%rbp)	#, bit_num_
.L276:
	.loc 1 1424 0 discriminator 1
	cmpl	$63, -48(%rbp)	#, bit_num_
	jbe	.L278	#,
.L275:
	.loc 1 1424 0 discriminator 2
	movl	$0, -48(%rbp)	#, bit_num_
.LBE38:
	addl	$1, -44(%rbp)	#, word_num_
.L274:
	.loc 1 1424 0 discriminator 1
	cmpl	$1, -44(%rbp)	#, word_num_
	jbe	.L279	#,
	.loc 1 1424 0 discriminator 3
	movl	$0, -44(%rbp)	#, word_num_
	movq	-32(%rbp), %rax	# ptr_, tmp95
	movq	(%rax), %rax	# ptr__2->next, tmp96
	movq	%rax, -32(%rbp)	# tmp96, ptr_
.L273:
	.loc 1 1424 0 discriminator 1
	cmpq	$0, -32(%rbp)	#, ptr_
	jne	.L280	#,
.LBE37:
.LBE36:
	.loc 1 1428 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE28:
	.size	df_reg_use_chain_create, .-df_reg_use_chain_create
	.type	df_bb_du_chain_create, @function
df_bb_du_chain_create:
.LFB29:
	.loc 1 1437 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$96, %rsp	#,
	movq	%rdi, -72(%rbp)	# df, df
	movq	%rsi, -80(%rbp)	# bb, bb
	movq	%rdx, -88(%rbp)	# ru, ru
	.loc 1 1438 0
	movq	-72(%rbp), %rax	# df, tmp92
	movq	8(%rax), %rdx	# df_6(D)->bbs, D.15899
	movq	-80(%rbp), %rax	# bb, tmp93
	movl	88(%rax), %eax	# bb_8(D)->index, D.15900
	cltq
	salq	$4, %rax	#, tmp95
	leaq	0(,%rax,8), %rcx	#, tmp96
	subq	%rax, %rcx	# tmp94, D.15901
	movq	%rcx, %rax	# D.15901, D.15901
	addq	%rdx, %rax	# D.15899, tmp97
	movq	%rax, -32(%rbp)	# tmp97, bb_info
	.loc 1 1441 0
	movq	-32(%rbp), %rax	# bb_info, tmp98
	movq	56(%rax), %rdx	# bb_info_12->ru_out, D.15902
	movq	-88(%rbp), %rax	# ru, tmp99
	movq	%rdx, %rsi	# D.15902,
	movq	%rax, %rdi	# tmp99,
	call	bitmap_copy	#
	.loc 1 1445 0
	movq	-80(%rbp), %rax	# bb, tmp100
	movq	8(%rax), %rax	# bb_8(D)->end, tmp101
	movq	%rax, -56(%rbp)	# tmp101, insn
	jmp	.L282	#
.L295:
.LBB40:
	.loc 1 1450 0
	movq	-56(%rbp), %rax	# insn, tmp102
	movl	8(%rax), %eax	# insn_1->fld[0].rtint, D.15900
	movl	%eax, -64(%rbp)	# D.15900, uid
	.loc 1 1452 0
	movq	-56(%rbp), %rax	# insn, tmp103
	movzwl	(%rax), %eax	# insn_1->code, D.15904
	movzwl	%ax, %eax	# D.15904, D.15900
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.15905
	cmpb	$105, %al	#, D.15905
	je	.L283	#,
	.loc 1 1453 0
	jmp	.L284	#
.L283:
	.loc 1 1456 0
	movq	-72(%rbp), %rax	# df, tmp105
	movq	56(%rax), %rcx	# df_6(D)->insns, D.15906
	movl	-64(%rbp), %edx	# uid, D.15901
	movq	%rdx, %rax	# D.15901, tmp106
	addq	%rax, %rax	# tmp106
	addq	%rdx, %rax	# D.15901, tmp106
	salq	$3, %rax	#, tmp107
	addq	%rcx, %rax	# D.15906, D.15906
	movq	(%rax), %rax	# _26->defs, tmp108
	movq	%rax, -48(%rbp)	# tmp108, def_link
	jmp	.L285	#
.L291:
.LBB41:
	.loc 1 1458 0
	movq	-48(%rbp), %rax	# def_link, tmp109
	movq	8(%rax), %rax	# def_link_2->ref, tmp110
	movq	%rax, -24(%rbp)	# tmp110, def
	.loc 1 1459 0
	movq	-24(%rbp), %rax	# def, tmp111
	movq	(%rax), %rax	# def_28->reg, D.15903
	movzwl	(%rax), %eax	# _29->code, D.15904
	cmpw	$63, %ax	#, D.15904
	jne	.L286	#,
	.loc 1 1459 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# def, tmp112
	movq	(%rax), %rax	# def_28->reg, D.15903
	movq	8(%rax), %rax	# _31->fld[0].rtx, iftmp.55
	jmp	.L287	#
.L286:
	.loc 1 1459 0 discriminator 2
	movq	-24(%rbp), %rax	# def, tmp113
	movq	(%rax), %rax	# def_28->reg, iftmp.55
.L287:
	.loc 1 1459 0 discriminator 3
	movl	8(%rax), %eax	# iftmp.55_5->fld[0].rtuint, tmp114
	movl	%eax, -60(%rbp)	# tmp114, dregno
	.loc 1 1461 0 is_stmt 1 discriminator 3
	movq	-24(%rbp), %rax	# def, tmp115
	movq	$0, 24(%rax)	#, def_28->chain
	.loc 1 1466 0 discriminator 3
	movq	-72(%rbp), %rax	# df, tmp116
	movq	40(%rax), %rax	# df_6(D)->regs, D.15907
	movl	-60(%rbp), %edx	# dregno, D.15901
	salq	$5, %rdx	#, D.15901
	addq	%rdx, %rax	# D.15901, D.15907
	movq	8(%rax), %rax	# _38->uses, tmp117
	movq	%rax, -40(%rbp)	# tmp117, use_link
	jmp	.L288	#
.L290:
.LBB42:
	.loc 1 1469 0
	movq	-40(%rbp), %rax	# use_link, tmp118
	movq	8(%rax), %rax	# use_link_3->ref, tmp119
	movq	%rax, -16(%rbp)	# tmp119, use
	.loc 1 1471 0
	movq	-16(%rbp), %rax	# use, tmp120
	movl	36(%rax), %edx	# use_40->id, D.15900
	movq	-88(%rbp), %rax	# ru, tmp121
	movl	%edx, %esi	# D.15900,
	movq	%rax, %rdi	# tmp121,
	call	bitmap_bit_p	#
	testl	%eax, %eax	# D.15900
	je	.L289	#,
	.loc 1 1474 0
	movq	-24(%rbp), %rax	# def, tmp122
	movq	24(%rax), %rdx	# def_28->chain, D.15908
	movq	-16(%rbp), %rax	# use, tmp123
	movq	%rdx, %rsi	# D.15908,
	movq	%rax, %rdi	# tmp123,
	call	df_link_create	#
	movq	-24(%rbp), %rdx	# def, tmp124
	movq	%rax, 24(%rdx)	# D.15908, def_28->chain
	.loc 1 1476 0
	movq	-16(%rbp), %rax	# use, tmp125
	movl	36(%rax), %edx	# use_40->id, D.15900
	movq	-88(%rbp), %rax	# ru, tmp126
	movl	%edx, %esi	# D.15900,
	movq	%rax, %rdi	# tmp126,
	call	bitmap_clear_bit	#
.L289:
.LBE42:
	.loc 1 1467 0
	movq	-40(%rbp), %rax	# use_link, tmp127
	movq	(%rax), %rax	# use_link_3->next, tmp128
	movq	%rax, -40(%rbp)	# tmp128, use_link
.L288:
	.loc 1 1466 0 discriminator 1
	cmpq	$0, -40(%rbp)	#, use_link
	jne	.L290	#,
.LBE41:
	.loc 1 1456 0
	movq	-48(%rbp), %rax	# def_link, tmp129
	movq	(%rax), %rax	# def_link_2->next, tmp130
	movq	%rax, -48(%rbp)	# tmp130, def_link
.L285:
	.loc 1 1456 0 is_stmt 0 discriminator 1
	cmpq	$0, -48(%rbp)	#, def_link
	jne	.L291	#,
	.loc 1 1482 0 is_stmt 1
	movq	-72(%rbp), %rax	# df, tmp131
	movq	56(%rax), %rcx	# df_6(D)->insns, D.15906
	movl	-64(%rbp), %edx	# uid, D.15901
	movq	%rdx, %rax	# D.15901, tmp132
	addq	%rax, %rax	# tmp132
	addq	%rdx, %rax	# D.15901, tmp132
	salq	$3, %rax	#, tmp133
	addq	%rcx, %rax	# D.15906, D.15906
	movq	8(%rax), %rax	# _51->uses, tmp134
	movq	%rax, -40(%rbp)	# tmp134, use_link
	jmp	.L292	#
.L293:
.LBB43:
	.loc 1 1484 0 discriminator 2
	movq	-40(%rbp), %rax	# use_link, tmp135
	movq	8(%rax), %rax	# use_link_4->ref, tmp136
	movq	%rax, -8(%rbp)	# tmp136, use
	.loc 1 1485 0 discriminator 2
	movq	-8(%rbp), %rax	# use, tmp137
	movl	36(%rax), %edx	# use_53->id, D.15900
	movq	-88(%rbp), %rax	# ru, tmp138
	movl	%edx, %esi	# D.15900,
	movq	%rax, %rdi	# tmp138,
	call	bitmap_set_bit	#
.LBE43:
	.loc 1 1482 0 discriminator 2
	movq	-40(%rbp), %rax	# use_link, tmp139
	movq	(%rax), %rax	# use_link_4->next, tmp140
	movq	%rax, -40(%rbp)	# tmp140, use_link
.L292:
	.loc 1 1482 0 is_stmt 0 discriminator 1
	cmpq	$0, -40(%rbp)	#, use_link
	jne	.L293	#,
.L284:
.LBE40:
	.loc 1 1446 0 is_stmt 1
	movq	-56(%rbp), %rax	# insn, tmp141
	movq	16(%rax), %rax	# insn_1->fld[1].rtx, tmp142
	movq	%rax, -56(%rbp)	# tmp142, insn
.L282:
	.loc 1 1445 0 discriminator 1
	cmpq	$0, -56(%rbp)	#, insn
	je	.L281	#,
	.loc 1 1445 0 is_stmt 0 discriminator 2
	movq	-80(%rbp), %rax	# bb, tmp143
	movq	(%rax), %rax	# bb_8(D)->head, D.15903
	movq	16(%rax), %rax	# _16->fld[1].rtx, D.15903
	cmpq	-56(%rbp), %rax	# insn, D.15903
	jne	.L295	#,
.L281:
	.loc 1 1488 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE29:
	.size	df_bb_du_chain_create, .-df_bb_du_chain_create
	.type	df_du_chain_create, @function
df_du_chain_create:
.LFB30:
	.loc 1 1497 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movq	%rdi, -72(%rbp)	# df, df
	movq	%rsi, -80(%rbp)	# blocks, blocks
	.loc 1 1501 0
	movl	$24, %edi	#,
	call	xmalloc	#
	movq	%rax, %rdi	# D.15909,
	call	bitmap_initialize	#
	movq	%rax, -24(%rbp)	# tmp71, ru
.LBB44:
.LBB45:
	.loc 1 1503 0
	movq	-80(%rbp), %rax	# blocks, tmp72
	movq	(%rax), %rax	# blocks_14(D)->first, tmp73
	movq	%rax, -40(%rbp)	# tmp73, ptr_
	movl	$0, -48(%rbp)	#, indx_
	movl	$0, -56(%rbp)	#, bit_num_
	movl	$0, -52(%rbp)	#, word_num_
	jmp	.L297	#
.L299:
	.loc 1 1503 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# ptr_, tmp74
	movq	(%rax), %rax	# ptr__1->next, tmp75
	movq	%rax, -40(%rbp)	# tmp75, ptr_
.L297:
	cmpq	$0, -40(%rbp)	#, ptr_
	je	.L298	#,
	.loc 1 1503 0 discriminator 2
	movq	-40(%rbp), %rax	# ptr_, tmp76
	movl	16(%rax), %eax	# ptr__1->indx, D.15910
	cmpl	-48(%rbp), %eax	# indx_, D.15910
	jb	.L299	#,
.L298:
	.loc 1 1503 0 discriminator 3
	cmpq	$0, -40(%rbp)	#, ptr_
	je	.L300	#,
	.loc 1 1503 0 discriminator 1
	movq	-40(%rbp), %rax	# ptr_, tmp77
	movl	16(%rax), %eax	# ptr__1->indx, D.15910
	cmpl	-48(%rbp), %eax	# indx_, D.15910
	je	.L300	#,
	movl	$0, -56(%rbp)	#, bit_num_
	movl	$0, -52(%rbp)	#, word_num_
	jmp	.L301	#
.L300:
	.loc 1 1503 0 discriminator 2
	jmp	.L301	#
.L308:
	.loc 1 1503 0
	jmp	.L302	#
.L307:
.LBB46:
	.loc 1 1503 0 discriminator 2
	movq	-40(%rbp), %rax	# ptr_, tmp78
	movl	-52(%rbp), %edx	# word_num_, tmp79
	addq	$2, %rdx	#, tmp80
	movq	8(%rax,%rdx,8), %rax	# ptr__2->bits, tmp81
	movq	%rax, -32(%rbp)	# tmp81, word_
	cmpq	$0, -32(%rbp)	#, word_
	je	.L303	#,
	.loc 1 1503 0 discriminator 1
	jmp	.L304	#
.L306:
.LBB47:
	.loc 1 1503 0 discriminator 2
	movl	-56(%rbp), %eax	# bit_num_, bit_num_.56
	movl	$1, %edx	#, tmp82
	movl	%eax, %ecx	# bit_num_.56, tmp104
	salq	%cl, %rdx	# tmp104, tmp83
	movq	%rdx, %rax	# tmp83, tmp83
	movq	%rax, -16(%rbp)	# tmp83, mask_
	movq	-16(%rbp), %rax	# mask_, tmp84
	movq	-32(%rbp), %rdx	# word_, tmp85
	andq	%rdx, %rax	# tmp85, D.15911
	testq	%rax, %rax	# D.15911
	je	.L305	#,
	.loc 1 1503 0 discriminator 1
	movq	-16(%rbp), %rax	# mask_, tmp86
	notq	%rax	# D.15911
	andq	%rax, -32(%rbp)	# D.15911, word_
	movq	-40(%rbp), %rax	# ptr_, tmp87
	movl	16(%rax), %eax	# ptr__2->indx, D.15910
	leal	(%rax,%rax), %edx	#, D.15910
	movl	-52(%rbp), %eax	# word_num_, tmp88
	addl	%edx, %eax	# D.15910, D.15910
	sall	$6, %eax	#, D.15910
	movl	%eax, %edx	# D.15910, D.15910
	movl	-56(%rbp), %eax	# bit_num_, tmp92
	addl	%edx, %eax	# D.15910, tmp91
	movl	%eax, -44(%rbp)	# tmp91, node_
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.57
	movl	-44(%rbp), %edx	# node_, tmp93
	addq	$4, %rdx	#, tmp94
	movq	(%rax,%rdx,8), %rax	# basic_block_info.57_35->data.bb, tmp95
	movq	%rax, -8(%rbp)	# tmp95, bb
	movq	-24(%rbp), %rdx	# ru, tmp96
	movq	-8(%rbp), %rcx	# bb, tmp97
	movq	-72(%rbp), %rax	# df, tmp98
	movq	%rcx, %rsi	# tmp97,
	movq	%rax, %rdi	# tmp98,
	call	df_bb_du_chain_create	#
	cmpq	$0, -32(%rbp)	#, word_
	jne	.L305	#,
	jmp	.L303	#
.L305:
.LBE47:
	.loc 1 1503 0 discriminator 2
	addl	$1, -56(%rbp)	#, bit_num_
.L304:
	.loc 1 1503 0 discriminator 1
	cmpl	$63, -56(%rbp)	#, bit_num_
	jbe	.L306	#,
.L303:
	.loc 1 1503 0 discriminator 2
	movl	$0, -56(%rbp)	#, bit_num_
.LBE46:
	addl	$1, -52(%rbp)	#, word_num_
.L302:
	.loc 1 1503 0 discriminator 1
	cmpl	$1, -52(%rbp)	#, word_num_
	jbe	.L307	#,
	.loc 1 1503 0 discriminator 3
	movl	$0, -52(%rbp)	#, word_num_
	movq	-40(%rbp), %rax	# ptr_, tmp99
	movq	(%rax), %rax	# ptr__2->next, tmp100
	movq	%rax, -40(%rbp)	# tmp100, ptr_
.L301:
	.loc 1 1503 0 discriminator 1
	cmpq	$0, -40(%rbp)	#, ptr_
	jne	.L308	#,
.LBE45:
.LBE44:
	.loc 1 1508 0 is_stmt 1
	cmpq	$0, -24(%rbp)	#, ru
	je	.L296	#,
	.loc 1 1508 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# ru, tmp101
	movq	%rax, %rdi	# tmp101,
	call	bitmap_clear	#
	movq	-24(%rbp), %rax	# ru, tmp102
	movq	%rax, %rdi	# tmp102,
	call	free	#
	movq	$0, -24(%rbp)	#, ru
.L296:
	.loc 1 1509 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE30:
	.size	df_du_chain_create, .-df_du_chain_create
	.type	df_bb_ud_chain_create, @function
df_bb_ud_chain_create:
.LFB31:
	.loc 1 1517 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$96, %rsp	#,
	movq	%rdi, -88(%rbp)	# df, df
	movq	%rsi, -96(%rbp)	# bb, bb
	.loc 1 1518 0
	movq	-88(%rbp), %rax	# df, tmp110
	movq	8(%rax), %rdx	# df_7(D)->bbs, D.15912
	movq	-96(%rbp), %rax	# bb, tmp111
	movl	88(%rax), %eax	# bb_9(D)->index, D.15913
	cltq
	salq	$4, %rax	#, tmp113
	leaq	0(,%rax,8), %rcx	#, tmp114
	subq	%rax, %rcx	# tmp112, D.15914
	movq	%rcx, %rax	# D.15914, D.15914
	addq	%rdx, %rax	# D.15912, tmp115
	movq	%rax, -40(%rbp)	# tmp115, bb_info
	.loc 1 1519 0
	movq	-88(%rbp), %rax	# df, tmp116
	movq	32(%rax), %rax	# df_7(D)->reg_def_last, tmp117
	movq	%rax, -32(%rbp)	# tmp117, reg_def_last
	.loc 1 1522 0
	movq	-88(%rbp), %rax	# df, tmp118
	movl	96(%rax), %eax	# df_7(D)->n_regs, D.15915
	movl	%eax, %eax	# D.15915, D.15914
	leaq	0(,%rax,8), %rdx	#, D.15914
	movq	-32(%rbp), %rax	# reg_def_last, tmp119
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp119,
	call	memset	#
	.loc 1 1526 0
	movq	-96(%rbp), %rax	# bb, tmp120
	movq	(%rax), %rax	# bb_9(D)->head, tmp121
	movq	%rax, -64(%rbp)	# tmp121, insn
	jmp	.L311	#
.L328:
.LBB48:
	.loc 1 1529 0
	movq	-64(%rbp), %rax	# insn, tmp122
	movl	8(%rax), %eax	# insn_1->fld[0].rtint, D.15913
	movl	%eax, -76(%rbp)	# D.15913, uid
	.loc 1 1533 0
	movq	-64(%rbp), %rax	# insn, tmp123
	movzwl	(%rax), %eax	# insn_1->code, D.15917
	movzwl	%ax, %eax	# D.15917, D.15913
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.15918
	cmpb	$105, %al	#, D.15918
	je	.L312	#,
	.loc 1 1534 0
	jmp	.L313	#
.L312:
	.loc 1 1537 0
	movq	-88(%rbp), %rax	# df, tmp125
	movq	56(%rax), %rcx	# df_7(D)->insns, D.15919
	movl	-76(%rbp), %edx	# uid, D.15914
	movq	%rdx, %rax	# D.15914, tmp126
	addq	%rax, %rax	# tmp126
	addq	%rdx, %rax	# D.15914, tmp126
	salq	$3, %rax	#, tmp127
	addq	%rcx, %rax	# D.15919, D.15919
	movq	8(%rax), %rax	# _29->uses, tmp128
	movq	%rax, -56(%rbp)	# tmp128, use_link
	jmp	.L314	#
.L322:
.LBB49:
	.loc 1 1539 0
	movq	-56(%rbp), %rax	# use_link, tmp129
	movq	8(%rax), %rax	# use_link_2->ref, tmp130
	movq	%rax, -24(%rbp)	# tmp130, use
	.loc 1 1540 0
	movq	-24(%rbp), %rax	# use, tmp131
	movq	(%rax), %rax	# use_31->reg, D.15916
	movzwl	(%rax), %eax	# _32->code, D.15917
	cmpw	$63, %ax	#, D.15917
	jne	.L315	#,
	.loc 1 1540 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# use, tmp132
	movq	(%rax), %rax	# use_31->reg, D.15916
	movq	8(%rax), %rax	# _34->fld[0].rtx, iftmp.58
	jmp	.L316	#
.L315:
	.loc 1 1540 0 discriminator 2
	movq	-24(%rbp), %rax	# use, tmp133
	movq	(%rax), %rax	# use_31->reg, iftmp.58
.L316:
	.loc 1 1540 0 discriminator 3
	movl	8(%rax), %eax	# iftmp.58_5->fld[0].rtuint, tmp134
	movl	%eax, -72(%rbp)	# tmp134, regno
	.loc 1 1542 0 is_stmt 1 discriminator 3
	movq	-24(%rbp), %rax	# use, tmp135
	movq	$0, 24(%rax)	#, use_31->chain
	.loc 1 1549 0 discriminator 3
	movl	-72(%rbp), %eax	# regno, D.15914
	leaq	0(,%rax,8), %rdx	#, D.15914
	movq	-32(%rbp), %rax	# reg_def_last, tmp136
	addq	%rdx, %rax	# D.15914, D.15920
	movq	(%rax), %rax	# *_40, D.15921
	testq	%rax, %rax	# D.15921
	je	.L317	#,
	.loc 1 1552 0
	movl	-72(%rbp), %eax	# regno, D.15914
	leaq	0(,%rax,8), %rdx	#, D.15914
	movq	-32(%rbp), %rax	# reg_def_last, tmp137
	addq	%rdx, %rax	# D.15914, D.15920
	movq	(%rax), %rax	# *_44, D.15921
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.15921,
	call	df_link_create	#
	movq	-24(%rbp), %rdx	# use, tmp138
	movq	%rax, 24(%rdx)	# D.15922, use_31->chain
	jmp	.L318	#
.L317:
	.loc 1 1560 0
	movq	-88(%rbp), %rax	# df, tmp139
	movq	40(%rax), %rax	# df_7(D)->regs, D.15923
	movl	-72(%rbp), %edx	# regno, D.15914
	salq	$5, %rdx	#, D.15914
	addq	%rdx, %rax	# D.15914, D.15923
	movq	(%rax), %rax	# _50->defs, tmp140
	movq	%rax, -48(%rbp)	# tmp140, def_link
	jmp	.L319	#
.L321:
.LBB50:
	.loc 1 1563 0
	movq	-48(%rbp), %rax	# def_link, tmp141
	movq	8(%rax), %rax	# def_link_3->ref, tmp142
	movq	%rax, -16(%rbp)	# tmp142, def
	.loc 1 1565 0
	movq	-16(%rbp), %rax	# def, tmp143
	movl	36(%rax), %edx	# def_52->id, D.15913
	movq	-40(%rbp), %rax	# bb_info, tmp144
	movq	16(%rax), %rax	# bb_info_13->rd_in, D.15924
	movl	%edx, %esi	# D.15913,
	movq	%rax, %rdi	# D.15924,
	call	bitmap_bit_p	#
	testl	%eax, %eax	# D.15913
	je	.L320	#,
	.loc 1 1568 0
	movq	-24(%rbp), %rax	# use, tmp145
	movq	24(%rax), %rdx	# use_31->chain, D.15922
	movq	-16(%rbp), %rax	# def, tmp146
	movq	%rdx, %rsi	# D.15922,
	movq	%rax, %rdi	# tmp146,
	call	df_link_create	#
	movq	-24(%rbp), %rdx	# use, tmp147
	movq	%rax, 24(%rdx)	# D.15922, use_31->chain
.L320:
.LBE50:
	.loc 1 1561 0
	movq	-48(%rbp), %rax	# def_link, tmp148
	movq	(%rax), %rax	# def_link_3->next, tmp149
	movq	%rax, -48(%rbp)	# tmp149, def_link
.L319:
	.loc 1 1560 0 discriminator 1
	cmpq	$0, -48(%rbp)	#, def_link
	jne	.L321	#,
.L318:
.LBE49:
	.loc 1 1537 0
	movq	-56(%rbp), %rax	# use_link, tmp150
	movq	(%rax), %rax	# use_link_2->next, tmp151
	movq	%rax, -56(%rbp)	# tmp151, use_link
.L314:
	.loc 1 1537 0 is_stmt 0 discriminator 1
	cmpq	$0, -56(%rbp)	#, use_link
	jne	.L322	#,
	.loc 1 1576 0 is_stmt 1
	movq	-88(%rbp), %rax	# df, tmp152
	movq	56(%rax), %rcx	# df_7(D)->insns, D.15919
	movl	-76(%rbp), %edx	# uid, D.15914
	movq	%rdx, %rax	# D.15914, tmp153
	addq	%rax, %rax	# tmp153
	addq	%rdx, %rax	# D.15914, tmp153
	salq	$3, %rax	#, tmp154
	addq	%rcx, %rax	# D.15919, D.15919
	movq	(%rax), %rax	# _63->defs, tmp155
	movq	%rax, -48(%rbp)	# tmp155, def_link
	jmp	.L323	#
.L326:
.LBB51:
	.loc 1 1578 0
	movq	-48(%rbp), %rax	# def_link, tmp156
	movq	8(%rax), %rax	# def_link_4->ref, tmp157
	movq	%rax, -8(%rbp)	# tmp157, def
	.loc 1 1579 0
	movq	-8(%rbp), %rax	# def, tmp158
	movq	(%rax), %rax	# def_65->reg, D.15916
	movzwl	(%rax), %eax	# _66->code, D.15917
	cmpw	$63, %ax	#, D.15917
	jne	.L324	#,
	.loc 1 1579 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# def, tmp159
	movq	(%rax), %rax	# def_65->reg, D.15916
	movq	8(%rax), %rax	# _68->fld[0].rtx, iftmp.59
	jmp	.L325	#
.L324:
	.loc 1 1579 0 discriminator 2
	movq	-8(%rbp), %rax	# def, tmp160
	movq	(%rax), %rax	# def_65->reg, iftmp.59
.L325:
	.loc 1 1579 0 discriminator 3
	movl	8(%rax), %eax	# iftmp.59_6->fld[0].rtuint, D.15915
	movl	%eax, -68(%rbp)	# D.15915, dregno
	.loc 1 1581 0 is_stmt 1 discriminator 3
	movl	-68(%rbp), %eax	# dregno, tmp161
	cltq
	leaq	0(,%rax,8), %rdx	#, D.15914
	movq	-32(%rbp), %rax	# reg_def_last, tmp162
	addq	%rax, %rdx	# tmp162, D.15920
	movq	-8(%rbp), %rax	# def, tmp163
	movq	%rax, (%rdx)	# tmp163, *_75
.LBE51:
	.loc 1 1576 0 discriminator 3
	movq	-48(%rbp), %rax	# def_link, tmp164
	movq	(%rax), %rax	# def_link_4->next, tmp165
	movq	%rax, -48(%rbp)	# tmp165, def_link
.L323:
	.loc 1 1576 0 is_stmt 0 discriminator 1
	cmpq	$0, -48(%rbp)	#, def_link
	jne	.L326	#,
.L313:
.LBE48:
	.loc 1 1527 0 is_stmt 1
	movq	-64(%rbp), %rax	# insn, tmp166
	movq	24(%rax), %rax	# insn_1->fld[2].rtx, tmp167
	movq	%rax, -64(%rbp)	# tmp167, insn
.L311:
	.loc 1 1526 0 discriminator 1
	cmpq	$0, -64(%rbp)	#, insn
	je	.L310	#,
	.loc 1 1526 0 is_stmt 0 discriminator 2
	movq	-96(%rbp), %rax	# bb, tmp168
	movq	8(%rax), %rax	# bb_9(D)->end, D.15916
	movq	24(%rax), %rax	# _19->fld[2].rtx, D.15916
	cmpq	-64(%rbp), %rax	# insn, D.15916
	jne	.L328	#,
.L310:
	.loc 1 1584 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE31:
	.size	df_bb_ud_chain_create, .-df_bb_ud_chain_create
	.type	df_ud_chain_create, @function
df_ud_chain_create:
.LFB32:
	.loc 1 1593 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -56(%rbp)	# df, df
	movq	%rsi, -64(%rbp)	# blocks, blocks
.LBB52:
.LBB53:
	.loc 1 1596 0
	movq	-64(%rbp), %rax	# blocks, tmp69
	movq	(%rax), %rax	# blocks_12(D)->first, tmp70
	movq	%rax, -32(%rbp)	# tmp70, ptr_
	movl	$0, -40(%rbp)	#, indx_
	movl	$0, -48(%rbp)	#, bit_num_
	movl	$0, -44(%rbp)	#, word_num_
	jmp	.L330	#
.L332:
	.loc 1 1596 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# ptr_, tmp71
	movq	(%rax), %rax	# ptr__1->next, tmp72
	movq	%rax, -32(%rbp)	# tmp72, ptr_
.L330:
	cmpq	$0, -32(%rbp)	#, ptr_
	je	.L331	#,
	.loc 1 1596 0 discriminator 2
	movq	-32(%rbp), %rax	# ptr_, tmp73
	movl	16(%rax), %eax	# ptr__1->indx, D.15925
	cmpl	-40(%rbp), %eax	# indx_, D.15925
	jb	.L332	#,
.L331:
	.loc 1 1596 0 discriminator 3
	cmpq	$0, -32(%rbp)	#, ptr_
	je	.L333	#,
	.loc 1 1596 0 discriminator 1
	movq	-32(%rbp), %rax	# ptr_, tmp74
	movl	16(%rax), %eax	# ptr__1->indx, D.15925
	cmpl	-40(%rbp), %eax	# indx_, D.15925
	je	.L333	#,
	movl	$0, -48(%rbp)	#, bit_num_
	movl	$0, -44(%rbp)	#, word_num_
	jmp	.L334	#
.L333:
	.loc 1 1596 0 discriminator 2
	jmp	.L334	#
.L341:
	.loc 1 1596 0
	jmp	.L335	#
.L340:
.LBB54:
	.loc 1 1596 0 discriminator 2
	movq	-32(%rbp), %rax	# ptr_, tmp75
	movl	-44(%rbp), %edx	# word_num_, tmp76
	addq	$2, %rdx	#, tmp77
	movq	8(%rax,%rdx,8), %rax	# ptr__2->bits, tmp78
	movq	%rax, -24(%rbp)	# tmp78, word_
	cmpq	$0, -24(%rbp)	#, word_
	je	.L336	#,
	.loc 1 1596 0 discriminator 1
	jmp	.L337	#
.L339:
.LBB55:
	.loc 1 1596 0 discriminator 2
	movl	-48(%rbp), %eax	# bit_num_, bit_num_.60
	movl	$1, %edx	#, tmp79
	movl	%eax, %ecx	# bit_num_.60, tmp98
	salq	%cl, %rdx	# tmp98, tmp80
	movq	%rdx, %rax	# tmp80, tmp80
	movq	%rax, -16(%rbp)	# tmp80, mask_
	movq	-16(%rbp), %rax	# mask_, tmp81
	movq	-24(%rbp), %rdx	# word_, tmp82
	andq	%rdx, %rax	# tmp82, D.15926
	testq	%rax, %rax	# D.15926
	je	.L338	#,
	.loc 1 1596 0 discriminator 1
	movq	-16(%rbp), %rax	# mask_, tmp83
	notq	%rax	# D.15926
	andq	%rax, -24(%rbp)	# D.15926, word_
	movq	-32(%rbp), %rax	# ptr_, tmp84
	movl	16(%rax), %eax	# ptr__2->indx, D.15925
	leal	(%rax,%rax), %edx	#, D.15925
	movl	-44(%rbp), %eax	# word_num_, tmp85
	addl	%edx, %eax	# D.15925, D.15925
	sall	$6, %eax	#, D.15925
	movl	%eax, %edx	# D.15925, D.15925
	movl	-48(%rbp), %eax	# bit_num_, tmp89
	addl	%edx, %eax	# D.15925, tmp88
	movl	%eax, -36(%rbp)	# tmp88, node_
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.61
	movl	-36(%rbp), %edx	# node_, tmp90
	addq	$4, %rdx	#, tmp91
	movq	(%rax,%rdx,8), %rax	# basic_block_info.61_33->data.bb, tmp92
	movq	%rax, -8(%rbp)	# tmp92, bb
	movq	-8(%rbp), %rdx	# bb, tmp93
	movq	-56(%rbp), %rax	# df, tmp94
	movq	%rdx, %rsi	# tmp93,
	movq	%rax, %rdi	# tmp94,
	call	df_bb_ud_chain_create	#
	cmpq	$0, -24(%rbp)	#, word_
	jne	.L338	#,
	jmp	.L336	#
.L338:
.LBE55:
	.loc 1 1596 0 discriminator 2
	addl	$1, -48(%rbp)	#, bit_num_
.L337:
	.loc 1 1596 0 discriminator 1
	cmpl	$63, -48(%rbp)	#, bit_num_
	jbe	.L339	#,
.L336:
	.loc 1 1596 0 discriminator 2
	movl	$0, -48(%rbp)	#, bit_num_
.LBE54:
	addl	$1, -44(%rbp)	#, word_num_
.L335:
	.loc 1 1596 0 discriminator 1
	cmpl	$1, -44(%rbp)	#, word_num_
	jbe	.L340	#,
	.loc 1 1596 0 discriminator 3
	movl	$0, -44(%rbp)	#, word_num_
	movq	-32(%rbp), %rax	# ptr_, tmp95
	movq	(%rax), %rax	# ptr__2->next, tmp96
	movq	%rax, -32(%rbp)	# tmp96, ptr_
.L334:
	.loc 1 1596 0 discriminator 1
	cmpq	$0, -32(%rbp)	#, ptr_
	jne	.L341	#,
.LBE53:
.LBE52:
	.loc 1 1600 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE32:
	.size	df_ud_chain_create, .-df_ud_chain_create
	.type	df_rd_transfer_function, @function
df_rd_transfer_function:
.LFB33:
	.loc 1 1610 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movl	%edi, -4(%rbp)	# bb, bb
	movq	%rsi, -16(%rbp)	# changed, changed
	movq	%rdx, -24(%rbp)	# in, in
	movq	%rcx, -32(%rbp)	# out, out
	movq	%r8, -40(%rbp)	# gen, gen
	movq	%r9, -48(%rbp)	# kill, kill
	.loc 1 1611 0
	movq	-48(%rbp), %rcx	# kill, tmp60
	movq	-24(%rbp), %rdx	# in, tmp61
	movq	-40(%rbp), %rsi	# gen, tmp62
	movq	-32(%rbp), %rax	# out, tmp63
	movq	%rax, %rdi	# tmp63,
	call	bitmap_union_of_diff	#
	movq	-16(%rbp), %rdx	# changed, tmp64
	movl	%eax, (%rdx)	# D.15927, *changed_6(D)
	.loc 1 1612 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE33:
	.size	df_rd_transfer_function, .-df_rd_transfer_function
	.type	df_ru_transfer_function, @function
df_ru_transfer_function:
.LFB34:
	.loc 1 1619 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movl	%edi, -4(%rbp)	# bb, bb
	movq	%rsi, -16(%rbp)	# changed, changed
	movq	%rdx, -24(%rbp)	# in, in
	movq	%rcx, -32(%rbp)	# out, out
	movq	%r8, -40(%rbp)	# gen, gen
	movq	%r9, -48(%rbp)	# kill, kill
	.loc 1 1620 0
	movq	-48(%rbp), %rcx	# kill, tmp60
	movq	-32(%rbp), %rdx	# out, tmp61
	movq	-40(%rbp), %rsi	# gen, tmp62
	movq	-24(%rbp), %rax	# in, tmp63
	movq	%rax, %rdi	# tmp63,
	call	bitmap_union_of_diff	#
	movq	-16(%rbp), %rdx	# changed, tmp64
	movl	%eax, (%rdx)	# D.15928, *changed_6(D)
	.loc 1 1621 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE34:
	.size	df_ru_transfer_function, .-df_ru_transfer_function
	.type	df_lr_transfer_function, @function
df_lr_transfer_function:
.LFB35:
	.loc 1 1629 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movl	%edi, -4(%rbp)	# bb, bb
	movq	%rsi, -16(%rbp)	# changed, changed
	movq	%rdx, -24(%rbp)	# in, in
	movq	%rcx, -32(%rbp)	# out, out
	movq	%r8, -40(%rbp)	# use, use
	movq	%r9, -48(%rbp)	# def, def
	.loc 1 1630 0
	movq	-48(%rbp), %rcx	# def, tmp60
	movq	-32(%rbp), %rdx	# out, tmp61
	movq	-40(%rbp), %rsi	# use, tmp62
	movq	-24(%rbp), %rax	# in, tmp63
	movq	%rax, %rdi	# tmp63,
	call	bitmap_union_of_diff	#
	movq	-16(%rbp), %rdx	# changed, tmp64
	movl	%eax, (%rdx)	# D.15929, *changed_6(D)
	.loc 1 1631 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE35:
	.size	df_lr_transfer_function, .-df_lr_transfer_function
	.type	df_bb_rd_local_compute, @function
df_bb_rd_local_compute:
.LFB36:
	.loc 1 1639 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movq	%rdi, -72(%rbp)	# df, df
	movq	%rsi, -80(%rbp)	# bb, bb
	.loc 1 1640 0
	movq	-72(%rbp), %rax	# df, tmp87
	movq	8(%rax), %rdx	# df_5(D)->bbs, D.15930
	movq	-80(%rbp), %rax	# bb, tmp88
	movl	88(%rax), %eax	# bb_7(D)->index, D.15931
	cltq
	salq	$4, %rax	#, tmp90
	leaq	0(,%rax,8), %rcx	#, tmp91
	subq	%rax, %rcx	# tmp89, D.15932
	movq	%rcx, %rax	# D.15932, D.15932
	addq	%rdx, %rax	# D.15930, tmp92
	movq	%rax, -24(%rbp)	# tmp92, bb_info
	.loc 1 1643 0
	movq	-80(%rbp), %rax	# bb, tmp93
	movq	(%rax), %rax	# bb_7(D)->head, tmp94
	movq	%rax, -48(%rbp)	# tmp94, insn
	jmp	.L346	#
.L356:
.LBB56:
	.loc 1 1646 0
	movq	-48(%rbp), %rax	# insn, tmp95
	movl	8(%rax), %eax	# insn_1->fld[0].rtint, D.15931
	movl	%eax, -56(%rbp)	# D.15931, uid
	.loc 1 1649 0
	movq	-48(%rbp), %rax	# insn, tmp96
	movzwl	(%rax), %eax	# insn_1->code, D.15934
	movzwl	%ax, %eax	# D.15934, D.15931
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.15935
	cmpb	$105, %al	#, D.15935
	je	.L347	#,
	.loc 1 1650 0
	jmp	.L348	#
.L347:
	.loc 1 1652 0
	movq	-72(%rbp), %rax	# df, tmp98
	movq	56(%rax), %rcx	# df_5(D)->insns, D.15936
	movl	-56(%rbp), %edx	# uid, D.15932
	movq	%rdx, %rax	# D.15932, tmp99
	addq	%rax, %rax	# tmp99
	addq	%rdx, %rax	# D.15932, tmp99
	salq	$3, %rax	#, tmp100
	addq	%rcx, %rax	# D.15936, D.15936
	movq	(%rax), %rax	# _23->defs, tmp101
	movq	%rax, -40(%rbp)	# tmp101, def_link
	jmp	.L349	#
.L354:
.LBB57:
	.loc 1 1654 0
	movq	-40(%rbp), %rax	# def_link, tmp102
	movq	8(%rax), %rax	# def_link_2->ref, tmp103
	movq	%rax, -16(%rbp)	# tmp103, def
	.loc 1 1655 0
	movq	-16(%rbp), %rax	# def, tmp104
	movq	(%rax), %rax	# def_25->reg, D.15933
	movzwl	(%rax), %eax	# _26->code, D.15934
	cmpw	$63, %ax	#, D.15934
	jne	.L350	#,
	.loc 1 1655 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# def, tmp105
	movq	(%rax), %rax	# def_25->reg, D.15933
	movq	8(%rax), %rax	# _28->fld[0].rtx, iftmp.62
	jmp	.L351	#
.L350:
	.loc 1 1655 0 discriminator 2
	movq	-16(%rbp), %rax	# def, tmp106
	movq	(%rax), %rax	# def_25->reg, iftmp.62
.L351:
	.loc 1 1655 0 discriminator 3
	movl	8(%rax), %eax	# iftmp.62_4->fld[0].rtuint, tmp107
	movl	%eax, -52(%rbp)	# tmp107, regno
	.loc 1 1658 0 is_stmt 1 discriminator 3
	movq	-72(%rbp), %rax	# df, tmp108
	movq	40(%rax), %rax	# df_5(D)->regs, D.15937
	movl	-52(%rbp), %edx	# regno, D.15932
	salq	$5, %rdx	#, D.15932
	addq	%rdx, %rax	# D.15932, D.15937
	movq	(%rax), %rax	# _35->defs, tmp109
	movq	%rax, -32(%rbp)	# tmp109, def2_link
	jmp	.L352	#
.L353:
.LBB58:
	.loc 1 1661 0
	movq	-32(%rbp), %rax	# def2_link, tmp110
	movq	8(%rax), %rax	# def2_link_3->ref, tmp111
	movq	%rax, -8(%rbp)	# tmp111, def2
	.loc 1 1667 0
	movq	-8(%rbp), %rax	# def2, tmp112
	movl	36(%rax), %edx	# def2_37->id, D.15931
	movq	-24(%rbp), %rax	# bb_info, tmp113
	movq	(%rax), %rax	# bb_info_11->rd_kill, D.15938
	movl	%edx, %esi	# D.15931,
	movq	%rax, %rdi	# D.15938,
	call	bitmap_set_bit	#
	.loc 1 1670 0
	movq	-8(%rbp), %rax	# def2, tmp114
	movl	36(%rax), %edx	# def2_37->id, D.15931
	movq	-24(%rbp), %rax	# bb_info, tmp115
	movq	8(%rax), %rax	# bb_info_11->rd_gen, D.15938
	movl	%edx, %esi	# D.15931,
	movq	%rax, %rdi	# D.15938,
	call	bitmap_clear_bit	#
.LBE58:
	.loc 1 1659 0
	movq	-32(%rbp), %rax	# def2_link, tmp116
	movq	(%rax), %rax	# def2_link_3->next, tmp117
	movq	%rax, -32(%rbp)	# tmp117, def2_link
.L352:
	.loc 1 1658 0 discriminator 1
	cmpq	$0, -32(%rbp)	#, def2_link
	jne	.L353	#,
	.loc 1 1673 0
	movq	-16(%rbp), %rax	# def, tmp118
	movl	36(%rax), %edx	# def_25->id, D.15931
	movq	-24(%rbp), %rax	# bb_info, tmp119
	movq	8(%rax), %rax	# bb_info_11->rd_gen, D.15938
	movl	%edx, %esi	# D.15931,
	movq	%rax, %rdi	# D.15938,
	call	bitmap_set_bit	#
.LBE57:
	.loc 1 1652 0
	movq	-40(%rbp), %rax	# def_link, tmp120
	movq	(%rax), %rax	# def_link_2->next, tmp121
	movq	%rax, -40(%rbp)	# tmp121, def_link
.L349:
	.loc 1 1652 0 is_stmt 0 discriminator 1
	cmpq	$0, -40(%rbp)	#, def_link
	jne	.L354	#,
.L348:
.LBE56:
	.loc 1 1644 0 is_stmt 1
	movq	-48(%rbp), %rax	# insn, tmp122
	movq	24(%rax), %rax	# insn_1->fld[2].rtx, tmp123
	movq	%rax, -48(%rbp)	# tmp123, insn
.L346:
	.loc 1 1643 0 discriminator 1
	cmpq	$0, -48(%rbp)	#, insn
	je	.L355	#,
	.loc 1 1643 0 is_stmt 0 discriminator 2
	movq	-80(%rbp), %rax	# bb, tmp124
	movq	8(%rax), %rax	# bb_7(D)->end, D.15933
	movq	24(%rax), %rax	# _13->fld[2].rtx, D.15933
	cmpq	-48(%rbp), %rax	# insn, D.15933
	jne	.L356	#,
.L355:
	.loc 1 1677 0 is_stmt 1
	movq	-24(%rbp), %rax	# bb_info, tmp125
	movl	$1, 96(%rax)	#, bb_info_11->rd_valid
	.loc 1 1678 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE36:
	.size	df_bb_rd_local_compute, .-df_bb_rd_local_compute
	.type	df_rd_local_compute, @function
df_rd_local_compute:
.LFB37:
	.loc 1 1686 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -56(%rbp)	# df, df
	movq	%rsi, -64(%rbp)	# blocks, blocks
.LBB59:
.LBB60:
	.loc 1 1689 0
	movq	-64(%rbp), %rax	# blocks, tmp69
	movq	(%rax), %rax	# blocks_12(D)->first, tmp70
	movq	%rax, -32(%rbp)	# tmp70, ptr_
	movl	$0, -40(%rbp)	#, indx_
	movl	$0, -48(%rbp)	#, bit_num_
	movl	$0, -44(%rbp)	#, word_num_
	jmp	.L358	#
.L360:
	.loc 1 1689 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# ptr_, tmp71
	movq	(%rax), %rax	# ptr__1->next, tmp72
	movq	%rax, -32(%rbp)	# tmp72, ptr_
.L358:
	cmpq	$0, -32(%rbp)	#, ptr_
	je	.L359	#,
	.loc 1 1689 0 discriminator 2
	movq	-32(%rbp), %rax	# ptr_, tmp73
	movl	16(%rax), %eax	# ptr__1->indx, D.15939
	cmpl	-40(%rbp), %eax	# indx_, D.15939
	jb	.L360	#,
.L359:
	.loc 1 1689 0 discriminator 3
	cmpq	$0, -32(%rbp)	#, ptr_
	je	.L361	#,
	.loc 1 1689 0 discriminator 1
	movq	-32(%rbp), %rax	# ptr_, tmp74
	movl	16(%rax), %eax	# ptr__1->indx, D.15939
	cmpl	-40(%rbp), %eax	# indx_, D.15939
	je	.L361	#,
	movl	$0, -48(%rbp)	#, bit_num_
	movl	$0, -44(%rbp)	#, word_num_
	jmp	.L362	#
.L361:
	.loc 1 1689 0 discriminator 2
	jmp	.L362	#
.L369:
	.loc 1 1689 0
	jmp	.L363	#
.L368:
.LBB61:
	.loc 1 1689 0 discriminator 2
	movq	-32(%rbp), %rax	# ptr_, tmp75
	movl	-44(%rbp), %edx	# word_num_, tmp76
	addq	$2, %rdx	#, tmp77
	movq	8(%rax,%rdx,8), %rax	# ptr__2->bits, tmp78
	movq	%rax, -24(%rbp)	# tmp78, word_
	cmpq	$0, -24(%rbp)	#, word_
	je	.L364	#,
	.loc 1 1689 0 discriminator 1
	jmp	.L365	#
.L367:
.LBB62:
	.loc 1 1689 0 discriminator 2
	movl	-48(%rbp), %eax	# bit_num_, bit_num_.63
	movl	$1, %edx	#, tmp79
	movl	%eax, %ecx	# bit_num_.63, tmp98
	salq	%cl, %rdx	# tmp98, tmp80
	movq	%rdx, %rax	# tmp80, tmp80
	movq	%rax, -16(%rbp)	# tmp80, mask_
	movq	-16(%rbp), %rax	# mask_, tmp81
	movq	-24(%rbp), %rdx	# word_, tmp82
	andq	%rdx, %rax	# tmp82, D.15940
	testq	%rax, %rax	# D.15940
	je	.L366	#,
	.loc 1 1689 0 discriminator 1
	movq	-16(%rbp), %rax	# mask_, tmp83
	notq	%rax	# D.15940
	andq	%rax, -24(%rbp)	# D.15940, word_
	movq	-32(%rbp), %rax	# ptr_, tmp84
	movl	16(%rax), %eax	# ptr__2->indx, D.15939
	leal	(%rax,%rax), %edx	#, D.15939
	movl	-44(%rbp), %eax	# word_num_, tmp85
	addl	%edx, %eax	# D.15939, D.15939
	sall	$6, %eax	#, D.15939
	movl	%eax, %edx	# D.15939, D.15939
	movl	-48(%rbp), %eax	# bit_num_, tmp89
	addl	%edx, %eax	# D.15939, tmp88
	movl	%eax, -36(%rbp)	# tmp88, node_
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.64
	movl	-36(%rbp), %edx	# node_, tmp90
	addq	$4, %rdx	#, tmp91
	movq	(%rax,%rdx,8), %rax	# basic_block_info.64_33->data.bb, tmp92
	movq	%rax, -8(%rbp)	# tmp92, bb
	movq	-8(%rbp), %rdx	# bb, tmp93
	movq	-56(%rbp), %rax	# df, tmp94
	movq	%rdx, %rsi	# tmp93,
	movq	%rax, %rdi	# tmp94,
	call	df_bb_rd_local_compute	#
	cmpq	$0, -24(%rbp)	#, word_
	jne	.L366	#,
	jmp	.L364	#
.L366:
.LBE62:
	.loc 1 1689 0 discriminator 2
	addl	$1, -48(%rbp)	#, bit_num_
.L365:
	.loc 1 1689 0 discriminator 1
	cmpl	$63, -48(%rbp)	#, bit_num_
	jbe	.L367	#,
.L364:
	.loc 1 1689 0 discriminator 2
	movl	$0, -48(%rbp)	#, bit_num_
.LBE61:
	addl	$1, -44(%rbp)	#, word_num_
.L363:
	.loc 1 1689 0 discriminator 1
	cmpl	$1, -44(%rbp)	#, word_num_
	jbe	.L368	#,
	.loc 1 1689 0 discriminator 3
	movl	$0, -44(%rbp)	#, word_num_
	movq	-32(%rbp), %rax	# ptr_, tmp95
	movq	(%rax), %rax	# ptr__2->next, tmp96
	movq	%rax, -32(%rbp)	# tmp96, ptr_
.L362:
	.loc 1 1689 0 discriminator 1
	cmpq	$0, -32(%rbp)	#, ptr_
	jne	.L369	#,
.LBE60:
.LBE59:
	.loc 1 1693 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE37:
	.size	df_rd_local_compute, .-df_rd_local_compute
	.type	df_bb_ru_local_compute, @function
df_bb_ru_local_compute:
.LFB38:
	.loc 1 1702 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movq	%rdi, -72(%rbp)	# df, df
	movq	%rsi, -80(%rbp)	# bb, bb
	.loc 1 1707 0
	movq	-72(%rbp), %rax	# df, tmp91
	movq	8(%rax), %rdx	# df_6(D)->bbs, D.15941
	movq	-80(%rbp), %rax	# bb, tmp92
	movl	88(%rax), %eax	# bb_8(D)->index, D.15942
	cltq
	salq	$4, %rax	#, tmp94
	leaq	0(,%rax,8), %rcx	#, tmp95
	subq	%rax, %rcx	# tmp93, D.15943
	movq	%rcx, %rax	# D.15943, D.15943
	addq	%rdx, %rax	# D.15941, tmp96
	movq	%rax, -32(%rbp)	# tmp96, bb_info
	.loc 1 1711 0
	movq	-80(%rbp), %rax	# bb, tmp97
	movq	8(%rax), %rax	# bb_8(D)->end, tmp98
	movq	%rax, -56(%rbp)	# tmp98, insn
	jmp	.L371	#
.L383:
.LBB63:
	.loc 1 1714 0
	movq	-56(%rbp), %rax	# insn, tmp99
	movl	8(%rax), %eax	# insn_1->fld[0].rtint, D.15942
	movl	%eax, -64(%rbp)	# D.15942, uid
	.loc 1 1718 0
	movq	-56(%rbp), %rax	# insn, tmp100
	movzwl	(%rax), %eax	# insn_1->code, D.15945
	movzwl	%ax, %eax	# D.15945, D.15942
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.15946
	cmpb	$105, %al	#, D.15946
	je	.L372	#,
	.loc 1 1719 0
	jmp	.L373	#
.L372:
	.loc 1 1721 0
	movq	-72(%rbp), %rax	# df, tmp102
	movq	56(%rax), %rcx	# df_6(D)->insns, D.15947
	movl	-64(%rbp), %edx	# uid, D.15943
	movq	%rdx, %rax	# D.15943, tmp103
	addq	%rax, %rax	# tmp103
	addq	%rdx, %rax	# D.15943, tmp103
	salq	$3, %rax	#, tmp104
	addq	%rcx, %rax	# D.15947, D.15947
	movq	(%rax), %rax	# _24->defs, tmp105
	movq	%rax, -48(%rbp)	# tmp105, def_link
	jmp	.L374	#
.L379:
.LBB64:
	.loc 1 1723 0
	movq	-48(%rbp), %rax	# def_link, tmp106
	movq	8(%rax), %rax	# def_link_2->ref, tmp107
	movq	%rax, -24(%rbp)	# tmp107, def
	.loc 1 1724 0
	movq	-24(%rbp), %rax	# def, tmp108
	movq	(%rax), %rax	# def_26->reg, D.15944
	movzwl	(%rax), %eax	# _27->code, D.15945
	cmpw	$63, %ax	#, D.15945
	jne	.L375	#,
	.loc 1 1724 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# def, tmp109
	movq	(%rax), %rax	# def_26->reg, D.15944
	movq	8(%rax), %rax	# _29->fld[0].rtx, iftmp.65
	jmp	.L376	#
.L375:
	.loc 1 1724 0 discriminator 2
	movq	-24(%rbp), %rax	# def, tmp110
	movq	(%rax), %rax	# def_26->reg, iftmp.65
.L376:
	.loc 1 1724 0 discriminator 3
	movl	8(%rax), %eax	# iftmp.65_5->fld[0].rtuint, tmp111
	movl	%eax, -60(%rbp)	# tmp111, dregno
	.loc 1 1726 0 is_stmt 1 discriminator 3
	movq	-72(%rbp), %rax	# df, tmp112
	movq	40(%rax), %rax	# df_6(D)->regs, D.15948
	movl	-60(%rbp), %edx	# dregno, D.15943
	salq	$5, %rdx	#, D.15943
	addq	%rdx, %rax	# D.15943, D.15948
	movq	8(%rax), %rax	# _36->uses, tmp113
	movq	%rax, -40(%rbp)	# tmp113, use_link
	jmp	.L377	#
.L378:
.LBB65:
	.loc 1 1729 0
	movq	-40(%rbp), %rax	# use_link, tmp114
	movq	8(%rax), %rax	# use_link_3->ref, tmp115
	movq	%rax, -16(%rbp)	# tmp115, use
	.loc 1 1735 0
	movq	-16(%rbp), %rax	# use, tmp116
	movl	36(%rax), %edx	# use_38->id, D.15942
	movq	-32(%rbp), %rax	# bb_info, tmp117
	movq	32(%rax), %rax	# bb_info_12->ru_kill, D.15949
	movl	%edx, %esi	# D.15942,
	movq	%rax, %rdi	# D.15949,
	call	bitmap_set_bit	#
	.loc 1 1738 0
	movq	-16(%rbp), %rax	# use, tmp118
	movl	36(%rax), %edx	# use_38->id, D.15942
	movq	-32(%rbp), %rax	# bb_info, tmp119
	movq	40(%rax), %rax	# bb_info_12->ru_gen, D.15949
	movl	%edx, %esi	# D.15942,
	movq	%rax, %rdi	# D.15949,
	call	bitmap_clear_bit	#
.LBE65:
	.loc 1 1727 0
	movq	-40(%rbp), %rax	# use_link, tmp120
	movq	(%rax), %rax	# use_link_3->next, tmp121
	movq	%rax, -40(%rbp)	# tmp121, use_link
.L377:
	.loc 1 1726 0 discriminator 1
	cmpq	$0, -40(%rbp)	#, use_link
	jne	.L378	#,
.LBE64:
	.loc 1 1721 0
	movq	-48(%rbp), %rax	# def_link, tmp122
	movq	(%rax), %rax	# def_link_2->next, tmp123
	movq	%rax, -48(%rbp)	# tmp123, def_link
.L374:
	.loc 1 1721 0 is_stmt 0 discriminator 1
	cmpq	$0, -48(%rbp)	#, def_link
	jne	.L379	#,
	.loc 1 1742 0 is_stmt 1
	movq	-72(%rbp), %rax	# df, tmp124
	movq	56(%rax), %rcx	# df_6(D)->insns, D.15947
	movl	-64(%rbp), %edx	# uid, D.15943
	movq	%rdx, %rax	# D.15943, tmp125
	addq	%rax, %rax	# tmp125
	addq	%rdx, %rax	# D.15943, tmp125
	salq	$3, %rax	#, tmp126
	addq	%rcx, %rax	# D.15947, D.15947
	movq	8(%rax), %rax	# _48->uses, tmp127
	movq	%rax, -40(%rbp)	# tmp127, use_link
	jmp	.L380	#
.L381:
.LBB66:
	.loc 1 1744 0 discriminator 2
	movq	-40(%rbp), %rax	# use_link, tmp128
	movq	8(%rax), %rax	# use_link_4->ref, tmp129
	movq	%rax, -8(%rbp)	# tmp129, use
	.loc 1 1746 0 discriminator 2
	movq	-8(%rbp), %rax	# use, tmp130
	movl	36(%rax), %edx	# use_50->id, D.15942
	movq	-32(%rbp), %rax	# bb_info, tmp131
	movq	40(%rax), %rax	# bb_info_12->ru_gen, D.15949
	movl	%edx, %esi	# D.15942,
	movq	%rax, %rdi	# D.15949,
	call	bitmap_set_bit	#
.LBE66:
	.loc 1 1742 0 discriminator 2
	movq	-40(%rbp), %rax	# use_link, tmp132
	movq	(%rax), %rax	# use_link_4->next, tmp133
	movq	%rax, -40(%rbp)	# tmp133, use_link
.L380:
	.loc 1 1742 0 is_stmt 0 discriminator 1
	cmpq	$0, -40(%rbp)	#, use_link
	jne	.L381	#,
.L373:
.LBE63:
	.loc 1 1712 0 is_stmt 1
	movq	-56(%rbp), %rax	# insn, tmp134
	movq	16(%rax), %rax	# insn_1->fld[1].rtx, tmp135
	movq	%rax, -56(%rbp)	# tmp135, insn
.L371:
	.loc 1 1711 0 discriminator 1
	cmpq	$0, -56(%rbp)	#, insn
	je	.L382	#,
	.loc 1 1711 0 is_stmt 0 discriminator 2
	movq	-80(%rbp), %rax	# bb, tmp136
	movq	(%rax), %rax	# bb_8(D)->head, D.15944
	movq	16(%rax), %rax	# _14->fld[1].rtx, D.15944
	cmpq	-56(%rbp), %rax	# insn, D.15944
	jne	.L383	#,
.L382:
	.loc 1 1749 0 is_stmt 1
	movq	-32(%rbp), %rax	# bb_info, tmp137
	movl	$1, 100(%rax)	#, bb_info_12->ru_valid
	.loc 1 1750 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE38:
	.size	df_bb_ru_local_compute, .-df_bb_ru_local_compute
	.type	df_ru_local_compute, @function
df_ru_local_compute:
.LFB39:
	.loc 1 1759 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -56(%rbp)	# df, df
	movq	%rsi, -64(%rbp)	# blocks, blocks
.LBB67:
.LBB68:
	.loc 1 1762 0
	movq	-64(%rbp), %rax	# blocks, tmp69
	movq	(%rax), %rax	# blocks_12(D)->first, tmp70
	movq	%rax, -32(%rbp)	# tmp70, ptr_
	movl	$0, -40(%rbp)	#, indx_
	movl	$0, -48(%rbp)	#, bit_num_
	movl	$0, -44(%rbp)	#, word_num_
	jmp	.L385	#
.L387:
	.loc 1 1762 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# ptr_, tmp71
	movq	(%rax), %rax	# ptr__1->next, tmp72
	movq	%rax, -32(%rbp)	# tmp72, ptr_
.L385:
	cmpq	$0, -32(%rbp)	#, ptr_
	je	.L386	#,
	.loc 1 1762 0 discriminator 2
	movq	-32(%rbp), %rax	# ptr_, tmp73
	movl	16(%rax), %eax	# ptr__1->indx, D.15950
	cmpl	-40(%rbp), %eax	# indx_, D.15950
	jb	.L387	#,
.L386:
	.loc 1 1762 0 discriminator 3
	cmpq	$0, -32(%rbp)	#, ptr_
	je	.L388	#,
	.loc 1 1762 0 discriminator 1
	movq	-32(%rbp), %rax	# ptr_, tmp74
	movl	16(%rax), %eax	# ptr__1->indx, D.15950
	cmpl	-40(%rbp), %eax	# indx_, D.15950
	je	.L388	#,
	movl	$0, -48(%rbp)	#, bit_num_
	movl	$0, -44(%rbp)	#, word_num_
	jmp	.L389	#
.L388:
	.loc 1 1762 0 discriminator 2
	jmp	.L389	#
.L396:
	.loc 1 1762 0
	jmp	.L390	#
.L395:
.LBB69:
	.loc 1 1762 0 discriminator 2
	movq	-32(%rbp), %rax	# ptr_, tmp75
	movl	-44(%rbp), %edx	# word_num_, tmp76
	addq	$2, %rdx	#, tmp77
	movq	8(%rax,%rdx,8), %rax	# ptr__2->bits, tmp78
	movq	%rax, -24(%rbp)	# tmp78, word_
	cmpq	$0, -24(%rbp)	#, word_
	je	.L391	#,
	.loc 1 1762 0 discriminator 1
	jmp	.L392	#
.L394:
.LBB70:
	.loc 1 1762 0 discriminator 2
	movl	-48(%rbp), %eax	# bit_num_, bit_num_.66
	movl	$1, %edx	#, tmp79
	movl	%eax, %ecx	# bit_num_.66, tmp98
	salq	%cl, %rdx	# tmp98, tmp80
	movq	%rdx, %rax	# tmp80, tmp80
	movq	%rax, -16(%rbp)	# tmp80, mask_
	movq	-16(%rbp), %rax	# mask_, tmp81
	movq	-24(%rbp), %rdx	# word_, tmp82
	andq	%rdx, %rax	# tmp82, D.15951
	testq	%rax, %rax	# D.15951
	je	.L393	#,
	.loc 1 1762 0 discriminator 1
	movq	-16(%rbp), %rax	# mask_, tmp83
	notq	%rax	# D.15951
	andq	%rax, -24(%rbp)	# D.15951, word_
	movq	-32(%rbp), %rax	# ptr_, tmp84
	movl	16(%rax), %eax	# ptr__2->indx, D.15950
	leal	(%rax,%rax), %edx	#, D.15950
	movl	-44(%rbp), %eax	# word_num_, tmp85
	addl	%edx, %eax	# D.15950, D.15950
	sall	$6, %eax	#, D.15950
	movl	%eax, %edx	# D.15950, D.15950
	movl	-48(%rbp), %eax	# bit_num_, tmp89
	addl	%edx, %eax	# D.15950, tmp88
	movl	%eax, -36(%rbp)	# tmp88, node_
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.67
	movl	-36(%rbp), %edx	# node_, tmp90
	addq	$4, %rdx	#, tmp91
	movq	(%rax,%rdx,8), %rax	# basic_block_info.67_33->data.bb, tmp92
	movq	%rax, -8(%rbp)	# tmp92, bb
	movq	-8(%rbp), %rdx	# bb, tmp93
	movq	-56(%rbp), %rax	# df, tmp94
	movq	%rdx, %rsi	# tmp93,
	movq	%rax, %rdi	# tmp94,
	call	df_bb_ru_local_compute	#
	cmpq	$0, -24(%rbp)	#, word_
	jne	.L393	#,
	jmp	.L391	#
.L393:
.LBE70:
	.loc 1 1762 0 discriminator 2
	addl	$1, -48(%rbp)	#, bit_num_
.L392:
	.loc 1 1762 0 discriminator 1
	cmpl	$63, -48(%rbp)	#, bit_num_
	jbe	.L394	#,
.L391:
	.loc 1 1762 0 discriminator 2
	movl	$0, -48(%rbp)	#, bit_num_
.LBE69:
	addl	$1, -44(%rbp)	#, word_num_
.L390:
	.loc 1 1762 0 discriminator 1
	cmpl	$1, -44(%rbp)	#, word_num_
	jbe	.L395	#,
	.loc 1 1762 0 discriminator 3
	movl	$0, -44(%rbp)	#, word_num_
	movq	-32(%rbp), %rax	# ptr_, tmp95
	movq	(%rax), %rax	# ptr__2->next, tmp96
	movq	%rax, -32(%rbp)	# tmp96, ptr_
.L389:
	.loc 1 1762 0 discriminator 1
	cmpq	$0, -32(%rbp)	#, ptr_
	jne	.L396	#,
.LBE68:
.LBE67:
	.loc 1 1766 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE39:
	.size	df_ru_local_compute, .-df_ru_local_compute
	.type	df_bb_lr_local_compute, @function
df_bb_lr_local_compute:
.LFB40:
	.loc 1 1774 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -56(%rbp)	# df, df
	movq	%rsi, -64(%rbp)	# bb, bb
	.loc 1 1775 0
	movq	-56(%rbp), %rax	# df, tmp92
	movq	8(%rax), %rdx	# df_6(D)->bbs, D.15952
	movq	-64(%rbp), %rax	# bb, tmp93
	movl	88(%rax), %eax	# bb_8(D)->index, D.15953
	cltq
	salq	$4, %rax	#, tmp95
	leaq	0(,%rax,8), %rcx	#, tmp96
	subq	%rax, %rcx	# tmp94, D.15954
	movq	%rcx, %rax	# D.15954, D.15954
	addq	%rdx, %rax	# D.15952, tmp97
	movq	%rax, -24(%rbp)	# tmp97, bb_info
	.loc 1 1778 0
	movq	-64(%rbp), %rax	# bb, tmp98
	movq	8(%rax), %rax	# bb_8(D)->end, tmp99
	movq	%rax, -40(%rbp)	# tmp99, insn
	jmp	.L398	#
.L410:
.LBB71:
	.loc 1 1781 0
	movq	-40(%rbp), %rax	# insn, tmp100
	movl	8(%rax), %eax	# insn_1->fld[0].rtint, D.15953
	movl	%eax, -48(%rbp)	# D.15953, uid
	.loc 1 1784 0
	movq	-40(%rbp), %rax	# insn, tmp101
	movzwl	(%rax), %eax	# insn_1->code, D.15956
	movzwl	%ax, %eax	# D.15956, D.15953
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.15957
	cmpb	$105, %al	#, D.15957
	je	.L399	#,
	.loc 1 1785 0
	jmp	.L400	#
.L399:
	.loc 1 1787 0
	movq	-56(%rbp), %rax	# df, tmp103
	movq	56(%rax), %rcx	# df_6(D)->insns, D.15958
	movl	-48(%rbp), %edx	# uid, D.15954
	movq	%rdx, %rax	# D.15954, tmp104
	addq	%rax, %rax	# tmp104
	addq	%rdx, %rax	# D.15954, tmp104
	salq	$3, %rax	#, tmp105
	addq	%rcx, %rax	# D.15958, D.15958
	movq	(%rax), %rax	# _24->defs, tmp106
	movq	%rax, -32(%rbp)	# tmp106, link
	jmp	.L401	#
.L404:
.LBB72:
	.loc 1 1789 0
	movq	-32(%rbp), %rax	# link, tmp107
	movq	8(%rax), %rax	# link_2->ref, tmp108
	movq	%rax, -16(%rbp)	# tmp108, def
	.loc 1 1790 0
	movq	-16(%rbp), %rax	# def, tmp109
	movq	(%rax), %rax	# def_26->reg, D.15955
	movzwl	(%rax), %eax	# _27->code, D.15956
	cmpw	$63, %ax	#, D.15956
	jne	.L402	#,
	.loc 1 1790 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# def, tmp110
	movq	(%rax), %rax	# def_26->reg, D.15955
	movq	8(%rax), %rax	# _29->fld[0].rtx, iftmp.68
	jmp	.L403	#
.L402:
	.loc 1 1790 0 discriminator 2
	movq	-16(%rbp), %rax	# def, tmp111
	movq	(%rax), %rax	# def_26->reg, iftmp.68
.L403:
	.loc 1 1790 0 discriminator 3
	movl	8(%rax), %eax	# iftmp.68_4->fld[0].rtuint, tmp112
	movl	%eax, -44(%rbp)	# tmp112, dregno
	.loc 1 1793 0 is_stmt 1 discriminator 3
	movl	-44(%rbp), %edx	# dregno, dregno.69
	movq	-24(%rbp), %rax	# bb_info, tmp113
	movq	64(%rax), %rax	# bb_info_12->lr_def, D.15959
	movl	%edx, %esi	# dregno.69,
	movq	%rax, %rdi	# D.15959,
	call	bitmap_set_bit	#
	.loc 1 1795 0 discriminator 3
	movl	-44(%rbp), %edx	# dregno, dregno.70
	movq	-24(%rbp), %rax	# bb_info, tmp114
	movq	72(%rax), %rax	# bb_info_12->lr_use, D.15959
	movl	%edx, %esi	# dregno.70,
	movq	%rax, %rdi	# D.15959,
	call	bitmap_clear_bit	#
.LBE72:
	.loc 1 1787 0 discriminator 3
	movq	-32(%rbp), %rax	# link, tmp115
	movq	(%rax), %rax	# link_2->next, tmp116
	movq	%rax, -32(%rbp)	# tmp116, link
.L401:
	.loc 1 1787 0 is_stmt 0 discriminator 1
	cmpq	$0, -32(%rbp)	#, link
	jne	.L404	#,
	.loc 1 1798 0 is_stmt 1
	movq	-56(%rbp), %rax	# df, tmp117
	movq	56(%rax), %rcx	# df_6(D)->insns, D.15958
	movl	-48(%rbp), %edx	# uid, D.15954
	movq	%rdx, %rax	# D.15954, tmp118
	addq	%rax, %rax	# tmp118
	addq	%rdx, %rax	# D.15954, tmp118
	salq	$3, %rax	#, tmp119
	addq	%rcx, %rax	# D.15958, D.15958
	movq	8(%rax), %rax	# _41->uses, tmp120
	movq	%rax, -32(%rbp)	# tmp120, link
	jmp	.L405	#
.L408:
.LBB73:
	.loc 1 1800 0
	movq	-32(%rbp), %rax	# link, tmp121
	movq	8(%rax), %rax	# link_3->ref, tmp122
	movq	%rax, -8(%rbp)	# tmp122, use
	.loc 1 1802 0
	movq	-8(%rbp), %rax	# use, tmp123
	movq	(%rax), %rax	# use_43->reg, D.15955
	movzwl	(%rax), %eax	# _44->code, D.15956
	cmpw	$63, %ax	#, D.15956
	jne	.L406	#,
	.loc 1 1802 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# use, tmp124
	movq	(%rax), %rax	# use_43->reg, D.15955
	movq	8(%rax), %rax	# _46->fld[0].rtx, iftmp.71
	jmp	.L407	#
.L406:
	.loc 1 1802 0 discriminator 2
	movq	-8(%rbp), %rax	# use, tmp125
	movq	(%rax), %rax	# use_43->reg, iftmp.71
.L407:
	.loc 1 1802 0 discriminator 3
	movl	8(%rax), %eax	# iftmp.71_5->fld[0].rtuint, D.15960
	movl	%eax, %edx	# D.15960, D.15953
	movq	-24(%rbp), %rax	# bb_info, tmp126
	movq	72(%rax), %rax	# bb_info_12->lr_use, D.15959
	movl	%edx, %esi	# D.15953,
	movq	%rax, %rdi	# D.15959,
	call	bitmap_set_bit	#
.LBE73:
	.loc 1 1798 0 is_stmt 1 discriminator 3
	movq	-32(%rbp), %rax	# link, tmp127
	movq	(%rax), %rax	# link_3->next, tmp128
	movq	%rax, -32(%rbp)	# tmp128, link
.L405:
	.loc 1 1798 0 is_stmt 0 discriminator 1
	cmpq	$0, -32(%rbp)	#, link
	jne	.L408	#,
.L400:
.LBE71:
	.loc 1 1779 0 is_stmt 1
	movq	-40(%rbp), %rax	# insn, tmp129
	movq	16(%rax), %rax	# insn_1->fld[1].rtx, tmp130
	movq	%rax, -40(%rbp)	# tmp130, insn
.L398:
	.loc 1 1778 0 discriminator 1
	cmpq	$0, -40(%rbp)	#, insn
	je	.L409	#,
	.loc 1 1778 0 is_stmt 0 discriminator 2
	movq	-64(%rbp), %rax	# bb, tmp131
	movq	(%rax), %rax	# bb_8(D)->head, D.15955
	movq	16(%rax), %rax	# _14->fld[1].rtx, D.15955
	cmpq	-40(%rbp), %rax	# insn, D.15955
	jne	.L410	#,
.L409:
	.loc 1 1805 0 is_stmt 1
	movq	-24(%rbp), %rax	# bb_info, tmp132
	movl	$1, 104(%rax)	#, bb_info_12->lr_valid
	.loc 1 1806 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE40:
	.size	df_bb_lr_local_compute, .-df_bb_lr_local_compute
	.type	df_lr_local_compute, @function
df_lr_local_compute:
.LFB41:
	.loc 1 1814 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -56(%rbp)	# df, df
	movq	%rsi, -64(%rbp)	# blocks, blocks
.LBB74:
.LBB75:
	.loc 1 1817 0
	movq	-64(%rbp), %rax	# blocks, tmp69
	movq	(%rax), %rax	# blocks_12(D)->first, tmp70
	movq	%rax, -32(%rbp)	# tmp70, ptr_
	movl	$0, -40(%rbp)	#, indx_
	movl	$0, -48(%rbp)	#, bit_num_
	movl	$0, -44(%rbp)	#, word_num_
	jmp	.L412	#
.L414:
	.loc 1 1817 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# ptr_, tmp71
	movq	(%rax), %rax	# ptr__1->next, tmp72
	movq	%rax, -32(%rbp)	# tmp72, ptr_
.L412:
	cmpq	$0, -32(%rbp)	#, ptr_
	je	.L413	#,
	.loc 1 1817 0 discriminator 2
	movq	-32(%rbp), %rax	# ptr_, tmp73
	movl	16(%rax), %eax	# ptr__1->indx, D.15961
	cmpl	-40(%rbp), %eax	# indx_, D.15961
	jb	.L414	#,
.L413:
	.loc 1 1817 0 discriminator 3
	cmpq	$0, -32(%rbp)	#, ptr_
	je	.L415	#,
	.loc 1 1817 0 discriminator 1
	movq	-32(%rbp), %rax	# ptr_, tmp74
	movl	16(%rax), %eax	# ptr__1->indx, D.15961
	cmpl	-40(%rbp), %eax	# indx_, D.15961
	je	.L415	#,
	movl	$0, -48(%rbp)	#, bit_num_
	movl	$0, -44(%rbp)	#, word_num_
	jmp	.L416	#
.L415:
	.loc 1 1817 0 discriminator 2
	jmp	.L416	#
.L423:
	.loc 1 1817 0
	jmp	.L417	#
.L422:
.LBB76:
	.loc 1 1817 0 discriminator 2
	movq	-32(%rbp), %rax	# ptr_, tmp75
	movl	-44(%rbp), %edx	# word_num_, tmp76
	addq	$2, %rdx	#, tmp77
	movq	8(%rax,%rdx,8), %rax	# ptr__2->bits, tmp78
	movq	%rax, -24(%rbp)	# tmp78, word_
	cmpq	$0, -24(%rbp)	#, word_
	je	.L418	#,
	.loc 1 1817 0 discriminator 1
	jmp	.L419	#
.L421:
.LBB77:
	.loc 1 1817 0 discriminator 2
	movl	-48(%rbp), %eax	# bit_num_, bit_num_.72
	movl	$1, %edx	#, tmp79
	movl	%eax, %ecx	# bit_num_.72, tmp98
	salq	%cl, %rdx	# tmp98, tmp80
	movq	%rdx, %rax	# tmp80, tmp80
	movq	%rax, -16(%rbp)	# tmp80, mask_
	movq	-16(%rbp), %rax	# mask_, tmp81
	movq	-24(%rbp), %rdx	# word_, tmp82
	andq	%rdx, %rax	# tmp82, D.15962
	testq	%rax, %rax	# D.15962
	je	.L420	#,
	.loc 1 1817 0 discriminator 1
	movq	-16(%rbp), %rax	# mask_, tmp83
	notq	%rax	# D.15962
	andq	%rax, -24(%rbp)	# D.15962, word_
	movq	-32(%rbp), %rax	# ptr_, tmp84
	movl	16(%rax), %eax	# ptr__2->indx, D.15961
	leal	(%rax,%rax), %edx	#, D.15961
	movl	-44(%rbp), %eax	# word_num_, tmp85
	addl	%edx, %eax	# D.15961, D.15961
	sall	$6, %eax	#, D.15961
	movl	%eax, %edx	# D.15961, D.15961
	movl	-48(%rbp), %eax	# bit_num_, tmp89
	addl	%edx, %eax	# D.15961, tmp88
	movl	%eax, -36(%rbp)	# tmp88, node_
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.73
	movl	-36(%rbp), %edx	# node_, tmp90
	addq	$4, %rdx	#, tmp91
	movq	(%rax,%rdx,8), %rax	# basic_block_info.73_33->data.bb, tmp92
	movq	%rax, -8(%rbp)	# tmp92, bb
	movq	-8(%rbp), %rdx	# bb, tmp93
	movq	-56(%rbp), %rax	# df, tmp94
	movq	%rdx, %rsi	# tmp93,
	movq	%rax, %rdi	# tmp94,
	call	df_bb_lr_local_compute	#
	cmpq	$0, -24(%rbp)	#, word_
	jne	.L420	#,
	jmp	.L418	#
.L420:
.LBE77:
	.loc 1 1817 0 discriminator 2
	addl	$1, -48(%rbp)	#, bit_num_
.L419:
	.loc 1 1817 0 discriminator 1
	cmpl	$63, -48(%rbp)	#, bit_num_
	jbe	.L421	#,
.L418:
	.loc 1 1817 0 discriminator 2
	movl	$0, -48(%rbp)	#, bit_num_
.LBE76:
	addl	$1, -44(%rbp)	#, word_num_
.L417:
	.loc 1 1817 0 discriminator 1
	cmpl	$1, -44(%rbp)	#, word_num_
	jbe	.L422	#,
	.loc 1 1817 0 discriminator 3
	movl	$0, -44(%rbp)	#, word_num_
	movq	-32(%rbp), %rax	# ptr_, tmp95
	movq	(%rax), %rax	# ptr__2->next, tmp96
	movq	%rax, -32(%rbp)	# tmp96, ptr_
.L416:
	.loc 1 1817 0 discriminator 1
	cmpq	$0, -32(%rbp)	#, ptr_
	jne	.L423	#,
.LBE75:
.LBE74:
	.loc 1 1821 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE41:
	.size	df_lr_local_compute, .-df_lr_local_compute
	.type	df_bb_reg_info_compute, @function
df_bb_reg_info_compute:
.LFB42:
	.loc 1 1831 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$144, %rsp	#,
	movq	%rdi, -120(%rbp)	# df, df
	movq	%rsi, -128(%rbp)	# bb, bb
	movq	%rdx, -136(%rbp)	# live, live
	.loc 1 1832 0
	movq	-120(%rbp), %rax	# df, tmp112
	movq	40(%rax), %rax	# df_17(D)->regs, tmp113
	movq	%rax, -40(%rbp)	# tmp113, reg_info
	.loc 1 1833 0
	movq	-120(%rbp), %rax	# df, tmp114
	movq	8(%rax), %rdx	# df_17(D)->bbs, D.15963
	movq	-128(%rbp), %rax	# bb, tmp115
	movl	88(%rax), %eax	# bb_20(D)->index, D.15964
	cltq
	salq	$4, %rax	#, tmp117
	leaq	0(,%rax,8), %rcx	#, tmp118
	subq	%rax, %rcx	# tmp116, D.15965
	movq	%rcx, %rax	# D.15965, D.15965
	addq	%rdx, %rax	# D.15963, tmp119
	movq	%rax, -32(%rbp)	# tmp119, bb_info
	.loc 1 1836 0
	movq	-32(%rbp), %rax	# bb_info, tmp120
	movq	88(%rax), %rdx	# bb_info_24->lr_out, D.15966
	movq	-136(%rbp), %rax	# live, tmp121
	movq	%rdx, %rsi	# D.15966,
	movq	%rax, %rdi	# tmp121,
	call	bitmap_copy	#
	.loc 1 1838 0
	movq	-128(%rbp), %rax	# bb, tmp122
	movq	8(%rax), %rax	# bb_20(D)->end, tmp123
	movq	%rax, -72(%rbp)	# tmp123, insn
	jmp	.L425	#
.L449:
.LBB78:
	.loc 1 1841 0
	movq	-72(%rbp), %rax	# insn, tmp124
	movl	8(%rax), %eax	# insn_1->fld[0].rtint, D.15964
	movl	%eax, -92(%rbp)	# D.15964, uid
	.loc 1 1845 0
	movq	-72(%rbp), %rax	# insn, tmp125
	movzwl	(%rax), %eax	# insn_1->code, D.15968
	movzwl	%ax, %eax	# D.15968, D.15964
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.15969
	cmpb	$105, %al	#, D.15969
	je	.L426	#,
	.loc 1 1846 0
	jmp	.L427	#
.L426:
	.loc 1 1848 0
	movq	-120(%rbp), %rax	# df, tmp127
	movq	56(%rax), %rcx	# df_17(D)->insns, D.15970
	movl	-92(%rbp), %edx	# uid, D.15965
	movq	%rdx, %rax	# D.15965, tmp128
	addq	%rax, %rax	# tmp128
	addq	%rdx, %rax	# D.15965, tmp128
	salq	$3, %rax	#, tmp129
	addq	%rcx, %rax	# D.15970, D.15970
	movq	(%rax), %rax	# _38->defs, tmp130
	movq	%rax, -64(%rbp)	# tmp130, link
	jmp	.L428	#
.L431:
.LBB79:
	.loc 1 1850 0
	movq	-64(%rbp), %rax	# link, tmp131
	movq	8(%rax), %rax	# link_2->ref, tmp132
	movq	%rax, -24(%rbp)	# tmp132, def
	.loc 1 1851 0
	movq	-24(%rbp), %rax	# def, tmp133
	movq	(%rax), %rax	# def_40->reg, D.15967
	movzwl	(%rax), %eax	# _41->code, D.15968
	cmpw	$63, %ax	#, D.15968
	jne	.L429	#,
	.loc 1 1851 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# def, tmp134
	movq	(%rax), %rax	# def_40->reg, D.15967
	movq	8(%rax), %rax	# _43->fld[0].rtx, iftmp.74
	jmp	.L430	#
.L429:
	.loc 1 1851 0 discriminator 2
	movq	-24(%rbp), %rax	# def, tmp135
	movq	(%rax), %rax	# def_40->reg, iftmp.74
.L430:
	.loc 1 1851 0 discriminator 3
	movl	8(%rax), %eax	# iftmp.74_15->fld[0].rtuint, tmp136
	movl	%eax, -88(%rbp)	# tmp136, dregno
	.loc 1 1854 0 is_stmt 1 discriminator 3
	movl	-88(%rbp), %edx	# dregno, dregno.75
	movq	-136(%rbp), %rax	# live, tmp137
	movl	%edx, %esi	# dregno.75,
	movq	%rax, %rdi	# tmp137,
	call	bitmap_clear_bit	#
	.loc 1 1855 0 discriminator 3
	movl	-88(%rbp), %eax	# dregno, D.15965
	salq	$5, %rax	#, D.15965
	movq	%rax, %rdx	# D.15965, D.15965
	movq	-40(%rbp), %rax	# reg_info, tmp138
	addq	%rdx, %rax	# D.15965, D.15971
	movl	20(%rax), %edx	# _50->n_defs, D.15964
	addl	$1, %edx	#, D.15964
	movl	%edx, 20(%rax)	# D.15964, _50->n_defs
.LBE79:
	.loc 1 1848 0 discriminator 3
	movq	-64(%rbp), %rax	# link, tmp139
	movq	(%rax), %rax	# link_2->next, tmp140
	movq	%rax, -64(%rbp)	# tmp140, link
.L428:
	.loc 1 1848 0 is_stmt 0 discriminator 1
	cmpq	$0, -64(%rbp)	#, link
	jne	.L431	#,
	.loc 1 1858 0 is_stmt 1
	movq	-120(%rbp), %rax	# df, tmp141
	movq	56(%rax), %rcx	# df_17(D)->insns, D.15970
	movl	-92(%rbp), %edx	# uid, D.15965
	movq	%rdx, %rax	# D.15965, tmp142
	addq	%rax, %rax	# tmp142
	addq	%rdx, %rax	# D.15965, tmp142
	salq	$3, %rax	#, tmp143
	addq	%rcx, %rax	# D.15970, D.15970
	movq	8(%rax), %rax	# _57->uses, tmp144
	movq	%rax, -64(%rbp)	# tmp144, link
	jmp	.L432	#
.L435:
.LBB80:
	.loc 1 1860 0
	movq	-64(%rbp), %rax	# link, tmp145
	movq	8(%rax), %rax	# link_3->ref, tmp146
	movq	%rax, -16(%rbp)	# tmp146, use
	.loc 1 1861 0
	movq	-16(%rbp), %rax	# use, tmp147
	movq	(%rax), %rax	# use_59->reg, D.15967
	movzwl	(%rax), %eax	# _60->code, D.15968
	cmpw	$63, %ax	#, D.15968
	jne	.L433	#,
	.loc 1 1861 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# use, tmp148
	movq	(%rax), %rax	# use_59->reg, D.15967
	movq	8(%rax), %rax	# _62->fld[0].rtx, iftmp.76
	jmp	.L434	#
.L433:
	.loc 1 1861 0 discriminator 2
	movq	-16(%rbp), %rax	# use, tmp149
	movq	(%rax), %rax	# use_59->reg, iftmp.76
.L434:
	.loc 1 1861 0 discriminator 3
	movl	8(%rax), %eax	# iftmp.76_16->fld[0].rtuint, tmp150
	movl	%eax, -84(%rbp)	# tmp150, uregno
	.loc 1 1864 0 is_stmt 1 discriminator 3
	movl	-84(%rbp), %edx	# uregno, uregno.77
	movq	-136(%rbp), %rax	# live, tmp151
	movl	%edx, %esi	# uregno.77,
	movq	%rax, %rdi	# tmp151,
	call	bitmap_set_bit	#
	.loc 1 1865 0 discriminator 3
	movl	-84(%rbp), %eax	# uregno, D.15965
	salq	$5, %rax	#, D.15965
	movq	%rax, %rdx	# D.15965, D.15965
	movq	-40(%rbp), %rax	# reg_info, tmp152
	addq	%rdx, %rax	# D.15965, D.15971
	movl	24(%rax), %edx	# _69->n_uses, D.15964
	addl	$1, %edx	#, D.15964
	movl	%edx, 24(%rax)	# D.15964, _69->n_uses
.LBE80:
	.loc 1 1858 0 discriminator 3
	movq	-64(%rbp), %rax	# link, tmp153
	movq	(%rax), %rax	# link_3->next, tmp154
	movq	%rax, -64(%rbp)	# tmp154, link
.L432:
	.loc 1 1858 0 is_stmt 0 discriminator 1
	cmpq	$0, -64(%rbp)	#, link
	jne	.L435	#,
.LBB81:
	.loc 1 1869 0 is_stmt 1
	movq	-136(%rbp), %rax	# live, tmp155
	movq	(%rax), %rax	# live_26(D)->first, tmp156
	movq	%rax, -56(%rbp)	# tmp156, ptr_
	movl	$0, -80(%rbp)	#, indx_
	movl	$0, -100(%rbp)	#, bit_num_
	movl	$0, -96(%rbp)	#, word_num_
	jmp	.L436	#
.L438:
	.loc 1 1869 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# ptr_, tmp157
	movq	(%rax), %rax	# ptr__4->next, tmp158
	movq	%rax, -56(%rbp)	# tmp158, ptr_
.L436:
	cmpq	$0, -56(%rbp)	#, ptr_
	je	.L437	#,
	.loc 1 1869 0 discriminator 2
	movq	-56(%rbp), %rax	# ptr_, tmp159
	movl	16(%rax), %eax	# ptr__4->indx, D.15972
	cmpl	-80(%rbp), %eax	# indx_, D.15972
	jb	.L438	#,
.L437:
	.loc 1 1869 0 discriminator 3
	cmpq	$0, -56(%rbp)	#, ptr_
	je	.L439	#,
	.loc 1 1869 0 discriminator 1
	movq	-56(%rbp), %rax	# ptr_, tmp160
	movl	16(%rax), %eax	# ptr__4->indx, D.15972
	cmpl	-80(%rbp), %eax	# indx_, D.15972
	je	.L439	#,
	movl	$0, -100(%rbp)	#, bit_num_
	movl	$0, -96(%rbp)	#, word_num_
	jmp	.L440	#
.L439:
	.loc 1 1869 0 discriminator 2
	jmp	.L440	#
.L447:
	.loc 1 1869 0
	jmp	.L441	#
.L446:
.LBB82:
	.loc 1 1869 0 discriminator 2
	movq	-56(%rbp), %rax	# ptr_, tmp161
	movl	-96(%rbp), %edx	# word_num_, tmp162
	addq	$2, %rdx	#, tmp163
	movq	8(%rax,%rdx,8), %rax	# ptr__5->bits, tmp164
	movq	%rax, -48(%rbp)	# tmp164, word_
	cmpq	$0, -48(%rbp)	#, word_
	je	.L442	#,
	.loc 1 1869 0 discriminator 1
	jmp	.L443	#
.L445:
.LBB83:
	.loc 1 1869 0 discriminator 2
	movl	-100(%rbp), %eax	# bit_num_, bit_num_.78
	movl	$1, %edx	#, tmp165
	movl	%eax, %ecx	# bit_num_.78, tmp186
	salq	%cl, %rdx	# tmp186, tmp166
	movq	%rdx, %rax	# tmp166, tmp166
	movq	%rax, -8(%rbp)	# tmp166, mask_
	movq	-8(%rbp), %rax	# mask_, tmp167
	movq	-48(%rbp), %rdx	# word_, tmp168
	andq	%rdx, %rax	# tmp168, D.15965
	testq	%rax, %rax	# D.15965
	je	.L444	#,
	.loc 1 1869 0 discriminator 1
	movq	-8(%rbp), %rax	# mask_, tmp169
	notq	%rax	# D.15965
	andq	%rax, -48(%rbp)	# D.15965, word_
	movq	-56(%rbp), %rax	# ptr_, tmp170
	movl	16(%rax), %eax	# ptr__5->indx, D.15972
	leal	(%rax,%rax), %edx	#, D.15972
	movl	-96(%rbp), %eax	# word_num_, tmp171
	addl	%edx, %eax	# D.15972, D.15972
	sall	$6, %eax	#, D.15972
	movl	%eax, %edx	# D.15972, D.15972
	movl	-100(%rbp), %eax	# bit_num_, tmp175
	addl	%edx, %eax	# D.15972, tmp174
	movl	%eax, -76(%rbp)	# tmp174, regno
	movl	-76(%rbp), %eax	# regno, D.15965
	salq	$5, %rax	#, D.15965
	movq	%rax, %rdx	# D.15965, D.15965
	movq	-40(%rbp), %rax	# reg_info, tmp176
	addq	%rdx, %rax	# D.15965, D.15971
	movl	16(%rax), %edx	# _95->lifetime, D.15964
	addl	$1, %edx	#, D.15964
	movl	%edx, 16(%rax)	# D.15964, _95->lifetime
	cmpq	$0, -48(%rbp)	#, word_
	jne	.L444	#,
	jmp	.L442	#
.L444:
.LBE83:
	.loc 1 1869 0 discriminator 2
	addl	$1, -100(%rbp)	#, bit_num_
.L443:
	.loc 1 1869 0 discriminator 1
	cmpl	$63, -100(%rbp)	#, bit_num_
	jbe	.L445	#,
.L442:
	.loc 1 1869 0 discriminator 2
	movl	$0, -100(%rbp)	#, bit_num_
.LBE82:
	addl	$1, -96(%rbp)	#, word_num_
.L441:
	.loc 1 1869 0 discriminator 1
	cmpl	$1, -96(%rbp)	#, word_num_
	jbe	.L446	#,
	.loc 1 1869 0 discriminator 3
	movl	$0, -96(%rbp)	#, word_num_
	movq	-56(%rbp), %rax	# ptr_, tmp177
	movq	(%rax), %rax	# ptr__5->next, tmp178
	movq	%rax, -56(%rbp)	# tmp178, ptr_
.L440:
	.loc 1 1869 0 discriminator 1
	cmpq	$0, -56(%rbp)	#, ptr_
	jne	.L447	#,
.L427:
.LBE81:
.LBE78:
	.loc 1 1839 0 is_stmt 1
	movq	-72(%rbp), %rax	# insn, tmp179
	movq	16(%rax), %rax	# insn_1->fld[1].rtx, tmp180
	movq	%rax, -72(%rbp)	# tmp180, insn
.L425:
	.loc 1 1838 0 discriminator 1
	cmpq	$0, -72(%rbp)	#, insn
	je	.L424	#,
	.loc 1 1838 0 is_stmt 0 discriminator 2
	movq	-128(%rbp), %rax	# bb, tmp181
	movq	(%rax), %rax	# bb_20(D)->head, D.15967
	movq	16(%rax), %rax	# _28->fld[1].rtx, D.15967
	cmpq	-72(%rbp), %rax	# insn, D.15967
	jne	.L449	#,
.L424:
	.loc 1 1874 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE42:
	.size	df_bb_reg_info_compute, .-df_bb_reg_info_compute
	.type	df_reg_info_compute, @function
df_reg_info_compute:
.LFB43:
	.loc 1 1882 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movq	%rdi, -72(%rbp)	# df, df
	movq	%rsi, -80(%rbp)	# blocks, blocks
	.loc 1 1886 0
	movl	$24, %edi	#,
	call	xmalloc	#
	movq	%rax, %rdi	# D.15973,
	call	bitmap_initialize	#
	movq	%rax, -24(%rbp)	# tmp71, live
.LBB84:
.LBB85:
	.loc 1 1888 0
	movq	-80(%rbp), %rax	# blocks, tmp72
	movq	(%rax), %rax	# blocks_14(D)->first, tmp73
	movq	%rax, -40(%rbp)	# tmp73, ptr_
	movl	$0, -48(%rbp)	#, indx_
	movl	$0, -56(%rbp)	#, bit_num_
	movl	$0, -52(%rbp)	#, word_num_
	jmp	.L451	#
.L453:
	.loc 1 1888 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# ptr_, tmp74
	movq	(%rax), %rax	# ptr__1->next, tmp75
	movq	%rax, -40(%rbp)	# tmp75, ptr_
.L451:
	cmpq	$0, -40(%rbp)	#, ptr_
	je	.L452	#,
	.loc 1 1888 0 discriminator 2
	movq	-40(%rbp), %rax	# ptr_, tmp76
	movl	16(%rax), %eax	# ptr__1->indx, D.15974
	cmpl	-48(%rbp), %eax	# indx_, D.15974
	jb	.L453	#,
.L452:
	.loc 1 1888 0 discriminator 3
	cmpq	$0, -40(%rbp)	#, ptr_
	je	.L454	#,
	.loc 1 1888 0 discriminator 1
	movq	-40(%rbp), %rax	# ptr_, tmp77
	movl	16(%rax), %eax	# ptr__1->indx, D.15974
	cmpl	-48(%rbp), %eax	# indx_, D.15974
	je	.L454	#,
	movl	$0, -56(%rbp)	#, bit_num_
	movl	$0, -52(%rbp)	#, word_num_
	jmp	.L455	#
.L454:
	.loc 1 1888 0 discriminator 2
	jmp	.L455	#
.L462:
	.loc 1 1888 0
	jmp	.L456	#
.L461:
.LBB86:
	.loc 1 1888 0 discriminator 2
	movq	-40(%rbp), %rax	# ptr_, tmp78
	movl	-52(%rbp), %edx	# word_num_, tmp79
	addq	$2, %rdx	#, tmp80
	movq	8(%rax,%rdx,8), %rax	# ptr__2->bits, tmp81
	movq	%rax, -32(%rbp)	# tmp81, word_
	cmpq	$0, -32(%rbp)	#, word_
	je	.L457	#,
	.loc 1 1888 0 discriminator 1
	jmp	.L458	#
.L460:
.LBB87:
	.loc 1 1888 0 discriminator 2
	movl	-56(%rbp), %eax	# bit_num_, bit_num_.79
	movl	$1, %edx	#, tmp82
	movl	%eax, %ecx	# bit_num_.79, tmp104
	salq	%cl, %rdx	# tmp104, tmp83
	movq	%rdx, %rax	# tmp83, tmp83
	movq	%rax, -16(%rbp)	# tmp83, mask_
	movq	-16(%rbp), %rax	# mask_, tmp84
	movq	-32(%rbp), %rdx	# word_, tmp85
	andq	%rdx, %rax	# tmp85, D.15975
	testq	%rax, %rax	# D.15975
	je	.L459	#,
	.loc 1 1888 0 discriminator 1
	movq	-16(%rbp), %rax	# mask_, tmp86
	notq	%rax	# D.15975
	andq	%rax, -32(%rbp)	# D.15975, word_
	movq	-40(%rbp), %rax	# ptr_, tmp87
	movl	16(%rax), %eax	# ptr__2->indx, D.15974
	leal	(%rax,%rax), %edx	#, D.15974
	movl	-52(%rbp), %eax	# word_num_, tmp88
	addl	%edx, %eax	# D.15974, D.15974
	sall	$6, %eax	#, D.15974
	movl	%eax, %edx	# D.15974, D.15974
	movl	-56(%rbp), %eax	# bit_num_, tmp92
	addl	%edx, %eax	# D.15974, tmp91
	movl	%eax, -44(%rbp)	# tmp91, node_
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.80
	movl	-44(%rbp), %edx	# node_, tmp93
	addq	$4, %rdx	#, tmp94
	movq	(%rax,%rdx,8), %rax	# basic_block_info.80_35->data.bb, tmp95
	movq	%rax, -8(%rbp)	# tmp95, bb
	movq	-24(%rbp), %rdx	# live, tmp96
	movq	-8(%rbp), %rcx	# bb, tmp97
	movq	-72(%rbp), %rax	# df, tmp98
	movq	%rcx, %rsi	# tmp97,
	movq	%rax, %rdi	# tmp98,
	call	df_bb_reg_info_compute	#
	cmpq	$0, -32(%rbp)	#, word_
	jne	.L459	#,
	jmp	.L457	#
.L459:
.LBE87:
	.loc 1 1888 0 discriminator 2
	addl	$1, -56(%rbp)	#, bit_num_
.L458:
	.loc 1 1888 0 discriminator 1
	cmpl	$63, -56(%rbp)	#, bit_num_
	jbe	.L460	#,
.L457:
	.loc 1 1888 0 discriminator 2
	movl	$0, -56(%rbp)	#, bit_num_
.LBE86:
	addl	$1, -52(%rbp)	#, word_num_
.L456:
	.loc 1 1888 0 discriminator 1
	cmpl	$1, -52(%rbp)	#, word_num_
	jbe	.L461	#,
	.loc 1 1888 0 discriminator 3
	movl	$0, -52(%rbp)	#, word_num_
	movq	-40(%rbp), %rax	# ptr_, tmp99
	movq	(%rax), %rax	# ptr__2->next, tmp100
	movq	%rax, -40(%rbp)	# tmp100, ptr_
.L455:
	.loc 1 1888 0 discriminator 1
	cmpq	$0, -40(%rbp)	#, ptr_
	jne	.L462	#,
.LBE85:
.LBE84:
	.loc 1 1893 0 is_stmt 1
	cmpq	$0, -24(%rbp)	#, live
	je	.L450	#,
	.loc 1 1893 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# live, tmp101
	movq	%rax, %rdi	# tmp101,
	call	bitmap_clear	#
	movq	-24(%rbp), %rax	# live, tmp102
	movq	%rax, %rdi	# tmp102,
	call	free	#
	movq	$0, -24(%rbp)	#, live
.L450:
	.loc 1 1894 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE43:
	.size	df_reg_info_compute, .-df_reg_info_compute
	.type	df_bb_luids_set, @function
df_bb_luids_set:
.LFB44:
	.loc 1 1902 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# df, df
	movq	%rsi, -32(%rbp)	# bb, bb
	.loc 1 1904 0
	movl	$0, -12(%rbp)	#, luid
	.loc 1 1908 0
	movq	-32(%rbp), %rax	# bb, tmp76
	movq	(%rax), %rax	# bb_5(D)->head, tmp77
	movq	%rax, -8(%rbp)	# tmp77, insn
.L468:
	.loc 1 1910 0
	movq	-8(%rbp), %rax	# insn, tmp78
	movzwl	(%rax), %eax	# insn_1->code, D.15976
	movzwl	%ax, %eax	# D.15976, D.15977
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.15978
	cmpb	$105, %al	#, D.15978
	jne	.L465	#,
	.loc 1 1911 0
	movq	-24(%rbp), %rax	# df, tmp80
	movq	56(%rax), %rcx	# df_10(D)->insns, D.15979
	movq	-8(%rbp), %rax	# insn, tmp81
	movl	8(%rax), %eax	# insn_1->fld[0].rtint, D.15977
	movslq	%eax, %rdx	# D.15977, D.15980
	movq	%rdx, %rax	# D.15980, tmp82
	addq	%rax, %rax	# tmp82
	addq	%rdx, %rax	# D.15980, tmp82
	salq	$3, %rax	#, tmp83
	addq	%rax, %rcx	# D.15980, D.15979
	movl	-12(%rbp), %eax	# luid, luid.81
	leal	1(%rax), %edx	#, tmp84
	movl	%edx, -12(%rbp)	# tmp84, luid
	movl	%eax, 16(%rcx)	# luid.81, _15->luid
.L465:
	.loc 1 1912 0
	movq	-24(%rbp), %rax	# df, tmp85
	movq	56(%rax), %rcx	# df_10(D)->insns, D.15979
	movq	-8(%rbp), %rax	# insn, tmp86
	movl	8(%rax), %eax	# insn_1->fld[0].rtint, D.15977
	movslq	%eax, %rdx	# D.15977, D.15980
	movq	%rdx, %rax	# D.15980, tmp87
	addq	%rax, %rax	# tmp87
	addq	%rdx, %rax	# D.15980, tmp87
	salq	$3, %rax	#, tmp88
	leaq	(%rcx,%rax), %rdx	#, D.15979
	movl	-12(%rbp), %eax	# luid, tmp89
	movl	%eax, 16(%rdx)	# tmp89, _22->luid
	.loc 1 1914 0
	movq	-32(%rbp), %rax	# bb, tmp90
	movq	8(%rax), %rax	# bb_5(D)->end, D.15981
	cmpq	-8(%rbp), %rax	# insn, D.15981
	jne	.L466	#,
	.loc 1 1915 0
	jmp	.L470	#
.L466:
	.loc 1 1908 0
	movq	-8(%rbp), %rax	# insn, tmp91
	movq	24(%rax), %rax	# insn_1->fld[2].rtx, tmp92
	movq	%rax, -8(%rbp)	# tmp92, insn
	.loc 1 1916 0
	jmp	.L468	#
.L470:
	.loc 1 1917 0
	movl	-12(%rbp), %eax	# luid, D.15977
	.loc 1 1918 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE44:
	.size	df_bb_luids_set, .-df_bb_luids_set
	.type	df_luids_set, @function
df_luids_set:
.LFB45:
	.loc 1 1926 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movq	%rdi, -72(%rbp)	# df, df
	movq	%rsi, -80(%rbp)	# blocks, blocks
	.loc 1 1928 0
	movl	$0, -52(%rbp)	#, total
.LBB88:
.LBB89:
	.loc 1 1930 0
	movq	-80(%rbp), %rax	# blocks, tmp72
	movq	(%rax), %rax	# blocks_18(D)->first, tmp73
	movq	%rax, -32(%rbp)	# tmp73, ptr_
	movl	$0, -40(%rbp)	#, indx_
	movl	$0, -48(%rbp)	#, bit_num_
	movl	$0, -44(%rbp)	#, word_num_
	jmp	.L472	#
.L474:
	.loc 1 1930 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# ptr_, tmp74
	movq	(%rax), %rax	# ptr__6->next, tmp75
	movq	%rax, -32(%rbp)	# tmp75, ptr_
.L472:
	cmpq	$0, -32(%rbp)	#, ptr_
	je	.L473	#,
	.loc 1 1930 0 discriminator 2
	movq	-32(%rbp), %rax	# ptr_, tmp76
	movl	16(%rax), %eax	# ptr__6->indx, D.15982
	cmpl	-40(%rbp), %eax	# indx_, D.15982
	jb	.L474	#,
.L473:
	.loc 1 1930 0 discriminator 3
	cmpq	$0, -32(%rbp)	#, ptr_
	je	.L475	#,
	.loc 1 1930 0 discriminator 1
	movq	-32(%rbp), %rax	# ptr_, tmp77
	movl	16(%rax), %eax	# ptr__6->indx, D.15982
	cmpl	-40(%rbp), %eax	# indx_, D.15982
	je	.L475	#,
	movl	$0, -48(%rbp)	#, bit_num_
	movl	$0, -44(%rbp)	#, word_num_
	jmp	.L476	#
.L475:
	.loc 1 1930 0 discriminator 2
	jmp	.L476	#
.L483:
	.loc 1 1930 0
	jmp	.L477	#
.L482:
.LBB90:
	.loc 1 1930 0 discriminator 2
	movq	-32(%rbp), %rax	# ptr_, tmp78
	movl	-44(%rbp), %edx	# word_num_, tmp79
	addq	$2, %rdx	#, tmp80
	movq	8(%rax,%rdx,8), %rax	# ptr__7->bits, tmp81
	movq	%rax, -24(%rbp)	# tmp81, word_
	cmpq	$0, -24(%rbp)	#, word_
	je	.L478	#,
	.loc 1 1930 0 discriminator 1
	jmp	.L479	#
.L481:
.LBB91:
	.loc 1 1930 0 discriminator 2
	movl	-48(%rbp), %eax	# bit_num_, bit_num_.82
	movl	$1, %edx	#, tmp82
	movl	%eax, %ecx	# bit_num_.82, tmp102
	salq	%cl, %rdx	# tmp102, tmp83
	movq	%rdx, %rax	# tmp83, tmp83
	movq	%rax, -16(%rbp)	# tmp83, mask_
	movq	-16(%rbp), %rax	# mask_, tmp84
	movq	-24(%rbp), %rdx	# word_, tmp85
	andq	%rdx, %rax	# tmp85, D.15983
	testq	%rax, %rax	# D.15983
	je	.L480	#,
	.loc 1 1930 0 discriminator 1
	movq	-16(%rbp), %rax	# mask_, tmp86
	notq	%rax	# D.15983
	andq	%rax, -24(%rbp)	# D.15983, word_
	movq	-32(%rbp), %rax	# ptr_, tmp87
	movl	16(%rax), %eax	# ptr__7->indx, D.15982
	leal	(%rax,%rax), %edx	#, D.15982
	movl	-44(%rbp), %eax	# word_num_, tmp88
	addl	%edx, %eax	# D.15982, D.15982
	sall	$6, %eax	#, D.15982
	movl	%eax, %edx	# D.15982, D.15982
	movl	-48(%rbp), %eax	# bit_num_, tmp92
	addl	%edx, %eax	# D.15982, tmp91
	movl	%eax, -36(%rbp)	# tmp91, node_
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.83
	movl	-36(%rbp), %edx	# node_, tmp93
	addq	$4, %rdx	#, tmp94
	movq	(%rax,%rdx,8), %rax	# basic_block_info.83_39->data.bb, tmp95
	movq	%rax, -8(%rbp)	# tmp95, bb
	movq	-8(%rbp), %rdx	# bb, tmp96
	movq	-72(%rbp), %rax	# df, tmp97
	movq	%rdx, %rsi	# tmp96,
	movq	%rax, %rdi	# tmp97,
	call	df_bb_luids_set	#
	addl	%eax, -52(%rbp)	# D.15984, total
	cmpq	$0, -24(%rbp)	#, word_
	jne	.L480	#,
	jmp	.L478	#
.L480:
.LBE91:
	.loc 1 1930 0 discriminator 2
	addl	$1, -48(%rbp)	#, bit_num_
.L479:
	.loc 1 1930 0 discriminator 1
	cmpl	$63, -48(%rbp)	#, bit_num_
	jbe	.L481	#,
.L478:
	.loc 1 1930 0 discriminator 2
	movl	$0, -48(%rbp)	#, bit_num_
.LBE90:
	addl	$1, -44(%rbp)	#, word_num_
.L477:
	.loc 1 1930 0 discriminator 1
	cmpl	$1, -44(%rbp)	#, word_num_
	jbe	.L482	#,
	.loc 1 1930 0 discriminator 3
	movl	$0, -44(%rbp)	#, word_num_
	movq	-32(%rbp), %rax	# ptr_, tmp98
	movq	(%rax), %rax	# ptr__7->next, tmp99
	movq	%rax, -32(%rbp)	# tmp99, ptr_
.L476:
	.loc 1 1930 0 discriminator 1
	cmpq	$0, -32(%rbp)	#, ptr_
	jne	.L483	#,
.LBE89:
.LBE88:
	.loc 1 1934 0 is_stmt 1
	movl	-52(%rbp), %eax	# total, D.15984
	.loc 1 1935 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE45:
	.size	df_luids_set, .-df_luids_set
	.type	df_analyse_1, @function
df_analyse_1:
.LFB46:
	.loc 1 1945 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$192, %rsp	#,
	movq	%rdi, -136(%rbp)	# df, df
	movq	%rsi, -144(%rbp)	# blocks, blocks
	movl	%edx, -148(%rbp)	# flags, flags
	movl	%ecx, -152(%rbp)	# update, update
	.loc 1 1949 0
	movl	$0, -116(%rbp)	#, dflags
	.loc 1 1950 0
	movl	-148(%rbp), %eax	# flags, tmp323
	movl	%eax, -120(%rbp)	# tmp323, aflags
	.loc 1 1951 0
	movl	-148(%rbp), %eax	# flags, tmp324
	andl	$16, %eax	#, D.15985
	testl	%eax, %eax	# D.15985
	je	.L486	#,
	.loc 1 1952 0
	orl	$65, -120(%rbp)	#, aflags
.L486:
	.loc 1 1954 0
	movl	-148(%rbp), %eax	# flags, tmp325
	andl	$8, %eax	#, D.15985
	testl	%eax, %eax	# D.15985
	je	.L487	#,
	.loc 1 1955 0
	orl	$2, -120(%rbp)	#, aflags
.L487:
	.loc 1 1957 0
	movl	-148(%rbp), %eax	# flags, tmp326
	andl	$2, %eax	#, D.15985
	testl	%eax, %eax	# D.15985
	je	.L488	#,
	.loc 1 1958 0
	orl	$128, -120(%rbp)	#, aflags
.L488:
	.loc 1 1960 0
	movl	-148(%rbp), %eax	# flags, tmp327
	andl	$32, %eax	#, D.15985
	testl	%eax, %eax	# D.15985
	je	.L489	#,
	.loc 1 1961 0
	orl	$4, -120(%rbp)	#, aflags
.L489:
	.loc 1 1963 0
	cmpq	$0, -144(%rbp)	#, blocks
	jne	.L490	#,
	.loc 1 1964 0
	movq	-136(%rbp), %rax	# df, tmp328
	movq	128(%rax), %rax	# df_27(D)->all_blocks, tmp329
	movq	%rax, -144(%rbp)	# tmp329, blocks
.L490:
	.loc 1 1966 0
	movq	-136(%rbp), %rax	# df, tmp330
	movl	-148(%rbp), %edx	# flags, tmp331
	movl	%edx, (%rax)	# tmp331, df_27(D)->flags
	.loc 1 1967 0
	cmpl	$0, -152(%rbp)	#, update
	je	.L491	#,
	.loc 1 1969 0
	movq	-136(%rbp), %rax	# df, tmp332
	movq	%rax, %rdi	# tmp332,
	call	df_refs_update	#
	jmp	.L492	#
.L491:
	.loc 1 1983 0
	movq	-136(%rbp), %rax	# df, tmp333
	movq	%rax, %rdi	# tmp333,
	call	df_refs_queue	#
	.loc 1 1984 0
	movq	-144(%rbp), %rdx	# blocks, tmp334
	movq	-136(%rbp), %rax	# df, tmp335
	movq	%rdx, %rsi	# tmp334,
	movq	%rax, %rdi	# tmp335,
	call	df_refs_record	#
	.loc 1 1987 0
	movq	-136(%rbp), %rax	# df, tmp336
	movq	%rax, %rdi	# tmp336,
	call	df_refs_process	#
.L492:
	.loc 1 1993 0
	movl	-120(%rbp), %edx	# aflags, tmp337
	movq	-136(%rbp), %rax	# df, tmp338
	movl	%edx, %esi	# tmp337,
	movq	%rax, %rdi	# tmp338,
	call	df_bitmaps_alloc	#
	.loc 1 1996 0
	movq	-144(%rbp), %rdx	# blocks, tmp339
	movq	-136(%rbp), %rax	# df, tmp340
	movq	%rdx, %rsi	# tmp339,
	movq	%rax, %rdi	# tmp340,
	call	df_luids_set	#
	.loc 1 2002 0
	movl	-120(%rbp), %eax	# aflags, tmp341
	andl	$64, %eax	#, D.15985
	testl	%eax, %eax	# D.15985
	je	.L493	#,
	.loc 1 2004 0
	movq	-144(%rbp), %rdx	# blocks, tmp342
	movq	-136(%rbp), %rax	# df, tmp343
	movq	%rdx, %rsi	# tmp342,
	movq	%rax, %rdi	# tmp343,
	call	df_reg_def_chain_create	#
.L493:
	.loc 1 2007 0
	movl	-120(%rbp), %eax	# aflags, tmp344
	andl	$128, %eax	#, D.15985
	testl	%eax, %eax	# D.15985
	je	.L494	#,
	.loc 1 2009 0
	movq	-144(%rbp), %rdx	# blocks, tmp345
	movq	-136(%rbp), %rax	# df, tmp346
	movq	%rdx, %rsi	# tmp345,
	movq	%rax, %rdi	# tmp346,
	call	df_reg_use_chain_create	#
.L494:
	.loc 1 2012 0
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.84
	cltq
	salq	$2, %rax	#, D.15986
	movq	%rax, %rdi	# D.15986,
	call	xmalloc	#
	movq	%rax, %rdx	# tmp347, D.15987
	movq	-136(%rbp), %rax	# df, tmp348
	movq	%rdx, 144(%rax)	# D.15987, df_27(D)->dfs_order
	.loc 1 2013 0
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.85
	cltq
	salq	$2, %rax	#, D.15986
	movq	%rax, %rdi	# D.15986,
	call	xmalloc	#
	movq	%rax, %rdx	# tmp349, D.15987
	movq	-136(%rbp), %rax	# df, tmp350
	movq	%rdx, 152(%rax)	# D.15987, df_27(D)->rc_order
	.loc 1 2014 0
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.86
	cltq
	salq	$2, %rax	#, D.15986
	movq	%rax, %rdi	# D.15986,
	call	xmalloc	#
	movq	%rax, %rdx	# tmp351, D.15987
	movq	-136(%rbp), %rax	# df, tmp352
	movq	%rdx, 160(%rax)	# D.15987, df_27(D)->rts_order
	.loc 1 2015 0
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.87
	cltq
	salq	$2, %rax	#, D.15986
	movq	%rax, %rdi	# D.15986,
	call	xmalloc	#
	movq	%rax, %rdx	# tmp353, D.15987
	movq	-136(%rbp), %rax	# df, tmp354
	movq	%rdx, 176(%rax)	# D.15987, df_27(D)->inverse_dfs_map
	.loc 1 2016 0
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.88
	cltq
	salq	$2, %rax	#, D.15986
	movq	%rax, %rdi	# D.15986,
	call	xmalloc	#
	movq	%rax, %rdx	# tmp355, D.15987
	movq	-136(%rbp), %rax	# df, tmp356
	movq	%rdx, 168(%rax)	# D.15987, df_27(D)->inverse_rc_map
	.loc 1 2017 0
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.89
	cltq
	salq	$2, %rax	#, D.15986
	movq	%rax, %rdi	# D.15986,
	call	xmalloc	#
	movq	%rax, %rdx	# tmp357, D.15987
	movq	-136(%rbp), %rax	# df, tmp358
	movq	%rdx, 184(%rax)	# D.15987, df_27(D)->inverse_rts_map
	.loc 1 2019 0
	movq	-136(%rbp), %rax	# df, tmp359
	movq	152(%rax), %rdx	# df_27(D)->rc_order, D.15988
	movq	-136(%rbp), %rax	# df, tmp360
	movq	144(%rax), %rax	# df_27(D)->dfs_order, D.15988
	movq	%rdx, %rsi	# D.15988,
	movq	%rax, %rdi	# D.15988,
	call	flow_depth_first_order_compute	#
	.loc 1 2020 0
	movq	-136(%rbp), %rax	# df, tmp361
	movq	160(%rax), %rax	# df_27(D)->rts_order, D.15988
	movq	%rax, %rdi	# D.15988,
	call	flow_reverse_top_sort_order_compute	#
	.loc 1 2021 0
	movl	$0, -112(%rbp)	#, i
	jmp	.L495	#
.L496:
	.loc 1 2023 0 discriminator 2
	movq	-136(%rbp), %rax	# df, tmp362
	movq	176(%rax), %rdx	# df_27(D)->inverse_dfs_map, D.15988
	movq	-136(%rbp), %rax	# df, tmp363
	movq	144(%rax), %rax	# df_27(D)->dfs_order, D.15988
	movl	-112(%rbp), %ecx	# i, tmp364
	movslq	%ecx, %rcx	# tmp364, D.15986
	salq	$2, %rcx	#, D.15986
	addq	%rcx, %rax	# D.15986, D.15988
	movl	(%rax), %eax	# *_65, D.15985
	cltq
	salq	$2, %rax	#, D.15986
	addq	%rax, %rdx	# D.15986, D.15988
	movl	-112(%rbp), %eax	# i, tmp365
	movl	%eax, (%rdx)	# tmp365, *_69
	.loc 1 2024 0 discriminator 2
	movq	-136(%rbp), %rax	# df, tmp366
	movq	168(%rax), %rdx	# df_27(D)->inverse_rc_map, D.15988
	movq	-136(%rbp), %rax	# df, tmp367
	movq	152(%rax), %rax	# df_27(D)->rc_order, D.15988
	movl	-112(%rbp), %ecx	# i, tmp368
	movslq	%ecx, %rcx	# tmp368, D.15986
	salq	$2, %rcx	#, D.15986
	addq	%rcx, %rax	# D.15986, D.15988
	movl	(%rax), %eax	# *_74, D.15985
	cltq
	salq	$2, %rax	#, D.15986
	addq	%rax, %rdx	# D.15986, D.15988
	movl	-112(%rbp), %eax	# i, tmp369
	movl	%eax, (%rdx)	# tmp369, *_78
	.loc 1 2025 0 discriminator 2
	movq	-136(%rbp), %rax	# df, tmp370
	movq	184(%rax), %rdx	# df_27(D)->inverse_rts_map, D.15988
	movq	-136(%rbp), %rax	# df, tmp371
	movq	160(%rax), %rax	# df_27(D)->rts_order, D.15988
	movl	-112(%rbp), %ecx	# i, tmp372
	movslq	%ecx, %rcx	# tmp372, D.15986
	salq	$2, %rcx	#, D.15986
	addq	%rcx, %rax	# D.15986, D.15988
	movl	(%rax), %eax	# *_83, D.15985
	cltq
	salq	$2, %rax	#, D.15986
	addq	%rax, %rdx	# D.15986, D.15988
	movl	-112(%rbp), %eax	# i, tmp373
	movl	%eax, (%rdx)	# tmp373, *_87
	.loc 1 2021 0 discriminator 2
	addl	$1, -112(%rbp)	#, i
.L495:
	.loc 1 2021 0 is_stmt 0 discriminator 1
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.90
	cmpl	%eax, -112(%rbp)	# n_basic_blocks.90, i
	jl	.L496	#,
	.loc 1 2027 0 is_stmt 1
	movl	-120(%rbp), %eax	# aflags, tmp374
	andl	$1, %eax	#, D.15985
	testl	%eax, %eax	# D.15985
	je	.L497	#,
	.loc 1 2030 0
	movq	-136(%rbp), %rax	# df, tmp375
	movl	(%rax), %eax	# df_27(D)->flags, D.15985
	andl	$1, %eax	#, D.15985
	testl	%eax, %eax	# D.15985
	jne	.L498	#,
	.loc 1 2030 0 is_stmt 0 discriminator 1
	movq	-136(%rbp), %rax	# df, tmp376
	movq	128(%rax), %rax	# df_27(D)->all_blocks, iftmp.91
	jmp	.L499	#
.L498:
	.loc 1 2030 0 discriminator 2
	movq	-144(%rbp), %rax	# blocks, iftmp.91
.L499:
	.loc 1 2030 0 discriminator 3
	movq	-136(%rbp), %rdx	# df, tmp377
	movq	%rax, %rsi	# iftmp.91,
	movq	%rdx, %rdi	# tmp377,
	call	df_rd_local_compute	#
.LBB92:
	.loc 1 2033 0 is_stmt 1 discriminator 3
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.92
	cltq
	salq	$3, %rax	#, D.15986
	movq	%rax, %rdi	# D.15986,
	call	xmalloc	#
	movq	%rax, -96(%rbp)	# tmp378, in
	.loc 1 2034 0 discriminator 3
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.93
	cltq
	salq	$3, %rax	#, D.15986
	movq	%rax, %rdi	# D.15986,
	call	xmalloc	#
	movq	%rax, -88(%rbp)	# tmp379, out
	.loc 1 2035 0 discriminator 3
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.94
	cltq
	salq	$3, %rax	#, D.15986
	movq	%rax, %rdi	# D.15986,
	call	xmalloc	#
	movq	%rax, -80(%rbp)	# tmp380, gen
	.loc 1 2036 0 discriminator 3
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.95
	cltq
	salq	$3, %rax	#, D.15986
	movq	%rax, %rdi	# D.15986,
	call	xmalloc	#
	movq	%rax, -72(%rbp)	# tmp381, kill
	.loc 1 2037 0 discriminator 3
	movl	$0, -108(%rbp)	#, i
	jmp	.L500	#
.L501:
	.loc 1 2039 0 discriminator 2
	movl	-108(%rbp), %eax	# i, tmp382
	cltq
	leaq	0(,%rax,8), %rdx	#, D.15986
	movq	-96(%rbp), %rax	# in, tmp383
	addq	%rax, %rdx	# tmp383, D.15989
	movq	-136(%rbp), %rax	# df, tmp384
	movq	8(%rax), %rcx	# df_27(D)->bbs, D.15990
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.96
	movl	-108(%rbp), %esi	# i, tmp386
	movslq	%esi, %rsi	# tmp386, tmp385
	addq	$4, %rsi	#, tmp387
	movq	(%rax,%rsi,8), %rax	# basic_block_info.96_116->data.bb, D.15991
	movl	88(%rax), %eax	# _117->index, D.15985
	cltq
	salq	$4, %rax	#, tmp389
	leaq	0(,%rax,8), %rsi	#, tmp390
	subq	%rax, %rsi	# tmp388, D.15986
	movq	%rsi, %rax	# D.15986, D.15986
	addq	%rcx, %rax	# D.15990, D.15990
	movq	16(%rax), %rax	# _121->rd_in, D.15992
	movq	%rax, (%rdx)	# D.15992, *_114
	.loc 1 2040 0 discriminator 2
	movl	-108(%rbp), %eax	# i, tmp391
	cltq
	leaq	0(,%rax,8), %rdx	#, D.15986
	movq	-88(%rbp), %rax	# out, tmp392
	addq	%rax, %rdx	# tmp392, D.15989
	movq	-136(%rbp), %rax	# df, tmp393
	movq	8(%rax), %rcx	# df_27(D)->bbs, D.15990
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.97
	movl	-108(%rbp), %esi	# i, tmp395
	movslq	%esi, %rsi	# tmp395, tmp394
	addq	$4, %rsi	#, tmp396
	movq	(%rax,%rsi,8), %rax	# basic_block_info.97_127->data.bb, D.15991
	movl	88(%rax), %eax	# _128->index, D.15985
	cltq
	salq	$4, %rax	#, tmp398
	leaq	0(,%rax,8), %rsi	#, tmp399
	subq	%rax, %rsi	# tmp397, D.15986
	movq	%rsi, %rax	# D.15986, D.15986
	addq	%rcx, %rax	# D.15990, D.15990
	movq	24(%rax), %rax	# _132->rd_out, D.15992
	movq	%rax, (%rdx)	# D.15992, *_125
	.loc 1 2041 0 discriminator 2
	movl	-108(%rbp), %eax	# i, tmp400
	cltq
	leaq	0(,%rax,8), %rdx	#, D.15986
	movq	-80(%rbp), %rax	# gen, tmp401
	addq	%rax, %rdx	# tmp401, D.15989
	movq	-136(%rbp), %rax	# df, tmp402
	movq	8(%rax), %rcx	# df_27(D)->bbs, D.15990
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.98
	movl	-108(%rbp), %esi	# i, tmp404
	movslq	%esi, %rsi	# tmp404, tmp403
	addq	$4, %rsi	#, tmp405
	movq	(%rax,%rsi,8), %rax	# basic_block_info.98_138->data.bb, D.15991
	movl	88(%rax), %eax	# _139->index, D.15985
	cltq
	salq	$4, %rax	#, tmp407
	leaq	0(,%rax,8), %rsi	#, tmp408
	subq	%rax, %rsi	# tmp406, D.15986
	movq	%rsi, %rax	# D.15986, D.15986
	addq	%rcx, %rax	# D.15990, D.15990
	movq	8(%rax), %rax	# _143->rd_gen, D.15992
	movq	%rax, (%rdx)	# D.15992, *_136
	.loc 1 2042 0 discriminator 2
	movl	-108(%rbp), %eax	# i, tmp409
	cltq
	leaq	0(,%rax,8), %rdx	#, D.15986
	movq	-72(%rbp), %rax	# kill, tmp410
	addq	%rax, %rdx	# tmp410, D.15989
	movq	-136(%rbp), %rax	# df, tmp411
	movq	8(%rax), %rcx	# df_27(D)->bbs, D.15990
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.99
	movl	-108(%rbp), %esi	# i, tmp413
	movslq	%esi, %rsi	# tmp413, tmp412
	addq	$4, %rsi	#, tmp414
	movq	(%rax,%rsi,8), %rax	# basic_block_info.99_149->data.bb, D.15991
	movl	88(%rax), %eax	# _150->index, D.15985
	cltq
	salq	$4, %rax	#, tmp416
	leaq	0(,%rax,8), %rsi	#, tmp417
	subq	%rax, %rsi	# tmp415, D.15986
	movq	%rsi, %rax	# D.15986, D.15986
	addq	%rcx, %rax	# D.15990, D.15990
	movq	(%rax), %rax	# _154->rd_kill, D.15992
	movq	%rax, (%rdx)	# D.15992, *_147
	.loc 1 2037 0 discriminator 2
	addl	$1, -108(%rbp)	#, i
.L500:
	.loc 1 2037 0 is_stmt 0 discriminator 1
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.100
	cmpl	%eax, -108(%rbp)	# n_basic_blocks.100, i
	jl	.L501	#,
	.loc 1 2044 0 is_stmt 1
	movq	-136(%rbp), %rax	# df, tmp418
	movq	168(%rax), %rdi	# df_27(D)->inverse_rc_map, D.15988
	movq	-136(%rbp), %rax	# df, tmp419
	movq	128(%rax), %r8	# df_27(D)->all_blocks, D.15992
	movq	-72(%rbp), %rcx	# kill, tmp420
	movq	-80(%rbp), %rdx	# gen, tmp421
	movq	-88(%rbp), %rsi	# out, tmp422
	movq	-96(%rbp), %rax	# in, tmp423
	movq	$0, 24(%rsp)	#,
	movq	%rdi, 16(%rsp)	# D.15988,
	movq	$df_rd_transfer_function, 8(%rsp)	#,
	movl	$0, (%rsp)	#,
	movl	$0, %r9d	#,
	movq	%rax, %rdi	# tmp423,
	call	iterative_dataflow_bitmap	#
	.loc 1 2047 0
	movq	-96(%rbp), %rax	# in, tmp424
	movq	%rax, %rdi	# tmp424,
	call	free	#
	.loc 1 2048 0
	movq	-88(%rbp), %rax	# out, tmp425
	movq	%rax, %rdi	# tmp425,
	call	free	#
	.loc 1 2049 0
	movq	-80(%rbp), %rax	# gen, tmp426
	movq	%rax, %rdi	# tmp426,
	call	free	#
	.loc 1 2050 0
	movq	-72(%rbp), %rax	# kill, tmp427
	movq	%rax, %rdi	# tmp427,
	call	free	#
.L497:
.LBE92:
	.loc 1 2054 0
	movl	-120(%rbp), %eax	# aflags, tmp428
	andl	$16, %eax	#, D.15985
	testl	%eax, %eax	# D.15985
	je	.L502	#,
	.loc 1 2057 0
	movq	-136(%rbp), %rax	# df, tmp429
	movq	128(%rax), %rdx	# df_27(D)->all_blocks, D.15992
	movq	-136(%rbp), %rax	# df, tmp430
	movq	%rdx, %rsi	# D.15992,
	movq	%rax, %rdi	# tmp430,
	call	df_ud_chain_create	#
	.loc 1 2059 0
	movl	-148(%rbp), %eax	# flags, tmp431
	andl	$1, %eax	#, D.15985
	testl	%eax, %eax	# D.15985
	jne	.L502	#,
	.loc 1 2060 0
	orl	$1, -116(%rbp)	#, dflags
.L502:
	.loc 1 2063 0
	movl	-120(%rbp), %eax	# aflags, tmp432
	andl	$2, %eax	#, D.15985
	testl	%eax, %eax	# D.15985
	je	.L503	#,
	.loc 1 2067 0
	movq	-136(%rbp), %rax	# df, tmp433
	movl	(%rax), %eax	# df_27(D)->flags, D.15985
	andl	$2, %eax	#, D.15985
	testl	%eax, %eax	# D.15985
	jne	.L504	#,
	.loc 1 2067 0 is_stmt 0 discriminator 1
	movq	-136(%rbp), %rax	# df, tmp434
	movq	128(%rax), %rax	# df_27(D)->all_blocks, iftmp.101
	jmp	.L505	#
.L504:
	.loc 1 2067 0 discriminator 2
	movq	-144(%rbp), %rax	# blocks, iftmp.101
.L505:
	.loc 1 2067 0 discriminator 3
	movq	-136(%rbp), %rdx	# df, tmp435
	movq	%rax, %rsi	# iftmp.101,
	movq	%rdx, %rdi	# tmp435,
	call	df_ru_local_compute	#
.LBB93:
	.loc 1 2070 0 is_stmt 1 discriminator 3
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.102
	cltq
	salq	$3, %rax	#, D.15986
	movq	%rax, %rdi	# D.15986,
	call	xmalloc	#
	movq	%rax, -64(%rbp)	# tmp436, in
	.loc 1 2071 0 discriminator 3
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.103
	cltq
	salq	$3, %rax	#, D.15986
	movq	%rax, %rdi	# D.15986,
	call	xmalloc	#
	movq	%rax, -56(%rbp)	# tmp437, out
	.loc 1 2072 0 discriminator 3
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.104
	cltq
	salq	$3, %rax	#, D.15986
	movq	%rax, %rdi	# D.15986,
	call	xmalloc	#
	movq	%rax, -48(%rbp)	# tmp438, gen
	.loc 1 2073 0 discriminator 3
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.105
	cltq
	salq	$3, %rax	#, D.15986
	movq	%rax, %rdi	# D.15986,
	call	xmalloc	#
	movq	%rax, -40(%rbp)	# tmp439, kill
	.loc 1 2074 0 discriminator 3
	movl	$0, -104(%rbp)	#, i
	jmp	.L506	#
.L507:
	.loc 1 2076 0 discriminator 2
	movl	-104(%rbp), %eax	# i, tmp440
	cltq
	leaq	0(,%rax,8), %rdx	#, D.15986
	movq	-64(%rbp), %rax	# in, tmp441
	addq	%rax, %rdx	# tmp441, D.15989
	movq	-136(%rbp), %rax	# df, tmp442
	movq	8(%rax), %rcx	# df_27(D)->bbs, D.15990
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.106
	movl	-104(%rbp), %esi	# i, tmp444
	movslq	%esi, %rsi	# tmp444, tmp443
	addq	$4, %rsi	#, tmp445
	movq	(%rax,%rsi,8), %rax	# basic_block_info.106_190->data.bb, D.15991
	movl	88(%rax), %eax	# _191->index, D.15985
	cltq
	salq	$4, %rax	#, tmp447
	leaq	0(,%rax,8), %rsi	#, tmp448
	subq	%rax, %rsi	# tmp446, D.15986
	movq	%rsi, %rax	# D.15986, D.15986
	addq	%rcx, %rax	# D.15990, D.15990
	movq	48(%rax), %rax	# _195->ru_in, D.15992
	movq	%rax, (%rdx)	# D.15992, *_188
	.loc 1 2077 0 discriminator 2
	movl	-104(%rbp), %eax	# i, tmp449
	cltq
	leaq	0(,%rax,8), %rdx	#, D.15986
	movq	-56(%rbp), %rax	# out, tmp450
	addq	%rax, %rdx	# tmp450, D.15989
	movq	-136(%rbp), %rax	# df, tmp451
	movq	8(%rax), %rcx	# df_27(D)->bbs, D.15990
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.107
	movl	-104(%rbp), %esi	# i, tmp453
	movslq	%esi, %rsi	# tmp453, tmp452
	addq	$4, %rsi	#, tmp454
	movq	(%rax,%rsi,8), %rax	# basic_block_info.107_201->data.bb, D.15991
	movl	88(%rax), %eax	# _202->index, D.15985
	cltq
	salq	$4, %rax	#, tmp456
	leaq	0(,%rax,8), %rsi	#, tmp457
	subq	%rax, %rsi	# tmp455, D.15986
	movq	%rsi, %rax	# D.15986, D.15986
	addq	%rcx, %rax	# D.15990, D.15990
	movq	56(%rax), %rax	# _206->ru_out, D.15992
	movq	%rax, (%rdx)	# D.15992, *_199
	.loc 1 2078 0 discriminator 2
	movl	-104(%rbp), %eax	# i, tmp458
	cltq
	leaq	0(,%rax,8), %rdx	#, D.15986
	movq	-48(%rbp), %rax	# gen, tmp459
	addq	%rax, %rdx	# tmp459, D.15989
	movq	-136(%rbp), %rax	# df, tmp460
	movq	8(%rax), %rcx	# df_27(D)->bbs, D.15990
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.108
	movl	-104(%rbp), %esi	# i, tmp462
	movslq	%esi, %rsi	# tmp462, tmp461
	addq	$4, %rsi	#, tmp463
	movq	(%rax,%rsi,8), %rax	# basic_block_info.108_212->data.bb, D.15991
	movl	88(%rax), %eax	# _213->index, D.15985
	cltq
	salq	$4, %rax	#, tmp465
	leaq	0(,%rax,8), %rsi	#, tmp466
	subq	%rax, %rsi	# tmp464, D.15986
	movq	%rsi, %rax	# D.15986, D.15986
	addq	%rcx, %rax	# D.15990, D.15990
	movq	40(%rax), %rax	# _217->ru_gen, D.15992
	movq	%rax, (%rdx)	# D.15992, *_210
	.loc 1 2079 0 discriminator 2
	movl	-104(%rbp), %eax	# i, tmp467
	cltq
	leaq	0(,%rax,8), %rdx	#, D.15986
	movq	-40(%rbp), %rax	# kill, tmp468
	addq	%rax, %rdx	# tmp468, D.15989
	movq	-136(%rbp), %rax	# df, tmp469
	movq	8(%rax), %rcx	# df_27(D)->bbs, D.15990
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.109
	movl	-104(%rbp), %esi	# i, tmp471
	movslq	%esi, %rsi	# tmp471, tmp470
	addq	$4, %rsi	#, tmp472
	movq	(%rax,%rsi,8), %rax	# basic_block_info.109_223->data.bb, D.15991
	movl	88(%rax), %eax	# _224->index, D.15985
	cltq
	salq	$4, %rax	#, tmp474
	leaq	0(,%rax,8), %rsi	#, tmp475
	subq	%rax, %rsi	# tmp473, D.15986
	movq	%rsi, %rax	# D.15986, D.15986
	addq	%rcx, %rax	# D.15990, D.15990
	movq	32(%rax), %rax	# _228->ru_kill, D.15992
	movq	%rax, (%rdx)	# D.15992, *_221
	.loc 1 2074 0 discriminator 2
	addl	$1, -104(%rbp)	#, i
.L506:
	.loc 1 2074 0 is_stmt 0 discriminator 1
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.110
	cmpl	%eax, -104(%rbp)	# n_basic_blocks.110, i
	jl	.L507	#,
	.loc 1 2081 0 is_stmt 1
	movq	-136(%rbp), %rax	# df, tmp476
	movq	184(%rax), %rdi	# df_27(D)->inverse_rts_map, D.15988
	movq	-136(%rbp), %rax	# df, tmp477
	movq	128(%rax), %r8	# df_27(D)->all_blocks, D.15992
	movq	-40(%rbp), %rcx	# kill, tmp478
	movq	-48(%rbp), %rdx	# gen, tmp479
	movq	-56(%rbp), %rsi	# out, tmp480
	movq	-64(%rbp), %rax	# in, tmp481
	movq	$0, 24(%rsp)	#,
	movq	%rdi, 16(%rsp)	# D.15988,
	movq	$df_ru_transfer_function, 8(%rsp)	#,
	movl	$0, (%rsp)	#,
	movl	$1, %r9d	#,
	movq	%rax, %rdi	# tmp481,
	call	iterative_dataflow_bitmap	#
	.loc 1 2084 0
	movq	-64(%rbp), %rax	# in, tmp482
	movq	%rax, %rdi	# tmp482,
	call	free	#
	.loc 1 2085 0
	movq	-56(%rbp), %rax	# out, tmp483
	movq	%rax, %rdi	# tmp483,
	call	free	#
	.loc 1 2086 0
	movq	-48(%rbp), %rax	# gen, tmp484
	movq	%rax, %rdi	# tmp484,
	call	free	#
	.loc 1 2087 0
	movq	-40(%rbp), %rax	# kill, tmp485
	movq	%rax, %rdi	# tmp485,
	call	free	#
.L503:
.LBE93:
	.loc 1 2091 0
	movl	-120(%rbp), %eax	# aflags, tmp486
	andl	$8, %eax	#, D.15985
	testl	%eax, %eax	# D.15985
	je	.L508	#,
	.loc 1 2094 0
	movq	-136(%rbp), %rax	# df, tmp487
	movq	128(%rax), %rdx	# df_27(D)->all_blocks, D.15992
	movq	-136(%rbp), %rax	# df, tmp488
	movq	%rdx, %rsi	# D.15992,
	movq	%rax, %rdi	# tmp488,
	call	df_du_chain_create	#
	.loc 1 2096 0
	movl	-148(%rbp), %eax	# flags, tmp489
	andl	$2, %eax	#, D.15985
	testl	%eax, %eax	# D.15985
	jne	.L508	#,
	.loc 1 2097 0
	orl	$2, -116(%rbp)	#, dflags
.L508:
	.loc 1 2101 0
	cmpl	$0, -116(%rbp)	#, dflags
	je	.L509	#,
	.loc 1 2102 0
	movl	-116(%rbp), %edx	# dflags, tmp490
	movq	-136(%rbp), %rax	# df, tmp491
	movl	%edx, %esi	# tmp490,
	movq	%rax, %rdi	# tmp491,
	call	df_bitmaps_free	#
.L509:
	.loc 1 2104 0
	movl	-120(%rbp), %eax	# aflags, tmp492
	andl	$4, %eax	#, D.15985
	testl	%eax, %eax	# D.15985
	je	.L510	#,
	.loc 1 2107 0
	movq	-136(%rbp), %rax	# df, tmp493
	movl	(%rax), %eax	# df_27(D)->flags, D.15985
	andl	$4, %eax	#, D.15985
	testl	%eax, %eax	# D.15985
	jne	.L511	#,
	.loc 1 2107 0 is_stmt 0 discriminator 1
	movq	-136(%rbp), %rax	# df, tmp494
	movq	128(%rax), %rax	# df_27(D)->all_blocks, iftmp.111
	jmp	.L512	#
.L511:
	.loc 1 2107 0 discriminator 2
	movq	-144(%rbp), %rax	# blocks, iftmp.111
.L512:
	.loc 1 2107 0 discriminator 3
	movq	-136(%rbp), %rdx	# df, tmp495
	movq	%rax, %rsi	# iftmp.111,
	movq	%rdx, %rdi	# tmp495,
	call	df_lr_local_compute	#
.LBB94:
	.loc 1 2110 0 is_stmt 1 discriminator 3
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.112
	cltq
	salq	$3, %rax	#, D.15986
	movq	%rax, %rdi	# D.15986,
	call	xmalloc	#
	movq	%rax, -32(%rbp)	# tmp496, in
	.loc 1 2111 0 discriminator 3
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.113
	cltq
	salq	$3, %rax	#, D.15986
	movq	%rax, %rdi	# D.15986,
	call	xmalloc	#
	movq	%rax, -24(%rbp)	# tmp497, out
	.loc 1 2112 0 discriminator 3
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.114
	cltq
	salq	$3, %rax	#, D.15986
	movq	%rax, %rdi	# D.15986,
	call	xmalloc	#
	movq	%rax, -16(%rbp)	# tmp498, use
	.loc 1 2113 0 discriminator 3
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.115
	cltq
	salq	$3, %rax	#, D.15986
	movq	%rax, %rdi	# D.15986,
	call	xmalloc	#
	movq	%rax, -8(%rbp)	# tmp499, def
	.loc 1 2114 0 discriminator 3
	movl	$0, -100(%rbp)	#, i
	jmp	.L513	#
.L514:
	.loc 1 2116 0 discriminator 2
	movl	-100(%rbp), %eax	# i, tmp500
	cltq
	leaq	0(,%rax,8), %rdx	#, D.15986
	movq	-32(%rbp), %rax	# in, tmp501
	addq	%rax, %rdx	# tmp501, D.15989
	movq	-136(%rbp), %rax	# df, tmp502
	movq	8(%rax), %rcx	# df_27(D)->bbs, D.15990
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.116
	movl	-100(%rbp), %esi	# i, tmp504
	movslq	%esi, %rsi	# tmp504, tmp503
	addq	$4, %rsi	#, tmp505
	movq	(%rax,%rsi,8), %rax	# basic_block_info.116_264->data.bb, D.15991
	movl	88(%rax), %eax	# _265->index, D.15985
	cltq
	salq	$4, %rax	#, tmp507
	leaq	0(,%rax,8), %rsi	#, tmp508
	subq	%rax, %rsi	# tmp506, D.15986
	movq	%rsi, %rax	# D.15986, D.15986
	addq	%rcx, %rax	# D.15990, D.15990
	movq	80(%rax), %rax	# _269->lr_in, D.15992
	movq	%rax, (%rdx)	# D.15992, *_262
	.loc 1 2117 0 discriminator 2
	movl	-100(%rbp), %eax	# i, tmp509
	cltq
	leaq	0(,%rax,8), %rdx	#, D.15986
	movq	-24(%rbp), %rax	# out, tmp510
	addq	%rax, %rdx	# tmp510, D.15989
	movq	-136(%rbp), %rax	# df, tmp511
	movq	8(%rax), %rcx	# df_27(D)->bbs, D.15990
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.117
	movl	-100(%rbp), %esi	# i, tmp513
	movslq	%esi, %rsi	# tmp513, tmp512
	addq	$4, %rsi	#, tmp514
	movq	(%rax,%rsi,8), %rax	# basic_block_info.117_275->data.bb, D.15991
	movl	88(%rax), %eax	# _276->index, D.15985
	cltq
	salq	$4, %rax	#, tmp516
	leaq	0(,%rax,8), %rsi	#, tmp517
	subq	%rax, %rsi	# tmp515, D.15986
	movq	%rsi, %rax	# D.15986, D.15986
	addq	%rcx, %rax	# D.15990, D.15990
	movq	88(%rax), %rax	# _280->lr_out, D.15992
	movq	%rax, (%rdx)	# D.15992, *_273
	.loc 1 2118 0 discriminator 2
	movl	-100(%rbp), %eax	# i, tmp518
	cltq
	leaq	0(,%rax,8), %rdx	#, D.15986
	movq	-16(%rbp), %rax	# use, tmp519
	addq	%rax, %rdx	# tmp519, D.15989
	movq	-136(%rbp), %rax	# df, tmp520
	movq	8(%rax), %rcx	# df_27(D)->bbs, D.15990
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.118
	movl	-100(%rbp), %esi	# i, tmp522
	movslq	%esi, %rsi	# tmp522, tmp521
	addq	$4, %rsi	#, tmp523
	movq	(%rax,%rsi,8), %rax	# basic_block_info.118_286->data.bb, D.15991
	movl	88(%rax), %eax	# _287->index, D.15985
	cltq
	salq	$4, %rax	#, tmp525
	leaq	0(,%rax,8), %rsi	#, tmp526
	subq	%rax, %rsi	# tmp524, D.15986
	movq	%rsi, %rax	# D.15986, D.15986
	addq	%rcx, %rax	# D.15990, D.15990
	movq	72(%rax), %rax	# _291->lr_use, D.15992
	movq	%rax, (%rdx)	# D.15992, *_284
	.loc 1 2119 0 discriminator 2
	movl	-100(%rbp), %eax	# i, tmp527
	cltq
	leaq	0(,%rax,8), %rdx	#, D.15986
	movq	-8(%rbp), %rax	# def, tmp528
	addq	%rax, %rdx	# tmp528, D.15989
	movq	-136(%rbp), %rax	# df, tmp529
	movq	8(%rax), %rcx	# df_27(D)->bbs, D.15990
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.119
	movl	-100(%rbp), %esi	# i, tmp531
	movslq	%esi, %rsi	# tmp531, tmp530
	addq	$4, %rsi	#, tmp532
	movq	(%rax,%rsi,8), %rax	# basic_block_info.119_297->data.bb, D.15991
	movl	88(%rax), %eax	# _298->index, D.15985
	cltq
	salq	$4, %rax	#, tmp534
	leaq	0(,%rax,8), %rsi	#, tmp535
	subq	%rax, %rsi	# tmp533, D.15986
	movq	%rsi, %rax	# D.15986, D.15986
	addq	%rcx, %rax	# D.15990, D.15990
	movq	64(%rax), %rax	# _302->lr_def, D.15992
	movq	%rax, (%rdx)	# D.15992, *_295
	.loc 1 2114 0 discriminator 2
	addl	$1, -100(%rbp)	#, i
.L513:
	.loc 1 2114 0 is_stmt 0 discriminator 1
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.120
	cmpl	%eax, -100(%rbp)	# n_basic_blocks.120, i
	jl	.L514	#,
	.loc 1 2121 0 is_stmt 1
	movq	-136(%rbp), %rax	# df, tmp536
	movq	184(%rax), %rdi	# df_27(D)->inverse_rts_map, D.15988
	movq	-136(%rbp), %rax	# df, tmp537
	movq	128(%rax), %r8	# df_27(D)->all_blocks, D.15992
	movq	-8(%rbp), %rcx	# def, tmp538
	movq	-16(%rbp), %rdx	# use, tmp539
	movq	-24(%rbp), %rsi	# out, tmp540
	movq	-32(%rbp), %rax	# in, tmp541
	movq	$0, 24(%rsp)	#,
	movq	%rdi, 16(%rsp)	# D.15988,
	movq	$df_lr_transfer_function, 8(%rsp)	#,
	movl	$0, (%rsp)	#,
	movl	$1, %r9d	#,
	movq	%rax, %rdi	# tmp541,
	call	iterative_dataflow_bitmap	#
	.loc 1 2124 0
	movq	-32(%rbp), %rax	# in, tmp542
	movq	%rax, %rdi	# tmp542,
	call	free	#
	.loc 1 2125 0
	movq	-24(%rbp), %rax	# out, tmp543
	movq	%rax, %rdi	# tmp543,
	call	free	#
	.loc 1 2126 0
	movq	-16(%rbp), %rax	# use, tmp544
	movq	%rax, %rdi	# tmp544,
	call	free	#
	.loc 1 2127 0
	movq	-8(%rbp), %rax	# def, tmp545
	movq	%rax, %rdi	# tmp545,
	call	free	#
.L510:
.LBE94:
	.loc 1 2131 0
	movl	-120(%rbp), %eax	# aflags, tmp546
	andl	$32, %eax	#, D.15985
	testl	%eax, %eax	# D.15985
	je	.L515	#,
	.loc 1 2133 0
	movq	-136(%rbp), %rax	# df, tmp547
	movq	128(%rax), %rdx	# df_27(D)->all_blocks, D.15992
	movq	-136(%rbp), %rax	# df, tmp548
	movq	%rdx, %rsi	# D.15992,
	movq	%rax, %rdi	# tmp548,
	call	df_reg_info_compute	#
.L515:
	.loc 1 2135 0
	movq	-136(%rbp), %rax	# df, tmp549
	movq	144(%rax), %rax	# df_27(D)->dfs_order, D.15988
	movq	%rax, %rdi	# D.15988,
	call	free	#
	.loc 1 2136 0
	movq	-136(%rbp), %rax	# df, tmp550
	movq	152(%rax), %rax	# df_27(D)->rc_order, D.15988
	movq	%rax, %rdi	# D.15988,
	call	free	#
	.loc 1 2137 0
	movq	-136(%rbp), %rax	# df, tmp551
	movq	160(%rax), %rax	# df_27(D)->rts_order, D.15988
	movq	%rax, %rdi	# D.15988,
	call	free	#
	.loc 1 2138 0
	movq	-136(%rbp), %rax	# df, tmp552
	movq	168(%rax), %rax	# df_27(D)->inverse_rc_map, D.15988
	movq	%rax, %rdi	# D.15988,
	call	free	#
	.loc 1 2139 0
	movq	-136(%rbp), %rax	# df, tmp553
	movq	176(%rax), %rax	# df_27(D)->inverse_dfs_map, D.15988
	movq	%rax, %rdi	# D.15988,
	call	free	#
	.loc 1 2140 0
	movq	-136(%rbp), %rax	# df, tmp554
	movq	184(%rax), %rax	# df_27(D)->inverse_rts_map, D.15988
	movq	%rax, %rdi	# D.15988,
	call	free	#
	.loc 1 2141 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE46:
	.size	df_analyse_1, .-df_analyse_1
	.globl	df_init
	.type	df_init, @function
df_init:
.LFB47:
	.loc 1 2147 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	.loc 1 2150 0
	movl	$192, %esi	#,
	movl	$1, %edi	#,
	call	xcalloc	#
	movq	%rax, -8(%rbp)	# tmp61, df
	.loc 1 2153 0
	movq	-8(%rbp), %rax	# df, tmp62
	movq	%rax, ddf(%rip)	# tmp62, ddf
	.loc 1 2155 0
	movq	-8(%rbp), %rax	# df, D.15993
	.loc 1 2156 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE47:
	.size	df_init, .-df_init
	.type	df_refs_queue, @function
df_refs_queue:
.LFB48:
	.loc 1 2163 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# df, df
	.loc 1 2164 0
	movq	-8(%rbp), %rax	# df, tmp63
	movl	68(%rax), %edx	# df_1(D)->def_id, D.15994
	movq	-8(%rbp), %rax	# df, tmp64
	movl	%edx, 100(%rax)	# D.15994, df_1(D)->def_id_save
	.loc 1 2165 0
	movq	-8(%rbp), %rax	# df, tmp65
	movl	80(%rax), %edx	# df_1(D)->use_id, D.15994
	movq	-8(%rbp), %rax	# df, tmp66
	movl	%edx, 104(%rax)	# D.15994, df_1(D)->use_id_save
	.loc 1 2168 0
	movl	$0, %eax	#, D.15995
	.loc 1 2169 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE48:
	.size	df_refs_queue, .-df_refs_queue
	.type	df_refs_process, @function
df_refs_process:
.LFB49:
	.loc 1 2176 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$56, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)	# df, df
	.loc 1 2180 0
	movq	-56(%rbp), %rax	# df, tmp95
	movl	100(%rax), %eax	# df_3(D)->def_id_save, tmp96
	movl	%eax, -44(%rbp)	# tmp96, i
	jmp	.L521	#
.L522:
.LBB95:
	.loc 1 2182 0 discriminator 2
	movq	-56(%rbp), %rax	# df, tmp97
	movq	16(%rax), %rax	# df_3(D)->defs, D.15997
	movl	-44(%rbp), %edx	# i, D.15998
	salq	$3, %rdx	#, D.15998
	addq	%rdx, %rax	# D.15998, D.15997
	movq	(%rax), %rax	# *_9, tmp98
	movq	%rax, -32(%rbp)	# tmp98, def
	.loc 1 2183 0 discriminator 2
	movq	-32(%rbp), %rax	# def, tmp99
	movq	8(%rax), %rax	# def_10->insn, D.15999
	movl	8(%rax), %eax	# _11->fld[0].rtint, D.16000
	movl	%eax, -40(%rbp)	# D.16000, uid
	.loc 1 2186 0 discriminator 2
	movq	-56(%rbp), %rax	# df, tmp100
	movq	56(%rax), %rcx	# df_3(D)->insns, D.16001
	movl	-40(%rbp), %edx	# uid, D.15998
	movq	%rdx, %rax	# D.15998, tmp101
	addq	%rax, %rax	# tmp101
	addq	%rdx, %rax	# D.15998, tmp101
	salq	$3, %rax	#, tmp102
	leaq	(%rcx,%rax), %rbx	#, D.16001
	.loc 1 2187 0 discriminator 2
	movq	-56(%rbp), %rax	# df, tmp103
	movq	56(%rax), %rcx	# df_3(D)->insns, D.16001
	movl	-40(%rbp), %edx	# uid, D.15998
	movq	%rdx, %rax	# D.15998, tmp104
	addq	%rax, %rax	# tmp104
	addq	%rdx, %rax	# D.15998, tmp104
	salq	$3, %rax	#, tmp105
	addq	%rcx, %rax	# D.16001, D.16001
	movq	(%rax), %rdx	# _21->defs, D.16002
	movq	-32(%rbp), %rax	# def, tmp106
	movq	%rdx, %rsi	# D.16002,
	movq	%rax, %rdi	# tmp106,
	call	df_link_create	#
	movq	%rax, (%rbx)	# D.16002, _17->defs
.LBE95:
	.loc 1 2180 0 discriminator 2
	addl	$1, -44(%rbp)	#, i
.L521:
	.loc 1 2180 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# df, tmp107
	movl	68(%rax), %eax	# df_3(D)->def_id, D.15996
	cmpl	-44(%rbp), %eax	# i, D.15996
	jne	.L522	#,
	.loc 1 2191 0 is_stmt 1
	movq	-56(%rbp), %rax	# df, tmp108
	movl	104(%rax), %eax	# df_3(D)->use_id_save, tmp109
	movl	%eax, -44(%rbp)	# tmp109, i
	jmp	.L523	#
.L524:
.LBB96:
	.loc 1 2193 0 discriminator 2
	movq	-56(%rbp), %rax	# df, tmp110
	movq	24(%rax), %rax	# df_3(D)->uses, D.15997
	movl	-44(%rbp), %edx	# i, D.15998
	salq	$3, %rdx	#, D.15998
	addq	%rdx, %rax	# D.15998, D.15997
	movq	(%rax), %rax	# *_30, tmp111
	movq	%rax, -24(%rbp)	# tmp111, use
	.loc 1 2194 0 discriminator 2
	movq	-24(%rbp), %rax	# use, tmp112
	movq	8(%rax), %rax	# use_31->insn, D.15999
	movl	8(%rax), %eax	# _32->fld[0].rtint, D.16000
	movl	%eax, -36(%rbp)	# D.16000, uid
	.loc 1 2197 0 discriminator 2
	movq	-56(%rbp), %rax	# df, tmp113
	movq	56(%rax), %rcx	# df_3(D)->insns, D.16001
	movl	-36(%rbp), %edx	# uid, D.15998
	movq	%rdx, %rax	# D.15998, tmp114
	addq	%rax, %rax	# tmp114
	addq	%rdx, %rax	# D.15998, tmp114
	salq	$3, %rax	#, tmp115
	leaq	(%rcx,%rax), %rbx	#, D.16001
	.loc 1 2198 0 discriminator 2
	movq	-56(%rbp), %rax	# df, tmp116
	movq	56(%rax), %rcx	# df_3(D)->insns, D.16001
	movl	-36(%rbp), %edx	# uid, D.15998
	movq	%rdx, %rax	# D.15998, tmp117
	addq	%rax, %rax	# tmp117
	addq	%rdx, %rax	# D.15998, tmp117
	salq	$3, %rax	#, tmp118
	addq	%rcx, %rax	# D.16001, D.16001
	movq	8(%rax), %rdx	# _42->uses, D.16002
	movq	-24(%rbp), %rax	# use, tmp119
	movq	%rdx, %rsi	# D.16002,
	movq	%rax, %rdi	# tmp119,
	call	df_link_create	#
	movq	%rax, 8(%rbx)	# D.16002, _38->uses
.LBE96:
	.loc 1 2191 0 discriminator 2
	addl	$1, -44(%rbp)	#, i
.L523:
	.loc 1 2191 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# df, tmp120
	movl	80(%rax), %eax	# df_3(D)->use_id, D.15996
	cmpl	-44(%rbp), %eax	# i, D.15996
	jne	.L524	#,
	.loc 1 2200 0 is_stmt 1
	movl	$0, %eax	#, D.16000
	.loc 1 2201 0
	addq	$56, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE49:
	.size	df_refs_process, .-df_refs_process
	.type	df_bb_refs_update, @function
df_bb_refs_update:
.LFB50:
	.loc 1 2209 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# df, df
	movq	%rsi, -32(%rbp)	# bb, bb
	.loc 1 2211 0
	movl	$0, -16(%rbp)	#, count
	.loc 1 2218 0
	movq	-32(%rbp), %rax	# bb, tmp68
	movq	(%rax), %rax	# bb_5(D)->head, tmp69
	movq	%rax, -8(%rbp)	# tmp69, insn
.L530:
.LBB97:
	.loc 1 2222 0
	movq	-8(%rbp), %rax	# insn, tmp70
	movl	8(%rax), %eax	# insn_1->fld[0].rtint, D.16003
	movl	%eax, -12(%rbp)	# D.16003, uid
	.loc 1 2224 0
	movl	-12(%rbp), %edx	# uid, uid.121
	movq	-24(%rbp), %rax	# df, tmp71
	movq	112(%rax), %rax	# df_10(D)->insns_modified, D.16004
	movl	%edx, %esi	# uid.121,
	movq	%rax, %rdi	# D.16004,
	call	bitmap_bit_p	#
	testl	%eax, %eax	# D.16003
	je	.L527	#,
	.loc 1 2227 0
	movq	-8(%rbp), %rdx	# insn, tmp72
	movq	-32(%rbp), %rcx	# bb, tmp73
	movq	-24(%rbp), %rax	# df, tmp74
	movq	%rcx, %rsi	# tmp73,
	movq	%rax, %rdi	# tmp74,
	call	df_insn_refs_unlink	#
	.loc 1 2230 0
	movq	-8(%rbp), %rdx	# insn, tmp75
	movq	-32(%rbp), %rcx	# bb, tmp76
	movq	-24(%rbp), %rax	# df, tmp77
	movq	%rcx, %rsi	# tmp76,
	movq	%rax, %rdi	# tmp77,
	call	df_insn_refs_record	#
	.loc 1 2233 0
	movl	-12(%rbp), %edx	# uid, uid.122
	movq	-24(%rbp), %rax	# df, tmp78
	movq	112(%rax), %rax	# df_10(D)->insns_modified, D.16004
	movl	%edx, %esi	# uid.122,
	movq	%rax, %rdi	# D.16004,
	call	bitmap_clear_bit	#
	.loc 1 2234 0
	addl	$1, -16(%rbp)	#, count
.L527:
	.loc 1 2236 0
	movq	-32(%rbp), %rax	# bb, tmp79
	movq	8(%rax), %rax	# bb_5(D)->end, D.16005
	cmpq	-8(%rbp), %rax	# insn, D.16005
	jne	.L528	#,
	.loc 1 2237 0
	jmp	.L532	#
.L528:
.LBE97:
	.loc 1 2218 0
	movq	-8(%rbp), %rax	# insn, tmp80
	movq	24(%rax), %rax	# insn_1->fld[2].rtx, tmp81
	movq	%rax, -8(%rbp)	# tmp81, insn
	.loc 1 2238 0
	jmp	.L530	#
.L532:
	.loc 1 2239 0
	movl	-16(%rbp), %eax	# count, D.16003
	.loc 1 2240 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE50:
	.size	df_bb_refs_update, .-df_bb_refs_update
	.type	df_refs_update, @function
df_refs_update:
.LFB51:
	.loc 1 2247 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movq	%rdi, -72(%rbp)	# df, df
	.loc 1 2249 0
	movl	$0, -52(%rbp)	#, count
	.loc 1 2251 0
	call	max_reg_num	#
	movl	%eax, %edx	# D.16006, D.16007
	movq	-72(%rbp), %rax	# df, tmp76
	movl	48(%rax), %eax	# df_20(D)->reg_size, D.16007
	cmpl	%eax, %edx	# D.16007, D.16007
	jb	.L534	#,
	.loc 1 2252 0
	movq	-72(%rbp), %rax	# df, tmp77
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp77,
	call	df_reg_table_realloc	#
.L534:
	.loc 1 2254 0
	movq	-72(%rbp), %rax	# df, tmp78
	movq	%rax, %rdi	# tmp78,
	call	df_refs_queue	#
.LBB98:
.LBB99:
	.loc 1 2256 0
	movq	-72(%rbp), %rax	# df, tmp79
	movq	120(%rax), %rax	# df_20(D)->bbs_modified, D.16008
	movq	(%rax), %rax	# _22->first, tmp80
	movq	%rax, -32(%rbp)	# tmp80, ptr_
	movl	$0, -40(%rbp)	#, indx_
	movl	$0, -48(%rbp)	#, bit_num_
	movl	$0, -44(%rbp)	#, word_num_
	jmp	.L535	#
.L537:
	.loc 1 2256 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# ptr_, tmp81
	movq	(%rax), %rax	# ptr__6->next, tmp82
	movq	%rax, -32(%rbp)	# tmp82, ptr_
.L535:
	cmpq	$0, -32(%rbp)	#, ptr_
	je	.L536	#,
	.loc 1 2256 0 discriminator 2
	movq	-32(%rbp), %rax	# ptr_, tmp83
	movl	16(%rax), %eax	# ptr__6->indx, D.16007
	cmpl	-40(%rbp), %eax	# indx_, D.16007
	jb	.L537	#,
.L536:
	.loc 1 2256 0 discriminator 3
	cmpq	$0, -32(%rbp)	#, ptr_
	je	.L538	#,
	.loc 1 2256 0 discriminator 1
	movq	-32(%rbp), %rax	# ptr_, tmp84
	movl	16(%rax), %eax	# ptr__6->indx, D.16007
	cmpl	-40(%rbp), %eax	# indx_, D.16007
	je	.L538	#,
	movl	$0, -48(%rbp)	#, bit_num_
	movl	$0, -44(%rbp)	#, word_num_
	jmp	.L539	#
.L538:
	.loc 1 2256 0 discriminator 2
	jmp	.L539	#
.L546:
	.loc 1 2256 0
	jmp	.L540	#
.L545:
.LBB100:
	.loc 1 2256 0 discriminator 2
	movq	-32(%rbp), %rax	# ptr_, tmp85
	movl	-44(%rbp), %edx	# word_num_, tmp86
	addq	$2, %rdx	#, tmp87
	movq	8(%rax,%rdx,8), %rax	# ptr__7->bits, tmp88
	movq	%rax, -24(%rbp)	# tmp88, word_
	cmpq	$0, -24(%rbp)	#, word_
	je	.L541	#,
	.loc 1 2256 0 discriminator 1
	jmp	.L542	#
.L544:
.LBB101:
	.loc 1 2256 0 discriminator 2
	movl	-48(%rbp), %eax	# bit_num_, bit_num_.123
	movl	$1, %edx	#, tmp89
	movl	%eax, %ecx	# bit_num_.123, tmp110
	salq	%cl, %rdx	# tmp110, tmp90
	movq	%rdx, %rax	# tmp90, tmp90
	movq	%rax, -16(%rbp)	# tmp90, mask_
	movq	-16(%rbp), %rax	# mask_, tmp91
	movq	-24(%rbp), %rdx	# word_, tmp92
	andq	%rdx, %rax	# tmp92, D.16009
	testq	%rax, %rax	# D.16009
	je	.L543	#,
	.loc 1 2256 0 discriminator 1
	movq	-16(%rbp), %rax	# mask_, tmp93
	notq	%rax	# D.16009
	andq	%rax, -24(%rbp)	# D.16009, word_
	movq	-32(%rbp), %rax	# ptr_, tmp94
	movl	16(%rax), %eax	# ptr__7->indx, D.16007
	leal	(%rax,%rax), %edx	#, D.16007
	movl	-44(%rbp), %eax	# word_num_, tmp95
	addl	%edx, %eax	# D.16007, D.16007
	sall	$6, %eax	#, D.16007
	movl	%eax, %edx	# D.16007, D.16007
	movl	-48(%rbp), %eax	# bit_num_, tmp99
	addl	%edx, %eax	# D.16007, tmp98
	movl	%eax, -36(%rbp)	# tmp98, node_
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.124
	movl	-36(%rbp), %edx	# node_, tmp100
	addq	$4, %rdx	#, tmp101
	movq	(%rax,%rdx,8), %rax	# basic_block_info.124_43->data.bb, tmp102
	movq	%rax, -8(%rbp)	# tmp102, bb
	movq	-8(%rbp), %rdx	# bb, tmp103
	movq	-72(%rbp), %rax	# df, tmp104
	movq	%rdx, %rsi	# tmp103,
	movq	%rax, %rdi	# tmp104,
	call	df_bb_refs_update	#
	addl	%eax, -52(%rbp)	# D.16006, count
	cmpq	$0, -24(%rbp)	#, word_
	jne	.L543	#,
	jmp	.L541	#
.L543:
.LBE101:
	.loc 1 2256 0 discriminator 2
	addl	$1, -48(%rbp)	#, bit_num_
.L542:
	.loc 1 2256 0 discriminator 1
	cmpl	$63, -48(%rbp)	#, bit_num_
	jbe	.L544	#,
.L541:
	.loc 1 2256 0 discriminator 2
	movl	$0, -48(%rbp)	#, bit_num_
.LBE100:
	addl	$1, -44(%rbp)	#, word_num_
.L540:
	.loc 1 2256 0 discriminator 1
	cmpl	$1, -44(%rbp)	#, word_num_
	jbe	.L545	#,
	.loc 1 2256 0 discriminator 3
	movl	$0, -44(%rbp)	#, word_num_
	movq	-32(%rbp), %rax	# ptr_, tmp105
	movq	(%rax), %rax	# ptr__7->next, tmp106
	movq	%rax, -32(%rbp)	# tmp106, ptr_
.L539:
	.loc 1 2256 0 discriminator 1
	cmpq	$0, -32(%rbp)	#, ptr_
	jne	.L546	#,
.LBE99:
.LBE98:
	.loc 1 2261 0 is_stmt 1
	movq	-72(%rbp), %rax	# df, tmp107
	movq	%rax, %rdi	# tmp107,
	call	df_refs_process	#
	.loc 1 2262 0
	movl	-52(%rbp), %eax	# count, D.16006
	.loc 1 2263 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE51:
	.size	df_refs_update, .-df_refs_update
	.type	df_modified_p, @function
df_modified_p:
.LFB52:
	.loc 1 2272 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# df, df
	movq	%rsi, -32(%rbp)	# blocks, blocks
	.loc 1 2274 0
	movl	$0, -4(%rbp)	#, update
	.loc 1 2276 0
	movl	$0, -8(%rbp)	#, j
	jmp	.L549	#
.L553:
	.loc 1 2277 0
	movl	-8(%rbp), %edx	# j, j.125
	movq	-24(%rbp), %rax	# df, tmp67
	movq	120(%rax), %rax	# df_5(D)->bbs_modified, D.16011
	movl	%edx, %esi	# j.125,
	movq	%rax, %rdi	# D.16011,
	call	bitmap_bit_p	#
	testl	%eax, %eax	# D.16012
	je	.L550	#,
	.loc 1 2278 0
	cmpq	$0, -32(%rbp)	#, blocks
	je	.L551	#,
	.loc 1 2278 0 is_stmt 0 discriminator 1
	cmpq	$-1, -32(%rbp)	#, blocks
	je	.L551	#,
	movl	-8(%rbp), %edx	# j, j.126
	movq	-32(%rbp), %rax	# blocks, tmp68
	movl	%edx, %esi	# j.126,
	movq	%rax, %rdi	# tmp68,
	call	bitmap_bit_p	#
	testl	%eax, %eax	# D.16012
	je	.L550	#,
.L551:
	.loc 1 2280 0 is_stmt 1
	movl	$1, -4(%rbp)	#, update
	.loc 1 2281 0
	jmp	.L552	#
.L550:
	.loc 1 2276 0
	addl	$1, -8(%rbp)	#, j
.L549:
	.loc 1 2276 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# df, tmp69
	movl	92(%rax), %eax	# df_5(D)->n_bbs, D.16010
	cmpl	-8(%rbp), %eax	# j, D.16010
	ja	.L553	#,
.L552:
	.loc 1 2284 0 is_stmt 1
	movl	-4(%rbp), %eax	# update, D.16012
	.loc 1 2285 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE52:
	.size	df_modified_p, .-df_modified_p
	.globl	df_analyse
	.type	df_analyse, @function
df_analyse:
.LFB53:
	.loc 1 2296 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# df, df
	movq	%rsi, -32(%rbp)	# blocks, blocks
	movl	%edx, -36(%rbp)	# flags, flags
	.loc 1 2301 0
	movq	-24(%rbp), %rax	# df, tmp70
	movl	92(%rax), %eax	# df_3(D)->n_bbs, D.16013
	testl	%eax, %eax	# D.16013
	je	.L556	#,
	.loc 1 2301 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# df, tmp71
	movl	92(%rax), %edx	# df_3(D)->n_bbs, D.16013
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.127
	cmpl	%eax, %edx	# n_basic_blocks.128, D.16013
	je	.L556	#,
	.loc 1 2302 0 is_stmt 1
	movl	$__FUNCTION__.11605, %edx	#,
	movl	$2302, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L556:
	.loc 1 2304 0
	movq	-32(%rbp), %rdx	# blocks, tmp72
	movq	-24(%rbp), %rax	# df, tmp73
	movq	%rdx, %rsi	# tmp72,
	movq	%rax, %rdi	# tmp73,
	call	df_modified_p	#
	movl	%eax, -4(%rbp)	# tmp74, update
	.loc 1 2305 0
	cmpl	$0, -4(%rbp)	#, update
	jne	.L557	#,
	.loc 1 2305 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# df, tmp75
	movl	(%rax), %eax	# df_3(D)->flags, D.16014
	cmpl	-36(%rbp), %eax	# flags, D.16014
	je	.L558	#,
.L557:
	.loc 1 2307 0 is_stmt 1
	cmpq	$0, -32(%rbp)	#, blocks
	jne	.L559	#,
	.loc 1 2309 0
	movq	-24(%rbp), %rax	# df, tmp76
	movl	92(%rax), %eax	# df_3(D)->n_bbs, D.16013
	testl	%eax, %eax	# D.16013
	je	.L560	#,
	.loc 1 2312 0
	movq	-24(%rbp), %rax	# df, tmp77
	movq	%rax, %rdi	# tmp77,
	call	df_free	#
.L560:
	.loc 1 2315 0
	call	max_reg_num	#
	movl	%eax, %edx	#, D.16014
	movq	-24(%rbp), %rax	# df, tmp78
	movl	%edx, %esi	# D.16014,
	movq	%rax, %rdi	# tmp78,
	call	df_alloc	#
	.loc 1 2316 0
	movl	-36(%rbp), %edx	# flags, tmp79
	movq	-24(%rbp), %rax	# df, tmp80
	movl	$0, %ecx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp80,
	call	df_analyse_1	#
	.loc 1 2317 0
	movl	$1, -4(%rbp)	#, update
	jmp	.L558	#
.L559:
	.loc 1 2321 0
	cmpq	$-1, -32(%rbp)	#, blocks
	jne	.L561	#,
	.loc 1 2322 0
	movq	-24(%rbp), %rax	# df, tmp81
	movq	120(%rax), %rax	# df_3(D)->bbs_modified, tmp82
	movq	%rax, -32(%rbp)	# tmp82, blocks
.L561:
	.loc 1 2324 0
	movq	-24(%rbp), %rax	# df, tmp83
	movl	92(%rax), %eax	# df_3(D)->n_bbs, D.16013
	testl	%eax, %eax	# D.16013
	jne	.L562	#,
	.loc 1 2325 0
	movl	$__FUNCTION__.11605, %edx	#,
	movl	$2325, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L562:
	.loc 1 2327 0
	movl	-36(%rbp), %edx	# flags, tmp84
	movq	-32(%rbp), %rsi	# blocks, tmp85
	movq	-24(%rbp), %rax	# df, tmp86
	movl	$1, %ecx	#,
	movq	%rax, %rdi	# tmp86,
	call	df_analyse_1	#
	.loc 1 2328 0
	movq	-24(%rbp), %rax	# df, tmp87
	movq	120(%rax), %rax	# df_3(D)->bbs_modified, D.16015
	movq	%rax, %rdi	# D.16015,
	call	bitmap_clear	#
.L558:
	.loc 1 2331 0
	movl	-4(%rbp), %eax	# update, D.16014
	.loc 1 2332 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE53:
	.size	df_analyse, .-df_analyse
	.globl	df_finish
	.type	df_finish, @function
df_finish:
.LFB54:
	.loc 1 2339 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# df, df
	.loc 1 2340 0
	movq	-8(%rbp), %rax	# df, tmp59
	movq	%rax, %rdi	# tmp59,
	call	df_free	#
	.loc 1 2341 0
	movq	-8(%rbp), %rax	# df, tmp60
	movq	%rax, %rdi	# tmp60,
	call	free	#
	.loc 1 2342 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE54:
	.size	df_finish, .-df_finish
	.type	df_insn_refs_unlink, @function
df_insn_refs_unlink:
.LFB55:
	.loc 1 2351 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# df, df
	movq	%rsi, -32(%rbp)	# bb, bb
	movq	%rdx, -40(%rbp)	# insn, insn
	.loc 1 2355 0
	movq	-40(%rbp), %rax	# insn, tmp78
	movl	8(%rax), %eax	# insn_3(D)->fld[0].rtint, D.16016
	movl	%eax, -12(%rbp)	# D.16016, uid
	.loc 1 2358 0
	movq	-24(%rbp), %rax	# df, tmp79
	movq	56(%rax), %rcx	# df_6(D)->insns, D.16017
	movl	-12(%rbp), %edx	# uid, D.16018
	movq	%rdx, %rax	# D.16018, tmp80
	addq	%rax, %rax	# tmp80
	addq	%rdx, %rax	# D.16018, tmp80
	salq	$3, %rax	#, tmp81
	addq	%rcx, %rax	# D.16017, D.16017
	movq	(%rax), %rax	# _10->defs, tmp82
	movq	%rax, -8(%rbp)	# tmp82, link
	jmp	.L566	#
.L567:
	.loc 1 2359 0 discriminator 2
	movq	-8(%rbp), %rax	# link, tmp83
	movq	8(%rax), %rdx	# link_1->ref, D.16019
	movq	-24(%rbp), %rax	# df, tmp84
	movq	%rdx, %rsi	# D.16019,
	movq	%rax, %rdi	# tmp84,
	call	df_def_unlink	#
	.loc 1 2358 0 discriminator 2
	movq	-8(%rbp), %rax	# link, tmp85
	movq	(%rax), %rax	# link_1->next, tmp86
	movq	%rax, -8(%rbp)	# tmp86, link
.L566:
	.loc 1 2358 0 is_stmt 0 discriminator 1
	cmpq	$0, -8(%rbp)	#, link
	jne	.L567	#,
	.loc 1 2362 0 is_stmt 1
	movq	-24(%rbp), %rax	# df, tmp87
	movq	56(%rax), %rcx	# df_6(D)->insns, D.16017
	movl	-12(%rbp), %edx	# uid, D.16018
	movq	%rdx, %rax	# D.16018, tmp88
	addq	%rax, %rax	# tmp88
	addq	%rdx, %rax	# D.16018, tmp88
	salq	$3, %rax	#, tmp89
	addq	%rcx, %rax	# D.16017, D.16017
	movq	8(%rax), %rax	# _17->uses, tmp90
	movq	%rax, -8(%rbp)	# tmp90, link
	jmp	.L568	#
.L569:
	.loc 1 2363 0 discriminator 2
	movq	-8(%rbp), %rax	# link, tmp91
	movq	8(%rax), %rdx	# link_2->ref, D.16019
	movq	-24(%rbp), %rax	# df, tmp92
	movq	%rdx, %rsi	# D.16019,
	movq	%rax, %rdi	# tmp92,
	call	df_use_unlink	#
	.loc 1 2362 0 discriminator 2
	movq	-8(%rbp), %rax	# link, tmp93
	movq	(%rax), %rax	# link_2->next, tmp94
	movq	%rax, -8(%rbp)	# tmp94, link
.L568:
	.loc 1 2362 0 is_stmt 0 discriminator 1
	cmpq	$0, -8(%rbp)	#, link
	jne	.L569	#,
	.loc 1 2365 0 is_stmt 1
	movq	-24(%rbp), %rax	# df, tmp95
	movq	56(%rax), %rcx	# df_6(D)->insns, D.16017
	movl	-12(%rbp), %edx	# uid, D.16018
	movq	%rdx, %rax	# D.16018, tmp96
	addq	%rax, %rax	# tmp96
	addq	%rdx, %rax	# D.16018, tmp96
	salq	$3, %rax	#, tmp97
	addq	%rcx, %rax	# D.16017, D.16017
	movq	$0, (%rax)	#, _24->defs
	.loc 1 2366 0
	movq	-24(%rbp), %rax	# df, tmp98
	movq	56(%rax), %rcx	# df_6(D)->insns, D.16017
	movl	-12(%rbp), %edx	# uid, D.16018
	movq	%rdx, %rax	# D.16018, tmp99
	addq	%rax, %rax	# tmp99
	addq	%rdx, %rax	# D.16018, tmp99
	salq	$3, %rax	#, tmp100
	addq	%rcx, %rax	# D.16017, D.16017
	movq	$0, 8(%rax)	#, _28->uses
	.loc 1 2367 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE55:
	.size	df_insn_refs_unlink, .-df_insn_refs_unlink
	.globl	df_insn_delete
	.type	df_insn_delete, @function
df_insn_delete:
.LFB56:
	.loc 1 2428 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -8(%rbp)	# df, df
	movq	%rsi, -16(%rbp)	# bb, bb
	movq	%rdx, -24(%rbp)	# insn, insn
	.loc 1 2433 0
	movq	-16(%rbp), %rax	# bb, tmp62
	movq	(%rax), %rax	# bb_1(D)->head, D.16020
	cmpq	-24(%rbp), %rax	# insn, D.16020
	jne	.L571	#,
	.loc 1 2434 0
	movl	$__FUNCTION__.11627, %edx	#,
	movl	$2434, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L571:
	.loc 1 2437 0
	movq	-24(%rbp), %rax	# insn, tmp63
	movq	%rax, %rdi	# tmp63,
	call	delete_insn	#
	.loc 1 2439 0
	movq	-24(%rbp), %rdx	# insn, tmp64
	movq	-16(%rbp), %rcx	# bb, tmp65
	movq	-8(%rbp), %rax	# df, tmp66
	movq	%rcx, %rsi	# tmp65,
	movq	%rax, %rdi	# tmp66,
	call	df_insn_modify	#
	.loc 1 2441 0
	movq	-24(%rbp), %rax	# insn, tmp67
	movq	24(%rax), %rax	# insn_3(D)->fld[2].rtx, D.16021
	.loc 1 2442 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE56:
	.size	df_insn_delete, .-df_insn_delete
	.globl	df_insn_modify
	.type	df_insn_modify, @function
df_insn_modify:
.LFB57:
	.loc 1 2454 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# df, df
	movq	%rsi, -32(%rbp)	# bb, bb
	movq	%rdx, -40(%rbp)	# insn, insn
	.loc 1 2457 0
	movq	-40(%rbp), %rax	# insn, tmp65
	movl	8(%rax), %eax	# insn_1(D)->fld[0].rtint, D.16022
	movl	%eax, -4(%rbp)	# D.16022, uid
	.loc 1 2459 0
	movq	-24(%rbp), %rax	# df, tmp66
	movl	64(%rax), %eax	# df_4(D)->insn_size, D.16023
	cmpl	-4(%rbp), %eax	# uid, D.16023
	ja	.L574	#,
	.loc 1 2460 0
	movq	-24(%rbp), %rax	# df, tmp67
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp67,
	call	df_insn_table_realloc	#
.L574:
	.loc 1 2462 0
	movq	-32(%rbp), %rax	# bb, tmp68
	movl	88(%rax), %edx	# bb_6(D)->index, D.16022
	movq	-24(%rbp), %rax	# df, tmp69
	movq	120(%rax), %rax	# df_4(D)->bbs_modified, D.16024
	movl	%edx, %esi	# D.16022,
	movq	%rax, %rdi	# D.16024,
	call	bitmap_set_bit	#
	.loc 1 2463 0
	movl	-4(%rbp), %edx	# uid, uid.129
	movq	-24(%rbp), %rax	# df, tmp70
	movq	112(%rax), %rax	# df_4(D)->insns_modified, D.16024
	movl	%edx, %esi	# uid.129,
	movq	%rax, %rdi	# D.16024,
	call	bitmap_set_bit	#
	.loc 1 2470 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE57:
	.size	df_insn_modify, .-df_insn_modify
	.type	df_rtx_mem_replace, @function
df_rtx_mem_replace:
.LFB58:
	.loc 1 2490 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# px, px
	movq	%rsi, -32(%rbp)	# data, data
	.loc 1 2491 0
	movq	-32(%rbp), %rax	# data, tmp69
	movq	%rax, -16(%rbp)	# tmp69, args
	.loc 1 2492 0
	movq	-24(%rbp), %rax	# px, tmp70
	movq	(%rax), %rax	# *px_4(D), tmp71
	movq	%rax, -8(%rbp)	# tmp71, mem
	.loc 1 2494 0
	cmpq	$0, -8(%rbp)	#, mem
	jne	.L576	#,
	.loc 1 2495 0
	movl	$0, %eax	#, D.16025
	jmp	.L577	#
.L576:
	.loc 1 2497 0
	movq	-8(%rbp), %rax	# mem, tmp72
	movzwl	(%rax), %eax	# mem_5->code, D.16026
	movzwl	%ax, %eax	# D.16026, D.16027
	cmpl	$55, %eax	#, D.16027
	je	.L579	#,
	cmpl	$66, %eax	#, D.16027
	je	.L584	#,
	jmp	.L583	#
.L579:
	.loc 1 2505 0
	movl	$-1, %eax	#, D.16025
	jmp	.L577	#
.L583:
	.loc 1 2509 0
	movl	$0, %eax	#, D.16025
	jmp	.L577	#
.L584:
	.loc 1 2500 0
	nop
	.loc 1 2512 0
	movq	-16(%rbp), %rax	# args, tmp73
	movq	(%rax), %rax	# args_3->match, D.16028
	movq	-8(%rbp), %rdx	# mem, tmp74
	movq	%rdx, %rsi	# tmp74,
	movq	%rax, %rdi	# D.16028,
	call	rtx_equal_p	#
	testl	%eax, %eax	# D.16025
	jne	.L582	#,
	.loc 1 2514 0
	movl	$0, %eax	#, D.16025
	jmp	.L577	#
.L582:
	.loc 1 2517 0
	movq	-16(%rbp), %rax	# args, tmp75
	movq	8(%rax), %rdx	# args_3->replacement, D.16028
	movq	-16(%rbp), %rax	# args, tmp76
	movq	16(%rax), %rax	# args_3->insn, D.16028
	movq	-24(%rbp), %rsi	# px, tmp77
	movl	$1, %ecx	#,
	movq	%rax, %rdi	# D.16028,
	call	validate_change	#
	.loc 1 2518 0
	movq	-16(%rbp), %rax	# args, tmp78
	movl	24(%rax), %eax	# args_3->modified, D.16025
	leal	1(%rax), %edx	#, D.16025
	movq	-16(%rbp), %rax	# args, tmp79
	movl	%edx, 24(%rax)	# D.16025, args_3->modified
	.loc 1 2520 0
	movl	$0, %eax	#, D.16025
.L577:
	.loc 1 2521 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE58:
	.size	df_rtx_mem_replace, .-df_rtx_mem_replace
	.globl	df_insn_mem_replace
	.type	df_insn_mem_replace, @function
df_insn_mem_replace:
.LFB59:
	.loc 1 2531 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movq	%rdi, -40(%rbp)	# df, df
	movq	%rsi, -48(%rbp)	# bb, bb
	movq	%rdx, -56(%rbp)	# insn, insn
	movq	%rcx, -64(%rbp)	# mem, mem
	movq	%r8, -72(%rbp)	# reg, reg
	.loc 1 2534 0
	movq	-56(%rbp), %rax	# insn, insn.130
	movq	%rax, -16(%rbp)	# insn.130, args.insn
	.loc 1 2535 0
	movq	-64(%rbp), %rax	# mem, tmp64
	movq	%rax, -32(%rbp)	# tmp64, args.match
	.loc 1 2536 0
	movq	-72(%rbp), %rax	# reg, tmp65
	movq	%rax, -24(%rbp)	# tmp65, args.replacement
	.loc 1 2537 0
	movl	$0, -8(%rbp)	#, args.modified
	.loc 1 2540 0
	leaq	-32(%rbp), %rdx	#, tmp66
	leaq	-56(%rbp), %rax	#, tmp67
	movl	$df_rtx_mem_replace, %esi	#,
	movq	%rax, %rdi	# tmp67,
	call	for_each_rtx	#
	.loc 1 2542 0
	movl	-8(%rbp), %eax	# args.modified, D.16029
	testl	%eax, %eax	# D.16029
	je	.L586	#,
	.loc 1 2543 0
	movq	-56(%rbp), %rdx	# insn, insn.131
	movq	-48(%rbp), %rcx	# bb, tmp68
	movq	-40(%rbp), %rax	# df, tmp69
	movq	%rcx, %rsi	# tmp68,
	movq	%rax, %rdi	# tmp69,
	call	df_insn_modify	#
.L586:
	.loc 1 2550 0
	movl	-8(%rbp), %eax	# args.modified, D.16029
	.loc 1 2551 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE59:
	.size	df_insn_mem_replace, .-df_insn_mem_replace
	.type	df_rtx_reg_replace, @function
df_rtx_reg_replace:
.LFB60:
	.loc 1 2561 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# px, px
	movq	%rsi, -32(%rbp)	# data, data
	.loc 1 2562 0
	movq	-24(%rbp), %rax	# px, tmp66
	movq	(%rax), %rax	# *px_2(D), tmp67
	movq	%rax, -16(%rbp)	# tmp67, x
	.loc 1 2563 0
	movq	-32(%rbp), %rax	# data, tmp68
	movq	%rax, -8(%rbp)	# tmp68, args
	.loc 1 2565 0
	cmpq	$0, -16(%rbp)	#, x
	jne	.L589	#,
	.loc 1 2566 0
	movl	$0, %eax	#, D.16030
	jmp	.L590	#
.L589:
	.loc 1 2568 0
	movq	-8(%rbp), %rax	# args, tmp69
	movq	(%rax), %rax	# args_5->match, D.16031
	cmpq	-16(%rbp), %rax	# x, D.16031
	jne	.L591	#,
	.loc 1 2570 0
	movq	-8(%rbp), %rax	# args, tmp70
	movq	8(%rax), %rdx	# args_5->replacement, D.16031
	movq	-8(%rbp), %rax	# args, tmp71
	movq	16(%rax), %rax	# args_5->insn, D.16031
	movq	-24(%rbp), %rsi	# px, tmp72
	movl	$1, %ecx	#,
	movq	%rax, %rdi	# D.16031,
	call	validate_change	#
	.loc 1 2571 0
	movq	-8(%rbp), %rax	# args, tmp73
	movl	24(%rax), %eax	# args_5->modified, D.16030
	leal	1(%rax), %edx	#, D.16030
	movq	-8(%rbp), %rax	# args, tmp74
	movl	%edx, 24(%rax)	# D.16030, args_5->modified
.L591:
	.loc 1 2574 0
	movl	$0, %eax	#, D.16030
.L590:
	.loc 1 2575 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE60:
	.size	df_rtx_reg_replace, .-df_rtx_reg_replace
	.globl	df_refs_reg_replace
	.type	df_refs_reg_replace, @function
df_refs_reg_replace:
.LFB61:
	.loc 1 2588 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$112, %rsp	#,
	movq	%rdi, -72(%rbp)	# df, df
	movq	%rsi, -80(%rbp)	# blocks, blocks
	movq	%rdx, -88(%rbp)	# chain, chain
	movq	%rcx, -96(%rbp)	# oldreg, oldreg
	movq	%r8, -104(%rbp)	# newreg, newreg
	.loc 1 2592 0
	cmpq	$0, -80(%rbp)	#, blocks
	jne	.L593	#,
	.loc 1 2593 0
	movq	-72(%rbp), %rax	# df, tmp75
	movq	128(%rax), %rax	# df_4(D)->all_blocks, tmp76
	movq	%rax, -80(%rbp)	# tmp76, blocks
.L593:
	.loc 1 2595 0
	movq	-96(%rbp), %rax	# oldreg, tmp77
	movq	%rax, -32(%rbp)	# tmp77, args.match
	.loc 1 2596 0
	movq	-104(%rbp), %rax	# newreg, tmp78
	movq	%rax, -24(%rbp)	# tmp78, args.replacement
	.loc 1 2597 0
	movl	$0, -8(%rbp)	#, args.modified
	.loc 1 2599 0
	movq	-88(%rbp), %rax	# chain, tmp79
	movq	%rax, -56(%rbp)	# tmp79, link
	jmp	.L594	#
.L600:
.LBB102:
	.loc 1 2601 0
	movq	-56(%rbp), %rax	# link, tmp80
	movq	8(%rax), %rax	# link_2->ref, tmp81
	movq	%rax, -48(%rbp)	# tmp81, ref
	.loc 1 2602 0
	movq	-48(%rbp), %rax	# ref, tmp82
	movq	8(%rax), %rax	# ref_10->insn, tmp83
	movq	%rax, -40(%rbp)	# tmp83, insn
	.loc 1 2604 0
	movq	-40(%rbp), %rax	# insn, tmp84
	movzwl	(%rax), %eax	# insn_11->code, D.16032
	movzwl	%ax, %eax	# D.16032, D.16033
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.16034
	cmpb	$105, %al	#, D.16034
	je	.L595	#,
	.loc 1 2605 0
	jmp	.L596	#
.L595:
	.loc 1 2607 0
	movq	basic_block_for_insn(%rip), %rax	# basic_block_for_insn, basic_block_for_insn.132
	movq	-48(%rbp), %rdx	# ref, tmp86
	movq	8(%rdx), %rdx	# ref_10->insn, D.16035
	movl	8(%rdx), %edx	# _16->fld[0].rtint, D.16033
	movslq	%edx, %rdx	# D.16033, tmp87
	addq	$4, %rdx	#, tmp88
	movq	(%rax,%rdx,8), %rax	# basic_block_for_insn.132_15->data.bb, D.16036
	movl	88(%rax), %edx	# _18->index, D.16033
	movq	-80(%rbp), %rax	# blocks, tmp89
	movl	%edx, %esi	# D.16033,
	movq	%rax, %rdi	# tmp89,
	call	bitmap_bit_p	#
	testl	%eax, %eax	# D.16033
	je	.L597	#,
	.loc 1 2609 0
	movq	-104(%rbp), %rcx	# newreg, tmp90
	movq	-96(%rbp), %rdx	# oldreg, tmp91
	movq	-48(%rbp), %rsi	# ref, tmp92
	movq	-72(%rbp), %rax	# df, tmp93
	movq	%rax, %rdi	# tmp93,
	call	df_ref_reg_replace	#
	.loc 1 2612 0
	movq	-56(%rbp), %rax	# link, tmp94
	movq	(%rax), %rax	# link_2->next, D.16037
	testq	%rax, %rax	# D.16037
	je	.L598	#,
	.loc 1 2612 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# ref, tmp95
	movq	8(%rax), %rdx	# ref_10->insn, D.16035
	.loc 1 2613 0 is_stmt 1 discriminator 1
	movq	-56(%rbp), %rax	# link, tmp96
	movq	(%rax), %rax	# link_2->next, D.16037
	movq	8(%rax), %rax	# _23->ref, D.16038
	movq	8(%rax), %rax	# _24->insn, D.16035
	.loc 1 2612 0 discriminator 1
	cmpq	%rax, %rdx	# D.16035, D.16035
	je	.L596	#,
.L598:
	.loc 1 2614 0
	movq	-40(%rbp), %rax	# insn, tmp97
	movq	56(%rax), %rax	# insn_11->fld[6].rtx, D.16035
	testq	%rax, %rax	# D.16035
	je	.L596	#,
	.loc 1 2616 0
	movq	-40(%rbp), %rax	# insn, tmp98
	movq	%rax, -16(%rbp)	# tmp98, args.insn
	.loc 1 2617 0
	movq	-40(%rbp), %rax	# insn, tmp99
	leaq	56(%rax), %rcx	#, D.16039
	leaq	-32(%rbp), %rax	#, tmp100
	movq	%rax, %rdx	# tmp100,
	movl	$df_rtx_reg_replace, %esi	#,
	movq	%rcx, %rdi	# D.16039,
	call	for_each_rtx	#
	jmp	.L596	#
.L597:
	.loc 1 2624 0
	movl	$__FUNCTION__.11676, %edx	#,
	movl	$2624, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L596:
.LBE102:
	.loc 1 2599 0
	movq	-56(%rbp), %rax	# link, tmp101
	movq	(%rax), %rax	# link_2->next, tmp102
	movq	%rax, -56(%rbp)	# tmp102, link
.L594:
	.loc 1 2599 0 is_stmt 0 discriminator 1
	cmpq	$0, -56(%rbp)	#, link
	jne	.L600	#,
	.loc 1 2627 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE61:
	.size	df_refs_reg_replace, .-df_refs_reg_replace
	.globl	df_reg_replace
	.type	df_reg_replace, @function
df_reg_replace:
.LFB62:
	.loc 1 2640 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# df, df
	movq	%rsi, -32(%rbp)	# blocks, blocks
	movq	%rdx, -40(%rbp)	# oldreg, oldreg
	movq	%rcx, -48(%rbp)	# newreg, newreg
	.loc 1 2641 0
	movq	-40(%rbp), %rax	# oldreg, tmp71
	movl	8(%rax), %eax	# oldreg_1(D)->fld[0].rtuint, tmp72
	movl	%eax, -4(%rbp)	# tmp72, oldregno
	.loc 1 2643 0
	movq	-24(%rbp), %rax	# df, tmp73
	movq	40(%rax), %rax	# df_3(D)->regs, D.16040
	movl	-4(%rbp), %edx	# oldregno, D.16041
	salq	$5, %rdx	#, D.16041
	addq	%rdx, %rax	# D.16041, D.16040
	movq	(%rax), %rdx	# _7->defs, D.16042
	movq	-48(%rbp), %rdi	# newreg, tmp74
	movq	-40(%rbp), %rcx	# oldreg, tmp75
	movq	-32(%rbp), %rsi	# blocks, tmp76
	movq	-24(%rbp), %rax	# df, tmp77
	movq	%rdi, %r8	# tmp74,
	movq	%rax, %rdi	# tmp77,
	call	df_refs_reg_replace	#
	.loc 1 2644 0
	movq	-24(%rbp), %rax	# df, tmp78
	movq	40(%rax), %rax	# df_3(D)->regs, D.16040
	movl	-4(%rbp), %edx	# oldregno, D.16041
	salq	$5, %rdx	#, D.16041
	addq	%rdx, %rax	# D.16041, D.16040
	movq	8(%rax), %rdx	# _14->uses, D.16042
	movq	-48(%rbp), %rdi	# newreg, tmp79
	movq	-40(%rbp), %rcx	# oldreg, tmp80
	movq	-32(%rbp), %rsi	# blocks, tmp81
	movq	-24(%rbp), %rax	# df, tmp82
	movq	%rdi, %r8	# tmp79,
	movq	%rax, %rdi	# tmp82,
	call	df_refs_reg_replace	#
	.loc 1 2645 0
	movl	$1, %eax	#, D.16043
	.loc 1 2646 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE62:
	.size	df_reg_replace, .-df_reg_replace
	.globl	df_ref_reg_replace
	.type	df_ref_reg_replace, @function
df_ref_reg_replace:
.LFB63:
	.loc 1 2657 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -8(%rbp)	# df, df
	movq	%rsi, -16(%rbp)	# ref, ref
	movq	%rdx, -24(%rbp)	# oldreg, oldreg
	movq	%rcx, -32(%rbp)	# newreg, newreg
	.loc 1 2660 0
	movq	-16(%rbp), %rax	# ref, tmp74
	movq	8(%rax), %rax	# ref_2(D)->insn, D.16045
	movzwl	(%rax), %eax	# _3->code, D.16046
	movzwl	%ax, %eax	# D.16046, D.16044
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.16047
	cmpb	$105, %al	#, D.16047
	je	.L604	#,
	.loc 1 2661 0
	movl	$0, %eax	#, D.16044
	jmp	.L605	#
.L604:
	.loc 1 2663 0
	cmpq	$0, -24(%rbp)	#, oldreg
	je	.L606	#,
	.loc 1 2663 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# ref, tmp76
	movq	(%rax), %rax	# ref_2(D)->reg, D.16045
	cmpq	-24(%rbp), %rax	# oldreg, D.16045
	je	.L606	#,
	.loc 1 2664 0 is_stmt 1
	movl	$__FUNCTION__.11693, %edx	#,
	movl	$2664, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L606:
	.loc 1 2666 0
	movq	-16(%rbp), %rax	# ref, tmp77
	movq	16(%rax), %rsi	# ref_2(D)->loc, D.16048
	movq	-16(%rbp), %rax	# ref, tmp78
	movq	8(%rax), %rax	# ref_2(D)->insn, D.16045
	movq	-32(%rbp), %rdx	# newreg, tmp79
	movl	$1, %ecx	#,
	movq	%rax, %rdi	# D.16045,
	call	validate_change	#
	testl	%eax, %eax	# D.16044
	jne	.L607	#,
	.loc 1 2667 0
	movl	$0, %eax	#, D.16044
	jmp	.L605	#
.L607:
	.loc 1 2669 0
	movq	-16(%rbp), %rax	# ref, tmp80
	movq	8(%rax), %rdx	# ref_2(D)->insn, D.16045
	movq	basic_block_for_insn(%rip), %rax	# basic_block_for_insn, basic_block_for_insn.133
	movq	-16(%rbp), %rcx	# ref, tmp81
	movq	8(%rcx), %rcx	# ref_2(D)->insn, D.16045
	movl	8(%rcx), %ecx	# _17->fld[0].rtint, D.16044
	movslq	%ecx, %rcx	# D.16044, tmp82
	addq	$4, %rcx	#, tmp83
	movq	(%rax,%rcx,8), %rcx	# basic_block_for_insn.133_16->data.bb, D.16049
	movq	-8(%rbp), %rax	# df, tmp84
	movq	%rcx, %rsi	# D.16049,
	movq	%rax, %rdi	# tmp84,
	call	df_insn_modify	#
	.loc 1 2670 0
	movl	$1, %eax	#, D.16044
.L605:
	.loc 1 2671 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE63:
	.size	df_ref_reg_replace, .-df_ref_reg_replace
	.globl	df_bb_def_use_swap
	.type	df_bb_def_use_swap, @function
df_bb_def_use_swap:
.LFB64:
	.loc 1 2681 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movq	%rdi, -40(%rbp)	# df, df
	movq	%rsi, -48(%rbp)	# bb, bb
	movq	%rdx, -56(%rbp)	# def_insn, def_insn
	movq	%rcx, -64(%rbp)	# use_insn, use_insn
	movl	%r8d, -68(%rbp)	# regno, regno
	.loc 1 2688 0
	movl	-68(%rbp), %ecx	# regno, tmp80
	movq	-56(%rbp), %rdx	# def_insn, tmp81
	movq	-48(%rbp), %rsi	# bb, tmp82
	movq	-40(%rbp), %rax	# df, tmp83
	movq	%rax, %rdi	# tmp83,
	call	df_bb_insn_regno_first_def_find	#
	movq	%rax, -24(%rbp)	# tmp84, def
	.loc 1 2689 0
	cmpq	$0, -24(%rbp)	#, def
	jne	.L609	#,
	.loc 1 2690 0
	movl	$0, %eax	#, D.16050
	jmp	.L610	#
.L609:
	.loc 1 2692 0
	movl	-68(%rbp), %ecx	# regno, tmp85
	movq	-64(%rbp), %rdx	# use_insn, tmp86
	movq	-48(%rbp), %rsi	# bb, tmp87
	movq	-40(%rbp), %rax	# df, tmp88
	movq	%rax, %rdi	# tmp88,
	call	df_bb_insn_regno_last_use_find	#
	movq	%rax, -16(%rbp)	# tmp89, use
	.loc 1 2693 0
	cmpq	$0, -16(%rbp)	#, use
	jne	.L611	#,
	.loc 1 2694 0
	movl	$0, %eax	#, D.16050
	jmp	.L610	#
.L611:
	.loc 1 2697 0
	movq	-64(%rbp), %rax	# use_insn, tmp90
	movl	8(%rax), %eax	# use_insn_8(D)->fld[0].rtint, tmp91
	movl	%eax, -32(%rbp)	# tmp91, use_uid
	.loc 1 2698 0
	movq	-16(%rbp), %rdx	# use, tmp92
	movq	-40(%rbp), %rax	# df, tmp93
	movq	%rdx, %rsi	# tmp92,
	movq	%rax, %rdi	# tmp93,
	call	df_use_unlink	#
	.loc 1 2699 0
	movq	-40(%rbp), %rax	# df, tmp94
	movq	56(%rax), %rcx	# df_2(D)->insns, D.16051
	movl	-32(%rbp), %eax	# use_uid, tmp95
	movslq	%eax, %rdx	# tmp95, D.16052
	movq	%rdx, %rax	# D.16052, tmp96
	addq	%rax, %rax	# tmp96
	addq	%rdx, %rax	# D.16052, tmp96
	salq	$3, %rax	#, tmp97
	addq	%rcx, %rax	# D.16051, D.16051
	leaq	8(%rax), %rdx	#, D.16053
	movq	-16(%rbp), %rax	# use, tmp98
	movq	%rax, %rsi	# tmp98,
	movq	%rdx, %rdi	# D.16053,
	call	df_ref_unlink	#
	.loc 1 2703 0
	movq	-56(%rbp), %rax	# def_insn, tmp99
	movl	8(%rax), %eax	# def_insn_4(D)->fld[0].rtint, tmp100
	movl	%eax, -28(%rbp)	# tmp100, def_uid
	.loc 1 2704 0
	movq	-40(%rbp), %rax	# df, tmp101
	movq	56(%rax), %rcx	# df_2(D)->insns, D.16051
	movl	-28(%rbp), %eax	# def_uid, tmp102
	movslq	%eax, %rdx	# tmp102, D.16052
	movq	%rdx, %rax	# D.16052, tmp103
	addq	%rax, %rax	# tmp103
	addq	%rdx, %rax	# D.16052, tmp103
	salq	$3, %rax	#, tmp104
	addq	%rcx, %rax	# D.16051, D.16051
	movq	-24(%rbp), %rdx	# def, tmp105
	movq	%rdx, %rsi	# tmp105,
	movq	%rax, %rdi	# D.16053,
	call	df_ref_unlink	#
	movq	%rax, -8(%rbp)	# tmp106, link
	.loc 1 2705 0
	movq	-8(%rbp), %rax	# link, tmp107
	movq	-24(%rbp), %rdx	# def, tmp108
	movq	%rdx, 8(%rax)	# tmp108, link_23->ref
	.loc 1 2706 0
	movq	-40(%rbp), %rax	# df, tmp109
	movq	56(%rax), %rcx	# df_2(D)->insns, D.16051
	movl	-32(%rbp), %eax	# use_uid, tmp110
	movslq	%eax, %rdx	# tmp110, D.16052
	movq	%rdx, %rax	# D.16052, tmp111
	addq	%rax, %rax	# tmp111
	addq	%rdx, %rax	# D.16052, tmp111
	salq	$3, %rax	#, tmp112
	addq	%rcx, %rax	# D.16051, D.16051
	movq	(%rax), %rdx	# _27->defs, D.16054
	movq	-8(%rbp), %rax	# link, tmp113
	movq	%rdx, (%rax)	# D.16054, link_23->next
	.loc 1 2707 0
	movq	-40(%rbp), %rax	# df, tmp114
	movq	56(%rax), %rcx	# df_2(D)->insns, D.16051
	movl	-32(%rbp), %eax	# use_uid, tmp115
	movslq	%eax, %rdx	# tmp115, D.16052
	movq	%rdx, %rax	# D.16052, tmp116
	addq	%rax, %rax	# tmp116
	addq	%rdx, %rax	# D.16052, tmp116
	salq	$3, %rax	#, tmp117
	leaq	(%rcx,%rax), %rdx	#, D.16051
	movq	-8(%rbp), %rax	# link, tmp118
	movq	%rax, (%rdx)	# tmp118, _32->defs
	.loc 1 2716 0
	movq	-24(%rbp), %rax	# def, tmp119
	movq	-64(%rbp), %rdx	# use_insn, tmp120
	movq	%rdx, 8(%rax)	# tmp120, def_6->insn
	.loc 1 2717 0
	movq	-24(%rbp), %rax	# def, D.16050
.L610:
	.loc 1 2718 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE64:
	.size	df_bb_def_use_swap, .-df_bb_def_use_swap
	.type	df_insns_modify, @function
df_insns_modify:
.LFB65:
	.loc 1 2729 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# df, df
	movq	%rsi, -32(%rbp)	# bb, bb
	movq	%rdx, -40(%rbp)	# first_insn, first_insn
	movq	%rcx, -48(%rbp)	# last_insn, last_insn
	.loc 1 2732 0
	movq	-40(%rbp), %rax	# first_insn, tmp65
	movq	%rax, -8(%rbp)	# tmp65, insn
.L619:
.LBB103:
	.loc 1 2739 0
	movq	-8(%rbp), %rax	# insn, tmp66
	movzwl	(%rax), %eax	# insn_1->code, D.16055
	cmpw	$34, %ax	#, D.16055
	jne	.L613	#,
	.loc 1 2740 0
	movq	-8(%rbp), %rax	# insn, tmp67
	movzbl	3(%rax), %eax	# *insn_1, D.16056
	andl	$4, %eax	#, D.16056
	testb	%al, %al	# D.16056
	je	.L614	#,
.L613:
	.loc 1 2741 0
	movq	-8(%rbp), %rax	# insn, tmp68
	movzwl	(%rax), %eax	# insn_1->code, D.16055
	cmpw	$36, %ax	#, D.16055
	jne	.L615	#,
.L614:
	.loc 1 2742 0
	movl	$__FUNCTION__.11714, %edx	#,
	movl	$2742, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L615:
	.loc 1 2744 0
	movq	-8(%rbp), %rax	# insn, tmp69
	movl	8(%rax), %eax	# insn_1->fld[0].rtint, D.16057
	movl	%eax, -12(%rbp)	# D.16057, uid
	.loc 1 2746 0
	movq	-24(%rbp), %rax	# df, tmp70
	movl	64(%rax), %eax	# df_10(D)->insn_size, D.16058
	cmpl	-12(%rbp), %eax	# uid, D.16058
	ja	.L616	#,
	.loc 1 2747 0
	movq	-24(%rbp), %rax	# df, tmp71
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp71,
	call	df_insn_table_realloc	#
.L616:
	.loc 1 2749 0
	movq	-8(%rbp), %rdx	# insn, tmp72
	movq	-32(%rbp), %rcx	# bb, tmp73
	movq	-24(%rbp), %rax	# df, tmp74
	movq	%rcx, %rsi	# tmp73,
	movq	%rax, %rdi	# tmp74,
	call	df_insn_modify	#
	.loc 1 2751 0
	movq	-8(%rbp), %rax	# insn, tmp75
	cmpq	-48(%rbp), %rax	# last_insn, tmp75
	jne	.L617	#,
	.loc 1 2752 0
	jmp	.L620	#
.L617:
.LBE103:
	.loc 1 2732 0
	movq	-8(%rbp), %rax	# insn, tmp76
	movq	24(%rax), %rax	# insn_1->fld[2].rtx, tmp77
	movq	%rax, -8(%rbp)	# tmp77, insn
	.loc 1 2753 0
	jmp	.L619	#
.L620:
	.loc 1 2754 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE65:
	.size	df_insns_modify, .-df_insns_modify
	.globl	df_pattern_emit_before
	.type	df_pattern_emit_before, @function
df_pattern_emit_before:
.LFB66:
	.loc 1 2764 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# df, df
	movq	%rsi, -32(%rbp)	# pattern, pattern
	movq	%rdx, -40(%rbp)	# bb, bb
	movq	%rcx, -48(%rbp)	# insn, insn
	.loc 1 2766 0
	movq	-48(%rbp), %rax	# insn, tmp63
	movq	16(%rax), %rax	# insn_2(D)->fld[1].rtx, tmp64
	movq	%rax, -16(%rbp)	# tmp64, prev_insn
	.loc 1 2769 0
	movq	-40(%rbp), %rax	# bb, tmp65
	movq	(%rax), %rax	# bb_4(D)->head, D.16060
	cmpq	-48(%rbp), %rax	# insn, D.16060
	jne	.L622	#,
	.loc 1 2770 0
	movl	$__FUNCTION__.11725, %edx	#,
	movl	$2770, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L622:
	.loc 1 2771 0
	movq	-48(%rbp), %rdx	# insn, tmp66
	movq	-32(%rbp), %rax	# pattern, tmp67
	movq	%rdx, %rsi	# tmp66,
	movq	%rax, %rdi	# tmp67,
	call	emit_insn_before	#
	movq	%rax, -8(%rbp)	# tmp68, ret_insn
	.loc 1 2772 0
	movq	-8(%rbp), %rax	# ret_insn, tmp69
	cmpq	-48(%rbp), %rax	# insn, tmp69
	jne	.L623	#,
	.loc 1 2773 0
	movq	-8(%rbp), %rax	# ret_insn, D.16059
	jmp	.L624	#
.L623:
	.loc 1 2775 0
	movq	-16(%rbp), %rax	# prev_insn, tmp70
	movq	24(%rax), %rdx	# prev_insn_3->fld[2].rtx, D.16060
	movq	-8(%rbp), %rcx	# ret_insn, tmp71
	movq	-40(%rbp), %rsi	# bb, tmp72
	movq	-24(%rbp), %rax	# df, tmp73
	movq	%rax, %rdi	# tmp73,
	call	df_insns_modify	#
	.loc 1 2776 0
	movq	-8(%rbp), %rax	# ret_insn, D.16059
.L624:
	.loc 1 2777 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE66:
	.size	df_pattern_emit_before, .-df_pattern_emit_before
	.globl	df_pattern_emit_after
	.type	df_pattern_emit_after, @function
df_pattern_emit_after:
.LFB67:
	.loc 1 2787 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# df, df
	movq	%rsi, -32(%rbp)	# pattern, pattern
	movq	%rdx, -40(%rbp)	# bb, bb
	movq	%rcx, -48(%rbp)	# insn, insn
	.loc 1 2790 0
	movq	-48(%rbp), %rdx	# insn, tmp62
	movq	-32(%rbp), %rax	# pattern, tmp63
	movq	%rdx, %rsi	# tmp62,
	movq	%rax, %rdi	# tmp63,
	call	emit_insn_after	#
	movq	%rax, -8(%rbp)	# tmp64, ret_insn
	.loc 1 2791 0
	movq	-8(%rbp), %rax	# ret_insn, tmp65
	cmpq	-48(%rbp), %rax	# insn, tmp65
	jne	.L626	#,
	.loc 1 2792 0
	movq	-8(%rbp), %rax	# ret_insn, D.16061
	jmp	.L627	#
.L626:
	.loc 1 2794 0
	movq	-48(%rbp), %rax	# insn, tmp66
	movq	24(%rax), %rdx	# insn_3(D)->fld[2].rtx, D.16062
	movq	-8(%rbp), %rcx	# ret_insn, tmp67
	movq	-40(%rbp), %rsi	# bb, tmp68
	movq	-24(%rbp), %rax	# df, tmp69
	movq	%rax, %rdi	# tmp69,
	call	df_insns_modify	#
	.loc 1 2795 0
	movq	-8(%rbp), %rax	# ret_insn, D.16061
.L627:
	.loc 1 2796 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE67:
	.size	df_pattern_emit_after, .-df_pattern_emit_after
	.globl	df_jump_pattern_emit_after
	.type	df_jump_pattern_emit_after, @function
df_jump_pattern_emit_after:
.LFB68:
	.loc 1 2806 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# df, df
	movq	%rsi, -32(%rbp)	# pattern, pattern
	movq	%rdx, -40(%rbp)	# bb, bb
	movq	%rcx, -48(%rbp)	# insn, insn
	.loc 1 2809 0
	movq	-48(%rbp), %rdx	# insn, tmp62
	movq	-32(%rbp), %rax	# pattern, tmp63
	movq	%rdx, %rsi	# tmp62,
	movq	%rax, %rdi	# tmp63,
	call	emit_jump_insn_after	#
	movq	%rax, -8(%rbp)	# tmp64, ret_insn
	.loc 1 2810 0
	movq	-8(%rbp), %rax	# ret_insn, tmp65
	cmpq	-48(%rbp), %rax	# insn, tmp65
	jne	.L629	#,
	.loc 1 2811 0
	movq	-8(%rbp), %rax	# ret_insn, D.16063
	jmp	.L630	#
.L629:
	.loc 1 2813 0
	movq	-48(%rbp), %rax	# insn, tmp66
	movq	24(%rax), %rdx	# insn_3(D)->fld[2].rtx, D.16064
	movq	-8(%rbp), %rcx	# ret_insn, tmp67
	movq	-40(%rbp), %rsi	# bb, tmp68
	movq	-24(%rbp), %rax	# df, tmp69
	movq	%rax, %rdi	# tmp69,
	call	df_insns_modify	#
	.loc 1 2814 0
	movq	-8(%rbp), %rax	# ret_insn, D.16063
.L630:
	.loc 1 2815 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE68:
	.size	df_jump_pattern_emit_after, .-df_jump_pattern_emit_after
	.globl	df_insn_move_before
	.type	df_insn_move_before, @function
df_insn_move_before:
.LFB69:
	.loc 1 2830 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -24(%rbp)	# df, df
	movq	%rsi, -32(%rbp)	# bb, bb
	movq	%rdx, -40(%rbp)	# insn, insn
	movq	%rcx, -48(%rbp)	# before_bb, before_bb
	movq	%r8, -56(%rbp)	# before_insn, before_insn
	.loc 1 2834 0
	cmpq	$0, -32(%rbp)	#, bb
	jne	.L632	#,
	.loc 1 2835 0
	movq	-56(%rbp), %rcx	# before_insn, tmp78
	movq	-48(%rbp), %rdx	# before_bb, tmp79
	movq	-40(%rbp), %rsi	# insn, tmp80
	movq	-24(%rbp), %rax	# df, tmp81
	movq	%rax, %rdi	# tmp81,
	call	df_pattern_emit_before	#
	jmp	.L633	#
.L632:
	.loc 1 2837 0
	movq	-40(%rbp), %rax	# insn, tmp82
	movl	8(%rax), %eax	# insn_6(D)->fld[0].rtint, D.16066
	movl	%eax, -12(%rbp)	# D.16066, uid
	.loc 1 2840 0
	movq	-24(%rbp), %rax	# df, tmp83
	movq	56(%rax), %rcx	# df_5(D)->insns, D.16067
	movl	-12(%rbp), %edx	# uid, D.16068
	movq	%rdx, %rax	# D.16068, tmp84
	addq	%rax, %rax	# tmp84
	addq	%rdx, %rax	# D.16068, tmp84
	salq	$3, %rax	#, tmp85
	addq	%rcx, %rax	# D.16067, D.16067
	movq	(%rax), %rax	# _15->defs, tmp86
	movq	%rax, -8(%rbp)	# tmp86, link
	jmp	.L634	#
.L635:
	.loc 1 2841 0 discriminator 2
	movq	basic_block_for_insn(%rip), %rax	# basic_block_for_insn, basic_block_for_insn.134
	movq	-8(%rbp), %rdx	# link, tmp87
	movq	8(%rdx), %rdx	# link_1->ref, D.16069
	movq	8(%rdx), %rdx	# _18->insn, D.16070
	movl	8(%rdx), %edx	# _19->fld[0].rtint, D.16066
	movslq	%edx, %rdx	# D.16066, tmp88
	leaq	4(%rdx), %rcx	#, tmp89
	movq	-48(%rbp), %rdx	# before_bb, tmp90
	movq	%rdx, (%rax,%rcx,8)	# tmp90, basic_block_for_insn.134_17->data.bb
	.loc 1 2840 0 discriminator 2
	movq	-8(%rbp), %rax	# link, tmp91
	movq	(%rax), %rax	# link_1->next, tmp92
	movq	%rax, -8(%rbp)	# tmp92, link
.L634:
	.loc 1 2840 0 is_stmt 0 discriminator 1
	cmpq	$0, -8(%rbp)	#, link
	jne	.L635	#,
	.loc 1 2842 0 is_stmt 1
	movq	-24(%rbp), %rax	# df, tmp93
	movq	56(%rax), %rcx	# df_5(D)->insns, D.16067
	movl	-12(%rbp), %edx	# uid, D.16068
	movq	%rdx, %rax	# D.16068, tmp94
	addq	%rax, %rax	# tmp94
	addq	%rdx, %rax	# D.16068, tmp94
	salq	$3, %rax	#, tmp95
	addq	%rcx, %rax	# D.16067, D.16067
	movq	8(%rax), %rax	# _25->uses, tmp96
	movq	%rax, -8(%rbp)	# tmp96, link
	jmp	.L636	#
.L637:
	.loc 1 2843 0 discriminator 2
	movq	basic_block_for_insn(%rip), %rax	# basic_block_for_insn, basic_block_for_insn.135
	movq	-8(%rbp), %rdx	# link, tmp97
	movq	8(%rdx), %rdx	# link_2->ref, D.16069
	movq	8(%rdx), %rdx	# _28->insn, D.16070
	movl	8(%rdx), %edx	# _29->fld[0].rtint, D.16066
	movslq	%edx, %rdx	# D.16066, tmp98
	leaq	4(%rdx), %rcx	#, tmp99
	movq	-48(%rbp), %rdx	# before_bb, tmp100
	movq	%rdx, (%rax,%rcx,8)	# tmp100, basic_block_for_insn.135_27->data.bb
	.loc 1 2842 0 discriminator 2
	movq	-8(%rbp), %rax	# link, tmp101
	movq	(%rax), %rax	# link_2->next, tmp102
	movq	%rax, -8(%rbp)	# tmp102, link
.L636:
	.loc 1 2842 0 is_stmt 0 discriminator 1
	cmpq	$0, -8(%rbp)	#, link
	jne	.L637	#,
	.loc 1 2852 0 is_stmt 1
	movq	-56(%rbp), %rdx	# before_insn, tmp103
	movq	-40(%rbp), %rax	# insn, tmp104
	movq	%rdx, %rsi	# tmp103,
	movq	%rax, %rdi	# tmp104,
	call	emit_insn_before	#
.L633:
	.loc 1 2853 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE69:
	.size	df_insn_move_before, .-df_insn_move_before
	.globl	df_insn_regno_def_p
	.type	df_insn_regno_def_p, @function
df_insn_regno_def_p:
.LFB70:
	.loc 1 2864 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -40(%rbp)	# df, df
	movq	%rsi, -48(%rbp)	# bb, bb
	movq	%rdx, -56(%rbp)	# insn, insn
	movl	%ecx, -60(%rbp)	# regno, regno
	.loc 1 2868 0
	movq	-56(%rbp), %rax	# insn, tmp71
	movl	8(%rax), %eax	# insn_4(D)->fld[0].rtint, D.16071
	movl	%eax, -20(%rbp)	# D.16071, uid
	.loc 1 2870 0
	movq	-40(%rbp), %rax	# df, tmp72
	movq	56(%rax), %rcx	# df_7(D)->insns, D.16072
	movl	-20(%rbp), %edx	# uid, D.16073
	movq	%rdx, %rax	# D.16073, tmp73
	addq	%rax, %rax	# tmp73
	addq	%rdx, %rax	# D.16073, tmp73
	salq	$3, %rax	#, tmp74
	addq	%rcx, %rax	# D.16072, D.16072
	movq	(%rax), %rax	# _11->defs, tmp75
	movq	%rax, -16(%rbp)	# tmp75, link
	jmp	.L639	#
.L644:
.LBB104:
	.loc 1 2872 0
	movq	-16(%rbp), %rax	# link, tmp76
	movq	8(%rax), %rax	# link_1->ref, tmp77
	movq	%rax, -8(%rbp)	# tmp77, def
	.loc 1 2874 0
	movq	-8(%rbp), %rax	# def, tmp78
	movq	(%rax), %rax	# def_13->reg, D.16074
	movzwl	(%rax), %eax	# _14->code, D.16075
	cmpw	$63, %ax	#, D.16075
	jne	.L640	#,
	.loc 1 2874 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# def, tmp79
	movq	(%rax), %rax	# def_13->reg, D.16074
	movq	8(%rax), %rax	# _16->fld[0].rtx, iftmp.136
	jmp	.L641	#
.L640:
	.loc 1 2874 0 discriminator 2
	movq	-8(%rbp), %rax	# def, tmp80
	movq	(%rax), %rax	# def_13->reg, iftmp.136
.L641:
	.loc 1 2874 0 discriminator 3
	movl	8(%rax), %eax	# iftmp.136_2->fld[0].rtuint, D.16076
	cmpl	-60(%rbp), %eax	# regno, D.16076
	jne	.L642	#,
	.loc 1 2875 0 is_stmt 1
	movl	$1, %eax	#, D.16071
	jmp	.L643	#
.L642:
.LBE104:
	.loc 1 2870 0
	movq	-16(%rbp), %rax	# link, tmp81
	movq	(%rax), %rax	# link_1->next, tmp82
	movq	%rax, -16(%rbp)	# tmp82, link
.L639:
	.loc 1 2870 0 is_stmt 0 discriminator 1
	cmpq	$0, -16(%rbp)	#, link
	jne	.L644	#,
	.loc 1 2878 0 is_stmt 1
	movl	$0, %eax	#, D.16071
.L643:
	.loc 1 2879 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE70:
	.size	df_insn_regno_def_p, .-df_insn_regno_def_p
	.type	df_def_dominates_all_uses_p, @function
df_def_dominates_all_uses_p:
.LFB71:
	.loc 1 2886 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -40(%rbp)	# df, df
	movq	%rsi, -48(%rbp)	# def, def
	.loc 1 2890 0
	movq	-48(%rbp), %rax	# def, tmp62
	movq	24(%rax), %rax	# def_4(D)->chain, tmp63
	movq	%rax, -24(%rbp)	# tmp63, du_link
	jmp	.L646	#
.L651:
.LBB105:
	.loc 1 2892 0
	movq	-24(%rbp), %rax	# du_link, tmp64
	movq	8(%rax), %rax	# du_link_1->ref, tmp65
	movq	%rax, -8(%rbp)	# tmp65, use
	.loc 1 2896 0
	movq	-8(%rbp), %rax	# use, tmp66
	movq	24(%rax), %rax	# use_6->chain, tmp67
	movq	%rax, -16(%rbp)	# tmp67, ud_link
	jmp	.L647	#
.L650:
	.loc 1 2897 0
	movq	-16(%rbp), %rax	# ud_link, tmp68
	movq	8(%rax), %rax	# ud_link_2->ref, D.16078
	cmpq	-48(%rbp), %rax	# def, D.16078
	je	.L648	#,
	.loc 1 2898 0
	movl	$0, %eax	#, D.16077
	jmp	.L649	#
.L648:
	.loc 1 2896 0
	movq	-16(%rbp), %rax	# ud_link, tmp69
	movq	(%rax), %rax	# ud_link_2->next, tmp70
	movq	%rax, -16(%rbp)	# tmp70, ud_link
.L647:
	.loc 1 2896 0 is_stmt 0 discriminator 1
	cmpq	$0, -16(%rbp)	#, ud_link
	jne	.L650	#,
.LBE105:
	.loc 1 2890 0 is_stmt 1
	movq	-24(%rbp), %rax	# du_link, tmp71
	movq	(%rax), %rax	# du_link_1->next, tmp72
	movq	%rax, -24(%rbp)	# tmp72, du_link
.L646:
	.loc 1 2890 0 is_stmt 0 discriminator 1
	cmpq	$0, -24(%rbp)	#, du_link
	jne	.L651	#,
	.loc 1 2900 0 is_stmt 1
	movl	$1, %eax	#, D.16077
.L649:
	.loc 1 2901 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE71:
	.size	df_def_dominates_all_uses_p, .-df_def_dominates_all_uses_p
	.globl	df_insn_dominates_all_uses_p
	.type	df_insn_dominates_all_uses_p, @function
df_insn_dominates_all_uses_p:
.LFB72:
	.loc 1 2909 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$56, %rsp	#,
	movq	%rdi, -40(%rbp)	# df, df
	movq	%rsi, -48(%rbp)	# bb, bb
	movq	%rdx, -56(%rbp)	# insn, insn
	.loc 1 2913 0
	movq	-56(%rbp), %rax	# insn, tmp67
	movl	8(%rax), %eax	# insn_3(D)->fld[0].rtint, D.16079
	movl	%eax, -20(%rbp)	# D.16079, uid
	.loc 1 2915 0
	movq	-40(%rbp), %rax	# df, tmp68
	movq	56(%rax), %rcx	# df_6(D)->insns, D.16080
	movl	-20(%rbp), %edx	# uid, D.16081
	movq	%rdx, %rax	# D.16081, tmp69
	addq	%rax, %rax	# tmp69
	addq	%rdx, %rax	# D.16081, tmp69
	salq	$3, %rax	#, tmp70
	addq	%rcx, %rax	# D.16080, D.16080
	movq	(%rax), %rax	# _10->defs, tmp71
	movq	%rax, -16(%rbp)	# tmp71, link
	jmp	.L653	#
.L656:
.LBB106:
	.loc 1 2917 0
	movq	-16(%rbp), %rax	# link, tmp72
	movq	8(%rax), %rax	# link_1->ref, tmp73
	movq	%rax, -8(%rbp)	# tmp73, def
	.loc 1 2919 0
	movq	-8(%rbp), %rdx	# def, tmp74
	movq	-40(%rbp), %rax	# df, tmp75
	movq	%rdx, %rsi	# tmp74,
	movq	%rax, %rdi	# tmp75,
	call	df_def_dominates_all_uses_p	#
	testl	%eax, %eax	# D.16079
	jne	.L654	#,
	.loc 1 2920 0
	movl	$0, %eax	#, D.16079
	jmp	.L655	#
.L654:
.LBE106:
	.loc 1 2915 0
	movq	-16(%rbp), %rax	# link, tmp76
	movq	(%rax), %rax	# link_1->next, tmp77
	movq	%rax, -16(%rbp)	# tmp77, link
.L653:
	.loc 1 2915 0 is_stmt 0 discriminator 1
	cmpq	$0, -16(%rbp)	#, link
	jne	.L656	#,
	.loc 1 2923 0 is_stmt 1
	movl	$1, %eax	#, D.16079
.L655:
	.loc 1 2924 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE72:
	.size	df_insn_dominates_all_uses_p, .-df_insn_dominates_all_uses_p
	.type	df_def_dominates_uses_p, @function
df_def_dominates_uses_p:
.LFB73:
	.loc 1 2934 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -40(%rbp)	# df, df
	movq	%rsi, -48(%rbp)	# def, def
	movq	%rdx, -56(%rbp)	# blocks, blocks
	.loc 1 2938 0
	movq	-48(%rbp), %rax	# def, tmp68
	movq	24(%rax), %rax	# def_4(D)->chain, tmp69
	movq	%rax, -24(%rbp)	# tmp69, du_link
	jmp	.L658	#
.L664:
.LBB107:
	.loc 1 2940 0
	movq	-24(%rbp), %rax	# du_link, tmp70
	movq	8(%rax), %rax	# du_link_1->ref, tmp71
	movq	%rax, -8(%rbp)	# tmp71, use
	.loc 1 2946 0
	movq	basic_block_for_insn(%rip), %rax	# basic_block_for_insn, basic_block_for_insn.137
	movq	-8(%rbp), %rdx	# use, tmp72
	movq	8(%rdx), %rdx	# use_6->insn, D.16083
	movl	8(%rdx), %edx	# _8->fld[0].rtint, D.16082
	movslq	%edx, %rdx	# D.16082, tmp73
	addq	$4, %rdx	#, tmp74
	movq	(%rax,%rdx,8), %rax	# basic_block_for_insn.137_7->data.bb, D.16084
	movl	88(%rax), %edx	# _10->index, D.16082
	movq	-56(%rbp), %rax	# blocks, tmp75
	movl	%edx, %esi	# D.16082,
	movq	%rax, %rdi	# tmp75,
	call	bitmap_bit_p	#
	testl	%eax, %eax	# D.16082
	je	.L659	#,
	.loc 1 2949 0
	movq	-8(%rbp), %rax	# use, tmp76
	movq	24(%rax), %rax	# use_6->chain, tmp77
	movq	%rax, -16(%rbp)	# tmp77, ud_link
	jmp	.L660	#
.L663:
	.loc 1 2950 0
	movq	-16(%rbp), %rax	# ud_link, tmp78
	movq	8(%rax), %rax	# ud_link_2->ref, D.16085
	cmpq	-48(%rbp), %rax	# def, D.16085
	je	.L661	#,
	.loc 1 2951 0
	movl	$0, %eax	#, D.16082
	jmp	.L662	#
.L661:
	.loc 1 2949 0
	movq	-16(%rbp), %rax	# ud_link, tmp79
	movq	(%rax), %rax	# ud_link_2->next, tmp80
	movq	%rax, -16(%rbp)	# tmp80, ud_link
.L660:
	.loc 1 2949 0 is_stmt 0 discriminator 1
	cmpq	$0, -16(%rbp)	#, ud_link
	jne	.L663	#,
.L659:
.LBE107:
	.loc 1 2938 0 is_stmt 1
	movq	-24(%rbp), %rax	# du_link, tmp81
	movq	(%rax), %rax	# du_link_1->next, tmp82
	movq	%rax, -24(%rbp)	# tmp82, du_link
.L658:
	.loc 1 2938 0 is_stmt 0 discriminator 1
	cmpq	$0, -24(%rbp)	#, du_link
	jne	.L664	#,
	.loc 1 2954 0 is_stmt 1
	movl	$1, %eax	#, D.16082
.L662:
	.loc 1 2955 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE73:
	.size	df_def_dominates_uses_p, .-df_def_dominates_uses_p
	.globl	df_insn_dominates_uses_p
	.type	df_insn_dominates_uses_p, @function
df_insn_dominates_uses_p:
.LFB74:
	.loc 1 2966 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -40(%rbp)	# df, df
	movq	%rsi, -48(%rbp)	# bb, bb
	movq	%rdx, -56(%rbp)	# insn, insn
	movq	%rcx, -64(%rbp)	# blocks, blocks
	.loc 1 2970 0
	movq	-56(%rbp), %rax	# insn, tmp73
	movl	8(%rax), %eax	# insn_3(D)->fld[0].rtint, D.16086
	movl	%eax, -20(%rbp)	# D.16086, uid
	.loc 1 2972 0
	movq	-40(%rbp), %rax	# df, tmp74
	movq	56(%rax), %rcx	# df_6(D)->insns, D.16087
	movl	-20(%rbp), %edx	# uid, D.16088
	movq	%rdx, %rax	# D.16088, tmp75
	addq	%rax, %rax	# tmp75
	addq	%rdx, %rax	# D.16088, tmp75
	salq	$3, %rax	#, tmp76
	addq	%rcx, %rax	# D.16087, D.16087
	movq	(%rax), %rax	# _10->defs, tmp77
	movq	%rax, -16(%rbp)	# tmp77, link
	jmp	.L666	#
.L669:
.LBB108:
	.loc 1 2974 0
	movq	-16(%rbp), %rax	# link, tmp78
	movq	8(%rax), %rax	# link_1->ref, tmp79
	movq	%rax, -8(%rbp)	# tmp79, def
	.loc 1 2977 0
	movq	basic_block_for_insn(%rip), %rax	# basic_block_for_insn, basic_block_for_insn.138
	movq	-8(%rbp), %rdx	# def, tmp80
	movq	8(%rdx), %rdx	# def_12->insn, D.16089
	movl	8(%rdx), %edx	# _14->fld[0].rtint, D.16086
	movslq	%edx, %rdx	# D.16086, tmp81
	addq	$4, %rdx	#, tmp82
	movq	(%rax,%rdx,8), %rax	# basic_block_for_insn.138_13->data.bb, D.16090
	movl	88(%rax), %edx	# _16->index, D.16086
	movq	-64(%rbp), %rax	# blocks, tmp83
	movl	%edx, %esi	# D.16086,
	movq	%rax, %rdi	# tmp83,
	call	bitmap_bit_p	#
	testl	%eax, %eax	# D.16086
	je	.L667	#,
	.loc 1 2978 0
	movq	-64(%rbp), %rdx	# blocks, tmp84
	movq	-8(%rbp), %rcx	# def, tmp85
	movq	-40(%rbp), %rax	# df, tmp86
	movq	%rcx, %rsi	# tmp85,
	movq	%rax, %rdi	# tmp86,
	call	df_def_dominates_uses_p	#
	testl	%eax, %eax	# D.16086
	jne	.L667	#,
	.loc 1 2979 0
	movl	$0, %eax	#, D.16086
	jmp	.L668	#
.L667:
.LBE108:
	.loc 1 2972 0
	movq	-16(%rbp), %rax	# link, tmp87
	movq	(%rax), %rax	# link_1->next, tmp88
	movq	%rax, -16(%rbp)	# tmp88, link
.L666:
	.loc 1 2972 0 is_stmt 0 discriminator 1
	cmpq	$0, -16(%rbp)	#, link
	jne	.L669	#,
	.loc 1 2981 0 is_stmt 1
	movl	$1, %eax	#, D.16086
.L668:
	.loc 1 2982 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE74:
	.size	df_insn_dominates_uses_p, .-df_insn_dominates_uses_p
	.globl	df_regno_bb
	.type	df_regno_bb, @function
df_regno_bb:
.LFB75:
	.loc 1 2991 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -56(%rbp)	# df, df
	movl	%esi, -60(%rbp)	# regno, regno
	.loc 1 2992 0
	movq	-56(%rbp), %rax	# df, tmp80
	movq	40(%rax), %rax	# df_6(D)->regs, D.16091
	movl	-60(%rbp), %edx	# regno, D.16092
	salq	$5, %rdx	#, D.16092
	addq	%rdx, %rax	# D.16092, D.16091
	movq	(%rax), %rax	# _11->defs, tmp81
	movq	%rax, -48(%rbp)	# tmp81, defs
	.loc 1 2993 0
	movq	-56(%rbp), %rax	# df, tmp82
	movq	40(%rax), %rax	# df_6(D)->regs, D.16091
	movl	-60(%rbp), %edx	# regno, D.16092
	salq	$5, %rdx	#, D.16092
	addq	%rdx, %rax	# D.16092, D.16091
	movq	8(%rax), %rax	# _16->uses, tmp83
	movq	%rax, -40(%rbp)	# tmp83, uses
	.loc 1 2994 0
	cmpq	$0, -48(%rbp)	#, defs
	je	.L671	#,
	.loc 1 2994 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# defs, tmp84
	movq	8(%rax), %rax	# defs_12->ref, iftmp.139
	jmp	.L672	#
.L671:
	.loc 1 2994 0 discriminator 2
	movl	$0, %eax	#, iftmp.139
.L672:
	.loc 1 2994 0 discriminator 3
	movq	%rax, -32(%rbp)	# iftmp.139, def
	.loc 1 2995 0 is_stmt 1 discriminator 3
	cmpq	$0, -40(%rbp)	#, uses
	je	.L673	#,
	.loc 1 2995 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# uses, tmp85
	movq	8(%rax), %rax	# uses_17->ref, iftmp.140
	jmp	.L674	#
.L673:
	.loc 1 2995 0 discriminator 2
	movl	$0, %eax	#, iftmp.140
.L674:
	.loc 1 2995 0 discriminator 3
	movq	%rax, -24(%rbp)	# iftmp.140, use
	.loc 1 2996 0 is_stmt 1 discriminator 3
	cmpq	$0, -32(%rbp)	#, def
	je	.L675	#,
	.loc 1 2996 0 is_stmt 0 discriminator 1
	movq	basic_block_for_insn(%rip), %rax	# basic_block_for_insn, basic_block_for_insn.142
	movq	-32(%rbp), %rdx	# def, tmp86
	movq	8(%rdx), %rdx	# def_20->insn, D.16093
	movl	8(%rdx), %edx	# _25->fld[0].rtint, D.16094
	movslq	%edx, %rdx	# D.16094, tmp87
	addq	$4, %rdx	#, tmp88
	movq	(%rax,%rdx,8), %rax	# basic_block_for_insn.142_24->data.bb, iftmp.141
	jmp	.L676	#
.L675:
	.loc 1 2996 0 discriminator 2
	movl	$0, %eax	#, iftmp.141
.L676:
	.loc 1 2996 0 discriminator 3
	movq	%rax, -16(%rbp)	# iftmp.141, bb_def
	.loc 1 2997 0 is_stmt 1 discriminator 3
	cmpq	$0, -24(%rbp)	#, use
	je	.L677	#,
	.loc 1 2997 0 is_stmt 0 discriminator 1
	movq	basic_block_for_insn(%rip), %rax	# basic_block_for_insn, basic_block_for_insn.144
	movq	-24(%rbp), %rdx	# use, tmp89
	movq	8(%rdx), %rdx	# use_23->insn, D.16093
	movl	8(%rdx), %edx	# _31->fld[0].rtint, D.16094
	movslq	%edx, %rdx	# D.16094, tmp90
	addq	$4, %rdx	#, tmp91
	movq	(%rax,%rdx,8), %rax	# basic_block_for_insn.144_30->data.bb, iftmp.143
	jmp	.L678	#
.L677:
	.loc 1 2997 0 discriminator 2
	movl	$0, %eax	#, iftmp.143
.L678:
	.loc 1 2997 0 discriminator 3
	movq	%rax, -8(%rbp)	# iftmp.143, bb_use
	.loc 1 3001 0 is_stmt 1 discriminator 3
	movq	-16(%rbp), %rax	# bb_def, tmp92
	cmpq	-8(%rbp), %rax	# bb_use, tmp92
	jne	.L679	#,
	.loc 1 3001 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# bb_def, iftmp.145
	jmp	.L680	#
.L679:
	.loc 1 3001 0 discriminator 2
	movl	$0, %eax	#, iftmp.145
.L680:
	.loc 1 3002 0 is_stmt 1 discriminator 3
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE75:
	.size	df_regno_bb, .-df_regno_bb
	.globl	df_reg_global_p
	.type	df_reg_global_p, @function
df_reg_global_p:
.LFB76:
	.loc 1 3010 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# df, df
	movq	%rsi, -16(%rbp)	# reg, reg
	.loc 1 3011 0
	movq	-16(%rbp), %rax	# reg, tmp64
	movl	8(%rax), %edx	# reg_1(D)->fld[0].rtuint, D.16096
	movq	-8(%rbp), %rax	# df, tmp65
	movl	%edx, %esi	# D.16096,
	movq	%rax, %rdi	# tmp65,
	call	df_regno_bb	#
	testq	%rax, %rax	# D.16097
	setne	%al	#, D.16098
	movzbl	%al, %eax	# D.16098, D.16099
	.loc 1 3012 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE76:
	.size	df_reg_global_p, .-df_reg_global_p
	.globl	df_reg_lifetime
	.type	df_reg_lifetime, @function
df_reg_lifetime:
.LFB77:
	.loc 1 3020 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# df, df
	movq	%rsi, -16(%rbp)	# reg, reg
	.loc 1 3021 0
	movq	-8(%rbp), %rax	# df, tmp66
	movq	40(%rax), %rdx	# df_1(D)->regs, D.16100
	movq	-16(%rbp), %rax	# reg, tmp67
	movl	8(%rax), %eax	# reg_3(D)->fld[0].rtuint, D.16101
	movl	%eax, %eax	# D.16101, D.16102
	salq	$5, %rax	#, D.16102
	addq	%rdx, %rax	# D.16100, D.16100
	movl	16(%rax), %eax	# _7->lifetime, D.16103
	.loc 1 3022 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE77:
	.size	df_reg_lifetime, .-df_reg_lifetime
	.globl	df_bb_reg_live_start_p
	.type	df_bb_reg_live_start_p, @function
df_bb_reg_live_start_p:
.LFB78:
	.loc 1 3031 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# df, df
	movq	%rsi, -32(%rbp)	# bb, bb
	movq	%rdx, -40(%rbp)	# reg, reg
	.loc 1 3032 0
	movq	-24(%rbp), %rax	# df, tmp68
	movq	8(%rax), %rdx	# df_1(D)->bbs, D.16104
	movq	-32(%rbp), %rax	# bb, tmp69
	movl	88(%rax), %eax	# bb_3(D)->index, D.16105
	cltq
	salq	$4, %rax	#, tmp71
	leaq	0(,%rax,8), %rcx	#, tmp72
	subq	%rax, %rcx	# tmp70, D.16106
	movq	%rcx, %rax	# D.16106, D.16106
	addq	%rdx, %rax	# D.16104, tmp73
	movq	%rax, -8(%rbp)	# tmp73, bb_info
	.loc 1 3039 0
	movq	-40(%rbp), %rax	# reg, tmp74
	movl	8(%rax), %eax	# reg_8(D)->fld[0].rtuint, D.16107
	movl	%eax, %edx	# D.16107, D.16105
	movq	-8(%rbp), %rax	# bb_info, tmp75
	movq	80(%rax), %rax	# bb_info_7->lr_in, D.16108
	movl	%edx, %esi	# D.16105,
	movq	%rax, %rdi	# D.16108,
	call	bitmap_bit_p	#
	.loc 1 3040 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE78:
	.size	df_bb_reg_live_start_p, .-df_bb_reg_live_start_p
	.globl	df_bb_reg_live_end_p
	.type	df_bb_reg_live_end_p, @function
df_bb_reg_live_end_p:
.LFB79:
	.loc 1 3049 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# df, df
	movq	%rsi, -32(%rbp)	# bb, bb
	movq	%rdx, -40(%rbp)	# reg, reg
	.loc 1 3050 0
	movq	-24(%rbp), %rax	# df, tmp68
	movq	8(%rax), %rdx	# df_1(D)->bbs, D.16109
	movq	-32(%rbp), %rax	# bb, tmp69
	movl	88(%rax), %eax	# bb_3(D)->index, D.16110
	cltq
	salq	$4, %rax	#, tmp71
	leaq	0(,%rax,8), %rcx	#, tmp72
	subq	%rax, %rcx	# tmp70, D.16111
	movq	%rcx, %rax	# D.16111, D.16111
	addq	%rdx, %rax	# D.16109, tmp73
	movq	%rax, -8(%rbp)	# tmp73, bb_info
	.loc 1 3057 0
	movq	-40(%rbp), %rax	# reg, tmp74
	movl	8(%rax), %eax	# reg_8(D)->fld[0].rtuint, D.16112
	movl	%eax, %edx	# D.16112, D.16110
	movq	-8(%rbp), %rax	# bb_info, tmp75
	movq	88(%rax), %rax	# bb_info_7->lr_out, D.16113
	movl	%edx, %esi	# D.16110,
	movq	%rax, %rdi	# D.16113,
	call	bitmap_bit_p	#
	.loc 1 3058 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE79:
	.size	df_bb_reg_live_end_p, .-df_bb_reg_live_end_p
	.globl	df_bb_regs_lives_compare
	.type	df_bb_regs_lives_compare, @function
df_bb_regs_lives_compare:
.LFB80:
	.loc 1 3069 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movq	%rdi, -56(%rbp)	# df, df
	movq	%rsi, -64(%rbp)	# bb, bb
	movq	%rdx, -72(%rbp)	# reg1, reg1
	movq	%rcx, -80(%rbp)	# reg2, reg2
	.loc 1 3070 0
	movq	-72(%rbp), %rax	# reg1, tmp91
	movl	8(%rax), %eax	# reg1_2(D)->fld[0].rtuint, tmp92
	movl	%eax, -40(%rbp)	# tmp92, regno1
	.loc 1 3071 0
	movq	-80(%rbp), %rax	# reg2, tmp93
	movl	8(%rax), %eax	# reg2_4(D)->fld[0].rtuint, tmp94
	movl	%eax, -36(%rbp)	# tmp94, regno2
	.loc 1 3079 0
	movl	-40(%rbp), %edx	# regno1, tmp95
	movq	-56(%rbp), %rax	# df, tmp96
	movl	%edx, %esi	# tmp95,
	movq	%rax, %rdi	# tmp96,
	call	df_regno_bb	#
	cmpq	-64(%rbp), %rax	# bb, D.16115
	jne	.L691	#,
	.loc 1 3080 0
	movl	-36(%rbp), %edx	# regno2, tmp97
	movq	-56(%rbp), %rax	# df, tmp98
	movl	%edx, %esi	# tmp97,
	movq	%rax, %rdi	# tmp98,
	call	df_regno_bb	#
	cmpq	-64(%rbp), %rax	# bb, D.16115
	je	.L692	#,
.L691:
	.loc 1 3081 0
	movl	$__FUNCTION__.11859, %edx	#,
	movl	$3081, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L692:
	.loc 1 3083 0
	movl	-36(%rbp), %edx	# regno2, tmp99
	movq	-64(%rbp), %rcx	# bb, tmp100
	movq	-56(%rbp), %rax	# df, tmp101
	movq	%rcx, %rsi	# tmp100,
	movq	%rax, %rdi	# tmp101,
	call	df_bb_regno_first_def_find	#
	movq	%rax, -32(%rbp)	# tmp102, def2
	.loc 1 3084 0
	movl	-40(%rbp), %edx	# regno1, tmp103
	movq	-64(%rbp), %rcx	# bb, tmp104
	movq	-56(%rbp), %rax	# df, tmp105
	movq	%rcx, %rsi	# tmp104,
	movq	%rax, %rdi	# tmp105,
	call	df_bb_regno_last_use_find	#
	movq	%rax, -24(%rbp)	# tmp106, use1
	.loc 1 3086 0
	movq	-56(%rbp), %rax	# df, tmp107
	movq	56(%rax), %rcx	# df_6(D)->insns, D.16116
	movq	-32(%rbp), %rax	# def2, tmp108
	movq	8(%rax), %rax	# def2_10->insn, D.16117
	movl	8(%rax), %eax	# _13->fld[0].rtint, D.16114
	movslq	%eax, %rdx	# D.16114, D.16118
	movq	%rdx, %rax	# D.16118, tmp109
	addq	%rax, %rax	# tmp109
	addq	%rdx, %rax	# D.16118, tmp109
	salq	$3, %rax	#, tmp110
	addq	%rcx, %rax	# D.16116, D.16116
	movl	16(%rax), %ecx	# _17->luid, D.16114
	.loc 1 3087 0
	movq	-56(%rbp), %rax	# df, tmp111
	movq	56(%rax), %rsi	# df_6(D)->insns, D.16116
	movq	-24(%rbp), %rax	# use1, tmp112
	movq	8(%rax), %rax	# use1_11->insn, D.16117
	movl	8(%rax), %eax	# _20->fld[0].rtint, D.16114
	movslq	%eax, %rdx	# D.16114, D.16118
	movq	%rdx, %rax	# D.16118, tmp113
	addq	%rax, %rax	# tmp113
	addq	%rdx, %rax	# D.16118, tmp113
	salq	$3, %rax	#, tmp114
	addq	%rsi, %rax	# D.16116, D.16116
	movl	16(%rax), %eax	# _24->luid, D.16114
	.loc 1 3086 0
	cmpl	%eax, %ecx	# D.16114, D.16114
	jle	.L693	#,
	.loc 1 3088 0
	movl	$-1, %eax	#, D.16114
	jmp	.L694	#
.L693:
	.loc 1 3090 0
	movl	-40(%rbp), %edx	# regno1, tmp115
	movq	-64(%rbp), %rcx	# bb, tmp116
	movq	-56(%rbp), %rax	# df, tmp117
	movq	%rcx, %rsi	# tmp116,
	movq	%rax, %rdi	# tmp117,
	call	df_bb_regno_first_def_find	#
	movq	%rax, -16(%rbp)	# tmp118, def1
	.loc 1 3091 0
	movl	-36(%rbp), %edx	# regno2, tmp119
	movq	-64(%rbp), %rcx	# bb, tmp120
	movq	-56(%rbp), %rax	# df, tmp121
	movq	%rcx, %rsi	# tmp120,
	movq	%rax, %rdi	# tmp121,
	call	df_bb_regno_last_use_find	#
	movq	%rax, -8(%rbp)	# tmp122, use2
	.loc 1 3093 0
	movq	-56(%rbp), %rax	# df, tmp123
	movq	56(%rax), %rcx	# df_6(D)->insns, D.16116
	movq	-16(%rbp), %rax	# def1, tmp124
	movq	8(%rax), %rax	# def1_27->insn, D.16117
	movl	8(%rax), %eax	# _30->fld[0].rtint, D.16114
	movslq	%eax, %rdx	# D.16114, D.16118
	movq	%rdx, %rax	# D.16118, tmp125
	addq	%rax, %rax	# tmp125
	addq	%rdx, %rax	# D.16118, tmp125
	salq	$3, %rax	#, tmp126
	addq	%rcx, %rax	# D.16116, D.16116
	movl	16(%rax), %ecx	# _34->luid, D.16114
	.loc 1 3094 0
	movq	-56(%rbp), %rax	# df, tmp127
	movq	56(%rax), %rsi	# df_6(D)->insns, D.16116
	movq	-8(%rbp), %rax	# use2, tmp128
	movq	8(%rax), %rax	# use2_28->insn, D.16117
	movl	8(%rax), %eax	# _37->fld[0].rtint, D.16114
	movslq	%eax, %rdx	# D.16114, D.16118
	movq	%rdx, %rax	# D.16118, tmp129
	addq	%rax, %rax	# tmp129
	addq	%rdx, %rax	# D.16118, tmp129
	salq	$3, %rax	#, tmp130
	addq	%rsi, %rax	# D.16116, D.16116
	movl	16(%rax), %eax	# _41->luid, D.16114
	.loc 1 3093 0
	cmpl	%eax, %ecx	# D.16114, D.16114
	jle	.L695	#,
	.loc 1 3095 0
	movl	$1, %eax	#, D.16114
	jmp	.L694	#
.L695:
	.loc 1 3097 0
	movl	$0, %eax	#, D.16114
.L694:
	.loc 1 3098 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE80:
	.size	df_bb_regs_lives_compare, .-df_bb_regs_lives_compare
	.type	df_bb_regno_last_use_find, @function
df_bb_regno_last_use_find:
.LFB81:
	.loc 1 3107 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# df, df
	movq	%rsi, -32(%rbp)	# bb, bb
	movl	%edx, -36(%rbp)	# regno, regno
	.loc 1 3114 0
	movq	-24(%rbp), %rax	# df, tmp69
	movq	40(%rax), %rax	# df_3(D)->regs, D.16120
	movl	-36(%rbp), %edx	# regno, D.16121
	salq	$5, %rdx	#, D.16121
	addq	%rdx, %rax	# D.16121, D.16120
	movq	8(%rax), %rax	# _8->uses, tmp70
	movq	%rax, -16(%rbp)	# tmp70, link
	jmp	.L697	#
.L700:
.LBB109:
	.loc 1 3116 0
	movq	-16(%rbp), %rax	# link, tmp71
	movq	8(%rax), %rax	# link_1->ref, tmp72
	movq	%rax, -8(%rbp)	# tmp72, use
	.loc 1 3118 0
	movq	basic_block_for_insn(%rip), %rax	# basic_block_for_insn, basic_block_for_insn.146
	movq	-8(%rbp), %rdx	# use, tmp73
	movq	8(%rdx), %rdx	# use_10->insn, D.16122
	movl	8(%rdx), %edx	# _12->fld[0].rtint, D.16123
	movslq	%edx, %rdx	# D.16123, tmp74
	addq	$4, %rdx	#, tmp75
	movq	(%rax,%rdx,8), %rax	# basic_block_for_insn.146_11->data.bb, D.16124
	cmpq	-32(%rbp), %rax	# bb, D.16124
	jne	.L698	#,
	.loc 1 3119 0
	movq	-8(%rbp), %rax	# use, D.16119
	jmp	.L699	#
.L698:
.LBE109:
	.loc 1 3114 0
	movq	-16(%rbp), %rax	# link, tmp76
	movq	(%rax), %rax	# link_1->next, tmp77
	movq	%rax, -16(%rbp)	# tmp77, link
.L697:
	.loc 1 3114 0 is_stmt 0 discriminator 1
	cmpq	$0, -16(%rbp)	#, link
	jne	.L700	#,
	.loc 1 3121 0 is_stmt 1
	movl	$0, %eax	#, D.16119
.L699:
	.loc 1 3122 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE81:
	.size	df_bb_regno_last_use_find, .-df_bb_regno_last_use_find
	.type	df_bb_regno_first_def_find, @function
df_bb_regno_first_def_find:
.LFB82:
	.loc 1 3131 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# df, df
	movq	%rsi, -32(%rbp)	# bb, bb
	movl	%edx, -36(%rbp)	# regno, regno
	.loc 1 3138 0
	movq	-24(%rbp), %rax	# df, tmp69
	movq	40(%rax), %rax	# df_3(D)->regs, D.16126
	movl	-36(%rbp), %edx	# regno, D.16127
	salq	$5, %rdx	#, D.16127
	addq	%rdx, %rax	# D.16127, D.16126
	movq	(%rax), %rax	# _8->defs, tmp70
	movq	%rax, -16(%rbp)	# tmp70, link
	jmp	.L702	#
.L705:
.LBB110:
	.loc 1 3140 0
	movq	-16(%rbp), %rax	# link, tmp71
	movq	8(%rax), %rax	# link_1->ref, tmp72
	movq	%rax, -8(%rbp)	# tmp72, def
	.loc 1 3142 0
	movq	basic_block_for_insn(%rip), %rax	# basic_block_for_insn, basic_block_for_insn.147
	movq	-8(%rbp), %rdx	# def, tmp73
	movq	8(%rdx), %rdx	# def_10->insn, D.16128
	movl	8(%rdx), %edx	# _12->fld[0].rtint, D.16129
	movslq	%edx, %rdx	# D.16129, tmp74
	addq	$4, %rdx	#, tmp75
	movq	(%rax,%rdx,8), %rax	# basic_block_for_insn.147_11->data.bb, D.16130
	cmpq	-32(%rbp), %rax	# bb, D.16130
	jne	.L703	#,
	.loc 1 3143 0
	movq	-8(%rbp), %rax	# def, D.16125
	jmp	.L704	#
.L703:
.LBE110:
	.loc 1 3138 0
	movq	-16(%rbp), %rax	# link, tmp76
	movq	(%rax), %rax	# link_1->next, tmp77
	movq	%rax, -16(%rbp)	# tmp77, link
.L702:
	.loc 1 3138 0 is_stmt 0 discriminator 1
	cmpq	$0, -16(%rbp)	#, link
	jne	.L705	#,
	.loc 1 3145 0 is_stmt 1
	movl	$0, %eax	#, D.16125
.L704:
	.loc 1 3146 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE82:
	.size	df_bb_regno_first_def_find, .-df_bb_regno_first_def_find
	.type	df_bb_insn_regno_last_use_find, @function
df_bb_insn_regno_last_use_find:
.LFB83:
	.loc 1 3156 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -40(%rbp)	# df, df
	movq	%rsi, -48(%rbp)	# bb, bb
	movq	%rdx, -56(%rbp)	# insn, insn
	movl	%ecx, -60(%rbp)	# regno, regno
	.loc 1 3160 0
	movq	-56(%rbp), %rax	# insn, tmp71
	movl	8(%rax), %eax	# insn_4(D)->fld[0].rtint, D.16132
	movl	%eax, -20(%rbp)	# D.16132, uid
	.loc 1 3162 0
	movq	-40(%rbp), %rax	# df, tmp72
	movq	56(%rax), %rcx	# df_7(D)->insns, D.16133
	movl	-20(%rbp), %edx	# uid, D.16134
	movq	%rdx, %rax	# D.16134, tmp73
	addq	%rax, %rax	# tmp73
	addq	%rdx, %rax	# D.16134, tmp73
	salq	$3, %rax	#, tmp74
	addq	%rcx, %rax	# D.16133, D.16133
	movq	8(%rax), %rax	# _11->uses, tmp75
	movq	%rax, -16(%rbp)	# tmp75, link
	jmp	.L707	#
.L712:
.LBB111:
	.loc 1 3164 0
	movq	-16(%rbp), %rax	# link, tmp76
	movq	8(%rax), %rax	# link_1->ref, tmp77
	movq	%rax, -8(%rbp)	# tmp77, use
	.loc 1 3166 0
	movq	-8(%rbp), %rax	# use, tmp78
	movq	(%rax), %rax	# use_13->reg, D.16135
	movzwl	(%rax), %eax	# _14->code, D.16136
	cmpw	$63, %ax	#, D.16136
	jne	.L708	#,
	.loc 1 3166 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# use, tmp79
	movq	(%rax), %rax	# use_13->reg, D.16135
	movq	8(%rax), %rax	# _16->fld[0].rtx, iftmp.148
	jmp	.L709	#
.L708:
	.loc 1 3166 0 discriminator 2
	movq	-8(%rbp), %rax	# use, tmp80
	movq	(%rax), %rax	# use_13->reg, iftmp.148
.L709:
	.loc 1 3166 0 discriminator 3
	movl	8(%rax), %eax	# iftmp.148_2->fld[0].rtuint, D.16137
	cmpl	-60(%rbp), %eax	# regno, D.16137
	jne	.L710	#,
	.loc 1 3167 0 is_stmt 1
	movq	-8(%rbp), %rax	# use, D.16131
	jmp	.L711	#
.L710:
.LBE111:
	.loc 1 3162 0
	movq	-16(%rbp), %rax	# link, tmp81
	movq	(%rax), %rax	# link_1->next, tmp82
	movq	%rax, -16(%rbp)	# tmp82, link
.L707:
	.loc 1 3162 0 is_stmt 0 discriminator 1
	cmpq	$0, -16(%rbp)	#, link
	jne	.L712	#,
	.loc 1 3170 0 is_stmt 1
	movl	$0, %eax	#, D.16131
.L711:
	.loc 1 3171 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE83:
	.size	df_bb_insn_regno_last_use_find, .-df_bb_insn_regno_last_use_find
	.type	df_bb_insn_regno_first_def_find, @function
df_bb_insn_regno_first_def_find:
.LFB84:
	.loc 1 3181 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -40(%rbp)	# df, df
	movq	%rsi, -48(%rbp)	# bb, bb
	movq	%rdx, -56(%rbp)	# insn, insn
	movl	%ecx, -60(%rbp)	# regno, regno
	.loc 1 3185 0
	movq	-56(%rbp), %rax	# insn, tmp71
	movl	8(%rax), %eax	# insn_4(D)->fld[0].rtint, D.16139
	movl	%eax, -20(%rbp)	# D.16139, uid
	.loc 1 3187 0
	movq	-40(%rbp), %rax	# df, tmp72
	movq	56(%rax), %rcx	# df_7(D)->insns, D.16140
	movl	-20(%rbp), %edx	# uid, D.16141
	movq	%rdx, %rax	# D.16141, tmp73
	addq	%rax, %rax	# tmp73
	addq	%rdx, %rax	# D.16141, tmp73
	salq	$3, %rax	#, tmp74
	addq	%rcx, %rax	# D.16140, D.16140
	movq	(%rax), %rax	# _11->defs, tmp75
	movq	%rax, -16(%rbp)	# tmp75, link
	jmp	.L714	#
.L719:
.LBB112:
	.loc 1 3189 0
	movq	-16(%rbp), %rax	# link, tmp76
	movq	8(%rax), %rax	# link_1->ref, tmp77
	movq	%rax, -8(%rbp)	# tmp77, def
	.loc 1 3191 0
	movq	-8(%rbp), %rax	# def, tmp78
	movq	(%rax), %rax	# def_13->reg, D.16142
	movzwl	(%rax), %eax	# _14->code, D.16143
	cmpw	$63, %ax	#, D.16143
	jne	.L715	#,
	.loc 1 3191 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# def, tmp79
	movq	(%rax), %rax	# def_13->reg, D.16142
	movq	8(%rax), %rax	# _16->fld[0].rtx, iftmp.149
	jmp	.L716	#
.L715:
	.loc 1 3191 0 discriminator 2
	movq	-8(%rbp), %rax	# def, tmp80
	movq	(%rax), %rax	# def_13->reg, iftmp.149
.L716:
	.loc 1 3191 0 discriminator 3
	movl	8(%rax), %eax	# iftmp.149_2->fld[0].rtuint, D.16144
	cmpl	-60(%rbp), %eax	# regno, D.16144
	jne	.L717	#,
	.loc 1 3192 0 is_stmt 1
	movq	-8(%rbp), %rax	# def, D.16138
	jmp	.L718	#
.L717:
.LBE112:
	.loc 1 3187 0
	movq	-16(%rbp), %rax	# link, tmp81
	movq	(%rax), %rax	# link_1->next, tmp82
	movq	%rax, -16(%rbp)	# tmp82, link
.L714:
	.loc 1 3187 0 is_stmt 0 discriminator 1
	cmpq	$0, -16(%rbp)	#, link
	jne	.L719	#,
	.loc 1 3195 0 is_stmt 1
	movl	$0, %eax	#, D.16138
.L718:
	.loc 1 3196 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE84:
	.size	df_bb_insn_regno_first_def_find, .-df_bb_insn_regno_first_def_find
	.globl	df_bb_single_def_use_insn_find
	.type	df_bb_single_def_use_insn_find, @function
df_bb_single_def_use_insn_find:
.LFB85:
	.loc 1 3207 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -40(%rbp)	# df, df
	movq	%rsi, -48(%rbp)	# bb, bb
	movq	%rdx, -56(%rbp)	# insn, insn
	movq	%rcx, -64(%rbp)	# reg, reg
	.loc 1 3212 0
	movq	-64(%rbp), %rax	# reg, tmp63
	movl	8(%rax), %ecx	# reg_2(D)->fld[0].rtuint, D.16146
	movq	-56(%rbp), %rdx	# insn, tmp64
	movq	-48(%rbp), %rsi	# bb, tmp65
	movq	-40(%rbp), %rax	# df, tmp66
	movq	%rax, %rdi	# tmp66,
	call	df_bb_insn_regno_first_def_find	#
	movq	%rax, -24(%rbp)	# tmp67, def
	.loc 1 3214 0
	cmpq	$0, -24(%rbp)	#, def
	jne	.L721	#,
	.loc 1 3215 0
	movl	$__FUNCTION__.11913, %edx	#,
	movl	$3215, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L721:
	.loc 1 3217 0
	movq	-24(%rbp), %rax	# def, tmp68
	movq	24(%rax), %rax	# def_7->chain, tmp69
	movq	%rax, -16(%rbp)	# tmp69, du_link
	.loc 1 3219 0
	cmpq	$0, -16(%rbp)	#, du_link
	jne	.L722	#,
	.loc 1 3220 0
	movl	$0, %eax	#, D.16145
	jmp	.L723	#
.L722:
	.loc 1 3222 0
	movq	-16(%rbp), %rax	# du_link, tmp70
	movq	8(%rax), %rax	# du_link_8->ref, tmp71
	movq	%rax, -8(%rbp)	# tmp71, use
	.loc 1 3225 0
	cmpq	$0, -8(%rbp)	#, use
	jne	.L724	#,
	.loc 1 3226 0
	movl	$0, %eax	#, D.16145
	jmp	.L723	#
.L724:
	.loc 1 3229 0
	movq	-16(%rbp), %rax	# du_link, tmp72
	movq	(%rax), %rax	# du_link_8->next, D.16147
	testq	%rax, %rax	# D.16147
	je	.L725	#,
	.loc 1 3230 0
	movl	$0, %eax	#, D.16145
	jmp	.L723	#
.L725:
	.loc 1 3232 0
	movq	-8(%rbp), %rax	# use, tmp73
	movq	8(%rax), %rax	# use_10->insn, D.16145
.L723:
	.loc 1 3233 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE85:
	.size	df_bb_single_def_use_insn_find, .-df_bb_single_def_use_insn_find
	.section	.rodata
.LC1:
	.string	"{ "
.LC2:
	.string	"%c%d "
	.text
	.type	df_chain_dump, @function
df_chain_dump:
.LFB86:
	.loc 1 3243 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# link, link
	movq	%rsi, -16(%rbp)	# file, file
	.loc 1 3244 0
	movq	-16(%rbp), %rax	# file, tmp64
	movq	%rax, %rcx	# tmp64,
	movl	$2, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC1, %edi	#,
	call	fwrite	#
	.loc 1 3245 0
	jmp	.L727	#
.L730:
	.loc 1 3249 0
	movq	-8(%rbp), %rax	# link, tmp65
	movq	8(%rax), %rax	# link_1->ref, D.16148
	.loc 1 3247 0
	movl	36(%rax), %edx	# _5->id, D.16149
	.loc 1 3248 0
	movq	-8(%rbp), %rax	# link, tmp66
	movq	8(%rax), %rax	# link_1->ref, D.16148
	movl	32(%rax), %eax	# _7->type, D.16150
	.loc 1 3247 0
	testl	%eax, %eax	# D.16150
	jne	.L728	#,
	.loc 1 3247 0 is_stmt 0 discriminator 1
	movl	$100, %eax	#, iftmp.150
	jmp	.L729	#
.L728:
	.loc 1 3247 0 discriminator 2
	movl	$117, %eax	#, iftmp.150
.L729:
	.loc 1 3247 0 discriminator 3
	movq	-16(%rbp), %rdi	# file, tmp67
	movl	%edx, %ecx	# D.16149,
	movl	%eax, %edx	# iftmp.150,
	movl	$.LC2, %esi	#,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 3245 0 is_stmt 1 discriminator 3
	movq	-8(%rbp), %rax	# link, tmp68
	movq	(%rax), %rax	# link_1->next, tmp69
	movq	%rax, -8(%rbp)	# tmp69, link
.L727:
	.loc 1 3245 0 is_stmt 0 discriminator 1
	cmpq	$0, -8(%rbp)	#, link
	jne	.L730	#,
	.loc 1 3251 0 is_stmt 1
	movq	-16(%rbp), %rax	# file, tmp70
	movq	%rax, %rsi	# tmp70,
	movl	$125, %edi	#,
	call	fputc	#
	.loc 1 3252 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE86:
	.size	df_chain_dump, .-df_chain_dump
	.section	.rodata
.LC3:
	.string	"%c%d(%d) "
	.text
	.type	df_chain_dump_regno, @function
df_chain_dump_regno:
.LFB87:
	.loc 1 3258 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# link, link
	movq	%rsi, -16(%rbp)	# file, file
	.loc 1 3259 0
	movq	-16(%rbp), %rax	# file, tmp72
	movq	%rax, %rcx	# tmp72,
	movl	$2, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC1, %edi	#,
	call	fwrite	#
	.loc 1 3260 0
	jmp	.L732	#
.L737:
	.loc 1 3265 0
	movq	-8(%rbp), %rax	# link, tmp73
	movq	8(%rax), %rax	# link_1->ref, D.16153
	movq	(%rax), %rax	# _6->reg, D.16154
	movzwl	(%rax), %eax	# _7->code, D.16155
	cmpw	$63, %ax	#, D.16155
	jne	.L733	#,
	.loc 1 3265 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# link, tmp74
	movq	8(%rax), %rax	# link_1->ref, D.16153
	movq	(%rax), %rax	# _9->reg, D.16154
	movq	8(%rax), %rax	# _10->fld[0].rtx, iftmp.151
	jmp	.L734	#
.L733:
	.loc 1 3265 0 discriminator 2
	movq	-8(%rbp), %rax	# link, tmp75
	movq	8(%rax), %rax	# link_1->ref, D.16153
	movq	(%rax), %rax	# _12->reg, iftmp.151
.L734:
	.loc 1 3262 0 is_stmt 1
	movl	8(%rax), %ecx	# iftmp.151_2->fld[0].rtuint, D.16156
	.loc 1 3264 0
	movq	-8(%rbp), %rax	# link, tmp76
	movq	8(%rax), %rax	# link_1->ref, D.16153
	.loc 1 3262 0
	movl	36(%rax), %edx	# _15->id, D.16157
	.loc 1 3263 0
	movq	-8(%rbp), %rax	# link, tmp77
	movq	8(%rax), %rax	# link_1->ref, D.16153
	movl	32(%rax), %eax	# _17->type, D.16158
	.loc 1 3262 0
	testl	%eax, %eax	# D.16158
	jne	.L735	#,
	.loc 1 3262 0 is_stmt 0 discriminator 1
	movl	$100, %eax	#, iftmp.152
	jmp	.L736	#
.L735:
	.loc 1 3262 0 discriminator 2
	movl	$117, %eax	#, iftmp.152
.L736:
	.loc 1 3262 0 discriminator 3
	movq	-16(%rbp), %rdi	# file, tmp78
	movl	%ecx, %r8d	# D.16156,
	movl	%edx, %ecx	# D.16157,
	movl	%eax, %edx	# iftmp.152,
	movl	$.LC3, %esi	#,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 3260 0 is_stmt 1 discriminator 3
	movq	-8(%rbp), %rax	# link, tmp79
	movq	(%rax), %rax	# link_1->next, tmp80
	movq	%rax, -8(%rbp)	# tmp80, link
.L732:
	.loc 1 3260 0 is_stmt 0 discriminator 1
	cmpq	$0, -8(%rbp)	#, link
	jne	.L737	#,
	.loc 1 3267 0 is_stmt 1
	movq	-16(%rbp), %rax	# file, tmp81
	movq	%rax, %rsi	# tmp81,
	movl	$125, %edi	#,
	call	fputc	#
	.loc 1 3268 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE87:
	.size	df_chain_dump_regno, .-df_chain_dump_regno
	.section	.rodata
.LC4:
	.string	"\nDataflow summary:\n"
	.align 8
.LC5:
	.string	"n_regs = %d, n_defs = %d, n_uses = %d, n_bbs = %d\n"
.LC6:
	.string	"Reaching defs:\n"
.LC7:
	.string	"bb %d in  \t"
.LC8:
	.string	"\n"
.LC9:
	.string	""
.LC10:
	.string	"bb %d gen \t"
.LC11:
	.string	"bb %d kill\t"
.LC12:
	.string	"bb %d out \t"
.LC13:
	.string	"Use-def chains:\n"
	.align 8
.LC14:
	.string	"d%d bb %d luid %d insn %d reg %d "
.LC15:
	.string	"read/write "
.LC16:
	.string	"Reaching uses:\n"
.LC17:
	.string	"Def-use chains:\n"
	.align 8
.LC18:
	.string	"u%d bb %d luid %d insn %d reg %d "
.LC19:
	.string	"Live regs:\n"
.LC20:
	.string	"bb %d use \t"
.LC21:
	.string	"bb %d def \t"
.LC22:
	.string	"Register info:\n"
.LC23:
	.string	"reg %d"
.LC24:
	.string	" bb %d"
.LC25:
	.string	" bb ?"
.LC26:
	.string	" life %d"
.LC27:
	.string	" defs "
.LC28:
	.string	"%d "
.LC29:
	.string	" uses "
	.text
	.globl	df_dump
	.type	df_dump, @function
df_dump:
.LFB88:
	.loc 1 3276 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$112, %rsp	#,
	movq	%rdi, -88(%rbp)	# df, df
	movl	%esi, -92(%rbp)	# flags, flags
	movq	%rdx, -104(%rbp)	# file, file
	.loc 1 3280 0
	cmpq	$0, -88(%rbp)	#, df
	je	.L739	#,
	.loc 1 3280 0 is_stmt 0 discriminator 1
	cmpq	$0, -104(%rbp)	#, file
	jne	.L740	#,
.L739:
	.loc 1 3281 0 is_stmt 1
	jmp	.L738	#
.L740:
	.loc 1 3283 0
	movq	-104(%rbp), %rax	# file, tmp290
	movq	%rax, %rcx	# tmp290,
	movl	$19, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC4, %edi	#,
	call	fwrite	#
	.loc 1 3284 0
	movq	-88(%rbp), %rax	# df, tmp291
	movl	92(%rax), %edi	# df_9(D)->n_bbs, D.16160
	movq	-88(%rbp), %rax	# df, tmp292
	movl	88(%rax), %esi	# df_9(D)->n_uses, D.16160
	movq	-88(%rbp), %rax	# df, tmp293
	movl	76(%rax), %ecx	# df_9(D)->n_defs, D.16160
	movq	-88(%rbp), %rax	# df, tmp294
	movl	96(%rax), %edx	# df_9(D)->n_regs, D.16160
	movq	-104(%rbp), %rax	# file, tmp295
	movl	%edi, %r9d	# D.16160,
	movl	%esi, %r8d	# D.16160,
	movl	$.LC5, %esi	#,
	movq	%rax, %rdi	# tmp295,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 3287 0
	movl	-92(%rbp), %eax	# flags, tmp296
	andl	$1, %eax	#, D.16161
	testl	%eax, %eax	# D.16161
	je	.L742	#,
	.loc 1 3289 0
	movq	-104(%rbp), %rax	# file, tmp297
	movq	%rax, %rcx	# tmp297,
	movl	$15, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC6, %edi	#,
	call	fwrite	#
	.loc 1 3290 0
	movl	$0, -72(%rbp)	#, i
	jmp	.L743	#
.L746:
.LBB113:
	.loc 1 3292 0
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.153
	movl	-72(%rbp), %edx	# i, tmp298
	addq	$4, %rdx	#, tmp299
	movq	(%rax,%rdx,8), %rax	# basic_block_info.153_19->data.bb, tmp300
	movq	%rax, -64(%rbp)	# tmp300, bb
	.loc 1 3293 0
	movq	-88(%rbp), %rax	# df, tmp301
	movq	8(%rax), %rdx	# df_9(D)->bbs, D.16162
	movq	-64(%rbp), %rax	# bb, tmp302
	movl	88(%rax), %eax	# bb_20->index, D.16161
	cltq
	salq	$4, %rax	#, tmp304
	leaq	0(,%rax,8), %rcx	#, tmp305
	subq	%rax, %rcx	# tmp303, D.16163
	movq	%rcx, %rax	# D.16163, D.16163
	addq	%rdx, %rax	# D.16162, tmp306
	movq	%rax, -56(%rbp)	# tmp306, bb_info
	.loc 1 3295 0
	movq	-56(%rbp), %rax	# bb_info, tmp307
	movq	16(%rax), %rax	# bb_info_25->rd_in, D.16164
	testq	%rax, %rax	# D.16164
	jne	.L744	#,
	.loc 1 3296 0
	jmp	.L745	#
.L744:
	.loc 1 3298 0
	movl	-72(%rbp), %edx	# i, tmp308
	movq	-104(%rbp), %rax	# file, tmp309
	movl	$.LC7, %esi	#,
	movq	%rax, %rdi	# tmp309,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 3299 0
	movq	-56(%rbp), %rax	# bb_info, tmp310
	movq	16(%rax), %rsi	# bb_info_25->rd_in, D.16164
	movq	-104(%rbp), %rax	# file, tmp311
	movl	$.LC8, %ecx	#,
	movl	$.LC9, %edx	#,
	movq	%rax, %rdi	# tmp311,
	call	bitmap_print	#
	.loc 1 3300 0
	movl	-72(%rbp), %edx	# i, tmp312
	movq	-104(%rbp), %rax	# file, tmp313
	movl	$.LC10, %esi	#,
	movq	%rax, %rdi	# tmp313,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 3301 0
	movq	-56(%rbp), %rax	# bb_info, tmp314
	movq	8(%rax), %rsi	# bb_info_25->rd_gen, D.16164
	movq	-104(%rbp), %rax	# file, tmp315
	movl	$.LC8, %ecx	#,
	movl	$.LC9, %edx	#,
	movq	%rax, %rdi	# tmp315,
	call	bitmap_print	#
	.loc 1 3302 0
	movl	-72(%rbp), %edx	# i, tmp316
	movq	-104(%rbp), %rax	# file, tmp317
	movl	$.LC11, %esi	#,
	movq	%rax, %rdi	# tmp317,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 3303 0
	movq	-56(%rbp), %rax	# bb_info, tmp318
	movq	(%rax), %rsi	# bb_info_25->rd_kill, D.16164
	movq	-104(%rbp), %rax	# file, tmp319
	movl	$.LC8, %ecx	#,
	movl	$.LC9, %edx	#,
	movq	%rax, %rdi	# tmp319,
	call	bitmap_print	#
	.loc 1 3304 0
	movl	-72(%rbp), %edx	# i, tmp320
	movq	-104(%rbp), %rax	# file, tmp321
	movl	$.LC12, %esi	#,
	movq	%rax, %rdi	# tmp321,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 3305 0
	movq	-56(%rbp), %rax	# bb_info, tmp322
	movq	24(%rax), %rsi	# bb_info_25->rd_out, D.16164
	movq	-104(%rbp), %rax	# file, tmp323
	movl	$.LC8, %ecx	#,
	movl	$.LC9, %edx	#,
	movq	%rax, %rdi	# tmp323,
	call	bitmap_print	#
.L745:
.LBE113:
	.loc 1 3290 0
	addl	$1, -72(%rbp)	#, i
.L743:
	.loc 1 3290 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# df, tmp324
	movl	92(%rax), %eax	# df_9(D)->n_bbs, D.16160
	cmpl	-72(%rbp), %eax	# i, D.16160
	ja	.L746	#,
.L742:
	.loc 1 3309 0 is_stmt 1
	movl	-92(%rbp), %eax	# flags, tmp325
	andl	$16, %eax	#, D.16161
	testl	%eax, %eax	# D.16161
	je	.L747	#,
	.loc 1 3311 0
	movq	-104(%rbp), %rax	# file, tmp326
	movq	%rax, %rcx	# tmp326,
	movl	$16, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC13, %edi	#,
	call	fwrite	#
	.loc 1 3312 0
	movl	$0, -68(%rbp)	#, j
	jmp	.L748	#
.L753:
	.loc 1 3314 0
	movq	-88(%rbp), %rax	# df, tmp327
	movq	16(%rax), %rax	# df_9(D)->defs, D.16165
	movl	-68(%rbp), %edx	# j, D.16163
	salq	$3, %rdx	#, D.16163
	addq	%rdx, %rax	# D.16163, D.16165
	movq	(%rax), %rax	# *_38, D.16166
	testq	%rax, %rax	# D.16166
	je	.L749	#,
	.loc 1 3320 0
	movq	-88(%rbp), %rax	# df, tmp328
	movq	16(%rax), %rax	# df_9(D)->defs, D.16165
	movl	-68(%rbp), %edx	# j, D.16163
	salq	$3, %rdx	#, D.16163
	addq	%rdx, %rax	# D.16163, D.16165
	movq	(%rax), %rax	# *_43, D.16166
	movq	(%rax), %rax	# _44->reg, D.16167
	movzwl	(%rax), %eax	# _45->code, D.16168
	cmpw	$63, %ax	#, D.16168
	jne	.L750	#,
	.loc 1 3320 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# df, tmp329
	movq	16(%rax), %rax	# df_9(D)->defs, D.16165
	movl	-68(%rbp), %edx	# j, D.16163
	salq	$3, %rdx	#, D.16163
	addq	%rdx, %rax	# D.16163, D.16165
	movq	(%rax), %rax	# *_50, D.16166
	movq	(%rax), %rax	# _51->reg, D.16167
	movq	8(%rax), %rax	# _52->fld[0].rtx, iftmp.154
	jmp	.L751	#
.L750:
	.loc 1 3320 0 discriminator 2
	movq	-88(%rbp), %rax	# df, tmp330
	movq	16(%rax), %rax	# df_9(D)->defs, D.16165
	movl	-68(%rbp), %edx	# j, D.16163
	salq	$3, %rdx	#, D.16163
	addq	%rdx, %rax	# D.16163, D.16165
	movq	(%rax), %rax	# *_57, D.16166
	movq	(%rax), %rax	# _58->reg, iftmp.154
.L751:
	.loc 1 3316 0 is_stmt 1
	movl	8(%rax), %esi	# iftmp.154_7->fld[0].rtuint, D.16160
	.loc 1 3319 0
	movq	-88(%rbp), %rax	# df, tmp331
	movq	16(%rax), %rax	# df_9(D)->defs, D.16165
	movl	-68(%rbp), %edx	# j, D.16163
	salq	$3, %rdx	#, D.16163
	addq	%rdx, %rax	# D.16163, D.16165
	movq	(%rax), %rax	# *_64, D.16166
	movq	8(%rax), %rax	# _65->insn, D.16167
	.loc 1 3316 0
	movl	8(%rax), %r8d	# _66->fld[0].rtint, D.16161
	.loc 1 3318 0
	movq	-88(%rbp), %rax	# df, tmp332
	movq	56(%rax), %rcx	# df_9(D)->insns, D.16169
	movq	-88(%rbp), %rax	# df, tmp333
	movq	16(%rax), %rax	# df_9(D)->defs, D.16165
	movl	-68(%rbp), %edx	# j, D.16163
	salq	$3, %rdx	#, D.16163
	addq	%rdx, %rax	# D.16163, D.16165
	movq	(%rax), %rax	# *_72, D.16166
	movq	8(%rax), %rax	# _73->insn, D.16167
	movl	8(%rax), %eax	# _74->fld[0].rtint, D.16161
	movslq	%eax, %rdx	# D.16161, D.16163
	movq	%rdx, %rax	# D.16163, tmp334
	addq	%rax, %rax	# tmp334
	addq	%rdx, %rax	# D.16163, tmp334
	salq	$3, %rax	#, tmp335
	addq	%rcx, %rax	# D.16169, D.16169
	.loc 1 3316 0
	movl	16(%rax), %edi	# _78->luid, D.16161
	.loc 1 3317 0
	movq	basic_block_for_insn(%rip), %rax	# basic_block_for_insn, basic_block_for_insn.155
	movq	-88(%rbp), %rdx	# df, tmp336
	movq	16(%rdx), %rdx	# df_9(D)->defs, D.16165
	movl	-68(%rbp), %ecx	# j, D.16163
	salq	$3, %rcx	#, D.16163
	addq	%rcx, %rdx	# D.16163, D.16165
	movq	(%rdx), %rdx	# *_84, D.16166
	movq	8(%rdx), %rdx	# _85->insn, D.16167
	movl	8(%rdx), %edx	# _86->fld[0].rtint, D.16161
	movslq	%edx, %rdx	# D.16161, tmp337
	addq	$4, %rdx	#, tmp338
	movq	(%rax,%rdx,8), %rax	# basic_block_for_insn.155_80->data.bb, D.16170
	.loc 1 3316 0
	movl	88(%rax), %ecx	# _88->index, D.16161
	movl	-68(%rbp), %edx	# j, tmp339
	movq	-104(%rbp), %rax	# file, tmp340
	movl	%esi, (%rsp)	# D.16160,
	movl	%r8d, %r9d	# D.16161,
	movl	%edi, %r8d	# D.16161,
	movl	$.LC14, %esi	#,
	movq	%rax, %rdi	# tmp340,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 3321 0
	movq	-88(%rbp), %rax	# df, tmp341
	movq	16(%rax), %rax	# df_9(D)->defs, D.16165
	movl	-68(%rbp), %edx	# j, D.16163
	salq	$3, %rdx	#, D.16163
	addq	%rdx, %rax	# D.16163, D.16165
	movq	(%rax), %rax	# *_93, D.16166
	movl	40(%rax), %eax	# _94->flags, D.16171
	andl	$1, %eax	#, D.16160
	testl	%eax, %eax	# D.16160
	je	.L752	#,
	.loc 1 3322 0
	movq	-104(%rbp), %rax	# file, tmp342
	movq	%rax, %rcx	# tmp342,
	movl	$11, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC15, %edi	#,
	call	fwrite	#
.L752:
	.loc 1 3323 0
	movq	-88(%rbp), %rax	# df, tmp343
	movq	16(%rax), %rax	# df_9(D)->defs, D.16165
	movl	-68(%rbp), %edx	# j, D.16163
	salq	$3, %rdx	#, D.16163
	addq	%rdx, %rax	# D.16163, D.16165
	movq	(%rax), %rax	# *_100, D.16166
	movq	24(%rax), %rax	# _101->chain, D.16172
	movq	-104(%rbp), %rdx	# file, tmp344
	movq	%rdx, %rsi	# tmp344,
	movq	%rax, %rdi	# D.16172,
	call	df_chain_dump	#
	.loc 1 3324 0
	movq	-104(%rbp), %rax	# file, tmp345
	movq	%rax, %rsi	# tmp345,
	movl	$10, %edi	#,
	call	fputc	#
.L749:
	.loc 1 3312 0
	addl	$1, -68(%rbp)	#, j
.L748:
	.loc 1 3312 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# df, tmp346
	movl	76(%rax), %eax	# df_9(D)->n_defs, D.16160
	cmpl	-68(%rbp), %eax	# j, D.16160
	ja	.L753	#,
.L747:
	.loc 1 3329 0 is_stmt 1
	movl	-92(%rbp), %eax	# flags, tmp347
	andl	$2, %eax	#, D.16161
	testl	%eax, %eax	# D.16161
	je	.L754	#,
	.loc 1 3331 0
	movq	-104(%rbp), %rax	# file, tmp348
	movq	%rax, %rcx	# tmp348,
	movl	$15, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC16, %edi	#,
	call	fwrite	#
	.loc 1 3332 0
	movl	$0, -72(%rbp)	#, i
	jmp	.L755	#
.L758:
.LBB114:
	.loc 1 3334 0
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.156
	movl	-72(%rbp), %edx	# i, tmp349
	addq	$4, %rdx	#, tmp350
	movq	(%rax,%rdx,8), %rax	# basic_block_info.156_107->data.bb, tmp351
	movq	%rax, -48(%rbp)	# tmp351, bb
	.loc 1 3335 0
	movq	-88(%rbp), %rax	# df, tmp352
	movq	8(%rax), %rdx	# df_9(D)->bbs, D.16162
	movq	-48(%rbp), %rax	# bb, tmp353
	movl	88(%rax), %eax	# bb_108->index, D.16161
	cltq
	salq	$4, %rax	#, tmp355
	leaq	0(,%rax,8), %rcx	#, tmp356
	subq	%rax, %rcx	# tmp354, D.16163
	movq	%rcx, %rax	# D.16163, D.16163
	addq	%rdx, %rax	# D.16162, tmp357
	movq	%rax, -40(%rbp)	# tmp357, bb_info
	.loc 1 3337 0
	movq	-40(%rbp), %rax	# bb_info, tmp358
	movq	48(%rax), %rax	# bb_info_113->ru_in, D.16164
	testq	%rax, %rax	# D.16164
	jne	.L756	#,
	.loc 1 3338 0
	jmp	.L757	#
.L756:
	.loc 1 3340 0
	movl	-72(%rbp), %edx	# i, tmp359
	movq	-104(%rbp), %rax	# file, tmp360
	movl	$.LC7, %esi	#,
	movq	%rax, %rdi	# tmp360,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 3341 0
	movq	-40(%rbp), %rax	# bb_info, tmp361
	movq	48(%rax), %rsi	# bb_info_113->ru_in, D.16164
	movq	-104(%rbp), %rax	# file, tmp362
	movl	$.LC8, %ecx	#,
	movl	$.LC9, %edx	#,
	movq	%rax, %rdi	# tmp362,
	call	bitmap_print	#
	.loc 1 3342 0
	movl	-72(%rbp), %edx	# i, tmp363
	movq	-104(%rbp), %rax	# file, tmp364
	movl	$.LC10, %esi	#,
	movq	%rax, %rdi	# tmp364,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 3343 0
	movq	-40(%rbp), %rax	# bb_info, tmp365
	movq	40(%rax), %rsi	# bb_info_113->ru_gen, D.16164
	movq	-104(%rbp), %rax	# file, tmp366
	movl	$.LC8, %ecx	#,
	movl	$.LC9, %edx	#,
	movq	%rax, %rdi	# tmp366,
	call	bitmap_print	#
	.loc 1 3344 0
	movl	-72(%rbp), %edx	# i, tmp367
	movq	-104(%rbp), %rax	# file, tmp368
	movl	$.LC11, %esi	#,
	movq	%rax, %rdi	# tmp368,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 3345 0
	movq	-40(%rbp), %rax	# bb_info, tmp369
	movq	32(%rax), %rsi	# bb_info_113->ru_kill, D.16164
	movq	-104(%rbp), %rax	# file, tmp370
	movl	$.LC8, %ecx	#,
	movl	$.LC9, %edx	#,
	movq	%rax, %rdi	# tmp370,
	call	bitmap_print	#
	.loc 1 3346 0
	movl	-72(%rbp), %edx	# i, tmp371
	movq	-104(%rbp), %rax	# file, tmp372
	movl	$.LC12, %esi	#,
	movq	%rax, %rdi	# tmp372,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 3347 0
	movq	-40(%rbp), %rax	# bb_info, tmp373
	movq	56(%rax), %rsi	# bb_info_113->ru_out, D.16164
	movq	-104(%rbp), %rax	# file, tmp374
	movl	$.LC8, %ecx	#,
	movl	$.LC9, %edx	#,
	movq	%rax, %rdi	# tmp374,
	call	bitmap_print	#
.L757:
.LBE114:
	.loc 1 3332 0
	addl	$1, -72(%rbp)	#, i
.L755:
	.loc 1 3332 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# df, tmp375
	movl	92(%rax), %eax	# df_9(D)->n_bbs, D.16160
	cmpl	-72(%rbp), %eax	# i, D.16160
	ja	.L758	#,
.L754:
	.loc 1 3351 0 is_stmt 1
	movl	-92(%rbp), %eax	# flags, tmp376
	andl	$8, %eax	#, D.16161
	testl	%eax, %eax	# D.16161
	je	.L759	#,
	.loc 1 3353 0
	movq	-104(%rbp), %rax	# file, tmp377
	movq	%rax, %rcx	# tmp377,
	movl	$16, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC17, %edi	#,
	call	fwrite	#
	.loc 1 3354 0
	movl	$0, -68(%rbp)	#, j
	jmp	.L760	#
.L765:
	.loc 1 3356 0
	movq	-88(%rbp), %rax	# df, tmp378
	movq	24(%rax), %rax	# df_9(D)->uses, D.16165
	movl	-68(%rbp), %edx	# j, D.16163
	salq	$3, %rdx	#, D.16163
	addq	%rdx, %rax	# D.16163, D.16165
	movq	(%rax), %rax	# *_126, D.16166
	testq	%rax, %rax	# D.16166
	je	.L761	#,
	.loc 1 3362 0
	movq	-88(%rbp), %rax	# df, tmp379
	movq	24(%rax), %rax	# df_9(D)->uses, D.16165
	movl	-68(%rbp), %edx	# j, D.16163
	salq	$3, %rdx	#, D.16163
	addq	%rdx, %rax	# D.16163, D.16165
	movq	(%rax), %rax	# *_131, D.16166
	movq	(%rax), %rax	# _132->reg, D.16167
	movzwl	(%rax), %eax	# _133->code, D.16168
	cmpw	$63, %ax	#, D.16168
	jne	.L762	#,
	.loc 1 3362 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# df, tmp380
	movq	24(%rax), %rax	# df_9(D)->uses, D.16165
	movl	-68(%rbp), %edx	# j, D.16163
	salq	$3, %rdx	#, D.16163
	addq	%rdx, %rax	# D.16163, D.16165
	movq	(%rax), %rax	# *_138, D.16166
	movq	(%rax), %rax	# _139->reg, D.16167
	movq	8(%rax), %rax	# _140->fld[0].rtx, iftmp.157
	jmp	.L763	#
.L762:
	.loc 1 3362 0 discriminator 2
	movq	-88(%rbp), %rax	# df, tmp381
	movq	24(%rax), %rax	# df_9(D)->uses, D.16165
	movl	-68(%rbp), %edx	# j, D.16163
	salq	$3, %rdx	#, D.16163
	addq	%rdx, %rax	# D.16163, D.16165
	movq	(%rax), %rax	# *_145, D.16166
	movq	(%rax), %rax	# _146->reg, iftmp.157
.L763:
	.loc 1 3358 0 is_stmt 1
	movl	8(%rax), %esi	# iftmp.157_8->fld[0].rtuint, D.16160
	.loc 1 3361 0
	movq	-88(%rbp), %rax	# df, tmp382
	movq	24(%rax), %rax	# df_9(D)->uses, D.16165
	movl	-68(%rbp), %edx	# j, D.16163
	salq	$3, %rdx	#, D.16163
	addq	%rdx, %rax	# D.16163, D.16165
	movq	(%rax), %rax	# *_152, D.16166
	movq	8(%rax), %rax	# _153->insn, D.16167
	.loc 1 3358 0
	movl	8(%rax), %r8d	# _154->fld[0].rtint, D.16161
	.loc 1 3360 0
	movq	-88(%rbp), %rax	# df, tmp383
	movq	56(%rax), %rcx	# df_9(D)->insns, D.16169
	movq	-88(%rbp), %rax	# df, tmp384
	movq	24(%rax), %rax	# df_9(D)->uses, D.16165
	movl	-68(%rbp), %edx	# j, D.16163
	salq	$3, %rdx	#, D.16163
	addq	%rdx, %rax	# D.16163, D.16165
	movq	(%rax), %rax	# *_160, D.16166
	movq	8(%rax), %rax	# _161->insn, D.16167
	movl	8(%rax), %eax	# _162->fld[0].rtint, D.16161
	movslq	%eax, %rdx	# D.16161, D.16163
	movq	%rdx, %rax	# D.16163, tmp385
	addq	%rax, %rax	# tmp385
	addq	%rdx, %rax	# D.16163, tmp385
	salq	$3, %rax	#, tmp386
	addq	%rcx, %rax	# D.16169, D.16169
	.loc 1 3358 0
	movl	16(%rax), %edi	# _166->luid, D.16161
	.loc 1 3359 0
	movq	basic_block_for_insn(%rip), %rax	# basic_block_for_insn, basic_block_for_insn.158
	movq	-88(%rbp), %rdx	# df, tmp387
	movq	24(%rdx), %rdx	# df_9(D)->uses, D.16165
	movl	-68(%rbp), %ecx	# j, D.16163
	salq	$3, %rcx	#, D.16163
	addq	%rcx, %rdx	# D.16163, D.16165
	movq	(%rdx), %rdx	# *_172, D.16166
	movq	8(%rdx), %rdx	# _173->insn, D.16167
	movl	8(%rdx), %edx	# _174->fld[0].rtint, D.16161
	movslq	%edx, %rdx	# D.16161, tmp388
	addq	$4, %rdx	#, tmp389
	movq	(%rax,%rdx,8), %rax	# basic_block_for_insn.158_168->data.bb, D.16170
	.loc 1 3358 0
	movl	88(%rax), %ecx	# _176->index, D.16161
	movl	-68(%rbp), %edx	# j, tmp390
	movq	-104(%rbp), %rax	# file, tmp391
	movl	%esi, (%rsp)	# D.16160,
	movl	%r8d, %r9d	# D.16161,
	movl	%edi, %r8d	# D.16161,
	movl	$.LC18, %esi	#,
	movq	%rax, %rdi	# tmp391,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 3363 0
	movq	-88(%rbp), %rax	# df, tmp392
	movq	24(%rax), %rax	# df_9(D)->uses, D.16165
	movl	-68(%rbp), %edx	# j, D.16163
	salq	$3, %rdx	#, D.16163
	addq	%rdx, %rax	# D.16163, D.16165
	movq	(%rax), %rax	# *_181, D.16166
	movl	40(%rax), %eax	# _182->flags, D.16171
	andl	$1, %eax	#, D.16160
	testl	%eax, %eax	# D.16160
	je	.L764	#,
	.loc 1 3364 0
	movq	-104(%rbp), %rax	# file, tmp393
	movq	%rax, %rcx	# tmp393,
	movl	$11, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC15, %edi	#,
	call	fwrite	#
.L764:
	.loc 1 3365 0
	movq	-88(%rbp), %rax	# df, tmp394
	movq	24(%rax), %rax	# df_9(D)->uses, D.16165
	movl	-68(%rbp), %edx	# j, D.16163
	salq	$3, %rdx	#, D.16163
	addq	%rdx, %rax	# D.16163, D.16165
	movq	(%rax), %rax	# *_188, D.16166
	movq	24(%rax), %rax	# _189->chain, D.16172
	movq	-104(%rbp), %rdx	# file, tmp395
	movq	%rdx, %rsi	# tmp395,
	movq	%rax, %rdi	# D.16172,
	call	df_chain_dump	#
	.loc 1 3366 0
	movq	-104(%rbp), %rax	# file, tmp396
	movq	%rax, %rsi	# tmp396,
	movl	$10, %edi	#,
	call	fputc	#
.L761:
	.loc 1 3354 0
	addl	$1, -68(%rbp)	#, j
.L760:
	.loc 1 3354 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# df, tmp397
	movl	88(%rax), %eax	# df_9(D)->n_uses, D.16160
	cmpl	-68(%rbp), %eax	# j, D.16160
	ja	.L765	#,
.L759:
	.loc 1 3371 0 is_stmt 1
	movl	-92(%rbp), %eax	# flags, tmp398
	andl	$4, %eax	#, D.16161
	testl	%eax, %eax	# D.16161
	je	.L766	#,
	.loc 1 3373 0
	movq	-104(%rbp), %rax	# file, tmp399
	movq	%rax, %rcx	# tmp399,
	movl	$11, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC19, %edi	#,
	call	fwrite	#
	.loc 1 3374 0
	movl	$0, -72(%rbp)	#, i
	jmp	.L767	#
.L770:
.LBB115:
	.loc 1 3376 0
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.159
	movl	-72(%rbp), %edx	# i, tmp400
	addq	$4, %rdx	#, tmp401
	movq	(%rax,%rdx,8), %rax	# basic_block_info.159_195->data.bb, tmp402
	movq	%rax, -32(%rbp)	# tmp402, bb
	.loc 1 3377 0
	movq	-88(%rbp), %rax	# df, tmp403
	movq	8(%rax), %rdx	# df_9(D)->bbs, D.16162
	movq	-32(%rbp), %rax	# bb, tmp404
	movl	88(%rax), %eax	# bb_196->index, D.16161
	cltq
	salq	$4, %rax	#, tmp406
	leaq	0(,%rax,8), %rcx	#, tmp407
	subq	%rax, %rcx	# tmp405, D.16163
	movq	%rcx, %rax	# D.16163, D.16163
	addq	%rdx, %rax	# D.16162, tmp408
	movq	%rax, -24(%rbp)	# tmp408, bb_info
	.loc 1 3379 0
	movq	-24(%rbp), %rax	# bb_info, tmp409
	movq	80(%rax), %rax	# bb_info_201->lr_in, D.16164
	testq	%rax, %rax	# D.16164
	jne	.L768	#,
	.loc 1 3380 0
	jmp	.L769	#
.L768:
	.loc 1 3382 0
	movl	-72(%rbp), %edx	# i, tmp410
	movq	-104(%rbp), %rax	# file, tmp411
	movl	$.LC7, %esi	#,
	movq	%rax, %rdi	# tmp411,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 3383 0
	movq	-24(%rbp), %rax	# bb_info, tmp412
	movq	80(%rax), %rsi	# bb_info_201->lr_in, D.16164
	movq	-104(%rbp), %rax	# file, tmp413
	movl	$.LC8, %ecx	#,
	movl	$.LC9, %edx	#,
	movq	%rax, %rdi	# tmp413,
	call	bitmap_print	#
	.loc 1 3384 0
	movl	-72(%rbp), %edx	# i, tmp414
	movq	-104(%rbp), %rax	# file, tmp415
	movl	$.LC20, %esi	#,
	movq	%rax, %rdi	# tmp415,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 3385 0
	movq	-24(%rbp), %rax	# bb_info, tmp416
	movq	72(%rax), %rsi	# bb_info_201->lr_use, D.16164
	movq	-104(%rbp), %rax	# file, tmp417
	movl	$.LC8, %ecx	#,
	movl	$.LC9, %edx	#,
	movq	%rax, %rdi	# tmp417,
	call	bitmap_print	#
	.loc 1 3386 0
	movl	-72(%rbp), %edx	# i, tmp418
	movq	-104(%rbp), %rax	# file, tmp419
	movl	$.LC21, %esi	#,
	movq	%rax, %rdi	# tmp419,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 3387 0
	movq	-24(%rbp), %rax	# bb_info, tmp420
	movq	64(%rax), %rsi	# bb_info_201->lr_def, D.16164
	movq	-104(%rbp), %rax	# file, tmp421
	movl	$.LC8, %ecx	#,
	movl	$.LC9, %edx	#,
	movq	%rax, %rdi	# tmp421,
	call	bitmap_print	#
	.loc 1 3388 0
	movl	-72(%rbp), %edx	# i, tmp422
	movq	-104(%rbp), %rax	# file, tmp423
	movl	$.LC12, %esi	#,
	movq	%rax, %rdi	# tmp423,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 3389 0
	movq	-24(%rbp), %rax	# bb_info, tmp424
	movq	88(%rax), %rsi	# bb_info_201->lr_out, D.16164
	movq	-104(%rbp), %rax	# file, tmp425
	movl	$.LC8, %ecx	#,
	movl	$.LC9, %edx	#,
	movq	%rax, %rdi	# tmp425,
	call	bitmap_print	#
.L769:
.LBE115:
	.loc 1 3374 0
	addl	$1, -72(%rbp)	#, i
.L767:
	.loc 1 3374 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# df, tmp426
	movl	92(%rax), %eax	# df_9(D)->n_bbs, D.16160
	cmpl	-72(%rbp), %eax	# i, D.16160
	ja	.L770	#,
.L766:
	.loc 1 3393 0 is_stmt 1
	movl	-92(%rbp), %eax	# flags, tmp427
	andl	$224, %eax	#, D.16161
	testl	%eax, %eax	# D.16161
	je	.L771	#,
.LBB116:
	.loc 1 3395 0
	movq	-88(%rbp), %rax	# df, tmp428
	movq	40(%rax), %rax	# df_9(D)->regs, tmp429
	movq	%rax, -16(%rbp)	# tmp429, reg_info
	.loc 1 3397 0
	movq	-104(%rbp), %rax	# file, tmp430
	movq	%rax, %rcx	# tmp430,
	movl	$15, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC22, %edi	#,
	call	fwrite	#
	.loc 1 3398 0
	movl	$0, -68(%rbp)	#, j
	jmp	.L772	#
.L786:
	.loc 1 3400 0
	movl	-92(%rbp), %eax	# flags, tmp431
	andl	$32, %eax	#, D.16161
	testl	%eax, %eax	# D.16161
	je	.L773	#,
	.loc 1 3401 0
	movl	-68(%rbp), %eax	# j, D.16163
	salq	$5, %rax	#, D.16163
	movq	%rax, %rdx	# D.16163, D.16163
	movq	-16(%rbp), %rax	# reg_info, tmp432
	addq	%rdx, %rax	# D.16163, D.16173
	movl	24(%rax), %eax	# _215->n_uses, D.16161
	testl	%eax, %eax	# D.16161
	jne	.L774	#,
	.loc 1 3401 0 is_stmt 0 discriminator 1
	movl	-68(%rbp), %eax	# j, D.16163
	salq	$5, %rax	#, D.16163
	movq	%rax, %rdx	# D.16163, D.16163
	movq	-16(%rbp), %rax	# reg_info, tmp433
	addq	%rdx, %rax	# D.16163, D.16173
	movl	20(%rax), %eax	# _219->n_defs, D.16161
	testl	%eax, %eax	# D.16161
	jne	.L774	#,
.L773:
	.loc 1 3402 0 is_stmt 1
	movl	-92(%rbp), %eax	# flags, tmp434
	andl	$64, %eax	#, D.16161
	testl	%eax, %eax	# D.16161
	je	.L775	#,
	.loc 1 3402 0 is_stmt 0 discriminator 1
	movl	-68(%rbp), %eax	# j, D.16163
	salq	$5, %rax	#, D.16163
	movq	%rax, %rdx	# D.16163, D.16163
	movq	-16(%rbp), %rax	# reg_info, tmp435
	addq	%rdx, %rax	# D.16163, D.16173
	movq	(%rax), %rax	# _224->defs, D.16172
	testq	%rax, %rax	# D.16172
	jne	.L774	#,
.L775:
	.loc 1 3403 0 is_stmt 1
	movl	-92(%rbp), %eax	# flags, tmp436
	andl	$128, %eax	#, D.16161
	testl	%eax, %eax	# D.16161
	je	.L776	#,
	.loc 1 3403 0 is_stmt 0 discriminator 1
	movl	-68(%rbp), %eax	# j, D.16163
	salq	$5, %rax	#, D.16163
	movq	%rax, %rdx	# D.16163, D.16163
	movq	-16(%rbp), %rax	# reg_info, tmp437
	addq	%rdx, %rax	# D.16163, D.16173
	movq	8(%rax), %rax	# _229->uses, D.16172
	testq	%rax, %rax	# D.16172
	je	.L776	#,
.L774:
	.loc 1 3405 0 is_stmt 1
	movl	-68(%rbp), %edx	# j, tmp438
	movq	-104(%rbp), %rax	# file, tmp439
	movl	$.LC23, %esi	#,
	movq	%rax, %rdi	# tmp439,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 3406 0
	movl	-92(%rbp), %eax	# flags, tmp440
	andl	$64, %eax	#, D.16161
	testl	%eax, %eax	# D.16161
	je	.L777	#,
	.loc 1 3406 0 is_stmt 0 discriminator 1
	movl	-92(%rbp), %eax	# flags, tmp441
	andl	$128, %eax	#, D.16161
	testl	%eax, %eax	# D.16161
	je	.L777	#,
.LBB117:
	.loc 1 3408 0 is_stmt 1
	movl	-68(%rbp), %edx	# j, tmp442
	movq	-88(%rbp), %rax	# df, tmp443
	movl	%edx, %esi	# tmp442,
	movq	%rax, %rdi	# tmp443,
	call	df_regno_bb	#
	movq	%rax, -8(%rbp)	# tmp444, bb
	.loc 1 3410 0
	cmpq	$0, -8(%rbp)	#, bb
	je	.L778	#,
	.loc 1 3411 0
	movq	-8(%rbp), %rax	# bb, tmp445
	movl	88(%rax), %edx	# bb_233->index, D.16161
	movq	-104(%rbp), %rax	# file, tmp446
	movl	$.LC24, %esi	#,
	movq	%rax, %rdi	# tmp446,
	movl	$0, %eax	#,
	call	fprintf	#
	jmp	.L777	#
.L778:
	.loc 1 3413 0
	movq	-104(%rbp), %rax	# file, tmp447
	movq	%rax, %rcx	# tmp447,
	movl	$5, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC25, %edi	#,
	call	fwrite	#
.L777:
.LBE117:
	.loc 1 3415 0
	movl	-92(%rbp), %eax	# flags, tmp448
	andl	$32, %eax	#, D.16161
	testl	%eax, %eax	# D.16161
	je	.L779	#,
	.loc 1 3417 0
	movl	-68(%rbp), %eax	# j, D.16163
	salq	$5, %rax	#, D.16163
	movq	%rax, %rdx	# D.16163, D.16163
	movq	-16(%rbp), %rax	# reg_info, tmp449
	addq	%rdx, %rax	# D.16163, D.16173
	movl	16(%rax), %edx	# _238->lifetime, D.16161
	movq	-104(%rbp), %rax	# file, tmp450
	movl	$.LC26, %esi	#,
	movq	%rax, %rdi	# tmp450,
	movl	$0, %eax	#,
	call	fprintf	#
.L779:
	.loc 1 3420 0
	movl	-92(%rbp), %eax	# flags, tmp451
	andl	$32, %eax	#, D.16161
	testl	%eax, %eax	# D.16161
	jne	.L780	#,
	.loc 1 3420 0 is_stmt 0 discriminator 1
	movl	-92(%rbp), %eax	# flags, tmp452
	andl	$64, %eax	#, D.16161
	testl	%eax, %eax	# D.16161
	je	.L781	#,
.L780:
	.loc 1 3422 0 is_stmt 1
	movq	-104(%rbp), %rax	# file, tmp453
	movq	%rax, %rcx	# tmp453,
	movl	$6, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC27, %edi	#,
	call	fwrite	#
	.loc 1 3423 0
	movl	-92(%rbp), %eax	# flags, tmp454
	andl	$32, %eax	#, D.16161
	testl	%eax, %eax	# D.16161
	je	.L782	#,
	.loc 1 3424 0
	movl	-68(%rbp), %eax	# j, D.16163
	salq	$5, %rax	#, D.16163
	movq	%rax, %rdx	# D.16163, D.16163
	movq	-16(%rbp), %rax	# reg_info, tmp455
	addq	%rdx, %rax	# D.16163, D.16173
	movl	20(%rax), %edx	# _245->n_defs, D.16161
	movq	-104(%rbp), %rax	# file, tmp456
	movl	$.LC28, %esi	#,
	movq	%rax, %rdi	# tmp456,
	movl	$0, %eax	#,
	call	fprintf	#
.L782:
	.loc 1 3425 0
	movl	-92(%rbp), %eax	# flags, tmp457
	andl	$64, %eax	#, D.16161
	testl	%eax, %eax	# D.16161
	je	.L781	#,
	.loc 1 3426 0
	movl	-68(%rbp), %eax	# j, D.16163
	salq	$5, %rax	#, D.16163
	movq	%rax, %rdx	# D.16163, D.16163
	movq	-16(%rbp), %rax	# reg_info, tmp458
	addq	%rdx, %rax	# D.16163, D.16173
	movq	(%rax), %rax	# _250->defs, D.16172
	movq	-104(%rbp), %rdx	# file, tmp459
	movq	%rdx, %rsi	# tmp459,
	movq	%rax, %rdi	# D.16172,
	call	df_chain_dump	#
.L781:
	.loc 1 3429 0
	movl	-92(%rbp), %eax	# flags, tmp460
	andl	$32, %eax	#, D.16161
	testl	%eax, %eax	# D.16161
	jne	.L783	#,
	.loc 1 3429 0 is_stmt 0 discriminator 1
	movl	-92(%rbp), %eax	# flags, tmp461
	andl	$128, %eax	#, D.16161
	testl	%eax, %eax	# D.16161
	je	.L784	#,
.L783:
	.loc 1 3431 0 is_stmt 1
	movq	-104(%rbp), %rax	# file, tmp462
	movq	%rax, %rcx	# tmp462,
	movl	$6, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC29, %edi	#,
	call	fwrite	#
	.loc 1 3432 0
	movl	-92(%rbp), %eax	# flags, tmp463
	andl	$32, %eax	#, D.16161
	testl	%eax, %eax	# D.16161
	je	.L785	#,
	.loc 1 3433 0
	movl	-68(%rbp), %eax	# j, D.16163
	salq	$5, %rax	#, D.16163
	movq	%rax, %rdx	# D.16163, D.16163
	movq	-16(%rbp), %rax	# reg_info, tmp464
	addq	%rdx, %rax	# D.16163, D.16173
	movl	24(%rax), %edx	# _257->n_uses, D.16161
	movq	-104(%rbp), %rax	# file, tmp465
	movl	$.LC28, %esi	#,
	movq	%rax, %rdi	# tmp465,
	movl	$0, %eax	#,
	call	fprintf	#
.L785:
	.loc 1 3434 0
	movl	-92(%rbp), %eax	# flags, tmp466
	andl	$128, %eax	#, D.16161
	testl	%eax, %eax	# D.16161
	je	.L784	#,
	.loc 1 3435 0
	movl	-68(%rbp), %eax	# j, D.16163
	salq	$5, %rax	#, D.16163
	movq	%rax, %rdx	# D.16163, D.16163
	movq	-16(%rbp), %rax	# reg_info, tmp467
	addq	%rdx, %rax	# D.16163, D.16173
	movq	8(%rax), %rax	# _262->uses, D.16172
	movq	-104(%rbp), %rdx	# file, tmp468
	movq	%rdx, %rsi	# tmp468,
	movq	%rax, %rdi	# D.16172,
	call	df_chain_dump	#
.L784:
	.loc 1 3438 0
	movq	-104(%rbp), %rax	# file, tmp469
	movq	%rax, %rsi	# tmp469,
	movl	$10, %edi	#,
	call	fputc	#
.L776:
	.loc 1 3398 0
	addl	$1, -68(%rbp)	#, j
.L772:
	.loc 1 3398 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# df, tmp470
	movl	96(%rax), %eax	# df_9(D)->n_regs, D.16160
	cmpl	-68(%rbp), %eax	# j, D.16160
	ja	.L786	#,
.L771:
.LBE116:
	.loc 1 3442 0 is_stmt 1
	movq	-104(%rbp), %rax	# file, tmp471
	movq	%rax, %rsi	# tmp471,
	movl	$10, %edi	#,
	call	fputc	#
.L738:
	.loc 1 3443 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE88:
	.size	df_dump, .-df_dump
	.section	.rodata
.LC30:
	.string	"insn %d bb %d luid %d defs "
	.text
	.globl	df_insn_debug
	.type	df_insn_debug, @function
df_insn_debug:
.LFB89:
	.loc 1 3451 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# df, df
	movq	%rsi, -32(%rbp)	# insn, insn
	movq	%rdx, -40(%rbp)	# file, file
	.loc 1 3455 0
	movq	-32(%rbp), %rax	# insn, tmp107
	movl	8(%rax), %eax	# insn_2(D)->fld[0].rtint, D.16200
	movl	%eax, -4(%rbp)	# D.16200, uid
	.loc 1 3456 0
	movq	-24(%rbp), %rax	# df, tmp108
	movl	64(%rax), %eax	# df_5(D)->insn_size, D.16201
	cmpl	-4(%rbp), %eax	# uid, D.16201
	ja	.L788	#,
	.loc 1 3457 0
	jmp	.L787	#
.L788:
	.loc 1 3459 0
	movq	-24(%rbp), %rax	# df, tmp109
	movq	56(%rax), %rcx	# df_5(D)->insns, D.16202
	movl	-4(%rbp), %edx	# uid, D.16203
	movq	%rdx, %rax	# D.16203, tmp110
	addq	%rax, %rax	# tmp110
	addq	%rdx, %rax	# D.16203, tmp110
	salq	$3, %rax	#, tmp111
	addq	%rcx, %rax	# D.16202, D.16202
	movq	(%rax), %rax	# _10->defs, D.16204
	testq	%rax, %rax	# D.16204
	je	.L790	#,
	.loc 1 3460 0
	movq	basic_block_for_insn(%rip), %rcx	# basic_block_for_insn, basic_block_for_insn.160
	movq	-24(%rbp), %rax	# df, tmp112
	movq	56(%rax), %rsi	# df_5(D)->insns, D.16202
	movl	-4(%rbp), %edx	# uid, D.16203
	movq	%rdx, %rax	# D.16203, tmp113
	addq	%rax, %rax	# tmp113
	addq	%rdx, %rax	# D.16203, tmp113
	salq	$3, %rax	#, tmp114
	addq	%rsi, %rax	# D.16202, D.16202
	movq	(%rax), %rax	# _16->defs, D.16204
	movq	8(%rax), %rax	# _17->ref, D.16205
	movq	8(%rax), %rax	# _18->insn, D.16206
	movl	8(%rax), %eax	# _19->fld[0].rtint, D.16200
	cltq
	addq	$4, %rax	#, tmp116
	movq	(%rcx,%rax,8), %rax	# basic_block_for_insn.160_12->data.bb, D.16207
	movl	88(%rax), %eax	# _21->index, tmp117
	movl	%eax, -8(%rbp)	# tmp117, bbi
	jmp	.L791	#
.L790:
	.loc 1 3461 0
	movq	-24(%rbp), %rax	# df, tmp118
	movq	56(%rax), %rcx	# df_5(D)->insns, D.16202
	movl	-4(%rbp), %edx	# uid, D.16203
	movq	%rdx, %rax	# D.16203, tmp119
	addq	%rax, %rax	# tmp119
	addq	%rdx, %rax	# D.16203, tmp119
	salq	$3, %rax	#, tmp120
	addq	%rcx, %rax	# D.16202, D.16202
	movq	8(%rax), %rax	# _26->uses, D.16204
	testq	%rax, %rax	# D.16204
	je	.L792	#,
	.loc 1 3462 0
	movq	basic_block_for_insn(%rip), %rcx	# basic_block_for_insn, basic_block_for_insn.161
	movq	-24(%rbp), %rax	# df, tmp121
	movq	56(%rax), %rsi	# df_5(D)->insns, D.16202
	movl	-4(%rbp), %edx	# uid, D.16203
	movq	%rdx, %rax	# D.16203, tmp122
	addq	%rax, %rax	# tmp122
	addq	%rdx, %rax	# D.16203, tmp122
	salq	$3, %rax	#, tmp123
	addq	%rsi, %rax	# D.16202, D.16202
	movq	8(%rax), %rax	# _32->uses, D.16204
	movq	8(%rax), %rax	# _33->ref, D.16205
	movq	8(%rax), %rax	# _34->insn, D.16206
	movl	8(%rax), %eax	# _35->fld[0].rtint, D.16200
	cltq
	addq	$4, %rax	#, tmp125
	movq	(%rcx,%rax,8), %rax	# basic_block_for_insn.161_28->data.bb, D.16207
	movl	88(%rax), %eax	# _37->index, tmp126
	movl	%eax, -8(%rbp)	# tmp126, bbi
	jmp	.L791	#
.L792:
	.loc 1 3464 0
	movl	$-1, -8(%rbp)	#, bbi
.L791:
	.loc 1 3467 0
	movq	-24(%rbp), %rax	# df, tmp127
	movq	56(%rax), %rcx	# df_5(D)->insns, D.16202
	movq	-32(%rbp), %rax	# insn, tmp128
	movl	8(%rax), %eax	# insn_2(D)->fld[0].rtint, D.16200
	movslq	%eax, %rdx	# D.16200, D.16203
	movq	%rdx, %rax	# D.16203, tmp129
	addq	%rax, %rax	# tmp129
	addq	%rdx, %rax	# D.16203, tmp129
	salq	$3, %rax	#, tmp130
	addq	%rcx, %rax	# D.16202, D.16202
	.loc 1 3466 0
	movl	16(%rax), %esi	# _44->luid, D.16200
	movl	-8(%rbp), %ecx	# bbi, tmp131
	movl	-4(%rbp), %edx	# uid, tmp132
	movq	-40(%rbp), %rax	# file, tmp133
	movl	%esi, %r8d	# D.16200,
	movl	$.LC30, %esi	#,
	movq	%rax, %rdi	# tmp133,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 3468 0
	movq	-24(%rbp), %rax	# df, tmp134
	movq	56(%rax), %rcx	# df_5(D)->insns, D.16202
	movl	-4(%rbp), %edx	# uid, D.16203
	movq	%rdx, %rax	# D.16203, tmp135
	addq	%rax, %rax	# tmp135
	addq	%rdx, %rax	# D.16203, tmp135
	salq	$3, %rax	#, tmp136
	addq	%rcx, %rax	# D.16202, D.16202
	movq	(%rax), %rax	# _50->defs, D.16204
	movq	-40(%rbp), %rdx	# file, tmp137
	movq	%rdx, %rsi	# tmp137,
	movq	%rax, %rdi	# D.16204,
	call	df_chain_dump	#
	.loc 1 3469 0
	movq	-40(%rbp), %rax	# file, tmp138
	movq	%rax, %rcx	# tmp138,
	movl	$6, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC29, %edi	#,
	call	fwrite	#
	.loc 1 3470 0
	movq	-24(%rbp), %rax	# df, tmp139
	movq	56(%rax), %rcx	# df_5(D)->insns, D.16202
	movl	-4(%rbp), %edx	# uid, D.16203
	movq	%rdx, %rax	# D.16203, tmp140
	addq	%rax, %rax	# tmp140
	addq	%rdx, %rax	# D.16203, tmp140
	salq	$3, %rax	#, tmp141
	addq	%rcx, %rax	# D.16202, D.16202
	movq	8(%rax), %rax	# _55->uses, D.16204
	movq	-40(%rbp), %rdx	# file, tmp142
	movq	%rdx, %rsi	# tmp142,
	movq	%rax, %rdi	# D.16204,
	call	df_chain_dump	#
	.loc 1 3471 0
	movq	-40(%rbp), %rax	# file, tmp143
	movq	%rax, %rsi	# tmp143,
	movl	$10, %edi	#,
	call	fputc	#
.L787:
	.loc 1 3472 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE89:
	.size	df_insn_debug, .-df_insn_debug
	.globl	df_insn_debug_regno
	.type	df_insn_debug_regno, @function
df_insn_debug_regno:
.LFB90:
	.loc 1 3479 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# df, df
	movq	%rsi, -32(%rbp)	# insn, insn
	movq	%rdx, -40(%rbp)	# file, file
	.loc 1 3483 0
	movq	-32(%rbp), %rax	# insn, tmp107
	movl	8(%rax), %eax	# insn_2(D)->fld[0].rtint, D.16209
	movl	%eax, -4(%rbp)	# D.16209, uid
	.loc 1 3484 0
	movq	-24(%rbp), %rax	# df, tmp108
	movl	64(%rax), %eax	# df_5(D)->insn_size, D.16210
	cmpl	-4(%rbp), %eax	# uid, D.16210
	ja	.L794	#,
	.loc 1 3485 0
	jmp	.L793	#
.L794:
	.loc 1 3487 0
	movq	-24(%rbp), %rax	# df, tmp109
	movq	56(%rax), %rcx	# df_5(D)->insns, D.16211
	movl	-4(%rbp), %edx	# uid, D.16212
	movq	%rdx, %rax	# D.16212, tmp110
	addq	%rax, %rax	# tmp110
	addq	%rdx, %rax	# D.16212, tmp110
	salq	$3, %rax	#, tmp111
	addq	%rcx, %rax	# D.16211, D.16211
	movq	(%rax), %rax	# _10->defs, D.16213
	testq	%rax, %rax	# D.16213
	je	.L796	#,
	.loc 1 3488 0
	movq	basic_block_for_insn(%rip), %rcx	# basic_block_for_insn, basic_block_for_insn.162
	movq	-24(%rbp), %rax	# df, tmp112
	movq	56(%rax), %rsi	# df_5(D)->insns, D.16211
	movl	-4(%rbp), %edx	# uid, D.16212
	movq	%rdx, %rax	# D.16212, tmp113
	addq	%rax, %rax	# tmp113
	addq	%rdx, %rax	# D.16212, tmp113
	salq	$3, %rax	#, tmp114
	addq	%rsi, %rax	# D.16211, D.16211
	movq	(%rax), %rax	# _16->defs, D.16213
	movq	8(%rax), %rax	# _17->ref, D.16214
	movq	8(%rax), %rax	# _18->insn, D.16215
	movl	8(%rax), %eax	# _19->fld[0].rtint, D.16209
	cltq
	addq	$4, %rax	#, tmp116
	movq	(%rcx,%rax,8), %rax	# basic_block_for_insn.162_12->data.bb, D.16216
	movl	88(%rax), %eax	# _21->index, tmp117
	movl	%eax, -8(%rbp)	# tmp117, bbi
	jmp	.L797	#
.L796:
	.loc 1 3489 0
	movq	-24(%rbp), %rax	# df, tmp118
	movq	56(%rax), %rcx	# df_5(D)->insns, D.16211
	movl	-4(%rbp), %edx	# uid, D.16212
	movq	%rdx, %rax	# D.16212, tmp119
	addq	%rax, %rax	# tmp119
	addq	%rdx, %rax	# D.16212, tmp119
	salq	$3, %rax	#, tmp120
	addq	%rcx, %rax	# D.16211, D.16211
	movq	8(%rax), %rax	# _26->uses, D.16213
	testq	%rax, %rax	# D.16213
	je	.L798	#,
	.loc 1 3490 0
	movq	basic_block_for_insn(%rip), %rcx	# basic_block_for_insn, basic_block_for_insn.163
	movq	-24(%rbp), %rax	# df, tmp121
	movq	56(%rax), %rsi	# df_5(D)->insns, D.16211
	movl	-4(%rbp), %edx	# uid, D.16212
	movq	%rdx, %rax	# D.16212, tmp122
	addq	%rax, %rax	# tmp122
	addq	%rdx, %rax	# D.16212, tmp122
	salq	$3, %rax	#, tmp123
	addq	%rsi, %rax	# D.16211, D.16211
	movq	8(%rax), %rax	# _32->uses, D.16213
	movq	8(%rax), %rax	# _33->ref, D.16214
	movq	8(%rax), %rax	# _34->insn, D.16215
	movl	8(%rax), %eax	# _35->fld[0].rtint, D.16209
	cltq
	addq	$4, %rax	#, tmp125
	movq	(%rcx,%rax,8), %rax	# basic_block_for_insn.163_28->data.bb, D.16216
	movl	88(%rax), %eax	# _37->index, tmp126
	movl	%eax, -8(%rbp)	# tmp126, bbi
	jmp	.L797	#
.L798:
	.loc 1 3492 0
	movl	$-1, -8(%rbp)	#, bbi
.L797:
	.loc 1 3495 0
	movq	-24(%rbp), %rax	# df, tmp127
	movq	56(%rax), %rcx	# df_5(D)->insns, D.16211
	movq	-32(%rbp), %rax	# insn, tmp128
	movl	8(%rax), %eax	# insn_2(D)->fld[0].rtint, D.16209
	movslq	%eax, %rdx	# D.16209, D.16212
	movq	%rdx, %rax	# D.16212, tmp129
	addq	%rax, %rax	# tmp129
	addq	%rdx, %rax	# D.16212, tmp129
	salq	$3, %rax	#, tmp130
	addq	%rcx, %rax	# D.16211, D.16211
	.loc 1 3494 0
	movl	16(%rax), %esi	# _44->luid, D.16209
	movl	-8(%rbp), %ecx	# bbi, tmp131
	movl	-4(%rbp), %edx	# uid, tmp132
	movq	-40(%rbp), %rax	# file, tmp133
	movl	%esi, %r8d	# D.16209,
	movl	$.LC30, %esi	#,
	movq	%rax, %rdi	# tmp133,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 3496 0
	movq	-24(%rbp), %rax	# df, tmp134
	movq	56(%rax), %rcx	# df_5(D)->insns, D.16211
	movl	-4(%rbp), %edx	# uid, D.16212
	movq	%rdx, %rax	# D.16212, tmp135
	addq	%rax, %rax	# tmp135
	addq	%rdx, %rax	# D.16212, tmp135
	salq	$3, %rax	#, tmp136
	addq	%rcx, %rax	# D.16211, D.16211
	movq	(%rax), %rax	# _50->defs, D.16213
	movq	-40(%rbp), %rdx	# file, tmp137
	movq	%rdx, %rsi	# tmp137,
	movq	%rax, %rdi	# D.16213,
	call	df_chain_dump_regno	#
	.loc 1 3497 0
	movq	-40(%rbp), %rax	# file, tmp138
	movq	%rax, %rcx	# tmp138,
	movl	$6, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC29, %edi	#,
	call	fwrite	#
	.loc 1 3498 0
	movq	-24(%rbp), %rax	# df, tmp139
	movq	56(%rax), %rcx	# df_5(D)->insns, D.16211
	movl	-4(%rbp), %edx	# uid, D.16212
	movq	%rdx, %rax	# D.16212, tmp140
	addq	%rax, %rax	# tmp140
	addq	%rdx, %rax	# D.16212, tmp140
	salq	$3, %rax	#, tmp141
	addq	%rcx, %rax	# D.16211, D.16211
	movq	8(%rax), %rax	# _55->uses, D.16213
	movq	-40(%rbp), %rdx	# file, tmp142
	movq	%rdx, %rsi	# tmp142,
	movq	%rax, %rdi	# D.16213,
	call	df_chain_dump_regno	#
	.loc 1 3499 0
	movq	-40(%rbp), %rax	# file, tmp143
	movq	%rax, %rsi	# tmp143,
	movl	$10, %edi	#,
	call	fputc	#
.L793:
	.loc 1 3500 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE90:
	.size	df_insn_debug_regno, .-df_insn_debug_regno
	.section	.rodata
.LC31:
	.string	"reg %d life %d defs "
	.text
	.type	df_regno_debug, @function
df_regno_debug:
.LFB91:
	.loc 1 3507 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -8(%rbp)	# df, df
	movl	%esi, -12(%rbp)	# regno, regno
	movq	%rdx, -24(%rbp)	# file, file
	.loc 1 3508 0
	movq	-8(%rbp), %rax	# df, tmp75
	movl	48(%rax), %eax	# df_1(D)->reg_size, D.16217
	cmpl	-12(%rbp), %eax	# regno, D.16217
	ja	.L800	#,
	.loc 1 3509 0
	jmp	.L799	#
.L800:
	.loc 1 3512 0
	movq	-8(%rbp), %rax	# df, tmp76
	movq	40(%rax), %rax	# df_1(D)->regs, D.16218
	movl	-12(%rbp), %edx	# regno, D.16219
	salq	$5, %rdx	#, D.16219
	addq	%rdx, %rax	# D.16219, D.16218
	.loc 1 3511 0
	movl	16(%rax), %ecx	# _7->lifetime, D.16220
	movl	-12(%rbp), %edx	# regno, tmp77
	movq	-24(%rbp), %rax	# file, tmp78
	movl	$.LC31, %esi	#,
	movq	%rax, %rdi	# tmp78,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 3513 0
	movq	-8(%rbp), %rax	# df, tmp79
	movq	40(%rax), %rax	# df_1(D)->regs, D.16218
	movl	-12(%rbp), %edx	# regno, D.16219
	salq	$5, %rdx	#, D.16219
	addq	%rdx, %rax	# D.16219, D.16218
	movq	(%rax), %rax	# _13->defs, D.16221
	movq	-24(%rbp), %rdx	# file, tmp80
	movq	%rdx, %rsi	# tmp80,
	movq	%rax, %rdi	# D.16221,
	call	df_chain_dump	#
	.loc 1 3514 0
	movq	-24(%rbp), %rax	# file, tmp81
	movq	%rax, %rcx	# tmp81,
	movl	$6, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC29, %edi	#,
	call	fwrite	#
	.loc 1 3515 0
	movq	-8(%rbp), %rax	# df, tmp82
	movq	40(%rax), %rax	# df_1(D)->regs, D.16218
	movl	-12(%rbp), %edx	# regno, D.16219
	salq	$5, %rdx	#, D.16219
	addq	%rdx, %rax	# D.16219, D.16218
	movq	8(%rax), %rax	# _18->uses, D.16221
	movq	-24(%rbp), %rdx	# file, tmp83
	movq	%rdx, %rsi	# tmp83,
	movq	%rax, %rdi	# D.16221,
	call	df_chain_dump	#
	.loc 1 3516 0
	movq	-24(%rbp), %rax	# file, tmp84
	movq	%rax, %rsi	# tmp84,
	movl	$10, %edi	#,
	call	fputc	#
.L799:
	.loc 1 3517 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE91:
	.size	df_regno_debug, .-df_regno_debug
	.section	.rodata
	.align 8
.LC32:
	.string	"reg %d bb %d luid %d insn %d chain "
	.text
	.type	df_ref_debug, @function
df_ref_debug:
.LFB92:
	.loc 1 3525 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -8(%rbp)	# df, df
	movq	%rsi, -16(%rbp)	# ref, ref
	movq	%rdx, -24(%rbp)	# file, file
	.loc 1 3526 0
	movq	-16(%rbp), %rax	# ref, tmp82
	movl	36(%rax), %edx	# ref_3(D)->id, D.16223
	.loc 1 3527 0
	movq	-16(%rbp), %rax	# ref, tmp83
	movl	32(%rax), %eax	# ref_3(D)->type, D.16224
	.loc 1 3526 0
	testl	%eax, %eax	# D.16224
	jne	.L803	#,
	.loc 1 3526 0 is_stmt 0 discriminator 1
	movl	$100, %eax	#, iftmp.164
	jmp	.L804	#
.L803:
	.loc 1 3526 0 discriminator 2
	movl	$117, %eax	#, iftmp.164
.L804:
	.loc 1 3526 0 discriminator 3
	movq	-24(%rbp), %rdi	# file, tmp84
	movl	%edx, %ecx	# D.16223,
	movl	%eax, %edx	# iftmp.164,
	movl	$.LC2, %esi	#,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 3533 0 is_stmt 1 discriminator 3
	movq	-16(%rbp), %rax	# ref, tmp85
	movq	8(%rax), %rax	# ref_3(D)->insn, D.16225
	.loc 1 3529 0 discriminator 3
	movl	8(%rax), %edi	# _9->fld[0].rtint, D.16223
	.loc 1 3532 0 discriminator 3
	movq	-8(%rbp), %rax	# df, tmp86
	movq	56(%rax), %rcx	# df_11(D)->insns, D.16226
	movq	-16(%rbp), %rax	# ref, tmp87
	movq	8(%rax), %rax	# ref_3(D)->insn, D.16225
	movl	8(%rax), %eax	# _13->fld[0].rtint, D.16223
	movslq	%eax, %rdx	# D.16223, D.16227
	movq	%rdx, %rax	# D.16227, tmp88
	addq	%rax, %rax	# tmp88
	addq	%rdx, %rax	# D.16227, tmp88
	salq	$3, %rax	#, tmp89
	addq	%rcx, %rax	# D.16226, D.16226
	.loc 1 3529 0 discriminator 3
	movl	16(%rax), %esi	# _17->luid, D.16223
	.loc 1 3531 0 discriminator 3
	movq	basic_block_for_insn(%rip), %rax	# basic_block_for_insn, basic_block_for_insn.165
	movq	-16(%rbp), %rdx	# ref, tmp90
	movq	8(%rdx), %rdx	# ref_3(D)->insn, D.16225
	movl	8(%rdx), %edx	# _20->fld[0].rtint, D.16223
	movslq	%edx, %rdx	# D.16223, tmp91
	addq	$4, %rdx	#, tmp92
	movq	(%rax,%rdx,8), %rax	# basic_block_for_insn.165_19->data.bb, D.16228
	.loc 1 3529 0 discriminator 3
	movl	88(%rax), %ecx	# _22->index, D.16223
	.loc 1 3530 0 discriminator 3
	movq	-16(%rbp), %rax	# ref, tmp93
	movq	(%rax), %rax	# ref_3(D)->reg, D.16225
	movzwl	(%rax), %eax	# _24->code, D.16229
	cmpw	$63, %ax	#, D.16229
	jne	.L805	#,
	.loc 1 3530 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# ref, tmp94
	movq	(%rax), %rax	# ref_3(D)->reg, D.16225
	movq	8(%rax), %rax	# _26->fld[0].rtx, iftmp.166
	jmp	.L806	#
.L805:
	.loc 1 3530 0 discriminator 2
	movq	-16(%rbp), %rax	# ref, tmp95
	movq	(%rax), %rax	# ref_3(D)->reg, iftmp.166
.L806:
	.loc 1 3529 0 is_stmt 1
	movl	8(%rax), %edx	# iftmp.166_2->fld[0].rtuint, D.16230
	movq	-24(%rbp), %rax	# file, tmp96
	movl	%edi, %r9d	# D.16223,
	movl	%esi, %r8d	# D.16223,
	movl	$.LC32, %esi	#,
	movq	%rax, %rdi	# tmp96,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 3534 0
	movq	-16(%rbp), %rax	# ref, tmp97
	movq	24(%rax), %rax	# ref_3(D)->chain, D.16231
	movq	-24(%rbp), %rdx	# file, tmp98
	movq	%rdx, %rsi	# tmp98,
	movq	%rax, %rdi	# D.16231,
	call	df_chain_dump	#
	.loc 1 3535 0
	movq	-24(%rbp), %rax	# file, tmp99
	movq	%rax, %rsi	# tmp99,
	movl	$10, %edi	#,
	call	fputc	#
	.loc 1 3536 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE92:
	.size	df_ref_debug, .-df_ref_debug
	.globl	debug_df_insn
	.type	debug_df_insn, @function
debug_df_insn:
.LFB93:
	.loc 1 3542 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# insn, insn
	.loc 1 3543 0
	movq	stderr(%rip), %rdx	# stderr, stderr.167
	movq	ddf(%rip), %rax	# ddf, ddf.168
	movq	-8(%rbp), %rcx	# insn, tmp61
	movq	%rcx, %rsi	# tmp61,
	movq	%rax, %rdi	# ddf.168,
	call	df_insn_debug	#
	.loc 1 3544 0
	movq	-8(%rbp), %rax	# insn, tmp62
	movq	%rax, %rdi	# tmp62,
	call	debug_rtx	#
	.loc 1 3545 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE93:
	.size	debug_df_insn, .-debug_df_insn
	.globl	debug_df_reg
	.type	debug_df_reg, @function
debug_df_reg:
.LFB94:
	.loc 1 3551 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# reg, reg
	.loc 1 3552 0
	movq	stderr(%rip), %rdx	# stderr, stderr.169
	movq	-8(%rbp), %rax	# reg, tmp62
	movl	8(%rax), %ecx	# reg_2(D)->fld[0].rtuint, D.16233
	movq	ddf(%rip), %rax	# ddf, ddf.170
	movl	%ecx, %esi	# D.16233,
	movq	%rax, %rdi	# ddf.170,
	call	df_regno_debug	#
	.loc 1 3553 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE94:
	.size	debug_df_reg, .-debug_df_reg
	.globl	debug_df_regno
	.type	debug_df_regno, @function
debug_df_regno:
.LFB95:
	.loc 1 3559 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movl	%edi, -4(%rbp)	# regno, regno
	.loc 1 3560 0
	movq	stderr(%rip), %rdx	# stderr, stderr.171
	movq	ddf(%rip), %rax	# ddf, ddf.172
	movl	-4(%rbp), %ecx	# regno, tmp61
	movl	%ecx, %esi	# tmp61,
	movq	%rax, %rdi	# ddf.172,
	call	df_regno_debug	#
	.loc 1 3561 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE95:
	.size	debug_df_regno, .-debug_df_regno
	.globl	debug_df_ref
	.type	debug_df_ref, @function
debug_df_ref:
.LFB96:
	.loc 1 3567 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# ref, ref
	.loc 1 3568 0
	movq	stderr(%rip), %rdx	# stderr, stderr.173
	movq	ddf(%rip), %rax	# ddf, ddf.174
	movq	-8(%rbp), %rcx	# ref, tmp61
	movq	%rcx, %rsi	# tmp61,
	movq	%rax, %rdi	# ddf.174,
	call	df_ref_debug	#
	.loc 1 3569 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE96:
	.size	debug_df_ref, .-debug_df_ref
	.globl	debug_df_defno
	.type	debug_df_defno, @function
debug_df_defno:
.LFB97:
	.loc 1 3575 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movl	%edi, -4(%rbp)	# defno, defno
	.loc 1 3576 0
	movq	stderr(%rip), %rdx	# stderr, stderr.175
	movq	ddf(%rip), %rax	# ddf, ddf.176
	movq	16(%rax), %rax	# ddf.176_2->defs, D.16234
	movl	-4(%rbp), %ecx	# defno, D.16235
	salq	$3, %rcx	#, D.16235
	addq	%rcx, %rax	# D.16235, D.16234
	movq	(%rax), %rcx	# *_7, D.16236
	movq	ddf(%rip), %rax	# ddf, ddf.177
	movq	%rcx, %rsi	# D.16236,
	movq	%rax, %rdi	# ddf.177,
	call	df_ref_debug	#
	.loc 1 3577 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE97:
	.size	debug_df_defno, .-debug_df_defno
	.globl	debug_df_useno
	.type	debug_df_useno, @function
debug_df_useno:
.LFB98:
	.loc 1 3583 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movl	%edi, -4(%rbp)	# defno, defno
	.loc 1 3584 0
	movq	stderr(%rip), %rdx	# stderr, stderr.178
	movq	ddf(%rip), %rax	# ddf, ddf.179
	movq	24(%rax), %rax	# ddf.179_2->uses, D.16237
	movl	-4(%rbp), %ecx	# defno, D.16238
	salq	$3, %rcx	#, D.16238
	addq	%rcx, %rax	# D.16238, D.16237
	movq	(%rax), %rcx	# *_7, D.16239
	movq	ddf(%rip), %rax	# ddf, ddf.180
	movq	%rcx, %rsi	# D.16239,
	movq	%rax, %rdi	# ddf.180,
	call	df_ref_debug	#
	.loc 1 3585 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE98:
	.size	debug_df_useno, .-debug_df_useno
	.globl	debug_df_chain
	.type	debug_df_chain, @function
debug_df_chain:
.LFB99:
	.loc 1 3591 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# link, link
	.loc 1 3592 0
	movq	stderr(%rip), %rdx	# stderr, stderr.181
	movq	-8(%rbp), %rax	# link, tmp61
	movq	%rdx, %rsi	# stderr.181,
	movq	%rax, %rdi	# tmp61,
	call	df_chain_dump	#
	.loc 1 3593 0
	movq	stderr(%rip), %rax	# stderr, stderr.182
	movq	%rax, %rsi	# stderr.182,
	movl	$10, %edi	#,
	call	fputc	#
	.loc 1 3594 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE99:
	.size	debug_df_chain, .-debug_df_chain
	.type	hybrid_search_bitmap, @function
hybrid_search_bitmap:
.LFB100:
	.loc 1 3610 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	addq	$-128, %rsp	#,
	movq	%rdi, -40(%rbp)	# block, block
	movq	%rsi, -48(%rbp)	# in, in
	movq	%rdx, -56(%rbp)	# out, out
	movq	%rcx, -64(%rbp)	# gen, gen
	movq	%r8, -72(%rbp)	# kill, kill
	movl	%r9d, -76(%rbp)	# dir, dir
	.loc 1 3612 0
	movq	-40(%rbp), %rax	# block, tmp219
	movl	88(%rax), %eax	# block_7(D)->index, tmp220
	movl	%eax, -20(%rbp)	# tmp220, i
	.loc 1 3614 0
	movq	-40(%rbp), %rax	# block, tmp221
	movq	%rax, -8(%rbp)	# tmp221, bb
	.loc 1 3615 0
	movq	-40(%rbp), %rax	# block, tmp222
	movl	88(%rax), %eax	# block_7(D)->index, D.16240
	shrl	$6, %eax	#, D.16241
	movq	32(%rbp), %rdx	# visited, tmp223
	movl	%eax, %ecx	# D.16241, tmp224
	addq	$2, %rcx	#, tmp225
	movq	(%rdx,%rcx,8), %rsi	# visited_13(D)->elms, D.16242
	movq	-40(%rbp), %rdx	# block, tmp226
	movl	88(%rdx), %edx	# block_7(D)->index, D.16240
	andl	$63, %edx	#, D.16240
	movl	$1, %edi	#, tmp227
	movl	%edx, %ecx	# D.16240, tmp371
	salq	%cl, %rdi	# tmp371, D.16242
	movq	%rdi, %rdx	# D.16242, D.16242
	orq	%rdx, %rsi	# D.16242, D.16242
	movq	%rsi, %rcx	# D.16242, D.16242
	movq	32(%rbp), %rdx	# visited, tmp228
	movl	%eax, %eax	# D.16241, tmp229
	addq	$2, %rax	#, tmp230
	movq	%rcx, (%rdx,%rax,8)	# D.16242, visited_13(D)->elms
	.loc 1 3616 0
	movq	-40(%rbp), %rax	# block, tmp231
	movl	88(%rax), %eax	# block_7(D)->index, D.16240
	shrl	$6, %eax	#, D.16241
	movl	%eax, %edx	# D.16241, D.16241
	movq	40(%rbp), %rax	# pending, tmp232
	movl	%edx, %edx	# D.16241, tmp233
	addq	$2, %rdx	#, tmp234
	movq	(%rax,%rdx,8), %rdx	# pending_22(D)->elms, D.16242
	movq	-40(%rbp), %rax	# block, tmp235
	movl	88(%rax), %eax	# block_7(D)->index, D.16240
	andl	$63, %eax	#, D.16240
	movl	%eax, %ecx	# D.16240, tmp375
	shrq	%cl, %rdx	# tmp375, D.16242
	movq	%rdx, %rax	# D.16242, D.16242
	andl	$1, %eax	#, D.16242
	testq	%rax, %rax	# D.16242
	je	.L815	#,
	.loc 1 3618 0
	cmpl	$0, -76(%rbp)	#, dir
	jne	.L816	#,
	.loc 1 3621 0
	movl	-20(%rbp), %eax	# i, tmp236
	cltq
	leaq	0(,%rax,8), %rdx	#, D.16242
	movq	-48(%rbp), %rax	# in, tmp237
	addq	%rdx, %rax	# D.16242, D.16243
	movq	(%rax), %rax	# *_32, D.16244
	movq	%rax, %rdi	# D.16244,
	call	bitmap_clear	#
	.loc 1 3622 0
	movq	-8(%rbp), %rax	# bb, tmp238
	movq	32(%rax), %rax	# bb_9->pred, tmp239
	movq	%rax, -16(%rbp)	# tmp239, e
	jmp	.L817	#
.L822:
	.loc 1 3624 0
	movq	-16(%rbp), %rax	# e, tmp240
	movq	16(%rax), %rax	# e_1->src, D.16245
	cmpq	$entry_exit_blocks, %rax	#, D.16245
	jne	.L818	#,
	.loc 1 3625 0
	jmp	.L819	#
.L818:
	.loc 1 3626 0
	movl	16(%rbp), %eax	# conf_op, conf_op
	testl	%eax, %eax	# conf_op
	je	.L820	#,
	cmpl	$1, %eax	#, conf_op
	je	.L821	#,
	jmp	.L819	#
.L820:
	.loc 1 3629 0
	movq	-16(%rbp), %rax	# e, tmp242
	movq	16(%rax), %rax	# e_1->src, D.16245
	movl	88(%rax), %eax	# _37->index, D.16240
	cltq
	leaq	0(,%rax,8), %rdx	#, D.16242
	movq	-56(%rbp), %rax	# out, tmp243
	addq	%rdx, %rax	# D.16242, D.16243
	movq	(%rax), %rdx	# *_42, D.16244
	movl	-20(%rbp), %eax	# i, tmp244
	cltq
	leaq	0(,%rax,8), %rcx	#, D.16242
	movq	-48(%rbp), %rax	# in, tmp245
	addq	%rcx, %rax	# D.16242, D.16243
	movq	(%rax), %rsi	# *_46, D.16244
	movl	-20(%rbp), %eax	# i, tmp246
	cltq
	leaq	0(,%rax,8), %rcx	#, D.16242
	movq	-48(%rbp), %rax	# in, tmp247
	addq	%rcx, %rax	# D.16242, D.16243
	movq	(%rax), %rax	# *_50, D.16244
	movl	$2, %ecx	#,
	movq	%rax, %rdi	# D.16244,
	call	bitmap_operation	#
	.loc 1 3630 0
	jmp	.L819	#
.L821:
	.loc 1 3632 0
	movq	-16(%rbp), %rax	# e, tmp248
	movq	16(%rax), %rax	# e_1->src, D.16245
	movl	88(%rax), %eax	# _52->index, D.16240
	cltq
	leaq	0(,%rax,8), %rdx	#, D.16242
	movq	-56(%rbp), %rax	# out, tmp249
	addq	%rdx, %rax	# D.16242, D.16243
	movq	(%rax), %rdx	# *_56, D.16244
	movl	-20(%rbp), %eax	# i, tmp250
	cltq
	leaq	0(,%rax,8), %rcx	#, D.16242
	movq	-48(%rbp), %rax	# in, tmp251
	addq	%rcx, %rax	# D.16242, D.16243
	movq	(%rax), %rsi	# *_60, D.16244
	movl	-20(%rbp), %eax	# i, tmp252
	cltq
	leaq	0(,%rax,8), %rcx	#, D.16242
	movq	-48(%rbp), %rax	# in, tmp253
	addq	%rcx, %rax	# D.16242, D.16243
	movq	(%rax), %rax	# *_64, D.16244
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# D.16244,
	call	bitmap_operation	#
	.loc 1 3633 0
	nop
.L819:
	.loc 1 3622 0
	movq	-16(%rbp), %rax	# e, tmp254
	movq	(%rax), %rax	# e_1->pred_next, tmp255
	movq	%rax, -16(%rbp)	# tmp255, e
.L817:
	.loc 1 3622 0 is_stmt 0 discriminator 1
	cmpq	$0, -16(%rbp)	#, e
	jne	.L822	#,
	jmp	.L823	#
.L816:
	.loc 1 3640 0 is_stmt 1
	movl	-20(%rbp), %eax	# i, tmp256
	cltq
	leaq	0(,%rax,8), %rdx	#, D.16242
	movq	-56(%rbp), %rax	# out, tmp257
	addq	%rdx, %rax	# D.16242, D.16243
	movq	(%rax), %rax	# *_69, D.16244
	movq	%rax, %rdi	# D.16244,
	call	bitmap_clear	#
	.loc 1 3641 0
	movq	-8(%rbp), %rax	# bb, tmp258
	movq	40(%rax), %rax	# bb_9->succ, tmp259
	movq	%rax, -16(%rbp)	# tmp259, e
	jmp	.L824	#
.L829:
	.loc 1 3643 0
	movq	-16(%rbp), %rax	# e, tmp260
	movq	24(%rax), %rax	# e_2->dest, D.16245
	cmpq	$entry_exit_blocks+112, %rax	#, D.16245
	jne	.L825	#,
	.loc 1 3644 0
	jmp	.L826	#
.L825:
	.loc 1 3645 0
	movl	16(%rbp), %eax	# conf_op, conf_op
	testl	%eax, %eax	# conf_op
	je	.L827	#,
	cmpl	$1, %eax	#, conf_op
	je	.L828	#,
	jmp	.L826	#
.L827:
	.loc 1 3648 0
	movq	-16(%rbp), %rax	# e, tmp262
	movq	24(%rax), %rax	# e_2->dest, D.16245
	movl	88(%rax), %eax	# _73->index, D.16240
	cltq
	leaq	0(,%rax,8), %rdx	#, D.16242
	movq	-48(%rbp), %rax	# in, tmp263
	addq	%rdx, %rax	# D.16242, D.16243
	movq	(%rax), %rdx	# *_77, D.16244
	movl	-20(%rbp), %eax	# i, tmp264
	cltq
	leaq	0(,%rax,8), %rcx	#, D.16242
	movq	-56(%rbp), %rax	# out, tmp265
	addq	%rcx, %rax	# D.16242, D.16243
	movq	(%rax), %rsi	# *_81, D.16244
	movl	-20(%rbp), %eax	# i, tmp266
	cltq
	leaq	0(,%rax,8), %rcx	#, D.16242
	movq	-56(%rbp), %rax	# out, tmp267
	addq	%rcx, %rax	# D.16242, D.16243
	movq	(%rax), %rax	# *_85, D.16244
	movl	$2, %ecx	#,
	movq	%rax, %rdi	# D.16244,
	call	bitmap_operation	#
	.loc 1 3649 0
	jmp	.L826	#
.L828:
	.loc 1 3651 0
	movq	-16(%rbp), %rax	# e, tmp268
	movq	24(%rax), %rax	# e_2->dest, D.16245
	movl	88(%rax), %eax	# _87->index, D.16240
	cltq
	leaq	0(,%rax,8), %rdx	#, D.16242
	movq	-48(%rbp), %rax	# in, tmp269
	addq	%rdx, %rax	# D.16242, D.16243
	movq	(%rax), %rdx	# *_91, D.16244
	movl	-20(%rbp), %eax	# i, tmp270
	cltq
	leaq	0(,%rax,8), %rcx	#, D.16242
	movq	-56(%rbp), %rax	# out, tmp271
	addq	%rcx, %rax	# D.16242, D.16243
	movq	(%rax), %rsi	# *_95, D.16244
	movl	-20(%rbp), %eax	# i, tmp272
	cltq
	leaq	0(,%rax,8), %rcx	#, D.16242
	movq	-56(%rbp), %rax	# out, tmp273
	addq	%rcx, %rax	# D.16242, D.16243
	movq	(%rax), %rax	# *_99, D.16244
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# D.16244,
	call	bitmap_operation	#
	.loc 1 3652 0
	nop
.L826:
	.loc 1 3641 0
	movq	-16(%rbp), %rax	# e, tmp274
	movq	8(%rax), %rax	# e_2->succ_next, tmp275
	movq	%rax, -16(%rbp)	# tmp275, e
.L824:
	.loc 1 3641 0 is_stmt 0 discriminator 1
	cmpq	$0, -16(%rbp)	#, e
	jne	.L829	#,
.L823:
	.loc 1 3657 0 is_stmt 1
	movl	-20(%rbp), %eax	# i, tmp276
	cltq
	leaq	0(,%rax,8), %rdx	#, D.16242
	movq	-72(%rbp), %rax	# kill, tmp277
	addq	%rdx, %rax	# D.16242, D.16243
	movq	(%rax), %r9	# *_105, D.16244
	movl	-20(%rbp), %eax	# i, tmp278
	cltq
	leaq	0(,%rax,8), %rdx	#, D.16242
	movq	-64(%rbp), %rax	# gen, tmp279
	addq	%rdx, %rax	# D.16242, D.16243
	movq	(%rax), %r8	# *_110, D.16244
	movl	-20(%rbp), %eax	# i, tmp280
	cltq
	leaq	0(,%rax,8), %rdx	#, D.16242
	movq	-56(%rbp), %rax	# out, tmp281
	addq	%rdx, %rax	# D.16242, D.16243
	movq	(%rax), %rcx	# *_114, D.16244
	movl	-20(%rbp), %eax	# i, tmp282
	cltq
	leaq	0(,%rax,8), %rdx	#, D.16242
	movq	-48(%rbp), %rax	# in, tmp283
	addq	%rdx, %rax	# D.16242, D.16243
	movq	(%rax), %rdx	# *_118, D.16244
	leaq	-24(%rbp), %rsi	#, tmp284
	movl	-20(%rbp), %edi	# i, tmp285
	movq	48(%rbp), %rax	# data, tmp286
	movq	%rax, (%rsp)	# tmp286,
	movq	24(%rbp), %rax	# transfun, tmp287
	call	*%rax	# tmp287
	.loc 1 3658 0
	movl	-20(%rbp), %eax	# i, i.183
	shrl	$6, %eax	#, D.16241
	movq	40(%rbp), %rdx	# pending, tmp288
	movl	%eax, %ecx	# D.16241, tmp289
	addq	$2, %rcx	#, tmp290
	movq	(%rdx,%rcx,8), %rdx	# pending_22(D)->elms, D.16242
	movl	-20(%rbp), %ecx	# i, tmp291
	andl	$63, %ecx	#, D.16240
	movl	$1, %esi	#, tmp292
	salq	%cl, %rsi	# D.16240, D.16242
	movq	%rsi, %rcx	# D.16242, D.16242
	notq	%rcx	# D.16242
	andq	%rdx, %rcx	# D.16242, D.16242
	movq	40(%rbp), %rdx	# pending, tmp293
	movl	%eax, %eax	# D.16241, tmp294
	addq	$2, %rax	#, tmp295
	movq	%rcx, (%rdx,%rax,8)	# D.16242, pending_22(D)->elms
	.loc 1 3659 0
	movl	-24(%rbp), %eax	# changed, changed.184
	testl	%eax, %eax	# changed.184
	je	.L815	#,
	.loc 1 3661 0
	cmpl	$0, -76(%rbp)	#, dir
	jne	.L830	#,
	.loc 1 3663 0
	movq	-8(%rbp), %rax	# bb, tmp296
	movq	40(%rax), %rax	# bb_9->succ, tmp297
	movq	%rax, -16(%rbp)	# tmp297, e
	jmp	.L831	#
.L835:
	.loc 1 3665 0
	movq	-16(%rbp), %rax	# e, tmp298
	movq	24(%rax), %rax	# e_3->dest, D.16245
	cmpq	$entry_exit_blocks+112, %rax	#, D.16245
	je	.L832	#,
	.loc 1 3665 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# e, tmp299
	movq	24(%rax), %rax	# e_3->dest, D.16245
	movl	88(%rax), %eax	# _132->index, D.16240
	cmpl	-20(%rbp), %eax	# i, D.16240
	jne	.L833	#,
.L832:
	.loc 1 3666 0 is_stmt 1
	jmp	.L834	#
.L833:
	.loc 1 3667 0
	movq	-16(%rbp), %rax	# e, tmp300
	movq	24(%rax), %rax	# e_3->dest, D.16245
	movl	88(%rax), %eax	# _134->index, D.16240
	shrl	$6, %eax	#, D.16241
	movq	40(%rbp), %rdx	# pending, tmp301
	movl	%eax, %ecx	# D.16241, tmp302
	addq	$2, %rcx	#, tmp303
	movq	(%rdx,%rcx,8), %rsi	# pending_22(D)->elms, D.16242
	movq	-16(%rbp), %rdx	# e, tmp304
	movq	24(%rdx), %rdx	# e_3->dest, D.16245
	movl	88(%rdx), %edx	# _139->index, D.16240
	andl	$63, %edx	#, D.16240
	movl	$1, %edi	#, tmp305
	movl	%edx, %ecx	# D.16240, tmp378
	salq	%cl, %rdi	# tmp378, D.16242
	movq	%rdi, %rdx	# D.16242, D.16242
	orq	%rdx, %rsi	# D.16242, D.16242
	movq	%rsi, %rcx	# D.16242, D.16242
	movq	40(%rbp), %rdx	# pending, tmp306
	movl	%eax, %eax	# D.16241, tmp307
	addq	$2, %rax	#, tmp308
	movq	%rcx, (%rdx,%rax,8)	# D.16242, pending_22(D)->elms
.L834:
	.loc 1 3663 0
	movq	-16(%rbp), %rax	# e, tmp309
	movq	8(%rax), %rax	# e_3->succ_next, tmp310
	movq	%rax, -16(%rbp)	# tmp310, e
.L831:
	.loc 1 3663 0 is_stmt 0 discriminator 1
	cmpq	$0, -16(%rbp)	#, e
	jne	.L835	#,
	jmp	.L815	#
.L830:
	.loc 1 3672 0 is_stmt 1
	movq	-8(%rbp), %rax	# bb, tmp311
	movq	32(%rax), %rax	# bb_9->pred, tmp312
	movq	%rax, -16(%rbp)	# tmp312, e
	jmp	.L836	#
.L840:
	.loc 1 3674 0
	movq	-16(%rbp), %rax	# e, tmp313
	movq	16(%rax), %rax	# e_4->src, D.16245
	cmpq	$entry_exit_blocks, %rax	#, D.16245
	je	.L837	#,
	.loc 1 3674 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# e, tmp314
	movq	24(%rax), %rax	# e_4->dest, D.16245
	movl	88(%rax), %eax	# _147->index, D.16240
	cmpl	-20(%rbp), %eax	# i, D.16240
	jne	.L838	#,
.L837:
	.loc 1 3675 0 is_stmt 1
	jmp	.L839	#
.L838:
	.loc 1 3676 0
	movq	-16(%rbp), %rax	# e, tmp315
	movq	16(%rax), %rax	# e_4->src, D.16245
	movl	88(%rax), %eax	# _149->index, D.16240
	shrl	$6, %eax	#, D.16241
	movq	40(%rbp), %rdx	# pending, tmp316
	movl	%eax, %ecx	# D.16241, tmp317
	addq	$2, %rcx	#, tmp318
	movq	(%rdx,%rcx,8), %rsi	# pending_22(D)->elms, D.16242
	movq	-16(%rbp), %rdx	# e, tmp319
	movq	16(%rdx), %rdx	# e_4->src, D.16245
	movl	88(%rdx), %edx	# _154->index, D.16240
	andl	$63, %edx	#, D.16240
	movl	$1, %edi	#, tmp320
	movl	%edx, %ecx	# D.16240, tmp381
	salq	%cl, %rdi	# tmp381, D.16242
	movq	%rdi, %rdx	# D.16242, D.16242
	orq	%rdx, %rsi	# D.16242, D.16242
	movq	%rsi, %rcx	# D.16242, D.16242
	movq	40(%rbp), %rdx	# pending, tmp321
	movl	%eax, %eax	# D.16241, tmp322
	addq	$2, %rax	#, tmp323
	movq	%rcx, (%rdx,%rax,8)	# D.16242, pending_22(D)->elms
.L839:
	.loc 1 3672 0
	movq	-16(%rbp), %rax	# e, tmp324
	movq	(%rax), %rax	# e_4->pred_next, tmp325
	movq	%rax, -16(%rbp)	# tmp325, e
.L836:
	.loc 1 3672 0 is_stmt 0 discriminator 1
	cmpq	$0, -16(%rbp)	#, e
	jne	.L840	#,
.L815:
	.loc 1 3681 0 is_stmt 1
	cmpl	$0, -76(%rbp)	#, dir
	jne	.L841	#,
	.loc 1 3683 0
	movq	-8(%rbp), %rax	# bb, tmp326
	movq	40(%rax), %rax	# bb_9->succ, tmp327
	movq	%rax, -16(%rbp)	# tmp327, e
	jmp	.L842	#
.L846:
	.loc 1 3685 0
	movq	-16(%rbp), %rax	# e, tmp328
	movq	24(%rax), %rax	# e_5->dest, D.16245
	cmpq	$entry_exit_blocks+112, %rax	#, D.16245
	je	.L843	#,
	.loc 1 3685 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# e, tmp329
	movq	24(%rax), %rax	# e_5->dest, D.16245
	movl	88(%rax), %eax	# _162->index, D.16240
	cmpl	-20(%rbp), %eax	# i, D.16240
	jne	.L844	#,
.L843:
	.loc 1 3686 0 is_stmt 1
	jmp	.L845	#
.L844:
	.loc 1 3687 0
	movq	-16(%rbp), %rax	# e, tmp330
	movq	24(%rax), %rax	# e_5->dest, D.16245
	movl	88(%rax), %eax	# _164->index, D.16240
	shrl	$6, %eax	#, D.16241
	movl	%eax, %edx	# D.16241, D.16241
	movq	32(%rbp), %rax	# visited, tmp331
	movl	%edx, %edx	# D.16241, tmp332
	addq	$2, %rdx	#, tmp333
	movq	(%rax,%rdx,8), %rdx	# visited_13(D)->elms, D.16242
	movq	-16(%rbp), %rax	# e, tmp334
	movq	24(%rax), %rax	# e_5->dest, D.16245
	movl	88(%rax), %eax	# _169->index, D.16240
	andl	$63, %eax	#, D.16240
	movl	%eax, %ecx	# D.16240, tmp385
	shrq	%cl, %rdx	# tmp385, D.16242
	movq	%rdx, %rax	# D.16242, D.16242
	andl	$1, %eax	#, D.16242
	testq	%rax, %rax	# D.16242
	jne	.L845	#,
	.loc 1 3688 0
	movq	-16(%rbp), %rax	# e, tmp335
	movq	24(%rax), %rax	# e_5->dest, D.16245
	movl	-76(%rbp), %r9d	# dir, tmp336
	movq	-72(%rbp), %r8	# kill, tmp337
	movq	-64(%rbp), %rcx	# gen, tmp338
	movq	-56(%rbp), %rdx	# out, tmp339
	movq	-48(%rbp), %rsi	# in, tmp340
	movq	48(%rbp), %rdi	# data, tmp341
	movq	%rdi, 32(%rsp)	# tmp341,
	movq	40(%rbp), %rdi	# pending, tmp342
	movq	%rdi, 24(%rsp)	# tmp342,
	movq	32(%rbp), %rdi	# visited, tmp343
	movq	%rdi, 16(%rsp)	# tmp343,
	movq	24(%rbp), %rdi	# transfun, tmp344
	movq	%rdi, 8(%rsp)	# tmp344,
	movl	16(%rbp), %edi	# conf_op, tmp345
	movl	%edi, (%rsp)	# tmp345,
	movq	%rax, %rdi	# D.16245,
	call	hybrid_search_bitmap	#
.L845:
	.loc 1 3683 0
	movq	-16(%rbp), %rax	# e, tmp346
	movq	8(%rax), %rax	# e_5->succ_next, tmp347
	movq	%rax, -16(%rbp)	# tmp347, e
.L842:
	.loc 1 3683 0 is_stmt 0 discriminator 1
	cmpq	$0, -16(%rbp)	#, e
	jne	.L846	#,
	jmp	.L814	#
.L841:
	.loc 1 3695 0 is_stmt 1
	movq	-8(%rbp), %rax	# bb, tmp348
	movq	32(%rax), %rax	# bb_9->pred, tmp349
	movq	%rax, -16(%rbp)	# tmp349, e
	jmp	.L848	#
.L852:
	.loc 1 3697 0
	movq	-16(%rbp), %rax	# e, tmp350
	movq	16(%rax), %rax	# e_6->src, D.16245
	cmpq	$entry_exit_blocks, %rax	#, D.16245
	je	.L849	#,
	.loc 1 3697 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# e, tmp351
	movq	16(%rax), %rax	# e_6->src, D.16245
	movl	88(%rax), %eax	# _178->index, D.16240
	cmpl	-20(%rbp), %eax	# i, D.16240
	jne	.L850	#,
.L849:
	.loc 1 3698 0 is_stmt 1
	jmp	.L851	#
.L850:
	.loc 1 3699 0
	movq	-16(%rbp), %rax	# e, tmp352
	movq	16(%rax), %rax	# e_6->src, D.16245
	movl	88(%rax), %eax	# _180->index, D.16240
	shrl	$6, %eax	#, D.16241
	movl	%eax, %edx	# D.16241, D.16241
	movq	32(%rbp), %rax	# visited, tmp353
	movl	%edx, %edx	# D.16241, tmp354
	addq	$2, %rdx	#, tmp355
	movq	(%rax,%rdx,8), %rdx	# visited_13(D)->elms, D.16242
	movq	-16(%rbp), %rax	# e, tmp356
	movq	16(%rax), %rax	# e_6->src, D.16245
	movl	88(%rax), %eax	# _185->index, D.16240
	andl	$63, %eax	#, D.16240
	movl	%eax, %ecx	# D.16240, tmp388
	shrq	%cl, %rdx	# tmp388, D.16242
	movq	%rdx, %rax	# D.16242, D.16242
	andl	$1, %eax	#, D.16242
	testq	%rax, %rax	# D.16242
	jne	.L851	#,
	.loc 1 3700 0
	movq	-16(%rbp), %rax	# e, tmp357
	movq	16(%rax), %rax	# e_6->src, D.16245
	movl	-76(%rbp), %r9d	# dir, tmp358
	movq	-72(%rbp), %r8	# kill, tmp359
	movq	-64(%rbp), %rcx	# gen, tmp360
	movq	-56(%rbp), %rdx	# out, tmp361
	movq	-48(%rbp), %rsi	# in, tmp362
	movq	48(%rbp), %rdi	# data, tmp363
	movq	%rdi, 32(%rsp)	# tmp363,
	movq	40(%rbp), %rdi	# pending, tmp364
	movq	%rdi, 24(%rsp)	# tmp364,
	movq	32(%rbp), %rdi	# visited, tmp365
	movq	%rdi, 16(%rsp)	# tmp365,
	movq	24(%rbp), %rdi	# transfun, tmp366
	movq	%rdi, 8(%rsp)	# tmp366,
	movl	16(%rbp), %edi	# conf_op, tmp367
	movl	%edi, (%rsp)	# tmp367,
	movq	%rax, %rdi	# D.16245,
	call	hybrid_search_bitmap	#
.L851:
	.loc 1 3695 0
	movq	-16(%rbp), %rax	# e, tmp368
	movq	(%rax), %rax	# e_6->pred_next, tmp369
	movq	%rax, -16(%rbp)	# tmp369, e
.L848:
	.loc 1 3695 0 is_stmt 0 discriminator 1
	cmpq	$0, -16(%rbp)	#, e
	jne	.L852	#,
.L814:
	.loc 1 3705 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE100:
	.size	hybrid_search_bitmap, .-hybrid_search_bitmap
	.type	hybrid_search_sbitmap, @function
hybrid_search_sbitmap:
.LFB101:
	.loc 1 3721 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	addq	$-128, %rsp	#,
	movq	%rdi, -40(%rbp)	# block, block
	movq	%rsi, -48(%rbp)	# in, in
	movq	%rdx, -56(%rbp)	# out, out
	movq	%rcx, -64(%rbp)	# gen, gen
	movq	%r8, -72(%rbp)	# kill, kill
	movl	%r9d, -76(%rbp)	# dir, dir
	.loc 1 3723 0
	movq	-40(%rbp), %rax	# block, tmp219
	movl	88(%rax), %eax	# block_7(D)->index, tmp220
	movl	%eax, -20(%rbp)	# tmp220, i
	.loc 1 3725 0
	movq	-40(%rbp), %rax	# block, tmp221
	movq	%rax, -8(%rbp)	# tmp221, bb
	.loc 1 3726 0
	movq	-40(%rbp), %rax	# block, tmp222
	movl	88(%rax), %eax	# block_7(D)->index, D.16246
	shrl	$6, %eax	#, D.16247
	movq	32(%rbp), %rdx	# visited, tmp223
	movl	%eax, %ecx	# D.16247, tmp224
	addq	$2, %rcx	#, tmp225
	movq	(%rdx,%rcx,8), %rsi	# visited_13(D)->elms, D.16248
	movq	-40(%rbp), %rdx	# block, tmp226
	movl	88(%rdx), %edx	# block_7(D)->index, D.16246
	andl	$63, %edx	#, D.16246
	movl	$1, %edi	#, tmp227
	movl	%edx, %ecx	# D.16246, tmp371
	salq	%cl, %rdi	# tmp371, D.16248
	movq	%rdi, %rdx	# D.16248, D.16248
	orq	%rdx, %rsi	# D.16248, D.16248
	movq	%rsi, %rcx	# D.16248, D.16248
	movq	32(%rbp), %rdx	# visited, tmp228
	movl	%eax, %eax	# D.16247, tmp229
	addq	$2, %rax	#, tmp230
	movq	%rcx, (%rdx,%rax,8)	# D.16248, visited_13(D)->elms
	.loc 1 3727 0
	movq	-40(%rbp), %rax	# block, tmp231
	movl	88(%rax), %eax	# block_7(D)->index, D.16246
	shrl	$6, %eax	#, D.16247
	movl	%eax, %edx	# D.16247, D.16247
	movq	40(%rbp), %rax	# pending, tmp232
	movl	%edx, %edx	# D.16247, tmp233
	addq	$2, %rdx	#, tmp234
	movq	(%rax,%rdx,8), %rdx	# pending_22(D)->elms, D.16248
	movq	-40(%rbp), %rax	# block, tmp235
	movl	88(%rax), %eax	# block_7(D)->index, D.16246
	andl	$63, %eax	#, D.16246
	movl	%eax, %ecx	# D.16246, tmp375
	shrq	%cl, %rdx	# tmp375, D.16248
	movq	%rdx, %rax	# D.16248, D.16248
	andl	$1, %eax	#, D.16248
	testq	%rax, %rax	# D.16248
	je	.L854	#,
	.loc 1 3729 0
	cmpl	$0, -76(%rbp)	#, dir
	jne	.L855	#,
	.loc 1 3732 0
	movl	-20(%rbp), %eax	# i, tmp236
	cltq
	leaq	0(,%rax,8), %rdx	#, D.16248
	movq	-48(%rbp), %rax	# in, tmp237
	addq	%rdx, %rax	# D.16248, D.16249
	movq	(%rax), %rax	# *_32, D.16250
	movq	%rax, %rdi	# D.16250,
	call	sbitmap_zero	#
	.loc 1 3733 0
	movq	-8(%rbp), %rax	# bb, tmp238
	movq	32(%rax), %rax	# bb_9->pred, tmp239
	movq	%rax, -16(%rbp)	# tmp239, e
	jmp	.L856	#
.L861:
	.loc 1 3735 0
	movq	-16(%rbp), %rax	# e, tmp240
	movq	16(%rax), %rax	# e_1->src, D.16251
	cmpq	$entry_exit_blocks, %rax	#, D.16251
	jne	.L857	#,
	.loc 1 3736 0
	jmp	.L858	#
.L857:
	.loc 1 3737 0
	movl	16(%rbp), %eax	# conf_op, conf_op
	testl	%eax, %eax	# conf_op
	je	.L859	#,
	cmpl	$1, %eax	#, conf_op
	je	.L860	#,
	jmp	.L858	#
.L859:
	.loc 1 3740 0
	movq	-16(%rbp), %rax	# e, tmp242
	movq	16(%rax), %rax	# e_1->src, D.16251
	movl	88(%rax), %eax	# _37->index, D.16246
	cltq
	leaq	0(,%rax,8), %rdx	#, D.16248
	movq	-56(%rbp), %rax	# out, tmp243
	addq	%rdx, %rax	# D.16248, D.16249
	movq	(%rax), %rdx	# *_42, D.16250
	movl	-20(%rbp), %eax	# i, tmp244
	cltq
	leaq	0(,%rax,8), %rcx	#, D.16248
	movq	-48(%rbp), %rax	# in, tmp245
	addq	%rcx, %rax	# D.16248, D.16249
	movq	(%rax), %rcx	# *_46, D.16250
	movl	-20(%rbp), %eax	# i, tmp246
	cltq
	leaq	0(,%rax,8), %rsi	#, D.16248
	movq	-48(%rbp), %rax	# in, tmp247
	addq	%rsi, %rax	# D.16248, D.16249
	movq	(%rax), %rax	# *_50, D.16250
	movq	%rcx, %rsi	# D.16250,
	movq	%rax, %rdi	# D.16250,
	call	sbitmap_a_or_b	#
	.loc 1 3741 0
	jmp	.L858	#
.L860:
	.loc 1 3743 0
	movq	-16(%rbp), %rax	# e, tmp248
	movq	16(%rax), %rax	# e_1->src, D.16251
	movl	88(%rax), %eax	# _52->index, D.16246
	cltq
	leaq	0(,%rax,8), %rdx	#, D.16248
	movq	-56(%rbp), %rax	# out, tmp249
	addq	%rdx, %rax	# D.16248, D.16249
	movq	(%rax), %rdx	# *_56, D.16250
	movl	-20(%rbp), %eax	# i, tmp250
	cltq
	leaq	0(,%rax,8), %rcx	#, D.16248
	movq	-48(%rbp), %rax	# in, tmp251
	addq	%rcx, %rax	# D.16248, D.16249
	movq	(%rax), %rcx	# *_60, D.16250
	movl	-20(%rbp), %eax	# i, tmp252
	cltq
	leaq	0(,%rax,8), %rsi	#, D.16248
	movq	-48(%rbp), %rax	# in, tmp253
	addq	%rsi, %rax	# D.16248, D.16249
	movq	(%rax), %rax	# *_64, D.16250
	movq	%rcx, %rsi	# D.16250,
	movq	%rax, %rdi	# D.16250,
	call	sbitmap_a_and_b	#
	.loc 1 3744 0
	nop
.L858:
	.loc 1 3733 0
	movq	-16(%rbp), %rax	# e, tmp254
	movq	(%rax), %rax	# e_1->pred_next, tmp255
	movq	%rax, -16(%rbp)	# tmp255, e
.L856:
	.loc 1 3733 0 is_stmt 0 discriminator 1
	cmpq	$0, -16(%rbp)	#, e
	jne	.L861	#,
	jmp	.L862	#
.L855:
	.loc 1 3751 0 is_stmt 1
	movl	-20(%rbp), %eax	# i, tmp256
	cltq
	leaq	0(,%rax,8), %rdx	#, D.16248
	movq	-56(%rbp), %rax	# out, tmp257
	addq	%rdx, %rax	# D.16248, D.16249
	movq	(%rax), %rax	# *_69, D.16250
	movq	%rax, %rdi	# D.16250,
	call	sbitmap_zero	#
	.loc 1 3752 0
	movq	-8(%rbp), %rax	# bb, tmp258
	movq	40(%rax), %rax	# bb_9->succ, tmp259
	movq	%rax, -16(%rbp)	# tmp259, e
	jmp	.L863	#
.L868:
	.loc 1 3754 0
	movq	-16(%rbp), %rax	# e, tmp260
	movq	24(%rax), %rax	# e_2->dest, D.16251
	cmpq	$entry_exit_blocks+112, %rax	#, D.16251
	jne	.L864	#,
	.loc 1 3755 0
	jmp	.L865	#
.L864:
	.loc 1 3756 0
	movl	16(%rbp), %eax	# conf_op, conf_op
	testl	%eax, %eax	# conf_op
	je	.L866	#,
	cmpl	$1, %eax	#, conf_op
	je	.L867	#,
	jmp	.L865	#
.L866:
	.loc 1 3759 0
	movq	-16(%rbp), %rax	# e, tmp262
	movq	24(%rax), %rax	# e_2->dest, D.16251
	movl	88(%rax), %eax	# _73->index, D.16246
	cltq
	leaq	0(,%rax,8), %rdx	#, D.16248
	movq	-48(%rbp), %rax	# in, tmp263
	addq	%rdx, %rax	# D.16248, D.16249
	movq	(%rax), %rdx	# *_77, D.16250
	movl	-20(%rbp), %eax	# i, tmp264
	cltq
	leaq	0(,%rax,8), %rcx	#, D.16248
	movq	-56(%rbp), %rax	# out, tmp265
	addq	%rcx, %rax	# D.16248, D.16249
	movq	(%rax), %rcx	# *_81, D.16250
	movl	-20(%rbp), %eax	# i, tmp266
	cltq
	leaq	0(,%rax,8), %rsi	#, D.16248
	movq	-56(%rbp), %rax	# out, tmp267
	addq	%rsi, %rax	# D.16248, D.16249
	movq	(%rax), %rax	# *_85, D.16250
	movq	%rcx, %rsi	# D.16250,
	movq	%rax, %rdi	# D.16250,
	call	sbitmap_a_or_b	#
	.loc 1 3760 0
	jmp	.L865	#
.L867:
	.loc 1 3762 0
	movq	-16(%rbp), %rax	# e, tmp268
	movq	24(%rax), %rax	# e_2->dest, D.16251
	movl	88(%rax), %eax	# _87->index, D.16246
	cltq
	leaq	0(,%rax,8), %rdx	#, D.16248
	movq	-48(%rbp), %rax	# in, tmp269
	addq	%rdx, %rax	# D.16248, D.16249
	movq	(%rax), %rdx	# *_91, D.16250
	movl	-20(%rbp), %eax	# i, tmp270
	cltq
	leaq	0(,%rax,8), %rcx	#, D.16248
	movq	-56(%rbp), %rax	# out, tmp271
	addq	%rcx, %rax	# D.16248, D.16249
	movq	(%rax), %rcx	# *_95, D.16250
	movl	-20(%rbp), %eax	# i, tmp272
	cltq
	leaq	0(,%rax,8), %rsi	#, D.16248
	movq	-56(%rbp), %rax	# out, tmp273
	addq	%rsi, %rax	# D.16248, D.16249
	movq	(%rax), %rax	# *_99, D.16250
	movq	%rcx, %rsi	# D.16250,
	movq	%rax, %rdi	# D.16250,
	call	sbitmap_a_and_b	#
	.loc 1 3763 0
	nop
.L865:
	.loc 1 3752 0
	movq	-16(%rbp), %rax	# e, tmp274
	movq	8(%rax), %rax	# e_2->succ_next, tmp275
	movq	%rax, -16(%rbp)	# tmp275, e
.L863:
	.loc 1 3752 0 is_stmt 0 discriminator 1
	cmpq	$0, -16(%rbp)	#, e
	jne	.L868	#,
.L862:
	.loc 1 3768 0 is_stmt 1
	movl	-20(%rbp), %eax	# i, tmp276
	cltq
	leaq	0(,%rax,8), %rdx	#, D.16248
	movq	-72(%rbp), %rax	# kill, tmp277
	addq	%rdx, %rax	# D.16248, D.16249
	movq	(%rax), %r9	# *_105, D.16250
	movl	-20(%rbp), %eax	# i, tmp278
	cltq
	leaq	0(,%rax,8), %rdx	#, D.16248
	movq	-64(%rbp), %rax	# gen, tmp279
	addq	%rdx, %rax	# D.16248, D.16249
	movq	(%rax), %r8	# *_110, D.16250
	movl	-20(%rbp), %eax	# i, tmp280
	cltq
	leaq	0(,%rax,8), %rdx	#, D.16248
	movq	-56(%rbp), %rax	# out, tmp281
	addq	%rdx, %rax	# D.16248, D.16249
	movq	(%rax), %rcx	# *_114, D.16250
	movl	-20(%rbp), %eax	# i, tmp282
	cltq
	leaq	0(,%rax,8), %rdx	#, D.16248
	movq	-48(%rbp), %rax	# in, tmp283
	addq	%rdx, %rax	# D.16248, D.16249
	movq	(%rax), %rdx	# *_118, D.16250
	leaq	-24(%rbp), %rsi	#, tmp284
	movl	-20(%rbp), %edi	# i, tmp285
	movq	48(%rbp), %rax	# data, tmp286
	movq	%rax, (%rsp)	# tmp286,
	movq	24(%rbp), %rax	# transfun, tmp287
	call	*%rax	# tmp287
	.loc 1 3769 0
	movl	-20(%rbp), %eax	# i, i.185
	shrl	$6, %eax	#, D.16247
	movq	40(%rbp), %rdx	# pending, tmp288
	movl	%eax, %ecx	# D.16247, tmp289
	addq	$2, %rcx	#, tmp290
	movq	(%rdx,%rcx,8), %rdx	# pending_22(D)->elms, D.16248
	movl	-20(%rbp), %ecx	# i, tmp291
	andl	$63, %ecx	#, D.16246
	movl	$1, %esi	#, tmp292
	salq	%cl, %rsi	# D.16246, D.16248
	movq	%rsi, %rcx	# D.16248, D.16248
	notq	%rcx	# D.16248
	andq	%rdx, %rcx	# D.16248, D.16248
	movq	40(%rbp), %rdx	# pending, tmp293
	movl	%eax, %eax	# D.16247, tmp294
	addq	$2, %rax	#, tmp295
	movq	%rcx, (%rdx,%rax,8)	# D.16248, pending_22(D)->elms
	.loc 1 3770 0
	movl	-24(%rbp), %eax	# changed, changed.186
	testl	%eax, %eax	# changed.186
	je	.L854	#,
	.loc 1 3772 0
	cmpl	$0, -76(%rbp)	#, dir
	jne	.L869	#,
	.loc 1 3774 0
	movq	-8(%rbp), %rax	# bb, tmp296
	movq	40(%rax), %rax	# bb_9->succ, tmp297
	movq	%rax, -16(%rbp)	# tmp297, e
	jmp	.L870	#
.L874:
	.loc 1 3776 0
	movq	-16(%rbp), %rax	# e, tmp298
	movq	24(%rax), %rax	# e_3->dest, D.16251
	cmpq	$entry_exit_blocks+112, %rax	#, D.16251
	je	.L871	#,
	.loc 1 3776 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# e, tmp299
	movq	24(%rax), %rax	# e_3->dest, D.16251
	movl	88(%rax), %eax	# _132->index, D.16246
	cmpl	-20(%rbp), %eax	# i, D.16246
	jne	.L872	#,
.L871:
	.loc 1 3777 0 is_stmt 1
	jmp	.L873	#
.L872:
	.loc 1 3778 0
	movq	-16(%rbp), %rax	# e, tmp300
	movq	24(%rax), %rax	# e_3->dest, D.16251
	movl	88(%rax), %eax	# _134->index, D.16246
	shrl	$6, %eax	#, D.16247
	movq	40(%rbp), %rdx	# pending, tmp301
	movl	%eax, %ecx	# D.16247, tmp302
	addq	$2, %rcx	#, tmp303
	movq	(%rdx,%rcx,8), %rsi	# pending_22(D)->elms, D.16248
	movq	-16(%rbp), %rdx	# e, tmp304
	movq	24(%rdx), %rdx	# e_3->dest, D.16251
	movl	88(%rdx), %edx	# _139->index, D.16246
	andl	$63, %edx	#, D.16246
	movl	$1, %edi	#, tmp305
	movl	%edx, %ecx	# D.16246, tmp378
	salq	%cl, %rdi	# tmp378, D.16248
	movq	%rdi, %rdx	# D.16248, D.16248
	orq	%rdx, %rsi	# D.16248, D.16248
	movq	%rsi, %rcx	# D.16248, D.16248
	movq	40(%rbp), %rdx	# pending, tmp306
	movl	%eax, %eax	# D.16247, tmp307
	addq	$2, %rax	#, tmp308
	movq	%rcx, (%rdx,%rax,8)	# D.16248, pending_22(D)->elms
.L873:
	.loc 1 3774 0
	movq	-16(%rbp), %rax	# e, tmp309
	movq	8(%rax), %rax	# e_3->succ_next, tmp310
	movq	%rax, -16(%rbp)	# tmp310, e
.L870:
	.loc 1 3774 0 is_stmt 0 discriminator 1
	cmpq	$0, -16(%rbp)	#, e
	jne	.L874	#,
	jmp	.L854	#
.L869:
	.loc 1 3783 0 is_stmt 1
	movq	-8(%rbp), %rax	# bb, tmp311
	movq	32(%rax), %rax	# bb_9->pred, tmp312
	movq	%rax, -16(%rbp)	# tmp312, e
	jmp	.L875	#
.L879:
	.loc 1 3785 0
	movq	-16(%rbp), %rax	# e, tmp313
	movq	16(%rax), %rax	# e_4->src, D.16251
	cmpq	$entry_exit_blocks, %rax	#, D.16251
	je	.L876	#,
	.loc 1 3785 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# e, tmp314
	movq	24(%rax), %rax	# e_4->dest, D.16251
	movl	88(%rax), %eax	# _147->index, D.16246
	cmpl	-20(%rbp), %eax	# i, D.16246
	jne	.L877	#,
.L876:
	.loc 1 3786 0 is_stmt 1
	jmp	.L878	#
.L877:
	.loc 1 3787 0
	movq	-16(%rbp), %rax	# e, tmp315
	movq	16(%rax), %rax	# e_4->src, D.16251
	movl	88(%rax), %eax	# _149->index, D.16246
	shrl	$6, %eax	#, D.16247
	movq	40(%rbp), %rdx	# pending, tmp316
	movl	%eax, %ecx	# D.16247, tmp317
	addq	$2, %rcx	#, tmp318
	movq	(%rdx,%rcx,8), %rsi	# pending_22(D)->elms, D.16248
	movq	-16(%rbp), %rdx	# e, tmp319
	movq	16(%rdx), %rdx	# e_4->src, D.16251
	movl	88(%rdx), %edx	# _154->index, D.16246
	andl	$63, %edx	#, D.16246
	movl	$1, %edi	#, tmp320
	movl	%edx, %ecx	# D.16246, tmp381
	salq	%cl, %rdi	# tmp381, D.16248
	movq	%rdi, %rdx	# D.16248, D.16248
	orq	%rdx, %rsi	# D.16248, D.16248
	movq	%rsi, %rcx	# D.16248, D.16248
	movq	40(%rbp), %rdx	# pending, tmp321
	movl	%eax, %eax	# D.16247, tmp322
	addq	$2, %rax	#, tmp323
	movq	%rcx, (%rdx,%rax,8)	# D.16248, pending_22(D)->elms
.L878:
	.loc 1 3783 0
	movq	-16(%rbp), %rax	# e, tmp324
	movq	(%rax), %rax	# e_4->pred_next, tmp325
	movq	%rax, -16(%rbp)	# tmp325, e
.L875:
	.loc 1 3783 0 is_stmt 0 discriminator 1
	cmpq	$0, -16(%rbp)	#, e
	jne	.L879	#,
.L854:
	.loc 1 3792 0 is_stmt 1
	cmpl	$0, -76(%rbp)	#, dir
	jne	.L880	#,
	.loc 1 3794 0
	movq	-8(%rbp), %rax	# bb, tmp326
	movq	40(%rax), %rax	# bb_9->succ, tmp327
	movq	%rax, -16(%rbp)	# tmp327, e
	jmp	.L881	#
.L885:
	.loc 1 3796 0
	movq	-16(%rbp), %rax	# e, tmp328
	movq	24(%rax), %rax	# e_5->dest, D.16251
	cmpq	$entry_exit_blocks+112, %rax	#, D.16251
	je	.L882	#,
	.loc 1 3796 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# e, tmp329
	movq	24(%rax), %rax	# e_5->dest, D.16251
	movl	88(%rax), %eax	# _162->index, D.16246
	cmpl	-20(%rbp), %eax	# i, D.16246
	jne	.L883	#,
.L882:
	.loc 1 3797 0 is_stmt 1
	jmp	.L884	#
.L883:
	.loc 1 3798 0
	movq	-16(%rbp), %rax	# e, tmp330
	movq	24(%rax), %rax	# e_5->dest, D.16251
	movl	88(%rax), %eax	# _164->index, D.16246
	shrl	$6, %eax	#, D.16247
	movl	%eax, %edx	# D.16247, D.16247
	movq	32(%rbp), %rax	# visited, tmp331
	movl	%edx, %edx	# D.16247, tmp332
	addq	$2, %rdx	#, tmp333
	movq	(%rax,%rdx,8), %rdx	# visited_13(D)->elms, D.16248
	movq	-16(%rbp), %rax	# e, tmp334
	movq	24(%rax), %rax	# e_5->dest, D.16251
	movl	88(%rax), %eax	# _169->index, D.16246
	andl	$63, %eax	#, D.16246
	movl	%eax, %ecx	# D.16246, tmp385
	shrq	%cl, %rdx	# tmp385, D.16248
	movq	%rdx, %rax	# D.16248, D.16248
	andl	$1, %eax	#, D.16248
	testq	%rax, %rax	# D.16248
	jne	.L884	#,
	.loc 1 3799 0
	movq	-16(%rbp), %rax	# e, tmp335
	movq	24(%rax), %rax	# e_5->dest, D.16251
	movl	-76(%rbp), %r9d	# dir, tmp336
	movq	-72(%rbp), %r8	# kill, tmp337
	movq	-64(%rbp), %rcx	# gen, tmp338
	movq	-56(%rbp), %rdx	# out, tmp339
	movq	-48(%rbp), %rsi	# in, tmp340
	movq	48(%rbp), %rdi	# data, tmp341
	movq	%rdi, 32(%rsp)	# tmp341,
	movq	40(%rbp), %rdi	# pending, tmp342
	movq	%rdi, 24(%rsp)	# tmp342,
	movq	32(%rbp), %rdi	# visited, tmp343
	movq	%rdi, 16(%rsp)	# tmp343,
	movq	24(%rbp), %rdi	# transfun, tmp344
	movq	%rdi, 8(%rsp)	# tmp344,
	movl	16(%rbp), %edi	# conf_op, tmp345
	movl	%edi, (%rsp)	# tmp345,
	movq	%rax, %rdi	# D.16251,
	call	hybrid_search_sbitmap	#
.L884:
	.loc 1 3794 0
	movq	-16(%rbp), %rax	# e, tmp346
	movq	8(%rax), %rax	# e_5->succ_next, tmp347
	movq	%rax, -16(%rbp)	# tmp347, e
.L881:
	.loc 1 3794 0 is_stmt 0 discriminator 1
	cmpq	$0, -16(%rbp)	#, e
	jne	.L885	#,
	jmp	.L853	#
.L880:
	.loc 1 3806 0 is_stmt 1
	movq	-8(%rbp), %rax	# bb, tmp348
	movq	32(%rax), %rax	# bb_9->pred, tmp349
	movq	%rax, -16(%rbp)	# tmp349, e
	jmp	.L887	#
.L891:
	.loc 1 3808 0
	movq	-16(%rbp), %rax	# e, tmp350
	movq	16(%rax), %rax	# e_6->src, D.16251
	cmpq	$entry_exit_blocks, %rax	#, D.16251
	je	.L888	#,
	.loc 1 3808 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# e, tmp351
	movq	16(%rax), %rax	# e_6->src, D.16251
	movl	88(%rax), %eax	# _178->index, D.16246
	cmpl	-20(%rbp), %eax	# i, D.16246
	jne	.L889	#,
.L888:
	.loc 1 3809 0 is_stmt 1
	jmp	.L890	#
.L889:
	.loc 1 3810 0
	movq	-16(%rbp), %rax	# e, tmp352
	movq	16(%rax), %rax	# e_6->src, D.16251
	movl	88(%rax), %eax	# _180->index, D.16246
	shrl	$6, %eax	#, D.16247
	movl	%eax, %edx	# D.16247, D.16247
	movq	32(%rbp), %rax	# visited, tmp353
	movl	%edx, %edx	# D.16247, tmp354
	addq	$2, %rdx	#, tmp355
	movq	(%rax,%rdx,8), %rdx	# visited_13(D)->elms, D.16248
	movq	-16(%rbp), %rax	# e, tmp356
	movq	16(%rax), %rax	# e_6->src, D.16251
	movl	88(%rax), %eax	# _185->index, D.16246
	andl	$63, %eax	#, D.16246
	movl	%eax, %ecx	# D.16246, tmp388
	shrq	%cl, %rdx	# tmp388, D.16248
	movq	%rdx, %rax	# D.16248, D.16248
	andl	$1, %eax	#, D.16248
	testq	%rax, %rax	# D.16248
	jne	.L890	#,
	.loc 1 3811 0
	movq	-16(%rbp), %rax	# e, tmp357
	movq	16(%rax), %rax	# e_6->src, D.16251
	movl	-76(%rbp), %r9d	# dir, tmp358
	movq	-72(%rbp), %r8	# kill, tmp359
	movq	-64(%rbp), %rcx	# gen, tmp360
	movq	-56(%rbp), %rdx	# out, tmp361
	movq	-48(%rbp), %rsi	# in, tmp362
	movq	48(%rbp), %rdi	# data, tmp363
	movq	%rdi, 32(%rsp)	# tmp363,
	movq	40(%rbp), %rdi	# pending, tmp364
	movq	%rdi, 24(%rsp)	# tmp364,
	movq	32(%rbp), %rdi	# visited, tmp365
	movq	%rdi, 16(%rsp)	# tmp365,
	movq	24(%rbp), %rdi	# transfun, tmp366
	movq	%rdi, 8(%rsp)	# tmp366,
	movl	16(%rbp), %edi	# conf_op, tmp367
	movl	%edi, (%rsp)	# tmp367,
	movq	%rax, %rdi	# D.16251,
	call	hybrid_search_sbitmap	#
.L890:
	.loc 1 3806 0
	movq	-16(%rbp), %rax	# e, tmp368
	movq	(%rax), %rax	# e_6->pred_next, tmp369
	movq	%rax, -16(%rbp)	# tmp369, e
.L887:
	.loc 1 3806 0 is_stmt 0 discriminator 1
	cmpq	$0, -16(%rbp)	#, e
	jne	.L891	#,
.L853:
	.loc 1 3816 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE101:
	.size	hybrid_search_sbitmap, .-hybrid_search_sbitmap
	.globl	iterative_dataflow_sbitmap
	.type	iterative_dataflow_sbitmap, @function
iterative_dataflow_sbitmap:
.LFB102:
	.loc 1 3851 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$208, %rsp	#,
	movq	%rdi, -120(%rbp)	# in, in
	movq	%rsi, -128(%rbp)	# out, out
	movq	%rdx, -136(%rbp)	# gen, gen
	movq	%rcx, -144(%rbp)	# kill, kill
	movq	%r8, -152(%rbp)	# blocks, blocks
	movl	%r9d, -156(%rbp)	# dir, dir
	.loc 1 3856 0
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.187
	movl	%eax, %edi	# n_basic_blocks.188,
	call	sbitmap_alloc	#
	movq	%rax, -48(%rbp)	# tmp133, pending
	.loc 1 3857 0
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.189
	movl	%eax, %edi	# n_basic_blocks.190,
	call	sbitmap_alloc	#
	movq	%rax, -40(%rbp)	# tmp134, visited
	.loc 1 3858 0
	movq	-48(%rbp), %rax	# pending, tmp135
	movq	%rax, %rdi	# tmp135,
	call	sbitmap_zero	#
	.loc 1 3859 0
	movq	-40(%rbp), %rax	# visited, tmp136
	movq	%rax, %rdi	# tmp136,
	call	sbitmap_zero	#
	.loc 1 3860 0
	call	fibheap_new	#
	movq	%rax, -32(%rbp)	# tmp137, worklist
.LBB118:
	.loc 1 3861 0
	movq	-152(%rbp), %rax	# blocks, tmp138
	movq	(%rax), %rax	# blocks_30(D)->first, tmp139
	movq	%rax, -80(%rbp)	# tmp139, ptr_
	movl	$0, -92(%rbp)	#, indx_
	movl	$0, -108(%rbp)	#, bit_num_
	movl	$0, -104(%rbp)	#, word_num_
	jmp	.L893	#
.L895:
	.loc 1 3861 0 is_stmt 0 discriminator 1
	movq	-80(%rbp), %rax	# ptr_, tmp140
	movq	(%rax), %rax	# ptr__1->next, tmp141
	movq	%rax, -80(%rbp)	# tmp141, ptr_
.L893:
	cmpq	$0, -80(%rbp)	#, ptr_
	je	.L894	#,
	.loc 1 3861 0 discriminator 2
	movq	-80(%rbp), %rax	# ptr_, tmp142
	movl	16(%rax), %eax	# ptr__1->indx, D.16252
	cmpl	-92(%rbp), %eax	# indx_, D.16252
	jb	.L895	#,
.L894:
	.loc 1 3861 0 discriminator 3
	cmpq	$0, -80(%rbp)	#, ptr_
	je	.L896	#,
	.loc 1 3861 0 discriminator 1
	movq	-80(%rbp), %rax	# ptr_, tmp143
	movl	16(%rax), %eax	# ptr__1->indx, D.16252
	cmpl	-92(%rbp), %eax	# indx_, D.16252
	je	.L896	#,
	movl	$0, -108(%rbp)	#, bit_num_
	movl	$0, -104(%rbp)	#, word_num_
	jmp	.L897	#
.L896:
	.loc 1 3861 0 discriminator 2
	jmp	.L897	#
.L906:
	.loc 1 3861 0
	jmp	.L898	#
.L905:
.LBB119:
	.loc 1 3861 0 discriminator 2
	movq	-80(%rbp), %rax	# ptr_, tmp144
	movl	-104(%rbp), %edx	# word_num_, tmp145
	addq	$2, %rdx	#, tmp146
	movq	8(%rax,%rdx,8), %rax	# ptr__2->bits, tmp147
	movq	%rax, -72(%rbp)	# tmp147, word_
	cmpq	$0, -72(%rbp)	#, word_
	je	.L899	#,
	.loc 1 3861 0 discriminator 1
	jmp	.L900	#
.L904:
.LBB120:
	.loc 1 3861 0 discriminator 2
	movl	-108(%rbp), %eax	# bit_num_, bit_num_.191
	movl	$1, %edx	#, tmp148
	movl	%eax, %ecx	# bit_num_.191, tmp231
	salq	%cl, %rdx	# tmp231, tmp149
	movq	%rdx, %rax	# tmp149, tmp149
	movq	%rax, -24(%rbp)	# tmp149, mask_
	movq	-24(%rbp), %rax	# mask_, tmp150
	movq	-72(%rbp), %rdx	# word_, tmp151
	andq	%rdx, %rax	# tmp151, D.16253
	testq	%rax, %rax	# D.16253
	je	.L901	#,
	.loc 1 3861 0 discriminator 1
	movq	-24(%rbp), %rax	# mask_, tmp152
	notq	%rax	# D.16253
	andq	%rax, -72(%rbp)	# D.16253, word_
	movq	-80(%rbp), %rax	# ptr_, tmp153
	movl	16(%rax), %eax	# ptr__2->indx, D.16252
	leal	(%rax,%rax), %edx	#, D.16252
	movl	-104(%rbp), %eax	# word_num_, tmp154
	addl	%edx, %eax	# D.16252, D.16252
	sall	$6, %eax	#, D.16252
	movl	%eax, %edx	# D.16252, D.16252
	movl	-108(%rbp), %eax	# bit_num_, tmp155
	addl	%edx, %eax	# D.16252, D.16252
	movl	%eax, -88(%rbp)	# D.16252, i
	movl	-88(%rbp), %eax	# i, tmp156
	cltq
	movq	%rax, %rdx	# D.16253, D.16254
	movl	-88(%rbp), %eax	# i, tmp157
	cltq
	leaq	0(,%rax,4), %rcx	#, D.16253
	movq	32(%rbp), %rax	# order, tmp158
	addq	%rcx, %rax	# D.16253, D.16255
	movl	(%rax), %eax	# *_57, D.16256
	movslq	%eax, %rcx	# D.16256, D.16257
	movq	-32(%rbp), %rax	# worklist, tmp159
	movq	%rcx, %rsi	# D.16257,
	movq	%rax, %rdi	# tmp159,
	call	fibheap_insert	#
	movl	-88(%rbp), %eax	# i, i.192
	shrl	$6, %eax	#, D.16252
	movq	-48(%rbp), %rdx	# pending, tmp160
	movl	%eax, %ecx	# D.16252, tmp161
	addq	$2, %rcx	#, tmp162
	movq	(%rdx,%rcx,8), %rdx	# pending_25->elms, D.16253
	movl	-88(%rbp), %ecx	# i, tmp163
	andl	$63, %ecx	#, D.16256
	movl	$1, %esi	#, tmp164
	salq	%cl, %rsi	# D.16256, D.16253
	movq	%rsi, %rcx	# D.16253, D.16253
	orq	%rdx, %rcx	# D.16253, D.16253
	movq	-48(%rbp), %rdx	# pending, tmp165
	movl	%eax, %eax	# D.16252, tmp166
	addq	$2, %rax	#, tmp167
	movq	%rcx, (%rdx,%rax,8)	# D.16253, pending_25->elms
	cmpl	$0, -156(%rbp)	#, dir
	jne	.L902	#,
	movl	-88(%rbp), %eax	# i, tmp168
	cltq
	leaq	0(,%rax,8), %rdx	#, D.16253
	movq	-136(%rbp), %rax	# gen, tmp169
	addq	%rdx, %rax	# D.16253, D.16258
	movq	(%rax), %rdx	# *_70, D.16259
	movl	-88(%rbp), %eax	# i, tmp170
	cltq
	leaq	0(,%rax,8), %rcx	#, D.16253
	movq	-128(%rbp), %rax	# out, tmp171
	addq	%rcx, %rax	# D.16253, D.16258
	movq	(%rax), %rax	# *_75, D.16259
	movq	%rdx, %rsi	# D.16259,
	movq	%rax, %rdi	# D.16259,
	call	sbitmap_copy	#
	jmp	.L903	#
.L902:
	.loc 1 3861 0 discriminator 2
	movl	-88(%rbp), %eax	# i, tmp172
	cltq
	leaq	0(,%rax,8), %rdx	#, D.16253
	movq	-136(%rbp), %rax	# gen, tmp173
	addq	%rdx, %rax	# D.16253, D.16258
	movq	(%rax), %rdx	# *_79, D.16259
	movl	-88(%rbp), %eax	# i, tmp174
	cltq
	leaq	0(,%rax,8), %rcx	#, D.16253
	movq	-120(%rbp), %rax	# in, tmp175
	addq	%rcx, %rax	# D.16253, D.16258
	movq	(%rax), %rax	# *_84, D.16259
	movq	%rdx, %rsi	# D.16259,
	movq	%rax, %rdi	# D.16259,
	call	sbitmap_copy	#
.L903:
	.loc 1 3861 0 discriminator 1
	cmpq	$0, -72(%rbp)	#, word_
	jne	.L901	#,
	jmp	.L899	#
.L901:
.LBE120:
	.loc 1 3861 0 discriminator 2
	addl	$1, -108(%rbp)	#, bit_num_
.L900:
	.loc 1 3861 0 discriminator 1
	cmpl	$63, -108(%rbp)	#, bit_num_
	jbe	.L904	#,
.L899:
	.loc 1 3861 0 discriminator 2
	movl	$0, -108(%rbp)	#, bit_num_
.LBE119:
	addl	$1, -104(%rbp)	#, word_num_
.L898:
	.loc 1 3861 0 discriminator 1
	cmpl	$1, -104(%rbp)	#, word_num_
	jbe	.L905	#,
	.loc 1 3861 0 discriminator 3
	movl	$0, -104(%rbp)	#, word_num_
	movq	-80(%rbp), %rax	# ptr_, tmp176
	movq	(%rax), %rax	# ptr__2->next, tmp177
	movq	%rax, -80(%rbp)	# tmp177, ptr_
.L897:
	.loc 1 3861 0 discriminator 1
	cmpq	$0, -80(%rbp)	#, ptr_
	jne	.L906	#,
.LBE118:
	.loc 1 3870 0 is_stmt 1
	jmp	.L907	#
.L924:
	.loc 1 3872 0
	jmp	.L908	#
.L909:
	.loc 1 3874 0
	movq	-32(%rbp), %rax	# worklist, tmp178
	movq	%rax, %rdi	# tmp178,
	call	fibheap_extract_min	#
	movl	%eax, -88(%rbp)	# D.16257, i
	.loc 1 3875 0
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.193
	movl	-88(%rbp), %edx	# i, tmp180
	movslq	%edx, %rdx	# tmp180, tmp179
	addq	$4, %rdx	#, tmp181
	movq	(%rax,%rdx,8), %rax	# basic_block_info.193_96->data.bb, tmp182
	movq	%rax, -16(%rbp)	# tmp182, bb
	.loc 1 3876 0
	movq	-16(%rbp), %rax	# bb, tmp183
	movl	88(%rax), %eax	# bb_97->index, D.16256
	shrl	$6, %eax	#, D.16252
	movl	%eax, %edx	# D.16252, D.16252
	movq	-40(%rbp), %rax	# visited, tmp184
	movl	%edx, %edx	# D.16252, tmp185
	addq	$2, %rdx	#, tmp186
	movq	(%rax,%rdx,8), %rdx	# visited_28->elms, D.16253
	movq	-16(%rbp), %rax	# bb, tmp187
	movl	88(%rax), %eax	# bb_97->index, D.16256
	andl	$63, %eax	#, D.16256
	movl	%eax, %ecx	# D.16256, tmp236
	shrq	%cl, %rdx	# tmp236, D.16253
	movq	%rdx, %rax	# D.16253, D.16253
	andl	$1, %eax	#, D.16253
	testq	%rax, %rax	# D.16253
	jne	.L908	#,
	.loc 1 3877 0
	movl	-156(%rbp), %r9d	# dir, tmp188
	movq	-144(%rbp), %r8	# kill, tmp189
	movq	-136(%rbp), %rcx	# gen, tmp190
	movq	-128(%rbp), %rdx	# out, tmp191
	movq	-120(%rbp), %rsi	# in, tmp192
	movq	-16(%rbp), %rax	# bb, tmp193
	movq	40(%rbp), %rdi	# data, tmp194
	movq	%rdi, 32(%rsp)	# tmp194,
	movq	-48(%rbp), %rdi	# pending, tmp195
	movq	%rdi, 24(%rsp)	# tmp195,
	movq	-40(%rbp), %rdi	# visited, tmp196
	movq	%rdi, 16(%rsp)	# tmp196,
	movq	24(%rbp), %rdi	# transfun, tmp197
	movq	%rdi, 8(%rsp)	# tmp197,
	movl	16(%rbp), %edi	# conf_op, tmp198
	movl	%edi, (%rsp)	# tmp198,
	movq	%rax, %rdi	# tmp193,
	call	hybrid_search_sbitmap	#
.L908:
	.loc 1 3872 0 discriminator 1
	movq	-32(%rbp), %rax	# worklist, tmp199
	movq	%rax, %rdi	# tmp199,
	call	fibheap_empty	#
	testl	%eax, %eax	# D.16256
	je	.L909	#,
	.loc 1 3880 0
	movq	-48(%rbp), %rax	# pending, tmp200
	movq	%rax, %rdi	# tmp200,
	call	sbitmap_first_set_bit	#
	cmpl	$-1, %eax	#, D.16256
	je	.L910	#,
.LBB121:
	.loc 1 3882 0
	movq	-152(%rbp), %rax	# blocks, tmp201
	movq	(%rax), %rax	# blocks_30(D)->first, tmp202
	movq	%rax, -64(%rbp)	# tmp202, ptr_
	movl	$0, -84(%rbp)	#, indx_
	movl	$0, -100(%rbp)	#, bit_num_
	movl	$0, -96(%rbp)	#, word_num_
	jmp	.L911	#
.L913:
	.loc 1 3882 0 is_stmt 0 discriminator 1
	movq	-64(%rbp), %rax	# ptr_, tmp203
	movq	(%rax), %rax	# ptr__12->next, tmp204
	movq	%rax, -64(%rbp)	# tmp204, ptr_
.L911:
	cmpq	$0, -64(%rbp)	#, ptr_
	je	.L912	#,
	.loc 1 3882 0 discriminator 2
	movq	-64(%rbp), %rax	# ptr_, tmp205
	movl	16(%rax), %eax	# ptr__12->indx, D.16252
	cmpl	-84(%rbp), %eax	# indx_, D.16252
	jb	.L913	#,
.L912:
	.loc 1 3882 0 discriminator 3
	cmpq	$0, -64(%rbp)	#, ptr_
	je	.L914	#,
	.loc 1 3882 0 discriminator 1
	movq	-64(%rbp), %rax	# ptr_, tmp206
	movl	16(%rax), %eax	# ptr__12->indx, D.16252
	cmpl	-84(%rbp), %eax	# indx_, D.16252
	je	.L914	#,
	movl	$0, -100(%rbp)	#, bit_num_
	movl	$0, -96(%rbp)	#, word_num_
	jmp	.L915	#
.L914:
	.loc 1 3882 0 discriminator 2
	jmp	.L915	#
.L922:
	.loc 1 3882 0
	jmp	.L916	#
.L921:
.LBB122:
	.loc 1 3882 0 discriminator 2
	movq	-64(%rbp), %rax	# ptr_, tmp207
	movl	-96(%rbp), %edx	# word_num_, tmp208
	addq	$2, %rdx	#, tmp209
	movq	8(%rax,%rdx,8), %rax	# ptr__13->bits, tmp210
	movq	%rax, -56(%rbp)	# tmp210, word_
	cmpq	$0, -56(%rbp)	#, word_
	je	.L917	#,
	.loc 1 3882 0 discriminator 1
	jmp	.L918	#
.L920:
.LBB123:
	.loc 1 3882 0 discriminator 2
	movl	-100(%rbp), %eax	# bit_num_, bit_num_.194
	movl	$1, %edx	#, tmp211
	movl	%eax, %ecx	# bit_num_.194, tmp238
	salq	%cl, %rdx	# tmp238, tmp212
	movq	%rdx, %rax	# tmp212, tmp212
	movq	%rax, -8(%rbp)	# tmp212, mask_
	movq	-8(%rbp), %rax	# mask_, tmp213
	movq	-56(%rbp), %rdx	# word_, tmp214
	andq	%rdx, %rax	# tmp214, D.16253
	testq	%rax, %rax	# D.16253
	je	.L919	#,
	.loc 1 3882 0 discriminator 1
	movq	-8(%rbp), %rax	# mask_, tmp215
	notq	%rax	# D.16253
	andq	%rax, -56(%rbp)	# D.16253, word_
	movq	-64(%rbp), %rax	# ptr_, tmp216
	movl	16(%rax), %eax	# ptr__13->indx, D.16252
	leal	(%rax,%rax), %edx	#, D.16252
	movl	-96(%rbp), %eax	# word_num_, tmp217
	addl	%edx, %eax	# D.16252, D.16252
	sall	$6, %eax	#, D.16252
	movl	%eax, %edx	# D.16252, D.16252
	movl	-100(%rbp), %eax	# bit_num_, tmp218
	addl	%edx, %eax	# D.16252, D.16252
	movl	%eax, -88(%rbp)	# D.16252, i
	movl	-88(%rbp), %eax	# i, tmp219
	cltq
	movq	%rax, %rdx	# D.16253, D.16254
	movl	-88(%rbp), %eax	# i, tmp220
	cltq
	leaq	0(,%rax,4), %rcx	#, D.16253
	movq	32(%rbp), %rax	# order, tmp221
	addq	%rcx, %rax	# D.16253, D.16255
	movl	(%rax), %eax	# *_136, D.16256
	movslq	%eax, %rcx	# D.16256, D.16257
	movq	-32(%rbp), %rax	# worklist, tmp222
	movq	%rcx, %rsi	# D.16257,
	movq	%rax, %rdi	# tmp222,
	call	fibheap_insert	#
	cmpq	$0, -56(%rbp)	#, word_
	jne	.L919	#,
	jmp	.L917	#
.L919:
.LBE123:
	.loc 1 3882 0 discriminator 2
	addl	$1, -100(%rbp)	#, bit_num_
.L918:
	.loc 1 3882 0 discriminator 1
	cmpl	$63, -100(%rbp)	#, bit_num_
	jbe	.L920	#,
.L917:
	.loc 1 3882 0 discriminator 2
	movl	$0, -100(%rbp)	#, bit_num_
.LBE122:
	addl	$1, -96(%rbp)	#, word_num_
.L916:
	.loc 1 3882 0 discriminator 1
	cmpl	$1, -96(%rbp)	#, word_num_
	jbe	.L921	#,
	.loc 1 3882 0 discriminator 3
	movl	$0, -96(%rbp)	#, word_num_
	movq	-64(%rbp), %rax	# ptr_, tmp223
	movq	(%rax), %rax	# ptr__13->next, tmp224
	movq	%rax, -64(%rbp)	# tmp224, ptr_
.L915:
	.loc 1 3882 0 discriminator 1
	cmpq	$0, -64(%rbp)	#, ptr_
	jne	.L922	#,
.LBE121:
	.loc 1 3886 0 is_stmt 1
	movq	-40(%rbp), %rax	# visited, tmp225
	movq	%rax, %rdi	# tmp225,
	call	sbitmap_zero	#
	jmp	.L907	#
.L910:
	.loc 1 3890 0
	jmp	.L923	#
.L907:
	.loc 1 3870 0 discriminator 1
	movq	-48(%rbp), %rax	# pending, tmp226
	movq	%rax, %rdi	# tmp226,
	call	sbitmap_first_set_bit	#
	cmpl	$-1, %eax	#, D.16256
	jne	.L924	#,
.L923:
	.loc 1 3893 0
	movq	-48(%rbp), %rax	# pending, tmp227
	movq	%rax, %rdi	# tmp227,
	call	free	#
	.loc 1 3894 0
	movq	-40(%rbp), %rax	# visited, tmp228
	movq	%rax, %rdi	# tmp228,
	call	free	#
	.loc 1 3895 0
	movq	-32(%rbp), %rax	# worklist, tmp229
	movq	%rax, %rdi	# tmp229,
	call	fibheap_delete	#
	.loc 1 3896 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE102:
	.size	iterative_dataflow_sbitmap, .-iterative_dataflow_sbitmap
	.globl	iterative_dataflow_bitmap
	.type	iterative_dataflow_bitmap, @function
iterative_dataflow_bitmap:
.LFB103:
	.loc 1 3910 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$208, %rsp	#,
	movq	%rdi, -120(%rbp)	# in, in
	movq	%rsi, -128(%rbp)	# out, out
	movq	%rdx, -136(%rbp)	# gen, gen
	movq	%rcx, -144(%rbp)	# kill, kill
	movq	%r8, -152(%rbp)	# blocks, blocks
	movl	%r9d, -156(%rbp)	# dir, dir
	.loc 1 3915 0
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.195
	movl	%eax, %edi	# n_basic_blocks.196,
	call	sbitmap_alloc	#
	movq	%rax, -48(%rbp)	# tmp133, pending
	.loc 1 3916 0
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.197
	movl	%eax, %edi	# n_basic_blocks.198,
	call	sbitmap_alloc	#
	movq	%rax, -40(%rbp)	# tmp134, visited
	.loc 1 3917 0
	movq	-48(%rbp), %rax	# pending, tmp135
	movq	%rax, %rdi	# tmp135,
	call	sbitmap_zero	#
	.loc 1 3918 0
	movq	-40(%rbp), %rax	# visited, tmp136
	movq	%rax, %rdi	# tmp136,
	call	sbitmap_zero	#
	.loc 1 3919 0
	call	fibheap_new	#
	movq	%rax, -32(%rbp)	# tmp137, worklist
.LBB124:
	.loc 1 3920 0
	movq	-152(%rbp), %rax	# blocks, tmp138
	movq	(%rax), %rax	# blocks_30(D)->first, tmp139
	movq	%rax, -80(%rbp)	# tmp139, ptr_
	movl	$0, -92(%rbp)	#, indx_
	movl	$0, -108(%rbp)	#, bit_num_
	movl	$0, -104(%rbp)	#, word_num_
	jmp	.L926	#
.L928:
	.loc 1 3920 0 is_stmt 0 discriminator 1
	movq	-80(%rbp), %rax	# ptr_, tmp140
	movq	(%rax), %rax	# ptr__1->next, tmp141
	movq	%rax, -80(%rbp)	# tmp141, ptr_
.L926:
	cmpq	$0, -80(%rbp)	#, ptr_
	je	.L927	#,
	.loc 1 3920 0 discriminator 2
	movq	-80(%rbp), %rax	# ptr_, tmp142
	movl	16(%rax), %eax	# ptr__1->indx, D.16260
	cmpl	-92(%rbp), %eax	# indx_, D.16260
	jb	.L928	#,
.L927:
	.loc 1 3920 0 discriminator 3
	cmpq	$0, -80(%rbp)	#, ptr_
	je	.L929	#,
	.loc 1 3920 0 discriminator 1
	movq	-80(%rbp), %rax	# ptr_, tmp143
	movl	16(%rax), %eax	# ptr__1->indx, D.16260
	cmpl	-92(%rbp), %eax	# indx_, D.16260
	je	.L929	#,
	movl	$0, -108(%rbp)	#, bit_num_
	movl	$0, -104(%rbp)	#, word_num_
	jmp	.L930	#
.L929:
	.loc 1 3920 0 discriminator 2
	jmp	.L930	#
.L939:
	.loc 1 3920 0
	jmp	.L931	#
.L938:
.LBB125:
	.loc 1 3920 0 discriminator 2
	movq	-80(%rbp), %rax	# ptr_, tmp144
	movl	-104(%rbp), %edx	# word_num_, tmp145
	addq	$2, %rdx	#, tmp146
	movq	8(%rax,%rdx,8), %rax	# ptr__2->bits, tmp147
	movq	%rax, -72(%rbp)	# tmp147, word_
	cmpq	$0, -72(%rbp)	#, word_
	je	.L932	#,
	.loc 1 3920 0 discriminator 1
	jmp	.L933	#
.L937:
.LBB126:
	.loc 1 3920 0 discriminator 2
	movl	-108(%rbp), %eax	# bit_num_, bit_num_.199
	movl	$1, %edx	#, tmp148
	movl	%eax, %ecx	# bit_num_.199, tmp231
	salq	%cl, %rdx	# tmp231, tmp149
	movq	%rdx, %rax	# tmp149, tmp149
	movq	%rax, -24(%rbp)	# tmp149, mask_
	movq	-24(%rbp), %rax	# mask_, tmp150
	movq	-72(%rbp), %rdx	# word_, tmp151
	andq	%rdx, %rax	# tmp151, D.16261
	testq	%rax, %rax	# D.16261
	je	.L934	#,
	.loc 1 3920 0 discriminator 1
	movq	-24(%rbp), %rax	# mask_, tmp152
	notq	%rax	# D.16261
	andq	%rax, -72(%rbp)	# D.16261, word_
	movq	-80(%rbp), %rax	# ptr_, tmp153
	movl	16(%rax), %eax	# ptr__2->indx, D.16260
	leal	(%rax,%rax), %edx	#, D.16260
	movl	-104(%rbp), %eax	# word_num_, tmp154
	addl	%edx, %eax	# D.16260, D.16260
	sall	$6, %eax	#, D.16260
	movl	%eax, %edx	# D.16260, D.16260
	movl	-108(%rbp), %eax	# bit_num_, tmp155
	addl	%edx, %eax	# D.16260, D.16260
	movl	%eax, -88(%rbp)	# D.16260, i
	movl	-88(%rbp), %eax	# i, tmp156
	cltq
	movq	%rax, %rdx	# D.16261, D.16262
	movl	-88(%rbp), %eax	# i, tmp157
	cltq
	leaq	0(,%rax,4), %rcx	#, D.16261
	movq	32(%rbp), %rax	# order, tmp158
	addq	%rcx, %rax	# D.16261, D.16263
	movl	(%rax), %eax	# *_57, D.16264
	movslq	%eax, %rcx	# D.16264, D.16265
	movq	-32(%rbp), %rax	# worklist, tmp159
	movq	%rcx, %rsi	# D.16265,
	movq	%rax, %rdi	# tmp159,
	call	fibheap_insert	#
	movl	-88(%rbp), %eax	# i, i.200
	shrl	$6, %eax	#, D.16260
	movq	-48(%rbp), %rdx	# pending, tmp160
	movl	%eax, %ecx	# D.16260, tmp161
	addq	$2, %rcx	#, tmp162
	movq	(%rdx,%rcx,8), %rdx	# pending_25->elms, D.16261
	movl	-88(%rbp), %ecx	# i, tmp163
	andl	$63, %ecx	#, D.16264
	movl	$1, %esi	#, tmp164
	salq	%cl, %rsi	# D.16264, D.16261
	movq	%rsi, %rcx	# D.16261, D.16261
	orq	%rdx, %rcx	# D.16261, D.16261
	movq	-48(%rbp), %rdx	# pending, tmp165
	movl	%eax, %eax	# D.16260, tmp166
	addq	$2, %rax	#, tmp167
	movq	%rcx, (%rdx,%rax,8)	# D.16261, pending_25->elms
	cmpl	$0, -156(%rbp)	#, dir
	jne	.L935	#,
	movl	-88(%rbp), %eax	# i, tmp168
	cltq
	leaq	0(,%rax,8), %rdx	#, D.16261
	movq	-136(%rbp), %rax	# gen, tmp169
	addq	%rdx, %rax	# D.16261, D.16266
	movq	(%rax), %rdx	# *_70, D.16267
	movl	-88(%rbp), %eax	# i, tmp170
	cltq
	leaq	0(,%rax,8), %rcx	#, D.16261
	movq	-128(%rbp), %rax	# out, tmp171
	addq	%rcx, %rax	# D.16261, D.16266
	movq	(%rax), %rax	# *_75, D.16267
	movq	%rdx, %rsi	# D.16267,
	movq	%rax, %rdi	# D.16267,
	call	bitmap_copy	#
	jmp	.L936	#
.L935:
	.loc 1 3920 0 discriminator 2
	movl	-88(%rbp), %eax	# i, tmp172
	cltq
	leaq	0(,%rax,8), %rdx	#, D.16261
	movq	-136(%rbp), %rax	# gen, tmp173
	addq	%rdx, %rax	# D.16261, D.16266
	movq	(%rax), %rdx	# *_79, D.16267
	movl	-88(%rbp), %eax	# i, tmp174
	cltq
	leaq	0(,%rax,8), %rcx	#, D.16261
	movq	-120(%rbp), %rax	# in, tmp175
	addq	%rcx, %rax	# D.16261, D.16266
	movq	(%rax), %rax	# *_84, D.16267
	movq	%rdx, %rsi	# D.16267,
	movq	%rax, %rdi	# D.16267,
	call	bitmap_copy	#
.L936:
	.loc 1 3920 0 discriminator 1
	cmpq	$0, -72(%rbp)	#, word_
	jne	.L934	#,
	jmp	.L932	#
.L934:
.LBE126:
	.loc 1 3920 0 discriminator 2
	addl	$1, -108(%rbp)	#, bit_num_
.L933:
	.loc 1 3920 0 discriminator 1
	cmpl	$63, -108(%rbp)	#, bit_num_
	jbe	.L937	#,
.L932:
	.loc 1 3920 0 discriminator 2
	movl	$0, -108(%rbp)	#, bit_num_
.LBE125:
	addl	$1, -104(%rbp)	#, word_num_
.L931:
	.loc 1 3920 0 discriminator 1
	cmpl	$1, -104(%rbp)	#, word_num_
	jbe	.L938	#,
	.loc 1 3920 0 discriminator 3
	movl	$0, -104(%rbp)	#, word_num_
	movq	-80(%rbp), %rax	# ptr_, tmp176
	movq	(%rax), %rax	# ptr__2->next, tmp177
	movq	%rax, -80(%rbp)	# tmp177, ptr_
.L930:
	.loc 1 3920 0 discriminator 1
	cmpq	$0, -80(%rbp)	#, ptr_
	jne	.L939	#,
.LBE124:
	.loc 1 3929 0 is_stmt 1
	jmp	.L940	#
.L957:
	.loc 1 3931 0
	jmp	.L941	#
.L942:
	.loc 1 3933 0
	movq	-32(%rbp), %rax	# worklist, tmp178
	movq	%rax, %rdi	# tmp178,
	call	fibheap_extract_min	#
	movl	%eax, -88(%rbp)	# D.16265, i
	.loc 1 3934 0
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.201
	movl	-88(%rbp), %edx	# i, tmp180
	movslq	%edx, %rdx	# tmp180, tmp179
	addq	$4, %rdx	#, tmp181
	movq	(%rax,%rdx,8), %rax	# basic_block_info.201_96->data.bb, tmp182
	movq	%rax, -16(%rbp)	# tmp182, bb
	.loc 1 3935 0
	movq	-16(%rbp), %rax	# bb, tmp183
	movl	88(%rax), %eax	# bb_97->index, D.16264
	shrl	$6, %eax	#, D.16260
	movl	%eax, %edx	# D.16260, D.16260
	movq	-40(%rbp), %rax	# visited, tmp184
	movl	%edx, %edx	# D.16260, tmp185
	addq	$2, %rdx	#, tmp186
	movq	(%rax,%rdx,8), %rdx	# visited_28->elms, D.16261
	movq	-16(%rbp), %rax	# bb, tmp187
	movl	88(%rax), %eax	# bb_97->index, D.16264
	andl	$63, %eax	#, D.16264
	movl	%eax, %ecx	# D.16264, tmp236
	shrq	%cl, %rdx	# tmp236, D.16261
	movq	%rdx, %rax	# D.16261, D.16261
	andl	$1, %eax	#, D.16261
	testq	%rax, %rax	# D.16261
	jne	.L941	#,
	.loc 1 3936 0
	movl	-156(%rbp), %r9d	# dir, tmp188
	movq	-144(%rbp), %r8	# kill, tmp189
	movq	-136(%rbp), %rcx	# gen, tmp190
	movq	-128(%rbp), %rdx	# out, tmp191
	movq	-120(%rbp), %rsi	# in, tmp192
	movq	-16(%rbp), %rax	# bb, tmp193
	movq	40(%rbp), %rdi	# data, tmp194
	movq	%rdi, 32(%rsp)	# tmp194,
	movq	-48(%rbp), %rdi	# pending, tmp195
	movq	%rdi, 24(%rsp)	# tmp195,
	movq	-40(%rbp), %rdi	# visited, tmp196
	movq	%rdi, 16(%rsp)	# tmp196,
	movq	24(%rbp), %rdi	# transfun, tmp197
	movq	%rdi, 8(%rsp)	# tmp197,
	movl	16(%rbp), %edi	# conf_op, tmp198
	movl	%edi, (%rsp)	# tmp198,
	movq	%rax, %rdi	# tmp193,
	call	hybrid_search_bitmap	#
.L941:
	.loc 1 3931 0 discriminator 1
	movq	-32(%rbp), %rax	# worklist, tmp199
	movq	%rax, %rdi	# tmp199,
	call	fibheap_empty	#
	testl	%eax, %eax	# D.16264
	je	.L942	#,
	.loc 1 3939 0
	movq	-48(%rbp), %rax	# pending, tmp200
	movq	%rax, %rdi	# tmp200,
	call	sbitmap_first_set_bit	#
	cmpl	$-1, %eax	#, D.16264
	je	.L943	#,
.LBB127:
	.loc 1 3941 0
	movq	-152(%rbp), %rax	# blocks, tmp201
	movq	(%rax), %rax	# blocks_30(D)->first, tmp202
	movq	%rax, -64(%rbp)	# tmp202, ptr_
	movl	$0, -84(%rbp)	#, indx_
	movl	$0, -100(%rbp)	#, bit_num_
	movl	$0, -96(%rbp)	#, word_num_
	jmp	.L944	#
.L946:
	.loc 1 3941 0 is_stmt 0 discriminator 1
	movq	-64(%rbp), %rax	# ptr_, tmp203
	movq	(%rax), %rax	# ptr__12->next, tmp204
	movq	%rax, -64(%rbp)	# tmp204, ptr_
.L944:
	cmpq	$0, -64(%rbp)	#, ptr_
	je	.L945	#,
	.loc 1 3941 0 discriminator 2
	movq	-64(%rbp), %rax	# ptr_, tmp205
	movl	16(%rax), %eax	# ptr__12->indx, D.16260
	cmpl	-84(%rbp), %eax	# indx_, D.16260
	jb	.L946	#,
.L945:
	.loc 1 3941 0 discriminator 3
	cmpq	$0, -64(%rbp)	#, ptr_
	je	.L947	#,
	.loc 1 3941 0 discriminator 1
	movq	-64(%rbp), %rax	# ptr_, tmp206
	movl	16(%rax), %eax	# ptr__12->indx, D.16260
	cmpl	-84(%rbp), %eax	# indx_, D.16260
	je	.L947	#,
	movl	$0, -100(%rbp)	#, bit_num_
	movl	$0, -96(%rbp)	#, word_num_
	jmp	.L948	#
.L947:
	.loc 1 3941 0 discriminator 2
	jmp	.L948	#
.L955:
	.loc 1 3941 0
	jmp	.L949	#
.L954:
.LBB128:
	.loc 1 3941 0 discriminator 2
	movq	-64(%rbp), %rax	# ptr_, tmp207
	movl	-96(%rbp), %edx	# word_num_, tmp208
	addq	$2, %rdx	#, tmp209
	movq	8(%rax,%rdx,8), %rax	# ptr__13->bits, tmp210
	movq	%rax, -56(%rbp)	# tmp210, word_
	cmpq	$0, -56(%rbp)	#, word_
	je	.L950	#,
	.loc 1 3941 0 discriminator 1
	jmp	.L951	#
.L953:
.LBB129:
	.loc 1 3941 0 discriminator 2
	movl	-100(%rbp), %eax	# bit_num_, bit_num_.202
	movl	$1, %edx	#, tmp211
	movl	%eax, %ecx	# bit_num_.202, tmp238
	salq	%cl, %rdx	# tmp238, tmp212
	movq	%rdx, %rax	# tmp212, tmp212
	movq	%rax, -8(%rbp)	# tmp212, mask_
	movq	-8(%rbp), %rax	# mask_, tmp213
	movq	-56(%rbp), %rdx	# word_, tmp214
	andq	%rdx, %rax	# tmp214, D.16261
	testq	%rax, %rax	# D.16261
	je	.L952	#,
	.loc 1 3941 0 discriminator 1
	movq	-8(%rbp), %rax	# mask_, tmp215
	notq	%rax	# D.16261
	andq	%rax, -56(%rbp)	# D.16261, word_
	movq	-64(%rbp), %rax	# ptr_, tmp216
	movl	16(%rax), %eax	# ptr__13->indx, D.16260
	leal	(%rax,%rax), %edx	#, D.16260
	movl	-96(%rbp), %eax	# word_num_, tmp217
	addl	%edx, %eax	# D.16260, D.16260
	sall	$6, %eax	#, D.16260
	movl	%eax, %edx	# D.16260, D.16260
	movl	-100(%rbp), %eax	# bit_num_, tmp218
	addl	%edx, %eax	# D.16260, D.16260
	movl	%eax, -88(%rbp)	# D.16260, i
	movl	-88(%rbp), %eax	# i, tmp219
	cltq
	movq	%rax, %rdx	# D.16261, D.16262
	movl	-88(%rbp), %eax	# i, tmp220
	cltq
	leaq	0(,%rax,4), %rcx	#, D.16261
	movq	32(%rbp), %rax	# order, tmp221
	addq	%rcx, %rax	# D.16261, D.16263
	movl	(%rax), %eax	# *_136, D.16264
	movslq	%eax, %rcx	# D.16264, D.16265
	movq	-32(%rbp), %rax	# worklist, tmp222
	movq	%rcx, %rsi	# D.16265,
	movq	%rax, %rdi	# tmp222,
	call	fibheap_insert	#
	cmpq	$0, -56(%rbp)	#, word_
	jne	.L952	#,
	jmp	.L950	#
.L952:
.LBE129:
	.loc 1 3941 0 discriminator 2
	addl	$1, -100(%rbp)	#, bit_num_
.L951:
	.loc 1 3941 0 discriminator 1
	cmpl	$63, -100(%rbp)	#, bit_num_
	jbe	.L953	#,
.L950:
	.loc 1 3941 0 discriminator 2
	movl	$0, -100(%rbp)	#, bit_num_
.LBE128:
	addl	$1, -96(%rbp)	#, word_num_
.L949:
	.loc 1 3941 0 discriminator 1
	cmpl	$1, -96(%rbp)	#, word_num_
	jbe	.L954	#,
	.loc 1 3941 0 discriminator 3
	movl	$0, -96(%rbp)	#, word_num_
	movq	-64(%rbp), %rax	# ptr_, tmp223
	movq	(%rax), %rax	# ptr__13->next, tmp224
	movq	%rax, -64(%rbp)	# tmp224, ptr_
.L948:
	.loc 1 3941 0 discriminator 1
	cmpq	$0, -64(%rbp)	#, ptr_
	jne	.L955	#,
.LBE127:
	.loc 1 3945 0 is_stmt 1
	movq	-40(%rbp), %rax	# visited, tmp225
	movq	%rax, %rdi	# tmp225,
	call	sbitmap_zero	#
	jmp	.L940	#
.L943:
	.loc 1 3949 0
	jmp	.L956	#
.L940:
	.loc 1 3929 0 discriminator 1
	movq	-48(%rbp), %rax	# pending, tmp226
	movq	%rax, %rdi	# tmp226,
	call	sbitmap_first_set_bit	#
	cmpl	$-1, %eax	#, D.16264
	jne	.L957	#,
.L956:
	.loc 1 3952 0
	movq	-48(%rbp), %rax	# pending, tmp227
	movq	%rax, %rdi	# tmp227,
	call	free	#
	.loc 1 3953 0
	movq	-40(%rbp), %rax	# visited, tmp228
	movq	%rax, %rdi	# tmp228,
	call	free	#
	.loc 1 3954 0
	movq	-32(%rbp), %rax	# worklist, tmp229
	movq	%rax, %rdi	# tmp229,
	call	fibheap_delete	#
	.loc 1 3955 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE103:
	.size	iterative_dataflow_bitmap, .-iterative_dataflow_bitmap
	.section	.rodata
	.type	__FUNCTION__.10827, @object
	.size	__FUNCTION__.10827, 14
__FUNCTION__.10827:
	.string	"df_ref_unlink"
	.type	__FUNCTION__.10889, @object
	.size	__FUNCTION__.10889, 14
__FUNCTION__.10889:
	.string	"df_ref_record"
	.type	__FUNCTION__.10957, @object
	.size	__FUNCTION__.10957, 15
__FUNCTION__.10957:
	.string	"df_uses_record"
	.type	__FUNCTION__.11605, @object
	.size	__FUNCTION__.11605, 11
__FUNCTION__.11605:
	.string	"df_analyse"
	.type	__FUNCTION__.11627, @object
	.size	__FUNCTION__.11627, 15
__FUNCTION__.11627:
	.string	"df_insn_delete"
	.align 16
	.type	__FUNCTION__.11676, @object
	.size	__FUNCTION__.11676, 20
__FUNCTION__.11676:
	.string	"df_refs_reg_replace"
	.align 16
	.type	__FUNCTION__.11693, @object
	.size	__FUNCTION__.11693, 19
__FUNCTION__.11693:
	.string	"df_ref_reg_replace"
	.align 16
	.type	__FUNCTION__.11714, @object
	.size	__FUNCTION__.11714, 16
__FUNCTION__.11714:
	.string	"df_insns_modify"
	.align 16
	.type	__FUNCTION__.11725, @object
	.size	__FUNCTION__.11725, 23
__FUNCTION__.11725:
	.string	"df_pattern_emit_before"
	.align 16
	.type	__FUNCTION__.11859, @object
	.size	__FUNCTION__.11859, 25
__FUNCTION__.11859:
	.string	"df_bb_regs_lives_compare"
	.align 16
	.type	__FUNCTION__.11913, @object
	.size	__FUNCTION__.11913, 31
__FUNCTION__.11913:
	.string	"df_bb_single_def_use_insn_find"
	.text
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
	.file 12 "function.h"
	.file 13 "obstack.h"
	.file 14 "varray.h"
	.file 15 "regs.h"
	.file 16 "hard-reg-set.h"
	.file 17 "sbitmap.h"
	.file 18 "df.h"
	.file 19 "fibheap.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x62a9
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF869
	.byte	0x1
	.long	.LASF870
	.long	.LASF871
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
	.long	.LASF872
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
	.long	.LASF873
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
	.long	.LASF543
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
	.long	.LASF534
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
	.long	0x1a6f
	.byte	0
	.uleb128 0x8
	.long	.LASF327
	.byte	0xa
	.byte	0x36
	.long	0x1a6f
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
	.long	0x1b8e
	.byte	0x20
	.uleb128 0x8
	.long	.LASF334
	.byte	0xb
	.byte	0xb7
	.long	0x1b8e
	.byte	0x28
	.uleb128 0x8
	.long	.LASF335
	.byte	0xb
	.byte	0xbc
	.long	0x1af9
	.byte	0x30
	.uleb128 0x8
	.long	.LASF336
	.byte	0xb
	.byte	0xc0
	.long	0x1af9
	.byte	0x38
	.uleb128 0x8
	.long	.LASF337
	.byte	0xb
	.byte	0xc6
	.long	0x1af9
	.byte	0x40
	.uleb128 0x8
	.long	.LASF338
	.byte	0xb
	.byte	0xc8
	.long	0x1af9
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
	.long	0x1b04
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
	.uleb128 0x4
	.long	.LASF413
	.byte	0x18
	.byte	0xc
	.byte	0x16
	.long	0xf6d
	.uleb128 0x8
	.long	.LASF414
	.byte	0xc
	.byte	0x18
	.long	0x2d
	.byte	0
	.uleb128 0x8
	.long	.LASF415
	.byte	0xc
	.byte	0x19
	.long	0x4ec
	.byte	0x8
	.uleb128 0x8
	.long	.LASF416
	.byte	0xc
	.byte	0x1a
	.long	0x139
	.byte	0xc
	.uleb128 0x8
	.long	.LASF417
	.byte	0xc
	.byte	0x1b
	.long	0xf6d
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0xf30
	.uleb128 0x4
	.long	.LASF418
	.byte	0x20
	.byte	0xc
	.byte	0x23
	.long	0xfb0
	.uleb128 0x8
	.long	.LASF326
	.byte	0xc
	.byte	0x26
	.long	0x2d
	.byte	0
	.uleb128 0x8
	.long	.LASF419
	.byte	0xc
	.byte	0x26
	.long	0x2d
	.byte	0x8
	.uleb128 0x8
	.long	.LASF420
	.byte	0xc
	.byte	0x27
	.long	0x123
	.byte	0x10
	.uleb128 0x8
	.long	.LASF417
	.byte	0xc
	.byte	0x28
	.long	0xfb0
	.byte	0x18
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0xf73
	.uleb128 0x4
	.long	.LASF421
	.byte	0x58
	.byte	0xd
	.byte	0xa8
	.long	0x1068
	.uleb128 0x8
	.long	.LASF422
	.byte	0xd
	.byte	0xaa
	.long	0x26f
	.byte	0
	.uleb128 0x8
	.long	.LASF423
	.byte	0xd
	.byte	0xab
	.long	0x19d0
	.byte	0x8
	.uleb128 0x8
	.long	.LASF424
	.byte	0xd
	.byte	0xac
	.long	0x2ba
	.byte	0x10
	.uleb128 0x8
	.long	.LASF425
	.byte	0xd
	.byte	0xad
	.long	0x2ba
	.byte	0x18
	.uleb128 0x8
	.long	.LASF426
	.byte	0xd
	.byte	0xae
	.long	0x2ba
	.byte	0x20
	.uleb128 0x8
	.long	.LASF427
	.byte	0xd
	.byte	0xaf
	.long	0x26f
	.byte	0x28
	.uleb128 0x8
	.long	.LASF428
	.byte	0xd
	.byte	0xb0
	.long	0x139
	.byte	0x30
	.uleb128 0x8
	.long	.LASF429
	.byte	0xd
	.byte	0xb5
	.long	0x19ea
	.byte	0x38
	.uleb128 0x8
	.long	.LASF430
	.byte	0xd
	.byte	0xb6
	.long	0x1a00
	.byte	0x40
	.uleb128 0x8
	.long	.LASF431
	.byte	0xd
	.byte	0xb7
	.long	0x26d
	.byte	0x48
	.uleb128 0x5
	.long	.LASF432
	.byte	0xd
	.byte	0xbd
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x50
	.uleb128 0x5
	.long	.LASF433
	.byte	0xd
	.byte	0xbe
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x50
	.uleb128 0x5
	.long	.LASF434
	.byte	0xd
	.byte	0xc2
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x50
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0xfb6
	.uleb128 0x4
	.long	.LASF435
	.byte	0x58
	.byte	0xc
	.byte	0x35
	.long	0x1117
	.uleb128 0x8
	.long	.LASF436
	.byte	0xc
	.byte	0x39
	.long	0x139
	.byte	0
	.uleb128 0x8
	.long	.LASF437
	.byte	0xc
	.byte	0x3c
	.long	0x139
	.byte	0x4
	.uleb128 0x8
	.long	.LASF438
	.byte	0xc
	.byte	0x43
	.long	0x2d
	.byte	0x8
	.uleb128 0x8
	.long	.LASF439
	.byte	0xc
	.byte	0x44
	.long	0x2d
	.byte	0x10
	.uleb128 0x8
	.long	.LASF420
	.byte	0xc
	.byte	0x49
	.long	0x123
	.byte	0x18
	.uleb128 0x8
	.long	.LASF418
	.byte	0xc
	.byte	0x4f
	.long	0xfb0
	.byte	0x20
	.uleb128 0x8
	.long	.LASF440
	.byte	0xc
	.byte	0x53
	.long	0x139
	.byte	0x28
	.uleb128 0x8
	.long	.LASF441
	.byte	0xc
	.byte	0x57
	.long	0x139
	.byte	0x2c
	.uleb128 0x8
	.long	.LASF442
	.byte	0xc
	.byte	0x58
	.long	0x4cd
	.byte	0x30
	.uleb128 0x8
	.long	.LASF443
	.byte	0xc
	.byte	0x5e
	.long	0x139
	.byte	0x38
	.uleb128 0x8
	.long	.LASF444
	.byte	0xc
	.byte	0x63
	.long	0x1117
	.byte	0x40
	.uleb128 0x8
	.long	.LASF445
	.byte	0xc
	.byte	0x67
	.long	0x111d
	.byte	0x48
	.uleb128 0x8
	.long	.LASF446
	.byte	0xc
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
	.long	.LASF447
	.byte	0x30
	.byte	0xc
	.byte	0x77
	.long	0x1184
	.uleb128 0x8
	.long	.LASF448
	.byte	0xc
	.byte	0x7b
	.long	0x139
	.byte	0
	.uleb128 0x8
	.long	.LASF449
	.byte	0xc
	.byte	0x8c
	.long	0x139
	.byte	0x4
	.uleb128 0x8
	.long	.LASF450
	.byte	0xc
	.byte	0x92
	.long	0x139
	.byte	0x8
	.uleb128 0x8
	.long	.LASF451
	.byte	0xc
	.byte	0x97
	.long	0x2d
	.byte	0x10
	.uleb128 0x8
	.long	.LASF452
	.byte	0xc
	.byte	0x9a
	.long	0x2d
	.byte	0x18
	.uleb128 0x8
	.long	.LASF453
	.byte	0xc
	.byte	0x9d
	.long	0x2d
	.byte	0x20
	.uleb128 0x8
	.long	.LASF454
	.byte	0xc
	.byte	0xa0
	.long	0x2d
	.byte	0x28
	.byte	0
	.uleb128 0x1d
	.long	.LASF455
	.value	0x1b0
	.byte	0xc
	.byte	0xae
	.long	0x1604
	.uleb128 0x6
	.string	"eh"
	.byte	0xc
	.byte	0xb0
	.long	0x1609
	.byte	0
	.uleb128 0x8
	.long	.LASF456
	.byte	0xc
	.byte	0xb1
	.long	0x1614
	.byte	0x8
	.uleb128 0x8
	.long	.LASF310
	.byte	0xc
	.byte	0xb2
	.long	0x161a
	.byte	0x10
	.uleb128 0x8
	.long	.LASF457
	.byte	0xc
	.byte	0xb3
	.long	0x1620
	.byte	0x18
	.uleb128 0x8
	.long	.LASF458
	.byte	0xc
	.byte	0xb4
	.long	0x162b
	.byte	0x20
	.uleb128 0x8
	.long	.LASF459
	.byte	0xc
	.byte	0xb9
	.long	0x4cd
	.byte	0x28
	.uleb128 0x8
	.long	.LASF460
	.byte	0xc
	.byte	0xbc
	.long	0x123
	.byte	0x30
	.uleb128 0x8
	.long	.LASF461
	.byte	0xc
	.byte	0xbf
	.long	0x1631
	.byte	0x38
	.uleb128 0x8
	.long	.LASF462
	.byte	0xc
	.byte	0xc4
	.long	0x139
	.byte	0x40
	.uleb128 0x8
	.long	.LASF463
	.byte	0xc
	.byte	0xc9
	.long	0x139
	.byte	0x44
	.uleb128 0x8
	.long	.LASF464
	.byte	0xc
	.byte	0xce
	.long	0x139
	.byte	0x48
	.uleb128 0x8
	.long	.LASF465
	.byte	0xc
	.byte	0xd2
	.long	0x139
	.byte	0x4c
	.uleb128 0x8
	.long	.LASF466
	.byte	0xc
	.byte	0xd6
	.long	0x2d
	.byte	0x50
	.uleb128 0x8
	.long	.LASF467
	.byte	0xc
	.byte	0xda
	.long	0x25a
	.byte	0x58
	.uleb128 0x8
	.long	.LASF468
	.byte	0xc
	.byte	0xe0
	.long	0x2d
	.byte	0x78
	.uleb128 0x8
	.long	.LASF469
	.byte	0xc
	.byte	0xe3
	.long	0x2d
	.byte	0x80
	.uleb128 0x8
	.long	.LASF470
	.byte	0xc
	.byte	0xe7
	.long	0x4cd
	.byte	0x88
	.uleb128 0x8
	.long	.LASF471
	.byte	0xc
	.byte	0xeb
	.long	0x163c
	.byte	0x90
	.uleb128 0x8
	.long	.LASF472
	.byte	0xc
	.byte	0xee
	.long	0x139
	.byte	0x98
	.uleb128 0x8
	.long	.LASF473
	.byte	0xc
	.byte	0xf3
	.long	0x123
	.byte	0xa0
	.uleb128 0x8
	.long	.LASF474
	.byte	0xc
	.byte	0xf9
	.long	0x2d
	.byte	0xa8
	.uleb128 0x8
	.long	.LASF475
	.byte	0xc
	.byte	0xfd
	.long	0x2d
	.byte	0xb0
	.uleb128 0xf
	.long	.LASF476
	.byte	0xc
	.value	0x102
	.long	0x2d
	.byte	0xb8
	.uleb128 0xf
	.long	.LASF477
	.byte	0xc
	.value	0x108
	.long	0x2d
	.byte	0xc0
	.uleb128 0xf
	.long	.LASF478
	.byte	0xc
	.value	0x10d
	.long	0x2d
	.byte	0xc8
	.uleb128 0xf
	.long	.LASF479
	.byte	0xc
	.value	0x111
	.long	0x2d
	.byte	0xd0
	.uleb128 0xf
	.long	.LASF480
	.byte	0xc
	.value	0x115
	.long	0x2d
	.byte	0xd8
	.uleb128 0xf
	.long	.LASF481
	.byte	0xc
	.value	0x118
	.long	0x123
	.byte	0xe0
	.uleb128 0xf
	.long	.LASF482
	.byte	0xc
	.value	0x11c
	.long	0x2d
	.byte	0xe8
	.uleb128 0xf
	.long	.LASF483
	.byte	0xc
	.value	0x11f
	.long	0x2d
	.byte	0xf0
	.uleb128 0xf
	.long	.LASF484
	.byte	0xc
	.value	0x125
	.long	0x2d
	.byte	0xf8
	.uleb128 0x1e
	.long	.LASF485
	.byte	0xc
	.value	0x12a
	.long	0x2d
	.value	0x100
	.uleb128 0x1e
	.long	.LASF486
	.byte	0xc
	.value	0x12f
	.long	0x26f
	.value	0x108
	.uleb128 0x1e
	.long	.LASF487
	.byte	0xc
	.value	0x134
	.long	0x123
	.value	0x110
	.uleb128 0x1e
	.long	.LASF488
	.byte	0xc
	.value	0x13d
	.long	0x123
	.value	0x118
	.uleb128 0x1e
	.long	.LASF489
	.byte	0xc
	.value	0x140
	.long	0x2d
	.value	0x120
	.uleb128 0x1e
	.long	.LASF490
	.byte	0xc
	.value	0x144
	.long	0x2d
	.value	0x128
	.uleb128 0x1e
	.long	.LASF491
	.byte	0xc
	.value	0x148
	.long	0x266
	.value	0x130
	.uleb128 0x1e
	.long	.LASF492
	.byte	0xc
	.value	0x14e
	.long	0xed4
	.value	0x138
	.uleb128 0x1e
	.long	.LASF493
	.byte	0xc
	.value	0x151
	.long	0x1647
	.value	0x140
	.uleb128 0x1e
	.long	.LASF494
	.byte	0xc
	.value	0x154
	.long	0x139
	.value	0x148
	.uleb128 0x1e
	.long	.LASF495
	.byte	0xc
	.value	0x157
	.long	0x139
	.value	0x14c
	.uleb128 0x1e
	.long	.LASF496
	.byte	0xc
	.value	0x15d
	.long	0x139
	.value	0x150
	.uleb128 0x1e
	.long	.LASF497
	.byte	0xc
	.value	0x161
	.long	0xf6d
	.value	0x158
	.uleb128 0x1e
	.long	.LASF498
	.byte	0xc
	.value	0x164
	.long	0x139
	.value	0x160
	.uleb128 0x1e
	.long	.LASF499
	.byte	0xc
	.value	0x165
	.long	0x139
	.value	0x164
	.uleb128 0x1e
	.long	.LASF500
	.byte	0xc
	.value	0x167
	.long	0x26d
	.value	0x168
	.uleb128 0x1e
	.long	.LASF501
	.byte	0xc
	.value	0x168
	.long	0x123
	.value	0x170
	.uleb128 0x1e
	.long	.LASF502
	.byte	0xc
	.value	0x16b
	.long	0x2d
	.value	0x178
	.uleb128 0x1e
	.long	.LASF503
	.byte	0xc
	.value	0x16d
	.long	0x139
	.value	0x180
	.uleb128 0x1e
	.long	.LASF504
	.byte	0xc
	.value	0x170
	.long	0x139
	.value	0x184
	.uleb128 0x1e
	.long	.LASF505
	.byte	0xc
	.value	0x175
	.long	0x1652
	.value	0x188
	.uleb128 0x1e
	.long	.LASF506
	.byte	0xc
	.value	0x177
	.long	0x139
	.value	0x190
	.uleb128 0x1e
	.long	.LASF507
	.byte	0xc
	.value	0x179
	.long	0x139
	.value	0x194
	.uleb128 0x1e
	.long	.LASF508
	.byte	0xc
	.value	0x17c
	.long	0x165d
	.value	0x198
	.uleb128 0x1e
	.long	.LASF509
	.byte	0xc
	.value	0x182
	.long	0x2d
	.value	0x1a0
	.uleb128 0x1f
	.long	.LASF510
	.byte	0xc
	.value	0x188
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.value	0x1a8
	.uleb128 0x1f
	.long	.LASF511
	.byte	0xc
	.value	0x18c
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.value	0x1a8
	.uleb128 0x1f
	.long	.LASF512
	.byte	0xc
	.value	0x18f
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.value	0x1a8
	.uleb128 0x1f
	.long	.LASF513
	.byte	0xc
	.value	0x192
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.value	0x1a8
	.uleb128 0x1f
	.long	.LASF514
	.byte	0xc
	.value	0x195
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.value	0x1a8
	.uleb128 0x1f
	.long	.LASF515
	.byte	0xc
	.value	0x198
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.value	0x1a8
	.uleb128 0x1f
	.long	.LASF516
	.byte	0xc
	.value	0x19c
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.value	0x1a8
	.uleb128 0x1f
	.long	.LASF517
	.byte	0xc
	.value	0x19f
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.value	0x1a8
	.uleb128 0x1f
	.long	.LASF518
	.byte	0xc
	.value	0x1a3
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.value	0x1a8
	.uleb128 0x1f
	.long	.LASF519
	.byte	0xc
	.value	0x1a7
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.value	0x1a8
	.uleb128 0x1f
	.long	.LASF520
	.byte	0xc
	.value	0x1aa
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.value	0x1a8
	.uleb128 0x1f
	.long	.LASF521
	.byte	0xc
	.value	0x1ad
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.value	0x1a8
	.uleb128 0x1f
	.long	.LASF522
	.byte	0xc
	.value	0x1b2
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.value	0x1a8
	.uleb128 0x1f
	.long	.LASF523
	.byte	0xc
	.value	0x1b6
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.value	0x1a8
	.uleb128 0x1f
	.long	.LASF524
	.byte	0xc
	.value	0x1b9
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.value	0x1a8
	.uleb128 0x1f
	.long	.LASF525
	.byte	0xc
	.value	0x1bd
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.value	0x1a8
	.uleb128 0x1f
	.long	.LASF526
	.byte	0xc
	.value	0x1c1
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.value	0x1a8
	.uleb128 0x1f
	.long	.LASF527
	.byte	0xc
	.value	0x1c5
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.value	0x1a8
	.uleb128 0x1f
	.long	.LASF528
	.byte	0xc
	.value	0x1cb
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.value	0x1a8
	.uleb128 0x1f
	.long	.LASF529
	.byte	0xc
	.value	0x1d4
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.value	0x1a8
	.uleb128 0x1f
	.long	.LASF530
	.byte	0xc
	.value	0x1d7
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.value	0x1a8
	.uleb128 0x1f
	.long	.LASF531
	.byte	0xc
	.value	0x1da
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.value	0x1a8
	.uleb128 0x1f
	.long	.LASF532
	.byte	0xc
	.value	0x1dd
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.value	0x1a8
	.uleb128 0x1f
	.long	.LASF533
	.byte	0xc
	.value	0x1e0
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.value	0x1a8
	.byte	0
	.uleb128 0x1c
	.long	.LASF535
	.uleb128 0x3
	.byte	0x8
	.long	0x1604
	.uleb128 0x1c
	.long	.LASF536
	.uleb128 0x3
	.byte	0x8
	.long	0x160f
	.uleb128 0x3
	.byte	0x8
	.long	0x1123
	.uleb128 0x3
	.byte	0x8
	.long	0x106e
	.uleb128 0x1c
	.long	.LASF537
	.uleb128 0x3
	.byte	0x8
	.long	0x1626
	.uleb128 0x3
	.byte	0x8
	.long	0x1184
	.uleb128 0x1c
	.long	.LASF538
	.uleb128 0x3
	.byte	0x8
	.long	0x1637
	.uleb128 0x1c
	.long	.LASF539
	.uleb128 0x3
	.byte	0x8
	.long	0x1642
	.uleb128 0x1c
	.long	.LASF540
	.uleb128 0x3
	.byte	0x8
	.long	0x164d
	.uleb128 0x1c
	.long	.LASF541
	.uleb128 0x3
	.byte	0x8
	.long	0x1658
	.uleb128 0x4
	.long	.LASF542
	.byte	0x10
	.byte	0xe
	.byte	0x24
	.long	0x1688
	.uleb128 0x6
	.string	"rtx"
	.byte	0xe
	.byte	0x32
	.long	0x38
	.byte	0
	.uleb128 0x6
	.string	"age"
	.byte	0xe
	.byte	0x36
	.long	0x266
	.byte	0x8
	.byte	0
	.uleb128 0x19
	.long	.LASF544
	.byte	0x10
	.byte	0xe
	.byte	0x3a
	.long	0x176d
	.uleb128 0x1b
	.string	"c"
	.byte	0xe
	.byte	0x3b
	.long	0x4a7
	.uleb128 0x1b
	.string	"uc"
	.byte	0xe
	.byte	0x3c
	.long	0x176d
	.uleb128 0x1b
	.string	"s"
	.byte	0xe
	.byte	0x3d
	.long	0x177d
	.uleb128 0x1b
	.string	"us"
	.byte	0xe
	.byte	0x3e
	.long	0x178d
	.uleb128 0x1b
	.string	"i"
	.byte	0xe
	.byte	0x3f
	.long	0x179d
	.uleb128 0x1b
	.string	"u"
	.byte	0xe
	.byte	0x40
	.long	0x17ad
	.uleb128 0x1b
	.string	"l"
	.byte	0xe
	.byte	0x41
	.long	0x17bd
	.uleb128 0x1b
	.string	"ul"
	.byte	0xe
	.byte	0x42
	.long	0x17cd
	.uleb128 0x1a
	.long	.LASF545
	.byte	0xe
	.byte	0x43
	.long	0x17bd
	.uleb128 0x1a
	.long	.LASF546
	.byte	0xe
	.byte	0x44
	.long	0x17cd
	.uleb128 0x1a
	.long	.LASF547
	.byte	0xe
	.byte	0x45
	.long	0x17dd
	.uleb128 0x1a
	.long	.LASF548
	.byte	0xe
	.byte	0x46
	.long	0x17ed
	.uleb128 0x1b
	.string	"rtx"
	.byte	0xe
	.byte	0x47
	.long	0x17fd
	.uleb128 0x1a
	.long	.LASF10
	.byte	0xe
	.byte	0x48
	.long	0x180d
	.uleb128 0x1a
	.long	.LASF15
	.byte	0xe
	.byte	0x49
	.long	0x181d
	.uleb128 0x1a
	.long	.LASF549
	.byte	0xe
	.byte	0x4a
	.long	0x182d
	.uleb128 0x1a
	.long	.LASF550
	.byte	0xe
	.byte	0x4b
	.long	0x183d
	.uleb128 0x1b
	.string	"reg"
	.byte	0xe
	.byte	0x4c
	.long	0x1858
	.uleb128 0x1a
	.long	.LASF551
	.byte	0xe
	.byte	0x4d
	.long	0x18ff
	.uleb128 0x1b
	.string	"bb"
	.byte	0xe
	.byte	0x4e
	.long	0x190f
	.uleb128 0x1b
	.string	"te"
	.byte	0xe
	.byte	0x4f
	.long	0x191f
	.byte	0
	.uleb128 0x12
	.long	0x288
	.long	0x177d
	.uleb128 0x13
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	0x29d
	.long	0x178d
	.uleb128 0x13
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	0x28f
	.long	0x179d
	.uleb128 0x13
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	0x139
	.long	0x17ad
	.uleb128 0x13
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	0x266
	.long	0x17bd
	.uleb128 0x13
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	0x26f
	.long	0x17cd
	.uleb128 0x13
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	0x281
	.long	0x17dd
	.uleb128 0x13
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	0x26d
	.long	0x17ed
	.uleb128 0x13
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	0x2ba
	.long	0x17fd
	.uleb128 0x13
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	0x38
	.long	0x180d
	.uleb128 0x13
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	0xf8
	.long	0x181d
	.uleb128 0x13
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	0x12e
	.long	0x182d
	.uleb128 0x13
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	0xc59
	.long	0x183d
	.uleb128 0x13
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	0x184d
	.long	0x184d
	.uleb128 0x13
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1853
	.uleb128 0x1c
	.long	.LASF552
	.uleb128 0x12
	.long	0x1868
	.long	0x1868
	.uleb128 0x13
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x186e
	.uleb128 0x4
	.long	.LASF553
	.byte	0x2c
	.byte	0xf
	.byte	0x2d
	.long	0x18ff
	.uleb128 0x8
	.long	.LASF554
	.byte	0xf
	.byte	0x2f
	.long	0x139
	.byte	0
	.uleb128 0x8
	.long	.LASF555
	.byte	0xf
	.byte	0x30
	.long	0x139
	.byte	0x4
	.uleb128 0x8
	.long	.LASF556
	.byte	0xf
	.byte	0x31
	.long	0x139
	.byte	0x8
	.uleb128 0x8
	.long	.LASF557
	.byte	0xf
	.byte	0x34
	.long	0x139
	.byte	0xc
	.uleb128 0x8
	.long	.LASF558
	.byte	0xf
	.byte	0x37
	.long	0x139
	.byte	0x10
	.uleb128 0x8
	.long	.LASF559
	.byte	0xf
	.byte	0x38
	.long	0x139
	.byte	0x14
	.uleb128 0x8
	.long	.LASF560
	.byte	0xf
	.byte	0x39
	.long	0x139
	.byte	0x18
	.uleb128 0x8
	.long	.LASF561
	.byte	0xf
	.byte	0x3a
	.long	0x139
	.byte	0x1c
	.uleb128 0x8
	.long	.LASF562
	.byte	0xf
	.byte	0x3b
	.long	0x139
	.byte	0x20
	.uleb128 0x8
	.long	.LASF563
	.byte	0xf
	.byte	0x3c
	.long	0x139
	.byte	0x24
	.uleb128 0x8
	.long	.LASF564
	.byte	0xf
	.byte	0x3d
	.long	0x2c0
	.byte	0x28
	.byte	0
	.uleb128 0x12
	.long	0x1663
	.long	0x190f
	.uleb128 0x13
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	0xd2c
	.long	0x191f
	.uleb128 0x13
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	0x192f
	.long	0x192f
	.uleb128 0x13
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1935
	.uleb128 0x1c
	.long	.LASF565
	.uleb128 0x7
	.long	.LASF566
	.byte	0xe
	.byte	0x50
	.long	0x1688
	.uleb128 0x4
	.long	.LASF567
	.byte	0x30
	.byte	0xe
	.byte	0x53
	.long	0x198e
	.uleb128 0x8
	.long	.LASF568
	.byte	0xe
	.byte	0x54
	.long	0x276
	.byte	0
	.uleb128 0x8
	.long	.LASF569
	.byte	0xe
	.byte	0x55
	.long	0x276
	.byte	0x8
	.uleb128 0x8
	.long	.LASF570
	.byte	0xe
	.byte	0x57
	.long	0x276
	.byte	0x10
	.uleb128 0x8
	.long	.LASF459
	.byte	0xe
	.byte	0x58
	.long	0x4cd
	.byte	0x18
	.uleb128 0x8
	.long	.LASF571
	.byte	0xe
	.byte	0x59
	.long	0x193a
	.byte	0x20
	.byte	0
	.uleb128 0x7
	.long	.LASF572
	.byte	0xe
	.byte	0x5a
	.long	0x1999
	.uleb128 0x3
	.byte	0x8
	.long	0x1945
	.uleb128 0x4
	.long	.LASF573
	.byte	0x18
	.byte	0xd
	.byte	0xa1
	.long	0x19d0
	.uleb128 0x8
	.long	.LASF574
	.byte	0xd
	.byte	0xa3
	.long	0x2ba
	.byte	0
	.uleb128 0x8
	.long	.LASF575
	.byte	0xd
	.byte	0xa4
	.long	0x19d0
	.byte	0x8
	.uleb128 0x8
	.long	.LASF576
	.byte	0xd
	.byte	0xa5
	.long	0x453
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x199f
	.uleb128 0x20
	.long	0x19d0
	.long	0x19ea
	.uleb128 0x21
	.long	0x26d
	.uleb128 0x21
	.long	0x26f
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x19d6
	.uleb128 0x22
	.long	0x1a00
	.uleb128 0x21
	.long	0x26d
	.uleb128 0x21
	.long	0x19d0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x19f0
	.uleb128 0x7
	.long	.LASF577
	.byte	0x10
	.byte	0x29
	.long	0x281
	.uleb128 0x4
	.long	.LASF578
	.byte	0x28
	.byte	0xa
	.byte	0x2b
	.long	0x1a4e
	.uleb128 0x8
	.long	.LASF417
	.byte	0xa
	.byte	0x2d
	.long	0x1a4e
	.byte	0
	.uleb128 0x8
	.long	.LASF575
	.byte	0xa
	.byte	0x2e
	.long	0x1a4e
	.byte	0x8
	.uleb128 0x8
	.long	.LASF328
	.byte	0xa
	.byte	0x2f
	.long	0x266
	.byte	0x10
	.uleb128 0x8
	.long	.LASF579
	.byte	0xa
	.byte	0x30
	.long	0x1a54
	.byte	0x18
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1a11
	.uleb128 0x12
	.long	0x281
	.long	0x1a64
	.uleb128 0x13
	.long	0x140
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.long	.LASF580
	.byte	0xa
	.byte	0x31
	.long	0x1a11
	.uleb128 0x3
	.byte	0x8
	.long	0x1a64
	.uleb128 0x7
	.long	.LASF549
	.byte	0xa
	.byte	0x39
	.long	0xc59
	.uleb128 0x16
	.long	.LASF581
	.byte	0x4
	.byte	0xa
	.byte	0x3c
	.long	0x1aab
	.uleb128 0xd
	.long	.LASF582
	.sleb128 0
	.uleb128 0xd
	.long	.LASF583
	.sleb128 1
	.uleb128 0xd
	.long	.LASF584
	.sleb128 2
	.uleb128 0xd
	.long	.LASF585
	.sleb128 3
	.uleb128 0xd
	.long	.LASF586
	.sleb128 4
	.byte	0
	.uleb128 0x4
	.long	.LASF587
	.byte	0x18
	.byte	0x11
	.byte	0x1f
	.long	0x1ae8
	.uleb128 0x8
	.long	.LASF588
	.byte	0x11
	.byte	0x21
	.long	0x266
	.byte	0
	.uleb128 0x8
	.long	.LASF312
	.byte	0x11
	.byte	0x22
	.long	0x266
	.byte	0x4
	.uleb128 0x8
	.long	.LASF589
	.byte	0x11
	.byte	0x23
	.long	0x266
	.byte	0x8
	.uleb128 0x8
	.long	.LASF590
	.byte	0x11
	.byte	0x24
	.long	0x17cd
	.byte	0x10
	.byte	0
	.uleb128 0x7
	.long	.LASF591
	.byte	0x11
	.byte	0x25
	.long	0x1af3
	.uleb128 0x3
	.byte	0x8
	.long	0x1aab
	.uleb128 0x7
	.long	.LASF592
	.byte	0xb
	.byte	0x21
	.long	0x1a75
	.uleb128 0x7
	.long	.LASF593
	.byte	0xb
	.byte	0x74
	.long	0x26f
	.uleb128 0x4
	.long	.LASF594
	.byte	0x40
	.byte	0xb
	.byte	0x77
	.long	0x1b88
	.uleb128 0x8
	.long	.LASF595
	.byte	0xb
	.byte	0x79
	.long	0x1b88
	.byte	0
	.uleb128 0x8
	.long	.LASF596
	.byte	0xb
	.byte	0x79
	.long	0x1b88
	.byte	0x8
	.uleb128 0x6
	.string	"src"
	.byte	0xb
	.byte	0x7c
	.long	0xd2c
	.byte	0x10
	.uleb128 0x8
	.long	.LASF597
	.byte	0xb
	.byte	0x7c
	.long	0xd2c
	.byte	0x18
	.uleb128 0x8
	.long	.LASF598
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
	.long	.LASF599
	.byte	0xb
	.byte	0x85
	.long	0x139
	.byte	0x34
	.uleb128 0x8
	.long	.LASF341
	.byte	0xb
	.byte	0x86
	.long	0x1b04
	.byte	0x38
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1b0f
	.uleb128 0x7
	.long	.LASF600
	.byte	0xb
	.byte	0x88
	.long	0x1b88
	.uleb128 0x7
	.long	.LASF563
	.byte	0xb
	.byte	0xdb
	.long	0xd2c
	.uleb128 0x3
	.byte	0x8
	.long	0x1ae8
	.uleb128 0x16
	.long	.LASF601
	.byte	0x4
	.byte	0x12
	.byte	0x23
	.long	0x1bcf
	.uleb128 0xd
	.long	.LASF602
	.sleb128 0
	.uleb128 0xd
	.long	.LASF603
	.sleb128 1
	.uleb128 0xd
	.long	.LASF604
	.sleb128 2
	.uleb128 0xd
	.long	.LASF605
	.sleb128 3
	.byte	0
	.uleb128 0x4
	.long	.LASF606
	.byte	0x10
	.byte	0x12
	.byte	0x2d
	.long	0x1bf4
	.uleb128 0x8
	.long	.LASF417
	.byte	0x12
	.byte	0x2f
	.long	0x1bf4
	.byte	0
	.uleb128 0x6
	.string	"ref"
	.byte	0x12
	.byte	0x30
	.long	0x1c5a
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1bcf
	.uleb128 0x23
	.string	"ref"
	.byte	0x30
	.byte	0x12
	.byte	0x39
	.long	0x1c5a
	.uleb128 0x6
	.string	"reg"
	.byte	0x12
	.byte	0x3b
	.long	0x2d
	.byte	0
	.uleb128 0x8
	.long	.LASF607
	.byte	0x12
	.byte	0x3c
	.long	0x2d
	.byte	0x8
	.uleb128 0x6
	.string	"loc"
	.byte	0x12
	.byte	0x3d
	.long	0xed4
	.byte	0x10
	.uleb128 0x8
	.long	.LASF608
	.byte	0x12
	.byte	0x3e
	.long	0x1bf4
	.byte	0x18
	.uleb128 0x8
	.long	.LASF609
	.byte	0x12
	.byte	0x3f
	.long	0x1baa
	.byte	0x20
	.uleb128 0x6
	.string	"id"
	.byte	0x12
	.byte	0x40
	.long	0x139
	.byte	0x24
	.uleb128 0x8
	.long	.LASF343
	.byte	0x12
	.byte	0x41
	.long	0x1c60
	.byte	0x28
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1bfa
	.uleb128 0x16
	.long	.LASF610
	.byte	0x4
	.byte	0x12
	.byte	0x33
	.long	0x1c73
	.uleb128 0xd
	.long	.LASF611
	.sleb128 1
	.byte	0
	.uleb128 0x4
	.long	.LASF612
	.byte	0x18
	.byte	0x12
	.byte	0x46
	.long	0x1ca4
	.uleb128 0x8
	.long	.LASF613
	.byte	0x12
	.byte	0x48
	.long	0x1bf4
	.byte	0
	.uleb128 0x8
	.long	.LASF614
	.byte	0x12
	.byte	0x49
	.long	0x1bf4
	.byte	0x8
	.uleb128 0x8
	.long	.LASF615
	.byte	0x12
	.byte	0x4c
	.long	0x139
	.byte	0x10
	.byte	0
	.uleb128 0x4
	.long	.LASF616
	.byte	0x20
	.byte	0x12
	.byte	0x54
	.long	0x1ced
	.uleb128 0x8
	.long	.LASF613
	.byte	0x12
	.byte	0x56
	.long	0x1bf4
	.byte	0
	.uleb128 0x8
	.long	.LASF614
	.byte	0x12
	.byte	0x57
	.long	0x1bf4
	.byte	0x8
	.uleb128 0x8
	.long	.LASF617
	.byte	0x12
	.byte	0x58
	.long	0x139
	.byte	0x10
	.uleb128 0x8
	.long	.LASF618
	.byte	0x12
	.byte	0x59
	.long	0x139
	.byte	0x14
	.uleb128 0x8
	.long	.LASF619
	.byte	0x12
	.byte	0x5a
	.long	0x139
	.byte	0x18
	.byte	0
	.uleb128 0x4
	.long	.LASF620
	.byte	0x70
	.byte	0x12
	.byte	0x5f
	.long	0x1dae
	.uleb128 0x8
	.long	.LASF621
	.byte	0x12
	.byte	0x62
	.long	0x1a75
	.byte	0
	.uleb128 0x8
	.long	.LASF622
	.byte	0x12
	.byte	0x63
	.long	0x1a75
	.byte	0x8
	.uleb128 0x8
	.long	.LASF623
	.byte	0x12
	.byte	0x64
	.long	0x1a75
	.byte	0x10
	.uleb128 0x8
	.long	.LASF624
	.byte	0x12
	.byte	0x65
	.long	0x1a75
	.byte	0x18
	.uleb128 0x8
	.long	.LASF625
	.byte	0x12
	.byte	0x67
	.long	0x1a75
	.byte	0x20
	.uleb128 0x8
	.long	.LASF626
	.byte	0x12
	.byte	0x68
	.long	0x1a75
	.byte	0x28
	.uleb128 0x8
	.long	.LASF627
	.byte	0x12
	.byte	0x69
	.long	0x1a75
	.byte	0x30
	.uleb128 0x8
	.long	.LASF628
	.byte	0x12
	.byte	0x6a
	.long	0x1a75
	.byte	0x38
	.uleb128 0x8
	.long	.LASF629
	.byte	0x12
	.byte	0x6c
	.long	0x1a75
	.byte	0x40
	.uleb128 0x8
	.long	.LASF630
	.byte	0x12
	.byte	0x6d
	.long	0x1a75
	.byte	0x48
	.uleb128 0x8
	.long	.LASF631
	.byte	0x12
	.byte	0x6e
	.long	0x1a75
	.byte	0x50
	.uleb128 0x8
	.long	.LASF632
	.byte	0x12
	.byte	0x6f
	.long	0x1a75
	.byte	0x58
	.uleb128 0x8
	.long	.LASF633
	.byte	0x12
	.byte	0x70
	.long	0x139
	.byte	0x60
	.uleb128 0x8
	.long	.LASF634
	.byte	0x12
	.byte	0x71
	.long	0x139
	.byte	0x64
	.uleb128 0x8
	.long	.LASF635
	.byte	0x12
	.byte	0x72
	.long	0x139
	.byte	0x68
	.byte	0
	.uleb128 0x23
	.string	"df"
	.byte	0xc0
	.byte	0x12
	.byte	0x76
	.long	0x1f16
	.uleb128 0x8
	.long	.LASF343
	.byte	0x12
	.byte	0x78
	.long	0x139
	.byte	0
	.uleb128 0x6
	.string	"bbs"
	.byte	0x12
	.byte	0x79
	.long	0x1f16
	.byte	0x8
	.uleb128 0x8
	.long	.LASF613
	.byte	0x12
	.byte	0x7a
	.long	0x1f1c
	.byte	0x10
	.uleb128 0x8
	.long	.LASF614
	.byte	0x12
	.byte	0x7b
	.long	0x1f1c
	.byte	0x18
	.uleb128 0x8
	.long	.LASF636
	.byte	0x12
	.byte	0x7c
	.long	0x1f1c
	.byte	0x20
	.uleb128 0x8
	.long	.LASF637
	.byte	0x12
	.byte	0x7d
	.long	0x1f22
	.byte	0x28
	.uleb128 0x8
	.long	.LASF638
	.byte	0x12
	.byte	0x7e
	.long	0x266
	.byte	0x30
	.uleb128 0x8
	.long	.LASF598
	.byte	0x12
	.byte	0x7f
	.long	0x1f28
	.byte	0x38
	.uleb128 0x8
	.long	.LASF639
	.byte	0x12
	.byte	0x80
	.long	0x266
	.byte	0x40
	.uleb128 0x8
	.long	.LASF640
	.byte	0x12
	.byte	0x81
	.long	0x266
	.byte	0x44
	.uleb128 0x8
	.long	.LASF641
	.byte	0x12
	.byte	0x82
	.long	0x266
	.byte	0x48
	.uleb128 0x8
	.long	.LASF618
	.byte	0x12
	.byte	0x83
	.long	0x266
	.byte	0x4c
	.uleb128 0x8
	.long	.LASF642
	.byte	0x12
	.byte	0x84
	.long	0x266
	.byte	0x50
	.uleb128 0x8
	.long	.LASF643
	.byte	0x12
	.byte	0x85
	.long	0x266
	.byte	0x54
	.uleb128 0x8
	.long	.LASF619
	.byte	0x12
	.byte	0x86
	.long	0x266
	.byte	0x58
	.uleb128 0x8
	.long	.LASF644
	.byte	0x12
	.byte	0x87
	.long	0x266
	.byte	0x5c
	.uleb128 0x8
	.long	.LASF645
	.byte	0x12
	.byte	0x88
	.long	0x266
	.byte	0x60
	.uleb128 0x8
	.long	.LASF646
	.byte	0x12
	.byte	0x89
	.long	0x266
	.byte	0x64
	.uleb128 0x8
	.long	.LASF647
	.byte	0x12
	.byte	0x8a
	.long	0x266
	.byte	0x68
	.uleb128 0x8
	.long	.LASF648
	.byte	0x12
	.byte	0x8b
	.long	0x1a75
	.byte	0x70
	.uleb128 0x8
	.long	.LASF649
	.byte	0x12
	.byte	0x8c
	.long	0x1a75
	.byte	0x78
	.uleb128 0x8
	.long	.LASF650
	.byte	0x12
	.byte	0x8d
	.long	0x1a75
	.byte	0x80
	.uleb128 0x6
	.string	"dom"
	.byte	0x12
	.byte	0x90
	.long	0x1ba4
	.byte	0x88
	.uleb128 0x8
	.long	.LASF651
	.byte	0x12
	.byte	0x91
	.long	0x4e6
	.byte	0x90
	.uleb128 0x8
	.long	.LASF652
	.byte	0x12
	.byte	0x92
	.long	0x4e6
	.byte	0x98
	.uleb128 0x8
	.long	.LASF653
	.byte	0x12
	.byte	0x93
	.long	0x4e6
	.byte	0xa0
	.uleb128 0x8
	.long	.LASF654
	.byte	0x12
	.byte	0x94
	.long	0x4e6
	.byte	0xa8
	.uleb128 0x8
	.long	.LASF655
	.byte	0x12
	.byte	0x95
	.long	0x4e6
	.byte	0xb0
	.uleb128 0x8
	.long	.LASF656
	.byte	0x12
	.byte	0x96
	.long	0x4e6
	.byte	0xb8
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1ced
	.uleb128 0x3
	.byte	0x8
	.long	0x1c5a
	.uleb128 0x3
	.byte	0x8
	.long	0x1ca4
	.uleb128 0x3
	.byte	0x8
	.long	0x1c73
	.uleb128 0xc
	.long	.LASF657
	.byte	0x4
	.byte	0x12
	.value	0x134
	.long	0x1f48
	.uleb128 0xd
	.long	.LASF658
	.sleb128 0
	.uleb128 0xd
	.long	.LASF659
	.sleb128 1
	.byte	0
	.uleb128 0xc
	.long	.LASF660
	.byte	0x4
	.byte	0x12
	.value	0x13a
	.long	0x1f62
	.uleb128 0xd
	.long	.LASF661
	.sleb128 0
	.uleb128 0xd
	.long	.LASF662
	.sleb128 1
	.byte	0
	.uleb128 0x10
	.long	.LASF663
	.byte	0x12
	.value	0x140
	.long	0x1f6e
	.uleb128 0x3
	.byte	0x8
	.long	0x1f74
	.uleb128 0x22
	.long	0x1f9d
	.uleb128 0x21
	.long	0x139
	.uleb128 0x21
	.long	0x4e6
	.uleb128 0x21
	.long	0x1ae8
	.uleb128 0x21
	.long	0x1ae8
	.uleb128 0x21
	.long	0x1ae8
	.uleb128 0x21
	.long	0x1ae8
	.uleb128 0x21
	.long	0x26d
	.byte	0
	.uleb128 0x10
	.long	.LASF664
	.byte	0x12
	.value	0x142
	.long	0x1fa9
	.uleb128 0x3
	.byte	0x8
	.long	0x1faf
	.uleb128 0x22
	.long	0x1fd8
	.uleb128 0x21
	.long	0x139
	.uleb128 0x21
	.long	0x4e6
	.uleb128 0x21
	.long	0x1a75
	.uleb128 0x21
	.long	0x1a75
	.uleb128 0x21
	.long	0x1a75
	.uleb128 0x21
	.long	0x1a75
	.uleb128 0x21
	.long	0x26d
	.byte	0
	.uleb128 0x7
	.long	.LASF665
	.byte	0x13
	.byte	0x2d
	.long	0x26f
	.uleb128 0x4
	.long	.LASF666
	.byte	0x18
	.byte	0x13
	.byte	0x2f
	.long	0x2014
	.uleb128 0x8
	.long	.LASF667
	.byte	0x13
	.byte	0x31
	.long	0x276
	.byte	0
	.uleb128 0x6
	.string	"min"
	.byte	0x13
	.byte	0x32
	.long	0x2087
	.byte	0x8
	.uleb128 0x8
	.long	.LASF668
	.byte	0x13
	.byte	0x33
	.long	0x2087
	.byte	0x10
	.byte	0
	.uleb128 0x4
	.long	.LASF669
	.byte	0x38
	.byte	0x13
	.byte	0x36
	.long	0x2087
	.uleb128 0x8
	.long	.LASF670
	.byte	0x13
	.byte	0x38
	.long	0x2087
	.byte	0
	.uleb128 0x8
	.long	.LASF671
	.byte	0x13
	.byte	0x39
	.long	0x2087
	.byte	0x8
	.uleb128 0x8
	.long	.LASF672
	.byte	0x13
	.byte	0x3a
	.long	0x2087
	.byte	0x10
	.uleb128 0x8
	.long	.LASF673
	.byte	0x13
	.byte	0x3b
	.long	0x2087
	.byte	0x18
	.uleb128 0x6
	.string	"key"
	.byte	0x13
	.byte	0x3c
	.long	0x1fd8
	.byte	0x20
	.uleb128 0x8
	.long	.LASF571
	.byte	0x13
	.byte	0x3d
	.long	0x26d
	.byte	0x28
	.uleb128 0x5
	.long	.LASF674
	.byte	0x13
	.byte	0x3e
	.long	0x266
	.byte	0x4
	.byte	0x1f
	.byte	0x1
	.byte	0x30
	.uleb128 0x5
	.long	.LASF675
	.byte	0x13
	.byte	0x3f
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x30
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x2014
	.uleb128 0x7
	.long	.LASF676
	.byte	0x13
	.byte	0x34
	.long	0x2098
	.uleb128 0x3
	.byte	0x8
	.long	0x1fe3
	.uleb128 0xe
	.long	.LASF677
	.byte	0x20
	.byte	0x1
	.value	0x9a9
	.long	0x20e0
	.uleb128 0xf
	.long	.LASF678
	.byte	0x1
	.value	0x9ab
	.long	0x2d
	.byte	0
	.uleb128 0xf
	.long	.LASF679
	.byte	0x1
	.value	0x9ac
	.long	0x2d
	.byte	0x8
	.uleb128 0xf
	.long	.LASF607
	.byte	0x1
	.value	0x9ad
	.long	0x2d
	.byte	0x10
	.uleb128 0xf
	.long	.LASF414
	.byte	0x1
	.value	0x9ae
	.long	0x139
	.byte	0x18
	.byte	0
	.uleb128 0x10
	.long	.LASF677
	.byte	0x1
	.value	0x9af
	.long	0x209e
	.uleb128 0x24
	.long	.LASF680
	.byte	0x1
	.value	0x142
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x2128
	.uleb128 0x25
	.string	"df"
	.byte	0x1
	.value	0x143
	.long	0x2128
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x26
	.long	.LASF312
	.byte	0x1
	.value	0x144
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1dae
	.uleb128 0x24
	.long	.LASF681
	.byte	0x1
	.value	0x15e
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x216a
	.uleb128 0x25
	.string	"df"
	.byte	0x1
	.value	0x15f
	.long	0x2128
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x26
	.long	.LASF312
	.byte	0x1
	.value	0x160
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x24
	.long	.LASF682
	.byte	0x1
	.value	0x195
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x21f3
	.uleb128 0x25
	.string	"df"
	.byte	0x1
	.value	0x196
	.long	0x2128
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x26
	.long	.LASF343
	.byte	0x1
	.value	0x197
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x27
	.string	"i"
	.byte	0x1
	.value	0x199
	.long	0x266
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x28
	.long	.LASF683
	.byte	0x1
	.value	0x19a
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x29
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x27
	.string	"bb"
	.byte	0x1
	.value	0x1ac
	.long	0x1b99
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x28
	.long	.LASF620
	.byte	0x1
	.value	0x1ad
	.long	0x1f16
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x24
	.long	.LASF684
	.byte	0x1
	.value	0x1d9
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x226b
	.uleb128 0x25
	.string	"df"
	.byte	0x1
	.value	0x1da
	.long	0x2128
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x26
	.long	.LASF343
	.byte	0x1
	.value	0x1db
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x27
	.string	"i"
	.byte	0x1
	.value	0x1dd
	.long	0x266
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x29
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x27
	.string	"bb"
	.byte	0x1
	.value	0x1e1
	.long	0x1b99
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x28
	.long	.LASF620
	.byte	0x1
	.value	0x1e2
	.long	0x1f16
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x24
	.long	.LASF685
	.byte	0x1
	.value	0x214
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x22c3
	.uleb128 0x25
	.string	"df"
	.byte	0x1
	.value	0x215
	.long	0x2128
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x26
	.long	.LASF645
	.byte	0x1
	.value	0x216
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x28
	.long	.LASF686
	.byte	0x1
	.value	0x218
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x27
	.string	"i"
	.byte	0x1
	.value	0x219
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x24
	.long	.LASF687
	.byte	0x1
	.value	0x246
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x2320
	.uleb128 0x25
	.string	"df"
	.byte	0x1
	.value	0x247
	.long	0x2128
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x29
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.uleb128 0x27
	.string	"__o"
	.byte	0x1
	.value	0x270
	.long	0x1068
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x28
	.long	.LASF688
	.byte	0x1
	.value	0x270
	.long	0x26d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x2a
	.long	.LASF689
	.byte	0x1
	.value	0x276
	.long	0x2d
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x2370
	.uleb128 0x26
	.long	.LASF46
	.byte	0x1
	.value	0x277
	.long	0x266
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x27
	.string	"reg"
	.byte	0x1
	.value	0x279
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x27
	.string	"use"
	.byte	0x1
	.value	0x27a
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2a
	.long	.LASF690
	.byte	0x1
	.value	0x285
	.long	0x2d
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x23c0
	.uleb128 0x26
	.long	.LASF46
	.byte	0x1
	.value	0x286
	.long	0x266
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x27
	.string	"reg"
	.byte	0x1
	.value	0x288
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x27
	.string	"use"
	.byte	0x1
	.value	0x289
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2a
	.long	.LASF691
	.byte	0x1
	.value	0x296
	.long	0x1bf4
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x2497
	.uleb128 0x25
	.string	"ref"
	.byte	0x1
	.value	0x297
	.long	0x1c5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x26
	.long	.LASF417
	.byte	0x1
	.value	0x298
	.long	0x1bf4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x28
	.long	.LASF692
	.byte	0x1
	.value	0x29a
	.long	0x1bf4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x29
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.uleb128 0x27
	.string	"__h"
	.byte	0x1
	.value	0x29c
	.long	0x1068
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2b
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.long	0x2465
	.uleb128 0x27
	.string	"__o"
	.byte	0x1
	.value	0x29c
	.long	0x1068
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x28
	.long	.LASF693
	.byte	0x1
	.value	0x29c
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.byte	0
	.uleb128 0x29
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.uleb128 0x28
	.long	.LASF694
	.byte	0x1
	.value	0x29c
	.long	0x1068
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.long	.LASF695
	.byte	0x1
	.value	0x29c
	.long	0x26d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2a
	.long	.LASF696
	.byte	0x1
	.value	0x2a6
	.long	0x1bf4
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x24fa
	.uleb128 0x26
	.long	.LASF697
	.byte	0x1
	.value	0x2a7
	.long	0x24fa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x25
	.string	"ref"
	.byte	0x1
	.value	0x2a8
	.long	0x1c5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x28
	.long	.LASF692
	.byte	0x1
	.value	0x2aa
	.long	0x1bf4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2c
	.long	.LASF710
	.long	0x2510
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.10827
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1bf4
	.uleb128 0x12
	.long	0x2c0
	.long	0x2510
	.uleb128 0x13
	.long	0x140
	.byte	0xd
	.byte	0
	.uleb128 0x15
	.long	0x2500
	.uleb128 0x2d
	.long	.LASF762
	.byte	0x1
	.value	0x2d2
	.long	0x139
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x2555
	.uleb128 0x25
	.string	"df"
	.byte	0x1
	.value	0x2d3
	.long	0x2128
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x25
	.string	"ref"
	.byte	0x1
	.value	0x2d4
	.long	0x1c5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x24
	.long	.LASF698
	.byte	0x1
	.value	0x2e6
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x25d0
	.uleb128 0x25
	.string	"df"
	.byte	0x1
	.value	0x2e7
	.long	0x2128
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x25
	.string	"def"
	.byte	0x1
	.value	0x2e8
	.long	0x1c5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x28
	.long	.LASF699
	.byte	0x1
	.value	0x2ea
	.long	0x1bf4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x28
	.long	.LASF700
	.byte	0x1
	.value	0x2eb
	.long	0x266
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x29
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.uleb128 0x27
	.string	"use"
	.byte	0x1
	.value	0x2f0
	.long	0x1c5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x24
	.long	.LASF701
	.byte	0x1
	.value	0x300
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0x264b
	.uleb128 0x25
	.string	"df"
	.byte	0x1
	.value	0x301
	.long	0x2128
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x25
	.string	"use"
	.byte	0x1
	.value	0x302
	.long	0x1c5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x28
	.long	.LASF702
	.byte	0x1
	.value	0x304
	.long	0x1bf4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x28
	.long	.LASF703
	.byte	0x1
	.value	0x305
	.long	0x266
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x29
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.uleb128 0x27
	.string	"def"
	.byte	0x1
	.value	0x30a
	.long	0x1c5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x2a
	.long	.LASF704
	.byte	0x1
	.value	0x31d
	.long	0x1c5a
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0x2770
	.uleb128 0x25
	.string	"df"
	.byte	0x1
	.value	0x31e
	.long	0x2128
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x25
	.string	"reg"
	.byte	0x1
	.value	0x31f
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x25
	.string	"loc"
	.byte	0x1
	.value	0x320
	.long	0xed4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x26
	.long	.LASF607
	.byte	0x1
	.value	0x321
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x26
	.long	.LASF705
	.byte	0x1
	.value	0x322
	.long	0x1baa
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x26
	.long	.LASF706
	.byte	0x1
	.value	0x323
	.long	0x1c60
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x28
	.long	.LASF707
	.byte	0x1
	.value	0x325
	.long	0x1c5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x27
	.string	"uid"
	.byte	0x1
	.value	0x326
	.long	0x266
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x29
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.uleb128 0x27
	.string	"__h"
	.byte	0x1
	.value	0x328
	.long	0x1068
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2b
	.quad	.LBB11
	.quad	.LBE11-.LBB11
	.long	0x273e
	.uleb128 0x27
	.string	"__o"
	.byte	0x1
	.value	0x328
	.long	0x1068
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x28
	.long	.LASF693
	.byte	0x1
	.value	0x328
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x29
	.quad	.LBB12
	.quad	.LBE12-.LBB12
	.uleb128 0x28
	.long	.LASF694
	.byte	0x1
	.value	0x328
	.long	0x1068
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.long	.LASF695
	.byte	0x1
	.value	0x328
	.long	0x26d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x24
	.long	.LASF708
	.byte	0x1
	.value	0x351
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0x27e8
	.uleb128 0x25
	.string	"df"
	.byte	0x1
	.value	0x352
	.long	0x2128
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x25
	.string	"reg"
	.byte	0x1
	.value	0x353
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x25
	.string	"loc"
	.byte	0x1
	.value	0x354
	.long	0xed4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x26
	.long	.LASF607
	.byte	0x1
	.value	0x355
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x26
	.long	.LASF705
	.byte	0x1
	.value	0x356
	.long	0x1baa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x26
	.long	.LASF706
	.byte	0x1
	.value	0x357
	.long	0x1c60
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x24
	.long	.LASF709
	.byte	0x1
	.value	0x360
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0x28b4
	.uleb128 0x25
	.string	"df"
	.byte	0x1
	.value	0x361
	.long	0x2128
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x25
	.string	"reg"
	.byte	0x1
	.value	0x362
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x25
	.string	"loc"
	.byte	0x1
	.value	0x363
	.long	0xed4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x26
	.long	.LASF607
	.byte	0x1
	.value	0x364
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x26
	.long	.LASF705
	.byte	0x1
	.value	0x365
	.long	0x1baa
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x26
	.long	.LASF706
	.byte	0x1
	.value	0x366
	.long	0x1c60
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x28
	.long	.LASF46
	.byte	0x1
	.value	0x368
	.long	0x266
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.long	.LASF710
	.long	0x28b4
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.10889
	.uleb128 0x29
	.quad	.LBB13
	.quad	.LBE13-.LBB13
	.uleb128 0x27
	.string	"i"
	.byte	0x1
	.value	0x37e
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x28
	.long	.LASF711
	.byte	0x1
	.value	0x37f
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.byte	0
	.uleb128 0x15
	.long	0x2500
	.uleb128 0x2e
	.long	.LASF712
	.byte	0x1
	.value	0x399
	.long	0x28e9
	.quad	.LFB18
	.quad	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0x28e9
	.uleb128 0x25
	.string	"x"
	.byte	0x1
	.value	0x39a
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.byte	0x2
	.long	.LASF713
	.uleb128 0x24
	.long	.LASF714
	.byte	0x1
	.value	0x3a7
	.quad	.LFB19
	.quad	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0x2995
	.uleb128 0x25
	.string	"df"
	.byte	0x1
	.value	0x3a8
	.long	0x2128
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x25
	.string	"x"
	.byte	0x1
	.value	0x3a9
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x25
	.string	"bb"
	.byte	0x1
	.value	0x3aa
	.long	0x1b99
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x26
	.long	.LASF607
	.byte	0x1
	.value	0x3ab
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x27
	.string	"loc"
	.byte	0x1
	.value	0x3ad
	.long	0xed4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x27
	.string	"dst"
	.byte	0x1
	.value	0x3ae
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x28
	.long	.LASF343
	.byte	0x1
	.value	0x3af
	.long	0x1c60
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x29
	.quad	.LBB14
	.quad	.LBE14-.LBB14
	.uleb128 0x27
	.string	"i"
	.byte	0x1
	.value	0x3b5
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.byte	0
	.uleb128 0x24
	.long	.LASF715
	.byte	0x1
	.value	0x3d7
	.quad	.LFB20
	.quad	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0x2a1a
	.uleb128 0x25
	.string	"df"
	.byte	0x1
	.value	0x3d8
	.long	0x2128
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x25
	.string	"x"
	.byte	0x1
	.value	0x3d9
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x25
	.string	"bb"
	.byte	0x1
	.value	0x3da
	.long	0x1b99
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x26
	.long	.LASF607
	.byte	0x1
	.value	0x3db
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x28
	.long	.LASF0
	.byte	0x1
	.value	0x3dd
	.long	0x6aa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x29
	.quad	.LBB15
	.quad	.LBE15-.LBB15
	.uleb128 0x27
	.string	"i"
	.byte	0x1
	.value	0x3e6
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x24
	.long	.LASF716
	.byte	0x1
	.value	0x3f5
	.quad	.LFB21
	.quad	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.long	0x2b6b
	.uleb128 0x25
	.string	"df"
	.byte	0x1
	.value	0x3f6
	.long	0x2128
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x25
	.string	"loc"
	.byte	0x1
	.value	0x3f7
	.long	0xed4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x26
	.long	.LASF705
	.byte	0x1
	.value	0x3f8
	.long	0x1baa
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x25
	.string	"bb"
	.byte	0x1
	.value	0x3f9
	.long	0x1b99
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x26
	.long	.LASF607
	.byte	0x1
	.value	0x3fa
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x26
	.long	.LASF343
	.byte	0x1
	.value	0x3fb
	.long	0x1c60
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x28
	.long	.LASF0
	.byte	0x1
	.value	0x3fd
	.long	0x6aa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x27
	.string	"x"
	.byte	0x1
	.value	0x3fe
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.long	.LASF874
	.byte	0x1
	.value	0x3ff
	.quad	.L154
	.uleb128 0x2c
	.long	.LASF710
	.long	0x2b7b
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.10957
	.uleb128 0x2b
	.quad	.LBB16
	.quad	.LBE16-.LBB16
	.long	0x2afa
	.uleb128 0x27
	.string	"dst"
	.byte	0x1
	.value	0x433
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x2b
	.quad	.LBB17
	.quad	.LBE17-.LBB17
	.long	0x2b1d
	.uleb128 0x27
	.string	"j"
	.byte	0x1
	.value	0x478
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x29
	.quad	.LBB18
	.quad	.LBE18-.LBB18
	.uleb128 0x27
	.string	"fmt"
	.byte	0x1
	.value	0x493
	.long	0x4cd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x27
	.string	"i"
	.byte	0x1
	.value	0x494
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x29
	.quad	.LBB19
	.quad	.LBE19-.LBB19
	.uleb128 0x27
	.string	"j"
	.byte	0x1
	.value	0x4a4
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	0x2c0
	.long	0x2b7b
	.uleb128 0x13
	.long	0x140
	.byte	0xe
	.byte	0
	.uleb128 0x15
	.long	0x2b6b
	.uleb128 0x24
	.long	.LASF717
	.byte	0x1
	.value	0x4b0
	.quad	.LFB22
	.quad	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.long	0x2c6f
	.uleb128 0x25
	.string	"df"
	.byte	0x1
	.value	0x4b1
	.long	0x2128
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x25
	.string	"bb"
	.byte	0x1
	.value	0x4b2
	.long	0x1b99
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x26
	.long	.LASF607
	.byte	0x1
	.value	0x4b3
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x27
	.string	"i"
	.byte	0x1
	.value	0x4b5
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x29
	.quad	.LBB20
	.quad	.LBE20-.LBB20
	.uleb128 0x28
	.long	.LASF718
	.byte	0x1
	.value	0x4b9
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2b
	.quad	.LBB21
	.quad	.LBE21-.LBB21
	.long	0x2c2b
	.uleb128 0x28
	.long	.LASF718
	.byte	0x1
	.value	0x4cf
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x27
	.string	"x"
	.byte	0x1
	.value	0x4d0
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x29
	.quad	.LBB22
	.quad	.LBE22-.LBB22
	.uleb128 0x28
	.long	.LASF718
	.byte	0x1
	.value	0x4f4
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x29
	.quad	.LBB23
	.quad	.LBE23-.LBB23
	.uleb128 0x28
	.long	.LASF719
	.byte	0x1
	.value	0x4fc
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x24
	.long	.LASF720
	.byte	0x1
	.value	0x50e
	.quad	.LFB23
	.quad	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.long	0x2cb9
	.uleb128 0x25
	.string	"df"
	.byte	0x1
	.value	0x50f
	.long	0x2128
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x25
	.string	"bb"
	.byte	0x1
	.value	0x510
	.long	0x1b99
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x28
	.long	.LASF607
	.byte	0x1
	.value	0x512
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x24
	.long	.LASF721
	.byte	0x1
	.value	0x524
	.quad	.LFB24
	.quad	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.long	0x2db6
	.uleb128 0x25
	.string	"df"
	.byte	0x1
	.value	0x525
	.long	0x2128
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x26
	.long	.LASF722
	.byte	0x1
	.value	0x526
	.long	0x1a75
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x27
	.string	"bb"
	.byte	0x1
	.value	0x528
	.long	0x1b99
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x29
	.quad	.LBB24
	.quad	.LBE24-.LBB24
	.uleb128 0x28
	.long	.LASF723
	.byte	0x1
	.value	0x52a
	.long	0x266
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x29
	.quad	.LBB25
	.quad	.LBE25-.LBB25
	.uleb128 0x28
	.long	.LASF724
	.byte	0x1
	.value	0x52a
	.long	0x1a6f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x28
	.long	.LASF725
	.byte	0x1
	.value	0x52a
	.long	0x266
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x28
	.long	.LASF726
	.byte	0x1
	.value	0x52a
	.long	0x266
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x28
	.long	.LASF727
	.byte	0x1
	.value	0x52a
	.long	0x266
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x29
	.quad	.LBB26
	.quad	.LBE26-.LBB26
	.uleb128 0x28
	.long	.LASF728
	.byte	0x1
	.value	0x52a
	.long	0x281
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x29
	.quad	.LBB27
	.quad	.LBE27-.LBB27
	.uleb128 0x28
	.long	.LASF729
	.byte	0x1
	.value	0x52a
	.long	0x281
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x24
	.long	.LASF730
	.byte	0x1
	.value	0x536
	.quad	.LFB25
	.quad	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.long	0x2e62
	.uleb128 0x25
	.string	"df"
	.byte	0x1
	.value	0x537
	.long	0x2128
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x25
	.string	"bb"
	.byte	0x1
	.value	0x538
	.long	0x1b99
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x28
	.long	.LASF607
	.byte	0x1
	.value	0x53a
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x29
	.quad	.LBB28
	.quad	.LBE28-.LBB28
	.uleb128 0x28
	.long	.LASF692
	.byte	0x1
	.value	0x544
	.long	0x1bf4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x27
	.string	"uid"
	.byte	0x1
	.value	0x545
	.long	0x266
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x29
	.quad	.LBB29
	.quad	.LBE29-.LBB29
	.uleb128 0x27
	.string	"def"
	.byte	0x1
	.value	0x54c
	.long	0x1c5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.long	.LASF700
	.byte	0x1
	.value	0x54d
	.long	0x266
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x24
	.long	.LASF731
	.byte	0x1
	.value	0x559
	.quad	.LFB26
	.quad	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.long	0x2f5f
	.uleb128 0x25
	.string	"df"
	.byte	0x1
	.value	0x55a
	.long	0x2128
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x26
	.long	.LASF722
	.byte	0x1
	.value	0x55b
	.long	0x1a75
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x27
	.string	"bb"
	.byte	0x1
	.value	0x55d
	.long	0x1b99
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x29
	.quad	.LBB30
	.quad	.LBE30-.LBB30
	.uleb128 0x28
	.long	.LASF723
	.byte	0x1
	.value	0x55f
	.long	0x266
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x29
	.quad	.LBB31
	.quad	.LBE31-.LBB31
	.uleb128 0x28
	.long	.LASF724
	.byte	0x1
	.value	0x55f
	.long	0x1a6f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x28
	.long	.LASF725
	.byte	0x1
	.value	0x55f
	.long	0x266
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x28
	.long	.LASF726
	.byte	0x1
	.value	0x55f
	.long	0x266
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x28
	.long	.LASF727
	.byte	0x1
	.value	0x55f
	.long	0x266
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x29
	.quad	.LBB32
	.quad	.LBE32-.LBB32
	.uleb128 0x28
	.long	.LASF728
	.byte	0x1
	.value	0x55f
	.long	0x281
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x29
	.quad	.LBB33
	.quad	.LBE33-.LBB33
	.uleb128 0x28
	.long	.LASF729
	.byte	0x1
	.value	0x55f
	.long	0x281
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x24
	.long	.LASF732
	.byte	0x1
	.value	0x569
	.quad	.LFB27
	.quad	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.long	0x300b
	.uleb128 0x25
	.string	"df"
	.byte	0x1
	.value	0x56a
	.long	0x2128
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x25
	.string	"bb"
	.byte	0x1
	.value	0x56b
	.long	0x1b99
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x28
	.long	.LASF607
	.byte	0x1
	.value	0x56d
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x29
	.quad	.LBB34
	.quad	.LBE34-.LBB34
	.uleb128 0x28
	.long	.LASF692
	.byte	0x1
	.value	0x575
	.long	0x1bf4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x27
	.string	"uid"
	.byte	0x1
	.value	0x576
	.long	0x266
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x29
	.quad	.LBB35
	.quad	.LBE35-.LBB35
	.uleb128 0x27
	.string	"use"
	.byte	0x1
	.value	0x57d
	.long	0x1c5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.long	.LASF703
	.byte	0x1
	.value	0x57e
	.long	0x266
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x24
	.long	.LASF733
	.byte	0x1
	.value	0x58a
	.quad	.LFB28
	.quad	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.long	0x3108
	.uleb128 0x25
	.string	"df"
	.byte	0x1
	.value	0x58b
	.long	0x2128
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x26
	.long	.LASF722
	.byte	0x1
	.value	0x58c
	.long	0x1a75
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x27
	.string	"bb"
	.byte	0x1
	.value	0x58e
	.long	0x1b99
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x29
	.quad	.LBB36
	.quad	.LBE36-.LBB36
	.uleb128 0x28
	.long	.LASF723
	.byte	0x1
	.value	0x590
	.long	0x266
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x29
	.quad	.LBB37
	.quad	.LBE37-.LBB37
	.uleb128 0x28
	.long	.LASF724
	.byte	0x1
	.value	0x590
	.long	0x1a6f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x28
	.long	.LASF725
	.byte	0x1
	.value	0x590
	.long	0x266
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x28
	.long	.LASF726
	.byte	0x1
	.value	0x590
	.long	0x266
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x28
	.long	.LASF727
	.byte	0x1
	.value	0x590
	.long	0x266
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x29
	.quad	.LBB38
	.quad	.LBE38-.LBB38
	.uleb128 0x28
	.long	.LASF728
	.byte	0x1
	.value	0x590
	.long	0x281
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x29
	.quad	.LBB39
	.quad	.LBE39-.LBB39
	.uleb128 0x28
	.long	.LASF729
	.byte	0x1
	.value	0x590
	.long	0x281
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x24
	.long	.LASF734
	.byte	0x1
	.value	0x599
	.quad	.LFB29
	.quad	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.long	0x322a
	.uleb128 0x25
	.string	"df"
	.byte	0x1
	.value	0x59a
	.long	0x2128
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x25
	.string	"bb"
	.byte	0x1
	.value	0x59b
	.long	0x1b99
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x25
	.string	"ru"
	.byte	0x1
	.value	0x59c
	.long	0x1a75
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x28
	.long	.LASF620
	.byte	0x1
	.value	0x59e
	.long	0x1f16
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x28
	.long	.LASF607
	.byte	0x1
	.value	0x59f
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x29
	.quad	.LBB40
	.quad	.LBE40-.LBB40
	.uleb128 0x28
	.long	.LASF735
	.byte	0x1
	.value	0x5a8
	.long	0x1bf4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x28
	.long	.LASF736
	.byte	0x1
	.value	0x5a9
	.long	0x1bf4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x27
	.string	"uid"
	.byte	0x1
	.value	0x5aa
	.long	0x266
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2b
	.quad	.LBB41
	.quad	.LBE41-.LBB41
	.long	0x3207
	.uleb128 0x27
	.string	"def"
	.byte	0x1
	.value	0x5b2
	.long	0x1c5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.long	.LASF700
	.byte	0x1
	.value	0x5b3
	.long	0x266
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x29
	.quad	.LBB42
	.quad	.LBE42-.LBB42
	.uleb128 0x27
	.string	"use"
	.byte	0x1
	.value	0x5bd
	.long	0x1c5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x29
	.quad	.LBB43
	.quad	.LBE43-.LBB43
	.uleb128 0x27
	.string	"use"
	.byte	0x1
	.value	0x5cc
	.long	0x1c5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x24
	.long	.LASF737
	.byte	0x1
	.value	0x5d6
	.quad	.LFB30
	.quad	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.long	0x3337
	.uleb128 0x25
	.string	"df"
	.byte	0x1
	.value	0x5d7
	.long	0x2128
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x26
	.long	.LASF722
	.byte	0x1
	.value	0x5d8
	.long	0x1a75
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x27
	.string	"ru"
	.byte	0x1
	.value	0x5da
	.long	0x1a75
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x27
	.string	"bb"
	.byte	0x1
	.value	0x5db
	.long	0x1b99
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x29
	.quad	.LBB44
	.quad	.LBE44-.LBB44
	.uleb128 0x28
	.long	.LASF723
	.byte	0x1
	.value	0x5df
	.long	0x266
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x29
	.quad	.LBB45
	.quad	.LBE45-.LBB45
	.uleb128 0x28
	.long	.LASF724
	.byte	0x1
	.value	0x5df
	.long	0x1a6f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x28
	.long	.LASF725
	.byte	0x1
	.value	0x5df
	.long	0x266
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x28
	.long	.LASF726
	.byte	0x1
	.value	0x5df
	.long	0x266
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x28
	.long	.LASF727
	.byte	0x1
	.value	0x5df
	.long	0x266
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x29
	.quad	.LBB46
	.quad	.LBE46-.LBB46
	.uleb128 0x28
	.long	.LASF728
	.byte	0x1
	.value	0x5df
	.long	0x281
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x29
	.quad	.LBB47
	.quad	.LBE47-.LBB47
	.uleb128 0x28
	.long	.LASF729
	.byte	0x1
	.value	0x5df
	.long	0x281
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x24
	.long	.LASF738
	.byte	0x1
	.value	0x5ea
	.quad	.LFB31
	.quad	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.long	0x346a
	.uleb128 0x25
	.string	"df"
	.byte	0x1
	.value	0x5eb
	.long	0x2128
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x25
	.string	"bb"
	.byte	0x1
	.value	0x5ec
	.long	0x1b99
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x28
	.long	.LASF620
	.byte	0x1
	.value	0x5ee
	.long	0x1f16
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x28
	.long	.LASF636
	.byte	0x1
	.value	0x5ef
	.long	0x1f1c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x28
	.long	.LASF607
	.byte	0x1
	.value	0x5f0
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x29
	.quad	.LBB48
	.quad	.LBE48-.LBB48
	.uleb128 0x27
	.string	"uid"
	.byte	0x1
	.value	0x5f9
	.long	0x266
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x28
	.long	.LASF736
	.byte	0x1
	.value	0x5fa
	.long	0x1bf4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x28
	.long	.LASF735
	.byte	0x1
	.value	0x5fb
	.long	0x1bf4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2b
	.quad	.LBB49
	.quad	.LBE49-.LBB49
	.long	0x3437
	.uleb128 0x27
	.string	"use"
	.byte	0x1
	.value	0x603
	.long	0x1c5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.long	.LASF46
	.byte	0x1
	.value	0x604
	.long	0x266
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x29
	.quad	.LBB50
	.quad	.LBE50-.LBB50
	.uleb128 0x27
	.string	"def"
	.byte	0x1
	.value	0x61b
	.long	0x1c5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x29
	.quad	.LBB51
	.quad	.LBE51-.LBB51
	.uleb128 0x27
	.string	"def"
	.byte	0x1
	.value	0x62a
	.long	0x1c5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x28
	.long	.LASF700
	.byte	0x1
	.value	0x62b
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x24
	.long	.LASF739
	.byte	0x1
	.value	0x636
	.quad	.LFB32
	.quad	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.long	0x3567
	.uleb128 0x25
	.string	"df"
	.byte	0x1
	.value	0x637
	.long	0x2128
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x26
	.long	.LASF722
	.byte	0x1
	.value	0x638
	.long	0x1a75
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x27
	.string	"bb"
	.byte	0x1
	.value	0x63a
	.long	0x1b99
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x29
	.quad	.LBB52
	.quad	.LBE52-.LBB52
	.uleb128 0x28
	.long	.LASF723
	.byte	0x1
	.value	0x63c
	.long	0x266
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x29
	.quad	.LBB53
	.quad	.LBE53-.LBB53
	.uleb128 0x28
	.long	.LASF724
	.byte	0x1
	.value	0x63c
	.long	0x1a6f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x28
	.long	.LASF725
	.byte	0x1
	.value	0x63c
	.long	0x266
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x28
	.long	.LASF726
	.byte	0x1
	.value	0x63c
	.long	0x266
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x28
	.long	.LASF727
	.byte	0x1
	.value	0x63c
	.long	0x266
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x29
	.quad	.LBB54
	.quad	.LBE54-.LBB54
	.uleb128 0x28
	.long	.LASF728
	.byte	0x1
	.value	0x63c
	.long	0x281
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x29
	.quad	.LBB55
	.quad	.LBE55-.LBB55
	.uleb128 0x28
	.long	.LASF729
	.byte	0x1
	.value	0x63c
	.long	0x281
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x24
	.long	.LASF740
	.byte	0x1
	.value	0x645
	.quad	.LFB33
	.quad	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.long	0x35ed
	.uleb128 0x25
	.string	"bb"
	.byte	0x1
	.value	0x646
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x26
	.long	.LASF741
	.byte	0x1
	.value	0x647
	.long	0x4e6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x25
	.string	"in"
	.byte	0x1
	.value	0x648
	.long	0x1a75
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x25
	.string	"out"
	.byte	0x1
	.value	0x648
	.long	0x1a75
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x25
	.string	"gen"
	.byte	0x1
	.value	0x648
	.long	0x1a75
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x26
	.long	.LASF742
	.byte	0x1
	.value	0x648
	.long	0x1a75
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x26
	.long	.LASF571
	.byte	0x1
	.value	0x649
	.long	0x26d
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.long	.LASF743
	.byte	0x1
	.value	0x64e
	.quad	.LFB34
	.quad	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.long	0x3673
	.uleb128 0x25
	.string	"bb"
	.byte	0x1
	.value	0x64f
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x26
	.long	.LASF741
	.byte	0x1
	.value	0x650
	.long	0x4e6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x25
	.string	"in"
	.byte	0x1
	.value	0x651
	.long	0x1a75
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x25
	.string	"out"
	.byte	0x1
	.value	0x651
	.long	0x1a75
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x25
	.string	"gen"
	.byte	0x1
	.value	0x651
	.long	0x1a75
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x26
	.long	.LASF742
	.byte	0x1
	.value	0x651
	.long	0x1a75
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x26
	.long	.LASF571
	.byte	0x1
	.value	0x652
	.long	0x26d
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.long	.LASF744
	.byte	0x1
	.value	0x658
	.quad	.LFB35
	.quad	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.long	0x36f9
	.uleb128 0x25
	.string	"bb"
	.byte	0x1
	.value	0x659
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x26
	.long	.LASF741
	.byte	0x1
	.value	0x65a
	.long	0x4e6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x25
	.string	"in"
	.byte	0x1
	.value	0x65b
	.long	0x1a75
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x25
	.string	"out"
	.byte	0x1
	.value	0x65b
	.long	0x1a75
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x25
	.string	"use"
	.byte	0x1
	.value	0x65b
	.long	0x1a75
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x25
	.string	"def"
	.byte	0x1
	.value	0x65b
	.long	0x1a75
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x26
	.long	.LASF571
	.byte	0x1
	.value	0x65c
	.long	0x26d
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.long	.LASF745
	.byte	0x1
	.value	0x664
	.quad	.LFB36
	.quad	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.long	0x37e6
	.uleb128 0x25
	.string	"df"
	.byte	0x1
	.value	0x665
	.long	0x2128
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x25
	.string	"bb"
	.byte	0x1
	.value	0x666
	.long	0x1b99
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x28
	.long	.LASF620
	.byte	0x1
	.value	0x668
	.long	0x1f16
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.long	.LASF607
	.byte	0x1
	.value	0x669
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x29
	.quad	.LBB56
	.quad	.LBE56-.LBB56
	.uleb128 0x27
	.string	"uid"
	.byte	0x1
	.value	0x66e
	.long	0x266
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x28
	.long	.LASF735
	.byte	0x1
	.value	0x66f
	.long	0x1bf4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x29
	.quad	.LBB57
	.quad	.LBE57-.LBB57
	.uleb128 0x27
	.string	"def"
	.byte	0x1
	.value	0x676
	.long	0x1c5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x28
	.long	.LASF46
	.byte	0x1
	.value	0x677
	.long	0x266
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x28
	.long	.LASF746
	.byte	0x1
	.value	0x678
	.long	0x1bf4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x29
	.quad	.LBB58
	.quad	.LBE58-.LBB58
	.uleb128 0x28
	.long	.LASF747
	.byte	0x1
	.value	0x67d
	.long	0x1c5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x24
	.long	.LASF748
	.byte	0x1
	.value	0x693
	.quad	.LFB37
	.quad	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.long	0x38e3
	.uleb128 0x25
	.string	"df"
	.byte	0x1
	.value	0x694
	.long	0x2128
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x26
	.long	.LASF722
	.byte	0x1
	.value	0x695
	.long	0x1a75
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x27
	.string	"bb"
	.byte	0x1
	.value	0x697
	.long	0x1b99
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x29
	.quad	.LBB59
	.quad	.LBE59-.LBB59
	.uleb128 0x28
	.long	.LASF723
	.byte	0x1
	.value	0x699
	.long	0x266
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x29
	.quad	.LBB60
	.quad	.LBE60-.LBB60
	.uleb128 0x28
	.long	.LASF724
	.byte	0x1
	.value	0x699
	.long	0x1a6f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x28
	.long	.LASF725
	.byte	0x1
	.value	0x699
	.long	0x266
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x28
	.long	.LASF726
	.byte	0x1
	.value	0x699
	.long	0x266
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x28
	.long	.LASF727
	.byte	0x1
	.value	0x699
	.long	0x266
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x29
	.quad	.LBB61
	.quad	.LBE61-.LBB61
	.uleb128 0x28
	.long	.LASF728
	.byte	0x1
	.value	0x699
	.long	0x281
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x29
	.quad	.LBB62
	.quad	.LBE62-.LBB62
	.uleb128 0x28
	.long	.LASF729
	.byte	0x1
	.value	0x699
	.long	0x281
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x24
	.long	.LASF749
	.byte	0x1
	.value	0x6a3
	.quad	.LFB38
	.quad	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.long	0x39f6
	.uleb128 0x25
	.string	"df"
	.byte	0x1
	.value	0x6a4
	.long	0x2128
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x25
	.string	"bb"
	.byte	0x1
	.value	0x6a5
	.long	0x1b99
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x28
	.long	.LASF620
	.byte	0x1
	.value	0x6ab
	.long	0x1f16
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x28
	.long	.LASF607
	.byte	0x1
	.value	0x6ac
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x29
	.quad	.LBB63
	.quad	.LBE63-.LBB63
	.uleb128 0x27
	.string	"uid"
	.byte	0x1
	.value	0x6b2
	.long	0x266
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x28
	.long	.LASF735
	.byte	0x1
	.value	0x6b3
	.long	0x1bf4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x28
	.long	.LASF736
	.byte	0x1
	.value	0x6b4
	.long	0x1bf4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2b
	.quad	.LBB64
	.quad	.LBE64-.LBB64
	.long	0x39d3
	.uleb128 0x27
	.string	"def"
	.byte	0x1
	.value	0x6bb
	.long	0x1c5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.long	.LASF700
	.byte	0x1
	.value	0x6bc
	.long	0x266
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x29
	.quad	.LBB65
	.quad	.LBE65-.LBB65
	.uleb128 0x27
	.string	"use"
	.byte	0x1
	.value	0x6c1
	.long	0x1c5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x29
	.quad	.LBB66
	.quad	.LBE66-.LBB66
	.uleb128 0x27
	.string	"use"
	.byte	0x1
	.value	0x6d0
	.long	0x1c5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x24
	.long	.LASF750
	.byte	0x1
	.value	0x6dc
	.quad	.LFB39
	.quad	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.long	0x3af3
	.uleb128 0x25
	.string	"df"
	.byte	0x1
	.value	0x6dd
	.long	0x2128
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x26
	.long	.LASF722
	.byte	0x1
	.value	0x6de
	.long	0x1a75
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x27
	.string	"bb"
	.byte	0x1
	.value	0x6e0
	.long	0x1b99
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x29
	.quad	.LBB67
	.quad	.LBE67-.LBB67
	.uleb128 0x28
	.long	.LASF723
	.byte	0x1
	.value	0x6e2
	.long	0x266
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x29
	.quad	.LBB68
	.quad	.LBE68-.LBB68
	.uleb128 0x28
	.long	.LASF724
	.byte	0x1
	.value	0x6e2
	.long	0x1a6f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x28
	.long	.LASF725
	.byte	0x1
	.value	0x6e2
	.long	0x266
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x28
	.long	.LASF726
	.byte	0x1
	.value	0x6e2
	.long	0x266
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x28
	.long	.LASF727
	.byte	0x1
	.value	0x6e2
	.long	0x266
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x29
	.quad	.LBB69
	.quad	.LBE69-.LBB69
	.uleb128 0x28
	.long	.LASF728
	.byte	0x1
	.value	0x6e2
	.long	0x281
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x29
	.quad	.LBB70
	.quad	.LBE70-.LBB70
	.uleb128 0x28
	.long	.LASF729
	.byte	0x1
	.value	0x6e2
	.long	0x281
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x24
	.long	.LASF751
	.byte	0x1
	.value	0x6eb
	.quad	.LFB40
	.quad	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.long	0x3bd3
	.uleb128 0x25
	.string	"df"
	.byte	0x1
	.value	0x6ec
	.long	0x2128
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x25
	.string	"bb"
	.byte	0x1
	.value	0x6ed
	.long	0x1b99
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x28
	.long	.LASF620
	.byte	0x1
	.value	0x6ef
	.long	0x1f16
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.long	.LASF607
	.byte	0x1
	.value	0x6f0
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x29
	.quad	.LBB71
	.quad	.LBE71-.LBB71
	.uleb128 0x27
	.string	"uid"
	.byte	0x1
	.value	0x6f5
	.long	0x266
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x28
	.long	.LASF692
	.byte	0x1
	.value	0x6f6
	.long	0x1bf4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2b
	.quad	.LBB72
	.quad	.LBE72-.LBB72
	.long	0x3bb0
	.uleb128 0x27
	.string	"def"
	.byte	0x1
	.value	0x6fd
	.long	0x1c5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x28
	.long	.LASF700
	.byte	0x1
	.value	0x6fe
	.long	0x266
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.byte	0
	.uleb128 0x29
	.quad	.LBB73
	.quad	.LBE73-.LBB73
	.uleb128 0x27
	.string	"use"
	.byte	0x1
	.value	0x708
	.long	0x1c5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x24
	.long	.LASF752
	.byte	0x1
	.value	0x713
	.quad	.LFB41
	.quad	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.long	0x3cd0
	.uleb128 0x25
	.string	"df"
	.byte	0x1
	.value	0x714
	.long	0x2128
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x26
	.long	.LASF722
	.byte	0x1
	.value	0x715
	.long	0x1a75
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x27
	.string	"bb"
	.byte	0x1
	.value	0x717
	.long	0x1b99
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x29
	.quad	.LBB74
	.quad	.LBE74-.LBB74
	.uleb128 0x28
	.long	.LASF723
	.byte	0x1
	.value	0x719
	.long	0x266
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x29
	.quad	.LBB75
	.quad	.LBE75-.LBB75
	.uleb128 0x28
	.long	.LASF724
	.byte	0x1
	.value	0x719
	.long	0x1a6f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x28
	.long	.LASF725
	.byte	0x1
	.value	0x719
	.long	0x266
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x28
	.long	.LASF726
	.byte	0x1
	.value	0x719
	.long	0x266
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x28
	.long	.LASF727
	.byte	0x1
	.value	0x719
	.long	0x266
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x29
	.quad	.LBB76
	.quad	.LBE76-.LBB76
	.uleb128 0x28
	.long	.LASF728
	.byte	0x1
	.value	0x719
	.long	0x281
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x29
	.quad	.LBB77
	.quad	.LBE77-.LBB77
	.uleb128 0x28
	.long	.LASF729
	.byte	0x1
	.value	0x719
	.long	0x281
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x24
	.long	.LASF753
	.byte	0x1
	.value	0x723
	.quad	.LFB42
	.quad	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.long	0x3e8b
	.uleb128 0x25
	.string	"df"
	.byte	0x1
	.value	0x724
	.long	0x2128
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x25
	.string	"bb"
	.byte	0x1
	.value	0x725
	.long	0x1b99
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x26
	.long	.LASF754
	.byte	0x1
	.value	0x726
	.long	0x1a75
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x28
	.long	.LASF616
	.byte	0x1
	.value	0x728
	.long	0x1f22
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x28
	.long	.LASF620
	.byte	0x1
	.value	0x729
	.long	0x1f16
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x28
	.long	.LASF607
	.byte	0x1
	.value	0x72a
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x29
	.quad	.LBB78
	.quad	.LBE78-.LBB78
	.uleb128 0x27
	.string	"uid"
	.byte	0x1
	.value	0x731
	.long	0x266
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x28
	.long	.LASF46
	.byte	0x1
	.value	0x732
	.long	0x266
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x28
	.long	.LASF692
	.byte	0x1
	.value	0x733
	.long	0x1bf4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2b
	.quad	.LBB79
	.quad	.LBE79-.LBB79
	.long	0x3dc0
	.uleb128 0x27
	.string	"def"
	.byte	0x1
	.value	0x73a
	.long	0x1c5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.long	.LASF700
	.byte	0x1
	.value	0x73b
	.long	0x266
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.byte	0
	.uleb128 0x2b
	.quad	.LBB80
	.quad	.LBE80-.LBB80
	.long	0x3df5
	.uleb128 0x27
	.string	"use"
	.byte	0x1
	.value	0x744
	.long	0x1c5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x28
	.long	.LASF703
	.byte	0x1
	.value	0x745
	.long	0x266
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.byte	0
	.uleb128 0x29
	.quad	.LBB81
	.quad	.LBE81-.LBB81
	.uleb128 0x28
	.long	.LASF724
	.byte	0x1
	.value	0x74d
	.long	0x1a6f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x28
	.long	.LASF725
	.byte	0x1
	.value	0x74d
	.long	0x266
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x28
	.long	.LASF726
	.byte	0x1
	.value	0x74d
	.long	0x266
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x28
	.long	.LASF727
	.byte	0x1
	.value	0x74d
	.long	0x266
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x29
	.quad	.LBB82
	.quad	.LBE82-.LBB82
	.uleb128 0x28
	.long	.LASF728
	.byte	0x1
	.value	0x74d
	.long	0x281
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x29
	.quad	.LBB83
	.quad	.LBE83-.LBB83
	.uleb128 0x28
	.long	.LASF729
	.byte	0x1
	.value	0x74d
	.long	0x281
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x24
	.long	.LASF755
	.byte	0x1
	.value	0x757
	.quad	.LFB43
	.quad	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.long	0x3f99
	.uleb128 0x25
	.string	"df"
	.byte	0x1
	.value	0x758
	.long	0x2128
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x26
	.long	.LASF722
	.byte	0x1
	.value	0x759
	.long	0x1a75
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x27
	.string	"bb"
	.byte	0x1
	.value	0x75b
	.long	0x1b99
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x28
	.long	.LASF754
	.byte	0x1
	.value	0x75c
	.long	0x1a75
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x29
	.quad	.LBB84
	.quad	.LBE84-.LBB84
	.uleb128 0x28
	.long	.LASF723
	.byte	0x1
	.value	0x760
	.long	0x266
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x29
	.quad	.LBB85
	.quad	.LBE85-.LBB85
	.uleb128 0x28
	.long	.LASF724
	.byte	0x1
	.value	0x760
	.long	0x1a6f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x28
	.long	.LASF725
	.byte	0x1
	.value	0x760
	.long	0x266
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x28
	.long	.LASF726
	.byte	0x1
	.value	0x760
	.long	0x266
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x28
	.long	.LASF727
	.byte	0x1
	.value	0x760
	.long	0x266
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x29
	.quad	.LBB86
	.quad	.LBE86-.LBB86
	.uleb128 0x28
	.long	.LASF728
	.byte	0x1
	.value	0x760
	.long	0x281
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x29
	.quad	.LBB87
	.quad	.LBE87-.LBB87
	.uleb128 0x28
	.long	.LASF729
	.byte	0x1
	.value	0x760
	.long	0x281
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2e
	.long	.LASF756
	.byte	0x1
	.value	0x76b
	.long	0x139
	.quad	.LFB44
	.quad	.LFE44-.LFB44
	.uleb128 0x1
	.byte	0x9c
	.long	0x3ff6
	.uleb128 0x25
	.string	"df"
	.byte	0x1
	.value	0x76c
	.long	0x2128
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x25
	.string	"bb"
	.byte	0x1
	.value	0x76d
	.long	0x1b99
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x28
	.long	.LASF607
	.byte	0x1
	.value	0x76f
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x28
	.long	.LASF615
	.byte	0x1
	.value	0x770
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x2a
	.long	.LASF757
	.byte	0x1
	.value	0x783
	.long	0x139
	.quad	.LFB45
	.quad	.LFE45-.LFB45
	.uleb128 0x1
	.byte	0x9c
	.long	0x4107
	.uleb128 0x25
	.string	"df"
	.byte	0x1
	.value	0x784
	.long	0x2128
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x26
	.long	.LASF722
	.byte	0x1
	.value	0x785
	.long	0x1a75
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x27
	.string	"bb"
	.byte	0x1
	.value	0x787
	.long	0x1b99
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x28
	.long	.LASF758
	.byte	0x1
	.value	0x788
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x29
	.quad	.LBB88
	.quad	.LBE88-.LBB88
	.uleb128 0x28
	.long	.LASF723
	.byte	0x1
	.value	0x78a
	.long	0x266
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x29
	.quad	.LBB89
	.quad	.LBE89-.LBB89
	.uleb128 0x28
	.long	.LASF724
	.byte	0x1
	.value	0x78a
	.long	0x1a6f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x28
	.long	.LASF725
	.byte	0x1
	.value	0x78a
	.long	0x266
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x28
	.long	.LASF726
	.byte	0x1
	.value	0x78a
	.long	0x266
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x28
	.long	.LASF727
	.byte	0x1
	.value	0x78a
	.long	0x266
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x29
	.quad	.LBB90
	.quad	.LBE90-.LBB90
	.uleb128 0x28
	.long	.LASF728
	.byte	0x1
	.value	0x78a
	.long	0x281
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x29
	.quad	.LBB91
	.quad	.LBE91-.LBB91
	.uleb128 0x28
	.long	.LASF729
	.byte	0x1
	.value	0x78a
	.long	0x281
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x24
	.long	.LASF759
	.byte	0x1
	.value	0x794
	.quad	.LFB46
	.quad	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.long	0x42b2
	.uleb128 0x25
	.string	"df"
	.byte	0x1
	.value	0x795
	.long	0x2128
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x26
	.long	.LASF722
	.byte	0x1
	.value	0x796
	.long	0x1a75
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x26
	.long	.LASF343
	.byte	0x1
	.value	0x797
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -164
	.uleb128 0x26
	.long	.LASF760
	.byte	0x1
	.value	0x798
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x28
	.long	.LASF761
	.byte	0x1
	.value	0x79a
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x28
	.long	.LASF683
	.byte	0x1
	.value	0x79b
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x27
	.string	"i"
	.byte	0x1
	.value	0x79c
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x2b
	.quad	.LBB92
	.quad	.LBE92-.LBB92
	.long	0x41f5
	.uleb128 0x27
	.string	"i"
	.byte	0x1
	.value	0x7f0
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x27
	.string	"in"
	.byte	0x1
	.value	0x7f1
	.long	0x42b2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x27
	.string	"out"
	.byte	0x1
	.value	0x7f2
	.long	0x42b2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x27
	.string	"gen"
	.byte	0x1
	.value	0x7f3
	.long	0x42b2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x28
	.long	.LASF742
	.byte	0x1
	.value	0x7f4
	.long	0x42b2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.byte	0
	.uleb128 0x2b
	.quad	.LBB93
	.quad	.LBE93-.LBB93
	.long	0x4256
	.uleb128 0x27
	.string	"i"
	.byte	0x1
	.value	0x815
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x27
	.string	"in"
	.byte	0x1
	.value	0x816
	.long	0x42b2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x27
	.string	"out"
	.byte	0x1
	.value	0x817
	.long	0x42b2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x27
	.string	"gen"
	.byte	0x1
	.value	0x818
	.long	0x42b2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x28
	.long	.LASF742
	.byte	0x1
	.value	0x819
	.long	0x42b2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x29
	.quad	.LBB94
	.quad	.LBE94-.LBB94
	.uleb128 0x27
	.string	"i"
	.byte	0x1
	.value	0x83d
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x27
	.string	"in"
	.byte	0x1
	.value	0x83e
	.long	0x42b2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x27
	.string	"out"
	.byte	0x1
	.value	0x83f
	.long	0x42b2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x27
	.string	"use"
	.byte	0x1
	.value	0x840
	.long	0x42b2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x27
	.string	"def"
	.byte	0x1
	.value	0x841
	.long	0x42b2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1a75
	.uleb128 0x2d
	.long	.LASF763
	.byte	0x1
	.value	0x862
	.long	0x2128
	.quad	.LFB47
	.quad	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.long	0x42e9
	.uleb128 0x27
	.string	"df"
	.byte	0x1
	.value	0x864
	.long	0x2128
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2e
	.long	.LASF764
	.byte	0x1
	.value	0x871
	.long	0x139
	.quad	.LFB48
	.quad	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.long	0x431a
	.uleb128 0x25
	.string	"df"
	.byte	0x1
	.value	0x872
	.long	0x2128
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2a
	.long	.LASF765
	.byte	0x1
	.value	0x87e
	.long	0x139
	.quad	.LFB49
	.quad	.LFE49-.LFB49
	.uleb128 0x1
	.byte	0x9c
	.long	0x43bd
	.uleb128 0x25
	.string	"df"
	.byte	0x1
	.value	0x87f
	.long	0x2128
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x27
	.string	"i"
	.byte	0x1
	.value	0x881
	.long	0x266
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2b
	.quad	.LBB95
	.quad	.LBE95-.LBB95
	.long	0x438c
	.uleb128 0x27
	.string	"def"
	.byte	0x1
	.value	0x886
	.long	0x1c5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x27
	.string	"uid"
	.byte	0x1
	.value	0x887
	.long	0x266
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x29
	.quad	.LBB96
	.quad	.LBE96-.LBB96
	.uleb128 0x27
	.string	"use"
	.byte	0x1
	.value	0x891
	.long	0x1c5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x27
	.string	"uid"
	.byte	0x1
	.value	0x892
	.long	0x266
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.byte	0
	.uleb128 0x2a
	.long	.LASF766
	.byte	0x1
	.value	0x89e
	.long	0x139
	.quad	.LFB50
	.quad	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.long	0x443b
	.uleb128 0x25
	.string	"df"
	.byte	0x1
	.value	0x89f
	.long	0x2128
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x25
	.string	"bb"
	.byte	0x1
	.value	0x8a0
	.long	0x1b99
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x28
	.long	.LASF607
	.byte	0x1
	.value	0x8a2
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x28
	.long	.LASF341
	.byte	0x1
	.value	0x8a3
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x29
	.quad	.LBB97
	.quad	.LBE97-.LBB97
	.uleb128 0x27
	.string	"uid"
	.byte	0x1
	.value	0x8ac
	.long	0x266
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.byte	0
	.uleb128 0x2a
	.long	.LASF767
	.byte	0x1
	.value	0x8c5
	.long	0x139
	.quad	.LFB51
	.quad	.LFE51-.LFB51
	.uleb128 0x1
	.byte	0x9c
	.long	0x453c
	.uleb128 0x25
	.string	"df"
	.byte	0x1
	.value	0x8c6
	.long	0x2128
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x27
	.string	"bb"
	.byte	0x1
	.value	0x8c8
	.long	0x1b99
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x28
	.long	.LASF341
	.byte	0x1
	.value	0x8c9
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x29
	.quad	.LBB98
	.quad	.LBE98-.LBB98
	.uleb128 0x28
	.long	.LASF723
	.byte	0x1
	.value	0x8d0
	.long	0x266
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x29
	.quad	.LBB99
	.quad	.LBE99-.LBB99
	.uleb128 0x28
	.long	.LASF724
	.byte	0x1
	.value	0x8d0
	.long	0x1a6f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x28
	.long	.LASF725
	.byte	0x1
	.value	0x8d0
	.long	0x266
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x28
	.long	.LASF726
	.byte	0x1
	.value	0x8d0
	.long	0x266
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x28
	.long	.LASF727
	.byte	0x1
	.value	0x8d0
	.long	0x266
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x29
	.quad	.LBB100
	.quad	.LBE100-.LBB100
	.uleb128 0x28
	.long	.LASF728
	.byte	0x1
	.value	0x8d0
	.long	0x281
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x29
	.quad	.LBB101
	.quad	.LBE101-.LBB101
	.uleb128 0x28
	.long	.LASF729
	.byte	0x1
	.value	0x8d0
	.long	0x281
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2a
	.long	.LASF768
	.byte	0x1
	.value	0x8dd
	.long	0x139
	.quad	.LFB52
	.quad	.LFE52-.LFB52
	.uleb128 0x1
	.byte	0x9c
	.long	0x4598
	.uleb128 0x25
	.string	"df"
	.byte	0x1
	.value	0x8de
	.long	0x2128
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x26
	.long	.LASF722
	.byte	0x1
	.value	0x8df
	.long	0x1a75
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x27
	.string	"j"
	.byte	0x1
	.value	0x8e1
	.long	0x266
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x28
	.long	.LASF760
	.byte	0x1
	.value	0x8e2
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2d
	.long	.LASF769
	.byte	0x1
	.value	0x8f4
	.long	0x139
	.quad	.LFB53
	.quad	.LFE53-.LFB53
	.uleb128 0x1
	.byte	0x9c
	.long	0x4609
	.uleb128 0x25
	.string	"df"
	.byte	0x1
	.value	0x8f5
	.long	0x2128
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x26
	.long	.LASF722
	.byte	0x1
	.value	0x8f6
	.long	0x1a75
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x26
	.long	.LASF343
	.byte	0x1
	.value	0x8f7
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x28
	.long	.LASF760
	.byte	0x1
	.value	0x8f9
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2c
	.long	.LASF710
	.long	0x4619
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.11605
	.byte	0
	.uleb128 0x12
	.long	0x2c0
	.long	0x4619
	.uleb128 0x13
	.long	0x140
	.byte	0xa
	.byte	0
	.uleb128 0x15
	.long	0x4609
	.uleb128 0x30
	.long	.LASF772
	.byte	0x1
	.value	0x921
	.quad	.LFB54
	.quad	.LFE54-.LFB54
	.uleb128 0x1
	.byte	0x9c
	.long	0x464b
	.uleb128 0x25
	.string	"df"
	.byte	0x1
	.value	0x922
	.long	0x2128
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x24
	.long	.LASF770
	.byte	0x1
	.value	0x92b
	.quad	.LFB55
	.quad	.LFE55-.LFB55
	.uleb128 0x1
	.byte	0x9c
	.long	0x46b3
	.uleb128 0x25
	.string	"df"
	.byte	0x1
	.value	0x92c
	.long	0x2128
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x25
	.string	"bb"
	.byte	0x1
	.value	0x92d
	.long	0x1b99
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x26
	.long	.LASF607
	.byte	0x1
	.value	0x92e
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x28
	.long	.LASF692
	.byte	0x1
	.value	0x930
	.long	0x1bf4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x27
	.string	"uid"
	.byte	0x1
	.value	0x931
	.long	0x266
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x2d
	.long	.LASF771
	.byte	0x1
	.value	0x978
	.long	0x2d
	.quad	.LFB56
	.quad	.LFE56-.LFB56
	.uleb128 0x1
	.byte	0x9c
	.long	0x4714
	.uleb128 0x25
	.string	"df"
	.byte	0x1
	.value	0x979
	.long	0x2128
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x25
	.string	"bb"
	.byte	0x1
	.value	0x97a
	.long	0x1b99
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x26
	.long	.LASF607
	.byte	0x1
	.value	0x97b
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.long	.LASF710
	.long	0x4714
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.11627
	.byte	0
	.uleb128 0x15
	.long	0x2b6b
	.uleb128 0x30
	.long	.LASF773
	.byte	0x1
	.value	0x992
	.quad	.LFB57
	.quad	.LFE57-.LFB57
	.uleb128 0x1
	.byte	0x9c
	.long	0x4772
	.uleb128 0x25
	.string	"df"
	.byte	0x1
	.value	0x993
	.long	0x2128
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x25
	.string	"bb"
	.byte	0x1
	.value	0x994
	.long	0x1b99
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x26
	.long	.LASF607
	.byte	0x1
	.value	0x995
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x27
	.string	"uid"
	.byte	0x1
	.value	0x997
	.long	0x266
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2a
	.long	.LASF774
	.byte	0x1
	.value	0x9b7
	.long	0x139
	.quad	.LFB58
	.quad	.LFE58-.LFB58
	.uleb128 0x1
	.byte	0x9c
	.long	0x47d0
	.uleb128 0x25
	.string	"px"
	.byte	0x1
	.value	0x9b8
	.long	0xed4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x26
	.long	.LASF571
	.byte	0x1
	.value	0x9b9
	.long	0x26d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x28
	.long	.LASF775
	.byte	0x1
	.value	0x9bb
	.long	0x47d0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x27
	.string	"mem"
	.byte	0x1
	.value	0x9bc
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x20e0
	.uleb128 0x2d
	.long	.LASF776
	.byte	0x1
	.value	0x9dd
	.long	0x139
	.quad	.LFB59
	.quad	.LFE59-.LFB59
	.uleb128 0x1
	.byte	0x9c
	.long	0x4854
	.uleb128 0x25
	.string	"df"
	.byte	0x1
	.value	0x9de
	.long	0x2128
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x25
	.string	"bb"
	.byte	0x1
	.value	0x9df
	.long	0x1b99
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x26
	.long	.LASF607
	.byte	0x1
	.value	0x9e0
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x25
	.string	"mem"
	.byte	0x1
	.value	0x9e1
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x25
	.string	"reg"
	.byte	0x1
	.value	0x9e2
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x28
	.long	.LASF775
	.byte	0x1
	.value	0x9e4
	.long	0x20e0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x2a
	.long	.LASF777
	.byte	0x1
	.value	0x9fe
	.long	0x139
	.quad	.LFB60
	.quad	.LFE60-.LFB60
	.uleb128 0x1
	.byte	0x9c
	.long	0x48b0
	.uleb128 0x25
	.string	"px"
	.byte	0x1
	.value	0x9ff
	.long	0xed4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x26
	.long	.LASF571
	.byte	0x1
	.value	0xa00
	.long	0x26d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x27
	.string	"x"
	.byte	0x1
	.value	0xa02
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x28
	.long	.LASF775
	.byte	0x1
	.value	0xa03
	.long	0x47d0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x30
	.long	.LASF778
	.byte	0x1
	.value	0xa16
	.quad	.LFB61
	.quad	.LFE61-.LFB61
	.uleb128 0x1
	.byte	0x9c
	.long	0x4980
	.uleb128 0x25
	.string	"df"
	.byte	0x1
	.value	0xa17
	.long	0x2128
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x26
	.long	.LASF722
	.byte	0x1
	.value	0xa18
	.long	0x1a75
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x26
	.long	.LASF608
	.byte	0x1
	.value	0xa19
	.long	0x1bf4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x26
	.long	.LASF779
	.byte	0x1
	.value	0xa1a
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x26
	.long	.LASF780
	.byte	0x1
	.value	0xa1b
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x28
	.long	.LASF692
	.byte	0x1
	.value	0xa1d
	.long	0x1bf4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x28
	.long	.LASF775
	.byte	0x1
	.value	0xa1e
	.long	0x20e0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2c
	.long	.LASF710
	.long	0x4980
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.11676
	.uleb128 0x29
	.quad	.LBB102
	.quad	.LBE102-.LBB102
	.uleb128 0x27
	.string	"ref"
	.byte	0x1
	.value	0xa29
	.long	0x1c5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x28
	.long	.LASF607
	.byte	0x1
	.value	0xa2a
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.byte	0
	.uleb128 0x15
	.long	0x4bd
	.uleb128 0x2d
	.long	.LASF781
	.byte	0x1
	.value	0xa4b
	.long	0x139
	.quad	.LFB62
	.quad	.LFE62-.LFB62
	.uleb128 0x1
	.byte	0x9c
	.long	0x49f2
	.uleb128 0x25
	.string	"df"
	.byte	0x1
	.value	0xa4c
	.long	0x2128
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x26
	.long	.LASF722
	.byte	0x1
	.value	0xa4d
	.long	0x1a75
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x26
	.long	.LASF779
	.byte	0x1
	.value	0xa4e
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x26
	.long	.LASF780
	.byte	0x1
	.value	0xa4f
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x28
	.long	.LASF782
	.byte	0x1
	.value	0xa51
	.long	0x266
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2d
	.long	.LASF783
	.byte	0x1
	.value	0xa5c
	.long	0x139
	.quad	.LFB63
	.quad	.LFE63-.LFB63
	.uleb128 0x1
	.byte	0x9c
	.long	0x4a63
	.uleb128 0x25
	.string	"df"
	.byte	0x1
	.value	0xa5d
	.long	0x2128
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x25
	.string	"ref"
	.byte	0x1
	.value	0xa5e
	.long	0x1c5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x26
	.long	.LASF779
	.byte	0x1
	.value	0xa5f
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x26
	.long	.LASF780
	.byte	0x1
	.value	0xa60
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2c
	.long	.LASF710
	.long	0x4a73
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.11693
	.byte	0
	.uleb128 0x12
	.long	0x2c0
	.long	0x4a73
	.uleb128 0x13
	.long	0x140
	.byte	0x12
	.byte	0
	.uleb128 0x15
	.long	0x4a63
	.uleb128 0x2d
	.long	.LASF784
	.byte	0x1
	.value	0xa73
	.long	0x1c5a
	.quad	.LFB64
	.quad	.LFE64-.LFB64
	.uleb128 0x1
	.byte	0x9c
	.long	0x4b32
	.uleb128 0x25
	.string	"df"
	.byte	0x1
	.value	0xa74
	.long	0x2128
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x25
	.string	"bb"
	.byte	0x1
	.value	0xa75
	.long	0x1b99
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x26
	.long	.LASF785
	.byte	0x1
	.value	0xa76
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x26
	.long	.LASF786
	.byte	0x1
	.value	0xa77
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x26
	.long	.LASF46
	.byte	0x1
	.value	0xa78
	.long	0x266
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x27
	.string	"def"
	.byte	0x1
	.value	0xa7a
	.long	0x1c5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x27
	.string	"use"
	.byte	0x1
	.value	0xa7b
	.long	0x1c5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x28
	.long	.LASF787
	.byte	0x1
	.value	0xa7c
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x28
	.long	.LASF788
	.byte	0x1
	.value	0xa7d
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x28
	.long	.LASF692
	.byte	0x1
	.value	0xa7e
	.long	0x1bf4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x24
	.long	.LASF789
	.byte	0x1
	.value	0xaa4
	.quad	.LFB65
	.quad	.LFE65-.LFB65
	.uleb128 0x1
	.byte	0x9c
	.long	0x4bce
	.uleb128 0x25
	.string	"df"
	.byte	0x1
	.value	0xaa5
	.long	0x2128
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x25
	.string	"bb"
	.byte	0x1
	.value	0xaa6
	.long	0x1b99
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x26
	.long	.LASF790
	.byte	0x1
	.value	0xaa7
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x26
	.long	.LASF791
	.byte	0x1
	.value	0xaa8
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x28
	.long	.LASF607
	.byte	0x1
	.value	0xaaa
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2c
	.long	.LASF710
	.long	0x4bde
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.11714
	.uleb128 0x29
	.quad	.LBB103
	.quad	.LBE103-.LBB103
	.uleb128 0x27
	.string	"uid"
	.byte	0x1
	.value	0xaae
	.long	0x266
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	0x2c0
	.long	0x4bde
	.uleb128 0x13
	.long	0x140
	.byte	0xf
	.byte	0
	.uleb128 0x15
	.long	0x4bce
	.uleb128 0x2d
	.long	.LASF792
	.byte	0x1
	.value	0xac7
	.long	0x2d
	.quad	.LFB66
	.quad	.LFE66-.LFB66
	.uleb128 0x1
	.byte	0x9c
	.long	0x4c71
	.uleb128 0x25
	.string	"df"
	.byte	0x1
	.value	0xac8
	.long	0x2128
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x26
	.long	.LASF793
	.byte	0x1
	.value	0xac9
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x25
	.string	"bb"
	.byte	0x1
	.value	0xaca
	.long	0x1b99
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x26
	.long	.LASF607
	.byte	0x1
	.value	0xacb
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x28
	.long	.LASF794
	.byte	0x1
	.value	0xacd
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x28
	.long	.LASF795
	.byte	0x1
	.value	0xace
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2c
	.long	.LASF710
	.long	0x4c81
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.11725
	.byte	0
	.uleb128 0x12
	.long	0x2c0
	.long	0x4c81
	.uleb128 0x13
	.long	0x140
	.byte	0x16
	.byte	0
	.uleb128 0x15
	.long	0x4c71
	.uleb128 0x2d
	.long	.LASF796
	.byte	0x1
	.value	0xade
	.long	0x2d
	.quad	.LFB67
	.quad	.LFE67-.LFB67
	.uleb128 0x1
	.byte	0x9c
	.long	0x4cf2
	.uleb128 0x25
	.string	"df"
	.byte	0x1
	.value	0xadf
	.long	0x2128
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x26
	.long	.LASF793
	.byte	0x1
	.value	0xae0
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x25
	.string	"bb"
	.byte	0x1
	.value	0xae1
	.long	0x1b99
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x26
	.long	.LASF607
	.byte	0x1
	.value	0xae2
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x28
	.long	.LASF794
	.byte	0x1
	.value	0xae4
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2d
	.long	.LASF797
	.byte	0x1
	.value	0xaf1
	.long	0x2d
	.quad	.LFB68
	.quad	.LFE68-.LFB68
	.uleb128 0x1
	.byte	0x9c
	.long	0x4d5e
	.uleb128 0x25
	.string	"df"
	.byte	0x1
	.value	0xaf2
	.long	0x2128
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x26
	.long	.LASF793
	.byte	0x1
	.value	0xaf3
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x25
	.string	"bb"
	.byte	0x1
	.value	0xaf4
	.long	0x1b99
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x26
	.long	.LASF607
	.byte	0x1
	.value	0xaf5
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x28
	.long	.LASF794
	.byte	0x1
	.value	0xaf7
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2d
	.long	.LASF798
	.byte	0x1
	.value	0xb08
	.long	0x2d
	.quad	.LFB69
	.quad	.LFE69-.LFB69
	.uleb128 0x1
	.byte	0x9c
	.long	0x4de9
	.uleb128 0x25
	.string	"df"
	.byte	0x1
	.value	0xb09
	.long	0x2128
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x25
	.string	"bb"
	.byte	0x1
	.value	0xb0a
	.long	0x1b99
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x26
	.long	.LASF607
	.byte	0x1
	.value	0xb0b
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x26
	.long	.LASF799
	.byte	0x1
	.value	0xb0c
	.long	0x1b99
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x26
	.long	.LASF800
	.byte	0x1
	.value	0xb0d
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x28
	.long	.LASF692
	.byte	0x1
	.value	0xb0f
	.long	0x1bf4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x27
	.string	"uid"
	.byte	0x1
	.value	0xb10
	.long	0x266
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x31
	.long	.LASF801
	.byte	0x1
	.value	0xb2b
	.long	0x139
	.quad	.LFB70
	.quad	.LFE70-.LFB70
	.uleb128 0x1
	.byte	0x9c
	.long	0x4e87
	.uleb128 0x25
	.string	"df"
	.byte	0x1
	.value	0xb2c
	.long	0x2128
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x25
	.string	"bb"
	.byte	0x1
	.value	0xb2d
	.long	0x1b99
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x26
	.long	.LASF607
	.byte	0x1
	.value	0xb2e
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x26
	.long	.LASF46
	.byte	0x1
	.value	0xb2f
	.long	0x266
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x27
	.string	"uid"
	.byte	0x1
	.value	0xb31
	.long	0x266
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x28
	.long	.LASF692
	.byte	0x1
	.value	0xb32
	.long	0x1bf4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x29
	.quad	.LBB104
	.quad	.LBE104-.LBB104
	.uleb128 0x27
	.string	"def"
	.byte	0x1
	.value	0xb38
	.long	0x1c5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x2e
	.long	.LASF802
	.byte	0x1
	.value	0xb43
	.long	0x139
	.quad	.LFB71
	.quad	.LFE71-.LFB71
	.uleb128 0x1
	.byte	0x9c
	.long	0x4f06
	.uleb128 0x25
	.string	"df"
	.byte	0x1
	.value	0xb44
	.long	0x2128
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x25
	.string	"def"
	.byte	0x1
	.value	0xb45
	.long	0x1c5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x28
	.long	.LASF699
	.byte	0x1
	.value	0xb47
	.long	0x1bf4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x29
	.quad	.LBB105
	.quad	.LBE105-.LBB105
	.uleb128 0x27
	.string	"use"
	.byte	0x1
	.value	0xb4c
	.long	0x1c5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x28
	.long	.LASF702
	.byte	0x1
	.value	0xb4d
	.long	0x1bf4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x2d
	.long	.LASF803
	.byte	0x1
	.value	0xb59
	.long	0x139
	.quad	.LFB72
	.quad	.LFE72-.LFB72
	.uleb128 0x1
	.byte	0x9c
	.long	0x4f94
	.uleb128 0x25
	.string	"df"
	.byte	0x1
	.value	0xb5a
	.long	0x2128
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x25
	.string	"bb"
	.byte	0x1
	.value	0xb5b
	.long	0x1b99
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x26
	.long	.LASF607
	.byte	0x1
	.value	0xb5c
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x27
	.string	"uid"
	.byte	0x1
	.value	0xb5e
	.long	0x266
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x28
	.long	.LASF692
	.byte	0x1
	.value	0xb5f
	.long	0x1bf4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x29
	.quad	.LBB106
	.quad	.LBE106-.LBB106
	.uleb128 0x27
	.string	"def"
	.byte	0x1
	.value	0xb65
	.long	0x1c5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x2a
	.long	.LASF804
	.byte	0x1
	.value	0xb72
	.long	0x139
	.quad	.LFB73
	.quad	.LFE73-.LFB73
	.uleb128 0x1
	.byte	0x9c
	.long	0x5023
	.uleb128 0x25
	.string	"df"
	.byte	0x1
	.value	0xb73
	.long	0x2128
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x25
	.string	"def"
	.byte	0x1
	.value	0xb74
	.long	0x1c5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x26
	.long	.LASF722
	.byte	0x1
	.value	0xb75
	.long	0x1a75
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x28
	.long	.LASF699
	.byte	0x1
	.value	0xb77
	.long	0x1bf4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x29
	.quad	.LBB107
	.quad	.LBE107-.LBB107
	.uleb128 0x27
	.string	"use"
	.byte	0x1
	.value	0xb7c
	.long	0x1c5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x28
	.long	.LASF702
	.byte	0x1
	.value	0xb7d
	.long	0x1bf4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x2d
	.long	.LASF805
	.byte	0x1
	.value	0xb91
	.long	0x139
	.quad	.LFB74
	.quad	.LFE74-.LFB74
	.uleb128 0x1
	.byte	0x9c
	.long	0x50c1
	.uleb128 0x25
	.string	"df"
	.byte	0x1
	.value	0xb92
	.long	0x2128
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x25
	.string	"bb"
	.byte	0x1
	.value	0xb93
	.long	0x1b99
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x26
	.long	.LASF607
	.byte	0x1
	.value	0xb94
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x26
	.long	.LASF722
	.byte	0x1
	.value	0xb95
	.long	0x1a75
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x27
	.string	"uid"
	.byte	0x1
	.value	0xb97
	.long	0x266
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x28
	.long	.LASF692
	.byte	0x1
	.value	0xb98
	.long	0x1bf4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x29
	.quad	.LBB108
	.quad	.LBE108-.LBB108
	.uleb128 0x27
	.string	"def"
	.byte	0x1
	.value	0xb9e
	.long	0x1c5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x31
	.long	.LASF806
	.byte	0x1
	.value	0xbac
	.long	0x1b99
	.quad	.LFB75
	.quad	.LFE75-.LFB75
	.uleb128 0x1
	.byte	0x9c
	.long	0x515d
	.uleb128 0x25
	.string	"df"
	.byte	0x1
	.value	0xbad
	.long	0x2128
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x26
	.long	.LASF46
	.byte	0x1
	.value	0xbae
	.long	0x266
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x28
	.long	.LASF613
	.byte	0x1
	.value	0xbb0
	.long	0x1bf4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x28
	.long	.LASF614
	.byte	0x1
	.value	0xbb1
	.long	0x1bf4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x27
	.string	"def"
	.byte	0x1
	.value	0xbb2
	.long	0x1c5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x27
	.string	"use"
	.byte	0x1
	.value	0xbb3
	.long	0x1c5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.long	.LASF807
	.byte	0x1
	.value	0xbb4
	.long	0x1b99
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x28
	.long	.LASF808
	.byte	0x1
	.value	0xbb5
	.long	0x1b99
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2d
	.long	.LASF809
	.byte	0x1
	.value	0xbbf
	.long	0x139
	.quad	.LFB76
	.quad	.LFE76-.LFB76
	.uleb128 0x1
	.byte	0x9c
	.long	0x519d
	.uleb128 0x25
	.string	"df"
	.byte	0x1
	.value	0xbc0
	.long	0x2128
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x25
	.string	"reg"
	.byte	0x1
	.value	0xbc1
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x31
	.long	.LASF810
	.byte	0x1
	.value	0xbc9
	.long	0x139
	.quad	.LFB77
	.quad	.LFE77-.LFB77
	.uleb128 0x1
	.byte	0x9c
	.long	0x51dd
	.uleb128 0x25
	.string	"df"
	.byte	0x1
	.value	0xbca
	.long	0x2128
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x25
	.string	"reg"
	.byte	0x1
	.value	0xbcb
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x2d
	.long	.LASF811
	.byte	0x1
	.value	0xbd3
	.long	0x139
	.quad	.LFB78
	.quad	.LFE78-.LFB78
	.uleb128 0x1
	.byte	0x9c
	.long	0x523a
	.uleb128 0x25
	.string	"df"
	.byte	0x1
	.value	0xbd4
	.long	0x2128
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x25
	.string	"bb"
	.byte	0x1
	.value	0xbd5
	.long	0x1b99
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x25
	.string	"reg"
	.byte	0x1
	.value	0xbd6
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x28
	.long	.LASF620
	.byte	0x1
	.value	0xbd8
	.long	0x1f16
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2d
	.long	.LASF812
	.byte	0x1
	.value	0xbe5
	.long	0x139
	.quad	.LFB79
	.quad	.LFE79-.LFB79
	.uleb128 0x1
	.byte	0x9c
	.long	0x5297
	.uleb128 0x25
	.string	"df"
	.byte	0x1
	.value	0xbe6
	.long	0x2128
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x25
	.string	"bb"
	.byte	0x1
	.value	0xbe7
	.long	0x1b99
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x25
	.string	"reg"
	.byte	0x1
	.value	0xbe8
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x28
	.long	.LASF620
	.byte	0x1
	.value	0xbea
	.long	0x1f16
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2d
	.long	.LASF813
	.byte	0x1
	.value	0xbf8
	.long	0x139
	.quad	.LFB80
	.quad	.LFE80-.LFB80
	.uleb128 0x1
	.byte	0x9c
	.long	0x5365
	.uleb128 0x25
	.string	"df"
	.byte	0x1
	.value	0xbf9
	.long	0x2128
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x25
	.string	"bb"
	.byte	0x1
	.value	0xbfa
	.long	0x1b99
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x26
	.long	.LASF814
	.byte	0x1
	.value	0xbfb
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x26
	.long	.LASF815
	.byte	0x1
	.value	0xbfc
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x28
	.long	.LASF816
	.byte	0x1
	.value	0xbfe
	.long	0x266
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x28
	.long	.LASF817
	.byte	0x1
	.value	0xbff
	.long	0x266
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x28
	.long	.LASF818
	.byte	0x1
	.value	0xc00
	.long	0x1c5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x28
	.long	.LASF819
	.byte	0x1
	.value	0xc01
	.long	0x1c5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.long	.LASF747
	.byte	0x1
	.value	0xc02
	.long	0x1c5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x28
	.long	.LASF820
	.byte	0x1
	.value	0xc03
	.long	0x1c5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2c
	.long	.LASF710
	.long	0x5375
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.11859
	.byte	0
	.uleb128 0x12
	.long	0x2c0
	.long	0x5375
	.uleb128 0x13
	.long	0x140
	.byte	0x18
	.byte	0
	.uleb128 0x15
	.long	0x5365
	.uleb128 0x2e
	.long	.LASF821
	.byte	0x1
	.value	0xc1f
	.long	0x1c5a
	.quad	.LFB81
	.quad	.LFE81-.LFB81
	.uleb128 0x1
	.byte	0x9c
	.long	0x53f8
	.uleb128 0x25
	.string	"df"
	.byte	0x1
	.value	0xc20
	.long	0x2128
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x25
	.string	"bb"
	.byte	0x1
	.value	0xc21
	.long	0x1b99
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x26
	.long	.LASF46
	.byte	0x1
	.value	0xc22
	.long	0x266
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x28
	.long	.LASF692
	.byte	0x1
	.value	0xc24
	.long	0x1bf4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x29
	.quad	.LBB109
	.quad	.LBE109-.LBB109
	.uleb128 0x27
	.string	"use"
	.byte	0x1
	.value	0xc2c
	.long	0x1c5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x2e
	.long	.LASF822
	.byte	0x1
	.value	0xc37
	.long	0x1c5a
	.quad	.LFB82
	.quad	.LFE82-.LFB82
	.uleb128 0x1
	.byte	0x9c
	.long	0x5476
	.uleb128 0x25
	.string	"df"
	.byte	0x1
	.value	0xc38
	.long	0x2128
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x25
	.string	"bb"
	.byte	0x1
	.value	0xc39
	.long	0x1b99
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x26
	.long	.LASF46
	.byte	0x1
	.value	0xc3a
	.long	0x266
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x28
	.long	.LASF692
	.byte	0x1
	.value	0xc3c
	.long	0x1bf4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x29
	.quad	.LBB110
	.quad	.LBE110-.LBB110
	.uleb128 0x27
	.string	"def"
	.byte	0x1
	.value	0xc44
	.long	0x1c5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x2e
	.long	.LASF823
	.byte	0x1
	.value	0xc4f
	.long	0x1c5a
	.quad	.LFB83
	.quad	.LFE83-.LFB83
	.uleb128 0x1
	.byte	0x9c
	.long	0x5514
	.uleb128 0x25
	.string	"df"
	.byte	0x1
	.value	0xc50
	.long	0x2128
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x25
	.string	"bb"
	.byte	0x1
	.value	0xc51
	.long	0x1b99
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x26
	.long	.LASF607
	.byte	0x1
	.value	0xc52
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x26
	.long	.LASF46
	.byte	0x1
	.value	0xc53
	.long	0x266
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x27
	.string	"uid"
	.byte	0x1
	.value	0xc55
	.long	0x266
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x28
	.long	.LASF692
	.byte	0x1
	.value	0xc56
	.long	0x1bf4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x29
	.quad	.LBB111
	.quad	.LBE111-.LBB111
	.uleb128 0x27
	.string	"use"
	.byte	0x1
	.value	0xc5c
	.long	0x1c5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x2e
	.long	.LASF824
	.byte	0x1
	.value	0xc68
	.long	0x1c5a
	.quad	.LFB84
	.quad	.LFE84-.LFB84
	.uleb128 0x1
	.byte	0x9c
	.long	0x55b2
	.uleb128 0x25
	.string	"df"
	.byte	0x1
	.value	0xc69
	.long	0x2128
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x25
	.string	"bb"
	.byte	0x1
	.value	0xc6a
	.long	0x1b99
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x26
	.long	.LASF607
	.byte	0x1
	.value	0xc6b
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x26
	.long	.LASF46
	.byte	0x1
	.value	0xc6c
	.long	0x266
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x27
	.string	"uid"
	.byte	0x1
	.value	0xc6e
	.long	0x266
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x28
	.long	.LASF692
	.byte	0x1
	.value	0xc6f
	.long	0x1bf4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x29
	.quad	.LBB112
	.quad	.LBE112-.LBB112
	.uleb128 0x27
	.string	"def"
	.byte	0x1
	.value	0xc75
	.long	0x1c5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x2d
	.long	.LASF825
	.byte	0x1
	.value	0xc82
	.long	0x2d
	.quad	.LFB85
	.quad	.LFE85-.LFB85
	.uleb128 0x1
	.byte	0x9c
	.long	0x5651
	.uleb128 0x25
	.string	"df"
	.byte	0x1
	.value	0xc83
	.long	0x2128
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x25
	.string	"bb"
	.byte	0x1
	.value	0xc84
	.long	0x1b99
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x26
	.long	.LASF607
	.byte	0x1
	.value	0xc85
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x25
	.string	"reg"
	.byte	0x1
	.value	0xc86
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x27
	.string	"def"
	.byte	0x1
	.value	0xc88
	.long	0x1c5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x27
	.string	"use"
	.byte	0x1
	.value	0xc89
	.long	0x1c5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x28
	.long	.LASF699
	.byte	0x1
	.value	0xc8a
	.long	0x1bf4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2c
	.long	.LASF710
	.long	0x5661
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.11913
	.byte	0
	.uleb128 0x12
	.long	0x2c0
	.long	0x5661
	.uleb128 0x13
	.long	0x140
	.byte	0x1e
	.byte	0
	.uleb128 0x15
	.long	0x5651
	.uleb128 0x24
	.long	.LASF826
	.byte	0x1
	.value	0xca8
	.quad	.LFB86
	.quad	.LFE86-.LFB86
	.uleb128 0x1
	.byte	0x9c
	.long	0x56a3
	.uleb128 0x26
	.long	.LASF692
	.byte	0x1
	.value	0xca9
	.long	0x1bf4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x26
	.long	.LASF827
	.byte	0x1
	.value	0xcaa
	.long	0x56a3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x2c7
	.uleb128 0x24
	.long	.LASF828
	.byte	0x1
	.value	0xcb7
	.quad	.LFB87
	.quad	.LFE87-.LFB87
	.uleb128 0x1
	.byte	0x9c
	.long	0x56e6
	.uleb128 0x26
	.long	.LASF692
	.byte	0x1
	.value	0xcb8
	.long	0x1bf4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x26
	.long	.LASF827
	.byte	0x1
	.value	0xcb9
	.long	0x56a3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x30
	.long	.LASF829
	.byte	0x1
	.value	0xcc8
	.quad	.LFB88
	.quad	.LFE88-.LFB88
	.uleb128 0x1
	.byte	0x9c
	.long	0x582c
	.uleb128 0x25
	.string	"df"
	.byte	0x1
	.value	0xcc9
	.long	0x2128
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x26
	.long	.LASF343
	.byte	0x1
	.value	0xcca
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x26
	.long	.LASF827
	.byte	0x1
	.value	0xccb
	.long	0x56a3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x27
	.string	"i"
	.byte	0x1
	.value	0xccd
	.long	0x266
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x27
	.string	"j"
	.byte	0x1
	.value	0xcce
	.long	0x266
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x2b
	.quad	.LBB113
	.quad	.LBE113-.LBB113
	.long	0x5784
	.uleb128 0x27
	.string	"bb"
	.byte	0x1
	.value	0xcdc
	.long	0x1b99
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x28
	.long	.LASF620
	.byte	0x1
	.value	0xcdd
	.long	0x1f16
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.uleb128 0x2b
	.quad	.LBB114
	.quad	.LBE114-.LBB114
	.long	0x57b7
	.uleb128 0x27
	.string	"bb"
	.byte	0x1
	.value	0xd06
	.long	0x1b99
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x28
	.long	.LASF620
	.byte	0x1
	.value	0xd07
	.long	0x1f16
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x2b
	.quad	.LBB115
	.quad	.LBE115-.LBB115
	.long	0x57ea
	.uleb128 0x27
	.string	"bb"
	.byte	0x1
	.value	0xd30
	.long	0x1b99
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x28
	.long	.LASF620
	.byte	0x1
	.value	0xd31
	.long	0x1f16
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x29
	.quad	.LBB116
	.quad	.LBE116-.LBB116
	.uleb128 0x28
	.long	.LASF616
	.byte	0x1
	.value	0xd43
	.long	0x1f22
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x29
	.quad	.LBB117
	.quad	.LBE117-.LBB117
	.uleb128 0x27
	.string	"bb"
	.byte	0x1
	.value	0xd50
	.long	0x1b99
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x30
	.long	.LASF830
	.byte	0x1
	.value	0xd77
	.quad	.LFB89
	.quad	.LFE89-.LFB89
	.uleb128 0x1
	.byte	0x9c
	.long	0x5895
	.uleb128 0x25
	.string	"df"
	.byte	0x1
	.value	0xd78
	.long	0x2128
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x26
	.long	.LASF607
	.byte	0x1
	.value	0xd79
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x26
	.long	.LASF827
	.byte	0x1
	.value	0xd7a
	.long	0x56a3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x27
	.string	"uid"
	.byte	0x1
	.value	0xd7c
	.long	0x266
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x27
	.string	"bbi"
	.byte	0x1
	.value	0xd7d
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x30
	.long	.LASF831
	.byte	0x1
	.value	0xd93
	.quad	.LFB90
	.quad	.LFE90-.LFB90
	.uleb128 0x1
	.byte	0x9c
	.long	0x58fe
	.uleb128 0x25
	.string	"df"
	.byte	0x1
	.value	0xd94
	.long	0x2128
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x26
	.long	.LASF607
	.byte	0x1
	.value	0xd95
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x26
	.long	.LASF827
	.byte	0x1
	.value	0xd96
	.long	0x56a3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x27
	.string	"uid"
	.byte	0x1
	.value	0xd98
	.long	0x266
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x27
	.string	"bbi"
	.byte	0x1
	.value	0xd99
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x24
	.long	.LASF832
	.byte	0x1
	.value	0xdaf
	.quad	.LFB91
	.quad	.LFE91-.LFB91
	.uleb128 0x1
	.byte	0x9c
	.long	0x5949
	.uleb128 0x25
	.string	"df"
	.byte	0x1
	.value	0xdb0
	.long	0x2128
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x26
	.long	.LASF46
	.byte	0x1
	.value	0xdb1
	.long	0x266
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x26
	.long	.LASF827
	.byte	0x1
	.value	0xdb2
	.long	0x56a3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x24
	.long	.LASF833
	.byte	0x1
	.value	0xdc1
	.quad	.LFB92
	.quad	.LFE92-.LFB92
	.uleb128 0x1
	.byte	0x9c
	.long	0x5994
	.uleb128 0x25
	.string	"df"
	.byte	0x1
	.value	0xdc2
	.long	0x2128
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x25
	.string	"ref"
	.byte	0x1
	.value	0xdc3
	.long	0x1c5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x26
	.long	.LASF827
	.byte	0x1
	.value	0xdc4
	.long	0x56a3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x30
	.long	.LASF834
	.byte	0x1
	.value	0xdd4
	.quad	.LFB93
	.quad	.LFE93-.LFB93
	.uleb128 0x1
	.byte	0x9c
	.long	0x59c2
	.uleb128 0x26
	.long	.LASF607
	.byte	0x1
	.value	0xdd5
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x30
	.long	.LASF835
	.byte	0x1
	.value	0xddd
	.quad	.LFB94
	.quad	.LFE94-.LFB94
	.uleb128 0x1
	.byte	0x9c
	.long	0x59f0
	.uleb128 0x25
	.string	"reg"
	.byte	0x1
	.value	0xdde
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x30
	.long	.LASF836
	.byte	0x1
	.value	0xde5
	.quad	.LFB95
	.quad	.LFE95-.LFB95
	.uleb128 0x1
	.byte	0x9c
	.long	0x5a1e
	.uleb128 0x26
	.long	.LASF46
	.byte	0x1
	.value	0xde6
	.long	0x266
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x30
	.long	.LASF837
	.byte	0x1
	.value	0xded
	.quad	.LFB96
	.quad	.LFE96-.LFB96
	.uleb128 0x1
	.byte	0x9c
	.long	0x5a4c
	.uleb128 0x25
	.string	"ref"
	.byte	0x1
	.value	0xdee
	.long	0x1c5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x30
	.long	.LASF838
	.byte	0x1
	.value	0xdf5
	.quad	.LFB97
	.quad	.LFE97-.LFB97
	.uleb128 0x1
	.byte	0x9c
	.long	0x5a7a
	.uleb128 0x26
	.long	.LASF839
	.byte	0x1
	.value	0xdf6
	.long	0x266
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x30
	.long	.LASF840
	.byte	0x1
	.value	0xdfd
	.quad	.LFB98
	.quad	.LFE98-.LFB98
	.uleb128 0x1
	.byte	0x9c
	.long	0x5aa8
	.uleb128 0x26
	.long	.LASF839
	.byte	0x1
	.value	0xdfe
	.long	0x266
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x30
	.long	.LASF841
	.byte	0x1
	.value	0xe05
	.quad	.LFB99
	.quad	.LFE99-.LFB99
	.uleb128 0x1
	.byte	0x9c
	.long	0x5ad6
	.uleb128 0x26
	.long	.LASF692
	.byte	0x1
	.value	0xe06
	.long	0x1bf4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x24
	.long	.LASF842
	.byte	0x1
	.value	0xe0f
	.quad	.LFB100
	.quad	.LFE100-.LFB100
	.uleb128 0x1
	.byte	0x9c
	.long	0x5bd4
	.uleb128 0x26
	.long	.LASF843
	.byte	0x1
	.value	0xe12
	.long	0x1b99
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x25
	.string	"in"
	.byte	0x1
	.value	0xe13
	.long	0x42b2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x25
	.string	"out"
	.byte	0x1
	.value	0xe13
	.long	0x42b2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x25
	.string	"gen"
	.byte	0x1
	.value	0xe13
	.long	0x42b2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x26
	.long	.LASF742
	.byte	0x1
	.value	0xe13
	.long	0x42b2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x25
	.string	"dir"
	.byte	0x1
	.value	0xe14
	.long	0x1f48
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x26
	.long	.LASF844
	.byte	0x1
	.value	0xe15
	.long	0x1f2e
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x26
	.long	.LASF845
	.byte	0x1
	.value	0xe16
	.long	0x1f9d
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x26
	.long	.LASF846
	.byte	0x1
	.value	0xe17
	.long	0x1ae8
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x26
	.long	.LASF847
	.byte	0x1
	.value	0xe18
	.long	0x1ae8
	.uleb128 0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x26
	.long	.LASF571
	.byte	0x1
	.value	0xe19
	.long	0x26d
	.uleb128 0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x28
	.long	.LASF741
	.byte	0x1
	.value	0xe1b
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x27
	.string	"i"
	.byte	0x1
	.value	0xe1c
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x27
	.string	"e"
	.byte	0x1
	.value	0xe1d
	.long	0x1b8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x27
	.string	"bb"
	.byte	0x1
	.value	0xe1e
	.long	0x1b99
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x24
	.long	.LASF848
	.byte	0x1
	.value	0xe7e
	.quad	.LFB101
	.quad	.LFE101-.LFB101
	.uleb128 0x1
	.byte	0x9c
	.long	0x5cd2
	.uleb128 0x26
	.long	.LASF843
	.byte	0x1
	.value	0xe81
	.long	0x1b99
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x25
	.string	"in"
	.byte	0x1
	.value	0xe82
	.long	0x1ba4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x25
	.string	"out"
	.byte	0x1
	.value	0xe82
	.long	0x1ba4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x25
	.string	"gen"
	.byte	0x1
	.value	0xe82
	.long	0x1ba4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x26
	.long	.LASF742
	.byte	0x1
	.value	0xe82
	.long	0x1ba4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x25
	.string	"dir"
	.byte	0x1
	.value	0xe83
	.long	0x1f48
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x26
	.long	.LASF844
	.byte	0x1
	.value	0xe84
	.long	0x1f2e
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x26
	.long	.LASF845
	.byte	0x1
	.value	0xe85
	.long	0x1f62
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x26
	.long	.LASF846
	.byte	0x1
	.value	0xe86
	.long	0x1ae8
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x26
	.long	.LASF847
	.byte	0x1
	.value	0xe87
	.long	0x1ae8
	.uleb128 0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x26
	.long	.LASF571
	.byte	0x1
	.value	0xe88
	.long	0x26d
	.uleb128 0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x28
	.long	.LASF741
	.byte	0x1
	.value	0xe8a
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x27
	.string	"i"
	.byte	0x1
	.value	0xe8b
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x27
	.string	"e"
	.byte	0x1
	.value	0xe8c
	.long	0x1b8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x27
	.string	"bb"
	.byte	0x1
	.value	0xe8d
	.long	0x1b99
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x30
	.long	.LASF849
	.byte	0x1
	.value	0xf02
	.quad	.LFB102
	.quad	.LFE102-.LFB102
	.uleb128 0x1
	.byte	0x9c
	.long	0x5f03
	.uleb128 0x25
	.string	"in"
	.byte	0x1
	.value	0xf04
	.long	0x1ba4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x25
	.string	"out"
	.byte	0x1
	.value	0xf04
	.long	0x1ba4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x25
	.string	"gen"
	.byte	0x1
	.value	0xf04
	.long	0x1ba4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x26
	.long	.LASF742
	.byte	0x1
	.value	0xf04
	.long	0x1ba4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x26
	.long	.LASF722
	.byte	0x1
	.value	0xf05
	.long	0x1a75
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x25
	.string	"dir"
	.byte	0x1
	.value	0xf06
	.long	0x1f48
	.uleb128 0x3
	.byte	0x91
	.sleb128 -172
	.uleb128 0x26
	.long	.LASF844
	.byte	0x1
	.value	0xf07
	.long	0x1f2e
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x26
	.long	.LASF845
	.byte	0x1
	.value	0xf08
	.long	0x1f62
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x26
	.long	.LASF850
	.byte	0x1
	.value	0xf09
	.long	0x4e6
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x26
	.long	.LASF571
	.byte	0x1
	.value	0xf0a
	.long	0x26d
	.uleb128 0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x27
	.string	"i"
	.byte	0x1
	.value	0xf0c
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x28
	.long	.LASF851
	.byte	0x1
	.value	0xf0d
	.long	0x208d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x27
	.string	"bb"
	.byte	0x1
	.value	0xf0e
	.long	0x1b99
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x28
	.long	.LASF846
	.byte	0x1
	.value	0xf0f
	.long	0x1ae8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x28
	.long	.LASF847
	.byte	0x1
	.value	0xf0f
	.long	0x1ae8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2b
	.quad	.LBB118
	.quad	.LBE118-.LBB118
	.long	0x5e6d
	.uleb128 0x28
	.long	.LASF724
	.byte	0x1
	.value	0xf15
	.long	0x1a6f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x28
	.long	.LASF725
	.byte	0x1
	.value	0xf15
	.long	0x266
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x28
	.long	.LASF726
	.byte	0x1
	.value	0xf15
	.long	0x266
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x28
	.long	.LASF727
	.byte	0x1
	.value	0xf15
	.long	0x266
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x29
	.quad	.LBB119
	.quad	.LBE119-.LBB119
	.uleb128 0x28
	.long	.LASF728
	.byte	0x1
	.value	0xf15
	.long	0x281
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x29
	.quad	.LBB120
	.quad	.LBE120-.LBB120
	.uleb128 0x28
	.long	.LASF729
	.byte	0x1
	.value	0xf15
	.long	0x281
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x29
	.quad	.LBB121
	.quad	.LBE121-.LBB121
	.uleb128 0x28
	.long	.LASF724
	.byte	0x1
	.value	0xf2a
	.long	0x1a6f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x28
	.long	.LASF725
	.byte	0x1
	.value	0xf2a
	.long	0x266
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x28
	.long	.LASF726
	.byte	0x1
	.value	0xf2a
	.long	0x266
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x28
	.long	.LASF727
	.byte	0x1
	.value	0xf2a
	.long	0x266
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x29
	.quad	.LBB122
	.quad	.LBE122-.LBB122
	.uleb128 0x28
	.long	.LASF728
	.byte	0x1
	.value	0xf2a
	.long	0x281
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x29
	.quad	.LBB123
	.quad	.LBE123-.LBB123
	.uleb128 0x28
	.long	.LASF729
	.byte	0x1
	.value	0xf2a
	.long	0x281
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x30
	.long	.LASF852
	.byte	0x1
	.value	0xf3d
	.quad	.LFB103
	.quad	.LFE103-.LFB103
	.uleb128 0x1
	.byte	0x9c
	.long	0x6134
	.uleb128 0x25
	.string	"in"
	.byte	0x1
	.value	0xf3f
	.long	0x42b2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x25
	.string	"out"
	.byte	0x1
	.value	0xf3f
	.long	0x42b2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x25
	.string	"gen"
	.byte	0x1
	.value	0xf3f
	.long	0x42b2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x26
	.long	.LASF742
	.byte	0x1
	.value	0xf3f
	.long	0x42b2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x26
	.long	.LASF722
	.byte	0x1
	.value	0xf40
	.long	0x1a75
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x25
	.string	"dir"
	.byte	0x1
	.value	0xf41
	.long	0x1f48
	.uleb128 0x3
	.byte	0x91
	.sleb128 -172
	.uleb128 0x26
	.long	.LASF844
	.byte	0x1
	.value	0xf42
	.long	0x1f2e
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x26
	.long	.LASF845
	.byte	0x1
	.value	0xf43
	.long	0x1f9d
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x26
	.long	.LASF850
	.byte	0x1
	.value	0xf44
	.long	0x4e6
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x26
	.long	.LASF571
	.byte	0x1
	.value	0xf45
	.long	0x26d
	.uleb128 0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x27
	.string	"i"
	.byte	0x1
	.value	0xf47
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x28
	.long	.LASF851
	.byte	0x1
	.value	0xf48
	.long	0x208d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x27
	.string	"bb"
	.byte	0x1
	.value	0xf49
	.long	0x1b99
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x28
	.long	.LASF846
	.byte	0x1
	.value	0xf4a
	.long	0x1ae8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x28
	.long	.LASF847
	.byte	0x1
	.value	0xf4a
	.long	0x1ae8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2b
	.quad	.LBB124
	.quad	.LBE124-.LBB124
	.long	0x609e
	.uleb128 0x28
	.long	.LASF724
	.byte	0x1
	.value	0xf50
	.long	0x1a6f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x28
	.long	.LASF725
	.byte	0x1
	.value	0xf50
	.long	0x266
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x28
	.long	.LASF726
	.byte	0x1
	.value	0xf50
	.long	0x266
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x28
	.long	.LASF727
	.byte	0x1
	.value	0xf50
	.long	0x266
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x29
	.quad	.LBB125
	.quad	.LBE125-.LBB125
	.uleb128 0x28
	.long	.LASF728
	.byte	0x1
	.value	0xf50
	.long	0x281
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x29
	.quad	.LBB126
	.quad	.LBE126-.LBB126
	.uleb128 0x28
	.long	.LASF729
	.byte	0x1
	.value	0xf50
	.long	0x281
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x29
	.quad	.LBB127
	.quad	.LBE127-.LBB127
	.uleb128 0x28
	.long	.LASF724
	.byte	0x1
	.value	0xf65
	.long	0x1a6f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x28
	.long	.LASF725
	.byte	0x1
	.value	0xf65
	.long	0x266
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x28
	.long	.LASF726
	.byte	0x1
	.value	0xf65
	.long	0x266
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x28
	.long	.LASF727
	.byte	0x1
	.value	0xf65
	.long	0x266
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x29
	.quad	.LBB128
	.quad	.LBE128-.LBB128
	.uleb128 0x28
	.long	.LASF728
	.byte	0x1
	.value	0xf65
	.long	0x281
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x29
	.quad	.LBB129
	.quad	.LBE129-.LBB129
	.uleb128 0x28
	.long	.LASF729
	.byte	0x1
	.value	0xf65
	.long	0x281
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x32
	.long	.LASF853
	.byte	0x1
	.byte	0xc9
	.long	0xfb6
	.uleb128 0x9
	.byte	0x3
	.quad	df_ref_obstack
	.uleb128 0x33
	.string	"ddf"
	.byte	0x1
	.byte	0xca
	.long	0x2128
	.uleb128 0x9
	.byte	0x3
	.quad	ddf
	.uleb128 0x34
	.long	.LASF854
	.byte	0x4
	.byte	0x62
	.long	0x139
	.uleb128 0x34
	.long	.LASF855
	.byte	0x7
	.byte	0xaa
	.long	0x4a1
	.uleb128 0x12
	.long	0x661
	.long	0x6184
	.uleb128 0x13
	.long	0x140
	.byte	0x3a
	.byte	0
	.uleb128 0x34
	.long	.LASF162
	.byte	0x9
	.byte	0x34
	.long	0x618f
	.uleb128 0x15
	.long	0x6174
	.uleb128 0x12
	.long	0x288
	.long	0x61a4
	.uleb128 0x13
	.long	0x140
	.byte	0x3a
	.byte	0
	.uleb128 0x34
	.long	.LASF856
	.byte	0x9
	.byte	0x50
	.long	0x61af
	.uleb128 0x15
	.long	0x6194
	.uleb128 0x34
	.long	.LASF857
	.byte	0x9
	.byte	0xa4
	.long	0x4ec
	.uleb128 0x12
	.long	0x288
	.long	0x61cf
	.uleb128 0x13
	.long	0x140
	.byte	0x98
	.byte	0
	.uleb128 0x34
	.long	.LASF858
	.byte	0x2
	.byte	0x36
	.long	0x61da
	.uleb128 0x15
	.long	0x61bf
	.uleb128 0x12
	.long	0x4cd
	.long	0x61ef
	.uleb128 0x13
	.long	0x140
	.byte	0x98
	.byte	0
	.uleb128 0x34
	.long	.LASF859
	.byte	0x2
	.byte	0x3c
	.long	0x61fa
	.uleb128 0x15
	.long	0x61df
	.uleb128 0x12
	.long	0x2c0
	.long	0x620f
	.uleb128 0x13
	.long	0x140
	.byte	0x98
	.byte	0
	.uleb128 0x34
	.long	.LASF860
	.byte	0x2
	.byte	0x3f
	.long	0x621a
	.uleb128 0x15
	.long	0x61ff
	.uleb128 0x35
	.long	.LASF861
	.byte	0xc
	.value	0x1e4
	.long	0x1631
	.uleb128 0x12
	.long	0x4ec
	.long	0x623b
	.uleb128 0x13
	.long	0x140
	.byte	0x34
	.byte	0
	.uleb128 0x34
	.long	.LASF862
	.byte	0xf
	.byte	0xad
	.long	0x622b
	.uleb128 0x12
	.long	0x2c0
	.long	0x6256
	.uleb128 0x13
	.long	0x140
	.byte	0x34
	.byte	0
	.uleb128 0x35
	.long	.LASF863
	.byte	0x10
	.value	0x1b0
	.long	0x6246
	.uleb128 0x35
	.long	.LASF864
	.byte	0x10
	.value	0x1b9
	.long	0x1a06
	.uleb128 0x34
	.long	.LASF865
	.byte	0xb
	.byte	0xe4
	.long	0x139
	.uleb128 0x34
	.long	.LASF866
	.byte	0xb
	.byte	0xec
	.long	0x198e
	.uleb128 0x12
	.long	0xc5f
	.long	0x6294
	.uleb128 0x13
	.long	0x140
	.byte	0x1
	.byte	0
	.uleb128 0x35
	.long	.LASF867
	.byte	0xb
	.value	0x116
	.long	0x6284
	.uleb128 0x35
	.long	.LASF868
	.byte	0xb
	.value	0x11a
	.long	0x198e
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
	.uleb128 0x5
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
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
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
	.uleb128 0x2f
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
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x35
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
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF841:
	.string	"debug_df_chain"
.LASF361:
	.string	"REG_BR_PROB"
.LASF391:
	.string	"NOTE_INSN_EH_REGION_BEG"
.LASF504:
	.string	"profile_label_no"
.LASF617:
	.string	"lifetime"
.LASF705:
	.string	"ref_type"
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
.LASF544:
	.string	"varray_data_tag"
.LASF717:
	.string	"df_insn_refs_record"
.LASF24:
	.string	"AD_REGS"
.LASF704:
	.string	"df_ref_create"
.LASF326:
	.string	"first"
.LASF822:
	.string	"df_bb_regno_first_def_find"
.LASF498:
	.string	"inlinable"
.LASF530:
	.string	"uses_const_pool"
.LASF287:
	.string	"CONSTANT_P_RTX"
.LASF863:
	.string	"global_regs"
.LASF766:
	.string	"df_bb_refs_update"
.LASF813:
	.string	"df_bb_regs_lives_compare"
.LASF843:
	.string	"block"
.LASF713:
	.string	"_Bool"
.LASF660:
	.string	"df_flow_dir"
.LASF317:
	.string	"rtuint"
.LASF865:
	.string	"n_basic_blocks"
.LASF321:
	.string	"rt_cselib"
.LASF190:
	.string	"DEFINE_PEEPHOLE2"
.LASF12:
	.string	"rtvec_def"
.LASF503:
	.string	"inl_max_label_num"
.LASF250:
	.string	"LSHIFTRT"
.LASF761:
	.string	"aflags"
.LASF184:
	.string	"MATCH_PAR_DUP"
.LASF84:
	.string	"_shortbuf"
.LASF871:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/403.gcc/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF245:
	.string	"UDIV"
.LASF10:
	.string	"rtvec"
.LASF733:
	.string	"df_reg_use_chain_create"
.LASF722:
	.string	"blocks"
.LASF178:
	.string	"MATCH_OPERAND"
.LASF437:
	.string	"x_first_label_num"
.LASF796:
	.string	"df_pattern_emit_after"
.LASF159:
	.string	"CCFPmode"
.LASF648:
	.string	"insns_modified"
.LASF100:
	.string	"reg_class"
.LASF267:
	.string	"UNLE"
.LASF28:
	.string	"LEGACY_REGS"
.LASF305:
	.string	"max_after_base"
.LASF268:
	.string	"UNLT"
.LASF732:
	.string	"df_bb_reg_use_chain_create"
.LASF849:
	.string	"iterative_dataflow_sbitmap"
.LASF640:
	.string	"def_id"
.LASF531:
	.string	"uses_pic_offset_table"
.LASF538:
	.string	"initial_value_struct"
.LASF816:
	.string	"regno1"
.LASF817:
	.string	"regno2"
.LASF599:
	.string	"probability"
.LASF736:
	.string	"use_link"
.LASF622:
	.string	"rd_gen"
.LASF808:
	.string	"bb_use"
.LASF751:
	.string	"df_bb_lr_local_compute"
.LASF131:
	.string	"CTImode"
.LASF65:
	.string	"_flags"
.LASF417:
	.string	"next"
.LASF60:
	.string	"__off_t"
.LASF129:
	.string	"CSImode"
.LASF30:
	.string	"FP_TOP_REG"
.LASF289:
	.string	"VEC_MERGE"
.LASF501:
	.string	"original_decl_initial"
.LASF85:
	.string	"_lock"
.LASF546:
	.string	"uhint"
.LASF222:
	.string	"RETURN"
.LASF694:
	.string	"__o1"
.LASF547:
	.string	"generic"
.LASF867:
	.string	"entry_exit_blocks"
.LASF14:
	.string	"elem"
.LASF165:
	.string	"MODE_FLOAT"
.LASF675:
	.string	"mark"
.LASF309:
	.string	"alias"
.LASF306:
	.string	"offset_unsigned"
.LASF135:
	.string	"V2SImode"
.LASF527:
	.string	"stdarg"
.LASF488:
	.string	"x_trampoline_list"
.LASF25:
	.string	"Q_REGS"
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
.LASF225:
	.string	"CONST_INT"
.LASF221:
	.string	"CALL"
.LASF50:
	.string	"maybe_vaarg"
.LASF509:
	.string	"epilogue_delay_list"
.LASF137:
	.string	"V4QImode"
.LASF582:
	.string	"BITMAP_AND"
.LASF200:
	.string	"ATTR"
.LASF341:
	.string	"count"
.LASF319:
	.string	"rttype"
.LASF859:
	.string	"rtx_format"
.LASF870:
	.string	"df.c"
.LASF19:
	.string	"DREG"
.LASF635:
	.string	"lr_valid"
.LASF331:
	.string	"head_tree"
.LASF37:
	.string	"FLOAT_SSE_REGS"
.LASF408:
	.string	"GR_VIRTUAL_STACK_ARGS"
.LASF136:
	.string	"V2DImode"
.LASF478:
	.string	"x_return_label"
.LASF572:
	.string	"varray_type"
.LASF764:
	.string	"df_refs_queue"
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
.LASF485:
	.string	"x_clobber_return_insn"
.LASF22:
	.string	"SIREG"
.LASF552:
	.string	"sched_info_tag"
.LASF233:
	.string	"STRICT_LOW_PART"
.LASF844:
	.string	"conf_op"
.LASF693:
	.string	"__len"
.LASF175:
	.string	"INCLUDE"
.LASF758:
	.string	"total"
.LASF404:
	.string	"GR_FRAME_POINTER"
.LASF608:
	.string	"chain"
.LASF339:
	.string	"index"
.LASF559:
	.string	"freq"
.LASF271:
	.string	"ZERO_EXTEND"
.LASF274:
	.string	"FLOAT_TRUNCATE"
.LASF453:
	.string	"x_forced_labels"
.LASF469:
	.string	"internal_arg_pointer"
.LASF811:
	.string	"df_bb_reg_live_start_p"
.LASF712:
	.string	"read_modify_subreg_p"
.LASF401:
	.string	"GR_PC"
.LASF711:
	.string	"endregno"
.LASF21:
	.string	"BREG"
.LASF146:
	.string	"V2SFmode"
.LASF566:
	.string	"varray_data"
.LASF540:
	.string	"machine_function"
.LASF275:
	.string	"FLOAT"
.LASF729:
	.string	"mask_"
.LASF367:
	.string	"REG_EH_CONTEXT"
.LASF101:
	.string	"machine_mode"
.LASF623:
	.string	"rd_in"
.LASF423:
	.string	"chunk"
.LASF324:
	.string	"rtmem"
.LASF832:
	.string	"df_regno_debug"
.LASF497:
	.string	"fixup_var_refs_queue"
.LASF847:
	.string	"pending"
.LASF284:
	.string	"RANGE_REG"
.LASF322:
	.string	"rtbit"
.LASF578:
	.string	"bitmap_element_def"
.LASF3:
	.string	"call"
.LASF108:
	.string	"TImode"
.LASF260:
	.string	"PRE_MODIFY"
.LASF512:
	.string	"returns_pointer"
.LASF659:
	.string	"INTERSECTION"
.LASF786:
	.string	"use_insn"
.LASF273:
	.string	"FLOAT_EXTEND"
.LASF744:
	.string	"df_lr_transfer_function"
.LASF556:
	.string	"last_note_uid"
.LASF456:
	.string	"stmt"
.LASF6:
	.string	"in_struct"
.LASF379:
	.string	"NOTE_INSN_BLOCK_BEG"
.LASF106:
	.string	"SImode"
.LASF217:
	.string	"ADDR_VEC"
.LASF536:
	.string	"stmt_status"
.LASF147:
	.string	"V2DFmode"
.LASF299:
	.string	"LAST_AND_UNUSED_RTX_CODE"
.LASF723:
	.string	"node_"
.LASF809:
	.string	"df_reg_global_p"
.LASF313:
	.string	"align"
.LASF49:
	.string	"sse_regno"
.LASF328:
	.string	"indx"
.LASF625:
	.string	"ru_kill"
.LASF505:
	.string	"machine"
.LASF667:
	.string	"nodes"
.LASF792:
	.string	"df_pattern_emit_before"
.LASF236:
	.string	"SYMBOL_REF"
.LASF377:
	.string	"NOTE_INSN_BIAS"
.LASF857:
	.string	"word_mode"
.LASF715:
	.string	"df_defs_record"
.LASF399:
	.string	"NOTE_INSN_MAX"
.LASF451:
	.string	"x_saveregs_value"
.LASF687:
	.string	"df_free"
.LASF708:
	.string	"df_ref_record_1"
.LASF189:
	.string	"DEFINE_INSN_AND_SPLIT"
.LASF241:
	.string	"COMPARE"
.LASF269:
	.string	"LTGT"
.LASF427:
	.string	"temp"
.LASF416:
	.string	"unsignedp"
.LASF281:
	.string	"HIGH"
.LASF238:
	.string	"QUEUED"
.LASF26:
	.string	"NON_Q_REGS"
.LASF1:
	.string	"mode"
.LASF107:
	.string	"DImode"
.LASF573:
	.string	"_obstack_chunk"
.LASF590:
	.string	"elms"
.LASF542:
	.string	"const_equiv_data"
.LASF471:
	.string	"hard_reg_initial_vals"
.LASF449:
	.string	"x_inhibit_defer_pop"
.LASF78:
	.string	"_chain"
.LASF259:
	.string	"POST_INC"
.LASF581:
	.string	"bitmap_bits"
.LASF583:
	.string	"BITMAP_AND_COMPL"
.LASF778:
	.string	"df_refs_reg_replace"
.LASF120:
	.string	"TFmode"
.LASF56:
	.string	"unsigned char"
.LASF539:
	.string	"temp_slot"
.LASF31:
	.string	"FP_SECOND_REG"
.LASF454:
	.string	"x_pending_chain"
.LASF737:
	.string	"df_du_chain_create"
.LASF644:
	.string	"n_bbs"
.LASF630:
	.string	"lr_use"
.LASF470:
	.string	"cannot_inline"
.LASF873:
	.string	"_IO_lock_t"
.LASF422:
	.string	"chunk_size"
.LASF563:
	.string	"basic_block"
.LASF103:
	.string	"BImode"
.LASF257:
	.string	"PRE_INC"
.LASF354:
	.string	"REG_NO_CONFLICT"
.LASF117:
	.string	"SFmode"
.LASF668:
	.string	"root"
.LASF457:
	.string	"emit"
.LASF206:
	.string	"JUMP_INSN"
.LASF336:
	.string	"cond_local_set"
.LASF600:
	.string	"edge"
.LASF169:
	.string	"MODE_COMPLEX_FLOAT"
.LASF323:
	.string	"rttree"
.LASF726:
	.string	"bit_num_"
.LASF424:
	.string	"object_base"
.LASF376:
	.string	"insn_note"
.LASF395:
	.string	"NOTE_INSN_RANGE_END"
.LASF188:
	.string	"DEFINE_SPLIT"
.LASF519:
	.string	"has_nonlocal_goto"
.LASF533:
	.string	"arg_pointer_save_area_init"
.LASF627:
	.string	"ru_in"
.LASF227:
	.string	"CONST_VECTOR"
.LASF185:
	.string	"MATCH_INSN"
.LASF690:
	.string	"df_reg_clobber_gen"
.LASF479:
	.string	"x_save_expr_regs"
.LASF118:
	.string	"DFmode"
.LASF33:
	.string	"SSE_REGS"
.LASF593:
	.string	"gcov_type"
.LASF800:
	.string	"before_insn"
.LASF54:
	.string	"size_t"
.LASF219:
	.string	"PREFETCH"
.LASF42:
	.string	"LIM_REG_CLASSES"
.LASF41:
	.string	"ALL_REGS"
.LASF462:
	.string	"pops_args"
.LASF112:
	.string	"PSImode"
.LASF481:
	.string	"x_rtl_expr_chain"
.LASF283:
	.string	"RANGE_INFO"
.LASF654:
	.string	"inverse_rc_map"
.LASF701:
	.string	"df_use_unlink"
.LASF543:
	.string	"rtunion_def"
.LASF699:
	.string	"du_link"
.LASF199:
	.string	"DEFINE_ATTR"
.LASF201:
	.string	"SET_ATTR"
.LASF126:
	.string	"TCmode"
.LASF473:
	.string	"x_nonlocal_labels"
.LASF748:
	.string	"df_rd_local_compute"
.LASF276:
	.string	"UNSIGNED_FLOAT"
.LASF366:
	.string	"REG_FRAME_RELATED_EXPR"
.LASF534:
	.string	"cselib_val_struct"
.LASF398:
	.string	"NOTE_INSN_EXPECTED_VALUE"
.LASF70:
	.string	"_IO_write_ptr"
.LASF745:
	.string	"df_bb_rd_local_compute"
.LASF576:
	.string	"contents"
.LASF248:
	.string	"ROTATE"
.LASF334:
	.string	"succ"
.LASF558:
	.string	"refs"
.LASF821:
	.string	"df_bb_regno_last_use_find"
.LASF814:
	.string	"reg1"
.LASF272:
	.string	"TRUNCATE"
.LASF815:
	.string	"reg2"
.LASF359:
	.string	"REG_DEP_ANTI"
.LASF123:
	.string	"SCmode"
.LASF858:
	.string	"rtx_length"
.LASF674:
	.string	"degree"
.LASF409:
	.string	"GR_VIRTUAL_STACK_DYNAMIC"
.LASF826:
	.string	"df_chain_dump"
.LASF113:
	.string	"PDImode"
.LASF380:
	.string	"NOTE_INSN_BLOCK_END"
.LASF549:
	.string	"bitmap"
.LASF389:
	.string	"NOTE_INSN_DELETED_LABEL"
.LASF860:
	.string	"rtx_class"
.LASF692:
	.string	"link"
.LASF343:
	.string	"flags"
.LASF446:
	.string	"x_regno_reg_rtx"
.LASF176:
	.string	"EXPR_LIST"
.LASF203:
	.string	"EQ_ATTR"
.LASF606:
	.string	"df_link"
.LASF156:
	.string	"CCGOCmode"
.LASF234:
	.string	"CONCAT"
.LASF595:
	.string	"pred_next"
.LASF302:
	.string	"min_after_vec"
.LASF63:
	.string	"FILE"
.LASF240:
	.string	"COND"
.LASF587:
	.string	"simple_bitmap_def"
.LASF166:
	.string	"MODE_PARTIAL_INT"
.LASF489:
	.string	"x_parm_birth_insn"
.LASF673:
	.string	"right"
.LASF491:
	.string	"x_max_parm_reg"
.LASF642:
	.string	"use_id"
.LASF15:
	.string	"tree"
.LASF637:
	.string	"regs"
.LASF124:
	.string	"DCmode"
.LASF191:
	.string	"DEFINE_COMBINE"
.LASF869:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF483:
	.string	"x_tail_recursion_reentry"
.LASF249:
	.string	"ASHIFTRT"
.LASF664:
	.string	"transfer_function_bitmap"
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
.LASF604:
	.string	"DF_REF_REG_MEM_LOAD"
.LASF585:
	.string	"BITMAP_XOR"
.LASF743:
	.string	"df_ru_transfer_function"
.LASF828:
	.string	"df_chain_dump_regno"
.LASF396:
	.string	"NOTE_INSN_LIVE"
.LASF196:
	.string	"DEFINE_COND_EXEC"
.LASF629:
	.string	"lr_def"
.LASF74:
	.string	"_IO_save_base"
.LASF413:
	.string	"var_refs_queue"
.LASF450:
	.string	"x_stack_pointer_delta"
.LASF192:
	.string	"DEFINE_EXPAND"
.LASF522:
	.string	"is_thunk"
.LASF682:
	.string	"df_bitmaps_alloc"
.LASF724:
	.string	"ptr_"
.LASF569:
	.string	"elements_used"
.LASF805:
	.string	"df_insn_dominates_uses_p"
.LASF143:
	.string	"V8SImode"
.LASF475:
	.string	"x_nonlocal_goto_handler_labels"
.LASF205:
	.string	"INSN"
.LASF316:
	.string	"rtint"
.LASF848:
	.string	"hybrid_search_sbitmap"
.LASF235:
	.string	"LABEL_REF"
.LASF358:
	.string	"REG_LABEL"
.LASF626:
	.string	"ru_gen"
.LASF565:
	.string	"elt_list"
.LASF777:
	.string	"df_rtx_reg_replace"
.LASF346:
	.string	"REG_DEAD"
.LASF827:
	.string	"file"
.LASF386:
	.string	"NOTE_INSN_FUNCTION_END"
.LASF88:
	.string	"__pad2"
.LASF782:
	.string	"oldregno"
.LASF856:
	.string	"mode_size"
.LASF349:
	.string	"REG_EQUAL"
.LASF0:
	.string	"code"
.LASF592:
	.string	"regset"
.LASF615:
	.string	"luid"
.LASF798:
	.string	"df_insn_move_before"
.LASF647:
	.string	"use_id_save"
.LASF155:
	.string	"CCGCmode"
.LASF338:
	.string	"global_live_at_end"
.LASF864:
	.string	"regs_invalidated_by_call"
.LASF802:
	.string	"df_def_dominates_all_uses_p"
.LASF840:
	.string	"debug_df_useno"
.LASF610:
	.string	"df_ref_flags"
.LASF231:
	.string	"SCRATCH"
.LASF141:
	.string	"V8QImode"
.LASF144:
	.string	"V8DImode"
.LASF172:
	.string	"MAX_MODE_CLASS"
.LASF702:
	.string	"ud_link"
.LASF727:
	.string	"word_num_"
.LASF861:
	.string	"cfun"
.LASF270:
	.string	"SIGN_EXTEND"
.LASF514:
	.string	"calls_setjmp"
.LASF695:
	.string	"value"
.LASF292:
	.string	"VEC_DUPLICATE"
.LASF783:
	.string	"df_ref_reg_replace"
.LASF628:
	.string	"ru_out"
.LASF620:
	.string	"bb_info"
.LASF476:
	.string	"x_nonlocal_goto_stack_level"
.LASF838:
	.string	"debug_df_defno"
.LASF95:
	.string	"_next"
.LASF683:
	.string	"dflags"
.LASF801:
	.string	"df_insn_regno_def_p"
.LASF310:
	.string	"expr"
.LASF636:
	.string	"reg_def_last"
.LASF392:
	.string	"NOTE_INSN_EH_REGION_END"
.LASF429:
	.string	"chunkfun"
.LASF720:
	.string	"df_bb_refs_record"
.LASF474:
	.string	"x_nonlocal_goto_handler_slots"
.LASF150:
	.string	"V8SFmode"
.LASF787:
	.string	"def_uid"
.LASF607:
	.string	"insn"
.LASF23:
	.string	"DIREG"
.LASF357:
	.string	"REG_CC_USER"
.LASF214:
	.string	"ASM_OPERANDS"
.LASF494:
	.string	"x_temp_slot_level"
.LASF158:
	.string	"CCZmode"
.LASF383:
	.string	"NOTE_INSN_LOOP_CONT"
.LASF839:
	.string	"defno"
.LASF27:
	.string	"INDEX_REGS"
.LASF689:
	.string	"df_reg_use_gen"
.LASF754:
	.string	"live"
.LASF619:
	.string	"n_uses"
.LASF725:
	.string	"indx_"
.LASF520:
	.string	"contains_functions"
.LASF458:
	.string	"varasm"
.LASF372:
	.string	"REG_NON_LOCAL_GOTO"
.LASF218:
	.string	"ADDR_DIFF_VEC"
.LASF669:
	.string	"fibnode"
.LASF280:
	.string	"ZERO_EXTRACT"
.LASF545:
	.string	"hint"
.LASF213:
	.string	"ASM_INPUT"
.LASF263:
	.string	"ORDERED"
.LASF151:
	.string	"V8DFmode"
.LASF415:
	.string	"promoted_mode"
.LASF658:
	.string	"UNION"
.LASF568:
	.string	"num_elements"
.LASF697:
	.string	"phead"
.LASF277:
	.string	"UNSIGNED_FIX"
.LASF765:
	.string	"df_refs_process"
.LASF511:
	.string	"returns_pcc_struct"
.LASF769:
	.string	"df_analyse"
.LASF47:
	.string	"sse_words"
.LASF797:
	.string	"df_jump_pattern_emit_after"
.LASF665:
	.string	"fibheapkey_t"
.LASF29:
	.string	"GENERAL_REGS"
.LASF855:
	.string	"stderr"
.LASF680:
	.string	"df_insn_table_realloc"
.LASF459:
	.string	"name"
.LASF177:
	.string	"INSN_LIST"
.LASF96:
	.string	"_sbuf"
.LASF285:
	.string	"RANGE_VAR"
.LASF564:
	.string	"changes_mode"
.LASF76:
	.string	"_IO_save_end"
.LASF164:
	.string	"MODE_INT"
.LASF570:
	.string	"element_size"
.LASF862:
	.string	"reg_raw_mode"
.LASF466:
	.string	"arg_offset_rtx"
.LASF2:
	.string	"jump"
.LASF46:
	.string	"regno"
.LASF447:
	.string	"expr_status"
.LASF730:
	.string	"df_bb_reg_def_chain_create"
.LASF700:
	.string	"dregno"
.LASF518:
	.string	"has_nonlocal_label"
.LASF609:
	.string	"type"
.LASF286:
	.string	"RANGE_LIVE"
.LASF448:
	.string	"x_pending_stack_adjust"
.LASF134:
	.string	"V2HImode"
.LASF463:
	.string	"args_size"
.LASF9:
	.string	"frame_related"
.LASF551:
	.string	"const_equiv"
.LASF790:
	.string	"first_insn"
.LASF555:
	.string	"last_uid"
.LASF320:
	.string	"rt_addr_diff_vec_flags"
.LASF753:
	.string	"df_bb_reg_info_compute"
.LASF406:
	.string	"GR_ARG_POINTER"
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
.LASF653:
	.string	"rts_order"
.LASF624:
	.string	"rd_out"
.LASF57:
	.string	"short unsigned int"
.LASF58:
	.string	"signed char"
.LASF612:
	.string	"insn_info"
.LASF181:
	.string	"MATCH_OPERATOR"
.LASF567:
	.string	"varray_head_tag"
.LASF327:
	.string	"current"
.LASF440:
	.string	"x_cur_insn_uid"
.LASF490:
	.string	"x_last_parm_insn"
.LASF297:
	.string	"SS_TRUNCATE"
.LASF362:
	.string	"REG_EXEC_COUNT"
.LASF499:
	.string	"no_debugging_symbols"
.LASF750:
	.string	"df_ru_local_compute"
.LASF638:
	.string	"reg_size"
.LASF301:
	.string	"base_after_vec"
.LASF186:
	.string	"DEFINE_INSN"
.LASF61:
	.string	"__off64_t"
.LASF666:
	.string	"fibheap"
.LASF663:
	.string	"transfer_function_sbitmap"
.LASF140:
	.string	"V4DImode"
.LASF433:
	.string	"maybe_empty_object"
.LASF340:
	.string	"loop_depth"
.LASF749:
	.string	"df_bb_ru_local_compute"
.LASF68:
	.string	"_IO_read_base"
.LASF39:
	.string	"INT_SSE_REGS"
.LASF86:
	.string	"_offset"
.LASF830:
	.string	"df_insn_debug"
.LASF407:
	.string	"GR_VIRTUAL_INCOMING_ARGS"
.LASF442:
	.string	"x_last_filename"
.LASF360:
	.string	"REG_DEP_OUTPUT"
.LASF73:
	.string	"_IO_buf_end"
.LASF588:
	.string	"n_bits"
.LASF195:
	.string	"DEFINE_ASM_ATTRIBUTES"
.LASF296:
	.string	"US_MINUS"
.LASF756:
	.string	"df_bb_luids_set"
.LASF731:
	.string	"df_reg_def_chain_create"
.LASF468:
	.string	"return_rtx"
.LASF721:
	.string	"df_refs_record"
.LASF35:
	.string	"FP_TOP_SSE_REGS"
.LASF279:
	.string	"SIGN_EXTRACT"
.LASF8:
	.string	"integrated"
.LASF561:
	.string	"live_length"
.LASF706:
	.string	"ref_flags"
.LASF220:
	.string	"CLOBBER"
.LASF594:
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
.LASF455:
	.string	"function"
.LASF148:
	.string	"V4SFmode"
.LASF611:
	.string	"DF_REF_READ_WRITE"
.LASF523:
	.string	"instrument_entry_exit"
.LASF757:
	.string	"df_luids_set"
.LASF799:
	.string	"before_bb"
.LASF773:
	.string	"df_insn_modify"
.LASF684:
	.string	"df_bitmaps_free"
.LASF486:
	.string	"x_frame_offset"
.LASF242:
	.string	"PLUS"
.LASF258:
	.string	"POST_DEC"
.LASF579:
	.string	"bits"
.LASF105:
	.string	"HImode"
.LASF344:
	.string	"rtunion"
.LASF385:
	.string	"NOTE_INSN_LOOP_END_TOP_COND"
.LASF631:
	.string	"lr_in"
.LASF168:
	.string	"MODE_COMPLEX_INT"
.LASF535:
	.string	"eh_status"
.LASF418:
	.string	"sequence_stack"
.LASF53:
	.string	"long int"
.LASF411:
	.string	"GR_VIRTUAL_CFA"
.LASF866:
	.string	"basic_block_info"
.LASF350:
	.string	"REG_WAS_0"
.LASF829:
	.string	"df_dump"
.LASF371:
	.string	"REG_NORETURN"
.LASF676:
	.string	"fibheap_t"
.LASF94:
	.string	"_IO_marker"
.LASF119:
	.string	"XFmode"
.LASF513:
	.string	"needs_context"
.LASF370:
	.string	"REG_MAYBE_DEAD"
.LASF574:
	.string	"limit"
.LASF149:
	.string	"V4DFmode"
.LASF810:
	.string	"df_reg_lifetime"
.LASF4:
	.string	"unchanging"
.LASF804:
	.string	"df_def_dominates_uses_p"
.LASF345:
	.string	"reg_note"
.LASF517:
	.string	"calls_eh_return"
.LASF496:
	.string	"x_target_temp_slot_level"
.LASF646:
	.string	"def_id_save"
.LASF464:
	.string	"pretend_args_size"
.LASF834:
	.string	"debug_df_insn"
.LASF173:
	.string	"rtx_code"
.LASF51:
	.string	"CUMULATIVE_ARGS"
.LASF793:
	.string	"pattern"
.LASF788:
	.string	"use_uid"
.LASF795:
	.string	"prev_insn"
.LASF419:
	.string	"last"
.LASF643:
	.string	"use_size"
.LASF780:
	.string	"newreg"
.LASF526:
	.string	"varargs"
.LASF652:
	.string	"rc_order"
.LASF20:
	.string	"CREG"
.LASF678:
	.string	"match"
.LASF528:
	.string	"x_whole_function_mode_p"
.LASF779:
	.string	"oldreg"
.LASF174:
	.string	"UNKNOWN"
.LASF216:
	.string	"UNSPEC_VOLATILE"
.LASF541:
	.string	"language_function"
.LASF698:
	.string	"df_def_unlink"
.LASF430:
	.string	"freefun"
.LASF388:
	.string	"NOTE_INSN_EPILOGUE_BEG"
.LASF55:
	.string	"long unsigned int"
.LASF11:
	.string	"rtx_def"
.LASF812:
	.string	"df_bb_reg_live_end_p"
.LASF851:
	.string	"worklist"
.LASF115:
	.string	"HFmode"
.LASF502:
	.string	"inl_last_parm_insn"
.LASF223:
	.string	"TRAP_IF"
.LASF794:
	.string	"ret_insn"
.LASF560:
	.string	"deaths"
.LASF831:
	.string	"df_insn_debug_regno"
.LASF368:
	.string	"REG_EH_REGION"
.LASF492:
	.string	"x_parm_reg_stack_loc"
.LASF662:
	.string	"BACKWARD"
.LASF351:
	.string	"REG_RETVAL"
.LASF127:
	.string	"CQImode"
.LASF62:
	.string	"char"
.LASF510:
	.string	"returns_struct"
.LASF125:
	.string	"XCmode"
.LASF484:
	.string	"x_arg_pointer_save_area"
.LASF686:
	.string	"n_insns"
.LASF18:
	.string	"AREG"
.LASF789:
	.string	"df_insns_modify"
.LASF633:
	.string	"rd_valid"
.LASF482:
	.string	"x_tail_recursion_label"
.LASF425:
	.string	"next_free"
.LASF72:
	.string	"_IO_buf_base"
.LASF508:
	.string	"language"
.LASF251:
	.string	"ROTATERT"
.LASF237:
	.string	"ADDRESSOF"
.LASF842:
	.string	"hybrid_search_bitmap"
.LASF373:
	.string	"REG_SETJMP"
.LASF853:
	.string	"df_ref_obstack"
.LASF133:
	.string	"V2QImode"
.LASF428:
	.string	"alignment_mask"
.LASF436:
	.string	"x_reg_rtx_no"
.LASF111:
	.string	"PHImode"
.LASF67:
	.string	"_IO_read_end"
.LASF414:
	.string	"modified"
.LASF445:
	.string	"regno_decl"
.LASF421:
	.string	"obstack"
.LASF553:
	.string	"reg_info_def"
.LASF132:
	.string	"COImode"
.LASF256:
	.string	"PRE_DEC"
.LASF807:
	.string	"bb_def"
.LASF64:
	.string	"_IO_FILE"
.LASF387:
	.string	"NOTE_INSN_PROLOGUE_END"
.LASF405:
	.string	"GR_HARD_FRAME_POINTER"
.LASF356:
	.string	"REG_CC_SETTER"
.LASF516:
	.string	"calls_alloca"
.LASF495:
	.string	"x_var_temp_slot_level"
.LASF163:
	.string	"MODE_RANDOM"
.LASF294:
	.string	"US_PLUS"
.LASF824:
	.string	"df_bb_insn_regno_first_def_find"
.LASF657:
	.string	"df_confluence_op"
.LASF762:
	.string	"df_ref_remove"
.LASF772:
	.string	"df_finish"
.LASF153:
	.string	"BLKmode"
.LASF122:
	.string	"HCmode"
.LASF738:
	.string	"df_bb_ud_chain_create"
.LASF846:
	.string	"visited"
.LASF833:
	.string	"df_ref_debug"
.LASF776:
	.string	"df_insn_mem_replace"
.LASF228:
	.string	"CONST_STRING"
.LASF291:
	.string	"VEC_CONCAT"
.LASF312:
	.string	"size"
.LASF681:
	.string	"df_reg_table_realloc"
.LASF803:
	.string	"df_insn_dominates_all_uses_p"
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
.LASF696:
	.string	"df_ref_unlink"
.LASF204:
	.string	"ATTR_FLAG"
.LASF634:
	.string	"ru_valid"
.LASF160:
	.string	"CCFPUmode"
.LASF651:
	.string	"dfs_order"
.LASF347:
	.string	"REG_INC"
.LASF194:
	.string	"DEFINE_FUNCTION_UNIT"
.LASF739:
	.string	"df_ud_chain_create"
.LASF591:
	.string	"sbitmap"
.LASF487:
	.string	"x_context_display"
.LASF768:
	.string	"df_modified_p"
.LASF77:
	.string	"_markers"
.LASF97:
	.string	"_pos"
.LASF198:
	.string	"ADDRESS"
.LASF760:
	.string	"update"
.LASF598:
	.string	"insns"
.LASF500:
	.string	"original_arg_vector"
.LASF781:
	.string	"df_reg_replace"
.LASF434:
	.string	"alloc_failed"
.LASF868:
	.string	"basic_block_for_insn"
.LASF532:
	.string	"uses_eh_lsda"
.LASF548:
	.string	"cptr"
.LASF774:
	.string	"df_rtx_mem_replace"
.LASF325:
	.string	"bitmap_head_def"
.LASF650:
	.string	"all_blocks"
.LASF746:
	.string	"def2_link"
.LASF557:
	.string	"sets"
.LASF741:
	.string	"changed"
.LASF562:
	.string	"calls_crossed"
.LASF298:
	.string	"US_TRUNCATE"
.LASF837:
	.string	"debug_df_ref"
.LASF835:
	.string	"debug_df_reg"
.LASF775:
	.string	"args"
.LASF400:
	.string	"global_rtl_index"
.LASF45:
	.string	"nregs"
.LASF293:
	.string	"SS_PLUS"
.LASF852:
	.string	"iterative_dataflow_bitmap"
.LASF255:
	.string	"UMAX"
.LASF34:
	.string	"MMX_REGS"
.LASF307:
	.string	"scale"
.LASF104:
	.string	"QImode"
.LASF854:
	.string	"target_flags"
.LASF571:
	.string	"data"
.LASF403:
	.string	"GR_STACK_POINTER"
.LASF752:
	.string	"df_lr_local_compute"
.LASF116:
	.string	"TQFmode"
.LASF728:
	.string	"word_"
.LASF330:
	.string	"head"
.LASF707:
	.string	"this_ref"
.LASF661:
	.string	"FORWARD"
.LASF44:
	.string	"words"
.LASF304:
	.string	"min_after_base"
.LASF688:
	.string	"__obj"
.LASF550:
	.string	"sched"
.LASF823:
	.string	"df_bb_insn_regno_last_use_find"
.LASF529:
	.string	"x_dont_save_pending_sizes_p"
.LASF43:
	.string	"ix86_args"
.LASF740:
	.string	"df_rd_transfer_function"
.LASF426:
	.string	"chunk_limit"
.LASF17:
	.string	"NO_REGS"
.LASF672:
	.string	"left"
.LASF763:
	.string	"df_init"
.LASF742:
	.string	"kill"
.LASF735:
	.string	"def_link"
.LASF465:
	.string	"outgoing_args_size"
.LASF109:
	.string	"OImode"
.LASF369:
	.string	"REG_SAVE_NOTE"
.LASF589:
	.string	"bytes"
.LASF791:
	.string	"last_insn"
.LASF253:
	.string	"SMAX"
.LASF412:
	.string	"GR_MAX"
.LASF290:
	.string	"VEC_SELECT"
.LASF771:
	.string	"df_insn_delete"
.LASF353:
	.string	"REG_NONNEG"
.LASF506:
	.string	"stack_alignment_needed"
.LASF605:
	.string	"DF_REF_REG_MEM_STORE"
.LASF621:
	.string	"rd_kill"
.LASF435:
	.string	"emit_status"
.LASF714:
	.string	"df_def_record_1"
.LASF171:
	.string	"MODE_VECTOR_FLOAT"
.LASF718:
	.string	"note"
.LASF261:
	.string	"POST_MODIFY"
.LASF709:
	.string	"df_ref_record"
.LASF874:
	.string	"retry"
.LASF767:
	.string	"df_refs_update"
.LASF365:
	.string	"REG_BR_PRED"
.LASF187:
	.string	"DEFINE_PEEPHOLE"
.LASF98:
	.string	"long long unsigned int"
.LASF394:
	.string	"NOTE_INSN_RANGE_BEG"
.LASF670:
	.string	"parent"
.LASF311:
	.string	"offset"
.LASF308:
	.string	"addr_diff_vec_flags"
.LASF82:
	.string	"_cur_column"
.LASF685:
	.string	"df_alloc"
.LASF183:
	.string	"MATCH_OP_DUP"
.LASF197:
	.string	"SEQUENCE"
.LASF432:
	.string	"use_extra_arg"
.LASF114:
	.string	"QFmode"
.LASF467:
	.string	"args_info"
.LASF632:
	.string	"lr_out"
.LASF525:
	.string	"limit_stack"
.LASF224:
	.string	"RESX"
.LASF597:
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
.LASF825:
	.string	"df_bb_single_def_use_insn_find"
.LASF337:
	.string	"global_live_at_start"
.LASF40:
	.string	"FLOAT_INT_SSE_REGS"
.LASF179:
	.string	"MATCH_SCRATCH"
.LASF229:
	.string	"CONST"
.LASF444:
	.string	"regno_pointer_align"
.LASF278:
	.string	"SQRT"
.LASF402:
	.string	"GR_CC0"
.LASF679:
	.string	"replacement"
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
.LASF420:
	.string	"sequence_rtl_expr"
.LASF677:
	.string	"replace_args"
.LASF806:
	.string	"df_regno_bb"
.LASF142:
	.string	"V8HImode"
.LASF586:
	.string	"BITMAP_IOR_COMPL"
.LASF703:
	.string	"uregno"
.LASF493:
	.string	"x_temp_slots"
.LASF480:
	.string	"x_stack_slot_list"
.LASF81:
	.string	"_old_offset"
.LASF207:
	.string	"CALL_INSN"
.LASF649:
	.string	"bbs_modified"
.LASF232:
	.string	"SUBREG"
.LASF616:
	.string	"reg_info"
.LASF515:
	.string	"calls_longjmp"
.LASF145:
	.string	"V16QImode"
.LASF374:
	.string	"REG_ALWAYS_RETURN"
.LASF656:
	.string	"inverse_rts_map"
.LASF460:
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
.LASF645:
	.string	"n_regs"
.LASF819:
	.string	"use1"
.LASF820:
	.string	"use2"
.LASF48:
	.string	"sse_nregs"
.LASF254:
	.string	"UMIN"
.LASF180:
	.string	"MATCH_DUP"
.LASF845:
	.string	"transfun"
.LASF577:
	.string	"HARD_REG_ELT_TYPE"
.LASF836:
	.string	"debug_df_regno"
.LASF329:
	.string	"basic_block_def"
.LASF639:
	.string	"insn_size"
.LASF584:
	.string	"BITMAP_IOR"
.LASF601:
	.string	"df_ref_type"
.LASF618:
	.string	"n_defs"
.LASF537:
	.string	"varasm_status"
.LASF770:
	.string	"df_insn_refs_unlink"
.LASF7:
	.string	"used"
.LASF691:
	.string	"df_link_create"
.LASF614:
	.string	"uses"
.LASF381:
	.string	"NOTE_INSN_LOOP_BEG"
.LASF580:
	.string	"bitmap_element"
.LASF472:
	.string	"x_function_call_count"
.LASF575:
	.string	"prev"
.LASF128:
	.string	"CHImode"
.LASF397:
	.string	"NOTE_INSN_BASIC_BLOCK"
.LASF602:
	.string	"DF_REF_REG_DEF"
.LASF202:
	.string	"SET_ATTR_ALTERNATIVE"
.LASF759:
	.string	"df_analyse_1"
.LASF785:
	.string	"def_insn"
.LASF655:
	.string	"inverse_dfs_map"
.LASF443:
	.string	"regno_pointer_align_length"
.LASF438:
	.string	"x_first_insn"
.LASF452:
	.string	"x_apply_args_value"
.LASF818:
	.string	"def1"
.LASF747:
	.string	"def2"
.LASF38:
	.string	"FLOAT_INT_REGS"
.LASF226:
	.string	"CONST_DOUBLE"
.LASF554:
	.string	"first_uid"
.LASF157:
	.string	"CCNOmode"
.LASF138:
	.string	"V4HImode"
.LASF264:
	.string	"UNEQ"
.LASF247:
	.string	"ASHIFT"
.LASF252:
	.string	"SMIN"
.LASF710:
	.string	"__FUNCTION__"
.LASF239:
	.string	"IF_THEN_ELSE"
.LASF734:
	.string	"df_bb_du_chain_create"
.LASF719:
	.string	"reg_clob"
.LASF613:
	.string	"defs"
.LASF755:
	.string	"df_reg_info_compute"
.LASF603:
	.string	"DF_REF_REG_USE"
.LASF393:
	.string	"NOTE_INSN_REPEATED_LINE_NUMBER"
.LASF461:
	.string	"outer"
.LASF431:
	.string	"extra_arg"
.LASF390:
	.string	"NOTE_INSN_FUNCTION_BEG"
.LASF441:
	.string	"x_last_linenum"
.LASF850:
	.string	"order"
.LASF52:
	.string	"unsigned int"
.LASF872:
	.string	"tree_node"
.LASF641:
	.string	"def_size"
.LASF477:
	.string	"x_cleanup_label"
.LASF303:
	.string	"max_after_vec"
.LASF265:
	.string	"UNGE"
.LASF59:
	.string	"short int"
.LASF333:
	.string	"pred"
.LASF266:
	.string	"UNGT"
.LASF671:
	.string	"child"
.LASF521:
	.string	"has_computed_jump"
.LASF439:
	.string	"x_last_insn"
.LASF524:
	.string	"profile"
.LASF83:
	.string	"_vtable_offset"
.LASF507:
	.string	"preferred_stack_boundary"
.LASF716:
	.string	"df_uses_record"
.LASF102:
	.string	"VOIDmode"
.LASF375:
	.string	"REG_VTABLE_REF"
.LASF410:
	.string	"GR_VIRTUAL_OUTGOING_ARGS"
.LASF282:
	.string	"LO_SUM"
.LASF342:
	.string	"frequency"
.LASF315:
	.string	"rtwint"
.LASF784:
	.string	"df_bb_def_use_swap"
.LASF596:
	.string	"succ_next"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
