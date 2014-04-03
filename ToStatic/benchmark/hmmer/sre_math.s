	.file	"sre_math.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 sre_math.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.globl	Linefit
	.type	Linefit, @function
Linefit:
.LFB2:
	.file 1 "sre_math.c"
	.loc 1 43 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$96, %rsp	#,
	movq	%rdi, -40(%rbp)	# x, x
	movq	%rsi, -48(%rbp)	# y, y
	movl	%edx, -52(%rbp)	# N, N
	movq	%rcx, -64(%rbp)	# ret_a, ret_a
	movq	%r8, -72(%rbp)	# ret_b, ret_b
	movq	%r9, -80(%rbp)	# ret_r, ret_r
	.loc 1 50 0
	movl	.LC0(%rip), %eax	#, tmp116
	movl	%eax, -20(%rbp)	# tmp116, yavg
	movl	-20(%rbp), %eax	# yavg, tmp117
	movl	%eax, -24(%rbp)	# tmp117, xavg
	.loc 1 51 0
	movl	$0, -4(%rbp)	#, i
	jmp	.L2	#
.L3:
	.loc 1 53 0 discriminator 2
	movl	-4(%rbp), %eax	# i, tmp118
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5784
	movq	-40(%rbp), %rax	# x, tmp119
	addq	%rdx, %rax	# D.5784, D.5785
	movss	(%rax), %xmm0	# *_15, D.5786
	movss	-24(%rbp), %xmm1	# xavg, tmp121
	addss	%xmm1, %xmm0	# tmp121, tmp120
	movss	%xmm0, -24(%rbp)	# tmp120, xavg
	.loc 1 54 0 discriminator 2
	movl	-4(%rbp), %eax	# i, tmp122
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5784
	movq	-48(%rbp), %rax	# y, tmp123
	addq	%rdx, %rax	# D.5784, D.5785
	movss	(%rax), %xmm0	# *_21, D.5786
	movss	-20(%rbp), %xmm1	# yavg, tmp125
	addss	%xmm1, %xmm0	# tmp125, tmp124
	movss	%xmm0, -20(%rbp)	# tmp124, yavg
	.loc 1 51 0 discriminator 2
	addl	$1, -4(%rbp)	#, i
.L2:
	.loc 1 51 0 is_stmt 0 discriminator 1
	movl	-4(%rbp), %eax	# i, tmp126
	cmpl	-52(%rbp), %eax	# N, tmp126
	jl	.L3	#,
	.loc 1 56 0 is_stmt 1
	cvtsi2ss	-52(%rbp), %xmm0	# N, D.5786
	movss	-24(%rbp), %xmm1	# xavg, tmp128
	divss	%xmm0, %xmm1	# D.5786, tmp127
	movaps	%xmm1, %xmm0	# tmp127, tmp127
	movss	%xmm0, -24(%rbp)	# tmp127, xavg
	.loc 1 57 0
	cvtsi2ss	-52(%rbp), %xmm0	# N, D.5786
	movss	-20(%rbp), %xmm1	# yavg, tmp130
	divss	%xmm0, %xmm1	# D.5786, tmp129
	movaps	%xmm1, %xmm0	# tmp129, tmp129
	movss	%xmm0, -20(%rbp)	# tmp129, yavg
	.loc 1 59 0
	movl	.LC0(%rip), %eax	#, tmp131
	movl	%eax, -8(%rbp)	# tmp131, sxy
	movl	-8(%rbp), %eax	# sxy, tmp132
	movl	%eax, -12(%rbp)	# tmp132, syy
	movl	-12(%rbp), %eax	# syy, tmp133
	movl	%eax, -16(%rbp)	# tmp133, sxx
	.loc 1 60 0
	movl	$0, -4(%rbp)	#, i
	jmp	.L4	#
.L5:
	.loc 1 62 0 discriminator 2
	movl	-4(%rbp), %eax	# i, tmp134
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5784
	movq	-40(%rbp), %rax	# x, tmp135
	addq	%rdx, %rax	# D.5784, D.5785
	movss	(%rax), %xmm0	# *_35, D.5786
	movaps	%xmm0, %xmm1	# D.5786, D.5786
	subss	-24(%rbp), %xmm1	# xavg, D.5786
	movl	-4(%rbp), %eax	# i, tmp136
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5784
	movq	-40(%rbp), %rax	# x, tmp137
	addq	%rdx, %rax	# D.5784, D.5785
	movss	(%rax), %xmm0	# *_40, D.5786
	subss	-24(%rbp), %xmm0	# xavg, D.5786
	mulss	%xmm1, %xmm0	# D.5786, D.5786
	movss	-16(%rbp), %xmm1	# sxx, tmp139
	addss	%xmm1, %xmm0	# tmp139, tmp138
	movss	%xmm0, -16(%rbp)	# tmp138, sxx
	.loc 1 63 0 discriminator 2
	movl	-4(%rbp), %eax	# i, tmp140
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5784
	movq	-48(%rbp), %rax	# y, tmp141
	addq	%rdx, %rax	# D.5784, D.5785
	movss	(%rax), %xmm0	# *_47, D.5786
	movaps	%xmm0, %xmm1	# D.5786, D.5786
	subss	-20(%rbp), %xmm1	# yavg, D.5786
	movl	-4(%rbp), %eax	# i, tmp142
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5784
	movq	-48(%rbp), %rax	# y, tmp143
	addq	%rdx, %rax	# D.5784, D.5785
	movss	(%rax), %xmm0	# *_52, D.5786
	subss	-24(%rbp), %xmm0	# xavg, D.5786
	mulss	%xmm1, %xmm0	# D.5786, D.5786
	movss	-12(%rbp), %xmm1	# syy, tmp145
	addss	%xmm1, %xmm0	# tmp145, tmp144
	movss	%xmm0, -12(%rbp)	# tmp144, syy
	.loc 1 64 0 discriminator 2
	movl	-4(%rbp), %eax	# i, tmp146
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5784
	movq	-40(%rbp), %rax	# x, tmp147
	addq	%rdx, %rax	# D.5784, D.5785
	movss	(%rax), %xmm0	# *_59, D.5786
	movaps	%xmm0, %xmm1	# D.5786, D.5786
	subss	-24(%rbp), %xmm1	# xavg, D.5786
	movl	-4(%rbp), %eax	# i, tmp148
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5784
	movq	-48(%rbp), %rax	# y, tmp149
	addq	%rdx, %rax	# D.5784, D.5785
	movss	(%rax), %xmm0	# *_64, D.5786
	subss	-20(%rbp), %xmm0	# yavg, D.5786
	mulss	%xmm1, %xmm0	# D.5786, D.5786
	movss	-8(%rbp), %xmm1	# sxy, tmp151
	addss	%xmm1, %xmm0	# tmp151, tmp150
	movss	%xmm0, -8(%rbp)	# tmp150, sxy
	.loc 1 60 0 discriminator 2
	addl	$1, -4(%rbp)	#, i
.L4:
	.loc 1 60 0 is_stmt 0 discriminator 1
	movl	-4(%rbp), %eax	# i, tmp152
	cmpl	-52(%rbp), %eax	# N, tmp152
	jl	.L5	#,
	.loc 1 66 0 is_stmt 1
	movss	-8(%rbp), %xmm0	# sxy, tmp153
	divss	-16(%rbp), %xmm0	# sxx, D.5786
	movq	-72(%rbp), %rax	# ret_b, tmp154
	movss	%xmm0, (%rax)	# D.5786, *ret_b_71(D)
	.loc 1 67 0
	movq	-72(%rbp), %rax	# ret_b, tmp155
	movss	(%rax), %xmm0	# *ret_b_71(D), D.5786
	mulss	-24(%rbp), %xmm0	# xavg, D.5786
	movss	-20(%rbp), %xmm1	# yavg, tmp156
	subss	%xmm0, %xmm1	# D.5786, D.5786
	movaps	%xmm1, %xmm0	# D.5786, D.5786
	movq	-64(%rbp), %rax	# ret_a, tmp157
	movss	%xmm0, (%rax)	# D.5786, *ret_a_75(D)
	.loc 1 68 0
	movss	-8(%rbp), %xmm2	# sxy, D.5787
	cvtps2pd	%xmm2, %xmm2	# D.5787, D.5787
	movsd	%xmm2, -88(%rbp)	# D.5787, %sfp
	movss	-16(%rbp), %xmm0	# sxx, D.5787
	cvtps2pd	%xmm0, %xmm0	# D.5787, D.5787
	call	sqrt	#
	movsd	%xmm0, -96(%rbp)	#, %sfp
	movss	-12(%rbp), %xmm0	# syy, D.5787
	cvtps2pd	%xmm0, %xmm0	# D.5787, D.5787
	call	sqrt	#
	mulsd	-96(%rbp), %xmm0	# %sfp, D.5787
	movsd	-88(%rbp), %xmm2	# %sfp, D.5787
	divsd	%xmm0, %xmm2	# D.5787, D.5787
	movapd	%xmm2, %xmm0	# D.5787, D.5787
	unpcklpd	%xmm0, %xmm0	# D.5787
	cvtpd2ps	%xmm0, %xmm0	# D.5787, D.5786
	movq	-80(%rbp), %rax	# ret_r, tmp158
	movss	%xmm0, (%rax)	# D.5786, *ret_r_84(D)
	.loc 1 69 0
	movl	$1, %eax	#, D.5788
	.loc 1 70 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	Linefit, .-Linefit
	.globl	WeightedLinefit
	.type	WeightedLinefit, @function
WeightedLinefit:
.LFB3:
	.loc 1 86 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$8, %rsp	#,
	movq	%rdi, -88(%rbp)	# x, x
	movq	%rsi, -96(%rbp)	# y, y
	movq	%rdx, -104(%rbp)	# var, var
	movl	%ecx, -108(%rbp)	# N, N
	movq	%r8, -120(%rbp)	# ret_m, ret_m
	movq	%r9, -128(%rbp)	# ret_b, ret_b
	.loc 1 94 0
	movl	$0, %eax	#, tmp125
	movq	%rax, -32(%rbp)	# tmp125, sxy
	movq	-32(%rbp), %rax	# sxy, tmp126
	movq	%rax, -40(%rbp)	# tmp126, sxx
	movq	-40(%rbp), %rax	# sxx, tmp127
	movq	%rax, -48(%rbp)	# tmp127, sy
	movq	-48(%rbp), %rax	# sy, tmp128
	movq	%rax, -56(%rbp)	# tmp128, sx
	movq	-56(%rbp), %rax	# sx, tmp129
	movq	%rax, -64(%rbp)	# tmp129, s
	.loc 1 95 0
	movl	$0, -68(%rbp)	#, i
	jmp	.L8	#
.L9:
	.loc 1 97 0 discriminator 2
	movl	-68(%rbp), %eax	# i, tmp130
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5790
	movq	-104(%rbp), %rax	# var, tmp131
	addq	%rdx, %rax	# D.5790, D.5791
	movss	(%rax), %xmm0	# *_17, D.5792
	unpcklps	%xmm0, %xmm0	# D.5792, D.5792
	cvtps2pd	%xmm0, %xmm0	# D.5792, D.5793
	movsd	.LC2(%rip), %xmm1	#, tmp132
	divsd	%xmm0, %xmm1	# D.5793, D.5793
	movapd	%xmm1, %xmm0	# D.5793, D.5793
	movsd	-64(%rbp), %xmm1	# s, tmp134
	addsd	%xmm1, %xmm0	# tmp134, tmp133
	movsd	%xmm0, -64(%rbp)	# tmp133, s
	.loc 1 98 0 discriminator 2
	movl	-68(%rbp), %eax	# i, tmp135
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5790
	movq	-88(%rbp), %rax	# x, tmp136
	addq	%rdx, %rax	# D.5790, D.5791
	movss	(%rax), %xmm0	# *_25, D.5792
	movl	-68(%rbp), %eax	# i, tmp137
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5790
	movq	-104(%rbp), %rax	# var, tmp138
	addq	%rdx, %rax	# D.5790, D.5791
	movss	(%rax), %xmm1	# *_29, D.5792
	divss	%xmm1, %xmm0	# D.5792, D.5792
	unpcklps	%xmm0, %xmm0	# D.5792, D.5792
	cvtps2pd	%xmm0, %xmm0	# D.5792, D.5793
	movsd	-56(%rbp), %xmm1	# sx, tmp140
	addsd	%xmm1, %xmm0	# tmp140, tmp139
	movsd	%xmm0, -56(%rbp)	# tmp139, sx
	.loc 1 99 0 discriminator 2
	movl	-68(%rbp), %eax	# i, tmp141
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5790
	movq	-96(%rbp), %rax	# y, tmp142
	addq	%rdx, %rax	# D.5790, D.5791
	movss	(%rax), %xmm0	# *_37, D.5792
	movl	-68(%rbp), %eax	# i, tmp143
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5790
	movq	-104(%rbp), %rax	# var, tmp144
	addq	%rdx, %rax	# D.5790, D.5791
	movss	(%rax), %xmm1	# *_41, D.5792
	divss	%xmm1, %xmm0	# D.5792, D.5792
	unpcklps	%xmm0, %xmm0	# D.5792, D.5792
	cvtps2pd	%xmm0, %xmm0	# D.5792, D.5793
	movsd	-48(%rbp), %xmm1	# sy, tmp146
	addsd	%xmm1, %xmm0	# tmp146, tmp145
	movsd	%xmm0, -48(%rbp)	# tmp145, sy
	.loc 1 100 0 discriminator 2
	movl	-68(%rbp), %eax	# i, tmp147
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5790
	movq	-88(%rbp), %rax	# x, tmp148
	addq	%rdx, %rax	# D.5790, D.5791
	movss	(%rax), %xmm1	# *_48, D.5792
	movl	-68(%rbp), %eax	# i, tmp149
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5790
	movq	-88(%rbp), %rax	# x, tmp150
	addq	%rdx, %rax	# D.5790, D.5791
	movss	(%rax), %xmm0	# *_52, D.5792
	mulss	%xmm1, %xmm0	# D.5792, D.5792
	movl	-68(%rbp), %eax	# i, tmp151
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5790
	movq	-104(%rbp), %rax	# var, tmp152
	addq	%rdx, %rax	# D.5790, D.5791
	movss	(%rax), %xmm1	# *_57, D.5792
	divss	%xmm1, %xmm0	# D.5792, D.5792
	unpcklps	%xmm0, %xmm0	# D.5792, D.5792
	cvtps2pd	%xmm0, %xmm0	# D.5792, D.5793
	movsd	-40(%rbp), %xmm1	# sxx, tmp154
	addsd	%xmm1, %xmm0	# tmp154, tmp153
	movsd	%xmm0, -40(%rbp)	# tmp153, sxx
	.loc 1 101 0 discriminator 2
	movl	-68(%rbp), %eax	# i, tmp155
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5790
	movq	-88(%rbp), %rax	# x, tmp156
	addq	%rdx, %rax	# D.5790, D.5791
	movss	(%rax), %xmm1	# *_64, D.5792
	movl	-68(%rbp), %eax	# i, tmp157
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5790
	movq	-96(%rbp), %rax	# y, tmp158
	addq	%rdx, %rax	# D.5790, D.5791
	movss	(%rax), %xmm0	# *_68, D.5792
	mulss	%xmm1, %xmm0	# D.5792, D.5792
	movl	-68(%rbp), %eax	# i, tmp159
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5790
	movq	-104(%rbp), %rax	# var, tmp160
	addq	%rdx, %rax	# D.5790, D.5791
	movss	(%rax), %xmm1	# *_73, D.5792
	divss	%xmm1, %xmm0	# D.5792, D.5792
	unpcklps	%xmm0, %xmm0	# D.5792, D.5792
	cvtps2pd	%xmm0, %xmm0	# D.5792, D.5793
	movsd	-32(%rbp), %xmm1	# sxy, tmp162
	addsd	%xmm1, %xmm0	# tmp162, tmp161
	movsd	%xmm0, -32(%rbp)	# tmp161, sxy
	.loc 1 95 0 discriminator 2
	addl	$1, -68(%rbp)	#, i
.L8:
	.loc 1 95 0 is_stmt 0 discriminator 1
	movl	-68(%rbp), %eax	# i, tmp163
	cmpl	-108(%rbp), %eax	# N, tmp163
	jl	.L9	#,
	.loc 1 104 0 is_stmt 1
	movsd	-64(%rbp), %xmm0	# s, tmp164
	mulsd	-40(%rbp), %xmm0	# sxx, D.5793
	movsd	-56(%rbp), %xmm1	# sx, tmp165
	mulsd	-56(%rbp), %xmm1	# sx, D.5793
	subsd	%xmm1, %xmm0	# D.5793, tmp166
	movsd	%xmm0, -24(%rbp)	# tmp166, delta
	.loc 1 105 0
	movsd	-40(%rbp), %xmm0	# sxx, tmp167
	mulsd	-48(%rbp), %xmm0	# sy, D.5793
	movsd	-56(%rbp), %xmm1	# sx, tmp168
	mulsd	-32(%rbp), %xmm1	# sxy, D.5793
	subsd	%xmm1, %xmm0	# D.5793, D.5793
	divsd	-24(%rbp), %xmm0	# delta, tmp169
	movsd	%xmm0, -16(%rbp)	# tmp169, b
	.loc 1 106 0
	movsd	-64(%rbp), %xmm0	# s, tmp170
	mulsd	-32(%rbp), %xmm0	# sxy, D.5793
	movsd	-56(%rbp), %xmm1	# sx, tmp171
	mulsd	-48(%rbp), %xmm1	# sy, D.5793
	subsd	%xmm1, %xmm0	# D.5793, D.5793
	divsd	-24(%rbp), %xmm0	# delta, tmp172
	movsd	%xmm0, -8(%rbp)	# tmp172, m
	.loc 1 108 0
	movsd	-8(%rbp), %xmm0	# m, D.5792
	cvtpd2ps	%xmm0, %xmm0	# D.5792, D.5792
	movq	-120(%rbp), %rax	# ret_m, tmp173
	movss	%xmm0, (%rax)	# D.5792, *ret_m_91(D)
	.loc 1 109 0
	movsd	-16(%rbp), %xmm0	# b, D.5792
	cvtpd2ps	%xmm0, %xmm0	# D.5792, D.5792
	movq	-128(%rbp), %rax	# ret_b, tmp174
	movss	%xmm0, (%rax)	# D.5792, *ret_b_93(D)
	.loc 1 110 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	WeightedLinefit, .-WeightedLinefit
	.globl	Gammln
	.type	Gammln, @function
Gammln:
.LFB4:
	.loc 1 125 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movsd	%xmm0, -56(%rbp)	# x, x
	.loc 1 147 0
	xorpd	%xmm0, %xmm0	# tmp68
	ucomisd	-56(%rbp), %xmm0	# x, tmp68
	jb	.L17	#,
	.loc 1 147 0 is_stmt 0 discriminator 1
	movabsq	$4696837138094751744, %rax	#, D.5794
	jmp	.L13	#
.L17:
	.loc 1 149 0 is_stmt 1
	movsd	-56(%rbp), %xmm0	# x, tmp70
	movsd	.LC2(%rip), %xmm1	#, tmp71
	subsd	%xmm1, %xmm0	# tmp71, tmp69
	movsd	%xmm0, -16(%rbp)	# tmp69, xx
	.loc 1 150 0
	movsd	-16(%rbp), %xmm1	# xx, tmp73
	movsd	.LC4(%rip), %xmm0	#, tmp74
	addsd	%xmm1, %xmm0	# tmp73, tmp72
	movsd	%xmm0, -32(%rbp)	# tmp72, tmp
	movq	-32(%rbp), %rax	# tmp, tmp75
	movq	%rax, -8(%rbp)	# tmp75, tx
	.loc 1 151 0
	movabsq	$4607182418800017408, %rax	#, tmp76
	movq	%rax, -24(%rbp)	# tmp76, value
	.loc 1 152 0
	movl	$10, -36(%rbp)	#, i
	jmp	.L14	#
.L15:
	.loc 1 154 0 discriminator 2
	movl	-36(%rbp), %eax	# i, tmp78
	cltq
	movsd	cof.5449(,%rax,8), %xmm0	# cof, D.5794
	divsd	-32(%rbp), %xmm0	# tmp, D.5794
	movsd	-24(%rbp), %xmm1	# value, tmp80
	addsd	%xmm1, %xmm0	# tmp80, tmp79
	movsd	%xmm0, -24(%rbp)	# tmp79, value
	.loc 1 155 0 discriminator 2
	movsd	-32(%rbp), %xmm0	# tmp, tmp82
	movsd	.LC2(%rip), %xmm1	#, tmp83
	subsd	%xmm1, %xmm0	# tmp83, tmp81
	movsd	%xmm0, -32(%rbp)	# tmp81, tmp
	.loc 1 152 0 discriminator 2
	subl	$1, -36(%rbp)	#, i
.L14:
	.loc 1 152 0 is_stmt 0 discriminator 1
	cmpl	$0, -36(%rbp)	#, i
	jns	.L15	#,
	.loc 1 157 0 is_stmt 1
	movq	-24(%rbp), %rax	# value, tmp84
	movq	%rax, -64(%rbp)	# tmp84, %sfp
	movsd	-64(%rbp), %xmm0	# %sfp,
	call	log	#
	movsd	%xmm0, -64(%rbp)	#, %sfp
	movq	-64(%rbp), %rax	# %sfp, tmp85
	movq	%rax, -24(%rbp)	# tmp85, value
	.loc 1 158 0
	movsd	-8(%rbp), %xmm1	# tx, tmp87
	movsd	.LC5(%rip), %xmm0	#, tmp88
	addsd	%xmm1, %xmm0	# tmp87, tmp86
	movsd	%xmm0, -8(%rbp)	# tmp86, tx
	.loc 1 159 0
	movsd	-16(%rbp), %xmm1	# xx, tmp89
	movsd	.LC5(%rip), %xmm0	#, tmp90
	addsd	%xmm0, %xmm1	# tmp90, D.5794
	movsd	%xmm1, -64(%rbp)	# D.5794, %sfp
	movq	-8(%rbp), %rax	# tx, tmp91
	movq	%rax, -72(%rbp)	# tmp91, %sfp
	movsd	-72(%rbp), %xmm0	# %sfp,
	call	log	#
	mulsd	-64(%rbp), %xmm0	# %sfp, D.5794
	movsd	.LC6(%rip), %xmm1	#, tmp92
	addsd	%xmm1, %xmm0	# tmp92, D.5794
	subsd	-8(%rbp), %xmm0	# tx, D.5794
	movsd	-24(%rbp), %xmm1	# value, tmp94
	addsd	%xmm1, %xmm0	# tmp94, tmp93
	movsd	%xmm0, -24(%rbp)	# tmp93, value
	.loc 1 160 0
	movq	-24(%rbp), %rax	# value, D.5794
.L13:
	.loc 1 161 0
	movq	%rax, -64(%rbp)	# <retval>, %sfp
	movsd	-64(%rbp), %xmm0	# %sfp,
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	Gammln, .-Gammln
	.section	.rodata
.LC7:
	.string	"sre_math.c"
	.text
	.globl	FMX2Alloc
	.type	FMX2Alloc, @function
FMX2Alloc:
.LFB5:
	.loc 1 168 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	%edi, -20(%rbp)	# rows, rows
	movl	%esi, -24(%rbp)	# cols, cols
	.loc 1 172 0
	movl	-20(%rbp), %eax	# rows, tmp76
	cltq
	salq	$3, %rax	#, D.5795
	movq	%rax, %rdx	# D.5795,
	movl	$172, %esi	#,
	movl	$.LC7, %edi	#,
	call	sre_malloc	#
	movq	%rax, -8(%rbp)	# tmp77, mx
	.loc 1 173 0
	movl	-20(%rbp), %eax	# rows, tmp78
	movslq	%eax, %rdx	# tmp78, D.5795
	movl	-24(%rbp), %eax	# cols, tmp79
	cltq
	imulq	%rdx, %rax	# D.5795, D.5795
	salq	$2, %rax	#, D.5795
	movq	%rax, %rdx	# D.5795,
	movl	$173, %esi	#,
	movl	$.LC7, %edi	#,
	call	sre_malloc	#
	movq	-8(%rbp), %rdx	# mx, tmp80
	movq	%rax, (%rdx)	# D.5796, *mx_5
	.loc 1 174 0
	movl	$1, -12(%rbp)	#, r
	jmp	.L19	#
.L20:
	.loc 1 175 0 discriminator 2
	movl	-12(%rbp), %eax	# r, tmp81
	cltq
	leaq	0(,%rax,8), %rdx	#, D.5795
	movq	-8(%rbp), %rax	# mx, tmp82
	addq	%rax, %rdx	# tmp82, D.5797
	movq	-8(%rbp), %rax	# mx, tmp83
	movq	(%rax), %rcx	# *mx_5, D.5798
	movl	-12(%rbp), %eax	# r, tmp84
	imull	-24(%rbp), %eax	# cols, D.5799
	cltq
	salq	$2, %rax	#, D.5795
	addq	%rcx, %rax	# D.5798, D.5798
	movq	%rax, (%rdx)	# D.5798, *_15
	.loc 1 174 0 discriminator 2
	addl	$1, -12(%rbp)	#, r
.L19:
	.loc 1 174 0 is_stmt 0 discriminator 1
	movl	-12(%rbp), %eax	# r, tmp85
	cmpl	-20(%rbp), %eax	# rows, tmp85
	jl	.L20	#,
	.loc 1 176 0 is_stmt 1
	movq	-8(%rbp), %rax	# mx, D.5797
	.loc 1 177 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	FMX2Alloc, .-FMX2Alloc
	.globl	FMX2Free
	.type	FMX2Free, @function
FMX2Free:
.LFB6:
	.loc 1 180 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# mx, mx
	.loc 1 181 0
	movq	-8(%rbp), %rax	# mx, tmp60
	movq	(%rax), %rax	# *mx_1(D), D.5801
	movq	%rax, %rdi	# D.5801,
	call	free	#
	.loc 1 182 0
	movq	-8(%rbp), %rax	# mx, tmp61
	movq	%rax, %rdi	# tmp61,
	call	free	#
	.loc 1 183 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	FMX2Free, .-FMX2Free
	.globl	DMX2Alloc
	.type	DMX2Alloc, @function
DMX2Alloc:
.LFB7:
	.loc 1 186 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	%edi, -20(%rbp)	# rows, rows
	movl	%esi, -24(%rbp)	# cols, cols
	.loc 1 190 0
	movl	-20(%rbp), %eax	# rows, tmp76
	cltq
	salq	$3, %rax	#, D.5802
	movq	%rax, %rdx	# D.5802,
	movl	$190, %esi	#,
	movl	$.LC7, %edi	#,
	call	sre_malloc	#
	movq	%rax, -8(%rbp)	# tmp77, mx
	.loc 1 191 0
	movl	-20(%rbp), %eax	# rows, tmp78
	movslq	%eax, %rdx	# tmp78, D.5802
	movl	-24(%rbp), %eax	# cols, tmp79
	cltq
	imulq	%rdx, %rax	# D.5802, D.5802
	salq	$3, %rax	#, D.5802
	movq	%rax, %rdx	# D.5802,
	movl	$191, %esi	#,
	movl	$.LC7, %edi	#,
	call	sre_malloc	#
	movq	-8(%rbp), %rdx	# mx, tmp80
	movq	%rax, (%rdx)	# D.5803, *mx_5
	.loc 1 192 0
	movl	$1, -12(%rbp)	#, r
	jmp	.L24	#
.L25:
	.loc 1 193 0 discriminator 2
	movl	-12(%rbp), %eax	# r, tmp81
	cltq
	leaq	0(,%rax,8), %rdx	#, D.5802
	movq	-8(%rbp), %rax	# mx, tmp82
	addq	%rax, %rdx	# tmp82, D.5804
	movq	-8(%rbp), %rax	# mx, tmp83
	movq	(%rax), %rcx	# *mx_5, D.5805
	movl	-12(%rbp), %eax	# r, tmp84
	imull	-24(%rbp), %eax	# cols, D.5806
	cltq
	salq	$3, %rax	#, D.5802
	addq	%rcx, %rax	# D.5805, D.5805
	movq	%rax, (%rdx)	# D.5805, *_15
	.loc 1 192 0 discriminator 2
	addl	$1, -12(%rbp)	#, r
.L24:
	.loc 1 192 0 is_stmt 0 discriminator 1
	movl	-12(%rbp), %eax	# r, tmp85
	cmpl	-20(%rbp), %eax	# rows, tmp85
	jl	.L25	#,
	.loc 1 194 0 is_stmt 1
	movq	-8(%rbp), %rax	# mx, D.5804
	.loc 1 195 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	DMX2Alloc, .-DMX2Alloc
	.globl	DMX2Free
	.type	DMX2Free, @function
DMX2Free:
.LFB8:
	.loc 1 198 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# mx, mx
	.loc 1 199 0
	movq	-8(%rbp), %rax	# mx, tmp60
	movq	(%rax), %rax	# *mx_1(D), D.5807
	movq	%rax, %rdi	# D.5807,
	call	free	#
	.loc 1 200 0
	movq	-8(%rbp), %rax	# mx, tmp61
	movq	%rax, %rdi	# tmp61,
	call	free	#
	.loc 1 201 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	DMX2Free, .-DMX2Free
	.globl	FMX2Multiply
	.type	FMX2Multiply, @function
FMX2Multiply:
.LFB9:
	.loc 1 212 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# A, A
	movq	%rsi, -32(%rbp)	# B, B
	movq	%rdx, -40(%rbp)	# C, C
	movl	%ecx, -44(%rbp)	# m, m
	movl	%r8d, -48(%rbp)	# p, p
	movl	%r9d, -52(%rbp)	# n, n
	.loc 1 215 0
	movl	$0, -12(%rbp)	#, i
	jmp	.L29	#
.L34:
	.loc 1 216 0
	movl	$0, -8(%rbp)	#, j
	jmp	.L30	#
.L33:
	.loc 1 218 0
	movl	-12(%rbp), %eax	# i, tmp99
	cltq
	leaq	0(,%rax,8), %rdx	#, D.5808
	movq	-40(%rbp), %rax	# C, tmp100
	addq	%rdx, %rax	# D.5808, D.5809
	movq	(%rax), %rax	# *_11, D.5810
	movl	-8(%rbp), %edx	# j, tmp101
	movslq	%edx, %rdx	# tmp101, D.5808
	salq	$2, %rdx	#, D.5808
	addq	%rax, %rdx	# D.5810, D.5810
	movl	.LC0(%rip), %eax	#, tmp102
	movl	%eax, (%rdx)	# tmp102, *_15
	.loc 1 219 0
	movl	$0, -4(%rbp)	#, k
	jmp	.L31	#
.L32:
	.loc 1 220 0 discriminator 2
	movl	-12(%rbp), %eax	# i, tmp103
	cltq
	leaq	0(,%rax,8), %rdx	#, D.5808
	movq	-40(%rbp), %rax	# C, tmp104
	addq	%rdx, %rax	# D.5808, D.5809
	movq	(%rax), %rax	# *_20, D.5810
	movl	-8(%rbp), %edx	# j, tmp105
	movslq	%edx, %rdx	# tmp105, D.5808
	salq	$2, %rdx	#, D.5808
	addq	%rdx, %rax	# D.5808, D.5810
	movl	-12(%rbp), %edx	# i, tmp106
	movslq	%edx, %rdx	# tmp106, D.5808
	leaq	0(,%rdx,8), %rcx	#, D.5808
	movq	-40(%rbp), %rdx	# C, tmp107
	addq	%rcx, %rdx	# D.5808, D.5809
	movq	(%rdx), %rdx	# *_27, D.5810
	movl	-8(%rbp), %ecx	# j, tmp108
	movslq	%ecx, %rcx	# tmp108, D.5808
	salq	$2, %rcx	#, D.5808
	addq	%rcx, %rdx	# D.5808, D.5810
	movss	(%rdx), %xmm1	# *_31, D.5811
	movl	-12(%rbp), %edx	# i, tmp109
	movslq	%edx, %rdx	# tmp109, D.5808
	leaq	0(,%rdx,8), %rcx	#, D.5808
	movq	-24(%rbp), %rdx	# A, tmp110
	addq	%rcx, %rdx	# D.5808, D.5809
	movq	(%rdx), %rdx	# *_36, D.5810
	movl	-48(%rbp), %ecx	# p, tmp111
	movslq	%ecx, %rcx	# tmp111, D.5808
	salq	$2, %rcx	#, D.5808
	addq	%rcx, %rdx	# D.5808, D.5810
	movss	(%rdx), %xmm2	# *_40, D.5811
	movl	-48(%rbp), %edx	# p, tmp112
	movslq	%edx, %rdx	# tmp112, D.5808
	leaq	0(,%rdx,8), %rcx	#, D.5808
	movq	-32(%rbp), %rdx	# B, tmp113
	addq	%rcx, %rdx	# D.5808, D.5809
	movq	(%rdx), %rdx	# *_45, D.5810
	movl	-8(%rbp), %ecx	# j, tmp114
	movslq	%ecx, %rcx	# tmp114, D.5808
	salq	$2, %rcx	#, D.5808
	addq	%rcx, %rdx	# D.5808, D.5810
	movss	(%rdx), %xmm0	# *_49, D.5811
	mulss	%xmm2, %xmm0	# D.5811, D.5811
	addss	%xmm1, %xmm0	# D.5811, D.5811
	movss	%xmm0, (%rax)	# D.5811, *_24
	.loc 1 219 0 discriminator 2
	addl	$1, -4(%rbp)	#, k
.L31:
	.loc 1 219 0 is_stmt 0 discriminator 1
	movl	-4(%rbp), %eax	# k, tmp115
	cmpl	-48(%rbp), %eax	# p, tmp115
	jl	.L32	#,
	.loc 1 216 0 is_stmt 1
	addl	$1, -8(%rbp)	#, j
.L30:
	.loc 1 216 0 is_stmt 0 discriminator 1
	movl	-8(%rbp), %eax	# j, tmp116
	cmpl	-52(%rbp), %eax	# n, tmp116
	jl	.L33	#,
	.loc 1 215 0 is_stmt 1
	addl	$1, -12(%rbp)	#, i
.L29:
	.loc 1 215 0 is_stmt 0 discriminator 1
	movl	-12(%rbp), %eax	# i, tmp117
	cmpl	-44(%rbp), %eax	# m, tmp117
	jl	.L34	#,
	.loc 1 222 0 is_stmt 1
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	FMX2Multiply, .-FMX2Multiply
	.section	.rodata
	.align 8
.LC8:
	.string	"IncompleteGamma(): a must be > 0"
	.align 8
.LC9:
	.string	"IncompleteGamma(): x must be >= 0"
	.align 8
.LC12:
	.string	"IncompleteGamma(): failed to converge using continued fraction approx"
	.align 8
.LC13:
	.string	"IncompleteGamma(): failed to converge using series approx"
	.text
	.globl	IncompleteGamma
	.type	IncompleteGamma, @function
IncompleteGamma:
.LFB10:
	.loc 1 250 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$96, %rsp	#,
	movsd	%xmm0, -72(%rbp)	# a, a
	movsd	%xmm1, -80(%rbp)	# x, x
	.loc 1 253 0
	xorpd	%xmm0, %xmm0	# tmp95
	ucomisd	-72(%rbp), %xmm0	# a, tmp95
	jb	.L36	#,
	.loc 1 253 0 is_stmt 0 discriminator 1
	movl	$.LC8, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
.L36:
	.loc 1 254 0 is_stmt 1
	xorpd	%xmm0, %xmm0	# tmp96
	ucomisd	-80(%rbp), %xmm0	# x, tmp96
	jbe	.L38	#,
	.loc 1 254 0 is_stmt 0 discriminator 1
	movl	$.LC9, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
.L38:
	.loc 1 260 0 is_stmt 1
	movsd	-72(%rbp), %xmm1	# a, tmp97
	movsd	.LC2(%rip), %xmm0	#, tmp98
	addsd	%xmm1, %xmm0	# tmp97, D.5812
	movsd	-80(%rbp), %xmm1	# x, tmp99
	ucomisd	%xmm0, %xmm1	# D.5812, tmp99
	jbe	.L60	#,
.LBB2:
	.loc 1 266 0
	movl	$0, %eax	#, tmp100
	movq	%rax, -48(%rbp)	# tmp100, nu0
	.loc 1 267 0
	movabsq	$4607182418800017408, %rax	#, tmp101
	movq	%rax, -32(%rbp)	# tmp101, de0
	.loc 1 268 0
	movabsq	$4607182418800017408, %rax	#, tmp102
	movq	%rax, -40(%rbp)	# tmp102, nu1
	.loc 1 269 0
	movq	-80(%rbp), %rax	# x, tmp103
	movq	%rax, -24(%rbp)	# tmp103, de1
	.loc 1 271 0
	movq	-40(%rbp), %rax	# nu1, tmp104
	movq	%rax, -56(%rbp)	# tmp104, oldp
	.loc 1 272 0
	movl	$1, -60(%rbp)	#, iter
	jmp	.L42	#
.L48:
	.loc 1 281 0
	cvtsi2sd	-60(%rbp), %xmm0	# iter, D.5812
	subsd	-72(%rbp), %xmm0	# a, D.5812
	mulsd	-48(%rbp), %xmm0	# nu0, D.5812
	addsd	-40(%rbp), %xmm0	# nu1, tmp105
	movsd	%xmm0, -48(%rbp)	# tmp105, nu0
	.loc 1 282 0
	cvtsi2sd	-60(%rbp), %xmm0	# iter, D.5812
	subsd	-72(%rbp), %xmm0	# a, D.5812
	mulsd	-32(%rbp), %xmm0	# de0, D.5812
	addsd	-24(%rbp), %xmm0	# de1, tmp106
	movsd	%xmm0, -32(%rbp)	# tmp106, de0
	.loc 1 286 0
	movsd	-80(%rbp), %xmm0	# x, tmp107
	movapd	%xmm0, %xmm1	# tmp107, D.5812
	mulsd	-48(%rbp), %xmm1	# nu0, D.5812
	cvtsi2sd	-60(%rbp), %xmm0	# iter, D.5812
	mulsd	-40(%rbp), %xmm0	# nu1, D.5812
	addsd	%xmm1, %xmm0	# D.5812, tmp108
	movsd	%xmm0, -40(%rbp)	# tmp108, nu1
	.loc 1 287 0
	movsd	-80(%rbp), %xmm0	# x, tmp109
	movapd	%xmm0, %xmm1	# tmp109, D.5812
	mulsd	-32(%rbp), %xmm1	# de0, D.5812
	cvtsi2sd	-60(%rbp), %xmm0	# iter, D.5812
	mulsd	-24(%rbp), %xmm0	# de1, D.5812
	addsd	%xmm1, %xmm0	# D.5812, tmp110
	movsd	%xmm0, -24(%rbp)	# tmp110, de1
	.loc 1 290 0
	xorpd	%xmm0, %xmm0	# tmp111
	ucomisd	-24(%rbp), %xmm0	# de1, tmp111
	jp	.L57	#,
	xorpd	%xmm0, %xmm0	# tmp112
	ucomisd	-24(%rbp), %xmm0	# de1, tmp112
	je	.L43	#,
.L57:
	.loc 1 292 0
	movsd	-48(%rbp), %xmm0	# nu0, tmp114
	divsd	-24(%rbp), %xmm0	# de1, tmp113
	movsd	%xmm0, -48(%rbp)	# tmp113, nu0
	.loc 1 293 0
	movsd	-32(%rbp), %xmm0	# de0, tmp116
	divsd	-24(%rbp), %xmm0	# de1, tmp115
	movsd	%xmm0, -32(%rbp)	# tmp115, de0
	.loc 1 294 0
	movsd	-40(%rbp), %xmm0	# nu1, tmp118
	divsd	-24(%rbp), %xmm0	# de1, tmp117
	movsd	%xmm0, -40(%rbp)	# tmp117, nu1
	.loc 1 295 0
	movabsq	$4607182418800017408, %rax	#, tmp119
	movq	%rax, -24(%rbp)	# tmp119, de1
.L43:
	.loc 1 298 0
	movsd	-40(%rbp), %xmm0	# nu1, tmp120
	subsd	-56(%rbp), %xmm0	# oldp, D.5812
	divsd	-40(%rbp), %xmm0	# nu1, D.5812
	movsd	.LC10(%rip), %xmm1	#, tmp121
	andpd	%xmm1, %xmm0	# tmp121, D.5812
	movsd	.LC11(%rip), %xmm1	#, tmp122
	ucomisd	%xmm0, %xmm1	# D.5812, tmp122
	jbe	.L61	#,
	.loc 1 299 0
	movq	-80(%rbp), %rax	# x, tmp123
	movq	%rax, -88(%rbp)	# tmp123, %sfp
	movsd	-88(%rbp), %xmm0	# %sfp,
	call	log	#
	mulsd	-72(%rbp), %xmm0	# a, D.5812
	subsd	-80(%rbp), %xmm0	# x, D.5812
	movsd	%xmm0, -88(%rbp)	# D.5812, %sfp
	movq	-72(%rbp), %rax	# a, tmp124
	movq	%rax, -96(%rbp)	# tmp124, %sfp
	movsd	-96(%rbp), %xmm0	# %sfp,
	call	Gammln	#
	movsd	-88(%rbp), %xmm2	# %sfp, D.5812
	subsd	%xmm0, %xmm2	# D.5812, D.5812
	movapd	%xmm2, %xmm0	# D.5812, D.5812
	call	exp	#
	mulsd	-40(%rbp), %xmm0	# nu1, D.5812
	jmp	.L47	#
.L61:
	.loc 1 301 0
	movq	-40(%rbp), %rax	# nu1, tmp125
	movq	%rax, -56(%rbp)	# tmp125, oldp
	.loc 1 272 0
	addl	$1, -60(%rbp)	#, iter
.L42:
	.loc 1 272 0 is_stmt 0 discriminator 1
	cmpl	$99, -60(%rbp)	#, iter
	jle	.L48	#,
	.loc 1 303 0 is_stmt 1
	movl	$.LC12, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
.LBE2:
	jmp	.L49	#
.L60:
.LBB3:
	.loc 1 320 0
	movsd	.LC2(%rip), %xmm0	#, tmp127
	divsd	-72(%rbp), %xmm0	# a, tmp126
	movsd	%xmm0, -8(%rbp)	# tmp126, val
	movq	-8(%rbp), %rax	# val, tmp128
	movq	%rax, -16(%rbp)	# tmp128, p
	.loc 1 321 0
	movl	$1, -60(%rbp)	#, iter
	jmp	.L50	#
.L53:
	.loc 1 323 0
	cvtsi2sd	-60(%rbp), %xmm0	# iter, D.5812
	addsd	-72(%rbp), %xmm0	# a, D.5812
	movsd	-80(%rbp), %xmm1	# x, tmp129
	divsd	%xmm0, %xmm1	# D.5812, D.5812
	movapd	%xmm1, %xmm0	# D.5812, D.5812
	movsd	-8(%rbp), %xmm1	# val, tmp131
	mulsd	%xmm1, %xmm0	# tmp131, tmp130
	movsd	%xmm0, -8(%rbp)	# tmp130, val
	.loc 1 324 0
	movsd	-16(%rbp), %xmm0	# p, tmp133
	addsd	-8(%rbp), %xmm0	# val, tmp132
	movsd	%xmm0, -16(%rbp)	# tmp132, p
	.loc 1 326 0
	movsd	-8(%rbp), %xmm0	# val, tmp134
	divsd	-16(%rbp), %xmm0	# p, D.5812
	movsd	.LC10(%rip), %xmm1	#, tmp135
	andpd	%xmm1, %xmm0	# tmp135, D.5812
	movsd	.LC11(%rip), %xmm1	#, tmp136
	ucomisd	%xmm0, %xmm1	# D.5812, tmp136
	jbe	.L62	#,
	.loc 1 327 0
	movq	-80(%rbp), %rax	# x, tmp137
	movq	%rax, -88(%rbp)	# tmp137, %sfp
	movsd	-88(%rbp), %xmm0	# %sfp,
	call	log	#
	mulsd	-72(%rbp), %xmm0	# a, D.5812
	subsd	-80(%rbp), %xmm0	# x, D.5812
	movsd	%xmm0, -88(%rbp)	# D.5812, %sfp
	movq	-72(%rbp), %rax	# a, tmp138
	movq	%rax, -96(%rbp)	# tmp138, %sfp
	movsd	-96(%rbp), %xmm0	# %sfp,
	call	Gammln	#
	movsd	-88(%rbp), %xmm3	# %sfp, D.5812
	subsd	%xmm0, %xmm3	# D.5812, D.5812
	movapd	%xmm3, %xmm0	# D.5812, D.5812
	call	exp	#
	mulsd	-16(%rbp), %xmm0	# p, D.5812
	movsd	.LC2(%rip), %xmm1	#, tmp139
	subsd	%xmm0, %xmm1	# D.5812, D.5812
	movapd	%xmm1, %xmm0	# D.5812, D.5812
	jmp	.L47	#
.L62:
	.loc 1 321 0
	addl	$1, -60(%rbp)	#, iter
.L50:
	.loc 1 321 0 is_stmt 0 discriminator 1
	cmpl	$9999, -60(%rbp)	#, iter
	jle	.L53	#,
	.loc 1 329 0 is_stmt 1
	movl	$.LC13, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
.L49:
.LBE3:
	.loc 1 332 0
	xorpd	%xmm0, %xmm0	# D.5812
.L47:
	movsd	%xmm0, -88(%rbp)	# D.5812, %sfp
	movq	-88(%rbp), %rax	# %sfp, <retval>
	.loc 1 333 0
	movq	%rax, -88(%rbp)	# <retval>, %sfp
	movsd	-88(%rbp), %xmm0	# %sfp,
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	IncompleteGamma, .-IncompleteGamma
	.data
	.align 32
	.type	cof.5449, @object
	.size	cof.5449, 88
cof.5449:
	.long	3039028678
	.long	1088875577
	.long	713941920
	.long	-1056764700
	.long	2810675066
	.long	1091122503
	.long	3522200933
	.long	-1056902037
	.long	3662865908
	.long	1088983486
	.long	3513864768
	.long	-1060978485
	.long	1265500720
	.long	1082881199
	.long	2851432162
	.long	-1069576911
	.long	3257283622
	.long	1070767283
	.long	3268756227
	.long	-1087477748
	.long	3394435930
	.long	1038169040
	.section	.rodata
	.align 4
.LC0:
	.long	0
	.align 8
.LC2:
	.long	0
	.long	1072693248
	.align 8
.LC4:
	.long	0
	.long	1076232192
	.align 8
.LC5:
	.long	0
	.long	1071644672
	.align 8
.LC6:
	.long	3360202092
	.long	1072523249
	.align 16
.LC10:
	.long	4294967295
	.long	2147483647
	.long	0
	.long	0
	.align 8
.LC11:
	.long	2596056904
	.long	1048238066
	.text
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x54f
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF34
	.byte	0x1
	.long	.LASF35
	.long	.LASF36
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF0
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
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF6
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF7
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF8
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF9
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF10
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF11
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.long	.LASF12
	.uleb128 0x4
	.byte	0x8
	.long	0x81
	.uleb128 0x5
	.long	.LASF20
	.byte	0x1
	.byte	0x2a
	.long	0x57
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x15b
	.uleb128 0x6
	.string	"x"
	.byte	0x1
	.byte	0x2a
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x6
	.string	"y"
	.byte	0x1
	.byte	0x2a
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x6
	.string	"N"
	.byte	0x1
	.byte	0x2a
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x7
	.long	.LASF13
	.byte	0x1
	.byte	0x2a
	.long	0x8f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x7
	.long	.LASF14
	.byte	0x1
	.byte	0x2a
	.long	0x8f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x7
	.long	.LASF15
	.byte	0x1
	.byte	0x2a
	.long	0x8f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x8
	.long	.LASF16
	.byte	0x1
	.byte	0x2c
	.long	0x81
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x8
	.long	.LASF17
	.byte	0x1
	.byte	0x2c
	.long	0x81
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x9
	.string	"sxx"
	.byte	0x1
	.byte	0x2d
	.long	0x81
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x9
	.string	"syy"
	.byte	0x1
	.byte	0x2d
	.long	0x81
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x9
	.string	"sxy"
	.byte	0x1
	.byte	0x2d
	.long	0x81
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x9
	.string	"i"
	.byte	0x1
	.byte	0x2e
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xa
	.long	.LASF26
	.byte	0x1
	.byte	0x55
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x244
	.uleb128 0x6
	.string	"x"
	.byte	0x1
	.byte	0x55
	.long	0x8f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x6
	.string	"y"
	.byte	0x1
	.byte	0x55
	.long	0x8f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x6
	.string	"var"
	.byte	0x1
	.byte	0x55
	.long	0x8f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x6
	.string	"N"
	.byte	0x1
	.byte	0x55
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x7
	.long	.LASF18
	.byte	0x1
	.byte	0x55
	.long	0x8f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x7
	.long	.LASF14
	.byte	0x1
	.byte	0x55
	.long	0x8f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x9
	.string	"i"
	.byte	0x1
	.byte	0x57
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x9
	.string	"s"
	.byte	0x1
	.byte	0x58
	.long	0x88
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x9
	.string	"sx"
	.byte	0x1
	.byte	0x59
	.long	0x88
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x9
	.string	"sy"
	.byte	0x1
	.byte	0x59
	.long	0x88
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x9
	.string	"sxx"
	.byte	0x1
	.byte	0x5a
	.long	0x88
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x9
	.string	"sxy"
	.byte	0x1
	.byte	0x5a
	.long	0x88
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x8
	.long	.LASF19
	.byte	0x1
	.byte	0x5b
	.long	0x88
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x9
	.string	"m"
	.byte	0x1
	.byte	0x5c
	.long	0x88
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x9
	.string	"b"
	.byte	0x1
	.byte	0x5c
	.long	0x88
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x5
	.long	.LASF21
	.byte	0x1
	.byte	0x7c
	.long	0x88
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x2ca
	.uleb128 0x6
	.string	"x"
	.byte	0x1
	.byte	0x7c
	.long	0x88
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x9
	.string	"i"
	.byte	0x1
	.byte	0x7e
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x9
	.string	"xx"
	.byte	0x1
	.byte	0x7f
	.long	0x88
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x9
	.string	"tx"
	.byte	0x1
	.byte	0x7f
	.long	0x88
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x9
	.string	"tmp"
	.byte	0x1
	.byte	0x80
	.long	0x88
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x8
	.long	.LASF22
	.byte	0x1
	.byte	0x80
	.long	0x88
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x9
	.string	"cof"
	.byte	0x1
	.byte	0x81
	.long	0x2ca
	.uleb128 0x9
	.byte	0x3
	.quad	cof.5449
	.byte	0
	.uleb128 0xb
	.long	0x88
	.long	0x2da
	.uleb128 0xc
	.long	0x65
	.byte	0xa
	.byte	0
	.uleb128 0x5
	.long	.LASF23
	.byte	0x1
	.byte	0xa7
	.long	0x331
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x331
	.uleb128 0x7
	.long	.LASF24
	.byte	0x1
	.byte	0xa7
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x7
	.long	.LASF25
	.byte	0x1
	.byte	0xa7
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x9
	.string	"mx"
	.byte	0x1
	.byte	0xa9
	.long	0x331
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x9
	.string	"r"
	.byte	0x1
	.byte	0xaa
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x4
	.byte	0x8
	.long	0x8f
	.uleb128 0xd
	.long	.LASF27
	.byte	0x1
	.byte	0xb3
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x362
	.uleb128 0x6
	.string	"mx"
	.byte	0x1
	.byte	0xb3
	.long	0x331
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x5
	.long	.LASF28
	.byte	0x1
	.byte	0xb9
	.long	0x3b9
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x3b9
	.uleb128 0x7
	.long	.LASF24
	.byte	0x1
	.byte	0xb9
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x7
	.long	.LASF25
	.byte	0x1
	.byte	0xb9
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x9
	.string	"mx"
	.byte	0x1
	.byte	0xbb
	.long	0x3b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x9
	.string	"r"
	.byte	0x1
	.byte	0xbc
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x4
	.byte	0x8
	.long	0x3bf
	.uleb128 0x4
	.byte	0x8
	.long	0x88
	.uleb128 0xd
	.long	.LASF29
	.byte	0x1
	.byte	0xc5
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x3f0
	.uleb128 0x6
	.string	"mx"
	.byte	0x1
	.byte	0xc5
	.long	0x3b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xa
	.long	.LASF30
	.byte	0x1
	.byte	0xd3
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x47b
	.uleb128 0x6
	.string	"A"
	.byte	0x1
	.byte	0xd3
	.long	0x331
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x6
	.string	"B"
	.byte	0x1
	.byte	0xd3
	.long	0x331
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x6
	.string	"C"
	.byte	0x1
	.byte	0xd3
	.long	0x331
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x6
	.string	"m"
	.byte	0x1
	.byte	0xd3
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x6
	.string	"p"
	.byte	0x1
	.byte	0xd3
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x6
	.string	"n"
	.byte	0x1
	.byte	0xd3
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x9
	.string	"i"
	.byte	0x1
	.byte	0xd5
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x9
	.string	"j"
	.byte	0x1
	.byte	0xd5
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x9
	.string	"k"
	.byte	0x1
	.byte	0xd5
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xe
	.long	.LASF31
	.byte	0x1
	.byte	0xf9
	.long	0x88
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x6
	.string	"a"
	.byte	0x1
	.byte	0xf9
	.long	0x88
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x6
	.string	"x"
	.byte	0x1
	.byte	0xf9
	.long	0x88
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x8
	.long	.LASF32
	.byte	0x1
	.byte	0xfb
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0xf
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.long	0x523
	.uleb128 0x10
	.long	.LASF33
	.byte	0x1
	.value	0x106
	.long	0x88
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x11
	.string	"nu0"
	.byte	0x1
	.value	0x107
	.long	0x88
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x11
	.string	"nu1"
	.byte	0x1
	.value	0x107
	.long	0x88
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x11
	.string	"de0"
	.byte	0x1
	.value	0x108
	.long	0x88
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x11
	.string	"de1"
	.byte	0x1
	.value	0x108
	.long	0x88
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x12
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x11
	.string	"p"
	.byte	0x1
	.value	0x133
	.long	0x88
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x11
	.string	"val"
	.byte	0x1
	.value	0x134
	.long	0x88
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0xe
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
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
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
.LASF33:
	.string	"oldp"
.LASF34:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF15:
	.string	"ret_r"
.LASF24:
	.string	"rows"
.LASF29:
	.string	"DMX2Free"
.LASF7:
	.string	"sizetype"
.LASF17:
	.string	"yavg"
.LASF19:
	.string	"delta"
.LASF22:
	.string	"value"
.LASF23:
	.string	"FMX2Alloc"
.LASF28:
	.string	"DMX2Alloc"
.LASF26:
	.string	"WeightedLinefit"
.LASF5:
	.string	"short int"
.LASF11:
	.string	"float"
.LASF36:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/456.hmmer/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF9:
	.string	"long long int"
.LASF10:
	.string	"long long unsigned int"
.LASF6:
	.string	"long int"
.LASF20:
	.string	"Linefit"
.LASF1:
	.string	"unsigned char"
.LASF4:
	.string	"signed char"
.LASF3:
	.string	"unsigned int"
.LASF2:
	.string	"short unsigned int"
.LASF8:
	.string	"char"
.LASF35:
	.string	"sre_math.c"
.LASF21:
	.string	"Gammln"
.LASF0:
	.string	"long unsigned int"
.LASF27:
	.string	"FMX2Free"
.LASF12:
	.string	"double"
.LASF25:
	.string	"cols"
.LASF31:
	.string	"IncompleteGamma"
.LASF13:
	.string	"ret_a"
.LASF14:
	.string	"ret_b"
.LASF30:
	.string	"FMX2Multiply"
.LASF32:
	.string	"iter"
.LASF18:
	.string	"ret_m"
.LASF16:
	.string	"xavg"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
