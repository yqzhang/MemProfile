	.file	"hashtable.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I . -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 hashtable.c -mtune=generic -march=x86-64 -g
# -fverbose-asm -fno-strict-aliasing -fstack-protector -Wformat
# -Wformat-security
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
	.globl	gcc_obstack_init
	.type	gcc_obstack_init, @function
gcc_obstack_init:
.LFB2:
	.file 1 "hashtable.c"
	.loc 1 52 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# obstack, obstack
	.loc 1 53 0
	movq	-8(%rbp), %rax	# obstack, tmp59
	movl	$free, %r8d	#,
	movl	$xmalloc, %ecx	#,
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp59,
	call	_obstack_begin	#
	.loc 1 56 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	gcc_obstack_init, .-gcc_obstack_init
	.type	calc_hash, @function
calc_hash:
.LFB3:
	.loc 1 64 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# str, str
	movl	%esi, -28(%rbp)	# len, len
	.loc 1 65 0
	movl	-28(%rbp), %eax	# len, tmp67
	movl	%eax, -8(%rbp)	# tmp67, n
	.loc 1 66 0
	movl	$0, -4(%rbp)	#, r
	.loc 1 69 0
	jmp	.L3	#
.L4:
	.loc 1 70 0
	movl	-4(%rbp), %eax	# r, tmp68
	imull	$67, %eax, %ecx	#, tmp68, D.7179
	movq	-24(%rbp), %rax	# str, str.0
	leaq	1(%rax), %rdx	#, tmp69
	movq	%rdx, -24(%rbp)	# tmp69, str
	movzbl	(%rax), %eax	# *str.0_11, D.7180
	movzbl	%al, %eax	# D.7180, D.7179
	addl	%ecx, %eax	# D.7179, D.7179
	subl	$113, %eax	#, tmp70
	movl	%eax, -4(%rbp)	# tmp70, r
.L3:
	.loc 1 69 0 discriminator 1
	movl	-8(%rbp), %eax	# n, n.1
	leal	-1(%rax), %edx	#, tmp71
	movl	%edx, -8(%rbp)	# tmp71, n
	testl	%eax, %eax	# n.1
	jne	.L4	#,
	.loc 1 72 0
	movl	-28(%rbp), %eax	# len, tmp72
	movl	-4(%rbp), %edx	# r, tmp73
	addl	%edx, %eax	# tmp73, D.7179
	.loc 1 74 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	calc_hash, .-calc_hash
	.globl	ht_create
	.type	ht_create, @function
ht_create:
.LFB4:
	.loc 1 81 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	%edi, -20(%rbp)	# order, order
	.loc 1 82 0
	movl	-20(%rbp), %eax	# order, order.2
	movl	$1, %edx	#, tmp66
	movl	%eax, %ecx	# order.2, tmp76
	sall	%cl, %edx	# tmp76, D.7181
	movl	%edx, %eax	# D.7181, D.7181
	movl	%eax, -12(%rbp)	# D.7181, nslots
	.loc 1 85 0
	movl	$128, %edi	#,
	call	xmalloc	#
	movq	%rax, -8(%rbp)	# tmp67, table
	.loc 1 86 0
	movq	-8(%rbp), %rax	# table, tmp68
	movl	$128, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp68,
	call	memset	#
	.loc 1 89 0
	movq	-8(%rbp), %rax	# table, D.7182
	movq	%rax, %rdi	# D.7182,
	call	gcc_obstack_init	#
	.loc 1 90 0
	movq	-8(%rbp), %rax	# table, tmp69
	movl	$0, 48(%rax)	#, table_5->stack.alignment_mask
	.loc 1 92 0
	movl	-12(%rbp), %eax	# nslots, D.7183
	movl	$8, %esi	#,
	movq	%rax, %rdi	# D.7183,
	call	xcalloc	#
	movq	%rax, %rdx	# tmp70, D.7184
	movq	-8(%rbp), %rax	# table, tmp71
	movq	%rdx, 88(%rax)	# D.7184, table_5->entries
	.loc 1 93 0
	movq	-8(%rbp), %rax	# table, tmp72
	movl	-12(%rbp), %edx	# nslots, tmp73
	movl	%edx, 104(%rax)	# tmp73, table_5->nslots
	.loc 1 94 0
	movq	-8(%rbp), %rax	# table, D.7185
	.loc 1 95 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	ht_create, .-ht_create
	.globl	ht_destroy
	.type	ht_destroy, @function
ht_destroy:
.LFB5:
	.loc 1 102 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# table, table
.LBB2:
	.loc 1 103 0
	movq	-24(%rbp), %rax	# table, tmp63
	movq	%rax, -16(%rbp)	# tmp63, __o
	movq	$0, -8(%rbp)	#, __obj
	movq	-16(%rbp), %rax	# __o, tmp64
	movq	8(%rax), %rax	# __o_2->chunk, D.7186
	cmpq	-8(%rbp), %rax	# __obj, D.7186
	jae	.L9	#,
	.loc 1 103 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# __o, tmp65
	movq	32(%rax), %rax	# __o_2->chunk_limit, D.7187
	cmpq	-8(%rbp), %rax	# __obj, D.7187
	jbe	.L9	#,
	movq	-16(%rbp), %rax	# __o, tmp66
	movq	-8(%rbp), %rdx	# __obj, tmp67
	movq	%rdx, 16(%rax)	# tmp67, __o_2->object_base
	movq	-16(%rbp), %rax	# __o, tmp68
	movq	16(%rax), %rdx	# __o_2->object_base, D.7187
	movq	-16(%rbp), %rax	# __o, tmp69
	movq	%rdx, 24(%rax)	# D.7187, __o_2->next_free
	jmp	.L10	#
.L9:
	.loc 1 103 0 discriminator 2
	movq	-8(%rbp), %rdx	# __obj, tmp70
	movq	-16(%rbp), %rax	# __o, tmp71
	movq	%rdx, %rsi	# tmp70,
	movq	%rax, %rdi	# tmp71,
	call	obstack_free	#
.L10:
.LBE2:
	.loc 1 104 0 is_stmt 1
	movq	-24(%rbp), %rax	# table, tmp72
	movq	88(%rax), %rax	# table_1(D)->entries, D.7188
	movq	%rax, %rdi	# D.7188,
	call	free	#
	.loc 1 105 0
	movq	-24(%rbp), %rax	# table, tmp73
	movq	%rax, %rdi	# tmp73,
	call	free	#
	.loc 1 106 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	ht_destroy, .-ht_destroy
	.globl	ht_lookup
	.type	ht_lookup, @function
ht_lookup:
.LFB6:
	.loc 1 122 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$112, %rsp	#,
	movq	%rdi, -88(%rbp)	# table, table
	movq	%rsi, -96(%rbp)	# str, str
	movl	%edx, -100(%rbp)	# len, len
	movl	%ecx, -104(%rbp)	# insert, insert
	.loc 1 123 0
	movl	-100(%rbp), %edx	# len, tmp132
	movq	-96(%rbp), %rax	# str, tmp133
	movl	%edx, %esi	# tmp132,
	movq	%rax, %rdi	# tmp133,
	call	calc_hash	#
	movl	%eax, -76(%rbp)	# tmp134, hash
	.loc 1 129 0
	movq	-88(%rbp), %rax	# table, tmp135
	movl	104(%rax), %eax	# table_6(D)->nslots, D.7190
	subl	$1, %eax	#, D.7190
	movl	%eax, %eax	# D.7190, tmp221
	movq	%rax, -64(%rbp)	# tmp221, sizemask
	.loc 1 130 0
	movq	-64(%rbp), %rax	# sizemask, tmp136
	andl	-76(%rbp), %eax	# hash, tmp138
	movl	%eax, -80(%rbp)	# tmp138, index
	.loc 1 134 0
	movl	-76(%rbp), %edx	# hash, tmp139
	movl	%edx, %eax	# tmp139, tmp140
	sall	$4, %eax	#, tmp141
	addl	%eax, %edx	# tmp140, D.7190
	movq	-64(%rbp), %rax	# sizemask, tmp142
	andl	%edx, %eax	# D.7190, D.7190
	orl	$1, %eax	#, tmp143
	movl	%eax, -72(%rbp)	# tmp143, hash2
	.loc 1 135 0
	movq	-88(%rbp), %rax	# table, tmp144
	movl	120(%rax), %eax	# table_6(D)->searches, D.7190
	leal	1(%rax), %edx	#, D.7190
	movq	-88(%rbp), %rax	# table, tmp145
	movl	%edx, 120(%rax)	# D.7190, table_6(D)->searches
.L18:
	.loc 1 139 0
	movq	-88(%rbp), %rax	# table, tmp146
	movq	88(%rax), %rax	# table_6(D)->entries, D.7191
	movl	-80(%rbp), %edx	# index, D.7192
	salq	$3, %rdx	#, D.7192
	addq	%rdx, %rax	# D.7192, D.7191
	movq	(%rax), %rax	# *_21, tmp147
	movq	%rax, -56(%rbp)	# tmp147, node
	.loc 1 141 0
	cmpq	$0, -56(%rbp)	#, node
	jne	.L12	#,
	.loc 1 142 0
	nop
	.loc 1 157 0
	cmpl	$0, -104(%rbp)	#, insert
	jne	.L19	#,
	jmp	.L26	#
.L12:
	.loc 1 144 0
	movq	-56(%rbp), %rax	# node, tmp148
	movl	(%rax), %eax	# node_22->len, D.7190
	cmpl	-100(%rbp), %eax	# len, D.7190
	jne	.L14	#,
	.loc 1 144 0 is_stmt 0 discriminator 1
	movl	-100(%rbp), %edx	# len, D.7192
	movq	-56(%rbp), %rax	# node, tmp149
	movq	8(%rax), %rax	# node_22->str, D.7200
	movq	-96(%rbp), %rcx	# str, tmp150
	movq	%rcx, %rsi	# tmp150,
	movq	%rax, %rdi	# D.7200,
	call	memcmp	#
	testl	%eax, %eax	# D.7196
	jne	.L14	#,
	.loc 1 146 0 is_stmt 1
	cmpl	$2, -104(%rbp)	#, insert
	jne	.L15	#,
.LBB3:
	.loc 1 149 0
	movq	-88(%rbp), %rax	# table, tmp151
	movq	%rax, -16(%rbp)	# tmp151, __o
	movq	-96(%rbp), %rax	# str, tmp152
	movq	%rax, -8(%rbp)	# tmp152, __obj
	movq	-16(%rbp), %rax	# __o, tmp153
	movq	8(%rax), %rax	# __o_86->chunk, D.7198
	cmpq	-8(%rbp), %rax	# __obj, D.7198
	jae	.L16	#,
	.loc 1 149 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# __o, tmp154
	movq	32(%rax), %rax	# __o_86->chunk_limit, D.7194
	cmpq	-8(%rbp), %rax	# __obj, D.7194
	jbe	.L16	#,
	movq	-16(%rbp), %rax	# __o, tmp155
	movq	-8(%rbp), %rdx	# __obj, tmp156
	movq	%rdx, 16(%rax)	# tmp156, __o_86->object_base
	movq	-16(%rbp), %rax	# __o, tmp157
	movq	16(%rax), %rdx	# __o_86->object_base, D.7194
	movq	-16(%rbp), %rax	# __o, tmp158
	movq	%rdx, 24(%rax)	# D.7194, __o_86->next_free
	jmp	.L15	#
.L16:
	.loc 1 149 0 discriminator 2
	movq	-8(%rbp), %rdx	# __obj, tmp159
	movq	-16(%rbp), %rax	# __o, tmp160
	movq	%rdx, %rsi	# tmp159,
	movq	%rax, %rdi	# tmp160,
	call	obstack_free	#
.L15:
.LBE3:
	.loc 1 150 0 is_stmt 1
	movq	-56(%rbp), %rax	# node, D.7189
	jmp	.L17	#
.L14:
	.loc 1 153 0
	movl	-72(%rbp), %eax	# hash2, tmp161
	movl	-80(%rbp), %edx	# index, tmp162
	addl	%eax, %edx	# tmp161, D.7190
	movq	-64(%rbp), %rax	# sizemask, tmp163
	andl	%edx, %eax	# D.7190, tmp164
	movl	%eax, -80(%rbp)	# tmp164, index
	.loc 1 154 0
	movq	-88(%rbp), %rax	# table, tmp165
	movl	124(%rax), %eax	# table_6(D)->collisions, D.7190
	leal	1(%rax), %edx	#, D.7190
	movq	-88(%rbp), %rax	# table, tmp166
	movl	%edx, 124(%rax)	# D.7190, table_6(D)->collisions
	.loc 1 155 0
	jmp	.L18	#
.L26:
	.loc 1 158 0
	movl	$0, %eax	#, D.7189
	jmp	.L17	#
.L19:
	.loc 1 160 0
	movq	-88(%rbp), %rax	# table, tmp167
	movq	96(%rax), %rax	# table_6(D)->alloc_node, D.7193
	movq	-88(%rbp), %rdx	# table, tmp168
	movq	%rdx, %rdi	# tmp168,
	call	*%rax	# D.7193
	movq	%rax, -56(%rbp)	# tmp169, node
	.loc 1 161 0
	movq	-88(%rbp), %rax	# table, tmp170
	movq	88(%rax), %rax	# table_6(D)->entries, D.7191
	movl	-80(%rbp), %edx	# index, D.7192
	salq	$3, %rdx	#, D.7192
	addq	%rax, %rdx	# D.7191, D.7191
	movq	-56(%rbp), %rax	# node, tmp171
	movq	%rax, (%rdx)	# tmp171, *_30
	.loc 1 163 0
	movq	-56(%rbp), %rax	# node, tmp172
	movl	-100(%rbp), %edx	# len, tmp173
	movl	%edx, (%rax)	# tmp173, node_26->len
	.loc 1 164 0
	cmpl	$1, -104(%rbp)	#, insert
	jne	.L20	#,
.LBB4:
	.loc 1 165 0
	movq	-88(%rbp), %rax	# table, tmp174
	movq	%rax, -48(%rbp)	# tmp174, __h
.LBB5:
	movq	-48(%rbp), %rax	# __h, tmp175
	movq	%rax, -40(%rbp)	# tmp175, __o
	movl	-100(%rbp), %eax	# len, tmp176
	movl	%eax, -68(%rbp)	# tmp176, __len
	movq	-40(%rbp), %rax	# __o, tmp177
	movq	24(%rax), %rax	# __o_32->next_free, D.7194
	movl	-68(%rbp), %edx	# __len, tmp178
	movslq	%edx, %rdx	# tmp178, D.7195
	addq	$1, %rdx	#, D.7195
	addq	%rax, %rdx	# D.7194, D.7194
	movq	-40(%rbp), %rax	# __o, tmp179
	movq	32(%rax), %rax	# __o_32->chunk_limit, D.7194
	cmpq	%rax, %rdx	# D.7194, D.7194
	jbe	.L21	#,
	.loc 1 165 0 is_stmt 0 discriminator 1
	movl	-68(%rbp), %eax	# __len, tmp180
	leal	1(%rax), %edx	#, D.7196
	movq	-40(%rbp), %rax	# __o, tmp181
	movl	%edx, %esi	# D.7196,
	movq	%rax, %rdi	# tmp181,
	call	_obstack_newchunk	#
.L21:
	.loc 1 165 0 discriminator 2
	movl	-68(%rbp), %eax	# __len, tmp182
	movslq	%eax, %rdx	# tmp182, D.7192
	movq	-40(%rbp), %rax	# __o, tmp183
	movq	24(%rax), %rax	# __o_32->next_free, D.7194
	movq	-96(%rbp), %rcx	# str, tmp184
	movq	%rcx, %rsi	# tmp184,
	movq	%rax, %rdi	# D.7194,
	call	memcpy	#
	movq	-40(%rbp), %rax	# __o, tmp185
	movq	24(%rax), %rdx	# __o_32->next_free, D.7194
	movl	-68(%rbp), %eax	# __len, tmp186
	cltq
	addq	%rax, %rdx	# D.7195, D.7194
	movq	-40(%rbp), %rax	# __o, tmp187
	movq	%rdx, 24(%rax)	# D.7194, __o_32->next_free
	movq	-40(%rbp), %rax	# __o, tmp188
	movq	24(%rax), %rax	# __o_32->next_free, D.7194
	leaq	1(%rax), %rcx	#, D.7194
	movq	-40(%rbp), %rdx	# __o, tmp189
	movq	%rcx, 24(%rdx)	# D.7194, __o_32->next_free
	movb	$0, (%rax)	#, *_46
.LBE5:
.LBB6:
	movq	-48(%rbp), %rax	# __h, tmp190
	movq	%rax, -32(%rbp)	# tmp190, __o1
	movq	-32(%rbp), %rax	# __o1, tmp191
	movq	16(%rax), %rax	# __o1_48->object_base, tmp192
	movq	%rax, -24(%rbp)	# tmp192, value
	movq	-32(%rbp), %rax	# __o1, tmp193
	movq	24(%rax), %rax	# __o1_48->next_free, D.7194
	cmpq	-24(%rbp), %rax	# value, D.7194
	jne	.L22	#,
	.loc 1 165 0 discriminator 1
	movq	-32(%rbp), %rax	# __o1, tmp194
	movzbl	80(%rax), %edx	# __o1_48->maybe_empty_object, tmp197
	orl	$2, %edx	#, tmp198
	movb	%dl, 80(%rax)	# tmp198, __o1_48->maybe_empty_object
.L22:
	.loc 1 165 0 discriminator 2
	movq	-32(%rbp), %rax	# __o1, tmp199
	movq	24(%rax), %rax	# __o1_48->next_free, D.7194
	movq	%rax, %rdx	# D.7194, D.7197
	movq	-32(%rbp), %rax	# __o1, tmp200
	movl	48(%rax), %eax	# __o1_48->alignment_mask, D.7196
	cltq
	addq	%rax, %rdx	# D.7197, D.7197
	movq	-32(%rbp), %rax	# __o1, tmp201
	movl	48(%rax), %eax	# __o1_48->alignment_mask, D.7196
	notl	%eax	# D.7196
	cltq
	andq	%rdx, %rax	# D.7197, D.7197
	movq	%rax, %rdx	# D.7197, D.7194
	movq	-32(%rbp), %rax	# __o1, tmp202
	movq	%rdx, 24(%rax)	# D.7194, __o1_48->next_free
	movq	-32(%rbp), %rax	# __o1, tmp203
	movq	24(%rax), %rax	# __o1_48->next_free, D.7194
	movq	%rax, %rdx	# D.7194, D.7197
	movq	-32(%rbp), %rax	# __o1, tmp204
	movq	8(%rax), %rax	# __o1_48->chunk, D.7198
	movq	%rdx, %rcx	# D.7197, D.7197
	subq	%rax, %rcx	# D.7197, D.7197
	movq	-32(%rbp), %rax	# __o1, tmp205
	movq	32(%rax), %rax	# __o1_48->chunk_limit, D.7194
	movq	%rax, %rdx	# D.7194, D.7197
	movq	-32(%rbp), %rax	# __o1, tmp206
	movq	8(%rax), %rax	# __o1_48->chunk, D.7198
	subq	%rax, %rdx	# D.7197, D.7197
	movq	%rdx, %rax	# D.7197, D.7197
	cmpq	%rax, %rcx	# D.7197, D.7197
	jle	.L23	#,
	.loc 1 165 0 discriminator 1
	movq	-32(%rbp), %rax	# __o1, tmp207
	movq	32(%rax), %rdx	# __o1_48->chunk_limit, D.7194
	movq	-32(%rbp), %rax	# __o1, tmp208
	movq	%rdx, 24(%rax)	# D.7194, __o1_48->next_free
.L23:
	.loc 1 165 0 discriminator 2
	movq	-32(%rbp), %rax	# __o1, tmp209
	movq	24(%rax), %rdx	# __o1_48->next_free, D.7194
	movq	-32(%rbp), %rax	# __o1, tmp210
	movq	%rdx, 16(%rax)	# D.7194, __o1_48->object_base
	movq	-24(%rbp), %rdx	# value, D.7199
.LBE6:
.LBE4:
	movq	-56(%rbp), %rax	# node, tmp211
	movq	%rdx, 8(%rax)	# D.7199, node_26->str
	jmp	.L24	#
.L20:
	.loc 1 167 0 is_stmt 1
	movq	-56(%rbp), %rax	# node, tmp212
	movq	-96(%rbp), %rdx	# str, tmp213
	movq	%rdx, 8(%rax)	# tmp213, node_26->str
.L24:
	.loc 1 169 0
	movq	-88(%rbp), %rax	# table, tmp214
	movl	108(%rax), %eax	# table_6(D)->nelements, D.7190
	leal	1(%rax), %edx	#, D.7190
	movq	-88(%rbp), %rax	# table, tmp215
	movl	%edx, 108(%rax)	# D.7190, table_6(D)->nelements
	movq	-88(%rbp), %rax	# table, tmp216
	movl	108(%rax), %eax	# table_6(D)->nelements, D.7190
	leal	0(,%rax,4), %ecx	#, D.7190
	movq	-88(%rbp), %rax	# table, tmp217
	movl	104(%rax), %edx	# table_6(D)->nslots, D.7190
	movl	%edx, %eax	# D.7190, tmp218
	addl	%eax, %eax	# tmp218
	addl	%edx, %eax	# D.7190, D.7190
	cmpl	%eax, %ecx	# D.7190, D.7190
	jb	.L25	#,
	.loc 1 171 0
	movq	-88(%rbp), %rax	# table, tmp219
	movq	%rax, %rdi	# tmp219,
	call	ht_expand	#
.L25:
	.loc 1 173 0
	movq	-56(%rbp), %rax	# node, D.7189
.L17:
	.loc 1 174 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	ht_lookup, .-ht_lookup
	.type	ht_expand, @function
ht_expand:
.LFB7:
	.loc 1 181 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -56(%rbp)	# table, table
	.loc 1 185 0
	movq	-56(%rbp), %rax	# table, tmp81
	movl	104(%rax), %eax	# table_3(D)->nslots, D.7201
	addl	%eax, %eax	# tmp82
	movl	%eax, -40(%rbp)	# tmp82, size
	.loc 1 186 0
	movl	-40(%rbp), %eax	# size, D.7202
	movl	$8, %esi	#,
	movq	%rax, %rdi	# D.7202,
	call	xcalloc	#
	movq	%rax, -16(%rbp)	# tmp83, nentries
	.loc 1 187 0
	movl	-40(%rbp), %eax	# size, tmp87
	subl	$1, %eax	#, tmp86
	movl	%eax, -36(%rbp)	# tmp86, sizemask
	.loc 1 189 0
	movq	-56(%rbp), %rax	# table, tmp88
	movq	88(%rax), %rax	# table_3(D)->entries, tmp89
	movq	%rax, -24(%rbp)	# tmp89, p
	.loc 1 190 0
	movq	-56(%rbp), %rax	# table, tmp90
	movl	104(%rax), %eax	# table_3(D)->nslots, D.7201
	movl	%eax, %eax	# D.7201, D.7202
	leaq	0(,%rax,8), %rdx	#, D.7202
	movq	-24(%rbp), %rax	# p, tmp94
	addq	%rdx, %rax	# D.7202, tmp93
	movq	%rax, -8(%rbp)	# tmp93, limit
.L31:
	.loc 1 192 0
	movq	-24(%rbp), %rax	# p, tmp95
	movq	(%rax), %rax	# *p_1, D.7203
	testq	%rax, %rax	# D.7203
	je	.L28	#,
.LBB7:
	.loc 1 196 0
	movq	-24(%rbp), %rax	# p, tmp96
	movq	(%rax), %rax	# *p_1, D.7203
	movl	(%rax), %edx	# _15->len, D.7201
	movq	-24(%rbp), %rax	# p, tmp97
	movq	(%rax), %rax	# *p_1, D.7203
	movq	8(%rax), %rax	# _17->str, D.7204
	movl	%edx, %esi	# D.7201,
	movq	%rax, %rdi	# D.7204,
	call	calc_hash	#
	movl	%eax, -32(%rbp)	# tmp98, hash
	.loc 1 197 0
	movl	-32(%rbp), %edx	# hash, tmp99
	movl	%edx, %eax	# tmp99, tmp100
	sall	$4, %eax	#, tmp101
	addl	%edx, %eax	# tmp99, D.7201
	andl	-36(%rbp), %eax	# sizemask, D.7201
	orl	$1, %eax	#, tmp102
	movl	%eax, -28(%rbp)	# tmp102, hash2
	.loc 1 198 0
	movl	-36(%rbp), %eax	# sizemask, tmp107
	movl	-32(%rbp), %edx	# hash, tmp108
	andl	%edx, %eax	# tmp108, tmp106
	movl	%eax, -44(%rbp)	# tmp106, index
.L30:
	.loc 1 202 0
	movl	-44(%rbp), %eax	# index, D.7202
	leaq	0(,%rax,8), %rdx	#, D.7202
	movq	-16(%rbp), %rax	# nentries, tmp109
	addq	%rdx, %rax	# D.7202, D.7205
	movq	(%rax), %rax	# *_26, D.7203
	testq	%rax, %rax	# D.7203
	jne	.L29	#,
	.loc 1 204 0
	movl	-44(%rbp), %eax	# index, D.7202
	leaq	0(,%rax,8), %rdx	#, D.7202
	movq	-16(%rbp), %rax	# nentries, tmp110
	addq	%rax, %rdx	# tmp110, D.7205
	movq	-24(%rbp), %rax	# p, tmp111
	movq	(%rax), %rax	# *p_1, D.7203
	movq	%rax, (%rdx)	# D.7203, *_30
	.loc 1 205 0
	jmp	.L28	#
.L29:
	.loc 1 208 0
	movl	-28(%rbp), %eax	# hash2, tmp112
	movl	-44(%rbp), %edx	# index, tmp113
	addl	%edx, %eax	# tmp113, D.7201
	andl	-36(%rbp), %eax	# sizemask, tmp115
	movl	%eax, -44(%rbp)	# tmp115, index
	.loc 1 209 0
	jmp	.L30	#
.L28:
.LBE7:
	.loc 1 211 0
	addq	$8, -24(%rbp)	#, p
	movq	-24(%rbp), %rax	# p, tmp116
	cmpq	-8(%rbp), %rax	# limit, tmp116
	jb	.L31	#,
	.loc 1 213 0
	movq	-56(%rbp), %rax	# table, tmp117
	movq	88(%rax), %rax	# table_3(D)->entries, D.7205
	movq	%rax, %rdi	# D.7205,
	call	free	#
	.loc 1 214 0
	movq	-56(%rbp), %rax	# table, tmp118
	movq	-16(%rbp), %rdx	# nentries, tmp119
	movq	%rdx, 88(%rax)	# tmp119, table_3(D)->entries
	.loc 1 215 0
	movq	-56(%rbp), %rax	# table, tmp120
	movl	-40(%rbp), %edx	# size, tmp121
	movl	%edx, 104(%rax)	# tmp121, table_3(D)->nslots
	.loc 1 216 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	ht_expand, .-ht_expand
	.globl	ht_forall
	.type	ht_forall, @function
ht_forall:
.LFB8:
	.loc 1 225 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# table, table
	movq	%rsi, -32(%rbp)	# cb, cb
	movq	%rdx, -40(%rbp)	# v, v
	.loc 1 228 0
	movq	-24(%rbp), %rax	# table, tmp66
	movq	88(%rax), %rax	# table_2(D)->entries, tmp67
	movq	%rax, -16(%rbp)	# tmp67, p
	.loc 1 229 0
	movq	-24(%rbp), %rax	# table, tmp68
	movl	104(%rax), %eax	# table_2(D)->nslots, D.7206
	movl	%eax, %eax	# D.7206, D.7207
	leaq	0(,%rax,8), %rdx	#, D.7207
	movq	-16(%rbp), %rax	# p, tmp72
	addq	%rdx, %rax	# D.7207, tmp71
	movq	%rax, -8(%rbp)	# tmp71, limit
.L35:
	.loc 1 231 0
	movq	-16(%rbp), %rax	# p, tmp73
	movq	(%rax), %rax	# *p_1, D.7208
	testq	%rax, %rax	# D.7208
	je	.L33	#,
	.loc 1 233 0
	movq	-16(%rbp), %rax	# p, tmp74
	movq	(%rax), %rsi	# *p_1, D.7208
	movq	-24(%rbp), %rax	# table, tmp75
	movq	112(%rax), %rcx	# table_2(D)->pfile, D.7209
	movq	-40(%rbp), %rdx	# v, tmp76
	movq	-32(%rbp), %rax	# cb, tmp77
	movq	%rcx, %rdi	# D.7209,
	call	*%rax	# tmp77
	testl	%eax, %eax	# D.7210
	jne	.L33	#,
	.loc 1 234 0
	jmp	.L32	#
.L33:
	.loc 1 236 0
	addq	$8, -16(%rbp)	#, p
	movq	-16(%rbp), %rax	# p, tmp78
	cmpq	-8(%rbp), %rax	# limit, tmp78
	jb	.L35	#,
.L32:
	.loc 1 237 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	ht_forall, .-ht_forall
	.section	.rodata
.LC0:
	.string	"\nString pool\nentries\t\t%lu\n"
.LC2:
	.string	"identifiers\t%lu (%.2f%%)\n"
.LC3:
	.string	"slots\t\t%lu\n"
	.align 8
.LC4:
	.string	"bytes\t\t%lu%c (%lu%c overhead)\n"
.LC5:
	.string	"table size\t%lu%c\n"
.LC6:
	.string	"coll/search\t%.4f\n"
.LC7:
	.string	"ins/search\t%.4f\n"
	.align 8
.LC8:
	.string	"avg. entry\t%.2f bytes (+/- %.2f)\n"
.LC9:
	.string	"longest entry\t%lu\n"
	.text
	.globl	ht_dump_statistics
	.type	ht_dump_statistics, @function
ht_dump_statistics:
.LFB9:
	.loc 1 244 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	addq	$-128, %rsp	#,
	movq	%rdi, -120(%rbp)	# table, table
	.loc 1 257 0
	movq	$0, -104(%rbp)	#, nids
	movq	-104(%rbp), %rax	# nids, tmp114
	movq	%rax, -80(%rbp)	# tmp114, sum_of_squares
	movq	-80(%rbp), %rax	# sum_of_squares, tmp115
	movq	%rax, -88(%rbp)	# tmp115, longest
	movq	-88(%rbp), %rax	# longest, tmp116
	movq	%rax, -96(%rbp)	# tmp116, total_bytes
	.loc 1 258 0
	movq	-120(%rbp), %rax	# table, tmp117
	movq	88(%rax), %rax	# table_27(D)->entries, tmp118
	movq	%rax, -72(%rbp)	# tmp118, p
	.loc 1 259 0
	movq	-120(%rbp), %rax	# table, tmp119
	movl	104(%rax), %eax	# table_27(D)->nslots, D.7211
	movl	%eax, %eax	# D.7211, D.7212
	leaq	0(,%rax,8), %rdx	#, D.7212
	movq	-72(%rbp), %rax	# p, tmp123
	addq	%rdx, %rax	# D.7212, tmp122
	movq	%rax, -64(%rbp)	# tmp122, limit
.L39:
	.loc 1 261 0
	movq	-72(%rbp), %rax	# p, tmp124
	movq	(%rax), %rax	# *p_10, D.7213
	testq	%rax, %rax	# D.7213
	je	.L37	#,
.LBB8:
	.loc 1 263 0
	movq	-72(%rbp), %rax	# p, tmp125
	movq	(%rax), %rax	# *p_10, D.7213
	movl	(%rax), %eax	# _34->len, D.7211
	movl	%eax, %eax	# D.7211, tmp196
	movq	%rax, -56(%rbp)	# tmp196, n
	.loc 1 265 0
	movq	-56(%rbp), %rax	# n, tmp126
	addq	%rax, -96(%rbp)	# tmp126, total_bytes
	.loc 1 266 0
	movq	-56(%rbp), %rax	# n, tmp127
	imulq	-56(%rbp), %rax	# n, D.7212
	addq	%rax, -80(%rbp)	# D.7212, sum_of_squares
	.loc 1 267 0
	movq	-56(%rbp), %rax	# n, tmp128
	cmpq	-88(%rbp), %rax	# longest, tmp128
	jbe	.L38	#,
	.loc 1 268 0
	movq	-56(%rbp), %rax	# n, tmp129
	movq	%rax, -88(%rbp)	# tmp129, longest
.L38:
	.loc 1 269 0
	addq	$1, -104(%rbp)	#, nids
.L37:
.LBE8:
	.loc 1 271 0
	addq	$8, -72(%rbp)	#, p
	movq	-72(%rbp), %rax	# p, tmp130
	cmpq	-64(%rbp), %rax	# limit, tmp130
	jb	.L39	#,
	.loc 1 273 0
	movq	-120(%rbp), %rax	# table, tmp131
	movl	108(%rax), %eax	# table_27(D)->nelements, D.7211
	movl	%eax, %eax	# D.7211, tmp197
	movq	%rax, -48(%rbp)	# tmp197, nelts
	.loc 1 274 0
	movq	-120(%rbp), %rax	# table, D.7214
	movq	%rax, %rdi	# D.7214,
	call	_obstack_memory_used	#
	cltq
	subq	-96(%rbp), %rax	# total_bytes, tmp133
	movq	%rax, -40(%rbp)	# tmp133, overhead
	.loc 1 275 0
	movq	-120(%rbp), %rax	# table, tmp134
	movl	104(%rax), %eax	# table_27(D)->nslots, D.7211
	movl	%eax, %eax	# D.7211, D.7212
	salq	$3, %rax	#, tmp135
	movq	%rax, -32(%rbp)	# tmp135, headers
	.loc 1 277 0
	movq	stderr(%rip), %rax	# stderr, stderr.3
	movq	-48(%rbp), %rdx	# nelts, tmp136
	movl	$.LC0, %esi	#,
	movq	%rax, %rdi	# stderr.3,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 280 0
	movq	-104(%rbp), %rax	# nids, tmp137
	testq	%rax, %rax	# tmp137
	js	.L40	#,
	cvtsi2sdq	%rax, %xmm0	# tmp137, D.7216
	jmp	.L41	#
.L40:
	movq	%rax, %rdx	# tmp137, tmp139
	shrq	%rdx	# tmp139
	andl	$1, %eax	#, tmp140
	orq	%rax, %rdx	# tmp140, tmp139
	cvtsi2sdq	%rdx, %xmm0	# tmp139, tmp138
	addsd	%xmm0, %xmm0	# tmp138, D.7216
.L41:
	movsd	.LC1(%rip), %xmm1	#, tmp141
	mulsd	%xmm0, %xmm1	# D.7216, D.7216
	.loc 1 279 0
	movq	-48(%rbp), %rax	# nelts, tmp142
	testq	%rax, %rax	# tmp142
	js	.L42	#,
	cvtsi2sdq	%rax, %xmm0	# tmp142, D.7216
	jmp	.L43	#
.L42:
	movq	%rax, %rdx	# tmp142, tmp144
	shrq	%rdx	# tmp144
	andl	$1, %eax	#, tmp145
	orq	%rax, %rdx	# tmp145, tmp144
	cvtsi2sdq	%rdx, %xmm0	# tmp144, tmp143
	addsd	%xmm0, %xmm0	# tmp143, D.7216
.L43:
	divsd	%xmm0, %xmm1	# D.7216, D.7216
	movapd	%xmm1, %xmm0	# D.7216, D.7216
	movq	stderr(%rip), %rax	# stderr, stderr.4
	movq	-104(%rbp), %rdx	# nids, tmp146
	movl	$.LC2, %esi	#,
	movq	%rax, %rdi	# stderr.4,
	movl	$1, %eax	#,
	call	fprintf	#
	.loc 1 282 0
	movq	-120(%rbp), %rax	# table, tmp147
	movl	104(%rax), %eax	# table_27(D)->nslots, D.7211
	.loc 1 281 0
	movl	%eax, %edx	# D.7211, D.7212
	movq	stderr(%rip), %rax	# stderr, stderr.5
	movl	$.LC3, %esi	#,
	movq	%rax, %rdi	# stderr.5,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 283 0
	cmpq	$10239, -40(%rbp)	#, overhead
	jbe	.L44	#,
	.loc 1 285 0
	cmpq	$10485759, -40(%rbp)	#, overhead
	ja	.L45	#,
	.loc 1 285 0 is_stmt 0 discriminator 1
	movl	$107, %eax	#, iftmp.7
	jmp	.L46	#
.L45:
	.loc 1 285 0 discriminator 2
	movl	$77, %eax	#, iftmp.7
.L46:
	.loc 1 283 0 is_stmt 1 discriminator 1
	movl	%eax, %esi	# iftmp.7, iftmp.6
	jmp	.L47	#
.L44:
	movl	$32, %esi	#, iftmp.6
.L47:
	.loc 1 283 0 is_stmt 0 discriminator 2
	cmpq	$10239, -40(%rbp)	#, overhead
	jbe	.L48	#,
	.loc 1 285 0 is_stmt 1
	cmpq	$10485759, -40(%rbp)	#, overhead
	ja	.L49	#,
	.loc 1 285 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# overhead, tmp148
	shrq	$10, %rax	#, iftmp.9
	jmp	.L50	#
.L49:
	.loc 1 285 0 discriminator 2
	movq	-40(%rbp), %rax	# overhead, tmp149
	shrq	$20, %rax	#, iftmp.9
.L50:
	.loc 1 283 0 is_stmt 1 discriminator 2
	movq	%rax, %rcx	# iftmp.9, iftmp.8
	jmp	.L51	#
.L48:
	.loc 1 283 0 is_stmt 0 discriminator 3
	movq	-40(%rbp), %rcx	# overhead, iftmp.8
.L51:
	.loc 1 283 0 discriminator 4
	cmpq	$10239, -96(%rbp)	#, total_bytes
	jbe	.L52	#,
	.loc 1 284 0 is_stmt 1
	cmpq	$10485759, -96(%rbp)	#, total_bytes
	ja	.L53	#,
	.loc 1 284 0 is_stmt 0 discriminator 1
	movl	$107, %eax	#, iftmp.11
	jmp	.L54	#
.L53:
	.loc 1 284 0 discriminator 2
	movl	$77, %eax	#, iftmp.11
.L54:
	.loc 1 283 0 is_stmt 1 discriminator 3
	movl	%eax, %edx	# iftmp.11, iftmp.10
	jmp	.L55	#
.L52:
	.loc 1 283 0 is_stmt 0 discriminator 5
	movl	$32, %edx	#, iftmp.10
.L55:
	.loc 1 283 0 discriminator 6
	cmpq	$10239, -96(%rbp)	#, total_bytes
	jbe	.L56	#,
	.loc 1 284 0 is_stmt 1
	cmpq	$10485759, -96(%rbp)	#, total_bytes
	ja	.L57	#,
	.loc 1 284 0 is_stmt 0 discriminator 1
	movq	-96(%rbp), %rax	# total_bytes, tmp150
	shrq	$10, %rax	#, iftmp.13
	jmp	.L59	#
.L57:
	.loc 1 284 0 discriminator 2
	movq	-96(%rbp), %rax	# total_bytes, tmp151
	shrq	$20, %rax	#, iftmp.13
	jmp	.L59	#
.L56:
	.loc 1 283 0 is_stmt 1 discriminator 7
	movq	-96(%rbp), %rax	# total_bytes, iftmp.12
.L59:
	.loc 1 283 0 is_stmt 0 discriminator 8
	movq	stderr(%rip), %rdi	# stderr, stderr.14
	movl	%esi, %r9d	# iftmp.6,
	movq	%rcx, %r8	# iftmp.8,
	movl	%edx, %ecx	# iftmp.10,
	movq	%rax, %rdx	# iftmp.12,
	movl	$.LC4, %esi	#,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 286 0 is_stmt 1 discriminator 8
	cmpq	$10239, -32(%rbp)	#, headers
	jbe	.L60	#,
	.loc 1 287 0
	cmpq	$10485759, -32(%rbp)	#, headers
	ja	.L61	#,
	.loc 1 287 0 is_stmt 0 discriminator 1
	movl	$107, %eax	#, iftmp.16
	jmp	.L62	#
.L61:
	.loc 1 287 0 discriminator 2
	movl	$77, %eax	#, iftmp.16
.L62:
	.loc 1 286 0 is_stmt 1 discriminator 5
	movl	%eax, %edx	# iftmp.16, iftmp.15
	jmp	.L63	#
.L60:
	.loc 1 286 0 is_stmt 0 discriminator 1
	movl	$32, %edx	#, iftmp.15
.L63:
	.loc 1 286 0 discriminator 2
	cmpq	$10239, -32(%rbp)	#, headers
	jbe	.L64	#,
	.loc 1 287 0 is_stmt 1
	cmpq	$10485759, -32(%rbp)	#, headers
	ja	.L65	#,
	.loc 1 287 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# headers, tmp152
	shrq	$10, %rax	#, iftmp.18
	jmp	.L67	#
.L65:
	.loc 1 287 0 discriminator 2
	movq	-32(%rbp), %rax	# headers, tmp153
	shrq	$20, %rax	#, iftmp.18
	jmp	.L67	#
.L64:
	.loc 1 286 0 is_stmt 1 discriminator 3
	movq	-32(%rbp), %rax	# headers, iftmp.17
.L67:
	.loc 1 286 0 is_stmt 0 discriminator 4
	movq	stderr(%rip), %rdi	# stderr, stderr.19
	movl	%edx, %ecx	# iftmp.15,
	movq	%rax, %rdx	# iftmp.17,
	movl	$.LC5, %esi	#,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 289 0 is_stmt 1 discriminator 4
	movq	-96(%rbp), %rax	# total_bytes, tmp154
	testq	%rax, %rax	# tmp154
	js	.L68	#,
	cvtsi2sdq	%rax, %xmm0	# tmp154, D.7216
	jmp	.L69	#
.L68:
	movq	%rax, %rdx	# tmp154, tmp156
	shrq	%rdx	# tmp156
	andl	$1, %eax	#, tmp157
	orq	%rax, %rdx	# tmp157, tmp156
	cvtsi2sdq	%rdx, %xmm0	# tmp156, tmp155
	addsd	%xmm0, %xmm0	# tmp155, D.7216
.L69:
	movq	-48(%rbp), %rax	# nelts, tmp158
	testq	%rax, %rax	# tmp158
	js	.L70	#,
	cvtsi2sdq	%rax, %xmm1	# tmp158, D.7216
	jmp	.L71	#
.L70:
	movq	%rax, %rdx	# tmp158, tmp160
	shrq	%rdx	# tmp160
	andl	$1, %eax	#, tmp161
	orq	%rax, %rdx	# tmp161, tmp160
	cvtsi2sdq	%rdx, %xmm1	# tmp160, tmp159
	addsd	%xmm1, %xmm1	# tmp159, D.7216
.L71:
	divsd	%xmm1, %xmm0	# D.7216, tmp162
	movsd	%xmm0, -24(%rbp)	# tmp162, exp_len
	.loc 1 290 0 discriminator 4
	movsd	-24(%rbp), %xmm0	# exp_len, tmp164
	mulsd	-24(%rbp), %xmm0	# exp_len, tmp163
	movsd	%xmm0, -16(%rbp)	# tmp163, exp2_len
	.loc 1 291 0 discriminator 4
	movq	-80(%rbp), %rax	# sum_of_squares, tmp165
	testq	%rax, %rax	# tmp165
	js	.L72	#,
	cvtsi2sdq	%rax, %xmm0	# tmp165, D.7216
	jmp	.L73	#
.L72:
	movq	%rax, %rdx	# tmp165, tmp167
	shrq	%rdx	# tmp167
	andl	$1, %eax	#, tmp168
	orq	%rax, %rdx	# tmp168, tmp167
	cvtsi2sdq	%rdx, %xmm0	# tmp167, tmp166
	addsd	%xmm0, %xmm0	# tmp166, D.7216
.L73:
	movq	-48(%rbp), %rax	# nelts, tmp169
	testq	%rax, %rax	# tmp169
	js	.L74	#,
	cvtsi2sdq	%rax, %xmm1	# tmp169, D.7216
	jmp	.L75	#
.L74:
	movq	%rax, %rdx	# tmp169, tmp171
	shrq	%rdx	# tmp171
	andl	$1, %eax	#, tmp172
	orq	%rax, %rdx	# tmp172, tmp171
	cvtsi2sdq	%rdx, %xmm1	# tmp171, tmp170
	addsd	%xmm1, %xmm1	# tmp170, D.7216
.L75:
	divsd	%xmm1, %xmm0	# D.7216, tmp173
	movsd	%xmm0, -8(%rbp)	# tmp173, exp_len2
	.loc 1 294 0 discriminator 4
	movq	-120(%rbp), %rax	# table, tmp174
	movl	124(%rax), %eax	# table_27(D)->collisions, D.7211
	movl	%eax, %eax	# D.7211, tmp175
	testq	%rax, %rax	# tmp175
	js	.L76	#,
	cvtsi2sdq	%rax, %xmm0	# tmp175, D.7216
	jmp	.L77	#
.L76:
	movq	%rax, %rdx	# tmp175, tmp177
	shrq	%rdx	# tmp177
	andl	$1, %eax	#, tmp178
	orq	%rax, %rdx	# tmp178, tmp177
	cvtsi2sdq	%rdx, %xmm0	# tmp177, tmp176
	addsd	%xmm0, %xmm0	# tmp176, D.7216
.L77:
	movq	-120(%rbp), %rax	# table, tmp179
	movl	120(%rax), %eax	# table_27(D)->searches, D.7211
	movl	%eax, %eax	# D.7211, tmp180
	testq	%rax, %rax	# tmp180
	js	.L78	#,
	cvtsi2sdq	%rax, %xmm1	# tmp180, D.7216
	jmp	.L79	#
.L78:
	movq	%rax, %rdx	# tmp180, tmp182
	shrq	%rdx	# tmp182
	andl	$1, %eax	#, tmp183
	orq	%rax, %rdx	# tmp183, tmp182
	cvtsi2sdq	%rdx, %xmm1	# tmp182, tmp181
	addsd	%xmm1, %xmm1	# tmp181, D.7216
.L79:
	.loc 1 293 0 discriminator 4
	divsd	%xmm1, %xmm0	# D.7216, D.7216
	movq	stderr(%rip), %rax	# stderr, stderr.20
	movl	$.LC6, %esi	#,
	movq	%rax, %rdi	# stderr.20,
	movl	$1, %eax	#,
	call	fprintf	#
	.loc 1 296 0 discriminator 4
	movq	-48(%rbp), %rax	# nelts, tmp184
	testq	%rax, %rax	# tmp184
	js	.L80	#,
	cvtsi2sdq	%rax, %xmm0	# tmp184, D.7216
	jmp	.L81	#
.L80:
	movq	%rax, %rdx	# tmp184, tmp186
	shrq	%rdx	# tmp186
	andl	$1, %eax	#, tmp187
	orq	%rax, %rdx	# tmp187, tmp186
	cvtsi2sdq	%rdx, %xmm0	# tmp186, tmp185
	addsd	%xmm0, %xmm0	# tmp185, D.7216
.L81:
	movq	-120(%rbp), %rax	# table, tmp188
	movl	120(%rax), %eax	# table_27(D)->searches, D.7211
	movl	%eax, %eax	# D.7211, tmp189
	testq	%rax, %rax	# tmp189
	js	.L82	#,
	cvtsi2sdq	%rax, %xmm1	# tmp189, D.7216
	jmp	.L83	#
.L82:
	movq	%rax, %rdx	# tmp189, tmp191
	shrq	%rdx	# tmp191
	andl	$1, %eax	#, tmp192
	orq	%rax, %rdx	# tmp192, tmp191
	cvtsi2sdq	%rdx, %xmm1	# tmp191, tmp190
	addsd	%xmm1, %xmm1	# tmp190, D.7216
.L83:
	.loc 1 295 0 discriminator 4
	divsd	%xmm1, %xmm0	# D.7216, D.7216
	movq	stderr(%rip), %rax	# stderr, stderr.21
	movl	$.LC7, %esi	#,
	movq	%rax, %rdi	# stderr.21,
	movl	$1, %eax	#,
	call	fprintf	#
	.loc 1 297 0 discriminator 4
	movsd	-8(%rbp), %xmm0	# exp_len2, tmp193
	subsd	-16(%rbp), %xmm0	# exp2_len, D.7216
	call	approx_sqrt	#
	movsd	%xmm0, -128(%rbp)	#, %sfp
	movq	-128(%rbp), %rax	# %sfp, D.7216
	movq	stderr(%rip), %rcx	# stderr, stderr.22
	movq	-24(%rbp), %rdx	# exp_len, tmp194
	movq	%rax, -128(%rbp)	# D.7216, %sfp
	movsd	-128(%rbp), %xmm1	# %sfp,
	movq	%rdx, -128(%rbp)	# tmp194, %sfp
	movsd	-128(%rbp), %xmm0	# %sfp,
	movl	$.LC8, %esi	#,
	movq	%rcx, %rdi	# stderr.22,
	movl	$2, %eax	#,
	call	fprintf	#
	.loc 1 299 0 discriminator 4
	movq	stderr(%rip), %rax	# stderr, stderr.23
	movq	-88(%rbp), %rdx	# longest, tmp195
	movl	$.LC9, %esi	#,
	movq	%rax, %rdi	# stderr.23,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 303 0 discriminator 4
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	ht_dump_statistics, .-ht_dump_statistics
	.globl	approx_sqrt
	.type	approx_sqrt, @function
approx_sqrt:
.LFB10:
	.loc 1 310 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movsd	%xmm0, -24(%rbp)	# x, x
	.loc 1 313 0
	xorpd	%xmm0, %xmm0	# tmp64
	ucomisd	-24(%rbp), %xmm0	# x, tmp64
	jbe	.L93	#,
	.loc 1 314 0
	call	abort	#
.L93:
	.loc 1 315 0
	xorpd	%xmm0, %xmm0	# tmp65
	ucomisd	-24(%rbp), %xmm0	# x, tmp65
	jp	.L87	#,
	xorpd	%xmm0, %xmm0	# tmp66
	ucomisd	-24(%rbp), %xmm0	# x, tmp66
	jne	.L87	#,
	.loc 1 316 0
	movl	$0, %eax	#, D.7227
	jmp	.L89	#
.L87:
	.loc 1 318 0
	movq	-24(%rbp), %rax	# x, tmp67
	movq	%rax, -16(%rbp)	# tmp67, s
.L90:
	.loc 1 321 0 discriminator 1
	movsd	-16(%rbp), %xmm0	# s, tmp68
	mulsd	-16(%rbp), %xmm0	# s, D.7227
	movapd	%xmm0, %xmm1	# D.7227, D.7227
	subsd	-24(%rbp), %xmm1	# x, D.7227
	movsd	-16(%rbp), %xmm0	# s, tmp69
	addsd	%xmm0, %xmm0	# tmp69, D.7227
	divsd	%xmm0, %xmm1	# D.7227, tmp70
	movapd	%xmm1, %xmm0	# tmp70, tmp70
	movsd	%xmm0, -8(%rbp)	# tmp70, d
	.loc 1 322 0 discriminator 1
	movsd	-16(%rbp), %xmm0	# s, tmp72
	subsd	-8(%rbp), %xmm0	# d, tmp71
	movsd	%xmm0, -16(%rbp)	# tmp71, s
	.loc 1 324 0 discriminator 1
	movsd	-8(%rbp), %xmm0	# d, tmp73
	ucomisd	.LC11(%rip), %xmm0	#, tmp73
	ja	.L90	#,
	.loc 1 325 0
	movq	-16(%rbp), %rax	# s, D.7227
.L89:
	.loc 1 326 0
	movq	%rax, -32(%rbp)	# <retval>, %sfp
	movsd	-32(%rbp), %xmm0	# %sfp,
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	approx_sqrt, .-approx_sqrt
	.section	.rodata
	.align 8
.LC1:
	.long	0
	.long	1079574528
	.align 8
.LC11:
	.long	3944497965
	.long	1058682594
	.text
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/include/libio.h"
	.file 5 "obstack.h"
	.file 6 "hashtable.h"
	.file 7 "/usr/include/stdio.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x9da
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF113
	.byte	0x1
	.long	.LASF114
	.long	.LASF115
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
	.uleb128 0x5
	.long	.LASF8
	.byte	0x2
	.byte	0xd4
	.long	0x56
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
	.long	.LASF9
	.byte	0x3
	.byte	0x8c
	.long	0x44
	.uleb128 0x5
	.long	.LASF10
	.byte	0x3
	.byte	0x8d
	.long	0x44
	.uleb128 0x6
	.byte	0x8
	.long	0x95
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF11
	.uleb128 0x7
	.long	.LASF41
	.byte	0xd8
	.byte	0x4
	.byte	0xf6
	.long	0x21d
	.uleb128 0x8
	.long	.LASF12
	.byte	0x4
	.byte	0xf7
	.long	0x2d
	.byte	0
	.uleb128 0x8
	.long	.LASF13
	.byte	0x4
	.byte	0xfc
	.long	0x8f
	.byte	0x8
	.uleb128 0x8
	.long	.LASF14
	.byte	0x4
	.byte	0xfd
	.long	0x8f
	.byte	0x10
	.uleb128 0x8
	.long	.LASF15
	.byte	0x4
	.byte	0xfe
	.long	0x8f
	.byte	0x18
	.uleb128 0x8
	.long	.LASF16
	.byte	0x4
	.byte	0xff
	.long	0x8f
	.byte	0x20
	.uleb128 0x9
	.long	.LASF17
	.byte	0x4
	.value	0x100
	.long	0x8f
	.byte	0x28
	.uleb128 0x9
	.long	.LASF18
	.byte	0x4
	.value	0x101
	.long	0x8f
	.byte	0x30
	.uleb128 0x9
	.long	.LASF19
	.byte	0x4
	.value	0x102
	.long	0x8f
	.byte	0x38
	.uleb128 0x9
	.long	.LASF20
	.byte	0x4
	.value	0x103
	.long	0x8f
	.byte	0x40
	.uleb128 0x9
	.long	.LASF21
	.byte	0x4
	.value	0x105
	.long	0x8f
	.byte	0x48
	.uleb128 0x9
	.long	.LASF22
	.byte	0x4
	.value	0x106
	.long	0x8f
	.byte	0x50
	.uleb128 0x9
	.long	.LASF23
	.byte	0x4
	.value	0x107
	.long	0x8f
	.byte	0x58
	.uleb128 0x9
	.long	.LASF24
	.byte	0x4
	.value	0x109
	.long	0x265
	.byte	0x60
	.uleb128 0x9
	.long	.LASF25
	.byte	0x4
	.value	0x10b
	.long	0x26b
	.byte	0x68
	.uleb128 0x9
	.long	.LASF26
	.byte	0x4
	.value	0x10d
	.long	0x2d
	.byte	0x70
	.uleb128 0x9
	.long	.LASF27
	.byte	0x4
	.value	0x111
	.long	0x2d
	.byte	0x74
	.uleb128 0x9
	.long	.LASF28
	.byte	0x4
	.value	0x113
	.long	0x79
	.byte	0x78
	.uleb128 0x9
	.long	.LASF29
	.byte	0x4
	.value	0x117
	.long	0x64
	.byte	0x80
	.uleb128 0x9
	.long	.LASF30
	.byte	0x4
	.value	0x118
	.long	0x6b
	.byte	0x82
	.uleb128 0x9
	.long	.LASF31
	.byte	0x4
	.value	0x119
	.long	0x271
	.byte	0x83
	.uleb128 0x9
	.long	.LASF32
	.byte	0x4
	.value	0x11d
	.long	0x281
	.byte	0x88
	.uleb128 0x9
	.long	.LASF33
	.byte	0x4
	.value	0x126
	.long	0x84
	.byte	0x90
	.uleb128 0x9
	.long	.LASF34
	.byte	0x4
	.value	0x12f
	.long	0x42
	.byte	0x98
	.uleb128 0x9
	.long	.LASF35
	.byte	0x4
	.value	0x130
	.long	0x42
	.byte	0xa0
	.uleb128 0x9
	.long	.LASF36
	.byte	0x4
	.value	0x131
	.long	0x42
	.byte	0xa8
	.uleb128 0x9
	.long	.LASF37
	.byte	0x4
	.value	0x132
	.long	0x42
	.byte	0xb0
	.uleb128 0x9
	.long	.LASF38
	.byte	0x4
	.value	0x133
	.long	0x4b
	.byte	0xb8
	.uleb128 0x9
	.long	.LASF39
	.byte	0x4
	.value	0x135
	.long	0x2d
	.byte	0xc0
	.uleb128 0x9
	.long	.LASF40
	.byte	0x4
	.value	0x137
	.long	0x287
	.byte	0xc4
	.byte	0
	.uleb128 0xa
	.long	0x95
	.long	0x22d
	.uleb128 0xb
	.long	0x34
	.byte	0x3
	.byte	0
	.uleb128 0xc
	.long	.LASF116
	.byte	0x4
	.byte	0x9b
	.uleb128 0x7
	.long	.LASF42
	.byte	0x18
	.byte	0x4
	.byte	0xa1
	.long	0x265
	.uleb128 0x8
	.long	.LASF43
	.byte	0x4
	.byte	0xa2
	.long	0x265
	.byte	0
	.uleb128 0x8
	.long	.LASF44
	.byte	0x4
	.byte	0xa3
	.long	0x26b
	.byte	0x8
	.uleb128 0x8
	.long	.LASF45
	.byte	0x4
	.byte	0xa7
	.long	0x2d
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x234
	.uleb128 0x6
	.byte	0x8
	.long	0x9c
	.uleb128 0xa
	.long	0x95
	.long	0x281
	.uleb128 0xb
	.long	0x34
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x22d
	.uleb128 0xa
	.long	0x95
	.long	0x297
	.uleb128 0xb
	.long	0x34
	.byte	0x13
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF46
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF47
	.uleb128 0x6
	.byte	0x8
	.long	0x2ab
	.uleb128 0xd
	.uleb128 0x7
	.long	.LASF48
	.byte	0x18
	.byte	0x5
	.byte	0xa1
	.long	0x2dd
	.uleb128 0x8
	.long	.LASF49
	.byte	0x5
	.byte	0xa3
	.long	0x8f
	.byte	0
	.uleb128 0x8
	.long	.LASF50
	.byte	0x5
	.byte	0xa4
	.long	0x2dd
	.byte	0x8
	.uleb128 0x8
	.long	.LASF51
	.byte	0x5
	.byte	0xa5
	.long	0x21d
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x2ac
	.uleb128 0x7
	.long	.LASF52
	.byte	0x58
	.byte	0x5
	.byte	0xa8
	.long	0x395
	.uleb128 0x8
	.long	.LASF53
	.byte	0x5
	.byte	0xaa
	.long	0x44
	.byte	0
	.uleb128 0x8
	.long	.LASF54
	.byte	0x5
	.byte	0xab
	.long	0x2dd
	.byte	0x8
	.uleb128 0x8
	.long	.LASF55
	.byte	0x5
	.byte	0xac
	.long	0x8f
	.byte	0x10
	.uleb128 0x8
	.long	.LASF56
	.byte	0x5
	.byte	0xad
	.long	0x8f
	.byte	0x18
	.uleb128 0x8
	.long	.LASF57
	.byte	0x5
	.byte	0xae
	.long	0x8f
	.byte	0x20
	.uleb128 0x8
	.long	.LASF58
	.byte	0x5
	.byte	0xaf
	.long	0x44
	.byte	0x28
	.uleb128 0x8
	.long	.LASF59
	.byte	0x5
	.byte	0xb0
	.long	0x2d
	.byte	0x30
	.uleb128 0x8
	.long	.LASF60
	.byte	0x5
	.byte	0xb5
	.long	0x3a9
	.byte	0x38
	.uleb128 0x8
	.long	.LASF61
	.byte	0x5
	.byte	0xb6
	.long	0x3bf
	.byte	0x40
	.uleb128 0x8
	.long	.LASF62
	.byte	0x5
	.byte	0xb7
	.long	0x42
	.byte	0x48
	.uleb128 0xe
	.long	.LASF63
	.byte	0x5
	.byte	0xbd
	.long	0x3b
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x50
	.uleb128 0xe
	.long	.LASF64
	.byte	0x5
	.byte	0xbe
	.long	0x3b
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x50
	.uleb128 0xe
	.long	.LASF65
	.byte	0x5
	.byte	0xc2
	.long	0x3b
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x50
	.byte	0
	.uleb128 0xf
	.long	0x2dd
	.long	0x3a9
	.uleb128 0x10
	.long	0x42
	.uleb128 0x10
	.long	0x44
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x395
	.uleb128 0x11
	.long	0x3bf
	.uleb128 0x10
	.long	0x42
	.uleb128 0x10
	.long	0x2dd
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x3af
	.uleb128 0x7
	.long	.LASF66
	.byte	0x10
	.byte	0x6
	.byte	0x1a
	.long	0x3ea
	.uleb128 0x12
	.string	"len"
	.byte	0x6
	.byte	0x1c
	.long	0x3b
	.byte	0
	.uleb128 0x12
	.string	"str"
	.byte	0x6
	.byte	0x1d
	.long	0x3ea
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x3f0
	.uleb128 0x13
	.long	0x5d
	.uleb128 0x5
	.long	.LASF67
	.byte	0x6
	.byte	0x28
	.long	0x400
	.uleb128 0x14
	.string	"ht"
	.byte	0x80
	.byte	0x6
	.byte	0x2e
	.long	0x46c
	.uleb128 0x8
	.long	.LASF68
	.byte	0x6
	.byte	0x31
	.long	0x2e3
	.byte	0
	.uleb128 0x8
	.long	.LASF69
	.byte	0x6
	.byte	0x33
	.long	0x49c
	.byte	0x58
	.uleb128 0x8
	.long	.LASF70
	.byte	0x6
	.byte	0x35
	.long	0x4b7
	.byte	0x60
	.uleb128 0x8
	.long	.LASF71
	.byte	0x6
	.byte	0x37
	.long	0x3b
	.byte	0x68
	.uleb128 0x8
	.long	.LASF72
	.byte	0x6
	.byte	0x38
	.long	0x3b
	.byte	0x6c
	.uleb128 0x8
	.long	.LASF73
	.byte	0x6
	.byte	0x3b
	.long	0x4c2
	.byte	0x70
	.uleb128 0x8
	.long	.LASF74
	.byte	0x6
	.byte	0x3e
	.long	0x3b
	.byte	0x78
	.uleb128 0x8
	.long	.LASF75
	.byte	0x6
	.byte	0x3f
	.long	0x3b
	.byte	0x7c
	.byte	0
	.uleb128 0x5
	.long	.LASF76
	.byte	0x6
	.byte	0x29
	.long	0x477
	.uleb128 0x6
	.byte	0x8
	.long	0x3c5
	.uleb128 0x15
	.long	.LASF117
	.byte	0x4
	.byte	0x6
	.byte	0x2b
	.long	0x49c
	.uleb128 0x16
	.long	.LASF77
	.sleb128 0
	.uleb128 0x16
	.long	.LASF78
	.sleb128 1
	.uleb128 0x16
	.long	.LASF79
	.sleb128 2
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x46c
	.uleb128 0xf
	.long	0x46c
	.long	0x4b1
	.uleb128 0x10
	.long	0x4b1
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x3f5
	.uleb128 0x6
	.byte	0x8
	.long	0x4a2
	.uleb128 0x17
	.long	.LASF118
	.uleb128 0x6
	.byte	0x8
	.long	0x4bd
	.uleb128 0x5
	.long	.LASF80
	.byte	0x6
	.byte	0x50
	.long	0x4d3
	.uleb128 0x6
	.byte	0x8
	.long	0x4d9
	.uleb128 0xf
	.long	0x2d
	.long	0x4f2
	.uleb128 0x10
	.long	0x4c2
	.uleb128 0x10
	.long	0x46c
	.uleb128 0x10
	.long	0x2a5
	.byte	0
	.uleb128 0x18
	.long	.LASF83
	.byte	0x1
	.byte	0x32
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x51e
	.uleb128 0x19
	.long	.LASF52
	.byte	0x1
	.byte	0x33
	.long	0x51e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x2e3
	.uleb128 0x1a
	.long	.LASF119
	.byte	0x1
	.byte	0x3d
	.long	0x3b
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x57a
	.uleb128 0x1b
	.string	"str"
	.byte	0x1
	.byte	0x3e
	.long	0x3ea
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1b
	.string	"len"
	.byte	0x1
	.byte	0x3f
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1c
	.string	"n"
	.byte	0x1
	.byte	0x41
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1c
	.string	"r"
	.byte	0x1
	.byte	0x42
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1d
	.long	.LASF86
	.byte	0x1
	.byte	0x4f
	.long	0x4b1
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x5c6
	.uleb128 0x19
	.long	.LASF81
	.byte	0x1
	.byte	0x50
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1e
	.long	.LASF71
	.byte	0x1
	.byte	0x52
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1e
	.long	.LASF82
	.byte	0x1
	.byte	0x53
	.long	0x4b1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x18
	.long	.LASF84
	.byte	0x1
	.byte	0x64
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x620
	.uleb128 0x19
	.long	.LASF82
	.byte	0x1
	.byte	0x65
	.long	0x4b1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1f
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x1c
	.string	"__o"
	.byte	0x1
	.byte	0x67
	.long	0x51e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1e
	.long	.LASF85
	.byte	0x1
	.byte	0x67
	.long	0x42
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x1d
	.long	.LASF87
	.byte	0x1
	.byte	0x75
	.long	0x46c
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x77c
	.uleb128 0x19
	.long	.LASF82
	.byte	0x1
	.byte	0x76
	.long	0x4b1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x1b
	.string	"str"
	.byte	0x1
	.byte	0x77
	.long	0x3ea
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x1b
	.string	"len"
	.byte	0x1
	.byte	0x78
	.long	0x3b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x19
	.long	.LASF88
	.byte	0x1
	.byte	0x79
	.long	0x47d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x1e
	.long	.LASF89
	.byte	0x1
	.byte	0x7b
	.long	0x3b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x1e
	.long	.LASF90
	.byte	0x1
	.byte	0x7c
	.long	0x3b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x1e
	.long	.LASF91
	.byte	0x1
	.byte	0x7d
	.long	0x3b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x1e
	.long	.LASF92
	.byte	0x1
	.byte	0x7e
	.long	0x4b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1e
	.long	.LASF93
	.byte	0x1
	.byte	0x7f
	.long	0x46c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x20
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.long	0x6fa
	.uleb128 0x1c
	.string	"__o"
	.byte	0x1
	.byte	0x95
	.long	0x51e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1e
	.long	.LASF85
	.byte	0x1
	.byte	0x95
	.long	0x42
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1f
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.uleb128 0x1c
	.string	"__h"
	.byte	0x1
	.byte	0xa5
	.long	0x51e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x20
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.long	0x74c
	.uleb128 0x1c
	.string	"__o"
	.byte	0x1
	.byte	0xa5
	.long	0x51e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1e
	.long	.LASF94
	.byte	0x1
	.byte	0xa5
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.byte	0
	.uleb128 0x1f
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.uleb128 0x1e
	.long	.LASF95
	.byte	0x1
	.byte	0xa5
	.long	0x51e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1e
	.long	.LASF96
	.byte	0x1
	.byte	0xa5
	.long	0x42
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x21
	.long	.LASF120
	.byte	0x1
	.byte	0xb3
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x829
	.uleb128 0x19
	.long	.LASF82
	.byte	0x1
	.byte	0xb4
	.long	0x4b1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1e
	.long	.LASF97
	.byte	0x1
	.byte	0xb6
	.long	0x49c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1c
	.string	"p"
	.byte	0x1
	.byte	0xb6
	.long	0x49c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1e
	.long	.LASF49
	.byte	0x1
	.byte	0xb6
	.long	0x49c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1e
	.long	.LASF98
	.byte	0x1
	.byte	0xb7
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1e
	.long	.LASF92
	.byte	0x1
	.byte	0xb7
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1f
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.uleb128 0x1e
	.long	.LASF91
	.byte	0x1
	.byte	0xc2
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1e
	.long	.LASF89
	.byte	0x1
	.byte	0xc2
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1e
	.long	.LASF90
	.byte	0x1
	.byte	0xc2
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.byte	0
	.uleb128 0x18
	.long	.LASF99
	.byte	0x1
	.byte	0xdd
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x888
	.uleb128 0x19
	.long	.LASF82
	.byte	0x1
	.byte	0xde
	.long	0x4b1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1b
	.string	"cb"
	.byte	0x1
	.byte	0xdf
	.long	0x4c8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1b
	.string	"v"
	.byte	0x1
	.byte	0xe0
	.long	0x2a5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1c
	.string	"p"
	.byte	0x1
	.byte	0xe2
	.long	0x49c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1e
	.long	.LASF49
	.byte	0x1
	.byte	0xe2
	.long	0x49c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x18
	.long	.LASF100
	.byte	0x1
	.byte	0xf2
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x981
	.uleb128 0x19
	.long	.LASF82
	.byte	0x1
	.byte	0xf3
	.long	0x4b1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x1e
	.long	.LASF101
	.byte	0x1
	.byte	0xf5
	.long	0x4b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1e
	.long	.LASF102
	.byte	0x1
	.byte	0xf5
	.long	0x4b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x1e
	.long	.LASF103
	.byte	0x1
	.byte	0xf5
	.long	0x4b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1e
	.long	.LASF104
	.byte	0x1
	.byte	0xf5
	.long	0x4b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1e
	.long	.LASF105
	.byte	0x1
	.byte	0xf6
	.long	0x4b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x1e
	.long	.LASF106
	.byte	0x1
	.byte	0xf6
	.long	0x4b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x1e
	.long	.LASF107
	.byte	0x1
	.byte	0xf6
	.long	0x4b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x1e
	.long	.LASF108
	.byte	0x1
	.byte	0xf7
	.long	0x981
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1e
	.long	.LASF109
	.byte	0x1
	.byte	0xf7
	.long	0x981
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1e
	.long	.LASF110
	.byte	0x1
	.byte	0xf7
	.long	0x981
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1c
	.string	"p"
	.byte	0x1
	.byte	0xf8
	.long	0x49c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x1e
	.long	.LASF49
	.byte	0x1
	.byte	0xf8
	.long	0x49c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1f
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.uleb128 0x22
	.string	"n"
	.byte	0x1
	.value	0x107
	.long	0x4b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.long	.LASF111
	.uleb128 0x23
	.long	.LASF112
	.byte	0x1
	.value	0x134
	.long	0x981
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x9d2
	.uleb128 0x24
	.string	"x"
	.byte	0x1
	.value	0x135
	.long	0x981
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x22
	.string	"s"
	.byte	0x1
	.value	0x137
	.long	0x981
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x22
	.string	"d"
	.byte	0x1
	.value	0x137
	.long	0x981
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x25
	.long	.LASF121
	.byte	0x7
	.byte	0xaa
	.long	0x26b
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x15
	.uleb128 0x4
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
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
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
	.uleb128 0x1c
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
	.uleb128 0x1e
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
	.uleb128 0x22
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
	.uleb128 0x24
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
	.uleb128 0x25
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
.LASF67:
	.string	"hash_table"
.LASF92:
	.string	"sizemask"
.LASF31:
	.string	"_shortbuf"
.LASF8:
	.string	"size_t"
.LASF73:
	.string	"pfile"
.LASF50:
	.string	"prev"
.LASF104:
	.string	"headers"
.LASF60:
	.string	"chunkfun"
.LASF75:
	.string	"collisions"
.LASF72:
	.string	"nelements"
.LASF51:
	.string	"contents"
.LASF80:
	.string	"ht_cb"
.LASF81:
	.string	"order"
.LASF97:
	.string	"nentries"
.LASF49:
	.string	"limit"
.LASF90:
	.string	"hash2"
.LASF47:
	.string	"long long int"
.LASF6:
	.string	"signed char"
.LASF9:
	.string	"__off_t"
.LASF103:
	.string	"overhead"
.LASF119:
	.string	"calc_hash"
.LASF26:
	.string	"_fileno"
.LASF86:
	.string	"ht_create"
.LASF14:
	.string	"_IO_read_end"
.LASF58:
	.string	"temp"
.LASF2:
	.string	"long int"
.LASF110:
	.string	"exp2_len"
.LASF12:
	.string	"_flags"
.LASF20:
	.string	"_IO_buf_end"
.LASF29:
	.string	"_cur_column"
.LASF111:
	.string	"double"
.LASF28:
	.string	"_old_offset"
.LASF33:
	.string	"_offset"
.LASF5:
	.string	"short unsigned int"
.LASF100:
	.string	"ht_dump_statistics"
.LASF38:
	.string	"__pad5"
.LASF57:
	.string	"chunk_limit"
.LASF46:
	.string	"long long unsigned int"
.LASF96:
	.string	"value"
.LASF105:
	.string	"total_bytes"
.LASF42:
	.string	"_IO_marker"
.LASF88:
	.string	"insert"
.LASF1:
	.string	"unsigned int"
.LASF3:
	.string	"long unsigned int"
.LASF17:
	.string	"_IO_write_ptr"
.LASF78:
	.string	"HT_ALLOC"
.LASF44:
	.string	"_sbuf"
.LASF98:
	.string	"size"
.LASF84:
	.string	"ht_destroy"
.LASF109:
	.string	"exp_len2"
.LASF70:
	.string	"alloc_node"
.LASF21:
	.string	"_IO_save_base"
.LASF79:
	.string	"HT_ALLOCED"
.LASF76:
	.string	"hashnode"
.LASF101:
	.string	"nelts"
.LASF32:
	.string	"_lock"
.LASF61:
	.string	"freefun"
.LASF27:
	.string	"_flags2"
.LASF39:
	.string	"_mode"
.LASF99:
	.string	"ht_forall"
.LASF120:
	.string	"ht_expand"
.LASF69:
	.string	"entries"
.LASF0:
	.string	"sizetype"
.LASF71:
	.string	"nslots"
.LASF106:
	.string	"longest"
.LASF13:
	.string	"_IO_read_ptr"
.LASF87:
	.string	"ht_lookup"
.LASF95:
	.string	"__o1"
.LASF114:
	.string	"hashtable.c"
.LASF116:
	.string	"_IO_lock_t"
.LASF41:
	.string	"_IO_FILE"
.LASF52:
	.string	"obstack"
.LASF45:
	.string	"_pos"
.LASF24:
	.string	"_markers"
.LASF59:
	.string	"alignment_mask"
.LASF64:
	.string	"maybe_empty_object"
.LASF4:
	.string	"unsigned char"
.LASF108:
	.string	"exp_len"
.LASF93:
	.string	"node"
.LASF7:
	.string	"short int"
.LASF25:
	.string	"_chain"
.LASF74:
	.string	"searches"
.LASF82:
	.string	"table"
.LASF94:
	.string	"__len"
.LASF107:
	.string	"sum_of_squares"
.LASF30:
	.string	"_vtable_offset"
.LASF48:
	.string	"_obstack_chunk"
.LASF83:
	.string	"gcc_obstack_init"
.LASF85:
	.string	"__obj"
.LASF54:
	.string	"chunk"
.LASF11:
	.string	"char"
.LASF102:
	.string	"nids"
.LASF91:
	.string	"index"
.LASF89:
	.string	"hash"
.LASF43:
	.string	"_next"
.LASF10:
	.string	"__off64_t"
.LASF66:
	.string	"ht_identifier"
.LASF15:
	.string	"_IO_read_base"
.LASF117:
	.string	"ht_lookup_option"
.LASF23:
	.string	"_IO_save_end"
.LASF65:
	.string	"alloc_failed"
.LASF34:
	.string	"__pad1"
.LASF35:
	.string	"__pad2"
.LASF36:
	.string	"__pad3"
.LASF37:
	.string	"__pad4"
.LASF77:
	.string	"HT_NO_INSERT"
.LASF18:
	.string	"_IO_write_end"
.LASF40:
	.string	"_unused2"
.LASF121:
	.string	"stderr"
.LASF53:
	.string	"chunk_size"
.LASF112:
	.string	"approx_sqrt"
.LASF113:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF22:
	.string	"_IO_backup_base"
.LASF118:
	.string	"cpp_reader"
.LASF55:
	.string	"object_base"
.LASF63:
	.string	"use_extra_arg"
.LASF56:
	.string	"next_free"
.LASF68:
	.string	"stack"
.LASF16:
	.string	"_IO_write_base"
.LASF19:
	.string	"_IO_buf_base"
.LASF62:
	.string	"extra_arg"
.LASF115:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/403.gcc/build/build_base_amd64-m64-gcc43-nn.0000"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
