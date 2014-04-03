	.file	"shor.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 -D SPEC_CPU_LINUX shor.c -mtune=generic -march=x86-64 -g
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
	.string	"Usage: shor [number]\n"
.LC1:
	.string	"Invalid number\n"
.LC2:
	.string	"N = %i, %i qubits required\n"
.LC4:
	.string	"Random seed: %i\n"
.LC5:
	.string	"Impossible Measurement!"
.LC6:
	.string	"Measured zero, try again."
.LC7:
	.string	"Measured %i (%f), "
	.align 8
.LC8:
	.string	"fractional approximation is %i/%i.\n"
	.align 8
.LC9:
	.string	"Odd denominator, trying to expand by 2."
.LC10:
	.string	"Odd period, try again."
.LC11:
	.string	"Possible period is %i.\n"
.LC12:
	.string	"%i = %i * %i\n"
	.align 8
.LC13:
	.string	"Unable to determine factors, try again."
	.text
	.globl	main
	.type	main, @function
main:
.LFB2:
	.file 1 "shor.c"
	.loc 1 44 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$160, %rsp	#,
	movl	%edi, -84(%rbp)	# argc, argc
	movq	%rsi, -96(%rbp)	# argv, argv
	.loc 1 49 0
	movl	$0, -60(%rbp)	#, x
	.loc 1 54 0
	movl	$26, %edi	#,
	call	spec_srand	#
	.loc 1 59 0
	cmpl	$1, -84(%rbp)	#, argc
	jne	.L2	#,
	.loc 1 61 0
	movl	$.LC0, %edi	#,
	call	puts	#
	.loc 1 62 0
	movl	$3, %eax	#, D.4381
	jmp	.L21	#
.L2:
	.loc 1 65 0
	movq	-96(%rbp), %rax	# argv, tmp119
	addq	$8, %rax	#, D.4382
	movq	(%rax), %rax	# *_12, D.4383
	movq	%rax, %rdi	# D.4383,
	call	atoi	#
	movl	%eax, -52(%rbp)	# tmp120, N
	.loc 1 67 0
	cmpl	$14, -52(%rbp)	#, N
	jg	.L4	#,
	.loc 1 69 0
	movl	$.LC1, %edi	#,
	call	puts	#
	.loc 1 70 0
	movl	$3, %eax	#, D.4381
	jmp	.L21	#
.L4:
	.loc 1 73 0
	movl	-52(%rbp), %eax	# N, tmp121
	imull	-52(%rbp), %eax	# N, D.4381
	movl	%eax, %edi	# D.4381,
	call	quantum_getwidth	#
	movl	%eax, -48(%rbp)	# tmp122, width
	.loc 1 74 0
	movl	-52(%rbp), %eax	# N, tmp123
	movl	%eax, %edi	# tmp123,
	call	quantum_getwidth	#
	movl	%eax, -44(%rbp)	# tmp124, swidth
	.loc 1 76 0
	movl	-44(%rbp), %edx	# swidth, tmp125
	movl	%edx, %eax	# tmp125, tmp126
	addl	%eax, %eax	# tmp126
	addl	%eax, %edx	# tmp126, D.4381
	movl	-48(%rbp), %eax	# width, tmp127
	addl	%edx, %eax	# D.4381, D.4381
	leal	2(%rax), %edx	#, D.4381
	movl	-52(%rbp), %eax	# N, tmp128
	movl	%eax, %esi	# tmp128,
	movl	$.LC2, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 78 0
	cmpl	$2, -84(%rbp)	#, argc
	jle	.L5	#,
	.loc 1 80 0
	movq	-96(%rbp), %rax	# argv, tmp129
	addq	$16, %rax	#, D.4382
	movq	(%rax), %rax	# *_22, D.4383
	movq	%rax, %rdi	# D.4383,
	call	atoi	#
	movl	%eax, -60(%rbp)	# tmp130, x
	.loc 1 82 0
	jmp	.L6	#
.L5:
	jmp	.L6	#
.L7:
	.loc 1 85 0
	call	spec_rand	#
	movsd	.LC3(%rip), %xmm1	#, tmp131
	mulsd	%xmm1, %xmm0	# tmp131, D.4386
	cvttsd2siq	%xmm0, %rax	# D.4386, D.4387
	movl	-52(%rbp), %edx	# N, tmp132
	movslq	%edx, %rcx	# tmp132, D.4387
	cqto
	idivq	%rcx	# D.4387
	movq	%rdx, %rax	# tmp133, D.4387
	movl	%eax, -60(%rbp)	# D.4387, x
.L6:
	.loc 1 82 0 discriminator 1
	movl	-60(%rbp), %edx	# x, tmp135
	movl	-52(%rbp), %eax	# N, tmp136
	movl	%edx, %esi	# tmp135,
	movl	%eax, %edi	# tmp136,
	call	quantum_gcd	#
	cmpl	$1, %eax	#, D.4381
	jg	.L7	#,
	.loc 1 82 0 is_stmt 0 discriminator 2
	cmpl	$1, -60(%rbp)	#, x
	jle	.L7	#,
	.loc 1 91 0 is_stmt 1
	movl	-60(%rbp), %eax	# x, tmp137
	movl	%eax, %esi	# tmp137,
	movl	$.LC4, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 93 0
	leaq	-128(%rbp), %rax	#, tmp138
	movl	-48(%rbp), %edx	# width, tmp139
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp138,
	call	quantum_new_qureg	#
	movq	-128(%rbp), %rax	#, tmp140
	movq	%rax, -32(%rbp)	# tmp140, qr
	movq	-120(%rbp), %rax	#, tmp141
	movq	%rax, -24(%rbp)	# tmp141, qr
	movq	-112(%rbp), %rax	#, tmp142
	movq	%rax, -16(%rbp)	# tmp142, qr
	movq	-104(%rbp), %rax	#, tmp143
	movq	%rax, -8(%rbp)	# tmp143, qr
	.loc 1 95 0
	movl	$0, -64(%rbp)	#, i
	jmp	.L8	#
.L9:
	.loc 1 96 0 discriminator 2
	leaq	-32(%rbp), %rdx	#, tmp144
	movl	-64(%rbp), %eax	# i, tmp145
	movq	%rdx, %rsi	# tmp144,
	movl	%eax, %edi	# tmp145,
	call	quantum_hadamard	#
	.loc 1 95 0 discriminator 2
	addl	$1, -64(%rbp)	#, i
.L8:
	.loc 1 95 0 is_stmt 0 discriminator 1
	movl	-64(%rbp), %eax	# i, tmp146
	cmpl	-48(%rbp), %eax	# width, tmp146
	jl	.L9	#,
	.loc 1 98 0 is_stmt 1
	movl	-44(%rbp), %edx	# swidth, tmp147
	movl	%edx, %eax	# tmp147, tmp148
	addl	%eax, %eax	# tmp148
	addl	%edx, %eax	# tmp147, D.4381
	leal	2(%rax), %edx	#, D.4381
	leaq	-32(%rbp), %rax	#, tmp149
	movq	%rax, %rsi	# tmp149,
	movl	%edx, %edi	# D.4381,
	call	quantum_addscratch	#
	.loc 1 100 0
	leaq	-32(%rbp), %rdi	#, tmp150
	movl	-44(%rbp), %ecx	# swidth, tmp151
	movl	-48(%rbp), %edx	# width, tmp152
	movl	-60(%rbp), %esi	# x, tmp153
	movl	-52(%rbp), %eax	# N, tmp154
	movq	%rdi, %r8	# tmp150,
	movl	%eax, %edi	# tmp154,
	call	quantum_exp_mod_n	#
	.loc 1 102 0
	movl	$0, -64(%rbp)	#, i
	jmp	.L10	#
.L11:
	.loc 1 104 0 discriminator 2
	leaq	-32(%rbp), %rax	#, tmp155
	movq	%rax, %rsi	# tmp155,
	movl	$0, %edi	#,
	call	quantum_bmeasure	#
	.loc 1 102 0 discriminator 2
	addl	$1, -64(%rbp)	#, i
.L10:
	.loc 1 102 0 is_stmt 0 discriminator 1
	movl	-44(%rbp), %edx	# swidth, tmp156
	movl	%edx, %eax	# tmp156, tmp157
	addl	%eax, %eax	# tmp157
	addl	%edx, %eax	# tmp156, D.4381
	addl	$2, %eax	#, D.4381
	cmpl	-64(%rbp), %eax	# i, D.4381
	jg	.L11	#,
	.loc 1 107 0 is_stmt 1
	leaq	-32(%rbp), %rdx	#, tmp158
	movl	-48(%rbp), %eax	# width, tmp159
	movq	%rdx, %rsi	# tmp158,
	movl	%eax, %edi	# tmp159,
	call	quantum_qft	#
	.loc 1 109 0
	movl	$0, -64(%rbp)	#, i
	jmp	.L12	#
.L13:
	.loc 1 111 0 discriminator 2
	movl	-64(%rbp), %eax	# i, tmp160
	movl	-48(%rbp), %edx	# width, tmp161
	subl	%eax, %edx	# tmp160, D.4381
	movl	%edx, %eax	# D.4381, D.4381
	leal	-1(%rax), %ecx	#, D.4381
	leaq	-32(%rbp), %rdx	#, tmp162
	movl	-64(%rbp), %eax	# i, tmp163
	movl	%ecx, %esi	# D.4381,
	movl	%eax, %edi	# tmp163,
	call	quantum_cnot	#
	.loc 1 112 0 discriminator 2
	movl	-64(%rbp), %eax	# i, tmp164
	movl	-48(%rbp), %edx	# width, tmp165
	subl	%eax, %edx	# tmp164, D.4381
	movl	%edx, %eax	# D.4381, D.4381
	leal	-1(%rax), %ecx	#, D.4381
	leaq	-32(%rbp), %rdx	#, tmp166
	movl	-64(%rbp), %eax	# i, tmp167
	movl	%eax, %esi	# tmp167,
	movl	%ecx, %edi	# D.4381,
	call	quantum_cnot	#
	.loc 1 113 0 discriminator 2
	movl	-64(%rbp), %eax	# i, tmp168
	movl	-48(%rbp), %edx	# width, tmp169
	subl	%eax, %edx	# tmp168, D.4381
	movl	%edx, %eax	# D.4381, D.4381
	leal	-1(%rax), %ecx	#, D.4381
	leaq	-32(%rbp), %rdx	#, tmp170
	movl	-64(%rbp), %eax	# i, tmp171
	movl	%ecx, %esi	# D.4381,
	movl	%eax, %edi	# tmp171,
	call	quantum_cnot	#
	.loc 1 109 0 discriminator 2
	addl	$1, -64(%rbp)	#, i
.L12:
	.loc 1 109 0 is_stmt 0 discriminator 1
	movl	-48(%rbp), %eax	# width, tmp172
	movl	%eax, %edx	# tmp172, tmp173
	shrl	$31, %edx	#, tmp173
	addl	%edx, %eax	# tmp173, tmp174
	sarl	%eax	# tmp175
	cmpl	-64(%rbp), %eax	# i, D.4381
	jg	.L13	#,
	.loc 1 116 0 is_stmt 1
	movq	-32(%rbp), %rax	# qr, tmp176
	movq	%rax, (%rsp)	# tmp176,
	movq	-24(%rbp), %rax	# qr, tmp177
	movq	%rax, 8(%rsp)	# tmp177,
	movq	-16(%rbp), %rax	# qr, tmp178
	movq	%rax, 16(%rsp)	# tmp178,
	movq	-8(%rbp), %rax	# qr, tmp179
	movq	%rax, 24(%rsp)	# tmp179,
	call	quantum_measure	#
	movl	%eax, -72(%rbp)	# c.0, c
	.loc 1 118 0
	movl	-72(%rbp), %eax	# c, c.1
	cmpl	$-1, %eax	#, c.1
	jne	.L14	#,
	.loc 1 120 0
	movl	$.LC5, %edi	#,
	call	puts	#
	.loc 1 121 0
	movl	$1, %edi	#,
	call	exit	#
.L14:
	.loc 1 124 0
	movl	-72(%rbp), %eax	# c, c.2
	testl	%eax, %eax	# c.2
	jne	.L15	#,
	.loc 1 126 0
	movl	$.LC6, %edi	#,
	call	puts	#
	.loc 1 127 0
	movl	$2, %edi	#,
	call	exit	#
.L15:
	.loc 1 130 0
	movl	-48(%rbp), %eax	# width, tmp180
	movl	$1, %edx	#, tmp181
	movl	%eax, %ecx	# tmp180, tmp235
	sall	%cl, %edx	# tmp235, q.3
	movl	%edx, %eax	# q.3, q.3
	movl	%eax, -68(%rbp)	# q.3, q
	.loc 1 132 0
	movl	-72(%rbp), %eax	# c, c.4
	cvtsi2ss	%eax, %xmm0	# c.4, D.4385
	movl	-68(%rbp), %eax	# q, q.5
	cvtsi2ss	%eax, %xmm1	# q.5, D.4385
	divss	%xmm1, %xmm0	# D.4385, D.4385
	unpcklps	%xmm0, %xmm0	# D.4385, D.4385
	cvtps2pd	%xmm0, %xmm0	# D.4385, D.4386
	movl	-72(%rbp), %eax	# c, c.6
	movl	%eax, %esi	# c.6,
	movl	$.LC7, %edi	#,
	movl	$1, %eax	#,
	call	printf	#
	.loc 1 134 0
	movl	-48(%rbp), %edx	# width, tmp182
	leaq	-68(%rbp), %rcx	#, tmp183
	leaq	-72(%rbp), %rax	#, tmp184
	movq	%rcx, %rsi	# tmp183,
	movq	%rax, %rdi	# tmp184,
	call	quantum_frac_approx	#
	.loc 1 136 0
	movl	-68(%rbp), %edx	# q, q.7
	movl	-72(%rbp), %eax	# c, c.8
	movl	%eax, %esi	# c.8,
	movl	$.LC8, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 138 0
	movl	-68(%rbp), %eax	# q, q.9
	cltd
	shrl	$31, %edx	#, tmp186
	addl	%edx, %eax	# tmp186, tmp187
	andl	$1, %eax	#, tmp188
	subl	%edx, %eax	# tmp186, tmp189
	cmpl	$1, %eax	#, D.4381
	jne	.L16	#,
	.loc 1 138 0 is_stmt 0 discriminator 1
	movl	-68(%rbp), %eax	# q, q.10
	leal	(%rax,%rax), %esi	#, D.4381
	movl	-48(%rbp), %eax	# width, tmp190
	movl	$1, %edx	#, tmp191
	movl	%eax, %ecx	# tmp190, tmp237
	sall	%cl, %edx	# tmp237, D.4381
	movl	%edx, %eax	# D.4381, D.4381
	cmpl	%eax, %esi	# D.4381, D.4381
	jge	.L16	#,
	.loc 1 140 0 is_stmt 1
	movl	$.LC9, %edi	#,
	call	puts	#
	.loc 1 141 0
	movl	-68(%rbp), %eax	# q, q.11
	addl	%eax, %eax	# q.12
	movl	%eax, -68(%rbp)	# q.12, q
.L16:
	.loc 1 144 0
	movl	-68(%rbp), %eax	# q, q.13
	cltd
	shrl	$31, %edx	#, tmp193
	addl	%edx, %eax	# tmp193, tmp194
	andl	$1, %eax	#, tmp195
	subl	%edx, %eax	# tmp193, tmp196
	cmpl	$1, %eax	#, D.4381
	jne	.L17	#,
	.loc 1 146 0
	movl	$.LC10, %edi	#,
	call	puts	#
	.loc 1 147 0
	movl	$2, %edi	#,
	call	exit	#
.L17:
	.loc 1 150 0
	movl	-68(%rbp), %eax	# q, q.14
	movl	%eax, %esi	# q.14,
	movl	$.LC11, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 152 0
	movl	-68(%rbp), %eax	# q, q.15
	movl	%eax, %edx	# q.15, tmp197
	shrl	$31, %edx	#, tmp197
	addl	%edx, %eax	# tmp197, tmp198
	sarl	%eax	# tmp199
	movl	%eax, %edx	# tmp199, D.4381
	movl	-60(%rbp), %eax	# x, tmp200
	movl	%edx, %esi	# D.4381,
	movl	%eax, %edi	# tmp200,
	call	quantum_ipow	#
	movl	%eax, %ecx	#, D.4381
	movl	$1, %eax	#, tmp201
	cltd
	idivl	-52(%rbp)	# N
	movl	%edx, %eax	# tmp202, D.4381
	addl	%ecx, %eax	# D.4381, tmp204
	movl	%eax, -40(%rbp)	# tmp204, a
	.loc 1 153 0
	movl	-68(%rbp), %eax	# q, q.16
	movl	%eax, %edx	# q.16, tmp205
	shrl	$31, %edx	#, tmp205
	addl	%edx, %eax	# tmp205, tmp206
	sarl	%eax	# tmp207
	movl	%eax, %edx	# tmp207, D.4381
	movl	-60(%rbp), %eax	# x, tmp208
	movl	%edx, %esi	# D.4381,
	movl	%eax, %edi	# tmp208,
	call	quantum_ipow	#
	movl	%eax, %ecx	#, D.4381
	movl	$1, %eax	#, tmp209
	cltd
	idivl	-52(%rbp)	# N
	movl	%edx, %eax	# tmp210, D.4381
	subl	%eax, %ecx	# D.4381, tmp212
	movl	%ecx, %eax	# tmp212, tmp212
	movl	%eax, -36(%rbp)	# tmp212, b
	.loc 1 155 0
	movl	-40(%rbp), %edx	# a, tmp213
	movl	-52(%rbp), %eax	# N, tmp214
	movl	%edx, %esi	# tmp213,
	movl	%eax, %edi	# tmp214,
	call	quantum_gcd	#
	movl	%eax, -40(%rbp)	# tmp215, a
	.loc 1 156 0
	movl	-36(%rbp), %edx	# b, tmp216
	movl	-52(%rbp), %eax	# N, tmp217
	movl	%edx, %esi	# tmp216,
	movl	%eax, %edi	# tmp217,
	call	quantum_gcd	#
	movl	%eax, -36(%rbp)	# tmp218, b
	.loc 1 158 0
	movl	-40(%rbp), %eax	# a, tmp219
	cmpl	-36(%rbp), %eax	# b, tmp219
	jle	.L18	#,
	.loc 1 159 0
	movl	-40(%rbp), %eax	# a, tmp220
	movl	%eax, -56(%rbp)	# tmp220, factor
	jmp	.L19	#
.L18:
	.loc 1 161 0
	movl	-36(%rbp), %eax	# b, tmp221
	movl	%eax, -56(%rbp)	# tmp221, factor
.L19:
	.loc 1 163 0
	movl	-56(%rbp), %eax	# factor, tmp222
	cmpl	-52(%rbp), %eax	# N, tmp222
	jge	.L20	#,
	.loc 1 163 0 is_stmt 0 discriminator 1
	cmpl	$1, -56(%rbp)	#, factor
	jle	.L20	#,
	.loc 1 165 0 is_stmt 1
	movl	-52(%rbp), %eax	# N, tmp225
	cltd
	idivl	-56(%rbp)	# factor
	movl	%eax, %ecx	# tmp223, D.4381
	movl	-56(%rbp), %edx	# factor, tmp226
	movl	-52(%rbp), %eax	# N, tmp227
	movl	%eax, %esi	# tmp227,
	movl	$.LC12, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 177 0
	leaq	-32(%rbp), %rax	#, tmp228
	movq	%rax, %rdi	# tmp228,
	call	quantum_delete_qureg	#
	.loc 1 181 0
	movl	$0, %eax	#, D.4381
	jmp	.L21	#
.L20:
	.loc 1 169 0
	movl	$.LC13, %edi	#,
	call	puts	#
	.loc 1 171 0
	movl	$0, %edi	#,
	call	exit	#
.L21:
	.loc 1 182 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	main, .-main
	.section	.rodata
	.align 8
.LC3:
	.long	4290772992
	.long	1105199103
	.text
.Letext0:
	.file 2 "quantum.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x200
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF29
	.byte	0x1
	.long	.LASF30
	.long	.LASF31
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
	.uleb128 0x4
	.byte	0x8
	.long	0x72
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF8
	.uleb128 0x4
	.byte	0x8
	.long	0x34
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
	.uleb128 0x2
	.byte	0x8
	.byte	0x3
	.long	.LASF13
	.uleb128 0x5
	.long	.LASF16
	.byte	0x10
	.byte	0x2
	.byte	0x2a
	.long	0xc7
	.uleb128 0x6
	.long	.LASF14
	.byte	0x2
	.byte	0x2c
	.long	0x9b
	.byte	0
	.uleb128 0x6
	.long	.LASF15
	.byte	0x2
	.byte	0x2d
	.long	0x86
	.byte	0x8
	.byte	0
	.uleb128 0x7
	.long	.LASF23
	.byte	0x2
	.byte	0x30
	.long	0xa2
	.uleb128 0x5
	.long	.LASF17
	.byte	0x20
	.byte	0x2
	.byte	0x34
	.long	0x11b
	.uleb128 0x6
	.long	.LASF18
	.byte	0x2
	.byte	0x36
	.long	0x34
	.byte	0
	.uleb128 0x6
	.long	.LASF19
	.byte	0x2
	.byte	0x37
	.long	0x34
	.byte	0x4
	.uleb128 0x6
	.long	.LASF20
	.byte	0x2
	.byte	0x38
	.long	0x34
	.byte	0x8
	.uleb128 0x6
	.long	.LASF21
	.byte	0x2
	.byte	0x39
	.long	0x11b
	.byte	0x10
	.uleb128 0x6
	.long	.LASF22
	.byte	0x2
	.byte	0x3a
	.long	0x79
	.byte	0x18
	.byte	0
	.uleb128 0x4
	.byte	0x8
	.long	0xc7
	.uleb128 0x7
	.long	.LASF24
	.byte	0x2
	.byte	0x3d
	.long	0xd2
	.uleb128 0x8
	.long	.LASF32
	.byte	0x1
	.byte	0x2c
	.long	0x34
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x1fd
	.uleb128 0x9
	.long	.LASF25
	.byte	0x1
	.byte	0x2c
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x9
	.long	.LASF26
	.byte	0x1
	.byte	0x2c
	.long	0x1fd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0xa
	.string	"qr"
	.byte	0x1
	.byte	0x2e
	.long	0x121
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xa
	.string	"i"
	.byte	0x1
	.byte	0x2f
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0xb
	.long	.LASF18
	.byte	0x1
	.byte	0x30
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0xb
	.long	.LASF27
	.byte	0x1
	.byte	0x30
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0xa
	.string	"x"
	.byte	0x1
	.byte	0x31
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0xa
	.string	"N"
	.byte	0x1
	.byte	0x32
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0xa
	.string	"c"
	.byte	0x1
	.byte	0x33
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0xa
	.string	"q"
	.byte	0x1
	.byte	0x33
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0xa
	.string	"a"
	.byte	0x1
	.byte	0x33
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xa
	.string	"b"
	.byte	0x1
	.byte	0x33
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0xb
	.long	.LASF28
	.byte	0x1
	.byte	0x33
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.uleb128 0x4
	.byte	0x8
	.long	0x6c
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
	.uleb128 0x6
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
.LASF15:
	.string	"state"
.LASF14:
	.string	"amplitude"
.LASF17:
	.string	"quantum_reg_struct"
.LASF23:
	.string	"quantum_reg_node"
.LASF13:
	.string	"complex float"
.LASF11:
	.string	"float"
.LASF31:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/462.libquantum/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF9:
	.string	"long long int"
.LASF19:
	.string	"size"
.LASF0:
	.string	"long unsigned int"
.LASF2:
	.string	"short unsigned int"
.LASF1:
	.string	"unsigned char"
.LASF12:
	.string	"double"
.LASF27:
	.string	"swidth"
.LASF32:
	.string	"main"
.LASF20:
	.string	"hashw"
.LASF3:
	.string	"unsigned int"
.LASF16:
	.string	"quantum_reg_node_struct"
.LASF24:
	.string	"quantum_reg"
.LASF10:
	.string	"long long unsigned int"
.LASF22:
	.string	"hash"
.LASF25:
	.string	"argc"
.LASF7:
	.string	"sizetype"
.LASF28:
	.string	"factor"
.LASF8:
	.string	"char"
.LASF18:
	.string	"width"
.LASF29:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF5:
	.string	"short int"
.LASF26:
	.string	"argv"
.LASF21:
	.string	"node"
.LASF6:
	.string	"long int"
.LASF4:
	.string	"signed char"
.LASF30:
	.string	"shor.c"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
