	.file	"approx_cont_mgau.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I . -I . -I libutil -imultiarch x86_64-linux-gnu
# -D SPEC_CPU -D NDEBUG -D SPEC_CPU -D HAVE_CONFIG_H -D SPEC_CPU_LP64
# approx_cont_mgau.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.globl	most_recent_best_cid
	.data
	.align 4
	.type	most_recent_best_cid, @object
	.size	most_recent_best_cid, 4
most_recent_best_cid:
	.long	-1
	.text
	.globl	approx_isskip
	.type	approx_isskip, @function
approx_isskip:
.LFB2:
	.file 1 "approx_cont_mgau.c"
	.loc 1 66 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)	# frame, frame
	movl	%esi, -8(%rbp)	# ds_ratio, ds_ratio
	movl	%edx, -12(%rbp)	# cond_ds, cond_ds
	movl	%ecx, -16(%rbp)	# isSameBestIdx, isSameBestIdx
	movq	%r8, -24(%rbp)	# skip_count, skip_count
	.loc 1 68 0
	cmpl	$0, -12(%rbp)	#, cond_ds
	jle	.L2	#,
	.loc 1 69 0
	cmpl	$0, -16(%rbp)	#, isSameBestIdx
	je	.L3	#,
	.loc 1 70 0
	movq	-24(%rbp), %rax	# skip_count, tmp65
	movl	(%rax), %eax	# *skip_count_4(D), D.6370
	movl	-8(%rbp), %edx	# ds_ratio, tmp66
	subl	$1, %edx	#, D.6370
	cmpl	%edx, %eax	# D.6370, D.6370
	jge	.L4	#,
	.loc 1 71 0
	movq	-24(%rbp), %rax	# skip_count, skip_count.0
	addq	$4, %rax	#, tmp67
	movq	%rax, -24(%rbp)	# tmp67, skip_count
	.loc 1 72 0
	movl	$1, %eax	#, D.6369
	jmp	.L5	#
.L4:
	.loc 1 74 0
	movq	-24(%rbp), %rax	# skip_count, tmp68
	movl	$0, (%rax)	#, *skip_count_4(D)
	.loc 1 75 0
	movl	$0, %eax	#, D.6369
	jmp	.L5	#
.L3:
	.loc 1 79 0
	movl	$0, %eax	#, D.6369
	jmp	.L5	#
.L2:
	.loc 1 83 0
	movl	-4(%rbp), %eax	# frame, tmp69
	cltd
	idivl	-8(%rbp)	# ds_ratio
	movl	%edx, %eax	# tmp70, D.6370
	testl	%eax, %eax	# D.6370
	jne	.L6	#,
	.loc 1 84 0
	movl	$0, %eax	#, D.6369
	jmp	.L5	#
.L6:
	.loc 1 86 0
	movl	$1, %eax	#, D.6369
.L5:
	.loc 1 87 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	approx_isskip, .-approx_isskip
	.globl	approx_mgau_eval
	.type	approx_mgau_eval, @function
approx_mgau_eval:
.LFB3:
	.loc 1 117 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$72, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)	# gs, gs
	movq	%rsi, -48(%rbp)	# svq, svq
	movq	%rdx, -56(%rbp)	# g, g
	movq	%rcx, -64(%rbp)	# kb, kb
	movl	%r8d, -68(%rbp)	# s, s
	movq	%r9, -80(%rbp)	# senscr, senscr
	.loc 1 118 0
	movl	$0, -28(%rbp)	#, ng
	.loc 1 121 0
	cmpq	$0, -40(%rbp)	#, gs
	je	.L8	#,
	.loc 1 121 0 is_stmt 0 discriminator 1
	movq	-64(%rbp), %rax	# kb, tmp117
	movl	176(%rax), %eax	# kb_8(D)->gs4gs, D.6371
	testl	%eax, %eax	# D.6371
	je	.L8	#,
	.loc 1 122 0 is_stmt 1
	movq	-56(%rbp), %rax	# g, tmp118
	movq	16(%rax), %rcx	# g_10(D)->mgau, D.6372
	movl	-68(%rbp), %eax	# s, tmp119
	movslq	%eax, %rdx	# tmp119, D.6373
	movq	%rdx, %rax	# D.6373, tmp120
	salq	$2, %rax	#, tmp120
	addq	%rdx, %rax	# D.6373, tmp120
	salq	$3, %rax	#, tmp121
	addq	%rcx, %rax	# D.6372, D.6372
	movl	(%rax), %edx	# _15->n_comp, D.6371
	movl	24(%rbp), %ecx	# best_cid, tmp122
	movl	-68(%rbp), %esi	# s, tmp123
	movq	-40(%rbp), %rax	# gs, tmp124
	movl	%ecx, %r8d	# tmp122,
	movq	16(%rbp), %rcx	# feat,
	movq	%rax, %rdi	# tmp124,
	call	gs_mgau_shortlist	#
	movl	%eax, -28(%rbp)	# tmp125, ng
	.loc 1 123 0
	movq	-40(%rbp), %rax	# gs, tmp126
	movq	48(%rax), %rax	# gs_7(D)->mgau_sl, tmp127
	movq	%rax, -24(%rbp)	# tmp127, mgau_sl
	jmp	.L9	#
.L8:
	.loc 1 124 0
	cmpq	$0, -48(%rbp)	#, svq
	je	.L10	#,
	.loc 1 125 0
	movq	-56(%rbp), %rax	# g, tmp128
	movq	16(%rax), %rcx	# g_10(D)->mgau, D.6372
	movl	-68(%rbp), %eax	# s, tmp129
	movslq	%eax, %rdx	# tmp129, D.6373
	movq	%rdx, %rax	# D.6373, tmp130
	salq	$2, %rax	#, tmp130
	addq	%rdx, %rax	# D.6373, tmp130
	salq	$3, %rax	#, tmp131
	addq	%rcx, %rax	# D.6372, D.6372
	movl	(%rax), %edx	# _25->n_comp, D.6371
	movl	32(%rbp), %ecx	# svq_beam, tmp132
	movl	-68(%rbp), %esi	# s, tmp133
	movq	-48(%rbp), %rax	# svq, tmp134
	movq	%rax, %rdi	# tmp134,
	call	subvq_mgau_shortlist	#
	movl	%eax, -28(%rbp)	# tmp135, ng
	.loc 1 126 0
	movq	-48(%rbp), %rax	# svq, tmp136
	movq	64(%rax), %rax	# svq_21(D)->mgau_sl, tmp137
	movq	%rax, -24(%rbp)	# tmp137, mgau_sl
	jmp	.L9	#
.L10:
	.loc 1 128 0
	movq	-56(%rbp), %rax	# g, tmp138
	movq	16(%rax), %rcx	# g_10(D)->mgau, D.6372
	movl	-68(%rbp), %eax	# s, tmp139
	movslq	%eax, %rdx	# tmp139, D.6373
	movq	%rdx, %rax	# D.6373, tmp140
	salq	$2, %rax	#, tmp140
	addq	%rdx, %rax	# D.6373, tmp140
	salq	$3, %rax	#, tmp141
	addq	%rcx, %rax	# D.6372, D.6372
	movl	(%rax), %eax	# _33->n_comp, tmp142
	movl	%eax, -28(%rbp)	# tmp142, ng
	.loc 1 129 0
	movq	$0, -24(%rbp)	#, mgau_sl
.L9:
	.loc 1 142 0
	cmpl	$0, -28(%rbp)	#, ng
	jne	.L11	#,
	.loc 1 145 0
	movq	$0, -24(%rbp)	#, mgau_sl
	.loc 1 146 0
	movq	-56(%rbp), %rax	# g, tmp143
	movq	16(%rax), %rcx	# g_10(D)->mgau, D.6372
	movl	-68(%rbp), %eax	# s, tmp144
	movslq	%eax, %rdx	# tmp144, D.6373
	movq	%rdx, %rax	# D.6373, tmp145
	salq	$2, %rax	#, tmp145
	addq	%rdx, %rax	# D.6373, tmp145
	salq	$3, %rax	#, tmp146
	addq	%rcx, %rax	# D.6372, D.6372
	movl	(%rax), %eax	# _40->n_comp, tmp147
	movl	%eax, -28(%rbp)	# tmp147, ng
.L11:
	.loc 1 149 0
	cmpq	$0, -48(%rbp)	#, svq
	je	.L12	#,
	.loc 1 149 0 is_stmt 0 discriminator 1
	movq	-64(%rbp), %rax	# kb, tmp148
	movl	180(%rax), %eax	# kb_8(D)->svq4svq, D.6371
	testl	%eax, %eax	# D.6371
	je	.L12	#,
	.loc 1 150 0 is_stmt 1
	movl	-68(%rbp), %eax	# s, tmp149
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6373
	movq	-80(%rbp), %rax	# senscr, tmp150
	leaq	(%rdx,%rax), %rbx	#, D.6374
	movq	-56(%rbp), %rax	# g, tmp151
	movq	16(%rax), %rcx	# g_10(D)->mgau, D.6372
	movl	-68(%rbp), %eax	# s, tmp152
	movslq	%eax, %rdx	# tmp152, D.6373
	movq	%rdx, %rax	# D.6373, tmp153
	salq	$2, %rax	#, tmp153
	addq	%rdx, %rax	# D.6373, tmp153
	salq	$3, %rax	#, tmp154
	addq	%rcx, %rax	# D.6372, D.6372
	movl	(%rax), %ecx	# _50->n_comp, D.6371
	movq	-24(%rbp), %rdi	# mgau_sl, tmp155
	movl	-68(%rbp), %edx	# s, tmp156
	movq	-48(%rbp), %rsi	# svq, tmp157
	movq	-56(%rbp), %rax	# g, tmp158
	movq	%rdi, %r8	# tmp155,
	movq	%rax, %rdi	# tmp158,
	call	subvq_mgau_eval	#
	movl	%eax, (%rbx)	# D.6371, *_46
	jmp	.L13	#
.L12:
	.loc 1 152 0
	movl	-68(%rbp), %eax	# s, tmp159
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6373
	movq	-80(%rbp), %rax	# senscr, tmp160
	leaq	(%rdx,%rax), %rbx	#, D.6374
	movq	-24(%rbp), %rdx	# mgau_sl, tmp161
	movl	-68(%rbp), %esi	# s, tmp162
	movq	-56(%rbp), %rax	# g, tmp163
	movq	16(%rbp), %rcx	# feat,
	movq	%rax, %rdi	# tmp163,
	call	mgau_eval	#
	movl	%eax, (%rbx)	# D.6371, *_55
.L13:
	.loc 1 156 0
	movl	-68(%rbp), %eax	# s, tmp164
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6373
	movq	-80(%rbp), %rax	# senscr, tmp165
	addq	%rdx, %rax	# D.6373, D.6374
	movl	(%rax), %eax	# *_59, D.6371
	cmpl	$-939424096, %eax	#, D.6371
	jge	.L14	#,
	.loc 1 157 0
	cmpq	$0, -24(%rbp)	#, mgau_sl
	je	.L14	#,
	.loc 1 161 0
	movq	$0, -24(%rbp)	#, mgau_sl
	.loc 1 162 0
	movq	-56(%rbp), %rax	# g, tmp166
	movq	16(%rax), %rcx	# g_10(D)->mgau, D.6372
	movl	-68(%rbp), %eax	# s, tmp167
	movslq	%eax, %rdx	# tmp167, D.6373
	movq	%rdx, %rax	# D.6373, tmp168
	salq	$2, %rax	#, tmp168
	addq	%rdx, %rax	# D.6373, tmp168
	salq	$3, %rax	#, tmp169
	addq	%rcx, %rax	# D.6372, D.6372
	movl	(%rax), %eax	# _65->n_comp, D.6371
	addl	%eax, -28(%rbp)	# D.6371, ng
	.loc 1 163 0
	cmpq	$0, -48(%rbp)	#, svq
	je	.L15	#,
	.loc 1 163 0 is_stmt 0 discriminator 1
	movq	-64(%rbp), %rax	# kb, tmp170
	movl	180(%rax), %eax	# kb_8(D)->svq4svq, D.6371
	testl	%eax, %eax	# D.6371
	je	.L15	#,
	.loc 1 164 0 is_stmt 1
	movl	-68(%rbp), %eax	# s, tmp171
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6373
	movq	-80(%rbp), %rax	# senscr, tmp172
	leaq	(%rdx,%rax), %rbx	#, D.6374
	movq	-56(%rbp), %rax	# g, tmp173
	movq	16(%rax), %rcx	# g_10(D)->mgau, D.6372
	movl	-68(%rbp), %eax	# s, tmp174
	movslq	%eax, %rdx	# tmp174, D.6373
	movq	%rdx, %rax	# D.6373, tmp175
	salq	$2, %rax	#, tmp175
	addq	%rdx, %rax	# D.6373, tmp175
	salq	$3, %rax	#, tmp176
	addq	%rcx, %rax	# D.6372, D.6372
	movl	(%rax), %ecx	# _75->n_comp, D.6371
	movl	-68(%rbp), %edx	# s, tmp177
	movq	-48(%rbp), %rsi	# svq, tmp178
	movq	-56(%rbp), %rax	# g, tmp179
	movl	$0, %r8d	#,
	movq	%rax, %rdi	# tmp179,
	call	subvq_mgau_eval	#
	movl	%eax, (%rbx)	# D.6371, *_71
	jmp	.L14	#
.L15:
	.loc 1 166 0
	movl	-68(%rbp), %eax	# s, tmp180
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6373
	movq	-80(%rbp), %rax	# senscr, tmp181
	leaq	(%rdx,%rax), %rbx	#, D.6374
	movl	-68(%rbp), %esi	# s, tmp182
	movq	-56(%rbp), %rax	# g, tmp183
	movq	16(%rbp), %rcx	# feat,
	movl	$0, %edx	#,
	movq	%rax, %rdi	# tmp183,
	call	mgau_eval	#
	movl	%eax, (%rbx)	# D.6371, *_80
.L14:
	.loc 1 173 0
	movl	-28(%rbp), %eax	# ng, D.6375
	.loc 1 174 0
	addq	$72, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	approx_mgau_eval, .-approx_mgau_eval
	.globl	approx_cont_mgau_ci_eval
	.type	approx_cont_mgau_ci_eval, @function
approx_cont_mgau_ci_eval:
.LFB4:
	.loc 1 185 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$72, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)	# g, g
	movq	%rsi, -64(%rbp)	# feat, feat
	movq	%rdx, -72(%rbp)	# ci_senscr, ci_senscr
	movq	%rcx, -80(%rbp)	# kb, kb
	.loc 1 190 0
	movq	-80(%rbp), %rax	# kb, tmp69
	movq	(%rax), %rax	# kb_2(D)->kbcore, D.6376
	movq	8(%rax), %rax	# _3->mdef, tmp70
	movq	%rax, -32(%rbp)	# tmp70, mdef
	.loc 1 191 0
	movq	-32(%rbp), %rax	# mdef, tmp71
	movq	64(%rax), %rax	# mdef_4->cd2cisen, tmp72
	movq	%rax, -24(%rbp)	# tmp72, cd2cisen
	.loc 1 193 0
	movl	$0, -36(%rbp)	#, s
	jmp	.L18	#
.L19:
	.loc 1 194 0 discriminator 2
	movl	-36(%rbp), %eax	# s, tmp73
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6377
	movq	-72(%rbp), %rax	# ci_senscr, tmp74
	leaq	(%rdx,%rax), %rbx	#, D.6381
	movq	-64(%rbp), %rdx	# feat, tmp75
	movl	-36(%rbp), %esi	# s, tmp76
	movq	-56(%rbp), %rax	# g, tmp77
	movq	%rdx, %rcx	# tmp75,
	movl	$0, %edx	#,
	movq	%rax, %rdi	# tmp77,
	call	mgau_eval	#
	movl	%eax, (%rbx)	# D.6380, *_15
	.loc 1 193 0 discriminator 2
	addl	$1, -36(%rbp)	#, s
.L18:
	.loc 1 193 0 is_stmt 0 discriminator 1
	movl	-36(%rbp), %eax	# s, tmp78
	cltq
	leaq	(%rax,%rax), %rdx	#, D.6377
	movq	-24(%rbp), %rax	# cd2cisen, tmp79
	addq	%rdx, %rax	# D.6377, D.6378
	movzwl	(%rax), %eax	# *_9, D.6379
	cwtl
	cmpl	-36(%rbp), %eax	# s, D.6380
	je	.L19	#,
	.loc 1 197 0 is_stmt 1
	addq	$72, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	approx_cont_mgau_ci_eval, .-approx_cont_mgau_ci_eval
	.section	.rodata
.LC0:
	.string	"INFO"
.LC1:
	.string	"approx_cont_mgau.c"
	.align 8
.LC2:
	.string	"Re-normalizing the previous score\n"
	.text
	.globl	approx_cont_mgau_frame_eval
	.type	approx_cont_mgau_frame_eval, @function
approx_cont_mgau_frame_eval:
.LFB5:
	.loc 1 245 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$144, %rsp	#,
	movq	%rdi, -72(%rbp)	# g, g
	movq	%rsi, -80(%rbp)	# gs, gs
	movq	%rdx, -88(%rbp)	# svq, svq
	movl	%ecx, -92(%rbp)	# svq_beam, svq_beam
	movq	%r8, -104(%rbp)	# feat, feat
	movq	%r9, -112(%rbp)	# sen_active, sen_active
	.loc 1 257 0
	movl	$-2147483648, -48(%rbp)	#, best
	.loc 1 258 0
	movl	$-2147483648, -32(%rbp)	#, pbest
	.loc 1 259 0
	movl	$0, -44(%rbp)	#, ns
	.loc 1 260 0
	movl	$0, -40(%rbp)	#, ng
	.loc 1 261 0
	movl	$-1, -36(%rbp)	#, best_cid
	.loc 1 265 0
	movq	32(%rbp), %rax	# kb, tmp216
	addq	$360, %rax	#, D.6382
	movq	%rax, %rdi	# D.6382,
	call	ptmr_start	#
	.loc 1 266 0
	cmpq	$0, -80(%rbp)	#, gs
	je	.L21	#,
	.loc 1 266 0 is_stmt 0 discriminator 1
	movq	-104(%rbp), %rdx	# feat, tmp217
	movq	-80(%rbp), %rax	# gs, tmp218
	movq	%rdx, %rsi	# tmp217,
	movq	%rax, %rdi	# tmp218,
	call	gc_compute_closest_cw	#
	movl	%eax, -36(%rbp)	# tmp219, best_cid
.L21:
	.loc 1 267 0 is_stmt 1
	cmpq	$0, -88(%rbp)	#, svq
	je	.L22	#,
	.loc 1 267 0 is_stmt 0 discriminator 1
	movq	-104(%rbp), %rdx	# feat, tmp220
	movq	-88(%rbp), %rax	# svq, tmp221
	movq	%rdx, %rsi	# tmp220,
	movq	%rax, %rdi	# tmp221,
	call	subvq_gautbl_eval_logs3	#
.L22:
	.loc 1 268 0 is_stmt 1
	movq	32(%rbp), %rax	# kb, tmp222
	addq	$360, %rax	#, D.6382
	movq	%rax, %rdi	# D.6382,
	call	ptmr_stop	#
	.loc 1 270 0
	movq	32(%rbp), %rax	# kb, tmp223
	leaq	136(%rax), %rdi	#, D.6383
	movq	32(%rbp), %rax	# kb, tmp224
	movl	104(%rax), %eax	# kb_27(D)->rec_bstcid, D.6384
	cmpl	-36(%rbp), %eax	# best_cid, D.6384
	sete	%al	#, D.6385
	movzbl	%al, %ecx	# D.6385, D.6384
	movq	32(%rbp), %rax	# kb, tmp225
	movl	172(%rax), %edx	# kb_27(D)->cond_ds, D.6384
	movq	32(%rbp), %rax	# kb, tmp226
	movl	168(%rax), %esi	# kb_27(D)->ds_ratio, D.6384
	movl	40(%rbp), %eax	# frame, tmp227
	movq	%rdi, %r8	# D.6383,
	movl	%eax, %edi	# tmp227,
	call	approx_isskip	#
	movl	%eax, -28(%rbp)	# tmp228, is_skip
	.loc 1 271 0
	movq	32(%rbp), %rax	# kb, tmp229
	movl	-36(%rbp), %edx	# best_cid, tmp230
	movl	%edx, 104(%rax)	# tmp230, kb_27(D)->rec_bstcid
	.loc 1 273 0
	movq	32(%rbp), %rax	# kb, tmp231
	movq	(%rax), %rax	# kb_27(D)->kbcore, D.6386
	movq	8(%rax), %rax	# _42->mdef, tmp232
	movq	%rax, -16(%rbp)	# tmp232, mdef
	.loc 1 274 0
	movq	-16(%rbp), %rax	# mdef, tmp233
	movq	64(%rax), %rax	# mdef_43->cd2cisen, tmp234
	movq	%rax, -8(%rbp)	# tmp234, cd2cisen
	.loc 1 279 0
	movl	$0, -56(%rbp)	#, s
	jmp	.L23	#
.L40:
	.loc 1 280 0
	cmpq	$0, -112(%rbp)	#, sen_active
	je	.L24	#,
	.loc 1 280 0 is_stmt 0 discriminator 2
	movl	-56(%rbp), %eax	# s, tmp235
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6387
	movq	-112(%rbp), %rax	# sen_active, tmp236
	addq	%rdx, %rax	# D.6387, D.6383
	movl	(%rax), %eax	# *_51, D.6384
	testl	%eax, %eax	# D.6384
	je	.L25	#,
.L24:
	.loc 1 280 0 discriminator 1
	movl	$1, %eax	#, iftmp.1
	jmp	.L26	#
.L25:
	.loc 1 280 0 discriminator 3
	movl	$0, %eax	#, iftmp.1
.L26:
	.loc 1 280 0 discriminator 4
	movl	%eax, -24(%rbp)	# iftmp.1, is_compute
	.loc 1 281 0 is_stmt 1 discriminator 4
	movl	-56(%rbp), %eax	# s, tmp237
	cltq
	leaq	(%rax,%rax), %rdx	#, D.6387
	movq	-8(%rbp), %rax	# cd2cisen, tmp238
	addq	%rdx, %rax	# D.6387, D.6388
	movzwl	(%rax), %eax	# *_58, D.6389
	cwtl
	cmpl	-56(%rbp), %eax	# s, D.6384
	sete	%al	#, D.6385
	movzbl	%al, %eax	# D.6385, tmp239
	movl	%eax, -20(%rbp)	# tmp239, is_ciphone
	.loc 1 287 0 discriminator 4
	cmpl	$0, -28(%rbp)	#, is_skip
	jne	.L27	#,
	.loc 1 289 0
	cmpl	$0, -20(%rbp)	#, is_ciphone
	je	.L28	#,
	.loc 1 296 0
	movl	-56(%rbp), %eax	# s, tmp240
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6387
	movq	16(%rbp), %rax	# senscr, tmp241
	addq	%rax, %rdx	# tmp241, D.6383
	movl	-56(%rbp), %eax	# s, tmp242
	cltq
	leaq	0(,%rax,4), %rcx	#, D.6387
	movq	24(%rbp), %rax	# cache_ci_senscr, tmp243
	addq	%rcx, %rax	# D.6387, D.6383
	movl	(%rax), %eax	# *_70, D.6384
	movl	%eax, (%rdx)	# D.6384, *_66
	.loc 1 297 0
	movl	-56(%rbp), %eax	# s, tmp244
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6387
	movq	16(%rbp), %rax	# senscr, tmp245
	addq	%rdx, %rax	# D.6387, D.6383
	movl	(%rax), %eax	# *_74, D.6384
	cmpl	-32(%rbp), %eax	# pbest, D.6384
	jle	.L29	#,
	.loc 1 297 0 is_stmt 0 discriminator 1
	movl	-56(%rbp), %eax	# s, tmp246
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6387
	movq	16(%rbp), %rax	# senscr, tmp247
	addq	%rdx, %rax	# D.6387, D.6383
	movl	(%rax), %eax	# *_78, tmp248
	movl	%eax, -32(%rbp)	# tmp248, pbest
.L29:
	.loc 1 298 0 is_stmt 1
	movl	-56(%rbp), %eax	# s, tmp249
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6387
	movq	16(%rbp), %rax	# senscr, tmp250
	addq	%rdx, %rax	# D.6387, D.6383
	movl	(%rax), %eax	# *_82, D.6384
	cmpl	-48(%rbp), %eax	# best, D.6384
	jle	.L30	#,
	.loc 1 298 0 is_stmt 0 discriminator 1
	movl	-56(%rbp), %eax	# s, tmp251
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6387
	movq	16(%rbp), %rax	# senscr, tmp252
	addq	%rdx, %rax	# D.6387, D.6383
	movl	(%rax), %eax	# *_86, tmp253
	movl	%eax, -48(%rbp)	# tmp253, best
.L30:
	.loc 1 299 0 is_stmt 1
	movl	-56(%rbp), %eax	# s, tmp254
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6387
	movq	-112(%rbp), %rax	# sen_active, tmp255
	addq	%rdx, %rax	# D.6387, D.6383
	movl	$1, (%rax)	#, *_90
	.loc 1 300 0
	movq	-72(%rbp), %rax	# g, tmp256
	movq	16(%rax), %rcx	# g_46(D)->mgau, D.6390
	movl	-56(%rbp), %eax	# s, tmp257
	movslq	%eax, %rdx	# tmp257, D.6387
	movq	%rdx, %rax	# D.6387, tmp258
	salq	$2, %rax	#, tmp258
	addq	%rdx, %rax	# D.6387, tmp258
	salq	$3, %rax	#, tmp259
	addq	%rcx, %rax	# D.6390, D.6390
	movl	(%rax), %eax	# _94->n_comp, D.6384
	addl	%eax, -40(%rbp)	# D.6384, ng
	.loc 1 301 0
	addl	$1, -44(%rbp)	#, ns
	jmp	.L31	#
.L28:
	.loc 1 304 0
	cmpl	$0, -24(%rbp)	#, is_compute
	je	.L31	#,
	.loc 1 305 0
	movl	-56(%rbp), %eax	# s, tmp260
	cltq
	leaq	(%rax,%rax), %rdx	#, D.6387
	movq	-8(%rbp), %rax	# cd2cisen, tmp261
	addq	%rdx, %rax	# D.6387, D.6388
	movzwl	(%rax), %eax	# *_100, D.6389
	movswq	%ax, %rax	# D.6389, D.6387
	leaq	0(,%rax,4), %rdx	#, D.6387
	movq	16(%rbp), %rax	# senscr, tmp262
	addq	%rdx, %rax	# D.6387, D.6383
	movl	(%rax), %eax	# *_104, D.6384
	movl	-32(%rbp), %edx	# pbest, tmp263
	subl	%eax, %edx	# D.6384, D.6384
	movq	32(%rbp), %rax	# kb, tmp264
	movl	184(%rax), %eax	# kb_27(D)->ci_pbeam, D.6384
	cmpl	%eax, %edx	# D.6384, D.6384
	jge	.L32	#,
	.loc 1 306 0
	movl	-56(%rbp), %r8d	# s, tmp265
	movq	32(%rbp), %rcx	# kb, tmp266
	movq	-72(%rbp), %rdx	# g, tmp267
	movq	-88(%rbp), %rsi	# svq, tmp268
	movq	-80(%rbp), %rax	# gs, tmp269
	movl	-92(%rbp), %edi	# svq_beam, tmp270
	movl	%edi, 16(%rsp)	# tmp270,
	movl	-36(%rbp), %edi	# best_cid, tmp271
	movl	%edi, 8(%rsp)	# tmp271,
	movq	-104(%rbp), %rdi	# feat, tmp272
	movq	%rdi, (%rsp)	# tmp272,
	movq	16(%rbp), %r9	# senscr,
	movq	%rax, %rdi	# tmp269,
	call	approx_mgau_eval	#
	addl	%eax, -40(%rbp)	# D.6384, ng
	.loc 1 307 0
	addl	$1, -44(%rbp)	#, ns
	jmp	.L33	#
.L32:
	.loc 1 309 0
	movl	-56(%rbp), %eax	# s, tmp273
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6387
	movq	16(%rbp), %rax	# senscr, tmp274
	addq	%rax, %rdx	# tmp274, D.6383
	movl	-56(%rbp), %eax	# s, tmp275
	cltq
	leaq	(%rax,%rax), %rcx	#, D.6387
	movq	-8(%rbp), %rax	# cd2cisen, tmp276
	addq	%rcx, %rax	# D.6387, D.6388
	movzwl	(%rax), %eax	# *_117, D.6389
	movswq	%ax, %rax	# D.6389, D.6387
	leaq	0(,%rax,4), %rcx	#, D.6387
	movq	16(%rbp), %rax	# senscr, tmp277
	addq	%rcx, %rax	# D.6387, D.6383
	movl	(%rax), %eax	# *_121, D.6384
	movl	%eax, (%rdx)	# D.6384, *_114
.L33:
	.loc 1 311 0
	movl	-56(%rbp), %eax	# s, tmp278
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6387
	movq	16(%rbp), %rax	# senscr, tmp279
	addq	%rdx, %rax	# D.6387, D.6383
	movl	(%rax), %eax	# *_125, D.6384
	cmpl	-48(%rbp), %eax	# best, D.6384
	jle	.L31	#,
	.loc 1 311 0 is_stmt 0 discriminator 1
	movl	-56(%rbp), %eax	# s, tmp280
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6387
	movq	16(%rbp), %rax	# senscr, tmp281
	addq	%rdx, %rax	# D.6387, D.6383
	movl	(%rax), %eax	# *_129, tmp282
	movl	%eax, -48(%rbp)	# tmp282, best
.L31:
	.loc 1 315 0 is_stmt 1 discriminator 1
	movq	32(%rbp), %rax	# kb, tmp283
	movq	96(%rax), %rax	# kb_27(D)->rec_sen_active, D.6383
	movl	-56(%rbp), %edx	# s, tmp284
	movslq	%edx, %rdx	# tmp284, D.6387
	salq	$2, %rdx	#, D.6387
	addq	%rax, %rdx	# D.6383, D.6383
	movl	-56(%rbp), %eax	# s, tmp285
	cltq
	leaq	0(,%rax,4), %rcx	#, D.6387
	movq	-112(%rbp), %rax	# sen_active, tmp286
	addq	%rcx, %rax	# D.6387, D.6383
	movl	(%rax), %eax	# *_137, D.6384
	movl	%eax, (%rdx)	# D.6384, *_134
	jmp	.L34	#
.L27:
	.loc 1 319 0
	cmpl	$0, -24(%rbp)	#, is_compute
	je	.L34	#,
	.loc 1 320 0
	movq	32(%rbp), %rax	# kb, tmp287
	movq	96(%rax), %rax	# kb_27(D)->rec_sen_active, D.6383
	movl	-56(%rbp), %edx	# s, tmp288
	movslq	%edx, %rdx	# tmp288, D.6387
	salq	$2, %rdx	#, D.6387
	addq	%rdx, %rax	# D.6387, D.6383
	movl	(%rax), %eax	# *_142, D.6384
	testl	%eax, %eax	# D.6384
	je	.L35	#,
	.loc 1 321 0
	movl	-56(%rbp), %eax	# s, tmp289
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6387
	movq	16(%rbp), %rax	# senscr, tmp290
	addq	%rax, %rdx	# tmp290, D.6383
	movl	-56(%rbp), %eax	# s, tmp291
	cltq
	leaq	0(,%rax,4), %rcx	#, D.6387
	movq	16(%rbp), %rax	# senscr, tmp292
	addq	%rcx, %rax	# D.6387, D.6383
	movl	(%rax), %eax	# *_149, D.6384
	movl	%eax, (%rdx)	# D.6384, *_146
	jmp	.L34	#
.L35:
	.loc 1 323 0
	movq	32(%rbp), %rax	# kb, tmp293
	movq	96(%rax), %rax	# kb_27(D)->rec_sen_active, D.6383
	movl	-56(%rbp), %edx	# s, tmp294
	movslq	%edx, %rdx	# tmp294, D.6387
	salq	$2, %rdx	#, D.6387
	addq	%rdx, %rax	# D.6387, D.6383
	movl	$1, (%rax)	#, *_154
	.loc 1 324 0
	movl	-56(%rbp), %r8d	# s, tmp295
	movq	32(%rbp), %rcx	# kb, tmp296
	movq	-72(%rbp), %rdx	# g, tmp297
	movq	-88(%rbp), %rsi	# svq, tmp298
	movq	-80(%rbp), %rax	# gs, tmp299
	movl	-92(%rbp), %edi	# svq_beam, tmp300
	movl	%edi, 16(%rsp)	# tmp300,
	movl	-36(%rbp), %edi	# best_cid, tmp301
	movl	%edi, 8(%rsp)	# tmp301,
	movq	-104(%rbp), %rdi	# feat, tmp302
	movq	%rdi, (%rsp)	# tmp302,
	movq	16(%rbp), %r9	# senscr,
	movq	%rax, %rdi	# tmp299,
	call	approx_mgau_eval	#
	addl	%eax, -40(%rbp)	# D.6384, ng
	.loc 1 325 0
	addl	$1, -44(%rbp)	#, ns
	.loc 1 327 0
	movl	-56(%rbp), %eax	# s, tmp303
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6387
	movq	16(%rbp), %rax	# senscr, tmp304
	addq	%rdx, %rax	# D.6387, D.6383
	movl	(%rax), %edx	# *_160, D.6384
	movq	32(%rbp), %rax	# kb, tmp305
	movl	108(%rax), %eax	# kb_27(D)->rec_bst_senscr, D.6384
	cmpl	%eax, %edx	# D.6384, D.6384
	jle	.L36	#,
	.loc 1 328 0
	movl	$.LC0, %edx	#,
	movl	$328, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_info_header	#
	movl	$.LC2, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_info	#
	.loc 1 331 0
	movl	$0, -52(%rbp)	#, t
	jmp	.L37	#
.L39:
	.loc 1 332 0
	movq	32(%rbp), %rax	# kb, tmp306
	movq	96(%rax), %rax	# kb_27(D)->rec_sen_active, D.6383
	movl	-52(%rbp), %edx	# t, tmp307
	movslq	%edx, %rdx	# tmp307, D.6387
	salq	$2, %rdx	#, D.6387
	addq	%rdx, %rax	# D.6387, D.6383
	movl	(%rax), %eax	# *_168, D.6384
	testl	%eax, %eax	# D.6384
	je	.L38	#,
	.loc 1 332 0 is_stmt 0 discriminator 1
	movl	-52(%rbp), %eax	# t, tmp308
	cmpl	-56(%rbp), %eax	# s, tmp308
	je	.L38	#,
	.loc 1 333 0 is_stmt 1
	movl	-52(%rbp), %eax	# t, tmp309
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6387
	movq	16(%rbp), %rax	# senscr, tmp310
	addq	%rax, %rdx	# tmp310, D.6383
	movl	-52(%rbp), %eax	# t, tmp311
	cltq
	leaq	0(,%rax,4), %rcx	#, D.6387
	movq	16(%rbp), %rax	# senscr, tmp312
	addq	%rcx, %rax	# D.6387, D.6383
	movl	(%rax), %ecx	# *_175, D.6384
	movq	32(%rbp), %rax	# kb, tmp313
	movl	108(%rax), %esi	# kb_27(D)->rec_bst_senscr, D.6384
	movl	-56(%rbp), %eax	# s, tmp314
	cltq
	leaq	0(,%rax,4), %rdi	#, D.6387
	movq	16(%rbp), %rax	# senscr, tmp315
	addq	%rdi, %rax	# D.6387, D.6383
	movl	(%rax), %eax	# *_180, D.6384
	subl	%eax, %esi	# D.6384, D.6384
	movl	%esi, %eax	# D.6384, D.6384
	addl	%ecx, %eax	# D.6384, D.6384
	movl	%eax, (%rdx)	# D.6384, *_172
.L38:
	.loc 1 331 0
	addl	$1, -52(%rbp)	#, t
.L37:
	.loc 1 331 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# g, tmp316
	movl	(%rax), %eax	# g_46(D)->n_mgau, D.6384
	cmpl	-52(%rbp), %eax	# t, D.6384
	jg	.L39	#,
	.loc 1 337 0 is_stmt 1
	movl	-56(%rbp), %eax	# s, tmp317
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6387
	movq	16(%rbp), %rax	# senscr, tmp318
	addq	%rdx, %rax	# D.6387, D.6383
	movl	(%rax), %edx	# *_187, D.6384
	movq	32(%rbp), %rax	# kb, tmp319
	movl	%edx, 108(%rax)	# D.6384, kb_27(D)->rec_bst_senscr
.L36:
	.loc 1 340 0
	movl	-56(%rbp), %eax	# s, tmp320
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6387
	movq	16(%rbp), %rax	# senscr, tmp321
	addq	%rax, %rdx	# tmp321, D.6383
	movl	-56(%rbp), %eax	# s, tmp322
	cltq
	leaq	0(,%rax,4), %rcx	#, D.6387
	movq	16(%rbp), %rax	# senscr, tmp323
	addq	%rcx, %rax	# D.6387, D.6383
	movl	(%rax), %ecx	# *_194, D.6384
	movq	32(%rbp), %rax	# kb, tmp324
	movl	108(%rax), %eax	# kb_27(D)->rec_bst_senscr, D.6384
	subl	%eax, %ecx	# D.6384, D.6384
	movl	%ecx, %eax	# D.6384, D.6384
	movl	%eax, (%rdx)	# D.6384, *_191
.L34:
	.loc 1 279 0
	addl	$1, -56(%rbp)	#, s
.L23:
	.loc 1 279 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# g, tmp325
	movl	(%rax), %eax	# g_46(D)->n_mgau, D.6384
	cmpl	-56(%rbp), %eax	# s, D.6384
	jg	.L40	#,
	.loc 1 346 0 is_stmt 1
	cmpl	$0, -28(%rbp)	#, is_skip
	jne	.L41	#,
	.loc 1 347 0
	movl	$0, -56(%rbp)	#, s
	jmp	.L42	#
.L44:
	.loc 1 348 0
	movl	-56(%rbp), %eax	# s, tmp326
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6387
	movq	-112(%rbp), %rax	# sen_active, tmp327
	addq	%rdx, %rax	# D.6387, D.6383
	movl	(%rax), %eax	# *_203, D.6384
	testl	%eax, %eax	# D.6384
	je	.L43	#,
	.loc 1 349 0
	movl	-56(%rbp), %eax	# s, tmp328
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6387
	movq	16(%rbp), %rax	# senscr, tmp329
	addq	%rax, %rdx	# tmp329, D.6383
	movl	-56(%rbp), %eax	# s, tmp330
	cltq
	leaq	0(,%rax,4), %rcx	#, D.6387
	movq	16(%rbp), %rax	# senscr, tmp331
	addq	%rcx, %rax	# D.6387, D.6383
	movl	(%rax), %eax	# *_210, D.6384
	subl	-48(%rbp), %eax	# best, D.6384
	movl	%eax, (%rdx)	# D.6384, *_207
.L43:
	.loc 1 347 0
	addl	$1, -56(%rbp)	#, s
.L42:
	.loc 1 347 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# g, tmp332
	movl	(%rax), %eax	# g_46(D)->n_mgau, D.6384
	cmpl	-56(%rbp), %eax	# s, D.6384
	jg	.L44	#,
.L41:
	.loc 1 367 0 is_stmt 1
	movq	-72(%rbp), %rax	# g, tmp333
	movl	-44(%rbp), %edx	# ns, tmp334
	movl	%edx, 32(%rax)	# tmp334, g_46(D)->frm_sen_eval
	.loc 1 368 0
	movq	-72(%rbp), %rax	# g, tmp335
	movl	-40(%rbp), %edx	# ng, tmp336
	movl	%edx, 36(%rax)	# tmp336, g_46(D)->frm_gau_eval
	.loc 1 370 0
	movl	-48(%rbp), %eax	# best, D.6391
	.loc 1 372 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	approx_cont_mgau_frame_eval, .-approx_cont_mgau_frame_eval
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/include/stdio.h"
	.file 5 "/usr/include/libio.h"
	.file 6 "./libutil/prim_type.h"
	.file 7 "./libutil/glist.h"
	.file 8 "./libutil/hash.h"
	.file 9 "./libutil/profile.h"
	.file 10 "cont_mgau.h"
	.file 11 "vector.h"
	.file 12 "subvq.h"
	.file 13 "s3types.h"
	.file 14 "gs.h"
	.file 15 "feat.h"
	.file 16 "mdef.h"
	.file 17 "dict.h"
	.file 18 "dict2pid.h"
	.file 19 "fillpen.h"
	.file 20 "lmclass.h"
	.file 21 "lm.h"
	.file 22 "tmat.h"
	.file 23 "kbcore.h"
	.file 24 "hmm.h"
	.file 25 "hyp.h"
	.file 26 "vithist.h"
	.file 27 "ascr.h"
	.file 28 "lextree.h"
	.file 29 "beam.h"
	.file 30 "kb.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x1cc4
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF377
	.byte	0x1
	.long	.LASF378
	.long	.LASF379
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
	.long	.LASF380
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
	.byte	0x42
	.long	0x4d
	.uleb128 0x2
	.long	.LASF55
	.byte	0x6
	.byte	0x43
	.long	0x46
	.uleb128 0x2
	.long	.LASF56
	.byte	0x6
	.byte	0x44
	.long	0x3f
	.uleb128 0x2
	.long	.LASF57
	.byte	0x6
	.byte	0x45
	.long	0x2ab
	.uleb128 0x2
	.long	.LASF58
	.byte	0x6
	.byte	0x46
	.long	0x2b2
	.uleb128 0xe
	.long	.LASF381
	.byte	0x8
	.byte	0x6
	.byte	0x48
	.long	0x355
	.uleb128 0xf
	.string	"ptr"
	.byte	0x6
	.byte	0x49
	.long	0x8d
	.uleb128 0x10
	.long	.LASF51
	.byte	0x6
	.byte	0x4a
	.long	0x2b9
	.uleb128 0x10
	.long	.LASF54
	.byte	0x6
	.byte	0x4b
	.long	0x2da
	.uleb128 0x10
	.long	.LASF57
	.byte	0x6
	.byte	0x4c
	.long	0x2fb
	.uleb128 0x10
	.long	.LASF58
	.byte	0x6
	.byte	0x4d
	.long	0x306
	.byte	0
	.uleb128 0x2
	.long	.LASF59
	.byte	0x6
	.byte	0x4e
	.long	0x311
	.uleb128 0x6
	.byte	0x8
	.long	0x2da
	.uleb128 0x7
	.long	.LASF60
	.byte	0x10
	.byte	0x7
	.byte	0x4c
	.long	0x38b
	.uleb128 0x8
	.long	.LASF61
	.byte	0x7
	.byte	0x4d
	.long	0x355
	.byte	0
	.uleb128 0x8
	.long	.LASF62
	.byte	0x7
	.byte	0x4e
	.long	0x38b
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x366
	.uleb128 0x2
	.long	.LASF63
	.byte	0x7
	.byte	0x4f
	.long	0x366
	.uleb128 0x2
	.long	.LASF64
	.byte	0x7
	.byte	0x50
	.long	0x3a7
	.uleb128 0x6
	.byte	0x8
	.long	0x391
	.uleb128 0x7
	.long	.LASF65
	.byte	0x18
	.byte	0x8
	.byte	0x58
	.long	0x3ea
	.uleb128 0x11
	.string	"key"
	.byte	0x8
	.byte	0x59
	.long	0x292
	.byte	0
	.uleb128 0x11
	.string	"len"
	.byte	0x8
	.byte	0x5c
	.long	0x2b9
	.byte	0x8
	.uleb128 0x11
	.string	"val"
	.byte	0x8
	.byte	0x5e
	.long	0x2b9
	.byte	0xc
	.uleb128 0x8
	.long	.LASF62
	.byte	0x8
	.byte	0x5f
	.long	0x3ea
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x3ad
	.uleb128 0x2
	.long	.LASF66
	.byte	0x8
	.byte	0x60
	.long	0x3ad
	.uleb128 0x12
	.byte	0x10
	.byte	0x8
	.byte	0x62
	.long	0x428
	.uleb128 0x8
	.long	.LASF67
	.byte	0x8
	.byte	0x63
	.long	0x428
	.byte	0
	.uleb128 0x8
	.long	.LASF68
	.byte	0x8
	.byte	0x64
	.long	0x2b9
	.byte	0x8
	.uleb128 0x8
	.long	.LASF69
	.byte	0x8
	.byte	0x67
	.long	0x2f0
	.byte	0xc
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x3f0
	.uleb128 0x2
	.long	.LASF70
	.byte	0x8
	.byte	0x68
	.long	0x3fb
	.uleb128 0x12
	.byte	0x38
	.byte	0x9
	.byte	0x53
	.long	0x496
	.uleb128 0x8
	.long	.LASF71
	.byte	0x9
	.byte	0x54
	.long	0x292
	.byte	0
	.uleb128 0x8
	.long	.LASF72
	.byte	0x9
	.byte	0x56
	.long	0x306
	.byte	0x8
	.uleb128 0x8
	.long	.LASF73
	.byte	0x9
	.byte	0x57
	.long	0x306
	.byte	0x10
	.uleb128 0x8
	.long	.LASF74
	.byte	0x9
	.byte	0x58
	.long	0x306
	.byte	0x18
	.uleb128 0x8
	.long	.LASF75
	.byte	0x9
	.byte	0x59
	.long	0x306
	.byte	0x20
	.uleb128 0x8
	.long	.LASF76
	.byte	0x9
	.byte	0x5a
	.long	0x306
	.byte	0x28
	.uleb128 0x8
	.long	.LASF77
	.byte	0x9
	.byte	0x5b
	.long	0x306
	.byte	0x30
	.byte	0
	.uleb128 0x2
	.long	.LASF78
	.byte	0x9
	.byte	0x5c
	.long	0x439
	.uleb128 0x12
	.byte	0x28
	.byte	0xa
	.byte	0x5f
	.long	0x4e6
	.uleb128 0x8
	.long	.LASF79
	.byte	0xa
	.byte	0x60
	.long	0x2b9
	.byte	0
	.uleb128 0x8
	.long	.LASF80
	.byte	0xa
	.byte	0x62
	.long	0x4e6
	.byte	0x8
	.uleb128 0x11
	.string	"var"
	.byte	0xa
	.byte	0x63
	.long	0x4e6
	.byte	0x10
	.uleb128 0x11
	.string	"lrd"
	.byte	0xa
	.byte	0x66
	.long	0x4ec
	.byte	0x18
	.uleb128 0x8
	.long	.LASF81
	.byte	0xa
	.byte	0x69
	.long	0x4f2
	.byte	0x20
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x4ec
	.uleb128 0x6
	.byte	0x8
	.long	0x2fb
	.uleb128 0x6
	.byte	0x8
	.long	0x2b9
	.uleb128 0x2
	.long	.LASF82
	.byte	0xa
	.byte	0x6c
	.long	0x4a1
	.uleb128 0x12
	.byte	0x30
	.byte	0xa
	.byte	0x74
	.long	0x56c
	.uleb128 0x8
	.long	.LASF83
	.byte	0xa
	.byte	0x75
	.long	0x2b9
	.byte	0
	.uleb128 0x8
	.long	.LASF84
	.byte	0xa
	.byte	0x76
	.long	0x2b9
	.byte	0x4
	.uleb128 0x8
	.long	.LASF85
	.byte	0xa
	.byte	0x77
	.long	0x2b9
	.byte	0x8
	.uleb128 0x8
	.long	.LASF86
	.byte	0xa
	.byte	0x78
	.long	0x56c
	.byte	0x10
	.uleb128 0x8
	.long	.LASF87
	.byte	0xa
	.byte	0x79
	.long	0x306
	.byte	0x18
	.uleb128 0x8
	.long	.LASF88
	.byte	0xa
	.byte	0x7c
	.long	0x2b9
	.byte	0x20
	.uleb128 0x8
	.long	.LASF89
	.byte	0xa
	.byte	0x7d
	.long	0x2b9
	.byte	0x24
	.uleb128 0x8
	.long	.LASF90
	.byte	0xa
	.byte	0x7e
	.long	0x2b9
	.byte	0x28
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x4f8
	.uleb128 0x2
	.long	.LASF91
	.byte	0xa
	.byte	0x81
	.long	0x503
	.uleb128 0x12
	.byte	0x8
	.byte	0xb
	.byte	0x47
	.long	0x59a
	.uleb128 0x11
	.string	"r"
	.byte	0xb
	.byte	0x48
	.long	0x2b9
	.byte	0
	.uleb128 0x11
	.string	"c"
	.byte	0xb
	.byte	0x49
	.long	0x2b9
	.byte	0x4
	.byte	0
	.uleb128 0x2
	.long	.LASF92
	.byte	0xb
	.byte	0x4a
	.long	0x57d
	.uleb128 0x12
	.byte	0x28
	.byte	0xb
	.byte	0xf0
	.long	0x5f6
	.uleb128 0x8
	.long	.LASF93
	.byte	0xb
	.byte	0xf1
	.long	0x2b9
	.byte	0
	.uleb128 0x8
	.long	.LASF85
	.byte	0xb
	.byte	0xf2
	.long	0x2b9
	.byte	0x4
	.uleb128 0x8
	.long	.LASF80
	.byte	0xb
	.byte	0xf3
	.long	0x4e6
	.byte	0x8
	.uleb128 0x11
	.string	"var"
	.byte	0xb
	.byte	0xf4
	.long	0x4e6
	.byte	0x10
	.uleb128 0x11
	.string	"lrd"
	.byte	0xb
	.byte	0xf5
	.long	0x4ec
	.byte	0x18
	.uleb128 0x8
	.long	.LASF87
	.byte	0xb
	.byte	0xf6
	.long	0x306
	.byte	0x20
	.byte	0
	.uleb128 0x2
	.long	.LASF94
	.byte	0xb
	.byte	0xf8
	.long	0x5a5
	.uleb128 0x12
	.byte	0x48
	.byte	0xc
	.byte	0x52
	.long	0x682
	.uleb128 0x8
	.long	.LASF95
	.byte	0xc
	.byte	0x53
	.long	0x59a
	.byte	0
	.uleb128 0x8
	.long	.LASF96
	.byte	0xc
	.byte	0x55
	.long	0x2b9
	.byte	0x8
	.uleb128 0x8
	.long	.LASF97
	.byte	0xc
	.byte	0x56
	.long	0x2b9
	.byte	0xc
	.uleb128 0x8
	.long	.LASF98
	.byte	0xc
	.byte	0x57
	.long	0x682
	.byte	0x10
	.uleb128 0x8
	.long	.LASF99
	.byte	0xc
	.byte	0x58
	.long	0x688
	.byte	0x18
	.uleb128 0x11
	.string	"map"
	.byte	0xc
	.byte	0x59
	.long	0x68e
	.byte	0x20
	.uleb128 0x8
	.long	.LASF100
	.byte	0xc
	.byte	0x60
	.long	0x4ec
	.byte	0x28
	.uleb128 0x8
	.long	.LASF101
	.byte	0xc
	.byte	0x61
	.long	0x682
	.byte	0x30
	.uleb128 0x8
	.long	.LASF102
	.byte	0xc
	.byte	0x63
	.long	0x4f2
	.byte	0x38
	.uleb128 0x8
	.long	.LASF103
	.byte	0xc
	.byte	0x64
	.long	0x4f2
	.byte	0x40
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x4f2
	.uleb128 0x6
	.byte	0x8
	.long	0x5f6
	.uleb128 0x6
	.byte	0x8
	.long	0x682
	.uleb128 0x2
	.long	.LASF104
	.byte	0xc
	.byte	0x65
	.long	0x601
	.uleb128 0x2
	.long	.LASF105
	.byte	0xd
	.byte	0x4b
	.long	0x2cf
	.uleb128 0x2
	.long	.LASF106
	.byte	0xd
	.byte	0x51
	.long	0x2b9
	.uleb128 0x2
	.long	.LASF107
	.byte	0xd
	.byte	0x57
	.long	0x6aa
	.uleb128 0x2
	.long	.LASF108
	.byte	0xd
	.byte	0x5d
	.long	0x2b9
	.uleb128 0x2
	.long	.LASF109
	.byte	0xd
	.byte	0x63
	.long	0x2b9
	.uleb128 0x2
	.long	.LASF110
	.byte	0xd
	.byte	0x69
	.long	0x2e5
	.uleb128 0x2
	.long	.LASF111
	.byte	0xd
	.byte	0x75
	.long	0x2c4
	.uleb128 0x2
	.long	.LASF112
	.byte	0xd
	.byte	0x7b
	.long	0x2c4
	.uleb128 0x7
	.long	.LASF113
	.byte	0x38
	.byte	0xe
	.byte	0x3c
	.long	0x77b
	.uleb128 0x8
	.long	.LASF83
	.byte	0xe
	.byte	0x3d
	.long	0x2b9
	.byte	0
	.uleb128 0x8
	.long	.LASF114
	.byte	0xe
	.byte	0x3e
	.long	0x2b9
	.byte	0x4
	.uleb128 0x8
	.long	.LASF115
	.byte	0xe
	.byte	0x3f
	.long	0x2b9
	.byte	0x8
	.uleb128 0x8
	.long	.LASF116
	.byte	0xe
	.byte	0x40
	.long	0x2b9
	.byte	0xc
	.uleb128 0x8
	.long	.LASF117
	.byte	0xe
	.byte	0x41
	.long	0x2b9
	.byte	0x10
	.uleb128 0x8
	.long	.LASF118
	.byte	0xe
	.byte	0x42
	.long	0x2b9
	.byte	0x14
	.uleb128 0x8
	.long	.LASF119
	.byte	0xe
	.byte	0x43
	.long	0x4e6
	.byte	0x18
	.uleb128 0x8
	.long	.LASF120
	.byte	0xe
	.byte	0x44
	.long	0x77b
	.byte	0x20
	.uleb128 0x11
	.string	"fp"
	.byte	0xe
	.byte	0x45
	.long	0x787
	.byte	0x28
	.uleb128 0x8
	.long	.LASF103
	.byte	0xe
	.byte	0x46
	.long	0x4f2
	.byte	0x30
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x781
	.uleb128 0x6
	.byte	0x8
	.long	0x360
	.uleb128 0x6
	.byte	0x8
	.long	0x9c
	.uleb128 0x2
	.long	.LASF121
	.byte	0xe
	.byte	0x47
	.long	0x6f7
	.uleb128 0x7
	.long	.LASF122
	.byte	0x38
	.byte	0xf
	.byte	0x48
	.long	0x81d
	.uleb128 0x8
	.long	.LASF71
	.byte	0xf
	.byte	0x49
	.long	0x8f
	.byte	0
	.uleb128 0x8
	.long	.LASF123
	.byte	0xf
	.byte	0x4a
	.long	0x2b9
	.byte	0x8
	.uleb128 0x8
	.long	.LASF124
	.byte	0xf
	.byte	0x4b
	.long	0x2b9
	.byte	0xc
	.uleb128 0x8
	.long	.LASF125
	.byte	0xf
	.byte	0x4c
	.long	0x2b9
	.byte	0x10
	.uleb128 0x8
	.long	.LASF126
	.byte	0xf
	.byte	0x4d
	.long	0x4f2
	.byte	0x18
	.uleb128 0x8
	.long	.LASF127
	.byte	0xf
	.byte	0x4e
	.long	0x2b9
	.byte	0x20
	.uleb128 0x11
	.string	"cmn"
	.byte	0xf
	.byte	0x50
	.long	0x2b9
	.byte	0x24
	.uleb128 0x8
	.long	.LASF128
	.byte	0xf
	.byte	0x51
	.long	0x2b9
	.byte	0x28
	.uleb128 0x11
	.string	"agc"
	.byte	0xf
	.byte	0x53
	.long	0x2b9
	.byte	0x2c
	.uleb128 0x8
	.long	.LASF129
	.byte	0xf
	.byte	0x54
	.long	0x838
	.byte	0x30
	.byte	0
	.uleb128 0x13
	.long	0x832
	.uleb128 0x14
	.long	0x832
	.uleb128 0x14
	.long	0x4e6
	.uleb128 0x14
	.long	0x4e6
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x798
	.uleb128 0x6
	.byte	0x8
	.long	0x81d
	.uleb128 0x2
	.long	.LASF130
	.byte	0xf
	.byte	0x5a
	.long	0x798
	.uleb128 0x15
	.byte	0x4
	.byte	0x10
	.byte	0x48
	.long	0x870
	.uleb128 0x16
	.long	.LASF131
	.sleb128 0
	.uleb128 0x16
	.long	.LASF132
	.sleb128 1
	.uleb128 0x16
	.long	.LASF133
	.sleb128 2
	.uleb128 0x16
	.long	.LASF134
	.sleb128 3
	.uleb128 0x16
	.long	.LASF135
	.sleb128 4
	.byte	0
	.uleb128 0x2
	.long	.LASF136
	.byte	0x10
	.byte	0x4e
	.long	0x849
	.uleb128 0x12
	.byte	0x10
	.byte	0x10
	.byte	0x54
	.long	0x89c
	.uleb128 0x8
	.long	.LASF71
	.byte	0x10
	.byte	0x55
	.long	0x8f
	.byte	0
	.uleb128 0x8
	.long	.LASF137
	.byte	0x10
	.byte	0x56
	.long	0x2b9
	.byte	0x8
	.byte	0
	.uleb128 0x2
	.long	.LASF138
	.byte	0x10
	.byte	0x58
	.long	0x87b
	.uleb128 0x12
	.byte	0x10
	.byte	0x10
	.byte	0x5e
	.long	0x8f5
	.uleb128 0x8
	.long	.LASF139
	.byte	0x10
	.byte	0x5f
	.long	0x6b5
	.byte	0
	.uleb128 0x8
	.long	.LASF140
	.byte	0x10
	.byte	0x62
	.long	0x6c0
	.byte	0x4
	.uleb128 0x11
	.string	"ci"
	.byte	0x10
	.byte	0x63
	.long	0x69f
	.byte	0x8
	.uleb128 0x11
	.string	"lc"
	.byte	0x10
	.byte	0x63
	.long	0x69f
	.byte	0x9
	.uleb128 0x11
	.string	"rc"
	.byte	0x10
	.byte	0x63
	.long	0x69f
	.byte	0xa
	.uleb128 0x8
	.long	.LASF141
	.byte	0x10
	.byte	0x64
	.long	0x870
	.byte	0xc
	.byte	0
	.uleb128 0x2
	.long	.LASF142
	.byte	0x10
	.byte	0x65
	.long	0x8a7
	.uleb128 0x7
	.long	.LASF143
	.byte	0x10
	.byte	0x10
	.byte	0x6c
	.long	0x930
	.uleb128 0x11
	.string	"rc"
	.byte	0x10
	.byte	0x6d
	.long	0x69f
	.byte	0
	.uleb128 0x11
	.string	"pid"
	.byte	0x10
	.byte	0x6e
	.long	0x6aa
	.byte	0x4
	.uleb128 0x8
	.long	.LASF62
	.byte	0x10
	.byte	0x6f
	.long	0x930
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x900
	.uleb128 0x2
	.long	.LASF144
	.byte	0x10
	.byte	0x70
	.long	0x900
	.uleb128 0x7
	.long	.LASF145
	.byte	0x18
	.byte	0x10
	.byte	0x72
	.long	0x971
	.uleb128 0x11
	.string	"lc"
	.byte	0x10
	.byte	0x73
	.long	0x69f
	.byte	0
	.uleb128 0x8
	.long	.LASF146
	.byte	0x10
	.byte	0x74
	.long	0x971
	.byte	0x8
	.uleb128 0x8
	.long	.LASF62
	.byte	0x10
	.byte	0x75
	.long	0x977
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x936
	.uleb128 0x6
	.byte	0x8
	.long	0x941
	.uleb128 0x2
	.long	.LASF147
	.byte	0x10
	.byte	0x76
	.long	0x941
	.uleb128 0x12
	.byte	0x68
	.byte	0x10
	.byte	0x7a
	.long	0xa51
	.uleb128 0x8
	.long	.LASF148
	.byte	0x10
	.byte	0x7b
	.long	0x2b9
	.byte	0
	.uleb128 0x8
	.long	.LASF149
	.byte	0x10
	.byte	0x7c
	.long	0x2b9
	.byte	0x4
	.uleb128 0x8
	.long	.LASF150
	.byte	0x10
	.byte	0x7d
	.long	0x2b9
	.byte	0x8
	.uleb128 0x8
	.long	.LASF151
	.byte	0x10
	.byte	0x7e
	.long	0x2b9
	.byte	0xc
	.uleb128 0x8
	.long	.LASF152
	.byte	0x10
	.byte	0x7f
	.long	0x2b9
	.byte	0x10
	.uleb128 0x8
	.long	.LASF153
	.byte	0x10
	.byte	0x80
	.long	0x2b9
	.byte	0x14
	.uleb128 0x8
	.long	.LASF154
	.byte	0x10
	.byte	0x82
	.long	0xa51
	.byte	0x18
	.uleb128 0x8
	.long	.LASF155
	.byte	0x10
	.byte	0x83
	.long	0xa57
	.byte	0x20
	.uleb128 0x8
	.long	.LASF156
	.byte	0x10
	.byte	0x84
	.long	0xa5d
	.byte	0x28
	.uleb128 0x8
	.long	.LASF157
	.byte	0x10
	.byte	0x85
	.long	0xa63
	.byte	0x30
	.uleb128 0x8
	.long	.LASF158
	.byte	0x10
	.byte	0x87
	.long	0x2b9
	.byte	0x38
	.uleb128 0x8
	.long	.LASF159
	.byte	0x10
	.byte	0x89
	.long	0xa69
	.byte	0x40
	.uleb128 0x8
	.long	.LASF160
	.byte	0x10
	.byte	0x8c
	.long	0xa6f
	.byte	0x48
	.uleb128 0x8
	.long	.LASF161
	.byte	0x10
	.byte	0x8d
	.long	0x4f2
	.byte	0x50
	.uleb128 0x11
	.string	"sil"
	.byte	0x10
	.byte	0x8f
	.long	0x69f
	.byte	0x58
	.uleb128 0x8
	.long	.LASF162
	.byte	0x10
	.byte	0x91
	.long	0xa75
	.byte	0x60
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x42e
	.uleb128 0x6
	.byte	0x8
	.long	0x89c
	.uleb128 0x6
	.byte	0x8
	.long	0x8f5
	.uleb128 0x6
	.byte	0x8
	.long	0xa69
	.uleb128 0x6
	.byte	0x8
	.long	0x6ec
	.uleb128 0x6
	.byte	0x8
	.long	0x69f
	.uleb128 0x6
	.byte	0x8
	.long	0xa7b
	.uleb128 0x6
	.byte	0x8
	.long	0xa81
	.uleb128 0x6
	.byte	0x8
	.long	0x97d
	.uleb128 0x2
	.long	.LASF163
	.byte	0x10
	.byte	0x96
	.long	0x988
	.uleb128 0x12
	.byte	0x28
	.byte	0x11
	.byte	0x47
	.long	0xaef
	.uleb128 0x8
	.long	.LASF164
	.byte	0x11
	.byte	0x48
	.long	0x8f
	.byte	0
	.uleb128 0x8
	.long	.LASF155
	.byte	0x11
	.byte	0x49
	.long	0xa6f
	.byte	0x8
	.uleb128 0x8
	.long	.LASF165
	.byte	0x11
	.byte	0x4a
	.long	0x2b9
	.byte	0x10
	.uleb128 0x11
	.string	"alt"
	.byte	0x11
	.byte	0x4b
	.long	0x6cb
	.byte	0x14
	.uleb128 0x8
	.long	.LASF166
	.byte	0x11
	.byte	0x4c
	.long	0x6cb
	.byte	0x18
	.uleb128 0x8
	.long	.LASF79
	.byte	0x11
	.byte	0x4d
	.long	0x2b9
	.byte	0x1c
	.uleb128 0x8
	.long	.LASF167
	.byte	0x11
	.byte	0x51
	.long	0xaef
	.byte	0x20
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x6cb
	.uleb128 0x2
	.long	.LASF168
	.byte	0x11
	.byte	0x52
	.long	0xa92
	.uleb128 0x12
	.byte	0x58
	.byte	0x11
	.byte	0x54
	.long	0xbb0
	.uleb128 0x8
	.long	.LASF169
	.byte	0x11
	.byte	0x55
	.long	0xbb0
	.byte	0
	.uleb128 0x11
	.string	"pht"
	.byte	0x11
	.byte	0x56
	.long	0xa51
	.byte	0x8
	.uleb128 0x8
	.long	.LASF170
	.byte	0x11
	.byte	0x57
	.long	0xbb6
	.byte	0x10
	.uleb128 0x8
	.long	.LASF148
	.byte	0x11
	.byte	0x58
	.long	0x2b9
	.byte	0x18
	.uleb128 0x8
	.long	.LASF164
	.byte	0x11
	.byte	0x59
	.long	0xbbc
	.byte	0x20
	.uleb128 0x11
	.string	"ht"
	.byte	0x11
	.byte	0x5a
	.long	0xa51
	.byte	0x28
	.uleb128 0x8
	.long	.LASF171
	.byte	0x11
	.byte	0x5b
	.long	0x2b9
	.byte	0x30
	.uleb128 0x8
	.long	.LASF172
	.byte	0x11
	.byte	0x5c
	.long	0x2b9
	.byte	0x34
	.uleb128 0x8
	.long	.LASF173
	.byte	0x11
	.byte	0x5d
	.long	0x2b9
	.byte	0x38
	.uleb128 0x8
	.long	.LASF174
	.byte	0x11
	.byte	0x5e
	.long	0x2b9
	.byte	0x3c
	.uleb128 0x8
	.long	.LASF175
	.byte	0x11
	.byte	0x5f
	.long	0xaef
	.byte	0x40
	.uleb128 0x8
	.long	.LASF176
	.byte	0x11
	.byte	0x62
	.long	0x6cb
	.byte	0x48
	.uleb128 0x8
	.long	.LASF177
	.byte	0x11
	.byte	0x63
	.long	0x6cb
	.byte	0x4c
	.uleb128 0x8
	.long	.LASF178
	.byte	0x11
	.byte	0x64
	.long	0x6cb
	.byte	0x50
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xa87
	.uleb128 0x6
	.byte	0x8
	.long	0x8f
	.uleb128 0x6
	.byte	0x8
	.long	0xaf5
	.uleb128 0x2
	.long	.LASF179
	.byte	0x11
	.byte	0x65
	.long	0xb00
	.uleb128 0x12
	.byte	0x38
	.byte	0x12
	.byte	0x63
	.long	0xc36
	.uleb128 0x8
	.long	.LASF180
	.byte	0x12
	.byte	0x64
	.long	0xc36
	.byte	0
	.uleb128 0x8
	.long	.LASF181
	.byte	0x12
	.byte	0x67
	.long	0xc42
	.byte	0x8
	.uleb128 0x8
	.long	.LASF182
	.byte	0x12
	.byte	0x69
	.long	0xc36
	.byte	0x10
	.uleb128 0x8
	.long	.LASF183
	.byte	0x12
	.byte	0x6c
	.long	0xa63
	.byte	0x18
	.uleb128 0x8
	.long	.LASF184
	.byte	0x12
	.byte	0x6e
	.long	0xa63
	.byte	0x20
	.uleb128 0x8
	.long	.LASF185
	.byte	0x12
	.byte	0x70
	.long	0x4f2
	.byte	0x28
	.uleb128 0x8
	.long	.LASF186
	.byte	0x12
	.byte	0x72
	.long	0x2b9
	.byte	0x30
	.uleb128 0x8
	.long	.LASF187
	.byte	0x12
	.byte	0x73
	.long	0x2b9
	.byte	0x34
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xc3c
	.uleb128 0x6
	.byte	0x8
	.long	0x6b5
	.uleb128 0x6
	.byte	0x8
	.long	0xc36
	.uleb128 0x2
	.long	.LASF188
	.byte	0x12
	.byte	0x74
	.long	0xbcd
	.uleb128 0x12
	.byte	0x20
	.byte	0x13
	.byte	0x3e
	.long	0xc8b
	.uleb128 0x8
	.long	.LASF189
	.byte	0x13
	.byte	0x3f
	.long	0xc8b
	.byte	0
	.uleb128 0x8
	.long	.LASF190
	.byte	0x13
	.byte	0x41
	.long	0x4f2
	.byte	0x8
	.uleb128 0x11
	.string	"lw"
	.byte	0x13
	.byte	0x43
	.long	0x306
	.byte	0x10
	.uleb128 0x11
	.string	"wip"
	.byte	0x13
	.byte	0x44
	.long	0x306
	.byte	0x18
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xbc2
	.uleb128 0x2
	.long	.LASF191
	.byte	0x13
	.byte	0x45
	.long	0xc53
	.uleb128 0x7
	.long	.LASF192
	.byte	0x18
	.byte	0x14
	.byte	0x42
	.long	0xcd9
	.uleb128 0x8
	.long	.LASF164
	.byte	0x14
	.byte	0x43
	.long	0x8f
	.byte	0
	.uleb128 0x8
	.long	.LASF193
	.byte	0x14
	.byte	0x44
	.long	0x2b9
	.byte	0x8
	.uleb128 0x8
	.long	.LASF194
	.byte	0x14
	.byte	0x46
	.long	0x2b9
	.byte	0xc
	.uleb128 0x8
	.long	.LASF62
	.byte	0x14
	.byte	0x47
	.long	0xcd9
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xc9c
	.uleb128 0x2
	.long	.LASF195
	.byte	0x14
	.byte	0x49
	.long	0xcd9
	.uleb128 0x7
	.long	.LASF196
	.byte	0x18
	.byte	0x14
	.byte	0x4f
	.long	0xd1b
	.uleb128 0x8
	.long	.LASF71
	.byte	0x14
	.byte	0x50
	.long	0x8f
	.byte	0
	.uleb128 0x8
	.long	.LASF197
	.byte	0x14
	.byte	0x51
	.long	0xcdf
	.byte	0x8
	.uleb128 0x8
	.long	.LASF62
	.byte	0x14
	.byte	0x52
	.long	0xd1b
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xcea
	.uleb128 0x2
	.long	.LASF198
	.byte	0x14
	.byte	0x54
	.long	0xd1b
	.uleb128 0x17
	.byte	0x4
	.byte	0x15
	.byte	0x4d
	.long	0xd47
	.uleb128 0xf
	.string	"f"
	.byte	0x15
	.byte	0x4e
	.long	0x2fb
	.uleb128 0xf
	.string	"l"
	.byte	0x15
	.byte	0x4f
	.long	0x2b9
	.byte	0
	.uleb128 0x2
	.long	.LASF199
	.byte	0x15
	.byte	0x50
	.long	0xd2c
	.uleb128 0x12
	.byte	0x10
	.byte	0x15
	.byte	0x52
	.long	0xd8b
	.uleb128 0x8
	.long	.LASF193
	.byte	0x15
	.byte	0x53
	.long	0x6cb
	.byte	0
	.uleb128 0x8
	.long	.LASF190
	.byte	0x15
	.byte	0x57
	.long	0xd47
	.byte	0x4
	.uleb128 0x8
	.long	.LASF200
	.byte	0x15
	.byte	0x58
	.long	0xd47
	.byte	0x8
	.uleb128 0x8
	.long	.LASF201
	.byte	0x15
	.byte	0x59
	.long	0x2b9
	.byte	0xc
	.byte	0
	.uleb128 0x2
	.long	.LASF202
	.byte	0x15
	.byte	0x5a
	.long	0xd52
	.uleb128 0x12
	.byte	0x8
	.byte	0x15
	.byte	0x5c
	.long	0xdcf
	.uleb128 0x11
	.string	"wid"
	.byte	0x15
	.byte	0x5d
	.long	0x6d6
	.byte	0
	.uleb128 0x8
	.long	.LASF203
	.byte	0x15
	.byte	0x5e
	.long	0x2e5
	.byte	0x2
	.uleb128 0x8
	.long	.LASF204
	.byte	0x15
	.byte	0x5f
	.long	0x2e5
	.byte	0x4
	.uleb128 0x8
	.long	.LASF205
	.byte	0x15
	.byte	0x60
	.long	0x2e5
	.byte	0x6
	.byte	0
	.uleb128 0x2
	.long	.LASF206
	.byte	0x15
	.byte	0x61
	.long	0xd96
	.uleb128 0x12
	.byte	0x4
	.byte	0x15
	.byte	0x63
	.long	0xdfb
	.uleb128 0x11
	.string	"wid"
	.byte	0x15
	.byte	0x64
	.long	0x6d6
	.byte	0
	.uleb128 0x8
	.long	.LASF203
	.byte	0x15
	.byte	0x65
	.long	0x2e5
	.byte	0x2
	.byte	0
	.uleb128 0x2
	.long	.LASF207
	.byte	0x15
	.byte	0x66
	.long	0xdda
	.uleb128 0x12
	.byte	0x10
	.byte	0x15
	.byte	0x6c
	.long	0xe26
	.uleb128 0x11
	.string	"bg"
	.byte	0x15
	.byte	0x6d
	.long	0xe26
	.byte	0
	.uleb128 0x8
	.long	.LASF208
	.byte	0x15
	.byte	0x6e
	.long	0x2b9
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xdcf
	.uleb128 0x2
	.long	.LASF209
	.byte	0x15
	.byte	0x70
	.long	0xe06
	.uleb128 0x7
	.long	.LASF210
	.byte	0x20
	.byte	0x15
	.byte	0x7a
	.long	0xe8a
	.uleb128 0x11
	.string	"w1"
	.byte	0x15
	.byte	0x7b
	.long	0x6d6
	.byte	0
	.uleb128 0x8
	.long	.LASF211
	.byte	0x15
	.byte	0x7d
	.long	0x2b9
	.byte	0x4
	.uleb128 0x11
	.string	"tg"
	.byte	0x15
	.byte	0x7e
	.long	0xe8a
	.byte	0x8
	.uleb128 0x8
	.long	.LASF200
	.byte	0x15
	.byte	0x7f
	.long	0x2b9
	.byte	0x10
	.uleb128 0x8
	.long	.LASF208
	.byte	0x15
	.byte	0x80
	.long	0x2b9
	.byte	0x14
	.uleb128 0x8
	.long	.LASF62
	.byte	0x15
	.byte	0x81
	.long	0xe90
	.byte	0x18
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xdfb
	.uleb128 0x6
	.byte	0x8
	.long	0xe37
	.uleb128 0x2
	.long	.LASF212
	.byte	0x15
	.byte	0x82
	.long	0xe37
	.uleb128 0x12
	.byte	0xc
	.byte	0x15
	.byte	0x88
	.long	0xec2
	.uleb128 0x8
	.long	.LASF213
	.byte	0x15
	.byte	0x89
	.long	0xec2
	.byte	0
	.uleb128 0x8
	.long	.LASF214
	.byte	0x15
	.byte	0x8a
	.long	0x2b9
	.byte	0x8
	.byte	0
	.uleb128 0xb
	.long	0x6d6
	.long	0xed2
	.uleb128 0xc
	.long	0x86
	.byte	0x2
	.byte	0
	.uleb128 0x2
	.long	.LASF215
	.byte	0x15
	.byte	0x8b
	.long	0xea1
	.uleb128 0x7
	.long	.LASF216
	.byte	0xf8
	.byte	0x15
	.byte	0xb4
	.long	0x10e9
	.uleb128 0x8
	.long	.LASF217
	.byte	0x15
	.byte	0xb5
	.long	0x2b9
	.byte	0
	.uleb128 0x8
	.long	.LASF218
	.byte	0x15
	.byte	0xb6
	.long	0x2b9
	.byte	0x4
	.uleb128 0x8
	.long	.LASF211
	.byte	0x15
	.byte	0xb7
	.long	0x2b9
	.byte	0x8
	.uleb128 0x8
	.long	.LASF219
	.byte	0x15
	.byte	0xb8
	.long	0x2b9
	.byte	0xc
	.uleb128 0x8
	.long	.LASF220
	.byte	0x15
	.byte	0xba
	.long	0xbb6
	.byte	0x10
	.uleb128 0x8
	.long	.LASF221
	.byte	0x15
	.byte	0xbc
	.long	0x6d6
	.byte	0x18
	.uleb128 0x8
	.long	.LASF222
	.byte	0x15
	.byte	0xbd
	.long	0x6d6
	.byte	0x1a
	.uleb128 0x8
	.long	.LASF223
	.byte	0x15
	.byte	0xbf
	.long	0x2b9
	.byte	0x1c
	.uleb128 0x8
	.long	.LASF224
	.byte	0x15
	.byte	0xc0
	.long	0x2b9
	.byte	0x20
	.uleb128 0x11
	.string	"ug"
	.byte	0x15
	.byte	0xc2
	.long	0x10e9
	.byte	0x28
	.uleb128 0x11
	.string	"bg"
	.byte	0x15
	.byte	0xc3
	.long	0xe26
	.byte	0x30
	.uleb128 0x11
	.string	"tg"
	.byte	0x15
	.byte	0xc4
	.long	0xe8a
	.byte	0x38
	.uleb128 0x8
	.long	.LASF225
	.byte	0x15
	.byte	0xc5
	.long	0x10ef
	.byte	0x40
	.uleb128 0x8
	.long	.LASF226
	.byte	0x15
	.byte	0xc6
	.long	0x10f5
	.byte	0x48
	.uleb128 0x8
	.long	.LASF227
	.byte	0x15
	.byte	0xc8
	.long	0x1101
	.byte	0x50
	.uleb128 0x8
	.long	.LASF228
	.byte	0x15
	.byte	0xc9
	.long	0x1101
	.byte	0x58
	.uleb128 0x8
	.long	.LASF229
	.byte	0x15
	.byte	0xca
	.long	0x1101
	.byte	0x60
	.uleb128 0x8
	.long	.LASF230
	.byte	0x15
	.byte	0xcb
	.long	0x4f2
	.byte	0x68
	.uleb128 0x8
	.long	.LASF231
	.byte	0x15
	.byte	0xcd
	.long	0x2b9
	.byte	0x70
	.uleb128 0x8
	.long	.LASF232
	.byte	0x15
	.byte	0xce
	.long	0x2b9
	.byte	0x74
	.uleb128 0x8
	.long	.LASF233
	.byte	0x15
	.byte	0xcf
	.long	0x2b9
	.byte	0x78
	.uleb128 0x11
	.string	"fp"
	.byte	0x15
	.byte	0xd1
	.long	0x787
	.byte	0x80
	.uleb128 0x8
	.long	.LASF234
	.byte	0x15
	.byte	0xd2
	.long	0x2b9
	.byte	0x88
	.uleb128 0x8
	.long	.LASF235
	.byte	0x15
	.byte	0xd3
	.long	0x2b9
	.byte	0x8c
	.uleb128 0x8
	.long	.LASF236
	.byte	0x15
	.byte	0xd4
	.long	0x2b9
	.byte	0x90
	.uleb128 0x11
	.string	"lw"
	.byte	0x15
	.byte	0xd6
	.long	0x2fb
	.byte	0x94
	.uleb128 0x11
	.string	"wip"
	.byte	0x15
	.byte	0xd7
	.long	0x2b9
	.byte	0x98
	.uleb128 0x8
	.long	.LASF237
	.byte	0x15
	.byte	0xdd
	.long	0x1107
	.byte	0xa0
	.uleb128 0x8
	.long	.LASF238
	.byte	0x15
	.byte	0xe0
	.long	0x2b9
	.byte	0xa8
	.uleb128 0x8
	.long	.LASF239
	.byte	0x15
	.byte	0xe1
	.long	0x2b9
	.byte	0xac
	.uleb128 0x8
	.long	.LASF240
	.byte	0x15
	.byte	0xe2
	.long	0x2b9
	.byte	0xb0
	.uleb128 0x8
	.long	.LASF241
	.byte	0x15
	.byte	0xe3
	.long	0x2b9
	.byte	0xb4
	.uleb128 0x8
	.long	.LASF242
	.byte	0x15
	.byte	0xe4
	.long	0x2b9
	.byte	0xb8
	.uleb128 0x8
	.long	.LASF243
	.byte	0x15
	.byte	0xe5
	.long	0x2b9
	.byte	0xbc
	.uleb128 0x8
	.long	.LASF244
	.byte	0x15
	.byte	0xe6
	.long	0x2b9
	.byte	0xc0
	.uleb128 0x8
	.long	.LASF245
	.byte	0x15
	.byte	0xe7
	.long	0x2b9
	.byte	0xc4
	.uleb128 0x8
	.long	.LASF246
	.byte	0x15
	.byte	0xe8
	.long	0x2b9
	.byte	0xc8
	.uleb128 0x8
	.long	.LASF247
	.byte	0x15
	.byte	0xea
	.long	0x2b9
	.byte	0xcc
	.uleb128 0x8
	.long	.LASF248
	.byte	0x15
	.byte	0xef
	.long	0x110d
	.byte	0xd0
	.uleb128 0x8
	.long	.LASF249
	.byte	0x15
	.byte	0xf2
	.long	0x2b9
	.byte	0xd8
	.uleb128 0x8
	.long	.LASF250
	.byte	0x15
	.byte	0xf4
	.long	0x1113
	.byte	0xe0
	.uleb128 0x8
	.long	.LASF251
	.byte	0x15
	.byte	0xf5
	.long	0x2b9
	.byte	0xe8
	.uleb128 0x8
	.long	.LASF252
	.byte	0x15
	.byte	0xf6
	.long	0x4f2
	.byte	0xf0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xd8b
	.uleb128 0x6
	.byte	0x8
	.long	0xe2c
	.uleb128 0x6
	.byte	0x8
	.long	0x10fb
	.uleb128 0x6
	.byte	0x8
	.long	0xe96
	.uleb128 0x6
	.byte	0x8
	.long	0xd47
	.uleb128 0x6
	.byte	0x8
	.long	0xed2
	.uleb128 0x6
	.byte	0x8
	.long	0x6d6
	.uleb128 0x6
	.byte	0x8
	.long	0xd21
	.uleb128 0x2
	.long	.LASF253
	.byte	0x15
	.byte	0xf8
	.long	0xedd
	.uleb128 0x7
	.long	.LASF254
	.byte	0x10
	.byte	0x15
	.byte	0xfb
	.long	0x1148
	.uleb128 0x8
	.long	.LASF71
	.byte	0x15
	.byte	0xfc
	.long	0x8f
	.byte	0
	.uleb128 0x11
	.string	"lm"
	.byte	0x15
	.byte	0xfd
	.long	0x1148
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x1119
	.uleb128 0x2
	.long	.LASF255
	.byte	0x15
	.byte	0xfe
	.long	0x1124
	.uleb128 0x12
	.byte	0x10
	.byte	0x16
	.byte	0x4a
	.long	0x1185
	.uleb128 0x11
	.string	"tp"
	.byte	0x16
	.byte	0x4b
	.long	0x68e
	.byte	0
	.uleb128 0x8
	.long	.LASF153
	.byte	0x16
	.byte	0x4d
	.long	0x2b9
	.byte	0x8
	.uleb128 0x8
	.long	.LASF256
	.byte	0x16
	.byte	0x4e
	.long	0x2b9
	.byte	0xc
	.byte	0
	.uleb128 0x2
	.long	.LASF257
	.byte	0x16
	.byte	0x50
	.long	0x1159
	.uleb128 0x12
	.byte	0x68
	.byte	0x17
	.byte	0x50
	.long	0x123f
	.uleb128 0x11
	.string	"fcb"
	.byte	0x17
	.byte	0x51
	.long	0x123f
	.byte	0
	.uleb128 0x8
	.long	.LASF169
	.byte	0x17
	.byte	0x52
	.long	0xbb0
	.byte	0x8
	.uleb128 0x8
	.long	.LASF189
	.byte	0x17
	.byte	0x53
	.long	0xc8b
	.byte	0x10
	.uleb128 0x8
	.long	.LASF258
	.byte	0x17
	.byte	0x54
	.long	0x1245
	.byte	0x18
	.uleb128 0x11
	.string	"lm"
	.byte	0x17
	.byte	0x55
	.long	0x1148
	.byte	0x20
	.uleb128 0x8
	.long	.LASF259
	.byte	0x17
	.byte	0x56
	.long	0x124b
	.byte	0x28
	.uleb128 0x8
	.long	.LASF260
	.byte	0x17
	.byte	0x57
	.long	0x1251
	.byte	0x30
	.uleb128 0x8
	.long	.LASF248
	.byte	0x17
	.byte	0x58
	.long	0x110d
	.byte	0x38
	.uleb128 0x8
	.long	.LASF86
	.byte	0x17
	.byte	0x59
	.long	0x1257
	.byte	0x40
	.uleb128 0x11
	.string	"svq"
	.byte	0x17
	.byte	0x5a
	.long	0x125d
	.byte	0x48
	.uleb128 0x11
	.string	"gs"
	.byte	0x17
	.byte	0x5b
	.long	0x1263
	.byte	0x50
	.uleb128 0x8
	.long	.LASF140
	.byte	0x17
	.byte	0x5c
	.long	0x1269
	.byte	0x58
	.uleb128 0x8
	.long	.LASF261
	.byte	0x17
	.byte	0x5d
	.long	0x2b9
	.byte	0x60
	.uleb128 0x8
	.long	.LASF262
	.byte	0x17
	.byte	0x5e
	.long	0x2b9
	.byte	0x64
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x83e
	.uleb128 0x6
	.byte	0x8
	.long	0xc48
	.uleb128 0x6
	.byte	0x8
	.long	0x114e
	.uleb128 0x6
	.byte	0x8
	.long	0xc91
	.uleb128 0x6
	.byte	0x8
	.long	0x572
	.uleb128 0x6
	.byte	0x8
	.long	0x694
	.uleb128 0x6
	.byte	0x8
	.long	0x78d
	.uleb128 0x6
	.byte	0x8
	.long	0x1185
	.uleb128 0x2
	.long	.LASF263
	.byte	0x17
	.byte	0x5f
	.long	0x1190
	.uleb128 0x12
	.byte	0x8
	.byte	0x18
	.byte	0x69
	.long	0x129b
	.uleb128 0x8
	.long	.LASF264
	.byte	0x18
	.byte	0x6a
	.long	0x2b9
	.byte	0
	.uleb128 0x8
	.long	.LASF265
	.byte	0x18
	.byte	0x6b
	.long	0x2b9
	.byte	0x4
	.byte	0
	.uleb128 0x2
	.long	.LASF266
	.byte	0x18
	.byte	0x6c
	.long	0x127a
	.uleb128 0x12
	.byte	0x28
	.byte	0x18
	.byte	0x6e
	.long	0x12e9
	.uleb128 0x8
	.long	.LASF267
	.byte	0x18
	.byte	0x6f
	.long	0x12e9
	.byte	0
	.uleb128 0x11
	.string	"in"
	.byte	0x18
	.byte	0x70
	.long	0x129b
	.byte	0x8
	.uleb128 0x11
	.string	"out"
	.byte	0x18
	.byte	0x71
	.long	0x129b
	.byte	0x10
	.uleb128 0x11
	.string	"tp"
	.byte	0x18
	.byte	0x72
	.long	0x682
	.byte	0x18
	.uleb128 0x8
	.long	.LASF268
	.byte	0x18
	.byte	0x73
	.long	0x2b9
	.byte	0x20
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x129b
	.uleb128 0x2
	.long	.LASF269
	.byte	0x18
	.byte	0x74
	.long	0x12a6
	.uleb128 0x12
	.byte	0x1c
	.byte	0x19
	.byte	0x3c
	.long	0x1354
	.uleb128 0x11
	.string	"id"
	.byte	0x19
	.byte	0x3d
	.long	0x2b9
	.byte	0
	.uleb128 0x8
	.long	.LASF270
	.byte	0x19
	.byte	0x3e
	.long	0x2b9
	.byte	0x4
	.uleb128 0x11
	.string	"sf"
	.byte	0x19
	.byte	0x3f
	.long	0x2b9
	.byte	0x8
	.uleb128 0x11
	.string	"ef"
	.byte	0x19
	.byte	0x3f
	.long	0x2b9
	.byte	0xc
	.uleb128 0x8
	.long	.LASF271
	.byte	0x19
	.byte	0x40
	.long	0x2b9
	.byte	0x10
	.uleb128 0x8
	.long	.LASF214
	.byte	0x19
	.byte	0x41
	.long	0x2b9
	.byte	0x14
	.uleb128 0x8
	.long	.LASF272
	.byte	0x19
	.byte	0x42
	.long	0x2b9
	.byte	0x18
	.byte	0
	.uleb128 0x2
	.long	.LASF273
	.byte	0x19
	.byte	0x43
	.long	0x12fa
	.uleb128 0x12
	.byte	0x4
	.byte	0x1a
	.byte	0x50
	.long	0x1374
	.uleb128 0x8
	.long	.LASF213
	.byte	0x1a
	.byte	0x51
	.long	0x1374
	.byte	0
	.byte	0
	.uleb128 0xb
	.long	0x6d6
	.long	0x1384
	.uleb128 0xc
	.long	0x86
	.byte	0x1
	.byte	0
	.uleb128 0x17
	.byte	0x4
	.byte	0x1a
	.byte	0x4f
	.long	0x1398
	.uleb128 0x10
	.long	.LASF274
	.byte	0x1a
	.byte	0x52
	.long	0x135f
	.byte	0
	.uleb128 0x2
	.long	.LASF275
	.byte	0x1a
	.byte	0x53
	.long	0x1384
	.uleb128 0x12
	.byte	0x24
	.byte	0x1a
	.byte	0x59
	.long	0x1422
	.uleb128 0x11
	.string	"wid"
	.byte	0x1a
	.byte	0x5a
	.long	0x6cb
	.byte	0
	.uleb128 0x11
	.string	"sf"
	.byte	0x1a
	.byte	0x5b
	.long	0x6e1
	.byte	0x4
	.uleb128 0x11
	.string	"ef"
	.byte	0x1a
	.byte	0x5b
	.long	0x6e1
	.byte	0x6
	.uleb128 0x8
	.long	.LASF271
	.byte	0x1a
	.byte	0x5c
	.long	0x2b9
	.byte	0x8
	.uleb128 0x8
	.long	.LASF214
	.byte	0x1a
	.byte	0x5d
	.long	0x2b9
	.byte	0xc
	.uleb128 0x8
	.long	.LASF264
	.byte	0x1a
	.byte	0x5e
	.long	0x2b9
	.byte	0x10
	.uleb128 0x8
	.long	.LASF276
	.byte	0x1a
	.byte	0x5f
	.long	0x2b9
	.byte	0x14
	.uleb128 0x8
	.long	.LASF272
	.byte	0x1a
	.byte	0x60
	.long	0x2b9
	.byte	0x18
	.uleb128 0x8
	.long	.LASF277
	.byte	0x1a
	.byte	0x61
	.long	0x2b9
	.byte	0x1c
	.uleb128 0x8
	.long	.LASF278
	.byte	0x1a
	.byte	0x62
	.long	0x1398
	.byte	0x20
	.byte	0
	.uleb128 0x2
	.long	.LASF279
	.byte	0x1a
	.byte	0x63
	.long	0x13a3
	.uleb128 0x12
	.byte	0x18
	.byte	0x1a
	.byte	0x79
	.long	0x1465
	.uleb128 0x8
	.long	.LASF267
	.byte	0x1a
	.byte	0x7a
	.long	0x2b9
	.byte	0
	.uleb128 0x8
	.long	.LASF270
	.byte	0x1a
	.byte	0x7b
	.long	0x2b9
	.byte	0x4
	.uleb128 0x11
	.string	"ve"
	.byte	0x1a
	.byte	0x7c
	.long	0x1465
	.byte	0x8
	.uleb128 0x8
	.long	.LASF280
	.byte	0x1a
	.byte	0x7d
	.long	0x39c
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x1422
	.uleb128 0x2
	.long	.LASF281
	.byte	0x1a
	.byte	0x7f
	.long	0x142d
	.uleb128 0x12
	.byte	0x40
	.byte	0x1a
	.byte	0x88
	.long	0x14f7
	.uleb128 0x8
	.long	.LASF282
	.byte	0x1a
	.byte	0x89
	.long	0x14f7
	.byte	0
	.uleb128 0x8
	.long	.LASF283
	.byte	0x1a
	.byte	0x8a
	.long	0x4f2
	.byte	0x8
	.uleb128 0x8
	.long	.LASF284
	.byte	0x1a
	.byte	0x8c
	.long	0x2b9
	.byte	0x10
	.uleb128 0x8
	.long	.LASF285
	.byte	0x1a
	.byte	0x8d
	.long	0x2b9
	.byte	0x14
	.uleb128 0x8
	.long	.LASF286
	.byte	0x1a
	.byte	0x8f
	.long	0x2b9
	.byte	0x18
	.uleb128 0x8
	.long	.LASF287
	.byte	0x1a
	.byte	0x92
	.long	0x2b9
	.byte	0x1c
	.uleb128 0x8
	.long	.LASF268
	.byte	0x1a
	.byte	0x94
	.long	0x4f2
	.byte	0x20
	.uleb128 0x8
	.long	.LASF288
	.byte	0x1a
	.byte	0x95
	.long	0x4f2
	.byte	0x28
	.uleb128 0x8
	.long	.LASF289
	.byte	0x1a
	.byte	0x97
	.long	0x14fd
	.byte	0x30
	.uleb128 0x8
	.long	.LASF290
	.byte	0x1a
	.byte	0x98
	.long	0x39c
	.byte	0x38
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x1465
	.uleb128 0x6
	.byte	0x8
	.long	0x1503
	.uleb128 0x6
	.byte	0x8
	.long	0x146b
	.uleb128 0x2
	.long	.LASF291
	.byte	0x1a
	.byte	0x99
	.long	0x1476
	.uleb128 0x12
	.byte	0x10
	.byte	0x1b
	.byte	0x40
	.long	0x1535
	.uleb128 0x11
	.string	"sen"
	.byte	0x1b
	.byte	0x41
	.long	0x4f2
	.byte	0
	.uleb128 0x8
	.long	.LASF292
	.byte	0x1b
	.byte	0x42
	.long	0x4f2
	.byte	0x8
	.byte	0
	.uleb128 0x2
	.long	.LASF293
	.byte	0x1b
	.byte	0x43
	.long	0x1514
	.uleb128 0x12
	.byte	0x50
	.byte	0x1c
	.byte	0x5e
	.long	0x15b4
	.uleb128 0x11
	.string	"hmm"
	.byte	0x1c
	.byte	0x5f
	.long	0x12ef
	.byte	0
	.uleb128 0x8
	.long	.LASF280
	.byte	0x1c
	.byte	0x60
	.long	0x39c
	.byte	0x28
	.uleb128 0x11
	.string	"wid"
	.byte	0x1c
	.byte	0x61
	.long	0x2b9
	.byte	0x30
	.uleb128 0x8
	.long	.LASF190
	.byte	0x1c
	.byte	0x62
	.long	0x2b9
	.byte	0x34
	.uleb128 0x8
	.long	.LASF139
	.byte	0x1c
	.byte	0x63
	.long	0x2b9
	.byte	0x38
	.uleb128 0x8
	.long	.LASF294
	.byte	0x1c
	.byte	0x64
	.long	0xc3c
	.byte	0x40
	.uleb128 0x11
	.string	"ci"
	.byte	0x1c
	.byte	0x66
	.long	0x69f
	.byte	0x48
	.uleb128 0x8
	.long	.LASF295
	.byte	0x1c
	.byte	0x67
	.long	0x2cf
	.byte	0x49
	.uleb128 0x8
	.long	.LASF296
	.byte	0x1c
	.byte	0x68
	.long	0x6e1
	.byte	0x4a
	.byte	0
	.uleb128 0x2
	.long	.LASF297
	.byte	0x1c
	.byte	0x69
	.long	0x1540
	.uleb128 0x12
	.byte	0x10
	.byte	0x1c
	.byte	0x76
	.long	0x15df
	.uleb128 0x11
	.string	"lc"
	.byte	0x1c
	.byte	0x77
	.long	0x69f
	.byte	0
	.uleb128 0x8
	.long	.LASF298
	.byte	0x1c
	.byte	0x78
	.long	0x39c
	.byte	0x8
	.byte	0
	.uleb128 0x2
	.long	.LASF299
	.byte	0x1c
	.byte	0x7a
	.long	0x15bf
	.uleb128 0x12
	.byte	0x40
	.byte	0x1c
	.byte	0x7f
	.long	0x1677
	.uleb128 0x8
	.long	.LASF272
	.byte	0x1c
	.byte	0x80
	.long	0x2b9
	.byte	0
	.uleb128 0x8
	.long	.LASF298
	.byte	0x1c
	.byte	0x82
	.long	0x39c
	.byte	0x8
	.uleb128 0x8
	.long	.LASF300
	.byte	0x1c
	.byte	0x83
	.long	0x1677
	.byte	0x10
	.uleb128 0x8
	.long	.LASF301
	.byte	0x1c
	.byte	0x85
	.long	0x2b9
	.byte	0x18
	.uleb128 0x8
	.long	.LASF302
	.byte	0x1c
	.byte	0x86
	.long	0x2b9
	.byte	0x1c
	.uleb128 0x8
	.long	.LASF303
	.byte	0x1c
	.byte	0x87
	.long	0x167d
	.byte	0x20
	.uleb128 0x8
	.long	.LASF304
	.byte	0x1c
	.byte	0x88
	.long	0x167d
	.byte	0x28
	.uleb128 0x8
	.long	.LASF305
	.byte	0x1c
	.byte	0x8a
	.long	0x2b9
	.byte	0x30
	.uleb128 0x8
	.long	.LASF306
	.byte	0x1c
	.byte	0x8b
	.long	0x2b9
	.byte	0x34
	.uleb128 0x8
	.long	.LASF307
	.byte	0x1c
	.byte	0x8d
	.long	0x2b9
	.byte	0x38
	.uleb128 0x8
	.long	.LASF308
	.byte	0x1c
	.byte	0x8e
	.long	0x2b9
	.byte	0x3c
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x15df
	.uleb128 0x6
	.byte	0x8
	.long	0x1683
	.uleb128 0x6
	.byte	0x8
	.long	0x15b4
	.uleb128 0x2
	.long	.LASF309
	.byte	0x1c
	.byte	0x8f
	.long	0x15ea
	.uleb128 0x12
	.byte	0x10
	.byte	0x1d
	.byte	0x40
	.long	0x16cd
	.uleb128 0x8
	.long	.LASF310
	.byte	0x1d
	.byte	0x41
	.long	0x2b9
	.byte	0
	.uleb128 0x11
	.string	"hmm"
	.byte	0x1d
	.byte	0x42
	.long	0x2b9
	.byte	0x4
	.uleb128 0x8
	.long	.LASF311
	.byte	0x1d
	.byte	0x43
	.long	0x2b9
	.byte	0x8
	.uleb128 0x8
	.long	.LASF164
	.byte	0x1d
	.byte	0x44
	.long	0x2b9
	.byte	0xc
	.byte	0
	.uleb128 0x2
	.long	.LASF312
	.byte	0x1d
	.byte	0x45
	.long	0x1694
	.uleb128 0x18
	.value	0x1f8
	.byte	0x1e
	.byte	0x56
	.long	0x1977
	.uleb128 0x8
	.long	.LASF313
	.byte	0x1e
	.byte	0x57
	.long	0x1977
	.byte	0
	.uleb128 0x8
	.long	.LASF314
	.byte	0x1e
	.byte	0x58
	.long	0x2b9
	.byte	0x8
	.uleb128 0x8
	.long	.LASF315
	.byte	0x1e
	.byte	0x59
	.long	0x197d
	.byte	0x10
	.uleb128 0x8
	.long	.LASF316
	.byte	0x1e
	.byte	0x5a
	.long	0x197d
	.byte	0x18
	.uleb128 0x8
	.long	.LASF317
	.byte	0x1e
	.byte	0x5b
	.long	0x197d
	.byte	0x20
	.uleb128 0x8
	.long	.LASF318
	.byte	0x1e
	.byte	0x5c
	.long	0x2b9
	.byte	0x28
	.uleb128 0x8
	.long	.LASF319
	.byte	0x1e
	.byte	0x5e
	.long	0x1989
	.byte	0x30
	.uleb128 0x8
	.long	.LASF320
	.byte	0x1e
	.byte	0x60
	.long	0x198f
	.byte	0x38
	.uleb128 0x11
	.string	"nfr"
	.byte	0x1e
	.byte	0x61
	.long	0x2b9
	.byte	0x40
	.uleb128 0x8
	.long	.LASF321
	.byte	0x1e
	.byte	0x63
	.long	0x4f2
	.byte	0x48
	.uleb128 0x8
	.long	.LASF322
	.byte	0x1e
	.byte	0x64
	.long	0x4f2
	.byte	0x50
	.uleb128 0x8
	.long	.LASF323
	.byte	0x1e
	.byte	0x65
	.long	0x4f2
	.byte	0x58
	.uleb128 0x8
	.long	.LASF324
	.byte	0x1e
	.byte	0x66
	.long	0x4f2
	.byte	0x60
	.uleb128 0x8
	.long	.LASF325
	.byte	0x1e
	.byte	0x67
	.long	0x2b9
	.byte	0x68
	.uleb128 0x8
	.long	.LASF326
	.byte	0x1e
	.byte	0x68
	.long	0x2b9
	.byte	0x6c
	.uleb128 0x8
	.long	.LASF327
	.byte	0x1e
	.byte	0x6a
	.long	0x682
	.byte	0x70
	.uleb128 0x8
	.long	.LASF328
	.byte	0x1e
	.byte	0x6b
	.long	0x4f2
	.byte	0x78
	.uleb128 0x8
	.long	.LASF329
	.byte	0x1e
	.byte	0x6c
	.long	0x4f2
	.byte	0x80
	.uleb128 0x8
	.long	.LASF330
	.byte	0x1e
	.byte	0x6d
	.long	0x2b9
	.byte	0x88
	.uleb128 0x8
	.long	.LASF268
	.byte	0x1e
	.byte	0x6e
	.long	0x2b9
	.byte	0x8c
	.uleb128 0x8
	.long	.LASF331
	.byte	0x1e
	.byte	0x6f
	.long	0x2b9
	.byte	0x90
	.uleb128 0x8
	.long	.LASF271
	.byte	0x1e
	.byte	0x71
	.long	0x1995
	.byte	0x98
	.uleb128 0x8
	.long	.LASF332
	.byte	0x1e
	.byte	0x72
	.long	0x199b
	.byte	0xa0
	.uleb128 0x8
	.long	.LASF333
	.byte	0x1e
	.byte	0x73
	.long	0x2b9
	.byte	0xa8
	.uleb128 0x8
	.long	.LASF334
	.byte	0x1e
	.byte	0x74
	.long	0x2b9
	.byte	0xac
	.uleb128 0x8
	.long	.LASF335
	.byte	0x1e
	.byte	0x78
	.long	0x2b9
	.byte	0xb0
	.uleb128 0x8
	.long	.LASF336
	.byte	0x1e
	.byte	0x7a
	.long	0x2b9
	.byte	0xb4
	.uleb128 0x8
	.long	.LASF337
	.byte	0x1e
	.byte	0x7c
	.long	0x2b9
	.byte	0xb8
	.uleb128 0x8
	.long	.LASF338
	.byte	0x1e
	.byte	0x7f
	.long	0x2b9
	.byte	0xbc
	.uleb128 0x8
	.long	.LASF339
	.byte	0x1e
	.byte	0x80
	.long	0x2b9
	.byte	0xc0
	.uleb128 0x8
	.long	.LASF340
	.byte	0x1e
	.byte	0x81
	.long	0x2b9
	.byte	0xc4
	.uleb128 0x8
	.long	.LASF341
	.byte	0x1e
	.byte	0x82
	.long	0x2b9
	.byte	0xc8
	.uleb128 0x8
	.long	.LASF342
	.byte	0x1e
	.byte	0x83
	.long	0x2b9
	.byte	0xcc
	.uleb128 0x8
	.long	.LASF343
	.byte	0x1e
	.byte	0x84
	.long	0x8f
	.byte	0xd0
	.uleb128 0x8
	.long	.LASF344
	.byte	0x1e
	.byte	0x86
	.long	0x2b9
	.byte	0xd8
	.uleb128 0x8
	.long	.LASF345
	.byte	0x1e
	.byte	0x87
	.long	0x2b9
	.byte	0xdc
	.uleb128 0x8
	.long	.LASF346
	.byte	0x1e
	.byte	0x88
	.long	0x2b9
	.byte	0xe0
	.uleb128 0x8
	.long	.LASF347
	.byte	0x1e
	.byte	0x89
	.long	0x4f2
	.byte	0xe8
	.uleb128 0x8
	.long	.LASF348
	.byte	0x1e
	.byte	0x8a
	.long	0x2b9
	.byte	0xf0
	.uleb128 0x8
	.long	.LASF349
	.byte	0x1e
	.byte	0x8b
	.long	0x2b9
	.byte	0xf4
	.uleb128 0x8
	.long	.LASF350
	.byte	0x1e
	.byte	0x8d
	.long	0x496
	.byte	0xf8
	.uleb128 0x19
	.long	.LASF351
	.byte	0x1e
	.byte	0x8e
	.long	0x496
	.value	0x130
	.uleb128 0x19
	.long	.LASF352
	.byte	0x1e
	.byte	0x8f
	.long	0x496
	.value	0x168
	.uleb128 0x19
	.long	.LASF353
	.byte	0x1e
	.byte	0x90
	.long	0x2b9
	.value	0x1a0
	.uleb128 0x19
	.long	.LASF354
	.byte	0x1e
	.byte	0x91
	.long	0x306
	.value	0x1a8
	.uleb128 0x19
	.long	.LASF355
	.byte	0x1e
	.byte	0x92
	.long	0x306
	.value	0x1b0
	.uleb128 0x19
	.long	.LASF356
	.byte	0x1e
	.byte	0x93
	.long	0x306
	.value	0x1b8
	.uleb128 0x19
	.long	.LASF357
	.byte	0x1e
	.byte	0x94
	.long	0x306
	.value	0x1c0
	.uleb128 0x19
	.long	.LASF358
	.byte	0x1e
	.byte	0x95
	.long	0x787
	.value	0x1c8
	.uleb128 0x19
	.long	.LASF359
	.byte	0x1e
	.byte	0x96
	.long	0x787
	.value	0x1d0
	.uleb128 0x19
	.long	.LASF360
	.byte	0x1e
	.byte	0x98
	.long	0x19a1
	.value	0x1d8
	.uleb128 0x19
	.long	.LASF361
	.byte	0x1e
	.byte	0x99
	.long	0x2b9
	.value	0x1e0
	.uleb128 0x19
	.long	.LASF362
	.byte	0x1e
	.byte	0x9a
	.long	0x8f
	.value	0x1e8
	.uleb128 0x19
	.long	.LASF363
	.byte	0x1e
	.byte	0x9b
	.long	0x2b9
	.value	0x1f0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x126f
	.uleb128 0x6
	.byte	0x8
	.long	0x1983
	.uleb128 0x6
	.byte	0x8
	.long	0x1689
	.uleb128 0x6
	.byte	0x8
	.long	0x1509
	.uleb128 0x6
	.byte	0x8
	.long	0x4e6
	.uleb128 0x6
	.byte	0x8
	.long	0x1535
	.uleb128 0x6
	.byte	0x8
	.long	0x16cd
	.uleb128 0x6
	.byte	0x8
	.long	0x19a7
	.uleb128 0x6
	.byte	0x8
	.long	0x1354
	.uleb128 0x2
	.long	.LASF364
	.byte	0x1e
	.byte	0x9c
	.long	0x16d8
	.uleb128 0x1a
	.long	.LASF366
	.byte	0x1
	.byte	0x41
	.long	0x2b9
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x1a20
	.uleb128 0x1b
	.long	.LASF296
	.byte	0x1
	.byte	0x41
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1b
	.long	.LASF333
	.byte	0x1
	.byte	0x41
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1b
	.long	.LASF334
	.byte	0x1
	.byte	0x41
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1b
	.long	.LASF365
	.byte	0x1
	.byte	0x41
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1b
	.long	.LASF330
	.byte	0x1
	.byte	0x41
	.long	0x4f2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x1c
	.long	.LASF367
	.byte	0x1
	.byte	0x6b
	.long	0x2b9
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x1ad9
	.uleb128 0x1d
	.string	"gs"
	.byte	0x1
	.byte	0x6b
	.long	0x1263
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1d
	.string	"svq"
	.byte	0x1
	.byte	0x6c
	.long	0x125d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1d
	.string	"g"
	.byte	0x1
	.byte	0x6d
	.long	0x1257
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1d
	.string	"kb"
	.byte	0x1
	.byte	0x6e
	.long	0x1ad9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1d
	.string	"s"
	.byte	0x1
	.byte	0x6f
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x1b
	.long	.LASF368
	.byte	0x1
	.byte	0x70
	.long	0x4f2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x1b
	.long	.LASF320
	.byte	0x1
	.byte	0x71
	.long	0x4ec
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1b
	.long	.LASF369
	.byte	0x1
	.byte	0x72
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1b
	.long	.LASF370
	.byte	0x1
	.byte	0x73
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x1e
	.string	"ng"
	.byte	0x1
	.byte	0x76
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1f
	.long	.LASF103
	.byte	0x1
	.byte	0x77
	.long	0x4f2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x19ad
	.uleb128 0x20
	.long	.LASF382
	.byte	0x1
	.byte	0xb8
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x1b5e
	.uleb128 0x1d
	.string	"g"
	.byte	0x1
	.byte	0xb8
	.long	0x1257
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1b
	.long	.LASF320
	.byte	0x1
	.byte	0xb8
	.long	0x4ec
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1b
	.long	.LASF371
	.byte	0x1
	.byte	0xb8
	.long	0x4f2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x1d
	.string	"kb"
	.byte	0x1
	.byte	0xb8
	.long	0x1ad9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x1e
	.string	"s"
	.byte	0x1
	.byte	0xba
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1f
	.long	.LASF169
	.byte	0x1
	.byte	0xbb
	.long	0xbb0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1f
	.long	.LASF159
	.byte	0x1
	.byte	0xbc
	.long	0xa69
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x1c
	.long	.LASF372
	.byte	0x1
	.byte	0xeb
	.long	0x2b9
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x1cb2
	.uleb128 0x1d
	.string	"g"
	.byte	0x1
	.byte	0xeb
	.long	0x1257
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x1d
	.string	"gs"
	.byte	0x1
	.byte	0xec
	.long	0x1263
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x1d
	.string	"svq"
	.byte	0x1
	.byte	0xed
	.long	0x125d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x1b
	.long	.LASF370
	.byte	0x1
	.byte	0xee
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x1b
	.long	.LASF320
	.byte	0x1
	.byte	0xef
	.long	0x4ec
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x1b
	.long	.LASF323
	.byte	0x1
	.byte	0xf0
	.long	0x4f2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x1b
	.long	.LASF368
	.byte	0x1
	.byte	0xf1
	.long	0x4f2
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1b
	.long	.LASF327
	.byte	0x1
	.byte	0xf2
	.long	0x4f2
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1d
	.string	"kb"
	.byte	0x1
	.byte	0xf3
	.long	0x1ad9
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x1b
	.long	.LASF296
	.byte	0x1
	.byte	0xf4
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x1e
	.string	"s"
	.byte	0x1
	.byte	0xf6
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1e
	.string	"t"
	.byte	0x1
	.byte	0xf7
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x1f
	.long	.LASF307
	.byte	0x1
	.byte	0xf8
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1e
	.string	"ns"
	.byte	0x1
	.byte	0xf8
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1e
	.string	"ng"
	.byte	0x1
	.byte	0xf8
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1f
	.long	.LASF369
	.byte	0x1
	.byte	0xf9
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1f
	.long	.LASF373
	.byte	0x1
	.byte	0xfa
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1f
	.long	.LASF374
	.byte	0x1
	.byte	0xfb
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1f
	.long	.LASF375
	.byte	0x1
	.byte	0xfc
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1f
	.long	.LASF376
	.byte	0x1
	.byte	0xfd
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1f
	.long	.LASF169
	.byte	0x1
	.byte	0xfe
	.long	0xbb0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1f
	.long	.LASF159
	.byte	0x1
	.byte	0xff
	.long	0xa69
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x21
	.long	.LASF383
	.byte	0x1
	.byte	0x3a
	.long	0x2b9
	.uleb128 0x9
	.byte	0x3
	.quad	most_recent_best_cid
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
	.uleb128 0x17
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
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x13
	.byte	0x1
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
	.uleb128 0x19
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
	.uleb128 0x1b
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
	.uleb128 0x1e
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
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x21
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
.LASF346:
	.string	"utt_gau_eval"
.LASF7:
	.string	"size_t"
.LASF10:
	.string	"sizetype"
.LASF356:
	.string	"tot_hmm_eval"
.LASF157:
	.string	"sseq"
.LASF297:
	.string	"lextree_node_t"
.LASF228:
	.string	"tgprob"
.LASF208:
	.string	"used"
.LASF166:
	.string	"basewid"
.LASF364:
	.string	"kb_t"
.LASF112:
	.string	"s3senid_t"
.LASF163:
	.string	"mdef_t"
.LASF298:
	.string	"root"
.LASF189:
	.string	"dict"
.LASF24:
	.string	"_IO_save_end"
.LASF120:
	.string	"codemap"
.LASF54:
	.string	"uint32"
.LASF230:
	.string	"tg_segbase"
.LASF322:
	.string	"comssid_active"
.LASF152:
	.string	"n_sen"
.LASF292:
	.string	"comsen"
.LASF351:
	.string	"tm_srch"
.LASF184:
	.string	"comsseq"
.LASF357:
	.string	"tot_wd_exit"
.LASF17:
	.string	"_IO_write_base"
.LASF167:
	.string	"comp"
.LASF267:
	.string	"state"
.LASF33:
	.string	"_lock"
.LASF240:
	.string	"n_bg_score"
.LASF272:
	.string	"type"
.LASF97:
	.string	"vqsize"
.LASF213:
	.string	"lwid"
.LASF22:
	.string	"_IO_save_base"
.LASF131:
	.string	"WORD_POSN_BEGIN"
.LASF340:
	.string	"pl_window_effective"
.LASF91:
	.string	"mgau_model_t"
.LASF324:
	.string	"rec_sen_active"
.LASF53:
	.string	"int8"
.LASF127:
	.string	"window_size"
.LASF26:
	.string	"_chain"
.LASF238:
	.string	"n_bg_fill"
.LASF280:
	.string	"children"
.LASF287:
	.string	"wbeam"
.LASF30:
	.string	"_cur_column"
.LASF86:
	.string	"mgau"
.LASF250:
	.string	"lmclass"
.LASF305:
	.string	"n_active"
.LASF318:
	.string	"n_lextrans"
.LASF188:
	.string	"dict2pid_t"
.LASF123:
	.string	"cepsize"
.LASF308:
	.string	"wbest"
.LASF139:
	.string	"ssid"
.LASF104:
	.string	"subvq_t"
.LASF6:
	.string	"long int"
.LASF84:
	.string	"max_comp"
.LASF332:
	.string	"beam"
.LASF99:
	.string	"gautbl"
.LASF170:
	.string	"ciphone_str"
.LASF70:
	.string	"hash_table_t"
.LASF262:
	.string	"n_alloclm"
.LASF43:
	.string	"_IO_marker"
.LASF57:
	.string	"float32"
.LASF265:
	.string	"history"
.LASF320:
	.string	"feat"
.LASF235:
	.string	"bgoff"
.LASF155:
	.string	"ciphone"
.LASF140:
	.string	"tmat"
.LASF110:
	.string	"s3lmwid_t"
.LASF244:
	.string	"n_tg_score"
.LASF78:
	.string	"ptmr_t"
.LASF177:
	.string	"finishwid"
.LASF158:
	.string	"n_sseq"
.LASF125:
	.string	"n_stream"
.LASF245:
	.string	"n_tg_bo"
.LASF4:
	.string	"signed char"
.LASF266:
	.string	"hmm_state_t"
.LASF294:
	.string	"ssid_lc"
.LASF42:
	.string	"_IO_FILE"
.LASF314:
	.string	"n_lextree"
.LASF102:
	.string	"gauscore"
.LASF304:
	.string	"next_active"
.LASF142:
	.string	"phone_t"
.LASF275:
	.string	"vh_lmstate_t"
.LASF242:
	.string	"n_tg_fill"
.LASF1:
	.string	"unsigned char"
.LASF185:
	.string	"comwt"
.LASF329:
	.string	"phn_heur_list"
.LASF207:
	.string	"tg_t"
.LASF209:
	.string	"membg_t"
.LASF186:
	.string	"n_comstate"
.LASF348:
	.string	"hmm_hist_bins"
.LASF246:
	.string	"n_tgcache_hit"
.LASF264:
	.string	"score"
.LASF137:
	.string	"filler"
.LASF176:
	.string	"startwid"
.LASF224:
	.string	"bg_seg_sz"
.LASF336:
	.string	"svq4svq"
.LASF67:
	.string	"table"
.LASF333:
	.string	"ds_ratio"
.LASF317:
	.string	"fillertree"
.LASF372:
	.string	"approx_cont_mgau_frame_eval"
.LASF11:
	.string	"char"
.LASF334:
	.string	"cond_ds"
.LASF201:
	.string	"firstbg"
.LASF109:
	.string	"s3wid_t"
.LASF117:
	.string	"n_featlen"
.LASF81:
	.string	"mixw"
.LASF197:
	.string	"wordlist"
.LASF359:
	.string	"matchsegfp"
.LASF95:
	.string	"origsize"
.LASF254:
	.string	"lmset_s"
.LASF255:
	.string	"lmset_t"
.LASF380:
	.string	"_IO_lock_t"
.LASF173:
	.string	"filler_start"
.LASF128:
	.string	"varnorm"
.LASF147:
	.string	"ph_lc_t"
.LASF376:
	.string	"is_ciphone"
.LASF101:
	.string	"vqdist"
.LASF295:
	.string	"composite"
.LASF323:
	.string	"sen_active"
.LASF358:
	.string	"matchfp"
.LASF187:
	.string	"n_comsseq"
.LASF190:
	.string	"prob"
.LASF299:
	.string	"lextree_lcroot_t"
.LASF274:
	.string	"lm3g"
.LASF14:
	.string	"_IO_read_ptr"
.LASF183:
	.string	"comstate"
.LASF360:
	.string	"hyp_segs"
.LASF46:
	.string	"_pos"
.LASF143:
	.string	"ph_rc_s"
.LASF144:
	.string	"ph_rc_t"
.LASF273:
	.string	"hyp_t"
.LASF290:
	.string	"lwidlist"
.LASF88:
	.string	"frm_sen_eval"
.LASF174:
	.string	"filler_end"
.LASF25:
	.string	"_markers"
.LASF347:
	.string	"hmm_hist"
.LASF145:
	.string	"ph_lc_s"
.LASF182:
	.string	"single_lc"
.LASF159:
	.string	"cd2cisen"
.LASF365:
	.string	"isSameBestIdx"
.LASF191:
	.string	"fillpen_t"
.LASF227:
	.string	"bgprob"
.LASF355:
	.string	"tot_gau_eval"
.LASF106:
	.string	"s3pid_t"
.LASF251:
	.string	"n_lmclass"
.LASF301:
	.string	"n_lc"
.LASF303:
	.string	"active"
.LASF239:
	.string	"n_bg_inmem"
.LASF362:
	.string	"hyp_str"
.LASF381:
	.string	"anytype_s"
.LASF59:
	.string	"anytype_t"
.LASF261:
	.string	"n_lm"
.LASF34:
	.string	"_offset"
.LASF350:
	.string	"tm_sen"
.LASF115:
	.string	"n_code"
.LASF226:
	.string	"tginfo"
.LASF378:
	.string	"approx_cont_mgau.c"
.LASF257:
	.string	"tmat_t"
.LASF219:
	.string	"max_ug"
.LASF0:
	.string	"long unsigned int"
.LASF202:
	.string	"ug_t"
.LASF368:
	.string	"senscr"
.LASF148:
	.string	"n_ciphone"
.LASF331:
	.string	"bestwordscore"
.LASF28:
	.string	"_flags2"
.LASF210:
	.string	"tginfo_s"
.LASF212:
	.string	"tginfo_t"
.LASF16:
	.string	"_IO_read_base"
.LASF338:
	.string	"pl_window"
.LASF76:
	.string	"start_cpu"
.LASF293:
	.string	"ascr_t"
.LASF168:
	.string	"dictword_t"
.LASF113:
	.string	"gs_s"
.LASF121:
	.string	"gs_t"
.LASF41:
	.string	"_unused2"
.LASF270:
	.string	"vhid"
.LASF259:
	.string	"lmset"
.LASF108:
	.string	"s3tmatid_t"
.LASF321:
	.string	"ssid_active"
.LASF249:
	.string	"dict_size"
.LASF337:
	.string	"ci_pbeam"
.LASF29:
	.string	"_old_offset"
.LASF243:
	.string	"n_tg_inmem"
.LASF136:
	.string	"word_posn_t"
.LASF233:
	.string	"n_tgbowt"
.LASF326:
	.string	"rec_bst_senscr"
.LASF302:
	.string	"n_node"
.LASF192:
	.string	"lmclass_word_s"
.LASF195:
	.string	"lmclass_word_t"
.LASF361:
	.string	"hyp_seglen"
.LASF47:
	.string	"long long int"
.LASF93:
	.string	"n_gau"
.LASF50:
	.string	"double"
.LASF180:
	.string	"internal"
.LASF162:
	.string	"wpos_ci_lclist"
.LASF19:
	.string	"_IO_write_end"
.LASF220:
	.string	"wordstr"
.LASF312:
	.string	"beam_t"
.LASF345:
	.string	"utt_sen_eval"
.LASF313:
	.string	"kbcore"
.LASF90:
	.string	"gau_type"
.LASF271:
	.string	"ascr"
.LASF269:
	.string	"hmm_t"
.LASF49:
	.string	"float"
.LASF160:
	.string	"sen2cimap"
.LASF374:
	.string	"is_compute"
.LASF116:
	.string	"n_density"
.LASF328:
	.string	"cache_best_list"
.LASF77:
	.string	"start_elapsed"
.LASF20:
	.string	"_IO_buf_base"
.LASF98:
	.string	"featdim"
.LASF3:
	.string	"unsigned int"
.LASF119:
	.string	"codeword"
.LASF179:
	.string	"dict_t"
.LASF132:
	.string	"WORD_POSN_END"
.LASF215:
	.string	"lm_tgcache_entry_t"
.LASF382:
	.string	"approx_cont_mgau_ci_eval"
.LASF118:
	.string	"n_mbyte"
.LASF296:
	.string	"frame"
.LASF82:
	.string	"mgau_t"
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
.LASF72:
	.string	"t_cpu"
.LASF103:
	.string	"mgau_sl"
.LASF291:
	.string	"vithist_t"
.LASF379:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/482.sphinx3/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF154:
	.string	"ciphone_ht"
.LASF281:
	.string	"vh_lms2vh_t"
.LASF13:
	.string	"_flags"
.LASF96:
	.string	"n_sv"
.LASF203:
	.string	"probid"
.LASF286:
	.string	"bghist"
.LASF75:
	.string	"t_tot_elapsed"
.LASF40:
	.string	"_mode"
.LASF349:
	.string	"hmm_hist_binsize"
.LASF335:
	.string	"gs4gs"
.LASF377:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF229:
	.string	"tgbowt"
.LASF214:
	.string	"lscr"
.LASF367:
	.string	"approx_mgau_eval"
.LASF319:
	.string	"vithist"
.LASF133:
	.string	"WORD_POSN_SINGLE"
.LASF309:
	.string	"lextree_t"
.LASF211:
	.string	"n_tg"
.LASF169:
	.string	"mdef"
.LASF100:
	.string	"subvec"
.LASF341:
	.string	"pl_beam"
.LASF325:
	.string	"rec_bstcid"
.LASF92:
	.string	"arraysize_t"
.LASF315:
	.string	"ugtree"
.LASF164:
	.string	"word"
.LASF134:
	.string	"WORD_POSN_INTERNAL"
.LASF153:
	.string	"n_tmat"
.LASF12:
	.string	"FILE"
.LASF124:
	.string	"cepsize_used"
.LASF217:
	.string	"n_ug"
.LASF65:
	.string	"hash_entry_s"
.LASF66:
	.string	"hash_entry_t"
.LASF237:
	.string	"tgcache"
.LASF282:
	.string	"entry"
.LASF126:
	.string	"stream_len"
.LASF178:
	.string	"silwid"
.LASF258:
	.string	"dict2pid"
.LASF353:
	.string	"tot_fr"
.LASF68:
	.string	"size"
.LASF48:
	.string	"long long unsigned int"
.LASF79:
	.string	"n_comp"
.LASF87:
	.string	"distfloor"
.LASF330:
	.string	"skip_count"
.LASF94:
	.string	"vector_gautbl_t"
.LASF8:
	.string	"__off_t"
.LASF247:
	.string	"access_type"
.LASF105:
	.string	"s3cipid_t"
.LASF80:
	.string	"mean"
.LASF138:
	.string	"ciphone_t"
.LASF236:
	.string	"tgoff"
.LASF278:
	.string	"lmstate"
.LASF146:
	.string	"rclist"
.LASF343:
	.string	"uttid"
.LASF64:
	.string	"glist_t"
.LASF122:
	.string	"feat_s"
.LASF130:
	.string	"feat_t"
.LASF363:
	.string	"hyp_strlen"
.LASF283:
	.string	"frame_start"
.LASF83:
	.string	"n_mgau"
.LASF60:
	.string	"gnode_s"
.LASF63:
	.string	"gnode_t"
.LASF74:
	.string	"t_tot_cpu"
.LASF218:
	.string	"n_bg"
.LASF23:
	.string	"_IO_backup_base"
.LASF307:
	.string	"best"
.LASF32:
	.string	"_shortbuf"
.LASF316:
	.string	"ugtreeMulti"
.LASF216:
	.string	"lm_s"
.LASF253:
	.string	"lm_t"
.LASF193:
	.string	"dictwid"
.LASF181:
	.string	"ldiph_lc"
.LASF366:
	.string	"approx_isskip"
.LASF306:
	.string	"n_next_active"
.LASF141:
	.string	"wpos"
.LASF129:
	.string	"compute_feat"
.LASF44:
	.string	"_next"
.LASF279:
	.string	"vithist_entry_t"
.LASF9:
	.string	"__off64_t"
.LASF156:
	.string	"phone"
.LASF223:
	.string	"log_bg_seg_sz"
.LASF288:
	.string	"bestvh"
.LASF175:
	.string	"comp_head"
.LASF151:
	.string	"n_ci_sen"
.LASF205:
	.string	"firsttg"
.LASF85:
	.string	"veclen"
.LASF371:
	.string	"ci_senscr"
.LASF370:
	.string	"svq_beam"
.LASF21:
	.string	"_IO_buf_end"
.LASF369:
	.string	"best_cid"
.LASF221:
	.string	"startlwid"
.LASF114:
	.string	"n_feat"
.LASF199:
	.string	"lmlog_t"
.LASF71:
	.string	"name"
.LASF89:
	.string	"frm_gau_eval"
.LASF383:
	.string	"most_recent_best_cid"
.LASF56:
	.string	"uint8"
.LASF284:
	.string	"n_entry"
.LASF5:
	.string	"short int"
.LASF204:
	.string	"bowtid"
.LASF194:
	.string	"LOGprob"
.LASF161:
	.string	"ciphone2n_cd_sen"
.LASF289:
	.string	"lms2vh_root"
.LASF111:
	.string	"s3frmid_t"
.LASF150:
	.string	"n_emit_state"
.LASF31:
	.string	"_vtable_offset"
.LASF310:
	.string	"subvq"
.LASF311:
	.string	"ptrans"
.LASF342:
	.string	"wend_beam"
.LASF285:
	.string	"n_frm"
.LASF277:
	.string	"valid"
.LASF231:
	.string	"n_bgprob"
.LASF52:
	.string	"int16"
.LASF354:
	.string	"tot_sen_eval"
.LASF107:
	.string	"s3ssid_t"
.LASF260:
	.string	"fillpen"
.LASF15:
	.string	"_IO_read_end"
.LASF232:
	.string	"n_tgprob"
.LASF73:
	.string	"t_elapsed"
.LASF252:
	.string	"inclass_ugscore"
.LASF200:
	.string	"bowt"
.LASF256:
	.string	"n_state"
.LASF69:
	.string	"nocase"
.LASF196:
	.string	"lmclass_s"
.LASF198:
	.string	"lmclass_t"
.LASF375:
	.string	"pbest"
.LASF27:
	.string	"_fileno"
.LASF135:
	.string	"WORD_POSN_UNDEFINED"
.LASF171:
	.string	"max_words"
.LASF268:
	.string	"bestscore"
.LASF352:
	.string	"tm_ovrhd"
.LASF58:
	.string	"float64"
.LASF248:
	.string	"dict2lmwid"
.LASF149:
	.string	"n_phone"
.LASF373:
	.string	"is_skip"
.LASF2:
	.string	"short unsigned int"
.LASF225:
	.string	"membg"
.LASF300:
	.string	"lcroot"
.LASF51:
	.string	"int32"
.LASF234:
	.string	"byteswap"
.LASF18:
	.string	"_IO_write_ptr"
.LASF206:
	.string	"bg_t"
.LASF327:
	.string	"cache_ci_senscr"
.LASF222:
	.string	"finishlwid"
.LASF172:
	.string	"n_word"
.LASF339:
	.string	"pl_window_start"
.LASF165:
	.string	"pronlen"
.LASF263:
	.string	"kbcore_t"
.LASF276:
	.string	"pred"
.LASF62:
	.string	"next"
.LASF241:
	.string	"n_bg_bo"
.LASF61:
	.string	"data"
.LASF55:
	.string	"uint16"
.LASF344:
	.string	"utt_hmm_eval"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits