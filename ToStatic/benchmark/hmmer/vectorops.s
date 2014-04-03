	.file	"vectorops.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 vectorops.c -mtune=generic -march=x86-64 -g
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
	.globl	DSet
	.type	DSet, @function
DSet:
.LFB2:
	.file 1 "vectorops.c"
	.loc 1 33 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# vec, vec
	movl	%esi, -28(%rbp)	# n, n
	movsd	%xmm0, -40(%rbp)	# value, value
	.loc 1 35 0
	movl	$0, -4(%rbp)	#, x
	jmp	.L2	#
.L3:
	.loc 1 35 0 is_stmt 0 discriminator 2
	movl	-4(%rbp), %eax	# x, tmp62
	cltq
	leaq	0(,%rax,8), %rdx	#, D.4013
	movq	-24(%rbp), %rax	# vec, tmp63
	addq	%rax, %rdx	# tmp63, D.4014
	movq	-40(%rbp), %rax	# value, tmp64
	movq	%rax, (%rdx)	# tmp64, *_7
	addl	$1, -4(%rbp)	#, x
.L2:
	.loc 1 35 0 discriminator 1
	movl	-4(%rbp), %eax	# x, tmp65
	cmpl	-28(%rbp), %eax	# n, tmp65
	jl	.L3	#,
	.loc 1 36 0 is_stmt 1
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	DSet, .-DSet
	.globl	FSet
	.type	FSet, @function
FSet:
.LFB3:
	.loc 1 40 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# vec, vec
	movl	%esi, -28(%rbp)	# n, n
	movss	%xmm0, -32(%rbp)	# value, value
	.loc 1 42 0
	movl	$0, -4(%rbp)	#, x
	jmp	.L5	#
.L6:
	.loc 1 42 0 is_stmt 0 discriminator 2
	movl	-4(%rbp), %eax	# x, tmp62
	cltq
	leaq	0(,%rax,4), %rdx	#, D.4015
	movq	-24(%rbp), %rax	# vec, tmp63
	addq	%rax, %rdx	# tmp63, D.4016
	movl	-32(%rbp), %eax	# value, tmp64
	movl	%eax, (%rdx)	# tmp64, *_7
	addl	$1, -4(%rbp)	#, x
.L5:
	.loc 1 42 0 discriminator 1
	movl	-4(%rbp), %eax	# x, tmp65
	cmpl	-28(%rbp), %eax	# n, tmp65
	jl	.L6	#,
	.loc 1 43 0 is_stmt 1
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	FSet, .-FSet
	.globl	DScale
	.type	DScale, @function
DScale:
.LFB4:
	.loc 1 47 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# vec, vec
	movl	%esi, -28(%rbp)	# n, n
	movsd	%xmm0, -40(%rbp)	# scale, scale
	.loc 1 49 0
	movl	$0, -4(%rbp)	#, x
	jmp	.L8	#
.L9:
	.loc 1 49 0 is_stmt 0 discriminator 2
	movl	-4(%rbp), %eax	# x, tmp67
	cltq
	leaq	0(,%rax,8), %rdx	#, D.4017
	movq	-24(%rbp), %rax	# vec, tmp68
	addq	%rdx, %rax	# D.4017, D.4018
	movl	-4(%rbp), %edx	# x, tmp69
	movslq	%edx, %rdx	# tmp69, D.4017
	leaq	0(,%rdx,8), %rcx	#, D.4017
	movq	-24(%rbp), %rdx	# vec, tmp70
	addq	%rcx, %rdx	# D.4017, D.4018
	movsd	(%rdx), %xmm0	# *_10, D.4019
	mulsd	-40(%rbp), %xmm0	# scale, D.4019
	movsd	%xmm0, (%rax)	# D.4019, *_7
	addl	$1, -4(%rbp)	#, x
.L8:
	.loc 1 49 0 discriminator 1
	movl	-4(%rbp), %eax	# x, tmp71
	cmpl	-28(%rbp), %eax	# n, tmp71
	jl	.L9	#,
	.loc 1 50 0 is_stmt 1
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	DScale, .-DScale
	.globl	FScale
	.type	FScale, @function
FScale:
.LFB5:
	.loc 1 54 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# vec, vec
	movl	%esi, -28(%rbp)	# n, n
	movss	%xmm0, -32(%rbp)	# scale, scale
	.loc 1 56 0
	movl	$0, -4(%rbp)	#, x
	jmp	.L11	#
.L12:
	.loc 1 56 0 is_stmt 0 discriminator 2
	movl	-4(%rbp), %eax	# x, tmp67
	cltq
	leaq	0(,%rax,4), %rdx	#, D.4020
	movq	-24(%rbp), %rax	# vec, tmp68
	addq	%rdx, %rax	# D.4020, D.4021
	movl	-4(%rbp), %edx	# x, tmp69
	movslq	%edx, %rdx	# tmp69, D.4020
	leaq	0(,%rdx,4), %rcx	#, D.4020
	movq	-24(%rbp), %rdx	# vec, tmp70
	addq	%rcx, %rdx	# D.4020, D.4021
	movss	(%rdx), %xmm0	# *_10, D.4022
	mulss	-32(%rbp), %xmm0	# scale, D.4022
	movss	%xmm0, (%rax)	# D.4022, *_7
	addl	$1, -4(%rbp)	#, x
.L11:
	.loc 1 56 0 discriminator 1
	movl	-4(%rbp), %eax	# x, tmp71
	cmpl	-28(%rbp), %eax	# n, tmp71
	jl	.L12	#,
	.loc 1 57 0 is_stmt 1
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	FScale, .-FScale
	.globl	DSum
	.type	DSum, @function
DSum:
.LFB6:
	.loc 1 61 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# vec, vec
	movl	%esi, -28(%rbp)	# n, n
	.loc 1 62 0
	movl	$0, %eax	#, tmp65
	movq	%rax, -8(%rbp)	# tmp65, sum
	.loc 1 64 0
	movl	$0, -12(%rbp)	#, x
	jmp	.L14	#
.L15:
	.loc 1 64 0 is_stmt 0 discriminator 2
	movl	-12(%rbp), %eax	# x, tmp66
	cltq
	leaq	0(,%rax,8), %rdx	#, D.4023
	movq	-24(%rbp), %rax	# vec, tmp67
	addq	%rdx, %rax	# D.4023, D.4024
	movsd	(%rax), %xmm0	# *_9, D.4025
	movsd	-8(%rbp), %xmm1	# sum, tmp69
	addsd	%xmm1, %xmm0	# tmp69, tmp68
	movsd	%xmm0, -8(%rbp)	# tmp68, sum
	addl	$1, -12(%rbp)	#, x
.L14:
	.loc 1 64 0 discriminator 1
	movl	-12(%rbp), %eax	# x, tmp70
	cmpl	-28(%rbp), %eax	# n, tmp70
	jl	.L15	#,
	.loc 1 65 0 is_stmt 1
	movq	-8(%rbp), %rax	# sum, D.4025
	.loc 1 66 0
	movq	%rax, -40(%rbp)	# <retval>, %sfp
	movsd	-40(%rbp), %xmm0	# %sfp,
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	DSum, .-DSum
	.globl	FSum
	.type	FSum, @function
FSum:
.LFB7:
	.loc 1 70 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# vec, vec
	movl	%esi, -28(%rbp)	# n, n
	.loc 1 71 0
	movl	.LC1(%rip), %eax	#, tmp65
	movl	%eax, -8(%rbp)	# tmp65, sum
	.loc 1 73 0
	movl	$0, -4(%rbp)	#, x
	jmp	.L18	#
.L19:
	.loc 1 73 0 is_stmt 0 discriminator 2
	movl	-4(%rbp), %eax	# x, tmp66
	cltq
	leaq	0(,%rax,4), %rdx	#, D.4027
	movq	-24(%rbp), %rax	# vec, tmp67
	addq	%rdx, %rax	# D.4027, D.4028
	movss	(%rax), %xmm0	# *_9, D.4029
	movss	-8(%rbp), %xmm1	# sum, tmp69
	addss	%xmm1, %xmm0	# tmp69, tmp68
	movss	%xmm0, -8(%rbp)	# tmp68, sum
	addl	$1, -4(%rbp)	#, x
.L18:
	.loc 1 73 0 discriminator 1
	movl	-4(%rbp), %eax	# x, tmp70
	cmpl	-28(%rbp), %eax	# n, tmp70
	jl	.L19	#,
	.loc 1 74 0 is_stmt 1
	movl	-8(%rbp), %eax	# sum, D.4029
	.loc 1 75 0
	movl	%eax, -32(%rbp)	# <retval>, %sfp
	movss	-32(%rbp), %xmm0	# %sfp,
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	FSum, .-FSum
	.globl	DAdd
	.type	DAdd, @function
DAdd:
.LFB8:
	.loc 1 79 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# vec1, vec1
	movq	%rsi, -32(%rbp)	# vec2, vec2
	movl	%edx, -36(%rbp)	# n, n
	.loc 1 81 0
	movl	$0, -4(%rbp)	#, x
	jmp	.L22	#
.L23:
	.loc 1 81 0 is_stmt 0 discriminator 2
	movl	-4(%rbp), %eax	# x, tmp71
	cltq
	leaq	0(,%rax,8), %rdx	#, D.4030
	movq	-24(%rbp), %rax	# vec1, tmp72
	addq	%rdx, %rax	# D.4030, D.4031
	movl	-4(%rbp), %edx	# x, tmp73
	movslq	%edx, %rdx	# tmp73, D.4030
	leaq	0(,%rdx,8), %rcx	#, D.4030
	movq	-24(%rbp), %rdx	# vec1, tmp74
	addq	%rcx, %rdx	# D.4030, D.4031
	movsd	(%rdx), %xmm1	# *_10, D.4032
	movl	-4(%rbp), %edx	# x, tmp75
	movslq	%edx, %rdx	# tmp75, D.4030
	leaq	0(,%rdx,8), %rcx	#, D.4030
	movq	-32(%rbp), %rdx	# vec2, tmp76
	addq	%rcx, %rdx	# D.4030, D.4031
	movsd	(%rdx), %xmm0	# *_15, D.4032
	addsd	%xmm1, %xmm0	# D.4032, D.4032
	movsd	%xmm0, (%rax)	# D.4032, *_7
	addl	$1, -4(%rbp)	#, x
.L22:
	.loc 1 81 0 discriminator 1
	movl	-4(%rbp), %eax	# x, tmp77
	cmpl	-36(%rbp), %eax	# n, tmp77
	jl	.L23	#,
	.loc 1 82 0 is_stmt 1
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	DAdd, .-DAdd
	.globl	FAdd
	.type	FAdd, @function
FAdd:
.LFB9:
	.loc 1 86 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# vec1, vec1
	movq	%rsi, -32(%rbp)	# vec2, vec2
	movl	%edx, -36(%rbp)	# n, n
	.loc 1 88 0
	movl	$0, -4(%rbp)	#, x
	jmp	.L25	#
.L26:
	.loc 1 88 0 is_stmt 0 discriminator 2
	movl	-4(%rbp), %eax	# x, tmp71
	cltq
	leaq	0(,%rax,4), %rdx	#, D.4033
	movq	-24(%rbp), %rax	# vec1, tmp72
	addq	%rdx, %rax	# D.4033, D.4034
	movl	-4(%rbp), %edx	# x, tmp73
	movslq	%edx, %rdx	# tmp73, D.4033
	leaq	0(,%rdx,4), %rcx	#, D.4033
	movq	-24(%rbp), %rdx	# vec1, tmp74
	addq	%rcx, %rdx	# D.4033, D.4034
	movss	(%rdx), %xmm1	# *_10, D.4035
	movl	-4(%rbp), %edx	# x, tmp75
	movslq	%edx, %rdx	# tmp75, D.4033
	leaq	0(,%rdx,4), %rcx	#, D.4033
	movq	-32(%rbp), %rdx	# vec2, tmp76
	addq	%rcx, %rdx	# D.4033, D.4034
	movss	(%rdx), %xmm0	# *_15, D.4035
	addss	%xmm1, %xmm0	# D.4035, D.4035
	movss	%xmm0, (%rax)	# D.4035, *_7
	addl	$1, -4(%rbp)	#, x
.L25:
	.loc 1 88 0 discriminator 1
	movl	-4(%rbp), %eax	# x, tmp77
	cmpl	-36(%rbp), %eax	# n, tmp77
	jl	.L26	#,
	.loc 1 89 0 is_stmt 1
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	FAdd, .-FAdd
	.globl	DCopy
	.type	DCopy, @function
DCopy:
.LFB10:
	.loc 1 93 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# vec1, vec1
	movq	%rsi, -32(%rbp)	# vec2, vec2
	movl	%edx, -36(%rbp)	# n, n
	.loc 1 95 0
	movl	$0, -4(%rbp)	#, x
	jmp	.L28	#
.L29:
	.loc 1 95 0 is_stmt 0 discriminator 2
	movl	-4(%rbp), %eax	# x, tmp66
	cltq
	leaq	0(,%rax,8), %rdx	#, D.4036
	movq	-24(%rbp), %rax	# vec1, tmp67
	addq	%rax, %rdx	# tmp67, D.4037
	movl	-4(%rbp), %eax	# x, tmp68
	cltq
	leaq	0(,%rax,8), %rcx	#, D.4036
	movq	-32(%rbp), %rax	# vec2, tmp69
	addq	%rcx, %rax	# D.4036, D.4037
	movq	(%rax), %rax	# *_11, D.4038
	movq	%rax, (%rdx)	# D.4038, *_7
	addl	$1, -4(%rbp)	#, x
.L28:
	.loc 1 95 0 discriminator 1
	movl	-4(%rbp), %eax	# x, tmp70
	cmpl	-36(%rbp), %eax	# n, tmp70
	jl	.L29	#,
	.loc 1 96 0 is_stmt 1
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	DCopy, .-DCopy
	.globl	FCopy
	.type	FCopy, @function
FCopy:
.LFB11:
	.loc 1 100 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# vec1, vec1
	movq	%rsi, -32(%rbp)	# vec2, vec2
	movl	%edx, -36(%rbp)	# n, n
	.loc 1 102 0
	movl	$0, -4(%rbp)	#, x
	jmp	.L31	#
.L32:
	.loc 1 102 0 is_stmt 0 discriminator 2
	movl	-4(%rbp), %eax	# x, tmp66
	cltq
	leaq	0(,%rax,4), %rdx	#, D.4039
	movq	-24(%rbp), %rax	# vec1, tmp67
	addq	%rax, %rdx	# tmp67, D.4040
	movl	-4(%rbp), %eax	# x, tmp68
	cltq
	leaq	0(,%rax,4), %rcx	#, D.4039
	movq	-32(%rbp), %rax	# vec2, tmp69
	addq	%rcx, %rax	# D.4039, D.4040
	movl	(%rax), %eax	# *_11, D.4041
	movl	%eax, (%rdx)	# D.4041, *_7
	addl	$1, -4(%rbp)	#, x
.L31:
	.loc 1 102 0 discriminator 1
	movl	-4(%rbp), %eax	# x, tmp70
	cmpl	-36(%rbp), %eax	# n, tmp70
	jl	.L32	#,
	.loc 1 103 0 is_stmt 1
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	FCopy, .-FCopy
	.globl	DDot
	.type	DDot, @function
DDot:
.LFB12:
	.loc 1 107 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# vec1, vec1
	movq	%rsi, -32(%rbp)	# vec2, vec2
	movl	%edx, -36(%rbp)	# n, n
	.loc 1 108 0
	movl	$0, %eax	#, tmp70
	movq	%rax, -8(%rbp)	# tmp70, result
	.loc 1 110 0
	movl	$0, -12(%rbp)	#, x
	jmp	.L34	#
.L35:
	.loc 1 110 0 is_stmt 0 discriminator 2
	movl	-12(%rbp), %eax	# x, tmp71
	cltq
	leaq	0(,%rax,8), %rdx	#, D.4042
	movq	-24(%rbp), %rax	# vec1, tmp72
	addq	%rdx, %rax	# D.4042, D.4043
	movsd	(%rax), %xmm1	# *_9, D.4044
	movl	-12(%rbp), %eax	# x, tmp73
	cltq
	leaq	0(,%rax,8), %rdx	#, D.4042
	movq	-32(%rbp), %rax	# vec2, tmp74
	addq	%rdx, %rax	# D.4042, D.4043
	movsd	(%rax), %xmm0	# *_14, D.4044
	mulsd	%xmm1, %xmm0	# D.4044, D.4044
	movsd	-8(%rbp), %xmm1	# result, tmp76
	addsd	%xmm1, %xmm0	# tmp76, tmp75
	movsd	%xmm0, -8(%rbp)	# tmp75, result
	addl	$1, -12(%rbp)	#, x
.L34:
	.loc 1 110 0 discriminator 1
	movl	-12(%rbp), %eax	# x, tmp77
	cmpl	-36(%rbp), %eax	# n, tmp77
	jl	.L35	#,
	.loc 1 111 0 is_stmt 1
	movq	-8(%rbp), %rax	# result, D.4044
	.loc 1 112 0
	movq	%rax, -48(%rbp)	# <retval>, %sfp
	movsd	-48(%rbp), %xmm0	# %sfp,
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	DDot, .-DDot
	.globl	FDot
	.type	FDot, @function
FDot:
.LFB13:
	.loc 1 116 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# vec1, vec1
	movq	%rsi, -32(%rbp)	# vec2, vec2
	movl	%edx, -36(%rbp)	# n, n
	.loc 1 117 0
	movl	.LC1(%rip), %eax	#, tmp70
	movl	%eax, -8(%rbp)	# tmp70, result
	.loc 1 119 0
	movl	$0, -4(%rbp)	#, x
	jmp	.L38	#
.L39:
	.loc 1 119 0 is_stmt 0 discriminator 2
	movl	-4(%rbp), %eax	# x, tmp71
	cltq
	leaq	0(,%rax,4), %rdx	#, D.4045
	movq	-24(%rbp), %rax	# vec1, tmp72
	addq	%rdx, %rax	# D.4045, D.4046
	movss	(%rax), %xmm1	# *_9, D.4047
	movl	-4(%rbp), %eax	# x, tmp73
	cltq
	leaq	0(,%rax,4), %rdx	#, D.4045
	movq	-32(%rbp), %rax	# vec2, tmp74
	addq	%rdx, %rax	# D.4045, D.4046
	movss	(%rax), %xmm0	# *_14, D.4047
	mulss	%xmm1, %xmm0	# D.4047, D.4047
	movss	-8(%rbp), %xmm1	# result, tmp76
	addss	%xmm1, %xmm0	# tmp76, tmp75
	movss	%xmm0, -8(%rbp)	# tmp75, result
	addl	$1, -4(%rbp)	#, x
.L38:
	.loc 1 119 0 discriminator 1
	movl	-4(%rbp), %eax	# x, tmp77
	cmpl	-36(%rbp), %eax	# n, tmp77
	jl	.L39	#,
	.loc 1 120 0 is_stmt 1
	movl	-8(%rbp), %eax	# result, D.4047
	.loc 1 121 0
	movl	%eax, -40(%rbp)	# <retval>, %sfp
	movss	-40(%rbp), %xmm0	# %sfp,
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	FDot, .-FDot
	.globl	DMax
	.type	DMax, @function
DMax:
.LFB14:
	.loc 1 125 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# vec, vec
	movl	%esi, -28(%rbp)	# n, n
	.loc 1 129 0
	movq	-24(%rbp), %rax	# vec, tmp68
	movq	(%rax), %rax	# *vec_4(D), tmp69
	movq	%rax, -8(%rbp)	# tmp69, best
	.loc 1 130 0
	movl	$1, -12(%rbp)	#, i
	jmp	.L42	#
.L45:
	.loc 1 131 0
	movl	-12(%rbp), %eax	# i, tmp70
	cltq
	leaq	0(,%rax,8), %rdx	#, D.4048
	movq	-24(%rbp), %rax	# vec, tmp71
	addq	%rdx, %rax	# D.4048, D.4049
	movsd	(%rax), %xmm0	# *_10, D.4050
	ucomisd	-8(%rbp), %xmm0	# best, D.4050
	jbe	.L43	#,
	.loc 1 131 0 is_stmt 0 discriminator 1
	movl	-12(%rbp), %eax	# i, tmp72
	cltq
	leaq	0(,%rax,8), %rdx	#, D.4048
	movq	-24(%rbp), %rax	# vec, tmp73
	addq	%rdx, %rax	# D.4048, D.4049
	movq	(%rax), %rax	# *_14, tmp74
	movq	%rax, -8(%rbp)	# tmp74, best
.L43:
	.loc 1 130 0 is_stmt 1
	addl	$1, -12(%rbp)	#, i
.L42:
	.loc 1 130 0 is_stmt 0 discriminator 1
	movl	-12(%rbp), %eax	# i, tmp75
	cmpl	-28(%rbp), %eax	# n, tmp75
	jl	.L45	#,
	.loc 1 132 0 is_stmt 1
	movq	-8(%rbp), %rax	# best, D.4050
	.loc 1 133 0
	movq	%rax, -40(%rbp)	# <retval>, %sfp
	movsd	-40(%rbp), %xmm0	# %sfp,
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	DMax, .-DMax
	.globl	FMax
	.type	FMax, @function
FMax:
.LFB15:
	.loc 1 137 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# vec, vec
	movl	%esi, -28(%rbp)	# n, n
	.loc 1 141 0
	movq	-24(%rbp), %rax	# vec, tmp68
	movl	(%rax), %eax	# *vec_4(D), tmp69
	movl	%eax, -4(%rbp)	# tmp69, best
	.loc 1 142 0
	movl	$1, -8(%rbp)	#, i
	jmp	.L49	#
.L52:
	.loc 1 143 0
	movl	-8(%rbp), %eax	# i, tmp70
	cltq
	leaq	0(,%rax,4), %rdx	#, D.4051
	movq	-24(%rbp), %rax	# vec, tmp71
	addq	%rdx, %rax	# D.4051, D.4052
	movss	(%rax), %xmm0	# *_10, D.4053
	ucomiss	-4(%rbp), %xmm0	# best, D.4053
	jbe	.L50	#,
	.loc 1 143 0 is_stmt 0 discriminator 1
	movl	-8(%rbp), %eax	# i, tmp72
	cltq
	leaq	0(,%rax,4), %rdx	#, D.4051
	movq	-24(%rbp), %rax	# vec, tmp73
	addq	%rdx, %rax	# D.4051, D.4052
	movl	(%rax), %eax	# *_14, tmp74
	movl	%eax, -4(%rbp)	# tmp74, best
.L50:
	.loc 1 142 0 is_stmt 1
	addl	$1, -8(%rbp)	#, i
.L49:
	.loc 1 142 0 is_stmt 0 discriminator 1
	movl	-8(%rbp), %eax	# i, tmp75
	cmpl	-28(%rbp), %eax	# n, tmp75
	jl	.L52	#,
	.loc 1 144 0 is_stmt 1
	movl	-4(%rbp), %eax	# best, D.4053
	.loc 1 145 0
	movl	%eax, -32(%rbp)	# <retval>, %sfp
	movss	-32(%rbp), %xmm0	# %sfp,
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	FMax, .-FMax
	.globl	DMin
	.type	DMin, @function
DMin:
.LFB16:
	.loc 1 149 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# vec, vec
	movl	%esi, -28(%rbp)	# n, n
	.loc 1 153 0
	movq	-24(%rbp), %rax	# vec, tmp68
	movq	(%rax), %rax	# *vec_4(D), tmp69
	movq	%rax, -8(%rbp)	# tmp69, best
	.loc 1 154 0
	movl	$1, -12(%rbp)	#, i
	jmp	.L56	#
.L59:
	.loc 1 155 0
	movl	-12(%rbp), %eax	# i, tmp70
	cltq
	leaq	0(,%rax,8), %rdx	#, D.4054
	movq	-24(%rbp), %rax	# vec, tmp71
	addq	%rdx, %rax	# D.4054, D.4055
	movsd	(%rax), %xmm1	# *_10, D.4056
	movsd	-8(%rbp), %xmm0	# best, tmp72
	ucomisd	%xmm1, %xmm0	# D.4056, tmp72
	jbe	.L57	#,
	.loc 1 155 0 is_stmt 0 discriminator 1
	movl	-12(%rbp), %eax	# i, tmp73
	cltq
	leaq	0(,%rax,8), %rdx	#, D.4054
	movq	-24(%rbp), %rax	# vec, tmp74
	addq	%rdx, %rax	# D.4054, D.4055
	movq	(%rax), %rax	# *_14, tmp75
	movq	%rax, -8(%rbp)	# tmp75, best
.L57:
	.loc 1 154 0 is_stmt 1
	addl	$1, -12(%rbp)	#, i
.L56:
	.loc 1 154 0 is_stmt 0 discriminator 1
	movl	-12(%rbp), %eax	# i, tmp76
	cmpl	-28(%rbp), %eax	# n, tmp76
	jl	.L59	#,
	.loc 1 156 0 is_stmt 1
	movq	-8(%rbp), %rax	# best, D.4056
	.loc 1 157 0
	movq	%rax, -40(%rbp)	# <retval>, %sfp
	movsd	-40(%rbp), %xmm0	# %sfp,
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	DMin, .-DMin
	.globl	FMin
	.type	FMin, @function
FMin:
.LFB17:
	.loc 1 161 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# vec, vec
	movl	%esi, -28(%rbp)	# n, n
	.loc 1 165 0
	movq	-24(%rbp), %rax	# vec, tmp68
	movl	(%rax), %eax	# *vec_4(D), tmp69
	movl	%eax, -4(%rbp)	# tmp69, best
	.loc 1 166 0
	movl	$1, -8(%rbp)	#, i
	jmp	.L63	#
.L66:
	.loc 1 167 0
	movl	-8(%rbp), %eax	# i, tmp70
	cltq
	leaq	0(,%rax,4), %rdx	#, D.4057
	movq	-24(%rbp), %rax	# vec, tmp71
	addq	%rdx, %rax	# D.4057, D.4058
	movss	(%rax), %xmm1	# *_10, D.4059
	movss	-4(%rbp), %xmm0	# best, tmp72
	ucomiss	%xmm1, %xmm0	# D.4059, tmp72
	jbe	.L64	#,
	.loc 1 167 0 is_stmt 0 discriminator 1
	movl	-8(%rbp), %eax	# i, tmp73
	cltq
	leaq	0(,%rax,4), %rdx	#, D.4057
	movq	-24(%rbp), %rax	# vec, tmp74
	addq	%rdx, %rax	# D.4057, D.4058
	movl	(%rax), %eax	# *_14, tmp75
	movl	%eax, -4(%rbp)	# tmp75, best
.L64:
	.loc 1 166 0 is_stmt 1
	addl	$1, -8(%rbp)	#, i
.L63:
	.loc 1 166 0 is_stmt 0 discriminator 1
	movl	-8(%rbp), %eax	# i, tmp76
	cmpl	-28(%rbp), %eax	# n, tmp76
	jl	.L66	#,
	.loc 1 168 0 is_stmt 1
	movl	-4(%rbp), %eax	# best, D.4059
	.loc 1 169 0
	movl	%eax, -32(%rbp)	# <retval>, %sfp
	movss	-32(%rbp), %xmm0	# %sfp,
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	FMin, .-FMin
	.globl	DArgMax
	.type	DArgMax, @function
DArgMax:
.LFB18:
	.loc 1 173 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# vec, vec
	movl	%esi, -28(%rbp)	# n, n
	.loc 1 175 0
	movl	$0, -4(%rbp)	#, best
	.loc 1 177 0
	movl	$1, -8(%rbp)	#, i
	jmp	.L70	#
.L73:
	.loc 1 178 0
	movl	-8(%rbp), %eax	# i, tmp69
	cltq
	leaq	0(,%rax,8), %rdx	#, D.4060
	movq	-24(%rbp), %rax	# vec, tmp70
	addq	%rdx, %rax	# D.4060, D.4061
	movsd	(%rax), %xmm0	# *_10, D.4062
	movl	-4(%rbp), %eax	# best, tmp71
	cltq
	leaq	0(,%rax,8), %rdx	#, D.4060
	movq	-24(%rbp), %rax	# vec, tmp72
	addq	%rdx, %rax	# D.4060, D.4061
	movsd	(%rax), %xmm1	# *_14, D.4062
	ucomisd	%xmm1, %xmm0	# D.4062, D.4062
	jbe	.L71	#,
	.loc 1 178 0 is_stmt 0 discriminator 1
	movl	-8(%rbp), %eax	# i, tmp73
	movl	%eax, -4(%rbp)	# tmp73, best
.L71:
	.loc 1 177 0 is_stmt 1
	addl	$1, -8(%rbp)	#, i
.L70:
	.loc 1 177 0 is_stmt 0 discriminator 1
	movl	-8(%rbp), %eax	# i, tmp74
	cmpl	-28(%rbp), %eax	# n, tmp74
	jl	.L73	#,
	.loc 1 179 0 is_stmt 1
	movl	-4(%rbp), %eax	# best, D.4063
	.loc 1 180 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	DArgMax, .-DArgMax
	.globl	FArgMax
	.type	FArgMax, @function
FArgMax:
.LFB19:
	.loc 1 184 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# vec, vec
	movl	%esi, -28(%rbp)	# n, n
	.loc 1 186 0
	movl	$0, -4(%rbp)	#, best
	.loc 1 188 0
	movl	$1, -8(%rbp)	#, i
	jmp	.L77	#
.L80:
	.loc 1 189 0
	movl	-8(%rbp), %eax	# i, tmp69
	cltq
	leaq	0(,%rax,4), %rdx	#, D.4064
	movq	-24(%rbp), %rax	# vec, tmp70
	addq	%rdx, %rax	# D.4064, D.4065
	movss	(%rax), %xmm0	# *_10, D.4066
	movl	-4(%rbp), %eax	# best, tmp71
	cltq
	leaq	0(,%rax,4), %rdx	#, D.4064
	movq	-24(%rbp), %rax	# vec, tmp72
	addq	%rdx, %rax	# D.4064, D.4065
	movss	(%rax), %xmm1	# *_14, D.4066
	ucomiss	%xmm1, %xmm0	# D.4066, D.4066
	jbe	.L78	#,
	.loc 1 189 0 is_stmt 0 discriminator 1
	movl	-8(%rbp), %eax	# i, tmp73
	movl	%eax, -4(%rbp)	# tmp73, best
.L78:
	.loc 1 188 0 is_stmt 1
	addl	$1, -8(%rbp)	#, i
.L77:
	.loc 1 188 0 is_stmt 0 discriminator 1
	movl	-8(%rbp), %eax	# i, tmp74
	cmpl	-28(%rbp), %eax	# n, tmp74
	jl	.L80	#,
	.loc 1 190 0 is_stmt 1
	movl	-4(%rbp), %eax	# best, D.4067
	.loc 1 191 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	FArgMax, .-FArgMax
	.globl	DArgMin
	.type	DArgMin, @function
DArgMin:
.LFB20:
	.loc 1 195 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# vec, vec
	movl	%esi, -28(%rbp)	# n, n
	.loc 1 197 0
	movl	$0, -4(%rbp)	#, best
	.loc 1 198 0
	movl	$1, -8(%rbp)	#, i
	jmp	.L84	#
.L87:
	.loc 1 199 0
	movl	-8(%rbp), %eax	# i, tmp69
	cltq
	leaq	0(,%rax,8), %rdx	#, D.4068
	movq	-24(%rbp), %rax	# vec, tmp70
	addq	%rdx, %rax	# D.4068, D.4069
	movsd	(%rax), %xmm1	# *_10, D.4070
	movl	-4(%rbp), %eax	# best, tmp71
	cltq
	leaq	0(,%rax,8), %rdx	#, D.4068
	movq	-24(%rbp), %rax	# vec, tmp72
	addq	%rdx, %rax	# D.4068, D.4069
	movsd	(%rax), %xmm0	# *_14, D.4070
	ucomisd	%xmm1, %xmm0	# D.4070, D.4070
	jbe	.L85	#,
	.loc 1 199 0 is_stmt 0 discriminator 1
	movl	-8(%rbp), %eax	# i, tmp73
	movl	%eax, -4(%rbp)	# tmp73, best
.L85:
	.loc 1 198 0 is_stmt 1
	addl	$1, -8(%rbp)	#, i
.L84:
	.loc 1 198 0 is_stmt 0 discriminator 1
	movl	-8(%rbp), %eax	# i, tmp74
	cmpl	-28(%rbp), %eax	# n, tmp74
	jl	.L87	#,
	.loc 1 200 0 is_stmt 1
	movl	-4(%rbp), %eax	# best, D.4071
	.loc 1 201 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	DArgMin, .-DArgMin
	.globl	FArgMin
	.type	FArgMin, @function
FArgMin:
.LFB21:
	.loc 1 205 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# vec, vec
	movl	%esi, -28(%rbp)	# n, n
	.loc 1 207 0
	movl	$0, -4(%rbp)	#, best
	.loc 1 209 0
	movl	$1, -8(%rbp)	#, i
	jmp	.L91	#
.L94:
	.loc 1 210 0
	movl	-8(%rbp), %eax	# i, tmp69
	cltq
	leaq	0(,%rax,4), %rdx	#, D.4072
	movq	-24(%rbp), %rax	# vec, tmp70
	addq	%rdx, %rax	# D.4072, D.4073
	movss	(%rax), %xmm1	# *_10, D.4074
	movl	-4(%rbp), %eax	# best, tmp71
	cltq
	leaq	0(,%rax,4), %rdx	#, D.4072
	movq	-24(%rbp), %rax	# vec, tmp72
	addq	%rdx, %rax	# D.4072, D.4073
	movss	(%rax), %xmm0	# *_14, D.4074
	ucomiss	%xmm1, %xmm0	# D.4074, D.4074
	jbe	.L92	#,
	.loc 1 210 0 is_stmt 0 discriminator 1
	movl	-8(%rbp), %eax	# i, tmp73
	movl	%eax, -4(%rbp)	# tmp73, best
.L92:
	.loc 1 209 0 is_stmt 1
	addl	$1, -8(%rbp)	#, i
.L91:
	.loc 1 209 0 is_stmt 0 discriminator 1
	movl	-8(%rbp), %eax	# i, tmp74
	cmpl	-28(%rbp), %eax	# n, tmp74
	jl	.L94	#,
	.loc 1 211 0 is_stmt 1
	movl	-4(%rbp), %eax	# best, D.4075
	.loc 1 212 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	FArgMin, .-FArgMin
	.globl	DNorm
	.type	DNorm, @function
DNorm:
.LFB22:
	.loc 1 216 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$40, %rsp	#,
	movq	%rdi, -24(%rbp)	# vec, vec
	movl	%esi, -28(%rbp)	# n, n
	.loc 1 220 0
	movl	-28(%rbp), %edx	# n, tmp72
	movq	-24(%rbp), %rax	# vec, tmp73
	movl	%edx, %esi	# tmp72,
	movq	%rax, %rdi	# tmp73,
	call	DSum	#
	movsd	%xmm0, -40(%rbp)	#, %sfp
	movq	-40(%rbp), %rax	# %sfp, tmp74
	movq	%rax, -8(%rbp)	# tmp74, sum
	.loc 1 221 0
	xorpd	%xmm0, %xmm0	# tmp75
	ucomisd	-8(%rbp), %xmm0	# sum, tmp75
	jp	.L105	#,
	xorpd	%xmm0, %xmm0	# tmp76
	ucomisd	-8(%rbp), %xmm0	# sum, tmp76
	je	.L106	#,
.L105:
	.loc 1 221 0 is_stmt 0 discriminator 1
	movl	$0, -12(%rbp)	#, x
	jmp	.L100	#
.L101:
	.loc 1 221 0 discriminator 2
	movl	-12(%rbp), %eax	# x, tmp77
	cltq
	leaq	0(,%rax,8), %rdx	#, D.4076
	movq	-24(%rbp), %rax	# vec, tmp78
	addq	%rdx, %rax	# D.4076, D.4077
	movl	-12(%rbp), %edx	# x, tmp79
	movslq	%edx, %rdx	# tmp79, D.4076
	leaq	0(,%rdx,8), %rcx	#, D.4076
	movq	-24(%rbp), %rdx	# vec, tmp80
	addq	%rcx, %rdx	# D.4076, D.4077
	movsd	(%rdx), %xmm0	# *_12, D.4078
	divsd	-8(%rbp), %xmm0	# sum, D.4078
	movsd	%xmm0, (%rax)	# D.4078, *_9
	addl	$1, -12(%rbp)	#, x
.L100:
	.loc 1 221 0 discriminator 1
	movl	-12(%rbp), %eax	# x, tmp81
	cmpl	-28(%rbp), %eax	# n, tmp81
	jl	.L101	#,
	jmp	.L97	#
.L106:
	.loc 1 222 0 is_stmt 1
	movl	$0, -12(%rbp)	#, x
	jmp	.L103	#
.L104:
	.loc 1 222 0 is_stmt 0 discriminator 2
	movl	-12(%rbp), %eax	# x, tmp82
	cltq
	leaq	0(,%rax,8), %rdx	#, D.4076
	movq	-24(%rbp), %rax	# vec, tmp83
	addq	%rdx, %rax	# D.4076, D.4077
	cvtsi2sd	-28(%rbp), %xmm0	# n, D.4078
	movsd	.LC2(%rip), %xmm1	#, tmp84
	divsd	%xmm0, %xmm1	# D.4078, D.4078
	movapd	%xmm1, %xmm0	# D.4078, D.4078
	movsd	%xmm0, (%rax)	# D.4078, *_19
	addl	$1, -12(%rbp)	#, x
.L103:
	.loc 1 222 0 discriminator 1
	movl	-12(%rbp), %eax	# x, tmp85
	cmpl	-28(%rbp), %eax	# n, tmp85
	jl	.L104	#,
.L97:
	.loc 1 223 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	DNorm, .-DNorm
	.globl	FNorm
	.type	FNorm, @function
FNorm:
.LFB23:
	.loc 1 227 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# vec, vec
	movl	%esi, -28(%rbp)	# n, n
	.loc 1 231 0
	movl	-28(%rbp), %edx	# n, tmp72
	movq	-24(%rbp), %rax	# vec, tmp73
	movl	%edx, %esi	# tmp72,
	movq	%rax, %rdi	# tmp73,
	call	FSum	#
	movss	%xmm0, -32(%rbp)	#, %sfp
	movl	-32(%rbp), %eax	# %sfp, tmp74
	movl	%eax, -4(%rbp)	# tmp74, sum
	.loc 1 232 0
	xorps	%xmm0, %xmm0	# tmp75
	ucomiss	-4(%rbp), %xmm0	# sum, tmp75
	jp	.L115	#,
	xorps	%xmm0, %xmm0	# tmp76
	ucomiss	-4(%rbp), %xmm0	# sum, tmp76
	je	.L116	#,
.L115:
	.loc 1 232 0 is_stmt 0 discriminator 1
	movl	$0, -8(%rbp)	#, x
	jmp	.L110	#
.L111:
	.loc 1 232 0 discriminator 2
	movl	-8(%rbp), %eax	# x, tmp77
	cltq
	leaq	0(,%rax,4), %rdx	#, D.4079
	movq	-24(%rbp), %rax	# vec, tmp78
	addq	%rdx, %rax	# D.4079, D.4080
	movl	-8(%rbp), %edx	# x, tmp79
	movslq	%edx, %rdx	# tmp79, D.4079
	leaq	0(,%rdx,4), %rcx	#, D.4079
	movq	-24(%rbp), %rdx	# vec, tmp80
	addq	%rcx, %rdx	# D.4079, D.4080
	movss	(%rdx), %xmm0	# *_12, D.4081
	divss	-4(%rbp), %xmm0	# sum, D.4081
	movss	%xmm0, (%rax)	# D.4081, *_9
	addl	$1, -8(%rbp)	#, x
.L110:
	.loc 1 232 0 discriminator 1
	movl	-8(%rbp), %eax	# x, tmp81
	cmpl	-28(%rbp), %eax	# n, tmp81
	jl	.L111	#,
	jmp	.L107	#
.L116:
	.loc 1 233 0 is_stmt 1
	movl	$0, -8(%rbp)	#, x
	jmp	.L113	#
.L114:
	.loc 1 233 0 is_stmt 0 discriminator 2
	movl	-8(%rbp), %eax	# x, tmp82
	cltq
	leaq	0(,%rax,4), %rdx	#, D.4079
	movq	-24(%rbp), %rax	# vec, tmp83
	addq	%rdx, %rax	# D.4079, D.4080
	cvtsi2ss	-28(%rbp), %xmm0	# n, D.4081
	movss	.LC3(%rip), %xmm1	#, tmp84
	divss	%xmm0, %xmm1	# D.4081, D.4081
	movaps	%xmm1, %xmm0	# D.4081, D.4081
	movss	%xmm0, (%rax)	# D.4081, *_19
	addl	$1, -8(%rbp)	#, x
.L113:
	.loc 1 233 0 discriminator 1
	movl	-8(%rbp), %eax	# x, tmp85
	cmpl	-28(%rbp), %eax	# n, tmp85
	jl	.L114	#,
.L107:
	.loc 1 234 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE23:
	.size	FNorm, .-FNorm
	.globl	DLog
	.type	DLog, @function
DLog:
.LFB24:
	.loc 1 238 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$56, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)	# vec, vec
	movl	%esi, -44(%rbp)	# n, n
	.loc 1 240 0
	movl	$0, -20(%rbp)	#, x
	jmp	.L118	#
.L122:
	.loc 1 241 0
	movl	-20(%rbp), %eax	# x, tmp74
	cltq
	leaq	0(,%rax,8), %rdx	#, D.4082
	movq	-40(%rbp), %rax	# vec, tmp75
	addq	%rdx, %rax	# D.4082, D.4083
	movsd	(%rax), %xmm0	# *_7, D.4084
	xorpd	%xmm1, %xmm1	# tmp76
	ucomisd	%xmm1, %xmm0	# tmp76, D.4084
	jbe	.L124	#,
	.loc 1 241 0 is_stmt 0 discriminator 1
	movl	-20(%rbp), %eax	# x, tmp77
	cltq
	leaq	0(,%rax,8), %rdx	#, D.4082
	movq	-40(%rbp), %rax	# vec, tmp78
	leaq	(%rdx,%rax), %rbx	#, D.4083
	movl	-20(%rbp), %eax	# x, tmp79
	cltq
	leaq	0(,%rax,8), %rdx	#, D.4082
	movq	-40(%rbp), %rax	# vec, tmp80
	addq	%rdx, %rax	# D.4082, D.4083
	movq	(%rax), %rax	# *_14, D.4084
	movq	%rax, -56(%rbp)	# D.4084, %sfp
	movsd	-56(%rbp), %xmm0	# %sfp,
	call	log	#
	movsd	%xmm0, -56(%rbp)	#, %sfp
	movq	-56(%rbp), %rax	# %sfp, D.4084
	movq	%rax, (%rbx)	# D.4084, *_11
	jmp	.L121	#
.L124:
	.loc 1 242 0 is_stmt 1
	movl	-20(%rbp), %eax	# x, tmp81
	cltq
	leaq	0(,%rax,8), %rdx	#, D.4082
	movq	-40(%rbp), %rax	# vec, tmp82
	addq	%rax, %rdx	# tmp82, D.4083
	movabsq	$-4503599627370497, %rax	#, tmp83
	movq	%rax, (%rdx)	# tmp83, *_19
.L121:
	.loc 1 240 0
	addl	$1, -20(%rbp)	#, x
.L118:
	.loc 1 240 0 is_stmt 0 discriminator 1
	movl	-20(%rbp), %eax	# x, tmp84
	cmpl	-44(%rbp), %eax	# n, tmp84
	jl	.L122	#,
	.loc 1 243 0 is_stmt 1
	addq	$56, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE24:
	.size	DLog, .-DLog
	.globl	FLog
	.type	FLog, @function
FLog:
.LFB25:
	.loc 1 247 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$40, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)	# vec, vec
	movl	%esi, -44(%rbp)	# n, n
	.loc 1 249 0
	movl	$0, -20(%rbp)	#, x
	jmp	.L126	#
.L130:
	.loc 1 250 0
	movl	-20(%rbp), %eax	# x, tmp76
	cltq
	leaq	0(,%rax,4), %rdx	#, D.4085
	movq	-40(%rbp), %rax	# vec, tmp77
	addq	%rdx, %rax	# D.4085, D.4086
	movss	(%rax), %xmm0	# *_7, D.4087
	xorps	%xmm1, %xmm1	# tmp78
	ucomiss	%xmm1, %xmm0	# tmp78, D.4087
	jbe	.L132	#,
	.loc 1 250 0 is_stmt 0 discriminator 1
	movl	-20(%rbp), %eax	# x, tmp79
	cltq
	leaq	0(,%rax,4), %rdx	#, D.4085
	movq	-40(%rbp), %rax	# vec, tmp80
	leaq	(%rdx,%rax), %rbx	#, D.4086
	movl	-20(%rbp), %eax	# x, tmp81
	cltq
	leaq	0(,%rax,4), %rdx	#, D.4085
	movq	-40(%rbp), %rax	# vec, tmp82
	addq	%rdx, %rax	# D.4085, D.4086
	movss	(%rax), %xmm0	# *_14, D.4087
	unpcklps	%xmm0, %xmm0	# D.4087, D.4087
	cvtps2pd	%xmm0, %xmm0	# D.4087, D.4088
	call	log	#
	unpcklpd	%xmm0, %xmm0	# D.4088
	cvtpd2ps	%xmm0, %xmm0	# D.4088, D.4087
	movss	%xmm0, (%rbx)	# D.4087, *_11
	jmp	.L129	#
.L132:
	.loc 1 251 0 is_stmt 1
	movl	-20(%rbp), %eax	# x, tmp83
	cltq
	leaq	0(,%rax,4), %rdx	#, D.4085
	movq	-40(%rbp), %rax	# vec, tmp84
	addq	%rax, %rdx	# tmp84, D.4086
	movl	.LC5(%rip), %eax	#, tmp85
	movl	%eax, (%rdx)	# tmp85, *_21
.L129:
	.loc 1 249 0
	addl	$1, -20(%rbp)	#, x
.L126:
	.loc 1 249 0 is_stmt 0 discriminator 1
	movl	-20(%rbp), %eax	# x, tmp86
	cmpl	-44(%rbp), %eax	# n, tmp86
	jl	.L130	#,
	.loc 1 252 0 is_stmt 1
	addq	$40, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE25:
	.size	FLog, .-FLog
	.globl	DExp
	.type	DExp, @function
DExp:
.LFB26:
	.loc 1 256 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$56, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)	# vec, vec
	movl	%esi, -44(%rbp)	# n, n
	.loc 1 258 0
	movl	$0, -20(%rbp)	#, x
	jmp	.L134	#
.L135:
	.loc 1 258 0 is_stmt 0 discriminator 2
	movl	-20(%rbp), %eax	# x, tmp67
	cltq
	leaq	0(,%rax,8), %rdx	#, D.4089
	movq	-40(%rbp), %rax	# vec, tmp68
	leaq	(%rdx,%rax), %rbx	#, D.4090
	movl	-20(%rbp), %eax	# x, tmp69
	cltq
	leaq	0(,%rax,8), %rdx	#, D.4089
	movq	-40(%rbp), %rax	# vec, tmp70
	addq	%rdx, %rax	# D.4089, D.4090
	movq	(%rax), %rax	# *_10, D.4091
	movq	%rax, -56(%rbp)	# D.4091, %sfp
	movsd	-56(%rbp), %xmm0	# %sfp,
	call	exp	#
	movsd	%xmm0, -56(%rbp)	#, %sfp
	movq	-56(%rbp), %rax	# %sfp, D.4091
	movq	%rax, (%rbx)	# D.4091, *_7
	addl	$1, -20(%rbp)	#, x
.L134:
	.loc 1 258 0 discriminator 1
	movl	-20(%rbp), %eax	# x, tmp71
	cmpl	-44(%rbp), %eax	# n, tmp71
	jl	.L135	#,
	.loc 1 259 0 is_stmt 1
	addq	$56, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE26:
	.size	DExp, .-DExp
	.globl	FExp
	.type	FExp, @function
FExp:
.LFB27:
	.loc 1 263 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$40, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)	# vec, vec
	movl	%esi, -44(%rbp)	# n, n
	.loc 1 265 0
	movl	$0, -20(%rbp)	#, x
	jmp	.L137	#
.L138:
	.loc 1 265 0 is_stmt 0 discriminator 2
	movl	-20(%rbp), %eax	# x, tmp69
	cltq
	leaq	0(,%rax,4), %rdx	#, D.4092
	movq	-40(%rbp), %rax	# vec, tmp70
	leaq	(%rdx,%rax), %rbx	#, D.4093
	movl	-20(%rbp), %eax	# x, tmp71
	cltq
	leaq	0(,%rax,4), %rdx	#, D.4092
	movq	-40(%rbp), %rax	# vec, tmp72
	addq	%rdx, %rax	# D.4092, D.4093
	movss	(%rax), %xmm0	# *_10, D.4094
	unpcklps	%xmm0, %xmm0	# D.4094, D.4094
	cvtps2pd	%xmm0, %xmm0	# D.4094, D.4095
	call	exp	#
	unpcklpd	%xmm0, %xmm0	# D.4095
	cvtpd2ps	%xmm0, %xmm0	# D.4095, D.4094
	movss	%xmm0, (%rbx)	# D.4094, *_7
	addl	$1, -20(%rbp)	#, x
.L137:
	.loc 1 265 0 discriminator 1
	movl	-20(%rbp), %eax	# x, tmp73
	cmpl	-44(%rbp), %eax	# n, tmp73
	jl	.L138	#,
	.loc 1 266 0 is_stmt 1
	addq	$40, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE27:
	.size	FExp, .-FExp
	.globl	DLogSum
	.type	DLogSum, @function
DLogSum:
.LFB28:
	.loc 1 270 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -40(%rbp)	# vec, vec
	movl	%esi, -44(%rbp)	# n, n
	.loc 1 274 0
	movl	-44(%rbp), %edx	# n, tmp73
	movq	-40(%rbp), %rax	# vec, tmp74
	movl	%edx, %esi	# tmp73,
	movq	%rax, %rdi	# tmp74,
	call	DMax	#
	movsd	%xmm0, -56(%rbp)	#, %sfp
	movq	-56(%rbp), %rax	# %sfp, tmp75
	movq	%rax, -8(%rbp)	# tmp75, max
	.loc 1 275 0
	movl	$0, %eax	#, tmp76
	movq	%rax, -16(%rbp)	# tmp76, sum
	.loc 1 276 0
	movl	$0, -20(%rbp)	#, x
	jmp	.L140	#
.L143:
	.loc 1 277 0
	movl	-20(%rbp), %eax	# x, tmp77
	cltq
	leaq	0(,%rax,8), %rdx	#, D.4096
	movq	-40(%rbp), %rax	# vec, tmp78
	addq	%rdx, %rax	# D.4096, D.4097
	movsd	(%rax), %xmm1	# *_11, D.4098
	movsd	-8(%rbp), %xmm0	# max, tmp79
	movsd	.LC6(%rip), %xmm2	#, tmp80
	subsd	%xmm2, %xmm0	# tmp80, D.4098
	ucomisd	%xmm0, %xmm1	# D.4098, D.4098
	jbe	.L141	#,
	.loc 1 278 0
	movl	-20(%rbp), %eax	# x, tmp81
	cltq
	leaq	0(,%rax,8), %rdx	#, D.4096
	movq	-40(%rbp), %rax	# vec, tmp82
	addq	%rdx, %rax	# D.4096, D.4097
	movsd	(%rax), %xmm0	# *_16, D.4098
	subsd	-8(%rbp), %xmm0	# max, D.4098
	call	exp	#
	movsd	-16(%rbp), %xmm1	# sum, tmp84
	addsd	%xmm1, %xmm0	# tmp84, tmp83
	movsd	%xmm0, -16(%rbp)	# tmp83, sum
.L141:
	.loc 1 276 0
	addl	$1, -20(%rbp)	#, x
.L140:
	.loc 1 276 0 is_stmt 0 discriminator 1
	movl	-20(%rbp), %eax	# x, tmp85
	cmpl	-44(%rbp), %eax	# n, tmp85
	jl	.L143	#,
	.loc 1 279 0 is_stmt 1
	movq	-16(%rbp), %rax	# sum, tmp86
	movq	%rax, -56(%rbp)	# tmp86, %sfp
	movsd	-56(%rbp), %xmm0	# %sfp,
	call	log	#
	addsd	-8(%rbp), %xmm0	# max, tmp87
	movsd	%xmm0, -16(%rbp)	# tmp87, sum
	.loc 1 280 0
	movq	-16(%rbp), %rax	# sum, D.4098
	.loc 1 281 0
	movq	%rax, -56(%rbp)	# <retval>, %sfp
	movsd	-56(%rbp), %xmm0	# %sfp,
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE28:
	.size	DLogSum, .-DLogSum
	.globl	FLogSum
	.type	FLogSum, @function
FLogSum:
.LFB29:
	.loc 1 285 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# vec, vec
	movl	%esi, -28(%rbp)	# n, n
	.loc 1 289 0
	movl	-28(%rbp), %edx	# n, tmp81
	movq	-24(%rbp), %rax	# vec, tmp82
	movl	%edx, %esi	# tmp81,
	movq	%rax, %rdi	# tmp82,
	call	FMax	#
	movss	%xmm0, -40(%rbp)	#, %sfp
	movl	-40(%rbp), %eax	# %sfp, tmp83
	movl	%eax, -4(%rbp)	# tmp83, max
	.loc 1 290 0
	movl	.LC1(%rip), %eax	#, tmp84
	movl	%eax, -8(%rbp)	# tmp84, sum
	.loc 1 291 0
	movl	$0, -12(%rbp)	#, x
	jmp	.L147	#
.L150:
	.loc 1 292 0
	movl	-12(%rbp), %eax	# x, tmp85
	cltq
	leaq	0(,%rax,4), %rdx	#, D.4099
	movq	-24(%rbp), %rax	# vec, tmp86
	addq	%rdx, %rax	# D.4099, D.4100
	movss	(%rax), %xmm0	# *_11, D.4101
	unpcklps	%xmm0, %xmm0	# D.4101, D.4101
	cvtps2pd	%xmm0, %xmm0	# D.4101, D.4102
	movss	-4(%rbp), %xmm1	# max, D.4102
	cvtps2pd	%xmm1, %xmm1	# D.4102, D.4102
	movsd	.LC6(%rip), %xmm2	#, tmp87
	subsd	%xmm2, %xmm1	# tmp87, D.4102
	ucomisd	%xmm1, %xmm0	# D.4102, D.4102
	jbe	.L148	#,
	.loc 1 293 0
	movss	-8(%rbp), %xmm3	# sum, D.4102
	cvtps2pd	%xmm3, %xmm3	# D.4102, D.4102
	movsd	%xmm3, -40(%rbp)	# D.4102, %sfp
	movl	-12(%rbp), %eax	# x, tmp88
	cltq
	leaq	0(,%rax,4), %rdx	#, D.4099
	movq	-24(%rbp), %rax	# vec, tmp89
	addq	%rdx, %rax	# D.4099, D.4100
	movss	(%rax), %xmm0	# *_19, D.4101
	subss	-4(%rbp), %xmm0	# max, D.4101
	unpcklps	%xmm0, %xmm0	# D.4101, D.4101
	cvtps2pd	%xmm0, %xmm0	# D.4101, D.4102
	call	exp	#
	addsd	-40(%rbp), %xmm0	# %sfp, D.4102
	unpcklpd	%xmm0, %xmm0	# D.4102
	cvtpd2ps	%xmm0, %xmm4	# D.4102, tmp94
	movss	%xmm4, -8(%rbp)	# tmp94, sum
.L148:
	.loc 1 291 0
	addl	$1, -12(%rbp)	#, x
.L147:
	.loc 1 291 0 is_stmt 0 discriminator 1
	movl	-12(%rbp), %eax	# x, tmp90
	cmpl	-28(%rbp), %eax	# n, tmp90
	jl	.L150	#,
	.loc 1 294 0 is_stmt 1
	movss	-8(%rbp), %xmm0	# sum, D.4102
	cvtps2pd	%xmm0, %xmm0	# D.4102, D.4102
	call	log	#
	movss	-4(%rbp), %xmm1	# max, D.4102
	cvtps2pd	%xmm1, %xmm1	# D.4102, D.4102
	addsd	%xmm1, %xmm0	# D.4102, D.4102
	unpcklpd	%xmm0, %xmm0	# D.4102
	cvtpd2ps	%xmm0, %xmm5	# D.4102, tmp95
	movss	%xmm5, -8(%rbp)	# tmp95, sum
	.loc 1 295 0
	movl	-8(%rbp), %eax	# sum, D.4101
	.loc 1 296 0
	movl	%eax, -40(%rbp)	# <retval>, %sfp
	movss	-40(%rbp), %xmm0	# %sfp,
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE29:
	.size	FLogSum, .-FLogSum
	.section	.rodata
	.align 4
.LC1:
	.long	0
	.align 8
.LC2:
	.long	0
	.long	1072693248
	.align 4
.LC3:
	.long	1065353216
	.align 4
.LC5:
	.long	4286578687
	.align 8
.LC6:
	.long	0
	.long	1078525952
	.text
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x9d5
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF47
	.byte	0x1
	.long	.LASF48
	.long	.LASF49
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
	.long	.LASF14
	.byte	0x1
	.byte	0x20
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0xe1
	.uleb128 0x5
	.string	"vec"
	.byte	0x1
	.byte	0x20
	.long	0xe1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x5
	.string	"n"
	.byte	0x1
	.byte	0x20
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x6
	.long	.LASF13
	.byte	0x1
	.byte	0x20
	.long	0x88
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x7
	.string	"x"
	.byte	0x1
	.byte	0x22
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x88
	.uleb128 0x4
	.long	.LASF15
	.byte	0x1
	.byte	0x27
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x139
	.uleb128 0x5
	.string	"vec"
	.byte	0x1
	.byte	0x27
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x5
	.string	"n"
	.byte	0x1
	.byte	0x27
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x6
	.long	.LASF13
	.byte	0x1
	.byte	0x27
	.long	0x81
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x7
	.string	"x"
	.byte	0x1
	.byte	0x29
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x81
	.uleb128 0x4
	.long	.LASF16
	.byte	0x1
	.byte	0x2e
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x191
	.uleb128 0x5
	.string	"vec"
	.byte	0x1
	.byte	0x2e
	.long	0xe1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x5
	.string	"n"
	.byte	0x1
	.byte	0x2e
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x6
	.long	.LASF17
	.byte	0x1
	.byte	0x2e
	.long	0x88
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x7
	.string	"x"
	.byte	0x1
	.byte	0x30
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x4
	.long	.LASF18
	.byte	0x1
	.byte	0x35
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x1e3
	.uleb128 0x5
	.string	"vec"
	.byte	0x1
	.byte	0x35
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x5
	.string	"n"
	.byte	0x1
	.byte	0x35
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x6
	.long	.LASF17
	.byte	0x1
	.byte	0x35
	.long	0x81
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x7
	.string	"x"
	.byte	0x1
	.byte	0x37
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x9
	.long	.LASF19
	.byte	0x1
	.byte	0x3c
	.long	0x88
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x239
	.uleb128 0x5
	.string	"vec"
	.byte	0x1
	.byte	0x3c
	.long	0xe1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x5
	.string	"n"
	.byte	0x1
	.byte	0x3c
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x7
	.string	"sum"
	.byte	0x1
	.byte	0x3e
	.long	0x88
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x7
	.string	"x"
	.byte	0x1
	.byte	0x3f
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x9
	.long	.LASF20
	.byte	0x1
	.byte	0x45
	.long	0x81
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x28f
	.uleb128 0x5
	.string	"vec"
	.byte	0x1
	.byte	0x45
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x5
	.string	"n"
	.byte	0x1
	.byte	0x45
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x7
	.string	"sum"
	.byte	0x1
	.byte	0x47
	.long	0x81
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x7
	.string	"x"
	.byte	0x1
	.byte	0x48
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x4
	.long	.LASF21
	.byte	0x1
	.byte	0x4e
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x2e1
	.uleb128 0x6
	.long	.LASF22
	.byte	0x1
	.byte	0x4e
	.long	0xe1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x6
	.long	.LASF23
	.byte	0x1
	.byte	0x4e
	.long	0xe1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x5
	.string	"n"
	.byte	0x1
	.byte	0x4e
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x7
	.string	"x"
	.byte	0x1
	.byte	0x50
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x4
	.long	.LASF24
	.byte	0x1
	.byte	0x55
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x333
	.uleb128 0x6
	.long	.LASF22
	.byte	0x1
	.byte	0x55
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x6
	.long	.LASF23
	.byte	0x1
	.byte	0x55
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x5
	.string	"n"
	.byte	0x1
	.byte	0x55
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x7
	.string	"x"
	.byte	0x1
	.byte	0x57
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x4
	.long	.LASF25
	.byte	0x1
	.byte	0x5c
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x385
	.uleb128 0x6
	.long	.LASF22
	.byte	0x1
	.byte	0x5c
	.long	0xe1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x6
	.long	.LASF23
	.byte	0x1
	.byte	0x5c
	.long	0xe1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x5
	.string	"n"
	.byte	0x1
	.byte	0x5c
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x7
	.string	"x"
	.byte	0x1
	.byte	0x5e
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x4
	.long	.LASF26
	.byte	0x1
	.byte	0x63
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x3d7
	.uleb128 0x6
	.long	.LASF22
	.byte	0x1
	.byte	0x63
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x6
	.long	.LASF23
	.byte	0x1
	.byte	0x63
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x5
	.string	"n"
	.byte	0x1
	.byte	0x63
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x7
	.string	"x"
	.byte	0x1
	.byte	0x65
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x9
	.long	.LASF27
	.byte	0x1
	.byte	0x6a
	.long	0x88
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x43b
	.uleb128 0x6
	.long	.LASF22
	.byte	0x1
	.byte	0x6a
	.long	0xe1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x6
	.long	.LASF23
	.byte	0x1
	.byte	0x6a
	.long	0xe1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x5
	.string	"n"
	.byte	0x1
	.byte	0x6a
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0xa
	.long	.LASF28
	.byte	0x1
	.byte	0x6c
	.long	0x88
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x7
	.string	"x"
	.byte	0x1
	.byte	0x6d
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x9
	.long	.LASF29
	.byte	0x1
	.byte	0x73
	.long	0x81
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x49f
	.uleb128 0x6
	.long	.LASF22
	.byte	0x1
	.byte	0x73
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x6
	.long	.LASF23
	.byte	0x1
	.byte	0x73
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x5
	.string	"n"
	.byte	0x1
	.byte	0x73
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0xa
	.long	.LASF28
	.byte	0x1
	.byte	0x75
	.long	0x81
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x7
	.string	"x"
	.byte	0x1
	.byte	0x76
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x9
	.long	.LASF30
	.byte	0x1
	.byte	0x7c
	.long	0x88
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0x4f5
	.uleb128 0x5
	.string	"vec"
	.byte	0x1
	.byte	0x7c
	.long	0xe1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x5
	.string	"n"
	.byte	0x1
	.byte	0x7c
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x7
	.string	"i"
	.byte	0x1
	.byte	0x7e
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xa
	.long	.LASF31
	.byte	0x1
	.byte	0x7f
	.long	0x88
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x9
	.long	.LASF32
	.byte	0x1
	.byte	0x88
	.long	0x81
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0x54b
	.uleb128 0x5
	.string	"vec"
	.byte	0x1
	.byte	0x88
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x5
	.string	"n"
	.byte	0x1
	.byte	0x88
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x7
	.string	"i"
	.byte	0x1
	.byte	0x8a
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xa
	.long	.LASF31
	.byte	0x1
	.byte	0x8b
	.long	0x81
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x9
	.long	.LASF33
	.byte	0x1
	.byte	0x94
	.long	0x88
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0x5a1
	.uleb128 0x5
	.string	"vec"
	.byte	0x1
	.byte	0x94
	.long	0xe1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x5
	.string	"n"
	.byte	0x1
	.byte	0x94
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x7
	.string	"i"
	.byte	0x1
	.byte	0x96
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xa
	.long	.LASF31
	.byte	0x1
	.byte	0x97
	.long	0x88
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x9
	.long	.LASF34
	.byte	0x1
	.byte	0xa0
	.long	0x81
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0x5f7
	.uleb128 0x5
	.string	"vec"
	.byte	0x1
	.byte	0xa0
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x5
	.string	"n"
	.byte	0x1
	.byte	0xa0
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x7
	.string	"i"
	.byte	0x1
	.byte	0xa2
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xa
	.long	.LASF31
	.byte	0x1
	.byte	0xa3
	.long	0x81
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x9
	.long	.LASF35
	.byte	0x1
	.byte	0xac
	.long	0x34
	.quad	.LFB18
	.quad	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0x64d
	.uleb128 0x5
	.string	"vec"
	.byte	0x1
	.byte	0xac
	.long	0xe1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x5
	.string	"n"
	.byte	0x1
	.byte	0xac
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x7
	.string	"i"
	.byte	0x1
	.byte	0xae
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xa
	.long	.LASF31
	.byte	0x1
	.byte	0xaf
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x9
	.long	.LASF36
	.byte	0x1
	.byte	0xb7
	.long	0x34
	.quad	.LFB19
	.quad	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0x6a3
	.uleb128 0x5
	.string	"vec"
	.byte	0x1
	.byte	0xb7
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x5
	.string	"n"
	.byte	0x1
	.byte	0xb7
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x7
	.string	"i"
	.byte	0x1
	.byte	0xb9
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xa
	.long	.LASF31
	.byte	0x1
	.byte	0xba
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x9
	.long	.LASF37
	.byte	0x1
	.byte	0xc2
	.long	0x34
	.quad	.LFB20
	.quad	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0x6f9
	.uleb128 0x5
	.string	"vec"
	.byte	0x1
	.byte	0xc2
	.long	0xe1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x5
	.string	"n"
	.byte	0x1
	.byte	0xc2
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x7
	.string	"i"
	.byte	0x1
	.byte	0xc4
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xa
	.long	.LASF31
	.byte	0x1
	.byte	0xc5
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x9
	.long	.LASF38
	.byte	0x1
	.byte	0xcc
	.long	0x34
	.quad	.LFB21
	.quad	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.long	0x74f
	.uleb128 0x5
	.string	"vec"
	.byte	0x1
	.byte	0xcc
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x5
	.string	"n"
	.byte	0x1
	.byte	0xcc
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x7
	.string	"i"
	.byte	0x1
	.byte	0xce
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xa
	.long	.LASF31
	.byte	0x1
	.byte	0xcf
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xb
	.long	.LASF39
	.byte	0x1
	.byte	0xd7
	.quad	.LFB22
	.quad	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.long	0x7a1
	.uleb128 0x5
	.string	"vec"
	.byte	0x1
	.byte	0xd7
	.long	0xe1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x5
	.string	"n"
	.byte	0x1
	.byte	0xd7
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x7
	.string	"x"
	.byte	0x1
	.byte	0xd9
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x7
	.string	"sum"
	.byte	0x1
	.byte	0xda
	.long	0x88
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xb
	.long	.LASF40
	.byte	0x1
	.byte	0xe2
	.quad	.LFB23
	.quad	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.long	0x7f3
	.uleb128 0x5
	.string	"vec"
	.byte	0x1
	.byte	0xe2
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x5
	.string	"n"
	.byte	0x1
	.byte	0xe2
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x7
	.string	"x"
	.byte	0x1
	.byte	0xe4
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x7
	.string	"sum"
	.byte	0x1
	.byte	0xe5
	.long	0x81
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xb
	.long	.LASF41
	.byte	0x1
	.byte	0xed
	.quad	.LFB24
	.quad	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.long	0x837
	.uleb128 0x5
	.string	"vec"
	.byte	0x1
	.byte	0xed
	.long	0xe1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x5
	.string	"n"
	.byte	0x1
	.byte	0xed
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x7
	.string	"x"
	.byte	0x1
	.byte	0xef
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0xb
	.long	.LASF42
	.byte	0x1
	.byte	0xf6
	.quad	.LFB25
	.quad	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.long	0x87b
	.uleb128 0x5
	.string	"vec"
	.byte	0x1
	.byte	0xf6
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x5
	.string	"n"
	.byte	0x1
	.byte	0xf6
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x7
	.string	"x"
	.byte	0x1
	.byte	0xf8
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0xb
	.long	.LASF43
	.byte	0x1
	.byte	0xff
	.quad	.LFB26
	.quad	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.long	0x8c0
	.uleb128 0x5
	.string	"vec"
	.byte	0x1
	.byte	0xff
	.long	0xe1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x5
	.string	"n"
	.byte	0x1
	.byte	0xff
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0xc
	.string	"x"
	.byte	0x1
	.value	0x101
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0xd
	.long	.LASF44
	.byte	0x1
	.value	0x106
	.quad	.LFB27
	.quad	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.long	0x908
	.uleb128 0xe
	.string	"vec"
	.byte	0x1
	.value	0x106
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xe
	.string	"n"
	.byte	0x1
	.value	0x106
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0xc
	.string	"x"
	.byte	0x1
	.value	0x108
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0xf
	.long	.LASF45
	.byte	0x1
	.value	0x10d
	.long	0x88
	.quad	.LFB28
	.quad	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.long	0x972
	.uleb128 0xe
	.string	"vec"
	.byte	0x1
	.value	0x10d
	.long	0xe1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xe
	.string	"n"
	.byte	0x1
	.value	0x10d
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0xc
	.string	"x"
	.byte	0x1
	.value	0x10f
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xc
	.string	"max"
	.byte	0x1
	.value	0x110
	.long	0x88
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xc
	.string	"sum"
	.byte	0x1
	.value	0x110
	.long	0x88
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x10
	.long	.LASF46
	.byte	0x1
	.value	0x11c
	.long	0x81
	.quad	.LFB29
	.quad	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xe
	.string	"vec"
	.byte	0x1
	.value	0x11c
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xe
	.string	"n"
	.byte	0x1
	.value	0x11c
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xc
	.string	"x"
	.byte	0x1
	.value	0x11e
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xc
	.string	"max"
	.byte	0x1
	.value	0x11f
	.long	0x81
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xc
	.string	"sum"
	.byte	0x1
	.value	0x11f
	.long	0x81
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
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
	.uleb128 0x5
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
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xa
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
	.uleb128 0xe
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
.LASF43:
	.string	"DExp"
.LASF22:
	.string	"vec1"
.LASF23:
	.string	"vec2"
.LASF42:
	.string	"FLog"
.LASF38:
	.string	"FArgMin"
.LASF13:
	.string	"value"
.LASF32:
	.string	"FMax"
.LASF45:
	.string	"DLogSum"
.LASF25:
	.string	"DCopy"
.LASF17:
	.string	"scale"
.LASF19:
	.string	"DSum"
.LASF11:
	.string	"float"
.LASF15:
	.string	"FSet"
.LASF1:
	.string	"unsigned char"
.LASF35:
	.string	"DArgMax"
.LASF29:
	.string	"FDot"
.LASF2:
	.string	"short unsigned int"
.LASF24:
	.string	"FAdd"
.LASF49:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/456.hmmer/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF37:
	.string	"DArgMin"
.LASF44:
	.string	"FExp"
.LASF12:
	.string	"double"
.LASF39:
	.string	"DNorm"
.LASF16:
	.string	"DScale"
.LASF0:
	.string	"long unsigned int"
.LASF3:
	.string	"unsigned int"
.LASF10:
	.string	"long long unsigned int"
.LASF41:
	.string	"DLog"
.LASF28:
	.string	"result"
.LASF20:
	.string	"FSum"
.LASF26:
	.string	"FCopy"
.LASF7:
	.string	"sizetype"
.LASF30:
	.string	"DMax"
.LASF9:
	.string	"long long int"
.LASF36:
	.string	"FArgMax"
.LASF48:
	.string	"vectorops.c"
.LASF34:
	.string	"FMin"
.LASF47:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF46:
	.string	"FLogSum"
.LASF5:
	.string	"short int"
.LASF31:
	.string	"best"
.LASF33:
	.string	"DMin"
.LASF14:
	.string	"DSet"
.LASF6:
	.string	"long int"
.LASF8:
	.string	"char"
.LASF4:
	.string	"signed char"
.LASF27:
	.string	"DDot"
.LASF18:
	.string	"FScale"
.LASF21:
	.string	"DAdd"
.LASF40:
	.string	"FNorm"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
