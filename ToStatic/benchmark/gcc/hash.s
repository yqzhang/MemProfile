	.file	"hash.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I . -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 hash.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.globl	hash_table_init_n
	.type	hash_table_init_n, @function
hash_table_init_n:
.LFB2:
	.file 1 "hash.c"
	.loc 1 46 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$96, %rsp	#,
	movq	%rdi, -56(%rbp)	# table, table
	movq	%rsi, -64(%rbp)	# newfunc, newfunc
	movq	%rdx, -72(%rbp)	# hash, hash
	movq	%rcx, -80(%rbp)	# comp, comp
	movl	%r8d, -84(%rbp)	# size, size
	.loc 1 49 0
	movl	-84(%rbp), %eax	# size, tmp99
	sall	$3, %eax	#, tmp98
	movl	%eax, -40(%rbp)	# tmp98, alloc
	.loc 1 50 0
	movl	-40(%rbp), %eax	# alloc, alloc.0
	movq	-56(%rbp), %rdx	# table, tmp100
	leaq	40(%rdx), %rdi	#, D.7274
	movl	$free, %r8d	#,
	movl	$xmalloc, %ecx	#,
	movl	$0, %edx	#,
	movl	%eax, %esi	# alloc.0,
	call	_obstack_begin	#
.LBB2:
	.loc 1 52 0
	movq	-56(%rbp), %rax	# table, tmp104
	addq	$40, %rax	#, tmp103
	movq	%rax, -32(%rbp)	# tmp103, __h
.LBB3:
	movq	-32(%rbp), %rax	# __h, tmp105
	movq	%rax, -24(%rbp)	# tmp105, __o
	movl	-40(%rbp), %eax	# alloc, tmp106
	movl	%eax, -36(%rbp)	# tmp106, __len
	movq	-24(%rbp), %rax	# __o, tmp107
	movq	32(%rax), %rax	# __o_7->chunk_limit, D.7275
	movq	%rax, %rdx	# D.7275, D.7276
	movq	-24(%rbp), %rax	# __o, tmp108
	movq	24(%rax), %rax	# __o_7->next_free, D.7275
	subq	%rax, %rdx	# D.7276, D.7276
	movl	-36(%rbp), %eax	# __len, tmp109
	cltq
	cmpq	%rax, %rdx	# D.7276, D.7276
	jge	.L2	#,
	.loc 1 52 0 is_stmt 0 discriminator 1
	movl	-36(%rbp), %edx	# __len, tmp110
	movq	-24(%rbp), %rax	# __o, tmp111
	movl	%edx, %esi	# tmp110,
	movq	%rax, %rdi	# tmp111,
	call	_obstack_newchunk	#
.L2:
	.loc 1 52 0 discriminator 2
	movq	-24(%rbp), %rax	# __o, tmp112
	movq	24(%rax), %rdx	# __o_7->next_free, D.7275
	movl	-36(%rbp), %eax	# __len, tmp113
	cltq
	addq	%rax, %rdx	# D.7277, D.7275
	movq	-24(%rbp), %rax	# __o, tmp114
	movq	%rdx, 24(%rax)	# D.7275, __o_7->next_free
.LBE3:
.LBB4:
	movq	-32(%rbp), %rax	# __h, tmp115
	movq	%rax, -16(%rbp)	# tmp115, __o1
	movq	-16(%rbp), %rax	# __o1, tmp116
	movq	16(%rax), %rax	# __o1_18->object_base, tmp117
	movq	%rax, -8(%rbp)	# tmp117, value
	movq	-16(%rbp), %rax	# __o1, tmp118
	movq	24(%rax), %rax	# __o1_18->next_free, D.7275
	cmpq	-8(%rbp), %rax	# value, D.7275
	jne	.L3	#,
	.loc 1 52 0 discriminator 1
	movq	-16(%rbp), %rax	# __o1, tmp119
	movzbl	80(%rax), %edx	# __o1_18->maybe_empty_object, tmp122
	orl	$2, %edx	#, tmp123
	movb	%dl, 80(%rax)	# tmp123, __o1_18->maybe_empty_object
.L3:
	.loc 1 52 0 discriminator 2
	movq	-16(%rbp), %rax	# __o1, tmp124
	movq	24(%rax), %rax	# __o1_18->next_free, D.7275
	movq	%rax, %rdx	# D.7275, D.7276
	movq	-16(%rbp), %rax	# __o1, tmp125
	movl	48(%rax), %eax	# __o1_18->alignment_mask, D.7278
	cltq
	addq	%rax, %rdx	# D.7276, D.7276
	movq	-16(%rbp), %rax	# __o1, tmp126
	movl	48(%rax), %eax	# __o1_18->alignment_mask, D.7278
	notl	%eax	# D.7278
	cltq
	andq	%rdx, %rax	# D.7276, D.7276
	movq	%rax, %rdx	# D.7276, D.7275
	movq	-16(%rbp), %rax	# __o1, tmp127
	movq	%rdx, 24(%rax)	# D.7275, __o1_18->next_free
	movq	-16(%rbp), %rax	# __o1, tmp128
	movq	24(%rax), %rax	# __o1_18->next_free, D.7275
	movq	%rax, %rdx	# D.7275, D.7276
	movq	-16(%rbp), %rax	# __o1, tmp129
	movq	8(%rax), %rax	# __o1_18->chunk, D.7279
	movq	%rdx, %rcx	# D.7276, D.7276
	subq	%rax, %rcx	# D.7276, D.7276
	movq	-16(%rbp), %rax	# __o1, tmp130
	movq	32(%rax), %rax	# __o1_18->chunk_limit, D.7275
	movq	%rax, %rdx	# D.7275, D.7276
	movq	-16(%rbp), %rax	# __o1, tmp131
	movq	8(%rax), %rax	# __o1_18->chunk, D.7279
	subq	%rax, %rdx	# D.7276, D.7276
	movq	%rdx, %rax	# D.7276, D.7276
	cmpq	%rax, %rcx	# D.7276, D.7276
	jle	.L4	#,
	.loc 1 52 0 discriminator 1
	movq	-16(%rbp), %rax	# __o1, tmp132
	movq	32(%rax), %rdx	# __o1_18->chunk_limit, D.7275
	movq	-16(%rbp), %rax	# __o1, tmp133
	movq	%rdx, 24(%rax)	# D.7275, __o1_18->next_free
.L4:
	.loc 1 52 0 discriminator 2
	movq	-16(%rbp), %rax	# __o1, tmp134
	movq	24(%rax), %rdx	# __o1_18->next_free, D.7275
	movq	-16(%rbp), %rax	# __o1, tmp135
	movq	%rdx, 16(%rax)	# D.7275, __o1_18->object_base
	movq	-8(%rbp), %rdx	# value, D.7280
.LBE4:
.LBE2:
	.loc 1 51 0 is_stmt 1 discriminator 2
	movq	-56(%rbp), %rax	# table, tmp136
	movq	%rdx, (%rax)	# D.7280, table_4(D)->table
	.loc 1 53 0 discriminator 2
	movl	-40(%rbp), %edx	# alloc, D.7281
	movq	-56(%rbp), %rax	# table, tmp137
	movq	(%rax), %rax	# table_4(D)->table, D.7282
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.7282,
	call	memset	#
	.loc 1 54 0 discriminator 2
	movq	-56(%rbp), %rax	# table, tmp138
	movl	-84(%rbp), %edx	# size, tmp139
	movl	%edx, 8(%rax)	# tmp139, table_4(D)->size
	.loc 1 55 0 discriminator 2
	movq	-56(%rbp), %rax	# table, tmp140
	movq	-64(%rbp), %rdx	# newfunc, tmp141
	movq	%rdx, 16(%rax)	# tmp141, table_4(D)->newfunc
	.loc 1 56 0 discriminator 2
	movq	-56(%rbp), %rax	# table, tmp142
	movq	-72(%rbp), %rdx	# hash, tmp143
	movq	%rdx, 24(%rax)	# tmp143, table_4(D)->hash
	.loc 1 57 0 discriminator 2
	movq	-56(%rbp), %rax	# table, tmp144
	movq	-80(%rbp), %rdx	# comp, tmp145
	movq	%rdx, 32(%rax)	# tmp145, table_4(D)->comp
	.loc 1 58 0 discriminator 2
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	hash_table_init_n, .-hash_table_init_n
	.globl	hash_table_init
	.type	hash_table_init, @function
hash_table_init:
.LFB3:
	.loc 1 70 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -8(%rbp)	# table, table
	movq	%rsi, -16(%rbp)	# newfunc, newfunc
	movq	%rdx, -24(%rbp)	# hash, hash
	movq	%rcx, -32(%rbp)	# comp, comp
	.loc 1 71 0
	movq	-32(%rbp), %rcx	# comp, tmp59
	movq	-24(%rbp), %rdx	# hash, tmp60
	movq	-16(%rbp), %rsi	# newfunc, tmp61
	movq	-8(%rbp), %rax	# table, tmp62
	movl	$1009, %r8d	#,
	movq	%rax, %rdi	# tmp62,
	call	hash_table_init_n	#
	.loc 1 72 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	hash_table_init, .-hash_table_init
	.globl	hash_table_free
	.type	hash_table_free, @function
hash_table_free:
.LFB4:
	.loc 1 79 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# table, table
.LBB5:
	.loc 1 80 0
	movq	-24(%rbp), %rax	# table, tmp65
	addq	$40, %rax	#, tmp64
	movq	%rax, -16(%rbp)	# tmp64, __o
	movq	$0, -8(%rbp)	#, __obj
	movq	-16(%rbp), %rax	# __o, tmp66
	movq	8(%rax), %rax	# __o_2->chunk, D.7283
	cmpq	-8(%rbp), %rax	# __obj, D.7283
	jae	.L7	#,
	.loc 1 80 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# __o, tmp67
	movq	32(%rax), %rax	# __o_2->chunk_limit, D.7284
	cmpq	-8(%rbp), %rax	# __obj, D.7284
	jbe	.L7	#,
	movq	-16(%rbp), %rax	# __o, tmp68
	movq	-8(%rbp), %rdx	# __obj, tmp69
	movq	%rdx, 16(%rax)	# tmp69, __o_2->object_base
	movq	-16(%rbp), %rax	# __o, tmp70
	movq	16(%rax), %rdx	# __o_2->object_base, D.7284
	movq	-16(%rbp), %rax	# __o, tmp71
	movq	%rdx, 24(%rax)	# D.7284, __o_2->next_free
	jmp	.L6	#
.L7:
	.loc 1 80 0 discriminator 2
	movq	-8(%rbp), %rdx	# __obj, tmp72
	movq	-16(%rbp), %rax	# __o, tmp73
	movq	%rdx, %rsi	# tmp72,
	movq	%rax, %rdi	# tmp73,
	call	obstack_free	#
.L6:
.LBE5:
	.loc 1 81 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	hash_table_free, .-hash_table_free
	.globl	hash_lookup
	.type	hash_lookup, @function
hash_lookup:
.LFB5:
	.loc 1 93 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -40(%rbp)	# table, table
	movq	%rsi, -48(%rbp)	# key, key
	movl	%edx, -52(%rbp)	# create, create
	movq	%rcx, -64(%rbp)	# copy, copy
	.loc 1 98 0
	movq	-40(%rbp), %rax	# table, tmp84
	movq	24(%rax), %rax	# table_4(D)->hash, D.7286
	movq	-48(%rbp), %rdx	# key, tmp85
	movq	%rdx, %rdi	# tmp85,
	call	*%rax	# D.7286
	movq	%rax, -8(%rbp)	# tmp86, hash
	.loc 1 100 0
	movq	-40(%rbp), %rax	# table, tmp87
	movl	8(%rax), %eax	# table_4(D)->size, D.7287
	movl	%eax, %ecx	# D.7287, D.7288
	movq	-8(%rbp), %rax	# hash, tmp88
	movl	$0, %edx	#, tmp89
	divq	%rcx	# D.7288
	movq	%rdx, %rax	# tmp89, D.7288
	movl	%eax, -20(%rbp)	# D.7288, index
	.loc 1 101 0
	movq	-40(%rbp), %rax	# table, tmp91
	movq	(%rax), %rax	# table_4(D)->table, D.7289
	movl	-20(%rbp), %edx	# index, D.7288
	salq	$3, %rdx	#, D.7288
	addq	%rdx, %rax	# D.7288, D.7289
	movq	(%rax), %rax	# *_15, tmp92
	movq	%rax, -16(%rbp)	# tmp92, hashp
	jmp	.L10	#
.L13:
	.loc 1 102 0
	movq	-16(%rbp), %rax	# hashp, tmp93
	movq	16(%rax), %rax	# hashp_2->hash, D.7288
	cmpq	-8(%rbp), %rax	# hash, D.7288
	jne	.L11	#,
	.loc 1 103 0
	movq	-40(%rbp), %rax	# table, tmp94
	movq	32(%rax), %rax	# table_4(D)->comp, D.7290
	movq	-16(%rbp), %rdx	# hashp, tmp95
	movq	8(%rdx), %rdx	# hashp_2->key, D.7291
	movq	-48(%rbp), %rcx	# key, tmp96
	movq	%rcx, %rsi	# tmp96,
	movq	%rdx, %rdi	# D.7291,
	call	*%rax	# D.7290
	testb	%al, %al	# D.7292
	je	.L11	#,
	.loc 1 104 0
	movq	-16(%rbp), %rax	# hashp, D.7285
	jmp	.L12	#
.L11:
	.loc 1 101 0
	movq	-16(%rbp), %rax	# hashp, tmp97
	movq	(%rax), %rax	# hashp_2->next, tmp98
	movq	%rax, -16(%rbp)	# tmp98, hashp
.L10:
	.loc 1 101 0 is_stmt 0 discriminator 1
	cmpq	$0, -16(%rbp)	#, hashp
	jne	.L13	#,
	.loc 1 106 0 is_stmt 1
	cmpl	$0, -52(%rbp)	#, create
	jne	.L14	#,
	.loc 1 107 0
	movl	$0, %eax	#, D.7285
	jmp	.L12	#
.L14:
	.loc 1 109 0
	movq	-40(%rbp), %rax	# table, tmp99
	movq	16(%rax), %rax	# table_4(D)->newfunc, D.7293
	movq	-48(%rbp), %rdx	# key, tmp100
	movq	-40(%rbp), %rcx	# table, tmp101
	movq	%rcx, %rsi	# tmp101,
	movl	$0, %edi	#,
	call	*%rax	# D.7293
	movq	%rax, -16(%rbp)	# tmp102, hashp
	.loc 1 110 0
	cmpq	$0, -16(%rbp)	#, hashp
	jne	.L15	#,
	.loc 1 111 0
	movl	$0, %eax	#, D.7285
	jmp	.L12	#
.L15:
	.loc 1 113 0
	cmpq	$0, -64(%rbp)	#, copy
	je	.L16	#,
	.loc 1 114 0
	movq	-40(%rbp), %rax	# table, tmp103
	leaq	40(%rax), %rcx	#, D.7294
	movq	-48(%rbp), %rdx	# key, tmp104
	movq	-64(%rbp), %rax	# copy, tmp105
	movq	%rdx, %rsi	# tmp104,
	movq	%rcx, %rdi	# D.7294,
	call	*%rax	# tmp105
	movq	%rax, -48(%rbp)	# tmp106, key
.L16:
	.loc 1 116 0
	movq	-16(%rbp), %rax	# hashp, tmp107
	movq	-48(%rbp), %rdx	# key, tmp108
	movq	%rdx, 8(%rax)	# tmp108, hashp_26->key
	.loc 1 117 0
	movq	-16(%rbp), %rax	# hashp, tmp109
	movq	-8(%rbp), %rdx	# hash, tmp110
	movq	%rdx, 16(%rax)	# tmp110, hashp_26->hash
	.loc 1 118 0
	movq	-40(%rbp), %rax	# table, tmp111
	movq	(%rax), %rax	# table_4(D)->table, D.7289
	movl	-20(%rbp), %edx	# index, D.7288
	salq	$3, %rdx	#, D.7288
	addq	%rdx, %rax	# D.7288, D.7289
	movq	(%rax), %rdx	# *_34, D.7285
	movq	-16(%rbp), %rax	# hashp, tmp112
	movq	%rdx, (%rax)	# D.7285, hashp_26->next
	.loc 1 119 0
	movq	-40(%rbp), %rax	# table, tmp113
	movq	(%rax), %rax	# table_4(D)->table, D.7289
	movl	-20(%rbp), %edx	# index, D.7288
	salq	$3, %rdx	#, D.7288
	addq	%rax, %rdx	# D.7289, D.7289
	movq	-16(%rbp), %rax	# hashp, tmp114
	movq	%rax, (%rdx)	# tmp114, *_39
	.loc 1 121 0
	movq	-16(%rbp), %rax	# hashp, D.7285
.L12:
	.loc 1 122 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	hash_lookup, .-hash_lookup
	.globl	hash_newfunc
	.type	hash_newfunc, @function
hash_newfunc:
.LFB6:
	.loc 1 131 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -8(%rbp)	# entry, entry
	movq	%rsi, -16(%rbp)	# table, table
	movq	%rdx, -24(%rbp)	# p, p
	.loc 1 132 0
	cmpq	$0, -8(%rbp)	#, entry
	jne	.L18	#,
	.loc 1 133 0
	movq	-16(%rbp), %rax	# table, tmp61
	movl	$24, %esi	#,
	movq	%rax, %rdi	# tmp61,
	call	hash_allocate	#
	movq	%rax, -8(%rbp)	# tmp62, entry
.L18:
	.loc 1 135 0
	movq	-8(%rbp), %rax	# entry, D.7296
	.loc 1 136 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	hash_newfunc, .-hash_newfunc
	.globl	hash_allocate
	.type	hash_allocate, @function
hash_allocate:
.LFB7:
	.loc 1 144 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -56(%rbp)	# table, table
	movl	%esi, -60(%rbp)	# size, size
.LBB6:
	.loc 1 145 0
	movq	-56(%rbp), %rax	# table, tmp96
	addq	$40, %rax	#, tmp95
	movq	%rax, -32(%rbp)	# tmp95, __h
.LBB7:
	movq	-32(%rbp), %rax	# __h, tmp97
	movq	%rax, -24(%rbp)	# tmp97, __o
	movl	-60(%rbp), %eax	# size, tmp98
	movl	%eax, -36(%rbp)	# tmp98, __len
	movq	-24(%rbp), %rax	# __o, tmp99
	movq	32(%rax), %rax	# __o_3->chunk_limit, D.7297
	movq	%rax, %rdx	# D.7297, D.7298
	movq	-24(%rbp), %rax	# __o, tmp100
	movq	24(%rax), %rax	# __o_3->next_free, D.7297
	subq	%rax, %rdx	# D.7298, D.7298
	movl	-36(%rbp), %eax	# __len, tmp101
	cltq
	cmpq	%rax, %rdx	# D.7298, D.7298
	jge	.L21	#,
	.loc 1 145 0 is_stmt 0 discriminator 1
	movl	-36(%rbp), %edx	# __len, tmp102
	movq	-24(%rbp), %rax	# __o, tmp103
	movl	%edx, %esi	# tmp102,
	movq	%rax, %rdi	# tmp103,
	call	_obstack_newchunk	#
.L21:
	.loc 1 145 0 discriminator 2
	movq	-24(%rbp), %rax	# __o, tmp104
	movq	24(%rax), %rdx	# __o_3->next_free, D.7297
	movl	-36(%rbp), %eax	# __len, tmp105
	cltq
	addq	%rax, %rdx	# D.7299, D.7297
	movq	-24(%rbp), %rax	# __o, tmp106
	movq	%rdx, 24(%rax)	# D.7297, __o_3->next_free
.LBE7:
.LBB8:
	movq	-32(%rbp), %rax	# __h, tmp107
	movq	%rax, -16(%rbp)	# tmp107, __o1
	movq	-16(%rbp), %rax	# __o1, tmp108
	movq	16(%rax), %rax	# __o1_15->object_base, tmp109
	movq	%rax, -8(%rbp)	# tmp109, value
	movq	-16(%rbp), %rax	# __o1, tmp110
	movq	24(%rax), %rax	# __o1_15->next_free, D.7297
	cmpq	-8(%rbp), %rax	# value, D.7297
	jne	.L22	#,
	.loc 1 145 0 discriminator 1
	movq	-16(%rbp), %rax	# __o1, tmp111
	movzbl	80(%rax), %edx	# __o1_15->maybe_empty_object, tmp114
	orl	$2, %edx	#, tmp115
	movb	%dl, 80(%rax)	# tmp115, __o1_15->maybe_empty_object
.L22:
	.loc 1 145 0 discriminator 2
	movq	-16(%rbp), %rax	# __o1, tmp116
	movq	24(%rax), %rax	# __o1_15->next_free, D.7297
	movq	%rax, %rdx	# D.7297, D.7298
	movq	-16(%rbp), %rax	# __o1, tmp117
	movl	48(%rax), %eax	# __o1_15->alignment_mask, D.7300
	cltq
	addq	%rax, %rdx	# D.7298, D.7298
	movq	-16(%rbp), %rax	# __o1, tmp118
	movl	48(%rax), %eax	# __o1_15->alignment_mask, D.7300
	notl	%eax	# D.7300
	cltq
	andq	%rdx, %rax	# D.7298, D.7298
	movq	%rax, %rdx	# D.7298, D.7297
	movq	-16(%rbp), %rax	# __o1, tmp119
	movq	%rdx, 24(%rax)	# D.7297, __o1_15->next_free
	movq	-16(%rbp), %rax	# __o1, tmp120
	movq	24(%rax), %rax	# __o1_15->next_free, D.7297
	movq	%rax, %rdx	# D.7297, D.7298
	movq	-16(%rbp), %rax	# __o1, tmp121
	movq	8(%rax), %rax	# __o1_15->chunk, D.7301
	movq	%rdx, %rcx	# D.7298, D.7298
	subq	%rax, %rcx	# D.7298, D.7298
	movq	-16(%rbp), %rax	# __o1, tmp122
	movq	32(%rax), %rax	# __o1_15->chunk_limit, D.7297
	movq	%rax, %rdx	# D.7297, D.7298
	movq	-16(%rbp), %rax	# __o1, tmp123
	movq	8(%rax), %rax	# __o1_15->chunk, D.7301
	subq	%rax, %rdx	# D.7298, D.7298
	movq	%rdx, %rax	# D.7298, D.7298
	cmpq	%rax, %rcx	# D.7298, D.7298
	jle	.L23	#,
	.loc 1 145 0 discriminator 1
	movq	-16(%rbp), %rax	# __o1, tmp124
	movq	32(%rax), %rdx	# __o1_15->chunk_limit, D.7297
	movq	-16(%rbp), %rax	# __o1, tmp125
	movq	%rdx, 24(%rax)	# D.7297, __o1_15->next_free
.L23:
	.loc 1 145 0 discriminator 2
	movq	-16(%rbp), %rax	# __o1, tmp126
	movq	24(%rax), %rdx	# __o1_15->next_free, D.7297
	movq	-16(%rbp), %rax	# __o1, tmp127
	movq	%rdx, 16(%rax)	# D.7297, __o1_15->object_base
	movq	-8(%rbp), %rax	# value, D.7302
.LBE8:
.LBE6:
	.loc 1 146 0 is_stmt 1 discriminator 2
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	hash_allocate, .-hash_allocate
	.globl	hash_traverse
	.type	hash_traverse, @function
hash_traverse:
.LFB8:
	.loc 1 155 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# table, table
	movq	%rsi, -32(%rbp)	# func, func
	movq	%rdx, -40(%rbp)	# info, info
	.loc 1 159 0
	movl	$0, -12(%rbp)	#, i
	jmp	.L26	#
.L31:
	.loc 1 160 0
	movq	-24(%rbp), %rax	# table, tmp66
	movq	(%rax), %rax	# table_4(D)->table, D.7304
	movl	-12(%rbp), %edx	# i, D.7305
	salq	$3, %rdx	#, D.7305
	addq	%rdx, %rax	# D.7305, D.7304
	movq	(%rax), %rax	# *_9, tmp67
	movq	%rax, -8(%rbp)	# tmp67, p
	jmp	.L27	#
.L30:
	.loc 1 161 0
	movq	-40(%rbp), %rcx	# info, tmp68
	movq	-8(%rbp), %rdx	# p, tmp69
	movq	-32(%rbp), %rax	# func, tmp70
	movq	%rcx, %rsi	# tmp68,
	movq	%rdx, %rdi	# tmp69,
	call	*%rax	# tmp70
	xorl	$1, %eax	#, D.7306
	testb	%al, %al	# D.7306
	je	.L28	#,
	.loc 1 162 0
	jmp	.L25	#
.L28:
	.loc 1 160 0
	movq	-8(%rbp), %rax	# p, tmp71
	movq	(%rax), %rax	# p_2->next, tmp72
	movq	%rax, -8(%rbp)	# tmp72, p
.L27:
	.loc 1 160 0 is_stmt 0 discriminator 1
	cmpq	$0, -8(%rbp)	#, p
	jne	.L30	#,
	.loc 1 159 0 is_stmt 1
	addl	$1, -12(%rbp)	#, i
.L26:
	.loc 1 159 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# table, tmp73
	movl	8(%rax), %eax	# table_4(D)->size, D.7303
	cmpl	-12(%rbp), %eax	# i, D.7303
	ja	.L31	#,
.L25:
	.loc 1 163 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	hash_traverse, .-hash_traverse
	.globl	string_hash
	.type	string_hash, @function
string_hash:
.LFB9:
	.loc 1 170 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -40(%rbp)	# k, k
	.loc 1 176 0
	movq	-40(%rbp), %rax	# k, tmp72
	movq	%rax, -16(%rbp)	# tmp72, s
	.loc 1 177 0
	movq	$0, -8(%rbp)	#, hash
	.loc 1 178 0
	movl	$0, -20(%rbp)	#, len
	.loc 1 180 0
	jmp	.L33	#
.L34:
	.loc 1 182 0
	movzbl	-21(%rbp), %eax	# c, D.7307
	movzbl	-21(%rbp), %edx	# c, D.7307
	sall	$17, %edx	#, D.7307
	addl	%edx, %eax	# D.7307, D.7307
	cltq
	addq	%rax, -8(%rbp)	# D.7308, hash
	.loc 1 183 0
	movq	-8(%rbp), %rax	# hash, tmp73
	shrq	$2, %rax	#, D.7308
	xorq	%rax, -8(%rbp)	# D.7308, hash
	.loc 1 184 0
	addl	$1, -20(%rbp)	#, len
.L33:
	.loc 1 180 0 discriminator 1
	movq	-16(%rbp), %rax	# s, s.1
	leaq	1(%rax), %rdx	#, tmp74
	movq	%rdx, -16(%rbp)	# tmp74, s
	movzbl	(%rax), %eax	# *s.1_8, tmp75
	movb	%al, -21(%rbp)	# tmp75, c
	cmpb	$0, -21(%rbp)	#, c
	jne	.L34	#,
	.loc 1 187 0
	movl	-20(%rbp), %eax	# len, tmp76
	sall	$17, %eax	#, D.7309
	movl	%eax, %edx	# D.7309, D.7309
	movl	-20(%rbp), %eax	# len, tmp77
	addl	%edx, %eax	# D.7309, D.7309
	movl	%eax, %eax	# D.7309, D.7308
	addq	%rax, -8(%rbp)	# D.7308, hash
	.loc 1 188 0
	movq	-8(%rbp), %rax	# hash, tmp78
	shrq	$2, %rax	#, D.7308
	xorq	%rax, -8(%rbp)	# D.7308, hash
	.loc 1 190 0
	movq	-8(%rbp), %rax	# hash, D.7308
	.loc 1 191 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	string_hash, .-string_hash
	.globl	string_compare
	.type	string_compare, @function
string_compare:
.LFB10:
	.loc 1 200 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# k1, k1
	movq	%rsi, -16(%rbp)	# k2, k2
	.loc 1 201 0
	movq	-16(%rbp), %rdx	# k2, tmp62
	movq	-8(%rbp), %rax	# k1, tmp63
	movq	%rdx, %rsi	# tmp62,
	movq	%rax, %rdi	# tmp63,
	call	strcmp	#
	testl	%eax, %eax	# D.7310
	sete	%al	#, D.7311
	.loc 1 202 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	string_compare, .-string_compare
	.globl	string_copy
	.type	string_copy, @function
string_copy:
.LFB11:
	.loc 1 210 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movq	%rdi, -72(%rbp)	# memory, memory
	movq	%rsi, -80(%rbp)	# k, k
	.loc 1 212 0
	movq	-80(%rbp), %rax	# k, tmp98
	movq	%rax, -48(%rbp)	# tmp98, string
.LBB9:
	.loc 1 214 0
	movq	-72(%rbp), %rax	# memory, tmp99
	movq	%rax, -40(%rbp)	# tmp99, __h
.LBB10:
	movq	-40(%rbp), %rax	# __h, tmp100
	movq	%rax, -32(%rbp)	# tmp100, __o
	movq	-48(%rbp), %rax	# string, tmp101
	movq	%rax, %rdi	# tmp101,
	call	strlen	#
	addl	$1, %eax	#, D.7313
	movl	%eax, -52(%rbp)	# D.7313, __len
	movq	-32(%rbp), %rax	# __o, tmp102
	movq	32(%rax), %rax	# __o_5->chunk_limit, D.7314
	movq	%rax, %rdx	# D.7314, D.7315
	movq	-32(%rbp), %rax	# __o, tmp103
	movq	24(%rax), %rax	# __o_5->next_free, D.7314
	subq	%rax, %rdx	# D.7315, D.7315
	movl	-52(%rbp), %eax	# __len, tmp104
	cltq
	cmpq	%rax, %rdx	# D.7315, D.7315
	jge	.L39	#,
	.loc 1 214 0 is_stmt 0 discriminator 1
	movl	-52(%rbp), %edx	# __len, tmp105
	movq	-32(%rbp), %rax	# __o, tmp106
	movl	%edx, %esi	# tmp105,
	movq	%rax, %rdi	# tmp106,
	call	_obstack_newchunk	#
.L39:
	.loc 1 214 0 discriminator 2
	movq	-32(%rbp), %rax	# __o, tmp107
	movq	24(%rax), %rdx	# __o_5->next_free, D.7314
	movl	-52(%rbp), %eax	# __len, tmp108
	cltq
	addq	%rax, %rdx	# D.7316, D.7314
	movq	-32(%rbp), %rax	# __o, tmp109
	movq	%rdx, 24(%rax)	# D.7314, __o_5->next_free
.LBE10:
.LBB11:
	movq	-40(%rbp), %rax	# __h, tmp110
	movq	%rax, -24(%rbp)	# tmp110, __o1
	movq	-24(%rbp), %rax	# __o1, tmp111
	movq	16(%rax), %rax	# __o1_19->object_base, tmp112
	movq	%rax, -16(%rbp)	# tmp112, value
	movq	-24(%rbp), %rax	# __o1, tmp113
	movq	24(%rax), %rax	# __o1_19->next_free, D.7314
	cmpq	-16(%rbp), %rax	# value, D.7314
	jne	.L40	#,
	.loc 1 214 0 discriminator 1
	movq	-24(%rbp), %rax	# __o1, tmp114
	movzbl	80(%rax), %edx	# __o1_19->maybe_empty_object, tmp117
	orl	$2, %edx	#, tmp118
	movb	%dl, 80(%rax)	# tmp118, __o1_19->maybe_empty_object
.L40:
	.loc 1 214 0 discriminator 2
	movq	-24(%rbp), %rax	# __o1, tmp119
	movq	24(%rax), %rax	# __o1_19->next_free, D.7314
	movq	%rax, %rdx	# D.7314, D.7315
	movq	-24(%rbp), %rax	# __o1, tmp120
	movl	48(%rax), %eax	# __o1_19->alignment_mask, D.7317
	cltq
	addq	%rax, %rdx	# D.7315, D.7315
	movq	-24(%rbp), %rax	# __o1, tmp121
	movl	48(%rax), %eax	# __o1_19->alignment_mask, D.7317
	notl	%eax	# D.7317
	cltq
	andq	%rdx, %rax	# D.7315, D.7315
	movq	%rax, %rdx	# D.7315, D.7314
	movq	-24(%rbp), %rax	# __o1, tmp122
	movq	%rdx, 24(%rax)	# D.7314, __o1_19->next_free
	movq	-24(%rbp), %rax	# __o1, tmp123
	movq	24(%rax), %rax	# __o1_19->next_free, D.7314
	movq	%rax, %rdx	# D.7314, D.7315
	movq	-24(%rbp), %rax	# __o1, tmp124
	movq	8(%rax), %rax	# __o1_19->chunk, D.7318
	movq	%rdx, %rcx	# D.7315, D.7315
	subq	%rax, %rcx	# D.7315, D.7315
	movq	-24(%rbp), %rax	# __o1, tmp125
	movq	32(%rax), %rax	# __o1_19->chunk_limit, D.7314
	movq	%rax, %rdx	# D.7314, D.7315
	movq	-24(%rbp), %rax	# __o1, tmp126
	movq	8(%rax), %rax	# __o1_19->chunk, D.7318
	subq	%rax, %rdx	# D.7315, D.7315
	movq	%rdx, %rax	# D.7315, D.7315
	cmpq	%rax, %rcx	# D.7315, D.7315
	jle	.L41	#,
	.loc 1 214 0 discriminator 1
	movq	-24(%rbp), %rax	# __o1, tmp127
	movq	32(%rax), %rdx	# __o1_19->chunk_limit, D.7314
	movq	-24(%rbp), %rax	# __o1, tmp128
	movq	%rdx, 24(%rax)	# D.7314, __o1_19->next_free
.L41:
	.loc 1 214 0 discriminator 2
	movq	-24(%rbp), %rax	# __o1, tmp129
	movq	24(%rax), %rdx	# __o1_19->next_free, D.7314
	movq	-24(%rbp), %rax	# __o1, tmp130
	movq	%rdx, 16(%rax)	# D.7314, __o1_19->object_base
	movq	-16(%rbp), %rax	# value, D.7319
.LBE11:
.LBE9:
	movq	%rax, -8(%rbp)	# new.2, new
	.loc 1 215 0 is_stmt 1 discriminator 2
	movq	-48(%rbp), %rdx	# string, tmp131
	movq	-8(%rbp), %rax	# new, tmp132
	movq	%rdx, %rsi	# tmp131,
	movq	%rax, %rdi	# tmp132,
	call	strcpy	#
	.loc 1 217 0 discriminator 2
	movq	-8(%rbp), %rax	# new, D.7320
	.loc 1 218 0 discriminator 2
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	string_copy, .-string_copy
.Letext0:
	.file 2 "obstack.h"
	.file 3 "hash.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x7f8
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF62
	.byte	0x1
	.long	.LASF63
	.long	.LASF64
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF0
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF1
	.uleb128 0x4
	.byte	0x8
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF2
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF3
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF4
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF5
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF6
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.long	.LASF7
	.uleb128 0x5
	.byte	0x8
	.long	0x74
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF8
	.uleb128 0x6
	.long	0x74
	.long	0x8b
	.uleb128 0x7
	.long	0x34
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF9
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF10
	.uleb128 0x8
	.long	.LASF14
	.byte	0x18
	.byte	0x2
	.byte	0xa1
	.long	0xca
	.uleb128 0x9
	.long	.LASF11
	.byte	0x2
	.byte	0xa3
	.long	0x6e
	.byte	0
	.uleb128 0x9
	.long	.LASF12
	.byte	0x2
	.byte	0xa4
	.long	0xca
	.byte	0x8
	.uleb128 0x9
	.long	.LASF13
	.byte	0x2
	.byte	0xa5
	.long	0x7b
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.byte	0x8
	.long	0x99
	.uleb128 0x8
	.long	.LASF15
	.byte	0x58
	.byte	0x2
	.byte	0xa8
	.long	0x182
	.uleb128 0x9
	.long	.LASF16
	.byte	0x2
	.byte	0xaa
	.long	0x44
	.byte	0
	.uleb128 0x9
	.long	.LASF17
	.byte	0x2
	.byte	0xab
	.long	0xca
	.byte	0x8
	.uleb128 0x9
	.long	.LASF18
	.byte	0x2
	.byte	0xac
	.long	0x6e
	.byte	0x10
	.uleb128 0x9
	.long	.LASF19
	.byte	0x2
	.byte	0xad
	.long	0x6e
	.byte	0x18
	.uleb128 0x9
	.long	.LASF20
	.byte	0x2
	.byte	0xae
	.long	0x6e
	.byte	0x20
	.uleb128 0x9
	.long	.LASF21
	.byte	0x2
	.byte	0xaf
	.long	0x44
	.byte	0x28
	.uleb128 0x9
	.long	.LASF22
	.byte	0x2
	.byte	0xb0
	.long	0x2d
	.byte	0x30
	.uleb128 0x9
	.long	.LASF23
	.byte	0x2
	.byte	0xb5
	.long	0x196
	.byte	0x38
	.uleb128 0x9
	.long	.LASF24
	.byte	0x2
	.byte	0xb6
	.long	0x1ac
	.byte	0x40
	.uleb128 0x9
	.long	.LASF25
	.byte	0x2
	.byte	0xb7
	.long	0x42
	.byte	0x48
	.uleb128 0xa
	.long	.LASF26
	.byte	0x2
	.byte	0xbd
	.long	0x3b
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x50
	.uleb128 0xa
	.long	.LASF27
	.byte	0x2
	.byte	0xbe
	.long	0x3b
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x50
	.uleb128 0xa
	.long	.LASF28
	.byte	0x2
	.byte	0xc2
	.long	0x3b
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x50
	.byte	0
	.uleb128 0xb
	.long	0xca
	.long	0x196
	.uleb128 0xc
	.long	0x42
	.uleb128 0xc
	.long	0x44
	.byte	0
	.uleb128 0x5
	.byte	0x8
	.long	0x182
	.uleb128 0xd
	.long	0x1ac
	.uleb128 0xc
	.long	0x42
	.uleb128 0xc
	.long	0xca
	.byte	0
	.uleb128 0x5
	.byte	0x8
	.long	0x19c
	.uleb128 0xe
	.long	.LASF65
	.byte	0x3
	.byte	0x18
	.long	0x42
	.uleb128 0x8
	.long	.LASF29
	.byte	0x18
	.byte	0x3
	.byte	0x1f
	.long	0x1ee
	.uleb128 0x9
	.long	.LASF30
	.byte	0x3
	.byte	0x22
	.long	0x1ee
	.byte	0
	.uleb128 0xf
	.string	"key"
	.byte	0x3
	.byte	0x24
	.long	0x1b2
	.byte	0x8
	.uleb128 0x9
	.long	.LASF31
	.byte	0x3
	.byte	0x27
	.long	0x4b
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.byte	0x8
	.long	0x1bd
	.uleb128 0x8
	.long	.LASF32
	.byte	0x80
	.byte	0x3
	.byte	0x2c
	.long	0x249
	.uleb128 0x9
	.long	.LASF33
	.byte	0x3
	.byte	0x2f
	.long	0x249
	.byte	0
	.uleb128 0x9
	.long	.LASF34
	.byte	0x3
	.byte	0x31
	.long	0x3b
	.byte	0x8
	.uleb128 0x9
	.long	.LASF35
	.byte	0x3
	.byte	0x39
	.long	0x26e
	.byte	0x10
	.uleb128 0x9
	.long	.LASF31
	.byte	0x3
	.byte	0x3d
	.long	0x283
	.byte	0x18
	.uleb128 0x9
	.long	.LASF36
	.byte	0x3
	.byte	0x3f
	.long	0x2a4
	.byte	0x20
	.uleb128 0x9
	.long	.LASF37
	.byte	0x3
	.byte	0x41
	.long	0xd0
	.byte	0x28
	.byte	0
	.uleb128 0x5
	.byte	0x8
	.long	0x1ee
	.uleb128 0xb
	.long	0x1ee
	.long	0x268
	.uleb128 0xc
	.long	0x1ee
	.uleb128 0xc
	.long	0x268
	.uleb128 0xc
	.long	0x1b2
	.byte	0
	.uleb128 0x5
	.byte	0x8
	.long	0x1f4
	.uleb128 0x5
	.byte	0x8
	.long	0x24f
	.uleb128 0xb
	.long	0x4b
	.long	0x283
	.uleb128 0xc
	.long	0x1b2
	.byte	0
	.uleb128 0x5
	.byte	0x8
	.long	0x274
	.uleb128 0xb
	.long	0x29d
	.long	0x29d
	.uleb128 0xc
	.long	0x1b2
	.uleb128 0xc
	.long	0x1b2
	.byte	0
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.long	.LASF38
	.uleb128 0x5
	.byte	0x8
	.long	0x289
	.uleb128 0x10
	.long	.LASF43
	.byte	0x1
	.byte	0x26
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x3a1
	.uleb128 0x11
	.long	.LASF33
	.byte	0x1
	.byte	0x27
	.long	0x268
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x11
	.long	.LASF35
	.byte	0x1
	.byte	0x28
	.long	0x26e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x11
	.long	.LASF31
	.byte	0x1
	.byte	0x2b
	.long	0x283
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x11
	.long	.LASF36
	.byte	0x1
	.byte	0x2c
	.long	0x2a4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x11
	.long	.LASF34
	.byte	0x1
	.byte	0x2d
	.long	0x3b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x12
	.long	.LASF39
	.byte	0x1
	.byte	0x2f
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x13
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x14
	.string	"__h"
	.byte	0x1
	.byte	0x34
	.long	0x3a1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x15
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.long	0x371
	.uleb128 0x14
	.string	"__o"
	.byte	0x1
	.byte	0x34
	.long	0x3a1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x12
	.long	.LASF40
	.byte	0x1
	.byte	0x34
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.uleb128 0x13
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.uleb128 0x12
	.long	.LASF41
	.byte	0x1
	.byte	0x34
	.long	0x3a1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x12
	.long	.LASF42
	.byte	0x1
	.byte	0x34
	.long	0x42
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x8
	.long	0xd0
	.uleb128 0x10
	.long	.LASF44
	.byte	0x1
	.byte	0x3f
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x3fd
	.uleb128 0x11
	.long	.LASF33
	.byte	0x1
	.byte	0x40
	.long	0x268
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x11
	.long	.LASF35
	.byte	0x1
	.byte	0x41
	.long	0x26e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x11
	.long	.LASF31
	.byte	0x1
	.byte	0x44
	.long	0x283
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x11
	.long	.LASF36
	.byte	0x1
	.byte	0x45
	.long	0x2a4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x10
	.long	.LASF45
	.byte	0x1
	.byte	0x4d
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x457
	.uleb128 0x11
	.long	.LASF33
	.byte	0x1
	.byte	0x4e
	.long	0x268
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x13
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.uleb128 0x14
	.string	"__o"
	.byte	0x1
	.byte	0x50
	.long	0x3a1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x12
	.long	.LASF46
	.byte	0x1
	.byte	0x50
	.long	0x42
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x16
	.long	.LASF51
	.byte	0x1
	.byte	0x57
	.long	0x1ee
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x4dd
	.uleb128 0x11
	.long	.LASF33
	.byte	0x1
	.byte	0x58
	.long	0x268
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x17
	.string	"key"
	.byte	0x1
	.byte	0x59
	.long	0x1b2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x11
	.long	.LASF47
	.byte	0x1
	.byte	0x5a
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x11
	.long	.LASF48
	.byte	0x1
	.byte	0x5b
	.long	0x4f1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x12
	.long	.LASF31
	.byte	0x1
	.byte	0x5e
	.long	0x4b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x12
	.long	.LASF49
	.byte	0x1
	.byte	0x5f
	.long	0x1ee
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x12
	.long	.LASF50
	.byte	0x1
	.byte	0x60
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0xb
	.long	0x1b2
	.long	0x4f1
	.uleb128 0xc
	.long	0x3a1
	.uleb128 0xc
	.long	0x1b2
	.byte	0
	.uleb128 0x5
	.byte	0x8
	.long	0x4dd
	.uleb128 0x16
	.long	.LASF52
	.byte	0x1
	.byte	0x7f
	.long	0x1ee
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x541
	.uleb128 0x11
	.long	.LASF53
	.byte	0x1
	.byte	0x80
	.long	0x1ee
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x11
	.long	.LASF33
	.byte	0x1
	.byte	0x81
	.long	0x268
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x17
	.string	"p"
	.byte	0x1
	.byte	0x82
	.long	0x1b2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x16
	.long	.LASF54
	.byte	0x1
	.byte	0x8d
	.long	0x42
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x601
	.uleb128 0x11
	.long	.LASF33
	.byte	0x1
	.byte	0x8e
	.long	0x268
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x11
	.long	.LASF34
	.byte	0x1
	.byte	0x8f
	.long	0x3b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x13
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.uleb128 0x14
	.string	"__h"
	.byte	0x1
	.byte	0x91
	.long	0x3a1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x15
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.long	0x5d1
	.uleb128 0x14
	.string	"__o"
	.byte	0x1
	.byte	0x91
	.long	0x3a1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x12
	.long	.LASF40
	.byte	0x1
	.byte	0x91
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.uleb128 0x13
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.uleb128 0x12
	.long	.LASF41
	.byte	0x1
	.byte	0x91
	.long	0x3a1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x12
	.long	.LASF42
	.byte	0x1
	.byte	0x91
	.long	0x42
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.long	.LASF55
	.byte	0x1
	.byte	0x97
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x661
	.uleb128 0x11
	.long	.LASF33
	.byte	0x1
	.byte	0x98
	.long	0x268
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x11
	.long	.LASF56
	.byte	0x1
	.byte	0x99
	.long	0x675
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x11
	.long	.LASF57
	.byte	0x1
	.byte	0x9a
	.long	0x42
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x14
	.string	"i"
	.byte	0x1
	.byte	0x9c
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x14
	.string	"p"
	.byte	0x1
	.byte	0x9d
	.long	0x1ee
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xb
	.long	0x29d
	.long	0x675
	.uleb128 0xc
	.long	0x1ee
	.uleb128 0xc
	.long	0x1b2
	.byte	0
	.uleb128 0x5
	.byte	0x8
	.long	0x661
	.uleb128 0x18
	.long	.LASF58
	.byte	0x1
	.byte	0xa8
	.long	0x4b
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x6dd
	.uleb128 0x17
	.string	"k"
	.byte	0x1
	.byte	0xa9
	.long	0x1b2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x14
	.string	"s"
	.byte	0x1
	.byte	0xab
	.long	0x6dd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x12
	.long	.LASF31
	.byte	0x1
	.byte	0xac
	.long	0x4b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x14
	.string	"c"
	.byte	0x1
	.byte	0xad
	.long	0x52
	.uleb128 0x2
	.byte	0x91
	.sleb128 -37
	.uleb128 0x14
	.string	"len"
	.byte	0x1
	.byte	0xae
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x5
	.byte	0x8
	.long	0x6e3
	.uleb128 0x19
	.long	0x52
	.uleb128 0x16
	.long	.LASF59
	.byte	0x1
	.byte	0xc5
	.long	0x29d
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x724
	.uleb128 0x17
	.string	"k1"
	.byte	0x1
	.byte	0xc6
	.long	0x1b2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x17
	.string	"k2"
	.byte	0x1
	.byte	0xc7
	.long	0x1b2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x1a
	.long	.LASF60
	.byte	0x1
	.byte	0xcf
	.long	0x1b2
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x11
	.long	.LASF37
	.byte	0x1
	.byte	0xd0
	.long	0x3a1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x17
	.string	"k"
	.byte	0x1
	.byte	0xd1
	.long	0x1b2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x14
	.string	"new"
	.byte	0x1
	.byte	0xd3
	.long	0x6e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x12
	.long	.LASF61
	.byte	0x1
	.byte	0xd4
	.long	0x6e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x13
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.uleb128 0x14
	.string	"__h"
	.byte	0x1
	.byte	0xd6
	.long	0x3a1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x15
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.long	0x7cb
	.uleb128 0x14
	.string	"__o"
	.byte	0x1
	.byte	0xd6
	.long	0x3a1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x12
	.long	.LASF40
	.byte	0x1
	.byte	0xd6
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.byte	0
	.uleb128 0x13
	.quad	.LBB11
	.quad	.LBE11-.LBB11
	.uleb128 0x12
	.long	.LASF41
	.byte	0x1
	.byte	0xd6
	.long	0x3a1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x12
	.long	.LASF42
	.byte	0x1
	.byte	0xd6
	.long	0x42
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xb
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x17
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
.LASF11:
	.string	"limit"
.LASF36:
	.string	"comp"
.LASF24:
	.string	"freefun"
.LASF62:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF21:
	.string	"temp"
.LASF7:
	.string	"short int"
.LASF27:
	.string	"maybe_empty_object"
.LASF0:
	.string	"sizetype"
.LASF41:
	.string	"__o1"
.LASF42:
	.string	"value"
.LASF13:
	.string	"contents"
.LASF20:
	.string	"chunk_limit"
.LASF50:
	.string	"index"
.LASF33:
	.string	"table"
.LASF60:
	.string	"string_copy"
.LASF55:
	.string	"hash_traverse"
.LASF37:
	.string	"memory"
.LASF45:
	.string	"hash_table_free"
.LASF18:
	.string	"object_base"
.LASF64:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/403.gcc/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF28:
	.string	"alloc_failed"
.LASF10:
	.string	"long long int"
.LASF2:
	.string	"long int"
.LASF61:
	.string	"string"
.LASF59:
	.string	"string_compare"
.LASF35:
	.string	"newfunc"
.LASF25:
	.string	"extra_arg"
.LASF65:
	.string	"hash_table_key"
.LASF47:
	.string	"create"
.LASF53:
	.string	"entry"
.LASF4:
	.string	"unsigned char"
.LASF43:
	.string	"hash_table_init_n"
.LASF23:
	.string	"chunkfun"
.LASF31:
	.string	"hash"
.LASF12:
	.string	"prev"
.LASF6:
	.string	"signed char"
.LASF9:
	.string	"long long unsigned int"
.LASF14:
	.string	"_obstack_chunk"
.LASF19:
	.string	"next_free"
.LASF1:
	.string	"unsigned int"
.LASF49:
	.string	"hashp"
.LASF26:
	.string	"use_extra_arg"
.LASF22:
	.string	"alignment_mask"
.LASF15:
	.string	"obstack"
.LASF39:
	.string	"alloc"
.LASF5:
	.string	"short unsigned int"
.LASF63:
	.string	"hash.c"
.LASF8:
	.string	"char"
.LASF56:
	.string	"func"
.LASF44:
	.string	"hash_table_init"
.LASF38:
	.string	"_Bool"
.LASF54:
	.string	"hash_allocate"
.LASF29:
	.string	"hash_entry"
.LASF46:
	.string	"__obj"
.LASF51:
	.string	"hash_lookup"
.LASF3:
	.string	"long unsigned int"
.LASF34:
	.string	"size"
.LASF57:
	.string	"info"
.LASF16:
	.string	"chunk_size"
.LASF48:
	.string	"copy"
.LASF40:
	.string	"__len"
.LASF52:
	.string	"hash_newfunc"
.LASF58:
	.string	"string_hash"
.LASF17:
	.string	"chunk"
.LASF30:
	.string	"next"
.LASF32:
	.string	"hash_table"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
