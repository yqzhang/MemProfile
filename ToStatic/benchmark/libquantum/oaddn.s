	.file	"oaddn.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 -D SPEC_CPU_LINUX oaddn.c -mtune=generic -march=x86-64
# -g -fverbose-asm -fno-strict-aliasing -fstack-protector -Wformat
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
	.globl	test_sum
	.type	test_sum, @function
test_sum:
.LFB5:
	.file 1 "oaddn.c"
	.loc 1 45 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	%edi, -20(%rbp)	# compare, compare
	movl	%esi, -24(%rbp)	# width, width
	movq	%rdx, -32(%rbp)	# reg, reg
	.loc 1 48 0
	movl	-20(%rbp), %eax	# compare, tmp116
	movslq	%eax, %rdx	# tmp116, D.4430
	movl	-24(%rbp), %eax	# width, tmp117
	subl	$1, %eax	#, D.4431
	movl	%eax, %ecx	# D.4431, tmp207
	shrq	%cl, %rdx	# tmp207, D.4430
	movq	%rdx, %rax	# D.4430, D.4430
	andl	$1, %eax	#, D.4430
	testq	%rax, %rax	# D.4430
	je	.L2	#,
	.loc 1 50 0
	movl	-24(%rbp), %eax	# width, tmp118
	leal	-1(%rax), %esi	#, D.4431
	movl	-24(%rbp), %eax	# width, tmp119
	addl	%eax, %eax	# D.4431
	leal	-1(%rax), %ecx	#, D.4431
	movq	-32(%rbp), %rax	# reg, tmp120
	movq	%rax, %rdx	# tmp120,
	movl	%ecx, %edi	# D.4431,
	call	quantum_cnot	#
	.loc 1 51 0
	movl	-24(%rbp), %eax	# width, tmp121
	addl	%eax, %eax	# D.4431
	leal	-1(%rax), %edx	#, D.4431
	movq	-32(%rbp), %rax	# reg, tmp122
	movq	%rax, %rsi	# tmp122,
	movl	%edx, %edi	# D.4431,
	call	quantum_sigma_x	#
	.loc 1 52 0
	movl	-24(%rbp), %eax	# width, tmp123
	addl	%eax, %eax	# D.4431
	leal	-1(%rax), %ecx	#, D.4431
	movq	-32(%rbp), %rax	# reg, tmp124
	movq	%rax, %rdx	# tmp124,
	movl	$0, %esi	#,
	movl	%ecx, %edi	# D.4431,
	call	quantum_cnot	#
	jmp	.L3	#
.L2:
	.loc 1 56 0
	movl	-24(%rbp), %eax	# width, tmp125
	addl	%eax, %eax	# D.4431
	leal	-1(%rax), %edx	#, D.4431
	movq	-32(%rbp), %rax	# reg, tmp126
	movq	%rax, %rsi	# tmp126,
	movl	%edx, %edi	# D.4431,
	call	quantum_sigma_x	#
	.loc 1 57 0
	movl	-24(%rbp), %eax	# width, tmp127
	leal	-1(%rax), %esi	#, D.4431
	movl	-24(%rbp), %eax	# width, tmp128
	addl	%eax, %eax	# D.4431
	leal	-1(%rax), %ecx	#, D.4431
	movq	-32(%rbp), %rax	# reg, tmp129
	movq	%rax, %rdx	# tmp129,
	movl	%ecx, %edi	# D.4431,
	call	quantum_cnot	#
.L3:
	.loc 1 59 0
	movl	-24(%rbp), %eax	# width, tmp133
	subl	$2, %eax	#, tmp132
	movl	%eax, -4(%rbp)	# tmp132, i
	jmp	.L4	#
.L7:
	.loc 1 61 0
	movl	-4(%rbp), %eax	# i, tmp134
	movl	-20(%rbp), %edx	# compare, tmp135
	movl	%eax, %ecx	# tmp134, tmp209
	sarl	%cl, %edx	# tmp209, D.4431
	movl	%edx, %eax	# D.4431, D.4431
	andl	$1, %eax	#, D.4431
	testl	%eax, %eax	# D.4431
	je	.L5	#,
	.loc 1 63 0
	movl	-4(%rbp), %eax	# i, tmp136
	movl	-24(%rbp), %edx	# width, tmp137
	leal	(%rdx,%rax), %esi	#, D.4431
	movl	-4(%rbp), %eax	# i, tmp138
	leal	1(%rax), %edi	#, D.4431
	movq	-32(%rbp), %rdx	# reg, tmp139
	movl	-4(%rbp), %eax	# i, tmp140
	movq	%rdx, %rcx	# tmp139,
	movl	%eax, %edx	# tmp140,
	call	quantum_toffoli	#
	.loc 1 64 0
	movl	-4(%rbp), %eax	# i, tmp141
	movl	-24(%rbp), %edx	# width, tmp142
	addl	%eax, %edx	# tmp141, D.4431
	movq	-32(%rbp), %rax	# reg, tmp143
	movq	%rax, %rsi	# tmp143,
	movl	%edx, %edi	# D.4431,
	call	quantum_sigma_x	#
	.loc 1 65 0
	movl	-4(%rbp), %eax	# i, tmp144
	movl	-24(%rbp), %edx	# width, tmp145
	leal	(%rdx,%rax), %esi	#, D.4431
	movl	-4(%rbp), %eax	# i, tmp146
	leal	1(%rax), %edi	#, D.4431
	movq	-32(%rbp), %rax	# reg, tmp147
	movq	%rax, %rcx	# tmp147,
	movl	$0, %edx	#,
	call	quantum_toffoli	#
	jmp	.L6	#
.L5:
	.loc 1 69 0
	movl	-4(%rbp), %eax	# i, tmp148
	movl	-24(%rbp), %edx	# width, tmp149
	addl	%eax, %edx	# tmp148, D.4431
	movq	-32(%rbp), %rax	# reg, tmp150
	movq	%rax, %rsi	# tmp150,
	movl	%edx, %edi	# D.4431,
	call	quantum_sigma_x	#
	.loc 1 70 0
	movl	-4(%rbp), %eax	# i, tmp151
	movl	-24(%rbp), %edx	# width, tmp152
	leal	(%rdx,%rax), %esi	#, D.4431
	movl	-4(%rbp), %eax	# i, tmp153
	leal	1(%rax), %edi	#, D.4431
	movq	-32(%rbp), %rdx	# reg, tmp154
	movl	-4(%rbp), %eax	# i, tmp155
	movq	%rdx, %rcx	# tmp154,
	movl	%eax, %edx	# tmp155,
	call	quantum_toffoli	#
.L6:
	.loc 1 59 0
	subl	$1, -4(%rbp)	#, i
.L4:
	.loc 1 59 0 is_stmt 0 discriminator 1
	cmpl	$0, -4(%rbp)	#, i
	jg	.L7	#,
	.loc 1 73 0 is_stmt 1
	movl	-20(%rbp), %eax	# compare, tmp156
	andl	$1, %eax	#, D.4431
	testl	%eax, %eax	# D.4431
	je	.L8	#,
	.loc 1 75 0
	movq	-32(%rbp), %rdx	# reg, tmp157
	movl	-24(%rbp), %eax	# width, tmp158
	movq	%rdx, %rsi	# tmp157,
	movl	%eax, %edi	# tmp158,
	call	quantum_sigma_x	#
	.loc 1 76 0
	movq	-32(%rbp), %rdx	# reg, tmp159
	movl	-24(%rbp), %eax	# width, tmp160
	movq	%rdx, %rcx	# tmp159,
	movl	$0, %edx	#,
	movl	$1, %esi	#,
	movl	%eax, %edi	# tmp160,
	call	quantum_toffoli	#
.L8:
	.loc 1 78 0
	movl	-24(%rbp), %eax	# width, tmp161
	leal	(%rax,%rax), %edx	#, D.4431
	movl	-24(%rbp), %eax	# width, tmp162
	addl	%eax, %eax	# D.4431
	leal	1(%rax), %edi	#, D.4431
	movq	-32(%rbp), %rax	# reg, tmp163
	movq	%rax, %rcx	# tmp163,
	movl	$0, %esi	#,
	call	quantum_toffoli	#
	.loc 1 80 0
	movl	-20(%rbp), %eax	# compare, tmp164
	andl	$1, %eax	#, D.4431
	testl	%eax, %eax	# D.4431
	je	.L9	#,
	.loc 1 82 0
	movq	-32(%rbp), %rdx	# reg, tmp165
	movl	-24(%rbp), %eax	# width, tmp166
	movq	%rdx, %rcx	# tmp165,
	movl	$0, %edx	#,
	movl	$1, %esi	#,
	movl	%eax, %edi	# tmp166,
	call	quantum_toffoli	#
	.loc 1 83 0
	movq	-32(%rbp), %rdx	# reg, tmp167
	movl	-24(%rbp), %eax	# width, tmp168
	movq	%rdx, %rsi	# tmp167,
	movl	%eax, %edi	# tmp168,
	call	quantum_sigma_x	#
.L9:
	.loc 1 86 0
	movl	$1, -4(%rbp)	#, i
	jmp	.L10	#
.L13:
	.loc 1 88 0
	movl	-4(%rbp), %eax	# i, tmp169
	movl	-20(%rbp), %edx	# compare, tmp170
	movl	%eax, %ecx	# tmp169, tmp211
	sarl	%cl, %edx	# tmp211, D.4431
	movl	%edx, %eax	# D.4431, D.4431
	andl	$1, %eax	#, D.4431
	testl	%eax, %eax	# D.4431
	je	.L11	#,
	.loc 1 90 0
	movl	-4(%rbp), %eax	# i, tmp171
	movl	-24(%rbp), %edx	# width, tmp172
	leal	(%rdx,%rax), %esi	#, D.4431
	movl	-4(%rbp), %eax	# i, tmp173
	leal	1(%rax), %edi	#, D.4431
	movq	-32(%rbp), %rax	# reg, tmp174
	movq	%rax, %rcx	# tmp174,
	movl	$0, %edx	#,
	call	quantum_toffoli	#
	.loc 1 91 0
	movl	-4(%rbp), %eax	# i, tmp175
	movl	-24(%rbp), %edx	# width, tmp176
	addl	%eax, %edx	# tmp175, D.4431
	movq	-32(%rbp), %rax	# reg, tmp177
	movq	%rax, %rsi	# tmp177,
	movl	%edx, %edi	# D.4431,
	call	quantum_sigma_x	#
	.loc 1 92 0
	movl	-4(%rbp), %eax	# i, tmp178
	movl	-24(%rbp), %edx	# width, tmp179
	leal	(%rdx,%rax), %esi	#, D.4431
	movl	-4(%rbp), %eax	# i, tmp180
	leal	1(%rax), %edi	#, D.4431
	movq	-32(%rbp), %rdx	# reg, tmp181
	movl	-4(%rbp), %eax	# i, tmp182
	movq	%rdx, %rcx	# tmp181,
	movl	%eax, %edx	# tmp182,
	call	quantum_toffoli	#
	jmp	.L12	#
.L11:
	.loc 1 96 0
	movl	-4(%rbp), %eax	# i, tmp183
	movl	-24(%rbp), %edx	# width, tmp184
	leal	(%rdx,%rax), %esi	#, D.4431
	movl	-4(%rbp), %eax	# i, tmp185
	leal	1(%rax), %edi	#, D.4431
	movq	-32(%rbp), %rdx	# reg, tmp186
	movl	-4(%rbp), %eax	# i, tmp187
	movq	%rdx, %rcx	# tmp186,
	movl	%eax, %edx	# tmp187,
	call	quantum_toffoli	#
	.loc 1 97 0
	movl	-4(%rbp), %eax	# i, tmp188
	movl	-24(%rbp), %edx	# width, tmp189
	addl	%eax, %edx	# tmp188, D.4431
	movq	-32(%rbp), %rax	# reg, tmp190
	movq	%rax, %rsi	# tmp190,
	movl	%edx, %edi	# D.4431,
	call	quantum_sigma_x	#
.L12:
	.loc 1 86 0
	addl	$1, -4(%rbp)	#, i
.L10:
	.loc 1 86 0 is_stmt 0 discriminator 1
	movl	-24(%rbp), %eax	# width, tmp191
	subl	$2, %eax	#, D.4431
	cmpl	-4(%rbp), %eax	# i, D.4431
	jge	.L13	#,
	.loc 1 100 0 is_stmt 1
	movl	-24(%rbp), %eax	# width, tmp192
	subl	$1, %eax	#, D.4431
	movl	-20(%rbp), %edx	# compare, tmp193
	movl	%eax, %ecx	# D.4431, tmp213
	sarl	%cl, %edx	# tmp213, D.4431
	movl	%edx, %eax	# D.4431, D.4431
	andl	$1, %eax	#, D.4431
	testl	%eax, %eax	# D.4431
	je	.L14	#,
	.loc 1 102 0
	movl	-24(%rbp), %eax	# width, tmp194
	addl	%eax, %eax	# D.4431
	leal	-1(%rax), %ecx	#, D.4431
	movq	-32(%rbp), %rax	# reg, tmp195
	movq	%rax, %rdx	# tmp195,
	movl	$0, %esi	#,
	movl	%ecx, %edi	# D.4431,
	call	quantum_cnot	#
	.loc 1 103 0
	movl	-24(%rbp), %eax	# width, tmp196
	addl	%eax, %eax	# D.4431
	leal	-1(%rax), %edx	#, D.4431
	movq	-32(%rbp), %rax	# reg, tmp197
	movq	%rax, %rsi	# tmp197,
	movl	%edx, %edi	# D.4431,
	call	quantum_sigma_x	#
	.loc 1 104 0
	movl	-24(%rbp), %eax	# width, tmp198
	leal	-1(%rax), %esi	#, D.4431
	movl	-24(%rbp), %eax	# width, tmp199
	addl	%eax, %eax	# D.4431
	leal	-1(%rax), %ecx	#, D.4431
	movq	-32(%rbp), %rax	# reg, tmp200
	movq	%rax, %rdx	# tmp200,
	movl	%ecx, %edi	# D.4431,
	call	quantum_cnot	#
	jmp	.L1	#
.L14:
	.loc 1 108 0
	movl	-24(%rbp), %eax	# width, tmp201
	leal	-1(%rax), %esi	#, D.4431
	movl	-24(%rbp), %eax	# width, tmp202
	addl	%eax, %eax	# D.4431
	leal	-1(%rax), %ecx	#, D.4431
	movq	-32(%rbp), %rax	# reg, tmp203
	movq	%rax, %rdx	# tmp203,
	movl	%ecx, %edi	# D.4431,
	call	quantum_cnot	#
	.loc 1 109 0
	movl	-24(%rbp), %eax	# width, tmp204
	addl	%eax, %eax	# D.4431
	leal	-1(%rax), %edx	#, D.4431
	movq	-32(%rbp), %rax	# reg, tmp205
	movq	%rax, %rsi	# tmp205,
	movl	%edx, %edi	# D.4431,
	call	quantum_sigma_x	#
.L1:
	.loc 1 112 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	test_sum, .-test_sum
	.globl	muxfa
	.type	muxfa, @function
muxfa:
.LFB6:
	.loc 1 120 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	%edi, -4(%rbp)	# a, a
	movl	%esi, -8(%rbp)	# b_in, b_in
	movl	%edx, -12(%rbp)	# c_in, c_in
	movl	%ecx, -16(%rbp)	# c_out, c_out
	movl	%r8d, -20(%rbp)	# xlt_l, xlt_l
	movl	%r9d, -24(%rbp)	# L, L
	.loc 1 122 0
	cmpl	$0, -4(%rbp)	#, a
	jne	.L17	#,
	.loc 1 123 0
	movq	24(%rbp), %rcx	# reg, tmp59
	movl	-16(%rbp), %edx	# c_out, tmp60
	movl	-12(%rbp), %esi	# c_in, tmp61
	movl	-8(%rbp), %eax	# b_in, tmp62
	movl	%eax, %edi	# tmp62,
	call	quantum_toffoli	#
	.loc 1 124 0
	movq	24(%rbp), %rdx	# reg, tmp63
	movl	-12(%rbp), %ecx	# c_in, tmp64
	movl	-8(%rbp), %eax	# b_in, tmp65
	movl	%ecx, %esi	# tmp64,
	movl	%eax, %edi	# tmp65,
	call	quantum_cnot	#
.L17:
	.loc 1 127 0
	cmpl	$3, -4(%rbp)	#, a
	jne	.L18	#,
	.loc 1 128 0
	movq	24(%rbp), %rcx	# reg, tmp66
	movl	-16(%rbp), %edx	# c_out, tmp67
	movl	-12(%rbp), %esi	# c_in, tmp68
	movl	-24(%rbp), %eax	# L, tmp69
	movl	%eax, %edi	# tmp69,
	call	quantum_toffoli	#
	.loc 1 129 0
	movq	24(%rbp), %rdx	# reg, tmp70
	movl	-12(%rbp), %ecx	# c_in, tmp71
	movl	-24(%rbp), %eax	# L, tmp72
	movl	%ecx, %esi	# tmp71,
	movl	%eax, %edi	# tmp72,
	call	quantum_cnot	#
	.loc 1 130 0
	movq	24(%rbp), %rcx	# reg, tmp73
	movl	-16(%rbp), %edx	# c_out, tmp74
	movl	-12(%rbp), %esi	# c_in, tmp75
	movl	-8(%rbp), %eax	# b_in, tmp76
	movl	%eax, %edi	# tmp76,
	call	quantum_toffoli	#
	.loc 1 131 0
	movq	24(%rbp), %rdx	# reg, tmp77
	movl	-12(%rbp), %ecx	# c_in, tmp78
	movl	-8(%rbp), %eax	# b_in, tmp79
	movl	%ecx, %esi	# tmp78,
	movl	%eax, %edi	# tmp79,
	call	quantum_cnot	#
.L18:
	.loc 1 134 0
	cmpl	$1, -4(%rbp)	#, a
	jne	.L19	#,
	.loc 1 135 0
	movq	24(%rbp), %rcx	# reg, tmp80
	movl	-8(%rbp), %edx	# b_in, tmp81
	movl	-20(%rbp), %esi	# xlt_l, tmp82
	movl	-24(%rbp), %eax	# L, tmp83
	movl	%eax, %edi	# tmp83,
	call	quantum_toffoli	#
	.loc 1 136 0
	movq	24(%rbp), %rcx	# reg, tmp84
	movl	-16(%rbp), %edx	# c_out, tmp85
	movl	-12(%rbp), %esi	# c_in, tmp86
	movl	-8(%rbp), %eax	# b_in, tmp87
	movl	%eax, %edi	# tmp87,
	call	quantum_toffoli	#
	.loc 1 137 0
	movq	24(%rbp), %rcx	# reg, tmp88
	movl	-8(%rbp), %edx	# b_in, tmp89
	movl	-20(%rbp), %esi	# xlt_l, tmp90
	movl	-24(%rbp), %eax	# L, tmp91
	movl	%eax, %edi	# tmp91,
	call	quantum_toffoli	#
	.loc 1 138 0
	movq	24(%rbp), %rcx	# reg, tmp92
	movl	-16(%rbp), %edx	# c_out, tmp93
	movl	-12(%rbp), %esi	# c_in, tmp94
	movl	-8(%rbp), %eax	# b_in, tmp95
	movl	%eax, %edi	# tmp95,
	call	quantum_toffoli	#
	.loc 1 139 0
	movq	24(%rbp), %rcx	# reg, tmp96
	movl	-12(%rbp), %edx	# c_in, tmp97
	movl	-20(%rbp), %esi	# xlt_l, tmp98
	movl	-24(%rbp), %eax	# L, tmp99
	movl	%eax, %edi	# tmp99,
	call	quantum_toffoli	#
	.loc 1 140 0
	movq	24(%rbp), %rcx	# reg, tmp100
	movl	-16(%rbp), %edx	# c_out, tmp101
	movl	-12(%rbp), %esi	# c_in, tmp102
	movl	-8(%rbp), %eax	# b_in, tmp103
	movl	%eax, %edi	# tmp103,
	call	quantum_toffoli	#
	.loc 1 141 0
	movq	24(%rbp), %rdx	# reg, tmp104
	movl	-12(%rbp), %ecx	# c_in, tmp105
	movl	-8(%rbp), %eax	# b_in, tmp106
	movl	%ecx, %esi	# tmp105,
	movl	%eax, %edi	# tmp106,
	call	quantum_cnot	#
.L19:
	.loc 1 145 0
	cmpl	$2, -4(%rbp)	#, a
	jne	.L16	#,
	.loc 1 146 0
	movq	24(%rbp), %rdx	# reg, tmp107
	movl	-20(%rbp), %eax	# xlt_l, tmp108
	movq	%rdx, %rsi	# tmp107,
	movl	%eax, %edi	# tmp108,
	call	quantum_sigma_x	#
	.loc 1 147 0
	movq	24(%rbp), %rcx	# reg, tmp109
	movl	-8(%rbp), %edx	# b_in, tmp110
	movl	-20(%rbp), %esi	# xlt_l, tmp111
	movl	-24(%rbp), %eax	# L, tmp112
	movl	%eax, %edi	# tmp112,
	call	quantum_toffoli	#
	.loc 1 148 0
	movq	24(%rbp), %rcx	# reg, tmp113
	movl	-16(%rbp), %edx	# c_out, tmp114
	movl	-12(%rbp), %esi	# c_in, tmp115
	movl	-8(%rbp), %eax	# b_in, tmp116
	movl	%eax, %edi	# tmp116,
	call	quantum_toffoli	#
	.loc 1 149 0
	movq	24(%rbp), %rcx	# reg, tmp117
	movl	-8(%rbp), %edx	# b_in, tmp118
	movl	-20(%rbp), %esi	# xlt_l, tmp119
	movl	-24(%rbp), %eax	# L, tmp120
	movl	%eax, %edi	# tmp120,
	call	quantum_toffoli	#
	.loc 1 150 0
	movq	24(%rbp), %rcx	# reg, tmp121
	movl	-16(%rbp), %edx	# c_out, tmp122
	movl	-12(%rbp), %esi	# c_in, tmp123
	movl	-8(%rbp), %eax	# b_in, tmp124
	movl	%eax, %edi	# tmp124,
	call	quantum_toffoli	#
	.loc 1 151 0
	movq	24(%rbp), %rcx	# reg, tmp125
	movl	-12(%rbp), %edx	# c_in, tmp126
	movl	-20(%rbp), %esi	# xlt_l, tmp127
	movl	-24(%rbp), %eax	# L, tmp128
	movl	%eax, %edi	# tmp128,
	call	quantum_toffoli	#
	.loc 1 152 0
	movq	24(%rbp), %rcx	# reg, tmp129
	movl	-16(%rbp), %edx	# c_out, tmp130
	movl	-12(%rbp), %esi	# c_in, tmp131
	movl	-8(%rbp), %eax	# b_in, tmp132
	movl	%eax, %edi	# tmp132,
	call	quantum_toffoli	#
	.loc 1 153 0
	movq	24(%rbp), %rdx	# reg, tmp133
	movl	-12(%rbp), %ecx	# c_in, tmp134
	movl	-8(%rbp), %eax	# b_in, tmp135
	movl	%ecx, %esi	# tmp134,
	movl	%eax, %edi	# tmp135,
	call	quantum_cnot	#
	.loc 1 154 0
	movq	24(%rbp), %rdx	# reg, tmp136
	movl	-20(%rbp), %eax	# xlt_l, tmp137
	movq	%rdx, %rsi	# tmp136,
	movl	%eax, %edi	# tmp137,
	call	quantum_sigma_x	#
.L16:
	.loc 1 156 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	muxfa, .-muxfa
	.globl	muxfa_inv
	.type	muxfa_inv, @function
muxfa_inv:
.LFB7:
	.loc 1 161 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	%edi, -4(%rbp)	# a, a
	movl	%esi, -8(%rbp)	# b_in, b_in
	movl	%edx, -12(%rbp)	# c_in, c_in
	movl	%ecx, -16(%rbp)	# c_out, c_out
	movl	%r8d, -20(%rbp)	# xlt_l, xlt_l
	movl	%r9d, -24(%rbp)	# L, L
	.loc 1 163 0
	cmpl	$0, -4(%rbp)	#, a
	jne	.L22	#,
	.loc 1 164 0
	movq	24(%rbp), %rdx	# reg, tmp59
	movl	-12(%rbp), %ecx	# c_in, tmp60
	movl	-8(%rbp), %eax	# b_in, tmp61
	movl	%ecx, %esi	# tmp60,
	movl	%eax, %edi	# tmp61,
	call	quantum_cnot	#
	.loc 1 165 0
	movq	24(%rbp), %rcx	# reg, tmp62
	movl	-16(%rbp), %edx	# c_out, tmp63
	movl	-12(%rbp), %esi	# c_in, tmp64
	movl	-8(%rbp), %eax	# b_in, tmp65
	movl	%eax, %edi	# tmp65,
	call	quantum_toffoli	#
.L22:
	.loc 1 168 0
	cmpl	$3, -4(%rbp)	#, a
	jne	.L23	#,
	.loc 1 169 0
	movq	24(%rbp), %rdx	# reg, tmp66
	movl	-12(%rbp), %ecx	# c_in, tmp67
	movl	-8(%rbp), %eax	# b_in, tmp68
	movl	%ecx, %esi	# tmp67,
	movl	%eax, %edi	# tmp68,
	call	quantum_cnot	#
	.loc 1 170 0
	movq	24(%rbp), %rcx	# reg, tmp69
	movl	-16(%rbp), %edx	# c_out, tmp70
	movl	-12(%rbp), %esi	# c_in, tmp71
	movl	-8(%rbp), %eax	# b_in, tmp72
	movl	%eax, %edi	# tmp72,
	call	quantum_toffoli	#
	.loc 1 171 0
	movq	24(%rbp), %rdx	# reg, tmp73
	movl	-12(%rbp), %ecx	# c_in, tmp74
	movl	-24(%rbp), %eax	# L, tmp75
	movl	%ecx, %esi	# tmp74,
	movl	%eax, %edi	# tmp75,
	call	quantum_cnot	#
	.loc 1 172 0
	movq	24(%rbp), %rcx	# reg, tmp76
	movl	-16(%rbp), %edx	# c_out, tmp77
	movl	-12(%rbp), %esi	# c_in, tmp78
	movl	-24(%rbp), %eax	# L, tmp79
	movl	%eax, %edi	# tmp79,
	call	quantum_toffoli	#
.L23:
	.loc 1 175 0
	cmpl	$1, -4(%rbp)	#, a
	jne	.L24	#,
	.loc 1 176 0
	movq	24(%rbp), %rdx	# reg, tmp80
	movl	-12(%rbp), %ecx	# c_in, tmp81
	movl	-8(%rbp), %eax	# b_in, tmp82
	movl	%ecx, %esi	# tmp81,
	movl	%eax, %edi	# tmp82,
	call	quantum_cnot	#
	.loc 1 177 0
	movq	24(%rbp), %rcx	# reg, tmp83
	movl	-16(%rbp), %edx	# c_out, tmp84
	movl	-12(%rbp), %esi	# c_in, tmp85
	movl	-8(%rbp), %eax	# b_in, tmp86
	movl	%eax, %edi	# tmp86,
	call	quantum_toffoli	#
	.loc 1 178 0
	movq	24(%rbp), %rcx	# reg, tmp87
	movl	-12(%rbp), %edx	# c_in, tmp88
	movl	-20(%rbp), %esi	# xlt_l, tmp89
	movl	-24(%rbp), %eax	# L, tmp90
	movl	%eax, %edi	# tmp90,
	call	quantum_toffoli	#
	.loc 1 179 0
	movq	24(%rbp), %rcx	# reg, tmp91
	movl	-16(%rbp), %edx	# c_out, tmp92
	movl	-12(%rbp), %esi	# c_in, tmp93
	movl	-8(%rbp), %eax	# b_in, tmp94
	movl	%eax, %edi	# tmp94,
	call	quantum_toffoli	#
	.loc 1 180 0
	movq	24(%rbp), %rcx	# reg, tmp95
	movl	-8(%rbp), %edx	# b_in, tmp96
	movl	-20(%rbp), %esi	# xlt_l, tmp97
	movl	-24(%rbp), %eax	# L, tmp98
	movl	%eax, %edi	# tmp98,
	call	quantum_toffoli	#
	.loc 1 181 0
	movq	24(%rbp), %rcx	# reg, tmp99
	movl	-16(%rbp), %edx	# c_out, tmp100
	movl	-12(%rbp), %esi	# c_in, tmp101
	movl	-8(%rbp), %eax	# b_in, tmp102
	movl	%eax, %edi	# tmp102,
	call	quantum_toffoli	#
	.loc 1 182 0
	movq	24(%rbp), %rcx	# reg, tmp103
	movl	-8(%rbp), %edx	# b_in, tmp104
	movl	-20(%rbp), %esi	# xlt_l, tmp105
	movl	-24(%rbp), %eax	# L, tmp106
	movl	%eax, %edi	# tmp106,
	call	quantum_toffoli	#
.L24:
	.loc 1 186 0
	cmpl	$2, -4(%rbp)	#, a
	jne	.L21	#,
	.loc 1 187 0
	movq	24(%rbp), %rdx	# reg, tmp107
	movl	-20(%rbp), %eax	# xlt_l, tmp108
	movq	%rdx, %rsi	# tmp107,
	movl	%eax, %edi	# tmp108,
	call	quantum_sigma_x	#
	.loc 1 188 0
	movq	24(%rbp), %rdx	# reg, tmp109
	movl	-12(%rbp), %ecx	# c_in, tmp110
	movl	-8(%rbp), %eax	# b_in, tmp111
	movl	%ecx, %esi	# tmp110,
	movl	%eax, %edi	# tmp111,
	call	quantum_cnot	#
	.loc 1 189 0
	movq	24(%rbp), %rcx	# reg, tmp112
	movl	-16(%rbp), %edx	# c_out, tmp113
	movl	-12(%rbp), %esi	# c_in, tmp114
	movl	-8(%rbp), %eax	# b_in, tmp115
	movl	%eax, %edi	# tmp115,
	call	quantum_toffoli	#
	.loc 1 190 0
	movq	24(%rbp), %rcx	# reg, tmp116
	movl	-12(%rbp), %edx	# c_in, tmp117
	movl	-20(%rbp), %esi	# xlt_l, tmp118
	movl	-24(%rbp), %eax	# L, tmp119
	movl	%eax, %edi	# tmp119,
	call	quantum_toffoli	#
	.loc 1 191 0
	movq	24(%rbp), %rcx	# reg, tmp120
	movl	-16(%rbp), %edx	# c_out, tmp121
	movl	-12(%rbp), %esi	# c_in, tmp122
	movl	-8(%rbp), %eax	# b_in, tmp123
	movl	%eax, %edi	# tmp123,
	call	quantum_toffoli	#
	.loc 1 192 0
	movq	24(%rbp), %rcx	# reg, tmp124
	movl	-8(%rbp), %edx	# b_in, tmp125
	movl	-20(%rbp), %esi	# xlt_l, tmp126
	movl	-24(%rbp), %eax	# L, tmp127
	movl	%eax, %edi	# tmp127,
	call	quantum_toffoli	#
	.loc 1 193 0
	movq	24(%rbp), %rcx	# reg, tmp128
	movl	-16(%rbp), %edx	# c_out, tmp129
	movl	-12(%rbp), %esi	# c_in, tmp130
	movl	-8(%rbp), %eax	# b_in, tmp131
	movl	%eax, %edi	# tmp131,
	call	quantum_toffoli	#
	.loc 1 194 0
	movq	24(%rbp), %rcx	# reg, tmp132
	movl	-8(%rbp), %edx	# b_in, tmp133
	movl	-20(%rbp), %esi	# xlt_l, tmp134
	movl	-24(%rbp), %eax	# L, tmp135
	movl	%eax, %edi	# tmp135,
	call	quantum_toffoli	#
	.loc 1 195 0
	movq	24(%rbp), %rdx	# reg, tmp136
	movl	-20(%rbp), %eax	# xlt_l, tmp137
	movq	%rdx, %rsi	# tmp136,
	movl	%eax, %edi	# tmp137,
	call	quantum_sigma_x	#
.L21:
	.loc 1 197 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	muxfa_inv, .-muxfa_inv
	.globl	muxha
	.type	muxha, @function
muxha:
.LFB8:
	.loc 1 204 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	%edi, -4(%rbp)	# a, a
	movl	%esi, -8(%rbp)	# b_in, b_in
	movl	%edx, -12(%rbp)	# c_in, c_in
	movl	%ecx, -16(%rbp)	# xlt_l, xlt_l
	movl	%r8d, -20(%rbp)	# L, L
	movl	%r9d, -24(%rbp)	# total, total
	.loc 1 206 0
	cmpl	$0, -4(%rbp)	#, a
	jne	.L27	#,
	.loc 1 207 0
	movl	-12(%rbp), %ecx	# c_in, tmp59
	movl	-8(%rbp), %eax	# b_in, tmp60
	movq	16(%rbp), %rdx	# reg,
	movl	%ecx, %esi	# tmp59,
	movl	%eax, %edi	# tmp60,
	call	quantum_cnot	#
.L27:
	.loc 1 210 0
	cmpl	$3, -4(%rbp)	#, a
	jne	.L28	#,
	.loc 1 211 0
	movl	-12(%rbp), %ecx	# c_in, tmp61
	movl	-20(%rbp), %eax	# L, tmp62
	movq	16(%rbp), %rdx	# reg,
	movl	%ecx, %esi	# tmp61,
	movl	%eax, %edi	# tmp62,
	call	quantum_cnot	#
	.loc 1 212 0
	movl	-12(%rbp), %ecx	# c_in, tmp63
	movl	-8(%rbp), %eax	# b_in, tmp64
	movq	16(%rbp), %rdx	# reg,
	movl	%ecx, %esi	# tmp63,
	movl	%eax, %edi	# tmp64,
	call	quantum_cnot	#
.L28:
	.loc 1 215 0
	cmpl	$1, -4(%rbp)	#, a
	jne	.L29	#,
	.loc 1 216 0
	movl	-12(%rbp), %edx	# c_in, tmp65
	movl	-16(%rbp), %esi	# xlt_l, tmp66
	movl	-20(%rbp), %eax	# L, tmp67
	movq	16(%rbp), %rcx	# reg,
	movl	%eax, %edi	# tmp67,
	call	quantum_toffoli	#
	.loc 1 217 0
	movl	-12(%rbp), %ecx	# c_in, tmp68
	movl	-8(%rbp), %eax	# b_in, tmp69
	movq	16(%rbp), %rdx	# reg,
	movl	%ecx, %esi	# tmp68,
	movl	%eax, %edi	# tmp69,
	call	quantum_cnot	#
.L29:
	.loc 1 221 0
	cmpl	$2, -4(%rbp)	#, a
	jne	.L26	#,
	.loc 1 222 0
	movl	-16(%rbp), %eax	# xlt_l, tmp70
	movq	16(%rbp), %rsi	# reg,
	movl	%eax, %edi	# tmp70,
	call	quantum_sigma_x	#
	.loc 1 223 0
	movl	-12(%rbp), %edx	# c_in, tmp71
	movl	-16(%rbp), %esi	# xlt_l, tmp72
	movl	-20(%rbp), %eax	# L, tmp73
	movq	16(%rbp), %rcx	# reg,
	movl	%eax, %edi	# tmp73,
	call	quantum_toffoli	#
	.loc 1 224 0
	movl	-12(%rbp), %ecx	# c_in, tmp74
	movl	-8(%rbp), %eax	# b_in, tmp75
	movq	16(%rbp), %rdx	# reg,
	movl	%ecx, %esi	# tmp74,
	movl	%eax, %edi	# tmp75,
	call	quantum_cnot	#
	.loc 1 225 0
	movl	-16(%rbp), %eax	# xlt_l, tmp76
	movq	16(%rbp), %rsi	# reg,
	movl	%eax, %edi	# tmp76,
	call	quantum_sigma_x	#
.L26:
	.loc 1 227 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	muxha, .-muxha
	.globl	muxha_inv
	.type	muxha_inv, @function
muxha_inv:
.LFB9:
	.loc 1 232 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	%edi, -4(%rbp)	# a, a
	movl	%esi, -8(%rbp)	# b_in, b_in
	movl	%edx, -12(%rbp)	# c_in, c_in
	movl	%ecx, -16(%rbp)	# xlt_l, xlt_l
	movl	%r8d, -20(%rbp)	# L, L
	movl	%r9d, -24(%rbp)	# total, total
	.loc 1 234 0
	cmpl	$0, -4(%rbp)	#, a
	jne	.L32	#,
	.loc 1 235 0
	movl	-12(%rbp), %ecx	# c_in, tmp59
	movl	-8(%rbp), %eax	# b_in, tmp60
	movq	16(%rbp), %rdx	# reg,
	movl	%ecx, %esi	# tmp59,
	movl	%eax, %edi	# tmp60,
	call	quantum_cnot	#
.L32:
	.loc 1 238 0
	cmpl	$3, -4(%rbp)	#, a
	jne	.L33	#,
	.loc 1 239 0
	movl	-12(%rbp), %ecx	# c_in, tmp61
	movl	-8(%rbp), %eax	# b_in, tmp62
	movq	16(%rbp), %rdx	# reg,
	movl	%ecx, %esi	# tmp61,
	movl	%eax, %edi	# tmp62,
	call	quantum_cnot	#
	.loc 1 240 0
	movl	-12(%rbp), %ecx	# c_in, tmp63
	movl	-20(%rbp), %eax	# L, tmp64
	movq	16(%rbp), %rdx	# reg,
	movl	%ecx, %esi	# tmp63,
	movl	%eax, %edi	# tmp64,
	call	quantum_cnot	#
.L33:
	.loc 1 243 0
	cmpl	$1, -4(%rbp)	#, a
	jne	.L34	#,
	.loc 1 244 0
	movl	-12(%rbp), %ecx	# c_in, tmp65
	movl	-8(%rbp), %eax	# b_in, tmp66
	movq	16(%rbp), %rdx	# reg,
	movl	%ecx, %esi	# tmp65,
	movl	%eax, %edi	# tmp66,
	call	quantum_cnot	#
	.loc 1 245 0
	movl	-12(%rbp), %edx	# c_in, tmp67
	movl	-16(%rbp), %esi	# xlt_l, tmp68
	movl	-20(%rbp), %eax	# L, tmp69
	movq	16(%rbp), %rcx	# reg,
	movl	%eax, %edi	# tmp69,
	call	quantum_toffoli	#
.L34:
	.loc 1 249 0
	cmpl	$2, -4(%rbp)	#, a
	jne	.L31	#,
	.loc 1 250 0
	movl	-16(%rbp), %eax	# xlt_l, tmp70
	movq	16(%rbp), %rsi	# reg,
	movl	%eax, %edi	# tmp70,
	call	quantum_sigma_x	#
	.loc 1 251 0
	movl	-12(%rbp), %ecx	# c_in, tmp71
	movl	-8(%rbp), %eax	# b_in, tmp72
	movq	16(%rbp), %rdx	# reg,
	movl	%ecx, %esi	# tmp71,
	movl	%eax, %edi	# tmp72,
	call	quantum_cnot	#
	.loc 1 252 0
	movl	-12(%rbp), %edx	# c_in, tmp73
	movl	-16(%rbp), %esi	# xlt_l, tmp74
	movl	-20(%rbp), %eax	# L, tmp75
	movq	16(%rbp), %rcx	# reg,
	movl	%eax, %edi	# tmp75,
	call	quantum_toffoli	#
	.loc 1 253 0
	movl	-16(%rbp), %eax	# xlt_l, tmp76
	movq	16(%rbp), %rsi	# reg,
	movl	%eax, %edi	# tmp76,
	call	quantum_sigma_x	#
.L31:
	.loc 1 255 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	muxha_inv, .-muxha_inv
	.globl	madd
	.type	madd, @function
madd:
.LFB10:
	.loc 1 259 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movl	%edi, -20(%rbp)	# a, a
	movl	%esi, -24(%rbp)	# a_inv, a_inv
	movl	%edx, -28(%rbp)	# width, width
	movq	%rcx, -40(%rbp)	# reg, reg
	.loc 1 262 0
	movl	-28(%rbp), %eax	# width, tmp82
	sall	$2, %eax	#, D.4432
	addl	$2, %eax	#, tmp83
	movl	%eax, -4(%rbp)	# tmp83, total
	.loc 1 263 0
	movl	$0, -12(%rbp)	#, i
	jmp	.L37	#
.L41:
	.loc 1 264 0
	movl	-12(%rbp), %eax	# i, tmp84
	movl	-20(%rbp), %edx	# a, tmp85
	movl	%eax, %ecx	# tmp84, tmp110
	sarl	%cl, %edx	# tmp110, D.4432
	movl	%edx, %eax	# D.4432, D.4432
	andl	$1, %eax	#, D.4432
	testl	%eax, %eax	# D.4432
	je	.L38	#,
	.loc 1 264 0 is_stmt 0 discriminator 1
	movl	$2, -8(%rbp)	#, j
	jmp	.L39	#
.L38:
	.loc 1 265 0 is_stmt 1
	movl	$0, -8(%rbp)	#, j
.L39:
	.loc 1 266 0
	movl	-12(%rbp), %eax	# i, tmp86
	movl	-24(%rbp), %edx	# a_inv, tmp87
	movl	%eax, %ecx	# tmp86, tmp112
	sarl	%cl, %edx	# tmp112, D.4432
	movl	%edx, %eax	# D.4432, D.4432
	andl	$1, %eax	#, D.4432
	testl	%eax, %eax	# D.4432
	je	.L40	#,
	.loc 1 266 0 is_stmt 0 discriminator 1
	addl	$1, -8(%rbp)	#, j
.L40:
	.loc 1 267 0 is_stmt 1
	movl	-28(%rbp), %eax	# width, tmp88
	addl	%eax, %eax	# D.4432
	leal	1(%rax), %r9d	#, D.4432
	movl	-28(%rbp), %eax	# width, tmp89
	leal	(%rax,%rax), %r8d	#, D.4432
	movl	-12(%rbp), %eax	# i, tmp90
	leal	1(%rax), %edi	#, D.4432
	movl	-12(%rbp), %eax	# i, tmp91
	movl	-28(%rbp), %edx	# width, tmp92
	leal	(%rdx,%rax), %esi	#, D.4432
	movl	-12(%rbp), %edx	# i, tmp93
	movl	-8(%rbp), %eax	# j, tmp94
	movq	-40(%rbp), %rcx	# reg, tmp95
	movq	%rcx, 8(%rsp)	# tmp95,
	movl	-4(%rbp), %ecx	# total, tmp96
	movl	%ecx, (%rsp)	# tmp96,
	movl	%edi, %ecx	# D.4432,
	movl	%eax, %edi	# tmp94,
	call	muxfa	#
	.loc 1 263 0
	addl	$1, -12(%rbp)	#, i
.L37:
	.loc 1 263 0 is_stmt 0 discriminator 1
	movl	-28(%rbp), %eax	# width, tmp97
	subl	$1, %eax	#, D.4432
	cmpl	-12(%rbp), %eax	# i, D.4432
	jg	.L41	#,
	.loc 1 269 0 is_stmt 1
	movl	$0, -8(%rbp)	#, j
	.loc 1 270 0
	movl	-28(%rbp), %eax	# width, tmp98
	subl	$1, %eax	#, D.4432
	movl	-20(%rbp), %edx	# a, tmp99
	movl	%eax, %ecx	# D.4432, tmp114
	sarl	%cl, %edx	# tmp114, D.4432
	movl	%edx, %eax	# D.4432, D.4432
	andl	$1, %eax	#, D.4432
	testl	%eax, %eax	# D.4432
	je	.L42	#,
	.loc 1 270 0 is_stmt 0 discriminator 1
	movl	$2, -8(%rbp)	#, j
.L42:
	.loc 1 271 0 is_stmt 1
	movl	-28(%rbp), %eax	# width, tmp100
	subl	$1, %eax	#, D.4432
	movl	-24(%rbp), %edx	# a_inv, tmp101
	movl	%eax, %ecx	# D.4432, tmp116
	sarl	%cl, %edx	# tmp116, D.4432
	movl	%edx, %eax	# D.4432, D.4432
	andl	$1, %eax	#, D.4432
	testl	%eax, %eax	# D.4432
	je	.L43	#,
	.loc 1 271 0 is_stmt 0 discriminator 1
	addl	$1, -8(%rbp)	#, j
.L43:
	.loc 1 272 0 is_stmt 1
	movl	-28(%rbp), %eax	# width, tmp102
	addl	%eax, %eax	# D.4432
	leal	1(%rax), %r10d	#, D.4432
	movl	-28(%rbp), %eax	# width, tmp103
	leal	(%rax,%rax), %ecx	#, D.4432
	movl	-28(%rbp), %eax	# width, tmp104
	leal	-1(%rax), %edi	#, D.4432
	movl	-28(%rbp), %eax	# width, tmp105
	addl	%eax, %eax	# D.4432
	leal	-1(%rax), %esi	#, D.4432
	movl	-4(%rbp), %r8d	# total, tmp106
	movl	-8(%rbp), %eax	# j, tmp107
	movq	-40(%rbp), %rdx	# reg, tmp108
	movq	%rdx, (%rsp)	# tmp108,
	movl	%r8d, %r9d	# tmp106,
	movl	%r10d, %r8d	# D.4432,
	movl	%edi, %edx	# D.4432,
	movl	%eax, %edi	# tmp107,
	call	muxha	#
	.loc 1 273 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	madd, .-madd
	.globl	madd_inv
	.type	madd_inv, @function
madd_inv:
.LFB11:
	.loc 1 275 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movl	%edi, -20(%rbp)	# a, a
	movl	%esi, -24(%rbp)	# a_inv, a_inv
	movl	%edx, -28(%rbp)	# width, width
	movq	%rcx, -40(%rbp)	# reg, reg
	.loc 1 278 0
	movl	-28(%rbp), %eax	# width, tmp82
	sall	$2, %eax	#, D.4433
	addl	$2, %eax	#, tmp83
	movl	%eax, -4(%rbp)	# tmp83, total
	.loc 1 279 0
	movl	$0, -8(%rbp)	#, j
	.loc 1 281 0
	movl	-28(%rbp), %eax	# width, tmp84
	subl	$1, %eax	#, D.4433
	movl	-20(%rbp), %edx	# a, tmp85
	movl	%eax, %ecx	# D.4433, tmp114
	sarl	%cl, %edx	# tmp114, D.4433
	movl	%edx, %eax	# D.4433, D.4433
	andl	$1, %eax	#, D.4433
	testl	%eax, %eax	# D.4433
	je	.L45	#,
	.loc 1 281 0 is_stmt 0 discriminator 1
	movl	$2, -8(%rbp)	#, j
.L45:
	.loc 1 282 0 is_stmt 1
	movl	-28(%rbp), %eax	# width, tmp86
	subl	$1, %eax	#, D.4433
	movl	-24(%rbp), %edx	# a_inv, tmp87
	movl	%eax, %ecx	# D.4433, tmp116
	sarl	%cl, %edx	# tmp116, D.4433
	movl	%edx, %eax	# D.4433, D.4433
	andl	$1, %eax	#, D.4433
	testl	%eax, %eax	# D.4433
	je	.L46	#,
	.loc 1 282 0 is_stmt 0 discriminator 1
	addl	$1, -8(%rbp)	#, j
.L46:
	.loc 1 283 0 is_stmt 1
	movl	-28(%rbp), %eax	# width, tmp88
	addl	%eax, %eax	# D.4433
	leal	1(%rax), %r10d	#, D.4433
	movl	-28(%rbp), %eax	# width, tmp89
	leal	(%rax,%rax), %ecx	#, D.4433
	movl	-28(%rbp), %eax	# width, tmp90
	addl	%eax, %eax	# D.4433
	leal	-1(%rax), %edi	#, D.4433
	movl	-28(%rbp), %eax	# width, tmp91
	leal	-1(%rax), %esi	#, D.4433
	movl	-4(%rbp), %r8d	# total, tmp92
	movl	-8(%rbp), %eax	# j, tmp93
	movq	-40(%rbp), %rdx	# reg, tmp94
	movq	%rdx, (%rsp)	# tmp94,
	movl	%r8d, %r9d	# tmp92,
	movl	%r10d, %r8d	# D.4433,
	movl	%edi, %edx	# D.4433,
	movl	%eax, %edi	# tmp93,
	call	muxha_inv	#
	.loc 1 285 0
	movl	-28(%rbp), %eax	# width, tmp98
	subl	$2, %eax	#, tmp97
	movl	%eax, -12(%rbp)	# tmp97, i
	jmp	.L47	#
.L51:
	.loc 1 286 0
	movl	-12(%rbp), %eax	# i, tmp99
	movl	-20(%rbp), %edx	# a, tmp100
	movl	%eax, %ecx	# tmp99, tmp118
	sarl	%cl, %edx	# tmp118, D.4433
	movl	%edx, %eax	# D.4433, D.4433
	andl	$1, %eax	#, D.4433
	testl	%eax, %eax	# D.4433
	je	.L48	#,
	.loc 1 286 0 is_stmt 0 discriminator 1
	movl	$2, -8(%rbp)	#, j
	jmp	.L49	#
.L48:
	.loc 1 287 0 is_stmt 1
	movl	$0, -8(%rbp)	#, j
.L49:
	.loc 1 288 0
	movl	-12(%rbp), %eax	# i, tmp101
	movl	-24(%rbp), %edx	# a_inv, tmp102
	movl	%eax, %ecx	# tmp101, tmp120
	sarl	%cl, %edx	# tmp120, D.4433
	movl	%edx, %eax	# D.4433, D.4433
	andl	$1, %eax	#, D.4433
	testl	%eax, %eax	# D.4433
	je	.L50	#,
	.loc 1 288 0 is_stmt 0 discriminator 1
	addl	$1, -8(%rbp)	#, j
.L50:
	.loc 1 289 0 is_stmt 1
	movl	-28(%rbp), %eax	# width, tmp103
	addl	%eax, %eax	# D.4433
	leal	1(%rax), %r9d	#, D.4433
	movl	-28(%rbp), %eax	# width, tmp104
	leal	(%rax,%rax), %r8d	#, D.4433
	movl	-28(%rbp), %eax	# width, tmp105
	leal	1(%rax), %edx	#, D.4433
	movl	-12(%rbp), %eax	# i, tmp106
	leal	(%rdx,%rax), %ecx	#, D.4433
	movl	-12(%rbp), %eax	# i, tmp107
	movl	-28(%rbp), %edx	# width, tmp108
	leal	(%rdx,%rax), %edi	#, D.4433
	movl	-12(%rbp), %esi	# i, tmp109
	movl	-8(%rbp), %eax	# j, tmp110
	movq	-40(%rbp), %rdx	# reg, tmp111
	movq	%rdx, 8(%rsp)	# tmp111,
	movl	-4(%rbp), %edx	# total, tmp112
	movl	%edx, (%rsp)	# tmp112,
	movl	%edi, %edx	# D.4433,
	movl	%eax, %edi	# tmp110,
	call	muxfa_inv	#
	.loc 1 285 0
	subl	$1, -12(%rbp)	#, i
.L47:
	.loc 1 285 0 is_stmt 0 discriminator 1
	cmpl	$0, -12(%rbp)	#, i
	jns	.L51	#,
	.loc 1 291 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	madd_inv, .-madd_inv
	.globl	addn
	.type	addn, @function
addn:
.LFB12:
	.loc 1 293 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	%edi, -4(%rbp)	# N, N
	movl	%esi, -8(%rbp)	# a, a
	movl	%edx, -12(%rbp)	# width, width
	movq	%rcx, -24(%rbp)	# reg, reg
	.loc 1 295 0
	movl	-8(%rbp), %eax	# a, tmp63
	movl	-4(%rbp), %edx	# N, tmp64
	movl	%edx, %ecx	# tmp64, D.4434
	subl	%eax, %ecx	# tmp63, D.4434
	movq	-24(%rbp), %rdx	# reg, tmp65
	movl	-12(%rbp), %eax	# width, tmp66
	movl	%eax, %esi	# tmp66,
	movl	%ecx, %edi	# D.4434,
	call	test_sum	#
	.loc 1 296 0
	movl	-12(%rbp), %eax	# width, tmp67
	movl	$1, %edx	#, tmp68
	movl	%eax, %ecx	# tmp67, tmp74
	sall	%cl, %edx	# tmp74, D.4434
	movl	-8(%rbp), %eax	# a, tmp69
	addl	%edx, %eax	# D.4434, D.4434
	subl	-4(%rbp), %eax	# N, D.4434
	movq	-24(%rbp), %rcx	# reg, tmp70
	movl	-12(%rbp), %edx	# width, tmp71
	movl	-8(%rbp), %esi	# a, tmp72
	movl	%eax, %edi	# D.4434,
	call	madd	#
	.loc 1 298 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	addn, .-addn
	.globl	addn_inv
	.type	addn_inv, @function
addn_inv:
.LFB13:
	.loc 1 300 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	%edi, -4(%rbp)	# N, N
	movl	%esi, -8(%rbp)	# a, a
	movl	%edx, -12(%rbp)	# width, width
	movq	%rcx, -24(%rbp)	# reg, reg
	.loc 1 302 0
	movl	-12(%rbp), %eax	# width, tmp65
	leal	(%rax,%rax), %esi	#, D.4435
	movl	-12(%rbp), %eax	# width, tmp66
	addl	%eax, %eax	# D.4435
	leal	1(%rax), %ecx	#, D.4435
	movq	-24(%rbp), %rax	# reg, tmp67
	movq	%rax, %rdx	# tmp67,
	movl	%ecx, %edi	# D.4435,
	call	quantum_cnot	#
	.loc 1 303 0
	movl	-8(%rbp), %eax	# a, tmp68
	movl	-4(%rbp), %edx	# N, tmp69
	movl	%edx, %esi	# tmp69, D.4435
	subl	%eax, %esi	# tmp68, D.4435
	movl	-12(%rbp), %eax	# width, tmp70
	movl	$1, %edx	#, tmp71
	movl	%eax, %ecx	# tmp70, tmp81
	sall	%cl, %edx	# tmp81, D.4435
	movl	%edx, %eax	# D.4435, D.4435
	subl	-8(%rbp), %eax	# a, D.4435
	movq	-24(%rbp), %rcx	# reg, tmp72
	movl	-12(%rbp), %edx	# width, tmp73
	movl	%eax, %edi	# D.4435,
	call	madd_inv	#
	.loc 1 305 0
	movq	-24(%rbp), %rdx	# reg, tmp74
	movl	-12(%rbp), %eax	# width, tmp75
	movq	%rdx, %rsi	# tmp74,
	movl	%eax, %edi	# tmp75,
	call	quantum_swaptheleads	#
	.loc 1 307 0
	movq	-24(%rbp), %rdx	# reg, tmp76
	movl	-12(%rbp), %ecx	# width, tmp77
	movl	-8(%rbp), %eax	# a, tmp78
	movl	%ecx, %esi	# tmp77,
	movl	%eax, %edi	# tmp78,
	call	test_sum	#
	.loc 1 308 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	addn_inv, .-addn_inv
	.globl	add_mod_n
	.type	add_mod_n, @function
add_mod_n:
.LFB14:
	.loc 1 310 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	%edi, -4(%rbp)	# N, N
	movl	%esi, -8(%rbp)	# a, a
	movl	%edx, -12(%rbp)	# width, width
	movq	%rcx, -24(%rbp)	# reg, reg
	.loc 1 312 0
	movq	-24(%rbp), %rcx	# reg, tmp59
	movl	-12(%rbp), %edx	# width, tmp60
	movl	-8(%rbp), %esi	# a, tmp61
	movl	-4(%rbp), %eax	# N, tmp62
	movl	%eax, %edi	# tmp62,
	call	addn	#
	.loc 1 313 0
	movq	-24(%rbp), %rcx	# reg, tmp63
	movl	-12(%rbp), %edx	# width, tmp64
	movl	-8(%rbp), %esi	# a, tmp65
	movl	-4(%rbp), %eax	# N, tmp66
	movl	%eax, %edi	# tmp66,
	call	addn_inv	#
	.loc 1 314 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	add_mod_n, .-add_mod_n
.Letext0:
	.file 2 "qureg.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x58e
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF41
	.byte	0x1
	.long	.LASF42
	.long	.LASF43
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
	.byte	0x23
	.long	0xc1
	.uleb128 0x6
	.long	.LASF14
	.byte	0x2
	.byte	0x25
	.long	0x95
	.byte	0
	.uleb128 0x6
	.long	.LASF15
	.byte	0x2
	.byte	0x26
	.long	0x80
	.byte	0x8
	.byte	0
	.uleb128 0x7
	.long	.LASF23
	.byte	0x2
	.byte	0x29
	.long	0x9c
	.uleb128 0x5
	.long	.LASF17
	.byte	0x20
	.byte	0x2
	.byte	0x2d
	.long	0x115
	.uleb128 0x6
	.long	.LASF18
	.byte	0x2
	.byte	0x2f
	.long	0x34
	.byte	0
	.uleb128 0x6
	.long	.LASF19
	.byte	0x2
	.byte	0x30
	.long	0x34
	.byte	0x4
	.uleb128 0x6
	.long	.LASF20
	.byte	0x2
	.byte	0x31
	.long	0x34
	.byte	0x8
	.uleb128 0x6
	.long	.LASF21
	.byte	0x2
	.byte	0x32
	.long	0x115
	.byte	0x10
	.uleb128 0x6
	.long	.LASF22
	.byte	0x2
	.byte	0x33
	.long	0x73
	.byte	0x18
	.byte	0
	.uleb128 0x4
	.byte	0x8
	.long	0xc1
	.uleb128 0x7
	.long	.LASF24
	.byte	0x2
	.byte	0x36
	.long	0xcc
	.uleb128 0x8
	.long	.LASF26
	.byte	0x1
	.byte	0x2c
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x17a
	.uleb128 0x9
	.long	.LASF25
	.byte	0x1
	.byte	0x2c
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x9
	.long	.LASF18
	.byte	0x1
	.byte	0x2c
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xa
	.string	"reg"
	.byte	0x1
	.byte	0x2c
	.long	0x17a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xb
	.string	"i"
	.byte	0x1
	.byte	0x2e
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x4
	.byte	0x8
	.long	0x11b
	.uleb128 0x8
	.long	.LASF27
	.byte	0x1
	.byte	0x78
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x20a
	.uleb128 0xa
	.string	"a"
	.byte	0x1
	.byte	0x78
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x9
	.long	.LASF28
	.byte	0x1
	.byte	0x78
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x9
	.long	.LASF29
	.byte	0x1
	.byte	0x78
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x9
	.long	.LASF30
	.byte	0x1
	.byte	0x78
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x9
	.long	.LASF31
	.byte	0x1
	.byte	0x78
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xa
	.string	"L"
	.byte	0x1
	.byte	0x78
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x9
	.long	.LASF32
	.byte	0x1
	.byte	0x78
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xa
	.string	"reg"
	.byte	0x1
	.byte	0x78
	.long	0x17a
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.byte	0
	.uleb128 0x8
	.long	.LASF33
	.byte	0x1
	.byte	0xa1
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x294
	.uleb128 0xa
	.string	"a"
	.byte	0x1
	.byte	0xa1
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x9
	.long	.LASF28
	.byte	0x1
	.byte	0xa1
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x9
	.long	.LASF29
	.byte	0x1
	.byte	0xa1
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x9
	.long	.LASF30
	.byte	0x1
	.byte	0xa1
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x9
	.long	.LASF31
	.byte	0x1
	.byte	0xa1
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xa
	.string	"L"
	.byte	0x1
	.byte	0xa1
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x9
	.long	.LASF32
	.byte	0x1
	.byte	0xa1
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xa
	.string	"reg"
	.byte	0x1
	.byte	0xa1
	.long	0x17a
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.byte	0
	.uleb128 0x8
	.long	.LASF34
	.byte	0x1
	.byte	0xcc
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x310
	.uleb128 0xa
	.string	"a"
	.byte	0x1
	.byte	0xcc
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x9
	.long	.LASF28
	.byte	0x1
	.byte	0xcc
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x9
	.long	.LASF29
	.byte	0x1
	.byte	0xcc
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x9
	.long	.LASF31
	.byte	0x1
	.byte	0xcc
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xa
	.string	"L"
	.byte	0x1
	.byte	0xcc
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x9
	.long	.LASF32
	.byte	0x1
	.byte	0xcc
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xa
	.string	"reg"
	.byte	0x1
	.byte	0xcc
	.long	0x17a
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x8
	.long	.LASF35
	.byte	0x1
	.byte	0xe8
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x38c
	.uleb128 0xa
	.string	"a"
	.byte	0x1
	.byte	0xe8
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x9
	.long	.LASF28
	.byte	0x1
	.byte	0xe8
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x9
	.long	.LASF29
	.byte	0x1
	.byte	0xe8
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x9
	.long	.LASF31
	.byte	0x1
	.byte	0xe8
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xa
	.string	"L"
	.byte	0x1
	.byte	0xe8
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x9
	.long	.LASF32
	.byte	0x1
	.byte	0xe8
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xa
	.string	"reg"
	.byte	0x1
	.byte	0xe8
	.long	0x17a
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0xc
	.long	.LASF36
	.byte	0x1
	.value	0x103
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x40e
	.uleb128 0xd
	.string	"a"
	.byte	0x1
	.value	0x103
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xe
	.long	.LASF37
	.byte	0x1
	.value	0x103
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xe
	.long	.LASF18
	.byte	0x1
	.value	0x103
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xd
	.string	"reg"
	.byte	0x1
	.value	0x103
	.long	0x17a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xf
	.string	"i"
	.byte	0x1
	.value	0x104
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xf
	.string	"j"
	.byte	0x1
	.value	0x104
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x10
	.long	.LASF32
	.byte	0x1
	.value	0x105
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xc
	.long	.LASF38
	.byte	0x1
	.value	0x113
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x490
	.uleb128 0xd
	.string	"a"
	.byte	0x1
	.value	0x113
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xe
	.long	.LASF37
	.byte	0x1
	.value	0x113
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xe
	.long	.LASF18
	.byte	0x1
	.value	0x113
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xd
	.string	"reg"
	.byte	0x1
	.value	0x113
	.long	0x17a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xf
	.string	"i"
	.byte	0x1
	.value	0x114
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xf
	.string	"j"
	.byte	0x1
	.value	0x114
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x10
	.long	.LASF32
	.byte	0x1
	.value	0x115
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xc
	.long	.LASF39
	.byte	0x1
	.value	0x125
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x4e7
	.uleb128 0xd
	.string	"N"
	.byte	0x1
	.value	0x125
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xd
	.string	"a"
	.byte	0x1
	.value	0x125
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xe
	.long	.LASF18
	.byte	0x1
	.value	0x125
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xd
	.string	"reg"
	.byte	0x1
	.value	0x125
	.long	0x17a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0xc
	.long	.LASF40
	.byte	0x1
	.value	0x12c
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x53e
	.uleb128 0xd
	.string	"N"
	.byte	0x1
	.value	0x12c
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xd
	.string	"a"
	.byte	0x1
	.value	0x12c
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xe
	.long	.LASF18
	.byte	0x1
	.value	0x12c
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xd
	.string	"reg"
	.byte	0x1
	.value	0x12c
	.long	0x17a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x11
	.long	.LASF44
	.byte	0x1
	.value	0x136
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xd
	.string	"N"
	.byte	0x1
	.value	0x136
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xd
	.string	"a"
	.byte	0x1
	.value	0x136
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xe
	.long	.LASF18
	.byte	0x1
	.value	0x136
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xd
	.string	"reg"
	.byte	0x1
	.value	0x136
	.long	0x17a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
.LASF38:
	.string	"madd_inv"
.LASF15:
	.string	"state"
.LASF37:
	.string	"a_inv"
.LASF31:
	.string	"xlt_l"
.LASF17:
	.string	"quantum_reg_struct"
.LASF23:
	.string	"quantum_reg_node"
.LASF13:
	.string	"complex float"
.LASF44:
	.string	"add_mod_n"
.LASF11:
	.string	"float"
.LASF43:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/462.libquantum/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF19:
	.string	"size"
.LASF30:
	.string	"c_out"
.LASF39:
	.string	"addn"
.LASF0:
	.string	"long unsigned int"
.LASF2:
	.string	"short unsigned int"
.LASF18:
	.string	"width"
.LASF1:
	.string	"unsigned char"
.LASF35:
	.string	"muxha_inv"
.LASF12:
	.string	"double"
.LASF42:
	.string	"oaddn.c"
.LASF27:
	.string	"muxfa"
.LASF20:
	.string	"hashw"
.LASF28:
	.string	"b_in"
.LASF34:
	.string	"muxha"
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
.LASF29:
	.string	"c_in"
.LASF7:
	.string	"sizetype"
.LASF9:
	.string	"long long int"
.LASF26:
	.string	"test_sum"
.LASF8:
	.string	"char"
.LASF36:
	.string	"madd"
.LASF41:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF5:
	.string	"short int"
.LASF21:
	.string	"node"
.LASF33:
	.string	"muxfa_inv"
.LASF32:
	.string	"total"
.LASF6:
	.string	"long int"
.LASF4:
	.string	"signed char"
.LASF25:
	.string	"compare"
.LASF40:
	.string	"addn_inv"
.LASF14:
	.string	"amplitude"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
