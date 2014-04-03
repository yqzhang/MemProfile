	.file	"vithist.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I . -I . -I libutil -imultiarch x86_64-linux-gnu
# -D SPEC_CPU -D NDEBUG -D SPEC_CPU -D HAVE_CONFIG_H -D SPEC_CPU_LP64
# vithist.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.string	"INFO"
.LC1:
	.string	"vithist.c"
	.align 8
.LC2:
	.string	"Initializing Viterbi-history module\n"
	.align 8
.LC3:
	.string	"Allocation for viterbi history, finall size %d\n"
	.text
	.globl	vithist_init
	.type	vithist_init, @function
vithist_init:
.LFB2:
	.file 1 "vithist.c"
	.loc 1 67 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -56(%rbp)	# kbc, kbc
	movl	%esi, -60(%rbp)	# wbeam, wbeam
	movl	%edx, -64(%rbp)	# bghist, bghist
	.loc 1 75 0
	movl	$-1, -44(%rbp)	#, max
	.loc 1 77 0
	movl	$.LC0, %edx	#,
	movl	$77, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_info_header	#
	movl	$.LC2, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_info	#
	.loc 1 79 0
	movl	$79, %ecx	#,
	movl	$.LC1, %edx	#,
	movl	$64, %esi	#,
	movl	$1, %edi	#,
	call	__ckd_calloc__	#
	movq	%rax, -40(%rbp)	# tmp82, vh
	.loc 1 81 0
	movl	$81, %ecx	#,
	movl	$.LC1, %edx	#,
	movl	$8, %esi	#,
	movl	$256, %edi	#,
	call	__ckd_calloc__	#
	movq	-40(%rbp), %rdx	# vh, tmp83
	movq	%rax, (%rdx)	# D.6857, vh_5->entry
	.loc 1 82 0
	movq	-40(%rbp), %rax	# vh, tmp84
	movl	$0, 16(%rax)	#, vh_5->n_entry
	.loc 1 84 0
	movl	$84, %ecx	#,
	movl	$.LC1, %edx	#,
	movl	$4, %esi	#,
	movl	$15001, %edi	#,
	call	__ckd_calloc__	#
	movq	-40(%rbp), %rdx	# vh, tmp85
	movq	%rax, 8(%rdx)	# D.6857, vh_5->frame_start
	.loc 1 86 0
	movl	$86, %ecx	#,
	movl	$.LC1, %edx	#,
	movl	$4, %esi	#,
	movl	$15001, %edi	#,
	call	__ckd_calloc__	#
	movq	-40(%rbp), %rdx	# vh, tmp86
	movq	%rax, 32(%rdx)	# D.6857, vh_5->bestscore
	.loc 1 87 0
	movl	$87, %ecx	#,
	movl	$.LC1, %edx	#,
	movl	$4, %esi	#,
	movl	$15001, %edi	#,
	call	__ckd_calloc__	#
	movq	-40(%rbp), %rdx	# vh, tmp87
	movq	%rax, 40(%rdx)	# D.6857, vh_5->bestvh
	.loc 1 89 0
	movq	-40(%rbp), %rax	# vh, tmp88
	movl	-60(%rbp), %edx	# wbeam, tmp89
	movl	%edx, 28(%rax)	# tmp89, vh_5->wbeam
	.loc 1 90 0
	movq	-40(%rbp), %rax	# vh, tmp90
	movl	-64(%rbp), %edx	# bghist, tmp91
	movl	%edx, 24(%rax)	# tmp91, vh_5->bghist
	.loc 1 92 0
	movq	-56(%rbp), %rax	# kbc, tmp92
	movq	32(%rax), %rax	# kbc_12(D)->lm, tmp93
	movq	%rax, -32(%rbp)	# tmp93, lm
	.loc 1 93 0
	movq	-56(%rbp), %rax	# kbc, tmp94
	movq	40(%rax), %rax	# kbc_12(D)->lmset, tmp95
	movq	%rax, -24(%rbp)	# tmp95, lmset
	.loc 1 94 0
	movq	-56(%rbp), %rax	# kbc, tmp96
	movq	16(%rax), %rax	# kbc_12(D)->dict, tmp97
	movq	%rax, -16(%rbp)	# tmp97, dict
	.loc 1 96 0
	movq	-16(%rbp), %rax	# dict, tmp98
	movl	52(%rax), %eax	# dict_15->n_word, D.6858
	cltq
	movl	$96, %ecx	#,
	movl	$.LC1, %edx	#,
	movl	$8, %esi	#,
	movq	%rax, %rdi	# D.6859,
	call	__ckd_calloc__	#
	movq	%rax, -8(%rbp)	# tmp99, wp
	.loc 1 97 0
	cmpq	$0, -24(%rbp)	#, lmset
	je	.L2	#,
	.loc 1 100 0
	movl	$0, -48(%rbp)	#, i
	jmp	.L3	#
.L5:
	.loc 1 101 0
	movl	-48(%rbp), %eax	# i, tmp100
	cltq
	salq	$4, %rax	#, D.6859
	movq	%rax, %rdx	# D.6859, D.6859
	movq	-24(%rbp), %rax	# lmset, tmp101
	addq	%rdx, %rax	# D.6859, D.6860
	movq	8(%rax), %rax	# _23->lm, D.6861
	movl	(%rax), %eax	# _24->n_ug, D.6858
	cmpl	-44(%rbp), %eax	# max, D.6858
	jle	.L4	#,
	.loc 1 102 0
	movl	-48(%rbp), %eax	# i, tmp102
	cltq
	salq	$4, %rax	#, D.6859
	movq	%rax, %rdx	# D.6859, D.6859
	movq	-24(%rbp), %rax	# lmset, tmp103
	addq	%rdx, %rax	# D.6859, D.6860
	movq	8(%rax), %rax	# _28->lm, D.6861
	movl	(%rax), %eax	# _29->n_ug, tmp104
	movl	%eax, -44(%rbp)	# tmp104, max
.L4:
	.loc 1 100 0
	addl	$1, -48(%rbp)	#, i
.L3:
	.loc 1 100 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# kbc, tmp105
	movl	96(%rax), %eax	# kbc_12(D)->n_lm, D.6858
	cmpl	-48(%rbp), %eax	# i, D.6858
	jg	.L5	#,
	.loc 1 105 0 is_stmt 1
	movl	$.LC0, %edx	#,
	movl	$105, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_info_header	#
	movl	-44(%rbp), %eax	# max, tmp106
	movl	%eax, %esi	# tmp106,
	movl	$.LC3, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_info	#
	.loc 1 106 0
	movl	-44(%rbp), %eax	# max, tmp107
	cltq
	movl	$106, %ecx	#,
	movl	$.LC1, %edx	#,
	movl	$8, %esi	#,
	movq	%rax, %rdi	# D.6859,
	call	__ckd_calloc__	#
	movq	-40(%rbp), %rdx	# vh, tmp108
	movq	%rax, 48(%rdx)	# D.6857, vh_5->lms2vh_root
	jmp	.L6	#
.L2:
	.loc 1 108 0
	cmpq	$0, -32(%rbp)	#, lm
	je	.L6	#,
	.loc 1 109 0
	movq	-32(%rbp), %rax	# lm, tmp109
	movl	(%rax), %eax	# lm_13->n_ug, D.6858
	cltq
	movl	$109, %ecx	#,
	movl	$.LC1, %edx	#,
	movl	$8, %esi	#,
	movq	%rax, %rdi	# D.6859,
	call	__ckd_calloc__	#
	movq	-40(%rbp), %rdx	# vh, tmp110
	movq	%rax, 48(%rdx)	# D.6857, vh_5->lms2vh_root
.L6:
	.loc 1 111 0
	movq	-8(%rbp), %rax	# wp, tmp111
	movq	%rax, %rdi	# tmp111,
	call	ckd_free	#
	.loc 1 113 0
	movq	-40(%rbp), %rax	# vh, tmp112
	movq	$0, 56(%rax)	#, vh_5->lwidlist
	.loc 1 115 0
	movq	-40(%rbp), %rax	# vh, D.6862
	.loc 1 116 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	vithist_init, .-vithist_init
	.section	.rodata
.LC4:
	.string	"FATAL_ERROR"
	.align 8
.LC5:
	.string	"Viterbi history array exhausted; increase VITHIST_MAXBLKS\n"
	.text
	.type	vithist_entry_alloc, @function
vithist_entry_alloc:
.LFB3:
	.loc 1 123 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# vh, vh
	.loc 1 127 0
	movq	-24(%rbp), %rax	# vh, tmp76
	movl	16(%rax), %eax	# vh_2(D)->n_entry, D.6867
	sarl	$14, %eax	#, tmp77
	movl	%eax, -16(%rbp)	# tmp77, b
	.loc 1 128 0
	movq	-24(%rbp), %rax	# vh, tmp78
	movl	16(%rax), %eax	# vh_2(D)->n_entry, D.6867
	andl	$16383, %eax	#, tmp79
	movl	%eax, -12(%rbp)	# tmp79, l
	.loc 1 130 0
	cmpl	$0, -12(%rbp)	#, l
	jne	.L9	#,
	.loc 1 131 0
	cmpl	$255, -16(%rbp)	#, b
	jle	.L10	#,
	.loc 1 132 0
	movl	$.LC4, %edx	#,
	movl	$132, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_header	#
	movl	$.LC5, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L10:
	.loc 1 136 0
	movl	$136, %ecx	#,
	movl	$.LC1, %edx	#,
	movl	$36, %esi	#,
	movl	$16384, %edi	#,
	call	__ckd_calloc__	#
	movq	%rax, -8(%rbp)	# tmp80, ve
	.loc 1 137 0
	movq	-24(%rbp), %rax	# vh, tmp81
	movq	(%rax), %rax	# vh_2(D)->entry, D.6868
	movl	-16(%rbp), %edx	# b, tmp82
	movslq	%edx, %rdx	# tmp82, D.6869
	salq	$3, %rdx	#, D.6869
	addq	%rax, %rdx	# D.6868, D.6868
	movq	-8(%rbp), %rax	# ve, tmp83
	movq	%rax, (%rdx)	# tmp83, *_11
	jmp	.L11	#
.L9:
	.loc 1 139 0
	movq	-24(%rbp), %rax	# vh, tmp84
	movq	(%rax), %rax	# vh_2(D)->entry, D.6868
	movl	-16(%rbp), %edx	# b, tmp85
	movslq	%edx, %rdx	# tmp85, D.6869
	salq	$3, %rdx	#, D.6869
	addq	%rdx, %rax	# D.6869, D.6868
	movq	(%rax), %rcx	# *_15, D.6870
	movl	-12(%rbp), %eax	# l, tmp86
	movslq	%eax, %rdx	# tmp86, D.6869
	movq	%rdx, %rax	# D.6869, tmp87
	salq	$3, %rax	#, tmp87
	addq	%rdx, %rax	# D.6869, tmp87
	salq	$2, %rax	#, tmp88
	addq	%rcx, %rax	# D.6870, tmp89
	movq	%rax, -8(%rbp)	# tmp89, ve
.L11:
	.loc 1 141 0
	movq	-24(%rbp), %rax	# vh, tmp90
	movl	16(%rax), %eax	# vh_2(D)->n_entry, D.6867
	leal	1(%rax), %edx	#, D.6867
	movq	-24(%rbp), %rax	# vh, tmp91
	movl	%edx, 16(%rax)	# D.6867, vh_2(D)->n_entry
	.loc 1 143 0
	movq	-8(%rbp), %rax	# ve, D.6870
	.loc 1 144 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	vithist_entry_alloc, .-vithist_entry_alloc
	.globl	vithist_utt_begin
	.type	vithist_utt_begin, @function
vithist_utt_begin:
.LFB4:
	.loc 1 148 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# vh, vh
	movq	%rsi, -48(%rbp)	# kbc, kbc
	.loc 1 153 0
	movq	-48(%rbp), %rax	# kbc, tmp66
	movq	32(%rax), %rax	# kbc_1(D)->lm, tmp67
	movq	%rax, -24(%rbp)	# tmp67, lm
	.loc 1 154 0
	movq	-48(%rbp), %rax	# kbc, tmp68
	movq	16(%rax), %rax	# kbc_1(D)->dict, tmp69
	movq	%rax, -16(%rbp)	# tmp69, dict
	.loc 1 161 0
	movq	-40(%rbp), %rax	# vh, tmp70
	movq	%rax, %rdi	# tmp70,
	call	vithist_entry_alloc	#
	movq	%rax, -8(%rbp)	# tmp71, ve
	.loc 1 163 0
	movq	-16(%rbp), %rax	# dict, tmp72
	movl	72(%rax), %edx	# dict_3->startwid, D.6873
	movq	-8(%rbp), %rax	# ve, tmp73
	movl	%edx, (%rax)	# D.6873, ve_5->wid
	.loc 1 164 0
	movq	-8(%rbp), %rax	# ve, tmp74
	movw	$-1, 4(%rax)	#, ve_5->sf
	.loc 1 165 0
	movq	-8(%rbp), %rax	# ve, tmp75
	movw	$-1, 6(%rax)	#, ve_5->ef
	.loc 1 166 0
	movq	-8(%rbp), %rax	# ve, tmp76
	movl	$0, 8(%rax)	#, ve_5->ascr
	.loc 1 167 0
	movq	-8(%rbp), %rax	# ve, tmp77
	movl	$0, 12(%rax)	#, ve_5->lscr
	.loc 1 168 0
	movq	-8(%rbp), %rax	# ve, tmp78
	movl	$0, 16(%rax)	#, ve_5->score
	.loc 1 169 0
	movq	-8(%rbp), %rax	# ve, tmp79
	movl	$-1, 20(%rax)	#, ve_5->pred
	.loc 1 170 0
	movq	-8(%rbp), %rax	# ve, tmp80
	movl	$0, 24(%rax)	#, ve_5->type
	.loc 1 171 0
	movq	-8(%rbp), %rax	# ve, tmp81
	movl	$1, 28(%rax)	#, ve_5->valid
	.loc 1 172 0
	movq	-24(%rbp), %rax	# lm, tmp82
	movzwl	24(%rax), %edx	# lm_2->startlwid, D.6874
	movq	-8(%rbp), %rax	# ve, tmp83
	movw	%dx, 32(%rax)	# D.6874, ve_5->lmstate.lm3g.lwid
	.loc 1 173 0
	movq	-8(%rbp), %rax	# ve, tmp84
	movw	$-1, 34(%rax)	#, ve_5->lmstate.lm3g.lwid
	.loc 1 175 0
	movq	-40(%rbp), %rax	# vh, tmp85
	movl	$0, 20(%rax)	#, vh_4(D)->n_frm
	.loc 1 176 0
	movq	-40(%rbp), %rax	# vh, tmp86
	movq	8(%rax), %rax	# vh_4(D)->frame_start, D.6875
	movl	$1, (%rax)	#, *_8
	.loc 1 177 0
	movq	-40(%rbp), %rax	# vh, tmp87
	movq	32(%rax), %rax	# vh_4(D)->bestscore, D.6875
	movl	$-2147483648, (%rax)	#, *_9
	.loc 1 178 0
	movq	-40(%rbp), %rax	# vh, tmp88
	movq	40(%rax), %rax	# vh_4(D)->bestvh, D.6875
	movl	$-1, (%rax)	#, *_10
	.loc 1 180 0
	movl	$0, %eax	#, D.6876
	.loc 1 181 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	vithist_utt_begin, .-vithist_utt_begin
	.type	vh_lmstate_find, @function
vh_lmstate_find:
.LFB5:
	.loc 1 185 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -40(%rbp)	# vh, vh
	movq	%rsi, -48(%rbp)	# lms, lms
	.loc 1 190 0
	movq	-48(%rbp), %rax	# lms, tmp67
	movzwl	(%rax), %eax	# lms_3(D)->lm3g.lwid, tmp68
	movw	%ax, -18(%rbp)	# tmp68, lwid
	.loc 1 191 0
	movq	-40(%rbp), %rax	# vh, tmp69
	movq	48(%rax), %rax	# vh_5(D)->lms2vh_root, D.6878
	movzwl	-18(%rbp), %edx	# lwid, D.6879
	salq	$3, %rdx	#, D.6879
	addq	%rdx, %rax	# D.6879, D.6878
	movq	(%rax), %rax	# *_9, tmp70
	movq	%rax, -8(%rbp)	# tmp70, lms2vh
	cmpq	$0, -8(%rbp)	#, lms2vh
	jne	.L16	#,
	.loc 1 192 0
	movl	$-1, %eax	#, D.6877
	jmp	.L17	#
.L16:
	.loc 1 196 0
	movq	-48(%rbp), %rax	# lms, tmp71
	movzwl	2(%rax), %eax	# lms_3(D)->lm3g.lwid, tmp72
	movw	%ax, -18(%rbp)	# tmp72, lwid
	.loc 1 197 0
	movq	-8(%rbp), %rax	# lms2vh, tmp73
	movq	16(%rax), %rax	# lms2vh_10->children, tmp74
	movq	%rax, -16(%rbp)	# tmp74, gn
	jmp	.L18	#
.L20:
	.loc 1 198 0
	movq	-16(%rbp), %rax	# gn, tmp75
	movq	(%rax), %rax	# gn_1->data.ptr, tmp76
	movq	%rax, -8(%rbp)	# tmp76, lms2vh
	.loc 1 199 0
	movq	-8(%rbp), %rax	# lms2vh, tmp77
	movl	(%rax), %edx	# lms2vh_14->state, D.6880
	movzwl	-18(%rbp), %eax	# lwid, D.6880
	cmpl	%eax, %edx	# D.6880, D.6880
	jne	.L19	#,
	.loc 1 200 0
	movq	-8(%rbp), %rax	# lms2vh, tmp78
	movl	4(%rax), %eax	# lms2vh_14->vhid, D.6877
	jmp	.L17	#
.L19:
	.loc 1 197 0
	movq	-16(%rbp), %rax	# gn, tmp79
	movq	8(%rax), %rax	# gn_1->next, tmp80
	movq	%rax, -16(%rbp)	# tmp80, gn
.L18:
	.loc 1 197 0 is_stmt 0 discriminator 1
	cmpq	$0, -16(%rbp)	#, gn
	jne	.L20	#,
	.loc 1 203 0 is_stmt 1
	movl	$-1, %eax	#, D.6877
.L17:
	.loc 1 204 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	vh_lmstate_find, .-vh_lmstate_find
	.type	vithist_lmstate_enter, @function
vithist_lmstate_enter:
.LFB6:
	.loc 1 212 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -40(%rbp)	# vh, vh
	movl	%esi, -44(%rbp)	# vhid, vhid
	movq	%rdx, -56(%rbp)	# ve, ve
	.loc 1 216 0
	movq	-56(%rbp), %rax	# ve, tmp75
	movzwl	32(%rax), %eax	# ve_2(D)->lmstate.lm3g.lwid, tmp76
	movw	%ax, -18(%rbp)	# tmp76, lwid
	.loc 1 217 0
	movq	-40(%rbp), %rax	# vh, tmp77
	movq	48(%rax), %rax	# vh_4(D)->lms2vh_root, D.6881
	movzwl	-18(%rbp), %edx	# lwid, D.6882
	salq	$3, %rdx	#, D.6882
	addq	%rdx, %rax	# D.6882, D.6881
	movq	(%rax), %rax	# *_8, tmp78
	movq	%rax, -16(%rbp)	# tmp78, lms2vh
	cmpq	$0, -16(%rbp)	#, lms2vh
	jne	.L22	#,
	.loc 1 218 0
	movl	$218, %ecx	#,
	movl	$.LC1, %edx	#,
	movl	$24, %esi	#,
	movl	$1, %edi	#,
	call	__ckd_calloc__	#
	movq	%rax, -16(%rbp)	# tmp79, lms2vh
	.loc 1 219 0
	movq	-40(%rbp), %rax	# vh, tmp80
	movq	48(%rax), %rax	# vh_4(D)->lms2vh_root, D.6881
	movzwl	-18(%rbp), %edx	# lwid, D.6882
	salq	$3, %rdx	#, D.6882
	addq	%rax, %rdx	# D.6881, D.6881
	movq	-16(%rbp), %rax	# lms2vh, tmp81
	movq	%rax, (%rdx)	# tmp81, *_14
	.loc 1 221 0
	movzwl	-18(%rbp), %edx	# lwid, D.6883
	movq	-16(%rbp), %rax	# lms2vh, tmp82
	movl	%edx, (%rax)	# D.6883, lms2vh_10->state
	.loc 1 222 0
	movq	-16(%rbp), %rax	# lms2vh, tmp83
	movq	$0, 16(%rax)	#, lms2vh_10->children
	.loc 1 224 0
	movzwl	-18(%rbp), %edx	# lwid, D.6883
	movq	-40(%rbp), %rax	# vh, tmp84
	movq	56(%rax), %rax	# vh_4(D)->lwidlist, D.6884
	movl	%edx, %esi	# D.6883,
	movq	%rax, %rdi	# D.6884,
	call	glist_add_int32	#
	movq	-40(%rbp), %rdx	# vh, tmp85
	movq	%rax, 56(%rdx)	# D.6884, vh_4(D)->lwidlist
.L22:
	.loc 1 229 0
	movl	$229, %ecx	#,
	movl	$.LC1, %edx	#,
	movl	$24, %esi	#,
	movl	$1, %edi	#,
	call	__ckd_calloc__	#
	movq	%rax, -8(%rbp)	# tmp86, child
	.loc 1 230 0
	movq	-56(%rbp), %rax	# ve, tmp87
	movzwl	34(%rax), %eax	# ve_2(D)->lmstate.lm3g.lwid, D.6885
	movzwl	%ax, %edx	# D.6885, D.6883
	movq	-8(%rbp), %rax	# child, tmp88
	movl	%edx, (%rax)	# D.6883, child_19->state
	.loc 1 231 0
	movq	-8(%rbp), %rax	# child, tmp89
	movq	$0, 16(%rax)	#, child_19->children
	.loc 1 232 0
	movq	-8(%rbp), %rax	# child, tmp90
	movl	-44(%rbp), %edx	# vhid, tmp91
	movl	%edx, 4(%rax)	# tmp91, child_19->vhid
	.loc 1 233 0
	movq	-8(%rbp), %rax	# child, tmp92
	movq	-56(%rbp), %rdx	# ve, tmp93
	movq	%rdx, 8(%rax)	# tmp93, child_19->ve
	.loc 1 235 0
	movq	-16(%rbp), %rax	# lms2vh, tmp94
	movq	16(%rax), %rax	# lms2vh_1->children, D.6884
	movq	-8(%rbp), %rdx	# child, tmp95
	movq	%rdx, %rsi	# tmp95,
	movq	%rax, %rdi	# D.6884,
	call	glist_add_ptr	#
	movq	-16(%rbp), %rdx	# lms2vh, tmp96
	movq	%rax, 16(%rdx)	# D.6884, lms2vh_1->children
	.loc 1 236 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	vithist_lmstate_enter, .-vithist_lmstate_enter
	.globl	vithist_id2entry
	.type	vithist_id2entry, @function
vithist_id2entry:
.LFB7:
	.loc 1 240 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# vh, vh
	movl	%esi, -28(%rbp)	# id, id
	.loc 1 243 0
	movq	-24(%rbp), %rax	# vh, tmp70
	movq	(%rax), %rax	# vh_1(D)->entry, D.6886
	movl	-28(%rbp), %edx	# id, tmp71
	sarl	$14, %edx	#, D.6887
	movslq	%edx, %rdx	# D.6887, D.6888
	salq	$3, %rdx	#, D.6888
	addq	%rdx, %rax	# D.6888, D.6886
	movq	(%rax), %rcx	# *_7, D.6889
	movl	-28(%rbp), %eax	# id, tmp72
	cltq
	andl	$16383, %eax	#, D.6888
	movq	%rax, %rdx	# D.6888, D.6888
	movq	%rdx, %rax	# D.6888, tmp73
	salq	$3, %rax	#, tmp73
	addq	%rdx, %rax	# D.6888, tmp73
	salq	$2, %rax	#, tmp74
	addq	%rcx, %rax	# D.6889, tmp75
	movq	%rax, -8(%rbp)	# tmp75, ve
	.loc 1 244 0
	movq	-8(%rbp), %rax	# ve, D.6889
	.loc 1 245 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	vithist_id2entry, .-vithist_id2entry
	.type	vithist_enter, @function
vithist_enter:
.LFB8:
	.loc 1 249 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# vh, vh
	movq	%rsi, -32(%rbp)	# kbc, kbc
	movq	%rdx, -40(%rbp)	# tve, tve
	.loc 1 254 0
	movq	-40(%rbp), %rax	# tve, tmp89
	leaq	32(%rax), %rdx	#, D.6890
	movq	-24(%rbp), %rax	# vh, tmp90
	movq	%rdx, %rsi	# D.6890,
	movq	%rax, %rdi	# tmp90,
	call	vh_lmstate_find	#
	movl	%eax, -12(%rbp)	# tmp91, vhid
	.loc 1 255 0
	cmpl	$0, -12(%rbp)	#, vhid
	jns	.L26	#,
	.loc 1 256 0
	movq	-24(%rbp), %rax	# vh, tmp92
	movl	16(%rax), %eax	# vh_4(D)->n_entry, tmp93
	movl	%eax, -12(%rbp)	# tmp93, vhid
	.loc 1 257 0
	movq	-24(%rbp), %rax	# vh, tmp94
	movq	%rax, %rdi	# tmp94,
	call	vithist_entry_alloc	#
	movq	%rax, -8(%rbp)	# tmp95, ve
	.loc 1 259 0
	movq	-8(%rbp), %rax	# ve, tmp96
	movq	-40(%rbp), %rdx	# tve, tmp97
	movq	(%rdx), %rcx	# *tve_2(D), tmp98
	movq	%rcx, (%rax)	# tmp98, *ve_7
	movq	8(%rdx), %rcx	# *tve_2(D), tmp99
	movq	%rcx, 8(%rax)	# tmp99, *ve_7
	movq	16(%rdx), %rcx	# *tve_2(D), tmp100
	movq	%rcx, 16(%rax)	# tmp100, *ve_7
	movq	24(%rdx), %rcx	# *tve_2(D), tmp101
	movq	%rcx, 24(%rax)	# tmp101, *ve_7
	movl	32(%rdx), %edx	# *tve_2(D), tmp102
	movl	%edx, 32(%rax)	# tmp102, *ve_7
	.loc 1 260 0
	movq	-8(%rbp), %rdx	# ve, tmp103
	movl	-12(%rbp), %ecx	# vhid, tmp104
	movq	-24(%rbp), %rax	# vh, tmp105
	movl	%ecx, %esi	# tmp104,
	movq	%rax, %rdi	# tmp105,
	call	vithist_lmstate_enter	#
	jmp	.L27	#
.L26:
	.loc 1 262 0
	movq	-24(%rbp), %rax	# vh, tmp106
	movq	(%rax), %rax	# vh_4(D)->entry, D.6891
	movl	-12(%rbp), %edx	# vhid, tmp107
	sarl	$14, %edx	#, D.6892
	movslq	%edx, %rdx	# D.6892, D.6893
	salq	$3, %rdx	#, D.6893
	addq	%rdx, %rax	# D.6893, D.6891
	movq	(%rax), %rcx	# *_12, D.6894
	movl	-12(%rbp), %eax	# vhid, tmp108
	cltq
	andl	$16383, %eax	#, D.6893
	movq	%rax, %rdx	# D.6893, D.6893
	movq	%rdx, %rax	# D.6893, tmp109
	salq	$3, %rax	#, tmp109
	addq	%rdx, %rax	# D.6893, tmp109
	salq	$2, %rax	#, tmp110
	addq	%rcx, %rax	# D.6894, tmp111
	movq	%rax, -8(%rbp)	# tmp111, ve
	.loc 1 264 0
	movq	-8(%rbp), %rax	# ve, tmp112
	movl	16(%rax), %edx	# ve_17->score, D.6892
	movq	-40(%rbp), %rax	# tve, tmp113
	movl	16(%rax), %eax	# tve_2(D)->score, D.6892
	cmpl	%eax, %edx	# D.6892, D.6892
	jge	.L27	#,
	.loc 1 265 0
	movq	-8(%rbp), %rax	# ve, tmp114
	movq	-40(%rbp), %rdx	# tve, tmp115
	movq	(%rdx), %rcx	# *tve_2(D), tmp116
	movq	%rcx, (%rax)	# tmp116, *ve_17
	movq	8(%rdx), %rcx	# *tve_2(D), tmp117
	movq	%rcx, 8(%rax)	# tmp117, *ve_17
	movq	16(%rdx), %rcx	# *tve_2(D), tmp118
	movq	%rcx, 16(%rax)	# tmp118, *ve_17
	movq	24(%rdx), %rcx	# *tve_2(D), tmp119
	movq	%rcx, 24(%rax)	# tmp119, *ve_17
	movl	32(%rdx), %edx	# *tve_2(D), tmp120
	movl	%edx, 32(%rax)	# tmp120, *ve_17
.L27:
	.loc 1 269 0
	movq	-24(%rbp), %rax	# vh, tmp121
	movq	32(%rax), %rdx	# vh_4(D)->bestscore, D.6895
	movq	-24(%rbp), %rax	# vh, tmp122
	movl	20(%rax), %eax	# vh_4(D)->n_frm, D.6892
	cltq
	salq	$2, %rax	#, D.6893
	addq	%rdx, %rax	# D.6895, D.6895
	movl	(%rax), %edx	# *_24, D.6892
	movq	-40(%rbp), %rax	# tve, tmp123
	movl	16(%rax), %eax	# tve_2(D)->score, D.6892
	cmpl	%eax, %edx	# D.6892, D.6892
	jge	.L25	#,
	.loc 1 270 0
	movq	-24(%rbp), %rax	# vh, tmp124
	movq	32(%rax), %rdx	# vh_4(D)->bestscore, D.6895
	movq	-24(%rbp), %rax	# vh, tmp125
	movl	20(%rax), %eax	# vh_4(D)->n_frm, D.6892
	cltq
	salq	$2, %rax	#, D.6893
	addq	%rax, %rdx	# D.6893, D.6895
	movq	-40(%rbp), %rax	# tve, tmp126
	movl	16(%rax), %eax	# tve_2(D)->score, D.6892
	movl	%eax, (%rdx)	# D.6892, *_31
	.loc 1 271 0
	movq	-24(%rbp), %rax	# vh, tmp127
	movq	40(%rax), %rdx	# vh_4(D)->bestvh, D.6895
	movq	-24(%rbp), %rax	# vh, tmp128
	movl	20(%rax), %eax	# vh_4(D)->n_frm, D.6892
	cltq
	salq	$2, %rax	#, D.6893
	addq	%rax, %rdx	# D.6893, D.6895
	movl	-12(%rbp), %eax	# vhid, tmp129
	movl	%eax, (%rdx)	# tmp129, *_37
.L25:
	.loc 1 273 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	vithist_enter, .-vithist_enter
	.section	.rodata
	.align 8
.LC6:
	.string	"Hmm->out.history equals to -1 with score %d, some active phone was not computed?\n"
	.text
	.globl	vithist_rescore
	.type	vithist_rescore, @function
vithist_rescore:
.LFB9:
	.loc 1 278 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$112, %rsp	#,
	movq	%rdi, -88(%rbp)	# vh, vh
	movq	%rsi, -96(%rbp)	# kbc, kbc
	movl	%edx, -100(%rbp)	# wid, wid
	movl	%ecx, -104(%rbp)	# ef, ef
	movl	%r8d, -108(%rbp)	# score, score
	movl	%r9d, -112(%rbp)	# pred, pred
	.loc 1 285 0
	cmpl	$-1, -112(%rbp)	#, pred
	jne	.L30	#,
	.loc 1 286 0
	movl	$.LC4, %edx	#,
	movl	$286, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_header	#
	movl	-108(%rbp), %eax	# score, tmp134
	movl	%eax, %esi	# tmp134,
	movl	$.LC6, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
	.loc 1 287 0
	movl	$-1, %edi	#,
	call	exit	#
.L30:
	.loc 1 290 0
	movq	-88(%rbp), %rax	# vh, tmp135
	movq	(%rax), %rax	# vh_7(D)->entry, D.6896
	movl	-112(%rbp), %edx	# pred, tmp136
	sarl	$14, %edx	#, D.6897
	movslq	%edx, %rdx	# D.6897, D.6898
	salq	$3, %rdx	#, D.6898
	addq	%rdx, %rax	# D.6898, D.6896
	movq	(%rax), %rcx	# *_12, D.6899
	movl	-112(%rbp), %eax	# pred, tmp137
	cltq
	andl	$16383, %eax	#, D.6898
	movq	%rax, %rdx	# D.6898, D.6898
	movq	%rdx, %rax	# D.6898, tmp138
	salq	$3, %rax	#, tmp138
	addq	%rdx, %rax	# D.6898, tmp138
	salq	$2, %rax	#, tmp139
	addq	%rcx, %rax	# D.6899, tmp140
	movq	%rax, -56(%rbp)	# tmp140, pve
	.loc 1 292 0
	movl	-100(%rbp), %eax	# wid, tmp141
	movl	%eax, -48(%rbp)	# tmp141, tve.wid
	.loc 1 293 0
	movq	-56(%rbp), %rax	# pve, tmp142
	movzwl	6(%rax), %eax	# pve_17->ef, D.6900
	addl	$1, %eax	#, D.6901
	movw	%ax, -44(%rbp)	# D.6900, tve.sf
	.loc 1 294 0
	movl	-104(%rbp), %eax	# ef, tmp143
	movw	%ax, -42(%rbp)	# D.6900, tve.ef
	.loc 1 295 0
	movl	16(%rbp), %eax	# type, tmp144
	movl	%eax, -24(%rbp)	# tmp144, tve.type
	.loc 1 296 0
	movl	$1, -20(%rbp)	#, tve.valid
	.loc 1 297 0
	movq	-56(%rbp), %rax	# pve, tmp145
	movl	16(%rax), %eax	# pve_17->score, D.6897
	movl	-108(%rbp), %edx	# score, tmp146
	subl	%eax, %edx	# D.6897, D.6897
	movl	%edx, %eax	# D.6897, D.6897
	movl	%eax, -40(%rbp)	# D.6897, tve.ascr
	.loc 1 299 0
	cmpl	$0, -112(%rbp)	#, pred
	jne	.L31	#,
	.loc 1 300 0
	movl	$0, -68(%rbp)	#, se
	.loc 1 301 0
	movl	$1, -64(%rbp)	#, fe
	jmp	.L32	#
.L31:
	.loc 1 303 0
	movq	-88(%rbp), %rax	# vh, tmp147
	movq	8(%rax), %rdx	# vh_7(D)->frame_start, D.6902
	movq	-56(%rbp), %rax	# pve, tmp148
	movzwl	6(%rax), %eax	# pve_17->ef, D.6900
	movswq	%ax, %rax	# D.6900, D.6898
	salq	$2, %rax	#, D.6898
	addq	%rdx, %rax	# D.6902, D.6902
	movl	(%rax), %eax	# *_34, tmp149
	movl	%eax, -68(%rbp)	# tmp149, se
	.loc 1 304 0
	movq	-88(%rbp), %rax	# vh, tmp150
	movq	8(%rax), %rdx	# vh_7(D)->frame_start, D.6902
	movq	-56(%rbp), %rax	# pve, tmp151
	movzwl	6(%rax), %eax	# pve_17->ef, D.6900
	movswq	%ax, %rax	# D.6900, D.6903
	addq	$1, %rax	#, D.6903
	salq	$2, %rax	#, D.6903
	addq	%rdx, %rax	# D.6902, D.6902
	movl	(%rax), %eax	# *_41, tmp152
	movl	%eax, -64(%rbp)	# tmp152, fe
.L32:
	.loc 1 306 0
	movq	-96(%rbp), %rax	# kbc, tmp153
	movq	16(%rax), %rax	# kbc_43(D)->dict, D.6904
	movl	-100(%rbp), %edx	# wid, tmp154
	movl	%edx, %esi	# tmp154,
	movq	%rax, %rdi	# D.6904,
	call	dict_filler_word	#
	testl	%eax, %eax	# D.6897
	je	.L33	#,
	.loc 1 307 0
	movq	-96(%rbp), %rax	# kbc, tmp155
	movq	48(%rax), %rax	# kbc_43(D)->fillpen, D.6905
	movl	-100(%rbp), %edx	# wid, tmp156
	movl	%edx, %esi	# tmp156,
	movq	%rax, %rdi	# D.6905,
	call	fillpen	#
	movl	%eax, -36(%rbp)	# D.6897, tve.lscr
	.loc 1 308 0
	movl	-36(%rbp), %edx	# tve.lscr, D.6897
	movl	-108(%rbp), %eax	# score, tmp157
	addl	%edx, %eax	# D.6897, D.6897
	movl	%eax, -32(%rbp)	# D.6897, tve.score
	.loc 1 309 0
	movl	-112(%rbp), %eax	# pred, tmp158
	movl	%eax, -28(%rbp)	# tmp158, tve.pred
	.loc 1 310 0
	movq	-56(%rbp), %rax	# pve, tmp159
	movl	32(%rax), %eax	# pve_17->lmstate.lm3g, tmp160
	movl	%eax, -16(%rbp)	# tmp160, tve.lmstate.lm3g
	.loc 1 311 0
	leaq	-48(%rbp), %rdx	#, tmp161
	movq	-96(%rbp), %rcx	# kbc, tmp162
	movq	-88(%rbp), %rax	# vh, tmp163
	movq	%rcx, %rsi	# tmp162,
	movq	%rax, %rdi	# tmp163,
	call	vithist_enter	#
	jmp	.L29	#
.L33:
	.loc 1 314 0
	movq	-96(%rbp), %rax	# kbc, tmp164
	movq	40(%rax), %rax	# kbc_43(D)->lmset, D.6906
	testq	%rax, %rax	# D.6906
	je	.L35	#,
	.loc 1 315 0
	movq	-96(%rbp), %rax	# kbc, tmp165
	movq	32(%rax), %rax	# kbc_43(D)->lm, D.6907
	movq	208(%rax), %rax	# _51->dict2lmwid, D.6908
	movl	-100(%rbp), %edx	# wid, tmp166
	movslq	%edx, %rdx	# tmp166, D.6898
	addq	%rdx, %rdx	# D.6898
	addq	%rdx, %rax	# D.6898, D.6908
	movzwl	(%rax), %eax	# *_55, tmp167
	movw	%ax, -70(%rbp)	# tmp167, lwid
	jmp	.L36	#
.L35:
	.loc 1 317 0
	movq	-96(%rbp), %rax	# kbc, tmp168
	movq	56(%rax), %rax	# kbc_43(D)->dict2lmwid, D.6908
	movl	-100(%rbp), %edx	# wid, tmp169
	movslq	%edx, %rdx	# tmp169, D.6898
	addq	%rdx, %rdx	# D.6898
	addq	%rdx, %rax	# D.6898, D.6908
	movzwl	(%rax), %eax	# *_60, tmp170
	movw	%ax, -70(%rbp)	# tmp170, lwid
.L36:
	.loc 1 321 0
	movzwl	-70(%rbp), %eax	# lwid, tmp171
	movw	%ax, -16(%rbp)	# tmp171, tve.lmstate.lm3g.lwid
	.loc 1 323 0
	movl	-68(%rbp), %eax	# se, tmp172
	movl	%eax, -60(%rbp)	# tmp172, i
	jmp	.L37	#
.L39:
	.loc 1 324 0
	movq	-88(%rbp), %rax	# vh, tmp173
	movq	(%rax), %rax	# vh_7(D)->entry, D.6896
	movl	-60(%rbp), %edx	# i, tmp174
	sarl	$14, %edx	#, D.6897
	movslq	%edx, %rdx	# D.6897, D.6898
	salq	$3, %rdx	#, D.6898
	addq	%rdx, %rax	# D.6898, D.6896
	movq	(%rax), %rcx	# *_67, D.6899
	movl	-60(%rbp), %eax	# i, tmp175
	cltq
	andl	$16383, %eax	#, D.6898
	movq	%rax, %rdx	# D.6898, D.6898
	movq	%rdx, %rax	# D.6898, tmp176
	salq	$3, %rax	#, tmp176
	addq	%rdx, %rax	# D.6898, tmp176
	salq	$2, %rax	#, tmp177
	addq	%rcx, %rax	# D.6899, tmp178
	movq	%rax, -56(%rbp)	# tmp178, pve
	.loc 1 326 0
	movq	-56(%rbp), %rax	# pve, tmp179
	movl	28(%rax), %eax	# pve_72->valid, D.6897
	testl	%eax, %eax	# D.6897
	je	.L38	#,
	.loc 1 327 0
	movzwl	-70(%rbp), %ecx	# lwid, D.6897
	.loc 1 329 0
	movq	-56(%rbp), %rax	# pve, tmp180
	movzwl	32(%rax), %eax	# pve_72->lmstate.lm3g.lwid, D.6909
	.loc 1 327 0
	movzwl	%ax, %edx	# D.6909, D.6897
	.loc 1 328 0
	movq	-56(%rbp), %rax	# pve, tmp181
	movzwl	34(%rax), %eax	# pve_72->lmstate.lm3g.lwid, D.6909
	.loc 1 327 0
	movzwl	%ax, %esi	# D.6909, D.6897
	movq	-96(%rbp), %rax	# kbc, tmp182
	movq	32(%rax), %rax	# kbc_43(D)->lm, D.6907
	movl	-100(%rbp), %edi	# wid, tmp183
	movl	%edi, %r8d	# tmp183,
	movq	%rax, %rdi	# D.6907,
	call	lm_tg_score	#
	movl	%eax, -36(%rbp)	# D.6897, tve.lscr
	.loc 1 333 0
	movq	-56(%rbp), %rax	# pve, tmp184
	movl	16(%rax), %edx	# pve_72->score, D.6897
	movl	-40(%rbp), %eax	# tve.ascr, D.6897
	addl	%eax, %edx	# D.6897, D.6897
	movl	-36(%rbp), %eax	# tve.lscr, D.6897
	addl	%edx, %eax	# D.6897, D.6897
	movl	%eax, -32(%rbp)	# D.6897, tve.score
	.loc 1 335 0
	movl	-32(%rbp), %edx	# tve.score, D.6897
	movq	-88(%rbp), %rax	# vh, tmp185
	movl	28(%rax), %eax	# vh_7(D)->wbeam, D.6897
	movl	%edx, %ecx	# D.6897, D.6897
	subl	%eax, %ecx	# D.6897, D.6897
	movq	-88(%rbp), %rax	# vh, tmp186
	movq	32(%rax), %rdx	# vh_7(D)->bestscore, D.6902
	movq	-88(%rbp), %rax	# vh, tmp187
	movl	20(%rax), %eax	# vh_7(D)->n_frm, D.6897
	cltq
	salq	$2, %rax	#, D.6898
	addq	%rdx, %rax	# D.6902, D.6902
	movl	(%rax), %eax	# *_93, D.6897
	cmpl	%eax, %ecx	# D.6897, D.6897
	jl	.L38	#,
	.loc 1 336 0
	movl	-60(%rbp), %eax	# i, tmp188
	movl	%eax, -28(%rbp)	# tmp188, tve.pred
	.loc 1 337 0
	movq	-56(%rbp), %rax	# pve, tmp189
	movzwl	32(%rax), %eax	# pve_72->lmstate.lm3g.lwid, D.6909
	movw	%ax, -14(%rbp)	# D.6909, tve.lmstate.lm3g.lwid
	.loc 1 339 0
	leaq	-48(%rbp), %rdx	#, tmp190
	movq	-96(%rbp), %rcx	# kbc, tmp191
	movq	-88(%rbp), %rax	# vh, tmp192
	movq	%rcx, %rsi	# tmp191,
	movq	%rax, %rdi	# tmp192,
	call	vithist_enter	#
.L38:
	.loc 1 323 0
	addl	$1, -60(%rbp)	#, i
.L37:
	.loc 1 323 0 is_stmt 0 discriminator 1
	movl	-60(%rbp), %eax	# i, tmp193
	cmpl	-64(%rbp), %eax	# fe, tmp193
	jl	.L39	#,
.L29:
	.loc 1 344 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	vithist_rescore, .-vithist_rescore
	.type	vithist_frame_gc, @function
vithist_frame_gc:
.LFB10:
	.loc 1 351 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -56(%rbp)	# vh, vh
	movl	%esi, -60(%rbp)	# frm, frm
	.loc 1 356 0
	movq	-56(%rbp), %rax	# vh, tmp100
	movq	8(%rax), %rax	# vh_11(D)->frame_start, D.6911
	movl	-60(%rbp), %edx	# frm, tmp101
	movslq	%edx, %rdx	# tmp101, D.6912
	salq	$2, %rdx	#, D.6912
	addq	%rdx, %rax	# D.6912, D.6911
	movl	(%rax), %eax	# *_16, tmp102
	movl	%eax, -28(%rbp)	# tmp102, se
	.loc 1 357 0
	movq	-56(%rbp), %rax	# vh, tmp103
	movl	16(%rax), %eax	# vh_11(D)->n_entry, D.6913
	subl	$1, %eax	#, tmp104
	movl	%eax, -24(%rbp)	# tmp104, fe
	.loc 1 358 0
	movl	-28(%rbp), %eax	# se, tmp105
	movl	%eax, -44(%rbp)	# tmp105, te
	.loc 1 360 0
	movl	$-2147483648, -40(%rbp)	#, bs
	.loc 1 361 0
	movl	$-1, -36(%rbp)	#, bv
	.loc 1 362 0
	movl	-28(%rbp), %eax	# se, tmp106
	movl	%eax, -32(%rbp)	# tmp106, i
	jmp	.L41	#
.L45:
	.loc 1 363 0
	movq	-56(%rbp), %rax	# vh, tmp107
	movq	(%rax), %rax	# vh_11(D)->entry, D.6914
	movl	-32(%rbp), %edx	# i, tmp108
	sarl	$14, %edx	#, D.6913
	movslq	%edx, %rdx	# D.6913, D.6912
	salq	$3, %rdx	#, D.6912
	addq	%rdx, %rax	# D.6912, D.6914
	movq	(%rax), %rcx	# *_28, D.6915
	movl	-32(%rbp), %eax	# i, tmp109
	cltq
	andl	$16383, %eax	#, D.6912
	movq	%rax, %rdx	# D.6912, D.6912
	movq	%rdx, %rax	# D.6912, tmp110
	salq	$3, %rax	#, tmp110
	addq	%rdx, %rax	# D.6912, tmp110
	salq	$2, %rax	#, tmp111
	addq	%rcx, %rax	# D.6915, tmp112
	movq	%rax, -16(%rbp)	# tmp112, ve
	.loc 1 364 0
	movq	-16(%rbp), %rax	# ve, tmp113
	movl	28(%rax), %eax	# ve_33->valid, D.6913
	testl	%eax, %eax	# D.6913
	je	.L42	#,
	.loc 1 365 0
	movl	-32(%rbp), %eax	# i, tmp114
	cmpl	-44(%rbp), %eax	# te, tmp114
	je	.L43	#,
	.loc 1 366 0
	movq	-56(%rbp), %rax	# vh, tmp115
	movq	(%rax), %rax	# vh_11(D)->entry, D.6914
	movl	-44(%rbp), %edx	# te, tmp116
	sarl	$14, %edx	#, D.6913
	movslq	%edx, %rdx	# D.6913, D.6912
	salq	$3, %rdx	#, D.6912
	addq	%rdx, %rax	# D.6912, D.6914
	movq	(%rax), %rcx	# *_39, D.6915
	movl	-44(%rbp), %eax	# te, tmp117
	cltq
	andl	$16383, %eax	#, D.6912
	movq	%rax, %rdx	# D.6912, D.6912
	movq	%rdx, %rax	# D.6912, tmp118
	salq	$3, %rax	#, tmp118
	addq	%rdx, %rax	# D.6912, tmp118
	salq	$2, %rax	#, tmp119
	addq	%rcx, %rax	# D.6915, tmp120
	movq	%rax, -8(%rbp)	# tmp120, tve
	.loc 1 367 0
	movq	-8(%rbp), %rax	# tve, tmp121
	movq	-16(%rbp), %rdx	# ve, tmp122
	movq	(%rdx), %rcx	# *ve_33, tmp123
	movq	%rcx, (%rax)	# tmp123, *tve_44
	movq	8(%rdx), %rcx	# *ve_33, tmp124
	movq	%rcx, 8(%rax)	# tmp124, *tve_44
	movq	16(%rdx), %rcx	# *ve_33, tmp125
	movq	%rcx, 16(%rax)	# tmp125, *tve_44
	movq	24(%rdx), %rcx	# *ve_33, tmp126
	movq	%rcx, 24(%rax)	# tmp126, *tve_44
	movl	32(%rdx), %edx	# *ve_33, tmp127
	movl	%edx, 32(%rax)	# tmp127, *tve_44
.L43:
	.loc 1 370 0
	movq	-16(%rbp), %rax	# ve, tmp128
	movl	16(%rax), %eax	# ve_33->score, D.6913
	cmpl	-40(%rbp), %eax	# bs, D.6913
	jle	.L44	#,
	.loc 1 371 0
	movq	-16(%rbp), %rax	# ve, tmp129
	movl	16(%rax), %eax	# ve_33->score, tmp130
	movl	%eax, -40(%rbp)	# tmp130, bs
	.loc 1 372 0
	movl	-44(%rbp), %eax	# te, tmp131
	movl	%eax, -36(%rbp)	# tmp131, bv
.L44:
	.loc 1 375 0
	addl	$1, -44(%rbp)	#, te
.L42:
	.loc 1 362 0
	addl	$1, -32(%rbp)	#, i
.L41:
	.loc 1 362 0 is_stmt 0 discriminator 1
	movl	-32(%rbp), %eax	# i, tmp132
	cmpl	-24(%rbp), %eax	# fe, tmp132
	jle	.L45	#,
	.loc 1 380 0 is_stmt 1
	movq	-56(%rbp), %rax	# vh, tmp133
	movq	40(%rax), %rax	# vh_11(D)->bestvh, D.6911
	movl	-60(%rbp), %edx	# frm, tmp134
	movslq	%edx, %rdx	# tmp134, D.6912
	salq	$2, %rdx	#, D.6912
	addq	%rax, %rdx	# D.6911, D.6911
	movl	-36(%rbp), %eax	# bv, tmp135
	movl	%eax, (%rdx)	# tmp135, *_53
	.loc 1 383 0
	movq	-56(%rbp), %rax	# vh, tmp136
	movl	16(%rax), %eax	# vh_11(D)->n_entry, D.6913
	subl	$1, %eax	#, D.6913
	sarl	$14, %eax	#, tmp137
	movl	%eax, -32(%rbp)	# tmp137, i
	.loc 1 384 0
	movl	-44(%rbp), %eax	# te, tmp138
	subl	$1, %eax	#, D.6913
	sarl	$14, %eax	#, tmp139
	movl	%eax, -20(%rbp)	# tmp139, j
	.loc 1 385 0
	jmp	.L46	#
.L47:
	.loc 1 386 0 discriminator 2
	movq	-56(%rbp), %rax	# vh, tmp140
	movq	(%rax), %rax	# vh_11(D)->entry, D.6914
	movl	-32(%rbp), %edx	# i, tmp141
	movslq	%edx, %rdx	# tmp141, D.6912
	salq	$3, %rdx	#, D.6912
	addq	%rdx, %rax	# D.6912, D.6914
	movq	(%rax), %rax	# *_62, D.6915
	movq	%rax, %rdi	# D.6915,
	call	ckd_free	#
	.loc 1 387 0 discriminator 2
	movq	-56(%rbp), %rax	# vh, tmp142
	movq	(%rax), %rax	# vh_11(D)->entry, D.6914
	movl	-32(%rbp), %edx	# i, tmp143
	movslq	%edx, %rdx	# tmp143, D.6912
	salq	$3, %rdx	#, D.6912
	addq	%rdx, %rax	# D.6912, D.6914
	movq	$0, (%rax)	#, *_67
	.loc 1 385 0 discriminator 2
	subl	$1, -32(%rbp)	#, i
.L46:
	.loc 1 385 0 is_stmt 0 discriminator 1
	movl	-32(%rbp), %eax	# i, tmp144
	cmpl	-20(%rbp), %eax	# j, tmp144
	jg	.L47	#,
	.loc 1 389 0 is_stmt 1
	movq	-56(%rbp), %rax	# vh, tmp145
	movl	-44(%rbp), %edx	# te, tmp146
	movl	%edx, 16(%rax)	# tmp146, vh_11(D)->n_entry
	.loc 1 390 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	vithist_frame_gc, .-vithist_frame_gc
	.globl	vithist_prune
	.type	vithist_prune, @function
vithist_prune:
.LFB11:
	.loc 1 395 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movq	%rdi, -56(%rbp)	# vh, vh
	movq	%rsi, -64(%rbp)	# dict, dict
	movl	%edx, -68(%rbp)	# frm, frm
	movl	%ecx, -72(%rbp)	# maxwpf, maxwpf
	movl	%r8d, -76(%rbp)	# maxhist, maxhist
	movl	%r9d, -80(%rbp)	# beam, beam
	.loc 1 404 0
	movq	-56(%rbp), %rax	# vh, tmp130
	movq	8(%rax), %rax	# vh_7(D)->frame_start, D.6916
	movl	-68(%rbp), %edx	# frm, tmp131
	movslq	%edx, %rdx	# tmp131, D.6917
	salq	$2, %rdx	#, D.6917
	addq	%rdx, %rax	# D.6917, D.6916
	movl	(%rax), %eax	# *_12, tmp132
	movl	%eax, -36(%rbp)	# tmp132, se
	.loc 1 405 0
	movq	-56(%rbp), %rax	# vh, tmp133
	movl	16(%rax), %eax	# vh_7(D)->n_entry, D.6918
	subl	$1, %eax	#, tmp134
	movl	%eax, -32(%rbp)	# tmp134, fe
	.loc 1 407 0
	movq	-56(%rbp), %rax	# vh, tmp135
	movq	32(%rax), %rax	# vh_7(D)->bestscore, D.6916
	movl	-68(%rbp), %edx	# frm, tmp136
	movslq	%edx, %rdx	# tmp136, D.6917
	salq	$2, %rdx	#, D.6917
	addq	%rdx, %rax	# D.6917, D.6916
	movl	(%rax), %edx	# *_19, D.6918
	movl	-80(%rbp), %eax	# beam, tmp140
	addl	%edx, %eax	# D.6918, tmp139
	movl	%eax, -28(%rbp)	# tmp139, th
	.loc 1 409 0
	call	heap_new	#
	movq	%rax, -16(%rbp)	# tmp141, h
	.loc 1 410 0
	movl	-72(%rbp), %eax	# maxwpf, tmp142
	addl	$1, %eax	#, D.6918
	cltq
	movl	$410, %ecx	#,
	movl	$.LC1, %edx	#,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# D.6917,
	call	__ckd_calloc__	#
	movq	%rax, -8(%rbp)	# tmp143, wid
	.loc 1 411 0
	movq	-8(%rbp), %rax	# wid, tmp144
	movl	$-1, (%rax)	#, *wid_27
	.loc 1 413 0
	movl	-36(%rbp), %eax	# se, tmp145
	movl	%eax, -44(%rbp)	# tmp145, i
	jmp	.L49	#
.L50:
	.loc 1 414 0 discriminator 2
	movq	-56(%rbp), %rax	# vh, tmp146
	movq	(%rax), %rax	# vh_7(D)->entry, D.6919
	movl	-44(%rbp), %edx	# i, i.0
	sarl	$14, %edx	#, D.6918
	movslq	%edx, %rdx	# D.6918, D.6917
	salq	$3, %rdx	#, D.6917
	addq	%rdx, %rax	# D.6917, D.6919
	movq	(%rax), %rcx	# *_34, D.6920
	movl	-44(%rbp), %eax	# i, i.1
	cltq
	andl	$16383, %eax	#, D.6917
	movq	%rax, %rdx	# D.6917, D.6917
	movq	%rdx, %rax	# D.6917, tmp147
	salq	$3, %rax	#, tmp147
	addq	%rdx, %rax	# D.6917, tmp147
	salq	$2, %rax	#, tmp148
	addq	%rcx, %rax	# D.6920, ve.2
	movq	%rax, -24(%rbp)	# ve.2, ve
	.loc 1 415 0 discriminator 2
	movq	-24(%rbp), %rax	# ve, ve.3
	movl	16(%rax), %eax	# ve.3_41->score, D.6918
	negl	%eax	# D.6918
	movl	%eax, %edx	# D.6918, D.6918
	movq	-24(%rbp), %rcx	# ve, ve.4
	movq	-16(%rbp), %rax	# h, tmp149
	movq	%rcx, %rsi	# ve.4,
	movq	%rax, %rdi	# tmp149,
	call	heap_insert	#
	.loc 1 416 0 discriminator 2
	movq	-24(%rbp), %rax	# ve, ve.5
	movl	$0, 28(%rax)	#, ve.5_45->valid
	.loc 1 413 0 discriminator 2
	movl	-44(%rbp), %eax	# i, i.6
	addl	$1, %eax	#, i.7
	movl	%eax, -44(%rbp)	# i.7, i
.L49:
	.loc 1 413 0 is_stmt 0 discriminator 1
	movl	-44(%rbp), %eax	# i, i.8
	cmpl	-32(%rbp), %eax	# fe, i.8
	jle	.L50	#,
	.loc 1 420 0 is_stmt 1
	movl	$0, -40(%rbp)	#, filler_done
	.loc 1 421 0
	jmp	.L51	#
.L60:
	.loc 1 422 0
	movq	-24(%rbp), %rax	# ve, ve.9
	movl	(%rax), %edx	# ve.9_53->wid, D.6918
	movq	-64(%rbp), %rax	# dict, tmp150
	movl	%edx, %esi	# D.6918,
	movq	%rax, %rdi	# tmp150,
	call	dict_filler_word	#
	testl	%eax, %eax	# D.6918
	je	.L52	#,
	.loc 1 424 0
	cmpl	$0, -40(%rbp)	#, filler_done
	je	.L53	#,
	.loc 1 425 0
	jmp	.L51	#
.L53:
	.loc 1 426 0
	movl	$1, -40(%rbp)	#, filler_done
.L52:
	.loc 1 430 0
	movl	$0, -44(%rbp)	#, i
	jmp	.L54	#
.L56:
	.loc 1 430 0 is_stmt 0 discriminator 1
	movl	-44(%rbp), %eax	# i, i.10
	addl	$1, %eax	#, i.11
	movl	%eax, -44(%rbp)	# i.11, i
.L54:
	movl	-44(%rbp), %eax	# i, i.12
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6917
	movq	-8(%rbp), %rax	# wid, tmp151
	addq	%rdx, %rax	# D.6917, D.6921
	movl	(%rax), %eax	# *_61, D.6918
	testl	%eax, %eax	# D.6918
	js	.L55	#,
	.loc 1 430 0 discriminator 2
	movl	-44(%rbp), %eax	# i, i.13
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6917
	movq	-8(%rbp), %rax	# wid, tmp152
	addq	%rdx, %rax	# D.6917, D.6921
	movl	(%rax), %edx	# *_66, D.6918
	movq	-24(%rbp), %rax	# ve, ve.14
	movl	(%rax), %eax	# ve.14_68->wid, D.6918
	cmpl	%eax, %edx	# D.6918, D.6918
	jne	.L56	#,
.L55:
	.loc 1 431 0 is_stmt 1
	movl	-44(%rbp), %eax	# i, i.15
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6917
	movq	-8(%rbp), %rax	# wid, tmp153
	addq	%rdx, %rax	# D.6917, D.6921
	movl	(%rax), %eax	# *_75, D.6918
	testl	%eax, %eax	# D.6918
	jns	.L57	#,
	.loc 1 433 0
	cmpl	$0, -72(%rbp)	#, maxwpf
	jle	.L51	#,
	.loc 1 434 0
	movl	-44(%rbp), %eax	# i, i.16
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6917
	movq	-8(%rbp), %rax	# wid, tmp154
	addq	%rax, %rdx	# tmp154, D.6921
	movq	-24(%rbp), %rax	# ve, ve.17
	movl	(%rax), %eax	# ve.17_81->wid, D.6918
	movl	%eax, (%rdx)	# D.6918, *_80
	.loc 1 435 0
	movl	-44(%rbp), %eax	# i, i.18
	cltq
	addq	$1, %rax	#, D.6922
	leaq	0(,%rax,4), %rdx	#, D.6922
	movq	-8(%rbp), %rax	# wid, tmp155
	addq	%rdx, %rax	# D.6922, D.6921
	movl	$-1, (%rax)	#, *_87
	.loc 1 437 0
	subl	$1, -72(%rbp)	#, maxwpf
	.loc 1 438 0
	subl	$1, -76(%rbp)	#, maxhist
	.loc 1 439 0
	movq	-24(%rbp), %rax	# ve, ve.19
	movl	$1, 28(%rax)	#, ve.19_90->valid
	jmp	.L51	#
.L57:
	.loc 1 441 0
	movq	-56(%rbp), %rax	# vh, tmp156
	movl	24(%rax), %eax	# vh_7(D)->bghist, D.6918
	testl	%eax, %eax	# D.6918
	jne	.L51	#,
	.loc 1 442 0
	subl	$1, -76(%rbp)	#, maxhist
	.loc 1 443 0
	movq	-24(%rbp), %rax	# ve, ve.20
	movl	$1, 28(%rax)	#, ve.20_93->valid
.L51:
	.loc 1 421 0 discriminator 1
	leaq	-44(%rbp), %rdx	#, tmp157
	leaq	-24(%rbp), %rcx	#, tmp158
	movq	-16(%rbp), %rax	# h, tmp159
	movq	%rcx, %rsi	# tmp158,
	movq	%rax, %rdi	# tmp159,
	call	heap_pop	#
	testl	%eax, %eax	# D.6918
	jle	.L59	#,
	.loc 1 421 0 is_stmt 0 discriminator 2
	movq	-24(%rbp), %rax	# ve, ve.21
	movl	16(%rax), %eax	# ve.21_51->score, D.6918
	cmpl	-28(%rbp), %eax	# th, D.6918
	jl	.L59	#,
	.loc 1 421 0 discriminator 1
	cmpl	$0, -76(%rbp)	#, maxhist
	jg	.L60	#,
.L59:
	.loc 1 447 0 is_stmt 1
	movq	-8(%rbp), %rax	# wid, tmp160
	movq	%rax, %rdi	# tmp160,
	call	ckd_free	#
	.loc 1 448 0
	movq	-16(%rbp), %rax	# h, tmp161
	movq	%rax, %rdi	# tmp161,
	call	heap_destroy	#
	.loc 1 451 0
	movl	-68(%rbp), %edx	# frm, tmp162
	movq	-56(%rbp), %rax	# vh, tmp163
	movl	%edx, %esi	# tmp162,
	movq	%rax, %rdi	# tmp163,
	call	vithist_frame_gc	#
	.loc 1 452 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	vithist_prune, .-vithist_prune
	.type	vithist_lmstate_reset, @function
vithist_lmstate_reset:
.LFB12:
	.loc 1 456 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -56(%rbp)	# vh, vh
	.loc 1 461 0
	movq	-56(%rbp), %rax	# vh, tmp69
	movq	56(%rax), %rax	# vh_3(D)->lwidlist, tmp70
	movq	%rax, -32(%rbp)	# tmp70, lgn
	jmp	.L62	#
.L65:
	.loc 1 462 0
	movq	-32(%rbp), %rax	# lgn, tmp71
	movl	(%rax), %eax	# lgn_1->data.int32, tmp72
	movl	%eax, -36(%rbp)	# tmp72, i
	.loc 1 463 0
	movq	-56(%rbp), %rax	# vh, tmp73
	movq	48(%rax), %rax	# vh_3(D)->lms2vh_root, D.6923
	movl	-36(%rbp), %edx	# i, tmp74
	movslq	%edx, %rdx	# tmp74, D.6924
	salq	$3, %rdx	#, D.6924
	addq	%rdx, %rax	# D.6924, D.6923
	movq	(%rax), %rax	# *_9, tmp75
	movq	%rax, -16(%rbp)	# tmp75, lms2vh
	.loc 1 465 0
	movq	-16(%rbp), %rax	# lms2vh, tmp76
	movq	16(%rax), %rax	# lms2vh_10->children, tmp77
	movq	%rax, -24(%rbp)	# tmp77, gn
	jmp	.L63	#
.L64:
	.loc 1 466 0 discriminator 2
	movq	-24(%rbp), %rax	# gn, tmp78
	movq	(%rax), %rax	# gn_2->data.ptr, tmp79
	movq	%rax, -8(%rbp)	# tmp79, child
	.loc 1 467 0 discriminator 2
	movq	-8(%rbp), %rax	# child, tmp80
	movq	%rax, %rdi	# tmp80,
	call	ckd_free	#
	.loc 1 465 0 discriminator 2
	movq	-24(%rbp), %rax	# gn, tmp81
	movq	8(%rax), %rax	# gn_2->next, tmp82
	movq	%rax, -24(%rbp)	# tmp82, gn
.L63:
	.loc 1 465 0 is_stmt 0 discriminator 1
	cmpq	$0, -24(%rbp)	#, gn
	jne	.L64	#,
	.loc 1 469 0 is_stmt 1
	movq	-16(%rbp), %rax	# lms2vh, tmp83
	movq	16(%rax), %rax	# lms2vh_10->children, D.6925
	movq	%rax, %rdi	# D.6925,
	call	glist_free	#
	.loc 1 471 0
	movq	-16(%rbp), %rax	# lms2vh, tmp84
	movq	%rax, %rdi	# tmp84,
	call	ckd_free	#
	.loc 1 473 0
	movq	-56(%rbp), %rax	# vh, tmp85
	movq	48(%rax), %rax	# vh_3(D)->lms2vh_root, D.6923
	movl	-36(%rbp), %edx	# i, tmp86
	movslq	%edx, %rdx	# tmp86, D.6924
	salq	$3, %rdx	#, D.6924
	addq	%rdx, %rax	# D.6924, D.6923
	movq	$0, (%rax)	#, *_18
	.loc 1 461 0
	movq	-32(%rbp), %rax	# lgn, tmp87
	movq	8(%rax), %rax	# lgn_1->next, tmp88
	movq	%rax, -32(%rbp)	# tmp88, lgn
.L62:
	.loc 1 461 0 is_stmt 0 discriminator 1
	cmpq	$0, -32(%rbp)	#, lgn
	jne	.L65	#,
	.loc 1 476 0 is_stmt 1
	movq	-56(%rbp), %rax	# vh, tmp89
	movq	56(%rax), %rax	# vh_3(D)->lwidlist, D.6925
	movq	%rax, %rdi	# D.6925,
	call	glist_free	#
	.loc 1 477 0
	movq	-56(%rbp), %rax	# vh, tmp90
	movq	$0, 56(%rax)	#, vh_3(D)->lwidlist
	.loc 1 478 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	vithist_lmstate_reset, .-vithist_lmstate_reset
	.globl	vithist_frame_windup
	.type	vithist_frame_windup, @function
vithist_frame_windup:
.LFB13:
	.loc 1 482 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -8(%rbp)	# vh, vh
	movl	%esi, -12(%rbp)	# frm, frm
	movq	%rdx, -24(%rbp)	# fp, fp
	movq	%rcx, -32(%rbp)	# kbc, kbc
	.loc 1 485 0
	movq	-8(%rbp), %rax	# vh, tmp77
	movl	20(%rax), %eax	# vh_1(D)->n_frm, D.6926
	leal	1(%rax), %edx	#, D.6926
	movq	-8(%rbp), %rax	# vh, tmp78
	movl	%edx, 20(%rax)	# D.6926, vh_1(D)->n_frm
	.loc 1 486 0
	movq	-8(%rbp), %rax	# vh, tmp79
	movq	8(%rax), %rdx	# vh_1(D)->frame_start, D.6927
	movq	-8(%rbp), %rax	# vh, tmp80
	movl	20(%rax), %eax	# vh_1(D)->n_frm, D.6926
	cltq
	salq	$2, %rax	#, D.6928
	addq	%rax, %rdx	# D.6928, D.6927
	movq	-8(%rbp), %rax	# vh, tmp81
	movl	16(%rax), %eax	# vh_1(D)->n_entry, D.6926
	movl	%eax, (%rdx)	# D.6926, *_8
	.loc 1 488 0
	cmpq	$0, -24(%rbp)	#, fp
	je	.L67	#,
	.loc 1 489 0
	movq	-24(%rbp), %rcx	# fp, tmp82
	movq	-32(%rbp), %rdx	# kbc, tmp83
	movl	-12(%rbp), %esi	# frm, tmp84
	movq	-8(%rbp), %rax	# vh, tmp85
	movq	%rax, %rdi	# tmp85,
	call	vithist_dump	#
.L67:
	.loc 1 491 0
	movq	-8(%rbp), %rax	# vh, tmp86
	movq	%rax, %rdi	# tmp86,
	call	vithist_lmstate_reset	#
	.loc 1 493 0
	movq	-8(%rbp), %rax	# vh, tmp87
	movq	32(%rax), %rdx	# vh_1(D)->bestscore, D.6927
	movq	-8(%rbp), %rax	# vh, tmp88
	movl	20(%rax), %eax	# vh_1(D)->n_frm, D.6926
	cltq
	salq	$2, %rax	#, D.6928
	addq	%rdx, %rax	# D.6927, D.6927
	movl	$-2147483648, (%rax)	#, *_17
	.loc 1 494 0
	movq	-8(%rbp), %rax	# vh, tmp89
	movq	40(%rax), %rdx	# vh_1(D)->bestvh, D.6927
	movq	-8(%rbp), %rax	# vh, tmp90
	movl	20(%rax), %eax	# vh_1(D)->n_frm, D.6926
	cltq
	salq	$2, %rax	#, D.6928
	addq	%rdx, %rax	# D.6927, D.6927
	movl	$-1, (%rax)	#, *_22
	.loc 1 495 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	vithist_frame_windup, .-vithist_frame_windup
	.globl	vithist_utt_end
	.type	vithist_utt_end, @function
vithist_utt_end:
.LFB14:
	.loc 1 498 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$112, %rsp	#,
	movq	%rdi, -88(%rbp)	# vh, vh
	movq	%rsi, -96(%rbp)	# kbc, kbc
	.loc 1 501 0
	movq	$0, -32(%rbp)	#, bestve
	.loc 1 507 0
	movq	-88(%rbp), %rax	# vh, tmp111
	movl	20(%rax), %eax	# vh_16(D)->n_frm, D.6930
	subl	$1, %eax	#, tmp112
	movl	%eax, -72(%rbp)	# tmp112, f
	jmp	.L69	#
.L72:
	.loc 1 508 0
	movq	-88(%rbp), %rax	# vh, tmp113
	movq	8(%rax), %rax	# vh_16(D)->frame_start, D.6931
	movl	-72(%rbp), %edx	# f, tmp114
	movslq	%edx, %rdx	# tmp114, D.6932
	salq	$2, %rdx	#, D.6932
	addq	%rdx, %rax	# D.6932, D.6931
	movl	(%rax), %eax	# *_24, tmp115
	movl	%eax, -64(%rbp)	# tmp115, sv
	.loc 1 509 0
	movq	-88(%rbp), %rax	# vh, tmp116
	movq	8(%rax), %rax	# vh_16(D)->frame_start, D.6931
	movl	-72(%rbp), %edx	# f, tmp117
	movslq	%edx, %rdx	# tmp117, D.6933
	addq	$1, %rdx	#, D.6933
	salq	$2, %rdx	#, D.6933
	addq	%rdx, %rax	# D.6933, D.6931
	movl	(%rax), %eax	# *_30, tmp118
	movl	%eax, -60(%rbp)	# tmp118, nsv
	.loc 1 511 0
	movl	-64(%rbp), %eax	# sv, tmp119
	cmpl	-60(%rbp), %eax	# nsv, tmp119
	jge	.L70	#,
	.loc 1 512 0
	jmp	.L71	#
.L70:
	.loc 1 507 0
	subl	$1, -72(%rbp)	#, f
.L69:
	.loc 1 507 0 is_stmt 0 discriminator 1
	cmpl	$0, -72(%rbp)	#, f
	jns	.L72	#,
.L71:
	.loc 1 514 0 is_stmt 1
	cmpl	$0, -72(%rbp)	#, f
	jns	.L73	#,
	.loc 1 515 0
	movl	$-1, %eax	#, D.6929
	jmp	.L74	#
.L73:
	.loc 1 523 0
	movq	-96(%rbp), %rax	# kbc, tmp120
	movq	32(%rax), %rax	# kbc_34(D)->lm, tmp121
	movq	%rax, -24(%rbp)	# tmp121, lm
	.loc 1 524 0
	movq	-24(%rbp), %rax	# lm, tmp122
	movzwl	26(%rax), %eax	# lm_35->finishlwid, tmp123
	movw	%ax, -74(%rbp)	# tmp123, endwid
	.loc 1 525 0
	movq	-96(%rbp), %rax	# kbc, tmp124
	movq	16(%rax), %rax	# kbc_34(D)->dict, tmp125
	movq	%rax, -16(%rbp)	# tmp125, dict
	.loc 1 527 0
	movl	$-2147483648, -56(%rbp)	#, bestscore
	.loc 1 528 0
	movl	$-1, -52(%rbp)	#, bestvh
	.loc 1 530 0
	movl	-64(%rbp), %eax	# sv, tmp126
	movl	%eax, -68(%rbp)	# tmp126, i
	jmp	.L75	#
.L77:
	.loc 1 531 0
	movl	-68(%rbp), %eax	# i, tmp130
	sarl	$14, %eax	#, tmp129
	movl	%eax, -48(%rbp)	# tmp129, b
	.loc 1 532 0
	movl	-68(%rbp), %eax	# i, tmp134
	andl	$16383, %eax	#, tmp133
	movl	%eax, -44(%rbp)	# tmp133, l
	.loc 1 533 0
	movq	-88(%rbp), %rax	# vh, tmp135
	movq	(%rax), %rax	# vh_16(D)->entry, D.6934
	movl	-48(%rbp), %edx	# b, tmp136
	movslq	%edx, %rdx	# tmp136, D.6932
	salq	$3, %rdx	#, D.6932
	addq	%rdx, %rax	# D.6932, D.6934
	movq	(%rax), %rcx	# *_46, D.6935
	movl	-44(%rbp), %eax	# l, tmp137
	movslq	%eax, %rdx	# tmp137, D.6932
	movq	%rdx, %rax	# D.6932, tmp138
	salq	$3, %rax	#, tmp138
	addq	%rdx, %rax	# D.6932, tmp138
	salq	$2, %rax	#, tmp139
	addq	%rcx, %rax	# D.6935, tmp140
	movq	%rax, -8(%rbp)	# tmp140, ve
	.loc 1 535 0
	movq	-8(%rbp), %rax	# ve, tmp141
	movl	16(%rax), %eax	# ve_50->score, tmp142
	movl	%eax, -40(%rbp)	# tmp142, scr
	.loc 1 536 0
	movq	-16(%rbp), %rax	# dict, tmp143
	movl	76(%rax), %edi	# dict_37->finishwid, D.6930
	movzwl	-74(%rbp), %ecx	# endwid, D.6930
	movq	-8(%rbp), %rax	# ve, tmp144
	movzwl	32(%rax), %eax	# ve_50->lmstate.lm3g.lwid, D.6936
	movzwl	%ax, %edx	# D.6936, D.6930
	movq	-8(%rbp), %rax	# ve, tmp145
	movzwl	34(%rax), %eax	# ve_50->lmstate.lm3g.lwid, D.6936
	movzwl	%ax, %esi	# D.6936, D.6930
	movq	-24(%rbp), %rax	# lm, tmp146
	movl	%edi, %r8d	# D.6930,
	movq	%rax, %rdi	# tmp146,
	call	lm_tg_score	#
	addl	%eax, -40(%rbp)	# D.6930, scr
	.loc 1 538 0
	movl	-56(%rbp), %eax	# bestscore, tmp147
	cmpl	-40(%rbp), %eax	# scr, tmp147
	jge	.L76	#,
	.loc 1 539 0
	movl	-40(%rbp), %eax	# scr, tmp148
	movl	%eax, -56(%rbp)	# tmp148, bestscore
	.loc 1 540 0
	movl	-68(%rbp), %eax	# i, tmp149
	movl	%eax, -52(%rbp)	# tmp149, bestvh
	.loc 1 541 0
	movq	-8(%rbp), %rax	# ve, tmp150
	movq	%rax, -32(%rbp)	# tmp150, bestve
.L76:
	.loc 1 530 0
	addl	$1, -68(%rbp)	#, i
.L75:
	.loc 1 530 0 is_stmt 0 discriminator 1
	movl	-68(%rbp), %eax	# i, tmp151
	cmpl	-60(%rbp), %eax	# nsv, tmp151
	jl	.L77	#,
	.loc 1 547 0 is_stmt 1
	movq	-88(%rbp), %rax	# vh, tmp152
	movl	20(%rax), %eax	# vh_16(D)->n_frm, D.6930
	subl	$1, %eax	#, D.6930
	cmpl	-72(%rbp), %eax	# f, D.6930
	je	.L78	#,
	.loc 1 554 0
	movq	-88(%rbp), %rax	# vh, tmp153
	movl	20(%rax), %eax	# vh_16(D)->n_frm, D.6930
	leal	-1(%rax), %edx	#, D.6930
	movq	-88(%rbp), %rax	# vh, tmp154
	movl	%edx, 20(%rax)	# D.6930, vh_16(D)->n_frm
	.loc 1 555 0
	movq	-32(%rbp), %rax	# bestve, tmp155
	movl	16(%rax), %edi	# bestve_12->score, D.6930
	movq	-88(%rbp), %rax	# vh, tmp156
	movl	20(%rax), %ecx	# vh_16(D)->n_frm, D.6930
	movq	-16(%rbp), %rax	# dict, tmp157
	movl	80(%rax), %edx	# dict_37->silwid, D.6930
	movl	-52(%rbp), %r8d	# bestvh, tmp158
	movq	-96(%rbp), %rsi	# kbc, tmp159
	movq	-88(%rbp), %rax	# vh, tmp160
	movl	$-1, (%rsp)	#,
	movl	%r8d, %r9d	# tmp158,
	movl	%edi, %r8d	# D.6930,
	movq	%rax, %rdi	# tmp160,
	call	vithist_rescore	#
	.loc 1 556 0
	movq	-88(%rbp), %rax	# vh, tmp161
	movl	20(%rax), %eax	# vh_16(D)->n_frm, D.6930
	leal	1(%rax), %edx	#, D.6930
	movq	-88(%rbp), %rax	# vh, tmp162
	movl	%edx, 20(%rax)	# D.6930, vh_16(D)->n_frm
	.loc 1 557 0
	movq	-88(%rbp), %rax	# vh, tmp163
	movq	8(%rax), %rdx	# vh_16(D)->frame_start, D.6931
	movq	-88(%rbp), %rax	# vh, tmp164
	movl	20(%rax), %eax	# vh_16(D)->n_frm, D.6930
	cltq
	salq	$2, %rax	#, D.6932
	addq	%rax, %rdx	# D.6932, D.6931
	movq	-88(%rbp), %rax	# vh, tmp165
	movl	16(%rax), %eax	# vh_16(D)->n_entry, D.6930
	movl	%eax, (%rdx)	# D.6930, *_77
	.loc 1 559 0
	movq	-96(%rbp), %rdx	# kbc, tmp166
	movq	-88(%rbp), %rax	# vh, tmp167
	movq	%rdx, %rsi	# tmp166,
	movq	%rax, %rdi	# tmp167,
	call	vithist_utt_end	#
	jmp	.L74	#
.L78:
	.loc 1 563 0
	movq	-88(%rbp), %rax	# vh, tmp168
	movl	16(%rax), %eax	# vh_16(D)->n_entry, tmp169
	movl	%eax, -36(%rbp)	# tmp169, vhid
	.loc 1 564 0
	movq	-88(%rbp), %rax	# vh, tmp170
	movq	%rax, %rdi	# tmp170,
	call	vithist_entry_alloc	#
	movq	%rax, -8(%rbp)	# tmp171, ve
	.loc 1 566 0
	movq	-16(%rbp), %rax	# dict, tmp172
	movl	76(%rax), %edx	# dict_37->finishwid, D.6930
	movq	-8(%rbp), %rax	# ve, tmp173
	movl	%edx, (%rax)	# D.6930, ve_81->wid
	.loc 1 567 0
	movq	-32(%rbp), %rax	# bestve, tmp174
	movzwl	6(%rax), %eax	# bestve_12->ef, D.6937
	cmpw	$-1, %ax	#, D.6937
	je	.L79	#,
	.loc 1 567 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# bestve, tmp175
	movzwl	6(%rax), %eax	# bestve_12->ef, D.6937
	addl	$1, %eax	#, D.6938
	jmp	.L80	#
.L79:
	.loc 1 567 0 discriminator 2
	movl	$0, %eax	#, iftmp.22
.L80:
	.loc 1 567 0 discriminator 3
	movq	-8(%rbp), %rdx	# ve, tmp176
	movw	%ax, 4(%rdx)	# iftmp.22, ve_81->sf
	.loc 1 568 0 is_stmt 1 discriminator 3
	movq	-88(%rbp), %rax	# vh, tmp177
	movl	20(%rax), %eax	# vh_16(D)->n_frm, D.6930
	movl	%eax, %edx	# D.6930, D.6937
	movq	-8(%rbp), %rax	# ve, tmp178
	movw	%dx, 6(%rax)	# D.6937, ve_81->ef
	.loc 1 569 0 discriminator 3
	movq	-8(%rbp), %rax	# ve, tmp179
	movl	$0, 8(%rax)	#, ve_81->ascr
	.loc 1 570 0 discriminator 3
	movq	-32(%rbp), %rax	# bestve, tmp180
	movl	16(%rax), %eax	# bestve_12->score, D.6930
	movl	-56(%rbp), %edx	# bestscore, tmp181
	subl	%eax, %edx	# D.6930, D.6930
	movq	-8(%rbp), %rax	# ve, tmp182
	movl	%edx, 12(%rax)	# D.6930, ve_81->lscr
	.loc 1 571 0 discriminator 3
	movq	-8(%rbp), %rax	# ve, tmp183
	movl	-56(%rbp), %edx	# bestscore, tmp184
	movl	%edx, 16(%rax)	# tmp184, ve_81->score
	.loc 1 572 0 discriminator 3
	movq	-8(%rbp), %rax	# ve, tmp185
	movl	-52(%rbp), %edx	# bestvh, tmp186
	movl	%edx, 20(%rax)	# tmp186, ve_81->pred
	.loc 1 573 0 discriminator 3
	movq	-8(%rbp), %rax	# ve, tmp187
	movl	$0, 24(%rax)	#, ve_81->type
	.loc 1 574 0 discriminator 3
	movq	-8(%rbp), %rax	# ve, tmp188
	movl	$1, 28(%rax)	#, ve_81->valid
	.loc 1 575 0 discriminator 3
	movq	-8(%rbp), %rax	# ve, tmp189
	movzwl	-74(%rbp), %edx	# endwid, tmp190
	movw	%dx, 32(%rax)	# tmp190, ve_81->lmstate.lm3g.lwid
	.loc 1 576 0 discriminator 3
	movq	-8(%rbp), %rax	# ve, tmp191
	movzwl	32(%rax), %edx	# ve_81->lmstate.lm3g.lwid, D.6936
	movq	-8(%rbp), %rax	# ve, tmp192
	movw	%dx, 34(%rax)	# D.6936, ve_81->lmstate.lm3g.lwid
	.loc 1 578 0 discriminator 3
	movl	-36(%rbp), %eax	# vhid, D.6929
.L74:
	.loc 1 579 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	vithist_utt_end, .-vithist_utt_end
	.globl	vithist_partialutt_end
	.type	vithist_partialutt_end, @function
vithist_partialutt_end:
.LFB15:
	.loc 1 583 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$96, %rsp	#,
	movq	%rdi, -88(%rbp)	# vh, vh
	movq	%rsi, -96(%rbp)	# kbc, kbc
	.loc 1 592 0
	movq	-88(%rbp), %rax	# vh, tmp87
	movl	20(%rax), %eax	# vh_12(D)->n_frm, D.6940
	subl	$1, %eax	#, tmp88
	movl	%eax, -68(%rbp)	# tmp88, f
	jmp	.L82	#
.L85:
	.loc 1 593 0
	movq	-88(%rbp), %rax	# vh, tmp89
	movq	8(%rax), %rax	# vh_12(D)->frame_start, D.6941
	movl	-68(%rbp), %edx	# f, tmp90
	movslq	%edx, %rdx	# tmp90, D.6942
	salq	$2, %rdx	#, D.6942
	addq	%rdx, %rax	# D.6942, D.6941
	movl	(%rax), %eax	# *_20, tmp91
	movl	%eax, -60(%rbp)	# tmp91, sv
	.loc 1 594 0
	movq	-88(%rbp), %rax	# vh, tmp92
	movq	8(%rax), %rax	# vh_12(D)->frame_start, D.6941
	movl	-68(%rbp), %edx	# f, tmp93
	movslq	%edx, %rdx	# tmp93, D.6943
	addq	$1, %rdx	#, D.6943
	salq	$2, %rdx	#, D.6943
	addq	%rdx, %rax	# D.6943, D.6941
	movl	(%rax), %eax	# *_26, tmp94
	movl	%eax, -56(%rbp)	# tmp94, nsv
	.loc 1 596 0
	movl	-60(%rbp), %eax	# sv, tmp95
	cmpl	-56(%rbp), %eax	# nsv, tmp95
	jge	.L83	#,
	.loc 1 597 0
	jmp	.L84	#
.L83:
	.loc 1 592 0
	subl	$1, -68(%rbp)	#, f
.L82:
	.loc 1 592 0 is_stmt 0 discriminator 1
	cmpl	$0, -68(%rbp)	#, f
	jns	.L85	#,
.L84:
	.loc 1 599 0 is_stmt 1
	cmpl	$0, -68(%rbp)	#, f
	jns	.L86	#,
	.loc 1 600 0
	movl	$-1, %eax	#, D.6939
	jmp	.L87	#
.L86:
	.loc 1 602 0
	movq	-88(%rbp), %rax	# vh, tmp96
	movl	20(%rax), %eax	# vh_12(D)->n_frm, D.6940
	subl	$1, %eax	#, D.6940
	cmpl	-68(%rbp), %eax	# f, D.6940
	je	.L88	#,
	.loc 1 606 0
	movl	$-1, %eax	#, D.6939
	jmp	.L87	#
.L88:
	.loc 1 610 0
	movq	-96(%rbp), %rax	# kbc, tmp97
	movq	32(%rax), %rax	# kbc_33(D)->lm, tmp98
	movq	%rax, -32(%rbp)	# tmp98, lm
	.loc 1 611 0
	movq	-96(%rbp), %rax	# kbc, tmp99
	movq	16(%rax), %rax	# kbc_33(D)->dict, tmp100
	movq	%rax, -24(%rbp)	# tmp100, dict
	.loc 1 612 0
	movq	-32(%rbp), %rax	# lm, tmp101
	movzwl	26(%rax), %eax	# lm_34->finishlwid, tmp102
	movw	%ax, -70(%rbp)	# tmp102, endwid
	.loc 1 614 0
	movl	$-2147483648, -52(%rbp)	#, bestscore
	.loc 1 615 0
	movl	$-1, -48(%rbp)	#, bestvh
	.loc 1 617 0
	movl	-60(%rbp), %eax	# sv, tmp103
	movl	%eax, -64(%rbp)	# tmp103, i
	jmp	.L89	#
.L91:
	.loc 1 618 0
	movl	-64(%rbp), %eax	# i, tmp107
	sarl	$14, %eax	#, tmp106
	movl	%eax, -44(%rbp)	# tmp106, b
	.loc 1 619 0
	movl	-64(%rbp), %eax	# i, tmp111
	andl	$16383, %eax	#, tmp110
	movl	%eax, -40(%rbp)	# tmp110, l
	.loc 1 620 0
	movq	-88(%rbp), %rax	# vh, tmp112
	movq	(%rax), %rax	# vh_12(D)->entry, D.6944
	movl	-44(%rbp), %edx	# b, tmp113
	movslq	%edx, %rdx	# tmp113, D.6942
	salq	$3, %rdx	#, D.6942
	addq	%rdx, %rax	# D.6942, D.6944
	movq	(%rax), %rcx	# *_45, D.6945
	movl	-40(%rbp), %eax	# l, tmp114
	movslq	%eax, %rdx	# tmp114, D.6942
	movq	%rdx, %rax	# D.6942, tmp115
	salq	$3, %rax	#, tmp115
	addq	%rdx, %rax	# D.6942, tmp115
	salq	$2, %rax	#, tmp116
	addq	%rcx, %rax	# D.6945, tmp117
	movq	%rax, -16(%rbp)	# tmp117, ve
	.loc 1 622 0
	movq	-16(%rbp), %rax	# ve, tmp118
	movl	16(%rax), %eax	# ve_49->score, tmp119
	movl	%eax, -36(%rbp)	# tmp119, scr
	.loc 1 623 0
	movq	-24(%rbp), %rax	# dict, tmp120
	movl	76(%rax), %edi	# dict_35->finishwid, D.6940
	movzwl	-70(%rbp), %ecx	# endwid, D.6940
	movq	-16(%rbp), %rax	# ve, tmp121
	movzwl	32(%rax), %eax	# ve_49->lmstate.lm3g.lwid, D.6946
	movzwl	%ax, %edx	# D.6946, D.6940
	movq	-16(%rbp), %rax	# ve, tmp122
	movzwl	34(%rax), %eax	# ve_49->lmstate.lm3g.lwid, D.6946
	movzwl	%ax, %esi	# D.6946, D.6940
	movq	-32(%rbp), %rax	# lm, tmp123
	movl	%edi, %r8d	# D.6940,
	movq	%rax, %rdi	# tmp123,
	call	lm_tg_score	#
	addl	%eax, -36(%rbp)	# D.6940, scr
	.loc 1 625 0
	movl	-52(%rbp), %eax	# bestscore, tmp124
	cmpl	-36(%rbp), %eax	# scr, tmp124
	jge	.L90	#,
	.loc 1 626 0
	movl	-36(%rbp), %eax	# scr, tmp125
	movl	%eax, -52(%rbp)	# tmp125, bestscore
	.loc 1 627 0
	movl	-64(%rbp), %eax	# i, tmp126
	movl	%eax, -48(%rbp)	# tmp126, bestvh
	.loc 1 628 0
	movq	-16(%rbp), %rax	# ve, tmp127
	movq	%rax, -8(%rbp)	# tmp127, bestve
.L90:
	.loc 1 617 0
	addl	$1, -64(%rbp)	#, i
.L89:
	.loc 1 617 0 is_stmt 0 discriminator 1
	movl	-64(%rbp), %eax	# i, tmp128
	cmpl	-56(%rbp), %eax	# nsv, tmp128
	jl	.L91	#,
	.loc 1 632 0 is_stmt 1
	movl	-48(%rbp), %eax	# bestvh, D.6939
.L87:
	.loc 1 633 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	vithist_partialutt_end, .-vithist_partialutt_end
	.globl	vithist_utt_reset
	.type	vithist_utt_reset, @function
vithist_utt_reset:
.LFB16:
	.loc 1 637 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# vh, vh
	.loc 1 640 0
	movq	-24(%rbp), %rax	# vh, tmp72
	movq	%rax, %rdi	# tmp72,
	call	vithist_lmstate_reset	#
	.loc 1 642 0
	movq	-24(%rbp), %rax	# vh, tmp73
	movl	16(%rax), %eax	# vh_2(D)->n_entry, D.6947
	subl	$1, %eax	#, D.6947
	sarl	$14, %eax	#, tmp74
	movl	%eax, -4(%rbp)	# tmp74, b
	jmp	.L93	#
.L94:
	.loc 1 643 0 discriminator 2
	movq	-24(%rbp), %rax	# vh, tmp75
	movq	(%rax), %rax	# vh_2(D)->entry, D.6948
	movl	-4(%rbp), %edx	# b, tmp76
	movslq	%edx, %rdx	# tmp76, D.6949
	salq	$3, %rdx	#, D.6949
	addq	%rdx, %rax	# D.6949, D.6948
	movq	(%rax), %rax	# *_9, D.6950
	movq	%rax, %rdi	# D.6950,
	call	ckd_free	#
	.loc 1 644 0 discriminator 2
	movq	-24(%rbp), %rax	# vh, tmp77
	movq	(%rax), %rax	# vh_2(D)->entry, D.6948
	movl	-4(%rbp), %edx	# b, tmp78
	movslq	%edx, %rdx	# tmp78, D.6949
	salq	$3, %rdx	#, D.6949
	addq	%rdx, %rax	# D.6949, D.6948
	movq	$0, (%rax)	#, *_14
	.loc 1 642 0 discriminator 2
	subl	$1, -4(%rbp)	#, b
.L93:
	.loc 1 642 0 is_stmt 0 discriminator 1
	cmpl	$0, -4(%rbp)	#, b
	jns	.L94	#,
	.loc 1 646 0 is_stmt 1
	movq	-24(%rbp), %rax	# vh, tmp79
	movl	$0, 16(%rax)	#, vh_2(D)->n_entry
	.loc 1 648 0
	movq	-24(%rbp), %rax	# vh, tmp80
	movq	32(%rax), %rax	# vh_2(D)->bestscore, D.6951
	movl	$-2147483648, (%rax)	#, *_16
	.loc 1 649 0
	movq	-24(%rbp), %rax	# vh, tmp81
	movq	40(%rax), %rax	# vh_2(D)->bestvh, D.6951
	movl	$-1, (%rax)	#, *_17
	.loc 1 650 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	vithist_utt_reset, .-vithist_utt_reset
	.section	.rodata
	.align 8
.LC7:
	.string	"VITHIST  frame %d  #entries %d\n"
	.align 8
.LC8:
	.string	"VITHIST  #frames %d  #entries %d\n"
.LC9:
	.string	"PathScr"
.LC10:
	.string	"EFrm"
.LC11:
	.string	"SFrm"
.LC12:
	.string	"Seq/Val"
	.align 8
.LC13:
	.string	"\t%7s %5s %5s %11s %9s %8s %7s %4s Word (LM-state)\n"
.LC14:
	.string	"Type"
.LC15:
	.string	"Pred"
.LC16:
	.string	"SegLScr"
.LC17:
	.string	"SegAScr"
.LC18:
	.string	"%5d BS: %11d BV: %8d\n"
	.align 8
.LC19:
	.string	"\t%c%6d %5d %5d %11d %9d %8d %7d %4d %s"
.LC20:
	.string	" (%s"
.LC21:
	.string	", %s"
.LC22:
	.string	")\n"
.LC23:
	.string	"END_VITHIST\n"
	.text
	.globl	vithist_dump
	.type	vithist_dump, @function
vithist_dump:
.LFB17:
	.loc 1 710 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r12	#
	pushq	%rbx	#
	subq	$144, %rsp	#,
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -88(%rbp)	# vh, vh
	movl	%esi, -92(%rbp)	# frm, frm
	movq	%rdx, -104(%rbp)	# kbc, kbc
	movq	%rcx, -112(%rbp)	# fp, fp
	.loc 1 718 0
	movq	-104(%rbp), %rax	# kbc, tmp134
	movq	16(%rax), %rax	# kbc_6(D)->dict, tmp135
	movq	%rax, -40(%rbp)	# tmp135, dict
	.loc 1 719 0
	movq	-104(%rbp), %rax	# kbc, tmp136
	movq	32(%rax), %rax	# kbc_6(D)->lm, tmp137
	movq	%rax, -32(%rbp)	# tmp137, lm
	.loc 1 721 0
	cmpl	$0, -92(%rbp)	#, frm
	js	.L96	#,
	.loc 1 722 0
	movl	-92(%rbp), %eax	# frm, tmp138
	movl	%eax, -56(%rbp)	# tmp138, sf
	.loc 1 723 0
	movl	-92(%rbp), %eax	# frm, tmp139
	movl	%eax, -52(%rbp)	# tmp139, ef
	.loc 1 726 0
	movq	-88(%rbp), %rax	# vh, tmp140
	movq	8(%rax), %rax	# vh_12(D)->frame_start, D.6952
	movl	-56(%rbp), %edx	# sf, tmp141
	movslq	%edx, %rdx	# tmp141, D.6953
	addq	$1, %rdx	#, D.6953
	salq	$2, %rdx	#, D.6953
	addq	%rdx, %rax	# D.6953, D.6952
	movl	(%rax), %edx	# *_17, D.6954
	movq	-88(%rbp), %rax	# vh, tmp142
	movq	8(%rax), %rax	# vh_12(D)->frame_start, D.6952
	movl	-56(%rbp), %ecx	# sf, tmp143
	movslq	%ecx, %rcx	# tmp143, D.6955
	salq	$2, %rcx	#, D.6955
	addq	%rcx, %rax	# D.6955, D.6952
	movl	(%rax), %eax	# *_22, D.6954
	.loc 1 725 0
	movl	%edx, %ecx	# D.6954, D.6954
	subl	%eax, %ecx	# D.6954, D.6954
	movl	-92(%rbp), %edx	# frm, tmp144
	movq	-112(%rbp), %rax	# fp, tmp145
	movl	$.LC7, %esi	#,
	movq	%rax, %rdi	# tmp145,
	movl	$0, %eax	#,
	call	fprintf	#
	jmp	.L97	#
.L96:
	.loc 1 728 0
	movl	$0, -56(%rbp)	#, sf
	.loc 1 729 0
	movq	-88(%rbp), %rax	# vh, tmp146
	movl	20(%rax), %eax	# vh_12(D)->n_frm, D.6954
	subl	$1, %eax	#, tmp147
	movl	%eax, -52(%rbp)	# tmp147, ef
	.loc 1 731 0
	movq	-88(%rbp), %rax	# vh, tmp148
	movl	16(%rax), %ecx	# vh_12(D)->n_entry, D.6954
	movq	-88(%rbp), %rax	# vh, tmp149
	movl	20(%rax), %edx	# vh_12(D)->n_frm, D.6954
	movq	-112(%rbp), %rax	# fp, tmp150
	movl	$.LC8, %esi	#,
	movq	%rax, %rdi	# tmp150,
	movl	$0, %eax	#,
	call	fprintf	#
.L97:
	.loc 1 733 0
	movq	-112(%rbp), %rax	# fp, tmp151
	movq	$.LC14, 24(%rsp)	#,
	movq	$.LC15, 16(%rsp)	#,
	movq	$.LC16, 8(%rsp)	#,
	movq	$.LC17, (%rsp)	#,
	movl	$.LC9, %r9d	#,
	movl	$.LC10, %r8d	#,
	movl	$.LC11, %ecx	#,
	movl	$.LC12, %edx	#,
	movl	$.LC13, %esi	#,
	movq	%rax, %rdi	# tmp151,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 736 0
	movl	-56(%rbp), %eax	# sf, tmp152
	movl	%eax, -64(%rbp)	# tmp152, i
	jmp	.L98	#
.L105:
	.loc 1 737 0
	movq	-88(%rbp), %rax	# vh, tmp153
	movq	40(%rax), %rax	# vh_12(D)->bestvh, D.6952
	movl	-64(%rbp), %edx	# i, tmp154
	movslq	%edx, %rdx	# tmp154, D.6955
	salq	$2, %rdx	#, D.6955
	addq	%rdx, %rax	# D.6955, D.6952
	movl	(%rax), %esi	# *_35, D.6954
	movq	-88(%rbp), %rax	# vh, tmp155
	movq	32(%rax), %rax	# vh_12(D)->bestscore, D.6952
	movl	-64(%rbp), %edx	# i, tmp156
	movslq	%edx, %rdx	# tmp156, D.6955
	salq	$2, %rdx	#, D.6955
	addq	%rdx, %rax	# D.6955, D.6952
	movl	(%rax), %ecx	# *_40, D.6954
	movl	-64(%rbp), %edx	# i, tmp157
	movq	-112(%rbp), %rax	# fp, tmp158
	movl	%esi, %r8d	# D.6954,
	movl	$.LC18, %esi	#,
	movq	%rax, %rdi	# tmp158,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 739 0
	movq	-88(%rbp), %rax	# vh, tmp159
	movq	8(%rax), %rax	# vh_12(D)->frame_start, D.6952
	movl	-64(%rbp), %edx	# i, tmp160
	movslq	%edx, %rdx	# tmp160, D.6955
	salq	$2, %rdx	#, D.6955
	addq	%rdx, %rax	# D.6955, D.6952
	movl	(%rax), %eax	# *_45, tmp161
	movl	%eax, -60(%rbp)	# tmp161, j
	jmp	.L99	#
.L103:
	.loc 1 741 0
	movl	-60(%rbp), %eax	# j, tmp165
	sarl	$14, %eax	#, tmp164
	movl	%eax, -48(%rbp)	# tmp164, b
	.loc 1 742 0
	movl	-60(%rbp), %eax	# j, tmp169
	andl	$16383, %eax	#, tmp168
	movl	%eax, -44(%rbp)	# tmp168, l
	.loc 1 743 0
	movq	-88(%rbp), %rax	# vh, tmp170
	movq	(%rax), %rax	# vh_12(D)->entry, D.6956
	movl	-48(%rbp), %edx	# b, tmp171
	movslq	%edx, %rdx	# tmp171, D.6955
	salq	$3, %rdx	#, D.6955
	addq	%rdx, %rax	# D.6955, D.6956
	movq	(%rax), %rcx	# *_58, D.6957
	movl	-44(%rbp), %eax	# l, tmp172
	movslq	%eax, %rdx	# tmp172, D.6955
	movq	%rdx, %rax	# D.6955, tmp173
	salq	$3, %rax	#, tmp173
	addq	%rdx, %rax	# D.6955, tmp173
	salq	$2, %rax	#, tmp174
	addq	%rcx, %rax	# D.6957, tmp175
	movq	%rax, -24(%rbp)	# tmp175, ve
	.loc 1 748 0
	movq	-40(%rbp), %rax	# dict, tmp176
	movq	32(%rax), %rcx	# dict_7->word, D.6958
	movq	-24(%rbp), %rax	# ve, tmp177
	movl	(%rax), %eax	# ve_62->wid, D.6954
	movslq	%eax, %rdx	# D.6954, D.6955
	movq	%rdx, %rax	# D.6955, tmp178
	salq	$2, %rax	#, tmp178
	addq	%rdx, %rax	# D.6955, tmp178
	salq	$3, %rax	#, tmp179
	addq	%rcx, %rax	# D.6958, D.6958
	.loc 1 745 0
	movq	(%rax), %r11	# _67->word, D.6959
	movq	-24(%rbp), %rax	# ve, tmp180
	movl	24(%rax), %r10d	# ve_62->type, D.6954
	movq	-24(%rbp), %rax	# ve, tmp181
	movl	20(%rax), %r9d	# ve_62->pred, D.6954
	movq	-24(%rbp), %rax	# ve, tmp182
	movl	12(%rax), %r8d	# ve_62->lscr, D.6954
	movq	-24(%rbp), %rax	# ve, tmp183
	movl	8(%rax), %esi	# ve_62->ascr, D.6954
	movq	-24(%rbp), %rax	# ve, tmp184
	movl	16(%rax), %ecx	# ve_62->score, D.6954
	.loc 1 747 0
	movq	-24(%rbp), %rax	# ve, tmp185
	movzwl	6(%rax), %eax	# ve_62->ef, D.6960
	.loc 1 745 0
	movswl	%ax, %r12d	# D.6960, D.6954
	.loc 1 747 0
	movq	-24(%rbp), %rax	# ve, tmp186
	movzwl	4(%rax), %eax	# ve_62->sf, D.6960
	.loc 1 745 0
	movswl	%ax, %ebx	# D.6960, D.6954
	.loc 1 746 0
	movq	-24(%rbp), %rax	# ve, tmp187
	movl	28(%rax), %eax	# ve_62->valid, D.6954
	.loc 1 745 0
	testl	%eax, %eax	# D.6954
	je	.L100	#,
	.loc 1 745 0 is_stmt 0 discriminator 1
	movl	$32, %eax	#, iftmp.23
	jmp	.L101	#
.L100:
	.loc 1 745 0 discriminator 2
	movl	$42, %eax	#, iftmp.23
.L101:
	.loc 1 745 0 discriminator 3
	movl	-60(%rbp), %edx	# j, tmp188
	movq	-112(%rbp), %rdi	# fp, tmp189
	movq	%r11, 40(%rsp)	# D.6959,
	movl	%r10d, 32(%rsp)	# D.6954,
	movl	%r9d, 24(%rsp)	# D.6954,
	movl	%r8d, 16(%rsp)	# D.6954,
	movl	%esi, 8(%rsp)	# D.6954,
	movl	%ecx, (%rsp)	# D.6954,
	movl	%r12d, %r9d	# D.6954,
	movl	%ebx, %r8d	# D.6954,
	movl	%edx, %ecx	# tmp188,
	movl	%eax, %edx	# iftmp.23,
	movl	$.LC19, %esi	#,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 750 0 is_stmt 1 discriminator 3
	movq	-32(%rbp), %rax	# lm, tmp190
	movq	16(%rax), %rdx	# lm_8->wordstr, D.6961
	movq	-24(%rbp), %rax	# ve, tmp191
	movzwl	32(%rax), %eax	# ve_62->lmstate.lm3g.lwid, D.6962
	movzwl	%ax, %eax	# D.6962, D.6955
	salq	$3, %rax	#, D.6955
	addq	%rdx, %rax	# D.6961, D.6961
	movq	(%rax), %rdx	# *_85, D.6959
	movq	-112(%rbp), %rax	# fp, tmp192
	movl	$.LC20, %esi	#,
	movq	%rax, %rdi	# tmp192,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 751 0 discriminator 3
	movq	-24(%rbp), %rax	# ve, tmp193
	movzwl	34(%rax), %eax	# ve_62->lmstate.lm3g.lwid, tmp194
	movw	%ax, -66(%rbp)	# tmp194, lwid
	.loc 1 752 0 discriminator 3
	cmpw	$-1, -66(%rbp)	#, lwid
	je	.L102	#,
	.loc 1 753 0
	movq	-32(%rbp), %rax	# lm, tmp195
	movq	16(%rax), %rax	# lm_8->wordstr, D.6961
	movzwl	-66(%rbp), %edx	# lwid, D.6955
	salq	$3, %rdx	#, D.6955
	addq	%rdx, %rax	# D.6955, D.6961
	movq	(%rax), %rdx	# *_91, D.6959
	movq	-112(%rbp), %rax	# fp, tmp196
	movl	$.LC21, %esi	#,
	movq	%rax, %rdi	# tmp196,
	movl	$0, %eax	#,
	call	fprintf	#
.L102:
	.loc 1 754 0
	movq	-112(%rbp), %rax	# fp, tmp197
	movq	%rax, %rcx	# tmp197,
	movl	$2, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC22, %edi	#,
	call	fwrite	#
	.loc 1 739 0
	addl	$1, -60(%rbp)	#, j
.L99:
	.loc 1 739 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# vh, tmp198
	movq	8(%rax), %rax	# vh_12(D)->frame_start, D.6952
	movl	-64(%rbp), %edx	# i, tmp199
	movslq	%edx, %rdx	# tmp199, D.6953
	addq	$1, %rdx	#, D.6953
	salq	$2, %rdx	#, D.6953
	addq	%rdx, %rax	# D.6953, D.6952
	movl	(%rax), %eax	# *_51, D.6954
	cmpl	-60(%rbp), %eax	# j, D.6954
	jg	.L103	#,
	.loc 1 757 0 is_stmt 1
	movq	-88(%rbp), %rax	# vh, tmp200
	movq	8(%rax), %rax	# vh_12(D)->frame_start, D.6952
	movl	-64(%rbp), %edx	# i, tmp201
	movslq	%edx, %rdx	# tmp201, D.6955
	salq	$2, %rdx	#, D.6955
	addq	%rdx, %rax	# D.6955, D.6952
	movl	(%rax), %eax	# *_97, D.6954
	cmpl	-60(%rbp), %eax	# j, D.6954
	jne	.L104	#,
	.loc 1 758 0
	movq	-112(%rbp), %rax	# fp, tmp202
	movq	%rax, %rsi	# tmp202,
	movl	$10, %edi	#,
	call	fputc	#
.L104:
	.loc 1 736 0
	addl	$1, -64(%rbp)	#, i
.L98:
	.loc 1 736 0 is_stmt 0 discriminator 1
	movl	-64(%rbp), %eax	# i, tmp203
	cmpl	-52(%rbp), %eax	# ef, tmp203
	jle	.L105	#,
	.loc 1 766 0 is_stmt 1
	movq	-112(%rbp), %rax	# fp, tmp204
	movq	%rax, %rcx	# tmp204,
	movl	$12, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC23, %edi	#,
	call	fwrite	#
	.loc 1 767 0
	movq	-112(%rbp), %rax	# fp, tmp205
	movq	%rax, %rdi	# tmp205,
	call	fflush	#
	.loc 1 768 0
	addq	$144, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	vithist_dump, .-vithist_dump
	.globl	vithist_backtrace
	.type	vithist_backtrace, @function
vithist_backtrace:
.LFB18:
	.loc 1 771 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# vh, vh
	movl	%esi, -44(%rbp)	# id, id
	.loc 1 777 0
	movq	$0, -24(%rbp)	#, hyp
	.loc 1 779 0
	jmp	.L107	#
.L108:
	.loc 1 780 0
	movl	-44(%rbp), %eax	# id, tmp79
	sarl	$14, %eax	#, tmp78
	movl	%eax, -32(%rbp)	# tmp78, b
	.loc 1 781 0
	movl	-44(%rbp), %eax	# id, tmp83
	andl	$16383, %eax	#, tmp82
	movl	%eax, -28(%rbp)	# tmp82, l
	.loc 1 782 0
	movq	-40(%rbp), %rax	# vh, tmp84
	movq	(%rax), %rax	# vh_7(D)->entry, D.6980
	movl	-32(%rbp), %edx	# b, tmp85
	movslq	%edx, %rdx	# tmp85, D.6981
	salq	$3, %rdx	#, D.6981
	addq	%rdx, %rax	# D.6981, D.6980
	movq	(%rax), %rcx	# *_11, D.6982
	movl	-28(%rbp), %eax	# l, tmp86
	movslq	%eax, %rdx	# tmp86, D.6981
	movq	%rdx, %rax	# D.6981, tmp87
	salq	$3, %rax	#, tmp87
	addq	%rdx, %rax	# D.6981, tmp87
	salq	$2, %rax	#, tmp88
	addq	%rcx, %rax	# D.6982, tmp89
	movq	%rax, -16(%rbp)	# tmp89, ve
	.loc 1 784 0
	movl	$784, %ecx	#,
	movl	$.LC1, %edx	#,
	movl	$28, %esi	#,
	movl	$1, %edi	#,
	call	__ckd_calloc__	#
	movq	%rax, -8(%rbp)	# tmp90, h
	.loc 1 785 0
	movq	-16(%rbp), %rax	# ve, tmp91
	movl	(%rax), %edx	# ve_15->wid, D.6983
	movq	-8(%rbp), %rax	# h, tmp92
	movl	%edx, (%rax)	# D.6983, h_16->id
	.loc 1 786 0
	movq	-16(%rbp), %rax	# ve, tmp93
	movzwl	4(%rax), %eax	# ve_15->sf, D.6984
	movswl	%ax, %edx	# D.6984, D.6983
	movq	-8(%rbp), %rax	# h, tmp94
	movl	%edx, 8(%rax)	# D.6983, h_16->sf
	.loc 1 787 0
	movq	-16(%rbp), %rax	# ve, tmp95
	movzwl	6(%rax), %eax	# ve_15->ef, D.6984
	movswl	%ax, %edx	# D.6984, D.6983
	movq	-8(%rbp), %rax	# h, tmp96
	movl	%edx, 12(%rax)	# D.6983, h_16->ef
	.loc 1 788 0
	movq	-16(%rbp), %rax	# ve, tmp97
	movl	8(%rax), %edx	# ve_15->ascr, D.6983
	movq	-8(%rbp), %rax	# h, tmp98
	movl	%edx, 16(%rax)	# D.6983, h_16->ascr
	.loc 1 789 0
	movq	-16(%rbp), %rax	# ve, tmp99
	movl	12(%rax), %edx	# ve_15->lscr, D.6983
	movq	-8(%rbp), %rax	# h, tmp100
	movl	%edx, 20(%rax)	# D.6983, h_16->lscr
	.loc 1 790 0
	movq	-16(%rbp), %rax	# ve, tmp101
	movl	24(%rax), %edx	# ve_15->type, D.6983
	movq	-8(%rbp), %rax	# h, tmp102
	movl	%edx, 24(%rax)	# D.6983, h_16->type
	.loc 1 791 0
	movq	-8(%rbp), %rax	# h, tmp103
	movl	-44(%rbp), %edx	# id, tmp104
	movl	%edx, 4(%rax)	# tmp104, h_16->vhid
	.loc 1 793 0
	movq	-8(%rbp), %rdx	# h, tmp105
	movq	-24(%rbp), %rax	# hyp, tmp106
	movq	%rdx, %rsi	# tmp105,
	movq	%rax, %rdi	# tmp106,
	call	glist_add_ptr	#
	movq	%rax, -24(%rbp)	# tmp107, hyp
	.loc 1 795 0
	movq	-16(%rbp), %rax	# ve, tmp108
	movl	20(%rax), %eax	# ve_15->pred, tmp109
	movl	%eax, -44(%rbp)	# tmp109, id
.L107:
	.loc 1 779 0 discriminator 1
	cmpl	$0, -44(%rbp)	#, id
	jg	.L108	#,
	.loc 1 798 0
	movq	-24(%rbp), %rax	# hyp, D.6985
	.loc 1 799 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	vithist_backtrace, .-vithist_backtrace
	.section	.rodata
	.align 8
.LC24:
	.string	"Nodes %d (NODEID WORD STARTFRAME FIRST-ENDFRAME LAST-ENDFRAME)\n"
.LC25:
	.string	"%d %s %d %d %d\n"
.LC26:
	.string	"#\n"
.LC27:
	.string	"Initial %d\nFinal %d\n"
	.align 8
.LC28:
	.string	"BestSegAscr 0 (NODEID ENDFRAME ASCORE)\n"
	.align 8
.LC29:
	.string	"Edges (FROM-NODEID TO-NODEID ASCORE)\n"
	.align 8
.LC30:
	.string	"Edges (FROM-NODEID ENDFRAME ASCORE)\n"
.LC31:
	.string	"%d %d %d\n"
.LC32:
	.string	"End\n"
	.text
	.globl	vithist_dag_write
	.type	vithist_dag_write, @function
vithist_dag_write:
.LFB19:
	.loc 1 814 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$152, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -120(%rbp)	# vh, vh
	movq	%rsi, -128(%rbp)	# hyp, hyp
	movq	%rdx, -136(%rbp)	# dict, dict
	movl	%ecx, -140(%rbp)	# oldfmt, oldfmt
	movq	%r8, -152(%rbp)	# fp, fp
	.loc 1 823 0
	movq	-120(%rbp), %rax	# vh, tmp165
	movl	20(%rax), %eax	# vh_35(D)->n_frm, D.6986
	addl	$1, %eax	#, D.6986
	cltq
	movl	$823, %ecx	#,
	movl	$.LC1, %edx	#,
	movl	$8, %esi	#,
	movq	%rax, %rdi	# D.6987,
	call	__ckd_calloc__	#
	movq	%rax, -48(%rbp)	# tmp166, sfwid
	.loc 1 825 0
	movl	$0, -100(%rbp)	#, n_node
	.loc 1 826 0
	movl	$0, -92(%rbp)	#, i
	jmp	.L111	#
.L128:
	.loc 1 827 0
	movq	-120(%rbp), %rax	# vh, tmp167
	movq	(%rax), %rax	# vh_35(D)->entry, D.6988
	movl	-92(%rbp), %edx	# i, tmp168
	sarl	$14, %edx	#, D.6986
	movslq	%edx, %rdx	# D.6986, D.6987
	salq	$3, %rdx	#, D.6987
	addq	%rdx, %rax	# D.6987, D.6988
	movq	(%rax), %rcx	# *_49, D.6989
	movl	-92(%rbp), %eax	# i, tmp169
	cltq
	andl	$16383, %eax	#, D.6987
	movq	%rax, %rdx	# D.6987, D.6987
	movq	%rdx, %rax	# D.6987, tmp170
	salq	$3, %rax	#, tmp170
	addq	%rdx, %rax	# D.6987, tmp170
	salq	$2, %rax	#, tmp171
	addq	%rcx, %rax	# D.6989, tmp172
	movq	%rax, -40(%rbp)	# tmp172, ve
	.loc 1 828 0
	movq	-40(%rbp), %rax	# ve, tmp173
	movl	28(%rax), %eax	# ve_54->valid, D.6986
	testl	%eax, %eax	# D.6986
	jne	.L112	#,
	.loc 1 829 0
	jmp	.L113	#
.L112:
	.loc 1 837 0
	movq	-40(%rbp), %rax	# ve, tmp174
	movzwl	4(%rax), %eax	# ve_54->sf, D.6990
	testw	%ax, %ax	# D.6990
	jg	.L114	#,
	.loc 1 841 0
	movq	-40(%rbp), %rax	# ve, tmp175
	movzwl	4(%rax), %eax	# ve_54->sf, D.6990
	cwtl
	addl	$1, %eax	#, tmp176
	movl	%eax, -108(%rbp)	# tmp176, sf
	.loc 1 842 0
	movq	-40(%rbp), %rax	# ve, tmp177
	movzwl	6(%rax), %eax	# ve_54->ef, D.6990
	movl	$0, %edx	#, tmp178
	testw	%ax, %ax	# D.6990
	cmovs	%edx, %eax	# D.6990,, tmp178, D.6990
	cwtl
	movl	%eax, -104(%rbp)	# tmp179, ef
	jmp	.L115	#
.L114:
	.loc 1 844 0
	movq	-40(%rbp), %rax	# ve, tmp180
	movzwl	4(%rax), %eax	# ve_54->sf, D.6990
	cwtl
	movl	%eax, -108(%rbp)	# tmp181, sf
	.loc 1 845 0
	movq	-40(%rbp), %rax	# ve, tmp182
	movzwl	6(%rax), %eax	# ve_54->ef, D.6990
	cwtl
	movl	%eax, -104(%rbp)	# tmp183, ef
.L115:
	.loc 1 848 0
	movl	-108(%rbp), %eax	# sf, tmp184
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6987
	movq	-48(%rbp), %rax	# sfwid, tmp185
	addq	%rdx, %rax	# D.6987, D.6991
	movq	(%rax), %rax	# *_69, tmp186
	movq	%rax, -80(%rbp)	# tmp186, gn
	jmp	.L116	#
.L119:
	.loc 1 849 0
	movq	-80(%rbp), %rax	# gn, tmp187
	movq	(%rax), %rax	# gn_5->data.ptr, tmp188
	movq	%rax, -56(%rbp)	# tmp188, dn
	.loc 1 850 0
	movq	-56(%rbp), %rax	# dn, tmp189
	movl	(%rax), %edx	# dn_71->wid, D.6986
	movq	-40(%rbp), %rax	# ve, tmp190
	movl	(%rax), %eax	# ve_54->wid, D.6986
	cmpl	%eax, %edx	# D.6986, D.6986
	jne	.L117	#,
	.loc 1 851 0
	jmp	.L118	#
.L117:
	.loc 1 848 0
	movq	-80(%rbp), %rax	# gn, tmp191
	movq	8(%rax), %rax	# gn_5->next, tmp192
	movq	%rax, -80(%rbp)	# tmp192, gn
.L116:
	.loc 1 848 0 is_stmt 0 discriminator 1
	cmpq	$0, -80(%rbp)	#, gn
	jne	.L119	#,
.L118:
	.loc 1 853 0 is_stmt 1
	cmpq	$0, -80(%rbp)	#, gn
	jne	.L120	#,
	.loc 1 854 0
	movl	$854, %ecx	#,
	movl	$.LC1, %edx	#,
	movl	$24, %esi	#,
	movl	$1, %edi	#,
	call	__ckd_calloc__	#
	movq	%rax, -56(%rbp)	# tmp193, dn
	.loc 1 855 0
	movq	-40(%rbp), %rax	# ve, tmp194
	movl	(%rax), %edx	# ve_54->wid, D.6986
	movq	-56(%rbp), %rax	# dn, tmp195
	movl	%edx, (%rax)	# D.6986, dn_75->wid
	.loc 1 856 0
	movq	-56(%rbp), %rax	# dn, tmp196
	movl	-104(%rbp), %edx	# ef, tmp197
	movl	%edx, 4(%rax)	# tmp197, dn_75->fef
	.loc 1 857 0
	movq	-56(%rbp), %rax	# dn, tmp198
	movl	-104(%rbp), %edx	# ef, tmp199
	movl	%edx, 8(%rax)	# tmp199, dn_75->lef
	.loc 1 858 0
	movq	-56(%rbp), %rax	# dn, tmp200
	movl	$-1, 12(%rax)	#, dn_75->seqid
	.loc 1 859 0
	movq	-56(%rbp), %rax	# dn, tmp201
	movq	$0, 16(%rax)	#, dn_75->velist
	.loc 1 860 0
	addl	$1, -100(%rbp)	#, n_node
	.loc 1 862 0
	movl	-108(%rbp), %eax	# sf, tmp202
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6987
	movq	-48(%rbp), %rax	# sfwid, tmp203
	leaq	(%rdx,%rax), %rbx	#, D.6991
	movl	-108(%rbp), %eax	# sf, tmp204
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6987
	movq	-48(%rbp), %rax	# sfwid, tmp205
	addq	%rdx, %rax	# D.6987, D.6991
	movq	(%rax), %rax	# *_83, D.6992
	movq	-56(%rbp), %rdx	# dn, tmp206
	movq	%rdx, %rsi	# tmp206,
	movq	%rax, %rdi	# D.6992,
	call	glist_add_ptr	#
	movq	%rax, (%rbx)	# D.6992, *_80
	jmp	.L121	#
.L120:
	.loc 1 864 0
	movq	-56(%rbp), %rax	# dn, tmp207
	movl	-104(%rbp), %edx	# ef, tmp208
	movl	%edx, 8(%rax)	# tmp208, dn_17->lef
.L121:
	.loc 1 871 0
	movq	-56(%rbp), %rax	# dn, tmp209
	movq	16(%rax), %rax	# dn_18->velist, tmp210
	movq	%rax, -80(%rbp)	# tmp210, gn
	jmp	.L122	#
.L125:
	.loc 1 872 0
	movq	-80(%rbp), %rax	# gn, tmp211
	movq	(%rax), %rax	# gn_6->data.ptr, tmp212
	movq	%rax, -88(%rbp)	# tmp212, ve2
	.loc 1 873 0
	movq	-88(%rbp), %rax	# ve2, tmp213
	movzwl	6(%rax), %edx	# ve2_87->ef, D.6990
	movq	-40(%rbp), %rax	# ve, tmp214
	movzwl	6(%rax), %eax	# ve_54->ef, D.6990
	cmpw	%ax, %dx	# D.6990, D.6990
	jne	.L123	#,
	.loc 1 874 0
	jmp	.L124	#
.L123:
	.loc 1 871 0
	movq	-80(%rbp), %rax	# gn, tmp215
	movq	8(%rax), %rax	# gn_6->next, tmp216
	movq	%rax, -80(%rbp)	# tmp216, gn
.L122:
	.loc 1 871 0 is_stmt 0 discriminator 1
	cmpq	$0, -80(%rbp)	#, gn
	jne	.L125	#,
.L124:
	.loc 1 876 0 is_stmt 1
	cmpq	$0, -80(%rbp)	#, gn
	je	.L126	#,
	.loc 1 877 0
	movq	-40(%rbp), %rax	# ve, tmp217
	movl	16(%rax), %edx	# ve_54->score, D.6986
	movq	-88(%rbp), %rax	# ve2, tmp218
	movl	16(%rax), %eax	# ve2_2->score, D.6986
	cmpl	%eax, %edx	# D.6986, D.6986
	jle	.L113	#,
	.loc 1 878 0
	movq	-80(%rbp), %rax	# gn, tmp219
	movq	-40(%rbp), %rdx	# ve, tmp220
	movq	%rdx, (%rax)	# tmp220, gn_6->data.ptr
	jmp	.L113	#
.L126:
	.loc 1 880 0
	movq	-56(%rbp), %rax	# dn, tmp221
	movq	16(%rax), %rax	# dn_18->velist, D.6992
	movq	-40(%rbp), %rdx	# ve, tmp222
	movq	%rdx, %rsi	# tmp222,
	movq	%rax, %rdi	# D.6992,
	call	glist_add_ptr	#
	movq	-56(%rbp), %rdx	# dn, tmp223
	movq	%rax, 16(%rdx)	# D.6992, dn_18->velist
.L113:
	.loc 1 826 0
	addl	$1, -92(%rbp)	#, i
.L111:
	.loc 1 826 0 is_stmt 0 discriminator 1
	movq	-120(%rbp), %rax	# vh, tmp224
	movl	16(%rax), %eax	# vh_35(D)->n_entry, D.6986
	cmpl	-92(%rbp), %eax	# i, D.6986
	jg	.L128	#,
	.loc 1 887 0 is_stmt 1
	movq	-128(%rbp), %rax	# hyp, tmp225
	movq	%rax, -80(%rbp)	# tmp225, gn
	jmp	.L129	#
.L133:
	.loc 1 888 0
	movq	-80(%rbp), %rax	# gn, tmp226
	movq	(%rax), %rax	# gn_7->data.ptr, tmp227
	movq	%rax, -32(%rbp)	# tmp227, h
	.loc 1 889 0
	movq	-32(%rbp), %rax	# h, tmp228
	movl	8(%rax), %eax	# h_98->sf, D.6986
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6987
	movq	-48(%rbp), %rax	# sfwid, tmp229
	addq	%rdx, %rax	# D.6987, D.6991
	movq	(%rax), %rax	# *_102, tmp230
	movq	%rax, -72(%rbp)	# tmp230, gn2
	jmp	.L130	#
.L132:
	.loc 1 890 0
	movq	-72(%rbp), %rax	# gn2, tmp231
	movq	(%rax), %rax	# gn2_12->data.ptr, tmp232
	movq	%rax, -56(%rbp)	# tmp232, dn
	.loc 1 891 0
	movq	-32(%rbp), %rax	# h, tmp233
	movl	(%rax), %edx	# h_98->id, D.6986
	movq	-56(%rbp), %rax	# dn, tmp234
	movl	(%rax), %eax	# dn_104->wid, D.6986
	cmpl	%eax, %edx	# D.6986, D.6986
	jne	.L131	#,
	.loc 1 892 0
	movq	-56(%rbp), %rax	# dn, tmp235
	movl	$0, 12(%rax)	#, dn_104->seqid
.L131:
	.loc 1 889 0
	movq	-72(%rbp), %rax	# gn2, tmp236
	movq	8(%rax), %rax	# gn2_12->next, tmp237
	movq	%rax, -72(%rbp)	# tmp237, gn2
.L130:
	.loc 1 889 0 is_stmt 0 discriminator 1
	cmpq	$0, -72(%rbp)	#, gn2
	jne	.L132	#,
	.loc 1 887 0 is_stmt 1
	movq	-80(%rbp), %rax	# gn, tmp238
	movq	8(%rax), %rax	# gn_7->next, tmp239
	movq	%rax, -80(%rbp)	# tmp239, gn
.L129:
	.loc 1 887 0 is_stmt 0 discriminator 1
	cmpq	$0, -80(%rbp)	#, gn
	jne	.L133	#,
	.loc 1 897 0 is_stmt 1
	movq	-48(%rbp), %rax	# sfwid, tmp240
	movq	(%rax), %rax	# *sfwid_39, D.6992
	movq	(%rax), %rax	# _109->data.ptr, tmp241
	movq	%rax, -56(%rbp)	# tmp241, dn
	.loc 1 899 0
	movq	-56(%rbp), %rax	# dn, tmp242
	movl	$0, 12(%rax)	#, dn_110->seqid
	.loc 1 900 0
	movq	-120(%rbp), %rax	# vh, tmp243
	movl	20(%rax), %eax	# vh_35(D)->n_frm, D.6986
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6987
	movq	-48(%rbp), %rax	# sfwid, tmp244
	addq	%rdx, %rax	# D.6987, D.6991
	movq	(%rax), %rax	# *_114, D.6992
	movq	(%rax), %rax	# _115->data.ptr, tmp245
	movq	%rax, -56(%rbp)	# tmp245, dn
	.loc 1 902 0
	movq	-56(%rbp), %rax	# dn, tmp246
	movl	$0, 12(%rax)	#, dn_116->seqid
	.loc 1 905 0
	movl	$0, -92(%rbp)	#, i
	.loc 1 906 0
	movq	-120(%rbp), %rax	# vh, tmp247
	movl	20(%rax), %eax	# vh_35(D)->n_frm, tmp248
	movl	%eax, -96(%rbp)	# tmp248, f
	jmp	.L134	#
.L140:
	.loc 1 907 0
	movl	-96(%rbp), %eax	# f, tmp249
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6987
	movq	-48(%rbp), %rax	# sfwid, tmp250
	addq	%rdx, %rax	# D.6987, D.6991
	movq	(%rax), %rax	# *_121, tmp251
	movq	%rax, -80(%rbp)	# tmp251, gn
	jmp	.L135	#
.L139:
	.loc 1 908 0
	movq	-80(%rbp), %rax	# gn, tmp252
	movq	(%rax), %rax	# gn_8->data.ptr, tmp253
	movq	%rax, -56(%rbp)	# tmp253, dn
	.loc 1 909 0
	movq	-56(%rbp), %rax	# dn, tmp254
	movl	8(%rax), %edx	# dn_123->lef, D.6986
	movq	-56(%rbp), %rax	# dn, tmp255
	movl	4(%rax), %eax	# dn_123->fef, D.6986
	cmpl	%eax, %edx	# D.6986, D.6986
	jg	.L136	#,
	.loc 1 909 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# dn, tmp256
	movl	12(%rax), %eax	# dn_123->seqid, D.6986
	testl	%eax, %eax	# D.6986
	js	.L137	#,
.L136:
	.loc 1 910 0 is_stmt 1
	movl	-92(%rbp), %eax	# i, i.24
	leal	1(%rax), %edx	#, tmp257
	movl	%edx, -92(%rbp)	# tmp257, i
	movq	-56(%rbp), %rdx	# dn, tmp258
	movl	%eax, 12(%rdx)	# i.24, dn_123->seqid
	jmp	.L138	#
.L137:
	.loc 1 912 0
	movq	-56(%rbp), %rax	# dn, tmp259
	movl	$-1, 12(%rax)	#, dn_123->seqid
.L138:
	.loc 1 907 0
	movq	-80(%rbp), %rax	# gn, tmp260
	movq	8(%rax), %rax	# gn_8->next, tmp261
	movq	%rax, -80(%rbp)	# tmp261, gn
.L135:
	.loc 1 907 0 is_stmt 0 discriminator 1
	cmpq	$0, -80(%rbp)	#, gn
	jne	.L139	#,
	.loc 1 906 0 is_stmt 1
	subl	$1, -96(%rbp)	#, f
.L134:
	.loc 1 906 0 is_stmt 0 discriminator 1
	cmpl	$0, -96(%rbp)	#, f
	jns	.L140	#,
	.loc 1 915 0 is_stmt 1
	movl	-92(%rbp), %eax	# i, tmp262
	movl	%eax, -100(%rbp)	# tmp262, n_node
	.loc 1 918 0
	movl	-100(%rbp), %edx	# n_node, tmp263
	movq	-152(%rbp), %rax	# fp, tmp264
	movl	$.LC24, %esi	#,
	movq	%rax, %rdi	# tmp264,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 919 0
	movq	-120(%rbp), %rax	# vh, tmp265
	movl	20(%rax), %eax	# vh_35(D)->n_frm, tmp266
	movl	%eax, -96(%rbp)	# tmp266, f
	jmp	.L141	#
.L145:
	.loc 1 920 0
	movl	-96(%rbp), %eax	# f, tmp267
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6987
	movq	-48(%rbp), %rax	# sfwid, tmp268
	addq	%rdx, %rax	# D.6987, D.6991
	movq	(%rax), %rax	# *_136, tmp269
	movq	%rax, -80(%rbp)	# tmp269, gn
	jmp	.L142	#
.L144:
	.loc 1 921 0
	movq	-80(%rbp), %rax	# gn, tmp270
	movq	(%rax), %rax	# gn_9->data.ptr, tmp271
	movq	%rax, -56(%rbp)	# tmp271, dn
	.loc 1 922 0
	movq	-56(%rbp), %rax	# dn, tmp272
	movl	12(%rax), %eax	# dn_138->seqid, D.6986
	testl	%eax, %eax	# D.6986
	js	.L143	#,
	.loc 1 923 0
	movq	-56(%rbp), %rax	# dn, tmp273
	movl	8(%rax), %esi	# dn_138->lef, D.6986
	movq	-56(%rbp), %rax	# dn, tmp274
	movl	4(%rax), %r8d	# dn_138->fef, D.6986
	.loc 1 924 0
	movq	-136(%rbp), %rax	# dict, tmp275
	movq	32(%rax), %rcx	# dict_142(D)->word, D.6993
	movq	-56(%rbp), %rax	# dn, tmp276
	movl	(%rax), %eax	# dn_138->wid, D.6986
	movslq	%eax, %rdx	# D.6986, D.6987
	movq	%rdx, %rax	# D.6987, tmp277
	salq	$2, %rax	#, tmp277
	addq	%rdx, %rax	# D.6987, tmp277
	salq	$3, %rax	#, tmp278
	addq	%rcx, %rax	# D.6993, D.6993
	.loc 1 923 0
	movq	(%rax), %rcx	# _147->word, D.6994
	movq	-56(%rbp), %rax	# dn, tmp279
	movl	12(%rax), %edx	# dn_138->seqid, D.6986
	movl	-96(%rbp), %edi	# f, tmp280
	movq	-152(%rbp), %rax	# fp, tmp281
	movl	%esi, (%rsp)	# D.6986,
	movl	%r8d, %r9d	# D.6986,
	movl	%edi, %r8d	# tmp280,
	movl	$.LC25, %esi	#,
	movq	%rax, %rdi	# tmp281,
	movl	$0, %eax	#,
	call	fprintf	#
.L143:
	.loc 1 920 0
	movq	-80(%rbp), %rax	# gn, tmp282
	movq	8(%rax), %rax	# gn_9->next, tmp283
	movq	%rax, -80(%rbp)	# tmp283, gn
.L142:
	.loc 1 920 0 is_stmt 0 discriminator 1
	cmpq	$0, -80(%rbp)	#, gn
	jne	.L144	#,
	.loc 1 919 0 is_stmt 1
	subl	$1, -96(%rbp)	#, f
.L141:
	.loc 1 919 0 is_stmt 0 discriminator 1
	cmpl	$0, -96(%rbp)	#, f
	jns	.L145	#,
	.loc 1 928 0 is_stmt 1
	movq	-152(%rbp), %rax	# fp, tmp284
	movq	%rax, %rcx	# tmp284,
	movl	$2, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC26, %edi	#,
	call	fwrite	#
	.loc 1 930 0
	movl	-100(%rbp), %eax	# n_node, tmp285
	leal	-1(%rax), %edx	#, D.6986
	movq	-152(%rbp), %rax	# fp, tmp286
	movl	$0, %ecx	#,
	movl	$.LC27, %esi	#,
	movq	%rax, %rdi	# tmp286,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 931 0
	movq	-152(%rbp), %rax	# fp, tmp287
	movq	%rax, %rcx	# tmp287,
	movl	$2, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC26, %edi	#,
	call	fwrite	#
	.loc 1 933 0
	movq	-152(%rbp), %rax	# fp, tmp288
	movq	%rax, %rcx	# tmp288,
	movl	$39, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC28, %edi	#,
	call	fwrite	#
	.loc 1 934 0
	movq	-152(%rbp), %rax	# fp, tmp289
	movq	%rax, %rcx	# tmp289,
	movl	$2, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC26, %edi	#,
	call	fwrite	#
	.loc 1 937 0
	cmpl	$0, -140(%rbp)	#, oldfmt
	je	.L146	#,
	.loc 1 938 0
	movq	-152(%rbp), %rax	# fp, tmp290
	movq	%rax, %rcx	# tmp290,
	movl	$37, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC29, %edi	#,
	call	fwrite	#
	jmp	.L147	#
.L146:
	.loc 1 940 0
	movq	-152(%rbp), %rax	# fp, tmp291
	movq	%rax, %rcx	# tmp291,
	movl	$36, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC30, %edi	#,
	call	fwrite	#
.L147:
	.loc 1 941 0
	movq	-120(%rbp), %rax	# vh, tmp292
	movl	20(%rax), %eax	# vh_35(D)->n_frm, D.6986
	subl	$1, %eax	#, tmp293
	movl	%eax, -96(%rbp)	# tmp293, f
	jmp	.L148	#
.L165:
	.loc 1 942 0
	movl	-96(%rbp), %eax	# f, tmp294
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6987
	movq	-48(%rbp), %rax	# sfwid, tmp295
	addq	%rdx, %rax	# D.6987, D.6991
	movq	(%rax), %rax	# *_158, tmp296
	movq	%rax, -80(%rbp)	# tmp296, gn
	jmp	.L149	#
.L164:
	.loc 1 943 0
	movq	-80(%rbp), %rax	# gn, tmp297
	movq	(%rax), %rax	# gn_10->data.ptr, tmp298
	movq	%rax, -56(%rbp)	# tmp298, dn
	.loc 1 945 0
	movq	-56(%rbp), %rax	# dn, tmp299
	movl	12(%rax), %eax	# dn_160->seqid, D.6986
	testl	%eax, %eax	# D.6986
	jns	.L150	#,
	.loc 1 946 0
	jmp	.L151	#
.L150:
	.loc 1 948 0
	movq	-56(%rbp), %rax	# dn, tmp300
	movq	16(%rax), %rax	# dn_160->velist, tmp301
	movq	%rax, -72(%rbp)	# tmp301, gn2
	jmp	.L152	#
.L163:
	.loc 1 949 0
	movq	-72(%rbp), %rax	# gn2, tmp302
	movq	(%rax), %rax	# gn2_13->data.ptr, tmp303
	movq	%rax, -40(%rbp)	# tmp303, ve
	.loc 1 951 0
	movq	-40(%rbp), %rax	# ve, tmp304
	movzwl	6(%rax), %eax	# ve_163->ef, D.6990
	testw	%ax, %ax	# D.6990
	js	.L153	#,
	.loc 1 951 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# ve, tmp305
	movzwl	6(%rax), %eax	# ve_163->ef, D.6990
	cwtl
	addl	$1, %eax	#, iftmp.25
	jmp	.L154	#
.L153:
	.loc 1 951 0 discriminator 2
	movl	$1, %eax	#, iftmp.25
.L154:
	.loc 1 951 0 discriminator 3
	movl	%eax, -108(%rbp)	# iftmp.25, sf
	.loc 1 953 0 is_stmt 1 discriminator 3
	cmpl	$0, -140(%rbp)	#, oldfmt
	je	.L155	#,
	.loc 1 954 0
	movl	-108(%rbp), %eax	# sf, tmp306
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6987
	movq	-48(%rbp), %rax	# sfwid, tmp307
	addq	%rdx, %rax	# D.6987, D.6991
	movq	(%rax), %rax	# *_172, tmp308
	movq	%rax, -64(%rbp)	# tmp308, gn3
	jmp	.L156	#
.L158:
	.loc 1 955 0
	movq	-64(%rbp), %rax	# gn3, tmp309
	movq	(%rax), %rax	# gn3_14->data.ptr, tmp310
	movq	%rax, -24(%rbp)	# tmp310, dn2
	.loc 1 956 0
	movq	-24(%rbp), %rax	# dn2, tmp311
	movl	12(%rax), %eax	# dn2_174->seqid, D.6986
	testl	%eax, %eax	# D.6986
	js	.L157	#,
	.loc 1 957 0
	movq	-40(%rbp), %rax	# ve, tmp312
	movl	8(%rax), %esi	# ve_163->ascr, D.6986
	movq	-24(%rbp), %rax	# dn2, tmp313
	movl	12(%rax), %ecx	# dn2_174->seqid, D.6986
	movq	-56(%rbp), %rax	# dn, tmp314
	movl	12(%rax), %edx	# dn_160->seqid, D.6986
	movq	-152(%rbp), %rax	# fp, tmp315
	movl	%esi, %r8d	# D.6986,
	movl	$.LC31, %esi	#,
	movq	%rax, %rdi	# tmp315,
	movl	$0, %eax	#,
	call	fprintf	#
.L157:
	.loc 1 954 0
	movq	-64(%rbp), %rax	# gn3, tmp316
	movq	8(%rax), %rax	# gn3_14->next, tmp317
	movq	%rax, -64(%rbp)	# tmp317, gn3
.L156:
	.loc 1 954 0 is_stmt 0 discriminator 1
	cmpq	$0, -64(%rbp)	#, gn3
	jne	.L158	#,
	jmp	.L159	#
.L155:
	.loc 1 960 0 is_stmt 1
	movl	-108(%rbp), %eax	# sf, tmp318
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6987
	movq	-48(%rbp), %rax	# sfwid, tmp319
	addq	%rdx, %rax	# D.6987, D.6991
	movq	(%rax), %rax	# *_182, tmp320
	movq	%rax, -64(%rbp)	# tmp320, gn3
	jmp	.L160	#
.L162:
	.loc 1 961 0
	movq	-64(%rbp), %rax	# gn3, tmp321
	movq	(%rax), %rax	# gn3_15->data.ptr, tmp322
	movq	%rax, -24(%rbp)	# tmp322, dn2
	.loc 1 962 0
	movq	-24(%rbp), %rax	# dn2, tmp323
	movl	12(%rax), %eax	# dn2_184->seqid, D.6986
	testl	%eax, %eax	# D.6986
	js	.L161	#,
	.loc 1 963 0
	movq	-40(%rbp), %rax	# ve, tmp324
	movl	8(%rax), %esi	# ve_163->ascr, D.6986
	movl	-108(%rbp), %eax	# sf, tmp325
	leal	-1(%rax), %ecx	#, D.6986
	movq	-56(%rbp), %rax	# dn, tmp326
	movl	12(%rax), %edx	# dn_160->seqid, D.6986
	movq	-152(%rbp), %rax	# fp, tmp327
	movl	%esi, %r8d	# D.6986,
	movl	$.LC31, %esi	#,
	movq	%rax, %rdi	# tmp327,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 964 0
	jmp	.L159	#
.L161:
	.loc 1 960 0
	movq	-64(%rbp), %rax	# gn3, tmp328
	movq	8(%rax), %rax	# gn3_15->next, tmp329
	movq	%rax, -64(%rbp)	# tmp329, gn3
.L160:
	.loc 1 960 0 is_stmt 0 discriminator 1
	cmpq	$0, -64(%rbp)	#, gn3
	jne	.L162	#,
.L159:
	.loc 1 948 0 is_stmt 1
	movq	-72(%rbp), %rax	# gn2, tmp330
	movq	8(%rax), %rax	# gn2_13->next, tmp331
	movq	%rax, -72(%rbp)	# tmp331, gn2
.L152:
	.loc 1 948 0 is_stmt 0 discriminator 1
	cmpq	$0, -72(%rbp)	#, gn2
	jne	.L163	#,
.L151:
	.loc 1 942 0 is_stmt 1
	movq	-80(%rbp), %rax	# gn, tmp332
	movq	8(%rax), %rax	# gn_10->next, tmp333
	movq	%rax, -80(%rbp)	# tmp333, gn
.L149:
	.loc 1 942 0 is_stmt 0 discriminator 1
	cmpq	$0, -80(%rbp)	#, gn
	jne	.L164	#,
	.loc 1 941 0 is_stmt 1
	subl	$1, -96(%rbp)	#, f
.L148:
	.loc 1 941 0 is_stmt 0 discriminator 1
	cmpl	$0, -96(%rbp)	#, f
	jns	.L165	#,
	.loc 1 971 0 is_stmt 1
	movq	-152(%rbp), %rax	# fp, tmp334
	movq	%rax, %rcx	# tmp334,
	movl	$4, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC32, %edi	#,
	call	fwrite	#
	.loc 1 974 0
	movl	$0, -96(%rbp)	#, f
	jmp	.L166	#
.L169:
	.loc 1 975 0
	movl	-96(%rbp), %eax	# f, tmp335
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6987
	movq	-48(%rbp), %rax	# sfwid, tmp336
	addq	%rdx, %rax	# D.6987, D.6991
	movq	(%rax), %rax	# *_197, tmp337
	movq	%rax, -80(%rbp)	# tmp337, gn
	jmp	.L167	#
.L168:
	.loc 1 976 0 discriminator 2
	movq	-80(%rbp), %rax	# gn, tmp338
	movq	(%rax), %rax	# gn_11->data.ptr, tmp339
	movq	%rax, -56(%rbp)	# tmp339, dn
	.loc 1 978 0 discriminator 2
	movq	-56(%rbp), %rax	# dn, tmp340
	movq	16(%rax), %rax	# dn_199->velist, D.6992
	movq	%rax, %rdi	# D.6992,
	call	glist_free	#
	.loc 1 979 0 discriminator 2
	movq	-56(%rbp), %rax	# dn, tmp341
	movq	%rax, %rdi	# tmp341,
	call	ckd_free	#
	.loc 1 975 0 discriminator 2
	movq	-80(%rbp), %rax	# gn, tmp342
	movq	8(%rax), %rax	# gn_11->next, tmp343
	movq	%rax, -80(%rbp)	# tmp343, gn
.L167:
	.loc 1 975 0 is_stmt 0 discriminator 1
	cmpq	$0, -80(%rbp)	#, gn
	jne	.L168	#,
	.loc 1 982 0 is_stmt 1
	movl	-96(%rbp), %eax	# f, tmp344
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6987
	movq	-48(%rbp), %rax	# sfwid, tmp345
	addq	%rdx, %rax	# D.6987, D.6991
	movq	(%rax), %rax	# *_204, D.6992
	movq	%rax, %rdi	# D.6992,
	call	glist_free	#
	.loc 1 974 0
	addl	$1, -96(%rbp)	#, f
.L166:
	.loc 1 974 0 is_stmt 0 discriminator 1
	movq	-120(%rbp), %rax	# vh, tmp346
	movl	20(%rax), %eax	# vh_35(D)->n_frm, D.6986
	cmpl	-96(%rbp), %eax	# f, D.6986
	jge	.L169	#,
	.loc 1 984 0 is_stmt 1
	movq	-48(%rbp), %rax	# sfwid, tmp347
	movq	%rax, %rdi	# tmp347,
	call	ckd_free	#
	.loc 1 985 0
	addq	$152, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	vithist_dag_write, .-vithist_dag_write
	.globl	vithist_free
	.type	vithist_free, @function
vithist_free:
.LFB20:
	.loc 1 991 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# v, v
	.loc 1 992 0
	cmpq	$0, -8(%rbp)	#, v
	je	.L170	#,
	.loc 1 993 0
	movq	-8(%rbp), %rax	# v, tmp59
	movq	%rax, %rdi	# tmp59,
	call	ckd_free	#
.L170:
	.loc 1 996 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	vithist_free, .-vithist_free
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/include/stdio.h"
	.file 5 "/usr/include/libio.h"
	.file 6 "./libutil/prim_type.h"
	.file 7 "./libutil/glist.h"
	.file 8 "./libutil/hash.h"
	.file 9 "./libutil/heap.h"
	.file 10 "s3types.h"
	.file 11 "feat.h"
	.file 12 "cont_mgau.h"
	.file 13 "mdef.h"
	.file 14 "dict.h"
	.file 15 "dict2pid.h"
	.file 16 "fillpen.h"
	.file 17 "lmclass.h"
	.file 18 "lm.h"
	.file 19 "tmat.h"
	.file 20 "vector.h"
	.file 21 "subvq.h"
	.file 22 "gs.h"
	.file 23 "kbcore.h"
	.file 24 "hyp.h"
	.file 25 "vithist.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x2068
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF316
	.byte	0x1
	.long	.LASF317
	.long	.LASF318
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
	.long	.LASF319
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
	.long	.LASF320
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
	.uleb128 0x2
	.long	.LASF71
	.byte	0x9
	.byte	0x3d
	.long	0x8d
	.uleb128 0x2
	.long	.LASF72
	.byte	0xa
	.byte	0x4b
	.long	0x2cf
	.uleb128 0x2
	.long	.LASF73
	.byte	0xa
	.byte	0x51
	.long	0x2b9
	.uleb128 0x2
	.long	.LASF74
	.byte	0xa
	.byte	0x57
	.long	0x44f
	.uleb128 0x2
	.long	.LASF75
	.byte	0xa
	.byte	0x5d
	.long	0x2b9
	.uleb128 0x2
	.long	.LASF76
	.byte	0xa
	.byte	0x63
	.long	0x2b9
	.uleb128 0x2
	.long	.LASF77
	.byte	0xa
	.byte	0x69
	.long	0x2e5
	.uleb128 0x2
	.long	.LASF78
	.byte	0xa
	.byte	0x75
	.long	0x2c4
	.uleb128 0x2
	.long	.LASF79
	.byte	0xa
	.byte	0x7b
	.long	0x2c4
	.uleb128 0x7
	.long	.LASF80
	.byte	0x38
	.byte	0xb
	.byte	0x48
	.long	0x521
	.uleb128 0x8
	.long	.LASF81
	.byte	0xb
	.byte	0x49
	.long	0x8f
	.byte	0
	.uleb128 0x8
	.long	.LASF82
	.byte	0xb
	.byte	0x4a
	.long	0x2b9
	.byte	0x8
	.uleb128 0x8
	.long	.LASF83
	.byte	0xb
	.byte	0x4b
	.long	0x2b9
	.byte	0xc
	.uleb128 0x8
	.long	.LASF84
	.byte	0xb
	.byte	0x4c
	.long	0x2b9
	.byte	0x10
	.uleb128 0x8
	.long	.LASF85
	.byte	0xb
	.byte	0x4d
	.long	0x521
	.byte	0x18
	.uleb128 0x8
	.long	.LASF86
	.byte	0xb
	.byte	0x4e
	.long	0x2b9
	.byte	0x20
	.uleb128 0x11
	.string	"cmn"
	.byte	0xb
	.byte	0x50
	.long	0x2b9
	.byte	0x24
	.uleb128 0x8
	.long	.LASF87
	.byte	0xb
	.byte	0x51
	.long	0x2b9
	.byte	0x28
	.uleb128 0x11
	.string	"agc"
	.byte	0xb
	.byte	0x53
	.long	0x2b9
	.byte	0x2c
	.uleb128 0x8
	.long	.LASF88
	.byte	0xb
	.byte	0x54
	.long	0x54e
	.byte	0x30
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x2b9
	.uleb128 0x13
	.long	0x53c
	.uleb128 0x14
	.long	0x53c
	.uleb128 0x14
	.long	0x542
	.uleb128 0x14
	.long	0x542
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x49c
	.uleb128 0x6
	.byte	0x8
	.long	0x548
	.uleb128 0x6
	.byte	0x8
	.long	0x2fb
	.uleb128 0x6
	.byte	0x8
	.long	0x527
	.uleb128 0x2
	.long	.LASF89
	.byte	0xb
	.byte	0x5a
	.long	0x49c
	.uleb128 0x12
	.byte	0x28
	.byte	0xc
	.byte	0x5f
	.long	0x5a4
	.uleb128 0x8
	.long	.LASF90
	.byte	0xc
	.byte	0x60
	.long	0x2b9
	.byte	0
	.uleb128 0x8
	.long	.LASF91
	.byte	0xc
	.byte	0x62
	.long	0x542
	.byte	0x8
	.uleb128 0x11
	.string	"var"
	.byte	0xc
	.byte	0x63
	.long	0x542
	.byte	0x10
	.uleb128 0x11
	.string	"lrd"
	.byte	0xc
	.byte	0x66
	.long	0x548
	.byte	0x18
	.uleb128 0x8
	.long	.LASF92
	.byte	0xc
	.byte	0x69
	.long	0x521
	.byte	0x20
	.byte	0
	.uleb128 0x2
	.long	.LASF93
	.byte	0xc
	.byte	0x6c
	.long	0x55f
	.uleb128 0x12
	.byte	0x30
	.byte	0xc
	.byte	0x74
	.long	0x618
	.uleb128 0x8
	.long	.LASF94
	.byte	0xc
	.byte	0x75
	.long	0x2b9
	.byte	0
	.uleb128 0x8
	.long	.LASF95
	.byte	0xc
	.byte	0x76
	.long	0x2b9
	.byte	0x4
	.uleb128 0x8
	.long	.LASF96
	.byte	0xc
	.byte	0x77
	.long	0x2b9
	.byte	0x8
	.uleb128 0x8
	.long	.LASF97
	.byte	0xc
	.byte	0x78
	.long	0x618
	.byte	0x10
	.uleb128 0x8
	.long	.LASF98
	.byte	0xc
	.byte	0x79
	.long	0x306
	.byte	0x18
	.uleb128 0x8
	.long	.LASF99
	.byte	0xc
	.byte	0x7c
	.long	0x2b9
	.byte	0x20
	.uleb128 0x8
	.long	.LASF100
	.byte	0xc
	.byte	0x7d
	.long	0x2b9
	.byte	0x24
	.uleb128 0x8
	.long	.LASF101
	.byte	0xc
	.byte	0x7e
	.long	0x2b9
	.byte	0x28
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x5a4
	.uleb128 0x2
	.long	.LASF102
	.byte	0xc
	.byte	0x81
	.long	0x5af
	.uleb128 0x15
	.byte	0x4
	.byte	0xd
	.byte	0x48
	.long	0x650
	.uleb128 0x16
	.long	.LASF103
	.sleb128 0
	.uleb128 0x16
	.long	.LASF104
	.sleb128 1
	.uleb128 0x16
	.long	.LASF105
	.sleb128 2
	.uleb128 0x16
	.long	.LASF106
	.sleb128 3
	.uleb128 0x16
	.long	.LASF107
	.sleb128 4
	.byte	0
	.uleb128 0x2
	.long	.LASF108
	.byte	0xd
	.byte	0x4e
	.long	0x629
	.uleb128 0x12
	.byte	0x10
	.byte	0xd
	.byte	0x54
	.long	0x67c
	.uleb128 0x8
	.long	.LASF81
	.byte	0xd
	.byte	0x55
	.long	0x8f
	.byte	0
	.uleb128 0x8
	.long	.LASF109
	.byte	0xd
	.byte	0x56
	.long	0x2b9
	.byte	0x8
	.byte	0
	.uleb128 0x2
	.long	.LASF110
	.byte	0xd
	.byte	0x58
	.long	0x65b
	.uleb128 0x12
	.byte	0x10
	.byte	0xd
	.byte	0x5e
	.long	0x6d5
	.uleb128 0x8
	.long	.LASF111
	.byte	0xd
	.byte	0x5f
	.long	0x45a
	.byte	0
	.uleb128 0x8
	.long	.LASF112
	.byte	0xd
	.byte	0x62
	.long	0x465
	.byte	0x4
	.uleb128 0x11
	.string	"ci"
	.byte	0xd
	.byte	0x63
	.long	0x444
	.byte	0x8
	.uleb128 0x11
	.string	"lc"
	.byte	0xd
	.byte	0x63
	.long	0x444
	.byte	0x9
	.uleb128 0x11
	.string	"rc"
	.byte	0xd
	.byte	0x63
	.long	0x444
	.byte	0xa
	.uleb128 0x8
	.long	.LASF113
	.byte	0xd
	.byte	0x64
	.long	0x650
	.byte	0xc
	.byte	0
	.uleb128 0x2
	.long	.LASF114
	.byte	0xd
	.byte	0x65
	.long	0x687
	.uleb128 0x7
	.long	.LASF115
	.byte	0x10
	.byte	0xd
	.byte	0x6c
	.long	0x710
	.uleb128 0x11
	.string	"rc"
	.byte	0xd
	.byte	0x6d
	.long	0x444
	.byte	0
	.uleb128 0x11
	.string	"pid"
	.byte	0xd
	.byte	0x6e
	.long	0x44f
	.byte	0x4
	.uleb128 0x8
	.long	.LASF62
	.byte	0xd
	.byte	0x6f
	.long	0x710
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x6e0
	.uleb128 0x2
	.long	.LASF116
	.byte	0xd
	.byte	0x70
	.long	0x6e0
	.uleb128 0x7
	.long	.LASF117
	.byte	0x18
	.byte	0xd
	.byte	0x72
	.long	0x751
	.uleb128 0x11
	.string	"lc"
	.byte	0xd
	.byte	0x73
	.long	0x444
	.byte	0
	.uleb128 0x8
	.long	.LASF118
	.byte	0xd
	.byte	0x74
	.long	0x751
	.byte	0x8
	.uleb128 0x8
	.long	.LASF62
	.byte	0xd
	.byte	0x75
	.long	0x757
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x716
	.uleb128 0x6
	.byte	0x8
	.long	0x721
	.uleb128 0x2
	.long	.LASF119
	.byte	0xd
	.byte	0x76
	.long	0x721
	.uleb128 0x12
	.byte	0x68
	.byte	0xd
	.byte	0x7a
	.long	0x831
	.uleb128 0x8
	.long	.LASF120
	.byte	0xd
	.byte	0x7b
	.long	0x2b9
	.byte	0
	.uleb128 0x8
	.long	.LASF121
	.byte	0xd
	.byte	0x7c
	.long	0x2b9
	.byte	0x4
	.uleb128 0x8
	.long	.LASF122
	.byte	0xd
	.byte	0x7d
	.long	0x2b9
	.byte	0x8
	.uleb128 0x8
	.long	.LASF123
	.byte	0xd
	.byte	0x7e
	.long	0x2b9
	.byte	0xc
	.uleb128 0x8
	.long	.LASF124
	.byte	0xd
	.byte	0x7f
	.long	0x2b9
	.byte	0x10
	.uleb128 0x8
	.long	.LASF125
	.byte	0xd
	.byte	0x80
	.long	0x2b9
	.byte	0x14
	.uleb128 0x8
	.long	.LASF126
	.byte	0xd
	.byte	0x82
	.long	0x831
	.byte	0x18
	.uleb128 0x8
	.long	.LASF127
	.byte	0xd
	.byte	0x83
	.long	0x837
	.byte	0x20
	.uleb128 0x8
	.long	.LASF128
	.byte	0xd
	.byte	0x84
	.long	0x83d
	.byte	0x28
	.uleb128 0x8
	.long	.LASF129
	.byte	0xd
	.byte	0x85
	.long	0x843
	.byte	0x30
	.uleb128 0x8
	.long	.LASF130
	.byte	0xd
	.byte	0x87
	.long	0x2b9
	.byte	0x38
	.uleb128 0x8
	.long	.LASF131
	.byte	0xd
	.byte	0x89
	.long	0x849
	.byte	0x40
	.uleb128 0x8
	.long	.LASF132
	.byte	0xd
	.byte	0x8c
	.long	0x84f
	.byte	0x48
	.uleb128 0x8
	.long	.LASF133
	.byte	0xd
	.byte	0x8d
	.long	0x521
	.byte	0x50
	.uleb128 0x11
	.string	"sil"
	.byte	0xd
	.byte	0x8f
	.long	0x444
	.byte	0x58
	.uleb128 0x8
	.long	.LASF134
	.byte	0xd
	.byte	0x91
	.long	0x855
	.byte	0x60
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x42e
	.uleb128 0x6
	.byte	0x8
	.long	0x67c
	.uleb128 0x6
	.byte	0x8
	.long	0x6d5
	.uleb128 0x6
	.byte	0x8
	.long	0x849
	.uleb128 0x6
	.byte	0x8
	.long	0x491
	.uleb128 0x6
	.byte	0x8
	.long	0x444
	.uleb128 0x6
	.byte	0x8
	.long	0x85b
	.uleb128 0x6
	.byte	0x8
	.long	0x861
	.uleb128 0x6
	.byte	0x8
	.long	0x75d
	.uleb128 0x2
	.long	.LASF135
	.byte	0xd
	.byte	0x96
	.long	0x768
	.uleb128 0x12
	.byte	0x28
	.byte	0xe
	.byte	0x47
	.long	0x8cf
	.uleb128 0x8
	.long	.LASF136
	.byte	0xe
	.byte	0x48
	.long	0x8f
	.byte	0
	.uleb128 0x8
	.long	.LASF127
	.byte	0xe
	.byte	0x49
	.long	0x84f
	.byte	0x8
	.uleb128 0x8
	.long	.LASF137
	.byte	0xe
	.byte	0x4a
	.long	0x2b9
	.byte	0x10
	.uleb128 0x11
	.string	"alt"
	.byte	0xe
	.byte	0x4b
	.long	0x470
	.byte	0x14
	.uleb128 0x8
	.long	.LASF138
	.byte	0xe
	.byte	0x4c
	.long	0x470
	.byte	0x18
	.uleb128 0x8
	.long	.LASF90
	.byte	0xe
	.byte	0x4d
	.long	0x2b9
	.byte	0x1c
	.uleb128 0x8
	.long	.LASF139
	.byte	0xe
	.byte	0x51
	.long	0x8cf
	.byte	0x20
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x470
	.uleb128 0x2
	.long	.LASF140
	.byte	0xe
	.byte	0x52
	.long	0x872
	.uleb128 0x12
	.byte	0x58
	.byte	0xe
	.byte	0x54
	.long	0x990
	.uleb128 0x8
	.long	.LASF141
	.byte	0xe
	.byte	0x55
	.long	0x990
	.byte	0
	.uleb128 0x11
	.string	"pht"
	.byte	0xe
	.byte	0x56
	.long	0x831
	.byte	0x8
	.uleb128 0x8
	.long	.LASF142
	.byte	0xe
	.byte	0x57
	.long	0x996
	.byte	0x10
	.uleb128 0x8
	.long	.LASF120
	.byte	0xe
	.byte	0x58
	.long	0x2b9
	.byte	0x18
	.uleb128 0x8
	.long	.LASF136
	.byte	0xe
	.byte	0x59
	.long	0x99c
	.byte	0x20
	.uleb128 0x11
	.string	"ht"
	.byte	0xe
	.byte	0x5a
	.long	0x831
	.byte	0x28
	.uleb128 0x8
	.long	.LASF143
	.byte	0xe
	.byte	0x5b
	.long	0x2b9
	.byte	0x30
	.uleb128 0x8
	.long	.LASF144
	.byte	0xe
	.byte	0x5c
	.long	0x2b9
	.byte	0x34
	.uleb128 0x8
	.long	.LASF145
	.byte	0xe
	.byte	0x5d
	.long	0x2b9
	.byte	0x38
	.uleb128 0x8
	.long	.LASF146
	.byte	0xe
	.byte	0x5e
	.long	0x2b9
	.byte	0x3c
	.uleb128 0x8
	.long	.LASF147
	.byte	0xe
	.byte	0x5f
	.long	0x8cf
	.byte	0x40
	.uleb128 0x8
	.long	.LASF148
	.byte	0xe
	.byte	0x62
	.long	0x470
	.byte	0x48
	.uleb128 0x8
	.long	.LASF149
	.byte	0xe
	.byte	0x63
	.long	0x470
	.byte	0x4c
	.uleb128 0x8
	.long	.LASF150
	.byte	0xe
	.byte	0x64
	.long	0x470
	.byte	0x50
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x867
	.uleb128 0x6
	.byte	0x8
	.long	0x8f
	.uleb128 0x6
	.byte	0x8
	.long	0x8d5
	.uleb128 0x2
	.long	.LASF151
	.byte	0xe
	.byte	0x65
	.long	0x8e0
	.uleb128 0x12
	.byte	0x38
	.byte	0xf
	.byte	0x63
	.long	0xa16
	.uleb128 0x8
	.long	.LASF152
	.byte	0xf
	.byte	0x64
	.long	0xa16
	.byte	0
	.uleb128 0x8
	.long	.LASF153
	.byte	0xf
	.byte	0x67
	.long	0xa22
	.byte	0x8
	.uleb128 0x8
	.long	.LASF154
	.byte	0xf
	.byte	0x69
	.long	0xa16
	.byte	0x10
	.uleb128 0x8
	.long	.LASF155
	.byte	0xf
	.byte	0x6c
	.long	0x843
	.byte	0x18
	.uleb128 0x8
	.long	.LASF156
	.byte	0xf
	.byte	0x6e
	.long	0x843
	.byte	0x20
	.uleb128 0x8
	.long	.LASF157
	.byte	0xf
	.byte	0x70
	.long	0x521
	.byte	0x28
	.uleb128 0x8
	.long	.LASF158
	.byte	0xf
	.byte	0x72
	.long	0x2b9
	.byte	0x30
	.uleb128 0x8
	.long	.LASF159
	.byte	0xf
	.byte	0x73
	.long	0x2b9
	.byte	0x34
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xa1c
	.uleb128 0x6
	.byte	0x8
	.long	0x45a
	.uleb128 0x6
	.byte	0x8
	.long	0xa16
	.uleb128 0x2
	.long	.LASF160
	.byte	0xf
	.byte	0x74
	.long	0x9ad
	.uleb128 0x12
	.byte	0x20
	.byte	0x10
	.byte	0x3e
	.long	0xa6b
	.uleb128 0x8
	.long	.LASF161
	.byte	0x10
	.byte	0x3f
	.long	0xa6b
	.byte	0
	.uleb128 0x8
	.long	.LASF162
	.byte	0x10
	.byte	0x41
	.long	0x521
	.byte	0x8
	.uleb128 0x11
	.string	"lw"
	.byte	0x10
	.byte	0x43
	.long	0x306
	.byte	0x10
	.uleb128 0x11
	.string	"wip"
	.byte	0x10
	.byte	0x44
	.long	0x306
	.byte	0x18
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x9a2
	.uleb128 0x2
	.long	.LASF163
	.byte	0x10
	.byte	0x45
	.long	0xa33
	.uleb128 0x7
	.long	.LASF164
	.byte	0x18
	.byte	0x11
	.byte	0x42
	.long	0xab9
	.uleb128 0x8
	.long	.LASF136
	.byte	0x11
	.byte	0x43
	.long	0x8f
	.byte	0
	.uleb128 0x8
	.long	.LASF165
	.byte	0x11
	.byte	0x44
	.long	0x2b9
	.byte	0x8
	.uleb128 0x8
	.long	.LASF166
	.byte	0x11
	.byte	0x46
	.long	0x2b9
	.byte	0xc
	.uleb128 0x8
	.long	.LASF62
	.byte	0x11
	.byte	0x47
	.long	0xab9
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xa7c
	.uleb128 0x2
	.long	.LASF167
	.byte	0x11
	.byte	0x49
	.long	0xab9
	.uleb128 0x7
	.long	.LASF168
	.byte	0x18
	.byte	0x11
	.byte	0x4f
	.long	0xafb
	.uleb128 0x8
	.long	.LASF81
	.byte	0x11
	.byte	0x50
	.long	0x8f
	.byte	0
	.uleb128 0x8
	.long	.LASF169
	.byte	0x11
	.byte	0x51
	.long	0xabf
	.byte	0x8
	.uleb128 0x8
	.long	.LASF62
	.byte	0x11
	.byte	0x52
	.long	0xafb
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xaca
	.uleb128 0x2
	.long	.LASF170
	.byte	0x11
	.byte	0x54
	.long	0xafb
	.uleb128 0x17
	.byte	0x4
	.byte	0x12
	.byte	0x4d
	.long	0xb27
	.uleb128 0xf
	.string	"f"
	.byte	0x12
	.byte	0x4e
	.long	0x2fb
	.uleb128 0xf
	.string	"l"
	.byte	0x12
	.byte	0x4f
	.long	0x2b9
	.byte	0
	.uleb128 0x2
	.long	.LASF171
	.byte	0x12
	.byte	0x50
	.long	0xb0c
	.uleb128 0x12
	.byte	0x10
	.byte	0x12
	.byte	0x52
	.long	0xb6b
	.uleb128 0x8
	.long	.LASF165
	.byte	0x12
	.byte	0x53
	.long	0x470
	.byte	0
	.uleb128 0x8
	.long	.LASF162
	.byte	0x12
	.byte	0x57
	.long	0xb27
	.byte	0x4
	.uleb128 0x8
	.long	.LASF172
	.byte	0x12
	.byte	0x58
	.long	0xb27
	.byte	0x8
	.uleb128 0x8
	.long	.LASF173
	.byte	0x12
	.byte	0x59
	.long	0x2b9
	.byte	0xc
	.byte	0
	.uleb128 0x2
	.long	.LASF174
	.byte	0x12
	.byte	0x5a
	.long	0xb32
	.uleb128 0x12
	.byte	0x8
	.byte	0x12
	.byte	0x5c
	.long	0xbaf
	.uleb128 0x11
	.string	"wid"
	.byte	0x12
	.byte	0x5d
	.long	0x47b
	.byte	0
	.uleb128 0x8
	.long	.LASF175
	.byte	0x12
	.byte	0x5e
	.long	0x2e5
	.byte	0x2
	.uleb128 0x8
	.long	.LASF176
	.byte	0x12
	.byte	0x5f
	.long	0x2e5
	.byte	0x4
	.uleb128 0x8
	.long	.LASF177
	.byte	0x12
	.byte	0x60
	.long	0x2e5
	.byte	0x6
	.byte	0
	.uleb128 0x2
	.long	.LASF178
	.byte	0x12
	.byte	0x61
	.long	0xb76
	.uleb128 0x12
	.byte	0x4
	.byte	0x12
	.byte	0x63
	.long	0xbdb
	.uleb128 0x11
	.string	"wid"
	.byte	0x12
	.byte	0x64
	.long	0x47b
	.byte	0
	.uleb128 0x8
	.long	.LASF175
	.byte	0x12
	.byte	0x65
	.long	0x2e5
	.byte	0x2
	.byte	0
	.uleb128 0x2
	.long	.LASF179
	.byte	0x12
	.byte	0x66
	.long	0xbba
	.uleb128 0x12
	.byte	0x10
	.byte	0x12
	.byte	0x6c
	.long	0xc06
	.uleb128 0x11
	.string	"bg"
	.byte	0x12
	.byte	0x6d
	.long	0xc06
	.byte	0
	.uleb128 0x8
	.long	.LASF180
	.byte	0x12
	.byte	0x6e
	.long	0x2b9
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xbaf
	.uleb128 0x2
	.long	.LASF181
	.byte	0x12
	.byte	0x70
	.long	0xbe6
	.uleb128 0x7
	.long	.LASF182
	.byte	0x20
	.byte	0x12
	.byte	0x7a
	.long	0xc6a
	.uleb128 0x11
	.string	"w1"
	.byte	0x12
	.byte	0x7b
	.long	0x47b
	.byte	0
	.uleb128 0x8
	.long	.LASF183
	.byte	0x12
	.byte	0x7d
	.long	0x2b9
	.byte	0x4
	.uleb128 0x11
	.string	"tg"
	.byte	0x12
	.byte	0x7e
	.long	0xc6a
	.byte	0x8
	.uleb128 0x8
	.long	.LASF172
	.byte	0x12
	.byte	0x7f
	.long	0x2b9
	.byte	0x10
	.uleb128 0x8
	.long	.LASF180
	.byte	0x12
	.byte	0x80
	.long	0x2b9
	.byte	0x14
	.uleb128 0x8
	.long	.LASF62
	.byte	0x12
	.byte	0x81
	.long	0xc70
	.byte	0x18
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xbdb
	.uleb128 0x6
	.byte	0x8
	.long	0xc17
	.uleb128 0x2
	.long	.LASF184
	.byte	0x12
	.byte	0x82
	.long	0xc17
	.uleb128 0x12
	.byte	0xc
	.byte	0x12
	.byte	0x88
	.long	0xca2
	.uleb128 0x8
	.long	.LASF185
	.byte	0x12
	.byte	0x89
	.long	0xca2
	.byte	0
	.uleb128 0x8
	.long	.LASF186
	.byte	0x12
	.byte	0x8a
	.long	0x2b9
	.byte	0x8
	.byte	0
	.uleb128 0xb
	.long	0x47b
	.long	0xcb2
	.uleb128 0xc
	.long	0x86
	.byte	0x2
	.byte	0
	.uleb128 0x2
	.long	.LASF187
	.byte	0x12
	.byte	0x8b
	.long	0xc81
	.uleb128 0x7
	.long	.LASF188
	.byte	0xf8
	.byte	0x12
	.byte	0xb4
	.long	0xec9
	.uleb128 0x8
	.long	.LASF189
	.byte	0x12
	.byte	0xb5
	.long	0x2b9
	.byte	0
	.uleb128 0x8
	.long	.LASF190
	.byte	0x12
	.byte	0xb6
	.long	0x2b9
	.byte	0x4
	.uleb128 0x8
	.long	.LASF183
	.byte	0x12
	.byte	0xb7
	.long	0x2b9
	.byte	0x8
	.uleb128 0x8
	.long	.LASF191
	.byte	0x12
	.byte	0xb8
	.long	0x2b9
	.byte	0xc
	.uleb128 0x8
	.long	.LASF192
	.byte	0x12
	.byte	0xba
	.long	0x996
	.byte	0x10
	.uleb128 0x8
	.long	.LASF193
	.byte	0x12
	.byte	0xbc
	.long	0x47b
	.byte	0x18
	.uleb128 0x8
	.long	.LASF194
	.byte	0x12
	.byte	0xbd
	.long	0x47b
	.byte	0x1a
	.uleb128 0x8
	.long	.LASF195
	.byte	0x12
	.byte	0xbf
	.long	0x2b9
	.byte	0x1c
	.uleb128 0x8
	.long	.LASF196
	.byte	0x12
	.byte	0xc0
	.long	0x2b9
	.byte	0x20
	.uleb128 0x11
	.string	"ug"
	.byte	0x12
	.byte	0xc2
	.long	0xec9
	.byte	0x28
	.uleb128 0x11
	.string	"bg"
	.byte	0x12
	.byte	0xc3
	.long	0xc06
	.byte	0x30
	.uleb128 0x11
	.string	"tg"
	.byte	0x12
	.byte	0xc4
	.long	0xc6a
	.byte	0x38
	.uleb128 0x8
	.long	.LASF197
	.byte	0x12
	.byte	0xc5
	.long	0xecf
	.byte	0x40
	.uleb128 0x8
	.long	.LASF198
	.byte	0x12
	.byte	0xc6
	.long	0xed5
	.byte	0x48
	.uleb128 0x8
	.long	.LASF199
	.byte	0x12
	.byte	0xc8
	.long	0xee1
	.byte	0x50
	.uleb128 0x8
	.long	.LASF200
	.byte	0x12
	.byte	0xc9
	.long	0xee1
	.byte	0x58
	.uleb128 0x8
	.long	.LASF201
	.byte	0x12
	.byte	0xca
	.long	0xee1
	.byte	0x60
	.uleb128 0x8
	.long	.LASF202
	.byte	0x12
	.byte	0xcb
	.long	0x521
	.byte	0x68
	.uleb128 0x8
	.long	.LASF203
	.byte	0x12
	.byte	0xcd
	.long	0x2b9
	.byte	0x70
	.uleb128 0x8
	.long	.LASF204
	.byte	0x12
	.byte	0xce
	.long	0x2b9
	.byte	0x74
	.uleb128 0x8
	.long	.LASF205
	.byte	0x12
	.byte	0xcf
	.long	0x2b9
	.byte	0x78
	.uleb128 0x11
	.string	"fp"
	.byte	0x12
	.byte	0xd1
	.long	0xee7
	.byte	0x80
	.uleb128 0x8
	.long	.LASF206
	.byte	0x12
	.byte	0xd2
	.long	0x2b9
	.byte	0x88
	.uleb128 0x8
	.long	.LASF207
	.byte	0x12
	.byte	0xd3
	.long	0x2b9
	.byte	0x8c
	.uleb128 0x8
	.long	.LASF208
	.byte	0x12
	.byte	0xd4
	.long	0x2b9
	.byte	0x90
	.uleb128 0x11
	.string	"lw"
	.byte	0x12
	.byte	0xd6
	.long	0x2fb
	.byte	0x94
	.uleb128 0x11
	.string	"wip"
	.byte	0x12
	.byte	0xd7
	.long	0x2b9
	.byte	0x98
	.uleb128 0x8
	.long	.LASF209
	.byte	0x12
	.byte	0xdd
	.long	0xeed
	.byte	0xa0
	.uleb128 0x8
	.long	.LASF210
	.byte	0x12
	.byte	0xe0
	.long	0x2b9
	.byte	0xa8
	.uleb128 0x8
	.long	.LASF211
	.byte	0x12
	.byte	0xe1
	.long	0x2b9
	.byte	0xac
	.uleb128 0x8
	.long	.LASF212
	.byte	0x12
	.byte	0xe2
	.long	0x2b9
	.byte	0xb0
	.uleb128 0x8
	.long	.LASF213
	.byte	0x12
	.byte	0xe3
	.long	0x2b9
	.byte	0xb4
	.uleb128 0x8
	.long	.LASF214
	.byte	0x12
	.byte	0xe4
	.long	0x2b9
	.byte	0xb8
	.uleb128 0x8
	.long	.LASF215
	.byte	0x12
	.byte	0xe5
	.long	0x2b9
	.byte	0xbc
	.uleb128 0x8
	.long	.LASF216
	.byte	0x12
	.byte	0xe6
	.long	0x2b9
	.byte	0xc0
	.uleb128 0x8
	.long	.LASF217
	.byte	0x12
	.byte	0xe7
	.long	0x2b9
	.byte	0xc4
	.uleb128 0x8
	.long	.LASF218
	.byte	0x12
	.byte	0xe8
	.long	0x2b9
	.byte	0xc8
	.uleb128 0x8
	.long	.LASF219
	.byte	0x12
	.byte	0xea
	.long	0x2b9
	.byte	0xcc
	.uleb128 0x8
	.long	.LASF220
	.byte	0x12
	.byte	0xef
	.long	0xef3
	.byte	0xd0
	.uleb128 0x8
	.long	.LASF221
	.byte	0x12
	.byte	0xf2
	.long	0x2b9
	.byte	0xd8
	.uleb128 0x8
	.long	.LASF222
	.byte	0x12
	.byte	0xf4
	.long	0xef9
	.byte	0xe0
	.uleb128 0x8
	.long	.LASF223
	.byte	0x12
	.byte	0xf5
	.long	0x2b9
	.byte	0xe8
	.uleb128 0x8
	.long	.LASF224
	.byte	0x12
	.byte	0xf6
	.long	0x521
	.byte	0xf0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xb6b
	.uleb128 0x6
	.byte	0x8
	.long	0xc0c
	.uleb128 0x6
	.byte	0x8
	.long	0xedb
	.uleb128 0x6
	.byte	0x8
	.long	0xc76
	.uleb128 0x6
	.byte	0x8
	.long	0xb27
	.uleb128 0x6
	.byte	0x8
	.long	0x9c
	.uleb128 0x6
	.byte	0x8
	.long	0xcb2
	.uleb128 0x6
	.byte	0x8
	.long	0x47b
	.uleb128 0x6
	.byte	0x8
	.long	0xb01
	.uleb128 0x2
	.long	.LASF225
	.byte	0x12
	.byte	0xf8
	.long	0xcbd
	.uleb128 0x7
	.long	.LASF226
	.byte	0x10
	.byte	0x12
	.byte	0xfb
	.long	0xf2e
	.uleb128 0x8
	.long	.LASF81
	.byte	0x12
	.byte	0xfc
	.long	0x8f
	.byte	0
	.uleb128 0x11
	.string	"lm"
	.byte	0x12
	.byte	0xfd
	.long	0xf2e
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xeff
	.uleb128 0x2
	.long	.LASF227
	.byte	0x12
	.byte	0xfe
	.long	0xf0a
	.uleb128 0x18
	.byte	0x8
	.byte	0x12
	.value	0x10c
	.long	0xf63
	.uleb128 0x19
	.string	"wid"
	.byte	0x12
	.value	0x10d
	.long	0x470
	.byte	0
	.uleb128 0x9
	.long	.LASF162
	.byte	0x12
	.value	0x10e
	.long	0x2b9
	.byte	0x4
	.byte	0
	.uleb128 0x1a
	.long	.LASF228
	.byte	0x12
	.value	0x10f
	.long	0xf3f
	.uleb128 0x12
	.byte	0x10
	.byte	0x13
	.byte	0x4a
	.long	0xf9b
	.uleb128 0x11
	.string	"tp"
	.byte	0x13
	.byte	0x4b
	.long	0xf9b
	.byte	0
	.uleb128 0x8
	.long	.LASF125
	.byte	0x13
	.byte	0x4d
	.long	0x2b9
	.byte	0x8
	.uleb128 0x8
	.long	.LASF229
	.byte	0x13
	.byte	0x4e
	.long	0x2b9
	.byte	0xc
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xfa1
	.uleb128 0x6
	.byte	0x8
	.long	0x521
	.uleb128 0x2
	.long	.LASF230
	.byte	0x13
	.byte	0x50
	.long	0xf6f
	.uleb128 0x12
	.byte	0x8
	.byte	0x14
	.byte	0x47
	.long	0xfcf
	.uleb128 0x11
	.string	"r"
	.byte	0x14
	.byte	0x48
	.long	0x2b9
	.byte	0
	.uleb128 0x11
	.string	"c"
	.byte	0x14
	.byte	0x49
	.long	0x2b9
	.byte	0x4
	.byte	0
	.uleb128 0x2
	.long	.LASF231
	.byte	0x14
	.byte	0x4a
	.long	0xfb2
	.uleb128 0x12
	.byte	0x28
	.byte	0x14
	.byte	0xf0
	.long	0x102b
	.uleb128 0x8
	.long	.LASF232
	.byte	0x14
	.byte	0xf1
	.long	0x2b9
	.byte	0
	.uleb128 0x8
	.long	.LASF96
	.byte	0x14
	.byte	0xf2
	.long	0x2b9
	.byte	0x4
	.uleb128 0x8
	.long	.LASF91
	.byte	0x14
	.byte	0xf3
	.long	0x542
	.byte	0x8
	.uleb128 0x11
	.string	"var"
	.byte	0x14
	.byte	0xf4
	.long	0x542
	.byte	0x10
	.uleb128 0x11
	.string	"lrd"
	.byte	0x14
	.byte	0xf5
	.long	0x548
	.byte	0x18
	.uleb128 0x8
	.long	.LASF98
	.byte	0x14
	.byte	0xf6
	.long	0x306
	.byte	0x20
	.byte	0
	.uleb128 0x2
	.long	.LASF233
	.byte	0x14
	.byte	0xf8
	.long	0xfda
	.uleb128 0x12
	.byte	0x48
	.byte	0x15
	.byte	0x52
	.long	0x10b7
	.uleb128 0x8
	.long	.LASF234
	.byte	0x15
	.byte	0x53
	.long	0xfcf
	.byte	0
	.uleb128 0x8
	.long	.LASF235
	.byte	0x15
	.byte	0x55
	.long	0x2b9
	.byte	0x8
	.uleb128 0x8
	.long	.LASF236
	.byte	0x15
	.byte	0x56
	.long	0x2b9
	.byte	0xc
	.uleb128 0x8
	.long	.LASF237
	.byte	0x15
	.byte	0x57
	.long	0xfa1
	.byte	0x10
	.uleb128 0x8
	.long	.LASF238
	.byte	0x15
	.byte	0x58
	.long	0x10b7
	.byte	0x18
	.uleb128 0x11
	.string	"map"
	.byte	0x15
	.byte	0x59
	.long	0xf9b
	.byte	0x20
	.uleb128 0x8
	.long	.LASF239
	.byte	0x15
	.byte	0x60
	.long	0x548
	.byte	0x28
	.uleb128 0x8
	.long	.LASF240
	.byte	0x15
	.byte	0x61
	.long	0xfa1
	.byte	0x30
	.uleb128 0x8
	.long	.LASF241
	.byte	0x15
	.byte	0x63
	.long	0x521
	.byte	0x38
	.uleb128 0x8
	.long	.LASF242
	.byte	0x15
	.byte	0x64
	.long	0x521
	.byte	0x40
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x102b
	.uleb128 0x2
	.long	.LASF243
	.byte	0x15
	.byte	0x65
	.long	0x1036
	.uleb128 0x7
	.long	.LASF244
	.byte	0x38
	.byte	0x16
	.byte	0x3c
	.long	0x114c
	.uleb128 0x8
	.long	.LASF94
	.byte	0x16
	.byte	0x3d
	.long	0x2b9
	.byte	0
	.uleb128 0x8
	.long	.LASF245
	.byte	0x16
	.byte	0x3e
	.long	0x2b9
	.byte	0x4
	.uleb128 0x8
	.long	.LASF246
	.byte	0x16
	.byte	0x3f
	.long	0x2b9
	.byte	0x8
	.uleb128 0x8
	.long	.LASF247
	.byte	0x16
	.byte	0x40
	.long	0x2b9
	.byte	0xc
	.uleb128 0x8
	.long	.LASF248
	.byte	0x16
	.byte	0x41
	.long	0x2b9
	.byte	0x10
	.uleb128 0x8
	.long	.LASF249
	.byte	0x16
	.byte	0x42
	.long	0x2b9
	.byte	0x14
	.uleb128 0x8
	.long	.LASF250
	.byte	0x16
	.byte	0x43
	.long	0x542
	.byte	0x18
	.uleb128 0x8
	.long	.LASF251
	.byte	0x16
	.byte	0x44
	.long	0x114c
	.byte	0x20
	.uleb128 0x11
	.string	"fp"
	.byte	0x16
	.byte	0x45
	.long	0xee7
	.byte	0x28
	.uleb128 0x8
	.long	.LASF242
	.byte	0x16
	.byte	0x46
	.long	0x521
	.byte	0x30
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x1152
	.uleb128 0x6
	.byte	0x8
	.long	0x360
	.uleb128 0x2
	.long	.LASF252
	.byte	0x16
	.byte	0x47
	.long	0x10c8
	.uleb128 0x12
	.byte	0x68
	.byte	0x17
	.byte	0x50
	.long	0x1212
	.uleb128 0x11
	.string	"fcb"
	.byte	0x17
	.byte	0x51
	.long	0x1212
	.byte	0
	.uleb128 0x8
	.long	.LASF141
	.byte	0x17
	.byte	0x52
	.long	0x990
	.byte	0x8
	.uleb128 0x8
	.long	.LASF161
	.byte	0x17
	.byte	0x53
	.long	0xa6b
	.byte	0x10
	.uleb128 0x8
	.long	.LASF253
	.byte	0x17
	.byte	0x54
	.long	0x1218
	.byte	0x18
	.uleb128 0x11
	.string	"lm"
	.byte	0x17
	.byte	0x55
	.long	0xf2e
	.byte	0x20
	.uleb128 0x8
	.long	.LASF254
	.byte	0x17
	.byte	0x56
	.long	0x121e
	.byte	0x28
	.uleb128 0x8
	.long	.LASF255
	.byte	0x17
	.byte	0x57
	.long	0x1224
	.byte	0x30
	.uleb128 0x8
	.long	.LASF220
	.byte	0x17
	.byte	0x58
	.long	0xef3
	.byte	0x38
	.uleb128 0x8
	.long	.LASF97
	.byte	0x17
	.byte	0x59
	.long	0x122a
	.byte	0x40
	.uleb128 0x11
	.string	"svq"
	.byte	0x17
	.byte	0x5a
	.long	0x1230
	.byte	0x48
	.uleb128 0x11
	.string	"gs"
	.byte	0x17
	.byte	0x5b
	.long	0x1236
	.byte	0x50
	.uleb128 0x8
	.long	.LASF112
	.byte	0x17
	.byte	0x5c
	.long	0x123c
	.byte	0x58
	.uleb128 0x8
	.long	.LASF256
	.byte	0x17
	.byte	0x5d
	.long	0x2b9
	.byte	0x60
	.uleb128 0x8
	.long	.LASF257
	.byte	0x17
	.byte	0x5e
	.long	0x2b9
	.byte	0x64
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x554
	.uleb128 0x6
	.byte	0x8
	.long	0xa28
	.uleb128 0x6
	.byte	0x8
	.long	0xf34
	.uleb128 0x6
	.byte	0x8
	.long	0xa71
	.uleb128 0x6
	.byte	0x8
	.long	0x61e
	.uleb128 0x6
	.byte	0x8
	.long	0x10bd
	.uleb128 0x6
	.byte	0x8
	.long	0x1158
	.uleb128 0x6
	.byte	0x8
	.long	0xfa7
	.uleb128 0x2
	.long	.LASF258
	.byte	0x17
	.byte	0x5f
	.long	0x1163
	.uleb128 0x12
	.byte	0x1c
	.byte	0x18
	.byte	0x3c
	.long	0x12a7
	.uleb128 0x11
	.string	"id"
	.byte	0x18
	.byte	0x3d
	.long	0x2b9
	.byte	0
	.uleb128 0x8
	.long	.LASF259
	.byte	0x18
	.byte	0x3e
	.long	0x2b9
	.byte	0x4
	.uleb128 0x11
	.string	"sf"
	.byte	0x18
	.byte	0x3f
	.long	0x2b9
	.byte	0x8
	.uleb128 0x11
	.string	"ef"
	.byte	0x18
	.byte	0x3f
	.long	0x2b9
	.byte	0xc
	.uleb128 0x8
	.long	.LASF260
	.byte	0x18
	.byte	0x40
	.long	0x2b9
	.byte	0x10
	.uleb128 0x8
	.long	.LASF186
	.byte	0x18
	.byte	0x41
	.long	0x2b9
	.byte	0x14
	.uleb128 0x8
	.long	.LASF261
	.byte	0x18
	.byte	0x42
	.long	0x2b9
	.byte	0x18
	.byte	0
	.uleb128 0x2
	.long	.LASF262
	.byte	0x18
	.byte	0x43
	.long	0x124d
	.uleb128 0x12
	.byte	0x4
	.byte	0x19
	.byte	0x50
	.long	0x12c7
	.uleb128 0x8
	.long	.LASF185
	.byte	0x19
	.byte	0x51
	.long	0x12c7
	.byte	0
	.byte	0
	.uleb128 0xb
	.long	0x47b
	.long	0x12d7
	.uleb128 0xc
	.long	0x86
	.byte	0x1
	.byte	0
	.uleb128 0x17
	.byte	0x4
	.byte	0x19
	.byte	0x4f
	.long	0x12eb
	.uleb128 0x10
	.long	.LASF263
	.byte	0x19
	.byte	0x52
	.long	0x12b2
	.byte	0
	.uleb128 0x2
	.long	.LASF264
	.byte	0x19
	.byte	0x53
	.long	0x12d7
	.uleb128 0x12
	.byte	0x24
	.byte	0x19
	.byte	0x59
	.long	0x1375
	.uleb128 0x11
	.string	"wid"
	.byte	0x19
	.byte	0x5a
	.long	0x470
	.byte	0
	.uleb128 0x11
	.string	"sf"
	.byte	0x19
	.byte	0x5b
	.long	0x486
	.byte	0x4
	.uleb128 0x11
	.string	"ef"
	.byte	0x19
	.byte	0x5b
	.long	0x486
	.byte	0x6
	.uleb128 0x8
	.long	.LASF260
	.byte	0x19
	.byte	0x5c
	.long	0x2b9
	.byte	0x8
	.uleb128 0x8
	.long	.LASF186
	.byte	0x19
	.byte	0x5d
	.long	0x2b9
	.byte	0xc
	.uleb128 0x8
	.long	.LASF265
	.byte	0x19
	.byte	0x5e
	.long	0x2b9
	.byte	0x10
	.uleb128 0x8
	.long	.LASF266
	.byte	0x19
	.byte	0x5f
	.long	0x2b9
	.byte	0x14
	.uleb128 0x8
	.long	.LASF261
	.byte	0x19
	.byte	0x60
	.long	0x2b9
	.byte	0x18
	.uleb128 0x8
	.long	.LASF267
	.byte	0x19
	.byte	0x61
	.long	0x2b9
	.byte	0x1c
	.uleb128 0x8
	.long	.LASF268
	.byte	0x19
	.byte	0x62
	.long	0x12eb
	.byte	0x20
	.byte	0
	.uleb128 0x2
	.long	.LASF269
	.byte	0x19
	.byte	0x63
	.long	0x12f6
	.uleb128 0x12
	.byte	0x18
	.byte	0x19
	.byte	0x79
	.long	0x13b8
	.uleb128 0x8
	.long	.LASF270
	.byte	0x19
	.byte	0x7a
	.long	0x2b9
	.byte	0
	.uleb128 0x8
	.long	.LASF259
	.byte	0x19
	.byte	0x7b
	.long	0x2b9
	.byte	0x4
	.uleb128 0x11
	.string	"ve"
	.byte	0x19
	.byte	0x7c
	.long	0x13b8
	.byte	0x8
	.uleb128 0x8
	.long	.LASF271
	.byte	0x19
	.byte	0x7d
	.long	0x39c
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x1375
	.uleb128 0x2
	.long	.LASF272
	.byte	0x19
	.byte	0x7f
	.long	0x1380
	.uleb128 0x12
	.byte	0x40
	.byte	0x19
	.byte	0x88
	.long	0x144a
	.uleb128 0x8
	.long	.LASF273
	.byte	0x19
	.byte	0x89
	.long	0x144a
	.byte	0
	.uleb128 0x8
	.long	.LASF274
	.byte	0x19
	.byte	0x8a
	.long	0x521
	.byte	0x8
	.uleb128 0x8
	.long	.LASF275
	.byte	0x19
	.byte	0x8c
	.long	0x2b9
	.byte	0x10
	.uleb128 0x8
	.long	.LASF276
	.byte	0x19
	.byte	0x8d
	.long	0x2b9
	.byte	0x14
	.uleb128 0x8
	.long	.LASF277
	.byte	0x19
	.byte	0x8f
	.long	0x2b9
	.byte	0x18
	.uleb128 0x8
	.long	.LASF278
	.byte	0x19
	.byte	0x92
	.long	0x2b9
	.byte	0x1c
	.uleb128 0x8
	.long	.LASF279
	.byte	0x19
	.byte	0x94
	.long	0x521
	.byte	0x20
	.uleb128 0x8
	.long	.LASF280
	.byte	0x19
	.byte	0x95
	.long	0x521
	.byte	0x28
	.uleb128 0x8
	.long	.LASF281
	.byte	0x19
	.byte	0x97
	.long	0x1450
	.byte	0x30
	.uleb128 0x8
	.long	.LASF282
	.byte	0x19
	.byte	0x98
	.long	0x39c
	.byte	0x38
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x13b8
	.uleb128 0x6
	.byte	0x8
	.long	0x1456
	.uleb128 0x6
	.byte	0x8
	.long	0x13be
	.uleb128 0x2
	.long	.LASF283
	.byte	0x19
	.byte	0x99
	.long	0x13c9
	.uleb128 0x18
	.byte	0x18
	.byte	0x1
	.value	0x322
	.long	0x14b2
	.uleb128 0x19
	.string	"wid"
	.byte	0x1
	.value	0x323
	.long	0x470
	.byte	0
	.uleb128 0x19
	.string	"fef"
	.byte	0x1
	.value	0x324
	.long	0x2b9
	.byte	0x4
	.uleb128 0x19
	.string	"lef"
	.byte	0x1
	.value	0x324
	.long	0x2b9
	.byte	0x8
	.uleb128 0x9
	.long	.LASF284
	.byte	0x1
	.value	0x325
	.long	0x2b9
	.byte	0xc
	.uleb128 0x9
	.long	.LASF285
	.byte	0x1
	.value	0x326
	.long	0x39c
	.byte	0x10
	.byte	0
	.uleb128 0x1a
	.long	.LASF286
	.byte	0x1
	.value	0x327
	.long	0x1467
	.uleb128 0x1b
	.long	.LASF287
	.byte	0x1
	.byte	0x42
	.long	0x156a
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x156a
	.uleb128 0x1c
	.string	"kbc"
	.byte	0x1
	.byte	0x42
	.long	0x1570
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1d
	.long	.LASF278
	.byte	0x1
	.byte	0x42
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x1d
	.long	.LASF277
	.byte	0x1
	.byte	0x42
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1e
	.string	"vh"
	.byte	0x1
	.byte	0x44
	.long	0x156a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1e
	.string	"lm"
	.byte	0x1
	.byte	0x45
	.long	0xf2e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1f
	.long	.LASF254
	.byte	0x1
	.byte	0x46
	.long	0x121e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1f
	.long	.LASF161
	.byte	0x1
	.byte	0x47
	.long	0xa6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1e
	.string	"wp"
	.byte	0x1
	.byte	0x48
	.long	0x1576
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1e
	.string	"i"
	.byte	0x1
	.byte	0x49
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1e
	.string	"max"
	.byte	0x1
	.byte	0x4b
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x145c
	.uleb128 0x6
	.byte	0x8
	.long	0x1242
	.uleb128 0x6
	.byte	0x8
	.long	0xf63
	.uleb128 0x20
	.long	.LASF289
	.byte	0x1
	.byte	0x7a
	.long	0x13b8
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x15d0
	.uleb128 0x1c
	.string	"vh"
	.byte	0x1
	.byte	0x7a
	.long	0x156a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1e
	.string	"b"
	.byte	0x1
	.byte	0x7c
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1e
	.string	"l"
	.byte	0x1
	.byte	0x7c
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1e
	.string	"ve"
	.byte	0x1
	.byte	0x7d
	.long	0x13b8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1b
	.long	.LASF288
	.byte	0x1
	.byte	0x93
	.long	0x2b9
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x1635
	.uleb128 0x1c
	.string	"vh"
	.byte	0x1
	.byte	0x93
	.long	0x156a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1c
	.string	"kbc"
	.byte	0x1
	.byte	0x93
	.long	0x1570
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1e
	.string	"ve"
	.byte	0x1
	.byte	0x95
	.long	0x13b8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1e
	.string	"lm"
	.byte	0x1
	.byte	0x96
	.long	0xf2e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1f
	.long	.LASF161
	.byte	0x1
	.byte	0x97
	.long	0xa6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x21
	.long	.LASF290
	.byte	0x1
	.byte	0xb8
	.long	0x2b9
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x169b
	.uleb128 0x1c
	.string	"vh"
	.byte	0x1
	.byte	0xb8
	.long	0x156a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1c
	.string	"lms"
	.byte	0x1
	.byte	0xb8
	.long	0x169b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1f
	.long	.LASF291
	.byte	0x1
	.byte	0xba
	.long	0x1456
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1f
	.long	.LASF185
	.byte	0x1
	.byte	0xbb
	.long	0x47b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0x1e
	.string	"gn"
	.byte	0x1
	.byte	0xbc
	.long	0x3a7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x12eb
	.uleb128 0x22
	.long	.LASF294
	.byte	0x1
	.byte	0xd3
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x1712
	.uleb128 0x1c
	.string	"vh"
	.byte	0x1
	.byte	0xd3
	.long	0x156a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1d
	.long	.LASF259
	.byte	0x1
	.byte	0xd3
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1c
	.string	"ve"
	.byte	0x1
	.byte	0xd3
	.long	0x13b8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1f
	.long	.LASF291
	.byte	0x1
	.byte	0xd5
	.long	0x1456
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1f
	.long	.LASF292
	.byte	0x1
	.byte	0xd5
	.long	0x1456
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1f
	.long	.LASF185
	.byte	0x1
	.byte	0xd6
	.long	0x47b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.byte	0
	.uleb128 0x23
	.long	.LASF293
	.byte	0x1
	.byte	0xef
	.long	0x13b8
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x175b
	.uleb128 0x1c
	.string	"vh"
	.byte	0x1
	.byte	0xef
	.long	0x156a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1c
	.string	"id"
	.byte	0x1
	.byte	0xef
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1e
	.string	"ve"
	.byte	0x1
	.byte	0xf1
	.long	0x13b8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x22
	.long	.LASF295
	.byte	0x1
	.byte	0xf8
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x17bd
	.uleb128 0x1c
	.string	"vh"
	.byte	0x1
	.byte	0xf8
	.long	0x156a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1c
	.string	"kbc"
	.byte	0x1
	.byte	0xf8
	.long	0x1570
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1c
	.string	"tve"
	.byte	0x1
	.byte	0xf8
	.long	0x13b8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1e
	.string	"ve"
	.byte	0x1
	.byte	0xfa
	.long	0x13b8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1f
	.long	.LASF259
	.byte	0x1
	.byte	0xfb
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x24
	.long	.LASF297
	.byte	0x1
	.value	0x114
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x18a4
	.uleb128 0x25
	.string	"vh"
	.byte	0x1
	.value	0x114
	.long	0x156a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x25
	.string	"kbc"
	.byte	0x1
	.value	0x114
	.long	0x1570
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x25
	.string	"wid"
	.byte	0x1
	.value	0x115
	.long	0x470
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x25
	.string	"ef"
	.byte	0x1
	.value	0x115
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x26
	.long	.LASF265
	.byte	0x1
	.value	0x115
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x26
	.long	.LASF266
	.byte	0x1
	.value	0x115
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x26
	.long	.LASF261
	.byte	0x1
	.value	0x115
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x27
	.string	"pve"
	.byte	0x1
	.value	0x117
	.long	0x13b8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x27
	.string	"tve"
	.byte	0x1
	.value	0x117
	.long	0x1375
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x28
	.long	.LASF185
	.byte	0x1
	.value	0x118
	.long	0x47b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -86
	.uleb128 0x27
	.string	"se"
	.byte	0x1
	.value	0x119
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x27
	.string	"fe"
	.byte	0x1
	.value	0x119
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x27
	.string	"i"
	.byte	0x1
	.value	0x11a
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.byte	0
	.uleb128 0x29
	.long	.LASF296
	.byte	0x1
	.value	0x15e
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x195f
	.uleb128 0x25
	.string	"vh"
	.byte	0x1
	.value	0x15e
	.long	0x156a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x25
	.string	"frm"
	.byte	0x1
	.value	0x15e
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x27
	.string	"ve"
	.byte	0x1
	.value	0x160
	.long	0x13b8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x27
	.string	"tve"
	.byte	0x1
	.value	0x160
	.long	0x13b8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x27
	.string	"se"
	.byte	0x1
	.value	0x161
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x27
	.string	"fe"
	.byte	0x1
	.value	0x161
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x27
	.string	"te"
	.byte	0x1
	.value	0x161
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x27
	.string	"bs"
	.byte	0x1
	.value	0x161
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x27
	.string	"bv"
	.byte	0x1
	.value	0x161
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x27
	.string	"i"
	.byte	0x1
	.value	0x162
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x27
	.string	"j"
	.byte	0x1
	.value	0x162
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x24
	.long	.LASF298
	.byte	0x1
	.value	0x189
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x1a4d
	.uleb128 0x25
	.string	"vh"
	.byte	0x1
	.value	0x189
	.long	0x156a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x26
	.long	.LASF161
	.byte	0x1
	.value	0x189
	.long	0xa6b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x25
	.string	"frm"
	.byte	0x1
	.value	0x189
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x26
	.long	.LASF299
	.byte	0x1
	.value	0x18a
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x26
	.long	.LASF300
	.byte	0x1
	.value	0x18a
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x26
	.long	.LASF301
	.byte	0x1
	.value	0x18a
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x27
	.string	"se"
	.byte	0x1
	.value	0x18c
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x27
	.string	"fe"
	.byte	0x1
	.value	0x18c
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x28
	.long	.LASF302
	.byte	0x1
	.value	0x18c
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x27
	.string	"th"
	.byte	0x1
	.value	0x18c
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x27
	.string	"ve"
	.byte	0x1
	.value	0x18d
	.long	0x13b8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x27
	.string	"h"
	.byte	0x1
	.value	0x18e
	.long	0x439
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x27
	.string	"wid"
	.byte	0x1
	.value	0x18f
	.long	0x8cf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x27
	.string	"i"
	.byte	0x1
	.value	0x190
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.byte	0
	.uleb128 0x29
	.long	.LASF303
	.byte	0x1
	.value	0x1c7
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x1ac3
	.uleb128 0x25
	.string	"vh"
	.byte	0x1
	.value	0x1c7
	.long	0x156a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x27
	.string	"lgn"
	.byte	0x1
	.value	0x1c9
	.long	0x3a7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x27
	.string	"gn"
	.byte	0x1
	.value	0x1c9
	.long	0x3a7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x27
	.string	"i"
	.byte	0x1
	.value	0x1ca
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x28
	.long	.LASF291
	.byte	0x1
	.value	0x1cb
	.long	0x1456
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x28
	.long	.LASF292
	.byte	0x1
	.value	0x1cb
	.long	0x1456
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x24
	.long	.LASF304
	.byte	0x1
	.value	0x1e1
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x1b1c
	.uleb128 0x25
	.string	"vh"
	.byte	0x1
	.value	0x1e1
	.long	0x156a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x25
	.string	"frm"
	.byte	0x1
	.value	0x1e1
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x25
	.string	"fp"
	.byte	0x1
	.value	0x1e1
	.long	0xee7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x25
	.string	"kbc"
	.byte	0x1
	.value	0x1e1
	.long	0x1570
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x2a
	.long	.LASF305
	.byte	0x1
	.value	0x1f1
	.long	0x2b9
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0x1c3b
	.uleb128 0x25
	.string	"vh"
	.byte	0x1
	.value	0x1f1
	.long	0x156a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x25
	.string	"kbc"
	.byte	0x1
	.value	0x1f1
	.long	0x1570
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x27
	.string	"f"
	.byte	0x1
	.value	0x1f3
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x27
	.string	"i"
	.byte	0x1
	.value	0x1f3
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x27
	.string	"b"
	.byte	0x1
	.value	0x1f3
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x27
	.string	"l"
	.byte	0x1
	.value	0x1f3
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x27
	.string	"sv"
	.byte	0x1
	.value	0x1f4
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x27
	.string	"nsv"
	.byte	0x1
	.value	0x1f4
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x27
	.string	"scr"
	.byte	0x1
	.value	0x1f4
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x28
	.long	.LASF279
	.byte	0x1
	.value	0x1f4
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x28
	.long	.LASF280
	.byte	0x1
	.value	0x1f4
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x28
	.long	.LASF259
	.byte	0x1
	.value	0x1f4
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x27
	.string	"ve"
	.byte	0x1
	.value	0x1f5
	.long	0x13b8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x28
	.long	.LASF306
	.byte	0x1
	.value	0x1f5
	.long	0x13b8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x28
	.long	.LASF307
	.byte	0x1
	.value	0x1f6
	.long	0x47b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -90
	.uleb128 0x27
	.string	"lm"
	.byte	0x1
	.value	0x1f7
	.long	0xf2e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.long	.LASF161
	.byte	0x1
	.value	0x1f8
	.long	0xa6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x2a
	.long	.LASF308
	.byte	0x1
	.value	0x246
	.long	0x2b9
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0x1d4a
	.uleb128 0x25
	.string	"vh"
	.byte	0x1
	.value	0x246
	.long	0x156a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x25
	.string	"kbc"
	.byte	0x1
	.value	0x246
	.long	0x1570
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x27
	.string	"f"
	.byte	0x1
	.value	0x248
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x27
	.string	"i"
	.byte	0x1
	.value	0x248
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x27
	.string	"b"
	.byte	0x1
	.value	0x248
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x27
	.string	"l"
	.byte	0x1
	.value	0x248
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x27
	.string	"sv"
	.byte	0x1
	.value	0x249
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x27
	.string	"nsv"
	.byte	0x1
	.value	0x249
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x27
	.string	"scr"
	.byte	0x1
	.value	0x249
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x28
	.long	.LASF279
	.byte	0x1
	.value	0x249
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x28
	.long	.LASF280
	.byte	0x1
	.value	0x249
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x27
	.string	"ve"
	.byte	0x1
	.value	0x24a
	.long	0x13b8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x28
	.long	.LASF306
	.byte	0x1
	.value	0x24a
	.long	0x13b8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x28
	.long	.LASF307
	.byte	0x1
	.value	0x24b
	.long	0x47b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -86
	.uleb128 0x27
	.string	"lm"
	.byte	0x1
	.value	0x24c
	.long	0xf2e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x28
	.long	.LASF161
	.byte	0x1
	.value	0x24d
	.long	0xa6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x24
	.long	.LASF309
	.byte	0x1
	.value	0x27c
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0x1d84
	.uleb128 0x25
	.string	"vh"
	.byte	0x1
	.value	0x27c
	.long	0x156a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x27
	.string	"b"
	.byte	0x1
	.value	0x27e
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x24
	.long	.LASF310
	.byte	0x1
	.value	0x2c5
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0x1e70
	.uleb128 0x25
	.string	"vh"
	.byte	0x1
	.value	0x2c5
	.long	0x156a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x25
	.string	"frm"
	.byte	0x1
	.value	0x2c5
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x25
	.string	"kbc"
	.byte	0x1
	.value	0x2c5
	.long	0x1570
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x25
	.string	"fp"
	.byte	0x1
	.value	0x2c5
	.long	0xee7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x27
	.string	"b"
	.byte	0x1
	.value	0x2c7
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x27
	.string	"l"
	.byte	0x1
	.value	0x2c7
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x27
	.string	"i"
	.byte	0x1
	.value	0x2c7
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x27
	.string	"j"
	.byte	0x1
	.value	0x2c7
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x28
	.long	.LASF161
	.byte	0x1
	.value	0x2c8
	.long	0xa6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x27
	.string	"lm"
	.byte	0x1
	.value	0x2c9
	.long	0xf2e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x27
	.string	"ve"
	.byte	0x1
	.value	0x2ca
	.long	0x13b8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.long	.LASF185
	.byte	0x1
	.value	0x2cb
	.long	0x47b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -82
	.uleb128 0x27
	.string	"sf"
	.byte	0x1
	.value	0x2cc
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x27
	.string	"ef"
	.byte	0x1
	.value	0x2cc
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.byte	0
	.uleb128 0x2a
	.long	.LASF311
	.byte	0x1
	.value	0x302
	.long	0x39c
	.quad	.LFB18
	.quad	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0x1ef3
	.uleb128 0x25
	.string	"vh"
	.byte	0x1
	.value	0x302
	.long	0x156a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x25
	.string	"id"
	.byte	0x1
	.value	0x302
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x27
	.string	"ve"
	.byte	0x1
	.value	0x304
	.long	0x13b8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x27
	.string	"b"
	.byte	0x1
	.value	0x305
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x27
	.string	"l"
	.byte	0x1
	.value	0x305
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x27
	.string	"hyp"
	.byte	0x1
	.value	0x306
	.long	0x39c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x27
	.string	"h"
	.byte	0x1
	.value	0x307
	.long	0x1ef3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x12a7
	.uleb128 0x24
	.long	.LASF312
	.byte	0x1
	.value	0x32d
	.quad	.LFB19
	.quad	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0x2037
	.uleb128 0x25
	.string	"vh"
	.byte	0x1
	.value	0x32d
	.long	0x156a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x25
	.string	"hyp"
	.byte	0x1
	.value	0x32d
	.long	0x39c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x26
	.long	.LASF161
	.byte	0x1
	.value	0x32d
	.long	0xa6b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x26
	.long	.LASF313
	.byte	0x1
	.value	0x32d
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -156
	.uleb128 0x25
	.string	"fp"
	.byte	0x1
	.value	0x32d
	.long	0xee7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x28
	.long	.LASF314
	.byte	0x1
	.value	0x32f
	.long	0x2037
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x27
	.string	"ve"
	.byte	0x1
	.value	0x330
	.long	0x13b8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x27
	.string	"ve2"
	.byte	0x1
	.value	0x330
	.long	0x13b8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x27
	.string	"gn"
	.byte	0x1
	.value	0x331
	.long	0x3a7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x27
	.string	"gn2"
	.byte	0x1
	.value	0x331
	.long	0x3a7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x27
	.string	"gn3"
	.byte	0x1
	.value	0x331
	.long	0x3a7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x27
	.string	"dn"
	.byte	0x1
	.value	0x332
	.long	0x203d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x27
	.string	"dn2"
	.byte	0x1
	.value	0x332
	.long	0x203d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x27
	.string	"sf"
	.byte	0x1
	.value	0x333
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x27
	.string	"ef"
	.byte	0x1
	.value	0x333
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x28
	.long	.LASF315
	.byte	0x1
	.value	0x333
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x27
	.string	"f"
	.byte	0x1
	.value	0x334
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x27
	.string	"i"
	.byte	0x1
	.value	0x334
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x27
	.string	"h"
	.byte	0x1
	.value	0x335
	.long	0x1ef3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x39c
	.uleb128 0x6
	.byte	0x8
	.long	0x14b2
	.uleb128 0x2b
	.long	.LASF321
	.byte	0x1
	.value	0x3de
	.quad	.LFB20
	.quad	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x25
	.string	"v"
	.byte	0x1
	.value	0x3de
	.long	0x156a
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
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.uleb128 0x2b
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
.LASF246:
	.string	"n_code"
.LASF10:
	.string	"sizetype"
.LASF292:
	.string	"child"
.LASF129:
	.string	"sseq"
.LASF298:
	.string	"vithist_prune"
.LASF200:
	.string	"tgprob"
.LASF180:
	.string	"used"
.LASF138:
	.string	"basewid"
.LASF79:
	.string	"s3senid_t"
.LASF135:
	.string	"mdef_t"
.LASF286:
	.string	"dagnode_t"
.LASF161:
	.string	"dict"
.LASF24:
	.string	"_IO_save_end"
.LASF251:
	.string	"codemap"
.LASF54:
	.string	"uint32"
.LASF202:
	.string	"tg_segbase"
.LASF308:
	.string	"vithist_partialutt_end"
.LASF124:
	.string	"n_sen"
.LASF156:
	.string	"comsseq"
.LASF309:
	.string	"vithist_utt_reset"
.LASF17:
	.string	"_IO_write_base"
.LASF139:
	.string	"comp"
.LASF270:
	.string	"state"
.LASF314:
	.string	"sfwid"
.LASF33:
	.string	"_lock"
.LASF299:
	.string	"maxwpf"
.LASF296:
	.string	"vithist_frame_gc"
.LASF212:
	.string	"n_bg_score"
.LASF304:
	.string	"vithist_frame_windup"
.LASF261:
	.string	"type"
.LASF236:
	.string	"vqsize"
.LASF185:
	.string	"lwid"
.LASF22:
	.string	"_IO_save_base"
.LASF103:
	.string	"WORD_POSN_BEGIN"
.LASF102:
	.string	"mgau_model_t"
.LASF53:
	.string	"int8"
.LASF86:
	.string	"window_size"
.LASF26:
	.string	"_chain"
.LASF210:
	.string	"n_bg_fill"
.LASF271:
	.string	"children"
.LASF278:
	.string	"wbeam"
.LASF30:
	.string	"_cur_column"
.LASF97:
	.string	"mgau"
.LASF222:
	.string	"lmclass"
.LASF160:
	.string	"dict2pid_t"
.LASF82:
	.string	"cepsize"
.LASF94:
	.string	"n_mgau"
.LASF111:
	.string	"ssid"
.LASF243:
	.string	"subvq_t"
.LASF6:
	.string	"long int"
.LASF95:
	.string	"max_comp"
.LASF301:
	.string	"beam"
.LASF307:
	.string	"endwid"
.LASF238:
	.string	"gautbl"
.LASF142:
	.string	"ciphone_str"
.LASF70:
	.string	"hash_table_t"
.LASF257:
	.string	"n_alloclm"
.LASF43:
	.string	"_IO_marker"
.LASF57:
	.string	"float32"
.LASF207:
	.string	"bgoff"
.LASF127:
	.string	"ciphone"
.LASF112:
	.string	"tmat"
.LASF77:
	.string	"s3lmwid_t"
.LASF216:
	.string	"n_tg_score"
.LASF149:
	.string	"finishwid"
.LASF285:
	.string	"velist"
.LASF84:
	.string	"n_stream"
.LASF217:
	.string	"n_tg_bo"
.LASF4:
	.string	"signed char"
.LASF42:
	.string	"_IO_FILE"
.LASF241:
	.string	"gauscore"
.LASF114:
	.string	"phone_t"
.LASF264:
	.string	"vh_lmstate_t"
.LASF1:
	.string	"unsigned char"
.LASF157:
	.string	"comwt"
.LASF179:
	.string	"tg_t"
.LASF181:
	.string	"membg_t"
.LASF158:
	.string	"n_comstate"
.LASF287:
	.string	"vithist_init"
.LASF218:
	.string	"n_tgcache_hit"
.LASF311:
	.string	"vithist_backtrace"
.LASF265:
	.string	"score"
.LASF109:
	.string	"filler"
.LASF310:
	.string	"vithist_dump"
.LASF148:
	.string	"startwid"
.LASF196:
	.string	"bg_seg_sz"
.LASF67:
	.string	"table"
.LASF11:
	.string	"char"
.LASF173:
	.string	"firstbg"
.LASF76:
	.string	"s3wid_t"
.LASF248:
	.string	"n_featlen"
.LASF92:
	.string	"mixw"
.LASF169:
	.string	"wordlist"
.LASF234:
	.string	"origsize"
.LASF226:
	.string	"lmset_s"
.LASF227:
	.string	"lmset_t"
.LASF319:
	.string	"_IO_lock_t"
.LASF145:
	.string	"filler_start"
.LASF117:
	.string	"ph_lc_s"
.LASF119:
	.string	"ph_lc_t"
.LASF240:
	.string	"vqdist"
.LASF159:
	.string	"n_comsseq"
.LASF162:
	.string	"prob"
.LASF288:
	.string	"vithist_utt_begin"
.LASF263:
	.string	"lm3g"
.LASF306:
	.string	"bestve"
.LASF313:
	.string	"oldfmt"
.LASF14:
	.string	"_IO_read_ptr"
.LASF155:
	.string	"comstate"
.LASF130:
	.string	"n_sseq"
.LASF46:
	.string	"_pos"
.LASF115:
	.string	"ph_rc_s"
.LASF116:
	.string	"ph_rc_t"
.LASF262:
	.string	"hyp_t"
.LASF282:
	.string	"lwidlist"
.LASF99:
	.string	"frm_sen_eval"
.LASF146:
	.string	"filler_end"
.LASF25:
	.string	"_markers"
.LASF154:
	.string	"single_lc"
.LASF131:
	.string	"cd2cisen"
.LASF163:
	.string	"fillpen_t"
.LASF199:
	.string	"bgprob"
.LASF73:
	.string	"s3pid_t"
.LASF284:
	.string	"seqid"
.LASF223:
	.string	"n_lmclass"
.LASF211:
	.string	"n_bg_inmem"
.LASF320:
	.string	"anytype_s"
.LASF59:
	.string	"anytype_t"
.LASF256:
	.string	"n_lm"
.LASF34:
	.string	"_offset"
.LASF321:
	.string	"vithist_free"
.LASF214:
	.string	"n_tg_fill"
.LASF198:
	.string	"tginfo"
.LASF230:
	.string	"tmat_t"
.LASF297:
	.string	"vithist_rescore"
.LASF191:
	.string	"max_ug"
.LASF0:
	.string	"long unsigned int"
.LASF174:
	.string	"ug_t"
.LASF120:
	.string	"n_ciphone"
.LASF228:
	.string	"wordprob_t"
.LASF28:
	.string	"_flags2"
.LASF182:
	.string	"tginfo_s"
.LASF184:
	.string	"tginfo_t"
.LASF16:
	.string	"_IO_read_base"
.LASF140:
	.string	"dictword_t"
.LASF244:
	.string	"gs_s"
.LASF252:
	.string	"gs_t"
.LASF41:
	.string	"_unused2"
.LASF259:
	.string	"vhid"
.LASF254:
	.string	"lmset"
.LASF75:
	.string	"s3tmatid_t"
.LASF221:
	.string	"dict_size"
.LASF29:
	.string	"_old_offset"
.LASF215:
	.string	"n_tg_inmem"
.LASF71:
	.string	"heap_t"
.LASF108:
	.string	"word_posn_t"
.LASF205:
	.string	"n_tgbowt"
.LASF315:
	.string	"n_node"
.LASF164:
	.string	"lmclass_word_s"
.LASF167:
	.string	"lmclass_word_t"
.LASF293:
	.string	"vithist_id2entry"
.LASF47:
	.string	"long long int"
.LASF232:
	.string	"n_gau"
.LASF50:
	.string	"double"
.LASF152:
	.string	"internal"
.LASF134:
	.string	"wpos_ci_lclist"
.LASF19:
	.string	"_IO_write_end"
.LASF192:
	.string	"wordstr"
.LASF101:
	.string	"gau_type"
.LASF260:
	.string	"ascr"
.LASF49:
	.string	"float"
.LASF132:
	.string	"sen2cimap"
.LASF247:
	.string	"n_density"
.LASF20:
	.string	"_IO_buf_base"
.LASF237:
	.string	"featdim"
.LASF3:
	.string	"unsigned int"
.LASF106:
	.string	"WORD_POSN_INTERNAL"
.LASF151:
	.string	"dict_t"
.LASF104:
	.string	"WORD_POSN_END"
.LASF187:
	.string	"lm_tgcache_entry_t"
.LASF249:
	.string	"n_mbyte"
.LASF93:
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
.LASF242:
	.string	"mgau_sl"
.LASF283:
	.string	"vithist_t"
.LASF318:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/482.sphinx3/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF126:
	.string	"ciphone_ht"
.LASF272:
	.string	"vh_lms2vh_t"
.LASF13:
	.string	"_flags"
.LASF235:
	.string	"n_sv"
.LASF175:
	.string	"probid"
.LASF277:
	.string	"bghist"
.LASF40:
	.string	"_mode"
.LASF316:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF201:
	.string	"tgbowt"
.LASF186:
	.string	"lscr"
.LASF105:
	.string	"WORD_POSN_SINGLE"
.LASF183:
	.string	"n_tg"
.LASF141:
	.string	"mdef"
.LASF239:
	.string	"subvec"
.LASF231:
	.string	"arraysize_t"
.LASF136:
	.string	"word"
.LASF125:
	.string	"n_tmat"
.LASF12:
	.string	"FILE"
.LASF83:
	.string	"cepsize_used"
.LASF189:
	.string	"n_ug"
.LASF65:
	.string	"hash_entry_s"
.LASF66:
	.string	"hash_entry_t"
.LASF209:
	.string	"tgcache"
.LASF273:
	.string	"entry"
.LASF85:
	.string	"stream_len"
.LASF150:
	.string	"silwid"
.LASF253:
	.string	"dict2pid"
.LASF68:
	.string	"size"
.LASF48:
	.string	"long long unsigned int"
.LASF90:
	.string	"n_comp"
.LASF98:
	.string	"distfloor"
.LASF233:
	.string	"vector_gautbl_t"
.LASF8:
	.string	"__off_t"
.LASF219:
	.string	"access_type"
.LASF72:
	.string	"s3cipid_t"
.LASF91:
	.string	"mean"
.LASF110:
	.string	"ciphone_t"
.LASF208:
	.string	"tgoff"
.LASF268:
	.string	"lmstate"
.LASF118:
	.string	"rclist"
.LASF64:
	.string	"glist_t"
.LASF80:
	.string	"feat_s"
.LASF89:
	.string	"feat_t"
.LASF274:
	.string	"frame_start"
.LASF87:
	.string	"varnorm"
.LASF60:
	.string	"gnode_s"
.LASF63:
	.string	"gnode_t"
.LASF190:
	.string	"n_bg"
.LASF23:
	.string	"_IO_backup_base"
.LASF32:
	.string	"_shortbuf"
.LASF291:
	.string	"lms2vh"
.LASF188:
	.string	"lm_s"
.LASF225:
	.string	"lm_t"
.LASF165:
	.string	"dictwid"
.LASF153:
	.string	"ldiph_lc"
.LASF305:
	.string	"vithist_utt_end"
.LASF113:
	.string	"wpos"
.LASF88:
	.string	"compute_feat"
.LASF44:
	.string	"_next"
.LASF269:
	.string	"vithist_entry_t"
.LASF9:
	.string	"__off64_t"
.LASF128:
	.string	"phone"
.LASF195:
	.string	"log_bg_seg_sz"
.LASF147:
	.string	"comp_head"
.LASF123:
	.string	"n_ci_sen"
.LASF177:
	.string	"firsttg"
.LASF96:
	.string	"veclen"
.LASF21:
	.string	"_IO_buf_end"
.LASF193:
	.string	"startlwid"
.LASF245:
	.string	"n_feat"
.LASF171:
	.string	"lmlog_t"
.LASF81:
	.string	"name"
.LASF100:
	.string	"frm_gau_eval"
.LASF56:
	.string	"uint8"
.LASF275:
	.string	"n_entry"
.LASF5:
	.string	"short int"
.LASF302:
	.string	"filler_done"
.LASF176:
	.string	"bowtid"
.LASF166:
	.string	"LOGprob"
.LASF133:
	.string	"ciphone2n_cd_sen"
.LASF281:
	.string	"lms2vh_root"
.LASF300:
	.string	"maxhist"
.LASF280:
	.string	"bestvh"
.LASF78:
	.string	"s3frmid_t"
.LASF122:
	.string	"n_emit_state"
.LASF31:
	.string	"_vtable_offset"
.LASF294:
	.string	"vithist_lmstate_enter"
.LASF250:
	.string	"codeword"
.LASF276:
	.string	"n_frm"
.LASF267:
	.string	"valid"
.LASF203:
	.string	"n_bgprob"
.LASF52:
	.string	"int16"
.LASF74:
	.string	"s3ssid_t"
.LASF290:
	.string	"vh_lmstate_find"
.LASF255:
	.string	"fillpen"
.LASF15:
	.string	"_IO_read_end"
.LASF204:
	.string	"n_tgprob"
.LASF224:
	.string	"inclass_ugscore"
.LASF172:
	.string	"bowt"
.LASF229:
	.string	"n_state"
.LASF69:
	.string	"nocase"
.LASF168:
	.string	"lmclass_s"
.LASF170:
	.string	"lmclass_t"
.LASF312:
	.string	"vithist_dag_write"
.LASF27:
	.string	"_fileno"
.LASF107:
	.string	"WORD_POSN_UNDEFINED"
.LASF143:
	.string	"max_words"
.LASF279:
	.string	"bestscore"
.LASF58:
	.string	"float64"
.LASF220:
	.string	"dict2lmwid"
.LASF121:
	.string	"n_phone"
.LASF2:
	.string	"short unsigned int"
.LASF197:
	.string	"membg"
.LASF51:
	.string	"int32"
.LASF206:
	.string	"byteswap"
.LASF18:
	.string	"_IO_write_ptr"
.LASF289:
	.string	"vithist_entry_alloc"
.LASF178:
	.string	"bg_t"
.LASF194:
	.string	"finishlwid"
.LASF144:
	.string	"n_word"
.LASF137:
	.string	"pronlen"
.LASF258:
	.string	"kbcore_t"
.LASF266:
	.string	"pred"
.LASF62:
	.string	"next"
.LASF317:
	.string	"vithist.c"
.LASF213:
	.string	"n_bg_bo"
.LASF61:
	.string	"data"
.LASF55:
	.string	"uint16"
.LASF303:
	.string	"vithist_lmstate_reset"
.LASF295:
	.string	"vithist_enter"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
