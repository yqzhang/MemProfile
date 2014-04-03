	.file	"gs.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I . -I . -I libutil -imultiarch x86_64-linux-gnu
# -D SPEC_CPU -D NDEBUG -D SPEC_CPU -D HAVE_CONFIG_H -D SPEC_CPU_LP64 gs.c
# -mtune=generic -march=x86-64 -g -fverbose-asm -fno-strict-aliasing
# -fstack-protector -Wformat -Wformat-security
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
	.string	"gs.c"
.LC2:
	.string	"fread failed\n"
	.text
	.globl	gs_fread_int32
	.type	gs_fread_int32, @function
gs_fread_int32:
.LFB2:
	.file 1 "gs.c"
	.loc 1 60 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# gs, gs
	.loc 1 62 0
	movq	-24(%rbp), %rax	# gs, tmp63
	movq	40(%rax), %rdx	# gs_1(D)->fp, D.5273
	leaq	-4(%rbp), %rax	#, tmp64
	movq	%rdx, %rcx	# D.5273,
	movl	$1, %edx	#,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp64,
	call	fread	#
	cmpq	$1, %rax	#, D.5274
	je	.L2	#,
	.loc 1 63 0
	movl	$.LC0, %edx	#,
	movl	$63, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_header	#
	movl	$.LC2, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L2:
	.loc 1 64 0
	movl	-4(%rbp), %eax	# val, D.5275
	.loc 1 65 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	gs_fread_int32, .-gs_fread_int32
	.globl	gs_fread_float32
	.type	gs_fread_float32, @function
gs_fread_float32:
.LFB3:
	.loc 1 68 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# gs, gs
	.loc 1 70 0
	movq	-24(%rbp), %rax	# gs, tmp63
	movq	40(%rax), %rdx	# gs_1(D)->fp, D.5279
	leaq	-4(%rbp), %rax	#, tmp64
	movq	%rdx, %rcx	# D.5279,
	movl	$1, %edx	#,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp64,
	call	fread	#
	cmpq	$1, %rax	#, D.5280
	je	.L5	#,
	.loc 1 71 0
	movl	$.LC0, %edx	#,
	movl	$71, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_header	#
	movl	$.LC2, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L5:
	.loc 1 72 0
	movl	-4(%rbp), %eax	# val, D.5281
	.loc 1 73 0
	movl	%eax, -28(%rbp)	# <retval>, %sfp
	movss	-28(%rbp), %xmm0	# %sfp,
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	gs_fread_float32, .-gs_fread_float32
	.globl	gs_fread_bitvec_t
	.type	gs_fread_bitvec_t, @function
gs_fread_bitvec_t:
.LFB4:
	.loc 1 76 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# val, val
	movq	%rsi, -16(%rbp)	# gs, gs
	.loc 1 77 0
	movq	-16(%rbp), %rax	# gs, tmp63
	movq	40(%rax), %rdx	# gs_1(D)->fp, D.5283
	movq	-16(%rbp), %rax	# gs, tmp64
	movl	20(%rax), %eax	# gs_1(D)->n_mbyte, D.5284
	movslq	%eax, %rsi	# D.5284, D.5285
	movq	-8(%rbp), %rax	# val, tmp65
	movq	%rdx, %rcx	# D.5283,
	movl	$1, %edx	#,
	movq	%rax, %rdi	# tmp65,
	call	fread	#
	cmpq	$1, %rax	#, D.5285
	je	.L7	#,
	.loc 1 78 0
	movl	$.LC0, %edx	#,
	movl	$78, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_header	#
	movl	$.LC2, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L7:
	.loc 1 79 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	gs_fread_bitvec_t, .-gs_fread_bitvec_t
	.section	.rodata
.LC3:
	.string	"INFO"
	.align 8
.LC4:
	.string	"Reading gaussian selector map: %s\n"
.LC5:
	.string	"rb"
.LC6:
	.string	"fopen(%s,rb) failed\n"
	.align 8
.LC7:
	.string	"The number of mixtures of gaussian: %d\n"
	.align 8
.LC8:
	.string	"The number of features stream: %d\n"
.LC9:
	.string	"The number of density: %d\n"
.LC10:
	.string	"The number of code word: %d\n"
.LC11:
	.string	"The feature length: %d\n"
	.align 8
.LC12:
	.string	"The number of byte to read: %d\n"
.LC13:
	.string	"Code idx: %d\n"
.LC14:
	.string	"%f "
.LC15:
	.string	"%d %d "
.LC16:
	.string	"%d "
	.text
	.globl	gs_display
	.type	gs_display, @function
gs_display:
.LFB5:
	.loc 1 82 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movq	%rdi, -56(%rbp)	# file, file
	movq	%rsi, -64(%rbp)	# gs, gs
	.loc 1 89 0
	movl	$.LC3, %edx	#,
	movl	$89, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_info_header	#
	movq	-56(%rbp), %rax	# file, tmp99
	movq	%rax, %rsi	# tmp99,
	movl	$.LC4, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_info	#
	.loc 1 90 0
	movl	$90, %ecx	#,
	movl	$.LC1, %edx	#,
	movl	$56, %esi	#,
	movl	$1, %edi	#,
	call	__ckd_calloc__	#
	movq	%rax, -16(%rbp)	# tmp100, gs
	.loc 1 92 0
	movq	-56(%rbp), %rax	# file, tmp101
	movl	$.LC5, %esi	#,
	movq	%rax, %rdi	# tmp101,
	call	fopen	#
	movq	-16(%rbp), %rdx	# gs, tmp102
	movq	%rax, 40(%rdx)	# D.5286, gs_7->fp
	movq	-16(%rbp), %rax	# gs, tmp103
	movq	40(%rax), %rax	# gs_7->fp, D.5286
	testq	%rax, %rax	# D.5286
	jne	.L10	#,
	.loc 1 93 0
	movl	$.LC0, %edx	#,
	movl	$93, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_header	#
	movq	-56(%rbp), %rax	# file, tmp104
	movq	%rax, %rsi	# tmp104,
	movl	$.LC6, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L10:
	.loc 1 95 0
	movq	-16(%rbp), %rax	# gs, tmp105
	movq	%rax, %rdi	# tmp105,
	call	gs_fread_int32	#
	movq	-16(%rbp), %rdx	# gs, tmp106
	movl	%eax, (%rdx)	# D.5287, gs_7->n_mgau
	.loc 1 97 0
	movl	$.LC3, %edx	#,
	movl	$97, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_info_header	#
	movq	-16(%rbp), %rax	# gs, tmp107
	movl	(%rax), %eax	# gs_7->n_mgau, D.5287
	movl	%eax, %esi	# D.5287,
	movl	$.LC7, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_info	#
	.loc 1 98 0
	movq	-16(%rbp), %rax	# gs, tmp108
	movq	%rax, %rdi	# tmp108,
	call	gs_fread_int32	#
	movq	-16(%rbp), %rdx	# gs, tmp109
	movl	%eax, 4(%rdx)	# D.5287, gs_7->n_feat
	.loc 1 99 0
	movl	$.LC3, %edx	#,
	movl	$99, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_info_header	#
	movq	-16(%rbp), %rax	# gs, tmp110
	movl	4(%rax), %eax	# gs_7->n_feat, D.5287
	movl	%eax, %esi	# D.5287,
	movl	$.LC8, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_info	#
	.loc 1 100 0
	movq	-16(%rbp), %rax	# gs, tmp111
	movq	%rax, %rdi	# tmp111,
	call	gs_fread_int32	#
	movq	-16(%rbp), %rdx	# gs, tmp112
	movl	%eax, 12(%rdx)	# D.5287, gs_7->n_density
	.loc 1 101 0
	movl	$.LC3, %edx	#,
	movl	$101, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_info_header	#
	movq	-16(%rbp), %rax	# gs, tmp113
	movl	12(%rax), %eax	# gs_7->n_density, D.5287
	movl	%eax, %esi	# D.5287,
	movl	$.LC9, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_info	#
	.loc 1 102 0
	movq	-16(%rbp), %rax	# gs, tmp114
	movq	%rax, %rdi	# tmp114,
	call	gs_fread_int32	#
	movq	-16(%rbp), %rdx	# gs, tmp115
	movl	%eax, 8(%rdx)	# D.5287, gs_7->n_code
	.loc 1 103 0
	movl	$.LC3, %edx	#,
	movl	$103, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_info_header	#
	movq	-16(%rbp), %rax	# gs, tmp116
	movl	8(%rax), %eax	# gs_7->n_code, D.5287
	movl	%eax, %esi	# D.5287,
	movl	$.LC10, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_info	#
	.loc 1 104 0
	movq	-16(%rbp), %rax	# gs, tmp117
	movq	%rax, %rdi	# tmp117,
	call	gs_fread_int32	#
	movq	-16(%rbp), %rdx	# gs, tmp118
	movl	%eax, 16(%rdx)	# D.5287, gs_7->n_featlen
	.loc 1 105 0
	movl	$.LC3, %edx	#,
	movl	$105, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_info_header	#
	movq	-16(%rbp), %rax	# gs, tmp119
	movl	16(%rax), %eax	# gs_7->n_featlen, D.5287
	movl	%eax, %esi	# D.5287,
	movl	$.LC11, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_info	#
	.loc 1 107 0
	movq	-16(%rbp), %rax	# gs, tmp120
	movl	12(%rax), %eax	# gs_7->n_density, D.5287
	addl	$31, %eax	#, D.5287
	sarl	$5, %eax	#, D.5287
	sall	$2, %eax	#, D.5288
	movl	%eax, %edx	# D.5288, D.5287
	movq	-16(%rbp), %rax	# gs, tmp121
	movl	%edx, 20(%rax)	# D.5287, gs_7->n_mbyte
	.loc 1 108 0
	movl	$.LC3, %edx	#,
	movl	$108, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_info_header	#
	movq	-16(%rbp), %rax	# gs, tmp122
	movl	20(%rax), %eax	# gs_7->n_mbyte, D.5287
	movl	%eax, %esi	# D.5287,
	movl	$.LC12, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_info	#
	.loc 1 111 0
	movq	-16(%rbp), %rax	# gs, tmp123
	movl	12(%rax), %eax	# gs_7->n_density, D.5287
	addl	$31, %eax	#, D.5287
	sarl	$5, %eax	#, D.5287
	cltq
	movl	$111, %ecx	#,
	movl	$.LC1, %edx	#,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# D.5289,
	call	__ckd_calloc__	#
	movq	%rax, -8(%rbp)	# tmp124, bv
	.loc 1 114 0
	movl	$0, -36(%rbp)	#, code_id
	jmp	.L11	#
.L21:
	.loc 1 116 0
	movl	-36(%rbp), %eax	# code_id, tmp125
	movl	%eax, %esi	# tmp125,
	movl	$.LC13, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 117 0
	movl	$0, -24(%rbp)	#, c_id
	jmp	.L12	#
.L13:
	.loc 1 119 0 discriminator 2
	movq	-16(%rbp), %rax	# gs, tmp126
	movq	%rax, %rdi	# tmp126,
	call	gs_fread_float32	#
	movss	%xmm0, -68(%rbp)	#, %sfp
	movl	-68(%rbp), %eax	# %sfp, tmp127
	movl	%eax, -20(%rbp)	# tmp127, tmp
	.loc 1 120 0 discriminator 2
	movss	-20(%rbp), %xmm0	# tmp, D.5290
	cvtps2pd	%xmm0, %xmm0	# D.5290, D.5290
	movl	$.LC14, %edi	#,
	movl	$1, %eax	#,
	call	printf	#
	.loc 1 117 0 discriminator 2
	addl	$1, -24(%rbp)	#, c_id
.L12:
	.loc 1 117 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# gs, tmp128
	movl	16(%rax), %eax	# gs_7->n_featlen, D.5287
	cmpl	-24(%rbp), %eax	# c_id, D.5287
	jg	.L13	#,
	.loc 1 122 0 is_stmt 1
	movl	$10, %edi	#,
	call	putchar	#
	.loc 1 123 0
	movl	$0, -32(%rbp)	#, m_id
	jmp	.L14	#
.L20:
	.loc 1 125 0
	movl	$0, -28(%rbp)	#, s_id
	jmp	.L15	#
.L19:
	.loc 1 128 0
	movq	-16(%rbp), %rdx	# gs, tmp129
	movq	-8(%rbp), %rax	# bv, tmp130
	movq	%rdx, %rsi	# tmp129,
	movq	%rax, %rdi	# tmp130,
	call	gs_fread_bitvec_t	#
	.loc 1 129 0
	movl	-28(%rbp), %edx	# s_id, tmp131
	movl	-32(%rbp), %eax	# m_id, tmp132
	movl	%eax, %esi	# tmp132,
	movl	$.LC15, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 131 0
	movl	$0, -40(%rbp)	#, i
	jmp	.L16	#
.L18:
	.loc 1 133 0
	movl	-40(%rbp), %eax	# i, tmp133
	sarl	$5, %eax	#, D.5287
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5289
	movq	-8(%rbp), %rax	# bv, tmp134
	addq	%rdx, %rax	# D.5289, D.5291
	movl	(%rax), %edx	# *_48, D.5292
	movl	-40(%rbp), %eax	# i, tmp135
	andl	$31, %eax	#, D.5287
	movl	$1, %esi	#, tmp136
	movl	%eax, %ecx	# D.5287, tmp146
	sall	%cl, %esi	# tmp146, D.5287
	movl	%esi, %eax	# D.5287, D.5287
	andl	%edx, %eax	# D.5292, D.5292
	testl	%eax, %eax	# D.5292
	je	.L17	#,
	.loc 1 135 0
	movl	-40(%rbp), %eax	# i, tmp137
	movl	%eax, %esi	# tmp137,
	movl	$.LC16, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
.L17:
	.loc 1 131 0
	addl	$1, -40(%rbp)	#, i
.L16:
	.loc 1 131 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# gs, tmp138
	movl	12(%rax), %eax	# gs_7->n_density, D.5287
	cmpl	-40(%rbp), %eax	# i, D.5287
	jg	.L18	#,
	.loc 1 138 0 is_stmt 1
	movl	$10, %edi	#,
	call	putchar	#
	.loc 1 125 0
	addl	$1, -28(%rbp)	#, s_id
.L15:
	.loc 1 125 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# gs, tmp139
	movl	4(%rax), %eax	# gs_7->n_feat, D.5287
	cmpl	-28(%rbp), %eax	# s_id, D.5287
	jg	.L19	#,
	.loc 1 123 0 is_stmt 1
	addl	$1, -32(%rbp)	#, m_id
.L14:
	.loc 1 123 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# gs, tmp140
	movl	(%rax), %eax	# gs_7->n_mgau, D.5287
	cmpl	-32(%rbp), %eax	# m_id, D.5287
	jg	.L20	#,
	.loc 1 114 0 is_stmt 1
	addl	$1, -36(%rbp)	#, code_id
.L11:
	.loc 1 114 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# gs, tmp141
	movl	8(%rax), %eax	# gs_7->n_code, D.5287
	cmpl	-36(%rbp), %eax	# code_id, D.5287
	jg	.L21	#,
	.loc 1 143 0 is_stmt 1
	movl	$10, %edi	#,
	call	putchar	#
	.loc 1 147 0
	movq	-16(%rbp), %rax	# gs, tmp142
	movq	%rax, %rdi	# tmp142,
	call	gs_free	#
	.loc 1 148 0
	movl	$1, %eax	#, D.5293
	.loc 1 149 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	gs_display, .-gs_display
	.section	.rodata
.LC17:
	.string	"Cannot allocate gs\n"
.LC18:
	.string	"gs_read(%s,rb) failed\n"
	.text
	.globl	gs_read
	.type	gs_read, @function
gs_read:
.LFB6:
	.loc 1 152 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$56, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)	# file, file
	.loc 1 159 0
	movl	$.LC3, %edx	#,
	movl	$159, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_info_header	#
	movq	-56(%rbp), %rax	# file, tmp121
	movq	%rax, %rsi	# tmp121,
	movl	$.LC4, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_info	#
	.loc 1 160 0
	movl	$160, %ecx	#,
	movl	$.LC1, %edx	#,
	movl	$56, %esi	#,
	movl	$1, %edi	#,
	call	__ckd_calloc__	#
	movq	%rax, -32(%rbp)	# tmp122, gs
	.loc 1 161 0
	cmpq	$0, -32(%rbp)	#, gs
	jne	.L24	#,
	.loc 1 162 0
	movl	$.LC0, %edx	#,
	movl	$162, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_header	#
	movl	$.LC17, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L24:
	.loc 1 164 0
	movq	-56(%rbp), %rax	# file, tmp123
	movl	$.LC5, %esi	#,
	movq	%rax, %rdi	# tmp123,
	call	fopen	#
	movq	-32(%rbp), %rdx	# gs, tmp124
	movq	%rax, 40(%rdx)	# D.5308, gs_6->fp
	movq	-32(%rbp), %rax	# gs, tmp125
	movq	40(%rax), %rax	# gs_6->fp, D.5308
	testq	%rax, %rax	# D.5308
	jne	.L25	#,
	.loc 1 165 0
	movl	$.LC0, %edx	#,
	movl	$165, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_header	#
	movq	-56(%rbp), %rax	# file, tmp126
	movq	%rax, %rsi	# tmp126,
	movl	$.LC18, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L25:
	.loc 1 167 0
	movq	-32(%rbp), %rax	# gs, tmp127
	movq	%rax, %rdi	# tmp127,
	call	gs_fread_int32	#
	movq	-32(%rbp), %rdx	# gs, tmp128
	movl	%eax, (%rdx)	# D.5309, gs_6->n_mgau
	.loc 1 169 0
	movl	$.LC3, %edx	#,
	movl	$169, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_info_header	#
	movq	-32(%rbp), %rax	# gs, tmp129
	movl	(%rax), %eax	# gs_6->n_mgau, D.5309
	movl	%eax, %esi	# D.5309,
	movl	$.LC7, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_info	#
	.loc 1 170 0
	movq	-32(%rbp), %rax	# gs, tmp130
	movq	%rax, %rdi	# tmp130,
	call	gs_fread_int32	#
	movq	-32(%rbp), %rdx	# gs, tmp131
	movl	%eax, 4(%rdx)	# D.5309, gs_6->n_feat
	.loc 1 171 0
	movl	$.LC3, %edx	#,
	movl	$171, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_info_header	#
	movq	-32(%rbp), %rax	# gs, tmp132
	movl	4(%rax), %eax	# gs_6->n_feat, D.5309
	movl	%eax, %esi	# D.5309,
	movl	$.LC8, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_info	#
	.loc 1 172 0
	movq	-32(%rbp), %rax	# gs, tmp133
	movq	%rax, %rdi	# tmp133,
	call	gs_fread_int32	#
	movq	-32(%rbp), %rdx	# gs, tmp134
	movl	%eax, 12(%rdx)	# D.5309, gs_6->n_density
	.loc 1 173 0
	movl	$.LC3, %edx	#,
	movl	$173, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_info_header	#
	movq	-32(%rbp), %rax	# gs, tmp135
	movl	12(%rax), %eax	# gs_6->n_density, D.5309
	movl	%eax, %esi	# D.5309,
	movl	$.LC9, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_info	#
	.loc 1 174 0
	movq	-32(%rbp), %rax	# gs, tmp136
	movq	%rax, %rdi	# tmp136,
	call	gs_fread_int32	#
	movq	-32(%rbp), %rdx	# gs, tmp137
	movl	%eax, 8(%rdx)	# D.5309, gs_6->n_code
	.loc 1 175 0
	movl	$.LC3, %edx	#,
	movl	$175, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_info_header	#
	movq	-32(%rbp), %rax	# gs, tmp138
	movl	8(%rax), %eax	# gs_6->n_code, D.5309
	movl	%eax, %esi	# D.5309,
	movl	$.LC10, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_info	#
	.loc 1 176 0
	movq	-32(%rbp), %rax	# gs, tmp139
	movq	%rax, %rdi	# tmp139,
	call	gs_fread_int32	#
	movq	-32(%rbp), %rdx	# gs, tmp140
	movl	%eax, 16(%rdx)	# D.5309, gs_6->n_featlen
	.loc 1 177 0
	movl	$.LC3, %edx	#,
	movl	$177, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_info_header	#
	movq	-32(%rbp), %rax	# gs, tmp141
	movl	16(%rax), %eax	# gs_6->n_featlen, D.5309
	movl	%eax, %esi	# D.5309,
	movl	$.LC11, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_info	#
	.loc 1 179 0
	movq	-32(%rbp), %rax	# gs, tmp142
	movl	12(%rax), %eax	# gs_6->n_density, D.5309
	addl	$31, %eax	#, D.5309
	sarl	$5, %eax	#, D.5309
	sall	$2, %eax	#, D.5310
	movl	%eax, %edx	# D.5310, D.5309
	movq	-32(%rbp), %rax	# gs, tmp143
	movl	%edx, 20(%rax)	# D.5309, gs_6->n_mbyte
	.loc 1 180 0
	movl	$.LC3, %edx	#,
	movl	$180, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_info_header	#
	movq	-32(%rbp), %rax	# gs, tmp144
	movl	20(%rax), %eax	# gs_6->n_mbyte, D.5309
	movl	%eax, %esi	# D.5309,
	movl	$.LC12, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_info	#
	.loc 1 183 0
	movq	-32(%rbp), %rax	# gs, tmp145
	movl	12(%rax), %eax	# gs_6->n_density, D.5309
	addl	$31, %eax	#, D.5309
	sarl	$5, %eax	#, D.5309
	cltq
	movl	$183, %ecx	#,
	movl	$.LC1, %edx	#,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# D.5311,
	call	__ckd_calloc__	#
	movq	%rax, -24(%rbp)	# tmp146, bv
	.loc 1 188 0
	movq	-32(%rbp), %rax	# gs, tmp147
	movl	16(%rax), %esi	# gs_6->n_featlen, D.5309
	movq	-32(%rbp), %rax	# gs, tmp148
	movl	8(%rax), %eax	# gs_6->n_code, D.5309
	movl	$188, %r8d	#,
	movl	$.LC1, %ecx	#,
	movl	$4, %edx	#,
	movl	%eax, %edi	# D.5309,
	call	__ckd_calloc_2d__	#
	movq	-32(%rbp), %rdx	# gs, tmp149
	movq	%rax, 24(%rdx)	# D.5312, gs_6->codeword
	.loc 1 191 0
	movq	-32(%rbp), %rax	# gs, tmp150
	movl	8(%rax), %edx	# gs_6->n_code, D.5309
	movq	-32(%rbp), %rax	# gs, tmp151
	movl	4(%rax), %esi	# gs_6->n_feat, D.5309
	movq	-32(%rbp), %rax	# gs, tmp152
	movl	(%rax), %eax	# gs_6->n_mgau, D.5309
	movl	$191, %r9d	#,
	movl	$.LC1, %r8d	#,
	movl	$4, %ecx	#,
	movl	%eax, %edi	# D.5309,
	call	__ckd_calloc_3d__	#
	movq	-32(%rbp), %rdx	# gs, tmp153
	movq	%rax, 32(%rdx)	# D.5313, gs_6->codemap
	.loc 1 192 0
	movq	-32(%rbp), %rax	# gs, tmp154
	movl	12(%rax), %eax	# gs_6->n_density, D.5309
	addl	$1, %eax	#, D.5309
	cltq
	movl	$192, %ecx	#,
	movl	$.LC1, %edx	#,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# D.5311,
	call	__ckd_calloc__	#
	movq	-32(%rbp), %rdx	# gs, tmp155
	movq	%rax, 48(%rdx)	# D.5314, gs_6->mgau_sl
	.loc 1 194 0
	movl	$0, -48(%rbp)	#, code_id
	jmp	.L26	#
.L33:
	.loc 1 196 0
	movl	$0, -36(%rbp)	#, c_id
	jmp	.L27	#
.L28:
	.loc 1 198 0 discriminator 2
	movq	-32(%rbp), %rax	# gs, tmp156
	movq	24(%rax), %rax	# gs_6->codeword, D.5315
	movl	-48(%rbp), %edx	# code_id, tmp157
	movslq	%edx, %rdx	# tmp157, D.5311
	salq	$3, %rdx	#, D.5311
	addq	%rdx, %rax	# D.5311, D.5315
	movq	(%rax), %rax	# *_49, D.5316
	movl	-36(%rbp), %edx	# c_id, tmp158
	movslq	%edx, %rdx	# tmp158, D.5311
	salq	$2, %rdx	#, D.5311
	leaq	(%rax,%rdx), %rbx	#, D.5316
	movq	-32(%rbp), %rax	# gs, tmp159
	movq	%rax, %rdi	# tmp159,
	call	gs_fread_float32	#
	movss	%xmm0, -60(%rbp)	#, %sfp
	movl	-60(%rbp), %eax	# %sfp, D.5317
	movl	%eax, (%rbx)	# D.5317, *_53
	.loc 1 196 0 discriminator 2
	addl	$1, -36(%rbp)	#, c_id
.L27:
	.loc 1 196 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# gs, tmp160
	movl	16(%rax), %eax	# gs_6->n_featlen, D.5309
	cmpl	-36(%rbp), %eax	# c_id, D.5309
	jg	.L28	#,
	.loc 1 200 0 is_stmt 1
	movl	$0, -44(%rbp)	#, m_id
	jmp	.L29	#
.L32:
	.loc 1 202 0
	movl	$0, -40(%rbp)	#, s_id
	jmp	.L30	#
.L31:
	.loc 1 205 0 discriminator 2
	movq	-32(%rbp), %rdx	# gs, tmp161
	movq	-24(%rbp), %rax	# bv, tmp162
	movq	%rdx, %rsi	# tmp161,
	movq	%rax, %rdi	# tmp162,
	call	gs_fread_bitvec_t	#
	.loc 1 206 0 discriminator 2
	movq	-32(%rbp), %rax	# gs, tmp163
	movq	32(%rax), %rax	# gs_6->codemap, D.5318
	movl	-44(%rbp), %edx	# m_id, tmp164
	movslq	%edx, %rdx	# tmp164, D.5311
	salq	$3, %rdx	#, D.5311
	addq	%rdx, %rax	# D.5311, D.5318
	movq	(%rax), %rax	# *_63, D.5319
	movl	-40(%rbp), %edx	# s_id, tmp165
	movslq	%edx, %rdx	# tmp165, D.5311
	salq	$3, %rdx	#, D.5311
	addq	%rdx, %rax	# D.5311, D.5319
	movq	(%rax), %rax	# *_67, D.5320
	movl	-48(%rbp), %edx	# code_id, tmp166
	movslq	%edx, %rdx	# tmp166, D.5311
	salq	$2, %rdx	#, D.5311
	addq	%rax, %rdx	# D.5320, D.5320
	movq	-24(%rbp), %rax	# bv, tmp167
	movl	(%rax), %eax	# *bv_30, D.5321
	movl	%eax, (%rdx)	# D.5321, *_71
	.loc 1 202 0 discriminator 2
	addl	$1, -40(%rbp)	#, s_id
.L30:
	.loc 1 202 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# gs, tmp168
	movl	4(%rax), %eax	# gs_6->n_feat, D.5309
	cmpl	-40(%rbp), %eax	# s_id, D.5309
	jg	.L31	#,
	.loc 1 200 0 is_stmt 1
	addl	$1, -44(%rbp)	#, m_id
.L29:
	.loc 1 200 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# gs, tmp169
	movl	(%rax), %eax	# gs_6->n_mgau, D.5309
	cmpl	-44(%rbp), %eax	# m_id, D.5309
	jg	.L32	#,
	.loc 1 194 0 is_stmt 1
	addl	$1, -48(%rbp)	#, code_id
.L26:
	.loc 1 194 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# gs, tmp170
	movl	8(%rax), %eax	# gs_6->n_code, D.5309
	cmpl	-48(%rbp), %eax	# code_id, D.5309
	jg	.L33	#,
	.loc 1 210 0 is_stmt 1
	movq	-32(%rbp), %rax	# gs, D.5322
	.loc 1 211 0
	addq	$56, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	gs_read, .-gs_read
	.globl	gc_compute_closest_cw
	.type	gc_compute_closest_cw, @function
gc_compute_closest_cw:
.LFB7:
	.loc 1 215 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$96, %rsp	#,
	movq	%rdi, -72(%rbp)	# gs, gs
	movq	%rsi, -80(%rbp)	# feat, feat
	.loc 1 221 0
	movl	$-939524096, %edi	#,
	call	logs3_to_log	#
	movsd	%xmm0, -88(%rbp)	#, %sfp
	movq	-88(%rbp), %rax	# %sfp, tmp94
	movq	%rax, -24(%rbp)	# tmp94, min_density
	.loc 1 223 0
	movl	$0, -56(%rbp)	#, bst_codeid
	.loc 1 224 0
	movabsq	$9203565445186585134, %rax	#, tmp95
	movq	%rax, -32(%rbp)	# tmp95, min
	.loc 1 226 0
	movl	$0, -60(%rbp)	#, codeid
	jmp	.L36	#
.L43:
	.loc 1 227 0
	movl	$0, %eax	#, tmp96
	movq	%rax, -48(%rbp)	# tmp96, tmp1
	.loc 1 228 0
	movl	$0, %eax	#, tmp97
	movq	%rax, -40(%rbp)	# tmp97, tmp2
	.loc 1 230 0
	movl	$0, -52(%rbp)	#, cid
	jmp	.L37	#
.L38:
	.loc 1 231 0 discriminator 2
	movl	-52(%rbp), %eax	# cid, tmp98
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5326
	movq	-80(%rbp), %rax	# feat, tmp99
	addq	%rdx, %rax	# D.5326, D.5327
	movss	(%rax), %xmm0	# *_24, D.5328
	movq	-72(%rbp), %rax	# gs, tmp100
	movq	24(%rax), %rax	# gs_15(D)->codeword, D.5329
	movl	-60(%rbp), %edx	# codeid, tmp101
	movslq	%edx, %rdx	# tmp101, D.5326
	salq	$3, %rdx	#, D.5326
	addq	%rdx, %rax	# D.5326, D.5329
	movq	(%rax), %rax	# *_29, D.5327
	movl	-52(%rbp), %edx	# cid, tmp102
	movslq	%edx, %rdx	# tmp102, D.5326
	salq	$2, %rdx	#, D.5326
	addq	%rdx, %rax	# D.5326, D.5327
	movss	(%rax), %xmm1	# *_33, D.5328
	subss	%xmm1, %xmm0	# D.5328, D.5328
	unpcklps	%xmm0, %xmm0	# D.5328, D.5328
	cvtps2pd	%xmm0, %xmm2	# D.5328, tmp127
	movsd	%xmm2, -16(%rbp)	# tmp127, diff1
	.loc 1 232 0 discriminator 2
	movsd	-16(%rbp), %xmm0	# diff1, tmp103
	mulsd	-16(%rbp), %xmm0	# diff1, D.5330
	movsd	-48(%rbp), %xmm1	# tmp1, tmp105
	addsd	%xmm1, %xmm0	# tmp105, tmp104
	movsd	%xmm0, -48(%rbp)	# tmp104, tmp1
	.loc 1 234 0 discriminator 2
	movl	-52(%rbp), %eax	# cid, tmp106
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5326
	movq	-80(%rbp), %rax	# feat, tmp107
	addq	%rdx, %rax	# D.5326, D.5327
	movss	(%rax), %xmm0	# *_41, D.5328
	movq	-72(%rbp), %rax	# gs, tmp108
	movq	24(%rax), %rax	# gs_15(D)->codeword, D.5329
	movl	-60(%rbp), %edx	# codeid, tmp109
	movslq	%edx, %rdx	# tmp109, D.5331
	addq	$1, %rdx	#, D.5331
	salq	$3, %rdx	#, D.5331
	addq	%rdx, %rax	# D.5331, D.5329
	movq	(%rax), %rax	# *_47, D.5327
	movl	-52(%rbp), %edx	# cid, tmp110
	movslq	%edx, %rdx	# tmp110, D.5326
	salq	$2, %rdx	#, D.5326
	addq	%rdx, %rax	# D.5326, D.5327
	movss	(%rax), %xmm1	# *_51, D.5328
	subss	%xmm1, %xmm0	# D.5328, D.5328
	unpcklps	%xmm0, %xmm0	# D.5328, D.5328
	cvtps2pd	%xmm0, %xmm3	# D.5328, tmp128
	movsd	%xmm3, -8(%rbp)	# tmp128, diff2
	.loc 1 235 0 discriminator 2
	movsd	-8(%rbp), %xmm0	# diff2, tmp111
	mulsd	-8(%rbp), %xmm0	# diff2, D.5330
	movsd	-40(%rbp), %xmm1	# tmp2, tmp113
	addsd	%xmm1, %xmm0	# tmp113, tmp112
	movsd	%xmm0, -40(%rbp)	# tmp112, tmp2
	.loc 1 230 0 discriminator 2
	addl	$1, -52(%rbp)	#, cid
.L37:
	.loc 1 230 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# gs, tmp114
	movl	16(%rax), %eax	# gs_15(D)->n_featlen, D.5325
	cmpl	-52(%rbp), %eax	# cid, D.5325
	jg	.L38	#,
	.loc 1 238 0 is_stmt 1
	movsd	-32(%rbp), %xmm0	# min, tmp115
	ucomisd	-48(%rbp), %xmm0	# tmp1, tmp115
	jbe	.L39	#,
	.loc 1 239 0
	movq	-48(%rbp), %rax	# tmp1, tmp116
	movq	%rax, -32(%rbp)	# tmp116, min
	.loc 1 240 0
	movl	-60(%rbp), %eax	# codeid, tmp117
	movl	%eax, -56(%rbp)	# tmp117, bst_codeid
.L39:
	.loc 1 243 0
	movsd	-32(%rbp), %xmm0	# min, tmp118
	ucomisd	-40(%rbp), %xmm0	# tmp2, tmp118
	jbe	.L41	#,
	.loc 1 244 0
	movq	-40(%rbp), %rax	# tmp2, tmp119
	movq	%rax, -32(%rbp)	# tmp119, min
	.loc 1 245 0
	movl	-60(%rbp), %eax	# codeid, tmp123
	addl	$1, %eax	#, tmp122
	movl	%eax, -56(%rbp)	# tmp122, bst_codeid
.L41:
	.loc 1 226 0
	addl	$2, -60(%rbp)	#, codeid
.L36:
	.loc 1 226 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# gs, tmp124
	movl	8(%rax), %eax	# gs_15(D)->n_code, D.5325
	cmpl	-60(%rbp), %eax	# codeid, D.5325
	jg	.L43	#,
	.loc 1 248 0 is_stmt 1
	movl	-56(%rbp), %eax	# bst_codeid, D.5332
	.loc 1 249 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	gc_compute_closest_cw, .-gc_compute_closest_cw
	.section	.rodata
	.align 8
.LC21:
	.string	"No active gaussian found in senone %d, with num. component = %d\n"
	.text
	.globl	gs_mgau_shortlist
	.type	gs_mgau_shortlist, @function
gs_mgau_shortlist:
.LFB8:
	.loc 1 254 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# gs, gs
	movl	%esi, -28(%rbp)	# m, m
	movl	%edx, -32(%rbp)	# n, n
	movq	%rcx, -40(%rbp)	# feat, feat
	movl	%r8d, -44(%rbp)	# bst_codeid, bst_codeid
	.loc 1 258 0
	movl	$0, -8(%rbp)	#, nc
	.loc 1 260 0
	movl	$0, -4(%rbp)	#, map
	.loc 1 261 0
	movq	-24(%rbp), %rax	# gs, tmp91
	movq	32(%rax), %rax	# gs_9(D)->codemap, D.5333
	movl	-28(%rbp), %edx	# m, tmp92
	movslq	%edx, %rdx	# tmp92, D.5334
	salq	$3, %rdx	#, D.5334
	addq	%rdx, %rax	# D.5334, D.5333
	movq	(%rax), %rax	# *_14, D.5335
	movq	(%rax), %rax	# *_15, D.5336
	movl	-44(%rbp), %edx	# bst_codeid, tmp93
	movslq	%edx, %rdx	# tmp93, D.5334
	salq	$2, %rdx	#, D.5334
	addq	%rdx, %rax	# D.5334, D.5336
	movl	(%rax), %eax	# *_20, tmp94
	movl	%eax, -4(%rbp)	# tmp94, map
	.loc 1 267 0
	movl	$0, -12(%rbp)	#, bit_id
	jmp	.L48	#
.L50:
	.loc 1 269 0
	movl	-12(%rbp), %eax	# bit_id, tmp95
	movl	$1, %edx	#, tmp96
	movl	%eax, %ecx	# tmp95, tmp113
	sall	%cl, %edx	# tmp113, D.5337
	movl	%edx, %eax	# D.5337, D.5337
	andl	-4(%rbp), %eax	# map, D.5338
	testl	%eax, %eax	# D.5338
	je	.L49	#,
	.loc 1 270 0
	movq	-24(%rbp), %rax	# gs, tmp97
	movq	48(%rax), %rcx	# gs_9(D)->mgau_sl, D.5339
	movl	-8(%rbp), %eax	# nc, nc.0
	leal	1(%rax), %edx	#, tmp98
	movl	%edx, -8(%rbp)	# tmp98, nc
	cltq
	salq	$2, %rax	#, D.5334
	leaq	(%rcx,%rax), %rdx	#, D.5339
	movl	-12(%rbp), %eax	# bit_id, tmp99
	movl	%eax, (%rdx)	# tmp99, *_32
.L49:
	.loc 1 267 0
	addl	$1, -12(%rbp)	#, bit_id
.L48:
	.loc 1 267 0 is_stmt 0 discriminator 1
	movl	-12(%rbp), %eax	# bit_id, tmp100
	cmpl	-32(%rbp), %eax	# n, tmp100
	jl	.L50	#,
	.loc 1 272 0 is_stmt 1
	movq	-24(%rbp), %rax	# gs, tmp101
	movq	48(%rax), %rax	# gs_9(D)->mgau_sl, D.5339
	movl	-8(%rbp), %edx	# nc, tmp102
	movslq	%edx, %rdx	# tmp102, D.5334
	salq	$2, %rdx	#, D.5334
	addq	%rdx, %rax	# D.5334, D.5339
	movl	$-1, (%rax)	#, *_37
	.loc 1 274 0
	cmpl	$0, -8(%rbp)	#, nc
	jne	.L51	#,
	.loc 1 279 0
	movl	$0, -12(%rbp)	#, bit_id
	jmp	.L52	#
.L53:
	.loc 1 281 0 discriminator 2
	movq	-24(%rbp), %rax	# gs, tmp103
	movq	48(%rax), %rcx	# gs_9(D)->mgau_sl, D.5339
	movl	-8(%rbp), %eax	# nc, nc.1
	leal	1(%rax), %edx	#, tmp104
	movl	%edx, -8(%rbp)	# tmp104, nc
	cltq
	salq	$2, %rax	#, D.5334
	leaq	(%rcx,%rax), %rdx	#, D.5339
	movl	-12(%rbp), %eax	# bit_id, tmp105
	movl	%eax, (%rdx)	# tmp105, *_44
	.loc 1 279 0 discriminator 2
	addl	$1, -12(%rbp)	#, bit_id
.L52:
	.loc 1 279 0 is_stmt 0 discriminator 1
	movl	-12(%rbp), %eax	# bit_id, tmp106
	cmpl	-32(%rbp), %eax	# n, tmp106
	jl	.L53	#,
	.loc 1 283 0 is_stmt 1
	movq	-24(%rbp), %rax	# gs, tmp107
	movq	48(%rax), %rax	# gs_9(D)->mgau_sl, D.5339
	movl	-8(%rbp), %edx	# nc, tmp108
	movslq	%edx, %rdx	# tmp108, D.5334
	salq	$2, %rdx	#, D.5334
	addq	%rdx, %rax	# D.5334, D.5339
	movl	$-1, (%rax)	#, *_49
.L51:
	.loc 1 286 0
	cmpl	$0, -8(%rbp)	#, nc
	jne	.L54	#,
	.loc 1 287 0
	movl	$.LC3, %edx	#,
	movl	$287, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_info_header	#
	movl	-32(%rbp), %edx	# n, tmp109
	movl	-28(%rbp), %eax	# m, tmp110
	movl	%eax, %esi	# tmp110,
	movl	$.LC21, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_info	#
.L54:
	.loc 1 289 0
	movl	-8(%rbp), %eax	# nc, D.5340
	.loc 1 291 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	gs_mgau_shortlist, .-gs_mgau_shortlist
	.globl	gs_delete
	.type	gs_delete, @function
gs_delete:
.LFB9:
	.loc 1 294 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# file, file
	.loc 1 295 0
	movl	$1, %eax	#, D.5342
	.loc 1 296 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	gs_delete, .-gs_delete
	.globl	gs_free
	.type	gs_free, @function
gs_free:
.LFB10:
	.loc 1 299 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# gs, gs
	.loc 1 300 0
	movq	-8(%rbp), %rax	# gs, tmp62
	movq	40(%rax), %rax	# gs_1(D)->fp, D.5343
	movq	%rax, %rdi	# D.5343,
	call	fclose	#
	.loc 1 301 0
	movq	-8(%rbp), %rax	# gs, tmp63
	movq	%rax, %rdi	# tmp63,
	call	free	#
	.loc 1 302 0
	movl	$1, %eax	#, D.5344
	.loc 1 303 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	gs_free, .-gs_free
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/include/stdio.h"
	.file 5 "/usr/include/libio.h"
	.file 6 "./libutil/prim_type.h"
	.file 7 "./libutil/bitvec.h"
	.file 8 "gs.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x722
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF90
	.byte	0x1
	.long	.LASF91
	.long	.LASF92
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
	.long	.LASF93
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
	.uleb128 0x2
	.long	.LASF47
	.byte	0x6
	.byte	0x3f
	.long	0x62
	.uleb128 0x2
	.long	.LASF48
	.byte	0x6
	.byte	0x42
	.long	0x4d
	.uleb128 0x2
	.long	.LASF49
	.byte	0x6
	.byte	0x45
	.long	0x2b3
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.long	.LASF50
	.uleb128 0x2
	.long	.LASF51
	.byte	0x6
	.byte	0x46
	.long	0x2c5
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.long	.LASF52
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF53
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF54
	.uleb128 0x2
	.long	.LASF55
	.byte	0x7
	.byte	0x43
	.long	0x2e5
	.uleb128 0x6
	.byte	0x8
	.long	0x29d
	.uleb128 0x7
	.long	.LASF56
	.byte	0x38
	.byte	0x8
	.byte	0x3c
	.long	0x36f
	.uleb128 0x8
	.long	.LASF57
	.byte	0x8
	.byte	0x3d
	.long	0x292
	.byte	0
	.uleb128 0x8
	.long	.LASF58
	.byte	0x8
	.byte	0x3e
	.long	0x292
	.byte	0x4
	.uleb128 0x8
	.long	.LASF59
	.byte	0x8
	.byte	0x3f
	.long	0x292
	.byte	0x8
	.uleb128 0x8
	.long	.LASF60
	.byte	0x8
	.byte	0x40
	.long	0x292
	.byte	0xc
	.uleb128 0x8
	.long	.LASF61
	.byte	0x8
	.byte	0x41
	.long	0x292
	.byte	0x10
	.uleb128 0x8
	.long	.LASF62
	.byte	0x8
	.byte	0x42
	.long	0x292
	.byte	0x14
	.uleb128 0x8
	.long	.LASF63
	.byte	0x8
	.byte	0x43
	.long	0x36f
	.byte	0x18
	.uleb128 0x8
	.long	.LASF64
	.byte	0x8
	.byte	0x44
	.long	0x37b
	.byte	0x20
	.uleb128 0xd
	.string	"fp"
	.byte	0x8
	.byte	0x45
	.long	0x387
	.byte	0x28
	.uleb128 0x8
	.long	.LASF65
	.byte	0x8
	.byte	0x46
	.long	0x38d
	.byte	0x30
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x375
	.uleb128 0x6
	.byte	0x8
	.long	0x2a8
	.uleb128 0x6
	.byte	0x8
	.long	0x381
	.uleb128 0x6
	.byte	0x8
	.long	0x2e5
	.uleb128 0x6
	.byte	0x8
	.long	0x9c
	.uleb128 0x6
	.byte	0x8
	.long	0x292
	.uleb128 0x2
	.long	.LASF66
	.byte	0x8
	.byte	0x47
	.long	0x2eb
	.uleb128 0xe
	.long	.LASF67
	.byte	0x1
	.byte	0x3b
	.long	0x292
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x3db
	.uleb128 0xf
	.string	"gs"
	.byte	0x1
	.byte	0x3b
	.long	0x3db
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x10
	.string	"val"
	.byte	0x1
	.byte	0x3d
	.long	0x292
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x393
	.uleb128 0xe
	.long	.LASF68
	.byte	0x1
	.byte	0x43
	.long	0x2a8
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x41e
	.uleb128 0xf
	.string	"gs"
	.byte	0x1
	.byte	0x43
	.long	0x3db
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x10
	.string	"val"
	.byte	0x1
	.byte	0x45
	.long	0x2a8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x11
	.long	.LASF88
	.byte	0x1
	.byte	0x4b
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x457
	.uleb128 0xf
	.string	"val"
	.byte	0x1
	.byte	0x4b
	.long	0x2da
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xf
	.string	"gs"
	.byte	0x1
	.byte	0x4b
	.long	0x3db
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0xe
	.long	.LASF69
	.byte	0x1
	.byte	0x51
	.long	0x62
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x4f5
	.uleb128 0x12
	.long	.LASF70
	.byte	0x1
	.byte	0x51
	.long	0x8f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0xf
	.string	"gs"
	.byte	0x1
	.byte	0x51
	.long	0x3db
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x10
	.string	"i"
	.byte	0x1
	.byte	0x53
	.long	0x292
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x13
	.long	.LASF71
	.byte	0x1
	.byte	0x54
	.long	0x292
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x13
	.long	.LASF72
	.byte	0x1
	.byte	0x55
	.long	0x292
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x13
	.long	.LASF73
	.byte	0x1
	.byte	0x55
	.long	0x292
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x13
	.long	.LASF74
	.byte	0x1
	.byte	0x55
	.long	0x292
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x10
	.string	"tmp"
	.byte	0x1
	.byte	0x56
	.long	0x2a8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x10
	.string	"bv"
	.byte	0x1
	.byte	0x57
	.long	0x2da
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xe
	.long	.LASF75
	.byte	0x1
	.byte	0x97
	.long	0x3db
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x578
	.uleb128 0x12
	.long	.LASF70
	.byte	0x1
	.byte	0x97
	.long	0x8f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x13
	.long	.LASF71
	.byte	0x1
	.byte	0x9a
	.long	0x292
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x13
	.long	.LASF72
	.byte	0x1
	.byte	0x9b
	.long	0x292
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x13
	.long	.LASF73
	.byte	0x1
	.byte	0x9b
	.long	0x292
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x13
	.long	.LASF74
	.byte	0x1
	.byte	0x9b
	.long	0x292
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x10
	.string	"bv"
	.byte	0x1
	.byte	0x9c
	.long	0x2da
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x10
	.string	"gs"
	.byte	0x1
	.byte	0x9d
	.long	0x3db
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0xe
	.long	.LASF76
	.byte	0x1
	.byte	0xd6
	.long	0x292
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x638
	.uleb128 0xf
	.string	"gs"
	.byte	0x1
	.byte	0xd6
	.long	0x3db
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x12
	.long	.LASF77
	.byte	0x1
	.byte	0xd6
	.long	0x375
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x13
	.long	.LASF78
	.byte	0x1
	.byte	0xd8
	.long	0x292
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x13
	.long	.LASF79
	.byte	0x1
	.byte	0xd8
	.long	0x292
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x13
	.long	.LASF80
	.byte	0x1
	.byte	0xd9
	.long	0x2ba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x13
	.long	.LASF81
	.byte	0x1
	.byte	0xd9
	.long	0x2ba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x13
	.long	.LASF82
	.byte	0x1
	.byte	0xd9
	.long	0x2ba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x13
	.long	.LASF83
	.byte	0x1
	.byte	0xd9
	.long	0x2ba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x10
	.string	"min"
	.byte	0x1
	.byte	0xd9
	.long	0x2ba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x10
	.string	"cid"
	.byte	0x1
	.byte	0xda
	.long	0x292
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x13
	.long	.LASF84
	.byte	0x1
	.byte	0xdb
	.long	0x2ba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0xe
	.long	.LASF85
	.byte	0x1
	.byte	0xfd
	.long	0x292
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x6c6
	.uleb128 0xf
	.string	"gs"
	.byte	0x1
	.byte	0xfd
	.long	0x3db
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xf
	.string	"m"
	.byte	0x1
	.byte	0xfd
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xf
	.string	"n"
	.byte	0x1
	.byte	0xfd
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x12
	.long	.LASF77
	.byte	0x1
	.byte	0xfd
	.long	0x375
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x12
	.long	.LASF79
	.byte	0x1
	.byte	0xfd
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x10
	.string	"map"
	.byte	0x1
	.byte	0xff
	.long	0x29d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x14
	.long	.LASF86
	.byte	0x1
	.value	0x100
	.long	0x292
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x15
	.string	"nc"
	.byte	0x1
	.value	0x101
	.long	0x292
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x16
	.long	.LASF87
	.byte	0x1
	.value	0x125
	.long	0x292
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x6f8
	.uleb128 0x17
	.long	.LASF70
	.byte	0x1
	.value	0x125
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x18
	.long	.LASF89
	.byte	0x1
	.value	0x12a
	.long	0x62
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x19
	.string	"gs"
	.byte	0x1
	.value	0x12a
	.long	0x3db
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
	.uleb128 0x10
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
	.uleb128 0x12
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
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
.LASF28:
	.string	"_flags2"
.LASF85:
	.string	"gs_mgau_shortlist"
.LASF62:
	.string	"n_mbyte"
.LASF52:
	.string	"double"
.LASF42:
	.string	"_IO_FILE"
.LASF76:
	.string	"gc_compute_closest_cw"
.LASF57:
	.string	"n_mgau"
.LASF49:
	.string	"float32"
.LASF24:
	.string	"_IO_save_end"
.LASF5:
	.string	"short int"
.LASF7:
	.string	"size_t"
.LASF10:
	.string	"sizetype"
.LASF34:
	.string	"_offset"
.LASF84:
	.string	"min_density"
.LASF69:
	.string	"gs_display"
.LASF18:
	.string	"_IO_write_ptr"
.LASF13:
	.string	"_flags"
.LASF20:
	.string	"_IO_buf_base"
.LASF70:
	.string	"file"
.LASF25:
	.string	"_markers"
.LASF15:
	.string	"_IO_read_end"
.LASF88:
	.string	"gs_fread_bitvec_t"
.LASF67:
	.string	"gs_fread_int32"
.LASF59:
	.string	"n_code"
.LASF87:
	.string	"gs_delete"
.LASF50:
	.string	"float"
.LASF58:
	.string	"n_feat"
.LASF53:
	.string	"long long int"
.LASF72:
	.string	"m_id"
.LASF33:
	.string	"_lock"
.LASF6:
	.string	"long int"
.LASF30:
	.string	"_cur_column"
.LASF73:
	.string	"s_id"
.LASF46:
	.string	"_pos"
.LASF55:
	.string	"bitvec_t"
.LASF60:
	.string	"n_density"
.LASF29:
	.string	"_old_offset"
.LASF68:
	.string	"gs_fread_float32"
.LASF1:
	.string	"unsigned char"
.LASF63:
	.string	"codeword"
.LASF90:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF4:
	.string	"signed char"
.LASF89:
	.string	"gs_free"
.LASF54:
	.string	"long long unsigned int"
.LASF79:
	.string	"bst_codeid"
.LASF3:
	.string	"unsigned int"
.LASF43:
	.string	"_IO_marker"
.LASF32:
	.string	"_shortbuf"
.LASF36:
	.string	"__pad2"
.LASF17:
	.string	"_IO_write_base"
.LASF41:
	.string	"_unused2"
.LASF14:
	.string	"_IO_read_ptr"
.LASF21:
	.string	"_IO_buf_end"
.LASF11:
	.string	"char"
.LASF71:
	.string	"code_id"
.LASF44:
	.string	"_next"
.LASF35:
	.string	"__pad1"
.LASF37:
	.string	"__pad3"
.LASF38:
	.string	"__pad4"
.LASF39:
	.string	"__pad5"
.LASF92:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/482.sphinx3/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF82:
	.string	"tmp1"
.LASF83:
	.string	"tmp2"
.LASF91:
	.string	"gs.c"
.LASF0:
	.string	"long unsigned int"
.LASF74:
	.string	"c_id"
.LASF47:
	.string	"int32"
.LASF19:
	.string	"_IO_write_end"
.LASF77:
	.string	"feat"
.LASF9:
	.string	"__off64_t"
.LASF27:
	.string	"_fileno"
.LASF48:
	.string	"uint32"
.LASF26:
	.string	"_chain"
.LASF8:
	.string	"__off_t"
.LASF23:
	.string	"_IO_backup_base"
.LASF61:
	.string	"n_featlen"
.LASF2:
	.string	"short unsigned int"
.LASF40:
	.string	"_mode"
.LASF16:
	.string	"_IO_read_base"
.LASF56:
	.string	"gs_s"
.LASF51:
	.string	"float64"
.LASF31:
	.string	"_vtable_offset"
.LASF75:
	.string	"gs_read"
.LASF22:
	.string	"_IO_save_base"
.LASF65:
	.string	"mgau_sl"
.LASF12:
	.string	"FILE"
.LASF78:
	.string	"codeid"
.LASF45:
	.string	"_sbuf"
.LASF64:
	.string	"codemap"
.LASF80:
	.string	"diff1"
.LASF81:
	.string	"diff2"
.LASF66:
	.string	"gs_t"
.LASF86:
	.string	"bit_id"
.LASF93:
	.string	"_IO_lock_t"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
