	.file	"hmm.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I . -I . -I libutil -imultiarch x86_64-linux-gnu
# -D SPEC_CPU -D NDEBUG -D SPEC_CPU -D HAVE_CONFIG_H -D SPEC_CPU_LP64 hmm.c
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
	.string	" %11d    "
.LC1:
	.string	" %11d"
.LC2:
	.string	"     %11d\n"
.LC3:
	.string	"senid"
.LC4:
	.string	" %-11s    "
.LC5:
	.string	"senscr"
	.text
	.globl	hmm_dump
	.type	hmm_dump, @function
hmm_dump:
.LFB2:
	.file 1 "hmm.c"
	.loc 1 80 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -24(%rbp)	# hmm, hmm
	movl	%esi, -28(%rbp)	# n_state, n_state
	movq	%rdx, -40(%rbp)	# senid, senid
	movq	%rcx, -48(%rbp)	# senscr, senscr
	movq	%r8, -56(%rbp)	# fp, fp
	.loc 1 83 0
	movq	-24(%rbp), %rax	# hmm, tmp86
	movl	8(%rax), %edx	# hmm_5(D)->in.score, D.5383
	movq	-56(%rbp), %rax	# fp, tmp87
	movl	$.LC0, %esi	#,
	movq	%rax, %rdi	# tmp87,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 84 0
	movl	$0, -4(%rbp)	#, i
	jmp	.L2	#
.L3:
	.loc 1 85 0 discriminator 2
	movq	-24(%rbp), %rax	# hmm, tmp88
	movq	(%rax), %rax	# hmm_5(D)->state, D.5384
	movl	-4(%rbp), %edx	# i, tmp89
	movslq	%edx, %rdx	# tmp89, D.5385
	salq	$3, %rdx	#, D.5385
	addq	%rdx, %rax	# D.5385, D.5384
	movl	(%rax), %edx	# _13->score, D.5383
	movq	-56(%rbp), %rax	# fp, tmp90
	movl	$.LC1, %esi	#,
	movq	%rax, %rdi	# tmp90,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 84 0 discriminator 2
	addl	$1, -4(%rbp)	#, i
.L2:
	.loc 1 84 0 is_stmt 0 discriminator 1
	movl	-4(%rbp), %eax	# i, tmp91
	cmpl	-28(%rbp), %eax	# n_state, tmp91
	jl	.L3	#,
	.loc 1 86 0 is_stmt 1
	movq	-24(%rbp), %rax	# hmm, tmp92
	movl	16(%rax), %edx	# hmm_5(D)->out.score, D.5383
	movq	-56(%rbp), %rax	# fp, tmp93
	movl	$.LC2, %esi	#,
	movq	%rax, %rdi	# tmp93,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 88 0
	movq	-24(%rbp), %rax	# hmm, tmp94
	movl	12(%rax), %edx	# hmm_5(D)->in.history, D.5383
	movq	-56(%rbp), %rax	# fp, tmp95
	movl	$.LC0, %esi	#,
	movq	%rax, %rdi	# tmp95,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 89 0
	movl	$0, -4(%rbp)	#, i
	jmp	.L4	#
.L5:
	.loc 1 90 0 discriminator 2
	movq	-24(%rbp), %rax	# hmm, tmp96
	movq	(%rax), %rax	# hmm_5(D)->state, D.5384
	movl	-4(%rbp), %edx	# i, tmp97
	movslq	%edx, %rdx	# tmp97, D.5385
	salq	$3, %rdx	#, D.5385
	addq	%rdx, %rax	# D.5385, D.5384
	movl	4(%rax), %edx	# _22->history, D.5383
	movq	-56(%rbp), %rax	# fp, tmp98
	movl	$.LC1, %esi	#,
	movq	%rax, %rdi	# tmp98,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 89 0 discriminator 2
	addl	$1, -4(%rbp)	#, i
.L4:
	.loc 1 89 0 is_stmt 0 discriminator 1
	movl	-4(%rbp), %eax	# i, tmp99
	cmpl	-28(%rbp), %eax	# n_state, tmp99
	jl	.L5	#,
	.loc 1 91 0 is_stmt 1
	movq	-24(%rbp), %rax	# hmm, tmp100
	movl	20(%rax), %edx	# hmm_5(D)->out.history, D.5383
	movq	-56(%rbp), %rax	# fp, tmp101
	movl	$.LC2, %esi	#,
	movq	%rax, %rdi	# tmp101,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 93 0
	cmpq	$0, -40(%rbp)	#, senid
	je	.L6	#,
	.loc 1 94 0
	movq	-56(%rbp), %rax	# fp, tmp102
	movl	$.LC3, %edx	#,
	movl	$.LC4, %esi	#,
	movq	%rax, %rdi	# tmp102,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 95 0
	movl	$0, -4(%rbp)	#, i
	jmp	.L7	#
.L8:
	.loc 1 96 0 discriminator 2
	movl	-4(%rbp), %eax	# i, tmp103
	cltq
	leaq	(%rax,%rax), %rdx	#, D.5385
	movq	-40(%rbp), %rax	# senid, tmp104
	addq	%rdx, %rax	# D.5385, D.5386
	movzwl	(%rax), %eax	# *_30, D.5387
	movswl	%ax, %edx	# D.5387, D.5383
	movq	-56(%rbp), %rax	# fp, tmp105
	movl	$.LC1, %esi	#,
	movq	%rax, %rdi	# tmp105,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 95 0 discriminator 2
	addl	$1, -4(%rbp)	#, i
.L7:
	.loc 1 95 0 is_stmt 0 discriminator 1
	movl	-4(%rbp), %eax	# i, tmp106
	cmpl	-28(%rbp), %eax	# n_state, tmp106
	jl	.L8	#,
	.loc 1 97 0 is_stmt 1
	movq	-56(%rbp), %rax	# fp, tmp107
	movq	%rax, %rsi	# tmp107,
	movl	$10, %edi	#,
	call	fputc	#
	.loc 1 99 0
	cmpq	$0, -48(%rbp)	#, senscr
	je	.L6	#,
	.loc 1 100 0
	movq	-56(%rbp), %rax	# fp, tmp108
	movl	$.LC5, %edx	#,
	movl	$.LC4, %esi	#,
	movq	%rax, %rdi	# tmp108,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 101 0
	movl	$0, -4(%rbp)	#, i
	jmp	.L9	#
.L10:
	.loc 1 102 0 discriminator 2
	movl	-4(%rbp), %eax	# i, tmp109
	cltq
	leaq	(%rax,%rax), %rdx	#, D.5385
	movq	-40(%rbp), %rax	# senid, tmp110
	addq	%rdx, %rax	# D.5385, D.5386
	movzwl	(%rax), %eax	# *_38, D.5387
	movswq	%ax, %rax	# D.5387, D.5385
	leaq	0(,%rax,4), %rdx	#, D.5385
	movq	-48(%rbp), %rax	# senscr, tmp111
	addq	%rdx, %rax	# D.5385, D.5388
	movl	(%rax), %edx	# *_42, D.5383
	movq	-56(%rbp), %rax	# fp, tmp112
	movl	$.LC1, %esi	#,
	movq	%rax, %rdi	# tmp112,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 101 0 discriminator 2
	addl	$1, -4(%rbp)	#, i
.L9:
	.loc 1 101 0 is_stmt 0 discriminator 1
	movl	-4(%rbp), %eax	# i, tmp113
	cmpl	-28(%rbp), %eax	# n_state, tmp113
	jl	.L10	#,
	.loc 1 103 0 is_stmt 1
	movq	-56(%rbp), %rax	# fp, tmp114
	movq	%rax, %rsi	# tmp114,
	movl	$10, %edi	#,
	call	fputc	#
.L6:
	.loc 1 107 0
	movq	-56(%rbp), %rax	# fp, tmp115
	movq	%rax, %rdi	# tmp115,
	call	fflush	#
	.loc 1 108 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	hmm_dump, .-hmm_dump
	.globl	hmm_clear
	.type	hmm_clear, @function
hmm_clear:
.LFB3:
	.loc 1 112 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# h, h
	movl	%esi, -28(%rbp)	# n_state, n_state
	.loc 1 115 0
	movq	-24(%rbp), %rax	# h, tmp67
	movl	$-939524096, 8(%rax)	#, h_2(D)->in.score
	.loc 1 116 0
	movq	-24(%rbp), %rax	# h, tmp68
	movl	$-1, 12(%rax)	#, h_2(D)->in.history
	.loc 1 117 0
	movl	$0, -4(%rbp)	#, i
	jmp	.L12	#
.L13:
	.loc 1 118 0 discriminator 2
	movq	-24(%rbp), %rax	# h, tmp69
	movq	(%rax), %rax	# h_2(D)->state, D.5395
	movl	-4(%rbp), %edx	# i, tmp70
	movslq	%edx, %rdx	# tmp70, D.5396
	salq	$3, %rdx	#, D.5396
	addq	%rdx, %rax	# D.5396, D.5395
	movl	$-939524096, (%rax)	#, _8->score
	.loc 1 119 0 discriminator 2
	movq	-24(%rbp), %rax	# h, tmp71
	movq	(%rax), %rax	# h_2(D)->state, D.5395
	movl	-4(%rbp), %edx	# i, tmp72
	movslq	%edx, %rdx	# tmp72, D.5396
	salq	$3, %rdx	#, D.5396
	addq	%rdx, %rax	# D.5396, D.5395
	movl	$-1, 4(%rax)	#, _12->history
	.loc 1 117 0 discriminator 2
	addl	$1, -4(%rbp)	#, i
.L12:
	.loc 1 117 0 is_stmt 0 discriminator 1
	movl	-4(%rbp), %eax	# i, tmp73
	cmpl	-28(%rbp), %eax	# n_state, tmp73
	jl	.L13	#,
	.loc 1 121 0 is_stmt 1
	movq	-24(%rbp), %rax	# h, tmp74
	movl	$-939524096, 16(%rax)	#, h_2(D)->out.score
	.loc 1 122 0
	movq	-24(%rbp), %rax	# h, tmp75
	movl	$-1, 20(%rax)	#, h_2(D)->out.history
	.loc 1 124 0
	movq	-24(%rbp), %rax	# h, tmp76
	movl	$-939524096, 32(%rax)	#, h_2(D)->bestscore
	.loc 1 125 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	hmm_clear, .-hmm_clear
	.type	NO_UFLOW_ADD, @function
NO_UFLOW_ADD:
.LFB4:
	.loc 1 134 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)	# a, a
	movl	%esi, -24(%rbp)	# b, b
	.loc 1 137 0
	movl	-24(%rbp), %eax	# b, tmp66
	movl	-20(%rbp), %edx	# a, tmp67
	addl	%edx, %eax	# tmp67, tmp65
	movl	%eax, -4(%rbp)	# tmp65, c
	.loc 1 138 0
	cmpl	$0, -4(%rbp)	#, c
	jle	.L15	#,
	.loc 1 138 0 is_stmt 0 discriminator 2
	cmpl	$0, -20(%rbp)	#, a
	jns	.L15	#,
	.loc 1 138 0 discriminator 1
	cmpl	$0, -24(%rbp)	#, b
	js	.L16	#,
.L15:
	movl	-4(%rbp), %eax	# c, iftmp.0
	jmp	.L17	#
.L16:
	movl	$-2147483648, %eax	#, iftmp.0
.L17:
	.loc 1 138 0 discriminator 3
	movl	%eax, -4(%rbp)	# iftmp.0, c
	.loc 1 142 0 is_stmt 1 discriminator 3
	movl	-4(%rbp), %eax	# c, D.5397
	.loc 1 144 0 discriminator 3
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	NO_UFLOW_ADD, .-NO_UFLOW_ADD
	.globl	hmm_vit_eval_5st
	.type	hmm_vit_eval_5st, @function
hmm_vit_eval_5st:
.LFB5:
	.loc 1 148 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$56, %rsp	#,
	movq	%rdi, -40(%rbp)	# hmm, hmm
	movq	%rsi, -48(%rbp)	# senid, senid
	movq	%rdx, -56(%rbp)	# senscr, senscr
	.loc 1 151 0
	movq	-40(%rbp), %rax	# hmm, tmp216
	movq	24(%rax), %rax	# hmm_12(D)->tp, D.5398
	movq	(%rax), %rax	# *_13, tmp217
	movq	%rax, -8(%rbp)	# tmp217, tp
	.loc 1 158 0
	movq	-8(%rbp), %rax	# tp, tmp218
	addq	$112, %rax	#, D.5399
	movl	(%rax), %edx	# *_15, D.5400
	movq	-40(%rbp), %rax	# hmm, tmp219
	movq	(%rax), %rax	# hmm_12(D)->state, D.5401
	addq	$32, %rax	#, D.5401
	movl	(%rax), %eax	# _18->score, D.5400
	movl	%edx, %esi	# D.5400,
	movl	%eax, %edi	# D.5400,
	call	NO_UFLOW_ADD	#
	movl	%eax, -16(%rbp)	# tmp220, s4
	.loc 1 159 0
	movq	-8(%rbp), %rax	# tp, tmp221
	addq	$88, %rax	#, D.5399
	movl	(%rax), %edx	# *_21, D.5400
	movq	-40(%rbp), %rax	# hmm, tmp222
	movq	(%rax), %rax	# hmm_12(D)->state, D.5401
	addq	$24, %rax	#, D.5401
	movl	(%rax), %eax	# _24->score, D.5400
	movl	%edx, %esi	# D.5400,
	movl	%eax, %edi	# D.5400,
	call	NO_UFLOW_ADD	#
	movl	%eax, -20(%rbp)	# tmp223, s3
	.loc 1 160 0
	movq	-8(%rbp), %rax	# tp, tmp224
	addq	$64, %rax	#, D.5399
	movl	(%rax), %edx	# *_27, D.5400
	movq	-40(%rbp), %rax	# hmm, tmp225
	movq	(%rax), %rax	# hmm_12(D)->state, D.5401
	addq	$16, %rax	#, D.5401
	movl	(%rax), %eax	# _30->score, D.5400
	movl	%edx, %esi	# D.5400,
	movl	%eax, %edi	# D.5400,
	call	NO_UFLOW_ADD	#
	movl	%eax, -24(%rbp)	# tmp226, s2
	.loc 1 162 0
	movl	-16(%rbp), %eax	# s4, tmp227
	cmpl	-20(%rbp), %eax	# s3, tmp227
	jge	.L20	#,
	.loc 1 163 0
	movl	-20(%rbp), %eax	# s3, tmp228
	cmpl	-24(%rbp), %eax	# s2, tmp228
	jl	.L21	#,
	.loc 1 164 0
	movl	-20(%rbp), %eax	# s3, tmp229
	movl	%eax, -16(%rbp)	# tmp229, s4
	.loc 1 165 0
	movq	-40(%rbp), %rax	# hmm, tmp230
	movq	(%rax), %rax	# hmm_12(D)->state, D.5401
	leaq	32(%rax), %rdx	#, D.5401
	movq	-40(%rbp), %rax	# hmm, tmp231
	movq	(%rax), %rax	# hmm_12(D)->state, D.5401
	addq	$24, %rax	#, D.5401
	movl	4(%rax), %eax	# _37->history, D.5400
	movl	%eax, 4(%rdx)	# D.5400, _35->history
	jmp	.L23	#
.L21:
	.loc 1 167 0
	movl	-24(%rbp), %eax	# s2, tmp232
	movl	%eax, -16(%rbp)	# tmp232, s4
	.loc 1 168 0
	movq	-40(%rbp), %rax	# hmm, tmp233
	movq	(%rax), %rax	# hmm_12(D)->state, D.5401
	leaq	32(%rax), %rdx	#, D.5401
	movq	-40(%rbp), %rax	# hmm, tmp234
	movq	(%rax), %rax	# hmm_12(D)->state, D.5401
	addq	$16, %rax	#, D.5401
	movl	4(%rax), %eax	# _43->history, D.5400
	movl	%eax, 4(%rdx)	# D.5400, _41->history
	jmp	.L23	#
.L20:
	.loc 1 170 0
	movl	-16(%rbp), %eax	# s4, tmp235
	cmpl	-24(%rbp), %eax	# s2, tmp235
	jge	.L23	#,
	.loc 1 171 0
	movl	-24(%rbp), %eax	# s2, tmp236
	movl	%eax, -16(%rbp)	# tmp236, s4
	.loc 1 172 0
	movq	-40(%rbp), %rax	# hmm, tmp237
	movq	(%rax), %rax	# hmm_12(D)->state, D.5401
	leaq	32(%rax), %rdx	#, D.5401
	movq	-40(%rbp), %rax	# hmm, tmp238
	movq	(%rax), %rax	# hmm_12(D)->state, D.5401
	addq	$16, %rax	#, D.5401
	movl	4(%rax), %eax	# _49->history, D.5400
	movl	%eax, 4(%rdx)	# D.5400, _47->history
.L23:
	.loc 1 175 0
	movq	-48(%rbp), %rax	# senid, tmp239
	addq	$8, %rax	#, D.5402
	movzwl	(%rax), %eax	# *_52, D.5403
	movswq	%ax, %rax	# D.5403, D.5404
	leaq	0(,%rax,4), %rdx	#, D.5404
	movq	-56(%rbp), %rax	# senscr, tmp240
	addq	%rdx, %rax	# D.5404, D.5399
	movl	(%rax), %edx	# *_57, D.5400
	movl	-16(%rbp), %eax	# s4, tmp241
	movl	%edx, %esi	# D.5400,
	movl	%eax, %edi	# tmp241,
	call	NO_UFLOW_ADD	#
	movl	%eax, -16(%rbp)	# tmp242, s4
	.loc 1 176 0
	movq	-40(%rbp), %rax	# hmm, tmp243
	movq	(%rax), %rax	# hmm_12(D)->state, D.5401
	leaq	32(%rax), %rdx	#, D.5401
	movl	-16(%rbp), %eax	# s4, tmp244
	movl	%eax, (%rdx)	# tmp244, _61->score
	.loc 1 182 0
	movq	-8(%rbp), %rax	# tp, tmp245
	addq	$84, %rax	#, D.5399
	movl	(%rax), %edx	# *_62, D.5400
	movq	-40(%rbp), %rax	# hmm, tmp246
	movq	(%rax), %rax	# hmm_12(D)->state, D.5401
	addq	$24, %rax	#, D.5401
	movl	(%rax), %eax	# _65->score, D.5400
	movl	%edx, %esi	# D.5400,
	movl	%eax, %edi	# D.5400,
	call	NO_UFLOW_ADD	#
	movl	%eax, -20(%rbp)	# tmp247, s3
	.loc 1 183 0
	movq	-8(%rbp), %rax	# tp, tmp248
	addq	$60, %rax	#, D.5399
	movl	(%rax), %edx	# *_68, D.5400
	movq	-40(%rbp), %rax	# hmm, tmp249
	movq	(%rax), %rax	# hmm_12(D)->state, D.5401
	addq	$16, %rax	#, D.5401
	movl	(%rax), %eax	# _71->score, D.5400
	movl	%edx, %esi	# D.5400,
	movl	%eax, %edi	# D.5400,
	call	NO_UFLOW_ADD	#
	movl	%eax, -24(%rbp)	# tmp250, s2
	.loc 1 184 0
	movq	-8(%rbp), %rax	# tp, tmp251
	addq	$36, %rax	#, D.5399
	movl	(%rax), %edx	# *_74, D.5400
	movq	-40(%rbp), %rax	# hmm, tmp252
	movq	(%rax), %rax	# hmm_12(D)->state, D.5401
	addq	$8, %rax	#, D.5401
	movl	(%rax), %eax	# _77->score, D.5400
	movl	%edx, %esi	# D.5400,
	movl	%eax, %edi	# D.5400,
	call	NO_UFLOW_ADD	#
	movl	%eax, -28(%rbp)	# tmp253, s1
	.loc 1 185 0
	movl	-20(%rbp), %eax	# s3, tmp254
	cmpl	-24(%rbp), %eax	# s2, tmp254
	jge	.L24	#,
	.loc 1 186 0
	movl	-24(%rbp), %eax	# s2, tmp255
	cmpl	-28(%rbp), %eax	# s1, tmp255
	jl	.L25	#,
	.loc 1 187 0
	movl	-24(%rbp), %eax	# s2, tmp256
	movl	%eax, -20(%rbp)	# tmp256, s3
	.loc 1 188 0
	movq	-40(%rbp), %rax	# hmm, tmp257
	movq	(%rax), %rax	# hmm_12(D)->state, D.5401
	leaq	24(%rax), %rdx	#, D.5401
	movq	-40(%rbp), %rax	# hmm, tmp258
	movq	(%rax), %rax	# hmm_12(D)->state, D.5401
	addq	$16, %rax	#, D.5401
	movl	4(%rax), %eax	# _84->history, D.5400
	movl	%eax, 4(%rdx)	# D.5400, _82->history
	jmp	.L27	#
.L25:
	.loc 1 190 0
	movl	-28(%rbp), %eax	# s1, tmp259
	movl	%eax, -20(%rbp)	# tmp259, s3
	.loc 1 191 0
	movq	-40(%rbp), %rax	# hmm, tmp260
	movq	(%rax), %rax	# hmm_12(D)->state, D.5401
	leaq	24(%rax), %rdx	#, D.5401
	movq	-40(%rbp), %rax	# hmm, tmp261
	movq	(%rax), %rax	# hmm_12(D)->state, D.5401
	addq	$8, %rax	#, D.5401
	movl	4(%rax), %eax	# _90->history, D.5400
	movl	%eax, 4(%rdx)	# D.5400, _88->history
	jmp	.L27	#
.L24:
	.loc 1 193 0
	movl	-20(%rbp), %eax	# s3, tmp262
	cmpl	-28(%rbp), %eax	# s1, tmp262
	jge	.L27	#,
	.loc 1 194 0
	movl	-28(%rbp), %eax	# s1, tmp263
	movl	%eax, -20(%rbp)	# tmp263, s3
	.loc 1 195 0
	movq	-40(%rbp), %rax	# hmm, tmp264
	movq	(%rax), %rax	# hmm_12(D)->state, D.5401
	leaq	24(%rax), %rdx	#, D.5401
	movq	-40(%rbp), %rax	# hmm, tmp265
	movq	(%rax), %rax	# hmm_12(D)->state, D.5401
	addq	$8, %rax	#, D.5401
	movl	4(%rax), %eax	# _96->history, D.5400
	movl	%eax, 4(%rdx)	# D.5400, _94->history
.L27:
	.loc 1 199 0
	movq	-48(%rbp), %rax	# senid, tmp266
	addq	$6, %rax	#, D.5402
	movzwl	(%rax), %eax	# *_98, D.5403
	movswq	%ax, %rax	# D.5403, D.5404
	leaq	0(,%rax,4), %rdx	#, D.5404
	movq	-56(%rbp), %rax	# senscr, tmp267
	addq	%rdx, %rax	# D.5404, D.5399
	movl	(%rax), %edx	# *_102, D.5400
	movl	-20(%rbp), %eax	# s3, tmp268
	movl	%edx, %esi	# D.5400,
	movl	%eax, %edi	# tmp268,
	call	NO_UFLOW_ADD	#
	movl	%eax, -20(%rbp)	# tmp269, s3
	.loc 1 200 0
	movq	-40(%rbp), %rax	# hmm, tmp270
	movq	(%rax), %rax	# hmm_12(D)->state, D.5401
	leaq	24(%rax), %rdx	#, D.5401
	movl	-20(%rbp), %eax	# s3, tmp271
	movl	%eax, (%rdx)	# tmp271, _106->score
	.loc 1 202 0
	movl	-16(%rbp), %eax	# s4, tmp273
	cmpl	%eax, -20(%rbp)	# tmp273, s3
	cmovge	-20(%rbp), %eax	# s3,, tmp272
	movl	%eax, -12(%rbp)	# tmp272, best
	.loc 1 208 0
	movq	-8(%rbp), %rax	# tp, tmp274
	addq	$116, %rax	#, D.5399
	movl	(%rax), %edx	# *_108, D.5400
	movl	-16(%rbp), %eax	# s4, tmp275
	movl	%edx, %esi	# D.5400,
	movl	%eax, %edi	# tmp275,
	call	NO_UFLOW_ADD	#
	movl	%eax, -16(%rbp)	# tmp276, s4
	.loc 1 209 0
	movq	-8(%rbp), %rax	# tp, tmp277
	addq	$92, %rax	#, D.5399
	movl	(%rax), %edx	# *_111, D.5400
	movl	-20(%rbp), %eax	# s3, tmp278
	movl	%edx, %esi	# D.5400,
	movl	%eax, %edi	# tmp278,
	call	NO_UFLOW_ADD	#
	movl	%eax, -20(%rbp)	# tmp279, s3
	.loc 1 211 0
	movl	-16(%rbp), %eax	# s4, tmp280
	cmpl	-20(%rbp), %eax	# s3, tmp280
	jge	.L28	#,
	.loc 1 212 0
	movq	-40(%rbp), %rax	# hmm, tmp281
	movl	-20(%rbp), %edx	# s3, tmp282
	movl	%edx, 16(%rax)	# tmp282, hmm_12(D)->out.score
	.loc 1 213 0
	movq	-40(%rbp), %rax	# hmm, tmp283
	movq	(%rax), %rax	# hmm_12(D)->state, D.5401
	addq	$24, %rax	#, D.5401
	movl	4(%rax), %edx	# _115->history, D.5400
	movq	-40(%rbp), %rax	# hmm, tmp284
	movl	%edx, 20(%rax)	# D.5400, hmm_12(D)->out.history
	jmp	.L29	#
.L28:
	.loc 1 215 0
	movq	-40(%rbp), %rax	# hmm, tmp285
	movl	-16(%rbp), %edx	# s4, tmp286
	movl	%edx, 16(%rax)	# tmp286, hmm_12(D)->out.score
	.loc 1 216 0
	movq	-40(%rbp), %rax	# hmm, tmp287
	movq	(%rax), %rax	# hmm_12(D)->state, D.5401
	addq	$32, %rax	#, D.5401
	movl	4(%rax), %edx	# _118->history, D.5400
	movq	-40(%rbp), %rax	# hmm, tmp288
	movl	%edx, 20(%rax)	# D.5400, hmm_12(D)->out.history
.L29:
	.loc 1 223 0
	movq	-8(%rbp), %rax	# tp, tmp289
	addq	$56, %rax	#, D.5399
	movl	(%rax), %edx	# *_120, D.5400
	movq	-40(%rbp), %rax	# hmm, tmp290
	movq	(%rax), %rax	# hmm_12(D)->state, D.5401
	addq	$16, %rax	#, D.5401
	movl	(%rax), %eax	# _123->score, D.5400
	movl	%edx, %esi	# D.5400,
	movl	%eax, %edi	# D.5400,
	call	NO_UFLOW_ADD	#
	movl	%eax, -24(%rbp)	# tmp291, s2
	.loc 1 224 0
	movq	-8(%rbp), %rax	# tp, tmp292
	addq	$32, %rax	#, D.5399
	movl	(%rax), %edx	# *_126, D.5400
	movq	-40(%rbp), %rax	# hmm, tmp293
	movq	(%rax), %rax	# hmm_12(D)->state, D.5401
	addq	$8, %rax	#, D.5401
	movl	(%rax), %eax	# _129->score, D.5400
	movl	%edx, %esi	# D.5400,
	movl	%eax, %edi	# D.5400,
	call	NO_UFLOW_ADD	#
	movl	%eax, -28(%rbp)	# tmp294, s1
	.loc 1 225 0
	movq	-8(%rbp), %rax	# tp, tmp295
	addq	$8, %rax	#, D.5399
	movl	(%rax), %edx	# *_132, D.5400
	movq	-40(%rbp), %rax	# hmm, tmp296
	movq	(%rax), %rax	# hmm_12(D)->state, D.5401
	movl	(%rax), %eax	# _134->score, D.5400
	movl	%edx, %esi	# D.5400,
	movl	%eax, %edi	# D.5400,
	call	NO_UFLOW_ADD	#
	movl	%eax, -32(%rbp)	# tmp297, s0
	.loc 1 226 0
	movl	-24(%rbp), %eax	# s2, tmp298
	cmpl	-28(%rbp), %eax	# s1, tmp298
	jge	.L30	#,
	.loc 1 227 0
	movl	-28(%rbp), %eax	# s1, tmp299
	cmpl	-32(%rbp), %eax	# s0, tmp299
	jl	.L31	#,
	.loc 1 228 0
	movl	-28(%rbp), %eax	# s1, tmp300
	movl	%eax, -24(%rbp)	# tmp300, s2
	.loc 1 229 0
	movq	-40(%rbp), %rax	# hmm, tmp301
	movq	(%rax), %rax	# hmm_12(D)->state, D.5401
	leaq	16(%rax), %rdx	#, D.5401
	movq	-40(%rbp), %rax	# hmm, tmp302
	movq	(%rax), %rax	# hmm_12(D)->state, D.5401
	addq	$8, %rax	#, D.5401
	movl	4(%rax), %eax	# _141->history, D.5400
	movl	%eax, 4(%rdx)	# D.5400, _139->history
	jmp	.L33	#
.L31:
	.loc 1 231 0
	movl	-32(%rbp), %eax	# s0, tmp303
	movl	%eax, -24(%rbp)	# tmp303, s2
	.loc 1 232 0
	movq	-40(%rbp), %rax	# hmm, tmp304
	movq	(%rax), %rax	# hmm_12(D)->state, D.5401
	leaq	16(%rax), %rdx	#, D.5401
	movq	-40(%rbp), %rax	# hmm, tmp305
	movq	(%rax), %rax	# hmm_12(D)->state, D.5401
	movl	4(%rax), %eax	# _146->history, D.5400
	movl	%eax, 4(%rdx)	# D.5400, _145->history
	jmp	.L33	#
.L30:
	.loc 1 234 0
	movl	-24(%rbp), %eax	# s2, tmp306
	cmpl	-32(%rbp), %eax	# s0, tmp306
	jge	.L33	#,
	.loc 1 235 0
	movl	-32(%rbp), %eax	# s0, tmp307
	movl	%eax, -24(%rbp)	# tmp307, s2
	.loc 1 236 0
	movq	-40(%rbp), %rax	# hmm, tmp308
	movq	(%rax), %rax	# hmm_12(D)->state, D.5401
	leaq	16(%rax), %rdx	#, D.5401
	movq	-40(%rbp), %rax	# hmm, tmp309
	movq	(%rax), %rax	# hmm_12(D)->state, D.5401
	movl	4(%rax), %eax	# _151->history, D.5400
	movl	%eax, 4(%rdx)	# D.5400, _150->history
.L33:
	.loc 1 240 0
	movq	-48(%rbp), %rax	# senid, tmp310
	addq	$4, %rax	#, D.5402
	movzwl	(%rax), %eax	# *_153, D.5403
	movswq	%ax, %rax	# D.5403, D.5404
	leaq	0(,%rax,4), %rdx	#, D.5404
	movq	-56(%rbp), %rax	# senscr, tmp311
	addq	%rdx, %rax	# D.5404, D.5399
	movl	(%rax), %edx	# *_157, D.5400
	movl	-24(%rbp), %eax	# s2, tmp312
	movl	%edx, %esi	# D.5400,
	movl	%eax, %edi	# tmp312,
	call	NO_UFLOW_ADD	#
	movl	%eax, -24(%rbp)	# tmp313, s2
	.loc 1 242 0
	movq	-40(%rbp), %rax	# hmm, tmp314
	movq	(%rax), %rax	# hmm_12(D)->state, D.5401
	leaq	16(%rax), %rdx	#, D.5401
	movl	-24(%rbp), %eax	# s2, tmp315
	movl	%eax, (%rdx)	# tmp315, _161->score
	.loc 1 243 0
	movl	-12(%rbp), %eax	# best, tmp316
	cmpl	-24(%rbp), %eax	# s2, tmp316
	jge	.L34	#,
	.loc 1 244 0
	movl	-24(%rbp), %eax	# s2, tmp317
	movl	%eax, -12(%rbp)	# tmp317, best
.L34:
	.loc 1 249 0
	movq	-8(%rbp), %rax	# tp, tmp318
	addq	$28, %rax	#, D.5399
	movl	(%rax), %edx	# *_163, D.5400
	movq	-40(%rbp), %rax	# hmm, tmp319
	movq	(%rax), %rax	# hmm_12(D)->state, D.5401
	addq	$8, %rax	#, D.5401
	movl	(%rax), %eax	# _166->score, D.5400
	movl	%edx, %esi	# D.5400,
	movl	%eax, %edi	# D.5400,
	call	NO_UFLOW_ADD	#
	movl	%eax, -28(%rbp)	# tmp320, s1
	.loc 1 250 0
	movq	-8(%rbp), %rax	# tp, tmp321
	addq	$4, %rax	#, D.5399
	movl	(%rax), %edx	# *_169, D.5400
	movq	-40(%rbp), %rax	# hmm, tmp322
	movq	(%rax), %rax	# hmm_12(D)->state, D.5401
	movl	(%rax), %eax	# _171->score, D.5400
	movl	%edx, %esi	# D.5400,
	movl	%eax, %edi	# D.5400,
	call	NO_UFLOW_ADD	#
	movl	%eax, -32(%rbp)	# tmp323, s0
	.loc 1 252 0
	movl	-28(%rbp), %eax	# s1, tmp324
	cmpl	-32(%rbp), %eax	# s0, tmp324
	jge	.L35	#,
	.loc 1 253 0
	movl	-32(%rbp), %eax	# s0, tmp325
	movl	%eax, -28(%rbp)	# tmp325, s1
	.loc 1 254 0
	movq	-40(%rbp), %rax	# hmm, tmp326
	movq	(%rax), %rax	# hmm_12(D)->state, D.5401
	leaq	8(%rax), %rdx	#, D.5401
	movq	-40(%rbp), %rax	# hmm, tmp327
	movq	(%rax), %rax	# hmm_12(D)->state, D.5401
	movl	4(%rax), %eax	# _177->history, D.5400
	movl	%eax, 4(%rdx)	# D.5400, _176->history
.L35:
	.loc 1 257 0
	movq	-48(%rbp), %rax	# senid, tmp328
	addq	$2, %rax	#, D.5402
	movzwl	(%rax), %eax	# *_179, D.5403
	movswq	%ax, %rax	# D.5403, D.5404
	leaq	0(,%rax,4), %rdx	#, D.5404
	movq	-56(%rbp), %rax	# senscr, tmp329
	addq	%rdx, %rax	# D.5404, D.5399
	movl	(%rax), %edx	# *_183, D.5400
	movl	-28(%rbp), %eax	# s1, tmp330
	movl	%edx, %esi	# D.5400,
	movl	%eax, %edi	# tmp330,
	call	NO_UFLOW_ADD	#
	movl	%eax, -28(%rbp)	# tmp331, s1
	.loc 1 258 0
	movq	-40(%rbp), %rax	# hmm, tmp332
	movq	(%rax), %rax	# hmm_12(D)->state, D.5401
	leaq	8(%rax), %rdx	#, D.5401
	movl	-28(%rbp), %eax	# s1, tmp333
	movl	%eax, (%rdx)	# tmp333, _187->score
	.loc 1 259 0
	movl	-12(%rbp), %eax	# best, tmp334
	cmpl	-28(%rbp), %eax	# s1, tmp334
	jge	.L36	#,
	.loc 1 260 0
	movl	-28(%rbp), %eax	# s1, tmp335
	movl	%eax, -12(%rbp)	# tmp335, best
.L36:
	.loc 1 264 0
	movq	-8(%rbp), %rax	# tp, tmp336
	movl	(%rax), %edx	# *tp_14, D.5400
	movq	-40(%rbp), %rax	# hmm, tmp337
	movq	(%rax), %rax	# hmm_12(D)->state, D.5401
	movl	(%rax), %eax	# _190->score, D.5400
	movl	%edx, %esi	# D.5400,
	movl	%eax, %edi	# D.5400,
	call	NO_UFLOW_ADD	#
	movl	%eax, -32(%rbp)	# tmp338, s0
	.loc 1 266 0
	movq	-40(%rbp), %rax	# hmm, tmp339
	movl	8(%rax), %eax	# hmm_12(D)->in.score, D.5400
	cmpl	-32(%rbp), %eax	# s0, D.5400
	jle	.L37	#,
	.loc 1 267 0
	movq	-40(%rbp), %rax	# hmm, tmp340
	movl	8(%rax), %eax	# hmm_12(D)->in.score, tmp341
	movl	%eax, -32(%rbp)	# tmp341, s0
	.loc 1 268 0
	movq	-40(%rbp), %rax	# hmm, tmp342
	movq	(%rax), %rax	# hmm_12(D)->state, D.5401
	movq	-40(%rbp), %rdx	# hmm, tmp343
	movl	12(%rdx), %edx	# hmm_12(D)->in.history, D.5400
	movl	%edx, 4(%rax)	# D.5400, _195->history
.L37:
	.loc 1 271 0
	movq	-48(%rbp), %rax	# senid, tmp344
	movzwl	(%rax), %eax	# *senid_51(D), D.5403
	movswq	%ax, %rax	# D.5403, D.5404
	leaq	0(,%rax,4), %rdx	#, D.5404
	movq	-56(%rbp), %rax	# senscr, tmp345
	addq	%rdx, %rax	# D.5404, D.5399
	movl	(%rax), %edx	# *_200, D.5400
	movl	-32(%rbp), %eax	# s0, tmp346
	movl	%edx, %esi	# D.5400,
	movl	%eax, %edi	# tmp346,
	call	NO_UFLOW_ADD	#
	movl	%eax, -32(%rbp)	# tmp347, s0
	.loc 1 273 0
	movq	-40(%rbp), %rax	# hmm, tmp348
	movq	(%rax), %rax	# hmm_12(D)->state, D.5401
	movl	-32(%rbp), %edx	# s0, tmp349
	movl	%edx, (%rax)	# tmp349, _203->score
	.loc 1 274 0
	movl	-12(%rbp), %eax	# best, tmp350
	cmpl	-32(%rbp), %eax	# s0, tmp350
	jge	.L38	#,
	.loc 1 275 0
	movl	-32(%rbp), %eax	# s0, tmp351
	movl	%eax, -12(%rbp)	# tmp351, best
.L38:
	.loc 1 277 0
	movq	-40(%rbp), %rax	# hmm, tmp352
	movl	$-939524096, 8(%rax)	#, hmm_12(D)->in.score
	.loc 1 278 0
	movq	-40(%rbp), %rax	# hmm, tmp353
	movl	-12(%rbp), %edx	# best, tmp354
	movl	%edx, 32(%rax)	# tmp354, hmm_12(D)->bestscore
	.loc 1 280 0
	movl	-12(%rbp), %eax	# best, D.5405
	.loc 1 281 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	hmm_vit_eval_5st, .-hmm_vit_eval_5st
	.globl	hmm_vit_eval_3st
	.type	hmm_vit_eval_3st, @function
hmm_vit_eval_3st:
.LFB6:
	.loc 1 285 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$56, %rsp	#,
	movq	%rdi, -40(%rbp)	# hmm, hmm
	movq	%rsi, -48(%rbp)	# senid, senid
	movq	%rdx, -56(%rbp)	# senscr, senscr
	.loc 1 292 0
	movq	-40(%rbp), %rax	# hmm, tmp152
	movq	24(%rax), %rax	# hmm_7(D)->tp, D.5406
	movq	(%rax), %rax	# *_8, tmp153
	movq	%rax, -8(%rbp)	# tmp153, tp
	.loc 1 296 0
	movq	-8(%rbp), %rax	# tp, tmp154
	addq	$40, %rax	#, D.5407
	movl	(%rax), %edx	# *_10, D.5408
	movq	-40(%rbp), %rax	# hmm, tmp155
	movq	(%rax), %rax	# hmm_7(D)->state, D.5409
	addq	$16, %rax	#, D.5409
	movl	(%rax), %eax	# _13->score, D.5408
	movl	%edx, %esi	# D.5408,
	movl	%eax, %edi	# D.5408,
	call	NO_UFLOW_ADD	#
	movl	%eax, -16(%rbp)	# tmp156, s2
	.loc 1 299 0
	movq	-8(%rbp), %rax	# tp, tmp157
	addq	$24, %rax	#, D.5407
	movl	(%rax), %edx	# *_16, D.5408
	movq	-40(%rbp), %rax	# hmm, tmp158
	movq	(%rax), %rax	# hmm_7(D)->state, D.5409
	addq	$8, %rax	#, D.5409
	movl	(%rax), %eax	# _19->score, D.5408
	movl	%edx, %esi	# D.5408,
	movl	%eax, %edi	# D.5408,
	call	NO_UFLOW_ADD	#
	movl	%eax, -20(%rbp)	# tmp159, s1
	.loc 1 301 0
	movq	-8(%rbp), %rax	# tp, tmp160
	addq	$8, %rax	#, D.5407
	movl	(%rax), %eax	# *_22, D.5408
	cmpl	$-939524095, %eax	#, D.5408
	jl	.L41	#,
	.loc 1 303 0
	movq	-8(%rbp), %rax	# tp, tmp161
	addq	$8, %rax	#, D.5407
	movl	(%rax), %edx	# *_24, D.5408
	movq	-40(%rbp), %rax	# hmm, tmp162
	movq	(%rax), %rax	# hmm_7(D)->state, D.5409
	movl	(%rax), %eax	# _26->score, D.5408
	movl	%edx, %esi	# D.5408,
	movl	%eax, %edi	# D.5408,
	call	NO_UFLOW_ADD	#
	movl	%eax, -24(%rbp)	# tmp163, s0
	.loc 1 305 0
	movl	-16(%rbp), %eax	# s2, tmp164
	cmpl	-20(%rbp), %eax	# s1, tmp164
	jge	.L42	#,
	.loc 1 306 0
	movl	-20(%rbp), %eax	# s1, tmp165
	cmpl	-24(%rbp), %eax	# s0, tmp165
	jl	.L43	#,
	.loc 1 307 0
	movl	-20(%rbp), %eax	# s1, tmp166
	movl	%eax, -16(%rbp)	# tmp166, s2
	.loc 1 308 0
	movq	-40(%rbp), %rax	# hmm, tmp167
	movq	(%rax), %rax	# hmm_7(D)->state, D.5409
	leaq	16(%rax), %rdx	#, D.5409
	movq	-40(%rbp), %rax	# hmm, tmp168
	movq	(%rax), %rax	# hmm_7(D)->state, D.5409
	addq	$8, %rax	#, D.5409
	movl	4(%rax), %eax	# _33->history, D.5408
	movl	%eax, 4(%rdx)	# D.5408, _31->history
	jmp	.L46	#
.L43:
	.loc 1 310 0
	movl	-24(%rbp), %eax	# s0, tmp169
	movl	%eax, -16(%rbp)	# tmp169, s2
	.loc 1 311 0
	movq	-40(%rbp), %rax	# hmm, tmp170
	movq	(%rax), %rax	# hmm_7(D)->state, D.5409
	leaq	16(%rax), %rdx	#, D.5409
	movq	-40(%rbp), %rax	# hmm, tmp171
	movq	(%rax), %rax	# hmm_7(D)->state, D.5409
	movl	4(%rax), %eax	# _38->history, D.5408
	movl	%eax, 4(%rdx)	# D.5408, _37->history
	jmp	.L46	#
.L42:
	.loc 1 313 0
	movl	-16(%rbp), %eax	# s2, tmp172
	cmpl	-24(%rbp), %eax	# s0, tmp172
	jge	.L46	#,
	.loc 1 314 0
	movl	-24(%rbp), %eax	# s0, tmp173
	movl	%eax, -16(%rbp)	# tmp173, s2
	.loc 1 315 0
	movq	-40(%rbp), %rax	# hmm, tmp174
	movq	(%rax), %rax	# hmm_7(D)->state, D.5409
	leaq	16(%rax), %rdx	#, D.5409
	movq	-40(%rbp), %rax	# hmm, tmp175
	movq	(%rax), %rax	# hmm_7(D)->state, D.5409
	movl	4(%rax), %eax	# _43->history, D.5408
	movl	%eax, 4(%rdx)	# D.5408, _42->history
	jmp	.L46	#
.L41:
	.loc 1 318 0
	movl	-16(%rbp), %eax	# s2, tmp176
	cmpl	-20(%rbp), %eax	# s1, tmp176
	jge	.L46	#,
	.loc 1 319 0
	movl	-20(%rbp), %eax	# s1, tmp177
	movl	%eax, -16(%rbp)	# tmp177, s2
	.loc 1 320 0
	movq	-40(%rbp), %rax	# hmm, tmp178
	movq	(%rax), %rax	# hmm_7(D)->state, D.5409
	leaq	16(%rax), %rdx	#, D.5409
	movq	-40(%rbp), %rax	# hmm, tmp179
	movq	(%rax), %rax	# hmm_7(D)->state, D.5409
	addq	$8, %rax	#, D.5409
	movl	4(%rax), %eax	# _49->history, D.5408
	movl	%eax, 4(%rdx)	# D.5408, _47->history
.L46:
	.loc 1 331 0
	movq	-48(%rbp), %rax	# senid, tmp180
	addq	$4, %rax	#, D.5410
	movzwl	(%rax), %eax	# *_52, D.5411
	movswq	%ax, %rax	# D.5411, D.5412
	leaq	0(,%rax,4), %rdx	#, D.5412
	movq	-56(%rbp), %rax	# senscr, tmp181
	addq	%rdx, %rax	# D.5412, D.5407
	movl	(%rax), %edx	# *_57, D.5408
	movl	-16(%rbp), %eax	# s2, tmp182
	movl	%edx, %esi	# D.5408,
	movl	%eax, %edi	# tmp182,
	call	NO_UFLOW_ADD	#
	movl	%eax, -16(%rbp)	# tmp183, s2
	.loc 1 333 0
	movq	-40(%rbp), %rax	# hmm, tmp184
	movq	(%rax), %rax	# hmm_7(D)->state, D.5409
	leaq	16(%rax), %rdx	#, D.5409
	movl	-16(%rbp), %eax	# s2, tmp185
	movl	%eax, (%rdx)	# tmp185, _61->score
	.loc 1 338 0
	movq	-8(%rbp), %rax	# tp, tmp186
	addq	$20, %rax	#, D.5407
	movl	(%rax), %edx	# *_62, D.5408
	movq	-40(%rbp), %rax	# hmm, tmp187
	movq	(%rax), %rax	# hmm_7(D)->state, D.5409
	addq	$8, %rax	#, D.5409
	movl	(%rax), %eax	# _65->score, D.5408
	movl	%edx, %esi	# D.5408,
	movl	%eax, %edi	# D.5408,
	call	NO_UFLOW_ADD	#
	movl	%eax, -20(%rbp)	# tmp188, s1
	.loc 1 339 0
	movq	-8(%rbp), %rax	# tp, tmp189
	addq	$4, %rax	#, D.5407
	movl	(%rax), %edx	# *_68, D.5408
	movq	-40(%rbp), %rax	# hmm, tmp190
	movq	(%rax), %rax	# hmm_7(D)->state, D.5409
	movl	(%rax), %eax	# _70->score, D.5408
	movl	%edx, %esi	# D.5408,
	movl	%eax, %edi	# D.5408,
	call	NO_UFLOW_ADD	#
	movl	%eax, -24(%rbp)	# tmp191, s0
	.loc 1 341 0
	movl	-20(%rbp), %eax	# s1, tmp192
	cmpl	-24(%rbp), %eax	# s0, tmp192
	jge	.L47	#,
	.loc 1 342 0
	movl	-24(%rbp), %eax	# s0, tmp193
	movl	%eax, -20(%rbp)	# tmp193, s1
	.loc 1 343 0
	movq	-40(%rbp), %rax	# hmm, tmp194
	movq	(%rax), %rax	# hmm_7(D)->state, D.5409
	leaq	8(%rax), %rdx	#, D.5409
	movq	-40(%rbp), %rax	# hmm, tmp195
	movq	(%rax), %rax	# hmm_7(D)->state, D.5409
	movl	4(%rax), %eax	# _76->history, D.5408
	movl	%eax, 4(%rdx)	# D.5408, _75->history
.L47:
	.loc 1 353 0
	movq	-48(%rbp), %rax	# senid, tmp196
	addq	$2, %rax	#, D.5410
	movzwl	(%rax), %eax	# *_78, D.5411
	movswq	%ax, %rax	# D.5411, D.5412
	leaq	0(,%rax,4), %rdx	#, D.5412
	movq	-56(%rbp), %rax	# senscr, tmp197
	addq	%rdx, %rax	# D.5412, D.5407
	movl	(%rax), %edx	# *_82, D.5408
	movl	-20(%rbp), %eax	# s1, tmp198
	movl	%edx, %esi	# D.5408,
	movl	%eax, %edi	# tmp198,
	call	NO_UFLOW_ADD	#
	movl	%eax, -20(%rbp)	# tmp199, s1
	.loc 1 354 0
	movq	-40(%rbp), %rax	# hmm, tmp200
	movq	(%rax), %rax	# hmm_7(D)->state, D.5409
	leaq	8(%rax), %rdx	#, D.5409
	movl	-20(%rbp), %eax	# s1, tmp201
	movl	%eax, (%rdx)	# tmp201, _86->score
	.loc 1 356 0
	movl	-16(%rbp), %eax	# s2, tmp203
	cmpl	%eax, -20(%rbp)	# tmp203, s1
	cmovge	-20(%rbp), %eax	# s1,, tmp202
	movl	%eax, -12(%rbp)	# tmp202, best
	.loc 1 367 0
	movq	-8(%rbp), %rax	# tp, tmp204
	addq	$44, %rax	#, D.5407
	movl	(%rax), %edx	# *_88, D.5408
	movl	-16(%rbp), %eax	# s2, tmp205
	movl	%edx, %esi	# D.5408,
	movl	%eax, %edi	# tmp205,
	call	NO_UFLOW_ADD	#
	movl	%eax, -16(%rbp)	# tmp206, s2
	.loc 1 369 0
	movq	-8(%rbp), %rax	# tp, tmp207
	addq	$28, %rax	#, D.5407
	movl	(%rax), %eax	# *_91, D.5408
	cmpl	$-939524095, %eax	#, D.5408
	jl	.L48	#,
	.loc 1 371 0
	movq	-8(%rbp), %rax	# tp, tmp208
	addq	$28, %rax	#, D.5407
	movl	(%rax), %edx	# *_93, D.5408
	movl	-20(%rbp), %eax	# s1, tmp209
	movl	%edx, %esi	# D.5408,
	movl	%eax, %edi	# tmp209,
	call	NO_UFLOW_ADD	#
	movl	%eax, -20(%rbp)	# tmp210, s1
	.loc 1 373 0
	movl	-16(%rbp), %eax	# s2, tmp211
	cmpl	-20(%rbp), %eax	# s1, tmp211
	jge	.L49	#,
	.loc 1 374 0
	movq	-40(%rbp), %rax	# hmm, tmp212
	movl	-20(%rbp), %edx	# s1, tmp213
	movl	%edx, 16(%rax)	# tmp213, hmm_7(D)->out.score
	.loc 1 375 0
	movq	-40(%rbp), %rax	# hmm, tmp214
	movq	(%rax), %rax	# hmm_7(D)->state, D.5409
	addq	$8, %rax	#, D.5409
	movl	4(%rax), %edx	# _97->history, D.5408
	movq	-40(%rbp), %rax	# hmm, tmp215
	movl	%edx, 20(%rax)	# D.5408, hmm_7(D)->out.history
	jmp	.L51	#
.L49:
	.loc 1 377 0
	movq	-40(%rbp), %rax	# hmm, tmp216
	movl	-16(%rbp), %edx	# s2, tmp217
	movl	%edx, 16(%rax)	# tmp217, hmm_7(D)->out.score
	.loc 1 378 0
	movq	-40(%rbp), %rax	# hmm, tmp218
	movq	(%rax), %rax	# hmm_7(D)->state, D.5409
	addq	$16, %rax	#, D.5409
	movl	4(%rax), %edx	# _100->history, D.5408
	movq	-40(%rbp), %rax	# hmm, tmp219
	movl	%edx, 20(%rax)	# D.5408, hmm_7(D)->out.history
	jmp	.L51	#
.L48:
	.loc 1 381 0
	movq	-40(%rbp), %rax	# hmm, tmp220
	movl	-16(%rbp), %edx	# s2, tmp221
	movl	%edx, 16(%rax)	# tmp221, hmm_7(D)->out.score
	.loc 1 382 0
	movq	-40(%rbp), %rax	# hmm, tmp222
	movq	(%rax), %rax	# hmm_7(D)->state, D.5409
	addq	$16, %rax	#, D.5409
	movl	4(%rax), %edx	# _103->history, D.5408
	movq	-40(%rbp), %rax	# hmm, tmp223
	movl	%edx, 20(%rax)	# D.5408, hmm_7(D)->out.history
.L51:
	.loc 1 387 0
	movq	-8(%rbp), %rax	# tp, tmp224
	movl	(%rax), %edx	# *tp_9, D.5408
	movq	-40(%rbp), %rax	# hmm, tmp225
	movq	(%rax), %rax	# hmm_7(D)->state, D.5409
	movl	(%rax), %eax	# _106->score, D.5408
	movl	%edx, %esi	# D.5408,
	movl	%eax, %edi	# D.5408,
	call	NO_UFLOW_ADD	#
	movl	%eax, -24(%rbp)	# tmp226, s0
	.loc 1 389 0
	movq	-40(%rbp), %rax	# hmm, tmp227
	movl	8(%rax), %eax	# hmm_7(D)->in.score, D.5408
	cmpl	-24(%rbp), %eax	# s0, D.5408
	jle	.L52	#,
	.loc 1 390 0
	movq	-40(%rbp), %rax	# hmm, tmp228
	movl	8(%rax), %eax	# hmm_7(D)->in.score, tmp229
	movl	%eax, -24(%rbp)	# tmp229, s0
	.loc 1 391 0
	movq	-40(%rbp), %rax	# hmm, tmp230
	movq	(%rax), %rax	# hmm_7(D)->state, D.5409
	movq	-40(%rbp), %rdx	# hmm, tmp231
	movl	12(%rdx), %edx	# hmm_7(D)->in.history, D.5408
	movl	%edx, 4(%rax)	# D.5408, _111->history
.L52:
	.loc 1 401 0
	movq	-48(%rbp), %rax	# senid, tmp232
	movzwl	(%rax), %eax	# *senid_51(D), D.5411
	movswq	%ax, %rax	# D.5411, D.5412
	leaq	0(,%rax,4), %rdx	#, D.5412
	movq	-56(%rbp), %rax	# senscr, tmp233
	addq	%rdx, %rax	# D.5412, D.5407
	movl	(%rax), %edx	# *_116, D.5408
	movl	-24(%rbp), %eax	# s0, tmp234
	movl	%edx, %esi	# D.5408,
	movl	%eax, %edi	# tmp234,
	call	NO_UFLOW_ADD	#
	movl	%eax, -24(%rbp)	# tmp235, s0
	.loc 1 403 0
	movq	-40(%rbp), %rax	# hmm, tmp236
	movq	(%rax), %rax	# hmm_7(D)->state, D.5409
	movl	-24(%rbp), %edx	# s0, tmp237
	movl	%edx, (%rax)	# tmp237, _119->score
	.loc 1 405 0
	movl	-12(%rbp), %eax	# best, tmp238
	cmpl	-24(%rbp), %eax	# s0, tmp238
	jge	.L53	#,
	.loc 1 406 0
	movl	-24(%rbp), %eax	# s0, tmp239
	movl	%eax, -12(%rbp)	# tmp239, best
.L53:
	.loc 1 408 0
	movq	-40(%rbp), %rax	# hmm, tmp240
	movl	$-939524096, 8(%rax)	#, hmm_7(D)->in.score
	.loc 1 409 0
	movq	-40(%rbp), %rax	# hmm, tmp241
	movl	-12(%rbp), %edx	# best, tmp242
	movl	%edx, 32(%rax)	# tmp242, hmm_7(D)->bestscore
	.loc 1 411 0
	movl	-12(%rbp), %eax	# best, D.5413
	.loc 1 412 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	hmm_vit_eval_3st, .-hmm_vit_eval_3st
	.section	.rodata
.LC6:
	.string	"FATAL_ERROR"
.LC7:
	.string	"hmm.c"
.LC8:
	.string	"#States= %d unsupported\n"
	.text
	.globl	hmm_dump_vit_eval
	.type	hmm_dump_vit_eval, @function
hmm_dump_vit_eval:
.LFB7:
	.loc 1 416 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -24(%rbp)	# hmm, hmm
	movl	%esi, -28(%rbp)	# n_state, n_state
	movq	%rdx, -40(%rbp)	# senid, senid
	movq	%rcx, -48(%rbp)	# senscr, senscr
	movq	%r8, -56(%rbp)	# fp, fp
	.loc 1 417 0
	movl	$0, -4(%rbp)	#, bs
	.loc 1 419 0
	cmpq	$0, -56(%rbp)	#, fp
	je	.L56	#,
	.loc 1 420 0
	movq	-56(%rbp), %rdi	# fp, tmp61
	movq	-48(%rbp), %rcx	# senscr, tmp62
	movq	-40(%rbp), %rdx	# senid, tmp63
	movl	-28(%rbp), %esi	# n_state, tmp64
	movq	-24(%rbp), %rax	# hmm, tmp65
	movq	%rdi, %r8	# tmp61,
	movq	%rax, %rdi	# tmp65,
	call	hmm_dump	#
.L56:
	.loc 1 422 0
	cmpl	$5, -28(%rbp)	#, n_state
	jne	.L57	#,
	.loc 1 423 0
	movq	-48(%rbp), %rdx	# senscr, tmp66
	movq	-40(%rbp), %rcx	# senid, tmp67
	movq	-24(%rbp), %rax	# hmm, tmp68
	movq	%rcx, %rsi	# tmp67,
	movq	%rax, %rdi	# tmp68,
	call	hmm_vit_eval_5st	#
	movl	%eax, -4(%rbp)	# tmp69, bs
	jmp	.L58	#
.L57:
	.loc 1 424 0
	cmpl	$3, -28(%rbp)	#, n_state
	jne	.L59	#,
	.loc 1 425 0
	movq	-48(%rbp), %rdx	# senscr, tmp70
	movq	-40(%rbp), %rcx	# senid, tmp71
	movq	-24(%rbp), %rax	# hmm, tmp72
	movq	%rcx, %rsi	# tmp71,
	movq	%rax, %rdi	# tmp72,
	call	hmm_vit_eval_3st	#
	movl	%eax, -4(%rbp)	# tmp73, bs
	jmp	.L58	#
.L59:
	.loc 1 427 0
	movl	$.LC6, %edx	#,
	movl	$427, %esi	#,
	movl	$.LC7, %edi	#,
	call	_E__pr_header	#
	movl	-28(%rbp), %eax	# n_state, tmp74
	movl	%eax, %esi	# tmp74,
	movl	$.LC8, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L58:
	.loc 1 429 0
	cmpq	$0, -56(%rbp)	#, fp
	je	.L60	#,
	.loc 1 430 0
	movq	-56(%rbp), %rdi	# fp, tmp75
	movq	-48(%rbp), %rcx	# senscr, tmp76
	movq	-40(%rbp), %rdx	# senid, tmp77
	movl	-28(%rbp), %esi	# n_state, tmp78
	movq	-24(%rbp), %rax	# hmm, tmp79
	movq	%rdi, %r8	# tmp75,
	movq	%rax, %rdi	# tmp79,
	call	hmm_dump	#
.L60:
	.loc 1 432 0
	movl	-4(%rbp), %eax	# bs, D.5414
	.loc 1 433 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	hmm_dump_vit_eval, .-hmm_dump_vit_eval
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/include/stdio.h"
	.file 5 "/usr/include/libio.h"
	.file 6 "./libutil/prim_type.h"
	.file 7 "s3types.h"
	.file 8 "hmm.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x61d
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF69
	.byte	0x1
	.long	.LASF70
	.long	.LASF71
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
	.long	.LASF72
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
	.byte	0x40
	.long	0x5b
	.uleb128 0x2
	.long	.LASF53
	.byte	0x7
	.byte	0x7b
	.long	0x2b9
	.uleb128 0xd
	.byte	0x8
	.byte	0x8
	.byte	0x69
	.long	0x2f0
	.uleb128 0x8
	.long	.LASF54
	.byte	0x8
	.byte	0x6a
	.long	0x2ae
	.byte	0
	.uleb128 0x8
	.long	.LASF55
	.byte	0x8
	.byte	0x6b
	.long	0x2ae
	.byte	0x4
	.byte	0
	.uleb128 0x2
	.long	.LASF56
	.byte	0x8
	.byte	0x6c
	.long	0x2cf
	.uleb128 0xd
	.byte	0x28
	.byte	0x8
	.byte	0x6e
	.long	0x33e
	.uleb128 0x8
	.long	.LASF57
	.byte	0x8
	.byte	0x6f
	.long	0x33e
	.byte	0
	.uleb128 0xe
	.string	"in"
	.byte	0x8
	.byte	0x70
	.long	0x2f0
	.byte	0x8
	.uleb128 0xe
	.string	"out"
	.byte	0x8
	.byte	0x71
	.long	0x2f0
	.byte	0x10
	.uleb128 0xe
	.string	"tp"
	.byte	0x8
	.byte	0x72
	.long	0x344
	.byte	0x18
	.uleb128 0x8
	.long	.LASF58
	.byte	0x8
	.byte	0x73
	.long	0x2ae
	.byte	0x20
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x2f0
	.uleb128 0x6
	.byte	0x8
	.long	0x34a
	.uleb128 0x6
	.byte	0x8
	.long	0x2ae
	.uleb128 0x2
	.long	.LASF59
	.byte	0x8
	.byte	0x74
	.long	0x2fb
	.uleb128 0xf
	.long	.LASF63
	.byte	0x1
	.byte	0x4f
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x3cb
	.uleb128 0x10
	.string	"hmm"
	.byte	0x1
	.byte	0x4f
	.long	0x3cb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x11
	.long	.LASF60
	.byte	0x1
	.byte	0x4f
	.long	0x2ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x11
	.long	.LASF61
	.byte	0x1
	.byte	0x4f
	.long	0x3d1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x11
	.long	.LASF62
	.byte	0x1
	.byte	0x4f
	.long	0x34a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x10
	.string	"fp"
	.byte	0x1
	.byte	0x4f
	.long	0x3d7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x12
	.string	"i"
	.byte	0x1
	.byte	0x51
	.long	0x2ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x350
	.uleb128 0x6
	.byte	0x8
	.long	0x2c4
	.uleb128 0x6
	.byte	0x8
	.long	0x9c
	.uleb128 0x13
	.long	.LASF64
	.byte	0x1
	.byte	0x6f
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x421
	.uleb128 0x10
	.string	"h"
	.byte	0x1
	.byte	0x6f
	.long	0x3cb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x11
	.long	.LASF60
	.byte	0x1
	.byte	0x6f
	.long	0x2ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x12
	.string	"i"
	.byte	0x1
	.byte	0x71
	.long	0x2ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x14
	.long	.LASF73
	.byte	0x1
	.byte	0x85
	.long	0x2ae
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x467
	.uleb128 0x10
	.string	"a"
	.byte	0x1
	.byte	0x85
	.long	0x2ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x10
	.string	"b"
	.byte	0x1
	.byte	0x85
	.long	0x2ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x12
	.string	"c"
	.byte	0x1
	.byte	0x87
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x15
	.long	.LASF66
	.byte	0x1
	.byte	0x93
	.long	0x2ae
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x510
	.uleb128 0x10
	.string	"hmm"
	.byte	0x1
	.byte	0x93
	.long	0x3cb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x11
	.long	.LASF61
	.byte	0x1
	.byte	0x93
	.long	0x3d1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x11
	.long	.LASF62
	.byte	0x1
	.byte	0x93
	.long	0x34a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x12
	.string	"s0"
	.byte	0x1
	.byte	0x95
	.long	0x2ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x12
	.string	"s1"
	.byte	0x1
	.byte	0x95
	.long	0x2ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x12
	.string	"s2"
	.byte	0x1
	.byte	0x95
	.long	0x2ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x12
	.string	"s3"
	.byte	0x1
	.byte	0x95
	.long	0x2ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x12
	.string	"s4"
	.byte	0x1
	.byte	0x95
	.long	0x2ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x16
	.long	.LASF65
	.byte	0x1
	.byte	0x95
	.long	0x2ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x12
	.string	"tp"
	.byte	0x1
	.byte	0x95
	.long	0x34a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x17
	.long	.LASF67
	.byte	0x1
	.value	0x11c
	.long	0x2ae
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x5a8
	.uleb128 0x18
	.string	"hmm"
	.byte	0x1
	.value	0x11c
	.long	0x3cb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x19
	.long	.LASF61
	.byte	0x1
	.value	0x11c
	.long	0x3d1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x19
	.long	.LASF62
	.byte	0x1
	.value	0x11c
	.long	0x34a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1a
	.string	"s0"
	.byte	0x1
	.value	0x11e
	.long	0x2ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1a
	.string	"s1"
	.byte	0x1
	.value	0x11e
	.long	0x2ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1a
	.string	"s2"
	.byte	0x1
	.value	0x11e
	.long	0x2ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1b
	.long	.LASF65
	.byte	0x1
	.value	0x11e
	.long	0x2ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1a
	.string	"tp"
	.byte	0x1
	.value	0x11e
	.long	0x34a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1c
	.long	.LASF68
	.byte	0x1
	.value	0x19f
	.long	0x2ae
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x18
	.string	"hmm"
	.byte	0x1
	.value	0x19f
	.long	0x3cb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x19
	.long	.LASF60
	.byte	0x1
	.value	0x19f
	.long	0x2ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x19
	.long	.LASF61
	.byte	0x1
	.value	0x19f
	.long	0x3d1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x19
	.long	.LASF62
	.byte	0x1
	.value	0x19f
	.long	0x34a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x18
	.string	"fp"
	.byte	0x1
	.value	0x19f
	.long	0x3d7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1a
	.string	"bs"
	.byte	0x1
	.value	0x1a1
	.long	0x2ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
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
	.uleb128 0x1b
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
.LASF62:
	.string	"senscr"
.LASF50:
	.string	"double"
.LASF63:
	.string	"hmm_dump"
.LASF42:
	.string	"_IO_FILE"
.LASF57:
	.string	"state"
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
.LASF18:
	.string	"_IO_write_ptr"
.LASF13:
	.string	"_flags"
.LASF55:
	.string	"history"
.LASF20:
	.string	"_IO_buf_base"
.LASF25:
	.string	"_markers"
.LASF15:
	.string	"_IO_read_end"
.LASF52:
	.string	"int16"
.LASF56:
	.string	"hmm_state_t"
.LASF49:
	.string	"float"
.LASF47:
	.string	"long long int"
.LASF33:
	.string	"_lock"
.LASF6:
	.string	"long int"
.LASF30:
	.string	"_cur_column"
.LASF46:
	.string	"_pos"
.LASF68:
	.string	"hmm_dump_vit_eval"
.LASF29:
	.string	"_old_offset"
.LASF1:
	.string	"unsigned char"
.LASF53:
	.string	"s3senid_t"
.LASF69:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF4:
	.string	"signed char"
.LASF54:
	.string	"score"
.LASF48:
	.string	"long long unsigned int"
.LASF65:
	.string	"best"
.LASF3:
	.string	"unsigned int"
.LASF43:
	.string	"_IO_marker"
.LASF32:
	.string	"_shortbuf"
.LASF0:
	.string	"long unsigned int"
.LASF60:
	.string	"n_state"
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
.LASF64:
	.string	"hmm_clear"
.LASF44:
	.string	"_next"
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
.LASF66:
	.string	"hmm_vit_eval_5st"
.LASF71:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/482.sphinx3/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF73:
	.string	"NO_UFLOW_ADD"
.LASF2:
	.string	"short unsigned int"
.LASF61:
	.string	"senid"
.LASF51:
	.string	"int32"
.LASF19:
	.string	"_IO_write_end"
.LASF9:
	.string	"__off64_t"
.LASF27:
	.string	"_fileno"
.LASF26:
	.string	"_chain"
.LASF8:
	.string	"__off_t"
.LASF70:
	.string	"hmm.c"
.LASF23:
	.string	"_IO_backup_base"
.LASF28:
	.string	"_flags2"
.LASF40:
	.string	"_mode"
.LASF16:
	.string	"_IO_read_base"
.LASF31:
	.string	"_vtable_offset"
.LASF22:
	.string	"_IO_save_base"
.LASF58:
	.string	"bestscore"
.LASF12:
	.string	"FILE"
.LASF45:
	.string	"_sbuf"
.LASF67:
	.string	"hmm_vit_eval_3st"
.LASF59:
	.string	"hmm_t"
.LASF72:
	.string	"_IO_lock_t"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
