	.file	"mat_invert.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I . -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D FN -D FAST -D CONGRAD_TMP_VECTORS -D DSLASH_TMP_LINKS -D SPEC_CPU_LP64
# mat_invert.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.globl	mat_invert_cg
	.type	mat_invert_cg, @function
mat_invert_cg:
.LFB2:
	.file 1 "mat_invert.c"
	.loc 1 23 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movl	%edi, -20(%rbp)	# src, src
	movl	%esi, -24(%rbp)	# dest, dest
	movl	%edx, -28(%rbp)	# temp, temp
	movsd	%xmm0, -40(%rbp)	# mass, mass
	.loc 1 26 0
	movl	-24(%rbp), %eax	# dest, tmp64
	movl	$3, %esi	#,
	movl	%eax, %edi	# tmp64,
	call	clear_latvec	#
	.loc 1 27 0
	movq	rsqprop(%rip), %rdx	# rsqprop, rsqprop.0
	movl	niter(%rip), %r9d	# niter, niter.1
	leaq	-8(%rbp), %rcx	#, tmp65
	movq	-40(%rbp), %rax	# mass, tmp66
	movl	-24(%rbp), %esi	# dest, tmp67
	movl	-20(%rbp), %edi	# src, tmp68
	movq	%rcx, %r8	# tmp65,
	movl	$3, %ecx	#,
	movq	%rdx, -48(%rbp)	# rsqprop.0, %sfp
	movsd	-48(%rbp), %xmm1	# %sfp,
	movl	%r9d, %edx	# niter.1,
	movq	%rax, -48(%rbp)	# tmp66, %sfp
	movsd	-48(%rbp), %xmm0	# %sfp,
	call	ks_congrad	#
	movl	%eax, -12(%rbp)	# tmp69, cgn
	.loc 1 30 0
	movl	-24(%rbp), %eax	# dest, tmp70
	movl	$3, %edx	#,
	movl	$1232, %esi	#,
	movl	%eax, %edi	# tmp70,
	call	dslash_fn	#
	.loc 1 31 0
	movsd	-40(%rbp), %xmm1	# mass, tmp71
	movsd	.LC0(%rip), %xmm0	#, tmp72
	mulsd	%xmm1, %xmm0	# tmp71, D.5065
	movl	-24(%rbp), %eax	# dest, tmp73
	movl	$3, %ecx	#,
	movl	$1232, %edx	#,
	movl	%eax, %esi	# tmp73,
	movl	$1232, %edi	#,
	call	scalar_mult_add_latvec	#
	.loc 1 33 0
	movl	-24(%rbp), %eax	# dest, tmp74
	movl	$3, %edx	#,
	movl	%eax, %esi	# tmp74,
	movsd	.LC1(%rip), %xmm0	#,
	movl	$1232, %edi	#,
	call	scalar_mult_latvec	#
	.loc 1 34 0
	movl	-12(%rbp), %eax	# cgn, D.5066
	.loc 1 35 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	mat_invert_cg, .-mat_invert_cg
	.section	.rodata
.LC2:
	.string	"BOTCH"
	.text
	.globl	mat_invert_uml
	.type	mat_invert_uml, @function
mat_invert_uml:
.LFB3:
	.loc 1 62 0
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
	movl	%edi, -36(%rbp)	# src, src
	movl	%esi, -40(%rbp)	# dest, dest
	movl	%edx, -44(%rbp)	# temp, temp
	movsd	%xmm0, -56(%rbp)	# mass, mass
	.loc 1 68 0
	movl	-36(%rbp), %eax	# src, tmp81
	cmpl	-44(%rbp), %eax	# temp, tmp81
	jne	.L4	#,
	.loc 1 69 0
	movl	$.LC2, %edi	#,
	call	puts	#
	movl	$0, %edi	#,
	call	exit	#
.L4:
	.loc 1 72 0
	movl	-36(%rbp), %eax	# src, tmp82
	movl	$2, %edx	#,
	movl	$1232, %esi	#,
	movl	%eax, %edi	# tmp82,
	call	dslash_fn	#
	.loc 1 73 0
	movsd	-56(%rbp), %xmm1	# mass, tmp83
	movsd	.LC0(%rip), %xmm0	#, tmp84
	mulsd	%xmm1, %xmm0	# tmp83, D.5068
	movl	-44(%rbp), %edx	# temp, tmp85
	movl	-36(%rbp), %eax	# src, tmp86
	movl	$2, %ecx	#,
	movl	%eax, %esi	# tmp86,
	movl	$1232, %edi	#,
	call	scalar_mult_add_latvec	#
	.loc 1 75 0
	movl	-44(%rbp), %ecx	# temp, tmp87
	movl	-44(%rbp), %eax	# temp, tmp88
	movl	$2, %edx	#,
	movl	%ecx, %esi	# tmp87,
	movsd	.LC1(%rip), %xmm0	#,
	movl	%eax, %edi	# tmp88,
	call	scalar_mult_latvec	#
	.loc 1 77 0
	movq	rsqprop(%rip), %rdx	# rsqprop, rsqprop.2
	movl	niter(%rip), %r9d	# niter, niter.3
	leaq	-24(%rbp), %rcx	#, tmp89
	movq	-56(%rbp), %rax	# mass, tmp90
	movl	-40(%rbp), %esi	# dest, tmp91
	movl	-44(%rbp), %edi	# temp, tmp92
	movq	%rcx, %r8	# tmp89,
	movl	$2, %ecx	#,
	movq	%rdx, -64(%rbp)	# rsqprop.2, %sfp
	movsd	-64(%rbp), %xmm1	# %sfp,
	movl	%r9d, %edx	# niter.3,
	movq	%rax, -64(%rbp)	# tmp90, %sfp
	movsd	-64(%rbp), %xmm0	# %sfp,
	call	ks_congrad	#
	movl	%eax, -28(%rbp)	# tmp93, cgn
	.loc 1 81 0
	movl	-40(%rbp), %eax	# dest, tmp94
	movl	$1, %edx	#,
	movl	$1232, %esi	#,
	movl	%eax, %edi	# tmp94,
	call	dslash_fn	#
	.loc 1 82 0
	movl	even_sites_on_node(%rip), %r12d	# even_sites_on_node, i
	movq	lattice(%rip), %rax	# lattice, lattice.4
	movslq	%r12d, %rdx	# i, D.5069
	salq	$11, %rdx	#, D.5069
	leaq	(%rax,%rdx), %rbx	#, s
	jmp	.L5	#
.L6:
	.loc 1 83 0 discriminator 2
	movl	-40(%rbp), %eax	# dest, tmp95
	cltq
	leaq	(%rbx,%rax), %rdx	#, D.5071
	leaq	1232(%rbx), %rax	#, D.5071
	movl	-36(%rbp), %ecx	# src, tmp96
	movslq	%ecx, %rcx	# tmp96, D.5070
	addq	%rbx, %rcx	# s, D.5071
	movq	%rax, %rsi	# D.5071,
	movq	%rcx, %rdi	# D.5071,
	call	sub_su3_vector	#
	.loc 1 85 0 discriminator 2
	movl	-40(%rbp), %eax	# dest, tmp97
	cltq
	leaq	(%rbx,%rax), %rdx	#, D.5071
	movsd	-56(%rbp), %xmm0	# mass, tmp98
	addsd	%xmm0, %xmm0	# tmp98, D.5068
	movsd	.LC3(%rip), %xmm1	#, tmp99
	divsd	%xmm0, %xmm1	# D.5068, D.5068
	movapd	%xmm1, %xmm0	# D.5068, D.5068
	movl	-40(%rbp), %eax	# dest, tmp100
	cltq
	addq	%rbx, %rax	# s, D.5071
	movq	%rdx, %rsi	# D.5071,
	movq	%rax, %rdi	# D.5071,
	call	scalar_mult_su3_vector	#
	.loc 1 82 0 discriminator 2
	addl	$1, %r12d	#, i
	addq	$2048, %rbx	#, s
.L5:
	.loc 1 82 0 is_stmt 0 discriminator 1
	movl	sites_on_node(%rip), %eax	# sites_on_node, sites_on_node.5
	cmpl	%eax, %r12d	# sites_on_node.5, i
	jl	.L6	#,
	.loc 1 88 0 is_stmt 1
	movl	-28(%rbp), %eax	# cgn, D.5072
	.loc 1 89 0
	addq	$48, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	mat_invert_uml, .-mat_invert_uml
	.section	.rodata
	.align 8
.LC6:
	.string	"%d %d  ( %.4e , %.4e )  ( %.4e , %.4e )\n"
	.align 8
.LC7:
	.string	"Inversion checked, frac. error = %e\n"
	.text
	.globl	check_invert
	.type	check_invert, @function
check_invert:
.LFB4:
	.loc 1 93 0
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
	subq	$64, %rsp	#,
	.cfi_offset 14, -24
	.cfi_offset 13, -32
	.cfi_offset 12, -40
	.cfi_offset 3, -48
	movl	%edi, -68(%rbp)	# src, src
	movl	%esi, -72(%rbp)	# dest, dest
	movsd	%xmm0, -80(%rbp)	# mass, mass
	movsd	%xmm1, -88(%rbp)	# tol, tol
	.loc 1 98 0
	movl	-68(%rbp), %eax	# src, tmp105
	movl	$3, %edx	#,
	movl	$1136, %esi	#,
	movl	%eax, %edi	# tmp105,
	call	dslash_fn	#
	.loc 1 99 0
	movl	$0, %r13d	#, i
	movq	lattice(%rip), %rbx	# lattice, s
	jmp	.L9	#
.L10:
	.loc 1 100 0 discriminator 2
	leaq	1136(%rbx), %rdx	#, D.5074
	movsd	-80(%rbp), %xmm0	# mass, tmp106
	addsd	%xmm0, %xmm0	# tmp106, D.5075
	movl	-68(%rbp), %eax	# src, tmp107
	cltq
	leaq	(%rbx,%rax), %rcx	#, D.5074
	leaq	1136(%rbx), %rax	#, D.5074
	movq	%rcx, %rsi	# D.5074,
	movq	%rax, %rdi	# D.5074,
	call	scalar_mult_add_su3_vector	#
	.loc 1 99 0 discriminator 2
	addl	$1, %r13d	#, i
	addq	$2048, %rbx	#, s
.L9:
	.loc 1 99 0 is_stmt 0 discriminator 1
	movl	sites_on_node(%rip), %eax	# sites_on_node, sites_on_node.6
	cmpl	%eax, %r13d	# sites_on_node.6, i
	jl	.L10	#,
	.loc 1 103 0 is_stmt 1
	movl	$0, %eax	#, tmp108
	movq	%rax, -64(%rbp)	# tmp108, sum
	movq	-64(%rbp), %rax	# sum, sum.7
	movq	%rax, -56(%rbp)	# sum.7, sum2
	.loc 1 104 0
	movl	$0, %r13d	#, i
	movq	lattice(%rip), %rbx	# lattice, s
	jmp	.L11	#
.L19:
	.loc 1 105 0
	movl	$0, %r14d	#, flag
	movl	$0, %r12d	#, k
	jmp	.L12	#
.L18:
	.loc 1 106 0
	movl	-72(%rbp), %eax	# dest, tmp109
	cltq
	leaq	(%rbx,%rax), %rdx	#, D.5074
	movslq	%r12d, %rax	# k, tmp110
	salq	$4, %rax	#, tmp111
	addq	%rdx, %rax	# D.5074, tmp112
	movsd	(%rax), %xmm0	# _28->c[k_3].real, D.5075
	.loc 1 107 0
	movslq	%r12d, %rax	# k, tmp113
	addq	$71, %rax	#, tmp114
	salq	$4, %rax	#, tmp115
	addq	%rbx, %rax	# s, tmp116
	movsd	(%rax), %xmm1	# s_7->cg_p.c[k_3].real, D.5075
	.loc 1 106 0
	subsd	%xmm1, %xmm0	# D.5075, tmp117
	movsd	%xmm0, -48(%rbp)	# tmp117, r_diff
	.loc 1 108 0
	movl	-72(%rbp), %eax	# dest, tmp118
	cltq
	leaq	(%rbx,%rax), %rdx	#, D.5074
	movslq	%r12d, %rax	# k, tmp119
	salq	$4, %rax	#, tmp120
	addq	%rdx, %rax	# D.5074, tmp121
	addq	$8, %rax	#, tmp122
	movsd	(%rax), %xmm0	# _33->c[k_3].imag, D.5075
	.loc 1 109 0
	movslq	%r12d, %rax	# k, tmp123
	addq	$71, %rax	#, tmp124
	salq	$4, %rax	#, tmp125
	addq	%rbx, %rax	# s, tmp126
	addq	$8, %rax	#, tmp127
	movsd	(%rax), %xmm1	# s_7->cg_p.c[k_3].imag, D.5075
	.loc 1 108 0
	subsd	%xmm1, %xmm0	# D.5075, tmp128
	movsd	%xmm0, -40(%rbp)	# tmp128, i_diff
	.loc 1 110 0
	movsd	-48(%rbp), %xmm1	# r_diff, tmp129
	movsd	.LC5(%rip), %xmm0	#, tmp130
	andpd	%xmm1, %xmm0	# tmp129, D.5075
	ucomisd	-88(%rbp), %xmm0	# tol, D.5075
	ja	.L13	#,
	.loc 1 110 0 is_stmt 0 discriminator 2
	movsd	-40(%rbp), %xmm1	# i_diff, tmp131
	movsd	.LC5(%rip), %xmm0	#, tmp132
	andpd	%xmm1, %xmm0	# tmp131, D.5075
	ucomisd	-88(%rbp), %xmm0	# tol, D.5075
	jbe	.L14	#,
.L13:
	.loc 1 110 0 discriminator 1
	movl	$1, %r14d	#, flag
.L14:
	.loc 1 111 0 is_stmt 1
	testl	%r14d, %r14d	# flag
	je	.L16	#,
	.loc 1 111 0 is_stmt 0 discriminator 1
	movslq	%r12d, %rax	# k, tmp133
	addq	$71, %rax	#, tmp134
	salq	$4, %rax	#, tmp135
	addq	%rbx, %rax	# s, tmp136
	addq	$8, %rax	#, tmp137
	movq	(%rax), %rsi	# s_7->cg_p.c[k_3].imag, D.5075
	movslq	%r12d, %rax	# k, tmp138
	addq	$71, %rax	#, tmp139
	salq	$4, %rax	#, tmp140
	addq	%rbx, %rax	# s, tmp141
	movq	(%rax), %rcx	# s_7->cg_p.c[k_3].real, D.5075
	.loc 1 114 0 is_stmt 1 discriminator 1
	movl	-72(%rbp), %eax	# dest, tmp142
	cltq
	leaq	(%rbx,%rax), %rdx	#, D.5074
	.loc 1 111 0 discriminator 1
	movslq	%r12d, %rax	# k, tmp143
	salq	$4, %rax	#, tmp144
	addq	%rdx, %rax	# D.5074, tmp145
	addq	$8, %rax	#, tmp146
	movq	(%rax), %rdx	# _44->c[k_3].imag, D.5075
	.loc 1 113 0 discriminator 1
	movl	-72(%rbp), %eax	# dest, tmp147
	cltq
	leaq	(%rbx,%rax), %rdi	#, D.5074
	.loc 1 111 0 discriminator 1
	movslq	%r12d, %rax	# k, tmp148
	salq	$4, %rax	#, tmp149
	addq	%rdi, %rax	# D.5074, tmp150
	movq	(%rax), %rax	# _47->c[k_3].real, D.5075
	movq	%rsi, -96(%rbp)	# D.5075, %sfp
	movsd	-96(%rbp), %xmm3	# %sfp,
	movq	%rcx, -96(%rbp)	# D.5075, %sfp
	movsd	-96(%rbp), %xmm2	# %sfp,
	movq	%rdx, -96(%rbp)	# D.5075, %sfp
	movsd	-96(%rbp), %xmm1	# %sfp,
	movq	%rax, -96(%rbp)	# D.5075, %sfp
	movsd	-96(%rbp), %xmm0	# %sfp,
	movl	%r12d, %edx	# k,
	movl	%r13d, %esi	# i,
	movl	$.LC6, %edi	#,
	movl	$4, %eax	#,
	call	printf	#
.L16:
	.loc 1 116 0
	testl	%r14d, %r14d	# flag
	je	.L17	#,
	.loc 1 116 0 is_stmt 0 discriminator 1
	movl	$0, %edi	#,
	call	terminate	#
.L17:
	.loc 1 117 0 is_stmt 1
	movsd	-48(%rbp), %xmm0	# r_diff, tmp151
	movapd	%xmm0, %xmm1	# tmp151, D.5075
	mulsd	-48(%rbp), %xmm1	# r_diff, D.5075
	movsd	-40(%rbp), %xmm0	# i_diff, tmp152
	mulsd	-40(%rbp), %xmm0	# i_diff, D.5075
	addsd	%xmm1, %xmm0	# D.5075, D.5075
	movsd	-64(%rbp), %xmm1	# sum, sum.8
	addsd	%xmm1, %xmm0	# sum.8, sum.9
	movsd	%xmm0, -64(%rbp)	# sum.9, sum
	.loc 1 105 0
	addl	$1, %r12d	#, k
.L12:
	.loc 1 105 0 is_stmt 0 discriminator 1
	cmpl	$2, %r12d	#, k
	jle	.L18	#,
	.loc 1 119 0 is_stmt 1
	movl	-72(%rbp), %eax	# dest, tmp153
	cltq
	addq	%rbx, %rax	# s, D.5074
	movq	%rax, %rdi	# D.5074,
	call	magsq_su3vec	#
	movsd	-56(%rbp), %xmm1	# sum2, sum2.10
	addsd	%xmm1, %xmm0	# sum2.10, sum2.11
	movsd	%xmm0, -56(%rbp)	# sum2.11, sum2
	.loc 1 104 0
	addl	$1, %r13d	#, i
	addq	$2048, %rbx	#, s
.L11:
	.loc 1 104 0 is_stmt 0 discriminator 1
	movl	sites_on_node(%rip), %eax	# sites_on_node, sites_on_node.12
	cmpl	%eax, %r13d	# sites_on_node.12, i
	jl	.L19	#,
	.loc 1 121 0 is_stmt 1
	leaq	-64(%rbp), %rax	#, tmp154
	movq	%rax, %rdi	# tmp154,
	call	g_doublesum	#
	.loc 1 122 0
	leaq	-56(%rbp), %rax	#, tmp155
	movq	%rax, %rdi	# tmp155,
	call	g_doublesum	#
	.loc 1 123 0
	movl	$0, %eax	#,
	call	g_sync	#
	movl	this_node(%rip), %eax	# this_node, this_node.13
	testl	%eax, %eax	# this_node.13
	jne	.L8	#,
	.loc 1 124 0
	movsd	-64(%rbp), %xmm0	# sum, sum.14
	movsd	-56(%rbp), %xmm1	# sum2, sum2.15
	divsd	%xmm1, %xmm0	# sum2.15, D.5075
	call	sqrt	#
	movsd	%xmm0, -96(%rbp)	#, %sfp
	movq	-96(%rbp), %rax	# %sfp, D.5075
	movq	%rax, -96(%rbp)	# D.5075, %sfp
	movsd	-96(%rbp), %xmm0	# %sfp,
	movl	$.LC7, %edi	#,
	movl	$1, %eax	#,
	call	printf	#
	.loc 1 125 0
	movq	stdout(%rip), %rax	# stdout, stdout.16
	movq	%rax, %rdi	# stdout.16,
	call	fflush	#
.L8:
	.loc 1 127 0
	addq	$64, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%r13	#
	popq	%r14	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	check_invert, .-check_invert
	.section	.rodata
	.align 8
.LC0:
	.long	0
	.long	-1073741824
	.align 8
.LC1:
	.long	0
	.long	-1074790400
	.align 8
.LC3:
	.long	0
	.long	1072693248
	.align 16
.LC5:
	.long	4294967295
	.long	2147483647
	.long	0
	.long	0
	.text
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/include/libio.h"
	.file 5 "random.h"
	.file 6 "./macros.h"
	.file 7 "./complex.h"
	.file 8 "./su3.h"
	.file 9 "./lattice.h"
	.file 10 "/usr/include/stdio.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x7ac
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF98
	.byte	0x1
	.long	.LASF99
	.long	.LASF100
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
	.long	.LASF101
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
	.byte	0x58
	.byte	0x5
	.byte	0x6
	.long	0x329
	.uleb128 0xe
	.string	"r0"
	.byte	0x5
	.byte	0x8
	.long	0x38
	.byte	0
	.uleb128 0xe
	.string	"r1"
	.byte	0x5
	.byte	0x8
	.long	0x38
	.byte	0x8
	.uleb128 0xe
	.string	"r2"
	.byte	0x5
	.byte	0x8
	.long	0x38
	.byte	0x10
	.uleb128 0xe
	.string	"r3"
	.byte	0x5
	.byte	0x8
	.long	0x38
	.byte	0x18
	.uleb128 0xe
	.string	"r4"
	.byte	0x5
	.byte	0x8
	.long	0x38
	.byte	0x20
	.uleb128 0xe
	.string	"r5"
	.byte	0x5
	.byte	0x8
	.long	0x38
	.byte	0x28
	.uleb128 0xe
	.string	"r6"
	.byte	0x5
	.byte	0x8
	.long	0x38
	.byte	0x30
	.uleb128 0x8
	.long	.LASF50
	.byte	0x5
	.byte	0x9
	.long	0x38
	.byte	0x38
	.uleb128 0x8
	.long	.LASF51
	.byte	0x5
	.byte	0x9
	.long	0x38
	.byte	0x40
	.uleb128 0x8
	.long	.LASF52
	.byte	0x5
	.byte	0x9
	.long	0x38
	.byte	0x48
	.uleb128 0x8
	.long	.LASF53
	.byte	0x5
	.byte	0xa
	.long	0x29c
	.byte	0x50
	.byte	0
	.uleb128 0x2
	.long	.LASF54
	.byte	0x5
	.byte	0xb
	.long	0x2a3
	.uleb128 0x2
	.long	.LASF55
	.byte	0x6
	.byte	0x2a
	.long	0x62
	.uleb128 0xd
	.byte	0x10
	.byte	0x7
	.byte	0x49
	.long	0x360
	.uleb128 0x8
	.long	.LASF56
	.byte	0x7
	.byte	0x4a
	.long	0x29c
	.byte	0
	.uleb128 0x8
	.long	.LASF57
	.byte	0x7
	.byte	0x4b
	.long	0x29c
	.byte	0x8
	.byte	0
	.uleb128 0x2
	.long	.LASF58
	.byte	0x7
	.byte	0x4c
	.long	0x33f
	.uleb128 0xd
	.byte	0x90
	.byte	0x8
	.byte	0xe
	.long	0x37e
	.uleb128 0xe
	.string	"e"
	.byte	0x8
	.byte	0xe
	.long	0x37e
	.byte	0
	.byte	0
	.uleb128 0xb
	.long	0x360
	.long	0x394
	.uleb128 0xc
	.long	0x86
	.byte	0x2
	.uleb128 0xc
	.long	0x86
	.byte	0x2
	.byte	0
	.uleb128 0x2
	.long	.LASF59
	.byte	0x8
	.byte	0xe
	.long	0x36b
	.uleb128 0xd
	.byte	0x30
	.byte	0x8
	.byte	0xf
	.long	0x3b2
	.uleb128 0xe
	.string	"c"
	.byte	0x8
	.byte	0xf
	.long	0x3b2
	.byte	0
	.byte	0
	.uleb128 0xb
	.long	0x360
	.long	0x3c2
	.uleb128 0xc
	.long	0x86
	.byte	0x2
	.byte	0
	.uleb128 0x2
	.long	.LASF60
	.byte	0x8
	.byte	0xf
	.long	0x39f
	.uleb128 0xd
	.byte	0x50
	.byte	0x8
	.byte	0x10
	.long	0x42a
	.uleb128 0xe
	.string	"m01"
	.byte	0x8
	.byte	0x11
	.long	0x360
	.byte	0
	.uleb128 0xe
	.string	"m02"
	.byte	0x8
	.byte	0x11
	.long	0x360
	.byte	0x10
	.uleb128 0xe
	.string	"m12"
	.byte	0x8
	.byte	0x11
	.long	0x360
	.byte	0x20
	.uleb128 0x8
	.long	.LASF61
	.byte	0x8
	.byte	0x11
	.long	0x29c
	.byte	0x30
	.uleb128 0x8
	.long	.LASF62
	.byte	0x8
	.byte	0x11
	.long	0x29c
	.byte	0x38
	.uleb128 0x8
	.long	.LASF63
	.byte	0x8
	.byte	0x11
	.long	0x29c
	.byte	0x40
	.uleb128 0x8
	.long	.LASF64
	.byte	0x8
	.byte	0x11
	.long	0x29c
	.byte	0x48
	.byte	0
	.uleb128 0x2
	.long	.LASF65
	.byte	0x8
	.byte	0x11
	.long	0x3cd
	.uleb128 0xb
	.long	0x3c2
	.long	0x445
	.uleb128 0xc
	.long	0x86
	.byte	0x3
	.byte	0
	.uleb128 0xf
	.value	0x800
	.byte	0x9
	.byte	0x1f
	.long	0x55c
	.uleb128 0xe
	.string	"x"
	.byte	0x9
	.byte	0x22
	.long	0x5b
	.byte	0
	.uleb128 0xe
	.string	"y"
	.byte	0x9
	.byte	0x22
	.long	0x5b
	.byte	0x2
	.uleb128 0xe
	.string	"z"
	.byte	0x9
	.byte	0x22
	.long	0x5b
	.byte	0x4
	.uleb128 0xe
	.string	"t"
	.byte	0x9
	.byte	0x22
	.long	0x5b
	.byte	0x6
	.uleb128 0x8
	.long	.LASF66
	.byte	0x9
	.byte	0x24
	.long	0x95
	.byte	0x8
	.uleb128 0x8
	.long	.LASF67
	.byte	0x9
	.byte	0x26
	.long	0x62
	.byte	0xc
	.uleb128 0x8
	.long	.LASF68
	.byte	0x9
	.byte	0x29
	.long	0x329
	.byte	0x10
	.uleb128 0x8
	.long	.LASF69
	.byte	0x9
	.byte	0x2b
	.long	0x62
	.byte	0x68
	.uleb128 0x8
	.long	.LASF70
	.byte	0x9
	.byte	0x32
	.long	0x55c
	.byte	0x70
	.uleb128 0x10
	.string	"mom"
	.byte	0x9
	.byte	0x3e
	.long	0x56c
	.value	0x2b0
	.uleb128 0x11
	.long	.LASF71
	.byte	0x9
	.byte	0x42
	.long	0x57c
	.value	0x3f0
	.uleb128 0x10
	.string	"phi"
	.byte	0x9
	.byte	0x45
	.long	0x3c2
	.value	0x410
	.uleb128 0x11
	.long	.LASF72
	.byte	0x9
	.byte	0x46
	.long	0x3c2
	.value	0x440
	.uleb128 0x11
	.long	.LASF73
	.byte	0x9
	.byte	0x47
	.long	0x3c2
	.value	0x470
	.uleb128 0x10
	.string	"xxx"
	.byte	0x9
	.byte	0x48
	.long	0x3c2
	.value	0x4a0
	.uleb128 0x10
	.string	"ttt"
	.byte	0x9
	.byte	0x49
	.long	0x3c2
	.value	0x4d0
	.uleb128 0x11
	.long	.LASF74
	.byte	0x9
	.byte	0x4a
	.long	0x3c2
	.value	0x500
	.uleb128 0x11
	.long	.LASF75
	.byte	0x9
	.byte	0x5d
	.long	0x435
	.value	0x530
	.uleb128 0x11
	.long	.LASF76
	.byte	0x9
	.byte	0x5f
	.long	0x435
	.value	0x5f0
	.uleb128 0x11
	.long	.LASF77
	.byte	0x9
	.byte	0x60
	.long	0x3c2
	.value	0x6b0
	.uleb128 0x11
	.long	.LASF78
	.byte	0x9
	.byte	0x62
	.long	0x394
	.value	0x6e0
	.uleb128 0x11
	.long	.LASF79
	.byte	0x9
	.byte	0x62
	.long	0x394
	.value	0x770
	.byte	0
	.uleb128 0xb
	.long	0x394
	.long	0x56c
	.uleb128 0xc
	.long	0x86
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.long	0x42a
	.long	0x57c
	.uleb128 0xc
	.long	0x86
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.long	0x29c
	.long	0x58c
	.uleb128 0xc
	.long	0x86
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.long	.LASF80
	.byte	0x9
	.byte	0x63
	.long	0x445
	.uleb128 0x12
	.long	.LASF85
	.byte	0x1
	.byte	0x16
	.long	0x62
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x60d
	.uleb128 0x13
	.string	"src"
	.byte	0x1
	.byte	0x16
	.long	0x334
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x14
	.long	.LASF81
	.byte	0x1
	.byte	0x16
	.long	0x334
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x14
	.long	.LASF82
	.byte	0x1
	.byte	0x16
	.long	0x334
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x14
	.long	.LASF83
	.byte	0x1
	.byte	0x17
	.long	0x29c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x15
	.string	"cgn"
	.byte	0x1
	.byte	0x18
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x16
	.long	.LASF84
	.byte	0x1
	.byte	0x19
	.long	0x29c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x12
	.long	.LASF86
	.byte	0x1
	.byte	0x3d
	.long	0x62
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x69a
	.uleb128 0x13
	.string	"src"
	.byte	0x1
	.byte	0x3d
	.long	0x334
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x14
	.long	.LASF81
	.byte	0x1
	.byte	0x3d
	.long	0x334
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x14
	.long	.LASF82
	.byte	0x1
	.byte	0x3d
	.long	0x334
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x14
	.long	.LASF83
	.byte	0x1
	.byte	0x3e
	.long	0x29c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x15
	.string	"cgn"
	.byte	0x1
	.byte	0x3f
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x16
	.long	.LASF84
	.byte	0x1
	.byte	0x40
	.long	0x29c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x15
	.string	"i"
	.byte	0x1
	.byte	0x41
	.long	0x62
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.byte	0x42
	.long	0x69a
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x58c
	.uleb128 0x17
	.long	.LASF102
	.byte	0x1
	.byte	0x5c
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x762
	.uleb128 0x13
	.string	"src"
	.byte	0x1
	.byte	0x5c
	.long	0x334
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x14
	.long	.LASF81
	.byte	0x1
	.byte	0x5c
	.long	0x334
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x14
	.long	.LASF83
	.byte	0x1
	.byte	0x5c
	.long	0x29c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x13
	.string	"tol"
	.byte	0x1
	.byte	0x5d
	.long	0x29c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x15
	.string	"i"
	.byte	0x1
	.byte	0x5e
	.long	0x62
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x15
	.string	"k"
	.byte	0x1
	.byte	0x5e
	.long	0x62
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x16
	.long	.LASF87
	.byte	0x1
	.byte	0x5e
	.long	0x62
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.byte	0x5f
	.long	0x69a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x16
	.long	.LASF88
	.byte	0x1
	.byte	0x60
	.long	0x29c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x16
	.long	.LASF89
	.byte	0x1
	.byte	0x60
	.long	0x29c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x15
	.string	"sum"
	.byte	0x1
	.byte	0x61
	.long	0x29c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x16
	.long	.LASF90
	.byte	0x1
	.byte	0x61
	.long	0x29c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.uleb128 0x18
	.long	.LASF91
	.byte	0xa
	.byte	0xa9
	.long	0x25b
	.uleb128 0x18
	.long	.LASF92
	.byte	0x9
	.byte	0x77
	.long	0x62
	.uleb128 0x18
	.long	.LASF93
	.byte	0x9
	.byte	0x7a
	.long	0x29c
	.uleb128 0x18
	.long	.LASF94
	.byte	0x9
	.byte	0x87
	.long	0x62
	.uleb128 0x18
	.long	.LASF95
	.byte	0x9
	.byte	0x88
	.long	0x62
	.uleb128 0x18
	.long	.LASF96
	.byte	0x9
	.byte	0x8b
	.long	0x62
	.uleb128 0x18
	.long	.LASF97
	.byte	0x9
	.byte	0x9a
	.long	0x69a
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
.LASF31:
	.string	"_shortbuf"
.LASF90:
	.string	"sum2"
.LASF99:
	.string	"mat_invert.c"
.LASF101:
	.string	"_IO_lock_t"
.LASF71:
	.string	"phase"
.LASF100:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/433.milc/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF20:
	.string	"_IO_buf_end"
.LASF82:
	.string	"temp"
.LASF102:
	.string	"check_invert"
.LASF95:
	.string	"even_sites_on_node"
.LASF18:
	.string	"_IO_write_end"
.LASF3:
	.string	"unsigned int"
.LASF89:
	.string	"i_diff"
.LASF12:
	.string	"_flags"
.LASF70:
	.string	"link"
.LASF24:
	.string	"_markers"
.LASF85:
	.string	"mat_invert_cg"
.LASF65:
	.string	"anti_hermitmat"
.LASF80:
	.string	"site"
.LASF97:
	.string	"lattice"
.LASF45:
	.string	"_pos"
.LASF91:
	.string	"stdout"
.LASF23:
	.string	"_IO_save_end"
.LASF48:
	.string	"float"
.LASF67:
	.string	"index"
.LASF47:
	.string	"long long unsigned int"
.LASF79:
	.string	"staple"
.LASF22:
	.string	"_IO_backup_base"
.LASF33:
	.string	"_offset"
.LASF26:
	.string	"_fileno"
.LASF86:
	.string	"mat_invert_uml"
.LASF7:
	.string	"size_t"
.LASF52:
	.string	"ic_state"
.LASF74:
	.string	"g_rand"
.LASF15:
	.string	"_IO_read_base"
.LASF96:
	.string	"this_node"
.LASF43:
	.string	"_next"
.LASF66:
	.string	"parity"
.LASF60:
	.string	"su3_vector"
.LASF11:
	.string	"char"
.LASF39:
	.string	"_mode"
.LASF42:
	.string	"_IO_marker"
.LASF13:
	.string	"_IO_read_ptr"
.LASF64:
	.string	"space"
.LASF75:
	.string	"tempvec"
.LASF51:
	.string	"addend"
.LASF16:
	.string	"_IO_write_base"
.LASF46:
	.string	"long long int"
.LASF21:
	.string	"_IO_save_base"
.LASF88:
	.string	"r_diff"
.LASF93:
	.string	"rsqprop"
.LASF94:
	.string	"sites_on_node"
.LASF53:
	.string	"scale"
.LASF77:
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
.LASF83:
	.string	"mass"
.LASF30:
	.string	"_vtable_offset"
.LASF68:
	.string	"site_prn"
.LASF63:
	.string	"m22im"
.LASF98:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF14:
	.string	"_IO_read_end"
.LASF62:
	.string	"m11im"
.LASF5:
	.string	"short int"
.LASF6:
	.string	"long int"
.LASF76:
	.string	"templongvec"
.LASF61:
	.string	"m00im"
.LASF87:
	.string	"flag"
.LASF84:
	.string	"finalrsq"
.LASF58:
	.string	"complex"
.LASF56:
	.string	"real"
.LASF50:
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
.LASF78:
	.string	"tempmat1"
.LASF57:
	.string	"imag"
.LASF17:
	.string	"_IO_write_ptr"
.LASF55:
	.string	"field_offset"
.LASF73:
	.string	"cg_p"
.LASF54:
	.string	"double_prn"
.LASF8:
	.string	"__off_t"
.LASF4:
	.string	"signed char"
.LASF2:
	.string	"short unsigned int"
.LASF92:
	.string	"niter"
.LASF49:
	.string	"double"
.LASF25:
	.string	"_chain"
.LASF27:
	.string	"_flags2"
.LASF29:
	.string	"_cur_column"
.LASF81:
	.string	"dest"
.LASF72:
	.string	"resid"
.LASF59:
	.string	"su3_matrix"
.LASF9:
	.string	"__off64_t"
.LASF40:
	.string	"_unused2"
.LASF19:
	.string	"_IO_buf_base"
.LASF69:
	.string	"space1"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
