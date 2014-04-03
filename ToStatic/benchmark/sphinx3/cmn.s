	.file	"cmn.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I . -I . -I libutil -imultiarch x86_64-linux-gnu
# -D SPEC_CPU -D NDEBUG -D SPEC_CPU -D HAVE_CONFIG_H -D SPEC_CPU_LP64 cmn.c
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
	.local	cmn_mean
	.comm	cmn_mean,8,8
	.local	cmn_var
	.comm	cmn_var,8,8
	.section	.rodata
.LC0:
	.string	"cmn.c"
	.text
	.globl	cmn
	.type	cmn, @function
cmn:
.LFB2:
	.file 1 "cmn.c"
	.loc 1 69 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$72, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)	# mfc, mfc
	movl	%esi, -60(%rbp)	# varnorm, varnorm
	movl	%edx, -64(%rbp)	# n_frame, n_frame
	movl	%ecx, -68(%rbp)	# veclen, veclen
	.loc 1 78 0
	cmpl	$0, -64(%rbp)	#, n_frame
	jle	.L2	#,
	.loc 1 78 0 is_stmt 0 discriminator 1
	cmpl	$0, -68(%rbp)	#, veclen
	jg	.L3	#,
.L2:
	.loc 1 79 0 is_stmt 1
	jmp	.L1	#
.L3:
	.loc 1 82 0
	movq	cmn_mean(%rip), %rax	# cmn_mean, cmn_mean.0
	testq	%rax, %rax	# cmn_mean.0
	jne	.L5	#,
	.loc 1 83 0
	movl	-68(%rbp), %eax	# veclen, tmp176
	cltq
	movl	$83, %ecx	#,
	movl	$.LC0, %edx	#,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# D.5090,
	call	__ckd_calloc__	#
	movq	%rax, cmn_mean(%rip)	# cmn_mean.1, cmn_mean
.L5:
	.loc 1 86 0
	movl	$0, -36(%rbp)	#, i
	jmp	.L6	#
.L7:
	.loc 1 87 0 discriminator 2
	movq	cmn_mean(%rip), %rax	# cmn_mean, cmn_mean.2
	movl	-36(%rbp), %edx	# i, tmp177
	movslq	%edx, %rdx	# tmp177, D.5090
	salq	$2, %rdx	#, D.5090
	addq	%rax, %rdx	# cmn_mean.2, D.5091
	movl	.LC1(%rip), %eax	#, tmp178
	movl	%eax, (%rdx)	# tmp178, *_22
	.loc 1 86 0 discriminator 2
	addl	$1, -36(%rbp)	#, i
.L6:
	.loc 1 86 0 is_stmt 0 discriminator 1
	movl	-36(%rbp), %eax	# i, tmp179
	cmpl	-68(%rbp), %eax	# veclen, tmp179
	jl	.L7	#,
	.loc 1 88 0 is_stmt 1
	movl	$0, -32(%rbp)	#, f
	jmp	.L8	#
.L11:
	.loc 1 89 0
	movl	-32(%rbp), %eax	# f, tmp180
	cltq
	leaq	0(,%rax,8), %rdx	#, D.5090
	movq	-56(%rbp), %rax	# mfc, tmp181
	addq	%rdx, %rax	# D.5090, D.5092
	movq	(%rax), %rax	# *_28, tmp182
	movq	%rax, -24(%rbp)	# tmp182, mfcp
	.loc 1 90 0
	movl	$0, -36(%rbp)	#, i
	jmp	.L9	#
.L10:
	.loc 1 91 0 discriminator 2
	movq	cmn_mean(%rip), %rax	# cmn_mean, cmn_mean.3
	movl	-36(%rbp), %edx	# i, tmp183
	movslq	%edx, %rdx	# tmp183, D.5090
	salq	$2, %rdx	#, D.5090
	addq	%rdx, %rax	# D.5090, D.5091
	movq	cmn_mean(%rip), %rdx	# cmn_mean, cmn_mean.4
	movl	-36(%rbp), %ecx	# i, tmp184
	movslq	%ecx, %rcx	# tmp184, D.5090
	salq	$2, %rcx	#, D.5090
	addq	%rcx, %rdx	# D.5090, D.5091
	movss	(%rdx), %xmm1	# *_38, D.5093
	movl	-36(%rbp), %edx	# i, tmp185
	movslq	%edx, %rdx	# tmp185, D.5090
	leaq	0(,%rdx,4), %rcx	#, D.5090
	movq	-24(%rbp), %rdx	# mfcp, tmp186
	addq	%rcx, %rdx	# D.5090, D.5091
	movss	(%rdx), %xmm0	# *_42, D.5093
	addss	%xmm1, %xmm0	# D.5093, D.5093
	movss	%xmm0, (%rax)	# D.5093, *_34
	.loc 1 90 0 discriminator 2
	addl	$1, -36(%rbp)	#, i
.L9:
	.loc 1 90 0 is_stmt 0 discriminator 1
	movl	-36(%rbp), %eax	# i, tmp187
	cmpl	-68(%rbp), %eax	# veclen, tmp187
	jl	.L10	#,
	.loc 1 88 0 is_stmt 1
	addl	$1, -32(%rbp)	#, f
.L8:
	.loc 1 88 0 is_stmt 0 discriminator 1
	movl	-32(%rbp), %eax	# f, tmp188
	cmpl	-64(%rbp), %eax	# n_frame, tmp188
	jl	.L11	#,
	.loc 1 93 0 is_stmt 1
	movl	$0, -36(%rbp)	#, i
	jmp	.L12	#
.L13:
	.loc 1 94 0 discriminator 2
	movq	cmn_mean(%rip), %rax	# cmn_mean, cmn_mean.5
	movl	-36(%rbp), %edx	# i, tmp189
	movslq	%edx, %rdx	# tmp189, D.5090
	salq	$2, %rdx	#, D.5090
	addq	%rdx, %rax	# D.5090, D.5091
	movq	cmn_mean(%rip), %rdx	# cmn_mean, cmn_mean.6
	movl	-36(%rbp), %ecx	# i, tmp190
	movslq	%ecx, %rcx	# tmp190, D.5090
	salq	$2, %rcx	#, D.5090
	addq	%rcx, %rdx	# D.5090, D.5091
	movss	(%rdx), %xmm1	# *_55, D.5093
	cvtsi2ss	-64(%rbp), %xmm0	# n_frame, D.5093
	divss	%xmm0, %xmm1	# D.5093, D.5093
	movaps	%xmm1, %xmm0	# D.5093, D.5093
	movss	%xmm0, (%rax)	# D.5093, *_51
	.loc 1 93 0 discriminator 2
	addl	$1, -36(%rbp)	#, i
.L12:
	.loc 1 93 0 is_stmt 0 discriminator 1
	movl	-36(%rbp), %eax	# i, tmp191
	cmpl	-68(%rbp), %eax	# veclen, tmp191
	jl	.L13	#,
	.loc 1 96 0 is_stmt 1
	cmpl	$0, -60(%rbp)	#, varnorm
	jne	.L14	#,
	.loc 1 98 0
	movl	$0, -32(%rbp)	#, f
	jmp	.L15	#
.L18:
	.loc 1 99 0
	movl	-32(%rbp), %eax	# f, tmp192
	cltq
	leaq	0(,%rax,8), %rdx	#, D.5090
	movq	-56(%rbp), %rax	# mfc, tmp193
	addq	%rdx, %rax	# D.5090, D.5092
	movq	(%rax), %rax	# *_64, tmp194
	movq	%rax, -24(%rbp)	# tmp194, mfcp
	.loc 1 100 0
	movl	$0, -36(%rbp)	#, i
	jmp	.L16	#
.L17:
	.loc 1 101 0 discriminator 2
	movl	-36(%rbp), %eax	# i, tmp195
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5090
	movq	-24(%rbp), %rax	# mfcp, tmp196
	addq	%rdx, %rax	# D.5090, D.5091
	movl	-36(%rbp), %edx	# i, tmp197
	movslq	%edx, %rdx	# tmp197, D.5090
	leaq	0(,%rdx,4), %rcx	#, D.5090
	movq	-24(%rbp), %rdx	# mfcp, tmp198
	addq	%rcx, %rdx	# D.5090, D.5091
	movss	(%rdx), %xmm0	# *_72, D.5093
	movq	cmn_mean(%rip), %rdx	# cmn_mean, cmn_mean.7
	movl	-36(%rbp), %ecx	# i, tmp199
	movslq	%ecx, %rcx	# tmp199, D.5090
	salq	$2, %rcx	#, D.5090
	addq	%rcx, %rdx	# D.5090, D.5091
	movss	(%rdx), %xmm1	# *_77, D.5093
	subss	%xmm1, %xmm0	# D.5093, D.5093
	movss	%xmm0, (%rax)	# D.5093, *_69
	.loc 1 100 0 discriminator 2
	addl	$1, -36(%rbp)	#, i
.L16:
	.loc 1 100 0 is_stmt 0 discriminator 1
	movl	-36(%rbp), %eax	# i, tmp200
	cmpl	-68(%rbp), %eax	# veclen, tmp200
	jl	.L17	#,
	.loc 1 98 0 is_stmt 1
	addl	$1, -32(%rbp)	#, f
.L15:
	.loc 1 98 0 is_stmt 0 discriminator 1
	movl	-32(%rbp), %eax	# f, tmp201
	cmpl	-64(%rbp), %eax	# n_frame, tmp201
	jl	.L18	#,
	jmp	.L1	#
.L14:
	.loc 1 105 0 is_stmt 1
	movq	cmn_var(%rip), %rax	# cmn_var, cmn_var.8
	testq	%rax, %rax	# cmn_var.8
	jne	.L19	#,
	.loc 1 106 0
	movl	-68(%rbp), %eax	# veclen, tmp202
	cltq
	movl	$106, %ecx	#,
	movl	$.LC0, %edx	#,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# D.5090,
	call	__ckd_calloc__	#
	movq	%rax, cmn_var(%rip)	# cmn_var.9, cmn_var
.L19:
	.loc 1 108 0
	movl	$0, -36(%rbp)	#, i
	jmp	.L20	#
.L21:
	.loc 1 109 0 discriminator 2
	movq	cmn_var(%rip), %rax	# cmn_var, cmn_var.10
	movl	-36(%rbp), %edx	# i, tmp203
	movslq	%edx, %rdx	# tmp203, D.5090
	salq	$2, %rdx	#, D.5090
	addq	%rax, %rdx	# cmn_var.10, D.5091
	movl	.LC1(%rip), %eax	#, tmp204
	movl	%eax, (%rdx)	# tmp204, *_89
	.loc 1 108 0 discriminator 2
	addl	$1, -36(%rbp)	#, i
.L20:
	.loc 1 108 0 is_stmt 0 discriminator 1
	movl	-36(%rbp), %eax	# i, tmp205
	cmpl	-68(%rbp), %eax	# veclen, tmp205
	jl	.L21	#,
	.loc 1 111 0 is_stmt 1
	movl	$0, -32(%rbp)	#, f
	jmp	.L22	#
.L25:
	.loc 1 112 0
	movl	-32(%rbp), %eax	# f, tmp206
	cltq
	leaq	0(,%rax,8), %rdx	#, D.5090
	movq	-56(%rbp), %rax	# mfc, tmp207
	addq	%rdx, %rax	# D.5090, D.5092
	movq	(%rax), %rax	# *_94, tmp208
	movq	%rax, -24(%rbp)	# tmp208, mfcp
	.loc 1 114 0
	movl	$0, -36(%rbp)	#, i
	jmp	.L23	#
.L24:
	.loc 1 115 0 discriminator 2
	movl	-36(%rbp), %eax	# i, tmp209
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5090
	movq	-24(%rbp), %rax	# mfcp, tmp210
	addq	%rdx, %rax	# D.5090, D.5091
	movss	(%rax), %xmm0	# *_99, D.5093
	movq	cmn_mean(%rip), %rax	# cmn_mean, cmn_mean.11
	movl	-36(%rbp), %edx	# i, tmp211
	movslq	%edx, %rdx	# tmp211, D.5090
	salq	$2, %rdx	#, D.5090
	addq	%rdx, %rax	# D.5090, D.5091
	movss	(%rax), %xmm1	# *_104, D.5093
	subss	%xmm1, %xmm0	# D.5093, tmp212
	movss	%xmm0, -28(%rbp)	# tmp212, t
	.loc 1 116 0 discriminator 2
	movq	cmn_var(%rip), %rax	# cmn_var, cmn_var.12
	movl	-36(%rbp), %edx	# i, tmp213
	movslq	%edx, %rdx	# tmp213, D.5090
	salq	$2, %rdx	#, D.5090
	addq	%rdx, %rax	# D.5090, D.5091
	movq	cmn_var(%rip), %rdx	# cmn_var, cmn_var.13
	movl	-36(%rbp), %ecx	# i, tmp214
	movslq	%ecx, %rcx	# tmp214, D.5090
	salq	$2, %rcx	#, D.5090
	addq	%rcx, %rdx	# D.5090, D.5091
	movss	(%rdx), %xmm1	# *_114, D.5093
	movss	-28(%rbp), %xmm0	# t, tmp215
	mulss	-28(%rbp), %xmm0	# t, D.5093
	addss	%xmm1, %xmm0	# D.5093, D.5093
	movss	%xmm0, (%rax)	# D.5093, *_110
	.loc 1 114 0 discriminator 2
	addl	$1, -36(%rbp)	#, i
.L23:
	.loc 1 114 0 is_stmt 0 discriminator 1
	movl	-36(%rbp), %eax	# i, tmp216
	cmpl	-68(%rbp), %eax	# veclen, tmp216
	jl	.L24	#,
	.loc 1 111 0 is_stmt 1
	addl	$1, -32(%rbp)	#, f
.L22:
	.loc 1 111 0 is_stmt 0 discriminator 1
	movl	-32(%rbp), %eax	# f, tmp217
	cmpl	-64(%rbp), %eax	# n_frame, tmp217
	jl	.L25	#,
	.loc 1 119 0 is_stmt 1
	movl	$0, -36(%rbp)	#, i
	jmp	.L26	#
.L27:
	.loc 1 120 0 discriminator 2
	movq	cmn_var(%rip), %rax	# cmn_var, cmn_var.14
	movl	-36(%rbp), %edx	# i, tmp218
	movslq	%edx, %rdx	# tmp218, D.5090
	salq	$2, %rdx	#, D.5090
	leaq	(%rax,%rdx), %rbx	#, D.5091
	cvtsi2sd	-64(%rbp), %xmm0	# n_frame, D.5094
	movq	cmn_var(%rip), %rax	# cmn_var, cmn_var.15
	movl	-36(%rbp), %edx	# i, tmp219
	movslq	%edx, %rdx	# tmp219, D.5090
	salq	$2, %rdx	#, D.5090
	addq	%rdx, %rax	# D.5090, D.5091
	movss	(%rax), %xmm1	# *_129, D.5093
	unpcklps	%xmm1, %xmm1	# D.5093, D.5093
	cvtps2pd	%xmm1, %xmm1	# D.5093, D.5094
	divsd	%xmm1, %xmm0	# D.5094, D.5094
	call	sqrt	#
	unpcklpd	%xmm0, %xmm0	# D.5094
	cvtpd2ps	%xmm0, %xmm0	# D.5094, D.5093
	movss	%xmm0, (%rbx)	# D.5093, *_124
	.loc 1 119 0 discriminator 2
	addl	$1, -36(%rbp)	#, i
.L26:
	.loc 1 119 0 is_stmt 0 discriminator 1
	movl	-36(%rbp), %eax	# i, tmp220
	cmpl	-68(%rbp), %eax	# veclen, tmp220
	jl	.L27	#,
	.loc 1 122 0 is_stmt 1
	movl	$0, -32(%rbp)	#, f
	jmp	.L28	#
.L31:
	.loc 1 123 0
	movl	-32(%rbp), %eax	# f, tmp221
	cltq
	leaq	0(,%rax,8), %rdx	#, D.5090
	movq	-56(%rbp), %rax	# mfc, tmp222
	addq	%rdx, %rax	# D.5090, D.5092
	movq	(%rax), %rax	# *_139, tmp223
	movq	%rax, -24(%rbp)	# tmp223, mfcp
	.loc 1 124 0
	movl	$0, -36(%rbp)	#, i
	jmp	.L29	#
.L30:
	.loc 1 125 0 discriminator 2
	movl	-36(%rbp), %eax	# i, tmp224
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5090
	movq	-24(%rbp), %rax	# mfcp, tmp225
	addq	%rdx, %rax	# D.5090, D.5091
	movl	-36(%rbp), %edx	# i, tmp226
	movslq	%edx, %rdx	# tmp226, D.5090
	leaq	0(,%rdx,4), %rcx	#, D.5090
	movq	-24(%rbp), %rdx	# mfcp, tmp227
	addq	%rcx, %rdx	# D.5090, D.5091
	movss	(%rdx), %xmm0	# *_147, D.5093
	movq	cmn_mean(%rip), %rdx	# cmn_mean, cmn_mean.16
	movl	-36(%rbp), %ecx	# i, tmp228
	movslq	%ecx, %rcx	# tmp228, D.5090
	salq	$2, %rcx	#, D.5090
	addq	%rcx, %rdx	# D.5090, D.5091
	movss	(%rdx), %xmm1	# *_152, D.5093
	subss	%xmm1, %xmm0	# D.5093, D.5093
	movq	cmn_var(%rip), %rdx	# cmn_var, cmn_var.17
	movl	-36(%rbp), %ecx	# i, tmp229
	movslq	%ecx, %rcx	# tmp229, D.5090
	salq	$2, %rcx	#, D.5090
	addq	%rcx, %rdx	# D.5090, D.5091
	movss	(%rdx), %xmm1	# *_158, D.5093
	mulss	%xmm1, %xmm0	# D.5093, D.5093
	movss	%xmm0, (%rax)	# D.5093, *_144
	.loc 1 124 0 discriminator 2
	addl	$1, -36(%rbp)	#, i
.L29:
	.loc 1 124 0 is_stmt 0 discriminator 1
	movl	-36(%rbp), %eax	# i, tmp230
	cmpl	-68(%rbp), %eax	# veclen, tmp230
	jl	.L30	#,
	.loc 1 122 0 is_stmt 1
	addl	$1, -32(%rbp)	#, f
.L28:
	.loc 1 122 0 is_stmt 0 discriminator 1
	movl	-32(%rbp), %eax	# f, tmp231
	cmpl	-64(%rbp), %eax	# n_frame, tmp231
	jl	.L31	#,
.L1:
	.loc 1 128 0 is_stmt 1
	addq	$72, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	cmn, .-cmn
	.globl	cmn_free
	.type	cmn_free, @function
cmn_free:
.LFB3:
	.loc 1 134 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 135 0
	movq	cmn_var(%rip), %rax	# cmn_var, cmn_var.18
	movq	%rax, %rdi	# cmn_var.18,
	call	ckd_free	#
	.loc 1 136 0
	movq	cmn_mean(%rip), %rax	# cmn_mean, cmn_mean.19
	movq	%rax, %rdi	# cmn_mean.19,
	call	ckd_free	#
	.loc 1 137 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	cmn_free, .-cmn_free
	.section	.rodata
	.align 4
.LC1:
	.long	0
	.text
.Letext0:
	.file 2 "./libutil/prim_type.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x188
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF22
	.byte	0x1
	.long	.LASF23
	.long	.LASF24
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF0
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
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
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
	.long	.LASF13
	.byte	0x2
	.byte	0x3f
	.long	0x57
	.uleb128 0x4
	.long	.LASF14
	.byte	0x2
	.byte	0x45
	.long	0x81
	.uleb128 0x4
	.long	.LASF15
	.byte	0x2
	.byte	0x46
	.long	0x88
	.uleb128 0x5
	.string	"cmn"
	.byte	0x1
	.byte	0x44
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x13c
	.uleb128 0x6
	.string	"mfc"
	.byte	0x1
	.byte	0x44
	.long	0x13c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x7
	.long	.LASF16
	.byte	0x1
	.byte	0x44
	.long	0x8f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x7
	.long	.LASF17
	.byte	0x1
	.byte	0x44
	.long	0x8f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x7
	.long	.LASF18
	.byte	0x1
	.byte	0x44
	.long	0x8f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x8
	.long	.LASF19
	.byte	0x1
	.byte	0x48
	.long	0x142
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x9
	.string	"t"
	.byte	0x1
	.byte	0x49
	.long	0x9a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x9
	.string	"i"
	.byte	0x1
	.byte	0x4a
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x9
	.string	"f"
	.byte	0x1
	.byte	0x4a
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0xa
	.byte	0x8
	.long	0x142
	.uleb128 0xa
	.byte	0x8
	.long	0x9a
	.uleb128 0xb
	.long	.LASF25
	.byte	0x1
	.byte	0x85
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x8
	.long	.LASF20
	.byte	0x1
	.byte	0x40
	.long	0x142
	.uleb128 0x9
	.byte	0x3
	.quad	cmn_mean
	.uleb128 0x8
	.long	.LASF21
	.byte	0x1
	.byte	0x41
	.long	0x142
	.uleb128 0x9
	.byte	0x3
	.quad	cmn_var
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
	.uleb128 0x5
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
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
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
.LASF19:
	.string	"mfcp"
.LASF15:
	.string	"float64"
.LASF6:
	.string	"long int"
.LASF2:
	.string	"short unsigned int"
.LASF11:
	.string	"float"
.LASF1:
	.string	"unsigned char"
.LASF0:
	.string	"long unsigned int"
.LASF23:
	.string	"cmn.c"
.LASF13:
	.string	"int32"
.LASF21:
	.string	"cmn_var"
.LASF24:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/482.sphinx3/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF12:
	.string	"double"
.LASF20:
	.string	"cmn_mean"
.LASF14:
	.string	"float32"
.LASF25:
	.string	"cmn_free"
.LASF3:
	.string	"unsigned int"
.LASF10:
	.string	"long long unsigned int"
.LASF18:
	.string	"veclen"
.LASF7:
	.string	"sizetype"
.LASF9:
	.string	"long long int"
.LASF8:
	.string	"char"
.LASF22:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF5:
	.string	"short int"
.LASF16:
	.string	"varnorm"
.LASF17:
	.string	"n_frame"
.LASF4:
	.string	"signed char"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
