	.file	"cmn_prior.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I . -I . -I libutil -imultiarch x86_64-linux-gnu
# -D SPEC_CPU -D NDEBUG -D SPEC_CPU -D HAVE_CONFIG_H -D SPEC_CPU_LP64
# cmn_prior.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.string	"cmn_prior.c"
	.align 8
.LC2:
	.string	"Variance normalization not implemented in live mode decode\n"
.LC4:
	.string	"INFO"
	.align 8
.LC5:
	.string	"mean[0]= %.2f, mean[1..%d]= 0.0\n"
	.text
	.globl	cmn_prior
	.type	cmn_prior, @function
cmn_prior:
.LFB2:
	.file 1 "cmn_prior.c"
	.loc 1 52 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# incep, incep
	movl	%esi, -28(%rbp)	# varnorm, varnorm
	movl	%edx, -32(%rbp)	# nfr, nfr
	movl	%ecx, -36(%rbp)	# ceplen, ceplen
	movl	%r8d, -40(%rbp)	# endutt, endutt
	.loc 1 60 0
	cmpl	$0, -28(%rbp)	#, varnorm
	je	.L2	#,
	.loc 1 61 0
	movl	$.LC0, %edx	#,
	movl	$61, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_header	#
	movl	$.LC2, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L2:
	.loc 1 63 0
	movl	initialize.4911(%rip), %eax	# initialize, initialize.0
	testl	%eax, %eax	# initialize.0
	je	.L3	#,
	.loc 1 64 0
	movl	-36(%rbp), %eax	# ceplen, tmp159
	cltq
	movl	$64, %ecx	#,
	movl	$.LC1, %edx	#,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# D.5050,
	call	__ckd_calloc__	#
	movq	%rax, cur_mean.4908(%rip)	# cur_mean.1, cur_mean
	.loc 1 67 0
	movq	cur_mean.4908(%rip), %rdx	# cur_mean, cur_mean.2
	movl	.LC3(%rip), %eax	#, tmp160
	movl	%eax, (%rdx)	# tmp160, *cur_mean.2_12
	.loc 1 69 0
	movl	-36(%rbp), %eax	# ceplen, tmp161
	cltq
	movl	$69, %ecx	#,
	movl	$.LC1, %edx	#,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# D.5050,
	call	__ckd_calloc__	#
	movq	%rax, sum.4909(%rip)	# sum.3, sum
	.loc 1 70 0
	movl	$0, nframe.4910(%rip)	#, nframe
	.loc 1 71 0
	movl	$0, initialize.4911(%rip)	#, initialize
	.loc 1 72 0
	movl	$.LC4, %edx	#,
	movl	$72, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_info_header	#
	movl	-36(%rbp), %eax	# ceplen, tmp162
	leal	-1(%rax), %edx	#, D.5051
	movq	cur_mean.4908(%rip), %rax	# cur_mean, cur_mean.4
	movss	(%rax), %xmm0	# *cur_mean.4_16, D.5052
	unpcklps	%xmm0, %xmm0	# D.5052, D.5052
	cvtps2pd	%xmm0, %xmm0	# D.5052, D.5053
	movl	%edx, %esi	# D.5051,
	movl	$.LC5, %edi	#,
	movl	$1, %eax	#,
	call	_E__pr_info	#
.L3:
	.loc 1 75 0
	cmpl	$0, -32(%rbp)	#, nfr
	jg	.L4	#,
	.loc 1 76 0
	jmp	.L1	#
.L4:
	.loc 1 78 0
	movl	$0, -12(%rbp)	#, i
	jmp	.L6	#
.L9:
	.loc 1 79 0
	movl	$0, -8(%rbp)	#, j
	jmp	.L7	#
.L8:
	.loc 1 80 0 discriminator 2
	movq	sum.4909(%rip), %rax	# sum, sum.5
	movl	-8(%rbp), %edx	# j, tmp163
	movslq	%edx, %rdx	# tmp163, D.5050
	salq	$2, %rdx	#, D.5050
	addq	%rdx, %rax	# D.5050, D.5054
	movq	sum.4909(%rip), %rdx	# sum, sum.6
	movl	-8(%rbp), %ecx	# j, tmp164
	movslq	%ecx, %rcx	# tmp164, D.5050
	salq	$2, %rcx	#, D.5050
	addq	%rcx, %rdx	# D.5050, D.5054
	movss	(%rdx), %xmm1	# *_29, D.5052
	movl	-12(%rbp), %edx	# i, tmp165
	movslq	%edx, %rdx	# tmp165, D.5050
	leaq	0(,%rdx,8), %rcx	#, D.5050
	movq	-24(%rbp), %rdx	# incep, tmp166
	addq	%rcx, %rdx	# D.5050, D.5055
	movq	(%rdx), %rdx	# *_34, D.5054
	movl	-8(%rbp), %ecx	# j, tmp167
	movslq	%ecx, %rcx	# tmp167, D.5050
	salq	$2, %rcx	#, D.5050
	addq	%rcx, %rdx	# D.5050, D.5054
	movss	(%rdx), %xmm0	# *_38, D.5052
	addss	%xmm1, %xmm0	# D.5052, D.5052
	movss	%xmm0, (%rax)	# D.5052, *_25
	.loc 1 81 0 discriminator 2
	movl	-12(%rbp), %eax	# i, tmp168
	cltq
	leaq	0(,%rax,8), %rdx	#, D.5050
	movq	-24(%rbp), %rax	# incep, tmp169
	addq	%rdx, %rax	# D.5050, D.5055
	movq	(%rax), %rax	# *_43, D.5054
	movl	-8(%rbp), %edx	# j, tmp170
	movslq	%edx, %rdx	# tmp170, D.5050
	salq	$2, %rdx	#, D.5050
	addq	%rdx, %rax	# D.5050, D.5054
	movl	-12(%rbp), %edx	# i, tmp171
	movslq	%edx, %rdx	# tmp171, D.5050
	leaq	0(,%rdx,8), %rcx	#, D.5050
	movq	-24(%rbp), %rdx	# incep, tmp172
	addq	%rcx, %rdx	# D.5050, D.5055
	movq	(%rdx), %rdx	# *_50, D.5054
	movl	-8(%rbp), %ecx	# j, tmp173
	movslq	%ecx, %rcx	# tmp173, D.5050
	salq	$2, %rcx	#, D.5050
	addq	%rcx, %rdx	# D.5050, D.5054
	movss	(%rdx), %xmm0	# *_54, D.5052
	movq	cur_mean.4908(%rip), %rdx	# cur_mean, cur_mean.7
	movl	-8(%rbp), %ecx	# j, tmp174
	movslq	%ecx, %rcx	# tmp174, D.5050
	salq	$2, %rcx	#, D.5050
	addq	%rcx, %rdx	# D.5050, D.5054
	movss	(%rdx), %xmm1	# *_59, D.5052
	subss	%xmm1, %xmm0	# D.5052, D.5052
	movss	%xmm0, (%rax)	# D.5052, *_47
	.loc 1 79 0 discriminator 2
	addl	$1, -8(%rbp)	#, j
.L7:
	.loc 1 79 0 is_stmt 0 discriminator 1
	movl	-8(%rbp), %eax	# j, tmp175
	cmpl	-36(%rbp), %eax	# ceplen, tmp175
	jl	.L8	#,
	.loc 1 83 0 is_stmt 1
	movl	nframe.4910(%rip), %eax	# nframe, nframe.8
	addl	$1, %eax	#, nframe.9
	movl	%eax, nframe.4910(%rip)	# nframe.9, nframe
	.loc 1 78 0
	addl	$1, -12(%rbp)	#, i
.L6:
	.loc 1 78 0 is_stmt 0 discriminator 1
	movl	-12(%rbp), %eax	# i, tmp176
	cmpl	-32(%rbp), %eax	# nfr, tmp176
	jl	.L9	#,
	.loc 1 87 0 is_stmt 1
	movl	nframe.4910(%rip), %eax	# nframe, nframe.10
	cmpl	$800, %eax	#, nframe.10
	jle	.L10	#,
	.loc 1 88 0
	movl	nframe.4910(%rip), %eax	# nframe, nframe.11
	cvtsi2sd	%eax, %xmm0	# nframe.11, D.5053
	movsd	.LC6(%rip), %xmm1	#, tmp177
	divsd	%xmm0, %xmm1	# D.5053, D.5053
	movapd	%xmm1, %xmm0	# D.5053, D.5053
	unpcklpd	%xmm0, %xmm0	# D.5053
	cvtpd2ps	%xmm0, %xmm2	# D.5053, tmp198
	movss	%xmm2, -4(%rbp)	# tmp198, sf
	.loc 1 89 0
	movl	$0, -12(%rbp)	#, i
	jmp	.L11	#
.L12:
	.loc 1 90 0 discriminator 2
	movq	cur_mean.4908(%rip), %rax	# cur_mean, cur_mean.12
	movl	-12(%rbp), %edx	# i, tmp178
	movslq	%edx, %rdx	# tmp178, D.5050
	salq	$2, %rdx	#, D.5050
	addq	%rdx, %rax	# D.5050, D.5054
	movq	sum.4909(%rip), %rdx	# sum, sum.13
	movl	-12(%rbp), %ecx	# i, tmp179
	movslq	%ecx, %rcx	# tmp179, D.5050
	salq	$2, %rcx	#, D.5050
	addq	%rcx, %rdx	# D.5050, D.5054
	movss	(%rdx), %xmm0	# *_79, D.5052
	mulss	-4(%rbp), %xmm0	# sf, D.5052
	movss	%xmm0, (%rax)	# D.5052, *_75
	.loc 1 89 0 discriminator 2
	addl	$1, -12(%rbp)	#, i
.L11:
	.loc 1 89 0 is_stmt 0 discriminator 1
	movl	-12(%rbp), %eax	# i, tmp180
	cmpl	-36(%rbp), %eax	# ceplen, tmp180
	jl	.L12	#,
	.loc 1 93 0 is_stmt 1
	movl	nframe.4910(%rip), %eax	# nframe, nframe.14
	cmpl	$799, %eax	#, nframe.14
	jle	.L10	#,
	.loc 1 94 0
	movss	-4(%rbp), %xmm1	# sf, tmp182
	movss	.LC7(%rip), %xmm0	#, tmp183
	mulss	%xmm1, %xmm0	# tmp182, tmp181
	movss	%xmm0, -4(%rbp)	# tmp181, sf
	.loc 1 95 0
	movl	$0, -12(%rbp)	#, i
	jmp	.L13	#
.L14:
	.loc 1 96 0 discriminator 2
	movq	sum.4909(%rip), %rax	# sum, sum.15
	movl	-12(%rbp), %edx	# i, tmp184
	movslq	%edx, %rdx	# tmp184, D.5050
	salq	$2, %rdx	#, D.5050
	addq	%rdx, %rax	# D.5050, D.5054
	movq	sum.4909(%rip), %rdx	# sum, sum.16
	movl	-12(%rbp), %ecx	# i, tmp185
	movslq	%ecx, %rcx	# tmp185, D.5050
	salq	$2, %rcx	#, D.5050
	addq	%rcx, %rdx	# D.5050, D.5054
	movss	(%rdx), %xmm0	# *_93, D.5052
	mulss	-4(%rbp), %xmm0	# sf, D.5052
	movss	%xmm0, (%rax)	# D.5052, *_89
	.loc 1 95 0 discriminator 2
	addl	$1, -12(%rbp)	#, i
.L13:
	.loc 1 95 0 is_stmt 0 discriminator 1
	movl	-12(%rbp), %eax	# i, tmp186
	cmpl	-36(%rbp), %eax	# ceplen, tmp186
	jl	.L14	#,
	.loc 1 97 0 is_stmt 1
	movl	$500, nframe.4910(%rip)	#, nframe
.L10:
	.loc 1 101 0
	cmpl	$0, -40(%rbp)	#, endutt
	je	.L1	#,
	.loc 1 104 0
	movl	nframe.4910(%rip), %eax	# nframe, nframe.17
	cvtsi2sd	%eax, %xmm0	# nframe.17, D.5053
	movsd	.LC6(%rip), %xmm1	#, tmp187
	divsd	%xmm0, %xmm1	# D.5053, D.5053
	movapd	%xmm1, %xmm0	# D.5053, D.5053
	unpcklpd	%xmm0, %xmm0	# D.5053
	cvtpd2ps	%xmm0, %xmm3	# D.5053, tmp200
	movss	%xmm3, -4(%rbp)	# tmp200, sf
	.loc 1 105 0
	movl	$0, -12(%rbp)	#, i
	jmp	.L15	#
.L16:
	.loc 1 106 0 discriminator 2
	movq	cur_mean.4908(%rip), %rax	# cur_mean, cur_mean.18
	movl	-12(%rbp), %edx	# i, tmp188
	movslq	%edx, %rdx	# tmp188, D.5050
	salq	$2, %rdx	#, D.5050
	addq	%rdx, %rax	# D.5050, D.5054
	movq	sum.4909(%rip), %rdx	# sum, sum.19
	movl	-12(%rbp), %ecx	# i, tmp189
	movslq	%ecx, %rcx	# tmp189, D.5050
	salq	$2, %rcx	#, D.5050
	addq	%rcx, %rdx	# D.5050, D.5054
	movss	(%rdx), %xmm0	# *_110, D.5052
	mulss	-4(%rbp), %xmm0	# sf, D.5052
	movss	%xmm0, (%rax)	# D.5052, *_106
	.loc 1 105 0 discriminator 2
	addl	$1, -12(%rbp)	#, i
.L15:
	.loc 1 105 0 is_stmt 0 discriminator 1
	movl	-12(%rbp), %eax	# i, tmp190
	cmpl	-36(%rbp), %eax	# ceplen, tmp190
	jl	.L16	#,
	.loc 1 109 0 is_stmt 1
	movl	nframe.4910(%rip), %eax	# nframe, nframe.20
	cmpl	$800, %eax	#, nframe.20
	jle	.L1	#,
	.loc 1 110 0
	movss	-4(%rbp), %xmm1	# sf, tmp192
	movss	.LC7(%rip), %xmm0	#, tmp193
	mulss	%xmm1, %xmm0	# tmp192, tmp191
	movss	%xmm0, -4(%rbp)	# tmp191, sf
	.loc 1 111 0
	movl	$0, -12(%rbp)	#, i
	jmp	.L17	#
.L18:
	.loc 1 112 0 discriminator 2
	movq	sum.4909(%rip), %rax	# sum, sum.21
	movl	-12(%rbp), %edx	# i, tmp194
	movslq	%edx, %rdx	# tmp194, D.5050
	salq	$2, %rdx	#, D.5050
	addq	%rdx, %rax	# D.5050, D.5054
	movq	sum.4909(%rip), %rdx	# sum, sum.22
	movl	-12(%rbp), %ecx	# i, tmp195
	movslq	%ecx, %rcx	# tmp195, D.5050
	salq	$2, %rcx	#, D.5050
	addq	%rcx, %rdx	# D.5050, D.5054
	movss	(%rdx), %xmm0	# *_124, D.5052
	mulss	-4(%rbp), %xmm0	# sf, D.5052
	movss	%xmm0, (%rax)	# D.5052, *_120
	.loc 1 111 0 discriminator 2
	addl	$1, -12(%rbp)	#, i
.L17:
	.loc 1 111 0 is_stmt 0 discriminator 1
	movl	-12(%rbp), %eax	# i, tmp196
	cmpl	-36(%rbp), %eax	# ceplen, tmp196
	jl	.L18	#,
	.loc 1 113 0 is_stmt 1
	movl	$500, nframe.4910(%rip)	#, nframe
.L1:
	.loc 1 117 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	cmn_prior, .-cmn_prior
	.data
	.align 4
	.type	initialize.4911, @object
	.size	initialize.4911, 4
initialize.4911:
	.long	1
	.local	cur_mean.4908
	.comm	cur_mean.4908,8,8
	.local	sum.4909
	.comm	sum.4909,8,8
	.local	nframe.4910
	.comm	nframe.4910,4,4
	.section	.rodata
	.align 4
.LC3:
	.long	1094713344
	.align 8
.LC6:
	.long	0
	.long	1072693248
	.align 4
.LC7:
	.long	1140457472
	.text
.Letext0:
	.file 2 "./libutil/prim_type.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x18b
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
	.uleb128 0x5
	.long	.LASF25
	.byte	0x1
	.byte	0x32
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x182
	.uleb128 0x6
	.long	.LASF15
	.byte	0x1
	.byte	0x32
	.long	0x182
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x6
	.long	.LASF16
	.byte	0x1
	.byte	0x32
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x7
	.string	"nfr"
	.byte	0x1
	.byte	0x32
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x6
	.long	.LASF17
	.byte	0x1
	.byte	0x32
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x6
	.long	.LASF18
	.byte	0x1
	.byte	0x33
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x8
	.long	.LASF19
	.byte	0x1
	.byte	0x35
	.long	0x188
	.uleb128 0x9
	.byte	0x3
	.quad	cur_mean.4908
	.uleb128 0x9
	.string	"sum"
	.byte	0x1
	.byte	0x36
	.long	0x188
	.uleb128 0x9
	.byte	0x3
	.quad	sum.4909
	.uleb128 0x8
	.long	.LASF20
	.byte	0x1
	.byte	0x37
	.long	0x8f
	.uleb128 0x9
	.byte	0x3
	.quad	nframe.4910
	.uleb128 0x8
	.long	.LASF21
	.byte	0x1
	.byte	0x38
	.long	0x8f
	.uleb128 0x9
	.byte	0x3
	.quad	initialize.4911
	.uleb128 0x9
	.string	"sf"
	.byte	0x1
	.byte	0x39
	.long	0x9a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x9
	.string	"i"
	.byte	0x1
	.byte	0x3a
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x9
	.string	"j"
	.byte	0x1
	.byte	0x3a
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xa
	.byte	0x8
	.long	0x188
	.uleb128 0xa
	.byte	0x8
	.long	0x9a
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
	.string	"nframe"
.LASF2:
	.string	"short unsigned int"
.LASF21:
	.string	"initialize"
.LASF11:
	.string	"float"
.LASF1:
	.string	"unsigned char"
.LASF15:
	.string	"incep"
.LASF0:
	.string	"long unsigned int"
.LASF13:
	.string	"int32"
.LASF17:
	.string	"ceplen"
.LASF12:
	.string	"double"
.LASF14:
	.string	"float32"
.LASF19:
	.string	"cur_mean"
.LASF24:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/482.sphinx3/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF3:
	.string	"unsigned int"
.LASF10:
	.string	"long long unsigned int"
.LASF25:
	.string	"cmn_prior"
.LASF7:
	.string	"sizetype"
.LASF9:
	.string	"long long int"
.LASF8:
	.string	"char"
.LASF18:
	.string	"endutt"
.LASF22:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF5:
	.string	"short int"
.LASF23:
	.string	"cmn_prior.c"
.LASF16:
	.string	"varnorm"
.LASF6:
	.string	"long int"
.LASF4:
	.string	"signed char"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
