	.file	"qec.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 -D SPEC_CPU_LINUX qec.c -mtune=generic -march=x86-64 -g
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
	.globl	type
	.bss
	.align 4
	.type	type, @object
	.size	type, 4
type:
	.zero	4
	.globl	width
	.align 4
	.type	width, @object
	.size	width, 4
width:
	.zero	4
	.text
	.globl	quantum_qec_set_status
	.type	quantum_qec_set_status, @function
quantum_qec_set_status:
.LFB5:
	.file 1 "qec.c"
	.loc 1 48 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)	# stype, stype
	movl	%esi, -8(%rbp)	# swidth, swidth
	.loc 1 49 0
	movl	-4(%rbp), %eax	# stype, tmp59
	movl	%eax, type(%rip)	# tmp59, type
	.loc 1 50 0
	movl	-8(%rbp), %eax	# swidth, tmp60
	movl	%eax, width(%rip)	# tmp60, width
	.loc 1 51 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	quantum_qec_set_status, .-quantum_qec_set_status
	.globl	quantum_qec_get_status
	.type	quantum_qec_get_status, @function
quantum_qec_get_status:
.LFB6:
	.loc 1 57 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# ptype, ptype
	movq	%rsi, -16(%rbp)	# pwidth, pwidth
	.loc 1 58 0
	cmpq	$0, -8(%rbp)	#, ptype
	je	.L3	#,
	.loc 1 59 0
	movl	type(%rip), %edx	# type, type.0
	movq	-8(%rbp), %rax	# ptype, tmp61
	movl	%edx, (%rax)	# type.0, *ptype_1(D)
.L3:
	.loc 1 60 0
	cmpq	$0, -16(%rbp)	#, pwidth
	je	.L2	#,
	.loc 1 61 0
	movl	width(%rip), %edx	# width, width.1
	movq	-16(%rbp), %rax	# pwidth, tmp62
	movl	%edx, (%rax)	# width.1, *pwidth_3(D)
.L2:
	.loc 1 62 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	quantum_qec_get_status, .-quantum_qec_get_status
	.globl	quantum_qec_encode
	.type	quantum_qec_encode, @function
quantum_qec_encode:
.LFB7:
	.loc 1 69 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movl	%edi, -20(%rbp)	# type, type
	movl	%esi, -24(%rbp)	# width, width
	movq	%rdx, -32(%rbp)	# reg, reg
	.loc 1 73 0
	movl	$0, %eax	#,
	call	quantum_get_decoherence	#
	movss	%xmm0, -36(%rbp)	#, %sfp
	movl	-36(%rbp), %eax	# %sfp, tmp80
	movl	%eax, -4(%rbp)	# tmp80, lambda
	.loc 1 75 0
	xorps	%xmm0, %xmm0	#
	call	quantum_set_decoherence	#
	.loc 1 77 0
	movl	$0, -8(%rbp)	#, i
	jmp	.L6	#
.L10:
	.loc 1 79 0
	movq	-32(%rbp), %rax	# reg, tmp81
	movl	(%rax), %eax	# reg_4(D)->width, D.2975
	subl	$1, %eax	#, D.2975
	cmpl	-8(%rbp), %eax	# i, D.2975
	jne	.L7	#,
	.loc 1 80 0
	movl	-4(%rbp), %eax	# lambda, tmp82
	movl	%eax, -36(%rbp)	# tmp82, %sfp
	movss	-36(%rbp), %xmm0	# %sfp,
	call	quantum_set_decoherence	#
.L7:
	.loc 1 82 0
	movl	-8(%rbp), %eax	# i, tmp83
	cmpl	-24(%rbp), %eax	# width, tmp83
	jge	.L8	#,
	.loc 1 84 0
	movq	-32(%rbp), %rax	# reg, tmp84
	movl	(%rax), %edx	# reg_4(D)->width, D.2975
	movl	-8(%rbp), %eax	# i, tmp85
	addl	%eax, %edx	# tmp85, D.2975
	movq	-32(%rbp), %rax	# reg, tmp86
	movq	%rax, %rsi	# tmp86,
	movl	%edx, %edi	# D.2975,
	call	quantum_hadamard	#
	.loc 1 85 0
	movq	-32(%rbp), %rax	# reg, tmp87
	movl	(%rax), %eax	# reg_4(D)->width, D.2975
	leal	(%rax,%rax), %edx	#, D.2975
	movl	-8(%rbp), %eax	# i, tmp88
	addl	%eax, %edx	# tmp88, D.2975
	movq	-32(%rbp), %rax	# reg, tmp89
	movq	%rax, %rsi	# tmp89,
	movl	%edx, %edi	# D.2975,
	call	quantum_hadamard	#
	.loc 1 87 0
	movq	-32(%rbp), %rax	# reg, tmp90
	movl	(%rax), %edx	# reg_4(D)->width, D.2975
	movl	-8(%rbp), %eax	# i, tmp91
	leal	(%rdx,%rax), %ecx	#, D.2975
	movq	-32(%rbp), %rdx	# reg, tmp92
	movl	-8(%rbp), %eax	# i, tmp93
	movl	%eax, %esi	# tmp93,
	movl	%ecx, %edi	# D.2975,
	call	quantum_cnot	#
	.loc 1 88 0
	movq	-32(%rbp), %rax	# reg, tmp94
	movl	(%rax), %eax	# reg_4(D)->width, D.2975
	leal	(%rax,%rax), %edx	#, D.2975
	movl	-8(%rbp), %eax	# i, tmp95
	leal	(%rdx,%rax), %ecx	#, D.2975
	movq	-32(%rbp), %rdx	# reg, tmp96
	movl	-8(%rbp), %eax	# i, tmp97
	movl	%eax, %esi	# tmp97,
	movl	%ecx, %edi	# D.2975,
	call	quantum_cnot	#
	jmp	.L9	#
.L8:
	.loc 1 92 0
	movq	-32(%rbp), %rax	# reg, tmp98
	movl	(%rax), %edx	# reg_4(D)->width, D.2975
	movl	-8(%rbp), %eax	# i, tmp99
	leal	(%rdx,%rax), %ecx	#, D.2975
	movq	-32(%rbp), %rdx	# reg, tmp100
	movl	-8(%rbp), %eax	# i, tmp101
	movl	%ecx, %esi	# D.2975,
	movl	%eax, %edi	# tmp101,
	call	quantum_cnot	#
	.loc 1 93 0
	movq	-32(%rbp), %rax	# reg, tmp102
	movl	(%rax), %eax	# reg_4(D)->width, D.2975
	leal	(%rax,%rax), %edx	#, D.2975
	movl	-8(%rbp), %eax	# i, tmp103
	leal	(%rdx,%rax), %ecx	#, D.2975
	movq	-32(%rbp), %rdx	# reg, tmp104
	movl	-8(%rbp), %eax	# i, tmp105
	movl	%ecx, %esi	# D.2975,
	movl	%eax, %edi	# tmp105,
	call	quantum_cnot	#
.L9:
	.loc 1 77 0
	addl	$1, -8(%rbp)	#, i
.L6:
	.loc 1 77 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# reg, tmp106
	movl	(%rax), %eax	# reg_4(D)->width, D.2975
	cmpl	-8(%rbp), %eax	# i, D.2975
	jg	.L10	#,
	.loc 1 97 0 is_stmt 1
	movq	-32(%rbp), %rax	# reg, tmp107
	movl	(%rax), %eax	# reg_4(D)->width, D.2975
	movl	%eax, %esi	# D.2975,
	movl	$1, %edi	#,
	call	quantum_qec_set_status	#
	.loc 1 99 0
	movq	-32(%rbp), %rax	# reg, tmp108
	movl	(%rax), %edx	# reg_4(D)->width, D.2975
	movl	%edx, %eax	# D.2975, tmp109
	addl	%eax, %eax	# tmp109
	addl	%eax, %edx	# tmp109, D.2975
	movq	-32(%rbp), %rax	# reg, tmp110
	movl	%edx, (%rax)	# D.2975, reg_4(D)->width
	.loc 1 100 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	quantum_qec_encode, .-quantum_qec_encode
	.globl	quantum_qec_decode
	.type	quantum_qec_decode, @function
quantum_qec_decode:
.LFB8:
	.loc 1 107 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movl	%edi, -36(%rbp)	# type, type
	movl	%esi, -40(%rbp)	# width, width
	movq	%rdx, -48(%rbp)	# reg, reg
	.loc 1 112 0
	movl	$0, %eax	#,
	call	quantum_get_decoherence	#
	movss	%xmm0, -52(%rbp)	#, %sfp
	movl	-52(%rbp), %eax	# %sfp, tmp75
	movl	%eax, -16(%rbp)	# tmp75, lambda
	.loc 1 114 0
	xorps	%xmm0, %xmm0	#
	call	quantum_set_decoherence	#
	.loc 1 116 0
	movq	-48(%rbp), %rax	# reg, tmp76
	movl	(%rax), %ecx	# reg_4(D)->width, D.2977
	movl	$1431655766, %edx	#, tmp78
	movl	%ecx, %eax	# D.2977, tmp120
	imull	%edx	# tmp78
	movl	%ecx, %eax	# D.2977, tmp79
	sarl	$31, %eax	#, tmp79
	subl	%eax, %edx	# tmp79, tmp80
	movl	%edx, %eax	# tmp80, tmp80
	movl	%eax, -12(%rbp)	# tmp80, swidth
	.loc 1 118 0
	movl	$0, %esi	#,
	movl	$0, %edi	#,
	call	quantum_qec_set_status	#
	.loc 1 120 0
	movq	-48(%rbp), %rax	# reg, tmp81
	movl	(%rax), %ecx	# reg_4(D)->width, D.2977
	movl	$1431655766, %edx	#, tmp83
	movl	%ecx, %eax	# D.2977, tmp121
	imull	%edx	# tmp83
	movl	%ecx, %eax	# D.2977, tmp84
	sarl	$31, %eax	#, tmp84
	subl	%eax, %edx	# tmp84, D.2977
	movl	%edx, %eax	# D.2977, D.2977
	subl	$1, %eax	#, tmp85
	movl	%eax, -20(%rbp)	# tmp85, i
	jmp	.L12	#
.L16:
	.loc 1 122 0
	cmpl	$0, -20(%rbp)	#, i
	jne	.L13	#,
	.loc 1 123 0
	movl	-16(%rbp), %eax	# lambda, tmp86
	movl	%eax, -52(%rbp)	# tmp86, %sfp
	movss	-52(%rbp), %xmm0	# %sfp,
	call	quantum_set_decoherence	#
.L13:
	.loc 1 125 0
	movl	-20(%rbp), %eax	# i, tmp87
	cmpl	-40(%rbp), %eax	# width, tmp87
	jge	.L14	#,
	.loc 1 127 0
	movl	-12(%rbp), %eax	# swidth, tmp88
	leal	(%rax,%rax), %edx	#, D.2977
	movl	-20(%rbp), %eax	# i, tmp89
	leal	(%rdx,%rax), %ecx	#, D.2977
	movq	-48(%rbp), %rdx	# reg, tmp90
	movl	-20(%rbp), %eax	# i, tmp91
	movl	%eax, %esi	# tmp91,
	movl	%ecx, %edi	# D.2977,
	call	quantum_cnot	#
	.loc 1 128 0
	movl	-20(%rbp), %eax	# i, tmp92
	movl	-12(%rbp), %edx	# swidth, tmp93
	leal	(%rdx,%rax), %ecx	#, D.2977
	movq	-48(%rbp), %rdx	# reg, tmp94
	movl	-20(%rbp), %eax	# i, tmp95
	movl	%eax, %esi	# tmp95,
	movl	%ecx, %edi	# D.2977,
	call	quantum_cnot	#
	.loc 1 130 0
	movl	-12(%rbp), %eax	# swidth, tmp96
	leal	(%rax,%rax), %edx	#, D.2977
	movl	-20(%rbp), %eax	# i, tmp97
	addl	%eax, %edx	# tmp97, D.2977
	movq	-48(%rbp), %rax	# reg, tmp98
	movq	%rax, %rsi	# tmp98,
	movl	%edx, %edi	# D.2977,
	call	quantum_hadamard	#
	.loc 1 131 0
	movl	-20(%rbp), %eax	# i, tmp99
	movl	-12(%rbp), %edx	# swidth, tmp100
	addl	%eax, %edx	# tmp99, D.2977
	movq	-48(%rbp), %rax	# reg, tmp101
	movq	%rax, %rsi	# tmp101,
	movl	%edx, %edi	# D.2977,
	call	quantum_hadamard	#
	jmp	.L15	#
.L14:
	.loc 1 135 0
	movl	-12(%rbp), %eax	# swidth, tmp102
	leal	(%rax,%rax), %edx	#, D.2977
	movl	-20(%rbp), %eax	# i, tmp103
	leal	(%rdx,%rax), %ecx	#, D.2977
	movq	-48(%rbp), %rdx	# reg, tmp104
	movl	-20(%rbp), %eax	# i, tmp105
	movl	%ecx, %esi	# D.2977,
	movl	%eax, %edi	# tmp105,
	call	quantum_cnot	#
	.loc 1 136 0
	movl	-20(%rbp), %eax	# i, tmp106
	movl	-12(%rbp), %edx	# swidth, tmp107
	leal	(%rdx,%rax), %ecx	#, D.2977
	movq	-48(%rbp), %rdx	# reg, tmp108
	movl	-20(%rbp), %eax	# i, tmp109
	movl	%ecx, %esi	# D.2977,
	movl	%eax, %edi	# tmp109,
	call	quantum_cnot	#
.L15:
	.loc 1 120 0
	subl	$1, -20(%rbp)	#, i
.L12:
	.loc 1 120 0 is_stmt 0 discriminator 1
	cmpl	$0, -20(%rbp)	#, i
	jns	.L16	#,
	.loc 1 140 0 is_stmt 1
	movl	$1, -20(%rbp)	#, i
	jmp	.L17	#
.L19:
	.loc 1 142 0
	movq	-48(%rbp), %rdx	# reg, tmp110
	movl	-12(%rbp), %eax	# swidth, tmp111
	movq	%rdx, %rsi	# tmp110,
	movl	%eax, %edi	# tmp111,
	call	quantum_bmeasure	#
	movl	%eax, -8(%rbp)	# tmp112, a
	.loc 1 143 0
	movl	-12(%rbp), %eax	# swidth, tmp113
	addl	%eax, %eax	# D.2977
	subl	-20(%rbp), %eax	# i, D.2977
	movq	-48(%rbp), %rdx	# reg, tmp114
	movq	%rdx, %rsi	# tmp114,
	movl	%eax, %edi	# D.2977,
	call	quantum_bmeasure	#
	movl	%eax, -4(%rbp)	# tmp115, b
	.loc 1 144 0
	cmpl	$1, -8(%rbp)	#, a
	jne	.L18	#,
	.loc 1 144 0 is_stmt 0 discriminator 1
	cmpl	$1, -4(%rbp)	#, b
	jne	.L18	#,
	movl	-20(%rbp), %eax	# i, tmp116
	subl	$1, %eax	#, D.2977
	cmpl	-40(%rbp), %eax	# width, D.2977
	jge	.L18	#,
	.loc 1 145 0 is_stmt 1
	movl	-20(%rbp), %eax	# i, tmp117
	leal	-1(%rax), %edx	#, D.2977
	movq	-48(%rbp), %rax	# reg, tmp118
	movq	%rax, %rsi	# tmp118,
	movl	%edx, %edi	# D.2977,
	call	quantum_sigma_z	#
.L18:
	.loc 1 140 0
	addl	$1, -20(%rbp)	#, i
.L17:
	.loc 1 140 0 is_stmt 0 discriminator 1
	movl	-20(%rbp), %eax	# i, tmp119
	cmpl	-12(%rbp), %eax	# swidth, tmp119
	jle	.L19	#,
	.loc 1 147 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	quantum_qec_decode, .-quantum_qec_decode
	.globl	quantum_qec_counter
	.type	quantum_qec_counter, @function
quantum_qec_counter:
.LFB9:
	.loc 1 153 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movl	%edi, -4(%rbp)	# inc, inc
	movl	%esi, -8(%rbp)	# frequency, frequency
	movq	%rdx, -16(%rbp)	# reg, reg
	.loc 1 157 0
	cmpl	$0, -4(%rbp)	#, inc
	jle	.L21	#,
	.loc 1 158 0
	movl	counter.2757(%rip), %edx	# counter, counter.2
	movl	-4(%rbp), %eax	# inc, tmp69
	addl	%edx, %eax	# counter.2, counter.3
	movl	%eax, counter.2757(%rip)	# counter.3, counter
	jmp	.L22	#
.L21:
	.loc 1 159 0
	cmpl	$0, -4(%rbp)	#, inc
	jns	.L22	#,
	.loc 1 160 0
	movl	$0, counter.2757(%rip)	#, counter
.L22:
	.loc 1 162 0
	cmpl	$0, -8(%rbp)	#, frequency
	jle	.L23	#,
	.loc 1 163 0
	movl	-8(%rbp), %eax	# frequency, tmp70
	movl	%eax, freq.2758(%rip)	# tmp70, freq
.L23:
	.loc 1 165 0
	movl	counter.2757(%rip), %edx	# counter, counter.4
	movl	freq.2758(%rip), %eax	# freq, freq.5
	cmpl	%eax, %edx	# freq.5, counter.4
	jl	.L24	#,
	.loc 1 167 0
	movl	$0, counter.2757(%rip)	#, counter
	.loc 1 168 0
	movl	width(%rip), %ecx	# width, width.6
	movl	type(%rip), %eax	# type, type.7
	movq	-16(%rbp), %rdx	# reg, tmp71
	movl	%ecx, %esi	# width.6,
	movl	%eax, %edi	# type.7,
	call	quantum_qec_decode	#
	.loc 1 169 0
	movl	width(%rip), %ecx	# width, width.8
	movl	type(%rip), %eax	# type, type.9
	movq	-16(%rbp), %rdx	# reg, tmp72
	movl	%ecx, %esi	# width.8,
	movl	%eax, %edi	# type.9,
	call	quantum_qec_encode	#
.L24:
	.loc 1 172 0
	movl	counter.2757(%rip), %eax	# counter, D.2978
	.loc 1 173 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	quantum_qec_counter, .-quantum_qec_counter
	.globl	quantum_sigma_x_ft
	.type	quantum_sigma_x_ft, @function
quantum_sigma_x_ft:
.LFB10:
	.loc 1 179 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	%edi, -20(%rbp)	# target, target
	movq	%rsi, -32(%rbp)	# reg, reg
	.loc 1 183 0
	movl	type(%rip), %eax	# type, tmp64
	movl	%eax, -8(%rbp)	# tmp64, tmp
	.loc 1 184 0
	movl	$0, type(%rip)	#, type
	.loc 1 186 0
	movl	$0, %eax	#,
	call	quantum_get_decoherence	#
	movss	%xmm0, -24(%rbp)	#, %sfp
	movl	-24(%rbp), %eax	# %sfp, tmp65
	movl	%eax, -4(%rbp)	# tmp65, lambda
	.loc 1 187 0
	xorps	%xmm0, %xmm0	#
	call	quantum_set_decoherence	#
	.loc 1 191 0
	movq	-32(%rbp), %rdx	# reg, tmp66
	movl	-20(%rbp), %eax	# target, tmp67
	movq	%rdx, %rsi	# tmp66,
	movl	%eax, %edi	# tmp67,
	call	quantum_sigma_x	#
	.loc 1 192 0
	movl	width(%rip), %edx	# width, width.10
	movl	-20(%rbp), %eax	# target, tmp68
	addl	%eax, %edx	# tmp68, D.2979
	movq	-32(%rbp), %rax	# reg, tmp69
	movq	%rax, %rsi	# tmp69,
	movl	%edx, %edi	# D.2979,
	call	quantum_sigma_x	#
	.loc 1 193 0
	movl	-4(%rbp), %eax	# lambda, tmp70
	movl	%eax, -24(%rbp)	# tmp70, %sfp
	movss	-24(%rbp), %xmm0	# %sfp,
	call	quantum_set_decoherence	#
	.loc 1 194 0
	movl	width(%rip), %eax	# width, width.11
	leal	(%rax,%rax), %edx	#, D.2979
	movl	-20(%rbp), %eax	# target, tmp71
	addl	%eax, %edx	# tmp71, D.2979
	movq	-32(%rbp), %rax	# reg, tmp72
	movq	%rax, %rsi	# tmp72,
	movl	%edx, %edi	# D.2979,
	call	quantum_sigma_x	#
	.loc 1 196 0
	movq	-32(%rbp), %rax	# reg, tmp73
	movq	%rax, %rdx	# tmp73,
	movl	$0, %esi	#,
	movl	$1, %edi	#,
	call	quantum_qec_counter	#
	.loc 1 198 0
	movl	-8(%rbp), %eax	# tmp, tmp74
	movl	%eax, type(%rip)	# tmp74, type
	.loc 1 199 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	quantum_sigma_x_ft, .-quantum_sigma_x_ft
	.globl	quantum_cnot_ft
	.type	quantum_cnot_ft, @function
quantum_cnot_ft:
.LFB11:
	.loc 1 205 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movl	%edi, -20(%rbp)	# control, control
	movl	%esi, -24(%rbp)	# target, target
	movq	%rdx, -32(%rbp)	# reg, reg
	.loc 1 209 0
	movl	type(%rip), %eax	# type, tmp69
	movl	%eax, -8(%rbp)	# tmp69, tmp
	.loc 1 210 0
	movl	$0, type(%rip)	#, type
	.loc 1 214 0
	movl	$0, %eax	#,
	call	quantum_get_decoherence	#
	movss	%xmm0, -36(%rbp)	#, %sfp
	movl	-36(%rbp), %eax	# %sfp, tmp70
	movl	%eax, -4(%rbp)	# tmp70, lambda
	.loc 1 215 0
	xorps	%xmm0, %xmm0	#
	call	quantum_set_decoherence	#
	.loc 1 217 0
	movq	-32(%rbp), %rdx	# reg, tmp71
	movl	-24(%rbp), %ecx	# target, tmp72
	movl	-20(%rbp), %eax	# control, tmp73
	movl	%ecx, %esi	# tmp72,
	movl	%eax, %edi	# tmp73,
	call	quantum_cnot	#
	.loc 1 218 0
	movl	width(%rip), %edx	# width, width.12
	movl	-24(%rbp), %eax	# target, tmp74
	leal	(%rdx,%rax), %esi	#, D.2980
	movl	width(%rip), %edx	# width, width.13
	movl	-20(%rbp), %eax	# control, tmp75
	leal	(%rdx,%rax), %ecx	#, D.2980
	movq	-32(%rbp), %rax	# reg, tmp76
	movq	%rax, %rdx	# tmp76,
	movl	%ecx, %edi	# D.2980,
	call	quantum_cnot	#
	.loc 1 219 0
	movl	-4(%rbp), %eax	# lambda, tmp77
	movl	%eax, -36(%rbp)	# tmp77, %sfp
	movss	-36(%rbp), %xmm0	# %sfp,
	call	quantum_set_decoherence	#
	.loc 1 220 0
	movl	width(%rip), %eax	# width, width.14
	leal	(%rax,%rax), %edx	#, D.2980
	movl	-24(%rbp), %eax	# target, tmp78
	leal	(%rdx,%rax), %esi	#, D.2980
	movl	width(%rip), %eax	# width, width.15
	leal	(%rax,%rax), %edx	#, D.2980
	movl	-20(%rbp), %eax	# control, tmp79
	leal	(%rdx,%rax), %ecx	#, D.2980
	movq	-32(%rbp), %rax	# reg, tmp80
	movq	%rax, %rdx	# tmp80,
	movl	%ecx, %edi	# D.2980,
	call	quantum_cnot	#
	.loc 1 222 0
	movq	-32(%rbp), %rax	# reg, tmp81
	movq	%rax, %rdx	# tmp81,
	movl	$0, %esi	#,
	movl	$1, %edi	#,
	call	quantum_qec_counter	#
	.loc 1 224 0
	movl	-8(%rbp), %eax	# tmp, tmp82
	movl	%eax, type(%rip)	# tmp82, type
	.loc 1 226 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	quantum_cnot_ft, .-quantum_cnot_ft
	.globl	quantum_toffoli_ft
	.type	quantum_toffoli_ft, @function
quantum_toffoli_ft:
.LFB12:
	.loc 1 232 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movl	%edi, -36(%rbp)	# control1, control1
	movl	%esi, -40(%rbp)	# control2, control2
	movl	%edx, -44(%rbp)	# target, target
	movq	%rcx, -56(%rbp)	# reg, reg
	.loc 1 237 0
	movl	-44(%rbp), %eax	# target, tmp131
	movl	$1, %edx	#, tmp132
	movq	%rdx, %rsi	# tmp132, D.2981
	movl	%eax, %ecx	# tmp131, tmp164
	salq	%cl, %rsi	# tmp164, D.2981
	.loc 1 238 0
	movl	width(%rip), %edx	# width, width.16
	movl	-44(%rbp), %eax	# target, tmp133
	addl	%edx, %eax	# width.16, D.2982
	movl	$1, %edx	#, tmp134
	movl	%eax, %ecx	# D.2982, tmp166
	salq	%cl, %rdx	# tmp166, D.2981
	movq	%rdx, %rax	# D.2981, D.2981
	addq	%rax, %rsi	# D.2981, D.2981
	.loc 1 239 0
	movl	width(%rip), %eax	# width, width.17
	leal	(%rax,%rax), %edx	#, D.2982
	movl	-44(%rbp), %eax	# target, tmp135
	addl	%edx, %eax	# D.2982, D.2982
	movl	$1, %edx	#, tmp136
	movl	%eax, %ecx	# D.2982, tmp168
	salq	%cl, %rdx	# tmp168, D.2981
	movq	%rdx, %rax	# D.2981, D.2981
	.loc 1 237 0
	addq	%rsi, %rax	# D.2981, tmp137
	movq	%rax, -8(%rbp)	# tmp137, mask
	.loc 1 241 0
	movl	$0, -20(%rbp)	#, i
	jmp	.L29	#
.L37:
	.loc 1 243 0
	movl	$0, -16(%rbp)	#, c1
	.loc 1 244 0
	movl	$0, -12(%rbp)	#, c2
	.loc 1 246 0
	movq	-56(%rbp), %rax	# reg, tmp138
	movq	16(%rax), %rax	# reg_20(D)->node, D.2983
	movl	-20(%rbp), %edx	# i, tmp139
	movslq	%edx, %rdx	# tmp139, D.2984
	salq	$4, %rdx	#, D.2984
	addq	%rdx, %rax	# D.2984, D.2983
	movq	8(%rax), %rdx	# _27->state, D.2981
	movl	-36(%rbp), %eax	# control1, tmp140
	movl	%eax, %ecx	# tmp140, tmp170
	shrq	%cl, %rdx	# tmp170, D.2981
	movq	%rdx, %rax	# D.2981, D.2981
	andl	$1, %eax	#, D.2981
	testq	%rax, %rax	# D.2981
	je	.L30	#,
	.loc 1 247 0
	movl	$1, -16(%rbp)	#, c1
.L30:
	.loc 1 248 0
	movq	-56(%rbp), %rax	# reg, tmp141
	movq	16(%rax), %rax	# reg_20(D)->node, D.2983
	movl	-20(%rbp), %edx	# i, tmp142
	movslq	%edx, %rdx	# tmp142, D.2984
	salq	$4, %rdx	#, D.2984
	addq	%rdx, %rax	# D.2984, D.2983
	movq	8(%rax), %rdx	# _36->state, D.2981
	.loc 1 249 0
	movl	width(%rip), %ecx	# width, width.18
	movl	-36(%rbp), %eax	# control1, tmp143
	addl	%ecx, %eax	# width.18, D.2982
	.loc 1 248 0
	movl	%eax, %ecx	# D.2982, tmp172
	shrq	%cl, %rdx	# tmp172, D.2981
	movq	%rdx, %rax	# D.2981, D.2981
	andl	$1, %eax	#, D.2981
	testq	%rax, %rax	# D.2981
	je	.L31	#,
	.loc 1 251 0
	xorl	$1, -16(%rbp)	#, c1
.L31:
	.loc 1 253 0
	movq	-56(%rbp), %rax	# reg, tmp144
	movq	16(%rax), %rax	# reg_20(D)->node, D.2983
	movl	-20(%rbp), %edx	# i, tmp145
	movslq	%edx, %rdx	# tmp145, D.2984
	salq	$4, %rdx	#, D.2984
	addq	%rdx, %rax	# D.2984, D.2983
	movq	8(%rax), %rdx	# _46->state, D.2981
	.loc 1 254 0
	movl	width(%rip), %eax	# width, width.19
	leal	(%rax,%rax), %ecx	#, D.2982
	movl	-36(%rbp), %eax	# control1, tmp146
	addl	%ecx, %eax	# D.2982, D.2982
	.loc 1 253 0
	movl	%eax, %ecx	# D.2982, tmp174
	shrq	%cl, %rdx	# tmp174, D.2981
	movq	%rdx, %rax	# D.2981, D.2981
	andl	$1, %eax	#, D.2981
	testq	%rax, %rax	# D.2981
	je	.L32	#,
	.loc 1 256 0
	xorl	$1, -16(%rbp)	#, c1
.L32:
	.loc 1 259 0
	movq	-56(%rbp), %rax	# reg, tmp147
	movq	16(%rax), %rax	# reg_20(D)->node, D.2983
	movl	-20(%rbp), %edx	# i, tmp148
	movslq	%edx, %rdx	# tmp148, D.2984
	salq	$4, %rdx	#, D.2984
	addq	%rdx, %rax	# D.2984, D.2983
	movq	8(%rax), %rdx	# _57->state, D.2981
	movl	-40(%rbp), %eax	# control2, tmp149
	movl	%eax, %ecx	# tmp149, tmp176
	shrq	%cl, %rdx	# tmp176, D.2981
	movq	%rdx, %rax	# D.2981, D.2981
	andl	$1, %eax	#, D.2981
	testq	%rax, %rax	# D.2981
	je	.L33	#,
	.loc 1 260 0
	movl	$1, -12(%rbp)	#, c2
.L33:
	.loc 1 261 0
	movq	-56(%rbp), %rax	# reg, tmp150
	movq	16(%rax), %rax	# reg_20(D)->node, D.2983
	movl	-20(%rbp), %edx	# i, tmp151
	movslq	%edx, %rdx	# tmp151, D.2984
	salq	$4, %rdx	#, D.2984
	addq	%rdx, %rax	# D.2984, D.2983
	movq	8(%rax), %rdx	# _66->state, D.2981
	.loc 1 262 0
	movl	width(%rip), %ecx	# width, width.20
	movl	-40(%rbp), %eax	# control2, tmp152
	addl	%ecx, %eax	# width.20, D.2982
	.loc 1 261 0
	movl	%eax, %ecx	# D.2982, tmp178
	shrq	%cl, %rdx	# tmp178, D.2981
	movq	%rdx, %rax	# D.2981, D.2981
	andl	$1, %eax	#, D.2981
	testq	%rax, %rax	# D.2981
	je	.L34	#,
	.loc 1 264 0
	xorl	$1, -12(%rbp)	#, c2
.L34:
	.loc 1 266 0
	movq	-56(%rbp), %rax	# reg, tmp153
	movq	16(%rax), %rax	# reg_20(D)->node, D.2983
	movl	-20(%rbp), %edx	# i, tmp154
	movslq	%edx, %rdx	# tmp154, D.2984
	salq	$4, %rdx	#, D.2984
	addq	%rdx, %rax	# D.2984, D.2983
	movq	8(%rax), %rdx	# _76->state, D.2981
	.loc 1 267 0
	movl	width(%rip), %eax	# width, width.21
	leal	(%rax,%rax), %ecx	#, D.2982
	movl	-40(%rbp), %eax	# control2, tmp155
	addl	%ecx, %eax	# D.2982, D.2982
	.loc 1 266 0
	movl	%eax, %ecx	# D.2982, tmp180
	shrq	%cl, %rdx	# tmp180, D.2981
	movq	%rdx, %rax	# D.2981, D.2981
	andl	$1, %eax	#, D.2981
	testq	%rax, %rax	# D.2981
	je	.L35	#,
	.loc 1 269 0
	xorl	$1, -12(%rbp)	#, c2
.L35:
	.loc 1 272 0
	cmpl	$1, -16(%rbp)	#, c1
	jne	.L36	#,
	.loc 1 272 0 is_stmt 0 discriminator 1
	cmpl	$1, -12(%rbp)	#, c2
	jne	.L36	#,
	.loc 1 273 0 is_stmt 1
	movq	-56(%rbp), %rax	# reg, tmp156
	movq	16(%rax), %rax	# reg_20(D)->node, D.2983
	movl	-20(%rbp), %edx	# i, tmp157
	movslq	%edx, %rdx	# tmp157, D.2984
	salq	$4, %rdx	#, D.2984
	addq	%rax, %rdx	# D.2983, D.2983
	movq	-56(%rbp), %rax	# reg, tmp158
	movq	16(%rax), %rax	# reg_20(D)->node, D.2983
	movl	-20(%rbp), %ecx	# i, tmp159
	movslq	%ecx, %rcx	# tmp159, D.2984
	salq	$4, %rcx	#, D.2984
	addq	%rcx, %rax	# D.2984, D.2983
	movq	8(%rax), %rax	# _91->state, D.2981
	xorq	-8(%rbp), %rax	# mask, D.2981
	movq	%rax, 8(%rdx)	# D.2981, _87->state
.L36:
	.loc 1 241 0
	addl	$1, -20(%rbp)	#, i
.L29:
	.loc 1 241 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# reg, tmp160
	movl	4(%rax), %eax	# reg_20(D)->size, D.2982
	cmpl	-20(%rbp), %eax	# i, D.2982
	jg	.L37	#,
	.loc 1 277 0 is_stmt 1
	movq	-56(%rbp), %rax	# reg, tmp161
	movq	%rax, %rdi	# tmp161,
	call	quantum_decohere	#
	.loc 1 279 0
	movq	-56(%rbp), %rax	# reg, tmp162
	movq	%rax, %rdx	# tmp162,
	movl	$0, %esi	#,
	movl	$1, %edi	#,
	call	quantum_qec_counter	#
	.loc 1 281 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	quantum_toffoli_ft, .-quantum_toffoli_ft
	.local	counter.2757
	.comm	counter.2757,4,4
	.data
	.align 4
	.type	freq.2758, @object
	.size	freq.2758, 4
freq.2758:
	.long	1073741824
	.text
.Letext0:
	.file 2 "qureg.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x465
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF45
	.byte	0x1
	.long	.LASF46
	.long	.LASF47
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
	.byte	0x8
	.byte	0x3
	.long	.LASF11
	.uleb128 0x5
	.long	.LASF14
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.long	0xb3
	.uleb128 0x6
	.long	.LASF12
	.byte	0x2
	.byte	0x25
	.long	0x87
	.byte	0
	.uleb128 0x6
	.long	.LASF13
	.byte	0x2
	.byte	0x26
	.long	0x80
	.byte	0x8
	.byte	0
	.uleb128 0x7
	.long	.LASF21
	.byte	0x2
	.byte	0x29
	.long	0x8e
	.uleb128 0x5
	.long	.LASF15
	.byte	0x20
	.byte	0x2
	.byte	0x2d
	.long	0x107
	.uleb128 0x6
	.long	.LASF16
	.byte	0x2
	.byte	0x2f
	.long	0x34
	.byte	0
	.uleb128 0x6
	.long	.LASF17
	.byte	0x2
	.byte	0x30
	.long	0x34
	.byte	0x4
	.uleb128 0x6
	.long	.LASF18
	.byte	0x2
	.byte	0x31
	.long	0x34
	.byte	0x8
	.uleb128 0x6
	.long	.LASF19
	.byte	0x2
	.byte	0x32
	.long	0x107
	.byte	0x10
	.uleb128 0x6
	.long	.LASF20
	.byte	0x2
	.byte	0x33
	.long	0x73
	.byte	0x18
	.byte	0
	.uleb128 0x4
	.byte	0x8
	.long	0xb3
	.uleb128 0x7
	.long	.LASF22
	.byte	0x2
	.byte	0x36
	.long	0xbe
	.uleb128 0x8
	.long	.LASF25
	.byte	0x1
	.byte	0x2f
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x152
	.uleb128 0x9
	.long	.LASF23
	.byte	0x1
	.byte	0x2f
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x9
	.long	.LASF24
	.byte	0x1
	.byte	0x2f
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x8
	.long	.LASF26
	.byte	0x1
	.byte	0x38
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x18c
	.uleb128 0x9
	.long	.LASF27
	.byte	0x1
	.byte	0x38
	.long	0x73
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x9
	.long	.LASF28
	.byte	0x1
	.byte	0x38
	.long	0x73
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0xa
	.long	.LASF29
	.byte	0x1
	.byte	0x44
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x1ee
	.uleb128 0x9
	.long	.LASF30
	.byte	0x1
	.byte	0x44
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x9
	.long	.LASF16
	.byte	0x1
	.byte	0x44
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xb
	.string	"reg"
	.byte	0x1
	.byte	0x44
	.long	0x1ee
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xc
	.string	"i"
	.byte	0x1
	.byte	0x46
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xd
	.long	.LASF31
	.byte	0x1
	.byte	0x47
	.long	0x1f4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x4
	.byte	0x8
	.long	0x10d
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF32
	.uleb128 0xa
	.long	.LASF33
	.byte	0x1
	.byte	0x6a
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x283
	.uleb128 0x9
	.long	.LASF30
	.byte	0x1
	.byte	0x6a
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x9
	.long	.LASF16
	.byte	0x1
	.byte	0x6a
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xb
	.string	"reg"
	.byte	0x1
	.byte	0x6a
	.long	0x1ee
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0xc
	.string	"i"
	.byte	0x1
	.byte	0x6c
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xc
	.string	"a"
	.byte	0x1
	.byte	0x6c
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xc
	.string	"b"
	.byte	0x1
	.byte	0x6c
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xd
	.long	.LASF24
	.byte	0x1
	.byte	0x6d
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xd
	.long	.LASF31
	.byte	0x1
	.byte	0x6e
	.long	0x1f4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0xe
	.long	.LASF48
	.byte	0x1
	.byte	0x98
	.long	0x34
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x2f9
	.uleb128 0xb
	.string	"inc"
	.byte	0x1
	.byte	0x98
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x9
	.long	.LASF34
	.byte	0x1
	.byte	0x98
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xb
	.string	"reg"
	.byte	0x1
	.byte	0x98
	.long	0x1ee
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xd
	.long	.LASF35
	.byte	0x1
	.byte	0x9a
	.long	0x34
	.uleb128 0x9
	.byte	0x3
	.quad	counter.2757
	.uleb128 0xd
	.long	.LASF36
	.byte	0x1
	.byte	0x9b
	.long	0x34
	.uleb128 0x9
	.byte	0x3
	.quad	freq.2758
	.byte	0
	.uleb128 0xa
	.long	.LASF37
	.byte	0x1
	.byte	0xb2
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x34f
	.uleb128 0x9
	.long	.LASF38
	.byte	0x1
	.byte	0xb2
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xb
	.string	"reg"
	.byte	0x1
	.byte	0xb2
	.long	0x1ee
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xc
	.string	"tmp"
	.byte	0x1
	.byte	0xb4
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xd
	.long	.LASF31
	.byte	0x1
	.byte	0xb5
	.long	0x1f4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xa
	.long	.LASF39
	.byte	0x1
	.byte	0xcc
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x3b3
	.uleb128 0x9
	.long	.LASF40
	.byte	0x1
	.byte	0xcc
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x9
	.long	.LASF38
	.byte	0x1
	.byte	0xcc
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xb
	.string	"reg"
	.byte	0x1
	.byte	0xcc
	.long	0x1ee
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xc
	.string	"tmp"
	.byte	0x1
	.byte	0xce
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xd
	.long	.LASF31
	.byte	0x1
	.byte	0xcf
	.long	0x1f4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xa
	.long	.LASF41
	.byte	0x1
	.byte	0xe7
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x43e
	.uleb128 0x9
	.long	.LASF42
	.byte	0x1
	.byte	0xe7
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x9
	.long	.LASF43
	.byte	0x1
	.byte	0xe7
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x9
	.long	.LASF38
	.byte	0x1
	.byte	0xe7
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0xb
	.string	"reg"
	.byte	0x1
	.byte	0xe7
	.long	0x1ee
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0xc
	.string	"i"
	.byte	0x1
	.byte	0xe9
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xc
	.string	"c1"
	.byte	0x1
	.byte	0xea
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xc
	.string	"c2"
	.byte	0x1
	.byte	0xea
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xd
	.long	.LASF44
	.byte	0x1
	.byte	0xeb
	.long	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xf
	.long	.LASF30
	.byte	0x1
	.byte	0x25
	.long	0x34
	.uleb128 0x9
	.byte	0x3
	.quad	type
	.uleb128 0xf
	.long	.LASF16
	.byte	0x1
	.byte	0x29
	.long	0x34
	.uleb128 0x9
	.byte	0x3
	.quad	width
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
	.uleb128 0x2117
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
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
.LASF13:
	.string	"state"
.LASF47:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/462.libquantum/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF12:
	.string	"amplitude"
.LASF15:
	.string	"quantum_reg_struct"
.LASF21:
	.string	"quantum_reg_node"
.LASF11:
	.string	"complex float"
.LASF37:
	.string	"quantum_sigma_x_ft"
.LASF43:
	.string	"control2"
.LASF32:
	.string	"float"
.LASF23:
	.string	"stype"
.LASF26:
	.string	"quantum_qec_get_status"
.LASF17:
	.string	"size"
.LASF29:
	.string	"quantum_qec_encode"
.LASF0:
	.string	"long unsigned int"
.LASF48:
	.string	"quantum_qec_counter"
.LASF2:
	.string	"short unsigned int"
.LASF40:
	.string	"control"
.LASF39:
	.string	"quantum_cnot_ft"
.LASF1:
	.string	"unsigned char"
.LASF35:
	.string	"counter"
.LASF24:
	.string	"swidth"
.LASF5:
	.string	"short int"
.LASF18:
	.string	"hashw"
.LASF31:
	.string	"lambda"
.LASF3:
	.string	"unsigned int"
.LASF14:
	.string	"quantum_reg_node_struct"
.LASF22:
	.string	"quantum_reg"
.LASF10:
	.string	"long long unsigned int"
.LASF25:
	.string	"quantum_qec_set_status"
.LASF34:
	.string	"frequency"
.LASF20:
	.string	"hash"
.LASF42:
	.string	"control1"
.LASF27:
	.string	"ptype"
.LASF7:
	.string	"sizetype"
.LASF9:
	.string	"long long int"
.LASF44:
	.string	"mask"
.LASF16:
	.string	"width"
.LASF45:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF30:
	.string	"type"
.LASF33:
	.string	"quantum_qec_decode"
.LASF36:
	.string	"freq"
.LASF19:
	.string	"node"
.LASF6:
	.string	"long int"
.LASF8:
	.string	"char"
.LASF28:
	.string	"pwidth"
.LASF38:
	.string	"target"
.LASF4:
	.string	"signed char"
.LASF41:
	.string	"quantum_toffoli_ft"
.LASF46:
	.string	"qec.c"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
