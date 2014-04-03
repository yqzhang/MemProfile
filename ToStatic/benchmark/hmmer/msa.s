	.file	"msa.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 msa.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.string	"msa.c"
	.text
	.globl	MSAAlloc
	.type	MSAAlloc, @function
MSAAlloc:
.LFB2:
	.file 1 "msa.c"
	.loc 1 64 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$40, %rsp	#,
	.cfi_offset 3, -24
	movl	%edi, -36(%rbp)	# nseq, nseq
	movl	%esi, -40(%rbp)	# alen, alen
	.loc 1 68 0
	movl	$360, %edx	#,
	movl	$68, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_malloc	#
	movq	%rax, -24(%rbp)	# tmp97, msa
	.loc 1 69 0
	movl	-36(%rbp), %eax	# nseq, tmp98
	cltq
	salq	$3, %rax	#, D.7733
	movq	%rax, %rdx	# D.7733,
	movl	$69, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_malloc	#
	movq	-24(%rbp), %rdx	# msa, tmp99
	movq	%rax, (%rdx)	# D.7734, msa_3->aseq
	.loc 1 70 0
	movl	-36(%rbp), %eax	# nseq, tmp100
	cltq
	salq	$3, %rax	#, D.7733
	movq	%rax, %rdx	# D.7733,
	movl	$70, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_malloc	#
	movq	-24(%rbp), %rdx	# msa, tmp101
	movq	%rax, 8(%rdx)	# D.7734, msa_3->sqname
	.loc 1 71 0
	movl	-36(%rbp), %eax	# nseq, tmp102
	cltq
	salq	$2, %rax	#, D.7733
	movq	%rax, %rdx	# D.7733,
	movl	$71, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_malloc	#
	movq	-24(%rbp), %rdx	# msa, tmp103
	movq	%rax, 328(%rdx)	# D.7734, msa_3->sqlen
	.loc 1 72 0
	movl	-36(%rbp), %eax	# nseq, tmp104
	cltq
	salq	$2, %rax	#, D.7733
	movq	%rax, %rdx	# D.7733,
	movl	$72, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_malloc	#
	movq	-24(%rbp), %rdx	# msa, tmp105
	movq	%rax, 16(%rdx)	# D.7734, msa_3->wgt
	.loc 1 74 0
	movl	$0, -28(%rbp)	#, i
	jmp	.L2	#
.L5:
	.loc 1 76 0
	movq	-24(%rbp), %rax	# msa, tmp106
	movq	8(%rax), %rax	# msa_3->sqname, D.7735
	movl	-28(%rbp), %edx	# i, tmp107
	movslq	%edx, %rdx	# tmp107, D.7733
	salq	$3, %rdx	#, D.7733
	addq	%rdx, %rax	# D.7733, D.7735
	movq	$0, (%rax)	#, *_21
	.loc 1 77 0
	movq	-24(%rbp), %rax	# msa, tmp108
	movq	328(%rax), %rax	# msa_3->sqlen, D.7736
	movl	-28(%rbp), %edx	# i, tmp109
	movslq	%edx, %rdx	# tmp109, D.7733
	salq	$2, %rdx	#, D.7733
	addq	%rdx, %rax	# D.7733, D.7736
	movl	$0, (%rax)	#, *_25
	.loc 1 78 0
	movq	-24(%rbp), %rax	# msa, tmp110
	movq	16(%rax), %rax	# msa_3->wgt, D.7737
	movl	-28(%rbp), %edx	# i, tmp111
	movslq	%edx, %rdx	# tmp111, D.7733
	salq	$2, %rdx	#, D.7733
	addq	%rax, %rdx	# D.7737, D.7737
	movl	.LC1(%rip), %eax	#, tmp112
	movl	%eax, (%rdx)	# tmp112, *_29
	.loc 1 80 0
	cmpl	$0, -40(%rbp)	#, alen
	je	.L3	#,
	.loc 1 80 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# msa, tmp113
	movq	(%rax), %rax	# msa_3->aseq, D.7735
	movl	-28(%rbp), %edx	# i, tmp114
	movslq	%edx, %rdx	# tmp114, D.7733
	salq	$3, %rdx	#, D.7733
	leaq	(%rax,%rdx), %rbx	#, D.7735
	movl	-40(%rbp), %eax	# alen, tmp115
	addl	$1, %eax	#, D.7738
	cltq
	movq	%rax, %rdx	# D.7733,
	movl	$80, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_malloc	#
	movq	%rax, (%rbx)	# D.7734, *_34
	jmp	.L4	#
.L3:
	.loc 1 81 0 is_stmt 1
	movq	-24(%rbp), %rax	# msa, tmp116
	movq	(%rax), %rax	# msa_3->aseq, D.7735
	movl	-28(%rbp), %edx	# i, tmp117
	movslq	%edx, %rdx	# tmp117, D.7733
	salq	$3, %rdx	#, D.7733
	addq	%rdx, %rax	# D.7733, D.7735
	movq	$0, (%rax)	#, *_41
.L4:
	.loc 1 74 0
	addl	$1, -28(%rbp)	#, i
.L2:
	.loc 1 74 0 is_stmt 0 discriminator 1
	movl	-28(%rbp), %eax	# i, tmp118
	cmpl	-36(%rbp), %eax	# nseq, tmp118
	jl	.L5	#,
	.loc 1 84 0 is_stmt 1
	movq	-24(%rbp), %rax	# msa, tmp119
	movl	-40(%rbp), %edx	# alen, tmp120
	movl	%edx, 24(%rax)	# tmp120, msa_3->alen
	.loc 1 85 0
	movq	-24(%rbp), %rax	# msa, tmp121
	movl	$0, 28(%rax)	#, msa_3->nseq
	.loc 1 86 0
	movq	-24(%rbp), %rax	# msa, tmp122
	movl	-36(%rbp), %edx	# nseq, tmp123
	movl	%edx, 320(%rax)	# tmp123, msa_3->nseqalloc
	.loc 1 87 0
	movq	-24(%rbp), %rax	# msa, tmp124
	movl	-36(%rbp), %edx	# nseq, tmp125
	movl	%edx, 324(%rax)	# tmp125, msa_3->nseqlump
	.loc 1 89 0
	movq	-24(%rbp), %rax	# msa, tmp126
	movl	$0, 32(%rax)	#, msa_3->flags
	.loc 1 90 0
	movq	-24(%rbp), %rax	# msa, tmp127
	movl	$0, 36(%rax)	#, msa_3->type
	.loc 1 91 0
	movq	-24(%rbp), %rax	# msa, tmp128
	movq	$0, 40(%rax)	#, msa_3->name
	.loc 1 92 0
	movq	-24(%rbp), %rax	# msa, tmp129
	movq	$0, 48(%rax)	#, msa_3->desc
	.loc 1 93 0
	movq	-24(%rbp), %rax	# msa, tmp130
	movq	$0, 56(%rax)	#, msa_3->acc
	.loc 1 94 0
	movq	-24(%rbp), %rax	# msa, tmp131
	movq	$0, 64(%rax)	#, msa_3->au
	.loc 1 95 0
	movq	-24(%rbp), %rax	# msa, tmp132
	movq	$0, 72(%rax)	#, msa_3->ss_cons
	.loc 1 96 0
	movq	-24(%rbp), %rax	# msa, tmp133
	movq	$0, 80(%rax)	#, msa_3->sa_cons
	.loc 1 97 0
	movq	-24(%rbp), %rax	# msa, tmp134
	movq	$0, 88(%rax)	#, msa_3->rf
	.loc 1 98 0
	movq	-24(%rbp), %rax	# msa, tmp135
	movq	$0, 96(%rax)	#, msa_3->sqacc
	.loc 1 99 0
	movq	-24(%rbp), %rax	# msa, tmp136
	movq	$0, 104(%rax)	#, msa_3->sqdesc
	.loc 1 100 0
	movq	-24(%rbp), %rax	# msa, tmp137
	movq	$0, 112(%rax)	#, msa_3->ss
	.loc 1 101 0
	movq	-24(%rbp), %rax	# msa, tmp138
	movq	$0, 336(%rax)	#, msa_3->sslen
	.loc 1 102 0
	movq	-24(%rbp), %rax	# msa, tmp139
	movq	$0, 120(%rax)	#, msa_3->sa
	.loc 1 103 0
	movq	-24(%rbp), %rax	# msa, tmp140
	movq	$0, 344(%rax)	#, msa_3->salen
	.loc 1 104 0
	call	GKIInit	#
	movq	-24(%rbp), %rdx	# msa, tmp141
	movq	%rax, 312(%rdx)	# D.7739, msa_3->index
	.loc 1 105 0
	movq	-24(%rbp), %rax	# msa, tmp142
	movl	$0, 352(%rax)	#, msa_3->lastidx
	.loc 1 107 0
	movl	$0, -28(%rbp)	#, i
	jmp	.L6	#
.L7:
	.loc 1 108 0 discriminator 2
	movq	-24(%rbp), %rdx	# msa, tmp143
	movl	-28(%rbp), %eax	# i, tmp145
	cltq
	leaq	32(%rax), %rcx	#, tmp146
	movl	.LC2(%rip), %eax	#, tmp147
	movl	%eax, (%rdx,%rcx,4)	# tmp147, msa_3->cutoff
	.loc 1 109 0 discriminator 2
	movq	-24(%rbp), %rax	# msa, tmp148
	movl	-28(%rbp), %edx	# i, tmp150
	movslq	%edx, %rdx	# tmp150, tmp149
	addq	$36, %rdx	#, tmp151
	movl	$0, 8(%rax,%rdx,4)	#, msa_3->cutoff_is_set
	.loc 1 107 0 discriminator 2
	addl	$1, -28(%rbp)	#, i
.L6:
	.loc 1 107 0 is_stmt 0 discriminator 1
	cmpl	$5, -28(%rbp)	#, i
	jle	.L7	#,
	.loc 1 114 0 is_stmt 1
	movq	-24(%rbp), %rax	# msa, tmp152
	movq	$0, 176(%rax)	#, msa_3->comment
	.loc 1 115 0
	movq	-24(%rbp), %rax	# msa, tmp153
	movl	$0, 184(%rax)	#, msa_3->ncomment
	.loc 1 116 0
	movq	-24(%rbp), %rax	# msa, tmp154
	movl	$0, 188(%rax)	#, msa_3->alloc_ncomment
	.loc 1 118 0
	movq	-24(%rbp), %rax	# msa, tmp155
	movq	$0, 192(%rax)	#, msa_3->gf_tag
	.loc 1 119 0
	movq	-24(%rbp), %rax	# msa, tmp156
	movq	$0, 200(%rax)	#, msa_3->gf
	.loc 1 120 0
	movq	-24(%rbp), %rax	# msa, tmp157
	movl	$0, 208(%rax)	#, msa_3->ngf
	.loc 1 122 0
	movq	-24(%rbp), %rax	# msa, tmp158
	movq	$0, 216(%rax)	#, msa_3->gs_tag
	.loc 1 123 0
	movq	-24(%rbp), %rax	# msa, tmp159
	movq	$0, 224(%rax)	#, msa_3->gs
	.loc 1 124 0
	movq	-24(%rbp), %rax	# msa, tmp160
	movq	$0, 232(%rax)	#, msa_3->gs_idx
	.loc 1 125 0
	movq	-24(%rbp), %rax	# msa, tmp161
	movl	$0, 240(%rax)	#, msa_3->ngs
	.loc 1 127 0
	movq	-24(%rbp), %rax	# msa, tmp162
	movq	$0, 248(%rax)	#, msa_3->gc_tag
	.loc 1 128 0
	movq	-24(%rbp), %rax	# msa, tmp163
	movq	$0, 256(%rax)	#, msa_3->gc
	.loc 1 129 0
	movq	-24(%rbp), %rax	# msa, tmp164
	movq	$0, 264(%rax)	#, msa_3->gc_idx
	.loc 1 130 0
	movq	-24(%rbp), %rax	# msa, tmp165
	movl	$0, 272(%rax)	#, msa_3->ngc
	.loc 1 132 0
	movq	-24(%rbp), %rax	# msa, tmp166
	movq	$0, 280(%rax)	#, msa_3->gr_tag
	.loc 1 133 0
	movq	-24(%rbp), %rax	# msa, tmp167
	movq	$0, 288(%rax)	#, msa_3->gr
	.loc 1 134 0
	movq	-24(%rbp), %rax	# msa, tmp168
	movq	$0, 296(%rax)	#, msa_3->gr_idx
	.loc 1 135 0
	movq	-24(%rbp), %rax	# msa, tmp169
	movl	$0, 304(%rax)	#, msa_3->ngr
	.loc 1 139 0
	movq	-24(%rbp), %rax	# msa, D.7740
	.loc 1 140 0
	addq	$40, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	MSAAlloc, .-MSAAlloc
	.globl	MSAExpand
	.type	MSAExpand, @function
MSAExpand:
.LFB3:
	.loc 1 157 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$40, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)	# msa, msa
	.loc 1 160 0
	movq	-40(%rbp), %rax	# msa, tmp267
	movl	320(%rax), %edx	# msa_6(D)->nseqalloc, D.7742
	movq	-40(%rbp), %rax	# msa, tmp268
	movl	324(%rax), %eax	# msa_6(D)->nseqlump, D.7742
	addl	%eax, %edx	# D.7742, D.7742
	movq	-40(%rbp), %rax	# msa, tmp269
	movl	%edx, 320(%rax)	# D.7742, msa_6(D)->nseqalloc
	.loc 1 162 0
	movq	-40(%rbp), %rax	# msa, tmp270
	movl	320(%rax), %eax	# msa_6(D)->nseqalloc, D.7742
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7743
	movq	-40(%rbp), %rax	# msa, tmp271
	movq	(%rax), %rax	# msa_6(D)->aseq, D.7744
	movq	%rdx, %rcx	# D.7743,
	movq	%rax, %rdx	# D.7744,
	movl	$162, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_realloc	#
	movq	-40(%rbp), %rdx	# msa, tmp272
	movq	%rax, (%rdx)	# D.7745, msa_6(D)->aseq
	.loc 1 163 0
	movq	-40(%rbp), %rax	# msa, tmp273
	movl	320(%rax), %eax	# msa_6(D)->nseqalloc, D.7742
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7743
	movq	-40(%rbp), %rax	# msa, tmp274
	movq	8(%rax), %rax	# msa_6(D)->sqname, D.7744
	movq	%rdx, %rcx	# D.7743,
	movq	%rax, %rdx	# D.7744,
	movl	$163, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_realloc	#
	movq	-40(%rbp), %rdx	# msa, tmp275
	movq	%rax, 8(%rdx)	# D.7745, msa_6(D)->sqname
	.loc 1 164 0
	movq	-40(%rbp), %rax	# msa, tmp276
	movl	320(%rax), %eax	# msa_6(D)->nseqalloc, D.7742
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7743
	movq	-40(%rbp), %rax	# msa, tmp277
	movq	328(%rax), %rax	# msa_6(D)->sqlen, D.7746
	movq	%rdx, %rcx	# D.7743,
	movq	%rax, %rdx	# D.7746,
	movl	$164, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_realloc	#
	movq	-40(%rbp), %rdx	# msa, tmp278
	movq	%rax, 328(%rdx)	# D.7745, msa_6(D)->sqlen
	.loc 1 165 0
	movq	-40(%rbp), %rax	# msa, tmp279
	movl	320(%rax), %eax	# msa_6(D)->nseqalloc, D.7742
	cltq
	leaq	0(,%rax,4), %rdx	#, D.7743
	movq	-40(%rbp), %rax	# msa, tmp280
	movq	16(%rax), %rax	# msa_6(D)->wgt, D.7747
	movq	%rdx, %rcx	# D.7743,
	movq	%rax, %rdx	# D.7747,
	movl	$165, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_realloc	#
	movq	-40(%rbp), %rdx	# msa, tmp281
	movq	%rax, 16(%rdx)	# D.7745, msa_6(D)->wgt
	.loc 1 167 0
	movq	-40(%rbp), %rax	# msa, tmp282
	movq	112(%rax), %rax	# msa_6(D)->ss, D.7744
	testq	%rax, %rax	# D.7744
	je	.L10	#,
	.loc 1 168 0
	movq	-40(%rbp), %rax	# msa, tmp283
	movl	320(%rax), %eax	# msa_6(D)->nseqalloc, D.7742
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7743
	movq	-40(%rbp), %rax	# msa, tmp284
	movq	112(%rax), %rax	# msa_6(D)->ss, D.7744
	movq	%rdx, %rcx	# D.7743,
	movq	%rax, %rdx	# D.7744,
	movl	$168, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_realloc	#
	movq	-40(%rbp), %rdx	# msa, tmp285
	movq	%rax, 112(%rdx)	# D.7745, msa_6(D)->ss
	.loc 1 169 0
	movq	-40(%rbp), %rax	# msa, tmp286
	movl	320(%rax), %eax	# msa_6(D)->nseqalloc, D.7742
	cltq
	leaq	0(,%rax,4), %rdx	#, D.7743
	movq	-40(%rbp), %rax	# msa, tmp287
	movq	336(%rax), %rax	# msa_6(D)->sslen, D.7746
	movq	%rdx, %rcx	# D.7743,
	movq	%rax, %rdx	# D.7746,
	movl	$169, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_realloc	#
	movq	-40(%rbp), %rdx	# msa, tmp288
	movq	%rax, 336(%rdx)	# D.7745, msa_6(D)->sslen
.L10:
	.loc 1 171 0
	movq	-40(%rbp), %rax	# msa, tmp289
	movq	120(%rax), %rax	# msa_6(D)->sa, D.7744
	testq	%rax, %rax	# D.7744
	je	.L11	#,
	.loc 1 172 0
	movq	-40(%rbp), %rax	# msa, tmp290
	movl	320(%rax), %eax	# msa_6(D)->nseqalloc, D.7742
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7743
	movq	-40(%rbp), %rax	# msa, tmp291
	movq	120(%rax), %rax	# msa_6(D)->sa, D.7744
	movq	%rdx, %rcx	# D.7743,
	movq	%rax, %rdx	# D.7744,
	movl	$172, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_realloc	#
	movq	-40(%rbp), %rdx	# msa, tmp292
	movq	%rax, 120(%rdx)	# D.7745, msa_6(D)->sa
	.loc 1 173 0
	movq	-40(%rbp), %rax	# msa, tmp293
	movl	320(%rax), %eax	# msa_6(D)->nseqalloc, D.7742
	cltq
	leaq	0(,%rax,4), %rdx	#, D.7743
	movq	-40(%rbp), %rax	# msa, tmp294
	movq	344(%rax), %rax	# msa_6(D)->salen, D.7746
	movq	%rdx, %rcx	# D.7743,
	movq	%rax, %rdx	# D.7746,
	movl	$173, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_realloc	#
	movq	-40(%rbp), %rdx	# msa, tmp295
	movq	%rax, 344(%rdx)	# D.7745, msa_6(D)->salen
.L11:
	.loc 1 175 0
	movq	-40(%rbp), %rax	# msa, tmp296
	movq	96(%rax), %rax	# msa_6(D)->sqacc, D.7744
	testq	%rax, %rax	# D.7744
	je	.L12	#,
	.loc 1 176 0
	movq	-40(%rbp), %rax	# msa, tmp297
	movl	320(%rax), %eax	# msa_6(D)->nseqalloc, D.7742
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7743
	movq	-40(%rbp), %rax	# msa, tmp298
	movq	96(%rax), %rax	# msa_6(D)->sqacc, D.7744
	movq	%rdx, %rcx	# D.7743,
	movq	%rax, %rdx	# D.7744,
	movl	$176, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_realloc	#
	movq	-40(%rbp), %rdx	# msa, tmp299
	movq	%rax, 96(%rdx)	# D.7745, msa_6(D)->sqacc
.L12:
	.loc 1 177 0
	movq	-40(%rbp), %rax	# msa, tmp300
	movq	104(%rax), %rax	# msa_6(D)->sqdesc, D.7744
	testq	%rax, %rax	# D.7744
	je	.L13	#,
	.loc 1 178 0
	movq	-40(%rbp), %rax	# msa, tmp301
	movl	320(%rax), %eax	# msa_6(D)->nseqalloc, D.7742
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7743
	movq	-40(%rbp), %rax	# msa, tmp302
	movq	104(%rax), %rax	# msa_6(D)->sqdesc, D.7744
	movq	%rdx, %rcx	# D.7743,
	movq	%rax, %rdx	# D.7744,
	movl	$178, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_realloc	#
	movq	-40(%rbp), %rdx	# msa, tmp303
	movq	%rax, 104(%rdx)	# D.7745, msa_6(D)->sqdesc
.L13:
	.loc 1 180 0
	movq	-40(%rbp), %rax	# msa, tmp304
	movl	320(%rax), %edx	# msa_6(D)->nseqalloc, D.7742
	movq	-40(%rbp), %rax	# msa, tmp305
	movl	324(%rax), %eax	# msa_6(D)->nseqlump, D.7742
	subl	%eax, %edx	# D.7742, tmp306
	movl	%edx, %eax	# tmp306, tmp306
	movl	%eax, -24(%rbp)	# tmp306, i
	jmp	.L14	#
.L25:
	.loc 1 182 0
	movq	-40(%rbp), %rax	# msa, tmp307
	movq	8(%rax), %rax	# msa_6(D)->sqname, D.7744
	movl	-24(%rbp), %edx	# i, tmp308
	movslq	%edx, %rdx	# tmp308, D.7743
	salq	$3, %rdx	#, D.7743
	addq	%rdx, %rax	# D.7743, D.7744
	movq	$0, (%rax)	#, *_71
	.loc 1 183 0
	movq	-40(%rbp), %rax	# msa, tmp309
	movq	16(%rax), %rax	# msa_6(D)->wgt, D.7747
	movl	-24(%rbp), %edx	# i, tmp310
	movslq	%edx, %rdx	# tmp310, D.7743
	salq	$2, %rdx	#, D.7743
	addq	%rax, %rdx	# D.7747, D.7747
	movl	.LC1(%rip), %eax	#, tmp311
	movl	%eax, (%rdx)	# tmp311, *_75
	.loc 1 185 0
	movq	-40(%rbp), %rax	# msa, tmp312
	movq	96(%rax), %rax	# msa_6(D)->sqacc, D.7744
	testq	%rax, %rax	# D.7744
	je	.L15	#,
	.loc 1 185 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# msa, tmp313
	movq	96(%rax), %rax	# msa_6(D)->sqacc, D.7744
	movl	-24(%rbp), %edx	# i, tmp314
	movslq	%edx, %rdx	# tmp314, D.7743
	salq	$3, %rdx	#, D.7743
	addq	%rdx, %rax	# D.7743, D.7744
	movq	$0, (%rax)	#, *_80
.L15:
	.loc 1 186 0 is_stmt 1
	movq	-40(%rbp), %rax	# msa, tmp315
	movq	104(%rax), %rax	# msa_6(D)->sqdesc, D.7744
	testq	%rax, %rax	# D.7744
	je	.L16	#,
	.loc 1 186 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# msa, tmp316
	movq	104(%rax), %rax	# msa_6(D)->sqdesc, D.7744
	movl	-24(%rbp), %edx	# i, tmp317
	movslq	%edx, %rdx	# tmp317, D.7743
	salq	$3, %rdx	#, D.7743
	addq	%rdx, %rax	# D.7743, D.7744
	movq	$0, (%rax)	#, *_85
.L16:
	.loc 1 188 0 is_stmt 1
	movq	-40(%rbp), %rax	# msa, tmp318
	movl	24(%rax), %eax	# msa_6(D)->alen, D.7742
	testl	%eax, %eax	# D.7742
	je	.L17	#,
	.loc 1 189 0
	movq	-40(%rbp), %rax	# msa, tmp319
	movq	(%rax), %rax	# msa_6(D)->aseq, D.7744
	movl	-24(%rbp), %edx	# i, tmp320
	movslq	%edx, %rdx	# tmp320, D.7743
	salq	$3, %rdx	#, D.7743
	leaq	(%rax,%rdx), %rbx	#, D.7744
	movq	-40(%rbp), %rax	# msa, tmp321
	movl	24(%rax), %eax	# msa_6(D)->alen, D.7742
	addl	$1, %eax	#, D.7742
	movslq	%eax, %rdx	# D.7742, D.7743
	movq	-40(%rbp), %rax	# msa, tmp322
	movq	(%rax), %rax	# msa_6(D)->aseq, D.7744
	movl	-24(%rbp), %ecx	# i, tmp323
	movslq	%ecx, %rcx	# tmp323, D.7743
	salq	$3, %rcx	#, D.7743
	addq	%rcx, %rax	# D.7743, D.7744
	movq	(%rax), %rax	# *_97, D.7748
	movq	%rdx, %rcx	# D.7743,
	movq	%rax, %rdx	# D.7748,
	movl	$189, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_realloc	#
	movq	%rax, (%rbx)	# D.7745, *_90
	jmp	.L18	#
.L17:
	.loc 1 190 0
	movq	-40(%rbp), %rax	# msa, tmp324
	movq	(%rax), %rax	# msa_6(D)->aseq, D.7744
	movl	-24(%rbp), %edx	# i, tmp325
	movslq	%edx, %rdx	# tmp325, D.7743
	salq	$3, %rdx	#, D.7743
	addq	%rdx, %rax	# D.7743, D.7744
	movq	$0, (%rax)	#, *_103
.L18:
	.loc 1 191 0
	movq	-40(%rbp), %rax	# msa, tmp326
	movq	328(%rax), %rax	# msa_6(D)->sqlen, D.7746
	movl	-24(%rbp), %edx	# i, tmp327
	movslq	%edx, %rdx	# tmp327, D.7743
	salq	$2, %rdx	#, D.7743
	addq	%rdx, %rax	# D.7743, D.7746
	movl	$0, (%rax)	#, *_107
	.loc 1 193 0
	movq	-40(%rbp), %rax	# msa, tmp328
	movq	112(%rax), %rax	# msa_6(D)->ss, D.7744
	testq	%rax, %rax	# D.7744
	je	.L19	#,
	.loc 1 194 0
	movq	-40(%rbp), %rax	# msa, tmp329
	movl	24(%rax), %eax	# msa_6(D)->alen, D.7742
	testl	%eax, %eax	# D.7742
	je	.L20	#,
	.loc 1 195 0
	movq	-40(%rbp), %rax	# msa, tmp330
	movq	112(%rax), %rax	# msa_6(D)->ss, D.7744
	movl	-24(%rbp), %edx	# i, tmp331
	movslq	%edx, %rdx	# tmp331, D.7743
	salq	$3, %rdx	#, D.7743
	leaq	(%rax,%rdx), %rbx	#, D.7744
	movq	-40(%rbp), %rax	# msa, tmp332
	movl	24(%rax), %eax	# msa_6(D)->alen, D.7742
	addl	$1, %eax	#, D.7742
	movslq	%eax, %rdx	# D.7742, D.7743
	movq	-40(%rbp), %rax	# msa, tmp333
	movq	112(%rax), %rax	# msa_6(D)->ss, D.7744
	movl	-24(%rbp), %ecx	# i, tmp334
	movslq	%ecx, %rcx	# tmp334, D.7743
	salq	$3, %rcx	#, D.7743
	addq	%rcx, %rax	# D.7743, D.7744
	movq	(%rax), %rax	# *_120, D.7748
	movq	%rdx, %rcx	# D.7743,
	movq	%rax, %rdx	# D.7748,
	movl	$195, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_realloc	#
	movq	%rax, (%rbx)	# D.7745, *_113
	jmp	.L21	#
.L20:
	.loc 1 196 0
	movq	-40(%rbp), %rax	# msa, tmp335
	movq	112(%rax), %rax	# msa_6(D)->ss, D.7744
	movl	-24(%rbp), %edx	# i, tmp336
	movslq	%edx, %rdx	# tmp336, D.7743
	salq	$3, %rdx	#, D.7743
	addq	%rdx, %rax	# D.7743, D.7744
	movq	$0, (%rax)	#, *_126
.L21:
	.loc 1 197 0
	movq	-40(%rbp), %rax	# msa, tmp337
	movq	336(%rax), %rax	# msa_6(D)->sslen, D.7746
	movl	-24(%rbp), %edx	# i, tmp338
	movslq	%edx, %rdx	# tmp338, D.7743
	salq	$2, %rdx	#, D.7743
	addq	%rdx, %rax	# D.7743, D.7746
	movl	$0, (%rax)	#, *_130
.L19:
	.loc 1 199 0
	movq	-40(%rbp), %rax	# msa, tmp339
	movq	120(%rax), %rax	# msa_6(D)->sa, D.7744
	testq	%rax, %rax	# D.7744
	je	.L22	#,
	.loc 1 200 0
	movq	-40(%rbp), %rax	# msa, tmp340
	movl	24(%rax), %eax	# msa_6(D)->alen, D.7742
	testl	%eax, %eax	# D.7742
	je	.L23	#,
	.loc 1 201 0
	movq	-40(%rbp), %rax	# msa, tmp341
	movq	120(%rax), %rax	# msa_6(D)->sa, D.7744
	movl	-24(%rbp), %edx	# i, tmp342
	movslq	%edx, %rdx	# tmp342, D.7743
	salq	$3, %rdx	#, D.7743
	leaq	(%rax,%rdx), %rbx	#, D.7744
	movq	-40(%rbp), %rax	# msa, tmp343
	movl	24(%rax), %eax	# msa_6(D)->alen, D.7742
	addl	$1, %eax	#, D.7742
	movslq	%eax, %rdx	# D.7742, D.7743
	movq	-40(%rbp), %rax	# msa, tmp344
	movq	112(%rax), %rax	# msa_6(D)->ss, D.7744
	movl	-24(%rbp), %ecx	# i, tmp345
	movslq	%ecx, %rcx	# tmp345, D.7743
	salq	$3, %rcx	#, D.7743
	addq	%rcx, %rax	# D.7743, D.7744
	movq	(%rax), %rax	# *_143, D.7748
	movq	%rdx, %rcx	# D.7743,
	movq	%rax, %rdx	# D.7748,
	movl	$201, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_realloc	#
	movq	%rax, (%rbx)	# D.7745, *_136
	jmp	.L24	#
.L23:
	.loc 1 203 0
	movq	-40(%rbp), %rax	# msa, tmp346
	movq	120(%rax), %rax	# msa_6(D)->sa, D.7744
	movl	-24(%rbp), %edx	# i, tmp347
	movslq	%edx, %rdx	# tmp347, D.7743
	salq	$3, %rdx	#, D.7743
	addq	%rdx, %rax	# D.7743, D.7744
	movq	$0, (%rax)	#, *_149
.L24:
	.loc 1 204 0
	movq	-40(%rbp), %rax	# msa, tmp348
	movq	344(%rax), %rax	# msa_6(D)->salen, D.7746
	movl	-24(%rbp), %edx	# i, tmp349
	movslq	%edx, %rdx	# tmp349, D.7743
	salq	$2, %rdx	#, D.7743
	addq	%rdx, %rax	# D.7743, D.7746
	movl	$0, (%rax)	#, *_153
.L22:
	.loc 1 180 0
	addl	$1, -24(%rbp)	#, i
.L14:
	.loc 1 180 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# msa, tmp350
	movl	320(%rax), %eax	# msa_6(D)->nseqalloc, D.7742
	cmpl	-24(%rbp), %eax	# i, D.7742
	jg	.L25	#,
	.loc 1 212 0 is_stmt 1
	movq	-40(%rbp), %rax	# msa, tmp351
	movq	224(%rax), %rax	# msa_6(D)->gs, D.7749
	testq	%rax, %rax	# D.7749
	je	.L26	#,
	.loc 1 213 0
	movl	$0, -24(%rbp)	#, i
	jmp	.L27	#
.L31:
	.loc 1 215 0
	movq	-40(%rbp), %rax	# msa, tmp352
	movq	224(%rax), %rax	# msa_6(D)->gs, D.7749
	movl	-24(%rbp), %edx	# i, tmp353
	movslq	%edx, %rdx	# tmp353, D.7743
	salq	$3, %rdx	#, D.7743
	addq	%rdx, %rax	# D.7743, D.7749
	movq	(%rax), %rax	# *_161, D.7744
	testq	%rax, %rax	# D.7744
	je	.L28	#,
	.loc 1 217 0
	movq	-40(%rbp), %rax	# msa, tmp354
	movq	224(%rax), %rax	# msa_6(D)->gs, D.7749
	movl	-24(%rbp), %edx	# i, tmp355
	movslq	%edx, %rdx	# tmp355, D.7743
	salq	$3, %rdx	#, D.7743
	leaq	(%rax,%rdx), %rbx	#, D.7749
	movq	-40(%rbp), %rax	# msa, tmp356
	movl	320(%rax), %eax	# msa_6(D)->nseqalloc, D.7742
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7743
	movq	-40(%rbp), %rax	# msa, tmp357
	movq	224(%rax), %rax	# msa_6(D)->gs, D.7749
	movl	-24(%rbp), %ecx	# i, tmp358
	movslq	%ecx, %rcx	# tmp358, D.7743
	salq	$3, %rcx	#, D.7743
	addq	%rcx, %rax	# D.7743, D.7749
	movq	(%rax), %rax	# *_173, D.7744
	movq	%rdx, %rcx	# D.7743,
	movq	%rax, %rdx	# D.7744,
	movl	$217, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_realloc	#
	movq	%rax, (%rbx)	# D.7745, *_166
	.loc 1 218 0
	movq	-40(%rbp), %rax	# msa, tmp359
	movl	320(%rax), %edx	# msa_6(D)->nseqalloc, D.7742
	movq	-40(%rbp), %rax	# msa, tmp360
	movl	324(%rax), %eax	# msa_6(D)->nseqlump, D.7742
	subl	%eax, %edx	# D.7742, tmp361
	movl	%edx, %eax	# tmp361, tmp361
	movl	%eax, -20(%rbp)	# tmp361, j
	jmp	.L29	#
.L30:
	.loc 1 219 0 discriminator 2
	movq	-40(%rbp), %rax	# msa, tmp362
	movq	224(%rax), %rax	# msa_6(D)->gs, D.7749
	movl	-24(%rbp), %edx	# i, tmp363
	movslq	%edx, %rdx	# tmp363, D.7743
	salq	$3, %rdx	#, D.7743
	addq	%rdx, %rax	# D.7743, D.7749
	movq	(%rax), %rax	# *_183, D.7744
	movl	-20(%rbp), %edx	# j, tmp364
	movslq	%edx, %rdx	# tmp364, D.7743
	salq	$3, %rdx	#, D.7743
	addq	%rdx, %rax	# D.7743, D.7744
	movq	$0, (%rax)	#, *_187
	.loc 1 218 0 discriminator 2
	addl	$1, -20(%rbp)	#, j
.L29:
	.loc 1 218 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# msa, tmp365
	movl	320(%rax), %eax	# msa_6(D)->nseqalloc, D.7742
	cmpl	-20(%rbp), %eax	# j, D.7742
	jg	.L30	#,
.L28:
	.loc 1 213 0 is_stmt 1
	addl	$1, -24(%rbp)	#, i
.L27:
	.loc 1 213 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# msa, tmp366
	movl	240(%rax), %eax	# msa_6(D)->ngs, D.7742
	cmpl	-24(%rbp), %eax	# i, D.7742
	jg	.L31	#,
.L26:
	.loc 1 227 0 is_stmt 1
	movq	-40(%rbp), %rax	# msa, tmp367
	movq	288(%rax), %rax	# msa_6(D)->gr, D.7749
	testq	%rax, %rax	# D.7749
	je	.L32	#,
	.loc 1 228 0
	movl	$0, -24(%rbp)	#, i
	jmp	.L33	#
.L37:
	.loc 1 230 0
	movq	-40(%rbp), %rax	# msa, tmp368
	movq	288(%rax), %rax	# msa_6(D)->gr, D.7749
	movl	-24(%rbp), %edx	# i, tmp369
	movslq	%edx, %rdx	# tmp369, D.7743
	salq	$3, %rdx	#, D.7743
	addq	%rdx, %rax	# D.7743, D.7749
	movq	(%rax), %rax	# *_196, D.7744
	testq	%rax, %rax	# D.7744
	je	.L34	#,
	.loc 1 232 0
	movq	-40(%rbp), %rax	# msa, tmp370
	movq	288(%rax), %rax	# msa_6(D)->gr, D.7749
	movl	-24(%rbp), %edx	# i, tmp371
	movslq	%edx, %rdx	# tmp371, D.7743
	salq	$3, %rdx	#, D.7743
	leaq	(%rax,%rdx), %rbx	#, D.7749
	movq	-40(%rbp), %rax	# msa, tmp372
	movl	320(%rax), %eax	# msa_6(D)->nseqalloc, D.7742
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7743
	movq	-40(%rbp), %rax	# msa, tmp373
	movq	288(%rax), %rax	# msa_6(D)->gr, D.7749
	movl	-24(%rbp), %ecx	# i, tmp374
	movslq	%ecx, %rcx	# tmp374, D.7743
	salq	$3, %rcx	#, D.7743
	addq	%rcx, %rax	# D.7743, D.7749
	movq	(%rax), %rax	# *_208, D.7744
	movq	%rdx, %rcx	# D.7743,
	movq	%rax, %rdx	# D.7744,
	movl	$232, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_realloc	#
	movq	%rax, (%rbx)	# D.7745, *_201
	.loc 1 233 0
	movq	-40(%rbp), %rax	# msa, tmp375
	movl	320(%rax), %edx	# msa_6(D)->nseqalloc, D.7742
	movq	-40(%rbp), %rax	# msa, tmp376
	movl	324(%rax), %eax	# msa_6(D)->nseqlump, D.7742
	subl	%eax, %edx	# D.7742, tmp377
	movl	%edx, %eax	# tmp377, tmp377
	movl	%eax, -20(%rbp)	# tmp377, j
	jmp	.L35	#
.L36:
	.loc 1 234 0 discriminator 2
	movq	-40(%rbp), %rax	# msa, tmp378
	movq	288(%rax), %rax	# msa_6(D)->gr, D.7749
	movl	-24(%rbp), %edx	# i, tmp379
	movslq	%edx, %rdx	# tmp379, D.7743
	salq	$3, %rdx	#, D.7743
	addq	%rdx, %rax	# D.7743, D.7749
	movq	(%rax), %rax	# *_218, D.7744
	movl	-20(%rbp), %edx	# j, tmp380
	movslq	%edx, %rdx	# tmp380, D.7743
	salq	$3, %rdx	#, D.7743
	addq	%rdx, %rax	# D.7743, D.7744
	movq	$0, (%rax)	#, *_222
	.loc 1 233 0 discriminator 2
	addl	$1, -20(%rbp)	#, j
.L35:
	.loc 1 233 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# msa, tmp381
	movl	320(%rax), %eax	# msa_6(D)->nseqalloc, D.7742
	cmpl	-20(%rbp), %eax	# j, D.7742
	jg	.L36	#,
.L34:
	.loc 1 228 0 is_stmt 1
	addl	$1, -24(%rbp)	#, i
.L33:
	.loc 1 228 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# msa, tmp382
	movl	304(%rax), %eax	# msa_6(D)->ngr, D.7742
	cmpl	-24(%rbp), %eax	# i, D.7742
	jg	.L37	#,
.L32:
	.loc 1 238 0 is_stmt 1
	nop
	.loc 1 239 0
	addq	$40, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	MSAExpand, .-MSAExpand
	.globl	MSAFree
	.type	MSAFree, @function
MSAFree:
.LFB4:
	.loc 1 252 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# msa, msa
	.loc 1 253 0
	movq	-8(%rbp), %rax	# msa, tmp117
	movl	28(%rax), %edx	# msa_1(D)->nseq, D.7750
	movq	-8(%rbp), %rax	# msa, tmp118
	movq	(%rax), %rax	# msa_1(D)->aseq, D.7751
	movl	%edx, %esi	# D.7750,
	movq	%rax, %rdi	# D.7751,
	call	Free2DArray	#
	.loc 1 254 0
	movq	-8(%rbp), %rax	# msa, tmp119
	movl	28(%rax), %edx	# msa_1(D)->nseq, D.7750
	movq	-8(%rbp), %rax	# msa, tmp120
	movq	8(%rax), %rax	# msa_1(D)->sqname, D.7751
	movl	%edx, %esi	# D.7750,
	movq	%rax, %rdi	# D.7751,
	call	Free2DArray	#
	.loc 1 255 0
	movq	-8(%rbp), %rax	# msa, tmp121
	movl	28(%rax), %edx	# msa_1(D)->nseq, D.7750
	movq	-8(%rbp), %rax	# msa, tmp122
	movq	96(%rax), %rax	# msa_1(D)->sqacc, D.7751
	movl	%edx, %esi	# D.7750,
	movq	%rax, %rdi	# D.7751,
	call	Free2DArray	#
	.loc 1 256 0
	movq	-8(%rbp), %rax	# msa, tmp123
	movl	28(%rax), %edx	# msa_1(D)->nseq, D.7750
	movq	-8(%rbp), %rax	# msa, tmp124
	movq	104(%rax), %rax	# msa_1(D)->sqdesc, D.7751
	movl	%edx, %esi	# D.7750,
	movq	%rax, %rdi	# D.7751,
	call	Free2DArray	#
	.loc 1 257 0
	movq	-8(%rbp), %rax	# msa, tmp125
	movl	28(%rax), %edx	# msa_1(D)->nseq, D.7750
	movq	-8(%rbp), %rax	# msa, tmp126
	movq	112(%rax), %rax	# msa_1(D)->ss, D.7751
	movl	%edx, %esi	# D.7750,
	movq	%rax, %rdi	# D.7751,
	call	Free2DArray	#
	.loc 1 258 0
	movq	-8(%rbp), %rax	# msa, tmp127
	movl	28(%rax), %edx	# msa_1(D)->nseq, D.7750
	movq	-8(%rbp), %rax	# msa, tmp128
	movq	120(%rax), %rax	# msa_1(D)->sa, D.7751
	movl	%edx, %esi	# D.7750,
	movq	%rax, %rdi	# D.7751,
	call	Free2DArray	#
	.loc 1 260 0
	movq	-8(%rbp), %rax	# msa, tmp129
	movq	328(%rax), %rax	# msa_1(D)->sqlen, D.7752
	testq	%rax, %rax	# D.7752
	je	.L40	#,
	.loc 1 260 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# msa, tmp130
	movq	328(%rax), %rax	# msa_1(D)->sqlen, D.7752
	movq	%rax, %rdi	# D.7752,
	call	free	#
.L40:
	.loc 1 261 0 is_stmt 1
	movq	-8(%rbp), %rax	# msa, tmp131
	movq	16(%rax), %rax	# msa_1(D)->wgt, D.7753
	testq	%rax, %rax	# D.7753
	je	.L41	#,
	.loc 1 261 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# msa, tmp132
	movq	16(%rax), %rax	# msa_1(D)->wgt, D.7753
	movq	%rax, %rdi	# D.7753,
	call	free	#
.L41:
	.loc 1 263 0 is_stmt 1
	movq	-8(%rbp), %rax	# msa, tmp133
	movq	40(%rax), %rax	# msa_1(D)->name, D.7754
	testq	%rax, %rax	# D.7754
	je	.L42	#,
	.loc 1 263 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# msa, tmp134
	movq	40(%rax), %rax	# msa_1(D)->name, D.7754
	movq	%rax, %rdi	# D.7754,
	call	free	#
.L42:
	.loc 1 264 0 is_stmt 1
	movq	-8(%rbp), %rax	# msa, tmp135
	movq	48(%rax), %rax	# msa_1(D)->desc, D.7754
	testq	%rax, %rax	# D.7754
	je	.L43	#,
	.loc 1 264 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# msa, tmp136
	movq	48(%rax), %rax	# msa_1(D)->desc, D.7754
	movq	%rax, %rdi	# D.7754,
	call	free	#
.L43:
	.loc 1 265 0 is_stmt 1
	movq	-8(%rbp), %rax	# msa, tmp137
	movq	56(%rax), %rax	# msa_1(D)->acc, D.7754
	testq	%rax, %rax	# D.7754
	je	.L44	#,
	.loc 1 265 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# msa, tmp138
	movq	56(%rax), %rax	# msa_1(D)->acc, D.7754
	movq	%rax, %rdi	# D.7754,
	call	free	#
.L44:
	.loc 1 266 0 is_stmt 1
	movq	-8(%rbp), %rax	# msa, tmp139
	movq	64(%rax), %rax	# msa_1(D)->au, D.7754
	testq	%rax, %rax	# D.7754
	je	.L45	#,
	.loc 1 266 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# msa, tmp140
	movq	64(%rax), %rax	# msa_1(D)->au, D.7754
	movq	%rax, %rdi	# D.7754,
	call	free	#
.L45:
	.loc 1 267 0 is_stmt 1
	movq	-8(%rbp), %rax	# msa, tmp141
	movq	72(%rax), %rax	# msa_1(D)->ss_cons, D.7754
	testq	%rax, %rax	# D.7754
	je	.L46	#,
	.loc 1 267 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# msa, tmp142
	movq	72(%rax), %rax	# msa_1(D)->ss_cons, D.7754
	movq	%rax, %rdi	# D.7754,
	call	free	#
.L46:
	.loc 1 268 0 is_stmt 1
	movq	-8(%rbp), %rax	# msa, tmp143
	movq	80(%rax), %rax	# msa_1(D)->sa_cons, D.7754
	testq	%rax, %rax	# D.7754
	je	.L47	#,
	.loc 1 268 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# msa, tmp144
	movq	80(%rax), %rax	# msa_1(D)->sa_cons, D.7754
	movq	%rax, %rdi	# D.7754,
	call	free	#
.L47:
	.loc 1 269 0 is_stmt 1
	movq	-8(%rbp), %rax	# msa, tmp145
	movq	88(%rax), %rax	# msa_1(D)->rf, D.7754
	testq	%rax, %rax	# D.7754
	je	.L48	#,
	.loc 1 269 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# msa, tmp146
	movq	88(%rax), %rax	# msa_1(D)->rf, D.7754
	movq	%rax, %rdi	# D.7754,
	call	free	#
.L48:
	.loc 1 270 0 is_stmt 1
	movq	-8(%rbp), %rax	# msa, tmp147
	movq	336(%rax), %rax	# msa_1(D)->sslen, D.7752
	testq	%rax, %rax	# D.7752
	je	.L49	#,
	.loc 1 270 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# msa, tmp148
	movq	336(%rax), %rax	# msa_1(D)->sslen, D.7752
	movq	%rax, %rdi	# D.7752,
	call	free	#
.L49:
	.loc 1 271 0 is_stmt 1
	movq	-8(%rbp), %rax	# msa, tmp149
	movq	344(%rax), %rax	# msa_1(D)->salen, D.7752
	testq	%rax, %rax	# D.7752
	je	.L50	#,
	.loc 1 271 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# msa, tmp150
	movq	344(%rax), %rax	# msa_1(D)->salen, D.7752
	movq	%rax, %rdi	# D.7752,
	call	free	#
.L50:
	.loc 1 273 0 is_stmt 1
	movq	-8(%rbp), %rax	# msa, tmp151
	movl	184(%rax), %edx	# msa_1(D)->ncomment, D.7750
	movq	-8(%rbp), %rax	# msa, tmp152
	movq	176(%rax), %rax	# msa_1(D)->comment, D.7751
	movl	%edx, %esi	# D.7750,
	movq	%rax, %rdi	# D.7751,
	call	Free2DArray	#
	.loc 1 274 0
	movq	-8(%rbp), %rax	# msa, tmp153
	movl	208(%rax), %edx	# msa_1(D)->ngf, D.7750
	movq	-8(%rbp), %rax	# msa, tmp154
	movq	192(%rax), %rax	# msa_1(D)->gf_tag, D.7751
	movl	%edx, %esi	# D.7750,
	movq	%rax, %rdi	# D.7751,
	call	Free2DArray	#
	.loc 1 275 0
	movq	-8(%rbp), %rax	# msa, tmp155
	movl	208(%rax), %edx	# msa_1(D)->ngf, D.7750
	movq	-8(%rbp), %rax	# msa, tmp156
	movq	200(%rax), %rax	# msa_1(D)->gf, D.7751
	movl	%edx, %esi	# D.7750,
	movq	%rax, %rdi	# D.7751,
	call	Free2DArray	#
	.loc 1 276 0
	movq	-8(%rbp), %rax	# msa, tmp157
	movl	240(%rax), %edx	# msa_1(D)->ngs, D.7750
	movq	-8(%rbp), %rax	# msa, tmp158
	movq	216(%rax), %rax	# msa_1(D)->gs_tag, D.7751
	movl	%edx, %esi	# D.7750,
	movq	%rax, %rdi	# D.7751,
	call	Free2DArray	#
	.loc 1 277 0
	movq	-8(%rbp), %rax	# msa, tmp159
	movl	28(%rax), %edx	# msa_1(D)->nseq, D.7750
	movq	-8(%rbp), %rax	# msa, tmp160
	movl	240(%rax), %ecx	# msa_1(D)->ngs, D.7750
	movq	-8(%rbp), %rax	# msa, tmp161
	movq	224(%rax), %rax	# msa_1(D)->gs, D.7755
	movl	%ecx, %esi	# D.7750,
	movq	%rax, %rdi	# D.7755,
	call	Free3DArray	#
	.loc 1 278 0
	movq	-8(%rbp), %rax	# msa, tmp162
	movl	272(%rax), %edx	# msa_1(D)->ngc, D.7750
	movq	-8(%rbp), %rax	# msa, tmp163
	movq	248(%rax), %rax	# msa_1(D)->gc_tag, D.7751
	movl	%edx, %esi	# D.7750,
	movq	%rax, %rdi	# D.7751,
	call	Free2DArray	#
	.loc 1 279 0
	movq	-8(%rbp), %rax	# msa, tmp164
	movl	272(%rax), %edx	# msa_1(D)->ngc, D.7750
	movq	-8(%rbp), %rax	# msa, tmp165
	movq	256(%rax), %rax	# msa_1(D)->gc, D.7751
	movl	%edx, %esi	# D.7750,
	movq	%rax, %rdi	# D.7751,
	call	Free2DArray	#
	.loc 1 280 0
	movq	-8(%rbp), %rax	# msa, tmp166
	movl	304(%rax), %edx	# msa_1(D)->ngr, D.7750
	movq	-8(%rbp), %rax	# msa, tmp167
	movq	280(%rax), %rax	# msa_1(D)->gr_tag, D.7751
	movl	%edx, %esi	# D.7750,
	movq	%rax, %rdi	# D.7751,
	call	Free2DArray	#
	.loc 1 281 0
	movq	-8(%rbp), %rax	# msa, tmp168
	movl	28(%rax), %edx	# msa_1(D)->nseq, D.7750
	movq	-8(%rbp), %rax	# msa, tmp169
	movl	304(%rax), %ecx	# msa_1(D)->ngr, D.7750
	movq	-8(%rbp), %rax	# msa, tmp170
	movq	288(%rax), %rax	# msa_1(D)->gr, D.7755
	movl	%ecx, %esi	# D.7750,
	movq	%rax, %rdi	# D.7755,
	call	Free3DArray	#
	.loc 1 283 0
	movq	-8(%rbp), %rax	# msa, tmp171
	movq	312(%rax), %rax	# msa_1(D)->index, D.7756
	movq	%rax, %rdi	# D.7756,
	call	GKIFree	#
	.loc 1 284 0
	movq	-8(%rbp), %rax	# msa, tmp172
	movq	232(%rax), %rax	# msa_1(D)->gs_idx, D.7756
	movq	%rax, %rdi	# D.7756,
	call	GKIFree	#
	.loc 1 285 0
	movq	-8(%rbp), %rax	# msa, tmp173
	movq	264(%rax), %rax	# msa_1(D)->gc_idx, D.7756
	movq	%rax, %rdi	# D.7756,
	call	GKIFree	#
	.loc 1 286 0
	movq	-8(%rbp), %rax	# msa, tmp174
	movq	296(%rax), %rax	# msa_1(D)->gr_idx, D.7756
	movq	%rax, %rdi	# D.7756,
	call	GKIFree	#
	.loc 1 288 0
	movq	-8(%rbp), %rax	# msa, tmp175
	movq	%rax, %rdi	# tmp175,
	call	free	#
	.loc 1 289 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	MSAFree, .-MSAFree
	.globl	MSASetSeqAccession
	.type	MSASetSeqAccession, @function
MSASetSeqAccession:
.LFB5:
	.loc 1 306 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$56, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)	# msa, msa
	movl	%esi, -44(%rbp)	# seqidx, seqidx
	movq	%rdx, -56(%rbp)	# acc, acc
	.loc 1 309 0
	movq	-40(%rbp), %rax	# msa, tmp74
	movq	96(%rax), %rax	# msa_2(D)->sqacc, D.7757
	testq	%rax, %rax	# D.7757
	jne	.L52	#,
	.loc 1 310 0
	movq	-40(%rbp), %rax	# msa, tmp75
	movl	320(%rax), %eax	# msa_2(D)->nseqalloc, D.7758
	cltq
	salq	$3, %rax	#, D.7759
	movq	%rax, %rdx	# D.7759,
	movl	$310, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_malloc	#
	movq	-40(%rbp), %rdx	# msa, tmp76
	movq	%rax, 96(%rdx)	# D.7760, msa_2(D)->sqacc
	.loc 1 311 0
	movl	$0, -20(%rbp)	#, x
	jmp	.L53	#
.L54:
	.loc 1 312 0 discriminator 2
	movq	-40(%rbp), %rax	# msa, tmp77
	movq	96(%rax), %rax	# msa_2(D)->sqacc, D.7757
	movl	-20(%rbp), %edx	# x, tmp78
	movslq	%edx, %rdx	# tmp78, D.7759
	salq	$3, %rdx	#, D.7759
	addq	%rdx, %rax	# D.7759, D.7757
	movq	$0, (%rax)	#, *_13
	.loc 1 311 0 discriminator 2
	addl	$1, -20(%rbp)	#, x
.L53:
	.loc 1 311 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# msa, tmp79
	movl	320(%rax), %eax	# msa_2(D)->nseqalloc, D.7758
	cmpl	-20(%rbp), %eax	# x, D.7758
	jg	.L54	#,
.L52:
	.loc 1 314 0 is_stmt 1
	movq	-40(%rbp), %rax	# msa, tmp80
	movq	96(%rax), %rax	# msa_2(D)->sqacc, D.7757
	movl	-44(%rbp), %edx	# seqidx, tmp81
	movslq	%edx, %rdx	# tmp81, D.7759
	salq	$3, %rdx	#, D.7759
	leaq	(%rax,%rdx), %rbx	#, D.7757
	movq	-56(%rbp), %rax	# acc, tmp82
	movl	$-1, %esi	#,
	movq	%rax, %rdi	# tmp82,
	call	sre_strdup	#
	movq	%rax, (%rbx)	# D.7761, *_19
	.loc 1 315 0
	addq	$56, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	MSASetSeqAccession, .-MSASetSeqAccession
	.globl	MSASetSeqDescription
	.type	MSASetSeqDescription, @function
MSASetSeqDescription:
.LFB6:
	.loc 1 331 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$56, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)	# msa, msa
	movl	%esi, -44(%rbp)	# seqidx, seqidx
	movq	%rdx, -56(%rbp)	# desc, desc
	.loc 1 334 0
	movq	-40(%rbp), %rax	# msa, tmp74
	movq	104(%rax), %rax	# msa_2(D)->sqdesc, D.7762
	testq	%rax, %rax	# D.7762
	jne	.L56	#,
	.loc 1 335 0
	movq	-40(%rbp), %rax	# msa, tmp75
	movl	320(%rax), %eax	# msa_2(D)->nseqalloc, D.7763
	cltq
	salq	$3, %rax	#, D.7764
	movq	%rax, %rdx	# D.7764,
	movl	$335, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_malloc	#
	movq	-40(%rbp), %rdx	# msa, tmp76
	movq	%rax, 104(%rdx)	# D.7765, msa_2(D)->sqdesc
	.loc 1 336 0
	movl	$0, -20(%rbp)	#, x
	jmp	.L57	#
.L58:
	.loc 1 337 0 discriminator 2
	movq	-40(%rbp), %rax	# msa, tmp77
	movq	104(%rax), %rax	# msa_2(D)->sqdesc, D.7762
	movl	-20(%rbp), %edx	# x, tmp78
	movslq	%edx, %rdx	# tmp78, D.7764
	salq	$3, %rdx	#, D.7764
	addq	%rdx, %rax	# D.7764, D.7762
	movq	$0, (%rax)	#, *_13
	.loc 1 336 0 discriminator 2
	addl	$1, -20(%rbp)	#, x
.L57:
	.loc 1 336 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# msa, tmp79
	movl	320(%rax), %eax	# msa_2(D)->nseqalloc, D.7763
	cmpl	-20(%rbp), %eax	# x, D.7763
	jg	.L58	#,
.L56:
	.loc 1 339 0 is_stmt 1
	movq	-40(%rbp), %rax	# msa, tmp80
	movq	104(%rax), %rax	# msa_2(D)->sqdesc, D.7762
	movl	-44(%rbp), %edx	# seqidx, tmp81
	movslq	%edx, %rdx	# tmp81, D.7764
	salq	$3, %rdx	#, D.7764
	leaq	(%rax,%rdx), %rbx	#, D.7762
	movq	-56(%rbp), %rax	# desc, tmp82
	movl	$-1, %esi	#,
	movq	%rax, %rdi	# tmp82,
	call	sre_strdup	#
	movq	%rax, (%rbx)	# D.7766, *_19
	.loc 1 340 0
	addq	$56, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	MSASetSeqDescription, .-MSASetSeqDescription
	.globl	MSAAddComment
	.type	MSAAddComment, @function
MSAAddComment:
.LFB7:
	.loc 1 356 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$24, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)	# msa, msa
	movq	%rsi, -32(%rbp)	# s, s
	.loc 1 361 0
	movq	-24(%rbp), %rax	# msa, tmp78
	movq	176(%rax), %rax	# msa_1(D)->comment, D.7767
	testq	%rax, %rax	# D.7767
	jne	.L60	#,
	.loc 1 362 0
	movl	$80, %edx	#,
	movl	$362, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_malloc	#
	movq	-24(%rbp), %rdx	# msa, tmp79
	movq	%rax, 176(%rdx)	# D.7768, msa_1(D)->comment
	.loc 1 363 0
	movq	-24(%rbp), %rax	# msa, tmp80
	movl	$10, 188(%rax)	#, msa_1(D)->alloc_ncomment
.L60:
	.loc 1 365 0
	movq	-24(%rbp), %rax	# msa, tmp81
	movl	184(%rax), %edx	# msa_1(D)->ncomment, D.7769
	movq	-24(%rbp), %rax	# msa, tmp82
	movl	188(%rax), %eax	# msa_1(D)->alloc_ncomment, D.7769
	cmpl	%eax, %edx	# D.7769, D.7769
	jne	.L61	#,
	.loc 1 366 0
	movq	-24(%rbp), %rax	# msa, tmp83
	movl	188(%rax), %eax	# msa_1(D)->alloc_ncomment, D.7769
	leal	10(%rax), %edx	#, D.7769
	movq	-24(%rbp), %rax	# msa, tmp84
	movl	%edx, 188(%rax)	# D.7769, msa_1(D)->alloc_ncomment
	.loc 1 367 0
	movq	-24(%rbp), %rax	# msa, tmp85
	movl	188(%rax), %eax	# msa_1(D)->alloc_ncomment, D.7769
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7770
	movq	-24(%rbp), %rax	# msa, tmp86
	movq	176(%rax), %rax	# msa_1(D)->comment, D.7767
	movq	%rdx, %rcx	# D.7770,
	movq	%rax, %rdx	# D.7767,
	movl	$367, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_realloc	#
	movq	-24(%rbp), %rdx	# msa, tmp87
	movq	%rax, 176(%rdx)	# D.7768, msa_1(D)->comment
.L61:
	.loc 1 370 0
	movq	-24(%rbp), %rax	# msa, tmp88
	movq	176(%rax), %rdx	# msa_1(D)->comment, D.7767
	movq	-24(%rbp), %rax	# msa, tmp89
	movl	184(%rax), %eax	# msa_1(D)->ncomment, D.7769
	cltq
	salq	$3, %rax	#, D.7770
	leaq	(%rdx,%rax), %rbx	#, D.7767
	movq	-32(%rbp), %rax	# s, tmp90
	movl	$-1, %esi	#,
	movq	%rax, %rdi	# tmp90,
	call	sre_strdup	#
	movq	%rax, (%rbx)	# D.7771, *_17
	.loc 1 371 0
	movq	-24(%rbp), %rax	# msa, tmp91
	movl	184(%rax), %eax	# msa_1(D)->ncomment, D.7769
	leal	1(%rax), %edx	#, D.7769
	movq	-24(%rbp), %rax	# msa, tmp92
	movl	%edx, 184(%rax)	# D.7769, msa_1(D)->ncomment
	.loc 1 372 0
	nop
	.loc 1 373 0
	addq	$24, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	MSAAddComment, .-MSAAddComment
	.globl	MSAAddGF
	.type	MSAAddGF, @function
MSAAddGF:
.LFB8:
	.loc 1 389 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$40, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)	# msa, msa
	movq	%rsi, -32(%rbp)	# tag, tag
	movq	%rdx, -40(%rbp)	# value, value
	.loc 1 394 0
	movq	-24(%rbp), %rax	# msa, tmp90
	movq	192(%rax), %rax	# msa_1(D)->gf_tag, D.7772
	testq	%rax, %rax	# D.7772
	jne	.L64	#,
	.loc 1 395 0
	movl	$80, %edx	#,
	movl	$395, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_malloc	#
	movq	-24(%rbp), %rdx	# msa, tmp91
	movq	%rax, 192(%rdx)	# D.7773, msa_1(D)->gf_tag
	.loc 1 396 0
	movl	$80, %edx	#,
	movl	$396, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_malloc	#
	movq	-24(%rbp), %rdx	# msa, tmp92
	movq	%rax, 200(%rdx)	# D.7773, msa_1(D)->gf
	.loc 1 397 0
	movq	-24(%rbp), %rax	# msa, tmp93
	movl	$10, 212(%rax)	#, msa_1(D)->alloc_ngf
.L64:
	.loc 1 399 0
	movq	-24(%rbp), %rax	# msa, tmp94
	movl	208(%rax), %edx	# msa_1(D)->ngf, D.7774
	movq	-24(%rbp), %rax	# msa, tmp95
	movl	212(%rax), %eax	# msa_1(D)->alloc_ngf, D.7774
	cmpl	%eax, %edx	# D.7774, D.7774
	jne	.L65	#,
	.loc 1 400 0
	movq	-24(%rbp), %rax	# msa, tmp96
	movl	212(%rax), %eax	# msa_1(D)->alloc_ngf, D.7774
	leal	10(%rax), %edx	#, D.7774
	movq	-24(%rbp), %rax	# msa, tmp97
	movl	%edx, 212(%rax)	# D.7774, msa_1(D)->alloc_ngf
	.loc 1 401 0
	movq	-24(%rbp), %rax	# msa, tmp98
	movl	212(%rax), %eax	# msa_1(D)->alloc_ngf, D.7774
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7775
	movq	-24(%rbp), %rax	# msa, tmp99
	movq	192(%rax), %rax	# msa_1(D)->gf_tag, D.7772
	movq	%rdx, %rcx	# D.7775,
	movq	%rax, %rdx	# D.7772,
	movl	$401, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_realloc	#
	movq	-24(%rbp), %rdx	# msa, tmp100
	movq	%rax, 192(%rdx)	# D.7773, msa_1(D)->gf_tag
	.loc 1 402 0
	movq	-24(%rbp), %rax	# msa, tmp101
	movl	212(%rax), %eax	# msa_1(D)->alloc_ngf, D.7774
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7775
	movq	-24(%rbp), %rax	# msa, tmp102
	movq	200(%rax), %rax	# msa_1(D)->gf, D.7772
	movq	%rdx, %rcx	# D.7775,
	movq	%rax, %rdx	# D.7772,
	movl	$402, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_realloc	#
	movq	-24(%rbp), %rdx	# msa, tmp103
	movq	%rax, 200(%rdx)	# D.7773, msa_1(D)->gf
.L65:
	.loc 1 405 0
	movq	-24(%rbp), %rax	# msa, tmp104
	movq	192(%rax), %rdx	# msa_1(D)->gf_tag, D.7772
	movq	-24(%rbp), %rax	# msa, tmp105
	movl	208(%rax), %eax	# msa_1(D)->ngf, D.7774
	cltq
	salq	$3, %rax	#, D.7775
	leaq	(%rdx,%rax), %rbx	#, D.7772
	movq	-32(%rbp), %rax	# tag, tmp106
	movl	$-1, %esi	#,
	movq	%rax, %rdi	# tmp106,
	call	sre_strdup	#
	movq	%rax, (%rbx)	# D.7776, *_23
	.loc 1 406 0
	movq	-24(%rbp), %rax	# msa, tmp107
	movq	200(%rax), %rdx	# msa_1(D)->gf, D.7772
	movq	-24(%rbp), %rax	# msa, tmp108
	movl	208(%rax), %eax	# msa_1(D)->ngf, D.7774
	cltq
	salq	$3, %rax	#, D.7775
	leaq	(%rdx,%rax), %rbx	#, D.7772
	movq	-40(%rbp), %rax	# value, tmp109
	movl	$-1, %esi	#,
	movq	%rax, %rdi	# tmp109,
	call	sre_strdup	#
	movq	%rax, (%rbx)	# D.7776, *_30
	.loc 1 407 0
	movq	-24(%rbp), %rax	# msa, tmp110
	movl	208(%rax), %eax	# msa_1(D)->ngf, D.7774
	leal	1(%rax), %edx	#, D.7774
	movq	-24(%rbp), %rax	# msa, tmp111
	movl	%edx, 208(%rax)	# D.7774, msa_1(D)->ngf
	.loc 1 409 0
	nop
	.loc 1 410 0
	addq	$40, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	MSAAddGF, .-MSAAddGF
	.section	.rodata
.LC3:
	.string	"\n"
.LC4:
	.string	"failed to sre_strcat()"
	.text
	.globl	MSAAddGS
	.type	MSAAddGS, @function
MSAAddGS:
.LFB9:
	.loc 1 434 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$56, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)	# msa, msa
	movq	%rsi, -48(%rbp)	# tag, tag
	movl	%edx, -52(%rbp)	# sqidx, sqidx
	movq	%rcx, -64(%rbp)	# value, value
	.loc 1 442 0
	movq	-40(%rbp), %rax	# msa, tmp151
	movq	216(%rax), %rax	# msa_4(D)->gs_tag, D.7777
	testq	%rax, %rax	# D.7777
	jne	.L68	#,
	.loc 1 444 0
	call	GKIInit	#
	movq	-40(%rbp), %rdx	# msa, tmp152
	movq	%rax, 232(%rdx)	# D.7778, msa_4(D)->gs_idx
	.loc 1 445 0
	movq	-40(%rbp), %rax	# msa, tmp153
	movq	232(%rax), %rax	# msa_4(D)->gs_idx, D.7778
	movq	-48(%rbp), %rdx	# tag, tmp154
	movq	%rdx, %rsi	# tmp154,
	movq	%rax, %rdi	# D.7778,
	call	GKIStoreKey	#
	movl	%eax, -28(%rbp)	# tmp155, tagidx
	.loc 1 447 0
	movl	$8, %edx	#,
	movl	$447, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_malloc	#
	movq	-40(%rbp), %rdx	# msa, tmp156
	movq	%rax, 216(%rdx)	# D.7779, msa_4(D)->gs_tag
	.loc 1 448 0
	movl	$8, %edx	#,
	movl	$448, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_malloc	#
	movq	-40(%rbp), %rdx	# msa, tmp157
	movq	%rax, 224(%rdx)	# D.7779, msa_4(D)->gs
	.loc 1 449 0
	movq	-40(%rbp), %rax	# msa, tmp158
	movq	224(%rax), %rbx	# msa_4(D)->gs, D.7780
	movq	-40(%rbp), %rax	# msa, tmp159
	movl	320(%rax), %eax	# msa_4(D)->nseqalloc, D.7781
	cltq
	salq	$3, %rax	#, D.7782
	movq	%rax, %rdx	# D.7782,
	movl	$449, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_malloc	#
	movq	%rax, (%rbx)	# D.7779, *_12
	.loc 1 450 0
	movl	$0, -24(%rbp)	#, i
	jmp	.L69	#
.L70:
	.loc 1 451 0 discriminator 2
	movq	-40(%rbp), %rax	# msa, tmp160
	movq	224(%rax), %rax	# msa_4(D)->gs, D.7780
	movq	(%rax), %rax	# *_19, D.7777
	movl	-24(%rbp), %edx	# i, tmp161
	movslq	%edx, %rdx	# tmp161, D.7782
	salq	$3, %rdx	#, D.7782
	addq	%rdx, %rax	# D.7782, D.7777
	movq	$0, (%rax)	#, *_23
	.loc 1 450 0 discriminator 2
	addl	$1, -24(%rbp)	#, i
.L69:
	.loc 1 450 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# msa, tmp162
	movl	320(%rax), %eax	# msa_4(D)->nseqalloc, D.7781
	cmpl	-24(%rbp), %eax	# i, D.7781
	jg	.L70	#,
	jmp	.L71	#
.L68:
	.loc 1 456 0 is_stmt 1
	movq	-40(%rbp), %rax	# msa, tmp163
	movq	232(%rax), %rax	# msa_4(D)->gs_idx, D.7778
	movq	-48(%rbp), %rdx	# tag, tmp164
	movq	%rdx, %rsi	# tmp164,
	movq	%rax, %rdi	# D.7778,
	call	GKIKeyIndex	#
	movl	%eax, -28(%rbp)	# tmp165, tagidx
	.loc 1 457 0
	cmpl	$0, -28(%rbp)	#, tagidx
	jns	.L71	#,
	.loc 1 458 0
	movq	-40(%rbp), %rax	# msa, tmp166
	movq	232(%rax), %rax	# msa_4(D)->gs_idx, D.7778
	movq	-48(%rbp), %rdx	# tag, tmp167
	movq	%rdx, %rsi	# tmp167,
	movq	%rax, %rdi	# D.7778,
	call	GKIStoreKey	#
	movl	%eax, -28(%rbp)	# tmp168, tagidx
	.loc 1 463 0
	movq	-40(%rbp), %rax	# msa, tmp169
	movl	240(%rax), %eax	# msa_4(D)->ngs, D.7781
	addl	$1, %eax	#, D.7781
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7782
	movq	-40(%rbp), %rax	# msa, tmp170
	movq	216(%rax), %rax	# msa_4(D)->gs_tag, D.7777
	movq	%rdx, %rcx	# D.7782,
	movq	%rax, %rdx	# D.7777,
	movl	$463, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_realloc	#
	movq	-40(%rbp), %rdx	# msa, tmp171
	movq	%rax, 216(%rdx)	# D.7779, msa_4(D)->gs_tag
	.loc 1 464 0
	movq	-40(%rbp), %rax	# msa, tmp172
	movl	240(%rax), %eax	# msa_4(D)->ngs, D.7781
	addl	$1, %eax	#, D.7781
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7782
	movq	-40(%rbp), %rax	# msa, tmp173
	movq	224(%rax), %rax	# msa_4(D)->gs, D.7780
	movq	%rdx, %rcx	# D.7782,
	movq	%rax, %rdx	# D.7780,
	movl	$464, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_realloc	#
	movq	-40(%rbp), %rdx	# msa, tmp174
	movq	%rax, 224(%rdx)	# D.7779, msa_4(D)->gs
	.loc 1 465 0
	movq	-40(%rbp), %rax	# msa, tmp175
	movq	224(%rax), %rdx	# msa_4(D)->gs, D.7780
	movq	-40(%rbp), %rax	# msa, tmp176
	movl	240(%rax), %eax	# msa_4(D)->ngs, D.7781
	cltq
	salq	$3, %rax	#, D.7782
	leaq	(%rdx,%rax), %rbx	#, D.7780
	movq	-40(%rbp), %rax	# msa, tmp177
	movl	320(%rax), %eax	# msa_4(D)->nseqalloc, D.7781
	cltq
	salq	$3, %rax	#, D.7782
	movq	%rax, %rdx	# D.7782,
	movl	$465, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_malloc	#
	movq	%rax, (%rbx)	# D.7779, *_45
	.loc 1 466 0
	movl	$0, -24(%rbp)	#, i
	jmp	.L72	#
.L73:
	.loc 1 467 0 discriminator 2
	movq	-40(%rbp), %rax	# msa, tmp178
	movq	224(%rax), %rdx	# msa_4(D)->gs, D.7780
	movq	-40(%rbp), %rax	# msa, tmp179
	movl	240(%rax), %eax	# msa_4(D)->ngs, D.7781
	cltq
	salq	$3, %rax	#, D.7782
	addq	%rdx, %rax	# D.7780, D.7780
	movq	(%rax), %rax	# *_56, D.7777
	movl	-24(%rbp), %edx	# i, tmp180
	movslq	%edx, %rdx	# tmp180, D.7782
	salq	$3, %rdx	#, D.7782
	addq	%rdx, %rax	# D.7782, D.7777
	movq	$0, (%rax)	#, *_60
	.loc 1 466 0 discriminator 2
	addl	$1, -24(%rbp)	#, i
.L72:
	.loc 1 466 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# msa, tmp181
	movl	320(%rax), %eax	# msa_4(D)->nseqalloc, D.7781
	cmpl	-24(%rbp), %eax	# i, D.7781
	jg	.L73	#,
.L71:
	.loc 1 471 0 is_stmt 1
	movq	-40(%rbp), %rax	# msa, tmp182
	movl	240(%rax), %eax	# msa_4(D)->ngs, D.7781
	cmpl	-28(%rbp), %eax	# tagidx, D.7781
	jne	.L74	#,
	.loc 1 472 0
	movq	-40(%rbp), %rax	# msa, tmp183
	movq	216(%rax), %rax	# msa_4(D)->gs_tag, D.7777
	movl	-28(%rbp), %edx	# tagidx, tmp184
	movslq	%edx, %rdx	# tmp184, D.7782
	salq	$3, %rdx	#, D.7782
	leaq	(%rax,%rdx), %rbx	#, D.7777
	movq	-48(%rbp), %rax	# tag, tmp185
	movl	$-1, %esi	#,
	movq	%rax, %rdi	# tmp185,
	call	sre_strdup	#
	movq	%rax, (%rbx)	# D.7783, *_66
	.loc 1 473 0
	movq	-40(%rbp), %rax	# msa, tmp186
	movl	240(%rax), %eax	# msa_4(D)->ngs, D.7781
	leal	1(%rax), %edx	#, D.7781
	movq	-40(%rbp), %rax	# msa, tmp187
	movl	%edx, 240(%rax)	# D.7781, msa_4(D)->ngs
.L74:
	.loc 1 476 0
	movq	-40(%rbp), %rax	# msa, tmp188
	movq	224(%rax), %rax	# msa_4(D)->gs, D.7780
	movl	-28(%rbp), %edx	# tagidx, tmp189
	movslq	%edx, %rdx	# tmp189, D.7782
	salq	$3, %rdx	#, D.7782
	addq	%rdx, %rax	# D.7782, D.7780
	movq	(%rax), %rax	# *_73, D.7777
	movl	-52(%rbp), %edx	# sqidx, tmp190
	movslq	%edx, %rdx	# tmp190, D.7782
	salq	$3, %rdx	#, D.7782
	addq	%rdx, %rax	# D.7782, D.7777
	movq	(%rax), %rax	# *_78, D.7783
	testq	%rax, %rax	# D.7783
	jne	.L75	#,
	.loc 1 477 0
	movq	-40(%rbp), %rax	# msa, tmp191
	movq	224(%rax), %rax	# msa_4(D)->gs, D.7780
	movl	-28(%rbp), %edx	# tagidx, tmp192
	movslq	%edx, %rdx	# tmp192, D.7782
	salq	$3, %rdx	#, D.7782
	addq	%rdx, %rax	# D.7782, D.7780
	movq	(%rax), %rax	# *_83, D.7777
	movl	-52(%rbp), %edx	# sqidx, tmp193
	movslq	%edx, %rdx	# tmp193, D.7782
	salq	$3, %rdx	#, D.7782
	leaq	(%rax,%rdx), %rbx	#, D.7777
	movq	-64(%rbp), %rax	# value, tmp194
	movl	$-1, %esi	#,
	movq	%rax, %rdi	# tmp194,
	call	sre_strdup	#
	movq	%rax, (%rbx)	# D.7783, *_87
	jmp	.L76	#
.L75:
.LBB2:
	.loc 1 481 0
	movq	-40(%rbp), %rax	# msa, tmp195
	movq	224(%rax), %rax	# msa_4(D)->gs, D.7780
	movl	-28(%rbp), %edx	# tagidx, tmp196
	movslq	%edx, %rdx	# tmp196, D.7782
	salq	$3, %rdx	#, D.7782
	addq	%rdx, %rax	# D.7782, D.7780
	movq	(%rax), %rax	# *_93, D.7777
	movl	-52(%rbp), %edx	# sqidx, tmp197
	movslq	%edx, %rdx	# tmp197, D.7782
	salq	$3, %rdx	#, D.7782
	addq	%rdx, %rax	# D.7782, D.7777
	movl	$1, %ecx	#,
	movl	$.LC3, %edx	#,
	movl	$-1, %esi	#,
	movq	%rax, %rdi	# D.7777,
	call	sre_strcat	#
	movl	%eax, -20(%rbp)	# tmp198, len
	cmpl	$0, -20(%rbp)	#, len
	jns	.L77	#,
	.loc 1 482 0
	movl	$.LC4, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
.L77:
	.loc 1 483 0
	movq	-40(%rbp), %rax	# msa, tmp199
	movq	224(%rax), %rax	# msa_4(D)->gs, D.7780
	movl	-28(%rbp), %edx	# tagidx, tmp200
	movslq	%edx, %rdx	# tmp200, D.7782
	salq	$3, %rdx	#, D.7782
	addq	%rdx, %rax	# D.7782, D.7780
	movq	(%rax), %rax	# *_102, D.7777
	movl	-52(%rbp), %edx	# sqidx, tmp201
	movslq	%edx, %rdx	# tmp201, D.7782
	salq	$3, %rdx	#, D.7782
	leaq	(%rax,%rdx), %rdi	#, D.7777
	movq	-64(%rbp), %rdx	# value, tmp202
	movl	-20(%rbp), %eax	# len, tmp203
	movl	$-1, %ecx	#,
	movl	%eax, %esi	# tmp203,
	call	sre_strcat	#
	testl	%eax, %eax	# D.7781
	jns	.L76	#,
	.loc 1 484 0
	movl	$.LC4, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
.L76:
.LBE2:
	.loc 1 486 0
	nop
	.loc 1 487 0
	addq	$56, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	MSAAddGS, .-MSAAddGS
	.globl	MSAAppendGC
	.type	MSAAppendGC, @function
MSAAppendGC:
.LFB10:
	.loc 1 508 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$56, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)	# msa, msa
	movq	%rsi, -48(%rbp)	# tag, tag
	movq	%rdx, -56(%rbp)	# value, value
	.loc 1 515 0
	movq	-40(%rbp), %rax	# msa, tmp95
	movq	248(%rax), %rax	# msa_2(D)->gc_tag, D.7786
	testq	%rax, %rax	# D.7786
	jne	.L80	#,
	.loc 1 517 0
	movl	$8, %edx	#,
	movl	$517, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_malloc	#
	movq	-40(%rbp), %rdx	# msa, tmp96
	movq	%rax, 248(%rdx)	# D.7787, msa_2(D)->gc_tag
	.loc 1 518 0
	movl	$8, %edx	#,
	movl	$518, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_malloc	#
	movq	-40(%rbp), %rdx	# msa, tmp97
	movq	%rax, 256(%rdx)	# D.7787, msa_2(D)->gc
	.loc 1 519 0
	call	GKIInit	#
	movq	-40(%rbp), %rdx	# msa, tmp98
	movq	%rax, 264(%rdx)	# D.7788, msa_2(D)->gc_idx
	.loc 1 520 0
	movq	-40(%rbp), %rax	# msa, tmp99
	movq	264(%rax), %rax	# msa_2(D)->gc_idx, D.7788
	movq	-48(%rbp), %rdx	# tag, tmp100
	movq	%rdx, %rsi	# tmp100,
	movq	%rax, %rdi	# D.7788,
	call	GKIStoreKey	#
	movl	%eax, -20(%rbp)	# tmp101, tagidx
	.loc 1 522 0
	movq	-40(%rbp), %rax	# msa, tmp102
	movq	256(%rax), %rax	# msa_2(D)->gc, D.7786
	movq	$0, (%rax)	#, *_10
	jmp	.L81	#
.L80:
	.loc 1 526 0
	movq	-40(%rbp), %rax	# msa, tmp103
	movq	264(%rax), %rax	# msa_2(D)->gc_idx, D.7788
	movq	-48(%rbp), %rdx	# tag, tmp104
	movq	%rdx, %rsi	# tmp104,
	movq	%rax, %rdi	# D.7788,
	call	GKIKeyIndex	#
	movl	%eax, -20(%rbp)	# tmp105, tagidx
	.loc 1 527 0
	cmpl	$0, -20(%rbp)	#, tagidx
	jns	.L81	#,
	.loc 1 528 0
	movq	-40(%rbp), %rax	# msa, tmp106
	movq	264(%rax), %rax	# msa_2(D)->gc_idx, D.7788
	movq	-48(%rbp), %rdx	# tag, tmp107
	movq	%rdx, %rsi	# tmp107,
	movq	%rax, %rdi	# D.7788,
	call	GKIStoreKey	#
	movl	%eax, -20(%rbp)	# tmp108, tagidx
	.loc 1 533 0
	movq	-40(%rbp), %rax	# msa, tmp109
	movl	272(%rax), %eax	# msa_2(D)->ngc, D.7789
	addl	$1, %eax	#, D.7789
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7790
	movq	-40(%rbp), %rax	# msa, tmp110
	movq	248(%rax), %rax	# msa_2(D)->gc_tag, D.7786
	movq	%rdx, %rcx	# D.7790,
	movq	%rax, %rdx	# D.7786,
	movl	$533, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_realloc	#
	movq	-40(%rbp), %rdx	# msa, tmp111
	movq	%rax, 248(%rdx)	# D.7787, msa_2(D)->gc_tag
	.loc 1 534 0
	movq	-40(%rbp), %rax	# msa, tmp112
	movl	272(%rax), %eax	# msa_2(D)->ngc, D.7789
	addl	$1, %eax	#, D.7789
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7790
	movq	-40(%rbp), %rax	# msa, tmp113
	movq	256(%rax), %rax	# msa_2(D)->gc, D.7786
	movq	%rdx, %rcx	# D.7790,
	movq	%rax, %rdx	# D.7786,
	movl	$534, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_realloc	#
	movq	-40(%rbp), %rdx	# msa, tmp114
	movq	%rax, 256(%rdx)	# D.7787, msa_2(D)->gc
	.loc 1 535 0
	movq	-40(%rbp), %rax	# msa, tmp115
	movq	256(%rax), %rax	# msa_2(D)->gc, D.7786
	movl	-20(%rbp), %edx	# tagidx, tmp116
	movslq	%edx, %rdx	# tmp116, D.7790
	salq	$3, %rdx	#, D.7790
	addq	%rdx, %rax	# D.7790, D.7786
	movq	$0, (%rax)	#, *_30
.L81:
	.loc 1 539 0
	movq	-40(%rbp), %rax	# msa, tmp117
	movl	272(%rax), %eax	# msa_2(D)->ngc, D.7789
	cmpl	-20(%rbp), %eax	# tagidx, D.7789
	jne	.L82	#,
	.loc 1 540 0
	movq	-40(%rbp), %rax	# msa, tmp118
	movq	248(%rax), %rax	# msa_2(D)->gc_tag, D.7786
	movl	-20(%rbp), %edx	# tagidx, tmp119
	movslq	%edx, %rdx	# tmp119, D.7790
	salq	$3, %rdx	#, D.7790
	leaq	(%rax,%rdx), %rbx	#, D.7786
	movq	-48(%rbp), %rax	# tag, tmp120
	movl	$-1, %esi	#,
	movq	%rax, %rdi	# tmp120,
	call	sre_strdup	#
	movq	%rax, (%rbx)	# D.7791, *_35
	.loc 1 541 0
	movq	-40(%rbp), %rax	# msa, tmp121
	movl	272(%rax), %eax	# msa_2(D)->ngc, D.7789
	leal	1(%rax), %edx	#, D.7789
	movq	-40(%rbp), %rax	# msa, tmp122
	movl	%edx, 272(%rax)	# D.7789, msa_2(D)->ngc
.L82:
	.loc 1 543 0
	movq	-40(%rbp), %rax	# msa, tmp123
	movq	256(%rax), %rax	# msa_2(D)->gc, D.7786
	movl	-20(%rbp), %edx	# tagidx, tmp124
	movslq	%edx, %rdx	# tmp124, D.7790
	salq	$3, %rdx	#, D.7790
	leaq	(%rax,%rdx), %rdi	#, D.7786
	movq	-56(%rbp), %rax	# value, tmp125
	movl	$-1, %ecx	#,
	movq	%rax, %rdx	# tmp125,
	movl	$-1, %esi	#,
	call	sre_strcat	#
	.loc 1 544 0
	nop
	.loc 1 545 0
	addq	$56, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	MSAAppendGC, .-MSAAppendGC
	.globl	MSAGetGC
	.type	MSAGetGC, @function
MSAGetGC:
.LFB11:
	.loc 1 562 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# msa, msa
	movq	%rsi, -32(%rbp)	# tag, tag
	.loc 1 565 0
	movq	-24(%rbp), %rax	# msa, tmp67
	movq	264(%rax), %rax	# msa_2(D)->gc_idx, D.7793
	testq	%rax, %rax	# D.7793
	jne	.L85	#,
	.loc 1 565 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.7792
	jmp	.L86	#
.L85:
	.loc 1 566 0 is_stmt 1
	movq	-24(%rbp), %rax	# msa, tmp68
	movq	264(%rax), %rax	# msa_2(D)->gc_idx, D.7793
	movq	-32(%rbp), %rdx	# tag, tmp69
	movq	%rdx, %rsi	# tmp69,
	movq	%rax, %rdi	# D.7793,
	call	GKIKeyIndex	#
	movl	%eax, -4(%rbp)	# tmp70, tagidx
	cmpl	$0, -4(%rbp)	#, tagidx
	jns	.L87	#,
	.loc 1 566 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.7792
	jmp	.L86	#
.L87:
	.loc 1 567 0 is_stmt 1
	movq	-24(%rbp), %rax	# msa, tmp71
	movq	256(%rax), %rax	# msa_2(D)->gc, D.7794
	movl	-4(%rbp), %edx	# tagidx, tmp72
	movslq	%edx, %rdx	# tmp72, D.7795
	salq	$3, %rdx	#, D.7795
	addq	%rdx, %rax	# D.7795, D.7794
	movq	(%rax), %rax	# *_12, D.7792
.L86:
	.loc 1 568 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	MSAGetGC, .-MSAGetGC
	.globl	MSAAppendGR
	.type	MSAAppendGR, @function
MSAAppendGR:
.LFB12:
	.loc 1 591 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$56, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)	# msa, msa
	movq	%rsi, -48(%rbp)	# tag, tag
	movl	%edx, -52(%rbp)	# sqidx, sqidx
	movq	%rcx, -64(%rbp)	# value, value
	.loc 1 599 0
	movq	-40(%rbp), %rax	# msa, tmp124
	movq	280(%rax), %rax	# msa_4(D)->gr_tag, D.7796
	testq	%rax, %rax	# D.7796
	jne	.L89	#,
	.loc 1 601 0
	movl	$8, %edx	#,
	movl	$601, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_malloc	#
	movq	-40(%rbp), %rdx	# msa, tmp125
	movq	%rax, 280(%rdx)	# D.7797, msa_4(D)->gr_tag
	.loc 1 602 0
	movl	$8, %edx	#,
	movl	$602, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_malloc	#
	movq	-40(%rbp), %rdx	# msa, tmp126
	movq	%rax, 288(%rdx)	# D.7797, msa_4(D)->gr
	.loc 1 603 0
	movq	-40(%rbp), %rax	# msa, tmp127
	movq	288(%rax), %rbx	# msa_4(D)->gr, D.7798
	movq	-40(%rbp), %rax	# msa, tmp128
	movl	320(%rax), %eax	# msa_4(D)->nseqalloc, D.7799
	cltq
	salq	$3, %rax	#, D.7800
	movq	%rax, %rdx	# D.7800,
	movl	$603, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_malloc	#
	movq	%rax, (%rbx)	# D.7797, *_8
	.loc 1 604 0
	movl	$0, -20(%rbp)	#, i
	jmp	.L90	#
.L91:
	.loc 1 605 0 discriminator 2
	movq	-40(%rbp), %rax	# msa, tmp129
	movq	288(%rax), %rax	# msa_4(D)->gr, D.7798
	movq	(%rax), %rax	# *_15, D.7796
	movl	-20(%rbp), %edx	# i, tmp130
	movslq	%edx, %rdx	# tmp130, D.7800
	salq	$3, %rdx	#, D.7800
	addq	%rdx, %rax	# D.7800, D.7796
	movq	$0, (%rax)	#, *_19
	.loc 1 604 0 discriminator 2
	addl	$1, -20(%rbp)	#, i
.L90:
	.loc 1 604 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# msa, tmp131
	movl	320(%rax), %eax	# msa_4(D)->nseqalloc, D.7799
	cmpl	-20(%rbp), %eax	# i, D.7799
	jg	.L91	#,
	.loc 1 606 0 is_stmt 1
	call	GKIInit	#
	movq	-40(%rbp), %rdx	# msa, tmp132
	movq	%rax, 296(%rdx)	# D.7801, msa_4(D)->gr_idx
	.loc 1 607 0
	movq	-40(%rbp), %rax	# msa, tmp133
	movq	296(%rax), %rax	# msa_4(D)->gr_idx, D.7801
	movq	-48(%rbp), %rdx	# tag, tmp134
	movq	%rdx, %rsi	# tmp134,
	movq	%rax, %rdi	# D.7801,
	call	GKIStoreKey	#
	movl	%eax, -24(%rbp)	# tmp135, tagidx
	jmp	.L92	#
.L89:
	.loc 1 613 0
	movq	-40(%rbp), %rax	# msa, tmp136
	movq	296(%rax), %rax	# msa_4(D)->gr_idx, D.7801
	movq	-48(%rbp), %rdx	# tag, tmp137
	movq	%rdx, %rsi	# tmp137,
	movq	%rax, %rdi	# D.7801,
	call	GKIKeyIndex	#
	movl	%eax, -24(%rbp)	# tmp138, tagidx
	.loc 1 614 0
	cmpl	$0, -24(%rbp)	#, tagidx
	jns	.L92	#,
	.loc 1 615 0
	movq	-40(%rbp), %rax	# msa, tmp139
	movq	296(%rax), %rax	# msa_4(D)->gr_idx, D.7801
	movq	-48(%rbp), %rdx	# tag, tmp140
	movq	%rdx, %rsi	# tmp140,
	movq	%rax, %rdi	# D.7801,
	call	GKIStoreKey	#
	movl	%eax, -24(%rbp)	# tmp141, tagidx
	.loc 1 620 0
	movq	-40(%rbp), %rax	# msa, tmp142
	movl	304(%rax), %eax	# msa_4(D)->ngr, D.7799
	addl	$1, %eax	#, D.7799
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7800
	movq	-40(%rbp), %rax	# msa, tmp143
	movq	280(%rax), %rax	# msa_4(D)->gr_tag, D.7796
	movq	%rdx, %rcx	# D.7800,
	movq	%rax, %rdx	# D.7796,
	movl	$620, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_realloc	#
	movq	-40(%rbp), %rdx	# msa, tmp144
	movq	%rax, 280(%rdx)	# D.7797, msa_4(D)->gr_tag
	.loc 1 621 0
	movq	-40(%rbp), %rax	# msa, tmp145
	movl	304(%rax), %eax	# msa_4(D)->ngr, D.7799
	addl	$1, %eax	#, D.7799
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7800
	movq	-40(%rbp), %rax	# msa, tmp146
	movq	288(%rax), %rax	# msa_4(D)->gr, D.7798
	movq	%rdx, %rcx	# D.7800,
	movq	%rax, %rdx	# D.7798,
	movl	$621, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_realloc	#
	movq	-40(%rbp), %rdx	# msa, tmp147
	movq	%rax, 288(%rdx)	# D.7797, msa_4(D)->gr
	.loc 1 622 0
	movq	-40(%rbp), %rax	# msa, tmp148
	movq	288(%rax), %rdx	# msa_4(D)->gr, D.7798
	movq	-40(%rbp), %rax	# msa, tmp149
	movl	304(%rax), %eax	# msa_4(D)->ngr, D.7799
	cltq
	salq	$3, %rax	#, D.7800
	leaq	(%rdx,%rax), %rbx	#, D.7798
	movq	-40(%rbp), %rax	# msa, tmp150
	movl	320(%rax), %eax	# msa_4(D)->nseqalloc, D.7799
	cltq
	salq	$3, %rax	#, D.7800
	movq	%rax, %rdx	# D.7800,
	movl	$622, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_malloc	#
	movq	%rax, (%rbx)	# D.7797, *_45
	.loc 1 623 0
	movl	$0, -20(%rbp)	#, i
	jmp	.L93	#
.L94:
	.loc 1 624 0 discriminator 2
	movq	-40(%rbp), %rax	# msa, tmp151
	movq	288(%rax), %rdx	# msa_4(D)->gr, D.7798
	movq	-40(%rbp), %rax	# msa, tmp152
	movl	304(%rax), %eax	# msa_4(D)->ngr, D.7799
	cltq
	salq	$3, %rax	#, D.7800
	addq	%rdx, %rax	# D.7798, D.7798
	movq	(%rax), %rax	# *_56, D.7796
	movl	-20(%rbp), %edx	# i, tmp153
	movslq	%edx, %rdx	# tmp153, D.7800
	salq	$3, %rdx	#, D.7800
	addq	%rdx, %rax	# D.7800, D.7796
	movq	$0, (%rax)	#, *_60
	.loc 1 623 0 discriminator 2
	addl	$1, -20(%rbp)	#, i
.L93:
	.loc 1 623 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# msa, tmp154
	movl	320(%rax), %eax	# msa_4(D)->nseqalloc, D.7799
	cmpl	-20(%rbp), %eax	# i, D.7799
	jg	.L94	#,
.L92:
	.loc 1 628 0 is_stmt 1
	movq	-40(%rbp), %rax	# msa, tmp155
	movl	304(%rax), %eax	# msa_4(D)->ngr, D.7799
	cmpl	-24(%rbp), %eax	# tagidx, D.7799
	jne	.L95	#,
	.loc 1 629 0
	movq	-40(%rbp), %rax	# msa, tmp156
	movq	280(%rax), %rax	# msa_4(D)->gr_tag, D.7796
	movl	-24(%rbp), %edx	# tagidx, tmp157
	movslq	%edx, %rdx	# tmp157, D.7800
	salq	$3, %rdx	#, D.7800
	leaq	(%rax,%rdx), %rbx	#, D.7796
	movq	-48(%rbp), %rax	# tag, tmp158
	movl	$-1, %esi	#,
	movq	%rax, %rdi	# tmp158,
	call	sre_strdup	#
	movq	%rax, (%rbx)	# D.7802, *_66
	.loc 1 630 0
	movq	-40(%rbp), %rax	# msa, tmp159
	movl	304(%rax), %eax	# msa_4(D)->ngr, D.7799
	leal	1(%rax), %edx	#, D.7799
	movq	-40(%rbp), %rax	# msa, tmp160
	movl	%edx, 304(%rax)	# D.7799, msa_4(D)->ngr
.L95:
	.loc 1 632 0
	movq	-40(%rbp), %rax	# msa, tmp161
	movq	288(%rax), %rax	# msa_4(D)->gr, D.7798
	movl	-24(%rbp), %edx	# tagidx, tmp162
	movslq	%edx, %rdx	# tmp162, D.7800
	salq	$3, %rdx	#, D.7800
	addq	%rdx, %rax	# D.7800, D.7798
	movq	(%rax), %rax	# *_73, D.7796
	movl	-52(%rbp), %edx	# sqidx, tmp163
	movslq	%edx, %rdx	# tmp163, D.7800
	salq	$3, %rdx	#, D.7800
	leaq	(%rax,%rdx), %rdi	#, D.7796
	movq	-64(%rbp), %rax	# value, tmp164
	movl	$-1, %ecx	#,
	movq	%rax, %rdx	# tmp164,
	movl	$-1, %esi	#,
	call	sre_strcat	#
	.loc 1 633 0
	nop
	.loc 1 634 0
	addq	$56, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	MSAAppendGR, .-MSAAppendGR
	.section	.rodata
.LC5:
	.string	""
	.align 8
.LC6:
	.string	"Parse error: no sequences were found for alignment %s"
	.align 8
.LC7:
	.string	"Parse error: No sequence for %s in alignment %s"
	.align 8
.LC8:
	.string	"Parse error: some weights are set, but %s doesn't have one in alignment %s"
	.align 8
.LC9:
	.string	"Parse error: sequence %s: length %d, expected %d in alignment %s"
	.align 8
.LC10:
	.string	"Parse error: #=GR SS annotation for %s: length %d, expected %d in alignment %s"
	.align 8
.LC11:
	.string	"Parse error: #=GR SA annotation for %s: length %d, expected %d in alignment %s"
	.align 8
.LC12:
	.string	"Parse error: #=GC SS_cons annotation: length %d, expected %d in alignment %s"
	.align 8
.LC13:
	.string	"Parse error: #=GC SA_cons annotation: length %d, expected %d in alignment %s"
	.align 8
.LC14:
	.string	"Parse error: #=GC RF annotation: length %d, expected %d in alignment %s"
	.text
	.globl	MSAVerifyParse
	.type	MSAVerifyParse, @function
MSAVerifyParse:
.LFB13:
	.loc 1 663 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r12	#
	pushq	%rbx	#
	subq	$32, %rsp	#,
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -40(%rbp)	# msa, msa
	.loc 1 666 0
	movq	-40(%rbp), %rax	# msa, tmp200
	movl	28(%rax), %eax	# msa_11(D)->nseq, D.7803
	testl	%eax, %eax	# D.7803
	jne	.L98	#,
	.loc 1 667 0 discriminator 1
	movq	-40(%rbp), %rax	# msa, tmp201
	movq	40(%rax), %rax	# msa_11(D)->name, D.7804
	.loc 1 666 0 discriminator 1
	testq	%rax, %rax	# D.7804
	je	.L99	#,
	movq	-40(%rbp), %rax	# msa, tmp202
	movq	40(%rax), %rax	# msa_11(D)->name, iftmp.0
	jmp	.L100	#
.L99:
	.loc 1 666 0 is_stmt 0 discriminator 2
	movl	$.LC5, %eax	#, iftmp.0
.L100:
	.loc 1 666 0 discriminator 3
	movq	%rax, %rsi	# iftmp.0,
	movl	$.LC6, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
.L98:
	.loc 1 669 0 is_stmt 1
	movq	-40(%rbp), %rax	# msa, tmp203
	movq	328(%rax), %rax	# msa_11(D)->sqlen, D.7805
	movl	(%rax), %edx	# *_16, D.7803
	movq	-40(%rbp), %rax	# msa, tmp204
	movl	%edx, 24(%rax)	# D.7803, msa_11(D)->alen
	.loc 1 675 0
	movl	$0, -20(%rbp)	#, idx
	jmp	.L101	#
.L118:
	.loc 1 678 0
	movq	-40(%rbp), %rax	# msa, tmp205
	movq	(%rax), %rax	# msa_11(D)->aseq, D.7806
	movl	-20(%rbp), %edx	# idx, tmp206
	movslq	%edx, %rdx	# tmp206, D.7807
	salq	$3, %rdx	#, D.7807
	addq	%rdx, %rax	# D.7807, D.7806
	movq	(%rax), %rax	# *_23, D.7804
	testq	%rax, %rax	# D.7804
	jne	.L102	#,
	.loc 1 680 0
	movq	-40(%rbp), %rax	# msa, tmp207
	movq	40(%rax), %rax	# msa_11(D)->name, D.7804
	.loc 1 679 0
	testq	%rax, %rax	# D.7804
	je	.L103	#,
	.loc 1 679 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# msa, tmp208
	movq	40(%rax), %rax	# msa_11(D)->name, iftmp.1
	jmp	.L104	#
.L103:
	.loc 1 679 0 discriminator 2
	movl	$.LC5, %eax	#, iftmp.1
.L104:
	.loc 1 679 0 discriminator 3
	movq	-40(%rbp), %rdx	# msa, tmp209
	movq	8(%rdx), %rdx	# msa_11(D)->sqname, D.7806
	movl	-20(%rbp), %ecx	# idx, tmp210
	movslq	%ecx, %rcx	# tmp210, D.7807
	salq	$3, %rcx	#, D.7807
	addq	%rcx, %rdx	# D.7807, D.7806
	movq	(%rdx), %rcx	# *_31, D.7804
	movq	%rax, %rdx	# iftmp.1,
	movq	%rcx, %rsi	# D.7804,
	movl	$.LC7, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
.L102:
	.loc 1 682 0 is_stmt 1
	movq	-40(%rbp), %rax	# msa, tmp211
	movl	32(%rax), %eax	# msa_11(D)->flags, D.7803
	andl	$1, %eax	#, D.7803
	testl	%eax, %eax	# D.7803
	je	.L105	#,
	.loc 1 682 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# msa, tmp212
	movq	16(%rax), %rax	# msa_11(D)->wgt, D.7808
	movl	-20(%rbp), %edx	# idx, tmp213
	movslq	%edx, %rdx	# tmp213, D.7807
	salq	$2, %rdx	#, D.7807
	addq	%rdx, %rax	# D.7807, D.7808
	movss	(%rax), %xmm0	# *_38, D.7809
	movss	.LC1(%rip), %xmm1	#, tmp214
	ucomiss	%xmm1, %xmm0	# tmp214, D.7809
	jp	.L105	#,
	movss	.LC1(%rip), %xmm1	#, tmp215
	ucomiss	%xmm1, %xmm0	# tmp215, D.7809
	jne	.L105	#,
	.loc 1 685 0 is_stmt 1
	movq	-40(%rbp), %rax	# msa, tmp216
	movq	40(%rax), %rax	# msa_11(D)->name, D.7804
	.loc 1 683 0
	testq	%rax, %rax	# D.7804
	je	.L107	#,
	.loc 1 683 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# msa, tmp217
	movq	40(%rax), %rax	# msa_11(D)->name, iftmp.2
	jmp	.L108	#
.L107:
	.loc 1 683 0 discriminator 2
	movl	$.LC5, %eax	#, iftmp.2
.L108:
	.loc 1 684 0 is_stmt 1 discriminator 3
	movq	-40(%rbp), %rdx	# msa, tmp218
	movq	8(%rdx), %rdx	# msa_11(D)->sqname, D.7806
	movl	-20(%rbp), %ecx	# idx, tmp219
	movslq	%ecx, %rcx	# tmp219, D.7807
	salq	$3, %rcx	#, D.7807
	addq	%rcx, %rdx	# D.7807, D.7806
	.loc 1 683 0 discriminator 3
	movq	(%rdx), %rcx	# *_46, D.7804
	movq	%rax, %rdx	# iftmp.2,
	movq	%rcx, %rsi	# D.7804,
	movl	$.LC8, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
.L105:
	.loc 1 687 0
	movq	-40(%rbp), %rax	# msa, tmp220
	movq	328(%rax), %rax	# msa_11(D)->sqlen, D.7805
	movl	-20(%rbp), %edx	# idx, tmp221
	movslq	%edx, %rdx	# tmp221, D.7807
	salq	$2, %rdx	#, D.7807
	addq	%rdx, %rax	# D.7807, D.7805
	movl	(%rax), %edx	# *_51, D.7803
	movq	-40(%rbp), %rax	# msa, tmp222
	movl	24(%rax), %eax	# msa_11(D)->alen, D.7803
	cmpl	%eax, %edx	# D.7803, D.7803
	je	.L109	#,
	.loc 1 690 0
	movq	-40(%rbp), %rax	# msa, tmp223
	movq	40(%rax), %rax	# msa_11(D)->name, D.7804
	.loc 1 688 0
	testq	%rax, %rax	# D.7804
	je	.L110	#,
	.loc 1 688 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# msa, tmp224
	movq	40(%rax), %rax	# msa_11(D)->name, iftmp.3
	jmp	.L111	#
.L110:
	.loc 1 688 0 discriminator 2
	movl	$.LC5, %eax	#, iftmp.3
.L111:
	.loc 1 688 0 discriminator 3
	movq	-40(%rbp), %rdx	# msa, tmp225
	movl	24(%rdx), %ecx	# msa_11(D)->alen, D.7803
	.loc 1 689 0 is_stmt 1 discriminator 3
	movq	-40(%rbp), %rdx	# msa, tmp226
	movq	328(%rdx), %rdx	# msa_11(D)->sqlen, D.7805
	movl	-20(%rbp), %esi	# idx, tmp227
	movslq	%esi, %rsi	# tmp227, D.7807
	salq	$2, %rsi	#, D.7807
	addq	%rsi, %rdx	# D.7807, D.7805
	.loc 1 688 0 discriminator 3
	movl	(%rdx), %edx	# *_61, D.7803
	.loc 1 689 0 discriminator 3
	movq	-40(%rbp), %rsi	# msa, tmp228
	movq	8(%rsi), %rsi	# msa_11(D)->sqname, D.7806
	movl	-20(%rbp), %edi	# idx, tmp229
	movslq	%edi, %rdi	# tmp229, D.7807
	salq	$3, %rdi	#, D.7807
	addq	%rdi, %rsi	# D.7807, D.7806
	.loc 1 688 0 discriminator 3
	movq	(%rsi), %rsi	# *_66, D.7804
	movq	%rax, %r8	# iftmp.3,
	movl	$.LC9, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
.L109:
	.loc 1 692 0
	movq	-40(%rbp), %rax	# msa, tmp230
	movq	112(%rax), %rax	# msa_11(D)->ss, D.7806
	testq	%rax, %rax	# D.7806
	je	.L112	#,
	.loc 1 692 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# msa, tmp231
	movq	112(%rax), %rax	# msa_11(D)->ss, D.7806
	movl	-20(%rbp), %edx	# idx, tmp232
	movslq	%edx, %rdx	# tmp232, D.7807
	salq	$3, %rdx	#, D.7807
	addq	%rdx, %rax	# D.7807, D.7806
	movq	(%rax), %rax	# *_72, D.7804
	testq	%rax, %rax	# D.7804
	je	.L112	#,
	movq	-40(%rbp), %rax	# msa, tmp233
	movq	336(%rax), %rax	# msa_11(D)->sslen, D.7805
	movl	-20(%rbp), %edx	# idx, tmp234
	movslq	%edx, %rdx	# tmp234, D.7807
	salq	$2, %rdx	#, D.7807
	addq	%rdx, %rax	# D.7807, D.7805
	movl	(%rax), %edx	# *_77, D.7803
	movq	-40(%rbp), %rax	# msa, tmp235
	movl	24(%rax), %eax	# msa_11(D)->alen, D.7803
	cmpl	%eax, %edx	# D.7803, D.7803
	je	.L112	#,
	.loc 1 695 0 is_stmt 1
	movq	-40(%rbp), %rax	# msa, tmp236
	movq	40(%rax), %rax	# msa_11(D)->name, D.7804
	.loc 1 693 0
	testq	%rax, %rax	# D.7804
	je	.L113	#,
	.loc 1 693 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# msa, tmp237
	movq	40(%rax), %rax	# msa_11(D)->name, iftmp.4
	jmp	.L114	#
.L113:
	.loc 1 693 0 discriminator 2
	movl	$.LC5, %eax	#, iftmp.4
.L114:
	.loc 1 693 0 discriminator 3
	movq	-40(%rbp), %rdx	# msa, tmp238
	movl	24(%rdx), %ecx	# msa_11(D)->alen, D.7803
	.loc 1 694 0 is_stmt 1 discriminator 3
	movq	-40(%rbp), %rdx	# msa, tmp239
	movq	336(%rdx), %rdx	# msa_11(D)->sslen, D.7805
	movl	-20(%rbp), %esi	# idx, tmp240
	movslq	%esi, %rsi	# tmp240, D.7807
	salq	$2, %rsi	#, D.7807
	addq	%rsi, %rdx	# D.7807, D.7805
	.loc 1 693 0 discriminator 3
	movl	(%rdx), %edx	# *_87, D.7803
	.loc 1 694 0 discriminator 3
	movq	-40(%rbp), %rsi	# msa, tmp241
	movq	8(%rsi), %rsi	# msa_11(D)->sqname, D.7806
	movl	-20(%rbp), %edi	# idx, tmp242
	movslq	%edi, %rdi	# tmp242, D.7807
	salq	$3, %rdi	#, D.7807
	addq	%rdi, %rsi	# D.7807, D.7806
	.loc 1 693 0 discriminator 3
	movq	(%rsi), %rsi	# *_92, D.7804
	movq	%rax, %r8	# iftmp.4,
	movl	$.LC10, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
.L112:
	.loc 1 697 0
	movq	-40(%rbp), %rax	# msa, tmp243
	movq	120(%rax), %rax	# msa_11(D)->sa, D.7806
	testq	%rax, %rax	# D.7806
	je	.L115	#,
	.loc 1 697 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# msa, tmp244
	movq	120(%rax), %rax	# msa_11(D)->sa, D.7806
	movl	-20(%rbp), %edx	# idx, tmp245
	movslq	%edx, %rdx	# tmp245, D.7807
	salq	$3, %rdx	#, D.7807
	addq	%rdx, %rax	# D.7807, D.7806
	movq	(%rax), %rax	# *_98, D.7804
	testq	%rax, %rax	# D.7804
	je	.L115	#,
	movq	-40(%rbp), %rax	# msa, tmp246
	movq	344(%rax), %rax	# msa_11(D)->salen, D.7805
	movl	-20(%rbp), %edx	# idx, tmp247
	movslq	%edx, %rdx	# tmp247, D.7807
	salq	$2, %rdx	#, D.7807
	addq	%rdx, %rax	# D.7807, D.7805
	movl	(%rax), %edx	# *_103, D.7803
	movq	-40(%rbp), %rax	# msa, tmp248
	movl	24(%rax), %eax	# msa_11(D)->alen, D.7803
	cmpl	%eax, %edx	# D.7803, D.7803
	je	.L115	#,
	.loc 1 700 0 is_stmt 1
	movq	-40(%rbp), %rax	# msa, tmp249
	movq	40(%rax), %rax	# msa_11(D)->name, D.7804
	.loc 1 698 0
	testq	%rax, %rax	# D.7804
	je	.L116	#,
	.loc 1 698 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# msa, tmp250
	movq	40(%rax), %rax	# msa_11(D)->name, iftmp.5
	jmp	.L117	#
.L116:
	.loc 1 698 0 discriminator 2
	movl	$.LC5, %eax	#, iftmp.5
.L117:
	.loc 1 698 0 discriminator 3
	movq	-40(%rbp), %rdx	# msa, tmp251
	movl	24(%rdx), %ecx	# msa_11(D)->alen, D.7803
	.loc 1 699 0 is_stmt 1 discriminator 3
	movq	-40(%rbp), %rdx	# msa, tmp252
	movq	344(%rdx), %rdx	# msa_11(D)->salen, D.7805
	movl	-20(%rbp), %esi	# idx, tmp253
	movslq	%esi, %rsi	# tmp253, D.7807
	salq	$2, %rsi	#, D.7807
	addq	%rsi, %rdx	# D.7807, D.7805
	.loc 1 698 0 discriminator 3
	movl	(%rdx), %edx	# *_113, D.7803
	.loc 1 699 0 discriminator 3
	movq	-40(%rbp), %rsi	# msa, tmp254
	movq	8(%rsi), %rsi	# msa_11(D)->sqname, D.7806
	movl	-20(%rbp), %edi	# idx, tmp255
	movslq	%edi, %rdi	# tmp255, D.7807
	salq	$3, %rdi	#, D.7807
	addq	%rdi, %rsi	# D.7807, D.7806
	.loc 1 698 0 discriminator 3
	movq	(%rsi), %rsi	# *_118, D.7804
	movq	%rax, %r8	# iftmp.5,
	movl	$.LC11, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
.L115:
	.loc 1 675 0
	addl	$1, -20(%rbp)	#, idx
.L101:
	.loc 1 675 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# msa, tmp256
	movl	28(%rax), %eax	# msa_11(D)->nseq, D.7803
	cmpl	-20(%rbp), %eax	# idx, D.7803
	jg	.L118	#,
	.loc 1 704 0 is_stmt 1
	movq	-40(%rbp), %rax	# msa, tmp257
	movq	72(%rax), %rax	# msa_11(D)->ss_cons, D.7804
	testq	%rax, %rax	# D.7804
	je	.L119	#,
	.loc 1 704 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# msa, tmp258
	movq	72(%rax), %rax	# msa_11(D)->ss_cons, D.7804
	movq	%rax, %rdi	# D.7804,
	call	strlen	#
	movq	-40(%rbp), %rdx	# msa, tmp259
	movl	24(%rdx), %edx	# msa_11(D)->alen, D.7803
	movslq	%edx, %rdx	# D.7803, D.7807
	cmpq	%rdx, %rax	# D.7807, D.7807
	je	.L119	#,
	.loc 1 707 0 is_stmt 1
	movq	-40(%rbp), %rax	# msa, tmp260
	movq	40(%rax), %rax	# msa_11(D)->name, D.7804
	.loc 1 705 0
	testq	%rax, %rax	# D.7804
	je	.L120	#,
	.loc 1 705 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# msa, tmp261
	movq	40(%rax), %rbx	# msa_11(D)->name, iftmp.6
	jmp	.L121	#
.L120:
	.loc 1 705 0 discriminator 2
	movl	$.LC5, %ebx	#, iftmp.6
.L121:
	.loc 1 705 0 discriminator 3
	movq	-40(%rbp), %rax	# msa, tmp262
	movl	24(%rax), %r12d	# msa_11(D)->alen, D.7803
	.loc 1 706 0 is_stmt 1 discriminator 3
	movq	-40(%rbp), %rax	# msa, tmp263
	movq	72(%rax), %rax	# msa_11(D)->ss_cons, D.7804
	.loc 1 705 0 discriminator 3
	movq	%rax, %rdi	# D.7804,
	call	strlen	#
	movq	%rbx, %rcx	# iftmp.6,
	movl	%r12d, %edx	# D.7803,
	movq	%rax, %rsi	# D.7807,
	movl	$.LC12, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
.L119:
	.loc 1 710 0
	movq	-40(%rbp), %rax	# msa, tmp264
	movq	80(%rax), %rax	# msa_11(D)->sa_cons, D.7804
	testq	%rax, %rax	# D.7804
	je	.L122	#,
	.loc 1 710 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# msa, tmp265
	movq	80(%rax), %rax	# msa_11(D)->sa_cons, D.7804
	movq	%rax, %rdi	# D.7804,
	call	strlen	#
	movq	-40(%rbp), %rdx	# msa, tmp266
	movl	24(%rdx), %edx	# msa_11(D)->alen, D.7803
	movslq	%edx, %rdx	# D.7803, D.7807
	cmpq	%rdx, %rax	# D.7807, D.7807
	je	.L122	#,
	.loc 1 713 0 is_stmt 1
	movq	-40(%rbp), %rax	# msa, tmp267
	movq	40(%rax), %rax	# msa_11(D)->name, D.7804
	.loc 1 711 0
	testq	%rax, %rax	# D.7804
	je	.L123	#,
	.loc 1 711 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# msa, tmp268
	movq	40(%rax), %rbx	# msa_11(D)->name, iftmp.7
	jmp	.L124	#
.L123:
	.loc 1 711 0 discriminator 2
	movl	$.LC5, %ebx	#, iftmp.7
.L124:
	.loc 1 711 0 discriminator 3
	movq	-40(%rbp), %rax	# msa, tmp269
	movl	24(%rax), %r12d	# msa_11(D)->alen, D.7803
	.loc 1 712 0 is_stmt 1 discriminator 3
	movq	-40(%rbp), %rax	# msa, tmp270
	movq	80(%rax), %rax	# msa_11(D)->sa_cons, D.7804
	.loc 1 711 0 discriminator 3
	movq	%rax, %rdi	# D.7804,
	call	strlen	#
	movq	%rbx, %rcx	# iftmp.7,
	movl	%r12d, %edx	# D.7803,
	movq	%rax, %rsi	# D.7807,
	movl	$.LC13, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
.L122:
	.loc 1 716 0
	movq	-40(%rbp), %rax	# msa, tmp271
	movq	88(%rax), %rax	# msa_11(D)->rf, D.7804
	testq	%rax, %rax	# D.7804
	je	.L125	#,
	.loc 1 716 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# msa, tmp272
	movq	88(%rax), %rax	# msa_11(D)->rf, D.7804
	movq	%rax, %rdi	# D.7804,
	call	strlen	#
	movq	-40(%rbp), %rdx	# msa, tmp273
	movl	24(%rdx), %edx	# msa_11(D)->alen, D.7803
	movslq	%edx, %rdx	# D.7803, D.7807
	cmpq	%rdx, %rax	# D.7807, D.7807
	je	.L125	#,
	.loc 1 719 0 is_stmt 1
	movq	-40(%rbp), %rax	# msa, tmp274
	movq	40(%rax), %rax	# msa_11(D)->name, D.7804
	.loc 1 717 0
	testq	%rax, %rax	# D.7804
	je	.L126	#,
	.loc 1 717 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# msa, tmp275
	movq	40(%rax), %rbx	# msa_11(D)->name, iftmp.8
	jmp	.L127	#
.L126:
	.loc 1 717 0 discriminator 2
	movl	$.LC5, %ebx	#, iftmp.8
.L127:
	.loc 1 717 0 discriminator 3
	movq	-40(%rbp), %rax	# msa, tmp276
	movl	24(%rax), %r12d	# msa_11(D)->alen, D.7803
	.loc 1 718 0 is_stmt 1 discriminator 3
	movq	-40(%rbp), %rax	# msa, tmp277
	movq	88(%rax), %rax	# msa_11(D)->rf, D.7804
	.loc 1 717 0 discriminator 3
	movq	%rax, %rdi	# D.7804,
	call	strlen	#
	movq	%rbx, %rcx	# iftmp.8,
	movl	%r12d, %edx	# D.7803,
	movq	%rax, %rsi	# D.7807,
	movl	$.LC14, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
.L125:
	.loc 1 722 0
	movq	-40(%rbp), %rax	# msa, tmp278
	movl	32(%rax), %eax	# msa_11(D)->flags, D.7803
	andl	$1, %eax	#, D.7803
	testl	%eax, %eax	# D.7803
	jne	.L128	#,
	.loc 1 723 0
	movq	-40(%rbp), %rax	# msa, tmp279
	movl	28(%rax), %edx	# msa_11(D)->nseq, D.7803
	movq	-40(%rbp), %rax	# msa, tmp280
	movq	16(%rax), %rax	# msa_11(D)->wgt, D.7808
	movss	.LC15(%rip), %xmm0	#,
	movl	%edx, %esi	# D.7803,
	movq	%rax, %rdi	# D.7808,
	call	FSet	#
.L128:
	.loc 1 726 0
	movq	-40(%rbp), %rax	# msa, tmp281
	movq	328(%rax), %rax	# msa_11(D)->sqlen, D.7805
	testq	%rax, %rax	# D.7805
	je	.L129	#,
	.loc 1 726 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# msa, tmp282
	movq	328(%rax), %rax	# msa_11(D)->sqlen, D.7805
	movq	%rax, %rdi	# D.7805,
	call	free	#
	movq	-40(%rbp), %rax	# msa, tmp283
	movq	$0, 328(%rax)	#, msa_11(D)->sqlen
.L129:
	.loc 1 727 0 is_stmt 1
	movq	-40(%rbp), %rax	# msa, tmp284
	movq	336(%rax), %rax	# msa_11(D)->sslen, D.7805
	testq	%rax, %rax	# D.7805
	je	.L130	#,
	.loc 1 727 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# msa, tmp285
	movq	336(%rax), %rax	# msa_11(D)->sslen, D.7805
	movq	%rax, %rdi	# D.7805,
	call	free	#
	movq	-40(%rbp), %rax	# msa, tmp286
	movq	$0, 336(%rax)	#, msa_11(D)->sslen
.L130:
	.loc 1 728 0 is_stmt 1
	movq	-40(%rbp), %rax	# msa, tmp287
	movq	344(%rax), %rax	# msa_11(D)->salen, D.7805
	testq	%rax, %rax	# D.7805
	je	.L131	#,
	.loc 1 728 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# msa, tmp288
	movq	344(%rax), %rax	# msa_11(D)->salen, D.7805
	movq	%rax, %rdi	# D.7805,
	call	free	#
	movq	-40(%rbp), %rax	# msa, tmp289
	movq	$0, 344(%rax)	#, msa_11(D)->salen
.L131:
	.loc 1 730 0 is_stmt 1
	nop
	.loc 1 731 0
	addq	$32, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	MSAVerifyParse, .-MSAVerifyParse
	.section	.rodata
.LC16:
	.string	"-"
.LC17:
	.string	"[STDIN]"
.LC18:
	.string	"r"
.LC19:
	.string	"%s.ssi"
	.align 8
.LC20:
	.string	"Can't autodetect alignment file format from a stdin or gzip pipe"
	.align 8
.LC21:
	.string	"Can't determine format of multiple alignment file %s"
	.text
	.globl	MSAFileOpen
	.type	MSAFileOpen, @function
MSAFileOpen:
.LFB14:
	.loc 1 757 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$72, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)	# filename, filename
	movl	%esi, -60(%rbp)	# format, format
	movq	%rdx, -72(%rbp)	# env, env
	.loc 1 760 0
	movl	$64, %edx	#,
	movl	$760, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_malloc	#
	movq	%rax, -32(%rbp)	# tmp81, afp
	.loc 1 761 0
	movq	-56(%rbp), %rax	# filename, tmp82
	movl	$.LC16, %esi	#,
	movq	%rax, %rdi	# tmp82,
	call	strcmp	#
	testl	%eax, %eax	# D.7821
	jne	.L135	#,
	.loc 1 763 0
	movq	stdin(%rip), %rdx	# stdin, stdin.9
	movq	-32(%rbp), %rax	# afp, tmp83
	movq	%rdx, (%rax)	# stdin.9, afp_4->f
	.loc 1 764 0
	movq	-32(%rbp), %rax	# afp, tmp84
	movl	$1, 52(%rax)	#, afp_4->do_stdin
	.loc 1 765 0
	movq	-32(%rbp), %rax	# afp, tmp85
	movl	$0, 48(%rax)	#, afp_4->do_gzip
	.loc 1 766 0
	movl	$-1, %esi	#,
	movl	$.LC17, %edi	#,
	call	sre_strdup	#
	movq	-32(%rbp), %rdx	# afp, tmp86
	movq	%rax, 8(%rdx)	# D.7822, afp_4->fname
	.loc 1 767 0
	movq	-32(%rbp), %rax	# afp, tmp87
	movq	$0, 40(%rax)	#, afp_4->ssi
	jmp	.L136	#
.L135:
.LBB3:
	.loc 1 804 0
	movq	-56(%rbp), %rax	# filename, tmp88
	movl	$.LC18, %esi	#,
	movq	%rax, %rdi	# tmp88,
	call	fopen	#
	movq	-32(%rbp), %rdx	# afp, tmp89
	movq	%rax, (%rdx)	# D.7823, afp_4->f
	movq	-32(%rbp), %rax	# afp, tmp90
	movq	(%rax), %rax	# afp_4->f, D.7823
	testq	%rax, %rax	# D.7823
	je	.L137	#,
	.loc 1 806 0
	movq	-56(%rbp), %rax	# filename, tmp91
	movq	%rax, %rdi	# tmp91,
	call	strlen	#
	addq	$5, %rax	#, D.7824
	movq	%rax, %rdx	# D.7824,
	movl	$806, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_malloc	#
	movq	%rax, -40(%rbp)	# tmp92, ssifile
	.loc 1 807 0
	movq	-56(%rbp), %rdx	# filename, tmp93
	movq	-40(%rbp), %rax	# ssifile, tmp94
	movl	$.LC19, %esi	#,
	movq	%rax, %rdi	# tmp94,
	movl	$0, %eax	#,
	call	sprintf	#
	jmp	.L138	#
.L137:
	.loc 1 809 0
	leaq	-48(%rbp), %rdx	#, tmp95
	movq	-72(%rbp), %rcx	# env, tmp96
	movq	-56(%rbp), %rax	# filename, tmp97
	movq	%rcx, %rsi	# tmp96,
	movq	%rax, %rdi	# tmp97,
	call	EnvFileOpen	#
	movq	-32(%rbp), %rdx	# afp, tmp98
	movq	%rax, (%rdx)	# D.7823, afp_4->f
	movq	-32(%rbp), %rax	# afp, tmp99
	movq	(%rax), %rax	# afp_4->f, D.7823
	testq	%rax, %rax	# D.7823
	je	.L139	#,
.LBB4:
	.loc 1 812 0
	movq	-48(%rbp), %rax	# dir, dir.10
	movq	-56(%rbp), %rdx	# filename, tmp100
	movq	%rdx, %rsi	# tmp100,
	movq	%rax, %rdi	# dir.10,
	call	FileConcat	#
	movq	%rax, -24(%rbp)	# tmp101, full
	.loc 1 813 0
	movq	-24(%rbp), %rax	# full, tmp102
	movq	%rax, %rdi	# tmp102,
	call	strlen	#
	movq	%rax, %rbx	#, D.7824
	movq	-56(%rbp), %rax	# filename, tmp103
	movq	%rax, %rdi	# tmp103,
	call	strlen	#
	addq	%rbx, %rax	# D.7824, D.7824
	addq	$5, %rax	#, D.7824
	movq	%rax, %rdx	# D.7824,
	movl	$813, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_malloc	#
	movq	%rax, -40(%rbp)	# tmp104, ssifile
	.loc 1 814 0
	movq	-24(%rbp), %rdx	# full, tmp105
	movq	-40(%rbp), %rax	# ssifile, tmp106
	movl	$.LC19, %esi	#,
	movq	%rax, %rdi	# tmp106,
	movl	$0, %eax	#,
	call	sprintf	#
	.loc 1 815 0
	movq	-48(%rbp), %rax	# dir, dir.11
	movq	%rax, %rdi	# dir.11,
	call	free	#
.LBE4:
	jmp	.L138	#
.L139:
	.loc 1 817 0
	movl	$0, %eax	#, D.7820
	jmp	.L140	#
.L138:
	.loc 1 819 0 discriminator 1
	movq	-32(%rbp), %rax	# afp, tmp107
	movl	$0, 52(%rax)	#, afp_4->do_stdin
	.loc 1 820 0 discriminator 1
	movq	-32(%rbp), %rax	# afp, tmp108
	movl	$0, 48(%rax)	#, afp_4->do_gzip
	.loc 1 821 0 discriminator 1
	movq	-56(%rbp), %rax	# filename, tmp109
	movl	$-1, %esi	#,
	movq	%rax, %rdi	# tmp109,
	call	sre_strdup	#
	movq	-32(%rbp), %rdx	# afp, tmp110
	movq	%rax, 8(%rdx)	# D.7822, afp_4->fname
	.loc 1 822 0 discriminator 1
	movq	-32(%rbp), %rax	# afp, tmp111
	movq	$0, 40(%rax)	#, afp_4->ssi
	.loc 1 827 0 discriminator 1
	movq	-32(%rbp), %rax	# afp, tmp112
	leaq	40(%rax), %rdx	#, D.7825
	movq	-40(%rbp), %rax	# ssifile, tmp113
	movq	%rdx, %rsi	# D.7825,
	movq	%rax, %rdi	# tmp113,
	call	SSIOpen	#
	.loc 1 828 0 discriminator 1
	movq	-40(%rbp), %rax	# ssifile, tmp114
	movq	%rax, %rdi	# tmp114,
	call	free	#
.L136:
.LBE3:
	.loc 1 834 0
	cmpl	$0, -60(%rbp)	#, format
	jne	.L141	#,
	.loc 1 836 0
	movq	-32(%rbp), %rax	# afp, tmp115
	movl	52(%rax), %eax	# afp_4->do_stdin, D.7821
	cmpl	$1, %eax	#, D.7821
	je	.L142	#,
	.loc 1 836 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# afp, tmp116
	movl	48(%rax), %eax	# afp_4->do_gzip, D.7821
	testl	%eax, %eax	# D.7821
	je	.L143	#,
.L142:
	.loc 1 837 0 is_stmt 1
	movl	$.LC20, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
.L143:
	.loc 1 838 0
	movq	-32(%rbp), %rax	# afp, tmp117
	movq	%rax, %rdi	# tmp117,
	call	MSAFileFormat	#
	movl	%eax, -60(%rbp)	# tmp118, format
	.loc 1 839 0
	cmpl	$0, -60(%rbp)	#, format
	jne	.L141	#,
	.loc 1 840 0
	movq	-32(%rbp), %rax	# afp, tmp119
	movq	8(%rax), %rax	# afp_4->fname, D.7822
	movq	%rax, %rsi	# D.7822,
	movl	$.LC21, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
.L141:
	.loc 1 843 0
	movq	-32(%rbp), %rax	# afp, tmp120
	movl	-60(%rbp), %edx	# format, tmp121
	movl	%edx, 56(%rax)	# tmp121, afp_4->format
	.loc 1 844 0
	movq	-32(%rbp), %rax	# afp, tmp122
	movl	$0, 16(%rax)	#, afp_4->linenumber
	.loc 1 845 0
	movq	-32(%rbp), %rax	# afp, tmp123
	movq	$0, 24(%rax)	#, afp_4->buf
	.loc 1 846 0
	movq	-32(%rbp), %rax	# afp, tmp124
	movl	$0, 32(%rax)	#, afp_4->buflen
	.loc 1 848 0
	movq	-32(%rbp), %rax	# afp, D.7820
.L140:
	.loc 1 849 0
	addq	$72, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	MSAFileOpen, .-MSAFileOpen
	.globl	MSAFileRewind
	.type	MSAFileRewind, @function
MSAFileRewind:
.LFB15:
	.loc 1 874 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# afp, afp
	.loc 1 875 0
	movq	-8(%rbp), %rax	# afp, tmp64
	movl	48(%rax), %eax	# afp_2(D)->do_gzip, D.7832
	testl	%eax, %eax	# D.7832
	jne	.L145	#,
	.loc 1 875 0 is_stmt 0 discriminator 2
	movq	-8(%rbp), %rax	# afp, tmp65
	movl	52(%rax), %eax	# afp_2(D)->do_stdin, D.7832
	testl	%eax, %eax	# D.7832
	je	.L146	#,
.L145:
	.loc 1 875 0 discriminator 1
	movl	$0, %eax	#, D.7832
	jmp	.L147	#
.L146:
	.loc 1 876 0 is_stmt 1
	movq	-8(%rbp), %rax	# afp, tmp66
	movq	(%rax), %rax	# afp_2(D)->f, D.7833
	movq	%rax, %rdi	# D.7833,
	call	rewind	#
	.loc 1 877 0
	movl	$1, %eax	#, D.7832
.L147:
	.loc 1 878 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	MSAFileRewind, .-MSAFileRewind
	.globl	MSAFilePositionByKey
	.type	MSAFilePositionByKey, @function
MSAFilePositionByKey:
.LFB16:
	.loc 1 881 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# afp, afp
	movq	%rsi, -48(%rbp)	# key, key
	.loc 1 885 0
	movq	-40(%rbp), %rax	# afp, tmp66
	movq	40(%rax), %rax	# afp_2(D)->ssi, D.7835
	testq	%rax, %rax	# D.7835
	jne	.L149	#,
	.loc 1 885 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.7834
	jmp	.L153	#
.L149:
	.loc 1 886 0 is_stmt 1
	movq	-40(%rbp), %rax	# afp, tmp67
	movq	40(%rax), %rax	# afp_2(D)->ssi, D.7835
	leaq	-16(%rbp), %rcx	#, tmp68
	leaq	-20(%rbp), %rdx	#, tmp69
	movq	-48(%rbp), %rsi	# key, tmp70
	movq	%rax, %rdi	# D.7835,
	call	SSIGetOffsetByName	#
	testl	%eax, %eax	# D.7834
	je	.L151	#,
	.loc 1 886 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.7834
	jmp	.L153	#
.L151:
	.loc 1 887 0 is_stmt 1
	movq	-40(%rbp), %rax	# afp, tmp71
	movq	(%rax), %rax	# afp_2(D)->f, D.7836
	leaq	-16(%rbp), %rdx	#, tmp72
	movq	%rdx, %rsi	# tmp72,
	movq	%rax, %rdi	# D.7836,
	call	SSISetFilePosition	#
	testl	%eax, %eax	# D.7834
	je	.L152	#,
	.loc 1 887 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.7834
	jmp	.L153	#
.L152:
	.loc 1 888 0 is_stmt 1
	movl	$1, %eax	#, D.7834
.L153:
	.loc 1 889 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	MSAFilePositionByKey, .-MSAFilePositionByKey
	.globl	MSAFilePositionByIndex
	.type	MSAFilePositionByIndex, @function
MSAFilePositionByIndex:
.LFB17:
	.loc 1 892 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# afp, afp
	movl	%esi, -44(%rbp)	# idx, idx
	.loc 1 896 0
	movq	-40(%rbp), %rax	# afp, tmp66
	movq	40(%rax), %rax	# afp_2(D)->ssi, D.7838
	testq	%rax, %rax	# D.7838
	jne	.L155	#,
	.loc 1 896 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.7837
	jmp	.L159	#
.L155:
	.loc 1 897 0 is_stmt 1
	movq	-40(%rbp), %rax	# afp, tmp67
	movq	40(%rax), %rax	# afp_2(D)->ssi, D.7838
	leaq	-16(%rbp), %rcx	#, tmp68
	leaq	-20(%rbp), %rdx	#, tmp69
	movl	-44(%rbp), %esi	# idx, tmp70
	movq	%rax, %rdi	# D.7838,
	call	SSIGetOffsetByNumber	#
	testl	%eax, %eax	# D.7837
	je	.L157	#,
	.loc 1 897 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.7837
	jmp	.L159	#
.L157:
	.loc 1 898 0 is_stmt 1
	movq	-40(%rbp), %rax	# afp, tmp71
	movq	(%rax), %rax	# afp_2(D)->f, D.7839
	leaq	-16(%rbp), %rdx	#, tmp72
	movq	%rdx, %rsi	# tmp72,
	movq	%rax, %rdi	# D.7839,
	call	SSISetFilePosition	#
	testl	%eax, %eax	# D.7837
	je	.L158	#,
	.loc 1 898 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.7837
	jmp	.L159	#
.L158:
	.loc 1 899 0 is_stmt 1
	movl	$1, %eax	#, D.7837
.L159:
	.loc 1 900 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	MSAFilePositionByIndex, .-MSAFilePositionByIndex
	.section	.rodata
	.align 8
.LC22:
	.string	"MSAFILE corrupted: bad format index"
	.text
	.globl	MSAFileRead
	.type	MSAFileRead, @function
MSAFileRead:
.LFB18:
	.loc 1 915 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# afp, afp
	.loc 1 916 0
	movq	$0, -8(%rbp)	#, msa
	.loc 1 918 0
	movq	-24(%rbp), %rax	# afp, tmp62
	movl	56(%rax), %eax	# afp_3(D)->format, D.7840
	subl	$101, %eax	#, tmp63
	cmpl	$5, %eax	#, tmp63
	ja	.L161	#,
	movl	%eax, %eax	# tmp63, tmp64
	movq	.L163(,%rax,8), %rax	#, tmp65
	jmp	*%rax	# tmp65
	.section	.rodata
	.align 8
	.align 4
.L163:
	.quad	.L162
	.quad	.L164
	.quad	.L165
	.quad	.L166
	.quad	.L167
	.quad	.L168
	.text
.L162:
	.loc 1 919 0
	movq	-24(%rbp), %rax	# afp, tmp66
	movq	%rax, %rdi	# tmp66,
	call	ReadStockholm	#
	movq	%rax, -8(%rbp)	# tmp67, msa
	jmp	.L169	#
.L165:
	.loc 1 920 0
	movq	-24(%rbp), %rax	# afp, tmp68
	movq	%rax, %rdi	# tmp68,
	call	ReadMSF	#
	movq	%rax, -8(%rbp)	# tmp69, msa
	jmp	.L169	#
.L167:
	.loc 1 921 0
	movq	-24(%rbp), %rax	# afp, tmp70
	movq	%rax, %rdi	# tmp70,
	call	ReadA2M	#
	movq	%rax, -8(%rbp)	# tmp71, msa
	jmp	.L169	#
.L166:
	.loc 1 922 0
	movq	-24(%rbp), %rax	# afp, tmp72
	movq	%rax, %rdi	# tmp72,
	call	ReadClustal	#
	movq	%rax, -8(%rbp)	# tmp73, msa
	jmp	.L169	#
.L164:
	.loc 1 923 0
	movq	-24(%rbp), %rax	# afp, tmp74
	movq	%rax, %rdi	# tmp74,
	call	ReadSELEX	#
	movq	%rax, -8(%rbp)	# tmp75, msa
	jmp	.L169	#
.L168:
	.loc 1 924 0
	movq	-24(%rbp), %rax	# afp, tmp76
	movq	%rax, %rdi	# tmp76,
	call	ReadPhylip	#
	movq	%rax, -8(%rbp)	# tmp77, msa
	jmp	.L169	#
.L161:
	.loc 1 926 0
	movl	$.LC22, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
.L169:
	.loc 1 928 0
	movq	-8(%rbp), %rax	# msa, D.7841
	.loc 1 929 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	MSAFileRead, .-MSAFileRead
	.globl	MSAFileClose
	.type	MSAFileClose, @function
MSAFileClose:
.LFB19:
	.loc 1 942 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# afp, afp
	.loc 1 947 0
	movq	-8(%rbp), %rax	# afp, tmp67
	movl	52(%rax), %eax	# afp_1(D)->do_stdin, D.7843
	testl	%eax, %eax	# D.7843
	jne	.L172	#,
	.loc 1 947 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# afp, tmp68
	movq	(%rax), %rax	# afp_1(D)->f, D.7844
	movq	%rax, %rdi	# D.7844,
	call	fclose	#
.L172:
	.loc 1 948 0 is_stmt 1
	movq	-8(%rbp), %rax	# afp, tmp69
	movq	24(%rax), %rax	# afp_1(D)->buf, D.7845
	testq	%rax, %rax	# D.7845
	je	.L173	#,
	.loc 1 948 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# afp, tmp70
	movq	24(%rax), %rax	# afp_1(D)->buf, D.7845
	movq	%rax, %rdi	# D.7845,
	call	free	#
.L173:
	.loc 1 949 0 is_stmt 1
	movq	-8(%rbp), %rax	# afp, tmp71
	movq	40(%rax), %rax	# afp_1(D)->ssi, D.7846
	testq	%rax, %rax	# D.7846
	je	.L174	#,
	.loc 1 949 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# afp, tmp72
	movq	40(%rax), %rax	# afp_1(D)->ssi, D.7846
	movq	%rax, %rdi	# D.7846,
	call	SSIClose	#
.L174:
	.loc 1 950 0 is_stmt 1
	movq	-8(%rbp), %rax	# afp, tmp73
	movq	8(%rax), %rax	# afp_1(D)->fname, D.7845
	testq	%rax, %rax	# D.7845
	je	.L175	#,
	.loc 1 950 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# afp, tmp74
	movq	8(%rax), %rax	# afp_1(D)->fname, D.7845
	movq	%rax, %rdi	# D.7845,
	call	free	#
.L175:
	.loc 1 951 0 is_stmt 1
	movq	-8(%rbp), %rax	# afp, tmp75
	movq	%rax, %rdi	# tmp75,
	call	free	#
	.loc 1 952 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	MSAFileClose, .-MSAFileClose
	.globl	MSAFileGetLine
	.type	MSAFileGetLine, @function
MSAFileGetLine:
.LFB20:
	.loc 1 956 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# afp, afp
	.loc 1 958 0
	movq	-24(%rbp), %rax	# afp, tmp66
	movq	(%rax), %rax	# afp_2(D)->f, D.7848
	movq	-24(%rbp), %rdx	# afp, tmp67
	leaq	32(%rdx), %rsi	#, D.7849
	movq	-24(%rbp), %rdx	# afp, tmp68
	leaq	24(%rdx), %rcx	#, D.7850
	movq	%rax, %rdx	# D.7848,
	movq	%rcx, %rdi	# D.7850,
	call	sre_fgets	#
	movq	%rax, -8(%rbp)	# tmp69, s
	cmpq	$0, -8(%rbp)	#, s
	jne	.L177	#,
	.loc 1 959 0
	movl	$0, %eax	#, D.7847
	jmp	.L178	#
.L177:
	.loc 1 960 0
	movq	-24(%rbp), %rax	# afp, tmp70
	movl	16(%rax), %eax	# afp_2(D)->linenumber, D.7851
	leal	1(%rax), %edx	#, D.7851
	movq	-24(%rbp), %rax	# afp, tmp71
	movl	%edx, 16(%rax)	# D.7851, afp_2(D)->linenumber
	.loc 1 961 0
	movq	-24(%rbp), %rax	# afp, tmp72
	movq	24(%rax), %rax	# afp_2(D)->buf, D.7847
.L178:
	.loc 1 962 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	MSAFileGetLine, .-MSAFileGetLine
	.section	.rodata
	.align 8
.LC23:
	.string	"can't write. no such alignment format %d\n"
	.text
	.globl	MSAFileWrite
	.type	MSAFileWrite, @function
MSAFileWrite:
.LFB21:
	.loc 1 966 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -8(%rbp)	# fp, fp
	movq	%rsi, -16(%rbp)	# msa, msa
	movl	%edx, -20(%rbp)	# outfmt, outfmt
	movl	%ecx, -24(%rbp)	# do_oneline, do_oneline
	.loc 1 967 0
	movl	-20(%rbp), %eax	# outfmt, tmp60
	subl	$101, %eax	#, tmp59
	cmpl	$5, %eax	#, tmp59
	ja	.L180	#,
	movl	%eax, %eax	# tmp59, tmp61
	movq	.L182(,%rax,8), %rax	#, tmp62
	jmp	*%rax	# tmp62
	.section	.rodata
	.align 8
	.align 4
.L182:
	.quad	.L181
	.quad	.L183
	.quad	.L184
	.quad	.L185
	.quad	.L186
	.quad	.L187
	.text
.L186:
	.loc 1 968 0
	movq	-16(%rbp), %rdx	# msa, tmp63
	movq	-8(%rbp), %rax	# fp, tmp64
	movq	%rdx, %rsi	# tmp63,
	movq	%rax, %rdi	# tmp64,
	call	WriteA2M	#
	jmp	.L179	#
.L185:
	.loc 1 969 0
	movq	-16(%rbp), %rdx	# msa, tmp65
	movq	-8(%rbp), %rax	# fp, tmp66
	movq	%rdx, %rsi	# tmp65,
	movq	%rax, %rdi	# tmp66,
	call	WriteClustal	#
	jmp	.L179	#
.L184:
	.loc 1 970 0
	movq	-16(%rbp), %rdx	# msa, tmp67
	movq	-8(%rbp), %rax	# fp, tmp68
	movq	%rdx, %rsi	# tmp67,
	movq	%rax, %rdi	# tmp68,
	call	WriteMSF	#
	jmp	.L179	#
.L187:
	.loc 1 971 0
	movq	-16(%rbp), %rdx	# msa, tmp69
	movq	-8(%rbp), %rax	# fp, tmp70
	movq	%rdx, %rsi	# tmp69,
	movq	%rax, %rdi	# tmp70,
	call	WritePhylip	#
	jmp	.L179	#
.L183:
	.loc 1 972 0
	movq	-16(%rbp), %rdx	# msa, tmp71
	movq	-8(%rbp), %rax	# fp, tmp72
	movq	%rdx, %rsi	# tmp71,
	movq	%rax, %rdi	# tmp72,
	call	WriteSELEX	#
	jmp	.L179	#
.L181:
	.loc 1 974 0
	cmpl	$0, -24(%rbp)	#, do_oneline
	je	.L189	#,
	.loc 1 974 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rdx	# msa, tmp73
	movq	-8(%rbp), %rax	# fp, tmp74
	movq	%rdx, %rsi	# tmp73,
	movq	%rax, %rdi	# tmp74,
	call	WriteStockholmOneBlock	#
	.loc 1 976 0 is_stmt 1 discriminator 1
	jmp	.L179	#
.L189:
	.loc 1 975 0
	movq	-16(%rbp), %rdx	# msa, tmp75
	movq	-8(%rbp), %rax	# fp, tmp76
	movq	%rdx, %rsi	# tmp75,
	movq	%rax, %rdi	# tmp76,
	call	WriteStockholm	#
	.loc 1 976 0
	jmp	.L179	#
.L180:
	.loc 1 978 0
	movl	-20(%rbp), %eax	# outfmt, tmp77
	movl	%eax, %esi	# tmp77,
	movl	$.LC23, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
.L179:
	.loc 1 980 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	MSAFileWrite, .-MSAFileWrite
	.globl	MSAGetSeqidx
	.type	MSAGetSeqidx, @function
MSAGetSeqidx:
.LFB22:
	.loc 1 1002 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$56, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)	# msa, msa
	movq	%rsi, -48(%rbp)	# name, name
	movl	%edx, -52(%rbp)	# guess, guess
	.loc 1 1005 0
	cmpl	$0, -52(%rbp)	#, guess
	js	.L192	#,
	.loc 1 1005 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# msa, tmp78
	movl	28(%rax), %eax	# msa_3(D)->nseq, D.7853
	cmpl	-52(%rbp), %eax	# guess, D.7853
	jle	.L192	#,
	movq	-40(%rbp), %rax	# msa, tmp79
	movq	8(%rax), %rax	# msa_3(D)->sqname, D.7854
	movl	-52(%rbp), %edx	# guess, tmp80
	movslq	%edx, %rdx	# tmp80, D.7855
	salq	$3, %rdx	#, D.7855
	addq	%rdx, %rax	# D.7855, D.7854
	movq	(%rax), %rdx	# *_8, D.7856
	movq	-48(%rbp), %rax	# name, tmp81
	movq	%rdx, %rsi	# D.7856,
	movq	%rax, %rdi	# tmp81,
	call	strcmp	#
	testl	%eax, %eax	# D.7853
	jne	.L192	#,
	.loc 1 1006 0 is_stmt 1
	movl	-52(%rbp), %eax	# guess, D.7853
	jmp	.L193	#
.L192:
	.loc 1 1008 0
	movq	-40(%rbp), %rax	# msa, tmp82
	movq	312(%rax), %rax	# msa_3(D)->index, D.7857
	movq	-48(%rbp), %rdx	# name, tmp83
	movq	%rdx, %rsi	# tmp83,
	movq	%rax, %rdi	# D.7857,
	call	GKIKeyIndex	#
	movl	%eax, -20(%rbp)	# tmp84, seqidx
	cmpl	$0, -20(%rbp)	#, seqidx
	js	.L194	#,
	.loc 1 1009 0
	movl	-20(%rbp), %eax	# seqidx, D.7853
	jmp	.L193	#
.L194:
	.loc 1 1011 0
	movq	-40(%rbp), %rax	# msa, tmp85
	movq	312(%rax), %rax	# msa_3(D)->index, D.7857
	movq	-48(%rbp), %rdx	# name, tmp86
	movq	%rdx, %rsi	# tmp86,
	movq	%rax, %rdi	# D.7857,
	call	GKIStoreKey	#
	movl	%eax, -20(%rbp)	# tmp87, seqidx
	.loc 1 1012 0
	movq	-40(%rbp), %rax	# msa, tmp88
	movl	320(%rax), %eax	# msa_3(D)->nseqalloc, D.7853
	cmpl	-20(%rbp), %eax	# seqidx, D.7853
	jg	.L195	#,
	.loc 1 1012 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# msa, tmp89
	movq	%rax, %rdi	# tmp89,
	call	MSAExpand	#
.L195:
	.loc 1 1014 0 is_stmt 1
	movq	-40(%rbp), %rax	# msa, tmp90
	movq	8(%rax), %rax	# msa_3(D)->sqname, D.7854
	movl	-20(%rbp), %edx	# seqidx, tmp91
	movslq	%edx, %rdx	# tmp91, D.7855
	salq	$3, %rdx	#, D.7855
	leaq	(%rax,%rdx), %rbx	#, D.7854
	movq	-48(%rbp), %rax	# name, tmp92
	movl	$-1, %esi	#,
	movq	%rax, %rdi	# tmp92,
	call	sre_strdup	#
	movq	%rax, (%rbx)	# D.7856, *_22
	.loc 1 1015 0
	movq	-40(%rbp), %rax	# msa, tmp93
	movl	28(%rax), %eax	# msa_3(D)->nseq, D.7853
	leal	1(%rax), %edx	#, D.7853
	movq	-40(%rbp), %rax	# msa, tmp94
	movl	%edx, 28(%rax)	# D.7853, msa_3(D)->nseq
	.loc 1 1016 0
	movl	-20(%rbp), %eax	# seqidx, D.7853
.L193:
	.loc 1 1017 0
	addq	$56, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	MSAGetSeqidx, .-MSAGetSeqidx
	.globl	MSAFromAINFO
	.type	MSAFromAINFO, @function
MSAFromAINFO:
.LFB23:
	.loc 1 1034 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$40, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)	# aseq, aseq
	movq	%rsi, -48(%rbp)	# ainfo, ainfo
	.loc 1 1038 0
	movq	-48(%rbp), %rax	# ainfo, tmp239
	movl	4(%rax), %edx	# ainfo_4(D)->alen, D.7858
	movq	-48(%rbp), %rax	# ainfo, tmp240
	movl	8(%rax), %eax	# ainfo_4(D)->nseq, D.7858
	movl	%edx, %esi	# D.7858,
	movl	%eax, %edi	# D.7858,
	call	MSAAlloc	#
	movq	%rax, -24(%rbp)	# tmp241, msa
	.loc 1 1039 0
	movl	$0, -32(%rbp)	#, i
	jmp	.L197	#
.L208:
	.loc 1 1041 0
	movl	-32(%rbp), %eax	# i, tmp242
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7859
	movq	-40(%rbp), %rax	# aseq, tmp243
	addq	%rdx, %rax	# D.7859, D.7860
	movq	(%rax), %rdx	# *_13, D.7861
	movq	-24(%rbp), %rax	# msa, tmp244
	movq	(%rax), %rax	# msa_7->aseq, D.7860
	movl	-32(%rbp), %ecx	# i, tmp245
	movslq	%ecx, %rcx	# tmp245, D.7859
	salq	$3, %rcx	#, D.7859
	addq	%rcx, %rax	# D.7859, D.7860
	movq	(%rax), %rax	# *_18, D.7861
	movq	%rdx, %rsi	# D.7861,
	movq	%rax, %rdi	# D.7861,
	call	strcpy	#
	.loc 1 1042 0
	movq	-24(%rbp), %rax	# msa, tmp246
	movq	16(%rax), %rax	# msa_7->wgt, D.7862
	movl	-32(%rbp), %edx	# i, tmp247
	movslq	%edx, %rdx	# tmp247, D.7859
	salq	$2, %rdx	#, D.7859
	addq	%rax, %rdx	# D.7862, D.7862
	movq	-48(%rbp), %rax	# ainfo, tmp248
	movq	16(%rax), %rax	# ainfo_4(D)->wgt, D.7862
	movl	-32(%rbp), %ecx	# i, tmp249
	movslq	%ecx, %rcx	# tmp249, D.7859
	salq	$2, %rcx	#, D.7859
	addq	%rcx, %rax	# D.7859, D.7862
	movl	(%rax), %eax	# *_27, D.7863
	movl	%eax, (%rdx)	# D.7863, *_23
	.loc 1 1043 0
	movq	-24(%rbp), %rax	# msa, tmp250
	movq	8(%rax), %rax	# msa_7->sqname, D.7860
	movl	-32(%rbp), %edx	# i, tmp251
	movslq	%edx, %rdx	# tmp251, D.7859
	salq	$3, %rdx	#, D.7859
	leaq	(%rax,%rdx), %rbx	#, D.7860
	movq	-48(%rbp), %rax	# ainfo, tmp252
	movq	40(%rax), %rdx	# ainfo_4(D)->sqinfo, D.7864
	movl	-32(%rbp), %eax	# i, tmp253
	cltq
	imulq	$360, %rax, %rax	#, D.7859, D.7859
	addq	%rdx, %rax	# D.7864, D.7864
	addq	$4, %rax	#, D.7865
	movl	$-1, %esi	#,
	movq	%rax, %rdi	# D.7865,
	call	sre_strdup	#
	movq	%rax, (%rbx)	# D.7861, *_32
	.loc 1 1044 0
	movq	-24(%rbp), %rax	# msa, tmp254
	movq	328(%rax), %rax	# msa_7->sqlen, D.7866
	movl	-32(%rbp), %edx	# i, tmp255
	movslq	%edx, %rdx	# tmp255, D.7859
	salq	$2, %rdx	#, D.7859
	addq	%rax, %rdx	# D.7866, D.7866
	movq	-24(%rbp), %rax	# msa, tmp256
	movl	24(%rax), %eax	# msa_7->alen, D.7858
	movl	%eax, (%rdx)	# D.7858, *_42
	.loc 1 1045 0
	movq	-24(%rbp), %rax	# msa, tmp257
	movq	8(%rax), %rax	# msa_7->sqname, D.7860
	movl	-32(%rbp), %edx	# i, tmp258
	movslq	%edx, %rdx	# tmp258, D.7859
	salq	$3, %rdx	#, D.7859
	addq	%rdx, %rax	# D.7859, D.7860
	movq	(%rax), %rdx	# *_47, D.7861
	movq	-24(%rbp), %rax	# msa, tmp259
	movq	312(%rax), %rax	# msa_7->index, D.7867
	movq	%rdx, %rsi	# D.7861,
	movq	%rax, %rdi	# D.7867,
	call	GKIStoreKey	#
	.loc 1 1047 0
	movq	-48(%rbp), %rax	# ainfo, tmp260
	movq	40(%rax), %rdx	# ainfo_4(D)->sqinfo, D.7864
	movl	-32(%rbp), %eax	# i, tmp261
	cltq
	imulq	$360, %rax, %rax	#, D.7859, D.7859
	addq	%rdx, %rax	# D.7864, D.7864
	movl	(%rax), %eax	# _53->flags, D.7858
	andl	$4, %eax	#, D.7858
	testl	%eax, %eax	# D.7858
	je	.L198	#,
	.loc 1 1048 0
	movq	-48(%rbp), %rax	# ainfo, tmp262
	movq	40(%rax), %rdx	# ainfo_4(D)->sqinfo, D.7864
	movl	-32(%rbp), %eax	# i, tmp263
	cltq
	imulq	$360, %rax, %rax	#, D.7859, D.7859
	addq	%rdx, %rax	# D.7864, D.7864
	leaq	132(%rax), %rdx	#, D.7865
	movl	-32(%rbp), %ecx	# i, tmp264
	movq	-24(%rbp), %rax	# msa, tmp265
	movl	%ecx, %esi	# tmp264,
	movq	%rax, %rdi	# tmp265,
	call	MSASetSeqAccession	#
.L198:
	.loc 1 1050 0
	movq	-48(%rbp), %rax	# ainfo, tmp266
	movq	40(%rax), %rdx	# ainfo_4(D)->sqinfo, D.7864
	movl	-32(%rbp), %eax	# i, tmp267
	cltq
	imulq	$360, %rax, %rax	#, D.7859, D.7859
	addq	%rdx, %rax	# D.7864, D.7864
	movl	(%rax), %eax	# _64->flags, D.7858
	andl	$8, %eax	#, D.7858
	testl	%eax, %eax	# D.7858
	je	.L199	#,
	.loc 1 1051 0
	movq	-48(%rbp), %rax	# ainfo, tmp268
	movq	40(%rax), %rdx	# ainfo_4(D)->sqinfo, D.7864
	movl	-32(%rbp), %eax	# i, tmp269
	cltq
	imulq	$360, %rax, %rax	#, D.7859, D.7859
	addq	%rdx, %rax	# D.7864, D.7864
	leaq	196(%rax), %rdx	#, D.7868
	movl	-32(%rbp), %ecx	# i, tmp270
	movq	-24(%rbp), %rax	# msa, tmp271
	movl	%ecx, %esi	# tmp270,
	movq	%rax, %rdi	# tmp271,
	call	MSASetSeqDescription	#
.L199:
	.loc 1 1053 0
	movq	-48(%rbp), %rax	# ainfo, tmp272
	movq	40(%rax), %rdx	# ainfo_4(D)->sqinfo, D.7864
	movl	-32(%rbp), %eax	# i, tmp273
	cltq
	imulq	$360, %rax, %rax	#, D.7859, D.7859
	addq	%rdx, %rax	# D.7864, D.7864
	movl	(%rax), %eax	# _75->flags, D.7858
	andl	$512, %eax	#, D.7858
	testl	%eax, %eax	# D.7858
	je	.L200	#,
	.loc 1 1054 0
	movq	-24(%rbp), %rax	# msa, tmp274
	movq	112(%rax), %rax	# msa_7->ss, D.7860
	testq	%rax, %rax	# D.7860
	jne	.L201	#,
	.loc 1 1055 0
	movq	-24(%rbp), %rax	# msa, tmp275
	movl	320(%rax), %eax	# msa_7->nseqalloc, D.7858
	cltq
	salq	$3, %rax	#, D.7859
	movq	%rax, %rdx	# D.7859,
	movl	$1055, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_malloc	#
	movq	-24(%rbp), %rdx	# msa, tmp276
	movq	%rax, 112(%rdx)	# D.7869, msa_7->ss
	.loc 1 1056 0
	movq	-24(%rbp), %rax	# msa, tmp277
	movl	320(%rax), %eax	# msa_7->nseqalloc, D.7858
	cltq
	salq	$2, %rax	#, D.7859
	movq	%rax, %rdx	# D.7859,
	movl	$1056, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_malloc	#
	movq	-24(%rbp), %rdx	# msa, tmp278
	movq	%rax, 336(%rdx)	# D.7869, msa_7->sslen
	.loc 1 1057 0
	movl	$0, -28(%rbp)	#, j
	jmp	.L202	#
.L203:
	.loc 1 1058 0 discriminator 2
	movq	-24(%rbp), %rax	# msa, tmp279
	movq	112(%rax), %rax	# msa_7->ss, D.7860
	movl	-28(%rbp), %edx	# j, tmp280
	movslq	%edx, %rdx	# tmp280, D.7859
	salq	$3, %rdx	#, D.7859
	addq	%rdx, %rax	# D.7859, D.7860
	movq	$0, (%rax)	#, *_92
	.loc 1 1059 0 discriminator 2
	movq	-24(%rbp), %rax	# msa, tmp281
	movq	336(%rax), %rax	# msa_7->sslen, D.7866
	movl	-28(%rbp), %edx	# j, tmp282
	movslq	%edx, %rdx	# tmp282, D.7859
	salq	$2, %rdx	#, D.7859
	addq	%rdx, %rax	# D.7859, D.7866
	movl	$0, (%rax)	#, *_96
	.loc 1 1057 0 discriminator 2
	addl	$1, -28(%rbp)	#, j
.L202:
	.loc 1 1057 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# msa, tmp283
	movl	320(%rax), %eax	# msa_7->nseqalloc, D.7858
	cmpl	-28(%rbp), %eax	# j, D.7858
	jg	.L203	#,
.L201:
	.loc 1 1062 0 is_stmt 1
	movq	-24(%rbp), %rax	# msa, tmp284
	movq	112(%rax), %rax	# msa_7->ss, D.7860
	movl	-32(%rbp), %edx	# i, tmp285
	movslq	%edx, %rdx	# tmp285, D.7859
	salq	$3, %rdx	#, D.7859
	leaq	(%rax,%rdx), %rcx	#, D.7860
	movq	-48(%rbp), %rax	# ainfo, tmp286
	movq	40(%rax), %rdx	# ainfo_4(D)->sqinfo, D.7864
	movl	-32(%rbp), %eax	# i, tmp287
	cltq
	imulq	$360, %rax, %rax	#, D.7859, D.7859
	addq	%rdx, %rax	# D.7864, D.7864
	movq	344(%rax), %rdx	# _105->ss, D.7861
	movq	-24(%rbp), %rax	# msa, tmp288
	movl	24(%rax), %esi	# msa_7->alen, D.7858
	movq	-24(%rbp), %rax	# msa, tmp289
	movq	(%rax), %rax	# msa_7->aseq, D.7860
	movl	-32(%rbp), %edi	# i, tmp290
	movslq	%edi, %rdi	# tmp290, D.7859
	salq	$3, %rdi	#, D.7859
	addq	%rdi, %rax	# D.7859, D.7860
	movq	(%rax), %rax	# *_111, D.7861
	movq	%rax, %rdi	# D.7861,
	call	MakeAlignedString	#
	.loc 1 1063 0
	movq	-24(%rbp), %rax	# msa, tmp291
	movq	336(%rax), %rax	# msa_7->sslen, D.7866
	movl	-32(%rbp), %edx	# i, tmp292
	movslq	%edx, %rdx	# tmp292, D.7859
	salq	$2, %rdx	#, D.7859
	addq	%rax, %rdx	# D.7866, D.7866
	movq	-24(%rbp), %rax	# msa, tmp293
	movl	24(%rax), %eax	# msa_7->alen, D.7858
	movl	%eax, (%rdx)	# D.7858, *_116
.L200:
	.loc 1 1066 0
	movq	-48(%rbp), %rax	# ainfo, tmp294
	movq	40(%rax), %rdx	# ainfo_4(D)->sqinfo, D.7864
	movl	-32(%rbp), %eax	# i, tmp295
	cltq
	imulq	$360, %rax, %rax	#, D.7859, D.7859
	addq	%rdx, %rax	# D.7864, D.7864
	movl	(%rax), %eax	# _121->flags, D.7858
	andl	$1024, %eax	#, D.7858
	testl	%eax, %eax	# D.7858
	je	.L204	#,
	.loc 1 1067 0
	movq	-24(%rbp), %rax	# msa, tmp296
	movq	120(%rax), %rax	# msa_7->sa, D.7860
	testq	%rax, %rax	# D.7860
	jne	.L205	#,
	.loc 1 1068 0
	movq	-24(%rbp), %rax	# msa, tmp297
	movl	320(%rax), %eax	# msa_7->nseqalloc, D.7858
	cltq
	salq	$3, %rax	#, D.7859
	movq	%rax, %rdx	# D.7859,
	movl	$1068, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_malloc	#
	movq	-24(%rbp), %rdx	# msa, tmp298
	movq	%rax, 120(%rdx)	# D.7869, msa_7->sa
	.loc 1 1069 0
	movq	-24(%rbp), %rax	# msa, tmp299
	movl	320(%rax), %eax	# msa_7->nseqalloc, D.7858
	cltq
	salq	$2, %rax	#, D.7859
	movq	%rax, %rdx	# D.7859,
	movl	$1069, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_malloc	#
	movq	-24(%rbp), %rdx	# msa, tmp300
	movq	%rax, 344(%rdx)	# D.7869, msa_7->salen
	.loc 1 1070 0
	movl	$0, -28(%rbp)	#, j
	jmp	.L206	#
.L207:
	.loc 1 1071 0 discriminator 2
	movq	-24(%rbp), %rax	# msa, tmp301
	movq	120(%rax), %rax	# msa_7->sa, D.7860
	movl	-28(%rbp), %edx	# j, tmp302
	movslq	%edx, %rdx	# tmp302, D.7859
	salq	$3, %rdx	#, D.7859
	addq	%rdx, %rax	# D.7859, D.7860
	movq	$0, (%rax)	#, *_138
	.loc 1 1072 0 discriminator 2
	movq	-24(%rbp), %rax	# msa, tmp303
	movq	344(%rax), %rax	# msa_7->salen, D.7866
	movl	-28(%rbp), %edx	# j, tmp304
	movslq	%edx, %rdx	# tmp304, D.7859
	salq	$2, %rdx	#, D.7859
	addq	%rdx, %rax	# D.7859, D.7866
	movl	$0, (%rax)	#, *_142
	.loc 1 1070 0 discriminator 2
	addl	$1, -28(%rbp)	#, j
.L206:
	.loc 1 1070 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# msa, tmp305
	movl	320(%rax), %eax	# msa_7->nseqalloc, D.7858
	cmpl	-28(%rbp), %eax	# j, D.7858
	jg	.L207	#,
.L205:
	.loc 1 1075 0 is_stmt 1
	movq	-24(%rbp), %rax	# msa, tmp306
	movq	120(%rax), %rax	# msa_7->sa, D.7860
	movl	-32(%rbp), %edx	# i, tmp307
	movslq	%edx, %rdx	# tmp307, D.7859
	salq	$3, %rdx	#, D.7859
	leaq	(%rax,%rdx), %rcx	#, D.7860
	movq	-48(%rbp), %rax	# ainfo, tmp308
	movq	40(%rax), %rdx	# ainfo_4(D)->sqinfo, D.7864
	movl	-32(%rbp), %eax	# i, tmp309
	cltq
	imulq	$360, %rax, %rax	#, D.7859, D.7859
	addq	%rdx, %rax	# D.7864, D.7864
	movq	352(%rax), %rdx	# _151->sa, D.7861
	movq	-24(%rbp), %rax	# msa, tmp310
	movl	24(%rax), %esi	# msa_7->alen, D.7858
	movq	-24(%rbp), %rax	# msa, tmp311
	movq	(%rax), %rax	# msa_7->aseq, D.7860
	movl	-32(%rbp), %edi	# i, tmp312
	movslq	%edi, %rdi	# tmp312, D.7859
	salq	$3, %rdi	#, D.7859
	addq	%rdi, %rax	# D.7859, D.7860
	movq	(%rax), %rax	# *_157, D.7861
	movq	%rax, %rdi	# D.7861,
	call	MakeAlignedString	#
	.loc 1 1076 0
	movq	-24(%rbp), %rax	# msa, tmp313
	movq	344(%rax), %rax	# msa_7->salen, D.7866
	movl	-32(%rbp), %edx	# i, tmp314
	movslq	%edx, %rdx	# tmp314, D.7859
	salq	$2, %rdx	#, D.7859
	addq	%rax, %rdx	# D.7866, D.7866
	movq	-24(%rbp), %rax	# msa, tmp315
	movl	24(%rax), %eax	# msa_7->alen, D.7858
	movl	%eax, (%rdx)	# D.7858, *_162
.L204:
	.loc 1 1039 0
	addl	$1, -32(%rbp)	#, i
.L197:
	.loc 1 1039 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# ainfo, tmp316
	movl	8(%rax), %eax	# ainfo_4(D)->nseq, D.7858
	cmpl	-32(%rbp), %eax	# i, D.7858
	jg	.L208	#,
	.loc 1 1080 0 is_stmt 1
	movq	-48(%rbp), %rax	# ainfo, tmp317
	movq	48(%rax), %rax	# ainfo_4(D)->name, D.7861
	movl	$-1, %esi	#,
	movq	%rax, %rdi	# D.7861,
	call	sre_strdup	#
	movq	-24(%rbp), %rdx	# msa, tmp318
	movq	%rax, 40(%rdx)	# D.7861, msa_7->name
	.loc 1 1081 0
	movq	-48(%rbp), %rax	# ainfo, tmp319
	movq	56(%rax), %rax	# ainfo_4(D)->desc, D.7861
	movl	$-1, %esi	#,
	movq	%rax, %rdi	# D.7861,
	call	sre_strdup	#
	movq	-24(%rbp), %rdx	# msa, tmp320
	movq	%rax, 48(%rdx)	# D.7861, msa_7->desc
	.loc 1 1082 0
	movq	-48(%rbp), %rax	# ainfo, tmp321
	movq	64(%rax), %rax	# ainfo_4(D)->acc, D.7861
	movl	$-1, %esi	#,
	movq	%rax, %rdi	# D.7861,
	call	sre_strdup	#
	movq	-24(%rbp), %rdx	# msa, tmp322
	movq	%rax, 56(%rdx)	# D.7861, msa_7->acc
	.loc 1 1083 0
	movq	-48(%rbp), %rax	# ainfo, tmp323
	movq	72(%rax), %rax	# ainfo_4(D)->au, D.7861
	movl	$-1, %esi	#,
	movq	%rax, %rdi	# D.7861,
	call	sre_strdup	#
	movq	-24(%rbp), %rdx	# msa, tmp324
	movq	%rax, 64(%rdx)	# D.7861, msa_7->au
	.loc 1 1084 0
	movq	-48(%rbp), %rax	# ainfo, tmp325
	movq	24(%rax), %rax	# ainfo_4(D)->cs, D.7861
	movl	$-1, %esi	#,
	movq	%rax, %rdi	# D.7861,
	call	sre_strdup	#
	movq	-24(%rbp), %rdx	# msa, tmp326
	movq	%rax, 72(%rdx)	# D.7861, msa_7->ss_cons
	.loc 1 1085 0
	movq	-48(%rbp), %rax	# ainfo, tmp327
	movq	32(%rax), %rax	# ainfo_4(D)->rf, D.7861
	movl	$-1, %esi	#,
	movq	%rax, %rdi	# D.7861,
	call	sre_strdup	#
	movq	-24(%rbp), %rdx	# msa, tmp328
	movq	%rax, 88(%rdx)	# D.7861, msa_7->rf
	.loc 1 1086 0
	movq	-48(%rbp), %rax	# ainfo, tmp329
	movl	(%rax), %eax	# ainfo_4(D)->flags, D.7858
	andl	$1, %eax	#, D.7858
	testl	%eax, %eax	# D.7858
	je	.L209	#,
	.loc 1 1087 0
	movq	-48(%rbp), %rax	# ainfo, tmp330
	movl	80(%rax), %eax	# ainfo_4(D)->tc1, D.7863
	movq	-24(%rbp), %rdx	# msa, tmp331
	movl	%eax, 128(%rdx)	# D.7863, msa_7->cutoff
	movq	-24(%rbp), %rax	# msa, tmp332
	movl	$1, 152(%rax)	#, msa_7->cutoff_is_set
	.loc 1 1088 0
	movq	-48(%rbp), %rax	# ainfo, tmp333
	movl	84(%rax), %eax	# ainfo_4(D)->tc2, D.7863
	movq	-24(%rbp), %rdx	# msa, tmp334
	movl	%eax, 132(%rdx)	# D.7863, msa_7->cutoff
	movq	-24(%rbp), %rax	# msa, tmp335
	movl	$1, 156(%rax)	#, msa_7->cutoff_is_set
.L209:
	.loc 1 1090 0
	movq	-48(%rbp), %rax	# ainfo, tmp336
	movl	(%rax), %eax	# ainfo_4(D)->flags, D.7858
	andl	$2, %eax	#, D.7858
	testl	%eax, %eax	# D.7858
	je	.L210	#,
	.loc 1 1091 0
	movq	-48(%rbp), %rax	# ainfo, tmp337
	movl	88(%rax), %eax	# ainfo_4(D)->nc1, D.7863
	movq	-24(%rbp), %rdx	# msa, tmp338
	movl	%eax, 144(%rdx)	# D.7863, msa_7->cutoff
	movq	-24(%rbp), %rax	# msa, tmp339
	movl	$1, 168(%rax)	#, msa_7->cutoff_is_set
	.loc 1 1092 0
	movq	-48(%rbp), %rax	# ainfo, tmp340
	movl	92(%rax), %eax	# ainfo_4(D)->nc2, D.7863
	movq	-24(%rbp), %rdx	# msa, tmp341
	movl	%eax, 148(%rdx)	# D.7863, msa_7->cutoff
	movq	-24(%rbp), %rax	# msa, tmp342
	movl	$1, 172(%rax)	#, msa_7->cutoff_is_set
.L210:
	.loc 1 1094 0
	movq	-48(%rbp), %rax	# ainfo, tmp343
	movl	(%rax), %eax	# ainfo_4(D)->flags, D.7858
	andl	$4, %eax	#, D.7858
	testl	%eax, %eax	# D.7858
	je	.L211	#,
	.loc 1 1095 0
	movq	-48(%rbp), %rax	# ainfo, tmp344
	movl	96(%rax), %eax	# ainfo_4(D)->ga1, D.7863
	movq	-24(%rbp), %rdx	# msa, tmp345
	movl	%eax, 136(%rdx)	# D.7863, msa_7->cutoff
	movq	-24(%rbp), %rax	# msa, tmp346
	movl	$1, 160(%rax)	#, msa_7->cutoff_is_set
	.loc 1 1096 0
	movq	-48(%rbp), %rax	# ainfo, tmp347
	movl	100(%rax), %eax	# ainfo_4(D)->ga2, D.7863
	movq	-24(%rbp), %rdx	# msa, tmp348
	movl	%eax, 140(%rdx)	# D.7863, msa_7->cutoff
	movq	-24(%rbp), %rax	# msa, tmp349
	movl	$1, 164(%rax)	#, msa_7->cutoff_is_set
.L211:
	.loc 1 1098 0
	movq	-48(%rbp), %rax	# ainfo, tmp350
	movl	8(%rax), %edx	# ainfo_4(D)->nseq, D.7858
	movq	-24(%rbp), %rax	# msa, tmp351
	movl	%edx, 28(%rax)	# D.7858, msa_7->nseq
	.loc 1 1099 0
	movq	-48(%rbp), %rax	# ainfo, tmp352
	movl	4(%rax), %edx	# ainfo_4(D)->alen, D.7858
	movq	-24(%rbp), %rax	# msa, tmp353
	movl	%edx, 24(%rax)	# D.7858, msa_7->alen
	.loc 1 1100 0
	movq	-24(%rbp), %rax	# msa, D.7870
	.loc 1 1101 0
	addq	$40, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE23:
	.size	MSAFromAINFO, .-MSAFromAINFO
	.section	.rodata
	.align 8
.LC24:
	.string	"File %s does not appear to be an alignment file;\nrather, it appears to be an unaligned file in %s format.\nI'm expecting an alignment file in this context.\n"
	.text
	.globl	MSAFileFormat
	.type	MSAFileFormat, @function
MSAFileFormat:
.LFB24:
	.loc 1 1123 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# afp, afp
	.loc 1 1126 0
	movq	-24(%rbp), %rax	# afp, tmp64
	movq	(%rax), %rax	# afp_2(D)->f, D.7871
	movq	%rax, %rdi	# D.7871,
	call	SeqfileFormat	#
	movl	%eax, -4(%rbp)	# tmp65, fmt
	.loc 1 1128 0
	cmpl	$7, -4(%rbp)	#, fmt
	jne	.L214	#,
	.loc 1 1128 0 is_stmt 0 discriminator 1
	movl	$105, -4(%rbp)	#, fmt
.L214:
	.loc 1 1130 0 is_stmt 1
	cmpl	$0, -4(%rbp)	#, fmt
	je	.L215	#,
	.loc 1 1130 0 is_stmt 0 discriminator 1
	cmpl	$100, -4(%rbp)	#, fmt
	jg	.L215	#,
	.loc 1 1131 0 is_stmt 1
	movl	-4(%rbp), %eax	# fmt, tmp66
	movl	%eax, %edi	# tmp66,
	call	SeqfileFormat2String	#
	movq	%rax, %rdx	#, D.7872
	movq	-24(%rbp), %rax	# afp, tmp67
	movq	8(%rax), %rax	# afp_2(D)->fname, D.7872
	movq	%rax, %rsi	# D.7872,
	movl	$.LC24, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
.L215:
	.loc 1 1136 0
	movl	-4(%rbp), %eax	# fmt, D.7873
	.loc 1 1137 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE24:
	.size	MSAFileFormat, .-MSAFileFormat
	.globl	MSAMingap
	.type	MSAMingap, @function
MSAMingap:
.LFB25:
	.loc 1 1152 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# msa, msa
	.loc 1 1157 0
	movq	-24(%rbp), %rax	# msa, tmp111
	movl	24(%rax), %eax	# msa_3(D)->alen, D.7875
	cltq
	salq	$2, %rax	#, D.7876
	movq	%rax, %rdx	# D.7876,
	movl	$1157, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_malloc	#
	movq	%rax, -8(%rbp)	# tmp112, useme
	.loc 1 1158 0
	movl	$0, -16(%rbp)	#, apos
	jmp	.L218	#
.L225:
	.loc 1 1160 0
	movl	$0, -12(%rbp)	#, idx
	jmp	.L219	#
.L222:
	.loc 1 1161 0
	movq	-24(%rbp), %rax	# msa, tmp113
	movq	(%rax), %rax	# msa_3(D)->aseq, D.7877
	movl	-12(%rbp), %edx	# idx, tmp114
	movslq	%edx, %rdx	# tmp114, D.7876
	salq	$3, %rdx	#, D.7876
	addq	%rdx, %rax	# D.7876, D.7877
	movq	(%rax), %rdx	# *_15, D.7878
	movl	-16(%rbp), %eax	# apos, tmp115
	cltq
	addq	%rdx, %rax	# D.7878, D.7878
	movzbl	(%rax), %eax	# *_18, D.7880
	cmpb	$32, %al	#, D.7880
	je	.L220	#,
	.loc 1 1161 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# msa, tmp116
	movq	(%rax), %rax	# msa_3(D)->aseq, D.7877
	movl	-12(%rbp), %edx	# idx, tmp117
	movslq	%edx, %rdx	# tmp117, D.7876
	salq	$3, %rdx	#, D.7876
	addq	%rdx, %rax	# D.7876, D.7877
	movq	(%rax), %rdx	# *_23, D.7878
	movl	-16(%rbp), %eax	# apos, tmp118
	cltq
	addq	%rdx, %rax	# D.7878, D.7878
	movzbl	(%rax), %eax	# *_26, D.7880
	cmpb	$46, %al	#, D.7880
	je	.L220	#,
	movq	-24(%rbp), %rax	# msa, tmp119
	movq	(%rax), %rax	# msa_3(D)->aseq, D.7877
	movl	-12(%rbp), %edx	# idx, tmp120
	movslq	%edx, %rdx	# tmp120, D.7876
	salq	$3, %rdx	#, D.7876
	addq	%rdx, %rax	# D.7876, D.7877
	movq	(%rax), %rdx	# *_31, D.7878
	movl	-16(%rbp), %eax	# apos, tmp121
	cltq
	addq	%rdx, %rax	# D.7878, D.7878
	movzbl	(%rax), %eax	# *_34, D.7880
	cmpb	$95, %al	#, D.7880
	je	.L220	#,
	movq	-24(%rbp), %rax	# msa, tmp122
	movq	(%rax), %rax	# msa_3(D)->aseq, D.7877
	movl	-12(%rbp), %edx	# idx, tmp123
	movslq	%edx, %rdx	# tmp123, D.7876
	salq	$3, %rdx	#, D.7876
	addq	%rdx, %rax	# D.7876, D.7877
	movq	(%rax), %rdx	# *_39, D.7878
	movl	-16(%rbp), %eax	# apos, tmp124
	cltq
	addq	%rdx, %rax	# D.7878, D.7878
	movzbl	(%rax), %eax	# *_42, D.7880
	cmpb	$45, %al	#, D.7880
	je	.L220	#,
	movq	-24(%rbp), %rax	# msa, tmp125
	movq	(%rax), %rax	# msa_3(D)->aseq, D.7877
	movl	-12(%rbp), %edx	# idx, tmp126
	movslq	%edx, %rdx	# tmp126, D.7876
	salq	$3, %rdx	#, D.7876
	addq	%rdx, %rax	# D.7876, D.7877
	movq	(%rax), %rdx	# *_47, D.7878
	movl	-16(%rbp), %eax	# apos, tmp127
	cltq
	addq	%rdx, %rax	# D.7878, D.7878
	movzbl	(%rax), %eax	# *_50, D.7880
	cmpb	$126, %al	#, D.7880
	je	.L220	#,
	.loc 1 1162 0 is_stmt 1
	jmp	.L221	#
.L220:
	.loc 1 1160 0
	addl	$1, -12(%rbp)	#, idx
.L219:
	.loc 1 1160 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# msa, tmp128
	movl	28(%rax), %eax	# msa_3(D)->nseq, D.7875
	cmpl	-12(%rbp), %eax	# idx, D.7875
	jg	.L222	#,
.L221:
	.loc 1 1163 0 is_stmt 1
	movq	-24(%rbp), %rax	# msa, tmp129
	movl	28(%rax), %eax	# msa_3(D)->nseq, D.7875
	cmpl	-12(%rbp), %eax	# idx, D.7875
	jne	.L223	#,
	.loc 1 1163 0 is_stmt 0 discriminator 1
	movl	-16(%rbp), %eax	# apos, tmp130
	cltq
	leaq	0(,%rax,4), %rdx	#, D.7876
	movq	-8(%rbp), %rax	# useme, tmp131
	addq	%rdx, %rax	# D.7876, D.7881
	movl	$0, (%rax)	#, *_56
	jmp	.L224	#
.L223:
	.loc 1 1163 0 discriminator 2
	movl	-16(%rbp), %eax	# apos, tmp132
	cltq
	leaq	0(,%rax,4), %rdx	#, D.7876
	movq	-8(%rbp), %rax	# useme, tmp133
	addq	%rdx, %rax	# D.7876, D.7881
	movl	$1, (%rax)	#, *_59
.L224:
	.loc 1 1158 0 is_stmt 1
	addl	$1, -16(%rbp)	#, apos
.L218:
	.loc 1 1158 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# msa, tmp134
	movl	24(%rax), %eax	# msa_3(D)->alen, D.7875
	cmpl	-16(%rbp), %eax	# apos, D.7875
	jg	.L225	#,
	.loc 1 1165 0 is_stmt 1
	movq	-8(%rbp), %rdx	# useme, tmp135
	movq	-24(%rbp), %rax	# msa, tmp136
	movq	%rdx, %rsi	# tmp135,
	movq	%rax, %rdi	# tmp136,
	call	MSAShorterAlignment	#
	.loc 1 1166 0
	movq	-8(%rbp), %rax	# useme, tmp137
	movq	%rax, %rdi	# tmp137,
	call	free	#
	.loc 1 1167 0
	nop
	.loc 1 1168 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE25:
	.size	MSAMingap, .-MSAMingap
	.globl	MSANogap
	.type	MSANogap, @function
MSANogap:
.LFB26:
	.loc 1 1184 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# msa, msa
	.loc 1 1189 0
	movq	-24(%rbp), %rax	# msa, tmp111
	movl	24(%rax), %eax	# msa_3(D)->alen, D.7882
	cltq
	salq	$2, %rax	#, D.7883
	movq	%rax, %rdx	# D.7883,
	movl	$1189, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_malloc	#
	movq	%rax, -8(%rbp)	# tmp112, useme
	.loc 1 1190 0
	movl	$0, -16(%rbp)	#, apos
	jmp	.L228	#
.L234:
	.loc 1 1192 0
	movl	$0, -12(%rbp)	#, idx
	jmp	.L229	#
.L231:
	.loc 1 1193 0
	movq	-24(%rbp), %rax	# msa, tmp113
	movq	(%rax), %rax	# msa_3(D)->aseq, D.7884
	movl	-12(%rbp), %edx	# idx, tmp114
	movslq	%edx, %rdx	# tmp114, D.7883
	salq	$3, %rdx	#, D.7883
	addq	%rdx, %rax	# D.7883, D.7884
	movq	(%rax), %rdx	# *_15, D.7885
	movl	-16(%rbp), %eax	# apos, tmp115
	cltq
	addq	%rdx, %rax	# D.7885, D.7885
	movzbl	(%rax), %eax	# *_18, D.7887
	cmpb	$32, %al	#, D.7887
	je	.L230	#,
	.loc 1 1193 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# msa, tmp116
	movq	(%rax), %rax	# msa_3(D)->aseq, D.7884
	movl	-12(%rbp), %edx	# idx, tmp117
	movslq	%edx, %rdx	# tmp117, D.7883
	salq	$3, %rdx	#, D.7883
	addq	%rdx, %rax	# D.7883, D.7884
	movq	(%rax), %rdx	# *_23, D.7885
	movl	-16(%rbp), %eax	# apos, tmp118
	cltq
	addq	%rdx, %rax	# D.7885, D.7885
	movzbl	(%rax), %eax	# *_26, D.7887
	cmpb	$46, %al	#, D.7887
	je	.L230	#,
	movq	-24(%rbp), %rax	# msa, tmp119
	movq	(%rax), %rax	# msa_3(D)->aseq, D.7884
	movl	-12(%rbp), %edx	# idx, tmp120
	movslq	%edx, %rdx	# tmp120, D.7883
	salq	$3, %rdx	#, D.7883
	addq	%rdx, %rax	# D.7883, D.7884
	movq	(%rax), %rdx	# *_31, D.7885
	movl	-16(%rbp), %eax	# apos, tmp121
	cltq
	addq	%rdx, %rax	# D.7885, D.7885
	movzbl	(%rax), %eax	# *_34, D.7887
	cmpb	$95, %al	#, D.7887
	je	.L230	#,
	movq	-24(%rbp), %rax	# msa, tmp122
	movq	(%rax), %rax	# msa_3(D)->aseq, D.7884
	movl	-12(%rbp), %edx	# idx, tmp123
	movslq	%edx, %rdx	# tmp123, D.7883
	salq	$3, %rdx	#, D.7883
	addq	%rdx, %rax	# D.7883, D.7884
	movq	(%rax), %rdx	# *_39, D.7885
	movl	-16(%rbp), %eax	# apos, tmp124
	cltq
	addq	%rdx, %rax	# D.7885, D.7885
	movzbl	(%rax), %eax	# *_42, D.7887
	cmpb	$45, %al	#, D.7887
	je	.L230	#,
	movq	-24(%rbp), %rax	# msa, tmp125
	movq	(%rax), %rax	# msa_3(D)->aseq, D.7884
	movl	-12(%rbp), %edx	# idx, tmp126
	movslq	%edx, %rdx	# tmp126, D.7883
	salq	$3, %rdx	#, D.7883
	addq	%rdx, %rax	# D.7883, D.7884
	movq	(%rax), %rdx	# *_47, D.7885
	movl	-16(%rbp), %eax	# apos, tmp127
	cltq
	addq	%rdx, %rax	# D.7885, D.7885
	movzbl	(%rax), %eax	# *_50, D.7887
	cmpb	$126, %al	#, D.7887
	je	.L230	#,
	.loc 1 1192 0 is_stmt 1
	addl	$1, -12(%rbp)	#, idx
.L229:
	.loc 1 1192 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# msa, tmp128
	movl	28(%rax), %eax	# msa_3(D)->nseq, D.7882
	cmpl	-12(%rbp), %eax	# idx, D.7882
	jg	.L231	#,
.L230:
	.loc 1 1195 0 is_stmt 1
	movq	-24(%rbp), %rax	# msa, tmp129
	movl	28(%rax), %eax	# msa_3(D)->nseq, D.7882
	cmpl	-12(%rbp), %eax	# idx, D.7882
	jne	.L232	#,
	.loc 1 1195 0 is_stmt 0 discriminator 1
	movl	-16(%rbp), %eax	# apos, tmp130
	cltq
	leaq	0(,%rax,4), %rdx	#, D.7883
	movq	-8(%rbp), %rax	# useme, tmp131
	addq	%rdx, %rax	# D.7883, D.7888
	movl	$1, (%rax)	#, *_56
	jmp	.L233	#
.L232:
	.loc 1 1195 0 discriminator 2
	movl	-16(%rbp), %eax	# apos, tmp132
	cltq
	leaq	0(,%rax,4), %rdx	#, D.7883
	movq	-8(%rbp), %rax	# useme, tmp133
	addq	%rdx, %rax	# D.7883, D.7888
	movl	$0, (%rax)	#, *_59
.L233:
	.loc 1 1190 0 is_stmt 1
	addl	$1, -16(%rbp)	#, apos
.L228:
	.loc 1 1190 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# msa, tmp134
	movl	24(%rax), %eax	# msa_3(D)->alen, D.7882
	cmpl	-16(%rbp), %eax	# apos, D.7882
	jg	.L234	#,
	.loc 1 1197 0 is_stmt 1
	movq	-8(%rbp), %rdx	# useme, tmp135
	movq	-24(%rbp), %rax	# msa, tmp136
	movq	%rdx, %rsi	# tmp135,
	movq	%rax, %rdi	# tmp136,
	call	MSAShorterAlignment	#
	.loc 1 1198 0
	movq	-8(%rbp), %rax	# useme, tmp137
	movq	%rax, %rdi	# tmp137,
	call	free	#
	.loc 1 1199 0
	nop
	.loc 1 1200 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE26:
	.size	MSANogap, .-MSANogap
	.globl	MSAShorterAlignment
	.type	MSAShorterAlignment, @function
MSAShorterAlignment:
.LFB27:
	.loc 1 1220 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# msa, msa
	movq	%rsi, -32(%rbp)	# useme, useme
	.loc 1 1229 0
	movl	$0, -16(%rbp)	#, apos
	movl	$0, -12(%rbp)	#, mpos
	jmp	.L237	#
.L253:
	.loc 1 1231 0
	movl	-16(%rbp), %eax	# apos, tmp270
	cltq
	leaq	0(,%rax,4), %rdx	#, D.7890
	movq	-32(%rbp), %rax	# useme, tmp271
	addq	%rdx, %rax	# D.7890, D.7891
	movl	(%rax), %eax	# *_17, D.7889
	testl	%eax, %eax	# D.7889
	jne	.L238	#,
	.loc 1 1231 0 is_stmt 0 discriminator 1
	jmp	.L239	#
.L238:
	.loc 1 1234 0 is_stmt 1
	movl	-12(%rbp), %eax	# mpos, tmp272
	cmpl	-16(%rbp), %eax	# apos, tmp272
	je	.L240	#,
	.loc 1 1236 0
	movl	$0, -8(%rbp)	#, idx
	jmp	.L241	#
.L247:
	.loc 1 1238 0
	movq	-24(%rbp), %rax	# msa, tmp273
	movq	(%rax), %rax	# msa_12(D)->aseq, D.7892
	movl	-8(%rbp), %edx	# idx, tmp274
	movslq	%edx, %rdx	# tmp274, D.7890
	salq	$3, %rdx	#, D.7890
	addq	%rdx, %rax	# D.7890, D.7892
	movq	(%rax), %rdx	# *_24, D.7893
	movl	-12(%rbp), %eax	# mpos, tmp275
	cltq
	addq	%rax, %rdx	# D.7894, D.7893
	movq	-24(%rbp), %rax	# msa, tmp276
	movq	(%rax), %rax	# msa_12(D)->aseq, D.7892
	movl	-8(%rbp), %ecx	# idx, tmp277
	movslq	%ecx, %rcx	# tmp277, D.7890
	salq	$3, %rcx	#, D.7890
	addq	%rcx, %rax	# D.7890, D.7892
	movq	(%rax), %rcx	# *_31, D.7893
	movl	-16(%rbp), %eax	# apos, tmp278
	cltq
	addq	%rcx, %rax	# D.7893, D.7893
	movzbl	(%rax), %eax	# *_34, D.7895
	movb	%al, (%rdx)	# D.7895, *_27
	.loc 1 1239 0
	movq	-24(%rbp), %rax	# msa, tmp279
	movq	112(%rax), %rax	# msa_12(D)->ss, D.7892
	testq	%rax, %rax	# D.7892
	je	.L242	#,
	.loc 1 1239 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# msa, tmp280
	movq	112(%rax), %rax	# msa_12(D)->ss, D.7892
	movl	-8(%rbp), %edx	# idx, tmp281
	movslq	%edx, %rdx	# tmp281, D.7890
	salq	$3, %rdx	#, D.7890
	addq	%rdx, %rax	# D.7890, D.7892
	movq	(%rax), %rax	# *_40, D.7893
	testq	%rax, %rax	# D.7893
	je	.L242	#,
	movq	-24(%rbp), %rax	# msa, tmp282
	movq	112(%rax), %rax	# msa_12(D)->ss, D.7892
	movl	-8(%rbp), %edx	# idx, tmp283
	movslq	%edx, %rdx	# tmp283, D.7890
	salq	$3, %rdx	#, D.7890
	addq	%rdx, %rax	# D.7890, D.7892
	movq	(%rax), %rdx	# *_45, D.7893
	movl	-12(%rbp), %eax	# mpos, tmp284
	cltq
	addq	%rax, %rdx	# D.7894, D.7893
	movq	-24(%rbp), %rax	# msa, tmp285
	movq	112(%rax), %rax	# msa_12(D)->ss, D.7892
	movl	-8(%rbp), %ecx	# idx, tmp286
	movslq	%ecx, %rcx	# tmp286, D.7890
	salq	$3, %rcx	#, D.7890
	addq	%rcx, %rax	# D.7890, D.7892
	movq	(%rax), %rcx	# *_52, D.7893
	movl	-16(%rbp), %eax	# apos, tmp287
	cltq
	addq	%rcx, %rax	# D.7893, D.7893
	movzbl	(%rax), %eax	# *_55, D.7895
	movb	%al, (%rdx)	# D.7895, *_48
.L242:
	.loc 1 1240 0 is_stmt 1
	movq	-24(%rbp), %rax	# msa, tmp288
	movq	120(%rax), %rax	# msa_12(D)->sa, D.7892
	testq	%rax, %rax	# D.7892
	je	.L243	#,
	.loc 1 1240 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# msa, tmp289
	movq	120(%rax), %rax	# msa_12(D)->sa, D.7892
	movl	-8(%rbp), %edx	# idx, tmp290
	movslq	%edx, %rdx	# tmp290, D.7890
	salq	$3, %rdx	#, D.7890
	addq	%rdx, %rax	# D.7890, D.7892
	movq	(%rax), %rax	# *_61, D.7893
	testq	%rax, %rax	# D.7893
	je	.L243	#,
	movq	-24(%rbp), %rax	# msa, tmp291
	movq	120(%rax), %rax	# msa_12(D)->sa, D.7892
	movl	-8(%rbp), %edx	# idx, tmp292
	movslq	%edx, %rdx	# tmp292, D.7890
	salq	$3, %rdx	#, D.7890
	addq	%rdx, %rax	# D.7890, D.7892
	movq	(%rax), %rdx	# *_66, D.7893
	movl	-12(%rbp), %eax	# mpos, tmp293
	cltq
	addq	%rax, %rdx	# D.7894, D.7893
	movq	-24(%rbp), %rax	# msa, tmp294
	movq	120(%rax), %rax	# msa_12(D)->sa, D.7892
	movl	-8(%rbp), %ecx	# idx, tmp295
	movslq	%ecx, %rcx	# tmp295, D.7890
	salq	$3, %rcx	#, D.7890
	addq	%rcx, %rax	# D.7890, D.7892
	movq	(%rax), %rcx	# *_73, D.7893
	movl	-16(%rbp), %eax	# apos, tmp296
	cltq
	addq	%rcx, %rax	# D.7893, D.7893
	movzbl	(%rax), %eax	# *_76, D.7895
	movb	%al, (%rdx)	# D.7895, *_69
.L243:
	.loc 1 1242 0 is_stmt 1
	movl	$0, -4(%rbp)	#, i
	jmp	.L244	#
.L246:
	.loc 1 1243 0
	movq	-24(%rbp), %rax	# msa, tmp297
	movq	288(%rax), %rax	# msa_12(D)->gr, D.7896
	movl	-4(%rbp), %edx	# i, tmp298
	movslq	%edx, %rdx	# tmp298, D.7890
	salq	$3, %rdx	#, D.7890
	addq	%rdx, %rax	# D.7890, D.7896
	movq	(%rax), %rax	# *_83, D.7892
	movl	-8(%rbp), %edx	# idx, tmp299
	movslq	%edx, %rdx	# tmp299, D.7890
	salq	$3, %rdx	#, D.7890
	addq	%rdx, %rax	# D.7890, D.7892
	movq	(%rax), %rax	# *_87, D.7893
	testq	%rax, %rax	# D.7893
	je	.L245	#,
	.loc 1 1243 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# msa, tmp300
	movq	288(%rax), %rax	# msa_12(D)->gr, D.7896
	movl	-4(%rbp), %edx	# i, tmp301
	movslq	%edx, %rdx	# tmp301, D.7890
	salq	$3, %rdx	#, D.7890
	addq	%rdx, %rax	# D.7890, D.7896
	movq	(%rax), %rax	# *_92, D.7892
	movl	-8(%rbp), %edx	# idx, tmp302
	movslq	%edx, %rdx	# tmp302, D.7890
	salq	$3, %rdx	#, D.7890
	addq	%rdx, %rax	# D.7890, D.7892
	movq	(%rax), %rdx	# *_96, D.7893
	movl	-12(%rbp), %eax	# mpos, tmp303
	cltq
	addq	%rax, %rdx	# D.7894, D.7893
	movq	-24(%rbp), %rax	# msa, tmp304
	movq	288(%rax), %rax	# msa_12(D)->gr, D.7896
	movl	-4(%rbp), %ecx	# i, tmp305
	movslq	%ecx, %rcx	# tmp305, D.7890
	salq	$3, %rcx	#, D.7890
	addq	%rcx, %rax	# D.7890, D.7896
	movq	(%rax), %rax	# *_103, D.7892
	movl	-8(%rbp), %ecx	# idx, tmp306
	movslq	%ecx, %rcx	# tmp306, D.7890
	salq	$3, %rcx	#, D.7890
	addq	%rcx, %rax	# D.7890, D.7892
	movq	(%rax), %rcx	# *_107, D.7893
	movl	-16(%rbp), %eax	# apos, tmp307
	cltq
	addq	%rcx, %rax	# D.7893, D.7893
	movzbl	(%rax), %eax	# *_110, D.7895
	movb	%al, (%rdx)	# D.7895, *_99
.L245:
	.loc 1 1242 0 is_stmt 1
	addl	$1, -4(%rbp)	#, i
.L244:
	.loc 1 1242 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# msa, tmp308
	movl	304(%rax), %eax	# msa_12(D)->ngr, D.7889
	cmpl	-4(%rbp), %eax	# i, D.7889
	jg	.L246	#,
	.loc 1 1236 0 is_stmt 1
	addl	$1, -8(%rbp)	#, idx
.L241:
	.loc 1 1236 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# msa, tmp309
	movl	28(%rax), %eax	# msa_12(D)->nseq, D.7889
	cmpl	-8(%rbp), %eax	# idx, D.7889
	jg	.L247	#,
	.loc 1 1246 0 is_stmt 1
	movq	-24(%rbp), %rax	# msa, tmp310
	movq	72(%rax), %rax	# msa_12(D)->ss_cons, D.7893
	testq	%rax, %rax	# D.7893
	je	.L248	#,
	.loc 1 1246 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# msa, tmp311
	movq	72(%rax), %rdx	# msa_12(D)->ss_cons, D.7893
	movl	-12(%rbp), %eax	# mpos, tmp312
	cltq
	addq	%rax, %rdx	# D.7894, D.7893
	movq	-24(%rbp), %rax	# msa, tmp313
	movq	72(%rax), %rcx	# msa_12(D)->ss_cons, D.7893
	movl	-16(%rbp), %eax	# apos, tmp314
	cltq
	addq	%rcx, %rax	# D.7893, D.7893
	movzbl	(%rax), %eax	# *_120, D.7895
	movb	%al, (%rdx)	# D.7895, *_117
.L248:
	.loc 1 1247 0 is_stmt 1
	movq	-24(%rbp), %rax	# msa, tmp315
	movq	80(%rax), %rax	# msa_12(D)->sa_cons, D.7893
	testq	%rax, %rax	# D.7893
	je	.L249	#,
	.loc 1 1247 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# msa, tmp316
	movq	80(%rax), %rdx	# msa_12(D)->sa_cons, D.7893
	movl	-12(%rbp), %eax	# mpos, tmp317
	cltq
	addq	%rax, %rdx	# D.7894, D.7893
	movq	-24(%rbp), %rax	# msa, tmp318
	movq	80(%rax), %rcx	# msa_12(D)->sa_cons, D.7893
	movl	-16(%rbp), %eax	# apos, tmp319
	cltq
	addq	%rcx, %rax	# D.7893, D.7893
	movzbl	(%rax), %eax	# *_128, D.7895
	movb	%al, (%rdx)	# D.7895, *_125
.L249:
	.loc 1 1248 0 is_stmt 1
	movq	-24(%rbp), %rax	# msa, tmp320
	movq	88(%rax), %rax	# msa_12(D)->rf, D.7893
	testq	%rax, %rax	# D.7893
	je	.L250	#,
	.loc 1 1248 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# msa, tmp321
	movq	88(%rax), %rdx	# msa_12(D)->rf, D.7893
	movl	-12(%rbp), %eax	# mpos, tmp322
	cltq
	addq	%rax, %rdx	# D.7894, D.7893
	movq	-24(%rbp), %rax	# msa, tmp323
	movq	88(%rax), %rcx	# msa_12(D)->rf, D.7893
	movl	-16(%rbp), %eax	# apos, tmp324
	cltq
	addq	%rcx, %rax	# D.7893, D.7893
	movzbl	(%rax), %eax	# *_136, D.7895
	movb	%al, (%rdx)	# D.7895, *_133
.L250:
	.loc 1 1250 0 is_stmt 1
	movl	$0, -4(%rbp)	#, i
	jmp	.L251	#
.L252:
	.loc 1 1251 0 discriminator 2
	movq	-24(%rbp), %rax	# msa, tmp325
	movq	256(%rax), %rax	# msa_12(D)->gc, D.7892
	movl	-4(%rbp), %edx	# i, tmp326
	movslq	%edx, %rdx	# tmp326, D.7890
	salq	$3, %rdx	#, D.7890
	addq	%rdx, %rax	# D.7890, D.7892
	movq	(%rax), %rdx	# *_143, D.7893
	movl	-12(%rbp), %eax	# mpos, tmp327
	cltq
	addq	%rax, %rdx	# D.7894, D.7893
	movq	-24(%rbp), %rax	# msa, tmp328
	movq	256(%rax), %rax	# msa_12(D)->gc, D.7892
	movl	-4(%rbp), %ecx	# i, tmp329
	movslq	%ecx, %rcx	# tmp329, D.7890
	salq	$3, %rcx	#, D.7890
	addq	%rcx, %rax	# D.7890, D.7892
	movq	(%rax), %rcx	# *_150, D.7893
	movl	-16(%rbp), %eax	# apos, tmp330
	cltq
	addq	%rcx, %rax	# D.7893, D.7893
	movzbl	(%rax), %eax	# *_153, D.7895
	movb	%al, (%rdx)	# D.7895, *_146
	.loc 1 1250 0 discriminator 2
	addl	$1, -4(%rbp)	#, i
.L251:
	.loc 1 1250 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# msa, tmp331
	movl	272(%rax), %eax	# msa_12(D)->ngc, D.7889
	cmpl	-4(%rbp), %eax	# i, D.7889
	jg	.L252	#,
.L240:
	.loc 1 1253 0 is_stmt 1
	addl	$1, -12(%rbp)	#, mpos
.L239:
	.loc 1 1229 0
	addl	$1, -16(%rbp)	#, apos
.L237:
	.loc 1 1229 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# msa, tmp332
	movl	24(%rax), %eax	# msa_12(D)->alen, D.7889
	cmpl	-16(%rbp), %eax	# apos, D.7889
	jg	.L253	#,
	.loc 1 1256 0 is_stmt 1
	movq	-24(%rbp), %rax	# msa, tmp333
	movl	-12(%rbp), %edx	# mpos, tmp334
	movl	%edx, 24(%rax)	# tmp334, msa_12(D)->alen
	.loc 1 1258 0
	movl	$0, -8(%rbp)	#, idx
	jmp	.L254	#
.L260:
	.loc 1 1260 0
	movq	-24(%rbp), %rax	# msa, tmp335
	movq	(%rax), %rax	# msa_12(D)->aseq, D.7892
	movl	-8(%rbp), %edx	# idx, tmp336
	movslq	%edx, %rdx	# tmp336, D.7890
	salq	$3, %rdx	#, D.7890
	addq	%rdx, %rax	# D.7890, D.7892
	movq	(%rax), %rdx	# *_163, D.7893
	movl	-12(%rbp), %eax	# mpos, tmp337
	cltq
	addq	%rdx, %rax	# D.7893, D.7893
	movb	$0, (%rax)	#, *_166
	.loc 1 1261 0
	movq	-24(%rbp), %rax	# msa, tmp338
	movq	112(%rax), %rax	# msa_12(D)->ss, D.7892
	testq	%rax, %rax	# D.7892
	je	.L255	#,
	.loc 1 1261 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# msa, tmp339
	movq	112(%rax), %rax	# msa_12(D)->ss, D.7892
	movl	-8(%rbp), %edx	# idx, tmp340
	movslq	%edx, %rdx	# tmp340, D.7890
	salq	$3, %rdx	#, D.7890
	addq	%rdx, %rax	# D.7890, D.7892
	movq	(%rax), %rax	# *_171, D.7893
	testq	%rax, %rax	# D.7893
	je	.L255	#,
	movq	-24(%rbp), %rax	# msa, tmp341
	movq	112(%rax), %rax	# msa_12(D)->ss, D.7892
	movl	-8(%rbp), %edx	# idx, tmp342
	movslq	%edx, %rdx	# tmp342, D.7890
	salq	$3, %rdx	#, D.7890
	addq	%rdx, %rax	# D.7890, D.7892
	movq	(%rax), %rdx	# *_176, D.7893
	movl	-12(%rbp), %eax	# mpos, tmp343
	cltq
	addq	%rdx, %rax	# D.7893, D.7893
	movb	$0, (%rax)	#, *_179
.L255:
	.loc 1 1262 0 is_stmt 1
	movq	-24(%rbp), %rax	# msa, tmp344
	movq	120(%rax), %rax	# msa_12(D)->sa, D.7892
	testq	%rax, %rax	# D.7892
	je	.L256	#,
	.loc 1 1262 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# msa, tmp345
	movq	120(%rax), %rax	# msa_12(D)->sa, D.7892
	movl	-8(%rbp), %edx	# idx, tmp346
	movslq	%edx, %rdx	# tmp346, D.7890
	salq	$3, %rdx	#, D.7890
	addq	%rdx, %rax	# D.7890, D.7892
	movq	(%rax), %rax	# *_184, D.7893
	testq	%rax, %rax	# D.7893
	je	.L256	#,
	movq	-24(%rbp), %rax	# msa, tmp347
	movq	120(%rax), %rax	# msa_12(D)->sa, D.7892
	movl	-8(%rbp), %edx	# idx, tmp348
	movslq	%edx, %rdx	# tmp348, D.7890
	salq	$3, %rdx	#, D.7890
	addq	%rdx, %rax	# D.7890, D.7892
	movq	(%rax), %rdx	# *_189, D.7893
	movl	-12(%rbp), %eax	# mpos, tmp349
	cltq
	addq	%rdx, %rax	# D.7893, D.7893
	movb	$0, (%rax)	#, *_192
.L256:
	.loc 1 1264 0 is_stmt 1
	movl	$0, -4(%rbp)	#, i
	jmp	.L257	#
.L259:
	.loc 1 1265 0
	movq	-24(%rbp), %rax	# msa, tmp350
	movq	288(%rax), %rax	# msa_12(D)->gr, D.7896
	movl	-4(%rbp), %edx	# i, tmp351
	movslq	%edx, %rdx	# tmp351, D.7890
	salq	$3, %rdx	#, D.7890
	addq	%rdx, %rax	# D.7890, D.7896
	movq	(%rax), %rax	# *_198, D.7892
	movl	-8(%rbp), %edx	# idx, tmp352
	movslq	%edx, %rdx	# tmp352, D.7890
	salq	$3, %rdx	#, D.7890
	addq	%rdx, %rax	# D.7890, D.7892
	movq	(%rax), %rax	# *_202, D.7893
	testq	%rax, %rax	# D.7893
	je	.L258	#,
	.loc 1 1265 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# msa, tmp353
	movq	288(%rax), %rax	# msa_12(D)->gr, D.7896
	movl	-4(%rbp), %edx	# i, tmp354
	movslq	%edx, %rdx	# tmp354, D.7890
	salq	$3, %rdx	#, D.7890
	addq	%rdx, %rax	# D.7890, D.7896
	movq	(%rax), %rax	# *_207, D.7892
	movl	-8(%rbp), %edx	# idx, tmp355
	movslq	%edx, %rdx	# tmp355, D.7890
	salq	$3, %rdx	#, D.7890
	addq	%rdx, %rax	# D.7890, D.7892
	movq	(%rax), %rdx	# *_211, D.7893
	movl	-12(%rbp), %eax	# mpos, tmp356
	cltq
	addq	%rdx, %rax	# D.7893, D.7893
	movb	$0, (%rax)	#, *_214
.L258:
	.loc 1 1264 0 is_stmt 1
	addl	$1, -4(%rbp)	#, i
.L257:
	.loc 1 1264 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# msa, tmp357
	movl	304(%rax), %eax	# msa_12(D)->ngr, D.7889
	cmpl	-4(%rbp), %eax	# i, D.7889
	jg	.L259	#,
	.loc 1 1258 0 is_stmt 1
	addl	$1, -8(%rbp)	#, idx
.L254:
	.loc 1 1258 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# msa, tmp358
	movl	28(%rax), %eax	# msa_12(D)->nseq, D.7889
	cmpl	-8(%rbp), %eax	# idx, D.7889
	jg	.L260	#,
	.loc 1 1268 0 is_stmt 1
	movq	-24(%rbp), %rax	# msa, tmp359
	movq	72(%rax), %rax	# msa_12(D)->ss_cons, D.7893
	testq	%rax, %rax	# D.7893
	je	.L261	#,
	.loc 1 1268 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# msa, tmp360
	movq	72(%rax), %rdx	# msa_12(D)->ss_cons, D.7893
	movl	-12(%rbp), %eax	# mpos, tmp361
	cltq
	addq	%rdx, %rax	# D.7893, D.7893
	movb	$0, (%rax)	#, *_220
.L261:
	.loc 1 1269 0 is_stmt 1
	movq	-24(%rbp), %rax	# msa, tmp362
	movq	80(%rax), %rax	# msa_12(D)->sa_cons, D.7893
	testq	%rax, %rax	# D.7893
	je	.L262	#,
	.loc 1 1269 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# msa, tmp363
	movq	80(%rax), %rdx	# msa_12(D)->sa_cons, D.7893
	movl	-12(%rbp), %eax	# mpos, tmp364
	cltq
	addq	%rdx, %rax	# D.7893, D.7893
	movb	$0, (%rax)	#, *_224
.L262:
	.loc 1 1270 0 is_stmt 1
	movq	-24(%rbp), %rax	# msa, tmp365
	movq	88(%rax), %rax	# msa_12(D)->rf, D.7893
	testq	%rax, %rax	# D.7893
	je	.L263	#,
	.loc 1 1270 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# msa, tmp366
	movq	88(%rax), %rdx	# msa_12(D)->rf, D.7893
	movl	-12(%rbp), %eax	# mpos, tmp367
	cltq
	addq	%rdx, %rax	# D.7893, D.7893
	movb	$0, (%rax)	#, *_228
.L263:
	.loc 1 1272 0 is_stmt 1
	movl	$0, -4(%rbp)	#, i
	jmp	.L264	#
.L265:
	.loc 1 1273 0 discriminator 2
	movq	-24(%rbp), %rax	# msa, tmp368
	movq	256(%rax), %rax	# msa_12(D)->gc, D.7892
	movl	-4(%rbp), %edx	# i, tmp369
	movslq	%edx, %rdx	# tmp369, D.7890
	salq	$3, %rdx	#, D.7890
	addq	%rdx, %rax	# D.7890, D.7892
	movq	(%rax), %rdx	# *_234, D.7893
	movl	-12(%rbp), %eax	# mpos, tmp370
	cltq
	addq	%rdx, %rax	# D.7893, D.7893
	movb	$0, (%rax)	#, *_237
	.loc 1 1272 0 discriminator 2
	addl	$1, -4(%rbp)	#, i
.L264:
	.loc 1 1272 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# msa, tmp371
	movl	272(%rax), %eax	# msa_12(D)->ngc, D.7889
	cmpl	-4(%rbp), %eax	# i, D.7889
	jg	.L265	#,
	.loc 1 1275 0 is_stmt 1
	nop
	.loc 1 1276 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE27:
	.size	MSAShorterAlignment, .-MSAShorterAlignment
	.globl	MSASmallerAlignment
	.type	MSASmallerAlignment, @function
MSASmallerAlignment:
.LFB28:
	.loc 1 1307 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$72, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)	# msa, msa
	movq	%rsi, -64(%rbp)	# useme, useme
	movq	%rdx, -72(%rbp)	# ret_new, ret_new
	.loc 1 1313 0
	movl	$0, -40(%rbp)	#, nnew
	.loc 1 1314 0
	movl	$0, -36(%rbp)	#, oidx
	jmp	.L268	#
.L270:
	.loc 1 1315 0
	movl	-36(%rbp), %eax	# oidx, tmp180
	cltq
	leaq	0(,%rax,4), %rdx	#, D.7898
	movq	-64(%rbp), %rax	# useme, tmp181
	addq	%rdx, %rax	# D.7898, D.7899
	movl	(%rax), %eax	# *_15, D.7897
	testl	%eax, %eax	# D.7897
	je	.L269	#,
	.loc 1 1315 0 is_stmt 0 discriminator 1
	addl	$1, -40(%rbp)	#, nnew
.L269:
	.loc 1 1314 0 is_stmt 1
	addl	$1, -36(%rbp)	#, oidx
.L268:
	.loc 1 1314 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# msa, tmp182
	movl	28(%rax), %eax	# msa_10(D)->nseq, D.7897
	cmpl	-36(%rbp), %eax	# oidx, D.7897
	jg	.L270	#,
	.loc 1 1316 0 is_stmt 1
	cmpl	$0, -40(%rbp)	#, nnew
	jne	.L271	#,
	.loc 1 1316 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# ret_new, tmp183
	movq	$0, (%rax)	#, *ret_new_19(D)
	jmp	.L267	#
.L271:
	.loc 1 1318 0 is_stmt 1
	movl	-40(%rbp), %eax	# nnew, tmp184
	movl	$0, %esi	#,
	movl	%eax, %edi	# tmp184,
	call	MSAAlloc	#
	movq	%rax, -24(%rbp)	# tmp185, new
	.loc 1 1319 0
	movl	$0, -32(%rbp)	#, nidx
	.loc 1 1320 0
	movl	$0, -36(%rbp)	#, oidx
	jmp	.L273	#
.L281:
	.loc 1 1321 0
	movl	-36(%rbp), %eax	# oidx, tmp186
	cltq
	leaq	0(,%rax,4), %rdx	#, D.7898
	movq	-64(%rbp), %rax	# useme, tmp187
	addq	%rdx, %rax	# D.7898, D.7899
	movl	(%rax), %eax	# *_26, D.7897
	testl	%eax, %eax	# D.7897
	je	.L274	#,
	.loc 1 1323 0
	movq	-24(%rbp), %rax	# new, tmp188
	movq	(%rax), %rax	# new_20->aseq, D.7900
	movl	-32(%rbp), %edx	# nidx, tmp189
	movslq	%edx, %rdx	# tmp189, D.7898
	salq	$3, %rdx	#, D.7898
	leaq	(%rax,%rdx), %rbx	#, D.7900
	movq	-56(%rbp), %rax	# msa, tmp190
	movl	24(%rax), %edx	# msa_10(D)->alen, D.7897
	movq	-56(%rbp), %rax	# msa, tmp191
	movq	(%rax), %rax	# msa_10(D)->aseq, D.7900
	movl	-36(%rbp), %ecx	# oidx, tmp192
	movslq	%ecx, %rcx	# tmp192, D.7898
	salq	$3, %rcx	#, D.7898
	addq	%rcx, %rax	# D.7898, D.7900
	movq	(%rax), %rax	# *_36, D.7901
	movl	%edx, %esi	# D.7897,
	movq	%rax, %rdi	# D.7901,
	call	sre_strdup	#
	movq	%rax, (%rbx)	# D.7901, *_31
	.loc 1 1324 0
	movq	-24(%rbp), %rax	# new, tmp193
	movq	8(%rax), %rax	# new_20->sqname, D.7900
	movl	-32(%rbp), %edx	# nidx, tmp194
	movslq	%edx, %rdx	# tmp194, D.7898
	salq	$3, %rdx	#, D.7898
	leaq	(%rax,%rdx), %rbx	#, D.7900
	movq	-56(%rbp), %rax	# msa, tmp195
	movl	24(%rax), %edx	# msa_10(D)->alen, D.7897
	movq	-56(%rbp), %rax	# msa, tmp196
	movq	8(%rax), %rax	# msa_10(D)->sqname, D.7900
	movl	-36(%rbp), %ecx	# oidx, tmp197
	movslq	%ecx, %rcx	# tmp197, D.7898
	salq	$3, %rcx	#, D.7898
	addq	%rcx, %rax	# D.7898, D.7900
	movq	(%rax), %rax	# *_47, D.7901
	movl	%edx, %esi	# D.7897,
	movq	%rax, %rdi	# D.7901,
	call	sre_strdup	#
	movq	%rax, (%rbx)	# D.7901, *_42
	.loc 1 1325 0
	movq	-56(%rbp), %rax	# msa, tmp198
	movq	8(%rax), %rax	# msa_10(D)->sqname, D.7900
	movl	-36(%rbp), %edx	# oidx, tmp199
	movslq	%edx, %rdx	# tmp199, D.7898
	salq	$3, %rdx	#, D.7898
	addq	%rdx, %rax	# D.7898, D.7900
	movq	(%rax), %rdx	# *_53, D.7901
	movq	-24(%rbp), %rax	# new, tmp200
	movq	312(%rax), %rax	# new_20->index, D.7902
	movq	%rdx, %rsi	# D.7901,
	movq	%rax, %rdi	# D.7902,
	call	GKIStoreKey	#
	.loc 1 1326 0
	movq	-24(%rbp), %rax	# new, tmp201
	movq	16(%rax), %rax	# new_20->wgt, D.7903
	movl	-32(%rbp), %edx	# nidx, tmp202
	movslq	%edx, %rdx	# tmp202, D.7898
	salq	$2, %rdx	#, D.7898
	addq	%rax, %rdx	# D.7903, D.7903
	movq	-56(%rbp), %rax	# msa, tmp203
	movq	16(%rax), %rax	# msa_10(D)->wgt, D.7903
	movl	-36(%rbp), %ecx	# oidx, tmp204
	movslq	%ecx, %rcx	# tmp204, D.7898
	salq	$2, %rcx	#, D.7898
	addq	%rcx, %rax	# D.7898, D.7903
	movl	(%rax), %eax	# *_63, D.7904
	movl	%eax, (%rdx)	# D.7904, *_59
	.loc 1 1327 0
	movq	-56(%rbp), %rax	# msa, tmp205
	movq	96(%rax), %rax	# msa_10(D)->sqacc, D.7900
	testq	%rax, %rax	# D.7900
	je	.L275	#,
	.loc 1 1328 0
	movq	-56(%rbp), %rax	# msa, tmp206
	movq	96(%rax), %rax	# msa_10(D)->sqacc, D.7900
	movl	-36(%rbp), %edx	# oidx, tmp207
	movslq	%edx, %rdx	# tmp207, D.7898
	salq	$3, %rdx	#, D.7898
	addq	%rdx, %rax	# D.7898, D.7900
	movq	(%rax), %rdx	# *_69, D.7901
	movl	-32(%rbp), %ecx	# nidx, tmp208
	movq	-24(%rbp), %rax	# new, tmp209
	movl	%ecx, %esi	# tmp208,
	movq	%rax, %rdi	# tmp209,
	call	MSASetSeqAccession	#
.L275:
	.loc 1 1329 0
	movq	-56(%rbp), %rax	# msa, tmp210
	movq	104(%rax), %rax	# msa_10(D)->sqdesc, D.7900
	testq	%rax, %rax	# D.7900
	je	.L276	#,
	.loc 1 1330 0
	movq	-56(%rbp), %rax	# msa, tmp211
	movq	104(%rax), %rax	# msa_10(D)->sqdesc, D.7900
	movl	-36(%rbp), %edx	# oidx, tmp212
	movslq	%edx, %rdx	# tmp212, D.7898
	salq	$3, %rdx	#, D.7898
	addq	%rdx, %rax	# D.7898, D.7900
	movq	(%rax), %rdx	# *_75, D.7901
	movl	-32(%rbp), %ecx	# nidx, tmp213
	movq	-24(%rbp), %rax	# new, tmp214
	movl	%ecx, %esi	# tmp213,
	movq	%rax, %rdi	# tmp214,
	call	MSASetSeqDescription	#
.L276:
	.loc 1 1331 0
	movq	-56(%rbp), %rax	# msa, tmp215
	movq	112(%rax), %rax	# msa_10(D)->ss, D.7900
	testq	%rax, %rax	# D.7900
	je	.L277	#,
	.loc 1 1331 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# msa, tmp216
	movq	112(%rax), %rax	# msa_10(D)->ss, D.7900
	movl	-36(%rbp), %edx	# oidx, tmp217
	movslq	%edx, %rdx	# tmp217, D.7898
	salq	$3, %rdx	#, D.7898
	addq	%rdx, %rax	# D.7898, D.7900
	movq	(%rax), %rax	# *_81, D.7901
	testq	%rax, %rax	# D.7901
	je	.L277	#,
	.loc 1 1333 0 is_stmt 1
	movq	-24(%rbp), %rax	# new, tmp218
	movq	112(%rax), %rax	# new_20->ss, D.7900
	testq	%rax, %rax	# D.7900
	jne	.L278	#,
	.loc 1 1333 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# new, tmp219
	movl	28(%rax), %eax	# new_20->nseq, D.7897
	cltq
	salq	$3, %rax	#, D.7898
	movq	%rax, %rdx	# D.7898,
	movl	$1333, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_malloc	#
	movq	-24(%rbp), %rdx	# new, tmp220
	movq	%rax, 112(%rdx)	# D.7905, new_20->ss
.L278:
	.loc 1 1334 0 is_stmt 1
	movq	-24(%rbp), %rax	# new, tmp221
	movq	112(%rax), %rax	# new_20->ss, D.7900
	movl	-32(%rbp), %edx	# nidx, tmp222
	movslq	%edx, %rdx	# tmp222, D.7898
	salq	$3, %rdx	#, D.7898
	leaq	(%rax,%rdx), %rbx	#, D.7900
	movq	-56(%rbp), %rax	# msa, tmp223
	movq	112(%rax), %rax	# msa_10(D)->ss, D.7900
	movl	-36(%rbp), %edx	# oidx, tmp224
	movslq	%edx, %rdx	# tmp224, D.7898
	salq	$3, %rdx	#, D.7898
	addq	%rdx, %rax	# D.7898, D.7900
	movq	(%rax), %rax	# *_95, D.7901
	movl	$-1, %esi	#,
	movq	%rax, %rdi	# D.7901,
	call	sre_strdup	#
	movq	%rax, (%rbx)	# D.7901, *_91
.L277:
	.loc 1 1336 0
	movq	-56(%rbp), %rax	# msa, tmp225
	movq	120(%rax), %rax	# msa_10(D)->sa, D.7900
	testq	%rax, %rax	# D.7900
	je	.L279	#,
	.loc 1 1336 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# msa, tmp226
	movq	120(%rax), %rax	# msa_10(D)->sa, D.7900
	movl	-36(%rbp), %edx	# oidx, tmp227
	movslq	%edx, %rdx	# tmp227, D.7898
	salq	$3, %rdx	#, D.7898
	addq	%rdx, %rax	# D.7898, D.7900
	movq	(%rax), %rax	# *_102, D.7901
	testq	%rax, %rax	# D.7901
	je	.L279	#,
	.loc 1 1338 0 is_stmt 1
	movq	-24(%rbp), %rax	# new, tmp228
	movq	120(%rax), %rax	# new_20->sa, D.7900
	testq	%rax, %rax	# D.7900
	jne	.L280	#,
	.loc 1 1338 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# new, tmp229
	movl	28(%rax), %eax	# new_20->nseq, D.7897
	cltq
	salq	$3, %rax	#, D.7898
	movq	%rax, %rdx	# D.7898,
	movl	$1338, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_malloc	#
	movq	-24(%rbp), %rdx	# new, tmp230
	movq	%rax, 120(%rdx)	# D.7905, new_20->sa
.L280:
	.loc 1 1339 0 is_stmt 1
	movq	-24(%rbp), %rax	# new, tmp231
	movq	120(%rax), %rax	# new_20->sa, D.7900
	movl	-32(%rbp), %edx	# nidx, tmp232
	movslq	%edx, %rdx	# tmp232, D.7898
	salq	$3, %rdx	#, D.7898
	leaq	(%rax,%rdx), %rbx	#, D.7900
	movq	-56(%rbp), %rax	# msa, tmp233
	movq	120(%rax), %rax	# msa_10(D)->sa, D.7900
	movl	-36(%rbp), %edx	# oidx, tmp234
	movslq	%edx, %rdx	# tmp234, D.7898
	salq	$3, %rdx	#, D.7898
	addq	%rdx, %rax	# D.7898, D.7900
	movq	(%rax), %rax	# *_116, D.7901
	movl	$-1, %esi	#,
	movq	%rax, %rdi	# D.7901,
	call	sre_strdup	#
	movq	%rax, (%rbx)	# D.7901, *_112
.L279:
	.loc 1 1341 0
	addl	$1, -32(%rbp)	#, nidx
.L274:
	.loc 1 1320 0
	addl	$1, -36(%rbp)	#, oidx
.L273:
	.loc 1 1320 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# msa, tmp235
	movl	28(%rax), %eax	# msa_10(D)->nseq, D.7897
	cmpl	-36(%rbp), %eax	# oidx, D.7897
	jg	.L281	#,
	.loc 1 1344 0 is_stmt 1
	movq	-24(%rbp), %rax	# new, tmp236
	movl	-40(%rbp), %edx	# nnew, tmp237
	movl	%edx, 28(%rax)	# tmp237, new_20->nseq
	.loc 1 1345 0
	movq	-56(%rbp), %rax	# msa, tmp238
	movl	24(%rax), %edx	# msa_10(D)->alen, D.7897
	movq	-24(%rbp), %rax	# new, tmp239
	movl	%edx, 24(%rax)	# D.7897, new_20->alen
	.loc 1 1346 0
	movq	-56(%rbp), %rax	# msa, tmp240
	movl	32(%rax), %edx	# msa_10(D)->flags, D.7897
	movq	-24(%rbp), %rax	# new, tmp241
	movl	%edx, 32(%rax)	# D.7897, new_20->flags
	.loc 1 1347 0
	movq	-56(%rbp), %rax	# msa, tmp242
	movl	36(%rax), %edx	# msa_10(D)->type, D.7897
	movq	-24(%rbp), %rax	# new, tmp243
	movl	%edx, 36(%rax)	# D.7897, new_20->type
	.loc 1 1348 0
	movq	-56(%rbp), %rax	# msa, tmp244
	movq	40(%rax), %rax	# msa_10(D)->name, D.7901
	movl	$-1, %esi	#,
	movq	%rax, %rdi	# D.7901,
	call	sre_strdup	#
	movq	-24(%rbp), %rdx	# new, tmp245
	movq	%rax, 40(%rdx)	# D.7901, new_20->name
	.loc 1 1349 0
	movq	-56(%rbp), %rax	# msa, tmp246
	movq	48(%rax), %rax	# msa_10(D)->desc, D.7901
	movl	$-1, %esi	#,
	movq	%rax, %rdi	# D.7901,
	call	sre_strdup	#
	movq	-24(%rbp), %rdx	# new, tmp247
	movq	%rax, 48(%rdx)	# D.7901, new_20->desc
	.loc 1 1350 0
	movq	-56(%rbp), %rax	# msa, tmp248
	movq	56(%rax), %rax	# msa_10(D)->acc, D.7901
	movl	$-1, %esi	#,
	movq	%rax, %rdi	# D.7901,
	call	sre_strdup	#
	movq	-24(%rbp), %rdx	# new, tmp249
	movq	%rax, 56(%rdx)	# D.7901, new_20->acc
	.loc 1 1351 0
	movq	-56(%rbp), %rax	# msa, tmp250
	movq	64(%rax), %rax	# msa_10(D)->au, D.7901
	movl	$-1, %esi	#,
	movq	%rax, %rdi	# D.7901,
	call	sre_strdup	#
	movq	-24(%rbp), %rdx	# new, tmp251
	movq	%rax, 64(%rdx)	# D.7901, new_20->au
	.loc 1 1352 0
	movq	-56(%rbp), %rax	# msa, tmp252
	movq	72(%rax), %rax	# msa_10(D)->ss_cons, D.7901
	movl	$-1, %esi	#,
	movq	%rax, %rdi	# D.7901,
	call	sre_strdup	#
	movq	-24(%rbp), %rdx	# new, tmp253
	movq	%rax, 72(%rdx)	# D.7901, new_20->ss_cons
	.loc 1 1353 0
	movq	-56(%rbp), %rax	# msa, tmp254
	movq	80(%rax), %rax	# msa_10(D)->sa_cons, D.7901
	movl	$-1, %esi	#,
	movq	%rax, %rdi	# D.7901,
	call	sre_strdup	#
	movq	-24(%rbp), %rdx	# new, tmp255
	movq	%rax, 80(%rdx)	# D.7901, new_20->sa_cons
	.loc 1 1354 0
	movq	-56(%rbp), %rax	# msa, tmp256
	movq	88(%rax), %rax	# msa_10(D)->rf, D.7901
	movl	$-1, %esi	#,
	movq	%rax, %rdi	# D.7901,
	call	sre_strdup	#
	movq	-24(%rbp), %rdx	# new, tmp257
	movq	%rax, 88(%rdx)	# D.7901, new_20->rf
	.loc 1 1355 0
	movl	$0, -28(%rbp)	#, i
	jmp	.L282	#
.L283:
	.loc 1 1356 0 discriminator 2
	movq	-56(%rbp), %rax	# msa, tmp258
	movl	-28(%rbp), %edx	# i, tmp260
	movslq	%edx, %rdx	# tmp260, tmp259
	addq	$32, %rdx	#, tmp261
	movl	(%rax,%rdx,4), %eax	# msa_10(D)->cutoff, D.7904
	movq	-24(%rbp), %rdx	# new, tmp262
	movl	-28(%rbp), %ecx	# i, tmp264
	movslq	%ecx, %rcx	# tmp264, tmp263
	addq	$32, %rcx	#, tmp265
	movl	%eax, (%rdx,%rcx,4)	# D.7904, new_20->cutoff
	.loc 1 1357 0 discriminator 2
	movq	-56(%rbp), %rax	# msa, tmp266
	movl	-28(%rbp), %edx	# i, tmp268
	movslq	%edx, %rdx	# tmp268, tmp267
	addq	$36, %rdx	#, tmp269
	movl	8(%rax,%rdx,4), %edx	# msa_10(D)->cutoff_is_set, D.7897
	movq	-24(%rbp), %rax	# new, tmp270
	movl	-28(%rbp), %ecx	# i, tmp272
	movslq	%ecx, %rcx	# tmp272, tmp271
	addq	$36, %rcx	#, tmp273
	movl	%edx, 8(%rax,%rcx,4)	# D.7897, new_20->cutoff_is_set
	.loc 1 1355 0 discriminator 2
	addl	$1, -28(%rbp)	#, i
.L282:
	.loc 1 1355 0 is_stmt 0 discriminator 1
	cmpl	$5, -28(%rbp)	#, i
	jle	.L283	#,
	.loc 1 1359 0 is_stmt 1
	movq	-24(%rbp), %rax	# new, tmp274
	movq	328(%rax), %rax	# new_20->sqlen, D.7899
	movq	%rax, %rdi	# D.7899,
	call	free	#
	.loc 1 1361 0
	movq	-24(%rbp), %rax	# new, tmp275
	movq	%rax, %rdi	# tmp275,
	call	MSAMingap	#
	.loc 1 1362 0
	movq	-72(%rbp), %rax	# ret_new, tmp276
	movq	-24(%rbp), %rdx	# new, tmp277
	movq	%rdx, (%rax)	# tmp277, *ret_new_19(D)
	.loc 1 1363 0
	nop
.L267:
	.loc 1 1364 0
	addq	$72, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE28:
	.size	MSASmallerAlignment, .-MSASmallerAlignment
	.globl	MSAGetSeqAccession
	.type	MSAGetSeqAccession, @function
MSAGetSeqAccession:
.LFB29:
	.loc 1 1379 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# msa, msa
	movl	%esi, -12(%rbp)	# idx, idx
	.loc 1 1380 0
	movq	-8(%rbp), %rax	# msa, tmp71
	movq	96(%rax), %rax	# msa_2(D)->sqacc, D.7907
	testq	%rax, %rax	# D.7907
	je	.L285	#,
	.loc 1 1380 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# msa, tmp72
	movq	96(%rax), %rax	# msa_2(D)->sqacc, D.7907
	movl	-12(%rbp), %edx	# idx, tmp73
	movslq	%edx, %rdx	# tmp73, D.7908
	salq	$3, %rdx	#, D.7908
	addq	%rdx, %rax	# D.7908, D.7907
	movq	(%rax), %rax	# *_8, D.7906
	testq	%rax, %rax	# D.7906
	je	.L285	#,
	.loc 1 1381 0 is_stmt 1
	movq	-8(%rbp), %rax	# msa, tmp74
	movq	96(%rax), %rax	# msa_2(D)->sqacc, D.7907
	movl	-12(%rbp), %edx	# idx, tmp75
	movslq	%edx, %rdx	# tmp75, D.7908
	salq	$3, %rdx	#, D.7908
	addq	%rdx, %rax	# D.7908, D.7907
	movq	(%rax), %rax	# *_13, D.7906
	jmp	.L286	#
.L285:
	.loc 1 1383 0
	movl	$0, %eax	#, D.7906
.L286:
	.loc 1 1384 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE29:
	.size	MSAGetSeqAccession, .-MSAGetSeqAccession
	.globl	MSAGetSeqDescription
	.type	MSAGetSeqDescription, @function
MSAGetSeqDescription:
.LFB30:
	.loc 1 1387 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# msa, msa
	movl	%esi, -12(%rbp)	# idx, idx
	.loc 1 1388 0
	movq	-8(%rbp), %rax	# msa, tmp71
	movq	104(%rax), %rax	# msa_2(D)->sqdesc, D.7910
	testq	%rax, %rax	# D.7910
	je	.L288	#,
	.loc 1 1388 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# msa, tmp72
	movq	104(%rax), %rax	# msa_2(D)->sqdesc, D.7910
	movl	-12(%rbp), %edx	# idx, tmp73
	movslq	%edx, %rdx	# tmp73, D.7911
	salq	$3, %rdx	#, D.7911
	addq	%rdx, %rax	# D.7911, D.7910
	movq	(%rax), %rax	# *_8, D.7909
	testq	%rax, %rax	# D.7909
	je	.L288	#,
	.loc 1 1389 0 is_stmt 1
	movq	-8(%rbp), %rax	# msa, tmp74
	movq	104(%rax), %rax	# msa_2(D)->sqdesc, D.7910
	movl	-12(%rbp), %edx	# idx, tmp75
	movslq	%edx, %rdx	# tmp75, D.7911
	salq	$3, %rdx	#, D.7911
	addq	%rdx, %rax	# D.7911, D.7910
	movq	(%rax), %rax	# *_13, D.7909
	jmp	.L289	#
.L288:
	.loc 1 1391 0
	movl	$0, %eax	#, D.7909
.L289:
	.loc 1 1392 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE30:
	.size	MSAGetSeqDescription, .-MSAGetSeqDescription
	.globl	MSAGetSeqSS
	.type	MSAGetSeqSS, @function
MSAGetSeqSS:
.LFB31:
	.loc 1 1395 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# msa, msa
	movl	%esi, -12(%rbp)	# idx, idx
	.loc 1 1396 0
	movq	-8(%rbp), %rax	# msa, tmp71
	movq	112(%rax), %rax	# msa_2(D)->ss, D.7913
	testq	%rax, %rax	# D.7913
	je	.L291	#,
	.loc 1 1396 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# msa, tmp72
	movq	112(%rax), %rax	# msa_2(D)->ss, D.7913
	movl	-12(%rbp), %edx	# idx, tmp73
	movslq	%edx, %rdx	# tmp73, D.7914
	salq	$3, %rdx	#, D.7914
	addq	%rdx, %rax	# D.7914, D.7913
	movq	(%rax), %rax	# *_8, D.7912
	testq	%rax, %rax	# D.7912
	je	.L291	#,
	.loc 1 1397 0 is_stmt 1
	movq	-8(%rbp), %rax	# msa, tmp74
	movq	112(%rax), %rax	# msa_2(D)->ss, D.7913
	movl	-12(%rbp), %edx	# idx, tmp75
	movslq	%edx, %rdx	# tmp75, D.7914
	salq	$3, %rdx	#, D.7914
	addq	%rdx, %rax	# D.7914, D.7913
	movq	(%rax), %rax	# *_13, D.7912
	jmp	.L292	#
.L291:
	.loc 1 1399 0
	movl	$0, %eax	#, D.7912
.L292:
	.loc 1 1400 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE31:
	.size	MSAGetSeqSS, .-MSAGetSeqSS
	.globl	MSAGetSeqSA
	.type	MSAGetSeqSA, @function
MSAGetSeqSA:
.LFB32:
	.loc 1 1403 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# msa, msa
	movl	%esi, -12(%rbp)	# idx, idx
	.loc 1 1404 0
	movq	-8(%rbp), %rax	# msa, tmp71
	movq	120(%rax), %rax	# msa_2(D)->sa, D.7916
	testq	%rax, %rax	# D.7916
	je	.L294	#,
	.loc 1 1404 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# msa, tmp72
	movq	120(%rax), %rax	# msa_2(D)->sa, D.7916
	movl	-12(%rbp), %edx	# idx, tmp73
	movslq	%edx, %rdx	# tmp73, D.7917
	salq	$3, %rdx	#, D.7917
	addq	%rdx, %rax	# D.7917, D.7916
	movq	(%rax), %rax	# *_8, D.7915
	testq	%rax, %rax	# D.7915
	je	.L294	#,
	.loc 1 1405 0 is_stmt 1
	movq	-8(%rbp), %rax	# msa, tmp74
	movq	120(%rax), %rax	# msa_2(D)->sa, D.7916
	movl	-12(%rbp), %edx	# idx, tmp75
	movslq	%edx, %rdx	# tmp75, D.7917
	salq	$3, %rdx	#, D.7917
	addq	%rdx, %rax	# D.7917, D.7916
	movq	(%rax), %rax	# *_13, D.7915
	jmp	.L295	#
.L294:
	.loc 1 1407 0
	movl	$0, %eax	#, D.7915
.L295:
	.loc 1 1408 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE32:
	.size	MSAGetSeqSA, .-MSAGetSeqSA
	.globl	MSAAverageSequenceLength
	.type	MSAAverageSequenceLength, @function
MSAAverageSequenceLength:
.LFB33:
	.loc 1 1429 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# msa, msa
	.loc 1 1433 0
	movl	.LC2(%rip), %eax	#, tmp72
	movl	%eax, -4(%rbp)	# tmp72, avg
	.loc 1 1434 0
	movl	$0, -8(%rbp)	#, i
	jmp	.L297	#
.L298:
	.loc 1 1435 0 discriminator 2
	movq	-24(%rbp), %rax	# msa, tmp73
	movq	(%rax), %rax	# msa_6(D)->aseq, D.7920
	movl	-8(%rbp), %edx	# i, tmp74
	movslq	%edx, %rdx	# tmp74, D.7921
	salq	$3, %rdx	#, D.7921
	addq	%rdx, %rax	# D.7921, D.7920
	movq	(%rax), %rax	# *_11, D.7922
	movq	%rax, %rdi	# D.7922,
	call	DealignedLength	#
	cvtsi2ss	%eax, %xmm0	# D.7919, D.7918
	movss	-4(%rbp), %xmm1	# avg, tmp76
	addss	%xmm1, %xmm0	# tmp76, tmp75
	movss	%xmm0, -4(%rbp)	# tmp75, avg
	.loc 1 1434 0 discriminator 2
	addl	$1, -8(%rbp)	#, i
.L297:
	.loc 1 1434 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# msa, tmp77
	movl	28(%rax), %eax	# msa_6(D)->nseq, D.7919
	cmpl	-8(%rbp), %eax	# i, D.7919
	jg	.L298	#,
	.loc 1 1437 0 is_stmt 1
	movq	-24(%rbp), %rax	# msa, tmp78
	movl	28(%rax), %eax	# msa_6(D)->nseq, D.7919
	testl	%eax, %eax	# D.7919
	jne	.L299	#,
	.loc 1 1437 0 is_stmt 0 discriminator 1
	movl	.LC2(%rip), %eax	#, D.7918
	jmp	.L300	#
.L299:
	.loc 1 1438 0 is_stmt 1
	movq	-24(%rbp), %rax	# msa, tmp79
	movl	28(%rax), %eax	# msa_6(D)->nseq, D.7919
	cvtsi2ss	%eax, %xmm0	# D.7919, D.7918
	movss	-4(%rbp), %xmm1	# avg, tmp80
	divss	%xmm0, %xmm1	# D.7918, D.7918
	movss	%xmm1, -28(%rbp)	# D.7918, %sfp
	movl	-28(%rbp), %eax	# %sfp, D.7918
.L300:
	.loc 1 1439 0
	movl	%eax, -28(%rbp)	# <retval>, %sfp
	movss	-28(%rbp), %xmm0	# %sfp,
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE33:
	.size	MSAAverageSequenceLength, .-MSAAverageSequenceLength
	.section	.rodata
	.align 4
.LC1:
	.long	3212836864
	.align 4
.LC2:
	.long	0
	.align 4
.LC15:
	.long	1065353216
	.text
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/include/stdio.h"
	.file 5 "/usr/include/libio.h"
	.file 6 "squid.h"
	.file 7 "gki.h"
	.file 8 "ssi.h"
	.file 9 "msa.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x145e
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF179
	.byte	0x1
	.long	.LASF180
	.long	.LASF181
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
	.long	.LASF182
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
	.long	0x62
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
	.byte	0x28
	.long	0x46
	.uleb128 0x2
	.long	.LASF52
	.byte	0x6
	.byte	0x29
	.long	0x4d
	.uleb128 0x2
	.long	.LASF53
	.byte	0x6
	.byte	0x2a
	.long	0x29f
	.uleb128 0xd
	.long	.LASF54
	.value	0x168
	.byte	0x6
	.byte	0x54
	.long	0x377
	.uleb128 0x8
	.long	.LASF55
	.byte	0x6
	.byte	0x55
	.long	0x62
	.byte	0
	.uleb128 0x8
	.long	.LASF56
	.byte	0x6
	.byte	0x56
	.long	0x377
	.byte	0x4
	.uleb128 0xe
	.string	"id"
	.byte	0x6
	.byte	0x57
	.long	0x377
	.byte	0x44
	.uleb128 0xe
	.string	"acc"
	.byte	0x6
	.byte	0x58
	.long	0x377
	.byte	0x84
	.uleb128 0x8
	.long	.LASF57
	.byte	0x6
	.byte	0x59
	.long	0x387
	.byte	0xc4
	.uleb128 0xf
	.string	"len"
	.byte	0x6
	.byte	0x5a
	.long	0x62
	.value	0x144
	.uleb128 0x10
	.long	.LASF58
	.byte	0x6
	.byte	0x5b
	.long	0x62
	.value	0x148
	.uleb128 0x10
	.long	.LASF59
	.byte	0x6
	.byte	0x5c
	.long	0x62
	.value	0x14c
	.uleb128 0x10
	.long	.LASF60
	.byte	0x6
	.byte	0x5d
	.long	0x62
	.value	0x150
	.uleb128 0x10
	.long	.LASF61
	.byte	0x6
	.byte	0x5e
	.long	0x62
	.value	0x154
	.uleb128 0xf
	.string	"ss"
	.byte	0x6
	.byte	0x5f
	.long	0x8f
	.value	0x158
	.uleb128 0xf
	.string	"sa"
	.byte	0x6
	.byte	0x60
	.long	0x8f
	.value	0x160
	.byte	0
	.uleb128 0xb
	.long	0x95
	.long	0x387
	.uleb128 0xc
	.long	0x86
	.byte	0x3f
	.byte	0
	.uleb128 0xb
	.long	0x95
	.long	0x397
	.uleb128 0xc
	.long	0x86
	.byte	0x7f
	.byte	0
	.uleb128 0x7
	.long	.LASF62
	.byte	0x18
	.byte	0x7
	.byte	0x1a
	.long	0x3c8
	.uleb128 0xe
	.string	"key"
	.byte	0x7
	.byte	0x1b
	.long	0x8f
	.byte	0
	.uleb128 0xe
	.string	"idx"
	.byte	0x7
	.byte	0x1c
	.long	0x62
	.byte	0x8
	.uleb128 0xe
	.string	"nxt"
	.byte	0x7
	.byte	0x1d
	.long	0x3c8
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x397
	.uleb128 0x11
	.byte	0x18
	.byte	0x7
	.byte	0x24
	.long	0x407
	.uleb128 0x8
	.long	.LASF63
	.byte	0x7
	.byte	0x25
	.long	0x407
	.byte	0
	.uleb128 0x8
	.long	.LASF64
	.byte	0x7
	.byte	0x27
	.long	0x62
	.byte	0x8
	.uleb128 0x8
	.long	.LASF65
	.byte	0x7
	.byte	0x28
	.long	0x62
	.byte	0xc
	.uleb128 0x8
	.long	.LASF66
	.byte	0x7
	.byte	0x29
	.long	0x62
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x3c8
	.uleb128 0x12
	.string	"GKI"
	.byte	0x7
	.byte	0x2a
	.long	0x3ce
	.uleb128 0x13
	.byte	0x8
	.byte	0x8
	.byte	0x25
	.long	0x437
	.uleb128 0x14
	.string	"i32"
	.byte	0x8
	.byte	0x26
	.long	0x2bf
	.uleb128 0x14
	.string	"i64"
	.byte	0x8
	.byte	0x27
	.long	0x2ca
	.byte	0
	.uleb128 0x7
	.long	.LASF67
	.byte	0x10
	.byte	0x8
	.byte	0x23
	.long	0x45c
	.uleb128 0x8
	.long	.LASF68
	.byte	0x8
	.byte	0x24
	.long	0x95
	.byte	0
	.uleb128 0xe
	.string	"off"
	.byte	0x8
	.byte	0x28
	.long	0x418
	.byte	0x8
	.byte	0
	.uleb128 0x2
	.long	.LASF69
	.byte	0x8
	.byte	0x2a
	.long	0x437
	.uleb128 0x7
	.long	.LASF70
	.byte	0x90
	.byte	0x8
	.byte	0x31
	.long	0x56f
	.uleb128 0xe
	.string	"fp"
	.byte	0x8
	.byte	0x32
	.long	0x56f
	.byte	0
	.uleb128 0x8
	.long	.LASF55
	.byte	0x8
	.byte	0x33
	.long	0x2bf
	.byte	0x8
	.uleb128 0x8
	.long	.LASF71
	.byte	0x8
	.byte	0x34
	.long	0x2b4
	.byte	0xc
	.uleb128 0x8
	.long	.LASF72
	.byte	0x8
	.byte	0x35
	.long	0x2bf
	.byte	0x10
	.uleb128 0x8
	.long	.LASF73
	.byte	0x8
	.byte	0x36
	.long	0x2bf
	.byte	0x14
	.uleb128 0x8
	.long	.LASF74
	.byte	0x8
	.byte	0x37
	.long	0x2bf
	.byte	0x18
	.uleb128 0x8
	.long	.LASF75
	.byte	0x8
	.byte	0x38
	.long	0x2bf
	.byte	0x1c
	.uleb128 0x8
	.long	.LASF76
	.byte	0x8
	.byte	0x39
	.long	0x2bf
	.byte	0x20
	.uleb128 0x8
	.long	.LASF77
	.byte	0x8
	.byte	0x3a
	.long	0x2bf
	.byte	0x24
	.uleb128 0x8
	.long	.LASF78
	.byte	0x8
	.byte	0x3b
	.long	0x2bf
	.byte	0x28
	.uleb128 0x8
	.long	.LASF79
	.byte	0x8
	.byte	0x3c
	.long	0x2bf
	.byte	0x2c
	.uleb128 0x8
	.long	.LASF80
	.byte	0x8
	.byte	0x3d
	.long	0x45c
	.byte	0x30
	.uleb128 0x8
	.long	.LASF81
	.byte	0x8
	.byte	0x3e
	.long	0x45c
	.byte	0x40
	.uleb128 0x8
	.long	.LASF82
	.byte	0x8
	.byte	0x3f
	.long	0x45c
	.byte	0x50
	.uleb128 0x8
	.long	.LASF83
	.byte	0x8
	.byte	0x41
	.long	0x95
	.byte	0x60
	.uleb128 0x8
	.long	.LASF84
	.byte	0x8
	.byte	0x42
	.long	0x95
	.byte	0x61
	.uleb128 0x8
	.long	.LASF85
	.byte	0x8
	.byte	0x46
	.long	0x575
	.byte	0x68
	.uleb128 0x8
	.long	.LASF86
	.byte	0x8
	.byte	0x47
	.long	0x57b
	.byte	0x70
	.uleb128 0x8
	.long	.LASF87
	.byte	0x8
	.byte	0x48
	.long	0x57b
	.byte	0x78
	.uleb128 0xe
	.string	"bpl"
	.byte	0x8
	.byte	0x49
	.long	0x57b
	.byte	0x80
	.uleb128 0xe
	.string	"rpl"
	.byte	0x8
	.byte	0x4a
	.long	0x57b
	.byte	0x88
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x9c
	.uleb128 0x6
	.byte	0x8
	.long	0x8f
	.uleb128 0x6
	.byte	0x8
	.long	0x2bf
	.uleb128 0x2
	.long	.LASF88
	.byte	0x8
	.byte	0x4c
	.long	0x467
	.uleb128 0x7
	.long	.LASF89
	.byte	0x68
	.byte	0x9
	.byte	0x41
	.long	0x662
	.uleb128 0x8
	.long	.LASF55
	.byte	0x9
	.byte	0x42
	.long	0x62
	.byte	0
	.uleb128 0x8
	.long	.LASF90
	.byte	0x9
	.byte	0x43
	.long	0x62
	.byte	0x4
	.uleb128 0x8
	.long	.LASF91
	.byte	0x9
	.byte	0x44
	.long	0x62
	.byte	0x8
	.uleb128 0xe
	.string	"wgt"
	.byte	0x9
	.byte	0x45
	.long	0x662
	.byte	0x10
	.uleb128 0xe
	.string	"cs"
	.byte	0x9
	.byte	0x46
	.long	0x8f
	.byte	0x18
	.uleb128 0xe
	.string	"rf"
	.byte	0x9
	.byte	0x47
	.long	0x8f
	.byte	0x20
	.uleb128 0x8
	.long	.LASF92
	.byte	0x9
	.byte	0x48
	.long	0x668
	.byte	0x28
	.uleb128 0x8
	.long	.LASF56
	.byte	0x9
	.byte	0x4b
	.long	0x8f
	.byte	0x30
	.uleb128 0x8
	.long	.LASF57
	.byte	0x9
	.byte	0x4c
	.long	0x8f
	.byte	0x38
	.uleb128 0xe
	.string	"acc"
	.byte	0x9
	.byte	0x4d
	.long	0x8f
	.byte	0x40
	.uleb128 0xe
	.string	"au"
	.byte	0x9
	.byte	0x4e
	.long	0x8f
	.byte	0x48
	.uleb128 0xe
	.string	"tc1"
	.byte	0x9
	.byte	0x4f
	.long	0x2a6
	.byte	0x50
	.uleb128 0xe
	.string	"tc2"
	.byte	0x9
	.byte	0x4f
	.long	0x2a6
	.byte	0x54
	.uleb128 0xe
	.string	"nc1"
	.byte	0x9
	.byte	0x50
	.long	0x2a6
	.byte	0x58
	.uleb128 0xe
	.string	"nc2"
	.byte	0x9
	.byte	0x50
	.long	0x2a6
	.byte	0x5c
	.uleb128 0xe
	.string	"ga1"
	.byte	0x9
	.byte	0x51
	.long	0x2a6
	.byte	0x60
	.uleb128 0xe
	.string	"ga2"
	.byte	0x9
	.byte	0x51
	.long	0x2a6
	.byte	0x64
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x2a6
	.uleb128 0x6
	.byte	0x8
	.long	0x2d5
	.uleb128 0x2
	.long	.LASF93
	.byte	0x9
	.byte	0x53
	.long	0x58c
	.uleb128 0xd
	.long	.LASF94
	.value	0x168
	.byte	0x9
	.byte	0x70
	.long	0x8b5
	.uleb128 0x8
	.long	.LASF95
	.byte	0x9
	.byte	0x73
	.long	0x575
	.byte	0
	.uleb128 0x8
	.long	.LASF96
	.byte	0x9
	.byte	0x74
	.long	0x575
	.byte	0x8
	.uleb128 0xe
	.string	"wgt"
	.byte	0x9
	.byte	0x75
	.long	0x662
	.byte	0x10
	.uleb128 0x8
	.long	.LASF90
	.byte	0x9
	.byte	0x76
	.long	0x62
	.byte	0x18
	.uleb128 0x8
	.long	.LASF91
	.byte	0x9
	.byte	0x77
	.long	0x62
	.byte	0x1c
	.uleb128 0x8
	.long	.LASF55
	.byte	0x9
	.byte	0x7b
	.long	0x62
	.byte	0x20
	.uleb128 0x8
	.long	.LASF61
	.byte	0x9
	.byte	0x7c
	.long	0x62
	.byte	0x24
	.uleb128 0x8
	.long	.LASF56
	.byte	0x9
	.byte	0x7d
	.long	0x8f
	.byte	0x28
	.uleb128 0x8
	.long	.LASF57
	.byte	0x9
	.byte	0x7e
	.long	0x8f
	.byte	0x30
	.uleb128 0xe
	.string	"acc"
	.byte	0x9
	.byte	0x7f
	.long	0x8f
	.byte	0x38
	.uleb128 0xe
	.string	"au"
	.byte	0x9
	.byte	0x80
	.long	0x8f
	.byte	0x40
	.uleb128 0x8
	.long	.LASF97
	.byte	0x9
	.byte	0x81
	.long	0x8f
	.byte	0x48
	.uleb128 0x8
	.long	.LASF98
	.byte	0x9
	.byte	0x82
	.long	0x8f
	.byte	0x50
	.uleb128 0xe
	.string	"rf"
	.byte	0x9
	.byte	0x83
	.long	0x8f
	.byte	0x58
	.uleb128 0x8
	.long	.LASF99
	.byte	0x9
	.byte	0x84
	.long	0x575
	.byte	0x60
	.uleb128 0x8
	.long	.LASF100
	.byte	0x9
	.byte	0x85
	.long	0x575
	.byte	0x68
	.uleb128 0xe
	.string	"ss"
	.byte	0x9
	.byte	0x86
	.long	0x575
	.byte	0x70
	.uleb128 0xe
	.string	"sa"
	.byte	0x9
	.byte	0x87
	.long	0x575
	.byte	0x78
	.uleb128 0x8
	.long	.LASF101
	.byte	0x9
	.byte	0x88
	.long	0x8b5
	.byte	0x80
	.uleb128 0x8
	.long	.LASF102
	.byte	0x9
	.byte	0x89
	.long	0x8c5
	.byte	0x98
	.uleb128 0x8
	.long	.LASF103
	.byte	0x9
	.byte	0x90
	.long	0x575
	.byte	0xb0
	.uleb128 0x8
	.long	.LASF104
	.byte	0x9
	.byte	0x91
	.long	0x62
	.byte	0xb8
	.uleb128 0x8
	.long	.LASF105
	.byte	0x9
	.byte	0x92
	.long	0x62
	.byte	0xbc
	.uleb128 0x8
	.long	.LASF106
	.byte	0x9
	.byte	0x94
	.long	0x575
	.byte	0xc0
	.uleb128 0xe
	.string	"gf"
	.byte	0x9
	.byte	0x95
	.long	0x575
	.byte	0xc8
	.uleb128 0xe
	.string	"ngf"
	.byte	0x9
	.byte	0x96
	.long	0x62
	.byte	0xd0
	.uleb128 0x8
	.long	.LASF107
	.byte	0x9
	.byte	0x97
	.long	0x62
	.byte	0xd4
	.uleb128 0x8
	.long	.LASF108
	.byte	0x9
	.byte	0x99
	.long	0x575
	.byte	0xd8
	.uleb128 0xe
	.string	"gs"
	.byte	0x9
	.byte	0x9a
	.long	0x8d5
	.byte	0xe0
	.uleb128 0x8
	.long	.LASF109
	.byte	0x9
	.byte	0x9b
	.long	0x8db
	.byte	0xe8
	.uleb128 0xe
	.string	"ngs"
	.byte	0x9
	.byte	0x9c
	.long	0x62
	.byte	0xf0
	.uleb128 0x8
	.long	.LASF110
	.byte	0x9
	.byte	0x9e
	.long	0x575
	.byte	0xf8
	.uleb128 0xf
	.string	"gc"
	.byte	0x9
	.byte	0x9f
	.long	0x575
	.value	0x100
	.uleb128 0x10
	.long	.LASF111
	.byte	0x9
	.byte	0xa0
	.long	0x8db
	.value	0x108
	.uleb128 0xf
	.string	"ngc"
	.byte	0x9
	.byte	0xa1
	.long	0x62
	.value	0x110
	.uleb128 0x10
	.long	.LASF112
	.byte	0x9
	.byte	0xa3
	.long	0x575
	.value	0x118
	.uleb128 0xf
	.string	"gr"
	.byte	0x9
	.byte	0xa4
	.long	0x8d5
	.value	0x120
	.uleb128 0x10
	.long	.LASF113
	.byte	0x9
	.byte	0xa5
	.long	0x8db
	.value	0x128
	.uleb128 0xf
	.string	"ngr"
	.byte	0x9
	.byte	0xa6
	.long	0x62
	.value	0x130
	.uleb128 0x10
	.long	.LASF114
	.byte	0x9
	.byte	0xaa
	.long	0x8db
	.value	0x138
	.uleb128 0x10
	.long	.LASF115
	.byte	0x9
	.byte	0xab
	.long	0x62
	.value	0x140
	.uleb128 0x10
	.long	.LASF116
	.byte	0x9
	.byte	0xac
	.long	0x62
	.value	0x144
	.uleb128 0x10
	.long	.LASF117
	.byte	0x9
	.byte	0xad
	.long	0x292
	.value	0x148
	.uleb128 0x10
	.long	.LASF118
	.byte	0x9
	.byte	0xae
	.long	0x292
	.value	0x150
	.uleb128 0x10
	.long	.LASF119
	.byte	0x9
	.byte	0xaf
	.long	0x292
	.value	0x158
	.uleb128 0x10
	.long	.LASF120
	.byte	0x9
	.byte	0xb0
	.long	0x62
	.value	0x160
	.byte	0
	.uleb128 0xb
	.long	0x2a6
	.long	0x8c5
	.uleb128 0xc
	.long	0x86
	.byte	0x5
	.byte	0
	.uleb128 0xb
	.long	0x62
	.long	0x8d5
	.uleb128 0xc
	.long	0x86
	.byte	0x5
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x575
	.uleb128 0x6
	.byte	0x8
	.long	0x40d
	.uleb128 0x12
	.string	"MSA"
	.byte	0x9
	.byte	0xb1
	.long	0x679
	.uleb128 0x7
	.long	.LASF121
	.byte	0x40
	.byte	0x9
	.byte	0xba
	.long	0x963
	.uleb128 0xe
	.string	"f"
	.byte	0x9
	.byte	0xbb
	.long	0x56f
	.byte	0
	.uleb128 0x8
	.long	.LASF122
	.byte	0x9
	.byte	0xbc
	.long	0x8f
	.byte	0x8
	.uleb128 0x8
	.long	.LASF123
	.byte	0x9
	.byte	0xbd
	.long	0x62
	.byte	0x10
	.uleb128 0xe
	.string	"buf"
	.byte	0x9
	.byte	0xbf
	.long	0x8f
	.byte	0x18
	.uleb128 0x8
	.long	.LASF124
	.byte	0x9
	.byte	0xc0
	.long	0x62
	.byte	0x20
	.uleb128 0xe
	.string	"ssi"
	.byte	0x9
	.byte	0xc2
	.long	0x963
	.byte	0x28
	.uleb128 0x8
	.long	.LASF125
	.byte	0x9
	.byte	0xc4
	.long	0x62
	.byte	0x30
	.uleb128 0x8
	.long	.LASF126
	.byte	0x9
	.byte	0xc5
	.long	0x62
	.byte	0x34
	.uleb128 0x8
	.long	.LASF127
	.byte	0x9
	.byte	0xc6
	.long	0x62
	.byte	0x38
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x581
	.uleb128 0x2
	.long	.LASF128
	.byte	0x9
	.byte	0xc7
	.long	0x8ec
	.uleb128 0x6
	.byte	0x8
	.long	0x8e1
	.uleb128 0x6
	.byte	0x8
	.long	0x969
	.uleb128 0x15
	.long	.LASF141
	.byte	0x1
	.byte	0x3f
	.long	0x974
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x9d8
	.uleb128 0x16
	.long	.LASF91
	.byte	0x1
	.byte	0x3f
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x16
	.long	.LASF90
	.byte	0x1
	.byte	0x3f
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x17
	.string	"msa"
	.byte	0x1
	.byte	0x41
	.long	0x974
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x17
	.string	"i"
	.byte	0x1
	.byte	0x42
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x18
	.long	.LASF129
	.byte	0x1
	.byte	0x9c
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0xa1c
	.uleb128 0x19
	.string	"msa"
	.byte	0x1
	.byte	0x9c
	.long	0x974
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x17
	.string	"i"
	.byte	0x1
	.byte	0x9e
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x17
	.string	"j"
	.byte	0x1
	.byte	0x9e
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x18
	.long	.LASF130
	.byte	0x1
	.byte	0xfb
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0xa48
	.uleb128 0x19
	.string	"msa"
	.byte	0x1
	.byte	0xfb
	.long	0x974
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1a
	.long	.LASF131
	.byte	0x1
	.value	0x131
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0xaa2
	.uleb128 0x1b
	.string	"msa"
	.byte	0x1
	.value	0x131
	.long	0x974
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1c
	.long	.LASF132
	.byte	0x1
	.value	0x131
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1b
	.string	"acc"
	.byte	0x1
	.value	0x131
	.long	0x8f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1d
	.string	"x"
	.byte	0x1
	.value	0x133
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x1a
	.long	.LASF133
	.byte	0x1
	.value	0x14a
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0xafc
	.uleb128 0x1b
	.string	"msa"
	.byte	0x1
	.value	0x14a
	.long	0x974
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1c
	.long	.LASF132
	.byte	0x1
	.value	0x14a
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1c
	.long	.LASF57
	.byte	0x1
	.value	0x14a
	.long	0x8f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1d
	.string	"x"
	.byte	0x1
	.value	0x14c
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x1a
	.long	.LASF134
	.byte	0x1
	.value	0x163
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0xb37
	.uleb128 0x1b
	.string	"msa"
	.byte	0x1
	.value	0x163
	.long	0x974
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1b
	.string	"s"
	.byte	0x1
	.value	0x163
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x1a
	.long	.LASF135
	.byte	0x1
	.value	0x184
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0xb83
	.uleb128 0x1b
	.string	"msa"
	.byte	0x1
	.value	0x184
	.long	0x974
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1b
	.string	"tag"
	.byte	0x1
	.value	0x184
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1c
	.long	.LASF136
	.byte	0x1
	.value	0x184
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x1a
	.long	.LASF137
	.byte	0x1
	.value	0x1b1
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0xc1d
	.uleb128 0x1b
	.string	"msa"
	.byte	0x1
	.value	0x1b1
	.long	0x974
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1b
	.string	"tag"
	.byte	0x1
	.value	0x1b1
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1c
	.long	.LASF138
	.byte	0x1
	.value	0x1b1
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x1c
	.long	.LASF136
	.byte	0x1
	.value	0x1b1
	.long	0x8f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1e
	.long	.LASF139
	.byte	0x1
	.value	0x1b3
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1d
	.string	"i"
	.byte	0x1
	.value	0x1b4
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1f
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x1d
	.string	"len"
	.byte	0x1
	.value	0x1e0
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.byte	0
	.uleb128 0x1a
	.long	.LASF140
	.byte	0x1
	.value	0x1fb
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0xc79
	.uleb128 0x1b
	.string	"msa"
	.byte	0x1
	.value	0x1fb
	.long	0x974
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1b
	.string	"tag"
	.byte	0x1
	.value	0x1fb
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1c
	.long	.LASF136
	.byte	0x1
	.value	0x1fb
	.long	0x8f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1e
	.long	.LASF139
	.byte	0x1
	.value	0x1fd
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x20
	.long	.LASF142
	.byte	0x1
	.value	0x231
	.long	0x8f
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0xcc9
	.uleb128 0x1b
	.string	"msa"
	.byte	0x1
	.value	0x231
	.long	0x974
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1b
	.string	"tag"
	.byte	0x1
	.value	0x231
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1e
	.long	.LASF139
	.byte	0x1
	.value	0x233
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1a
	.long	.LASF143
	.byte	0x1
	.value	0x24e
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0xd42
	.uleb128 0x1b
	.string	"msa"
	.byte	0x1
	.value	0x24e
	.long	0x974
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1b
	.string	"tag"
	.byte	0x1
	.value	0x24e
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1c
	.long	.LASF138
	.byte	0x1
	.value	0x24e
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x1c
	.long	.LASF136
	.byte	0x1
	.value	0x24e
	.long	0x8f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1e
	.long	.LASF139
	.byte	0x1
	.value	0x250
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1d
	.string	"i"
	.byte	0x1
	.value	0x251
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x1a
	.long	.LASF144
	.byte	0x1
	.value	0x296
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0xd7f
	.uleb128 0x1b
	.string	"msa"
	.byte	0x1
	.value	0x296
	.long	0x974
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1d
	.string	"idx"
	.byte	0x1
	.value	0x298
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x20
	.long	.LASF145
	.byte	0x1
	.value	0x2f4
	.long	0x97a
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0xe32
	.uleb128 0x1c
	.long	.LASF85
	.byte	0x1
	.value	0x2f4
	.long	0x8f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1c
	.long	.LASF127
	.byte	0x1
	.value	0x2f4
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x1b
	.string	"env"
	.byte	0x1
	.value	0x2f4
	.long	0x8f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x1d
	.string	"afp"
	.byte	0x1
	.value	0x2f6
	.long	0x97a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1f
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x1e
	.long	.LASF146
	.byte	0x1
	.value	0x31d
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1d
	.string	"dir"
	.byte	0x1
	.value	0x31e
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1f
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.uleb128 0x1e
	.long	.LASF147
	.byte	0x1
	.value	0x32b
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x20
	.long	.LASF148
	.byte	0x1
	.value	0x369
	.long	0x62
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0xe64
	.uleb128 0x1b
	.string	"afp"
	.byte	0x1
	.value	0x369
	.long	0x97a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x20
	.long	.LASF149
	.byte	0x1
	.value	0x370
	.long	0x62
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0xec2
	.uleb128 0x1b
	.string	"afp"
	.byte	0x1
	.value	0x370
	.long	0x97a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1b
	.string	"key"
	.byte	0x1
	.value	0x370
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1d
	.string	"fh"
	.byte	0x1
	.value	0x372
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1e
	.long	.LASF150
	.byte	0x1
	.value	0x373
	.long	0x45c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x20
	.long	.LASF151
	.byte	0x1
	.value	0x37b
	.long	0x62
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0xf20
	.uleb128 0x1b
	.string	"afp"
	.byte	0x1
	.value	0x37b
	.long	0x97a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1b
	.string	"idx"
	.byte	0x1
	.value	0x37b
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1d
	.string	"fh"
	.byte	0x1
	.value	0x37d
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1e
	.long	.LASF150
	.byte	0x1
	.value	0x37e
	.long	0x45c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x20
	.long	.LASF152
	.byte	0x1
	.value	0x392
	.long	0x974
	.quad	.LFB18
	.quad	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0xf61
	.uleb128 0x1b
	.string	"afp"
	.byte	0x1
	.value	0x392
	.long	0x97a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1d
	.string	"msa"
	.byte	0x1
	.value	0x394
	.long	0x974
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1a
	.long	.LASF153
	.byte	0x1
	.value	0x3ad
	.quad	.LFB19
	.quad	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0xf8f
	.uleb128 0x1b
	.string	"afp"
	.byte	0x1
	.value	0x3ad
	.long	0x97a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x20
	.long	.LASF154
	.byte	0x1
	.value	0x3bb
	.long	0x8f
	.quad	.LFB20
	.quad	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0xfce
	.uleb128 0x1b
	.string	"afp"
	.byte	0x1
	.value	0x3bb
	.long	0x97a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1d
	.string	"s"
	.byte	0x1
	.value	0x3bd
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1a
	.long	.LASF155
	.byte	0x1
	.value	0x3c5
	.quad	.LFB21
	.quad	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.long	0x1028
	.uleb128 0x1b
	.string	"fp"
	.byte	0x1
	.value	0x3c5
	.long	0x56f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1b
	.string	"msa"
	.byte	0x1
	.value	0x3c5
	.long	0x974
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1c
	.long	.LASF156
	.byte	0x1
	.value	0x3c5
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1c
	.long	.LASF157
	.byte	0x1
	.value	0x3c5
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x20
	.long	.LASF158
	.byte	0x1
	.value	0x3e9
	.long	0x62
	.quad	.LFB22
	.quad	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.long	0x1088
	.uleb128 0x1b
	.string	"msa"
	.byte	0x1
	.value	0x3e9
	.long	0x974
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1c
	.long	.LASF56
	.byte	0x1
	.value	0x3e9
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1c
	.long	.LASF159
	.byte	0x1
	.value	0x3e9
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x1e
	.long	.LASF132
	.byte	0x1
	.value	0x3eb
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x20
	.long	.LASF160
	.byte	0x1
	.value	0x409
	.long	0x974
	.quad	.LFB23
	.quad	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.long	0x10f2
	.uleb128 0x1c
	.long	.LASF95
	.byte	0x1
	.value	0x409
	.long	0x575
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1c
	.long	.LASF161
	.byte	0x1
	.value	0x409
	.long	0x10f2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1d
	.string	"msa"
	.byte	0x1
	.value	0x40b
	.long	0x974
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1d
	.string	"i"
	.byte	0x1
	.value	0x40c
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1d
	.string	"j"
	.byte	0x1
	.value	0x40c
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x66e
	.uleb128 0x20
	.long	.LASF162
	.byte	0x1
	.value	0x462
	.long	0x62
	.quad	.LFB24
	.quad	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.long	0x1139
	.uleb128 0x1b
	.string	"afp"
	.byte	0x1
	.value	0x462
	.long	0x97a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1d
	.string	"fmt"
	.byte	0x1
	.value	0x464
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1a
	.long	.LASF163
	.byte	0x1
	.value	0x47f
	.quad	.LFB25
	.quad	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.long	0x1194
	.uleb128 0x1b
	.string	"msa"
	.byte	0x1
	.value	0x47f
	.long	0x974
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1e
	.long	.LASF164
	.byte	0x1
	.value	0x481
	.long	0x292
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1e
	.long	.LASF165
	.byte	0x1
	.value	0x482
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1d
	.string	"idx"
	.byte	0x1
	.value	0x483
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x1a
	.long	.LASF166
	.byte	0x1
	.value	0x49f
	.quad	.LFB26
	.quad	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.long	0x11ef
	.uleb128 0x1b
	.string	"msa"
	.byte	0x1
	.value	0x49f
	.long	0x974
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1e
	.long	.LASF164
	.byte	0x1
	.value	0x4a1
	.long	0x292
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1e
	.long	.LASF165
	.byte	0x1
	.value	0x4a2
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1d
	.string	"idx"
	.byte	0x1
	.value	0x4a3
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x21
	.long	.LASF167
	.byte	0x1
	.value	0x4c3
	.quad	.LFB27
	.quad	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.long	0x1266
	.uleb128 0x1b
	.string	"msa"
	.byte	0x1
	.value	0x4c3
	.long	0x974
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1c
	.long	.LASF164
	.byte	0x1
	.value	0x4c3
	.long	0x292
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1e
	.long	.LASF165
	.byte	0x1
	.value	0x4c5
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1e
	.long	.LASF168
	.byte	0x1
	.value	0x4c6
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1d
	.string	"idx"
	.byte	0x1
	.value	0x4c7
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1d
	.string	"i"
	.byte	0x1
	.value	0x4c8
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1a
	.long	.LASF169
	.byte	0x1
	.value	0x51a
	.quad	.LFB28
	.quad	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.long	0x12fe
	.uleb128 0x1b
	.string	"msa"
	.byte	0x1
	.value	0x51a
	.long	0x974
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1c
	.long	.LASF164
	.byte	0x1
	.value	0x51a
	.long	0x292
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1c
	.long	.LASF170
	.byte	0x1
	.value	0x51a
	.long	0x12fe
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x1d
	.string	"new"
	.byte	0x1
	.value	0x51c
	.long	0x974
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1e
	.long	.LASF171
	.byte	0x1
	.value	0x51d
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1e
	.long	.LASF172
	.byte	0x1
	.value	0x51e
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1e
	.long	.LASF173
	.byte	0x1
	.value	0x51e
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1d
	.string	"i"
	.byte	0x1
	.value	0x51f
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x974
	.uleb128 0x22
	.long	.LASF174
	.byte	0x1
	.value	0x562
	.long	0x8f
	.quad	.LFB29
	.quad	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.long	0x1345
	.uleb128 0x1b
	.string	"msa"
	.byte	0x1
	.value	0x562
	.long	0x974
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1b
	.string	"idx"
	.byte	0x1
	.value	0x562
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x22
	.long	.LASF175
	.byte	0x1
	.value	0x56a
	.long	0x8f
	.quad	.LFB30
	.quad	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.long	0x1386
	.uleb128 0x1b
	.string	"msa"
	.byte	0x1
	.value	0x56a
	.long	0x974
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1b
	.string	"idx"
	.byte	0x1
	.value	0x56a
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x22
	.long	.LASF176
	.byte	0x1
	.value	0x572
	.long	0x8f
	.quad	.LFB31
	.quad	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.long	0x13c7
	.uleb128 0x1b
	.string	"msa"
	.byte	0x1
	.value	0x572
	.long	0x974
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1b
	.string	"idx"
	.byte	0x1
	.value	0x572
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x22
	.long	.LASF177
	.byte	0x1
	.value	0x57a
	.long	0x8f
	.quad	.LFB32
	.quad	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.long	0x1408
	.uleb128 0x1b
	.string	"msa"
	.byte	0x1
	.value	0x57a
	.long	0x974
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1b
	.string	"idx"
	.byte	0x1
	.value	0x57a
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x20
	.long	.LASF178
	.byte	0x1
	.value	0x594
	.long	0x2a6
	.quad	.LFB33
	.quad	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.long	0x1456
	.uleb128 0x1b
	.string	"msa"
	.byte	0x1
	.value	0x594
	.long	0x974
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1d
	.string	"i"
	.byte	0x1
	.value	0x596
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1d
	.string	"avg"
	.byte	0x1
	.value	0x597
	.long	0x2a6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x23
	.long	.LASF183
	.byte	0x4
	.byte	0xa8
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
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x17
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
	.uleb128 0x17
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
.LASF171:
	.string	"nnew"
.LASF138:
	.string	"sqidx"
.LASF180:
	.string	"msa.c"
.LASF14:
	.string	"_IO_read_ptr"
.LASF128:
	.string	"MSAFILE"
.LASF7:
	.string	"size_t"
.LASF52:
	.string	"sqd_uint32"
.LASF82:
	.string	"soffset"
.LASF175:
	.string	"MSAGetSeqDescription"
.LASF32:
	.string	"_shortbuf"
.LASF102:
	.string	"cutoff_is_set"
.LASF168:
	.string	"mpos"
.LASF144:
	.string	"MSAVerifyParse"
.LASF54:
	.string	"seqinfo_s"
.LASF61:
	.string	"type"
.LASF100:
	.string	"sqdesc"
.LASF110:
	.string	"gc_tag"
.LASF107:
	.string	"alloc_ngf"
.LASF91:
	.string	"nseq"
.LASF48:
	.string	"long long unsigned int"
.LASF76:
	.string	"slen"
.LASF151:
	.string	"MSAFilePositionByIndex"
.LASF156:
	.string	"outfmt"
.LASF75:
	.string	"plen"
.LASF71:
	.string	"nfiles"
.LASF88:
	.string	"SSIFILE"
.LASF108:
	.string	"gs_tag"
.LASF73:
	.string	"nsecondary"
.LASF4:
	.string	"signed char"
.LASF77:
	.string	"frecsize"
.LASF139:
	.string	"tagidx"
.LASF163:
	.string	"MSAMingap"
.LASF133:
	.string	"MSASetSeqDescription"
.LASF140:
	.string	"MSAAppendGC"
.LASF15:
	.string	"_IO_read_end"
.LASF182:
	.string	"_IO_lock_t"
.LASF27:
	.string	"_fileno"
.LASF105:
	.string	"alloc_ncomment"
.LASF6:
	.string	"long int"
.LASF153:
	.string	"MSAFileClose"
.LASF13:
	.string	"_flags"
.LASF12:
	.string	"FILE"
.LASF92:
	.string	"sqinfo"
.LASF64:
	.string	"primelevel"
.LASF47:
	.string	"long long int"
.LASF60:
	.string	"olen"
.LASF29:
	.string	"_old_offset"
.LASF34:
	.string	"_offset"
.LASF134:
	.string	"MSAAddComment"
.LASF116:
	.string	"nseqlump"
.LASF129:
	.string	"MSAExpand"
.LASF90:
	.string	"alen"
.LASF99:
	.string	"sqacc"
.LASF174:
	.string	"MSAGetSeqAccession"
.LASF146:
	.string	"ssifile"
.LASF81:
	.string	"poffset"
.LASF94:
	.string	"msa_struct"
.LASF142:
	.string	"MSAGetGC"
.LASF136:
	.string	"value"
.LASF43:
	.string	"_IO_marker"
.LASF183:
	.string	"stdin"
.LASF84:
	.string	"smode"
.LASF3:
	.string	"unsigned int"
.LASF155:
	.string	"MSAFileWrite"
.LASF119:
	.string	"salen"
.LASF120:
	.string	"lastidx"
.LASF70:
	.string	"ssifile_s"
.LASF0:
	.string	"long unsigned int"
.LASF118:
	.string	"sslen"
.LASF18:
	.string	"_IO_write_ptr"
.LASF56:
	.string	"name"
.LASF45:
	.string	"_sbuf"
.LASF165:
	.string	"apos"
.LASF121:
	.string	"msafile_struct"
.LASF2:
	.string	"short unsigned int"
.LASF46:
	.string	"_pos"
.LASF159:
	.string	"guess"
.LASF22:
	.string	"_IO_save_base"
.LASF74:
	.string	"flen"
.LASF103:
	.string	"comment"
.LASF178:
	.string	"MSAAverageSequenceLength"
.LASF33:
	.string	"_lock"
.LASF28:
	.string	"_flags2"
.LASF132:
	.string	"seqidx"
.LASF122:
	.string	"fname"
.LASF97:
	.string	"ss_cons"
.LASF143:
	.string	"MSAAppendGR"
.LASF172:
	.string	"oidx"
.LASF111:
	.string	"gc_idx"
.LASF10:
	.string	"sizetype"
.LASF154:
	.string	"MSAFileGetLine"
.LASF126:
	.string	"do_stdin"
.LASF112:
	.string	"gr_tag"
.LASF95:
	.string	"aseq"
.LASF85:
	.string	"filename"
.LASF93:
	.string	"AINFO"
.LASF57:
	.string	"desc"
.LASF19:
	.string	"_IO_write_end"
.LASF80:
	.string	"foffset"
.LASF167:
	.string	"MSAShorterAlignment"
.LASF169:
	.string	"MSASmallerAlignment"
.LASF109:
	.string	"gs_idx"
.LASF42:
	.string	"_IO_FILE"
.LASF148:
	.string	"MSAFileRewind"
.LASF87:
	.string	"fileflags"
.LASF115:
	.string	"nseqalloc"
.LASF117:
	.string	"sqlen"
.LASF8:
	.string	"__off_t"
.LASF53:
	.string	"sqd_uint64"
.LASF40:
	.string	"_mode"
.LASF49:
	.string	"float"
.LASF125:
	.string	"do_gzip"
.LASF161:
	.string	"ainfo"
.LASF25:
	.string	"_markers"
.LASF149:
	.string	"MSAFilePositionByKey"
.LASF162:
	.string	"MSAFileFormat"
.LASF123:
	.string	"linenumber"
.LASF1:
	.string	"unsigned char"
.LASF21:
	.string	"_IO_buf_end"
.LASF72:
	.string	"nprimary"
.LASF177:
	.string	"MSAGetSeqSA"
.LASF145:
	.string	"MSAFileOpen"
.LASF66:
	.string	"nkeys"
.LASF26:
	.string	"_chain"
.LASF63:
	.string	"table"
.LASF31:
	.string	"_vtable_offset"
.LASF51:
	.string	"sqd_uint16"
.LASF176:
	.string	"MSAGetSeqSS"
.LASF124:
	.string	"buflen"
.LASF127:
	.string	"format"
.LASF59:
	.string	"stop"
.LASF147:
	.string	"full"
.LASF78:
	.string	"precsize"
.LASF83:
	.string	"imode"
.LASF164:
	.string	"useme"
.LASF11:
	.string	"char"
.LASF131:
	.string	"MSASetSeqAccession"
.LASF68:
	.string	"mode"
.LASF62:
	.string	"gki_elem"
.LASF67:
	.string	"ssioffset_s"
.LASF173:
	.string	"nidx"
.LASF114:
	.string	"index"
.LASF5:
	.string	"short int"
.LASF101:
	.string	"cutoff"
.LASF98:
	.string	"sa_cons"
.LASF160:
	.string	"MSAFromAINFO"
.LASF86:
	.string	"fileformat"
.LASF44:
	.string	"_next"
.LASF9:
	.string	"__off64_t"
.LASF150:
	.string	"offset"
.LASF30:
	.string	"_cur_column"
.LASF16:
	.string	"_IO_read_base"
.LASF24:
	.string	"_IO_save_end"
.LASF79:
	.string	"srecsize"
.LASF157:
	.string	"do_oneline"
.LASF104:
	.string	"ncomment"
.LASF170:
	.string	"ret_new"
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
.LASF41:
	.string	"_unused2"
.LASF166:
	.string	"MSANogap"
.LASF89:
	.string	"aliinfo_s"
.LASF179:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF23:
	.string	"_IO_backup_base"
.LASF55:
	.string	"flags"
.LASF96:
	.string	"sqname"
.LASF113:
	.string	"gr_idx"
.LASF141:
	.string	"MSAAlloc"
.LASF152:
	.string	"MSAFileRead"
.LASF135:
	.string	"MSAAddGF"
.LASF65:
	.string	"nhash"
.LASF158:
	.string	"MSAGetSeqidx"
.LASF181:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/456.hmmer/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF130:
	.string	"MSAFree"
.LASF58:
	.string	"start"
.LASF137:
	.string	"MSAAddGS"
.LASF106:
	.string	"gf_tag"
.LASF17:
	.string	"_IO_write_base"
.LASF20:
	.string	"_IO_buf_base"
.LASF50:
	.string	"double"
.LASF69:
	.string	"SSIOFFSET"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
