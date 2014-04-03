	.file	"spec.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 spec.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.globl	dbglvl
	.data
	.align 4
	.type	dbglvl, @object
	.size	dbglvl, 4
dbglvl:
	.long	4
	.comm	spec_fd,72,32
	.comm	seedi,8,8
	.text
	.globl	ran
	.type	ran, @function
ran:
.LFB2:
	.file 1 "spec.c"
	.loc 1 63 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 68 0
	movq	seedi(%rip), %rcx	# seedi, seedi.0
	movabsq	$4730756183288445817, %rdx	#, tmp70
	movq	%rcx, %rax	# seedi.0, tmp89
	imulq	%rdx	# tmp70
	sarq	$15, %rdx	#, tmp71
	movq	%rcx, %rax	# seedi.0, tmp72
	sarq	$63, %rax	#, tmp72
	subq	%rax, %rdx	# tmp72, tmp73
	movq	%rdx, %rax	# tmp73, tmp73
	movq	%rax, -24(%rbp)	# tmp73, hi
	.loc 1 69 0
	movq	seedi(%rip), %rcx	# seedi, seedi.1
	movabsq	$4730756183288445817, %rdx	#, tmp75
	movq	%rcx, %rax	# seedi.1, tmp90
	imulq	%rdx	# tmp75
	sarq	$15, %rdx	#, tmp76
	movq	%rcx, %rax	# seedi.1, tmp77
	sarq	$63, %rax	#, tmp77
	subq	%rax, %rdx	# tmp77, tmp78
	movq	%rdx, %rax	# tmp78, tmp78
	movq	%rax, -16(%rbp)	# tmp78, lo
	movq	-16(%rbp), %rax	# lo, tmp80
	imulq	$127773, %rax, %rax	#, tmp80, tmp79
	subq	%rax, %rcx	# tmp79, tmp81
	movq	%rcx, %rax	# tmp81, tmp81
	movq	%rax, -16(%rbp)	# tmp81, lo
	.loc 1 70 0
	movq	-16(%rbp), %rax	# lo, tmp82
	imulq	$16807, %rax, %rdx	#, tmp82, D.4048
	movq	-24(%rbp), %rax	# hi, tmp83
	imulq	$-2836, %rax, %rax	#, tmp83, D.4048
	addq	%rdx, %rax	# D.4048, tmp84
	movq	%rax, -8(%rbp)	# tmp84, test
	.loc 1 71 0
	cmpq	$0, -8(%rbp)	#, test
	jle	.L2	#,
	.loc 1 72 0
	movq	-8(%rbp), %rax	# test, tmp85
	movq	%rax, seedi(%rip)	# tmp85, seedi
	jmp	.L3	#
.L2:
	.loc 1 74 0
	movq	-8(%rbp), %rax	# test, tmp86
	addq	$2147483647, %rax	#, seedi.2
	movq	%rax, seedi(%rip)	# seedi.2, seedi
.L3:
	.loc 1 76 0
	movq	seedi(%rip), %rax	# seedi, seedi.3
	cvtsi2ssq	%rax, %xmm0	# seedi.3, D.4049
	movss	.LC0(%rip), %xmm1	#, tmp87
	divss	%xmm1, %xmm0	# tmp87, D.4049
	unpcklps	%xmm0, %xmm0	# D.4049, D.4049
	cvtps2pd	%xmm0, %xmm0	# D.4049, D.4050
	movsd	%xmm0, -40(%rbp)	# D.4050, %sfp
	movq	-40(%rbp), %rax	# %sfp, <retval>
	.loc 1 77 0
	movq	%rax, -40(%rbp)	# <retval>, %sfp
	movsd	-40(%rbp), %xmm0	# %sfp,
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	ran, .-ran
	.section	.rodata
.LC1:
	.string	"spec_init"
	.align 8
.LC2:
	.string	"spec_init: Error mallocing memory!"
	.text
	.globl	spec_init
	.type	spec_init, @function
spec_init:
.LFB3:
	.loc 1 80 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	.loc 1 82 0
	movl	dbglvl(%rip), %eax	# dbglvl, dbglvl.4
	cmpl	$3, %eax	#, dbglvl.4
	jle	.L6	#,
	.loc 1 82 0 is_stmt 0 discriminator 1
	movl	$.LC1, %edi	#,
	call	puts	#
.L6:
	.loc 1 87 0 is_stmt 1
	movl	$0, -12(%rbp)	#, i
	jmp	.L7	#
.L11:
.LBB2:
	.loc 1 88 0
	movl	-12(%rbp), %eax	# i, tmp71
	movslq	%eax, %rdx	# tmp71, tmp70
	movq	%rdx, %rax	# tmp70, tmp72
	addq	%rax, %rax	# tmp72
	addq	%rdx, %rax	# tmp70, tmp72
	salq	$3, %rax	#, tmp73
	addq	$spec_fd, %rax	#, tmp74
	movl	(%rax), %eax	# spec_fd[i_1].limit, tmp75
	movl	%eax, -4(%rbp)	# tmp75, limit
	.loc 1 89 0
	movl	-12(%rbp), %eax	# i, tmp77
	movslq	%eax, %rdx	# tmp77, tmp76
	movq	%rdx, %rax	# tmp76, tmp78
	addq	%rax, %rax	# tmp78
	addq	%rdx, %rax	# tmp76, tmp78
	salq	$3, %rax	#, tmp79
	addq	$spec_fd, %rax	#, D.4052
	movl	$24, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.4052,
	call	memset	#
	.loc 1 90 0
	movl	-12(%rbp), %eax	# i, tmp81
	movslq	%eax, %rdx	# tmp81, tmp80
	movq	%rdx, %rax	# tmp80, tmp82
	addq	%rax, %rax	# tmp82
	addq	%rdx, %rax	# tmp80, tmp82
	salq	$3, %rax	#, tmp83
	leaq	spec_fd(%rax), %rdx	#, tmp84
	movl	-4(%rbp), %eax	# limit, tmp85
	movl	%eax, (%rdx)	# tmp85, spec_fd[i_1].limit
	.loc 1 91 0
	movl	-4(%rbp), %eax	# limit, tmp86
	addl	$1048576, %eax	#, D.4053
	cltq
	movq	%rax, %rdi	# D.4054,
	call	malloc	#
	movq	%rax, %rcx	# tmp87, D.4055
	movl	-12(%rbp), %eax	# i, tmp89
	movslq	%eax, %rdx	# tmp89, tmp88
	movq	%rdx, %rax	# tmp88, tmp90
	addq	%rax, %rax	# tmp90
	addq	%rdx, %rax	# tmp88, tmp90
	salq	$3, %rax	#, tmp91
	addq	$spec_fd+16, %rax	#, tmp92
	movq	%rcx, (%rax)	# D.4055, spec_fd[i_1].buf
	.loc 1 92 0
	movl	-12(%rbp), %eax	# i, tmp94
	movslq	%eax, %rdx	# tmp94, tmp93
	movq	%rdx, %rax	# tmp93, tmp95
	addq	%rax, %rax	# tmp95
	addq	%rdx, %rax	# tmp93, tmp95
	salq	$3, %rax	#, tmp96
	addq	$spec_fd+16, %rax	#, tmp97
	movq	(%rax), %rax	# spec_fd[i_1].buf, D.4056
	testq	%rax, %rax	# D.4056
	jne	.L8	#,
	.loc 1 93 0
	movl	$.LC2, %edi	#,
	call	puts	#
	.loc 1 94 0
	movl	$0, %edi	#,
	call	exit	#
.L8:
	.loc 1 96 0
	movl	$0, -8(%rbp)	#, j
	jmp	.L9	#
.L10:
	.loc 1 97 0 discriminator 2
	movl	-12(%rbp), %eax	# i, tmp99
	movslq	%eax, %rdx	# tmp99, tmp98
	movq	%rdx, %rax	# tmp98, tmp100
	addq	%rax, %rax	# tmp100
	addq	%rdx, %rax	# tmp98, tmp100
	salq	$3, %rax	#, tmp101
	addq	$spec_fd+16, %rax	#, tmp102
	movq	(%rax), %rdx	# spec_fd[i_1].buf, D.4056
	movl	-8(%rbp), %eax	# j, tmp103
	cltq
	addq	%rdx, %rax	# D.4056, D.4056
	movb	$0, (%rax)	#, *_14
	.loc 1 96 0 discriminator 2
	addl	$1024, -8(%rbp)	#, j
.L9:
	.loc 1 96 0 is_stmt 0 discriminator 1
	movl	-8(%rbp), %eax	# j, tmp104
	cmpl	-4(%rbp), %eax	# limit, tmp104
	jl	.L10	#,
.LBE2:
	.loc 1 87 0 is_stmt 1
	addl	$1, -12(%rbp)	#, i
.L7:
	.loc 1 87 0 is_stmt 0 discriminator 1
	cmpl	$2, -12(%rbp)	#, i
	jle	.L11	#,
	.loc 1 100 0 is_stmt 1
	movl	$0, %eax	#, D.4053
	.loc 1 101 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	spec_init, .-spec_init
	.section	.rodata
.LC3:
	.string	"Creating Chunks"
.LC4:
	.string	"Creating Chunk %d\n"
.LC6:
	.string	"Filling input file"
	.text
	.globl	spec_random_load
	.type	spec_random_load, @function
spec_random_load:
.LFB4:
	.loc 1 103 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$4194344, %rsp	#,
	.cfi_offset 3, -24
	movl	%edi, -4194340(%rbp)	# fd, fd
	.loc 1 113 0
	movl	dbglvl(%rip), %eax	# dbglvl, dbglvl.5
	cmpl	$4, %eax	#, dbglvl.5
	jle	.L14	#,
	.loc 1 113 0 is_stmt 0 discriminator 1
	movl	$.LC3, %edi	#,
	call	puts	#
.L14:
	.loc 1 114 0 is_stmt 1
	movl	$0, -4194328(%rbp)	#, i
	jmp	.L15	#
.L19:
	.loc 1 115 0
	movl	dbglvl(%rip), %eax	# dbglvl, dbglvl.6
	cmpl	$5, %eax	#, dbglvl.6
	jle	.L16	#,
	.loc 1 115 0 is_stmt 0 discriminator 1
	movl	-4194328(%rbp), %eax	# i, tmp76
	movl	%eax, %esi	# tmp76,
	movl	$.LC4, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
.L16:
	.loc 1 116 0 is_stmt 1
	movl	$0, -4194324(%rbp)	#, j
	jmp	.L17	#
.L18:
	.loc 1 117 0 discriminator 2
	movl	$0, %eax	#,
	call	ran	#
	movsd	.LC5(%rip), %xmm1	#, tmp77
	mulsd	%xmm1, %xmm0	# tmp77, D.4060
	cvttsd2si	%xmm0, %eax	# D.4060, D.4061
	movl	-4194324(%rbp), %edx	# j, tmp79
	movslq	%edx, %rdx	# tmp79, tmp78
	movl	-4194328(%rbp), %ecx	# i, tmp81
	movslq	%ecx, %rcx	# tmp81, tmp80
	salq	$17, %rcx	#, tmp82
	leaq	-16(%rbp), %rsi	#, tmp112
	addq	%rsi, %rcx	# tmp112, tmp83
	addq	%rcx, %rdx	# tmp83, tmp84
	subq	$4194304, %rdx	#, tmp85
	movb	%al, (%rdx)	# D.4062, random_text
	.loc 1 116 0 discriminator 2
	addl	$1, -4194324(%rbp)	#, j
.L17:
	.loc 1 116 0 is_stmt 0 discriminator 1
	cmpl	$131071, -4194324(%rbp)	#, j
	jle	.L18	#,
	.loc 1 114 0 is_stmt 1
	addl	$1, -4194328(%rbp)	#, i
.L15:
	.loc 1 114 0 is_stmt 0 discriminator 1
	cmpl	$31, -4194328(%rbp)	#, i
	jle	.L19	#,
	.loc 1 121 0 is_stmt 1
	movl	dbglvl(%rip), %eax	# dbglvl, dbglvl.7
	cmpl	$4, %eax	#, dbglvl.7
	jle	.L20	#,
	.loc 1 121 0 is_stmt 0 discriminator 1
	movl	$.LC6, %edi	#,
	call	puts	#
.L20:
	.loc 1 123 0 is_stmt 1
	movl	$0, -4194328(%rbp)	#, i
	jmp	.L21	#
.L22:
	.loc 1 124 0 discriminator 2
	movl	-4194340(%rbp), %eax	# fd, tmp87
	movslq	%eax, %rdx	# tmp87, tmp86
	movq	%rdx, %rax	# tmp86, tmp88
	addq	%rax, %rax	# tmp88
	addq	%rdx, %rax	# tmp86, tmp88
	salq	$3, %rax	#, tmp89
	addq	$spec_fd+16, %rax	#, tmp90
	movq	(%rax), %rdx	# spec_fd[fd_16(D)].buf, D.4063
	movl	-4194328(%rbp), %eax	# i, tmp91
	cltq
	leaq	(%rdx,%rax), %rbx	#, D.4063
	movl	$0, %eax	#,
	call	ran	#
	movsd	.LC7(%rip), %xmm1	#, tmp92
	mulsd	%xmm1, %xmm0	# tmp92, D.4060
	cvttsd2si	%xmm0, %edx	# D.4060, D.4061
	leaq	-4194320(%rbp), %rax	#, tmp93
	movslq	%edx, %rdx	# D.4061, tmp94
	salq	$17, %rdx	#, tmp95
	addq	%rax, %rdx	# tmp93, D.4065
	movq	%rbx, %rax	# D.4063, tmp96
	movq	%rdx, %rcx	# D.4065, tmp97
	movl	$131072, %edx	#, tmp98
	movq	%rcx, %rsi	# tmp97,
	movq	%rax, %rdi	# tmp96,
	call	memcpy	#
	.loc 1 123 0 discriminator 2
	addl	$131072, -4194328(%rbp)	#, i
.L21:
	.loc 1 123 0 is_stmt 0 discriminator 1
	movl	-4194340(%rbp), %eax	# fd, tmp102
	movslq	%eax, %rdx	# tmp102, tmp101
	movq	%rdx, %rax	# tmp101, tmp103
	addq	%rax, %rax	# tmp103
	addq	%rdx, %rax	# tmp101, tmp103
	salq	$3, %rax	#, tmp104
	addq	$spec_fd, %rax	#, tmp105
	movl	(%rax), %eax	# spec_fd[fd_16(D)].limit, D.4061
	cmpl	-4194328(%rbp), %eax	# i, D.4061
	jg	.L22	#,
	.loc 1 128 0 is_stmt 1
	movl	-4194340(%rbp), %eax	# fd, tmp107
	movslq	%eax, %rdx	# tmp107, tmp106
	movq	%rdx, %rax	# tmp106, tmp108
	addq	%rax, %rax	# tmp108
	addq	%rdx, %rax	# tmp106, tmp108
	salq	$3, %rax	#, tmp109
	addq	$spec_fd, %rax	#, tmp110
	movl	$1048576, 4(%rax)	#, spec_fd[fd_16(D)].len
	.loc 1 129 0
	movl	$0, %eax	#, D.4061
	.loc 1 130 0
	addq	$4194344, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	spec_random_load, .-spec_random_load
	.section	.rodata
.LC8:
	.string	"Can't open file %s: %s\n"
.LC9:
	.string	"Error reading from %s: %s\n"
.LC10:
	.string	"Duplicating %d bytes\n"
	.text
	.globl	spec_load
	.type	spec_load, @function
spec_load:
.LFB5:
	.loc 1 132 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	%edi, -20(%rbp)	# num, num
	movq	%rsi, -32(%rbp)	# filename, filename
	movl	%edx, -24(%rbp)	# size, size
	.loc 1 138 0
	movq	-32(%rbp), %rax	# filename, tmp88
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp88,
	movl	$0, %eax	#,
	call	open	#
	movl	%eax, -8(%rbp)	# tmp89, fd
	.loc 1 139 0
	cmpl	$0, -8(%rbp)	#, fd
	jns	.L25	#,
	.loc 1 140 0
	call	__errno_location	#
	movl	(%rax), %eax	# *_5, D.4074
	movl	%eax, %edi	# D.4074,
	call	strerror	#
	movq	%rax, %rcx	#, D.4075
	movq	stderr(%rip), %rax	# stderr, stderr.8
	movq	-32(%rbp), %rdx	# filename, tmp90
	movl	$.LC8, %esi	#,
	movq	%rax, %rdi	# stderr.8,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 141 0
	movl	$0, %edi	#,
	call	exit	#
.L25:
	.loc 1 143 0
	movl	-20(%rbp), %eax	# num, tmp92
	movslq	%eax, %rdx	# tmp92, tmp91
	movq	%rdx, %rax	# tmp91, tmp93
	addq	%rax, %rax	# tmp93
	addq	%rdx, %rax	# tmp91, tmp93
	salq	$3, %rax	#, tmp94
	addq	$spec_fd, %rax	#, tmp95
	movl	$0, 4(%rax)	#, spec_fd[num_9(D)].len
	movl	-20(%rbp), %eax	# num, tmp97
	movslq	%eax, %rdx	# tmp97, tmp96
	movq	%rdx, %rax	# tmp96, tmp98
	addq	%rax, %rax	# tmp98
	addq	%rdx, %rax	# tmp96, tmp98
	salq	$3, %rax	#, tmp99
	addq	$spec_fd, %rax	#, tmp100
	movl	4(%rax), %ecx	# spec_fd[num_9(D)].len, D.4074
	movl	-20(%rbp), %eax	# num, tmp102
	movslq	%eax, %rdx	# tmp102, tmp101
	movq	%rdx, %rax	# tmp101, tmp103
	addq	%rax, %rax	# tmp103
	addq	%rdx, %rax	# tmp101, tmp103
	salq	$3, %rax	#, tmp104
	addq	$spec_fd, %rax	#, tmp105
	movl	%ecx, 8(%rax)	# D.4074, spec_fd[num_9(D)].pos
	.loc 1 144 0
	movl	$0, -16(%rbp)	#, i
	jmp	.L26	#
.L30:
	.loc 1 145 0
	movl	-20(%rbp), %eax	# num, tmp107
	movslq	%eax, %rdx	# tmp107, tmp106
	movq	%rdx, %rax	# tmp106, tmp108
	addq	%rax, %rax	# tmp108
	addq	%rdx, %rax	# tmp106, tmp108
	salq	$3, %rax	#, tmp109
	addq	$spec_fd+16, %rax	#, tmp110
	movq	(%rax), %rdx	# spec_fd[num_9(D)].buf, D.4076
	movl	-16(%rbp), %eax	# i, tmp111
	cltq
	leaq	(%rdx,%rax), %rcx	#, D.4078
	movl	-8(%rbp), %eax	# fd, tmp112
	movl	$131072, %edx	#,
	movq	%rcx, %rsi	# D.4078,
	movl	%eax, %edi	# tmp112,
	call	read	#
	movl	%eax, -4(%rbp)	# D.4079, rc
	.loc 1 146 0
	cmpl	$0, -4(%rbp)	#, rc
	jne	.L27	#,
	.loc 1 146 0 is_stmt 0 discriminator 1
	jmp	.L28	#
.L27:
	.loc 1 147 0 is_stmt 1
	cmpl	$0, -4(%rbp)	#, rc
	jns	.L29	#,
	.loc 1 148 0
	call	__errno_location	#
	movl	(%rax), %eax	# *_18, D.4074
	movl	%eax, %edi	# D.4074,
	call	strerror	#
	movq	%rax, %rcx	#, D.4075
	movq	stderr(%rip), %rax	# stderr, stderr.9
	movq	-32(%rbp), %rdx	# filename, tmp113
	movl	$.LC9, %esi	#,
	movq	%rax, %rdi	# stderr.9,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 149 0
	movl	$0, %edi	#,
	call	exit	#
.L29:
	.loc 1 151 0
	movl	-20(%rbp), %eax	# num, tmp115
	movslq	%eax, %rdx	# tmp115, tmp114
	movq	%rdx, %rax	# tmp114, tmp116
	addq	%rax, %rax	# tmp116
	addq	%rdx, %rax	# tmp114, tmp116
	salq	$3, %rax	#, tmp117
	addq	$spec_fd, %rax	#, tmp118
	movl	4(%rax), %edx	# spec_fd[num_9(D)].len, D.4074
	movl	-4(%rbp), %eax	# rc, tmp119
	leal	(%rdx,%rax), %ecx	#, D.4074
	movl	-20(%rbp), %eax	# num, tmp121
	movslq	%eax, %rdx	# tmp121, tmp120
	movq	%rdx, %rax	# tmp120, tmp122
	addq	%rax, %rax	# tmp122
	addq	%rdx, %rax	# tmp120, tmp122
	salq	$3, %rax	#, tmp123
	addq	$spec_fd, %rax	#, tmp124
	movl	%ecx, 4(%rax)	# D.4074, spec_fd[num_9(D)].len
	.loc 1 144 0
	movl	-4(%rbp), %eax	# rc, tmp125
	addl	%eax, -16(%rbp)	# tmp125, i
.L26:
	.loc 1 144 0 is_stmt 0 discriminator 1
	movl	-16(%rbp), %eax	# i, tmp126
	cmpl	-24(%rbp), %eax	# size, tmp126
	jl	.L30	#,
.L28:
	.loc 1 153 0 is_stmt 1
	movl	-8(%rbp), %eax	# fd, tmp127
	movl	%eax, %edi	# tmp127,
	call	close	#
	.loc 1 154 0
	jmp	.L31	#
.L34:
.LBB3:
	.loc 1 155 0
	movl	-20(%rbp), %eax	# num, tmp129
	movslq	%eax, %rdx	# tmp129, tmp128
	movq	%rdx, %rax	# tmp128, tmp130
	addq	%rax, %rax	# tmp130
	addq	%rdx, %rax	# tmp128, tmp130
	salq	$3, %rax	#, tmp131
	addq	$spec_fd, %rax	#, tmp132
	movl	4(%rax), %eax	# spec_fd[num_9(D)].len, D.4074
	movl	-24(%rbp), %edx	# size, tmp136
	subl	%eax, %edx	# D.4074, tmp135
	movl	%edx, %eax	# tmp135, tmp135
	movl	%eax, -12(%rbp)	# tmp135, tmp
	.loc 1 156 0
	movl	-20(%rbp), %eax	# num, tmp138
	movslq	%eax, %rdx	# tmp138, tmp137
	movq	%rdx, %rax	# tmp137, tmp139
	addq	%rax, %rax	# tmp139
	addq	%rdx, %rax	# tmp137, tmp139
	salq	$3, %rax	#, tmp140
	addq	$spec_fd, %rax	#, tmp141
	movl	4(%rax), %eax	# spec_fd[num_9(D)].len, D.4074
	cmpl	-12(%rbp), %eax	# tmp, D.4074
	jge	.L32	#,
	.loc 1 156 0 is_stmt 0 discriminator 1
	movl	-20(%rbp), %eax	# num, tmp143
	movslq	%eax, %rdx	# tmp143, tmp142
	movq	%rdx, %rax	# tmp142, tmp144
	addq	%rax, %rax	# tmp144
	addq	%rdx, %rax	# tmp142, tmp144
	salq	$3, %rax	#, tmp145
	addq	$spec_fd, %rax	#, tmp146
	movl	4(%rax), %eax	# spec_fd[num_9(D)].len, tmp147
	movl	%eax, -12(%rbp)	# tmp147, tmp
.L32:
	.loc 1 157 0 is_stmt 1
	movl	dbglvl(%rip), %eax	# dbglvl, dbglvl.10
	cmpl	$3, %eax	#, dbglvl.10
	jle	.L33	#,
	.loc 1 157 0 is_stmt 0 discriminator 1
	movl	-12(%rbp), %eax	# tmp, tmp148
	movl	%eax, %esi	# tmp148,
	movl	$.LC10, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
.L33:
	.loc 1 158 0 is_stmt 1
	movl	-12(%rbp), %eax	# tmp, tmp149
	movslq	%eax, %rsi	# tmp149, D.4080
	movl	-20(%rbp), %eax	# num, tmp151
	movslq	%eax, %rdx	# tmp151, tmp150
	movq	%rdx, %rax	# tmp150, tmp152
	addq	%rax, %rax	# tmp152
	addq	%rdx, %rax	# tmp150, tmp152
	salq	$3, %rax	#, tmp153
	addq	$spec_fd+16, %rax	#, tmp154
	movq	(%rax), %rcx	# spec_fd[num_9(D)].buf, D.4076
	movl	-20(%rbp), %eax	# num, tmp156
	movslq	%eax, %rdx	# tmp156, tmp155
	movq	%rdx, %rax	# tmp155, tmp157
	addq	%rax, %rax	# tmp157
	addq	%rdx, %rax	# tmp155, tmp157
	salq	$3, %rax	#, tmp158
	addq	$spec_fd+16, %rax	#, tmp159
	movq	(%rax), %rdi	# spec_fd[num_9(D)].buf, D.4076
	movl	-20(%rbp), %eax	# num, tmp161
	movslq	%eax, %rdx	# tmp161, tmp160
	movq	%rdx, %rax	# tmp160, tmp162
	addq	%rax, %rax	# tmp162
	addq	%rdx, %rax	# tmp160, tmp162
	salq	$3, %rax	#, tmp163
	addq	$spec_fd, %rax	#, tmp164
	movl	4(%rax), %eax	# spec_fd[num_9(D)].len, D.4074
	cltq
	addq	%rdi, %rax	# D.4076, D.4076
	movq	%rsi, %rdx	# D.4080,
	movq	%rcx, %rsi	# D.4076,
	movq	%rax, %rdi	# D.4076,
	call	memcpy	#
	.loc 1 159 0
	movl	-20(%rbp), %eax	# num, tmp166
	movslq	%eax, %rdx	# tmp166, tmp165
	movq	%rdx, %rax	# tmp165, tmp167
	addq	%rax, %rax	# tmp167
	addq	%rdx, %rax	# tmp165, tmp167
	salq	$3, %rax	#, tmp168
	addq	$spec_fd, %rax	#, tmp169
	movl	4(%rax), %edx	# spec_fd[num_9(D)].len, D.4074
	movl	-12(%rbp), %eax	# tmp, tmp170
	leal	(%rdx,%rax), %ecx	#, D.4074
	movl	-20(%rbp), %eax	# num, tmp172
	movslq	%eax, %rdx	# tmp172, tmp171
	movq	%rdx, %rax	# tmp171, tmp173
	addq	%rax, %rax	# tmp173
	addq	%rdx, %rax	# tmp171, tmp173
	salq	$3, %rax	#, tmp174
	addq	$spec_fd, %rax	#, tmp175
	movl	%ecx, 4(%rax)	# D.4074, spec_fd[num_9(D)].len
.L31:
.LBE3:
	.loc 1 154 0 discriminator 1
	movl	-20(%rbp), %eax	# num, tmp177
	movslq	%eax, %rdx	# tmp177, tmp176
	movq	%rdx, %rax	# tmp176, tmp178
	addq	%rax, %rax	# tmp178
	addq	%rdx, %rax	# tmp176, tmp178
	salq	$3, %rax	#, tmp179
	addq	$spec_fd, %rax	#, tmp180
	movl	4(%rax), %eax	# spec_fd[num_9(D)].len, D.4074
	cmpl	-24(%rbp), %eax	# size, D.4074
	jl	.L34	#,
	.loc 1 161 0
	movl	$0, %eax	#, D.4074
	.loc 1 162 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	spec_load, .-spec_load
	.section	.rodata
.LC11:
	.string	"spec_read: %d, %p, %d = "
	.align 8
.LC12:
	.string	"spec_read: fd=%d, > MAX_SPEC_FD!\n"
.LC13:
	.string	"EOF"
.LC14:
	.string	"%d\n"
	.text
	.globl	spec_read
	.type	spec_read, @function
spec_read:
.LFB6:
	.loc 1 164 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	%edi, -20(%rbp)	# fd, fd
	movq	%rsi, -32(%rbp)	# buf, buf
	movl	%edx, -24(%rbp)	# size, size
	.loc 1 165 0
	movl	$0, -4(%rbp)	#, rc
	.loc 1 166 0
	movl	dbglvl(%rip), %eax	# dbglvl, dbglvl.11
	cmpl	$4, %eax	#, dbglvl.11
	jle	.L37	#,
	.loc 1 166 0 is_stmt 0 discriminator 1
	movl	-24(%rbp), %ecx	# size, tmp79
	movq	-32(%rbp), %rdx	# buf, tmp80
	movl	-20(%rbp), %eax	# fd, tmp81
	movl	%eax, %esi	# tmp81,
	movl	$.LC11, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
.L37:
	.loc 1 167 0 is_stmt 1
	cmpl	$3, -20(%rbp)	#, fd
	jle	.L38	#,
	.loc 1 168 0
	movq	stderr(%rip), %rax	# stderr, stderr.12
	movl	-20(%rbp), %edx	# fd, tmp82
	movl	$.LC12, %esi	#,
	movq	%rax, %rdi	# stderr.12,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 169 0
	movl	$0, %edi	#,
	call	exit	#
.L38:
	.loc 1 171 0
	movl	-20(%rbp), %eax	# fd, tmp84
	movslq	%eax, %rdx	# tmp84, tmp83
	movq	%rdx, %rax	# tmp83, tmp85
	addq	%rax, %rax	# tmp85
	addq	%rdx, %rax	# tmp83, tmp85
	salq	$3, %rax	#, tmp86
	addq	$spec_fd, %rax	#, tmp87
	movl	8(%rax), %ecx	# spec_fd[fd_5(D)].pos, D.4084
	movl	-20(%rbp), %eax	# fd, tmp89
	movslq	%eax, %rdx	# tmp89, tmp88
	movq	%rdx, %rax	# tmp88, tmp90
	addq	%rax, %rax	# tmp90
	addq	%rdx, %rax	# tmp88, tmp90
	salq	$3, %rax	#, tmp91
	addq	$spec_fd, %rax	#, tmp92
	movl	4(%rax), %eax	# spec_fd[fd_5(D)].len, D.4084
	cmpl	%eax, %ecx	# D.4084, D.4084
	jl	.L39	#,
	.loc 1 172 0
	movl	dbglvl(%rip), %eax	# dbglvl, dbglvl.13
	cmpl	$4, %eax	#, dbglvl.13
	jle	.L40	#,
	.loc 1 172 0 is_stmt 0 discriminator 1
	movl	$.LC13, %edi	#,
	call	puts	#
.L40:
	.loc 1 173 0 is_stmt 1
	movl	$-1, %eax	#, D.4084
	jmp	.L41	#
.L39:
	.loc 1 175 0
	movl	-20(%rbp), %eax	# fd, tmp94
	movslq	%eax, %rdx	# tmp94, tmp93
	movq	%rdx, %rax	# tmp93, tmp95
	addq	%rax, %rax	# tmp95
	addq	%rdx, %rax	# tmp93, tmp95
	salq	$3, %rax	#, tmp96
	addq	$spec_fd, %rax	#, tmp97
	movl	8(%rax), %edx	# spec_fd[fd_5(D)].pos, D.4084
	movl	-24(%rbp), %eax	# size, tmp98
	leal	(%rdx,%rax), %ecx	#, D.4084
	movl	-20(%rbp), %eax	# fd, tmp100
	movslq	%eax, %rdx	# tmp100, tmp99
	movq	%rdx, %rax	# tmp99, tmp101
	addq	%rax, %rax	# tmp101
	addq	%rdx, %rax	# tmp99, tmp101
	salq	$3, %rax	#, tmp102
	addq	$spec_fd, %rax	#, tmp103
	movl	4(%rax), %eax	# spec_fd[fd_5(D)].len, D.4084
	cmpl	%eax, %ecx	# D.4084, D.4084
	jl	.L42	#,
	.loc 1 176 0
	movl	-20(%rbp), %eax	# fd, tmp105
	movslq	%eax, %rdx	# tmp105, tmp104
	movq	%rdx, %rax	# tmp104, tmp106
	addq	%rax, %rax	# tmp106
	addq	%rdx, %rax	# tmp104, tmp106
	salq	$3, %rax	#, tmp107
	addq	$spec_fd, %rax	#, tmp108
	movl	4(%rax), %ecx	# spec_fd[fd_5(D)].len, D.4084
	movl	-20(%rbp), %eax	# fd, tmp110
	movslq	%eax, %rdx	# tmp110, tmp109
	movq	%rdx, %rax	# tmp109, tmp111
	addq	%rax, %rax	# tmp111
	addq	%rdx, %rax	# tmp109, tmp111
	salq	$3, %rax	#, tmp112
	addq	$spec_fd, %rax	#, tmp113
	movl	8(%rax), %eax	# spec_fd[fd_5(D)].pos, D.4084
	subl	%eax, %ecx	# D.4084, tmp114
	movl	%ecx, %eax	# tmp114, tmp114
	movl	%eax, -4(%rbp)	# tmp114, rc
	jmp	.L43	#
.L42:
	.loc 1 178 0
	movl	-24(%rbp), %eax	# size, tmp115
	movl	%eax, -4(%rbp)	# tmp115, rc
.L43:
	.loc 1 180 0
	movl	-4(%rbp), %eax	# rc, tmp116
	movslq	%eax, %rcx	# tmp116, D.4085
	movl	-20(%rbp), %eax	# fd, tmp118
	movslq	%eax, %rdx	# tmp118, tmp117
	movq	%rdx, %rax	# tmp117, tmp119
	addq	%rax, %rax	# tmp119
	addq	%rdx, %rax	# tmp117, tmp119
	salq	$3, %rax	#, tmp120
	addq	$spec_fd+16, %rax	#, tmp121
	movq	(%rax), %rsi	# spec_fd[fd_5(D)].buf, D.4086
	movl	-20(%rbp), %eax	# fd, tmp123
	movslq	%eax, %rdx	# tmp123, tmp122
	movq	%rdx, %rax	# tmp122, tmp124
	addq	%rax, %rax	# tmp124
	addq	%rdx, %rax	# tmp122, tmp124
	salq	$3, %rax	#, tmp125
	addq	$spec_fd, %rax	#, tmp126
	movl	8(%rax), %eax	# spec_fd[fd_5(D)].pos, D.4084
	cltq
	addq	%rax, %rsi	# D.4087, D.4086
	movq	-32(%rbp), %rax	# buf, tmp127
	movq	%rcx, %rdx	# D.4085,
	movq	%rax, %rdi	# tmp127,
	call	memcpy	#
	.loc 1 181 0
	movl	-20(%rbp), %eax	# fd, tmp129
	movslq	%eax, %rdx	# tmp129, tmp128
	movq	%rdx, %rax	# tmp128, tmp130
	addq	%rax, %rax	# tmp130
	addq	%rdx, %rax	# tmp128, tmp130
	salq	$3, %rax	#, tmp131
	addq	$spec_fd, %rax	#, tmp132
	movl	8(%rax), %edx	# spec_fd[fd_5(D)].pos, D.4084
	movl	-4(%rbp), %eax	# rc, tmp133
	leal	(%rdx,%rax), %ecx	#, D.4084
	movl	-20(%rbp), %eax	# fd, tmp135
	movslq	%eax, %rdx	# tmp135, tmp134
	movq	%rdx, %rax	# tmp134, tmp136
	addq	%rax, %rax	# tmp136
	addq	%rdx, %rax	# tmp134, tmp136
	salq	$3, %rax	#, tmp137
	addq	$spec_fd, %rax	#, tmp138
	movl	%ecx, 8(%rax)	# D.4084, spec_fd[fd_5(D)].pos
	.loc 1 182 0
	movl	dbglvl(%rip), %eax	# dbglvl, dbglvl.14
	cmpl	$4, %eax	#, dbglvl.14
	jle	.L44	#,
	.loc 1 182 0 is_stmt 0 discriminator 1
	movl	-4(%rbp), %eax	# rc, tmp139
	movl	%eax, %esi	# tmp139,
	movl	$.LC14, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
.L44:
	.loc 1 183 0 is_stmt 1
	movl	-4(%rbp), %eax	# rc, D.4084
.L41:
	.loc 1 184 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	spec_read, .-spec_read
	.section	.rodata
	.align 8
.LC15:
	.string	"spec_fread: %p, (%d x %d) fd %d ="
	.align 8
.LC16:
	.string	"spec_fread: fd=%d, > MAX_SPEC_FD!\n"
	.text
	.globl	spec_fread
	.type	spec_fread, @function
spec_fread:
.LFB7:
	.loc 1 185 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# buf, buf
	movl	%esi, -28(%rbp)	# size, size
	movl	%edx, -32(%rbp)	# num, num
	movl	%ecx, -36(%rbp)	# fd, fd
	.loc 1 186 0
	movl	$0, -4(%rbp)	#, rc
	.loc 1 187 0
	movl	dbglvl(%rip), %eax	# dbglvl, dbglvl.15
	cmpl	$4, %eax	#, dbglvl.15
	jle	.L46	#,
	.loc 1 187 0 is_stmt 0 discriminator 1
	movl	-36(%rbp), %esi	# fd, tmp83
	movl	-32(%rbp), %ecx	# num, tmp84
	movl	-28(%rbp), %edx	# size, tmp85
	movq	-24(%rbp), %rax	# buf, tmp86
	movl	%esi, %r8d	# tmp83,
	movq	%rax, %rsi	# tmp86,
	movl	$.LC15, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
.L46:
	.loc 1 188 0 is_stmt 1
	cmpl	$3, -36(%rbp)	#, fd
	jle	.L47	#,
	.loc 1 189 0
	movq	stderr(%rip), %rax	# stderr, stderr.16
	movl	-36(%rbp), %edx	# fd, tmp87
	movl	$.LC16, %esi	#,
	movq	%rax, %rdi	# stderr.16,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 190 0
	movl	$0, %edi	#,
	call	exit	#
.L47:
	.loc 1 192 0
	movl	-36(%rbp), %eax	# fd, tmp89
	movslq	%eax, %rdx	# tmp89, tmp88
	movq	%rdx, %rax	# tmp88, tmp90
	addq	%rax, %rax	# tmp90
	addq	%rdx, %rax	# tmp88, tmp90
	salq	$3, %rax	#, tmp91
	addq	$spec_fd, %rax	#, tmp92
	movl	8(%rax), %ecx	# spec_fd[fd_8(D)].pos, D.4092
	movl	-36(%rbp), %eax	# fd, tmp94
	movslq	%eax, %rdx	# tmp94, tmp93
	movq	%rdx, %rax	# tmp93, tmp95
	addq	%rax, %rax	# tmp95
	addq	%rdx, %rax	# tmp93, tmp95
	salq	$3, %rax	#, tmp96
	addq	$spec_fd, %rax	#, tmp97
	movl	4(%rax), %eax	# spec_fd[fd_8(D)].len, D.4092
	cmpl	%eax, %ecx	# D.4092, D.4092
	jl	.L48	#,
	.loc 1 193 0
	movl	dbglvl(%rip), %eax	# dbglvl, dbglvl.17
	cmpl	$4, %eax	#, dbglvl.17
	jle	.L49	#,
	.loc 1 193 0 is_stmt 0 discriminator 1
	movl	$.LC13, %edi	#,
	call	puts	#
.L49:
	.loc 1 194 0 is_stmt 1
	movl	$-1, %eax	#, D.4092
	jmp	.L50	#
.L48:
	.loc 1 196 0
	movl	-36(%rbp), %eax	# fd, tmp99
	movslq	%eax, %rdx	# tmp99, tmp98
	movq	%rdx, %rax	# tmp98, tmp100
	addq	%rax, %rax	# tmp100
	addq	%rdx, %rax	# tmp98, tmp100
	salq	$3, %rax	#, tmp101
	addq	$spec_fd, %rax	#, tmp102
	movl	8(%rax), %edx	# spec_fd[fd_8(D)].pos, D.4092
	movl	-28(%rbp), %eax	# size, tmp103
	imull	-32(%rbp), %eax	# num, D.4092
	leal	(%rdx,%rax), %ecx	#, D.4092
	movl	-36(%rbp), %eax	# fd, tmp105
	movslq	%eax, %rdx	# tmp105, tmp104
	movq	%rdx, %rax	# tmp104, tmp106
	addq	%rax, %rax	# tmp106
	addq	%rdx, %rax	# tmp104, tmp106
	salq	$3, %rax	#, tmp107
	addq	$spec_fd, %rax	#, tmp108
	movl	4(%rax), %eax	# spec_fd[fd_8(D)].len, D.4092
	cmpl	%eax, %ecx	# D.4092, D.4092
	jl	.L51	#,
	.loc 1 197 0
	movl	-36(%rbp), %eax	# fd, tmp110
	movslq	%eax, %rdx	# tmp110, tmp109
	movq	%rdx, %rax	# tmp109, tmp111
	addq	%rax, %rax	# tmp111
	addq	%rdx, %rax	# tmp109, tmp111
	salq	$3, %rax	#, tmp112
	addq	$spec_fd, %rax	#, tmp113
	movl	4(%rax), %ecx	# spec_fd[fd_8(D)].len, D.4092
	movl	-36(%rbp), %eax	# fd, tmp115
	movslq	%eax, %rdx	# tmp115, tmp114
	movq	%rdx, %rax	# tmp114, tmp116
	addq	%rax, %rax	# tmp116
	addq	%rdx, %rax	# tmp114, tmp116
	salq	$3, %rax	#, tmp117
	addq	$spec_fd, %rax	#, tmp118
	movl	8(%rax), %eax	# spec_fd[fd_8(D)].pos, D.4092
	subl	%eax, %ecx	# D.4092, D.4092
	movl	%ecx, %eax	# D.4092, D.4092
	cltd
	idivl	-28(%rbp)	# size
	movl	%eax, -4(%rbp)	# tmp120, rc
	jmp	.L52	#
.L51:
	.loc 1 199 0
	movl	-32(%rbp), %eax	# num, tmp122
	movl	%eax, -4(%rbp)	# tmp122, rc
.L52:
	.loc 1 201 0
	movl	-4(%rbp), %eax	# rc, tmp123
	movslq	%eax, %rcx	# tmp123, D.4093
	movl	-36(%rbp), %eax	# fd, tmp125
	movslq	%eax, %rdx	# tmp125, tmp124
	movq	%rdx, %rax	# tmp124, tmp126
	addq	%rax, %rax	# tmp126
	addq	%rdx, %rax	# tmp124, tmp126
	salq	$3, %rax	#, tmp127
	addq	$spec_fd+16, %rax	#, tmp128
	movq	(%rax), %rsi	# spec_fd[fd_8(D)].buf, D.4094
	movl	-36(%rbp), %eax	# fd, tmp130
	movslq	%eax, %rdx	# tmp130, tmp129
	movq	%rdx, %rax	# tmp129, tmp131
	addq	%rax, %rax	# tmp131
	addq	%rdx, %rax	# tmp129, tmp131
	salq	$3, %rax	#, tmp132
	addq	$spec_fd, %rax	#, tmp133
	movl	8(%rax), %eax	# spec_fd[fd_8(D)].pos, D.4092
	cltq
	addq	%rax, %rsi	# D.4095, D.4094
	movq	-24(%rbp), %rax	# buf, tmp134
	movq	%rcx, %rdx	# D.4093,
	movq	%rax, %rdi	# tmp134,
	call	memcpy	#
	.loc 1 202 0
	movl	-36(%rbp), %eax	# fd, tmp136
	movslq	%eax, %rdx	# tmp136, tmp135
	movq	%rdx, %rax	# tmp135, tmp137
	addq	%rax, %rax	# tmp137
	addq	%rdx, %rax	# tmp135, tmp137
	salq	$3, %rax	#, tmp138
	addq	$spec_fd, %rax	#, tmp139
	movl	8(%rax), %edx	# spec_fd[fd_8(D)].pos, D.4092
	movl	-4(%rbp), %eax	# rc, tmp140
	imull	-28(%rbp), %eax	# size, D.4092
	leal	(%rdx,%rax), %ecx	#, D.4092
	movl	-36(%rbp), %eax	# fd, tmp142
	movslq	%eax, %rdx	# tmp142, tmp141
	movq	%rdx, %rax	# tmp141, tmp143
	addq	%rax, %rax	# tmp143
	addq	%rdx, %rax	# tmp141, tmp143
	salq	$3, %rax	#, tmp144
	addq	$spec_fd, %rax	#, tmp145
	movl	%ecx, 8(%rax)	# D.4092, spec_fd[fd_8(D)].pos
	.loc 1 203 0
	movl	dbglvl(%rip), %eax	# dbglvl, dbglvl.18
	cmpl	$4, %eax	#, dbglvl.18
	jle	.L53	#,
	.loc 1 203 0 is_stmt 0 discriminator 1
	movl	-4(%rbp), %eax	# rc, tmp146
	imull	-28(%rbp), %eax	# size, D.4092
	movl	%eax, %esi	# D.4092,
	movl	$.LC14, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
.L53:
	.loc 1 204 0 is_stmt 1
	movl	-4(%rbp), %eax	# rc, D.4092
.L50:
	.loc 1 205 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	spec_fread, .-spec_fread
	.section	.rodata
.LC17:
	.string	"spec_getc: %d = "
	.text
	.globl	spec_getc
	.type	spec_getc, @function
spec_getc:
.LFB8:
	.loc 1 206 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	%edi, -20(%rbp)	# fd, fd
	.loc 1 207 0
	movl	$0, -4(%rbp)	#, rc
	.loc 1 208 0
	movl	dbglvl(%rip), %eax	# dbglvl, dbglvl.19
	cmpl	$4, %eax	#, dbglvl.19
	jle	.L55	#,
	.loc 1 208 0 is_stmt 0 discriminator 1
	movl	-20(%rbp), %eax	# fd, tmp73
	movl	%eax, %esi	# tmp73,
	movl	$.LC17, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
.L55:
	.loc 1 209 0 is_stmt 1
	cmpl	$3, -20(%rbp)	#, fd
	jle	.L56	#,
	.loc 1 210 0
	movq	stderr(%rip), %rax	# stderr, stderr.20
	movl	-20(%rbp), %edx	# fd, tmp74
	movl	$.LC12, %esi	#,
	movq	%rax, %rdi	# stderr.20,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 211 0
	movl	$0, %edi	#,
	call	exit	#
.L56:
	.loc 1 213 0
	movl	-20(%rbp), %eax	# fd, tmp76
	movslq	%eax, %rdx	# tmp76, tmp75
	movq	%rdx, %rax	# tmp75, tmp77
	addq	%rax, %rax	# tmp77
	addq	%rdx, %rax	# tmp75, tmp77
	salq	$3, %rax	#, tmp78
	addq	$spec_fd, %rax	#, tmp79
	movl	8(%rax), %ecx	# spec_fd[fd_4(D)].pos, D.4098
	movl	-20(%rbp), %eax	# fd, tmp81
	movslq	%eax, %rdx	# tmp81, tmp80
	movq	%rdx, %rax	# tmp80, tmp82
	addq	%rax, %rax	# tmp82
	addq	%rdx, %rax	# tmp80, tmp82
	salq	$3, %rax	#, tmp83
	addq	$spec_fd, %rax	#, tmp84
	movl	4(%rax), %eax	# spec_fd[fd_4(D)].len, D.4098
	cmpl	%eax, %ecx	# D.4098, D.4098
	jl	.L57	#,
	.loc 1 214 0
	movl	dbglvl(%rip), %eax	# dbglvl, dbglvl.21
	cmpl	$4, %eax	#, dbglvl.21
	jle	.L58	#,
	.loc 1 214 0 is_stmt 0 discriminator 1
	movl	$.LC13, %edi	#,
	call	puts	#
.L58:
	.loc 1 215 0 is_stmt 1
	movl	$-1, %eax	#, D.4098
	jmp	.L59	#
.L57:
	.loc 1 217 0
	movl	-20(%rbp), %eax	# fd, tmp86
	movslq	%eax, %rdx	# tmp86, tmp85
	movq	%rdx, %rax	# tmp85, tmp87
	addq	%rax, %rax	# tmp87
	addq	%rdx, %rax	# tmp85, tmp87
	salq	$3, %rax	#, tmp88
	addq	$spec_fd+16, %rax	#, tmp89
	movq	(%rax), %rdi	# spec_fd[fd_4(D)].buf, D.4099
	movl	-20(%rbp), %eax	# fd, tmp91
	movslq	%eax, %rdx	# tmp91, tmp90
	movq	%rdx, %rax	# tmp90, tmp92
	addq	%rax, %rax	# tmp92
	addq	%rdx, %rax	# tmp90, tmp92
	salq	$3, %rax	#, tmp93
	addq	$spec_fd, %rax	#, tmp94
	movl	8(%rax), %edx	# spec_fd[fd_4(D)].pos, D.4098
	leal	1(%rdx), %esi	#, D.4098
	movl	-20(%rbp), %eax	# fd, tmp96
	movslq	%eax, %rcx	# tmp96, tmp95
	movq	%rcx, %rax	# tmp95, tmp97
	addq	%rax, %rax	# tmp97
	addq	%rcx, %rax	# tmp95, tmp97
	salq	$3, %rax	#, tmp98
	addq	$spec_fd, %rax	#, tmp99
	movl	%esi, 8(%rax)	# D.4098, spec_fd[fd_4(D)].pos
	movslq	%edx, %rax	# D.4098, D.4100
	addq	%rdi, %rax	# D.4099, D.4099
	movzbl	(%rax), %eax	# *_15, D.4101
	movzbl	%al, %eax	# D.4101, tmp100
	movl	%eax, -4(%rbp)	# tmp100, rc
	.loc 1 218 0
	movl	dbglvl(%rip), %eax	# dbglvl, dbglvl.22
	cmpl	$4, %eax	#, dbglvl.22
	jle	.L60	#,
	.loc 1 218 0 is_stmt 0 discriminator 1
	movl	-4(%rbp), %eax	# rc, tmp101
	movl	%eax, %esi	# tmp101,
	movl	$.LC14, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
.L60:
	.loc 1 219 0 is_stmt 1
	movl	-4(%rbp), %eax	# rc, D.4098
.L59:
	.loc 1 220 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	spec_getc, .-spec_getc
	.section	.rodata
.LC18:
	.string	"spec_ungetc: %d = "
.LC19:
	.string	"spec_ungetc: pos %d <= 0\n"
	.align 8
.LC20:
	.string	"spec_ungetc: can't unget something that wasn't what was in the buffer!\n"
	.text
	.globl	spec_ungetc
	.type	spec_ungetc, @function
spec_ungetc:
.LFB9:
	.loc 1 221 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	%edi, %eax	# ch, tmp75
	movl	%esi, -24(%rbp)	# fd, fd
	movb	%al, -20(%rbp)	# tmp75, ch
	.loc 1 222 0
	movl	$0, -4(%rbp)	#, rc
	.loc 1 223 0
	movl	dbglvl(%rip), %eax	# dbglvl, dbglvl.23
	cmpl	$4, %eax	#, dbglvl.23
	jle	.L62	#,
	.loc 1 223 0 is_stmt 0 discriminator 1
	movl	-24(%rbp), %eax	# fd, tmp76
	movl	%eax, %esi	# tmp76,
	movl	$.LC18, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
.L62:
	.loc 1 224 0 is_stmt 1
	cmpl	$3, -24(%rbp)	#, fd
	jle	.L63	#,
	.loc 1 225 0
	movq	stderr(%rip), %rax	# stderr, stderr.24
	movl	-24(%rbp), %edx	# fd, tmp77
	movl	$.LC12, %esi	#,
	movq	%rax, %rdi	# stderr.24,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 226 0
	movl	$0, %edi	#,
	call	exit	#
.L63:
	.loc 1 228 0
	movl	-24(%rbp), %eax	# fd, tmp79
	movslq	%eax, %rdx	# tmp79, tmp78
	movq	%rdx, %rax	# tmp78, tmp80
	addq	%rax, %rax	# tmp80
	addq	%rdx, %rax	# tmp78, tmp80
	salq	$3, %rax	#, tmp81
	addq	$spec_fd, %rax	#, tmp82
	movl	8(%rax), %eax	# spec_fd[fd_3(D)].pos, D.4103
	testl	%eax, %eax	# D.4103
	jg	.L64	#,
	.loc 1 229 0
	movl	-24(%rbp), %eax	# fd, tmp84
	movslq	%eax, %rdx	# tmp84, tmp83
	movq	%rdx, %rax	# tmp83, tmp85
	addq	%rax, %rax	# tmp85
	addq	%rdx, %rax	# tmp83, tmp85
	salq	$3, %rax	#, tmp86
	addq	$spec_fd, %rax	#, tmp87
	movl	8(%rax), %edx	# spec_fd[fd_3(D)].pos, D.4103
	movq	stderr(%rip), %rax	# stderr, stderr.25
	movl	$.LC19, %esi	#,
	movq	%rax, %rdi	# stderr.25,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 230 0
	movl	$0, %edi	#,
	call	exit	#
.L64:
	.loc 1 232 0
	movl	-24(%rbp), %eax	# fd, tmp89
	movslq	%eax, %rdx	# tmp89, tmp88
	movq	%rdx, %rax	# tmp88, tmp90
	addq	%rax, %rax	# tmp90
	addq	%rdx, %rax	# tmp88, tmp90
	salq	$3, %rax	#, tmp91
	addq	$spec_fd+16, %rax	#, tmp92
	movq	(%rax), %rcx	# spec_fd[fd_3(D)].buf, D.4104
	movl	-24(%rbp), %eax	# fd, tmp94
	movslq	%eax, %rdx	# tmp94, tmp93
	movq	%rdx, %rax	# tmp93, tmp95
	addq	%rax, %rax	# tmp95
	addq	%rdx, %rax	# tmp93, tmp95
	salq	$3, %rax	#, tmp96
	addq	$spec_fd, %rax	#, tmp97
	movl	8(%rax), %eax	# spec_fd[fd_3(D)].pos, D.4103
	leal	-1(%rax), %esi	#, D.4103
	movl	-24(%rbp), %eax	# fd, tmp99
	movslq	%eax, %rdx	# tmp99, tmp98
	movq	%rdx, %rax	# tmp98, tmp100
	addq	%rax, %rax	# tmp100
	addq	%rdx, %rax	# tmp98, tmp100
	salq	$3, %rax	#, tmp101
	addq	$spec_fd, %rax	#, tmp102
	movl	%esi, 8(%rax)	# D.4103, spec_fd[fd_3(D)].pos
	movl	-24(%rbp), %eax	# fd, tmp104
	movslq	%eax, %rdx	# tmp104, tmp103
	movq	%rdx, %rax	# tmp103, tmp105
	addq	%rax, %rax	# tmp105
	addq	%rdx, %rax	# tmp103, tmp105
	salq	$3, %rax	#, tmp106
	addq	$spec_fd, %rax	#, tmp107
	movl	8(%rax), %eax	# spec_fd[fd_3(D)].pos, D.4103
	cltq
	addq	%rcx, %rax	# D.4104, D.4104
	movzbl	(%rax), %eax	# *_13, D.4106
	cmpb	-20(%rbp), %al	# ch, D.4106
	je	.L65	#,
	.loc 1 233 0
	movq	stderr(%rip), %rax	# stderr, stderr.26
	movq	%rax, %rcx	# stderr.26,
	movl	$71, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC20, %edi	#,
	call	fwrite	#
	.loc 1 234 0
	movl	$0, %edi	#,
	call	exit	#
.L65:
	.loc 1 236 0
	movl	dbglvl(%rip), %eax	# dbglvl, dbglvl.27
	cmpl	$4, %eax	#, dbglvl.27
	jle	.L66	#,
	.loc 1 236 0 is_stmt 0 discriminator 1
	movl	-4(%rbp), %eax	# rc, tmp108
	movl	%eax, %esi	# tmp108,
	movl	$.LC14, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
.L66:
	.loc 1 237 0 is_stmt 1
	movzbl	-20(%rbp), %eax	# ch, D.4103
	.loc 1 238 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	spec_ungetc, .-spec_ungetc
	.globl	spec_rewind
	.type	spec_rewind, @function
spec_rewind:
.LFB10:
	.loc 1 239 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)	# fd, fd
	.loc 1 240 0
	movl	-4(%rbp), %eax	# fd, tmp62
	movslq	%eax, %rdx	# tmp62, tmp61
	movq	%rdx, %rax	# tmp61, tmp63
	addq	%rax, %rax	# tmp63
	addq	%rdx, %rax	# tmp61, tmp63
	salq	$3, %rax	#, tmp64
	addq	$spec_fd, %rax	#, tmp65
	movl	$0, 8(%rax)	#, spec_fd[fd_1(D)].pos
	.loc 1 241 0
	movl	$0, %eax	#, D.4110
	.loc 1 242 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	spec_rewind, .-spec_rewind
	.globl	spec_reset
	.type	spec_reset, @function
spec_reset:
.LFB11:
	.loc 1 243 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movl	%edi, -4(%rbp)	# fd, fd
	.loc 1 244 0
	movl	-4(%rbp), %eax	# fd, tmp66
	movslq	%eax, %rdx	# tmp66, tmp65
	movq	%rdx, %rax	# tmp65, tmp67
	addq	%rax, %rax	# tmp67
	addq	%rdx, %rax	# tmp65, tmp67
	salq	$3, %rax	#, tmp68
	addq	$spec_fd, %rax	#, tmp69
	movl	4(%rax), %eax	# spec_fd[fd_1(D)].len, D.4111
	movslq	%eax, %rcx	# D.4111, D.4112
	movl	-4(%rbp), %eax	# fd, tmp71
	movslq	%eax, %rdx	# tmp71, tmp70
	movq	%rdx, %rax	# tmp70, tmp72
	addq	%rax, %rax	# tmp72
	addq	%rdx, %rax	# tmp70, tmp72
	salq	$3, %rax	#, tmp73
	addq	$spec_fd+16, %rax	#, tmp74
	movq	(%rax), %rax	# spec_fd[fd_1(D)].buf, D.4113
	movq	%rcx, %rdx	# D.4112,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.4113,
	call	memset	#
	.loc 1 245 0
	movl	-4(%rbp), %eax	# fd, tmp76
	movslq	%eax, %rdx	# tmp76, tmp75
	movq	%rdx, %rax	# tmp75, tmp77
	addq	%rax, %rax	# tmp77
	addq	%rdx, %rax	# tmp75, tmp77
	salq	$3, %rax	#, tmp78
	addq	$spec_fd, %rax	#, tmp79
	movl	$0, 4(%rax)	#, spec_fd[fd_1(D)].len
	movl	-4(%rbp), %eax	# fd, tmp81
	movslq	%eax, %rdx	# tmp81, tmp80
	movq	%rdx, %rax	# tmp80, tmp82
	addq	%rax, %rax	# tmp82
	addq	%rdx, %rax	# tmp80, tmp82
	salq	$3, %rax	#, tmp83
	addq	$spec_fd, %rax	#, tmp84
	movl	4(%rax), %ecx	# spec_fd[fd_1(D)].len, D.4111
	movl	-4(%rbp), %eax	# fd, tmp86
	movslq	%eax, %rdx	# tmp86, tmp85
	movq	%rdx, %rax	# tmp85, tmp87
	addq	%rax, %rax	# tmp87
	addq	%rdx, %rax	# tmp85, tmp87
	salq	$3, %rax	#, tmp88
	addq	$spec_fd, %rax	#, tmp89
	movl	%ecx, 8(%rax)	# D.4111, spec_fd[fd_1(D)].pos
	.loc 1 246 0
	movl	$0, %eax	#, D.4111
	.loc 1 247 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	spec_reset, .-spec_reset
	.section	.rodata
.LC21:
	.string	"spec_write: %d, %p, %d = "
	.align 8
.LC22:
	.string	"spec_write: fd=%d, > MAX_SPEC_FD!\n"
	.text
	.globl	spec_write
	.type	spec_write, @function
spec_write:
.LFB12:
	.loc 1 249 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movl	%edi, -4(%rbp)	# fd, fd
	movq	%rsi, -16(%rbp)	# buf, buf
	movl	%edx, -8(%rbp)	# size, size
	.loc 1 250 0
	movl	dbglvl(%rip), %eax	# dbglvl, dbglvl.28
	cmpl	$4, %eax	#, dbglvl.28
	jle	.L73	#,
	.loc 1 250 0 is_stmt 0 discriminator 1
	movl	-8(%rbp), %ecx	# size, tmp73
	movq	-16(%rbp), %rdx	# buf, tmp74
	movl	-4(%rbp), %eax	# fd, tmp75
	movl	%eax, %esi	# tmp75,
	movl	$.LC21, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
.L73:
	.loc 1 251 0 is_stmt 1
	cmpl	$3, -4(%rbp)	#, fd
	jle	.L74	#,
	.loc 1 252 0
	movq	stderr(%rip), %rax	# stderr, stderr.29
	movl	-4(%rbp), %edx	# fd, tmp76
	movl	$.LC22, %esi	#,
	movq	%rax, %rdi	# stderr.29,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 253 0
	movl	$0, %edi	#,
	call	exit	#
.L74:
	.loc 1 255 0
	movl	-8(%rbp), %eax	# size, tmp77
	movslq	%eax, %rcx	# tmp77, D.4114
	movl	-4(%rbp), %eax	# fd, tmp79
	movslq	%eax, %rdx	# tmp79, tmp78
	movq	%rdx, %rax	# tmp78, tmp80
	addq	%rax, %rax	# tmp80
	addq	%rdx, %rax	# tmp78, tmp80
	salq	$3, %rax	#, tmp81
	addq	$spec_fd+16, %rax	#, tmp82
	movq	(%rax), %rsi	# spec_fd[fd_2(D)].buf, D.4115
	movl	-4(%rbp), %eax	# fd, tmp84
	movslq	%eax, %rdx	# tmp84, tmp83
	movq	%rdx, %rax	# tmp83, tmp85
	addq	%rax, %rax	# tmp85
	addq	%rdx, %rax	# tmp83, tmp85
	salq	$3, %rax	#, tmp86
	addq	$spec_fd, %rax	#, tmp87
	movl	8(%rax), %eax	# spec_fd[fd_2(D)].pos, D.4116
	cltq
	leaq	(%rsi,%rax), %rdi	#, D.4115
	movq	-16(%rbp), %rax	# buf, tmp88
	movq	%rcx, %rdx	# D.4114,
	movq	%rax, %rsi	# tmp88,
	call	memcpy	#
	.loc 1 256 0
	movl	-4(%rbp), %eax	# fd, tmp90
	movslq	%eax, %rdx	# tmp90, tmp89
	movq	%rdx, %rax	# tmp89, tmp91
	addq	%rax, %rax	# tmp91
	addq	%rdx, %rax	# tmp89, tmp91
	salq	$3, %rax	#, tmp92
	addq	$spec_fd, %rax	#, tmp93
	movl	4(%rax), %edx	# spec_fd[fd_2(D)].len, D.4116
	movl	-8(%rbp), %eax	# size, tmp94
	leal	(%rdx,%rax), %ecx	#, D.4116
	movl	-4(%rbp), %eax	# fd, tmp96
	movslq	%eax, %rdx	# tmp96, tmp95
	movq	%rdx, %rax	# tmp95, tmp97
	addq	%rax, %rax	# tmp97
	addq	%rdx, %rax	# tmp95, tmp97
	salq	$3, %rax	#, tmp98
	addq	$spec_fd, %rax	#, tmp99
	movl	%ecx, 4(%rax)	# D.4116, spec_fd[fd_2(D)].len
	.loc 1 257 0
	movl	-4(%rbp), %eax	# fd, tmp101
	movslq	%eax, %rdx	# tmp101, tmp100
	movq	%rdx, %rax	# tmp100, tmp102
	addq	%rax, %rax	# tmp102
	addq	%rdx, %rax	# tmp100, tmp102
	salq	$3, %rax	#, tmp103
	addq	$spec_fd, %rax	#, tmp104
	movl	8(%rax), %edx	# spec_fd[fd_2(D)].pos, D.4116
	movl	-8(%rbp), %eax	# size, tmp105
	leal	(%rdx,%rax), %ecx	#, D.4116
	movl	-4(%rbp), %eax	# fd, tmp107
	movslq	%eax, %rdx	# tmp107, tmp106
	movq	%rdx, %rax	# tmp106, tmp108
	addq	%rax, %rax	# tmp108
	addq	%rdx, %rax	# tmp106, tmp108
	salq	$3, %rax	#, tmp109
	addq	$spec_fd, %rax	#, tmp110
	movl	%ecx, 8(%rax)	# D.4116, spec_fd[fd_2(D)].pos
	.loc 1 258 0
	movl	dbglvl(%rip), %eax	# dbglvl, dbglvl.30
	cmpl	$4, %eax	#, dbglvl.30
	jle	.L75	#,
	.loc 1 258 0 is_stmt 0 discriminator 1
	movl	-8(%rbp), %eax	# size, tmp111
	movl	%eax, %esi	# tmp111,
	movl	$.LC14, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
.L75:
	.loc 1 259 0 is_stmt 1
	movl	-8(%rbp), %eax	# size, D.4116
	.loc 1 260 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	spec_write, .-spec_write
	.section	.rodata
	.align 8
.LC23:
	.string	"spec_fwrite: %p, %d, %d, %d = "
	.align 8
.LC24:
	.string	"spec_fwrite: fd=%d, > MAX_SPEC_FD!\n"
	.text
	.globl	spec_fwrite
	.type	spec_fwrite, @function
spec_fwrite:
.LFB13:
	.loc 1 261 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -8(%rbp)	# buf, buf
	movl	%esi, -12(%rbp)	# size, size
	movl	%edx, -16(%rbp)	# num, num
	movl	%ecx, -20(%rbp)	# fd, fd
	.loc 1 262 0
	movl	dbglvl(%rip), %eax	# dbglvl, dbglvl.31
	cmpl	$4, %eax	#, dbglvl.31
	jle	.L78	#,
	.loc 1 262 0 is_stmt 0 discriminator 1
	movl	-20(%rbp), %esi	# fd, tmp76
	movl	-16(%rbp), %ecx	# num, tmp77
	movl	-12(%rbp), %edx	# size, tmp78
	movq	-8(%rbp), %rax	# buf, tmp79
	movl	%esi, %r8d	# tmp76,
	movq	%rax, %rsi	# tmp79,
	movl	$.LC23, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
.L78:
	.loc 1 263 0 is_stmt 1
	cmpl	$3, -20(%rbp)	#, fd
	jle	.L79	#,
	.loc 1 264 0
	movq	stderr(%rip), %rax	# stderr, stderr.32
	movl	-20(%rbp), %edx	# fd, tmp80
	movl	$.LC24, %esi	#,
	movq	%rax, %rdi	# stderr.32,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 265 0
	movl	$0, %edi	#,
	call	exit	#
.L79:
	.loc 1 267 0
	movl	-12(%rbp), %eax	# size, tmp81
	imull	-16(%rbp), %eax	# num, D.4120
	movslq	%eax, %rcx	# D.4120, D.4121
	movl	-20(%rbp), %eax	# fd, tmp83
	movslq	%eax, %rdx	# tmp83, tmp82
	movq	%rdx, %rax	# tmp82, tmp84
	addq	%rax, %rax	# tmp84
	addq	%rdx, %rax	# tmp82, tmp84
	salq	$3, %rax	#, tmp85
	addq	$spec_fd+16, %rax	#, tmp86
	movq	(%rax), %rsi	# spec_fd[fd_5(D)].buf, D.4122
	movl	-20(%rbp), %eax	# fd, tmp88
	movslq	%eax, %rdx	# tmp88, tmp87
	movq	%rdx, %rax	# tmp87, tmp89
	addq	%rax, %rax	# tmp89
	addq	%rdx, %rax	# tmp87, tmp89
	salq	$3, %rax	#, tmp90
	addq	$spec_fd, %rax	#, tmp91
	movl	8(%rax), %eax	# spec_fd[fd_5(D)].pos, D.4120
	cltq
	leaq	(%rsi,%rax), %rdi	#, D.4122
	movq	-8(%rbp), %rax	# buf, tmp92
	movq	%rcx, %rdx	# D.4121,
	movq	%rax, %rsi	# tmp92,
	call	memcpy	#
	.loc 1 268 0
	movl	-20(%rbp), %eax	# fd, tmp94
	movslq	%eax, %rdx	# tmp94, tmp93
	movq	%rdx, %rax	# tmp93, tmp95
	addq	%rax, %rax	# tmp95
	addq	%rdx, %rax	# tmp93, tmp95
	salq	$3, %rax	#, tmp96
	addq	$spec_fd, %rax	#, tmp97
	movl	4(%rax), %edx	# spec_fd[fd_5(D)].len, D.4120
	movl	-12(%rbp), %eax	# size, tmp98
	imull	-16(%rbp), %eax	# num, D.4120
	leal	(%rdx,%rax), %ecx	#, D.4120
	movl	-20(%rbp), %eax	# fd, tmp100
	movslq	%eax, %rdx	# tmp100, tmp99
	movq	%rdx, %rax	# tmp99, tmp101
	addq	%rax, %rax	# tmp101
	addq	%rdx, %rax	# tmp99, tmp101
	salq	$3, %rax	#, tmp102
	addq	$spec_fd, %rax	#, tmp103
	movl	%ecx, 4(%rax)	# D.4120, spec_fd[fd_5(D)].len
	.loc 1 269 0
	movl	-20(%rbp), %eax	# fd, tmp105
	movslq	%eax, %rdx	# tmp105, tmp104
	movq	%rdx, %rax	# tmp104, tmp106
	addq	%rax, %rax	# tmp106
	addq	%rdx, %rax	# tmp104, tmp106
	salq	$3, %rax	#, tmp107
	addq	$spec_fd, %rax	#, tmp108
	movl	8(%rax), %edx	# spec_fd[fd_5(D)].pos, D.4120
	movl	-12(%rbp), %eax	# size, tmp109
	imull	-16(%rbp), %eax	# num, D.4120
	leal	(%rdx,%rax), %ecx	#, D.4120
	movl	-20(%rbp), %eax	# fd, tmp111
	movslq	%eax, %rdx	# tmp111, tmp110
	movq	%rdx, %rax	# tmp110, tmp112
	addq	%rax, %rax	# tmp112
	addq	%rdx, %rax	# tmp110, tmp112
	salq	$3, %rax	#, tmp113
	addq	$spec_fd, %rax	#, tmp114
	movl	%ecx, 8(%rax)	# D.4120, spec_fd[fd_5(D)].pos
	.loc 1 270 0
	movl	dbglvl(%rip), %eax	# dbglvl, dbglvl.33
	cmpl	$4, %eax	#, dbglvl.33
	jle	.L80	#,
	.loc 1 270 0 is_stmt 0 discriminator 1
	movl	-16(%rbp), %eax	# num, tmp115
	movl	%eax, %esi	# tmp115,
	movl	$.LC14, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
.L80:
	.loc 1 271 0 is_stmt 1
	movl	-16(%rbp), %eax	# num, D.4120
	.loc 1 272 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	spec_fwrite, .-spec_fwrite
	.section	.rodata
.LC25:
	.string	"spec_putc: %d, %d = "
	.text
	.globl	spec_putc
	.type	spec_putc, @function
spec_putc:
.LFB14:
	.loc 1 273 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movl	%edi, %eax	# ch, tmp71
	movl	%esi, -8(%rbp)	# fd, fd
	movb	%al, -4(%rbp)	# tmp71, ch
	.loc 1 274 0
	movl	dbglvl(%rip), %eax	# dbglvl, dbglvl.34
	cmpl	$4, %eax	#, dbglvl.34
	jle	.L83	#,
	.loc 1 274 0 is_stmt 0 discriminator 1
	movzbl	-4(%rbp), %eax	# ch, D.4126
	movl	-8(%rbp), %edx	# fd, tmp72
	movl	%eax, %esi	# D.4126,
	movl	$.LC25, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
.L83:
	.loc 1 275 0 is_stmt 1
	cmpl	$3, -8(%rbp)	#, fd
	jle	.L84	#,
	.loc 1 276 0
	movq	stderr(%rip), %rax	# stderr, stderr.35
	movl	-8(%rbp), %edx	# fd, tmp73
	movl	$.LC22, %esi	#,
	movq	%rax, %rdi	# stderr.35,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 277 0
	movl	$0, %edi	#,
	call	exit	#
.L84:
	.loc 1 279 0
	movl	-8(%rbp), %eax	# fd, tmp75
	movslq	%eax, %rdx	# tmp75, tmp74
	movq	%rdx, %rax	# tmp74, tmp76
	addq	%rax, %rax	# tmp76
	addq	%rdx, %rax	# tmp74, tmp76
	salq	$3, %rax	#, tmp77
	addq	$spec_fd+16, %rax	#, tmp78
	movq	(%rax), %rdi	# spec_fd[fd_4(D)].buf, D.4127
	movl	-8(%rbp), %eax	# fd, tmp80
	movslq	%eax, %rdx	# tmp80, tmp79
	movq	%rdx, %rax	# tmp79, tmp81
	addq	%rax, %rax	# tmp81
	addq	%rdx, %rax	# tmp79, tmp81
	salq	$3, %rax	#, tmp82
	addq	$spec_fd, %rax	#, tmp83
	movl	8(%rax), %edx	# spec_fd[fd_4(D)].pos, D.4126
	leal	1(%rdx), %esi	#, D.4126
	movl	-8(%rbp), %eax	# fd, tmp85
	movslq	%eax, %rcx	# tmp85, tmp84
	movq	%rcx, %rax	# tmp84, tmp86
	addq	%rax, %rax	# tmp86
	addq	%rcx, %rax	# tmp84, tmp86
	salq	$3, %rax	#, tmp87
	addq	$spec_fd, %rax	#, tmp88
	movl	%esi, 8(%rax)	# D.4126, spec_fd[fd_4(D)].pos
	movslq	%edx, %rax	# D.4126, D.4128
	leaq	(%rdi,%rax), %rdx	#, D.4127
	movzbl	-4(%rbp), %eax	# ch, tmp89
	movb	%al, (%rdx)	# tmp89, *_11
	.loc 1 280 0
	movl	-8(%rbp), %eax	# fd, tmp91
	movslq	%eax, %rdx	# tmp91, tmp90
	movq	%rdx, %rax	# tmp90, tmp92
	addq	%rax, %rax	# tmp92
	addq	%rdx, %rax	# tmp90, tmp92
	salq	$3, %rax	#, tmp93
	addq	$spec_fd, %rax	#, tmp94
	movl	4(%rax), %eax	# spec_fd[fd_4(D)].len, D.4126
	leal	1(%rax), %ecx	#, D.4126
	movl	-8(%rbp), %eax	# fd, tmp96
	movslq	%eax, %rdx	# tmp96, tmp95
	movq	%rdx, %rax	# tmp95, tmp97
	addq	%rax, %rax	# tmp97
	addq	%rdx, %rax	# tmp95, tmp97
	salq	$3, %rax	#, tmp98
	addq	$spec_fd, %rax	#, tmp99
	movl	%ecx, 4(%rax)	# D.4126, spec_fd[fd_4(D)].len
	.loc 1 281 0
	movzbl	-4(%rbp), %eax	# ch, D.4126
	.loc 1 282 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	spec_putc, .-spec_putc
	.section	.rodata
.LC26:
	.string	"input.combined"
.LC27:
	.string	"Loading Input Data"
	.align 8
.LC28:
	.string	"Input data %d bytes in length\n"
.LC29:
	.string	"main: Error mallocing memory!"
	.align 8
.LC30:
	.string	"Compressing Input Data, level %d\n"
	.align 8
.LC31:
	.string	"Compressed data %d bytes in length\n"
.LC32:
	.string	"Uncompressing Data"
	.align 8
.LC33:
	.string	"Uncompressed data %d bytes in length\n"
	.align 8
.LC34:
	.string	"Tested %dMB buffer: Miscompared!!\n"
	.align 8
.LC35:
	.string	"Uncompressed data compared correctly"
.LC36:
	.string	"Tested %dMB buffer: OK!\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB15:
	.loc 1 286 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movl	%edi, -36(%rbp)	# argc, argc
	movq	%rsi, -48(%rbp)	# argv, argv
	.loc 1 288 0
	movl	$64, -24(%rbp)	#, input_size
	.loc 1 289 0
	movq	$.LC26, -16(%rbp)	#, input_name
	.loc 1 291 0
	movq	$10, seedi(%rip)	#, seedi
	.loc 1 293 0
	cmpl	$1, -36(%rbp)	#, argc
	jle	.L87	#,
	.loc 1 293 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# argv, tmp101
	movq	8(%rax), %rax	# MEM[(char * *)argv_10(D) + 8B], tmp102
	movq	%rax, -16(%rbp)	# tmp102, input_name
.L87:
	.loc 1 294 0 is_stmt 1
	cmpl	$2, -36(%rbp)	#, argc
	jle	.L88	#,
	.loc 1 294 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# argv, tmp103
	addq	$16, %rax	#, D.4130
	movq	(%rax), %rax	# *_12, D.4131
	movq	%rax, %rdi	# D.4131,
	call	atoi	#
	movl	%eax, -24(%rbp)	# tmp104, input_size
.L88:
	.loc 1 295 0 is_stmt 1
	cmpl	$3, -36(%rbp)	#, argc
	jle	.L89	#,
	.loc 1 296 0
	movq	-48(%rbp), %rax	# argv, tmp105
	addq	$24, %rax	#, D.4130
	movq	(%rax), %rax	# *_15, D.4131
	movq	%rax, %rdi	# D.4131,
	call	atoi	#
	movl	%eax, -20(%rbp)	# tmp106, compressed_size
	jmp	.L90	#
.L89:
	.loc 1 298 0
	movl	-24(%rbp), %eax	# input_size, tmp107
	movl	%eax, -20(%rbp)	# tmp107, compressed_size
.L90:
	.loc 1 300 0
	movl	-24(%rbp), %eax	# input_size, tmp108
	sall	$20, %eax	#, D.4132
	movl	%eax, spec_fd(%rip)	# D.4132, spec_fd[0].limit
	.loc 1 301 0
	movl	-20(%rbp), %eax	# compressed_size, tmp109
	sall	$20, %eax	#, D.4132
	movl	%eax, spec_fd+24(%rip)	# D.4132, spec_fd[1].limit
	.loc 1 302 0
	movl	-24(%rbp), %eax	# input_size, tmp110
	sall	$20, %eax	#, D.4132
	movl	%eax, spec_fd+48(%rip)	# D.4132, spec_fd[2].limit
	.loc 1 303 0
	movl	$0, %eax	#,
	call	spec_init	#
	.loc 1 305 0
	movl	$0, %eax	#,
	call	debug_time	#
	.loc 1 306 0
	movl	dbglvl(%rip), %eax	# dbglvl, dbglvl.36
	cmpl	$2, %eax	#, dbglvl.36
	jle	.L91	#,
	.loc 1 306 0 is_stmt 0 discriminator 1
	movl	$.LC27, %edi	#,
	call	puts	#
.L91:
	.loc 1 307 0 is_stmt 1
	movl	-24(%rbp), %eax	# input_size, tmp111
	sall	$20, %eax	#, D.4132
	movl	%eax, %edx	# D.4132, D.4132
	movq	-16(%rbp), %rax	# input_name, tmp112
	movq	%rax, %rsi	# tmp112,
	movl	$0, %edi	#,
	call	spec_load	#
	.loc 1 308 0
	movl	dbglvl(%rip), %eax	# dbglvl, dbglvl.37
	cmpl	$3, %eax	#, dbglvl.37
	jle	.L92	#,
	.loc 1 308 0 is_stmt 0 discriminator 1
	movl	spec_fd+4(%rip), %eax	# spec_fd[0].len, D.4132
	movl	%eax, %esi	# D.4132,
	movl	$.LC28, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
.L92:
	.loc 1 310 0 is_stmt 1
	movl	-24(%rbp), %eax	# input_size, tmp113
	sall	$20, %eax	#, D.4132
	leal	1023(%rax), %edx	#, tmp115
	testl	%eax, %eax	# tmp114
	cmovs	%edx, %eax	# tmp115,, tmp114
	sarl	$10, %eax	#, tmp116
	cltq
	movq	%rax, %rdi	# D.4133,
	call	malloc	#
	movq	%rax, -8(%rbp)	# tmp117, validate_array
	.loc 1 311 0
	cmpq	$0, -8(%rbp)	#, validate_array
	jne	.L93	#,
	.loc 1 312 0
	movl	$.LC29, %edi	#,
	call	puts	#
	.loc 1 313 0
	movl	$0, %edi	#,
	call	exit	#
.L93:
	.loc 1 316 0
	movl	$0, -32(%rbp)	#, i
	jmp	.L94	#
.L95:
	.loc 1 317 0 discriminator 2
	movl	-32(%rbp), %eax	# i, tmp118
	movslq	%eax, %rdx	# tmp118, D.4134
	movq	-8(%rbp), %rax	# validate_array, tmp119
	addq	%rax, %rdx	# tmp119, D.4135
	movq	spec_fd+16(%rip), %rcx	# spec_fd[0].buf, D.4135
	movl	-32(%rbp), %eax	# i, tmp120
	imull	$1027, %eax, %eax	#, tmp120, D.4132
	cltq
	addq	%rcx, %rax	# D.4135, D.4135
	movzbl	(%rax), %eax	# *_38, D.4136
	movb	%al, (%rdx)	# D.4136, *_34
	.loc 1 316 0 discriminator 2
	addl	$1, -32(%rbp)	#, i
.L94:
	.loc 1 316 0 is_stmt 0 discriminator 1
	movl	-32(%rbp), %eax	# i, tmp121
	imull	$1027, %eax, %eax	#, tmp121, D.4132
	movl	-24(%rbp), %edx	# input_size, tmp122
	sall	$20, %edx	#, D.4132
	cmpl	%edx, %eax	# D.4132, D.4132
	jl	.L95	#,
	.loc 1 327 0 is_stmt 1
	movl	$0, %eax	#,
	call	spec_initbufs	#
	.loc 1 329 0
	movl	$5, -28(%rbp)	#, level
	jmp	.L96	#
.L105:
	.loc 1 330 0
	movl	$0, %eax	#,
	call	debug_time	#
	.loc 1 331 0
	movl	dbglvl(%rip), %eax	# dbglvl, dbglvl.38
	cmpl	$2, %eax	#, dbglvl.38
	jle	.L97	#,
	.loc 1 331 0 is_stmt 0 discriminator 1
	movl	-28(%rbp), %eax	# level, tmp123
	movl	%eax, %esi	# tmp123,
	movl	$.LC30, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
.L97:
	.loc 1 333 0 is_stmt 1
	movl	-28(%rbp), %eax	# level, tmp124
	movl	%eax, %edx	# tmp124,
	movl	$1, %esi	#,
	movl	$0, %edi	#,
	call	spec_compress	#
	.loc 1 335 0
	movl	$0, %eax	#,
	call	debug_time	#
	.loc 1 336 0
	movl	dbglvl(%rip), %eax	# dbglvl, dbglvl.39
	cmpl	$3, %eax	#, dbglvl.39
	jle	.L98	#,
	.loc 1 336 0 is_stmt 0 discriminator 1
	movl	spec_fd+28(%rip), %eax	# spec_fd[1].len, D.4132
	movl	%eax, %esi	# D.4132,
	movl	$.LC31, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
.L98:
	.loc 1 348 0 is_stmt 1
	movl	$0, %edi	#,
	call	spec_reset	#
	.loc 1 349 0
	movl	$1, %edi	#,
	call	spec_rewind	#
	.loc 1 351 0
	movl	$0, %eax	#,
	call	debug_time	#
	.loc 1 352 0
	movl	dbglvl(%rip), %eax	# dbglvl, dbglvl.40
	cmpl	$2, %eax	#, dbglvl.40
	jle	.L99	#,
	.loc 1 352 0 is_stmt 0 discriminator 1
	movl	$.LC32, %edi	#,
	call	puts	#
.L99:
	.loc 1 353 0 is_stmt 1
	movl	-28(%rbp), %eax	# level, tmp125
	movl	%eax, %edx	# tmp125,
	movl	$0, %esi	#,
	movl	$1, %edi	#,
	call	spec_uncompress	#
	.loc 1 354 0
	movl	$0, %eax	#,
	call	debug_time	#
	.loc 1 355 0
	movl	dbglvl(%rip), %eax	# dbglvl, dbglvl.41
	cmpl	$3, %eax	#, dbglvl.41
	jle	.L100	#,
	.loc 1 355 0 is_stmt 0 discriminator 1
	movl	spec_fd+4(%rip), %eax	# spec_fd[0].len, D.4132
	movl	%eax, %esi	# D.4132,
	movl	$.LC33, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
.L100:
	.loc 1 367 0 is_stmt 1
	movl	$0, -32(%rbp)	#, i
	jmp	.L101	#
.L103:
	.loc 1 368 0
	movl	-32(%rbp), %eax	# i, tmp126
	movslq	%eax, %rdx	# tmp126, D.4134
	movq	-8(%rbp), %rax	# validate_array, tmp127
	addq	%rdx, %rax	# D.4134, D.4135
	movzbl	(%rax), %edx	# *_52, D.4136
	movq	spec_fd+16(%rip), %rcx	# spec_fd[0].buf, D.4135
	movl	-32(%rbp), %eax	# i, tmp128
	imull	$1027, %eax, %eax	#, tmp128, D.4132
	cltq
	addq	%rcx, %rax	# D.4135, D.4135
	movzbl	(%rax), %eax	# *_57, D.4136
	cmpb	%al, %dl	# D.4136, D.4136
	je	.L102	#,
	.loc 1 369 0
	movl	-24(%rbp), %eax	# input_size, tmp129
	movl	%eax, %esi	# tmp129,
	movl	$.LC34, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 370 0
	movl	$0, %edi	#,
	call	exit	#
.L102:
	.loc 1 367 0
	addl	$1, -32(%rbp)	#, i
.L101:
	.loc 1 367 0 is_stmt 0 discriminator 1
	movl	-32(%rbp), %eax	# i, tmp130
	imull	$1027, %eax, %eax	#, tmp130, D.4132
	movl	-24(%rbp), %edx	# input_size, tmp131
	sall	$20, %edx	#, D.4132
	cmpl	%edx, %eax	# D.4132, D.4132
	jl	.L103	#,
	.loc 1 373 0 is_stmt 1
	movl	$0, %eax	#,
	call	debug_time	#
	.loc 1 374 0
	movl	dbglvl(%rip), %eax	# dbglvl, dbglvl.42
	cmpl	$3, %eax	#, dbglvl.42
	jle	.L104	#,
	.loc 1 374 0 is_stmt 0 discriminator 1
	movl	$.LC35, %edi	#,
	call	puts	#
.L104:
	.loc 1 375 0 is_stmt 1
	movl	$1, %edi	#,
	call	spec_reset	#
	.loc 1 376 0
	movl	$0, %edi	#,
	call	spec_rewind	#
	.loc 1 329 0
	addl	$2, -28(%rbp)	#, level
.L96:
	.loc 1 329 0 is_stmt 0 discriminator 1
	cmpl	$9, -28(%rbp)	#, level
	jle	.L105	#,
	.loc 1 378 0 is_stmt 1
	movl	-24(%rbp), %eax	# input_size, tmp132
	movl	%eax, %esi	# tmp132,
	movl	$.LC36, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 380 0
	movl	$0, %eax	#, D.4132
	.loc 1 381 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	main, .-main
	.globl	spec_initbufs
	.type	spec_initbufs, @function
spec_initbufs:
.LFB16:
	.loc 1 388 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 389 0
	movb	$0, smallMode(%rip)	#, smallMode
	.loc 1 390 0
	movl	$0, verbosity(%rip)	#, verbosity
	.loc 1 391 0
	movl	$9, blockSize100k(%rip)	#, blockSize100k
	.loc 1 393 0
	movl	$30, workFactor(%rip)	#, workFactor
	.loc 1 395 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	spec_initbufs, .-spec_initbufs
	.globl	spec_compress
	.type	spec_compress, @function
spec_compress:
.LFB17:
	.loc 1 396 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movl	%edi, -4(%rbp)	# in, in
	movl	%esi, -8(%rbp)	# out, out
	movl	%edx, -12(%rbp)	# lev, lev
	.loc 1 397 0
	movl	-12(%rbp), %eax	# lev, tmp59
	movl	%eax, blockSize100k(%rip)	# tmp59, blockSize100k
	.loc 1 398 0
	movl	-8(%rbp), %edx	# out, tmp60
	movl	-4(%rbp), %eax	# in, tmp61
	movl	%edx, %esi	# tmp60,
	movl	%eax, %edi	# tmp61,
	call	compressStream	#
	.loc 1 399 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	spec_compress, .-spec_compress
	.globl	spec_uncompress
	.type	spec_uncompress, @function
spec_uncompress:
.LFB18:
	.loc 1 400 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movl	%edi, -4(%rbp)	# in, in
	movl	%esi, -8(%rbp)	# out, out
	movl	%edx, -12(%rbp)	# lev, lev
	.loc 1 401 0
	movl	$0, blockSize100k(%rip)	#, blockSize100k
	.loc 1 402 0
	movl	-8(%rbp), %edx	# out, tmp59
	movl	-4(%rbp), %eax	# in, tmp60
	movl	%edx, %esi	# tmp59,
	movl	%eax, %edi	# tmp60,
	call	uncompressStream	#
	.loc 1 403 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	spec_uncompress, .-spec_uncompress
	.globl	debug_time
	.type	debug_time, @function
debug_time:
.LFB19:
	.loc 1 408 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 416 0
	movl	$0, %eax	#, D.4148
	.loc 1 417 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	debug_time, .-debug_time
	.section	.rodata
	.align 4
.LC0:
	.long	1325400064
	.align 8
.LC5:
	.long	0
	.long	1081081856
	.align 8
.LC7:
	.long	0
	.long	1077936128
	.text
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/include/libio.h"
	.file 5 "/usr/include/stdio.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x90c
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF85
	.byte	0x1
	.long	.LASF86
	.long	.LASF87
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
	.long	.LASF88
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
	.uleb128 0x7
	.long	.LASF48
	.byte	0x18
	.byte	0x1
	.byte	0x2d
	.long	0x2d2
	.uleb128 0x8
	.long	.LASF49
	.byte	0x1
	.byte	0x2e
	.long	0x62
	.byte	0
	.uleb128 0xd
	.string	"len"
	.byte	0x1
	.byte	0x2f
	.long	0x62
	.byte	0x4
	.uleb128 0xd
	.string	"pos"
	.byte	0x1
	.byte	0x30
	.long	0x62
	.byte	0x8
	.uleb128 0xd
	.string	"buf"
	.byte	0x1
	.byte	0x31
	.long	0x2d2
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x3f
	.uleb128 0xe
	.string	"ran"
	.byte	0x1
	.byte	0x35
	.long	0x322
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x322
	.uleb128 0xf
	.string	"lo"
	.byte	0x1
	.byte	0x40
	.long	0x69
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xf
	.string	"hi"
	.byte	0x1
	.byte	0x41
	.long	0x69
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x10
	.long	.LASF50
	.byte	0x1
	.byte	0x42
	.long	0x69
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.long	.LASF51
	.uleb128 0x11
	.long	.LASF52
	.byte	0x1
	.byte	0x50
	.long	0x62
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x383
	.uleb128 0xf
	.string	"i"
	.byte	0x1
	.byte	0x51
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xf
	.string	"j"
	.byte	0x1
	.byte	0x51
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x12
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x10
	.long	.LASF49
	.byte	0x1
	.byte	0x58
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x13
	.long	.LASF54
	.byte	0x1
	.byte	0x67
	.long	0x62
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x3e4
	.uleb128 0x14
	.string	"fd"
	.byte	0x1
	.byte	0x67
	.long	0x62
	.uleb128 0x5
	.byte	0x91
	.sleb128 -4194356
	.uleb128 0xf
	.string	"i"
	.byte	0x1
	.byte	0x6e
	.long	0x62
	.uleb128 0x5
	.byte	0x91
	.sleb128 -4194344
	.uleb128 0xf
	.string	"j"
	.byte	0x1
	.byte	0x6e
	.long	0x62
	.uleb128 0x5
	.byte	0x91
	.sleb128 -4194340
	.uleb128 0x10
	.long	.LASF53
	.byte	0x1
	.byte	0x6f
	.long	0x3e4
	.uleb128 0x5
	.byte	0x91
	.sleb128 -4194336
	.byte	0
	.uleb128 0xb
	.long	0x95
	.long	0x3fd
	.uleb128 0xc
	.long	0x86
	.byte	0x1f
	.uleb128 0x15
	.long	0x86
	.long	0x1ffff
	.byte	0
	.uleb128 0x13
	.long	.LASF55
	.byte	0x1
	.byte	0x84
	.long	0x62
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x48f
	.uleb128 0x14
	.string	"num"
	.byte	0x1
	.byte	0x84
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x16
	.long	.LASF56
	.byte	0x1
	.byte	0x84
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x16
	.long	.LASF57
	.byte	0x1
	.byte	0x84
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xf
	.string	"fd"
	.byte	0x1
	.byte	0x86
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xf
	.string	"rc"
	.byte	0x1
	.byte	0x86
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xf
	.string	"i"
	.byte	0x1
	.byte	0x86
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x12
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0xf
	.string	"tmp"
	.byte	0x1
	.byte	0x9b
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.byte	0
	.uleb128 0x13
	.long	.LASF58
	.byte	0x1
	.byte	0xa4
	.long	0x62
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x4e7
	.uleb128 0x14
	.string	"fd"
	.byte	0x1
	.byte	0xa4
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x14
	.string	"buf"
	.byte	0x1
	.byte	0xa4
	.long	0x2d2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x16
	.long	.LASF57
	.byte	0x1
	.byte	0xa4
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xf
	.string	"rc"
	.byte	0x1
	.byte	0xa5
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x13
	.long	.LASF59
	.byte	0x1
	.byte	0xb9
	.long	0x62
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x54d
	.uleb128 0x14
	.string	"buf"
	.byte	0x1
	.byte	0xb9
	.long	0x2d2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x16
	.long	.LASF57
	.byte	0x1
	.byte	0xb9
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x14
	.string	"num"
	.byte	0x1
	.byte	0xb9
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x14
	.string	"fd"
	.byte	0x1
	.byte	0xb9
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0xf
	.string	"rc"
	.byte	0x1
	.byte	0xba
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x13
	.long	.LASF60
	.byte	0x1
	.byte	0xce
	.long	0x62
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x589
	.uleb128 0x14
	.string	"fd"
	.byte	0x1
	.byte	0xce
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xf
	.string	"rc"
	.byte	0x1
	.byte	0xcf
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x13
	.long	.LASF61
	.byte	0x1
	.byte	0xdd
	.long	0x62
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x5d2
	.uleb128 0x14
	.string	"ch"
	.byte	0x1
	.byte	0xdd
	.long	0x3f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x14
	.string	"fd"
	.byte	0x1
	.byte	0xdd
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xf
	.string	"rc"
	.byte	0x1
	.byte	0xde
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x17
	.long	.LASF62
	.byte	0x1
	.byte	0xef
	.long	0x62
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x601
	.uleb128 0x14
	.string	"fd"
	.byte	0x1
	.byte	0xef
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x13
	.long	.LASF63
	.byte	0x1
	.byte	0xf3
	.long	0x62
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x630
	.uleb128 0x14
	.string	"fd"
	.byte	0x1
	.byte	0xf3
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x13
	.long	.LASF64
	.byte	0x1
	.byte	0xf9
	.long	0x62
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x67b
	.uleb128 0x14
	.string	"fd"
	.byte	0x1
	.byte	0xf9
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x14
	.string	"buf"
	.byte	0x1
	.byte	0xf9
	.long	0x2d2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x16
	.long	.LASF57
	.byte	0x1
	.byte	0xf9
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x18
	.long	.LASF65
	.byte	0x1
	.value	0x105
	.long	0x62
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x6d9
	.uleb128 0x19
	.string	"buf"
	.byte	0x1
	.value	0x105
	.long	0x2d2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1a
	.long	.LASF57
	.byte	0x1
	.value	0x105
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x19
	.string	"num"
	.byte	0x1
	.value	0x105
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x19
	.string	"fd"
	.byte	0x1
	.value	0x105
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x18
	.long	.LASF66
	.byte	0x1
	.value	0x111
	.long	0x62
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0x718
	.uleb128 0x19
	.string	"ch"
	.byte	0x1
	.value	0x111
	.long	0x3f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x19
	.string	"fd"
	.byte	0x1
	.value	0x111
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x18
	.long	.LASF67
	.byte	0x1
	.value	0x11e
	.long	0x62
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0x7b1
	.uleb128 0x1a
	.long	.LASF68
	.byte	0x1
	.value	0x11e
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1a
	.long	.LASF69
	.byte	0x1
	.value	0x11e
	.long	0x7b1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1b
	.string	"i"
	.byte	0x1
	.value	0x11f
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1c
	.long	.LASF70
	.byte	0x1
	.value	0x11f
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1c
	.long	.LASF71
	.byte	0x1
	.value	0x120
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1c
	.long	.LASF72
	.byte	0x1
	.value	0x120
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1c
	.long	.LASF73
	.byte	0x1
	.value	0x121
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1c
	.long	.LASF74
	.byte	0x1
	.value	0x122
	.long	0x2d2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x8f
	.uleb128 0x1d
	.long	.LASF89
	.byte	0x1
	.value	0x184
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1e
	.long	.LASF75
	.byte	0x1
	.value	0x18c
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0x81c
	.uleb128 0x19
	.string	"in"
	.byte	0x1
	.value	0x18c
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x19
	.string	"out"
	.byte	0x1
	.value	0x18c
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x19
	.string	"lev"
	.byte	0x1
	.value	0x18c
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x1e
	.long	.LASF76
	.byte	0x1
	.value	0x190
	.quad	.LFB18
	.quad	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0x867
	.uleb128 0x19
	.string	"in"
	.byte	0x1
	.value	0x190
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x19
	.string	"out"
	.byte	0x1
	.value	0x190
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x19
	.string	"lev"
	.byte	0x1
	.value	0x190
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x1f
	.long	.LASF90
	.byte	0x1
	.value	0x198
	.long	0x62
	.quad	.LFB19
	.quad	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x20
	.long	.LASF77
	.byte	0x5
	.byte	0xaa
	.long	0x25b
	.uleb128 0x21
	.long	.LASF78
	.byte	0x1
	.byte	0x1c
	.long	0x62
	.uleb128 0x9
	.byte	0x3
	.quad	dbglvl
	.uleb128 0xb
	.long	0x295
	.long	0x8b5
	.uleb128 0xc
	.long	0x86
	.byte	0x2
	.byte	0
	.uleb128 0x21
	.long	.LASF79
	.byte	0x1
	.byte	0x32
	.long	0x8a5
	.uleb128 0x9
	.byte	0x3
	.quad	spec_fd
	.uleb128 0x21
	.long	.LASF80
	.byte	0x1
	.byte	0x34
	.long	0x69
	.uleb128 0x9
	.byte	0x3
	.quad	seedi
	.uleb128 0x22
	.long	.LASF81
	.byte	0x1
	.value	0x180
	.long	0x3f
	.uleb128 0x22
	.long	.LASF82
	.byte	0x1
	.value	0x181
	.long	0x62
	.uleb128 0x22
	.long	.LASF83
	.byte	0x1
	.value	0x183
	.long	0x62
	.uleb128 0x22
	.long	.LASF84
	.byte	0x1
	.value	0x183
	.long	0x62
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
	.uleb128 0xe
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
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
	.uleb128 0x1f
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
.LASF49:
	.string	"limit"
.LASF65:
	.string	"spec_fwrite"
.LASF66:
	.string	"spec_putc"
.LASF72:
	.string	"compressed_size"
.LASF51:
	.string	"double"
.LASF41:
	.string	"_IO_FILE"
.LASF23:
	.string	"_IO_save_end"
.LASF5:
	.string	"short int"
.LASF7:
	.string	"size_t"
.LASF48:
	.string	"spec_fd_t"
.LASF33:
	.string	"_offset"
.LASF78:
	.string	"dbglvl"
.LASF59:
	.string	"spec_fread"
.LASF52:
	.string	"spec_init"
.LASF17:
	.string	"_IO_write_ptr"
.LASF12:
	.string	"_flags"
.LASF76:
	.string	"spec_uncompress"
.LASF86:
	.string	"spec.c"
.LASF24:
	.string	"_markers"
.LASF14:
	.string	"_IO_read_end"
.LASF25:
	.string	"_chain"
.LASF56:
	.string	"filename"
.LASF82:
	.string	"verbosity"
.LASF62:
	.string	"spec_rewind"
.LASF79:
	.string	"spec_fd"
.LASF58:
	.string	"spec_read"
.LASF77:
	.string	"stderr"
.LASF46:
	.string	"long long int"
.LASF32:
	.string	"_lock"
.LASF61:
	.string	"spec_ungetc"
.LASF6:
	.string	"long int"
.LASF29:
	.string	"_cur_column"
.LASF45:
	.string	"_pos"
.LASF69:
	.string	"argv"
.LASF44:
	.string	"_sbuf"
.LASF54:
	.string	"spec_random_load"
.LASF80:
	.string	"seedi"
.LASF63:
	.string	"spec_reset"
.LASF1:
	.string	"unsigned char"
.LASF87:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/401.bzip2/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF84:
	.string	"blockSize100k"
.LASF68:
	.string	"argc"
.LASF85:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF4:
	.string	"signed char"
.LASF47:
	.string	"long long unsigned int"
.LASF60:
	.string	"spec_getc"
.LASF3:
	.string	"unsigned int"
.LASF42:
	.string	"_IO_marker"
.LASF31:
	.string	"_shortbuf"
.LASF53:
	.string	"random_text"
.LASF28:
	.string	"_old_offset"
.LASF16:
	.string	"_IO_write_base"
.LASF40:
	.string	"_unused2"
.LASF13:
	.string	"_IO_read_ptr"
.LASF20:
	.string	"_IO_buf_end"
.LASF11:
	.string	"char"
.LASF67:
	.string	"main"
.LASF43:
	.string	"_next"
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
.LASF22:
	.string	"_IO_backup_base"
.LASF64:
	.string	"spec_write"
.LASF75:
	.string	"spec_compress"
.LASF50:
	.string	"test"
.LASF2:
	.string	"short unsigned int"
.LASF90:
	.string	"debug_time"
.LASF81:
	.string	"smallMode"
.LASF74:
	.string	"validate_array"
.LASF0:
	.string	"long unsigned int"
.LASF18:
	.string	"_IO_write_end"
.LASF9:
	.string	"__off64_t"
.LASF26:
	.string	"_fileno"
.LASF83:
	.string	"workFactor"
.LASF57:
	.string	"size"
.LASF8:
	.string	"__off_t"
.LASF70:
	.string	"level"
.LASF89:
	.string	"spec_initbufs"
.LASF19:
	.string	"_IO_buf_base"
.LASF27:
	.string	"_flags2"
.LASF39:
	.string	"_mode"
.LASF15:
	.string	"_IO_read_base"
.LASF10:
	.string	"sizetype"
.LASF30:
	.string	"_vtable_offset"
.LASF21:
	.string	"_IO_save_base"
.LASF73:
	.string	"input_name"
.LASF55:
	.string	"spec_load"
.LASF71:
	.string	"input_size"
.LASF88:
	.string	"_IO_lock_t"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
