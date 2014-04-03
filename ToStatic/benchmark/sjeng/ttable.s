	.file	"ttable.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 ttable.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.comm	zobrist,8064,32
	.comm	hash,4,4
	.comm	TTProbes,4,4
	.comm	TTHits,4,4
	.comm	TTStores,4,4
	.comm	DP_TTable,8,8
	.comm	AS_TTable,8,8
	.comm	QS_TTable,8,8
	.globl	clear_tt
	.type	clear_tt, @function
clear_tt:
.LFB2:
	.file 1 "ttable.c"
	.loc 1 52 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 53 0
	movl	TTSize(%rip), %eax	# TTSize, TTSize.0
	movslq	%eax, %rdx	# TTSize.0, D.4573
	movq	%rdx, %rax	# D.4573, tmp71
	salq	$2, %rax	#, tmp71
	addq	%rdx, %rax	# D.4573, tmp71
	salq	$2, %rax	#, tmp72
	movq	%rax, %rdx	# tmp71, D.4573
	movq	DP_TTable(%rip), %rax	# DP_TTable, DP_TTable.1
	movl	$0, %esi	#,
	movq	%rax, %rdi	# DP_TTable.1,
	call	memset	#
	.loc 1 54 0
	movl	TTSize(%rip), %eax	# TTSize, TTSize.2
	movslq	%eax, %rdx	# TTSize.2, D.4573
	movq	%rdx, %rax	# D.4573, tmp73
	salq	$2, %rax	#, tmp73
	addq	%rdx, %rax	# D.4573, tmp73
	salq	$2, %rax	#, tmp74
	movq	%rax, %rdx	# tmp73, D.4573
	movq	AS_TTable(%rip), %rax	# AS_TTable, AS_TTable.3
	movl	$0, %esi	#,
	movq	%rax, %rdi	# AS_TTable.3,
	call	memset	#
	.loc 1 55 0
	movl	TTSize(%rip), %eax	# TTSize, TTSize.4
	cltq
	salq	$4, %rax	#, D.4573
	movq	%rax, %rdx	# D.4573, D.4573
	movq	QS_TTable(%rip), %rax	# QS_TTable, QS_TTable.5
	movl	$0, %esi	#,
	movq	%rax, %rdi	# QS_TTable.5,
	call	memset	#
	.loc 1 56 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	clear_tt, .-clear_tt
	.globl	clear_dp_tt
	.type	clear_dp_tt, @function
clear_dp_tt:
.LFB3:
	.loc 1 59 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 60 0
	movl	TTSize(%rip), %eax	# TTSize, TTSize.6
	movslq	%eax, %rdx	# TTSize.6, D.4574
	movq	%rdx, %rax	# D.4574, tmp63
	salq	$2, %rax	#, tmp63
	addq	%rdx, %rax	# D.4574, tmp63
	salq	$2, %rax	#, tmp64
	movq	%rax, %rdx	# tmp63, D.4574
	movq	DP_TTable(%rip), %rax	# DP_TTable, DP_TTable.7
	movl	$0, %esi	#,
	movq	%rax, %rdi	# DP_TTable.7,
	call	memset	#
	.loc 1 61 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	clear_dp_tt, .-clear_dp_tt
	.globl	initialize_zobrist
	.type	initialize_zobrist, @function
initialize_zobrist:
.LFB4:
	.loc 1 64 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	.loc 1 67 0
	movl	$31657, %edi	#,
	call	seedMT	#
	.loc 1 69 0
	movl	$0, -8(%rbp)	#, p
	jmp	.L4	#
.L7:
	.loc 1 71 0
	movl	$0, -4(%rbp)	#, q
	jmp	.L5	#
.L6:
	.loc 1 73 0 discriminator 2
	call	randomMT	#
	movl	%eax, %ecx	#, D.4575
	movl	-4(%rbp), %eax	# q, tmp61
	movslq	%eax, %rsi	# tmp61, tmp60
	movl	-8(%rbp), %eax	# p, tmp63
	movslq	%eax, %rdx	# tmp63, tmp62
	movq	%rdx, %rax	# tmp62, tmp64
	salq	$3, %rax	#, tmp64
	addq	%rdx, %rax	# tmp62, tmp64
	salq	$4, %rax	#, tmp65
	addq	%rsi, %rax	# tmp60, tmp66
	movl	%ecx, zobrist(,%rax,4)	# D.4575, zobrist
	.loc 1 71 0 discriminator 2
	addl	$1, -4(%rbp)	#, q
.L5:
	.loc 1 71 0 is_stmt 0 discriminator 1
	cmpl	$143, -4(%rbp)	#, q
	jle	.L6	#,
	.loc 1 69 0 is_stmt 1
	addl	$1, -8(%rbp)	#, p
.L4:
	.loc 1 69 0 is_stmt 0 discriminator 1
	cmpl	$13, -8(%rbp)	#, p
	jle	.L7	#,
	.loc 1 78 0 is_stmt 1
	movl	$-559038737, hash(%rip)	#, hash
	.loc 1 79 0
	movl	$-1056969216, hold_hash(%rip)	#, hold_hash
	.loc 1 80 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	initialize_zobrist, .-initialize_zobrist
	.globl	initialize_hash
	.type	initialize_hash, @function
initialize_hash:
.LFB5:
	.loc 1 83 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 86 0
	movl	$-559038737, hash(%rip)	#, hash
	.loc 1 88 0
	movl	$0, -4(%rbp)	#, p
	jmp	.L9	#
.L11:
	.loc 1 90 0
	movl	-4(%rbp), %eax	# p, tmp66
	cltq
	movl	board(,%rax,4), %eax	# board, D.4576
	cmpl	$13, %eax	#, D.4576
	je	.L10	#,
	.loc 1 90 0 is_stmt 0 discriminator 1
	movl	-4(%rbp), %eax	# p, tmp68
	cltq
	movl	board(,%rax,4), %eax	# board, D.4576
	testl	%eax, %eax	# D.4576
	je	.L10	#,
	.loc 1 91 0 is_stmt 1
	movl	-4(%rbp), %eax	# p, tmp70
	cltq
	movl	board(,%rax,4), %eax	# board, D.4576
	movl	-4(%rbp), %edx	# p, tmp72
	movslq	%edx, %rcx	# tmp72, tmp71
	movslq	%eax, %rdx	# D.4576, tmp73
	movq	%rdx, %rax	# tmp73, tmp74
	salq	$3, %rax	#, tmp74
	addq	%rdx, %rax	# tmp73, tmp74
	salq	$4, %rax	#, tmp75
	addq	%rcx, %rax	# tmp71, tmp76
	movl	zobrist(,%rax,4), %edx	# zobrist, D.4577
	movl	hash(%rip), %eax	# hash, hash.8
	xorl	%edx, %eax	# D.4577, hash.9
	movl	%eax, hash(%rip)	# hash.9, hash
.L10:
	.loc 1 88 0
	addl	$1, -4(%rbp)	#, p
.L9:
	.loc 1 88 0 is_stmt 0 discriminator 1
	cmpl	$143, -4(%rbp)	#, p
	jle	.L11	#,
	.loc 1 94 0 is_stmt 1
	movl	$-1056969216, hold_hash(%rip)	#, hold_hash
	.loc 1 97 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	initialize_hash, .-initialize_hash
	.globl	QStoreTT
	.type	QStoreTT, @function
QStoreTT:
.LFB6:
	.loc 1 100 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)	# score, score
	movl	%esi, -24(%rbp)	# alpha, alpha
	movl	%edx, -28(%rbp)	# beta, beta
	movl	%ecx, -32(%rbp)	# best, best
	.loc 1 103 0
	movl	TTStores(%rip), %eax	# TTStores, TTStores.10
	addl	$1, %eax	#, TTStores.11
	movl	%eax, TTStores(%rip)	# TTStores.11, TTStores
	.loc 1 105 0
	movl	hash(%rip), %eax	# hash, hash.12
	movl	TTSize(%rip), %edx	# TTSize, TTSize.13
	movl	%edx, %ecx	# TTSize.13, TTSize.14
	movl	$0, %edx	#, tmp102
	divl	%ecx	# TTSize.14
	movl	%edx, -4(%rbp)	# tmp102, ttindex
	.loc 1 107 0
	movl	-20(%rbp), %eax	# score, tmp104
	cmpl	-24(%rbp), %eax	# alpha, tmp104
	jg	.L13	#,
	.loc 1 108 0
	movq	QS_TTable(%rip), %rax	# QS_TTable, QS_TTable.15
	movl	-4(%rbp), %edx	# ttindex, D.4578
	salq	$4, %rdx	#, D.4578
	addq	%rdx, %rax	# D.4578, D.4579
	movb	$1, 1(%rax)	#, _12->Type
	jmp	.L14	#
.L13:
	.loc 1 109 0
	movl	-20(%rbp), %eax	# score, tmp105
	cmpl	-28(%rbp), %eax	# beta, tmp105
	jl	.L15	#,
	.loc 1 110 0
	movq	QS_TTable(%rip), %rax	# QS_TTable, QS_TTable.16
	movl	-4(%rbp), %edx	# ttindex, D.4578
	salq	$4, %rdx	#, D.4578
	addq	%rdx, %rax	# D.4578, D.4579
	movb	$2, 1(%rax)	#, _17->Type
	jmp	.L14	#
.L15:
	.loc 1 112 0
	movq	QS_TTable(%rip), %rax	# QS_TTable, QS_TTable.17
	movl	-4(%rbp), %edx	# ttindex, D.4578
	salq	$4, %rdx	#, D.4578
	addq	%rdx, %rax	# D.4578, D.4579
	movb	$3, 1(%rax)	#, _21->Type
.L14:
	.loc 1 114 0
	movq	QS_TTable(%rip), %rax	# QS_TTable, QS_TTable.18
	movl	-4(%rbp), %edx	# ttindex, D.4578
	salq	$4, %rdx	#, D.4578
	addq	%rax, %rdx	# QS_TTable.18, D.4579
	movl	hash(%rip), %eax	# hash, hash.19
	movl	%eax, 4(%rdx)	# hash.19, _25->HashKey
	.loc 1 115 0
	movq	QS_TTable(%rip), %rax	# QS_TTable, QS_TTable.20
	movl	-4(%rbp), %edx	# ttindex, D.4578
	salq	$4, %rdx	#, D.4578
	addq	%rax, %rdx	# QS_TTable.20, D.4579
	movl	hold_hash(%rip), %eax	# hold_hash, hold_hash.21
	movl	%eax, 8(%rdx)	# hold_hash.21, _30->Hold_hash
	.loc 1 116 0
	movq	QS_TTable(%rip), %rax	# QS_TTable, QS_TTable.22
	movl	-4(%rbp), %edx	# ttindex, D.4578
	salq	$4, %rdx	#, D.4578
	addq	%rax, %rdx	# QS_TTable.22, D.4579
	movl	-32(%rbp), %eax	# best, tmp106
	movw	%ax, 2(%rdx)	# D.4580, _35->Bestmove
	.loc 1 117 0
	movq	QS_TTable(%rip), %rax	# QS_TTable, QS_TTable.23
	movl	-4(%rbp), %edx	# ttindex, D.4578
	salq	$4, %rdx	#, D.4578
	addq	%rax, %rdx	# QS_TTable.23, D.4579
	movl	-20(%rbp), %eax	# score, tmp107
	movl	%eax, 12(%rdx)	# tmp107, _41->Bound
	.loc 1 118 0
	movq	QS_TTable(%rip), %rax	# QS_TTable, QS_TTable.24
	movl	-4(%rbp), %edx	# ttindex, D.4578
	salq	$4, %rdx	#, D.4578
	addq	%rax, %rdx	# QS_TTable.24, D.4579
	movl	white_to_move(%rip), %eax	# white_to_move, white_to_move.25
	testl	%eax, %eax	# white_to_move.25
	sete	%al	#, D.4581
	movb	%al, (%rdx)	# D.4582, _45->OnMove
	.loc 1 120 0
	nop
	.loc 1 121 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	QStoreTT, .-QStoreTT
	.globl	StoreTT
	.type	StoreTT, @function
StoreTT:
.LFB7:
	.loc 1 124 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)	# score, score
	movl	%esi, -24(%rbp)	# alpha, alpha
	movl	%edx, -28(%rbp)	# beta, beta
	movl	%ecx, -32(%rbp)	# best, best
	movl	%r8d, -36(%rbp)	# threat, threat
	movl	%r9d, -40(%rbp)	# depth, depth
	.loc 1 127 0
	movl	TTStores(%rip), %eax	# TTStores, TTStores.26
	addl	$1, %eax	#, TTStores.27
	movl	%eax, TTStores(%rip)	# TTStores.27, TTStores
	.loc 1 129 0
	movl	hash(%rip), %eax	# hash, hash.28
	movl	TTSize(%rip), %edx	# TTSize, TTSize.29
	movl	%edx, %ecx	# TTSize.29, TTSize.30
	movl	$0, %edx	#, tmp182
	divl	%ecx	# TTSize.30
	movl	%edx, -4(%rbp)	# tmp182, ttindex
	.loc 1 132 0
	movq	DP_TTable(%rip), %rcx	# DP_TTable, DP_TTable.31
	movl	-4(%rbp), %edx	# ttindex, D.4583
	movq	%rdx, %rax	# D.4583, tmp184
	salq	$2, %rax	#, tmp184
	addq	%rdx, %rax	# D.4583, tmp184
	salq	$2, %rax	#, tmp185
	addq	%rcx, %rax	# DP_TTable.31, D.4584
	movzbl	(%rax), %eax	# _16->Depth, D.4585
	movsbl	%al, %eax	# D.4585, D.4586
	cmpl	-40(%rbp), %eax	# depth, D.4586
	jl	.L18	#,
	.loc 1 133 0
	movq	DP_TTable(%rip), %rcx	# DP_TTable, DP_TTable.32
	movl	-4(%rbp), %edx	# ttindex, D.4583
	movq	%rdx, %rax	# D.4583, tmp186
	salq	$2, %rax	#, tmp186
	addq	%rdx, %rax	# D.4583, tmp186
	salq	$2, %rax	#, tmp187
	addq	%rcx, %rax	# DP_TTable.32, D.4584
	movzbl	(%rax), %eax	# _23->Depth, D.4585
	movsbl	%al, %eax	# D.4585, D.4586
	cmpl	-40(%rbp), %eax	# depth, D.4586
	jne	.L19	#,
	.loc 1 134 0 discriminator 1
	movq	DP_TTable(%rip), %rcx	# DP_TTable, DP_TTable.33
	movl	-4(%rbp), %edx	# ttindex, D.4583
	movq	%rdx, %rax	# D.4583, tmp188
	salq	$2, %rax	#, tmp188
	addq	%rdx, %rax	# D.4583, tmp188
	salq	$2, %rax	#, tmp189
	addq	%rcx, %rax	# DP_TTable.33, D.4584
	movzbl	3(%rax), %eax	# _29->Type, D.4585
	.loc 1 133 0 discriminator 1
	cmpb	$1, %al	#, D.4585
	jne	.L20	#,
	.loc 1 134 0
	movl	-20(%rbp), %eax	# score, tmp190
	cmpl	-24(%rbp), %eax	# alpha, tmp190
	jg	.L18	#,
.L20:
	.loc 1 135 0
	movl	-20(%rbp), %eax	# score, tmp191
	cmpl	-24(%rbp), %eax	# alpha, tmp191
	jle	.L19	#,
	.loc 1 135 0 is_stmt 0 discriminator 1
	movl	-20(%rbp), %eax	# score, tmp192
	cmpl	-28(%rbp), %eax	# beta, tmp192
	jge	.L19	#,
.L18:
	.loc 1 139 0 is_stmt 1
	movl	is_pondering(%rip), %eax	# is_pondering, is_pondering.34
	testl	%eax, %eax	# is_pondering.34
	jne	.L19	#,
	.loc 1 141 0
	movl	-20(%rbp), %eax	# score, tmp193
	cmpl	-24(%rbp), %eax	# alpha, tmp193
	jg	.L21	#,
	.loc 1 143 0
	movq	DP_TTable(%rip), %rcx	# DP_TTable, DP_TTable.35
	movl	-4(%rbp), %edx	# ttindex, D.4583
	movq	%rdx, %rax	# D.4583, tmp194
	salq	$2, %rax	#, tmp194
	addq	%rdx, %rax	# D.4583, tmp194
	salq	$2, %rax	#, tmp195
	addq	%rcx, %rax	# DP_TTable.35, D.4584
	movb	$1, 3(%rax)	#, _38->Type
	.loc 1 144 0
	cmpl	$-999500, -20(%rbp)	#, score
	jge	.L23	#,
	.loc 1 144 0 is_stmt 0 discriminator 1
	movl	$-999500, -20(%rbp)	#, score
	jmp	.L23	#
.L21:
	.loc 1 146 0 is_stmt 1
	movl	-20(%rbp), %eax	# score, tmp196
	cmpl	-28(%rbp), %eax	# beta, tmp196
	jl	.L24	#,
	.loc 1 148 0
	movq	DP_TTable(%rip), %rcx	# DP_TTable, DP_TTable.36
	movl	-4(%rbp), %edx	# ttindex, D.4583
	movq	%rdx, %rax	# D.4583, tmp197
	salq	$2, %rax	#, tmp197
	addq	%rdx, %rax	# D.4583, tmp197
	salq	$2, %rax	#, tmp198
	addq	%rcx, %rax	# DP_TTable.36, D.4584
	movb	$2, 3(%rax)	#, _43->Type
	.loc 1 149 0
	cmpl	$999500, -20(%rbp)	#, score
	jle	.L23	#,
	.loc 1 149 0 is_stmt 0 discriminator 1
	movl	$999500, -20(%rbp)	#, score
	jmp	.L23	#
.L24:
	.loc 1 153 0 is_stmt 1
	movq	DP_TTable(%rip), %rcx	# DP_TTable, DP_TTable.37
	movl	-4(%rbp), %edx	# ttindex, D.4583
	movq	%rdx, %rax	# D.4583, tmp199
	salq	$2, %rax	#, tmp199
	addq	%rdx, %rax	# D.4583, tmp199
	salq	$2, %rax	#, tmp200
	addq	%rcx, %rax	# DP_TTable.37, D.4584
	movb	$3, 3(%rax)	#, _48->Type
	.loc 1 156 0
	cmpl	$999500, -20(%rbp)	#, score
	jle	.L26	#,
	.loc 1 157 0
	movl	ply(%rip), %eax	# ply, ply.38
	addl	%eax, -20(%rbp)	# ply.38, score
	jmp	.L23	#
.L26:
	.loc 1 158 0
	cmpl	$-999500, -20(%rbp)	#, score
	jge	.L23	#,
	.loc 1 159 0
	movl	ply(%rip), %eax	# ply, ply.39
	subl	%eax, -20(%rbp)	# ply.39, score
.L23:
	.loc 1 162 0
	movq	DP_TTable(%rip), %rcx	# DP_TTable, DP_TTable.40
	movl	-4(%rbp), %edx	# ttindex, D.4583
	movq	%rdx, %rax	# D.4583, tmp201
	salq	$2, %rax	#, tmp201
	addq	%rdx, %rax	# D.4583, tmp201
	salq	$2, %rax	#, tmp202
	leaq	(%rcx,%rax), %rdx	#, D.4584
	movl	hash(%rip), %eax	# hash, hash.41
	movl	%eax, 8(%rdx)	# hash.41, _56->HashKey
	.loc 1 163 0
	movq	DP_TTable(%rip), %rcx	# DP_TTable, DP_TTable.42
	movl	-4(%rbp), %edx	# ttindex, D.4583
	movq	%rdx, %rax	# D.4583, tmp203
	salq	$2, %rax	#, tmp203
	addq	%rdx, %rax	# D.4583, tmp203
	salq	$2, %rax	#, tmp204
	leaq	(%rcx,%rax), %rdx	#, D.4584
	movl	hold_hash(%rip), %eax	# hold_hash, hold_hash.43
	movl	%eax, 12(%rdx)	# hold_hash.43, _61->Hold_hash
	.loc 1 164 0
	movq	DP_TTable(%rip), %rcx	# DP_TTable, DP_TTable.44
	movl	-4(%rbp), %edx	# ttindex, D.4583
	movq	%rdx, %rax	# D.4583, tmp205
	salq	$2, %rax	#, tmp205
	addq	%rdx, %rax	# D.4583, tmp205
	salq	$2, %rax	#, tmp206
	leaq	(%rcx,%rax), %rdx	#, D.4584
	movl	-40(%rbp), %eax	# depth, tmp207
	movb	%al, (%rdx)	# D.4585, _66->Depth
	.loc 1 165 0
	movq	DP_TTable(%rip), %rcx	# DP_TTable, DP_TTable.45
	movl	-4(%rbp), %edx	# ttindex, D.4583
	movq	%rdx, %rax	# D.4583, tmp208
	salq	$2, %rax	#, tmp208
	addq	%rdx, %rax	# D.4583, tmp208
	salq	$2, %rax	#, tmp209
	leaq	(%rcx,%rax), %rdx	#, D.4584
	movl	-32(%rbp), %eax	# best, tmp210
	movw	%ax, 4(%rdx)	# D.4587, _71->Bestmove
	.loc 1 166 0
	movq	DP_TTable(%rip), %rcx	# DP_TTable, DP_TTable.46
	movl	-4(%rbp), %edx	# ttindex, D.4583
	movq	%rdx, %rax	# D.4583, tmp211
	salq	$2, %rax	#, tmp211
	addq	%rdx, %rax	# D.4583, tmp211
	salq	$2, %rax	#, tmp212
	leaq	(%rcx,%rax), %rdx	#, D.4584
	movl	-20(%rbp), %eax	# score, tmp213
	movl	%eax, 16(%rdx)	# tmp213, _77->Bound
	.loc 1 167 0
	movq	DP_TTable(%rip), %rcx	# DP_TTable, DP_TTable.47
	movl	-4(%rbp), %edx	# ttindex, D.4583
	movq	%rdx, %rax	# D.4583, tmp214
	salq	$2, %rax	#, tmp214
	addq	%rdx, %rax	# D.4583, tmp214
	salq	$2, %rax	#, tmp215
	leaq	(%rcx,%rax), %rdx	#, D.4584
	movl	white_to_move(%rip), %eax	# white_to_move, white_to_move.48
	testl	%eax, %eax	# white_to_move.48
	sete	%al	#, D.4588
	movb	%al, 1(%rdx)	# D.4585, _81->OnMove
	.loc 1 168 0
	movq	DP_TTable(%rip), %rcx	# DP_TTable, DP_TTable.49
	movl	-4(%rbp), %edx	# ttindex, D.4583
	movq	%rdx, %rax	# D.4583, tmp216
	salq	$2, %rax	#, tmp216
	addq	%rdx, %rax	# D.4583, tmp216
	salq	$2, %rax	#, tmp217
	leaq	(%rcx,%rax), %rdx	#, D.4584
	movl	-36(%rbp), %eax	# threat, tmp218
	movb	%al, 2(%rdx)	# D.4585, _88->Threat
	jmp	.L27	#
.L19:
	.loc 1 172 0
	movl	-20(%rbp), %eax	# score, tmp219
	cmpl	-24(%rbp), %eax	# alpha, tmp219
	jg	.L28	#,
	.loc 1 174 0
	movq	AS_TTable(%rip), %rcx	# AS_TTable, AS_TTable.50
	movl	-4(%rbp), %edx	# ttindex, D.4583
	movq	%rdx, %rax	# D.4583, tmp220
	salq	$2, %rax	#, tmp220
	addq	%rdx, %rax	# D.4583, tmp220
	salq	$2, %rax	#, tmp221
	addq	%rcx, %rax	# AS_TTable.50, D.4584
	movb	$1, 3(%rax)	#, _94->Type
	.loc 1 175 0
	cmpl	$-999500, -20(%rbp)	#, score
	jge	.L30	#,
	.loc 1 175 0 is_stmt 0 discriminator 1
	movl	$-999500, -20(%rbp)	#, score
	jmp	.L30	#
.L28:
	.loc 1 177 0 is_stmt 1
	movl	-20(%rbp), %eax	# score, tmp222
	cmpl	-28(%rbp), %eax	# beta, tmp222
	jl	.L31	#,
	.loc 1 179 0
	movq	AS_TTable(%rip), %rcx	# AS_TTable, AS_TTable.51
	movl	-4(%rbp), %edx	# ttindex, D.4583
	movq	%rdx, %rax	# D.4583, tmp223
	salq	$2, %rax	#, tmp223
	addq	%rdx, %rax	# D.4583, tmp223
	salq	$2, %rax	#, tmp224
	addq	%rcx, %rax	# AS_TTable.51, D.4584
	movb	$2, 3(%rax)	#, _99->Type
	.loc 1 180 0
	cmpl	$999500, -20(%rbp)	#, score
	jle	.L30	#,
	.loc 1 180 0 is_stmt 0 discriminator 1
	movl	$999500, -20(%rbp)	#, score
	jmp	.L30	#
.L31:
	.loc 1 184 0 is_stmt 1
	movq	AS_TTable(%rip), %rcx	# AS_TTable, AS_TTable.52
	movl	-4(%rbp), %edx	# ttindex, D.4583
	movq	%rdx, %rax	# D.4583, tmp225
	salq	$2, %rax	#, tmp225
	addq	%rdx, %rax	# D.4583, tmp225
	salq	$2, %rax	#, tmp226
	addq	%rcx, %rax	# AS_TTable.52, D.4584
	movb	$3, 3(%rax)	#, _104->Type
	.loc 1 187 0
	cmpl	$999500, -20(%rbp)	#, score
	jle	.L33	#,
	.loc 1 188 0
	movl	ply(%rip), %eax	# ply, ply.53
	addl	%eax, -20(%rbp)	# ply.53, score
	jmp	.L30	#
.L33:
	.loc 1 189 0
	cmpl	$-999500, -20(%rbp)	#, score
	jge	.L30	#,
	.loc 1 190 0
	movl	ply(%rip), %eax	# ply, ply.54
	subl	%eax, -20(%rbp)	# ply.54, score
.L30:
	.loc 1 193 0
	movq	AS_TTable(%rip), %rcx	# AS_TTable, AS_TTable.55
	movl	-4(%rbp), %edx	# ttindex, D.4583
	movq	%rdx, %rax	# D.4583, tmp227
	salq	$2, %rax	#, tmp227
	addq	%rdx, %rax	# D.4583, tmp227
	salq	$2, %rax	#, tmp228
	leaq	(%rcx,%rax), %rdx	#, D.4584
	movl	hash(%rip), %eax	# hash, hash.56
	movl	%eax, 8(%rdx)	# hash.56, _112->HashKey
	.loc 1 194 0
	movq	AS_TTable(%rip), %rcx	# AS_TTable, AS_TTable.57
	movl	-4(%rbp), %edx	# ttindex, D.4583
	movq	%rdx, %rax	# D.4583, tmp229
	salq	$2, %rax	#, tmp229
	addq	%rdx, %rax	# D.4583, tmp229
	salq	$2, %rax	#, tmp230
	leaq	(%rcx,%rax), %rdx	#, D.4584
	movl	hold_hash(%rip), %eax	# hold_hash, hold_hash.58
	movl	%eax, 12(%rdx)	# hold_hash.58, _117->Hold_hash
	.loc 1 195 0
	movq	AS_TTable(%rip), %rcx	# AS_TTable, AS_TTable.59
	movl	-4(%rbp), %edx	# ttindex, D.4583
	movq	%rdx, %rax	# D.4583, tmp231
	salq	$2, %rax	#, tmp231
	addq	%rdx, %rax	# D.4583, tmp231
	salq	$2, %rax	#, tmp232
	leaq	(%rcx,%rax), %rdx	#, D.4584
	movl	-40(%rbp), %eax	# depth, tmp233
	movb	%al, (%rdx)	# D.4585, _122->Depth
	.loc 1 196 0
	movq	AS_TTable(%rip), %rcx	# AS_TTable, AS_TTable.60
	movl	-4(%rbp), %edx	# ttindex, D.4583
	movq	%rdx, %rax	# D.4583, tmp234
	salq	$2, %rax	#, tmp234
	addq	%rdx, %rax	# D.4583, tmp234
	salq	$2, %rax	#, tmp235
	leaq	(%rcx,%rax), %rdx	#, D.4584
	movl	-32(%rbp), %eax	# best, tmp236
	movw	%ax, 4(%rdx)	# D.4587, _127->Bestmove
	.loc 1 197 0
	movq	AS_TTable(%rip), %rcx	# AS_TTable, AS_TTable.61
	movl	-4(%rbp), %edx	# ttindex, D.4583
	movq	%rdx, %rax	# D.4583, tmp237
	salq	$2, %rax	#, tmp237
	addq	%rdx, %rax	# D.4583, tmp237
	salq	$2, %rax	#, tmp238
	leaq	(%rcx,%rax), %rdx	#, D.4584
	movl	-20(%rbp), %eax	# score, tmp239
	movl	%eax, 16(%rdx)	# tmp239, _132->Bound
	.loc 1 198 0
	movq	AS_TTable(%rip), %rcx	# AS_TTable, AS_TTable.62
	movl	-4(%rbp), %edx	# ttindex, D.4583
	movq	%rdx, %rax	# D.4583, tmp240
	salq	$2, %rax	#, tmp240
	addq	%rdx, %rax	# D.4583, tmp240
	salq	$2, %rax	#, tmp241
	leaq	(%rcx,%rax), %rdx	#, D.4584
	movl	white_to_move(%rip), %eax	# white_to_move, white_to_move.63
	testl	%eax, %eax	# white_to_move.63
	sete	%al	#, D.4588
	movb	%al, 1(%rdx)	# D.4585, _136->OnMove
	.loc 1 199 0
	movq	AS_TTable(%rip), %rcx	# AS_TTable, AS_TTable.64
	movl	-4(%rbp), %edx	# ttindex, D.4583
	movq	%rdx, %rax	# D.4583, tmp242
	salq	$2, %rax	#, tmp242
	addq	%rdx, %rax	# D.4583, tmp242
	salq	$2, %rax	#, tmp243
	leaq	(%rcx,%rax), %rdx	#, D.4584
	movl	-36(%rbp), %eax	# threat, tmp244
	movb	%al, 2(%rdx)	# D.4585, _143->Threat
.L27:
	.loc 1 202 0
	nop
	.loc 1 203 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	StoreTT, .-StoreTT
	.globl	LearnStoreTT
	.type	LearnStoreTT, @function
LearnStoreTT:
.LFB8:
	.loc 1 206 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)	# score, score
	movl	%esi, -24(%rbp)	# nhash, nhash
	movl	%edx, -28(%rbp)	# hhash, hhash
	movl	%ecx, -32(%rbp)	# tomove, tomove
	movl	%r8d, -36(%rbp)	# best, best
	movl	%r9d, -40(%rbp)	# depth, depth
	.loc 1 209 0
	movl	TTSize(%rip), %eax	# TTSize, TTSize.65
	movl	%eax, %ecx	# TTSize.65, TTSize.66
	movl	-24(%rbp), %eax	# nhash, tmp103
	movl	$0, %edx	#, tmp104
	divl	%ecx	# TTSize.66
	movl	%edx, -4(%rbp)	# tmp104, ttindex
	.loc 1 211 0
	movq	AS_TTable(%rip), %rcx	# AS_TTable, AS_TTable.67
	movl	-4(%rbp), %edx	# ttindex, D.4589
	movq	%rdx, %rax	# D.4589, tmp106
	salq	$2, %rax	#, tmp106
	addq	%rdx, %rax	# D.4589, tmp106
	salq	$2, %rax	#, tmp107
	leaq	(%rcx,%rax), %rdx	#, D.4590
	movl	-40(%rbp), %eax	# depth, tmp108
	movb	%al, (%rdx)	# D.4591, _8->Depth
	.loc 1 213 0
	movl	Variant(%rip), %eax	# Variant, Variant.68
	cmpl	$3, %eax	#, Variant.68
	je	.L36	#,
	.loc 1 213 0 is_stmt 0 discriminator 1
	movl	Variant(%rip), %eax	# Variant, Variant.69
	cmpl	$4, %eax	#, Variant.69
	je	.L36	#,
	.loc 1 215 0 is_stmt 1
	movq	AS_TTable(%rip), %rcx	# AS_TTable, AS_TTable.70
	movl	-4(%rbp), %edx	# ttindex, D.4589
	movq	%rdx, %rax	# D.4589, tmp109
	salq	$2, %rax	#, tmp109
	addq	%rdx, %rax	# D.4589, tmp109
	salq	$2, %rax	#, tmp110
	addq	%rcx, %rax	# AS_TTable.70, D.4590
	movb	$3, 3(%rax)	#, _16->Type
	jmp	.L37	#
.L36:
	.loc 1 219 0
	movq	AS_TTable(%rip), %rcx	# AS_TTable, AS_TTable.71
	movl	-4(%rbp), %edx	# ttindex, D.4589
	movq	%rdx, %rax	# D.4589, tmp111
	salq	$2, %rax	#, tmp111
	addq	%rdx, %rax	# D.4589, tmp111
	salq	$2, %rax	#, tmp112
	addq	%rcx, %rax	# AS_TTable.71, D.4590
	movb	$1, 3(%rax)	#, _20->Type
.L37:
	.loc 1 222 0
	movq	AS_TTable(%rip), %rcx	# AS_TTable, AS_TTable.72
	movl	-4(%rbp), %edx	# ttindex, D.4589
	movq	%rdx, %rax	# D.4589, tmp113
	salq	$2, %rax	#, tmp113
	addq	%rdx, %rax	# D.4589, tmp113
	salq	$2, %rax	#, tmp114
	leaq	(%rcx,%rax), %rdx	#, D.4590
	movl	-24(%rbp), %eax	# nhash, tmp115
	movl	%eax, 8(%rdx)	# tmp115, _24->HashKey
	.loc 1 223 0
	movq	AS_TTable(%rip), %rcx	# AS_TTable, AS_TTable.73
	movl	-4(%rbp), %edx	# ttindex, D.4589
	movq	%rdx, %rax	# D.4589, tmp116
	salq	$2, %rax	#, tmp116
	addq	%rdx, %rax	# D.4589, tmp116
	salq	$2, %rax	#, tmp117
	leaq	(%rcx,%rax), %rdx	#, D.4590
	movl	-28(%rbp), %eax	# hhash, tmp118
	movl	%eax, 12(%rdx)	# tmp118, _28->Hold_hash
	.loc 1 224 0
	movq	AS_TTable(%rip), %rcx	# AS_TTable, AS_TTable.74
	movl	-4(%rbp), %edx	# ttindex, D.4589
	movq	%rdx, %rax	# D.4589, tmp119
	salq	$2, %rax	#, tmp119
	addq	%rdx, %rax	# D.4589, tmp119
	salq	$2, %rax	#, tmp120
	leaq	(%rcx,%rax), %rdx	#, D.4590
	movl	-36(%rbp), %eax	# best, tmp121
	movw	%ax, 4(%rdx)	# D.4592, _33->Bestmove
	.loc 1 225 0
	movq	AS_TTable(%rip), %rcx	# AS_TTable, AS_TTable.75
	movl	-4(%rbp), %edx	# ttindex, D.4589
	movq	%rdx, %rax	# D.4589, tmp122
	salq	$2, %rax	#, tmp122
	addq	%rdx, %rax	# D.4589, tmp122
	salq	$2, %rax	#, tmp123
	leaq	(%rcx,%rax), %rdx	#, D.4590
	movl	-20(%rbp), %eax	# score, tmp124
	movl	%eax, 16(%rdx)	# tmp124, _39->Bound
	.loc 1 226 0
	movq	AS_TTable(%rip), %rcx	# AS_TTable, AS_TTable.76
	movl	-4(%rbp), %edx	# ttindex, D.4589
	movq	%rdx, %rax	# D.4589, tmp125
	salq	$2, %rax	#, tmp125
	addq	%rdx, %rax	# D.4589, tmp125
	salq	$2, %rax	#, tmp126
	leaq	(%rcx,%rax), %rdx	#, D.4590
	movl	-32(%rbp), %eax	# tomove, tmp127
	movb	%al, 1(%rdx)	# D.4591, _44->OnMove
	.loc 1 227 0
	movq	AS_TTable(%rip), %rcx	# AS_TTable, AS_TTable.77
	movl	-4(%rbp), %edx	# ttindex, D.4589
	movq	%rdx, %rax	# D.4589, tmp128
	salq	$2, %rax	#, tmp128
	addq	%rdx, %rax	# D.4589, tmp128
	salq	$2, %rax	#, tmp129
	addq	%rcx, %rax	# AS_TTable.77, D.4590
	movb	$0, 2(%rax)	#, _50->Threat
	.loc 1 229 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	LearnStoreTT, .-LearnStoreTT
	.globl	ProbeTT
	.type	ProbeTT, @function
ProbeTT:
.LFB9:
	.loc 1 232 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# score, score
	movl	%esi, -28(%rbp)	# beta, beta
	movq	%rdx, -40(%rbp)	# best, best
	movq	%rcx, -48(%rbp)	# threat, threat
	movq	%r8, -56(%rbp)	# donull, donull
	movl	%r9d, -32(%rbp)	# depth, depth
	.loc 1 236 0
	movq	-56(%rbp), %rax	# donull, tmp252
	movl	$1, (%rax)	#, *donull_4(D)
	.loc 1 238 0
	movl	TTProbes(%rip), %eax	# TTProbes, TTProbes.78
	addl	$1, %eax	#, TTProbes.79
	movl	%eax, TTProbes(%rip)	# TTProbes.79, TTProbes
	.loc 1 240 0
	movl	hash(%rip), %eax	# hash, hash.80
	movl	TTSize(%rip), %edx	# TTSize, TTSize.81
	movl	%edx, %ecx	# TTSize.81, TTSize.82
	movl	$0, %edx	#, tmp253
	divl	%ecx	# TTSize.82
	movl	%edx, -4(%rbp)	# tmp253, ttindex
	.loc 1 242 0
	movq	DP_TTable(%rip), %rcx	# DP_TTable, DP_TTable.83
	movl	-4(%rbp), %edx	# ttindex, D.4594
	movq	%rdx, %rax	# D.4594, tmp255
	salq	$2, %rax	#, tmp255
	addq	%rdx, %rax	# D.4594, tmp255
	salq	$2, %rax	#, tmp256
	addq	%rcx, %rax	# DP_TTable.83, D.4595
	movl	8(%rax), %edx	# _14->HashKey, D.4596
	movl	hash(%rip), %eax	# hash, hash.84
	cmpl	%eax, %edx	# hash.84, D.4596
	jne	.L39	#,
	.loc 1 243 0
	movq	DP_TTable(%rip), %rcx	# DP_TTable, DP_TTable.85
	movl	-4(%rbp), %edx	# ttindex, D.4594
	movq	%rdx, %rax	# D.4594, tmp257
	salq	$2, %rax	#, tmp257
	addq	%rdx, %rax	# D.4594, tmp257
	salq	$2, %rax	#, tmp258
	addq	%rcx, %rax	# DP_TTable.85, D.4595
	movl	12(%rax), %edx	# _20->Hold_hash, D.4596
	movl	hold_hash(%rip), %eax	# hold_hash, hold_hash.86
	cmpl	%eax, %edx	# hold_hash.86, D.4596
	jne	.L39	#,
	.loc 1 244 0
	movq	DP_TTable(%rip), %rcx	# DP_TTable, DP_TTable.87
	movl	-4(%rbp), %edx	# ttindex, D.4594
	movq	%rdx, %rax	# D.4594, tmp259
	salq	$2, %rax	#, tmp259
	addq	%rdx, %rax	# D.4594, tmp259
	salq	$2, %rax	#, tmp260
	addq	%rcx, %rax	# DP_TTable.87, D.4595
	movzbl	1(%rax), %edx	# _26->OnMove, D.4597
	movl	white_to_move(%rip), %eax	# white_to_move, white_to_move.88
	testl	%eax, %eax	# white_to_move.88
	sete	%al	#, D.4598
	movzbl	%al, %eax	# D.4598, D.4593
	cmpb	%al, %dl	# D.4599, D.4597
	jne	.L39	#,
	.loc 1 246 0
	movl	TTHits(%rip), %eax	# TTHits, TTHits.89
	addl	$1, %eax	#, TTHits.90
	movl	%eax, TTHits(%rip)	# TTHits.90, TTHits
	.loc 1 248 0
	movq	DP_TTable(%rip), %rcx	# DP_TTable, DP_TTable.91
	movl	-4(%rbp), %edx	# ttindex, D.4594
	movq	%rdx, %rax	# D.4594, tmp261
	salq	$2, %rax	#, tmp261
	addq	%rdx, %rax	# D.4594, tmp261
	salq	$2, %rax	#, tmp262
	addq	%rcx, %rax	# DP_TTable.91, D.4595
	movzbl	3(%rax), %eax	# _37->Type, D.4597
	cmpb	$1, %al	#, D.4597
	jne	.L40	#,
	.loc 1 249 0
	movl	-32(%rbp), %eax	# depth, tmp263
	leal	-3(%rax), %esi	#, D.4593
	movq	DP_TTable(%rip), %rcx	# DP_TTable, DP_TTable.92
	movl	-4(%rbp), %edx	# ttindex, D.4594
	movq	%rdx, %rax	# D.4594, tmp264
	salq	$2, %rax	#, tmp264
	addq	%rdx, %rax	# D.4594, tmp264
	salq	$2, %rax	#, tmp265
	addq	%rcx, %rax	# DP_TTable.92, D.4595
	movzbl	(%rax), %eax	# _44->Depth, D.4597
	movsbl	%al, %eax	# D.4597, D.4593
	cmpl	%eax, %esi	# D.4593, D.4593
	jg	.L40	#,
	.loc 1 250 0
	movq	DP_TTable(%rip), %rcx	# DP_TTable, DP_TTable.93
	movl	-4(%rbp), %edx	# ttindex, D.4594
	movq	%rdx, %rax	# D.4594, tmp266
	salq	$2, %rax	#, tmp266
	addq	%rdx, %rax	# D.4594, tmp266
	salq	$2, %rax	#, tmp267
	addq	%rcx, %rax	# DP_TTable.93, D.4595
	movl	16(%rax), %eax	# _50->Bound, D.4593
	cmpl	-28(%rbp), %eax	# beta, D.4593
	jge	.L40	#,
	.loc 1 251 0
	movq	-56(%rbp), %rax	# donull, tmp268
	movl	$0, (%rax)	#, *donull_4(D)
.L40:
	.loc 1 253 0
	movq	DP_TTable(%rip), %rcx	# DP_TTable, DP_TTable.94
	movl	-4(%rbp), %edx	# ttindex, D.4594
	movq	%rdx, %rax	# D.4594, tmp269
	salq	$2, %rax	#, tmp269
	addq	%rdx, %rax	# D.4594, tmp269
	salq	$2, %rax	#, tmp270
	addq	%rcx, %rax	# DP_TTable.94, D.4595
	movzbl	2(%rax), %eax	# _56->Threat, D.4597
	testb	%al, %al	# D.4597
	je	.L41	#,
	.loc 1 253 0 is_stmt 0 discriminator 1
	addl	$1, -32(%rbp)	#, depth
.L41:
	.loc 1 255 0 is_stmt 1
	movq	DP_TTable(%rip), %rcx	# DP_TTable, DP_TTable.95
	movl	-4(%rbp), %edx	# ttindex, D.4594
	movq	%rdx, %rax	# D.4594, tmp271
	salq	$2, %rax	#, tmp271
	addq	%rdx, %rax	# D.4594, tmp271
	salq	$2, %rax	#, tmp272
	addq	%rcx, %rax	# DP_TTable.95, D.4595
	movzbl	(%rax), %eax	# _62->Depth, D.4597
	movsbl	%al, %eax	# D.4597, D.4593
	cmpl	-32(%rbp), %eax	# depth, D.4593
	jl	.L42	#,
	.loc 1 257 0
	movq	DP_TTable(%rip), %rcx	# DP_TTable, DP_TTable.96
	movl	-4(%rbp), %edx	# ttindex, D.4594
	movq	%rdx, %rax	# D.4594, tmp273
	salq	$2, %rax	#, tmp273
	addq	%rdx, %rax	# D.4594, tmp273
	salq	$2, %rax	#, tmp274
	addq	%rcx, %rax	# DP_TTable.96, D.4595
	movl	16(%rax), %edx	# _68->Bound, D.4593
	movq	-24(%rbp), %rax	# score, tmp275
	movl	%edx, (%rax)	# D.4593, *score_70(D)
	.loc 1 259 0
	movq	-24(%rbp), %rax	# score, tmp276
	movl	(%rax), %eax	# *score_70(D), D.4593
	cmpl	$999500, %eax	#, D.4593
	jle	.L43	#,
	.loc 1 260 0
	movq	-24(%rbp), %rax	# score, tmp277
	movl	(%rax), %edx	# *score_70(D), D.4593
	movl	ply(%rip), %eax	# ply, ply.97
	subl	%eax, %edx	# ply.97, D.4593
	movq	-24(%rbp), %rax	# score, tmp278
	movl	%edx, (%rax)	# D.4593, *score_70(D)
	jmp	.L44	#
.L43:
	.loc 1 261 0
	movq	-24(%rbp), %rax	# score, tmp279
	movl	(%rax), %eax	# *score_70(D), D.4593
	cmpl	$-999500, %eax	#, D.4593
	jge	.L44	#,
	.loc 1 262 0
	movq	-24(%rbp), %rax	# score, tmp280
	movl	(%rax), %edx	# *score_70(D), D.4593
	movl	ply(%rip), %eax	# ply, ply.98
	addl	%eax, %edx	# ply.98, D.4593
	movq	-24(%rbp), %rax	# score, tmp281
	movl	%edx, (%rax)	# D.4593, *score_70(D)
.L44:
	.loc 1 264 0
	movq	DP_TTable(%rip), %rcx	# DP_TTable, DP_TTable.99
	movl	-4(%rbp), %edx	# ttindex, D.4594
	movq	%rdx, %rax	# D.4594, tmp282
	salq	$2, %rax	#, tmp282
	addq	%rdx, %rax	# D.4594, tmp282
	salq	$2, %rax	#, tmp283
	addq	%rcx, %rax	# DP_TTable.99, D.4595
	movzwl	4(%rax), %eax	# _82->Bestmove, D.4600
	movzwl	%ax, %edx	# D.4600, D.4593
	movq	-40(%rbp), %rax	# best, tmp284
	movl	%edx, (%rax)	# D.4593, *best_85(D)
	.loc 1 265 0
	movq	DP_TTable(%rip), %rcx	# DP_TTable, DP_TTable.100
	movl	-4(%rbp), %edx	# ttindex, D.4594
	movq	%rdx, %rax	# D.4594, tmp285
	salq	$2, %rax	#, tmp285
	addq	%rdx, %rax	# D.4594, tmp285
	salq	$2, %rax	#, tmp286
	addq	%rcx, %rax	# DP_TTable.100, D.4595
	movzbl	2(%rax), %eax	# _89->Threat, D.4597
	movsbl	%al, %edx	# D.4597, D.4593
	movq	-48(%rbp), %rax	# threat, tmp287
	movl	%edx, (%rax)	# D.4593, *threat_92(D)
	.loc 1 267 0
	movq	DP_TTable(%rip), %rcx	# DP_TTable, DP_TTable.101
	movl	-4(%rbp), %edx	# ttindex, D.4594
	movq	%rdx, %rax	# D.4594, tmp288
	salq	$2, %rax	#, tmp288
	addq	%rdx, %rax	# D.4594, tmp288
	salq	$2, %rax	#, tmp289
	addq	%rcx, %rax	# DP_TTable.101, D.4595
	movzbl	3(%rax), %eax	# _96->Type, D.4597
	movsbl	%al, %eax	# D.4597, D.4593
	jmp	.L45	#
.L42:
	.loc 1 271 0
	movq	DP_TTable(%rip), %rcx	# DP_TTable, DP_TTable.102
	movl	-4(%rbp), %edx	# ttindex, D.4594
	movq	%rdx, %rax	# D.4594, tmp290
	salq	$2, %rax	#, tmp290
	addq	%rdx, %rax	# D.4594, tmp290
	salq	$2, %rax	#, tmp291
	addq	%rcx, %rax	# DP_TTable.102, D.4595
	movzwl	4(%rax), %eax	# _102->Bestmove, D.4600
	movzwl	%ax, %edx	# D.4600, D.4593
	movq	-40(%rbp), %rax	# best, tmp292
	movl	%edx, (%rax)	# D.4593, *best_85(D)
	.loc 1 272 0
	movq	DP_TTable(%rip), %rcx	# DP_TTable, DP_TTable.103
	movl	-4(%rbp), %edx	# ttindex, D.4594
	movq	%rdx, %rax	# D.4594, tmp293
	salq	$2, %rax	#, tmp293
	addq	%rdx, %rax	# D.4594, tmp293
	salq	$2, %rax	#, tmp294
	addq	%rcx, %rax	# DP_TTable.103, D.4595
	movzbl	2(%rax), %eax	# _108->Threat, D.4597
	movsbl	%al, %edx	# D.4597, D.4593
	movq	-48(%rbp), %rax	# threat, tmp295
	movl	%edx, (%rax)	# D.4593, *threat_92(D)
	.loc 1 274 0
	movl	$0, %eax	#, D.4593
	jmp	.L45	#
.L39:
	.loc 1 277 0
	movq	AS_TTable(%rip), %rcx	# AS_TTable, AS_TTable.104
	movl	-4(%rbp), %edx	# ttindex, D.4594
	movq	%rdx, %rax	# D.4594, tmp296
	salq	$2, %rax	#, tmp296
	addq	%rdx, %rax	# D.4594, tmp296
	salq	$2, %rax	#, tmp297
	addq	%rcx, %rax	# AS_TTable.104, D.4595
	movl	8(%rax), %edx	# _115->HashKey, D.4596
	movl	hash(%rip), %eax	# hash, hash.105
	cmpl	%eax, %edx	# hash.105, D.4596
	jne	.L46	#,
	.loc 1 278 0
	movq	AS_TTable(%rip), %rcx	# AS_TTable, AS_TTable.106
	movl	-4(%rbp), %edx	# ttindex, D.4594
	movq	%rdx, %rax	# D.4594, tmp298
	salq	$2, %rax	#, tmp298
	addq	%rdx, %rax	# D.4594, tmp298
	salq	$2, %rax	#, tmp299
	addq	%rcx, %rax	# AS_TTable.106, D.4595
	movl	12(%rax), %edx	# _121->Hold_hash, D.4596
	movl	hold_hash(%rip), %eax	# hold_hash, hold_hash.107
	cmpl	%eax, %edx	# hold_hash.107, D.4596
	jne	.L46	#,
	.loc 1 279 0
	movq	AS_TTable(%rip), %rcx	# AS_TTable, AS_TTable.108
	movl	-4(%rbp), %edx	# ttindex, D.4594
	movq	%rdx, %rax	# D.4594, tmp300
	salq	$2, %rax	#, tmp300
	addq	%rdx, %rax	# D.4594, tmp300
	salq	$2, %rax	#, tmp301
	addq	%rcx, %rax	# AS_TTable.108, D.4595
	movzbl	1(%rax), %edx	# _127->OnMove, D.4597
	movl	white_to_move(%rip), %eax	# white_to_move, white_to_move.109
	testl	%eax, %eax	# white_to_move.109
	sete	%al	#, D.4598
	movzbl	%al, %eax	# D.4598, D.4593
	cmpb	%al, %dl	# D.4599, D.4597
	jne	.L46	#,
	.loc 1 281 0
	movl	TTHits(%rip), %eax	# TTHits, TTHits.110
	addl	$1, %eax	#, TTHits.111
	movl	%eax, TTHits(%rip)	# TTHits.111, TTHits
	.loc 1 283 0
	movq	AS_TTable(%rip), %rcx	# AS_TTable, AS_TTable.112
	movl	-4(%rbp), %edx	# ttindex, D.4594
	movq	%rdx, %rax	# D.4594, tmp302
	salq	$2, %rax	#, tmp302
	addq	%rdx, %rax	# D.4594, tmp302
	salq	$2, %rax	#, tmp303
	addq	%rcx, %rax	# AS_TTable.112, D.4595
	movzbl	3(%rax), %eax	# _138->Type, D.4597
	cmpb	$1, %al	#, D.4597
	jne	.L47	#,
	.loc 1 284 0
	movl	-32(%rbp), %eax	# depth, tmp304
	leal	-3(%rax), %esi	#, D.4593
	movq	AS_TTable(%rip), %rcx	# AS_TTable, AS_TTable.113
	movl	-4(%rbp), %edx	# ttindex, D.4594
	movq	%rdx, %rax	# D.4594, tmp305
	salq	$2, %rax	#, tmp305
	addq	%rdx, %rax	# D.4594, tmp305
	salq	$2, %rax	#, tmp306
	addq	%rcx, %rax	# AS_TTable.113, D.4595
	movzbl	(%rax), %eax	# _144->Depth, D.4597
	movsbl	%al, %eax	# D.4597, D.4593
	cmpl	%eax, %esi	# D.4593, D.4593
	jg	.L47	#,
	.loc 1 285 0
	movq	AS_TTable(%rip), %rcx	# AS_TTable, AS_TTable.114
	movl	-4(%rbp), %edx	# ttindex, D.4594
	movq	%rdx, %rax	# D.4594, tmp307
	salq	$2, %rax	#, tmp307
	addq	%rdx, %rax	# D.4594, tmp307
	salq	$2, %rax	#, tmp308
	addq	%rcx, %rax	# AS_TTable.114, D.4595
	movl	16(%rax), %eax	# _150->Bound, D.4593
	cmpl	-28(%rbp), %eax	# beta, D.4593
	jge	.L47	#,
	.loc 1 286 0
	movq	-56(%rbp), %rax	# donull, tmp309
	movl	$0, (%rax)	#, *donull_4(D)
.L47:
	.loc 1 288 0
	movq	AS_TTable(%rip), %rcx	# AS_TTable, AS_TTable.115
	movl	-4(%rbp), %edx	# ttindex, D.4594
	movq	%rdx, %rax	# D.4594, tmp310
	salq	$2, %rax	#, tmp310
	addq	%rdx, %rax	# D.4594, tmp310
	salq	$2, %rax	#, tmp311
	addq	%rcx, %rax	# AS_TTable.115, D.4595
	movzbl	2(%rax), %eax	# _155->Threat, D.4597
	testb	%al, %al	# D.4597
	je	.L48	#,
	.loc 1 288 0 is_stmt 0 discriminator 1
	addl	$1, -32(%rbp)	#, depth
.L48:
	.loc 1 290 0 is_stmt 1
	movq	AS_TTable(%rip), %rcx	# AS_TTable, AS_TTable.116
	movl	-4(%rbp), %edx	# ttindex, D.4594
	movq	%rdx, %rax	# D.4594, tmp312
	salq	$2, %rax	#, tmp312
	addq	%rdx, %rax	# D.4594, tmp312
	salq	$2, %rax	#, tmp313
	addq	%rcx, %rax	# AS_TTable.116, D.4595
	movzbl	(%rax), %eax	# _161->Depth, D.4597
	movsbl	%al, %eax	# D.4597, D.4593
	cmpl	-32(%rbp), %eax	# depth, D.4593
	jl	.L49	#,
	.loc 1 292 0
	movq	AS_TTable(%rip), %rcx	# AS_TTable, AS_TTable.117
	movl	-4(%rbp), %edx	# ttindex, D.4594
	movq	%rdx, %rax	# D.4594, tmp314
	salq	$2, %rax	#, tmp314
	addq	%rdx, %rax	# D.4594, tmp314
	salq	$2, %rax	#, tmp315
	addq	%rcx, %rax	# AS_TTable.117, D.4595
	movl	16(%rax), %edx	# _167->Bound, D.4593
	movq	-24(%rbp), %rax	# score, tmp316
	movl	%edx, (%rax)	# D.4593, *score_70(D)
	.loc 1 294 0
	movq	-24(%rbp), %rax	# score, tmp317
	movl	(%rax), %eax	# *score_70(D), D.4593
	cmpl	$999500, %eax	#, D.4593
	jle	.L50	#,
	.loc 1 295 0
	movq	-24(%rbp), %rax	# score, tmp318
	movl	(%rax), %edx	# *score_70(D), D.4593
	movl	ply(%rip), %eax	# ply, ply.118
	subl	%eax, %edx	# ply.118, D.4593
	movq	-24(%rbp), %rax	# score, tmp319
	movl	%edx, (%rax)	# D.4593, *score_70(D)
	jmp	.L51	#
.L50:
	.loc 1 296 0
	movq	-24(%rbp), %rax	# score, tmp320
	movl	(%rax), %eax	# *score_70(D), D.4593
	cmpl	$-999500, %eax	#, D.4593
	jge	.L51	#,
	.loc 1 297 0
	movq	-24(%rbp), %rax	# score, tmp321
	movl	(%rax), %edx	# *score_70(D), D.4593
	movl	ply(%rip), %eax	# ply, ply.119
	addl	%eax, %edx	# ply.119, D.4593
	movq	-24(%rbp), %rax	# score, tmp322
	movl	%edx, (%rax)	# D.4593, *score_70(D)
.L51:
	.loc 1 299 0
	movq	AS_TTable(%rip), %rcx	# AS_TTable, AS_TTable.120
	movl	-4(%rbp), %edx	# ttindex, D.4594
	movq	%rdx, %rax	# D.4594, tmp323
	salq	$2, %rax	#, tmp323
	addq	%rdx, %rax	# D.4594, tmp323
	salq	$2, %rax	#, tmp324
	addq	%rcx, %rax	# AS_TTable.120, D.4595
	movzwl	4(%rax), %eax	# _180->Bestmove, D.4600
	movzwl	%ax, %edx	# D.4600, D.4593
	movq	-40(%rbp), %rax	# best, tmp325
	movl	%edx, (%rax)	# D.4593, *best_85(D)
	.loc 1 300 0
	movq	AS_TTable(%rip), %rcx	# AS_TTable, AS_TTable.121
	movl	-4(%rbp), %edx	# ttindex, D.4594
	movq	%rdx, %rax	# D.4594, tmp326
	salq	$2, %rax	#, tmp326
	addq	%rdx, %rax	# D.4594, tmp326
	salq	$2, %rax	#, tmp327
	addq	%rcx, %rax	# AS_TTable.121, D.4595
	movzbl	2(%rax), %eax	# _186->Threat, D.4597
	movsbl	%al, %edx	# D.4597, D.4593
	movq	-48(%rbp), %rax	# threat, tmp328
	movl	%edx, (%rax)	# D.4593, *threat_92(D)
	.loc 1 302 0
	movq	AS_TTable(%rip), %rcx	# AS_TTable, AS_TTable.122
	movl	-4(%rbp), %edx	# ttindex, D.4594
	movq	%rdx, %rax	# D.4594, tmp329
	salq	$2, %rax	#, tmp329
	addq	%rdx, %rax	# D.4594, tmp329
	salq	$2, %rax	#, tmp330
	addq	%rcx, %rax	# AS_TTable.122, D.4595
	movzbl	3(%rax), %eax	# _192->Type, D.4597
	movsbl	%al, %eax	# D.4597, D.4593
	jmp	.L45	#
.L49:
	.loc 1 306 0
	movq	AS_TTable(%rip), %rcx	# AS_TTable, AS_TTable.123
	movl	-4(%rbp), %edx	# ttindex, D.4594
	movq	%rdx, %rax	# D.4594, tmp331
	salq	$2, %rax	#, tmp331
	addq	%rdx, %rax	# D.4594, tmp331
	salq	$2, %rax	#, tmp332
	addq	%rcx, %rax	# AS_TTable.123, D.4595
	movzwl	4(%rax), %eax	# _198->Bestmove, D.4600
	movzwl	%ax, %edx	# D.4600, D.4593
	movq	-40(%rbp), %rax	# best, tmp333
	movl	%edx, (%rax)	# D.4593, *best_85(D)
	.loc 1 307 0
	movq	AS_TTable(%rip), %rcx	# AS_TTable, AS_TTable.124
	movl	-4(%rbp), %edx	# ttindex, D.4594
	movq	%rdx, %rax	# D.4594, tmp334
	salq	$2, %rax	#, tmp334
	addq	%rdx, %rax	# D.4594, tmp334
	salq	$2, %rax	#, tmp335
	addq	%rcx, %rax	# AS_TTable.124, D.4595
	movzbl	2(%rax), %eax	# _204->Threat, D.4597
	movsbl	%al, %edx	# D.4597, D.4593
	movq	-48(%rbp), %rax	# threat, tmp336
	movl	%edx, (%rax)	# D.4593, *threat_92(D)
	.loc 1 309 0
	movl	$0, %eax	#, D.4593
	jmp	.L45	#
.L46:
	.loc 1 313 0
	movl	$4, %eax	#, D.4593
.L45:
	.loc 1 315 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	ProbeTT, .-ProbeTT
	.globl	QProbeTT
	.type	QProbeTT, @function
QProbeTT:
.LFB10:
	.loc 1 318 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# score, score
	movq	%rsi, -32(%rbp)	# best, best
	.loc 1 322 0
	movl	TTProbes(%rip), %eax	# TTProbes, TTProbes.125
	addl	$1, %eax	#, TTProbes.126
	movl	%eax, TTProbes(%rip)	# TTProbes.126, TTProbes
	.loc 1 324 0
	movl	hash(%rip), %eax	# hash, hash.127
	movl	TTSize(%rip), %edx	# TTSize, TTSize.128
	movl	%edx, %ecx	# TTSize.128, TTSize.129
	movl	$0, %edx	#, tmp105
	divl	%ecx	# TTSize.129
	movl	%edx, -4(%rbp)	# tmp105, ttindex
	.loc 1 326 0
	movq	QS_TTable(%rip), %rax	# QS_TTable, QS_TTable.130
	movl	-4(%rbp), %edx	# ttindex, D.4602
	salq	$4, %rdx	#, D.4602
	addq	%rdx, %rax	# D.4602, D.4603
	movl	4(%rax), %edx	# _11->HashKey, D.4604
	movl	hash(%rip), %eax	# hash, hash.131
	cmpl	%eax, %edx	# hash.131, D.4604
	jne	.L53	#,
	.loc 1 327 0
	movq	QS_TTable(%rip), %rax	# QS_TTable, QS_TTable.132
	movl	-4(%rbp), %edx	# ttindex, D.4602
	salq	$4, %rdx	#, D.4602
	addq	%rdx, %rax	# D.4602, D.4603
	movl	8(%rax), %edx	# _17->Hold_hash, D.4604
	movl	hold_hash(%rip), %eax	# hold_hash, hold_hash.133
	cmpl	%eax, %edx	# hold_hash.133, D.4604
	jne	.L53	#,
	.loc 1 328 0
	movq	QS_TTable(%rip), %rax	# QS_TTable, QS_TTable.134
	movl	-4(%rbp), %edx	# ttindex, D.4602
	salq	$4, %rdx	#, D.4602
	addq	%rdx, %rax	# D.4602, D.4603
	movzbl	(%rax), %edx	# _23->OnMove, D.4605
	movl	white_to_move(%rip), %eax	# white_to_move, white_to_move.135
	testl	%eax, %eax	# white_to_move.135
	sete	%al	#, D.4606
	movzbl	%al, %eax	# D.4606, D.4601
	cmpb	%al, %dl	# D.4607, D.4605
	jne	.L53	#,
	.loc 1 330 0
	movl	TTHits(%rip), %eax	# TTHits, TTHits.136
	addl	$1, %eax	#, TTHits.137
	movl	%eax, TTHits(%rip)	# TTHits.137, TTHits
	.loc 1 332 0
	movq	QS_TTable(%rip), %rax	# QS_TTable, QS_TTable.138
	movl	-4(%rbp), %edx	# ttindex, D.4602
	salq	$4, %rdx	#, D.4602
	addq	%rdx, %rax	# D.4602, D.4603
	movl	12(%rax), %edx	# _34->Bound, D.4601
	movq	-24(%rbp), %rax	# score, tmp107
	movl	%edx, (%rax)	# D.4601, *score_36(D)
	.loc 1 334 0
	movq	QS_TTable(%rip), %rax	# QS_TTable, QS_TTable.139
	movl	-4(%rbp), %edx	# ttindex, D.4602
	salq	$4, %rdx	#, D.4602
	addq	%rdx, %rax	# D.4602, D.4603
	movzwl	2(%rax), %eax	# _40->Bestmove, D.4608
	movzwl	%ax, %edx	# D.4608, D.4601
	movq	-32(%rbp), %rax	# best, tmp108
	movl	%edx, (%rax)	# D.4601, *best_43(D)
	.loc 1 336 0
	movq	QS_TTable(%rip), %rax	# QS_TTable, QS_TTable.140
	movl	-4(%rbp), %edx	# ttindex, D.4602
	salq	$4, %rdx	#, D.4602
	addq	%rdx, %rax	# D.4602, D.4603
	movzbl	1(%rax), %eax	# _47->Type, D.4605
	movsbl	%al, %eax	# D.4605, D.4601
	jmp	.L54	#
.L53:
	.loc 1 339 0
	movl	$4, %eax	#, D.4601
.L54:
	.loc 1 341 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	QProbeTT, .-QProbeTT
	.section	.rodata
	.align 8
.LC0:
	.string	"Out of memory allocating hashtables."
	.text
	.globl	alloc_hash
	.type	alloc_hash, @function
alloc_hash:
.LFB11:
	.loc 1 345 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 346 0
	movl	TTSize(%rip), %eax	# TTSize, TTSize.141
	movslq	%eax, %rdx	# TTSize.141, D.4609
	movq	%rdx, %rax	# D.4609, tmp74
	salq	$2, %rax	#, tmp74
	addq	%rdx, %rax	# D.4609, tmp74
	salq	$2, %rax	#, tmp75
	movq	%rax, %rdi	# D.4609,
	call	malloc	#
	movq	%rax, AS_TTable(%rip)	# AS_TTable.142, AS_TTable
	.loc 1 347 0
	movl	TTSize(%rip), %eax	# TTSize, TTSize.143
	movslq	%eax, %rdx	# TTSize.143, D.4609
	movq	%rdx, %rax	# D.4609, tmp77
	salq	$2, %rax	#, tmp77
	addq	%rdx, %rax	# D.4609, tmp77
	salq	$2, %rax	#, tmp78
	movq	%rax, %rdi	# D.4609,
	call	malloc	#
	movq	%rax, DP_TTable(%rip)	# DP_TTable.144, DP_TTable
	.loc 1 348 0
	movl	TTSize(%rip), %eax	# TTSize, TTSize.145
	cltq
	salq	$4, %rax	#, D.4609
	movq	%rax, %rdi	# D.4609,
	call	malloc	#
	movq	%rax, QS_TTable(%rip)	# QS_TTable.146, QS_TTable
	.loc 1 350 0
	movq	AS_TTable(%rip), %rax	# AS_TTable, AS_TTable.147
	testq	%rax, %rax	# AS_TTable.147
	je	.L56	#,
	.loc 1 350 0 is_stmt 0 discriminator 1
	movq	DP_TTable(%rip), %rax	# DP_TTable, DP_TTable.148
	testq	%rax, %rax	# DP_TTable.148
	je	.L56	#,
	movq	QS_TTable(%rip), %rax	# QS_TTable, QS_TTable.149
	testq	%rax, %rax	# QS_TTable.149
	jne	.L57	#,
.L56:
	.loc 1 352 0 is_stmt 1
	movl	$.LC0, %edi	#,
	call	puts	#
	.loc 1 353 0
	movl	$1, %edi	#,
	call	exit	#
.L57:
	.loc 1 361 0
	nop
	.loc 1 362 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	alloc_hash, .-alloc_hash
	.globl	free_hash
	.type	free_hash, @function
free_hash:
.LFB12:
	.loc 1 365 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 366 0
	movq	AS_TTable(%rip), %rax	# AS_TTable, AS_TTable.150
	movq	%rax, %rdi	# AS_TTable.150,
	call	free	#
	.loc 1 367 0
	movq	DP_TTable(%rip), %rax	# DP_TTable, DP_TTable.151
	movq	%rax, %rdi	# DP_TTable.151,
	call	free	#
	.loc 1 368 0
	movq	QS_TTable(%rip), %rax	# QS_TTable, QS_TTable.152
	movq	%rax, %rdi	# QS_TTable.152,
	call	free	#
	.loc 1 369 0
	nop
	.loc 1 370 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	free_hash, .-free_hash
.Letext0:
	.file 2 "sjeng.h"
	.file 3 "extvars.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x59a
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF60
	.byte	0x1
	.long	.LASF61
	.long	.LASF62
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x2
	.byte	0xe
	.long	0x42
	.uleb128 0x3
	.long	.LASF0
	.sleb128 0
	.uleb128 0x3
	.long	.LASF1
	.sleb128 1
	.byte	0
	.uleb128 0x4
	.long	.LASF21
	.byte	0x2
	.byte	0xe
	.long	0x2d
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.long	.LASF2
	.uleb128 0x5
	.byte	0x2
	.byte	0x7
	.long	.LASF3
	.uleb128 0x5
	.byte	0x4
	.byte	0x7
	.long	.LASF4
	.uleb128 0x5
	.byte	0x8
	.byte	0x7
	.long	.LASF5
	.uleb128 0x5
	.byte	0x1
	.byte	0x6
	.long	.LASF6
	.uleb128 0x5
	.byte	0x2
	.byte	0x5
	.long	.LASF7
	.uleb128 0x6
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x5
	.byte	0x8
	.byte	0x5
	.long	.LASF8
	.uleb128 0x5
	.byte	0x8
	.byte	0x7
	.long	.LASF9
	.uleb128 0x5
	.byte	0x1
	.byte	0x6
	.long	.LASF10
	.uleb128 0x5
	.byte	0x8
	.byte	0x5
	.long	.LASF11
	.uleb128 0x5
	.byte	0x8
	.byte	0x7
	.long	.LASF12
	.uleb128 0x7
	.byte	0x8
	.long	0x77
	.uleb128 0x8
	.byte	0x14
	.byte	0x1
	.byte	0x17
	.long	0x110
	.uleb128 0x9
	.long	.LASF13
	.byte	0x1
	.byte	0x19
	.long	0x8c
	.byte	0
	.uleb128 0x9
	.long	.LASF14
	.byte	0x1
	.byte	0x1a
	.long	0x8c
	.byte	0x1
	.uleb128 0x9
	.long	.LASF15
	.byte	0x1
	.byte	0x1b
	.long	0x8c
	.byte	0x2
	.uleb128 0x9
	.long	.LASF16
	.byte	0x1
	.byte	0x1c
	.long	0x8c
	.byte	0x3
	.uleb128 0x9
	.long	.LASF17
	.byte	0x1
	.byte	0x1d
	.long	0x54
	.byte	0x4
	.uleb128 0x9
	.long	.LASF18
	.byte	0x1
	.byte	0x1e
	.long	0x5b
	.byte	0x8
	.uleb128 0x9
	.long	.LASF19
	.byte	0x1
	.byte	0x1f
	.long	0x5b
	.byte	0xc
	.uleb128 0x9
	.long	.LASF20
	.byte	0x1
	.byte	0x20
	.long	0x77
	.byte	0x10
	.byte	0
	.uleb128 0x4
	.long	.LASF22
	.byte	0x1
	.byte	0x22
	.long	0xa7
	.uleb128 0x8
	.byte	0x10
	.byte	0x1
	.byte	0x24
	.long	0x16c
	.uleb128 0x9
	.long	.LASF14
	.byte	0x1
	.byte	0x26
	.long	0x8c
	.byte	0
	.uleb128 0x9
	.long	.LASF16
	.byte	0x1
	.byte	0x27
	.long	0x8c
	.byte	0x1
	.uleb128 0x9
	.long	.LASF17
	.byte	0x1
	.byte	0x28
	.long	0x54
	.byte	0x2
	.uleb128 0x9
	.long	.LASF18
	.byte	0x1
	.byte	0x29
	.long	0x5b
	.byte	0x4
	.uleb128 0x9
	.long	.LASF19
	.byte	0x1
	.byte	0x2a
	.long	0x5b
	.byte	0x8
	.uleb128 0x9
	.long	.LASF20
	.byte	0x1
	.byte	0x2b
	.long	0x77
	.byte	0xc
	.byte	0
	.uleb128 0x4
	.long	.LASF23
	.byte	0x1
	.byte	0x2d
	.long	0x11b
	.uleb128 0xa
	.long	.LASF24
	.byte	0x1
	.byte	0x33
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xa
	.long	.LASF25
	.byte	0x1
	.byte	0x3a
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xb
	.long	.LASF26
	.byte	0x1
	.byte	0x3f
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x1df
	.uleb128 0xc
	.string	"p"
	.byte	0x1
	.byte	0x41
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xc
	.string	"q"
	.byte	0x1
	.byte	0x41
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xd
	.long	.LASF27
	.byte	0x1
	.byte	0x52
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x209
	.uleb128 0xc
	.string	"p"
	.byte	0x1
	.byte	0x54
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xd
	.long	.LASF28
	.byte	0x1
	.byte	0x63
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x26d
	.uleb128 0xe
	.long	.LASF29
	.byte	0x1
	.byte	0x63
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xe
	.long	.LASF30
	.byte	0x1
	.byte	0x63
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xe
	.long	.LASF31
	.byte	0x1
	.byte	0x63
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xe
	.long	.LASF32
	.byte	0x1
	.byte	0x63
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xf
	.long	.LASF33
	.byte	0x1
	.byte	0x65
	.long	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xd
	.long	.LASF34
	.byte	0x1
	.byte	0x7b
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x2ed
	.uleb128 0xe
	.long	.LASF29
	.byte	0x1
	.byte	0x7b
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xe
	.long	.LASF30
	.byte	0x1
	.byte	0x7b
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xe
	.long	.LASF31
	.byte	0x1
	.byte	0x7b
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xe
	.long	.LASF32
	.byte	0x1
	.byte	0x7b
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xe
	.long	.LASF35
	.byte	0x1
	.byte	0x7b
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0xe
	.long	.LASF36
	.byte	0x1
	.byte	0x7b
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xf
	.long	.LASF33
	.byte	0x1
	.byte	0x7d
	.long	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xd
	.long	.LASF37
	.byte	0x1
	.byte	0xcd
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x36d
	.uleb128 0xe
	.long	.LASF29
	.byte	0x1
	.byte	0xcd
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xe
	.long	.LASF38
	.byte	0x1
	.byte	0xcd
	.long	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xe
	.long	.LASF39
	.byte	0x1
	.byte	0xcd
	.long	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xe
	.long	.LASF40
	.byte	0x1
	.byte	0xcd
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xe
	.long	.LASF32
	.byte	0x1
	.byte	0xcd
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0xe
	.long	.LASF36
	.byte	0x1
	.byte	0xcd
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xf
	.long	.LASF33
	.byte	0x1
	.byte	0xcf
	.long	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x10
	.long	.LASF42
	.byte	0x1
	.byte	0xe7
	.long	0x77
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x3f2
	.uleb128 0xe
	.long	.LASF29
	.byte	0x1
	.byte	0xe7
	.long	0xa1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xe
	.long	.LASF31
	.byte	0x1
	.byte	0xe7
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xe
	.long	.LASF32
	.byte	0x1
	.byte	0xe7
	.long	0xa1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xe
	.long	.LASF35
	.byte	0x1
	.byte	0xe7
	.long	0xa1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0xe
	.long	.LASF41
	.byte	0x1
	.byte	0xe7
	.long	0xa1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0xe
	.long	.LASF36
	.byte	0x1
	.byte	0xe7
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xf
	.long	.LASF33
	.byte	0x1
	.byte	0xea
	.long	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x11
	.long	.LASF43
	.byte	0x1
	.value	0x13d
	.long	0x77
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x442
	.uleb128 0x12
	.long	.LASF29
	.byte	0x1
	.value	0x13d
	.long	0xa1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x12
	.long	.LASF32
	.byte	0x1
	.value	0x13d
	.long	0xa1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x13
	.long	.LASF33
	.byte	0x1
	.value	0x140
	.long	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x14
	.long	.LASF44
	.byte	0x1
	.value	0x158
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x14
	.long	.LASF45
	.byte	0x1
	.value	0x16c
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x15
	.long	0x77
	.long	0x486
	.uleb128 0x16
	.long	0x85
	.byte	0x8f
	.byte	0
	.uleb128 0x17
	.long	.LASF46
	.byte	0x3
	.byte	0xc
	.long	0x476
	.uleb128 0x17
	.long	.LASF47
	.byte	0x3
	.byte	0xc
	.long	0x77
	.uleb128 0x18
	.string	"ply"
	.byte	0x3
	.byte	0xd
	.long	0x77
	.uleb128 0x15
	.long	0x5b
	.long	0x4bd
	.uleb128 0x16
	.long	0x85
	.byte	0xd
	.uleb128 0x16
	.long	0x85
	.byte	0x8f
	.byte	0
	.uleb128 0x19
	.long	.LASF48
	.byte	0x1
	.byte	0xf
	.long	0x4a7
	.uleb128 0x9
	.byte	0x3
	.quad	zobrist
	.uleb128 0x19
	.long	.LASF49
	.byte	0x1
	.byte	0x11
	.long	0x5b
	.uleb128 0x9
	.byte	0x3
	.quad	hash
	.uleb128 0x19
	.long	.LASF50
	.byte	0x1
	.byte	0x13
	.long	0x5b
	.uleb128 0x9
	.byte	0x3
	.quad	TTProbes
	.uleb128 0x19
	.long	.LASF51
	.byte	0x1
	.byte	0x14
	.long	0x5b
	.uleb128 0x9
	.byte	0x3
	.quad	TTHits
	.uleb128 0x19
	.long	.LASF52
	.byte	0x1
	.byte	0x15
	.long	0x5b
	.uleb128 0x9
	.byte	0x3
	.quad	TTStores
	.uleb128 0x17
	.long	.LASF53
	.byte	0x3
	.byte	0x41
	.long	0x5b
	.uleb128 0x17
	.long	.LASF54
	.byte	0x3
	.byte	0x55
	.long	0x42
	.uleb128 0x17
	.long	.LASF55
	.byte	0x3
	.byte	0x63
	.long	0x77
	.uleb128 0x17
	.long	.LASF56
	.byte	0x3
	.byte	0x97
	.long	0x77
	.uleb128 0x19
	.long	.LASF57
	.byte	0x1
	.byte	0x2f
	.long	0x567
	.uleb128 0x9
	.byte	0x3
	.quad	DP_TTable
	.uleb128 0x7
	.byte	0x8
	.long	0x110
	.uleb128 0x19
	.long	.LASF58
	.byte	0x1
	.byte	0x30
	.long	0x567
	.uleb128 0x9
	.byte	0x3
	.quad	AS_TTable
	.uleb128 0x19
	.long	.LASF59
	.byte	0x1
	.byte	0x31
	.long	0x597
	.uleb128 0x9
	.byte	0x3
	.quad	QS_TTable
	.uleb128 0x7
	.byte	0x8
	.long	0x16c
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
	.uleb128 0x3
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
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
	.uleb128 0x6
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
	.uleb128 0x7
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x19
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
.LASF56:
	.string	"TTSize"
.LASF20:
	.string	"Bound"
.LASF53:
	.string	"hold_hash"
.LASF0:
	.string	"FALSE"
.LASF60:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF24:
	.string	"clear_tt"
.LASF9:
	.string	"sizetype"
.LASF25:
	.string	"clear_dp_tt"
.LASF61:
	.string	"ttable.c"
.LASF54:
	.string	"is_pondering"
.LASF7:
	.string	"short int"
.LASF52:
	.string	"TTStores"
.LASF30:
	.string	"alpha"
.LASF49:
	.string	"hash"
.LASF40:
	.string	"tomove"
.LASF37:
	.string	"LearnStoreTT"
.LASF55:
	.string	"Variant"
.LASF39:
	.string	"hhash"
.LASF11:
	.string	"long long int"
.LASF12:
	.string	"long long unsigned int"
.LASF33:
	.string	"ttindex"
.LASF10:
	.string	"char"
.LASF44:
	.string	"alloc_hash"
.LASF19:
	.string	"Hold_hash"
.LASF62:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/458.sjeng/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF50:
	.string	"TTProbes"
.LASF13:
	.string	"Depth"
.LASF27:
	.string	"initialize_hash"
.LASF38:
	.string	"nhash"
.LASF47:
	.string	"white_to_move"
.LASF2:
	.string	"unsigned char"
.LASF57:
	.string	"DP_TTable"
.LASF59:
	.string	"QS_TTable"
.LASF6:
	.string	"signed char"
.LASF29:
	.string	"score"
.LASF43:
	.string	"QProbeTT"
.LASF42:
	.string	"ProbeTT"
.LASF32:
	.string	"best"
.LASF4:
	.string	"unsigned int"
.LASF22:
	.string	"TType"
.LASF18:
	.string	"HashKey"
.LASF3:
	.string	"short unsigned int"
.LASF51:
	.string	"TTHits"
.LASF8:
	.string	"long int"
.LASF26:
	.string	"initialize_zobrist"
.LASF35:
	.string	"threat"
.LASF36:
	.string	"depth"
.LASF34:
	.string	"StoreTT"
.LASF45:
	.string	"free_hash"
.LASF31:
	.string	"beta"
.LASF16:
	.string	"Type"
.LASF5:
	.string	"long unsigned int"
.LASF21:
	.string	"xbool"
.LASF46:
	.string	"board"
.LASF41:
	.string	"donull"
.LASF28:
	.string	"QStoreTT"
.LASF23:
	.string	"QTType"
.LASF17:
	.string	"Bestmove"
.LASF48:
	.string	"zobrist"
.LASF14:
	.string	"OnMove"
.LASF1:
	.string	"TRUE"
.LASF15:
	.string	"Threat"
.LASF58:
	.string	"AS_TTable"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
