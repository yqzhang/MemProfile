	.file	"reunitarize2.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I . -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D FN -D FAST -D CONGRAD_TMP_VECTORS -D DSLASH_TMP_LINKS -D SPEC_CPU_LP64
# reunitarize2.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.comm	max_deviation,8,8
	.comm	av_deviation,8,8
	.globl	check_deviation
	.type	check_deviation, @function
check_deviation:
.LFB2:
	.file 1 "reunitarize2.c"
	.loc 1 64 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movsd	%xmm0, -8(%rbp)	# deviation, deviation
	.loc 1 66 0
	movsd	max_deviation(%rip), %xmm1	# max_deviation, max_deviation.0
	movsd	-8(%rbp), %xmm0	# deviation, tmp65
	ucomisd	%xmm1, %xmm0	# max_deviation.0, tmp65
	jbe	.L2	#,
	.loc 1 66 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# deviation, tmp66
	movq	%rax, max_deviation(%rip)	# tmp66, max_deviation
.L2:
	.loc 1 67 0 is_stmt 1
	movsd	-8(%rbp), %xmm0	# deviation, tmp67
	mulsd	-8(%rbp), %xmm0	# deviation, D.5307
	movsd	av_deviation(%rip), %xmm1	# av_deviation, av_deviation.1
	addsd	%xmm1, %xmm0	# av_deviation.1, av_deviation.2
	movsd	%xmm0, av_deviation(%rip)	# av_deviation.2, av_deviation
	.loc 1 69 0
	movsd	-8(%rbp), %xmm0	# deviation, tmp68
	ucomisd	.LC0(%rip), %xmm0	#, tmp68
	jbe	.L9	#,
	.loc 1 70 0
	movl	$1, %eax	#, D.5306
	jmp	.L6	#
.L9:
	.loc 1 72 0
	movl	$0, %eax	#, D.5306
.L6:
	.loc 1 73 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	check_deviation, .-check_deviation
	.section	.rodata
	.align 8
.LC1:
	.string	"Unitarity problem on node %d, site %d, dir %d tolerance=%e\n"
.LC2:
	.string	"SU3 matrix:"
.LC3:
	.string	"%f "
.LC4:
	.string	"repeat in hex:"
.LC5:
	.string	"%08x "
.LC6:
	.string	"  \n "
	.text
	.globl	reunit_report_problem_matrix
	.type	reunit_report_problem_matrix, @function
reunit_report_problem_matrix:
.LFB3:
	.loc 1 76 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -40(%rbp)	# mat, mat
	movl	%esi, -44(%rbp)	# i, i
	movl	%edx, -48(%rbp)	# dir, dir
	.loc 1 83 0
	movl	$0, %eax	#,
	call	mynode	#
	movl	%eax, %esi	#, D.5308
	movabsq	$4547007122018943789, %rax	#, tmp67
	movl	-48(%rbp), %ecx	# dir, tmp68
	movl	-44(%rbp), %edx	# i, tmp69
	movq	%rax, -56(%rbp)	# tmp67, %sfp
	movsd	-56(%rbp), %xmm0	# %sfp,
	movl	$.LC1, %edi	#,
	movl	$1, %eax	#,
	call	printf	#
	.loc 1 85 0
	movl	$.LC2, %edi	#,
	call	puts	#
	.loc 1 86 0
	movl	$0, -24(%rbp)	#, ii
	jmp	.L11	#
.L14:
	.loc 1 87 0
	movl	$0, -20(%rbp)	#, jj
	jmp	.L12	#
.L13:
	.loc 1 88 0 discriminator 2
	movq	-40(%rbp), %rcx	# mat, tmp70
	movl	-20(%rbp), %eax	# jj, tmp72
	movslq	%eax, %rsi	# tmp72, tmp71
	movl	-24(%rbp), %eax	# ii, tmp74
	movslq	%eax, %rdx	# tmp74, tmp73
	movq	%rdx, %rax	# tmp73, tmp75
	addq	%rax, %rax	# tmp75
	addq	%rdx, %rax	# tmp73, tmp75
	addq	%rsi, %rax	# tmp71, tmp76
	salq	$4, %rax	#, tmp77
	addq	%rcx, %rax	# tmp70, tmp78
	movq	(%rax), %rax	# mat_10(D)->e[ii_1][jj_3].real, D.5309
	movq	%rax, -56(%rbp)	# D.5309, %sfp
	movsd	-56(%rbp), %xmm0	# %sfp,
	movl	$.LC3, %edi	#,
	movl	$1, %eax	#,
	call	printf	#
	.loc 1 89 0 discriminator 2
	movq	-40(%rbp), %rcx	# mat, tmp79
	movl	-20(%rbp), %eax	# jj, tmp81
	movslq	%eax, %rsi	# tmp81, tmp80
	movl	-24(%rbp), %eax	# ii, tmp83
	movslq	%eax, %rdx	# tmp83, tmp82
	movq	%rdx, %rax	# tmp82, tmp84
	addq	%rax, %rax	# tmp84
	addq	%rdx, %rax	# tmp82, tmp84
	addq	%rsi, %rax	# tmp80, tmp85
	salq	$4, %rax	#, tmp86
	addq	%rcx, %rax	# tmp79, tmp87
	addq	$8, %rax	#, tmp88
	movq	(%rax), %rax	# mat_10(D)->e[ii_1][jj_3].imag, D.5309
	movq	%rax, -56(%rbp)	# D.5309, %sfp
	movsd	-56(%rbp), %xmm0	# %sfp,
	movl	$.LC3, %edi	#,
	movl	$1, %eax	#,
	call	printf	#
	.loc 1 87 0 discriminator 2
	addl	$1, -20(%rbp)	#, jj
.L12:
	.loc 1 87 0 is_stmt 0 discriminator 1
	cmpl	$2, -20(%rbp)	#, jj
	jle	.L13	#,
	.loc 1 91 0 is_stmt 1
	movl	$10, %edi	#,
	call	putchar	#
	.loc 1 86 0
	addl	$1, -24(%rbp)	#, ii
.L11:
	.loc 1 86 0 is_stmt 0 discriminator 1
	cmpl	$2, -24(%rbp)	#, ii
	jle	.L14	#,
	.loc 1 93 0 is_stmt 1
	movl	$.LC4, %edi	#,
	call	puts	#
	.loc 1 94 0
	movl	$0, -24(%rbp)	#, ii
	jmp	.L15	#
.L18:
	.loc 1 95 0
	movl	$0, -20(%rbp)	#, jj
	jmp	.L16	#
.L17:
	.loc 1 96 0 discriminator 2
	movq	-40(%rbp), %rcx	# mat, tmp89
	movl	-20(%rbp), %eax	# jj, tmp91
	movslq	%eax, %rsi	# tmp91, tmp90
	movl	-24(%rbp), %eax	# ii, tmp93
	movslq	%eax, %rdx	# tmp93, tmp92
	movq	%rdx, %rax	# tmp92, tmp94
	addq	%rax, %rax	# tmp94
	addq	%rdx, %rax	# tmp92, tmp94
	addq	%rsi, %rax	# tmp90, tmp95
	salq	$4, %rax	#, tmp96
	addq	%rcx, %rax	# tmp89, tmp97
	movq	(%rax), %rax	# mat_10(D)->e[ii_2][jj_4].real, D.5309
	movq	%rax, -16(%rbp)	# D.5309, ifval.fval
	.loc 1 97 0 discriminator 2
	movl	-16(%rbp), %eax	# ifval.ival, D.5308
	movl	%eax, %esi	# D.5308,
	movl	$.LC5, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 98 0 discriminator 2
	movq	-40(%rbp), %rcx	# mat, tmp98
	movl	-20(%rbp), %eax	# jj, tmp100
	movslq	%eax, %rsi	# tmp100, tmp99
	movl	-24(%rbp), %eax	# ii, tmp102
	movslq	%eax, %rdx	# tmp102, tmp101
	movq	%rdx, %rax	# tmp101, tmp103
	addq	%rax, %rax	# tmp103
	addq	%rdx, %rax	# tmp101, tmp103
	addq	%rsi, %rax	# tmp99, tmp104
	salq	$4, %rax	#, tmp105
	addq	%rcx, %rax	# tmp98, tmp106
	addq	$8, %rax	#, tmp107
	movq	(%rax), %rax	# mat_10(D)->e[ii_2][jj_4].imag, D.5309
	movq	%rax, -16(%rbp)	# D.5309, ifval.fval
	.loc 1 99 0 discriminator 2
	movl	-16(%rbp), %eax	# ifval.ival, D.5308
	movl	%eax, %esi	# D.5308,
	movl	$.LC5, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 95 0 discriminator 2
	addl	$1, -20(%rbp)	#, jj
.L16:
	.loc 1 95 0 is_stmt 0 discriminator 1
	cmpl	$2, -20(%rbp)	#, jj
	jle	.L17	#,
	.loc 1 101 0 is_stmt 1
	movl	$10, %edi	#,
	call	putchar	#
	.loc 1 94 0
	addl	$1, -24(%rbp)	#, ii
.L15:
	.loc 1 94 0 is_stmt 0 discriminator 1
	cmpl	$2, -24(%rbp)	#, ii
	jle	.L18	#,
	.loc 1 103 0 is_stmt 1
	movl	$.LC6, %edi	#,
	call	puts	#
	.loc 1 104 0
	movq	stdout(%rip), %rax	# stdout, stdout.3
	movq	%rax, %rdi	# stdout.3,
	call	fflush	#
	.loc 1 105 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	reunit_report_problem_matrix, .-reunit_report_problem_matrix
	.globl	reunit_su3
	.type	reunit_su3, @function
reunit_su3:
.LFB4:
	.loc 1 108 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# c, c
	.loc 1 115 0
	movl	$0, -12(%rbp)	#, errors
	.loc 1 117 0
	movq	-24(%rbp), %rax	# c, tmp308
	movsd	(%rax), %xmm1	# c_2(D)->e[0][0].real, D.5317
	movq	-24(%rbp), %rax	# c, tmp309
	movsd	(%rax), %xmm0	# c_2(D)->e[0][0].real, D.5317
	mulsd	%xmm0, %xmm1	# D.5317, D.5317
	.loc 1 118 0
	movq	-24(%rbp), %rax	# c, tmp310
	movsd	8(%rax), %xmm2	# c_2(D)->e[0][0].imag, D.5317
	movq	-24(%rbp), %rax	# c, tmp311
	movsd	8(%rax), %xmm0	# c_2(D)->e[0][0].imag, D.5317
	mulsd	%xmm2, %xmm0	# D.5317, D.5317
	.loc 1 117 0
	addsd	%xmm0, %xmm1	# D.5317, D.5317
	.loc 1 119 0
	movq	-24(%rbp), %rax	# c, tmp312
	movsd	16(%rax), %xmm2	# c_2(D)->e[0][1].real, D.5317
	movq	-24(%rbp), %rax	# c, tmp313
	movsd	16(%rax), %xmm0	# c_2(D)->e[0][1].real, D.5317
	mulsd	%xmm2, %xmm0	# D.5317, D.5317
	.loc 1 118 0
	addsd	%xmm0, %xmm1	# D.5317, D.5317
	.loc 1 120 0
	movq	-24(%rbp), %rax	# c, tmp314
	movsd	24(%rax), %xmm2	# c_2(D)->e[0][1].imag, D.5317
	movq	-24(%rbp), %rax	# c, tmp315
	movsd	24(%rax), %xmm0	# c_2(D)->e[0][1].imag, D.5317
	mulsd	%xmm2, %xmm0	# D.5317, D.5317
	.loc 1 119 0
	addsd	%xmm0, %xmm1	# D.5317, D.5317
	.loc 1 121 0
	movq	-24(%rbp), %rax	# c, tmp316
	movsd	32(%rax), %xmm2	# c_2(D)->e[0][2].real, D.5317
	movq	-24(%rbp), %rax	# c, tmp317
	movsd	32(%rax), %xmm0	# c_2(D)->e[0][2].real, D.5317
	mulsd	%xmm2, %xmm0	# D.5317, D.5317
	.loc 1 120 0
	addsd	%xmm0, %xmm1	# D.5317, D.5317
	.loc 1 122 0
	movq	-24(%rbp), %rax	# c, tmp318
	movsd	40(%rax), %xmm2	# c_2(D)->e[0][2].imag, D.5317
	movq	-24(%rbp), %rax	# c, tmp319
	movsd	40(%rax), %xmm0	# c_2(D)->e[0][2].imag, D.5317
	mulsd	%xmm2, %xmm0	# D.5317, D.5317
	.loc 1 117 0
	addsd	%xmm0, %xmm1	# D.5317, ar
	movapd	%xmm1, %xmm4	# ar, ar
	.loc 1 124 0
	movsd	.LC7(%rip), %xmm0	#, tmp320
	movsd	%xmm4, -40(%rbp)	# ar, %sfp
	subsd	%xmm0, %xmm4	# tmp320, D.5317
	movapd	%xmm4, %xmm0	# D.5317, D.5317
	movsd	.LC8(%rip), %xmm1	#, tmp322
	andpd	%xmm1, %xmm0	# tmp322, tmp321
	movsd	%xmm0, -8(%rbp)	# tmp321, deviation
	.loc 1 125 0
	movq	-8(%rbp), %rax	# deviation, tmp323
	movq	%rax, -32(%rbp)	# tmp323, %sfp
	movsd	-32(%rbp), %xmm0	# %sfp,
	call	check_deviation	#
	addl	%eax, -12(%rbp)	# D.5318, errors
	.loc 1 127 0
	movsd	-40(%rbp), %xmm0	# %sfp,
	call	sqrt	#
	movsd	.LC7(%rip), %xmm1	#, tmp324
	divsd	%xmm0, %xmm1	# D.5317, ar
	.loc 1 128 0
	movq	-24(%rbp), %rax	# c, tmp325
	movsd	(%rax), %xmm0	# c_2(D)->e[0][0].real, D.5317
	mulsd	%xmm1, %xmm0	# ar, D.5317
	movq	-24(%rbp), %rax	# c, tmp326
	movsd	%xmm0, (%rax)	# D.5317, c_2(D)->e[0][0].real
	.loc 1 129 0
	movq	-24(%rbp), %rax	# c, tmp327
	movsd	8(%rax), %xmm0	# c_2(D)->e[0][0].imag, D.5317
	mulsd	%xmm1, %xmm0	# ar, D.5317
	movq	-24(%rbp), %rax	# c, tmp328
	movsd	%xmm0, 8(%rax)	# D.5317, c_2(D)->e[0][0].imag
	.loc 1 130 0
	movq	-24(%rbp), %rax	# c, tmp329
	movsd	16(%rax), %xmm0	# c_2(D)->e[0][1].real, D.5317
	mulsd	%xmm1, %xmm0	# ar, D.5317
	movq	-24(%rbp), %rax	# c, tmp330
	movsd	%xmm0, 16(%rax)	# D.5317, c_2(D)->e[0][1].real
	.loc 1 131 0
	movq	-24(%rbp), %rax	# c, tmp331
	movsd	24(%rax), %xmm0	# c_2(D)->e[0][1].imag, D.5317
	mulsd	%xmm1, %xmm0	# ar, D.5317
	movq	-24(%rbp), %rax	# c, tmp332
	movsd	%xmm0, 24(%rax)	# D.5317, c_2(D)->e[0][1].imag
	.loc 1 132 0
	movq	-24(%rbp), %rax	# c, tmp333
	movsd	32(%rax), %xmm0	# c_2(D)->e[0][2].real, D.5317
	mulsd	%xmm1, %xmm0	# ar, D.5317
	movq	-24(%rbp), %rax	# c, tmp334
	movsd	%xmm0, 32(%rax)	# D.5317, c_2(D)->e[0][2].real
	.loc 1 133 0
	movq	-24(%rbp), %rax	# c, tmp335
	movsd	40(%rax), %xmm0	# c_2(D)->e[0][2].imag, D.5317
	mulsd	%xmm1, %xmm0	# ar, D.5317
	movq	-24(%rbp), %rax	# c, tmp336
	movsd	%xmm0, 40(%rax)	# D.5317, c_2(D)->e[0][2].imag
	.loc 1 136 0
	movq	-24(%rbp), %rax	# c, tmp337
	movsd	(%rax), %xmm1	# c_2(D)->e[0][0].real, D.5317
	movq	-24(%rbp), %rax	# c, tmp338
	movsd	48(%rax), %xmm0	# c_2(D)->e[1][0].real, D.5317
	mulsd	%xmm0, %xmm1	# D.5317, D.5317
	.loc 1 137 0
	movq	-24(%rbp), %rax	# c, tmp339
	movsd	8(%rax), %xmm2	# c_2(D)->e[0][0].imag, D.5317
	movq	-24(%rbp), %rax	# c, tmp340
	movsd	56(%rax), %xmm0	# c_2(D)->e[1][0].imag, D.5317
	mulsd	%xmm2, %xmm0	# D.5317, D.5317
	.loc 1 136 0
	addsd	%xmm0, %xmm1	# D.5317, D.5317
	.loc 1 138 0
	movq	-24(%rbp), %rax	# c, tmp341
	movsd	16(%rax), %xmm2	# c_2(D)->e[0][1].real, D.5317
	movq	-24(%rbp), %rax	# c, tmp342
	movsd	64(%rax), %xmm0	# c_2(D)->e[1][1].real, D.5317
	mulsd	%xmm2, %xmm0	# D.5317, D.5317
	.loc 1 137 0
	addsd	%xmm0, %xmm1	# D.5317, D.5317
	.loc 1 139 0
	movq	-24(%rbp), %rax	# c, tmp343
	movsd	24(%rax), %xmm2	# c_2(D)->e[0][1].imag, D.5317
	movq	-24(%rbp), %rax	# c, tmp344
	movsd	72(%rax), %xmm0	# c_2(D)->e[1][1].imag, D.5317
	mulsd	%xmm2, %xmm0	# D.5317, D.5317
	.loc 1 138 0
	addsd	%xmm0, %xmm1	# D.5317, D.5317
	.loc 1 140 0
	movq	-24(%rbp), %rax	# c, tmp345
	movsd	32(%rax), %xmm2	# c_2(D)->e[0][2].real, D.5317
	movq	-24(%rbp), %rax	# c, tmp346
	movsd	80(%rax), %xmm0	# c_2(D)->e[1][2].real, D.5317
	mulsd	%xmm2, %xmm0	# D.5317, D.5317
	.loc 1 139 0
	addsd	%xmm0, %xmm1	# D.5317, D.5317
	.loc 1 141 0
	movq	-24(%rbp), %rax	# c, tmp347
	movsd	40(%rax), %xmm2	# c_2(D)->e[0][2].imag, D.5317
	movq	-24(%rbp), %rax	# c, tmp348
	movsd	88(%rax), %xmm0	# c_2(D)->e[1][2].imag, D.5317
	mulsd	%xmm2, %xmm0	# D.5317, D.5317
	.loc 1 136 0
	addsd	%xmm0, %xmm1	# D.5317, ar
	movapd	%xmm1, %xmm3	# ar, ar
	.loc 1 142 0
	movq	-24(%rbp), %rax	# c, tmp349
	movsd	(%rax), %xmm1	# c_2(D)->e[0][0].real, D.5317
	movq	-24(%rbp), %rax	# c, tmp350
	movsd	56(%rax), %xmm0	# c_2(D)->e[1][0].imag, D.5317
	mulsd	%xmm1, %xmm0	# D.5317, D.5317
	.loc 1 143 0
	movq	-24(%rbp), %rax	# c, tmp351
	movsd	8(%rax), %xmm2	# c_2(D)->e[0][0].imag, D.5317
	movq	-24(%rbp), %rax	# c, tmp352
	movsd	48(%rax), %xmm1	# c_2(D)->e[1][0].real, D.5317
	mulsd	%xmm2, %xmm1	# D.5317, D.5317
	.loc 1 142 0
	subsd	%xmm1, %xmm0	# D.5317, D.5317
	movapd	%xmm0, %xmm1	# D.5317, D.5317
	.loc 1 144 0
	movq	-24(%rbp), %rax	# c, tmp353
	movsd	16(%rax), %xmm2	# c_2(D)->e[0][1].real, D.5317
	movq	-24(%rbp), %rax	# c, tmp354
	movsd	72(%rax), %xmm0	# c_2(D)->e[1][1].imag, D.5317
	mulsd	%xmm2, %xmm0	# D.5317, D.5317
	.loc 1 143 0
	addsd	%xmm1, %xmm0	# D.5317, D.5317
	.loc 1 145 0
	movq	-24(%rbp), %rax	# c, tmp355
	movsd	24(%rax), %xmm2	# c_2(D)->e[0][1].imag, D.5317
	movq	-24(%rbp), %rax	# c, tmp356
	movsd	64(%rax), %xmm1	# c_2(D)->e[1][1].real, D.5317
	mulsd	%xmm2, %xmm1	# D.5317, D.5317
	.loc 1 144 0
	subsd	%xmm1, %xmm0	# D.5317, D.5317
	movapd	%xmm0, %xmm1	# D.5317, D.5317
	.loc 1 146 0
	movq	-24(%rbp), %rax	# c, tmp357
	movsd	32(%rax), %xmm2	# c_2(D)->e[0][2].real, D.5317
	movq	-24(%rbp), %rax	# c, tmp358
	movsd	88(%rax), %xmm0	# c_2(D)->e[1][2].imag, D.5317
	mulsd	%xmm2, %xmm0	# D.5317, D.5317
	.loc 1 145 0
	addsd	%xmm1, %xmm0	# D.5317, D.5317
	.loc 1 147 0
	movq	-24(%rbp), %rax	# c, tmp359
	movsd	40(%rax), %xmm2	# c_2(D)->e[0][2].imag, D.5317
	movq	-24(%rbp), %rax	# c, tmp360
	movsd	80(%rax), %xmm1	# c_2(D)->e[1][2].real, D.5317
	mulsd	%xmm2, %xmm1	# D.5317, D.5317
	.loc 1 142 0
	subsd	%xmm1, %xmm0	# D.5317, ai
	.loc 1 149 0
	movapd	%xmm3, %xmm1	# ar, ar
	movapd	%xmm1, %xmm3	# ar, D.5317
	movsd	%xmm1, -40(%rbp)	# ar, %sfp
	mulsd	-40(%rbp), %xmm3	# %sfp, D.5317
	movapd	%xmm3, %xmm1	# D.5317, D.5317
	movapd	%xmm0, %xmm5	# ai, D.5317
	movsd	%xmm0, -32(%rbp)	# ai, %sfp
	mulsd	-32(%rbp), %xmm5	# %sfp, D.5317
	movapd	%xmm5, %xmm0	# D.5317, D.5317
	addsd	%xmm1, %xmm0	# D.5317, tmp361
	movsd	%xmm0, -8(%rbp)	# tmp361, deviation
	.loc 1 150 0
	movq	-8(%rbp), %rax	# deviation, tmp362
	movq	%rax, -48(%rbp)	# tmp362, %sfp
	movsd	-48(%rbp), %xmm0	# %sfp,
	call	check_deviation	#
	addl	%eax, -12(%rbp)	# D.5318, errors
	.loc 1 153 0
	movq	-24(%rbp), %rax	# c, tmp363
	movsd	48(%rax), %xmm2	# c_2(D)->e[1][0].real, D.5317
	movq	-24(%rbp), %rax	# c, tmp364
	movsd	(%rax), %xmm0	# c_2(D)->e[0][0].real, D.5317
	movsd	-40(%rbp), %xmm4	# %sfp, ar
	mulsd	%xmm4, %xmm0	# ar, D.5317
	movq	-24(%rbp), %rax	# c, tmp365
	movsd	8(%rax), %xmm1	# c_2(D)->e[0][0].imag, D.5317
	movsd	-32(%rbp), %xmm6	# %sfp, ai
	mulsd	%xmm6, %xmm1	# ai, D.5317
	subsd	%xmm1, %xmm0	# D.5317, D.5317
	subsd	%xmm0, %xmm2	# D.5317, D.5317
	movapd	%xmm2, %xmm0	# D.5317, D.5317
	movq	-24(%rbp), %rax	# c, tmp366
	movsd	%xmm0, 48(%rax)	# D.5317, c_2(D)->e[1][0].real
	.loc 1 154 0
	movq	-24(%rbp), %rax	# c, tmp367
	movsd	56(%rax), %xmm2	# c_2(D)->e[1][0].imag, D.5317
	movq	-24(%rbp), %rax	# c, tmp368
	movsd	8(%rax), %xmm0	# c_2(D)->e[0][0].imag, D.5317
	movapd	%xmm0, %xmm1	# D.5317, D.5317
	mulsd	%xmm4, %xmm1	# ar, D.5317
	movq	-24(%rbp), %rax	# c, tmp369
	movsd	(%rax), %xmm0	# c_2(D)->e[0][0].real, D.5317
	mulsd	%xmm6, %xmm0	# ai, D.5317
	addsd	%xmm1, %xmm0	# D.5317, D.5317
	subsd	%xmm0, %xmm2	# D.5317, D.5317
	movapd	%xmm2, %xmm0	# D.5317, D.5317
	movq	-24(%rbp), %rax	# c, tmp370
	movsd	%xmm0, 56(%rax)	# D.5317, c_2(D)->e[1][0].imag
	.loc 1 155 0
	movq	-24(%rbp), %rax	# c, tmp371
	movsd	64(%rax), %xmm2	# c_2(D)->e[1][1].real, D.5317
	movq	-24(%rbp), %rax	# c, tmp372
	movsd	16(%rax), %xmm0	# c_2(D)->e[0][1].real, D.5317
	mulsd	%xmm4, %xmm0	# ar, D.5317
	movq	-24(%rbp), %rax	# c, tmp373
	movsd	24(%rax), %xmm1	# c_2(D)->e[0][1].imag, D.5317
	mulsd	%xmm6, %xmm1	# ai, D.5317
	subsd	%xmm1, %xmm0	# D.5317, D.5317
	subsd	%xmm0, %xmm2	# D.5317, D.5317
	movapd	%xmm2, %xmm0	# D.5317, D.5317
	movq	-24(%rbp), %rax	# c, tmp374
	movsd	%xmm0, 64(%rax)	# D.5317, c_2(D)->e[1][1].real
	.loc 1 156 0
	movq	-24(%rbp), %rax	# c, tmp375
	movsd	72(%rax), %xmm2	# c_2(D)->e[1][1].imag, D.5317
	movq	-24(%rbp), %rax	# c, tmp376
	movsd	24(%rax), %xmm0	# c_2(D)->e[0][1].imag, D.5317
	movapd	%xmm0, %xmm1	# D.5317, D.5317
	mulsd	%xmm4, %xmm1	# ar, D.5317
	movq	-24(%rbp), %rax	# c, tmp377
	movsd	16(%rax), %xmm0	# c_2(D)->e[0][1].real, D.5317
	mulsd	%xmm6, %xmm0	# ai, D.5317
	addsd	%xmm1, %xmm0	# D.5317, D.5317
	subsd	%xmm0, %xmm2	# D.5317, D.5317
	movapd	%xmm2, %xmm0	# D.5317, D.5317
	movq	-24(%rbp), %rax	# c, tmp378
	movsd	%xmm0, 72(%rax)	# D.5317, c_2(D)->e[1][1].imag
	.loc 1 157 0
	movq	-24(%rbp), %rax	# c, tmp379
	movsd	80(%rax), %xmm2	# c_2(D)->e[1][2].real, D.5317
	movq	-24(%rbp), %rax	# c, tmp380
	movsd	32(%rax), %xmm0	# c_2(D)->e[0][2].real, D.5317
	mulsd	%xmm4, %xmm0	# ar, D.5317
	movq	-24(%rbp), %rax	# c, tmp381
	movsd	40(%rax), %xmm1	# c_2(D)->e[0][2].imag, D.5317
	mulsd	%xmm6, %xmm1	# ai, D.5317
	subsd	%xmm1, %xmm0	# D.5317, D.5317
	subsd	%xmm0, %xmm2	# D.5317, D.5317
	movapd	%xmm2, %xmm0	# D.5317, D.5317
	movq	-24(%rbp), %rax	# c, tmp382
	movsd	%xmm0, 80(%rax)	# D.5317, c_2(D)->e[1][2].real
	.loc 1 158 0
	movq	-24(%rbp), %rax	# c, tmp383
	movsd	88(%rax), %xmm2	# c_2(D)->e[1][2].imag, D.5317
	movq	-24(%rbp), %rax	# c, tmp384
	movsd	40(%rax), %xmm0	# c_2(D)->e[0][2].imag, D.5317
	movapd	%xmm4, %xmm1	# ar, D.5317
	mulsd	%xmm0, %xmm1	# D.5317, D.5317
	movq	-24(%rbp), %rax	# c, tmp385
	movsd	32(%rax), %xmm0	# c_2(D)->e[0][2].real, D.5317
	mulsd	%xmm6, %xmm0	# ai, D.5317
	addsd	%xmm1, %xmm0	# D.5317, D.5317
	subsd	%xmm0, %xmm2	# D.5317, D.5317
	movapd	%xmm2, %xmm0	# D.5317, D.5317
	movq	-24(%rbp), %rax	# c, tmp386
	movsd	%xmm0, 88(%rax)	# D.5317, c_2(D)->e[1][2].imag
	.loc 1 161 0
	movq	-24(%rbp), %rax	# c, tmp387
	movsd	48(%rax), %xmm1	# c_2(D)->e[1][0].real, D.5317
	movq	-24(%rbp), %rax	# c, tmp388
	movsd	48(%rax), %xmm0	# c_2(D)->e[1][0].real, D.5317
	mulsd	%xmm0, %xmm1	# D.5317, D.5317
	.loc 1 162 0
	movq	-24(%rbp), %rax	# c, tmp389
	movsd	56(%rax), %xmm2	# c_2(D)->e[1][0].imag, D.5317
	movq	-24(%rbp), %rax	# c, tmp390
	movsd	56(%rax), %xmm0	# c_2(D)->e[1][0].imag, D.5317
	mulsd	%xmm2, %xmm0	# D.5317, D.5317
	.loc 1 161 0
	addsd	%xmm0, %xmm1	# D.5317, D.5317
	.loc 1 163 0
	movq	-24(%rbp), %rax	# c, tmp391
	movsd	64(%rax), %xmm2	# c_2(D)->e[1][1].real, D.5317
	movq	-24(%rbp), %rax	# c, tmp392
	movsd	64(%rax), %xmm0	# c_2(D)->e[1][1].real, D.5317
	mulsd	%xmm2, %xmm0	# D.5317, D.5317
	.loc 1 162 0
	addsd	%xmm0, %xmm1	# D.5317, D.5317
	.loc 1 164 0
	movq	-24(%rbp), %rax	# c, tmp393
	movsd	72(%rax), %xmm2	# c_2(D)->e[1][1].imag, D.5317
	movq	-24(%rbp), %rax	# c, tmp394
	movsd	72(%rax), %xmm0	# c_2(D)->e[1][1].imag, D.5317
	mulsd	%xmm2, %xmm0	# D.5317, D.5317
	.loc 1 163 0
	addsd	%xmm0, %xmm1	# D.5317, D.5317
	.loc 1 165 0
	movq	-24(%rbp), %rax	# c, tmp395
	movsd	80(%rax), %xmm2	# c_2(D)->e[1][2].real, D.5317
	movq	-24(%rbp), %rax	# c, tmp396
	movsd	80(%rax), %xmm0	# c_2(D)->e[1][2].real, D.5317
	mulsd	%xmm2, %xmm0	# D.5317, D.5317
	.loc 1 164 0
	addsd	%xmm0, %xmm1	# D.5317, D.5317
	.loc 1 166 0
	movq	-24(%rbp), %rax	# c, tmp397
	movsd	88(%rax), %xmm2	# c_2(D)->e[1][2].imag, D.5317
	movq	-24(%rbp), %rax	# c, tmp398
	movsd	88(%rax), %xmm0	# c_2(D)->e[1][2].imag, D.5317
	mulsd	%xmm2, %xmm0	# D.5317, D.5317
	.loc 1 161 0
	addsd	%xmm0, %xmm1	# D.5317, ar
	movapd	%xmm1, %xmm6	# ar, ar
	.loc 1 168 0
	movsd	.LC7(%rip), %xmm0	#, tmp399
	movsd	%xmm6, -40(%rbp)	# ar, %sfp
	subsd	%xmm0, %xmm6	# tmp399, D.5317
	movapd	%xmm6, %xmm0	# D.5317, D.5317
	movsd	.LC8(%rip), %xmm1	#, tmp401
	andpd	%xmm1, %xmm0	# tmp401, tmp400
	movsd	%xmm0, -8(%rbp)	# tmp400, deviation
	.loc 1 169 0
	movq	-8(%rbp), %rax	# deviation, tmp402
	movq	%rax, -32(%rbp)	# tmp402, %sfp
	movsd	-32(%rbp), %xmm0	# %sfp,
	call	check_deviation	#
	addl	%eax, -12(%rbp)	# D.5318, errors
	.loc 1 171 0
	movsd	-40(%rbp), %xmm0	# %sfp,
	call	sqrt	#
	movsd	.LC7(%rip), %xmm1	#, tmp403
	divsd	%xmm0, %xmm1	# D.5317, ar
	.loc 1 172 0
	movq	-24(%rbp), %rax	# c, tmp404
	movsd	48(%rax), %xmm0	# c_2(D)->e[1][0].real, D.5317
	mulsd	%xmm1, %xmm0	# ar, D.5317
	movq	-24(%rbp), %rax	# c, tmp405
	movsd	%xmm0, 48(%rax)	# D.5317, c_2(D)->e[1][0].real
	.loc 1 173 0
	movq	-24(%rbp), %rax	# c, tmp406
	movsd	56(%rax), %xmm0	# c_2(D)->e[1][0].imag, D.5317
	mulsd	%xmm1, %xmm0	# ar, D.5317
	movq	-24(%rbp), %rax	# c, tmp407
	movsd	%xmm0, 56(%rax)	# D.5317, c_2(D)->e[1][0].imag
	.loc 1 174 0
	movq	-24(%rbp), %rax	# c, tmp408
	movsd	64(%rax), %xmm0	# c_2(D)->e[1][1].real, D.5317
	mulsd	%xmm1, %xmm0	# ar, D.5317
	movq	-24(%rbp), %rax	# c, tmp409
	movsd	%xmm0, 64(%rax)	# D.5317, c_2(D)->e[1][1].real
	.loc 1 175 0
	movq	-24(%rbp), %rax	# c, tmp410
	movsd	72(%rax), %xmm0	# c_2(D)->e[1][1].imag, D.5317
	mulsd	%xmm1, %xmm0	# ar, D.5317
	movq	-24(%rbp), %rax	# c, tmp411
	movsd	%xmm0, 72(%rax)	# D.5317, c_2(D)->e[1][1].imag
	.loc 1 176 0
	movq	-24(%rbp), %rax	# c, tmp412
	movsd	80(%rax), %xmm0	# c_2(D)->e[1][2].real, D.5317
	mulsd	%xmm1, %xmm0	# ar, D.5317
	movq	-24(%rbp), %rax	# c, tmp413
	movsd	%xmm0, 80(%rax)	# D.5317, c_2(D)->e[1][2].real
	.loc 1 177 0
	movq	-24(%rbp), %rax	# c, tmp414
	movsd	88(%rax), %xmm0	# c_2(D)->e[1][2].imag, D.5317
	mulsd	%xmm1, %xmm0	# ar, D.5317
	movq	-24(%rbp), %rax	# c, tmp415
	movsd	%xmm0, 88(%rax)	# D.5317, c_2(D)->e[1][2].imag
	.loc 1 180 0
	movq	-24(%rbp), %rax	# c, tmp416
	movsd	96(%rax), %xmm7	# c_2(D)->e[2][0].real, c0r
	movapd	%xmm7, %xmm8	# c0r, c0r
	.loc 1 181 0
	movq	-24(%rbp), %rax	# c, tmp417
	movsd	104(%rax), %xmm4	# c_2(D)->e[2][0].imag, c0i
	movapd	%xmm4, %xmm9	# c0i, c0i
	.loc 1 182 0
	movq	-24(%rbp), %rax	# c, tmp418
	movsd	112(%rax), %xmm6	# c_2(D)->e[2][1].real, c1r
	movapd	%xmm6, %xmm10	# c1r, c1r
	.loc 1 183 0
	movq	-24(%rbp), %rax	# c, tmp419
	movsd	120(%rax), %xmm7	# c_2(D)->e[2][1].imag, c1i
	movapd	%xmm7, %xmm11	# c1i, c1i
	.loc 1 184 0
	movq	-24(%rbp), %rax	# c, tmp420
	movsd	128(%rax), %xmm4	# c_2(D)->e[2][2].real, c2r
	movapd	%xmm4, %xmm12	# c2r, c2r
	.loc 1 185 0
	movq	-24(%rbp), %rax	# c, tmp421
	movsd	136(%rax), %xmm6	# c_2(D)->e[2][2].imag, c2i
	movapd	%xmm6, %xmm13	# c2i, c2i
	.loc 1 187 0
	movq	-24(%rbp), %rax	# c, tmp422
	movsd	(%rax), %xmm7	# c_2(D)->e[0][0].real, bj0r
	movq	-24(%rbp), %rax	# c, tmp423
	movsd	8(%rax), %xmm4	# c_2(D)->e[0][0].imag, bj0i
	movq	-24(%rbp), %rax	# c, tmp424
	movsd	16(%rax), %xmm6	# c_2(D)->e[0][1].real, bj1r
	movq	-24(%rbp), %rax	# c, tmp425
	movsd	24(%rax), %xmm3	# c_2(D)->e[0][1].imag, bj1i
	movq	-24(%rbp), %rax	# c, tmp426
	movsd	32(%rax), %xmm5	# c_2(D)->e[0][2].real, bj2r
	movq	-24(%rbp), %rax	# c, tmp427
	movsd	40(%rax), %xmm2	# c_2(D)->e[0][2].imag, bj2i
	movq	-24(%rbp), %rax	# c, tmp428
	movsd	80(%rax), %xmm1	# c_2(D)->e[1][2].real, ar
	movapd	%xmm1, %xmm14	# ar, ar
	movq	-24(%rbp), %rax	# c, tmp429
	movsd	88(%rax), %xmm0	# c_2(D)->e[1][2].imag, ai
	movapd	%xmm0, %xmm15	# ai, ai
	movapd	%xmm6, %xmm0	# bj1r, D.5317
	mulsd	%xmm14, %xmm0	# ar, D.5317
	movapd	%xmm3, %xmm1	# bj1i, D.5317
	mulsd	%xmm15, %xmm1	# ai, D.5317
	subsd	%xmm1, %xmm0	# D.5317, tr
	movsd	%xmm0, -40(%rbp)	# tr, %sfp
	movapd	%xmm15, %xmm1	# ai, D.5317
	mulsd	%xmm6, %xmm1	# bj1r, D.5317
	movapd	%xmm14, %xmm0	# ar, D.5317
	mulsd	%xmm3, %xmm0	# bj1i, D.5317
	addsd	%xmm0, %xmm1	# D.5317, ti
	movapd	%xmm1, %xmm14	# ti, ti
	movq	-24(%rbp), %rax	# c, tmp430
	movsd	64(%rax), %xmm15	# c_2(D)->e[1][1].real, ar
	movq	-24(%rbp), %rax	# c, tmp431
	movsd	72(%rax), %xmm1	# c_2(D)->e[1][1].imag, ai
	movsd	%xmm1, -32(%rbp)	# ai, %sfp
	movapd	%xmm5, %xmm0	# bj2r, D.5317
	mulsd	%xmm15, %xmm0	# ar, D.5317
	movsd	-40(%rbp), %xmm1	# %sfp, D.5317
	subsd	%xmm0, %xmm1	# D.5317, D.5317
	movapd	%xmm2, %xmm0	# bj2i, D.5317
	mulsd	-32(%rbp), %xmm0	# %sfp, D.5317
	addsd	%xmm0, %xmm1	# D.5317, tr
	movsd	%xmm1, -40(%rbp)	# tr, %sfp
	movsd	-32(%rbp), %xmm1	# %sfp, D.5317
	mulsd	%xmm5, %xmm1	# bj2r, D.5317
	movapd	%xmm1, %xmm0	# D.5317, D.5317
	movapd	%xmm14, %xmm1	# ti, D.5317
	subsd	%xmm0, %xmm1	# D.5317, D.5317
	movapd	%xmm1, %xmm0	# D.5317, D.5317
	movapd	%xmm15, %xmm1	# ar, D.5317
	mulsd	%xmm2, %xmm1	# bj2i, D.5317
	subsd	%xmm1, %xmm0	# D.5317, ti
	movapd	%xmm0, %xmm14	# ti, ti
	movq	-24(%rbp), %rax	# c, tmp432
	movsd	-40(%rbp), %xmm1	# %sfp, tr
	movsd	%xmm1, 96(%rax)	# tr, c_2(D)->e[2][0].real
	movsd	.LC9(%rip), %xmm0	#, tmp433
	movapd	%xmm14, %xmm1	# ti, ti
	xorpd	%xmm1, %xmm0	# ti, D.5317
	movq	-24(%rbp), %rax	# c, tmp434
	movsd	%xmm0, 104(%rax)	# D.5317, c_2(D)->e[2][0].imag
	movq	-24(%rbp), %rax	# c, tmp435
	movsd	48(%rax), %xmm1	# c_2(D)->e[1][0].real, ar
	movapd	%xmm1, %xmm15	# ar, ar
	movq	-24(%rbp), %rax	# c, tmp436
	movsd	56(%rax), %xmm0	# c_2(D)->e[1][0].imag, ai
	movapd	%xmm0, %xmm14	# ai, ai
	movapd	%xmm5, %xmm0	# bj2r, D.5317
	mulsd	%xmm15, %xmm0	# ar, D.5317
	movapd	%xmm2, %xmm1	# bj2i, D.5317
	movsd	%xmm14, -32(%rbp)	# ai, %sfp
	mulsd	-32(%rbp), %xmm1	# %sfp, D.5317
	subsd	%xmm1, %xmm0	# D.5317, tr
	movapd	%xmm0, %xmm14	# tr, tr
	mulsd	-32(%rbp), %xmm5	# %sfp, D.5317
	movapd	%xmm5, %xmm1	# D.5317, D.5317
	movapd	%xmm2, %xmm0	# bj2i, D.5317
	mulsd	%xmm15, %xmm0	# ar, D.5317
	addsd	%xmm0, %xmm1	# D.5317, ti
	movapd	%xmm1, %xmm5	# ti, ti
	movq	-24(%rbp), %rax	# c, tmp437
	movsd	80(%rax), %xmm2	# c_2(D)->e[1][2].real, ar
	movq	-24(%rbp), %rax	# c, tmp438
	movsd	88(%rax), %xmm1	# c_2(D)->e[1][2].imag, ai
	movapd	%xmm1, %xmm15	# ai, ai
	movapd	%xmm7, %xmm0	# bj0r, D.5317
	mulsd	%xmm2, %xmm0	# ar, D.5317
	movapd	%xmm14, %xmm1	# tr, D.5317
	subsd	%xmm0, %xmm1	# D.5317, D.5317
	movapd	%xmm4, %xmm0	# bj0i, D.5317
	movapd	%xmm15, %xmm14	# ai, ai
	mulsd	%xmm14, %xmm0	# ai, D.5317
	addsd	%xmm0, %xmm1	# D.5317, tr
	movapd	%xmm1, %xmm15	# tr, tr
	movapd	%xmm14, %xmm1	# ai, D.5317
	mulsd	%xmm7, %xmm1	# bj0r, D.5317
	movapd	%xmm1, %xmm0	# D.5317, D.5317
	movapd	%xmm5, %xmm1	# ti, D.5317
	subsd	%xmm0, %xmm1	# D.5317, D.5317
	movapd	%xmm1, %xmm0	# D.5317, D.5317
	mulsd	%xmm4, %xmm2	# bj0i, D.5317
	movapd	%xmm2, %xmm1	# D.5317, D.5317
	subsd	%xmm1, %xmm0	# D.5317, ti
	movapd	%xmm0, %xmm5	# ti, ti
	movq	-24(%rbp), %rax	# c, tmp439
	movapd	%xmm15, %xmm1	# tr, tr
	movsd	%xmm1, 112(%rax)	# tr, c_2(D)->e[2][1].real
	movsd	.LC9(%rip), %xmm0	#, tmp440
	xorpd	%xmm5, %xmm0	# ti, D.5317
	movq	-24(%rbp), %rax	# c, tmp441
	movsd	%xmm0, 120(%rax)	# D.5317, c_2(D)->e[2][1].imag
	movq	-24(%rbp), %rax	# c, tmp442
	movsd	64(%rax), %xmm5	# c_2(D)->e[1][1].real, ar
	movq	-24(%rbp), %rax	# c, tmp443
	movsd	72(%rax), %xmm2	# c_2(D)->e[1][1].imag, ai
	movapd	%xmm2, %xmm14	# ai, ai
	movapd	%xmm7, %xmm0	# bj0r, D.5317
	movapd	%xmm5, %xmm2	# ar, ar
	mulsd	%xmm2, %xmm0	# ar, D.5317
	movapd	%xmm4, %xmm1	# bj0i, D.5317
	mulsd	%xmm14, %xmm1	# ai, D.5317
	subsd	%xmm1, %xmm0	# D.5317, tr
	movapd	%xmm0, %xmm5	# tr, tr
	mulsd	%xmm14, %xmm7	# ai, D.5317
	movapd	%xmm7, %xmm1	# D.5317, D.5317
	movapd	%xmm4, %xmm0	# bj0i, D.5317
	mulsd	%xmm2, %xmm0	# ar, D.5317
	addsd	%xmm0, %xmm1	# D.5317, ti
	movapd	%xmm1, %xmm7	# ti, ti
	movq	-24(%rbp), %rax	# c, tmp444
	movsd	48(%rax), %xmm4	# c_2(D)->e[1][0].real, ar
	movq	-24(%rbp), %rax	# c, tmp445
	movsd	56(%rax), %xmm2	# c_2(D)->e[1][0].imag, ai
	movapd	%xmm6, %xmm0	# bj1r, D.5317
	mulsd	%xmm4, %xmm0	# ar, D.5317
	movapd	%xmm5, %xmm1	# tr, D.5317
	subsd	%xmm0, %xmm1	# D.5317, D.5317
	movapd	%xmm3, %xmm0	# bj1i, D.5317
	mulsd	%xmm2, %xmm0	# ai, D.5317
	addsd	%xmm0, %xmm1	# D.5317, tr
	movapd	%xmm1, %xmm5	# tr, tr
	movapd	%xmm6, %xmm0	# bj1r, D.5317
	mulsd	%xmm2, %xmm0	# ai, D.5317
	movapd	%xmm7, %xmm1	# ti, D.5317
	subsd	%xmm0, %xmm1	# D.5317, D.5317
	movapd	%xmm1, %xmm0	# D.5317, D.5317
	movapd	%xmm3, %xmm1	# bj1i, D.5317
	mulsd	%xmm4, %xmm1	# ar, D.5317
	subsd	%xmm1, %xmm0	# D.5317, ti
	movapd	%xmm0, %xmm3	# ti, ti
	movq	-24(%rbp), %rax	# c, tmp446
	movapd	%xmm5, %xmm1	# tr, tr
	movsd	%xmm1, 128(%rax)	# tr, c_2(D)->e[2][2].real
	movsd	.LC9(%rip), %xmm0	#, tmp447
	xorpd	%xmm3, %xmm0	# ti, D.5317
	movq	-24(%rbp), %rax	# c, tmp448
	movsd	%xmm0, 136(%rax)	# D.5317, c_2(D)->e[2][2].imag
	.loc 1 190 0
	movq	-24(%rbp), %rax	# c, tmp449
	movsd	96(%rax), %xmm0	# c_2(D)->e[2][0].real, D.5317
	movapd	%xmm8, %xmm1	# c0r, D.5317
	subsd	%xmm0, %xmm1	# D.5317, D.5317
	movq	-24(%rbp), %rax	# c, tmp450
	movsd	96(%rax), %xmm0	# c_2(D)->e[2][0].real, D.5317
	movapd	%xmm8, %xmm7	# c0r, D.5317
	subsd	%xmm0, %xmm7	# D.5317, D.5317
	movapd	%xmm7, %xmm0	# D.5317, D.5317
	mulsd	%xmm0, %xmm1	# D.5317, D.5317
	.loc 1 191 0
	movq	-24(%rbp), %rax	# c, tmp451
	movsd	104(%rax), %xmm0	# c_2(D)->e[2][0].imag, D.5317
	movapd	%xmm9, %xmm2	# c0i, D.5317
	subsd	%xmm0, %xmm2	# D.5317, D.5317
	movq	-24(%rbp), %rax	# c, tmp452
	movsd	104(%rax), %xmm0	# c_2(D)->e[2][0].imag, D.5317
	movapd	%xmm9, %xmm4	# c0i, D.5317
	subsd	%xmm0, %xmm4	# D.5317, D.5317
	movapd	%xmm4, %xmm0	# D.5317, D.5317
	mulsd	%xmm2, %xmm0	# D.5317, D.5317
	.loc 1 190 0
	addsd	%xmm0, %xmm1	# D.5317, D.5317
	.loc 1 192 0
	movq	-24(%rbp), %rax	# c, tmp453
	movsd	112(%rax), %xmm0	# c_2(D)->e[2][1].real, D.5317
	movapd	%xmm10, %xmm2	# c1r, D.5317
	subsd	%xmm0, %xmm2	# D.5317, D.5317
	movq	-24(%rbp), %rax	# c, tmp454
	movsd	112(%rax), %xmm0	# c_2(D)->e[2][1].real, D.5317
	movapd	%xmm10, %xmm6	# c1r, D.5317
	subsd	%xmm0, %xmm6	# D.5317, D.5317
	movapd	%xmm6, %xmm0	# D.5317, D.5317
	mulsd	%xmm2, %xmm0	# D.5317, D.5317
	.loc 1 191 0
	addsd	%xmm0, %xmm1	# D.5317, D.5317
	.loc 1 193 0
	movq	-24(%rbp), %rax	# c, tmp455
	movsd	120(%rax), %xmm0	# c_2(D)->e[2][1].imag, D.5317
	movapd	%xmm11, %xmm2	# c1i, D.5317
	subsd	%xmm0, %xmm2	# D.5317, D.5317
	movq	-24(%rbp), %rax	# c, tmp456
	movsd	120(%rax), %xmm0	# c_2(D)->e[2][1].imag, D.5317
	movapd	%xmm11, %xmm7	# c1i, D.5317
	subsd	%xmm0, %xmm7	# D.5317, D.5317
	movapd	%xmm7, %xmm0	# D.5317, D.5317
	mulsd	%xmm2, %xmm0	# D.5317, D.5317
	.loc 1 192 0
	addsd	%xmm0, %xmm1	# D.5317, D.5317
	.loc 1 194 0
	movq	-24(%rbp), %rax	# c, tmp457
	movsd	128(%rax), %xmm0	# c_2(D)->e[2][2].real, D.5317
	movapd	%xmm12, %xmm2	# c2r, D.5317
	subsd	%xmm0, %xmm2	# D.5317, D.5317
	movq	-24(%rbp), %rax	# c, tmp458
	movsd	128(%rax), %xmm0	# c_2(D)->e[2][2].real, D.5317
	movapd	%xmm12, %xmm4	# c2r, D.5317
	subsd	%xmm0, %xmm4	# D.5317, D.5317
	movapd	%xmm4, %xmm0	# D.5317, D.5317
	mulsd	%xmm2, %xmm0	# D.5317, D.5317
	.loc 1 193 0
	addsd	%xmm0, %xmm1	# D.5317, D.5317
	.loc 1 195 0
	movq	-24(%rbp), %rax	# c, tmp459
	movsd	136(%rax), %xmm0	# c_2(D)->e[2][2].imag, D.5317
	movapd	%xmm13, %xmm2	# c2i, D.5317
	subsd	%xmm0, %xmm2	# D.5317, D.5317
	movq	-24(%rbp), %rax	# c, tmp460
	movsd	136(%rax), %xmm0	# c_2(D)->e[2][2].imag, D.5317
	movapd	%xmm13, %xmm6	# c2i, D.5317
	subsd	%xmm0, %xmm6	# D.5317, D.5317
	movapd	%xmm6, %xmm0	# D.5317, D.5317
	mulsd	%xmm2, %xmm0	# D.5317, D.5317
	.loc 1 190 0
	addsd	%xmm0, %xmm1	# D.5317, ar
	.loc 1 196 0
	movsd	%xmm1, -8(%rbp)	# ar, deviation
	.loc 1 197 0
	movq	-8(%rbp), %rax	# deviation, tmp461
	movq	%rax, -32(%rbp)	# tmp461, %sfp
	movsd	-32(%rbp), %xmm0	# %sfp,
	call	check_deviation	#
	addl	%eax, -12(%rbp)	# D.5318, errors
	.loc 1 199 0
	movl	-12(%rbp), %eax	# errors, D.5318
	.loc 1 201 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	reunit_su3, .-reunit_su3
	.section	.rodata
	.align 8
.LC11:
	.string	"Unitarity error count exceeded."
	.align 8
.LC12:
	.string	"reunitarize: Node %d unitarity problem, maximum deviation=%e\n"
	.text
	.globl	reunitarize
	.type	reunitarize, @function
reunitarize:
.LFB5:
	.loc 1 203 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r14	#
	pushq	%r13	#
	pushq	%r12	#
	pushq	%rbx	#
	subq	$32, %rsp	#,
	.cfi_offset 14, -24
	.cfi_offset 13, -32
	.cfi_offset 12, -40
	.cfi_offset 3, -48
	.loc 1 207 0
	movl	$0, -40(%rbp)	#, errcount
	.loc 1 210 0
	movl	$0, %eax	#, tmp67
	movq	%rax, max_deviation(%rip)	# tmp67, max_deviation
	.loc 1 211 0
	movl	$0, %eax	#, tmp68
	movq	%rax, av_deviation(%rip)	# tmp68, av_deviation
	.loc 1 213 0
	movl	$0, %r12d	#, i
	movq	lattice(%rip), %r13	# lattice, s
	jmp	.L22	#
.L27:
	.loc 1 217 0
	movl	$0, %ebx	#, dir
	jmp	.L23	#
.L26:
	.loc 1 219 0
	movslq	%ebx, %rdx	# dir, tmp69
	movq	%rdx, %rax	# tmp69, tmp70
	salq	$3, %rax	#, tmp70
	addq	%rdx, %rax	# tmp69, tmp70
	salq	$4, %rax	#, tmp71
	addq	$112, %rax	#, tmp72
	leaq	0(%r13,%rax), %r14	#, mat
	.loc 1 220 0
	movq	%r14, %rdi	# mat,
	call	reunit_su3	#
	movl	%eax, -36(%rbp)	# tmp73, errors
	.loc 1 221 0
	movl	-36(%rbp), %eax	# errors, tmp74
	addl	%eax, -40(%rbp)	# tmp74, errcount
	.loc 1 222 0
	cmpl	$0, -36(%rbp)	#, errors
	je	.L24	#,
	.loc 1 222 0 is_stmt 0 discriminator 1
	movl	%ebx, %edx	# dir,
	movl	%r12d, %esi	# i,
	movq	%r14, %rdi	# mat,
	call	reunit_report_problem_matrix	#
.L24:
	.loc 1 223 0 is_stmt 1
	cmpl	$100, -40(%rbp)	#, errcount
	jle	.L25	#,
	.loc 1 225 0
	movl	$.LC11, %edi	#,
	call	puts	#
	.loc 1 226 0
	movl	$1, %edi	#,
	call	terminate	#
.L25:
	.loc 1 217 0
	addl	$1, %ebx	#, dir
.L23:
	.loc 1 217 0 is_stmt 0 discriminator 1
	cmpl	$3, %ebx	#, dir
	jle	.L26	#,
	.loc 1 213 0 is_stmt 1
	addl	$1, %r12d	#, i
	addq	$2048, %r13	#, s
.L22:
	.loc 1 213 0 is_stmt 0 discriminator 1
	movl	sites_on_node(%rip), %eax	# sites_on_node, sites_on_node.4
	cmpl	%eax, %r12d	# sites_on_node.4, i
	jl	.L27	#,
	.loc 1 235 0 is_stmt 1
	movsd	max_deviation(%rip), %xmm0	# max_deviation, max_deviation.5
	ucomisd	.LC0(%rip), %xmm0	#, max_deviation.5
	jbe	.L21	#,
	.loc 1 237 0
	movq	max_deviation(%rip), %rbx	# max_deviation, max_deviation.6
	movl	$0, %eax	#,
	call	mynode	#
	movq	%rbx, -56(%rbp)	# max_deviation.6, %sfp
	movsd	-56(%rbp), %xmm0	# %sfp,
	movl	%eax, %esi	# D.5319,
	movl	$.LC12, %edi	#,
	movl	$1, %eax	#,
	call	printf	#
	.loc 1 239 0
	addl	$1, -40(%rbp)	#, errcount
	.loc 1 240 0
	cmpl	$100, -40(%rbp)	#, errcount
	jle	.L21	#,
	.loc 1 242 0
	movl	$.LC11, %edi	#,
	call	puts	#
	.loc 1 243 0
	movl	$1, %edi	#,
	call	terminate	#
.L21:
	.loc 1 247 0
	addq	$32, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%r13	#
	popq	%r14	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	reunitarize, .-reunitarize
	.section	.rodata
	.align 8
.LC0:
	.long	3944497965
	.long	1058682594
	.align 8
.LC7:
	.long	0
	.long	1072693248
	.align 16
.LC8:
	.long	4294967295
	.long	2147483647
	.long	0
	.long	0
	.align 16
.LC9:
	.long	0
	.long	-2147483648
	.long	0
	.long	0
	.text
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/include/libio.h"
	.file 5 "complex.h"
	.file 6 "random.h"
	.file 7 "su3.h"
	.file 8 "./lattice.h"
	.file 9 "/usr/include/stdio.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x7fd
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF101
	.byte	0x1
	.long	.LASF102
	.long	.LASF103
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF7
	.byte	0x2
	.byte	0xd4
	.long	0x38
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF0
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF1
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF2
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF3
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF4
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.long	.LASF5
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF6
	.uleb128 0x2
	.long	.LASF8
	.byte	0x3
	.byte	0x8c
	.long	0x69
	.uleb128 0x2
	.long	.LASF9
	.byte	0x3
	.byte	0x8d
	.long	0x69
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF10
	.uleb128 0x5
	.byte	0x8
	.uleb128 0x6
	.byte	0x8
	.long	0x95
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF11
	.uleb128 0x7
	.long	.LASF41
	.byte	0xd8
	.byte	0x4
	.byte	0xf6
	.long	0x21d
	.uleb128 0x8
	.long	.LASF12
	.byte	0x4
	.byte	0xf7
	.long	0x62
	.byte	0
	.uleb128 0x8
	.long	.LASF13
	.byte	0x4
	.byte	0xfc
	.long	0x8f
	.byte	0x8
	.uleb128 0x8
	.long	.LASF14
	.byte	0x4
	.byte	0xfd
	.long	0x8f
	.byte	0x10
	.uleb128 0x8
	.long	.LASF15
	.byte	0x4
	.byte	0xfe
	.long	0x8f
	.byte	0x18
	.uleb128 0x8
	.long	.LASF16
	.byte	0x4
	.byte	0xff
	.long	0x8f
	.byte	0x20
	.uleb128 0x9
	.long	.LASF17
	.byte	0x4
	.value	0x100
	.long	0x8f
	.byte	0x28
	.uleb128 0x9
	.long	.LASF18
	.byte	0x4
	.value	0x101
	.long	0x8f
	.byte	0x30
	.uleb128 0x9
	.long	.LASF19
	.byte	0x4
	.value	0x102
	.long	0x8f
	.byte	0x38
	.uleb128 0x9
	.long	.LASF20
	.byte	0x4
	.value	0x103
	.long	0x8f
	.byte	0x40
	.uleb128 0x9
	.long	.LASF21
	.byte	0x4
	.value	0x105
	.long	0x8f
	.byte	0x48
	.uleb128 0x9
	.long	.LASF22
	.byte	0x4
	.value	0x106
	.long	0x8f
	.byte	0x50
	.uleb128 0x9
	.long	.LASF23
	.byte	0x4
	.value	0x107
	.long	0x8f
	.byte	0x58
	.uleb128 0x9
	.long	.LASF24
	.byte	0x4
	.value	0x109
	.long	0x255
	.byte	0x60
	.uleb128 0x9
	.long	.LASF25
	.byte	0x4
	.value	0x10b
	.long	0x25b
	.byte	0x68
	.uleb128 0x9
	.long	.LASF26
	.byte	0x4
	.value	0x10d
	.long	0x62
	.byte	0x70
	.uleb128 0x9
	.long	.LASF27
	.byte	0x4
	.value	0x111
	.long	0x62
	.byte	0x74
	.uleb128 0x9
	.long	.LASF28
	.byte	0x4
	.value	0x113
	.long	0x70
	.byte	0x78
	.uleb128 0x9
	.long	.LASF29
	.byte	0x4
	.value	0x117
	.long	0x46
	.byte	0x80
	.uleb128 0x9
	.long	.LASF30
	.byte	0x4
	.value	0x118
	.long	0x54
	.byte	0x82
	.uleb128 0x9
	.long	.LASF31
	.byte	0x4
	.value	0x119
	.long	0x261
	.byte	0x83
	.uleb128 0x9
	.long	.LASF32
	.byte	0x4
	.value	0x11d
	.long	0x271
	.byte	0x88
	.uleb128 0x9
	.long	.LASF33
	.byte	0x4
	.value	0x126
	.long	0x7b
	.byte	0x90
	.uleb128 0x9
	.long	.LASF34
	.byte	0x4
	.value	0x12f
	.long	0x8d
	.byte	0x98
	.uleb128 0x9
	.long	.LASF35
	.byte	0x4
	.value	0x130
	.long	0x8d
	.byte	0xa0
	.uleb128 0x9
	.long	.LASF36
	.byte	0x4
	.value	0x131
	.long	0x8d
	.byte	0xa8
	.uleb128 0x9
	.long	.LASF37
	.byte	0x4
	.value	0x132
	.long	0x8d
	.byte	0xb0
	.uleb128 0x9
	.long	.LASF38
	.byte	0x4
	.value	0x133
	.long	0x2d
	.byte	0xb8
	.uleb128 0x9
	.long	.LASF39
	.byte	0x4
	.value	0x135
	.long	0x62
	.byte	0xc0
	.uleb128 0x9
	.long	.LASF40
	.byte	0x4
	.value	0x137
	.long	0x277
	.byte	0xc4
	.byte	0
	.uleb128 0xa
	.long	.LASF104
	.byte	0x4
	.byte	0x9b
	.uleb128 0x7
	.long	.LASF42
	.byte	0x18
	.byte	0x4
	.byte	0xa1
	.long	0x255
	.uleb128 0x8
	.long	.LASF43
	.byte	0x4
	.byte	0xa2
	.long	0x255
	.byte	0
	.uleb128 0x8
	.long	.LASF44
	.byte	0x4
	.byte	0xa3
	.long	0x25b
	.byte	0x8
	.uleb128 0x8
	.long	.LASF45
	.byte	0x4
	.byte	0xa7
	.long	0x62
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x224
	.uleb128 0x6
	.byte	0x8
	.long	0x9c
	.uleb128 0xb
	.long	0x95
	.long	0x271
	.uleb128 0xc
	.long	0x86
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x21d
	.uleb128 0xb
	.long	0x95
	.long	0x287
	.uleb128 0xc
	.long	0x86
	.byte	0x13
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF46
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF47
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.long	.LASF48
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.long	.LASF49
	.uleb128 0xd
	.byte	0x10
	.byte	0x5
	.byte	0x49
	.long	0x2c4
	.uleb128 0x8
	.long	.LASF50
	.byte	0x5
	.byte	0x4a
	.long	0x29c
	.byte	0
	.uleb128 0x8
	.long	.LASF51
	.byte	0x5
	.byte	0x4b
	.long	0x29c
	.byte	0x8
	.byte	0
	.uleb128 0x2
	.long	.LASF52
	.byte	0x5
	.byte	0x4c
	.long	0x2a3
	.uleb128 0xd
	.byte	0x58
	.byte	0x6
	.byte	0x6
	.long	0x355
	.uleb128 0xe
	.string	"r0"
	.byte	0x6
	.byte	0x8
	.long	0x38
	.byte	0
	.uleb128 0xe
	.string	"r1"
	.byte	0x6
	.byte	0x8
	.long	0x38
	.byte	0x8
	.uleb128 0xe
	.string	"r2"
	.byte	0x6
	.byte	0x8
	.long	0x38
	.byte	0x10
	.uleb128 0xe
	.string	"r3"
	.byte	0x6
	.byte	0x8
	.long	0x38
	.byte	0x18
	.uleb128 0xe
	.string	"r4"
	.byte	0x6
	.byte	0x8
	.long	0x38
	.byte	0x20
	.uleb128 0xe
	.string	"r5"
	.byte	0x6
	.byte	0x8
	.long	0x38
	.byte	0x28
	.uleb128 0xe
	.string	"r6"
	.byte	0x6
	.byte	0x8
	.long	0x38
	.byte	0x30
	.uleb128 0x8
	.long	.LASF53
	.byte	0x6
	.byte	0x9
	.long	0x38
	.byte	0x38
	.uleb128 0x8
	.long	.LASF54
	.byte	0x6
	.byte	0x9
	.long	0x38
	.byte	0x40
	.uleb128 0x8
	.long	.LASF55
	.byte	0x6
	.byte	0x9
	.long	0x38
	.byte	0x48
	.uleb128 0x8
	.long	.LASF56
	.byte	0x6
	.byte	0xa
	.long	0x29c
	.byte	0x50
	.byte	0
	.uleb128 0x2
	.long	.LASF57
	.byte	0x6
	.byte	0xb
	.long	0x2cf
	.uleb128 0xd
	.byte	0x90
	.byte	0x7
	.byte	0xe
	.long	0x373
	.uleb128 0xe
	.string	"e"
	.byte	0x7
	.byte	0xe
	.long	0x373
	.byte	0
	.byte	0
	.uleb128 0xb
	.long	0x2c4
	.long	0x389
	.uleb128 0xc
	.long	0x86
	.byte	0x2
	.uleb128 0xc
	.long	0x86
	.byte	0x2
	.byte	0
	.uleb128 0x2
	.long	.LASF58
	.byte	0x7
	.byte	0xe
	.long	0x360
	.uleb128 0xd
	.byte	0x30
	.byte	0x7
	.byte	0xf
	.long	0x3a7
	.uleb128 0xe
	.string	"c"
	.byte	0x7
	.byte	0xf
	.long	0x3a7
	.byte	0
	.byte	0
	.uleb128 0xb
	.long	0x2c4
	.long	0x3b7
	.uleb128 0xc
	.long	0x86
	.byte	0x2
	.byte	0
	.uleb128 0x2
	.long	.LASF59
	.byte	0x7
	.byte	0xf
	.long	0x394
	.uleb128 0xd
	.byte	0x50
	.byte	0x7
	.byte	0x10
	.long	0x41f
	.uleb128 0xe
	.string	"m01"
	.byte	0x7
	.byte	0x11
	.long	0x2c4
	.byte	0
	.uleb128 0xe
	.string	"m02"
	.byte	0x7
	.byte	0x11
	.long	0x2c4
	.byte	0x10
	.uleb128 0xe
	.string	"m12"
	.byte	0x7
	.byte	0x11
	.long	0x2c4
	.byte	0x20
	.uleb128 0x8
	.long	.LASF60
	.byte	0x7
	.byte	0x11
	.long	0x29c
	.byte	0x30
	.uleb128 0x8
	.long	.LASF61
	.byte	0x7
	.byte	0x11
	.long	0x29c
	.byte	0x38
	.uleb128 0x8
	.long	.LASF62
	.byte	0x7
	.byte	0x11
	.long	0x29c
	.byte	0x40
	.uleb128 0x8
	.long	.LASF63
	.byte	0x7
	.byte	0x11
	.long	0x29c
	.byte	0x48
	.byte	0
	.uleb128 0x2
	.long	.LASF64
	.byte	0x7
	.byte	0x11
	.long	0x3c2
	.uleb128 0xb
	.long	0x3b7
	.long	0x43a
	.uleb128 0xc
	.long	0x86
	.byte	0x3
	.byte	0
	.uleb128 0xf
	.value	0x800
	.byte	0x8
	.byte	0x1f
	.long	0x551
	.uleb128 0xe
	.string	"x"
	.byte	0x8
	.byte	0x22
	.long	0x5b
	.byte	0
	.uleb128 0xe
	.string	"y"
	.byte	0x8
	.byte	0x22
	.long	0x5b
	.byte	0x2
	.uleb128 0xe
	.string	"z"
	.byte	0x8
	.byte	0x22
	.long	0x5b
	.byte	0x4
	.uleb128 0xe
	.string	"t"
	.byte	0x8
	.byte	0x22
	.long	0x5b
	.byte	0x6
	.uleb128 0x8
	.long	.LASF65
	.byte	0x8
	.byte	0x24
	.long	0x95
	.byte	0x8
	.uleb128 0x8
	.long	.LASF66
	.byte	0x8
	.byte	0x26
	.long	0x62
	.byte	0xc
	.uleb128 0x8
	.long	.LASF67
	.byte	0x8
	.byte	0x29
	.long	0x355
	.byte	0x10
	.uleb128 0x8
	.long	.LASF68
	.byte	0x8
	.byte	0x2b
	.long	0x62
	.byte	0x68
	.uleb128 0x8
	.long	.LASF69
	.byte	0x8
	.byte	0x32
	.long	0x551
	.byte	0x70
	.uleb128 0x10
	.string	"mom"
	.byte	0x8
	.byte	0x3e
	.long	0x561
	.value	0x2b0
	.uleb128 0x11
	.long	.LASF70
	.byte	0x8
	.byte	0x42
	.long	0x571
	.value	0x3f0
	.uleb128 0x10
	.string	"phi"
	.byte	0x8
	.byte	0x45
	.long	0x3b7
	.value	0x410
	.uleb128 0x11
	.long	.LASF71
	.byte	0x8
	.byte	0x46
	.long	0x3b7
	.value	0x440
	.uleb128 0x11
	.long	.LASF72
	.byte	0x8
	.byte	0x47
	.long	0x3b7
	.value	0x470
	.uleb128 0x10
	.string	"xxx"
	.byte	0x8
	.byte	0x48
	.long	0x3b7
	.value	0x4a0
	.uleb128 0x10
	.string	"ttt"
	.byte	0x8
	.byte	0x49
	.long	0x3b7
	.value	0x4d0
	.uleb128 0x11
	.long	.LASF73
	.byte	0x8
	.byte	0x4a
	.long	0x3b7
	.value	0x500
	.uleb128 0x11
	.long	.LASF74
	.byte	0x8
	.byte	0x5d
	.long	0x42a
	.value	0x530
	.uleb128 0x11
	.long	.LASF75
	.byte	0x8
	.byte	0x5f
	.long	0x42a
	.value	0x5f0
	.uleb128 0x11
	.long	.LASF76
	.byte	0x8
	.byte	0x60
	.long	0x3b7
	.value	0x6b0
	.uleb128 0x11
	.long	.LASF77
	.byte	0x8
	.byte	0x62
	.long	0x389
	.value	0x6e0
	.uleb128 0x11
	.long	.LASF78
	.byte	0x8
	.byte	0x62
	.long	0x389
	.value	0x770
	.byte	0
	.uleb128 0xb
	.long	0x389
	.long	0x561
	.uleb128 0xc
	.long	0x86
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.long	0x41f
	.long	0x571
	.uleb128 0xc
	.long	0x86
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.long	0x29c
	.long	0x581
	.uleb128 0xc
	.long	0x86
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.long	.LASF79
	.byte	0x8
	.byte	0x63
	.long	0x43a
	.uleb128 0x12
	.long	.LASF84
	.byte	0x1
	.byte	0x3f
	.long	0x62
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x5bc
	.uleb128 0x13
	.long	.LASF80
	.byte	0x1
	.byte	0x3f
	.long	0x29c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x14
	.long	.LASF93
	.byte	0x1
	.byte	0x4b
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x649
	.uleb128 0x15
	.string	"mat"
	.byte	0x1
	.byte	0x4b
	.long	0x649
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x15
	.string	"i"
	.byte	0x1
	.byte	0x4b
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x15
	.string	"dir"
	.byte	0x1
	.byte	0x4b
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x16
	.string	"ii"
	.byte	0x1
	.byte	0x4d
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x16
	.string	"jj"
	.byte	0x1
	.byte	0x4d
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x17
	.byte	0x8
	.byte	0x1
	.byte	0x4e
	.long	0x63a
	.uleb128 0x18
	.long	.LASF81
	.byte	0x1
	.byte	0x4f
	.long	0x29c
	.uleb128 0x18
	.long	.LASF82
	.byte	0x1
	.byte	0x50
	.long	0x62
	.byte	0
	.uleb128 0x19
	.long	.LASF83
	.byte	0x1
	.byte	0x51
	.long	0x61b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x389
	.uleb128 0x1a
	.long	.LASF85
	.byte	0x1
	.byte	0x6b
	.long	0x62
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x745
	.uleb128 0x15
	.string	"c"
	.byte	0x1
	.byte	0x6b
	.long	0x649
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1b
	.long	.LASF86
	.byte	0x1
	.byte	0x6d
	.long	0x29c
	.uleb128 0x1b
	.long	.LASF87
	.byte	0x1
	.byte	0x6d
	.long	0x29c
	.uleb128 0x1b
	.long	.LASF88
	.byte	0x1
	.byte	0x6d
	.long	0x29c
	.uleb128 0x1b
	.long	.LASF89
	.byte	0x1
	.byte	0x6d
	.long	0x29c
	.uleb128 0x1b
	.long	.LASF90
	.byte	0x1
	.byte	0x6d
	.long	0x29c
	.uleb128 0x1b
	.long	.LASF91
	.byte	0x1
	.byte	0x6d
	.long	0x29c
	.uleb128 0x1c
	.string	"c0r"
	.byte	0x1
	.byte	0x6e
	.long	0x29c
	.uleb128 0x1c
	.string	"c0i"
	.byte	0x1
	.byte	0x6e
	.long	0x29c
	.uleb128 0x1c
	.string	"c1r"
	.byte	0x1
	.byte	0x6e
	.long	0x29c
	.uleb128 0x1c
	.string	"c1i"
	.byte	0x1
	.byte	0x6e
	.long	0x29c
	.uleb128 0x1c
	.string	"c2r"
	.byte	0x1
	.byte	0x6e
	.long	0x29c
	.uleb128 0x1c
	.string	"c2i"
	.byte	0x1
	.byte	0x6e
	.long	0x29c
	.uleb128 0x1c
	.string	"ar"
	.byte	0x1
	.byte	0x6f
	.long	0x29c
	.uleb128 0x1c
	.string	"ai"
	.byte	0x1
	.byte	0x6f
	.long	0x29c
	.uleb128 0x1c
	.string	"tr"
	.byte	0x1
	.byte	0x6f
	.long	0x29c
	.uleb128 0x1c
	.string	"ti"
	.byte	0x1
	.byte	0x6f
	.long	0x29c
	.uleb128 0x19
	.long	.LASF80
	.byte	0x1
	.byte	0x70
	.long	0x29c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x19
	.long	.LASF92
	.byte	0x1
	.byte	0x71
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x14
	.long	.LASF94
	.byte	0x1
	.byte	0xcb
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x7af
	.uleb128 0x16
	.string	"mat"
	.byte	0x1
	.byte	0xcc
	.long	0x649
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x16
	.string	"i"
	.byte	0x1
	.byte	0xcd
	.long	0x62
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x16
	.string	"dir"
	.byte	0x1
	.byte	0xcd
	.long	0x62
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x16
	.string	"s"
	.byte	0x1
	.byte	0xce
	.long	0x7af
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x19
	.long	.LASF95
	.byte	0x1
	.byte	0xcf
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x19
	.long	.LASF92
	.byte	0x1
	.byte	0xd0
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x581
	.uleb128 0x1d
	.long	.LASF96
	.byte	0x9
	.byte	0xa9
	.long	0x25b
	.uleb128 0x1d
	.long	.LASF97
	.byte	0x8
	.byte	0x87
	.long	0x62
	.uleb128 0x1d
	.long	.LASF98
	.byte	0x8
	.byte	0x9a
	.long	0x7af
	.uleb128 0x1e
	.long	.LASF99
	.byte	0x1
	.byte	0x13
	.long	0x29c
	.uleb128 0x9
	.byte	0x3
	.quad	max_deviation
	.uleb128 0x1e
	.long	.LASF100
	.byte	0x1
	.byte	0x14
	.long	0x29c
	.uleb128 0x9
	.byte	0x3
	.quad	av_deviation
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
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x4
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
	.uleb128 0x5
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x5
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x17
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
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
.LASF94:
	.string	"reunitarize"
.LASF31:
	.string	"_shortbuf"
.LASF104:
	.string	"_IO_lock_t"
.LASF95:
	.string	"errcount"
.LASF70:
	.string	"phase"
.LASF103:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/433.milc/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF20:
	.string	"_IO_buf_end"
.LASF18:
	.string	"_IO_write_end"
.LASF3:
	.string	"unsigned int"
.LASF12:
	.string	"_flags"
.LASF69:
	.string	"link"
.LASF24:
	.string	"_markers"
.LASF64:
	.string	"anti_hermitmat"
.LASF79:
	.string	"site"
.LASF98:
	.string	"lattice"
.LASF45:
	.string	"_pos"
.LASF96:
	.string	"stdout"
.LASF23:
	.string	"_IO_save_end"
.LASF100:
	.string	"av_deviation"
.LASF48:
	.string	"float"
.LASF66:
	.string	"index"
.LASF47:
	.string	"long long unsigned int"
.LASF92:
	.string	"errors"
.LASF78:
	.string	"staple"
.LASF22:
	.string	"_IO_backup_base"
.LASF33:
	.string	"_offset"
.LASF26:
	.string	"_fileno"
.LASF7:
	.string	"size_t"
.LASF55:
	.string	"ic_state"
.LASF73:
	.string	"g_rand"
.LASF15:
	.string	"_IO_read_base"
.LASF43:
	.string	"_next"
.LASF65:
	.string	"parity"
.LASF85:
	.string	"reunit_su3"
.LASF59:
	.string	"su3_vector"
.LASF87:
	.string	"bj0i"
.LASF11:
	.string	"char"
.LASF86:
	.string	"bj0r"
.LASF93:
	.string	"reunit_report_problem_matrix"
.LASF39:
	.string	"_mode"
.LASF82:
	.string	"ival"
.LASF42:
	.string	"_IO_marker"
.LASF13:
	.string	"_IO_read_ptr"
.LASF102:
	.string	"reunitarize2.c"
.LASF81:
	.string	"fval"
.LASF63:
	.string	"space"
.LASF74:
	.string	"tempvec"
.LASF89:
	.string	"bj1i"
.LASF88:
	.string	"bj1r"
.LASF83:
	.string	"ifval"
.LASF54:
	.string	"addend"
.LASF16:
	.string	"_IO_write_base"
.LASF46:
	.string	"long long int"
.LASF21:
	.string	"_IO_save_base"
.LASF97:
	.string	"sites_on_node"
.LASF91:
	.string	"bj2i"
.LASF56:
	.string	"scale"
.LASF90:
	.string	"bj2r"
.LASF76:
	.string	"templongv1"
.LASF34:
	.string	"__pad1"
.LASF35:
	.string	"__pad2"
.LASF36:
	.string	"__pad3"
.LASF37:
	.string	"__pad4"
.LASF38:
	.string	"__pad5"
.LASF30:
	.string	"_vtable_offset"
.LASF67:
	.string	"site_prn"
.LASF62:
	.string	"m22im"
.LASF101:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF14:
	.string	"_IO_read_end"
.LASF61:
	.string	"m11im"
.LASF5:
	.string	"short int"
.LASF6:
	.string	"long int"
.LASF75:
	.string	"templongvec"
.LASF60:
	.string	"m00im"
.LASF52:
	.string	"complex"
.LASF50:
	.string	"real"
.LASF53:
	.string	"multiplier"
.LASF32:
	.string	"_lock"
.LASF10:
	.string	"sizetype"
.LASF0:
	.string	"long unsigned int"
.LASF28:
	.string	"_old_offset"
.LASF41:
	.string	"_IO_FILE"
.LASF1:
	.string	"unsigned char"
.LASF44:
	.string	"_sbuf"
.LASF77:
	.string	"tempmat1"
.LASF84:
	.string	"check_deviation"
.LASF51:
	.string	"imag"
.LASF17:
	.string	"_IO_write_ptr"
.LASF72:
	.string	"cg_p"
.LASF57:
	.string	"double_prn"
.LASF8:
	.string	"__off_t"
.LASF80:
	.string	"deviation"
.LASF4:
	.string	"signed char"
.LASF99:
	.string	"max_deviation"
.LASF2:
	.string	"short unsigned int"
.LASF49:
	.string	"double"
.LASF25:
	.string	"_chain"
.LASF27:
	.string	"_flags2"
.LASF29:
	.string	"_cur_column"
.LASF71:
	.string	"resid"
.LASF58:
	.string	"su3_matrix"
.LASF9:
	.string	"__off64_t"
.LASF40:
	.string	"_unused2"
.LASF19:
	.string	"_IO_buf_base"
.LASF68:
	.string	"space1"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
