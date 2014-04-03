	.file	"sre_random.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 sre_random.c -mtune=generic -march=x86-64 -g
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
	.data
	.align 4
	.type	sre_randseed, @object
	.size	sre_randseed, 4
sre_randseed:
	.long	42
	.text
	.globl	sre_random
	.type	sre_random, @function
sre_random:
.LFB2:
	.file 1 "sre_random.c"
	.loc 1 47 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 58 0
	movq	$40014, -80(%rbp)	#, a1
	.loc 1 59 0
	movq	$2147483563, -72(%rbp)	#, m1
	.loc 1 60 0
	movq	$53668, -64(%rbp)	#, q1
	.loc 1 61 0
	movq	$12211, -56(%rbp)	#, r1
	.loc 1 63 0
	movq	$40692, -48(%rbp)	#, a2
	.loc 1 64 0
	movq	$2147483399, -40(%rbp)	#, m2
	.loc 1 65 0
	movq	$52774, -32(%rbp)	#, q2
	.loc 1 66 0
	movq	$3791, -24(%rbp)	#, r2
	.loc 1 68 0
	movl	sre_randseed(%rip), %eax	# sre_randseed, sre_randseed.0
	testl	%eax, %eax	# sre_randseed.0
	jle	.L2	#,
	.loc 1 70 0
	movl	sre_randseed(%rip), %eax	# sre_randseed, sre_randseed.1
	cltq
	movq	%rax, rnd1.3737(%rip)	# rnd1.2, rnd1
	.loc 1 71 0
	movl	sre_randseed(%rip), %eax	# sre_randseed, sre_randseed.3
	cltq
	movq	%rax, rnd2.3738(%rip)	# rnd2.4, rnd2
	.loc 1 73 0
	movl	$0, -84(%rbp)	#, i
	jmp	.L3	#
.L7:
	.loc 1 74 0
	movq	rnd1.3737(%rip), %rax	# rnd1, rnd1.5
	cqto
	idivq	-64(%rbp)	# q1
	movq	%rdx, %rax	# tmp119, D.4070
	imulq	-80(%rbp), %rax	# a1, tmp121
	movq	%rax, -16(%rbp)	# tmp121, x
	.loc 1 75 0
	movq	rnd1.3737(%rip), %rax	# rnd1, rnd1.6
	cqto
	idivq	-64(%rbp)	# q1
	imulq	-56(%rbp), %rax	# r1, tmp124
	movq	%rax, -8(%rbp)	# tmp124, y
	.loc 1 76 0
	movq	-8(%rbp), %rax	# y, tmp125
	movq	-16(%rbp), %rdx	# x, tmp126
	subq	%rax, %rdx	# tmp125, rnd1.7
	movq	%rdx, %rax	# rnd1.7, rnd1.7
	movq	%rax, rnd1.3737(%rip)	# rnd1.7, rnd1
	.loc 1 77 0
	movq	rnd1.3737(%rip), %rax	# rnd1, rnd1.8
	testq	%rax, %rax	# rnd1.8
	jns	.L4	#,
	.loc 1 77 0 is_stmt 0 discriminator 1
	movq	rnd1.3737(%rip), %rdx	# rnd1, rnd1.9
	movq	-72(%rbp), %rax	# m1, tmp127
	addq	%rdx, %rax	# rnd1.9, rnd1.10
	movq	%rax, rnd1.3737(%rip)	# rnd1.10, rnd1
.L4:
	.loc 1 79 0 is_stmt 1
	movq	rnd2.3738(%rip), %rax	# rnd2, rnd2.11
	cqto
	idivq	-32(%rbp)	# q2
	movq	%rdx, %rax	# tmp128, D.4070
	imulq	-48(%rbp), %rax	# a2, tmp130
	movq	%rax, -16(%rbp)	# tmp130, x
	.loc 1 80 0
	movq	rnd2.3738(%rip), %rax	# rnd2, rnd2.12
	cqto
	idivq	-32(%rbp)	# q2
	imulq	-24(%rbp), %rax	# r2, tmp133
	movq	%rax, -8(%rbp)	# tmp133, y
	.loc 1 81 0
	movq	-8(%rbp), %rax	# y, tmp134
	movq	-16(%rbp), %rdx	# x, tmp135
	subq	%rax, %rdx	# tmp134, rnd2.13
	movq	%rdx, %rax	# rnd2.13, rnd2.13
	movq	%rax, rnd2.3738(%rip)	# rnd2.13, rnd2
	.loc 1 82 0
	movq	rnd2.3738(%rip), %rax	# rnd2, rnd2.14
	testq	%rax, %rax	# rnd2.14
	jns	.L5	#,
	.loc 1 82 0 is_stmt 0 discriminator 1
	movq	rnd2.3738(%rip), %rdx	# rnd2, rnd2.15
	movq	-40(%rbp), %rax	# m2, tmp136
	addq	%rdx, %rax	# rnd2.15, rnd2.16
	movq	%rax, rnd2.3738(%rip)	# rnd2.16, rnd2
.L5:
	.loc 1 84 0 is_stmt 1
	movq	rnd1.3737(%rip), %rdx	# rnd1, rnd1.17
	movq	rnd2.3738(%rip), %rax	# rnd2, rnd2.18
	subq	%rax, %rdx	# rnd2.18, D.4070
	movl	-84(%rbp), %eax	# i, tmp138
	cltq
	movq	%rdx, tbl.3740(,%rax,8)	# D.4070, tbl
	.loc 1 85 0
	movl	-84(%rbp), %eax	# i, tmp140
	cltq
	movq	tbl.3740(,%rax,8), %rax	# tbl, D.4070
	testq	%rax, %rax	# D.4070
	jns	.L6	#,
	.loc 1 85 0 is_stmt 0 discriminator 1
	movl	-84(%rbp), %eax	# i, tmp142
	cltq
	movq	tbl.3740(,%rax,8), %rdx	# tbl, D.4070
	movq	-72(%rbp), %rax	# m1, tmp143
	addq	%rax, %rdx	# tmp143, D.4070
	movl	-84(%rbp), %eax	# i, tmp145
	cltq
	movq	%rdx, tbl.3740(,%rax,8)	# D.4070, tbl
.L6:
	.loc 1 73 0 is_stmt 1
	addl	$1, -84(%rbp)	#, i
.L3:
	.loc 1 73 0 is_stmt 0 discriminator 1
	cmpl	$63, -84(%rbp)	#, i
	jle	.L7	#,
	.loc 1 87 0 is_stmt 1
	movl	$0, sre_randseed(%rip)	#, sre_randseed
.L2:
	.loc 1 91 0
	movq	rnd1.3737(%rip), %rax	# rnd1, rnd1.19
	cqto
	idivq	-64(%rbp)	# q1
	movq	%rdx, %rax	# tmp146, D.4070
	imulq	-80(%rbp), %rax	# a1, tmp148
	movq	%rax, -16(%rbp)	# tmp148, x
	.loc 1 92 0
	movq	rnd1.3737(%rip), %rax	# rnd1, rnd1.20
	cqto
	idivq	-64(%rbp)	# q1
	imulq	-56(%rbp), %rax	# r1, tmp151
	movq	%rax, -8(%rbp)	# tmp151, y
	.loc 1 93 0
	movq	-8(%rbp), %rax	# y, tmp152
	movq	-16(%rbp), %rdx	# x, tmp153
	subq	%rax, %rdx	# tmp152, rnd1.21
	movq	%rdx, %rax	# rnd1.21, rnd1.21
	movq	%rax, rnd1.3737(%rip)	# rnd1.21, rnd1
	.loc 1 94 0
	movq	rnd1.3737(%rip), %rax	# rnd1, rnd1.22
	testq	%rax, %rax	# rnd1.22
	jns	.L8	#,
	.loc 1 94 0 is_stmt 0 discriminator 1
	movq	rnd1.3737(%rip), %rdx	# rnd1, rnd1.23
	movq	-72(%rbp), %rax	# m1, tmp154
	addq	%rdx, %rax	# rnd1.23, rnd1.24
	movq	%rax, rnd1.3737(%rip)	# rnd1.24, rnd1
.L8:
	.loc 1 96 0 is_stmt 1
	movq	rnd2.3738(%rip), %rax	# rnd2, rnd2.25
	cqto
	idivq	-32(%rbp)	# q2
	movq	%rdx, %rax	# tmp155, D.4070
	imulq	-48(%rbp), %rax	# a2, tmp157
	movq	%rax, -16(%rbp)	# tmp157, x
	.loc 1 97 0
	movq	rnd2.3738(%rip), %rax	# rnd2, rnd2.26
	cqto
	idivq	-32(%rbp)	# q2
	imulq	-24(%rbp), %rax	# r2, tmp160
	movq	%rax, -8(%rbp)	# tmp160, y
	.loc 1 98 0
	movq	-8(%rbp), %rax	# y, tmp161
	movq	-16(%rbp), %rdx	# x, tmp162
	subq	%rax, %rdx	# tmp161, rnd2.27
	movq	%rdx, %rax	# rnd2.27, rnd2.27
	movq	%rax, rnd2.3738(%rip)	# rnd2.27, rnd2
	.loc 1 99 0
	movq	rnd2.3738(%rip), %rax	# rnd2, rnd2.28
	testq	%rax, %rax	# rnd2.28
	jns	.L9	#,
	.loc 1 99 0 is_stmt 0 discriminator 1
	movq	rnd2.3738(%rip), %rdx	# rnd2, rnd2.29
	movq	-40(%rbp), %rax	# m2, tmp163
	addq	%rdx, %rax	# rnd2.29, rnd2.30
	movq	%rax, rnd2.3738(%rip)	# rnd2.30, rnd2
.L9:
	.loc 1 102 0 is_stmt 1
	movq	rnd.3739(%rip), %rax	# rnd, rnd.31
	cvtsi2sdq	%rax, %xmm0	# rnd.31, D.4071
	cvtsi2sdq	-72(%rbp), %xmm1	# m1, D.4071
	divsd	%xmm1, %xmm0	# D.4071, D.4071
	movsd	.LC0(%rip), %xmm1	#, tmp164
	mulsd	%xmm1, %xmm0	# tmp164, D.4071
	cvttsd2si	%xmm0, %eax	# D.4071, tmp165
	movl	%eax, -84(%rbp)	# tmp165, i
	.loc 1 103 0
	movl	-84(%rbp), %eax	# i, tmp167
	cltq
	movq	tbl.3740(,%rax,8), %rax	# tbl, rnd.32
	movq	%rax, rnd.3739(%rip)	# rnd.32, rnd
	.loc 1 105 0
	movq	rnd1.3737(%rip), %rdx	# rnd1, rnd1.33
	movq	rnd2.3738(%rip), %rax	# rnd2, rnd2.34
	subq	%rax, %rdx	# rnd2.34, D.4070
	movl	-84(%rbp), %eax	# i, tmp169
	cltq
	movq	%rdx, tbl.3740(,%rax,8)	# D.4070, tbl
	.loc 1 106 0
	movl	-84(%rbp), %eax	# i, tmp171
	cltq
	movq	tbl.3740(,%rax,8), %rax	# tbl, D.4070
	testq	%rax, %rax	# D.4070
	jns	.L10	#,
	.loc 1 106 0 is_stmt 0 discriminator 1
	movl	-84(%rbp), %eax	# i, tmp173
	cltq
	movq	tbl.3740(,%rax,8), %rdx	# tbl, D.4070
	movq	-72(%rbp), %rax	# m1, tmp174
	addq	%rax, %rdx	# tmp174, D.4070
	movl	-84(%rbp), %eax	# i, tmp176
	cltq
	movq	%rdx, tbl.3740(,%rax,8)	# D.4070, tbl
.L10:
	.loc 1 108 0 is_stmt 1
	movq	rnd.3739(%rip), %rax	# rnd, rnd.35
	cvtsi2sdq	%rax, %xmm0	# rnd.35, D.4071
	cvtsi2sdq	-72(%rbp), %xmm1	# m1, D.4071
	divsd	%xmm1, %xmm0	# D.4071, D.4071
	movsd	%xmm0, -104(%rbp)	# D.4071, %sfp
	movq	-104(%rbp), %rax	# %sfp, <retval>
	.loc 1 109 0
	movq	%rax, -104(%rbp)	# <retval>, %sfp
	movsd	-104(%rbp), %xmm0	# %sfp,
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	sre_random, .-sre_random
	.globl	sre_srandom
	.type	sre_srandom, @function
sre_srandom:
.LFB3:
	.loc 1 118 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)	# seed, seed
	.loc 1 119 0
	cmpl	$0, -4(%rbp)	#, seed
	jns	.L13	#,
	.loc 1 119 0 is_stmt 0 discriminator 1
	negl	-4(%rbp)	# seed
.L13:
	.loc 1 120 0 is_stmt 1
	cmpl	$0, -4(%rbp)	#, seed
	jne	.L14	#,
	.loc 1 120 0 is_stmt 0 discriminator 1
	movl	$42, -4(%rbp)	#, seed
.L14:
	.loc 1 121 0 is_stmt 1
	movl	-4(%rbp), %eax	# seed, tmp59
	movl	%eax, sre_randseed(%rip)	# tmp59, sre_randseed
	.loc 1 122 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	sre_srandom, .-sre_srandom
	.globl	sre_random_positive
	.type	sre_random_positive, @function
sre_random_positive:
.LFB4:
	.loc 1 131 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$24, %rsp	#,
.L16:
	.loc 1 133 0 discriminator 1
	call	sre_random	#
	movsd	%xmm0, -24(%rbp)	#, %sfp
	movq	-24(%rbp), %rax	# %sfp, tmp61
	movq	%rax, -8(%rbp)	# tmp61, x
	xorpd	%xmm0, %xmm0	# tmp62
	ucomisd	-8(%rbp), %xmm0	# x, tmp62
	jp	.L19	#,
	xorpd	%xmm0, %xmm0	# tmp63
	ucomisd	-8(%rbp), %xmm0	# x, tmp63
	je	.L16	#,
.L19:
	.loc 1 134 0
	movq	-8(%rbp), %rax	# x, D.4075
	.loc 1 135 0
	movq	%rax, -24(%rbp)	# <retval>, %sfp
	movsd	-24(%rbp), %xmm0	# %sfp,
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	sre_random_positive, .-sre_random_positive
	.globl	ExponentialRandom
	.type	ExponentialRandom, @function
ExponentialRandom:
.LFB5:
	.loc 1 149 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
.L21:
	.loc 1 152 0 discriminator 1
	call	sre_random	#
	movsd	%xmm0, -24(%rbp)	#, %sfp
	movq	-24(%rbp), %rax	# %sfp, tmp62
	movq	%rax, -8(%rbp)	# tmp62, x
	xorpd	%xmm0, %xmm0	# tmp63
	ucomisd	-8(%rbp), %xmm0	# x, tmp63
	jp	.L24	#,
	xorpd	%xmm0, %xmm0	# tmp64
	ucomisd	-8(%rbp), %xmm0	# x, tmp64
	je	.L21	#,
.L24:
	.loc 1 153 0
	movq	-8(%rbp), %rax	# x, tmp65
	movq	%rax, -24(%rbp)	# tmp65, %sfp
	movsd	-24(%rbp), %xmm0	# %sfp,
	call	log	#
	movsd	.LC2(%rip), %xmm1	#, tmp66
	xorpd	%xmm1, %xmm0	# tmp66, D.4076
	movsd	%xmm0, -24(%rbp)	# D.4076, %sfp
	movq	-24(%rbp), %rax	# %sfp, <retval>
	.loc 1 154 0
	movq	%rax, -24(%rbp)	# <retval>, %sfp
	movsd	-24(%rbp), %xmm0	# %sfp,
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	ExponentialRandom, .-ExponentialRandom
	.globl	Gaussrandom
	.type	Gaussrandom, @function
Gaussrandom:
.LFB6:
	.loc 1 174 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$24, %rsp	#,
	movsd	%xmm0, -8(%rbp)	# mean, mean
	movsd	%xmm1, -16(%rbp)	# stddev, stddev
	.loc 1 204 0
	call	sre_random	#
	movsd	%xmm0, -24(%rbp)	#, %sfp
	movq	-24(%rbp), %rax	# %sfp, u.36
	movq	%rax, u.3780(%rip)	# u.36, u
	.loc 1 205 0
	movl	$0, %eax	#, tmp177
	movq	%rax, s.3781(%rip)	# tmp177, s
	.loc 1 206 0
	movsd	u.3780(%rip), %xmm0	# u, u.37
	ucomisd	.LC3(%rip), %xmm0	#, u.37
	jbe	.L26	#,
	.loc 1 206 0 is_stmt 0 discriminator 1
	movabsq	$4607182418800017408, %rax	#, tmp178
	movq	%rax, s.3781(%rip)	# tmp178, s
.L26:
	.loc 1 207 0 is_stmt 1
	movsd	u.3780(%rip), %xmm0	# u, u.38
	movsd	s.3781(%rip), %xmm1	# s, s.39
	subsd	%xmm1, %xmm0	# s.39, D.4077
	movsd	u.3780(%rip), %xmm1	# u, u.40
	addsd	%xmm1, %xmm0	# u.40, u.41
	movsd	%xmm0, u.3780(%rip)	# u.41, u
	.loc 1 208 0
	movsd	u.3780(%rip), %xmm1	# u, u.42
	movsd	.LC5(%rip), %xmm0	#, tmp179
	mulsd	%xmm1, %xmm0	# u.42, u.43
	movsd	%xmm0, u.3780(%rip)	# u.43, u
	.loc 1 209 0
	movsd	u.3780(%rip), %xmm0	# u, u.44
	cvttsd2siq	%xmm0, %rax	# u.44, i.45
	movq	%rax, i.3778(%rip)	# i.45, i
	.loc 1 210 0
	movq	i.3778(%rip), %rax	# i, i.46
	cmpq	$32, %rax	#, i.46
	jne	.L28	#,
	.loc 1 210 0 is_stmt 0 discriminator 1
	movq	$31, i.3778(%rip)	#, i
.L28:
	.loc 1 211 0 is_stmt 1
	movq	i.3778(%rip), %rax	# i, i.47
	testq	%rax, %rax	# i.47
	jne	.L29	#,
	.loc 1 211 0 is_stmt 0 discriminator 1
	nop
.L30:
	.loc 1 249 0 is_stmt 1 discriminator 1
	movq	$6, i.3778(%rip)	#, i
	.loc 1 250 0 discriminator 1
	movq	a.3774+248(%rip), %rax	# MEM[(double *)&a + 248B], aa.89
	movq	%rax, aa.3783(%rip)	# aa.89, aa
	.loc 1 251 0 discriminator 1
	jmp	.L45	#
.L29:
	.loc 1 215 0
	movsd	u.3780(%rip), %xmm1	# u, u.48
	movq	i.3778(%rip), %rax	# i, i.49
	cvtsi2sdq	%rax, %xmm0	# i.49, D.4077
	subsd	%xmm0, %xmm1	# D.4077, ustar.50
	movapd	%xmm1, %xmm0	# ustar.50, ustar.50
	movsd	%xmm0, ustar.3782(%rip)	# ustar.50, ustar
	.loc 1 216 0
	movq	i.3778(%rip), %rax	# i, i.51
	salq	$3, %rax	#, D.4078
	subq	$8, %rax	#, D.4079
	addq	$a.3774, %rax	#, D.4080
	movq	(%rax), %rax	# *_60, aa.53
	movq	%rax, aa.3783(%rip)	# aa.53, aa
.L31:
	.loc 1 218 0
	movq	i.3778(%rip), %rax	# i, i.54
	salq	$3, %rax	#, D.4078
	subq	$8, %rax	#, D.4079
	addq	$t.3776, %rax	#, D.4080
	movsd	(%rax), %xmm0	# *_66, D.4077
	movsd	ustar.3782(%rip), %xmm1	# ustar, ustar.56
	ucomisd	%xmm1, %xmm0	# ustar.56, D.4077
	jb	.L64	#,
	.loc 1 218 0 is_stmt 0 discriminator 1
	nop
.L34:
	.loc 1 232 0 is_stmt 1 discriminator 1
	call	sre_random	#
	movsd	%xmm0, -24(%rbp)	#, %sfp
	movq	-24(%rbp), %rax	# %sfp, u.71
	movq	%rax, u.3780(%rip)	# u.71, u
	.loc 1 233 0 discriminator 1
	movq	i.3778(%rip), %rax	# i, i.72
	salq	$3, %rax	#, D.4078
	addq	$a.3774, %rax	#, D.4080
	movsd	(%rax), %xmm0	# *_73, D.4077
	movsd	aa.3783(%rip), %xmm1	# aa, aa.74
	subsd	%xmm1, %xmm0	# aa.74, D.4077
	movsd	u.3780(%rip), %xmm1	# u, u.75
	mulsd	%xmm1, %xmm0	# u.75, w.76
	movsd	%xmm0, w.3784(%rip)	# w.76, w
	.loc 1 234 0 discriminator 1
	movsd	w.3784(%rip), %xmm1	# w, w.77
	movsd	.LC3(%rip), %xmm0	#, tmp183
	mulsd	%xmm1, %xmm0	# w.77, D.4077
	movsd	aa.3783(%rip), %xmm1	# aa, aa.78
	addsd	%xmm1, %xmm0	# aa.78, D.4077
	movsd	w.3784(%rip), %xmm1	# w, w.79
	mulsd	%xmm1, %xmm0	# w.79, tt.80
	movsd	%xmm0, tt.3786(%rip)	# tt.80, tt
	.loc 1 235 0 discriminator 1
	jmp	.L39	#
.L64:
	.loc 1 219 0
	movsd	ustar.3782(%rip), %xmm0	# ustar, ustar.57
	movq	i.3778(%rip), %rax	# i, i.58
	salq	$3, %rax	#, D.4078
	subq	$8, %rax	#, D.4079
	addq	$t.3776, %rax	#, D.4080
	movsd	(%rax), %xmm1	# *_98, D.4077
	subsd	%xmm1, %xmm0	# D.4077, D.4077
	movq	i.3778(%rip), %rax	# i, i.60
	salq	$3, %rax	#, D.4078
	subq	$8, %rax	#, D.4079
	addq	$h.3777, %rax	#, D.4080
	movsd	(%rax), %xmm1	# *_105, D.4077
	mulsd	%xmm1, %xmm0	# D.4077, w.62
	movsd	%xmm0, w.3784(%rip)	# w.62, w
.L35:
	.loc 1 224 0
	movsd	aa.3783(%rip), %xmm1	# aa, aa.63
	movsd	w.3784(%rip), %xmm0	# w, w.64
	addsd	%xmm1, %xmm0	# aa.63, y.65
	movsd	%xmm0, y.3785(%rip)	# y.65, y
	.loc 1 225 0
	movq	y.3785(%rip), %rax	# y, y.66
	movq	%rax, snorm.3779(%rip)	# y.66, snorm
	.loc 1 226 0
	movsd	s.3781(%rip), %xmm0	# s, s.67
	movsd	.LC4(%rip), %xmm1	#, tmp180
	ucomisd	%xmm1, %xmm0	# tmp180, s.67
	jp	.L36	#,
	movsd	.LC4(%rip), %xmm1	#, tmp181
	ucomisd	%xmm1, %xmm0	# tmp181, s.67
	jne	.L36	#,
	.loc 1 226 0 is_stmt 0 discriminator 1
	movsd	y.3785(%rip), %xmm1	# y, y.68
	movsd	.LC2(%rip), %xmm0	#, tmp182
	xorpd	%xmm1, %xmm0	# y.68, snorm.69
	movsd	%xmm0, snorm.3779(%rip)	# snorm.69, snorm
.L36:
	.loc 1 227 0 is_stmt 1
	movsd	snorm.3779(%rip), %xmm0	# snorm, snorm.70
	mulsd	-16(%rbp), %xmm0	# stddev, D.4077
	addsd	-8(%rbp), %xmm0	# mean, D.4077
	jmp	.L65	#
.L39:
	.loc 1 240 0
	movsd	ustar.3782(%rip), %xmm0	# ustar, ustar.83
	movsd	tt.3786(%rip), %xmm1	# tt, tt.84
	ucomisd	%xmm1, %xmm0	# tt.84, ustar.83
	jbe	.L66	#,
	.loc 1 240 0 is_stmt 0 discriminator 1
	jmp	.L35	#
.L66:
	.loc 1 241 0 is_stmt 1
	call	sre_random	#
	movsd	%xmm0, -24(%rbp)	#, %sfp
	movq	-24(%rbp), %rax	# %sfp, u.85
	movq	%rax, u.3780(%rip)	# u.85, u
	.loc 1 242 0
	movsd	ustar.3782(%rip), %xmm0	# ustar, ustar.86
	movsd	u.3780(%rip), %xmm1	# u, u.87
	ucomisd	%xmm1, %xmm0	# u.87, ustar.86
	jb	.L67	#,
	.loc 1 242 0 is_stmt 0 discriminator 1
	nop
.L40:
	.loc 1 237 0 is_stmt 1 discriminator 1
	movq	u.3780(%rip), %rax	# u, u.81
	movq	%rax, tt.3786(%rip)	# u.81, tt
	.loc 1 238 0 discriminator 1
	call	sre_random	#
	movsd	%xmm0, -24(%rbp)	#, %sfp
	movq	-24(%rbp), %rax	# %sfp, ustar.82
	movq	%rax, ustar.3782(%rip)	# ustar.82, ustar
	jmp	.L39	#
.L67:
	.loc 1 243 0
	call	sre_random	#
	movsd	%xmm0, -24(%rbp)	#, %sfp
	movq	-24(%rbp), %rax	# %sfp, ustar.88
	movq	%rax, ustar.3782(%rip)	# ustar.88, ustar
	.loc 1 244 0
	jmp	.L31	#
.L45:
	.loc 1 256 0
	movsd	u.3780(%rip), %xmm0	# u, u.96
	addsd	%xmm0, %xmm0	# u.96, u.97
	movsd	%xmm0, u.3780(%rip)	# u.97, u
	.loc 1 257 0
	movsd	u.3780(%rip), %xmm1	# u, u.98
	movsd	.LC4(%rip), %xmm0	#, tmp184
	ucomisd	%xmm1, %xmm0	# u.98, tmp184
	jbe	.L68	#,
	.loc 1 257 0 is_stmt 0 discriminator 1
	nop
.L46:
	.loc 1 253 0 is_stmt 1 discriminator 1
	movq	i.3778(%rip), %rax	# i, i.90
	salq	$3, %rax	#, D.4078
	subq	$8, %rax	#, D.4079
	addq	$d.3775, %rax	#, D.4080
	movsd	(%rax), %xmm1	# *_22, D.4077
	movsd	aa.3783(%rip), %xmm0	# aa, aa.92
	addsd	%xmm1, %xmm0	# D.4077, aa.93
	movsd	%xmm0, aa.3783(%rip)	# aa.93, aa
	.loc 1 254 0 discriminator 1
	movq	i.3778(%rip), %rax	# i, i.94
	addq	$1, %rax	#, i.95
	movq	%rax, i.3778(%rip)	# i.95, i
	jmp	.L45	#
.L68:
	.loc 1 258 0
	movsd	u.3780(%rip), %xmm0	# u, u.99
	movsd	.LC4(%rip), %xmm1	#, tmp185
	subsd	%xmm1, %xmm0	# tmp185, u.100
	movsd	%xmm0, u.3780(%rip)	# u.100, u
.L49:
	.loc 1 260 0
	movq	i.3778(%rip), %rax	# i, i.101
	salq	$3, %rax	#, D.4078
	subq	$8, %rax	#, D.4079
	addq	$d.3775, %rax	#, D.4080
	movsd	(%rax), %xmm1	# *_34, D.4077
	movsd	u.3780(%rip), %xmm0	# u, u.103
	mulsd	%xmm1, %xmm0	# D.4077, w.104
	movsd	%xmm0, w.3784(%rip)	# w.104, w
	.loc 1 261 0
	movsd	w.3784(%rip), %xmm1	# w, w.105
	movsd	.LC3(%rip), %xmm0	#, tmp186
	mulsd	%xmm1, %xmm0	# w.105, D.4077
	movsd	aa.3783(%rip), %xmm1	# aa, aa.106
	addsd	%xmm1, %xmm0	# aa.106, D.4077
	movsd	w.3784(%rip), %xmm1	# w, w.107
	mulsd	%xmm1, %xmm0	# w.107, tt.108
	movsd	%xmm0, tt.3786(%rip)	# tt.108, tt
	.loc 1 262 0
	nop
.L50:
	.loc 1 266 0
	call	sre_random	#
	movsd	%xmm0, -24(%rbp)	#, %sfp
	movq	-24(%rbp), %rax	# %sfp, ustar.110
	movq	%rax, ustar.3782(%rip)	# ustar.110, ustar
	.loc 1 267 0
	movsd	ustar.3782(%rip), %xmm0	# ustar, ustar.111
	movsd	tt.3786(%rip), %xmm1	# tt, tt.112
	ucomisd	%xmm1, %xmm0	# tt.112, ustar.111
	jbe	.L69	#,
	.loc 1 267 0 is_stmt 0 discriminator 1
	jmp	.L35	#
.L69:
	.loc 1 268 0 is_stmt 1
	call	sre_random	#
	movsd	%xmm0, -24(%rbp)	#, %sfp
	movq	-24(%rbp), %rax	# %sfp, u.113
	movq	%rax, u.3780(%rip)	# u.113, u
	.loc 1 269 0
	movsd	ustar.3782(%rip), %xmm0	# ustar, ustar.114
	movsd	u.3780(%rip), %xmm1	# u, u.115
	ucomisd	%xmm1, %xmm0	# u.115, ustar.114
	jb	.L70	#,
	.loc 1 269 0 is_stmt 0 discriminator 1
	nop
.L51:
	.loc 1 264 0 is_stmt 1 discriminator 1
	movq	u.3780(%rip), %rax	# u, u.109
	movq	%rax, tt.3786(%rip)	# u.109, tt
	jmp	.L50	#
.L70:
	.loc 1 270 0
	call	sre_random	#
	movsd	%xmm0, -24(%rbp)	#, %sfp
	movq	-24(%rbp), %rax	# %sfp, u.116
	movq	%rax, u.3780(%rip)	# u.116, u
	.loc 1 271 0
	jmp	.L49	#
.L65:
	.loc 1 227 0 discriminator 1
	movsd	%xmm0, -24(%rbp)	# D.4077, %sfp
	movq	-24(%rbp), %rax	# %sfp, <retval>
	.loc 1 272 0 discriminator 1
	movq	%rax, -24(%rbp)	# <retval>, %sfp
	movsd	-24(%rbp), %xmm0	# %sfp,
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	Gaussrandom, .-Gaussrandom
	.globl	DChoose
	.type	DChoose, @function
DChoose:
.LFB7:
	.loc 1 284 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$56, %rsp	#,
	movq	%rdi, -40(%rbp)	# p, p
	movl	%esi, -44(%rbp)	# N, N
	.loc 1 289 0
	call	sre_random	#
	movsd	%xmm0, -56(%rbp)	#, %sfp
	movq	-56(%rbp), %rax	# %sfp, tmp68
	movq	%rax, -8(%rbp)	# tmp68, roll
	.loc 1 290 0
	movl	$0, %eax	#, tmp69
	movq	%rax, -16(%rbp)	# tmp69, sum
	.loc 1 291 0
	movl	$0, -20(%rbp)	#, i
	jmp	.L72	#
.L76:
	.loc 1 293 0
	movl	-20(%rbp), %eax	# i, tmp70
	cltq
	leaq	0(,%rax,8), %rdx	#, D.4082
	movq	-40(%rbp), %rax	# p, tmp71
	addq	%rdx, %rax	# D.4082, D.4083
	movsd	(%rax), %xmm0	# *_11, D.4084
	movsd	-16(%rbp), %xmm1	# sum, tmp73
	addsd	%xmm1, %xmm0	# tmp73, tmp72
	movsd	%xmm0, -16(%rbp)	# tmp72, sum
	.loc 1 294 0
	movsd	-16(%rbp), %xmm0	# sum, tmp74
	ucomisd	-8(%rbp), %xmm0	# roll, tmp74
	jbe	.L78	#,
	.loc 1 294 0 is_stmt 0 discriminator 1
	movl	-20(%rbp), %eax	# i, D.4081
	jmp	.L75	#
.L78:
	.loc 1 291 0 is_stmt 1
	addl	$1, -20(%rbp)	#, i
.L72:
	.loc 1 291 0 is_stmt 0 discriminator 1
	movl	-20(%rbp), %eax	# i, tmp75
	cmpl	-44(%rbp), %eax	# N, tmp75
	jl	.L76	#,
	.loc 1 296 0 is_stmt 1
	call	sre_random	#
	cvtsi2sd	-44(%rbp), %xmm1	# N, D.4084
	mulsd	%xmm1, %xmm0	# D.4084, D.4084
	cvttsd2si	%xmm0, %eax	# D.4084, D.4081
.L75:
	.loc 1 297 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	DChoose, .-DChoose
	.globl	FChoose
	.type	FChoose, @function
FChoose:
.LFB8:
	.loc 1 300 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# p, p
	movl	%esi, -28(%rbp)	# N, N
	.loc 1 305 0
	call	sre_random	#
	unpcklpd	%xmm0, %xmm0	# D.4086
	cvtpd2ps	%xmm0, %xmm2	# D.4086, tmp77
	movss	%xmm2, -4(%rbp)	# tmp77, roll
	.loc 1 306 0
	movl	.LC6(%rip), %eax	#, tmp69
	movl	%eax, -12(%rbp)	# tmp69, sum
	.loc 1 307 0
	movl	$0, -8(%rbp)	#, i
	jmp	.L80	#
.L84:
	.loc 1 309 0
	movl	-8(%rbp), %eax	# i, tmp70
	cltq
	leaq	0(,%rax,4), %rdx	#, D.4087
	movq	-24(%rbp), %rax	# p, tmp71
	addq	%rdx, %rax	# D.4087, D.4088
	movss	(%rax), %xmm0	# *_12, D.4089
	movss	-12(%rbp), %xmm1	# sum, tmp73
	addss	%xmm1, %xmm0	# tmp73, tmp72
	movss	%xmm0, -12(%rbp)	# tmp72, sum
	.loc 1 310 0
	movss	-12(%rbp), %xmm0	# sum, tmp74
	ucomiss	-4(%rbp), %xmm0	# roll, tmp74
	jbe	.L86	#,
	.loc 1 310 0 is_stmt 0 discriminator 1
	movl	-8(%rbp), %eax	# i, D.4085
	jmp	.L83	#
.L86:
	.loc 1 307 0 is_stmt 1
	addl	$1, -8(%rbp)	#, i
.L80:
	.loc 1 307 0 is_stmt 0 discriminator 1
	movl	-8(%rbp), %eax	# i, tmp75
	cmpl	-28(%rbp), %eax	# N, tmp75
	jl	.L84	#,
	.loc 1 312 0 is_stmt 1
	call	sre_random	#
	cvtsi2sd	-28(%rbp), %xmm1	# N, D.4086
	mulsd	%xmm1, %xmm0	# D.4086, D.4086
	cvttsd2si	%xmm0, %eax	# D.4086, D.4085
.L83:
	.loc 1 313 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	FChoose, .-FChoose
	.local	rnd1.3737
	.comm	rnd1.3737,8,8
	.local	rnd2.3738
	.comm	rnd2.3738,8,8
	.local	tbl.3740
	.comm	tbl.3740,512,32
	.local	rnd.3739
	.comm	rnd.3739,8,8
	.local	u.3780
	.comm	u.3780,8,8
	.local	s.3781
	.comm	s.3781,8,8
	.local	i.3778
	.comm	i.3778,8,8
	.local	ustar.3782
	.comm	ustar.3782,8,8
	.data
	.align 32
	.type	a.3774, @object
	.size	a.3774, 256
a.3774:
	.long	0
	.long	0
	.long	1923848480
	.long	1067716323
	.long	4035768425
	.long	1068765909
	.long	3128110581
	.long	1069426220
	.long	3420965503
	.long	1069818561
	.long	373888929
	.long	1070152331
	.long	1862627673
	.long	1070488739
	.long	4103762224
	.long	1070712237
	.long	2190337114
	.long	1070883990
	.long	3004415523
	.long	1071058014
	.long	873726915
	.long	1071234679
	.long	130292128
	.long	1071414390
	.long	3477315474
	.long	1071597596
	.long	941346880
	.long	1071714737
	.long	1080160223
	.long	1071810624
	.long	3307330976
	.long	1071909120
	.long	2718927329
	.long	1072010603
	.long	3534709981
	.long	1072115512
	.long	2279397556
	.long	1072224370
	.long	2555319999
	.long	1072337803
	.long	1144536629
	.long	1072456577
	.long	1483626015
	.long	1072581641
	.long	1177851831
	.long	1072703723
	.long	1791929075
	.long	1072774529
	.long	1516226535
	.long	1072850900
	.long	2709196651
	.long	1072934272
	.long	3016510151
	.long	1073026706
	.long	3895844575
	.long	1073131339
	.long	1982969221
	.long	1073253314
	.long	1981869709
	.long	1073402022
	.long	299067163
	.long	1073597888
	.long	3504693314
	.long	1073822498
	.local	aa.3783
	.comm	aa.3783,8,8
	.align 32
	.type	t.3776, @object
	.size	t.3776, 248
t.3776:
	.long	63378489
	.long	1061758278
	.long	1721274458
	.long	1063445979
	.long	2175588265
	.long	1064280141
	.long	3777101717
	.long	1064715937
	.long	3734986024
	.long	1065148721
	.long	539638108
	.long	1065473461
	.long	3792666404
	.long	1065703667
	.long	1617260658
	.long	1065943375
	.long	1642395494
	.long	1066194593
	.long	3554182332
	.long	1066430701
	.long	2135911288
	.long	1066571436
	.long	1162865488
	.long	1066721950
	.long	4168391517
	.long	1066884087
	.long	2339024071
	.long	1067060067
	.long	2119297667
	.long	1067252595
	.long	1065800601
	.long	1067457690
	.long	3253465902
	.long	1067575939
	.long	834540321
	.long	1067708899
	.long	2913331980
	.long	1067860026
	.long	1359491152
	.long	1068033891
	.long	1776239044
	.long	1068236660
	.long	2429744776
	.long	1068476872
	.long	1424010494
	.long	1068632823
	.long	1072243739
	.long	1068811536
	.long	2872298206
	.long	1069037902
	.long	148269143
	.long	1069334451
	.long	922490256
	.long	1069643972
	.long	1561086609
	.long	1069939172
	.long	1487144452
	.long	1070408393
	.long	358165913
	.long	1070933729
	.long	1183569292
	.long	1071822307
	.align 32
	.type	h.3777, @object
	.size	h.3777, 248
h.3777:
	.long	3286704138
	.long	1067717332
	.long	3543286172
	.long	1067721388
	.long	2612714506
	.long	1067727527
	.long	2403708340
	.long	1067735816
	.long	1270716583
	.long	1067746349
	.long	2660829134
	.long	1067759247
	.long	901676501
	.long	1067774665
	.long	1406044474
	.long	1067792793
	.long	3662935027
	.long	1067813866
	.long	2906624959
	.long	1067838172
	.long	1902276062
	.long	1067866061
	.long	1313685498
	.long	1067897961
	.long	1714204598
	.long	1067934398
	.long	3980232
	.long	1067976022
	.long	466621740
	.long	1068023641
	.long	1782099441
	.long	1068078271
	.long	1903232637
	.long	1068141206
	.long	762082504
	.long	1068214113
	.long	3016587117
	.long	1068299179
	.long	4113382951
	.long	1068399330
	.long	3547068492
	.long	1068508756
	.long	1852490176
	.long	1068580733
	.long	1023469404
	.long	1068669156
	.long	690834151
	.long	1068780209
	.long	98318330
	.long	1068923730
	.long	1383493491
	.long	1069116412
	.long	347720552
	.long	1069389143
	.long	563994489
	.long	1069676993
	.long	2349491422
	.long	1070039211
	.long	2262959857
	.long	1070717737
	.long	4110304318
	.long	1072066298
	.local	w.3784
	.comm	w.3784,8,8
	.local	y.3785
	.comm	y.3785,8,8
	.local	snorm.3779
	.comm	snorm.3779,8,8
	.local	tt.3786
	.comm	tt.3786,8,8
	.align 32
	.type	d.3775, @object
	.size	d.3775, 248
d.3775:
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	490602088
	.long	1070653492
	.long	3191882255
	.long	1070533252
	.long	2131073437
	.long	1070391140
	.long	1474005288
	.long	1070274260
	.long	2501279002
	.long	1070176030
	.long	1100226310
	.long	1070092031
	.long	698024957
	.long	1070019171
	.long	398792867
	.long	1069955218
	.long	1275928268
	.long	1069898515
	.long	2078736683
	.long	1069847804
	.long	3162030515
	.long	1069802111
	.long	2130798559
	.long	1069760669
	.long	3081986068
	.long	1069722863
	.long	4106675930
	.long	1069688196
	.long	872847306
	.long	1069656263
	.long	2400948566
	.long	1069626723
	.long	714242753
	.long	1069599296
	.long	3387045569
	.long	1069573742
	.long	1118808057
	.long	1069549861
	.long	2376209554
	.long	1069507437
	.long	169984498
	.long	1069465372
	.long	4007664908
	.long	1069425745
	.long	416055200
	.long	1069388336
	.long	3788147411
	.long	1069352942
	.long	690988082
	.long	1069319395
	.long	2504577537
	.long	1069287538
	.section	.rodata
	.align 8
.LC0:
	.long	0
	.long	1078984704
	.align 16
.LC2:
	.long	0
	.long	-2147483648
	.long	0
	.long	0
	.align 8
.LC3:
	.long	0
	.long	1071644672
	.align 8
.LC4:
	.long	0
	.long	1072693248
	.align 8
.LC5:
	.long	0
	.long	1077936128
	.align 4
.LC6:
	.long	0
	.text
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x51f
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
	.long	.LASF15
	.byte	0x1
	.byte	0x2e
	.long	0x88
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x196
	.uleb128 0x5
	.long	.LASF13
	.byte	0x1
	.byte	0x30
	.long	0x5e
	.uleb128 0x9
	.byte	0x3
	.quad	rnd1.3737
	.uleb128 0x5
	.long	.LASF14
	.byte	0x1
	.byte	0x31
	.long	0x5e
	.uleb128 0x9
	.byte	0x3
	.quad	rnd2.3738
	.uleb128 0x6
	.string	"rnd"
	.byte	0x1
	.byte	0x32
	.long	0x5e
	.uleb128 0x9
	.byte	0x3
	.quad	rnd.3739
	.uleb128 0x6
	.string	"tbl"
	.byte	0x1
	.byte	0x33
	.long	0x196
	.uleb128 0x9
	.byte	0x3
	.quad	tbl.3740
	.uleb128 0x6
	.string	"x"
	.byte	0x1
	.byte	0x34
	.long	0x5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x6
	.string	"y"
	.byte	0x1
	.byte	0x34
	.long	0x5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x6
	.string	"i"
	.byte	0x1
	.byte	0x35
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x6
	.string	"a1"
	.byte	0x1
	.byte	0x3a
	.long	0x5e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x6
	.string	"m1"
	.byte	0x1
	.byte	0x3b
	.long	0x5e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x6
	.string	"q1"
	.byte	0x1
	.byte	0x3c
	.long	0x5e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x6
	.string	"r1"
	.byte	0x1
	.byte	0x3d
	.long	0x5e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x6
	.string	"a2"
	.byte	0x1
	.byte	0x3f
	.long	0x5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x6
	.string	"m2"
	.byte	0x1
	.byte	0x40
	.long	0x5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x6
	.string	"q2"
	.byte	0x1
	.byte	0x41
	.long	0x5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x6
	.string	"r2"
	.byte	0x1
	.byte	0x42
	.long	0x5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x7
	.long	0x5e
	.long	0x1a6
	.uleb128 0x8
	.long	0x65
	.byte	0x3f
	.byte	0
	.uleb128 0x9
	.long	.LASF37
	.byte	0x1
	.byte	0x75
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x1d2
	.uleb128 0xa
	.long	.LASF19
	.byte	0x1
	.byte	0x75
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xb
	.long	.LASF16
	.byte	0x1
	.byte	0x82
	.long	0x88
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x200
	.uleb128 0x6
	.string	"x"
	.byte	0x1
	.byte	0x84
	.long	0x88
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xb
	.long	.LASF17
	.byte	0x1
	.byte	0x94
	.long	0x88
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x22e
	.uleb128 0x6
	.string	"x"
	.byte	0x1
	.byte	0x96
	.long	0x88
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xb
	.long	.LASF18
	.byte	0x1
	.byte	0xad
	.long	0x88
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x411
	.uleb128 0xa
	.long	.LASF20
	.byte	0x1
	.byte	0xad
	.long	0x88
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xa
	.long	.LASF21
	.byte	0x1
	.byte	0xad
	.long	0x88
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x6
	.string	"a"
	.byte	0x1
	.byte	0xaf
	.long	0x411
	.uleb128 0x9
	.byte	0x3
	.quad	a.3774
	.uleb128 0x6
	.string	"d"
	.byte	0x1
	.byte	0xb5
	.long	0x421
	.uleb128 0x9
	.byte	0x3
	.quad	d.3775
	.uleb128 0x6
	.string	"t"
	.byte	0x1
	.byte	0xbb
	.long	0x421
	.uleb128 0x9
	.byte	0x3
	.quad	t.3776
	.uleb128 0x6
	.string	"h"
	.byte	0x1
	.byte	0xc2
	.long	0x421
	.uleb128 0x9
	.byte	0x3
	.quad	h.3777
	.uleb128 0x6
	.string	"i"
	.byte	0x1
	.byte	0xc9
	.long	0x5e
	.uleb128 0x9
	.byte	0x3
	.quad	i.3778
	.uleb128 0x5
	.long	.LASF22
	.byte	0x1
	.byte	0xca
	.long	0x88
	.uleb128 0x9
	.byte	0x3
	.quad	snorm.3779
	.uleb128 0x6
	.string	"u"
	.byte	0x1
	.byte	0xca
	.long	0x88
	.uleb128 0x9
	.byte	0x3
	.quad	u.3780
	.uleb128 0x6
	.string	"s"
	.byte	0x1
	.byte	0xca
	.long	0x88
	.uleb128 0x9
	.byte	0x3
	.quad	s.3781
	.uleb128 0x5
	.long	.LASF23
	.byte	0x1
	.byte	0xca
	.long	0x88
	.uleb128 0x9
	.byte	0x3
	.quad	ustar.3782
	.uleb128 0x6
	.string	"aa"
	.byte	0x1
	.byte	0xca
	.long	0x88
	.uleb128 0x9
	.byte	0x3
	.quad	aa.3783
	.uleb128 0x6
	.string	"w"
	.byte	0x1
	.byte	0xca
	.long	0x88
	.uleb128 0x9
	.byte	0x3
	.quad	w.3784
	.uleb128 0x6
	.string	"y"
	.byte	0x1
	.byte	0xca
	.long	0x88
	.uleb128 0x9
	.byte	0x3
	.quad	y.3785
	.uleb128 0x6
	.string	"tt"
	.byte	0x1
	.byte	0xca
	.long	0x88
	.uleb128 0x9
	.byte	0x3
	.quad	tt.3786
	.uleb128 0xc
	.long	.LASF24
	.byte	0x1
	.byte	0xf5
	.quad	.L30
	.uleb128 0xd
	.string	"S40"
	.byte	0x1
	.byte	0xd9
	.quad	.L31
	.uleb128 0xd
	.string	"S60"
	.byte	0x1
	.byte	0xe4
	.quad	.L34
	.uleb128 0xd
	.string	"S50"
	.byte	0x1
	.byte	0xdc
	.quad	.L35
	.uleb128 0xd
	.string	"S80"
	.byte	0x1
	.byte	0xef
	.quad	.L39
	.uleb128 0xd
	.string	"S70"
	.byte	0x1
	.byte	0xec
	.quad	.L40
	.uleb128 0xc
	.long	.LASF25
	.byte	0x1
	.byte	0xff
	.quad	.L45
	.uleb128 0xc
	.long	.LASF26
	.byte	0x1
	.byte	0xfc
	.quad	.L46
	.uleb128 0xe
	.long	.LASF27
	.byte	0x1
	.value	0x103
	.quad	.L49
	.uleb128 0xe
	.long	.LASF28
	.byte	0x1
	.value	0x109
	.quad	.L50
	.uleb128 0xe
	.long	.LASF29
	.byte	0x1
	.value	0x107
	.quad	.L51
	.byte	0
	.uleb128 0x7
	.long	0x88
	.long	0x421
	.uleb128 0x8
	.long	0x65
	.byte	0x1f
	.byte	0
	.uleb128 0x7
	.long	0x88
	.long	0x431
	.uleb128 0x8
	.long	0x65
	.byte	0x1e
	.byte	0
	.uleb128 0xf
	.long	.LASF30
	.byte	0x1
	.value	0x11b
	.long	0x57
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x499
	.uleb128 0x10
	.string	"p"
	.byte	0x1
	.value	0x11b
	.long	0x499
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x10
	.string	"N"
	.byte	0x1
	.value	0x11b
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x11
	.long	.LASF31
	.byte	0x1
	.value	0x11d
	.long	0x88
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x12
	.string	"sum"
	.byte	0x1
	.value	0x11e
	.long	0x88
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x12
	.string	"i"
	.byte	0x1
	.value	0x11f
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x13
	.byte	0x8
	.long	0x88
	.uleb128 0xf
	.long	.LASF32
	.byte	0x1
	.value	0x12b
	.long	0x57
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x507
	.uleb128 0x10
	.string	"p"
	.byte	0x1
	.value	0x12b
	.long	0x507
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x10
	.string	"N"
	.byte	0x1
	.value	0x12b
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x11
	.long	.LASF31
	.byte	0x1
	.value	0x12d
	.long	0x81
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x12
	.string	"sum"
	.byte	0x1
	.value	0x12e
	.long	0x81
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x12
	.string	"i"
	.byte	0x1
	.value	0x12f
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x13
	.byte	0x8
	.long	0x81
	.uleb128 0x5
	.long	.LASF33
	.byte	0x1
	.byte	0x10
	.long	0x57
	.uleb128 0x9
	.byte	0x3
	.quad	sre_randseed
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
	.uleb128 0x5
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
	.uleb128 0x6
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
	.uleb128 0x7
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
.LASF26:
	.string	"S110"
.LASF22:
	.string	"snorm"
.LASF15:
	.string	"sre_random"
.LASF10:
	.string	"long long unsigned int"
.LASF17:
	.string	"ExponentialRandom"
.LASF9:
	.string	"long long int"
.LASF4:
	.string	"signed char"
.LASF35:
	.string	"sre_random.c"
.LASF6:
	.string	"long int"
.LASF16:
	.string	"sre_random_positive"
.LASF12:
	.string	"double"
.LASF25:
	.string	"S120"
.LASF3:
	.string	"unsigned int"
.LASF21:
	.string	"stddev"
.LASF19:
	.string	"seed"
.LASF28:
	.string	"S160"
.LASF0:
	.string	"long unsigned int"
.LASF2:
	.string	"short unsigned int"
.LASF27:
	.string	"S140"
.LASF37:
	.string	"sre_srandom"
.LASF7:
	.string	"sizetype"
.LASF29:
	.string	"S150"
.LASF31:
	.string	"roll"
.LASF11:
	.string	"float"
.LASF13:
	.string	"rnd1"
.LASF14:
	.string	"rnd2"
.LASF1:
	.string	"unsigned char"
.LASF23:
	.string	"ustar"
.LASF5:
	.string	"short int"
.LASF33:
	.string	"sre_randseed"
.LASF8:
	.string	"char"
.LASF20:
	.string	"mean"
.LASF24:
	.string	"S100"
.LASF34:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF30:
	.string	"DChoose"
.LASF36:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/456.hmmer/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF32:
	.string	"FChoose"
.LASF18:
	.string	"Gaussrandom"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
