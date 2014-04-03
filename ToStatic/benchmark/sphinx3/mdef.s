	.file	"mdef.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I . -I . -I libutil -imultiarch x86_64-linux-gnu
# -D SPEC_CPU -D NDEBUG -D SPEC_CPU -D HAVE_CONFIG_H -D SPEC_CPU_LP64
# mdef.c -mtune=generic -march=x86-64 -g -fverbose-asm -fno-strict-aliasing
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
	.string	"%d ciphone\n"
.LC1:
	.string	"%d phone\n"
.LC2:
	.string	"%d emitstate\n"
.LC3:
	.string	"%d cisen\n"
.LC4:
	.string	"%d sen\n"
.LC5:
	.string	"%d tmat\n"
.LC6:
	.string	"%3d %5d"
.LC7:
	.string	" %5d"
.LC8:
	.string	" %3d"
.LC9:
	.string	"\t%s\n"
	.text
	.globl	mdef_dump
	.type	mdef_dump, @function
mdef_dump:
.LFB2:
	.file 1 "mdef.c"
	.loc 1 88 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$1072, %rsp	#,
	movq	%rdi, -1064(%rbp)	# fp, fp
	movq	%rsi, -1072(%rbp)	# m, m
	.loc 1 88 0
	movq	%fs:40, %rax	#, tmp140
	movq	%rax, -8(%rbp)	# tmp140, D.6235
	xorl	%eax, %eax	# tmp140
	.loc 1 93 0
	movq	-1072(%rbp), %rax	# m, tmp102
	movl	(%rax), %edx	# m_4(D)->n_ciphone, D.6229
	movq	-1064(%rbp), %rax	# fp, tmp103
	movl	$.LC0, %esi	#,
	movq	%rax, %rdi	# tmp103,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 94 0
	movq	-1072(%rbp), %rax	# m, tmp104
	movl	4(%rax), %edx	# m_4(D)->n_phone, D.6229
	movq	-1064(%rbp), %rax	# fp, tmp105
	movl	$.LC1, %esi	#,
	movq	%rax, %rdi	# tmp105,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 95 0
	movq	-1072(%rbp), %rax	# m, tmp106
	movl	8(%rax), %edx	# m_4(D)->n_emit_state, D.6229
	movq	-1064(%rbp), %rax	# fp, tmp107
	movl	$.LC2, %esi	#,
	movq	%rax, %rdi	# tmp107,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 96 0
	movq	-1072(%rbp), %rax	# m, tmp108
	movl	12(%rax), %edx	# m_4(D)->n_ci_sen, D.6229
	movq	-1064(%rbp), %rax	# fp, tmp109
	movl	$.LC3, %esi	#,
	movq	%rax, %rdi	# tmp109,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 97 0
	movq	-1072(%rbp), %rax	# m, tmp110
	movl	16(%rax), %edx	# m_4(D)->n_sen, D.6229
	movq	-1064(%rbp), %rax	# fp, tmp111
	movl	$.LC4, %esi	#,
	movq	%rax, %rdi	# tmp111,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 98 0
	movq	-1072(%rbp), %rax	# m, tmp112
	movl	20(%rax), %edx	# m_4(D)->n_tmat, D.6229
	movq	-1064(%rbp), %rax	# fp, tmp113
	movl	$.LC5, %esi	#,
	movq	%rax, %rdi	# tmp113,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 100 0
	movl	$0, -1052(%rbp)	#, i
	jmp	.L2	#
.L7:
	.loc 1 101 0
	leaq	-1040(%rbp), %rdx	#, tmp114
	movl	-1052(%rbp), %ecx	# i, tmp115
	movq	-1072(%rbp), %rax	# m, tmp116
	movl	%ecx, %esi	# tmp115,
	movq	%rax, %rdi	# tmp116,
	call	mdef_phone_str	#
	.loc 1 102 0
	movq	-1072(%rbp), %rax	# m, tmp117
	movq	40(%rax), %rax	# m_4(D)->phone, D.6230
	movl	-1052(%rbp), %edx	# i, tmp118
	movslq	%edx, %rdx	# tmp118, D.6231
	salq	$4, %rdx	#, D.6231
	addq	%rdx, %rax	# D.6231, D.6230
	movl	(%rax), %eax	# _17->ssid, tmp119
	movl	%eax, -1044(%rbp)	# tmp119, ssid
	.loc 1 104 0
	movq	-1072(%rbp), %rax	# m, tmp120
	movq	40(%rax), %rax	# m_4(D)->phone, D.6230
	movl	-1052(%rbp), %edx	# i, tmp121
	movslq	%edx, %rdx	# tmp121, D.6231
	salq	$4, %rdx	#, D.6231
	addq	%rdx, %rax	# D.6231, D.6230
	movl	4(%rax), %edx	# _22->tmat, D.6229
	movl	-1044(%rbp), %ecx	# ssid, tmp122
	movq	-1064(%rbp), %rax	# fp, tmp123
	movl	$.LC6, %esi	#,
	movq	%rax, %rdi	# tmp123,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 105 0
	movl	$0, -1048(%rbp)	#, j
	jmp	.L3	#
.L4:
	.loc 1 106 0 discriminator 2
	movq	-1072(%rbp), %rax	# m, tmp124
	movq	48(%rax), %rax	# m_4(D)->sseq, D.6232
	movl	-1044(%rbp), %edx	# ssid, tmp125
	movslq	%edx, %rdx	# tmp125, D.6231
	salq	$3, %rdx	#, D.6231
	addq	%rdx, %rax	# D.6231, D.6232
	movq	(%rax), %rax	# *_29, D.6233
	movl	-1048(%rbp), %edx	# j, tmp126
	movslq	%edx, %rdx	# tmp126, D.6231
	addq	%rdx, %rdx	# D.6231
	addq	%rdx, %rax	# D.6231, D.6233
	movzwl	(%rax), %eax	# *_33, D.6234
	movswl	%ax, %edx	# D.6234, D.6229
	movq	-1064(%rbp), %rax	# fp, tmp127
	movl	$.LC7, %esi	#,
	movq	%rax, %rdi	# tmp127,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 105 0 discriminator 2
	addl	$1, -1048(%rbp)	#, j
.L3:
	.loc 1 105 0 is_stmt 0 discriminator 1
	movq	-1072(%rbp), %rax	# m, tmp128
	movl	8(%rax), %eax	# m_4(D)->n_emit_state, D.6229
	cmpl	-1048(%rbp), %eax	# j, D.6229
	jg	.L4	#,
	.loc 1 107 0 is_stmt 1
	movq	-1064(%rbp), %rax	# fp, tmp129
	movq	%rax, %rsi	# tmp129,
	movl	$9, %edi	#,
	call	fputc	#
	.loc 1 108 0
	movl	$0, -1048(%rbp)	#, j
	jmp	.L5	#
.L6:
	.loc 1 109 0 discriminator 2
	movq	-1072(%rbp), %rax	# m, tmp130
	movq	64(%rax), %rdx	# m_4(D)->cd2cisen, D.6233
	movq	-1072(%rbp), %rax	# m, tmp131
	movq	48(%rax), %rax	# m_4(D)->sseq, D.6232
	movl	-1044(%rbp), %ecx	# ssid, tmp132
	movslq	%ecx, %rcx	# tmp132, D.6231
	salq	$3, %rcx	#, D.6231
	addq	%rcx, %rax	# D.6231, D.6232
	movq	(%rax), %rax	# *_43, D.6233
	movl	-1048(%rbp), %ecx	# j, tmp133
	movslq	%ecx, %rcx	# tmp133, D.6231
	addq	%rcx, %rcx	# D.6231
	addq	%rcx, %rax	# D.6231, D.6233
	movzwl	(%rax), %eax	# *_47, D.6234
	movswq	%ax, %rax	# D.6234, D.6231
	addq	%rax, %rax	# D.6231
	addq	%rdx, %rax	# D.6233, D.6233
	movzwl	(%rax), %eax	# *_51, D.6234
	movswl	%ax, %edx	# D.6234, D.6229
	movq	-1064(%rbp), %rax	# fp, tmp134
	movl	$.LC8, %esi	#,
	movq	%rax, %rdi	# tmp134,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 108 0 discriminator 2
	addl	$1, -1048(%rbp)	#, j
.L5:
	.loc 1 108 0 is_stmt 0 discriminator 1
	movq	-1072(%rbp), %rax	# m, tmp135
	movl	8(%rax), %eax	# m_4(D)->n_emit_state, D.6229
	cmpl	-1048(%rbp), %eax	# j, D.6229
	jg	.L6	#,
	.loc 1 110 0 is_stmt 1
	leaq	-1040(%rbp), %rdx	#, tmp136
	movq	-1064(%rbp), %rax	# fp, tmp137
	movl	$.LC9, %esi	#,
	movq	%rax, %rdi	# tmp137,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 100 0
	addl	$1, -1052(%rbp)	#, i
.L2:
	.loc 1 100 0 is_stmt 0 discriminator 1
	movq	-1072(%rbp), %rax	# m, tmp138
	movl	4(%rax), %eax	# m_4(D)->n_phone, D.6229
	cmpl	-1052(%rbp), %eax	# i, D.6229
	jg	.L7	#,
	.loc 1 113 0 is_stmt 1
	movq	-1064(%rbp), %rax	# fp, tmp139
	movq	%rax, %rdi	# tmp139,
	call	fflush	#
	.loc 1 114 0
	movq	-8(%rbp), %rax	# D.6235, tmp141
	xorq	%fs:40, %rax	#, tmp141
	je	.L8	#,
	call	__stack_chk_fail	#
.L8:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	mdef_dump, .-mdef_dump
	.section	.rodata
.LC10:
	.string	"mdef.c"
.LC11:
	.string	"FATAL_ERROR"
	.align 8
.LC12:
	.string	"hash_enter(%s) failed; duplicate CIphone?\n"
	.text
	.type	ciphone_add, @function
ciphone_add:
.LFB3:
	.loc 1 135 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$40, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)	# m, m
	movq	%rsi, -32(%rbp)	# ci, ci
	movl	%edx, -36(%rbp)	# p, p
	.loc 1 138 0
	movq	-24(%rbp), %rax	# m, tmp76
	movq	32(%rax), %rax	# m_1(D)->ciphone, D.6248
	movl	-36(%rbp), %edx	# p, tmp77
	movslq	%edx, %rdx	# tmp77, D.6249
	salq	$4, %rdx	#, D.6249
	leaq	(%rax,%rdx), %rbx	#, D.6248
	movq	-32(%rbp), %rax	# ci, tmp78
	movl	$138, %edx	#,
	movl	$.LC10, %esi	#,
	movq	%rax, %rdi	# tmp78,
	call	__ckd_salloc__	#
	movq	%rax, (%rbx)	# D.6250, _6->name
	.loc 1 139 0
	movq	-24(%rbp), %rax	# m, tmp79
	movq	32(%rax), %rax	# m_1(D)->ciphone, D.6248
	movl	-36(%rbp), %edx	# p, tmp80
	movslq	%edx, %rdx	# tmp80, D.6249
	salq	$4, %rdx	#, D.6249
	addq	%rdx, %rax	# D.6249, D.6248
	movq	(%rax), %rcx	# _12->name, D.6250
	movq	-24(%rbp), %rax	# m, tmp81
	movq	24(%rax), %rax	# m_1(D)->ciphone_ht, D.6251
	movl	-36(%rbp), %edx	# p, tmp82
	movq	%rcx, %rsi	# D.6250,
	movq	%rax, %rdi	# D.6251,
	call	hash_enter	#
	cmpl	-36(%rbp), %eax	# p, D.6252
	je	.L9	#,
	.loc 1 140 0
	movl	$.LC11, %edx	#,
	movl	$140, %esi	#,
	movl	$.LC10, %edi	#,
	call	_E__pr_header	#
	movq	-24(%rbp), %rax	# m, tmp83
	movq	32(%rax), %rax	# m_1(D)->ciphone, D.6248
	movl	-36(%rbp), %edx	# p, tmp84
	movslq	%edx, %rdx	# tmp84, D.6249
	salq	$4, %rdx	#, D.6249
	addq	%rdx, %rax	# D.6249, D.6248
	movq	(%rax), %rax	# _19->name, D.6250
	movq	%rax, %rsi	# D.6250,
	movl	$.LC12, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L9:
	.loc 1 141 0
	addq	$40, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	ciphone_add, .-ciphone_add
	.type	find_ph_lc, @function
find_ph_lc:
.LFB4:
	.loc 1 145 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# lclist, lclist
	movl	%esi, %eax	# lc, tmp62
	movb	%al, -28(%rbp)	# tmp62, lc
	.loc 1 148 0
	movq	-24(%rbp), %rax	# lclist, tmp63
	movq	%rax, -8(%rbp)	# tmp63, lcptr
	jmp	.L12	#
.L14:
	.loc 1 148 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# lcptr, tmp64
	movq	16(%rax), %rax	# lcptr_1->next, tmp65
	movq	%rax, -8(%rbp)	# tmp65, lcptr
.L12:
	cmpq	$0, -8(%rbp)	#, lcptr
	je	.L13	#,
	.loc 1 148 0 discriminator 2
	movq	-8(%rbp), %rax	# lcptr, tmp66
	movzbl	(%rax), %eax	# lcptr_1->lc, D.6256
	cmpb	-28(%rbp), %al	# lc, D.6256
	jne	.L14	#,
.L13:
	.loc 1 149 0 is_stmt 1
	movq	-8(%rbp), %rax	# lcptr, D.6257
	.loc 1 150 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	find_ph_lc, .-find_ph_lc
	.type	find_ph_rc, @function
find_ph_rc:
.LFB5:
	.loc 1 154 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# rclist, rclist
	movl	%esi, %eax	# rc, tmp62
	movb	%al, -28(%rbp)	# tmp62, rc
	.loc 1 157 0
	movq	-24(%rbp), %rax	# rclist, tmp63
	movq	%rax, -8(%rbp)	# tmp63, rcptr
	jmp	.L17	#
.L19:
	.loc 1 157 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# rcptr, tmp64
	movq	8(%rax), %rax	# rcptr_1->next, tmp65
	movq	%rax, -8(%rbp)	# tmp65, rcptr
.L17:
	cmpq	$0, -8(%rbp)	#, rcptr
	je	.L18	#,
	.loc 1 157 0 discriminator 2
	movq	-8(%rbp), %rax	# rcptr, tmp66
	movzbl	(%rax), %eax	# rcptr_1->rc, D.6258
	cmpb	-28(%rbp), %al	# rc, D.6258
	jne	.L19	#,
.L18:
	.loc 1 158 0 is_stmt 1
	movq	-8(%rbp), %rax	# rcptr, D.6259
	.loc 1 159 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	find_ph_rc, .-find_ph_rc
	.section	.rodata
.LC13:
	.string	"Duplicate triphone: %s\n"
	.text
	.type	triphone_add, @function
triphone_add:
.LFB6:
	.loc 1 165 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$4160, %rsp	#,
	movq	%rdi, -4136(%rbp)	# m, m
	movl	%ecx, %eax	# rc, tmp109
	movl	%r8d, -4152(%rbp)	# wpos, wpos
	movl	%r9d, -4156(%rbp)	# p, p
	movb	%sil, -4140(%rbp)	# tmp107, ci
	movb	%dl, -4144(%rbp)	# tmp108, lc
	movb	%al, -4148(%rbp)	# tmp109, rc
	.loc 1 165 0
	movq	%fs:40, %rax	#, tmp147
	movq	%rax, -8(%rbp)	# tmp147, D.6267
	xorl	%eax, %eax	# tmp147
	.loc 1 172 0
	movq	-4136(%rbp), %rax	# m, tmp110
	movq	40(%rax), %rax	# m_2(D)->phone, D.6260
	movl	-4156(%rbp), %edx	# p, tmp111
	movslq	%edx, %rdx	# tmp111, D.6261
	salq	$4, %rdx	#, D.6261
	addq	%rax, %rdx	# D.6260, D.6260
	movzbl	-4140(%rbp), %eax	# ci, tmp112
	movb	%al, 8(%rdx)	# tmp112, _7->ci
	.loc 1 173 0
	movq	-4136(%rbp), %rax	# m, tmp113
	movq	40(%rax), %rax	# m_2(D)->phone, D.6260
	movl	-4156(%rbp), %edx	# p, tmp114
	movslq	%edx, %rdx	# tmp114, D.6261
	salq	$4, %rdx	#, D.6261
	addq	%rax, %rdx	# D.6260, D.6260
	movzbl	-4144(%rbp), %eax	# lc, tmp115
	movb	%al, 9(%rdx)	# tmp115, _12->lc
	.loc 1 174 0
	movq	-4136(%rbp), %rax	# m, tmp116
	movq	40(%rax), %rax	# m_2(D)->phone, D.6260
	movl	-4156(%rbp), %edx	# p, tmp117
	movslq	%edx, %rdx	# tmp117, D.6261
	salq	$4, %rdx	#, D.6261
	addq	%rax, %rdx	# D.6260, D.6260
	movzbl	-4148(%rbp), %eax	# rc, tmp118
	movb	%al, 10(%rdx)	# tmp118, _17->rc
	.loc 1 175 0
	movq	-4136(%rbp), %rax	# m, tmp119
	movq	40(%rax), %rax	# m_2(D)->phone, D.6260
	movl	-4156(%rbp), %edx	# p, tmp120
	movslq	%edx, %rdx	# tmp120, D.6261
	salq	$4, %rdx	#, D.6261
	addq	%rax, %rdx	# D.6260, D.6260
	movl	-4152(%rbp), %eax	# wpos, tmp121
	movl	%eax, 12(%rdx)	# tmp121, _22->wpos
	.loc 1 178 0
	movq	-4136(%rbp), %rax	# m, tmp122
	movl	(%rax), %eax	# m_2(D)->n_ciphone, D.6262
	cmpl	-4156(%rbp), %eax	# p, D.6262
	jg	.L21	#,
	.loc 1 179 0
	movsbl	-4144(%rbp), %edx	# lc, D.6262
	movq	-4136(%rbp), %rax	# m, tmp123
	movq	96(%rax), %rax	# m_2(D)->wpos_ci_lclist, D.6263
	movl	-4152(%rbp), %ecx	# wpos, D.6261
	salq	$3, %rcx	#, D.6261
	addq	%rcx, %rax	# D.6261, D.6263
	movq	(%rax), %rax	# *_29, D.6264
	movsbq	-4140(%rbp), %rcx	# ci, D.6261
	salq	$3, %rcx	#, D.6261
	addq	%rcx, %rax	# D.6261, D.6264
	movq	(%rax), %rax	# *_33, D.6265
	movl	%edx, %esi	# D.6262,
	movq	%rax, %rdi	# D.6265,
	call	find_ph_lc	#
	movq	%rax, -4128(%rbp)	# tmp124, lcptr
	cmpq	$0, -4128(%rbp)	#, lcptr
	jne	.L23	#,
	.loc 1 182 0
	movl	$182, %ecx	#,
	movl	$.LC10, %edx	#,
	movl	$24, %esi	#,
	movl	$1, %edi	#,
	call	__ckd_calloc__	#
	movq	%rax, -4128(%rbp)	# tmp125, lcptr
	.loc 1 183 0
	movq	-4128(%rbp), %rax	# lcptr, tmp126
	movzbl	-4144(%rbp), %edx	# lc, tmp127
	movb	%dl, (%rax)	# tmp127, lcptr_36->lc
	.loc 1 184 0
	movq	-4136(%rbp), %rax	# m, tmp128
	movq	96(%rax), %rax	# m_2(D)->wpos_ci_lclist, D.6263
	movl	-4152(%rbp), %edx	# wpos, D.6261
	salq	$3, %rdx	#, D.6261
	addq	%rdx, %rax	# D.6261, D.6263
	movq	(%rax), %rax	# *_40, D.6264
	movsbq	-4140(%rbp), %rdx	# ci, D.6261
	salq	$3, %rdx	#, D.6261
	addq	%rdx, %rax	# D.6261, D.6264
	movq	(%rax), %rdx	# *_44, D.6265
	movq	-4128(%rbp), %rax	# lcptr, tmp129
	movq	%rdx, 16(%rax)	# D.6265, lcptr_36->next
	.loc 1 185 0
	movq	-4136(%rbp), %rax	# m, tmp130
	movq	96(%rax), %rax	# m_2(D)->wpos_ci_lclist, D.6263
	movl	-4152(%rbp), %edx	# wpos, D.6261
	salq	$3, %rdx	#, D.6261
	addq	%rdx, %rax	# D.6261, D.6263
	movq	(%rax), %rax	# *_49, D.6264
	movsbq	-4140(%rbp), %rdx	# ci, D.6261
	salq	$3, %rdx	#, D.6261
	addq	%rax, %rdx	# D.6264, D.6264
	movq	-4128(%rbp), %rax	# lcptr, tmp131
	movq	%rax, (%rdx)	# tmp131, *_53
.L23:
	.loc 1 187 0
	movsbl	-4148(%rbp), %edx	# rc, D.6262
	movq	-4128(%rbp), %rax	# lcptr, tmp132
	movq	8(%rax), %rax	# lcptr_1->rclist, D.6266
	movl	%edx, %esi	# D.6262,
	movq	%rax, %rdi	# D.6266,
	call	find_ph_rc	#
	movq	%rax, -4120(%rbp)	# tmp133, rcptr
	cmpq	$0, -4120(%rbp)	#, rcptr
	je	.L24	#,
.LBB2:
	.loc 1 190 0
	movq	-4120(%rbp), %rax	# rcptr, tmp134
	movl	4(%rax), %ecx	# rcptr_56->pid, D.6262
	leaq	-4112(%rbp), %rdx	#, tmp135
	movq	-4136(%rbp), %rax	# m, tmp136
	movl	%ecx, %esi	# D.6262,
	movq	%rax, %rdi	# tmp136,
	call	mdef_phone_str	#
	.loc 1 191 0
	movl	$.LC11, %edx	#,
	movl	$191, %esi	#,
	movl	$.LC10, %edi	#,
	call	_E__pr_header	#
	leaq	-4112(%rbp), %rax	#, tmp137
	movq	%rax, %rsi	# tmp137,
	movl	$.LC13, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L24:
.LBE2:
	.loc 1 194 0
	movl	$194, %ecx	#,
	movl	$.LC10, %edx	#,
	movl	$16, %esi	#,
	movl	$1, %edi	#,
	call	__ckd_calloc__	#
	movq	%rax, -4120(%rbp)	# tmp138, rcptr
	.loc 1 195 0
	movq	-4120(%rbp), %rax	# rcptr, tmp139
	movzbl	-4148(%rbp), %edx	# rc, tmp140
	movb	%dl, (%rax)	# tmp140, rcptr_58->rc
	.loc 1 196 0
	movq	-4120(%rbp), %rax	# rcptr, tmp141
	movl	-4156(%rbp), %edx	# p, tmp142
	movl	%edx, 4(%rax)	# tmp142, rcptr_58->pid
	.loc 1 197 0
	movq	-4128(%rbp), %rax	# lcptr, tmp143
	movq	8(%rax), %rdx	# lcptr_1->rclist, D.6266
	movq	-4120(%rbp), %rax	# rcptr, tmp144
	movq	%rdx, 8(%rax)	# D.6266, rcptr_58->next
	.loc 1 198 0
	movq	-4128(%rbp), %rax	# lcptr, tmp145
	movq	-4120(%rbp), %rdx	# rcptr, tmp146
	movq	%rdx, 8(%rax)	# tmp146, lcptr_1->rclist
.L21:
	.loc 1 200 0
	movq	-8(%rbp), %rax	# D.6267, tmp148
	xorq	%fs:40, %rax	#, tmp148
	je	.L25	#,
	call	__stack_chk_fail	#
.L25:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	triphone_add, .-triphone_add
	.globl	mdef_ciphone_id
	.type	mdef_ciphone_id, @function
mdef_ciphone_id:
.LFB7:
	.loc 1 204 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# m, m
	movq	%rsi, -32(%rbp)	# ci, ci
	.loc 1 210 0
	movq	-24(%rbp), %rax	# m, tmp64
	movq	24(%rax), %rax	# m_2(D)->ciphone_ht, D.6270
	leaq	-4(%rbp), %rdx	#, tmp65
	movq	-32(%rbp), %rcx	# ci, tmp66
	movq	%rcx, %rsi	# tmp66,
	movq	%rax, %rdi	# D.6270,
	call	hash_lookup	#
	testl	%eax, %eax	# D.6271
	jns	.L27	#,
	.loc 1 211 0
	movl	$-1, %eax	#, D.6269
	jmp	.L29	#
.L27:
	.loc 1 212 0
	movl	-4(%rbp), %eax	# id, id.0
.L29:
	.loc 1 213 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	mdef_ciphone_id, .-mdef_ciphone_id
	.globl	mdef_ciphone_str
	.type	mdef_ciphone_str, @function
mdef_ciphone_str:
.LFB8:
	.loc 1 217 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# m, m
	movl	%esi, %eax	# id, tmp65
	movb	%al, -12(%rbp)	# tmp65, id
	.loc 1 221 0
	movq	-8(%rbp), %rax	# m, tmp66
	movq	32(%rax), %rax	# m_1(D)->ciphone, D.6272
	movsbq	-12(%rbp), %rdx	# id, D.6273
	salq	$4, %rdx	#, D.6273
	addq	%rdx, %rax	# D.6273, D.6272
	movq	(%rax), %rax	# _6->name, D.6274
	.loc 1 222 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	mdef_ciphone_str, .-mdef_ciphone_str
	.section	.rodata
.LC14:
	.string	"besiu"
.LC15:
	.string	"(%s,%s,%s,%c)"
	.text
	.globl	mdef_phone_str
	.type	mdef_phone_str, @function
mdef_phone_str:
.LFB9:
	.loc 1 226 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r13	#
	pushq	%r12	#
	pushq	%rbx	#
	subq	$56, %rsp	#,
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movq	%rdi, -56(%rbp)	# m, m
	movl	%esi, -60(%rbp)	# pid, pid
	movq	%rdx, -72(%rbp)	# buf, buf
	.loc 1 231 0
	movq	$.LC14, -40(%rbp)	#, wpos_name
	.loc 1 233 0
	movq	-72(%rbp), %rax	# buf, tmp95
	movb	$0, (%rax)	#, *buf_2(D)
	.loc 1 234 0
	movq	-56(%rbp), %rax	# m, tmp96
	movl	(%rax), %eax	# m_3(D)->n_ciphone, D.6275
	cmpl	-60(%rbp), %eax	# pid, D.6275
	jle	.L33	#,
	.loc 1 235 0
	movl	-60(%rbp), %eax	# pid, tmp97
	movsbl	%al, %edx	# D.6276, D.6275
	movq	-56(%rbp), %rax	# m, tmp98
	movl	%edx, %esi	# D.6275,
	movq	%rax, %rdi	# tmp98,
	call	mdef_ciphone_str	#
	movq	%rax, %rdx	#, D.6277
	movq	-72(%rbp), %rax	# buf, tmp99
	movq	%rdx, %rsi	# D.6277,
	movq	%rax, %rdi	# tmp99,
	call	strcpy	#
	jmp	.L34	#
.L33:
	.loc 1 241 0
	movq	-56(%rbp), %rax	# m, tmp100
	movq	40(%rax), %rax	# m_3(D)->phone, D.6278
	movl	-60(%rbp), %edx	# pid, tmp101
	movslq	%edx, %rdx	# tmp101, D.6279
	salq	$4, %rdx	#, D.6279
	addq	%rdx, %rax	# D.6279, D.6278
	movl	12(%rax), %eax	# _12->wpos, D.6280
	movl	%eax, %edx	# D.6280, D.6281
	movq	-40(%rbp), %rax	# wpos_name, tmp102
	addq	%rdx, %rax	# D.6281, D.6282
	movzbl	(%rax), %eax	# *_15, D.6276
	.loc 1 237 0
	movsbl	%al, %r13d	# D.6276, D.6275
	.loc 1 240 0
	movq	-56(%rbp), %rax	# m, tmp103
	movq	40(%rax), %rax	# m_3(D)->phone, D.6278
	movl	-60(%rbp), %edx	# pid, tmp104
	movslq	%edx, %rdx	# tmp104, D.6279
	salq	$4, %rdx	#, D.6279
	addq	%rdx, %rax	# D.6279, D.6278
	movzbl	10(%rax), %eax	# _21->rc, D.6276
	.loc 1 237 0
	movsbl	%al, %edx	# D.6276, D.6275
	movq	-56(%rbp), %rax	# m, tmp105
	movl	%edx, %esi	# D.6275,
	movq	%rax, %rdi	# tmp105,
	call	mdef_ciphone_str	#
	movq	%rax, %r12	#, D.6277
	.loc 1 239 0
	movq	-56(%rbp), %rax	# m, tmp106
	movq	40(%rax), %rax	# m_3(D)->phone, D.6278
	movl	-60(%rbp), %edx	# pid, tmp107
	movslq	%edx, %rdx	# tmp107, D.6279
	salq	$4, %rdx	#, D.6279
	addq	%rdx, %rax	# D.6279, D.6278
	movzbl	9(%rax), %eax	# _28->lc, D.6276
	.loc 1 237 0
	movsbl	%al, %edx	# D.6276, D.6275
	movq	-56(%rbp), %rax	# m, tmp108
	movl	%edx, %esi	# D.6275,
	movq	%rax, %rdi	# tmp108,
	call	mdef_ciphone_str	#
	movq	%rax, %rbx	#, D.6277
	.loc 1 238 0
	movq	-56(%rbp), %rax	# m, tmp109
	movq	40(%rax), %rax	# m_3(D)->phone, D.6278
	movl	-60(%rbp), %edx	# pid, tmp110
	movslq	%edx, %rdx	# tmp110, D.6279
	salq	$4, %rdx	#, D.6279
	addq	%rdx, %rax	# D.6279, D.6278
	movzbl	8(%rax), %eax	# _35->ci, D.6276
	.loc 1 237 0
	movsbl	%al, %edx	# D.6276, D.6275
	movq	-56(%rbp), %rax	# m, tmp111
	movl	%edx, %esi	# D.6275,
	movq	%rax, %rdi	# tmp111,
	call	mdef_ciphone_str	#
	movq	%rax, %rdx	#, D.6277
	movq	-72(%rbp), %rax	# buf, tmp112
	movl	%r13d, %r9d	# D.6275,
	movq	%r12, %r8	# D.6277,
	movq	%rbx, %rcx	# D.6277,
	movl	$.LC15, %esi	#,
	movq	%rax, %rdi	# tmp112,
	movl	$0, %eax	#,
	call	sprintf	#
.L34:
	.loc 1 243 0
	movl	$0, %eax	#, D.6283
	.loc 1 244 0
	addq	$56, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%r13	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	mdef_phone_str, .-mdef_phone_str
	.globl	mdef_phone_id
	.type	mdef_phone_id, @function
mdef_phone_id:
.LFB10:
	.loc 1 249 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -40(%rbp)	# m, m
	movl	%ecx, %eax	# rc, tmp91
	movl	%r8d, -56(%rbp)	# wpos, wpos
	movb	%sil, -44(%rbp)	# tmp89, ci
	movb	%dl, -48(%rbp)	# tmp90, lc
	movb	%al, -52(%rbp)	# tmp91, rc
	.loc 1 260 0
	movsbl	-48(%rbp), %edx	# lc, D.6287
	movq	-40(%rbp), %rax	# m, tmp92
	movq	96(%rax), %rax	# m_6(D)->wpos_ci_lclist, D.6288
	movl	-56(%rbp), %ecx	# wpos, D.6289
	salq	$3, %rcx	#, D.6289
	addq	%rcx, %rax	# D.6289, D.6288
	movq	(%rax), %rax	# *_11, D.6290
	movsbq	-44(%rbp), %rcx	# ci, D.6289
	salq	$3, %rcx	#, D.6289
	addq	%rcx, %rax	# D.6289, D.6290
	movq	(%rax), %rax	# *_16, D.6291
	movl	%edx, %esi	# D.6287,
	movq	%rax, %rdi	# D.6291,
	call	find_ph_lc	#
	movq	%rax, -16(%rbp)	# tmp93, lcptr
	cmpq	$0, -16(%rbp)	#, lcptr
	je	.L37	#,
	.loc 1 261 0 discriminator 1
	movsbl	-52(%rbp), %edx	# rc, D.6287
	movq	-16(%rbp), %rax	# lcptr, tmp94
	movq	8(%rax), %rax	# lcptr_18->rclist, D.6292
	.loc 1 260 0 discriminator 1
	movl	%edx, %esi	# D.6287,
	movq	%rax, %rdi	# D.6292,
	call	find_ph_rc	#
	movq	%rax, -8(%rbp)	# tmp95, rcptr
	cmpq	$0, -8(%rbp)	#, rcptr
	jne	.L38	#,
.L37:
	.loc 1 263 0
	movq	-40(%rbp), %rax	# m, tmp96
	movzbl	88(%rax), %eax	# m_6(D)->sil, D.6293
	testb	%al, %al	# D.6293
	jns	.L39	#,
	.loc 1 264 0
	movl	$-1, %eax	#, D.6286
	jmp	.L40	#
.L39:
	.loc 1 266 0
	movq	-40(%rbp), %rax	# m, tmp97
	movq	32(%rax), %rax	# m_6(D)->ciphone, D.6294
	movsbq	-48(%rbp), %rdx	# lc, D.6289
	salq	$4, %rdx	#, D.6289
	addq	%rdx, %rax	# D.6289, D.6294
	movl	8(%rax), %eax	# _29->filler, D.6287
	testl	%eax, %eax	# D.6287
	je	.L41	#,
	.loc 1 266 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# m, tmp98
	movzbl	88(%rax), %eax	# m_6(D)->sil, iftmp.1
	jmp	.L42	#
.L41:
	.loc 1 266 0 discriminator 2
	movzbl	-48(%rbp), %eax	# lc, iftmp.1
.L42:
	.loc 1 266 0 discriminator 3
	movb	%al, -18(%rbp)	# iftmp.1, newl
	.loc 1 267 0 is_stmt 1 discriminator 3
	movq	-40(%rbp), %rax	# m, tmp99
	movq	32(%rax), %rax	# m_6(D)->ciphone, D.6294
	movsbq	-52(%rbp), %rdx	# rc, D.6289
	salq	$4, %rdx	#, D.6289
	addq	%rdx, %rax	# D.6289, D.6294
	movl	8(%rax), %eax	# _37->filler, D.6287
	testl	%eax, %eax	# D.6287
	je	.L43	#,
	.loc 1 267 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# m, tmp100
	movzbl	88(%rax), %eax	# m_6(D)->sil, iftmp.2
	jmp	.L44	#
.L43:
	.loc 1 267 0 discriminator 2
	movzbl	-52(%rbp), %eax	# rc, iftmp.2
.L44:
	.loc 1 267 0 discriminator 3
	movb	%al, -17(%rbp)	# iftmp.2, newr
	.loc 1 268 0 is_stmt 1 discriminator 3
	movzbl	-18(%rbp), %eax	# newl, tmp101
	cmpb	-48(%rbp), %al	# lc, tmp101
	jne	.L45	#,
	.loc 1 268 0 is_stmt 0 discriminator 1
	movzbl	-17(%rbp), %eax	# newr, tmp102
	cmpb	-52(%rbp), %al	# rc, tmp102
	jne	.L45	#,
	.loc 1 269 0 is_stmt 1
	movl	$-1, %eax	#, D.6286
	jmp	.L40	#
.L45:
	.loc 1 271 0
	movsbl	-17(%rbp), %ecx	# newr, D.6287
	movsbl	-18(%rbp), %edx	# newl, D.6287
	movsbl	-44(%rbp), %esi	# ci, D.6287
	movl	-56(%rbp), %edi	# wpos, tmp103
	movq	-40(%rbp), %rax	# m, tmp104
	movl	%edi, %r8d	# tmp103,
	movq	%rax, %rdi	# tmp104,
	call	mdef_phone_id	#
	jmp	.L40	#
.L38:
	.loc 1 274 0
	movq	-8(%rbp), %rax	# rcptr, tmp105
	movl	4(%rax), %eax	# rcptr_22->pid, D.6286
.L40:
	.loc 1 275 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	mdef_phone_id, .-mdef_phone_id
	.globl	mdef_phone_id_nearest
	.type	mdef_phone_id_nearest, @function
mdef_phone_id_nearest:
.LFB11:
	.loc 1 280 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -40(%rbp)	# m, m
	movl	%ecx, %eax	# r, tmp95
	movl	%r8d, -56(%rbp)	# pos, pos
	movb	%sil, -44(%rbp)	# tmp93, b
	movb	%dl, -48(%rbp)	# tmp94, l
	movb	%al, -52(%rbp)	# tmp95, r
	.loc 1 290 0
	cmpb	$0, -48(%rbp)	#, l
	js	.L47	#,
	.loc 1 290 0 is_stmt 0 discriminator 1
	cmpb	$0, -52(%rbp)	#, r
	jns	.L48	#,
.L47:
	.loc 1 291 0 is_stmt 1
	movsbl	-44(%rbp), %eax	# b, D.6295
	jmp	.L49	#
.L48:
	.loc 1 296 0
	movsbl	-52(%rbp), %ecx	# r, D.6296
	movsbl	-48(%rbp), %edx	# l, D.6296
	movsbl	-44(%rbp), %esi	# b, D.6296
	movl	-56(%rbp), %edi	# pos, tmp96
	movq	-40(%rbp), %rax	# m, tmp97
	movl	%edi, %r8d	# tmp96,
	movq	%rax, %rdi	# tmp97,
	call	mdef_phone_id	#
	movl	%eax, -12(%rbp)	# tmp98, p
	.loc 1 297 0
	cmpl	$0, -12(%rbp)	#, p
	js	.L50	#,
	.loc 1 298 0
	movl	-12(%rbp), %eax	# p, D.6295
	jmp	.L49	#
.L50:
	.loc 1 301 0
	movl	$0, -16(%rbp)	#, tmppos
	jmp	.L51	#
.L53:
	.loc 1 302 0
	movl	-16(%rbp), %eax	# tmppos, tmp99
	cmpl	-56(%rbp), %eax	# pos, tmp99
	je	.L52	#,
	.loc 1 303 0
	movsbl	-52(%rbp), %ecx	# r, D.6296
	movsbl	-48(%rbp), %edx	# l, D.6296
	movsbl	-44(%rbp), %esi	# b, D.6296
	movl	-16(%rbp), %edi	# tmppos, tmp100
	movq	-40(%rbp), %rax	# m, tmp101
	movl	%edi, %r8d	# tmp100,
	movq	%rax, %rdi	# tmp101,
	call	mdef_phone_id	#
	movl	%eax, -12(%rbp)	# tmp102, p
	.loc 1 304 0
	cmpl	$0, -12(%rbp)	#, p
	js	.L52	#,
	.loc 1 305 0
	movl	-12(%rbp), %eax	# p, D.6295
	jmp	.L49	#
.L52:
	.loc 1 301 0
	addl	$1, -16(%rbp)	#, tmppos
.L51:
	.loc 1 301 0 is_stmt 0 discriminator 1
	cmpl	$3, -16(%rbp)	#, tmppos
	jbe	.L53	#,
	.loc 1 310 0 is_stmt 1
	movq	-40(%rbp), %rax	# m, tmp103
	movzbl	88(%rax), %eax	# m_12(D)->sil, D.6297
	testb	%al, %al	# D.6297
	js	.L54	#,
	.loc 1 311 0
	movq	-40(%rbp), %rax	# m, tmp104
	movq	32(%rax), %rax	# m_12(D)->ciphone, D.6298
	movsbq	-48(%rbp), %rdx	# l, D.6299
	salq	$4, %rdx	#, D.6299
	addq	%rdx, %rax	# D.6299, D.6298
	movl	8(%rax), %eax	# _27->filler, D.6296
	testl	%eax, %eax	# D.6296
	je	.L55	#,
	.loc 1 311 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# m, tmp105
	movzbl	88(%rax), %eax	# m_12(D)->sil, iftmp.3
	jmp	.L56	#
.L55:
	.loc 1 311 0 discriminator 2
	movzbl	-48(%rbp), %eax	# l, iftmp.3
.L56:
	.loc 1 311 0 discriminator 3
	movb	%al, -18(%rbp)	# iftmp.3, newl
	.loc 1 312 0 is_stmt 1 discriminator 3
	movq	-40(%rbp), %rax	# m, tmp106
	movq	32(%rax), %rax	# m_12(D)->ciphone, D.6298
	movsbq	-52(%rbp), %rdx	# r, D.6299
	salq	$4, %rdx	#, D.6299
	addq	%rdx, %rax	# D.6299, D.6298
	movl	8(%rax), %eax	# _35->filler, D.6296
	testl	%eax, %eax	# D.6296
	je	.L57	#,
	.loc 1 312 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# m, tmp107
	movzbl	88(%rax), %eax	# m_12(D)->sil, iftmp.4
	jmp	.L58	#
.L57:
	.loc 1 312 0 discriminator 2
	movzbl	-52(%rbp), %eax	# r, iftmp.4
.L58:
	.loc 1 312 0 discriminator 3
	movb	%al, -17(%rbp)	# iftmp.4, newr
	.loc 1 313 0 is_stmt 1 discriminator 3
	movzbl	-18(%rbp), %eax	# newl, tmp108
	cmpb	-48(%rbp), %al	# l, tmp108
	jne	.L59	#,
	.loc 1 313 0 is_stmt 0 discriminator 1
	movzbl	-17(%rbp), %eax	# newr, tmp109
	cmpb	-52(%rbp), %al	# r, tmp109
	je	.L54	#,
.L59:
	.loc 1 314 0 is_stmt 1
	movsbl	-17(%rbp), %ecx	# newr, D.6296
	movsbl	-18(%rbp), %edx	# newl, D.6296
	movsbl	-44(%rbp), %esi	# b, D.6296
	movl	-56(%rbp), %edi	# pos, tmp110
	movq	-40(%rbp), %rax	# m, tmp111
	movl	%edi, %r8d	# tmp110,
	movq	%rax, %rdi	# tmp111,
	call	mdef_phone_id	#
	movl	%eax, -12(%rbp)	# tmp112, p
	.loc 1 315 0
	cmpl	$0, -12(%rbp)	#, p
	js	.L60	#,
	.loc 1 316 0
	movl	-12(%rbp), %eax	# p, D.6295
	jmp	.L49	#
.L60:
	.loc 1 318 0
	movl	$0, -16(%rbp)	#, tmppos
	jmp	.L61	#
.L63:
	.loc 1 319 0
	movl	-16(%rbp), %eax	# tmppos, tmp113
	cmpl	-56(%rbp), %eax	# pos, tmp113
	je	.L62	#,
	.loc 1 320 0
	movsbl	-17(%rbp), %ecx	# newr, D.6296
	movsbl	-18(%rbp), %edx	# newl, D.6296
	movsbl	-44(%rbp), %esi	# b, D.6296
	movl	-16(%rbp), %edi	# tmppos, tmp114
	movq	-40(%rbp), %rax	# m, tmp115
	movl	%edi, %r8d	# tmp114,
	movq	%rax, %rdi	# tmp115,
	call	mdef_phone_id	#
	movl	%eax, -12(%rbp)	# tmp116, p
	.loc 1 321 0
	cmpl	$0, -12(%rbp)	#, p
	js	.L62	#,
	.loc 1 322 0
	movl	-12(%rbp), %eax	# p, D.6295
	jmp	.L49	#
.L62:
	.loc 1 318 0
	addl	$1, -16(%rbp)	#, tmppos
.L61:
	.loc 1 318 0 is_stmt 0 discriminator 1
	cmpl	$3, -16(%rbp)	#, tmppos
	jbe	.L63	#,
.L54:
	.loc 1 329 0 is_stmt 1
	movq	-40(%rbp), %rax	# m, tmp117
	movl	4(%rax), %edx	# m_12(D)->n_phone, D.6296
	movq	-40(%rbp), %rax	# m, tmp118
	movl	(%rax), %eax	# m_12(D)->n_ciphone, D.6296
	cmpl	%eax, %edx	# D.6296, D.6296
	jle	.L64	#,
	.loc 1 329 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# m, tmp119
	movq	32(%rax), %rax	# m_12(D)->ciphone, D.6298
	movsbq	-44(%rbp), %rdx	# b, D.6299
	salq	$4, %rdx	#, D.6299
	addq	%rdx, %rax	# D.6299, D.6298
	movl	8(%rax), %eax	# _57->filler, D.6296
	testl	%eax, %eax	# D.6296
	jne	.L64	#,
	.loc 1 330 0 is_stmt 1
	movq	$.LC14, -8(%rbp)	#, wpos_name
.L64:
	.loc 1 339 0
	movsbl	-44(%rbp), %eax	# b, D.6295
.L49:
	.loc 1 340 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	mdef_phone_id_nearest, .-mdef_phone_id_nearest
	.globl	mdef_phone_components
	.type	mdef_phone_components, @function
mdef_phone_components:
.LFB12:
	.loc 1 349 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# m, m
	movl	%esi, -12(%rbp)	# p, p
	movq	%rdx, -24(%rbp)	# b, b
	movq	%rcx, -32(%rbp)	# l, l
	movq	%r8, -40(%rbp)	# r, r
	movq	%r9, -48(%rbp)	# pos, pos
	.loc 1 353 0
	movq	-8(%rbp), %rax	# m, tmp81
	movq	40(%rax), %rax	# m_1(D)->phone, D.6300
	movl	-12(%rbp), %edx	# p, tmp82
	movslq	%edx, %rdx	# tmp82, D.6301
	salq	$4, %rdx	#, D.6301
	addq	%rdx, %rax	# D.6301, D.6300
	movzbl	8(%rax), %edx	# _6->ci, D.6302
	movq	-24(%rbp), %rax	# b, tmp83
	movb	%dl, (%rax)	# D.6302, *b_8(D)
	.loc 1 354 0
	movq	-8(%rbp), %rax	# m, tmp84
	movq	40(%rax), %rax	# m_1(D)->phone, D.6300
	movl	-12(%rbp), %edx	# p, tmp85
	movslq	%edx, %rdx	# tmp85, D.6301
	salq	$4, %rdx	#, D.6301
	addq	%rdx, %rax	# D.6301, D.6300
	movzbl	9(%rax), %edx	# _12->lc, D.6302
	movq	-32(%rbp), %rax	# l, tmp86
	movb	%dl, (%rax)	# D.6302, *l_14(D)
	.loc 1 355 0
	movq	-8(%rbp), %rax	# m, tmp87
	movq	40(%rax), %rax	# m_1(D)->phone, D.6300
	movl	-12(%rbp), %edx	# p, tmp88
	movslq	%edx, %rdx	# tmp88, D.6301
	salq	$4, %rdx	#, D.6301
	addq	%rdx, %rax	# D.6301, D.6300
	movzbl	10(%rax), %edx	# _18->rc, D.6302
	movq	-40(%rbp), %rax	# r, tmp89
	movb	%dl, (%rax)	# D.6302, *r_20(D)
	.loc 1 356 0
	movq	-8(%rbp), %rax	# m, tmp90
	movq	40(%rax), %rax	# m_1(D)->phone, D.6300
	movl	-12(%rbp), %edx	# p, tmp91
	movslq	%edx, %rdx	# tmp91, D.6301
	salq	$4, %rdx	#, D.6301
	addq	%rdx, %rax	# D.6301, D.6300
	movl	12(%rax), %edx	# _24->wpos, D.6303
	movq	-48(%rbp), %rax	# pos, tmp92
	movl	%edx, (%rax)	# D.6303, *pos_26(D)
	.loc 1 358 0
	movl	$0, %eax	#, D.6304
	.loc 1 359 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	mdef_phone_components, .-mdef_phone_components
	.globl	mdef_is_ciphone
	.type	mdef_is_ciphone, @function
mdef_is_ciphone:
.LFB13:
	.loc 1 363 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# m, m
	movl	%esi, -12(%rbp)	# p, p
	.loc 1 367 0
	movq	-8(%rbp), %rax	# m, tmp63
	movl	(%rax), %eax	# m_1(D)->n_ciphone, D.6305
	cmpl	-12(%rbp), %eax	# p, D.6305
	setg	%al	#, D.6306
	movzbl	%al, %eax	# D.6306, D.6307
	.loc 1 368 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	mdef_is_ciphone, .-mdef_is_ciphone
	.section	.rodata
.LC16:
	.string	"%d%n"
	.align 8
.LC17:
	.string	"Missing or bad transition matrix id: %s\n"
	.align 8
.LC18:
	.string	"tmat-id(%d) > #tmat in header(%d): %s\n"
	.align 8
.LC19:
	.string	"Missing or bad state[%d]->senone mapping: %s\n"
	.align 8
.LC20:
	.string	"CI-senone-id(%d) > #CI-senones(%d): %s\n"
	.align 8
.LC21:
	.string	"Senone-id(%d) > #senones(%d): %s\n"
.LC22:
	.string	"%s%n"
.LC23:
	.string	"N"
	.align 8
.LC24:
	.string	"Missing non-emitting state spec: %s\n"
	.align 8
.LC25:
	.string	"Non-empty beyond non-emitting final state: %s\n"
	.text
	.type	parse_tmat_senmap, @function
parse_tmat_senmap:
.LFB14:
	.loc 1 373 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$1104, %rsp	#,
	movq	%rdi, -1080(%rbp)	# m, m
	movq	%rsi, -1088(%rbp)	# line, line
	movl	%edx, -1092(%rbp)	# off, off
	movl	%ecx, -1096(%rbp)	# p, p
	.loc 1 373 0
	movq	%fs:40, %rax	#, tmp144
	movq	%rax, -8(%rbp)	# tmp144, D.6315
	xorl	%eax, %eax	# tmp144
	.loc 1 377 0
	movl	-1092(%rbp), %eax	# off, tmp107
	movslq	%eax, %rdx	# tmp107, D.6308
	movq	-1088(%rbp), %rax	# line, tmp111
	addq	%rdx, %rax	# D.6308, tmp110
	movq	%rax, -1048(%rbp)	# tmp110, lp
	.loc 1 380 0
	leaq	-1060(%rbp), %rcx	#, tmp112
	leaq	-1056(%rbp), %rdx	#, tmp113
	movq	-1048(%rbp), %rax	# lp, tmp114
	movl	$.LC16, %esi	#,
	movq	%rax, %rdi	# tmp114,
	movl	$0, %eax	#,
	call	__isoc99_sscanf	#
	cmpl	$1, %eax	#, D.6309
	jne	.L70	#,
	.loc 1 380 0 is_stmt 0 discriminator 1
	movl	-1056(%rbp), %eax	# n, n.5
	testl	%eax, %eax	# n.5
	jns	.L71	#,
.L70:
	.loc 1 381 0 is_stmt 1
	movl	$.LC11, %edx	#,
	movl	$381, %esi	#,
	movl	$.LC10, %edi	#,
	call	_E__pr_header	#
	movq	-1088(%rbp), %rax	# line, tmp115
	movq	%rax, %rsi	# tmp115,
	movl	$.LC17, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L71:
	.loc 1 382 0
	movq	-1080(%rbp), %rax	# m, tmp116
	movq	40(%rax), %rax	# m_8(D)->phone, D.6310
	movl	-1096(%rbp), %edx	# p, tmp117
	movslq	%edx, %rdx	# tmp117, D.6311
	salq	$4, %rdx	#, D.6311
	addq	%rax, %rdx	# D.6310, D.6310
	movl	-1056(%rbp), %eax	# n, n.6
	movl	%eax, 4(%rdx)	# n.6, _13->tmat
	.loc 1 383 0
	movq	-1080(%rbp), %rax	# m, tmp118
	movl	20(%rax), %edx	# m_8(D)->n_tmat, D.6309
	movl	-1056(%rbp), %eax	# n, n.7
	cmpl	%eax, %edx	# n.7, D.6309
	jg	.L72	#,
	.loc 1 384 0
	movl	$.LC11, %edx	#,
	movl	$384, %esi	#,
	movl	$.LC10, %edi	#,
	call	_E__pr_header	#
	movq	-1080(%rbp), %rax	# m, tmp119
	movl	20(%rax), %edx	# m_8(D)->n_tmat, D.6309
	movl	-1056(%rbp), %eax	# n, n.8
	movq	-1088(%rbp), %rcx	# line, tmp120
	movl	%eax, %esi	# n.8,
	movl	$.LC18, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L72:
	.loc 1 385 0
	movl	-1060(%rbp), %eax	# wlen, wlen.9
	cltq
	addq	%rax, -1048(%rbp)	# D.6308, lp
	.loc 1 388 0
	movl	$0, -1056(%rbp)	#, n
	jmp	.L73	#
.L78:
	.loc 1 389 0
	leaq	-1060(%rbp), %rcx	#, tmp121
	leaq	-1052(%rbp), %rdx	#, tmp122
	movq	-1048(%rbp), %rax	# lp, tmp123
	movl	$.LC16, %esi	#,
	movq	%rax, %rdi	# tmp123,
	movl	$0, %eax	#,
	call	__isoc99_sscanf	#
	cmpl	$1, %eax	#, D.6309
	jne	.L74	#,
	.loc 1 389 0 is_stmt 0 discriminator 1
	movl	-1052(%rbp), %eax	# s, s.10
	testl	%eax, %eax	# s.10
	jns	.L75	#,
.L74:
	.loc 1 390 0 is_stmt 1
	movl	$.LC11, %edx	#,
	movl	$390, %esi	#,
	movl	$.LC10, %edi	#,
	call	_E__pr_header	#
	movl	-1056(%rbp), %eax	# n, n.11
	movq	-1088(%rbp), %rdx	# line, tmp124
	movl	%eax, %esi	# n.11,
	movl	$.LC19, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L75:
	.loc 1 391 0
	movq	-1080(%rbp), %rax	# m, tmp125
	movl	(%rax), %eax	# m_8(D)->n_ciphone, D.6309
	cmpl	-1096(%rbp), %eax	# p, D.6309
	jle	.L76	#,
	.loc 1 391 0 is_stmt 0 discriminator 1
	movq	-1080(%rbp), %rax	# m, tmp126
	movl	12(%rax), %edx	# m_8(D)->n_ci_sen, D.6309
	movl	-1052(%rbp), %eax	# s, s.12
	cmpl	%eax, %edx	# s.12, D.6309
	jg	.L76	#,
	.loc 1 392 0 is_stmt 1
	movl	$.LC11, %edx	#,
	movl	$392, %esi	#,
	movl	$.LC10, %edi	#,
	call	_E__pr_header	#
	movq	-1080(%rbp), %rax	# m, tmp127
	movl	12(%rax), %edx	# m_8(D)->n_ci_sen, D.6309
	movl	-1052(%rbp), %eax	# s, s.13
	movq	-1088(%rbp), %rcx	# line, tmp128
	movl	%eax, %esi	# s.13,
	movl	$.LC20, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L76:
	.loc 1 393 0
	movq	-1080(%rbp), %rax	# m, tmp129
	movl	16(%rax), %edx	# m_8(D)->n_sen, D.6309
	movl	-1052(%rbp), %eax	# s, s.14
	cmpl	%eax, %edx	# s.14, D.6309
	jg	.L77	#,
	.loc 1 394 0
	movl	$.LC11, %edx	#,
	movl	$394, %esi	#,
	movl	$.LC10, %edi	#,
	call	_E__pr_header	#
	movq	-1080(%rbp), %rax	# m, tmp130
	movl	16(%rax), %edx	# m_8(D)->n_sen, D.6309
	movl	-1052(%rbp), %eax	# s, s.15
	movq	-1088(%rbp), %rcx	# line, tmp131
	movl	%eax, %esi	# s.15,
	movl	$.LC21, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L77:
	.loc 1 396 0
	movq	-1080(%rbp), %rax	# m, tmp132
	movq	48(%rax), %rax	# m_8(D)->sseq, D.6312
	movl	-1096(%rbp), %edx	# p, tmp133
	movslq	%edx, %rdx	# tmp133, D.6311
	salq	$3, %rdx	#, D.6311
	addq	%rdx, %rax	# D.6311, D.6312
	movq	(%rax), %rax	# *_39, D.6313
	movl	-1056(%rbp), %edx	# n, n.16
	movslq	%edx, %rdx	# n.16, D.6311
	addq	%rdx, %rdx	# D.6311
	addq	%rax, %rdx	# D.6313, D.6313
	movl	-1052(%rbp), %eax	# s, s.17
	movw	%ax, (%rdx)	# D.6314, *_44
	.loc 1 397 0
	movl	-1060(%rbp), %eax	# wlen, wlen.18
	cltq
	addq	%rax, -1048(%rbp)	# D.6308, lp
	.loc 1 388 0
	movl	-1056(%rbp), %eax	# n, n.19
	addl	$1, %eax	#, n.20
	movl	%eax, -1056(%rbp)	# n.20, n
.L73:
	.loc 1 388 0 is_stmt 0 discriminator 1
	movq	-1080(%rbp), %rax	# m, tmp134
	movl	8(%rax), %edx	# m_8(D)->n_emit_state, D.6309
	movl	-1056(%rbp), %eax	# n, n.21
	cmpl	%eax, %edx	# n.21, D.6309
	jg	.L78	#,
	.loc 1 401 0 is_stmt 1
	leaq	-1060(%rbp), %rcx	#, tmp135
	leaq	-1040(%rbp), %rdx	#, tmp136
	movq	-1048(%rbp), %rax	# lp, tmp137
	movl	$.LC22, %esi	#,
	movq	%rax, %rdi	# tmp137,
	movl	$0, %eax	#,
	call	__isoc99_sscanf	#
	cmpl	$1, %eax	#, D.6309
	jne	.L79	#,
	.loc 1 401 0 is_stmt 0 discriminator 1
	leaq	-1040(%rbp), %rax	#, tmp138
	movl	$.LC23, %esi	#,
	movq	%rax, %rdi	# tmp138,
	call	strcmp	#
	testl	%eax, %eax	# D.6309
	je	.L80	#,
.L79:
	.loc 1 402 0 is_stmt 1
	movl	$.LC11, %edx	#,
	movl	$402, %esi	#,
	movl	$.LC10, %edi	#,
	call	_E__pr_header	#
	movq	-1088(%rbp), %rax	# line, tmp139
	movq	%rax, %rsi	# tmp139,
	movl	$.LC24, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L80:
	.loc 1 403 0
	movl	-1060(%rbp), %eax	# wlen, wlen.22
	cltq
	addq	%rax, -1048(%rbp)	# D.6308, lp
	.loc 1 406 0
	leaq	-1060(%rbp), %rcx	#, tmp140
	leaq	-1040(%rbp), %rdx	#, tmp141
	movq	-1048(%rbp), %rax	# lp, tmp142
	movl	$.LC22, %esi	#,
	movq	%rax, %rdi	# tmp142,
	movl	$0, %eax	#,
	call	__isoc99_sscanf	#
	cmpl	$1, %eax	#, D.6309
	jne	.L69	#,
	.loc 1 407 0
	movl	$.LC11, %edx	#,
	movl	$407, %esi	#,
	movl	$.LC10, %edi	#,
	call	_E__pr_header	#
	movq	-1088(%rbp), %rax	# line, tmp143
	movq	%rax, %rsi	# tmp143,
	movl	$.LC25, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L69:
	.loc 1 408 0
	movq	-8(%rbp), %rax	# D.6315, tmp145
	xorq	%fs:40, %rax	#, tmp145
	je	.L82	#,
	call	__stack_chk_fail	#
.L82:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	parse_tmat_senmap, .-parse_tmat_senmap
	.section	.rodata
.LC26:
	.string	"Missing base phone name: %s\n"
.LC27:
	.string	"Duplicate base phone: %s\n"
.LC28:
	.string	"-"
	.align 8
.LC29:
	.string	"Bad context info for base phone: %s\n"
	.align 8
.LC30:
	.string	"Missing filler atribute field: %s\n"
.LC31:
	.string	"filler"
.LC32:
	.string	"n/a"
	.align 8
.LC33:
	.string	"Bad filler attribute field: %s\n"
	.text
	.type	parse_base_line, @function
parse_base_line:
.LFB15:
	.loc 1 412 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$1104, %rsp	#,
	movq	%rdi, -1080(%rbp)	# m, m
	movq	%rsi, -1088(%rbp)	# line, line
	movl	%edx, -1092(%rbp)	# p, p
	.loc 1 412 0
	movq	%fs:40, %rax	#, tmp116
	movq	%rax, -8(%rbp)	# tmp116, D.6331
	xorl	%eax, %eax	# tmp116
	.loc 1 417 0
	movq	-1088(%rbp), %rax	# line, tmp84
	movq	%rax, -1048(%rbp)	# tmp84, lp
	.loc 1 420 0
	leaq	-1056(%rbp), %rcx	#, tmp85
	leaq	-1040(%rbp), %rdx	#, tmp86
	movq	-1048(%rbp), %rax	# lp, tmp87
	movl	$.LC22, %esi	#,
	movq	%rax, %rdi	# tmp87,
	movl	$0, %eax	#,
	call	__isoc99_sscanf	#
	cmpl	$1, %eax	#, D.6326
	je	.L84	#,
	.loc 1 421 0
	movl	$.LC11, %edx	#,
	movl	$421, %esi	#,
	movl	$.LC10, %edi	#,
	call	_E__pr_header	#
	movq	-1088(%rbp), %rax	# line, tmp88
	movq	%rax, %rsi	# tmp88,
	movl	$.LC26, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L84:
	.loc 1 422 0
	movl	-1056(%rbp), %eax	# wlen, wlen.23
	cltq
	addq	%rax, -1048(%rbp)	# D.6327, lp
	.loc 1 425 0
	leaq	-1040(%rbp), %rdx	#, tmp89
	movq	-1080(%rbp), %rax	# m, tmp90
	movq	%rdx, %rsi	# tmp89,
	movq	%rax, %rdi	# tmp90,
	call	mdef_ciphone_id	#
	movb	%al, -1057(%rbp)	# tmp91, ci
	.loc 1 426 0
	cmpb	$0, -1057(%rbp)	#, ci
	js	.L85	#,
	.loc 1 427 0
	movl	$.LC11, %edx	#,
	movl	$427, %esi	#,
	movl	$.LC10, %edi	#,
	call	_E__pr_header	#
	movq	-1088(%rbp), %rax	# line, tmp92
	movq	%rax, %rsi	# tmp92,
	movl	$.LC27, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L85:
	.loc 1 430 0
	movl	-1092(%rbp), %edx	# p, tmp93
	leaq	-1040(%rbp), %rcx	#, tmp94
	movq	-1080(%rbp), %rax	# m, tmp95
	movq	%rcx, %rsi	# tmp94,
	movq	%rax, %rdi	# tmp95,
	call	ciphone_add	#
	.loc 1 431 0
	movl	-1092(%rbp), %eax	# p, tmp96
	movb	%al, -1057(%rbp)	# tmp96, ci
	.loc 1 434 0
	movl	$0, -1052(%rbp)	#, n
	jmp	.L86	#
.L89:
	.loc 1 435 0
	leaq	-1056(%rbp), %rcx	#, tmp97
	leaq	-1040(%rbp), %rdx	#, tmp98
	movq	-1048(%rbp), %rax	# lp, tmp99
	movl	$.LC22, %esi	#,
	movq	%rax, %rdi	# tmp99,
	movl	$0, %eax	#,
	call	__isoc99_sscanf	#
	cmpl	$1, %eax	#, D.6326
	jne	.L87	#,
	.loc 1 435 0 is_stmt 0 discriminator 1
	leaq	-1040(%rbp), %rax	#, tmp100
	movl	$.LC28, %esi	#,
	movq	%rax, %rdi	# tmp100,
	call	strcmp	#
	testl	%eax, %eax	# D.6326
	je	.L88	#,
.L87:
	.loc 1 436 0 is_stmt 1
	movl	$.LC11, %edx	#,
	movl	$436, %esi	#,
	movl	$.LC10, %edi	#,
	call	_E__pr_header	#
	movq	-1088(%rbp), %rax	# line, tmp101
	movq	%rax, %rsi	# tmp101,
	movl	$.LC29, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L88:
	.loc 1 437 0
	movl	-1056(%rbp), %eax	# wlen, wlen.24
	cltq
	addq	%rax, -1048(%rbp)	# D.6327, lp
	.loc 1 434 0
	addl	$1, -1052(%rbp)	#, n
.L86:
	.loc 1 434 0 is_stmt 0 discriminator 1
	cmpl	$2, -1052(%rbp)	#, n
	jle	.L89	#,
	.loc 1 441 0 is_stmt 1
	leaq	-1056(%rbp), %rcx	#, tmp102
	leaq	-1040(%rbp), %rdx	#, tmp103
	movq	-1048(%rbp), %rax	# lp, tmp104
	movl	$.LC22, %esi	#,
	movq	%rax, %rdi	# tmp104,
	movl	$0, %eax	#,
	call	__isoc99_sscanf	#
	cmpl	$1, %eax	#, D.6326
	je	.L90	#,
	.loc 1 442 0
	movl	$.LC11, %edx	#,
	movl	$442, %esi	#,
	movl	$.LC10, %edi	#,
	call	_E__pr_header	#
	movq	-1088(%rbp), %rax	# line, tmp105
	movq	%rax, %rsi	# tmp105,
	movl	$.LC30, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L90:
	.loc 1 443 0
	movl	-1056(%rbp), %eax	# wlen, wlen.25
	cltq
	addq	%rax, -1048(%rbp)	# D.6327, lp
	.loc 1 444 0
	leaq	-1040(%rbp), %rax	#, tmp106
	movl	$.LC31, %esi	#,
	movq	%rax, %rdi	# tmp106,
	call	strcmp	#
	testl	%eax, %eax	# D.6326
	jne	.L91	#,
	.loc 1 445 0
	movq	-1080(%rbp), %rax	# m, tmp107
	movq	32(%rax), %rax	# m_9(D)->ciphone, D.6328
	movsbq	-1057(%rbp), %rdx	# ci, D.6329
	salq	$4, %rdx	#, D.6329
	addq	%rdx, %rax	# D.6329, D.6328
	movl	$1, 8(%rax)	#, _28->filler
	jmp	.L92	#
.L91:
	.loc 1 446 0
	leaq	-1040(%rbp), %rax	#, tmp108
	movl	$.LC32, %esi	#,
	movq	%rax, %rdi	# tmp108,
	call	strcmp	#
	testl	%eax, %eax	# D.6326
	jne	.L93	#,
	.loc 1 447 0
	movq	-1080(%rbp), %rax	# m, tmp109
	movq	32(%rax), %rax	# m_9(D)->ciphone, D.6328
	movsbq	-1057(%rbp), %rdx	# ci, D.6329
	salq	$4, %rdx	#, D.6329
	addq	%rdx, %rax	# D.6329, D.6328
	movl	$0, 8(%rax)	#, _33->filler
	jmp	.L92	#
.L93:
	.loc 1 449 0
	movl	$.LC11, %edx	#,
	movl	$449, %esi	#,
	movl	$.LC10, %edi	#,
	call	_E__pr_header	#
	movq	-1088(%rbp), %rax	# line, tmp110
	movq	%rax, %rsi	# tmp110,
	movl	$.LC33, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L92:
	.loc 1 451 0
	movsbl	-1057(%rbp), %esi	# ci, D.6326
	movl	-1092(%rbp), %edx	# p, tmp111
	movq	-1080(%rbp), %rax	# m, tmp112
	movl	%edx, %r9d	# tmp111,
	movl	$4, %r8d	#,
	movl	$-1, %ecx	#,
	movl	$-1, %edx	#,
	movq	%rax, %rdi	# tmp112,
	call	triphone_add	#
	.loc 1 454 0
	movq	-1048(%rbp), %rdx	# lp, lp.26
	movq	-1088(%rbp), %rax	# line, line.27
	subq	%rax, %rdx	# line.27, D.6330
	movq	%rdx, %rax	# D.6330, D.6330
	movl	%eax, %edx	# D.6330, D.6326
	movl	-1092(%rbp), %ecx	# p, tmp113
	movq	-1088(%rbp), %rsi	# line, tmp114
	movq	-1080(%rbp), %rax	# m, tmp115
	movq	%rax, %rdi	# tmp115,
	call	parse_tmat_senmap	#
	.loc 1 455 0
	movq	-8(%rbp), %rax	# D.6331, tmp117
	xorq	%fs:40, %rax	#, tmp117
	je	.L94	#,
	call	__stack_chk_fail	#
.L94:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	parse_base_line, .-parse_base_line
	.section	.rodata
.LC34:
	.string	"Unknown base phone: %s\n"
.LC35:
	.string	"Missing left context: %s\n"
.LC36:
	.string	"Unknown left context: %s\n"
.LC37:
	.string	"Missing right context: %s\n"
.LC38:
	.string	"Unknown right  context: %s\n"
	.align 8
.LC39:
	.string	"Missing or bad word-position spec: %s\n"
.LC40:
	.string	"Bad word-position spec: %s\n"
	.align 8
.LC41:
	.string	"Missing filler attribute field: %s\n"
	.text
	.type	parse_tri_line, @function
parse_tri_line:
.LFB16:
	.loc 1 459 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$1104, %rsp	#,
	movq	%rdi, -1080(%rbp)	# m, m
	movq	%rsi, -1088(%rbp)	# line, line
	movl	%edx, -1092(%rbp)	# p, p
	.loc 1 459 0
	movq	%fs:40, %rax	#, tmp141
	movq	%rax, -8(%rbp)	# tmp141, D.6346
	xorl	%eax, %eax	# tmp141
	.loc 1 463 0
	movl	$0, -1052(%rbp)	#, wpos
	.loc 1 465 0
	movq	-1088(%rbp), %rax	# line, tmp96
	movq	%rax, -1048(%rbp)	# tmp96, lp
	.loc 1 468 0
	leaq	-1056(%rbp), %rcx	#, tmp97
	leaq	-1040(%rbp), %rdx	#, tmp98
	movq	-1048(%rbp), %rax	# lp, tmp99
	movl	$.LC22, %esi	#,
	movq	%rax, %rdi	# tmp99,
	movl	$0, %eax	#,
	call	__isoc99_sscanf	#
	cmpl	$1, %eax	#, D.6340
	je	.L96	#,
	.loc 1 469 0
	movl	$.LC11, %edx	#,
	movl	$469, %esi	#,
	movl	$.LC10, %edi	#,
	call	_E__pr_header	#
	movq	-1088(%rbp), %rax	# line, tmp100
	movq	%rax, %rsi	# tmp100,
	movl	$.LC26, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L96:
	.loc 1 470 0
	movl	-1056(%rbp), %eax	# wlen, wlen.28
	cltq
	addq	%rax, -1048(%rbp)	# D.6341, lp
	.loc 1 472 0
	leaq	-1040(%rbp), %rdx	#, tmp101
	movq	-1080(%rbp), %rax	# m, tmp102
	movq	%rdx, %rsi	# tmp101,
	movq	%rax, %rdi	# tmp102,
	call	mdef_ciphone_id	#
	movb	%al, -1059(%rbp)	# tmp103, ci
	.loc 1 473 0
	cmpb	$0, -1059(%rbp)	#, ci
	jns	.L97	#,
	.loc 1 474 0
	movl	$.LC11, %edx	#,
	movl	$474, %esi	#,
	movl	$.LC10, %edi	#,
	call	_E__pr_header	#
	movq	-1088(%rbp), %rax	# line, tmp104
	movq	%rax, %rsi	# tmp104,
	movl	$.LC34, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L97:
	.loc 1 477 0
	leaq	-1056(%rbp), %rcx	#, tmp105
	leaq	-1040(%rbp), %rdx	#, tmp106
	movq	-1048(%rbp), %rax	# lp, tmp107
	movl	$.LC22, %esi	#,
	movq	%rax, %rdi	# tmp107,
	movl	$0, %eax	#,
	call	__isoc99_sscanf	#
	cmpl	$1, %eax	#, D.6340
	je	.L98	#,
	.loc 1 478 0
	movl	$.LC11, %edx	#,
	movl	$478, %esi	#,
	movl	$.LC10, %edi	#,
	call	_E__pr_header	#
	movq	-1088(%rbp), %rax	# line, tmp108
	movq	%rax, %rsi	# tmp108,
	movl	$.LC35, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L98:
	.loc 1 479 0
	movl	-1056(%rbp), %eax	# wlen, wlen.29
	cltq
	addq	%rax, -1048(%rbp)	# D.6341, lp
	.loc 1 480 0
	leaq	-1040(%rbp), %rdx	#, tmp109
	movq	-1080(%rbp), %rax	# m, tmp110
	movq	%rdx, %rsi	# tmp109,
	movq	%rax, %rdi	# tmp110,
	call	mdef_ciphone_id	#
	movb	%al, -1058(%rbp)	# tmp111, lc
	.loc 1 481 0
	cmpb	$0, -1058(%rbp)	#, lc
	jns	.L99	#,
	.loc 1 482 0
	movl	$.LC11, %edx	#,
	movl	$482, %esi	#,
	movl	$.LC10, %edi	#,
	call	_E__pr_header	#
	movq	-1088(%rbp), %rax	# line, tmp112
	movq	%rax, %rsi	# tmp112,
	movl	$.LC36, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L99:
	.loc 1 485 0
	leaq	-1056(%rbp), %rcx	#, tmp113
	leaq	-1040(%rbp), %rdx	#, tmp114
	movq	-1048(%rbp), %rax	# lp, tmp115
	movl	$.LC22, %esi	#,
	movq	%rax, %rdi	# tmp115,
	movl	$0, %eax	#,
	call	__isoc99_sscanf	#
	cmpl	$1, %eax	#, D.6340
	je	.L100	#,
	.loc 1 486 0
	movl	$.LC11, %edx	#,
	movl	$486, %esi	#,
	movl	$.LC10, %edi	#,
	call	_E__pr_header	#
	movq	-1088(%rbp), %rax	# line, tmp116
	movq	%rax, %rsi	# tmp116,
	movl	$.LC37, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L100:
	.loc 1 487 0
	movl	-1056(%rbp), %eax	# wlen, wlen.30
	cltq
	addq	%rax, -1048(%rbp)	# D.6341, lp
	.loc 1 488 0
	leaq	-1040(%rbp), %rdx	#, tmp117
	movq	-1080(%rbp), %rax	# m, tmp118
	movq	%rdx, %rsi	# tmp117,
	movq	%rax, %rdi	# tmp118,
	call	mdef_ciphone_id	#
	movb	%al, -1057(%rbp)	# tmp119, rc
	.loc 1 489 0
	cmpb	$0, -1057(%rbp)	#, rc
	jns	.L101	#,
	.loc 1 490 0
	movl	$.LC11, %edx	#,
	movl	$490, %esi	#,
	movl	$.LC10, %edi	#,
	call	_E__pr_header	#
	movq	-1088(%rbp), %rax	# line, tmp120
	movq	%rax, %rsi	# tmp120,
	movl	$.LC38, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L101:
	.loc 1 493 0
	leaq	-1056(%rbp), %rcx	#, tmp121
	leaq	-1040(%rbp), %rdx	#, tmp122
	movq	-1048(%rbp), %rax	# lp, tmp123
	movl	$.LC22, %esi	#,
	movq	%rax, %rdi	# tmp123,
	movl	$0, %eax	#,
	call	__isoc99_sscanf	#
	cmpl	$1, %eax	#, D.6340
	jne	.L102	#,
	.loc 1 493 0 is_stmt 0 discriminator 1
	movzbl	-1039(%rbp), %eax	# word, D.6342
	testb	%al, %al	# D.6342
	je	.L103	#,
.L102:
	.loc 1 494 0 is_stmt 1
	movl	$.LC11, %edx	#,
	movl	$494, %esi	#,
	movl	$.LC10, %edi	#,
	call	_E__pr_header	#
	movq	-1088(%rbp), %rax	# line, tmp124
	movq	%rax, %rsi	# tmp124,
	movl	$.LC39, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L103:
	.loc 1 495 0
	movl	-1056(%rbp), %eax	# wlen, wlen.31
	cltq
	addq	%rax, -1048(%rbp)	# D.6341, lp
	.loc 1 496 0
	movzbl	-1040(%rbp), %eax	# word, D.6342
	movsbl	%al, %eax	# D.6342, D.6340
	cmpl	$101, %eax	#, D.6340
	je	.L105	#,
	cmpl	$101, %eax	#, D.6340
	jg	.L106	#,
	cmpl	$98, %eax	#, D.6340
	je	.L107	#,
	jmp	.L104	#
.L106:
	cmpl	$105, %eax	#, D.6340
	je	.L108	#,
	cmpl	$115, %eax	#, D.6340
	je	.L109	#,
	jmp	.L104	#
.L107:
	.loc 1 497 0
	movl	$0, -1052(%rbp)	#, wpos
	jmp	.L110	#
.L105:
	.loc 1 498 0
	movl	$1, -1052(%rbp)	#, wpos
	jmp	.L110	#
.L109:
	.loc 1 499 0
	movl	$2, -1052(%rbp)	#, wpos
	jmp	.L110	#
.L108:
	.loc 1 500 0
	movl	$3, -1052(%rbp)	#, wpos
	jmp	.L110	#
.L104:
	.loc 1 501 0
	movl	$.LC11, %edx	#,
	movl	$501, %esi	#,
	movl	$.LC10, %edi	#,
	call	_E__pr_header	#
	movq	-1088(%rbp), %rax	# line, tmp125
	movq	%rax, %rsi	# tmp125,
	movl	$.LC40, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L110:
	.loc 1 505 0
	leaq	-1056(%rbp), %rcx	#, tmp126
	leaq	-1040(%rbp), %rdx	#, tmp127
	movq	-1048(%rbp), %rax	# lp, tmp128
	movl	$.LC22, %esi	#,
	movq	%rax, %rdi	# tmp128,
	movl	$0, %eax	#,
	call	__isoc99_sscanf	#
	cmpl	$1, %eax	#, D.6340
	je	.L111	#,
	.loc 1 506 0
	movl	$.LC11, %edx	#,
	movl	$506, %esi	#,
	movl	$.LC10, %edi	#,
	call	_E__pr_header	#
	movq	-1088(%rbp), %rax	# line, tmp129
	movq	%rax, %rsi	# tmp129,
	movl	$.LC41, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L111:
	.loc 1 507 0
	movl	-1056(%rbp), %eax	# wlen, wlen.32
	cltq
	addq	%rax, -1048(%rbp)	# D.6341, lp
	.loc 1 508 0
	leaq	-1040(%rbp), %rax	#, tmp130
	movl	$.LC31, %esi	#,
	movq	%rax, %rdi	# tmp130,
	call	strcmp	#
	testl	%eax, %eax	# D.6340
	jne	.L112	#,
	.loc 1 508 0 is_stmt 0 discriminator 1
	movq	-1080(%rbp), %rax	# m, tmp131
	movq	32(%rax), %rax	# m_9(D)->ciphone, D.6343
	movsbq	-1059(%rbp), %rdx	# ci, D.6344
	salq	$4, %rdx	#, D.6344
	addq	%rdx, %rax	# D.6344, D.6343
	movl	8(%rax), %eax	# _40->filler, D.6340
	testl	%eax, %eax	# D.6340
	je	.L112	#,
	jmp	.L113	#
.L112:
	.loc 1 509 0 is_stmt 1 discriminator 2
	leaq	-1040(%rbp), %rax	#, tmp132
	movl	$.LC32, %esi	#,
	movq	%rax, %rdi	# tmp132,
	call	strcmp	#
	.loc 1 508 0 discriminator 2
	testl	%eax, %eax	# D.6340
	jne	.L114	#,
	.loc 1 509 0
	movq	-1080(%rbp), %rax	# m, tmp133
	movq	32(%rax), %rax	# m_9(D)->ciphone, D.6343
	movsbq	-1059(%rbp), %rdx	# ci, D.6344
	salq	$4, %rdx	#, D.6344
	addq	%rdx, %rax	# D.6344, D.6343
	movl	8(%rax), %eax	# _46->filler, D.6340
	testl	%eax, %eax	# D.6340
	jne	.L114	#,
	.loc 1 509 0 is_stmt 0 discriminator 1
	jmp	.L113	#
.L114:
	.loc 1 512 0 is_stmt 1
	movl	$.LC11, %edx	#,
	movl	$512, %esi	#,
	movl	$.LC10, %edi	#,
	call	_E__pr_header	#
	movq	-1088(%rbp), %rax	# line, tmp134
	movq	%rax, %rsi	# tmp134,
	movl	$.LC33, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L113:
	.loc 1 514 0
	movsbl	-1057(%rbp), %ecx	# rc, D.6340
	movsbl	-1058(%rbp), %edx	# lc, D.6340
	movsbl	-1059(%rbp), %esi	# ci, D.6340
	movl	-1092(%rbp), %r8d	# p, tmp135
	movl	-1052(%rbp), %edi	# wpos, tmp136
	movq	-1080(%rbp), %rax	# m, tmp137
	movl	%r8d, %r9d	# tmp135,
	movl	%edi, %r8d	# tmp136,
	movq	%rax, %rdi	# tmp137,
	call	triphone_add	#
	.loc 1 517 0
	movq	-1048(%rbp), %rdx	# lp, lp.33
	movq	-1088(%rbp), %rax	# line, line.34
	subq	%rax, %rdx	# line.34, D.6345
	movq	%rdx, %rax	# D.6345, D.6345
	movl	%eax, %edx	# D.6345, D.6340
	movl	-1092(%rbp), %ecx	# p, tmp138
	movq	-1088(%rbp), %rsi	# line, tmp139
	movq	-1080(%rbp), %rax	# m, tmp140
	movq	%rax, %rdi	# tmp140,
	call	parse_tmat_senmap	#
	.loc 1 518 0
	movq	-8(%rbp), %rax	# D.6346, tmp142
	xorq	%fs:40, %rax	#, tmp142
	je	.L115	#,
	call	__stack_chk_fail	#
.L115:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	parse_tri_line, .-parse_tri_line
	.type	sseq_compress, @function
sseq_compress:
.LFB17:
	.loc 1 522 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movq	%rdi, -72(%rbp)	# m, m
	.loc 1 531 0
	movq	-72(%rbp), %rax	# m, tmp86
	movl	8(%rax), %eax	# m_5(D)->n_emit_state, D.6356
	addl	%eax, %eax	# D.6357
	movl	%eax, -44(%rbp)	# D.6357, k
	.loc 1 533 0
	movq	-72(%rbp), %rax	# m, tmp87
	movl	4(%rax), %eax	# m_5(D)->n_phone, D.6356
	movl	$0, %esi	#,
	movl	%eax, %edi	# D.6356,
	call	hash_new	#
	movq	%rax, -32(%rbp)	# tmp88, h
	.loc 1 534 0
	movl	$0, -52(%rbp)	#, n_sseq
	.loc 1 537 0
	movl	$0, -48(%rbp)	#, p
	jmp	.L117	#
.L119:
	.loc 1 539 0
	movq	-72(%rbp), %rax	# m, tmp89
	movq	48(%rax), %rax	# m_5(D)->sseq, D.6358
	movl	-48(%rbp), %edx	# p, tmp90
	movslq	%edx, %rdx	# tmp90, D.6359
	salq	$3, %rdx	#, D.6359
	addq	%rdx, %rax	# D.6359, D.6358
	movq	(%rax), %rsi	# *_18, D.6360
	movl	-52(%rbp), %ecx	# n_sseq, tmp91
	movl	-44(%rbp), %edx	# k, tmp92
	movq	-32(%rbp), %rax	# h, tmp93
	movq	%rax, %rdi	# tmp93,
	call	hash_enter_bkey	#
	movl	%eax, -56(%rbp)	# j.35, j
	movl	-56(%rbp), %eax	# j, j.36
	cmpl	-52(%rbp), %eax	# n_sseq, j.36
	jne	.L118	#,
	.loc 1 540 0
	addl	$1, -52(%rbp)	#, n_sseq
.L118:
	.loc 1 542 0
	movq	-72(%rbp), %rax	# m, tmp94
	movq	40(%rax), %rax	# m_5(D)->phone, D.6361
	movl	-48(%rbp), %edx	# p, tmp95
	movslq	%edx, %rdx	# tmp95, D.6359
	salq	$4, %rdx	#, D.6359
	addq	%rax, %rdx	# D.6361, D.6361
	movl	-56(%rbp), %eax	# j, j.37
	movl	%eax, (%rdx)	# j.37, _26->ssid
	.loc 1 537 0
	addl	$1, -48(%rbp)	#, p
.L117:
	.loc 1 537 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# m, tmp96
	movl	4(%rax), %eax	# m_5(D)->n_phone, D.6356
	cmpl	-48(%rbp), %eax	# p, D.6356
	jg	.L119	#,
	.loc 1 546 0 is_stmt 1
	movq	-72(%rbp), %rax	# m, tmp97
	movl	8(%rax), %esi	# m_5(D)->n_emit_state, D.6356
	movl	-52(%rbp), %eax	# n_sseq, tmp98
	movl	$546, %r8d	#,
	movl	$.LC10, %ecx	#,
	movl	$2, %edx	#,
	movl	%eax, %edi	# tmp98,
	call	__ckd_calloc_2d__	#
	movq	%rax, -24(%rbp)	# tmp99, sseq
	.loc 1 548 0
	leaq	-56(%rbp), %rdx	#, tmp100
	movq	-32(%rbp), %rax	# h, tmp101
	movq	%rdx, %rsi	# tmp100,
	movq	%rax, %rdi	# tmp101,
	call	hash_tolist	#
	movq	%rax, -16(%rbp)	# tmp102, g
	.loc 1 551 0
	movq	-16(%rbp), %rax	# g, tmp103
	movq	%rax, -40(%rbp)	# tmp103, gn
	jmp	.L120	#
.L121:
	.loc 1 552 0 discriminator 2
	movq	-40(%rbp), %rax	# gn, tmp104
	movq	(%rax), %rax	# gn_4->data.ptr, tmp105
	movq	%rax, -8(%rbp)	# tmp105, he
	.loc 1 553 0 discriminator 2
	movq	-8(%rbp), %rax	# he, tmp106
	movl	12(%rax), %eax	# he_33->val, j.38
	movl	%eax, -56(%rbp)	# j.38, j
	.loc 1 554 0 discriminator 2
	movl	-44(%rbp), %eax	# k, tmp107
	movslq	%eax, %rdx	# tmp107, D.6359
	movq	-8(%rbp), %rax	# he, tmp108
	movq	(%rax), %rcx	# he_33->key, D.6362
	movl	-56(%rbp), %eax	# j, j.39
	cltq
	leaq	0(,%rax,8), %rsi	#, D.6359
	movq	-24(%rbp), %rax	# sseq, tmp109
	addq	%rsi, %rax	# D.6359, D.6358
	movq	(%rax), %rax	# *_40, D.6360
	movq	%rcx, %rsi	# D.6362,
	movq	%rax, %rdi	# D.6360,
	call	memcpy	#
	.loc 1 551 0 discriminator 2
	movq	-40(%rbp), %rax	# gn, tmp110
	movq	8(%rax), %rax	# gn_4->next, tmp111
	movq	%rax, -40(%rbp)	# tmp111, gn
.L120:
	.loc 1 551 0 is_stmt 0 discriminator 1
	cmpq	$0, -40(%rbp)	#, gn
	jne	.L121	#,
	.loc 1 556 0 is_stmt 1
	movq	-16(%rbp), %rax	# g, tmp112
	movq	%rax, %rdi	# tmp112,
	call	glist_free	#
	.loc 1 559 0
	movq	-72(%rbp), %rax	# m, tmp113
	movq	48(%rax), %rax	# m_5(D)->sseq, D.6358
	movq	%rax, %rdi	# D.6358,
	call	ckd_free_2d	#
	.loc 1 560 0
	movq	-72(%rbp), %rax	# m, tmp114
	movq	-24(%rbp), %rdx	# sseq, tmp115
	movq	%rdx, 48(%rax)	# tmp115, m_5(D)->sseq
	.loc 1 561 0
	movq	-72(%rbp), %rax	# m, tmp116
	movl	-52(%rbp), %edx	# n_sseq, tmp117
	movl	%edx, 56(%rax)	# tmp117, m_5(D)->n_sseq
	.loc 1 563 0
	movq	-32(%rbp), %rax	# h, tmp118
	movq	%rax, %rdi	# tmp118,
	call	hash_free	#
	.loc 1 564 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	sseq_compress, .-sseq_compress
	.type	noncomment_line, @function
noncomment_line:
.LFB18:
	.loc 1 568 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -8(%rbp)	# line, line
	movl	%esi, -12(%rbp)	# size, size
	movq	%rdx, -24(%rbp)	# fp, fp
	.loc 1 569 0
	jmp	.L123	#
.L125:
	.loc 1 570 0
	movq	-8(%rbp), %rax	# line, tmp63
	movzbl	(%rax), %eax	# *line_2(D), D.6365
	cmpb	$35, %al	#, D.6365
	je	.L123	#,
	.loc 1 571 0
	movl	$0, %eax	#, D.6363
	jmp	.L124	#
.L123:
	.loc 1 569 0 discriminator 1
	movq	-24(%rbp), %rdx	# fp, tmp64
	movl	-12(%rbp), %ecx	# size, tmp65
	movq	-8(%rbp), %rax	# line, tmp66
	movl	%ecx, %esi	# tmp65,
	movq	%rax, %rdi	# tmp66,
	call	fgets	#
	testq	%rax, %rax	# D.6364
	jne	.L125	#,
	.loc 1 573 0
	movl	$-1, %eax	#, D.6363
.L124:
	.loc 1 574 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	noncomment_line, .-noncomment_line
	.section	.rodata
.LC42:
	.string	"No mdef-file\n"
.LC43:
	.string	"INFO"
.LC44:
	.string	"Reading model definition: %s\n"
.LC45:
	.string	"r"
.LC46:
	.string	"SYSTEM_ERROR"
.LC47:
	.string	"fopen(%s,r) failed\n"
.LC48:
	.string	"Empty file: %s\n"
.LC49:
	.string	"0.3"
	.align 8
.LC50:
	.string	"Version error: Expecing %s, but read %s\n"
.LC51:
	.string	"Incomplete header\n"
.LC52:
	.string	"%d %s"
.LC53:
	.string	"Error in header: %s\n"
.LC54:
	.string	"n_base"
.LC55:
	.string	"n_tri"
.LC56:
	.string	"n_state_map"
.LC57:
	.string	"n_tied_ci_state"
.LC58:
	.string	"n_tied_state"
.LC59:
	.string	"n_tied_tmat"
.LC60:
	.string	"Unknown header line: %s\n"
.LC61:
	.string	"%s: Error in header\n"
	.align 8
.LC62:
	.string	"%s: #CI phones (%d) exceeds limit (%d)\n"
	.align 8
.LC63:
	.string	"%s: #Phones (%d) exceeds limit (%d)\n"
	.align 8
.LC64:
	.string	"%s: #senones (%d) exceeds limit (%d)\n"
	.align 8
.LC65:
	.string	"%s: #tmats (%d) exceeds limit (%d)\n"
	.align 8
.LC66:
	.string	"Header error: n_state_map not a multiple of n_ci*n_tri\n"
	.align 8
.LC67:
	.string	"Premature EOF reading CIphone %d\n"
.LC68:
	.string	"SIL"
	.align 8
.LC69:
	.string	"Premature EOF reading phone %d\n"
.LC70:
	.string	"ERROR"
	.align 8
.LC71:
	.string	"Non-empty file beyond expected #phones (%d)\n"
	.align 8
.LC72:
	.string	"#CI-senones(%d) != #CI-phone(%d) x #emitting-states(%d)\n"
	.align 8
.LC73:
	.string	"Unreferenced senone %d; cannot determine parent CIphone\n"
	.align 8
.LC74:
	.string	"%d CI-phone, %d CD-phone, %d emitstate/phone, %d CI-sen, %d Sen, %d Sen-Seq\n"
	.text
	.globl	mdef_init
	.type	mdef_init, @function
mdef_init:
.LFB19:
	.loc 1 581 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$2168, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -2168(%rbp)	# mdeffile, mdeffile
	.loc 1 581 0
	movq	%fs:40, %rax	#, tmp471
	movq	%rax, -24(%rbp)	# tmp471, D.6380
	xorl	%eax, %eax	# tmp471
	.loc 1 591 0
	cmpq	$0, -2168(%rbp)	#, mdeffile
	jne	.L127	#,
	.loc 1 592 0
	movl	$.LC11, %edx	#,
	movl	$592, %esi	#,
	movl	$.LC10, %edi	#,
	call	_E__pr_header	#
	movl	$.LC42, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L127:
	.loc 1 594 0
	movl	$.LC43, %edx	#,
	movl	$594, %esi	#,
	movl	$.LC10, %edi	#,
	call	_E__pr_info_header	#
	movq	-2168(%rbp), %rax	# mdeffile, tmp269
	movq	%rax, %rsi	# tmp269,
	movl	$.LC44, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_info	#
	.loc 1 596 0
	movl	$596, %ecx	#,
	movl	$.LC10, %edx	#,
	movl	$104, %esi	#,
	movl	$1, %edi	#,
	call	__ckd_calloc__	#
	movq	%rax, -2120(%rbp)	# tmp270, m
	.loc 1 598 0
	movq	-2168(%rbp), %rax	# mdeffile, tmp271
	movl	$.LC45, %esi	#,
	movq	%rax, %rdi	# tmp271,
	call	fopen	#
	movq	%rax, -2112(%rbp)	# tmp272, fp
	cmpq	$0, -2112(%rbp)	#, fp
	jne	.L128	#,
	.loc 1 599 0
	movl	$.LC46, %edx	#,
	movl	$599, %esi	#,
	movl	$.LC10, %edi	#,
	call	_E__pr_header	#
	movq	-2168(%rbp), %rax	# mdeffile, tmp273
	movq	%rax, %rsi	# tmp273,
	movl	$.LC47, %edi	#,
	movl	$0, %eax	#,
	call	_E__fatal_sys_error	#
.L128:
	.loc 1 601 0
	movq	-2112(%rbp), %rdx	# fp, tmp274
	leaq	-1056(%rbp), %rax	#, tmp275
	movl	$1024, %esi	#,
	movq	%rax, %rdi	# tmp275,
	call	noncomment_line	#
	testl	%eax, %eax	# D.6366
	jns	.L129	#,
	.loc 1 602 0
	movl	$.LC11, %edx	#,
	movl	$602, %esi	#,
	movl	$.LC10, %edi	#,
	call	_E__pr_header	#
	movq	-2168(%rbp), %rax	# mdeffile, tmp276
	movq	%rax, %rsi	# tmp276,
	movl	$.LC48, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L129:
	.loc 1 604 0
	leaq	-1056(%rbp), %rax	#, tmp277
	movl	$3, %edx	#,
	movl	$.LC49, %esi	#,
	movq	%rax, %rdi	# tmp277,
	call	strncmp	#
	testl	%eax, %eax	# D.6366
	je	.L130	#,
	.loc 1 605 0
	movl	$.LC11, %edx	#,
	movl	$605, %esi	#,
	movl	$.LC10, %edi	#,
	call	_E__pr_header	#
	leaq	-1056(%rbp), %rax	#, tmp278
	movq	%rax, %rdx	# tmp278,
	movl	$.LC49, %esi	#,
	movl	$.LC50, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L130:
	.loc 1 608 0
	movl	$-1, -2148(%rbp)	#, n_ci
	.loc 1 609 0
	movl	$-1, -2144(%rbp)	#, n_tri
	.loc 1 610 0
	movl	$-1, -2140(%rbp)	#, n_map
	.loc 1 611 0
	movq	-2120(%rbp), %rax	# m, tmp279
	movl	$-1, 12(%rax)	#, m_18->n_ci_sen
	.loc 1 612 0
	movq	-2120(%rbp), %rax	# m, tmp280
	movl	$-1, 16(%rax)	#, m_18->n_sen
	.loc 1 613 0
	movq	-2120(%rbp), %rax	# m, tmp281
	movl	$-1, 20(%rax)	#, m_18->n_tmat
.L141:
	.loc 1 615 0
	movq	-2112(%rbp), %rdx	# fp, tmp282
	leaq	-1056(%rbp), %rax	#, tmp283
	movl	$1024, %esi	#,
	movq	%rax, %rdi	# tmp283,
	call	noncomment_line	#
	testl	%eax, %eax	# D.6366
	jns	.L131	#,
	.loc 1 616 0
	movl	$.LC11, %edx	#,
	movl	$616, %esi	#,
	movl	$.LC10, %edi	#,
	call	_E__pr_header	#
	movl	$.LC51, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L131:
	.loc 1 618 0
	leaq	-2080(%rbp), %rcx	#, tmp284
	leaq	-2152(%rbp), %rdx	#, tmp285
	leaq	-1056(%rbp), %rax	#, tmp286
	movl	$.LC52, %esi	#,
	movq	%rax, %rdi	# tmp286,
	movl	$0, %eax	#,
	call	__isoc99_sscanf	#
	cmpl	$2, %eax	#, D.6366
	jne	.L132	#,
	.loc 1 618 0 is_stmt 0 discriminator 1
	movl	-2152(%rbp), %eax	# n, n.40
	testl	%eax, %eax	# n.40
	jns	.L133	#,
.L132:
	.loc 1 619 0 is_stmt 1
	movl	$.LC11, %edx	#,
	movl	$619, %esi	#,
	movl	$.LC10, %edi	#,
	call	_E__pr_header	#
	leaq	-1056(%rbp), %rax	#, tmp287
	movq	%rax, %rsi	# tmp287,
	movl	$.LC53, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L133:
	.loc 1 621 0
	leaq	-2080(%rbp), %rax	#, tmp288
	movl	$.LC54, %esi	#,
	movq	%rax, %rdi	# tmp288,
	call	strcmp	#
	testl	%eax, %eax	# D.6366
	jne	.L134	#,
	.loc 1 622 0
	movl	-2152(%rbp), %eax	# n, tmp289
	movl	%eax, -2148(%rbp)	# tmp289, n_ci
	jmp	.L135	#
.L134:
	.loc 1 623 0
	leaq	-2080(%rbp), %rax	#, tmp290
	movl	$.LC55, %esi	#,
	movq	%rax, %rdi	# tmp290,
	call	strcmp	#
	testl	%eax, %eax	# D.6366
	jne	.L136	#,
	.loc 1 624 0
	movl	-2152(%rbp), %eax	# n, tmp291
	movl	%eax, -2144(%rbp)	# tmp291, n_tri
	jmp	.L135	#
.L136:
	.loc 1 625 0
	leaq	-2080(%rbp), %rax	#, tmp292
	movl	$.LC56, %esi	#,
	movq	%rax, %rdi	# tmp292,
	call	strcmp	#
	testl	%eax, %eax	# D.6366
	jne	.L137	#,
	.loc 1 626 0
	movl	-2152(%rbp), %eax	# n, tmp293
	movl	%eax, -2140(%rbp)	# tmp293, n_map
	jmp	.L135	#
.L137:
	.loc 1 627 0
	leaq	-2080(%rbp), %rax	#, tmp294
	movl	$.LC57, %esi	#,
	movq	%rax, %rdi	# tmp294,
	call	strcmp	#
	testl	%eax, %eax	# D.6366
	jne	.L138	#,
	.loc 1 628 0
	movl	-2152(%rbp), %edx	# n, n.41
	movq	-2120(%rbp), %rax	# m, tmp295
	movl	%edx, 12(%rax)	# n.41, m_18->n_ci_sen
	jmp	.L135	#
.L138:
	.loc 1 629 0
	leaq	-2080(%rbp), %rax	#, tmp296
	movl	$.LC58, %esi	#,
	movq	%rax, %rdi	# tmp296,
	call	strcmp	#
	testl	%eax, %eax	# D.6366
	jne	.L139	#,
	.loc 1 630 0
	movl	-2152(%rbp), %edx	# n, n.42
	movq	-2120(%rbp), %rax	# m, tmp297
	movl	%edx, 16(%rax)	# n.42, m_18->n_sen
	jmp	.L135	#
.L139:
	.loc 1 631 0
	leaq	-2080(%rbp), %rax	#, tmp298
	movl	$.LC59, %esi	#,
	movq	%rax, %rdi	# tmp298,
	call	strcmp	#
	testl	%eax, %eax	# D.6366
	jne	.L140	#,
	.loc 1 632 0
	movl	-2152(%rbp), %edx	# n, n.43
	movq	-2120(%rbp), %rax	# m, tmp299
	movl	%edx, 20(%rax)	# n.43, m_18->n_tmat
	jmp	.L135	#
.L140:
	.loc 1 634 0
	movl	$.LC11, %edx	#,
	movl	$634, %esi	#,
	movl	$.LC10, %edi	#,
	call	_E__pr_header	#
	leaq	-1056(%rbp), %rax	#, tmp300
	movq	%rax, %rsi	# tmp300,
	movl	$.LC60, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L135:
	.loc 1 636 0
	cmpl	$0, -2148(%rbp)	#, n_ci
	js	.L141	#,
	.loc 1 635 0
	cmpl	$0, -2144(%rbp)	#, n_tri
	js	.L141	#,
	.loc 1 635 0 is_stmt 0 discriminator 1
	cmpl	$0, -2140(%rbp)	#, n_map
	js	.L141	#,
	.loc 1 636 0 is_stmt 1 discriminator 1
	movq	-2120(%rbp), %rax	# m, tmp301
	movl	12(%rax), %eax	# m_18->n_ci_sen, D.6366
	.loc 1 635 0 discriminator 1
	testl	%eax, %eax	# D.6366
	js	.L141	#,
	.loc 1 636 0
	movq	-2120(%rbp), %rax	# m, tmp302
	movl	16(%rax), %eax	# m_18->n_sen, D.6366
	testl	%eax, %eax	# D.6366
	js	.L141	#,
	.loc 1 636 0 is_stmt 0 discriminator 1
	movq	-2120(%rbp), %rax	# m, tmp303
	movl	20(%rax), %eax	# m_18->n_tmat, D.6366
	testl	%eax, %eax	# D.6366
	js	.L141	#,
	.loc 1 638 0 is_stmt 1
	cmpl	$0, -2148(%rbp)	#, n_ci
	je	.L142	#,
	.loc 1 638 0 is_stmt 0 discriminator 1
	movq	-2120(%rbp), %rax	# m, tmp304
	movl	12(%rax), %eax	# m_18->n_ci_sen, D.6366
	testl	%eax, %eax	# D.6366
	je	.L142	#,
	movq	-2120(%rbp), %rax	# m, tmp305
	movl	20(%rax), %eax	# m_18->n_tmat, D.6366
	testl	%eax, %eax	# D.6366
	je	.L142	#,
	movq	-2120(%rbp), %rax	# m, tmp306
	movl	12(%rax), %edx	# m_18->n_ci_sen, D.6366
	movq	-2120(%rbp), %rax	# m, tmp307
	movl	16(%rax), %eax	# m_18->n_sen, D.6366
	cmpl	%eax, %edx	# D.6366, D.6366
	jle	.L143	#,
.L142:
	.loc 1 639 0 is_stmt 1
	movl	$.LC11, %edx	#,
	movl	$639, %esi	#,
	movl	$.LC10, %edi	#,
	call	_E__pr_header	#
	movq	-2168(%rbp), %rax	# mdeffile, tmp308
	movq	%rax, %rsi	# tmp308,
	movl	$.LC61, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L143:
	.loc 1 642 0
	cmpl	$126, -2148(%rbp)	#, n_ci
	jle	.L144	#,
	.loc 1 643 0
	movl	$.LC11, %edx	#,
	movl	$643, %esi	#,
	movl	$.LC10, %edi	#,
	call	_E__pr_header	#
	movl	-2148(%rbp), %edx	# n_ci, tmp309
	movq	-2168(%rbp), %rax	# mdeffile, tmp310
	movl	$127, %ecx	#,
	movq	%rax, %rsi	# tmp310,
	movl	$.LC62, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L144:
	.loc 1 644 0
	movl	-2144(%rbp), %eax	# n_tri, tmp311
	movl	-2148(%rbp), %edx	# n_ci, tmp312
	addl	%edx, %eax	# tmp312, D.6366
	cmpl	$2147483645, %eax	#, D.6366
	jle	.L145	#,
	.loc 1 645 0
	movl	$.LC11, %edx	#,
	movl	$645, %esi	#,
	movl	$.LC10, %edi	#,
	call	_E__pr_header	#
	movl	-2144(%rbp), %eax	# n_tri, tmp313
	movl	-2148(%rbp), %edx	# n_ci, tmp314
	addl	%eax, %edx	# tmp313, D.6366
	movq	-2168(%rbp), %rax	# mdeffile, tmp315
	movl	$2147483646, %ecx	#,
	movq	%rax, %rsi	# tmp315,
	movl	$.LC63, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L145:
	.loc 1 646 0
	movq	-2120(%rbp), %rax	# m, tmp316
	movl	16(%rax), %eax	# m_18->n_sen, D.6366
	cmpl	$32765, %eax	#, D.6366
	jle	.L146	#,
	.loc 1 647 0
	movl	$.LC11, %edx	#,
	movl	$647, %esi	#,
	movl	$.LC10, %edi	#,
	call	_E__pr_header	#
	movq	-2120(%rbp), %rax	# m, tmp317
	movl	16(%rax), %edx	# m_18->n_sen, D.6366
	movq	-2168(%rbp), %rax	# mdeffile, tmp318
	movl	$32766, %ecx	#,
	movq	%rax, %rsi	# tmp318,
	movl	$.LC64, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L146:
	.loc 1 648 0
	movq	-2120(%rbp), %rax	# m, tmp319
	movl	20(%rax), %eax	# m_18->n_tmat, D.6366
	cmpl	$2147483645, %eax	#, D.6366
	jle	.L147	#,
	.loc 1 649 0
	movl	$.LC11, %edx	#,
	movl	$649, %esi	#,
	movl	$.LC10, %edi	#,
	call	_E__pr_header	#
	movq	-2120(%rbp), %rax	# m, tmp320
	movl	20(%rax), %edx	# m_18->n_tmat, D.6366
	movq	-2168(%rbp), %rax	# mdeffile, tmp321
	movl	$2147483646, %ecx	#,
	movq	%rax, %rsi	# tmp321,
	movl	$.LC65, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L147:
	.loc 1 651 0
	movl	-2144(%rbp), %eax	# n_tri, tmp322
	movl	-2148(%rbp), %edx	# n_ci, tmp323
	leal	(%rdx,%rax), %ebx	#, D.6366
	movl	-2140(%rbp), %eax	# n_map, tmp326
	cltd
	idivl	%ebx	# D.6366
	leal	-1(%rax), %edx	#, D.6366
	movq	-2120(%rbp), %rax	# m, tmp327
	movl	%edx, 8(%rax)	# D.6366, m_18->n_emit_state
	.loc 1 652 0
	movq	-2120(%rbp), %rax	# m, tmp328
	movl	8(%rax), %eax	# m_18->n_emit_state, D.6366
	leal	1(%rax), %ecx	#, D.6366
	movl	-2144(%rbp), %eax	# n_tri, tmp329
	movl	-2148(%rbp), %edx	# n_ci, tmp330
	addl	%edx, %eax	# tmp330, D.6366
	imull	%ecx, %eax	# D.6366, D.6366
	cmpl	-2140(%rbp), %eax	# n_map, D.6366
	je	.L148	#,
	.loc 1 653 0
	movl	$.LC11, %edx	#,
	movl	$653, %esi	#,
	movl	$.LC10, %edi	#,
	call	_E__pr_header	#
	movl	$.LC66, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L148:
	.loc 1 656 0
	movq	-2120(%rbp), %rax	# m, tmp331
	movl	-2148(%rbp), %edx	# n_ci, tmp332
	movl	%edx, (%rax)	# tmp332, m_18->n_ciphone
	.loc 1 657 0
	movl	-2148(%rbp), %eax	# n_ci, tmp333
	movl	$1, %esi	#,
	movl	%eax, %edi	# tmp333,
	call	hash_new	#
	movq	-2120(%rbp), %rdx	# m, tmp334
	movq	%rax, 24(%rdx)	# D.6367, m_18->ciphone_ht
	.loc 1 658 0
	movl	-2148(%rbp), %eax	# n_ci, tmp335
	cltq
	movl	$658, %ecx	#,
	movl	$.LC10, %edx	#,
	movl	$16, %esi	#,
	movq	%rax, %rdi	# D.6368,
	call	__ckd_calloc__	#
	movq	-2120(%rbp), %rdx	# m, tmp336
	movq	%rax, 32(%rdx)	# D.6369, m_18->ciphone
	.loc 1 665 0
	movl	-2144(%rbp), %eax	# n_tri, tmp337
	movl	-2148(%rbp), %edx	# n_ci, tmp338
	addl	%eax, %edx	# tmp337, D.6366
	movq	-2120(%rbp), %rax	# m, tmp339
	movl	%edx, 4(%rax)	# D.6366, m_18->n_phone
	.loc 1 666 0
	movq	-2120(%rbp), %rax	# m, tmp340
	movl	4(%rax), %eax	# m_18->n_phone, D.6366
	cltq
	movl	$666, %ecx	#,
	movl	$.LC10, %edx	#,
	movl	$16, %esi	#,
	movq	%rax, %rdi	# D.6368,
	call	__ckd_calloc__	#
	movq	-2120(%rbp), %rdx	# m, tmp341
	movq	%rax, 40(%rdx)	# D.6369, m_18->phone
	.loc 1 669 0
	movq	-2120(%rbp), %rax	# m, tmp342
	movl	8(%rax), %esi	# m_18->n_emit_state, D.6366
	movq	-2120(%rbp), %rax	# m, tmp343
	movl	4(%rax), %eax	# m_18->n_phone, D.6366
	movl	$669, %r8d	#,
	movl	$.LC10, %ecx	#,
	movl	$2, %edx	#,
	movl	%eax, %edi	# D.6366,
	call	__ckd_calloc_2d__	#
	movq	%rax, -2104(%rbp)	# tmp344, senmap
	.loc 1 670 0
	movq	-2120(%rbp), %rax	# m, tmp345
	movq	-2104(%rbp), %rdx	# senmap, tmp346
	movq	%rdx, 48(%rax)	# tmp346, m_18->sseq
	.loc 1 673 0
	movq	-2120(%rbp), %rax	# m, tmp347
	movl	(%rax), %eax	# m_18->n_ciphone, D.6366
	movl	$673, %r8d	#,
	movl	$.LC10, %ecx	#,
	movl	$8, %edx	#,
	movl	%eax, %esi	# D.6366,
	movl	$4, %edi	#,
	call	__ckd_calloc_2d__	#
	movq	-2120(%rbp), %rdx	# m, tmp348
	movq	%rax, 96(%rdx)	# D.6370, m_18->wpos_ci_lclist
	.loc 1 681 0
	movl	$0, -2136(%rbp)	#, p
	jmp	.L149	#
.L151:
	.loc 1 682 0
	movq	-2112(%rbp), %rdx	# fp, tmp349
	leaq	-1056(%rbp), %rax	#, tmp350
	movl	$1024, %esi	#,
	movq	%rax, %rdi	# tmp350,
	call	noncomment_line	#
	testl	%eax, %eax	# D.6366
	jns	.L150	#,
	.loc 1 683 0
	movl	$.LC11, %edx	#,
	movl	$683, %esi	#,
	movl	$.LC10, %edi	#,
	call	_E__pr_header	#
	movl	-2136(%rbp), %eax	# p, tmp351
	movl	%eax, %esi	# tmp351,
	movl	$.LC67, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L150:
	.loc 1 684 0
	movl	-2136(%rbp), %edx	# p, tmp352
	leaq	-1056(%rbp), %rcx	#, tmp353
	movq	-2120(%rbp), %rax	# m, tmp354
	movq	%rcx, %rsi	# tmp353,
	movq	%rax, %rdi	# tmp354,
	call	parse_base_line	#
	.loc 1 681 0
	addl	$1, -2136(%rbp)	#, p
.L149:
	.loc 1 681 0 is_stmt 0 discriminator 1
	movl	-2136(%rbp), %eax	# p, tmp355
	cmpl	-2148(%rbp), %eax	# n_ci, tmp355
	jl	.L151	#,
	.loc 1 686 0 is_stmt 1
	movq	-2120(%rbp), %rax	# m, tmp356
	movl	$.LC68, %esi	#,
	movq	%rax, %rdi	# tmp356,
	call	mdef_ciphone_id	#
	movq	-2120(%rbp), %rdx	# m, tmp357
	movb	%al, 88(%rdx)	# D.6371, m_18->sil
	.loc 1 689 0
	jmp	.L152	#
.L154:
	.loc 1 690 0
	movq	-2112(%rbp), %rdx	# fp, tmp358
	leaq	-1056(%rbp), %rax	#, tmp359
	movl	$1024, %esi	#,
	movq	%rax, %rdi	# tmp359,
	call	noncomment_line	#
	testl	%eax, %eax	# D.6366
	jns	.L153	#,
	.loc 1 691 0
	movl	$.LC11, %edx	#,
	movl	$691, %esi	#,
	movl	$.LC10, %edi	#,
	call	_E__pr_header	#
	movl	-2136(%rbp), %eax	# p, tmp360
	movl	%eax, %esi	# tmp360,
	movl	$.LC69, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L153:
	.loc 1 692 0
	movl	-2136(%rbp), %edx	# p, tmp361
	leaq	-1056(%rbp), %rcx	#, tmp362
	movq	-2120(%rbp), %rax	# m, tmp363
	movq	%rcx, %rsi	# tmp362,
	movq	%rax, %rdi	# tmp363,
	call	parse_tri_line	#
	.loc 1 689 0
	addl	$1, -2136(%rbp)	#, p
.L152:
	.loc 1 689 0 is_stmt 0 discriminator 1
	movq	-2120(%rbp), %rax	# m, tmp364
	movl	4(%rax), %eax	# m_18->n_phone, D.6366
	cmpl	-2136(%rbp), %eax	# p, D.6366
	jg	.L154	#,
	.loc 1 695 0 is_stmt 1
	movq	-2112(%rbp), %rdx	# fp, tmp365
	leaq	-1056(%rbp), %rax	#, tmp366
	movl	$1024, %esi	#,
	movq	%rax, %rdi	# tmp366,
	call	noncomment_line	#
	testl	%eax, %eax	# D.6366
	js	.L155	#,
	.loc 1 696 0
	movl	$.LC70, %edx	#,
	movl	$696, %esi	#,
	movl	$.LC10, %edi	#,
	call	_E__pr_header	#
	movq	-2120(%rbp), %rax	# m, tmp367
	movl	4(%rax), %eax	# m_18->n_phone, D.6366
	movl	%eax, %esi	# D.6366,
	movl	$.LC71, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_warn	#
.L155:
	.loc 1 699 0
	movq	-2120(%rbp), %rax	# m, tmp368
	movl	(%rax), %edx	# m_18->n_ciphone, D.6366
	movq	-2120(%rbp), %rax	# m, tmp369
	movl	8(%rax), %eax	# m_18->n_emit_state, D.6366
	imull	%eax, %edx	# D.6366, D.6366
	movq	-2120(%rbp), %rax	# m, tmp370
	movl	12(%rax), %eax	# m_18->n_ci_sen, D.6366
	cmpl	%eax, %edx	# D.6366, D.6366
	je	.L156	#,
	.loc 1 700 0
	movl	$.LC11, %edx	#,
	movl	$700, %esi	#,
	movl	$.LC10, %edi	#,
	call	_E__pr_header	#
	movq	-2120(%rbp), %rax	# m, tmp371
	movl	8(%rax), %ecx	# m_18->n_emit_state, D.6366
	movq	-2120(%rbp), %rax	# m, tmp372
	movl	(%rax), %edx	# m_18->n_ciphone, D.6366
	movq	-2120(%rbp), %rax	# m, tmp373
	movl	12(%rax), %eax	# m_18->n_ci_sen, D.6366
	movl	%eax, %esi	# D.6366,
	movl	$.LC72, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L156:
	.loc 1 702 0
	movq	-2120(%rbp), %rax	# m, tmp374
	movl	16(%rax), %eax	# m_18->n_sen, D.6366
	cltq
	movl	$702, %ecx	#,
	movl	$.LC10, %edx	#,
	movl	$2, %esi	#,
	movq	%rax, %rdi	# D.6368,
	call	__ckd_calloc__	#
	movq	-2120(%rbp), %rdx	# m, tmp375
	movq	%rax, 64(%rdx)	# D.6369, m_18->cd2cisen
	.loc 1 704 0
	movq	-2120(%rbp), %rax	# m, tmp376
	movl	16(%rax), %eax	# m_18->n_sen, D.6366
	cltq
	movl	$704, %ecx	#,
	movl	$.LC10, %edx	#,
	movl	$1, %esi	#,
	movq	%rax, %rdi	# D.6368,
	call	__ckd_calloc__	#
	movq	-2120(%rbp), %rdx	# m, tmp377
	movq	%rax, 72(%rdx)	# D.6369, m_18->sen2cimap
	.loc 1 706 0
	movl	$0, -2132(%rbp)	#, s
	jmp	.L157	#
.L158:
	.loc 1 707 0 discriminator 2
	movq	-2120(%rbp), %rax	# m, tmp378
	movq	72(%rax), %rdx	# m_18->sen2cimap, D.6372
	movl	-2132(%rbp), %eax	# s, tmp379
	cltq
	addq	%rdx, %rax	# D.6372, D.6372
	movb	$-1, (%rax)	#, *_98
	.loc 1 706 0 discriminator 2
	addl	$1, -2132(%rbp)	#, s
.L157:
	.loc 1 706 0 is_stmt 0 discriminator 1
	movq	-2120(%rbp), %rax	# m, tmp380
	movl	16(%rax), %eax	# m_18->n_sen, D.6366
	cmpl	-2132(%rbp), %eax	# s, D.6366
	jg	.L158	#,
	.loc 1 708 0 is_stmt 1
	movl	$0, -2132(%rbp)	#, s
	jmp	.L159	#
.L160:
	.loc 1 709 0 discriminator 2
	movq	-2120(%rbp), %rax	# m, tmp381
	movq	64(%rax), %rax	# m_18->cd2cisen, D.6374
	movl	-2132(%rbp), %edx	# s, tmp382
	movslq	%edx, %rdx	# tmp382, D.6368
	addq	%rdx, %rdx	# D.6368
	addq	%rax, %rdx	# D.6374, D.6374
	movl	-2132(%rbp), %eax	# s, tmp383
	movw	%ax, (%rdx)	# D.6375, *_105
	.loc 1 710 0 discriminator 2
	movq	-2120(%rbp), %rax	# m, tmp384
	movq	72(%rax), %rdx	# m_18->sen2cimap, D.6372
	movl	-2132(%rbp), %eax	# s, tmp385
	cltq
	leaq	(%rdx,%rax), %rcx	#, D.6372
	movq	-2120(%rbp), %rax	# m, tmp386
	movl	8(%rax), %ebx	# m_18->n_emit_state, D.6366
	movl	-2132(%rbp), %eax	# s, tmp389
	cltd
	idivl	%ebx	# D.6366
	movb	%al, (%rcx)	# D.6371, *_109
	.loc 1 708 0 discriminator 2
	addl	$1, -2132(%rbp)	#, s
.L159:
	.loc 1 708 0 is_stmt 0 discriminator 1
	movq	-2120(%rbp), %rax	# m, tmp390
	movl	12(%rax), %eax	# m_18->n_ci_sen, D.6366
	cmpl	-2132(%rbp), %eax	# s, D.6366
	jg	.L160	#,
	.loc 1 712 0 is_stmt 1
	movl	-2148(%rbp), %eax	# n_ci, tmp391
	movl	%eax, -2136(%rbp)	# tmp391, p
	jmp	.L161	#
.L164:
	.loc 1 713 0
	movl	$0, -2132(%rbp)	#, s
	jmp	.L162	#
.L163:
	.loc 1 714 0 discriminator 2
	movq	-2120(%rbp), %rax	# m, tmp392
	movq	48(%rax), %rax	# m_18->sseq, D.6376
	movl	-2136(%rbp), %edx	# p, tmp393
	movslq	%edx, %rdx	# tmp393, D.6368
	salq	$3, %rdx	#, D.6368
	addq	%rdx, %rax	# D.6368, D.6376
	movq	(%rax), %rax	# *_121, D.6374
	movl	-2132(%rbp), %edx	# s, tmp394
	movslq	%edx, %rdx	# tmp394, D.6368
	addq	%rdx, %rdx	# D.6368
	addq	%rdx, %rax	# D.6368, D.6374
	movzwl	(%rax), %eax	# *_125, D.6375
	cwtl
	movl	%eax, -2128(%rbp)	# tmp395, cd
	.loc 1 715 0 discriminator 2
	movq	-2120(%rbp), %rax	# m, tmp396
	movq	48(%rax), %rdx	# m_18->sseq, D.6376
	movq	-2120(%rbp), %rax	# m, tmp397
	movq	40(%rax), %rax	# m_18->phone, D.6377
	movl	-2136(%rbp), %ecx	# p, tmp398
	movslq	%ecx, %rcx	# tmp398, D.6368
	salq	$4, %rcx	#, D.6368
	addq	%rcx, %rax	# D.6368, D.6377
	movzbl	8(%rax), %eax	# _132->ci, D.6371
	movsbq	%al, %rax	# D.6371, D.6368
	salq	$3, %rax	#, D.6368
	addq	%rdx, %rax	# D.6376, D.6376
	movq	(%rax), %rax	# *_136, D.6374
	movl	-2132(%rbp), %edx	# s, tmp399
	movslq	%edx, %rdx	# tmp399, D.6368
	addq	%rdx, %rdx	# D.6368
	addq	%rdx, %rax	# D.6368, D.6374
	movzwl	(%rax), %eax	# *_140, D.6375
	cwtl
	movl	%eax, -2124(%rbp)	# tmp400, ci
	.loc 1 716 0 discriminator 2
	movq	-2120(%rbp), %rax	# m, tmp401
	movq	64(%rax), %rax	# m_18->cd2cisen, D.6374
	movl	-2128(%rbp), %edx	# cd, tmp402
	movslq	%edx, %rdx	# tmp402, D.6368
	addq	%rdx, %rdx	# D.6368
	addq	%rax, %rdx	# D.6374, D.6374
	movl	-2124(%rbp), %eax	# ci, tmp403
	movw	%ax, (%rdx)	# D.6375, *_146
	.loc 1 717 0 discriminator 2
	movq	-2120(%rbp), %rax	# m, tmp404
	movq	72(%rax), %rdx	# m_18->sen2cimap, D.6372
	movl	-2128(%rbp), %eax	# cd, tmp405
	cltq
	addq	%rax, %rdx	# D.6373, D.6372
	movq	-2120(%rbp), %rax	# m, tmp406
	movq	40(%rax), %rax	# m_18->phone, D.6377
	movl	-2136(%rbp), %ecx	# p, tmp407
	movslq	%ecx, %rcx	# tmp407, D.6368
	salq	$4, %rcx	#, D.6368
	addq	%rcx, %rax	# D.6368, D.6377
	movzbl	8(%rax), %eax	# _154->ci, D.6371
	movb	%al, (%rdx)	# D.6371, *_150
	.loc 1 713 0 discriminator 2
	addl	$1, -2132(%rbp)	#, s
.L162:
	.loc 1 713 0 is_stmt 0 discriminator 1
	movq	-2120(%rbp), %rax	# m, tmp408
	movl	8(%rax), %eax	# m_18->n_emit_state, D.6366
	cmpl	-2132(%rbp), %eax	# s, D.6366
	jg	.L163	#,
	.loc 1 712 0 is_stmt 1
	addl	$1, -2136(%rbp)	#, p
.L161:
	.loc 1 712 0 is_stmt 0 discriminator 1
	movq	-2120(%rbp), %rax	# m, tmp409
	movl	4(%rax), %eax	# m_18->n_phone, D.6366
	cmpl	-2136(%rbp), %eax	# p, D.6366
	jg	.L164	#,
	.loc 1 726 0 is_stmt 1
	movq	-2120(%rbp), %rax	# m, tmp410
	movl	(%rax), %eax	# m_18->n_ciphone, D.6366
	cltq
	movl	$726, %ecx	#,
	movl	$.LC10, %edx	#,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# D.6368,
	call	__ckd_calloc__	#
	movq	%rax, -2096(%rbp)	# tmp411, cdsen_start
	.loc 1 728 0
	movq	-2120(%rbp), %rax	# m, tmp412
	movl	(%rax), %eax	# m_18->n_ciphone, D.6366
	cltq
	movl	$728, %ecx	#,
	movl	$.LC10, %edx	#,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# D.6368,
	call	__ckd_calloc__	#
	movq	%rax, -2088(%rbp)	# tmp413, cdsen_end
	.loc 1 730 0
	movq	-2120(%rbp), %rax	# m, tmp414
	movl	12(%rax), %eax	# m_18->n_ci_sen, tmp415
	movl	%eax, -2132(%rbp)	# tmp415, s
	jmp	.L165	#
.L169:
	.loc 1 731 0
	movq	-2120(%rbp), %rax	# m, tmp416
	movq	72(%rax), %rdx	# m_18->sen2cimap, D.6372
	movl	-2132(%rbp), %eax	# s, tmp417
	cltq
	addq	%rdx, %rax	# D.6372, D.6372
	movzbl	(%rax), %eax	# *_168, D.6371
	testb	%al, %al	# D.6371
	jns	.L166	#,
	.loc 1 732 0
	jmp	.L167	#
.L166:
	.loc 1 734 0
	movq	-2120(%rbp), %rax	# m, tmp418
	movq	72(%rax), %rdx	# m_18->sen2cimap, D.6372
	movl	-2132(%rbp), %eax	# s, tmp419
	cltq
	addq	%rdx, %rax	# D.6372, D.6372
	movzbl	(%rax), %eax	# *_172, D.6371
	movsbq	%al, %rax	# D.6371, D.6368
	leaq	0(,%rax,4), %rdx	#, D.6368
	movq	-2096(%rbp), %rax	# cdsen_start, tmp420
	addq	%rdx, %rax	# D.6368, D.6378
	movl	(%rax), %eax	# *_176, D.6366
	testl	%eax, %eax	# D.6366
	jne	.L168	#,
	.loc 1 735 0
	movq	-2120(%rbp), %rax	# m, tmp421
	movq	72(%rax), %rdx	# m_18->sen2cimap, D.6372
	movl	-2132(%rbp), %eax	# s, tmp422
	cltq
	addq	%rdx, %rax	# D.6372, D.6372
	movzbl	(%rax), %eax	# *_180, D.6371
	movsbq	%al, %rax	# D.6371, D.6368
	leaq	0(,%rax,4), %rdx	#, D.6368
	movq	-2096(%rbp), %rax	# cdsen_start, tmp423
	addq	%rax, %rdx	# tmp423, D.6378
	movl	-2132(%rbp), %eax	# s, tmp424
	movl	%eax, (%rdx)	# tmp424, *_184
.L168:
	.loc 1 736 0
	movq	-2120(%rbp), %rax	# m, tmp425
	movq	72(%rax), %rdx	# m_18->sen2cimap, D.6372
	movl	-2132(%rbp), %eax	# s, tmp426
	cltq
	addq	%rdx, %rax	# D.6372, D.6372
	movzbl	(%rax), %eax	# *_187, D.6371
	movsbq	%al, %rax	# D.6371, D.6368
	leaq	0(,%rax,4), %rdx	#, D.6368
	movq	-2088(%rbp), %rax	# cdsen_end, tmp427
	addq	%rax, %rdx	# tmp427, D.6378
	movl	-2132(%rbp), %eax	# s, tmp428
	movl	%eax, (%rdx)	# tmp428, *_191
.L167:
	.loc 1 730 0
	addl	$1, -2132(%rbp)	#, s
.L165:
	.loc 1 730 0 is_stmt 0 discriminator 1
	movq	-2120(%rbp), %rax	# m, tmp429
	movl	16(%rax), %eax	# m_18->n_sen, D.6366
	cmpl	-2132(%rbp), %eax	# s, D.6366
	jg	.L169	#,
	.loc 1 740 0 is_stmt 1
	movq	-2120(%rbp), %rax	# m, tmp430
	movl	12(%rax), %eax	# m_18->n_ci_sen, tmp431
	movl	%eax, -2132(%rbp)	# tmp431, s
	jmp	.L170	#
.L178:
	.loc 1 741 0
	movq	-2120(%rbp), %rax	# m, tmp432
	movq	72(%rax), %rdx	# m_18->sen2cimap, D.6372
	movl	-2132(%rbp), %eax	# s, tmp433
	cltq
	addq	%rdx, %rax	# D.6372, D.6372
	movzbl	(%rax), %eax	# *_197, D.6371
	testb	%al, %al	# D.6371
	js	.L171	#,
	.loc 1 742 0
	jmp	.L172	#
.L171:
	.loc 1 745 0
	movl	$0, -2136(%rbp)	#, p
	jmp	.L173	#
.L176:
	.loc 1 746 0
	movl	-2136(%rbp), %eax	# p, tmp434
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6368
	movq	-2096(%rbp), %rax	# cdsen_start, tmp435
	addq	%rdx, %rax	# D.6368, D.6378
	movl	(%rax), %eax	# *_203, D.6366
	cmpl	-2132(%rbp), %eax	# s, D.6366
	jge	.L174	#,
	.loc 1 746 0 is_stmt 0 discriminator 1
	movl	-2136(%rbp), %eax	# p, tmp436
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6368
	movq	-2088(%rbp), %rax	# cdsen_end, tmp437
	addq	%rdx, %rax	# D.6368, D.6378
	movl	(%rax), %eax	# *_207, D.6366
	cmpl	-2132(%rbp), %eax	# s, D.6366
	jle	.L174	#,
	.loc 1 747 0 is_stmt 1
	jmp	.L175	#
.L174:
	.loc 1 745 0
	addl	$1, -2136(%rbp)	#, p
.L173:
	.loc 1 745 0 is_stmt 0 discriminator 1
	movq	-2120(%rbp), %rax	# m, tmp438
	movl	(%rax), %eax	# m_18->n_ciphone, D.6366
	cmpl	-2136(%rbp), %eax	# p, D.6366
	jg	.L176	#,
.L175:
	.loc 1 749 0 is_stmt 1
	movq	-2120(%rbp), %rax	# m, tmp439
	movl	(%rax), %eax	# m_18->n_ciphone, D.6366
	cmpl	-2136(%rbp), %eax	# p, D.6366
	jg	.L177	#,
	.loc 1 750 0
	movl	$.LC11, %edx	#,
	movl	$750, %esi	#,
	movl	$.LC10, %edi	#,
	call	_E__pr_header	#
	movl	-2132(%rbp), %eax	# s, tmp440
	movl	%eax, %esi	# tmp440,
	movl	$.LC73, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L177:
	.loc 1 751 0
	movq	-2120(%rbp), %rax	# m, tmp441
	movq	72(%rax), %rdx	# m_18->sen2cimap, D.6372
	movl	-2132(%rbp), %eax	# s, tmp442
	cltq
	addq	%rax, %rdx	# D.6373, D.6372
	movl	-2136(%rbp), %eax	# p, tmp443
	movb	%al, (%rdx)	# D.6371, *_213
.L172:
	.loc 1 740 0
	addl	$1, -2132(%rbp)	#, s
.L170:
	.loc 1 740 0 is_stmt 0 discriminator 1
	movq	-2120(%rbp), %rax	# m, tmp444
	movl	16(%rax), %eax	# m_18->n_sen, D.6366
	cmpl	-2132(%rbp), %eax	# s, D.6366
	jg	.L178	#,
	.loc 1 755 0 is_stmt 1
	movq	-2120(%rbp), %rax	# m, tmp445
	movl	(%rax), %eax	# m_18->n_ciphone, D.6366
	cltq
	movl	$755, %ecx	#,
	movl	$.LC10, %edx	#,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# D.6368,
	call	__ckd_calloc__	#
	movq	-2120(%rbp), %rdx	# m, tmp446
	movq	%rax, 80(%rdx)	# D.6369, m_18->ciphone2n_cd_sen
	.loc 1 756 0
	movl	$0, -2152(%rbp)	#, n
	.loc 1 757 0
	movl	$0, -2136(%rbp)	#, p
	jmp	.L179	#
.L181:
	.loc 1 758 0
	movl	-2136(%rbp), %eax	# p, tmp447
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6368
	movq	-2096(%rbp), %rax	# cdsen_start, tmp448
	addq	%rdx, %rax	# D.6368, D.6378
	movl	(%rax), %eax	# *_223, D.6366
	testl	%eax, %eax	# D.6366
	jle	.L180	#,
	.loc 1 759 0
	movq	-2120(%rbp), %rax	# m, tmp449
	movq	80(%rax), %rax	# m_18->ciphone2n_cd_sen, D.6378
	movl	-2136(%rbp), %edx	# p, tmp450
	movslq	%edx, %rdx	# tmp450, D.6368
	salq	$2, %rdx	#, D.6368
	addq	%rdx, %rax	# D.6368, D.6378
	movl	-2136(%rbp), %edx	# p, tmp451
	movslq	%edx, %rdx	# tmp451, D.6368
	leaq	0(,%rdx,4), %rcx	#, D.6368
	movq	-2088(%rbp), %rdx	# cdsen_end, tmp452
	addq	%rcx, %rdx	# D.6368, D.6378
	movl	(%rdx), %ecx	# *_231, D.6366
	movl	-2136(%rbp), %edx	# p, tmp453
	movslq	%edx, %rdx	# tmp453, D.6368
	leaq	0(,%rdx,4), %rsi	#, D.6368
	movq	-2096(%rbp), %rdx	# cdsen_start, tmp454
	addq	%rsi, %rdx	# D.6368, D.6378
	movl	(%rdx), %edx	# *_235, D.6366
	subl	%edx, %ecx	# D.6366, D.6366
	movl	%ecx, %edx	# D.6366, D.6366
	addl	$1, %edx	#, D.6366
	movl	%edx, (%rax)	# D.6366, *_228
	.loc 1 760 0
	movq	-2120(%rbp), %rax	# m, tmp455
	movq	80(%rax), %rax	# m_18->ciphone2n_cd_sen, D.6378
	movl	-2136(%rbp), %edx	# p, tmp456
	movslq	%edx, %rdx	# tmp456, D.6368
	salq	$2, %rdx	#, D.6368
	addq	%rdx, %rax	# D.6368, D.6378
	movl	(%rax), %edx	# *_242, D.6366
	movl	-2152(%rbp), %eax	# n, n.44
	addl	%edx, %eax	# D.6366, n.45
	movl	%eax, -2152(%rbp)	# n.45, n
.L180:
	.loc 1 757 0
	addl	$1, -2136(%rbp)	#, p
.L179:
	.loc 1 757 0 is_stmt 0 discriminator 1
	movq	-2120(%rbp), %rax	# m, tmp457
	movl	(%rax), %eax	# m_18->n_ciphone, D.6366
	cmpl	-2136(%rbp), %eax	# p, D.6366
	jg	.L181	#,
	.loc 1 763 0 is_stmt 1
	movq	-2120(%rbp), %rax	# m, tmp458
	movl	12(%rax), %edx	# m_18->n_ci_sen, D.6366
	movl	-2152(%rbp), %eax	# n, n.46
	addl	%edx, %eax	# D.6366, n.47
	movl	%eax, -2152(%rbp)	# n.47, n
	.loc 1 766 0
	movq	-2096(%rbp), %rax	# cdsen_start, tmp459
	movq	%rax, %rdi	# tmp459,
	call	ckd_free	#
	.loc 1 767 0
	movq	-2088(%rbp), %rax	# cdsen_end, tmp460
	movq	%rax, %rdi	# tmp460,
	call	ckd_free	#
	.loc 1 769 0
	movq	-2120(%rbp), %rax	# m, tmp461
	movq	%rax, %rdi	# tmp461,
	call	sseq_compress	#
	.loc 1 771 0
	movl	$.LC43, %edx	#,
	movl	$771, %esi	#,
	movl	$.LC10, %edi	#,
	call	_E__pr_info_header	#
	movq	-2120(%rbp), %rax	# m, tmp462
	movl	56(%rax), %ecx	# m_18->n_sseq, D.6366
	movq	-2120(%rbp), %rax	# m, tmp463
	movl	16(%rax), %r8d	# m_18->n_sen, D.6366
	movq	-2120(%rbp), %rax	# m, tmp464
	movl	12(%rax), %edi	# m_18->n_ci_sen, D.6366
	movq	-2120(%rbp), %rax	# m, tmp465
	movl	8(%rax), %edx	# m_18->n_emit_state, D.6366
	.loc 1 772 0
	movq	-2120(%rbp), %rax	# m, tmp466
	movl	4(%rax), %esi	# m_18->n_phone, D.6366
	movq	-2120(%rbp), %rax	# m, tmp467
	movl	(%rax), %eax	# m_18->n_ciphone, D.6366
	.loc 1 771 0
	subl	%eax, %esi	# D.6366, D.6366
	movq	-2120(%rbp), %rax	# m, tmp468
	movl	(%rax), %eax	# m_18->n_ciphone, D.6366
	movl	%ecx, (%rsp)	# D.6366,
	movl	%r8d, %r9d	# D.6366,
	movl	%edi, %r8d	# D.6366,
	movl	%edx, %ecx	# D.6366,
	movl	%esi, %edx	# D.6366,
	movl	%eax, %esi	# D.6366,
	movl	$.LC74, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_info	#
	.loc 1 775 0
	movq	-2112(%rbp), %rax	# fp, tmp469
	movq	%rax, %rdi	# tmp469,
	call	fclose	#
	.loc 1 777 0
	movq	-2120(%rbp), %rax	# m, D.6379
	.loc 1 778 0
	movq	-24(%rbp), %rbx	# D.6380, tmp472
	xorq	%fs:40, %rbx	#, tmp472
	je	.L183	#,
	call	__stack_chk_fail	#
.L183:
	addq	$2168, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	mdef_init, .-mdef_init
	.globl	mdef_sseq2sen_active
	.type	mdef_sseq2sen_active, @function
mdef_sseq2sen_active:
.LFB20:
	.loc 1 782 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# mdef, mdef
	movq	%rsi, -32(%rbp)	# sseq, sseq
	movq	%rdx, -40(%rbp)	# sen, sen
	.loc 1 786 0
	movl	$0, -16(%rbp)	#, ss
	jmp	.L185	#
.L189:
	.loc 1 787 0
	movl	-16(%rbp), %eax	# ss, tmp76
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6415
	movq	-32(%rbp), %rax	# sseq, tmp77
	addq	%rdx, %rax	# D.6415, D.6416
	movl	(%rax), %eax	# *_9, D.6414
	testl	%eax, %eax	# D.6414
	je	.L186	#,
	.loc 1 788 0
	movq	-24(%rbp), %rax	# mdef, tmp78
	movq	48(%rax), %rax	# mdef_4(D)->sseq, D.6417
	movl	-16(%rbp), %edx	# ss, tmp79
	movslq	%edx, %rdx	# tmp79, D.6415
	salq	$3, %rdx	#, D.6415
	addq	%rdx, %rax	# D.6415, D.6417
	movq	(%rax), %rax	# *_14, tmp80
	movq	%rax, -8(%rbp)	# tmp80, sp
	.loc 1 789 0
	movl	$0, -12(%rbp)	#, i
	jmp	.L187	#
.L188:
	.loc 1 790 0 discriminator 2
	movl	-12(%rbp), %eax	# i, tmp81
	cltq
	leaq	(%rax,%rax), %rdx	#, D.6415
	movq	-8(%rbp), %rax	# sp, tmp82
	addq	%rdx, %rax	# D.6415, D.6418
	movzwl	(%rax), %eax	# *_20, D.6419
	movswq	%ax, %rax	# D.6419, D.6415
	leaq	0(,%rax,4), %rdx	#, D.6415
	movq	-40(%rbp), %rax	# sen, tmp83
	addq	%rdx, %rax	# D.6415, D.6416
	movl	$1, (%rax)	#, *_25
	.loc 1 789 0 discriminator 2
	addl	$1, -12(%rbp)	#, i
.L187:
	.loc 1 789 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# mdef, tmp84
	movl	8(%rax), %eax	# mdef_4(D)->n_emit_state, D.6414
	cmpl	-12(%rbp), %eax	# i, D.6414
	jg	.L188	#,
.L186:
	.loc 1 786 0 is_stmt 1
	addl	$1, -16(%rbp)	#, ss
.L185:
	.loc 1 786 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# mdef, tmp85
	movl	56(%rax), %eax	# mdef_4(D)->n_sseq, D.6414
	cmpl	-16(%rbp), %eax	# ss, D.6414
	jg	.L189	#,
	.loc 1 793 0 is_stmt 1
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	mdef_sseq2sen_active, .-mdef_sseq2sen_active
	.globl	mdef_free_recursive_lc
	.type	mdef_free_recursive_lc, @function
mdef_free_recursive_lc:
.LFB21:
	.loc 1 807 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# lc, lc
	.loc 1 808 0
	cmpq	$0, -8(%rbp)	#, lc
	jne	.L191	#,
	.loc 1 808 0 is_stmt 0 discriminator 1
	jmp	.L190	#
.L191:
	.loc 1 810 0 is_stmt 1
	movq	-8(%rbp), %rax	# lc, tmp63
	movq	8(%rax), %rax	# lc_1(D)->rclist, D.6420
	testq	%rax, %rax	# D.6420
	je	.L193	#,
	.loc 1 811 0
	movq	-8(%rbp), %rax	# lc, tmp64
	movq	8(%rax), %rax	# lc_1(D)->rclist, D.6420
	movq	%rax, %rdi	# D.6420,
	call	mdef_free_recursive_rc	#
.L193:
	.loc 1 813 0
	movq	-8(%rbp), %rax	# lc, tmp65
	movq	16(%rax), %rax	# lc_1(D)->next, D.6421
	testq	%rax, %rax	# D.6421
	je	.L194	#,
	.loc 1 814 0
	movq	-8(%rbp), %rax	# lc, tmp66
	movq	16(%rax), %rax	# lc_1(D)->next, D.6421
	movq	%rax, %rdi	# D.6421,
	call	mdef_free_recursive_lc	#
.L194:
	.loc 1 816 0
	movq	-8(%rbp), %rax	# lc, tmp67
	movq	%rax, %rdi	# tmp67,
	call	ckd_free	#
.L190:
	.loc 1 817 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	mdef_free_recursive_lc, .-mdef_free_recursive_lc
	.globl	mdef_free_recursive_rc
	.type	mdef_free_recursive_rc, @function
mdef_free_recursive_rc:
.LFB22:
	.loc 1 820 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# rc, rc
	.loc 1 821 0
	cmpq	$0, -8(%rbp)	#, rc
	jne	.L196	#,
	.loc 1 821 0 is_stmt 0 discriminator 1
	jmp	.L195	#
.L196:
	.loc 1 823 0 is_stmt 1
	movq	-8(%rbp), %rax	# rc, tmp61
	movq	8(%rax), %rax	# rc_1(D)->next, D.6422
	testq	%rax, %rax	# D.6422
	je	.L198	#,
	.loc 1 824 0
	movq	-8(%rbp), %rax	# rc, tmp62
	movq	8(%rax), %rax	# rc_1(D)->next, D.6422
	movq	%rax, %rdi	# D.6422,
	call	mdef_free_recursive_rc	#
.L198:
	.loc 1 826 0
	movq	-8(%rbp), %rax	# rc, tmp63
	movq	%rax, %rdi	# tmp63,
	call	ckd_free	#
.L195:
	.loc 1 827 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	mdef_free_recursive_rc, .-mdef_free_recursive_rc
	.globl	mdef_free
	.type	mdef_free, @function
mdef_free:
.LFB23:
	.loc 1 835 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# m, m
	.loc 1 838 0
	cmpq	$0, -24(%rbp)	#, m
	je	.L199	#,
	.loc 1 839 0
	movq	-24(%rbp), %rax	# m, tmp135
	movq	80(%rax), %rax	# m_6(D)->ciphone2n_cd_sen, D.6423
	testq	%rax, %rax	# D.6423
	je	.L201	#,
	.loc 1 840 0
	movq	-24(%rbp), %rax	# m, tmp136
	movq	80(%rax), %rax	# m_6(D)->ciphone2n_cd_sen, D.6423
	movq	%rax, %rdi	# D.6423,
	call	ckd_free	#
.L201:
	.loc 1 841 0
	movq	-24(%rbp), %rax	# m, tmp137
	movq	72(%rax), %rax	# m_6(D)->sen2cimap, D.6424
	testq	%rax, %rax	# D.6424
	je	.L202	#,
	.loc 1 842 0
	movq	-24(%rbp), %rax	# m, tmp138
	movq	72(%rax), %rax	# m_6(D)->sen2cimap, D.6424
	movq	%rax, %rdi	# D.6424,
	call	ckd_free	#
.L202:
	.loc 1 843 0
	movq	-24(%rbp), %rax	# m, tmp139
	movq	64(%rax), %rax	# m_6(D)->cd2cisen, D.6425
	testq	%rax, %rax	# D.6425
	je	.L203	#,
	.loc 1 844 0
	movq	-24(%rbp), %rax	# m, tmp140
	movq	64(%rax), %rax	# m_6(D)->cd2cisen, D.6425
	movq	%rax, %rdi	# D.6425,
	call	ckd_free	#
.L203:
	.loc 1 847 0
	movl	$0, -8(%rbp)	#, i
	jmp	.L204	#
.L208:
	.loc 1 848 0
	movl	$0, -4(%rbp)	#, j
	jmp	.L205	#
.L207:
	.loc 1 849 0
	movq	-24(%rbp), %rax	# m, tmp141
	movq	96(%rax), %rax	# m_6(D)->wpos_ci_lclist, D.6427
	movl	-8(%rbp), %edx	# i, tmp142
	movslq	%edx, %rdx	# tmp142, D.6428
	salq	$3, %rdx	#, D.6428
	addq	%rdx, %rax	# D.6428, D.6427
	movq	(%rax), %rax	# *_19, D.6429
	movl	-4(%rbp), %edx	# j, tmp143
	movslq	%edx, %rdx	# tmp143, D.6428
	salq	$3, %rdx	#, D.6428
	addq	%rdx, %rax	# D.6428, D.6429
	movq	(%rax), %rax	# *_23, D.6430
	testq	%rax, %rax	# D.6430
	je	.L206	#,
	.loc 1 850 0
	movq	-24(%rbp), %rax	# m, tmp144
	movq	96(%rax), %rax	# m_6(D)->wpos_ci_lclist, D.6427
	movl	-8(%rbp), %edx	# i, tmp145
	movslq	%edx, %rdx	# tmp145, D.6428
	salq	$3, %rdx	#, D.6428
	addq	%rdx, %rax	# D.6428, D.6427
	movq	(%rax), %rax	# *_28, D.6429
	movl	-4(%rbp), %edx	# j, tmp146
	movslq	%edx, %rdx	# tmp146, D.6428
	salq	$3, %rdx	#, D.6428
	addq	%rdx, %rax	# D.6428, D.6429
	movq	(%rax), %rax	# *_32, D.6430
	movq	16(%rax), %rax	# _33->next, D.6431
	movq	%rax, %rdi	# D.6431,
	call	mdef_free_recursive_lc	#
	.loc 1 851 0
	movq	-24(%rbp), %rax	# m, tmp147
	movq	96(%rax), %rax	# m_6(D)->wpos_ci_lclist, D.6427
	movl	-8(%rbp), %edx	# i, tmp148
	movslq	%edx, %rdx	# tmp148, D.6428
	salq	$3, %rdx	#, D.6428
	addq	%rdx, %rax	# D.6428, D.6427
	movq	(%rax), %rax	# *_38, D.6429
	movl	-4(%rbp), %edx	# j, tmp149
	movslq	%edx, %rdx	# tmp149, D.6428
	salq	$3, %rdx	#, D.6428
	addq	%rdx, %rax	# D.6428, D.6429
	movq	(%rax), %rax	# *_42, D.6430
	movq	8(%rax), %rax	# _43->rclist, D.6432
	movq	%rax, %rdi	# D.6432,
	call	mdef_free_recursive_rc	#
.L206:
	.loc 1 848 0
	addl	$1, -4(%rbp)	#, j
.L205:
	.loc 1 848 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# m, tmp150
	movl	(%rax), %eax	# m_6(D)->n_ciphone, D.6426
	cmpl	-4(%rbp), %eax	# j, D.6426
	jg	.L207	#,
	.loc 1 847 0 is_stmt 1
	addl	$1, -8(%rbp)	#, i
.L204:
	.loc 1 847 0 is_stmt 0 discriminator 1
	cmpl	$3, -8(%rbp)	#, i
	jle	.L208	#,
	.loc 1 854 0 is_stmt 1
	movl	$0, -8(%rbp)	#, i
	jmp	.L209	#
.L213:
	.loc 1 855 0
	movl	$0, -4(%rbp)	#, j
	jmp	.L210	#
.L212:
	.loc 1 856 0
	movq	-24(%rbp), %rax	# m, tmp151
	movq	96(%rax), %rax	# m_6(D)->wpos_ci_lclist, D.6427
	movl	-8(%rbp), %edx	# i, tmp152
	movslq	%edx, %rdx	# tmp152, D.6428
	salq	$3, %rdx	#, D.6428
	addq	%rdx, %rax	# D.6428, D.6427
	movq	(%rax), %rax	# *_53, D.6429
	movl	-4(%rbp), %edx	# j, tmp153
	movslq	%edx, %rdx	# tmp153, D.6428
	salq	$3, %rdx	#, D.6428
	addq	%rdx, %rax	# D.6428, D.6429
	movq	(%rax), %rax	# *_57, D.6430
	testq	%rax, %rax	# D.6430
	je	.L211	#,
	.loc 1 857 0
	movq	-24(%rbp), %rax	# m, tmp154
	movq	96(%rax), %rax	# m_6(D)->wpos_ci_lclist, D.6427
	movl	-8(%rbp), %edx	# i, tmp155
	movslq	%edx, %rdx	# tmp155, D.6428
	salq	$3, %rdx	#, D.6428
	addq	%rdx, %rax	# D.6428, D.6427
	movq	(%rax), %rax	# *_62, D.6429
	movl	-4(%rbp), %edx	# j, tmp156
	movslq	%edx, %rdx	# tmp156, D.6428
	salq	$3, %rdx	#, D.6428
	addq	%rdx, %rax	# D.6428, D.6429
	movq	(%rax), %rax	# *_66, D.6430
	movq	%rax, %rdi	# D.6430,
	call	ckd_free	#
.L211:
	.loc 1 855 0
	addl	$1, -4(%rbp)	#, j
.L210:
	.loc 1 855 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# m, tmp157
	movl	(%rax), %eax	# m_6(D)->n_ciphone, D.6426
	cmpl	-4(%rbp), %eax	# j, D.6426
	jg	.L212	#,
	.loc 1 854 0 is_stmt 1
	addl	$1, -8(%rbp)	#, i
.L209:
	.loc 1 854 0 is_stmt 0 discriminator 1
	cmpl	$3, -8(%rbp)	#, i
	jle	.L213	#,
	.loc 1 860 0 is_stmt 1
	movq	-24(%rbp), %rax	# m, tmp158
	movq	96(%rax), %rax	# m_6(D)->wpos_ci_lclist, D.6427
	testq	%rax, %rax	# D.6427
	je	.L214	#,
	.loc 1 861 0
	movq	-24(%rbp), %rax	# m, tmp159
	movq	96(%rax), %rax	# m_6(D)->wpos_ci_lclist, D.6427
	movq	%rax, %rdi	# D.6427,
	call	ckd_free_2d	#
.L214:
	.loc 1 862 0
	movq	-24(%rbp), %rax	# m, tmp160
	movq	48(%rax), %rax	# m_6(D)->sseq, D.6433
	testq	%rax, %rax	# D.6433
	je	.L215	#,
	.loc 1 863 0
	movq	-24(%rbp), %rax	# m, tmp161
	movq	48(%rax), %rax	# m_6(D)->sseq, D.6433
	movq	%rax, %rdi	# D.6433,
	call	ckd_free_2d	#
.L215:
	.loc 1 865 0
	movq	-24(%rbp), %rax	# m, tmp162
	movq	40(%rax), %rax	# m_6(D)->phone, D.6434
	testq	%rax, %rax	# D.6434
	je	.L216	#,
	.loc 1 866 0
	movq	-24(%rbp), %rax	# m, tmp163
	movq	40(%rax), %rax	# m_6(D)->phone, D.6434
	movq	%rax, %rdi	# D.6434,
	call	ckd_free	#
.L216:
	.loc 1 867 0
	movq	-24(%rbp), %rax	# m, tmp164
	movq	24(%rax), %rax	# m_6(D)->ciphone_ht, D.6435
	testq	%rax, %rax	# D.6435
	je	.L217	#,
	.loc 1 868 0
	movq	-24(%rbp), %rax	# m, tmp165
	movq	24(%rax), %rax	# m_6(D)->ciphone_ht, D.6435
	movq	%rax, %rdi	# D.6435,
	call	hash_free	#
.L217:
	.loc 1 870 0
	movl	$0, -8(%rbp)	#, i
	jmp	.L218	#
.L220:
	.loc 1 871 0
	movq	-24(%rbp), %rax	# m, tmp166
	movq	32(%rax), %rax	# m_6(D)->ciphone, D.6436
	movl	-8(%rbp), %edx	# i, tmp167
	movslq	%edx, %rdx	# tmp167, D.6428
	salq	$4, %rdx	#, D.6428
	addq	%rdx, %rax	# D.6428, D.6436
	movq	(%rax), %rax	# _83->name, D.6437
	testq	%rax, %rax	# D.6437
	je	.L219	#,
	.loc 1 872 0
	movq	-24(%rbp), %rax	# m, tmp168
	movq	32(%rax), %rax	# m_6(D)->ciphone, D.6436
	movl	-8(%rbp), %edx	# i, tmp169
	movslq	%edx, %rdx	# tmp169, D.6428
	salq	$4, %rdx	#, D.6428
	addq	%rdx, %rax	# D.6428, D.6436
	movq	(%rax), %rax	# _88->name, D.6437
	movq	%rax, %rdi	# D.6437,
	call	ckd_free	#
.L219:
	.loc 1 870 0
	addl	$1, -8(%rbp)	#, i
.L218:
	.loc 1 870 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# m, tmp170
	movl	(%rax), %eax	# m_6(D)->n_ciphone, D.6426
	cmpl	-8(%rbp), %eax	# i, D.6426
	jg	.L220	#,
	.loc 1 874 0 is_stmt 1
	movq	-24(%rbp), %rax	# m, tmp171
	movq	32(%rax), %rax	# m_6(D)->ciphone, D.6436
	testq	%rax, %rax	# D.6436
	je	.L221	#,
	.loc 1 875 0
	movq	-24(%rbp), %rax	# m, tmp172
	movq	32(%rax), %rax	# m_6(D)->ciphone, D.6436
	movq	%rax, %rdi	# D.6436,
	call	ckd_free	#
.L221:
	.loc 1 877 0
	movq	-24(%rbp), %rax	# m, tmp173
	movq	%rax, %rdi	# tmp173,
	call	ckd_free	#
.L199:
	.loc 1 879 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE23:
	.size	mdef_free, .-mdef_free
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/include/stdio.h"
	.file 5 "/usr/include/libio.h"
	.file 6 "./libutil/prim_type.h"
	.file 7 "./libutil/glist.h"
	.file 8 "./libutil/hash.h"
	.file 9 "s3types.h"
	.file 10 "mdef.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x10cb
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF148
	.byte	0x1
	.long	.LASF149
	.long	.LASF150
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
	.long	.LASF151
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
	.byte	0x44
	.long	0x3f
	.uleb128 0x2
	.long	.LASF56
	.byte	0x6
	.byte	0x45
	.long	0x2ab
	.uleb128 0x2
	.long	.LASF57
	.byte	0x6
	.byte	0x46
	.long	0x2b2
	.uleb128 0xe
	.long	.LASF152
	.byte	0x8
	.byte	0x6
	.byte	0x48
	.long	0x34a
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
	.long	.LASF56
	.byte	0x6
	.byte	0x4c
	.long	0x2f0
	.uleb128 0x10
	.long	.LASF57
	.byte	0x6
	.byte	0x4d
	.long	0x2fb
	.byte	0
	.uleb128 0x2
	.long	.LASF58
	.byte	0x6
	.byte	0x4e
	.long	0x306
	.uleb128 0x7
	.long	.LASF59
	.byte	0x10
	.byte	0x7
	.byte	0x4c
	.long	0x37a
	.uleb128 0x8
	.long	.LASF60
	.byte	0x7
	.byte	0x4d
	.long	0x34a
	.byte	0
	.uleb128 0x8
	.long	.LASF61
	.byte	0x7
	.byte	0x4e
	.long	0x37a
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x355
	.uleb128 0x2
	.long	.LASF62
	.byte	0x7
	.byte	0x4f
	.long	0x355
	.uleb128 0x2
	.long	.LASF63
	.byte	0x7
	.byte	0x50
	.long	0x396
	.uleb128 0x6
	.byte	0x8
	.long	0x380
	.uleb128 0x7
	.long	.LASF64
	.byte	0x18
	.byte	0x8
	.byte	0x58
	.long	0x3d9
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
	.long	.LASF61
	.byte	0x8
	.byte	0x5f
	.long	0x3d9
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x39c
	.uleb128 0x2
	.long	.LASF65
	.byte	0x8
	.byte	0x60
	.long	0x39c
	.uleb128 0x12
	.byte	0x10
	.byte	0x8
	.byte	0x62
	.long	0x417
	.uleb128 0x8
	.long	.LASF66
	.byte	0x8
	.byte	0x63
	.long	0x417
	.byte	0
	.uleb128 0x8
	.long	.LASF67
	.byte	0x8
	.byte	0x64
	.long	0x2b9
	.byte	0x8
	.uleb128 0x8
	.long	.LASF68
	.byte	0x8
	.byte	0x67
	.long	0x2e5
	.byte	0xc
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x3df
	.uleb128 0x2
	.long	.LASF69
	.byte	0x8
	.byte	0x68
	.long	0x3ea
	.uleb128 0x2
	.long	.LASF70
	.byte	0x9
	.byte	0x4b
	.long	0x2cf
	.uleb128 0x2
	.long	.LASF71
	.byte	0x9
	.byte	0x51
	.long	0x2b9
	.uleb128 0x2
	.long	.LASF72
	.byte	0x9
	.byte	0x57
	.long	0x433
	.uleb128 0x2
	.long	.LASF73
	.byte	0x9
	.byte	0x5d
	.long	0x2b9
	.uleb128 0x2
	.long	.LASF74
	.byte	0x9
	.byte	0x7b
	.long	0x2c4
	.uleb128 0x13
	.byte	0x4
	.byte	0xa
	.byte	0x48
	.long	0x486
	.uleb128 0x14
	.long	.LASF75
	.sleb128 0
	.uleb128 0x14
	.long	.LASF76
	.sleb128 1
	.uleb128 0x14
	.long	.LASF77
	.sleb128 2
	.uleb128 0x14
	.long	.LASF78
	.sleb128 3
	.uleb128 0x14
	.long	.LASF79
	.sleb128 4
	.byte	0
	.uleb128 0x2
	.long	.LASF80
	.byte	0xa
	.byte	0x4e
	.long	0x45f
	.uleb128 0x12
	.byte	0x10
	.byte	0xa
	.byte	0x54
	.long	0x4b2
	.uleb128 0x8
	.long	.LASF81
	.byte	0xa
	.byte	0x55
	.long	0x8f
	.byte	0
	.uleb128 0x8
	.long	.LASF82
	.byte	0xa
	.byte	0x56
	.long	0x2b9
	.byte	0x8
	.byte	0
	.uleb128 0x2
	.long	.LASF83
	.byte	0xa
	.byte	0x58
	.long	0x491
	.uleb128 0x12
	.byte	0x10
	.byte	0xa
	.byte	0x5e
	.long	0x50b
	.uleb128 0x8
	.long	.LASF84
	.byte	0xa
	.byte	0x5f
	.long	0x43e
	.byte	0
	.uleb128 0x8
	.long	.LASF85
	.byte	0xa
	.byte	0x62
	.long	0x449
	.byte	0x4
	.uleb128 0x11
	.string	"ci"
	.byte	0xa
	.byte	0x63
	.long	0x428
	.byte	0x8
	.uleb128 0x11
	.string	"lc"
	.byte	0xa
	.byte	0x63
	.long	0x428
	.byte	0x9
	.uleb128 0x11
	.string	"rc"
	.byte	0xa
	.byte	0x63
	.long	0x428
	.byte	0xa
	.uleb128 0x8
	.long	.LASF86
	.byte	0xa
	.byte	0x64
	.long	0x486
	.byte	0xc
	.byte	0
	.uleb128 0x2
	.long	.LASF87
	.byte	0xa
	.byte	0x65
	.long	0x4bd
	.uleb128 0x7
	.long	.LASF88
	.byte	0x10
	.byte	0xa
	.byte	0x6c
	.long	0x546
	.uleb128 0x11
	.string	"rc"
	.byte	0xa
	.byte	0x6d
	.long	0x428
	.byte	0
	.uleb128 0x11
	.string	"pid"
	.byte	0xa
	.byte	0x6e
	.long	0x433
	.byte	0x4
	.uleb128 0x8
	.long	.LASF61
	.byte	0xa
	.byte	0x6f
	.long	0x546
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x516
	.uleb128 0x2
	.long	.LASF89
	.byte	0xa
	.byte	0x70
	.long	0x516
	.uleb128 0x7
	.long	.LASF90
	.byte	0x18
	.byte	0xa
	.byte	0x72
	.long	0x587
	.uleb128 0x11
	.string	"lc"
	.byte	0xa
	.byte	0x73
	.long	0x428
	.byte	0
	.uleb128 0x8
	.long	.LASF91
	.byte	0xa
	.byte	0x74
	.long	0x587
	.byte	0x8
	.uleb128 0x8
	.long	.LASF61
	.byte	0xa
	.byte	0x75
	.long	0x58d
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x54c
	.uleb128 0x6
	.byte	0x8
	.long	0x557
	.uleb128 0x2
	.long	.LASF92
	.byte	0xa
	.byte	0x76
	.long	0x557
	.uleb128 0x12
	.byte	0x68
	.byte	0xa
	.byte	0x7a
	.long	0x667
	.uleb128 0x8
	.long	.LASF93
	.byte	0xa
	.byte	0x7b
	.long	0x2b9
	.byte	0
	.uleb128 0x8
	.long	.LASF94
	.byte	0xa
	.byte	0x7c
	.long	0x2b9
	.byte	0x4
	.uleb128 0x8
	.long	.LASF95
	.byte	0xa
	.byte	0x7d
	.long	0x2b9
	.byte	0x8
	.uleb128 0x8
	.long	.LASF96
	.byte	0xa
	.byte	0x7e
	.long	0x2b9
	.byte	0xc
	.uleb128 0x8
	.long	.LASF97
	.byte	0xa
	.byte	0x7f
	.long	0x2b9
	.byte	0x10
	.uleb128 0x8
	.long	.LASF98
	.byte	0xa
	.byte	0x80
	.long	0x2b9
	.byte	0x14
	.uleb128 0x8
	.long	.LASF99
	.byte	0xa
	.byte	0x82
	.long	0x667
	.byte	0x18
	.uleb128 0x8
	.long	.LASF100
	.byte	0xa
	.byte	0x83
	.long	0x66d
	.byte	0x20
	.uleb128 0x8
	.long	.LASF101
	.byte	0xa
	.byte	0x84
	.long	0x673
	.byte	0x28
	.uleb128 0x8
	.long	.LASF102
	.byte	0xa
	.byte	0x85
	.long	0x679
	.byte	0x30
	.uleb128 0x8
	.long	.LASF103
	.byte	0xa
	.byte	0x87
	.long	0x2b9
	.byte	0x38
	.uleb128 0x8
	.long	.LASF104
	.byte	0xa
	.byte	0x89
	.long	0x67f
	.byte	0x40
	.uleb128 0x8
	.long	.LASF105
	.byte	0xa
	.byte	0x8c
	.long	0x685
	.byte	0x48
	.uleb128 0x8
	.long	.LASF106
	.byte	0xa
	.byte	0x8d
	.long	0x68b
	.byte	0x50
	.uleb128 0x11
	.string	"sil"
	.byte	0xa
	.byte	0x8f
	.long	0x428
	.byte	0x58
	.uleb128 0x8
	.long	.LASF107
	.byte	0xa
	.byte	0x91
	.long	0x691
	.byte	0x60
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x41d
	.uleb128 0x6
	.byte	0x8
	.long	0x4b2
	.uleb128 0x6
	.byte	0x8
	.long	0x50b
	.uleb128 0x6
	.byte	0x8
	.long	0x67f
	.uleb128 0x6
	.byte	0x8
	.long	0x454
	.uleb128 0x6
	.byte	0x8
	.long	0x428
	.uleb128 0x6
	.byte	0x8
	.long	0x2b9
	.uleb128 0x6
	.byte	0x8
	.long	0x697
	.uleb128 0x6
	.byte	0x8
	.long	0x69d
	.uleb128 0x6
	.byte	0x8
	.long	0x593
	.uleb128 0x2
	.long	.LASF108
	.byte	0xa
	.byte	0x96
	.long	0x59e
	.uleb128 0x15
	.long	.LASF143
	.byte	0x1
	.byte	0x57
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x71f
	.uleb128 0x16
	.string	"fp"
	.byte	0x1
	.byte	0x57
	.long	0x71f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1080
	.uleb128 0x16
	.string	"m"
	.byte	0x1
	.byte	0x57
	.long	0x725
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1088
	.uleb128 0x17
	.string	"i"
	.byte	0x1
	.byte	0x59
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1068
	.uleb128 0x17
	.string	"j"
	.byte	0x1
	.byte	0x59
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1064
	.uleb128 0x18
	.long	.LASF84
	.byte	0x1
	.byte	0x5a
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1060
	.uleb128 0x17
	.string	"buf"
	.byte	0x1
	.byte	0x5b
	.long	0x72b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1056
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x9c
	.uleb128 0x6
	.byte	0x8
	.long	0x6a3
	.uleb128 0xb
	.long	0x95
	.long	0x73c
	.uleb128 0x19
	.long	0x86
	.value	0x3ff
	.byte	0
	.uleb128 0x1a
	.long	.LASF114
	.byte	0x1
	.byte	0x86
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x77f
	.uleb128 0x16
	.string	"m"
	.byte	0x1
	.byte	0x86
	.long	0x725
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x16
	.string	"ci"
	.byte	0x1
	.byte	0x86
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x16
	.string	"p"
	.byte	0x1
	.byte	0x86
	.long	0x433
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.uleb128 0x1b
	.long	.LASF111
	.byte	0x1
	.byte	0x90
	.long	0x69d
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x7ca
	.uleb128 0x1c
	.long	.LASF109
	.byte	0x1
	.byte	0x90
	.long	0x69d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x16
	.string	"lc"
	.byte	0x1
	.byte	0x90
	.long	0x428
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x18
	.long	.LASF110
	.byte	0x1
	.byte	0x92
	.long	0x69d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1b
	.long	.LASF112
	.byte	0x1
	.byte	0x99
	.long	0x587
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x815
	.uleb128 0x1c
	.long	.LASF91
	.byte	0x1
	.byte	0x99
	.long	0x587
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x16
	.string	"rc"
	.byte	0x1
	.byte	0x99
	.long	0x428
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x18
	.long	.LASF113
	.byte	0x1
	.byte	0x9b
	.long	0x587
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1a
	.long	.LASF115
	.byte	0x1
	.byte	0xa2
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x8c5
	.uleb128 0x16
	.string	"m"
	.byte	0x1
	.byte	0xa2
	.long	0x725
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4152
	.uleb128 0x16
	.string	"ci"
	.byte	0x1
	.byte	0xa3
	.long	0x428
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4156
	.uleb128 0x16
	.string	"lc"
	.byte	0x1
	.byte	0xa3
	.long	0x428
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4160
	.uleb128 0x16
	.string	"rc"
	.byte	0x1
	.byte	0xa3
	.long	0x428
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4164
	.uleb128 0x1c
	.long	.LASF86
	.byte	0x1
	.byte	0xa3
	.long	0x486
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4168
	.uleb128 0x16
	.string	"p"
	.byte	0x1
	.byte	0xa4
	.long	0x433
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4172
	.uleb128 0x18
	.long	.LASF110
	.byte	0x1
	.byte	0xa6
	.long	0x69d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4144
	.uleb128 0x18
	.long	.LASF113
	.byte	0x1
	.byte	0xa7
	.long	0x587
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4136
	.uleb128 0x1d
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x17
	.string	"buf"
	.byte	0x1
	.byte	0xbc
	.long	0x8c5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4128
	.byte	0
	.byte	0
	.uleb128 0xb
	.long	0x95
	.long	0x8d6
	.uleb128 0x19
	.long	0x86
	.value	0xfff
	.byte	0
	.uleb128 0x1e
	.long	.LASF116
	.byte	0x1
	.byte	0xcb
	.long	0x428
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x91e
	.uleb128 0x16
	.string	"m"
	.byte	0x1
	.byte	0xcb
	.long	0x725
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x16
	.string	"ci"
	.byte	0x1
	.byte	0xcb
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x17
	.string	"id"
	.byte	0x1
	.byte	0xcd
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1f
	.long	.LASF117
	.byte	0x1
	.byte	0xd8
	.long	0x292
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x959
	.uleb128 0x16
	.string	"m"
	.byte	0x1
	.byte	0xd8
	.long	0x725
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x16
	.string	"id"
	.byte	0x1
	.byte	0xd8
	.long	0x428
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x1e
	.long	.LASF118
	.byte	0x1
	.byte	0xe1
	.long	0x2b9
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x9b4
	.uleb128 0x16
	.string	"m"
	.byte	0x1
	.byte	0xe1
	.long	0x725
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x16
	.string	"pid"
	.byte	0x1
	.byte	0xe1
	.long	0x433
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x16
	.string	"buf"
	.byte	0x1
	.byte	0xe1
	.long	0x8f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x18
	.long	.LASF119
	.byte	0x1
	.byte	0xe3
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x1e
	.long	.LASF120
	.byte	0x1
	.byte	0xf7
	.long	0x433
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0xa51
	.uleb128 0x16
	.string	"m"
	.byte	0x1
	.byte	0xf7
	.long	0x725
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x16
	.string	"ci"
	.byte	0x1
	.byte	0xf8
	.long	0x428
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x16
	.string	"lc"
	.byte	0x1
	.byte	0xf8
	.long	0x428
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x16
	.string	"rc"
	.byte	0x1
	.byte	0xf8
	.long	0x428
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x1c
	.long	.LASF86
	.byte	0x1
	.byte	0xf8
	.long	0x486
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x18
	.long	.LASF110
	.byte	0x1
	.byte	0xfa
	.long	0x69d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x18
	.long	.LASF113
	.byte	0x1
	.byte	0xfb
	.long	0x587
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x18
	.long	.LASF121
	.byte	0x1
	.byte	0xfc
	.long	0x428
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0x18
	.long	.LASF122
	.byte	0x1
	.byte	0xfc
	.long	0x428
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.byte	0
	.uleb128 0x20
	.long	.LASF123
	.byte	0x1
	.value	0x116
	.long	0x433
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0xb02
	.uleb128 0x21
	.string	"m"
	.byte	0x1
	.value	0x116
	.long	0x725
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x21
	.string	"b"
	.byte	0x1
	.value	0x117
	.long	0x428
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x21
	.string	"l"
	.byte	0x1
	.value	0x117
	.long	0x428
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x21
	.string	"r"
	.byte	0x1
	.value	0x117
	.long	0x428
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x21
	.string	"pos"
	.byte	0x1
	.value	0x117
	.long	0x486
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x22
	.long	.LASF124
	.byte	0x1
	.value	0x119
	.long	0x486
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x23
	.string	"p"
	.byte	0x1
	.value	0x11a
	.long	0x433
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x22
	.long	.LASF121
	.byte	0x1
	.value	0x11b
	.long	0x428
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0x22
	.long	.LASF122
	.byte	0x1
	.value	0x11b
	.long	0x428
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x22
	.long	.LASF119
	.byte	0x1
	.value	0x11c
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x24
	.long	.LASF125
	.byte	0x1
	.value	0x157
	.long	0x2b9
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0xb75
	.uleb128 0x21
	.string	"m"
	.byte	0x1
	.value	0x157
	.long	0x725
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x21
	.string	"p"
	.byte	0x1
	.value	0x158
	.long	0x433
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x21
	.string	"b"
	.byte	0x1
	.value	0x159
	.long	0x685
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x21
	.string	"l"
	.byte	0x1
	.value	0x15a
	.long	0x685
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x21
	.string	"r"
	.byte	0x1
	.value	0x15b
	.long	0x685
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x21
	.string	"pos"
	.byte	0x1
	.value	0x15c
	.long	0xb75
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x486
	.uleb128 0x24
	.long	.LASF126
	.byte	0x1
	.value	0x16a
	.long	0x2b9
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0xbb8
	.uleb128 0x21
	.string	"m"
	.byte	0x1
	.value	0x16a
	.long	0x725
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x21
	.string	"p"
	.byte	0x1
	.value	0x16a
	.long	0x433
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x25
	.long	.LASF127
	.byte	0x1
	.value	0x174
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0xc5e
	.uleb128 0x21
	.string	"m"
	.byte	0x1
	.value	0x174
	.long	0x725
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1096
	.uleb128 0x26
	.long	.LASF128
	.byte	0x1
	.value	0x174
	.long	0x8f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1104
	.uleb128 0x21
	.string	"off"
	.byte	0x1
	.value	0x174
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1108
	.uleb128 0x21
	.string	"p"
	.byte	0x1
	.value	0x174
	.long	0x433
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1112
	.uleb128 0x22
	.long	.LASF129
	.byte	0x1
	.value	0x176
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1076
	.uleb128 0x23
	.string	"n"
	.byte	0x1
	.value	0x176
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1072
	.uleb128 0x23
	.string	"s"
	.byte	0x1
	.value	0x176
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1068
	.uleb128 0x22
	.long	.LASF130
	.byte	0x1
	.value	0x177
	.long	0x72b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1056
	.uleb128 0x23
	.string	"lp"
	.byte	0x1
	.value	0x177
	.long	0x8f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1064
	.byte	0
	.uleb128 0x25
	.long	.LASF131
	.byte	0x1
	.value	0x19b
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0xcf5
	.uleb128 0x21
	.string	"m"
	.byte	0x1
	.value	0x19b
	.long	0x725
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1096
	.uleb128 0x26
	.long	.LASF128
	.byte	0x1
	.value	0x19b
	.long	0x8f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1104
	.uleb128 0x21
	.string	"p"
	.byte	0x1
	.value	0x19b
	.long	0x433
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1108
	.uleb128 0x22
	.long	.LASF129
	.byte	0x1
	.value	0x19d
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1072
	.uleb128 0x23
	.string	"n"
	.byte	0x1
	.value	0x19d
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1068
	.uleb128 0x22
	.long	.LASF130
	.byte	0x1
	.value	0x19e
	.long	0x72b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1056
	.uleb128 0x23
	.string	"lp"
	.byte	0x1
	.value	0x19e
	.long	0x8f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1064
	.uleb128 0x23
	.string	"ci"
	.byte	0x1
	.value	0x19f
	.long	0x428
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1073
	.byte	0
	.uleb128 0x25
	.long	.LASF132
	.byte	0x1
	.value	0x1ca
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0xdac
	.uleb128 0x21
	.string	"m"
	.byte	0x1
	.value	0x1ca
	.long	0x725
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1096
	.uleb128 0x26
	.long	.LASF128
	.byte	0x1
	.value	0x1ca
	.long	0x8f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1104
	.uleb128 0x21
	.string	"p"
	.byte	0x1
	.value	0x1ca
	.long	0x433
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1108
	.uleb128 0x22
	.long	.LASF129
	.byte	0x1
	.value	0x1cc
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1072
	.uleb128 0x22
	.long	.LASF130
	.byte	0x1
	.value	0x1cd
	.long	0x72b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1056
	.uleb128 0x23
	.string	"lp"
	.byte	0x1
	.value	0x1cd
	.long	0x8f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1064
	.uleb128 0x23
	.string	"ci"
	.byte	0x1
	.value	0x1ce
	.long	0x428
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1075
	.uleb128 0x23
	.string	"lc"
	.byte	0x1
	.value	0x1ce
	.long	0x428
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1074
	.uleb128 0x23
	.string	"rc"
	.byte	0x1
	.value	0x1ce
	.long	0x428
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1073
	.uleb128 0x22
	.long	.LASF86
	.byte	0x1
	.value	0x1cf
	.long	0x486
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1068
	.byte	0
	.uleb128 0x25
	.long	.LASF133
	.byte	0x1
	.value	0x209
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0xe56
	.uleb128 0x21
	.string	"m"
	.byte	0x1
	.value	0x209
	.long	0x725
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x23
	.string	"h"
	.byte	0x1
	.value	0x20b
	.long	0x667
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x22
	.long	.LASF102
	.byte	0x1
	.value	0x20c
	.long	0x679
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x22
	.long	.LASF103
	.byte	0x1
	.value	0x20d
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x23
	.string	"p"
	.byte	0x1
	.value	0x20e
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x23
	.string	"j"
	.byte	0x1
	.value	0x20e
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x23
	.string	"k"
	.byte	0x1
	.value	0x20e
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x23
	.string	"g"
	.byte	0x1
	.value	0x20f
	.long	0x38b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x23
	.string	"gn"
	.byte	0x1
	.value	0x210
	.long	0x396
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x23
	.string	"he"
	.byte	0x1
	.value	0x211
	.long	0x417
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x27
	.long	.LASF134
	.byte	0x1
	.value	0x237
	.long	0x2b9
	.quad	.LFB18
	.quad	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0xea5
	.uleb128 0x26
	.long	.LASF128
	.byte	0x1
	.value	0x237
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x26
	.long	.LASF67
	.byte	0x1
	.value	0x237
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x21
	.string	"fp"
	.byte	0x1
	.value	0x237
	.long	0x71f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x20
	.long	.LASF135
	.byte	0x1
	.value	0x244
	.long	0x725
	.quad	.LFB19
	.quad	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0xfbd
	.uleb128 0x26
	.long	.LASF136
	.byte	0x1
	.value	0x244
	.long	0x8f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2184
	.uleb128 0x23
	.string	"fp"
	.byte	0x1
	.value	0x246
	.long	0x71f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2128
	.uleb128 0x22
	.long	.LASF137
	.byte	0x1
	.value	0x247
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2164
	.uleb128 0x22
	.long	.LASF138
	.byte	0x1
	.value	0x247
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2160
	.uleb128 0x22
	.long	.LASF139
	.byte	0x1
	.value	0x247
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2156
	.uleb128 0x23
	.string	"n"
	.byte	0x1
	.value	0x247
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2168
	.uleb128 0x23
	.string	"tag"
	.byte	0x1
	.value	0x248
	.long	0x72b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2096
	.uleb128 0x23
	.string	"buf"
	.byte	0x1
	.value	0x248
	.long	0x72b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1072
	.uleb128 0x22
	.long	.LASF140
	.byte	0x1
	.value	0x249
	.long	0x679
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2120
	.uleb128 0x23
	.string	"p"
	.byte	0x1
	.value	0x24a
	.long	0x433
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2152
	.uleb128 0x23
	.string	"s"
	.byte	0x1
	.value	0x24b
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2148
	.uleb128 0x23
	.string	"ci"
	.byte	0x1
	.value	0x24b
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2140
	.uleb128 0x23
	.string	"cd"
	.byte	0x1
	.value	0x24b
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2144
	.uleb128 0x23
	.string	"m"
	.byte	0x1
	.value	0x24c
	.long	0x725
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2136
	.uleb128 0x22
	.long	.LASF141
	.byte	0x1
	.value	0x24d
	.long	0x68b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2112
	.uleb128 0x22
	.long	.LASF142
	.byte	0x1
	.value	0x24d
	.long	0x68b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2104
	.byte	0
	.uleb128 0x28
	.long	.LASF144
	.byte	0x1
	.value	0x30d
	.quad	.LFB20
	.quad	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0x1032
	.uleb128 0x26
	.long	.LASF145
	.byte	0x1
	.value	0x30d
	.long	0x725
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x26
	.long	.LASF102
	.byte	0x1
	.value	0x30d
	.long	0x68b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x21
	.string	"sen"
	.byte	0x1
	.value	0x30d
	.long	0x68b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x23
	.string	"ss"
	.byte	0x1
	.value	0x30f
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x23
	.string	"i"
	.byte	0x1
	.value	0x30f
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x23
	.string	"sp"
	.byte	0x1
	.value	0x310
	.long	0x67f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x29
	.long	.LASF146
	.byte	0x1
	.value	0x326
	.quad	.LFB21
	.quad	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.long	0x105f
	.uleb128 0x21
	.string	"lc"
	.byte	0x1
	.value	0x326
	.long	0x69d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x29
	.long	.LASF147
	.byte	0x1
	.value	0x333
	.quad	.LFB22
	.quad	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.long	0x108c
	.uleb128 0x21
	.string	"rc"
	.byte	0x1
	.value	0x333
	.long	0x587
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2a
	.long	.LASF153
	.byte	0x1
	.value	0x342
	.quad	.LFB23
	.quad	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x21
	.string	"m"
	.byte	0x1
	.value	0x342
	.long	0x725
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x23
	.string	"i"
	.byte	0x1
	.value	0x344
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x23
	.string	"j"
	.byte	0x1
	.value	0x344
	.long	0x62
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
	.uleb128 0x14
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
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
	.uleb128 0x19
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
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
	.uleb128 0x1f
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x28
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
	.uleb128 0x29
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
.LASF98:
	.string	"n_tmat"
.LASF14:
	.string	"_IO_read_ptr"
.LASF26:
	.string	"_chain"
.LASF32:
	.string	"_shortbuf"
.LASF7:
	.string	"size_t"
.LASF61:
	.string	"next"
.LASF104:
	.string	"cd2cisen"
.LASF135:
	.string	"mdef_init"
.LASF116:
	.string	"mdef_ciphone_id"
.LASF73:
	.string	"s3tmatid_t"
.LASF20:
	.string	"_IO_buf_base"
.LASF147:
	.string	"mdef_free_recursive_rc"
.LASF48:
	.string	"long long unsigned int"
.LASF60:
	.string	"data"
.LASF131:
	.string	"parse_base_line"
.LASF153:
	.string	"mdef_free"
.LASF146:
	.string	"mdef_free_recursive_lc"
.LASF96:
	.string	"n_ci_sen"
.LASF47:
	.string	"long long int"
.LASF4:
	.string	"signed char"
.LASF126:
	.string	"mdef_is_ciphone"
.LASF51:
	.string	"int32"
.LASF27:
	.string	"_fileno"
.LASF63:
	.string	"glist_t"
.LASF145:
	.string	"mdef"
.LASF76:
	.string	"WORD_POSN_END"
.LASF6:
	.string	"long int"
.LASF149:
	.string	"mdef.c"
.LASF13:
	.string	"_flags"
.LASF117:
	.string	"mdef_ciphone_str"
.LASF21:
	.string	"_IO_buf_end"
.LASF88:
	.string	"ph_rc_s"
.LASF89:
	.string	"ph_rc_t"
.LASF50:
	.string	"double"
.LASF29:
	.string	"_old_offset"
.LASF34:
	.string	"_offset"
.LASF152:
	.string	"anytype_s"
.LASF58:
	.string	"anytype_t"
.LASF54:
	.string	"uint32"
.LASF128:
	.string	"line"
.LASF120:
	.string	"mdef_phone_id"
.LASF37:
	.string	"__pad3"
.LASF85:
	.string	"tmat"
.LASF38:
	.string	"__pad4"
.LASF82:
	.string	"filler"
.LASF136:
	.string	"mdeffile"
.LASF124:
	.string	"tmppos"
.LASF93:
	.string	"n_ciphone"
.LASF43:
	.string	"_IO_marker"
.LASF3:
	.string	"unsigned int"
.LASF84:
	.string	"ssid"
.LASF83:
	.string	"ciphone_t"
.LASF0:
	.string	"long unsigned int"
.LASF144:
	.string	"mdef_sseq2sen_active"
.LASF87:
	.string	"phone_t"
.LASF18:
	.string	"_IO_write_ptr"
.LASF138:
	.string	"n_tri"
.LASF81:
	.string	"name"
.LASF45:
	.string	"_sbuf"
.LASF55:
	.string	"uint8"
.LASF99:
	.string	"ciphone_ht"
.LASF67:
	.string	"size"
.LASF2:
	.string	"short unsigned int"
.LASF53:
	.string	"int8"
.LASF139:
	.string	"n_map"
.LASF22:
	.string	"_IO_save_base"
.LASF127:
	.string	"parse_tmat_senmap"
.LASF137:
	.string	"n_ci"
.LASF75:
	.string	"WORD_POSN_BEGIN"
.LASF33:
	.string	"_lock"
.LASF28:
	.string	"_flags2"
.LASF40:
	.string	"_mode"
.LASF133:
	.string	"sseq_compress"
.LASF148:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF134:
	.string	"noncomment_line"
.LASF78:
	.string	"WORD_POSN_INTERNAL"
.LASF15:
	.string	"_IO_read_end"
.LASF132:
	.string	"parse_tri_line"
.LASF56:
	.string	"float32"
.LASF141:
	.string	"cdsen_start"
.LASF10:
	.string	"sizetype"
.LASF77:
	.string	"WORD_POSN_SINGLE"
.LASF19:
	.string	"_IO_write_end"
.LASF103:
	.string	"n_sseq"
.LASF151:
	.string	"_IO_lock_t"
.LASF42:
	.string	"_IO_FILE"
.LASF142:
	.string	"cdsen_end"
.LASF118:
	.string	"mdef_phone_str"
.LASF8:
	.string	"__off_t"
.LASF91:
	.string	"rclist"
.LASF49:
	.string	"float"
.LASF46:
	.string	"_pos"
.LASF25:
	.string	"_markers"
.LASF1:
	.string	"unsigned char"
.LASF140:
	.string	"senmap"
.LASF114:
	.string	"ciphone_add"
.LASF64:
	.string	"hash_entry_s"
.LASF129:
	.string	"wlen"
.LASF71:
	.string	"s3pid_t"
.LASF5:
	.string	"short int"
.LASF79:
	.string	"WORD_POSN_UNDEFINED"
.LASF110:
	.string	"lcptr"
.LASF66:
	.string	"table"
.LASF115:
	.string	"triphone_add"
.LASF108:
	.string	"mdef_t"
.LASF112:
	.string	"find_ph_rc"
.LASF31:
	.string	"_vtable_offset"
.LASF12:
	.string	"FILE"
.LASF121:
	.string	"newl"
.LASF113:
	.string	"rcptr"
.LASF105:
	.string	"sen2cimap"
.LASF94:
	.string	"n_phone"
.LASF11:
	.string	"char"
.LASF119:
	.string	"wpos_name"
.LASF80:
	.string	"word_posn_t"
.LASF150:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/482.sphinx3/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF70:
	.string	"s3cipid_t"
.LASF44:
	.string	"_next"
.LASF130:
	.string	"word"
.LASF123:
	.string	"mdef_phone_id_nearest"
.LASF9:
	.string	"__off64_t"
.LASF30:
	.string	"_cur_column"
.LASF16:
	.string	"_IO_read_base"
.LASF24:
	.string	"_IO_save_end"
.LASF95:
	.string	"n_emit_state"
.LASF102:
	.string	"sseq"
.LASF35:
	.string	"__pad1"
.LASF36:
	.string	"__pad2"
.LASF97:
	.string	"n_sen"
.LASF69:
	.string	"hash_table_t"
.LASF39:
	.string	"__pad5"
.LASF59:
	.string	"gnode_s"
.LASF41:
	.string	"_unused2"
.LASF143:
	.string	"mdef_dump"
.LASF106:
	.string	"ciphone2n_cd_sen"
.LASF90:
	.string	"ph_lc_s"
.LASF92:
	.string	"ph_lc_t"
.LASF109:
	.string	"lclist"
.LASF57:
	.string	"float64"
.LASF86:
	.string	"wpos"
.LASF111:
	.string	"find_ph_lc"
.LASF23:
	.string	"_IO_backup_base"
.LASF100:
	.string	"ciphone"
.LASF52:
	.string	"int16"
.LASF107:
	.string	"wpos_ci_lclist"
.LASF72:
	.string	"s3ssid_t"
.LASF101:
	.string	"phone"
.LASF65:
	.string	"hash_entry_t"
.LASF17:
	.string	"_IO_write_base"
.LASF74:
	.string	"s3senid_t"
.LASF62:
	.string	"gnode_t"
.LASF122:
	.string	"newr"
.LASF68:
	.string	"nocase"
.LASF125:
	.string	"mdef_phone_components"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
