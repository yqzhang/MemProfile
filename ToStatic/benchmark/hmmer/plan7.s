	.file	"plan7.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 plan7.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.globl	AllocPlan7
	.type	AllocPlan7, @function
AllocPlan7:
.LFB2:
	.file 1 "plan7.c"
	.loc 1 42 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	%edi, -20(%rbp)	# M, M
	.loc 1 45 0
	call	AllocPlan7Shell	#
	movq	%rax, -8(%rbp)	# tmp61, hmm
	.loc 1 46 0
	movl	-20(%rbp), %edx	# M, tmp62
	movq	-8(%rbp), %rax	# hmm, tmp63
	movl	%edx, %esi	# tmp62,
	movq	%rax, %rdi	# tmp63,
	call	AllocPlan7Body	#
	.loc 1 47 0
	movq	-8(%rbp), %rax	# hmm, D.8333
	.loc 1 48 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	AllocPlan7, .-AllocPlan7
	.section	.rodata
.LC0:
	.string	"plan7.c"
	.text
	.globl	AllocPlan7Shell
	.type	AllocPlan7Shell, @function
AllocPlan7Shell:
.LFB3:
	.loc 1 51 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	.loc 1 54 0
	movl	$464, %edx	#,
	movl	$54, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_malloc	#
	movq	%rax, -8(%rbp)	# tmp70, hmm
	.loc 1 55 0
	movq	-8(%rbp), %rax	# hmm, tmp71
	movl	$0, 136(%rax)	#, hmm_1->M
	.loc 1 57 0
	movq	-8(%rbp), %rax	# hmm, tmp72
	movq	$0, (%rax)	#, hmm_1->name
	.loc 1 58 0
	movq	-8(%rbp), %rax	# hmm, tmp73
	movq	$0, 8(%rax)	#, hmm_1->acc
	.loc 1 59 0
	movq	-8(%rbp), %rax	# hmm, tmp74
	movq	$0, 16(%rax)	#, hmm_1->desc
	.loc 1 60 0
	movq	-8(%rbp), %rax	# hmm, tmp75
	movq	$0, 24(%rax)	#, hmm_1->rf
	.loc 1 61 0
	movq	-8(%rbp), %rax	# hmm, tmp76
	movq	$0, 32(%rax)	#, hmm_1->cs
	.loc 1 62 0
	movq	-8(%rbp), %rax	# hmm, tmp77
	movq	$0, 40(%rax)	#, hmm_1->ca
	.loc 1 63 0
	movq	-8(%rbp), %rax	# hmm, tmp78
	movq	$0, 48(%rax)	#, hmm_1->comlog
	.loc 1 64 0
	movq	-8(%rbp), %rax	# hmm, tmp79
	movl	$0, 56(%rax)	#, hmm_1->nseq
	.loc 1 65 0
	movq	-8(%rbp), %rax	# hmm, tmp80
	movq	$0, 64(%rax)	#, hmm_1->ctime
	.loc 1 66 0
	movq	-8(%rbp), %rax	# hmm, tmp81
	movq	$0, 72(%rax)	#, hmm_1->map
	.loc 1 67 0
	movq	-8(%rbp), %rax	# hmm, tmp82
	movl	$0, 80(%rax)	#, hmm_1->checksum
	.loc 1 69 0
	movq	-8(%rbp), %rax	# hmm, tmp83
	movq	$0, 88(%rax)	#, hmm_1->tpri
	.loc 1 70 0
	movq	-8(%rbp), %rax	# hmm, tmp84
	movq	$0, 96(%rax)	#, hmm_1->mpri
	.loc 1 71 0
	movq	-8(%rbp), %rax	# hmm, tmp85
	movq	$0, 104(%rax)	#, hmm_1->ipri
	.loc 1 73 0
	movq	-8(%rbp), %rdx	# hmm, tmp86
	movl	.LC1(%rip), %eax	#, tmp87
	movl	%eax, 116(%rdx)	# tmp87, hmm_1->ga2
	movq	-8(%rbp), %rax	# hmm, tmp88
	movl	116(%rax), %eax	# hmm_1->ga2, D.8334
	movq	-8(%rbp), %rdx	# hmm, tmp89
	movl	%eax, 112(%rdx)	# D.8334, hmm_1->ga1
	.loc 1 74 0
	movq	-8(%rbp), %rdx	# hmm, tmp90
	movl	.LC1(%rip), %eax	#, tmp91
	movl	%eax, 124(%rdx)	# tmp91, hmm_1->tc2
	movq	-8(%rbp), %rax	# hmm, tmp92
	movl	124(%rax), %eax	# hmm_1->tc2, D.8334
	movq	-8(%rbp), %rdx	# hmm, tmp93
	movl	%eax, 120(%rdx)	# D.8334, hmm_1->tc1
	.loc 1 75 0
	movq	-8(%rbp), %rdx	# hmm, tmp94
	movl	.LC1(%rip), %eax	#, tmp95
	movl	%eax, 132(%rdx)	# tmp95, hmm_1->nc2
	movq	-8(%rbp), %rax	# hmm, tmp96
	movl	132(%rax), %eax	# hmm_1->nc2, D.8334
	movq	-8(%rbp), %rdx	# hmm, tmp97
	movl	%eax, 128(%rdx)	# D.8334, hmm_1->nc1
	.loc 1 77 0
	movq	-8(%rbp), %rax	# hmm, tmp98
	movq	$0, 144(%rax)	#, hmm_1->t
	.loc 1 78 0
	movq	-8(%rbp), %rax	# hmm, tmp99
	movq	$0, 152(%rax)	#, hmm_1->mat
	.loc 1 79 0
	movq	-8(%rbp), %rax	# hmm, tmp100
	movq	$0, 160(%rax)	#, hmm_1->ins
	.loc 1 81 0
	movq	-8(%rbp), %rax	# hmm, tmp101
	movq	$0, 328(%rax)	#, hmm_1->isc
	movq	-8(%rbp), %rax	# hmm, tmp102
	movq	328(%rax), %rdx	# hmm_1->isc, D.8335
	movq	-8(%rbp), %rax	# hmm, tmp103
	movq	%rdx, 320(%rax)	# D.8335, hmm_1->msc
	movq	-8(%rbp), %rax	# hmm, tmp104
	movq	320(%rax), %rdx	# hmm_1->msc, D.8335
	movq	-8(%rbp), %rax	# hmm, tmp105
	movq	%rdx, 312(%rax)	# D.8335, hmm_1->tsc
	.loc 1 82 0
	movq	-8(%rbp), %rax	# hmm, tmp106
	movq	$0, 392(%rax)	#, hmm_1->msc_mem
	movq	-8(%rbp), %rax	# hmm, tmp107
	movq	392(%rax), %rdx	# hmm_1->msc_mem, D.8336
	movq	-8(%rbp), %rax	# hmm, tmp108
	movq	%rdx, 392(%rax)	# D.8336, hmm_1->msc_mem
	movq	-8(%rbp), %rax	# hmm, tmp109
	movq	392(%rax), %rdx	# hmm_1->msc_mem, D.8336
	movq	-8(%rbp), %rax	# hmm, tmp110
	movq	%rdx, 384(%rax)	# D.8336, hmm_1->tsc_mem
	.loc 1 84 0
	movq	-8(%rbp), %rax	# hmm, tmp111
	movq	$0, 208(%rax)	#, hmm_1->begin
	.loc 1 85 0
	movq	-8(%rbp), %rax	# hmm, tmp112
	movq	$0, 216(%rax)	#, hmm_1->end
	.loc 1 87 0
	movq	-8(%rbp), %rax	# hmm, tmp113
	movq	$0, 408(%rax)	#, hmm_1->bsc_mem
	movq	-8(%rbp), %rax	# hmm, tmp114
	movq	408(%rax), %rdx	# hmm_1->bsc_mem, D.8336
	movq	-8(%rbp), %rax	# hmm, tmp115
	movq	%rdx, 368(%rax)	# D.8336, hmm_1->bsc
	.loc 1 88 0
	movq	-8(%rbp), %rax	# hmm, tmp116
	movq	$0, 416(%rax)	#, hmm_1->esc_mem
	movq	-8(%rbp), %rax	# hmm, tmp117
	movq	416(%rax), %rdx	# hmm_1->esc_mem, D.8336
	movq	-8(%rbp), %rax	# hmm, tmp118
	movq	%rdx, 376(%rax)	# D.8336, hmm_1->esc
	.loc 1 91 0
	movq	-8(%rbp), %rax	# hmm, tmp119
	movq	$0, 424(%rax)	#, hmm_1->dnam
	.loc 1 92 0
	movq	-8(%rbp), %rax	# hmm, tmp120
	movq	$0, 432(%rax)	#, hmm_1->dnai
	.loc 1 93 0
	movq	-8(%rbp), %rax	# hmm, tmp121
	movl	$-987654321, 440(%rax)	#, hmm_1->dna2
	.loc 1 94 0
	movq	-8(%rbp), %rax	# hmm, tmp122
	movl	$-987654321, 444(%rax)	#, hmm_1->dna4
	.loc 1 96 0
	movq	-8(%rbp), %rdx	# hmm, tmp123
	movl	.LC1(%rip), %eax	#, tmp124
	movl	%eax, 448(%rdx)	# tmp124, hmm_1->mu
	.loc 1 97 0
	movq	-8(%rbp), %rdx	# hmm, tmp125
	movl	.LC1(%rip), %eax	#, tmp126
	movl	%eax, 452(%rdx)	# tmp126, hmm_1->lambda
	.loc 1 99 0
	movq	-8(%rbp), %rax	# hmm, tmp127
	movl	$0, 456(%rax)	#, hmm_1->flags
	.loc 1 100 0
	movq	-8(%rbp), %rax	# hmm, D.8337
	.loc 1 101 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	AllocPlan7Shell, .-AllocPlan7Shell
	.globl	AllocPlan7Body
	.type	AllocPlan7Body, @function
AllocPlan7Body:
.LFB4:
	.loc 1 106 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$40, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)	# hmm, hmm
	movl	%esi, -44(%rbp)	# M, M
	.loc 1 109 0
	movq	-40(%rbp), %rax	# hmm, tmp195
	movl	-44(%rbp), %edx	# M, tmp196
	movl	%edx, 136(%rax)	# tmp196, hmm_5(D)->M
	.loc 1 111 0
	movl	-44(%rbp), %eax	# M, tmp197
	addl	$2, %eax	#, D.8339
	cltq
	movq	%rax, %rdx	# D.8340,
	movl	$111, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_malloc	#
	movq	-40(%rbp), %rdx	# hmm, tmp198
	movq	%rax, 24(%rdx)	# D.8341, hmm_5(D)->rf
	.loc 1 112 0
	movl	-44(%rbp), %eax	# M, tmp199
	addl	$2, %eax	#, D.8339
	cltq
	movq	%rax, %rdx	# D.8340,
	movl	$112, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_malloc	#
	movq	-40(%rbp), %rdx	# hmm, tmp200
	movq	%rax, 32(%rdx)	# D.8341, hmm_5(D)->cs
	.loc 1 113 0
	movl	-44(%rbp), %eax	# M, tmp201
	addl	$2, %eax	#, D.8339
	cltq
	movq	%rax, %rdx	# D.8340,
	movl	$113, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_malloc	#
	movq	-40(%rbp), %rdx	# hmm, tmp202
	movq	%rax, 40(%rdx)	# D.8341, hmm_5(D)->ca
	.loc 1 114 0
	movl	-44(%rbp), %eax	# M, tmp203
	addl	$1, %eax	#, D.8339
	cltq
	salq	$2, %rax	#, D.8340
	movq	%rax, %rdx	# D.8340,
	movl	$114, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_malloc	#
	movq	-40(%rbp), %rdx	# hmm, tmp204
	movq	%rax, 72(%rdx)	# D.8341, hmm_5(D)->map
	.loc 1 116 0
	movl	-44(%rbp), %eax	# M, tmp205
	cltq
	salq	$3, %rax	#, D.8340
	movq	%rax, %rdx	# D.8340,
	movl	$116, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_malloc	#
	movq	-40(%rbp), %rdx	# hmm, tmp206
	movq	%rax, 144(%rdx)	# D.8341, hmm_5(D)->t
	.loc 1 117 0
	movl	-44(%rbp), %eax	# M, tmp207
	addl	$1, %eax	#, D.8339
	cltq
	salq	$3, %rax	#, D.8340
	movq	%rax, %rdx	# D.8340,
	movl	$117, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_malloc	#
	movq	-40(%rbp), %rdx	# hmm, tmp208
	movq	%rax, 152(%rdx)	# D.8341, hmm_5(D)->mat
	.loc 1 118 0
	movl	-44(%rbp), %eax	# M, tmp209
	cltq
	salq	$3, %rax	#, D.8340
	movq	%rax, %rdx	# D.8340,
	movl	$118, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_malloc	#
	movq	-40(%rbp), %rdx	# hmm, tmp210
	movq	%rax, 160(%rdx)	# D.8341, hmm_5(D)->ins
	.loc 1 119 0
	movq	-40(%rbp), %rax	# hmm, tmp211
	movq	144(%rax), %rbx	# hmm_5(D)->t, D.8342
	movl	-44(%rbp), %eax	# M, tmp212
	cltq
	salq	$2, %rax	#, tmp214
	leaq	0(,%rax,8), %rdx	#, tmp215
	subq	%rax, %rdx	# tmp213, D.8340
	movq	%rdx, %rax	# D.8340, D.8340
	movq	%rax, %rdx	# D.8340,
	movl	$119, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_malloc	#
	movq	%rax, (%rbx)	# D.8341, *_30
	.loc 1 120 0
	movq	-40(%rbp), %rax	# hmm, tmp216
	movq	152(%rax), %rbx	# hmm_5(D)->mat, D.8342
	movl	-44(%rbp), %eax	# M, tmp217
	addl	$1, %eax	#, D.8339
	movslq	%eax, %rdx	# D.8339, D.8340
	movq	%rdx, %rax	# D.8340, tmp218
	salq	$2, %rax	#, tmp218
	addq	%rdx, %rax	# D.8340, tmp218
	salq	$4, %rax	#, tmp219
	movq	%rax, %rdx	# D.8340,
	movl	$120, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_malloc	#
	movq	%rax, (%rbx)	# D.8341, *_34
	.loc 1 121 0
	movq	-40(%rbp), %rax	# hmm, tmp220
	movq	160(%rax), %rbx	# hmm_5(D)->ins, D.8342
	movl	-44(%rbp), %eax	# M, tmp221
	movslq	%eax, %rdx	# tmp221, D.8340
	movq	%rdx, %rax	# D.8340, tmp222
	salq	$2, %rax	#, tmp222
	addq	%rdx, %rax	# D.8340, tmp222
	salq	$4, %rax	#, tmp223
	movq	%rax, %rdx	# D.8340,
	movl	$121, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_malloc	#
	movq	%rax, (%rbx)	# D.8341, *_39
	.loc 1 123 0
	movl	$56, %edx	#,
	movl	$123, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_malloc	#
	movq	-40(%rbp), %rdx	# hmm, tmp224
	movq	%rax, 312(%rdx)	# D.8341, hmm_5(D)->tsc
	.loc 1 124 0
	movl	$192, %edx	#,
	movl	$124, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_malloc	#
	movq	-40(%rbp), %rdx	# hmm, tmp225
	movq	%rax, 320(%rdx)	# D.8341, hmm_5(D)->msc
	.loc 1 125 0
	movl	$192, %edx	#,
	movl	$125, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_malloc	#
	movq	-40(%rbp), %rdx	# hmm, tmp226
	movq	%rax, 328(%rdx)	# D.8341, hmm_5(D)->isc
	.loc 1 126 0
	movl	-44(%rbp), %eax	# M, tmp227
	cltq
	salq	$2, %rax	#, tmp229
	leaq	0(,%rax,8), %rdx	#, tmp230
	subq	%rax, %rdx	# tmp228, D.8340
	movq	%rdx, %rax	# D.8340, D.8340
	movq	%rax, %rdx	# D.8340,
	movl	$126, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_malloc	#
	movq	-40(%rbp), %rdx	# hmm, tmp231
	movq	%rax, 384(%rdx)	# D.8341, hmm_5(D)->tsc_mem
	.loc 1 127 0
	movl	-44(%rbp), %eax	# M, tmp232
	addl	$1, %eax	#, D.8339
	movslq	%eax, %rdx	# D.8339, D.8340
	movq	%rdx, %rax	# D.8340, tmp233
	addq	%rax, %rax	# tmp233
	addq	%rdx, %rax	# D.8340, tmp233
	salq	$5, %rax	#, tmp234
	movq	%rax, %rdx	# D.8340,
	movl	$127, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_malloc	#
	movq	-40(%rbp), %rdx	# hmm, tmp235
	movq	%rax, 392(%rdx)	# D.8341, hmm_5(D)->msc_mem
	.loc 1 128 0
	movl	-44(%rbp), %eax	# M, tmp236
	movslq	%eax, %rdx	# tmp236, D.8340
	movq	%rdx, %rax	# D.8340, tmp237
	addq	%rax, %rax	# tmp237
	addq	%rdx, %rax	# D.8340, tmp237
	salq	$5, %rax	#, tmp238
	movq	%rax, %rdx	# D.8340,
	movl	$128, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_malloc	#
	movq	-40(%rbp), %rdx	# hmm, tmp239
	movq	%rax, 400(%rdx)	# D.8341, hmm_5(D)->isc_mem
	.loc 1 130 0
	movq	-40(%rbp), %rax	# hmm, tmp240
	movq	312(%rax), %rax	# hmm_5(D)->tsc, D.8343
	movq	-40(%rbp), %rdx	# hmm, tmp241
	movq	384(%rdx), %rdx	# hmm_5(D)->tsc_mem, D.8344
	movq	%rdx, (%rax)	# D.8344, *_56
	.loc 1 131 0
	movq	-40(%rbp), %rax	# hmm, tmp242
	movq	320(%rax), %rax	# hmm_5(D)->msc, D.8343
	movq	-40(%rbp), %rdx	# hmm, tmp243
	movq	392(%rdx), %rdx	# hmm_5(D)->msc_mem, D.8344
	movq	%rdx, (%rax)	# D.8344, *_58
	.loc 1 132 0
	movq	-40(%rbp), %rax	# hmm, tmp244
	movq	328(%rax), %rax	# hmm_5(D)->isc, D.8343
	movq	-40(%rbp), %rdx	# hmm, tmp245
	movq	400(%rdx), %rdx	# hmm_5(D)->isc_mem, D.8344
	movq	%rdx, (%rax)	# D.8344, *_60
	.loc 1 137 0
	movl	$1, -24(%rbp)	#, k
	jmp	.L6	#
.L8:
	.loc 1 138 0
	movq	-40(%rbp), %rax	# hmm, tmp246
	movq	152(%rax), %rax	# hmm_5(D)->mat, D.8342
	movl	-24(%rbp), %edx	# k, tmp247
	movslq	%edx, %rdx	# tmp247, D.8340
	salq	$3, %rdx	#, D.8340
	leaq	(%rax,%rdx), %rcx	#, D.8342
	movq	-40(%rbp), %rax	# hmm, tmp248
	movq	152(%rax), %rax	# hmm_5(D)->mat, D.8342
	movq	(%rax), %rsi	# *_67, D.8345
	movl	-24(%rbp), %eax	# k, tmp249
	movslq	%eax, %rdx	# tmp249, D.8340
	movq	%rdx, %rax	# D.8340, tmp250
	salq	$2, %rax	#, tmp250
	addq	%rdx, %rax	# D.8340, tmp250
	salq	$4, %rax	#, tmp251
	addq	%rsi, %rax	# D.8345, D.8345
	movq	%rax, (%rcx)	# D.8345, *_66
	.loc 1 139 0
	movl	-24(%rbp), %eax	# k, tmp252
	cmpl	-44(%rbp), %eax	# M, tmp252
	jge	.L7	#,
	.loc 1 140 0
	movq	-40(%rbp), %rax	# hmm, tmp253
	movq	160(%rax), %rax	# hmm_5(D)->ins, D.8342
	movl	-24(%rbp), %edx	# k, tmp254
	movslq	%edx, %rdx	# tmp254, D.8340
	salq	$3, %rdx	#, D.8340
	leaq	(%rax,%rdx), %rcx	#, D.8342
	movq	-40(%rbp), %rax	# hmm, tmp255
	movq	160(%rax), %rax	# hmm_5(D)->ins, D.8342
	movq	(%rax), %rsi	# *_76, D.8345
	movl	-24(%rbp), %eax	# k, tmp256
	movslq	%eax, %rdx	# tmp256, D.8340
	movq	%rdx, %rax	# D.8340, tmp257
	salq	$2, %rax	#, tmp257
	addq	%rdx, %rax	# D.8340, tmp257
	salq	$4, %rax	#, tmp258
	addq	%rsi, %rax	# D.8345, D.8345
	movq	%rax, (%rcx)	# D.8345, *_75
	.loc 1 141 0
	movq	-40(%rbp), %rax	# hmm, tmp259
	movq	144(%rax), %rax	# hmm_5(D)->t, D.8342
	movl	-24(%rbp), %edx	# k, tmp260
	movslq	%edx, %rdx	# tmp260, D.8340
	salq	$3, %rdx	#, D.8340
	addq	%rax, %rdx	# D.8342, D.8342
	movq	-40(%rbp), %rax	# hmm, tmp261
	movq	144(%rax), %rax	# hmm_5(D)->t, D.8342
	movq	(%rax), %rcx	# *_85, D.8345
	movl	-24(%rbp), %eax	# k, tmp262
	cltq
	salq	$2, %rax	#, tmp264
	leaq	0(,%rax,8), %rsi	#, tmp265
	subq	%rax, %rsi	# tmp263, D.8340
	movq	%rsi, %rax	# D.8340, D.8340
	addq	%rcx, %rax	# D.8345, D.8345
	movq	%rax, (%rdx)	# D.8345, *_84
.L7:
	.loc 1 137 0
	addl	$1, -24(%rbp)	#, k
.L6:
	.loc 1 137 0 is_stmt 0 discriminator 1
	movl	-24(%rbp), %eax	# k, tmp266
	cmpl	-44(%rbp), %eax	# M, tmp266
	jle	.L8	#,
	.loc 1 144 0 is_stmt 1
	movl	$1, -20(%rbp)	#, x
	jmp	.L9	#
.L10:
	.loc 1 145 0 discriminator 2
	movq	-40(%rbp), %rax	# hmm, tmp267
	movq	320(%rax), %rax	# hmm_5(D)->msc, D.8343
	movl	-20(%rbp), %edx	# x, tmp268
	movslq	%edx, %rdx	# tmp268, D.8340
	salq	$3, %rdx	#, D.8340
	addq	%rax, %rdx	# D.8343, D.8343
	movq	-40(%rbp), %rax	# hmm, tmp269
	movq	320(%rax), %rax	# hmm_5(D)->msc, D.8343
	movq	(%rax), %rax	# *_96, D.8344
	movl	-44(%rbp), %ecx	# M, tmp270
	addl	$1, %ecx	#, D.8339
	imull	-20(%rbp), %ecx	# x, D.8339
	movslq	%ecx, %rcx	# D.8339, D.8340
	salq	$2, %rcx	#, D.8340
	addq	%rcx, %rax	# D.8340, D.8344
	movq	%rax, (%rdx)	# D.8344, *_95
	.loc 1 146 0 discriminator 2
	movq	-40(%rbp), %rax	# hmm, tmp271
	movq	328(%rax), %rax	# hmm_5(D)->isc, D.8343
	movl	-20(%rbp), %edx	# x, tmp272
	movslq	%edx, %rdx	# tmp272, D.8340
	salq	$3, %rdx	#, D.8340
	addq	%rax, %rdx	# D.8343, D.8343
	movq	-40(%rbp), %rax	# hmm, tmp273
	movq	328(%rax), %rax	# hmm_5(D)->isc, D.8343
	movq	(%rax), %rcx	# *_107, D.8344
	movl	-20(%rbp), %eax	# x, tmp274
	imull	-44(%rbp), %eax	# M, D.8339
	cltq
	salq	$2, %rax	#, D.8340
	addq	%rcx, %rax	# D.8344, D.8344
	movq	%rax, (%rdx)	# D.8344, *_106
	.loc 1 144 0 discriminator 2
	addl	$1, -20(%rbp)	#, x
.L9:
	.loc 1 144 0 is_stmt 0 discriminator 1
	cmpl	$23, -20(%rbp)	#, x
	jle	.L10	#,
	.loc 1 148 0 is_stmt 1
	movl	$0, -20(%rbp)	#, x
	jmp	.L11	#
.L12:
	.loc 1 149 0 discriminator 2
	movq	-40(%rbp), %rax	# hmm, tmp275
	movq	312(%rax), %rax	# hmm_5(D)->tsc, D.8343
	movl	-20(%rbp), %edx	# x, tmp276
	movslq	%edx, %rdx	# tmp276, D.8340
	salq	$3, %rdx	#, D.8340
	addq	%rax, %rdx	# D.8343, D.8343
	movq	-40(%rbp), %rax	# hmm, tmp277
	movq	312(%rax), %rax	# hmm_5(D)->tsc, D.8343
	movq	(%rax), %rcx	# *_119, D.8344
	movl	-20(%rbp), %eax	# x, tmp278
	imull	-44(%rbp), %eax	# M, D.8339
	cltq
	salq	$2, %rax	#, D.8340
	addq	%rcx, %rax	# D.8344, D.8344
	movq	%rax, (%rdx)	# D.8344, *_118
	.loc 1 148 0 discriminator 2
	addl	$1, -20(%rbp)	#, x
.L11:
	.loc 1 148 0 is_stmt 0 discriminator 1
	cmpl	$6, -20(%rbp)	#, x
	jle	.L12	#,
	.loc 1 154 0 is_stmt 1
	movl	$0, -20(%rbp)	#, x
	jmp	.L13	#
.L14:
	.loc 1 155 0 discriminator 2
	movq	-40(%rbp), %rax	# hmm, tmp279
	movq	312(%rax), %rax	# hmm_5(D)->tsc, D.8343
	movl	-20(%rbp), %edx	# x, tmp280
	movslq	%edx, %rdx	# tmp280, D.8340
	salq	$3, %rdx	#, D.8340
	addq	%rdx, %rax	# D.8340, D.8343
	movq	(%rax), %rax	# *_130, D.8344
	movl	$-987654321, (%rax)	#, *_131
	.loc 1 154 0 discriminator 2
	addl	$1, -20(%rbp)	#, x
.L13:
	.loc 1 154 0 is_stmt 0 discriminator 1
	cmpl	$6, -20(%rbp)	#, x
	jle	.L14	#,
	.loc 1 157 0 is_stmt 1
	movl	-44(%rbp), %eax	# M, tmp281
	addl	$1, %eax	#, D.8339
	cltq
	salq	$2, %rax	#, D.8340
	movq	%rax, %rdx	# D.8340,
	movl	$157, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_malloc	#
	movq	-40(%rbp), %rdx	# hmm, tmp282
	movq	%rax, 208(%rdx)	# D.8341, hmm_5(D)->begin
	.loc 1 158 0
	movl	-44(%rbp), %eax	# M, tmp283
	addl	$1, %eax	#, D.8339
	cltq
	salq	$2, %rax	#, D.8340
	movq	%rax, %rdx	# D.8340,
	movl	$158, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_malloc	#
	movq	-40(%rbp), %rdx	# hmm, tmp284
	movq	%rax, 216(%rdx)	# D.8341, hmm_5(D)->end
	.loc 1 160 0
	movl	-44(%rbp), %eax	# M, tmp285
	addl	$1, %eax	#, D.8339
	cltq
	salq	$2, %rax	#, D.8340
	movq	%rax, %rdx	# D.8340,
	movl	$160, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_malloc	#
	movq	-40(%rbp), %rdx	# hmm, tmp286
	movq	%rax, 408(%rdx)	# D.8341, hmm_5(D)->bsc_mem
	.loc 1 161 0
	movl	-44(%rbp), %eax	# M, tmp287
	addl	$1, %eax	#, D.8339
	cltq
	salq	$2, %rax	#, D.8340
	movq	%rax, %rdx	# D.8340,
	movl	$161, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_malloc	#
	movq	-40(%rbp), %rdx	# hmm, tmp288
	movq	%rax, 416(%rdx)	# D.8341, hmm_5(D)->esc_mem
	.loc 1 163 0
	movq	-40(%rbp), %rax	# hmm, tmp289
	movq	408(%rax), %rdx	# hmm_5(D)->bsc_mem, D.8344
	movq	-40(%rbp), %rax	# hmm, tmp290
	movq	%rdx, 368(%rax)	# D.8344, hmm_5(D)->bsc
	.loc 1 164 0
	movq	-40(%rbp), %rax	# hmm, tmp291
	movq	416(%rax), %rdx	# hmm_5(D)->esc_mem, D.8344
	movq	-40(%rbp), %rax	# hmm, tmp292
	movq	%rdx, 376(%rax)	# D.8344, hmm_5(D)->esc
	.loc 1 166 0
	nop
	.loc 1 167 0
	addq	$40, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	AllocPlan7Body, .-AllocPlan7Body
	.globl	FreePlan7
	.type	FreePlan7, @function
FreePlan7:
.LFB5:
	.loc 1 172 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# hmm, hmm
	.loc 1 173 0
	movq	-8(%rbp), %rax	# hmm, tmp122
	movq	(%rax), %rax	# hmm_1(D)->name, D.8346
	testq	%rax, %rax	# D.8346
	je	.L17	#,
	.loc 1 173 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# hmm, tmp123
	movq	(%rax), %rax	# hmm_1(D)->name, D.8346
	movq	%rax, %rdi	# D.8346,
	call	free	#
.L17:
	.loc 1 174 0 is_stmt 1
	movq	-8(%rbp), %rax	# hmm, tmp124
	movq	8(%rax), %rax	# hmm_1(D)->acc, D.8346
	testq	%rax, %rax	# D.8346
	je	.L18	#,
	.loc 1 174 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# hmm, tmp125
	movq	8(%rax), %rax	# hmm_1(D)->acc, D.8346
	movq	%rax, %rdi	# D.8346,
	call	free	#
.L18:
	.loc 1 175 0 is_stmt 1
	movq	-8(%rbp), %rax	# hmm, tmp126
	movq	16(%rax), %rax	# hmm_1(D)->desc, D.8346
	testq	%rax, %rax	# D.8346
	je	.L19	#,
	.loc 1 175 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# hmm, tmp127
	movq	16(%rax), %rax	# hmm_1(D)->desc, D.8346
	movq	%rax, %rdi	# D.8346,
	call	free	#
.L19:
	.loc 1 176 0 is_stmt 1
	movq	-8(%rbp), %rax	# hmm, tmp128
	movq	24(%rax), %rax	# hmm_1(D)->rf, D.8346
	testq	%rax, %rax	# D.8346
	je	.L20	#,
	.loc 1 176 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# hmm, tmp129
	movq	24(%rax), %rax	# hmm_1(D)->rf, D.8346
	movq	%rax, %rdi	# D.8346,
	call	free	#
.L20:
	.loc 1 177 0 is_stmt 1
	movq	-8(%rbp), %rax	# hmm, tmp130
	movq	32(%rax), %rax	# hmm_1(D)->cs, D.8346
	testq	%rax, %rax	# D.8346
	je	.L21	#,
	.loc 1 177 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# hmm, tmp131
	movq	32(%rax), %rax	# hmm_1(D)->cs, D.8346
	movq	%rax, %rdi	# D.8346,
	call	free	#
.L21:
	.loc 1 178 0 is_stmt 1
	movq	-8(%rbp), %rax	# hmm, tmp132
	movq	40(%rax), %rax	# hmm_1(D)->ca, D.8346
	testq	%rax, %rax	# D.8346
	je	.L22	#,
	.loc 1 178 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# hmm, tmp133
	movq	40(%rax), %rax	# hmm_1(D)->ca, D.8346
	movq	%rax, %rdi	# D.8346,
	call	free	#
.L22:
	.loc 1 179 0 is_stmt 1
	movq	-8(%rbp), %rax	# hmm, tmp134
	movq	48(%rax), %rax	# hmm_1(D)->comlog, D.8346
	testq	%rax, %rax	# D.8346
	je	.L23	#,
	.loc 1 179 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# hmm, tmp135
	movq	48(%rax), %rax	# hmm_1(D)->comlog, D.8346
	movq	%rax, %rdi	# D.8346,
	call	free	#
.L23:
	.loc 1 180 0 is_stmt 1
	movq	-8(%rbp), %rax	# hmm, tmp136
	movq	64(%rax), %rax	# hmm_1(D)->ctime, D.8346
	testq	%rax, %rax	# D.8346
	je	.L24	#,
	.loc 1 180 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# hmm, tmp137
	movq	64(%rax), %rax	# hmm_1(D)->ctime, D.8346
	movq	%rax, %rdi	# D.8346,
	call	free	#
.L24:
	.loc 1 181 0 is_stmt 1
	movq	-8(%rbp), %rax	# hmm, tmp138
	movq	72(%rax), %rax	# hmm_1(D)->map, D.8347
	testq	%rax, %rax	# D.8347
	je	.L25	#,
	.loc 1 181 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# hmm, tmp139
	movq	72(%rax), %rax	# hmm_1(D)->map, D.8347
	movq	%rax, %rdi	# D.8347,
	call	free	#
.L25:
	.loc 1 182 0 is_stmt 1
	movq	-8(%rbp), %rax	# hmm, tmp140
	movq	88(%rax), %rax	# hmm_1(D)->tpri, D.8347
	testq	%rax, %rax	# D.8347
	je	.L26	#,
	.loc 1 182 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# hmm, tmp141
	movq	88(%rax), %rax	# hmm_1(D)->tpri, D.8347
	movq	%rax, %rdi	# D.8347,
	call	free	#
.L26:
	.loc 1 183 0 is_stmt 1
	movq	-8(%rbp), %rax	# hmm, tmp142
	movq	96(%rax), %rax	# hmm_1(D)->mpri, D.8347
	testq	%rax, %rax	# D.8347
	je	.L27	#,
	.loc 1 183 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# hmm, tmp143
	movq	96(%rax), %rax	# hmm_1(D)->mpri, D.8347
	movq	%rax, %rdi	# D.8347,
	call	free	#
.L27:
	.loc 1 184 0 is_stmt 1
	movq	-8(%rbp), %rax	# hmm, tmp144
	movq	104(%rax), %rax	# hmm_1(D)->ipri, D.8347
	testq	%rax, %rax	# D.8347
	je	.L28	#,
	.loc 1 184 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# hmm, tmp145
	movq	104(%rax), %rax	# hmm_1(D)->ipri, D.8347
	movq	%rax, %rdi	# D.8347,
	call	free	#
.L28:
	.loc 1 185 0 is_stmt 1
	movq	-8(%rbp), %rax	# hmm, tmp146
	movq	408(%rax), %rax	# hmm_1(D)->bsc_mem, D.8347
	testq	%rax, %rax	# D.8347
	je	.L29	#,
	.loc 1 185 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# hmm, tmp147
	movq	408(%rax), %rax	# hmm_1(D)->bsc_mem, D.8347
	movq	%rax, %rdi	# D.8347,
	call	free	#
.L29:
	.loc 1 186 0 is_stmt 1
	movq	-8(%rbp), %rax	# hmm, tmp148
	movq	208(%rax), %rax	# hmm_1(D)->begin, D.8348
	testq	%rax, %rax	# D.8348
	je	.L30	#,
	.loc 1 186 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# hmm, tmp149
	movq	208(%rax), %rax	# hmm_1(D)->begin, D.8348
	movq	%rax, %rdi	# D.8348,
	call	free	#
.L30:
	.loc 1 187 0 is_stmt 1
	movq	-8(%rbp), %rax	# hmm, tmp150
	movq	416(%rax), %rax	# hmm_1(D)->esc_mem, D.8347
	testq	%rax, %rax	# D.8347
	je	.L31	#,
	.loc 1 187 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# hmm, tmp151
	movq	416(%rax), %rax	# hmm_1(D)->esc_mem, D.8347
	movq	%rax, %rdi	# D.8347,
	call	free	#
.L31:
	.loc 1 188 0 is_stmt 1
	movq	-8(%rbp), %rax	# hmm, tmp152
	movq	216(%rax), %rax	# hmm_1(D)->end, D.8348
	testq	%rax, %rax	# D.8348
	je	.L32	#,
	.loc 1 188 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# hmm, tmp153
	movq	216(%rax), %rax	# hmm_1(D)->end, D.8348
	movq	%rax, %rdi	# D.8348,
	call	free	#
.L32:
	.loc 1 189 0 is_stmt 1
	movq	-8(%rbp), %rax	# hmm, tmp154
	movq	392(%rax), %rax	# hmm_1(D)->msc_mem, D.8347
	testq	%rax, %rax	# D.8347
	je	.L33	#,
	.loc 1 189 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# hmm, tmp155
	movq	392(%rax), %rax	# hmm_1(D)->msc_mem, D.8347
	movq	%rax, %rdi	# D.8347,
	call	free	#
.L33:
	.loc 1 190 0 is_stmt 1
	movq	-8(%rbp), %rax	# hmm, tmp156
	movq	400(%rax), %rax	# hmm_1(D)->isc_mem, D.8347
	testq	%rax, %rax	# D.8347
	je	.L34	#,
	.loc 1 190 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# hmm, tmp157
	movq	400(%rax), %rax	# hmm_1(D)->isc_mem, D.8347
	movq	%rax, %rdi	# D.8347,
	call	free	#
.L34:
	.loc 1 191 0 is_stmt 1
	movq	-8(%rbp), %rax	# hmm, tmp158
	movq	384(%rax), %rax	# hmm_1(D)->tsc_mem, D.8347
	testq	%rax, %rax	# D.8347
	je	.L35	#,
	.loc 1 191 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# hmm, tmp159
	movq	384(%rax), %rax	# hmm_1(D)->tsc_mem, D.8347
	movq	%rax, %rdi	# D.8347,
	call	free	#
.L35:
	.loc 1 192 0 is_stmt 1
	movq	-8(%rbp), %rax	# hmm, tmp160
	movq	152(%rax), %rax	# hmm_1(D)->mat, D.8349
	testq	%rax, %rax	# D.8349
	je	.L36	#,
	.loc 1 192 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# hmm, tmp161
	movq	152(%rax), %rax	# hmm_1(D)->mat, D.8349
	movq	(%rax), %rax	# *_41, D.8348
	movq	%rax, %rdi	# D.8348,
	call	free	#
.L36:
	.loc 1 193 0 is_stmt 1
	movq	-8(%rbp), %rax	# hmm, tmp162
	movq	160(%rax), %rax	# hmm_1(D)->ins, D.8349
	testq	%rax, %rax	# D.8349
	je	.L37	#,
	.loc 1 193 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# hmm, tmp163
	movq	160(%rax), %rax	# hmm_1(D)->ins, D.8349
	movq	(%rax), %rax	# *_44, D.8348
	movq	%rax, %rdi	# D.8348,
	call	free	#
.L37:
	.loc 1 194 0 is_stmt 1
	movq	-8(%rbp), %rax	# hmm, tmp164
	movq	144(%rax), %rax	# hmm_1(D)->t, D.8349
	testq	%rax, %rax	# D.8349
	je	.L38	#,
	.loc 1 194 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# hmm, tmp165
	movq	144(%rax), %rax	# hmm_1(D)->t, D.8349
	movq	(%rax), %rax	# *_47, D.8348
	movq	%rax, %rdi	# D.8348,
	call	free	#
.L38:
	.loc 1 195 0 is_stmt 1
	movq	-8(%rbp), %rax	# hmm, tmp166
	movq	320(%rax), %rax	# hmm_1(D)->msc, D.8350
	testq	%rax, %rax	# D.8350
	je	.L39	#,
	.loc 1 195 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# hmm, tmp167
	movq	320(%rax), %rax	# hmm_1(D)->msc, D.8350
	movq	%rax, %rdi	# D.8350,
	call	free	#
.L39:
	.loc 1 196 0 is_stmt 1
	movq	-8(%rbp), %rax	# hmm, tmp168
	movq	328(%rax), %rax	# hmm_1(D)->isc, D.8350
	testq	%rax, %rax	# D.8350
	je	.L40	#,
	.loc 1 196 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# hmm, tmp169
	movq	328(%rax), %rax	# hmm_1(D)->isc, D.8350
	movq	%rax, %rdi	# D.8350,
	call	free	#
.L40:
	.loc 1 197 0 is_stmt 1
	movq	-8(%rbp), %rax	# hmm, tmp170
	movq	312(%rax), %rax	# hmm_1(D)->tsc, D.8350
	testq	%rax, %rax	# D.8350
	je	.L41	#,
	.loc 1 197 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# hmm, tmp171
	movq	312(%rax), %rax	# hmm_1(D)->tsc, D.8350
	movq	%rax, %rdi	# D.8350,
	call	free	#
.L41:
	.loc 1 198 0 is_stmt 1
	movq	-8(%rbp), %rax	# hmm, tmp172
	movq	152(%rax), %rax	# hmm_1(D)->mat, D.8349
	testq	%rax, %rax	# D.8349
	je	.L42	#,
	.loc 1 198 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# hmm, tmp173
	movq	152(%rax), %rax	# hmm_1(D)->mat, D.8349
	movq	%rax, %rdi	# D.8349,
	call	free	#
.L42:
	.loc 1 199 0 is_stmt 1
	movq	-8(%rbp), %rax	# hmm, tmp174
	movq	160(%rax), %rax	# hmm_1(D)->ins, D.8349
	testq	%rax, %rax	# D.8349
	je	.L43	#,
	.loc 1 199 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# hmm, tmp175
	movq	160(%rax), %rax	# hmm_1(D)->ins, D.8349
	movq	%rax, %rdi	# D.8349,
	call	free	#
.L43:
	.loc 1 200 0 is_stmt 1
	movq	-8(%rbp), %rax	# hmm, tmp176
	movq	144(%rax), %rax	# hmm_1(D)->t, D.8349
	testq	%rax, %rax	# D.8349
	je	.L44	#,
	.loc 1 200 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# hmm, tmp177
	movq	144(%rax), %rax	# hmm_1(D)->t, D.8349
	movq	%rax, %rdi	# D.8349,
	call	free	#
.L44:
	.loc 1 201 0 is_stmt 1
	movq	-8(%rbp), %rax	# hmm, tmp178
	movq	424(%rax), %rax	# hmm_1(D)->dnam, D.8350
	testq	%rax, %rax	# D.8350
	je	.L45	#,
	.loc 1 201 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# hmm, tmp179
	movq	424(%rax), %rax	# hmm_1(D)->dnam, D.8350
	movq	%rax, %rdi	# D.8350,
	call	free	#
.L45:
	.loc 1 202 0 is_stmt 1
	movq	-8(%rbp), %rax	# hmm, tmp180
	movq	432(%rax), %rax	# hmm_1(D)->dnai, D.8350
	testq	%rax, %rax	# D.8350
	je	.L46	#,
	.loc 1 202 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# hmm, tmp181
	movq	432(%rax), %rax	# hmm_1(D)->dnai, D.8350
	movq	%rax, %rdi	# D.8350,
	call	free	#
.L46:
	.loc 1 203 0 is_stmt 1
	movq	-8(%rbp), %rax	# hmm, tmp182
	movq	%rax, %rdi	# tmp182,
	call	free	#
	.loc 1 204 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	FreePlan7, .-FreePlan7
	.globl	ZeroPlan7
	.type	ZeroPlan7, @function
ZeroPlan7:
.LFB6:
	.loc 1 213 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# hmm, hmm
	.loc 1 215 0
	movl	$1, -4(%rbp)	#, k
	jmp	.L48	#
.L49:
	.loc 1 217 0 discriminator 2
	movq	-24(%rbp), %rax	# hmm, tmp95
	movq	144(%rax), %rax	# hmm_4(D)->t, D.8352
	movl	-4(%rbp), %edx	# k, tmp96
	movslq	%edx, %rdx	# tmp96, D.8353
	salq	$3, %rdx	#, D.8353
	addq	%rdx, %rax	# D.8353, D.8352
	movq	(%rax), %rax	# *_9, D.8354
	xorps	%xmm0, %xmm0	#
	movl	$7, %esi	#,
	movq	%rax, %rdi	# D.8354,
	call	FSet	#
	.loc 1 218 0 discriminator 2
	movl	Alphabet_size(%rip), %edx	# Alphabet_size, Alphabet_size.0
	movq	-24(%rbp), %rax	# hmm, tmp97
	movq	152(%rax), %rax	# hmm_4(D)->mat, D.8352
	movl	-4(%rbp), %ecx	# k, tmp98
	movslq	%ecx, %rcx	# tmp98, D.8353
	salq	$3, %rcx	#, D.8353
	addq	%rcx, %rax	# D.8353, D.8352
	movq	(%rax), %rax	# *_15, D.8354
	xorps	%xmm0, %xmm0	#
	movl	%edx, %esi	# Alphabet_size.0,
	movq	%rax, %rdi	# D.8354,
	call	FSet	#
	.loc 1 219 0 discriminator 2
	movl	Alphabet_size(%rip), %edx	# Alphabet_size, Alphabet_size.1
	movq	-24(%rbp), %rax	# hmm, tmp99
	movq	160(%rax), %rax	# hmm_4(D)->ins, D.8352
	movl	-4(%rbp), %ecx	# k, tmp100
	movslq	%ecx, %rcx	# tmp100, D.8353
	salq	$3, %rcx	#, D.8353
	addq	%rcx, %rax	# D.8353, D.8352
	movq	(%rax), %rax	# *_21, D.8354
	xorps	%xmm0, %xmm0	#
	movl	%edx, %esi	# Alphabet_size.1,
	movq	%rax, %rdi	# D.8354,
	call	FSet	#
	.loc 1 215 0 discriminator 2
	addl	$1, -4(%rbp)	#, k
.L48:
	.loc 1 215 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# hmm, tmp101
	movl	136(%rax), %eax	# hmm_4(D)->M, D.8351
	cmpl	-4(%rbp), %eax	# k, D.8351
	jg	.L49	#,
	.loc 1 221 0 is_stmt 1
	movl	Alphabet_size(%rip), %edx	# Alphabet_size, Alphabet_size.2
	movq	-24(%rbp), %rax	# hmm, tmp102
	movq	152(%rax), %rcx	# hmm_4(D)->mat, D.8352
	movq	-24(%rbp), %rax	# hmm, tmp103
	movl	136(%rax), %eax	# hmm_4(D)->M, D.8351
	cltq
	salq	$3, %rax	#, D.8353
	addq	%rcx, %rax	# D.8352, D.8352
	movq	(%rax), %rax	# *_29, D.8354
	xorps	%xmm0, %xmm0	#
	movl	%edx, %esi	# Alphabet_size.2,
	movq	%rax, %rdi	# D.8354,
	call	FSet	#
	.loc 1 222 0
	movq	-24(%rbp), %rdx	# hmm, tmp104
	movl	.LC1(%rip), %eax	#, tmp105
	movl	%eax, 168(%rdx)	# tmp105, hmm_4(D)->tbd1
	.loc 1 223 0
	movq	-24(%rbp), %rax	# hmm, tmp106
	movl	136(%rax), %eax	# hmm_4(D)->M, D.8351
	movq	-24(%rbp), %rdx	# hmm, tmp107
	movq	208(%rdx), %rdx	# hmm_4(D)->begin, D.8354
	addq	$4, %rdx	#, D.8354
	xorps	%xmm0, %xmm0	#
	movl	%eax, %esi	# D.8351,
	movq	%rdx, %rdi	# D.8354,
	call	FSet	#
	.loc 1 224 0
	movq	-24(%rbp), %rax	# hmm, tmp108
	movl	136(%rax), %eax	# hmm_4(D)->M, D.8351
	movq	-24(%rbp), %rdx	# hmm, tmp109
	movq	216(%rdx), %rdx	# hmm_4(D)->end, D.8354
	addq	$4, %rdx	#, D.8354
	xorps	%xmm0, %xmm0	#
	movl	%eax, %esi	# D.8351,
	movq	%rdx, %rdi	# D.8354,
	call	FSet	#
	.loc 1 225 0
	movl	$0, -4(%rbp)	#, k
	jmp	.L50	#
.L51:
	.loc 1 226 0 discriminator 2
	movl	-4(%rbp), %eax	# k, tmp111
	cltq
	addq	$20, %rax	#, tmp112
	leaq	0(,%rax,8), %rdx	#, tmp113
	movq	-24(%rbp), %rax	# hmm, tmp115
	addq	%rdx, %rax	# tmp113, tmp114
	addq	$12, %rax	#, D.8355
	xorps	%xmm0, %xmm0	#
	movl	$2, %esi	#,
	movq	%rax, %rdi	# D.8355,
	call	FSet	#
	.loc 1 225 0 discriminator 2
	addl	$1, -4(%rbp)	#, k
.L50:
	.loc 1 225 0 is_stmt 0 discriminator 1
	cmpl	$3, -4(%rbp)	#, k
	jle	.L51	#,
	.loc 1 227 0 is_stmt 1
	movq	-24(%rbp), %rax	# hmm, tmp116
	movl	456(%rax), %eax	# hmm_4(D)->flags, D.8351
	andl	$-2, %eax	#, D.8351
	movl	%eax, %edx	# D.8351, D.8351
	movq	-24(%rbp), %rax	# hmm, tmp117
	movl	%edx, 456(%rax)	# D.8351, hmm_4(D)->flags
	.loc 1 228 0
	movq	-24(%rbp), %rax	# hmm, tmp118
	movl	456(%rax), %eax	# hmm_4(D)->flags, D.8351
	andl	$-33, %eax	#, D.8351
	movl	%eax, %edx	# D.8351, D.8351
	movq	-24(%rbp), %rax	# hmm, tmp119
	movl	%edx, 456(%rax)	# D.8351, hmm_4(D)->flags
	.loc 1 229 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	ZeroPlan7, .-ZeroPlan7
	.globl	Plan7SetName
	.type	Plan7SetName, @function
Plan7SetName:
.LFB7:
	.loc 1 240 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# hmm, hmm
	movq	%rsi, -16(%rbp)	# name, name
	.loc 1 241 0
	movq	-8(%rbp), %rax	# hmm, tmp63
	movq	(%rax), %rax	# hmm_1(D)->name, D.8356
	testq	%rax, %rax	# D.8356
	je	.L53	#,
	.loc 1 241 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# hmm, tmp64
	movq	(%rax), %rax	# hmm_1(D)->name, D.8356
	movq	%rax, %rdi	# D.8356,
	call	free	#
.L53:
	.loc 1 242 0 is_stmt 1
	movq	-16(%rbp), %rax	# name, tmp65
	movq	%rax, %rdi	# tmp65,
	call	Strdup	#
	movq	-8(%rbp), %rdx	# hmm, tmp66
	movq	%rax, (%rdx)	# D.8356, hmm_1(D)->name
	.loc 1 243 0
	movq	-8(%rbp), %rax	# hmm, tmp67
	movq	(%rax), %rax	# hmm_1(D)->name, D.8356
	movq	%rax, %rdi	# D.8356,
	call	StringChop	#
	.loc 1 244 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	Plan7SetName, .-Plan7SetName
	.globl	Plan7SetAccession
	.type	Plan7SetAccession, @function
Plan7SetAccession:
.LFB8:
	.loc 1 253 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# hmm, hmm
	movq	%rsi, -16(%rbp)	# acc, acc
	.loc 1 254 0
	movq	-8(%rbp), %rax	# hmm, tmp65
	movq	8(%rax), %rax	# hmm_1(D)->acc, D.8357
	testq	%rax, %rax	# D.8357
	je	.L55	#,
	.loc 1 254 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# hmm, tmp66
	movq	8(%rax), %rax	# hmm_1(D)->acc, D.8357
	movq	%rax, %rdi	# D.8357,
	call	free	#
.L55:
	.loc 1 255 0 is_stmt 1
	movq	-16(%rbp), %rax	# acc, tmp67
	movq	%rax, %rdi	# tmp67,
	call	Strdup	#
	movq	-8(%rbp), %rdx	# hmm, tmp68
	movq	%rax, 8(%rdx)	# D.8357, hmm_1(D)->acc
	.loc 1 256 0
	movq	-8(%rbp), %rax	# hmm, tmp69
	movq	8(%rax), %rax	# hmm_1(D)->acc, D.8357
	movq	%rax, %rdi	# D.8357,
	call	StringChop	#
	.loc 1 257 0
	movq	-8(%rbp), %rax	# hmm, tmp70
	movl	456(%rax), %eax	# hmm_1(D)->flags, D.8358
	orb	$2, %ah	#, D.8358
	movl	%eax, %edx	# D.8358, D.8358
	movq	-8(%rbp), %rax	# hmm, tmp71
	movl	%edx, 456(%rax)	# D.8358, hmm_1(D)->flags
	.loc 1 258 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	Plan7SetAccession, .-Plan7SetAccession
	.globl	Plan7SetDescription
	.type	Plan7SetDescription, @function
Plan7SetDescription:
.LFB9:
	.loc 1 268 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# hmm, hmm
	movq	%rsi, -16(%rbp)	# desc, desc
	.loc 1 269 0
	movq	-8(%rbp), %rax	# hmm, tmp65
	movq	16(%rax), %rax	# hmm_1(D)->desc, D.8359
	testq	%rax, %rax	# D.8359
	je	.L57	#,
	.loc 1 269 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# hmm, tmp66
	movq	16(%rax), %rax	# hmm_1(D)->desc, D.8359
	movq	%rax, %rdi	# D.8359,
	call	free	#
.L57:
	.loc 1 270 0 is_stmt 1
	movq	-16(%rbp), %rax	# desc, tmp67
	movq	%rax, %rdi	# tmp67,
	call	Strdup	#
	movq	-8(%rbp), %rdx	# hmm, tmp68
	movq	%rax, 16(%rdx)	# D.8359, hmm_1(D)->desc
	.loc 1 271 0
	movq	-8(%rbp), %rax	# hmm, tmp69
	movq	16(%rax), %rax	# hmm_1(D)->desc, D.8359
	movq	%rax, %rdi	# D.8359,
	call	StringChop	#
	.loc 1 272 0
	movq	-8(%rbp), %rax	# hmm, tmp70
	movl	456(%rax), %eax	# hmm_1(D)->flags, D.8360
	orl	$2, %eax	#, D.8360
	movl	%eax, %edx	# D.8360, D.8360
	movq	-8(%rbp), %rax	# hmm, tmp71
	movl	%edx, 456(%rax)	# D.8360, hmm_1(D)->flags
	.loc 1 273 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	Plan7SetDescription, .-Plan7SetDescription
	.globl	Plan7ComlogAppend
	.type	Plan7ComlogAppend, @function
Plan7ComlogAppend:
.LFB10:
	.loc 1 283 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# hmm, hmm
	movl	%esi, -28(%rbp)	# argc, argc
	movq	%rdx, -40(%rbp)	# argv, argv
	.loc 1 288 0
	movl	-28(%rbp), %eax	# argc, tmp93
	movl	%eax, -8(%rbp)	# tmp93, len
	.loc 1 289 0
	movl	$0, -4(%rbp)	#, i
	jmp	.L59	#
.L60:
	.loc 1 290 0 discriminator 2
	movl	-4(%rbp), %eax	# i, tmp94
	cltq
	leaq	0(,%rax,8), %rdx	#, D.8361
	movq	-40(%rbp), %rax	# argv, tmp95
	addq	%rdx, %rax	# D.8361, D.8362
	movq	(%rax), %rax	# *_10, D.8363
	movq	%rax, %rdi	# D.8363,
	call	strlen	#
	movl	%eax, %edx	# D.8361, D.8364
	movl	-8(%rbp), %eax	# len, len.3
	addl	%edx, %eax	# D.8364, D.8364
	movl	%eax, -8(%rbp)	# D.8364, len
	.loc 1 289 0 discriminator 2
	addl	$1, -4(%rbp)	#, i
.L59:
	.loc 1 289 0 is_stmt 0 discriminator 1
	movl	-4(%rbp), %eax	# i, tmp96
	cmpl	-28(%rbp), %eax	# argc, tmp96
	jl	.L60	#,
	.loc 1 293 0 is_stmt 1
	movq	-24(%rbp), %rax	# hmm, tmp97
	movq	48(%rax), %rax	# hmm_18(D)->comlog, D.8363
	testq	%rax, %rax	# D.8363
	je	.L61	#,
	.loc 1 295 0
	movq	-24(%rbp), %rax	# hmm, tmp98
	movq	48(%rax), %rax	# hmm_18(D)->comlog, D.8363
	movq	%rax, %rdi	# D.8363,
	call	strlen	#
	movl	%eax, %edx	# D.8361, D.8364
	movl	-8(%rbp), %eax	# len, len.4
	addl	%edx, %eax	# D.8364, D.8364
	movl	%eax, -8(%rbp)	# D.8364, len
	.loc 1 296 0
	movl	-8(%rbp), %eax	# len, tmp99
	addl	$1, %eax	#, D.8365
	movslq	%eax, %rdx	# D.8365, D.8361
	movq	-24(%rbp), %rax	# hmm, tmp100
	movq	48(%rax), %rax	# hmm_18(D)->comlog, D.8363
	movq	%rdx, %rcx	# D.8361,
	movq	%rax, %rdx	# D.8363,
	movl	$296, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_realloc	#
	movq	-24(%rbp), %rdx	# hmm, tmp101
	movq	%rax, 48(%rdx)	# D.8366, hmm_18(D)->comlog
	jmp	.L62	#
.L61:
	.loc 1 300 0
	movl	-8(%rbp), %eax	# len, tmp102
	addl	$1, %eax	#, D.8365
	cltq
	movq	%rax, %rdx	# D.8361,
	movl	$300, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_malloc	#
	movq	-24(%rbp), %rdx	# hmm, tmp103
	movq	%rax, 48(%rdx)	# D.8366, hmm_18(D)->comlog
	.loc 1 301 0
	movq	-24(%rbp), %rax	# hmm, tmp104
	movq	48(%rax), %rax	# hmm_18(D)->comlog, D.8363
	movb	$0, (%rax)	#, *_33
.L62:
	.loc 1 305 0
	movq	-24(%rbp), %rax	# hmm, tmp105
	movq	48(%rax), %rsi	# hmm_18(D)->comlog, D.8363
	movq	%rsi, %rax	# D.8363, tmp106
	movq	$-1, %rcx	#, tmp110
	movq	%rax, %rdx	# tmp106, tmp109
	movl	$0, %eax	#, tmp111
	movq	%rdx, %rdi	# tmp109, tmp109
	repnz scasb
	movq	%rcx, %rax	# tmp107, tmp107
	notq	%rax	# tmp108
	subq	$1, %rax	#, D.8361
	addq	%rsi, %rax	# D.8363, D.8363
	movw	$10, (%rax)	#, MEM[(void *)_36]
	.loc 1 306 0
	movl	$0, -4(%rbp)	#, i
	jmp	.L63	#
.L65:
	.loc 1 308 0
	movl	-4(%rbp), %eax	# i, tmp112
	cltq
	leaq	0(,%rax,8), %rdx	#, D.8361
	movq	-40(%rbp), %rax	# argv, tmp113
	addq	%rdx, %rax	# D.8361, D.8362
	movq	(%rax), %rdx	# *_40, D.8363
	movq	-24(%rbp), %rax	# hmm, tmp114
	movq	48(%rax), %rax	# hmm_18(D)->comlog, D.8363
	movq	%rdx, %rsi	# D.8363,
	movq	%rax, %rdi	# D.8363,
	call	strcat	#
	.loc 1 309 0
	movl	-28(%rbp), %eax	# argc, tmp115
	subl	$1, %eax	#, D.8365
	cmpl	-4(%rbp), %eax	# i, D.8365
	jle	.L64	#,
	.loc 1 309 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# hmm, tmp116
	movq	48(%rax), %rsi	# hmm_18(D)->comlog, D.8363
	movq	%rsi, %rax	# D.8363, tmp117
	movq	$-1, %rcx	#, tmp121
	movq	%rax, %rdx	# tmp117, tmp120
	movl	$0, %eax	#, tmp122
	movq	%rdx, %rdi	# tmp120, tmp120
	repnz scasb
	movq	%rcx, %rax	# tmp118, tmp118
	notq	%rax	# tmp119
	subq	$1, %rax	#, D.8361
	addq	%rsi, %rax	# D.8363, D.8363
	movw	$32, (%rax)	#, MEM[(void *)_46]
.L64:
	.loc 1 306 0 is_stmt 1
	addl	$1, -4(%rbp)	#, i
.L63:
	.loc 1 306 0 is_stmt 0 discriminator 1
	movl	-4(%rbp), %eax	# i, tmp123
	cmpl	-28(%rbp), %eax	# argc, tmp123
	jl	.L65	#,
	.loc 1 311 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	Plan7ComlogAppend, .-Plan7ComlogAppend
	.globl	Plan7SetCtime
	.type	Plan7SetCtime, @function
Plan7SetCtime:
.LFB11:
	.loc 1 320 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# hmm, hmm
	.loc 1 321 0
	movl	$0, %edi	#,
	call	time	#
	movq	%rax, -8(%rbp)	# date.5, date
	.loc 1 322 0
	movq	-24(%rbp), %rax	# hmm, tmp65
	movq	64(%rax), %rax	# hmm_2(D)->ctime, D.8367
	testq	%rax, %rax	# D.8367
	je	.L67	#,
	.loc 1 322 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# hmm, tmp66
	movq	64(%rax), %rax	# hmm_2(D)->ctime, D.8367
	movq	%rax, %rdi	# D.8367,
	call	free	#
.L67:
	.loc 1 323 0 is_stmt 1
	leaq	-8(%rbp), %rax	#, tmp67
	movq	%rax, %rdi	# tmp67,
	call	ctime	#
	movq	%rax, %rdi	# D.8367,
	call	Strdup	#
	movq	-24(%rbp), %rdx	# hmm, tmp68
	movq	%rax, 64(%rdx)	# D.8367, hmm_2(D)->ctime
	.loc 1 324 0
	movq	-24(%rbp), %rax	# hmm, tmp69
	movq	64(%rax), %rax	# hmm_2(D)->ctime, D.8367
	movq	%rax, %rdi	# D.8367,
	call	StringChop	#
	.loc 1 325 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	Plan7SetCtime, .-Plan7SetCtime
	.globl	Plan7SetNullModel
	.type	Plan7SetNullModel, @function
Plan7SetNullModel:
.LFB12:
	.loc 1 335 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# hmm, hmm
	movq	%rsi, -32(%rbp)	# null, null
	movss	%xmm0, -36(%rbp)	# p1, p1
	.loc 1 337 0
	movl	$0, -4(%rbp)	#, x
	jmp	.L69	#
.L70:
	.loc 1 338 0 discriminator 2
	movl	-4(%rbp), %eax	# x, tmp64
	cltq
	leaq	0(,%rax,4), %rdx	#, D.8368
	movq	-32(%rbp), %rax	# null, tmp65
	addq	%rdx, %rax	# D.8368, D.8369
	movl	(%rax), %eax	# *_7, D.8370
	movq	-24(%rbp), %rdx	# hmm, tmp66
	movl	-4(%rbp), %ecx	# x, tmp68
	movslq	%ecx, %rcx	# tmp68, tmp67
	addq	$56, %rcx	#, tmp69
	movl	%eax, (%rdx,%rcx,4)	# D.8370, hmm_9(D)->null
	.loc 1 337 0 discriminator 2
	addl	$1, -4(%rbp)	#, x
.L69:
	.loc 1 337 0 is_stmt 0 discriminator 1
	movl	Alphabet_size(%rip), %eax	# Alphabet_size, Alphabet_size.6
	cmpl	%eax, -4(%rbp)	# Alphabet_size.6, x
	jl	.L70	#,
	.loc 1 339 0 is_stmt 1
	movq	-24(%rbp), %rdx	# hmm, tmp70
	movl	-36(%rbp), %eax	# p1, tmp71
	movl	%eax, 304(%rdx)	# tmp71, hmm_9(D)->p1
	.loc 1 340 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	Plan7SetNullModel, .-Plan7SetNullModel
	.globl	P7Logoddsify
	.type	P7Logoddsify, @function
P7Logoddsify:
.LFB13:
	.loc 1 389 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$72, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)	# hmm, hmm
	movl	%esi, -60(%rbp)	# viterbi_mode, viterbi_mode
	.loc 1 395 0
	movq	-56(%rbp), %rax	# hmm, tmp453
	movl	456(%rax), %eax	# hmm_23(D)->flags, D.8371
	andl	$1, %eax	#, D.8371
	testl	%eax, %eax	# D.8371
	je	.L72	#,
	.loc 1 395 0 is_stmt 0 discriminator 1
	jmp	.L71	#
.L72:
	.loc 1 399 0 is_stmt 1
	movl	$1, -36(%rbp)	#, k
	jmp	.L74	#
.L81:
	.loc 1 402 0
	movl	$0, -32(%rbp)	#, x
	jmp	.L75	#
.L77:
	.loc 1 404 0
	movq	-56(%rbp), %rax	# hmm, tmp454
	movq	320(%rax), %rax	# hmm_23(D)->msc, D.8372
	movl	-32(%rbp), %edx	# x, tmp455
	movslq	%edx, %rdx	# tmp455, D.8373
	salq	$3, %rdx	#, D.8373
	addq	%rdx, %rax	# D.8373, D.8372
	movq	(%rax), %rax	# *_33, D.8374
	movl	-36(%rbp), %edx	# k, tmp456
	movslq	%edx, %rdx	# tmp456, D.8373
	salq	$2, %rdx	#, D.8373
	leaq	(%rax,%rdx), %rbx	#, D.8374
	movq	-56(%rbp), %rax	# hmm, tmp457
	movl	-32(%rbp), %edx	# x, tmp459
	movslq	%edx, %rdx	# tmp459, tmp458
	addq	$56, %rdx	#, tmp460
	movl	(%rax,%rdx,4), %edx	# hmm_23(D)->null, D.8375
	movq	-56(%rbp), %rax	# hmm, tmp461
	movq	152(%rax), %rax	# hmm_23(D)->mat, D.8376
	movl	-36(%rbp), %ecx	# k, tmp462
	movslq	%ecx, %rcx	# tmp462, D.8373
	salq	$3, %rcx	#, D.8373
	addq	%rcx, %rax	# D.8373, D.8376
	movq	(%rax), %rax	# *_42, D.8377
	movl	-32(%rbp), %ecx	# x, tmp463
	movslq	%ecx, %rcx	# tmp463, D.8373
	salq	$2, %rcx	#, D.8373
	addq	%rcx, %rax	# D.8373, D.8377
	movl	(%rax), %eax	# *_46, D.8375
	movl	%edx, -72(%rbp)	# D.8375, %sfp
	movss	-72(%rbp), %xmm1	# %sfp,
	movl	%eax, -72(%rbp)	# D.8375, %sfp
	movss	-72(%rbp), %xmm0	# %sfp,
	call	Prob2Score	#
	movl	%eax, (%rbx)	# D.8371, *_37
	.loc 1 405 0
	movq	-56(%rbp), %rax	# hmm, tmp464
	movl	136(%rax), %eax	# hmm_23(D)->M, D.8371
	cmpl	-36(%rbp), %eax	# k, D.8371
	jle	.L76	#,
	.loc 1 406 0
	movq	-56(%rbp), %rax	# hmm, tmp465
	movq	328(%rax), %rax	# hmm_23(D)->isc, D.8372
	movl	-32(%rbp), %edx	# x, tmp466
	movslq	%edx, %rdx	# tmp466, D.8373
	salq	$3, %rdx	#, D.8373
	addq	%rdx, %rax	# D.8373, D.8372
	movq	(%rax), %rax	# *_53, D.8374
	movl	-36(%rbp), %edx	# k, tmp467
	movslq	%edx, %rdx	# tmp467, D.8373
	salq	$2, %rdx	#, D.8373
	leaq	(%rax,%rdx), %rbx	#, D.8374
	movq	-56(%rbp), %rax	# hmm, tmp468
	movl	-32(%rbp), %edx	# x, tmp470
	movslq	%edx, %rdx	# tmp470, tmp469
	addq	$56, %rdx	#, tmp471
	movl	(%rax,%rdx,4), %edx	# hmm_23(D)->null, D.8375
	movq	-56(%rbp), %rax	# hmm, tmp472
	movq	160(%rax), %rax	# hmm_23(D)->ins, D.8376
	movl	-36(%rbp), %ecx	# k, tmp473
	movslq	%ecx, %rcx	# tmp473, D.8373
	salq	$3, %rcx	#, D.8373
	addq	%rcx, %rax	# D.8373, D.8376
	movq	(%rax), %rax	# *_62, D.8377
	movl	-32(%rbp), %ecx	# x, tmp474
	movslq	%ecx, %rcx	# tmp474, D.8373
	salq	$2, %rcx	#, D.8373
	addq	%rcx, %rax	# D.8373, D.8377
	movl	(%rax), %eax	# *_66, D.8375
	movl	%edx, -72(%rbp)	# D.8375, %sfp
	movss	-72(%rbp), %xmm1	# %sfp,
	movl	%eax, -72(%rbp)	# D.8375, %sfp
	movss	-72(%rbp), %xmm0	# %sfp,
	call	Prob2Score	#
	movl	%eax, (%rbx)	# D.8371, *_57
.L76:
	.loc 1 402 0
	addl	$1, -32(%rbp)	#, x
.L75:
	.loc 1 402 0 is_stmt 0 discriminator 1
	movl	Alphabet_size(%rip), %eax	# Alphabet_size, Alphabet_size.7
	cmpl	%eax, -32(%rbp)	# Alphabet_size.7, x
	jl	.L77	#,
	.loc 1 409 0 is_stmt 1
	movl	Alphabet_size(%rip), %eax	# Alphabet_size, tmp475
	movl	%eax, -32(%rbp)	# tmp475, x
	jmp	.L78	#
.L80:
	.loc 1 411 0
	movq	-56(%rbp), %rax	# hmm, tmp476
	movq	320(%rax), %rax	# hmm_23(D)->msc, D.8372
	movl	-32(%rbp), %edx	# x, tmp477
	movslq	%edx, %rdx	# tmp477, D.8373
	salq	$3, %rdx	#, D.8373
	addq	%rdx, %rax	# D.8373, D.8372
	movq	(%rax), %rax	# *_75, D.8374
	movl	-36(%rbp), %edx	# k, tmp478
	movslq	%edx, %rdx	# tmp478, D.8373
	salq	$2, %rdx	#, D.8373
	leaq	(%rax,%rdx), %rbx	#, D.8374
	movq	-56(%rbp), %rax	# hmm, tmp479
	leaq	224(%rax), %rcx	#, D.8378
	movq	-56(%rbp), %rax	# hmm, tmp480
	movq	152(%rax), %rax	# hmm_23(D)->mat, D.8376
	movl	-36(%rbp), %edx	# k, tmp481
	movslq	%edx, %rdx	# tmp481, D.8373
	salq	$3, %rdx	#, D.8373
	addq	%rdx, %rax	# D.8373, D.8376
	movq	(%rax), %rax	# *_84, D.8377
	movl	-32(%rbp), %edx	# x, tmp482
	movq	%rcx, %rsi	# D.8378,
	movq	%rax, %rdi	# D.8377,
	call	DegenerateSymbolScore	#
	movl	%eax, (%rbx)	# D.8371, *_79
	.loc 1 412 0
	movq	-56(%rbp), %rax	# hmm, tmp483
	movl	136(%rax), %eax	# hmm_23(D)->M, D.8371
	cmpl	-36(%rbp), %eax	# k, D.8371
	jle	.L79	#,
	.loc 1 413 0
	movq	-56(%rbp), %rax	# hmm, tmp484
	movq	328(%rax), %rax	# hmm_23(D)->isc, D.8372
	movl	-32(%rbp), %edx	# x, tmp485
	movslq	%edx, %rdx	# tmp485, D.8373
	salq	$3, %rdx	#, D.8373
	addq	%rdx, %rax	# D.8373, D.8372
	movq	(%rax), %rax	# *_91, D.8374
	movl	-36(%rbp), %edx	# k, tmp486
	movslq	%edx, %rdx	# tmp486, D.8373
	salq	$2, %rdx	#, D.8373
	leaq	(%rax,%rdx), %rbx	#, D.8374
	movq	-56(%rbp), %rax	# hmm, tmp487
	leaq	224(%rax), %rcx	#, D.8378
	movq	-56(%rbp), %rax	# hmm, tmp488
	movq	160(%rax), %rax	# hmm_23(D)->ins, D.8376
	movl	-36(%rbp), %edx	# k, tmp489
	movslq	%edx, %rdx	# tmp489, D.8373
	salq	$3, %rdx	#, D.8373
	addq	%rdx, %rax	# D.8373, D.8376
	movq	(%rax), %rax	# *_100, D.8377
	movl	-32(%rbp), %edx	# x, tmp490
	movq	%rcx, %rsi	# D.8378,
	movq	%rax, %rdi	# D.8377,
	call	DegenerateSymbolScore	#
	movl	%eax, (%rbx)	# D.8371, *_95
.L79:
	.loc 1 409 0
	addl	$1, -32(%rbp)	#, x
.L78:
	.loc 1 409 0 is_stmt 0 discriminator 1
	movl	Alphabet_iupac(%rip), %eax	# Alphabet_iupac, Alphabet_iupac.8
	cmpl	%eax, -32(%rbp)	# Alphabet_iupac.8, x
	jl	.L80	#,
	.loc 1 399 0 is_stmt 1
	addl	$1, -36(%rbp)	#, k
.L74:
	.loc 1 399 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# hmm, tmp491
	movl	136(%rax), %eax	# hmm_23(D)->M, D.8371
	cmpl	-36(%rbp), %eax	# k, D.8371
	jge	.L81	#,
	.loc 1 433 0 is_stmt 1
	movl	$1, -36(%rbp)	#, k
	jmp	.L82	#
.L83:
	.loc 1 435 0 discriminator 2
	movq	-56(%rbp), %rax	# hmm, tmp492
	movq	312(%rax), %rax	# hmm_23(D)->tsc, D.8372
	movq	(%rax), %rax	# *_107, D.8374
	movl	-36(%rbp), %edx	# k, tmp493
	movslq	%edx, %rdx	# tmp493, D.8373
	salq	$2, %rdx	#, D.8373
	leaq	(%rax,%rdx), %rbx	#, D.8374
	movq	-56(%rbp), %rax	# hmm, tmp494
	movl	304(%rax), %edx	# hmm_23(D)->p1, D.8375
	movq	-56(%rbp), %rax	# hmm, tmp495
	movq	144(%rax), %rax	# hmm_23(D)->t, D.8376
	movl	-36(%rbp), %ecx	# k, tmp496
	movslq	%ecx, %rcx	# tmp496, D.8373
	salq	$3, %rcx	#, D.8373
	addq	%rcx, %rax	# D.8373, D.8376
	movq	(%rax), %rax	# *_116, D.8377
	movl	(%rax), %eax	# *_117, D.8375
	movl	%edx, -72(%rbp)	# D.8375, %sfp
	movss	-72(%rbp), %xmm1	# %sfp,
	movl	%eax, -72(%rbp)	# D.8375, %sfp
	movss	-72(%rbp), %xmm0	# %sfp,
	call	Prob2Score	#
	movl	%eax, (%rbx)	# D.8371, *_111
	.loc 1 436 0 discriminator 2
	movq	-56(%rbp), %rax	# hmm, tmp497
	movq	312(%rax), %rax	# hmm_23(D)->tsc, D.8372
	addq	$8, %rax	#, D.8372
	movq	(%rax), %rax	# *_121, D.8374
	movl	-36(%rbp), %edx	# k, tmp498
	movslq	%edx, %rdx	# tmp498, D.8373
	salq	$2, %rdx	#, D.8373
	leaq	(%rax,%rdx), %rbx	#, D.8374
	movq	-56(%rbp), %rax	# hmm, tmp499
	movl	304(%rax), %edx	# hmm_23(D)->p1, D.8375
	movq	-56(%rbp), %rax	# hmm, tmp500
	movq	144(%rax), %rax	# hmm_23(D)->t, D.8376
	movl	-36(%rbp), %ecx	# k, tmp501
	movslq	%ecx, %rcx	# tmp501, D.8373
	salq	$3, %rcx	#, D.8373
	addq	%rcx, %rax	# D.8373, D.8376
	movq	(%rax), %rax	# *_130, D.8377
	addq	$4, %rax	#, D.8377
	movl	(%rax), %eax	# *_132, D.8375
	movl	%edx, -72(%rbp)	# D.8375, %sfp
	movss	-72(%rbp), %xmm1	# %sfp,
	movl	%eax, -72(%rbp)	# D.8375, %sfp
	movss	-72(%rbp), %xmm0	# %sfp,
	call	Prob2Score	#
	movl	%eax, (%rbx)	# D.8371, *_125
	.loc 1 437 0 discriminator 2
	movq	-56(%rbp), %rax	# hmm, tmp502
	movq	312(%rax), %rax	# hmm_23(D)->tsc, D.8372
	addq	$16, %rax	#, D.8372
	movq	(%rax), %rax	# *_136, D.8374
	movl	-36(%rbp), %edx	# k, tmp503
	movslq	%edx, %rdx	# tmp503, D.8373
	salq	$2, %rdx	#, D.8373
	leaq	(%rax,%rdx), %rbx	#, D.8374
	movq	-56(%rbp), %rax	# hmm, tmp504
	movq	144(%rax), %rax	# hmm_23(D)->t, D.8376
	movl	-36(%rbp), %edx	# k, tmp505
	movslq	%edx, %rdx	# tmp505, D.8373
	salq	$3, %rdx	#, D.8373
	addq	%rdx, %rax	# D.8373, D.8376
	movq	(%rax), %rax	# *_144, D.8377
	addq	$8, %rax	#, D.8377
	movl	(%rax), %eax	# *_146, D.8375
	movss	.LC2(%rip), %xmm1	#,
	movl	%eax, -72(%rbp)	# D.8375, %sfp
	movss	-72(%rbp), %xmm0	# %sfp,
	call	Prob2Score	#
	movl	%eax, (%rbx)	# D.8371, *_140
	.loc 1 438 0 discriminator 2
	movq	-56(%rbp), %rax	# hmm, tmp506
	movq	312(%rax), %rax	# hmm_23(D)->tsc, D.8372
	addq	$24, %rax	#, D.8372
	movq	(%rax), %rax	# *_150, D.8374
	movl	-36(%rbp), %edx	# k, tmp507
	movslq	%edx, %rdx	# tmp507, D.8373
	salq	$2, %rdx	#, D.8373
	leaq	(%rax,%rdx), %rbx	#, D.8374
	movq	-56(%rbp), %rax	# hmm, tmp508
	movl	304(%rax), %edx	# hmm_23(D)->p1, D.8375
	movq	-56(%rbp), %rax	# hmm, tmp509
	movq	144(%rax), %rax	# hmm_23(D)->t, D.8376
	movl	-36(%rbp), %ecx	# k, tmp510
	movslq	%ecx, %rcx	# tmp510, D.8373
	salq	$3, %rcx	#, D.8373
	addq	%rcx, %rax	# D.8373, D.8376
	movq	(%rax), %rax	# *_159, D.8377
	addq	$12, %rax	#, D.8377
	movl	(%rax), %eax	# *_161, D.8375
	movl	%edx, -72(%rbp)	# D.8375, %sfp
	movss	-72(%rbp), %xmm1	# %sfp,
	movl	%eax, -72(%rbp)	# D.8375, %sfp
	movss	-72(%rbp), %xmm0	# %sfp,
	call	Prob2Score	#
	movl	%eax, (%rbx)	# D.8371, *_154
	.loc 1 439 0 discriminator 2
	movq	-56(%rbp), %rax	# hmm, tmp511
	movq	312(%rax), %rax	# hmm_23(D)->tsc, D.8372
	addq	$32, %rax	#, D.8372
	movq	(%rax), %rax	# *_165, D.8374
	movl	-36(%rbp), %edx	# k, tmp512
	movslq	%edx, %rdx	# tmp512, D.8373
	salq	$2, %rdx	#, D.8373
	leaq	(%rax,%rdx), %rbx	#, D.8374
	movq	-56(%rbp), %rax	# hmm, tmp513
	movl	304(%rax), %edx	# hmm_23(D)->p1, D.8375
	movq	-56(%rbp), %rax	# hmm, tmp514
	movq	144(%rax), %rax	# hmm_23(D)->t, D.8376
	movl	-36(%rbp), %ecx	# k, tmp515
	movslq	%ecx, %rcx	# tmp515, D.8373
	salq	$3, %rcx	#, D.8373
	addq	%rcx, %rax	# D.8373, D.8376
	movq	(%rax), %rax	# *_174, D.8377
	addq	$16, %rax	#, D.8377
	movl	(%rax), %eax	# *_176, D.8375
	movl	%edx, -72(%rbp)	# D.8375, %sfp
	movss	-72(%rbp), %xmm1	# %sfp,
	movl	%eax, -72(%rbp)	# D.8375, %sfp
	movss	-72(%rbp), %xmm0	# %sfp,
	call	Prob2Score	#
	movl	%eax, (%rbx)	# D.8371, *_169
	.loc 1 440 0 discriminator 2
	movq	-56(%rbp), %rax	# hmm, tmp516
	movq	312(%rax), %rax	# hmm_23(D)->tsc, D.8372
	addq	$40, %rax	#, D.8372
	movq	(%rax), %rax	# *_180, D.8374
	movl	-36(%rbp), %edx	# k, tmp517
	movslq	%edx, %rdx	# tmp517, D.8373
	salq	$2, %rdx	#, D.8373
	leaq	(%rax,%rdx), %rbx	#, D.8374
	movq	-56(%rbp), %rax	# hmm, tmp518
	movl	304(%rax), %edx	# hmm_23(D)->p1, D.8375
	movq	-56(%rbp), %rax	# hmm, tmp519
	movq	144(%rax), %rax	# hmm_23(D)->t, D.8376
	movl	-36(%rbp), %ecx	# k, tmp520
	movslq	%ecx, %rcx	# tmp520, D.8373
	salq	$3, %rcx	#, D.8373
	addq	%rcx, %rax	# D.8373, D.8376
	movq	(%rax), %rax	# *_189, D.8377
	addq	$20, %rax	#, D.8377
	movl	(%rax), %eax	# *_191, D.8375
	movl	%edx, -72(%rbp)	# D.8375, %sfp
	movss	-72(%rbp), %xmm1	# %sfp,
	movl	%eax, -72(%rbp)	# D.8375, %sfp
	movss	-72(%rbp), %xmm0	# %sfp,
	call	Prob2Score	#
	movl	%eax, (%rbx)	# D.8371, *_184
	.loc 1 441 0 discriminator 2
	movq	-56(%rbp), %rax	# hmm, tmp521
	movq	312(%rax), %rax	# hmm_23(D)->tsc, D.8372
	addq	$48, %rax	#, D.8372
	movq	(%rax), %rax	# *_195, D.8374
	movl	-36(%rbp), %edx	# k, tmp522
	movslq	%edx, %rdx	# tmp522, D.8373
	salq	$2, %rdx	#, D.8373
	leaq	(%rax,%rdx), %rbx	#, D.8374
	movq	-56(%rbp), %rax	# hmm, tmp523
	movq	144(%rax), %rax	# hmm_23(D)->t, D.8376
	movl	-36(%rbp), %edx	# k, tmp524
	movslq	%edx, %rdx	# tmp524, D.8373
	salq	$3, %rdx	#, D.8373
	addq	%rdx, %rax	# D.8373, D.8376
	movq	(%rax), %rax	# *_203, D.8377
	addq	$24, %rax	#, D.8377
	movl	(%rax), %eax	# *_205, D.8375
	movss	.LC2(%rip), %xmm1	#,
	movl	%eax, -72(%rbp)	# D.8375, %sfp
	movss	-72(%rbp), %xmm0	# %sfp,
	call	Prob2Score	#
	movl	%eax, (%rbx)	# D.8371, *_199
	.loc 1 433 0 discriminator 2
	addl	$1, -36(%rbp)	#, k
.L82:
	.loc 1 433 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# hmm, tmp525
	movl	136(%rax), %eax	# hmm_23(D)->M, D.8371
	cmpl	-36(%rbp), %eax	# k, D.8371
	jg	.L83	#,
	.loc 1 453 0 is_stmt 1
	movq	-56(%rbp), %rax	# hmm, tmp526
	movss	168(%rax), %xmm0	# hmm_23(D)->tbd1, D.8375
	xorps	%xmm1, %xmm1	# tmp527
	ucomiss	%xmm1, %xmm0	# tmp527, D.8375
	jbe	.L138	#,
	.loc 1 453 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# hmm, tmp528
	movss	168(%rax), %xmm0	# hmm_23(D)->tbd1, D.8375
	unpcklps	%xmm0, %xmm0	# D.8375, D.8375
	cvtps2pd	%xmm0, %xmm0	# D.8375, D.8379
	call	log	#
	unpcklpd	%xmm0, %xmm0	# D.8379
	cvtpd2ps	%xmm0, %xmm3	# D.8379, iftmp.9
	movss	%xmm3, -72(%rbp)	# iftmp.9, %sfp
	movl	-72(%rbp), %eax	# %sfp, iftmp.9
	jmp	.L86	#
.L138:
	.loc 1 453 0 discriminator 2
	movl	.LC3(%rip), %eax	#, iftmp.9
.L86:
	.loc 1 453 0 discriminator 3
	movl	%eax, -28(%rbp)	# iftmp.9, accum
	.loc 1 454 0 is_stmt 1 discriminator 3
	movl	$1, -36(%rbp)	#, k
	jmp	.L87	#
.L105:
	.loc 1 456 0
	movq	-56(%rbp), %rax	# hmm, tmp529
	movq	208(%rax), %rax	# hmm_23(D)->begin, D.8377
	movl	-36(%rbp), %edx	# k, tmp530
	movslq	%edx, %rdx	# tmp530, D.8373
	salq	$2, %rdx	#, D.8373
	addq	%rdx, %rax	# D.8373, D.8377
	movss	(%rax), %xmm0	# *_221, D.8375
	xorps	%xmm1, %xmm1	# tmp531
	ucomiss	%xmm1, %xmm0	# tmp531, D.8375
	jbe	.L139	#,
	.loc 1 456 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# hmm, tmp532
	movq	208(%rax), %rax	# hmm_23(D)->begin, D.8377
	movl	-36(%rbp), %edx	# k, tmp533
	movslq	%edx, %rdx	# tmp533, D.8373
	salq	$2, %rdx	#, D.8373
	addq	%rdx, %rax	# D.8373, D.8377
	movss	(%rax), %xmm0	# *_226, D.8375
	unpcklps	%xmm0, %xmm0	# D.8375, D.8375
	cvtps2pd	%xmm0, %xmm0	# D.8375, D.8379
	call	log	#
	unpcklpd	%xmm0, %xmm0	# D.8379
	cvtpd2ps	%xmm0, %xmm4	# D.8379, iftmp.10
	movss	%xmm4, -72(%rbp)	# iftmp.10, %sfp
	movl	-72(%rbp), %eax	# %sfp, iftmp.10
	jmp	.L90	#
.L139:
	.loc 1 456 0 discriminator 2
	movl	.LC3(%rip), %eax	#, iftmp.10
.L90:
	.loc 1 456 0 discriminator 3
	movl	%eax, -24(%rbp)	# iftmp.10, tbm
	.loc 1 459 0 is_stmt 1 discriminator 3
	cmpl	$1, -36(%rbp)	#, k
	jle	.L91	#,
	.loc 1 459 0 is_stmt 0 discriminator 1
	movss	-28(%rbp), %xmm0	# accum, tmp534
	ucomiss	.LC3(%rip), %xmm0	#, tmp534
	jbe	.L91	#,
	.loc 1 461 0 is_stmt 1
	movq	-56(%rbp), %rax	# hmm, tmp535
	movq	144(%rax), %rax	# hmm_23(D)->t, D.8376
	movl	-36(%rbp), %edx	# k, tmp536
	movslq	%edx, %rdx	# tmp536, D.8373
	salq	$3, %rdx	#, D.8373
	subq	$8, %rdx	#, D.8380
	addq	%rdx, %rax	# D.8380, D.8376
	movq	(%rax), %rax	# *_237, D.8377
	addq	$20, %rax	#, D.8377
	movss	(%rax), %xmm0	# *_239, D.8375
	xorps	%xmm1, %xmm1	# tmp537
	ucomiss	%xmm1, %xmm0	# tmp537, D.8375
	jbe	.L93	#,
	.loc 1 463 0
	cmpl	$0, -60(%rbp)	#, viterbi_mode
	je	.L95	#,
	.loc 1 463 0 is_stmt 0 discriminator 1
	movss	-24(%rbp), %xmm5	# tbm, D.8379
	cvtps2pd	%xmm5, %xmm5	# D.8379, D.8379
	movsd	%xmm5, -72(%rbp)	# D.8379, %sfp
	movss	-28(%rbp), %xmm6	# accum, D.8379
	cvtps2pd	%xmm6, %xmm6	# D.8379, D.8379
	movsd	%xmm6, -80(%rbp)	# D.8379, %sfp
	movq	-56(%rbp), %rax	# hmm, tmp538
	movq	144(%rax), %rax	# hmm_23(D)->t, D.8376
	movl	-36(%rbp), %edx	# k, tmp539
	movslq	%edx, %rdx	# tmp539, D.8373
	salq	$3, %rdx	#, D.8373
	subq	$8, %rdx	#, D.8380
	addq	%rdx, %rax	# D.8380, D.8376
	movq	(%rax), %rax	# *_248, D.8377
	addq	$20, %rax	#, D.8377
	movss	(%rax), %xmm0	# *_250, D.8375
	unpcklps	%xmm0, %xmm0	# D.8375, D.8375
	cvtps2pd	%xmm0, %xmm0	# D.8375, D.8379
	call	log	#
	addsd	-80(%rbp), %xmm0	# %sfp, D.8379
	movsd	-72(%rbp), %xmm5	# %sfp, D.8379
	ucomisd	%xmm0, %xmm5	# D.8379, D.8379
	jbe	.L140	#,
	movl	-24(%rbp), %eax	# tbm, iftmp.11
	jmp	.L98	#
.L140:
	.loc 1 463 0 discriminator 2
	movss	-28(%rbp), %xmm7	# accum, D.8379
	cvtps2pd	%xmm7, %xmm7	# D.8379, D.8379
	movsd	%xmm7, -72(%rbp)	# D.8379, %sfp
	movq	-56(%rbp), %rax	# hmm, tmp540
	movq	144(%rax), %rax	# hmm_23(D)->t, D.8376
	movl	-36(%rbp), %edx	# k, tmp541
	movslq	%edx, %rdx	# tmp541, D.8373
	salq	$3, %rdx	#, D.8373
	subq	$8, %rdx	#, D.8380
	addq	%rdx, %rax	# D.8380, D.8376
	movq	(%rax), %rax	# *_261, D.8377
	addq	$20, %rax	#, D.8377
	movss	(%rax), %xmm0	# *_263, D.8375
	unpcklps	%xmm0, %xmm0	# D.8375, D.8375
	cvtps2pd	%xmm0, %xmm0	# D.8375, D.8379
	call	log	#
	addsd	-72(%rbp), %xmm0	# %sfp, D.8379
	unpcklpd	%xmm0, %xmm0	# D.8379
	cvtpd2ps	%xmm0, %xmm3	# D.8379, iftmp.11
	movss	%xmm3, -72(%rbp)	# iftmp.11, %sfp
	movl	-72(%rbp), %eax	# %sfp, iftmp.11
.L98:
	.loc 1 463 0 discriminator 1
	movl	%eax, -24(%rbp)	# iftmp.11, tbm
	jmp	.L93	#
.L95:
	.loc 1 464 0 is_stmt 1
	movss	-28(%rbp), %xmm4	# accum, D.8379
	cvtps2pd	%xmm4, %xmm4	# D.8379, D.8379
	movsd	%xmm4, -72(%rbp)	# D.8379, %sfp
	movq	-56(%rbp), %rax	# hmm, tmp542
	movq	144(%rax), %rax	# hmm_23(D)->t, D.8376
	movl	-36(%rbp), %edx	# k, tmp543
	movslq	%edx, %rdx	# tmp543, D.8373
	salq	$3, %rdx	#, D.8373
	subq	$8, %rdx	#, D.8380
	addq	%rdx, %rax	# D.8380, D.8376
	movq	(%rax), %rax	# *_275, D.8377
	addq	$20, %rax	#, D.8377
	movss	(%rax), %xmm0	# *_277, D.8375
	unpcklps	%xmm0, %xmm0	# D.8375, D.8375
	cvtps2pd	%xmm0, %xmm0	# D.8375, D.8379
	call	log	#
	addsd	-72(%rbp), %xmm0	# %sfp, D.8379
	unpcklpd	%xmm0, %xmm0	# D.8379
	cvtpd2ps	%xmm0, %xmm0	# D.8379, D.8375
	movl	-24(%rbp), %eax	# tbm, tmp544
	movaps	%xmm0, %xmm1	# D.8375,
	movl	%eax, -72(%rbp)	# tmp544, %sfp
	movss	-72(%rbp), %xmm0	# %sfp,
	call	LogSum	#
	movss	%xmm0, -72(%rbp)	#, %sfp
	movl	-72(%rbp), %eax	# %sfp, tmp545
	movl	%eax, -24(%rbp)	# tmp545, tbm
.L93:
	.loc 1 467 0
	movq	-56(%rbp), %rax	# hmm, tmp546
	movq	144(%rax), %rax	# hmm_23(D)->t, D.8376
	movl	-36(%rbp), %edx	# k, tmp547
	movslq	%edx, %rdx	# tmp547, D.8373
	salq	$3, %rdx	#, D.8373
	subq	$8, %rdx	#, D.8380
	addq	%rdx, %rax	# D.8380, D.8376
	movq	(%rax), %rax	# *_288, D.8377
	addq	$24, %rax	#, D.8377
	movss	(%rax), %xmm0	# *_290, D.8375
	xorps	%xmm1, %xmm1	# tmp548
	ucomiss	%xmm1, %xmm0	# tmp548, D.8375
	jbe	.L141	#,
	.loc 1 467 0 is_stmt 0 discriminator 1
	movss	-28(%rbp), %xmm6	# accum, D.8379
	cvtps2pd	%xmm6, %xmm6	# D.8379, D.8379
	movsd	%xmm6, -72(%rbp)	# D.8379, %sfp
	movq	-56(%rbp), %rax	# hmm, tmp549
	movq	144(%rax), %rax	# hmm_23(D)->t, D.8376
	movl	-36(%rbp), %edx	# k, tmp550
	movslq	%edx, %rdx	# tmp550, D.8373
	salq	$3, %rdx	#, D.8373
	subq	$8, %rdx	#, D.8380
	addq	%rdx, %rax	# D.8380, D.8376
	movq	(%rax), %rax	# *_297, D.8377
	addq	$24, %rax	#, D.8377
	movss	(%rax), %xmm0	# *_299, D.8375
	unpcklps	%xmm0, %xmm0	# D.8375, D.8375
	cvtps2pd	%xmm0, %xmm0	# D.8375, D.8379
	call	log	#
	addsd	-72(%rbp), %xmm0	# %sfp, D.8379
	unpcklpd	%xmm0, %xmm0	# D.8379
	cvtpd2ps	%xmm0, %xmm7	# D.8379, iftmp.12
	movss	%xmm7, -72(%rbp)	# iftmp.12, %sfp
	movl	-72(%rbp), %eax	# %sfp, iftmp.12
	jmp	.L101	#
.L141:
	.loc 1 467 0 discriminator 2
	movl	.LC3(%rip), %eax	#, iftmp.12
.L101:
	.loc 1 467 0 discriminator 3
	movl	%eax, -28(%rbp)	# iftmp.12, accum
.L91:
	.loc 1 470 0 is_stmt 1
	movss	-24(%rbp), %xmm0	# tbm, tmp551
	ucomiss	.LC3(%rip), %xmm0	#, tmp551
	jbe	.L142	#,
	.loc 1 471 0
	movq	-56(%rbp), %rax	# hmm, tmp552
	movq	368(%rax), %rax	# hmm_23(D)->bsc, D.8374
	movl	-36(%rbp), %edx	# k, tmp553
	movslq	%edx, %rdx	# tmp553, D.8373
	salq	$2, %rdx	#, D.8373
	leaq	(%rax,%rdx), %rbx	#, D.8374
	movss	-24(%rbp), %xmm2	# tbm, D.8379
	cvtps2pd	%xmm2, %xmm2	# D.8379, D.8379
	movsd	%xmm2, -72(%rbp)	# D.8379, %sfp
	movq	-56(%rbp), %rax	# hmm, tmp554
	movss	304(%rax), %xmm0	# hmm_23(D)->p1, D.8375
	unpcklps	%xmm0, %xmm0	# D.8375, D.8375
	cvtps2pd	%xmm0, %xmm0	# D.8375, D.8379
	call	log	#
	movsd	-72(%rbp), %xmm2	# %sfp, D.8379
	subsd	%xmm0, %xmm2	# D.8379, D.8379
	movapd	%xmm2, %xmm0	# D.8379, D.8379
	movsd	.LC4(%rip), %xmm1	#, tmp555
	mulsd	%xmm1, %xmm0	# tmp555, D.8379
	movsd	.LC5(%rip), %xmm1	#, tmp556
	addsd	%xmm1, %xmm0	# tmp556, D.8379
	call	floor	#
	cvttsd2si	%xmm0, %eax	# D.8379, D.8371
	movl	%eax, (%rbx)	# D.8371, *_310
	jmp	.L104	#
.L142:
	.loc 1 473 0
	movq	-56(%rbp), %rax	# hmm, tmp557
	movq	368(%rax), %rax	# hmm_23(D)->bsc, D.8374
	movl	-36(%rbp), %edx	# k, tmp558
	movslq	%edx, %rdx	# tmp558, D.8373
	salq	$2, %rdx	#, D.8373
	addq	%rdx, %rax	# D.8373, D.8374
	movl	$-987654321, (%rax)	#, *_323
.L104:
	.loc 1 454 0
	addl	$1, -36(%rbp)	#, k
.L87:
	.loc 1 454 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# hmm, tmp559
	movl	136(%rax), %eax	# hmm_23(D)->M, D.8371
	cmpl	-36(%rbp), %eax	# k, D.8371
	jge	.L105	#,
	.loc 1 484 0 is_stmt 1
	movq	-56(%rbp), %rax	# hmm, tmp560
	movq	376(%rax), %rdx	# hmm_23(D)->esc, D.8374
	movq	-56(%rbp), %rax	# hmm, tmp561
	movl	136(%rax), %eax	# hmm_23(D)->M, D.8371
	cltq
	salq	$2, %rax	#, D.8373
	addq	%rdx, %rax	# D.8374, D.8374
	movl	$0, (%rax)	#, *_329
	.loc 1 485 0
	movl	.LC1(%rip), %eax	#, tmp562
	movl	%eax, -28(%rbp)	# tmp562, accum
	.loc 1 486 0
	movq	-56(%rbp), %rax	# hmm, tmp563
	movl	136(%rax), %eax	# hmm_23(D)->M, D.8371
	subl	$1, %eax	#, tmp564
	movl	%eax, -36(%rbp)	# tmp564, k
	jmp	.L106	#
.L124:
	.loc 1 488 0
	movq	-56(%rbp), %rax	# hmm, tmp565
	movq	216(%rax), %rax	# hmm_23(D)->end, D.8377
	movl	-36(%rbp), %edx	# k, tmp566
	movslq	%edx, %rdx	# tmp566, D.8373
	salq	$2, %rdx	#, D.8373
	addq	%rdx, %rax	# D.8373, D.8377
	movss	(%rax), %xmm0	# *_336, D.8375
	xorps	%xmm1, %xmm1	# tmp567
	ucomiss	%xmm1, %xmm0	# tmp567, D.8375
	jbe	.L143	#,
	.loc 1 488 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# hmm, tmp568
	movq	216(%rax), %rax	# hmm_23(D)->end, D.8377
	movl	-36(%rbp), %edx	# k, tmp569
	movslq	%edx, %rdx	# tmp569, D.8373
	salq	$2, %rdx	#, D.8373
	addq	%rdx, %rax	# D.8373, D.8377
	movss	(%rax), %xmm0	# *_341, D.8375
	unpcklps	%xmm0, %xmm0	# D.8375, D.8375
	cvtps2pd	%xmm0, %xmm0	# D.8375, D.8379
	call	log	#
	unpcklpd	%xmm0, %xmm0	# D.8379
	cvtpd2ps	%xmm0, %xmm3	# D.8379, iftmp.13
	movss	%xmm3, -72(%rbp)	# iftmp.13, %sfp
	movl	-72(%rbp), %eax	# %sfp, iftmp.13
	jmp	.L109	#
.L143:
	.loc 1 488 0 discriminator 2
	movl	.LC3(%rip), %eax	#, iftmp.13
.L109:
	.loc 1 488 0 discriminator 3
	movl	%eax, -20(%rbp)	# iftmp.13, tme
	.loc 1 489 0 is_stmt 1 discriminator 3
	movss	-28(%rbp), %xmm0	# accum, tmp570
	ucomiss	.LC3(%rip), %xmm0	#, tmp570
	jbe	.L110	#,
	.loc 1 491 0
	movq	-56(%rbp), %rax	# hmm, tmp571
	movq	144(%rax), %rax	# hmm_23(D)->t, D.8376
	movl	-36(%rbp), %edx	# k, tmp572
	movslq	%edx, %rdx	# tmp572, D.8373
	salq	$3, %rdx	#, D.8373
	addq	%rdx, %rax	# D.8373, D.8376
	movq	(%rax), %rax	# *_351, D.8377
	addq	$8, %rax	#, D.8377
	movss	(%rax), %xmm0	# *_353, D.8375
	xorps	%xmm1, %xmm1	# tmp573
	ucomiss	%xmm1, %xmm0	# tmp573, D.8375
	jbe	.L112	#,
	.loc 1 493 0
	cmpl	$0, -60(%rbp)	#, viterbi_mode
	je	.L114	#,
	.loc 1 493 0 is_stmt 0 discriminator 1
	movss	-20(%rbp), %xmm4	# tme, D.8379
	cvtps2pd	%xmm4, %xmm4	# D.8379, D.8379
	movsd	%xmm4, -72(%rbp)	# D.8379, %sfp
	movss	-28(%rbp), %xmm5	# accum, D.8379
	cvtps2pd	%xmm5, %xmm5	# D.8379, D.8379
	movsd	%xmm5, -80(%rbp)	# D.8379, %sfp
	movq	-56(%rbp), %rax	# hmm, tmp574
	movq	144(%rax), %rax	# hmm_23(D)->t, D.8376
	movl	-36(%rbp), %edx	# k, tmp575
	movslq	%edx, %rdx	# tmp575, D.8373
	salq	$3, %rdx	#, D.8373
	addq	%rdx, %rax	# D.8373, D.8376
	movq	(%rax), %rax	# *_360, D.8377
	addq	$8, %rax	#, D.8377
	movss	(%rax), %xmm0	# *_362, D.8375
	unpcklps	%xmm0, %xmm0	# D.8375, D.8375
	cvtps2pd	%xmm0, %xmm0	# D.8375, D.8379
	call	log	#
	addsd	-80(%rbp), %xmm0	# %sfp, D.8379
	movsd	-72(%rbp), %xmm4	# %sfp, D.8379
	ucomisd	%xmm0, %xmm4	# D.8379, D.8379
	jbe	.L144	#,
	movl	-20(%rbp), %eax	# tme, iftmp.14
	jmp	.L117	#
.L144:
	.loc 1 493 0 discriminator 2
	movss	-28(%rbp), %xmm6	# accum, D.8379
	cvtps2pd	%xmm6, %xmm6	# D.8379, D.8379
	movsd	%xmm6, -72(%rbp)	# D.8379, %sfp
	movq	-56(%rbp), %rax	# hmm, tmp576
	movq	144(%rax), %rax	# hmm_23(D)->t, D.8376
	movl	-36(%rbp), %edx	# k, tmp577
	movslq	%edx, %rdx	# tmp577, D.8373
	salq	$3, %rdx	#, D.8373
	addq	%rdx, %rax	# D.8373, D.8376
	movq	(%rax), %rax	# *_372, D.8377
	addq	$8, %rax	#, D.8377
	movss	(%rax), %xmm0	# *_374, D.8375
	unpcklps	%xmm0, %xmm0	# D.8375, D.8375
	cvtps2pd	%xmm0, %xmm0	# D.8375, D.8379
	call	log	#
	addsd	-72(%rbp), %xmm0	# %sfp, D.8379
	unpcklpd	%xmm0, %xmm0	# D.8379
	cvtpd2ps	%xmm0, %xmm7	# D.8379, iftmp.14
	movss	%xmm7, -72(%rbp)	# iftmp.14, %sfp
	movl	-72(%rbp), %eax	# %sfp, iftmp.14
.L117:
	movl	%eax, -20(%rbp)	# iftmp.14, tme
	jmp	.L112	#
.L114:
	.loc 1 494 0 is_stmt 1
	movss	-28(%rbp), %xmm2	# accum, D.8379
	cvtps2pd	%xmm2, %xmm2	# D.8379, D.8379
	movsd	%xmm2, -72(%rbp)	# D.8379, %sfp
	movq	-56(%rbp), %rax	# hmm, tmp578
	movq	144(%rax), %rax	# hmm_23(D)->t, D.8376
	movl	-36(%rbp), %edx	# k, tmp579
	movslq	%edx, %rdx	# tmp579, D.8373
	salq	$3, %rdx	#, D.8373
	addq	%rdx, %rax	# D.8373, D.8376
	movq	(%rax), %rax	# *_385, D.8377
	addq	$8, %rax	#, D.8377
	movss	(%rax), %xmm0	# *_387, D.8375
	unpcklps	%xmm0, %xmm0	# D.8375, D.8375
	cvtps2pd	%xmm0, %xmm0	# D.8375, D.8379
	call	log	#
	addsd	-72(%rbp), %xmm0	# %sfp, D.8379
	unpcklpd	%xmm0, %xmm0	# D.8379
	cvtpd2ps	%xmm0, %xmm0	# D.8379, D.8375
	movl	-20(%rbp), %eax	# tme, tmp580
	movaps	%xmm0, %xmm1	# D.8375,
	movl	%eax, -72(%rbp)	# tmp580, %sfp
	movss	-72(%rbp), %xmm0	# %sfp,
	call	LogSum	#
	movss	%xmm0, -72(%rbp)	#, %sfp
	movl	-72(%rbp), %eax	# %sfp, tmp581
	movl	%eax, -20(%rbp)	# tmp581, tme
.L112:
	.loc 1 496 0
	movq	-56(%rbp), %rax	# hmm, tmp582
	movq	144(%rax), %rax	# hmm_23(D)->t, D.8376
	movl	-36(%rbp), %edx	# k, tmp583
	movslq	%edx, %rdx	# tmp583, D.8373
	salq	$3, %rdx	#, D.8373
	addq	%rdx, %rax	# D.8373, D.8376
	movq	(%rax), %rax	# *_397, D.8377
	addq	$24, %rax	#, D.8377
	movss	(%rax), %xmm0	# *_399, D.8375
	xorps	%xmm1, %xmm1	# tmp584
	ucomiss	%xmm1, %xmm0	# tmp584, D.8375
	jbe	.L145	#,
	.loc 1 496 0 is_stmt 0 discriminator 1
	movss	-28(%rbp), %xmm3	# accum, D.8379
	cvtps2pd	%xmm3, %xmm3	# D.8379, D.8379
	movsd	%xmm3, -72(%rbp)	# D.8379, %sfp
	movq	-56(%rbp), %rax	# hmm, tmp585
	movq	144(%rax), %rax	# hmm_23(D)->t, D.8376
	movl	-36(%rbp), %edx	# k, tmp586
	movslq	%edx, %rdx	# tmp586, D.8373
	salq	$3, %rdx	#, D.8373
	addq	%rdx, %rax	# D.8373, D.8376
	movq	(%rax), %rax	# *_405, D.8377
	addq	$24, %rax	#, D.8377
	movss	(%rax), %xmm0	# *_407, D.8375
	unpcklps	%xmm0, %xmm0	# D.8375, D.8375
	cvtps2pd	%xmm0, %xmm0	# D.8375, D.8379
	call	log	#
	addsd	-72(%rbp), %xmm0	# %sfp, D.8379
	unpcklpd	%xmm0, %xmm0	# D.8379
	cvtpd2ps	%xmm0, %xmm5	# D.8379, iftmp.15
	movss	%xmm5, -72(%rbp)	# iftmp.15, %sfp
	movl	-72(%rbp), %eax	# %sfp, iftmp.15
	jmp	.L120	#
.L145:
	.loc 1 496 0 discriminator 2
	movl	.LC3(%rip), %eax	#, iftmp.15
.L120:
	.loc 1 496 0 discriminator 3
	movl	%eax, -28(%rbp)	# iftmp.15, accum
.L110:
	.loc 1 499 0 is_stmt 1
	movq	-56(%rbp), %rax	# hmm, tmp587
	movq	376(%rax), %rax	# hmm_23(D)->esc, D.8374
	movl	-36(%rbp), %edx	# k, tmp588
	movslq	%edx, %rdx	# tmp588, D.8373
	salq	$2, %rdx	#, D.8373
	leaq	(%rax,%rdx), %rbx	#, D.8374
	movss	-20(%rbp), %xmm0	# tme, tmp589
	ucomiss	.LC3(%rip), %xmm0	#, tmp589
	jbe	.L146	#,
	.loc 1 499 0 is_stmt 0 discriminator 1
	movss	-20(%rbp), %xmm0	# tme, D.8379
	cvtps2pd	%xmm0, %xmm0	# D.8379, D.8379
	movsd	.LC4(%rip), %xmm1	#, tmp590
	mulsd	%xmm1, %xmm0	# tmp590, D.8379
	movsd	.LC5(%rip), %xmm1	#, tmp591
	addsd	%xmm1, %xmm0	# tmp591, D.8379
	call	floor	#
	cvttsd2si	%xmm0, %eax	# D.8379, iftmp.16
	jmp	.L123	#
.L146:
	.loc 1 499 0 discriminator 2
	movl	$-987654321, %eax	#, iftmp.16
.L123:
	.loc 1 499 0 discriminator 3
	movl	%eax, (%rbx)	# iftmp.16, *_418
	.loc 1 486 0 is_stmt 1 discriminator 3
	subl	$1, -36(%rbp)	#, k
.L106:
	.loc 1 486 0 is_stmt 0 discriminator 1
	cmpl	$0, -36(%rbp)	#, k
	jg	.L124	#,
	.loc 1 503 0 is_stmt 1
	movq	-56(%rbp), %rax	# hmm, tmp592
	movl	304(%rax), %edx	# hmm_23(D)->p1, D.8375
	movq	-56(%rbp), %rax	# hmm, tmp593
	movl	176(%rax), %eax	# hmm_23(D)->xt, D.8375
	movl	%edx, -72(%rbp)	# D.8375, %sfp
	movss	-72(%rbp), %xmm1	# %sfp,
	movl	%eax, -72(%rbp)	# D.8375, %sfp
	movss	-72(%rbp), %xmm0	# %sfp,
	call	Prob2Score	#
	movq	-56(%rbp), %rdx	# hmm, tmp594
	movl	%eax, 340(%rdx)	# D.8371, hmm_23(D)->xsc
	.loc 1 504 0
	movq	-56(%rbp), %rax	# hmm, tmp595
	movl	172(%rax), %eax	# hmm_23(D)->xt, D.8375
	movss	.LC2(%rip), %xmm1	#,
	movl	%eax, -72(%rbp)	# D.8375, %sfp
	movss	-72(%rbp), %xmm0	# %sfp,
	call	Prob2Score	#
	movq	-56(%rbp), %rdx	# hmm, tmp596
	movl	%eax, 336(%rdx)	# D.8371, hmm_23(D)->xsc
	.loc 1 505 0
	movq	-56(%rbp), %rax	# hmm, tmp597
	movl	184(%rax), %eax	# hmm_23(D)->xt, D.8375
	movss	.LC2(%rip), %xmm1	#,
	movl	%eax, -72(%rbp)	# D.8375, %sfp
	movss	-72(%rbp), %xmm0	# %sfp,
	call	Prob2Score	#
	movq	-56(%rbp), %rdx	# hmm, tmp598
	movl	%eax, 348(%rdx)	# D.8371, hmm_23(D)->xsc
	.loc 1 506 0
	movq	-56(%rbp), %rax	# hmm, tmp599
	movl	180(%rax), %eax	# hmm_23(D)->xt, D.8375
	movss	.LC2(%rip), %xmm1	#,
	movl	%eax, -72(%rbp)	# D.8375, %sfp
	movss	-72(%rbp), %xmm0	# %sfp,
	call	Prob2Score	#
	movq	-56(%rbp), %rdx	# hmm, tmp600
	movl	%eax, 344(%rdx)	# D.8371, hmm_23(D)->xsc
	.loc 1 507 0
	movq	-56(%rbp), %rax	# hmm, tmp601
	movl	304(%rax), %edx	# hmm_23(D)->p1, D.8375
	movq	-56(%rbp), %rax	# hmm, tmp602
	movl	192(%rax), %eax	# hmm_23(D)->xt, D.8375
	movl	%edx, -72(%rbp)	# D.8375, %sfp
	movss	-72(%rbp), %xmm1	# %sfp,
	movl	%eax, -72(%rbp)	# D.8375, %sfp
	movss	-72(%rbp), %xmm0	# %sfp,
	call	Prob2Score	#
	movq	-56(%rbp), %rdx	# hmm, tmp603
	movl	%eax, 356(%rdx)	# D.8371, hmm_23(D)->xsc
	.loc 1 508 0
	movq	-56(%rbp), %rax	# hmm, tmp604
	movss	304(%rax), %xmm1	# hmm_23(D)->p1, D.8375
	movss	.LC2(%rip), %xmm0	#, tmp605
	subss	%xmm1, %xmm0	# D.8375, D.8375
	movq	-56(%rbp), %rax	# hmm, tmp606
	movl	188(%rax), %eax	# hmm_23(D)->xt, D.8375
	movaps	%xmm0, %xmm1	# D.8375,
	movl	%eax, -72(%rbp)	# D.8375, %sfp
	movss	-72(%rbp), %xmm0	# %sfp,
	call	Prob2Score	#
	movq	-56(%rbp), %rdx	# hmm, tmp607
	movl	%eax, 352(%rdx)	# D.8371, hmm_23(D)->xsc
	.loc 1 509 0
	movq	-56(%rbp), %rax	# hmm, tmp608
	movl	304(%rax), %edx	# hmm_23(D)->p1, D.8375
	movq	-56(%rbp), %rax	# hmm, tmp609
	movl	200(%rax), %eax	# hmm_23(D)->xt, D.8375
	movl	%edx, -72(%rbp)	# D.8375, %sfp
	movss	-72(%rbp), %xmm1	# %sfp,
	movl	%eax, -72(%rbp)	# D.8375, %sfp
	movss	-72(%rbp), %xmm0	# %sfp,
	call	Prob2Score	#
	movq	-56(%rbp), %rdx	# hmm, tmp610
	movl	%eax, 364(%rdx)	# D.8371, hmm_23(D)->xsc
	.loc 1 510 0
	movq	-56(%rbp), %rax	# hmm, tmp611
	movl	196(%rax), %eax	# hmm_23(D)->xt, D.8375
	movss	.LC2(%rip), %xmm1	#,
	movl	%eax, -72(%rbp)	# D.8375, %sfp
	movss	-72(%rbp), %xmm0	# %sfp,
	call	Prob2Score	#
	movq	-56(%rbp), %rdx	# hmm, tmp612
	movl	%eax, 360(%rdx)	# D.8371, hmm_23(D)->xsc
	.loc 1 512 0
	movq	-56(%rbp), %rax	# hmm, tmp613
	movl	456(%rax), %eax	# hmm_23(D)->flags, D.8371
	orl	$1, %eax	#, D.8371
	movl	%eax, %edx	# D.8371, D.8371
	movq	-56(%rbp), %rax	# hmm, tmp614
	movl	%edx, 456(%rax)	# D.8371, hmm_23(D)->flags
.L71:
	.loc 1 513 0
	addq	$72, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	P7Logoddsify, .-P7Logoddsify
	.globl	Plan7Renormalize
	.type	Plan7Renormalize, @function
Plan7Renormalize:
.LFB14:
	.loc 1 530 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# hmm, hmm
	.loc 1 536 0
	movl	$1, -12(%rbp)	#, k
	jmp	.L148	#
.L149:
	.loc 1 537 0 discriminator 2
	movl	Alphabet_size(%rip), %edx	# Alphabet_size, Alphabet_size.17
	movq	-24(%rbp), %rax	# hmm, tmp138
	movq	152(%rax), %rax	# hmm_6(D)->mat, D.8383
	movl	-12(%rbp), %ecx	# k, tmp139
	movslq	%ecx, %rcx	# tmp139, D.8384
	salq	$3, %rcx	#, D.8384
	addq	%rcx, %rax	# D.8384, D.8383
	movq	(%rax), %rax	# *_12, D.8385
	movl	%edx, %esi	# Alphabet_size.17,
	movq	%rax, %rdi	# D.8385,
	call	FNorm	#
	.loc 1 536 0 discriminator 2
	addl	$1, -12(%rbp)	#, k
.L148:
	.loc 1 536 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# hmm, tmp140
	movl	136(%rax), %eax	# hmm_6(D)->M, D.8382
	cmpl	-12(%rbp), %eax	# k, D.8382
	jge	.L149	#,
	.loc 1 539 0 is_stmt 1
	movl	$1, -12(%rbp)	#, k
	jmp	.L150	#
.L151:
	.loc 1 540 0 discriminator 2
	movl	Alphabet_size(%rip), %edx	# Alphabet_size, Alphabet_size.18
	movq	-24(%rbp), %rax	# hmm, tmp141
	movq	160(%rax), %rax	# hmm_6(D)->ins, D.8383
	movl	-12(%rbp), %ecx	# k, tmp142
	movslq	%ecx, %rcx	# tmp142, D.8384
	salq	$3, %rcx	#, D.8384
	addq	%rcx, %rax	# D.8384, D.8383
	movq	(%rax), %rax	# *_21, D.8385
	movl	%edx, %esi	# Alphabet_size.18,
	movq	%rax, %rdi	# D.8385,
	call	FNorm	#
	.loc 1 539 0 discriminator 2
	addl	$1, -12(%rbp)	#, k
.L150:
	.loc 1 539 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# hmm, tmp143
	movl	136(%rax), %eax	# hmm_6(D)->M, D.8382
	cmpl	-12(%rbp), %eax	# k, D.8382
	jg	.L151	#,
	.loc 1 542 0 is_stmt 1
	movq	-24(%rbp), %rax	# hmm, tmp144
	movl	136(%rax), %eax	# hmm_6(D)->M, D.8382
	movq	-24(%rbp), %rdx	# hmm, tmp145
	movq	208(%rdx), %rdx	# hmm_6(D)->begin, D.8385
	addq	$4, %rdx	#, D.8385
	movl	%eax, %esi	# D.8382,
	movq	%rdx, %rdi	# D.8385,
	call	FSum	#
	movq	-24(%rbp), %rax	# hmm, tmp146
	movss	168(%rax), %xmm1	# hmm_6(D)->tbd1, D.8386
	addss	%xmm1, %xmm0	# D.8386, tmp147
	movss	%xmm0, -4(%rbp)	# tmp147, d
	.loc 1 543 0
	movss	.LC2(%rip), %xmm0	#, tmp148
	divss	-4(%rbp), %xmm0	# d, D.8386
	movq	-24(%rbp), %rax	# hmm, tmp149
	movl	136(%rax), %eax	# hmm_6(D)->M, D.8382
	movq	-24(%rbp), %rdx	# hmm, tmp150
	movq	208(%rdx), %rdx	# hmm_6(D)->begin, D.8385
	addq	$4, %rdx	#, D.8385
	movl	%eax, %esi	# D.8382,
	movq	%rdx, %rdi	# D.8385,
	call	FScale	#
	.loc 1 544 0
	movq	-24(%rbp), %rax	# hmm, tmp151
	movss	168(%rax), %xmm0	# hmm_6(D)->tbd1, D.8386
	divss	-4(%rbp), %xmm0	# d, D.8386
	movq	-24(%rbp), %rax	# hmm, tmp152
	movss	%xmm0, 168(%rax)	# D.8386, hmm_6(D)->tbd1
	.loc 1 546 0
	movl	$1, -12(%rbp)	#, k
	jmp	.L152	#
.L153:
	.loc 1 548 0 discriminator 2
	movq	-24(%rbp), %rax	# hmm, tmp153
	movq	144(%rax), %rax	# hmm_6(D)->t, D.8383
	movl	-12(%rbp), %edx	# k, tmp154
	movslq	%edx, %rdx	# tmp154, D.8384
	salq	$3, %rdx	#, D.8384
	addq	%rdx, %rax	# D.8384, D.8383
	movq	(%rax), %rax	# *_41, D.8385
	movl	$3, %esi	#,
	movq	%rax, %rdi	# D.8385,
	call	FSum	#
	movq	-24(%rbp), %rax	# hmm, tmp155
	movq	216(%rax), %rax	# hmm_6(D)->end, D.8385
	movl	-12(%rbp), %edx	# k, tmp156
	movslq	%edx, %rdx	# tmp156, D.8384
	salq	$2, %rdx	#, D.8384
	addq	%rdx, %rax	# D.8384, D.8385
	movss	(%rax), %xmm1	# *_47, D.8386
	addss	%xmm1, %xmm0	# D.8386, tmp157
	movss	%xmm0, -4(%rbp)	# tmp157, d
	.loc 1 549 0 discriminator 2
	movss	.LC2(%rip), %xmm0	#, tmp158
	divss	-4(%rbp), %xmm0	# d, D.8386
	movq	-24(%rbp), %rax	# hmm, tmp159
	movq	144(%rax), %rax	# hmm_6(D)->t, D.8383
	movl	-12(%rbp), %edx	# k, tmp160
	movslq	%edx, %rdx	# tmp160, D.8384
	salq	$3, %rdx	#, D.8384
	addq	%rdx, %rax	# D.8384, D.8383
	movq	(%rax), %rax	# *_54, D.8385
	movl	$3, %esi	#,
	movq	%rax, %rdi	# D.8385,
	call	FScale	#
	.loc 1 550 0 discriminator 2
	movq	-24(%rbp), %rax	# hmm, tmp161
	movq	216(%rax), %rax	# hmm_6(D)->end, D.8385
	movl	-12(%rbp), %edx	# k, tmp162
	movslq	%edx, %rdx	# tmp162, D.8384
	salq	$2, %rdx	#, D.8384
	addq	%rax, %rdx	# D.8385, D.8385
	movq	-24(%rbp), %rax	# hmm, tmp163
	movq	216(%rax), %rax	# hmm_6(D)->end, D.8385
	movl	-12(%rbp), %ecx	# k, tmp164
	movslq	%ecx, %rcx	# tmp164, D.8384
	salq	$2, %rcx	#, D.8384
	addq	%rcx, %rax	# D.8384, D.8385
	movss	(%rax), %xmm0	# *_63, D.8386
	divss	-4(%rbp), %xmm0	# d, D.8386
	movss	%xmm0, (%rdx)	# D.8386, *_59
	.loc 1 552 0 discriminator 2
	movq	-24(%rbp), %rax	# hmm, tmp165
	movq	144(%rax), %rax	# hmm_6(D)->t, D.8383
	movl	-12(%rbp), %edx	# k, tmp166
	movslq	%edx, %rdx	# tmp166, D.8384
	salq	$3, %rdx	#, D.8384
	addq	%rdx, %rax	# D.8384, D.8383
	movq	(%rax), %rax	# *_69, D.8385
	addq	$12, %rax	#, D.8385
	movl	$2, %esi	#,
	movq	%rax, %rdi	# D.8385,
	call	FNorm	#
	.loc 1 553 0 discriminator 2
	movq	-24(%rbp), %rax	# hmm, tmp167
	movq	144(%rax), %rax	# hmm_6(D)->t, D.8383
	movl	-12(%rbp), %edx	# k, tmp168
	movslq	%edx, %rdx	# tmp168, D.8384
	salq	$3, %rdx	#, D.8384
	addq	%rdx, %rax	# D.8384, D.8383
	movq	(%rax), %rax	# *_75, D.8385
	addq	$20, %rax	#, D.8385
	movl	$2, %esi	#,
	movq	%rax, %rdi	# D.8385,
	call	FNorm	#
	.loc 1 546 0 discriminator 2
	addl	$1, -12(%rbp)	#, k
.L152:
	.loc 1 546 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# hmm, tmp169
	movl	136(%rax), %eax	# hmm_6(D)->M, D.8382
	cmpl	-12(%rbp), %eax	# k, D.8382
	jg	.L153	#,
	.loc 1 556 0 is_stmt 1
	movl	Alphabet_size(%rip), %eax	# Alphabet_size, Alphabet_size.19
	movq	-24(%rbp), %rdx	# hmm, tmp170
	addq	$224, %rdx	#, D.8387
	movl	%eax, %esi	# Alphabet_size.19,
	movq	%rdx, %rdi	# D.8387,
	call	FNorm	#
	.loc 1 558 0
	movl	$0, -8(%rbp)	#, st
	jmp	.L154	#
.L155:
	.loc 1 559 0 discriminator 2
	movl	-8(%rbp), %eax	# st, tmp172
	cltq
	addq	$20, %rax	#, tmp173
	leaq	0(,%rax,8), %rdx	#, tmp174
	movq	-24(%rbp), %rax	# hmm, tmp176
	addq	%rdx, %rax	# tmp174, tmp175
	addq	$12, %rax	#, D.8388
	movl	$2, %esi	#,
	movq	%rax, %rdi	# D.8388,
	call	FNorm	#
	.loc 1 558 0 discriminator 2
	addl	$1, -8(%rbp)	#, st
.L154:
	.loc 1 558 0 is_stmt 0 discriminator 1
	cmpl	$3, -8(%rbp)	#, st
	jle	.L155	#,
	.loc 1 562 0 is_stmt 1
	movq	-24(%rbp), %rax	# hmm, tmp177
	movq	144(%rax), %rax	# hmm_6(D)->t, D.8383
	movq	(%rax), %rax	# *_84, D.8385
	leaq	20(%rax), %rcx	#, D.8385
	movq	-24(%rbp), %rax	# hmm, tmp178
	movq	144(%rax), %rax	# hmm_6(D)->t, D.8383
	movq	(%rax), %rax	# *_87, D.8385
	leaq	24(%rax), %rdx	#, D.8385
	movl	.LC1(%rip), %eax	#, tmp179
	movl	%eax, (%rdx)	# tmp179, *_89
	movl	(%rdx), %eax	# *_89, D.8386
	movl	%eax, (%rcx)	# D.8386, *_86
	.loc 1 564 0
	movq	-24(%rbp), %rax	# hmm, tmp180
	movl	456(%rax), %eax	# hmm_6(D)->flags, D.8382
	andl	$-2, %eax	#, D.8382
	movl	%eax, %edx	# D.8382, D.8382
	movq	-24(%rbp), %rax	# hmm, tmp181
	movl	%edx, 456(%rax)	# D.8382, hmm_6(D)->flags
	.loc 1 565 0
	movq	-24(%rbp), %rax	# hmm, tmp182
	movl	456(%rax), %eax	# hmm_6(D)->flags, D.8382
	orl	$32, %eax	#, D.8382
	movl	%eax, %edx	# D.8382, D.8382
	movq	-24(%rbp), %rax	# hmm, tmp183
	movl	%edx, 456(%rax)	# D.8382, hmm_6(D)->flags
	.loc 1 566 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	Plan7Renormalize, .-Plan7Renormalize
	.globl	Plan7RenormalizeExits
	.type	Plan7RenormalizeExits, @function
Plan7RenormalizeExits:
.LFB15:
	.loc 1 582 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# hmm, hmm
	.loc 1 586 0
	movl	$1, -8(%rbp)	#, k
	jmp	.L157	#
.L158:
	.loc 1 588 0 discriminator 2
	movq	-24(%rbp), %rax	# hmm, tmp78
	movq	144(%rax), %rax	# hmm_3(D)->t, D.8390
	movl	-8(%rbp), %edx	# k, tmp79
	movslq	%edx, %rdx	# tmp79, D.8391
	salq	$3, %rdx	#, D.8391
	addq	%rdx, %rax	# D.8391, D.8390
	movq	(%rax), %rax	# *_8, D.8392
	movl	$3, %esi	#,
	movq	%rax, %rdi	# D.8392,
	call	FSum	#
	movss	%xmm0, -28(%rbp)	#, %sfp
	movl	-28(%rbp), %eax	# %sfp, tmp80
	movl	%eax, -4(%rbp)	# tmp80, d
	.loc 1 589 0 discriminator 2
	movq	-24(%rbp), %rax	# hmm, tmp81
	movq	216(%rax), %rax	# hmm_3(D)->end, D.8392
	movl	-8(%rbp), %edx	# k, tmp82
	movslq	%edx, %rdx	# tmp82, D.8391
	salq	$2, %rdx	#, D.8391
	addq	%rdx, %rax	# D.8391, D.8392
	movss	(%rax), %xmm0	# *_14, D.8393
	mulss	-4(%rbp), %xmm0	# d, D.8393
	addss	-4(%rbp), %xmm0	# d, D.8393
	movss	.LC2(%rip), %xmm1	#, tmp83
	divss	%xmm0, %xmm1	# D.8393, D.8393
	movaps	%xmm1, %xmm0	# D.8393, D.8393
	movq	-24(%rbp), %rax	# hmm, tmp84
	movq	144(%rax), %rax	# hmm_3(D)->t, D.8390
	movl	-8(%rbp), %edx	# k, tmp85
	movslq	%edx, %rdx	# tmp85, D.8391
	salq	$3, %rdx	#, D.8391
	addq	%rdx, %rax	# D.8391, D.8390
	movq	(%rax), %rax	# *_22, D.8392
	movl	$3, %esi	#,
	movq	%rax, %rdi	# D.8392,
	call	FScale	#
	.loc 1 586 0 discriminator 2
	addl	$1, -8(%rbp)	#, k
.L157:
	.loc 1 586 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# hmm, tmp86
	movl	136(%rax), %eax	# hmm_3(D)->M, D.8389
	cmpl	-8(%rbp), %eax	# k, D.8389
	jg	.L158	#,
	.loc 1 591 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	Plan7RenormalizeExits, .-Plan7RenormalizeExits
	.globl	Plan7NakedConfig
	.type	Plan7NakedConfig, @function
Plan7NakedConfig:
.LFB16:
	.loc 1 634 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# hmm, hmm
	.loc 1 635 0
	movq	-8(%rbp), %rdx	# hmm, tmp78
	movl	.LC2(%rip), %eax	#, tmp79
	movl	%eax, 172(%rdx)	# tmp79, hmm_1(D)->xt
	.loc 1 636 0
	movq	-8(%rbp), %rdx	# hmm, tmp80
	movl	.LC1(%rip), %eax	#, tmp81
	movl	%eax, 176(%rdx)	# tmp81, hmm_1(D)->xt
	.loc 1 637 0
	movq	-8(%rbp), %rdx	# hmm, tmp82
	movl	.LC2(%rip), %eax	#, tmp83
	movl	%eax, 180(%rdx)	# tmp83, hmm_1(D)->xt
	.loc 1 638 0
	movq	-8(%rbp), %rdx	# hmm, tmp84
	movl	.LC1(%rip), %eax	#, tmp85
	movl	%eax, 184(%rdx)	# tmp85, hmm_1(D)->xt
	.loc 1 639 0
	movq	-8(%rbp), %rdx	# hmm, tmp86
	movl	.LC2(%rip), %eax	#, tmp87
	movl	%eax, 188(%rdx)	# tmp87, hmm_1(D)->xt
	.loc 1 640 0
	movq	-8(%rbp), %rdx	# hmm, tmp88
	movl	.LC1(%rip), %eax	#, tmp89
	movl	%eax, 192(%rdx)	# tmp89, hmm_1(D)->xt
	.loc 1 641 0
	movq	-8(%rbp), %rdx	# hmm, tmp90
	movl	.LC1(%rip), %eax	#, tmp91
	movl	%eax, 196(%rdx)	# tmp91, hmm_1(D)->xt
	.loc 1 642 0
	movq	-8(%rbp), %rdx	# hmm, tmp92
	movl	.LC2(%rip), %eax	#, tmp93
	movl	%eax, 200(%rdx)	# tmp93, hmm_1(D)->xt
	.loc 1 643 0
	movq	-8(%rbp), %rax	# hmm, tmp94
	movl	136(%rax), %eax	# hmm_1(D)->M, D.8394
	leal	-1(%rax), %edx	#, D.8394
	movq	-8(%rbp), %rax	# hmm, tmp95
	movq	208(%rax), %rax	# hmm_1(D)->begin, D.8395
	addq	$8, %rax	#, D.8395
	xorps	%xmm0, %xmm0	#
	movl	%edx, %esi	# D.8394,
	movq	%rax, %rdi	# D.8395,
	call	FSet	#
	.loc 1 644 0
	movq	-8(%rbp), %rax	# hmm, tmp96
	movq	208(%rax), %rax	# hmm_1(D)->begin, D.8395
	leaq	4(%rax), %rdx	#, D.8395
	movq	-8(%rbp), %rax	# hmm, tmp97
	movss	168(%rax), %xmm1	# hmm_1(D)->tbd1, D.8396
	movss	.LC2(%rip), %xmm0	#, tmp98
	subss	%xmm1, %xmm0	# D.8396, D.8396
	movss	%xmm0, (%rdx)	# D.8396, *_7
	.loc 1 645 0
	movq	-8(%rbp), %rax	# hmm, tmp99
	movl	136(%rax), %eax	# hmm_1(D)->M, D.8394
	leal	-1(%rax), %edx	#, D.8394
	movq	-8(%rbp), %rax	# hmm, tmp100
	movq	216(%rax), %rax	# hmm_1(D)->end, D.8395
	addq	$4, %rax	#, D.8395
	xorps	%xmm0, %xmm0	#
	movl	%edx, %esi	# D.8394,
	movq	%rax, %rdi	# D.8395,
	call	FSet	#
	.loc 1 646 0
	movq	-8(%rbp), %rax	# hmm, tmp101
	movq	216(%rax), %rdx	# hmm_1(D)->end, D.8395
	movq	-8(%rbp), %rax	# hmm, tmp102
	movl	136(%rax), %eax	# hmm_1(D)->M, D.8394
	cltq
	salq	$2, %rax	#, D.8397
	addq	%rax, %rdx	# D.8397, D.8395
	movl	.LC2(%rip), %eax	#, tmp103
	movl	%eax, (%rdx)	# tmp103, *_18
	.loc 1 647 0
	movq	-8(%rbp), %rax	# hmm, tmp104
	movq	%rax, %rdi	# tmp104,
	call	Plan7RenormalizeExits	#
	.loc 1 648 0
	movq	-8(%rbp), %rax	# hmm, tmp105
	movl	456(%rax), %eax	# hmm_1(D)->flags, D.8394
	andl	$-2, %eax	#, D.8394
	movl	%eax, %edx	# D.8394, D.8394
	movq	-8(%rbp), %rax	# hmm, tmp106
	movl	%edx, 456(%rax)	# D.8394, hmm_1(D)->flags
	.loc 1 649 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	Plan7NakedConfig, .-Plan7NakedConfig
	.globl	Plan7GlobalConfig
	.type	Plan7GlobalConfig, @function
Plan7GlobalConfig:
.LFB17:
	.loc 1 667 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# hmm, hmm
	.loc 1 668 0
	movq	-8(%rbp), %rax	# hmm, tmp84
	movss	304(%rax), %xmm1	# hmm_1(D)->p1, D.8398
	movss	.LC2(%rip), %xmm0	#, tmp85
	subss	%xmm1, %xmm0	# D.8398, D.8398
	movq	-8(%rbp), %rax	# hmm, tmp86
	movss	%xmm0, 172(%rax)	# D.8398, hmm_1(D)->xt
	.loc 1 669 0
	movq	-8(%rbp), %rax	# hmm, tmp87
	movl	304(%rax), %eax	# hmm_1(D)->p1, D.8398
	movq	-8(%rbp), %rdx	# hmm, tmp88
	movl	%eax, 176(%rdx)	# D.8398, hmm_1(D)->xt
	.loc 1 670 0
	movq	-8(%rbp), %rdx	# hmm, tmp89
	movl	.LC2(%rip), %eax	#, tmp90
	movl	%eax, 180(%rdx)	# tmp90, hmm_1(D)->xt
	.loc 1 671 0
	movq	-8(%rbp), %rdx	# hmm, tmp91
	movl	.LC1(%rip), %eax	#, tmp92
	movl	%eax, 184(%rdx)	# tmp92, hmm_1(D)->xt
	.loc 1 672 0
	movq	-8(%rbp), %rax	# hmm, tmp93
	movss	304(%rax), %xmm1	# hmm_1(D)->p1, D.8398
	movss	.LC2(%rip), %xmm0	#, tmp94
	subss	%xmm1, %xmm0	# D.8398, D.8398
	movq	-8(%rbp), %rax	# hmm, tmp95
	movss	%xmm0, 188(%rax)	# D.8398, hmm_1(D)->xt
	.loc 1 673 0
	movq	-8(%rbp), %rax	# hmm, tmp96
	movl	304(%rax), %eax	# hmm_1(D)->p1, D.8398
	movq	-8(%rbp), %rdx	# hmm, tmp97
	movl	%eax, 192(%rdx)	# D.8398, hmm_1(D)->xt
	.loc 1 674 0
	movq	-8(%rbp), %rdx	# hmm, tmp98
	movl	.LC1(%rip), %eax	#, tmp99
	movl	%eax, 196(%rdx)	# tmp99, hmm_1(D)->xt
	.loc 1 675 0
	movq	-8(%rbp), %rdx	# hmm, tmp100
	movl	.LC2(%rip), %eax	#, tmp101
	movl	%eax, 200(%rdx)	# tmp101, hmm_1(D)->xt
	.loc 1 676 0
	movq	-8(%rbp), %rax	# hmm, tmp102
	movl	136(%rax), %eax	# hmm_1(D)->M, D.8399
	leal	-1(%rax), %edx	#, D.8399
	movq	-8(%rbp), %rax	# hmm, tmp103
	movq	208(%rax), %rax	# hmm_1(D)->begin, D.8400
	addq	$8, %rax	#, D.8400
	xorps	%xmm0, %xmm0	#
	movl	%edx, %esi	# D.8399,
	movq	%rax, %rdi	# D.8400,
	call	FSet	#
	.loc 1 677 0
	movq	-8(%rbp), %rax	# hmm, tmp104
	movq	208(%rax), %rax	# hmm_1(D)->begin, D.8400
	leaq	4(%rax), %rdx	#, D.8400
	movq	-8(%rbp), %rax	# hmm, tmp105
	movss	168(%rax), %xmm1	# hmm_1(D)->tbd1, D.8398
	movss	.LC2(%rip), %xmm0	#, tmp106
	subss	%xmm1, %xmm0	# D.8398, D.8398
	movss	%xmm0, (%rdx)	# D.8398, *_13
	.loc 1 678 0
	movq	-8(%rbp), %rax	# hmm, tmp107
	movl	136(%rax), %eax	# hmm_1(D)->M, D.8399
	leal	-1(%rax), %edx	#, D.8399
	movq	-8(%rbp), %rax	# hmm, tmp108
	movq	216(%rax), %rax	# hmm_1(D)->end, D.8400
	addq	$4, %rax	#, D.8400
	xorps	%xmm0, %xmm0	#
	movl	%edx, %esi	# D.8399,
	movq	%rax, %rdi	# D.8400,
	call	FSet	#
	.loc 1 679 0
	movq	-8(%rbp), %rax	# hmm, tmp109
	movq	216(%rax), %rdx	# hmm_1(D)->end, D.8400
	movq	-8(%rbp), %rax	# hmm, tmp110
	movl	136(%rax), %eax	# hmm_1(D)->M, D.8399
	cltq
	salq	$2, %rax	#, D.8401
	addq	%rax, %rdx	# D.8401, D.8400
	movl	.LC2(%rip), %eax	#, tmp111
	movl	%eax, (%rdx)	# tmp111, *_24
	.loc 1 680 0
	movq	-8(%rbp), %rax	# hmm, tmp112
	movq	%rax, %rdi	# tmp112,
	call	Plan7RenormalizeExits	#
	.loc 1 681 0
	movq	-8(%rbp), %rax	# hmm, tmp113
	movl	456(%rax), %eax	# hmm_1(D)->flags, D.8399
	andl	$-2, %eax	#, D.8399
	movl	%eax, %edx	# D.8399, D.8399
	movq	-8(%rbp), %rax	# hmm, tmp114
	movl	%edx, 456(%rax)	# D.8399, hmm_1(D)->flags
	.loc 1 682 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	Plan7GlobalConfig, .-Plan7GlobalConfig
	.globl	Plan7LSConfig
	.type	Plan7LSConfig, @function
Plan7LSConfig:
.LFB18:
	.loc 1 696 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# hmm, hmm
	.loc 1 697 0
	movq	-8(%rbp), %rax	# hmm, tmp87
	movss	304(%rax), %xmm1	# hmm_1(D)->p1, D.8402
	movss	.LC2(%rip), %xmm0	#, tmp88
	subss	%xmm1, %xmm0	# D.8402, D.8402
	movq	-8(%rbp), %rax	# hmm, tmp89
	movss	%xmm0, 172(%rax)	# D.8402, hmm_1(D)->xt
	.loc 1 698 0
	movq	-8(%rbp), %rax	# hmm, tmp90
	movl	304(%rax), %eax	# hmm_1(D)->p1, D.8402
	movq	-8(%rbp), %rdx	# hmm, tmp91
	movl	%eax, 176(%rdx)	# D.8402, hmm_1(D)->xt
	.loc 1 699 0
	movq	-8(%rbp), %rdx	# hmm, tmp92
	movl	.LC6(%rip), %eax	#, tmp93
	movl	%eax, 180(%rdx)	# tmp93, hmm_1(D)->xt
	.loc 1 700 0
	movq	-8(%rbp), %rdx	# hmm, tmp94
	movl	.LC6(%rip), %eax	#, tmp95
	movl	%eax, 184(%rdx)	# tmp95, hmm_1(D)->xt
	.loc 1 701 0
	movq	-8(%rbp), %rax	# hmm, tmp96
	movss	304(%rax), %xmm1	# hmm_1(D)->p1, D.8402
	movss	.LC2(%rip), %xmm0	#, tmp97
	subss	%xmm1, %xmm0	# D.8402, D.8402
	movq	-8(%rbp), %rax	# hmm, tmp98
	movss	%xmm0, 188(%rax)	# D.8402, hmm_1(D)->xt
	.loc 1 702 0
	movq	-8(%rbp), %rax	# hmm, tmp99
	movl	304(%rax), %eax	# hmm_1(D)->p1, D.8402
	movq	-8(%rbp), %rdx	# hmm, tmp100
	movl	%eax, 192(%rdx)	# D.8402, hmm_1(D)->xt
	.loc 1 703 0
	movq	-8(%rbp), %rax	# hmm, tmp101
	movss	304(%rax), %xmm1	# hmm_1(D)->p1, D.8402
	movss	.LC2(%rip), %xmm0	#, tmp102
	subss	%xmm1, %xmm0	# D.8402, D.8402
	movq	-8(%rbp), %rax	# hmm, tmp103
	movss	%xmm0, 196(%rax)	# D.8402, hmm_1(D)->xt
	.loc 1 704 0
	movq	-8(%rbp), %rax	# hmm, tmp104
	movl	304(%rax), %eax	# hmm_1(D)->p1, D.8402
	movq	-8(%rbp), %rdx	# hmm, tmp105
	movl	%eax, 200(%rdx)	# D.8402, hmm_1(D)->xt
	.loc 1 705 0
	movq	-8(%rbp), %rax	# hmm, tmp106
	movl	136(%rax), %eax	# hmm_1(D)->M, D.8403
	leal	-1(%rax), %edx	#, D.8403
	movq	-8(%rbp), %rax	# hmm, tmp107
	movq	208(%rax), %rax	# hmm_1(D)->begin, D.8404
	addq	$8, %rax	#, D.8404
	xorps	%xmm0, %xmm0	#
	movl	%edx, %esi	# D.8403,
	movq	%rax, %rdi	# D.8404,
	call	FSet	#
	.loc 1 706 0
	movq	-8(%rbp), %rax	# hmm, tmp108
	movq	208(%rax), %rax	# hmm_1(D)->begin, D.8404
	leaq	4(%rax), %rdx	#, D.8404
	movq	-8(%rbp), %rax	# hmm, tmp109
	movss	168(%rax), %xmm1	# hmm_1(D)->tbd1, D.8402
	movss	.LC2(%rip), %xmm0	#, tmp110
	subss	%xmm1, %xmm0	# D.8402, D.8402
	movss	%xmm0, (%rdx)	# D.8402, *_16
	.loc 1 707 0
	movq	-8(%rbp), %rax	# hmm, tmp111
	movl	136(%rax), %eax	# hmm_1(D)->M, D.8403
	leal	-1(%rax), %edx	#, D.8403
	movq	-8(%rbp), %rax	# hmm, tmp112
	movq	216(%rax), %rax	# hmm_1(D)->end, D.8404
	addq	$4, %rax	#, D.8404
	xorps	%xmm0, %xmm0	#
	movl	%edx, %esi	# D.8403,
	movq	%rax, %rdi	# D.8404,
	call	FSet	#
	.loc 1 708 0
	movq	-8(%rbp), %rax	# hmm, tmp113
	movq	216(%rax), %rdx	# hmm_1(D)->end, D.8404
	movq	-8(%rbp), %rax	# hmm, tmp114
	movl	136(%rax), %eax	# hmm_1(D)->M, D.8403
	cltq
	salq	$2, %rax	#, D.8405
	addq	%rax, %rdx	# D.8405, D.8404
	movl	.LC2(%rip), %eax	#, tmp115
	movl	%eax, (%rdx)	# tmp115, *_27
	.loc 1 709 0
	movq	-8(%rbp), %rax	# hmm, tmp116
	movq	%rax, %rdi	# tmp116,
	call	Plan7RenormalizeExits	#
	.loc 1 710 0
	movq	-8(%rbp), %rax	# hmm, tmp117
	movl	456(%rax), %eax	# hmm_1(D)->flags, D.8403
	andl	$-2, %eax	#, D.8403
	movl	%eax, %edx	# D.8403, D.8403
	movq	-8(%rbp), %rax	# hmm, tmp118
	movl	%edx, 456(%rax)	# D.8403, hmm_1(D)->flags
	.loc 1 711 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	Plan7LSConfig, .-Plan7LSConfig
	.globl	Plan7SWConfig
	.type	Plan7SWConfig, @function
Plan7SWConfig:
.LFB19:
	.loc 1 741 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# hmm, hmm
	movss	%xmm0, -28(%rbp)	# pentry, pentry
	movss	%xmm1, -32(%rbp)	# pexit, pexit
	.loc 1 747 0
	movq	-24(%rbp), %rax	# hmm, tmp112
	movss	304(%rax), %xmm1	# hmm_2(D)->p1, D.8406
	movss	.LC2(%rip), %xmm0	#, tmp113
	subss	%xmm1, %xmm0	# D.8406, D.8406
	movq	-24(%rbp), %rax	# hmm, tmp114
	movss	%xmm0, 172(%rax)	# D.8406, hmm_2(D)->xt
	.loc 1 748 0
	movq	-24(%rbp), %rax	# hmm, tmp115
	movl	304(%rax), %eax	# hmm_2(D)->p1, D.8406
	movq	-24(%rbp), %rdx	# hmm, tmp116
	movl	%eax, 176(%rdx)	# D.8406, hmm_2(D)->xt
	.loc 1 749 0
	movq	-24(%rbp), %rdx	# hmm, tmp117
	movl	.LC2(%rip), %eax	#, tmp118
	movl	%eax, 180(%rdx)	# tmp118, hmm_2(D)->xt
	.loc 1 750 0
	movq	-24(%rbp), %rdx	# hmm, tmp119
	movl	.LC1(%rip), %eax	#, tmp120
	movl	%eax, 184(%rdx)	# tmp120, hmm_2(D)->xt
	.loc 1 751 0
	movq	-24(%rbp), %rax	# hmm, tmp121
	movss	304(%rax), %xmm1	# hmm_2(D)->p1, D.8406
	movss	.LC2(%rip), %xmm0	#, tmp122
	subss	%xmm1, %xmm0	# D.8406, D.8406
	movq	-24(%rbp), %rax	# hmm, tmp123
	movss	%xmm0, 188(%rax)	# D.8406, hmm_2(D)->xt
	.loc 1 752 0
	movq	-24(%rbp), %rax	# hmm, tmp124
	movl	304(%rax), %eax	# hmm_2(D)->p1, D.8406
	movq	-24(%rbp), %rdx	# hmm, tmp125
	movl	%eax, 192(%rdx)	# D.8406, hmm_2(D)->xt
	.loc 1 753 0
	movq	-24(%rbp), %rdx	# hmm, tmp126
	movl	.LC2(%rip), %eax	#, tmp127
	movl	%eax, 196(%rdx)	# tmp127, hmm_2(D)->xt
	.loc 1 754 0
	movq	-24(%rbp), %rdx	# hmm, tmp128
	movl	.LC1(%rip), %eax	#, tmp129
	movl	%eax, 200(%rdx)	# tmp129, hmm_2(D)->xt
	.loc 1 758 0
	movq	-24(%rbp), %rax	# hmm, tmp130
	movq	208(%rax), %rax	# hmm_2(D)->begin, D.8407
	leaq	4(%rax), %rdx	#, D.8407
	movss	-28(%rbp), %xmm0	# pentry, D.8408
	cvtps2pd	%xmm0, %xmm0	# D.8408, D.8408
	movsd	.LC7(%rip), %xmm1	#, tmp131
	subsd	%xmm0, %xmm1	# D.8408, D.8408
	movq	-24(%rbp), %rax	# hmm, tmp132
	movss	168(%rax), %xmm0	# hmm_2(D)->tbd1, D.8406
	unpcklps	%xmm0, %xmm0	# D.8406, D.8406
	cvtps2pd	%xmm0, %xmm0	# D.8406, D.8408
	movsd	.LC7(%rip), %xmm2	#, tmp133
	subsd	%xmm0, %xmm2	# D.8408, D.8408
	movapd	%xmm2, %xmm0	# D.8408, D.8408
	mulsd	%xmm1, %xmm0	# D.8408, D.8408
	unpcklpd	%xmm0, %xmm0	# D.8408
	cvtpd2ps	%xmm0, %xmm0	# D.8408, D.8406
	movss	%xmm0, (%rdx)	# D.8406, *_10
	.loc 1 759 0
	movss	-28(%rbp), %xmm1	# pentry, D.8408
	cvtps2pd	%xmm1, %xmm1	# D.8408, D.8408
	movq	-24(%rbp), %rax	# hmm, tmp134
	movss	168(%rax), %xmm0	# hmm_2(D)->tbd1, D.8406
	unpcklps	%xmm0, %xmm0	# D.8406, D.8406
	cvtps2pd	%xmm0, %xmm0	# D.8406, D.8408
	movsd	.LC7(%rip), %xmm2	#, tmp135
	subsd	%xmm0, %xmm2	# D.8408, D.8408
	movapd	%xmm2, %xmm0	# D.8408, D.8408
	mulsd	%xmm1, %xmm0	# D.8408, D.8408
	movq	-24(%rbp), %rax	# hmm, tmp136
	movl	136(%rax), %eax	# hmm_2(D)->M, D.8409
	subl	$1, %eax	#, D.8409
	cvtsi2ss	%eax, %xmm1	# D.8409, D.8406
	unpcklps	%xmm1, %xmm1	# D.8406, D.8406
	cvtps2pd	%xmm1, %xmm1	# D.8406, D.8408
	divsd	%xmm1, %xmm0	# D.8408, D.8408
	unpcklpd	%xmm0, %xmm0	# D.8408
	cvtpd2ps	%xmm0, %xmm0	# D.8408, D.8406
	movq	-24(%rbp), %rax	# hmm, tmp137
	movl	136(%rax), %eax	# hmm_2(D)->M, D.8409
	leal	-1(%rax), %edx	#, D.8409
	movq	-24(%rbp), %rax	# hmm, tmp138
	movq	208(%rax), %rax	# hmm_2(D)->begin, D.8407
	addq	$8, %rax	#, D.8407
	movl	%edx, %esi	# D.8409,
	movq	%rax, %rdi	# D.8407,
	call	FSet	#
	.loc 1 763 0
	movq	-24(%rbp), %rax	# hmm, tmp139
	movq	216(%rax), %rdx	# hmm_2(D)->end, D.8407
	movq	-24(%rbp), %rax	# hmm, tmp140
	movl	136(%rax), %eax	# hmm_2(D)->M, D.8409
	cltq
	salq	$2, %rax	#, D.8410
	addq	%rax, %rdx	# D.8410, D.8407
	movl	.LC2(%rip), %eax	#, tmp141
	movl	%eax, (%rdx)	# tmp141, *_38
	.loc 1 764 0
	movq	-24(%rbp), %rax	# hmm, tmp142
	movl	136(%rax), %eax	# hmm_2(D)->M, D.8409
	subl	$1, %eax	#, D.8409
	cvtsi2ss	%eax, %xmm0	# D.8409, D.8406
	movss	-32(%rbp), %xmm1	# pexit, tmp144
	divss	%xmm0, %xmm1	# D.8406, tmp143
	movaps	%xmm1, %xmm0	# tmp143, tmp143
	movss	%xmm0, -4(%rbp)	# tmp143, basep
	.loc 1 765 0
	movl	$1, -8(%rbp)	#, k
	jmp	.L163	#
.L164:
	.loc 1 766 0 discriminator 2
	movq	-24(%rbp), %rax	# hmm, tmp145
	movq	216(%rax), %rax	# hmm_2(D)->end, D.8407
	movl	-8(%rbp), %edx	# k, tmp146
	movslq	%edx, %rdx	# tmp146, D.8410
	salq	$2, %rdx	#, D.8410
	addq	%rdx, %rax	# D.8410, D.8407
	movss	-4(%rbp), %xmm0	# basep, D.8408
	cvtps2pd	%xmm0, %xmm0	# D.8408, D.8408
	movl	-8(%rbp), %edx	# k, tmp147
	subl	$1, %edx	#, D.8409
	cvtsi2ss	%edx, %xmm1	# D.8409, D.8406
	mulss	-4(%rbp), %xmm1	# basep, D.8406
	unpcklps	%xmm1, %xmm1	# D.8406, D.8406
	cvtps2pd	%xmm1, %xmm1	# D.8406, D.8408
	movsd	.LC7(%rip), %xmm2	#, tmp148
	subsd	%xmm1, %xmm2	# D.8408, D.8408
	movapd	%xmm2, %xmm1	# D.8408, D.8408
	divsd	%xmm1, %xmm0	# D.8408, D.8408
	unpcklpd	%xmm0, %xmm0	# D.8408
	cvtpd2ps	%xmm0, %xmm0	# D.8408, D.8406
	movss	%xmm0, (%rax)	# D.8406, *_49
	.loc 1 765 0 discriminator 2
	addl	$1, -8(%rbp)	#, k
.L163:
	.loc 1 765 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# hmm, tmp149
	movl	136(%rax), %eax	# hmm_2(D)->M, D.8409
	cmpl	-8(%rbp), %eax	# k, D.8409
	jg	.L164	#,
	.loc 1 767 0 is_stmt 1
	movq	-24(%rbp), %rax	# hmm, tmp150
	movq	%rax, %rdi	# tmp150,
	call	Plan7RenormalizeExits	#
	.loc 1 768 0
	movq	-24(%rbp), %rax	# hmm, tmp151
	movl	456(%rax), %eax	# hmm_2(D)->flags, D.8409
	andl	$-2, %eax	#, D.8409
	movl	%eax, %edx	# D.8409, D.8409
	movq	-24(%rbp), %rax	# hmm, tmp152
	movl	%edx, 456(%rax)	# D.8409, hmm_2(D)->flags
	.loc 1 769 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	Plan7SWConfig, .-Plan7SWConfig
	.globl	Plan7FSConfig
	.type	Plan7FSConfig, @function
Plan7FSConfig:
.LFB20:
	.loc 1 791 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# hmm, hmm
	movss	%xmm0, -28(%rbp)	# pentry, pentry
	movss	%xmm1, -32(%rbp)	# pexit, pexit
	.loc 1 797 0
	movq	-24(%rbp), %rax	# hmm, tmp115
	movss	304(%rax), %xmm1	# hmm_2(D)->p1, D.8411
	movss	.LC2(%rip), %xmm0	#, tmp116
	subss	%xmm1, %xmm0	# D.8411, D.8411
	movq	-24(%rbp), %rax	# hmm, tmp117
	movss	%xmm0, 172(%rax)	# D.8411, hmm_2(D)->xt
	.loc 1 798 0
	movq	-24(%rbp), %rax	# hmm, tmp118
	movl	304(%rax), %eax	# hmm_2(D)->p1, D.8411
	movq	-24(%rbp), %rdx	# hmm, tmp119
	movl	%eax, 176(%rdx)	# D.8411, hmm_2(D)->xt
	.loc 1 799 0
	movq	-24(%rbp), %rdx	# hmm, tmp120
	movl	.LC6(%rip), %eax	#, tmp121
	movl	%eax, 180(%rdx)	# tmp121, hmm_2(D)->xt
	.loc 1 800 0
	movq	-24(%rbp), %rdx	# hmm, tmp122
	movl	.LC6(%rip), %eax	#, tmp123
	movl	%eax, 184(%rdx)	# tmp123, hmm_2(D)->xt
	.loc 1 801 0
	movq	-24(%rbp), %rax	# hmm, tmp124
	movss	304(%rax), %xmm1	# hmm_2(D)->p1, D.8411
	movss	.LC2(%rip), %xmm0	#, tmp125
	subss	%xmm1, %xmm0	# D.8411, D.8411
	movq	-24(%rbp), %rax	# hmm, tmp126
	movss	%xmm0, 188(%rax)	# D.8411, hmm_2(D)->xt
	.loc 1 802 0
	movq	-24(%rbp), %rax	# hmm, tmp127
	movl	304(%rax), %eax	# hmm_2(D)->p1, D.8411
	movq	-24(%rbp), %rdx	# hmm, tmp128
	movl	%eax, 192(%rdx)	# D.8411, hmm_2(D)->xt
	.loc 1 803 0
	movq	-24(%rbp), %rax	# hmm, tmp129
	movss	304(%rax), %xmm1	# hmm_2(D)->p1, D.8411
	movss	.LC2(%rip), %xmm0	#, tmp130
	subss	%xmm1, %xmm0	# D.8411, D.8411
	movq	-24(%rbp), %rax	# hmm, tmp131
	movss	%xmm0, 196(%rax)	# D.8411, hmm_2(D)->xt
	.loc 1 804 0
	movq	-24(%rbp), %rax	# hmm, tmp132
	movl	304(%rax), %eax	# hmm_2(D)->p1, D.8411
	movq	-24(%rbp), %rdx	# hmm, tmp133
	movl	%eax, 200(%rdx)	# D.8411, hmm_2(D)->xt
	.loc 1 808 0
	movq	-24(%rbp), %rax	# hmm, tmp134
	movq	208(%rax), %rax	# hmm_2(D)->begin, D.8412
	leaq	4(%rax), %rdx	#, D.8412
	movss	-28(%rbp), %xmm0	# pentry, D.8413
	cvtps2pd	%xmm0, %xmm0	# D.8413, D.8413
	movsd	.LC7(%rip), %xmm1	#, tmp135
	subsd	%xmm0, %xmm1	# D.8413, D.8413
	movq	-24(%rbp), %rax	# hmm, tmp136
	movss	168(%rax), %xmm0	# hmm_2(D)->tbd1, D.8411
	unpcklps	%xmm0, %xmm0	# D.8411, D.8411
	cvtps2pd	%xmm0, %xmm0	# D.8411, D.8413
	movsd	.LC7(%rip), %xmm2	#, tmp137
	subsd	%xmm0, %xmm2	# D.8413, D.8413
	movapd	%xmm2, %xmm0	# D.8413, D.8413
	mulsd	%xmm1, %xmm0	# D.8413, D.8413
	unpcklpd	%xmm0, %xmm0	# D.8413
	cvtpd2ps	%xmm0, %xmm0	# D.8413, D.8411
	movss	%xmm0, (%rdx)	# D.8411, *_13
	.loc 1 809 0
	movss	-28(%rbp), %xmm1	# pentry, D.8413
	cvtps2pd	%xmm1, %xmm1	# D.8413, D.8413
	movq	-24(%rbp), %rax	# hmm, tmp138
	movss	168(%rax), %xmm0	# hmm_2(D)->tbd1, D.8411
	unpcklps	%xmm0, %xmm0	# D.8411, D.8411
	cvtps2pd	%xmm0, %xmm0	# D.8411, D.8413
	movsd	.LC7(%rip), %xmm2	#, tmp139
	subsd	%xmm0, %xmm2	# D.8413, D.8413
	movapd	%xmm2, %xmm0	# D.8413, D.8413
	mulsd	%xmm1, %xmm0	# D.8413, D.8413
	movq	-24(%rbp), %rax	# hmm, tmp140
	movl	136(%rax), %eax	# hmm_2(D)->M, D.8414
	subl	$1, %eax	#, D.8414
	cvtsi2ss	%eax, %xmm1	# D.8414, D.8411
	unpcklps	%xmm1, %xmm1	# D.8411, D.8411
	cvtps2pd	%xmm1, %xmm1	# D.8411, D.8413
	divsd	%xmm1, %xmm0	# D.8413, D.8413
	unpcklpd	%xmm0, %xmm0	# D.8413
	cvtpd2ps	%xmm0, %xmm0	# D.8413, D.8411
	movq	-24(%rbp), %rax	# hmm, tmp141
	movl	136(%rax), %eax	# hmm_2(D)->M, D.8414
	leal	-1(%rax), %edx	#, D.8414
	movq	-24(%rbp), %rax	# hmm, tmp142
	movq	208(%rax), %rax	# hmm_2(D)->begin, D.8412
	addq	$8, %rax	#, D.8412
	movl	%edx, %esi	# D.8414,
	movq	%rax, %rdi	# D.8412,
	call	FSet	#
	.loc 1 813 0
	movq	-24(%rbp), %rax	# hmm, tmp143
	movq	216(%rax), %rdx	# hmm_2(D)->end, D.8412
	movq	-24(%rbp), %rax	# hmm, tmp144
	movl	136(%rax), %eax	# hmm_2(D)->M, D.8414
	cltq
	salq	$2, %rax	#, D.8415
	addq	%rax, %rdx	# D.8415, D.8412
	movl	.LC2(%rip), %eax	#, tmp145
	movl	%eax, (%rdx)	# tmp145, *_41
	.loc 1 814 0
	movq	-24(%rbp), %rax	# hmm, tmp146
	movl	136(%rax), %eax	# hmm_2(D)->M, D.8414
	subl	$1, %eax	#, D.8414
	cvtsi2ss	%eax, %xmm0	# D.8414, D.8411
	movss	-32(%rbp), %xmm1	# pexit, tmp148
	divss	%xmm0, %xmm1	# D.8411, tmp147
	movaps	%xmm1, %xmm0	# tmp147, tmp147
	movss	%xmm0, -4(%rbp)	# tmp147, basep
	.loc 1 815 0
	movl	$1, -8(%rbp)	#, k
	jmp	.L166	#
.L167:
	.loc 1 816 0 discriminator 2
	movq	-24(%rbp), %rax	# hmm, tmp149
	movq	216(%rax), %rax	# hmm_2(D)->end, D.8412
	movl	-8(%rbp), %edx	# k, tmp150
	movslq	%edx, %rdx	# tmp150, D.8415
	salq	$2, %rdx	#, D.8415
	addq	%rdx, %rax	# D.8415, D.8412
	movss	-4(%rbp), %xmm0	# basep, D.8413
	cvtps2pd	%xmm0, %xmm0	# D.8413, D.8413
	movl	-8(%rbp), %edx	# k, tmp151
	subl	$1, %edx	#, D.8414
	cvtsi2ss	%edx, %xmm1	# D.8414, D.8411
	mulss	-4(%rbp), %xmm1	# basep, D.8411
	unpcklps	%xmm1, %xmm1	# D.8411, D.8411
	cvtps2pd	%xmm1, %xmm1	# D.8411, D.8413
	movsd	.LC7(%rip), %xmm2	#, tmp152
	subsd	%xmm1, %xmm2	# D.8413, D.8413
	movapd	%xmm2, %xmm1	# D.8413, D.8413
	divsd	%xmm1, %xmm0	# D.8413, D.8413
	unpcklpd	%xmm0, %xmm0	# D.8413
	cvtpd2ps	%xmm0, %xmm0	# D.8413, D.8411
	movss	%xmm0, (%rax)	# D.8411, *_52
	.loc 1 815 0 discriminator 2
	addl	$1, -8(%rbp)	#, k
.L166:
	.loc 1 815 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# hmm, tmp153
	movl	136(%rax), %eax	# hmm_2(D)->M, D.8414
	cmpl	-8(%rbp), %eax	# k, D.8414
	jg	.L167	#,
	.loc 1 817 0 is_stmt 1
	movq	-24(%rbp), %rax	# hmm, tmp154
	movq	%rax, %rdi	# tmp154,
	call	Plan7RenormalizeExits	#
	.loc 1 818 0
	movq	-24(%rbp), %rax	# hmm, tmp155
	movl	456(%rax), %eax	# hmm_2(D)->flags, D.8414
	andl	$-2, %eax	#, D.8414
	movl	%eax, %edx	# D.8414, D.8414
	movq	-24(%rbp), %rax	# hmm, tmp156
	movl	%edx, 456(%rax)	# D.8414, hmm_2(D)->flags
	.loc 1 819 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	Plan7FSConfig, .-Plan7FSConfig
	.globl	Plan7ESTConfig
	.type	Plan7ESTConfig, @function
Plan7ESTConfig:
.LFB21:
	.loc 1 840 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$88, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)	# hmm, hmm
	movq	%rsi, -64(%rbp)	# aacode, aacode
	movq	%rdx, -72(%rbp)	# estmodel, estmodel
	movss	%xmm0, -76(%rbp)	# dna2, dna2
	movss	%xmm1, -80(%rbp)	# dna4, dna4
	.loc 1 846 0
	movq	$0, -24(%rbp)	#, tripnull
	.loc 1 849 0
	movq	-56(%rbp), %rdx	# hmm, tmp184
	movl	.LC8(%rip), %eax	#, tmp185
	movl	%eax, 172(%rdx)	# tmp185, hmm_4(D)->xt
	.loc 1 850 0
	movq	-56(%rbp), %rdx	# hmm, tmp186
	movl	.LC9(%rip), %eax	#, tmp187
	movl	%eax, 176(%rdx)	# tmp187, hmm_4(D)->xt
	.loc 1 851 0
	movq	-56(%rbp), %rdx	# hmm, tmp188
	movl	.LC2(%rip), %eax	#, tmp189
	movl	%eax, 180(%rdx)	# tmp189, hmm_4(D)->xt
	.loc 1 852 0
	movq	-56(%rbp), %rdx	# hmm, tmp190
	movl	.LC1(%rip), %eax	#, tmp191
	movl	%eax, 184(%rdx)	# tmp191, hmm_4(D)->xt
	.loc 1 853 0
	movq	-56(%rbp), %rdx	# hmm, tmp192
	movl	.LC8(%rip), %eax	#, tmp193
	movl	%eax, 188(%rdx)	# tmp193, hmm_4(D)->xt
	.loc 1 854 0
	movq	-56(%rbp), %rdx	# hmm, tmp194
	movl	.LC9(%rip), %eax	#, tmp195
	movl	%eax, 192(%rdx)	# tmp195, hmm_4(D)->xt
	.loc 1 855 0
	movq	-56(%rbp), %rdx	# hmm, tmp196
	movl	.LC2(%rip), %eax	#, tmp197
	movl	%eax, 196(%rdx)	# tmp197, hmm_4(D)->xt
	.loc 1 856 0
	movq	-56(%rbp), %rdx	# hmm, tmp198
	movl	.LC1(%rip), %eax	#, tmp199
	movl	%eax, 200(%rdx)	# tmp199, hmm_4(D)->xt
	.loc 1 858 0
	movq	-56(%rbp), %rax	# hmm, tmp200
	movq	208(%rax), %rax	# hmm_4(D)->begin, D.8416
	leaq	4(%rax), %rdx	#, D.8416
	movl	.LC6(%rip), %eax	#, tmp201
	movl	%eax, (%rdx)	# tmp201, *_6
	.loc 1 859 0
	movq	-56(%rbp), %rax	# hmm, tmp202
	movl	136(%rax), %eax	# hmm_4(D)->M, D.8417
	cvtsi2ss	%eax, %xmm0	# D.8417, D.8418
	unpcklps	%xmm0, %xmm0	# D.8418, D.8418
	cvtps2pd	%xmm0, %xmm0	# D.8418, D.8419
	movsd	.LC7(%rip), %xmm1	#, tmp203
	subsd	%xmm1, %xmm0	# tmp203, D.8419
	movsd	.LC5(%rip), %xmm1	#, tmp204
	divsd	%xmm0, %xmm1	# D.8419, D.8419
	movapd	%xmm1, %xmm0	# D.8419, D.8419
	unpcklpd	%xmm0, %xmm0	# D.8419
	cvtpd2ps	%xmm0, %xmm0	# D.8419, D.8418
	movq	-56(%rbp), %rax	# hmm, tmp205
	movl	136(%rax), %eax	# hmm_4(D)->M, D.8417
	leal	-1(%rax), %edx	#, D.8417
	movq	-56(%rbp), %rax	# hmm, tmp206
	movq	208(%rax), %rax	# hmm_4(D)->begin, D.8416
	addq	$8, %rax	#, D.8416
	movl	%edx, %esi	# D.8417,
	movq	%rax, %rdi	# D.8416,
	call	FSet	#
	.loc 1 860 0
	movq	-56(%rbp), %rax	# hmm, tmp207
	movq	216(%rax), %rdx	# hmm_4(D)->end, D.8416
	movq	-56(%rbp), %rax	# hmm, tmp208
	movl	136(%rax), %eax	# hmm_4(D)->M, D.8417
	cltq
	salq	$2, %rax	#, D.8420
	addq	%rax, %rdx	# D.8420, D.8416
	movl	.LC2(%rip), %eax	#, tmp209
	movl	%eax, (%rdx)	# tmp209, *_21
	.loc 1 861 0
	movq	-56(%rbp), %rax	# hmm, tmp210
	movl	136(%rax), %eax	# hmm_4(D)->M, D.8417
	cvtsi2ss	%eax, %xmm0	# D.8417, D.8418
	unpcklps	%xmm0, %xmm0	# D.8418, D.8418
	cvtps2pd	%xmm0, %xmm0	# D.8418, D.8419
	movsd	.LC7(%rip), %xmm1	#, tmp211
	subsd	%xmm1, %xmm0	# tmp211, D.8419
	movsd	.LC5(%rip), %xmm1	#, tmp212
	divsd	%xmm0, %xmm1	# D.8419, D.8419
	movapd	%xmm1, %xmm0	# D.8419, D.8419
	unpcklpd	%xmm0, %xmm0	# D.8419
	cvtpd2ps	%xmm0, %xmm0	# D.8419, D.8418
	movq	-56(%rbp), %rax	# hmm, tmp213
	movl	136(%rax), %eax	# hmm_4(D)->M, D.8417
	leal	-1(%rax), %edx	#, D.8417
	movq	-56(%rbp), %rax	# hmm, tmp214
	movq	216(%rax), %rax	# hmm_4(D)->end, D.8416
	movl	%edx, %esi	# D.8417,
	movq	%rax, %rdi	# D.8416,
	call	FSet	#
	.loc 1 864 0
	movl	$1, -36(%rbp)	#, k
	jmp	.L169	#
.L172:
	.loc 1 867 0
	movl	$0, -32(%rbp)	#, x
	jmp	.L170	#
.L171:
	.loc 1 868 0 discriminator 2
	movq	-56(%rbp), %rax	# hmm, tmp215
	movq	152(%rax), %rax	# hmm_4(D)->mat, D.8421
	movl	-36(%rbp), %edx	# k, tmp216
	movslq	%edx, %rdx	# tmp216, D.8420
	salq	$3, %rdx	#, D.8420
	addq	%rdx, %rax	# D.8420, D.8421
	movq	(%rax), %rax	# *_37, D.8416
	movl	-32(%rbp), %edx	# x, tmp217
	movslq	%edx, %rdx	# tmp217, D.8420
	leaq	0(,%rdx,4), %rcx	#, D.8420
	movq	-64(%rbp), %rdx	# aacode, tmp218
	addq	%rcx, %rdx	# D.8420, D.8422
	movl	(%rdx), %edx	# *_42, D.8417
	movslq	%edx, %rdx	# D.8417, D.8420
	salq	$2, %rdx	#, D.8420
	addq	%rdx, %rax	# D.8420, D.8416
	movss	(%rax), %xmm1	# *_46, D.8418
	movl	-32(%rbp), %eax	# x, tmp219
	cltq
	leaq	0(,%rax,4), %rdx	#, D.8420
	movq	-64(%rbp), %rax	# aacode, tmp220
	addq	%rdx, %rax	# D.8420, D.8422
	movl	(%rax), %eax	# *_50, D.8417
	cltq
	leaq	0(,%rax,8), %rdx	#, D.8420
	movq	-72(%rbp), %rax	# estmodel, tmp221
	addq	%rdx, %rax	# D.8420, D.8421
	movq	(%rax), %rax	# *_55, D.8416
	movl	-32(%rbp), %edx	# x, tmp222
	movslq	%edx, %rdx	# tmp222, D.8420
	salq	$2, %rdx	#, D.8420
	addq	%rdx, %rax	# D.8420, D.8416
	movss	(%rax), %xmm0	# *_59, D.8418
	mulss	%xmm1, %xmm0	# D.8418, D.8418
	unpcklps	%xmm0, %xmm0	# D.8418, D.8418
	cvtps2pd	%xmm0, %xmm1	# D.8418, D.8419
	movss	-76(%rbp), %xmm0	# dna2, D.8419
	cvtps2pd	%xmm0, %xmm0	# D.8419, D.8419
	movsd	.LC7(%rip), %xmm2	#, tmp223
	subsd	%xmm0, %xmm2	# D.8419, D.8419
	movapd	%xmm2, %xmm0	# D.8419, D.8419
	movss	-80(%rbp), %xmm2	# dna4, D.8419
	cvtps2pd	%xmm2, %xmm2	# D.8419, D.8419
	subsd	%xmm2, %xmm0	# D.8419, D.8419
	mulsd	%xmm1, %xmm0	# D.8419, D.8419
	unpcklpd	%xmm0, %xmm0	# D.8419
	cvtpd2ps	%xmm0, %xmm3	# D.8419, tmp255
	movss	%xmm3, -28(%rbp)	# tmp255, p
	.loc 1 869 0 discriminator 2
	movq	-56(%rbp), %rax	# hmm, tmp224
	movq	424(%rax), %rax	# hmm_4(D)->dnam, D.8423
	movl	-32(%rbp), %edx	# x, tmp225
	movslq	%edx, %rdx	# tmp225, D.8420
	salq	$3, %rdx	#, D.8420
	addq	%rdx, %rax	# D.8420, D.8423
	movq	(%rax), %rax	# *_74, D.8422
	movl	-36(%rbp), %edx	# k, tmp226
	movslq	%edx, %rdx	# tmp226, D.8420
	salq	$2, %rdx	#, D.8420
	leaq	(%rax,%rdx), %rbx	#, D.8422
	movl	-32(%rbp), %eax	# x, tmp227
	cltq
	leaq	0(,%rax,4), %rdx	#, D.8420
	movq	-24(%rbp), %rax	# tripnull, tmp228
	addq	%rdx, %rax	# D.8420, D.8416
	movl	(%rax), %edx	# *_81, D.8418
	movl	-28(%rbp), %eax	# p, tmp229
	movl	%edx, -84(%rbp)	# D.8418, %sfp
	movss	-84(%rbp), %xmm1	# %sfp,
	movl	%eax, -84(%rbp)	# tmp229, %sfp
	movss	-84(%rbp), %xmm0	# %sfp,
	call	Prob2Score	#
	movl	%eax, (%rbx)	# D.8417, *_78
	.loc 1 871 0 discriminator 2
	movq	-56(%rbp), %rax	# hmm, tmp230
	movq	160(%rax), %rax	# hmm_4(D)->ins, D.8421
	movl	-36(%rbp), %edx	# k, tmp231
	movslq	%edx, %rdx	# tmp231, D.8420
	salq	$3, %rdx	#, D.8420
	addq	%rdx, %rax	# D.8420, D.8421
	movq	(%rax), %rax	# *_87, D.8416
	movl	-32(%rbp), %edx	# x, tmp232
	movslq	%edx, %rdx	# tmp232, D.8420
	leaq	0(,%rdx,4), %rcx	#, D.8420
	movq	-64(%rbp), %rdx	# aacode, tmp233
	addq	%rcx, %rdx	# D.8420, D.8422
	movl	(%rdx), %edx	# *_91, D.8417
	movslq	%edx, %rdx	# D.8417, D.8420
	salq	$2, %rdx	#, D.8420
	addq	%rdx, %rax	# D.8420, D.8416
	movss	(%rax), %xmm1	# *_95, D.8418
	movl	-32(%rbp), %eax	# x, tmp234
	cltq
	leaq	0(,%rax,4), %rdx	#, D.8420
	movq	-64(%rbp), %rax	# aacode, tmp235
	addq	%rdx, %rax	# D.8420, D.8422
	movl	(%rax), %eax	# *_99, D.8417
	cltq
	leaq	0(,%rax,8), %rdx	#, D.8420
	movq	-72(%rbp), %rax	# estmodel, tmp236
	addq	%rdx, %rax	# D.8420, D.8421
	movq	(%rax), %rax	# *_103, D.8416
	movl	-32(%rbp), %edx	# x, tmp237
	movslq	%edx, %rdx	# tmp237, D.8420
	salq	$2, %rdx	#, D.8420
	addq	%rdx, %rax	# D.8420, D.8416
	movss	(%rax), %xmm0	# *_107, D.8418
	mulss	%xmm1, %xmm0	# D.8418, D.8418
	unpcklps	%xmm0, %xmm0	# D.8418, D.8418
	cvtps2pd	%xmm0, %xmm1	# D.8418, D.8419
	movss	-76(%rbp), %xmm0	# dna2, D.8419
	cvtps2pd	%xmm0, %xmm0	# D.8419, D.8419
	movsd	.LC7(%rip), %xmm2	#, tmp238
	subsd	%xmm0, %xmm2	# D.8419, D.8419
	movapd	%xmm2, %xmm0	# D.8419, D.8419
	movss	-80(%rbp), %xmm2	# dna4, D.8419
	cvtps2pd	%xmm2, %xmm2	# D.8419, D.8419
	subsd	%xmm2, %xmm0	# D.8419, D.8419
	mulsd	%xmm1, %xmm0	# D.8419, D.8419
	unpcklpd	%xmm0, %xmm0	# D.8419
	cvtpd2ps	%xmm0, %xmm4	# D.8419, tmp259
	movss	%xmm4, -28(%rbp)	# tmp259, p
	.loc 1 872 0 discriminator 2
	movq	-56(%rbp), %rax	# hmm, tmp239
	movq	432(%rax), %rax	# hmm_4(D)->dnai, D.8423
	movl	-32(%rbp), %edx	# x, tmp240
	movslq	%edx, %rdx	# tmp240, D.8420
	salq	$3, %rdx	#, D.8420
	addq	%rdx, %rax	# D.8420, D.8423
	movq	(%rax), %rax	# *_120, D.8422
	movl	-36(%rbp), %edx	# k, tmp241
	movslq	%edx, %rdx	# tmp241, D.8420
	salq	$2, %rdx	#, D.8420
	leaq	(%rax,%rdx), %rbx	#, D.8422
	movl	-32(%rbp), %eax	# x, tmp242
	cltq
	leaq	0(,%rax,4), %rdx	#, D.8420
	movq	-24(%rbp), %rax	# tripnull, tmp243
	addq	%rdx, %rax	# D.8420, D.8416
	movl	(%rax), %edx	# *_127, D.8418
	movl	-28(%rbp), %eax	# p, tmp244
	movl	%edx, -84(%rbp)	# D.8418, %sfp
	movss	-84(%rbp), %xmm1	# %sfp,
	movl	%eax, -84(%rbp)	# tmp244, %sfp
	movss	-84(%rbp), %xmm0	# %sfp,
	call	Prob2Score	#
	movl	%eax, (%rbx)	# D.8417, *_124
	.loc 1 867 0 discriminator 2
	addl	$1, -32(%rbp)	#, x
.L170:
	.loc 1 867 0 is_stmt 0 discriminator 1
	cmpl	$63, -32(%rbp)	#, x
	jle	.L171	#,
	.loc 1 874 0 is_stmt 1
	movq	-56(%rbp), %rax	# hmm, tmp245
	movq	424(%rax), %rax	# hmm_4(D)->dnam, D.8423
	addq	$512, %rax	#, D.8423
	movq	(%rax), %rax	# *_132, D.8422
	movl	-36(%rbp), %edx	# k, tmp246
	movslq	%edx, %rdx	# tmp246, D.8420
	salq	$2, %rdx	#, D.8420
	addq	%rdx, %rax	# D.8420, D.8422
	movl	$0, (%rax)	#, *_136
	.loc 1 875 0
	movl	-76(%rbp), %eax	# dna2, tmp247
	movss	.LC2(%rip), %xmm1	#,
	movl	%eax, -84(%rbp)	# tmp247, %sfp
	movss	-84(%rbp), %xmm0	# %sfp,
	call	Prob2Score	#
	movq	-56(%rbp), %rdx	# hmm, tmp248
	movl	%eax, 440(%rdx)	# D.8417, hmm_4(D)->dna2
	.loc 1 876 0
	movl	-80(%rbp), %eax	# dna4, tmp249
	movss	.LC2(%rip), %xmm1	#,
	movl	%eax, -84(%rbp)	# tmp249, %sfp
	movss	-84(%rbp), %xmm0	# %sfp,
	call	Prob2Score	#
	movq	-56(%rbp), %rdx	# hmm, tmp250
	movl	%eax, 444(%rdx)	# D.8417, hmm_4(D)->dna4
	.loc 1 864 0
	addl	$1, -36(%rbp)	#, k
.L169:
	.loc 1 864 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# hmm, tmp251
	movl	136(%rax), %eax	# hmm_4(D)->M, D.8417
	cmpl	-36(%rbp), %eax	# k, D.8417
	jge	.L172	#,
	.loc 1 878 0 is_stmt 1
	addq	$88, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	Plan7ESTConfig, .-Plan7ESTConfig
	.section	.rodata
.LC10:
	.string	"Average score:  %10.2f bits\n"
.LC11:
	.string	"Minimum score:  %10.2f bits\n"
.LC12:
	.string	"Maximum score:  %10.2f bits\n"
.LC13:
	.string	"Std. deviation: %10.2f bits\n"
	.text
	.globl	PrintPlan7Stats
	.type	PrintPlan7Stats, @function
PrintPlan7Stats:
.LFB22:
	.loc 1 899 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movq	%rdi, -40(%rbp)	# fp, fp
	movq	%rsi, -48(%rbp)	# hmm, hmm
	movq	%rdx, -56(%rbp)	# dsq, dsq
	movl	%ecx, -60(%rbp)	# nseq, nseq
	movq	%r8, -72(%rbp)	# tr, tr
	.loc 1 905 0
	movq	-48(%rbp), %rax	# hmm, tmp88
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp88,
	call	P7Logoddsify	#
	.loc 1 908 0
	movq	-72(%rbp), %rax	# tr, tmp89
	movq	(%rax), %rdx	# *tr_11(D), D.8424
	movq	-56(%rbp), %rax	# dsq, tmp90
	movq	(%rax), %rcx	# *dsq_13(D), D.8425
	movq	-48(%rbp), %rax	# hmm, tmp91
	movq	%rcx, %rsi	# D.8425,
	movq	%rax, %rdi	# tmp91,
	call	P7TraceScore	#
	movss	%xmm0, -64(%rbp)	#, %sfp
	movl	-64(%rbp), %eax	# %sfp, tmp92
	movl	%eax, -4(%rbp)	# tmp92, score
	.loc 1 909 0
	movl	-4(%rbp), %eax	# score, tmp93
	movl	%eax, -16(%rbp)	# tmp93, worst
	movl	-16(%rbp), %eax	# worst, tmp94
	movl	%eax, -20(%rbp)	# tmp94, best
	movl	-20(%rbp), %eax	# best, tmp95
	movl	%eax, -24(%rbp)	# tmp95, total
	.loc 1 910 0
	movss	-4(%rbp), %xmm0	# score, tmp97
	mulss	-4(%rbp), %xmm0	# score, tmp96
	movss	%xmm0, -12(%rbp)	# tmp96, sqsum
	.loc 1 911 0
	movl	$1, -28(%rbp)	#, idx
	jmp	.L174	#
.L179:
	.loc 1 913 0
	movl	-28(%rbp), %eax	# idx, tmp98
	cltq
	leaq	0(,%rax,8), %rdx	#, D.8426
	movq	-72(%rbp), %rax	# tr, tmp99
	addq	%rdx, %rax	# D.8426, D.8427
	movq	(%rax), %rdx	# *_24, D.8424
	movl	-28(%rbp), %eax	# idx, tmp100
	cltq
	leaq	0(,%rax,8), %rcx	#, D.8426
	movq	-56(%rbp), %rax	# dsq, tmp101
	addq	%rcx, %rax	# D.8426, D.8428
	movq	(%rax), %rcx	# *_28, D.8425
	movq	-48(%rbp), %rax	# hmm, tmp102
	movq	%rcx, %rsi	# D.8425,
	movq	%rax, %rdi	# tmp102,
	call	P7TraceScore	#
	movss	%xmm0, -64(%rbp)	#, %sfp
	movl	-64(%rbp), %eax	# %sfp, tmp103
	movl	%eax, -4(%rbp)	# tmp103, score
	.loc 1 914 0
	movss	-24(%rbp), %xmm0	# total, tmp105
	addss	-4(%rbp), %xmm0	# score, tmp104
	movss	%xmm0, -24(%rbp)	# tmp104, total
	.loc 1 915 0
	movss	-4(%rbp), %xmm0	# score, tmp106
	mulss	-4(%rbp), %xmm0	# score, D.8429
	movss	-12(%rbp), %xmm1	# sqsum, tmp108
	addss	%xmm1, %xmm0	# tmp108, tmp107
	movss	%xmm0, -12(%rbp)	# tmp107, sqsum
	.loc 1 916 0
	movss	-4(%rbp), %xmm0	# score, tmp109
	ucomiss	-20(%rbp), %xmm0	# best, tmp109
	jbe	.L175	#,
	.loc 1 916 0 is_stmt 0 discriminator 1
	movl	-4(%rbp), %eax	# score, tmp110
	movl	%eax, -20(%rbp)	# tmp110, best
.L175:
	.loc 1 917 0 is_stmt 1
	movss	-16(%rbp), %xmm0	# worst, tmp111
	ucomiss	-4(%rbp), %xmm0	# score, tmp111
	jbe	.L177	#,
	.loc 1 917 0 is_stmt 0 discriminator 1
	movl	-4(%rbp), %eax	# score, tmp112
	movl	%eax, -16(%rbp)	# tmp112, worst
.L177:
	.loc 1 911 0 is_stmt 1
	addl	$1, -28(%rbp)	#, idx
.L174:
	.loc 1 911 0 is_stmt 0 discriminator 1
	movl	-28(%rbp), %eax	# idx, tmp113
	cmpl	-60(%rbp), %eax	# nseq, tmp113
	jl	.L179	#,
	.loc 1 919 0 is_stmt 1
	cmpl	$1, -60(%rbp)	#, nseq
	jle	.L180	#,
	.loc 1 920 0
	movss	-24(%rbp), %xmm0	# total, tmp114
	mulss	-24(%rbp), %xmm0	# total, D.8429
	cvtsi2ss	-60(%rbp), %xmm1	# nseq, D.8429
	divss	%xmm1, %xmm0	# D.8429, D.8429
	movss	-12(%rbp), %xmm1	# sqsum, tmp115
	subss	%xmm0, %xmm1	# D.8429, D.8429
	movaps	%xmm1, %xmm0	# D.8429, D.8429
	unpcklps	%xmm0, %xmm0	# D.8429, D.8429
	cvtps2pd	%xmm0, %xmm0	# D.8429, D.8430
	cvtsi2ss	-60(%rbp), %xmm1	# nseq, D.8429
	unpcklps	%xmm1, %xmm1	# D.8429, D.8429
	cvtps2pd	%xmm1, %xmm1	# D.8429, D.8430
	movsd	.LC7(%rip), %xmm2	#, tmp116
	subsd	%xmm2, %xmm1	# tmp116, D.8430
	divsd	%xmm1, %xmm0	# D.8430, D.8430
	unpcklpd	%xmm0, %xmm0	# D.8430
	cvtpd2ps	%xmm0, %xmm3	# D.8430, tmp128
	movss	%xmm3, -8(%rbp)	# tmp128, stddev
	.loc 1 921 0
	movss	-8(%rbp), %xmm0	# stddev, tmp117
	xorps	%xmm1, %xmm1	# tmp118
	ucomiss	%xmm1, %xmm0	# tmp118, tmp117
	jbe	.L188	#,
	.loc 1 921 0 is_stmt 0 discriminator 1
	movss	-8(%rbp), %xmm0	# stddev, D.8430
	cvtps2pd	%xmm0, %xmm0	# D.8430, D.8430
	call	sqrt	#
	unpcklpd	%xmm0, %xmm0	# D.8430
	cvtpd2ps	%xmm0, %xmm4	# D.8430, iftmp.20
	movss	%xmm4, -64(%rbp)	# iftmp.20, %sfp
	movl	-64(%rbp), %eax	# %sfp, iftmp.20
	jmp	.L183	#
.L188:
	.loc 1 921 0 discriminator 2
	movl	.LC1(%rip), %eax	#, iftmp.20
.L183:
	.loc 1 921 0 discriminator 1
	movl	%eax, -8(%rbp)	# iftmp.20, stddev
	jmp	.L184	#
.L180:
	.loc 1 922 0 is_stmt 1
	movl	.LC1(%rip), %eax	#, tmp119
	movl	%eax, -8(%rbp)	# tmp119, stddev
.L184:
	.loc 1 924 0
	cvtsi2ss	-60(%rbp), %xmm0	# nseq, D.8429
	movss	-24(%rbp), %xmm1	# total, tmp120
	divss	%xmm0, %xmm1	# D.8429, D.8429
	movaps	%xmm1, %xmm0	# D.8429, D.8429
	unpcklps	%xmm0, %xmm0	# D.8429, D.8429
	cvtps2pd	%xmm0, %xmm0	# D.8429, D.8430
	movq	-40(%rbp), %rax	# fp, tmp121
	movl	$.LC10, %esi	#,
	movq	%rax, %rdi	# tmp121,
	movl	$1, %eax	#,
	call	fprintf	#
	.loc 1 925 0
	movss	-16(%rbp), %xmm0	# worst, D.8430
	cvtps2pd	%xmm0, %xmm0	# D.8430, D.8430
	movq	-40(%rbp), %rax	# fp, tmp122
	movl	$.LC11, %esi	#,
	movq	%rax, %rdi	# tmp122,
	movl	$1, %eax	#,
	call	fprintf	#
	.loc 1 926 0
	movss	-20(%rbp), %xmm0	# best, D.8430
	cvtps2pd	%xmm0, %xmm0	# D.8430, D.8430
	movq	-40(%rbp), %rax	# fp, tmp123
	movl	$.LC12, %esi	#,
	movq	%rax, %rdi	# tmp123,
	movl	$1, %eax	#,
	call	fprintf	#
	.loc 1 927 0
	movss	-8(%rbp), %xmm0	# stddev, D.8430
	cvtps2pd	%xmm0, %xmm0	# D.8430, D.8430
	movq	-40(%rbp), %rax	# fp, tmp124
	movl	$.LC13, %esi	#,
	movq	%rax, %rdi	# tmp124,
	movl	$1, %eax	#,
	call	fprintf	#
	.loc 1 928 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	PrintPlan7Stats, .-PrintPlan7Stats
	.globl	DegenerateSymbolScore
	.type	DegenerateSymbolScore, @function
DegenerateSymbolScore:
.LFB23:
	.loc 1 972 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -24(%rbp)	# p, p
	movq	%rsi, -32(%rbp)	# null, null
	movl	%edx, -36(%rbp)	# ambig, ambig
	.loc 1 974 0
	movl	.LC1(%rip), %eax	#, tmp100
	movl	%eax, -8(%rbp)	# tmp100, numer
	.loc 1 975 0
	movl	.LC1(%rip), %eax	#, tmp101
	movl	%eax, -4(%rbp)	# tmp101, denom
	.loc 1 977 0
	movl	$0, -12(%rbp)	#, x
	jmp	.L190	#
.L195:
	.loc 1 978 0
	movl	-12(%rbp), %eax	# x, tmp103
	movslq	%eax, %rcx	# tmp103, tmp102
	movl	-36(%rbp), %eax	# ambig, tmp105
	movslq	%eax, %rdx	# tmp105, tmp104
	movq	%rdx, %rax	# tmp104, tmp106
	salq	$2, %rax	#, tmp106
	addq	%rdx, %rax	# tmp104, tmp106
	salq	$2, %rax	#, tmp107
	addq	%rcx, %rax	# tmp102, tmp108
	addq	$Degenerate, %rax	#, tmp109
	movzbl	(%rax), %eax	# Degenerate, D.8435
	testb	%al, %al	# D.8435
	je	.L191	#,
	.loc 1 979 0
	movss	-8(%rbp), %xmm2	# numer, D.8436
	cvtps2pd	%xmm2, %xmm2	# D.8436, D.8436
	movsd	%xmm2, -48(%rbp)	# D.8436, %sfp
	movl	-12(%rbp), %eax	# x, tmp110
	cltq
	leaq	0(,%rax,4), %rdx	#, D.8437
	movq	-32(%rbp), %rax	# null, tmp111
	addq	%rdx, %rax	# D.8437, D.8438
	movss	(%rax), %xmm0	# *_17, D.8439
	unpcklps	%xmm0, %xmm0	# D.8439, D.8439
	cvtps2pd	%xmm0, %xmm3	# D.8439, D.8436
	movsd	%xmm3, -56(%rbp)	# D.8436, %sfp
	movl	-12(%rbp), %eax	# x, tmp112
	cltq
	leaq	0(,%rax,4), %rdx	#, D.8437
	movq	-24(%rbp), %rax	# p, tmp113
	addq	%rdx, %rax	# D.8437, D.8438
	movss	(%rax), %xmm0	# *_23, D.8439
	movl	-12(%rbp), %eax	# x, tmp114
	cltq
	leaq	0(,%rax,4), %rdx	#, D.8437
	movq	-32(%rbp), %rax	# null, tmp115
	addq	%rdx, %rax	# D.8437, D.8438
	movss	(%rax), %xmm1	# *_27, D.8439
	divss	%xmm1, %xmm0	# D.8439, D.8439
	xorps	%xmm1, %xmm1	# tmp116
	ucomiss	%xmm1, %xmm0	# tmp116, D.8439
	jbe	.L198	#,
	.loc 1 979 0 is_stmt 0 discriminator 1
	movl	-12(%rbp), %eax	# x, tmp117
	cltq
	leaq	0(,%rax,4), %rdx	#, D.8437
	movq	-24(%rbp), %rax	# p, tmp118
	addq	%rdx, %rax	# D.8437, D.8438
	movss	(%rax), %xmm0	# *_32, D.8439
	movl	-12(%rbp), %eax	# x, tmp119
	cltq
	leaq	0(,%rax,4), %rdx	#, D.8437
	movq	-32(%rbp), %rax	# null, tmp120
	addq	%rdx, %rax	# D.8437, D.8438
	movss	(%rax), %xmm1	# *_36, D.8439
	divss	%xmm1, %xmm0	# D.8439, D.8439
	unpcklps	%xmm0, %xmm0	# D.8439, D.8439
	cvtps2pd	%xmm0, %xmm0	# D.8439, D.8436
	call	log	#
	movsd	.LC14(%rip), %xmm1	#, tmp121
	mulsd	%xmm1, %xmm0	# tmp121, iftmp.21
	jmp	.L194	#
.L198:
	.loc 1 979 0 discriminator 2
	movsd	.LC15(%rip), %xmm0	#, iftmp.21
.L194:
	.loc 1 979 0 discriminator 3
	mulsd	-56(%rbp), %xmm0	# %sfp, D.8436
	addsd	-48(%rbp), %xmm0	# %sfp, D.8436
	unpcklpd	%xmm0, %xmm0	# D.8436
	cvtpd2ps	%xmm0, %xmm4	# D.8436, tmp130
	movss	%xmm4, -8(%rbp)	# tmp130, numer
	.loc 1 980 0 is_stmt 1 discriminator 3
	movl	-12(%rbp), %eax	# x, tmp122
	cltq
	leaq	0(,%rax,4), %rdx	#, D.8437
	movq	-32(%rbp), %rax	# null, tmp123
	addq	%rdx, %rax	# D.8437, D.8438
	movss	(%rax), %xmm0	# *_48, D.8439
	movss	-4(%rbp), %xmm1	# denom, tmp125
	addss	%xmm1, %xmm0	# tmp125, tmp124
	movss	%xmm0, -4(%rbp)	# tmp124, denom
.L191:
	.loc 1 977 0
	addl	$1, -12(%rbp)	#, x
.L190:
	.loc 1 977 0 is_stmt 0 discriminator 1
	movl	Alphabet_size(%rip), %eax	# Alphabet_size, Alphabet_size.22
	cmpl	%eax, -12(%rbp)	# Alphabet_size.22, x
	jl	.L195	#,
	.loc 1 983 0 is_stmt 1
	movss	-8(%rbp), %xmm0	# numer, D.8436
	cvtps2pd	%xmm0, %xmm0	# D.8436, D.8436
	movsd	.LC16(%rip), %xmm1	#, tmp126
	mulsd	%xmm1, %xmm0	# tmp126, D.8436
	movss	-4(%rbp), %xmm1	# denom, D.8436
	cvtps2pd	%xmm1, %xmm1	# D.8436, D.8436
	divsd	%xmm1, %xmm0	# D.8436, D.8436
	cvttsd2si	%xmm0, %eax	# D.8436, D.8440
	.loc 1 984 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE23:
	.size	DegenerateSymbolScore, .-DegenerateSymbolScore
	.globl	Plan9toPlan7
	.type	Plan9toPlan7, @function
Plan9toPlan7:
.LFB24:
	.loc 1 1007 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# hmm, hmm
	movq	%rsi, -32(%rbp)	# ret_plan7, ret_plan7
	.loc 1 1011 0
	movq	-24(%rbp), %rax	# hmm, tmp197
	movl	(%rax), %eax	# hmm_7(D)->M, D.8441
	movl	%eax, %edi	# D.8441,
	call	AllocPlan7	#
	movq	%rax, -8(%rbp)	# tmp198, plan7
	.loc 1 1013 0
	movl	$1, -16(%rbp)	#, k
	jmp	.L200	#
.L201:
	.loc 1 1015 0 discriminator 2
	movq	-8(%rbp), %rax	# plan7, tmp199
	movq	144(%rax), %rax	# plan7_9->t, D.8442
	movl	-16(%rbp), %edx	# k, tmp200
	movslq	%edx, %rdx	# tmp200, D.8443
	salq	$3, %rdx	#, D.8443
	addq	%rdx, %rax	# D.8443, D.8442
	movq	(%rax), %rdx	# *_15, D.8444
	movq	-24(%rbp), %rax	# hmm, tmp201
	movq	16(%rax), %rcx	# hmm_7(D)->mat, D.8445
	movl	-16(%rbp), %eax	# k, tmp202
	cltq
	imulq	$92, %rax, %rax	#, D.8443, D.8443
	addq	%rcx, %rax	# D.8445, D.8445
	movl	(%rax), %eax	# _20->t, D.8446
	movl	%eax, (%rdx)	# D.8446, *_16
	.loc 1 1016 0 discriminator 2
	movq	-8(%rbp), %rax	# plan7, tmp203
	movq	144(%rax), %rax	# plan7_9->t, D.8442
	movl	-16(%rbp), %edx	# k, tmp204
	movslq	%edx, %rdx	# tmp204, D.8443
	salq	$3, %rdx	#, D.8443
	addq	%rdx, %rax	# D.8443, D.8442
	movq	(%rax), %rax	# *_25, D.8444
	leaq	8(%rax), %rdx	#, D.8444
	movq	-24(%rbp), %rax	# hmm, tmp205
	movq	16(%rax), %rcx	# hmm_7(D)->mat, D.8445
	movl	-16(%rbp), %eax	# k, tmp206
	cltq
	imulq	$92, %rax, %rax	#, D.8443, D.8443
	addq	%rcx, %rax	# D.8445, D.8445
	movl	8(%rax), %eax	# _31->t, D.8446
	movl	%eax, (%rdx)	# D.8446, *_27
	.loc 1 1017 0 discriminator 2
	movq	-8(%rbp), %rax	# plan7, tmp207
	movq	144(%rax), %rax	# plan7_9->t, D.8442
	movl	-16(%rbp), %edx	# k, tmp208
	movslq	%edx, %rdx	# tmp208, D.8443
	salq	$3, %rdx	#, D.8443
	addq	%rdx, %rax	# D.8443, D.8442
	movq	(%rax), %rax	# *_36, D.8444
	leaq	4(%rax), %rdx	#, D.8444
	movq	-24(%rbp), %rax	# hmm, tmp209
	movq	16(%rax), %rcx	# hmm_7(D)->mat, D.8445
	movl	-16(%rbp), %eax	# k, tmp210
	cltq
	imulq	$92, %rax, %rax	#, D.8443, D.8443
	addq	%rcx, %rax	# D.8445, D.8445
	movl	4(%rax), %eax	# _42->t, D.8446
	movl	%eax, (%rdx)	# D.8446, *_38
	.loc 1 1018 0 discriminator 2
	movq	-8(%rbp), %rax	# plan7, tmp211
	movq	144(%rax), %rax	# plan7_9->t, D.8442
	movl	-16(%rbp), %edx	# k, tmp212
	movslq	%edx, %rdx	# tmp212, D.8443
	salq	$3, %rdx	#, D.8443
	addq	%rdx, %rax	# D.8443, D.8442
	movq	(%rax), %rax	# *_47, D.8444
	leaq	20(%rax), %rdx	#, D.8444
	movq	-24(%rbp), %rax	# hmm, tmp213
	movq	24(%rax), %rcx	# hmm_7(D)->del, D.8445
	movl	-16(%rbp), %eax	# k, tmp214
	cltq
	imulq	$92, %rax, %rax	#, D.8443, D.8443
	addq	%rcx, %rax	# D.8445, D.8445
	movl	(%rax), %eax	# _53->t, D.8446
	movl	%eax, (%rdx)	# D.8446, *_49
	.loc 1 1019 0 discriminator 2
	movq	-8(%rbp), %rax	# plan7, tmp215
	movq	144(%rax), %rax	# plan7_9->t, D.8442
	movl	-16(%rbp), %edx	# k, tmp216
	movslq	%edx, %rdx	# tmp216, D.8443
	salq	$3, %rdx	#, D.8443
	addq	%rdx, %rax	# D.8443, D.8442
	movq	(%rax), %rax	# *_58, D.8444
	leaq	24(%rax), %rdx	#, D.8444
	movq	-24(%rbp), %rax	# hmm, tmp217
	movq	24(%rax), %rcx	# hmm_7(D)->del, D.8445
	movl	-16(%rbp), %eax	# k, tmp218
	cltq
	imulq	$92, %rax, %rax	#, D.8443, D.8443
	addq	%rcx, %rax	# D.8445, D.8445
	movl	8(%rax), %eax	# _64->t, D.8446
	movl	%eax, (%rdx)	# D.8446, *_60
	.loc 1 1020 0 discriminator 2
	movq	-8(%rbp), %rax	# plan7, tmp219
	movq	144(%rax), %rax	# plan7_9->t, D.8442
	movl	-16(%rbp), %edx	# k, tmp220
	movslq	%edx, %rdx	# tmp220, D.8443
	salq	$3, %rdx	#, D.8443
	addq	%rdx, %rax	# D.8443, D.8442
	movq	(%rax), %rax	# *_69, D.8444
	leaq	12(%rax), %rdx	#, D.8444
	movq	-24(%rbp), %rax	# hmm, tmp221
	movq	8(%rax), %rcx	# hmm_7(D)->ins, D.8445
	movl	-16(%rbp), %eax	# k, tmp222
	cltq
	imulq	$92, %rax, %rax	#, D.8443, D.8443
	addq	%rcx, %rax	# D.8445, D.8445
	movl	(%rax), %eax	# _75->t, D.8446
	movl	%eax, (%rdx)	# D.8446, *_71
	.loc 1 1021 0 discriminator 2
	movq	-8(%rbp), %rax	# plan7, tmp223
	movq	144(%rax), %rax	# plan7_9->t, D.8442
	movl	-16(%rbp), %edx	# k, tmp224
	movslq	%edx, %rdx	# tmp224, D.8443
	salq	$3, %rdx	#, D.8443
	addq	%rdx, %rax	# D.8443, D.8442
	movq	(%rax), %rax	# *_80, D.8444
	leaq	16(%rax), %rdx	#, D.8444
	movq	-24(%rbp), %rax	# hmm, tmp225
	movq	8(%rax), %rcx	# hmm_7(D)->ins, D.8445
	movl	-16(%rbp), %eax	# k, tmp226
	cltq
	imulq	$92, %rax, %rax	#, D.8443, D.8443
	addq	%rcx, %rax	# D.8445, D.8445
	movl	4(%rax), %eax	# _86->t, D.8446
	movl	%eax, (%rdx)	# D.8446, *_82
	.loc 1 1013 0 discriminator 2
	addl	$1, -16(%rbp)	#, k
.L200:
	.loc 1 1013 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# hmm, tmp227
	movl	(%rax), %eax	# hmm_7(D)->M, D.8441
	cmpl	-16(%rbp), %eax	# k, D.8441
	jg	.L201	#,
	.loc 1 1024 0 is_stmt 1
	movl	$1, -16(%rbp)	#, k
	jmp	.L202	#
.L205:
	.loc 1 1025 0
	movl	$0, -12(%rbp)	#, x
	jmp	.L203	#
.L204:
	.loc 1 1026 0 discriminator 2
	movq	-8(%rbp), %rax	# plan7, tmp228
	movq	152(%rax), %rax	# plan7_9->mat, D.8442
	movl	-16(%rbp), %edx	# k, tmp229
	movslq	%edx, %rdx	# tmp229, D.8443
	salq	$3, %rdx	#, D.8443
	addq	%rdx, %rax	# D.8443, D.8442
	movq	(%rax), %rax	# *_96, D.8444
	movl	-12(%rbp), %edx	# x, tmp230
	movslq	%edx, %rdx	# tmp230, D.8443
	salq	$2, %rdx	#, D.8443
	addq	%rax, %rdx	# D.8444, D.8444
	movq	-24(%rbp), %rax	# hmm, tmp231
	movq	16(%rax), %rcx	# hmm_7(D)->mat, D.8445
	movl	-16(%rbp), %eax	# k, tmp232
	cltq
	imulq	$92, %rax, %rax	#, D.8443, D.8443
	addq	%rax, %rcx	# D.8443, D.8445
	movl	-12(%rbp), %eax	# x, tmp234
	cltq
	movl	12(%rcx,%rax,4), %eax	# _104->p, D.8446
	movl	%eax, (%rdx)	# D.8446, *_100
	.loc 1 1025 0 discriminator 2
	addl	$1, -12(%rbp)	#, x
.L203:
	.loc 1 1025 0 is_stmt 0 discriminator 1
	movl	Alphabet_size(%rip), %eax	# Alphabet_size, Alphabet_size.23
	cmpl	%eax, -12(%rbp)	# Alphabet_size.23, x
	jl	.L204	#,
	.loc 1 1024 0 is_stmt 1
	addl	$1, -16(%rbp)	#, k
.L202:
	.loc 1 1024 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# hmm, tmp235
	movl	(%rax), %eax	# hmm_7(D)->M, D.8441
	cmpl	-16(%rbp), %eax	# k, D.8441
	jge	.L205	#,
	.loc 1 1028 0 is_stmt 1
	movl	$1, -16(%rbp)	#, k
	jmp	.L206	#
.L209:
	.loc 1 1029 0
	movl	$0, -12(%rbp)	#, x
	jmp	.L207	#
.L208:
	.loc 1 1030 0 discriminator 2
	movq	-8(%rbp), %rax	# plan7, tmp236
	movq	160(%rax), %rax	# plan7_9->ins, D.8442
	movl	-16(%rbp), %edx	# k, tmp237
	movslq	%edx, %rdx	# tmp237, D.8443
	salq	$3, %rdx	#, D.8443
	addq	%rdx, %rax	# D.8443, D.8442
	movq	(%rax), %rax	# *_115, D.8444
	movl	-12(%rbp), %edx	# x, tmp238
	movslq	%edx, %rdx	# tmp238, D.8443
	salq	$2, %rdx	#, D.8443
	addq	%rax, %rdx	# D.8444, D.8444
	movq	-24(%rbp), %rax	# hmm, tmp239
	movq	8(%rax), %rcx	# hmm_7(D)->ins, D.8445
	movl	-16(%rbp), %eax	# k, tmp240
	cltq
	imulq	$92, %rax, %rax	#, D.8443, D.8443
	addq	%rax, %rcx	# D.8443, D.8445
	movl	-12(%rbp), %eax	# x, tmp242
	cltq
	movl	12(%rcx,%rax,4), %eax	# _123->p, D.8446
	movl	%eax, (%rdx)	# D.8446, *_119
	.loc 1 1029 0 discriminator 2
	addl	$1, -12(%rbp)	#, x
.L207:
	.loc 1 1029 0 is_stmt 0 discriminator 1
	movl	Alphabet_size(%rip), %eax	# Alphabet_size, Alphabet_size.24
	cmpl	%eax, -12(%rbp)	# Alphabet_size.24, x
	jl	.L208	#,
	.loc 1 1028 0 is_stmt 1
	addl	$1, -16(%rbp)	#, k
.L206:
	.loc 1 1028 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# hmm, tmp243
	movl	(%rax), %eax	# hmm_7(D)->M, D.8441
	cmpl	-16(%rbp), %eax	# k, D.8441
	jg	.L209	#,
	.loc 1 1032 0 is_stmt 1
	movq	-24(%rbp), %rax	# hmm, tmp244
	movq	16(%rax), %rax	# hmm_7(D)->mat, D.8445
	movss	8(%rax), %xmm1	# _127->t, D.8446
	movq	-24(%rbp), %rax	# hmm, tmp245
	movq	16(%rax), %rax	# hmm_7(D)->mat, D.8445
	movss	8(%rax), %xmm2	# _129->t, D.8446
	movq	-24(%rbp), %rax	# hmm, tmp246
	movq	16(%rax), %rax	# hmm_7(D)->mat, D.8445
	movss	(%rax), %xmm0	# _131->t, D.8446
	addss	%xmm2, %xmm0	# D.8446, D.8446
	divss	%xmm0, %xmm1	# D.8446, D.8446
	movaps	%xmm1, %xmm0	# D.8446, D.8446
	movq	-8(%rbp), %rax	# plan7, tmp247
	movss	%xmm0, 168(%rax)	# D.8446, plan7_9->tbd1
	.loc 1 1035 0
	movq	-8(%rbp), %rax	# plan7, tmp248
	leaq	304(%rax), %rdx	#, D.8444
	movq	-8(%rbp), %rax	# plan7, tmp249
	addq	$224, %rax	#, D.8447
	movq	%rdx, %rsi	# D.8444,
	movq	%rax, %rdi	# D.8447,
	call	P7DefaultNullModel	#
	.loc 1 1036 0
	movl	$0, -12(%rbp)	#, x
	jmp	.L210	#
.L211:
	.loc 1 1037 0 discriminator 2
	movq	-24(%rbp), %rax	# hmm, tmp250
	movl	-12(%rbp), %edx	# x, tmp252
	movslq	%edx, %rdx	# tmp252, tmp251
	addq	$8, %rdx	#, tmp253
	movl	(%rax,%rdx,4), %eax	# hmm_7(D)->null, D.8446
	movq	-8(%rbp), %rdx	# plan7, tmp254
	movl	-12(%rbp), %ecx	# x, tmp256
	movslq	%ecx, %rcx	# tmp256, tmp255
	addq	$56, %rcx	#, tmp257
	movl	%eax, (%rdx,%rcx,4)	# D.8446, plan7_9->null
	.loc 1 1036 0 discriminator 2
	addl	$1, -12(%rbp)	#, x
.L210:
	.loc 1 1036 0 is_stmt 0 discriminator 1
	movl	Alphabet_size(%rip), %eax	# Alphabet_size, Alphabet_size.25
	cmpl	%eax, -12(%rbp)	# Alphabet_size.25, x
	jl	.L211	#,
	.loc 1 1039 0 is_stmt 1
	movq	-24(%rbp), %rax	# hmm, tmp258
	movq	112(%rax), %rax	# hmm_7(D)->name, D.8448
	testq	%rax, %rax	# D.8448
	je	.L212	#,
	.loc 1 1040 0
	movq	-24(%rbp), %rax	# hmm, tmp259
	movq	112(%rax), %rdx	# hmm_7(D)->name, D.8448
	movq	-8(%rbp), %rax	# plan7, tmp260
	movq	%rdx, %rsi	# D.8448,
	movq	%rax, %rdi	# tmp260,
	call	Plan7SetName	#
.L212:
	.loc 1 1041 0
	movq	-24(%rbp), %rax	# hmm, tmp261
	movl	144(%rax), %eax	# hmm_7(D)->flags, D.8441
	andl	$1, %eax	#, D.8441
	testl	%eax, %eax	# D.8441
	je	.L213	#,
	.loc 1 1042 0
	movq	-24(%rbp), %rax	# hmm, tmp262
	movq	120(%rax), %rdx	# hmm_7(D)->ref, D.8448
	movq	-8(%rbp), %rax	# plan7, tmp263
	movq	24(%rax), %rax	# plan7_9->rf, D.8448
	movq	%rdx, %rsi	# D.8448,
	movq	%rax, %rdi	# D.8448,
	call	strcpy	#
	.loc 1 1043 0
	movq	-8(%rbp), %rax	# plan7, tmp264
	movl	456(%rax), %eax	# plan7_9->flags, D.8441
	orl	$4, %eax	#, D.8441
	movl	%eax, %edx	# D.8441, D.8441
	movq	-8(%rbp), %rax	# plan7, tmp265
	movl	%edx, 456(%rax)	# D.8441, plan7_9->flags
.L213:
	.loc 1 1045 0
	movq	-24(%rbp), %rax	# hmm, tmp266
	movl	144(%rax), %eax	# hmm_7(D)->flags, D.8441
	andl	$2, %eax	#, D.8441
	testl	%eax, %eax	# D.8441
	je	.L214	#,
	.loc 1 1046 0
	movq	-24(%rbp), %rax	# hmm, tmp267
	movq	128(%rax), %rdx	# hmm_7(D)->cs, D.8448
	movq	-8(%rbp), %rax	# plan7, tmp268
	movq	32(%rax), %rax	# plan7_9->cs, D.8448
	movq	%rdx, %rsi	# D.8448,
	movq	%rax, %rdi	# D.8448,
	call	strcpy	#
	.loc 1 1047 0
	movq	-8(%rbp), %rax	# plan7, tmp269
	movl	456(%rax), %eax	# plan7_9->flags, D.8441
	orl	$8, %eax	#, D.8441
	movl	%eax, %edx	# D.8441, D.8441
	movq	-8(%rbp), %rax	# plan7, tmp270
	movl	%edx, 456(%rax)	# D.8441, plan7_9->flags
.L214:
	.loc 1 1050 0
	movq	-8(%rbp), %rax	# plan7, tmp271
	movq	%rax, %rdi	# tmp271,
	call	Plan7LSConfig	#
	.loc 1 1051 0
	movq	-8(%rbp), %rax	# plan7, tmp272
	movq	%rax, %rdi	# tmp272,
	call	Plan7Renormalize	#
	.loc 1 1052 0
	movq	-8(%rbp), %rax	# plan7, tmp273
	movl	456(%rax), %eax	# plan7_9->flags, D.8441
	orl	$32, %eax	#, D.8441
	movl	%eax, %edx	# D.8441, D.8441
	movq	-8(%rbp), %rax	# plan7, tmp274
	movl	%edx, 456(%rax)	# D.8441, plan7_9->flags
	.loc 1 1053 0
	movq	-8(%rbp), %rax	# plan7, tmp275
	movl	456(%rax), %eax	# plan7_9->flags, D.8441
	andl	$-2, %eax	#, D.8441
	movl	%eax, %edx	# D.8441, D.8441
	movq	-8(%rbp), %rax	# plan7, tmp276
	movl	%edx, 456(%rax)	# D.8441, plan7_9->flags
	.loc 1 1054 0
	movq	-32(%rbp), %rax	# ret_plan7, tmp277
	movq	-8(%rbp), %rdx	# plan7, tmp278
	movq	%rdx, (%rax)	# tmp278, *ret_plan7_159(D)
	.loc 1 1055 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE24:
	.size	Plan9toPlan7, .-Plan9toPlan7
	.section	.rodata
	.align 4
.LC1:
	.long	0
	.align 4
.LC2:
	.long	1065353216
	.align 4
.LC3:
	.long	3323739136
	.align 8
.LC4:
	.long	3096499622
	.long	1083607751
	.align 8
.LC5:
	.long	0
	.long	1071644672
	.align 4
.LC6:
	.long	1056964608
	.align 8
.LC7:
	.long	0
	.long	1072693248
	.align 4
.LC8:
	.long	993703510
	.align 4
.LC9:
	.long	1065305418
	.align 8
.LC14:
	.long	1693346863
	.long	1073157447
	.align 8
.LC15:
	.long	0
	.long	-1060927616
	.align 8
.LC16:
	.long	0
	.long	1083129856
	.text
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/include/stdio.h"
	.file 5 "/usr/include/libio.h"
	.file 6 "/usr/include/time.h"
	.file 7 "structs.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xe7a
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF132
	.byte	0x1
	.long	.LASF133
	.long	.LASF134
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
	.uleb128 0x2
	.long	.LASF11
	.byte	0x3
	.byte	0x94
	.long	0x69
	.uleb128 0x5
	.byte	0x8
	.uleb128 0x6
	.byte	0x8
	.long	0xa0
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF12
	.uleb128 0x2
	.long	.LASF13
	.byte	0x4
	.byte	0x30
	.long	0xb2
	.uleb128 0x7
	.long	.LASF43
	.byte	0xd8
	.byte	0x5
	.byte	0xf6
	.long	0x233
	.uleb128 0x8
	.long	.LASF14
	.byte	0x5
	.byte	0xf7
	.long	0x62
	.byte	0
	.uleb128 0x8
	.long	.LASF15
	.byte	0x5
	.byte	0xfc
	.long	0x9a
	.byte	0x8
	.uleb128 0x8
	.long	.LASF16
	.byte	0x5
	.byte	0xfd
	.long	0x9a
	.byte	0x10
	.uleb128 0x8
	.long	.LASF17
	.byte	0x5
	.byte	0xfe
	.long	0x9a
	.byte	0x18
	.uleb128 0x8
	.long	.LASF18
	.byte	0x5
	.byte	0xff
	.long	0x9a
	.byte	0x20
	.uleb128 0x9
	.long	.LASF19
	.byte	0x5
	.value	0x100
	.long	0x9a
	.byte	0x28
	.uleb128 0x9
	.long	.LASF20
	.byte	0x5
	.value	0x101
	.long	0x9a
	.byte	0x30
	.uleb128 0x9
	.long	.LASF21
	.byte	0x5
	.value	0x102
	.long	0x9a
	.byte	0x38
	.uleb128 0x9
	.long	.LASF22
	.byte	0x5
	.value	0x103
	.long	0x9a
	.byte	0x40
	.uleb128 0x9
	.long	.LASF23
	.byte	0x5
	.value	0x105
	.long	0x9a
	.byte	0x48
	.uleb128 0x9
	.long	.LASF24
	.byte	0x5
	.value	0x106
	.long	0x9a
	.byte	0x50
	.uleb128 0x9
	.long	.LASF25
	.byte	0x5
	.value	0x107
	.long	0x9a
	.byte	0x58
	.uleb128 0x9
	.long	.LASF26
	.byte	0x5
	.value	0x109
	.long	0x26b
	.byte	0x60
	.uleb128 0x9
	.long	.LASF27
	.byte	0x5
	.value	0x10b
	.long	0x271
	.byte	0x68
	.uleb128 0x9
	.long	.LASF28
	.byte	0x5
	.value	0x10d
	.long	0x62
	.byte	0x70
	.uleb128 0x9
	.long	.LASF29
	.byte	0x5
	.value	0x111
	.long	0x62
	.byte	0x74
	.uleb128 0x9
	.long	.LASF30
	.byte	0x5
	.value	0x113
	.long	0x70
	.byte	0x78
	.uleb128 0x9
	.long	.LASF31
	.byte	0x5
	.value	0x117
	.long	0x46
	.byte	0x80
	.uleb128 0x9
	.long	.LASF32
	.byte	0x5
	.value	0x118
	.long	0x54
	.byte	0x82
	.uleb128 0x9
	.long	.LASF33
	.byte	0x5
	.value	0x119
	.long	0x277
	.byte	0x83
	.uleb128 0x9
	.long	.LASF34
	.byte	0x5
	.value	0x11d
	.long	0x287
	.byte	0x88
	.uleb128 0x9
	.long	.LASF35
	.byte	0x5
	.value	0x126
	.long	0x7b
	.byte	0x90
	.uleb128 0x9
	.long	.LASF36
	.byte	0x5
	.value	0x12f
	.long	0x98
	.byte	0x98
	.uleb128 0x9
	.long	.LASF37
	.byte	0x5
	.value	0x130
	.long	0x98
	.byte	0xa0
	.uleb128 0x9
	.long	.LASF38
	.byte	0x5
	.value	0x131
	.long	0x98
	.byte	0xa8
	.uleb128 0x9
	.long	.LASF39
	.byte	0x5
	.value	0x132
	.long	0x98
	.byte	0xb0
	.uleb128 0x9
	.long	.LASF40
	.byte	0x5
	.value	0x133
	.long	0x2d
	.byte	0xb8
	.uleb128 0x9
	.long	.LASF41
	.byte	0x5
	.value	0x135
	.long	0x62
	.byte	0xc0
	.uleb128 0x9
	.long	.LASF42
	.byte	0x5
	.value	0x137
	.long	0x28d
	.byte	0xc4
	.byte	0
	.uleb128 0xa
	.long	.LASF135
	.byte	0x5
	.byte	0x9b
	.uleb128 0x7
	.long	.LASF44
	.byte	0x18
	.byte	0x5
	.byte	0xa1
	.long	0x26b
	.uleb128 0x8
	.long	.LASF45
	.byte	0x5
	.byte	0xa2
	.long	0x26b
	.byte	0
	.uleb128 0x8
	.long	.LASF46
	.byte	0x5
	.byte	0xa3
	.long	0x271
	.byte	0x8
	.uleb128 0x8
	.long	.LASF47
	.byte	0x5
	.byte	0xa7
	.long	0x62
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x23a
	.uleb128 0x6
	.byte	0x8
	.long	0xb2
	.uleb128 0xb
	.long	0xa0
	.long	0x287
	.uleb128 0xc
	.long	0x86
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x233
	.uleb128 0xb
	.long	0xa0
	.long	0x29d
	.uleb128 0xc
	.long	0x86
	.byte	0x13
	.byte	0
	.uleb128 0x2
	.long	.LASF48
	.byte	0x6
	.byte	0x4b
	.long	0x8d
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.long	.LASF49
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.long	.LASF50
	.uleb128 0x6
	.byte	0x8
	.long	0x62
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF51
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF52
	.uleb128 0x6
	.byte	0x8
	.long	0xa7
	.uleb128 0x6
	.byte	0x8
	.long	0x9a
	.uleb128 0x6
	.byte	0x8
	.long	0x2a8
	.uleb128 0xd
	.long	.LASF53
	.value	0x1d0
	.byte	0x7
	.byte	0x65
	.long	0x533
	.uleb128 0x8
	.long	.LASF54
	.byte	0x7
	.byte	0x71
	.long	0x9a
	.byte	0
	.uleb128 0xe
	.string	"acc"
	.byte	0x7
	.byte	0x72
	.long	0x9a
	.byte	0x8
	.uleb128 0x8
	.long	.LASF55
	.byte	0x7
	.byte	0x73
	.long	0x9a
	.byte	0x10
	.uleb128 0xe
	.string	"rf"
	.byte	0x7
	.byte	0x74
	.long	0x9a
	.byte	0x18
	.uleb128 0xe
	.string	"cs"
	.byte	0x7
	.byte	0x75
	.long	0x9a
	.byte	0x20
	.uleb128 0xe
	.string	"ca"
	.byte	0x7
	.byte	0x76
	.long	0x9a
	.byte	0x28
	.uleb128 0x8
	.long	.LASF56
	.byte	0x7
	.byte	0x77
	.long	0x9a
	.byte	0x30
	.uleb128 0x8
	.long	.LASF57
	.byte	0x7
	.byte	0x78
	.long	0x62
	.byte	0x38
	.uleb128 0x8
	.long	.LASF58
	.byte	0x7
	.byte	0x79
	.long	0x9a
	.byte	0x40
	.uleb128 0xe
	.string	"map"
	.byte	0x7
	.byte	0x7a
	.long	0x2b6
	.byte	0x48
	.uleb128 0x8
	.long	.LASF59
	.byte	0x7
	.byte	0x7b
	.long	0x62
	.byte	0x50
	.uleb128 0x8
	.long	.LASF60
	.byte	0x7
	.byte	0x86
	.long	0x2b6
	.byte	0x58
	.uleb128 0x8
	.long	.LASF61
	.byte	0x7
	.byte	0x87
	.long	0x2b6
	.byte	0x60
	.uleb128 0x8
	.long	.LASF62
	.byte	0x7
	.byte	0x88
	.long	0x2b6
	.byte	0x68
	.uleb128 0xe
	.string	"ga1"
	.byte	0x7
	.byte	0x90
	.long	0x2a8
	.byte	0x70
	.uleb128 0xe
	.string	"ga2"
	.byte	0x7
	.byte	0x90
	.long	0x2a8
	.byte	0x74
	.uleb128 0xe
	.string	"tc1"
	.byte	0x7
	.byte	0x91
	.long	0x2a8
	.byte	0x78
	.uleb128 0xe
	.string	"tc2"
	.byte	0x7
	.byte	0x91
	.long	0x2a8
	.byte	0x7c
	.uleb128 0xe
	.string	"nc1"
	.byte	0x7
	.byte	0x92
	.long	0x2a8
	.byte	0x80
	.uleb128 0xe
	.string	"nc2"
	.byte	0x7
	.byte	0x92
	.long	0x2a8
	.byte	0x84
	.uleb128 0xe
	.string	"M"
	.byte	0x7
	.byte	0x9b
	.long	0x62
	.byte	0x88
	.uleb128 0xe
	.string	"t"
	.byte	0x7
	.byte	0x9c
	.long	0x533
	.byte	0x90
	.uleb128 0xe
	.string	"mat"
	.byte	0x7
	.byte	0x9d
	.long	0x533
	.byte	0x98
	.uleb128 0xe
	.string	"ins"
	.byte	0x7
	.byte	0x9e
	.long	0x533
	.byte	0xa0
	.uleb128 0x8
	.long	.LASF63
	.byte	0x7
	.byte	0x9f
	.long	0x2a8
	.byte	0xa8
	.uleb128 0xe
	.string	"xt"
	.byte	0x7
	.byte	0xa8
	.long	0x539
	.byte	0xac
	.uleb128 0x8
	.long	.LASF64
	.byte	0x7
	.byte	0xa9
	.long	0x2d6
	.byte	0xd0
	.uleb128 0xe
	.string	"end"
	.byte	0x7
	.byte	0xaa
	.long	0x2d6
	.byte	0xd8
	.uleb128 0x8
	.long	.LASF65
	.byte	0x7
	.byte	0xae
	.long	0x54f
	.byte	0xe0
	.uleb128 0xf
	.string	"p1"
	.byte	0x7
	.byte	0xaf
	.long	0x2a8
	.value	0x130
	.uleb128 0xf
	.string	"tsc"
	.byte	0x7
	.byte	0xc5
	.long	0x55f
	.value	0x138
	.uleb128 0xf
	.string	"msc"
	.byte	0x7
	.byte	0xc6
	.long	0x55f
	.value	0x140
	.uleb128 0xf
	.string	"isc"
	.byte	0x7
	.byte	0xc7
	.long	0x55f
	.value	0x148
	.uleb128 0xf
	.string	"xsc"
	.byte	0x7
	.byte	0xc8
	.long	0x565
	.value	0x150
	.uleb128 0xf
	.string	"bsc"
	.byte	0x7
	.byte	0xc9
	.long	0x2b6
	.value	0x170
	.uleb128 0xf
	.string	"esc"
	.byte	0x7
	.byte	0xca
	.long	0x2b6
	.value	0x178
	.uleb128 0x10
	.long	.LASF66
	.byte	0x7
	.byte	0xcb
	.long	0x2b6
	.value	0x180
	.uleb128 0x10
	.long	.LASF67
	.byte	0x7
	.byte	0xcb
	.long	0x2b6
	.value	0x188
	.uleb128 0x10
	.long	.LASF68
	.byte	0x7
	.byte	0xcb
	.long	0x2b6
	.value	0x190
	.uleb128 0x10
	.long	.LASF69
	.byte	0x7
	.byte	0xcb
	.long	0x2b6
	.value	0x198
	.uleb128 0x10
	.long	.LASF70
	.byte	0x7
	.byte	0xcb
	.long	0x2b6
	.value	0x1a0
	.uleb128 0x10
	.long	.LASF71
	.byte	0x7
	.byte	0xd6
	.long	0x55f
	.value	0x1a8
	.uleb128 0x10
	.long	.LASF72
	.byte	0x7
	.byte	0xd7
	.long	0x55f
	.value	0x1b0
	.uleb128 0x10
	.long	.LASF73
	.byte	0x7
	.byte	0xd8
	.long	0x62
	.value	0x1b8
	.uleb128 0x10
	.long	.LASF74
	.byte	0x7
	.byte	0xd9
	.long	0x62
	.value	0x1bc
	.uleb128 0xf
	.string	"mu"
	.byte	0x7
	.byte	0xde
	.long	0x2a8
	.value	0x1c0
	.uleb128 0x10
	.long	.LASF75
	.byte	0x7
	.byte	0xdf
	.long	0x2a8
	.value	0x1c4
	.uleb128 0x10
	.long	.LASF76
	.byte	0x7
	.byte	0xe1
	.long	0x62
	.value	0x1c8
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x2d6
	.uleb128 0xb
	.long	0x2a8
	.long	0x54f
	.uleb128 0xc
	.long	0x86
	.byte	0x3
	.uleb128 0xc
	.long	0x86
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.long	0x2a8
	.long	0x55f
	.uleb128 0xc
	.long	0x86
	.byte	0x13
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x2b6
	.uleb128 0xb
	.long	0x62
	.long	0x57b
	.uleb128 0xc
	.long	0x86
	.byte	0x3
	.uleb128 0xc
	.long	0x86
	.byte	0x1
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x581
	.uleb128 0x6
	.byte	0x8
	.long	0x2dc
	.uleb128 0x11
	.long	.LASF77
	.byte	0x20
	.byte	0x7
	.value	0x176
	.long	0x5c9
	.uleb128 0x9
	.long	.LASF78
	.byte	0x7
	.value	0x177
	.long	0x62
	.byte	0
	.uleb128 0x9
	.long	.LASF79
	.byte	0x7
	.value	0x178
	.long	0x9a
	.byte	0x8
	.uleb128 0x9
	.long	.LASF80
	.byte	0x7
	.value	0x179
	.long	0x2b6
	.byte	0x10
	.uleb128 0x12
	.string	"pos"
	.byte	0x7
	.value	0x17a
	.long	0x2b6
	.byte	0x18
	.byte	0
	.uleb128 0xb
	.long	0x2a8
	.long	0x5d9
	.uleb128 0xc
	.long	0x86
	.byte	0x2
	.byte	0
	.uleb128 0x11
	.long	.LASF81
	.byte	0x5c
	.byte	0x7
	.value	0x230
	.long	0x5fd
	.uleb128 0x12
	.string	"t"
	.byte	0x7
	.value	0x231
	.long	0x5c9
	.byte	0
	.uleb128 0x12
	.string	"p"
	.byte	0x7
	.value	0x232
	.long	0x54f
	.byte	0xc
	.byte	0
	.uleb128 0x11
	.long	.LASF82
	.byte	0x98
	.byte	0x7
	.value	0x237
	.long	0x68a
	.uleb128 0x12
	.string	"M"
	.byte	0x7
	.value	0x238
	.long	0x62
	.byte	0
	.uleb128 0x12
	.string	"ins"
	.byte	0x7
	.value	0x239
	.long	0x68a
	.byte	0x8
	.uleb128 0x12
	.string	"mat"
	.byte	0x7
	.value	0x23a
	.long	0x68a
	.byte	0x10
	.uleb128 0x12
	.string	"del"
	.byte	0x7
	.value	0x23b
	.long	0x68a
	.byte	0x18
	.uleb128 0x9
	.long	.LASF65
	.byte	0x7
	.value	0x23d
	.long	0x54f
	.byte	0x20
	.uleb128 0x9
	.long	.LASF54
	.byte	0x7
	.value	0x241
	.long	0x9a
	.byte	0x70
	.uleb128 0x12
	.string	"ref"
	.byte	0x7
	.value	0x242
	.long	0x9a
	.byte	0x78
	.uleb128 0x12
	.string	"cs"
	.byte	0x7
	.value	0x243
	.long	0x9a
	.byte	0x80
	.uleb128 0x9
	.long	.LASF83
	.byte	0x7
	.value	0x244
	.long	0x2d6
	.byte	0x88
	.uleb128 0x9
	.long	.LASF76
	.byte	0x7
	.value	0x246
	.long	0x62
	.byte	0x90
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x5d9
	.uleb128 0x13
	.long	.LASF84
	.byte	0x1
	.byte	0x29
	.long	0x581
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x6cc
	.uleb128 0x14
	.string	"M"
	.byte	0x1
	.byte	0x29
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x15
	.string	"hmm"
	.byte	0x1
	.byte	0x2b
	.long	0x581
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x13
	.long	.LASF85
	.byte	0x1
	.byte	0x32
	.long	0x581
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x6fc
	.uleb128 0x15
	.string	"hmm"
	.byte	0x1
	.byte	0x34
	.long	0x581
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x16
	.long	.LASF86
	.byte	0x1
	.byte	0x69
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x74c
	.uleb128 0x14
	.string	"hmm"
	.byte	0x1
	.byte	0x69
	.long	0x581
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x14
	.string	"M"
	.byte	0x1
	.byte	0x69
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x15
	.string	"k"
	.byte	0x1
	.byte	0x6b
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x15
	.string	"x"
	.byte	0x1
	.byte	0x6b
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x16
	.long	.LASF87
	.byte	0x1
	.byte	0xab
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x778
	.uleb128 0x14
	.string	"hmm"
	.byte	0x1
	.byte	0xab
	.long	0x581
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x16
	.long	.LASF88
	.byte	0x1
	.byte	0xd4
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x7b0
	.uleb128 0x14
	.string	"hmm"
	.byte	0x1
	.byte	0xd4
	.long	0x581
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x15
	.string	"k"
	.byte	0x1
	.byte	0xd6
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x16
	.long	.LASF89
	.byte	0x1
	.byte	0xef
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x7ea
	.uleb128 0x14
	.string	"hmm"
	.byte	0x1
	.byte	0xef
	.long	0x581
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x17
	.long	.LASF54
	.byte	0x1
	.byte	0xef
	.long	0x9a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x16
	.long	.LASF90
	.byte	0x1
	.byte	0xfc
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x824
	.uleb128 0x14
	.string	"hmm"
	.byte	0x1
	.byte	0xfc
	.long	0x581
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x14
	.string	"acc"
	.byte	0x1
	.byte	0xfc
	.long	0x9a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x18
	.long	.LASF91
	.byte	0x1
	.value	0x10b
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x861
	.uleb128 0x19
	.string	"hmm"
	.byte	0x1
	.value	0x10b
	.long	0x581
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1a
	.long	.LASF55
	.byte	0x1
	.value	0x10b
	.long	0x9a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x18
	.long	.LASF92
	.byte	0x1
	.value	0x11a
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x8c9
	.uleb128 0x19
	.string	"hmm"
	.byte	0x1
	.value	0x11a
	.long	0x581
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1a
	.long	.LASF93
	.byte	0x1
	.value	0x11a
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1a
	.long	.LASF94
	.byte	0x1
	.value	0x11a
	.long	0x2d0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1b
	.string	"len"
	.byte	0x1
	.value	0x11c
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1b
	.string	"i"
	.byte	0x1
	.value	0x11d
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x18
	.long	.LASF95
	.byte	0x1
	.value	0x13f
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x906
	.uleb128 0x19
	.string	"hmm"
	.byte	0x1
	.value	0x13f
	.long	0x581
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1c
	.long	.LASF96
	.byte	0x1
	.value	0x141
	.long	0x29d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1d
	.long	.LASF97
	.byte	0x1
	.value	0x14e
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x95e
	.uleb128 0x19
	.string	"hmm"
	.byte	0x1
	.value	0x14e
	.long	0x581
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1a
	.long	.LASF65
	.byte	0x1
	.value	0x14e
	.long	0x2d6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x19
	.string	"p1"
	.byte	0x1
	.value	0x14e
	.long	0x2a8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1b
	.string	"x"
	.byte	0x1
	.value	0x150
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x18
	.long	.LASF98
	.byte	0x1
	.value	0x184
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x9e4
	.uleb128 0x19
	.string	"hmm"
	.byte	0x1
	.value	0x184
	.long	0x581
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1a
	.long	.LASF99
	.byte	0x1
	.value	0x184
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x1b
	.string	"k"
	.byte	0x1
	.value	0x186
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1b
	.string	"x"
	.byte	0x1
	.value	0x187
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1c
	.long	.LASF100
	.byte	0x1
	.value	0x188
	.long	0x2a8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1b
	.string	"tbm"
	.byte	0x1
	.value	0x189
	.long	0x2a8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1b
	.string	"tme"
	.byte	0x1
	.value	0x189
	.long	0x2a8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x18
	.long	.LASF101
	.byte	0x1
	.value	0x211
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0xa3a
	.uleb128 0x19
	.string	"hmm"
	.byte	0x1
	.value	0x211
	.long	0x581
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1b
	.string	"k"
	.byte	0x1
	.value	0x213
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1b
	.string	"st"
	.byte	0x1
	.value	0x214
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1b
	.string	"d"
	.byte	0x1
	.value	0x215
	.long	0x2a8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x18
	.long	.LASF102
	.byte	0x1
	.value	0x245
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0xa82
	.uleb128 0x19
	.string	"hmm"
	.byte	0x1
	.value	0x245
	.long	0x581
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1b
	.string	"k"
	.byte	0x1
	.value	0x247
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1b
	.string	"d"
	.byte	0x1
	.value	0x248
	.long	0x2a8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x18
	.long	.LASF103
	.byte	0x1
	.value	0x279
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0xab0
	.uleb128 0x19
	.string	"hmm"
	.byte	0x1
	.value	0x279
	.long	0x581
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x18
	.long	.LASF104
	.byte	0x1
	.value	0x29a
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0xade
	.uleb128 0x19
	.string	"hmm"
	.byte	0x1
	.value	0x29a
	.long	0x581
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x18
	.long	.LASF105
	.byte	0x1
	.value	0x2b7
	.quad	.LFB18
	.quad	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0xb0c
	.uleb128 0x19
	.string	"hmm"
	.byte	0x1
	.value	0x2b7
	.long	0x581
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x18
	.long	.LASF106
	.byte	0x1
	.value	0x2e4
	.quad	.LFB19
	.quad	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0xb74
	.uleb128 0x19
	.string	"hmm"
	.byte	0x1
	.value	0x2e4
	.long	0x581
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1a
	.long	.LASF107
	.byte	0x1
	.value	0x2e4
	.long	0x2a8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1a
	.long	.LASF108
	.byte	0x1
	.value	0x2e4
	.long	0x2a8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1c
	.long	.LASF109
	.byte	0x1
	.value	0x2e6
	.long	0x2a8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1b
	.string	"k"
	.byte	0x1
	.value	0x2e7
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x18
	.long	.LASF110
	.byte	0x1
	.value	0x316
	.quad	.LFB20
	.quad	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0xbdc
	.uleb128 0x19
	.string	"hmm"
	.byte	0x1
	.value	0x316
	.long	0x581
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1a
	.long	.LASF107
	.byte	0x1
	.value	0x316
	.long	0x2a8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1a
	.long	.LASF108
	.byte	0x1
	.value	0x316
	.long	0x2a8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1c
	.long	.LASF109
	.byte	0x1
	.value	0x318
	.long	0x2a8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1b
	.string	"k"
	.byte	0x1
	.value	0x319
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x18
	.long	.LASF111
	.byte	0x1
	.value	0x346
	.quad	.LFB21
	.quad	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.long	0xc81
	.uleb128 0x19
	.string	"hmm"
	.byte	0x1
	.value	0x346
	.long	0x581
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1a
	.long	.LASF112
	.byte	0x1
	.value	0x346
	.long	0x2b6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1a
	.long	.LASF113
	.byte	0x1
	.value	0x346
	.long	0x533
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x1a
	.long	.LASF73
	.byte	0x1
	.value	0x347
	.long	0x2a8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x1a
	.long	.LASF74
	.byte	0x1
	.value	0x347
	.long	0x2a8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x1b
	.string	"k"
	.byte	0x1
	.value	0x349
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1b
	.string	"x"
	.byte	0x1
	.value	0x34a
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1b
	.string	"p"
	.byte	0x1
	.value	0x34b
	.long	0x2a8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1c
	.long	.LASF114
	.byte	0x1
	.value	0x34e
	.long	0x2d6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x18
	.long	.LASF115
	.byte	0x1
	.value	0x381
	.quad	.LFB22
	.quad	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.long	0xd55
	.uleb128 0x19
	.string	"fp"
	.byte	0x1
	.value	0x381
	.long	0x2ca
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x19
	.string	"hmm"
	.byte	0x1
	.value	0x381
	.long	0x581
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x19
	.string	"dsq"
	.byte	0x1
	.value	0x381
	.long	0x2d0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1a
	.long	.LASF57
	.byte	0x1
	.value	0x381
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x19
	.string	"tr"
	.byte	0x1
	.value	0x382
	.long	0xd55
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x1b
	.string	"idx"
	.byte	0x1
	.value	0x384
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1c
	.long	.LASF116
	.byte	0x1
	.value	0x385
	.long	0x2a8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1c
	.long	.LASF117
	.byte	0x1
	.value	0x386
	.long	0x2a8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1c
	.long	.LASF118
	.byte	0x1
	.value	0x386
	.long	0x2a8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1c
	.long	.LASF119
	.byte	0x1
	.value	0x386
	.long	0x2a8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1c
	.long	.LASF120
	.byte	0x1
	.value	0x387
	.long	0x2a8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1c
	.long	.LASF121
	.byte	0x1
	.value	0x387
	.long	0x2a8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xd5b
	.uleb128 0x6
	.byte	0x8
	.long	0x587
	.uleb128 0x1e
	.long	.LASF122
	.byte	0x1
	.value	0x3cb
	.long	0x62
	.quad	.LFB23
	.quad	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.long	0xdda
	.uleb128 0x19
	.string	"p"
	.byte	0x1
	.value	0x3cb
	.long	0x2d6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1a
	.long	.LASF65
	.byte	0x1
	.value	0x3cb
	.long	0x2d6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1a
	.long	.LASF123
	.byte	0x1
	.value	0x3cb
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1b
	.string	"x"
	.byte	0x1
	.value	0x3cd
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1c
	.long	.LASF124
	.byte	0x1
	.value	0x3ce
	.long	0x2a8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1c
	.long	.LASF125
	.byte	0x1
	.value	0x3cf
	.long	0x2a8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x18
	.long	.LASF126
	.byte	0x1
	.value	0x3ee
	.quad	.LFB24
	.quad	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.long	0xe40
	.uleb128 0x19
	.string	"hmm"
	.byte	0x1
	.value	0x3ee
	.long	0xe40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1a
	.long	.LASF127
	.byte	0x1
	.value	0x3ee
	.long	0x57b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1c
	.long	.LASF128
	.byte	0x1
	.value	0x3f0
	.long	0x581
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1b
	.string	"k"
	.byte	0x1
	.value	0x3f1
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1b
	.string	"x"
	.byte	0x1
	.value	0x3f1
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x5fd
	.uleb128 0x1f
	.long	.LASF129
	.byte	0x7
	.byte	0x3b
	.long	0x62
	.uleb128 0x1f
	.long	.LASF130
	.byte	0x7
	.byte	0x3c
	.long	0x62
	.uleb128 0xb
	.long	0xa0
	.long	0xe72
	.uleb128 0xc
	.long	0x86
	.byte	0x17
	.uleb128 0xc
	.long	0x86
	.byte	0x13
	.byte	0
	.uleb128 0x1f
	.long	.LASF131
	.byte	0x7
	.byte	0x3d
	.long	0xe5c
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x17
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
	.uleb128 0x1a
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
.LASF8:
	.string	"__off_t"
.LASF15:
	.string	"_IO_read_ptr"
.LASF7:
	.string	"size_t"
.LASF114:
	.string	"tripnull"
.LASF59:
	.string	"checksum"
.LASF33:
	.string	"_shortbuf"
.LASF79:
	.string	"statetype"
.LASF91:
	.string	"Plan7SetDescription"
.LASF68:
	.string	"isc_mem"
.LASF108:
	.string	"pexit"
.LASF70:
	.string	"esc_mem"
.LASF119:
	.string	"worst"
.LASF109:
	.string	"basep"
.LASF57:
	.string	"nseq"
.LASF52:
	.string	"long long unsigned int"
.LASF89:
	.string	"Plan7SetName"
.LASF66:
	.string	"tsc_mem"
.LASF105:
	.string	"Plan7LSConfig"
.LASF125:
	.string	"denom"
.LASF131:
	.string	"Degenerate"
.LASF75:
	.string	"lambda"
.LASF51:
	.string	"long long int"
.LASF4:
	.string	"signed char"
.LASF28:
	.string	"_fileno"
.LASF133:
	.string	"plan7.c"
.LASF16:
	.string	"_IO_read_end"
.LASF115:
	.string	"PrintPlan7Stats"
.LASF113:
	.string	"estmodel"
.LASF6:
	.string	"long int"
.LASF72:
	.string	"dnai"
.LASF14:
	.string	"_flags"
.LASF3:
	.string	"unsigned int"
.LASF22:
	.string	"_IO_buf_end"
.LASF31:
	.string	"_cur_column"
.LASF100:
	.string	"accum"
.LASF77:
	.string	"p7trace_s"
.LASF50:
	.string	"double"
.LASF30:
	.string	"_old_offset"
.LASF35:
	.string	"_offset"
.LASF122:
	.string	"DegenerateSymbolScore"
.LASF116:
	.string	"score"
.LASF82:
	.string	"plan9_s"
.LASF45:
	.string	"_next"
.LASF98:
	.string	"P7Logoddsify"
.LASF44:
	.string	"_IO_marker"
.LASF126:
	.string	"Plan9toPlan7"
.LASF97:
	.string	"Plan7SetNullModel"
.LASF95:
	.string	"Plan7SetCtime"
.LASF64:
	.string	"begin"
.LASF121:
	.string	"stddev"
.LASF112:
	.string	"aacode"
.LASF0:
	.string	"long unsigned int"
.LASF19:
	.string	"_IO_write_ptr"
.LASF54:
	.string	"name"
.LASF46:
	.string	"_sbuf"
.LASF2:
	.string	"short unsigned int"
.LASF96:
	.string	"date"
.LASF81:
	.string	"basic_state"
.LASF23:
	.string	"_IO_save_base"
.LASF120:
	.string	"sqsum"
.LASF84:
	.string	"AllocPlan7"
.LASF61:
	.string	"mpri"
.LASF34:
	.string	"_lock"
.LASF117:
	.string	"total"
.LASF58:
	.string	"ctime"
.LASF67:
	.string	"msc_mem"
.LASF10:
	.string	"sizetype"
.LASF86:
	.string	"AllocPlan7Body"
.LASF124:
	.string	"numer"
.LASF55:
	.string	"desc"
.LASF69:
	.string	"bsc_mem"
.LASF102:
	.string	"Plan7RenormalizeExits"
.LASF63:
	.string	"tbd1"
.LASF127:
	.string	"ret_plan7"
.LASF71:
	.string	"dnam"
.LASF135:
	.string	"_IO_lock_t"
.LASF43:
	.string	"_IO_FILE"
.LASF48:
	.string	"time_t"
.LASF101:
	.string	"Plan7Renormalize"
.LASF56:
	.string	"comlog"
.LASF41:
	.string	"_mode"
.LASF49:
	.string	"float"
.LASF47:
	.string	"_pos"
.LASF26:
	.string	"_markers"
.LASF65:
	.string	"null"
.LASF1:
	.string	"unsigned char"
.LASF106:
	.string	"Plan7SWConfig"
.LASF73:
	.string	"dna2"
.LASF53:
	.string	"plan7_s"
.LASF5:
	.string	"short int"
.LASF27:
	.string	"_chain"
.LASF29:
	.string	"_flags2"
.LASF130:
	.string	"Alphabet_iupac"
.LASF90:
	.string	"Plan7SetAccession"
.LASF13:
	.string	"FILE"
.LASF104:
	.string	"Plan7GlobalConfig"
.LASF123:
	.string	"ambig"
.LASF87:
	.string	"FreePlan7"
.LASF85:
	.string	"AllocPlan7Shell"
.LASF88:
	.string	"ZeroPlan7"
.LASF12:
	.string	"char"
.LASF129:
	.string	"Alphabet_size"
.LASF11:
	.string	"__time_t"
.LASF118:
	.string	"best"
.LASF99:
	.string	"viterbi_mode"
.LASF80:
	.string	"nodeidx"
.LASF103:
	.string	"Plan7NakedConfig"
.LASF128:
	.string	"plan7"
.LASF9:
	.string	"__off64_t"
.LASF17:
	.string	"_IO_read_base"
.LASF25:
	.string	"_IO_save_end"
.LASF36:
	.string	"__pad1"
.LASF37:
	.string	"__pad2"
.LASF38:
	.string	"__pad3"
.LASF39:
	.string	"__pad4"
.LASF40:
	.string	"__pad5"
.LASF20:
	.string	"_IO_write_end"
.LASF42:
	.string	"_unused2"
.LASF94:
	.string	"argv"
.LASF62:
	.string	"ipri"
.LASF92:
	.string	"Plan7ComlogAppend"
.LASF74:
	.string	"dna4"
.LASF60:
	.string	"tpri"
.LASF132:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF24:
	.string	"_IO_backup_base"
.LASF76:
	.string	"flags"
.LASF110:
	.string	"Plan7FSConfig"
.LASF32:
	.string	"_vtable_offset"
.LASF93:
	.string	"argc"
.LASF111:
	.string	"Plan7ESTConfig"
.LASF134:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/456.hmmer/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF83:
	.string	"xray"
.LASF107:
	.string	"pentry"
.LASF18:
	.string	"_IO_write_base"
.LASF21:
	.string	"_IO_buf_base"
.LASF78:
	.string	"tlen"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
