	.file	"ckd_alloc.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I . -I . -I libutil -imultiarch x86_64-linux-gnu
# -D SPEC_CPU -D NDEBUG -D SPEC_CPU -D HAVE_CONFIG_H -D SPEC_CPU_LP64
# ckd_alloc.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.section	.rodata
.LC0:
	.string	"FATAL_ERROR"
.LC1:
	.string	"ckd_alloc.c"
	.align 8
.LC2:
	.string	"calloc(%d,%d) failed from %s(%d)\n"
	.text
	.globl	__ckd_calloc__
	.type	__ckd_calloc__, @function
__ckd_calloc__:
.LFB2:
	.file 1 "ckd_alloc.c"
	.loc 1 91 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# n_elem, n_elem
	movq	%rsi, -32(%rbp)	# elem_size, elem_size
	movq	%rdx, -40(%rbp)	# caller_file, caller_file
	movl	%ecx, -44(%rbp)	# caller_line, caller_line
	.loc 1 94 0
	movq	-32(%rbp), %rdx	# elem_size, tmp61
	movq	-24(%rbp), %rax	# n_elem, tmp62
	movq	%rdx, %rsi	# tmp61,
	movq	%rax, %rdi	# tmp62,
	call	calloc	#
	movq	%rax, -8(%rbp)	# tmp63, mem
	cmpq	$0, -8(%rbp)	#, mem
	jne	.L2	#,
	.loc 1 95 0
	movl	$.LC0, %edx	#,
	movl	$95, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_header	#
	movl	-44(%rbp), %esi	# caller_line, tmp64
	movq	-40(%rbp), %rcx	# caller_file, tmp65
	movq	-32(%rbp), %rdx	# elem_size, tmp66
	movq	-24(%rbp), %rax	# n_elem, tmp67
	movl	%esi, %r8d	# tmp64,
	movq	%rax, %rsi	# tmp67,
	movl	$.LC2, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L2:
	.loc 1 99 0
	movq	-8(%rbp), %rax	# mem, D.3174
	.loc 1 100 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	__ckd_calloc__, .-__ckd_calloc__
	.section	.rodata
	.align 8
.LC3:
	.string	"malloc(%d) failed from %s(%d)\n"
	.text
	.globl	__ckd_malloc__
	.type	__ckd_malloc__, @function
__ckd_malloc__:
.LFB3:
	.loc 1 105 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# size, size
	movq	%rsi, -32(%rbp)	# caller_file, caller_file
	movl	%edx, -36(%rbp)	# caller_line, caller_line
	.loc 1 108 0
	movq	-24(%rbp), %rax	# size, tmp61
	movq	%rax, %rdi	# tmp61,
	call	malloc	#
	movq	%rax, -8(%rbp)	# tmp62, mem
	cmpq	$0, -8(%rbp)	#, mem
	jne	.L5	#,
	.loc 1 109 0
	movl	$.LC0, %edx	#,
	movl	$109, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_header	#
	movl	-36(%rbp), %ecx	# caller_line, tmp63
	movq	-32(%rbp), %rdx	# caller_file, tmp64
	movq	-24(%rbp), %rax	# size, tmp65
	movq	%rax, %rsi	# tmp65,
	movl	$.LC3, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L5:
	.loc 1 111 0
	movq	-8(%rbp), %rax	# mem, D.3178
	.loc 1 112 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	__ckd_malloc__, .-__ckd_malloc__
	.section	.rodata
	.align 8
.LC4:
	.string	"realloc(%d) failed from %s(%d)\n"
	.text
	.globl	__ckd_realloc__
	.type	__ckd_realloc__, @function
__ckd_realloc__:
.LFB4:
	.loc 1 117 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# ptr, ptr
	movq	%rsi, -32(%rbp)	# new_size, new_size
	movq	%rdx, -40(%rbp)	# caller_file, caller_file
	movl	%ecx, -44(%rbp)	# caller_line, caller_line
	.loc 1 120 0
	movq	-32(%rbp), %rdx	# new_size, tmp61
	movq	-24(%rbp), %rax	# ptr, tmp62
	movq	%rdx, %rsi	# tmp61,
	movq	%rax, %rdi	# tmp62,
	call	realloc	#
	movq	%rax, -8(%rbp)	# tmp63, mem
	cmpq	$0, -8(%rbp)	#, mem
	jne	.L8	#,
	.loc 1 121 0
	movl	$.LC0, %edx	#,
	movl	$121, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_header	#
	movl	-44(%rbp), %ecx	# caller_line, tmp64
	movq	-40(%rbp), %rdx	# caller_file, tmp65
	movq	-32(%rbp), %rax	# new_size, tmp66
	movq	%rax, %rsi	# tmp66,
	movl	$.LC4, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L8:
	.loc 1 125 0
	movq	-8(%rbp), %rax	# mem, D.3180
	.loc 1 126 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	__ckd_realloc__, .-__ckd_realloc__
	.globl	__ckd_salloc__
	.type	__ckd_salloc__, @function
__ckd_salloc__:
.LFB5:
	.loc 1 130 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# orig, orig
	movq	%rsi, -32(%rbp)	# caller_file, caller_file
	movl	%edx, -36(%rbp)	# caller_line, caller_line
	.loc 1 134 0
	movq	-24(%rbp), %rax	# orig, tmp65
	movq	%rax, %rdi	# tmp65,
	call	strlen	#
	addl	$1, %eax	#, D.3183
	movl	%eax, -12(%rbp)	# D.3183, len
	.loc 1 135 0
	movl	-12(%rbp), %eax	# len, tmp66
	cltq
	movl	-36(%rbp), %edx	# caller_line, tmp67
	movq	-32(%rbp), %rcx	# caller_file, tmp68
	movq	%rcx, %rsi	# tmp68,
	movq	%rax, %rdi	# D.3182,
	call	__ckd_malloc__	#
	movq	%rax, -8(%rbp)	# tmp69, buf
	.loc 1 137 0
	movq	-24(%rbp), %rdx	# orig, tmp70
	movq	-8(%rbp), %rax	# buf, tmp71
	movq	%rdx, %rsi	# tmp70,
	movq	%rax, %rdi	# tmp71,
	call	strcpy	#
	.loc 1 138 0
	movq	-8(%rbp), %rax	# buf, D.3184
	.loc 1 139 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	__ckd_salloc__, .-__ckd_salloc__
	.globl	__ckd_calloc_2d__
	.type	__ckd_calloc_2d__, @function
__ckd_calloc_2d__:
.LFB6:
	.loc 1 144 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movl	%edi, -36(%rbp)	# d1, d1
	movl	%esi, -40(%rbp)	# d2, d2
	movl	%edx, -44(%rbp)	# elemsize, elemsize
	movq	%rcx, -56(%rbp)	# caller_file, caller_file
	movl	%r8d, -48(%rbp)	# caller_line, caller_line
	.loc 1 148 0
	movl	-44(%rbp), %eax	# elemsize, tmp72
	movslq	%eax, %rsi	# tmp72, D.3185
	movl	-36(%rbp), %eax	# d1, tmp73
	imull	-40(%rbp), %eax	# d2, D.3186
	cltq
	movl	-48(%rbp), %ecx	# caller_line, tmp74
	movq	-56(%rbp), %rdx	# caller_file, tmp75
	movq	%rax, %rdi	# D.3185,
	call	__ckd_calloc__	#
	movq	%rax, -16(%rbp)	# tmp76, mem
	.loc 1 149 0
	movl	-36(%rbp), %eax	# d1, tmp77
	cltq
	leaq	0(,%rax,8), %rcx	#, D.3185
	movl	-48(%rbp), %edx	# caller_line, tmp78
	movq	-56(%rbp), %rax	# caller_file, tmp79
	movq	%rax, %rsi	# tmp79,
	movq	%rcx, %rdi	# D.3185,
	call	__ckd_malloc__	#
	movq	%rax, -8(%rbp)	# tmp80, ref
	.loc 1 151 0
	movl	$0, -24(%rbp)	#, i
	movl	$0, -20(%rbp)	#, offset
	jmp	.L13	#
.L14:
	.loc 1 152 0 discriminator 2
	movl	-24(%rbp), %eax	# i, tmp81
	cltq
	leaq	0(,%rax,8), %rdx	#, D.3185
	movq	-8(%rbp), %rax	# ref, tmp82
	addq	%rdx, %rax	# D.3185, D.3187
	movl	-20(%rbp), %edx	# offset, tmp83
	movslq	%edx, %rcx	# tmp83, D.3188
	movq	-16(%rbp), %rdx	# mem, tmp84
	addq	%rcx, %rdx	# D.3188, D.3189
	movq	%rdx, (%rax)	# D.3189, *_19
	.loc 1 151 0 discriminator 2
	addl	$1, -24(%rbp)	#, i
	movl	-40(%rbp), %eax	# d2, tmp85
	imull	-44(%rbp), %eax	# elemsize, D.3186
	addl	%eax, -20(%rbp)	# D.3186, offset
.L13:
	.loc 1 151 0 is_stmt 0 discriminator 1
	movl	-24(%rbp), %eax	# i, tmp86
	cmpl	-36(%rbp), %eax	# d1, tmp86
	jl	.L14	#,
	.loc 1 154 0 is_stmt 1
	movq	-8(%rbp), %rax	# ref, D.3190
	.loc 1 155 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	__ckd_calloc_2d__, .-__ckd_calloc_2d__
	.globl	ckd_free
	.type	ckd_free, @function
ckd_free:
.LFB7:
	.loc 1 159 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# ptr, ptr
	.loc 1 160 0
	cmpq	$0, -8(%rbp)	#, ptr
	je	.L16	#,
	.loc 1 160 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# ptr, tmp59
	movq	%rax, %rdi	# tmp59,
	call	free	#
.L16:
	.loc 1 161 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	ckd_free, .-ckd_free
	.globl	ckd_free_2d
	.type	ckd_free_2d, @function
ckd_free_2d:
.LFB8:
	.loc 1 164 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# ptr, ptr
	.loc 1 165 0
	cmpq	$0, -8(%rbp)	#, ptr
	je	.L19	#,
	.loc 1 165 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# ptr, tmp60
	movq	(%rax), %rax	# *ptr_1(D), D.3191
	movq	%rax, %rdi	# D.3191,
	call	ckd_free	#
.L19:
	.loc 1 166 0 is_stmt 1
	movq	-8(%rbp), %rax	# ptr, tmp61
	movq	%rax, %rdi	# tmp61,
	call	ckd_free	#
	.loc 1 167 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	ckd_free_2d, .-ckd_free_2d
	.globl	__ckd_calloc_3d__
	.type	__ckd_calloc_3d__, @function
__ckd_calloc_3d__:
.LFB9:
	.loc 1 172 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movl	%edi, -52(%rbp)	# d1, d1
	movl	%esi, -56(%rbp)	# d2, d2
	movl	%edx, -60(%rbp)	# d3, d3
	movl	%ecx, -64(%rbp)	# elemsize, elemsize
	movq	%r8, -72(%rbp)	# caller_file, caller_file
	movl	%r9d, -76(%rbp)	# caller_line, caller_line
	.loc 1 176 0
	movl	-64(%rbp), %eax	# elemsize, tmp86
	movslq	%eax, %rsi	# tmp86, D.3192
	movl	-52(%rbp), %eax	# d1, tmp87
	imull	-56(%rbp), %eax	# d2, D.3193
	imull	-60(%rbp), %eax	# d3, D.3193
	cltq
	movl	-76(%rbp), %ecx	# caller_line, tmp88
	movq	-72(%rbp), %rdx	# caller_file, tmp89
	movq	%rax, %rdi	# D.3192,
	call	__ckd_calloc__	#
	movq	%rax, -24(%rbp)	# tmp90, mem
	.loc 1 177 0
	movl	-52(%rbp), %eax	# d1, tmp91
	cltq
	leaq	0(,%rax,8), %rcx	#, D.3192
	movl	-76(%rbp), %edx	# caller_line, tmp92
	movq	-72(%rbp), %rax	# caller_file, tmp93
	movq	%rax, %rsi	# tmp93,
	movq	%rcx, %rdi	# D.3192,
	call	__ckd_malloc__	#
	movq	%rax, -16(%rbp)	# tmp94, ref1
	.loc 1 178 0
	movl	-52(%rbp), %eax	# d1, tmp95
	imull	-56(%rbp), %eax	# d2, D.3193
	cltq
	leaq	0(,%rax,8), %rcx	#, D.3192
	movl	-76(%rbp), %edx	# caller_line, tmp96
	movq	-72(%rbp), %rax	# caller_file, tmp97
	movq	%rax, %rsi	# tmp97,
	movq	%rcx, %rdi	# D.3192,
	call	__ckd_malloc__	#
	movq	%rax, -8(%rbp)	# tmp98, ref2
	.loc 1 180 0
	movl	$0, -36(%rbp)	#, i
	movl	$0, -28(%rbp)	#, offset
	jmp	.L21	#
.L22:
	.loc 1 181 0 discriminator 2
	movl	-36(%rbp), %eax	# i, tmp99
	cltq
	leaq	0(,%rax,8), %rdx	#, D.3192
	movq	-16(%rbp), %rax	# ref1, tmp100
	addq	%rdx, %rax	# D.3192, D.3194
	movl	-28(%rbp), %edx	# offset, tmp101
	movslq	%edx, %rdx	# tmp101, D.3192
	leaq	0(,%rdx,8), %rcx	#, D.3192
	movq	-8(%rbp), %rdx	# ref2, tmp102
	addq	%rcx, %rdx	# D.3192, D.3195
	movq	%rdx, (%rax)	# D.3195, *_29
	.loc 1 180 0 discriminator 2
	addl	$1, -36(%rbp)	#, i
	movl	-56(%rbp), %eax	# d2, tmp103
	addl	%eax, -28(%rbp)	# tmp103, offset
.L21:
	.loc 1 180 0 is_stmt 0 discriminator 1
	movl	-36(%rbp), %eax	# i, tmp104
	cmpl	-52(%rbp), %eax	# d1, tmp104
	jl	.L22	#,
	.loc 1 183 0 is_stmt 1
	movl	$0, -28(%rbp)	#, offset
	.loc 1 184 0
	movl	$0, -36(%rbp)	#, i
	jmp	.L23	#
.L26:
	.loc 1 185 0
	movl	$0, -32(%rbp)	#, j
	jmp	.L24	#
.L25:
	.loc 1 186 0 discriminator 2
	movl	-36(%rbp), %eax	# i, tmp105
	cltq
	leaq	0(,%rax,8), %rdx	#, D.3192
	movq	-16(%rbp), %rax	# ref1, tmp106
	addq	%rdx, %rax	# D.3192, D.3194
	movq	(%rax), %rax	# *_40, D.3195
	movl	-32(%rbp), %edx	# j, tmp107
	movslq	%edx, %rdx	# tmp107, D.3192
	salq	$3, %rdx	#, D.3192
	addq	%rdx, %rax	# D.3192, D.3195
	movl	-28(%rbp), %edx	# offset, tmp108
	movslq	%edx, %rcx	# tmp108, D.3196
	movq	-24(%rbp), %rdx	# mem, tmp109
	addq	%rcx, %rdx	# D.3196, D.3197
	movq	%rdx, (%rax)	# D.3197, *_44
	.loc 1 187 0 discriminator 2
	movl	-60(%rbp), %eax	# d3, tmp110
	imull	-64(%rbp), %eax	# elemsize, D.3193
	addl	%eax, -28(%rbp)	# D.3193, offset
	.loc 1 185 0 discriminator 2
	addl	$1, -32(%rbp)	#, j
.L24:
	.loc 1 185 0 is_stmt 0 discriminator 1
	movl	-32(%rbp), %eax	# j, tmp111
	cmpl	-56(%rbp), %eax	# d2, tmp111
	jl	.L25	#,
	.loc 1 184 0 is_stmt 1
	addl	$1, -36(%rbp)	#, i
.L23:
	.loc 1 184 0 is_stmt 0 discriminator 1
	movl	-36(%rbp), %eax	# i, tmp112
	cmpl	-52(%rbp), %eax	# d1, tmp112
	jl	.L26	#,
	.loc 1 191 0 is_stmt 1
	movq	-16(%rbp), %rax	# ref1, D.3198
	.loc 1 192 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	__ckd_calloc_3d__, .-__ckd_calloc_3d__
	.globl	ckd_free_3d
	.type	ckd_free_3d, @function
ckd_free_3d:
.LFB10:
	.loc 1 196 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# ptr, ptr
	.loc 1 197 0
	cmpq	$0, -8(%rbp)	#, ptr
	je	.L29	#,
	.loc 1 197 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# ptr, tmp63
	movq	(%rax), %rax	# *ptr_1(D), D.3199
	testq	%rax, %rax	# D.3199
	je	.L29	#,
	movq	-8(%rbp), %rax	# ptr, tmp64
	movq	(%rax), %rax	# *ptr_1(D), D.3199
	movq	(%rax), %rax	# *_3, D.3200
	movq	%rax, %rdi	# D.3200,
	call	ckd_free	#
.L29:
	.loc 1 198 0 is_stmt 1
	cmpq	$0, -8(%rbp)	#, ptr
	je	.L30	#,
	.loc 1 198 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# ptr, tmp65
	movq	(%rax), %rax	# *ptr_1(D), D.3199
	movq	%rax, %rdi	# D.3199,
	call	ckd_free	#
.L30:
	.loc 1 199 0 is_stmt 1
	movq	-8(%rbp), %rax	# ptr, tmp66
	movq	%rax, %rdi	# tmp66,
	call	ckd_free	#
	.loc 1 200 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	ckd_free_3d, .-ckd_free_3d
	.local	head
	.comm	head,8,8
	.section	.rodata
	.align 8
.LC5:
	.string	"List item size (%d) not multiple of sizeof(void *)\n"
	.text
	.globl	__mymalloc__
	.type	__mymalloc__, @function
__mymalloc__:
.LFB11:
	.loc 1 221 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$72, %rsp	#,
	.cfi_offset 3, -24
	movl	%edi, -68(%rbp)	# elemsize, elemsize
	movq	%rsi, -80(%rbp)	# caller_file, caller_file
	movl	%edx, -72(%rbp)	# caller_line, caller_line
	.loc 1 229 0
	movq	$0, -32(%rbp)	#, prev
	.loc 1 230 0
	movq	head(%rip), %rax	# head, tmp88
	movq	%rax, -24(%rbp)	# tmp88, list
	jmp	.L32	#
.L34:
	.loc 1 231 0 discriminator 1
	movq	-24(%rbp), %rax	# list, tmp89
	movq	%rax, -32(%rbp)	# tmp89, prev
	.loc 1 230 0 discriminator 1
	movq	-24(%rbp), %rax	# list, tmp90
	movq	8(%rax), %rax	# list_5->next, tmp91
	movq	%rax, -24(%rbp)	# tmp91, list
.L32:
	cmpq	$0, -24(%rbp)	#, list
	je	.L33	#,
	.loc 1 230 0 is_stmt 0 discriminator 2
	movq	-24(%rbp), %rax	# list, tmp92
	movl	16(%rax), %eax	# list_5->elemsize, D.3201
	cmpl	-68(%rbp), %eax	# elemsize, D.3201
	jne	.L34	#,
.L33:
	.loc 1 233 0 is_stmt 1
	cmpq	$0, -24(%rbp)	#, list
	jne	.L35	#,
	.loc 1 235 0
	movl	-68(%rbp), %eax	# elemsize, tmp93
	cltq
	andl	$7, %eax	#, D.3202
	testq	%rax, %rax	# D.3202
	je	.L36	#,
	.loc 1 236 0
	movl	$.LC0, %edx	#,
	movl	$236, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_header	#
	movl	-68(%rbp), %eax	# elemsize, tmp94
	movl	%eax, %esi	# tmp94,
	movl	$.LC5, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L36:
	.loc 1 238 0
	movl	$238, %ecx	#,
	movl	$.LC1, %edx	#,
	movl	$32, %esi	#,
	movl	$1, %edi	#,
	call	__ckd_calloc__	#
	movq	%rax, -24(%rbp)	# tmp95, list
	.loc 1 239 0
	movq	-24(%rbp), %rax	# list, tmp96
	movq	$0, (%rax)	#, list_15->freelist
	.loc 1 240 0
	movq	-24(%rbp), %rax	# list, tmp97
	movl	-68(%rbp), %edx	# elemsize, tmp98
	movl	%edx, 16(%rax)	# tmp98, list_15->elemsize
	.loc 1 241 0
	movq	-24(%rbp), %rax	# list, tmp99
	movl	$50, 20(%rax)	#, list_15->blocksize
	.loc 1 242 0
	movq	-24(%rbp), %rax	# list, tmp100
	movl	20(%rax), %eax	# list_15->blocksize, D.3201
	imull	-68(%rbp), %eax	# elemsize, D.3201
	movl	%eax, %ebx	# D.3201, D.3201
	movl	$262144, %eax	#, tmp103
	cltd
	idivl	%ebx	# D.3201
	movl	%eax, %edx	# tmp101, D.3201
	movq	-24(%rbp), %rax	# list, tmp104
	movl	%edx, 24(%rax)	# D.3201, list_15->blk_alloc
	.loc 1 245 0
	movq	head(%rip), %rdx	# head, head.0
	movq	-24(%rbp), %rax	# list, tmp105
	movq	%rdx, 8(%rax)	# head.0, list_15->next
	.loc 1 246 0
	movq	-24(%rbp), %rax	# list, tmp106
	movq	%rax, head(%rip)	# tmp106, head
	jmp	.L37	#
.L35:
	.loc 1 247 0
	cmpq	$0, -32(%rbp)	#, prev
	je	.L37	#,
	.loc 1 249 0
	movq	-24(%rbp), %rax	# list, tmp107
	movq	8(%rax), %rdx	# list_5->next, D.3203
	movq	-32(%rbp), %rax	# prev, tmp108
	movq	%rdx, 8(%rax)	# D.3203, prev_4->next
	.loc 1 250 0
	movq	head(%rip), %rdx	# head, head.1
	movq	-24(%rbp), %rax	# list, tmp109
	movq	%rdx, 8(%rax)	# head.1, list_5->next
	.loc 1 251 0
	movq	-24(%rbp), %rax	# list, tmp110
	movq	%rax, head(%rip)	# tmp110, head
.L37:
	.loc 1 255 0
	movq	-24(%rbp), %rax	# list, tmp111
	movq	(%rax), %rax	# list_6->freelist, D.3204
	testq	%rax, %rax	# D.3204
	jne	.L38	#,
	.loc 1 257 0
	movq	-24(%rbp), %rax	# list, tmp112
	movl	24(%rax), %eax	# list_6->blk_alloc, D.3201
	testl	%eax, %eax	# D.3201
	jne	.L39	#,
	.loc 1 258 0
	movq	-24(%rbp), %rax	# list, tmp113
	movl	20(%rax), %eax	# list_6->blocksize, D.3201
	leal	(%rax,%rax), %edx	#, D.3201
	movq	-24(%rbp), %rax	# list, tmp114
	movl	%edx, 20(%rax)	# D.3201, list_6->blocksize
	.loc 1 259 0
	movq	-24(%rbp), %rax	# list, tmp115
	movl	20(%rax), %eax	# list_6->blocksize, D.3201
	imull	-68(%rbp), %eax	# elemsize, D.3201
	movl	%eax, %ebx	# D.3201, D.3201
	movl	$262144, %eax	#, tmp118
	cltd
	idivl	%ebx	# D.3201
	movl	%eax, %edx	# tmp116, D.3201
	movq	-24(%rbp), %rax	# list, tmp119
	movl	%edx, 24(%rax)	# D.3201, list_6->blk_alloc
	.loc 1 260 0
	movq	-24(%rbp), %rax	# list, tmp120
	movl	24(%rax), %eax	# list_6->blk_alloc, D.3201
	testl	%eax, %eax	# D.3201
	jg	.L39	#,
	.loc 1 261 0
	movq	-24(%rbp), %rax	# list, tmp121
	movl	$1879048192, 24(%rax)	#, list_6->blk_alloc
.L39:
	.loc 1 265 0
	movl	-68(%rbp), %eax	# elemsize, tmp122
	movslq	%eax, %rsi	# tmp122, D.3202
	movq	-24(%rbp), %rax	# list, tmp123
	movl	20(%rax), %eax	# list_6->blocksize, D.3201
	cltq
	movl	-72(%rbp), %ecx	# caller_line, tmp124
	movq	-80(%rbp), %rdx	# caller_file, tmp125
	movq	%rax, %rdi	# D.3202,
	call	__ckd_calloc__	#
	movq	-24(%rbp), %rdx	# list, tmp126
	movq	%rax, (%rdx)	# D.3205, list_6->freelist
	movq	-24(%rbp), %rax	# list, tmp127
	movq	(%rax), %rax	# list_6->freelist, tmp128
	movq	%rax, -40(%rbp)	# tmp128, cpp
	.loc 1 267 0
	movq	-40(%rbp), %rax	# cpp, tmp129
	movq	%rax, -48(%rbp)	# tmp129, cp
	.loc 1 268 0
	movq	-24(%rbp), %rax	# list, tmp130
	movl	20(%rax), %eax	# list_6->blocksize, D.3201
	subl	$1, %eax	#, tmp131
	movl	%eax, -52(%rbp)	# tmp131, j
	jmp	.L40	#
.L41:
	.loc 1 269 0 discriminator 2
	movl	-68(%rbp), %eax	# elemsize, tmp132
	cltq
	addq	%rax, -48(%rbp)	# D.3206, cp
	.loc 1 270 0 discriminator 2
	movq	-40(%rbp), %rax	# cpp, tmp133
	movq	-48(%rbp), %rdx	# cp, tmp134
	movq	%rdx, (%rax)	# tmp134, *cpp_3
	.loc 1 271 0 discriminator 2
	movq	-48(%rbp), %rax	# cp, tmp135
	movq	%rax, -40(%rbp)	# tmp135, cpp
	.loc 1 268 0 discriminator 2
	subl	$1, -52(%rbp)	#, j
.L40:
	.loc 1 268 0 is_stmt 0 discriminator 1
	cmpl	$0, -52(%rbp)	#, j
	jg	.L41	#,
	.loc 1 273 0 is_stmt 1
	movq	-40(%rbp), %rax	# cpp, tmp136
	movq	$0, (%rax)	#, *cpp_3
	.loc 1 274 0
	movq	-24(%rbp), %rax	# list, tmp137
	movl	24(%rax), %eax	# list_6->blk_alloc, D.3201
	leal	-1(%rax), %edx	#, D.3201
	movq	-24(%rbp), %rax	# list, tmp138
	movl	%edx, 24(%rax)	# D.3201, list_6->blk_alloc
.L38:
	.loc 1 278 0
	movq	-24(%rbp), %rax	# list, tmp139
	movq	(%rax), %rax	# list_6->freelist, tmp140
	movq	%rax, -48(%rbp)	# tmp140, cp
	.loc 1 279 0
	movq	-24(%rbp), %rax	# list, tmp141
	movq	(%rax), %rax	# list_6->freelist, D.3204
	movq	(%rax), %rdx	# *_47, D.3207
	movq	-24(%rbp), %rax	# list, tmp142
	movq	%rdx, (%rax)	# D.3207, list_6->freelist
	.loc 1 286 0
	movq	-48(%rbp), %rax	# cp, D.3207
	.loc 1 287 0
	addq	$72, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	__mymalloc__, .-__mymalloc__
	.section	.rodata
	.align 8
.LC6:
	.string	"Unknown list item size: %d; called from %s(%d)\n"
	.text
	.globl	__myfree__
	.type	__myfree__, @function
__myfree__:
.LFB12:
	.loc 1 291 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -40(%rbp)	# elem, elem
	movl	%esi, -44(%rbp)	# elemsize, elemsize
	movq	%rdx, -56(%rbp)	# caller_file, caller_file
	movl	%ecx, -48(%rbp)	# caller_line, caller_line
	.loc 1 297 0
	movq	$0, -24(%rbp)	#, prev
	.loc 1 298 0
	movq	head(%rip), %rax	# head, tmp63
	movq	%rax, -16(%rbp)	# tmp63, list
	jmp	.L44	#
.L46:
	.loc 1 299 0 discriminator 1
	movq	-16(%rbp), %rax	# list, tmp64
	movq	%rax, -24(%rbp)	# tmp64, prev
	.loc 1 298 0 discriminator 1
	movq	-16(%rbp), %rax	# list, tmp65
	movq	8(%rax), %rax	# list_2->next, tmp66
	movq	%rax, -16(%rbp)	# tmp66, list
.L44:
	cmpq	$0, -16(%rbp)	#, list
	je	.L45	#,
	.loc 1 298 0 is_stmt 0 discriminator 2
	movq	-16(%rbp), %rax	# list, tmp67
	movl	16(%rax), %eax	# list_2->elemsize, D.3209
	cmpl	-44(%rbp), %eax	# elemsize, D.3209
	jne	.L46	#,
.L45:
	.loc 1 301 0 is_stmt 1
	cmpq	$0, -16(%rbp)	#, list
	jne	.L47	#,
	.loc 1 302 0
	movl	$.LC0, %edx	#,
	movl	$302, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_header	#
	movl	-48(%rbp), %ecx	# caller_line, tmp68
	movq	-56(%rbp), %rdx	# caller_file, tmp69
	movl	-44(%rbp), %eax	# elemsize, tmp70
	movl	%eax, %esi	# tmp70,
	movl	$.LC6, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
	jmp	.L48	#
.L47:
	.loc 1 304 0
	cmpq	$0, -24(%rbp)	#, prev
	je	.L48	#,
	.loc 1 306 0
	movq	-16(%rbp), %rax	# list, tmp71
	movq	8(%rax), %rdx	# list_2->next, D.3210
	movq	-24(%rbp), %rax	# prev, tmp72
	movq	%rdx, 8(%rax)	# D.3210, prev_1->next
	.loc 1 307 0
	movq	head(%rip), %rdx	# head, head.2
	movq	-16(%rbp), %rax	# list, tmp73
	movq	%rdx, 8(%rax)	# head.2, list_2->next
	.loc 1 308 0
	movq	-16(%rbp), %rax	# list, tmp74
	movq	%rax, head(%rip)	# tmp74, head
.L48:
	.loc 1 315 0
	movq	-40(%rbp), %rax	# elem, tmp75
	movq	%rax, -8(%rbp)	# tmp75, cpp
	.loc 1 316 0
	movq	-16(%rbp), %rax	# list, tmp76
	movq	(%rax), %rdx	# list_2->freelist, D.3211
	movq	-8(%rbp), %rax	# cpp, tmp77
	movq	%rdx, (%rax)	# D.3211, *cpp_14
	.loc 1 317 0
	movq	-16(%rbp), %rax	# list, tmp78
	movq	-8(%rbp), %rdx	# cpp, tmp79
	movq	%rdx, (%rax)	# tmp79, list_2->freelist
	.loc 1 321 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	__myfree__, .-__myfree__
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.file 3 "libutil/prim_type.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x5da
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF46
	.byte	0x1
	.long	.LASF47
	.long	.LASF48
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF11
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
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF7
	.uleb128 0x5
	.byte	0x8
	.uleb128 0x6
	.byte	0x8
	.long	0x7f
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF8
	.uleb128 0x6
	.byte	0x8
	.long	0x8c
	.uleb128 0x7
	.long	0x7f
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF9
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF10
	.uleb128 0x2
	.long	.LASF12
	.byte	0x3
	.byte	0x3f
	.long	0x62
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.long	.LASF13
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.long	.LASF14
	.uleb128 0x8
	.long	.LASF49
	.byte	0x20
	.byte	0x1
	.byte	0xd0
	.long	0x101
	.uleb128 0x9
	.long	.LASF15
	.byte	0x1
	.byte	0xd1
	.long	0x101
	.byte	0
	.uleb128 0x9
	.long	.LASF16
	.byte	0x1
	.byte	0xd2
	.long	0x107
	.byte	0x8
	.uleb128 0x9
	.long	.LASF17
	.byte	0x1
	.byte	0xd3
	.long	0x9f
	.byte	0x10
	.uleb128 0x9
	.long	.LASF18
	.byte	0x1
	.byte	0xd4
	.long	0x9f
	.byte	0x14
	.uleb128 0x9
	.long	.LASF19
	.byte	0x1
	.byte	0xd5
	.long	0x9f
	.byte	0x18
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x79
	.uleb128 0x6
	.byte	0x8
	.long	0xb8
	.uleb128 0x2
	.long	.LASF20
	.byte	0x1
	.byte	0xd6
	.long	0xb8
	.uleb128 0xa
	.long	.LASF25
	.byte	0x1
	.byte	0x59
	.long	0x77
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x180
	.uleb128 0xb
	.long	.LASF21
	.byte	0x1
	.byte	0x59
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xb
	.long	.LASF22
	.byte	0x1
	.byte	0x59
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xb
	.long	.LASF23
	.byte	0x1
	.byte	0x5a
	.long	0x86
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xb
	.long	.LASF24
	.byte	0x1
	.byte	0x5a
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0xc
	.string	"mem"
	.byte	0x1
	.byte	0x5c
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xa
	.long	.LASF26
	.byte	0x1
	.byte	0x67
	.long	0x77
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x1da
	.uleb128 0xb
	.long	.LASF27
	.byte	0x1
	.byte	0x67
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xb
	.long	.LASF23
	.byte	0x1
	.byte	0x68
	.long	0x86
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xb
	.long	.LASF24
	.byte	0x1
	.byte	0x68
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0xc
	.string	"mem"
	.byte	0x1
	.byte	0x6a
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xa
	.long	.LASF28
	.byte	0x1
	.byte	0x73
	.long	0x77
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x242
	.uleb128 0xd
	.string	"ptr"
	.byte	0x1
	.byte	0x73
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xb
	.long	.LASF29
	.byte	0x1
	.byte	0x73
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xb
	.long	.LASF23
	.byte	0x1
	.byte	0x74
	.long	0x86
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xb
	.long	.LASF24
	.byte	0x1
	.byte	0x74
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0xc
	.string	"mem"
	.byte	0x1
	.byte	0x76
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xa
	.long	.LASF30
	.byte	0x1
	.byte	0x81
	.long	0x79
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x2aa
	.uleb128 0xb
	.long	.LASF31
	.byte	0x1
	.byte	0x81
	.long	0x86
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xb
	.long	.LASF23
	.byte	0x1
	.byte	0x81
	.long	0x86
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xb
	.long	.LASF24
	.byte	0x1
	.byte	0x81
	.long	0x9f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0xc
	.string	"len"
	.byte	0x1
	.byte	0x83
	.long	0x9f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xc
	.string	"buf"
	.byte	0x1
	.byte	0x84
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xa
	.long	.LASF32
	.byte	0x1
	.byte	0x8e
	.long	0x347
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x347
	.uleb128 0xd
	.string	"d1"
	.byte	0x1
	.byte	0x8e
	.long	0x9f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0xd
	.string	"d2"
	.byte	0x1
	.byte	0x8e
	.long	0x9f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xb
	.long	.LASF17
	.byte	0x1
	.byte	0x8e
	.long	0x9f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0xb
	.long	.LASF23
	.byte	0x1
	.byte	0x8f
	.long	0x86
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0xb
	.long	.LASF24
	.byte	0x1
	.byte	0x8f
	.long	0x9f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0xc
	.string	"ref"
	.byte	0x1
	.byte	0x91
	.long	0x101
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xc
	.string	"mem"
	.byte	0x1
	.byte	0x91
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xc
	.string	"i"
	.byte	0x1
	.byte	0x92
	.long	0x9f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xe
	.long	.LASF33
	.byte	0x1
	.byte	0x92
	.long	0x9f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x77
	.uleb128 0xf
	.long	.LASF34
	.byte	0x1
	.byte	0x9e
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x379
	.uleb128 0xd
	.string	"ptr"
	.byte	0x1
	.byte	0x9e
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xf
	.long	.LASF35
	.byte	0x1
	.byte	0xa3
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x3a5
	.uleb128 0xd
	.string	"ptr"
	.byte	0x1
	.byte	0xa3
	.long	0x347
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xa
	.long	.LASF36
	.byte	0x1
	.byte	0xaa
	.long	0x46e
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x46e
	.uleb128 0xd
	.string	"d1"
	.byte	0x1
	.byte	0xaa
	.long	0x9f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0xd
	.string	"d2"
	.byte	0x1
	.byte	0xaa
	.long	0x9f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0xd
	.string	"d3"
	.byte	0x1
	.byte	0xaa
	.long	0x9f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0xb
	.long	.LASF17
	.byte	0x1
	.byte	0xaa
	.long	0x9f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0xb
	.long	.LASF23
	.byte	0x1
	.byte	0xab
	.long	0x86
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0xb
	.long	.LASF24
	.byte	0x1
	.byte	0xab
	.long	0x9f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0xe
	.long	.LASF37
	.byte	0x1
	.byte	0xad
	.long	0x474
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xe
	.long	.LASF38
	.byte	0x1
	.byte	0xad
	.long	0x101
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xc
	.string	"mem"
	.byte	0x1
	.byte	0xad
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xc
	.string	"i"
	.byte	0x1
	.byte	0xae
	.long	0x9f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0xc
	.string	"j"
	.byte	0x1
	.byte	0xae
	.long	0x9f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xe
	.long	.LASF33
	.byte	0x1
	.byte	0xae
	.long	0x9f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x347
	.uleb128 0x6
	.byte	0x8
	.long	0x101
	.uleb128 0xf
	.long	.LASF39
	.byte	0x1
	.byte	0xc3
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x4a6
	.uleb128 0xd
	.string	"ptr"
	.byte	0x1
	.byte	0xc3
	.long	0x46e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xa
	.long	.LASF40
	.byte	0x1
	.byte	0xdc
	.long	0x79
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x539
	.uleb128 0xb
	.long	.LASF17
	.byte	0x1
	.byte	0xdc
	.long	0x9f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0xb
	.long	.LASF23
	.byte	0x1
	.byte	0xdc
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0xb
	.long	.LASF24
	.byte	0x1
	.byte	0xdc
	.long	0x9f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0xc
	.string	"cp"
	.byte	0x1
	.byte	0xde
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0xc
	.string	"j"
	.byte	0x1
	.byte	0xe0
	.long	0x9f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0xc
	.string	"cpp"
	.byte	0x1
	.byte	0xe1
	.long	0x101
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xe
	.long	.LASF41
	.byte	0x1
	.byte	0xe2
	.long	0x539
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xe
	.long	.LASF42
	.byte	0x1
	.byte	0xe2
	.long	0x539
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x10d
	.uleb128 0x10
	.long	.LASF43
	.byte	0x1
	.value	0x122
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x5c8
	.uleb128 0x11
	.long	.LASF44
	.byte	0x1
	.value	0x122
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x11
	.long	.LASF17
	.byte	0x1
	.value	0x122
	.long	0x9f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x11
	.long	.LASF23
	.byte	0x1
	.value	0x122
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x11
	.long	.LASF24
	.byte	0x1
	.value	0x122
	.long	0x9f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x12
	.string	"cpp"
	.byte	0x1
	.value	0x125
	.long	0x101
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x13
	.long	.LASF41
	.byte	0x1
	.value	0x126
	.long	0x539
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x13
	.long	.LASF42
	.byte	0x1
	.value	0x126
	.long	0x539
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0xe
	.long	.LASF45
	.byte	0x1
	.byte	0xd7
	.long	0x539
	.uleb128 0x9
	.byte	0x3
	.quad	head
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xb
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
	.uleb128 0xe
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
	.uleb128 0x11
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
.LASF20:
	.string	"mylist_t"
.LASF42:
	.string	"list"
.LASF24:
	.string	"caller_line"
.LASF16:
	.string	"next"
.LASF30:
	.string	"__ckd_salloc__"
.LASF28:
	.string	"__ckd_realloc__"
.LASF21:
	.string	"n_elem"
.LASF36:
	.string	"__ckd_calloc_3d__"
.LASF13:
	.string	"float"
.LASF26:
	.string	"__ckd_malloc__"
.LASF27:
	.string	"size"
.LASF46:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF34:
	.string	"ckd_free"
.LASF18:
	.string	"blocksize"
.LASF0:
	.string	"long unsigned int"
.LASF12:
	.string	"int32"
.LASF11:
	.string	"size_t"
.LASF23:
	.string	"caller_file"
.LASF39:
	.string	"ckd_free_3d"
.LASF29:
	.string	"new_size"
.LASF1:
	.string	"unsigned char"
.LASF17:
	.string	"elemsize"
.LASF43:
	.string	"__myfree__"
.LASF14:
	.string	"double"
.LASF44:
	.string	"elem"
.LASF45:
	.string	"head"
.LASF48:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/482.sphinx3/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF3:
	.string	"unsigned int"
.LASF10:
	.string	"long long unsigned int"
.LASF25:
	.string	"__ckd_calloc__"
.LASF19:
	.string	"blk_alloc"
.LASF47:
	.string	"ckd_alloc.c"
.LASF7:
	.string	"sizetype"
.LASF2:
	.string	"short unsigned int"
.LASF9:
	.string	"long long int"
.LASF37:
	.string	"ref1"
.LASF38:
	.string	"ref2"
.LASF33:
	.string	"offset"
.LASF5:
	.string	"short int"
.LASF15:
	.string	"freelist"
.LASF31:
	.string	"orig"
.LASF6:
	.string	"long int"
.LASF8:
	.string	"char"
.LASF35:
	.string	"ckd_free_2d"
.LASF40:
	.string	"__mymalloc__"
.LASF4:
	.string	"signed char"
.LASF32:
	.string	"__ckd_calloc_2d__"
.LASF49:
	.string	"mylist_s"
.LASF41:
	.string	"prev"
.LASF22:
	.string	"elem_size"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
