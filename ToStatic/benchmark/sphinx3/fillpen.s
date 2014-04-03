	.file	"fillpen.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I . -I . -I libutil -imultiarch x86_64-linux-gnu
# -D SPEC_CPU -D NDEBUG -D SPEC_CPU -D HAVE_CONFIG_H -D SPEC_CPU_LP64
# fillpen.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.string	"fillpen.c"
.LC1:
	.string	"<sil>"
.LC2:
	.string	"FATAL_ERROR"
	.align 8
.LC3:
	.string	"%s not a filler word in the given dictionary\n"
.LC4:
	.string	"INFO"
	.align 8
.LC5:
	.string	"Reading filler penalty file: %s\n"
.LC6:
	.string	"r"
.LC7:
	.string	"fopen(%s,r) failed\n"
.LC8:
	.string	"%s %lf"
.LC9:
	.string	"Bad input line: %s\n"
	.text
	.globl	fillpen_init
	.type	fillpen_init, @function
fillpen_init:
.LFB2:
	.file 1 "fillpen.c"
	.loc 1 70 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$2184, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -2136(%rbp)	# dict, dict
	movq	%rsi, -2144(%rbp)	# file, file
	movsd	%xmm0, -2152(%rbp)	# silprob, silprob
	movsd	%xmm1, -2160(%rbp)	# fillprob, fillprob
	movsd	%xmm2, -2168(%rbp)	# lw, lw
	movsd	%xmm3, -2176(%rbp)	# wip, wip
	.loc 1 70 0
	movq	%fs:40, %rax	#, tmp203
	movq	%rax, -24(%rbp)	# tmp203, D.5262
	xorl	%eax, %eax	# tmp203
	.loc 1 78 0
	movl	$78, %ecx	#,
	movl	$.LC0, %edx	#,
	movl	$32, %esi	#,
	movl	$1, %edi	#,
	call	__ckd_calloc__	#
	movq	%rax, -2096(%rbp)	# tmp136, _fillpen
	.loc 1 80 0
	movq	-2096(%rbp), %rax	# _fillpen, tmp137
	movq	-2136(%rbp), %rdx	# dict, tmp138
	movq	%rdx, (%rax)	# tmp138, _fillpen_4->dict
	.loc 1 81 0
	movq	-2096(%rbp), %rdx	# _fillpen, tmp139
	movq	-2168(%rbp), %rax	# lw, tmp140
	movq	%rax, 16(%rdx)	# tmp140, _fillpen_4->lw
	.loc 1 82 0
	movq	-2096(%rbp), %rdx	# _fillpen, tmp141
	movq	-2176(%rbp), %rax	# wip, tmp142
	movq	%rax, 24(%rdx)	# tmp142, _fillpen_4->wip
	.loc 1 83 0
	movq	-2136(%rbp), %rax	# dict, tmp143
	movl	60(%rax), %edx	# dict_5(D)->filler_end, D.5254
	movq	-2136(%rbp), %rax	# dict, tmp144
	movl	56(%rax), %eax	# dict_5(D)->filler_start, D.5254
	cmpl	%eax, %edx	# D.5254, D.5254
	jl	.L2	#,
	.loc 1 84 0
	movq	-2136(%rbp), %rax	# dict, tmp145
	movl	60(%rax), %edx	# dict_5(D)->filler_end, D.5254
	movq	-2136(%rbp), %rax	# dict, tmp146
	movl	56(%rax), %eax	# dict_5(D)->filler_start, D.5254
	subl	%eax, %edx	# D.5254, D.5254
	movl	%edx, %eax	# D.5254, D.5254
	addl	$1, %eax	#, D.5254
	cltq
	movl	$85, %ecx	#,
	movl	$.LC0, %edx	#,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# D.5255,
	call	__ckd_calloc__	#
	movq	-2096(%rbp), %rdx	# _fillpen, tmp147
	movq	%rax, 8(%rdx)	# D.5256, _fillpen_4->prob
	jmp	.L3	#
.L2:
	.loc 1 87 0
	movq	-2096(%rbp), %rax	# _fillpen, tmp148
	movq	$0, 8(%rax)	#, _fillpen_4->prob
.L3:
	.loc 1 90 0
	movq	-2160(%rbp), %rax	# fillprob, tmp149
	movq	%rax, -2104(%rbp)	# tmp149, prob
	.loc 1 91 0
	movq	-2136(%rbp), %rax	# dict, tmp150
	movl	56(%rax), %eax	# dict_5(D)->filler_start, tmp151
	movl	%eax, -2116(%rbp)	# tmp151, w
	jmp	.L4	#
.L5:
	.loc 1 95 0 discriminator 2
	movq	-2096(%rbp), %rax	# _fillpen, tmp152
	movq	8(%rax), %rdx	# _fillpen_4->prob, D.5257
	movq	-2136(%rbp), %rax	# dict, tmp153
	movl	56(%rax), %eax	# dict_5(D)->filler_start, D.5254
	movl	-2116(%rbp), %ecx	# w, tmp154
	subl	%eax, %ecx	# D.5254, D.5254
	movl	%ecx, %eax	# D.5254, D.5254
	cltq
	salq	$2, %rax	#, D.5255
	leaq	(%rdx,%rax), %rbx	#, D.5257
	movq	-2104(%rbp), %rax	# prob, prob.0
	movq	%rax, -2184(%rbp)	# prob.0, %sfp
	movsd	-2184(%rbp), %xmm0	# %sfp,
	call	logs3	#
	cvtsi2sd	%eax, %xmm0	# D.5254, D.5258
	mulsd	-2168(%rbp), %xmm0	# lw, D.5258
	movsd	%xmm0, -2184(%rbp)	# D.5258, %sfp
	movq	-2176(%rbp), %rax	# wip, tmp155
	movq	%rax, -2192(%rbp)	# tmp155, %sfp
	movsd	-2192(%rbp), %xmm0	# %sfp,
	call	logs3	#
	cvtsi2sd	%eax, %xmm0	# D.5254, D.5258
	addsd	-2184(%rbp), %xmm0	# %sfp, D.5258
	cvttsd2si	%xmm0, %eax	# D.5258, D.5254
	movl	%eax, (%rbx)	# D.5254, *_24
	.loc 1 91 0 discriminator 2
	addl	$1, -2116(%rbp)	#, w
.L4:
	.loc 1 91 0 is_stmt 0 discriminator 1
	movq	-2136(%rbp), %rax	# dict, tmp156
	movl	60(%rax), %eax	# dict_5(D)->filler_end, D.5254
	cmpl	-2116(%rbp), %eax	# w, D.5254
	jge	.L5	#,
	.loc 1 98 0 is_stmt 1
	movq	-2136(%rbp), %rax	# dict, tmp157
	movl	$.LC1, %esi	#,
	movq	%rax, %rdi	# tmp157,
	call	dict_wordid	#
	movl	%eax, -2116(%rbp)	# tmp158, w
	.loc 1 99 0
	cmpl	$0, -2116(%rbp)	#, w
	js	.L6	#,
	.loc 1 99 0 is_stmt 0 discriminator 1
	movq	-2136(%rbp), %rax	# dict, tmp159
	movl	56(%rax), %eax	# dict_5(D)->filler_start, D.5254
	cmpl	-2116(%rbp), %eax	# w, D.5254
	jg	.L6	#,
	movq	-2136(%rbp), %rax	# dict, tmp160
	movl	60(%rax), %eax	# dict_5(D)->filler_end, D.5254
	cmpl	-2116(%rbp), %eax	# w, D.5254
	jge	.L7	#,
.L6:
	.loc 1 100 0 is_stmt 1
	movl	$.LC2, %edx	#,
	movl	$100, %esi	#,
	movl	$.LC0, %edi	#,
	call	_E__pr_header	#
	movl	$.LC1, %esi	#,
	movl	$.LC3, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L7:
	.loc 1 101 0
	movq	-2152(%rbp), %rax	# silprob, tmp161
	movq	%rax, -2104(%rbp)	# tmp161, prob
	.loc 1 105 0
	movq	-2096(%rbp), %rax	# _fillpen, tmp162
	movq	8(%rax), %rdx	# _fillpen_4->prob, D.5257
	movq	-2136(%rbp), %rax	# dict, tmp163
	movl	56(%rax), %eax	# dict_5(D)->filler_start, D.5254
	movl	-2116(%rbp), %ecx	# w, tmp164
	subl	%eax, %ecx	# D.5254, D.5254
	movl	%ecx, %eax	# D.5254, D.5254
	cltq
	salq	$2, %rax	#, D.5255
	leaq	(%rdx,%rax), %rbx	#, D.5257
	movq	-2104(%rbp), %rax	# prob, prob.1
	movq	%rax, -2184(%rbp)	# prob.1, %sfp
	movsd	-2184(%rbp), %xmm0	# %sfp,
	call	logs3	#
	cvtsi2sd	%eax, %xmm0	# D.5254, D.5258
	mulsd	-2168(%rbp), %xmm0	# lw, D.5258
	movsd	%xmm0, -2184(%rbp)	# D.5258, %sfp
	movq	-2176(%rbp), %rax	# wip, tmp165
	movq	%rax, -2192(%rbp)	# tmp165, %sfp
	movsd	-2192(%rbp), %xmm0	# %sfp,
	call	logs3	#
	cvtsi2sd	%eax, %xmm0	# D.5254, D.5258
	addsd	-2184(%rbp), %xmm0	# %sfp, D.5258
	cvttsd2si	%xmm0, %eax	# D.5258, D.5254
	movl	%eax, (%rbx)	# D.5254, *_43
	.loc 1 108 0
	cmpq	$0, -2144(%rbp)	#, file
	jne	.L8	#,
	.loc 1 109 0
	movq	-2096(%rbp), %rax	# _fillpen, D.5253
	jmp	.L20	#
.L8:
	.loc 1 111 0
	movl	$.LC4, %edx	#,
	movl	$111, %esi	#,
	movl	$.LC0, %edi	#,
	call	_E__pr_info_header	#
	movq	-2144(%rbp), %rax	# file, tmp166
	movq	%rax, %rsi	# tmp166,
	movl	$.LC5, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_info	#
	.loc 1 112 0
	movq	-2144(%rbp), %rax	# file, tmp167
	movl	$.LC6, %esi	#,
	movq	%rax, %rdi	# tmp167,
	call	fopen	#
	movq	%rax, -2088(%rbp)	# tmp168, fp
	cmpq	$0, -2088(%rbp)	#, fp
	jne	.L10	#,
	.loc 1 113 0
	movl	$.LC2, %edx	#,
	movl	$113, %esi	#,
	movl	$.LC0, %edi	#,
	call	_E__pr_header	#
	movq	-2144(%rbp), %rax	# file, tmp169
	movq	%rax, %rsi	# tmp169,
	movl	$.LC7, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
	.loc 1 114 0
	jmp	.L11	#
.L10:
	jmp	.L11	#
.L16:
	.loc 1 115 0
	movzbl	-2080(%rbp), %eax	# line, D.5260
	cmpb	$35, %al	#, D.5260
	jne	.L12	#,
	.loc 1 116 0
	jmp	.L11	#
.L12:
	.loc 1 118 0
	leaq	-2104(%rbp), %rcx	#, tmp170
	leaq	-1056(%rbp), %rdx	#, tmp171
	leaq	-2080(%rbp), %rax	#, tmp172
	movl	$.LC8, %esi	#,
	movq	%rax, %rdi	# tmp172,
	movl	$0, %eax	#,
	call	__isoc99_sscanf	#
	movl	%eax, -2112(%rbp)	# tmp173, k
	.loc 1 119 0
	cmpl	$0, -2112(%rbp)	#, k
	je	.L13	#,
	.loc 1 119 0 is_stmt 0 discriminator 1
	cmpl	$2, -2112(%rbp)	#, k
	je	.L13	#,
	.loc 1 120 0 is_stmt 1
	movl	$.LC2, %edx	#,
	movl	$120, %esi	#,
	movl	$.LC0, %edi	#,
	call	_E__pr_header	#
	leaq	-2080(%rbp), %rax	#, tmp174
	movq	%rax, %rsi	# tmp174,
	movl	$.LC9, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L13:
	.loc 1 121 0
	leaq	-1056(%rbp), %rdx	#, tmp175
	movq	-2136(%rbp), %rax	# dict, tmp176
	movq	%rdx, %rsi	# tmp175,
	movq	%rax, %rdi	# tmp176,
	call	dict_wordid	#
	movl	%eax, -2116(%rbp)	# tmp177, w
	.loc 1 122 0
	cmpl	$0, -2116(%rbp)	#, w
	js	.L14	#,
	.loc 1 122 0 is_stmt 0 discriminator 1
	movq	-2136(%rbp), %rax	# dict, tmp178
	movl	56(%rax), %eax	# dict_5(D)->filler_start, D.5254
	cmpl	-2116(%rbp), %eax	# w, D.5254
	jg	.L14	#,
	movq	-2136(%rbp), %rax	# dict, tmp179
	movl	60(%rax), %eax	# dict_5(D)->filler_end, D.5254
	cmpl	-2116(%rbp), %eax	# w, D.5254
	jge	.L15	#,
.L14:
	.loc 1 123 0 is_stmt 1
	movl	$.LC2, %edx	#,
	movl	$123, %esi	#,
	movl	$.LC0, %edi	#,
	call	_E__pr_header	#
	movl	$.LC1, %esi	#,
	movl	$.LC3, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L15:
	.loc 1 128 0
	movq	-2096(%rbp), %rax	# _fillpen, tmp180
	movq	8(%rax), %rdx	# _fillpen_4->prob, D.5257
	movq	-2136(%rbp), %rax	# dict, tmp181
	movl	56(%rax), %eax	# dict_5(D)->filler_start, D.5254
	movl	-2116(%rbp), %ecx	# w, tmp182
	subl	%eax, %ecx	# D.5254, D.5254
	movl	%ecx, %eax	# D.5254, D.5254
	cltq
	salq	$2, %rax	#, D.5255
	leaq	(%rdx,%rax), %rbx	#, D.5257
	movq	-2104(%rbp), %rax	# prob, prob.2
	movq	%rax, -2184(%rbp)	# prob.2, %sfp
	movsd	-2184(%rbp), %xmm0	# %sfp,
	call	logs3	#
	cvtsi2sd	%eax, %xmm0	# D.5254, D.5258
	mulsd	-2168(%rbp), %xmm0	# lw, D.5258
	movsd	%xmm0, -2184(%rbp)	# D.5258, %sfp
	movq	-2176(%rbp), %rax	# wip, tmp183
	movq	%rax, -2192(%rbp)	# tmp183, %sfp
	movsd	-2192(%rbp), %xmm0	# %sfp,
	call	logs3	#
	cvtsi2sd	%eax, %xmm0	# D.5254, D.5258
	addsd	-2184(%rbp), %xmm0	# %sfp, D.5258
	cvttsd2si	%xmm0, %eax	# D.5258, D.5254
	movl	%eax, (%rbx)	# D.5254, *_66
.L11:
	.loc 1 114 0 discriminator 1
	movq	-2088(%rbp), %rdx	# fp, tmp184
	leaq	-2080(%rbp), %rax	#, tmp185
	movl	$1024, %esi	#,
	movq	%rax, %rdi	# tmp185,
	call	fgets	#
	testq	%rax, %rax	# D.5259
	jne	.L16	#,
	.loc 1 130 0
	movq	-2088(%rbp), %rax	# fp, tmp186
	movq	%rax, %rdi	# tmp186,
	call	fclose	#
	.loc 1 133 0
	movq	-2136(%rbp), %rax	# dict, tmp187
	movl	56(%rax), %eax	# dict_5(D)->filler_start, tmp188
	movl	%eax, -2116(%rbp)	# tmp188, w
	jmp	.L17	#
.L19:
	.loc 1 134 0
	movq	-2136(%rbp), %rax	# dict, tmp189
	movq	32(%rax), %rcx	# dict_5(D)->word, D.5261
	movl	-2116(%rbp), %eax	# w, tmp190
	movslq	%eax, %rdx	# tmp190, D.5255
	movq	%rdx, %rax	# D.5255, tmp191
	salq	$2, %rax	#, tmp191
	addq	%rdx, %rax	# D.5255, tmp191
	salq	$3, %rax	#, tmp192
	addq	%rcx, %rax	# D.5261, D.5261
	movl	24(%rax), %eax	# _80->basewid, tmp193
	movl	%eax, -2108(%rbp)	# tmp193, bw
	.loc 1 135 0
	movl	-2108(%rbp), %eax	# bw, tmp194
	cmpl	-2116(%rbp), %eax	# w, tmp194
	je	.L18	#,
	.loc 1 136 0
	movq	-2096(%rbp), %rax	# _fillpen, tmp195
	movq	8(%rax), %rdx	# _fillpen_4->prob, D.5257
	movq	-2136(%rbp), %rax	# dict, tmp196
	movl	56(%rax), %eax	# dict_5(D)->filler_start, D.5254
	movl	-2116(%rbp), %ecx	# w, tmp197
	subl	%eax, %ecx	# D.5254, D.5254
	movl	%ecx, %eax	# D.5254, D.5254
	cltq
	salq	$2, %rax	#, D.5255
	addq	%rax, %rdx	# D.5255, D.5257
	movq	-2096(%rbp), %rax	# _fillpen, tmp198
	movq	8(%rax), %rcx	# _fillpen_4->prob, D.5257
	movq	-2136(%rbp), %rax	# dict, tmp199
	movl	56(%rax), %eax	# dict_5(D)->filler_start, D.5254
	movl	-2108(%rbp), %esi	# bw, tmp200
	subl	%eax, %esi	# D.5254, D.5254
	movl	%esi, %eax	# D.5254, D.5254
	cltq
	salq	$2, %rax	#, D.5255
	addq	%rcx, %rax	# D.5257, D.5257
	movl	(%rax), %eax	# *_93, D.5254
	movl	%eax, (%rdx)	# D.5254, *_87
.L18:
	.loc 1 133 0
	addl	$1, -2116(%rbp)	#, w
.L17:
	.loc 1 133 0 is_stmt 0 discriminator 1
	movq	-2136(%rbp), %rax	# dict, tmp201
	movl	60(%rax), %eax	# dict_5(D)->filler_end, D.5254
	cmpl	-2116(%rbp), %eax	# w, D.5254
	jge	.L19	#,
	.loc 1 139 0 is_stmt 1
	movq	-2096(%rbp), %rax	# _fillpen, D.5253
.L20:
	.loc 1 140 0
	movq	-24(%rbp), %rbx	# D.5262, tmp204
	xorq	%fs:40, %rbx	#, tmp204
	je	.L21	#,
	call	__stack_chk_fail	#
.L21:
	addq	$2184, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	fillpen_init, .-fillpen_init
	.globl	fillpen
	.type	fillpen, @function
fillpen:
.LFB3:
	.loc 1 144 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# f, f
	movl	%esi, -12(%rbp)	# w, w
	.loc 1 146 0
	movq	-8(%rbp), %rax	# f, tmp68
	movq	8(%rax), %rdx	# f_1(D)->prob, D.5276
	movq	-8(%rbp), %rax	# f, tmp69
	movq	(%rax), %rax	# f_1(D)->dict, D.5277
	movl	56(%rax), %eax	# _3->filler_start, D.5278
	movl	-12(%rbp), %ecx	# w, tmp70
	subl	%eax, %ecx	# D.5278, D.5278
	movl	%ecx, %eax	# D.5278, D.5278
	cltq
	salq	$2, %rax	#, D.5279
	addq	%rdx, %rax	# D.5276, D.5276
	movl	(%rax), %eax	# *_9, D.5280
	.loc 1 147 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	fillpen, .-fillpen
	.globl	fillpen_free
	.type	fillpen_free, @function
fillpen_free:
.LFB4:
	.loc 1 152 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# f, f
	.loc 1 153 0
	cmpq	$0, -8(%rbp)	#, f
	je	.L24	#,
	.loc 1 154 0
	movq	-8(%rbp), %rax	# f, tmp61
	movq	8(%rax), %rax	# f_1(D)->prob, D.5281
	testq	%rax, %rax	# D.5281
	je	.L26	#,
	.loc 1 155 0
	movq	-8(%rbp), %rax	# f, tmp62
	movq	8(%rax), %rax	# f_1(D)->prob, D.5281
	movq	%rax, %rdi	# D.5281,
	call	ckd_free	#
.L26:
	.loc 1 156 0
	movq	-8(%rbp), %rax	# f, tmp63
	movq	%rax, %rdi	# tmp63,
	call	ckd_free	#
.L24:
	.loc 1 158 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	fillpen_free, .-fillpen_free
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/include/stdio.h"
	.file 5 "/usr/include/libio.h"
	.file 6 "./libutil/prim_type.h"
	.file 7 "./libutil/hash.h"
	.file 8 "s3types.h"
	.file 9 "mdef.h"
	.file 10 "dict.h"
	.file 11 "fillpen.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x8f7
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF130
	.byte	0x1
	.long	.LASF131
	.long	.LASF132
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
	.long	.LASF133
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
	.uleb128 0x6
	.byte	0x8
	.long	0x298
	.uleb128 0xd
	.long	0x95
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
	.byte	0x6
	.byte	0x41
	.long	0x95
	.uleb128 0x2
	.long	.LASF54
	.byte	0x6
	.byte	0x44
	.long	0x3f
	.uleb128 0x2
	.long	.LASF55
	.byte	0x6
	.byte	0x46
	.long	0x2b2
	.uleb128 0x7
	.long	.LASF56
	.byte	0x18
	.byte	0x7
	.byte	0x58
	.long	0x32d
	.uleb128 0xe
	.string	"key"
	.byte	0x7
	.byte	0x59
	.long	0x292
	.byte	0
	.uleb128 0xe
	.string	"len"
	.byte	0x7
	.byte	0x5c
	.long	0x2b9
	.byte	0x8
	.uleb128 0xe
	.string	"val"
	.byte	0x7
	.byte	0x5e
	.long	0x2b9
	.byte	0xc
	.uleb128 0x8
	.long	.LASF57
	.byte	0x7
	.byte	0x5f
	.long	0x32d
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x2f0
	.uleb128 0x2
	.long	.LASF58
	.byte	0x7
	.byte	0x60
	.long	0x2f0
	.uleb128 0xf
	.byte	0x10
	.byte	0x7
	.byte	0x62
	.long	0x36b
	.uleb128 0x8
	.long	.LASF59
	.byte	0x7
	.byte	0x63
	.long	0x36b
	.byte	0
	.uleb128 0x8
	.long	.LASF60
	.byte	0x7
	.byte	0x64
	.long	0x2b9
	.byte	0x8
	.uleb128 0x8
	.long	.LASF61
	.byte	0x7
	.byte	0x67
	.long	0x2da
	.byte	0xc
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x333
	.uleb128 0x2
	.long	.LASF62
	.byte	0x7
	.byte	0x68
	.long	0x33e
	.uleb128 0x2
	.long	.LASF63
	.byte	0x8
	.byte	0x4b
	.long	0x2cf
	.uleb128 0x2
	.long	.LASF64
	.byte	0x8
	.byte	0x51
	.long	0x2b9
	.uleb128 0x2
	.long	.LASF65
	.byte	0x8
	.byte	0x57
	.long	0x387
	.uleb128 0x2
	.long	.LASF66
	.byte	0x8
	.byte	0x5d
	.long	0x2b9
	.uleb128 0x2
	.long	.LASF67
	.byte	0x8
	.byte	0x63
	.long	0x2b9
	.uleb128 0x2
	.long	.LASF68
	.byte	0x8
	.byte	0x7b
	.long	0x2c4
	.uleb128 0x10
	.byte	0x4
	.byte	0x9
	.byte	0x48
	.long	0x3e5
	.uleb128 0x11
	.long	.LASF69
	.sleb128 0
	.uleb128 0x11
	.long	.LASF70
	.sleb128 1
	.uleb128 0x11
	.long	.LASF71
	.sleb128 2
	.uleb128 0x11
	.long	.LASF72
	.sleb128 3
	.uleb128 0x11
	.long	.LASF73
	.sleb128 4
	.byte	0
	.uleb128 0x2
	.long	.LASF74
	.byte	0x9
	.byte	0x4e
	.long	0x3be
	.uleb128 0xf
	.byte	0x10
	.byte	0x9
	.byte	0x54
	.long	0x411
	.uleb128 0x8
	.long	.LASF75
	.byte	0x9
	.byte	0x55
	.long	0x8f
	.byte	0
	.uleb128 0x8
	.long	.LASF76
	.byte	0x9
	.byte	0x56
	.long	0x2b9
	.byte	0x8
	.byte	0
	.uleb128 0x2
	.long	.LASF77
	.byte	0x9
	.byte	0x58
	.long	0x3f0
	.uleb128 0xf
	.byte	0x10
	.byte	0x9
	.byte	0x5e
	.long	0x46a
	.uleb128 0x8
	.long	.LASF78
	.byte	0x9
	.byte	0x5f
	.long	0x392
	.byte	0
	.uleb128 0x8
	.long	.LASF79
	.byte	0x9
	.byte	0x62
	.long	0x39d
	.byte	0x4
	.uleb128 0xe
	.string	"ci"
	.byte	0x9
	.byte	0x63
	.long	0x37c
	.byte	0x8
	.uleb128 0xe
	.string	"lc"
	.byte	0x9
	.byte	0x63
	.long	0x37c
	.byte	0x9
	.uleb128 0xe
	.string	"rc"
	.byte	0x9
	.byte	0x63
	.long	0x37c
	.byte	0xa
	.uleb128 0x8
	.long	.LASF80
	.byte	0x9
	.byte	0x64
	.long	0x3e5
	.byte	0xc
	.byte	0
	.uleb128 0x2
	.long	.LASF81
	.byte	0x9
	.byte	0x65
	.long	0x41c
	.uleb128 0x7
	.long	.LASF82
	.byte	0x10
	.byte	0x9
	.byte	0x6c
	.long	0x4a5
	.uleb128 0xe
	.string	"rc"
	.byte	0x9
	.byte	0x6d
	.long	0x37c
	.byte	0
	.uleb128 0xe
	.string	"pid"
	.byte	0x9
	.byte	0x6e
	.long	0x387
	.byte	0x4
	.uleb128 0x8
	.long	.LASF57
	.byte	0x9
	.byte	0x6f
	.long	0x4a5
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x475
	.uleb128 0x2
	.long	.LASF83
	.byte	0x9
	.byte	0x70
	.long	0x475
	.uleb128 0x7
	.long	.LASF84
	.byte	0x18
	.byte	0x9
	.byte	0x72
	.long	0x4e6
	.uleb128 0xe
	.string	"lc"
	.byte	0x9
	.byte	0x73
	.long	0x37c
	.byte	0
	.uleb128 0x8
	.long	.LASF85
	.byte	0x9
	.byte	0x74
	.long	0x4e6
	.byte	0x8
	.uleb128 0x8
	.long	.LASF57
	.byte	0x9
	.byte	0x75
	.long	0x4ec
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x4ab
	.uleb128 0x6
	.byte	0x8
	.long	0x4b6
	.uleb128 0x2
	.long	.LASF86
	.byte	0x9
	.byte	0x76
	.long	0x4b6
	.uleb128 0xf
	.byte	0x68
	.byte	0x9
	.byte	0x7a
	.long	0x5c6
	.uleb128 0x8
	.long	.LASF87
	.byte	0x9
	.byte	0x7b
	.long	0x2b9
	.byte	0
	.uleb128 0x8
	.long	.LASF88
	.byte	0x9
	.byte	0x7c
	.long	0x2b9
	.byte	0x4
	.uleb128 0x8
	.long	.LASF89
	.byte	0x9
	.byte	0x7d
	.long	0x2b9
	.byte	0x8
	.uleb128 0x8
	.long	.LASF90
	.byte	0x9
	.byte	0x7e
	.long	0x2b9
	.byte	0xc
	.uleb128 0x8
	.long	.LASF91
	.byte	0x9
	.byte	0x7f
	.long	0x2b9
	.byte	0x10
	.uleb128 0x8
	.long	.LASF92
	.byte	0x9
	.byte	0x80
	.long	0x2b9
	.byte	0x14
	.uleb128 0x8
	.long	.LASF93
	.byte	0x9
	.byte	0x82
	.long	0x5c6
	.byte	0x18
	.uleb128 0x8
	.long	.LASF94
	.byte	0x9
	.byte	0x83
	.long	0x5cc
	.byte	0x20
	.uleb128 0x8
	.long	.LASF95
	.byte	0x9
	.byte	0x84
	.long	0x5d2
	.byte	0x28
	.uleb128 0x8
	.long	.LASF96
	.byte	0x9
	.byte	0x85
	.long	0x5d8
	.byte	0x30
	.uleb128 0x8
	.long	.LASF97
	.byte	0x9
	.byte	0x87
	.long	0x2b9
	.byte	0x38
	.uleb128 0x8
	.long	.LASF98
	.byte	0x9
	.byte	0x89
	.long	0x5de
	.byte	0x40
	.uleb128 0x8
	.long	.LASF99
	.byte	0x9
	.byte	0x8c
	.long	0x5e4
	.byte	0x48
	.uleb128 0x8
	.long	.LASF100
	.byte	0x9
	.byte	0x8d
	.long	0x5ea
	.byte	0x50
	.uleb128 0xe
	.string	"sil"
	.byte	0x9
	.byte	0x8f
	.long	0x37c
	.byte	0x58
	.uleb128 0x8
	.long	.LASF101
	.byte	0x9
	.byte	0x91
	.long	0x5f0
	.byte	0x60
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x371
	.uleb128 0x6
	.byte	0x8
	.long	0x411
	.uleb128 0x6
	.byte	0x8
	.long	0x46a
	.uleb128 0x6
	.byte	0x8
	.long	0x5de
	.uleb128 0x6
	.byte	0x8
	.long	0x3b3
	.uleb128 0x6
	.byte	0x8
	.long	0x37c
	.uleb128 0x6
	.byte	0x8
	.long	0x2b9
	.uleb128 0x6
	.byte	0x8
	.long	0x5f6
	.uleb128 0x6
	.byte	0x8
	.long	0x5fc
	.uleb128 0x6
	.byte	0x8
	.long	0x4f2
	.uleb128 0x2
	.long	.LASF102
	.byte	0x9
	.byte	0x96
	.long	0x4fd
	.uleb128 0xf
	.byte	0x28
	.byte	0xa
	.byte	0x47
	.long	0x66a
	.uleb128 0x8
	.long	.LASF103
	.byte	0xa
	.byte	0x48
	.long	0x8f
	.byte	0
	.uleb128 0x8
	.long	.LASF94
	.byte	0xa
	.byte	0x49
	.long	0x5e4
	.byte	0x8
	.uleb128 0x8
	.long	.LASF104
	.byte	0xa
	.byte	0x4a
	.long	0x2b9
	.byte	0x10
	.uleb128 0xe
	.string	"alt"
	.byte	0xa
	.byte	0x4b
	.long	0x3a8
	.byte	0x14
	.uleb128 0x8
	.long	.LASF105
	.byte	0xa
	.byte	0x4c
	.long	0x3a8
	.byte	0x18
	.uleb128 0x8
	.long	.LASF106
	.byte	0xa
	.byte	0x4d
	.long	0x2b9
	.byte	0x1c
	.uleb128 0x8
	.long	.LASF107
	.byte	0xa
	.byte	0x51
	.long	0x66a
	.byte	0x20
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x3a8
	.uleb128 0x2
	.long	.LASF108
	.byte	0xa
	.byte	0x52
	.long	0x60d
	.uleb128 0xf
	.byte	0x58
	.byte	0xa
	.byte	0x54
	.long	0x72b
	.uleb128 0x8
	.long	.LASF109
	.byte	0xa
	.byte	0x55
	.long	0x72b
	.byte	0
	.uleb128 0xe
	.string	"pht"
	.byte	0xa
	.byte	0x56
	.long	0x5c6
	.byte	0x8
	.uleb128 0x8
	.long	.LASF110
	.byte	0xa
	.byte	0x57
	.long	0x731
	.byte	0x10
	.uleb128 0x8
	.long	.LASF87
	.byte	0xa
	.byte	0x58
	.long	0x2b9
	.byte	0x18
	.uleb128 0x8
	.long	.LASF103
	.byte	0xa
	.byte	0x59
	.long	0x737
	.byte	0x20
	.uleb128 0xe
	.string	"ht"
	.byte	0xa
	.byte	0x5a
	.long	0x5c6
	.byte	0x28
	.uleb128 0x8
	.long	.LASF111
	.byte	0xa
	.byte	0x5b
	.long	0x2b9
	.byte	0x30
	.uleb128 0x8
	.long	.LASF112
	.byte	0xa
	.byte	0x5c
	.long	0x2b9
	.byte	0x34
	.uleb128 0x8
	.long	.LASF113
	.byte	0xa
	.byte	0x5d
	.long	0x2b9
	.byte	0x38
	.uleb128 0x8
	.long	.LASF114
	.byte	0xa
	.byte	0x5e
	.long	0x2b9
	.byte	0x3c
	.uleb128 0x8
	.long	.LASF115
	.byte	0xa
	.byte	0x5f
	.long	0x66a
	.byte	0x40
	.uleb128 0x8
	.long	.LASF116
	.byte	0xa
	.byte	0x62
	.long	0x3a8
	.byte	0x48
	.uleb128 0x8
	.long	.LASF117
	.byte	0xa
	.byte	0x63
	.long	0x3a8
	.byte	0x4c
	.uleb128 0x8
	.long	.LASF118
	.byte	0xa
	.byte	0x64
	.long	0x3a8
	.byte	0x50
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x602
	.uleb128 0x6
	.byte	0x8
	.long	0x8f
	.uleb128 0x6
	.byte	0x8
	.long	0x670
	.uleb128 0x2
	.long	.LASF119
	.byte	0xa
	.byte	0x65
	.long	0x67b
	.uleb128 0xf
	.byte	0x20
	.byte	0xb
	.byte	0x3e
	.long	0x780
	.uleb128 0x8
	.long	.LASF120
	.byte	0xb
	.byte	0x3f
	.long	0x780
	.byte	0
	.uleb128 0x8
	.long	.LASF121
	.byte	0xb
	.byte	0x41
	.long	0x5ea
	.byte	0x8
	.uleb128 0xe
	.string	"lw"
	.byte	0xb
	.byte	0x43
	.long	0x2e5
	.byte	0x10
	.uleb128 0xe
	.string	"wip"
	.byte	0xb
	.byte	0x44
	.long	0x2e5
	.byte	0x18
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x73d
	.uleb128 0x2
	.long	.LASF122
	.byte	0xb
	.byte	0x45
	.long	0x748
	.uleb128 0x12
	.long	.LASF128
	.byte	0x1
	.byte	0x44
	.long	0x87d
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x87d
	.uleb128 0x13
	.long	.LASF120
	.byte	0x1
	.byte	0x44
	.long	0x780
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2152
	.uleb128 0x13
	.long	.LASF123
	.byte	0x1
	.byte	0x44
	.long	0x8f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2160
	.uleb128 0x13
	.long	.LASF124
	.byte	0x1
	.byte	0x44
	.long	0x2e5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2168
	.uleb128 0x13
	.long	.LASF125
	.byte	0x1
	.byte	0x44
	.long	0x2e5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2176
	.uleb128 0x14
	.string	"lw"
	.byte	0x1
	.byte	0x45
	.long	0x2e5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2184
	.uleb128 0x14
	.string	"wip"
	.byte	0x1
	.byte	0x45
	.long	0x2e5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2192
	.uleb128 0x15
	.string	"w"
	.byte	0x1
	.byte	0x47
	.long	0x3a8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2132
	.uleb128 0x15
	.string	"bw"
	.byte	0x1
	.byte	0x47
	.long	0x3a8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2124
	.uleb128 0x16
	.long	.LASF121
	.byte	0x1
	.byte	0x48
	.long	0x2e5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2120
	.uleb128 0x15
	.string	"fp"
	.byte	0x1
	.byte	0x49
	.long	0x883
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2104
	.uleb128 0x16
	.long	.LASF126
	.byte	0x1
	.byte	0x4a
	.long	0x889
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2096
	.uleb128 0x15
	.string	"wd"
	.byte	0x1
	.byte	0x4a
	.long	0x889
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1072
	.uleb128 0x15
	.string	"k"
	.byte	0x1
	.byte	0x4b
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2128
	.uleb128 0x16
	.long	.LASF127
	.byte	0x1
	.byte	0x4c
	.long	0x87d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2112
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x786
	.uleb128 0x6
	.byte	0x8
	.long	0x9c
	.uleb128 0xb
	.long	0x95
	.long	0x89a
	.uleb128 0x17
	.long	0x86
	.value	0x3ff
	.byte	0
	.uleb128 0x18
	.long	.LASF129
	.byte	0x1
	.byte	0x8f
	.long	0x2b9
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x8d4
	.uleb128 0x14
	.string	"f"
	.byte	0x1
	.byte	0x8f
	.long	0x87d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x14
	.string	"w"
	.byte	0x1
	.byte	0x8f
	.long	0x3a8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x19
	.long	.LASF134
	.byte	0x1
	.byte	0x97
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x14
	.string	"f"
	.byte	0x1
	.byte	0x97
	.long	0x87d
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
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
	.uleb128 0x10
	.uleb128 0x4
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
	.uleb128 0x11
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
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
	.uleb128 0x19
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
.LASF113:
	.string	"filler_start"
.LASF125:
	.string	"fillprob"
.LASF32:
	.string	"_shortbuf"
.LASF118:
	.string	"silwid"
.LASF133:
	.string	"_IO_lock_t"
.LASF81:
	.string	"phone_t"
.LASF128:
	.string	"fillpen_init"
.LASF21:
	.string	"_IO_buf_end"
.LASF64:
	.string	"s3pid_t"
.LASF19:
	.string	"_IO_write_end"
.LASF3:
	.string	"unsigned int"
.LASF57:
	.string	"next"
.LASF13:
	.string	"_flags"
.LASF52:
	.string	"int16"
.LASF56:
	.string	"hash_entry_s"
.LASF58:
	.string	"hash_entry_t"
.LASF99:
	.string	"sen2cimap"
.LASF25:
	.string	"_markers"
.LASF77:
	.string	"ciphone_t"
.LASF101:
	.string	"wpos_ci_lclist"
.LASF82:
	.string	"ph_rc_s"
.LASF83:
	.string	"ph_rc_t"
.LASF68:
	.string	"s3senid_t"
.LASF96:
	.string	"sseq"
.LASF87:
	.string	"n_ciphone"
.LASF105:
	.string	"basewid"
.LASF46:
	.string	"_pos"
.LASF100:
	.string	"ciphone2n_cd_sen"
.LASF122:
	.string	"fillpen_t"
.LASF24:
	.string	"_IO_save_end"
.LASF132:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/482.sphinx3/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF49:
	.string	"float"
.LASF51:
	.string	"int32"
.LASF127:
	.string	"_fillpen"
.LASF48:
	.string	"long long unsigned int"
.LASF123:
	.string	"file"
.LASF95:
	.string	"phone"
.LASF104:
	.string	"pronlen"
.LASF23:
	.string	"_IO_backup_base"
.LASF34:
	.string	"_offset"
.LASF112:
	.string	"n_word"
.LASF93:
	.string	"ciphone_ht"
.LASF27:
	.string	"_fileno"
.LASF72:
	.string	"WORD_POSN_INTERNAL"
.LASF7:
	.string	"size_t"
.LASF16:
	.string	"_IO_read_base"
.LASF44:
	.string	"_next"
.LASF121:
	.string	"prob"
.LASF78:
	.string	"ssid"
.LASF11:
	.string	"char"
.LASF40:
	.string	"_mode"
.LASF117:
	.string	"finishwid"
.LASF43:
	.string	"_IO_marker"
.LASF14:
	.string	"_IO_read_ptr"
.LASF106:
	.string	"n_comp"
.LASF53:
	.string	"int8"
.LASF111:
	.string	"max_words"
.LASF62:
	.string	"hash_table_t"
.LASF124:
	.string	"silprob"
.LASF17:
	.string	"_IO_write_base"
.LASF88:
	.string	"n_phone"
.LASF47:
	.string	"long long int"
.LASF22:
	.string	"_IO_save_base"
.LASF120:
	.string	"dict"
.LASF76:
	.string	"filler"
.LASF73:
	.string	"WORD_POSN_UNDEFINED"
.LASF60:
	.string	"size"
.LASF114:
	.string	"filler_end"
.LASF94:
	.string	"ciphone"
.LASF71:
	.string	"WORD_POSN_SINGLE"
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
.LASF61:
	.string	"nocase"
.LASF85:
	.string	"rclist"
.LASF31:
	.string	"_vtable_offset"
.LASF67:
	.string	"s3wid_t"
.LASF134:
	.string	"fillpen_free"
.LASF55:
	.string	"float64"
.LASF130:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF15:
	.string	"_IO_read_end"
.LASF84:
	.string	"ph_lc_s"
.LASF86:
	.string	"ph_lc_t"
.LASF92:
	.string	"n_tmat"
.LASF5:
	.string	"short int"
.LASF119:
	.string	"dict_t"
.LASF6:
	.string	"long int"
.LASF59:
	.string	"table"
.LASF115:
	.string	"comp_head"
.LASF65:
	.string	"s3ssid_t"
.LASF103:
	.string	"word"
.LASF102:
	.string	"mdef_t"
.LASF97:
	.string	"n_sseq"
.LASF75:
	.string	"name"
.LASF91:
	.string	"n_sen"
.LASF33:
	.string	"_lock"
.LASF129:
	.string	"fillpen"
.LASF10:
	.string	"sizetype"
.LASF0:
	.string	"long unsigned int"
.LASF29:
	.string	"_old_offset"
.LASF42:
	.string	"_IO_FILE"
.LASF90:
	.string	"n_ci_sen"
.LASF1:
	.string	"unsigned char"
.LASF45:
	.string	"_sbuf"
.LASF126:
	.string	"line"
.LASF109:
	.string	"mdef"
.LASF18:
	.string	"_IO_write_ptr"
.LASF66:
	.string	"s3tmatid_t"
.LASF108:
	.string	"dictword_t"
.LASF70:
	.string	"WORD_POSN_END"
.LASF63:
	.string	"s3cipid_t"
.LASF110:
	.string	"ciphone_str"
.LASF98:
	.string	"cd2cisen"
.LASF79:
	.string	"tmat"
.LASF8:
	.string	"__off_t"
.LASF74:
	.string	"word_posn_t"
.LASF89:
	.string	"n_emit_state"
.LASF4:
	.string	"signed char"
.LASF2:
	.string	"short unsigned int"
.LASF80:
	.string	"wpos"
.LASF54:
	.string	"uint8"
.LASF50:
	.string	"double"
.LASF69:
	.string	"WORD_POSN_BEGIN"
.LASF26:
	.string	"_chain"
.LASF12:
	.string	"FILE"
.LASF28:
	.string	"_flags2"
.LASF131:
	.string	"fillpen.c"
.LASF107:
	.string	"comp"
.LASF30:
	.string	"_cur_column"
.LASF116:
	.string	"startwid"
.LASF9:
	.string	"__off64_t"
.LASF41:
	.string	"_unused2"
.LASF20:
	.string	"_IO_buf_base"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
