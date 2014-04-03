	.file	"histogram.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 histogram.c -mtune=generic -march=x86-64 -g
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
	.string	"histogram.c"
	.text
	.globl	AllocHistogram
	.type	AllocHistogram, @function
AllocHistogram:
.LFB2:
	.file 1 "histogram.c"
	.loc 1 61 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	%edi, -20(%rbp)	# min, min
	movl	%esi, -24(%rbp)	# max, max
	movl	%edx, -28(%rbp)	# lumpsize, lumpsize
	.loc 1 66 0
	movl	-20(%rbp), %eax	# min, tmp69
	movl	-24(%rbp), %edx	# max, tmp70
	subl	%eax, %edx	# tmp69, D.8050
	movl	%edx, %eax	# D.8050, D.8050
	addl	$1, %eax	#, tmp71
	movl	%eax, -12(%rbp)	# tmp71, newsize
	.loc 1 68 0
	movl	$64, %edx	#,
	movl	$68, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_malloc	#
	movq	%rax, -8(%rbp)	# tmp72, h
	.loc 1 69 0
	movq	-8(%rbp), %rax	# h, tmp73
	movl	-20(%rbp), %edx	# min, tmp74
	movl	%edx, 8(%rax)	# tmp74, h_6->min
	.loc 1 70 0
	movq	-8(%rbp), %rax	# h, tmp75
	movl	-24(%rbp), %edx	# max, tmp76
	movl	%edx, 12(%rax)	# tmp76, h_6->max
	.loc 1 71 0
	movq	-8(%rbp), %rax	# h, tmp77
	movl	$0, 28(%rax)	#, h_6->total
	.loc 1 72 0
	movq	-8(%rbp), %rax	# h, tmp78
	movl	$2147483647, 20(%rax)	#, h_6->lowscore
	.loc 1 73 0
	movq	-8(%rbp), %rax	# h, tmp79
	movl	$-2147483648, 16(%rax)	#, h_6->highscore
	.loc 1 74 0
	movq	-8(%rbp), %rax	# h, tmp80
	movl	-28(%rbp), %edx	# lumpsize, tmp81
	movl	%edx, 24(%rax)	# tmp81, h_6->lumpsize
	.loc 1 75 0
	movl	-12(%rbp), %eax	# newsize, tmp82
	cltq
	salq	$2, %rax	#, D.8051
	movq	%rax, %rdx	# D.8051,
	movl	$75, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_malloc	#
	movq	-8(%rbp), %rdx	# h, tmp83
	movq	%rax, (%rdx)	# D.8052, h_6->histogram
	.loc 1 76 0
	movl	$0, -16(%rbp)	#, i
	jmp	.L2	#
.L3:
	.loc 1 76 0 is_stmt 0 discriminator 2
	movq	-8(%rbp), %rax	# h, tmp84
	movq	(%rax), %rax	# h_6->histogram, D.8053
	movl	-16(%rbp), %edx	# i, tmp85
	movslq	%edx, %rdx	# tmp85, D.8051
	salq	$2, %rdx	#, D.8051
	addq	%rdx, %rax	# D.8051, D.8053
	movl	$0, (%rax)	#, *_15
	addl	$1, -16(%rbp)	#, i
.L2:
	.loc 1 76 0 discriminator 1
	movl	-16(%rbp), %eax	# i, tmp86
	cmpl	-12(%rbp), %eax	# newsize, tmp86
	jl	.L3	#,
	.loc 1 78 0 is_stmt 1
	movq	-8(%rbp), %rax	# h, tmp87
	movq	$0, 32(%rax)	#, h_6->expect
	.loc 1 79 0
	movq	-8(%rbp), %rax	# h, tmp88
	movl	$0, 40(%rax)	#, h_6->fit_type
	.loc 1 81 0
	movq	-8(%rbp), %rax	# h, D.8054
	.loc 1 82 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	AllocHistogram, .-AllocHistogram
	.globl	FreeHistogram
	.type	FreeHistogram, @function
FreeHistogram:
.LFB3:
	.loc 1 91 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# h, h
	.loc 1 92 0
	movq	-8(%rbp), %rax	# h, tmp62
	movq	(%rax), %rax	# h_1(D)->histogram, D.8056
	movq	%rax, %rdi	# D.8056,
	call	free	#
	.loc 1 93 0
	movq	-8(%rbp), %rax	# h, tmp63
	movq	32(%rax), %rax	# h_1(D)->expect, D.8057
	testq	%rax, %rax	# D.8057
	je	.L6	#,
	.loc 1 93 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# h, tmp64
	movq	32(%rax), %rax	# h_1(D)->expect, D.8057
	movq	%rax, %rdi	# D.8057,
	call	free	#
.L6:
	.loc 1 94 0 is_stmt 1
	movq	-8(%rbp), %rax	# h, tmp65
	movq	%rax, %rdi	# tmp65,
	call	free	#
	.loc 1 95 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	FreeHistogram, .-FreeHistogram
	.globl	UnfitHistogram
	.type	UnfitHistogram, @function
UnfitHistogram:
.LFB4:
	.loc 1 103 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# h, h
	.loc 1 104 0
	movq	-8(%rbp), %rax	# h, tmp61
	movq	32(%rax), %rax	# h_1(D)->expect, D.8058
	testq	%rax, %rax	# D.8058
	je	.L8	#,
	.loc 1 104 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# h, tmp62
	movq	32(%rax), %rax	# h_1(D)->expect, D.8058
	movq	%rax, %rdi	# D.8058,
	call	free	#
.L8:
	.loc 1 105 0 is_stmt 1
	movq	-8(%rbp), %rax	# h, tmp63
	movq	$0, 32(%rax)	#, h_1(D)->expect
	.loc 1 106 0
	movq	-8(%rbp), %rax	# h, tmp64
	movl	$0, 40(%rax)	#, h_1(D)->fit_type
	.loc 1 107 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	UnfitHistogram, .-UnfitHistogram
	.section	.rodata
	.align 8
.LC1:
	.string	"AddToHistogram(): Can't add to a fitted histogram\n"
	.text
	.globl	AddToHistogram
	.type	AddToHistogram, @function
AddToHistogram:
.LFB5:
	.loc 1 119 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# h, h
	movss	%xmm0, -44(%rbp)	# sc, sc
	.loc 1 129 0
	movq	-40(%rbp), %rax	# h, tmp115
	movl	40(%rax), %eax	# h_3(D)->fit_type, D.8059
	testl	%eax, %eax	# D.8059
	je	.L10	#,
	.loc 1 130 0
	movl	$.LC1, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
.L10:
	.loc 1 137 0
	movss	-44(%rbp), %xmm0	# sc, D.8060
	cvtps2pd	%xmm0, %xmm0	# D.8060, D.8060
	call	floor	#
	cvttsd2si	%xmm0, %eax	# D.8060, tmp116
	movl	%eax, -16(%rbp)	# tmp116, score
	.loc 1 141 0
	movq	-40(%rbp), %rax	# h, tmp117
	movl	8(%rax), %eax	# h_3(D)->min, D.8059
	cmpl	-16(%rbp), %eax	# score, D.8059
	jle	.L11	#,
	.loc 1 143 0
	movq	-40(%rbp), %rax	# h, tmp118
	movl	12(%rax), %edx	# h_3(D)->max, D.8059
	movq	-40(%rbp), %rax	# h, tmp119
	movl	8(%rax), %eax	# h_3(D)->min, D.8059
	subl	%eax, %edx	# D.8059, D.8059
	movl	%edx, %eax	# D.8059, D.8059
	addl	$1, %eax	#, tmp120
	movl	%eax, -12(%rbp)	# tmp120, prevsize
	.loc 1 144 0
	movq	-40(%rbp), %rax	# h, tmp121
	movl	8(%rax), %eax	# h_3(D)->min, D.8059
	subl	-16(%rbp), %eax	# score, D.8059
	movl	%eax, %edx	# D.8059, D.8059
	movq	-40(%rbp), %rax	# h, tmp122
	movl	24(%rax), %eax	# h_3(D)->lumpsize, D.8059
	addl	%edx, %eax	# D.8059, tmp123
	movl	%eax, -8(%rbp)	# tmp123, moveby
	.loc 1 145 0
	movl	-8(%rbp), %eax	# moveby, tmp128
	movl	-12(%rbp), %edx	# prevsize, tmp129
	addl	%edx, %eax	# tmp129, tmp127
	movl	%eax, -4(%rbp)	# tmp127, newsize
	.loc 1 146 0
	movq	-40(%rbp), %rax	# h, tmp130
	movl	8(%rax), %eax	# h_3(D)->min, D.8059
	subl	-8(%rbp), %eax	# moveby, D.8059
	movl	%eax, %edx	# D.8059, D.8059
	movq	-40(%rbp), %rax	# h, tmp131
	movl	%edx, 8(%rax)	# D.8059, h_3(D)->min
	.loc 1 148 0
	movl	-4(%rbp), %eax	# newsize, tmp132
	cltq
	leaq	0(,%rax,4), %rdx	#, D.8061
	movq	-40(%rbp), %rax	# h, tmp133
	movq	(%rax), %rax	# h_3(D)->histogram, D.8062
	movq	%rdx, %rcx	# D.8061,
	movq	%rax, %rdx	# D.8062,
	movl	$148, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_realloc	#
	movq	-40(%rbp), %rdx	# h, tmp134
	movq	%rax, (%rdx)	# D.8063, h_3(D)->histogram
	.loc 1 149 0
	movl	-12(%rbp), %eax	# prevsize, tmp135
	cltq
	leaq	0(,%rax,4), %rsi	#, D.8061
	movq	-40(%rbp), %rax	# h, tmp136
	movq	(%rax), %rax	# h_3(D)->histogram, D.8062
	movq	-40(%rbp), %rdx	# h, tmp137
	movq	(%rdx), %rdx	# h_3(D)->histogram, D.8062
	movl	-8(%rbp), %ecx	# moveby, tmp138
	movslq	%ecx, %rcx	# tmp138, D.8061
	salq	$2, %rcx	#, D.8061
	addq	%rdx, %rcx	# D.8062, D.8063
	movq	%rsi, %rdx	# D.8061,
	movq	%rax, %rsi	# D.8062,
	movq	%rcx, %rdi	# D.8063,
	call	memmove	#
	.loc 1 150 0
	movl	$0, -20(%rbp)	#, i
	jmp	.L12	#
.L13:
	.loc 1 151 0 discriminator 2
	movq	-40(%rbp), %rax	# h, tmp139
	movq	(%rax), %rax	# h_3(D)->histogram, D.8062
	movl	-20(%rbp), %edx	# i, tmp140
	movslq	%edx, %rdx	# tmp140, D.8061
	salq	$2, %rdx	#, D.8061
	addq	%rdx, %rax	# D.8061, D.8062
	movl	$0, (%rax)	#, *_36
	.loc 1 150 0 discriminator 2
	addl	$1, -20(%rbp)	#, i
.L12:
	.loc 1 150 0 is_stmt 0 discriminator 1
	movl	-20(%rbp), %eax	# i, tmp141
	cmpl	-8(%rbp), %eax	# moveby, tmp141
	jl	.L13	#,
	jmp	.L14	#
.L11:
	.loc 1 153 0 is_stmt 1
	movq	-40(%rbp), %rax	# h, tmp142
	movl	12(%rax), %eax	# h_3(D)->max, D.8059
	cmpl	-16(%rbp), %eax	# score, D.8059
	jge	.L14	#,
	.loc 1 155 0
	movq	-40(%rbp), %rax	# h, tmp143
	movl	12(%rax), %edx	# h_3(D)->max, D.8059
	movq	-40(%rbp), %rax	# h, tmp144
	movl	8(%rax), %eax	# h_3(D)->min, D.8059
	subl	%eax, %edx	# D.8059, D.8059
	movl	%edx, %eax	# D.8059, D.8059
	addl	$1, %eax	#, tmp145
	movl	%eax, -12(%rbp)	# tmp145, prevsize
	.loc 1 156 0
	movq	-40(%rbp), %rax	# h, tmp146
	movl	24(%rax), %edx	# h_3(D)->lumpsize, D.8059
	movl	-16(%rbp), %eax	# score, tmp147
	addl	%eax, %edx	# tmp147, D.8059
	movq	-40(%rbp), %rax	# h, tmp148
	movl	%edx, 12(%rax)	# D.8059, h_3(D)->max
	.loc 1 157 0
	movq	-40(%rbp), %rax	# h, tmp149
	movl	12(%rax), %edx	# h_3(D)->max, D.8059
	movq	-40(%rbp), %rax	# h, tmp150
	movl	8(%rax), %eax	# h_3(D)->min, D.8059
	subl	%eax, %edx	# D.8059, D.8059
	movl	%edx, %eax	# D.8059, D.8059
	addl	$1, %eax	#, tmp151
	movl	%eax, -4(%rbp)	# tmp151, newsize
	.loc 1 159 0
	movl	-4(%rbp), %eax	# newsize, tmp152
	cltq
	leaq	0(,%rax,4), %rdx	#, D.8061
	movq	-40(%rbp), %rax	# h, tmp153
	movq	(%rax), %rax	# h_3(D)->histogram, D.8062
	movq	%rdx, %rcx	# D.8061,
	movq	%rax, %rdx	# D.8062,
	movl	$159, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_realloc	#
	movq	-40(%rbp), %rdx	# h, tmp154
	movq	%rax, (%rdx)	# D.8063, h_3(D)->histogram
	.loc 1 160 0
	movl	-12(%rbp), %eax	# prevsize, tmp155
	movl	%eax, -20(%rbp)	# tmp155, i
	jmp	.L15	#
.L16:
	.loc 1 161 0 discriminator 2
	movq	-40(%rbp), %rax	# h, tmp156
	movq	(%rax), %rax	# h_3(D)->histogram, D.8062
	movl	-20(%rbp), %edx	# i, tmp157
	movslq	%edx, %rdx	# tmp157, D.8061
	salq	$2, %rdx	#, D.8061
	addq	%rdx, %rax	# D.8061, D.8062
	movl	$0, (%rax)	#, *_57
	.loc 1 160 0 discriminator 2
	addl	$1, -20(%rbp)	#, i
.L15:
	.loc 1 160 0 is_stmt 0 discriminator 1
	movl	-20(%rbp), %eax	# i, tmp158
	cmpl	-4(%rbp), %eax	# newsize, tmp158
	jl	.L16	#,
.L14:
	.loc 1 167 0 is_stmt 1
	movq	-40(%rbp), %rax	# h, tmp159
	movq	(%rax), %rdx	# h_3(D)->histogram, D.8062
	movq	-40(%rbp), %rax	# h, tmp160
	movl	8(%rax), %eax	# h_3(D)->min, D.8059
	movl	-16(%rbp), %ecx	# score, tmp161
	subl	%eax, %ecx	# D.8059, D.8059
	movl	%ecx, %eax	# D.8059, D.8059
	cltq
	salq	$2, %rax	#, D.8061
	addq	%rdx, %rax	# D.8062, D.8062
	movl	(%rax), %edx	# *_64, D.8059
	addl	$1, %edx	#, D.8059
	movl	%edx, (%rax)	# D.8059, *_64
	.loc 1 168 0
	movq	-40(%rbp), %rax	# h, tmp162
	movl	28(%rax), %eax	# h_3(D)->total, D.8059
	leal	1(%rax), %edx	#, D.8059
	movq	-40(%rbp), %rax	# h, tmp163
	movl	%edx, 28(%rax)	# D.8059, h_3(D)->total
	.loc 1 169 0
	movq	-40(%rbp), %rax	# h, tmp164
	movl	20(%rax), %eax	# h_3(D)->lowscore, D.8059
	cmpl	-16(%rbp), %eax	# score, D.8059
	jle	.L17	#,
	.loc 1 169 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# h, tmp165
	movl	-16(%rbp), %edx	# score, tmp166
	movl	%edx, 20(%rax)	# tmp166, h_3(D)->lowscore
.L17:
	.loc 1 170 0 is_stmt 1
	movq	-40(%rbp), %rax	# h, tmp167
	movl	16(%rax), %eax	# h_3(D)->highscore, D.8059
	cmpl	-16(%rbp), %eax	# score, D.8059
	jge	.L18	#,
	.loc 1 170 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# h, tmp168
	movl	-16(%rbp), %edx	# score, tmp169
	movl	%edx, 16(%rax)	# tmp169, h_3(D)->highscore
.L18:
	.loc 1 174 0 is_stmt 1
	nop
	.loc 1 175 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	AddToHistogram, .-AddToHistogram
	.section	.rodata
.LC2:
	.string	"exp"
.LC3:
	.string	"obs"
.LC4:
	.string	"score"
	.align 8
.LC5:
	.string	"%5s %6s %6s  (one = represents %d sequences)\n"
.LC6:
	.string	"---"
.LC7:
	.string	"-----"
.LC8:
	.string	"%5s %6s %6s\n"
.LC9:
	.string	"-"
.LC10:
	.string	"<%4d %6d %6s|"
.LC11:
	.string	"oops"
.LC12:
	.string	">%4d %6d %6s|"
.LC13:
	.string	"%5d %6d %6d|"
.LC14:
	.string	"%5d %6d %6s|"
	.align 8
.LC16:
	.string	"\n\n%% No statistical fit available\n"
	.align 8
.LC17:
	.string	"\n\n%% Statistical details of theoretical EVD fit:\n"
.LC18:
	.string	"              mu = %10.4f\n"
.LC19:
	.string	"          lambda = %10.4f\n"
.LC20:
	.string	"chi-sq statistic = %10.4f\n"
.LC21:
	.string	"  P(chi-square)  = %10.4g\n"
	.align 8
.LC22:
	.string	"\n\n%% Statistical details of theoretical Gaussian fit:\n"
.LC23:
	.string	"            mean = %10.4f\n"
.LC24:
	.string	"              sd = %10.4f\n"
	.text
	.globl	PrintASCIIHistogram
	.type	PrintASCIIHistogram, @function
PrintASCIIHistogram:
.LFB6:
	.loc 1 190 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$160, %rsp	#,
	movq	%rdi, -152(%rbp)	# fp, fp
	movq	%rsi, -160(%rbp)	# h, h
	.loc 1 190 0
	movq	%fs:40, %rax	#, tmp334
	movq	%rax, -8(%rbp)	# tmp334, D.8071
	xorl	%eax, %eax	# tmp334
	.loc 1 199 0
	movl	$3, -108(%rbp)	#, emptybins
	.loc 1 207 0
	movl	$0, -140(%rbp)	#, maxbar
	.loc 1 208 0
	movq	-160(%rbp), %rax	# h, tmp181
	movl	20(%rax), %edx	# h_30(D)->lowscore, D.8065
	movq	-160(%rbp), %rax	# h, tmp182
	movl	8(%rax), %eax	# h_30(D)->min, D.8065
	subl	%eax, %edx	# D.8065, tmp183
	movl	%edx, %eax	# tmp183, tmp183
	movl	%eax, -132(%rbp)	# tmp183, i
	jmp	.L21	#
.L23:
	.loc 1 209 0
	movq	-160(%rbp), %rax	# h, tmp184
	movq	(%rax), %rax	# h_30(D)->histogram, D.8066
	movl	-132(%rbp), %edx	# i, tmp185
	movslq	%edx, %rdx	# tmp185, D.8067
	salq	$2, %rdx	#, D.8067
	addq	%rdx, %rax	# D.8067, D.8066
	movl	(%rax), %eax	# *_41, D.8065
	cmpl	-140(%rbp), %eax	# maxbar, D.8065
	jle	.L22	#,
	.loc 1 211 0
	movq	-160(%rbp), %rax	# h, tmp186
	movq	(%rax), %rax	# h_30(D)->histogram, D.8066
	movl	-132(%rbp), %edx	# i, tmp187
	movslq	%edx, %rdx	# tmp187, D.8067
	salq	$2, %rdx	#, D.8067
	addq	%rdx, %rax	# D.8067, D.8066
	movl	(%rax), %eax	# *_46, tmp188
	movl	%eax, -140(%rbp)	# tmp188, maxbar
	.loc 1 212 0
	movq	-160(%rbp), %rax	# h, tmp189
	movl	8(%rax), %edx	# h_30(D)->min, D.8065
	movl	-132(%rbp), %eax	# i, tmp193
	addl	%edx, %eax	# D.8065, tmp192
	movl	%eax, -124(%rbp)	# tmp192, lowbound
.L22:
	.loc 1 208 0
	addl	$1, -132(%rbp)	#, i
.L21:
	.loc 1 208 0 is_stmt 0 discriminator 1
	movq	-160(%rbp), %rax	# h, tmp194
	movl	16(%rax), %edx	# h_30(D)->highscore, D.8065
	movq	-160(%rbp), %rax	# h, tmp195
	movl	8(%rax), %eax	# h_30(D)->min, D.8065
	subl	%eax, %edx	# D.8065, D.8065
	movl	%edx, %eax	# D.8065, D.8065
	cmpl	-132(%rbp), %eax	# i, D.8065
	jge	.L23	#,
	.loc 1 219 0 is_stmt 1
	movl	-124(%rbp), %eax	# lowbound, tmp196
	movl	%eax, -116(%rbp)	# tmp196, highbound
	.loc 1 220 0
	movl	$0, -136(%rbp)	#, num
	jmp	.L24	#
.L28:
	.loc 1 222 0
	movq	-160(%rbp), %rax	# h, tmp197
	movl	8(%rax), %eax	# h_30(D)->min, D.8065
	movl	-124(%rbp), %edx	# lowbound, tmp201
	subl	%eax, %edx	# D.8065, tmp200
	movl	%edx, %eax	# tmp200, tmp200
	movl	%eax, -132(%rbp)	# tmp200, i
	.loc 1 223 0
	movq	-160(%rbp), %rax	# h, tmp202
	movq	(%rax), %rax	# h_30(D)->histogram, D.8066
	movl	-132(%rbp), %edx	# i, tmp203
	movslq	%edx, %rdx	# tmp203, D.8067
	salq	$2, %rdx	#, D.8067
	addq	%rdx, %rax	# D.8067, D.8066
	movl	(%rax), %eax	# *_59, D.8065
	testl	%eax, %eax	# D.8065
	jle	.L25	#,
	.loc 1 223 0 is_stmt 0 discriminator 1
	movl	$0, -136(%rbp)	#, num
	jmp	.L26	#
.L25:
	.loc 1 224 0 is_stmt 1
	addl	$1, -136(%rbp)	#, num
	movl	-136(%rbp), %eax	# num, tmp204
	cmpl	-108(%rbp), %eax	# emptybins, tmp204
	jne	.L26	#,
	.loc 1 224 0 is_stmt 0 discriminator 1
	movl	-108(%rbp), %eax	# emptybins, tmp205
	addl	%eax, -124(%rbp)	# tmp205, lowbound
	jmp	.L27	#
.L26:
	.loc 1 220 0 is_stmt 1
	subl	$1, -124(%rbp)	#, lowbound
.L24:
	.loc 1 220 0 is_stmt 0 discriminator 1
	movq	-160(%rbp), %rax	# h, tmp206
	movl	20(%rax), %eax	# h_30(D)->lowscore, D.8065
	cmpl	-124(%rbp), %eax	# lowbound, D.8065
	jl	.L28	#,
.L27:
	.loc 1 226 0 is_stmt 1
	movl	$0, -136(%rbp)	#, num
	jmp	.L29	#
.L33:
	.loc 1 228 0
	movq	-160(%rbp), %rax	# h, tmp207
	movl	8(%rax), %eax	# h_30(D)->min, D.8065
	movl	-116(%rbp), %edx	# highbound, tmp211
	subl	%eax, %edx	# D.8065, tmp210
	movl	%edx, %eax	# tmp210, tmp210
	movl	%eax, -132(%rbp)	# tmp210, i
	.loc 1 229 0
	movq	-160(%rbp), %rax	# h, tmp212
	movq	(%rax), %rax	# h_30(D)->histogram, D.8066
	movl	-132(%rbp), %edx	# i, tmp213
	movslq	%edx, %rdx	# tmp213, D.8067
	salq	$2, %rdx	#, D.8067
	addq	%rdx, %rax	# D.8067, D.8066
	movl	(%rax), %eax	# *_72, D.8065
	testl	%eax, %eax	# D.8065
	jle	.L30	#,
	.loc 1 229 0 is_stmt 0 discriminator 1
	movl	$0, -136(%rbp)	#, num
	jmp	.L31	#
.L30:
	.loc 1 230 0 is_stmt 1
	addl	$1, -136(%rbp)	#, num
	movl	-136(%rbp), %eax	# num, tmp214
	cmpl	-108(%rbp), %eax	# emptybins, tmp214
	jne	.L31	#,
	.loc 1 230 0 is_stmt 0 discriminator 1
	movl	-108(%rbp), %eax	# emptybins, tmp215
	subl	%eax, -116(%rbp)	# tmp215, highbound
	jmp	.L32	#
.L31:
	.loc 1 226 0 is_stmt 1
	addl	$1, -116(%rbp)	#, highbound
.L29:
	.loc 1 226 0 is_stmt 0 discriminator 1
	movq	-160(%rbp), %rax	# h, tmp216
	movl	16(%rax), %eax	# h_30(D)->highscore, D.8065
	cmpl	-116(%rbp), %eax	# highbound, D.8065
	jg	.L33	#,
.L32:
	.loc 1 233 0 is_stmt 1
	movl	$0, -120(%rbp)	#, lowcount
	movq	-160(%rbp), %rax	# h, tmp217
	movl	20(%rax), %edx	# h_30(D)->lowscore, D.8065
	movq	-160(%rbp), %rax	# h, tmp218
	movl	8(%rax), %eax	# h_30(D)->min, D.8065
	subl	%eax, %edx	# D.8065, tmp219
	movl	%edx, %eax	# tmp219, tmp219
	movl	%eax, -132(%rbp)	# tmp219, i
	jmp	.L34	#
.L35:
	.loc 1 234 0 discriminator 2
	movq	-160(%rbp), %rax	# h, tmp220
	movq	(%rax), %rax	# h_30(D)->histogram, D.8066
	movl	-132(%rbp), %edx	# i, tmp221
	movslq	%edx, %rdx	# tmp221, D.8067
	salq	$2, %rdx	#, D.8067
	addq	%rdx, %rax	# D.8067, D.8066
	movl	(%rax), %eax	# *_87, D.8065
	addl	%eax, -120(%rbp)	# D.8065, lowcount
	.loc 1 233 0 discriminator 2
	addl	$1, -132(%rbp)	#, i
.L34:
	.loc 1 233 0 is_stmt 0 discriminator 1
	movq	-160(%rbp), %rax	# h, tmp222
	movl	8(%rax), %eax	# h_30(D)->min, D.8065
	movl	-124(%rbp), %edx	# lowbound, tmp223
	subl	%eax, %edx	# D.8065, D.8065
	movl	%edx, %eax	# D.8065, D.8065
	cmpl	-132(%rbp), %eax	# i, D.8065
	jge	.L35	#,
	.loc 1 235 0 is_stmt 1
	movl	$0, -112(%rbp)	#, highcount
	movq	-160(%rbp), %rax	# h, tmp224
	movl	16(%rax), %edx	# h_30(D)->highscore, D.8065
	movq	-160(%rbp), %rax	# h, tmp225
	movl	8(%rax), %eax	# h_30(D)->min, D.8065
	subl	%eax, %edx	# D.8065, tmp226
	movl	%edx, %eax	# tmp226, tmp226
	movl	%eax, -132(%rbp)	# tmp226, i
	jmp	.L36	#
.L37:
	.loc 1 236 0 discriminator 2
	movq	-160(%rbp), %rax	# h, tmp227
	movq	(%rax), %rax	# h_30(D)->histogram, D.8066
	movl	-132(%rbp), %edx	# i, tmp228
	movslq	%edx, %rdx	# tmp228, D.8067
	salq	$2, %rdx	#, D.8067
	addq	%rdx, %rax	# D.8067, D.8066
	movl	(%rax), %eax	# *_100, D.8065
	addl	%eax, -112(%rbp)	# D.8065, highcount
	.loc 1 235 0 discriminator 2
	subl	$1, -132(%rbp)	#, i
.L36:
	.loc 1 235 0 is_stmt 0 discriminator 1
	movq	-160(%rbp), %rax	# h, tmp229
	movl	8(%rax), %eax	# h_30(D)->min, D.8065
	movl	-116(%rbp), %edx	# highbound, tmp230
	subl	%eax, %edx	# D.8065, D.8065
	movl	%edx, %eax	# D.8065, D.8065
	cmpl	-132(%rbp), %eax	# i, D.8065
	jle	.L37	#,
	.loc 1 239 0 is_stmt 1
	movl	-120(%rbp), %eax	# lowcount, tmp231
	cmpl	-140(%rbp), %eax	# maxbar, tmp231
	jle	.L38	#,
	.loc 1 239 0 is_stmt 0 discriminator 1
	movl	-120(%rbp), %eax	# lowcount, tmp232
	movl	%eax, -140(%rbp)	# tmp232, maxbar
.L38:
	.loc 1 240 0 is_stmt 1
	movl	-112(%rbp), %eax	# highcount, tmp233
	cmpl	-140(%rbp), %eax	# maxbar, tmp233
	jle	.L39	#,
	.loc 1 240 0 is_stmt 0 discriminator 1
	movl	-112(%rbp), %eax	# highcount, tmp234
	movl	%eax, -140(%rbp)	# tmp234, maxbar
.L39:
	.loc 1 241 0 is_stmt 1
	movl	-140(%rbp), %eax	# maxbar, tmp235
	leal	-1(%rax), %ecx	#, D.8065
	movl	$582368447, %edx	#, tmp237
	movl	%ecx, %eax	# D.8065, tmp335
	imull	%edx	# tmp237
	sarl	$3, %edx	#, tmp238
	movl	%ecx, %eax	# D.8065, tmp239
	sarl	$31, %eax	#, tmp239
	subl	%eax, %edx	# tmp239, D.8065
	movl	%edx, %eax	# D.8065, D.8065
	addl	$1, %eax	#, tmp240
	movl	%eax, -104(%rbp)	# tmp240, units
	.loc 1 246 0
	movl	-104(%rbp), %edx	# units, tmp241
	movq	-152(%rbp), %rax	# fp, tmp242
	movl	%edx, %r9d	# tmp241,
	movl	$.LC2, %r8d	#,
	movl	$.LC3, %ecx	#,
	movl	$.LC4, %edx	#,
	movl	$.LC5, %esi	#,
	movq	%rax, %rdi	# tmp242,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 248 0
	movq	-152(%rbp), %rax	# fp, tmp243
	movl	$.LC6, %r8d	#,
	movl	$.LC6, %ecx	#,
	movl	$.LC7, %edx	#,
	movl	$.LC8, %esi	#,
	movq	%rax, %rdi	# tmp243,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 249 0
	movb	$0, -16(%rbp)	#, buffer
	.loc 1 250 0
	movb	$10, -17(%rbp)	#, buffer
	.loc 1 251 0
	movq	-160(%rbp), %rax	# h, tmp244
	movl	20(%rax), %eax	# h_30(D)->lowscore, tmp245
	movl	%eax, -132(%rbp)	# tmp245, i
	jmp	.L40	#
.L60:
	.loc 1 253 0
	leaq	-96(%rbp), %rax	#, tmp246
	movl	$79, %edx	#,
	movl	$32, %esi	#,
	movq	%rax, %rdi	# tmp246,
	call	memset	#
	.loc 1 254 0
	movq	-160(%rbp), %rax	# h, tmp247
	movl	8(%rax), %eax	# h_30(D)->min, D.8065
	movl	-132(%rbp), %edx	# i, tmp251
	subl	%eax, %edx	# D.8065, tmp250
	movl	%edx, %eax	# tmp250, tmp250
	movl	%eax, -100(%rbp)	# tmp250, idx
	.loc 1 258 0
	movl	-132(%rbp), %eax	# i, tmp252
	cmpl	-124(%rbp), %eax	# lowbound, tmp252
	jge	.L41	#,
	.loc 1 258 0 is_stmt 0 discriminator 1
	jmp	.L42	#
.L41:
	.loc 1 259 0 is_stmt 1
	movl	-132(%rbp), %eax	# i, tmp253
	cmpl	-116(%rbp), %eax	# highbound, tmp253
	jle	.L43	#,
	.loc 1 259 0 is_stmt 0 discriminator 1
	jmp	.L42	#
.L43:
	.loc 1 260 0 is_stmt 1
	movl	-132(%rbp), %eax	# i, tmp254
	cmpl	-124(%rbp), %eax	# lowbound, tmp254
	jne	.L44	#,
	.loc 1 260 0 is_stmt 0 discriminator 1
	movq	-160(%rbp), %rax	# h, tmp255
	movl	20(%rax), %eax	# h_30(D)->lowscore, D.8065
	cmpl	-132(%rbp), %eax	# i, D.8065
	je	.L44	#,
	.loc 1 262 0 is_stmt 1
	movl	-132(%rbp), %eax	# i, tmp256
	leal	1(%rax), %esi	#, D.8065
	movl	-120(%rbp), %edx	# lowcount, tmp257
	leaq	-96(%rbp), %rax	#, tmp258
	movl	$.LC9, %r8d	#,
	movl	%edx, %ecx	# tmp257,
	movl	%esi, %edx	# D.8065,
	movl	$.LC10, %esi	#,
	movq	%rax, %rdi	# tmp258,
	movl	$0, %eax	#,
	call	sprintf	#
	.loc 1 263 0
	cmpl	$0, -120(%rbp)	#, lowcount
	jle	.L45	#,
	.loc 1 264 0
	movl	-120(%rbp), %eax	# lowcount, tmp259
	subl	$1, %eax	#, D.8065
	cltd
	idivl	-104(%rbp)	# units
	addl	$1, %eax	#, tmp262
	movl	%eax, -136(%rbp)	# tmp262, num
	.loc 1 265 0
	cmpl	$60, -136(%rbp)	#, num
	jle	.L46	#,
	.loc 1 265 0 is_stmt 0 discriminator 1
	movl	$.LC11, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
.L46:
	.loc 1 266 0 is_stmt 1
	movl	$20, -128(%rbp)	#, pos
	jmp	.L47	#
.L48:
	.loc 1 266 0 is_stmt 0 discriminator 2
	movl	-128(%rbp), %eax	# pos, pos.0
	leal	1(%rax), %edx	#, tmp263
	movl	%edx, -128(%rbp)	# tmp263, pos
	cltq
	movb	$61, -96(%rbp,%rax)	#, buffer
	subl	$1, -136(%rbp)	#, num
.L47:
	.loc 1 266 0 discriminator 1
	cmpl	$0, -136(%rbp)	#, num
	jg	.L48	#,
.L45:
	.loc 1 268 0 is_stmt 1
	movq	-152(%rbp), %rdx	# fp, tmp265
	leaq	-96(%rbp), %rax	#, tmp266
	movq	%rdx, %rsi	# tmp265,
	movq	%rax, %rdi	# tmp266,
	call	fputs	#
	.loc 1 269 0
	jmp	.L42	#
.L44:
	.loc 1 271 0
	movl	-132(%rbp), %eax	# i, tmp267
	cmpl	-116(%rbp), %eax	# highbound, tmp267
	jne	.L49	#,
	.loc 1 271 0 is_stmt 0 discriminator 1
	movq	-160(%rbp), %rax	# h, tmp268
	movl	16(%rax), %eax	# h_30(D)->highscore, D.8065
	cmpl	-132(%rbp), %eax	# i, D.8065
	je	.L49	#,
	.loc 1 273 0 is_stmt 1
	movl	-112(%rbp), %ecx	# highcount, tmp269
	movl	-132(%rbp), %edx	# i, tmp270
	leaq	-96(%rbp), %rax	#, tmp271
	movl	$.LC9, %r8d	#,
	movl	$.LC12, %esi	#,
	movq	%rax, %rdi	# tmp271,
	movl	$0, %eax	#,
	call	sprintf	#
	.loc 1 274 0
	cmpl	$0, -112(%rbp)	#, highcount
	jle	.L50	#,
	.loc 1 275 0
	movl	-112(%rbp), %eax	# highcount, tmp272
	subl	$1, %eax	#, D.8065
	cltd
	idivl	-104(%rbp)	# units
	addl	$1, %eax	#, tmp275
	movl	%eax, -136(%rbp)	# tmp275, num
	.loc 1 276 0
	movl	$20, -128(%rbp)	#, pos
	jmp	.L51	#
.L52:
	.loc 1 276 0 is_stmt 0 discriminator 2
	movl	-128(%rbp), %eax	# pos, pos.1
	leal	1(%rax), %edx	#, tmp276
	movl	%edx, -128(%rbp)	# tmp276, pos
	cltq
	movb	$61, -96(%rbp,%rax)	#, buffer
	subl	$1, -136(%rbp)	#, num
.L51:
	.loc 1 276 0 discriminator 1
	cmpl	$0, -136(%rbp)	#, num
	jg	.L52	#,
.L50:
	.loc 1 278 0 is_stmt 1
	movq	-152(%rbp), %rdx	# fp, tmp278
	leaq	-96(%rbp), %rax	#, tmp279
	movq	%rdx, %rsi	# tmp278,
	movq	%rax, %rdi	# tmp279,
	call	fputs	#
	.loc 1 279 0
	jmp	.L42	#
.L49:
	.loc 1 284 0
	movq	-160(%rbp), %rax	# h, tmp280
	movl	40(%rax), %eax	# h_30(D)->fit_type, D.8065
	testl	%eax, %eax	# D.8065
	je	.L53	#,
	.loc 1 286 0
	movq	-160(%rbp), %rax	# h, tmp281
	movq	32(%rax), %rax	# h_30(D)->expect, D.8068
	movl	-100(%rbp), %edx	# idx, tmp282
	movslq	%edx, %rdx	# tmp282, D.8067
	salq	$2, %rdx	#, D.8067
	addq	%rdx, %rax	# D.8067, D.8068
	movss	(%rax), %xmm0	# *_135, D.8069
	.loc 1 285 0
	cvttss2si	%xmm0, %esi	# D.8069, D.8065
	.loc 1 286 0
	movq	-160(%rbp), %rax	# h, tmp283
	movq	(%rax), %rax	# h_30(D)->histogram, D.8066
	movl	-100(%rbp), %edx	# idx, tmp284
	movslq	%edx, %rdx	# tmp284, D.8067
	salq	$2, %rdx	#, D.8067
	addq	%rdx, %rax	# D.8067, D.8066
	.loc 1 285 0
	movl	(%rax), %ecx	# *_141, D.8065
	movl	-132(%rbp), %edx	# i, tmp285
	leaq	-96(%rbp), %rax	#, tmp286
	movl	%esi, %r8d	# D.8065,
	movl	$.LC13, %esi	#,
	movq	%rax, %rdi	# tmp286,
	movl	$0, %eax	#,
	call	sprintf	#
	jmp	.L54	#
.L53:
	.loc 1 288 0
	movq	-160(%rbp), %rax	# h, tmp287
	movq	(%rax), %rax	# h_30(D)->histogram, D.8066
	movl	-100(%rbp), %edx	# idx, tmp288
	movslq	%edx, %rdx	# tmp288, D.8067
	salq	$2, %rdx	#, D.8067
	addq	%rdx, %rax	# D.8067, D.8066
	movl	(%rax), %ecx	# *_146, D.8065
	movl	-132(%rbp), %edx	# i, tmp289
	leaq	-96(%rbp), %rax	#, tmp290
	movl	$.LC9, %r8d	#,
	movl	$.LC14, %esi	#,
	movq	%rax, %rdi	# tmp290,
	movl	$0, %eax	#,
	call	sprintf	#
.L54:
	.loc 1 289 0
	movb	$32, -76(%rbp)	#, buffer
	.loc 1 293 0
	movq	-160(%rbp), %rax	# h, tmp291
	movq	(%rax), %rax	# h_30(D)->histogram, D.8066
	movl	-100(%rbp), %edx	# idx, tmp292
	movslq	%edx, %rdx	# tmp292, D.8067
	salq	$2, %rdx	#, D.8067
	addq	%rdx, %rax	# D.8067, D.8066
	movl	(%rax), %eax	# *_151, D.8065
	testl	%eax, %eax	# D.8065
	jle	.L55	#,
	.loc 1 294 0
	movq	-160(%rbp), %rax	# h, tmp293
	movq	(%rax), %rax	# h_30(D)->histogram, D.8066
	movl	-100(%rbp), %edx	# idx, tmp294
	movslq	%edx, %rdx	# tmp294, D.8067
	salq	$2, %rdx	#, D.8067
	addq	%rdx, %rax	# D.8067, D.8066
	movl	(%rax), %eax	# *_156, D.8065
	subl	$1, %eax	#, D.8065
	cltd
	idivl	-104(%rbp)	# units
	addl	$1, %eax	#, tmp297
	movl	%eax, -136(%rbp)	# tmp297, num
	.loc 1 295 0
	movl	$20, -128(%rbp)	#, pos
	jmp	.L56	#
.L57:
	.loc 1 295 0 is_stmt 0 discriminator 2
	movl	-128(%rbp), %eax	# pos, pos.2
	leal	1(%rax), %edx	#, tmp298
	movl	%edx, -128(%rbp)	# tmp298, pos
	cltq
	movb	$61, -96(%rbp,%rax)	#, buffer
	subl	$1, -136(%rbp)	#, num
.L56:
	.loc 1 295 0 discriminator 1
	cmpl	$0, -136(%rbp)	#, num
	jg	.L57	#,
.L55:
	.loc 1 300 0 is_stmt 1
	movq	-160(%rbp), %rax	# h, tmp300
	movl	40(%rax), %eax	# h_30(D)->fit_type, D.8065
	testl	%eax, %eax	# D.8065
	je	.L58	#,
	.loc 1 300 0 is_stmt 0 discriminator 1
	movq	-160(%rbp), %rax	# h, tmp301
	movq	32(%rax), %rax	# h_30(D)->expect, D.8068
	movl	-100(%rbp), %edx	# idx, tmp302
	movslq	%edx, %rdx	# tmp302, D.8067
	salq	$2, %rdx	#, D.8067
	addq	%rdx, %rax	# D.8067, D.8068
	movss	(%rax), %xmm0	# *_169, D.8069
	cvttss2si	%xmm0, %eax	# D.8069, D.8065
	testl	%eax, %eax	# D.8065
	jle	.L58	#,
	.loc 1 302 0 is_stmt 1
	movq	-160(%rbp), %rax	# h, tmp303
	movq	32(%rax), %rax	# h_30(D)->expect, D.8068
	movl	-100(%rbp), %edx	# idx, tmp304
	movslq	%edx, %rdx	# tmp304, D.8067
	salq	$2, %rdx	#, D.8067
	addq	%rdx, %rax	# D.8067, D.8068
	movss	(%rax), %xmm0	# *_175, D.8069
	movss	.LC15(%rip), %xmm1	#, tmp305
	subss	%xmm1, %xmm0	# tmp305, D.8069
	cvttss2si	%xmm0, %eax	# D.8069, D.8065
	cltd
	idivl	-104(%rbp)	# units
	addl	$20, %eax	#, tmp308
	movl	%eax, -128(%rbp)	# tmp308, pos
	.loc 1 303 0
	cmpl	$77, -128(%rbp)	#, pos
	jle	.L59	#,
	.loc 1 303 0 is_stmt 0 discriminator 1
	movl	$78, -128(%rbp)	#, pos
.L59:
	.loc 1 304 0 is_stmt 1
	movl	-128(%rbp), %eax	# pos, tmp310
	cltq
	movb	$42, -96(%rbp,%rax)	#, buffer
.L58:
	.loc 1 309 0
	movq	-152(%rbp), %rdx	# fp, tmp311
	leaq	-96(%rbp), %rax	#, tmp312
	movq	%rdx, %rsi	# tmp311,
	movq	%rax, %rdi	# tmp312,
	call	fputs	#
.L42:
	.loc 1 251 0
	addl	$1, -132(%rbp)	#, i
.L40:
	.loc 1 251 0 is_stmt 0 discriminator 1
	movq	-160(%rbp), %rax	# h, tmp313
	movl	16(%rax), %eax	# h_30(D)->highscore, D.8065
	cmpl	-132(%rbp), %eax	# i, D.8065
	jge	.L60	#,
	.loc 1 314 0 is_stmt 1
	movq	-160(%rbp), %rax	# h, tmp314
	movl	40(%rax), %eax	# h_30(D)->fit_type, D.8065
	cmpl	$1, %eax	#, D.8065
	je	.L62	#,
	cmpl	$2, %eax	#, D.8065
	je	.L63	#,
	testl	%eax, %eax	# D.8065
	je	.L64	#,
	.loc 1 335 0
	jmp	.L20	#
.L64:
	.loc 1 316 0
	movq	-152(%rbp), %rax	# fp, tmp315
	movl	$.LC16, %esi	#,
	movq	%rax, %rdi	# tmp315,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 317 0
	jmp	.L61	#
.L62:
	.loc 1 320 0
	movq	-152(%rbp), %rax	# fp, tmp316
	movl	$.LC17, %esi	#,
	movq	%rax, %rdi	# tmp316,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 321 0
	movq	-160(%rbp), %rax	# h, tmp317
	movss	44(%rax), %xmm0	# h_30(D)->param, D.8069
	unpcklps	%xmm0, %xmm0	# D.8069, D.8069
	cvtps2pd	%xmm0, %xmm0	# D.8069, D.8070
	movq	-152(%rbp), %rax	# fp, tmp318
	movl	$.LC18, %esi	#,
	movq	%rax, %rdi	# tmp318,
	movl	$1, %eax	#,
	call	fprintf	#
	.loc 1 322 0
	movq	-160(%rbp), %rax	# h, tmp319
	movss	48(%rax), %xmm0	# h_30(D)->param, D.8069
	unpcklps	%xmm0, %xmm0	# D.8069, D.8069
	cvtps2pd	%xmm0, %xmm0	# D.8069, D.8070
	movq	-152(%rbp), %rax	# fp, tmp320
	movl	$.LC19, %esi	#,
	movq	%rax, %rdi	# tmp320,
	movl	$1, %eax	#,
	call	fprintf	#
	.loc 1 323 0
	movq	-160(%rbp), %rax	# h, tmp321
	movss	56(%rax), %xmm0	# h_30(D)->chisq, D.8069
	unpcklps	%xmm0, %xmm0	# D.8069, D.8069
	cvtps2pd	%xmm0, %xmm0	# D.8069, D.8070
	movq	-152(%rbp), %rax	# fp, tmp322
	movl	$.LC20, %esi	#,
	movq	%rax, %rdi	# tmp322,
	movl	$1, %eax	#,
	call	fprintf	#
	.loc 1 324 0
	movq	-160(%rbp), %rax	# h, tmp323
	movss	60(%rax), %xmm0	# h_30(D)->chip, D.8069
	unpcklps	%xmm0, %xmm0	# D.8069, D.8069
	cvtps2pd	%xmm0, %xmm0	# D.8069, D.8070
	movq	-152(%rbp), %rax	# fp, tmp324
	movl	$.LC21, %esi	#,
	movq	%rax, %rdi	# tmp324,
	movl	$1, %eax	#,
	call	fprintf	#
	.loc 1 325 0
	jmp	.L61	#
.L63:
	.loc 1 328 0
	movq	-152(%rbp), %rax	# fp, tmp325
	movl	$.LC22, %esi	#,
	movq	%rax, %rdi	# tmp325,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 329 0
	movq	-160(%rbp), %rax	# h, tmp326
	movss	44(%rax), %xmm0	# h_30(D)->param, D.8069
	unpcklps	%xmm0, %xmm0	# D.8069, D.8069
	cvtps2pd	%xmm0, %xmm0	# D.8069, D.8070
	movq	-152(%rbp), %rax	# fp, tmp327
	movl	$.LC23, %esi	#,
	movq	%rax, %rdi	# tmp327,
	movl	$1, %eax	#,
	call	fprintf	#
	.loc 1 330 0
	movq	-160(%rbp), %rax	# h, tmp328
	movss	48(%rax), %xmm0	# h_30(D)->param, D.8069
	unpcklps	%xmm0, %xmm0	# D.8069, D.8069
	cvtps2pd	%xmm0, %xmm0	# D.8069, D.8070
	movq	-152(%rbp), %rax	# fp, tmp329
	movl	$.LC24, %esi	#,
	movq	%rax, %rdi	# tmp329,
	movl	$1, %eax	#,
	call	fprintf	#
	.loc 1 331 0
	movq	-160(%rbp), %rax	# h, tmp330
	movss	56(%rax), %xmm0	# h_30(D)->chisq, D.8069
	unpcklps	%xmm0, %xmm0	# D.8069, D.8069
	cvtps2pd	%xmm0, %xmm0	# D.8069, D.8070
	movq	-152(%rbp), %rax	# fp, tmp331
	movl	$.LC20, %esi	#,
	movq	%rax, %rdi	# tmp331,
	movl	$1, %eax	#,
	call	fprintf	#
	.loc 1 332 0
	movq	-160(%rbp), %rax	# h, tmp332
	movss	60(%rax), %xmm0	# h_30(D)->chip, D.8069
	unpcklps	%xmm0, %xmm0	# D.8069, D.8069
	cvtps2pd	%xmm0, %xmm0	# D.8069, D.8070
	movq	-152(%rbp), %rax	# fp, tmp333
	movl	$.LC21, %esi	#,
	movq	%rax, %rdi	# tmp333,
	movl	$1, %eax	#,
	call	fprintf	#
	.loc 1 333 0
	nop
.L61:
	.loc 1 335 0
	nop
.L20:
	.loc 1 336 0
	movq	-8(%rbp), %rax	# D.8071, tmp336
	xorq	%fs:40, %rax	#, tmp336
	je	.L66	#,
	call	__stack_chk_fail	#
.L66:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	PrintASCIIHistogram, .-PrintASCIIHistogram
	.section	.rodata
.LC25:
	.string	"%-6d %f\n"
.LC26:
	.string	"&\n"
	.text
	.globl	PrintXMGRHistogram
	.type	PrintXMGRHistogram, @function
PrintXMGRHistogram:
.LFB7:
	.loc 1 349 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# fp, fp
	movq	%rsi, -32(%rbp)	# h, h
	.loc 1 355 0
	movq	-32(%rbp), %rax	# h, tmp92
	movl	20(%rax), %eax	# h_3(D)->lowscore, tmp93
	movl	%eax, -12(%rbp)	# tmp93, sc
	jmp	.L68	#
.L70:
	.loc 1 356 0
	movq	-32(%rbp), %rax	# h, tmp94
	movq	(%rax), %rdx	# h_3(D)->histogram, D.8097
	movq	-32(%rbp), %rax	# h, tmp95
	movl	8(%rax), %eax	# h_3(D)->min, D.8096
	movl	-12(%rbp), %ecx	# sc, tmp96
	subl	%eax, %ecx	# D.8096, D.8096
	movl	%ecx, %eax	# D.8096, D.8096
	cltq
	salq	$2, %rax	#, D.8098
	addq	%rdx, %rax	# D.8097, D.8097
	movl	(%rax), %eax	# *_11, D.8096
	testl	%eax, %eax	# D.8096
	jle	.L69	#,
	.loc 1 358 0
	movq	-32(%rbp), %rax	# h, tmp97
	movq	(%rax), %rdx	# h_3(D)->histogram, D.8097
	movq	-32(%rbp), %rax	# h, tmp98
	movl	8(%rax), %eax	# h_3(D)->min, D.8096
	movl	-12(%rbp), %ecx	# sc, tmp99
	subl	%eax, %ecx	# D.8096, D.8096
	movl	%ecx, %eax	# D.8096, D.8096
	cltq
	salq	$2, %rax	#, D.8098
	addq	%rdx, %rax	# D.8097, D.8097
	movl	(%rax), %eax	# *_18, D.8096
	cvtsi2ss	%eax, %xmm0	# D.8096, D.8099
	movq	-32(%rbp), %rax	# h, tmp100
	movl	28(%rax), %eax	# h_3(D)->total, D.8096
	cvtsi2ss	%eax, %xmm1	# D.8096, D.8099
	divss	%xmm1, %xmm0	# D.8099, D.8099
	.loc 1 357 0
	unpcklps	%xmm0, %xmm0	# D.8099, D.8099
	cvtps2pd	%xmm0, %xmm0	# D.8099, D.8100
	movl	-12(%rbp), %edx	# sc, tmp101
	movq	-24(%rbp), %rax	# fp, tmp102
	movl	$.LC25, %esi	#,
	movq	%rax, %rdi	# tmp102,
	movl	$1, %eax	#,
	call	fprintf	#
.L69:
	.loc 1 355 0
	addl	$1, -12(%rbp)	#, sc
.L68:
	.loc 1 355 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# h, tmp103
	movl	16(%rax), %eax	# h_3(D)->highscore, D.8096
	cmpl	-12(%rbp), %eax	# sc, D.8096
	jge	.L70	#,
	.loc 1 359 0 is_stmt 1
	movq	-24(%rbp), %rax	# fp, tmp104
	movq	%rax, %rcx	# tmp104,
	movl	$2, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC26, %edi	#,
	call	fwrite	#
	.loc 1 363 0
	movq	-32(%rbp), %rax	# h, tmp105
	movl	40(%rax), %eax	# h_3(D)->fit_type, D.8096
	testl	%eax, %eax	# D.8096
	je	.L67	#,
	.loc 1 365 0
	movq	-32(%rbp), %rax	# h, tmp106
	movl	20(%rax), %eax	# h_3(D)->lowscore, tmp107
	movl	%eax, -12(%rbp)	# tmp107, sc
	jmp	.L72	#
.L73:
	.loc 1 368 0 discriminator 2
	movq	-32(%rbp), %rax	# h, tmp108
	movl	48(%rax), %edx	# h_3(D)->param, D.8099
	movq	-32(%rbp), %rax	# h, tmp109
	movl	44(%rax), %eax	# h_3(D)->param, D.8099
	cvtsi2ss	-12(%rbp), %xmm0	# sc, D.8099
	movss	.LC15(%rip), %xmm1	#, tmp110
	addss	%xmm1, %xmm0	# tmp110, D.8099
	movl	%edx, -40(%rbp)	# D.8099, %sfp
	movss	-40(%rbp), %xmm2	# %sfp,
	movl	%eax, -40(%rbp)	# D.8099, %sfp
	movss	-40(%rbp), %xmm1	# %sfp,
	call	ExtremeValueP	#
	movsd	.LC27(%rip), %xmm1	#, tmp111
	subsd	%xmm0, %xmm1	# D.8100, D.8100
	movsd	%xmm1, -40(%rbp)	# D.8100, %sfp
	.loc 1 369 0 discriminator 2
	movq	-32(%rbp), %rax	# h, tmp112
	movl	48(%rax), %edx	# h_3(D)->param, D.8099
	movq	-32(%rbp), %rax	# h, tmp113
	movl	44(%rax), %eax	# h_3(D)->param, D.8099
	cvtsi2ss	-12(%rbp), %xmm0	# sc, D.8099
	movl	%edx, -44(%rbp)	# D.8099, %sfp
	movss	-44(%rbp), %xmm2	# %sfp,
	movl	%eax, -44(%rbp)	# D.8099, %sfp
	movss	-44(%rbp), %xmm1	# %sfp,
	call	ExtremeValueP	#
	movsd	.LC27(%rip), %xmm1	#, tmp114
	movapd	%xmm1, %xmm3	# tmp114, D.8100
	subsd	%xmm0, %xmm3	# D.8100, D.8100
	movapd	%xmm3, %xmm0	# D.8100, D.8100
	.loc 1 367 0 discriminator 2
	movsd	-40(%rbp), %xmm1	# %sfp, tmp115
	subsd	%xmm0, %xmm1	# D.8100, tmp115
	movapd	%xmm1, %xmm0	# tmp115, tmp115
	movsd	%xmm0, -8(%rbp)	# tmp115, val
	.loc 1 370 0 discriminator 2
	movq	-8(%rbp), %rax	# val, tmp116
	movl	-12(%rbp), %edx	# sc, tmp117
	movq	-24(%rbp), %rcx	# fp, tmp118
	movq	%rax, -40(%rbp)	# tmp116, %sfp
	movsd	-40(%rbp), %xmm0	# %sfp,
	movl	$.LC25, %esi	#,
	movq	%rcx, %rdi	# tmp118,
	movl	$1, %eax	#,
	call	fprintf	#
	.loc 1 365 0 discriminator 2
	addl	$1, -12(%rbp)	#, sc
.L72:
	.loc 1 365 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# h, tmp119
	movl	16(%rax), %eax	# h_3(D)->highscore, D.8096
	cmpl	-12(%rbp), %eax	# sc, D.8096
	jge	.L73	#,
	.loc 1 372 0 is_stmt 1
	movq	-24(%rbp), %rax	# fp, tmp120
	movq	%rax, %rcx	# tmp120,
	movl	$2, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC26, %edi	#,
	call	fwrite	#
.L67:
	.loc 1 374 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	PrintXMGRHistogram, .-PrintXMGRHistogram
	.globl	PrintXMGRDistribution
	.type	PrintXMGRDistribution, @function
PrintXMGRDistribution:
.LFB8:
	.loc 1 385 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# fp, fp
	movq	%rsi, -32(%rbp)	# h, h
	.loc 1 394 0
	movl	$0, -12(%rbp)	#, cum
	movq	-32(%rbp), %rax	# h, tmp79
	movl	20(%rax), %eax	# h_5(D)->lowscore, tmp80
	movl	%eax, -16(%rbp)	# tmp80, sc
	jmp	.L75	#
.L76:
	.loc 1 396 0 discriminator 2
	movq	-32(%rbp), %rax	# h, tmp81
	movq	(%rax), %rdx	# h_5(D)->histogram, D.8105
	movq	-32(%rbp), %rax	# h, tmp82
	movl	8(%rax), %eax	# h_5(D)->min, D.8104
	movl	-16(%rbp), %ecx	# sc, tmp83
	subl	%eax, %ecx	# D.8104, D.8104
	movl	%ecx, %eax	# D.8104, D.8104
	cltq
	salq	$2, %rax	#, D.8106
	addq	%rdx, %rax	# D.8105, D.8105
	movl	(%rax), %eax	# *_13, D.8104
	addl	%eax, -12(%rbp)	# D.8104, cum
	.loc 1 397 0 discriminator 2
	cvtsi2ss	-12(%rbp), %xmm0	# cum, D.8107
	movq	-32(%rbp), %rax	# h, tmp84
	movl	28(%rax), %eax	# h_5(D)->total, D.8104
	cvtsi2ss	%eax, %xmm1	# D.8104, D.8107
	divss	%xmm1, %xmm0	# D.8107, D.8107
	unpcklps	%xmm0, %xmm0	# D.8107, D.8107
	cvtps2pd	%xmm0, %xmm0	# D.8107, D.8108
	movl	-16(%rbp), %eax	# sc, tmp85
	leal	1(%rax), %edx	#, D.8104
	movq	-24(%rbp), %rax	# fp, tmp86
	movl	$.LC25, %esi	#,
	movq	%rax, %rdi	# tmp86,
	movl	$1, %eax	#,
	call	fprintf	#
	.loc 1 394 0 discriminator 2
	addl	$1, -16(%rbp)	#, sc
.L75:
	.loc 1 394 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# h, tmp87
	movl	16(%rax), %eax	# h_5(D)->highscore, D.8104
	cmpl	-16(%rbp), %eax	# sc, D.8104
	jge	.L76	#,
	.loc 1 399 0 is_stmt 1
	movq	-24(%rbp), %rax	# fp, tmp88
	movq	%rax, %rcx	# tmp88,
	movl	$2, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC26, %edi	#,
	call	fwrite	#
	.loc 1 403 0
	movq	-32(%rbp), %rax	# h, tmp89
	movl	40(%rax), %eax	# h_5(D)->fit_type, D.8104
	testl	%eax, %eax	# D.8104
	je	.L74	#,
	.loc 1 405 0
	movq	-32(%rbp), %rax	# h, tmp90
	movl	20(%rax), %eax	# h_5(D)->lowscore, tmp91
	movl	%eax, -16(%rbp)	# tmp91, sc
	jmp	.L78	#
.L79:
	.loc 1 407 0 discriminator 2
	movq	-32(%rbp), %rax	# h, tmp92
	movl	48(%rax), %edx	# h_5(D)->param, D.8107
	movq	-32(%rbp), %rax	# h, tmp93
	movl	44(%rax), %eax	# h_5(D)->param, D.8107
	cvtsi2ss	-16(%rbp), %xmm0	# sc, D.8107
	movl	%edx, -40(%rbp)	# D.8107, %sfp
	movss	-40(%rbp), %xmm2	# %sfp,
	movl	%eax, -40(%rbp)	# D.8107, %sfp
	movss	-40(%rbp), %xmm1	# %sfp,
	call	ExtremeValueP	#
	movsd	.LC27(%rip), %xmm1	#, tmp95
	subsd	%xmm0, %xmm1	# D.8108, tmp94
	movapd	%xmm1, %xmm0	# tmp94, tmp94
	movsd	%xmm0, -8(%rbp)	# tmp94, val
	.loc 1 409 0 discriminator 2
	movq	-8(%rbp), %rax	# val, tmp96
	movl	-16(%rbp), %edx	# sc, tmp97
	movq	-24(%rbp), %rcx	# fp, tmp98
	movq	%rax, -40(%rbp)	# tmp96, %sfp
	movsd	-40(%rbp), %xmm0	# %sfp,
	movl	$.LC25, %esi	#,
	movq	%rcx, %rdi	# tmp98,
	movl	$1, %eax	#,
	call	fprintf	#
	.loc 1 405 0 discriminator 2
	addl	$1, -16(%rbp)	#, sc
.L78:
	.loc 1 405 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# h, tmp99
	movl	16(%rax), %eax	# h_5(D)->highscore, D.8104
	cmpl	-16(%rbp), %eax	# sc, D.8104
	jge	.L79	#,
	.loc 1 411 0 is_stmt 1
	movq	-24(%rbp), %rax	# fp, tmp100
	movq	%rax, %rcx	# tmp100,
	movl	$2, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC26, %edi	#,
	call	fwrite	#
.L74:
	.loc 1 413 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	PrintXMGRDistribution, .-PrintXMGRDistribution
	.globl	PrintXMGRRegressionLine
	.type	PrintXMGRRegressionLine, @function
PrintXMGRRegressionLine:
.LFB9:
	.loc 1 424 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# fp, fp
	movq	%rsi, -32(%rbp)	# h, h
	.loc 1 433 0
	movl	$0, -12(%rbp)	#, cum
	movq	-32(%rbp), %rax	# h, tmp84
	movl	20(%rax), %eax	# h_5(D)->lowscore, tmp85
	movl	%eax, -16(%rbp)	# tmp85, sc
	jmp	.L81	#
.L83:
	.loc 1 435 0
	movq	-32(%rbp), %rax	# h, tmp86
	movq	(%rax), %rdx	# h_5(D)->histogram, D.8110
	movq	-32(%rbp), %rax	# h, tmp87
	movl	8(%rax), %eax	# h_5(D)->min, D.8109
	movl	-16(%rbp), %ecx	# sc, tmp88
	subl	%eax, %ecx	# D.8109, D.8109
	movl	%ecx, %eax	# D.8109, D.8109
	cltq
	salq	$2, %rax	#, D.8111
	addq	%rdx, %rax	# D.8110, D.8110
	movl	(%rax), %eax	# *_13, D.8109
	addl	%eax, -12(%rbp)	# D.8109, cum
	.loc 1 436 0
	cvtsi2sd	-12(%rbp), %xmm0	# cum, D.8112
	movq	-32(%rbp), %rax	# h, tmp89
	movl	28(%rax), %eax	# h_5(D)->total, D.8109
	cvtsi2sd	%eax, %xmm1	# D.8109, D.8112
	divsd	%xmm1, %xmm0	# D.8112, D.8112
	call	log	#
	movsd	.LC28(%rip), %xmm1	#, tmp90
	xorpd	%xmm1, %xmm0	# tmp90, D.8112
	call	log	#
	movsd	%xmm0, -40(%rbp)	#, %sfp
	movq	-40(%rbp), %rax	# %sfp, tmp91
	movq	%rax, -8(%rbp)	# tmp91, val
	.loc 1 437 0
	movq	-32(%rbp), %rax	# h, tmp92
	movl	28(%rax), %eax	# h_5(D)->total, D.8109
	cmpl	-12(%rbp), %eax	# cum, D.8109
	jle	.L82	#,
	.loc 1 438 0
	movl	-16(%rbp), %eax	# sc, tmp93
	leal	1(%rax), %edx	#, D.8109
	movq	-8(%rbp), %rax	# val, tmp94
	movq	-24(%rbp), %rcx	# fp, tmp95
	movq	%rax, -40(%rbp)	# tmp94, %sfp
	movsd	-40(%rbp), %xmm0	# %sfp,
	movl	$.LC25, %esi	#,
	movq	%rcx, %rdi	# tmp95,
	movl	$1, %eax	#,
	call	fprintf	#
.L82:
	.loc 1 433 0
	addl	$1, -16(%rbp)	#, sc
.L81:
	.loc 1 433 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# h, tmp96
	movl	16(%rax), %eax	# h_5(D)->highscore, D.8109
	cmpl	-16(%rbp), %eax	# sc, D.8109
	jge	.L83	#,
	.loc 1 440 0 is_stmt 1
	movq	-24(%rbp), %rax	# fp, tmp97
	movq	%rax, %rcx	# tmp97,
	movl	$2, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC26, %edi	#,
	call	fwrite	#
	.loc 1 444 0
	movq	-32(%rbp), %rax	# h, tmp98
	movl	40(%rax), %eax	# h_5(D)->fit_type, D.8109
	testl	%eax, %eax	# D.8109
	je	.L80	#,
	.loc 1 446 0
	movq	-32(%rbp), %rax	# h, tmp99
	movl	20(%rax), %eax	# h_5(D)->lowscore, tmp100
	movl	%eax, -16(%rbp)	# tmp100, sc
	jmp	.L85	#
.L86:
	.loc 1 448 0 discriminator 2
	movq	-32(%rbp), %rax	# h, tmp101
	movl	48(%rax), %edx	# h_5(D)->param, D.8113
	movq	-32(%rbp), %rax	# h, tmp102
	movl	44(%rax), %eax	# h_5(D)->param, D.8113
	cvtsi2ss	-16(%rbp), %xmm0	# sc, D.8113
	movl	%edx, -40(%rbp)	# D.8113, %sfp
	movss	-40(%rbp), %xmm2	# %sfp,
	movl	%eax, -40(%rbp)	# D.8113, %sfp
	movss	-40(%rbp), %xmm1	# %sfp,
	call	ExtremeValueP	#
	movsd	.LC27(%rip), %xmm1	#, tmp103
	subsd	%xmm0, %xmm1	# D.8112, D.8112
	movapd	%xmm1, %xmm0	# D.8112, D.8112
	call	log	#
	movsd	.LC28(%rip), %xmm1	#, tmp104
	xorpd	%xmm1, %xmm0	# tmp104, D.8112
	call	log	#
	movsd	%xmm0, -40(%rbp)	#, %sfp
	movq	-40(%rbp), %rax	# %sfp, tmp105
	movq	%rax, -8(%rbp)	# tmp105, val
	.loc 1 450 0 discriminator 2
	movq	-8(%rbp), %rax	# val, tmp106
	movl	-16(%rbp), %edx	# sc, tmp107
	movq	-24(%rbp), %rcx	# fp, tmp108
	movq	%rax, -40(%rbp)	# tmp106, %sfp
	movsd	-40(%rbp), %xmm0	# %sfp,
	movl	$.LC25, %esi	#,
	movq	%rcx, %rdi	# tmp108,
	movl	$1, %eax	#,
	call	fprintf	#
	.loc 1 446 0 discriminator 2
	addl	$1, -16(%rbp)	#, sc
.L85:
	.loc 1 446 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# h, tmp109
	movl	16(%rax), %eax	# h_5(D)->highscore, D.8109
	cmpl	-16(%rbp), %eax	# sc, D.8109
	jge	.L86	#,
	.loc 1 452 0 is_stmt 1
	movq	-24(%rbp), %rax	# fp, tmp110
	movq	%rax, %rcx	# tmp110,
	movl	$2, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC26, %edi	#,
	call	fwrite	#
.L80:
	.loc 1 454 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	PrintXMGRRegressionLine, .-PrintXMGRRegressionLine
	.globl	EVDBasicFit
	.type	EVDBasicFit, @function
EVDBasicFit:
.LFB10:
	.loc 1 477 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$88, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -88(%rbp)	# h, h
	.loc 1 491 0
	movq	-88(%rbp), %rax	# h, tmp121
	movl	16(%rax), %edx	# h_5(D)->highscore, D.8114
	movq	-88(%rbp), %rax	# h, tmp122
	movl	20(%rax), %eax	# h_5(D)->lowscore, D.8114
	subl	%eax, %edx	# D.8114, D.8114
	movl	%edx, %eax	# D.8114, D.8114
	addl	$1, %eax	#, tmp123
	movl	%eax, -44(%rbp)	# tmp123, hsize
	.loc 1 492 0
	movl	-44(%rbp), %eax	# hsize, tmp124
	cltq
	salq	$2, %rax	#, D.8115
	movq	%rax, %rdx	# D.8115,
	movl	$492, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_malloc	#
	movq	%rax, -32(%rbp)	# tmp125, d
	.loc 1 493 0
	movl	-44(%rbp), %eax	# hsize, tmp126
	cltq
	salq	$2, %rax	#, D.8115
	movq	%rax, %rdx	# D.8115,
	movl	$493, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_malloc	#
	movq	%rax, -24(%rbp)	# tmp127, x
	.loc 1 494 0
	movl	$0, -48(%rbp)	#, idx
	jmp	.L88	#
.L89:
	.loc 1 495 0 discriminator 2
	movl	-48(%rbp), %eax	# idx, tmp128
	cltq
	leaq	0(,%rax,4), %rdx	#, D.8115
	movq	-32(%rbp), %rax	# d, tmp129
	leaq	(%rdx,%rax), %rcx	#, D.8116
	movl	-48(%rbp), %eax	# idx, tmp130
	cltq
	leaq	0(,%rax,4), %rdx	#, D.8115
	movq	-24(%rbp), %rax	# x, tmp131
	addq	%rax, %rdx	# tmp131, D.8116
	movl	.LC29(%rip), %eax	#, tmp132
	movl	%eax, (%rdx)	# tmp132, *_22
	movl	(%rdx), %eax	# *_22, D.8117
	movl	%eax, (%rcx)	# D.8117, *_19
	.loc 1 494 0 discriminator 2
	addl	$1, -48(%rbp)	#, idx
.L88:
	.loc 1 494 0 is_stmt 0 discriminator 1
	movl	-48(%rbp), %eax	# idx, tmp133
	cmpl	-44(%rbp), %eax	# hsize, tmp133
	jl	.L89	#,
	.loc 1 501 0 is_stmt 1
	movl	$0, -56(%rbp)	#, sum
	.loc 1 502 0
	movq	-88(%rbp), %rax	# h, tmp134
	movl	20(%rax), %eax	# h_5(D)->lowscore, tmp135
	movl	%eax, -52(%rbp)	# tmp135, sc
	jmp	.L90	#
.L91:
	.loc 1 504 0 discriminator 2
	movq	-88(%rbp), %rax	# h, tmp136
	movq	(%rax), %rdx	# h_5(D)->histogram, D.8118
	movq	-88(%rbp), %rax	# h, tmp137
	movl	8(%rax), %eax	# h_5(D)->min, D.8114
	movl	-52(%rbp), %ecx	# sc, tmp138
	subl	%eax, %ecx	# D.8114, D.8114
	movl	%ecx, %eax	# D.8114, D.8114
	cltq
	salq	$2, %rax	#, D.8115
	addq	%rdx, %rax	# D.8118, D.8118
	movl	(%rax), %eax	# *_33, D.8114
	addl	%eax, -56(%rbp)	# D.8114, sum
	.loc 1 505 0 discriminator 2
	movq	-88(%rbp), %rax	# h, tmp139
	movl	20(%rax), %eax	# h_5(D)->lowscore, D.8114
	movl	-52(%rbp), %edx	# sc, tmp140
	subl	%eax, %edx	# D.8114, D.8114
	movl	%edx, %eax	# D.8114, D.8114
	cltq
	leaq	0(,%rax,4), %rdx	#, D.8115
	movq	-32(%rbp), %rax	# d, tmp141
	addq	%rax, %rdx	# tmp141, D.8116
	cvtsi2ss	-56(%rbp), %xmm0	# sum, D.8117
	movq	-88(%rbp), %rax	# h, tmp142
	movl	28(%rax), %eax	# h_5(D)->total, D.8114
	cvtsi2ss	%eax, %xmm1	# D.8114, D.8117
	divss	%xmm1, %xmm0	# D.8117, D.8117
	movss	%xmm0, (%rdx)	# D.8117, *_40
	.loc 1 506 0 discriminator 2
	movq	-88(%rbp), %rax	# h, tmp143
	movl	20(%rax), %eax	# h_5(D)->lowscore, D.8114
	movl	-52(%rbp), %edx	# sc, tmp144
	subl	%eax, %edx	# D.8114, D.8114
	movl	%edx, %eax	# D.8114, D.8114
	cltq
	leaq	0(,%rax,4), %rdx	#, D.8115
	movq	-24(%rbp), %rax	# x, tmp145
	addq	%rdx, %rax	# D.8115, D.8116
	movl	-52(%rbp), %edx	# sc, tmp146
	addl	$1, %edx	#, D.8114
	cvtsi2ss	%edx, %xmm0	# D.8114, D.8117
	movss	%xmm0, (%rax)	# D.8117, *_49
	.loc 1 502 0 discriminator 2
	addl	$1, -52(%rbp)	#, sc
.L90:
	.loc 1 502 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# h, tmp147
	movl	16(%rax), %eax	# h_5(D)->highscore, D.8114
	cmpl	-52(%rbp), %eax	# sc, D.8114
	jge	.L91	#,
	.loc 1 514 0 is_stmt 1
	movq	-88(%rbp), %rax	# h, tmp148
	movl	20(%rax), %eax	# h_5(D)->lowscore, tmp149
	movl	%eax, -52(%rbp)	# tmp149, sc
	jmp	.L92	#
.L93:
	.loc 1 515 0 discriminator 2
	movq	-88(%rbp), %rax	# h, tmp150
	movl	20(%rax), %eax	# h_5(D)->lowscore, D.8114
	movl	-52(%rbp), %edx	# sc, tmp151
	subl	%eax, %edx	# D.8114, D.8114
	movl	%edx, %eax	# D.8114, D.8114
	cltq
	leaq	0(,%rax,4), %rdx	#, D.8115
	movq	-32(%rbp), %rax	# d, tmp152
	leaq	(%rdx,%rax), %rbx	#, D.8116
	movq	-88(%rbp), %rax	# h, tmp153
	movl	20(%rax), %eax	# h_5(D)->lowscore, D.8114
	movl	-52(%rbp), %edx	# sc, tmp154
	subl	%eax, %edx	# D.8114, D.8114
	movl	%edx, %eax	# D.8114, D.8114
	cltq
	leaq	0(,%rax,4), %rdx	#, D.8115
	movq	-32(%rbp), %rax	# d, tmp155
	addq	%rdx, %rax	# D.8115, D.8116
	movss	(%rax), %xmm0	# *_64, D.8117
	unpcklps	%xmm0, %xmm0	# D.8117, D.8117
	cvtps2pd	%xmm0, %xmm0	# D.8117, D.8119
	call	log	#
	movsd	.LC28(%rip), %xmm1	#, tmp156
	xorpd	%xmm1, %xmm0	# tmp156, D.8119
	call	log	#
	unpcklpd	%xmm0, %xmm0	# D.8119
	cvtpd2ps	%xmm0, %xmm0	# D.8119, D.8117
	movss	%xmm0, (%rbx)	# D.8117, *_59
	.loc 1 514 0 discriminator 2
	addl	$1, -52(%rbp)	#, sc
.L92:
	.loc 1 514 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# h, tmp157
	movl	16(%rax), %eax	# h_5(D)->highscore, D.8114
	cmpl	-52(%rbp), %eax	# sc, D.8114
	jg	.L93	#,
	.loc 1 518 0 is_stmt 1
	movl	-44(%rbp), %eax	# hsize, tmp158
	leal	-1(%rax), %edi	#, D.8114
	leaq	-60(%rbp), %r8	#, tmp159
	leaq	-68(%rbp), %rcx	#, tmp160
	leaq	-64(%rbp), %rdx	#, tmp161
	movq	-32(%rbp), %rsi	# d, tmp162
	movq	-24(%rbp), %rax	# x, tmp163
	movq	%r8, %r9	# tmp159,
	movq	%rcx, %r8	# tmp160,
	movq	%rdx, %rcx	# tmp161,
	movl	%edi, %edx	# D.8114,
	movq	%rax, %rdi	# tmp163,
	call	Linefit	#
	.loc 1 520 0
	movss	-68(%rbp), %xmm1	# slope, slope.3
	movss	.LC30(%rip), %xmm0	#, tmp165
	xorps	%xmm1, %xmm0	# slope.3, tmp164
	movss	%xmm0, -40(%rbp)	# tmp164, lambda
	.loc 1 521 0
	movss	-64(%rbp), %xmm0	# intercept, intercept.4
	divss	-40(%rbp), %xmm0	# lambda, tmp166
	movss	%xmm0, -36(%rbp)	# tmp166, mu
	.loc 1 526 0
	movq	-88(%rbp), %rax	# h, tmp167
	movl	16(%rax), %eax	# h_5(D)->highscore, D.8114
	cvtsi2ss	%eax, %xmm1	# D.8114, D.8117
	movq	-88(%rbp), %rax	# h, tmp168
	movl	20(%rax), %eax	# h_5(D)->lowscore, D.8114
	cvtsi2ss	%eax, %xmm0	# D.8114, D.8117
	movl	-40(%rbp), %edx	# lambda, tmp169
	movl	-36(%rbp), %eax	# mu, tmp170
	movq	-88(%rbp), %rcx	# h, tmp171
	movl	$2, %esi	#,
	movaps	%xmm1, %xmm3	# D.8117,
	movaps	%xmm0, %xmm2	# D.8117,
	movl	%edx, -92(%rbp)	# tmp169, %sfp
	movss	-92(%rbp), %xmm1	# %sfp,
	movl	%eax, -92(%rbp)	# tmp170, %sfp
	movss	-92(%rbp), %xmm0	# %sfp,
	movq	%rcx, %rdi	# tmp171,
	call	ExtremeValueSetHistogram	#
	.loc 1 528 0
	movq	-24(%rbp), %rax	# x, tmp172
	movq	%rax, %rdi	# tmp172,
	call	free	#
	.loc 1 529 0
	movq	-32(%rbp), %rax	# d, tmp173
	movq	%rax, %rdi	# tmp173,
	call	free	#
	.loc 1 530 0
	nop
	.loc 1 531 0
	addq	$88, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	EVDBasicFit, .-EVDBasicFit
	.globl	ExtremeValueFitHistogram
	.type	ExtremeValueFitHistogram, @function
ExtremeValueFitHistogram:
.LFB11:
	.loc 1 556 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$112, %rsp	#,
	movq	%rdi, -88(%rbp)	# h, h
	movl	%esi, -92(%rbp)	# censor, censor
	movss	%xmm0, -96(%rbp)	# high_hint, high_hint
	.loc 1 573 0
	movq	-88(%rbp), %rax	# h, tmp147
	movl	20(%rax), %eax	# h_17(D)->lowscore, tmp148
	movl	%eax, -48(%rbp)	# tmp148, lowbound
	.loc 1 574 0
	cmpl	$0, -92(%rbp)	#, censor
	je	.L96	#,
.LBB2:
	.loc 1 576 0
	movl	$-1, -36(%rbp)	#, max
	.loc 1 577 0
	movq	-88(%rbp), %rax	# h, tmp149
	movl	20(%rax), %eax	# h_17(D)->lowscore, tmp150
	movl	%eax, -52(%rbp)	# tmp150, sc
	jmp	.L97	#
.L99:
	.loc 1 578 0
	movq	-88(%rbp), %rax	# h, tmp151
	movq	(%rax), %rdx	# h_17(D)->histogram, D.8121
	movq	-88(%rbp), %rax	# h, tmp152
	movl	8(%rax), %eax	# h_17(D)->min, D.8120
	movl	-52(%rbp), %ecx	# sc, tmp153
	subl	%eax, %ecx	# D.8120, D.8120
	movl	%ecx, %eax	# D.8120, D.8120
	cltq
	salq	$2, %rax	#, D.8122
	addq	%rdx, %rax	# D.8121, D.8121
	movl	(%rax), %eax	# *_28, D.8120
	cmpl	-36(%rbp), %eax	# max, D.8120
	jle	.L98	#,
	.loc 1 580 0
	movq	-88(%rbp), %rax	# h, tmp154
	movq	(%rax), %rdx	# h_17(D)->histogram, D.8121
	movq	-88(%rbp), %rax	# h, tmp155
	movl	8(%rax), %eax	# h_17(D)->min, D.8120
	movl	-52(%rbp), %ecx	# sc, tmp156
	subl	%eax, %ecx	# D.8120, D.8120
	movl	%ecx, %eax	# D.8120, D.8120
	cltq
	salq	$2, %rax	#, D.8122
	addq	%rdx, %rax	# D.8121, D.8121
	movl	(%rax), %eax	# *_35, tmp157
	movl	%eax, -36(%rbp)	# tmp157, max
	.loc 1 581 0
	movl	-52(%rbp), %eax	# sc, tmp158
	movl	%eax, -48(%rbp)	# tmp158, lowbound
.L98:
	.loc 1 577 0
	addl	$1, -52(%rbp)	#, sc
.L97:
	.loc 1 577 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# h, tmp159
	movl	16(%rax), %eax	# h_17(D)->highscore, D.8120
	cmpl	-52(%rbp), %eax	# sc, D.8120
	jge	.L99	#,
.L96:
.LBE2:
	.loc 1 587 0 is_stmt 1
	movq	-88(%rbp), %rax	# h, tmp160
	movl	16(%rax), %eax	# h_17(D)->highscore, D.8120
	cvtsi2ss	%eax, %xmm0	# D.8120, D.8123
	ucomiss	-96(%rbp), %xmm0	# high_hint, D.8123
	jbe	.L121	#,
	.loc 1 587 0 is_stmt 0 discriminator 1
	movss	-96(%rbp), %xmm0	# high_hint, tmp161
	cvttss2si	%xmm0, %eax	# tmp161, iftmp.5
	jmp	.L102	#
.L121:
	.loc 1 587 0 discriminator 2
	movq	-88(%rbp), %rax	# h, tmp162
	movl	16(%rax), %eax	# h_17(D)->highscore, D.8120
	cvtsi2ss	%eax, %xmm0	# D.8120, D.8123
	cvttss2si	%xmm0, %eax	# D.8123, iftmp.5
.L102:
	.loc 1 587 0 discriminator 3
	movl	%eax, -44(%rbp)	# iftmp.5, highbound
	.loc 1 591 0 is_stmt 1 discriminator 3
	movl	$0, -40(%rbp)	#, iteration
	jmp	.L103	#
.L115:
	.loc 1 595 0
	movq	$0, -24(%rbp)	#, x
	.loc 1 596 0
	movq	$0, -16(%rbp)	#, y
	.loc 1 597 0
	movl	-48(%rbp), %eax	# lowbound, tmp163
	movl	-44(%rbp), %edx	# highbound, tmp164
	subl	%eax, %edx	# tmp163, D.8120
	movl	%edx, %eax	# D.8120, D.8120
	addl	$1, %eax	#, tmp165
	movl	%eax, -32(%rbp)	# tmp165, hsize
	.loc 1 598 0
	cmpl	$4, -32(%rbp)	#, hsize
	jg	.L104	#,
	.loc 1 598 0 is_stmt 0 discriminator 1
	jmp	.L105	#
.L104:
	.loc 1 600 0 is_stmt 1
	movl	-32(%rbp), %eax	# hsize, tmp166
	cltq
	salq	$2, %rax	#, D.8122
	movq	%rax, %rdx	# D.8122,
	movl	$600, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_malloc	#
	movq	%rax, -24(%rbp)	# tmp167, x
	.loc 1 601 0
	movl	-32(%rbp), %eax	# hsize, tmp168
	cltq
	salq	$2, %rax	#, D.8122
	movq	%rax, %rdx	# D.8122,
	movl	$601, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_malloc	#
	movq	%rax, -16(%rbp)	# tmp169, y
	.loc 1 602 0
	movl	$0, -60(%rbp)	#, n
	.loc 1 603 0
	movl	-48(%rbp), %eax	# lowbound, tmp170
	movl	%eax, -52(%rbp)	# tmp170, sc
	jmp	.L106	#
.L107:
	.loc 1 605 0 discriminator 2
	movl	-48(%rbp), %eax	# lowbound, tmp171
	movl	-52(%rbp), %edx	# sc, tmp172
	subl	%eax, %edx	# tmp171, D.8120
	movl	%edx, %eax	# D.8120, D.8120
	cltq
	leaq	0(,%rax,4), %rdx	#, D.8122
	movq	-24(%rbp), %rax	# x, tmp173
	addq	%rdx, %rax	# D.8122, D.8124
	cvtsi2ss	-52(%rbp), %xmm0	# sc, D.8123
	movss	.LC31(%rip), %xmm1	#, tmp174
	addss	%xmm1, %xmm0	# tmp174, D.8123
	movss	%xmm0, (%rax)	# D.8123, *_64
	.loc 1 606 0 discriminator 2
	movl	-48(%rbp), %eax	# lowbound, tmp175
	movl	-52(%rbp), %edx	# sc, tmp176
	subl	%eax, %edx	# tmp175, D.8120
	movl	%edx, %eax	# D.8120, D.8120
	cltq
	leaq	0(,%rax,4), %rdx	#, D.8122
	movq	-16(%rbp), %rax	# y, tmp177
	addq	%rax, %rdx	# tmp177, D.8121
	movq	-88(%rbp), %rax	# h, tmp178
	movq	(%rax), %rcx	# h_17(D)->histogram, D.8121
	movq	-88(%rbp), %rax	# h, tmp179
	movl	8(%rax), %eax	# h_17(D)->min, D.8120
	movl	-52(%rbp), %esi	# sc, tmp180
	subl	%eax, %esi	# D.8120, D.8120
	movl	%esi, %eax	# D.8120, D.8120
	cltq
	salq	$2, %rax	#, D.8122
	addq	%rcx, %rax	# D.8121, D.8121
	movl	(%rax), %eax	# *_76, D.8120
	movl	%eax, (%rdx)	# D.8120, *_70
	.loc 1 607 0 discriminator 2
	movq	-88(%rbp), %rax	# h, tmp181
	movq	(%rax), %rdx	# h_17(D)->histogram, D.8121
	movq	-88(%rbp), %rax	# h, tmp182
	movl	8(%rax), %eax	# h_17(D)->min, D.8120
	movl	-52(%rbp), %ecx	# sc, tmp183
	subl	%eax, %ecx	# D.8120, D.8120
	movl	%ecx, %eax	# D.8120, D.8120
	cltq
	salq	$2, %rax	#, D.8122
	addq	%rdx, %rax	# D.8121, D.8121
	movl	(%rax), %eax	# *_83, D.8120
	addl	%eax, -60(%rbp)	# D.8120, n
	.loc 1 603 0 discriminator 2
	addl	$1, -52(%rbp)	#, sc
.L106:
	.loc 1 603 0 is_stmt 0 discriminator 1
	movl	-52(%rbp), %eax	# sc, tmp184
	cmpl	-44(%rbp), %eax	# highbound, tmp184
	jle	.L107	#,
	.loc 1 610 0 is_stmt 1
	cmpl	$99, -60(%rbp)	#, n
	jg	.L108	#,
	.loc 1 610 0 is_stmt 0 discriminator 1
	jmp	.L105	#
.L108:
	.loc 1 618 0 is_stmt 1
	cmpl	$0, -92(%rbp)	#, censor
	je	.L109	#,
	.loc 1 620 0
	cmpl	$0, -40(%rbp)	#, iteration
	jne	.L110	#,
	.loc 1 621 0
	cvtsi2ss	-60(%rbp), %xmm0	# n, D.8123
	unpcklps	%xmm0, %xmm0	# D.8123, D.8123
	cvtps2pd	%xmm0, %xmm0	# D.8123, D.8125
	movsd	.LC32(%rip), %xmm1	#, tmp185
	mulsd	%xmm1, %xmm0	# tmp185, D.8125
	cvttsd2si	%xmm0, %edx	# D.8125, D.8120
	movq	-88(%rbp), %rax	# h, tmp186
	movl	28(%rax), %eax	# h_17(D)->total, D.8120
	subl	-60(%rbp), %eax	# n, D.8120
	cmpl	%eax, %edx	# D.8120, D.8120
	cmovle	%edx, %eax	# D.8120,, tmp187
	movl	%eax, -56(%rbp)	# tmp187, z
	jmp	.L109	#
.L110:
.LBB3:
	.loc 1 625 0
	movl	-68(%rbp), %edx	# lambda, lambda.6
	movl	-64(%rbp), %eax	# mu, mu.7
	cvtsi2ss	-48(%rbp), %xmm0	# lowbound, D.8123
	movl	%edx, -104(%rbp)	# lambda.6, %sfp
	movss	-104(%rbp), %xmm2	# %sfp,
	movl	%eax, -104(%rbp)	# mu.7, %sfp
	movss	-104(%rbp), %xmm1	# %sfp,
	call	EVDDistribution	#
	movsd	%xmm0, -104(%rbp)	#, %sfp
	movq	-104(%rbp), %rax	# %sfp, tmp188
	movq	%rax, -8(%rbp)	# tmp188, psx
	.loc 1 626 0
	cvtsi2sd	-60(%rbp), %xmm0	# n, D.8125
	mulsd	-8(%rbp), %xmm0	# psx, D.8125
	movsd	.LC27(%rip), %xmm1	#, tmp189
	subsd	-8(%rbp), %xmm1	# psx, D.8125
	divsd	%xmm1, %xmm0	# D.8125, D.8125
	cvttsd2si	%xmm0, %edx	# D.8125, D.8120
	movq	-88(%rbp), %rax	# h, tmp190
	movl	28(%rax), %eax	# h_17(D)->total, D.8120
	subl	-60(%rbp), %eax	# n, D.8120
	cmpl	%eax, %edx	# D.8120, D.8120
	cmovle	%edx, %eax	# D.8120,, tmp191
	movl	%eax, -56(%rbp)	# tmp191, z
.L109:
.LBE3:
	.loc 1 632 0
	cmpl	$0, -92(%rbp)	#, censor
	je	.L111	#,
	.loc 1 633 0
	cvtsi2ss	-48(%rbp), %xmm0	# lowbound, D.8123
	leaq	-68(%rbp), %r8	#, tmp192
	leaq	-64(%rbp), %rdi	#, tmp193
	movl	-56(%rbp), %ecx	# z, tmp194
	movl	-32(%rbp), %edx	# hsize, tmp195
	movq	-16(%rbp), %rsi	# y, tmp196
	movq	-24(%rbp), %rax	# x, tmp197
	movq	%r8, %r9	# tmp192,
	movq	%rdi, %r8	# tmp193,
	movq	%rax, %rdi	# tmp197,
	call	EVDCensoredFit	#
	testl	%eax, %eax	# D.8120
	jne	.L112	#,
	.loc 1 634 0
	jmp	.L105	#
.L111:
	.loc 1 636 0
	leaq	-68(%rbp), %rdi	#, tmp198
	leaq	-64(%rbp), %rcx	#, tmp199
	movl	-32(%rbp), %edx	# hsize, tmp200
	movq	-16(%rbp), %rsi	# y, tmp201
	movq	-24(%rbp), %rax	# x, tmp202
	movq	%rdi, %r8	# tmp198,
	movq	%rax, %rdi	# tmp202,
	call	EVDMaxLikelyFit	#
	testl	%eax, %eax	# D.8120
	jne	.L112	#,
	.loc 1 637 0
	jmp	.L105	#
.L112:
	.loc 1 643 0
	movss	-64(%rbp), %xmm0	# mu, mu.8
	unpcklps	%xmm0, %xmm0	# mu.8, mu.8
	cvtps2pd	%xmm0, %xmm4	# mu.8, D.8125
	movsd	%xmm4, -104(%rbp)	# D.8125, %sfp
	movl	-56(%rbp), %eax	# z, tmp203
	movl	-60(%rbp), %edx	# n, tmp204
	addl	%edx, %eax	# tmp204, D.8120
	subl	$1, %eax	#, D.8120
	cvtsi2sd	%eax, %xmm0	# D.8120, D.8125
	movl	-56(%rbp), %eax	# z, tmp205
	movl	-60(%rbp), %edx	# n, tmp206
	addl	%edx, %eax	# tmp206, D.8120
	cvtsi2sd	%eax, %xmm1	# D.8120, D.8125
	divsd	%xmm1, %xmm0	# D.8125, D.8125
	call	log	#
	movsd	.LC28(%rip), %xmm1	#, tmp207
	xorpd	%xmm1, %xmm0	# tmp207, D.8125
	call	log	#
	movss	-68(%rbp), %xmm1	# lambda, lambda.9
	unpcklps	%xmm1, %xmm1	# lambda.9, lambda.9
	cvtps2pd	%xmm1, %xmm1	# lambda.9, D.8125
	divsd	%xmm1, %xmm0	# D.8125, D.8125
	movsd	-104(%rbp), %xmm4	# %sfp, D.8125
	subsd	%xmm0, %xmm4	# D.8125, D.8125
	movapd	%xmm4, %xmm0	# D.8125, D.8125
	.loc 1 642 0
	cvttsd2si	%xmm0, %eax	# D.8125, tmp208
	movl	%eax, -28(%rbp)	# tmp208, new_highbound
	.loc 1 645 0
	movq	-24(%rbp), %rax	# x, tmp209
	movq	%rax, %rdi	# tmp209,
	call	free	#
	.loc 1 646 0
	movq	-16(%rbp), %rax	# y, tmp210
	movq	%rax, %rdi	# tmp210,
	call	free	#
	.loc 1 647 0
	movl	-28(%rbp), %eax	# new_highbound, tmp211
	cmpl	-44(%rbp), %eax	# highbound, tmp211
	jl	.L113	#,
	.loc 1 647 0 is_stmt 0 discriminator 1
	jmp	.L114	#
.L113:
	.loc 1 648 0 is_stmt 1
	movl	-28(%rbp), %eax	# new_highbound, tmp212
	movl	%eax, -44(%rbp)	# tmp212, highbound
	.loc 1 591 0
	addl	$1, -40(%rbp)	#, iteration
.L103:
	.loc 1 591 0 is_stmt 0 discriminator 1
	cmpl	$99, -40(%rbp)	#, iteration
	jle	.L115	#,
.L114:
	.loc 1 656 0 is_stmt 1
	cvtsi2ss	-44(%rbp), %xmm1	# highbound, D.8123
	cvtsi2ss	-48(%rbp), %xmm0	# lowbound, D.8123
	movl	-68(%rbp), %edx	# lambda, lambda.10
	movl	-64(%rbp), %eax	# mu, mu.11
	movq	-88(%rbp), %rcx	# h, tmp213
	movl	$1, %esi	#,
	movaps	%xmm1, %xmm3	# D.8123,
	movaps	%xmm0, %xmm2	# D.8123,
	movl	%edx, -104(%rbp)	# lambda.10, %sfp
	movss	-104(%rbp), %xmm1	# %sfp,
	movl	%eax, -104(%rbp)	# mu.11, %sfp
	movss	-104(%rbp), %xmm0	# %sfp,
	movq	%rcx, %rdi	# tmp213,
	call	ExtremeValueSetHistogram	#
	.loc 1 657 0
	movl	$1, %eax	#, D.8120
	jmp	.L119	#
.L105:
	.loc 1 660 0
	movq	-88(%rbp), %rax	# h, tmp214
	movq	%rax, %rdi	# tmp214,
	call	UnfitHistogram	#
	.loc 1 661 0
	cmpq	$0, -24(%rbp)	#, x
	je	.L117	#,
	.loc 1 661 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# x, tmp215
	movq	%rax, %rdi	# tmp215,
	call	free	#
.L117:
	.loc 1 662 0 is_stmt 1
	cmpq	$0, -16(%rbp)	#, y
	je	.L118	#,
	.loc 1 662 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# y, tmp216
	movq	%rax, %rdi	# tmp216,
	call	free	#
.L118:
	.loc 1 663 0 is_stmt 1
	movl	$0, %eax	#, D.8120
.L119:
	.loc 1 664 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	ExtremeValueFitHistogram, .-ExtremeValueFitHistogram
	.globl	ExtremeValueSetHistogram
	.type	ExtremeValueSetHistogram, @function
ExtremeValueSetHistogram:
.LFB12:
	.loc 1 684 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$88, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)	# h, h
	movss	%xmm0, -60(%rbp)	# mu, mu
	movss	%xmm1, -64(%rbp)	# lambda, lambda
	movss	%xmm2, -68(%rbp)	# lowbound, lowbound
	movss	%xmm3, -72(%rbp)	# highbound, highbound
	movl	%esi, -76(%rbp)	# ndegrees, ndegrees
	.loc 1 690 0
	movq	-56(%rbp), %rax	# h, tmp140
	movq	%rax, %rdi	# tmp140,
	call	UnfitHistogram	#
	.loc 1 691 0
	movq	-56(%rbp), %rax	# h, tmp141
	movl	$1, 40(%rax)	#, h_6(D)->fit_type
	.loc 1 692 0
	movq	-56(%rbp), %rdx	# h, tmp142
	movl	-64(%rbp), %eax	# lambda, tmp143
	movl	%eax, 48(%rdx)	# tmp143, h_6(D)->param
	.loc 1 693 0
	movq	-56(%rbp), %rdx	# h, tmp144
	movl	-60(%rbp), %eax	# mu, tmp145
	movl	%eax, 44(%rdx)	# tmp145, h_6(D)->param
	.loc 1 695 0
	movq	-56(%rbp), %rax	# h, tmp146
	movl	12(%rax), %edx	# h_6(D)->max, D.8126
	movq	-56(%rbp), %rax	# h, tmp147
	movl	8(%rax), %eax	# h_6(D)->min, D.8126
	subl	%eax, %edx	# D.8126, D.8126
	movl	%edx, %eax	# D.8126, D.8126
	addl	$1, %eax	#, tmp148
	movl	%eax, -24(%rbp)	# tmp148, hsize
	.loc 1 696 0
	movl	-24(%rbp), %eax	# hsize, tmp149
	cltq
	salq	$2, %rax	#, D.8127
	movq	%rax, %rdx	# D.8127,
	movl	$696, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_malloc	#
	movq	-56(%rbp), %rdx	# h, tmp150
	movq	%rax, 32(%rdx)	# D.8128, h_6(D)->expect
	.loc 1 697 0
	movl	$0, -32(%rbp)	#, idx
	jmp	.L123	#
.L124:
	.loc 1 698 0 discriminator 2
	movq	-56(%rbp), %rax	# h, tmp151
	movq	32(%rax), %rax	# h_6(D)->expect, D.8129
	movl	-32(%rbp), %edx	# idx, tmp152
	movslq	%edx, %rdx	# tmp152, D.8127
	salq	$2, %rdx	#, D.8127
	addq	%rax, %rdx	# D.8129, D.8129
	movl	.LC29(%rip), %eax	#, tmp153
	movl	%eax, (%rdx)	# tmp153, *_20
	.loc 1 697 0 discriminator 2
	addl	$1, -32(%rbp)	#, idx
.L123:
	.loc 1 697 0 is_stmt 0 discriminator 1
	movl	-32(%rbp), %eax	# idx, tmp154
	cmpl	-24(%rbp), %eax	# hsize, tmp154
	jl	.L124	#,
	.loc 1 702 0 is_stmt 1
	movq	-56(%rbp), %rax	# h, tmp155
	movl	8(%rax), %eax	# h_6(D)->min, tmp156
	movl	%eax, -36(%rbp)	# tmp156, sc
	jmp	.L125	#
.L126:
	.loc 1 703 0 discriminator 2
	movq	-56(%rbp), %rax	# h, tmp157
	movq	32(%rax), %rdx	# h_6(D)->expect, D.8129
	movq	-56(%rbp), %rax	# h, tmp158
	movl	8(%rax), %eax	# h_6(D)->min, D.8126
	movl	-36(%rbp), %ecx	# sc, tmp159
	subl	%eax, %ecx	# D.8126, D.8126
	movl	%ecx, %eax	# D.8126, D.8126
	cltq
	salq	$2, %rax	#, D.8127
	leaq	(%rdx,%rax), %rbx	#, D.8129
	.loc 1 704 0 discriminator 2
	movq	-56(%rbp), %rax	# h, tmp160
	movl	28(%rax), %ecx	# h_6(D)->total, D.8126
	movq	-56(%rbp), %rax	# h, tmp161
	movl	48(%rax), %edx	# h_6(D)->param, D.8130
	movq	-56(%rbp), %rax	# h, tmp162
	movl	44(%rax), %eax	# h_6(D)->param, D.8130
	cvtsi2ss	-36(%rbp), %xmm0	# sc, D.8130
	movl	%ecx, %edi	# D.8126,
	movl	%edx, -88(%rbp)	# D.8130, %sfp
	movss	-88(%rbp), %xmm2	# %sfp,
	movl	%eax, -88(%rbp)	# D.8130, %sfp
	movss	-88(%rbp), %xmm1	# %sfp,
	call	ExtremeValueE	#
	movsd	%xmm0, -88(%rbp)	#, %sfp
	.loc 1 706 0 discriminator 2
	movq	-56(%rbp), %rax	# h, tmp163
	movl	28(%rax), %ecx	# h_6(D)->total, D.8126
	movq	-56(%rbp), %rax	# h, tmp164
	movl	48(%rax), %edx	# h_6(D)->param, D.8130
	movq	-56(%rbp), %rax	# h, tmp165
	movl	44(%rax), %eax	# h_6(D)->param, D.8130
	movl	-36(%rbp), %esi	# sc, tmp166
	addl	$1, %esi	#, D.8126
	cvtsi2ss	%esi, %xmm0	# D.8126, D.8130
	movl	%ecx, %edi	# D.8126,
	movl	%edx, -80(%rbp)	# D.8130, %sfp
	movss	-80(%rbp), %xmm2	# %sfp,
	movl	%eax, -80(%rbp)	# D.8130, %sfp
	movss	-80(%rbp), %xmm1	# %sfp,
	call	ExtremeValueE	#
	.loc 1 705 0 discriminator 2
	movsd	-88(%rbp), %xmm4	# %sfp, D.8131
	subsd	%xmm0, %xmm4	# D.8131, D.8131
	movapd	%xmm4, %xmm0	# D.8131, D.8131
	.loc 1 703 0 discriminator 2
	unpcklpd	%xmm0, %xmm0	# D.8131
	cvtpd2ps	%xmm0, %xmm0	# D.8131, D.8130
	movss	%xmm0, (%rbx)	# D.8130, *_29
	.loc 1 702 0 discriminator 2
	addl	$1, -36(%rbp)	#, sc
.L125:
	.loc 1 702 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# h, tmp167
	movl	12(%rax), %eax	# h_6(D)->max, D.8126
	cmpl	-36(%rbp), %eax	# sc, D.8126
	jge	.L126	#,
	.loc 1 711 0 is_stmt 1
	movq	-56(%rbp), %rdx	# h, tmp168
	movl	.LC29(%rip), %eax	#, tmp169
	movl	%eax, 56(%rdx)	# tmp169, h_6(D)->chisq
	.loc 1 712 0
	movl	$0, -28(%rbp)	#, nbins
	.loc 1 713 0
	movss	-68(%rbp), %xmm0	# lowbound, tmp170
	cvttss2si	%xmm0, %eax	# tmp170, tmp171
	movl	%eax, -36(%rbp)	# tmp171, sc
	jmp	.L127	#
.L130:
	.loc 1 714 0
	movq	-56(%rbp), %rax	# h, tmp172
	movq	32(%rax), %rdx	# h_6(D)->expect, D.8129
	movq	-56(%rbp), %rax	# h, tmp173
	movl	8(%rax), %eax	# h_6(D)->min, D.8126
	movl	-36(%rbp), %ecx	# sc, tmp174
	subl	%eax, %ecx	# D.8126, D.8126
	movl	%ecx, %eax	# D.8126, D.8126
	cltq
	salq	$2, %rax	#, D.8127
	addq	%rdx, %rax	# D.8129, D.8129
	movss	(%rax), %xmm0	# *_54, D.8130
	ucomiss	.LC33(%rip), %xmm0	#, D.8130
	jb	.L128	#,
	.loc 1 714 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# h, tmp175
	movq	(%rax), %rdx	# h_6(D)->histogram, D.8132
	movq	-56(%rbp), %rax	# h, tmp176
	movl	8(%rax), %eax	# h_6(D)->min, D.8126
	movl	-36(%rbp), %ecx	# sc, tmp177
	subl	%eax, %ecx	# D.8126, D.8126
	movl	%ecx, %eax	# D.8126, D.8126
	cltq
	salq	$2, %rax	#, D.8127
	addq	%rdx, %rax	# D.8132, D.8132
	movl	(%rax), %eax	# *_61, D.8126
	cmpl	$4, %eax	#, D.8126
	jle	.L128	#,
	.loc 1 716 0 is_stmt 1
	movq	-56(%rbp), %rax	# h, tmp178
	movq	(%rax), %rdx	# h_6(D)->histogram, D.8132
	movq	-56(%rbp), %rax	# h, tmp179
	movl	8(%rax), %eax	# h_6(D)->min, D.8126
	movl	-36(%rbp), %ecx	# sc, tmp180
	subl	%eax, %ecx	# D.8126, D.8126
	movl	%ecx, %eax	# D.8126, D.8126
	cltq
	salq	$2, %rax	#, D.8127
	addq	%rdx, %rax	# D.8132, D.8132
	movl	(%rax), %eax	# *_68, D.8126
	cvtsi2ss	%eax, %xmm0	# D.8126, D.8130
	movq	-56(%rbp), %rax	# h, tmp181
	movq	32(%rax), %rdx	# h_6(D)->expect, D.8129
	movq	-56(%rbp), %rax	# h, tmp182
	movl	8(%rax), %eax	# h_6(D)->min, D.8126
	movl	-36(%rbp), %ecx	# sc, tmp183
	subl	%eax, %ecx	# D.8126, D.8126
	movl	%ecx, %eax	# D.8126, D.8126
	cltq
	salq	$2, %rax	#, D.8127
	addq	%rdx, %rax	# D.8129, D.8129
	movss	(%rax), %xmm1	# *_76, D.8130
	subss	%xmm1, %xmm0	# D.8130, tmp184
	movss	%xmm0, -20(%rbp)	# tmp184, delta
	.loc 1 717 0
	movq	-56(%rbp), %rax	# h, tmp185
	movss	56(%rax), %xmm1	# h_6(D)->chisq, D.8130
	movss	-20(%rbp), %xmm0	# delta, tmp186
	mulss	-20(%rbp), %xmm0	# delta, D.8130
	movq	-56(%rbp), %rax	# h, tmp187
	movq	32(%rax), %rdx	# h_6(D)->expect, D.8129
	movq	-56(%rbp), %rax	# h, tmp188
	movl	8(%rax), %eax	# h_6(D)->min, D.8126
	movl	-36(%rbp), %ecx	# sc, tmp189
	subl	%eax, %ecx	# D.8126, D.8126
	movl	%ecx, %eax	# D.8126, D.8126
	cltq
	salq	$2, %rax	#, D.8127
	addq	%rdx, %rax	# D.8129, D.8129
	movss	(%rax), %xmm2	# *_86, D.8130
	divss	%xmm2, %xmm0	# D.8130, D.8130
	addss	%xmm1, %xmm0	# D.8130, D.8130
	movq	-56(%rbp), %rax	# h, tmp190
	movss	%xmm0, 56(%rax)	# D.8130, h_6(D)->chisq
	.loc 1 718 0
	addl	$1, -28(%rbp)	#, nbins
.L128:
	.loc 1 713 0
	addl	$1, -36(%rbp)	#, sc
.L127:
	.loc 1 713 0 is_stmt 0 discriminator 1
	cvtsi2ss	-36(%rbp), %xmm0	# sc, D.8130
	movss	-72(%rbp), %xmm1	# highbound, tmp191
	ucomiss	%xmm0, %xmm1	# D.8130, tmp191
	jae	.L130	#,
	.loc 1 724 0 is_stmt 1
	movl	-76(%rbp), %eax	# ndegrees, tmp192
	addl	$1, %eax	#, D.8126
	cmpl	-28(%rbp), %eax	# nbins, D.8126
	jge	.L131	#,
	.loc 1 726 0
	movq	-56(%rbp), %rax	# h, tmp193
	movss	56(%rax), %xmm0	# h_6(D)->chisq, D.8130
	unpcklps	%xmm0, %xmm0	# D.8130, D.8130
	cvtps2pd	%xmm0, %xmm0	# D.8130, D.8131
	.loc 1 725 0
	movsd	.LC34(%rip), %xmm1	#, tmp194
	divsd	%xmm1, %xmm0	# tmp194, D.8131
	movapd	%xmm0, %xmm1	# D.8131, D.8131
	movl	-28(%rbp), %eax	# nbins, tmp195
	subl	$1, %eax	#, D.8126
	subl	-76(%rbp), %eax	# ndegrees, D.8126
	cvtsi2sd	%eax, %xmm0	# D.8126, D.8131
	movsd	.LC34(%rip), %xmm2	#, tmp196
	divsd	%xmm2, %xmm0	# tmp196, D.8131
	call	IncompleteGamma	#
	unpcklpd	%xmm0, %xmm0	# D.8131
	cvtpd2ps	%xmm0, %xmm0	# D.8131, D.8130
	movq	-56(%rbp), %rax	# h, tmp197
	movss	%xmm0, 60(%rax)	# D.8130, h_6(D)->chip
	jmp	.L122	#
.L131:
	.loc 1 728 0
	movq	-56(%rbp), %rdx	# h, tmp198
	movl	.LC29(%rip), %eax	#, tmp199
	movl	%eax, 60(%rdx)	# tmp199, h_6(D)->chip
.L122:
	.loc 1 729 0
	addq	$88, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	ExtremeValueSetHistogram, .-ExtremeValueSetHistogram
	.globl	GaussianFitHistogram
	.type	GaussianFitHistogram, @function
GaussianFitHistogram:
.LFB13:
	.loc 1 748 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$72, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)	# h, h
	movss	%xmm0, -60(%rbp)	# high_hint, high_hint
	.loc 1 758 0
	movq	-56(%rbp), %rax	# h, tmp192
	movq	%rax, %rdi	# tmp192,
	call	UnfitHistogram	#
	.loc 1 763 0
	movq	-56(%rbp), %rax	# h, tmp193
	movl	28(%rax), %eax	# h_10(D)->total, D.8133
	cmpl	$999, %eax	#, D.8133
	jg	.L135	#,
	.loc 1 763 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# h, tmp194
	movl	$0, 40(%rax)	#, h_10(D)->fit_type
	movl	$0, %eax	#, D.8133
	jmp	.L136	#
.L135:
	.loc 1 772 0 is_stmt 1
	movl	.LC29(%rip), %eax	#, tmp195
	movl	%eax, -40(%rbp)	# tmp195, sqsum
	movl	-40(%rbp), %eax	# sqsum, tmp196
	movl	%eax, -44(%rbp)	# tmp196, sum
	.loc 1 773 0
	movq	-56(%rbp), %rax	# h, tmp197
	movl	20(%rax), %eax	# h_10(D)->lowscore, tmp198
	movl	%eax, -36(%rbp)	# tmp198, sc
	jmp	.L137	#
.L138:
	.loc 1 775 0 discriminator 2
	cvtsi2ss	-36(%rbp), %xmm0	# sc, D.8134
	movss	.LC31(%rip), %xmm1	#, tmp200
	addss	%xmm1, %xmm0	# tmp200, tmp199
	movss	%xmm0, -24(%rbp)	# tmp199, delta
	.loc 1 776 0 discriminator 2
	movq	-56(%rbp), %rax	# h, tmp201
	movq	(%rax), %rdx	# h_10(D)->histogram, D.8135
	movq	-56(%rbp), %rax	# h, tmp202
	movl	8(%rax), %eax	# h_10(D)->min, D.8133
	movl	-36(%rbp), %ecx	# sc, tmp203
	subl	%eax, %ecx	# D.8133, D.8133
	movl	%ecx, %eax	# D.8133, D.8133
	cltq
	salq	$2, %rax	#, D.8136
	addq	%rdx, %rax	# D.8135, D.8135
	movl	(%rax), %eax	# *_24, D.8133
	cvtsi2ss	%eax, %xmm0	# D.8133, D.8134
	mulss	-24(%rbp), %xmm0	# delta, D.8134
	movss	-44(%rbp), %xmm1	# sum, tmp205
	addss	%xmm1, %xmm0	# tmp205, tmp204
	movss	%xmm0, -44(%rbp)	# tmp204, sum
	.loc 1 777 0 discriminator 2
	movq	-56(%rbp), %rax	# h, tmp206
	movq	(%rax), %rdx	# h_10(D)->histogram, D.8135
	movq	-56(%rbp), %rax	# h, tmp207
	movl	8(%rax), %eax	# h_10(D)->min, D.8133
	movl	-36(%rbp), %ecx	# sc, tmp208
	subl	%eax, %ecx	# D.8133, D.8133
	movl	%ecx, %eax	# D.8133, D.8133
	cltq
	salq	$2, %rax	#, D.8136
	addq	%rdx, %rax	# D.8135, D.8135
	movl	(%rax), %eax	# *_34, D.8133
	cvtsi2ss	%eax, %xmm0	# D.8133, D.8134
	mulss	-24(%rbp), %xmm0	# delta, D.8134
	mulss	-24(%rbp), %xmm0	# delta, D.8134
	movss	-40(%rbp), %xmm1	# sqsum, tmp210
	addss	%xmm1, %xmm0	# tmp210, tmp209
	movss	%xmm0, -40(%rbp)	# tmp209, sqsum
	.loc 1 773 0 discriminator 2
	addl	$1, -36(%rbp)	#, sc
.L137:
	.loc 1 773 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# h, tmp211
	movl	16(%rax), %eax	# h_10(D)->highscore, D.8133
	cmpl	-36(%rbp), %eax	# sc, D.8133
	jge	.L138	#,
	.loc 1 779 0 is_stmt 1
	movq	-56(%rbp), %rax	# h, tmp212
	movl	$2, 40(%rax)	#, h_10(D)->fit_type
	.loc 1 780 0
	movq	-56(%rbp), %rax	# h, tmp213
	movl	28(%rax), %eax	# h_10(D)->total, D.8133
	cvtsi2ss	%eax, %xmm0	# D.8133, D.8134
	movss	-44(%rbp), %xmm1	# sum, tmp214
	divss	%xmm0, %xmm1	# D.8134, D.8134
	movaps	%xmm1, %xmm0	# D.8134, D.8134
	movq	-56(%rbp), %rax	# h, tmp215
	movss	%xmm0, 44(%rax)	# D.8134, h_10(D)->param
	.loc 1 781 0
	movss	-44(%rbp), %xmm0	# sum, tmp216
	mulss	-44(%rbp), %xmm0	# sum, D.8134
	movq	-56(%rbp), %rax	# h, tmp217
	movl	28(%rax), %eax	# h_10(D)->total, D.8133
	cvtsi2ss	%eax, %xmm1	# D.8133, D.8134
	divss	%xmm1, %xmm0	# D.8134, D.8134
	movss	-40(%rbp), %xmm1	# sqsum, tmp218
	subss	%xmm0, %xmm1	# D.8134, D.8134
	movaps	%xmm1, %xmm0	# D.8134, D.8134
	.loc 1 782 0
	movq	-56(%rbp), %rax	# h, tmp219
	movl	28(%rax), %eax	# h_10(D)->total, D.8133
	subl	$1, %eax	#, D.8133
	cvtsi2ss	%eax, %xmm1	# D.8133, D.8134
	.loc 1 781 0
	divss	%xmm1, %xmm0	# D.8134, D.8134
	unpcklps	%xmm0, %xmm0	# D.8134, D.8134
	cvtps2pd	%xmm0, %xmm0	# D.8134, D.8137
	call	sqrt	#
	unpcklpd	%xmm0, %xmm0	# D.8137
	cvtpd2ps	%xmm0, %xmm0	# D.8137, D.8134
	movq	-56(%rbp), %rax	# h, tmp220
	movss	%xmm0, 48(%rax)	# D.8134, h_10(D)->param
	.loc 1 789 0
	movq	-56(%rbp), %rax	# h, tmp221
	movl	12(%rax), %edx	# h_10(D)->max, D.8133
	movq	-56(%rbp), %rax	# h, tmp222
	movl	8(%rax), %eax	# h_10(D)->min, D.8133
	subl	%eax, %edx	# D.8133, D.8133
	movl	%edx, %eax	# D.8133, D.8133
	addl	$1, %eax	#, tmp223
	movl	%eax, -20(%rbp)	# tmp223, hsize
	.loc 1 790 0
	movl	-20(%rbp), %eax	# hsize, tmp224
	cltq
	salq	$2, %rax	#, D.8136
	movq	%rax, %rdx	# D.8136,
	movl	$790, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_malloc	#
	movq	-56(%rbp), %rdx	# h, tmp225
	movq	%rax, 32(%rdx)	# D.8138, h_10(D)->expect
	.loc 1 791 0
	movl	$0, -28(%rbp)	#, idx
	jmp	.L139	#
.L140:
	.loc 1 792 0 discriminator 2
	movq	-56(%rbp), %rax	# h, tmp226
	movq	32(%rax), %rax	# h_10(D)->expect, D.8139
	movl	-28(%rbp), %edx	# idx, tmp227
	movslq	%edx, %rdx	# tmp227, D.8136
	salq	$2, %rdx	#, D.8136
	addq	%rax, %rdx	# D.8139, D.8139
	movl	.LC29(%rip), %eax	#, tmp228
	movl	%eax, (%rdx)	# tmp228, *_67
	.loc 1 791 0 discriminator 2
	addl	$1, -28(%rbp)	#, idx
.L139:
	.loc 1 791 0 is_stmt 0 discriminator 1
	movl	-28(%rbp), %eax	# idx, tmp229
	cmpl	-20(%rbp), %eax	# hsize, tmp229
	jl	.L140	#,
	.loc 1 794 0 is_stmt 1
	movq	-56(%rbp), %rax	# h, tmp230
	movl	8(%rax), %eax	# h_10(D)->min, tmp231
	movl	%eax, -36(%rbp)	# tmp231, sc
	jmp	.L141	#
.L142:
	.loc 1 796 0 discriminator 2
	cvtsi2ss	-36(%rbp), %xmm0	# sc, D.8134
	unpcklps	%xmm0, %xmm0	# D.8134, D.8134
	cvtps2pd	%xmm0, %xmm0	# D.8134, D.8137
	movsd	.LC35(%rip), %xmm1	#, tmp232
	addsd	%xmm1, %xmm0	# tmp232, D.8137
	movq	-56(%rbp), %rax	# h, tmp233
	movss	44(%rax), %xmm1	# h_10(D)->param, D.8134
	unpcklps	%xmm1, %xmm1	# D.8134, D.8134
	cvtps2pd	%xmm1, %xmm1	# D.8134, D.8137
	subsd	%xmm1, %xmm0	# D.8137, D.8137
	unpcklpd	%xmm0, %xmm0	# D.8137
	cvtpd2ps	%xmm0, %xmm4	# D.8137, tmp282
	movss	%xmm4, -24(%rbp)	# tmp282, delta
	.loc 1 797 0 discriminator 2
	movq	-56(%rbp), %rax	# h, tmp234
	movq	32(%rax), %rdx	# h_10(D)->expect, D.8139
	movq	-56(%rbp), %rax	# h, tmp235
	movl	8(%rax), %eax	# h_10(D)->min, D.8133
	movl	-36(%rbp), %ecx	# sc, tmp236
	subl	%eax, %ecx	# D.8133, D.8133
	movl	%ecx, %eax	# D.8133, D.8133
	cltq
	salq	$2, %rax	#, D.8136
	leaq	(%rdx,%rax), %rbx	#, D.8139
	.loc 1 798 0 discriminator 2
	movq	-56(%rbp), %rax	# h, tmp237
	movl	28(%rax), %eax	# h_10(D)->total, D.8133
	cvtsi2ss	%eax, %xmm0	# D.8133, D.8134
	unpcklps	%xmm0, %xmm0	# D.8134, D.8134
	cvtps2pd	%xmm0, %xmm5	# D.8134, D.8137
	movsd	%xmm5, -72(%rbp)	# D.8137, %sfp
	movq	-56(%rbp), %rax	# h, tmp238
	movss	48(%rax), %xmm0	# h_10(D)->param, D.8134
	unpcklps	%xmm0, %xmm0	# D.8134, D.8134
	cvtps2pd	%xmm0, %xmm0	# D.8134, D.8137
	movsd	.LC36(%rip), %xmm1	#, tmp239
	mulsd	%xmm1, %xmm0	# tmp239, D.8137
	movsd	.LC27(%rip), %xmm1	#, tmp240
	divsd	%xmm0, %xmm1	# D.8137, D.8137
	movsd	%xmm1, -80(%rbp)	# D.8137, %sfp
	.loc 1 799 0 discriminator 2
	movss	-24(%rbp), %xmm0	# delta, D.8137
	cvtps2pd	%xmm0, %xmm0	# D.8137, D.8137
	movsd	.LC28(%rip), %xmm1	#, tmp241
	xorpd	%xmm0, %xmm1	# D.8137, D.8137
	movss	-24(%rbp), %xmm0	# delta, D.8137
	cvtps2pd	%xmm0, %xmm0	# D.8137, D.8137
	mulsd	%xmm0, %xmm1	# D.8137, D.8137
	movq	-56(%rbp), %rax	# h, tmp242
	movss	48(%rax), %xmm0	# h_10(D)->param, D.8134
	unpcklps	%xmm0, %xmm0	# D.8134, D.8134
	cvtps2pd	%xmm0, %xmm0	# D.8134, D.8137
	movapd	%xmm0, %xmm2	# D.8137, D.8137
	addsd	%xmm0, %xmm2	# D.8137, D.8137
	movq	-56(%rbp), %rax	# h, tmp243
	movss	48(%rax), %xmm0	# h_10(D)->param, D.8134
	unpcklps	%xmm0, %xmm0	# D.8134, D.8134
	cvtps2pd	%xmm0, %xmm0	# D.8134, D.8137
	mulsd	%xmm2, %xmm0	# D.8137, D.8137
	movapd	%xmm1, %xmm3	# D.8137, D.8137
	divsd	%xmm0, %xmm3	# D.8137, D.8137
	movapd	%xmm3, %xmm0	# D.8137, D.8137
	call	exp	#
	.loc 1 798 0 discriminator 2
	mulsd	-80(%rbp), %xmm0	# %sfp, D.8137
	mulsd	-72(%rbp), %xmm0	# %sfp, D.8137
	.loc 1 797 0 discriminator 2
	unpcklpd	%xmm0, %xmm0	# D.8137
	cvtpd2ps	%xmm0, %xmm0	# D.8137, D.8134
	movss	%xmm0, (%rbx)	# D.8134, *_83
	.loc 1 794 0 discriminator 2
	addl	$1, -36(%rbp)	#, sc
.L141:
	.loc 1 794 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# h, tmp244
	movl	12(%rax), %eax	# h_10(D)->max, D.8133
	cmpl	-36(%rbp), %eax	# sc, D.8133
	jge	.L142	#,
	.loc 1 804 0 is_stmt 1
	movq	-56(%rbp), %rdx	# h, tmp245
	movl	.LC29(%rip), %eax	#, tmp246
	movl	%eax, 56(%rdx)	# tmp246, h_10(D)->chisq
	.loc 1 805 0
	movl	$0, -32(%rbp)	#, nbins
	.loc 1 806 0
	movq	-56(%rbp), %rax	# h, tmp247
	movl	20(%rax), %eax	# h_10(D)->lowscore, tmp248
	movl	%eax, -36(%rbp)	# tmp248, sc
	jmp	.L143	#
.L146:
	.loc 1 807 0
	movq	-56(%rbp), %rax	# h, tmp249
	movq	32(%rax), %rdx	# h_10(D)->expect, D.8139
	movq	-56(%rbp), %rax	# h, tmp250
	movl	8(%rax), %eax	# h_10(D)->min, D.8133
	movl	-36(%rbp), %ecx	# sc, tmp251
	subl	%eax, %ecx	# D.8133, D.8133
	movl	%ecx, %eax	# D.8133, D.8133
	cltq
	salq	$2, %rax	#, D.8136
	addq	%rdx, %rax	# D.8139, D.8139
	movss	(%rax), %xmm0	# *_115, D.8134
	ucomiss	.LC33(%rip), %xmm0	#, D.8134
	jb	.L144	#,
	.loc 1 807 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# h, tmp252
	movq	(%rax), %rdx	# h_10(D)->histogram, D.8135
	movq	-56(%rbp), %rax	# h, tmp253
	movl	8(%rax), %eax	# h_10(D)->min, D.8133
	movl	-36(%rbp), %ecx	# sc, tmp254
	subl	%eax, %ecx	# D.8133, D.8133
	movl	%ecx, %eax	# D.8133, D.8133
	cltq
	salq	$2, %rax	#, D.8136
	addq	%rdx, %rax	# D.8135, D.8135
	movl	(%rax), %eax	# *_122, D.8133
	cmpl	$4, %eax	#, D.8133
	jle	.L144	#,
	.loc 1 809 0 is_stmt 1
	movq	-56(%rbp), %rax	# h, tmp255
	movq	(%rax), %rdx	# h_10(D)->histogram, D.8135
	movq	-56(%rbp), %rax	# h, tmp256
	movl	8(%rax), %eax	# h_10(D)->min, D.8133
	movl	-36(%rbp), %ecx	# sc, tmp257
	subl	%eax, %ecx	# D.8133, D.8133
	movl	%ecx, %eax	# D.8133, D.8133
	cltq
	salq	$2, %rax	#, D.8136
	addq	%rdx, %rax	# D.8135, D.8135
	movl	(%rax), %eax	# *_129, D.8133
	cvtsi2ss	%eax, %xmm0	# D.8133, D.8134
	movq	-56(%rbp), %rax	# h, tmp258
	movq	32(%rax), %rdx	# h_10(D)->expect, D.8139
	movq	-56(%rbp), %rax	# h, tmp259
	movl	8(%rax), %eax	# h_10(D)->min, D.8133
	movl	-36(%rbp), %ecx	# sc, tmp260
	subl	%eax, %ecx	# D.8133, D.8133
	movl	%ecx, %eax	# D.8133, D.8133
	cltq
	salq	$2, %rax	#, D.8136
	addq	%rdx, %rax	# D.8139, D.8139
	movss	(%rax), %xmm1	# *_137, D.8134
	subss	%xmm1, %xmm0	# D.8134, tmp261
	movss	%xmm0, -24(%rbp)	# tmp261, delta
	.loc 1 810 0
	movq	-56(%rbp), %rax	# h, tmp262
	movss	56(%rax), %xmm1	# h_10(D)->chisq, D.8134
	movss	-24(%rbp), %xmm0	# delta, tmp263
	mulss	-24(%rbp), %xmm0	# delta, D.8134
	movq	-56(%rbp), %rax	# h, tmp264
	movq	32(%rax), %rdx	# h_10(D)->expect, D.8139
	movq	-56(%rbp), %rax	# h, tmp265
	movl	8(%rax), %eax	# h_10(D)->min, D.8133
	movl	-36(%rbp), %ecx	# sc, tmp266
	subl	%eax, %ecx	# D.8133, D.8133
	movl	%ecx, %eax	# D.8133, D.8133
	cltq
	salq	$2, %rax	#, D.8136
	addq	%rdx, %rax	# D.8139, D.8139
	movss	(%rax), %xmm2	# *_147, D.8134
	divss	%xmm2, %xmm0	# D.8134, D.8134
	addss	%xmm1, %xmm0	# D.8134, D.8134
	movq	-56(%rbp), %rax	# h, tmp267
	movss	%xmm0, 56(%rax)	# D.8134, h_10(D)->chisq
	.loc 1 811 0
	addl	$1, -32(%rbp)	#, nbins
.L144:
	.loc 1 806 0
	addl	$1, -36(%rbp)	#, sc
.L143:
	.loc 1 806 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# h, tmp268
	movl	16(%rax), %eax	# h_10(D)->highscore, D.8133
	cmpl	-36(%rbp), %eax	# sc, D.8133
	jge	.L146	#,
	.loc 1 814 0 is_stmt 1
	cmpl	$3, -32(%rbp)	#, nbins
	jle	.L147	#,
	.loc 1 816 0
	movq	-56(%rbp), %rax	# h, tmp269
	movss	56(%rax), %xmm0	# h_10(D)->chisq, D.8134
	unpcklps	%xmm0, %xmm0	# D.8134, D.8134
	cvtps2pd	%xmm0, %xmm0	# D.8134, D.8137
	.loc 1 815 0
	movsd	.LC34(%rip), %xmm1	#, tmp270
	divsd	%xmm1, %xmm0	# tmp270, D.8137
	movapd	%xmm0, %xmm1	# D.8137, D.8137
	movl	-32(%rbp), %eax	# nbins, tmp271
	subl	$3, %eax	#, D.8133
	cvtsi2sd	%eax, %xmm0	# D.8133, D.8137
	movsd	.LC34(%rip), %xmm2	#, tmp272
	divsd	%xmm2, %xmm0	# tmp272, D.8137
	call	IncompleteGamma	#
	unpcklpd	%xmm0, %xmm0	# D.8137
	cvtpd2ps	%xmm0, %xmm0	# D.8137, D.8134
	movq	-56(%rbp), %rax	# h, tmp273
	movss	%xmm0, 60(%rax)	# D.8134, h_10(D)->chip
	jmp	.L148	#
.L147:
	.loc 1 818 0
	movq	-56(%rbp), %rdx	# h, tmp274
	movl	.LC29(%rip), %eax	#, tmp275
	movl	%eax, 60(%rdx)	# tmp275, h_10(D)->chip
.L148:
	.loc 1 820 0
	movl	$1, %eax	#, D.8133
.L136:
	.loc 1 821 0
	addq	$72, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	GaussianFitHistogram, .-GaussianFitHistogram
	.globl	GaussianSetHistogram
	.type	GaussianSetHistogram, @function
GaussianSetHistogram:
.LFB14:
	.loc 1 831 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$72, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)	# h, h
	movss	%xmm0, -60(%rbp)	# mean, mean
	movss	%xmm1, -64(%rbp)	# sd, sd
	.loc 1 837 0
	movq	-56(%rbp), %rax	# h, tmp153
	movq	%rax, %rdi	# tmp153,
	call	UnfitHistogram	#
	.loc 1 838 0
	movq	-56(%rbp), %rax	# h, tmp154
	movl	$2, 40(%rax)	#, h_6(D)->fit_type
	.loc 1 839 0
	movq	-56(%rbp), %rdx	# h, tmp155
	movl	-60(%rbp), %eax	# mean, tmp156
	movl	%eax, 44(%rdx)	# tmp156, h_6(D)->param
	.loc 1 840 0
	movq	-56(%rbp), %rdx	# h, tmp157
	movl	-64(%rbp), %eax	# sd, tmp158
	movl	%eax, 48(%rdx)	# tmp158, h_6(D)->param
	.loc 1 844 0
	movq	-56(%rbp), %rax	# h, tmp159
	movl	12(%rax), %edx	# h_6(D)->max, D.8140
	movq	-56(%rbp), %rax	# h, tmp160
	movl	8(%rax), %eax	# h_6(D)->min, D.8140
	subl	%eax, %edx	# D.8140, D.8140
	movl	%edx, %eax	# D.8140, D.8140
	addl	$1, %eax	#, tmp161
	movl	%eax, -24(%rbp)	# tmp161, hsize
	.loc 1 845 0
	movl	-24(%rbp), %eax	# hsize, tmp162
	cltq
	salq	$2, %rax	#, D.8141
	movq	%rax, %rdx	# D.8141,
	movl	$845, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_malloc	#
	movq	-56(%rbp), %rdx	# h, tmp163
	movq	%rax, 32(%rdx)	# D.8142, h_6(D)->expect
	.loc 1 846 0
	movl	$0, -32(%rbp)	#, idx
	jmp	.L151	#
.L152:
	.loc 1 847 0 discriminator 2
	movq	-56(%rbp), %rax	# h, tmp164
	movq	32(%rax), %rax	# h_6(D)->expect, D.8143
	movl	-32(%rbp), %edx	# idx, tmp165
	movslq	%edx, %rdx	# tmp165, D.8141
	salq	$2, %rdx	#, D.8141
	addq	%rax, %rdx	# D.8143, D.8143
	movl	.LC29(%rip), %eax	#, tmp166
	movl	%eax, (%rdx)	# tmp166, *_20
	.loc 1 846 0 discriminator 2
	addl	$1, -32(%rbp)	#, idx
.L151:
	.loc 1 846 0 is_stmt 0 discriminator 1
	movl	-32(%rbp), %eax	# idx, tmp167
	cmpl	-24(%rbp), %eax	# hsize, tmp167
	jl	.L152	#,
	.loc 1 854 0 is_stmt 1
	movq	-56(%rbp), %rax	# h, tmp168
	movl	8(%rax), %eax	# h_6(D)->min, tmp169
	movl	%eax, -36(%rbp)	# tmp169, sc
	jmp	.L153	#
.L154:
	.loc 1 856 0 discriminator 2
	cvtsi2ss	-36(%rbp), %xmm0	# sc, D.8144
	unpcklps	%xmm0, %xmm0	# D.8144, D.8144
	cvtps2pd	%xmm0, %xmm0	# D.8144, D.8145
	movsd	.LC35(%rip), %xmm1	#, tmp170
	addsd	%xmm1, %xmm0	# tmp170, D.8145
	movq	-56(%rbp), %rax	# h, tmp171
	movss	44(%rax), %xmm1	# h_6(D)->param, D.8144
	unpcklps	%xmm1, %xmm1	# D.8144, D.8144
	cvtps2pd	%xmm1, %xmm1	# D.8144, D.8145
	subsd	%xmm1, %xmm0	# D.8145, D.8145
	unpcklpd	%xmm0, %xmm0	# D.8145
	cvtpd2ps	%xmm0, %xmm4	# D.8145, tmp215
	movss	%xmm4, -20(%rbp)	# tmp215, delta
	.loc 1 857 0 discriminator 2
	movq	-56(%rbp), %rax	# h, tmp172
	movq	32(%rax), %rdx	# h_6(D)->expect, D.8143
	movq	-56(%rbp), %rax	# h, tmp173
	movl	8(%rax), %eax	# h_6(D)->min, D.8140
	movl	-36(%rbp), %ecx	# sc, tmp174
	subl	%eax, %ecx	# D.8140, D.8140
	movl	%ecx, %eax	# D.8140, D.8140
	cltq
	salq	$2, %rax	#, D.8141
	leaq	(%rdx,%rax), %rbx	#, D.8143
	.loc 1 858 0 discriminator 2
	movq	-56(%rbp), %rax	# h, tmp175
	movl	28(%rax), %eax	# h_6(D)->total, D.8140
	cvtsi2ss	%eax, %xmm0	# D.8140, D.8144
	unpcklps	%xmm0, %xmm0	# D.8144, D.8144
	cvtps2pd	%xmm0, %xmm5	# D.8144, D.8145
	movsd	%xmm5, -72(%rbp)	# D.8145, %sfp
	movq	-56(%rbp), %rax	# h, tmp176
	movss	48(%rax), %xmm0	# h_6(D)->param, D.8144
	unpcklps	%xmm0, %xmm0	# D.8144, D.8144
	cvtps2pd	%xmm0, %xmm0	# D.8144, D.8145
	movsd	.LC36(%rip), %xmm1	#, tmp177
	mulsd	%xmm1, %xmm0	# tmp177, D.8145
	movsd	.LC27(%rip), %xmm1	#, tmp178
	divsd	%xmm0, %xmm1	# D.8145, D.8145
	movsd	%xmm1, -80(%rbp)	# D.8145, %sfp
	.loc 1 859 0 discriminator 2
	movss	-20(%rbp), %xmm0	# delta, D.8145
	cvtps2pd	%xmm0, %xmm0	# D.8145, D.8145
	movsd	.LC28(%rip), %xmm1	#, tmp179
	xorpd	%xmm0, %xmm1	# D.8145, D.8145
	movss	-20(%rbp), %xmm0	# delta, D.8145
	cvtps2pd	%xmm0, %xmm0	# D.8145, D.8145
	mulsd	%xmm0, %xmm1	# D.8145, D.8145
	movq	-56(%rbp), %rax	# h, tmp180
	movss	48(%rax), %xmm0	# h_6(D)->param, D.8144
	unpcklps	%xmm0, %xmm0	# D.8144, D.8144
	cvtps2pd	%xmm0, %xmm0	# D.8144, D.8145
	movapd	%xmm0, %xmm2	# D.8145, D.8145
	addsd	%xmm0, %xmm2	# D.8145, D.8145
	movq	-56(%rbp), %rax	# h, tmp181
	movss	48(%rax), %xmm0	# h_6(D)->param, D.8144
	unpcklps	%xmm0, %xmm0	# D.8144, D.8144
	cvtps2pd	%xmm0, %xmm0	# D.8144, D.8145
	mulsd	%xmm2, %xmm0	# D.8145, D.8145
	movapd	%xmm1, %xmm3	# D.8145, D.8145
	divsd	%xmm0, %xmm3	# D.8145, D.8145
	movapd	%xmm3, %xmm0	# D.8145, D.8145
	call	exp	#
	.loc 1 858 0 discriminator 2
	mulsd	-80(%rbp), %xmm0	# %sfp, D.8145
	mulsd	-72(%rbp), %xmm0	# %sfp, D.8145
	.loc 1 857 0 discriminator 2
	unpcklpd	%xmm0, %xmm0	# D.8145
	cvtpd2ps	%xmm0, %xmm0	# D.8145, D.8144
	movss	%xmm0, (%rbx)	# D.8144, *_36
	.loc 1 854 0 discriminator 2
	addl	$1, -36(%rbp)	#, sc
.L153:
	.loc 1 854 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# h, tmp182
	movl	12(%rax), %eax	# h_6(D)->max, D.8140
	cmpl	-36(%rbp), %eax	# sc, D.8140
	jge	.L154	#,
	.loc 1 864 0 is_stmt 1
	movq	-56(%rbp), %rdx	# h, tmp183
	movl	.LC29(%rip), %eax	#, tmp184
	movl	%eax, 56(%rdx)	# tmp184, h_6(D)->chisq
	.loc 1 865 0
	movl	$0, -28(%rbp)	#, nbins
	.loc 1 866 0
	movq	-56(%rbp), %rax	# h, tmp185
	movl	20(%rax), %eax	# h_6(D)->lowscore, tmp186
	movl	%eax, -36(%rbp)	# tmp186, sc
	jmp	.L155	#
.L158:
	.loc 1 867 0
	movq	-56(%rbp), %rax	# h, tmp187
	movq	32(%rax), %rdx	# h_6(D)->expect, D.8143
	movq	-56(%rbp), %rax	# h, tmp188
	movl	8(%rax), %eax	# h_6(D)->min, D.8140
	movl	-36(%rbp), %ecx	# sc, tmp189
	subl	%eax, %ecx	# D.8140, D.8140
	movl	%ecx, %eax	# D.8140, D.8140
	cltq
	salq	$2, %rax	#, D.8141
	addq	%rdx, %rax	# D.8143, D.8143
	movss	(%rax), %xmm0	# *_68, D.8144
	ucomiss	.LC33(%rip), %xmm0	#, D.8144
	jb	.L156	#,
	.loc 1 867 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# h, tmp190
	movq	(%rax), %rdx	# h_6(D)->histogram, D.8146
	movq	-56(%rbp), %rax	# h, tmp191
	movl	8(%rax), %eax	# h_6(D)->min, D.8140
	movl	-36(%rbp), %ecx	# sc, tmp192
	subl	%eax, %ecx	# D.8140, D.8140
	movl	%ecx, %eax	# D.8140, D.8140
	cltq
	salq	$2, %rax	#, D.8141
	addq	%rdx, %rax	# D.8146, D.8146
	movl	(%rax), %eax	# *_75, D.8140
	cmpl	$4, %eax	#, D.8140
	jle	.L156	#,
	.loc 1 869 0 is_stmt 1
	movq	-56(%rbp), %rax	# h, tmp193
	movq	(%rax), %rdx	# h_6(D)->histogram, D.8146
	movq	-56(%rbp), %rax	# h, tmp194
	movl	8(%rax), %eax	# h_6(D)->min, D.8140
	movl	-36(%rbp), %ecx	# sc, tmp195
	subl	%eax, %ecx	# D.8140, D.8140
	movl	%ecx, %eax	# D.8140, D.8140
	cltq
	salq	$2, %rax	#, D.8141
	addq	%rdx, %rax	# D.8146, D.8146
	movl	(%rax), %eax	# *_82, D.8140
	cvtsi2ss	%eax, %xmm0	# D.8140, D.8144
	movq	-56(%rbp), %rax	# h, tmp196
	movq	32(%rax), %rdx	# h_6(D)->expect, D.8143
	movq	-56(%rbp), %rax	# h, tmp197
	movl	8(%rax), %eax	# h_6(D)->min, D.8140
	movl	-36(%rbp), %ecx	# sc, tmp198
	subl	%eax, %ecx	# D.8140, D.8140
	movl	%ecx, %eax	# D.8140, D.8140
	cltq
	salq	$2, %rax	#, D.8141
	addq	%rdx, %rax	# D.8143, D.8143
	movss	(%rax), %xmm1	# *_90, D.8144
	subss	%xmm1, %xmm0	# D.8144, tmp199
	movss	%xmm0, -20(%rbp)	# tmp199, delta
	.loc 1 870 0
	movq	-56(%rbp), %rax	# h, tmp200
	movss	56(%rax), %xmm1	# h_6(D)->chisq, D.8144
	movss	-20(%rbp), %xmm0	# delta, tmp201
	mulss	-20(%rbp), %xmm0	# delta, D.8144
	movq	-56(%rbp), %rax	# h, tmp202
	movq	32(%rax), %rdx	# h_6(D)->expect, D.8143
	movq	-56(%rbp), %rax	# h, tmp203
	movl	8(%rax), %eax	# h_6(D)->min, D.8140
	movl	-36(%rbp), %ecx	# sc, tmp204
	subl	%eax, %ecx	# D.8140, D.8140
	movl	%ecx, %eax	# D.8140, D.8140
	cltq
	salq	$2, %rax	#, D.8141
	addq	%rdx, %rax	# D.8143, D.8143
	movss	(%rax), %xmm2	# *_100, D.8144
	divss	%xmm2, %xmm0	# D.8144, D.8144
	addss	%xmm1, %xmm0	# D.8144, D.8144
	movq	-56(%rbp), %rax	# h, tmp205
	movss	%xmm0, 56(%rax)	# D.8144, h_6(D)->chisq
	.loc 1 871 0
	addl	$1, -28(%rbp)	#, nbins
.L156:
	.loc 1 866 0
	addl	$1, -36(%rbp)	#, sc
.L155:
	.loc 1 866 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# h, tmp206
	movl	16(%rax), %eax	# h_6(D)->highscore, D.8140
	cmpl	-36(%rbp), %eax	# sc, D.8140
	jge	.L158	#,
	.loc 1 874 0 is_stmt 1
	cmpl	$1, -28(%rbp)	#, nbins
	jle	.L159	#,
	.loc 1 876 0
	movq	-56(%rbp), %rax	# h, tmp207
	movss	56(%rax), %xmm0	# h_6(D)->chisq, D.8144
	unpcklps	%xmm0, %xmm0	# D.8144, D.8144
	cvtps2pd	%xmm0, %xmm0	# D.8144, D.8145
	.loc 1 875 0
	movsd	.LC34(%rip), %xmm1	#, tmp208
	divsd	%xmm1, %xmm0	# tmp208, D.8145
	movapd	%xmm0, %xmm1	# D.8145, D.8145
	movl	-28(%rbp), %eax	# nbins, tmp209
	subl	$1, %eax	#, D.8140
	cvtsi2sd	%eax, %xmm0	# D.8140, D.8145
	movsd	.LC34(%rip), %xmm2	#, tmp210
	divsd	%xmm2, %xmm0	# tmp210, D.8145
	call	IncompleteGamma	#
	unpcklpd	%xmm0, %xmm0	# D.8145
	cvtpd2ps	%xmm0, %xmm0	# D.8145, D.8144
	movq	-56(%rbp), %rax	# h, tmp211
	movss	%xmm0, 60(%rax)	# D.8144, h_6(D)->chip
	jmp	.L150	#
.L159:
	.loc 1 878 0
	movq	-56(%rbp), %rdx	# h, tmp212
	movl	.LC29(%rip), %eax	#, tmp213
	movl	%eax, 60(%rdx)	# tmp213, h_6(D)->chip
.L150:
	.loc 1 879 0
	addq	$72, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	GaussianSetHistogram, .-GaussianSetHistogram
	.globl	EVDDensity
	.type	EVDDensity, @function
EVDDensity:
.LFB15:
	.loc 1 892 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movss	%xmm0, -4(%rbp)	# x, x
	movss	%xmm1, -8(%rbp)	# mu, mu
	movss	%xmm2, -12(%rbp)	# lambda, lambda
	.loc 1 893 0
	movss	-12(%rbp), %xmm3	# lambda, D.8147
	cvtps2pd	%xmm3, %xmm3	# D.8147, D.8147
	movsd	%xmm3, -24(%rbp)	# D.8147, %sfp
	movss	-12(%rbp), %xmm0	# lambda, D.8147
	cvtps2pd	%xmm0, %xmm0	# D.8147, D.8147
	movsd	.LC28(%rip), %xmm1	#, tmp75
	xorpd	%xmm0, %xmm1	# D.8147, D.8147
	movss	-4(%rbp), %xmm0	# x, tmp76
	subss	-8(%rbp), %xmm0	# mu, D.8148
	unpcklps	%xmm0, %xmm0	# D.8148, D.8148
	cvtps2pd	%xmm0, %xmm0	# D.8148, D.8147
	mulsd	%xmm0, %xmm1	# D.8147, D.8147
	movsd	%xmm1, -32(%rbp)	# D.8147, %sfp
	.loc 1 894 0
	movss	-12(%rbp), %xmm0	# lambda, D.8147
	cvtps2pd	%xmm0, %xmm0	# D.8147, D.8147
	movsd	.LC28(%rip), %xmm1	#, tmp77
	xorpd	%xmm0, %xmm1	# D.8147, D.8147
	movss	-4(%rbp), %xmm0	# x, tmp78
	subss	-8(%rbp), %xmm0	# mu, D.8148
	unpcklps	%xmm0, %xmm0	# D.8148, D.8148
	cvtps2pd	%xmm0, %xmm0	# D.8148, D.8147
	mulsd	%xmm1, %xmm0	# D.8147, D.8147
	call	exp	#
	.loc 1 893 0
	movsd	-32(%rbp), %xmm1	# %sfp, D.8147
	subsd	%xmm0, %xmm1	# D.8147, D.8147
	movapd	%xmm1, %xmm0	# D.8147, D.8147
	call	exp	#
	mulsd	-24(%rbp), %xmm0	# %sfp, D.8147
	movsd	%xmm0, -24(%rbp)	# D.8147, %sfp
	movq	-24(%rbp), %rax	# %sfp, <retval>
	.loc 1 895 0
	movq	%rax, -24(%rbp)	# <retval>, %sfp
	movsd	-24(%rbp), %xmm0	# %sfp,
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	EVDDensity, .-EVDDensity
	.globl	EVDDistribution
	.type	EVDDistribution, @function
EVDDistribution:
.LFB16:
	.loc 1 906 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movss	%xmm0, -4(%rbp)	# x, x
	movss	%xmm1, -8(%rbp)	# mu, mu
	movss	%xmm2, -12(%rbp)	# lambda, lambda
	.loc 1 907 0
	movss	-12(%rbp), %xmm0	# lambda, D.8149
	cvtps2pd	%xmm0, %xmm0	# D.8149, D.8149
	movsd	.LC28(%rip), %xmm1	#, tmp68
	xorpd	%xmm0, %xmm1	# D.8149, D.8149
	movss	-4(%rbp), %xmm0	# x, tmp69
	subss	-8(%rbp), %xmm0	# mu, D.8150
	unpcklps	%xmm0, %xmm0	# D.8150, D.8150
	cvtps2pd	%xmm0, %xmm0	# D.8150, D.8149
	mulsd	%xmm1, %xmm0	# D.8149, D.8149
	call	exp	#
	movsd	.LC28(%rip), %xmm1	#, tmp70
	xorpd	%xmm1, %xmm0	# tmp70, D.8149
	call	exp	#
	movsd	%xmm0, -24(%rbp)	#, %sfp
	movq	-24(%rbp), %rax	# %sfp, D.8149
	.loc 1 908 0
	movq	%rax, -24(%rbp)	# <retval>, %sfp
	movsd	-24(%rbp), %xmm0	# %sfp,
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	EVDDistribution, .-EVDDistribution
	.globl	ExtremeValueP
	.type	ExtremeValueP, @function
ExtremeValueP:
.LFB17:
	.loc 1 929 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movss	%xmm0, -20(%rbp)	# x, x
	movss	%xmm1, -24(%rbp)	# mu, mu
	movss	%xmm2, -28(%rbp)	# lambda, lambda
	.loc 1 933 0
	movss	-20(%rbp), %xmm0	# x, tmp74
	subss	-24(%rbp), %xmm0	# mu, D.8152
	mulss	-28(%rbp), %xmm0	# lambda, D.8152
	unpcklps	%xmm0, %xmm0	# D.8152, D.8152
	cvtps2pd	%xmm0, %xmm0	# D.8152, D.8151
	movsd	.LC37(%rip), %xmm1	#, tmp75
	ucomisd	%xmm0, %xmm1	# D.8151, tmp75
	jb	.L177	#,
	.loc 1 933 0 is_stmt 0 discriminator 1
	movabsq	$4607182418800017408, %rax	#, D.8151
	jmp	.L169	#
.L177:
	.loc 1 935 0 is_stmt 1
	movss	-20(%rbp), %xmm0	# x, tmp76
	subss	-24(%rbp), %xmm0	# mu, D.8152
	mulss	-28(%rbp), %xmm0	# lambda, D.8152
	unpcklps	%xmm0, %xmm0	# D.8152, D.8152
	cvtps2pd	%xmm0, %xmm0	# D.8152, D.8151
	ucomisd	.LC38(%rip), %xmm0	#, D.8151
	jb	.L178	#,
	.loc 1 935 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.8151
	jmp	.L169	#
.L178:
	.loc 1 937 0 is_stmt 1
	movss	-28(%rbp), %xmm0	# lambda, D.8151
	cvtps2pd	%xmm0, %xmm0	# D.8151, D.8151
	movsd	.LC28(%rip), %xmm1	#, tmp77
	xorpd	%xmm0, %xmm1	# D.8151, D.8151
	movss	-20(%rbp), %xmm0	# x, tmp78
	subss	-24(%rbp), %xmm0	# mu, D.8152
	unpcklps	%xmm0, %xmm0	# D.8152, D.8152
	cvtps2pd	%xmm0, %xmm0	# D.8152, D.8151
	mulsd	%xmm1, %xmm0	# D.8151, D.8151
	call	exp	#
	movsd	%xmm0, -40(%rbp)	#, %sfp
	movq	-40(%rbp), %rax	# %sfp, tmp79
	movq	%rax, -8(%rbp)	# tmp79, y
	.loc 1 938 0
	movsd	.LC40(%rip), %xmm0	#, tmp80
	ucomisd	-8(%rbp), %xmm0	# y, tmp80
	jbe	.L179	#,
	.loc 1 938 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# y, D.8151
	jmp	.L169	#
.L179:
	.loc 1 939 0 is_stmt 1
	movsd	-8(%rbp), %xmm1	# y, tmp81
	movsd	.LC28(%rip), %xmm0	#, tmp82
	xorpd	%xmm1, %xmm0	# tmp81, D.8151
	call	exp	#
	movsd	.LC27(%rip), %xmm1	#, tmp83
	subsd	%xmm0, %xmm1	# D.8151, D.8151
	movsd	%xmm1, -40(%rbp)	# D.8151, %sfp
	movq	-40(%rbp), %rax	# %sfp, D.8151
.L169:
	.loc 1 940 0
	movq	%rax, -40(%rbp)	# <retval>, %sfp
	movsd	-40(%rbp), %xmm0	# %sfp,
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	ExtremeValueP, .-ExtremeValueP
	.globl	ExtremeValueP2
	.type	ExtremeValueP2, @function
ExtremeValueP2:
.LFB18:
	.loc 1 958 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movss	%xmm0, -20(%rbp)	# x, x
	movss	%xmm1, -24(%rbp)	# mu, mu
	movss	%xmm2, -28(%rbp)	# lambda, lambda
	movl	%edi, -32(%rbp)	# N, N
	.loc 1 960 0
	cvtsi2sd	-32(%rbp), %xmm3	# N, D.8153
	movsd	%xmm3, -40(%rbp)	# D.8153, %sfp
	movl	-28(%rbp), %ecx	# lambda, tmp65
	movl	-24(%rbp), %edx	# mu, tmp66
	movl	-20(%rbp), %eax	# x, tmp67
	movl	%ecx, -44(%rbp)	# tmp65, %sfp
	movss	-44(%rbp), %xmm2	# %sfp,
	movl	%edx, -44(%rbp)	# tmp66, %sfp
	movss	-44(%rbp), %xmm1	# %sfp,
	movl	%eax, -44(%rbp)	# tmp67, %sfp
	movss	-44(%rbp), %xmm0	# %sfp,
	call	ExtremeValueP	#
	mulsd	-40(%rbp), %xmm0	# %sfp, tmp68
	movsd	%xmm0, -8(%rbp)	# tmp68, y
	.loc 1 961 0
	movsd	.LC40(%rip), %xmm0	#, tmp69
	ucomisd	-8(%rbp), %xmm0	# y, tmp69
	jbe	.L185	#,
	.loc 1 961 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# y, D.8153
	jmp	.L183	#
.L185:
	.loc 1 962 0 is_stmt 1
	movsd	-8(%rbp), %xmm1	# y, tmp70
	movsd	.LC28(%rip), %xmm0	#, tmp71
	xorpd	%xmm1, %xmm0	# tmp70, D.8153
	call	exp	#
	movsd	.LC27(%rip), %xmm1	#, tmp72
	subsd	%xmm0, %xmm1	# D.8153, D.8153
	movsd	%xmm1, -40(%rbp)	# D.8153, %sfp
	movq	-40(%rbp), %rax	# %sfp, D.8153
.L183:
	.loc 1 963 0
	movq	%rax, -40(%rbp)	# <retval>, %sfp
	movsd	-40(%rbp), %xmm0	# %sfp,
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	ExtremeValueP2, .-ExtremeValueP2
	.globl	ExtremeValueE
	.type	ExtremeValueE, @function
ExtremeValueE:
.LFB19:
	.loc 1 979 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movss	%xmm0, -4(%rbp)	# x, x
	movss	%xmm1, -8(%rbp)	# mu, mu
	movss	%xmm2, -12(%rbp)	# lambda, lambda
	movl	%edi, -16(%rbp)	# N, N
	.loc 1 980 0
	cvtsi2sd	-16(%rbp), %xmm3	# N, D.8154
	movsd	%xmm3, -24(%rbp)	# D.8154, %sfp
	movl	-12(%rbp), %ecx	# lambda, tmp63
	movl	-8(%rbp), %edx	# mu, tmp64
	movl	-4(%rbp), %eax	# x, tmp65
	movl	%ecx, -28(%rbp)	# tmp63, %sfp
	movss	-28(%rbp), %xmm2	# %sfp,
	movl	%edx, -28(%rbp)	# tmp64, %sfp
	movss	-28(%rbp), %xmm1	# %sfp,
	movl	%eax, -28(%rbp)	# tmp65, %sfp
	movss	-28(%rbp), %xmm0	# %sfp,
	call	ExtremeValueP	#
	mulsd	-24(%rbp), %xmm0	# %sfp, D.8154
	movsd	%xmm0, -24(%rbp)	# D.8154, %sfp
	movq	-24(%rbp), %rax	# %sfp, <retval>
	.loc 1 981 0
	movq	%rax, -24(%rbp)	# <retval>, %sfp
	movsd	-24(%rbp), %xmm0	# %sfp,
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	ExtremeValueE, .-ExtremeValueE
	.globl	EVDrandom
	.type	EVDrandom, @function
EVDrandom:
.LFB20:
	.loc 1 994 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movss	%xmm0, -20(%rbp)	# mu, mu
	movss	%xmm1, -24(%rbp)	# lambda, lambda
	.loc 1 995 0
	movl	.LC29(%rip), %eax	#, tmp70
	movl	%eax, -4(%rbp)	# tmp70, p
	.loc 1 1000 0
	jmp	.L189	#
.L190:
	.loc 1 1000 0 is_stmt 0 discriminator 2
	call	sre_random	#
	unpcklpd	%xmm0, %xmm0	# D.8155
	cvtpd2ps	%xmm0, %xmm3	# D.8155, tmp77
	movss	%xmm3, -4(%rbp)	# tmp77, p
.L189:
	.loc 1 1000 0 discriminator 1
	xorps	%xmm0, %xmm0	# tmp71
	ucomiss	-4(%rbp), %xmm0	# p, tmp71
	jp	.L194	#,
	xorps	%xmm0, %xmm0	# tmp72
	ucomiss	-4(%rbp), %xmm0	# p, tmp72
	je	.L190	#,
.L194:
	.loc 1 1000 0 discriminator 3
	movss	.LC15(%rip), %xmm0	#, tmp73
	ucomiss	-4(%rbp), %xmm0	# p, tmp73
	jp	.L195	#,
	movss	.LC15(%rip), %xmm0	#, tmp74
	ucomiss	-4(%rbp), %xmm0	# p, tmp74
	je	.L190	#,
.L195:
	.loc 1 1001 0 is_stmt 1
	movss	-20(%rbp), %xmm2	# mu, D.8155
	cvtps2pd	%xmm2, %xmm2	# D.8155, D.8155
	movsd	%xmm2, -32(%rbp)	# D.8155, %sfp
	movss	-4(%rbp), %xmm0	# p, D.8155
	cvtps2pd	%xmm0, %xmm0	# D.8155, D.8155
	call	log	#
	movsd	.LC28(%rip), %xmm1	#, tmp75
	xorpd	%xmm1, %xmm0	# tmp75, D.8155
	call	log	#
	movss	-24(%rbp), %xmm1	# lambda, D.8155
	cvtps2pd	%xmm1, %xmm1	# D.8155, D.8155
	divsd	%xmm1, %xmm0	# D.8155, D.8155
	movsd	-32(%rbp), %xmm2	# %sfp, D.8155
	subsd	%xmm0, %xmm2	# D.8155, D.8155
	movapd	%xmm2, %xmm0	# D.8155, D.8155
	unpcklpd	%xmm0, %xmm0	# D.8155
	cvtpd2ps	%xmm0, %xmm0	# D.8155, D.8156
	movss	%xmm0, -32(%rbp)	# D.8156, %sfp
	movl	-32(%rbp), %eax	# %sfp, <retval>
	.loc 1 1002 0
	movl	%eax, -32(%rbp)	# <retval>, %sfp
	movss	-32(%rbp), %xmm0	# %sfp,
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	EVDrandom, .-EVDrandom
	.globl	Lawless416
	.type	Lawless416, @function
Lawless416:
.LFB21:
	.loc 1 1029 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$112, %rsp	#,
	movq	%rdi, -72(%rbp)	# x, x
	movq	%rsi, -80(%rbp)	# y, y
	movl	%edx, -84(%rbp)	# n, n
	movss	%xmm0, -88(%rbp)	# lambda, lambda
	movq	%rcx, -96(%rbp)	# ret_f, ret_f
	movq	%r8, -104(%rbp)	# ret_df, ret_df
	.loc 1 1040 0
	movl	$0, %eax	#, tmp135
	movq	%rax, -16(%rbp)	# tmp135, total
	movq	-16(%rbp), %rax	# total, tmp136
	movq	%rax, -32(%rbp)	# tmp136, xxesum
	movq	-32(%rbp), %rax	# xxesum, tmp137
	movq	%rax, -24(%rbp)	# tmp137, xsum
	movq	-24(%rbp), %rax	# xsum, tmp138
	movq	%rax, -40(%rbp)	# tmp138, xesum
	movq	-40(%rbp), %rax	# xesum, tmp139
	movq	%rax, -48(%rbp)	# tmp139, esum
	.loc 1 1041 0
	movl	$0, -52(%rbp)	#, i
	jmp	.L197	#
.L200:
	.loc 1 1043 0
	cmpq	$0, -80(%rbp)	#, y
	je	.L198	#,
	.loc 1 1043 0 is_stmt 0 discriminator 1
	movl	-52(%rbp), %eax	# i, tmp140
	cltq
	leaq	0(,%rax,4), %rdx	#, D.8157
	movq	-80(%rbp), %rax	# y, tmp141
	addq	%rdx, %rax	# D.8157, D.8158
	movl	(%rax), %eax	# *_18, D.8159
	cvtsi2sd	%eax, %xmm3	# D.8159, iftmp.12
	movsd	%xmm3, -112(%rbp)	# iftmp.12, %sfp
	movq	-112(%rbp), %rax	# %sfp, iftmp.12
	jmp	.L199	#
.L198:
	.loc 1 1043 0 discriminator 2
	movabsq	$4607182418800017408, %rax	#, iftmp.12
.L199:
	.loc 1 1043 0 discriminator 3
	movq	%rax, -8(%rbp)	# iftmp.12, mult
	.loc 1 1044 0 is_stmt 1 discriminator 3
	movl	-52(%rbp), %eax	# i, tmp142
	cltq
	leaq	0(,%rax,4), %rdx	#, D.8157
	movq	-72(%rbp), %rax	# x, tmp143
	addq	%rdx, %rax	# D.8157, D.8160
	movss	(%rax), %xmm0	# *_26, D.8161
	unpcklps	%xmm0, %xmm0	# D.8161, D.8161
	cvtps2pd	%xmm0, %xmm0	# D.8161, D.8162
	mulsd	-8(%rbp), %xmm0	# mult, D.8162
	movsd	-24(%rbp), %xmm1	# xsum, tmp145
	addsd	%xmm1, %xmm0	# tmp145, tmp144
	movsd	%xmm0, -24(%rbp)	# tmp144, xsum
	.loc 1 1045 0 discriminator 3
	movl	-52(%rbp), %eax	# i, tmp146
	cltq
	leaq	0(,%rax,4), %rdx	#, D.8157
	movq	-72(%rbp), %rax	# x, tmp147
	addq	%rdx, %rax	# D.8157, D.8160
	movss	(%rax), %xmm0	# *_33, D.8161
	unpcklps	%xmm0, %xmm0	# D.8161, D.8161
	cvtps2pd	%xmm0, %xmm0	# D.8161, D.8162
	mulsd	-8(%rbp), %xmm0	# mult, D.8162
	movsd	%xmm0, -112(%rbp)	# D.8162, %sfp
	movss	-88(%rbp), %xmm0	# lambda, D.8162
	cvtps2pd	%xmm0, %xmm0	# D.8162, D.8162
	movsd	.LC28(%rip), %xmm1	#, tmp148
	xorpd	%xmm0, %xmm1	# D.8162, D.8162
	movl	-52(%rbp), %eax	# i, tmp149
	cltq
	leaq	0(,%rax,4), %rdx	#, D.8157
	movq	-72(%rbp), %rax	# x, tmp150
	addq	%rdx, %rax	# D.8157, D.8160
	movss	(%rax), %xmm0	# *_42, D.8161
	unpcklps	%xmm0, %xmm0	# D.8161, D.8161
	cvtps2pd	%xmm0, %xmm0	# D.8161, D.8162
	mulsd	%xmm1, %xmm0	# D.8162, D.8162
	call	exp	#
	mulsd	-112(%rbp), %xmm0	# %sfp, D.8162
	movsd	-40(%rbp), %xmm1	# xesum, tmp152
	addsd	%xmm1, %xmm0	# tmp152, tmp151
	movsd	%xmm0, -40(%rbp)	# tmp151, xesum
	.loc 1 1046 0 discriminator 3
	movl	-52(%rbp), %eax	# i, tmp153
	cltq
	leaq	0(,%rax,4), %rdx	#, D.8157
	movq	-72(%rbp), %rax	# x, tmp154
	addq	%rdx, %rax	# D.8157, D.8160
	movss	(%rax), %xmm0	# *_51, D.8161
	unpcklps	%xmm0, %xmm0	# D.8161, D.8161
	cvtps2pd	%xmm0, %xmm0	# D.8161, D.8162
	movapd	%xmm0, %xmm1	# D.8162, D.8162
	mulsd	-8(%rbp), %xmm1	# mult, D.8162
	movl	-52(%rbp), %eax	# i, tmp155
	cltq
	leaq	0(,%rax,4), %rdx	#, D.8157
	movq	-72(%rbp), %rax	# x, tmp156
	addq	%rdx, %rax	# D.8157, D.8160
	movss	(%rax), %xmm0	# *_57, D.8161
	unpcklps	%xmm0, %xmm0	# D.8161, D.8161
	cvtps2pd	%xmm0, %xmm0	# D.8161, D.8162
	mulsd	%xmm0, %xmm1	# D.8162, D.8162
	movsd	%xmm1, -112(%rbp)	# D.8162, %sfp
	movss	-88(%rbp), %xmm0	# lambda, D.8162
	cvtps2pd	%xmm0, %xmm0	# D.8162, D.8162
	movsd	.LC28(%rip), %xmm1	#, tmp157
	xorpd	%xmm0, %xmm1	# D.8162, D.8162
	movl	-52(%rbp), %eax	# i, tmp158
	cltq
	leaq	0(,%rax,4), %rdx	#, D.8157
	movq	-72(%rbp), %rax	# x, tmp159
	addq	%rdx, %rax	# D.8157, D.8160
	movss	(%rax), %xmm0	# *_65, D.8161
	unpcklps	%xmm0, %xmm0	# D.8161, D.8161
	cvtps2pd	%xmm0, %xmm0	# D.8161, D.8162
	mulsd	%xmm1, %xmm0	# D.8162, D.8162
	call	exp	#
	mulsd	-112(%rbp), %xmm0	# %sfp, D.8162
	movsd	-32(%rbp), %xmm1	# xxesum, tmp161
	addsd	%xmm1, %xmm0	# tmp161, tmp160
	movsd	%xmm0, -32(%rbp)	# tmp160, xxesum
	.loc 1 1047 0 discriminator 3
	movss	-88(%rbp), %xmm0	# lambda, D.8162
	cvtps2pd	%xmm0, %xmm0	# D.8162, D.8162
	movsd	.LC28(%rip), %xmm1	#, tmp162
	xorpd	%xmm0, %xmm1	# D.8162, D.8162
	movl	-52(%rbp), %eax	# i, tmp163
	cltq
	leaq	0(,%rax,4), %rdx	#, D.8157
	movq	-72(%rbp), %rax	# x, tmp164
	addq	%rdx, %rax	# D.8157, D.8160
	movss	(%rax), %xmm0	# *_76, D.8161
	unpcklps	%xmm0, %xmm0	# D.8161, D.8161
	cvtps2pd	%xmm0, %xmm0	# D.8161, D.8162
	mulsd	%xmm1, %xmm0	# D.8162, D.8162
	call	exp	#
	mulsd	-8(%rbp), %xmm0	# mult, D.8162
	movsd	-48(%rbp), %xmm1	# esum, tmp166
	addsd	%xmm1, %xmm0	# tmp166, tmp165
	movsd	%xmm0, -48(%rbp)	# tmp165, esum
	.loc 1 1048 0 discriminator 3
	movsd	-16(%rbp), %xmm0	# total, tmp168
	addsd	-8(%rbp), %xmm0	# mult, tmp167
	movsd	%xmm0, -16(%rbp)	# tmp167, total
	.loc 1 1041 0 discriminator 3
	addl	$1, -52(%rbp)	#, i
.L197:
	.loc 1 1041 0 is_stmt 0 discriminator 1
	movl	-52(%rbp), %eax	# i, tmp169
	cmpl	-84(%rbp), %eax	# n, tmp169
	jl	.L200	#,
	.loc 1 1050 0 is_stmt 1
	movss	-88(%rbp), %xmm0	# lambda, D.8162
	cvtps2pd	%xmm0, %xmm0	# D.8162, D.8162
	movsd	.LC27(%rip), %xmm1	#, tmp170
	divsd	%xmm0, %xmm1	# D.8162, D.8162
	movapd	%xmm1, %xmm0	# D.8162, D.8162
	movsd	-24(%rbp), %xmm1	# xsum, tmp171
	divsd	-16(%rbp), %xmm1	# total, D.8162
	subsd	%xmm1, %xmm0	# D.8162, D.8162
	movapd	%xmm0, %xmm1	# D.8162, D.8162
	movsd	-40(%rbp), %xmm0	# xesum, tmp172
	divsd	-48(%rbp), %xmm0	# esum, D.8162
	addsd	%xmm1, %xmm0	# D.8162, D.8162
	unpcklpd	%xmm0, %xmm0	# D.8162
	cvtpd2ps	%xmm0, %xmm0	# D.8162, D.8161
	movq	-96(%rbp), %rax	# ret_f, tmp173
	movss	%xmm0, (%rax)	# D.8161, *ret_f_92(D)
	.loc 1 1051 0
	movsd	-40(%rbp), %xmm0	# xesum, tmp174
	movapd	%xmm0, %xmm1	# tmp174, D.8162
	divsd	-48(%rbp), %xmm1	# esum, D.8162
	movsd	-40(%rbp), %xmm0	# xesum, tmp175
	divsd	-48(%rbp), %xmm0	# esum, D.8162
	mulsd	%xmm1, %xmm0	# D.8162, D.8162
	.loc 1 1052 0
	movsd	-32(%rbp), %xmm1	# xxesum, tmp176
	divsd	-48(%rbp), %xmm1	# esum, D.8162
	subsd	%xmm1, %xmm0	# D.8162, D.8162
	.loc 1 1053 0
	movss	-88(%rbp), %xmm1	# lambda, tmp177
	mulss	-88(%rbp), %xmm1	# lambda, D.8161
	unpcklps	%xmm1, %xmm1	# D.8161, D.8161
	cvtps2pd	%xmm1, %xmm1	# D.8161, D.8162
	movsd	.LC27(%rip), %xmm2	#, tmp178
	divsd	%xmm1, %xmm2	# D.8162, D.8162
	movapd	%xmm2, %xmm1	# D.8162, D.8162
	subsd	%xmm1, %xmm0	# D.8162, D.8162
	.loc 1 1051 0
	unpcklpd	%xmm0, %xmm0	# D.8162
	cvtpd2ps	%xmm0, %xmm0	# D.8162, D.8161
	movq	-104(%rbp), %rax	# ret_df, tmp179
	movss	%xmm0, (%rax)	# D.8161, *ret_df_103(D)
	.loc 1 1055 0
	nop
	.loc 1 1056 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	Lawless416, .-Lawless416
	.globl	Lawless422
	.type	Lawless422, @function
Lawless422:
.LFB22:
	.loc 1 1087 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	addq	$-128, %rsp	#,
	movq	%rdi, -72(%rbp)	# x, x
	movq	%rsi, -80(%rbp)	# y, y
	movl	%edx, -84(%rbp)	# n, n
	movl	%ecx, -88(%rbp)	# z, z
	movss	%xmm0, -92(%rbp)	# c, c
	movss	%xmm1, -96(%rbp)	# lambda, lambda
	movq	%r8, -104(%rbp)	# ret_f, ret_f
	movq	%r9, -112(%rbp)	# ret_df, ret_df
	.loc 1 1096 0
	movl	$0, %eax	#, tmp162
	movq	%rax, -16(%rbp)	# tmp162, total
	movq	-16(%rbp), %rax	# total, tmp163
	movq	%rax, -32(%rbp)	# tmp163, xxesum
	movq	-32(%rbp), %rax	# xxesum, tmp164
	movq	%rax, -24(%rbp)	# tmp164, xsum
	movq	-24(%rbp), %rax	# xsum, tmp165
	movq	%rax, -40(%rbp)	# tmp165, xesum
	movq	-40(%rbp), %rax	# xesum, tmp166
	movq	%rax, -48(%rbp)	# tmp166, esum
	.loc 1 1097 0
	movl	$0, -52(%rbp)	#, i
	jmp	.L203	#
.L206:
	.loc 1 1099 0
	cmpq	$0, -80(%rbp)	#, y
	je	.L204	#,
	.loc 1 1099 0 is_stmt 0 discriminator 1
	movl	-52(%rbp), %eax	# i, tmp167
	cltq
	leaq	0(,%rax,4), %rdx	#, D.8163
	movq	-80(%rbp), %rax	# y, tmp168
	addq	%rdx, %rax	# D.8163, D.8164
	movl	(%rax), %eax	# *_18, D.8165
	cvtsi2sd	%eax, %xmm3	# D.8165, iftmp.13
	movsd	%xmm3, -120(%rbp)	# iftmp.13, %sfp
	movq	-120(%rbp), %rax	# %sfp, iftmp.13
	jmp	.L205	#
.L204:
	.loc 1 1099 0 discriminator 2
	movabsq	$4607182418800017408, %rax	#, iftmp.13
.L205:
	.loc 1 1099 0 discriminator 3
	movq	%rax, -8(%rbp)	# iftmp.13, mult
	.loc 1 1100 0 is_stmt 1 discriminator 3
	movl	-52(%rbp), %eax	# i, tmp169
	cltq
	leaq	0(,%rax,4), %rdx	#, D.8163
	movq	-72(%rbp), %rax	# x, tmp170
	addq	%rdx, %rax	# D.8163, D.8166
	movss	(%rax), %xmm0	# *_26, D.8167
	unpcklps	%xmm0, %xmm0	# D.8167, D.8167
	cvtps2pd	%xmm0, %xmm0	# D.8167, D.8168
	mulsd	-8(%rbp), %xmm0	# mult, D.8168
	movsd	-24(%rbp), %xmm1	# xsum, tmp172
	addsd	%xmm1, %xmm0	# tmp172, tmp171
	movsd	%xmm0, -24(%rbp)	# tmp171, xsum
	.loc 1 1101 0 discriminator 3
	movss	-96(%rbp), %xmm0	# lambda, D.8168
	cvtps2pd	%xmm0, %xmm0	# D.8168, D.8168
	movsd	.LC28(%rip), %xmm1	#, tmp173
	xorpd	%xmm0, %xmm1	# D.8168, D.8168
	movl	-52(%rbp), %eax	# i, tmp174
	cltq
	leaq	0(,%rax,4), %rdx	#, D.8163
	movq	-72(%rbp), %rax	# x, tmp175
	addq	%rdx, %rax	# D.8163, D.8166
	movss	(%rax), %xmm0	# *_36, D.8167
	unpcklps	%xmm0, %xmm0	# D.8167, D.8167
	cvtps2pd	%xmm0, %xmm0	# D.8167, D.8168
	mulsd	%xmm1, %xmm0	# D.8168, D.8168
	call	exp	#
	mulsd	-8(%rbp), %xmm0	# mult, D.8168
	movsd	-48(%rbp), %xmm1	# esum, tmp177
	addsd	%xmm1, %xmm0	# tmp177, tmp176
	movsd	%xmm0, -48(%rbp)	# tmp176, esum
	.loc 1 1102 0 discriminator 3
	movl	-52(%rbp), %eax	# i, tmp178
	cltq
	leaq	0(,%rax,4), %rdx	#, D.8163
	movq	-72(%rbp), %rax	# x, tmp179
	addq	%rdx, %rax	# D.8163, D.8166
	movss	(%rax), %xmm0	# *_45, D.8167
	unpcklps	%xmm0, %xmm0	# D.8167, D.8167
	cvtps2pd	%xmm0, %xmm0	# D.8167, D.8168
	mulsd	-8(%rbp), %xmm0	# mult, D.8168
	movsd	%xmm0, -120(%rbp)	# D.8168, %sfp
	movss	-96(%rbp), %xmm0	# lambda, D.8168
	cvtps2pd	%xmm0, %xmm0	# D.8168, D.8168
	movsd	.LC28(%rip), %xmm1	#, tmp180
	xorpd	%xmm0, %xmm1	# D.8168, D.8168
	movl	-52(%rbp), %eax	# i, tmp181
	cltq
	leaq	0(,%rax,4), %rdx	#, D.8163
	movq	-72(%rbp), %rax	# x, tmp182
	addq	%rdx, %rax	# D.8163, D.8166
	movss	(%rax), %xmm0	# *_53, D.8167
	unpcklps	%xmm0, %xmm0	# D.8167, D.8167
	cvtps2pd	%xmm0, %xmm0	# D.8167, D.8168
	mulsd	%xmm1, %xmm0	# D.8168, D.8168
	call	exp	#
	mulsd	-120(%rbp), %xmm0	# %sfp, D.8168
	movsd	-40(%rbp), %xmm1	# xesum, tmp184
	addsd	%xmm1, %xmm0	# tmp184, tmp183
	movsd	%xmm0, -40(%rbp)	# tmp183, xesum
	.loc 1 1103 0 discriminator 3
	movl	-52(%rbp), %eax	# i, tmp185
	cltq
	leaq	0(,%rax,4), %rdx	#, D.8163
	movq	-72(%rbp), %rax	# x, tmp186
	addq	%rdx, %rax	# D.8163, D.8166
	movss	(%rax), %xmm0	# *_62, D.8167
	unpcklps	%xmm0, %xmm0	# D.8167, D.8167
	cvtps2pd	%xmm0, %xmm0	# D.8167, D.8168
	movapd	%xmm0, %xmm1	# D.8168, D.8168
	mulsd	-8(%rbp), %xmm1	# mult, D.8168
	movl	-52(%rbp), %eax	# i, tmp187
	cltq
	leaq	0(,%rax,4), %rdx	#, D.8163
	movq	-72(%rbp), %rax	# x, tmp188
	addq	%rdx, %rax	# D.8163, D.8166
	movss	(%rax), %xmm0	# *_68, D.8167
	unpcklps	%xmm0, %xmm0	# D.8167, D.8167
	cvtps2pd	%xmm0, %xmm0	# D.8167, D.8168
	mulsd	%xmm0, %xmm1	# D.8168, D.8168
	movsd	%xmm1, -120(%rbp)	# D.8168, %sfp
	movss	-96(%rbp), %xmm0	# lambda, D.8168
	cvtps2pd	%xmm0, %xmm0	# D.8168, D.8168
	movsd	.LC28(%rip), %xmm1	#, tmp189
	xorpd	%xmm0, %xmm1	# D.8168, D.8168
	movl	-52(%rbp), %eax	# i, tmp190
	cltq
	leaq	0(,%rax,4), %rdx	#, D.8163
	movq	-72(%rbp), %rax	# x, tmp191
	addq	%rdx, %rax	# D.8163, D.8166
	movss	(%rax), %xmm0	# *_76, D.8167
	unpcklps	%xmm0, %xmm0	# D.8167, D.8167
	cvtps2pd	%xmm0, %xmm0	# D.8167, D.8168
	mulsd	%xmm1, %xmm0	# D.8168, D.8168
	call	exp	#
	mulsd	-120(%rbp), %xmm0	# %sfp, D.8168
	movsd	-32(%rbp), %xmm1	# xxesum, tmp193
	addsd	%xmm1, %xmm0	# tmp193, tmp192
	movsd	%xmm0, -32(%rbp)	# tmp192, xxesum
	.loc 1 1104 0 discriminator 3
	movsd	-16(%rbp), %xmm0	# total, tmp195
	addsd	-8(%rbp), %xmm0	# mult, tmp194
	movsd	%xmm0, -16(%rbp)	# tmp194, total
	.loc 1 1097 0 discriminator 3
	addl	$1, -52(%rbp)	#, i
.L203:
	.loc 1 1097 0 is_stmt 0 discriminator 1
	movl	-52(%rbp), %eax	# i, tmp196
	cmpl	-84(%rbp), %eax	# n, tmp196
	jl	.L206	#,
	.loc 1 1109 0 is_stmt 1
	cvtsi2sd	-88(%rbp), %xmm4	# z, D.8168
	movsd	%xmm4, -120(%rbp)	# D.8168, %sfp
	movss	-96(%rbp), %xmm0	# lambda, D.8168
	cvtps2pd	%xmm0, %xmm0	# D.8168, D.8168
	movsd	.LC28(%rip), %xmm1	#, tmp197
	xorpd	%xmm0, %xmm1	# D.8168, D.8168
	movss	-92(%rbp), %xmm0	# c, D.8168
	cvtps2pd	%xmm0, %xmm0	# D.8168, D.8168
	mulsd	%xmm1, %xmm0	# D.8168, D.8168
	call	exp	#
	mulsd	-120(%rbp), %xmm0	# %sfp, D.8168
	movsd	-48(%rbp), %xmm1	# esum, tmp199
	addsd	%xmm1, %xmm0	# tmp199, tmp198
	movsd	%xmm0, -48(%rbp)	# tmp198, esum
	.loc 1 1110 0
	cvtsi2sd	-88(%rbp), %xmm1	# z, D.8168
	movss	-92(%rbp), %xmm0	# c, D.8168
	cvtps2pd	%xmm0, %xmm0	# D.8168, D.8168
	mulsd	%xmm0, %xmm1	# D.8168, D.8168
	movsd	%xmm1, -120(%rbp)	# D.8168, %sfp
	movss	-96(%rbp), %xmm0	# lambda, D.8168
	cvtps2pd	%xmm0, %xmm0	# D.8168, D.8168
	movsd	.LC28(%rip), %xmm1	#, tmp200
	xorpd	%xmm0, %xmm1	# D.8168, D.8168
	movss	-92(%rbp), %xmm0	# c, D.8168
	cvtps2pd	%xmm0, %xmm0	# D.8168, D.8168
	mulsd	%xmm1, %xmm0	# D.8168, D.8168
	call	exp	#
	mulsd	-120(%rbp), %xmm0	# %sfp, D.8168
	movsd	-40(%rbp), %xmm1	# xesum, tmp202
	addsd	%xmm1, %xmm0	# tmp202, tmp201
	movsd	%xmm0, -40(%rbp)	# tmp201, xesum
	.loc 1 1111 0
	cvtsi2sd	-88(%rbp), %xmm1	# z, D.8168
	movss	-92(%rbp), %xmm0	# c, D.8168
	cvtps2pd	%xmm0, %xmm0	# D.8168, D.8168
	mulsd	%xmm0, %xmm1	# D.8168, D.8168
	movss	-92(%rbp), %xmm0	# c, D.8168
	cvtps2pd	%xmm0, %xmm0	# D.8168, D.8168
	mulsd	%xmm0, %xmm1	# D.8168, D.8168
	movsd	%xmm1, -120(%rbp)	# D.8168, %sfp
	movss	-96(%rbp), %xmm0	# lambda, D.8168
	cvtps2pd	%xmm0, %xmm0	# D.8168, D.8168
	movsd	.LC28(%rip), %xmm1	#, tmp203
	xorpd	%xmm0, %xmm1	# D.8168, D.8168
	movss	-92(%rbp), %xmm0	# c, D.8168
	cvtps2pd	%xmm0, %xmm0	# D.8168, D.8168
	mulsd	%xmm1, %xmm0	# D.8168, D.8168
	call	exp	#
	mulsd	-120(%rbp), %xmm0	# %sfp, D.8168
	movsd	-32(%rbp), %xmm1	# xxesum, tmp205
	addsd	%xmm1, %xmm0	# tmp205, tmp204
	movsd	%xmm0, -32(%rbp)	# tmp204, xxesum
	.loc 1 1113 0
	movss	-96(%rbp), %xmm0	# lambda, D.8168
	cvtps2pd	%xmm0, %xmm0	# D.8168, D.8168
	movsd	.LC27(%rip), %xmm1	#, tmp206
	divsd	%xmm0, %xmm1	# D.8168, D.8168
	movapd	%xmm1, %xmm0	# D.8168, D.8168
	movsd	-24(%rbp), %xmm1	# xsum, tmp207
	divsd	-16(%rbp), %xmm1	# total, D.8168
	subsd	%xmm1, %xmm0	# D.8168, D.8168
	movapd	%xmm0, %xmm1	# D.8168, D.8168
	movsd	-40(%rbp), %xmm0	# xesum, tmp208
	divsd	-48(%rbp), %xmm0	# esum, D.8168
	addsd	%xmm1, %xmm0	# D.8168, D.8168
	unpcklpd	%xmm0, %xmm0	# D.8168
	cvtpd2ps	%xmm0, %xmm0	# D.8168, D.8167
	movq	-104(%rbp), %rax	# ret_f, tmp209
	movss	%xmm0, (%rax)	# D.8167, *ret_f_124(D)
	.loc 1 1114 0
	movsd	-40(%rbp), %xmm0	# xesum, tmp210
	movapd	%xmm0, %xmm1	# tmp210, D.8168
	divsd	-48(%rbp), %xmm1	# esum, D.8168
	movsd	-40(%rbp), %xmm0	# xesum, tmp211
	divsd	-48(%rbp), %xmm0	# esum, D.8168
	mulsd	%xmm1, %xmm0	# D.8168, D.8168
	.loc 1 1115 0
	movsd	-32(%rbp), %xmm1	# xxesum, tmp212
	divsd	-48(%rbp), %xmm1	# esum, D.8168
	subsd	%xmm1, %xmm0	# D.8168, D.8168
	.loc 1 1116 0
	movss	-96(%rbp), %xmm1	# lambda, tmp213
	mulss	-96(%rbp), %xmm1	# lambda, D.8167
	unpcklps	%xmm1, %xmm1	# D.8167, D.8167
	cvtps2pd	%xmm1, %xmm1	# D.8167, D.8168
	movsd	.LC27(%rip), %xmm2	#, tmp214
	divsd	%xmm1, %xmm2	# D.8168, D.8168
	movapd	%xmm2, %xmm1	# D.8168, D.8168
	subsd	%xmm1, %xmm0	# D.8168, D.8168
	.loc 1 1114 0
	unpcklpd	%xmm0, %xmm0	# D.8168
	cvtpd2ps	%xmm0, %xmm0	# D.8168, D.8167
	movq	-112(%rbp), %rax	# ret_df, tmp215
	movss	%xmm0, (%rax)	# D.8167, *ret_df_135(D)
	.loc 1 1118 0
	nop
	.loc 1 1119 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	Lawless422, .-Lawless422
	.globl	EVDMaxLikelyFit
	.type	EVDMaxLikelyFit, @function
EVDMaxLikelyFit:
.LFB23:
	.loc 1 1148 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$112, %rsp	#,
	movq	%rdi, -72(%rbp)	# x, x
	movq	%rsi, -80(%rbp)	# c, c
	movl	%edx, -84(%rbp)	# n, n
	movq	%rcx, -96(%rbp)	# ret_mu, ret_mu
	movq	%r8, -104(%rbp)	# ret_lambda, ret_lambda
	.loc 1 1155 0
	movl	.LC41(%rip), %eax	#, tmp96
	movl	%eax, -32(%rbp)	# tmp96, tol
	.loc 1 1160 0
	movl	.LC42(%rip), %eax	#, tmp97
	movl	%eax, -52(%rbp)	# tmp97, lambda
	.loc 1 1164 0
	movl	$0, -48(%rbp)	#, i
	jmp	.L209	#
.L215:
	.loc 1 1166 0
	leaq	-56(%rbp), %r8	#, tmp98
	leaq	-60(%rbp), %rcx	#, tmp99
	movl	-52(%rbp), %eax	# lambda, tmp100
	movl	-84(%rbp), %edx	# n, tmp101
	movq	-80(%rbp), %rsi	# c, tmp102
	movq	-72(%rbp), %rdi	# x, tmp103
	movl	%eax, -112(%rbp)	# tmp100, %sfp
	movss	-112(%rbp), %xmm0	# %sfp,
	call	Lawless416	#
	.loc 1 1167 0
	movss	-60(%rbp), %xmm1	# fx, fx.14
	movss	.LC43(%rip), %xmm0	#, tmp104
	andps	%xmm1, %xmm0	# fx.14, D.8170
	movss	-32(%rbp), %xmm1	# tol, tmp105
	ucomiss	%xmm0, %xmm1	# D.8170, tmp105
	jbe	.L246	#,
	.loc 1 1167 0 is_stmt 0 discriminator 1
	jmp	.L212	#
.L246:
	.loc 1 1168 0 is_stmt 1
	movss	-60(%rbp), %xmm0	# fx, fx.15
	movss	-56(%rbp), %xmm1	# dfx, dfx.16
	divss	%xmm1, %xmm0	# dfx.16, D.8170
	movss	-52(%rbp), %xmm1	# lambda, tmp107
	subss	%xmm0, %xmm1	# D.8170, tmp106
	movaps	%xmm1, %xmm0	# tmp106, tmp106
	movss	%xmm0, -52(%rbp)	# tmp106, lambda
	.loc 1 1169 0
	xorps	%xmm0, %xmm0	# tmp108
	ucomiss	-52(%rbp), %xmm0	# lambda, tmp108
	jb	.L213	#,
	.loc 1 1169 0 is_stmt 0 discriminator 1
	movl	.LC44(%rip), %eax	#, tmp109
	movl	%eax, -52(%rbp)	# tmp109, lambda
.L213:
	.loc 1 1164 0 is_stmt 1
	addl	$1, -48(%rbp)	#, i
.L209:
	.loc 1 1164 0 is_stmt 0 discriminator 1
	cmpl	$99, -48(%rbp)	#, i
	jle	.L215	#,
.L212:
	.loc 1 1179 0 is_stmt 1
	cmpl	$100, -48(%rbp)	#, i
	jne	.L216	#,
.LBB4:
	.loc 1 1185 0
	movl	.LC42(%rip), %eax	#, tmp110
	movl	%eax, -44(%rbp)	# tmp110, left
	movl	-44(%rbp), %eax	# left, tmp111
	movl	%eax, -40(%rbp)	# tmp111, right
	movl	-40(%rbp), %eax	# right, tmp112
	movl	%eax, -52(%rbp)	# tmp112, lambda
	.loc 1 1186 0
	leaq	-56(%rbp), %r8	#, tmp113
	leaq	-60(%rbp), %rcx	#, tmp114
	movl	-52(%rbp), %eax	# lambda, tmp115
	movl	-84(%rbp), %edx	# n, tmp116
	movq	-80(%rbp), %rsi	# c, tmp117
	movq	-72(%rbp), %rdi	# x, tmp118
	movl	%eax, -112(%rbp)	# tmp115, %sfp
	movss	-112(%rbp), %xmm0	# %sfp,
	call	Lawless416	#
	.loc 1 1187 0
	movss	-60(%rbp), %xmm1	# fx, fx.17
	xorps	%xmm0, %xmm0	# tmp119
	ucomiss	%xmm1, %xmm0	# fx.17, tmp119
	jbe	.L217	#,
.L222:
	.loc 1 1190 0
	movss	-44(%rbp), %xmm0	# left, D.8171
	cvtps2pd	%xmm0, %xmm0	# D.8171, D.8171
	movsd	.LC45(%rip), %xmm1	#, tmp120
	subsd	%xmm1, %xmm0	# tmp120, D.8171
	unpcklpd	%xmm0, %xmm0	# D.8171
	cvtpd2ps	%xmm0, %xmm2	# D.8171, tmp176
	movss	%xmm2, -44(%rbp)	# tmp176, left
	.loc 1 1191 0
	xorps	%xmm0, %xmm0	# tmp121
	ucomiss	-44(%rbp), %xmm0	# left, tmp121
	jbe	.L247	#,
	.loc 1 1193 0
	movl	$0, %eax	#, D.8169
	jmp	.L239	#
.L247:
	.loc 1 1195 0
	leaq	-56(%rbp), %r8	#, tmp122
	leaq	-60(%rbp), %rcx	#, tmp123
	movl	-44(%rbp), %eax	# left, tmp124
	movl	-84(%rbp), %edx	# n, tmp125
	movq	-80(%rbp), %rsi	# c, tmp126
	movq	-72(%rbp), %rdi	# x, tmp127
	movl	%eax, -112(%rbp)	# tmp124, %sfp
	movss	-112(%rbp), %xmm0	# %sfp,
	call	Lawless416	#
	.loc 1 1196 0
	movss	-60(%rbp), %xmm1	# fx, fx.18
	xorps	%xmm0, %xmm0	# tmp128
	ucomiss	%xmm1, %xmm0	# fx.18, tmp128
	ja	.L222	#,
	jmp	.L223	#
.L217:
	.loc 1 1201 0
	movss	-40(%rbp), %xmm0	# right, D.8171
	cvtps2pd	%xmm0, %xmm0	# D.8171, D.8171
	movsd	.LC45(%rip), %xmm1	#, tmp129
	addsd	%xmm1, %xmm0	# tmp129, D.8171
	unpcklpd	%xmm0, %xmm0	# D.8171
	cvtpd2ps	%xmm0, %xmm3	# D.8171, tmp178
	movss	%xmm3, -40(%rbp)	# tmp178, right
	.loc 1 1202 0
	leaq	-56(%rbp), %r8	#, tmp130
	leaq	-60(%rbp), %rcx	#, tmp131
	movl	-40(%rbp), %eax	# right, tmp132
	movl	-84(%rbp), %edx	# n, tmp133
	movq	-80(%rbp), %rsi	# c, tmp134
	movq	-72(%rbp), %rdi	# x, tmp135
	movl	%eax, -112(%rbp)	# tmp132, %sfp
	movss	-112(%rbp), %xmm0	# %sfp,
	call	Lawless416	#
	.loc 1 1203 0
	movss	-40(%rbp), %xmm0	# right, tmp136
	ucomiss	.LC46(%rip), %xmm0	#, tmp136
	jbe	.L248	#,
	.loc 1 1205 0
	movl	$0, %eax	#, D.8169
	jmp	.L239	#
.L248:
	.loc 1 1207 0
	movss	-60(%rbp), %xmm0	# fx, fx.19
	xorps	%xmm1, %xmm1	# tmp137
	ucomiss	%xmm1, %xmm0	# tmp137, fx.19
	ja	.L217	#,
.L223:
	.loc 1 1210 0
	movl	$0, -48(%rbp)	#, i
	jmp	.L226	#
.L233:
	.loc 1 1212 0
	movss	-44(%rbp), %xmm0	# left, tmp138
	addss	-40(%rbp), %xmm0	# right, D.8170
	movss	.LC47(%rip), %xmm1	#, tmp140
	divss	%xmm1, %xmm0	# tmp140, tmp139
	movss	%xmm0, -36(%rbp)	# tmp139, mid
	.loc 1 1213 0
	leaq	-56(%rbp), %r8	#, tmp141
	leaq	-60(%rbp), %rcx	#, tmp142
	movl	-36(%rbp), %eax	# mid, tmp143
	movl	-84(%rbp), %edx	# n, tmp144
	movq	-80(%rbp), %rsi	# c, tmp145
	movq	-72(%rbp), %rdi	# x, tmp146
	movl	%eax, -112(%rbp)	# tmp143, %sfp
	movss	-112(%rbp), %xmm0	# %sfp,
	call	Lawless416	#
	.loc 1 1214 0
	movss	-60(%rbp), %xmm1	# fx, fx.20
	movss	.LC43(%rip), %xmm0	#, tmp147
	andps	%xmm1, %xmm0	# fx.20, D.8170
	movss	-32(%rbp), %xmm1	# tol, tmp148
	ucomiss	%xmm0, %xmm1	# D.8170, tmp148
	jbe	.L249	#,
	.loc 1 1214 0 is_stmt 0 discriminator 1
	jmp	.L229	#
.L249:
	.loc 1 1215 0 is_stmt 1
	movss	-60(%rbp), %xmm0	# fx, fx.21
	xorps	%xmm1, %xmm1	# tmp149
	ucomiss	%xmm1, %xmm0	# tmp149, fx.21
	jbe	.L250	#,
	.loc 1 1215 0 is_stmt 0 discriminator 1
	movl	-36(%rbp), %eax	# mid, tmp150
	movl	%eax, -44(%rbp)	# tmp150, left
	jmp	.L232	#
.L250:
	.loc 1 1216 0 is_stmt 1
	movl	-36(%rbp), %eax	# mid, tmp151
	movl	%eax, -40(%rbp)	# tmp151, right
.L232:
	.loc 1 1210 0
	addl	$1, -48(%rbp)	#, i
.L226:
	.loc 1 1210 0 is_stmt 0 discriminator 1
	cmpl	$99, -48(%rbp)	#, i
	jle	.L233	#,
.L229:
	.loc 1 1218 0 is_stmt 1
	cmpl	$100, -48(%rbp)	#, i
	jne	.L234	#,
	.loc 1 1220 0
	movl	$0, %eax	#, D.8169
	jmp	.L239	#
.L234:
	.loc 1 1222 0
	movl	-36(%rbp), %eax	# mid, tmp152
	movl	%eax, -52(%rbp)	# tmp152, lambda
.L216:
.LBE4:
	.loc 1 1227 0
	movl	$0, %eax	#, tmp153
	movq	%rax, -24(%rbp)	# tmp153, esum
	.loc 1 1228 0
	movl	$0, %eax	#, tmp154
	movq	%rax, -16(%rbp)	# tmp154, total
	.loc 1 1229 0
	movl	$0, -48(%rbp)	#, i
	jmp	.L235	#
.L238:
	.loc 1 1231 0
	cmpq	$0, -80(%rbp)	#, c
	je	.L236	#,
	.loc 1 1231 0 is_stmt 0 discriminator 1
	movl	-48(%rbp), %eax	# i, tmp155
	cltq
	leaq	0(,%rax,4), %rdx	#, D.8172
	movq	-80(%rbp), %rax	# c, tmp156
	addq	%rdx, %rax	# D.8172, D.8173
	movl	(%rax), %eax	# *_66, D.8169
	cvtsi2sd	%eax, %xmm4	# D.8169, iftmp.22
	movsd	%xmm4, -112(%rbp)	# iftmp.22, %sfp
	movq	-112(%rbp), %rax	# %sfp, iftmp.22
	jmp	.L237	#
.L236:
	.loc 1 1231 0 discriminator 2
	movabsq	$4607182418800017408, %rax	#, iftmp.22
.L237:
	.loc 1 1231 0 discriminator 3
	movq	%rax, -8(%rbp)	# iftmp.22, mult
	.loc 1 1232 0 is_stmt 1 discriminator 3
	movss	-52(%rbp), %xmm1	# lambda, tmp157
	movss	.LC30(%rip), %xmm0	#, tmp158
	xorps	%xmm1, %xmm0	# tmp157, D.8170
	movl	-48(%rbp), %eax	# i, tmp159
	cltq
	leaq	0(,%rax,4), %rdx	#, D.8172
	movq	-72(%rbp), %rax	# x, tmp160
	addq	%rdx, %rax	# D.8172, D.8174
	movss	(%rax), %xmm1	# *_74, D.8170
	mulss	%xmm1, %xmm0	# D.8170, D.8170
	unpcklps	%xmm0, %xmm0	# D.8170, D.8170
	cvtps2pd	%xmm0, %xmm0	# D.8170, D.8171
	call	exp	#
	mulsd	-8(%rbp), %xmm0	# mult, D.8171
	movsd	-24(%rbp), %xmm1	# esum, tmp162
	addsd	%xmm1, %xmm0	# tmp162, tmp161
	movsd	%xmm0, -24(%rbp)	# tmp161, esum
	.loc 1 1233 0 discriminator 3
	movsd	-16(%rbp), %xmm0	# total, tmp164
	addsd	-8(%rbp), %xmm0	# mult, tmp163
	movsd	%xmm0, -16(%rbp)	# tmp163, total
	.loc 1 1229 0 discriminator 3
	addl	$1, -48(%rbp)	#, i
.L235:
	.loc 1 1229 0 is_stmt 0 discriminator 1
	movl	-48(%rbp), %eax	# i, tmp165
	cmpl	-84(%rbp), %eax	# n, tmp165
	jl	.L238	#,
	.loc 1 1235 0 is_stmt 1
	movsd	-24(%rbp), %xmm0	# esum, tmp166
	divsd	-16(%rbp), %xmm0	# total, D.8171
	call	log	#
	movsd	.LC28(%rip), %xmm1	#, tmp167
	xorpd	%xmm1, %xmm0	# tmp167, D.8171
	movss	-52(%rbp), %xmm1	# lambda, D.8171
	cvtps2pd	%xmm1, %xmm1	# D.8171, D.8171
	divsd	%xmm1, %xmm0	# D.8171, D.8171
	unpcklpd	%xmm0, %xmm0	# D.8171
	cvtpd2ps	%xmm0, %xmm5	# D.8171, tmp183
	movss	%xmm5, -28(%rbp)	# tmp183, mu
	.loc 1 1237 0
	movq	-104(%rbp), %rdx	# ret_lambda, tmp168
	movl	-52(%rbp), %eax	# lambda, tmp169
	movl	%eax, (%rdx)	# tmp169, *ret_lambda_89(D)
	.loc 1 1238 0
	movq	-96(%rbp), %rdx	# ret_mu, tmp170
	movl	-28(%rbp), %eax	# mu, tmp171
	movl	%eax, (%rdx)	# tmp171, *ret_mu_90(D)
	.loc 1 1239 0
	movl	$1, %eax	#, D.8169
.L239:
	.loc 1 1240 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE23:
	.size	EVDMaxLikelyFit, .-EVDMaxLikelyFit
	.globl	EVDCensoredFit
	.type	EVDCensoredFit, @function
EVDCensoredFit:
.LFB24:
	.loc 1 1273 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	addq	$-128, %rsp	#,
	movq	%rdi, -72(%rbp)	# x, x
	movq	%rsi, -80(%rbp)	# y, y
	movl	%edx, -84(%rbp)	# n, n
	movl	%ecx, -88(%rbp)	# z, z
	movss	%xmm0, -92(%rbp)	# c, c
	movq	%r8, -104(%rbp)	# ret_mu, ret_mu
	movq	%r9, -112(%rbp)	# ret_lambda, ret_lambda
	.loc 1 1280 0
	movl	.LC41(%rip), %eax	#, tmp104
	movl	%eax, -32(%rbp)	# tmp104, tol
	.loc 1 1285 0
	movl	.LC42(%rip), %eax	#, tmp105
	movl	%eax, -52(%rbp)	# tmp105, lambda
	.loc 1 1289 0
	movl	$0, -48(%rbp)	#, i
	jmp	.L252	#
.L258:
	.loc 1 1291 0
	leaq	-56(%rbp), %r9	#, tmp106
	leaq	-60(%rbp), %r8	#, tmp107
	movl	-52(%rbp), %edx	# lambda, tmp108
	movl	-92(%rbp), %eax	# c, tmp109
	movl	-88(%rbp), %ecx	# z, tmp110
	movl	-84(%rbp), %r10d	# n, tmp111
	movq	-80(%rbp), %rsi	# y, tmp112
	movq	-72(%rbp), %rdi	# x, tmp113
	movl	%edx, -120(%rbp)	# tmp108, %sfp
	movss	-120(%rbp), %xmm1	# %sfp,
	movl	%eax, -120(%rbp)	# tmp109, %sfp
	movss	-120(%rbp), %xmm0	# %sfp,
	movl	%r10d, %edx	# tmp111,
	call	Lawless422	#
	.loc 1 1292 0
	movss	-60(%rbp), %xmm1	# fx, fx.23
	movss	.LC43(%rip), %xmm0	#, tmp114
	andps	%xmm1, %xmm0	# fx.23, D.8176
	movss	-32(%rbp), %xmm1	# tol, tmp115
	ucomiss	%xmm0, %xmm1	# D.8176, tmp115
	jbe	.L289	#,
	.loc 1 1292 0 is_stmt 0 discriminator 1
	jmp	.L255	#
.L289:
	.loc 1 1293 0 is_stmt 1
	movss	-60(%rbp), %xmm0	# fx, fx.24
	movss	-56(%rbp), %xmm1	# dfx, dfx.25
	divss	%xmm1, %xmm0	# dfx.25, D.8176
	movss	-52(%rbp), %xmm1	# lambda, tmp117
	subss	%xmm0, %xmm1	# D.8176, tmp116
	movaps	%xmm1, %xmm0	# tmp116, tmp116
	movss	%xmm0, -52(%rbp)	# tmp116, lambda
	.loc 1 1294 0
	xorps	%xmm0, %xmm0	# tmp118
	ucomiss	-52(%rbp), %xmm0	# lambda, tmp118
	jb	.L256	#,
	.loc 1 1294 0 is_stmt 0 discriminator 1
	movl	.LC44(%rip), %eax	#, tmp119
	movl	%eax, -52(%rbp)	# tmp119, lambda
.L256:
	.loc 1 1289 0 is_stmt 1
	addl	$1, -48(%rbp)	#, i
.L252:
	.loc 1 1289 0 is_stmt 0 discriminator 1
	cmpl	$99, -48(%rbp)	#, i
	jle	.L258	#,
.L255:
	.loc 1 1304 0 is_stmt 1
	cmpl	$100, -48(%rbp)	#, i
	jne	.L259	#,
.LBB5:
	.loc 1 1309 0
	movl	.LC42(%rip), %eax	#, tmp120
	movl	%eax, -44(%rbp)	# tmp120, left
	movl	-44(%rbp), %eax	# left, tmp121
	movl	%eax, -40(%rbp)	# tmp121, right
	movl	-40(%rbp), %eax	# right, tmp122
	movl	%eax, -52(%rbp)	# tmp122, lambda
	.loc 1 1310 0
	leaq	-56(%rbp), %r9	#, tmp123
	leaq	-60(%rbp), %r8	#, tmp124
	movl	-52(%rbp), %edx	# lambda, tmp125
	movl	-92(%rbp), %eax	# c, tmp126
	movl	-88(%rbp), %ecx	# z, tmp127
	movl	-84(%rbp), %r10d	# n, tmp128
	movq	-80(%rbp), %rsi	# y, tmp129
	movq	-72(%rbp), %rdi	# x, tmp130
	movl	%edx, -120(%rbp)	# tmp125, %sfp
	movss	-120(%rbp), %xmm1	# %sfp,
	movl	%eax, -120(%rbp)	# tmp126, %sfp
	movss	-120(%rbp), %xmm0	# %sfp,
	movl	%r10d, %edx	# tmp128,
	call	Lawless422	#
	.loc 1 1311 0
	movss	-60(%rbp), %xmm1	# fx, fx.26
	xorps	%xmm0, %xmm0	# tmp131
	ucomiss	%xmm1, %xmm0	# fx.26, tmp131
	jbe	.L260	#,
.L265:
	.loc 1 1314 0
	movss	-44(%rbp), %xmm0	# left, D.8177
	cvtps2pd	%xmm0, %xmm0	# D.8177, D.8177
	movsd	.LC48(%rip), %xmm1	#, tmp132
	subsd	%xmm1, %xmm0	# tmp132, D.8177
	unpcklpd	%xmm0, %xmm0	# D.8177
	cvtpd2ps	%xmm0, %xmm2	# D.8177, tmp198
	movss	%xmm2, -44(%rbp)	# tmp198, left
	.loc 1 1315 0
	xorps	%xmm0, %xmm0	# tmp133
	ucomiss	-44(%rbp), %xmm0	# left, tmp133
	jbe	.L290	#,
	.loc 1 1317 0
	movl	$0, %eax	#, D.8175
	jmp	.L282	#
.L290:
	.loc 1 1319 0
	leaq	-56(%rbp), %r9	#, tmp134
	leaq	-60(%rbp), %r8	#, tmp135
	movl	-44(%rbp), %edx	# left, tmp136
	movl	-92(%rbp), %eax	# c, tmp137
	movl	-88(%rbp), %ecx	# z, tmp138
	movl	-84(%rbp), %r10d	# n, tmp139
	movq	-80(%rbp), %rsi	# y, tmp140
	movq	-72(%rbp), %rdi	# x, tmp141
	movl	%edx, -120(%rbp)	# tmp136, %sfp
	movss	-120(%rbp), %xmm1	# %sfp,
	movl	%eax, -120(%rbp)	# tmp137, %sfp
	movss	-120(%rbp), %xmm0	# %sfp,
	movl	%r10d, %edx	# tmp139,
	call	Lawless422	#
	.loc 1 1320 0
	movss	-60(%rbp), %xmm1	# fx, fx.27
	xorps	%xmm0, %xmm0	# tmp142
	ucomiss	%xmm1, %xmm0	# fx.27, tmp142
	ja	.L265	#,
	jmp	.L266	#
.L260:
	.loc 1 1325 0
	movss	-40(%rbp), %xmm0	# right, D.8177
	cvtps2pd	%xmm0, %xmm0	# D.8177, D.8177
	movsd	.LC45(%rip), %xmm1	#, tmp143
	addsd	%xmm1, %xmm0	# tmp143, D.8177
	unpcklpd	%xmm0, %xmm0	# D.8177
	cvtpd2ps	%xmm0, %xmm3	# D.8177, tmp201
	movss	%xmm3, -40(%rbp)	# tmp201, right
	.loc 1 1326 0
	leaq	-56(%rbp), %r9	#, tmp144
	leaq	-60(%rbp), %r8	#, tmp145
	movl	-44(%rbp), %edx	# left, tmp146
	movl	-92(%rbp), %eax	# c, tmp147
	movl	-88(%rbp), %ecx	# z, tmp148
	movl	-84(%rbp), %r10d	# n, tmp149
	movq	-80(%rbp), %rsi	# y, tmp150
	movq	-72(%rbp), %rdi	# x, tmp151
	movl	%edx, -120(%rbp)	# tmp146, %sfp
	movss	-120(%rbp), %xmm1	# %sfp,
	movl	%eax, -120(%rbp)	# tmp147, %sfp
	movss	-120(%rbp), %xmm0	# %sfp,
	movl	%r10d, %edx	# tmp149,
	call	Lawless422	#
	.loc 1 1327 0
	movss	-40(%rbp), %xmm0	# right, tmp152
	ucomiss	.LC46(%rip), %xmm0	#, tmp152
	jbe	.L291	#,
	.loc 1 1329 0
	movl	$0, %eax	#, D.8175
	jmp	.L282	#
.L291:
	.loc 1 1331 0
	movss	-60(%rbp), %xmm0	# fx, fx.28
	xorps	%xmm1, %xmm1	# tmp153
	ucomiss	%xmm1, %xmm0	# tmp153, fx.28
	ja	.L260	#,
.L266:
	.loc 1 1334 0
	movl	$0, -48(%rbp)	#, i
	jmp	.L269	#
.L276:
	.loc 1 1336 0
	movss	-44(%rbp), %xmm0	# left, tmp154
	addss	-40(%rbp), %xmm0	# right, D.8176
	movss	.LC47(%rip), %xmm1	#, tmp156
	divss	%xmm1, %xmm0	# tmp156, tmp155
	movss	%xmm0, -36(%rbp)	# tmp155, mid
	.loc 1 1337 0
	leaq	-56(%rbp), %r9	#, tmp157
	leaq	-60(%rbp), %r8	#, tmp158
	movl	-44(%rbp), %edx	# left, tmp159
	movl	-92(%rbp), %eax	# c, tmp160
	movl	-88(%rbp), %ecx	# z, tmp161
	movl	-84(%rbp), %r10d	# n, tmp162
	movq	-80(%rbp), %rsi	# y, tmp163
	movq	-72(%rbp), %rdi	# x, tmp164
	movl	%edx, -120(%rbp)	# tmp159, %sfp
	movss	-120(%rbp), %xmm1	# %sfp,
	movl	%eax, -120(%rbp)	# tmp160, %sfp
	movss	-120(%rbp), %xmm0	# %sfp,
	movl	%r10d, %edx	# tmp162,
	call	Lawless422	#
	.loc 1 1338 0
	movss	-60(%rbp), %xmm1	# fx, fx.29
	movss	.LC43(%rip), %xmm0	#, tmp165
	andps	%xmm1, %xmm0	# fx.29, D.8176
	movss	-32(%rbp), %xmm1	# tol, tmp166
	ucomiss	%xmm0, %xmm1	# D.8176, tmp166
	jbe	.L292	#,
	.loc 1 1338 0 is_stmt 0 discriminator 1
	jmp	.L272	#
.L292:
	.loc 1 1339 0 is_stmt 1
	movss	-60(%rbp), %xmm0	# fx, fx.30
	xorps	%xmm1, %xmm1	# tmp167
	ucomiss	%xmm1, %xmm0	# tmp167, fx.30
	jbe	.L293	#,
	.loc 1 1339 0 is_stmt 0 discriminator 1
	movl	-36(%rbp), %eax	# mid, tmp168
	movl	%eax, -44(%rbp)	# tmp168, left
	jmp	.L275	#
.L293:
	.loc 1 1340 0 is_stmt 1
	movl	-36(%rbp), %eax	# mid, tmp169
	movl	%eax, -40(%rbp)	# tmp169, right
.L275:
	.loc 1 1334 0
	addl	$1, -48(%rbp)	#, i
.L269:
	.loc 1 1334 0 is_stmt 0 discriminator 1
	cmpl	$99, -48(%rbp)	#, i
	jle	.L276	#,
.L272:
	.loc 1 1342 0 is_stmt 1
	cmpl	$100, -48(%rbp)	#, i
	jne	.L277	#,
	.loc 1 1344 0
	movl	$0, %eax	#, D.8175
	jmp	.L282	#
.L277:
	.loc 1 1346 0
	movl	-36(%rbp), %eax	# mid, tmp170
	movl	%eax, -52(%rbp)	# tmp170, lambda
.L259:
.LBE5:
	.loc 1 1351 0
	movl	$0, %eax	#, tmp171
	movq	%rax, -16(%rbp)	# tmp171, total
	movq	-16(%rbp), %rax	# total, tmp172
	movq	%rax, -24(%rbp)	# tmp172, esum
	.loc 1 1352 0
	movl	$0, -48(%rbp)	#, i
	jmp	.L278	#
.L281:
	.loc 1 1354 0
	cmpq	$0, -80(%rbp)	#, y
	je	.L279	#,
	.loc 1 1354 0 is_stmt 0 discriminator 1
	movl	-48(%rbp), %eax	# i, tmp173
	cltq
	leaq	0(,%rax,4), %rdx	#, D.8178
	movq	-80(%rbp), %rax	# y, tmp174
	addq	%rdx, %rax	# D.8178, D.8179
	movl	(%rax), %eax	# *_68, D.8175
	cvtsi2sd	%eax, %xmm4	# D.8175, iftmp.31
	movsd	%xmm4, -120(%rbp)	# iftmp.31, %sfp
	movq	-120(%rbp), %rax	# %sfp, iftmp.31
	jmp	.L280	#
.L279:
	.loc 1 1354 0 discriminator 2
	movabsq	$4607182418800017408, %rax	#, iftmp.31
.L280:
	.loc 1 1354 0 discriminator 3
	movq	%rax, -8(%rbp)	# iftmp.31, mult
	.loc 1 1355 0 is_stmt 1 discriminator 3
	movss	-52(%rbp), %xmm0	# lambda, D.8177
	cvtps2pd	%xmm0, %xmm0	# D.8177, D.8177
	movsd	.LC28(%rip), %xmm1	#, tmp175
	xorpd	%xmm0, %xmm1	# D.8177, D.8177
	movl	-48(%rbp), %eax	# i, tmp176
	cltq
	leaq	0(,%rax,4), %rdx	#, D.8178
	movq	-72(%rbp), %rax	# x, tmp177
	addq	%rdx, %rax	# D.8178, D.8180
	movss	(%rax), %xmm0	# *_77, D.8176
	unpcklps	%xmm0, %xmm0	# D.8176, D.8176
	cvtps2pd	%xmm0, %xmm0	# D.8176, D.8177
	mulsd	%xmm1, %xmm0	# D.8177, D.8177
	call	exp	#
	mulsd	-8(%rbp), %xmm0	# mult, D.8177
	movsd	-24(%rbp), %xmm1	# esum, tmp179
	addsd	%xmm1, %xmm0	# tmp179, tmp178
	movsd	%xmm0, -24(%rbp)	# tmp178, esum
	.loc 1 1356 0 discriminator 3
	movsd	-16(%rbp), %xmm0	# total, tmp181
	addsd	-8(%rbp), %xmm0	# mult, tmp180
	movsd	%xmm0, -16(%rbp)	# tmp180, total
	.loc 1 1352 0 discriminator 3
	addl	$1, -48(%rbp)	#, i
.L278:
	.loc 1 1352 0 is_stmt 0 discriminator 1
	movl	-48(%rbp), %eax	# i, tmp182
	cmpl	-84(%rbp), %eax	# n, tmp182
	jl	.L281	#,
	.loc 1 1358 0 is_stmt 1
	cvtsi2sd	-88(%rbp), %xmm5	# z, D.8177
	movsd	%xmm5, -120(%rbp)	# D.8177, %sfp
	movss	-52(%rbp), %xmm0	# lambda, D.8177
	cvtps2pd	%xmm0, %xmm0	# D.8177, D.8177
	movsd	.LC28(%rip), %xmm1	#, tmp183
	xorpd	%xmm0, %xmm1	# D.8177, D.8177
	movss	-92(%rbp), %xmm0	# c, D.8177
	cvtps2pd	%xmm0, %xmm0	# D.8177, D.8177
	mulsd	%xmm1, %xmm0	# D.8177, D.8177
	call	exp	#
	mulsd	-120(%rbp), %xmm0	# %sfp, D.8177
	movsd	-24(%rbp), %xmm1	# esum, tmp185
	addsd	%xmm1, %xmm0	# tmp185, tmp184
	movsd	%xmm0, -24(%rbp)	# tmp184, esum
	.loc 1 1359 0
	movsd	-24(%rbp), %xmm0	# esum, tmp186
	divsd	-16(%rbp), %xmm0	# total, D.8177
	call	log	#
	movsd	.LC28(%rip), %xmm1	#, tmp187
	xorpd	%xmm1, %xmm0	# tmp187, D.8177
	movss	-52(%rbp), %xmm1	# lambda, D.8177
	cvtps2pd	%xmm1, %xmm1	# D.8177, D.8177
	divsd	%xmm1, %xmm0	# D.8177, D.8177
	unpcklpd	%xmm0, %xmm0	# D.8177
	cvtpd2ps	%xmm0, %xmm6	# D.8177, tmp209
	movss	%xmm6, -28(%rbp)	# tmp209, mu
	.loc 1 1361 0
	movq	-112(%rbp), %rdx	# ret_lambda, tmp188
	movl	-52(%rbp), %eax	# lambda, tmp189
	movl	%eax, (%rdx)	# tmp189, *ret_lambda_100(D)
	.loc 1 1362 0
	movq	-104(%rbp), %rdx	# ret_mu, tmp190
	movl	-28(%rbp), %eax	# mu, tmp191
	movl	%eax, (%rdx)	# tmp191, *ret_mu_101(D)
	.loc 1 1363 0
	movl	$1, %eax	#, D.8175
.L282:
	.loc 1 1364 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE24:
	.size	EVDCensoredFit, .-EVDCensoredFit
	.section	.rodata
	.align 4
.LC15:
	.long	1065353216
	.align 8
.LC27:
	.long	0
	.long	1072693248
	.align 16
.LC28:
	.long	0
	.long	-2147483648
	.long	0
	.long	0
	.align 4
.LC29:
	.long	0
	.align 16
.LC30:
	.long	2147483648
	.long	0
	.long	0
	.long	0
	.align 4
.LC31:
	.long	1056964608
	.align 8
.LC32:
	.long	2237506163
	.long	1071816596
	.align 4
.LC33:
	.long	1084227584
	.align 8
.LC34:
	.long	0
	.long	1073741824
	.align 8
.LC35:
	.long	0
	.long	1071644672
	.align 8
.LC36:
	.long	2447371381
	.long	1074007442
	.align 8
.LC37:
	.long	1462959061
	.long	-1072910969
	.align 8
.LC38:
	.long	858993459
	.long	1082532659
	.align 8
.LC40:
	.long	2596056904
	.long	1048238066
	.align 4
.LC41:
	.long	925353388
	.align 4
.LC42:
	.long	1045220557
	.align 16
.LC43:
	.long	2147483647
	.long	0
	.long	0
	.long	0
	.align 4
.LC44:
	.long	981668463
	.align 8
.LC45:
	.long	2576980378
	.long	1069128089
	.align 4
.LC46:
	.long	1120403456
	.align 4
.LC47:
	.long	1073741824
	.align 8
.LC48:
	.long	3951369912
	.long	1067366481
	.text
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/include/stdio.h"
	.file 5 "/usr/include/libio.h"
	.file 6 "structs.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x1164
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF122
	.byte	0x1
	.long	.LASF123
	.long	.LASF124
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
	.uleb128 0x2
	.long	.LASF12
	.byte	0x4
	.byte	0x30
	.long	0xa7
	.uleb128 0x7
	.long	.LASF42
	.byte	0xd8
	.byte	0x5
	.byte	0xf6
	.long	0x228
	.uleb128 0x8
	.long	.LASF13
	.byte	0x5
	.byte	0xf7
	.long	0x62
	.byte	0
	.uleb128 0x8
	.long	.LASF14
	.byte	0x5
	.byte	0xfc
	.long	0x8f
	.byte	0x8
	.uleb128 0x8
	.long	.LASF15
	.byte	0x5
	.byte	0xfd
	.long	0x8f
	.byte	0x10
	.uleb128 0x8
	.long	.LASF16
	.byte	0x5
	.byte	0xfe
	.long	0x8f
	.byte	0x18
	.uleb128 0x8
	.long	.LASF17
	.byte	0x5
	.byte	0xff
	.long	0x8f
	.byte	0x20
	.uleb128 0x9
	.long	.LASF18
	.byte	0x5
	.value	0x100
	.long	0x8f
	.byte	0x28
	.uleb128 0x9
	.long	.LASF19
	.byte	0x5
	.value	0x101
	.long	0x8f
	.byte	0x30
	.uleb128 0x9
	.long	.LASF20
	.byte	0x5
	.value	0x102
	.long	0x8f
	.byte	0x38
	.uleb128 0x9
	.long	.LASF21
	.byte	0x5
	.value	0x103
	.long	0x8f
	.byte	0x40
	.uleb128 0x9
	.long	.LASF22
	.byte	0x5
	.value	0x105
	.long	0x8f
	.byte	0x48
	.uleb128 0x9
	.long	.LASF23
	.byte	0x5
	.value	0x106
	.long	0x8f
	.byte	0x50
	.uleb128 0x9
	.long	.LASF24
	.byte	0x5
	.value	0x107
	.long	0x8f
	.byte	0x58
	.uleb128 0x9
	.long	.LASF25
	.byte	0x5
	.value	0x109
	.long	0x260
	.byte	0x60
	.uleb128 0x9
	.long	.LASF26
	.byte	0x5
	.value	0x10b
	.long	0x266
	.byte	0x68
	.uleb128 0x9
	.long	.LASF27
	.byte	0x5
	.value	0x10d
	.long	0x62
	.byte	0x70
	.uleb128 0x9
	.long	.LASF28
	.byte	0x5
	.value	0x111
	.long	0x62
	.byte	0x74
	.uleb128 0x9
	.long	.LASF29
	.byte	0x5
	.value	0x113
	.long	0x70
	.byte	0x78
	.uleb128 0x9
	.long	.LASF30
	.byte	0x5
	.value	0x117
	.long	0x46
	.byte	0x80
	.uleb128 0x9
	.long	.LASF31
	.byte	0x5
	.value	0x118
	.long	0x54
	.byte	0x82
	.uleb128 0x9
	.long	.LASF32
	.byte	0x5
	.value	0x119
	.long	0x26c
	.byte	0x83
	.uleb128 0x9
	.long	.LASF33
	.byte	0x5
	.value	0x11d
	.long	0x27c
	.byte	0x88
	.uleb128 0x9
	.long	.LASF34
	.byte	0x5
	.value	0x126
	.long	0x7b
	.byte	0x90
	.uleb128 0x9
	.long	.LASF35
	.byte	0x5
	.value	0x12f
	.long	0x8d
	.byte	0x98
	.uleb128 0x9
	.long	.LASF36
	.byte	0x5
	.value	0x130
	.long	0x8d
	.byte	0xa0
	.uleb128 0x9
	.long	.LASF37
	.byte	0x5
	.value	0x131
	.long	0x8d
	.byte	0xa8
	.uleb128 0x9
	.long	.LASF38
	.byte	0x5
	.value	0x132
	.long	0x8d
	.byte	0xb0
	.uleb128 0x9
	.long	.LASF39
	.byte	0x5
	.value	0x133
	.long	0x2d
	.byte	0xb8
	.uleb128 0x9
	.long	.LASF40
	.byte	0x5
	.value	0x135
	.long	0x62
	.byte	0xc0
	.uleb128 0x9
	.long	.LASF41
	.byte	0x5
	.value	0x137
	.long	0x282
	.byte	0xc4
	.byte	0
	.uleb128 0xa
	.long	.LASF125
	.byte	0x5
	.byte	0x9b
	.uleb128 0x7
	.long	.LASF43
	.byte	0x18
	.byte	0x5
	.byte	0xa1
	.long	0x260
	.uleb128 0x8
	.long	.LASF44
	.byte	0x5
	.byte	0xa2
	.long	0x260
	.byte	0
	.uleb128 0x8
	.long	.LASF45
	.byte	0x5
	.byte	0xa3
	.long	0x266
	.byte	0x8
	.uleb128 0x8
	.long	.LASF46
	.byte	0x5
	.byte	0xa7
	.long	0x62
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x22f
	.uleb128 0x6
	.byte	0x8
	.long	0xa7
	.uleb128 0xb
	.long	0x95
	.long	0x27c
	.uleb128 0xc
	.long	0x86
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x228
	.uleb128 0xb
	.long	0x95
	.long	0x292
	.uleb128 0xc
	.long	0x86
	.byte	0x13
	.byte	0
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.long	.LASF47
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.long	.LASF48
	.uleb128 0x6
	.byte	0x8
	.long	0x62
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF49
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF50
	.uleb128 0x6
	.byte	0x8
	.long	0x9c
	.uleb128 0x6
	.byte	0x8
	.long	0x292
	.uleb128 0xd
	.long	.LASF51
	.byte	0x40
	.byte	0x6
	.value	0x1a3
	.long	0x36a
	.uleb128 0x9
	.long	.LASF52
	.byte	0x6
	.value	0x1a4
	.long	0x2a0
	.byte	0
	.uleb128 0xe
	.string	"min"
	.byte	0x6
	.value	0x1a5
	.long	0x62
	.byte	0x8
	.uleb128 0xe
	.string	"max"
	.byte	0x6
	.value	0x1a6
	.long	0x62
	.byte	0xc
	.uleb128 0x9
	.long	.LASF53
	.byte	0x6
	.value	0x1a7
	.long	0x62
	.byte	0x10
	.uleb128 0x9
	.long	.LASF54
	.byte	0x6
	.value	0x1a8
	.long	0x62
	.byte	0x14
	.uleb128 0x9
	.long	.LASF55
	.byte	0x6
	.value	0x1a9
	.long	0x62
	.byte	0x18
	.uleb128 0x9
	.long	.LASF56
	.byte	0x6
	.value	0x1aa
	.long	0x62
	.byte	0x1c
	.uleb128 0x9
	.long	.LASF57
	.byte	0x6
	.value	0x1ac
	.long	0x2ba
	.byte	0x20
	.uleb128 0x9
	.long	.LASF58
	.byte	0x6
	.value	0x1ad
	.long	0x62
	.byte	0x28
	.uleb128 0x9
	.long	.LASF59
	.byte	0x6
	.value	0x1ae
	.long	0x36a
	.byte	0x2c
	.uleb128 0x9
	.long	.LASF60
	.byte	0x6
	.value	0x1af
	.long	0x292
	.byte	0x38
	.uleb128 0x9
	.long	.LASF61
	.byte	0x6
	.value	0x1b0
	.long	0x292
	.byte	0x3c
	.byte	0
	.uleb128 0xb
	.long	0x292
	.long	0x37a
	.uleb128 0xc
	.long	0x86
	.byte	0x2
	.byte	0
	.uleb128 0xf
	.long	.LASF87
	.byte	0x1
	.byte	0x3c
	.long	0x3ec
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x3ec
	.uleb128 0x10
	.string	"min"
	.byte	0x1
	.byte	0x3c
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x10
	.string	"max"
	.byte	0x1
	.byte	0x3c
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x11
	.long	.LASF55
	.byte	0x1
	.byte	0x3c
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x12
	.string	"h"
	.byte	0x1
	.byte	0x3e
	.long	0x3ec
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x13
	.long	.LASF62
	.byte	0x1
	.byte	0x3f
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x12
	.string	"i"
	.byte	0x1
	.byte	0x40
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x2c0
	.uleb128 0x14
	.long	.LASF63
	.byte	0x1
	.byte	0x5a
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x41c
	.uleb128 0x10
	.string	"h"
	.byte	0x1
	.byte	0x5a
	.long	0x3ec
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x14
	.long	.LASF64
	.byte	0x1
	.byte	0x66
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x446
	.uleb128 0x10
	.string	"h"
	.byte	0x1
	.byte	0x66
	.long	0x3ec
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x14
	.long	.LASF65
	.byte	0x1
	.byte	0x76
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x4c1
	.uleb128 0x10
	.string	"h"
	.byte	0x1
	.byte	0x76
	.long	0x3ec
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x10
	.string	"sc"
	.byte	0x1
	.byte	0x76
	.long	0x292
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x13
	.long	.LASF66
	.byte	0x1
	.byte	0x78
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x13
	.long	.LASF67
	.byte	0x1
	.byte	0x79
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x13
	.long	.LASF68
	.byte	0x1
	.byte	0x7a
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x13
	.long	.LASF62
	.byte	0x1
	.byte	0x7b
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x12
	.string	"i"
	.byte	0x1
	.byte	0x7c
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x14
	.long	.LASF69
	.byte	0x1
	.byte	0xbd
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x5ac
	.uleb128 0x10
	.string	"fp"
	.byte	0x1
	.byte	0xbd
	.long	0x2b4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x10
	.string	"h"
	.byte	0x1
	.byte	0xbd
	.long	0x3ec
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x13
	.long	.LASF70
	.byte	0x1
	.byte	0xbf
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x13
	.long	.LASF71
	.byte	0x1
	.byte	0xc0
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -156
	.uleb128 0x12
	.string	"num"
	.byte	0x1
	.byte	0xc1
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x12
	.string	"i"
	.byte	0x1
	.byte	0xc2
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0x12
	.string	"idx"
	.byte	0x1
	.byte	0xc2
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x13
	.long	.LASF72
	.byte	0x1
	.byte	0xc3
	.long	0x5ac
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x12
	.string	"pos"
	.byte	0x1
	.byte	0xc4
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x13
	.long	.LASF73
	.byte	0x1
	.byte	0xc5
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0x13
	.long	.LASF74
	.byte	0x1
	.byte	0xc5
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x13
	.long	.LASF75
	.byte	0x1
	.byte	0xc6
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x13
	.long	.LASF76
	.byte	0x1
	.byte	0xc6
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x13
	.long	.LASF77
	.byte	0x1
	.byte	0xc7
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.byte	0
	.uleb128 0xb
	.long	0x95
	.long	0x5bc
	.uleb128 0xc
	.long	0x86
	.byte	0x50
	.byte	0
	.uleb128 0x15
	.long	.LASF78
	.byte	0x1
	.value	0x15c
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x613
	.uleb128 0x16
	.string	"fp"
	.byte	0x1
	.value	0x15c
	.long	0x2b4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x16
	.string	"h"
	.byte	0x1
	.value	0x15c
	.long	0x3ec
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x17
	.string	"sc"
	.byte	0x1
	.value	0x15e
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x17
	.string	"val"
	.byte	0x1
	.value	0x15f
	.long	0x299
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x15
	.long	.LASF79
	.byte	0x1
	.value	0x180
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x679
	.uleb128 0x16
	.string	"fp"
	.byte	0x1
	.value	0x180
	.long	0x2b4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x16
	.string	"h"
	.byte	0x1
	.value	0x180
	.long	0x3ec
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x17
	.string	"sc"
	.byte	0x1
	.value	0x182
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x17
	.string	"cum"
	.byte	0x1
	.value	0x183
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x17
	.string	"val"
	.byte	0x1
	.value	0x184
	.long	0x299
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x15
	.long	.LASF80
	.byte	0x1
	.value	0x1a7
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x6df
	.uleb128 0x16
	.string	"fp"
	.byte	0x1
	.value	0x1a7
	.long	0x2b4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x16
	.string	"h"
	.byte	0x1
	.value	0x1a7
	.long	0x3ec
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x17
	.string	"sc"
	.byte	0x1
	.value	0x1a9
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x17
	.string	"cum"
	.byte	0x1
	.value	0x1aa
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x17
	.string	"val"
	.byte	0x1
	.value	0x1ab
	.long	0x299
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x15
	.long	.LASF81
	.byte	0x1
	.value	0x1dc
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x7b0
	.uleb128 0x16
	.string	"h"
	.byte	0x1
	.value	0x1dc
	.long	0x3ec
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x17
	.string	"d"
	.byte	0x1
	.value	0x1de
	.long	0x2ba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x17
	.string	"x"
	.byte	0x1
	.value	0x1df
	.long	0x2ba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x18
	.long	.LASF82
	.byte	0x1
	.value	0x1e0
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x17
	.string	"sum"
	.byte	0x1
	.value	0x1e1
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x17
	.string	"sc"
	.byte	0x1
	.value	0x1e2
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x17
	.string	"idx"
	.byte	0x1
	.value	0x1e2
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x18
	.long	.LASF83
	.byte	0x1
	.value	0x1e3
	.long	0x292
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x18
	.long	.LASF84
	.byte	0x1
	.value	0x1e3
	.long	0x292
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x18
	.long	.LASF85
	.byte	0x1
	.value	0x1e4
	.long	0x292
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x18
	.long	.LASF86
	.byte	0x1
	.value	0x1e5
	.long	0x292
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x17
	.string	"mu"
	.byte	0x1
	.value	0x1e5
	.long	0x292
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.uleb128 0x19
	.long	.LASF88
	.byte	0x1
	.value	0x22b
	.long	0x62
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x906
	.uleb128 0x16
	.string	"h"
	.byte	0x1
	.value	0x22b
	.long	0x3ec
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x1a
	.long	.LASF89
	.byte	0x1
	.value	0x22b
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x1a
	.long	.LASF90
	.byte	0x1
	.value	0x22b
	.long	0x292
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x17
	.string	"x"
	.byte	0x1
	.value	0x22d
	.long	0x2ba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x17
	.string	"y"
	.byte	0x1
	.value	0x22e
	.long	0x2a0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x17
	.string	"n"
	.byte	0x1
	.value	0x22f
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x17
	.string	"z"
	.byte	0x1
	.value	0x230
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x18
	.long	.LASF82
	.byte	0x1
	.value	0x231
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x18
	.long	.LASF86
	.byte	0x1
	.value	0x232
	.long	0x292
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x17
	.string	"mu"
	.byte	0x1
	.value	0x232
	.long	0x292
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x17
	.string	"sc"
	.byte	0x1
	.value	0x233
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x18
	.long	.LASF73
	.byte	0x1
	.value	0x234
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x18
	.long	.LASF75
	.byte	0x1
	.value	0x235
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x18
	.long	.LASF91
	.byte	0x1
	.value	0x236
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x18
	.long	.LASF92
	.byte	0x1
	.value	0x237
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1b
	.long	.LASF126
	.byte	0x1
	.value	0x293
	.quad	.L105
	.uleb128 0x1c
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.long	0x8e4
	.uleb128 0x17
	.string	"max"
	.byte	0x1
	.value	0x240
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.uleb128 0x1d
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x17
	.string	"psx"
	.byte	0x1
	.value	0x270
	.long	0x299
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x15
	.long	.LASF93
	.byte	0x1
	.value	0x2aa
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x9cc
	.uleb128 0x16
	.string	"h"
	.byte	0x1
	.value	0x2aa
	.long	0x3ec
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x16
	.string	"mu"
	.byte	0x1
	.value	0x2aa
	.long	0x292
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x1a
	.long	.LASF86
	.byte	0x1
	.value	0x2aa
	.long	0x292
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1a
	.long	.LASF73
	.byte	0x1
	.value	0x2ab
	.long	0x292
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x1a
	.long	.LASF75
	.byte	0x1
	.value	0x2ab
	.long	0x292
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x1a
	.long	.LASF94
	.byte	0x1
	.value	0x2ab
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x17
	.string	"sc"
	.byte	0x1
	.value	0x2ad
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x18
	.long	.LASF82
	.byte	0x1
	.value	0x2ae
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x17
	.string	"idx"
	.byte	0x1
	.value	0x2ae
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x18
	.long	.LASF95
	.byte	0x1
	.value	0x2af
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x18
	.long	.LASF96
	.byte	0x1
	.value	0x2b0
	.long	0x292
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x19
	.long	.LASF97
	.byte	0x1
	.value	0x2eb
	.long	0x62
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0xa75
	.uleb128 0x16
	.string	"h"
	.byte	0x1
	.value	0x2eb
	.long	0x3ec
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1a
	.long	.LASF90
	.byte	0x1
	.value	0x2eb
	.long	0x292
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x17
	.string	"sum"
	.byte	0x1
	.value	0x2ed
	.long	0x292
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x18
	.long	.LASF98
	.byte	0x1
	.value	0x2ee
	.long	0x292
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x18
	.long	.LASF96
	.byte	0x1
	.value	0x2ef
	.long	0x292
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x17
	.string	"sc"
	.byte	0x1
	.value	0x2f0
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x18
	.long	.LASF95
	.byte	0x1
	.value	0x2f1
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x18
	.long	.LASF82
	.byte	0x1
	.value	0x2f2
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x17
	.string	"idx"
	.byte	0x1
	.value	0x2f2
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x15
	.long	.LASF99
	.byte	0x1
	.value	0x33e
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0xb0b
	.uleb128 0x16
	.string	"h"
	.byte	0x1
	.value	0x33e
	.long	0x3ec
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1a
	.long	.LASF100
	.byte	0x1
	.value	0x33e
	.long	0x292
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x16
	.string	"sd"
	.byte	0x1
	.value	0x33e
	.long	0x292
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x17
	.string	"sc"
	.byte	0x1
	.value	0x340
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x18
	.long	.LASF82
	.byte	0x1
	.value	0x341
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x17
	.string	"idx"
	.byte	0x1
	.value	0x341
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x18
	.long	.LASF95
	.byte	0x1
	.value	0x342
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x18
	.long	.LASF96
	.byte	0x1
	.value	0x343
	.long	0x292
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x19
	.long	.LASF101
	.byte	0x1
	.value	0x37b
	.long	0x299
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0xb58
	.uleb128 0x16
	.string	"x"
	.byte	0x1
	.value	0x37b
	.long	0x292
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x16
	.string	"mu"
	.byte	0x1
	.value	0x37b
	.long	0x292
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1a
	.long	.LASF86
	.byte	0x1
	.value	0x37b
	.long	0x292
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x19
	.long	.LASF102
	.byte	0x1
	.value	0x389
	.long	0x299
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0xba5
	.uleb128 0x16
	.string	"x"
	.byte	0x1
	.value	0x389
	.long	0x292
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x16
	.string	"mu"
	.byte	0x1
	.value	0x389
	.long	0x292
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1a
	.long	.LASF86
	.byte	0x1
	.value	0x389
	.long	0x292
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x19
	.long	.LASF103
	.byte	0x1
	.value	0x3a0
	.long	0x299
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0xbff
	.uleb128 0x16
	.string	"x"
	.byte	0x1
	.value	0x3a0
	.long	0x292
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x16
	.string	"mu"
	.byte	0x1
	.value	0x3a0
	.long	0x292
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1a
	.long	.LASF86
	.byte	0x1
	.value	0x3a0
	.long	0x292
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x17
	.string	"y"
	.byte	0x1
	.value	0x3a2
	.long	0x299
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x19
	.long	.LASF104
	.byte	0x1
	.value	0x3bd
	.long	0x299
	.quad	.LFB18
	.quad	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0xc66
	.uleb128 0x16
	.string	"x"
	.byte	0x1
	.value	0x3bd
	.long	0x292
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x16
	.string	"mu"
	.byte	0x1
	.value	0x3bd
	.long	0x292
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1a
	.long	.LASF86
	.byte	0x1
	.value	0x3bd
	.long	0x292
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x16
	.string	"N"
	.byte	0x1
	.value	0x3bd
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x17
	.string	"y"
	.byte	0x1
	.value	0x3bf
	.long	0x299
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x19
	.long	.LASF105
	.byte	0x1
	.value	0x3d2
	.long	0x299
	.quad	.LFB19
	.quad	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0xcc0
	.uleb128 0x16
	.string	"x"
	.byte	0x1
	.value	0x3d2
	.long	0x292
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x16
	.string	"mu"
	.byte	0x1
	.value	0x3d2
	.long	0x292
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1a
	.long	.LASF86
	.byte	0x1
	.value	0x3d2
	.long	0x292
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x16
	.string	"N"
	.byte	0x1
	.value	0x3d2
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x19
	.long	.LASF106
	.byte	0x1
	.value	0x3e1
	.long	0x292
	.quad	.LFB20
	.quad	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0xd0d
	.uleb128 0x16
	.string	"mu"
	.byte	0x1
	.value	0x3e1
	.long	0x292
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1a
	.long	.LASF86
	.byte	0x1
	.value	0x3e1
	.long	0x292
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x17
	.string	"p"
	.byte	0x1
	.value	0x3e3
	.long	0x292
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x15
	.long	.LASF107
	.byte	0x1
	.value	0x404
	.quad	.LFB21
	.quad	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.long	0xdee
	.uleb128 0x16
	.string	"x"
	.byte	0x1
	.value	0x404
	.long	0x2ba
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x16
	.string	"y"
	.byte	0x1
	.value	0x404
	.long	0x2a0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x16
	.string	"n"
	.byte	0x1
	.value	0x404
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x1a
	.long	.LASF86
	.byte	0x1
	.value	0x404
	.long	0x292
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x1a
	.long	.LASF108
	.byte	0x1
	.value	0x404
	.long	0x2ba
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x1a
	.long	.LASF109
	.byte	0x1
	.value	0x404
	.long	0x2ba
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x18
	.long	.LASF110
	.byte	0x1
	.value	0x407
	.long	0x299
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x18
	.long	.LASF111
	.byte	0x1
	.value	0x408
	.long	0x299
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x18
	.long	.LASF112
	.byte	0x1
	.value	0x409
	.long	0x299
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x18
	.long	.LASF113
	.byte	0x1
	.value	0x40a
	.long	0x299
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x18
	.long	.LASF114
	.byte	0x1
	.value	0x40b
	.long	0x299
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x18
	.long	.LASF56
	.byte	0x1
	.value	0x40c
	.long	0x299
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x17
	.string	"i"
	.byte	0x1
	.value	0x40d
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.byte	0
	.uleb128 0x15
	.long	.LASF115
	.byte	0x1
	.value	0x43d
	.quad	.LFB22
	.quad	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.long	0xeeb
	.uleb128 0x16
	.string	"x"
	.byte	0x1
	.value	0x43d
	.long	0x2ba
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x16
	.string	"y"
	.byte	0x1
	.value	0x43d
	.long	0x2a0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x16
	.string	"n"
	.byte	0x1
	.value	0x43d
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x16
	.string	"z"
	.byte	0x1
	.value	0x43d
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x16
	.string	"c"
	.byte	0x1
	.value	0x43d
	.long	0x292
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x1a
	.long	.LASF86
	.byte	0x1
	.value	0x43e
	.long	0x292
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x1a
	.long	.LASF108
	.byte	0x1
	.value	0x43e
	.long	0x2ba
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x1a
	.long	.LASF109
	.byte	0x1
	.value	0x43e
	.long	0x2ba
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x18
	.long	.LASF110
	.byte	0x1
	.value	0x440
	.long	0x299
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x18
	.long	.LASF111
	.byte	0x1
	.value	0x441
	.long	0x299
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x18
	.long	.LASF112
	.byte	0x1
	.value	0x442
	.long	0x299
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x18
	.long	.LASF113
	.byte	0x1
	.value	0x443
	.long	0x299
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x18
	.long	.LASF114
	.byte	0x1
	.value	0x444
	.long	0x299
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x18
	.long	.LASF56
	.byte	0x1
	.value	0x445
	.long	0x299
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x17
	.string	"i"
	.byte	0x1
	.value	0x446
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.byte	0
	.uleb128 0x19
	.long	.LASF116
	.byte	0x1
	.value	0x47b
	.long	0x62
	.quad	.LFB23
	.quad	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.long	0x101d
	.uleb128 0x16
	.string	"x"
	.byte	0x1
	.value	0x47b
	.long	0x2ba
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x16
	.string	"c"
	.byte	0x1
	.value	0x47b
	.long	0x2a0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x16
	.string	"n"
	.byte	0x1
	.value	0x47b
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x1a
	.long	.LASF117
	.byte	0x1
	.value	0x47b
	.long	0x2ba
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x1a
	.long	.LASF118
	.byte	0x1
	.value	0x47b
	.long	0x2ba
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x18
	.long	.LASF86
	.byte	0x1
	.value	0x47d
	.long	0x292
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x17
	.string	"mu"
	.byte	0x1
	.value	0x47d
	.long	0x292
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x17
	.string	"fx"
	.byte	0x1
	.value	0x47e
	.long	0x292
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x17
	.string	"dfx"
	.byte	0x1
	.value	0x47f
	.long	0x292
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x18
	.long	.LASF110
	.byte	0x1
	.value	0x480
	.long	0x299
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x18
	.long	.LASF114
	.byte	0x1
	.value	0x481
	.long	0x299
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x18
	.long	.LASF56
	.byte	0x1
	.value	0x482
	.long	0x299
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x17
	.string	"tol"
	.byte	0x1
	.value	0x483
	.long	0x292
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x17
	.string	"i"
	.byte	0x1
	.value	0x484
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1d
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.uleb128 0x18
	.long	.LASF119
	.byte	0x1
	.value	0x49d
	.long	0x292
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x18
	.long	.LASF120
	.byte	0x1
	.value	0x49d
	.long	0x292
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x17
	.string	"mid"
	.byte	0x1
	.value	0x49d
	.long	0x292
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.byte	0
	.uleb128 0x1e
	.long	.LASF121
	.byte	0x1
	.value	0x4f7
	.long	0x62
	.quad	.LFB24
	.quad	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x16
	.string	"x"
	.byte	0x1
	.value	0x4f7
	.long	0x2ba
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x16
	.string	"y"
	.byte	0x1
	.value	0x4f7
	.long	0x2a0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x16
	.string	"n"
	.byte	0x1
	.value	0x4f7
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x16
	.string	"z"
	.byte	0x1
	.value	0x4f7
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x16
	.string	"c"
	.byte	0x1
	.value	0x4f7
	.long	0x292
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x1a
	.long	.LASF117
	.byte	0x1
	.value	0x4f8
	.long	0x2ba
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x1a
	.long	.LASF118
	.byte	0x1
	.value	0x4f8
	.long	0x2ba
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x18
	.long	.LASF86
	.byte	0x1
	.value	0x4fa
	.long	0x292
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x17
	.string	"mu"
	.byte	0x1
	.value	0x4fa
	.long	0x292
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x17
	.string	"fx"
	.byte	0x1
	.value	0x4fb
	.long	0x292
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x17
	.string	"dfx"
	.byte	0x1
	.value	0x4fc
	.long	0x292
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x18
	.long	.LASF110
	.byte	0x1
	.value	0x4fd
	.long	0x299
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x18
	.long	.LASF114
	.byte	0x1
	.value	0x4fe
	.long	0x299
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x18
	.long	.LASF56
	.byte	0x1
	.value	0x4ff
	.long	0x299
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x17
	.string	"tol"
	.byte	0x1
	.value	0x500
	.long	0x292
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x17
	.string	"i"
	.byte	0x1
	.value	0x501
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1d
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.uleb128 0x18
	.long	.LASF119
	.byte	0x1
	.value	0x51a
	.long	0x292
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x18
	.long	.LASF120
	.byte	0x1
	.value	0x51a
	.long	0x292
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x17
	.string	"mid"
	.byte	0x1
	.value	0x51a
	.long	0x292
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.byte	0
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
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
.LASF8:
	.string	"__off_t"
.LASF77:
	.string	"emptybins"
.LASF14:
	.string	"_IO_read_ptr"
.LASF51:
	.string	"histogram_s"
.LASF52:
	.string	"histogram"
.LASF94:
	.string	"ndegrees"
.LASF58:
	.string	"fit_type"
.LASF7:
	.string	"size_t"
.LASF32:
	.string	"_shortbuf"
.LASF90:
	.string	"high_hint"
.LASF126:
	.string	"FITFAILED"
.LASF79:
	.string	"PrintXMGRDistribution"
.LASF20:
	.string	"_IO_buf_base"
.LASF50:
	.string	"long long unsigned int"
.LASF106:
	.string	"EVDrandom"
.LASF121:
	.string	"EVDCensoredFit"
.LASF96:
	.string	"delta"
.LASF86:
	.string	"lambda"
.LASF120:
	.string	"right"
.LASF49:
	.string	"long long int"
.LASF4:
	.string	"signed char"
.LASF73:
	.string	"lowbound"
.LASF57:
	.string	"expect"
.LASF27:
	.string	"_fileno"
.LASF110:
	.string	"esum"
.LASF15:
	.string	"_IO_read_end"
.LASF6:
	.string	"long int"
.LASF116:
	.string	"EVDMaxLikelyFit"
.LASF105:
	.string	"ExtremeValueE"
.LASF13:
	.string	"_flags"
.LASF21:
	.string	"_IO_buf_end"
.LASF30:
	.string	"_cur_column"
.LASF103:
	.string	"ExtremeValueP"
.LASF102:
	.string	"EVDDistribution"
.LASF34:
	.string	"_offset"
.LASF108:
	.string	"ret_f"
.LASF66:
	.string	"score"
.LASF87:
	.string	"AllocHistogram"
.LASF67:
	.string	"moveby"
.LASF43:
	.string	"_IO_marker"
.LASF93:
	.string	"ExtremeValueSetHistogram"
.LASF3:
	.string	"unsigned int"
.LASF92:
	.string	"iteration"
.LASF112:
	.string	"xxesum"
.LASF0:
	.string	"long unsigned int"
.LASF18:
	.string	"_IO_write_ptr"
.LASF78:
	.string	"PrintXMGRHistogram"
.LASF45:
	.string	"_sbuf"
.LASF113:
	.string	"xsum"
.LASF2:
	.string	"short unsigned int"
.LASF64:
	.string	"UnfitHistogram"
.LASF22:
	.string	"_IO_save_base"
.LASF98:
	.string	"sqsum"
.LASF82:
	.string	"hsize"
.LASF33:
	.string	"_lock"
.LASF28:
	.string	"_flags2"
.LASF56:
	.string	"total"
.LASF81:
	.string	"EVDBasicFit"
.LASF10:
	.string	"sizetype"
.LASF95:
	.string	"nbins"
.LASF123:
	.string	"histogram.c"
.LASF59:
	.string	"param"
.LASF80:
	.string	"PrintXMGRRegressionLine"
.LASF125:
	.string	"_IO_lock_t"
.LASF42:
	.string	"_IO_FILE"
.LASF69:
	.string	"PrintASCIIHistogram"
.LASF88:
	.string	"ExtremeValueFitHistogram"
.LASF53:
	.string	"highscore"
.LASF40:
	.string	"_mode"
.LASF47:
	.string	"float"
.LASF60:
	.string	"chisq"
.LASF46:
	.string	"_pos"
.LASF29:
	.string	"_old_offset"
.LASF25:
	.string	"_markers"
.LASF76:
	.string	"highcount"
.LASF99:
	.string	"GaussianSetHistogram"
.LASF1:
	.string	"unsigned char"
.LASF83:
	.string	"slope"
.LASF5:
	.string	"short int"
.LASF26:
	.string	"_chain"
.LASF65:
	.string	"AddToHistogram"
.LASF68:
	.string	"prevsize"
.LASF71:
	.string	"maxbar"
.LASF70:
	.string	"units"
.LASF31:
	.string	"_vtable_offset"
.LASF48:
	.string	"double"
.LASF85:
	.string	"corr"
.LASF104:
	.string	"ExtremeValueP2"
.LASF11:
	.string	"char"
.LASF114:
	.string	"mult"
.LASF109:
	.string	"ret_df"
.LASF54:
	.string	"lowscore"
.LASF63:
	.string	"FreeHistogram"
.LASF72:
	.string	"buffer"
.LASF84:
	.string	"intercept"
.LASF44:
	.string	"_next"
.LASF61:
	.string	"chip"
.LASF9:
	.string	"__off64_t"
.LASF101:
	.string	"EVDDensity"
.LASF16:
	.string	"_IO_read_base"
.LASF24:
	.string	"_IO_save_end"
.LASF74:
	.string	"lowcount"
.LASF100:
	.string	"mean"
.LASF107:
	.string	"Lawless416"
.LASF35:
	.string	"__pad1"
.LASF36:
	.string	"__pad2"
.LASF37:
	.string	"__pad3"
.LASF38:
	.string	"__pad4"
.LASF39:
	.string	"__pad5"
.LASF19:
	.string	"_IO_write_end"
.LASF41:
	.string	"_unused2"
.LASF118:
	.string	"ret_lambda"
.LASF111:
	.string	"xesum"
.LASF97:
	.string	"GaussianFitHistogram"
.LASF122:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF23:
	.string	"_IO_backup_base"
.LASF55:
	.string	"lumpsize"
.LASF62:
	.string	"newsize"
.LASF89:
	.string	"censor"
.LASF124:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/456.hmmer/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF12:
	.string	"FILE"
.LASF115:
	.string	"Lawless422"
.LASF75:
	.string	"highbound"
.LASF91:
	.string	"new_highbound"
.LASF17:
	.string	"_IO_write_base"
.LASF119:
	.string	"left"
.LASF117:
	.string	"ret_mu"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
