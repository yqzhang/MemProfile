	.file	"trace.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 trace.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.string	"trace.c"
	.text
	.globl	P7AllocTrace
	.type	P7AllocTrace, @function
P7AllocTrace:
.LFB2:
	.file 1 "trace.c"
	.loc 1 37 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	%edi, -20(%rbp)	# tlen, tlen
	movq	%rsi, -32(%rbp)	# ret_tr, ret_tr
	.loc 1 40 0
	movl	$32, %edx	#,
	movl	$40, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_malloc	#
	movq	%rax, -8(%rbp)	# tmp67, tr
	.loc 1 41 0
	movl	-20(%rbp), %eax	# tlen, tmp68
	cltq
	movq	%rax, %rdx	# D.9149,
	movl	$41, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_malloc	#
	movq	-8(%rbp), %rdx	# tr, tmp69
	movq	%rax, 8(%rdx)	# D.9150, tr_1->statetype
	.loc 1 42 0
	movl	-20(%rbp), %eax	# tlen, tmp70
	cltq
	salq	$2, %rax	#, D.9149
	movq	%rax, %rdx	# D.9149,
	movl	$42, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_malloc	#
	movq	-8(%rbp), %rdx	# tr, tmp71
	movq	%rax, 16(%rdx)	# D.9150, tr_1->nodeidx
	.loc 1 43 0
	movl	-20(%rbp), %eax	# tlen, tmp72
	cltq
	salq	$2, %rax	#, D.9149
	movq	%rax, %rdx	# D.9149,
	movl	$43, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_malloc	#
	movq	-8(%rbp), %rdx	# tr, tmp73
	movq	%rax, 24(%rdx)	# D.9150, tr_1->pos
	.loc 1 44 0
	movq	-32(%rbp), %rax	# ret_tr, tmp74
	movq	-8(%rbp), %rdx	# tr, tmp75
	movq	%rdx, (%rax)	# tmp75, *ret_tr_11(D)
	.loc 1 45 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	P7AllocTrace, .-P7AllocTrace
	.globl	P7ReallocTrace
	.type	P7ReallocTrace, @function
P7ReallocTrace:
.LFB3:
	.loc 1 48 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# tr, tr
	movl	%esi, -12(%rbp)	# tlen, tlen
	.loc 1 49 0
	movl	-12(%rbp), %eax	# tlen, tmp70
	movslq	%eax, %rdx	# tmp70, D.9152
	movq	-8(%rbp), %rax	# tr, tmp71
	movq	8(%rax), %rax	# tr_3(D)->statetype, D.9153
	movq	%rdx, %rcx	# D.9152,
	movq	%rax, %rdx	# D.9153,
	movl	$49, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_realloc	#
	movq	-8(%rbp), %rdx	# tr, tmp72
	movq	%rax, 8(%rdx)	# D.9154, tr_3(D)->statetype
	.loc 1 50 0
	movl	-12(%rbp), %eax	# tlen, tmp73
	cltq
	leaq	0(,%rax,4), %rdx	#, D.9152
	movq	-8(%rbp), %rax	# tr, tmp74
	movq	16(%rax), %rax	# tr_3(D)->nodeidx, D.9155
	movq	%rdx, %rcx	# D.9152,
	movq	%rax, %rdx	# D.9155,
	movl	$50, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_realloc	#
	movq	-8(%rbp), %rdx	# tr, tmp75
	movq	%rax, 16(%rdx)	# D.9154, tr_3(D)->nodeidx
	.loc 1 51 0
	movl	-12(%rbp), %eax	# tlen, tmp76
	cltq
	leaq	0(,%rax,4), %rdx	#, D.9152
	movq	-8(%rbp), %rax	# tr, tmp77
	movq	24(%rax), %rax	# tr_3(D)->pos, D.9155
	movq	%rdx, %rcx	# D.9152,
	movq	%rax, %rdx	# D.9155,
	movl	$51, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_realloc	#
	movq	-8(%rbp), %rdx	# tr, tmp78
	movq	%rax, 24(%rdx)	# D.9154, tr_3(D)->pos
	.loc 1 52 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	P7ReallocTrace, .-P7ReallocTrace
	.globl	P7FreeTrace
	.type	P7FreeTrace, @function
P7FreeTrace:
.LFB4:
	.loc 1 55 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# tr, tr
	.loc 1 56 0
	cmpq	$0, -8(%rbp)	#, tr
	jne	.L4	#,
	.loc 1 56 0 is_stmt 0 discriminator 1
	jmp	.L3	#
.L4:
	.loc 1 57 0 is_stmt 1
	movq	-8(%rbp), %rax	# tr, tmp62
	movq	24(%rax), %rax	# tr_1(D)->pos, D.9156
	movq	%rax, %rdi	# D.9156,
	call	free	#
	.loc 1 58 0
	movq	-8(%rbp), %rax	# tr, tmp63
	movq	16(%rax), %rax	# tr_1(D)->nodeidx, D.9156
	movq	%rax, %rdi	# D.9156,
	call	free	#
	.loc 1 59 0
	movq	-8(%rbp), %rax	# tr, tmp64
	movq	8(%rax), %rax	# tr_1(D)->statetype, D.9157
	movq	%rax, %rdi	# D.9157,
	call	free	#
	.loc 1 60 0
	movq	-8(%rbp), %rax	# tr, tmp65
	movq	%rax, %rdi	# tmp65,
	call	free	#
.L3:
	.loc 1 61 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	P7FreeTrace, .-P7FreeTrace
	.globl	TraceSet
	.type	TraceSet, @function
TraceSet:
.LFB5:
	.loc 1 80 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# tr, tr
	movl	%esi, -12(%rbp)	# tpos, tpos
	movl	%edx, %eax	# type, tmp70
	movl	%ecx, -20(%rbp)	# idx, idx
	movl	%r8d, -24(%rbp)	# pos, pos
	movb	%al, -16(%rbp)	# tmp70, type
	.loc 1 81 0
	movq	-8(%rbp), %rax	# tr, tmp71
	movq	8(%rax), %rdx	# tr_1(D)->statetype, D.9158
	movl	-12(%rbp), %eax	# tpos, tmp72
	cltq
	addq	%rax, %rdx	# D.9159, D.9158
	movzbl	-16(%rbp), %eax	# type, tmp73
	movb	%al, (%rdx)	# tmp73, *_5
	.loc 1 82 0
	movq	-8(%rbp), %rax	# tr, tmp74
	movq	16(%rax), %rax	# tr_1(D)->nodeidx, D.9160
	movl	-12(%rbp), %edx	# tpos, tmp75
	movslq	%edx, %rdx	# tmp75, D.9161
	salq	$2, %rdx	#, D.9161
	addq	%rax, %rdx	# D.9160, D.9160
	movl	-20(%rbp), %eax	# idx, tmp76
	movl	%eax, (%rdx)	# tmp76, *_10
	.loc 1 83 0
	movq	-8(%rbp), %rax	# tr, tmp77
	movq	24(%rax), %rax	# tr_1(D)->pos, D.9160
	movl	-12(%rbp), %edx	# tpos, tmp78
	movslq	%edx, %rdx	# tmp78, D.9161
	salq	$2, %rdx	#, D.9161
	addq	%rax, %rdx	# D.9160, D.9160
	movl	-24(%rbp), %eax	# pos, tmp79
	movl	%eax, (%rdx)	# tmp79, *_15
	.loc 1 84 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	TraceSet, .-TraceSet
	.globl	MergeTraceArrays
	.type	MergeTraceArrays, @function
MergeTraceArrays:
.LFB6:
	.loc 1 106 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# t1, t1
	movl	%esi, -28(%rbp)	# n1, n1
	movq	%rdx, -40(%rbp)	# t2, t2
	movl	%ecx, -32(%rbp)	# n2, n2
	.loc 1 110 0
	movl	-32(%rbp), %eax	# n2, tmp79
	movl	-28(%rbp), %edx	# n1, tmp80
	addl	%edx, %eax	# tmp80, D.9162
	cltq
	salq	$3, %rax	#, D.9163
	movq	%rax, %rdx	# D.9163,
	movl	$110, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_malloc	#
	movq	%rax, -8(%rbp)	# tmp81, tr
	.loc 1 111 0
	movl	$0, -12(%rbp)	#, i
	jmp	.L8	#
.L9:
	.loc 1 111 0 is_stmt 0 discriminator 2
	movl	-12(%rbp), %eax	# i, tmp82
	cltq
	leaq	0(,%rax,8), %rdx	#, D.9163
	movq	-8(%rbp), %rax	# tr, tmp83
	addq	%rax, %rdx	# tmp83, D.9164
	movl	-12(%rbp), %eax	# i, tmp84
	cltq
	leaq	0(,%rax,8), %rcx	#, D.9163
	movq	-24(%rbp), %rax	# t1, tmp85
	addq	%rcx, %rax	# D.9163, D.9164
	movq	(%rax), %rax	# *_16, D.9165
	movq	%rax, (%rdx)	# D.9165, *_12
	addl	$1, -12(%rbp)	#, i
.L8:
	.loc 1 111 0 discriminator 1
	movl	-12(%rbp), %eax	# i, tmp86
	cmpl	-28(%rbp), %eax	# n1, tmp86
	jl	.L9	#,
	.loc 1 112 0 is_stmt 1
	movl	$0, -12(%rbp)	#, i
	jmp	.L10	#
.L11:
	.loc 1 112 0 is_stmt 0 discriminator 2
	movl	-12(%rbp), %eax	# i, tmp87
	movl	-28(%rbp), %edx	# n1, tmp88
	addl	%edx, %eax	# tmp88, D.9162
	cltq
	leaq	0(,%rax,8), %rdx	#, D.9163
	movq	-8(%rbp), %rax	# tr, tmp89
	addq	%rax, %rdx	# tmp89, D.9164
	movl	-12(%rbp), %eax	# i, tmp90
	cltq
	leaq	0(,%rax,8), %rcx	#, D.9163
	movq	-40(%rbp), %rax	# t2, tmp91
	addq	%rcx, %rax	# D.9163, D.9164
	movq	(%rax), %rax	# *_27, D.9165
	movq	%rax, (%rdx)	# D.9165, *_23
	addl	$1, -12(%rbp)	#, i
.L10:
	.loc 1 112 0 discriminator 1
	movl	-12(%rbp), %eax	# i, tmp92
	cmpl	-32(%rbp), %eax	# n2, tmp92
	jl	.L11	#,
	.loc 1 113 0 is_stmt 1
	movq	-24(%rbp), %rax	# t1, tmp93
	movq	%rax, %rdi	# tmp93,
	call	free	#
	.loc 1 114 0
	movq	-40(%rbp), %rax	# t2, tmp94
	movq	%rax, %rdi	# tmp94,
	call	free	#
	.loc 1 115 0
	movq	-8(%rbp), %rax	# tr, D.9164
	.loc 1 116 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	MergeTraceArrays, .-MergeTraceArrays
	.globl	P7ReverseTrace
	.type	P7ReverseTrace, @function
P7ReverseTrace:
.LFB7:
	.loc 1 141 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# tr, tr
	.loc 1 149 0
	movq	-40(%rbp), %rax	# tr, tmp94
	movl	(%rax), %eax	# tr_3(D)->tlen, D.9166
	cltq
	movq	%rax, %rdx	# D.9167,
	movl	$149, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_malloc	#
	movq	%rax, -24(%rbp)	# tmp95, statetype
	.loc 1 150 0
	movq	-40(%rbp), %rax	# tr, tmp96
	movl	(%rax), %eax	# tr_3(D)->tlen, D.9166
	cltq
	salq	$2, %rax	#, D.9167
	movq	%rax, %rdx	# D.9167,
	movl	$150, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_malloc	#
	movq	%rax, -16(%rbp)	# tmp97, nodeidx
	.loc 1 151 0
	movq	-40(%rbp), %rax	# tr, tmp98
	movl	(%rax), %eax	# tr_3(D)->tlen, D.9166
	cltq
	salq	$2, %rax	#, D.9167
	movq	%rax, %rdx	# D.9167,
	movl	$151, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_malloc	#
	movq	%rax, -8(%rbp)	# tmp99, pos
	.loc 1 155 0
	movq	-40(%rbp), %rax	# tr, tmp100
	movl	(%rax), %eax	# tr_3(D)->tlen, D.9166
	subl	$1, %eax	#, tmp101
	movl	%eax, -32(%rbp)	# tmp101, opos
	movl	$0, -28(%rbp)	#, npos
	jmp	.L14	#
.L15:
	.loc 1 157 0 discriminator 2
	movl	-28(%rbp), %eax	# npos, tmp102
	movslq	%eax, %rdx	# tmp102, D.9168
	movq	-24(%rbp), %rax	# statetype, tmp103
	addq	%rax, %rdx	# tmp103, D.9169
	movq	-40(%rbp), %rax	# tr, tmp104
	movq	8(%rax), %rcx	# tr_3(D)->statetype, D.9169
	movl	-32(%rbp), %eax	# opos, tmp105
	cltq
	addq	%rcx, %rax	# D.9169, D.9169
	movzbl	(%rax), %eax	# *_23, D.9170
	movb	%al, (%rdx)	# D.9170, *_20
	.loc 1 158 0 discriminator 2
	movl	-28(%rbp), %eax	# npos, tmp106
	cltq
	leaq	0(,%rax,4), %rdx	#, D.9167
	movq	-16(%rbp), %rax	# nodeidx, tmp107
	addq	%rax, %rdx	# tmp107, D.9171
	movq	-40(%rbp), %rax	# tr, tmp108
	movq	16(%rax), %rax	# tr_3(D)->nodeidx, D.9171
	movl	-32(%rbp), %ecx	# opos, tmp109
	movslq	%ecx, %rcx	# tmp109, D.9167
	salq	$2, %rcx	#, D.9167
	addq	%rcx, %rax	# D.9167, D.9171
	movl	(%rax), %eax	# *_31, D.9166
	movl	%eax, (%rdx)	# D.9166, *_27
	.loc 1 159 0 discriminator 2
	movl	-28(%rbp), %eax	# npos, tmp110
	cltq
	leaq	0(,%rax,4), %rdx	#, D.9167
	movq	-8(%rbp), %rax	# pos, tmp111
	addq	%rax, %rdx	# tmp111, D.9171
	movq	-40(%rbp), %rax	# tr, tmp112
	movq	24(%rax), %rax	# tr_3(D)->pos, D.9171
	movl	-32(%rbp), %ecx	# opos, tmp113
	movslq	%ecx, %rcx	# tmp113, D.9167
	salq	$2, %rcx	#, D.9167
	addq	%rcx, %rax	# D.9167, D.9171
	movl	(%rax), %eax	# *_39, D.9166
	movl	%eax, (%rdx)	# D.9166, *_35
	.loc 1 155 0 discriminator 2
	addl	$1, -28(%rbp)	#, npos
	subl	$1, -32(%rbp)	#, opos
.L14:
	.loc 1 155 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# tr, tmp114
	movl	(%rax), %eax	# tr_3(D)->tlen, D.9166
	cmpl	-28(%rbp), %eax	# npos, D.9166
	jg	.L15	#,
	.loc 1 164 0 is_stmt 1
	movq	-40(%rbp), %rax	# tr, tmp115
	movq	8(%rax), %rax	# tr_3(D)->statetype, D.9169
	movq	%rax, %rdi	# D.9169,
	call	free	#
	.loc 1 165 0
	movq	-40(%rbp), %rax	# tr, tmp116
	movq	16(%rax), %rax	# tr_3(D)->nodeidx, D.9171
	movq	%rax, %rdi	# D.9171,
	call	free	#
	.loc 1 166 0
	movq	-40(%rbp), %rax	# tr, tmp117
	movq	24(%rax), %rax	# tr_3(D)->pos, D.9171
	movq	%rax, %rdi	# D.9171,
	call	free	#
	.loc 1 167 0
	movq	-40(%rbp), %rax	# tr, tmp118
	movq	-24(%rbp), %rdx	# statetype, tmp119
	movq	%rdx, 8(%rax)	# tmp119, tr_3(D)->statetype
	.loc 1 168 0
	movq	-40(%rbp), %rax	# tr, tmp120
	movq	-16(%rbp), %rdx	# nodeidx, tmp121
	movq	%rdx, 16(%rax)	# tmp121, tr_3(D)->nodeidx
	.loc 1 169 0
	movq	-40(%rbp), %rax	# tr, tmp122
	movq	-8(%rbp), %rdx	# pos, tmp123
	movq	%rdx, 24(%rax)	# tmp123, tr_3(D)->pos
	.loc 1 170 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	P7ReverseTrace, .-P7ReverseTrace
	.section	.rodata
	.align 8
.LC1:
	.string	"illegal state transition %s->%s in traceback"
.LC2:
	.string	"illegal state %s in traceback"
	.text
	.globl	P7TraceCount
	.type	P7TraceCount, @function
P7TraceCount:
.LFB8:
	.loc 1 188 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$56, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)	# hmm, hmm
	movq	%rsi, -48(%rbp)	# dsq, dsq
	movss	%xmm0, -52(%rbp)	# wt, wt
	movq	%rdx, -64(%rbp)	# tr, tr
	.loc 1 192 0
	movl	$0, -24(%rbp)	#, tpos
	jmp	.L17	#
.L69:
	.loc 1 194 0
	movq	-64(%rbp), %rax	# tr, tmp489
	movq	24(%rax), %rax	# tr_3(D)->pos, D.9173
	movl	-24(%rbp), %edx	# tpos, tmp490
	movslq	%edx, %rdx	# tmp490, D.9174
	salq	$2, %rdx	#, D.9174
	addq	%rdx, %rax	# D.9174, D.9173
	movl	(%rax), %eax	# *_8, tmp491
	movl	%eax, -20(%rbp)	# tmp491, i
	.loc 1 199 0
	movq	-64(%rbp), %rax	# tr, tmp492
	movq	8(%rax), %rdx	# tr_3(D)->statetype, D.9175
	movl	-24(%rbp), %eax	# tpos, tmp493
	cltq
	addq	%rdx, %rax	# D.9175, D.9175
	movzbl	(%rax), %eax	# *_12, D.9177
	cmpb	$1, %al	#, D.9177
	jne	.L18	#,
	.loc 1 200 0
	movl	-20(%rbp), %eax	# i, tmp494
	movslq	%eax, %rdx	# tmp494, D.9176
	movq	-48(%rbp), %rax	# dsq, tmp495
	addq	%rdx, %rax	# D.9176, D.9175
	movzbl	(%rax), %eax	# *_16, D.9177
	movsbl	%al, %ecx	# D.9177, D.9172
	movq	-40(%rbp), %rax	# hmm, tmp496
	movq	152(%rax), %rdx	# hmm_19(D)->mat, D.9178
	movq	-64(%rbp), %rax	# tr, tmp497
	movq	16(%rax), %rax	# tr_3(D)->nodeidx, D.9173
	movl	-24(%rbp), %esi	# tpos, tmp498
	movslq	%esi, %rsi	# tmp498, D.9174
	salq	$2, %rsi	#, D.9174
	addq	%rsi, %rax	# D.9174, D.9173
	movl	(%rax), %eax	# *_24, D.9172
	cltq
	salq	$3, %rax	#, D.9174
	addq	%rdx, %rax	# D.9178, D.9178
	movq	(%rax), %rdx	# *_28, D.9179
	movl	-52(%rbp), %eax	# wt, tmp499
	movl	%eax, -56(%rbp)	# tmp499, %sfp
	movss	-56(%rbp), %xmm0	# %sfp,
	movl	%ecx, %esi	# D.9172,
	movq	%rdx, %rdi	# D.9179,
	call	P7CountSymbol	#
	jmp	.L19	#
.L18:
	.loc 1 201 0
	movq	-64(%rbp), %rax	# tr, tmp500
	movq	8(%rax), %rdx	# tr_3(D)->statetype, D.9175
	movl	-24(%rbp), %eax	# tpos, tmp501
	cltq
	addq	%rdx, %rax	# D.9175, D.9175
	movzbl	(%rax), %eax	# *_33, D.9177
	cmpb	$3, %al	#, D.9177
	jne	.L19	#,
	.loc 1 202 0
	movl	-20(%rbp), %eax	# i, tmp502
	movslq	%eax, %rdx	# tmp502, D.9176
	movq	-48(%rbp), %rax	# dsq, tmp503
	addq	%rdx, %rax	# D.9176, D.9175
	movzbl	(%rax), %eax	# *_36, D.9177
	movsbl	%al, %ecx	# D.9177, D.9172
	movq	-40(%rbp), %rax	# hmm, tmp504
	movq	160(%rax), %rdx	# hmm_19(D)->ins, D.9178
	movq	-64(%rbp), %rax	# tr, tmp505
	movq	16(%rax), %rax	# tr_3(D)->nodeidx, D.9173
	movl	-24(%rbp), %esi	# tpos, tmp506
	movslq	%esi, %rsi	# tmp506, D.9174
	salq	$2, %rsi	#, D.9174
	addq	%rsi, %rax	# D.9174, D.9173
	movl	(%rax), %eax	# *_43, D.9172
	cltq
	salq	$3, %rax	#, D.9174
	addq	%rdx, %rax	# D.9178, D.9178
	movq	(%rax), %rdx	# *_47, D.9179
	movl	-52(%rbp), %eax	# wt, tmp507
	movl	%eax, -56(%rbp)	# tmp507, %sfp
	movss	-56(%rbp), %xmm0	# %sfp,
	movl	%ecx, %esi	# D.9172,
	movq	%rdx, %rdi	# D.9179,
	call	P7CountSymbol	#
.L19:
	.loc 1 206 0
	movq	-64(%rbp), %rax	# tr, tmp508
	movq	8(%rax), %rdx	# tr_3(D)->statetype, D.9175
	movl	-24(%rbp), %eax	# tpos, tmp509
	cltq
	addq	%rdx, %rax	# D.9175, D.9175
	movzbl	(%rax), %eax	# *_51, D.9177
	movsbl	%al, %eax	# D.9177, D.9172
	cmpl	$10, %eax	#, D.9172
	ja	.L20	#,
	movl	%eax, %eax	# D.9172, tmp510
	movq	.L22(,%rax,8), %rax	#, tmp511
	jmp	*%rax	# tmp511
	.section	.rodata
	.align 8
	.align 4
.L22:
	.quad	.L20
	.quad	.L21
	.quad	.L23
	.quad	.L24
	.quad	.L77
	.quad	.L26
	.quad	.L27
	.quad	.L28
	.quad	.L29
	.quad	.L77
	.quad	.L31
	.text
.L26:
	.loc 1 210 0
	movq	-64(%rbp), %rax	# tr, tmp512
	movq	8(%rax), %rax	# tr_3(D)->statetype, D.9175
	movl	-24(%rbp), %edx	# tpos, tmp513
	movslq	%edx, %rdx	# tmp513, D.9176
	addq	$1, %rdx	#, D.9176
	addq	%rdx, %rax	# D.9176, D.9175
	movzbl	(%rax), %eax	# *_57, D.9177
	movsbl	%al, %eax	# D.9177, D.9172
	cmpl	$5, %eax	#, D.9172
	je	.L34	#,
	cmpl	$6, %eax	#, D.9172
	jne	.L70	#,
	.loc 1 211 0
	movq	-40(%rbp), %rax	# hmm, tmp514
	movss	172(%rax), %xmm0	# hmm_19(D)->xt, D.9180
	addss	-52(%rbp), %xmm0	# wt, D.9180
	movq	-40(%rbp), %rax	# hmm, tmp515
	movss	%xmm0, 172(%rax)	# D.9180, hmm_19(D)->xt
	jmp	.L36	#
.L34:
	.loc 1 212 0
	movq	-40(%rbp), %rax	# hmm, tmp516
	movss	176(%rax), %xmm0	# hmm_19(D)->xt, D.9180
	addss	-52(%rbp), %xmm0	# wt, D.9180
	movq	-40(%rbp), %rax	# hmm, tmp517
	movss	%xmm0, 176(%rax)	# D.9180, hmm_19(D)->xt
	jmp	.L36	#
.L70:
	.loc 1 216 0
	movq	-64(%rbp), %rax	# tr, tmp518
	movq	8(%rax), %rax	# tr_3(D)->statetype, D.9175
	movl	-24(%rbp), %edx	# tpos, tmp519
	movslq	%edx, %rdx	# tmp519, D.9176
	addq	$1, %rdx	#, D.9176
	addq	%rdx, %rax	# D.9176, D.9175
	movzbl	(%rax), %eax	# *_67, D.9177
	.loc 1 214 0
	movsbl	%al, %eax	# D.9177, D.9172
	movl	%eax, %edi	# D.9172,
	call	Statetype	#
	movq	%rax, %rbx	#, D.9175
	.loc 1 215 0
	movq	-64(%rbp), %rax	# tr, tmp520
	movq	8(%rax), %rdx	# tr_3(D)->statetype, D.9175
	movl	-24(%rbp), %eax	# tpos, tmp521
	cltq
	addq	%rdx, %rax	# D.9175, D.9175
	movzbl	(%rax), %eax	# *_73, D.9177
	.loc 1 214 0
	movsbl	%al, %eax	# D.9177, D.9172
	movl	%eax, %edi	# D.9172,
	call	Statetype	#
	movq	%rbx, %rdx	# D.9175,
	movq	%rax, %rsi	# D.9175,
	movl	$.LC1, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
	.loc 1 218 0
	jmp	.L32	#
.L36:
	jmp	.L32	#
.L27:
	.loc 1 220 0
	movq	-64(%rbp), %rax	# tr, tmp522
	movq	8(%rax), %rax	# tr_3(D)->statetype, D.9175
	movl	-24(%rbp), %edx	# tpos, tmp523
	movslq	%edx, %rdx	# tmp523, D.9176
	addq	$1, %rdx	#, D.9176
	addq	%rdx, %rax	# D.9176, D.9175
	movzbl	(%rax), %eax	# *_80, D.9177
	movsbl	%al, %eax	# D.9177, D.9172
	cmpl	$1, %eax	#, D.9172
	je	.L38	#,
	cmpl	$2, %eax	#, D.9172
	je	.L39	#,
	jmp	.L71	#
.L38:
	.loc 1 221 0
	movq	-40(%rbp), %rax	# hmm, tmp524
	movq	208(%rax), %rdx	# hmm_19(D)->begin, D.9179
	movq	-64(%rbp), %rax	# tr, tmp525
	movq	16(%rax), %rax	# tr_3(D)->nodeidx, D.9173
	movl	-24(%rbp), %ecx	# tpos, tmp526
	movslq	%ecx, %rcx	# tmp526, D.9176
	addq	$1, %rcx	#, D.9176
	salq	$2, %rcx	#, D.9176
	addq	%rcx, %rax	# D.9176, D.9173
	movl	(%rax), %eax	# *_88, D.9172
	cltq
	salq	$2, %rax	#, D.9174
	addq	%rax, %rdx	# D.9174, D.9179
	movq	-40(%rbp), %rax	# hmm, tmp527
	movq	208(%rax), %rcx	# hmm_19(D)->begin, D.9179
	movq	-64(%rbp), %rax	# tr, tmp528
	movq	16(%rax), %rax	# tr_3(D)->nodeidx, D.9173
	movl	-24(%rbp), %esi	# tpos, tmp529
	movslq	%esi, %rsi	# tmp529, D.9176
	addq	$1, %rsi	#, D.9176
	salq	$2, %rsi	#, D.9176
	addq	%rsi, %rax	# D.9176, D.9173
	movl	(%rax), %eax	# *_98, D.9172
	cltq
	salq	$2, %rax	#, D.9174
	addq	%rcx, %rax	# D.9179, D.9179
	movss	(%rax), %xmm0	# *_102, D.9180
	addss	-52(%rbp), %xmm0	# wt, D.9180
	movss	%xmm0, (%rdx)	# D.9180, *_92
	jmp	.L40	#
.L39:
	.loc 1 222 0
	movq	-40(%rbp), %rax	# hmm, tmp530
	movss	168(%rax), %xmm0	# hmm_19(D)->tbd1, D.9180
	addss	-52(%rbp), %xmm0	# wt, D.9180
	movq	-40(%rbp), %rax	# hmm, tmp531
	movss	%xmm0, 168(%rax)	# D.9180, hmm_19(D)->tbd1
	jmp	.L40	#
.L71:
	.loc 1 226 0
	movq	-64(%rbp), %rax	# tr, tmp532
	movq	8(%rax), %rax	# tr_3(D)->statetype, D.9175
	movl	-24(%rbp), %edx	# tpos, tmp533
	movslq	%edx, %rdx	# tmp533, D.9176
	addq	$1, %rdx	#, D.9176
	addq	%rdx, %rax	# D.9176, D.9175
	movzbl	(%rax), %eax	# *_110, D.9177
	.loc 1 224 0
	movsbl	%al, %eax	# D.9177, D.9172
	movl	%eax, %edi	# D.9172,
	call	Statetype	#
	movq	%rax, %rbx	#, D.9175
	.loc 1 225 0
	movq	-64(%rbp), %rax	# tr, tmp534
	movq	8(%rax), %rdx	# tr_3(D)->statetype, D.9175
	movl	-24(%rbp), %eax	# tpos, tmp535
	cltq
	addq	%rdx, %rax	# D.9175, D.9175
	movzbl	(%rax), %eax	# *_116, D.9177
	.loc 1 224 0
	movsbl	%al, %eax	# D.9177, D.9172
	movl	%eax, %edi	# D.9172,
	call	Statetype	#
	movq	%rbx, %rdx	# D.9175,
	movq	%rax, %rsi	# D.9175,
	movl	$.LC1, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
	.loc 1 228 0
	jmp	.L32	#
.L40:
	jmp	.L32	#
.L21:
	.loc 1 230 0
	movq	-64(%rbp), %rax	# tr, tmp536
	movq	8(%rax), %rax	# tr_3(D)->statetype, D.9175
	movl	-24(%rbp), %edx	# tpos, tmp537
	movslq	%edx, %rdx	# tmp537, D.9176
	addq	$1, %rdx	#, D.9176
	addq	%rdx, %rax	# D.9176, D.9175
	movzbl	(%rax), %eax	# *_123, D.9177
	movsbl	%al, %eax	# D.9177, D.9172
	cmpl	$2, %eax	#, D.9172
	je	.L42	#,
	cmpl	$2, %eax	#, D.9172
	jg	.L43	#,
	cmpl	$1, %eax	#, D.9172
	je	.L44	#,
	jmp	.L41	#
.L43:
	cmpl	$3, %eax	#, D.9172
	je	.L45	#,
	cmpl	$7, %eax	#, D.9172
	je	.L46	#,
	jmp	.L41	#
.L44:
	.loc 1 231 0
	movq	-40(%rbp), %rax	# hmm, tmp538
	movq	144(%rax), %rdx	# hmm_19(D)->t, D.9178
	movq	-64(%rbp), %rax	# tr, tmp539
	movq	16(%rax), %rax	# tr_3(D)->nodeidx, D.9173
	movl	-24(%rbp), %ecx	# tpos, tmp540
	movslq	%ecx, %rcx	# tmp540, D.9174
	salq	$2, %rcx	#, D.9174
	addq	%rcx, %rax	# D.9174, D.9173
	movl	(%rax), %eax	# *_130, D.9172
	cltq
	salq	$3, %rax	#, D.9174
	addq	%rdx, %rax	# D.9178, D.9178
	movq	(%rax), %rax	# *_134, D.9179
	movq	-40(%rbp), %rdx	# hmm, tmp541
	movq	144(%rdx), %rcx	# hmm_19(D)->t, D.9178
	movq	-64(%rbp), %rdx	# tr, tmp542
	movq	16(%rdx), %rdx	# tr_3(D)->nodeidx, D.9173
	movl	-24(%rbp), %esi	# tpos, tmp543
	movslq	%esi, %rsi	# tmp543, D.9174
	salq	$2, %rsi	#, D.9174
	addq	%rsi, %rdx	# D.9174, D.9173
	movl	(%rdx), %edx	# *_140, D.9172
	movslq	%edx, %rdx	# D.9172, D.9174
	salq	$3, %rdx	#, D.9174
	addq	%rcx, %rdx	# D.9178, D.9178
	movq	(%rdx), %rdx	# *_144, D.9179
	movss	(%rdx), %xmm0	# *_145, D.9180
	addss	-52(%rbp), %xmm0	# wt, D.9180
	movss	%xmm0, (%rax)	# D.9180, *_135
	jmp	.L47	#
.L45:
	.loc 1 232 0
	movq	-40(%rbp), %rax	# hmm, tmp544
	movq	144(%rax), %rdx	# hmm_19(D)->t, D.9178
	movq	-64(%rbp), %rax	# tr, tmp545
	movq	16(%rax), %rax	# tr_3(D)->nodeidx, D.9173
	movl	-24(%rbp), %ecx	# tpos, tmp546
	movslq	%ecx, %rcx	# tmp546, D.9174
	salq	$2, %rcx	#, D.9174
	addq	%rcx, %rax	# D.9174, D.9173
	movl	(%rax), %eax	# *_152, D.9172
	cltq
	salq	$3, %rax	#, D.9174
	addq	%rdx, %rax	# D.9178, D.9178
	movq	(%rax), %rax	# *_156, D.9179
	leaq	4(%rax), %rdx	#, D.9179
	movq	-40(%rbp), %rax	# hmm, tmp547
	movq	144(%rax), %rcx	# hmm_19(D)->t, D.9178
	movq	-64(%rbp), %rax	# tr, tmp548
	movq	16(%rax), %rax	# tr_3(D)->nodeidx, D.9173
	movl	-24(%rbp), %esi	# tpos, tmp549
	movslq	%esi, %rsi	# tmp549, D.9174
	salq	$2, %rsi	#, D.9174
	addq	%rsi, %rax	# D.9174, D.9173
	movl	(%rax), %eax	# *_163, D.9172
	cltq
	salq	$3, %rax	#, D.9174
	addq	%rcx, %rax	# D.9178, D.9178
	movq	(%rax), %rax	# *_167, D.9179
	addq	$4, %rax	#, D.9179
	movss	(%rax), %xmm0	# *_169, D.9180
	addss	-52(%rbp), %xmm0	# wt, D.9180
	movss	%xmm0, (%rdx)	# D.9180, *_158
	jmp	.L47	#
.L42:
	.loc 1 233 0
	movq	-40(%rbp), %rax	# hmm, tmp550
	movq	144(%rax), %rdx	# hmm_19(D)->t, D.9178
	movq	-64(%rbp), %rax	# tr, tmp551
	movq	16(%rax), %rax	# tr_3(D)->nodeidx, D.9173
	movl	-24(%rbp), %ecx	# tpos, tmp552
	movslq	%ecx, %rcx	# tmp552, D.9174
	salq	$2, %rcx	#, D.9174
	addq	%rcx, %rax	# D.9174, D.9173
	movl	(%rax), %eax	# *_176, D.9172
	cltq
	salq	$3, %rax	#, D.9174
	addq	%rdx, %rax	# D.9178, D.9178
	movq	(%rax), %rax	# *_180, D.9179
	leaq	8(%rax), %rdx	#, D.9179
	movq	-40(%rbp), %rax	# hmm, tmp553
	movq	144(%rax), %rcx	# hmm_19(D)->t, D.9178
	movq	-64(%rbp), %rax	# tr, tmp554
	movq	16(%rax), %rax	# tr_3(D)->nodeidx, D.9173
	movl	-24(%rbp), %esi	# tpos, tmp555
	movslq	%esi, %rsi	# tmp555, D.9174
	salq	$2, %rsi	#, D.9174
	addq	%rsi, %rax	# D.9174, D.9173
	movl	(%rax), %eax	# *_187, D.9172
	cltq
	salq	$3, %rax	#, D.9174
	addq	%rcx, %rax	# D.9178, D.9178
	movq	(%rax), %rax	# *_191, D.9179
	addq	$8, %rax	#, D.9179
	movss	(%rax), %xmm0	# *_193, D.9180
	addss	-52(%rbp), %xmm0	# wt, D.9180
	movss	%xmm0, (%rdx)	# D.9180, *_182
	jmp	.L47	#
.L46:
	.loc 1 234 0
	movq	-40(%rbp), %rax	# hmm, tmp556
	movq	216(%rax), %rdx	# hmm_19(D)->end, D.9179
	movq	-64(%rbp), %rax	# tr, tmp557
	movq	16(%rax), %rax	# tr_3(D)->nodeidx, D.9173
	movl	-24(%rbp), %ecx	# tpos, tmp558
	movslq	%ecx, %rcx	# tmp558, D.9174
	salq	$2, %rcx	#, D.9174
	addq	%rcx, %rax	# D.9174, D.9173
	movl	(%rax), %eax	# *_200, D.9172
	cltq
	salq	$2, %rax	#, D.9174
	addq	%rax, %rdx	# D.9174, D.9179
	movq	-40(%rbp), %rax	# hmm, tmp559
	movq	216(%rax), %rcx	# hmm_19(D)->end, D.9179
	movq	-64(%rbp), %rax	# tr, tmp560
	movq	16(%rax), %rax	# tr_3(D)->nodeidx, D.9173
	movl	-24(%rbp), %esi	# tpos, tmp561
	movslq	%esi, %rsi	# tmp561, D.9174
	salq	$2, %rsi	#, D.9174
	addq	%rsi, %rax	# D.9174, D.9173
	movl	(%rax), %eax	# *_209, D.9172
	cltq
	salq	$2, %rax	#, D.9174
	addq	%rcx, %rax	# D.9179, D.9179
	movss	(%rax), %xmm0	# *_213, D.9180
	addss	-52(%rbp), %xmm0	# wt, D.9180
	movss	%xmm0, (%rdx)	# D.9180, *_204
	jmp	.L47	#
.L41:
	.loc 1 238 0
	movq	-64(%rbp), %rax	# tr, tmp562
	movq	8(%rax), %rax	# tr_3(D)->statetype, D.9175
	movl	-24(%rbp), %edx	# tpos, tmp563
	movslq	%edx, %rdx	# tmp563, D.9176
	addq	$1, %rdx	#, D.9176
	addq	%rdx, %rax	# D.9176, D.9175
	movzbl	(%rax), %eax	# *_219, D.9177
	.loc 1 236 0
	movsbl	%al, %eax	# D.9177, D.9172
	movl	%eax, %edi	# D.9172,
	call	Statetype	#
	movq	%rax, %rbx	#, D.9175
	.loc 1 237 0
	movq	-64(%rbp), %rax	# tr, tmp564
	movq	8(%rax), %rdx	# tr_3(D)->statetype, D.9175
	movl	-24(%rbp), %eax	# tpos, tmp565
	cltq
	addq	%rdx, %rax	# D.9175, D.9175
	movzbl	(%rax), %eax	# *_225, D.9177
	.loc 1 236 0
	movsbl	%al, %eax	# D.9177, D.9172
	movl	%eax, %edi	# D.9172,
	call	Statetype	#
	movq	%rbx, %rdx	# D.9175,
	movq	%rax, %rsi	# D.9175,
	movl	$.LC1, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
	.loc 1 240 0
	jmp	.L32	#
.L47:
	jmp	.L32	#
.L24:
	.loc 1 242 0
	movq	-64(%rbp), %rax	# tr, tmp566
	movq	8(%rax), %rax	# tr_3(D)->statetype, D.9175
	movl	-24(%rbp), %edx	# tpos, tmp567
	movslq	%edx, %rdx	# tmp567, D.9176
	addq	$1, %rdx	#, D.9176
	addq	%rdx, %rax	# D.9176, D.9175
	movzbl	(%rax), %eax	# *_232, D.9177
	movsbl	%al, %eax	# D.9177, D.9172
	cmpl	$1, %eax	#, D.9172
	je	.L49	#,
	cmpl	$3, %eax	#, D.9172
	je	.L50	#,
	jmp	.L72	#
.L49:
	.loc 1 243 0
	movq	-40(%rbp), %rax	# hmm, tmp568
	movq	144(%rax), %rdx	# hmm_19(D)->t, D.9178
	movq	-64(%rbp), %rax	# tr, tmp569
	movq	16(%rax), %rax	# tr_3(D)->nodeidx, D.9173
	movl	-24(%rbp), %ecx	# tpos, tmp570
	movslq	%ecx, %rcx	# tmp570, D.9174
	salq	$2, %rcx	#, D.9174
	addq	%rcx, %rax	# D.9174, D.9173
	movl	(%rax), %eax	# *_239, D.9172
	cltq
	salq	$3, %rax	#, D.9174
	addq	%rdx, %rax	# D.9178, D.9178
	movq	(%rax), %rax	# *_243, D.9179
	leaq	12(%rax), %rdx	#, D.9179
	movq	-40(%rbp), %rax	# hmm, tmp571
	movq	144(%rax), %rcx	# hmm_19(D)->t, D.9178
	movq	-64(%rbp), %rax	# tr, tmp572
	movq	16(%rax), %rax	# tr_3(D)->nodeidx, D.9173
	movl	-24(%rbp), %esi	# tpos, tmp573
	movslq	%esi, %rsi	# tmp573, D.9174
	salq	$2, %rsi	#, D.9174
	addq	%rsi, %rax	# D.9174, D.9173
	movl	(%rax), %eax	# *_250, D.9172
	cltq
	salq	$3, %rax	#, D.9174
	addq	%rcx, %rax	# D.9178, D.9178
	movq	(%rax), %rax	# *_254, D.9179
	addq	$12, %rax	#, D.9179
	movss	(%rax), %xmm0	# *_256, D.9180
	addss	-52(%rbp), %xmm0	# wt, D.9180
	movss	%xmm0, (%rdx)	# D.9180, *_245
	jmp	.L51	#
.L50:
	.loc 1 244 0
	movq	-40(%rbp), %rax	# hmm, tmp574
	movq	144(%rax), %rdx	# hmm_19(D)->t, D.9178
	movq	-64(%rbp), %rax	# tr, tmp575
	movq	16(%rax), %rax	# tr_3(D)->nodeidx, D.9173
	movl	-24(%rbp), %ecx	# tpos, tmp576
	movslq	%ecx, %rcx	# tmp576, D.9174
	salq	$2, %rcx	#, D.9174
	addq	%rcx, %rax	# D.9174, D.9173
	movl	(%rax), %eax	# *_263, D.9172
	cltq
	salq	$3, %rax	#, D.9174
	addq	%rdx, %rax	# D.9178, D.9178
	movq	(%rax), %rax	# *_267, D.9179
	leaq	16(%rax), %rdx	#, D.9179
	movq	-40(%rbp), %rax	# hmm, tmp577
	movq	144(%rax), %rcx	# hmm_19(D)->t, D.9178
	movq	-64(%rbp), %rax	# tr, tmp578
	movq	16(%rax), %rax	# tr_3(D)->nodeidx, D.9173
	movl	-24(%rbp), %esi	# tpos, tmp579
	movslq	%esi, %rsi	# tmp579, D.9174
	salq	$2, %rsi	#, D.9174
	addq	%rsi, %rax	# D.9174, D.9173
	movl	(%rax), %eax	# *_274, D.9172
	cltq
	salq	$3, %rax	#, D.9174
	addq	%rcx, %rax	# D.9178, D.9178
	movq	(%rax), %rax	# *_278, D.9179
	addq	$16, %rax	#, D.9179
	movss	(%rax), %xmm0	# *_280, D.9180
	addss	-52(%rbp), %xmm0	# wt, D.9180
	movss	%xmm0, (%rdx)	# D.9180, *_269
	jmp	.L51	#
.L72:
	.loc 1 248 0
	movq	-64(%rbp), %rax	# tr, tmp580
	movq	8(%rax), %rax	# tr_3(D)->statetype, D.9175
	movl	-24(%rbp), %edx	# tpos, tmp581
	movslq	%edx, %rdx	# tmp581, D.9176
	addq	$1, %rdx	#, D.9176
	addq	%rdx, %rax	# D.9176, D.9175
	movzbl	(%rax), %eax	# *_286, D.9177
	.loc 1 246 0
	movsbl	%al, %eax	# D.9177, D.9172
	movl	%eax, %edi	# D.9172,
	call	Statetype	#
	movq	%rax, %rbx	#, D.9175
	.loc 1 247 0
	movq	-64(%rbp), %rax	# tr, tmp582
	movq	8(%rax), %rdx	# tr_3(D)->statetype, D.9175
	movl	-24(%rbp), %eax	# tpos, tmp583
	cltq
	addq	%rdx, %rax	# D.9175, D.9175
	movzbl	(%rax), %eax	# *_292, D.9177
	.loc 1 246 0
	movsbl	%al, %eax	# D.9177, D.9172
	movl	%eax, %edi	# D.9172,
	call	Statetype	#
	movq	%rbx, %rdx	# D.9175,
	movq	%rax, %rsi	# D.9175,
	movl	$.LC1, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
	.loc 1 250 0
	jmp	.L32	#
.L51:
	jmp	.L32	#
.L23:
	.loc 1 252 0
	movq	-64(%rbp), %rax	# tr, tmp584
	movq	8(%rax), %rax	# tr_3(D)->statetype, D.9175
	movl	-24(%rbp), %edx	# tpos, tmp585
	movslq	%edx, %rdx	# tmp585, D.9176
	addq	$1, %rdx	#, D.9176
	addq	%rdx, %rax	# D.9176, D.9175
	movzbl	(%rax), %eax	# *_299, D.9177
	movsbl	%al, %eax	# D.9177, D.9172
	cmpl	$2, %eax	#, D.9172
	je	.L53	#,
	cmpl	$7, %eax	#, D.9172
	je	.L78	#,
	cmpl	$1, %eax	#, D.9172
	jne	.L73	#,
	.loc 1 253 0
	movq	-40(%rbp), %rax	# hmm, tmp586
	movq	144(%rax), %rdx	# hmm_19(D)->t, D.9178
	movq	-64(%rbp), %rax	# tr, tmp587
	movq	16(%rax), %rax	# tr_3(D)->nodeidx, D.9173
	movl	-24(%rbp), %ecx	# tpos, tmp588
	movslq	%ecx, %rcx	# tmp588, D.9174
	salq	$2, %rcx	#, D.9174
	addq	%rcx, %rax	# D.9174, D.9173
	movl	(%rax), %eax	# *_306, D.9172
	cltq
	salq	$3, %rax	#, D.9174
	addq	%rdx, %rax	# D.9178, D.9178
	movq	(%rax), %rax	# *_310, D.9179
	leaq	20(%rax), %rdx	#, D.9179
	movq	-40(%rbp), %rax	# hmm, tmp589
	movq	144(%rax), %rcx	# hmm_19(D)->t, D.9178
	movq	-64(%rbp), %rax	# tr, tmp590
	movq	16(%rax), %rax	# tr_3(D)->nodeidx, D.9173
	movl	-24(%rbp), %esi	# tpos, tmp591
	movslq	%esi, %rsi	# tmp591, D.9174
	salq	$2, %rsi	#, D.9174
	addq	%rsi, %rax	# D.9174, D.9173
	movl	(%rax), %eax	# *_317, D.9172
	cltq
	salq	$3, %rax	#, D.9174
	addq	%rcx, %rax	# D.9178, D.9178
	movq	(%rax), %rax	# *_321, D.9179
	addq	$20, %rax	#, D.9179
	movss	(%rax), %xmm0	# *_323, D.9180
	addss	-52(%rbp), %xmm0	# wt, D.9180
	movss	%xmm0, (%rdx)	# D.9180, *_312
	jmp	.L56	#
.L53:
	.loc 1 254 0
	movq	-40(%rbp), %rax	# hmm, tmp592
	movq	144(%rax), %rdx	# hmm_19(D)->t, D.9178
	movq	-64(%rbp), %rax	# tr, tmp593
	movq	16(%rax), %rax	# tr_3(D)->nodeidx, D.9173
	movl	-24(%rbp), %ecx	# tpos, tmp594
	movslq	%ecx, %rcx	# tmp594, D.9174
	salq	$2, %rcx	#, D.9174
	addq	%rcx, %rax	# D.9174, D.9173
	movl	(%rax), %eax	# *_330, D.9172
	cltq
	salq	$3, %rax	#, D.9174
	addq	%rdx, %rax	# D.9178, D.9178
	movq	(%rax), %rax	# *_334, D.9179
	leaq	24(%rax), %rdx	#, D.9179
	movq	-40(%rbp), %rax	# hmm, tmp595
	movq	144(%rax), %rcx	# hmm_19(D)->t, D.9178
	movq	-64(%rbp), %rax	# tr, tmp596
	movq	16(%rax), %rax	# tr_3(D)->nodeidx, D.9173
	movl	-24(%rbp), %esi	# tpos, tmp597
	movslq	%esi, %rsi	# tmp597, D.9174
	salq	$2, %rsi	#, D.9174
	addq	%rsi, %rax	# D.9174, D.9173
	movl	(%rax), %eax	# *_341, D.9172
	cltq
	salq	$3, %rax	#, D.9174
	addq	%rcx, %rax	# D.9178, D.9178
	movq	(%rax), %rax	# *_345, D.9179
	addq	$24, %rax	#, D.9179
	movss	(%rax), %xmm0	# *_347, D.9180
	addss	-52(%rbp), %xmm0	# wt, D.9180
	movss	%xmm0, (%rdx)	# D.9180, *_336
	jmp	.L56	#
.L73:
	.loc 1 259 0
	movq	-64(%rbp), %rax	# tr, tmp598
	movq	8(%rax), %rax	# tr_3(D)->statetype, D.9175
	movl	-24(%rbp), %edx	# tpos, tmp599
	movslq	%edx, %rdx	# tmp599, D.9176
	addq	$1, %rdx	#, D.9176
	addq	%rdx, %rax	# D.9176, D.9175
	movzbl	(%rax), %eax	# *_353, D.9177
	.loc 1 257 0
	movsbl	%al, %eax	# D.9177, D.9172
	movl	%eax, %edi	# D.9172,
	call	Statetype	#
	movq	%rax, %rbx	#, D.9175
	.loc 1 258 0
	movq	-64(%rbp), %rax	# tr, tmp600
	movq	8(%rax), %rdx	# tr_3(D)->statetype, D.9175
	movl	-24(%rbp), %eax	# tpos, tmp601
	cltq
	addq	%rdx, %rax	# D.9175, D.9175
	movzbl	(%rax), %eax	# *_359, D.9177
	.loc 1 257 0
	movsbl	%al, %eax	# D.9177, D.9172
	movl	%eax, %edi	# D.9172,
	call	Statetype	#
	movq	%rbx, %rdx	# D.9175,
	movq	%rax, %rsi	# D.9175,
	movl	$.LC1, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
	.loc 1 261 0
	jmp	.L32	#
.L78:
	.loc 1 255 0
	nop
.L56:
	.loc 1 261 0
	jmp	.L32	#
.L28:
	.loc 1 263 0
	movq	-64(%rbp), %rax	# tr, tmp602
	movq	8(%rax), %rax	# tr_3(D)->statetype, D.9175
	movl	-24(%rbp), %edx	# tpos, tmp603
	movslq	%edx, %rdx	# tmp603, D.9176
	addq	$1, %rdx	#, D.9176
	addq	%rdx, %rax	# D.9176, D.9175
	movzbl	(%rax), %eax	# *_366, D.9177
	movsbl	%al, %eax	# D.9177, D.9172
	cmpl	$8, %eax	#, D.9172
	je	.L58	#,
	cmpl	$10, %eax	#, D.9172
	je	.L59	#,
	jmp	.L74	#
.L58:
	.loc 1 264 0
	movq	-40(%rbp), %rax	# hmm, tmp604
	movss	180(%rax), %xmm0	# hmm_19(D)->xt, D.9180
	addss	-52(%rbp), %xmm0	# wt, D.9180
	movq	-40(%rbp), %rax	# hmm, tmp605
	movss	%xmm0, 180(%rax)	# D.9180, hmm_19(D)->xt
	jmp	.L60	#
.L59:
	.loc 1 265 0
	movq	-40(%rbp), %rax	# hmm, tmp606
	movss	184(%rax), %xmm0	# hmm_19(D)->xt, D.9180
	addss	-52(%rbp), %xmm0	# wt, D.9180
	movq	-40(%rbp), %rax	# hmm, tmp607
	movss	%xmm0, 184(%rax)	# D.9180, hmm_19(D)->xt
	jmp	.L60	#
.L74:
	.loc 1 269 0
	movq	-64(%rbp), %rax	# tr, tmp608
	movq	8(%rax), %rax	# tr_3(D)->statetype, D.9175
	movl	-24(%rbp), %edx	# tpos, tmp609
	movslq	%edx, %rdx	# tmp609, D.9176
	addq	$1, %rdx	#, D.9176
	addq	%rdx, %rax	# D.9176, D.9175
	movzbl	(%rax), %eax	# *_376, D.9177
	.loc 1 267 0
	movsbl	%al, %eax	# D.9177, D.9172
	movl	%eax, %edi	# D.9172,
	call	Statetype	#
	movq	%rax, %rbx	#, D.9175
	.loc 1 268 0
	movq	-64(%rbp), %rax	# tr, tmp610
	movq	8(%rax), %rdx	# tr_3(D)->statetype, D.9175
	movl	-24(%rbp), %eax	# tpos, tmp611
	cltq
	addq	%rdx, %rax	# D.9175, D.9175
	movzbl	(%rax), %eax	# *_382, D.9177
	.loc 1 267 0
	movsbl	%al, %eax	# D.9177, D.9172
	movl	%eax, %edi	# D.9172,
	call	Statetype	#
	movq	%rbx, %rdx	# D.9175,
	movq	%rax, %rsi	# D.9175,
	movl	$.LC1, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
	.loc 1 271 0
	jmp	.L32	#
.L60:
	jmp	.L32	#
.L31:
	.loc 1 273 0
	movq	-64(%rbp), %rax	# tr, tmp612
	movq	8(%rax), %rax	# tr_3(D)->statetype, D.9175
	movl	-24(%rbp), %edx	# tpos, tmp613
	movslq	%edx, %rdx	# tmp613, D.9176
	addq	$1, %rdx	#, D.9176
	addq	%rdx, %rax	# D.9176, D.9175
	movzbl	(%rax), %eax	# *_389, D.9177
	movsbl	%al, %eax	# D.9177, D.9172
	cmpl	$6, %eax	#, D.9172
	je	.L62	#,
	cmpl	$10, %eax	#, D.9172
	je	.L63	#,
	jmp	.L75	#
.L62:
	.loc 1 274 0
	movq	-40(%rbp), %rax	# hmm, tmp614
	movss	196(%rax), %xmm0	# hmm_19(D)->xt, D.9180
	addss	-52(%rbp), %xmm0	# wt, D.9180
	movq	-40(%rbp), %rax	# hmm, tmp615
	movss	%xmm0, 196(%rax)	# D.9180, hmm_19(D)->xt
	jmp	.L64	#
.L63:
	.loc 1 275 0
	movq	-40(%rbp), %rax	# hmm, tmp616
	movss	200(%rax), %xmm0	# hmm_19(D)->xt, D.9180
	addss	-52(%rbp), %xmm0	# wt, D.9180
	movq	-40(%rbp), %rax	# hmm, tmp617
	movss	%xmm0, 200(%rax)	# D.9180, hmm_19(D)->xt
	jmp	.L64	#
.L75:
	.loc 1 279 0
	movq	-64(%rbp), %rax	# tr, tmp618
	movq	8(%rax), %rax	# tr_3(D)->statetype, D.9175
	movl	-24(%rbp), %edx	# tpos, tmp619
	movslq	%edx, %rdx	# tmp619, D.9176
	addq	$1, %rdx	#, D.9176
	addq	%rdx, %rax	# D.9176, D.9175
	movzbl	(%rax), %eax	# *_399, D.9177
	.loc 1 277 0
	movsbl	%al, %eax	# D.9177, D.9172
	movl	%eax, %edi	# D.9172,
	call	Statetype	#
	movq	%rax, %rbx	#, D.9175
	.loc 1 278 0
	movq	-64(%rbp), %rax	# tr, tmp620
	movq	8(%rax), %rdx	# tr_3(D)->statetype, D.9175
	movl	-24(%rbp), %eax	# tpos, tmp621
	cltq
	addq	%rdx, %rax	# D.9175, D.9175
	movzbl	(%rax), %eax	# *_405, D.9177
	.loc 1 277 0
	movsbl	%al, %eax	# D.9177, D.9172
	movl	%eax, %edi	# D.9172,
	call	Statetype	#
	movq	%rbx, %rdx	# D.9175,
	movq	%rax, %rsi	# D.9175,
	movl	$.LC1, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
	.loc 1 281 0
	jmp	.L32	#
.L64:
	jmp	.L32	#
.L29:
	.loc 1 283 0
	movq	-64(%rbp), %rax	# tr, tmp622
	movq	8(%rax), %rax	# tr_3(D)->statetype, D.9175
	movl	-24(%rbp), %edx	# tpos, tmp623
	movslq	%edx, %rdx	# tmp623, D.9176
	addq	$1, %rdx	#, D.9176
	addq	%rdx, %rax	# D.9176, D.9175
	movzbl	(%rax), %eax	# *_412, D.9177
	movsbl	%al, %eax	# D.9177, D.9172
	cmpl	$8, %eax	#, D.9172
	je	.L66	#,
	cmpl	$9, %eax	#, D.9172
	jne	.L76	#,
	.loc 1 284 0
	movq	-40(%rbp), %rax	# hmm, tmp624
	movss	188(%rax), %xmm0	# hmm_19(D)->xt, D.9180
	addss	-52(%rbp), %xmm0	# wt, D.9180
	movq	-40(%rbp), %rax	# hmm, tmp625
	movss	%xmm0, 188(%rax)	# D.9180, hmm_19(D)->xt
	jmp	.L68	#
.L66:
	.loc 1 285 0
	movq	-40(%rbp), %rax	# hmm, tmp626
	movss	192(%rax), %xmm0	# hmm_19(D)->xt, D.9180
	addss	-52(%rbp), %xmm0	# wt, D.9180
	movq	-40(%rbp), %rax	# hmm, tmp627
	movss	%xmm0, 192(%rax)	# D.9180, hmm_19(D)->xt
	jmp	.L68	#
.L76:
	.loc 1 289 0
	movq	-64(%rbp), %rax	# tr, tmp628
	movq	8(%rax), %rax	# tr_3(D)->statetype, D.9175
	movl	-24(%rbp), %edx	# tpos, tmp629
	movslq	%edx, %rdx	# tmp629, D.9176
	addq	$1, %rdx	#, D.9176
	addq	%rdx, %rax	# D.9176, D.9175
	movzbl	(%rax), %eax	# *_422, D.9177
	.loc 1 287 0
	movsbl	%al, %eax	# D.9177, D.9172
	movl	%eax, %edi	# D.9172,
	call	Statetype	#
	movq	%rax, %rbx	#, D.9175
	.loc 1 288 0
	movq	-64(%rbp), %rax	# tr, tmp630
	movq	8(%rax), %rdx	# tr_3(D)->statetype, D.9175
	movl	-24(%rbp), %eax	# tpos, tmp631
	cltq
	addq	%rdx, %rax	# D.9175, D.9175
	movzbl	(%rax), %eax	# *_428, D.9177
	.loc 1 287 0
	movsbl	%al, %eax	# D.9177, D.9172
	movl	%eax, %edi	# D.9172,
	call	Statetype	#
	movq	%rbx, %rdx	# D.9175,
	movq	%rax, %rsi	# D.9175,
	movl	$.LC1, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
	.loc 1 291 0
	jmp	.L32	#
.L68:
	jmp	.L32	#
.L20:
	.loc 1 296 0
	movq	-64(%rbp), %rax	# tr, tmp632
	movq	8(%rax), %rdx	# tr_3(D)->statetype, D.9175
	movl	-24(%rbp), %eax	# tpos, tmp633
	cltq
	addq	%rdx, %rax	# D.9175, D.9175
	movzbl	(%rax), %eax	# *_434, D.9177
	.loc 1 295 0
	movsbl	%al, %eax	# D.9177, D.9172
	movl	%eax, %edi	# D.9172,
	call	Statetype	#
	movq	%rax, %rsi	# D.9175,
	movl	$.LC2, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
	jmp	.L32	#
.L77:
	.loc 1 208 0
	nop
.L32:
	.loc 1 192 0
	addl	$1, -24(%rbp)	#, tpos
.L17:
	.loc 1 192 0 is_stmt 0 discriminator 1
	movq	-64(%rbp), %rax	# tr, tmp634
	movl	(%rax), %eax	# tr_3(D)->tlen, D.9172
	cmpl	-24(%rbp), %eax	# tpos, D.9172
	jg	.L69	#,
	.loc 1 299 0 is_stmt 1
	addq	$56, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	P7TraceCount, .-P7TraceCount
	.globl	P7TraceScore
	.type	P7TraceScore, @function
P7TraceScore:
.LFB9:
	.loc 1 314 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# hmm, hmm
	movq	%rsi, -32(%rbp)	# dsq, dsq
	movq	%rdx, -40(%rbp)	# tr, tr
	.loc 1 320 0
	movl	$0, -12(%rbp)	#, score
	.loc 1 321 0
	movl	$0, -8(%rbp)	#, tpos
	jmp	.L80	#
.L83:
	.loc 1 323 0
	movq	-40(%rbp), %rax	# tr, tmp130
	movq	24(%rax), %rax	# tr_6(D)->pos, D.9186
	movl	-8(%rbp), %edx	# tpos, tmp131
	movslq	%edx, %rdx	# tmp131, D.9187
	salq	$2, %rdx	#, D.9187
	addq	%rdx, %rax	# D.9187, D.9186
	movl	(%rax), %eax	# *_12, D.9185
	movslq	%eax, %rdx	# D.9185, D.9188
	movq	-32(%rbp), %rax	# dsq, tmp132
	addq	%rdx, %rax	# D.9188, D.9189
	movzbl	(%rax), %eax	# *_16, D.9190
	movsbl	%al, %eax	# D.9190, tmp133
	movl	%eax, -4(%rbp)	# tmp133, sym
	.loc 1 328 0
	movq	-40(%rbp), %rax	# tr, tmp134
	movq	8(%rax), %rdx	# tr_6(D)->statetype, D.9189
	movl	-8(%rbp), %eax	# tpos, tmp135
	cltq
	addq	%rdx, %rax	# D.9189, D.9189
	movzbl	(%rax), %eax	# *_21, D.9190
	cmpb	$1, %al	#, D.9190
	jne	.L81	#,
	.loc 1 329 0
	movq	-24(%rbp), %rax	# hmm, tmp136
	movq	320(%rax), %rax	# hmm_23(D)->msc, D.9191
	movl	-4(%rbp), %edx	# sym, tmp137
	movslq	%edx, %rdx	# tmp137, D.9187
	salq	$3, %rdx	#, D.9187
	addq	%rdx, %rax	# D.9187, D.9191
	movq	(%rax), %rdx	# *_27, D.9186
	movq	-40(%rbp), %rax	# tr, tmp138
	movq	16(%rax), %rax	# tr_6(D)->nodeidx, D.9186
	movl	-8(%rbp), %ecx	# tpos, tmp139
	movslq	%ecx, %rcx	# tmp139, D.9187
	salq	$2, %rcx	#, D.9187
	addq	%rcx, %rax	# D.9187, D.9186
	movl	(%rax), %eax	# *_32, D.9185
	cltq
	salq	$2, %rax	#, D.9187
	addq	%rdx, %rax	# D.9186, D.9186
	movl	(%rax), %eax	# *_36, D.9185
	addl	%eax, -12(%rbp)	# D.9185, score
	jmp	.L82	#
.L81:
	.loc 1 330 0
	movq	-40(%rbp), %rax	# tr, tmp140
	movq	8(%rax), %rdx	# tr_6(D)->statetype, D.9189
	movl	-8(%rbp), %eax	# tpos, tmp141
	cltq
	addq	%rdx, %rax	# D.9189, D.9189
	movzbl	(%rax), %eax	# *_41, D.9190
	cmpb	$3, %al	#, D.9190
	jne	.L82	#,
	.loc 1 331 0
	movq	-24(%rbp), %rax	# hmm, tmp142
	movq	328(%rax), %rax	# hmm_23(D)->isc, D.9191
	movl	-4(%rbp), %edx	# sym, tmp143
	movslq	%edx, %rdx	# tmp143, D.9187
	salq	$3, %rdx	#, D.9187
	addq	%rdx, %rax	# D.9187, D.9191
	movq	(%rax), %rdx	# *_46, D.9186
	movq	-40(%rbp), %rax	# tr, tmp144
	movq	16(%rax), %rax	# tr_6(D)->nodeidx, D.9186
	movl	-8(%rbp), %ecx	# tpos, tmp145
	movslq	%ecx, %rcx	# tmp145, D.9187
	salq	$2, %rcx	#, D.9187
	addq	%rcx, %rax	# D.9187, D.9186
	movl	(%rax), %eax	# *_51, D.9185
	cltq
	salq	$2, %rax	#, D.9187
	addq	%rdx, %rax	# D.9186, D.9186
	movl	(%rax), %eax	# *_55, D.9185
	addl	%eax, -12(%rbp)	# D.9185, score
.L82:
	.loc 1 337 0
	movq	-40(%rbp), %rax	# tr, tmp146
	movq	16(%rax), %rax	# tr_6(D)->nodeidx, D.9186
	movl	-8(%rbp), %edx	# tpos, tmp147
	movslq	%edx, %rdx	# tmp147, D.9188
	addq	$1, %rdx	#, D.9188
	salq	$2, %rdx	#, D.9188
	addq	%rdx, %rax	# D.9188, D.9186
	.loc 1 335 0
	movl	(%rax), %edi	# *_62, D.9185
	.loc 1 337 0
	movq	-40(%rbp), %rax	# tr, tmp148
	movq	8(%rax), %rax	# tr_6(D)->statetype, D.9189
	movl	-8(%rbp), %edx	# tpos, tmp149
	movslq	%edx, %rdx	# tmp149, D.9188
	addq	$1, %rdx	#, D.9188
	addq	%rdx, %rax	# D.9188, D.9189
	movzbl	(%rax), %eax	# *_67, D.9190
	.loc 1 335 0
	movsbl	%al, %ecx	# D.9190, D.9185
	.loc 1 336 0
	movq	-40(%rbp), %rax	# tr, tmp150
	movq	16(%rax), %rax	# tr_6(D)->nodeidx, D.9186
	movl	-8(%rbp), %edx	# tpos, tmp151
	movslq	%edx, %rdx	# tmp151, D.9187
	salq	$2, %rdx	#, D.9187
	addq	%rdx, %rax	# D.9187, D.9186
	.loc 1 335 0
	movl	(%rax), %edx	# *_73, D.9185
	.loc 1 336 0
	movq	-40(%rbp), %rax	# tr, tmp152
	movq	8(%rax), %rsi	# tr_6(D)->statetype, D.9189
	movl	-8(%rbp), %eax	# tpos, tmp153
	cltq
	addq	%rsi, %rax	# D.9189, D.9189
	movzbl	(%rax), %eax	# *_77, D.9190
	.loc 1 335 0
	movsbl	%al, %esi	# D.9190, D.9185
	movq	-24(%rbp), %rax	# hmm, tmp154
	movl	%edi, %r8d	# D.9185,
	movq	%rax, %rdi	# tmp154,
	call	TransitionScoreLookup	#
	addl	%eax, -12(%rbp)	# D.9185, score
	.loc 1 321 0
	addl	$1, -8(%rbp)	#, tpos
.L80:
	.loc 1 321 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# tr, tmp155
	movl	(%rax), %eax	# tr_6(D)->tlen, D.9185
	subl	$1, %eax	#, D.9185
	cmpl	-8(%rbp), %eax	# tpos, D.9185
	jg	.L83	#,
	.loc 1 339 0 is_stmt 1
	movl	-12(%rbp), %eax	# score, tmp156
	movl	%eax, %edi	# tmp156,
	call	Scorify	#
	movss	%xmm0, -44(%rbp)	#, %sfp
	movl	-44(%rbp), %eax	# %sfp, D.9192
	.loc 1 340 0
	movl	%eax, -44(%rbp)	# <retval>, %sfp
	movss	-44(%rbp), %xmm0	# %sfp,
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	P7TraceScore, .-P7TraceScore
	.section	.rodata
	.align 8
.LC3:
	.string	"yo! you don't support J in Traces2Alignment(), remember?"
	.align 8
.LC4:
	.string	"Traces2Alignment reports unrecognized statetype %c"
.LC5:
	.string	"2.3"
.LC6:
	.string	"HMMER %s"
	.text
	.globl	P7Traces2Alignment
	.type	P7Traces2Alignment, @function
P7Traces2Alignment:
.LFB10:
	.loc 1 381 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$120, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -88(%rbp)	# dsq, dsq
	movq	%rsi, -96(%rbp)	# sqinfo, sqinfo
	movq	%rdx, -104(%rbp)	# wgt, wgt
	movl	%ecx, -108(%rbp)	# nseq, nseq
	movl	%r8d, -112(%rbp)	# mlen, mlen
	movq	%r9, -120(%rbp)	# tr, tr
	.loc 1 408 0
	movl	-112(%rbp), %eax	# mlen, tmp441
	addl	$1, %eax	#, D.9193
	cltq
	salq	$2, %rax	#, D.9194
	movq	%rax, %rdx	# D.9194,
	movl	$408, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_malloc	#
	movq	%rax, -40(%rbp)	# tmp442, inserts
	.loc 1 409 0
	movl	$0, -52(%rbp)	#, k
	jmp	.L86	#
.L87:
	.loc 1 410 0 discriminator 2
	movl	-52(%rbp), %eax	# k, tmp443
	cltq
	leaq	0(,%rax,4), %rdx	#, D.9194
	movq	-40(%rbp), %rax	# inserts, tmp444
	addq	%rdx, %rax	# D.9194, D.9195
	movl	$0, (%rax)	#, *_33
	.loc 1 409 0 discriminator 2
	addl	$1, -52(%rbp)	#, k
.L86:
	.loc 1 409 0 is_stmt 0 discriminator 1
	movl	-52(%rbp), %eax	# k, tmp445
	cmpl	-112(%rbp), %eax	# mlen, tmp445
	jle	.L87	#,
	.loc 1 411 0 is_stmt 1
	movl	$0, -72(%rbp)	#, idx
	jmp	.L88	#
.L107:
	.loc 1 412 0
	movl	$0, -64(%rbp)	#, nins
	.loc 1 413 0
	movl	$0, -56(%rbp)	#, tpos
	jmp	.L89	#
.L106:
	.loc 1 414 0
	movl	-72(%rbp), %eax	# idx, tmp446
	cltq
	leaq	0(,%rax,8), %rdx	#, D.9194
	movq	-120(%rbp), %rax	# tr, tmp447
	addq	%rdx, %rax	# D.9194, D.9196
	movq	(%rax), %rax	# *_47, D.9197
	movq	8(%rax), %rdx	# _48->statetype, D.9198
	movl	-56(%rbp), %eax	# tpos, tmp448
	cltq
	addq	%rdx, %rax	# D.9198, D.9198
	movzbl	(%rax), %eax	# *_51, D.9200
	movsbl	%al, %eax	# D.9200, D.9193
	cmpl	$10, %eax	#, D.9193
	ja	.L90	#,
	movl	%eax, %eax	# D.9193, tmp449
	movq	.L92(,%rax,8), %rax	#, tmp450
	jmp	*%rax	# tmp450
	.section	.rodata
	.align 8
	.align 4
.L92:
	.quad	.L90
	.quad	.L91
	.quad	.L91
	.quad	.L93
	.quad	.L151
	.quad	.L95
	.quad	.L96
	.quad	.L151
	.quad	.L97
	.quad	.L98
	.quad	.L99
	.text
.L93:
	.loc 1 415 0
	addl	$1, -64(%rbp)	#, nins
	jmp	.L100	#
.L95:
	.loc 1 416 0
	movl	-72(%rbp), %eax	# idx, tmp451
	cltq
	leaq	0(,%rax,8), %rdx	#, D.9194
	movq	-120(%rbp), %rax	# tr, tmp452
	addq	%rdx, %rax	# D.9194, D.9196
	movq	(%rax), %rax	# *_57, D.9197
	movq	8(%rax), %rax	# _58->statetype, D.9198
	movl	-56(%rbp), %edx	# tpos, tmp453
	movslq	%edx, %rdx	# tmp453, D.9199
	subq	$1, %rdx	#, D.9199
	addq	%rdx, %rax	# D.9199, D.9198
	movzbl	(%rax), %eax	# *_62, D.9200
	cmpb	$5, %al	#, D.9200
	jne	.L101	#,
	.loc 1 416 0 is_stmt 0 discriminator 1
	addl	$1, -64(%rbp)	#, nins
	jmp	.L100	#
.L101:
	.loc 1 416 0 discriminator 2
	jmp	.L100	#
.L97:
	.loc 1 417 0 is_stmt 1
	movl	-72(%rbp), %eax	# idx, tmp454
	cltq
	leaq	0(,%rax,8), %rdx	#, D.9194
	movq	-120(%rbp), %rax	# tr, tmp455
	addq	%rdx, %rax	# D.9194, D.9196
	movq	(%rax), %rax	# *_67, D.9197
	movq	8(%rax), %rax	# _68->statetype, D.9198
	movl	-56(%rbp), %edx	# tpos, tmp456
	movslq	%edx, %rdx	# tmp456, D.9199
	subq	$1, %rdx	#, D.9199
	addq	%rdx, %rax	# D.9199, D.9198
	movzbl	(%rax), %eax	# *_72, D.9200
	cmpb	$8, %al	#, D.9200
	jne	.L102	#,
	.loc 1 417 0 is_stmt 0 discriminator 1
	addl	$1, -64(%rbp)	#, nins
	jmp	.L100	#
.L102:
	.loc 1 417 0 discriminator 2
	jmp	.L100	#
.L91:
	.loc 1 420 0 is_stmt 1
	movl	-72(%rbp), %eax	# idx, tmp457
	cltq
	leaq	0(,%rax,8), %rdx	#, D.9194
	movq	-120(%rbp), %rax	# tr, tmp458
	addq	%rdx, %rax	# D.9194, D.9196
	movq	(%rax), %rax	# *_77, D.9197
	movq	16(%rax), %rax	# _78->nodeidx, D.9195
	movl	-56(%rbp), %edx	# tpos, tmp459
	movslq	%edx, %rdx	# tmp459, D.9194
	salq	$2, %rdx	#, D.9194
	addq	%rdx, %rax	# D.9194, D.9195
	movl	(%rax), %eax	# *_82, D.9193
	cltq
	salq	$2, %rax	#, D.9194
	leaq	-4(%rax), %rdx	#, D.9199
	movq	-40(%rbp), %rax	# inserts, tmp460
	addq	%rdx, %rax	# D.9199, D.9195
	movl	(%rax), %eax	# *_87, D.9193
	cmpl	-64(%rbp), %eax	# nins, D.9193
	jge	.L103	#,
	.loc 1 421 0
	movl	-72(%rbp), %eax	# idx, tmp461
	cltq
	leaq	0(,%rax,8), %rdx	#, D.9194
	movq	-120(%rbp), %rax	# tr, tmp462
	addq	%rdx, %rax	# D.9194, D.9196
	movq	(%rax), %rax	# *_91, D.9197
	movq	16(%rax), %rax	# _92->nodeidx, D.9195
	movl	-56(%rbp), %edx	# tpos, tmp463
	movslq	%edx, %rdx	# tmp463, D.9194
	salq	$2, %rdx	#, D.9194
	addq	%rdx, %rax	# D.9194, D.9195
	movl	(%rax), %eax	# *_96, D.9193
	cltq
	salq	$2, %rax	#, D.9194
	leaq	-4(%rax), %rdx	#, D.9199
	movq	-40(%rbp), %rax	# inserts, tmp464
	addq	%rax, %rdx	# tmp464, D.9195
	movl	-64(%rbp), %eax	# nins, tmp465
	movl	%eax, (%rdx)	# tmp465, *_101
.L103:
	.loc 1 422 0
	movl	$0, -64(%rbp)	#, nins
	.loc 1 423 0
	jmp	.L100	#
.L96:
	.loc 1 425 0
	movq	-40(%rbp), %rax	# inserts, tmp466
	movl	(%rax), %eax	# *inserts_29, D.9193
	cmpl	-64(%rbp), %eax	# nins, D.9193
	jge	.L104	#,
	.loc 1 426 0
	movq	-40(%rbp), %rax	# inserts, tmp467
	movl	-64(%rbp), %edx	# nins, tmp468
	movl	%edx, (%rax)	# tmp468, *inserts_29
.L104:
	.loc 1 427 0
	movl	$0, -64(%rbp)	#, nins
	.loc 1 428 0
	jmp	.L100	#
.L98:
	.loc 1 430 0
	movl	-112(%rbp), %eax	# mlen, tmp469
	cltq
	leaq	0(,%rax,4), %rdx	#, D.9194
	movq	-40(%rbp), %rax	# inserts, tmp470
	addq	%rdx, %rax	# D.9194, D.9195
	movl	(%rax), %eax	# *_107, D.9193
	cmpl	-64(%rbp), %eax	# nins, D.9193
	jge	.L105	#,
	.loc 1 431 0
	movl	-112(%rbp), %eax	# mlen, tmp471
	cltq
	leaq	0(,%rax,4), %rdx	#, D.9194
	movq	-40(%rbp), %rax	# inserts, tmp472
	addq	%rax, %rdx	# tmp472, D.9195
	movl	-64(%rbp), %eax	# nins, tmp473
	movl	%eax, (%rdx)	# tmp473, *_111
	.loc 1 432 0
	jmp	.L100	#
.L105:
	jmp	.L100	#
.L99:
	.loc 1 435 0
	movl	$.LC3, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
.L90:
	.loc 1 438 0
	movl	-72(%rbp), %eax	# idx, tmp474
	cltq
	leaq	0(,%rax,8), %rdx	#, D.9194
	movq	-120(%rbp), %rax	# tr, tmp475
	addq	%rdx, %rax	# D.9194, D.9196
	movq	(%rax), %rax	# *_114, D.9197
	movq	8(%rax), %rdx	# _115->statetype, D.9198
	movl	-56(%rbp), %eax	# tpos, tmp476
	cltq
	addq	%rdx, %rax	# D.9198, D.9198
	movzbl	(%rax), %eax	# *_118, D.9200
	.loc 1 437 0
	movsbl	%al, %eax	# D.9200, D.9193
	movl	%eax, %edi	# D.9193,
	call	Statetype	#
	movq	%rax, %rsi	# D.9198,
	movl	$.LC4, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
	jmp	.L100	#
.L151:
	.loc 1 433 0
	nop
.L100:
	.loc 1 413 0
	addl	$1, -56(%rbp)	#, tpos
.L89:
	.loc 1 413 0 is_stmt 0 discriminator 1
	movl	-72(%rbp), %eax	# idx, tmp477
	cltq
	leaq	0(,%rax,8), %rdx	#, D.9194
	movq	-120(%rbp), %rax	# tr, tmp478
	addq	%rdx, %rax	# D.9194, D.9196
	movq	(%rax), %rax	# *_42, D.9197
	movl	(%rax), %eax	# _43->tlen, D.9193
	cmpl	-56(%rbp), %eax	# tpos, D.9193
	jg	.L106	#,
	.loc 1 411 0 is_stmt 1
	addl	$1, -72(%rbp)	#, idx
.L88:
	.loc 1 411 0 is_stmt 0 discriminator 1
	movl	-72(%rbp), %eax	# idx, tmp479
	cmpl	-108(%rbp), %eax	# nseq, tmp479
	jl	.L107	#,
	.loc 1 444 0 is_stmt 1
	cmpl	$0, 16(%rbp)	#, matchonly
	je	.L108	#,
	.loc 1 445 0
	movl	$0, -52(%rbp)	#, k
	jmp	.L109	#
.L111:
	.loc 1 446 0
	movl	-52(%rbp), %eax	# k, tmp480
	cltq
	leaq	0(,%rax,4), %rdx	#, D.9194
	movq	-40(%rbp), %rax	# inserts, tmp481
	addq	%rdx, %rax	# D.9194, D.9195
	movl	(%rax), %eax	# *_128, D.9193
	cmpl	$1, %eax	#, D.9193
	jle	.L110	#,
	.loc 1 447 0
	movl	-52(%rbp), %eax	# k, tmp482
	cltq
	leaq	0(,%rax,4), %rdx	#, D.9194
	movq	-40(%rbp), %rax	# inserts, tmp483
	addq	%rdx, %rax	# D.9194, D.9195
	movl	$1, (%rax)	#, *_132
.L110:
	.loc 1 445 0
	addl	$1, -52(%rbp)	#, k
.L109:
	.loc 1 445 0 is_stmt 0 discriminator 1
	movl	-52(%rbp), %eax	# k, tmp484
	cmpl	-112(%rbp), %eax	# mlen, tmp484
	jle	.L111	#,
.L108:
	.loc 1 453 0 is_stmt 1
	movl	-112(%rbp), %eax	# mlen, tmp485
	addl	$1, %eax	#, D.9193
	cltq
	salq	$2, %rax	#, D.9194
	movq	%rax, %rdx	# D.9194,
	movl	$453, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_malloc	#
	movq	%rax, -32(%rbp)	# tmp486, matmap
	.loc 1 454 0
	movq	-32(%rbp), %rax	# matmap, tmp487
	movl	$-1, (%rax)	#, *matmap_137
	.loc 1 455 0
	movq	-40(%rbp), %rax	# inserts, tmp488
	movl	(%rax), %eax	# *inserts_29, tmp489
	movl	%eax, -68(%rbp)	# tmp489, alen
	.loc 1 456 0
	movl	$1, -52(%rbp)	#, k
	jmp	.L112	#
.L113:
	.loc 1 457 0 discriminator 2
	movl	-52(%rbp), %eax	# k, tmp490
	cltq
	leaq	0(,%rax,4), %rdx	#, D.9194
	movq	-32(%rbp), %rax	# matmap, tmp491
	addq	%rax, %rdx	# tmp491, D.9195
	movl	-68(%rbp), %eax	# alen, tmp492
	movl	%eax, (%rdx)	# tmp492, *_142
	.loc 1 458 0 discriminator 2
	movl	-52(%rbp), %eax	# k, tmp493
	cltq
	leaq	0(,%rax,4), %rdx	#, D.9194
	movq	-40(%rbp), %rax	# inserts, tmp494
	addq	%rdx, %rax	# D.9194, D.9195
	movl	(%rax), %eax	# *_145, D.9193
	addl	$1, %eax	#, D.9193
	addl	%eax, -68(%rbp)	# D.9193, alen
	.loc 1 456 0 discriminator 2
	addl	$1, -52(%rbp)	#, k
.L112:
	.loc 1 456 0 is_stmt 0 discriminator 1
	movl	-52(%rbp), %eax	# k, tmp495
	cmpl	-112(%rbp), %eax	# mlen, tmp495
	jle	.L113	#,
	.loc 1 461 0 is_stmt 1
	movl	-68(%rbp), %edx	# alen, tmp496
	movl	-108(%rbp), %eax	# nseq, tmp497
	movl	%edx, %esi	# tmp496,
	movl	%eax, %edi	# tmp497,
	call	MSAAlloc	#
	movq	%rax, -24(%rbp)	# tmp498, msa
	.loc 1 463 0
	movl	$0, -72(%rbp)	#, idx
	jmp	.L114	#
.L137:
	.loc 1 465 0
	movl	$0, -60(%rbp)	#, apos
	jmp	.L115	#
.L116:
	.loc 1 466 0 discriminator 2
	movq	-24(%rbp), %rax	# msa, tmp499
	movq	(%rax), %rax	# msa_150->aseq, D.9201
	movl	-72(%rbp), %edx	# idx, tmp500
	movslq	%edx, %rdx	# tmp500, D.9194
	salq	$3, %rdx	#, D.9194
	addq	%rdx, %rax	# D.9194, D.9201
	movq	(%rax), %rdx	# *_156, D.9198
	movl	-60(%rbp), %eax	# apos, tmp501
	cltq
	addq	%rdx, %rax	# D.9198, D.9198
	movb	$46, (%rax)	#, *_159
	.loc 1 465 0 discriminator 2
	addl	$1, -60(%rbp)	#, apos
.L115:
	.loc 1 465 0 is_stmt 0 discriminator 1
	movl	-60(%rbp), %eax	# apos, tmp502
	cmpl	-68(%rbp), %eax	# alen, tmp502
	jl	.L116	#,
	.loc 1 467 0 is_stmt 1
	movl	$1, -52(%rbp)	#, k
	jmp	.L117	#
.L118:
	.loc 1 468 0 discriminator 2
	movq	-24(%rbp), %rax	# msa, tmp503
	movq	(%rax), %rax	# msa_150->aseq, D.9201
	movl	-72(%rbp), %edx	# idx, tmp504
	movslq	%edx, %rdx	# tmp504, D.9194
	salq	$3, %rdx	#, D.9194
	addq	%rdx, %rax	# D.9194, D.9201
	movq	(%rax), %rdx	# *_165, D.9198
	movl	-52(%rbp), %eax	# k, tmp505
	cltq
	leaq	0(,%rax,4), %rcx	#, D.9194
	movq	-32(%rbp), %rax	# matmap, tmp506
	addq	%rcx, %rax	# D.9194, D.9195
	movl	(%rax), %eax	# *_169, D.9193
	cltq
	addq	%rdx, %rax	# D.9198, D.9198
	movb	$45, (%rax)	#, *_172
	.loc 1 467 0 discriminator 2
	addl	$1, -52(%rbp)	#, k
.L117:
	.loc 1 467 0 is_stmt 0 discriminator 1
	movl	-52(%rbp), %eax	# k, tmp507
	cmpl	-112(%rbp), %eax	# mlen, tmp507
	jle	.L118	#,
	.loc 1 469 0 is_stmt 1
	movq	-24(%rbp), %rax	# msa, tmp508
	movq	(%rax), %rax	# msa_150->aseq, D.9201
	movl	-72(%rbp), %edx	# idx, tmp509
	movslq	%edx, %rdx	# tmp509, D.9194
	salq	$3, %rdx	#, D.9194
	addq	%rdx, %rax	# D.9194, D.9201
	movq	(%rax), %rdx	# *_177, D.9198
	movl	-68(%rbp), %eax	# alen, tmp510
	cltq
	addq	%rdx, %rax	# D.9198, D.9198
	movb	$0, (%rax)	#, *_180
	.loc 1 471 0
	movl	$0, -60(%rbp)	#, apos
	.loc 1 472 0
	movl	$0, -56(%rbp)	#, tpos
	jmp	.L119	#
.L130:
	.loc 1 473 0
	movl	-72(%rbp), %eax	# idx, tmp511
	cltq
	leaq	0(,%rax,8), %rdx	#, D.9194
	movq	-120(%rbp), %rax	# tr, tmp512
	addq	%rdx, %rax	# D.9194, D.9196
	movq	(%rax), %rax	# *_190, D.9197
	movq	8(%rax), %rdx	# _191->statetype, D.9198
	movl	-56(%rbp), %eax	# tpos, tmp513
	cltq
	addq	%rdx, %rax	# D.9198, D.9198
	movzbl	(%rax), %eax	# *_194, D.9200
	movsbl	%al, %eax	# D.9200, tmp514
	movl	%eax, -48(%rbp)	# tmp514, statetype
	.loc 1 474 0
	movl	-72(%rbp), %eax	# idx, tmp515
	cltq
	leaq	0(,%rax,8), %rdx	#, D.9194
	movq	-120(%rbp), %rax	# tr, tmp516
	addq	%rdx, %rax	# D.9194, D.9196
	movq	(%rax), %rax	# *_199, D.9197
	movq	24(%rax), %rax	# _200->pos, D.9195
	movl	-56(%rbp), %edx	# tpos, tmp517
	movslq	%edx, %rdx	# tmp517, D.9194
	salq	$2, %rdx	#, D.9194
	addq	%rdx, %rax	# D.9194, D.9195
	movl	(%rax), %eax	# *_204, tmp518
	movl	%eax, -44(%rbp)	# tmp518, rpos
	.loc 1 475 0
	movl	-72(%rbp), %eax	# idx, tmp519
	cltq
	leaq	0(,%rax,8), %rdx	#, D.9194
	movq	-120(%rbp), %rax	# tr, tmp520
	addq	%rdx, %rax	# D.9194, D.9196
	movq	(%rax), %rax	# *_208, D.9197
	movq	16(%rax), %rax	# _209->nodeidx, D.9195
	movl	-56(%rbp), %edx	# tpos, tmp521
	movslq	%edx, %rdx	# tmp521, D.9194
	salq	$2, %rdx	#, D.9194
	addq	%rdx, %rax	# D.9194, D.9195
	movl	(%rax), %eax	# *_213, tmp522
	movl	%eax, -52(%rbp)	# tmp522, k
	.loc 1 477 0
	cmpl	$1, -48(%rbp)	#, statetype
	jne	.L120	#,
	.loc 1 478 0
	movl	-52(%rbp), %eax	# k, tmp523
	cltq
	leaq	0(,%rax,4), %rdx	#, D.9194
	movq	-32(%rbp), %rax	# matmap, tmp524
	addq	%rdx, %rax	# D.9194, D.9195
	movl	(%rax), %eax	# *_217, tmp525
	movl	%eax, -60(%rbp)	# tmp525, apos
	.loc 1 479 0
	movq	-24(%rbp), %rax	# msa, tmp526
	movq	(%rax), %rax	# msa_150->aseq, D.9201
	movl	-72(%rbp), %edx	# idx, tmp527
	movslq	%edx, %rdx	# tmp527, D.9194
	salq	$3, %rdx	#, D.9194
	addq	%rdx, %rax	# D.9194, D.9201
	movq	(%rax), %rdx	# *_222, D.9198
	movl	-60(%rbp), %eax	# apos, tmp528
	cltq
	addq	%rax, %rdx	# D.9199, D.9198
	movl	-72(%rbp), %eax	# idx, tmp529
	cltq
	leaq	0(,%rax,8), %rcx	#, D.9194
	movq	-88(%rbp), %rax	# dsq, tmp530
	addq	%rcx, %rax	# D.9194, D.9201
	movq	(%rax), %rcx	# *_229, D.9198
	movl	-44(%rbp), %eax	# rpos, tmp531
	cltq
	addq	%rcx, %rax	# D.9198, D.9198
	movzbl	(%rax), %eax	# *_232, D.9200
	movsbl	%al, %eax	# D.9200, D.9193
	cltq
	movzbl	Alphabet(%rax), %eax	# Alphabet, D.9200
	movb	%al, (%rdx)	# D.9200, *_225
	.loc 1 480 0
	addl	$1, -60(%rbp)	#, apos
	jmp	.L121	#
.L120:
	.loc 1 482 0
	cmpl	$2, -48(%rbp)	#, statetype
	jne	.L122	#,
	.loc 1 483 0
	movl	-52(%rbp), %eax	# k, tmp533
	cltq
	leaq	0(,%rax,4), %rdx	#, D.9194
	movq	-32(%rbp), %rax	# matmap, tmp534
	addq	%rdx, %rax	# D.9194, D.9195
	movl	(%rax), %eax	# *_239, D.9193
	addl	$1, %eax	#, tmp535
	movl	%eax, -60(%rbp)	# tmp535, apos
	jmp	.L121	#
.L122:
	.loc 1 485 0
	cmpl	$3, -48(%rbp)	#, statetype
	jne	.L123	#,
	.loc 1 486 0
	cmpl	$0, 16(%rbp)	#, matchonly
	je	.L124	#,
	.loc 1 487 0
	movq	-24(%rbp), %rax	# msa, tmp536
	movq	(%rax), %rax	# msa_150->aseq, D.9201
	movl	-72(%rbp), %edx	# idx, tmp537
	movslq	%edx, %rdx	# tmp537, D.9194
	salq	$3, %rdx	#, D.9194
	addq	%rdx, %rax	# D.9194, D.9201
	movq	(%rax), %rdx	# *_245, D.9198
	movl	-60(%rbp), %eax	# apos, tmp538
	cltq
	addq	%rdx, %rax	# D.9198, D.9198
	movb	$42, (%rax)	#, *_248
	jmp	.L121	#
.L124:
	.loc 1 489 0
	movq	-24(%rbp), %rax	# msa, tmp539
	movq	(%rax), %rax	# msa_150->aseq, D.9201
	movl	-72(%rbp), %edx	# idx, tmp540
	movslq	%edx, %rdx	# tmp540, D.9194
	salq	$3, %rdx	#, D.9194
	addq	%rdx, %rax	# D.9194, D.9201
	movq	(%rax), %rdx	# *_252, D.9198
	movl	-60(%rbp), %eax	# apos, tmp541
	cltq
	leaq	(%rdx,%rax), %rbx	#, D.9198
	movl	-72(%rbp), %eax	# idx, tmp542
	cltq
	leaq	0(,%rax,8), %rdx	#, D.9194
	movq	-88(%rbp), %rax	# dsq, tmp543
	addq	%rdx, %rax	# D.9194, D.9201
	movq	(%rax), %rdx	# *_258, D.9198
	movl	-44(%rbp), %eax	# rpos, tmp544
	cltq
	addq	%rdx, %rax	# D.9198, D.9198
	movzbl	(%rax), %eax	# *_261, D.9200
	movsbl	%al, %eax	# D.9200, D.9193
	cltq
	movzbl	Alphabet(%rax), %eax	# Alphabet, D.9200
	movsbl	%al, %eax	# D.9200, D.9193
	movl	%eax, %edi	# D.9193,
	call	tolower	#
	movb	%al, (%rbx)	# D.9200, *_255
	.loc 1 490 0
	addl	$1, -60(%rbp)	#, apos
	jmp	.L121	#
.L123:
	.loc 1 493 0
	cmpl	$5, -48(%rbp)	#, statetype
	je	.L126	#,
	.loc 1 493 0 is_stmt 0 discriminator 2
	cmpl	$8, -48(%rbp)	#, statetype
	jne	.L127	#,
.L126:
	.loc 1 493 0 discriminator 1
	cmpl	$0, -44(%rbp)	#, rpos
	jle	.L127	#,
	.loc 1 494 0 is_stmt 1
	cmpl	$0, 16(%rbp)	#, matchonly
	je	.L128	#,
	.loc 1 495 0
	movq	-24(%rbp), %rax	# msa, tmp546
	movq	(%rax), %rax	# msa_150->aseq, D.9201
	movl	-72(%rbp), %edx	# idx, tmp547
	movslq	%edx, %rdx	# tmp547, D.9194
	salq	$3, %rdx	#, D.9194
	addq	%rdx, %rax	# D.9194, D.9201
	movq	(%rax), %rdx	# *_272, D.9198
	movl	-60(%rbp), %eax	# apos, tmp548
	cltq
	addq	%rdx, %rax	# D.9198, D.9198
	movb	$42, (%rax)	#, *_275
	.loc 1 494 0
	jmp	.L121	#
.L128:
	.loc 1 497 0
	movq	-24(%rbp), %rax	# msa, tmp549
	movq	(%rax), %rax	# msa_150->aseq, D.9201
	movl	-72(%rbp), %edx	# idx, tmp550
	movslq	%edx, %rdx	# tmp550, D.9194
	salq	$3, %rdx	#, D.9194
	addq	%rdx, %rax	# D.9194, D.9201
	movq	(%rax), %rdx	# *_279, D.9198
	movl	-60(%rbp), %eax	# apos, tmp551
	cltq
	leaq	(%rdx,%rax), %rbx	#, D.9198
	movl	-72(%rbp), %eax	# idx, tmp552
	cltq
	leaq	0(,%rax,8), %rdx	#, D.9194
	movq	-88(%rbp), %rax	# dsq, tmp553
	addq	%rdx, %rax	# D.9194, D.9201
	movq	(%rax), %rdx	# *_285, D.9198
	movl	-44(%rbp), %eax	# rpos, tmp554
	cltq
	addq	%rdx, %rax	# D.9198, D.9198
	movzbl	(%rax), %eax	# *_288, D.9200
	movsbl	%al, %eax	# D.9200, D.9193
	cltq
	movzbl	Alphabet(%rax), %eax	# Alphabet, D.9200
	movsbl	%al, %eax	# D.9200, D.9193
	movl	%eax, %edi	# D.9193,
	call	tolower	#
	movb	%al, (%rbx)	# D.9200, *_282
	.loc 1 498 0
	addl	$1, -60(%rbp)	#, apos
	.loc 1 494 0
	jmp	.L121	#
.L127:
	.loc 1 501 0
	cmpl	$7, -48(%rbp)	#, statetype
	jne	.L121	#,
	.loc 1 502 0
	movl	-112(%rbp), %eax	# mlen, tmp556
	cltq
	leaq	0(,%rax,4), %rdx	#, D.9194
	movq	-32(%rbp), %rax	# matmap, tmp557
	addq	%rdx, %rax	# D.9194, D.9195
	movl	(%rax), %eax	# *_298, D.9193
	addl	$1, %eax	#, tmp558
	movl	%eax, -60(%rbp)	# tmp558, apos
.L121:
	.loc 1 472 0
	addl	$1, -56(%rbp)	#, tpos
.L119:
	.loc 1 472 0 is_stmt 0 discriminator 1
	movl	-72(%rbp), %eax	# idx, tmp559
	cltq
	leaq	0(,%rax,8), %rdx	#, D.9194
	movq	-120(%rbp), %rax	# tr, tmp560
	addq	%rdx, %rax	# D.9194, D.9196
	movq	(%rax), %rax	# *_185, D.9197
	movl	(%rax), %eax	# _186->tlen, D.9193
	cmpl	-56(%rbp), %eax	# tpos, D.9193
	jg	.L130	#,
	.loc 1 509 0 is_stmt 1
	cmpl	$0, 16(%rbp)	#, matchonly
	jne	.L131	#,
	.loc 1 510 0
	movq	-40(%rbp), %rax	# inserts, tmp561
	movl	(%rax), %edx	# *inserts_29, D.9193
	movq	-24(%rbp), %rax	# msa, tmp562
	movq	(%rax), %rax	# msa_150->aseq, D.9201
	movl	-72(%rbp), %ecx	# idx, tmp563
	movslq	%ecx, %rcx	# tmp563, D.9194
	salq	$3, %rcx	#, D.9194
	addq	%rcx, %rax	# D.9194, D.9201
	movq	(%rax), %rax	# *_306, D.9198
	movl	%edx, %esi	# D.9193,
	movq	%rax, %rdi	# D.9198,
	call	rightjustify	#
	.loc 1 512 0
	movl	$1, -52(%rbp)	#, k
	jmp	.L132	#
.L136:
	.loc 1 513 0
	movl	-52(%rbp), %eax	# k, tmp564
	cltq
	leaq	0(,%rax,4), %rdx	#, D.9194
	movq	-40(%rbp), %rax	# inserts, tmp565
	addq	%rdx, %rax	# D.9194, D.9195
	movl	(%rax), %eax	# *_311, D.9193
	cmpl	$1, %eax	#, D.9193
	jle	.L133	#,
	.loc 1 514 0
	movl	$0, -64(%rbp)	#, nins
	movl	-52(%rbp), %eax	# k, tmp566
	cltq
	leaq	0(,%rax,4), %rdx	#, D.9194
	movq	-32(%rbp), %rax	# matmap, tmp567
	addq	%rdx, %rax	# D.9194, D.9195
	movl	(%rax), %eax	# *_316, D.9193
	addl	$1, %eax	#, tmp568
	movl	%eax, -60(%rbp)	# tmp568, apos
	jmp	.L134	#
.L135:
	.loc 1 515 0 discriminator 2
	addl	$1, -64(%rbp)	#, nins
	.loc 1 514 0 discriminator 2
	addl	$1, -60(%rbp)	#, apos
.L134:
	.loc 1 514 0 is_stmt 0 discriminator 1
	call	__ctype_b_loc	#
	movq	(%rax), %rdx	# *_319, D.9203
	movq	-24(%rbp), %rax	# msa, tmp569
	movq	(%rax), %rax	# msa_150->aseq, D.9201
	movl	-72(%rbp), %ecx	# idx, tmp570
	movslq	%ecx, %rcx	# tmp570, D.9194
	salq	$3, %rcx	#, D.9194
	addq	%rcx, %rax	# D.9194, D.9201
	movq	(%rax), %rcx	# *_324, D.9198
	movl	-60(%rbp), %eax	# apos, tmp571
	cltq
	addq	%rcx, %rax	# D.9198, D.9198
	movzbl	(%rax), %eax	# *_327, D.9200
	movsbq	%al, %rax	# D.9200, D.9194
	addq	%rax, %rax	# D.9194
	addq	%rdx, %rax	# D.9203, D.9203
	movzwl	(%rax), %eax	# *_331, D.9204
	movzwl	%ax, %eax	# D.9204, D.9193
	andl	$512, %eax	#, D.9193
	testl	%eax, %eax	# D.9193
	jne	.L135	#,
	.loc 1 516 0 is_stmt 1
	movl	-64(%rbp), %eax	# nins, tmp573
	movl	%eax, %edx	# tmp573, tmp574
	shrl	$31, %edx	#, tmp574
	addl	%edx, %eax	# tmp574, tmp575
	sarl	%eax	# tmp576
	movl	%eax, -64(%rbp)	# tmp576, nins
	.loc 1 517 0
	movl	-52(%rbp), %eax	# k, tmp577
	cltq
	leaq	0(,%rax,4), %rdx	#, D.9194
	movq	-40(%rbp), %rax	# inserts, tmp578
	addq	%rdx, %rax	# D.9194, D.9195
	movl	(%rax), %eax	# *_340, D.9193
	subl	-64(%rbp), %eax	# nins, D.9193
	movq	-24(%rbp), %rdx	# msa, tmp579
	movq	(%rdx), %rdx	# msa_150->aseq, D.9201
	movl	-72(%rbp), %ecx	# idx, tmp580
	movslq	%ecx, %rcx	# tmp580, D.9194
	salq	$3, %rcx	#, D.9194
	addq	%rcx, %rdx	# D.9194, D.9201
	movq	(%rdx), %rdx	# *_346, D.9198
	movl	-52(%rbp), %ecx	# k, tmp581
	movslq	%ecx, %rcx	# tmp581, D.9194
	leaq	0(,%rcx,4), %rsi	#, D.9194
	movq	-32(%rbp), %rcx	# matmap, tmp582
	addq	%rsi, %rcx	# D.9194, D.9195
	movl	(%rcx), %ecx	# *_350, D.9193
	movslq	%ecx, %rsi	# D.9193, D.9199
	movl	-64(%rbp), %ecx	# nins, tmp583
	movslq	%ecx, %rcx	# tmp583, D.9199
	addq	%rsi, %rcx	# D.9199, D.9199
	addq	$1, %rcx	#, D.9199
	addq	%rcx, %rdx	# D.9199, D.9198
	movl	%eax, %esi	# D.9193,
	movq	%rdx, %rdi	# D.9198,
	call	rightjustify	#
.L133:
	.loc 1 512 0
	addl	$1, -52(%rbp)	#, k
.L132:
	.loc 1 512 0 is_stmt 0 discriminator 1
	movl	-52(%rbp), %eax	# k, tmp584
	cmpl	-112(%rbp), %eax	# mlen, tmp584
	jl	.L136	#,
.L131:
	.loc 1 463 0 is_stmt 1
	addl	$1, -72(%rbp)	#, idx
.L114:
	.loc 1 463 0 is_stmt 0 discriminator 1
	movl	-72(%rbp), %eax	# idx, tmp585
	cmpl	-108(%rbp), %eax	# nseq, tmp585
	jl	.L137	#,
	.loc 1 527 0 is_stmt 1
	movq	-24(%rbp), %rax	# msa, tmp586
	movl	-108(%rbp), %edx	# nseq, tmp587
	movl	%edx, 28(%rax)	# tmp587, msa_150->nseq
	.loc 1 528 0
	movq	-24(%rbp), %rax	# msa, tmp588
	movl	-68(%rbp), %edx	# alen, tmp589
	movl	%edx, 24(%rax)	# tmp589, msa_150->alen
	.loc 1 529 0
	movl	$10, %edx	#,
	movl	$529, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_malloc	#
	movq	-24(%rbp), %rdx	# msa, tmp590
	movq	%rax, 64(%rdx)	# D.9205, msa_150->au
	.loc 1 530 0
	movq	-24(%rbp), %rax	# msa, tmp591
	movq	64(%rax), %rax	# msa_150->au, D.9198
	movl	$.LC5, %edx	#,
	movl	$.LC6, %esi	#,
	movq	%rax, %rdi	# D.9198,
	movl	$0, %eax	#,
	call	sprintf	#
	.loc 1 532 0
	movl	$0, -72(%rbp)	#, idx
	jmp	.L138	#
.L145:
	.loc 1 534 0
	movq	-24(%rbp), %rax	# msa, tmp592
	movq	8(%rax), %rax	# msa_150->sqname, D.9201
	movl	-72(%rbp), %edx	# idx, tmp593
	movslq	%edx, %rdx	# tmp593, D.9194
	salq	$3, %rdx	#, D.9194
	leaq	(%rax,%rdx), %rbx	#, D.9201
	movl	-72(%rbp), %eax	# idx, tmp594
	cltq
	imulq	$360, %rax, %rdx	#, D.9194, D.9194
	movq	-96(%rbp), %rax	# sqinfo, tmp595
	addq	%rdx, %rax	# D.9194, D.9206
	addq	$4, %rax	#, D.9207
	movl	$-1, %esi	#,
	movq	%rax, %rdi	# D.9207,
	call	sre_strdup	#
	movq	%rax, (%rbx)	# D.9198, *_365
	.loc 1 535 0
	movl	-72(%rbp), %eax	# idx, tmp596
	cltq
	imulq	$360, %rax, %rdx	#, D.9194, D.9194
	movq	-96(%rbp), %rax	# sqinfo, tmp597
	addq	%rdx, %rax	# D.9194, D.9206
	movl	(%rax), %eax	# _374->flags, D.9193
	andl	$4, %eax	#, D.9193
	testl	%eax, %eax	# D.9193
	je	.L139	#,
	.loc 1 536 0
	movl	-72(%rbp), %eax	# idx, tmp598
	cltq
	imulq	$360, %rax, %rdx	#, D.9194, D.9194
	movq	-96(%rbp), %rax	# sqinfo, tmp599
	addq	%rdx, %rax	# D.9194, D.9206
	leaq	132(%rax), %rdx	#, D.9207
	movl	-72(%rbp), %ecx	# idx, tmp600
	movq	-24(%rbp), %rax	# msa, tmp601
	movl	%ecx, %esi	# tmp600,
	movq	%rax, %rdi	# tmp601,
	call	MSASetSeqAccession	#
.L139:
	.loc 1 537 0
	movl	-72(%rbp), %eax	# idx, tmp602
	cltq
	imulq	$360, %rax, %rdx	#, D.9194, D.9194
	movq	-96(%rbp), %rax	# sqinfo, tmp603
	addq	%rdx, %rax	# D.9194, D.9206
	movl	(%rax), %eax	# _383->flags, D.9193
	andl	$8, %eax	#, D.9193
	testl	%eax, %eax	# D.9193
	je	.L140	#,
	.loc 1 538 0
	movl	-72(%rbp), %eax	# idx, tmp604
	cltq
	imulq	$360, %rax, %rdx	#, D.9194, D.9194
	movq	-96(%rbp), %rax	# sqinfo, tmp605
	addq	%rdx, %rax	# D.9194, D.9206
	leaq	196(%rax), %rdx	#, D.9208
	movl	-72(%rbp), %ecx	# idx, tmp606
	movq	-24(%rbp), %rax	# msa, tmp607
	movl	%ecx, %esi	# tmp606,
	movq	%rax, %rdi	# tmp607,
	call	MSASetSeqDescription	#
.L140:
	.loc 1 540 0
	movl	-72(%rbp), %eax	# idx, tmp608
	cltq
	imulq	$360, %rax, %rdx	#, D.9194, D.9194
	movq	-96(%rbp), %rax	# sqinfo, tmp609
	addq	%rdx, %rax	# D.9194, D.9206
	movl	(%rax), %eax	# _392->flags, D.9193
	andl	$512, %eax	#, D.9193
	testl	%eax, %eax	# D.9193
	je	.L141	#,
	.loc 1 541 0
	movq	-24(%rbp), %rax	# msa, tmp610
	movq	112(%rax), %rax	# msa_150->ss, D.9201
	testq	%rax, %rax	# D.9201
	jne	.L142	#,
	.loc 1 541 0 is_stmt 0 discriminator 1
	movl	-108(%rbp), %eax	# nseq, tmp611
	cltq
	salq	$3, %rax	#, D.9194
	movq	%rax, %rdx	# D.9194,
	movl	$541, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_malloc	#
	movq	-24(%rbp), %rdx	# msa, tmp612
	movq	%rax, 112(%rdx)	# D.9205, msa_150->ss
.L142:
	.loc 1 543 0 is_stmt 1
	movq	-24(%rbp), %rax	# msa, tmp613
	movq	112(%rax), %rax	# msa_150->ss, D.9201
	.loc 1 542 0
	movl	-72(%rbp), %edx	# idx, tmp614
	movslq	%edx, %rdx	# tmp614, D.9194
	.loc 1 543 0
	salq	$3, %rdx	#, D.9194
	.loc 1 542 0
	leaq	(%rax,%rdx), %rcx	#, D.9201
	.loc 1 543 0
	movl	-72(%rbp), %eax	# idx, tmp615
	cltq
	imulq	$360, %rax, %rdx	#, D.9194, D.9194
	movq	-96(%rbp), %rax	# sqinfo, tmp616
	addq	%rdx, %rax	# D.9194, D.9206
	.loc 1 542 0
	movq	344(%rax), %rdx	# _405->ss, D.9198
	movq	-24(%rbp), %rax	# msa, tmp617
	movq	(%rax), %rax	# msa_150->aseq, D.9201
	movl	-72(%rbp), %esi	# idx, tmp618
	movslq	%esi, %rsi	# tmp618, D.9194
	salq	$3, %rsi	#, D.9194
	addq	%rsi, %rax	# D.9194, D.9201
	movq	(%rax), %rax	# *_410, D.9198
	movl	-68(%rbp), %esi	# alen, tmp619
	movq	%rax, %rdi	# D.9198,
	call	MakeAlignedString	#
.L141:
	.loc 1 545 0
	movl	-72(%rbp), %eax	# idx, tmp620
	cltq
	imulq	$360, %rax, %rdx	#, D.9194, D.9194
	movq	-96(%rbp), %rax	# sqinfo, tmp621
	addq	%rdx, %rax	# D.9194, D.9206
	movl	(%rax), %eax	# _414->flags, D.9193
	andl	$1024, %eax	#, D.9193
	testl	%eax, %eax	# D.9193
	je	.L143	#,
	.loc 1 546 0
	movq	-24(%rbp), %rax	# msa, tmp622
	movq	120(%rax), %rax	# msa_150->sa, D.9201
	testq	%rax, %rax	# D.9201
	jne	.L144	#,
	.loc 1 546 0 is_stmt 0 discriminator 1
	movl	-108(%rbp), %eax	# nseq, tmp623
	cltq
	salq	$3, %rax	#, D.9194
	movq	%rax, %rdx	# D.9194,
	movl	$546, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_malloc	#
	movq	-24(%rbp), %rdx	# msa, tmp624
	movq	%rax, 120(%rdx)	# D.9205, msa_150->sa
.L144:
	.loc 1 548 0 is_stmt 1
	movq	-24(%rbp), %rax	# msa, tmp625
	movq	120(%rax), %rax	# msa_150->sa, D.9201
	.loc 1 547 0
	movl	-72(%rbp), %edx	# idx, tmp626
	movslq	%edx, %rdx	# tmp626, D.9194
	.loc 1 548 0
	salq	$3, %rdx	#, D.9194
	.loc 1 547 0
	leaq	(%rax,%rdx), %rcx	#, D.9201
	.loc 1 548 0
	movl	-72(%rbp), %eax	# idx, tmp627
	cltq
	imulq	$360, %rax, %rdx	#, D.9194, D.9194
	movq	-96(%rbp), %rax	# sqinfo, tmp628
	addq	%rdx, %rax	# D.9194, D.9206
	.loc 1 547 0
	movq	352(%rax), %rdx	# _427->sa, D.9198
	movq	-24(%rbp), %rax	# msa, tmp629
	movq	(%rax), %rax	# msa_150->aseq, D.9201
	movl	-72(%rbp), %esi	# idx, tmp630
	movslq	%esi, %rsi	# tmp630, D.9194
	salq	$3, %rsi	#, D.9194
	addq	%rsi, %rax	# D.9194, D.9201
	movq	(%rax), %rax	# *_432, D.9198
	movl	-68(%rbp), %esi	# alen, tmp631
	movq	%rax, %rdi	# D.9198,
	call	MakeAlignedString	#
.L143:
	.loc 1 550 0
	movq	-24(%rbp), %rax	# msa, tmp632
	movq	16(%rax), %rax	# msa_150->wgt, D.9209
	movl	-72(%rbp), %edx	# idx, tmp633
	movslq	%edx, %rdx	# tmp633, D.9194
	salq	$2, %rdx	#, D.9194
	addq	%rax, %rdx	# D.9209, D.9209
	movl	-72(%rbp), %eax	# idx, tmp634
	cltq
	leaq	0(,%rax,4), %rcx	#, D.9194
	movq	-104(%rbp), %rax	# wgt, tmp635
	addq	%rcx, %rax	# D.9194, D.9209
	movl	(%rax), %eax	# *_441, D.9210
	movl	%eax, (%rdx)	# D.9210, *_437
	.loc 1 532 0
	addl	$1, -72(%rbp)	#, idx
.L138:
	.loc 1 532 0 is_stmt 0 discriminator 1
	movl	-72(%rbp), %eax	# idx, tmp636
	cmpl	-108(%rbp), %eax	# nseq, tmp636
	jl	.L145	#,
	.loc 1 555 0 is_stmt 1
	movl	-68(%rbp), %eax	# alen, tmp637
	addl	$1, %eax	#, D.9193
	cltq
	movq	%rax, %rdx	# D.9194,
	movl	$555, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_malloc	#
	movq	-24(%rbp), %rdx	# msa, tmp638
	movq	%rax, 88(%rdx)	# D.9205, msa_150->rf
	.loc 1 556 0
	movl	$0, -60(%rbp)	#, apos
	jmp	.L146	#
.L147:
	.loc 1 557 0 discriminator 2
	movq	-24(%rbp), %rax	# msa, tmp639
	movq	88(%rax), %rdx	# msa_150->rf, D.9198
	movl	-60(%rbp), %eax	# apos, tmp640
	cltq
	addq	%rdx, %rax	# D.9198, D.9198
	movb	$46, (%rax)	#, *_450
	.loc 1 556 0 discriminator 2
	addl	$1, -60(%rbp)	#, apos
.L146:
	.loc 1 556 0 is_stmt 0 discriminator 1
	movl	-60(%rbp), %eax	# apos, tmp641
	cmpl	-68(%rbp), %eax	# alen, tmp641
	jl	.L147	#,
	.loc 1 558 0 is_stmt 1
	movl	$1, -52(%rbp)	#, k
	jmp	.L148	#
.L149:
	.loc 1 559 0 discriminator 2
	movq	-24(%rbp), %rax	# msa, tmp642
	movq	88(%rax), %rdx	# msa_150->rf, D.9198
	movl	-52(%rbp), %eax	# k, tmp643
	cltq
	leaq	0(,%rax,4), %rcx	#, D.9194
	movq	-32(%rbp), %rax	# matmap, tmp644
	addq	%rcx, %rax	# D.9194, D.9195
	movl	(%rax), %eax	# *_456, D.9193
	cltq
	addq	%rdx, %rax	# D.9198, D.9198
	movb	$120, (%rax)	#, *_459
	.loc 1 558 0 discriminator 2
	addl	$1, -52(%rbp)	#, k
.L148:
	.loc 1 558 0 is_stmt 0 discriminator 1
	movl	-52(%rbp), %eax	# k, tmp645
	cmpl	-112(%rbp), %eax	# mlen, tmp645
	jle	.L149	#,
	.loc 1 560 0 is_stmt 1
	movq	-24(%rbp), %rax	# msa, tmp646
	movq	88(%rax), %rdx	# msa_150->rf, D.9198
	movl	-68(%rbp), %eax	# alen, tmp647
	cltq
	addq	%rdx, %rax	# D.9198, D.9198
	movb	$0, (%rax)	#, *_463
	.loc 1 566 0
	movq	-40(%rbp), %rax	# inserts, tmp648
	movq	%rax, %rdi	# tmp648,
	call	free	#
	.loc 1 567 0
	movq	-32(%rbp), %rax	# matmap, tmp649
	movq	%rax, %rdi	# tmp649,
	call	free	#
	.loc 1 568 0
	movq	-24(%rbp), %rax	# msa, D.9211
	.loc 1 569 0
	addq	$120, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	P7Traces2Alignment, .-P7Traces2Alignment
	.section	.rodata
.LC7:
	.string	"illegal %s->%s transition"
	.text
	.globl	TransitionScoreLookup
	.type	TransitionScoreLookup, @function
TransitionScoreLookup:
.LFB11:
	.loc 1 580 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$40, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)	# hmm, hmm
	movl	%edx, -32(%rbp)	# k1, k1
	movl	%ecx, %eax	# st2, tmp155
	movl	%r8d, -40(%rbp)	# k2, k2
	movb	%sil, -28(%rbp)	# tmp154, st1
	movb	%al, -36(%rbp)	# tmp155, st2
	.loc 1 581 0
	movsbl	-28(%rbp), %eax	# st1, D.9216
	cmpl	$10, %eax	#, D.9216
	ja	.L153	#,
	movl	%eax, %eax	# D.9216, tmp156
	movq	.L155(,%rax,8), %rax	#, tmp157
	jmp	*%rax	# tmp157
	.section	.rodata
	.align 8
	.align 4
.L155:
	.quad	.L153
	.quad	.L154
	.quad	.L156
	.quad	.L157
	.quad	.L158
	.quad	.L159
	.quad	.L160
	.quad	.L161
	.quad	.L162
	.quad	.L163
	.quad	.L164
	.text
.L158:
	.loc 1 582 0
	movl	$0, %eax	#, D.9216
	jmp	.L165	#
.L159:
	.loc 1 584 0
	movsbl	-36(%rbp), %eax	# st2, D.9216
	cmpl	$5, %eax	#, D.9216
	je	.L167	#,
	cmpl	$6, %eax	#, D.9216
	jne	.L195	#,
	.loc 1 585 0
	movq	-24(%rbp), %rax	# hmm, tmp158
	movl	336(%rax), %eax	# hmm_7(D)->xsc, D.9216
	jmp	.L165	#
.L167:
	.loc 1 586 0
	movq	-24(%rbp), %rax	# hmm, tmp159
	movl	340(%rax), %eax	# hmm_7(D)->xsc, D.9216
	jmp	.L165	#
.L195:
	.loc 1 587 0
	movsbl	-36(%rbp), %eax	# st2, D.9216
	movl	%eax, %edi	# D.9216,
	call	Statetype	#
	movq	%rax, %rbx	#, D.9217
	movsbl	-28(%rbp), %eax	# st1, D.9216
	movl	%eax, %edi	# D.9216,
	call	Statetype	#
	movq	%rbx, %rdx	# D.9217,
	movq	%rax, %rsi	# D.9217,
	movl	$.LC7, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
	.loc 1 589 0
	jmp	.L169	#
.L160:
	.loc 1 591 0
	movsbl	-36(%rbp), %eax	# st2, D.9216
	cmpl	$1, %eax	#, D.9216
	je	.L171	#,
	cmpl	$2, %eax	#, D.9216
	je	.L172	#,
	jmp	.L196	#
.L171:
	.loc 1 592 0
	movq	-24(%rbp), %rax	# hmm, tmp160
	movq	368(%rax), %rax	# hmm_7(D)->bsc, D.9218
	movl	-40(%rbp), %edx	# k2, tmp161
	movslq	%edx, %rdx	# tmp161, D.9219
	salq	$2, %rdx	#, D.9219
	addq	%rdx, %rax	# D.9219, D.9218
	movl	(%rax), %eax	# *_19, D.9216
	jmp	.L165	#
.L172:
	.loc 1 593 0
	movq	-24(%rbp), %rax	# hmm, tmp162
	movl	168(%rax), %eax	# hmm_7(D)->tbd1, D.9220
	movss	.LC8(%rip), %xmm1	#,
	movl	%eax, -44(%rbp)	# D.9220, %sfp
	movss	-44(%rbp), %xmm0	# %sfp,
	call	Prob2Score	#
	jmp	.L165	#
.L196:
	.loc 1 594 0
	movsbl	-36(%rbp), %eax	# st2, D.9216
	movl	%eax, %edi	# D.9216,
	call	Statetype	#
	movq	%rax, %rbx	#, D.9217
	movsbl	-28(%rbp), %eax	# st1, D.9216
	movl	%eax, %edi	# D.9216,
	call	Statetype	#
	movq	%rbx, %rdx	# D.9217,
	movq	%rax, %rsi	# D.9217,
	movl	$.LC7, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
	.loc 1 596 0
	jmp	.L169	#
.L154:
	.loc 1 598 0
	movsbl	-36(%rbp), %eax	# st2, D.9216
	cmpl	$2, %eax	#, D.9216
	je	.L174	#,
	cmpl	$2, %eax	#, D.9216
	jg	.L175	#,
	cmpl	$1, %eax	#, D.9216
	je	.L176	#,
	jmp	.L173	#
.L175:
	cmpl	$3, %eax	#, D.9216
	je	.L177	#,
	cmpl	$7, %eax	#, D.9216
	je	.L178	#,
	jmp	.L173	#
.L176:
	.loc 1 599 0
	movq	-24(%rbp), %rax	# hmm, tmp163
	movq	312(%rax), %rax	# hmm_7(D)->tsc, D.9221
	movq	(%rax), %rax	# *_28, D.9218
	movl	-32(%rbp), %edx	# k1, tmp164
	movslq	%edx, %rdx	# tmp164, D.9219
	salq	$2, %rdx	#, D.9219
	addq	%rdx, %rax	# D.9219, D.9218
	movl	(%rax), %eax	# *_33, D.9216
	jmp	.L165	#
.L177:
	.loc 1 600 0
	movq	-24(%rbp), %rax	# hmm, tmp165
	movq	312(%rax), %rax	# hmm_7(D)->tsc, D.9221
	addq	$8, %rax	#, D.9221
	movq	(%rax), %rax	# *_36, D.9218
	movl	-32(%rbp), %edx	# k1, tmp166
	movslq	%edx, %rdx	# tmp166, D.9219
	salq	$2, %rdx	#, D.9219
	addq	%rdx, %rax	# D.9219, D.9218
	movl	(%rax), %eax	# *_40, D.9216
	jmp	.L165	#
.L174:
	.loc 1 601 0
	movq	-24(%rbp), %rax	# hmm, tmp167
	movq	312(%rax), %rax	# hmm_7(D)->tsc, D.9221
	addq	$16, %rax	#, D.9221
	movq	(%rax), %rax	# *_43, D.9218
	movl	-32(%rbp), %edx	# k1, tmp168
	movslq	%edx, %rdx	# tmp168, D.9219
	salq	$2, %rdx	#, D.9219
	addq	%rdx, %rax	# D.9219, D.9218
	movl	(%rax), %eax	# *_47, D.9216
	jmp	.L165	#
.L178:
	.loc 1 602 0
	movq	-24(%rbp), %rax	# hmm, tmp169
	movq	376(%rax), %rax	# hmm_7(D)->esc, D.9218
	movl	-32(%rbp), %edx	# k1, tmp170
	movslq	%edx, %rdx	# tmp170, D.9219
	salq	$2, %rdx	#, D.9219
	addq	%rdx, %rax	# D.9219, D.9218
	movl	(%rax), %eax	# *_52, D.9216
	jmp	.L165	#
.L173:
	.loc 1 603 0
	movsbl	-36(%rbp), %eax	# st2, D.9216
	movl	%eax, %edi	# D.9216,
	call	Statetype	#
	movq	%rax, %rbx	#, D.9217
	movsbl	-28(%rbp), %eax	# st1, D.9216
	movl	%eax, %edi	# D.9216,
	call	Statetype	#
	movq	%rbx, %rdx	# D.9217,
	movq	%rax, %rsi	# D.9217,
	movl	$.LC7, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
	.loc 1 605 0
	jmp	.L169	#
.L157:
	.loc 1 607 0
	movsbl	-36(%rbp), %eax	# st2, D.9216
	cmpl	$1, %eax	#, D.9216
	je	.L180	#,
	cmpl	$3, %eax	#, D.9216
	je	.L181	#,
	jmp	.L197	#
.L180:
	.loc 1 608 0
	movq	-24(%rbp), %rax	# hmm, tmp171
	movq	312(%rax), %rax	# hmm_7(D)->tsc, D.9221
	addq	$24, %rax	#, D.9221
	movq	(%rax), %rax	# *_60, D.9218
	movl	-32(%rbp), %edx	# k1, tmp172
	movslq	%edx, %rdx	# tmp172, D.9219
	salq	$2, %rdx	#, D.9219
	addq	%rdx, %rax	# D.9219, D.9218
	movl	(%rax), %eax	# *_64, D.9216
	jmp	.L165	#
.L181:
	.loc 1 609 0
	movq	-24(%rbp), %rax	# hmm, tmp173
	movq	312(%rax), %rax	# hmm_7(D)->tsc, D.9221
	addq	$32, %rax	#, D.9221
	movq	(%rax), %rax	# *_67, D.9218
	movl	-32(%rbp), %edx	# k1, tmp174
	movslq	%edx, %rdx	# tmp174, D.9219
	salq	$2, %rdx	#, D.9219
	addq	%rdx, %rax	# D.9219, D.9218
	movl	(%rax), %eax	# *_71, D.9216
	jmp	.L165	#
.L197:
	.loc 1 610 0
	movsbl	-36(%rbp), %eax	# st2, D.9216
	movl	%eax, %edi	# D.9216,
	call	Statetype	#
	movq	%rax, %rbx	#, D.9217
	movsbl	-28(%rbp), %eax	# st1, D.9216
	movl	%eax, %edi	# D.9216,
	call	Statetype	#
	movq	%rbx, %rdx	# D.9217,
	movq	%rax, %rsi	# D.9217,
	movl	$.LC7, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
	.loc 1 612 0
	jmp	.L169	#
.L156:
	.loc 1 614 0
	movsbl	-36(%rbp), %eax	# st2, D.9216
	cmpl	$2, %eax	#, D.9216
	je	.L183	#,
	cmpl	$7, %eax	#, D.9216
	je	.L184	#,
	cmpl	$1, %eax	#, D.9216
	jne	.L198	#,
	.loc 1 615 0
	movq	-24(%rbp), %rax	# hmm, tmp175
	movq	312(%rax), %rax	# hmm_7(D)->tsc, D.9221
	addq	$40, %rax	#, D.9221
	movq	(%rax), %rax	# *_79, D.9218
	movl	-32(%rbp), %edx	# k1, tmp176
	movslq	%edx, %rdx	# tmp176, D.9219
	salq	$2, %rdx	#, D.9219
	addq	%rdx, %rax	# D.9219, D.9218
	movl	(%rax), %eax	# *_83, D.9216
	jmp	.L165	#
.L183:
	.loc 1 616 0
	movq	-24(%rbp), %rax	# hmm, tmp177
	movq	312(%rax), %rax	# hmm_7(D)->tsc, D.9221
	addq	$48, %rax	#, D.9221
	movq	(%rax), %rax	# *_86, D.9218
	movl	-32(%rbp), %edx	# k1, tmp178
	movslq	%edx, %rdx	# tmp178, D.9219
	salq	$2, %rdx	#, D.9219
	addq	%rdx, %rax	# D.9219, D.9218
	movl	(%rax), %eax	# *_90, D.9216
	jmp	.L165	#
.L184:
	.loc 1 617 0
	movl	$0, %eax	#, D.9216
	jmp	.L165	#
.L198:
	.loc 1 618 0
	movsbl	-36(%rbp), %eax	# st2, D.9216
	movl	%eax, %edi	# D.9216,
	call	Statetype	#
	movq	%rax, %rbx	#, D.9217
	movsbl	-28(%rbp), %eax	# st1, D.9216
	movl	%eax, %edi	# D.9216,
	call	Statetype	#
	movq	%rbx, %rdx	# D.9217,
	movq	%rax, %rsi	# D.9217,
	movl	$.LC7, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
	.loc 1 620 0
	jmp	.L169	#
.L161:
	.loc 1 622 0
	movsbl	-36(%rbp), %eax	# st2, D.9216
	cmpl	$8, %eax	#, D.9216
	je	.L187	#,
	cmpl	$10, %eax	#, D.9216
	je	.L188	#,
	jmp	.L199	#
.L187:
	.loc 1 623 0
	movq	-24(%rbp), %rax	# hmm, tmp179
	movl	344(%rax), %eax	# hmm_7(D)->xsc, D.9216
	jmp	.L165	#
.L188:
	.loc 1 624 0
	movq	-24(%rbp), %rax	# hmm, tmp180
	movl	348(%rax), %eax	# hmm_7(D)->xsc, D.9216
	jmp	.L165	#
.L199:
	.loc 1 625 0
	movsbl	-36(%rbp), %eax	# st2, D.9216
	movl	%eax, %edi	# D.9216,
	call	Statetype	#
	movq	%rax, %rbx	#, D.9217
	movsbl	-28(%rbp), %eax	# st1, D.9216
	movl	%eax, %edi	# D.9216,
	call	Statetype	#
	movq	%rbx, %rdx	# D.9217,
	movq	%rax, %rsi	# D.9217,
	movl	$.LC7, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
	.loc 1 627 0
	jmp	.L169	#
.L164:
	.loc 1 629 0
	movsbl	-36(%rbp), %eax	# st2, D.9216
	cmpl	$6, %eax	#, D.9216
	je	.L190	#,
	cmpl	$10, %eax	#, D.9216
	je	.L191	#,
	jmp	.L200	#
.L190:
	.loc 1 630 0
	movq	-24(%rbp), %rax	# hmm, tmp181
	movl	360(%rax), %eax	# hmm_7(D)->xsc, D.9216
	jmp	.L165	#
.L191:
	.loc 1 631 0
	movq	-24(%rbp), %rax	# hmm, tmp182
	movl	364(%rax), %eax	# hmm_7(D)->xsc, D.9216
	jmp	.L165	#
.L200:
	.loc 1 632 0
	movsbl	-36(%rbp), %eax	# st2, D.9216
	movl	%eax, %edi	# D.9216,
	call	Statetype	#
	movq	%rax, %rbx	#, D.9217
	movsbl	-28(%rbp), %eax	# st1, D.9216
	movl	%eax, %edi	# D.9216,
	call	Statetype	#
	movq	%rbx, %rdx	# D.9217,
	movq	%rax, %rsi	# D.9217,
	movl	$.LC7, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
	.loc 1 634 0
	jmp	.L169	#
.L162:
	.loc 1 636 0
	movsbl	-36(%rbp), %eax	# st2, D.9216
	cmpl	$8, %eax	#, D.9216
	je	.L193	#,
	cmpl	$9, %eax	#, D.9216
	jne	.L201	#,
	.loc 1 637 0
	movq	-24(%rbp), %rax	# hmm, tmp183
	movl	352(%rax), %eax	# hmm_7(D)->xsc, D.9216
	jmp	.L165	#
.L193:
	.loc 1 638 0
	movq	-24(%rbp), %rax	# hmm, tmp184
	movl	356(%rax), %eax	# hmm_7(D)->xsc, D.9216
	jmp	.L165	#
.L201:
	.loc 1 639 0
	movsbl	-36(%rbp), %eax	# st2, D.9216
	movl	%eax, %edi	# D.9216,
	call	Statetype	#
	movq	%rax, %rbx	#, D.9217
	movsbl	-28(%rbp), %eax	# st1, D.9216
	movl	%eax, %edi	# D.9216,
	call	Statetype	#
	movq	%rbx, %rdx	# D.9217,
	movq	%rax, %rsi	# D.9217,
	movl	$.LC7, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
	.loc 1 641 0
	jmp	.L169	#
.L163:
	.loc 1 642 0
	movl	$0, %eax	#, D.9216
	jmp	.L165	#
.L153:
	.loc 1 643 0
	movsbl	-28(%rbp), %eax	# st1, D.9216
	movl	%eax, %edi	# D.9216,
	call	Statetype	#
	movq	%rax, %rsi	# D.9217,
	movl	$.LC2, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
.L169:
	.loc 1 646 0
	movl	$0, %eax	#, D.9216
.L165:
	.loc 1 647 0
	addq	$40, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	TransitionScoreLookup, .-TransitionScoreLookup
	.section	.rodata
.LC11:
	.string	"bogus statetype"
	.text
	.globl	CreateFancyAli
	.type	CreateFancyAli, @function
CreateFancyAli:
.LFB12:
	.loc 1 669 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$72, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)	# tr, tr
	movq	%rsi, -64(%rbp)	# hmm, hmm
	movq	%rdx, -72(%rbp)	# dsq, dsq
	movq	%rcx, -80(%rbp)	# name, name
	.loc 1 677 0
	call	AllocFancyAli	#
	movq	%rax, -24(%rbp)	# tmp449, ali
	.loc 1 678 0
	movq	-24(%rbp), %rax	# ali, tmp450
	movq	$0, (%rax)	#, ali_5->rfline
	.loc 1 679 0
	movq	-24(%rbp), %rax	# ali, tmp451
	movq	$0, 8(%rax)	#, ali_5->csline
	.loc 1 680 0
	movq	-56(%rbp), %rax	# tr, tmp452
	movl	(%rax), %eax	# tr_6(D)->tlen, D.9224
	addl	$1, %eax	#, D.9224
	cltq
	movq	%rax, %rdx	# D.9225,
	movl	$680, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_malloc	#
	movq	-24(%rbp), %rdx	# ali, tmp453
	movq	%rax, 16(%rdx)	# D.9226, ali_5->model
	.loc 1 681 0
	movq	-56(%rbp), %rax	# tr, tmp454
	movl	(%rax), %eax	# tr_6(D)->tlen, D.9224
	addl	$1, %eax	#, D.9224
	cltq
	movq	%rax, %rdx	# D.9225,
	movl	$681, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_malloc	#
	movq	-24(%rbp), %rdx	# ali, tmp455
	movq	%rax, 24(%rdx)	# D.9226, ali_5->mline
	.loc 1 682 0
	movq	-56(%rbp), %rax	# tr, tmp456
	movl	(%rax), %eax	# tr_6(D)->tlen, D.9224
	addl	$1, %eax	#, D.9224
	cltq
	movq	%rax, %rdx	# D.9225,
	movl	$682, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_malloc	#
	movq	-24(%rbp), %rdx	# ali, tmp457
	movq	%rax, 32(%rdx)	# D.9226, ali_5->aseq
	.loc 1 684 0
	movq	-56(%rbp), %rax	# tr, tmp458
	movl	(%rax), %eax	# tr_6(D)->tlen, D.9224
	movslq	%eax, %rdx	# D.9224, D.9225
	movq	-24(%rbp), %rax	# ali, tmp459
	movq	16(%rax), %rax	# ali_5->model, D.9227
	movl	$32, %esi	#,
	movq	%rax, %rdi	# D.9227,
	call	memset	#
	.loc 1 685 0
	movq	-56(%rbp), %rax	# tr, tmp460
	movl	(%rax), %eax	# tr_6(D)->tlen, D.9224
	movslq	%eax, %rdx	# D.9224, D.9225
	movq	-24(%rbp), %rax	# ali, tmp461
	movq	24(%rax), %rax	# ali_5->mline, D.9227
	movl	$32, %esi	#,
	movq	%rax, %rdi	# D.9227,
	call	memset	#
	.loc 1 686 0
	movq	-56(%rbp), %rax	# tr, tmp462
	movl	(%rax), %eax	# tr_6(D)->tlen, D.9224
	movslq	%eax, %rdx	# D.9224, D.9225
	movq	-24(%rbp), %rax	# ali, tmp463
	movq	32(%rax), %rax	# ali_5->aseq, D.9227
	movl	$32, %esi	#,
	movq	%rax, %rdi	# D.9227,
	call	memset	#
	.loc 1 688 0
	movq	-64(%rbp), %rax	# hmm, tmp464
	movl	456(%rax), %eax	# hmm_28(D)->flags, D.9224
	andl	$4, %eax	#, D.9224
	testl	%eax, %eax	# D.9224
	je	.L203	#,
	.loc 1 690 0
	movq	-56(%rbp), %rax	# tr, tmp465
	movl	(%rax), %eax	# tr_6(D)->tlen, D.9224
	addl	$1, %eax	#, D.9224
	cltq
	movq	%rax, %rdx	# D.9225,
	movl	$690, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_malloc	#
	movq	-24(%rbp), %rdx	# ali, tmp466
	movq	%rax, (%rdx)	# D.9226, ali_5->rfline
	.loc 1 691 0
	movq	-56(%rbp), %rax	# tr, tmp467
	movl	(%rax), %eax	# tr_6(D)->tlen, D.9224
	movslq	%eax, %rdx	# D.9224, D.9225
	movq	-24(%rbp), %rax	# ali, tmp468
	movq	(%rax), %rax	# ali_5->rfline, D.9227
	movl	$32, %esi	#,
	movq	%rax, %rdi	# D.9227,
	call	memset	#
.L203:
	.loc 1 693 0
	movq	-64(%rbp), %rax	# hmm, tmp469
	movl	456(%rax), %eax	# hmm_28(D)->flags, D.9224
	andl	$8, %eax	#, D.9224
	testl	%eax, %eax	# D.9224
	je	.L204	#,
	.loc 1 695 0
	movq	-56(%rbp), %rax	# tr, tmp470
	movl	(%rax), %eax	# tr_6(D)->tlen, D.9224
	addl	$1, %eax	#, D.9224
	cltq
	movq	%rax, %rdx	# D.9225,
	movl	$695, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_malloc	#
	movq	-24(%rbp), %rdx	# ali, tmp471
	movq	%rax, 8(%rdx)	# D.9226, ali_5->csline
	.loc 1 696 0
	movq	-56(%rbp), %rax	# tr, tmp472
	movl	(%rax), %eax	# tr_6(D)->tlen, D.9224
	movslq	%eax, %rdx	# D.9224, D.9225
	movq	-24(%rbp), %rax	# ali, tmp473
	movq	8(%rax), %rax	# ali_5->csline, D.9227
	movl	$32, %esi	#,
	movq	%rax, %rdi	# D.9227,
	call	memset	#
.L204:
	.loc 1 699 0
	movq	-64(%rbp), %rax	# hmm, tmp474
	movq	(%rax), %rax	# hmm_28(D)->name, D.9227
	movq	%rax, %rdi	# D.9227,
	call	Strdup	#
	movq	-24(%rbp), %rdx	# ali, tmp475
	movq	%rax, 48(%rdx)	# D.9227, ali_5->query
	.loc 1 700 0
	movq	-80(%rbp), %rax	# name, tmp476
	movq	%rax, %rdi	# tmp476,
	call	Strdup	#
	movq	-24(%rbp), %rdx	# ali, tmp477
	movq	%rax, 56(%rdx)	# D.9227, ali_5->target
	.loc 1 702 0
	movl	Alphabet_type(%rip), %eax	# Alphabet_type, Alphabet_type.0
	cmpl	$3, %eax	#, Alphabet_type.0
	jne	.L205	#,
	.loc 1 702 0 is_stmt 0 discriminator 1
	movl	.LC9(%rip), %eax	#, tmp478
	movl	%eax, -32(%rbp)	# tmp478, mthresh
	jmp	.L206	#
.L205:
	.loc 1 703 0 is_stmt 1
	movl	.LC10(%rip), %eax	#, tmp479
	movl	%eax, -32(%rbp)	# tmp479, mthresh
.L206:
	.loc 1 709 0
	movl	$0, -36(%rbp)	#, tpos
	jmp	.L207	#
.L210:
	.loc 1 710 0
	movq	-56(%rbp), %rax	# tr, tmp480
	movq	24(%rax), %rax	# tr_6(D)->pos, D.9228
	movl	-36(%rbp), %edx	# tpos, tmp481
	movslq	%edx, %rdx	# tmp481, D.9225
	salq	$2, %rdx	#, D.9225
	addq	%rdx, %rax	# D.9225, D.9228
	movl	(%rax), %eax	# *_59, D.9224
	testl	%eax, %eax	# D.9224
	jle	.L208	#,
	.loc 1 711 0
	movq	-56(%rbp), %rax	# tr, tmp482
	movq	24(%rax), %rax	# tr_6(D)->pos, D.9228
	movl	-36(%rbp), %edx	# tpos, tmp483
	movslq	%edx, %rdx	# tmp483, D.9225
	salq	$2, %rdx	#, D.9225
	addq	%rdx, %rax	# D.9225, D.9228
	movl	(%rax), %edx	# *_64, D.9224
	movq	-24(%rbp), %rax	# ali, tmp484
	movl	%edx, 64(%rax)	# D.9224, ali_5->sqfrom
	.loc 1 712 0
	jmp	.L209	#
.L208:
	.loc 1 709 0
	addl	$1, -36(%rbp)	#, tpos
.L207:
	.loc 1 709 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# tr, tmp485
	movl	(%rax), %eax	# tr_6(D)->tlen, D.9224
	cmpl	-36(%rbp), %eax	# tpos, D.9224
	jg	.L210	#,
.L209:
	.loc 1 714 0 is_stmt 1
	movq	-56(%rbp), %rax	# tr, tmp486
	movl	(%rax), %eax	# tr_6(D)->tlen, D.9224
	subl	$1, %eax	#, tmp487
	movl	%eax, -36(%rbp)	# tmp487, tpos
	jmp	.L211	#
.L214:
	.loc 1 715 0
	movq	-56(%rbp), %rax	# tr, tmp488
	movq	24(%rax), %rax	# tr_6(D)->pos, D.9228
	movl	-36(%rbp), %edx	# tpos, tmp489
	movslq	%edx, %rdx	# tmp489, D.9225
	salq	$2, %rdx	#, D.9225
	addq	%rdx, %rax	# D.9225, D.9228
	movl	(%rax), %eax	# *_72, D.9224
	testl	%eax, %eax	# D.9224
	jle	.L212	#,
	.loc 1 716 0
	movq	-56(%rbp), %rax	# tr, tmp490
	movq	24(%rax), %rax	# tr_6(D)->pos, D.9228
	movl	-36(%rbp), %edx	# tpos, tmp491
	movslq	%edx, %rdx	# tmp491, D.9225
	salq	$2, %rdx	#, D.9225
	addq	%rdx, %rax	# D.9225, D.9228
	movl	(%rax), %edx	# *_77, D.9224
	movq	-24(%rbp), %rax	# ali, tmp492
	movl	%edx, 68(%rax)	# D.9224, ali_5->sqto
	.loc 1 717 0
	jmp	.L213	#
.L212:
	.loc 1 714 0
	subl	$1, -36(%rbp)	#, tpos
.L211:
	.loc 1 714 0 is_stmt 0 discriminator 1
	cmpl	$0, -36(%rbp)	#, tpos
	jns	.L214	#,
.L213:
	.loc 1 722 0 is_stmt 1
	movl	$0, -36(%rbp)	#, tpos
	jmp	.L215	#
.L240:
	.loc 1 723 0
	movq	-56(%rbp), %rax	# tr, tmp493
	movq	8(%rax), %rdx	# tr_6(D)->statetype, D.9227
	movl	-36(%rbp), %eax	# tpos, tmp494
	cltq
	addq	%rdx, %rax	# D.9227, D.9227
	movzbl	(%rax), %eax	# *_84, D.9230
	movsbl	%al, %eax	# D.9230, D.9224
	cmpl	$10, %eax	#, D.9224
	ja	.L216	#,
	movl	%eax, %eax	# D.9224, tmp495
	movq	.L218(,%rax,8), %rax	#, tmp496
	jmp	*%rax	# tmp496
	.section	.rodata
	.align 8
	.align 4
.L218:
	.quad	.L216
	.quad	.L217
	.quad	.L219
	.quad	.L220
	.quad	.L221
	.quad	.L222
	.quad	.L223
	.quad	.L224
	.quad	.L222
	.quad	.L221
	.quad	.L222
	.text
.L221:
	.loc 1 726 0
	movq	-24(%rbp), %rax	# ali, tmp497
	movq	16(%rax), %rdx	# ali_5->model, D.9227
	movl	-36(%rbp), %eax	# tpos, tmp498
	cltq
	addq	%rdx, %rax	# D.9227, D.9227
	movb	$42, (%rax)	#, *_89
	.loc 1 727 0
	jmp	.L225	#
.L222:
	.loc 1 732 0
	movq	-24(%rbp), %rax	# ali, tmp499
	movq	16(%rax), %rdx	# ali_5->model, D.9227
	movl	-36(%rbp), %eax	# tpos, tmp500
	cltq
	addq	%rdx, %rax	# D.9227, D.9227
	movb	$45, (%rax)	#, *_92
	.loc 1 733 0
	movq	-56(%rbp), %rax	# tr, tmp501
	movq	24(%rax), %rax	# tr_6(D)->pos, D.9228
	movl	-36(%rbp), %edx	# tpos, tmp502
	movslq	%edx, %rdx	# tmp502, D.9225
	salq	$2, %rdx	#, D.9225
	addq	%rdx, %rax	# D.9225, D.9228
	movl	(%rax), %eax	# *_96, D.9224
	testl	%eax, %eax	# D.9224
	jle	.L226	#,
	.loc 1 734 0
	movq	-24(%rbp), %rax	# ali, tmp503
	movq	32(%rax), %rdx	# ali_5->aseq, D.9227
	movl	-36(%rbp), %eax	# tpos, tmp504
	cltq
	leaq	(%rdx,%rax), %rbx	#, D.9227
	movq	-56(%rbp), %rax	# tr, tmp505
	movq	24(%rax), %rax	# tr_6(D)->pos, D.9228
	movl	-36(%rbp), %edx	# tpos, tmp506
	movslq	%edx, %rdx	# tmp506, D.9225
	salq	$2, %rdx	#, D.9225
	addq	%rdx, %rax	# D.9225, D.9228
	movl	(%rax), %eax	# *_104, D.9224
	movslq	%eax, %rdx	# D.9224, D.9229
	movq	-72(%rbp), %rax	# dsq, tmp507
	addq	%rdx, %rax	# D.9229, D.9227
	movzbl	(%rax), %eax	# *_108, D.9230
	movsbl	%al, %eax	# D.9230, D.9224
	cltq
	movzbl	Alphabet(%rax), %eax	# Alphabet, D.9230
	movsbl	%al, %eax	# D.9230, D.9224
	movl	%eax, %edi	# D.9224,
	call	tolower	#
	movb	%al, (%rbx)	# D.9230, *_100
	.loc 1 736 0
	jmp	.L225	#
.L226:
	jmp	.L225	#
.L223:
	.loc 1 739 0
	movq	-24(%rbp), %rax	# ali, tmp509
	movq	16(%rax), %rdx	# ali_5->model, D.9227
	movl	-36(%rbp), %eax	# tpos, tmp510
	cltq
	addq	%rdx, %rax	# D.9227, D.9227
	movb	$62, (%rax)	#, *_117
	.loc 1 740 0
	jmp	.L225	#
.L224:
	.loc 1 743 0
	movq	-24(%rbp), %rax	# ali, tmp511
	movq	16(%rax), %rdx	# ali_5->model, D.9227
	movl	-36(%rbp), %eax	# tpos, tmp512
	cltq
	addq	%rdx, %rax	# D.9227, D.9227
	movb	$60, (%rax)	#, *_120
	.loc 1 744 0
	jmp	.L225	#
.L217:
	.loc 1 747 0
	movq	-64(%rbp), %rax	# hmm, tmp513
	movl	456(%rax), %eax	# hmm_28(D)->flags, D.9224
	andl	$4, %eax	#, D.9224
	testl	%eax, %eax	# D.9224
	je	.L227	#,
	.loc 1 747 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# ali, tmp514
	movq	(%rax), %rdx	# ali_5->rfline, D.9227
	movl	-36(%rbp), %eax	# tpos, tmp515
	cltq
	addq	%rax, %rdx	# D.9229, D.9227
	movq	-64(%rbp), %rax	# hmm, tmp516
	movq	24(%rax), %rcx	# hmm_28(D)->rf, D.9227
	movq	-56(%rbp), %rax	# tr, tmp517
	movq	16(%rax), %rax	# tr_6(D)->nodeidx, D.9228
	movl	-36(%rbp), %esi	# tpos, tmp518
	movslq	%esi, %rsi	# tmp518, D.9225
	salq	$2, %rsi	#, D.9225
	addq	%rsi, %rax	# D.9225, D.9228
	movl	(%rax), %eax	# *_130, D.9224
	cltq
	addq	%rcx, %rax	# D.9227, D.9227
	movzbl	(%rax), %eax	# *_133, D.9230
	movb	%al, (%rdx)	# D.9230, *_125
.L227:
	.loc 1 748 0 is_stmt 1
	movq	-64(%rbp), %rax	# hmm, tmp519
	movl	456(%rax), %eax	# hmm_28(D)->flags, D.9224
	andl	$8, %eax	#, D.9224
	testl	%eax, %eax	# D.9224
	je	.L228	#,
	.loc 1 748 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# ali, tmp520
	movq	8(%rax), %rdx	# ali_5->csline, D.9227
	movl	-36(%rbp), %eax	# tpos, tmp521
	cltq
	addq	%rax, %rdx	# D.9229, D.9227
	movq	-64(%rbp), %rax	# hmm, tmp522
	movq	32(%rax), %rcx	# hmm_28(D)->cs, D.9227
	movq	-56(%rbp), %rax	# tr, tmp523
	movq	16(%rax), %rax	# tr_6(D)->nodeidx, D.9228
	movl	-36(%rbp), %esi	# tpos, tmp524
	movslq	%esi, %rsi	# tmp524, D.9225
	salq	$2, %rsi	#, D.9225
	addq	%rsi, %rax	# D.9225, D.9228
	movl	(%rax), %eax	# *_144, D.9224
	cltq
	addq	%rcx, %rax	# D.9227, D.9227
	movzbl	(%rax), %eax	# *_147, D.9230
	movb	%al, (%rdx)	# D.9230, *_139
.L228:
	.loc 1 749 0 is_stmt 1
	movl	Alphabet_size(%rip), %edx	# Alphabet_size, Alphabet_size.1
	movq	-64(%rbp), %rax	# hmm, tmp525
	movq	152(%rax), %rcx	# hmm_28(D)->mat, D.9231
	movq	-56(%rbp), %rax	# tr, tmp526
	movq	16(%rax), %rax	# tr_6(D)->nodeidx, D.9228
	movl	-36(%rbp), %esi	# tpos, tmp527
	movslq	%esi, %rsi	# tmp527, D.9225
	salq	$2, %rsi	#, D.9225
	addq	%rsi, %rax	# D.9225, D.9228
	movl	(%rax), %eax	# *_154, D.9224
	cltq
	salq	$3, %rax	#, D.9225
	addq	%rcx, %rax	# D.9231, D.9231
	movq	(%rax), %rax	# *_158, D.9232
	movl	%edx, %esi	# Alphabet_size.1,
	movq	%rax, %rdi	# D.9232,
	call	FArgMax	#
	movl	%eax, -28(%rbp)	# tmp528, bestsym
	.loc 1 750 0
	movq	-24(%rbp), %rax	# ali, tmp529
	movq	16(%rax), %rdx	# ali_5->model, D.9227
	movl	-36(%rbp), %eax	# tpos, tmp530
	cltq
	addq	%rax, %rdx	# D.9229, D.9227
	movl	-28(%rbp), %eax	# bestsym, tmp532
	cltq
	movzbl	Alphabet(%rax), %eax	# Alphabet, D.9230
	movb	%al, (%rdx)	# D.9230, *_163
	.loc 1 751 0
	movq	-64(%rbp), %rax	# hmm, tmp533
	movq	152(%rax), %rdx	# hmm_28(D)->mat, D.9231
	movq	-56(%rbp), %rax	# tr, tmp534
	movq	16(%rax), %rax	# tr_6(D)->nodeidx, D.9228
	movl	-36(%rbp), %ecx	# tpos, tmp535
	movslq	%ecx, %rcx	# tmp535, D.9225
	salq	$2, %rcx	#, D.9225
	addq	%rcx, %rax	# D.9225, D.9228
	movl	(%rax), %eax	# *_169, D.9224
	cltq
	salq	$3, %rax	#, D.9225
	addq	%rdx, %rax	# D.9231, D.9231
	movq	(%rax), %rax	# *_173, D.9232
	movl	-28(%rbp), %edx	# bestsym, tmp536
	movslq	%edx, %rdx	# tmp536, D.9225
	salq	$2, %rdx	#, D.9225
	addq	%rdx, %rax	# D.9225, D.9232
	movss	(%rax), %xmm1	# *_177, D.9233
	movss	-32(%rbp), %xmm0	# mthresh, tmp537
	ucomiss	%xmm1, %xmm0	# D.9233, tmp537
	jbe	.L229	#,
	.loc 1 752 0
	movq	-24(%rbp), %rax	# ali, tmp538
	movq	16(%rax), %rdx	# ali_5->model, D.9227
	movl	-36(%rbp), %eax	# tpos, tmp539
	cltq
	leaq	(%rdx,%rax), %rbx	#, D.9227
	movq	-24(%rbp), %rax	# ali, tmp540
	movq	16(%rax), %rdx	# ali_5->model, D.9227
	movl	-36(%rbp), %eax	# tpos, tmp541
	cltq
	addq	%rdx, %rax	# D.9227, D.9227
	movzbl	(%rax), %eax	# *_184, D.9230
	movsbl	%al, %eax	# D.9230, D.9224
	movl	%eax, %edi	# D.9224,
	call	tolower	#
	movb	%al, (%rbx)	# D.9230, *_181
.L229:
	.loc 1 753 0
	movq	-56(%rbp), %rax	# tr, tmp542
	movq	24(%rax), %rax	# tr_6(D)->pos, D.9228
	movl	-36(%rbp), %edx	# tpos, tmp543
	movslq	%edx, %rdx	# tmp543, D.9225
	salq	$2, %rdx	#, D.9225
	addq	%rdx, %rax	# D.9225, D.9228
	movl	(%rax), %eax	# *_192, D.9224
	movslq	%eax, %rdx	# D.9224, D.9229
	movq	-72(%rbp), %rax	# dsq, tmp544
	addq	%rdx, %rax	# D.9229, D.9227
	movzbl	(%rax), %eax	# *_195, D.9230
	movsbl	%al, %eax	# D.9230, D.9224
	cmpl	-28(%rbp), %eax	# bestsym, D.9224
	jne	.L231	#,
	.loc 1 755 0
	movq	-24(%rbp), %rax	# ali, tmp545
	movq	24(%rax), %rdx	# ali_5->mline, D.9227
	movl	-36(%rbp), %eax	# tpos, tmp546
	cltq
	addq	%rax, %rdx	# D.9229, D.9227
	movq	-56(%rbp), %rax	# tr, tmp547
	movq	24(%rax), %rax	# tr_6(D)->pos, D.9228
	movl	-36(%rbp), %ecx	# tpos, tmp548
	movslq	%ecx, %rcx	# tmp548, D.9225
	salq	$2, %rcx	#, D.9225
	addq	%rcx, %rax	# D.9225, D.9228
	movl	(%rax), %eax	# *_204, D.9224
	movslq	%eax, %rcx	# D.9224, D.9229
	movq	-72(%rbp), %rax	# dsq, tmp549
	addq	%rcx, %rax	# D.9229, D.9227
	movzbl	(%rax), %eax	# *_207, D.9230
	movsbl	%al, %eax	# D.9230, D.9224
	cltq
	movzbl	Alphabet(%rax), %eax	# Alphabet, D.9230
	movb	%al, (%rdx)	# D.9230, *_200
	.loc 1 756 0
	movq	-64(%rbp), %rax	# hmm, tmp551
	movq	152(%rax), %rdx	# hmm_28(D)->mat, D.9231
	movq	-56(%rbp), %rax	# tr, tmp552
	movq	16(%rax), %rax	# tr_6(D)->nodeidx, D.9228
	movl	-36(%rbp), %ecx	# tpos, tmp553
	movslq	%ecx, %rcx	# tmp553, D.9225
	salq	$2, %rcx	#, D.9225
	addq	%rcx, %rax	# D.9225, D.9228
	movl	(%rax), %eax	# *_215, D.9224
	cltq
	salq	$3, %rax	#, D.9225
	addq	%rdx, %rax	# D.9231, D.9231
	movq	(%rax), %rax	# *_219, D.9232
	movl	-28(%rbp), %edx	# bestsym, tmp554
	movslq	%edx, %rdx	# tmp554, D.9225
	salq	$2, %rdx	#, D.9225
	addq	%rdx, %rax	# D.9225, D.9232
	movss	(%rax), %xmm1	# *_223, D.9233
	movss	-32(%rbp), %xmm0	# mthresh, tmp555
	ucomiss	%xmm1, %xmm0	# D.9233, tmp555
	ja	.L245	#,
	jmp	.L234	#
.L245:
	.loc 1 757 0
	movq	-24(%rbp), %rax	# ali, tmp556
	movq	24(%rax), %rdx	# ali_5->mline, D.9227
	movl	-36(%rbp), %eax	# tpos, tmp557
	cltq
	leaq	(%rdx,%rax), %rbx	#, D.9227
	movq	-24(%rbp), %rax	# ali, tmp558
	movq	24(%rax), %rdx	# ali_5->mline, D.9227
	movl	-36(%rbp), %eax	# tpos, tmp559
	cltq
	addq	%rdx, %rax	# D.9227, D.9227
	movzbl	(%rax), %eax	# *_230, D.9230
	movsbl	%al, %eax	# D.9230, D.9224
	movl	%eax, %edi	# D.9224,
	call	tolower	#
	movb	%al, (%rbx)	# D.9230, *_227
	jmp	.L234	#
.L231:
	.loc 1 759 0
	movq	-64(%rbp), %rax	# hmm, tmp560
	movq	320(%rax), %rdx	# hmm_28(D)->msc, D.9234
	movq	-56(%rbp), %rax	# tr, tmp561
	movq	24(%rax), %rax	# tr_6(D)->pos, D.9228
	movl	-36(%rbp), %ecx	# tpos, tmp562
	movslq	%ecx, %rcx	# tmp562, D.9225
	salq	$2, %rcx	#, D.9225
	addq	%rcx, %rax	# D.9225, D.9228
	movl	(%rax), %eax	# *_239, D.9224
	movslq	%eax, %rcx	# D.9224, D.9229
	movq	-72(%rbp), %rax	# dsq, tmp563
	addq	%rcx, %rax	# D.9229, D.9227
	movzbl	(%rax), %eax	# *_242, D.9230
	movsbq	%al, %rax	# D.9230, D.9225
	salq	$3, %rax	#, D.9225
	addq	%rdx, %rax	# D.9234, D.9234
	movq	(%rax), %rdx	# *_246, D.9228
	movq	-56(%rbp), %rax	# tr, tmp564
	movq	16(%rax), %rax	# tr_6(D)->nodeidx, D.9228
	movl	-36(%rbp), %ecx	# tpos, tmp565
	movslq	%ecx, %rcx	# tmp565, D.9225
	salq	$2, %rcx	#, D.9225
	addq	%rcx, %rax	# D.9225, D.9228
	movl	(%rax), %eax	# *_251, D.9224
	cltq
	salq	$2, %rax	#, D.9225
	addq	%rdx, %rax	# D.9228, D.9228
	movl	(%rax), %eax	# *_255, D.9224
	testl	%eax, %eax	# D.9224
	jle	.L234	#,
	.loc 1 760 0
	movq	-24(%rbp), %rax	# ali, tmp566
	movq	24(%rax), %rdx	# ali_5->mline, D.9227
	movl	-36(%rbp), %eax	# tpos, tmp567
	cltq
	addq	%rdx, %rax	# D.9227, D.9227
	movb	$43, (%rax)	#, *_259
.L234:
	.loc 1 761 0
	movq	-24(%rbp), %rax	# ali, tmp568
	movq	32(%rax), %rdx	# ali_5->aseq, D.9227
	movl	-36(%rbp), %eax	# tpos, tmp569
	cltq
	addq	%rax, %rdx	# D.9229, D.9227
	movq	-56(%rbp), %rax	# tr, tmp570
	movq	24(%rax), %rax	# tr_6(D)->pos, D.9228
	movl	-36(%rbp), %ecx	# tpos, tmp571
	movslq	%ecx, %rcx	# tmp571, D.9225
	salq	$2, %rcx	#, D.9225
	addq	%rcx, %rax	# D.9225, D.9228
	movl	(%rax), %eax	# *_266, D.9224
	movslq	%eax, %rcx	# D.9224, D.9229
	movq	-72(%rbp), %rax	# dsq, tmp572
	addq	%rcx, %rax	# D.9229, D.9227
	movzbl	(%rax), %eax	# *_269, D.9230
	movsbl	%al, %eax	# D.9230, D.9224
	cltq
	movzbl	Alphabet(%rax), %eax	# Alphabet, D.9230
	movb	%al, (%rdx)	# D.9230, *_262
	.loc 1 762 0
	jmp	.L225	#
.L219:
	.loc 1 765 0
	movq	-64(%rbp), %rax	# hmm, tmp574
	movl	456(%rax), %eax	# hmm_28(D)->flags, D.9224
	andl	$4, %eax	#, D.9224
	testl	%eax, %eax	# D.9224
	je	.L235	#,
	.loc 1 765 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# ali, tmp575
	movq	(%rax), %rdx	# ali_5->rfline, D.9227
	movl	-36(%rbp), %eax	# tpos, tmp576
	cltq
	addq	%rax, %rdx	# D.9229, D.9227
	movq	-64(%rbp), %rax	# hmm, tmp577
	movq	24(%rax), %rcx	# hmm_28(D)->rf, D.9227
	movq	-56(%rbp), %rax	# tr, tmp578
	movq	16(%rax), %rax	# tr_6(D)->nodeidx, D.9228
	movl	-36(%rbp), %esi	# tpos, tmp579
	movslq	%esi, %rsi	# tmp579, D.9225
	salq	$2, %rsi	#, D.9225
	addq	%rsi, %rax	# D.9225, D.9228
	movl	(%rax), %eax	# *_282, D.9224
	cltq
	addq	%rcx, %rax	# D.9227, D.9227
	movzbl	(%rax), %eax	# *_285, D.9230
	movb	%al, (%rdx)	# D.9230, *_277
.L235:
	.loc 1 766 0 is_stmt 1
	movq	-64(%rbp), %rax	# hmm, tmp580
	movl	456(%rax), %eax	# hmm_28(D)->flags, D.9224
	andl	$8, %eax	#, D.9224
	testl	%eax, %eax	# D.9224
	je	.L236	#,
	.loc 1 766 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# ali, tmp581
	movq	8(%rax), %rdx	# ali_5->csline, D.9227
	movl	-36(%rbp), %eax	# tpos, tmp582
	cltq
	addq	%rax, %rdx	# D.9229, D.9227
	movq	-64(%rbp), %rax	# hmm, tmp583
	movq	32(%rax), %rcx	# hmm_28(D)->cs, D.9227
	movq	-56(%rbp), %rax	# tr, tmp584
	movq	16(%rax), %rax	# tr_6(D)->nodeidx, D.9228
	movl	-36(%rbp), %esi	# tpos, tmp585
	movslq	%esi, %rsi	# tmp585, D.9225
	salq	$2, %rsi	#, D.9225
	addq	%rsi, %rax	# D.9225, D.9228
	movl	(%rax), %eax	# *_296, D.9224
	cltq
	addq	%rcx, %rax	# D.9227, D.9227
	movzbl	(%rax), %eax	# *_299, D.9230
	movb	%al, (%rdx)	# D.9230, *_291
.L236:
	.loc 1 767 0 is_stmt 1
	movl	Alphabet_size(%rip), %edx	# Alphabet_size, Alphabet_size.2
	movq	-64(%rbp), %rax	# hmm, tmp586
	movq	152(%rax), %rcx	# hmm_28(D)->mat, D.9231
	movq	-56(%rbp), %rax	# tr, tmp587
	movq	16(%rax), %rax	# tr_6(D)->nodeidx, D.9228
	movl	-36(%rbp), %esi	# tpos, tmp588
	movslq	%esi, %rsi	# tmp588, D.9225
	salq	$2, %rsi	#, D.9225
	addq	%rsi, %rax	# D.9225, D.9228
	movl	(%rax), %eax	# *_306, D.9224
	cltq
	salq	$3, %rax	#, D.9225
	addq	%rcx, %rax	# D.9231, D.9231
	movq	(%rax), %rax	# *_310, D.9232
	movl	%edx, %esi	# Alphabet_size.2,
	movq	%rax, %rdi	# D.9232,
	call	FArgMax	#
	movl	%eax, -28(%rbp)	# tmp589, bestsym
	.loc 1 768 0
	movq	-24(%rbp), %rax	# ali, tmp590
	movq	16(%rax), %rdx	# ali_5->model, D.9227
	movl	-36(%rbp), %eax	# tpos, tmp591
	cltq
	addq	%rax, %rdx	# D.9229, D.9227
	movl	-28(%rbp), %eax	# bestsym, tmp593
	cltq
	movzbl	Alphabet(%rax), %eax	# Alphabet, D.9230
	movb	%al, (%rdx)	# D.9230, *_315
	.loc 1 769 0
	movq	-64(%rbp), %rax	# hmm, tmp594
	movq	152(%rax), %rdx	# hmm_28(D)->mat, D.9231
	movq	-56(%rbp), %rax	# tr, tmp595
	movq	16(%rax), %rax	# tr_6(D)->nodeidx, D.9228
	movl	-36(%rbp), %ecx	# tpos, tmp596
	movslq	%ecx, %rcx	# tmp596, D.9225
	salq	$2, %rcx	#, D.9225
	addq	%rcx, %rax	# D.9225, D.9228
	movl	(%rax), %eax	# *_321, D.9224
	cltq
	salq	$3, %rax	#, D.9225
	addq	%rdx, %rax	# D.9231, D.9231
	movq	(%rax), %rax	# *_325, D.9232
	movl	-28(%rbp), %edx	# bestsym, tmp597
	movslq	%edx, %rdx	# tmp597, D.9225
	salq	$2, %rdx	#, D.9225
	addq	%rdx, %rax	# D.9225, D.9232
	movss	(%rax), %xmm1	# *_329, D.9233
	movss	-32(%rbp), %xmm0	# mthresh, tmp598
	ucomiss	%xmm1, %xmm0	# D.9233, tmp598
	jbe	.L237	#,
	.loc 1 770 0
	movq	-24(%rbp), %rax	# ali, tmp599
	movq	16(%rax), %rdx	# ali_5->model, D.9227
	movl	-36(%rbp), %eax	# tpos, tmp600
	cltq
	leaq	(%rdx,%rax), %rbx	#, D.9227
	movq	-24(%rbp), %rax	# ali, tmp601
	movq	16(%rax), %rdx	# ali_5->model, D.9227
	movl	-36(%rbp), %eax	# tpos, tmp602
	cltq
	addq	%rdx, %rax	# D.9227, D.9227
	movzbl	(%rax), %eax	# *_336, D.9230
	movsbl	%al, %eax	# D.9230, D.9224
	movl	%eax, %edi	# D.9224,
	call	tolower	#
	movb	%al, (%rbx)	# D.9230, *_333
.L237:
	.loc 1 771 0
	movq	-24(%rbp), %rax	# ali, tmp603
	movq	32(%rax), %rdx	# ali_5->aseq, D.9227
	movl	-36(%rbp), %eax	# tpos, tmp604
	cltq
	addq	%rdx, %rax	# D.9227, D.9227
	movb	$45, (%rax)	#, *_343
	.loc 1 772 0
	jmp	.L225	#
.L220:
	.loc 1 775 0
	movq	-24(%rbp), %rax	# ali, tmp605
	movq	16(%rax), %rdx	# ali_5->model, D.9227
	movl	-36(%rbp), %eax	# tpos, tmp606
	cltq
	addq	%rdx, %rax	# D.9227, D.9227
	movb	$46, (%rax)	#, *_346
	.loc 1 776 0
	movq	-64(%rbp), %rax	# hmm, tmp607
	movq	328(%rax), %rdx	# hmm_28(D)->isc, D.9234
	movq	-56(%rbp), %rax	# tr, tmp608
	movq	24(%rax), %rax	# tr_6(D)->pos, D.9228
	movl	-36(%rbp), %ecx	# tpos, tmp609
	movslq	%ecx, %rcx	# tmp609, D.9225
	salq	$2, %rcx	#, D.9225
	addq	%rcx, %rax	# D.9225, D.9228
	movl	(%rax), %eax	# *_351, D.9224
	movslq	%eax, %rcx	# D.9224, D.9229
	movq	-72(%rbp), %rax	# dsq, tmp610
	addq	%rcx, %rax	# D.9229, D.9227
	movzbl	(%rax), %eax	# *_354, D.9230
	movsbq	%al, %rax	# D.9230, D.9225
	salq	$3, %rax	#, D.9225
	addq	%rdx, %rax	# D.9234, D.9234
	movq	(%rax), %rdx	# *_358, D.9228
	movq	-56(%rbp), %rax	# tr, tmp611
	movq	16(%rax), %rax	# tr_6(D)->nodeidx, D.9228
	movl	-36(%rbp), %ecx	# tpos, tmp612
	movslq	%ecx, %rcx	# tmp612, D.9225
	salq	$2, %rcx	#, D.9225
	addq	%rcx, %rax	# D.9225, D.9228
	movl	(%rax), %eax	# *_363, D.9224
	cltq
	salq	$2, %rax	#, D.9225
	addq	%rdx, %rax	# D.9228, D.9228
	movl	(%rax), %eax	# *_367, D.9224
	testl	%eax, %eax	# D.9224
	jle	.L239	#,
	.loc 1 777 0
	movq	-24(%rbp), %rax	# ali, tmp613
	movq	24(%rax), %rdx	# ali_5->mline, D.9227
	movl	-36(%rbp), %eax	# tpos, tmp614
	cltq
	addq	%rdx, %rax	# D.9227, D.9227
	movb	$43, (%rax)	#, *_371
.L239:
	.loc 1 778 0
	movq	-24(%rbp), %rax	# ali, tmp615
	movq	32(%rax), %rdx	# ali_5->aseq, D.9227
	movl	-36(%rbp), %eax	# tpos, tmp616
	cltq
	leaq	(%rdx,%rax), %rbx	#, D.9227
	movq	-56(%rbp), %rax	# tr, tmp617
	movq	24(%rax), %rax	# tr_6(D)->pos, D.9228
	movl	-36(%rbp), %edx	# tpos, tmp618
	movslq	%edx, %rdx	# tmp618, D.9225
	salq	$2, %rdx	#, D.9225
	addq	%rdx, %rax	# D.9225, D.9228
	movl	(%rax), %eax	# *_378, D.9224
	movslq	%eax, %rdx	# D.9224, D.9229
	movq	-72(%rbp), %rax	# dsq, tmp619
	addq	%rdx, %rax	# D.9229, D.9227
	movzbl	(%rax), %eax	# *_381, D.9230
	movsbl	%al, %eax	# D.9230, D.9224
	cltq
	movzbl	Alphabet(%rax), %eax	# Alphabet, D.9230
	movsbl	%al, %eax	# D.9230, D.9224
	movl	%eax, %edi	# D.9224,
	call	tolower	#
	movb	%al, (%rbx)	# D.9230, *_374
	.loc 1 779 0
	jmp	.L225	#
.L216:
	.loc 1 782 0
	movl	$.LC11, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
.L225:
	.loc 1 722 0
	addl	$1, -36(%rbp)	#, tpos
.L215:
	.loc 1 722 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# tr, tmp621
	movl	(%rax), %eax	# tr_6(D)->tlen, D.9224
	cmpl	-36(%rbp), %eax	# tpos, D.9224
	jg	.L240	#,
	.loc 1 786 0 is_stmt 1
	movq	-24(%rbp), %rax	# ali, tmp622
	movl	-36(%rbp), %edx	# tpos, tmp623
	movl	%edx, 40(%rax)	# tmp623, ali_5->len
	.loc 1 787 0
	movq	-64(%rbp), %rax	# hmm, tmp624
	movl	456(%rax), %eax	# hmm_28(D)->flags, D.9224
	andl	$4, %eax	#, D.9224
	testl	%eax, %eax	# D.9224
	je	.L241	#,
	.loc 1 787 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# ali, tmp625
	movq	(%rax), %rdx	# ali_5->rfline, D.9227
	movl	-36(%rbp), %eax	# tpos, tmp626
	cltq
	addq	%rdx, %rax	# D.9227, D.9227
	movb	$0, (%rax)	#, *_393
.L241:
	.loc 1 788 0 is_stmt 1
	movq	-64(%rbp), %rax	# hmm, tmp627
	movl	456(%rax), %eax	# hmm_28(D)->flags, D.9224
	andl	$8, %eax	#, D.9224
	testl	%eax, %eax	# D.9224
	je	.L242	#,
	.loc 1 788 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# ali, tmp628
	movq	8(%rax), %rdx	# ali_5->csline, D.9227
	movl	-36(%rbp), %eax	# tpos, tmp629
	cltq
	addq	%rdx, %rax	# D.9227, D.9227
	movb	$0, (%rax)	#, *_398
.L242:
	.loc 1 789 0 is_stmt 1
	movq	-24(%rbp), %rax	# ali, tmp630
	movq	16(%rax), %rdx	# ali_5->model, D.9227
	movl	-36(%rbp), %eax	# tpos, tmp631
	cltq
	addq	%rdx, %rax	# D.9227, D.9227
	movb	$0, (%rax)	#, *_401
	.loc 1 790 0
	movq	-24(%rbp), %rax	# ali, tmp632
	movq	24(%rax), %rdx	# ali_5->mline, D.9227
	movl	-36(%rbp), %eax	# tpos, tmp633
	cltq
	addq	%rdx, %rax	# D.9227, D.9227
	movb	$0, (%rax)	#, *_404
	.loc 1 791 0
	movq	-24(%rbp), %rax	# ali, tmp634
	movq	32(%rax), %rdx	# ali_5->aseq, D.9227
	movl	-36(%rbp), %eax	# tpos, tmp635
	cltq
	addq	%rdx, %rax	# D.9227, D.9227
	movb	$0, (%rax)	#, *_407
	.loc 1 792 0
	movq	-24(%rbp), %rax	# ali, D.9235
	.loc 1 793 0
	addq	$72, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	CreateFancyAli, .-CreateFancyAli
	.section	.rodata
.LC12:
	.string	"CS"
.LC13:
	.string	"  %16s %s\n"
.LC14:
	.string	"RF"
.LC15:
	.string	" "
.LC16:
	.string	"  %10.10s %5d %s %-5d\n\n"
.LC17:
	.string	"-"
.LC18:
	.string	"  %10.10s %5s %s %-5s\n\n"
	.text
	.globl	PrintFancyAli
	.type	PrintFancyAli, @function
PrintFancyAli:
.LFB13:
	.loc 1 810 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$96, %rsp	#,
	movq	%rdi, -88(%rbp)	# fp, fp
	movq	%rsi, -96(%rbp)	# ali, ali
	.loc 1 810 0
	movq	%fs:40, %rax	#, tmp167
	movq	%rax, -8(%rbp)	# tmp167, D.9241
	xorl	%eax, %eax	# tmp167
	.loc 1 816 0
	movb	$0, -14(%rbp)	#, buffer
	.loc 1 817 0
	movq	-96(%rbp), %rax	# ali, tmp108
	movl	64(%rax), %eax	# ali_6(D)->sqfrom, D.9237
	subl	$1, %eax	#, tmp109
	movl	%eax, -80(%rbp)	# tmp109, endi
	.loc 1 818 0
	movl	$0, -76(%rbp)	#, pos
	jmp	.L248	#
.L259:
	.loc 1 821 0
	movl	-80(%rbp), %eax	# endi, tmp113
	addl	$1, %eax	#, tmp112
	movl	%eax, -68(%rbp)	# tmp112, starti
	.loc 1 822 0
	movl	-76(%rbp), %eax	# pos, tmp114
	movl	%eax, -72(%rbp)	# tmp114, i
	jmp	.L249	#
.L252:
	.loc 1 823 0
	movq	-96(%rbp), %rax	# ali, tmp115
	movq	32(%rax), %rdx	# ali_6(D)->aseq, D.9238
	movl	-72(%rbp), %eax	# i, tmp116
	cltq
	addq	%rdx, %rax	# D.9238, D.9238
	movzbl	(%rax), %eax	# *_20, D.9240
	cmpb	$32, %al	#, D.9240
	je	.L250	#,
	.loc 1 823 0 is_stmt 0 discriminator 1
	movq	-96(%rbp), %rax	# ali, tmp117
	movq	32(%rax), %rdx	# ali_6(D)->aseq, D.9238
	movl	-72(%rbp), %eax	# i, tmp118
	cltq
	addq	%rdx, %rax	# D.9238, D.9238
	movzbl	(%rax), %eax	# *_24, D.9240
	cmpb	$46, %al	#, D.9240
	je	.L250	#,
	movq	-96(%rbp), %rax	# ali, tmp119
	movq	32(%rax), %rdx	# ali_6(D)->aseq, D.9238
	movl	-72(%rbp), %eax	# i, tmp120
	cltq
	addq	%rdx, %rax	# D.9238, D.9238
	movzbl	(%rax), %eax	# *_28, D.9240
	cmpb	$95, %al	#, D.9240
	je	.L250	#,
	movq	-96(%rbp), %rax	# ali, tmp121
	movq	32(%rax), %rdx	# ali_6(D)->aseq, D.9238
	movl	-72(%rbp), %eax	# i, tmp122
	cltq
	addq	%rdx, %rax	# D.9238, D.9238
	movzbl	(%rax), %eax	# *_32, D.9240
	cmpb	$45, %al	#, D.9240
	je	.L250	#,
	movq	-96(%rbp), %rax	# ali, tmp123
	movq	32(%rax), %rdx	# ali_6(D)->aseq, D.9238
	movl	-72(%rbp), %eax	# i, tmp124
	cltq
	addq	%rdx, %rax	# D.9238, D.9238
	movzbl	(%rax), %eax	# *_36, D.9240
	cmpb	$126, %al	#, D.9240
	je	.L250	#,
	addl	$1, -80(%rbp)	#, endi
.L250:
	.loc 1 822 0 is_stmt 1
	addl	$1, -72(%rbp)	#, i
.L249:
	.loc 1 822 0 is_stmt 0 discriminator 1
	movq	-96(%rbp), %rax	# ali, tmp125
	movq	32(%rax), %rdx	# ali_6(D)->aseq, D.9238
	movl	-72(%rbp), %eax	# i, tmp126
	cltq
	addq	%rdx, %rax	# D.9238, D.9238
	movzbl	(%rax), %eax	# *_15, D.9240
	testb	%al, %al	# D.9240
	je	.L251	#,
	.loc 1 822 0 discriminator 2
	movl	-76(%rbp), %eax	# pos, tmp127
	addl	$50, %eax	#, D.9237
	cmpl	-72(%rbp), %eax	# i, D.9237
	jg	.L252	#,
.L251:
	.loc 1 825 0 is_stmt 1
	movq	-96(%rbp), %rax	# ali, tmp128
	movq	8(%rax), %rax	# ali_6(D)->csline, D.9238
	testq	%rax, %rax	# D.9238
	je	.L253	#,
	.loc 1 826 0
	movq	-96(%rbp), %rax	# ali, tmp129
	movq	8(%rax), %rdx	# ali_6(D)->csline, D.9238
	movl	-76(%rbp), %eax	# pos, tmp130
	cltq
	leaq	(%rdx,%rax), %rcx	#, D.9238
	leaq	-64(%rbp), %rax	#, tmp131
	movl	$50, %edx	#,
	movq	%rcx, %rsi	# D.9238,
	movq	%rax, %rdi	# tmp131,
	call	strncpy	#
	.loc 1 827 0
	leaq	-64(%rbp), %rdx	#, tmp132
	movq	-88(%rbp), %rax	# fp, tmp133
	movq	%rdx, %rcx	# tmp132,
	movl	$.LC12, %edx	#,
	movl	$.LC13, %esi	#,
	movq	%rax, %rdi	# tmp133,
	movl	$0, %eax	#,
	call	fprintf	#
.L253:
	.loc 1 829 0
	movq	-96(%rbp), %rax	# ali, tmp134
	movq	(%rax), %rax	# ali_6(D)->rfline, D.9238
	testq	%rax, %rax	# D.9238
	je	.L254	#,
	.loc 1 830 0
	movq	-96(%rbp), %rax	# ali, tmp135
	movq	(%rax), %rdx	# ali_6(D)->rfline, D.9238
	movl	-76(%rbp), %eax	# pos, tmp136
	cltq
	leaq	(%rdx,%rax), %rcx	#, D.9238
	leaq	-64(%rbp), %rax	#, tmp137
	movl	$50, %edx	#,
	movq	%rcx, %rsi	# D.9238,
	movq	%rax, %rdi	# tmp137,
	call	strncpy	#
	.loc 1 831 0
	leaq	-64(%rbp), %rdx	#, tmp138
	movq	-88(%rbp), %rax	# fp, tmp139
	movq	%rdx, %rcx	# tmp138,
	movl	$.LC14, %edx	#,
	movl	$.LC13, %esi	#,
	movq	%rax, %rdi	# tmp139,
	movl	$0, %eax	#,
	call	fprintf	#
.L254:
	.loc 1 833 0
	movq	-96(%rbp), %rax	# ali, tmp140
	movq	16(%rax), %rax	# ali_6(D)->model, D.9238
	testq	%rax, %rax	# D.9238
	je	.L255	#,
	.loc 1 834 0
	movq	-96(%rbp), %rax	# ali, tmp141
	movq	16(%rax), %rdx	# ali_6(D)->model, D.9238
	movl	-76(%rbp), %eax	# pos, tmp142
	cltq
	leaq	(%rdx,%rax), %rcx	#, D.9238
	leaq	-64(%rbp), %rax	#, tmp143
	movl	$50, %edx	#,
	movq	%rcx, %rsi	# D.9238,
	movq	%rax, %rdi	# tmp143,
	call	strncpy	#
	.loc 1 835 0
	leaq	-64(%rbp), %rdx	#, tmp144
	movq	-88(%rbp), %rax	# fp, tmp145
	movq	%rdx, %rcx	# tmp144,
	movl	$.LC15, %edx	#,
	movl	$.LC13, %esi	#,
	movq	%rax, %rdi	# tmp145,
	movl	$0, %eax	#,
	call	fprintf	#
.L255:
	.loc 1 837 0
	movq	-96(%rbp), %rax	# ali, tmp146
	movq	24(%rax), %rax	# ali_6(D)->mline, D.9238
	testq	%rax, %rax	# D.9238
	je	.L256	#,
	.loc 1 838 0
	movq	-96(%rbp), %rax	# ali, tmp147
	movq	24(%rax), %rdx	# ali_6(D)->mline, D.9238
	movl	-76(%rbp), %eax	# pos, tmp148
	cltq
	leaq	(%rdx,%rax), %rcx	#, D.9238
	leaq	-64(%rbp), %rax	#, tmp149
	movl	$50, %edx	#,
	movq	%rcx, %rsi	# D.9238,
	movq	%rax, %rdi	# tmp149,
	call	strncpy	#
	.loc 1 839 0
	leaq	-64(%rbp), %rdx	#, tmp150
	movq	-88(%rbp), %rax	# fp, tmp151
	movq	%rdx, %rcx	# tmp150,
	movl	$.LC15, %edx	#,
	movl	$.LC13, %esi	#,
	movq	%rax, %rdi	# tmp151,
	movl	$0, %eax	#,
	call	fprintf	#
.L256:
	.loc 1 841 0
	movq	-96(%rbp), %rax	# ali, tmp152
	movq	32(%rax), %rax	# ali_6(D)->aseq, D.9238
	testq	%rax, %rax	# D.9238
	je	.L257	#,
	.loc 1 842 0
	movq	-96(%rbp), %rax	# ali, tmp153
	movq	32(%rax), %rdx	# ali_6(D)->aseq, D.9238
	movl	-76(%rbp), %eax	# pos, tmp154
	cltq
	leaq	(%rdx,%rax), %rcx	#, D.9238
	leaq	-64(%rbp), %rax	#, tmp155
	movl	$50, %edx	#,
	movq	%rcx, %rsi	# D.9238,
	movq	%rax, %rdi	# tmp155,
	call	strncpy	#
	.loc 1 843 0
	movl	-80(%rbp), %eax	# endi, tmp156
	cmpl	-68(%rbp), %eax	# starti, tmp156
	jl	.L258	#,
	.loc 1 844 0
	movq	-96(%rbp), %rax	# ali, tmp157
	movq	56(%rax), %rdx	# ali_6(D)->target, D.9238
	movl	-80(%rbp), %edi	# endi, tmp158
	leaq	-64(%rbp), %rsi	#, tmp159
	movl	-68(%rbp), %ecx	# starti, tmp160
	movq	-88(%rbp), %rax	# fp, tmp161
	movl	%edi, %r9d	# tmp158,
	movq	%rsi, %r8	# tmp159,
	movl	$.LC16, %esi	#,
	movq	%rax, %rdi	# tmp161,
	movl	$0, %eax	#,
	call	fprintf	#
	jmp	.L257	#
.L258:
	.loc 1 846 0
	movq	-96(%rbp), %rax	# ali, tmp162
	movq	56(%rax), %rdx	# ali_6(D)->target, D.9238
	leaq	-64(%rbp), %rcx	#, tmp163
	movq	-88(%rbp), %rax	# fp, tmp164
	movl	$.LC17, %r9d	#,
	movq	%rcx, %r8	# tmp163,
	movl	$.LC17, %ecx	#,
	movl	$.LC18, %esi	#,
	movq	%rax, %rdi	# tmp164,
	movl	$0, %eax	#,
	call	fprintf	#
.L257:
	.loc 1 818 0
	addl	$50, -76(%rbp)	#, pos
.L248:
	.loc 1 818 0 is_stmt 0 discriminator 1
	movq	-96(%rbp), %rax	# ali, tmp165
	movl	40(%rax), %eax	# ali_6(D)->len, D.9237
	cmpl	-76(%rbp), %eax	# pos, D.9237
	jg	.L259	#,
	.loc 1 852 0 is_stmt 1
	movq	-88(%rbp), %rax	# fp, tmp166
	movq	%rax, %rdi	# tmp166,
	call	fflush	#
	.loc 1 853 0
	nop
	.loc 1 854 0
	movq	-8(%rbp), %rax	# D.9241, tmp168
	xorq	%fs:40, %rax	#, tmp168
	je	.L261	#,
	call	__stack_chk_fail	#
.L261:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	PrintFancyAli, .-PrintFancyAli
	.globl	TraceDecompose
	.type	TraceDecompose, @function
TraceDecompose:
.LFB14:
	.loc 1 875 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -40(%rbp)	# otr, otr
	movq	%rsi, -48(%rbp)	# ret_tr, ret_tr
	movq	%rdx, -56(%rbp)	# ret_ntr, ret_ntr
	.loc 1 883 0
	movl	$0, -24(%rbp)	#, ntr
	movl	$0, -20(%rbp)	#, i
	jmp	.L263	#
.L265:
	.loc 1 884 0
	movq	-40(%rbp), %rax	# otr, tmp207
	movq	8(%rax), %rdx	# otr_13(D)->statetype, D.9252
	movl	-20(%rbp), %eax	# i, tmp208
	cltq
	addq	%rdx, %rax	# D.9252, D.9252
	movzbl	(%rax), %eax	# *_17, D.9254
	cmpb	$6, %al	#, D.9254
	jne	.L264	#,
	.loc 1 884 0 is_stmt 0 discriminator 1
	addl	$1, -24(%rbp)	#, ntr
.L264:
	.loc 1 883 0 is_stmt 1
	addl	$1, -20(%rbp)	#, i
.L263:
	.loc 1 883 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# otr, tmp209
	movl	(%rax), %eax	# otr_13(D)->tlen, D.9251
	cmpl	-20(%rbp), %eax	# i, D.9251
	jg	.L265	#,
	.loc 1 888 0 is_stmt 1
	cmpl	$0, -24(%rbp)	#, ntr
	jne	.L266	#,
	.loc 1 889 0
	movq	-56(%rbp), %rax	# ret_ntr, tmp210
	movl	$0, (%rax)	#, *ret_ntr_21(D)
	.loc 1 890 0
	movq	-48(%rbp), %rax	# ret_tr, tmp211
	movq	$0, (%rax)	#, *ret_tr_22(D)
	.loc 1 891 0
	jmp	.L262	#
.L266:
	.loc 1 893 0
	movl	-24(%rbp), %eax	# ntr, tmp212
	cltq
	salq	$3, %rax	#, D.9255
	movq	%rax, %rdx	# D.9255,
	movl	$893, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_malloc	#
	movq	%rax, -8(%rbp)	# tmp213, tr
	.loc 1 895 0
	movl	$0, -12(%rbp)	#, idx
	movl	$0, -20(%rbp)	#, i
	jmp	.L268	#
.L277:
	.loc 1 896 0
	movq	-40(%rbp), %rax	# otr, tmp214
	movq	8(%rax), %rdx	# otr_13(D)->statetype, D.9252
	movl	-20(%rbp), %eax	# i, tmp215
	cltq
	addq	%rdx, %rax	# D.9252, D.9252
	movzbl	(%rax), %eax	# *_31, D.9254
	cmpb	$6, %al	#, D.9254
	jne	.L269	#,
	.loc 1 898 0
	movl	-20(%rbp), %eax	# i, tmp219
	addl	$1, %eax	#, tmp218
	movl	%eax, -16(%rbp)	# tmp218, j
	jmp	.L270	#
.L273:
	.loc 1 899 0
	movq	-40(%rbp), %rax	# otr, tmp220
	movq	8(%rax), %rdx	# otr_13(D)->statetype, D.9252
	movl	-16(%rbp), %eax	# j, tmp221
	cltq
	addq	%rdx, %rax	# D.9252, D.9252
	movzbl	(%rax), %eax	# *_37, D.9254
	cmpb	$7, %al	#, D.9254
	jne	.L271	#,
	.loc 1 899 0 is_stmt 0 discriminator 1
	jmp	.L272	#
.L271:
	.loc 1 898 0 is_stmt 1
	addl	$1, -16(%rbp)	#, j
.L270:
	.loc 1 898 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# otr, tmp222
	movl	(%rax), %eax	# otr_13(D)->tlen, D.9251
	cmpl	-16(%rbp), %eax	# j, D.9251
	jg	.L273	#,
.L272:
	.loc 1 901 0 is_stmt 1
	movl	-12(%rbp), %eax	# idx, tmp223
	cltq
	leaq	0(,%rax,8), %rdx	#, D.9255
	movq	-8(%rbp), %rax	# tr, tmp224
	addq	%rax, %rdx	# tmp224, D.9256
	movl	-20(%rbp), %eax	# i, tmp225
	movl	-16(%rbp), %ecx	# j, tmp226
	subl	%eax, %ecx	# tmp225, D.9251
	movl	%ecx, %eax	# D.9251, D.9251
	addl	$5, %eax	#, D.9251
	movq	%rdx, %rsi	# D.9256,
	movl	%eax, %edi	# D.9251,
	call	P7AllocTrace	#
	.loc 1 902 0
	movl	-12(%rbp), %eax	# idx, tmp227
	cltq
	leaq	0(,%rax,8), %rdx	#, D.9255
	movq	-8(%rbp), %rax	# tr, tmp228
	addq	%rdx, %rax	# D.9255, D.9256
	movq	(%rax), %rax	# *_47, D.9257
	movl	-20(%rbp), %edx	# i, tmp229
	movl	-16(%rbp), %ecx	# j, tmp230
	subl	%edx, %ecx	# tmp229, D.9251
	movl	%ecx, %edx	# D.9251, D.9251
	addl	$5, %edx	#, D.9251
	movl	%edx, (%rax)	# D.9251, _48->tlen
	.loc 1 904 0
	movl	-12(%rbp), %eax	# idx, tmp231
	cltq
	leaq	0(,%rax,8), %rdx	#, D.9255
	movq	-8(%rbp), %rax	# tr, tmp232
	addq	%rdx, %rax	# D.9255, D.9256
	movq	(%rax), %rax	# *_53, D.9257
	movq	8(%rax), %rax	# _54->statetype, D.9252
	movb	$4, (%rax)	#, *_55
	.loc 1 905 0
	movl	-12(%rbp), %eax	# idx, tmp233
	cltq
	leaq	0(,%rax,8), %rdx	#, D.9255
	movq	-8(%rbp), %rax	# tr, tmp234
	addq	%rdx, %rax	# D.9255, D.9256
	movq	(%rax), %rax	# *_58, D.9257
	movq	16(%rax), %rax	# _59->nodeidx, D.9258
	movl	$0, (%rax)	#, *_60
	.loc 1 906 0
	movl	-12(%rbp), %eax	# idx, tmp235
	cltq
	leaq	0(,%rax,8), %rdx	#, D.9255
	movq	-8(%rbp), %rax	# tr, tmp236
	addq	%rdx, %rax	# D.9255, D.9256
	movq	(%rax), %rax	# *_63, D.9257
	movq	24(%rax), %rax	# _64->pos, D.9258
	movl	$0, (%rax)	#, *_65
	.loc 1 907 0
	movl	-12(%rbp), %eax	# idx, tmp237
	cltq
	leaq	0(,%rax,8), %rdx	#, D.9255
	movq	-8(%rbp), %rax	# tr, tmp238
	addq	%rdx, %rax	# D.9255, D.9256
	movq	(%rax), %rax	# *_68, D.9257
	movq	8(%rax), %rax	# _69->statetype, D.9252
	addq	$1, %rax	#, D.9252
	movb	$5, (%rax)	#, *_71
	.loc 1 908 0
	movl	-12(%rbp), %eax	# idx, tmp239
	cltq
	leaq	0(,%rax,8), %rdx	#, D.9255
	movq	-8(%rbp), %rax	# tr, tmp240
	addq	%rdx, %rax	# D.9255, D.9256
	movq	(%rax), %rax	# *_74, D.9257
	movq	16(%rax), %rax	# _75->nodeidx, D.9258
	addq	$4, %rax	#, D.9258
	movl	$0, (%rax)	#, *_77
	.loc 1 909 0
	movl	-12(%rbp), %eax	# idx, tmp241
	cltq
	leaq	0(,%rax,8), %rdx	#, D.9255
	movq	-8(%rbp), %rax	# tr, tmp242
	addq	%rdx, %rax	# D.9255, D.9256
	movq	(%rax), %rax	# *_80, D.9257
	movq	24(%rax), %rax	# _81->pos, D.9258
	addq	$4, %rax	#, D.9258
	movl	$0, (%rax)	#, *_83
	.loc 1 910 0
	movl	$2, -16(%rbp)	#, j
.L276:
	.loc 1 913 0
	movl	-12(%rbp), %eax	# idx, tmp243
	cltq
	leaq	0(,%rax,8), %rdx	#, D.9255
	movq	-8(%rbp), %rax	# tr, tmp244
	addq	%rdx, %rax	# D.9255, D.9256
	movq	(%rax), %rax	# *_87, D.9257
	movq	8(%rax), %rdx	# _88->statetype, D.9252
	movl	-16(%rbp), %eax	# j, tmp245
	cltq
	addq	%rax, %rdx	# D.9253, D.9252
	movq	-40(%rbp), %rax	# otr, tmp246
	movq	8(%rax), %rcx	# otr_13(D)->statetype, D.9252
	movl	-20(%rbp), %eax	# i, tmp247
	cltq
	addq	%rcx, %rax	# D.9252, D.9252
	movzbl	(%rax), %eax	# *_94, D.9254
	movb	%al, (%rdx)	# D.9254, *_91
	.loc 1 914 0
	movl	-12(%rbp), %eax	# idx, tmp248
	cltq
	leaq	0(,%rax,8), %rdx	#, D.9255
	movq	-8(%rbp), %rax	# tr, tmp249
	addq	%rdx, %rax	# D.9255, D.9256
	movq	(%rax), %rax	# *_98, D.9257
	movq	16(%rax), %rax	# _99->nodeidx, D.9258
	movl	-16(%rbp), %edx	# j, tmp250
	movslq	%edx, %rdx	# tmp250, D.9255
	salq	$2, %rdx	#, D.9255
	addq	%rax, %rdx	# D.9258, D.9258
	movq	-40(%rbp), %rax	# otr, tmp251
	movq	16(%rax), %rax	# otr_13(D)->nodeidx, D.9258
	movl	-20(%rbp), %ecx	# i, tmp252
	movslq	%ecx, %rcx	# tmp252, D.9255
	salq	$2, %rcx	#, D.9255
	addq	%rcx, %rax	# D.9255, D.9258
	movl	(%rax), %eax	# *_107, D.9251
	movl	%eax, (%rdx)	# D.9251, *_103
	.loc 1 915 0
	movl	-12(%rbp), %eax	# idx, tmp253
	cltq
	leaq	0(,%rax,8), %rdx	#, D.9255
	movq	-8(%rbp), %rax	# tr, tmp254
	addq	%rdx, %rax	# D.9255, D.9256
	movq	(%rax), %rax	# *_111, D.9257
	movq	24(%rax), %rax	# _112->pos, D.9258
	movl	-16(%rbp), %edx	# j, tmp255
	movslq	%edx, %rdx	# tmp255, D.9255
	salq	$2, %rdx	#, D.9255
	addq	%rax, %rdx	# D.9258, D.9258
	movq	-40(%rbp), %rax	# otr, tmp256
	movq	24(%rax), %rax	# otr_13(D)->pos, D.9258
	movl	-20(%rbp), %ecx	# i, tmp257
	movslq	%ecx, %rcx	# tmp257, D.9255
	salq	$2, %rcx	#, D.9255
	addq	%rcx, %rax	# D.9255, D.9258
	movl	(%rax), %eax	# *_120, D.9251
	movl	%eax, (%rdx)	# D.9251, *_116
	.loc 1 916 0
	movq	-40(%rbp), %rax	# otr, tmp258
	movq	8(%rax), %rdx	# otr_13(D)->statetype, D.9252
	movl	-20(%rbp), %eax	# i, tmp259
	cltq
	addq	%rdx, %rax	# D.9252, D.9252
	movzbl	(%rax), %eax	# *_124, D.9254
	cmpb	$7, %al	#, D.9254
	jne	.L274	#,
	.loc 1 916 0 is_stmt 0 discriminator 1
	nop
	.loc 1 919 0 is_stmt 1 discriminator 1
	addl	$1, -16(%rbp)	#, j
	.loc 1 920 0 discriminator 1
	movl	-12(%rbp), %eax	# idx, tmp260
	cltq
	leaq	0(,%rax,8), %rdx	#, D.9255
	movq	-8(%rbp), %rax	# tr, tmp261
	addq	%rdx, %rax	# D.9255, D.9256
	movq	(%rax), %rax	# *_129, D.9257
	movq	8(%rax), %rdx	# _130->statetype, D.9252
	movl	-16(%rbp), %eax	# j, tmp262
	cltq
	addq	%rdx, %rax	# D.9252, D.9252
	movb	$8, (%rax)	#, *_133
	.loc 1 921 0 discriminator 1
	movl	-12(%rbp), %eax	# idx, tmp263
	cltq
	leaq	0(,%rax,8), %rdx	#, D.9255
	movq	-8(%rbp), %rax	# tr, tmp264
	addq	%rdx, %rax	# D.9255, D.9256
	movq	(%rax), %rax	# *_136, D.9257
	movq	16(%rax), %rax	# _137->nodeidx, D.9258
	movl	-16(%rbp), %edx	# j, tmp265
	movslq	%edx, %rdx	# tmp265, D.9255
	salq	$2, %rdx	#, D.9255
	addq	%rdx, %rax	# D.9255, D.9258
	movl	$0, (%rax)	#, *_141
	.loc 1 922 0 discriminator 1
	movl	-12(%rbp), %eax	# idx, tmp266
	cltq
	leaq	0(,%rax,8), %rdx	#, D.9255
	movq	-8(%rbp), %rax	# tr, tmp267
	addq	%rdx, %rax	# D.9255, D.9256
	movq	(%rax), %rax	# *_144, D.9257
	movq	24(%rax), %rax	# _145->pos, D.9258
	movl	-16(%rbp), %edx	# j, tmp268
	movslq	%edx, %rdx	# tmp268, D.9255
	salq	$2, %rdx	#, D.9255
	addq	%rdx, %rax	# D.9255, D.9258
	movl	$0, (%rax)	#, *_149
	.loc 1 923 0 discriminator 1
	addl	$1, -16(%rbp)	#, j
	.loc 1 924 0 discriminator 1
	movl	-12(%rbp), %eax	# idx, tmp269
	cltq
	leaq	0(,%rax,8), %rdx	#, D.9255
	movq	-8(%rbp), %rax	# tr, tmp270
	addq	%rdx, %rax	# D.9255, D.9256
	movq	(%rax), %rax	# *_153, D.9257
	movq	8(%rax), %rdx	# _154->statetype, D.9252
	movl	-16(%rbp), %eax	# j, tmp271
	cltq
	addq	%rdx, %rax	# D.9252, D.9252
	movb	$9, (%rax)	#, *_157
	.loc 1 925 0 discriminator 1
	movl	-12(%rbp), %eax	# idx, tmp272
	cltq
	leaq	0(,%rax,8), %rdx	#, D.9255
	movq	-8(%rbp), %rax	# tr, tmp273
	addq	%rdx, %rax	# D.9255, D.9256
	movq	(%rax), %rax	# *_160, D.9257
	movq	16(%rax), %rax	# _161->nodeidx, D.9258
	movl	-16(%rbp), %edx	# j, tmp274
	movslq	%edx, %rdx	# tmp274, D.9255
	salq	$2, %rdx	#, D.9255
	addq	%rdx, %rax	# D.9255, D.9258
	movl	$0, (%rax)	#, *_165
	.loc 1 926 0 discriminator 1
	movl	-12(%rbp), %eax	# idx, tmp275
	cltq
	leaq	0(,%rax,8), %rdx	#, D.9255
	movq	-8(%rbp), %rax	# tr, tmp276
	addq	%rdx, %rax	# D.9255, D.9256
	movq	(%rax), %rax	# *_168, D.9257
	movq	24(%rax), %rax	# _169->pos, D.9258
	movl	-16(%rbp), %edx	# j, tmp277
	movslq	%edx, %rdx	# tmp277, D.9255
	salq	$2, %rdx	#, D.9255
	addq	%rdx, %rax	# D.9255, D.9258
	movl	$0, (%rax)	#, *_173
	.loc 1 927 0 discriminator 1
	addl	$1, -12(%rbp)	#, idx
	jmp	.L269	#
.L274:
	.loc 1 917 0
	addl	$1, -20(%rbp)	#, i
	addl	$1, -16(%rbp)	#, j
	.loc 1 918 0
	jmp	.L276	#
.L269:
	.loc 1 895 0
	addl	$1, -20(%rbp)	#, i
.L268:
	.loc 1 895 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# otr, tmp278
	movl	(%rax), %eax	# otr_13(D)->tlen, D.9251
	cmpl	-20(%rbp), %eax	# i, D.9251
	jg	.L277	#,
	.loc 1 930 0 is_stmt 1
	movq	-48(%rbp), %rax	# ret_tr, tmp279
	movq	-8(%rbp), %rdx	# tr, tmp280
	movq	%rdx, (%rax)	# tmp280, *ret_tr_22(D)
	.loc 1 931 0
	movq	-56(%rbp), %rax	# ret_ntr, tmp281
	movl	-24(%rbp), %edx	# ntr, tmp282
	movl	%edx, (%rax)	# tmp282, *ret_ntr_21(D)
	.loc 1 932 0
	nop
.L262:
	.loc 1 933 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	TraceDecompose, .-TraceDecompose
	.globl	TraceDomainNumber
	.type	TraceDomainNumber, @function
TraceDomainNumber:
.LFB15:
	.loc 1 948 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# tr, tr
	.loc 1 950 0
	movl	$0, -4(%rbp)	#, ndom
	.loc 1 952 0
	movl	$0, -8(%rbp)	#, i
	jmp	.L279	#
.L281:
	.loc 1 953 0
	movq	-24(%rbp), %rax	# tr, tmp66
	movq	8(%rax), %rdx	# tr_6(D)->statetype, D.9260
	movl	-8(%rbp), %eax	# i, tmp67
	cltq
	addq	%rdx, %rax	# D.9260, D.9260
	movzbl	(%rax), %eax	# *_10, D.9262
	cmpb	$6, %al	#, D.9262
	jne	.L280	#,
	.loc 1 953 0 is_stmt 0 discriminator 1
	addl	$1, -4(%rbp)	#, ndom
.L280:
	.loc 1 952 0 is_stmt 1
	addl	$1, -8(%rbp)	#, i
.L279:
	.loc 1 952 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# tr, tmp68
	movl	(%rax), %eax	# tr_6(D)->tlen, D.9259
	cmpl	-8(%rbp), %eax	# i, D.9259
	jg	.L281	#,
	.loc 1 954 0 is_stmt 1
	movl	-4(%rbp), %eax	# ndom, D.9259
	.loc 1 955 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	TraceDomainNumber, .-TraceDomainNumber
	.section	.rodata
	.align 8
.LC19:
	.string	"sanity check failed: didn't find a match state in trace"
	.text
	.globl	TraceSimpleBounds
	.type	TraceSimpleBounds, @function
TraceSimpleBounds:
.LFB16:
	.loc 1 976 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movq	%rdi, -40(%rbp)	# tr, tr
	movq	%rsi, -48(%rbp)	# ret_i1, ret_i1
	movq	%rdx, -56(%rbp)	# ret_i2, ret_i2
	movq	%rcx, -64(%rbp)	# ret_k1, ret_k1
	movq	%r8, -72(%rbp)	# ret_k2, ret_k2
	.loc 1 979 0
	movl	$-1, -8(%rbp)	#, k2
	movl	-8(%rbp), %eax	# k2, tmp103
	movl	%eax, -16(%rbp)	# tmp103, i2
	movl	-16(%rbp), %eax	# i2, tmp104
	movl	%eax, -12(%rbp)	# tmp104, k1
	movl	-12(%rbp), %eax	# k1, tmp105
	movl	%eax, -20(%rbp)	# tmp105, i1
	.loc 1 982 0
	movl	$0, -4(%rbp)	#, tpos
	jmp	.L284	#
.L289:
	.loc 1 984 0
	cmpl	$-1, -12(%rbp)	#, k1
	jne	.L285	#,
	.loc 1 984 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# tr, tmp106
	movq	8(%rax), %rdx	# tr_16(D)->statetype, D.9264
	movl	-4(%rbp), %eax	# tpos, tmp107
	cltq
	addq	%rdx, %rax	# D.9264, D.9264
	movzbl	(%rax), %eax	# *_20, D.9266
	cmpb	$1, %al	#, D.9266
	je	.L286	#,
	movq	-40(%rbp), %rax	# tr, tmp108
	movq	8(%rax), %rdx	# tr_16(D)->statetype, D.9264
	movl	-4(%rbp), %eax	# tpos, tmp109
	cltq
	addq	%rdx, %rax	# D.9264, D.9264
	movzbl	(%rax), %eax	# *_24, D.9266
	cmpb	$2, %al	#, D.9266
	jne	.L285	#,
.L286:
	.loc 1 985 0 is_stmt 1
	movq	-40(%rbp), %rax	# tr, tmp110
	movq	16(%rax), %rax	# tr_16(D)->nodeidx, D.9267
	movl	-4(%rbp), %edx	# tpos, tmp111
	movslq	%edx, %rdx	# tmp111, D.9268
	salq	$2, %rdx	#, D.9268
	addq	%rdx, %rax	# D.9268, D.9267
	movl	(%rax), %eax	# *_29, tmp112
	movl	%eax, -12(%rbp)	# tmp112, k1
.L285:
	.loc 1 986 0
	movq	-40(%rbp), %rax	# tr, tmp113
	movq	8(%rax), %rdx	# tr_16(D)->statetype, D.9264
	movl	-4(%rbp), %eax	# tpos, tmp114
	cltq
	addq	%rdx, %rax	# D.9264, D.9264
	movzbl	(%rax), %eax	# *_33, D.9266
	cmpb	$1, %al	#, D.9266
	jne	.L287	#,
	.loc 1 988 0
	movq	-40(%rbp), %rax	# tr, tmp115
	movq	24(%rax), %rax	# tr_16(D)->pos, D.9267
	movl	-4(%rbp), %edx	# tpos, tmp116
	movslq	%edx, %rdx	# tmp116, D.9268
	salq	$2, %rdx	#, D.9268
	addq	%rdx, %rax	# D.9268, D.9267
	movl	(%rax), %eax	# *_38, tmp117
	movl	%eax, -20(%rbp)	# tmp117, i1
	.loc 1 989 0
	jmp	.L288	#
.L287:
	.loc 1 982 0
	addl	$1, -4(%rbp)	#, tpos
.L284:
	.loc 1 982 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# tr, tmp118
	movl	(%rax), %eax	# tr_16(D)->tlen, D.9263
	cmpl	-4(%rbp), %eax	# tpos, D.9263
	jg	.L289	#,
.L288:
	.loc 1 992 0 is_stmt 1
	movq	-40(%rbp), %rax	# tr, tmp119
	movl	(%rax), %eax	# tr_16(D)->tlen, D.9263
	cmpl	-4(%rbp), %eax	# tpos, D.9263
	je	.L290	#,
	.loc 1 992 0 is_stmt 0 discriminator 1
	cmpl	$-1, -20(%rbp)	#, i1
	je	.L290	#,
	cmpl	$-1, -12(%rbp)	#, k1
	jne	.L291	#,
.L290:
	.loc 1 993 0 is_stmt 1
	movl	$.LC19, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
.L291:
	.loc 1 996 0
	movq	-40(%rbp), %rax	# tr, tmp120
	movl	(%rax), %eax	# tr_16(D)->tlen, D.9263
	subl	$1, %eax	#, tmp121
	movl	%eax, -4(%rbp)	# tmp121, tpos
	jmp	.L292	#
.L297:
	.loc 1 998 0
	cmpl	$-1, -8(%rbp)	#, k2
	jne	.L293	#,
	.loc 1 998 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# tr, tmp122
	movq	8(%rax), %rdx	# tr_16(D)->statetype, D.9264
	movl	-4(%rbp), %eax	# tpos, tmp123
	cltq
	addq	%rdx, %rax	# D.9264, D.9264
	movzbl	(%rax), %eax	# *_46, D.9266
	cmpb	$1, %al	#, D.9266
	je	.L294	#,
	movq	-40(%rbp), %rax	# tr, tmp124
	movq	8(%rax), %rdx	# tr_16(D)->statetype, D.9264
	movl	-4(%rbp), %eax	# tpos, tmp125
	cltq
	addq	%rdx, %rax	# D.9264, D.9264
	movzbl	(%rax), %eax	# *_50, D.9266
	cmpb	$2, %al	#, D.9266
	jne	.L293	#,
.L294:
	.loc 1 999 0 is_stmt 1
	movq	-40(%rbp), %rax	# tr, tmp126
	movq	16(%rax), %rax	# tr_16(D)->nodeidx, D.9267
	movl	-4(%rbp), %edx	# tpos, tmp127
	movslq	%edx, %rdx	# tmp127, D.9268
	salq	$2, %rdx	#, D.9268
	addq	%rdx, %rax	# D.9268, D.9267
	movl	(%rax), %eax	# *_55, tmp128
	movl	%eax, -8(%rbp)	# tmp128, k2
.L293:
	.loc 1 1000 0
	movq	-40(%rbp), %rax	# tr, tmp129
	movq	8(%rax), %rdx	# tr_16(D)->statetype, D.9264
	movl	-4(%rbp), %eax	# tpos, tmp130
	cltq
	addq	%rdx, %rax	# D.9264, D.9264
	movzbl	(%rax), %eax	# *_59, D.9266
	cmpb	$1, %al	#, D.9266
	jne	.L295	#,
	.loc 1 1002 0
	movq	-40(%rbp), %rax	# tr, tmp131
	movq	24(%rax), %rax	# tr_16(D)->pos, D.9267
	movl	-4(%rbp), %edx	# tpos, tmp132
	movslq	%edx, %rdx	# tmp132, D.9268
	salq	$2, %rdx	#, D.9268
	addq	%rdx, %rax	# D.9268, D.9267
	movl	(%rax), %eax	# *_64, tmp133
	movl	%eax, -16(%rbp)	# tmp133, i2
	.loc 1 1003 0
	jmp	.L296	#
.L295:
	.loc 1 996 0
	subl	$1, -4(%rbp)	#, tpos
.L292:
	.loc 1 996 0 is_stmt 0 discriminator 1
	cmpl	$0, -4(%rbp)	#, tpos
	jns	.L297	#,
.L296:
	.loc 1 1006 0 is_stmt 1
	movq	-40(%rbp), %rax	# tr, tmp134
	movl	(%rax), %eax	# tr_16(D)->tlen, D.9263
	cmpl	-4(%rbp), %eax	# tpos, D.9263
	je	.L298	#,
	.loc 1 1006 0 is_stmt 0 discriminator 1
	cmpl	$-1, -16(%rbp)	#, i2
	je	.L298	#,
	cmpl	$-1, -8(%rbp)	#, k2
	jne	.L299	#,
.L298:
	.loc 1 1007 0 is_stmt 1
	movl	$.LC19, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
.L299:
	.loc 1 1009 0
	movq	-64(%rbp), %rax	# ret_k1, tmp135
	movl	-12(%rbp), %edx	# k1, tmp136
	movl	%edx, (%rax)	# tmp136, *ret_k1_68(D)
	.loc 1 1010 0
	movq	-48(%rbp), %rax	# ret_i1, tmp137
	movl	-20(%rbp), %edx	# i1, tmp138
	movl	%edx, (%rax)	# tmp138, *ret_i1_69(D)
	.loc 1 1011 0
	movq	-72(%rbp), %rax	# ret_k2, tmp139
	movl	-8(%rbp), %edx	# k2, tmp140
	movl	%edx, (%rax)	# tmp140, *ret_k2_70(D)
	.loc 1 1012 0
	movq	-56(%rbp), %rax	# ret_i2, tmp141
	movl	-16(%rbp), %edx	# i2, tmp142
	movl	%edx, (%rax)	# tmp142, *ret_i2_71(D)
	.loc 1 1013 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	TraceSimpleBounds, .-TraceSimpleBounds
	.globl	MasterTraceFromMap
	.type	MasterTraceFromMap, @function
MasterTraceFromMap:
.LFB17:
	.loc 1 1037 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# map, map
	movl	%esi, -44(%rbp)	# M, M
	movl	%edx, -48(%rbp)	# alen, alen
	.loc 1 1048 0
	movl	-48(%rbp), %eax	# alen, tmp81
	leal	6(%rax), %edx	#, D.9270
	leaq	-8(%rbp), %rax	#, tmp82
	movq	%rax, %rsi	# tmp82,
	movl	%edx, %edi	# D.9270,
	call	P7AllocTrace	#
	.loc 1 1052 0
	movl	$0, -20(%rbp)	#, tpos
	.loc 1 1053 0
	movq	-8(%rbp), %rax	# tr, tr.3
	movl	-20(%rbp), %esi	# tpos, tmp83
	movl	$0, %r8d	#,
	movl	$0, %ecx	#,
	movl	$4, %edx	#,
	movq	%rax, %rdi	# tr.3,
	call	TraceSet	#
	addl	$1, -20(%rbp)	#, tpos
	.loc 1 1054 0
	movq	-8(%rbp), %rax	# tr, tr.4
	movl	-20(%rbp), %esi	# tpos, tmp84
	movl	$0, %r8d	#,
	movl	$0, %ecx	#,
	movl	$5, %edx	#,
	movq	%rax, %rdi	# tr.4,
	call	TraceSet	#
	addl	$1, -20(%rbp)	#, tpos
	.loc 1 1058 0
	movl	$1, -16(%rbp)	#, apos
	jmp	.L301	#
.L302:
	.loc 1 1059 0 discriminator 2
	movq	-8(%rbp), %rax	# tr, tr.5
	movl	-16(%rbp), %edx	# apos, tmp85
	movl	-20(%rbp), %esi	# tpos, tmp86
	movl	%edx, %r8d	# tmp85,
	movl	$0, %ecx	#,
	movl	$5, %edx	#,
	movq	%rax, %rdi	# tr.5,
	call	TraceSet	#
	addl	$1, -20(%rbp)	#, tpos
	.loc 1 1058 0 discriminator 2
	addl	$1, -16(%rbp)	#, apos
.L301:
	.loc 1 1058 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# map, tmp87
	addq	$4, %rax	#, D.9271
	movl	(%rax), %eax	# *_19, D.9270
	cmpl	-16(%rbp), %eax	# apos, D.9270
	jg	.L302	#,
	.loc 1 1061 0 is_stmt 1
	movq	-8(%rbp), %rax	# tr, tr.6
	movl	-20(%rbp), %esi	# tpos, tmp88
	movl	$0, %r8d	#,
	movl	$0, %ecx	#,
	movl	$6, %edx	#,
	movq	%rax, %rdi	# tr.6,
	call	TraceSet	#
	addl	$1, -20(%rbp)	#, tpos
	.loc 1 1063 0
	movl	$1, -12(%rbp)	#, k
	jmp	.L303	#
.L306:
	.loc 1 1065 0
	movq	-8(%rbp), %rax	# tr, tr.7
	movl	-16(%rbp), %ecx	# apos, tmp89
	movl	-12(%rbp), %edx	# k, tmp90
	movl	-20(%rbp), %esi	# tpos, tmp91
	movl	%ecx, %r8d	# tmp89,
	movl	%edx, %ecx	# tmp90,
	movl	$1, %edx	#,
	movq	%rax, %rdi	# tr.7,
	call	TraceSet	#
	addl	$1, -20(%rbp)	#, tpos
	.loc 1 1066 0
	addl	$1, -16(%rbp)	#, apos
	.loc 1 1068 0
	jmp	.L304	#
.L305:
	.loc 1 1069 0 discriminator 2
	movq	-8(%rbp), %rax	# tr, tr.8
	movl	-16(%rbp), %ecx	# apos, tmp92
	movl	-12(%rbp), %edx	# k, tmp93
	movl	-20(%rbp), %esi	# tpos, tmp94
	movl	%ecx, %r8d	# tmp92,
	movl	%edx, %ecx	# tmp93,
	movl	$3, %edx	#,
	movq	%rax, %rdi	# tr.8,
	call	TraceSet	#
	addl	$1, -20(%rbp)	#, tpos
	.loc 1 1068 0 discriminator 2
	addl	$1, -16(%rbp)	#, apos
.L304:
	.loc 1 1068 0 is_stmt 0 discriminator 1
	movl	-12(%rbp), %eax	# k, tmp95
	cltq
	addq	$1, %rax	#, D.9272
	leaq	0(,%rax,4), %rdx	#, D.9272
	movq	-40(%rbp), %rax	# map, tmp96
	addq	%rdx, %rax	# D.9272, D.9271
	movl	(%rax), %eax	# *_34, D.9270
	cmpl	-16(%rbp), %eax	# apos, D.9270
	jg	.L305	#,
	.loc 1 1063 0 is_stmt 1
	addl	$1, -12(%rbp)	#, k
.L303:
	.loc 1 1063 0 is_stmt 0 discriminator 1
	movl	-12(%rbp), %eax	# k, tmp97
	cmpl	-44(%rbp), %eax	# M, tmp97
	jl	.L306	#,
	.loc 1 1073 0 is_stmt 1
	movq	-8(%rbp), %rax	# tr, tr.9
	movl	-16(%rbp), %ecx	# apos, tmp98
	movl	-44(%rbp), %edx	# M, tmp99
	movl	-20(%rbp), %esi	# tpos, tmp100
	movl	%ecx, %r8d	# tmp98,
	movl	%edx, %ecx	# tmp99,
	movl	$1, %edx	#,
	movq	%rax, %rdi	# tr.9,
	call	TraceSet	#
	addl	$1, -20(%rbp)	#, tpos
	.loc 1 1074 0
	addl	$1, -16(%rbp)	#, apos
	.loc 1 1078 0
	movq	-8(%rbp), %rax	# tr, tr.10
	movl	-20(%rbp), %esi	# tpos, tmp101
	movl	$0, %r8d	#,
	movl	$0, %ecx	#,
	movl	$7, %edx	#,
	movq	%rax, %rdi	# tr.10,
	call	TraceSet	#
	addl	$1, -20(%rbp)	#, tpos
	.loc 1 1079 0
	movq	-8(%rbp), %rax	# tr, tr.11
	movl	-20(%rbp), %esi	# tpos, tmp102
	movl	$0, %r8d	#,
	movl	$0, %ecx	#,
	movl	$8, %edx	#,
	movq	%rax, %rdi	# tr.11,
	call	TraceSet	#
	addl	$1, -20(%rbp)	#, tpos
	.loc 1 1080 0
	jmp	.L307	#
.L308:
	.loc 1 1081 0 discriminator 2
	movq	-8(%rbp), %rax	# tr, tr.12
	movl	-16(%rbp), %edx	# apos, tmp103
	movl	-20(%rbp), %esi	# tpos, tmp104
	movl	%edx, %r8d	# tmp103,
	movl	$0, %ecx	#,
	movl	$8, %edx	#,
	movq	%rax, %rdi	# tr.12,
	call	TraceSet	#
	addl	$1, -20(%rbp)	#, tpos
	.loc 1 1080 0 discriminator 2
	addl	$1, -16(%rbp)	#, apos
.L307:
	.loc 1 1080 0 is_stmt 0 discriminator 1
	movl	-16(%rbp), %eax	# apos, tmp105
	cmpl	-48(%rbp), %eax	# alen, tmp105
	jle	.L308	#,
	.loc 1 1086 0 is_stmt 1
	movq	-8(%rbp), %rax	# tr, tr.13
	movl	-20(%rbp), %esi	# tpos, tmp106
	movl	$0, %r8d	#,
	movl	$0, %ecx	#,
	movl	$9, %edx	#,
	movq	%rax, %rdi	# tr.13,
	call	TraceSet	#
	addl	$1, -20(%rbp)	#, tpos
	.loc 1 1087 0
	movq	-8(%rbp), %rax	# tr, tr.14
	movl	-20(%rbp), %edx	# tpos, tmp107
	movl	%edx, (%rax)	# tmp107, tr.14_52->tlen
	.loc 1 1088 0
	movq	-8(%rbp), %rax	# tr, D.9273
	.loc 1 1089 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	MasterTraceFromMap, .-MasterTraceFromMap
	.section	.rodata
.LC20:
	.string	"never happens. Trust me."
	.text
	.globl	ImposeMasterTrace
	.type	ImposeMasterTrace, @function
ImposeMasterTrace:
.LFB18:
	.loc 1 1119 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -40(%rbp)	# aseq, aseq
	movl	%esi, -44(%rbp)	# nseq, nseq
	movq	%rdx, -56(%rbp)	# mtr, mtr
	movq	%rcx, -64(%rbp)	# ret_tr, ret_tr
	.loc 1 1126 0
	movl	-44(%rbp), %eax	# nseq, tmp334
	cltq
	salq	$3, %rax	#, D.9274
	movq	%rax, %rdx	# D.9274,
	movl	$1126, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_malloc	#
	movq	%rax, -8(%rbp)	# tmp335, tr
	.loc 1 1128 0
	movl	$0, -24(%rbp)	#, idx
	jmp	.L311	#
.L327:
	.loc 1 1130 0
	movl	-24(%rbp), %eax	# idx, tmp336
	cltq
	leaq	0(,%rax,8), %rdx	#, D.9274
	movq	-8(%rbp), %rax	# tr, tmp337
	addq	%rax, %rdx	# tmp337, D.9275
	movq	-56(%rbp), %rax	# mtr, tmp338
	movl	(%rax), %eax	# mtr_20(D)->tlen, D.9276
	movq	%rdx, %rsi	# D.9275,
	movl	%eax, %edi	# D.9276,
	call	P7AllocTrace	#
	.loc 1 1132 0
	movl	$0, -16(%rbp)	#, tpos
	.loc 1 1133 0
	movl	$1, -20(%rbp)	#, i
	.loc 1 1134 0
	movl	$0, -12(%rbp)	#, mpos
	jmp	.L312	#
.L326:
	.loc 1 1136 0
	movq	-56(%rbp), %rax	# mtr, tmp339
	movq	8(%rax), %rdx	# mtr_20(D)->statetype, D.9277
	movl	-12(%rbp), %eax	# mpos, tmp340
	cltq
	addq	%rdx, %rax	# D.9277, D.9277
	movzbl	(%rax), %eax	# *_28, D.9279
	movsbl	%al, %eax	# D.9279, D.9276
	cmpl	$10, %eax	#, D.9276
	ja	.L313	#,
	movl	%eax, %eax	# D.9276, tmp341
	movq	.L315(,%rax,8), %rax	#, tmp342
	jmp	*%rax	# tmp342
	.section	.rodata
	.align 8
	.align 4
.L315:
	.quad	.L314
	.quad	.L316
	.quad	.L317
	.quad	.L318
	.quad	.L317
	.quad	.L319
	.quad	.L317
	.quad	.L317
	.quad	.L319
	.quad	.L317
	.quad	.L319
	.text
.L317:
	.loc 1 1143 0
	movq	-56(%rbp), %rax	# mtr, tmp343
	movq	16(%rax), %rax	# mtr_20(D)->nodeidx, D.9280
	movl	-12(%rbp), %edx	# mpos, tmp344
	movslq	%edx, %rdx	# tmp344, D.9274
	salq	$2, %rdx	#, D.9274
	addq	%rdx, %rax	# D.9274, D.9280
	movl	(%rax), %ecx	# *_34, D.9276
	movq	-56(%rbp), %rax	# mtr, tmp345
	movq	8(%rax), %rdx	# mtr_20(D)->statetype, D.9277
	movl	-12(%rbp), %eax	# mpos, tmp346
	cltq
	addq	%rdx, %rax	# D.9277, D.9277
	movzbl	(%rax), %eax	# *_38, D.9279
	movsbl	%al, %edx	# D.9279, D.9276
	movl	-24(%rbp), %eax	# idx, tmp347
	cltq
	leaq	0(,%rax,8), %rsi	#, D.9274
	movq	-8(%rbp), %rax	# tr, tmp348
	addq	%rsi, %rax	# D.9274, D.9275
	movq	(%rax), %rax	# *_43, D.9281
	movl	-16(%rbp), %esi	# tpos, tmp349
	movl	$0, %r8d	#,
	movq	%rax, %rdi	# D.9281,
	call	TraceSet	#
	.loc 1 1144 0
	addl	$1, -16(%rbp)	#, tpos
	.loc 1 1145 0
	jmp	.L313	#
.L316:
	.loc 1 1148 0
	movl	-24(%rbp), %eax	# idx, tmp350
	cltq
	leaq	0(,%rax,8), %rdx	#, D.9274
	movq	-40(%rbp), %rax	# aseq, tmp351
	addq	%rdx, %rax	# D.9274, D.9282
	movq	(%rax), %rdx	# *_49, D.9277
	movq	-56(%rbp), %rax	# mtr, tmp352
	movq	24(%rax), %rax	# mtr_20(D)->pos, D.9280
	movl	-12(%rbp), %ecx	# mpos, tmp353
	movslq	%ecx, %rcx	# tmp353, D.9274
	salq	$2, %rcx	#, D.9274
	addq	%rcx, %rax	# D.9274, D.9280
	movl	(%rax), %eax	# *_54, D.9276
	cltq
	subq	$1, %rax	#, D.9278
	addq	%rdx, %rax	# D.9277, D.9277
	movzbl	(%rax), %eax	# *_58, D.9279
	cmpb	$32, %al	#, D.9279
	je	.L320	#,
	.loc 1 1148 0 is_stmt 0 discriminator 1
	movl	-24(%rbp), %eax	# idx, tmp354
	cltq
	leaq	0(,%rax,8), %rdx	#, D.9274
	movq	-40(%rbp), %rax	# aseq, tmp355
	addq	%rdx, %rax	# D.9274, D.9282
	movq	(%rax), %rdx	# *_62, D.9277
	movq	-56(%rbp), %rax	# mtr, tmp356
	movq	24(%rax), %rax	# mtr_20(D)->pos, D.9280
	movl	-12(%rbp), %ecx	# mpos, tmp357
	movslq	%ecx, %rcx	# tmp357, D.9274
	salq	$2, %rcx	#, D.9274
	addq	%rcx, %rax	# D.9274, D.9280
	movl	(%rax), %eax	# *_67, D.9276
	cltq
	subq	$1, %rax	#, D.9278
	addq	%rdx, %rax	# D.9277, D.9277
	movzbl	(%rax), %eax	# *_71, D.9279
	cmpb	$46, %al	#, D.9279
	je	.L320	#,
	movl	-24(%rbp), %eax	# idx, tmp358
	cltq
	leaq	0(,%rax,8), %rdx	#, D.9274
	movq	-40(%rbp), %rax	# aseq, tmp359
	addq	%rdx, %rax	# D.9274, D.9282
	movq	(%rax), %rdx	# *_75, D.9277
	movq	-56(%rbp), %rax	# mtr, tmp360
	movq	24(%rax), %rax	# mtr_20(D)->pos, D.9280
	movl	-12(%rbp), %ecx	# mpos, tmp361
	movslq	%ecx, %rcx	# tmp361, D.9274
	salq	$2, %rcx	#, D.9274
	addq	%rcx, %rax	# D.9274, D.9280
	movl	(%rax), %eax	# *_80, D.9276
	cltq
	subq	$1, %rax	#, D.9278
	addq	%rdx, %rax	# D.9277, D.9277
	movzbl	(%rax), %eax	# *_84, D.9279
	cmpb	$95, %al	#, D.9279
	je	.L320	#,
	movl	-24(%rbp), %eax	# idx, tmp362
	cltq
	leaq	0(,%rax,8), %rdx	#, D.9274
	movq	-40(%rbp), %rax	# aseq, tmp363
	addq	%rdx, %rax	# D.9274, D.9282
	movq	(%rax), %rdx	# *_88, D.9277
	movq	-56(%rbp), %rax	# mtr, tmp364
	movq	24(%rax), %rax	# mtr_20(D)->pos, D.9280
	movl	-12(%rbp), %ecx	# mpos, tmp365
	movslq	%ecx, %rcx	# tmp365, D.9274
	salq	$2, %rcx	#, D.9274
	addq	%rcx, %rax	# D.9274, D.9280
	movl	(%rax), %eax	# *_93, D.9276
	cltq
	subq	$1, %rax	#, D.9278
	addq	%rdx, %rax	# D.9277, D.9277
	movzbl	(%rax), %eax	# *_97, D.9279
	cmpb	$45, %al	#, D.9279
	je	.L320	#,
	movl	-24(%rbp), %eax	# idx, tmp366
	cltq
	leaq	0(,%rax,8), %rdx	#, D.9274
	movq	-40(%rbp), %rax	# aseq, tmp367
	addq	%rdx, %rax	# D.9274, D.9282
	movq	(%rax), %rdx	# *_101, D.9277
	movq	-56(%rbp), %rax	# mtr, tmp368
	movq	24(%rax), %rax	# mtr_20(D)->pos, D.9280
	movl	-12(%rbp), %ecx	# mpos, tmp369
	movslq	%ecx, %rcx	# tmp369, D.9274
	salq	$2, %rcx	#, D.9274
	addq	%rcx, %rax	# D.9274, D.9280
	movl	(%rax), %eax	# *_106, D.9276
	cltq
	subq	$1, %rax	#, D.9278
	addq	%rdx, %rax	# D.9277, D.9277
	movzbl	(%rax), %eax	# *_110, D.9279
	cmpb	$126, %al	#, D.9279
	jne	.L321	#,
.L320:
	.loc 1 1149 0 is_stmt 1
	movq	-56(%rbp), %rax	# mtr, tmp370
	movq	16(%rax), %rax	# mtr_20(D)->nodeidx, D.9280
	movl	-12(%rbp), %edx	# mpos, tmp371
	movslq	%edx, %rdx	# tmp371, D.9274
	salq	$2, %rdx	#, D.9274
	addq	%rdx, %rax	# D.9274, D.9280
	movl	(%rax), %edx	# *_125, D.9276
	movl	-24(%rbp), %eax	# idx, tmp372
	cltq
	leaq	0(,%rax,8), %rcx	#, D.9274
	movq	-8(%rbp), %rax	# tr, tmp373
	addq	%rcx, %rax	# D.9274, D.9275
	movq	(%rax), %rax	# *_129, D.9281
	movl	-16(%rbp), %esi	# tpos, tmp374
	movl	$0, %r8d	#,
	movl	%edx, %ecx	# D.9276,
	movl	$2, %edx	#,
	movq	%rax, %rdi	# D.9281,
	call	TraceSet	#
	jmp	.L322	#
.L321:
	.loc 1 1151 0
	movq	-56(%rbp), %rax	# mtr, tmp375
	movq	16(%rax), %rax	# mtr_20(D)->nodeidx, D.9280
	movl	-12(%rbp), %edx	# mpos, tmp376
	movslq	%edx, %rdx	# tmp376, D.9274
	salq	$2, %rdx	#, D.9274
	addq	%rdx, %rax	# D.9274, D.9280
	movl	(%rax), %edx	# *_115, D.9276
	movl	-24(%rbp), %eax	# idx, tmp377
	cltq
	leaq	0(,%rax,8), %rcx	#, D.9274
	movq	-8(%rbp), %rax	# tr, tmp378
	addq	%rcx, %rax	# D.9274, D.9275
	movq	(%rax), %rax	# *_119, D.9281
	movl	-20(%rbp), %ecx	# i, tmp379
	movl	-16(%rbp), %esi	# tpos, tmp380
	movl	%ecx, %r8d	# tmp379,
	movl	%edx, %ecx	# D.9276,
	movl	$1, %edx	#,
	movq	%rax, %rdi	# D.9281,
	call	TraceSet	#
	.loc 1 1152 0
	addl	$1, -20(%rbp)	#, i
.L322:
	.loc 1 1154 0
	addl	$1, -16(%rbp)	#, tpos
	.loc 1 1155 0
	jmp	.L313	#
.L318:
	.loc 1 1158 0
	movl	-24(%rbp), %eax	# idx, tmp381
	cltq
	leaq	0(,%rax,8), %rdx	#, D.9274
	movq	-40(%rbp), %rax	# aseq, tmp382
	addq	%rdx, %rax	# D.9274, D.9282
	movq	(%rax), %rdx	# *_134, D.9277
	movq	-56(%rbp), %rax	# mtr, tmp383
	movq	24(%rax), %rax	# mtr_20(D)->pos, D.9280
	movl	-12(%rbp), %ecx	# mpos, tmp384
	movslq	%ecx, %rcx	# tmp384, D.9274
	salq	$2, %rcx	#, D.9274
	addq	%rcx, %rax	# D.9274, D.9280
	movl	(%rax), %eax	# *_139, D.9276
	cltq
	subq	$1, %rax	#, D.9278
	addq	%rdx, %rax	# D.9277, D.9277
	movzbl	(%rax), %eax	# *_143, D.9279
	cmpb	$32, %al	#, D.9279
	je	.L323	#,
	.loc 1 1158 0 is_stmt 0 discriminator 1
	movl	-24(%rbp), %eax	# idx, tmp385
	cltq
	leaq	0(,%rax,8), %rdx	#, D.9274
	movq	-40(%rbp), %rax	# aseq, tmp386
	addq	%rdx, %rax	# D.9274, D.9282
	movq	(%rax), %rdx	# *_147, D.9277
	movq	-56(%rbp), %rax	# mtr, tmp387
	movq	24(%rax), %rax	# mtr_20(D)->pos, D.9280
	movl	-12(%rbp), %ecx	# mpos, tmp388
	movslq	%ecx, %rcx	# tmp388, D.9274
	salq	$2, %rcx	#, D.9274
	addq	%rcx, %rax	# D.9274, D.9280
	movl	(%rax), %eax	# *_152, D.9276
	cltq
	subq	$1, %rax	#, D.9278
	addq	%rdx, %rax	# D.9277, D.9277
	movzbl	(%rax), %eax	# *_156, D.9279
	cmpb	$46, %al	#, D.9279
	je	.L323	#,
	movl	-24(%rbp), %eax	# idx, tmp389
	cltq
	leaq	0(,%rax,8), %rdx	#, D.9274
	movq	-40(%rbp), %rax	# aseq, tmp390
	addq	%rdx, %rax	# D.9274, D.9282
	movq	(%rax), %rdx	# *_160, D.9277
	movq	-56(%rbp), %rax	# mtr, tmp391
	movq	24(%rax), %rax	# mtr_20(D)->pos, D.9280
	movl	-12(%rbp), %ecx	# mpos, tmp392
	movslq	%ecx, %rcx	# tmp392, D.9274
	salq	$2, %rcx	#, D.9274
	addq	%rcx, %rax	# D.9274, D.9280
	movl	(%rax), %eax	# *_165, D.9276
	cltq
	subq	$1, %rax	#, D.9278
	addq	%rdx, %rax	# D.9277, D.9277
	movzbl	(%rax), %eax	# *_169, D.9279
	cmpb	$95, %al	#, D.9279
	je	.L323	#,
	movl	-24(%rbp), %eax	# idx, tmp393
	cltq
	leaq	0(,%rax,8), %rdx	#, D.9274
	movq	-40(%rbp), %rax	# aseq, tmp394
	addq	%rdx, %rax	# D.9274, D.9282
	movq	(%rax), %rdx	# *_173, D.9277
	movq	-56(%rbp), %rax	# mtr, tmp395
	movq	24(%rax), %rax	# mtr_20(D)->pos, D.9280
	movl	-12(%rbp), %ecx	# mpos, tmp396
	movslq	%ecx, %rcx	# tmp396, D.9274
	salq	$2, %rcx	#, D.9274
	addq	%rcx, %rax	# D.9274, D.9280
	movl	(%rax), %eax	# *_178, D.9276
	cltq
	subq	$1, %rax	#, D.9278
	addq	%rdx, %rax	# D.9277, D.9277
	movzbl	(%rax), %eax	# *_182, D.9279
	cmpb	$45, %al	#, D.9279
	je	.L323	#,
	movl	-24(%rbp), %eax	# idx, tmp397
	cltq
	leaq	0(,%rax,8), %rdx	#, D.9274
	movq	-40(%rbp), %rax	# aseq, tmp398
	addq	%rdx, %rax	# D.9274, D.9282
	movq	(%rax), %rdx	# *_186, D.9277
	movq	-56(%rbp), %rax	# mtr, tmp399
	movq	24(%rax), %rax	# mtr_20(D)->pos, D.9280
	movl	-12(%rbp), %ecx	# mpos, tmp400
	movslq	%ecx, %rcx	# tmp400, D.9274
	salq	$2, %rcx	#, D.9274
	addq	%rcx, %rax	# D.9274, D.9280
	movl	(%rax), %eax	# *_191, D.9276
	cltq
	subq	$1, %rax	#, D.9278
	addq	%rdx, %rax	# D.9277, D.9277
	movzbl	(%rax), %eax	# *_195, D.9279
	cmpb	$126, %al	#, D.9279
	je	.L323	#,
	.loc 1 1159 0 is_stmt 1
	movq	-56(%rbp), %rax	# mtr, tmp401
	movq	16(%rax), %rax	# mtr_20(D)->nodeidx, D.9280
	movl	-12(%rbp), %edx	# mpos, tmp402
	movslq	%edx, %rdx	# tmp402, D.9274
	salq	$2, %rdx	#, D.9274
	addq	%rdx, %rax	# D.9274, D.9280
	movl	(%rax), %edx	# *_200, D.9276
	movl	-24(%rbp), %eax	# idx, tmp403
	cltq
	leaq	0(,%rax,8), %rcx	#, D.9274
	movq	-8(%rbp), %rax	# tr, tmp404
	addq	%rcx, %rax	# D.9274, D.9275
	movq	(%rax), %rax	# *_204, D.9281
	movl	-20(%rbp), %ecx	# i, tmp405
	movl	-16(%rbp), %esi	# tpos, tmp406
	movl	%ecx, %r8d	# tmp405,
	movl	%edx, %ecx	# D.9276,
	movl	$3, %edx	#,
	movq	%rax, %rdi	# D.9281,
	call	TraceSet	#
	.loc 1 1160 0
	addl	$1, -20(%rbp)	#, i
	.loc 1 1161 0
	addl	$1, -16(%rbp)	#, tpos
	.loc 1 1163 0
	jmp	.L313	#
.L323:
	jmp	.L313	#
.L319:
	.loc 1 1168 0
	movq	-56(%rbp), %rax	# mtr, tmp407
	movq	24(%rax), %rax	# mtr_20(D)->pos, D.9280
	movl	-12(%rbp), %edx	# mpos, tmp408
	movslq	%edx, %rdx	# tmp408, D.9274
	salq	$2, %rdx	#, D.9274
	addq	%rdx, %rax	# D.9274, D.9280
	movl	(%rax), %eax	# *_211, D.9276
	testl	%eax, %eax	# D.9276
	jne	.L324	#,
	.loc 1 1169 0
	movq	-56(%rbp), %rax	# mtr, tmp409
	movq	8(%rax), %rdx	# mtr_20(D)->statetype, D.9277
	movl	-12(%rbp), %eax	# mpos, tmp410
	cltq
	addq	%rdx, %rax	# D.9277, D.9277
	movzbl	(%rax), %eax	# *_215, D.9279
	movsbl	%al, %edx	# D.9279, D.9276
	movl	-24(%rbp), %eax	# idx, tmp411
	cltq
	leaq	0(,%rax,8), %rcx	#, D.9274
	movq	-8(%rbp), %rax	# tr, tmp412
	addq	%rcx, %rax	# D.9274, D.9275
	movq	(%rax), %rax	# *_220, D.9281
	movl	-16(%rbp), %esi	# tpos, tmp413
	movl	$0, %r8d	#,
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# D.9281,
	call	TraceSet	#
	.loc 1 1170 0
	addl	$1, -16(%rbp)	#, tpos
	jmp	.L325	#
.L324:
	.loc 1 1171 0
	movl	-24(%rbp), %eax	# idx, tmp414
	cltq
	leaq	0(,%rax,8), %rdx	#, D.9274
	movq	-40(%rbp), %rax	# aseq, tmp415
	addq	%rdx, %rax	# D.9274, D.9282
	movq	(%rax), %rdx	# *_225, D.9277
	movq	-56(%rbp), %rax	# mtr, tmp416
	movq	24(%rax), %rax	# mtr_20(D)->pos, D.9280
	movl	-12(%rbp), %ecx	# mpos, tmp417
	movslq	%ecx, %rcx	# tmp417, D.9274
	salq	$2, %rcx	#, D.9274
	addq	%rcx, %rax	# D.9274, D.9280
	movl	(%rax), %eax	# *_230, D.9276
	cltq
	subq	$1, %rax	#, D.9278
	addq	%rdx, %rax	# D.9277, D.9277
	movzbl	(%rax), %eax	# *_234, D.9279
	cmpb	$32, %al	#, D.9279
	je	.L325	#,
	.loc 1 1171 0 is_stmt 0 discriminator 1
	movl	-24(%rbp), %eax	# idx, tmp418
	cltq
	leaq	0(,%rax,8), %rdx	#, D.9274
	movq	-40(%rbp), %rax	# aseq, tmp419
	addq	%rdx, %rax	# D.9274, D.9282
	movq	(%rax), %rdx	# *_238, D.9277
	movq	-56(%rbp), %rax	# mtr, tmp420
	movq	24(%rax), %rax	# mtr_20(D)->pos, D.9280
	movl	-12(%rbp), %ecx	# mpos, tmp421
	movslq	%ecx, %rcx	# tmp421, D.9274
	salq	$2, %rcx	#, D.9274
	addq	%rcx, %rax	# D.9274, D.9280
	movl	(%rax), %eax	# *_243, D.9276
	cltq
	subq	$1, %rax	#, D.9278
	addq	%rdx, %rax	# D.9277, D.9277
	movzbl	(%rax), %eax	# *_247, D.9279
	cmpb	$46, %al	#, D.9279
	je	.L325	#,
	movl	-24(%rbp), %eax	# idx, tmp422
	cltq
	leaq	0(,%rax,8), %rdx	#, D.9274
	movq	-40(%rbp), %rax	# aseq, tmp423
	addq	%rdx, %rax	# D.9274, D.9282
	movq	(%rax), %rdx	# *_251, D.9277
	movq	-56(%rbp), %rax	# mtr, tmp424
	movq	24(%rax), %rax	# mtr_20(D)->pos, D.9280
	movl	-12(%rbp), %ecx	# mpos, tmp425
	movslq	%ecx, %rcx	# tmp425, D.9274
	salq	$2, %rcx	#, D.9274
	addq	%rcx, %rax	# D.9274, D.9280
	movl	(%rax), %eax	# *_256, D.9276
	cltq
	subq	$1, %rax	#, D.9278
	addq	%rdx, %rax	# D.9277, D.9277
	movzbl	(%rax), %eax	# *_260, D.9279
	cmpb	$95, %al	#, D.9279
	je	.L325	#,
	movl	-24(%rbp), %eax	# idx, tmp426
	cltq
	leaq	0(,%rax,8), %rdx	#, D.9274
	movq	-40(%rbp), %rax	# aseq, tmp427
	addq	%rdx, %rax	# D.9274, D.9282
	movq	(%rax), %rdx	# *_264, D.9277
	movq	-56(%rbp), %rax	# mtr, tmp428
	movq	24(%rax), %rax	# mtr_20(D)->pos, D.9280
	movl	-12(%rbp), %ecx	# mpos, tmp429
	movslq	%ecx, %rcx	# tmp429, D.9274
	salq	$2, %rcx	#, D.9274
	addq	%rcx, %rax	# D.9274, D.9280
	movl	(%rax), %eax	# *_269, D.9276
	cltq
	subq	$1, %rax	#, D.9278
	addq	%rdx, %rax	# D.9277, D.9277
	movzbl	(%rax), %eax	# *_273, D.9279
	cmpb	$45, %al	#, D.9279
	je	.L325	#,
	movl	-24(%rbp), %eax	# idx, tmp430
	cltq
	leaq	0(,%rax,8), %rdx	#, D.9274
	movq	-40(%rbp), %rax	# aseq, tmp431
	addq	%rdx, %rax	# D.9274, D.9282
	movq	(%rax), %rdx	# *_277, D.9277
	movq	-56(%rbp), %rax	# mtr, tmp432
	movq	24(%rax), %rax	# mtr_20(D)->pos, D.9280
	movl	-12(%rbp), %ecx	# mpos, tmp433
	movslq	%ecx, %rcx	# tmp433, D.9274
	salq	$2, %rcx	#, D.9274
	addq	%rcx, %rax	# D.9274, D.9280
	movl	(%rax), %eax	# *_282, D.9276
	cltq
	subq	$1, %rax	#, D.9278
	addq	%rdx, %rax	# D.9277, D.9277
	movzbl	(%rax), %eax	# *_286, D.9279
	cmpb	$126, %al	#, D.9279
	je	.L325	#,
	.loc 1 1172 0 is_stmt 1
	movq	-56(%rbp), %rax	# mtr, tmp434
	movq	8(%rax), %rdx	# mtr_20(D)->statetype, D.9277
	movl	-12(%rbp), %eax	# mpos, tmp435
	cltq
	addq	%rdx, %rax	# D.9277, D.9277
	movzbl	(%rax), %eax	# *_290, D.9279
	movsbl	%al, %edx	# D.9279, D.9276
	movl	-24(%rbp), %eax	# idx, tmp436
	cltq
	leaq	0(,%rax,8), %rcx	#, D.9274
	movq	-8(%rbp), %rax	# tr, tmp437
	addq	%rcx, %rax	# D.9274, D.9275
	movq	(%rax), %rax	# *_295, D.9281
	movl	-20(%rbp), %ecx	# i, tmp438
	movl	-16(%rbp), %esi	# tpos, tmp439
	movl	%ecx, %r8d	# tmp438,
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# D.9281,
	call	TraceSet	#
	.loc 1 1173 0
	addl	$1, -20(%rbp)	#, i
	.loc 1 1174 0
	addl	$1, -16(%rbp)	#, tpos
	.loc 1 1176 0
	jmp	.L313	#
.L325:
	jmp	.L313	#
.L314:
	.loc 1 1179 0
	movl	$.LC20, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
.L313:
	.loc 1 1134 0
	addl	$1, -12(%rbp)	#, mpos
.L312:
	.loc 1 1134 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# mtr, tmp440
	movl	(%rax), %eax	# mtr_20(D)->tlen, D.9276
	cmpl	-12(%rbp), %eax	# mpos, D.9276
	jg	.L326	#,
	.loc 1 1182 0 is_stmt 1
	movl	-24(%rbp), %eax	# idx, tmp441
	cltq
	leaq	0(,%rax,8), %rdx	#, D.9274
	movq	-8(%rbp), %rax	# tr, tmp442
	addq	%rdx, %rax	# D.9274, D.9275
	movq	(%rax), %rax	# *_302, D.9281
	movl	-16(%rbp), %edx	# tpos, tmp443
	movl	%edx, (%rax)	# tmp443, _303->tlen
	.loc 1 1128 0
	addl	$1, -24(%rbp)	#, idx
.L311:
	.loc 1 1128 0 is_stmt 0 discriminator 1
	movl	-24(%rbp), %eax	# idx, tmp444
	cmpl	-44(%rbp), %eax	# nseq, tmp444
	jl	.L327	#,
	.loc 1 1184 0 is_stmt 1
	movq	-64(%rbp), %rax	# ret_tr, tmp445
	movq	-8(%rbp), %rdx	# tr, tmp446
	movq	%rdx, (%rax)	# tmp446, *ret_tr_305(D)
	.loc 1 1185 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	ImposeMasterTrace, .-ImposeMasterTrace
	.type	rightjustify, @function
rightjustify:
.LFB19:
	.loc 1 1198 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# s, s
	movl	%esi, -28(%rbp)	# n, n
	.loc 1 1202 0
	movl	-28(%rbp), %eax	# n, tmp87
	subl	$1, %eax	#, tmp86
	movl	%eax, -8(%rbp)	# tmp86, npos
	.loc 1 1203 0
	movl	-28(%rbp), %eax	# n, tmp91
	subl	$1, %eax	#, tmp90
	movl	%eax, -4(%rbp)	# tmp90, opos
	.loc 1 1204 0
	jmp	.L329	#
.L332:
	.loc 1 1205 0
	movl	-4(%rbp), %eax	# opos, tmp92
	movslq	%eax, %rdx	# tmp92, D.9284
	movq	-24(%rbp), %rax	# s, tmp93
	addq	%rdx, %rax	# D.9284, D.9285
	movzbl	(%rax), %eax	# *_9, D.9286
	cmpb	$32, %al	#, D.9286
	je	.L330	#,
	.loc 1 1205 0 is_stmt 0 discriminator 2
	movl	-4(%rbp), %eax	# opos, tmp94
	movslq	%eax, %rdx	# tmp94, D.9284
	movq	-24(%rbp), %rax	# s, tmp95
	addq	%rdx, %rax	# D.9284, D.9285
	movzbl	(%rax), %eax	# *_12, D.9286
	cmpb	$46, %al	#, D.9286
	je	.L330	#,
	.loc 1 1205 0 discriminator 1
	movl	-4(%rbp), %eax	# opos, tmp96
	movslq	%eax, %rdx	# tmp96, D.9284
	movq	-24(%rbp), %rax	# s, tmp97
	addq	%rdx, %rax	# D.9284, D.9285
	movzbl	(%rax), %eax	# *_15, D.9286
	cmpb	$95, %al	#, D.9286
	je	.L330	#,
	movl	-4(%rbp), %eax	# opos, tmp98
	movslq	%eax, %rdx	# tmp98, D.9284
	movq	-24(%rbp), %rax	# s, tmp99
	addq	%rdx, %rax	# D.9284, D.9285
	movzbl	(%rax), %eax	# *_18, D.9286
	cmpb	$45, %al	#, D.9286
	je	.L330	#,
	movl	-4(%rbp), %eax	# opos, tmp100
	movslq	%eax, %rdx	# tmp100, D.9284
	movq	-24(%rbp), %rax	# s, tmp101
	addq	%rdx, %rax	# D.9284, D.9285
	movzbl	(%rax), %eax	# *_21, D.9286
	cmpb	$126, %al	#, D.9286
	jne	.L331	#,
.L330:
	subl	$1, -4(%rbp)	#, opos
	jmp	.L329	#
.L331:
	.loc 1 1206 0 is_stmt 1
	movl	-8(%rbp), %eax	# npos, npos.15
	leal	-1(%rax), %edx	#, tmp102
	movl	%edx, -8(%rbp)	# tmp102, npos
	movslq	%eax, %rdx	# npos.15, D.9284
	movq	-24(%rbp), %rax	# s, tmp103
	leaq	(%rdx,%rax), %rcx	#, D.9285
	movl	-4(%rbp), %eax	# opos, opos.16
	leal	-1(%rax), %edx	#, tmp104
	movl	%edx, -4(%rbp)	# tmp104, opos
	movslq	%eax, %rdx	# opos.16, D.9284
	movq	-24(%rbp), %rax	# s, tmp105
	addq	%rdx, %rax	# D.9284, D.9285
	movzbl	(%rax), %eax	# *_30, D.9286
	movb	%al, (%rcx)	# D.9286, *_26
.L329:
	.loc 1 1204 0 discriminator 1
	cmpl	$0, -4(%rbp)	#, opos
	jns	.L332	#,
	.loc 1 1208 0
	jmp	.L333	#
.L334:
	.loc 1 1209 0
	movl	-8(%rbp), %eax	# npos, npos.17
	leal	-1(%rax), %edx	#, tmp106
	movl	%edx, -8(%rbp)	# tmp106, npos
	movslq	%eax, %rdx	# npos.17, D.9284
	movq	-24(%rbp), %rax	# s, tmp107
	addq	%rdx, %rax	# D.9284, D.9285
	movb	$46, (%rax)	#, *_36
.L333:
	.loc 1 1208 0 discriminator 1
	cmpl	$0, -8(%rbp)	#, npos
	jns	.L334	#,
	.loc 1 1210 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	rightjustify, .-rightjustify
	.section	.rodata
	.align 4
.LC8:
	.long	1065353216
	.align 4
.LC9:
	.long	1056964608
	.align 4
.LC10:
	.long	1063675494
	.text
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/include/stdio.h"
	.file 5 "/usr/include/libio.h"
	.file 6 "squid.h"
	.file 7 "gki.h"
	.file 8 "msa.h"
	.file 9 "structs.h"
	.file 10 "/usr/include/ctype.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x137c
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF184
	.byte	0x1
	.long	.LASF185
	.long	.LASF186
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
	.long	.LASF187
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
	.uleb128 0xd
	.byte	0x4
	.byte	0xa
	.byte	0x30
	.long	0x2ee
	.uleb128 0xe
	.long	.LASF47
	.sleb128 256
	.uleb128 0xe
	.long	.LASF48
	.sleb128 512
	.uleb128 0xe
	.long	.LASF49
	.sleb128 1024
	.uleb128 0xe
	.long	.LASF50
	.sleb128 2048
	.uleb128 0xe
	.long	.LASF51
	.sleb128 4096
	.uleb128 0xe
	.long	.LASF52
	.sleb128 8192
	.uleb128 0xe
	.long	.LASF53
	.sleb128 16384
	.uleb128 0xe
	.long	.LASF54
	.sleb128 32768
	.uleb128 0xe
	.long	.LASF55
	.sleb128 1
	.uleb128 0xe
	.long	.LASF56
	.sleb128 2
	.uleb128 0xe
	.long	.LASF57
	.sleb128 4
	.uleb128 0xe
	.long	.LASF58
	.sleb128 8
	.byte	0
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.long	.LASF59
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.long	.LASF60
	.uleb128 0x6
	.byte	0x8
	.long	0x62
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF61
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF62
	.uleb128 0xf
	.long	.LASF63
	.value	0x168
	.byte	0x6
	.byte	0x54
	.long	0x3b2
	.uleb128 0x8
	.long	.LASF64
	.byte	0x6
	.byte	0x55
	.long	0x62
	.byte	0
	.uleb128 0x8
	.long	.LASF65
	.byte	0x6
	.byte	0x56
	.long	0x3b2
	.byte	0x4
	.uleb128 0x10
	.string	"id"
	.byte	0x6
	.byte	0x57
	.long	0x3b2
	.byte	0x44
	.uleb128 0x10
	.string	"acc"
	.byte	0x6
	.byte	0x58
	.long	0x3b2
	.byte	0x84
	.uleb128 0x8
	.long	.LASF66
	.byte	0x6
	.byte	0x59
	.long	0x3c2
	.byte	0xc4
	.uleb128 0x11
	.string	"len"
	.byte	0x6
	.byte	0x5a
	.long	0x62
	.value	0x144
	.uleb128 0x12
	.long	.LASF67
	.byte	0x6
	.byte	0x5b
	.long	0x62
	.value	0x148
	.uleb128 0x12
	.long	.LASF68
	.byte	0x6
	.byte	0x5c
	.long	0x62
	.value	0x14c
	.uleb128 0x12
	.long	.LASF69
	.byte	0x6
	.byte	0x5d
	.long	0x62
	.value	0x150
	.uleb128 0x12
	.long	.LASF70
	.byte	0x6
	.byte	0x5e
	.long	0x62
	.value	0x154
	.uleb128 0x11
	.string	"ss"
	.byte	0x6
	.byte	0x5f
	.long	0x8f
	.value	0x158
	.uleb128 0x11
	.string	"sa"
	.byte	0x6
	.byte	0x60
	.long	0x8f
	.value	0x160
	.byte	0
	.uleb128 0xb
	.long	0x95
	.long	0x3c2
	.uleb128 0xc
	.long	0x86
	.byte	0x3f
	.byte	0
	.uleb128 0xb
	.long	0x95
	.long	0x3d2
	.uleb128 0xc
	.long	0x86
	.byte	0x7f
	.byte	0
	.uleb128 0x2
	.long	.LASF71
	.byte	0x6
	.byte	0x62
	.long	0x310
	.uleb128 0x7
	.long	.LASF72
	.byte	0x18
	.byte	0x7
	.byte	0x1a
	.long	0x40e
	.uleb128 0x10
	.string	"key"
	.byte	0x7
	.byte	0x1b
	.long	0x8f
	.byte	0
	.uleb128 0x10
	.string	"idx"
	.byte	0x7
	.byte	0x1c
	.long	0x62
	.byte	0x8
	.uleb128 0x10
	.string	"nxt"
	.byte	0x7
	.byte	0x1d
	.long	0x40e
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x3dd
	.uleb128 0x13
	.byte	0x18
	.byte	0x7
	.byte	0x24
	.long	0x44d
	.uleb128 0x8
	.long	.LASF73
	.byte	0x7
	.byte	0x25
	.long	0x44d
	.byte	0
	.uleb128 0x8
	.long	.LASF74
	.byte	0x7
	.byte	0x27
	.long	0x62
	.byte	0x8
	.uleb128 0x8
	.long	.LASF75
	.byte	0x7
	.byte	0x28
	.long	0x62
	.byte	0xc
	.uleb128 0x8
	.long	.LASF76
	.byte	0x7
	.byte	0x29
	.long	0x62
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x40e
	.uleb128 0x14
	.string	"GKI"
	.byte	0x7
	.byte	0x2a
	.long	0x414
	.uleb128 0x6
	.byte	0x8
	.long	0x9c
	.uleb128 0x6
	.byte	0x8
	.long	0x8f
	.uleb128 0x6
	.byte	0x8
	.long	0x2ee
	.uleb128 0xf
	.long	.LASF77
	.value	0x168
	.byte	0x8
	.byte	0x70
	.long	0x6ac
	.uleb128 0x8
	.long	.LASF78
	.byte	0x8
	.byte	0x73
	.long	0x464
	.byte	0
	.uleb128 0x8
	.long	.LASF79
	.byte	0x8
	.byte	0x74
	.long	0x464
	.byte	0x8
	.uleb128 0x10
	.string	"wgt"
	.byte	0x8
	.byte	0x75
	.long	0x46a
	.byte	0x10
	.uleb128 0x8
	.long	.LASF80
	.byte	0x8
	.byte	0x76
	.long	0x62
	.byte	0x18
	.uleb128 0x8
	.long	.LASF81
	.byte	0x8
	.byte	0x77
	.long	0x62
	.byte	0x1c
	.uleb128 0x8
	.long	.LASF64
	.byte	0x8
	.byte	0x7b
	.long	0x62
	.byte	0x20
	.uleb128 0x8
	.long	.LASF70
	.byte	0x8
	.byte	0x7c
	.long	0x62
	.byte	0x24
	.uleb128 0x8
	.long	.LASF65
	.byte	0x8
	.byte	0x7d
	.long	0x8f
	.byte	0x28
	.uleb128 0x8
	.long	.LASF66
	.byte	0x8
	.byte	0x7e
	.long	0x8f
	.byte	0x30
	.uleb128 0x10
	.string	"acc"
	.byte	0x8
	.byte	0x7f
	.long	0x8f
	.byte	0x38
	.uleb128 0x10
	.string	"au"
	.byte	0x8
	.byte	0x80
	.long	0x8f
	.byte	0x40
	.uleb128 0x8
	.long	.LASF82
	.byte	0x8
	.byte	0x81
	.long	0x8f
	.byte	0x48
	.uleb128 0x8
	.long	.LASF83
	.byte	0x8
	.byte	0x82
	.long	0x8f
	.byte	0x50
	.uleb128 0x10
	.string	"rf"
	.byte	0x8
	.byte	0x83
	.long	0x8f
	.byte	0x58
	.uleb128 0x8
	.long	.LASF84
	.byte	0x8
	.byte	0x84
	.long	0x464
	.byte	0x60
	.uleb128 0x8
	.long	.LASF85
	.byte	0x8
	.byte	0x85
	.long	0x464
	.byte	0x68
	.uleb128 0x10
	.string	"ss"
	.byte	0x8
	.byte	0x86
	.long	0x464
	.byte	0x70
	.uleb128 0x10
	.string	"sa"
	.byte	0x8
	.byte	0x87
	.long	0x464
	.byte	0x78
	.uleb128 0x8
	.long	.LASF86
	.byte	0x8
	.byte	0x88
	.long	0x6ac
	.byte	0x80
	.uleb128 0x8
	.long	.LASF87
	.byte	0x8
	.byte	0x89
	.long	0x6bc
	.byte	0x98
	.uleb128 0x8
	.long	.LASF88
	.byte	0x8
	.byte	0x90
	.long	0x464
	.byte	0xb0
	.uleb128 0x8
	.long	.LASF89
	.byte	0x8
	.byte	0x91
	.long	0x62
	.byte	0xb8
	.uleb128 0x8
	.long	.LASF90
	.byte	0x8
	.byte	0x92
	.long	0x62
	.byte	0xbc
	.uleb128 0x8
	.long	.LASF91
	.byte	0x8
	.byte	0x94
	.long	0x464
	.byte	0xc0
	.uleb128 0x10
	.string	"gf"
	.byte	0x8
	.byte	0x95
	.long	0x464
	.byte	0xc8
	.uleb128 0x10
	.string	"ngf"
	.byte	0x8
	.byte	0x96
	.long	0x62
	.byte	0xd0
	.uleb128 0x8
	.long	.LASF92
	.byte	0x8
	.byte	0x97
	.long	0x62
	.byte	0xd4
	.uleb128 0x8
	.long	.LASF93
	.byte	0x8
	.byte	0x99
	.long	0x464
	.byte	0xd8
	.uleb128 0x10
	.string	"gs"
	.byte	0x8
	.byte	0x9a
	.long	0x6cc
	.byte	0xe0
	.uleb128 0x8
	.long	.LASF94
	.byte	0x8
	.byte	0x9b
	.long	0x6d2
	.byte	0xe8
	.uleb128 0x10
	.string	"ngs"
	.byte	0x8
	.byte	0x9c
	.long	0x62
	.byte	0xf0
	.uleb128 0x8
	.long	.LASF95
	.byte	0x8
	.byte	0x9e
	.long	0x464
	.byte	0xf8
	.uleb128 0x11
	.string	"gc"
	.byte	0x8
	.byte	0x9f
	.long	0x464
	.value	0x100
	.uleb128 0x12
	.long	.LASF96
	.byte	0x8
	.byte	0xa0
	.long	0x6d2
	.value	0x108
	.uleb128 0x11
	.string	"ngc"
	.byte	0x8
	.byte	0xa1
	.long	0x62
	.value	0x110
	.uleb128 0x12
	.long	.LASF97
	.byte	0x8
	.byte	0xa3
	.long	0x464
	.value	0x118
	.uleb128 0x11
	.string	"gr"
	.byte	0x8
	.byte	0xa4
	.long	0x6cc
	.value	0x120
	.uleb128 0x12
	.long	.LASF98
	.byte	0x8
	.byte	0xa5
	.long	0x6d2
	.value	0x128
	.uleb128 0x11
	.string	"ngr"
	.byte	0x8
	.byte	0xa6
	.long	0x62
	.value	0x130
	.uleb128 0x12
	.long	.LASF99
	.byte	0x8
	.byte	0xaa
	.long	0x6d2
	.value	0x138
	.uleb128 0x12
	.long	.LASF100
	.byte	0x8
	.byte	0xab
	.long	0x62
	.value	0x140
	.uleb128 0x12
	.long	.LASF101
	.byte	0x8
	.byte	0xac
	.long	0x62
	.value	0x144
	.uleb128 0x12
	.long	.LASF102
	.byte	0x8
	.byte	0xad
	.long	0x2fc
	.value	0x148
	.uleb128 0x12
	.long	.LASF103
	.byte	0x8
	.byte	0xae
	.long	0x2fc
	.value	0x150
	.uleb128 0x12
	.long	.LASF104
	.byte	0x8
	.byte	0xaf
	.long	0x2fc
	.value	0x158
	.uleb128 0x12
	.long	.LASF105
	.byte	0x8
	.byte	0xb0
	.long	0x62
	.value	0x160
	.byte	0
	.uleb128 0xb
	.long	0x2ee
	.long	0x6bc
	.uleb128 0xc
	.long	0x86
	.byte	0x5
	.byte	0
	.uleb128 0xb
	.long	0x62
	.long	0x6cc
	.uleb128 0xc
	.long	0x86
	.byte	0x5
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x464
	.uleb128 0x6
	.byte	0x8
	.long	0x453
	.uleb128 0x14
	.string	"MSA"
	.byte	0x8
	.byte	0xb1
	.long	0x470
	.uleb128 0x6
	.byte	0x8
	.long	0x3d2
	.uleb128 0x6
	.byte	0x8
	.long	0x6d8
	.uleb128 0xf
	.long	.LASF106
	.value	0x1d0
	.byte	0x9
	.byte	0x65
	.long	0x946
	.uleb128 0x8
	.long	.LASF65
	.byte	0x9
	.byte	0x71
	.long	0x8f
	.byte	0
	.uleb128 0x10
	.string	"acc"
	.byte	0x9
	.byte	0x72
	.long	0x8f
	.byte	0x8
	.uleb128 0x8
	.long	.LASF66
	.byte	0x9
	.byte	0x73
	.long	0x8f
	.byte	0x10
	.uleb128 0x10
	.string	"rf"
	.byte	0x9
	.byte	0x74
	.long	0x8f
	.byte	0x18
	.uleb128 0x10
	.string	"cs"
	.byte	0x9
	.byte	0x75
	.long	0x8f
	.byte	0x20
	.uleb128 0x10
	.string	"ca"
	.byte	0x9
	.byte	0x76
	.long	0x8f
	.byte	0x28
	.uleb128 0x8
	.long	.LASF107
	.byte	0x9
	.byte	0x77
	.long	0x8f
	.byte	0x30
	.uleb128 0x8
	.long	.LASF81
	.byte	0x9
	.byte	0x78
	.long	0x62
	.byte	0x38
	.uleb128 0x8
	.long	.LASF108
	.byte	0x9
	.byte	0x79
	.long	0x8f
	.byte	0x40
	.uleb128 0x10
	.string	"map"
	.byte	0x9
	.byte	0x7a
	.long	0x2fc
	.byte	0x48
	.uleb128 0x8
	.long	.LASF109
	.byte	0x9
	.byte	0x7b
	.long	0x62
	.byte	0x50
	.uleb128 0x8
	.long	.LASF110
	.byte	0x9
	.byte	0x86
	.long	0x2fc
	.byte	0x58
	.uleb128 0x8
	.long	.LASF111
	.byte	0x9
	.byte	0x87
	.long	0x2fc
	.byte	0x60
	.uleb128 0x8
	.long	.LASF112
	.byte	0x9
	.byte	0x88
	.long	0x2fc
	.byte	0x68
	.uleb128 0x10
	.string	"ga1"
	.byte	0x9
	.byte	0x90
	.long	0x2ee
	.byte	0x70
	.uleb128 0x10
	.string	"ga2"
	.byte	0x9
	.byte	0x90
	.long	0x2ee
	.byte	0x74
	.uleb128 0x10
	.string	"tc1"
	.byte	0x9
	.byte	0x91
	.long	0x2ee
	.byte	0x78
	.uleb128 0x10
	.string	"tc2"
	.byte	0x9
	.byte	0x91
	.long	0x2ee
	.byte	0x7c
	.uleb128 0x10
	.string	"nc1"
	.byte	0x9
	.byte	0x92
	.long	0x2ee
	.byte	0x80
	.uleb128 0x10
	.string	"nc2"
	.byte	0x9
	.byte	0x92
	.long	0x2ee
	.byte	0x84
	.uleb128 0x10
	.string	"M"
	.byte	0x9
	.byte	0x9b
	.long	0x62
	.byte	0x88
	.uleb128 0x10
	.string	"t"
	.byte	0x9
	.byte	0x9c
	.long	0x946
	.byte	0x90
	.uleb128 0x10
	.string	"mat"
	.byte	0x9
	.byte	0x9d
	.long	0x946
	.byte	0x98
	.uleb128 0x10
	.string	"ins"
	.byte	0x9
	.byte	0x9e
	.long	0x946
	.byte	0xa0
	.uleb128 0x8
	.long	.LASF113
	.byte	0x9
	.byte	0x9f
	.long	0x2ee
	.byte	0xa8
	.uleb128 0x10
	.string	"xt"
	.byte	0x9
	.byte	0xa8
	.long	0x94c
	.byte	0xac
	.uleb128 0x8
	.long	.LASF114
	.byte	0x9
	.byte	0xa9
	.long	0x46a
	.byte	0xd0
	.uleb128 0x10
	.string	"end"
	.byte	0x9
	.byte	0xaa
	.long	0x46a
	.byte	0xd8
	.uleb128 0x8
	.long	.LASF115
	.byte	0x9
	.byte	0xae
	.long	0x962
	.byte	0xe0
	.uleb128 0x11
	.string	"p1"
	.byte	0x9
	.byte	0xaf
	.long	0x2ee
	.value	0x130
	.uleb128 0x11
	.string	"tsc"
	.byte	0x9
	.byte	0xc5
	.long	0x972
	.value	0x138
	.uleb128 0x11
	.string	"msc"
	.byte	0x9
	.byte	0xc6
	.long	0x972
	.value	0x140
	.uleb128 0x11
	.string	"isc"
	.byte	0x9
	.byte	0xc7
	.long	0x972
	.value	0x148
	.uleb128 0x11
	.string	"xsc"
	.byte	0x9
	.byte	0xc8
	.long	0x978
	.value	0x150
	.uleb128 0x11
	.string	"bsc"
	.byte	0x9
	.byte	0xc9
	.long	0x2fc
	.value	0x170
	.uleb128 0x11
	.string	"esc"
	.byte	0x9
	.byte	0xca
	.long	0x2fc
	.value	0x178
	.uleb128 0x12
	.long	.LASF116
	.byte	0x9
	.byte	0xcb
	.long	0x2fc
	.value	0x180
	.uleb128 0x12
	.long	.LASF117
	.byte	0x9
	.byte	0xcb
	.long	0x2fc
	.value	0x188
	.uleb128 0x12
	.long	.LASF118
	.byte	0x9
	.byte	0xcb
	.long	0x2fc
	.value	0x190
	.uleb128 0x12
	.long	.LASF119
	.byte	0x9
	.byte	0xcb
	.long	0x2fc
	.value	0x198
	.uleb128 0x12
	.long	.LASF120
	.byte	0x9
	.byte	0xcb
	.long	0x2fc
	.value	0x1a0
	.uleb128 0x12
	.long	.LASF121
	.byte	0x9
	.byte	0xd6
	.long	0x972
	.value	0x1a8
	.uleb128 0x12
	.long	.LASF122
	.byte	0x9
	.byte	0xd7
	.long	0x972
	.value	0x1b0
	.uleb128 0x12
	.long	.LASF123
	.byte	0x9
	.byte	0xd8
	.long	0x62
	.value	0x1b8
	.uleb128 0x12
	.long	.LASF124
	.byte	0x9
	.byte	0xd9
	.long	0x62
	.value	0x1bc
	.uleb128 0x11
	.string	"mu"
	.byte	0x9
	.byte	0xde
	.long	0x2ee
	.value	0x1c0
	.uleb128 0x12
	.long	.LASF125
	.byte	0x9
	.byte	0xdf
	.long	0x2ee
	.value	0x1c4
	.uleb128 0x12
	.long	.LASF64
	.byte	0x9
	.byte	0xe1
	.long	0x62
	.value	0x1c8
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x46a
	.uleb128 0xb
	.long	0x2ee
	.long	0x962
	.uleb128 0xc
	.long	0x86
	.byte	0x3
	.uleb128 0xc
	.long	0x86
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.long	0x2ee
	.long	0x972
	.uleb128 0xc
	.long	0x86
	.byte	0x13
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x2fc
	.uleb128 0xb
	.long	0x62
	.long	0x98e
	.uleb128 0xc
	.long	0x86
	.byte	0x3
	.uleb128 0xc
	.long	0x86
	.byte	0x1
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x6ef
	.uleb128 0x15
	.long	.LASF126
	.byte	0x20
	.byte	0x9
	.value	0x176
	.long	0x9d6
	.uleb128 0x9
	.long	.LASF127
	.byte	0x9
	.value	0x177
	.long	0x62
	.byte	0
	.uleb128 0x9
	.long	.LASF128
	.byte	0x9
	.value	0x178
	.long	0x8f
	.byte	0x8
	.uleb128 0x9
	.long	.LASF129
	.byte	0x9
	.value	0x179
	.long	0x2fc
	.byte	0x10
	.uleb128 0x16
	.string	"pos"
	.byte	0x9
	.value	0x17a
	.long	0x2fc
	.byte	0x18
	.byte	0
	.uleb128 0x15
	.long	.LASF130
	.byte	0x48
	.byte	0x9
	.value	0x1bf
	.long	0xa66
	.uleb128 0x9
	.long	.LASF131
	.byte	0x9
	.value	0x1c0
	.long	0x8f
	.byte	0
	.uleb128 0x9
	.long	.LASF132
	.byte	0x9
	.value	0x1c1
	.long	0x8f
	.byte	0x8
	.uleb128 0x9
	.long	.LASF133
	.byte	0x9
	.value	0x1c2
	.long	0x8f
	.byte	0x10
	.uleb128 0x9
	.long	.LASF134
	.byte	0x9
	.value	0x1c3
	.long	0x8f
	.byte	0x18
	.uleb128 0x9
	.long	.LASF78
	.byte	0x9
	.value	0x1c4
	.long	0x8f
	.byte	0x20
	.uleb128 0x16
	.string	"len"
	.byte	0x9
	.value	0x1c5
	.long	0x62
	.byte	0x28
	.uleb128 0x9
	.long	.LASF135
	.byte	0x9
	.value	0x1c6
	.long	0x8f
	.byte	0x30
	.uleb128 0x9
	.long	.LASF136
	.byte	0x9
	.value	0x1c7
	.long	0x8f
	.byte	0x38
	.uleb128 0x9
	.long	.LASF137
	.byte	0x9
	.value	0x1c8
	.long	0x62
	.byte	0x40
	.uleb128 0x9
	.long	.LASF138
	.byte	0x9
	.value	0x1c9
	.long	0x62
	.byte	0x44
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x9d6
	.uleb128 0x17
	.long	.LASF140
	.byte	0x1
	.byte	0x24
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0xab3
	.uleb128 0x18
	.long	.LASF127
	.byte	0x1
	.byte	0x24
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x18
	.long	.LASF139
	.byte	0x1
	.byte	0x24
	.long	0xab3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x19
	.string	"tr"
	.byte	0x1
	.byte	0x26
	.long	0xab9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xab9
	.uleb128 0x6
	.byte	0x8
	.long	0x994
	.uleb128 0x17
	.long	.LASF141
	.byte	0x1
	.byte	0x2f
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0xaf8
	.uleb128 0x1a
	.string	"tr"
	.byte	0x1
	.byte	0x2f
	.long	0xab9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x18
	.long	.LASF127
	.byte	0x1
	.byte	0x2f
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x17
	.long	.LASF142
	.byte	0x1
	.byte	0x36
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0xb23
	.uleb128 0x1a
	.string	"tr"
	.byte	0x1
	.byte	0x36
	.long	0xab9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1b
	.long	.LASF143
	.byte	0x1
	.byte	0x4f
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0xb86
	.uleb128 0x1a
	.string	"tr"
	.byte	0x1
	.byte	0x4f
	.long	0xab9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x18
	.long	.LASF144
	.byte	0x1
	.byte	0x4f
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x18
	.long	.LASF70
	.byte	0x1
	.byte	0x4f
	.long	0x95
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1a
	.string	"idx"
	.byte	0x1
	.byte	0x4f
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1a
	.string	"pos"
	.byte	0x1
	.byte	0x4f
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x1c
	.long	.LASF149
	.byte	0x1
	.byte	0x69
	.long	0xab3
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0xbf5
	.uleb128 0x1a
	.string	"t1"
	.byte	0x1
	.byte	0x69
	.long	0xab3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1a
	.string	"n1"
	.byte	0x1
	.byte	0x69
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1a
	.string	"t2"
	.byte	0x1
	.byte	0x69
	.long	0xab3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1a
	.string	"n2"
	.byte	0x1
	.byte	0x69
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x19
	.string	"tr"
	.byte	0x1
	.byte	0x6b
	.long	0xab3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x19
	.string	"i"
	.byte	0x1
	.byte	0x6c
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x17
	.long	.LASF145
	.byte	0x1
	.byte	0x8c
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0xc66
	.uleb128 0x1a
	.string	"tr"
	.byte	0x1
	.byte	0x8c
	.long	0xab9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1d
	.long	.LASF128
	.byte	0x1
	.byte	0x8e
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1d
	.long	.LASF129
	.byte	0x1
	.byte	0x8f
	.long	0x2fc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x19
	.string	"pos"
	.byte	0x1
	.byte	0x90
	.long	0x2fc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1d
	.long	.LASF146
	.byte	0x1
	.byte	0x91
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1d
	.long	.LASF147
	.byte	0x1
	.byte	0x91
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x17
	.long	.LASF148
	.byte	0x1
	.byte	0xbb
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0xcd6
	.uleb128 0x1a
	.string	"hmm"
	.byte	0x1
	.byte	0xbb
	.long	0x98e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1a
	.string	"dsq"
	.byte	0x1
	.byte	0xbb
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1a
	.string	"wt"
	.byte	0x1
	.byte	0xbb
	.long	0x2ee
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x1a
	.string	"tr"
	.byte	0x1
	.byte	0xbb
	.long	0xab9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1d
	.long	.LASF144
	.byte	0x1
	.byte	0xbd
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x19
	.string	"i"
	.byte	0x1
	.byte	0xbe
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x1e
	.long	.LASF150
	.byte	0x1
	.value	0x139
	.long	0x2ee
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0xd52
	.uleb128 0x1f
	.string	"hmm"
	.byte	0x1
	.value	0x139
	.long	0x98e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1f
	.string	"dsq"
	.byte	0x1
	.value	0x139
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1f
	.string	"tr"
	.byte	0x1
	.value	0x139
	.long	0xab9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x20
	.long	.LASF151
	.byte	0x1
	.value	0x13b
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x20
	.long	.LASF144
	.byte	0x1
	.value	0x13c
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x21
	.string	"sym"
	.byte	0x1
	.value	0x13d
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1e
	.long	.LASF152
	.byte	0x1
	.value	0x17b
	.long	0x6e9
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0xe8c
	.uleb128 0x1f
	.string	"dsq"
	.byte	0x1
	.value	0x17b
	.long	0x464
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x22
	.long	.LASF153
	.byte	0x1
	.value	0x17b
	.long	0x6e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x1f
	.string	"wgt"
	.byte	0x1
	.value	0x17b
	.long	0x46a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x22
	.long	.LASF81
	.byte	0x1
	.value	0x17b
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x22
	.long	.LASF154
	.byte	0x1
	.value	0x17b
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x1f
	.string	"tr"
	.byte	0x1
	.value	0x17c
	.long	0xab3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x22
	.long	.LASF155
	.byte	0x1
	.value	0x17c
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x21
	.string	"msa"
	.byte	0x1
	.value	0x17e
	.long	0x6e9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x21
	.string	"idx"
	.byte	0x1
	.value	0x17f
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x20
	.long	.LASF80
	.byte	0x1
	.value	0x180
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x20
	.long	.LASF156
	.byte	0x1
	.value	0x181
	.long	0x2fc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x20
	.long	.LASF157
	.byte	0x1
	.value	0x182
	.long	0x2fc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x20
	.long	.LASF158
	.byte	0x1
	.value	0x183
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x20
	.long	.LASF159
	.byte	0x1
	.value	0x184
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x20
	.long	.LASF160
	.byte	0x1
	.value	0x185
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x20
	.long	.LASF144
	.byte	0x1
	.value	0x186
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x20
	.long	.LASF128
	.byte	0x1
	.value	0x187
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x21
	.string	"k"
	.byte	0x1
	.value	0x188
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.byte	0
	.uleb128 0x1e
	.long	.LASF161
	.byte	0x1
	.value	0x242
	.long	0x62
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0xef8
	.uleb128 0x1f
	.string	"hmm"
	.byte	0x1
	.value	0x242
	.long	0x98e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1f
	.string	"st1"
	.byte	0x1
	.value	0x242
	.long	0x95
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1f
	.string	"k1"
	.byte	0x1
	.value	0x242
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1f
	.string	"st2"
	.byte	0x1
	.value	0x243
	.long	0x95
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1f
	.string	"k2"
	.byte	0x1
	.value	0x243
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x1e
	.long	.LASF162
	.byte	0x1
	.value	0x29b
	.long	0xa66
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0xf96
	.uleb128 0x1f
	.string	"tr"
	.byte	0x1
	.value	0x29b
	.long	0xab9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1f
	.string	"hmm"
	.byte	0x1
	.value	0x29b
	.long	0x98e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1f
	.string	"dsq"
	.byte	0x1
	.value	0x29c
	.long	0x8f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x22
	.long	.LASF65
	.byte	0x1
	.value	0x29c
	.long	0x8f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x21
	.string	"ali"
	.byte	0x1
	.value	0x29e
	.long	0xa66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x20
	.long	.LASF144
	.byte	0x1
	.value	0x29f
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x20
	.long	.LASF163
	.byte	0x1
	.value	0x2a0
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x20
	.long	.LASF164
	.byte	0x1
	.value	0x2a1
	.long	0x2ee
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x23
	.long	.LASF165
	.byte	0x1
	.value	0x329
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x1022
	.uleb128 0x1f
	.string	"fp"
	.byte	0x1
	.value	0x329
	.long	0x45e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x1f
	.string	"ali"
	.byte	0x1
	.value	0x329
	.long	0xa66
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x20
	.long	.LASF166
	.byte	0x1
	.value	0x32b
	.long	0x1022
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x20
	.long	.LASF167
	.byte	0x1
	.value	0x32c
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x20
	.long	.LASF168
	.byte	0x1
	.value	0x32c
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x21
	.string	"pos"
	.byte	0x1
	.value	0x32d
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x21
	.string	"i"
	.byte	0x1
	.value	0x32e
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.byte	0
	.uleb128 0xb
	.long	0x95
	.long	0x1032
	.uleb128 0xc
	.long	0x86
	.byte	0x32
	.byte	0
	.uleb128 0x23
	.long	.LASF169
	.byte	0x1
	.value	0x36a
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0x10c5
	.uleb128 0x1f
	.string	"otr"
	.byte	0x1
	.value	0x36a
	.long	0xab9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x22
	.long	.LASF139
	.byte	0x1
	.value	0x36a
	.long	0x10c5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x22
	.long	.LASF170
	.byte	0x1
	.value	0x36a
	.long	0x2fc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x21
	.string	"tr"
	.byte	0x1
	.value	0x36c
	.long	0xab3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x21
	.string	"ntr"
	.byte	0x1
	.value	0x36d
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x21
	.string	"i"
	.byte	0x1
	.value	0x36e
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x21
	.string	"j"
	.byte	0x1
	.value	0x36e
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x21
	.string	"idx"
	.byte	0x1
	.value	0x36f
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xab3
	.uleb128 0x24
	.long	.LASF171
	.byte	0x1
	.value	0x3b3
	.long	0x62
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0x1118
	.uleb128 0x1f
	.string	"tr"
	.byte	0x1
	.value	0x3b3
	.long	0xab9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x21
	.string	"i"
	.byte	0x1
	.value	0x3b5
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x20
	.long	.LASF172
	.byte	0x1
	.value	0x3b6
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x23
	.long	.LASF173
	.byte	0x1
	.value	0x3ce
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0x11cb
	.uleb128 0x1f
	.string	"tr"
	.byte	0x1
	.value	0x3ce
	.long	0xab9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x22
	.long	.LASF174
	.byte	0x1
	.value	0x3ce
	.long	0x2fc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x22
	.long	.LASF175
	.byte	0x1
	.value	0x3ce
	.long	0x2fc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x22
	.long	.LASF176
	.byte	0x1
	.value	0x3cf
	.long	0x2fc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x22
	.long	.LASF177
	.byte	0x1
	.value	0x3cf
	.long	0x2fc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x21
	.string	"i1"
	.byte	0x1
	.value	0x3d1
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x21
	.string	"i2"
	.byte	0x1
	.value	0x3d1
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x21
	.string	"k1"
	.byte	0x1
	.value	0x3d1
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x21
	.string	"k2"
	.byte	0x1
	.value	0x3d1
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x20
	.long	.LASF144
	.byte	0x1
	.value	0x3d1
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1e
	.long	.LASF178
	.byte	0x1
	.value	0x40c
	.long	0xab9
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0x1252
	.uleb128 0x1f
	.string	"map"
	.byte	0x1
	.value	0x40c
	.long	0x2fc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1f
	.string	"M"
	.byte	0x1
	.value	0x40c
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x22
	.long	.LASF80
	.byte	0x1
	.value	0x40c
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x21
	.string	"tr"
	.byte	0x1
	.value	0x40e
	.long	0xab9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x20
	.long	.LASF144
	.byte	0x1
	.value	0x40f
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x20
	.long	.LASF159
	.byte	0x1
	.value	0x410
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x21
	.string	"k"
	.byte	0x1
	.value	0x411
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x23
	.long	.LASF179
	.byte	0x1
	.value	0x45e
	.quad	.LFB18
	.quad	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0x12f7
	.uleb128 0x22
	.long	.LASF78
	.byte	0x1
	.value	0x45e
	.long	0x464
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x22
	.long	.LASF81
	.byte	0x1
	.value	0x45e
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1f
	.string	"mtr"
	.byte	0x1
	.value	0x45e
	.long	0xab9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x22
	.long	.LASF139
	.byte	0x1
	.value	0x45e
	.long	0x10c5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x21
	.string	"tr"
	.byte	0x1
	.value	0x460
	.long	0xab3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x21
	.string	"idx"
	.byte	0x1
	.value	0x461
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x21
	.string	"i"
	.byte	0x1
	.value	0x462
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x20
	.long	.LASF144
	.byte	0x1
	.value	0x463
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x20
	.long	.LASF180
	.byte	0x1
	.value	0x464
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x25
	.long	.LASF188
	.byte	0x1
	.value	0x4ad
	.quad	.LFB19
	.quad	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0x134e
	.uleb128 0x1f
	.string	"s"
	.byte	0x1
	.value	0x4ad
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1f
	.string	"n"
	.byte	0x1
	.value	0x4ad
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x20
	.long	.LASF147
	.byte	0x1
	.value	0x4af
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x20
	.long	.LASF146
	.byte	0x1
	.value	0x4b0
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xb
	.long	0x95
	.long	0x135e
	.uleb128 0xc
	.long	0x86
	.byte	0x18
	.byte	0
	.uleb128 0x26
	.long	.LASF181
	.byte	0x9
	.byte	0x39
	.long	0x134e
	.uleb128 0x26
	.long	.LASF182
	.byte	0x9
	.byte	0x3a
	.long	0x62
	.uleb128 0x26
	.long	.LASF183
	.byte	0x9
	.byte	0x3b
	.long	0x62
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
	.uleb128 0xe
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
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
.LASF7:
	.string	"size_t"
.LASF10:
	.string	"sizetype"
.LASF67:
	.string	"start"
.LASF54:
	.string	"_ISgraph"
.LASF113:
	.string	"tbd1"
.LASF119:
	.string	"bsc_mem"
.LASF156:
	.string	"inserts"
.LASF24:
	.string	"_IO_save_end"
.LASF152:
	.string	"P7Traces2Alignment"
.LASF134:
	.string	"mline"
.LASF145:
	.string	"P7ReverseTrace"
.LASF17:
	.string	"_IO_write_base"
.LASF174:
	.string	"ret_i1"
.LASF175:
	.string	"ret_i2"
.LASF33:
	.string	"_lock"
.LASF131:
	.string	"rfline"
.LASF70:
	.string	"type"
.LASF22:
	.string	"_IO_save_base"
.LASF179:
	.string	"ImposeMasterTrace"
.LASF138:
	.string	"sqto"
.LASF26:
	.string	"_chain"
.LASF94:
	.string	"gs_idx"
.LASF127:
	.string	"tlen"
.LASF30:
	.string	"_cur_column"
.LASF72:
	.string	"gki_elem"
.LASF186:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/456.hmmer/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF105:
	.string	"lastidx"
.LASF150:
	.string	"P7TraceScore"
.LASF176:
	.string	"ret_k1"
.LASF177:
	.string	"ret_k2"
.LASF141:
	.string	"P7ReallocTrace"
.LASF6:
	.string	"long int"
.LASF130:
	.string	"fancyali_s"
.LASF43:
	.string	"_IO_marker"
.LASF81:
	.string	"nseq"
.LASF53:
	.string	"_ISprint"
.LASF120:
	.string	"esc_mem"
.LASF164:
	.string	"mthresh"
.LASF80:
	.string	"alen"
.LASF4:
	.string	"signed char"
.LASF42:
	.string	"_IO_FILE"
.LASF132:
	.string	"csline"
.LASF129:
	.string	"nodeidx"
.LASF93:
	.string	"gs_tag"
.LASF153:
	.string	"sqinfo"
.LASF1:
	.string	"unsigned char"
.LASF91:
	.string	"gf_tag"
.LASF183:
	.string	"Alphabet_size"
.LASF160:
	.string	"rpos"
.LASF151:
	.string	"score"
.LASF144:
	.string	"tpos"
.LASF154:
	.string	"mlen"
.LASF116:
	.string	"tsc_mem"
.LASF73:
	.string	"table"
.LASF69:
	.string	"olen"
.LASF98:
	.string	"gr_idx"
.LASF11:
	.string	"char"
.LASF171:
	.string	"TraceDomainNumber"
.LASF133:
	.string	"model"
.LASF125:
	.string	"lambda"
.LASF169:
	.string	"TraceDecompose"
.LASF187:
	.string	"_IO_lock_t"
.LASF102:
	.string	"sqlen"
.LASF92:
	.string	"alloc_ngf"
.LASF87:
	.string	"cutoff_is_set"
.LASF103:
	.string	"sslen"
.LASF170:
	.string	"ret_ntr"
.LASF64:
	.string	"flags"
.LASF85:
	.string	"sqdesc"
.LASF14:
	.string	"_IO_read_ptr"
.LASF46:
	.string	"_pos"
.LASF159:
	.string	"apos"
.LASF101:
	.string	"nseqlump"
.LASF25:
	.string	"_markers"
.LASF142:
	.string	"P7FreeTrace"
.LASF57:
	.string	"_ISpunct"
.LASF188:
	.string	"rightjustify"
.LASF110:
	.string	"tpri"
.LASF180:
	.string	"mpos"
.LASF128:
	.string	"statetype"
.LASF79:
	.string	"sqname"
.LASF166:
	.string	"buffer"
.LASF97:
	.string	"gr_tag"
.LASF34:
	.string	"_offset"
.LASF173:
	.string	"TraceSimpleBounds"
.LASF99:
	.string	"index"
.LASF146:
	.string	"opos"
.LASF0:
	.string	"long unsigned int"
.LASF28:
	.string	"_flags2"
.LASF136:
	.string	"target"
.LASF74:
	.string	"primelevel"
.LASF16:
	.string	"_IO_read_base"
.LASF75:
	.string	"nhash"
.LASF41:
	.string	"_unused2"
.LASF158:
	.string	"nins"
.LASF51:
	.string	"_ISxdigit"
.LASF139:
	.string	"ret_tr"
.LASF112:
	.string	"ipri"
.LASF29:
	.string	"_old_offset"
.LASF172:
	.string	"ndom"
.LASF178:
	.string	"MasterTraceFromMap"
.LASF111:
	.string	"mpri"
.LASF104:
	.string	"salen"
.LASF61:
	.string	"long long int"
.LASF63:
	.string	"seqinfo_s"
.LASF143:
	.string	"TraceSet"
.LASF47:
	.string	"_ISupper"
.LASF88:
	.string	"comment"
.LASF181:
	.string	"Alphabet"
.LASF60:
	.string	"double"
.LASF56:
	.string	"_IScntrl"
.LASF19:
	.string	"_IO_write_end"
.LASF106:
	.string	"plan7_s"
.LASF59:
	.string	"float"
.LASF185:
	.string	"trace.c"
.LASF68:
	.string	"stop"
.LASF82:
	.string	"ss_cons"
.LASF90:
	.string	"alloc_ncomment"
.LASF157:
	.string	"matmap"
.LASF20:
	.string	"_IO_buf_base"
.LASF3:
	.string	"unsigned int"
.LASF100:
	.string	"nseqalloc"
.LASF71:
	.string	"SQINFO"
.LASF168:
	.string	"endi"
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
.LASF45:
	.string	"_sbuf"
.LASF96:
	.string	"gc_idx"
.LASF89:
	.string	"ncomment"
.LASF13:
	.string	"_flags"
.LASF78:
	.string	"aseq"
.LASF40:
	.string	"_mode"
.LASF108:
	.string	"ctime"
.LASF184:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF135:
	.string	"query"
.LASF182:
	.string	"Alphabet_type"
.LASF12:
	.string	"FILE"
.LASF114:
	.string	"begin"
.LASF109:
	.string	"checksum"
.LASF140:
	.string	"P7AllocTrace"
.LASF49:
	.string	"_ISalpha"
.LASF62:
	.string	"long long unsigned int"
.LASF55:
	.string	"_ISblank"
.LASF8:
	.string	"__off_t"
.LASF95:
	.string	"gc_tag"
.LASF58:
	.string	"_ISalnum"
.LASF118:
	.string	"isc_mem"
.LASF52:
	.string	"_ISspace"
.LASF77:
	.string	"msa_struct"
.LASF161:
	.string	"TransitionScoreLookup"
.LASF23:
	.string	"_IO_backup_base"
.LASF32:
	.string	"_shortbuf"
.LASF66:
	.string	"desc"
.LASF148:
	.string	"P7TraceCount"
.LASF44:
	.string	"_next"
.LASF9:
	.string	"__off64_t"
.LASF126:
	.string	"p7trace_s"
.LASF165:
	.string	"PrintFancyAli"
.LASF21:
	.string	"_IO_buf_end"
.LASF65:
	.string	"name"
.LASF115:
	.string	"null"
.LASF48:
	.string	"_ISlower"
.LASF137:
	.string	"sqfrom"
.LASF5:
	.string	"short int"
.LASF155:
	.string	"matchonly"
.LASF31:
	.string	"_vtable_offset"
.LASF83:
	.string	"sa_cons"
.LASF15:
	.string	"_IO_read_end"
.LASF86:
	.string	"cutoff"
.LASF162:
	.string	"CreateFancyAli"
.LASF147:
	.string	"npos"
.LASF117:
	.string	"msc_mem"
.LASF27:
	.string	"_fileno"
.LASF50:
	.string	"_ISdigit"
.LASF2:
	.string	"short unsigned int"
.LASF18:
	.string	"_IO_write_ptr"
.LASF123:
	.string	"dna2"
.LASF124:
	.string	"dna4"
.LASF76:
	.string	"nkeys"
.LASF107:
	.string	"comlog"
.LASF149:
	.string	"MergeTraceArrays"
.LASF122:
	.string	"dnai"
.LASF121:
	.string	"dnam"
.LASF167:
	.string	"starti"
.LASF163:
	.string	"bestsym"
.LASF84:
	.string	"sqacc"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
