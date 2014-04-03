	.file	"subvq.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I . -I . -I libutil -imultiarch x86_64-linux-gnu
# -D SPEC_CPU -D NDEBUG -D SPEC_CPU -D HAVE_CONFIG_H -D SPEC_CPU_LP64
# subvq.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.data
	.align 4
	.type	VQ_EVAL, @object
	.size	VQ_EVAL, 4
VQ_EVAL:
	.long	3
	.section	.rodata
.LC0:
	.string	"INFO"
.LC1:
	.string	"subvq.c"
	.align 8
.LC2:
	.string	"Precomputing Mahalanobis distance invariants\n"
	.text
	.type	subvq_maha_precomp, @function
subvq_maha_precomp:
.LFB2:
	.file 1 "subvq.c"
	.loc 1 98 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -40(%rbp)	# svq, svq
	movsd	%xmm0, -48(%rbp)	# floor, floor
	.loc 1 103 0
	movl	$.LC0, %edx	#,
	movl	$103, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_info_header	#
	movl	$.LC2, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_info	#
	.loc 1 105 0
	movq	-40(%rbp), %rax	# svq, tmp70
	movl	8(%rax), %edx	# svq_3(D)->n_sv, D.6135
	movq	-40(%rbp), %rax	# svq, tmp71
	movl	12(%rax), %eax	# svq_3(D)->vqsize, D.6135
	imull	%edx, %eax	# D.6135, D.6135
	cltq
	movl	$105, %ecx	#,
	movl	$.LC1, %edx	#,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# D.6136,
	call	__ckd_calloc__	#
	movq	%rax, -16(%rbp)	# tmp72, lrd
	.loc 1 107 0
	movl	$0, -20(%rbp)	#, s
	jmp	.L2	#
.L3:
	.loc 1 108 0 discriminator 2
	movq	-40(%rbp), %rax	# svq, tmp73
	movq	24(%rax), %rcx	# svq_3(D)->gautbl, D.6137
	movl	-20(%rbp), %eax	# s, tmp74
	movslq	%eax, %rdx	# tmp74, D.6136
	movq	%rdx, %rax	# D.6136, tmp75
	salq	$2, %rax	#, tmp75
	addq	%rdx, %rax	# D.6136, tmp75
	salq	$3, %rax	#, tmp76
	addq	%rcx, %rax	# D.6137, tmp77
	movq	%rax, -8(%rbp)	# tmp77, gautbl
	.loc 1 110 0 discriminator 2
	movq	-48(%rbp), %rax	# floor, tmp78
	movq	-8(%rbp), %rdx	# gautbl, tmp79
	movq	%rax, -56(%rbp)	# tmp78, %sfp
	movsd	-56(%rbp), %xmm0	# %sfp,
	movq	%rdx, %rdi	# tmp79,
	call	vector_gautbl_var_floor	#
	.loc 1 112 0 discriminator 2
	movq	-8(%rbp), %rax	# gautbl, tmp80
	movq	-16(%rbp), %rdx	# lrd, tmp81
	movq	%rdx, 24(%rax)	# tmp81, gautbl_14->lrd
	.loc 1 113 0 discriminator 2
	movq	-40(%rbp), %rax	# svq, tmp82
	movl	12(%rax), %eax	# svq_3(D)->vqsize, D.6135
	cltq
	salq	$2, %rax	#, D.6136
	addq	%rax, -16(%rbp)	# D.6136, lrd
	.loc 1 114 0 discriminator 2
	movq	-8(%rbp), %rax	# gautbl, tmp83
	movq	%rax, %rdi	# tmp83,
	call	vector_gautbl_maha_precomp	#
	.loc 1 107 0 discriminator 2
	addl	$1, -20(%rbp)	#, s
.L2:
	.loc 1 107 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# svq, tmp84
	movl	8(%rax), %eax	# svq_3(D)->n_sv, D.6135
	cmpl	-20(%rbp), %eax	# s, D.6135
	jg	.L3	#,
	.loc 1 116 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	subvq_maha_precomp, .-subvq_maha_precomp
	.section	.rodata
.LC3:
	.string	"FATAL_ERROR"
	.align 8
.LC4:
	.string	"Model size conflict: %d x %d (SubVQ) vs %d x %d (Original)\n"
	.align 8
.LC5:
	.string	"Partially undefined map[%d][%d]\n"
	.align 8
.LC6:
	.string	"Mixture %d: #Valid components conflict: %d (SubVQ) vs %d (Original)\n"
	.text
	.type	subvq_map_compact, @function
subvq_map_compact:
.LFB3:
	.loc 1 120 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# vq, vq
	movq	%rsi, -32(%rbp)	# g, g
	.loc 1 123 0
	cmpq	$0, -32(%rbp)	#, g
	je	.L5	#,
	.loc 1 124 0
	movq	-32(%rbp), %rax	# g, tmp156
	movl	(%rax), %edx	# g_9(D)->n_mgau, D.6142
	movq	-24(%rbp), %rax	# vq, tmp157
	movl	(%rax), %eax	# vq_11(D)->origsize.r, D.6142
	cmpl	%eax, %edx	# D.6142, D.6142
	jne	.L6	#,
	.loc 1 124 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# g, tmp158
	movl	4(%rax), %edx	# g_9(D)->max_comp, D.6142
	movq	-24(%rbp), %rax	# vq, tmp159
	movl	4(%rax), %eax	# vq_11(D)->origsize.c, D.6142
	cmpl	%eax, %edx	# D.6142, D.6142
	je	.L5	#,
.L6:
	.loc 1 125 0 is_stmt 1
	movl	$.LC3, %edx	#,
	movl	$125, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_header	#
	movq	-32(%rbp), %rax	# g, tmp160
	movl	4(%rax), %esi	# g_9(D)->max_comp, D.6142
	movq	-32(%rbp), %rax	# g, tmp161
	movl	(%rax), %ecx	# g_9(D)->n_mgau, D.6142
	movq	-24(%rbp), %rax	# vq, tmp162
	movl	4(%rax), %edx	# vq_11(D)->origsize.c, D.6142
	movq	-24(%rbp), %rax	# vq, tmp163
	movl	(%rax), %eax	# vq_11(D)->origsize.r, D.6142
	movl	%esi, %r8d	# D.6142,
	movl	%eax, %esi	# D.6142,
	movl	$.LC4, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L5:
	.loc 1 135 0
	movl	$0, -16(%rbp)	#, r
	jmp	.L7	#
.L24:
	.loc 1 136 0
	movl	$0, -12(%rbp)	#, c
	movl	$0, -8(%rbp)	#, c2
	jmp	.L8	#
.L18:
	.loc 1 137 0
	movq	-24(%rbp), %rax	# vq, tmp164
	movq	32(%rax), %rax	# vq_11(D)->map, D.6143
	movl	-16(%rbp), %edx	# r, tmp165
	movslq	%edx, %rdx	# tmp165, D.6144
	salq	$3, %rdx	#, D.6144
	addq	%rdx, %rax	# D.6144, D.6143
	movq	(%rax), %rax	# *_27, D.6145
	movl	-12(%rbp), %edx	# c, tmp166
	movslq	%edx, %rdx	# tmp166, D.6144
	salq	$3, %rdx	#, D.6144
	addq	%rdx, %rax	# D.6144, D.6145
	movq	(%rax), %rax	# *_31, D.6146
	movl	(%rax), %eax	# *_32, D.6142
	testl	%eax, %eax	# D.6142
	jns	.L9	#,
	.loc 1 139 0
	movl	$1, -4(%rbp)	#, s
	jmp	.L10	#
.L12:
	.loc 1 140 0
	movq	-24(%rbp), %rax	# vq, tmp167
	movq	32(%rax), %rax	# vq_11(D)->map, D.6143
	movl	-16(%rbp), %edx	# r, tmp168
	movslq	%edx, %rdx	# tmp168, D.6144
	salq	$3, %rdx	#, D.6144
	addq	%rdx, %rax	# D.6144, D.6143
	movq	(%rax), %rax	# *_39, D.6145
	movl	-12(%rbp), %edx	# c, tmp169
	movslq	%edx, %rdx	# tmp169, D.6144
	salq	$3, %rdx	#, D.6144
	addq	%rdx, %rax	# D.6144, D.6145
	movq	(%rax), %rax	# *_43, D.6146
	movl	-4(%rbp), %edx	# s, tmp170
	movslq	%edx, %rdx	# tmp170, D.6144
	salq	$2, %rdx	#, D.6144
	addq	%rdx, %rax	# D.6144, D.6146
	movl	(%rax), %eax	# *_47, D.6142
	testl	%eax, %eax	# D.6142
	js	.L11	#,
	.loc 1 141 0
	movl	$.LC3, %edx	#,
	movl	$141, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_header	#
	movl	-12(%rbp), %edx	# c, tmp171
	movl	-16(%rbp), %eax	# r, tmp172
	movl	%eax, %esi	# tmp172,
	movl	$.LC5, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L11:
	.loc 1 139 0
	addl	$1, -4(%rbp)	#, s
.L10:
	.loc 1 139 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# vq, tmp173
	movl	8(%rax), %eax	# vq_11(D)->n_sv, D.6142
	cmpl	-4(%rbp), %eax	# s, D.6142
	jg	.L12	#,
	jmp	.L13	#
.L9:
	.loc 1 144 0 is_stmt 1
	movl	-8(%rbp), %eax	# c2, tmp174
	cmpl	-12(%rbp), %eax	# c, tmp174
	je	.L14	#,
	.loc 1 145 0
	movl	$0, -4(%rbp)	#, s
	jmp	.L15	#
.L17:
	.loc 1 146 0
	movq	-24(%rbp), %rax	# vq, tmp175
	movq	32(%rax), %rax	# vq_11(D)->map, D.6143
	movl	-16(%rbp), %edx	# r, tmp176
	movslq	%edx, %rdx	# tmp176, D.6144
	salq	$3, %rdx	#, D.6144
	addq	%rdx, %rax	# D.6144, D.6143
	movq	(%rax), %rax	# *_55, D.6145
	movl	-12(%rbp), %edx	# c, tmp177
	movslq	%edx, %rdx	# tmp177, D.6144
	salq	$3, %rdx	#, D.6144
	addq	%rdx, %rax	# D.6144, D.6145
	movq	(%rax), %rax	# *_59, D.6146
	movl	-4(%rbp), %edx	# s, tmp178
	movslq	%edx, %rdx	# tmp178, D.6144
	salq	$2, %rdx	#, D.6144
	addq	%rdx, %rax	# D.6144, D.6146
	movl	(%rax), %eax	# *_63, D.6142
	testl	%eax, %eax	# D.6142
	jns	.L16	#,
	.loc 1 147 0
	movl	$.LC3, %edx	#,
	movl	$147, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_header	#
	movl	-12(%rbp), %edx	# c, tmp179
	movl	-16(%rbp), %eax	# r, tmp180
	movl	%eax, %esi	# tmp180,
	movl	$.LC5, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L16:
	.loc 1 148 0
	movq	-24(%rbp), %rax	# vq, tmp181
	movq	32(%rax), %rax	# vq_11(D)->map, D.6143
	movl	-16(%rbp), %edx	# r, tmp182
	movslq	%edx, %rdx	# tmp182, D.6144
	salq	$3, %rdx	#, D.6144
	addq	%rdx, %rax	# D.6144, D.6143
	movq	(%rax), %rax	# *_68, D.6145
	movl	-8(%rbp), %edx	# c2, tmp183
	movslq	%edx, %rdx	# tmp183, D.6144
	salq	$3, %rdx	#, D.6144
	addq	%rdx, %rax	# D.6144, D.6145
	movq	(%rax), %rax	# *_72, D.6146
	movl	-4(%rbp), %edx	# s, tmp184
	movslq	%edx, %rdx	# tmp184, D.6144
	salq	$2, %rdx	#, D.6144
	addq	%rax, %rdx	# D.6146, D.6146
	movq	-24(%rbp), %rax	# vq, tmp185
	movq	32(%rax), %rax	# vq_11(D)->map, D.6143
	movl	-16(%rbp), %ecx	# r, tmp186
	movslq	%ecx, %rcx	# tmp186, D.6144
	salq	$3, %rcx	#, D.6144
	addq	%rcx, %rax	# D.6144, D.6143
	movq	(%rax), %rax	# *_80, D.6145
	movl	-12(%rbp), %ecx	# c, tmp187
	movslq	%ecx, %rcx	# tmp187, D.6144
	salq	$3, %rcx	#, D.6144
	addq	%rcx, %rax	# D.6144, D.6145
	movq	(%rax), %rax	# *_84, D.6146
	movl	-4(%rbp), %ecx	# s, tmp188
	movslq	%ecx, %rcx	# tmp188, D.6144
	salq	$2, %rcx	#, D.6144
	addq	%rcx, %rax	# D.6144, D.6146
	movl	(%rax), %eax	# *_88, D.6142
	movl	%eax, (%rdx)	# D.6142, *_76
	.loc 1 145 0
	addl	$1, -4(%rbp)	#, s
.L15:
	.loc 1 145 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# vq, tmp189
	movl	8(%rax), %eax	# vq_11(D)->n_sv, D.6142
	cmpl	-4(%rbp), %eax	# s, D.6142
	jg	.L17	#,
.L14:
	.loc 1 151 0 is_stmt 1
	addl	$1, -8(%rbp)	#, c2
.L13:
	.loc 1 136 0
	addl	$1, -12(%rbp)	#, c
.L8:
	.loc 1 136 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# vq, tmp190
	movl	4(%rax), %eax	# vq_11(D)->origsize.c, D.6142
	cmpl	-12(%rbp), %eax	# c, D.6142
	jg	.L18	#,
	.loc 1 155 0 is_stmt 1
	cmpq	$0, -32(%rbp)	#, g
	je	.L19	#,
	.loc 1 155 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# g, tmp191
	movq	16(%rax), %rcx	# g_9(D)->mgau, D.6147
	movl	-16(%rbp), %eax	# r, tmp192
	movslq	%eax, %rdx	# tmp192, D.6144
	movq	%rdx, %rax	# D.6144, tmp193
	salq	$2, %rax	#, tmp193
	addq	%rdx, %rax	# D.6144, tmp193
	salq	$3, %rax	#, tmp194
	addq	%rcx, %rax	# D.6147, D.6147
	movl	(%rax), %eax	# _96->n_comp, D.6142
	cmpl	-8(%rbp), %eax	# c2, D.6142
	je	.L19	#,
	.loc 1 156 0 is_stmt 1
	movl	$.LC3, %edx	#,
	movl	$156, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_header	#
	.loc 1 157 0
	movq	-32(%rbp), %rax	# g, tmp195
	movq	16(%rax), %rcx	# g_9(D)->mgau, D.6147
	movl	-16(%rbp), %eax	# r, tmp196
	movslq	%eax, %rdx	# tmp196, D.6144
	movq	%rdx, %rax	# D.6144, tmp197
	salq	$2, %rax	#, tmp197
	addq	%rdx, %rax	# D.6144, tmp197
	salq	$3, %rax	#, tmp198
	addq	%rcx, %rax	# D.6147, D.6147
	.loc 1 156 0
	movl	(%rax), %ecx	# _101->n_comp, D.6142
	movl	-8(%rbp), %edx	# c2, tmp199
	movl	-16(%rbp), %eax	# r, tmp200
	movl	%eax, %esi	# tmp200,
	movl	$.LC6, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
	.loc 1 160 0
	jmp	.L20	#
.L19:
	jmp	.L20	#
.L23:
	.loc 1 161 0
	movl	$0, -4(%rbp)	#, s
	jmp	.L21	#
.L22:
	.loc 1 162 0 discriminator 2
	movq	-24(%rbp), %rax	# vq, tmp201
	movq	32(%rax), %rax	# vq_11(D)->map, D.6143
	movl	-16(%rbp), %edx	# r, tmp202
	movslq	%edx, %rdx	# tmp202, D.6144
	salq	$3, %rdx	#, D.6144
	addq	%rdx, %rax	# D.6144, D.6143
	movq	(%rax), %rax	# *_109, D.6145
	movl	-8(%rbp), %edx	# c2, tmp203
	movslq	%edx, %rdx	# tmp203, D.6144
	salq	$3, %rdx	#, D.6144
	addq	%rdx, %rax	# D.6144, D.6145
	movq	(%rax), %rax	# *_113, D.6146
	movl	-4(%rbp), %edx	# s, tmp204
	movslq	%edx, %rdx	# tmp204, D.6144
	salq	$2, %rdx	#, D.6144
	addq	%rdx, %rax	# D.6144, D.6146
	movl	$-1, (%rax)	#, *_117
	.loc 1 161 0 discriminator 2
	addl	$1, -4(%rbp)	#, s
.L21:
	.loc 1 161 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# vq, tmp205
	movl	8(%rax), %eax	# vq_11(D)->n_sv, D.6142
	cmpl	-4(%rbp), %eax	# s, D.6142
	jg	.L22	#,
	.loc 1 160 0 is_stmt 1
	addl	$1, -8(%rbp)	#, c2
.L20:
	.loc 1 160 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# vq, tmp206
	movl	4(%rax), %eax	# vq_11(D)->origsize.c, D.6142
	cmpl	-8(%rbp), %eax	# c2, D.6142
	jg	.L23	#,
	.loc 1 135 0 is_stmt 1
	addl	$1, -16(%rbp)	#, r
.L7:
	.loc 1 135 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# vq, tmp207
	movl	(%rax), %eax	# vq_11(D)->origsize.r, D.6142
	cmpl	-16(%rbp), %eax	# r, D.6142
	jg	.L24	#,
	.loc 1 165 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	subvq_map_compact, .-subvq_map_compact
	.type	subvq_map_linearize, @function
subvq_map_linearize:
.LFB4:
	.loc 1 176 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# vq, vq
	.loc 1 179 0
	movl	$0, -12(%rbp)	#, r
	jmp	.L26	#
.L32:
	.loc 1 180 0
	movl	$0, -8(%rbp)	#, c
	jmp	.L27	#
.L31:
	.loc 1 181 0
	movl	$0, -4(%rbp)	#, s
	jmp	.L28	#
.L29:
	.loc 1 182 0 discriminator 2
	movq	-24(%rbp), %rax	# vq, tmp100
	movq	32(%rax), %rax	# vq_5(D)->map, D.6153
	movl	-12(%rbp), %edx	# r, tmp101
	movslq	%edx, %rdx	# tmp101, D.6154
	salq	$3, %rdx	#, D.6154
	addq	%rdx, %rax	# D.6154, D.6153
	movq	(%rax), %rax	# *_24, D.6155
	movl	-8(%rbp), %edx	# c, tmp102
	movslq	%edx, %rdx	# tmp102, D.6154
	salq	$3, %rdx	#, D.6154
	addq	%rdx, %rax	# D.6154, D.6155
	movq	(%rax), %rax	# *_28, D.6156
	movl	-4(%rbp), %edx	# s, tmp103
	movslq	%edx, %rdx	# tmp103, D.6154
	salq	$2, %rdx	#, D.6154
	addq	%rax, %rdx	# D.6156, D.6156
	movq	-24(%rbp), %rax	# vq, tmp104
	movl	12(%rax), %eax	# vq_5(D)->vqsize, D.6152
	imull	-4(%rbp), %eax	# s, D.6152
	movl	%eax, %ecx	# D.6152, D.6152
	movq	-24(%rbp), %rax	# vq, tmp105
	movq	32(%rax), %rax	# vq_5(D)->map, D.6153
	movl	-12(%rbp), %esi	# r, tmp106
	movslq	%esi, %rsi	# tmp106, D.6154
	salq	$3, %rsi	#, D.6154
	addq	%rsi, %rax	# D.6154, D.6153
	movq	(%rax), %rax	# *_38, D.6155
	movl	-8(%rbp), %esi	# c, tmp107
	movslq	%esi, %rsi	# tmp107, D.6154
	salq	$3, %rsi	#, D.6154
	addq	%rsi, %rax	# D.6154, D.6155
	movq	(%rax), %rax	# *_42, D.6156
	movl	-4(%rbp), %esi	# s, tmp108
	movslq	%esi, %rsi	# tmp108, D.6154
	salq	$2, %rsi	#, D.6154
	addq	%rsi, %rax	# D.6154, D.6156
	movl	(%rax), %eax	# *_46, D.6152
	addl	%ecx, %eax	# D.6152, D.6152
	movl	%eax, (%rdx)	# D.6152, *_32
	.loc 1 181 0 discriminator 2
	addl	$1, -4(%rbp)	#, s
.L28:
	.loc 1 181 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# vq, tmp109
	movl	8(%rax), %eax	# vq_5(D)->n_sv, D.6152
	cmpl	-4(%rbp), %eax	# s, D.6152
	jg	.L29	#,
	.loc 1 180 0 is_stmt 1
	addl	$1, -8(%rbp)	#, c
.L27:
	.loc 1 180 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# vq, tmp110
	movl	4(%rax), %eax	# vq_5(D)->origsize.c, D.6152
	cmpl	-8(%rbp), %eax	# c, D.6152
	jle	.L30	#,
	.loc 1 180 0 discriminator 2
	movq	-24(%rbp), %rax	# vq, tmp111
	movq	32(%rax), %rax	# vq_5(D)->map, D.6153
	movl	-12(%rbp), %edx	# r, tmp112
	movslq	%edx, %rdx	# tmp112, D.6154
	salq	$3, %rdx	#, D.6154
	addq	%rdx, %rax	# D.6154, D.6153
	movq	(%rax), %rax	# *_12, D.6155
	movl	-8(%rbp), %edx	# c, tmp113
	movslq	%edx, %rdx	# tmp113, D.6154
	salq	$3, %rdx	#, D.6154
	addq	%rdx, %rax	# D.6154, D.6155
	movq	(%rax), %rax	# *_16, D.6156
	movl	(%rax), %eax	# *_17, D.6152
	testl	%eax, %eax	# D.6152
	jns	.L31	#,
.L30:
	.loc 1 179 0 is_stmt 1
	addl	$1, -12(%rbp)	#, r
.L26:
	.loc 1 179 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# vq, tmp114
	movl	(%rax), %eax	# vq_5(D)->origsize.r, D.6152
	cmpl	-12(%rbp), %eax	# r, D.6152
	jg	.L32	#,
	.loc 1 185 0 is_stmt 1
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	subvq_map_linearize, .-subvq_map_linearize
	.section	.rodata
.LC7:
	.string	"-vqeval"
	.align 8
.LC8:
	.string	"Loading Mixture Gaussian sub-VQ file '%s' (vq_eval: %d)\n"
.LC9:
	.string	"r"
	.align 8
.LC10:
	.string	"Failed to read VQParam header\n"
.LC11:
	.string	"VQParam %d %d -> %d %d"
	.align 8
.LC12:
	.string	"Using %d subvectors out of %d\n"
.LC13:
	.string	"WARNING"
	.align 8
.LC14:
	.string	"#Subvectors specified(%d) > available(%d); using latter\n"
.LC15:
	.string	"Subvector %d length %d%n"
	.align 8
.LC16:
	.string	"Error reading length(subvector %d)\n"
.LC17:
	.string	"%d%n"
	.align 8
.LC18:
	.string	"Error reading subvector(%d).featdim(%d)\n"
	.align 8
.LC19:
	.string	"Original #codebooks(states)/codewords: %d x %d\n"
.LC20:
	.string	"Subvectors: %d, VQsize: %d\n"
.LC21:
	.string	"SV %d feature dims(%d): "
.LC22:
	.string	" %2d"
.LC23:
	.string	""
.LC24:
	.string	" (not used)"
.LC25:
	.string	"Reading subvq %d%s\n"
.LC26:
	.string	"Reading codebook\n"
.LC27:
	.string	"Codebook %d"
	.align 8
.LC28:
	.string	"Error reading codebook header\n"
.LC29:
	.string	"Error reading row(%d)\n"
.LC30:
	.string	"%f %f%n"
	.align 8
.LC31:
	.string	"Error reading row(%d) col(%d)\n"
.LC32:
	.string	"Reading map\n"
.LC33:
	.string	"Map %d"
.LC34:
	.string	"Error reading map header\n"
.LC35:
	.string	"%s"
.LC36:
	.string	"End"
.LC37:
	.string	"Error reading 'End' token\n"
	.text
	.globl	subvq_init
	.type	subvq_init, @function
subvq_init:
.LFB5:
	.loc 1 189 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$16520, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -16488(%rbp)	# file, file
	movsd	%xmm0, -16496(%rbp)	# varfloor, varfloor
	movl	%esi, -16500(%rbp)	# max_sv, max_sv
	movq	%rdx, -16512(%rbp)	# g, g
	.loc 1 189 0
	movq	%fs:40, %rax	#, tmp439
	movq	%rax, -24(%rbp)	# tmp439, D.6172
	xorl	%eax, %eax	# tmp439
	.loc 1 197 0
	movl	$.LC7, %edi	#,
	call	cmd_ln_access	#
	movl	(%rax), %eax	# MEM[(int32 *)_17], VQ_EVAL.0
	movl	%eax, VQ_EVAL(%rip)	# VQ_EVAL.0, VQ_EVAL
	.loc 1 199 0
	movl	$.LC0, %edx	#,
	movl	$199, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_info_header	#
	movl	VQ_EVAL(%rip), %edx	# VQ_EVAL, VQ_EVAL.1
	movq	-16488(%rbp), %rax	# file, tmp258
	movq	%rax, %rsi	# tmp258,
	movl	$.LC8, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_info	#
	.loc 1 201 0
	movl	$201, %ecx	#,
	movl	$.LC1, %edx	#,
	movl	$72, %esi	#,
	movl	$1, %edi	#,
	call	__ckd_calloc__	#
	movq	%rax, -16432(%rbp)	# tmp259, vq
	.loc 1 203 0
	movq	-16488(%rbp), %rax	# file, tmp260
	movl	$203, %ecx	#,
	movl	$.LC1, %edx	#,
	movl	$.LC9, %esi	#,
	movq	%rax, %rdi	# tmp260,
	call	_myfopen	#
	movq	%rax, -16424(%rbp)	# tmp261, fp
.L37:
	.loc 1 207 0
	movq	-16424(%rbp), %rdx	# fp, tmp262
	leaq	-16416(%rbp), %rax	#, tmp263
	movl	$16384, %esi	#,
	movq	%rax, %rdi	# tmp263,
	call	fgets	#
	testq	%rax, %rax	# D.6158
	jne	.L34	#,
	.loc 1 208 0
	movl	$.LC3, %edx	#,
	movl	$208, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_header	#
	movl	$.LC10, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L34:
	.loc 1 209 0
	movq	-16432(%rbp), %rax	# vq, tmp264
	leaq	12(%rax), %rdi	#, D.6159
	movq	-16432(%rbp), %rax	# vq, tmp265
	leaq	8(%rax), %rsi	#, D.6159
	movq	-16432(%rbp), %rax	# vq, tmp266
	leaq	4(%rax), %rcx	#, D.6159
	movq	-16432(%rbp), %rdx	# vq, D.6159
	leaq	-16416(%rbp), %rax	#, tmp267
	movq	%rdi, %r9	# D.6159,
	movq	%rsi, %r8	# D.6159,
	movl	$.LC11, %esi	#,
	movq	%rax, %rdi	# tmp267,
	movl	$0, %eax	#,
	call	__isoc99_sscanf	#
	cmpl	$4, %eax	#, D.6160
	jne	.L35	#,
	.loc 1 211 0
	nop
	.loc 1 214 0
	cmpq	$0, -16512(%rbp)	#, g
	je	.L38	#,
	jmp	.L87	#
.L35:
	.loc 1 212 0
	jmp	.L37	#
.L87:
	.loc 1 215 0
	movq	-16512(%rbp), %rax	# g, tmp268
	movl	(%rax), %edx	# g_29(D)->n_mgau, D.6160
	movq	-16432(%rbp), %rax	# vq, tmp269
	movl	(%rax), %eax	# vq_21->origsize.r, D.6160
	cmpl	%eax, %edx	# D.6160, D.6160
	jne	.L39	#,
	.loc 1 215 0 is_stmt 0 discriminator 1
	movq	-16512(%rbp), %rax	# g, tmp270
	movl	4(%rax), %edx	# g_29(D)->max_comp, D.6160
	movq	-16432(%rbp), %rax	# vq, tmp271
	movl	4(%rax), %eax	# vq_21->origsize.c, D.6160
	cmpl	%eax, %edx	# D.6160, D.6160
	je	.L38	#,
.L39:
	.loc 1 216 0 is_stmt 1
	movl	$.LC3, %edx	#,
	movl	$216, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_header	#
	movq	-16512(%rbp), %rax	# g, tmp272
	movl	4(%rax), %esi	# g_29(D)->max_comp, D.6160
	movq	-16512(%rbp), %rax	# g, tmp273
	movl	(%rax), %ecx	# g_29(D)->n_mgau, D.6160
	movq	-16432(%rbp), %rax	# vq, tmp274
	movl	4(%rax), %edx	# vq_21->origsize.c, D.6160
	movq	-16432(%rbp), %rax	# vq, tmp275
	movl	(%rax), %eax	# vq_21->origsize.r, D.6160
	movl	%esi, %r8d	# D.6160,
	movl	%eax, %esi	# D.6160,
	movl	$.LC4, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L38:
	.loc 1 220 0
	cmpl	$0, -16500(%rbp)	#, max_sv
	jns	.L40	#,
	.loc 1 221 0
	movq	-16432(%rbp), %rax	# vq, tmp276
	movl	8(%rax), %eax	# vq_21->n_sv, tmp277
	movl	%eax, -16500(%rbp)	# tmp277, max_sv
.L40:
	.loc 1 222 0
	movq	-16432(%rbp), %rax	# vq, tmp278
	movl	8(%rax), %eax	# vq_21->n_sv, D.6160
	cmpl	-16500(%rbp), %eax	# max_sv, D.6160
	jle	.L41	#,
	.loc 1 223 0
	movl	$.LC0, %edx	#,
	movl	$223, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_info_header	#
	movq	-16432(%rbp), %rax	# vq, tmp279
	movl	8(%rax), %edx	# vq_21->n_sv, D.6160
	movl	-16500(%rbp), %eax	# max_sv, tmp280
	movl	%eax, %esi	# tmp280,
	movl	$.LC12, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_info	#
	jmp	.L42	#
.L41:
	.loc 1 224 0
	movq	-16432(%rbp), %rax	# vq, tmp281
	movl	8(%rax), %eax	# vq_21->n_sv, D.6160
	cmpl	-16500(%rbp), %eax	# max_sv, D.6160
	jge	.L42	#,
	.loc 1 225 0
	movl	$.LC13, %edx	#,
	movl	$225, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_header	#
	movq	-16432(%rbp), %rax	# vq, tmp282
	movl	8(%rax), %edx	# vq_21->n_sv, D.6160
	movl	-16500(%rbp), %eax	# max_sv, tmp283
	movl	%eax, %esi	# tmp283,
	movl	$.LC14, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_warn	#
	.loc 1 226 0
	movq	-16432(%rbp), %rax	# vq, tmp284
	movl	8(%rax), %eax	# vq_21->n_sv, tmp285
	movl	%eax, -16500(%rbp)	# tmp285, max_sv
.L42:
	.loc 1 229 0
	movq	-16432(%rbp), %rax	# vq, tmp286
	movl	8(%rax), %eax	# vq_21->n_sv, tmp287
	movl	%eax, -16444(%rbp)	# tmp287, n_sv
	.loc 1 230 0
	movq	-16432(%rbp), %rax	# vq, tmp288
	movl	-16500(%rbp), %edx	# max_sv, tmp289
	movl	%edx, 8(%rax)	# tmp289, vq_21->n_sv
	.loc 1 231 0
	movq	-16432(%rbp), %rax	# vq, tmp290
	movl	8(%rax), %edx	# vq_21->n_sv, D.6160
	movl	VQ_EVAL(%rip), %eax	# VQ_EVAL, VQ_EVAL.2
	cmpl	%eax, %edx	# VQ_EVAL.2, D.6160
	jge	.L43	#,
	.loc 1 232 0
	movq	-16432(%rbp), %rax	# vq, tmp291
	movl	8(%rax), %eax	# vq_21->n_sv, VQ_EVAL.3
	movl	%eax, VQ_EVAL(%rip)	# VQ_EVAL.3, VQ_EVAL
.L43:
	.loc 1 233 0
	movq	-16432(%rbp), %rax	# vq, tmp292
	movl	8(%rax), %eax	# vq_21->n_sv, D.6160
	cltq
	movl	$233, %ecx	#,
	movl	$.LC1, %edx	#,
	movl	$8, %esi	#,
	movq	%rax, %rdi	# D.6161,
	call	__ckd_calloc__	#
	movq	-16432(%rbp), %rdx	# vq, tmp293
	movq	%rax, 16(%rdx)	# D.6162, vq_21->featdim
	.loc 1 234 0
	movq	-16432(%rbp), %rax	# vq, tmp294
	movl	8(%rax), %eax	# vq_21->n_sv, D.6160
	cltq
	movl	$234, %ecx	#,
	movl	$.LC1, %edx	#,
	movl	$40, %esi	#,
	movq	%rax, %rdi	# D.6161,
	call	__ckd_calloc__	#
	movq	-16432(%rbp), %rdx	# vq, tmp295
	movq	%rax, 24(%rdx)	# D.6162, vq_21->gautbl
	.loc 1 235 0
	movq	-16432(%rbp), %rax	# vq, tmp296
	movl	8(%rax), %edx	# vq_21->n_sv, D.6160
	movq	-16432(%rbp), %rax	# vq, tmp297
	movl	4(%rax), %esi	# vq_21->origsize.c, D.6160
	movq	-16432(%rbp), %rax	# vq, tmp298
	movl	(%rax), %eax	# vq_21->origsize.r, D.6160
	movl	$236, %r9d	#,
	movl	$.LC1, %r8d	#,
	movl	$4, %ecx	#,
	movl	%eax, %edi	# D.6160,
	call	__ckd_calloc_3d__	#
	movq	-16432(%rbp), %rdx	# vq, tmp299
	movq	%rax, 32(%rdx)	# D.6163, vq_21->map
	.loc 1 239 0
	movl	$0, -16456(%rbp)	#, s
	jmp	.L44	#
.L51:
	.loc 1 240 0
	movq	-16424(%rbp), %rdx	# fp, tmp300
	leaq	-16416(%rbp), %rax	#, tmp301
	movl	$16384, %esi	#,
	movq	%rax, %rdi	# tmp301,
	call	fgets	#
	testq	%rax, %rax	# D.6158
	je	.L45	#,
	.loc 1 241 0 discriminator 1
	leaq	-16460(%rbp), %rsi	#, tmp302
	leaq	-16464(%rbp), %rcx	#, tmp303
	leaq	-16468(%rbp), %rdx	#, tmp304
	leaq	-16416(%rbp), %rax	#, tmp305
	movq	%rsi, %r8	# tmp302,
	movl	$.LC15, %esi	#,
	movq	%rax, %rdi	# tmp305,
	movl	$0, %eax	#,
	call	__isoc99_sscanf	#
	.loc 1 240 0 discriminator 1
	cmpl	$2, %eax	#, D.6160
	jne	.L45	#,
	.loc 1 241 0
	movl	-16468(%rbp), %eax	# k, k.4
	cmpl	-16456(%rbp), %eax	# s, k.4
	je	.L46	#,
.L45:
	.loc 1 242 0
	movl	$.LC3, %edx	#,
	movl	$242, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_header	#
	movl	-16456(%rbp), %eax	# s, tmp306
	movl	%eax, %esi	# tmp306,
	movl	$.LC16, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L46:
	.loc 1 244 0
	movq	-16432(%rbp), %rax	# vq, tmp307
	movl	8(%rax), %eax	# vq_21->n_sv, D.6160
	cmpl	-16456(%rbp), %eax	# s, D.6160
	jle	.L47	#,
	.loc 1 245 0
	movq	-16432(%rbp), %rax	# vq, tmp308
	movq	24(%rax), %rcx	# vq_21->gautbl, D.6164
	movl	-16456(%rbp), %eax	# s, tmp309
	movslq	%eax, %rdx	# tmp309, D.6161
	movq	%rdx, %rax	# D.6161, tmp310
	salq	$2, %rax	#, tmp310
	addq	%rdx, %rax	# D.6161, tmp310
	salq	$3, %rax	#, tmp311
	leaq	(%rcx,%rax), %rdx	#, D.6164
	movl	-16464(%rbp), %eax	# l, l.5
	movl	%eax, 4(%rdx)	# l.5, _67->veclen
	.loc 1 246 0
	movq	-16432(%rbp), %rax	# vq, tmp312
	movq	16(%rax), %rax	# vq_21->featdim, D.6165
	movl	-16456(%rbp), %edx	# s, tmp313
	movslq	%edx, %rdx	# tmp313, D.6161
	salq	$3, %rdx	#, D.6161
	leaq	(%rax,%rdx), %rbx	#, D.6165
	movq	-16432(%rbp), %rax	# vq, tmp314
	movq	24(%rax), %rcx	# vq_21->gautbl, D.6164
	movl	-16456(%rbp), %eax	# s, tmp315
	movslq	%eax, %rdx	# tmp315, D.6161
	movq	%rdx, %rax	# D.6161, tmp316
	salq	$2, %rax	#, tmp316
	addq	%rdx, %rax	# D.6161, tmp316
	salq	$3, %rax	#, tmp317
	addq	%rcx, %rax	# D.6164, D.6164
	movl	4(%rax), %eax	# _76->veclen, D.6160
	cltq
	movl	$246, %ecx	#,
	movl	$.LC1, %edx	#,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# D.6161,
	call	__ckd_calloc__	#
	movq	%rax, (%rbx)	# D.6162, *_72
	.loc 1 248 0
	movl	-16460(%rbp), %eax	# n, n.6
	cltq
	leaq	-16416(%rbp), %rdx	#, tmp318
	addq	%rdx, %rax	# tmp318, tmp319
	movq	%rax, -16440(%rbp)	# tmp319, strp
	movl	$0, -16448(%rbp)	#, c
	jmp	.L48	#
.L50:
	.loc 1 249 0
	movq	-16432(%rbp), %rax	# vq, tmp320
	movq	16(%rax), %rax	# vq_21->featdim, D.6165
	movl	-16456(%rbp), %edx	# s, tmp321
	movslq	%edx, %rdx	# tmp321, D.6161
	salq	$3, %rdx	#, D.6161
	addq	%rdx, %rax	# D.6161, D.6165
	movq	(%rax), %rax	# *_92, D.6159
	movl	-16448(%rbp), %edx	# c, tmp322
	movslq	%edx, %rdx	# tmp322, D.6161
	salq	$2, %rdx	#, D.6161
	leaq	(%rax,%rdx), %rsi	#, D.6159
	leaq	-16460(%rbp), %rdx	#, tmp323
	movq	-16440(%rbp), %rax	# strp, tmp324
	movq	%rdx, %rcx	# tmp323,
	movq	%rsi, %rdx	# D.6159,
	movl	$.LC17, %esi	#,
	movq	%rax, %rdi	# tmp324,
	movl	$0, %eax	#,
	call	__isoc99_sscanf	#
	cmpl	$1, %eax	#, D.6160
	je	.L49	#,
	.loc 1 250 0
	movl	$.LC3, %edx	#,
	movl	$250, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_header	#
	movl	-16448(%rbp), %edx	# c, tmp325
	movl	-16456(%rbp), %eax	# s, tmp326
	movl	%eax, %esi	# tmp326,
	movl	$.LC18, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L49:
	.loc 1 251 0
	movl	-16460(%rbp), %eax	# n, n.7
	cltq
	addq	%rax, -16440(%rbp)	# D.6166, strp
	.loc 1 248 0
	addl	$1, -16448(%rbp)	#, c
.L48:
	.loc 1 248 0 is_stmt 0 discriminator 1
	movq	-16432(%rbp), %rax	# vq, tmp327
	movq	24(%rax), %rcx	# vq_21->gautbl, D.6164
	movl	-16456(%rbp), %eax	# s, tmp328
	movslq	%eax, %rdx	# tmp328, D.6161
	movq	%rdx, %rax	# D.6161, tmp329
	salq	$2, %rax	#, tmp329
	addq	%rdx, %rax	# D.6161, tmp329
	salq	$3, %rax	#, tmp330
	addq	%rcx, %rax	# D.6164, D.6164
	movl	4(%rax), %eax	# _87->veclen, D.6160
	cmpl	-16448(%rbp), %eax	# c, D.6160
	jg	.L50	#,
	.loc 1 254 0 is_stmt 1
	movq	-16432(%rbp), %rax	# vq, tmp331
	movq	24(%rax), %rcx	# vq_21->gautbl, D.6164
	movl	-16456(%rbp), %eax	# s, tmp332
	movslq	%eax, %rdx	# tmp332, D.6161
	movq	%rdx, %rax	# D.6161, tmp333
	salq	$2, %rax	#, tmp333
	addq	%rdx, %rax	# D.6161, tmp333
	salq	$3, %rax	#, tmp334
	addq	%rcx, %rax	# D.6164, D.6164
	movl	4(%rax), %esi	# _105->veclen, D.6160
	movq	-16432(%rbp), %rax	# vq, tmp335
	movl	12(%rax), %ecx	# vq_21->vqsize, D.6160
	movq	-16432(%rbp), %rax	# vq, tmp336
	movq	24(%rax), %rdi	# vq_21->gautbl, D.6164
	movl	-16456(%rbp), %eax	# s, tmp337
	movslq	%eax, %rdx	# tmp337, D.6161
	movq	%rdx, %rax	# D.6161, tmp338
	salq	$2, %rax	#, tmp338
	addq	%rdx, %rax	# D.6161, tmp338
	salq	$3, %rax	#, tmp339
	addq	%rdi, %rax	# D.6164, D.6164
	movl	%esi, %edx	# D.6160,
	movl	%ecx, %esi	# D.6160,
	movq	%rax, %rdi	# D.6164,
	call	vector_gautbl_alloc	#
.L47:
	.loc 1 239 0
	addl	$1, -16456(%rbp)	#, s
.L44:
	.loc 1 239 0 is_stmt 0 discriminator 1
	movl	-16456(%rbp), %eax	# s, tmp340
	cmpl	-16444(%rbp), %eax	# n_sv, tmp340
	jl	.L51	#,
	.loc 1 259 0 is_stmt 1
	movl	$.LC0, %edx	#,
	movl	$259, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_info_header	#
	movq	-16432(%rbp), %rax	# vq, tmp341
	movl	4(%rax), %edx	# vq_21->origsize.c, D.6160
	movq	-16432(%rbp), %rax	# vq, tmp342
	movl	(%rax), %eax	# vq_21->origsize.r, D.6160
	movl	%eax, %esi	# D.6160,
	movl	$.LC19, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_info	#
	.loc 1 260 0
	movl	$.LC0, %edx	#,
	movl	$260, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_info_header	#
	movq	-16432(%rbp), %rax	# vq, tmp343
	movl	12(%rax), %edx	# vq_21->vqsize, D.6160
	movq	-16432(%rbp), %rax	# vq, tmp344
	movl	8(%rax), %eax	# vq_21->n_sv, D.6160
	movl	%eax, %esi	# D.6160,
	movl	$.LC20, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_info	#
	.loc 1 261 0
	movl	$0, -16456(%rbp)	#, s
	jmp	.L52	#
.L55:
	.loc 1 262 0
	movl	$.LC0, %edx	#,
	movl	$262, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_info_header	#
	movq	-16432(%rbp), %rax	# vq, tmp345
	movq	24(%rax), %rcx	# vq_21->gautbl, D.6164
	movl	-16456(%rbp), %eax	# s, tmp346
	movslq	%eax, %rdx	# tmp346, D.6161
	movq	%rdx, %rax	# D.6161, tmp347
	salq	$2, %rax	#, tmp347
	addq	%rdx, %rax	# D.6161, tmp347
	salq	$3, %rax	#, tmp348
	addq	%rcx, %rax	# D.6164, D.6164
	movl	4(%rax), %edx	# _122->veclen, D.6160
	movl	-16456(%rbp), %eax	# s, tmp349
	movl	%eax, %esi	# tmp349,
	movl	$.LC21, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_info	#
	.loc 1 263 0
	movl	$0, -16448(%rbp)	#, c
	jmp	.L53	#
.L54:
	.loc 1 264 0 discriminator 2
	movq	-16432(%rbp), %rax	# vq, tmp350
	movq	16(%rax), %rax	# vq_21->featdim, D.6165
	movl	-16456(%rbp), %edx	# s, tmp351
	movslq	%edx, %rdx	# tmp351, D.6161
	salq	$3, %rdx	#, D.6161
	addq	%rdx, %rax	# D.6161, D.6165
	movq	(%rax), %rax	# *_133, D.6159
	movl	-16448(%rbp), %edx	# c, tmp352
	movslq	%edx, %rdx	# tmp352, D.6161
	salq	$2, %rdx	#, D.6161
	addq	%rdx, %rax	# D.6161, D.6159
	movl	(%rax), %edx	# *_137, D.6160
	movq	stdout(%rip), %rax	# stdout, stdout.8
	movl	$.LC22, %esi	#,
	movq	%rax, %rdi	# stdout.8,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 263 0 discriminator 2
	addl	$1, -16448(%rbp)	#, c
.L53:
	.loc 1 263 0 is_stmt 0 discriminator 1
	movq	-16432(%rbp), %rax	# vq, tmp353
	movq	24(%rax), %rcx	# vq_21->gautbl, D.6164
	movl	-16456(%rbp), %eax	# s, tmp354
	movslq	%eax, %rdx	# tmp354, D.6161
	movq	%rdx, %rax	# D.6161, tmp355
	salq	$2, %rax	#, tmp355
	addq	%rdx, %rax	# D.6161, tmp355
	salq	$3, %rax	#, tmp356
	addq	%rcx, %rax	# D.6164, D.6164
	movl	4(%rax), %eax	# _128->veclen, D.6160
	cmpl	-16448(%rbp), %eax	# c, D.6160
	jg	.L54	#,
	.loc 1 265 0 is_stmt 1
	movq	stdout(%rip), %rax	# stdout, stdout.9
	movq	%rax, %rsi	# stdout.9,
	movl	$10, %edi	#,
	call	fputc	#
	.loc 1 261 0
	addl	$1, -16456(%rbp)	#, s
.L52:
	.loc 1 261 0 is_stmt 0 discriminator 1
	movq	-16432(%rbp), %rax	# vq, tmp357
	movl	8(%rax), %eax	# vq_21->n_sv, D.6160
	cmpl	-16456(%rbp), %eax	# s, D.6160
	jg	.L55	#,
	.loc 1 270 0 is_stmt 1
	movl	$0, -16456(%rbp)	#, s
	jmp	.L56	#
.L79:
	.loc 1 271 0
	movl	$.LC0, %edx	#,
	movl	$271, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_info_header	#
	movq	-16432(%rbp), %rax	# vq, tmp358
	movl	8(%rax), %eax	# vq_21->n_sv, D.6160
	cmpl	-16456(%rbp), %eax	# s, D.6160
	jle	.L57	#,
	.loc 1 271 0 is_stmt 0 discriminator 1
	movl	$.LC23, %eax	#, iftmp.10
	jmp	.L58	#
.L57:
	.loc 1 271 0 discriminator 2
	movl	$.LC24, %eax	#, iftmp.10
.L58:
	.loc 1 271 0 discriminator 3
	movl	-16456(%rbp), %ecx	# s, tmp359
	movq	%rax, %rdx	# iftmp.10,
	movl	%ecx, %esi	# tmp359,
	movl	$.LC25, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_info	#
	.loc 1 273 0 is_stmt 1 discriminator 3
	movl	$.LC0, %edx	#,
	movl	$273, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_info_header	#
	movl	$.LC26, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_info	#
	.loc 1 274 0 discriminator 3
	movq	-16424(%rbp), %rdx	# fp, tmp360
	leaq	-16416(%rbp), %rax	#, tmp361
	movl	$16384, %esi	#,
	movq	%rax, %rdi	# tmp361,
	call	fgets	#
	testq	%rax, %rax	# D.6158
	je	.L59	#,
	.loc 1 275 0 discriminator 1
	leaq	-16468(%rbp), %rdx	#, tmp362
	leaq	-16416(%rbp), %rax	#, tmp363
	movl	$.LC27, %esi	#,
	movq	%rax, %rdi	# tmp363,
	movl	$0, %eax	#,
	call	__isoc99_sscanf	#
	.loc 1 274 0 discriminator 1
	cmpl	$1, %eax	#, D.6160
	jne	.L59	#,
	.loc 1 275 0
	movl	-16468(%rbp), %eax	# k, k.11
	cmpl	-16456(%rbp), %eax	# s, k.11
	je	.L60	#,
.L59:
	.loc 1 276 0
	movl	$.LC3, %edx	#,
	movl	$276, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_header	#
	movl	-16456(%rbp), %eax	# s, tmp364
	movl	%eax, %esi	# tmp364,
	movl	$.LC28, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L60:
	.loc 1 278 0
	movl	$0, -16452(%rbp)	#, r
	jmp	.L61	#
.L68:
	.loc 1 279 0
	movq	-16424(%rbp), %rdx	# fp, tmp365
	leaq	-16416(%rbp), %rax	#, tmp366
	movl	$16384, %esi	#,
	movq	%rax, %rdi	# tmp366,
	call	fgets	#
	testq	%rax, %rax	# D.6158
	jne	.L62	#,
	.loc 1 280 0
	movl	$.LC3, %edx	#,
	movl	$280, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_header	#
	movl	-16452(%rbp), %eax	# r, tmp367
	movl	%eax, %esi	# tmp367,
	movl	$.LC29, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L62:
	.loc 1 282 0
	movq	-16432(%rbp), %rax	# vq, tmp368
	movl	8(%rax), %eax	# vq_21->n_sv, D.6160
	cmpl	-16456(%rbp), %eax	# s, D.6160
	jg	.L63	#,
	.loc 1 283 0
	jmp	.L64	#
.L63:
	.loc 1 285 0
	leaq	-16416(%rbp), %rax	#, tmp369
	movq	%rax, -16440(%rbp)	# tmp369, strp
	movl	$0, -16448(%rbp)	#, c
	jmp	.L65	#
.L67:
	.loc 1 287 0
	movq	-16432(%rbp), %rax	# vq, tmp370
	movq	24(%rax), %rcx	# vq_21->gautbl, D.6164
	movl	-16456(%rbp), %eax	# s, tmp371
	movslq	%eax, %rdx	# tmp371, D.6161
	movq	%rdx, %rax	# D.6161, tmp372
	salq	$2, %rax	#, tmp372
	addq	%rdx, %rax	# D.6161, tmp372
	salq	$3, %rax	#, tmp373
	addq	%rcx, %rax	# D.6164, D.6164
	movq	16(%rax), %rax	# _164->var, D.6167
	movl	-16452(%rbp), %edx	# r, tmp374
	movslq	%edx, %rdx	# tmp374, D.6161
	salq	$3, %rdx	#, D.6161
	addq	%rdx, %rax	# D.6161, D.6167
	movq	(%rax), %rax	# *_168, D.6168
	.loc 1 286 0
	movl	-16448(%rbp), %edx	# c, tmp375
	movslq	%edx, %rdx	# tmp375, D.6161
	.loc 1 287 0
	salq	$2, %rdx	#, D.6161
	.loc 1 286 0
	leaq	(%rax,%rdx), %rcx	#, D.6168
	.loc 1 287 0
	movq	-16432(%rbp), %rax	# vq, tmp376
	movq	24(%rax), %rsi	# vq_21->gautbl, D.6164
	movl	-16456(%rbp), %eax	# s, tmp377
	movslq	%eax, %rdx	# tmp377, D.6161
	movq	%rdx, %rax	# D.6161, tmp378
	salq	$2, %rax	#, tmp378
	addq	%rdx, %rax	# D.6161, tmp378
	salq	$3, %rax	#, tmp379
	addq	%rsi, %rax	# D.6164, D.6164
	movq	8(%rax), %rax	# _176->mean, D.6167
	movl	-16452(%rbp), %edx	# r, tmp380
	movslq	%edx, %rdx	# tmp380, D.6161
	salq	$3, %rdx	#, D.6161
	addq	%rdx, %rax	# D.6161, D.6167
	movq	(%rax), %rax	# *_180, D.6168
	.loc 1 286 0
	movl	-16448(%rbp), %edx	# c, tmp381
	movslq	%edx, %rdx	# tmp381, D.6161
	.loc 1 287 0
	salq	$2, %rdx	#, D.6161
	.loc 1 286 0
	addq	%rax, %rdx	# D.6168, D.6168
	leaq	-16468(%rbp), %rsi	#, tmp382
	movq	-16440(%rbp), %rax	# strp, tmp383
	movq	%rsi, %r8	# tmp382,
	movl	$.LC30, %esi	#,
	movq	%rax, %rdi	# tmp383,
	movl	$0, %eax	#,
	call	__isoc99_sscanf	#
	cmpl	$2, %eax	#, D.6160
	je	.L66	#,
	.loc 1 288 0
	movl	$.LC3, %edx	#,
	movl	$288, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_header	#
	movl	-16448(%rbp), %edx	# c, tmp384
	movl	-16452(%rbp), %eax	# r, tmp385
	movl	%eax, %esi	# tmp385,
	movl	$.LC31, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L66:
	.loc 1 289 0
	movl	-16468(%rbp), %eax	# k, k.12
	cltq
	addq	%rax, -16440(%rbp)	# D.6166, strp
	.loc 1 285 0
	addl	$1, -16448(%rbp)	#, c
.L65:
	.loc 1 285 0 is_stmt 0 discriminator 1
	movq	-16432(%rbp), %rax	# vq, tmp386
	movq	24(%rax), %rcx	# vq_21->gautbl, D.6164
	movl	-16456(%rbp), %eax	# s, tmp387
	movslq	%eax, %rdx	# tmp387, D.6161
	movq	%rdx, %rax	# D.6161, tmp388
	salq	$2, %rax	#, tmp388
	addq	%rdx, %rax	# D.6161, tmp388
	salq	$3, %rax	#, tmp389
	addq	%rcx, %rax	# D.6164, D.6164
	movl	4(%rax), %eax	# _159->veclen, D.6160
	cmpl	-16448(%rbp), %eax	# c, D.6160
	jg	.L67	#,
.L64:
	.loc 1 278 0 is_stmt 1
	addl	$1, -16452(%rbp)	#, r
.L61:
	.loc 1 278 0 is_stmt 0 discriminator 1
	movq	-16432(%rbp), %rax	# vq, tmp390
	movl	12(%rax), %eax	# vq_21->vqsize, D.6160
	cmpl	-16452(%rbp), %eax	# r, D.6160
	jg	.L68	#,
	.loc 1 293 0 is_stmt 1
	movl	$.LC0, %edx	#,
	movl	$293, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_info_header	#
	movl	$.LC32, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_info	#
	.loc 1 294 0
	movq	-16424(%rbp), %rdx	# fp, tmp391
	leaq	-16416(%rbp), %rax	#, tmp392
	movl	$16384, %esi	#,
	movq	%rax, %rdi	# tmp392,
	call	fgets	#
	testq	%rax, %rax	# D.6158
	je	.L69	#,
	.loc 1 295 0 discriminator 1
	leaq	-16468(%rbp), %rdx	#, tmp393
	leaq	-16416(%rbp), %rax	#, tmp394
	movl	$.LC33, %esi	#,
	movq	%rax, %rdi	# tmp394,
	movl	$0, %eax	#,
	call	__isoc99_sscanf	#
	.loc 1 294 0 discriminator 1
	cmpl	$1, %eax	#, D.6160
	jne	.L69	#,
	.loc 1 295 0
	movl	-16468(%rbp), %eax	# k, k.13
	cmpl	-16456(%rbp), %eax	# s, k.13
	je	.L70	#,
.L69:
	.loc 1 296 0
	movl	$.LC3, %edx	#,
	movl	$296, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_header	#
	movl	-16456(%rbp), %eax	# s, tmp395
	movl	%eax, %esi	# tmp395,
	movl	$.LC34, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L70:
	.loc 1 298 0
	movl	$0, -16452(%rbp)	#, r
	jmp	.L71	#
.L78:
	.loc 1 299 0
	movq	-16424(%rbp), %rdx	# fp, tmp396
	leaq	-16416(%rbp), %rax	#, tmp397
	movl	$16384, %esi	#,
	movq	%rax, %rdi	# tmp397,
	call	fgets	#
	testq	%rax, %rax	# D.6158
	jne	.L72	#,
	.loc 1 300 0
	movl	$.LC3, %edx	#,
	movl	$300, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_header	#
	movl	-16452(%rbp), %eax	# r, tmp398
	movl	%eax, %esi	# tmp398,
	movl	$.LC29, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L72:
	.loc 1 302 0
	movq	-16432(%rbp), %rax	# vq, tmp399
	movl	8(%rax), %eax	# vq_21->n_sv, D.6160
	cmpl	-16456(%rbp), %eax	# s, D.6160
	jg	.L73	#,
	.loc 1 303 0
	jmp	.L74	#
.L73:
	.loc 1 305 0
	leaq	-16416(%rbp), %rax	#, tmp400
	movq	%rax, -16440(%rbp)	# tmp400, strp
	movl	$0, -16448(%rbp)	#, c
	jmp	.L75	#
.L77:
	.loc 1 306 0
	movq	-16432(%rbp), %rax	# vq, tmp401
	movq	32(%rax), %rax	# vq_21->map, D.6169
	movl	-16452(%rbp), %edx	# r, tmp402
	movslq	%edx, %rdx	# tmp402, D.6161
	salq	$3, %rdx	#, D.6161
	addq	%rdx, %rax	# D.6161, D.6169
	movq	(%rax), %rax	# *_204, D.6165
	movl	-16448(%rbp), %edx	# c, tmp403
	movslq	%edx, %rdx	# tmp403, D.6161
	salq	$3, %rdx	#, D.6161
	addq	%rdx, %rax	# D.6161, D.6165
	movq	(%rax), %rax	# *_208, D.6159
	movl	-16456(%rbp), %edx	# s, tmp404
	movslq	%edx, %rdx	# tmp404, D.6161
	salq	$2, %rdx	#, D.6161
	leaq	(%rax,%rdx), %rsi	#, D.6159
	leaq	-16468(%rbp), %rdx	#, tmp405
	movq	-16440(%rbp), %rax	# strp, tmp406
	movq	%rdx, %rcx	# tmp405,
	movq	%rsi, %rdx	# D.6159,
	movl	$.LC17, %esi	#,
	movq	%rax, %rdi	# tmp406,
	movl	$0, %eax	#,
	call	__isoc99_sscanf	#
	cmpl	$1, %eax	#, D.6160
	je	.L76	#,
	.loc 1 307 0
	movl	$.LC3, %edx	#,
	movl	$307, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_header	#
	movl	-16448(%rbp), %edx	# c, tmp407
	movl	-16452(%rbp), %eax	# r, tmp408
	movl	%eax, %esi	# tmp408,
	movl	$.LC31, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L76:
	.loc 1 308 0
	movl	-16468(%rbp), %eax	# k, k.14
	cltq
	addq	%rax, -16440(%rbp)	# D.6166, strp
	.loc 1 305 0
	addl	$1, -16448(%rbp)	#, c
.L75:
	.loc 1 305 0 is_stmt 0 discriminator 1
	movq	-16432(%rbp), %rax	# vq, tmp409
	movl	4(%rax), %eax	# vq_21->origsize.c, D.6160
	cmpl	-16448(%rbp), %eax	# c, D.6160
	jg	.L77	#,
.L74:
	.loc 1 298 0 is_stmt 1
	addl	$1, -16452(%rbp)	#, r
.L71:
	.loc 1 298 0 is_stmt 0 discriminator 1
	movq	-16432(%rbp), %rax	# vq, tmp410
	movl	(%rax), %eax	# vq_21->origsize.r, D.6160
	cmpl	-16452(%rbp), %eax	# r, D.6160
	jg	.L78	#,
	.loc 1 312 0 is_stmt 1
	movq	stdout(%rip), %rax	# stdout, stdout.15
	movq	%rax, %rdi	# stdout.15,
	call	fflush	#
	.loc 1 270 0
	addl	$1, -16456(%rbp)	#, s
.L56:
	.loc 1 270 0 is_stmt 0 discriminator 1
	movl	-16456(%rbp), %eax	# s, tmp411
	cmpl	-16444(%rbp), %eax	# n_sv, tmp411
	jl	.L79	#,
	.loc 1 315 0 is_stmt 1
	leaq	-16416(%rbp), %rdx	#, tmp412
	movq	-16424(%rbp), %rax	# fp, tmp413
	movl	$.LC35, %esi	#,
	movq	%rax, %rdi	# tmp413,
	movl	$0, %eax	#,
	call	__isoc99_fscanf	#
	cmpl	$1, %eax	#, D.6160
	jne	.L80	#,
	.loc 1 315 0 is_stmt 0 discriminator 1
	leaq	-16416(%rbp), %rax	#, tmp414
	movl	$.LC36, %esi	#,
	movq	%rax, %rdi	# tmp414,
	call	strcmp	#
	testl	%eax, %eax	# D.6160
	je	.L81	#,
.L80:
	.loc 1 316 0 is_stmt 1
	movl	$.LC3, %edx	#,
	movl	$316, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_header	#
	movl	$.LC37, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L81:
	.loc 1 318 0
	movq	-16424(%rbp), %rax	# fp, tmp415
	movq	%rax, %rdi	# tmp415,
	call	fclose	#
	.loc 1 320 0
	movq	-16496(%rbp), %rax	# varfloor, tmp416
	movq	-16432(%rbp), %rdx	# vq, tmp417
	movq	%rax, -16520(%rbp)	# tmp416, %sfp
	movsd	-16520(%rbp), %xmm0	# %sfp,
	movq	%rdx, %rdi	# tmp417,
	call	subvq_maha_precomp	#
	.loc 1 321 0
	movq	-16512(%rbp), %rdx	# g, tmp418
	movq	-16432(%rbp), %rax	# vq, tmp419
	movq	%rdx, %rsi	# tmp418,
	movq	%rax, %rdi	# tmp419,
	call	subvq_map_compact	#
	.loc 1 322 0
	movq	-16432(%rbp), %rax	# vq, tmp420
	movq	%rax, %rdi	# tmp420,
	call	subvq_map_linearize	#
	.loc 1 324 0
	movl	$0, -16460(%rbp)	#, n
	.loc 1 325 0
	movl	$0, -16456(%rbp)	#, s
	jmp	.L82	#
.L84:
	.loc 1 326 0
	movq	-16432(%rbp), %rax	# vq, tmp421
	movq	24(%rax), %rcx	# vq_21->gautbl, D.6164
	movl	-16456(%rbp), %eax	# s, tmp422
	movslq	%eax, %rdx	# tmp422, D.6161
	movq	%rdx, %rax	# D.6161, tmp423
	salq	$2, %rax	#, tmp423
	addq	%rdx, %rax	# D.6161, tmp423
	salq	$3, %rax	#, tmp424
	addq	%rcx, %rax	# D.6164, D.6164
	movl	4(%rax), %edx	# _228->veclen, D.6160
	movl	-16460(%rbp), %eax	# n, n.16
	cmpl	%eax, %edx	# n.16, D.6160
	jle	.L83	#,
	.loc 1 327 0
	movq	-16432(%rbp), %rax	# vq, tmp425
	movq	24(%rax), %rcx	# vq_21->gautbl, D.6164
	movl	-16456(%rbp), %eax	# s, tmp426
	movslq	%eax, %rdx	# tmp426, D.6161
	movq	%rdx, %rax	# D.6161, tmp427
	salq	$2, %rax	#, tmp427
	addq	%rdx, %rax	# D.6161, tmp427
	salq	$3, %rax	#, tmp428
	addq	%rcx, %rax	# D.6164, D.6164
	movl	4(%rax), %eax	# _234->veclen, n.17
	movl	%eax, -16460(%rbp)	# n.17, n
.L83:
	.loc 1 325 0
	addl	$1, -16456(%rbp)	#, s
.L82:
	.loc 1 325 0 is_stmt 0 discriminator 1
	movl	-16456(%rbp), %eax	# s, tmp429
	cmpl	-16444(%rbp), %eax	# n_sv, tmp429
	jl	.L84	#,
	.loc 1 330 0 is_stmt 1
	movl	-16460(%rbp), %eax	# n, n.18
	cltq
	movl	$330, %ecx	#,
	movl	$.LC1, %edx	#,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# D.6161,
	call	__ckd_calloc__	#
	movq	-16432(%rbp), %rdx	# vq, tmp430
	movq	%rax, 40(%rdx)	# D.6162, vq_21->subvec
	.loc 1 331 0
	movq	-16432(%rbp), %rax	# vq, tmp431
	movl	12(%rax), %esi	# vq_21->vqsize, D.6160
	movq	-16432(%rbp), %rax	# vq, tmp432
	movl	8(%rax), %eax	# vq_21->n_sv, D.6160
	movl	$331, %r8d	#,
	movl	$.LC1, %ecx	#,
	movl	$4, %edx	#,
	movl	%eax, %edi	# D.6160,
	call	__ckd_calloc_2d__	#
	movq	-16432(%rbp), %rdx	# vq, tmp433
	movq	%rax, 48(%rdx)	# D.6170, vq_21->vqdist
	.loc 1 332 0
	movq	-16432(%rbp), %rax	# vq, tmp434
	movl	4(%rax), %eax	# vq_21->origsize.c, D.6160
	cltq
	movl	$332, %ecx	#,
	movl	$.LC1, %edx	#,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# D.6161,
	call	__ckd_calloc__	#
	movq	-16432(%rbp), %rdx	# vq, tmp435
	movq	%rax, 56(%rdx)	# D.6162, vq_21->gauscore
	.loc 1 333 0
	movq	-16432(%rbp), %rax	# vq, tmp436
	movl	4(%rax), %eax	# vq_21->origsize.c, D.6160
	addl	$1, %eax	#, D.6160
	cltq
	movl	$333, %ecx	#,
	movl	$.LC1, %edx	#,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# D.6161,
	call	__ckd_calloc__	#
	movq	-16432(%rbp), %rdx	# vq, tmp437
	movq	%rax, 64(%rdx)	# D.6162, vq_21->mgau_sl
	.loc 1 335 0
	movq	-16432(%rbp), %rax	# vq, D.6171
	.loc 1 336 0
	movq	-24(%rbp), %rbx	# D.6172, tmp440
	xorq	%fs:40, %rbx	#, tmp440
	je	.L86	#,
	call	__stack_chk_fail	#
.L86:
	addq	$16520, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	subvq_init, .-subvq_init
	.globl	subvq_mgau_shortlist
	.type	subvq_mgau_shortlist, @function
subvq_mgau_shortlist:
.LFB6:
	.loc 1 350 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -72(%rbp)	# vq, vq
	movl	%esi, -76(%rbp)	# m, m
	movl	%edx, -80(%rbp)	# n, n
	movl	%ecx, -84(%rbp)	# beam, beam
	.loc 1 358 0
	movq	-72(%rbp), %rax	# vq, tmp148
	movq	48(%rax), %rax	# vq_26(D)->vqdist, D.6206
	movq	(%rax), %rax	# *_27, tmp149
	movq	%rax, -24(%rbp)	# tmp149, vqdist
	.loc 1 360 0
	movq	-72(%rbp), %rax	# vq, tmp150
	movq	56(%rax), %rax	# vq_26(D)->gauscore, tmp151
	movq	%rax, -16(%rbp)	# tmp151, gauscore
	.loc 1 361 0
	movq	-72(%rbp), %rax	# vq, tmp152
	movq	64(%rax), %rax	# vq_26(D)->mgau_sl, tmp153
	movq	%rax, -8(%rbp)	# tmp153, sl
	.loc 1 363 0
	movq	-72(%rbp), %rax	# vq, tmp154
	movq	32(%rax), %rax	# vq_26(D)->map, D.6207
	movl	-76(%rbp), %edx	# m, tmp155
	movslq	%edx, %rdx	# tmp155, D.6208
	salq	$3, %rdx	#, D.6208
	addq	%rdx, %rax	# D.6208, D.6207
	movq	(%rax), %rax	# *_35, D.6206
	movq	(%rax), %rax	# *_36, tmp156
	movq	%rax, -32(%rbp)	# tmp156, map
	.loc 1 364 0
	movl	$-2147483648, -48(%rbp)	#, bv
	.loc 1 366 0
	movq	-72(%rbp), %rax	# vq, tmp157
	movl	8(%rax), %eax	# vq_26(D)->n_sv, D.6209
	cmpl	$2, %eax	#, D.6209
	je	.L90	#,
	cmpl	$3, %eax	#, D.6209
	je	.L91	#,
	cmpl	$1, %eax	#, D.6209
	je	.L92	#,
	jmp	.L115	#
.L91:
	.loc 1 368 0
	movl	$0, -56(%rbp)	#, i
	jmp	.L93	#
.L98:
	.loc 1 369 0
	movl	VQ_EVAL(%rip), %eax	# VQ_EVAL, VQ_EVAL.19
	cmpl	$1, %eax	#, VQ_EVAL.19
	jne	.L94	#,
	.loc 1 370 0
	movq	-32(%rbp), %rax	# map, tmp158
	movl	(%rax), %eax	# *map_2, D.6209
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6208
	movq	-24(%rbp), %rax	# vqdist, tmp159
	addq	%rdx, %rax	# D.6208, D.6210
	movl	(%rax), %eax	# *_46, tmp160
	movl	%eax, -52(%rbp)	# tmp160, v
	.loc 1 371 0
	addq	$12, -32(%rbp)	#, map
	jmp	.L95	#
.L94:
	.loc 1 375 0
	movl	VQ_EVAL(%rip), %eax	# VQ_EVAL, VQ_EVAL.20
	cmpl	$2, %eax	#, VQ_EVAL.20
	jne	.L96	#,
	.loc 1 376 0
	movq	-32(%rbp), %rax	# map, map.21
	leaq	4(%rax), %rdx	#, tmp161
	movq	%rdx, -32(%rbp)	# tmp161, map
	movl	(%rax), %eax	# *map.21_50, D.6209
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6208
	movq	-24(%rbp), %rax	# vqdist, tmp162
	addq	%rdx, %rax	# D.6208, D.6210
	movl	(%rax), %eax	# *_55, tmp163
	movl	%eax, -52(%rbp)	# tmp163, v
	.loc 1 377 0
	movq	-32(%rbp), %rax	# map, tmp164
	movl	(%rax), %eax	# *map_51, D.6209
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6208
	movq	-24(%rbp), %rax	# vqdist, tmp165
	addq	%rdx, %rax	# D.6208, D.6210
	movl	(%rax), %eax	# *_60, D.6209
	addl	%eax, %eax	# D.6209
	addl	%eax, -52(%rbp)	# D.6209, v
	.loc 1 378 0
	addq	$8, -32(%rbp)	#, map
	jmp	.L95	#
.L96:
	.loc 1 380 0
	movq	-32(%rbp), %rax	# map, map.22
	leaq	4(%rax), %rdx	#, tmp166
	movq	%rdx, -32(%rbp)	# tmp166, map
	movl	(%rax), %eax	# *map.22_65, D.6209
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6208
	movq	-24(%rbp), %rax	# vqdist, tmp167
	addq	%rdx, %rax	# D.6208, D.6210
	movl	(%rax), %eax	# *_70, tmp168
	movl	%eax, -52(%rbp)	# tmp168, v
	.loc 1 381 0
	movq	-32(%rbp), %rax	# map, map.23
	leaq	4(%rax), %rdx	#, tmp169
	movq	%rdx, -32(%rbp)	# tmp169, map
	movl	(%rax), %eax	# *map.23_72, D.6209
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6208
	movq	-24(%rbp), %rax	# vqdist, tmp170
	addq	%rdx, %rax	# D.6208, D.6210
	movl	(%rax), %eax	# *_77, D.6209
	addl	%eax, -52(%rbp)	# D.6209, v
	.loc 1 382 0
	movq	-32(%rbp), %rax	# map, map.24
	leaq	4(%rax), %rdx	#, tmp171
	movq	%rdx, -32(%rbp)	# tmp171, map
	movl	(%rax), %eax	# *map.24_80, D.6209
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6208
	movq	-24(%rbp), %rax	# vqdist, tmp172
	addq	%rdx, %rax	# D.6208, D.6210
	movl	(%rax), %eax	# *_85, D.6209
	addl	%eax, -52(%rbp)	# D.6209, v
.L95:
	.loc 1 386 0
	movl	-56(%rbp), %eax	# i, tmp173
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6208
	movq	-16(%rbp), %rax	# gauscore, tmp174
	addq	%rax, %rdx	# tmp174, D.6210
	movl	-52(%rbp), %eax	# v, tmp175
	movl	%eax, (%rdx)	# tmp175, *_90
	.loc 1 388 0
	movl	-48(%rbp), %eax	# bv, tmp176
	cmpl	-52(%rbp), %eax	# v, tmp176
	jge	.L97	#,
	.loc 1 389 0
	movl	-52(%rbp), %eax	# v, tmp177
	movl	%eax, -48(%rbp)	# tmp177, bv
.L97:
	.loc 1 368 0
	addl	$1, -56(%rbp)	#, i
.L93:
	.loc 1 368 0 is_stmt 0 discriminator 1
	movl	-56(%rbp), %eax	# i, tmp178
	cmpl	-80(%rbp), %eax	# n, tmp178
	jl	.L98	#,
	.loc 1 391 0 is_stmt 1
	jmp	.L99	#
.L90:
	.loc 1 393 0
	movl	$0, -56(%rbp)	#, i
	jmp	.L100	#
.L102:
	.loc 1 394 0
	movq	-32(%rbp), %rax	# map, map.25
	leaq	4(%rax), %rdx	#, tmp179
	movq	%rdx, -32(%rbp)	# tmp179, map
	movl	(%rax), %eax	# *map.25_94, D.6209
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6208
	movq	-24(%rbp), %rax	# vqdist, tmp180
	addq	%rdx, %rax	# D.6208, D.6210
	movl	(%rax), %eax	# *_99, tmp181
	movl	%eax, -52(%rbp)	# tmp181, v
	.loc 1 395 0
	movq	-32(%rbp), %rax	# map, map.26
	leaq	4(%rax), %rdx	#, tmp182
	movq	%rdx, -32(%rbp)	# tmp182, map
	movl	(%rax), %eax	# *map.26_101, D.6209
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6208
	movq	-24(%rbp), %rax	# vqdist, tmp183
	addq	%rdx, %rax	# D.6208, D.6210
	movl	(%rax), %eax	# *_106, D.6209
	addl	%eax, -52(%rbp)	# D.6209, v
	.loc 1 396 0
	movl	-56(%rbp), %eax	# i, tmp184
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6208
	movq	-16(%rbp), %rax	# gauscore, tmp185
	addq	%rax, %rdx	# tmp185, D.6210
	movl	-52(%rbp), %eax	# v, tmp186
	movl	%eax, (%rdx)	# tmp186, *_111
	.loc 1 398 0
	movl	-48(%rbp), %eax	# bv, tmp187
	cmpl	-52(%rbp), %eax	# v, tmp187
	jge	.L101	#,
	.loc 1 399 0
	movl	-52(%rbp), %eax	# v, tmp188
	movl	%eax, -48(%rbp)	# tmp188, bv
.L101:
	.loc 1 393 0
	addl	$1, -56(%rbp)	#, i
.L100:
	.loc 1 393 0 is_stmt 0 discriminator 1
	movl	-56(%rbp), %eax	# i, tmp189
	cmpl	-80(%rbp), %eax	# n, tmp189
	jl	.L102	#,
	.loc 1 401 0 is_stmt 1
	jmp	.L99	#
.L92:
	.loc 1 403 0
	movl	$0, -56(%rbp)	#, i
	jmp	.L103	#
.L105:
	.loc 1 404 0
	movq	-32(%rbp), %rax	# map, map.27
	leaq	4(%rax), %rdx	#, tmp190
	movq	%rdx, -32(%rbp)	# tmp190, map
	movl	(%rax), %eax	# *map.27_115, D.6209
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6208
	movq	-24(%rbp), %rax	# vqdist, tmp191
	addq	%rdx, %rax	# D.6208, D.6210
	movl	(%rax), %eax	# *_120, tmp192
	movl	%eax, -52(%rbp)	# tmp192, v
	.loc 1 405 0
	movl	-56(%rbp), %eax	# i, tmp193
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6208
	movq	-16(%rbp), %rax	# gauscore, tmp194
	addq	%rax, %rdx	# tmp194, D.6210
	movl	-52(%rbp), %eax	# v, tmp195
	movl	%eax, (%rdx)	# tmp195, *_124
	.loc 1 407 0
	movl	-48(%rbp), %eax	# bv, tmp196
	cmpl	-52(%rbp), %eax	# v, tmp196
	jge	.L104	#,
	.loc 1 408 0
	movl	-52(%rbp), %eax	# v, tmp197
	movl	%eax, -48(%rbp)	# tmp197, bv
.L104:
	.loc 1 403 0
	addl	$1, -56(%rbp)	#, i
.L103:
	.loc 1 403 0 is_stmt 0 discriminator 1
	movl	-56(%rbp), %eax	# i, tmp198
	cmpl	-80(%rbp), %eax	# n, tmp198
	jl	.L105	#,
	.loc 1 410 0 is_stmt 1
	jmp	.L99	#
.L115:
	.loc 1 412 0
	movl	$0, -56(%rbp)	#, i
	jmp	.L106	#
.L110:
	.loc 1 413 0
	movl	$0, -52(%rbp)	#, v
	.loc 1 414 0
	movl	$0, -40(%rbp)	#, sv_id
	jmp	.L107	#
.L108:
	.loc 1 415 0 discriminator 2
	movq	-32(%rbp), %rax	# map, map.28
	leaq	4(%rax), %rdx	#, tmp199
	movq	%rdx, -32(%rbp)	# tmp199, map
	movl	(%rax), %eax	# *map.28_131, D.6209
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6208
	movq	-24(%rbp), %rax	# vqdist, tmp200
	addq	%rdx, %rax	# D.6208, D.6210
	movl	(%rax), %eax	# *_136, D.6209
	addl	%eax, -52(%rbp)	# D.6209, v
	.loc 1 414 0 discriminator 2
	addl	$1, -40(%rbp)	#, sv_id
.L107:
	.loc 1 414 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# vq, tmp201
	movl	8(%rax), %eax	# vq_26(D)->n_sv, D.6209
	cmpl	-40(%rbp), %eax	# sv_id, D.6209
	jg	.L108	#,
	.loc 1 417 0 is_stmt 1
	movl	-56(%rbp), %eax	# i, tmp202
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6208
	movq	-16(%rbp), %rax	# gauscore, tmp203
	addq	%rax, %rdx	# tmp203, D.6210
	movl	-52(%rbp), %eax	# v, tmp204
	movl	%eax, (%rdx)	# tmp204, *_142
	.loc 1 419 0
	movl	-48(%rbp), %eax	# bv, tmp205
	cmpl	-52(%rbp), %eax	# v, tmp205
	jge	.L109	#,
	.loc 1 420 0
	movl	-52(%rbp), %eax	# v, tmp206
	movl	%eax, -48(%rbp)	# tmp206, bv
.L109:
	.loc 1 412 0
	addl	$1, -56(%rbp)	#, i
.L106:
	.loc 1 412 0 is_stmt 0 discriminator 1
	movl	-56(%rbp), %eax	# i, tmp207
	cmpl	-80(%rbp), %eax	# n, tmp207
	jl	.L110	#,
.L99:
	.loc 1 424 0 is_stmt 1
	movl	-84(%rbp), %eax	# beam, tmp212
	movl	-48(%rbp), %edx	# bv, tmp213
	addl	%edx, %eax	# tmp213, tmp211
	movl	%eax, -36(%rbp)	# tmp211, th
	.loc 1 425 0
	movl	$0, -44(%rbp)	#, nc
	.loc 1 426 0
	movl	$0, -56(%rbp)	#, i
	jmp	.L111	#
.L113:
	.loc 1 427 0
	movl	-56(%rbp), %eax	# i, tmp214
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6208
	movq	-16(%rbp), %rax	# gauscore, tmp215
	addq	%rdx, %rax	# D.6208, D.6210
	movl	(%rax), %eax	# *_151, D.6209
	cmpl	-36(%rbp), %eax	# th, D.6209
	jl	.L112	#,
	.loc 1 428 0
	movl	-44(%rbp), %eax	# nc, nc.29
	leal	1(%rax), %edx	#, tmp216
	movl	%edx, -44(%rbp)	# tmp216, nc
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6208
	movq	-8(%rbp), %rax	# sl, tmp217
	addq	%rax, %rdx	# tmp217, D.6210
	movl	-56(%rbp), %eax	# i, tmp218
	movl	%eax, (%rdx)	# tmp218, *_157
.L112:
	.loc 1 426 0
	addl	$1, -56(%rbp)	#, i
.L111:
	.loc 1 426 0 is_stmt 0 discriminator 1
	movl	-56(%rbp), %eax	# i, tmp219
	cmpl	-80(%rbp), %eax	# n, tmp219
	jl	.L113	#,
	.loc 1 430 0 is_stmt 1
	movl	-44(%rbp), %eax	# nc, tmp220
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6208
	movq	-8(%rbp), %rax	# sl, tmp221
	addq	%rdx, %rax	# D.6208, D.6210
	movl	$-1, (%rax)	#, *_161
	.loc 1 432 0
	movl	-44(%rbp), %eax	# nc, D.6211
	.loc 1 433 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	subvq_mgau_shortlist, .-subvq_mgau_shortlist
	.globl	subvq_subvec_eval_logs3
	.type	subvq_subvec_eval_logs3, @function
subvq_subvec_eval_logs3:
.LFB7:
	.loc 1 437 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# vq, vq
	movq	%rsi, -32(%rbp)	# feat, feat
	movl	%edx, -36(%rbp)	# s, s
	.loc 1 442 0
	movq	-24(%rbp), %rax	# vq, tmp91
	movq	16(%rax), %rax	# vq_2(D)->featdim, D.6212
	movl	-36(%rbp), %edx	# s, tmp92
	movslq	%edx, %rdx	# tmp92, D.6213
	salq	$3, %rdx	#, D.6213
	addq	%rdx, %rax	# D.6213, D.6212
	movq	(%rax), %rax	# *_7, tmp93
	movq	%rax, -8(%rbp)	# tmp93, featdim
	.loc 1 443 0
	movl	$0, -12(%rbp)	#, i
	jmp	.L117	#
.L118:
	.loc 1 444 0 discriminator 2
	movq	-24(%rbp), %rax	# vq, tmp94
	movq	40(%rax), %rax	# vq_2(D)->subvec, D.6216
	movl	-12(%rbp), %edx	# i, tmp95
	movslq	%edx, %rdx	# tmp95, D.6213
	salq	$2, %rdx	#, D.6213
	addq	%rax, %rdx	# D.6216, D.6216
	movl	-12(%rbp), %eax	# i, tmp96
	cltq
	leaq	0(,%rax,4), %rcx	#, D.6213
	movq	-8(%rbp), %rax	# featdim, tmp97
	addq	%rcx, %rax	# D.6213, D.6217
	movl	(%rax), %eax	# *_21, D.6215
	cltq
	leaq	0(,%rax,4), %rcx	#, D.6213
	movq	-32(%rbp), %rax	# feat, tmp98
	addq	%rcx, %rax	# D.6213, D.6216
	movl	(%rax), %eax	# *_26, D.6218
	movl	%eax, (%rdx)	# D.6218, *_18
	.loc 1 443 0 discriminator 2
	addl	$1, -12(%rbp)	#, i
.L117:
	.loc 1 443 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# vq, tmp99
	movq	24(%rax), %rcx	# vq_2(D)->gautbl, D.6214
	movl	-36(%rbp), %eax	# s, tmp100
	movslq	%eax, %rdx	# tmp100, D.6213
	movq	%rdx, %rax	# D.6213, tmp101
	salq	$2, %rax	#, tmp101
	addq	%rdx, %rax	# D.6213, tmp101
	salq	$3, %rax	#, tmp102
	addq	%rcx, %rax	# D.6214, D.6214
	movl	4(%rax), %eax	# _13->veclen, D.6215
	cmpl	-12(%rbp), %eax	# i, D.6215
	jg	.L118	#,
	.loc 1 447 0 is_stmt 1
	movq	-24(%rbp), %rax	# vq, tmp103
	movq	48(%rax), %rax	# vq_2(D)->vqdist, D.6212
	movl	-36(%rbp), %edx	# s, tmp104
	movslq	%edx, %rdx	# tmp104, D.6213
	salq	$3, %rdx	#, D.6213
	addq	%rdx, %rax	# D.6213, D.6212
	movq	(%rax), %rdi	# *_32, D.6217
	movq	-24(%rbp), %rax	# vq, tmp105
	movq	40(%rax), %rcx	# vq_2(D)->subvec, D.6216
	movq	-24(%rbp), %rax	# vq, tmp106
	movl	12(%rax), %esi	# vq_2(D)->vqsize, D.6215
	movq	-24(%rbp), %rax	# vq, tmp107
	movq	24(%rax), %r8	# vq_2(D)->gautbl, D.6214
	movl	-36(%rbp), %eax	# s, tmp108
	movslq	%eax, %rdx	# tmp108, D.6213
	movq	%rdx, %rax	# D.6213, tmp109
	salq	$2, %rax	#, tmp109
	addq	%rdx, %rax	# D.6213, tmp109
	salq	$3, %rax	#, tmp110
	addq	%r8, %rax	# D.6214, D.6214
	movq	%rdi, %r8	# D.6217,
	movl	%esi, %edx	# D.6215,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.6214,
	call	vector_gautbl_eval_logs3	#
	.loc 1 448 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	subvq_subvec_eval_logs3, .-subvq_subvec_eval_logs3
	.globl	subvq_gautbl_eval_logs3
	.type	subvq_gautbl_eval_logs3, @function
subvq_gautbl_eval_logs3:
.LFB8:
	.loc 1 452 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# vq, vq
	movq	%rsi, -32(%rbp)	# feat, feat
	.loc 1 456 0
	movl	$0, -16(%rbp)	#, s
	jmp	.L120	#
.L124:
	.loc 1 458 0
	movq	-24(%rbp), %rax	# vq, tmp93
	movq	16(%rax), %rax	# vq_4(D)->featdim, D.6220
	movl	-16(%rbp), %edx	# s, tmp94
	movslq	%edx, %rdx	# tmp94, D.6221
	salq	$3, %rdx	#, D.6221
	addq	%rdx, %rax	# D.6221, D.6220
	movq	(%rax), %rax	# *_9, tmp95
	movq	%rax, -8(%rbp)	# tmp95, featdim
	.loc 1 459 0
	movl	$0, -12(%rbp)	#, i
	jmp	.L121	#
.L122:
	.loc 1 460 0 discriminator 2
	movq	-24(%rbp), %rax	# vq, tmp96
	movq	40(%rax), %rax	# vq_4(D)->subvec, D.6223
	movl	-12(%rbp), %edx	# i, tmp97
	movslq	%edx, %rdx	# tmp97, D.6221
	salq	$2, %rdx	#, D.6221
	addq	%rax, %rdx	# D.6223, D.6223
	movl	-12(%rbp), %eax	# i, tmp98
	cltq
	leaq	0(,%rax,4), %rcx	#, D.6221
	movq	-8(%rbp), %rax	# featdim, tmp99
	addq	%rcx, %rax	# D.6221, D.6224
	movl	(%rax), %eax	# *_23, D.6219
	cltq
	leaq	0(,%rax,4), %rcx	#, D.6221
	movq	-32(%rbp), %rax	# feat, tmp100
	addq	%rcx, %rax	# D.6221, D.6223
	movl	(%rax), %eax	# *_28, D.6225
	movl	%eax, (%rdx)	# D.6225, *_20
	.loc 1 459 0 discriminator 2
	addl	$1, -12(%rbp)	#, i
.L121:
	.loc 1 459 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# vq, tmp101
	movq	24(%rax), %rcx	# vq_4(D)->gautbl, D.6222
	movl	-16(%rbp), %eax	# s, tmp102
	movslq	%eax, %rdx	# tmp102, D.6221
	movq	%rdx, %rax	# D.6221, tmp103
	salq	$2, %rax	#, tmp103
	addq	%rdx, %rax	# D.6221, tmp103
	salq	$3, %rax	#, tmp104
	addq	%rcx, %rax	# D.6222, D.6222
	movl	4(%rax), %eax	# _15->veclen, D.6219
	cmpl	-12(%rbp), %eax	# i, D.6219
	jg	.L122	#,
	.loc 1 464 0 is_stmt 1
	movl	VQ_EVAL(%rip), %eax	# VQ_EVAL, VQ_EVAL.30
	cmpl	%eax, -16(%rbp)	# VQ_EVAL.30, s
	jge	.L123	#,
	.loc 1 465 0
	movq	-24(%rbp), %rax	# vq, tmp105
	movq	48(%rax), %rax	# vq_4(D)->vqdist, D.6220
	movl	-16(%rbp), %edx	# s, tmp106
	movslq	%edx, %rdx	# tmp106, D.6221
	salq	$3, %rdx	#, D.6221
	addq	%rdx, %rax	# D.6221, D.6220
	movq	(%rax), %rdi	# *_35, D.6224
	movq	-24(%rbp), %rax	# vq, tmp107
	movq	40(%rax), %rcx	# vq_4(D)->subvec, D.6223
	movq	-24(%rbp), %rax	# vq, tmp108
	movl	12(%rax), %esi	# vq_4(D)->vqsize, D.6219
	movq	-24(%rbp), %rax	# vq, tmp109
	movq	24(%rax), %r8	# vq_4(D)->gautbl, D.6222
	movl	-16(%rbp), %eax	# s, tmp110
	movslq	%eax, %rdx	# tmp110, D.6221
	movq	%rdx, %rax	# D.6221, tmp111
	salq	$2, %rax	#, tmp111
	addq	%rdx, %rax	# D.6221, tmp111
	salq	$3, %rax	#, tmp112
	addq	%r8, %rax	# D.6222, D.6222
	movq	%rdi, %r8	# D.6224,
	movl	%esi, %edx	# D.6219,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.6222,
	call	vector_gautbl_eval_logs3	#
.L123:
	.loc 1 456 0
	addl	$1, -16(%rbp)	#, s
.L120:
	.loc 1 456 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# vq, tmp113
	movl	8(%rax), %eax	# vq_4(D)->n_sv, D.6219
	cmpl	-16(%rbp), %eax	# s, D.6219
	jg	.L124	#,
	.loc 1 467 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	subvq_gautbl_eval_logs3, .-subvq_gautbl_eval_logs3
	.globl	subvq_frame_eval
	.type	subvq_frame_eval, @function
subvq_frame_eval:
.LFB9:
	.loc 1 472 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$72, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)	# vq, vq
	movq	%rsi, -48(%rbp)	# g, g
	movl	%edx, -52(%rbp)	# beam, beam
	movq	%rcx, -64(%rbp)	# feat, feat
	movq	%r8, -72(%rbp)	# sen_active, sen_active
	movq	%r9, -80(%rbp)	# senscr, senscr
	.loc 1 476 0
	movl	$-2147483648, -28(%rbp)	#, best
	.loc 1 477 0
	movl	$0, -24(%rbp)	#, ns
	.loc 1 478 0
	movl	$0, -20(%rbp)	#, ng
	.loc 1 479 0
	cmpq	$0, -40(%rbp)	#, vq
	jne	.L126	#,
	.loc 1 481 0
	movl	$0, -32(%rbp)	#, s
	jmp	.L127	#
.L132:
	.loc 1 482 0
	cmpq	$0, -72(%rbp)	#, sen_active
	je	.L128	#,
	.loc 1 482 0 is_stmt 0 discriminator 1
	movl	-32(%rbp), %eax	# s, tmp120
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6227
	movq	-72(%rbp), %rax	# sen_active, tmp121
	addq	%rdx, %rax	# D.6227, D.6228
	movl	(%rax), %eax	# *_31, D.6226
	testl	%eax, %eax	# D.6226
	je	.L129	#,
.L128:
	.loc 1 483 0 is_stmt 1
	movl	-32(%rbp), %eax	# s, tmp122
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6227
	movq	-80(%rbp), %rax	# senscr, tmp123
	leaq	(%rdx,%rax), %rbx	#, D.6228
	movq	-64(%rbp), %rdx	# feat, tmp124
	movl	-32(%rbp), %esi	# s, tmp125
	movq	-48(%rbp), %rax	# g, tmp126
	movq	%rdx, %rcx	# tmp124,
	movl	$0, %edx	#,
	movq	%rax, %rdi	# tmp126,
	call	mgau_eval	#
	movl	%eax, (%rbx)	# D.6226, *_39
	.loc 1 484 0
	movl	-32(%rbp), %eax	# s, tmp127
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6227
	movq	-80(%rbp), %rax	# senscr, tmp128
	addq	%rdx, %rax	# D.6227, D.6228
	movl	(%rax), %eax	# *_44, D.6226
	cmpl	-28(%rbp), %eax	# best, D.6226
	jle	.L130	#,
	.loc 1 485 0
	movl	-32(%rbp), %eax	# s, tmp129
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6227
	movq	-80(%rbp), %rax	# senscr, tmp130
	addq	%rdx, %rax	# D.6227, D.6228
	movl	(%rax), %eax	# *_48, tmp131
	movl	%eax, -28(%rbp)	# tmp131, best
.L130:
	.loc 1 486 0
	addl	$1, -24(%rbp)	#, ns
	.loc 1 487 0
	movq	-48(%rbp), %rax	# g, tmp132
	movq	16(%rax), %rcx	# g_26(D)->mgau, D.6229
	movl	-32(%rbp), %eax	# s, tmp133
	movslq	%eax, %rdx	# tmp133, D.6227
	movq	%rdx, %rax	# D.6227, tmp134
	salq	$2, %rax	#, tmp134
	addq	%rdx, %rax	# D.6227, tmp134
	salq	$3, %rax	#, tmp135
	addq	%rcx, %rax	# D.6229, D.6229
	movl	(%rax), %eax	# _54->n_comp, D.6226
	addl	%eax, -20(%rbp)	# D.6226, ng
	jmp	.L131	#
.L129:
	.loc 1 489 0
	movl	-32(%rbp), %eax	# s, tmp136
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6227
	movq	-80(%rbp), %rax	# senscr, tmp137
	addq	%rdx, %rax	# D.6227, D.6228
	movl	$-939524096, (%rax)	#, *_36
.L131:
	.loc 1 481 0
	addl	$1, -32(%rbp)	#, s
.L127:
	.loc 1 481 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# g, tmp138
	movl	(%rax), %eax	# g_26(D)->n_mgau, D.6226
	cmpl	-32(%rbp), %eax	# s, D.6226
	jg	.L132	#,
	jmp	.L133	#
.L126:
	.loc 1 493 0 is_stmt 1
	movq	-64(%rbp), %rdx	# feat, tmp139
	movq	-40(%rbp), %rax	# vq, tmp140
	movq	%rdx, %rsi	# tmp139,
	movq	%rax, %rdi	# tmp140,
	call	subvq_gautbl_eval_logs3	#
	.loc 1 496 0
	movl	$0, -32(%rbp)	#, s
	jmp	.L134	#
.L139:
	.loc 1 497 0
	cmpq	$0, -72(%rbp)	#, sen_active
	je	.L135	#,
	.loc 1 497 0 is_stmt 0 discriminator 1
	movl	-32(%rbp), %eax	# s, tmp141
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6227
	movq	-72(%rbp), %rax	# sen_active, tmp142
	addq	%rdx, %rax	# D.6227, D.6228
	movl	(%rax), %eax	# *_62, D.6226
	testl	%eax, %eax	# D.6226
	je	.L136	#,
.L135:
	.loc 1 498 0 is_stmt 1
	movq	-48(%rbp), %rax	# g, tmp143
	movq	16(%rax), %rcx	# g_26(D)->mgau, D.6229
	movl	-32(%rbp), %eax	# s, tmp144
	movslq	%eax, %rdx	# tmp144, D.6227
	movq	%rdx, %rax	# D.6227, tmp145
	salq	$2, %rax	#, tmp145
	addq	%rdx, %rax	# D.6227, tmp145
	salq	$3, %rax	#, tmp146
	addq	%rcx, %rax	# D.6229, D.6229
	movl	(%rax), %edx	# _70->n_comp, D.6226
	movl	-52(%rbp), %ecx	# beam, tmp147
	movl	-32(%rbp), %esi	# s, tmp148
	movq	-40(%rbp), %rax	# vq, tmp149
	movq	%rax, %rdi	# tmp149,
	call	subvq_mgau_shortlist	#
	addl	%eax, -20(%rbp)	# D.6226, ng
	.loc 1 500 0
	movl	-32(%rbp), %eax	# s, tmp150
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6227
	movq	-80(%rbp), %rax	# senscr, tmp151
	leaq	(%rdx,%rax), %rbx	#, D.6228
	movq	-40(%rbp), %rax	# vq, tmp152
	movq	64(%rax), %rdx	# vq_24(D)->mgau_sl, D.6228
	movq	-64(%rbp), %rcx	# feat, tmp153
	movl	-32(%rbp), %esi	# s, tmp154
	movq	-48(%rbp), %rax	# g, tmp155
	movq	%rax, %rdi	# tmp155,
	call	mgau_eval	#
	movl	%eax, (%rbx)	# D.6226, *_77
	.loc 1 501 0
	movl	-32(%rbp), %eax	# s, tmp156
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6227
	movq	-80(%rbp), %rax	# senscr, tmp157
	addq	%rdx, %rax	# D.6227, D.6228
	movl	(%rax), %eax	# *_82, D.6226
	cmpl	-28(%rbp), %eax	# best, D.6226
	jle	.L137	#,
	.loc 1 502 0
	movl	-32(%rbp), %eax	# s, tmp158
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6227
	movq	-80(%rbp), %rax	# senscr, tmp159
	addq	%rdx, %rax	# D.6227, D.6228
	movl	(%rax), %eax	# *_86, tmp160
	movl	%eax, -28(%rbp)	# tmp160, best
.L137:
	.loc 1 504 0
	addl	$1, -24(%rbp)	#, ns
	jmp	.L138	#
.L136:
	.loc 1 506 0
	movl	-32(%rbp), %eax	# s, tmp161
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6227
	movq	-80(%rbp), %rax	# senscr, tmp162
	addq	%rdx, %rax	# D.6227, D.6228
	movl	$-939524096, (%rax)	#, *_66
.L138:
	.loc 1 496 0
	addl	$1, -32(%rbp)	#, s
.L134:
	.loc 1 496 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# g, tmp163
	movl	(%rax), %eax	# g_26(D)->n_mgau, D.6226
	cmpl	-32(%rbp), %eax	# s, D.6226
	jg	.L139	#,
.L133:
	.loc 1 511 0 is_stmt 1
	movl	$0, -32(%rbp)	#, s
	jmp	.L140	#
.L141:
	.loc 1 512 0 discriminator 2
	movl	-32(%rbp), %eax	# s, tmp164
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6227
	movq	-80(%rbp), %rax	# senscr, tmp165
	addq	%rax, %rdx	# tmp165, D.6228
	movl	-32(%rbp), %eax	# s, tmp166
	cltq
	leaq	0(,%rax,4), %rcx	#, D.6227
	movq	-80(%rbp), %rax	# senscr, tmp167
	addq	%rcx, %rax	# D.6227, D.6228
	movl	(%rax), %eax	# *_97, D.6226
	subl	-28(%rbp), %eax	# best, D.6226
	movl	%eax, (%rdx)	# D.6226, *_94
	.loc 1 511 0 discriminator 2
	addl	$1, -32(%rbp)	#, s
.L140:
	.loc 1 511 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# g, tmp168
	movl	(%rax), %eax	# g_26(D)->n_mgau, D.6226
	cmpl	-32(%rbp), %eax	# s, D.6226
	jg	.L141	#,
	.loc 1 514 0 is_stmt 1
	movq	-48(%rbp), %rax	# g, tmp169
	movl	-24(%rbp), %edx	# ns, tmp170
	movl	%edx, 32(%rax)	# tmp170, g_26(D)->frm_sen_eval
	.loc 1 515 0
	movq	-48(%rbp), %rax	# g, tmp171
	movl	-20(%rbp), %edx	# ng, tmp172
	movl	%edx, 36(%rax)	# tmp172, g_26(D)->frm_gau_eval
	.loc 1 517 0
	movl	-28(%rbp), %eax	# best, D.6230
	.loc 1 518 0
	addq	$72, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	subvq_frame_eval, .-subvq_frame_eval
	.section	.rodata
	.align 8
.LC38:
	.string	"Warning!! Score is S3_LOGPROB_ZERO\n"
	.text
	.globl	subvq_mgau_eval
	.type	subvq_mgau_eval, @function
subvq_mgau_eval:
.LFB10:
	.loc 1 521 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$112, %rsp	#,
	movq	%rdi, -72(%rbp)	# g, g
	movq	%rsi, -80(%rbp)	# vq, vq
	movl	%edx, -84(%rbp)	# m, m
	movl	%ecx, -88(%rbp)	# n, n
	movq	%r8, -96(%rbp)	# active, active
	.loc 1 531 0
	call	log_to_logs3_factor	#
	movsd	%xmm0, -104(%rbp)	#, %sfp
	movq	-104(%rbp), %rax	# %sfp, tmp115
	movq	%rax, -24(%rbp)	# tmp115, f
	.loc 1 533 0
	movq	-80(%rbp), %rax	# vq, tmp116
	movq	48(%rax), %rax	# vq_17(D)->vqdist, D.6231
	movq	(%rax), %rax	# *_18, tmp117
	movq	%rax, -16(%rbp)	# tmp117, vqdist
	.loc 1 534 0
	movl	$-939524096, -44(%rbp)	#, score
	.loc 1 535 0
	movq	-72(%rbp), %rax	# g, tmp118
	movq	16(%rax), %rcx	# g_21(D)->mgau, D.6232
	movl	-84(%rbp), %eax	# m, tmp119
	movslq	%eax, %rdx	# tmp119, D.6233
	movq	%rdx, %rax	# D.6233, tmp120
	salq	$2, %rax	#, tmp120
	addq	%rdx, %rax	# D.6233, tmp120
	salq	$3, %rax	#, tmp121
	addq	%rcx, %rax	# D.6232, tmp122
	movq	%rax, -8(%rbp)	# tmp122, mgau
	.loc 1 536 0
	movq	-80(%rbp), %rax	# vq, tmp123
	movq	32(%rax), %rax	# vq_17(D)->map, D.6234
	movl	-84(%rbp), %edx	# m, tmp124
	movslq	%edx, %rdx	# tmp124, D.6233
	salq	$3, %rdx	#, D.6233
	addq	%rdx, %rax	# D.6233, D.6234
	movq	(%rax), %rax	# *_30, D.6231
	movq	(%rax), %rax	# *_31, tmp125
	movq	%rax, -32(%rbp)	# tmp125, map
	.loc 1 538 0
	cmpq	$0, -96(%rbp)	#, active
	jne	.L144	#,
	.loc 1 539 0
	movl	$0, -56(%rbp)	#, i
	jmp	.L145	#
.L148:
	.loc 1 540 0
	movl	$0, -52(%rbp)	#, v
	.loc 1 541 0
	movl	$0, -48(%rbp)	#, sv_id
	jmp	.L146	#
.L147:
	.loc 1 542 0 discriminator 2
	movq	-32(%rbp), %rax	# map, map.31
	leaq	4(%rax), %rdx	#, tmp126
	movq	%rdx, -32(%rbp)	# tmp126, map
	movl	(%rax), %eax	# *map.31_39, D.6235
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6233
	movq	-16(%rbp), %rax	# vqdist, tmp127
	addq	%rdx, %rax	# D.6233, D.6236
	movl	(%rax), %eax	# *_44, D.6235
	addl	%eax, -52(%rbp)	# D.6235, v
	.loc 1 541 0 discriminator 2
	addl	$1, -48(%rbp)	#, sv_id
.L146:
	.loc 1 541 0 is_stmt 0 discriminator 1
	movq	-80(%rbp), %rax	# vq, tmp128
	movl	8(%rax), %eax	# vq_17(D)->n_sv, D.6235
	cmpl	-48(%rbp), %eax	# sv_id, D.6235
	jg	.L147	#,
	.loc 1 544 0 is_stmt 1
	movq	-8(%rbp), %rax	# mgau, tmp129
	movq	32(%rax), %rax	# mgau_26->mixw, D.6236
	movl	-56(%rbp), %edx	# i, tmp130
	movslq	%edx, %rdx	# tmp130, D.6233
	salq	$2, %rdx	#, D.6233
	addq	%rdx, %rax	# D.6233, D.6236
	movl	(%rax), %edx	# *_51, D.6235
	movl	-52(%rbp), %eax	# v, tmp131
	addl	%eax, %edx	# tmp131, D.6235
	movl	-44(%rbp), %eax	# score, tmp132
	movl	%edx, %esi	# D.6235,
	movl	%eax, %edi	# tmp132,
	call	logs3_add	#
	movl	%eax, -44(%rbp)	# tmp133, score
	.loc 1 539 0
	addl	$1, -56(%rbp)	#, i
.L145:
	.loc 1 539 0 is_stmt 0 discriminator 1
	movl	-56(%rbp), %eax	# i, tmp134
	cmpl	-88(%rbp), %eax	# n, tmp134
	jl	.L148	#,
	jmp	.L149	#
.L144:
	.loc 1 551 0 is_stmt 1
	movl	$0, -40(%rbp)	#, last_active
	.loc 1 552 0
	movl	$0, -56(%rbp)	#, i
	jmp	.L150	#
.L151:
	.loc 1 553 0 discriminator 2
	movl	-56(%rbp), %eax	# i, tmp135
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6233
	movq	-96(%rbp), %rax	# active, tmp136
	addq	%rdx, %rax	# D.6233, D.6236
	movl	(%rax), %eax	# *_64, tmp137
	movl	%eax, -36(%rbp)	# tmp137, c
	.loc 1 552 0 discriminator 2
	addl	$1, -56(%rbp)	#, i
.L150:
	.loc 1 552 0 is_stmt 0 discriminator 1
	movl	-56(%rbp), %eax	# i, tmp138
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6233
	movq	-96(%rbp), %rax	# active, tmp139
	addq	%rdx, %rax	# D.6233, D.6236
	movl	(%rax), %eax	# *_60, D.6235
	testl	%eax, %eax	# D.6235
	jns	.L151	#,
	.loc 1 555 0 is_stmt 1
	movl	$0, -56(%rbp)	#, i
	jmp	.L152	#
.L155:
	.loc 1 559 0
	movl	-56(%rbp), %eax	# i, tmp140
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6233
	movq	-96(%rbp), %rax	# active, tmp141
	addq	%rdx, %rax	# D.6233, D.6236
	movl	(%rax), %eax	# *_74, tmp142
	movl	%eax, -36(%rbp)	# tmp142, c
	.loc 1 560 0
	movl	-40(%rbp), %eax	# last_active, tmp143
	movl	-36(%rbp), %edx	# c, tmp144
	subl	%eax, %edx	# tmp143, D.6235
	movq	-80(%rbp), %rax	# vq, tmp145
	movl	8(%rax), %eax	# vq_17(D)->n_sv, D.6235
	imull	%edx, %eax	# D.6235, D.6235
	cltq
	salq	$2, %rax	#, D.6233
	addq	%rax, -32(%rbp)	# D.6233, map
	.loc 1 561 0
	movl	$0, -52(%rbp)	#, v
	.loc 1 562 0
	movl	$0, -48(%rbp)	#, sv_id
	jmp	.L153	#
.L154:
	.loc 1 563 0 discriminator 2
	movq	-32(%rbp), %rax	# map, map.32
	leaq	4(%rax), %rdx	#, tmp146
	movq	%rdx, -32(%rbp)	# tmp146, map
	movl	(%rax), %eax	# *map.32_85, D.6235
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6233
	movq	-16(%rbp), %rax	# vqdist, tmp147
	addq	%rdx, %rax	# D.6233, D.6236
	movl	(%rax), %eax	# *_90, D.6235
	addl	%eax, -52(%rbp)	# D.6235, v
	.loc 1 562 0 discriminator 2
	addl	$1, -48(%rbp)	#, sv_id
.L153:
	.loc 1 562 0 is_stmt 0 discriminator 1
	movq	-80(%rbp), %rax	# vq, tmp148
	movl	8(%rax), %eax	# vq_17(D)->n_sv, D.6235
	cmpl	-48(%rbp), %eax	# sv_id, D.6235
	jg	.L154	#,
	.loc 1 569 0 is_stmt 1
	movl	-36(%rbp), %eax	# c, tmp152
	addl	$1, %eax	#, tmp151
	movl	%eax, -40(%rbp)	# tmp151, last_active
	.loc 1 571 0
	movq	-8(%rbp), %rax	# mgau, tmp153
	movq	32(%rax), %rax	# mgau_26->mixw, D.6236
	movl	-56(%rbp), %edx	# i, tmp154
	movslq	%edx, %rdx	# tmp154, D.6233
	salq	$2, %rdx	#, D.6233
	addq	%rdx, %rax	# D.6233, D.6236
	movl	(%rax), %edx	# *_98, D.6235
	movl	-52(%rbp), %eax	# v, tmp155
	addl	%eax, %edx	# tmp155, D.6235
	movl	-44(%rbp), %eax	# score, tmp156
	movl	%edx, %esi	# D.6235,
	movl	%eax, %edi	# tmp156,
	call	logs3_add	#
	movl	%eax, -44(%rbp)	# tmp157, score
	.loc 1 555 0
	addl	$1, -56(%rbp)	#, i
.L152:
	.loc 1 555 0 is_stmt 0 discriminator 1
	movl	-56(%rbp), %eax	# i, tmp158
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6233
	movq	-96(%rbp), %rax	# active, tmp159
	addq	%rdx, %rax	# D.6233, D.6236
	movl	(%rax), %eax	# *_70, D.6235
	testl	%eax, %eax	# D.6235
	jns	.L155	#,
.L149:
	.loc 1 575 0 is_stmt 1
	cmpl	$-939524096, -44(%rbp)	#, score
	jne	.L156	#,
	.loc 1 576 0
	movl	$.LC0, %edx	#,
	movl	$576, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_info_header	#
	movl	$.LC38, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_info	#
.L156:
	.loc 1 579 0
	movl	-44(%rbp), %eax	# score, D.6237
	.loc 1 581 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	subvq_mgau_eval, .-subvq_mgau_eval
	.globl	subvq_free
	.type	subvq_free, @function
subvq_free:
.LFB11:
	.loc 1 586 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# s, s
	.loc 1 589 0
	cmpq	$0, -24(%rbp)	#, s
	je	.L158	#,
	.loc 1 591 0
	movl	$0, -4(%rbp)	#, i
	jmp	.L160	#
.L162:
	.loc 1 593 0
	movq	-24(%rbp), %rax	# s, tmp84
	movq	16(%rax), %rax	# s_2(D)->featdim, D.6240
	movl	-4(%rbp), %edx	# i, tmp85
	movslq	%edx, %rdx	# tmp85, D.6241
	salq	$3, %rdx	#, D.6241
	addq	%rdx, %rax	# D.6241, D.6240
	movq	(%rax), %rax	# *_8, D.6242
	testq	%rax, %rax	# D.6242
	je	.L161	#,
	.loc 1 593 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# s, tmp86
	movq	16(%rax), %rax	# s_2(D)->featdim, D.6240
	movl	-4(%rbp), %edx	# i, tmp87
	movslq	%edx, %rdx	# tmp87, D.6241
	salq	$3, %rdx	#, D.6241
	addq	%rdx, %rax	# D.6241, D.6240
	movq	(%rax), %rax	# *_13, D.6242
	movq	%rax, %rdi	# D.6242,
	call	ckd_free	#
.L161:
	.loc 1 591 0 is_stmt 1
	addl	$1, -4(%rbp)	#, i
.L160:
	.loc 1 591 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# s, tmp88
	movl	8(%rax), %eax	# s_2(D)->n_sv, D.6239
	cmpl	-4(%rbp), %eax	# i, D.6239
	jg	.L162	#,
	.loc 1 597 0 is_stmt 1
	movq	-24(%rbp), %rax	# s, tmp89
	movq	16(%rax), %rax	# s_2(D)->featdim, D.6240
	testq	%rax, %rax	# D.6240
	je	.L163	#,
	.loc 1 598 0
	movq	-24(%rbp), %rax	# s, tmp90
	movq	16(%rax), %rax	# s_2(D)->featdim, D.6240
	movq	%rax, %rdi	# D.6240,
	call	ckd_free	#
.L163:
	.loc 1 601 0
	movq	-24(%rbp), %rax	# s, tmp91
	movq	24(%rax), %rax	# s_2(D)->gautbl, D.6243
	testq	%rax, %rax	# D.6243
	je	.L164	#,
	.loc 1 602 0
	movq	-24(%rbp), %rax	# s, tmp92
	movq	24(%rax), %rax	# s_2(D)->gautbl, D.6243
	movq	%rax, %rdi	# D.6243,
	call	ckd_free	#
.L164:
	.loc 1 606 0
	movq	-24(%rbp), %rax	# s, tmp93
	movq	32(%rax), %rax	# s_2(D)->map, D.6244
	testq	%rax, %rax	# D.6244
	je	.L165	#,
	.loc 1 607 0
	movq	-24(%rbp), %rax	# s, tmp94
	movq	32(%rax), %rax	# s_2(D)->map, D.6244
	movq	%rax, %rdi	# D.6244,
	call	ckd_free_3d	#
.L165:
	.loc 1 609 0
	movq	-24(%rbp), %rax	# s, tmp95
	movq	40(%rax), %rax	# s_2(D)->subvec, D.6245
	testq	%rax, %rax	# D.6245
	je	.L166	#,
	.loc 1 610 0
	movq	-24(%rbp), %rax	# s, tmp96
	movq	40(%rax), %rax	# s_2(D)->subvec, D.6245
	movq	%rax, %rdi	# D.6245,
	call	ckd_free	#
.L166:
	.loc 1 612 0
	movq	-24(%rbp), %rax	# s, tmp97
	movq	48(%rax), %rax	# s_2(D)->vqdist, D.6240
	testq	%rax, %rax	# D.6240
	je	.L167	#,
	.loc 1 613 0
	movq	-24(%rbp), %rax	# s, tmp98
	movq	48(%rax), %rax	# s_2(D)->vqdist, D.6240
	movq	%rax, %rdi	# D.6240,
	call	ckd_free_2d	#
.L167:
	.loc 1 615 0
	movq	-24(%rbp), %rax	# s, tmp99
	movq	56(%rax), %rax	# s_2(D)->gauscore, D.6242
	testq	%rax, %rax	# D.6242
	je	.L168	#,
	.loc 1 616 0
	movq	-24(%rbp), %rax	# s, tmp100
	movq	56(%rax), %rax	# s_2(D)->gauscore, D.6242
	movq	%rax, %rdi	# D.6242,
	call	ckd_free	#
.L168:
	.loc 1 618 0
	movq	-24(%rbp), %rax	# s, tmp101
	movq	64(%rax), %rax	# s_2(D)->mgau_sl, D.6242
	testq	%rax, %rax	# D.6242
	je	.L169	#,
	.loc 1 619 0
	movq	-24(%rbp), %rax	# s, tmp102
	movq	64(%rax), %rax	# s_2(D)->mgau_sl, D.6242
	movq	%rax, %rdi	# D.6242,
	call	ckd_free	#
.L169:
	.loc 1 622 0
	movq	-24(%rbp), %rax	# s, tmp103
	movq	%rax, %rdi	# tmp103,
	call	ckd_free	#
.L158:
	.loc 1 626 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	subvq_free, .-subvq_free
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/include/stdio.h"
	.file 5 "/usr/include/libio.h"
	.file 6 "./libutil/prim_type.h"
	.file 7 "cont_mgau.h"
	.file 8 "vector.h"
	.file 9 "subvq.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xad5
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF106
	.byte	0x1
	.long	.LASF107
	.long	.LASF108
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
	.long	.LASF109
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
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF47
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF48
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.long	.LASF49
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.long	.LASF50
	.uleb128 0x2
	.long	.LASF51
	.byte	0x6
	.byte	0x3f
	.long	0x62
	.uleb128 0x2
	.long	.LASF52
	.byte	0x6
	.byte	0x45
	.long	0x2a0
	.uleb128 0x2
	.long	.LASF53
	.byte	0x6
	.byte	0x46
	.long	0x2a7
	.uleb128 0xd
	.byte	0x28
	.byte	0x7
	.byte	0x5f
	.long	0x314
	.uleb128 0x8
	.long	.LASF54
	.byte	0x7
	.byte	0x60
	.long	0x2ae
	.byte	0
	.uleb128 0x8
	.long	.LASF55
	.byte	0x7
	.byte	0x62
	.long	0x314
	.byte	0x8
	.uleb128 0xe
	.string	"var"
	.byte	0x7
	.byte	0x63
	.long	0x314
	.byte	0x10
	.uleb128 0xe
	.string	"lrd"
	.byte	0x7
	.byte	0x66
	.long	0x31a
	.byte	0x18
	.uleb128 0x8
	.long	.LASF56
	.byte	0x7
	.byte	0x69
	.long	0x320
	.byte	0x20
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x31a
	.uleb128 0x6
	.byte	0x8
	.long	0x2b9
	.uleb128 0x6
	.byte	0x8
	.long	0x2ae
	.uleb128 0x2
	.long	.LASF57
	.byte	0x7
	.byte	0x6c
	.long	0x2cf
	.uleb128 0xd
	.byte	0x30
	.byte	0x7
	.byte	0x74
	.long	0x39a
	.uleb128 0x8
	.long	.LASF58
	.byte	0x7
	.byte	0x75
	.long	0x2ae
	.byte	0
	.uleb128 0x8
	.long	.LASF59
	.byte	0x7
	.byte	0x76
	.long	0x2ae
	.byte	0x4
	.uleb128 0x8
	.long	.LASF60
	.byte	0x7
	.byte	0x77
	.long	0x2ae
	.byte	0x8
	.uleb128 0x8
	.long	.LASF61
	.byte	0x7
	.byte	0x78
	.long	0x39a
	.byte	0x10
	.uleb128 0x8
	.long	.LASF62
	.byte	0x7
	.byte	0x79
	.long	0x2c4
	.byte	0x18
	.uleb128 0x8
	.long	.LASF63
	.byte	0x7
	.byte	0x7c
	.long	0x2ae
	.byte	0x20
	.uleb128 0x8
	.long	.LASF64
	.byte	0x7
	.byte	0x7d
	.long	0x2ae
	.byte	0x24
	.uleb128 0x8
	.long	.LASF65
	.byte	0x7
	.byte	0x7e
	.long	0x2ae
	.byte	0x28
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x326
	.uleb128 0x2
	.long	.LASF66
	.byte	0x7
	.byte	0x81
	.long	0x331
	.uleb128 0xd
	.byte	0x8
	.byte	0x8
	.byte	0x47
	.long	0x3c8
	.uleb128 0xe
	.string	"r"
	.byte	0x8
	.byte	0x48
	.long	0x2ae
	.byte	0
	.uleb128 0xe
	.string	"c"
	.byte	0x8
	.byte	0x49
	.long	0x2ae
	.byte	0x4
	.byte	0
	.uleb128 0x2
	.long	.LASF67
	.byte	0x8
	.byte	0x4a
	.long	0x3ab
	.uleb128 0xd
	.byte	0x28
	.byte	0x8
	.byte	0xf0
	.long	0x424
	.uleb128 0x8
	.long	.LASF68
	.byte	0x8
	.byte	0xf1
	.long	0x2ae
	.byte	0
	.uleb128 0x8
	.long	.LASF60
	.byte	0x8
	.byte	0xf2
	.long	0x2ae
	.byte	0x4
	.uleb128 0x8
	.long	.LASF55
	.byte	0x8
	.byte	0xf3
	.long	0x314
	.byte	0x8
	.uleb128 0xe
	.string	"var"
	.byte	0x8
	.byte	0xf4
	.long	0x314
	.byte	0x10
	.uleb128 0xe
	.string	"lrd"
	.byte	0x8
	.byte	0xf5
	.long	0x31a
	.byte	0x18
	.uleb128 0x8
	.long	.LASF62
	.byte	0x8
	.byte	0xf6
	.long	0x2c4
	.byte	0x20
	.byte	0
	.uleb128 0x2
	.long	.LASF69
	.byte	0x8
	.byte	0xf8
	.long	0x3d3
	.uleb128 0xd
	.byte	0x48
	.byte	0x9
	.byte	0x52
	.long	0x4b0
	.uleb128 0x8
	.long	.LASF70
	.byte	0x9
	.byte	0x53
	.long	0x3c8
	.byte	0
	.uleb128 0x8
	.long	.LASF71
	.byte	0x9
	.byte	0x55
	.long	0x2ae
	.byte	0x8
	.uleb128 0x8
	.long	.LASF72
	.byte	0x9
	.byte	0x56
	.long	0x2ae
	.byte	0xc
	.uleb128 0x8
	.long	.LASF73
	.byte	0x9
	.byte	0x57
	.long	0x4b0
	.byte	0x10
	.uleb128 0x8
	.long	.LASF74
	.byte	0x9
	.byte	0x58
	.long	0x4b6
	.byte	0x18
	.uleb128 0xe
	.string	"map"
	.byte	0x9
	.byte	0x59
	.long	0x4bc
	.byte	0x20
	.uleb128 0x8
	.long	.LASF75
	.byte	0x9
	.byte	0x60
	.long	0x31a
	.byte	0x28
	.uleb128 0x8
	.long	.LASF76
	.byte	0x9
	.byte	0x61
	.long	0x4b0
	.byte	0x30
	.uleb128 0x8
	.long	.LASF77
	.byte	0x9
	.byte	0x63
	.long	0x320
	.byte	0x38
	.uleb128 0x8
	.long	.LASF78
	.byte	0x9
	.byte	0x64
	.long	0x320
	.byte	0x40
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x320
	.uleb128 0x6
	.byte	0x8
	.long	0x424
	.uleb128 0x6
	.byte	0x8
	.long	0x4b0
	.uleb128 0x2
	.long	.LASF79
	.byte	0x9
	.byte	0x65
	.long	0x42f
	.uleb128 0xf
	.long	.LASF81
	.byte	0x1
	.byte	0x61
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x52f
	.uleb128 0x10
	.string	"svq"
	.byte	0x1
	.byte	0x61
	.long	0x52f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x11
	.long	.LASF80
	.byte	0x1
	.byte	0x61
	.long	0x2c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x12
	.string	"s"
	.byte	0x1
	.byte	0x63
	.long	0x2ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x12
	.string	"lrd"
	.byte	0x1
	.byte	0x64
	.long	0x31a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x13
	.long	.LASF74
	.byte	0x1
	.byte	0x65
	.long	0x4b6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x4c2
	.uleb128 0xf
	.long	.LASF82
	.byte	0x1
	.byte	0x77
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x59d
	.uleb128 0x10
	.string	"vq"
	.byte	0x1
	.byte	0x77
	.long	0x52f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x10
	.string	"g"
	.byte	0x1
	.byte	0x77
	.long	0x59d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x12
	.string	"r"
	.byte	0x1
	.byte	0x79
	.long	0x2ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x12
	.string	"c"
	.byte	0x1
	.byte	0x79
	.long	0x2ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x12
	.string	"c2"
	.byte	0x1
	.byte	0x79
	.long	0x2ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x12
	.string	"s"
	.byte	0x1
	.byte	0x79
	.long	0x2ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x3a0
	.uleb128 0x14
	.long	.LASF83
	.byte	0x1
	.byte	0xaf
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x5f2
	.uleb128 0x10
	.string	"vq"
	.byte	0x1
	.byte	0xaf
	.long	0x52f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x12
	.string	"r"
	.byte	0x1
	.byte	0xb1
	.long	0x2ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x12
	.string	"c"
	.byte	0x1
	.byte	0xb1
	.long	0x2ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x12
	.string	"s"
	.byte	0x1
	.byte	0xb1
	.long	0x2ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x15
	.long	.LASF89
	.byte	0x1
	.byte	0xbc
	.long	0x52f
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x6f4
	.uleb128 0x11
	.long	.LASF84
	.byte	0x1
	.byte	0xbc
	.long	0x8f
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16504
	.uleb128 0x11
	.long	.LASF85
	.byte	0x1
	.byte	0xbc
	.long	0x2c4
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16512
	.uleb128 0x11
	.long	.LASF86
	.byte	0x1
	.byte	0xbc
	.long	0x2ae
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16516
	.uleb128 0x10
	.string	"g"
	.byte	0x1
	.byte	0xbc
	.long	0x59d
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16528
	.uleb128 0x12
	.string	"fp"
	.byte	0x1
	.byte	0xbe
	.long	0x6f4
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16440
	.uleb128 0x13
	.long	.LASF87
	.byte	0x1
	.byte	0xbf
	.long	0x6fa
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16432
	.uleb128 0x13
	.long	.LASF71
	.byte	0x1
	.byte	0xc0
	.long	0x2ae
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16460
	.uleb128 0x12
	.string	"s"
	.byte	0x1
	.byte	0xc1
	.long	0x2ae
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16472
	.uleb128 0x12
	.string	"k"
	.byte	0x1
	.byte	0xc1
	.long	0x2ae
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16484
	.uleb128 0x12
	.string	"l"
	.byte	0x1
	.byte	0xc1
	.long	0x2ae
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16480
	.uleb128 0x12
	.string	"n"
	.byte	0x1
	.byte	0xc1
	.long	0x2ae
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16476
	.uleb128 0x12
	.string	"r"
	.byte	0x1
	.byte	0xc1
	.long	0x2ae
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16468
	.uleb128 0x12
	.string	"c"
	.byte	0x1
	.byte	0xc1
	.long	0x2ae
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16464
	.uleb128 0x13
	.long	.LASF88
	.byte	0x1
	.byte	0xc2
	.long	0x8f
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16456
	.uleb128 0x12
	.string	"vq"
	.byte	0x1
	.byte	0xc3
	.long	0x52f
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16448
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x9c
	.uleb128 0xb
	.long	0x95
	.long	0x70b
	.uleb128 0x16
	.long	0x86
	.value	0x3fff
	.byte	0
	.uleb128 0x17
	.long	.LASF90
	.byte	0x1
	.value	0x15a
	.long	0x2ae
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x7f9
	.uleb128 0x18
	.string	"vq"
	.byte	0x1
	.value	0x15a
	.long	0x52f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x18
	.string	"m"
	.byte	0x1
	.value	0x15b
	.long	0x2ae
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x18
	.string	"n"
	.byte	0x1
	.value	0x15c
	.long	0x2ae
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x19
	.long	.LASF91
	.byte	0x1
	.value	0x15d
	.long	0x2ae
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x1a
	.long	.LASF77
	.byte	0x1
	.value	0x15f
	.long	0x320
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1b
	.string	"map"
	.byte	0x1
	.value	0x160
	.long	0x320
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1b
	.string	"i"
	.byte	0x1
	.value	0x161
	.long	0x2ae
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1b
	.string	"v"
	.byte	0x1
	.value	0x161
	.long	0x2ae
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x1b
	.string	"bv"
	.byte	0x1
	.value	0x161
	.long	0x2ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1b
	.string	"th"
	.byte	0x1
	.value	0x161
	.long	0x2ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1b
	.string	"nc"
	.byte	0x1
	.value	0x161
	.long	0x2ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1b
	.string	"sl"
	.byte	0x1
	.value	0x162
	.long	0x320
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1a
	.long	.LASF76
	.byte	0x1
	.value	0x163
	.long	0x320
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1a
	.long	.LASF92
	.byte	0x1
	.value	0x164
	.long	0x2ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x1c
	.long	.LASF94
	.byte	0x1
	.value	0x1b4
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x85e
	.uleb128 0x18
	.string	"vq"
	.byte	0x1
	.value	0x1b4
	.long	0x52f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x19
	.long	.LASF93
	.byte	0x1
	.value	0x1b4
	.long	0x31a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x18
	.string	"s"
	.byte	0x1
	.value	0x1b4
	.long	0x2ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1b
	.string	"i"
	.byte	0x1
	.value	0x1b6
	.long	0x2ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1a
	.long	.LASF73
	.byte	0x1
	.value	0x1b7
	.long	0x320
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1c
	.long	.LASF95
	.byte	0x1
	.value	0x1c3
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x8c3
	.uleb128 0x18
	.string	"vq"
	.byte	0x1
	.value	0x1c3
	.long	0x52f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x19
	.long	.LASF93
	.byte	0x1
	.value	0x1c3
	.long	0x31a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1b
	.string	"s"
	.byte	0x1
	.value	0x1c5
	.long	0x2ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1b
	.string	"i"
	.byte	0x1
	.value	0x1c5
	.long	0x2ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1a
	.long	.LASF73
	.byte	0x1
	.value	0x1c6
	.long	0x320
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1d
	.long	.LASF96
	.byte	0x1
	.value	0x1d6
	.long	0x2ae
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x979
	.uleb128 0x18
	.string	"vq"
	.byte	0x1
	.value	0x1d6
	.long	0x52f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x18
	.string	"g"
	.byte	0x1
	.value	0x1d6
	.long	0x59d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x19
	.long	.LASF91
	.byte	0x1
	.value	0x1d6
	.long	0x2ae
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x19
	.long	.LASF93
	.byte	0x1
	.value	0x1d6
	.long	0x31a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x19
	.long	.LASF97
	.byte	0x1
	.value	0x1d7
	.long	0x320
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x19
	.long	.LASF98
	.byte	0x1
	.value	0x1d7
	.long	0x320
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x1b
	.string	"s"
	.byte	0x1
	.value	0x1d9
	.long	0x2ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1a
	.long	.LASF99
	.byte	0x1
	.value	0x1da
	.long	0x2ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1b
	.string	"ns"
	.byte	0x1
	.value	0x1da
	.long	0x2ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1b
	.string	"ng"
	.byte	0x1
	.value	0x1da
	.long	0x2ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x1d
	.long	.LASF100
	.byte	0x1
	.value	0x208
	.long	0x2ae
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0xa7f
	.uleb128 0x18
	.string	"g"
	.byte	0x1
	.value	0x208
	.long	0x59d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x18
	.string	"vq"
	.byte	0x1
	.value	0x208
	.long	0x52f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x18
	.string	"m"
	.byte	0x1
	.value	0x208
	.long	0x2ae
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x18
	.string	"n"
	.byte	0x1
	.value	0x208
	.long	0x2ae
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x19
	.long	.LASF101
	.byte	0x1
	.value	0x208
	.long	0x320
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x1a
	.long	.LASF61
	.byte	0x1
	.value	0x20a
	.long	0x39a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1b
	.string	"map"
	.byte	0x1
	.value	0x20b
	.long	0x320
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1b
	.string	"i"
	.byte	0x1
	.value	0x20c
	.long	0x2ae
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1e
	.string	"j"
	.byte	0x1
	.value	0x20c
	.long	0x2ae
	.uleb128 0x1b
	.string	"v"
	.byte	0x1
	.value	0x20c
	.long	0x2ae
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x1a
	.long	.LASF92
	.byte	0x1
	.value	0x20c
	.long	0x2ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1b
	.string	"c"
	.byte	0x1
	.value	0x20d
	.long	0x2ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1a
	.long	.LASF76
	.byte	0x1
	.value	0x20e
	.long	0x320
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1a
	.long	.LASF102
	.byte	0x1
	.value	0x20f
	.long	0x2ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1a
	.long	.LASF103
	.byte	0x1
	.value	0x210
	.long	0x2ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1b
	.string	"f"
	.byte	0x1
	.value	0x212
	.long	0x2c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x1c
	.long	.LASF104
	.byte	0x1
	.value	0x249
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0xab8
	.uleb128 0x18
	.string	"s"
	.byte	0x1
	.value	0x249
	.long	0x52f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1b
	.string	"i"
	.byte	0x1
	.value	0x24b
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x13
	.long	.LASF105
	.byte	0x1
	.byte	0x59
	.long	0x62
	.uleb128 0x9
	.byte	0x3
	.quad	VQ_EVAL
	.uleb128 0x1f
	.long	.LASF110
	.byte	0x4
	.byte	0xa9
	.long	0x266
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
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.byte	0
	.byte	0
	.uleb128 0x1f
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
.LASF97:
	.string	"sen_active"
.LASF32:
	.string	"_shortbuf"
.LASF109:
	.string	"_IO_lock_t"
.LASF21:
	.string	"_IO_buf_end"
.LASF70:
	.string	"origsize"
.LASF81:
	.string	"subvq_maha_precomp"
.LASF19:
	.string	"_IO_write_end"
.LASF3:
	.string	"unsigned int"
.LASF59:
	.string	"max_comp"
.LASF13:
	.string	"_flags"
.LASF65:
	.string	"gau_type"
.LASF25:
	.string	"_markers"
.LASF74:
	.string	"gautbl"
.LASF80:
	.string	"floor"
.LASF101:
	.string	"active"
.LASF56:
	.string	"mixw"
.LASF46:
	.string	"_pos"
.LASF110:
	.string	"stdout"
.LASF24:
	.string	"_IO_save_end"
.LASF108:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/482.sphinx3/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF49:
	.string	"float"
.LASF51:
	.string	"int32"
.LASF67:
	.string	"arraysize_t"
.LASF48:
	.string	"long long unsigned int"
.LASF84:
	.string	"file"
.LASF58:
	.string	"n_mgau"
.LASF86:
	.string	"max_sv"
.LASF23:
	.string	"_IO_backup_base"
.LASF34:
	.string	"_offset"
.LASF107:
	.string	"subvq.c"
.LASF73:
	.string	"featdim"
.LASF27:
	.string	"_fileno"
.LASF66:
	.string	"mgau_model_t"
.LASF7:
	.string	"size_t"
.LASF57:
	.string	"mgau_t"
.LASF16:
	.string	"_IO_read_base"
.LASF62:
	.string	"distfloor"
.LASF44:
	.string	"_next"
.LASF77:
	.string	"gauscore"
.LASF83:
	.string	"subvq_map_linearize"
.LASF71:
	.string	"n_sv"
.LASF63:
	.string	"frm_sen_eval"
.LASF88:
	.string	"strp"
.LASF11:
	.string	"char"
.LASF75:
	.string	"subvec"
.LASF40:
	.string	"_mode"
.LASF60:
	.string	"veclen"
.LASF43:
	.string	"_IO_marker"
.LASF14:
	.string	"_IO_read_ptr"
.LASF54:
	.string	"n_comp"
.LASF52:
	.string	"float32"
.LASF17:
	.string	"_IO_write_base"
.LASF102:
	.string	"score"
.LASF47:
	.string	"long long int"
.LASF22:
	.string	"_IO_save_base"
.LASF92:
	.string	"sv_id"
.LASF79:
	.string	"subvq_t"
.LASF69:
	.string	"vector_gautbl_t"
.LASF104:
	.string	"subvq_free"
.LASF95:
	.string	"subvq_gautbl_eval_logs3"
.LASF76:
	.string	"vqdist"
.LASF82:
	.string	"subvq_map_compact"
.LASF35:
	.string	"__pad1"
.LASF36:
	.string	"__pad2"
.LASF37:
	.string	"__pad3"
.LASF38:
	.string	"__pad4"
.LASF39:
	.string	"__pad5"
.LASF105:
	.string	"VQ_EVAL"
.LASF31:
	.string	"_vtable_offset"
.LASF98:
	.string	"senscr"
.LASF85:
	.string	"varfloor"
.LASF91:
	.string	"beam"
.LASF53:
	.string	"float64"
.LASF72:
	.string	"vqsize"
.LASF78:
	.string	"mgau_sl"
.LASF106:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF15:
	.string	"_IO_read_end"
.LASF5:
	.string	"short int"
.LASF6:
	.string	"long int"
.LASF94:
	.string	"subvq_subvec_eval_logs3"
.LASF68:
	.string	"n_gau"
.LASF90:
	.string	"subvq_mgau_shortlist"
.LASF33:
	.string	"_lock"
.LASF10:
	.string	"sizetype"
.LASF61:
	.string	"mgau"
.LASF0:
	.string	"long unsigned int"
.LASF29:
	.string	"_old_offset"
.LASF42:
	.string	"_IO_FILE"
.LASF99:
	.string	"best"
.LASF1:
	.string	"unsigned char"
.LASF45:
	.string	"_sbuf"
.LASF87:
	.string	"line"
.LASF18:
	.string	"_IO_write_ptr"
.LASF96:
	.string	"subvq_frame_eval"
.LASF64:
	.string	"frm_gau_eval"
.LASF103:
	.string	"last_active"
.LASF8:
	.string	"__off_t"
.LASF4:
	.string	"signed char"
.LASF2:
	.string	"short unsigned int"
.LASF50:
	.string	"double"
.LASF93:
	.string	"feat"
.LASF26:
	.string	"_chain"
.LASF89:
	.string	"subvq_init"
.LASF12:
	.string	"FILE"
.LASF28:
	.string	"_flags2"
.LASF30:
	.string	"_cur_column"
.LASF100:
	.string	"subvq_mgau_eval"
.LASF55:
	.string	"mean"
.LASF9:
	.string	"__off64_t"
.LASF41:
	.string	"_unused2"
.LASF20:
	.string	"_IO_buf_base"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
