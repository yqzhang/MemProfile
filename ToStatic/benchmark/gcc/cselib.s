	.file	"cselib.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I . -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 cselib.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.local	hash_table
	.comm	hash_table,8,8
	.local	cselib_current_insn
	.comm	cselib_current_insn,8,8
	.local	next_unknown_value
	.comm	next_unknown_value,4,4
	.local	cselib_nregs
	.comm	cselib_nregs,4,4
	.local	n_useless_values
	.comm	n_useless_values,4,4
	.local	reg_values
	.comm	reg_values,8,8
	.local	max_value_regs
	.comm	max_value_regs,4,4
	.local	used_regs
	.comm	used_regs,8,8
	.local	callmem
	.comm	callmem,8,8
	.local	cselib_obstack
	.comm	cselib_obstack,88,32
	.local	cselib_startobj
	.comm	cselib_startobj,8,8
	.local	empty_vals
	.comm	empty_vals,8,8
	.local	empty_elt_lists
	.comm	empty_elt_lists,8,8
	.local	empty_elt_loc_lists
	.comm	empty_elt_loc_lists,8,8
	.local	values_became_useless
	.comm	values_became_useless,4,4
	.type	new_elt_list, @function
new_elt_list:
.LFB2:
	.file 1 "cselib.c"
	.loc 1 142 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -56(%rbp)	# next, next
	movq	%rsi, -64(%rbp)	# elt, elt
	.loc 1 143 0
	movq	empty_elt_lists(%rip), %rax	# empty_elt_lists, tmp96
	movq	%rax, -40(%rbp)	# tmp96, el
	.loc 1 145 0
	cmpq	$0, -40(%rbp)	#, el
	je	.L2	#,
	.loc 1 146 0
	movq	-40(%rbp), %rax	# el, tmp97
	movq	(%rax), %rax	# el_2->next, empty_elt_lists.0
	movq	%rax, empty_elt_lists(%rip)	# empty_elt_lists.0, empty_elt_lists
	jmp	.L3	#
.L2:
.LBB2:
	.loc 1 148 0
	movq	$cselib_obstack, -32(%rbp)	#, __h
.LBB3:
	movq	-32(%rbp), %rax	# __h, tmp98
	movq	%rax, -24(%rbp)	# tmp98, __o
	movl	$16, -44(%rbp)	#, __len
	movq	-24(%rbp), %rax	# __o, tmp99
	movq	32(%rax), %rax	# __o_5->chunk_limit, D.12710
	movq	%rax, %rdx	# D.12710, D.12711
	movq	-24(%rbp), %rax	# __o, tmp100
	movq	24(%rax), %rax	# __o_5->next_free, D.12710
	subq	%rax, %rdx	# D.12711, D.12711
	movl	-44(%rbp), %eax	# __len, tmp101
	cltq
	cmpq	%rax, %rdx	# D.12711, D.12711
	jge	.L4	#,
	.loc 1 148 0 is_stmt 0 discriminator 1
	movl	-44(%rbp), %edx	# __len, tmp102
	movq	-24(%rbp), %rax	# __o, tmp103
	movl	%edx, %esi	# tmp102,
	movq	%rax, %rdi	# tmp103,
	call	_obstack_newchunk	#
.L4:
	.loc 1 148 0 discriminator 2
	movq	-24(%rbp), %rax	# __o, tmp104
	movq	24(%rax), %rdx	# __o_5->next_free, D.12710
	movl	-44(%rbp), %eax	# __len, tmp105
	cltq
	addq	%rax, %rdx	# D.12712, D.12710
	movq	-24(%rbp), %rax	# __o, tmp106
	movq	%rdx, 24(%rax)	# D.12710, __o_5->next_free
.LBE3:
.LBB4:
	movq	-32(%rbp), %rax	# __h, tmp107
	movq	%rax, -16(%rbp)	# tmp107, __o1
	movq	-16(%rbp), %rax	# __o1, tmp108
	movq	16(%rax), %rax	# __o1_16->object_base, tmp109
	movq	%rax, -8(%rbp)	# tmp109, value
	movq	-16(%rbp), %rax	# __o1, tmp110
	movq	24(%rax), %rax	# __o1_16->next_free, D.12710
	cmpq	-8(%rbp), %rax	# value, D.12710
	jne	.L5	#,
	.loc 1 148 0 discriminator 1
	movq	-16(%rbp), %rax	# __o1, tmp111
	movzbl	80(%rax), %edx	# __o1_16->maybe_empty_object, tmp114
	orl	$2, %edx	#, tmp115
	movb	%dl, 80(%rax)	# tmp115, __o1_16->maybe_empty_object
.L5:
	.loc 1 148 0 discriminator 2
	movq	-16(%rbp), %rax	# __o1, tmp116
	movq	24(%rax), %rax	# __o1_16->next_free, D.12710
	movq	%rax, %rdx	# D.12710, D.12711
	movq	-16(%rbp), %rax	# __o1, tmp117
	movl	48(%rax), %eax	# __o1_16->alignment_mask, D.12713
	cltq
	addq	%rax, %rdx	# D.12711, D.12711
	movq	-16(%rbp), %rax	# __o1, tmp118
	movl	48(%rax), %eax	# __o1_16->alignment_mask, D.12713
	notl	%eax	# D.12713
	cltq
	andq	%rdx, %rax	# D.12711, D.12711
	movq	%rax, %rdx	# D.12711, D.12710
	movq	-16(%rbp), %rax	# __o1, tmp119
	movq	%rdx, 24(%rax)	# D.12710, __o1_16->next_free
	movq	-16(%rbp), %rax	# __o1, tmp120
	movq	24(%rax), %rax	# __o1_16->next_free, D.12710
	movq	%rax, %rdx	# D.12710, D.12711
	movq	-16(%rbp), %rax	# __o1, tmp121
	movq	8(%rax), %rax	# __o1_16->chunk, D.12714
	movq	%rdx, %rcx	# D.12711, D.12711
	subq	%rax, %rcx	# D.12711, D.12711
	movq	-16(%rbp), %rax	# __o1, tmp122
	movq	32(%rax), %rax	# __o1_16->chunk_limit, D.12710
	movq	%rax, %rdx	# D.12710, D.12711
	movq	-16(%rbp), %rax	# __o1, tmp123
	movq	8(%rax), %rax	# __o1_16->chunk, D.12714
	subq	%rax, %rdx	# D.12711, D.12711
	movq	%rdx, %rax	# D.12711, D.12711
	cmpq	%rax, %rcx	# D.12711, D.12711
	jle	.L6	#,
	.loc 1 148 0 discriminator 1
	movq	-16(%rbp), %rax	# __o1, tmp124
	movq	32(%rax), %rdx	# __o1_16->chunk_limit, D.12710
	movq	-16(%rbp), %rax	# __o1, tmp125
	movq	%rdx, 24(%rax)	# D.12710, __o1_16->next_free
.L6:
	.loc 1 148 0 discriminator 2
	movq	-16(%rbp), %rax	# __o1, tmp126
	movq	24(%rax), %rdx	# __o1_16->next_free, D.12710
	movq	-16(%rbp), %rax	# __o1, tmp127
	movq	%rdx, 16(%rax)	# D.12710, __o1_16->object_base
	movq	-8(%rbp), %rax	# value, D.12715
.LBE4:
.LBE2:
	movq	%rax, -40(%rbp)	# el.1, el
.L3:
	.loc 1 150 0 is_stmt 1
	movq	-40(%rbp), %rax	# el, tmp128
	movq	-56(%rbp), %rdx	# next, tmp129
	movq	%rdx, (%rax)	# tmp129, el_1->next
	.loc 1 151 0
	movq	-40(%rbp), %rax	# el, tmp130
	movq	-64(%rbp), %rdx	# elt, tmp131
	movq	%rdx, 8(%rax)	# tmp131, el_1->elt
	.loc 1 152 0
	movq	-40(%rbp), %rax	# el, D.12716
	.loc 1 153 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	new_elt_list, .-new_elt_list
	.type	new_elt_loc_list, @function
new_elt_loc_list:
.LFB3:
	.loc 1 162 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -56(%rbp)	# next, next
	movq	%rsi, -64(%rbp)	# loc, loc
	.loc 1 163 0
	movq	empty_elt_loc_lists(%rip), %rax	# empty_elt_loc_lists, tmp97
	movq	%rax, -40(%rbp)	# tmp97, el
	.loc 1 165 0
	cmpq	$0, -40(%rbp)	#, el
	je	.L9	#,
	.loc 1 166 0
	movq	-40(%rbp), %rax	# el, tmp98
	movq	(%rax), %rax	# el_2->next, empty_elt_loc_lists.2
	movq	%rax, empty_elt_loc_lists(%rip)	# empty_elt_loc_lists.2, empty_elt_loc_lists
	jmp	.L10	#
.L9:
.LBB5:
	.loc 1 168 0
	movq	$cselib_obstack, -32(%rbp)	#, __h
.LBB6:
	movq	-32(%rbp), %rax	# __h, tmp99
	movq	%rax, -24(%rbp)	# tmp99, __o
	movl	$24, -44(%rbp)	#, __len
	movq	-24(%rbp), %rax	# __o, tmp100
	movq	32(%rax), %rax	# __o_5->chunk_limit, D.12717
	movq	%rax, %rdx	# D.12717, D.12718
	movq	-24(%rbp), %rax	# __o, tmp101
	movq	24(%rax), %rax	# __o_5->next_free, D.12717
	subq	%rax, %rdx	# D.12718, D.12718
	movl	-44(%rbp), %eax	# __len, tmp102
	cltq
	cmpq	%rax, %rdx	# D.12718, D.12718
	jge	.L11	#,
	.loc 1 168 0 is_stmt 0 discriminator 1
	movl	-44(%rbp), %edx	# __len, tmp103
	movq	-24(%rbp), %rax	# __o, tmp104
	movl	%edx, %esi	# tmp103,
	movq	%rax, %rdi	# tmp104,
	call	_obstack_newchunk	#
.L11:
	.loc 1 168 0 discriminator 2
	movq	-24(%rbp), %rax	# __o, tmp105
	movq	24(%rax), %rdx	# __o_5->next_free, D.12717
	movl	-44(%rbp), %eax	# __len, tmp106
	cltq
	addq	%rax, %rdx	# D.12719, D.12717
	movq	-24(%rbp), %rax	# __o, tmp107
	movq	%rdx, 24(%rax)	# D.12717, __o_5->next_free
.LBE6:
.LBB7:
	movq	-32(%rbp), %rax	# __h, tmp108
	movq	%rax, -16(%rbp)	# tmp108, __o1
	movq	-16(%rbp), %rax	# __o1, tmp109
	movq	16(%rax), %rax	# __o1_16->object_base, tmp110
	movq	%rax, -8(%rbp)	# tmp110, value
	movq	-16(%rbp), %rax	# __o1, tmp111
	movq	24(%rax), %rax	# __o1_16->next_free, D.12717
	cmpq	-8(%rbp), %rax	# value, D.12717
	jne	.L12	#,
	.loc 1 168 0 discriminator 1
	movq	-16(%rbp), %rax	# __o1, tmp112
	movzbl	80(%rax), %edx	# __o1_16->maybe_empty_object, tmp115
	orl	$2, %edx	#, tmp116
	movb	%dl, 80(%rax)	# tmp116, __o1_16->maybe_empty_object
.L12:
	.loc 1 168 0 discriminator 2
	movq	-16(%rbp), %rax	# __o1, tmp117
	movq	24(%rax), %rax	# __o1_16->next_free, D.12717
	movq	%rax, %rdx	# D.12717, D.12718
	movq	-16(%rbp), %rax	# __o1, tmp118
	movl	48(%rax), %eax	# __o1_16->alignment_mask, D.12720
	cltq
	addq	%rax, %rdx	# D.12718, D.12718
	movq	-16(%rbp), %rax	# __o1, tmp119
	movl	48(%rax), %eax	# __o1_16->alignment_mask, D.12720
	notl	%eax	# D.12720
	cltq
	andq	%rdx, %rax	# D.12718, D.12718
	movq	%rax, %rdx	# D.12718, D.12717
	movq	-16(%rbp), %rax	# __o1, tmp120
	movq	%rdx, 24(%rax)	# D.12717, __o1_16->next_free
	movq	-16(%rbp), %rax	# __o1, tmp121
	movq	24(%rax), %rax	# __o1_16->next_free, D.12717
	movq	%rax, %rdx	# D.12717, D.12718
	movq	-16(%rbp), %rax	# __o1, tmp122
	movq	8(%rax), %rax	# __o1_16->chunk, D.12721
	movq	%rdx, %rcx	# D.12718, D.12718
	subq	%rax, %rcx	# D.12718, D.12718
	movq	-16(%rbp), %rax	# __o1, tmp123
	movq	32(%rax), %rax	# __o1_16->chunk_limit, D.12717
	movq	%rax, %rdx	# D.12717, D.12718
	movq	-16(%rbp), %rax	# __o1, tmp124
	movq	8(%rax), %rax	# __o1_16->chunk, D.12721
	subq	%rax, %rdx	# D.12718, D.12718
	movq	%rdx, %rax	# D.12718, D.12718
	cmpq	%rax, %rcx	# D.12718, D.12718
	jle	.L13	#,
	.loc 1 168 0 discriminator 1
	movq	-16(%rbp), %rax	# __o1, tmp125
	movq	32(%rax), %rdx	# __o1_16->chunk_limit, D.12717
	movq	-16(%rbp), %rax	# __o1, tmp126
	movq	%rdx, 24(%rax)	# D.12717, __o1_16->next_free
.L13:
	.loc 1 168 0 discriminator 2
	movq	-16(%rbp), %rax	# __o1, tmp127
	movq	24(%rax), %rdx	# __o1_16->next_free, D.12717
	movq	-16(%rbp), %rax	# __o1, tmp128
	movq	%rdx, 16(%rax)	# D.12717, __o1_16->object_base
	movq	-8(%rbp), %rax	# value, D.12722
.LBE7:
.LBE5:
	movq	%rax, -40(%rbp)	# el.3, el
.L10:
	.loc 1 170 0 is_stmt 1
	movq	-40(%rbp), %rax	# el, tmp129
	movq	-56(%rbp), %rdx	# next, tmp130
	movq	%rdx, (%rax)	# tmp130, el_1->next
	.loc 1 171 0
	movq	-40(%rbp), %rax	# el, tmp131
	movq	-64(%rbp), %rdx	# loc, tmp132
	movq	%rdx, 8(%rax)	# tmp132, el_1->loc
	.loc 1 172 0
	movq	cselib_current_insn(%rip), %rdx	# cselib_current_insn, cselib_current_insn.4
	movq	-40(%rbp), %rax	# el, tmp133
	movq	%rdx, 16(%rax)	# cselib_current_insn.4, el_1->setting_insn
	.loc 1 173 0
	movq	-40(%rbp), %rax	# el, D.12723
	.loc 1 174 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	new_elt_loc_list, .-new_elt_loc_list
	.type	unchain_one_elt_list, @function
unchain_one_elt_list:
.LFB4:
	.loc 1 182 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# pl, pl
	.loc 1 183 0
	movq	-24(%rbp), %rax	# pl, tmp61
	movq	(%rax), %rax	# *pl_1(D), tmp62
	movq	%rax, -8(%rbp)	# tmp62, l
	.loc 1 185 0
	movq	-8(%rbp), %rax	# l, tmp63
	movq	(%rax), %rdx	# l_2->next, D.12724
	movq	-24(%rbp), %rax	# pl, tmp64
	movq	%rdx, (%rax)	# D.12724, *pl_1(D)
	.loc 1 186 0
	movq	empty_elt_lists(%rip), %rdx	# empty_elt_lists, empty_elt_lists.5
	movq	-8(%rbp), %rax	# l, tmp65
	movq	%rdx, (%rax)	# empty_elt_lists.5, l_2->next
	.loc 1 187 0
	movq	-8(%rbp), %rax	# l, tmp66
	movq	%rax, empty_elt_lists(%rip)	# tmp66, empty_elt_lists
	.loc 1 188 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	unchain_one_elt_list, .-unchain_one_elt_list
	.type	unchain_one_elt_loc_list, @function
unchain_one_elt_loc_list:
.LFB5:
	.loc 1 195 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# pl, pl
	.loc 1 196 0
	movq	-24(%rbp), %rax	# pl, tmp61
	movq	(%rax), %rax	# *pl_1(D), tmp62
	movq	%rax, -8(%rbp)	# tmp62, l
	.loc 1 198 0
	movq	-8(%rbp), %rax	# l, tmp63
	movq	(%rax), %rdx	# l_2->next, D.12725
	movq	-24(%rbp), %rax	# pl, tmp64
	movq	%rdx, (%rax)	# D.12725, *pl_1(D)
	.loc 1 199 0
	movq	empty_elt_loc_lists(%rip), %rdx	# empty_elt_loc_lists, empty_elt_loc_lists.6
	movq	-8(%rbp), %rax	# l, tmp65
	movq	%rdx, (%rax)	# empty_elt_loc_lists.6, l_2->next
	.loc 1 200 0
	movq	-8(%rbp), %rax	# l, tmp66
	movq	%rax, empty_elt_loc_lists(%rip)	# tmp66, empty_elt_loc_lists
	.loc 1 201 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	unchain_one_elt_loc_list, .-unchain_one_elt_loc_list
	.type	unchain_one_value, @function
unchain_one_value:
.LFB6:
	.loc 1 209 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$8, %rsp	#,
	movq	%rdi, -8(%rbp)	# v, v
	.loc 1 210 0
	jmp	.L18	#
.L19:
	.loc 1 211 0
	movq	-8(%rbp), %rax	# v, tmp62
	addq	$24, %rax	#, D.12727
	movq	%rax, %rdi	# D.12727,
	call	unchain_one_elt_list	#
.L18:
	.loc 1 210 0 discriminator 1
	movq	-8(%rbp), %rax	# v, tmp63
	movq	24(%rax), %rax	# v_1(D)->addr_list, D.12726
	testq	%rax, %rax	# D.12726
	jne	.L19	#,
	.loc 1 213 0
	movq	empty_vals(%rip), %rdx	# empty_vals, empty_vals.7
	movq	-8(%rbp), %rax	# v, tmp64
	movq	%rdx, 8(%rax)	# empty_vals.7, v_1(D)->u.next_free
	.loc 1 214 0
	movq	-8(%rbp), %rax	# v, tmp65
	movq	%rax, empty_vals(%rip)	# tmp65, empty_vals
	.loc 1 215 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	unchain_one_value, .-unchain_one_value
	.type	clear_table, @function
clear_table:
.LFB7:
	.loc 1 224 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movl	%edi, -36(%rbp)	# clear_all, clear_all
	.loc 1 227 0
	cmpl	$0, -36(%rbp)	#, clear_all
	je	.L21	#,
	.loc 1 228 0
	movl	$0, -20(%rbp)	#, i
	jmp	.L22	#
.L23:
	.loc 1 229 0 discriminator 2
	movq	reg_values(%rip), %rax	# reg_values, reg_values.8
	movl	-20(%rbp), %edx	# i, tmp72
	addq	$4, %rdx	#, tmp73
	movq	$0, (%rax,%rdx,8)	#, reg_values.8_6->data.te
	.loc 1 228 0 discriminator 2
	addl	$1, -20(%rbp)	#, i
.L22:
	.loc 1 228 0 is_stmt 0 discriminator 1
	movl	cselib_nregs(%rip), %eax	# cselib_nregs, cselib_nregs.9
	cmpl	%eax, -20(%rbp)	# cselib_nregs.9, i
	jb	.L23	#,
	jmp	.L24	#
.L21:
	.loc 1 231 0 is_stmt 1
	movl	$0, -20(%rbp)	#, i
	jmp	.L25	#
.L26:
	.loc 1 232 0 discriminator 2
	movq	reg_values(%rip), %rax	# reg_values, reg_values.10
	movq	used_regs(%rip), %rdx	# used_regs, used_regs.11
	movl	-20(%rbp), %ecx	# i, tmp74
	addq	$8, %rcx	#, tmp75
	movl	(%rdx,%rcx,4), %edx	# used_regs.11_13->data.u, D.12729
	movl	%edx, %edx	# D.12729, tmp76
	addq	$4, %rdx	#, tmp77
	movq	$0, (%rax,%rdx,8)	#, reg_values.10_12->data.te
	.loc 1 231 0 discriminator 2
	addl	$1, -20(%rbp)	#, i
.L25:
	.loc 1 231 0 is_stmt 0 discriminator 1
	movl	-20(%rbp), %edx	# i, D.12728
	movq	used_regs(%rip), %rax	# used_regs, used_regs.12
	movq	8(%rax), %rax	# used_regs.12_10->elements_used, D.12728
	cmpq	%rax, %rdx	# D.12728, D.12728
	jb	.L26	#,
.L24:
	.loc 1 234 0 is_stmt 1
	movl	$0, max_value_regs(%rip)	#, max_value_regs
	.loc 1 236 0
	movq	used_regs(%rip), %rax	# used_regs, used_regs.13
	movq	$0, 8(%rax)	#, used_regs.13_16->elements_used
	.loc 1 238 0
	movq	hash_table(%rip), %rax	# hash_table, hash_table.14
	movq	%rax, %rdi	# hash_table.14,
	call	htab_empty	#
.LBB8:
	.loc 1 239 0
	movq	$cselib_obstack, -16(%rbp)	#, __o
	movq	cselib_startobj(%rip), %rax	# cselib_startobj, tmp78
	movq	%rax, -8(%rbp)	# tmp78, __obj
	movq	-16(%rbp), %rax	# __o, tmp79
	movq	8(%rax), %rax	# __o_18->chunk, D.12730
	cmpq	-8(%rbp), %rax	# __obj, D.12730
	jae	.L27	#,
	.loc 1 239 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# __o, tmp80
	movq	32(%rax), %rax	# __o_18->chunk_limit, D.12731
	cmpq	-8(%rbp), %rax	# __obj, D.12731
	jbe	.L27	#,
	movq	-16(%rbp), %rax	# __o, tmp81
	movq	-8(%rbp), %rdx	# __obj, tmp82
	movq	%rdx, 16(%rax)	# tmp82, __o_18->object_base
	movq	-16(%rbp), %rax	# __o, tmp83
	movq	16(%rax), %rdx	# __o_18->object_base, D.12731
	movq	-16(%rbp), %rax	# __o, tmp84
	movq	%rdx, 24(%rax)	# D.12731, __o_18->next_free
	jmp	.L28	#
.L27:
	.loc 1 239 0 discriminator 2
	movq	-8(%rbp), %rdx	# __obj, tmp85
	movq	-16(%rbp), %rax	# __o, tmp86
	movq	%rdx, %rsi	# tmp85,
	movq	%rax, %rdi	# tmp86,
	call	obstack_free	#
.L28:
.LBE8:
	.loc 1 241 0 is_stmt 1
	movq	$0, empty_vals(%rip)	#, empty_vals
	.loc 1 242 0
	movq	$0, empty_elt_lists(%rip)	#, empty_elt_lists
	.loc 1 243 0
	movq	$0, empty_elt_loc_lists(%rip)	#, empty_elt_loc_lists
	.loc 1 244 0
	movl	$0, n_useless_values(%rip)	#, n_useless_values
	.loc 1 246 0
	movl	$0, next_unknown_value(%rip)	#, next_unknown_value
	.loc 1 247 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	clear_table, .-clear_table
	.section	.rodata
.LC0:
	.string	"cselib.c"
	.text
	.type	entry_and_rtx_equal_p, @function
entry_and_rtx_equal_p:
.LFB8:
	.loc 1 257 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# entry, entry
	movq	%rsi, -48(%rbp)	# x_arg, x_arg
	.loc 1 259 0
	movq	-40(%rbp), %rax	# entry, tmp74
	movq	%rax, -8(%rbp)	# tmp74, v
	.loc 1 260 0
	movq	-48(%rbp), %rax	# x_arg, tmp75
	movq	%rax, -16(%rbp)	# tmp75, x
	.loc 1 261 0
	movq	-16(%rbp), %rax	# x, tmp76
	movzbl	2(%rax), %eax	# x_7->mode, D.12733
	movzbl	%al, %eax	# D.12733, tmp77
	movl	%eax, -28(%rbp)	# tmp77, mode
	.loc 1 263 0
	movq	-16(%rbp), %rax	# x, tmp78
	movzwl	(%rax), %eax	# x_7->code, D.12734
	cmpw	$54, %ax	#, D.12734
	je	.L30	#,
	.loc 1 264 0
	cmpl	$0, -28(%rbp)	#, mode
	jne	.L31	#,
	.loc 1 264 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# x, tmp79
	movzwl	(%rax), %eax	# x_7->code, D.12734
	cmpw	$55, %ax	#, D.12734
	jne	.L31	#,
.L30:
	.loc 1 265 0 is_stmt 1
	movl	$__FUNCTION__.11007, %edx	#,
	movl	$265, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L31:
	.loc 1 266 0
	movq	-8(%rbp), %rax	# v, tmp80
	movq	8(%rax), %rax	# v_5->u.val_rtx, D.12735
	movzbl	2(%rax), %eax	# _12->mode, D.12733
	movzbl	%al, %eax	# D.12733, D.12736
	cmpl	-28(%rbp), %eax	# mode, D.12736
	je	.L32	#,
	.loc 1 267 0
	movl	$0, %eax	#, D.12732
	jmp	.L33	#
.L32:
	.loc 1 270 0
	movq	-16(%rbp), %rax	# x, tmp81
	movzwl	(%rax), %eax	# x_7->code, D.12734
	cmpw	$58, %ax	#, D.12734
	jne	.L34	#,
	.loc 1 271 0
	movq	-16(%rbp), %rax	# x, tmp82
	movq	8(%rax), %rax	# x_7->fld[0].rtx, D.12735
	movzwl	(%rax), %eax	# _17->code, D.12734
	cmpw	$54, %ax	#, D.12734
	je	.L35	#,
	.loc 1 272 0
	movq	-16(%rbp), %rax	# x, tmp83
	movq	8(%rax), %rax	# x_7->fld[0].rtx, D.12735
	movzwl	(%rax), %eax	# _19->code, D.12734
	cmpw	$55, %ax	#, D.12734
	jne	.L34	#,
.L35:
	.loc 1 273 0
	movq	-16(%rbp), %rax	# x, tmp84
	movq	8(%rax), %rax	# x_7->fld[0].rtx, tmp85
	movq	%rax, -16(%rbp)	# tmp85, x
.L34:
	.loc 1 277 0
	movq	-8(%rbp), %rax	# v, tmp86
	movq	16(%rax), %rax	# v_5->locs, tmp87
	movq	%rax, -24(%rbp)	# tmp87, l
	jmp	.L36	#
.L38:
	.loc 1 278 0
	movq	-24(%rbp), %rax	# l, tmp88
	movq	8(%rax), %rax	# l_1->loc, D.12735
	movq	-16(%rbp), %rdx	# x, tmp89
	movq	%rdx, %rsi	# tmp89,
	movq	%rax, %rdi	# D.12735,
	call	rtx_equal_for_cselib_p	#
	testl	%eax, %eax	# D.12732
	je	.L37	#,
	.loc 1 279 0
	movl	$1, %eax	#, D.12732
	jmp	.L33	#
.L37:
	.loc 1 277 0
	movq	-24(%rbp), %rax	# l, tmp90
	movq	(%rax), %rax	# l_1->next, tmp91
	movq	%rax, -24(%rbp)	# tmp91, l
.L36:
	.loc 1 277 0 is_stmt 0 discriminator 1
	cmpq	$0, -24(%rbp)	#, l
	jne	.L38	#,
	.loc 1 281 0 is_stmt 1
	movl	$0, %eax	#, D.12732
.L33:
	.loc 1 282 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	entry_and_rtx_equal_p, .-entry_and_rtx_equal_p
	.type	get_value_hash, @function
get_value_hash:
.LFB9:
	.loc 1 291 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# entry, entry
	.loc 1 292 0
	movq	-24(%rbp), %rax	# entry, tmp61
	movq	%rax, -8(%rbp)	# tmp61, v
	.loc 1 293 0
	movq	-8(%rbp), %rax	# v, tmp62
	movl	(%rax), %eax	# v_2->value, D.12738
	.loc 1 294 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	get_value_hash, .-get_value_hash
	.globl	references_value_p
	.type	references_value_p, @function
references_value_p:
.LFB10:
	.loc 1 305 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# x, x
	movl	%esi, -44(%rbp)	# only_useless, only_useless
	.loc 1 306 0
	movq	-40(%rbp), %rax	# x, tmp82
	movzwl	(%rax), %eax	# x_4(D)->code, D.12740
	movzwl	%ax, %eax	# D.12740, tmp83
	movl	%eax, -12(%rbp)	# tmp83, code
	.loc 1 307 0
	movl	-12(%rbp), %eax	# code, code.15
	cltq
	movq	rtx_format(,%rax,8), %rax	# rtx_format, tmp85
	movq	%rax, -8(%rbp)	# tmp85, fmt
	.loc 1 310 0
	movq	-40(%rbp), %rax	# x, tmp86
	movzwl	(%rax), %eax	# x_4(D)->code, D.12740
	cmpw	$60, %ax	#, D.12740
	jne	.L42	#,
	.loc 1 311 0
	cmpl	$0, -44(%rbp)	#, only_useless
	je	.L43	#,
	.loc 1 311 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# x, tmp87
	movq	8(%rax), %rax	# x_4(D)->fld[0].rt_cselib, D.12741
	movq	16(%rax), %rax	# _11->locs, D.12742
	testq	%rax, %rax	# D.12742
	jne	.L42	#,
.L43:
	.loc 1 312 0 is_stmt 1
	movl	$1, %eax	#, D.12739
	jmp	.L44	#
.L42:
	.loc 1 314 0
	movl	-12(%rbp), %eax	# code, code.16
	cltq
	movzbl	rtx_length(%rax), %eax	# rtx_length, D.12743
	movzbl	%al, %eax	# D.12743, D.12739
	subl	$1, %eax	#, tmp89
	movl	%eax, -20(%rbp)	# tmp89, i
	jmp	.L45	#
.L51:
	.loc 1 316 0
	movl	-20(%rbp), %eax	# i, tmp90
	movslq	%eax, %rdx	# tmp90, D.12744
	movq	-8(%rbp), %rax	# fmt, tmp91
	addq	%rdx, %rax	# D.12744, D.12745
	movzbl	(%rax), %eax	# *_19, D.12746
	cmpb	$101, %al	#, D.12746
	jne	.L46	#,
	.loc 1 316 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# x, tmp92
	movl	-20(%rbp), %edx	# i, tmp94
	movslq	%edx, %rdx	# tmp94, tmp93
	movq	8(%rax,%rdx,8), %rax	# x_4(D)->fld[i_1].rtx, D.12747
	movl	-44(%rbp), %edx	# only_useless, tmp95
	movl	%edx, %esi	# tmp95,
	movq	%rax, %rdi	# D.12747,
	call	references_value_p	#
	testl	%eax, %eax	# D.12739
	je	.L46	#,
	.loc 1 317 0 is_stmt 1
	movl	$1, %eax	#, D.12739
	jmp	.L44	#
.L46:
	.loc 1 318 0
	movl	-20(%rbp), %eax	# i, tmp96
	movslq	%eax, %rdx	# tmp96, D.12744
	movq	-8(%rbp), %rax	# fmt, tmp97
	addq	%rdx, %rax	# D.12744, D.12745
	movzbl	(%rax), %eax	# *_25, D.12746
	cmpb	$69, %al	#, D.12746
	jne	.L47	#,
	.loc 1 319 0
	movl	$0, -16(%rbp)	#, j
	jmp	.L48	#
.L50:
	.loc 1 320 0
	movq	-40(%rbp), %rax	# x, tmp98
	movl	-20(%rbp), %edx	# i, tmp100
	movslq	%edx, %rdx	# tmp100, tmp99
	movq	8(%rax,%rdx,8), %rax	# x_4(D)->fld[i_1].rtvec, D.12748
	movl	-16(%rbp), %edx	# j, tmp102
	movslq	%edx, %rdx	# tmp102, tmp101
	movq	8(%rax,%rdx,8), %rax	# _30->elem, D.12747
	movl	-44(%rbp), %edx	# only_useless, tmp103
	movl	%edx, %esi	# tmp103,
	movq	%rax, %rdi	# D.12747,
	call	references_value_p	#
	testl	%eax, %eax	# D.12739
	je	.L49	#,
	.loc 1 321 0
	movl	$1, %eax	#, D.12739
	jmp	.L44	#
.L49:
	.loc 1 319 0
	addl	$1, -16(%rbp)	#, j
.L48:
	.loc 1 319 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# x, tmp104
	movl	-20(%rbp), %edx	# i, tmp106
	movslq	%edx, %rdx	# tmp106, tmp105
	movq	8(%rax,%rdx,8), %rax	# x_4(D)->fld[i_1].rtvec, D.12748
	movl	(%rax), %eax	# _28->num_elem, D.12739
	cmpl	-16(%rbp), %eax	# j, D.12739
	jg	.L50	#,
.L47:
	.loc 1 314 0 is_stmt 1
	subl	$1, -20(%rbp)	#, i
.L45:
	.loc 1 314 0 is_stmt 0 discriminator 1
	cmpl	$0, -20(%rbp)	#, i
	jns	.L51	#,
	.loc 1 324 0 is_stmt 1
	movl	$0, %eax	#, D.12739
.L44:
	.loc 1 325 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	references_value_p, .-references_value_p
	.type	discard_useless_locs, @function
discard_useless_locs:
.LFB11:
	.loc 1 335 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# x, x
	movq	%rsi, -48(%rbp)	# info, info
	.loc 1 336 0
	movq	-40(%rbp), %rax	# x, tmp71
	movq	(%rax), %rax	# *x_2(D), tmp72
	movq	%rax, -8(%rbp)	# tmp72, v
	.loc 1 337 0
	movq	-8(%rbp), %rax	# v, tmp76
	addq	$16, %rax	#, tmp75
	movq	%rax, -16(%rbp)	# tmp75, p
	.loc 1 338 0
	movq	-8(%rbp), %rax	# v, tmp77
	movq	16(%rax), %rax	# v_3->locs, D.12749
	testq	%rax, %rax	# D.12749
	setne	%al	#, D.12750
	movzbl	%al, %eax	# D.12750, tmp78
	movl	%eax, -20(%rbp)	# tmp78, had_locs
	.loc 1 340 0
	jmp	.L53	#
.L55:
	.loc 1 342 0
	movq	-16(%rbp), %rax	# p, tmp79
	movq	(%rax), %rax	# *p_1, D.12749
	movq	8(%rax), %rax	# _9->loc, D.12751
	movl	$1, %esi	#,
	movq	%rax, %rdi	# D.12751,
	call	references_value_p	#
	testl	%eax, %eax	# D.12752
	je	.L54	#,
	.loc 1 343 0
	movq	-16(%rbp), %rax	# p, tmp80
	movq	%rax, %rdi	# tmp80,
	call	unchain_one_elt_loc_list	#
	jmp	.L53	#
.L54:
	.loc 1 345 0
	movq	-16(%rbp), %rax	# p, tmp81
	movq	(%rax), %rax	# *p_1, D.12749
	movq	%rax, -16(%rbp)	# D.12749, p
.L53:
	.loc 1 340 0 discriminator 1
	movq	-16(%rbp), %rax	# p, tmp82
	movq	(%rax), %rax	# *p_1, D.12749
	testq	%rax, %rax	# D.12749
	jne	.L55	#,
	.loc 1 348 0
	cmpl	$0, -20(%rbp)	#, had_locs
	je	.L56	#,
	.loc 1 348 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# v, tmp83
	movq	16(%rax), %rax	# v_3->locs, D.12749
	testq	%rax, %rax	# D.12749
	jne	.L56	#,
	.loc 1 350 0 is_stmt 1
	movl	n_useless_values(%rip), %eax	# n_useless_values, n_useless_values.17
	addl	$1, %eax	#, n_useless_values.18
	movl	%eax, n_useless_values(%rip)	# n_useless_values.18, n_useless_values
	.loc 1 351 0
	movl	$1, values_became_useless(%rip)	#, values_became_useless
.L56:
	.loc 1 353 0
	movl	$1, %eax	#, D.12752
	.loc 1 354 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	discard_useless_locs, .-discard_useless_locs
	.type	discard_useless_values, @function
discard_useless_values:
.LFB12:
	.loc 1 362 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# x, x
	movq	%rsi, -32(%rbp)	# info, info
	.loc 1 363 0
	movq	-24(%rbp), %rax	# x, tmp65
	movq	(%rax), %rax	# *x_1(D), tmp66
	movq	%rax, -8(%rbp)	# tmp66, v
	.loc 1 365 0
	movq	-8(%rbp), %rax	# v, tmp67
	movq	16(%rax), %rax	# v_2->locs, D.12753
	testq	%rax, %rax	# D.12753
	jne	.L59	#,
	.loc 1 367 0
	movq	hash_table(%rip), %rax	# hash_table, hash_table.19
	movq	-24(%rbp), %rdx	# x, tmp68
	movq	%rdx, %rsi	# tmp68,
	movq	%rax, %rdi	# hash_table.19,
	call	htab_clear_slot	#
	.loc 1 368 0
	movq	-8(%rbp), %rax	# v, tmp69
	movq	%rax, %rdi	# tmp69,
	call	unchain_one_value	#
	.loc 1 369 0
	movl	n_useless_values(%rip), %eax	# n_useless_values, n_useless_values.20
	subl	$1, %eax	#, n_useless_values.21
	movl	%eax, n_useless_values(%rip)	# n_useless_values.21, n_useless_values
.L59:
	.loc 1 372 0
	movl	$1, %eax	#, D.12754
	.loc 1 373 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	discard_useless_values, .-discard_useless_values
	.type	remove_useless_values, @function
remove_useless_values:
.LFB13:
	.loc 1 380 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
.L62:
	.loc 1 385 0 discriminator 1
	movl	$0, values_became_useless(%rip)	#, values_became_useless
	.loc 1 386 0 discriminator 1
	movq	hash_table(%rip), %rax	# hash_table, hash_table.22
	movl	$0, %edx	#,
	movl	$discard_useless_locs, %esi	#,
	movq	%rax, %rdi	# hash_table.22,
	call	htab_traverse	#
	.loc 1 388 0 discriminator 1
	movl	values_became_useless(%rip), %eax	# values_became_useless, values_became_useless.23
	testl	%eax, %eax	# values_became_useless.23
	jne	.L62	#,
	.loc 1 391 0
	movq	hash_table(%rip), %rax	# hash_table, hash_table.24
	movl	$0, %edx	#,
	movl	$discard_useless_values, %esi	#,
	movq	%rax, %rdi	# hash_table.24,
	call	htab_traverse	#
	.loc 1 393 0
	movl	n_useless_values(%rip), %eax	# n_useless_values, n_useless_values.25
	testl	%eax, %eax	# n_useless_values.25
	je	.L61	#,
	.loc 1 394 0
	movl	$__FUNCTION__.11048, %edx	#,
	movl	$394, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L61:
	.loc 1 395 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	remove_useless_values, .-remove_useless_values
	.globl	rtx_equal_for_cselib_p
	.type	rtx_equal_for_cselib_p, @function
rtx_equal_for_cselib_p:
.LFB14:
	.loc 1 403 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$112, %rsp	#,
	movq	%rdi, -104(%rbp)	# x, x
	movq	%rsi, -112(%rbp)	# y, y
	.loc 1 408 0
	movq	-104(%rbp), %rax	# x, tmp120
	movzwl	(%rax), %eax	# x_8(D)->code, D.12756
	cmpw	$61, %ax	#, D.12756
	je	.L65	#,
	.loc 1 408 0 is_stmt 0 discriminator 1
	movq	-104(%rbp), %rax	# x, tmp121
	movzwl	(%rax), %eax	# x_8(D)->code, D.12756
	cmpw	$66, %ax	#, D.12756
	jne	.L66	#,
.L65:
.LBB9:
	.loc 1 410 0 is_stmt 1
	movq	-104(%rbp), %rax	# x, tmp122
	movzbl	2(%rax), %eax	# x_8(D)->mode, D.12757
	movzbl	%al, %ecx	# D.12757, D.12758
	movq	-104(%rbp), %rax	# x, tmp123
	movl	$0, %edx	#,
	movl	%ecx, %esi	# D.12758,
	movq	%rax, %rdi	# tmp123,
	call	cselib_lookup	#
	movq	%rax, -56(%rbp)	# tmp124, e
	.loc 1 412 0
	cmpq	$0, -56(%rbp)	#, e
	je	.L66	#,
	.loc 1 413 0
	movq	-56(%rbp), %rax	# e, tmp125
	movq	8(%rax), %rax	# e_13->u.val_rtx, tmp126
	movq	%rax, -104(%rbp)	# tmp126, x
.L66:
.LBE9:
	.loc 1 416 0
	movq	-112(%rbp), %rax	# y, tmp127
	movzwl	(%rax), %eax	# y_15(D)->code, D.12756
	cmpw	$61, %ax	#, D.12756
	je	.L67	#,
	.loc 1 416 0 is_stmt 0 discriminator 1
	movq	-112(%rbp), %rax	# y, tmp128
	movzwl	(%rax), %eax	# y_15(D)->code, D.12756
	cmpw	$66, %ax	#, D.12756
	jne	.L68	#,
.L67:
.LBB10:
	.loc 1 418 0 is_stmt 1
	movq	-112(%rbp), %rax	# y, tmp129
	movzbl	2(%rax), %eax	# y_15(D)->mode, D.12757
	movzbl	%al, %ecx	# D.12757, D.12758
	movq	-112(%rbp), %rax	# y, tmp130
	movl	$0, %edx	#,
	movl	%ecx, %esi	# D.12758,
	movq	%rax, %rdi	# tmp130,
	call	cselib_lookup	#
	movq	%rax, -48(%rbp)	# tmp131, e
	.loc 1 420 0
	cmpq	$0, -48(%rbp)	#, e
	je	.L68	#,
	.loc 1 421 0
	movq	-48(%rbp), %rax	# e, tmp132
	movq	8(%rax), %rax	# e_20->u.val_rtx, tmp133
	movq	%rax, -112(%rbp)	# tmp133, y
.L68:
.LBE10:
	.loc 1 424 0
	movq	-104(%rbp), %rax	# x, tmp134
	cmpq	-112(%rbp), %rax	# y, tmp134
	jne	.L69	#,
	.loc 1 425 0
	movl	$1, %eax	#, D.12755
	jmp	.L70	#
.L69:
	.loc 1 427 0
	movq	-104(%rbp), %rax	# x, tmp135
	movzwl	(%rax), %eax	# x_1->code, D.12756
	cmpw	$60, %ax	#, D.12756
	jne	.L71	#,
	.loc 1 427 0 is_stmt 0 discriminator 1
	movq	-112(%rbp), %rax	# y, tmp136
	movzwl	(%rax), %eax	# y_2->code, D.12756
	cmpw	$60, %ax	#, D.12756
	jne	.L71	#,
	.loc 1 428 0 is_stmt 1
	movq	-104(%rbp), %rax	# x, tmp137
	movq	8(%rax), %rdx	# x_1->fld[0].rt_cselib, D.12759
	movq	-112(%rbp), %rax	# y, tmp138
	movq	8(%rax), %rax	# y_2->fld[0].rt_cselib, D.12759
	cmpq	%rax, %rdx	# D.12759, D.12759
	sete	%al	#, D.12760
	movzbl	%al, %eax	# D.12760, D.12755
	jmp	.L70	#
.L71:
	.loc 1 430 0
	movq	-104(%rbp), %rax	# x, tmp139
	movzwl	(%rax), %eax	# x_1->code, D.12756
	cmpw	$60, %ax	#, D.12756
	jne	.L72	#,
.LBB11:
	.loc 1 432 0
	movq	-104(%rbp), %rax	# x, tmp140
	movq	8(%rax), %rax	# x_1->fld[0].rt_cselib, tmp141
	movq	%rax, -40(%rbp)	# tmp141, e
	.loc 1 435 0
	movq	-40(%rbp), %rax	# e, tmp142
	movq	16(%rax), %rax	# e_30->locs, tmp143
	movq	%rax, -72(%rbp)	# tmp143, l
	jmp	.L73	#
.L77:
.LBB12:
	.loc 1 437 0
	movq	-72(%rbp), %rax	# l, tmp144
	movq	8(%rax), %rax	# l_4->loc, tmp145
	movq	%rax, -32(%rbp)	# tmp145, t
	.loc 1 440 0
	movq	-32(%rbp), %rax	# t, tmp146
	movzwl	(%rax), %eax	# t_32->code, D.12756
	cmpw	$61, %ax	#, D.12756
	je	.L74	#,
	.loc 1 440 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# t, tmp147
	movzwl	(%rax), %eax	# t_32->code, D.12756
	cmpw	$66, %ax	#, D.12756
	jne	.L75	#,
.L74:
	.loc 1 441 0 is_stmt 1
	jmp	.L76	#
.L75:
	.loc 1 442 0
	movq	-112(%rbp), %rdx	# y, tmp148
	movq	-32(%rbp), %rax	# t, tmp149
	movq	%rdx, %rsi	# tmp148,
	movq	%rax, %rdi	# tmp149,
	call	rtx_equal_for_cselib_p	#
	testl	%eax, %eax	# D.12755
	je	.L76	#,
	.loc 1 443 0
	movl	$1, %eax	#, D.12755
	jmp	.L70	#
.L76:
.LBE12:
	.loc 1 435 0
	movq	-72(%rbp), %rax	# l, tmp150
	movq	(%rax), %rax	# l_4->next, tmp151
	movq	%rax, -72(%rbp)	# tmp151, l
.L73:
	.loc 1 435 0 is_stmt 0 discriminator 1
	cmpq	$0, -72(%rbp)	#, l
	jne	.L77	#,
	.loc 1 446 0 is_stmt 1
	movl	$0, %eax	#, D.12755
	jmp	.L70	#
.L72:
.LBE11:
	.loc 1 449 0
	movq	-112(%rbp), %rax	# y, tmp152
	movzwl	(%rax), %eax	# y_2->code, D.12756
	cmpw	$60, %ax	#, D.12756
	jne	.L78	#,
.LBB13:
	.loc 1 451 0
	movq	-112(%rbp), %rax	# y, tmp153
	movq	8(%rax), %rax	# y_2->fld[0].rt_cselib, tmp154
	movq	%rax, -24(%rbp)	# tmp154, e
	.loc 1 454 0
	movq	-24(%rbp), %rax	# e, tmp155
	movq	16(%rax), %rax	# e_40->locs, tmp156
	movq	%rax, -64(%rbp)	# tmp156, l
	jmp	.L79	#
.L83:
.LBB14:
	.loc 1 456 0
	movq	-64(%rbp), %rax	# l, tmp157
	movq	8(%rax), %rax	# l_5->loc, tmp158
	movq	%rax, -16(%rbp)	# tmp158, t
	.loc 1 458 0
	movq	-16(%rbp), %rax	# t, tmp159
	movzwl	(%rax), %eax	# t_42->code, D.12756
	cmpw	$61, %ax	#, D.12756
	je	.L80	#,
	.loc 1 458 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# t, tmp160
	movzwl	(%rax), %eax	# t_42->code, D.12756
	cmpw	$66, %ax	#, D.12756
	jne	.L81	#,
.L80:
	.loc 1 459 0 is_stmt 1
	jmp	.L82	#
.L81:
	.loc 1 460 0
	movq	-16(%rbp), %rdx	# t, tmp161
	movq	-104(%rbp), %rax	# x, tmp162
	movq	%rdx, %rsi	# tmp161,
	movq	%rax, %rdi	# tmp162,
	call	rtx_equal_for_cselib_p	#
	testl	%eax, %eax	# D.12755
	je	.L82	#,
	.loc 1 461 0
	movl	$1, %eax	#, D.12755
	jmp	.L70	#
.L82:
.LBE14:
	.loc 1 454 0
	movq	-64(%rbp), %rax	# l, tmp163
	movq	(%rax), %rax	# l_5->next, tmp164
	movq	%rax, -64(%rbp)	# tmp164, l
.L79:
	.loc 1 454 0 is_stmt 0 discriminator 1
	cmpq	$0, -64(%rbp)	#, l
	jne	.L83	#,
	.loc 1 464 0 is_stmt 1
	movl	$0, %eax	#, D.12755
	jmp	.L70	#
.L78:
.LBE13:
	.loc 1 467 0
	movq	-104(%rbp), %rax	# x, tmp165
	movzwl	(%rax), %edx	# x_1->code, D.12756
	movq	-112(%rbp), %rax	# y, tmp166
	movzwl	(%rax), %eax	# y_2->code, D.12756
	cmpw	%ax, %dx	# D.12756, D.12756
	jne	.L84	#,
	.loc 1 467 0 is_stmt 0 discriminator 1
	movq	-104(%rbp), %rax	# x, tmp167
	movzbl	2(%rax), %edx	# x_1->mode, D.12757
	movq	-112(%rbp), %rax	# y, tmp168
	movzbl	2(%rax), %eax	# y_2->mode, D.12757
	cmpb	%al, %dl	# D.12757, D.12757
	je	.L85	#,
.L84:
	.loc 1 468 0 is_stmt 1
	movl	$0, %eax	#, D.12755
	jmp	.L70	#
.L85:
	.loc 1 471 0
	movq	-104(%rbp), %rax	# x, tmp169
	movzwl	(%rax), %eax	# x_1->code, D.12756
	cmpw	$67, %ax	#, D.12756
	jne	.L86	#,
	.loc 1 472 0
	movq	-104(%rbp), %rax	# x, tmp170
	movq	8(%rax), %rdx	# x_1->fld[0].rtx, D.12761
	movq	-112(%rbp), %rax	# y, tmp171
	movq	8(%rax), %rax	# y_2->fld[0].rtx, D.12761
	cmpq	%rax, %rdx	# D.12761, D.12761
	sete	%al	#, D.12760
	movzbl	%al, %eax	# D.12760, D.12755
	jmp	.L70	#
.L86:
	.loc 1 474 0
	movq	-104(%rbp), %rax	# x, tmp172
	movzwl	(%rax), %eax	# x_1->code, D.12756
	movzwl	%ax, %eax	# D.12756, tmp173
	movl	%eax, -76(%rbp)	# tmp173, code
	.loc 1 475 0
	movl	-76(%rbp), %eax	# code, code.26
	cltq
	movq	rtx_format(,%rax,8), %rax	# rtx_format, tmp175
	movq	%rax, -8(%rbp)	# tmp175, fmt
	.loc 1 477 0
	movl	-76(%rbp), %eax	# code, code.27
	cltq
	movzbl	rtx_length(%rax), %eax	# rtx_length, D.12757
	movzbl	%al, %eax	# D.12757, D.12755
	subl	$1, %eax	#, tmp177
	movl	%eax, -84(%rbp)	# tmp177, i
	jmp	.L87	#
.L106:
.LBB15:
	.loc 1 481 0
	movl	-84(%rbp), %eax	# i, tmp178
	movslq	%eax, %rdx	# tmp178, D.12762
	movq	-8(%rbp), %rax	# fmt, tmp179
	addq	%rdx, %rax	# D.12762, D.12763
	movzbl	(%rax), %eax	# *_67, D.12764
	movsbl	%al, %eax	# D.12764, D.12755
	subl	$48, %eax	#, tmp180
	cmpl	$71, %eax	#, tmp180
	ja	.L88	#,
	movl	%eax, %eax	# tmp180, tmp181
	movq	.L90(,%rax,8), %rax	#, tmp182
	jmp	*%rax	# tmp182
	.section	.rodata
	.align 8
	.align 4
.L90:
	.quad	.L107
	.quad	.L88
	.quad	.L88
	.quad	.L88
	.quad	.L88
	.quad	.L88
	.quad	.L88
	.quad	.L88
	.quad	.L88
	.quad	.L88
	.quad	.L88
	.quad	.L88
	.quad	.L88
	.quad	.L88
	.quad	.L88
	.quad	.L88
	.quad	.L88
	.quad	.L88
	.quad	.L88
	.quad	.L88
	.quad	.L88
	.quad	.L91
	.quad	.L88
	.quad	.L88
	.quad	.L88
	.quad	.L88
	.quad	.L88
	.quad	.L88
	.quad	.L88
	.quad	.L88
	.quad	.L88
	.quad	.L88
	.quad	.L88
	.quad	.L88
	.quad	.L88
	.quad	.L92
	.quad	.L88
	.quad	.L88
	.quad	.L91
	.quad	.L88
	.quad	.L88
	.quad	.L88
	.quad	.L88
	.quad	.L88
	.quad	.L88
	.quad	.L88
	.quad	.L88
	.quad	.L88
	.quad	.L88
	.quad	.L88
	.quad	.L88
	.quad	.L88
	.quad	.L88
	.quad	.L93
	.quad	.L88
	.quad	.L88
	.quad	.L88
	.quad	.L94
	.quad	.L88
	.quad	.L88
	.quad	.L88
	.quad	.L88
	.quad	.L94
	.quad	.L88
	.quad	.L88
	.quad	.L88
	.quad	.L88
	.quad	.L92
	.quad	.L107
	.quad	.L107
	.quad	.L88
	.quad	.L96
	.text
.L96:
	.loc 1 484 0
	movq	-104(%rbp), %rax	# x, tmp183
	movl	-84(%rbp), %edx	# i, tmp185
	movslq	%edx, %rdx	# tmp185, tmp184
	movq	8(%rax,%rdx,8), %rcx	# x_1->fld[i_3].rtwint, D.12765
	movq	-112(%rbp), %rax	# y, tmp186
	movl	-84(%rbp), %edx	# i, tmp188
	movslq	%edx, %rdx	# tmp188, tmp187
	movq	8(%rax,%rdx,8), %rax	# y_2->fld[i_3].rtwint, D.12765
	cmpq	%rax, %rcx	# D.12765, D.12765
	je	.L97	#,
	.loc 1 485 0
	movl	$0, %eax	#, D.12755
	jmp	.L70	#
.L97:
	.loc 1 486 0
	jmp	.L98	#
.L94:
	.loc 1 490 0
	movq	-104(%rbp), %rax	# x, tmp189
	movl	-84(%rbp), %edx	# i, tmp191
	movslq	%edx, %rdx	# tmp191, tmp190
	movl	8(%rax,%rdx,8), %ecx	# x_1->fld[i_3].rtint, D.12755
	movq	-112(%rbp), %rax	# y, tmp192
	movl	-84(%rbp), %edx	# i, tmp194
	movslq	%edx, %rdx	# tmp194, tmp193
	movl	8(%rax,%rdx,8), %eax	# y_2->fld[i_3].rtint, D.12755
	cmpl	%eax, %ecx	# D.12755, D.12755
	je	.L99	#,
	.loc 1 491 0
	movl	$0, %eax	#, D.12755
	jmp	.L70	#
.L99:
	.loc 1 492 0
	jmp	.L98	#
.L91:
	.loc 1 497 0
	movq	-104(%rbp), %rax	# x, tmp195
	movl	-84(%rbp), %edx	# i, tmp197
	movslq	%edx, %rdx	# tmp197, tmp196
	movq	8(%rax,%rdx,8), %rax	# x_1->fld[i_3].rtvec, D.12766
	movl	(%rax), %ecx	# _76->num_elem, D.12755
	movq	-112(%rbp), %rax	# y, tmp198
	movl	-84(%rbp), %edx	# i, tmp200
	movslq	%edx, %rdx	# tmp200, tmp199
	movq	8(%rax,%rdx,8), %rax	# y_2->fld[i_3].rtvec, D.12766
	movl	(%rax), %eax	# _78->num_elem, D.12755
	cmpl	%eax, %ecx	# D.12755, D.12755
	je	.L100	#,
	.loc 1 498 0
	movl	$0, %eax	#, D.12755
	jmp	.L70	#
.L100:
	.loc 1 501 0
	movl	$0, -80(%rbp)	#, j
	jmp	.L101	#
.L103:
	.loc 1 503 0
	movq	-112(%rbp), %rax	# y, tmp201
	movl	-84(%rbp), %edx	# i, tmp203
	movslq	%edx, %rdx	# tmp203, tmp202
	movq	8(%rax,%rdx,8), %rax	# y_2->fld[i_3].rtvec, D.12766
	.loc 1 502 0
	movl	-80(%rbp), %edx	# j, tmp205
	movslq	%edx, %rdx	# tmp205, tmp204
	movq	8(%rax,%rdx,8), %rdx	# _84->elem, D.12761
	movq	-104(%rbp), %rax	# x, tmp206
	movl	-84(%rbp), %ecx	# i, tmp208
	movslq	%ecx, %rcx	# tmp208, tmp207
	movq	8(%rax,%rcx,8), %rax	# x_1->fld[i_3].rtvec, D.12766
	movl	-80(%rbp), %ecx	# j, tmp210
	movslq	%ecx, %rcx	# tmp210, tmp209
	movq	8(%rax,%rcx,8), %rax	# _86->elem, D.12761
	movq	%rdx, %rsi	# D.12761,
	movq	%rax, %rdi	# D.12761,
	call	rtx_equal_for_cselib_p	#
	testl	%eax, %eax	# D.12755
	jne	.L102	#,
	.loc 1 504 0
	movl	$0, %eax	#, D.12755
	jmp	.L70	#
.L102:
	.loc 1 501 0
	addl	$1, -80(%rbp)	#, j
.L101:
	.loc 1 501 0 is_stmt 0 discriminator 1
	movq	-104(%rbp), %rax	# x, tmp211
	movl	-84(%rbp), %edx	# i, tmp213
	movslq	%edx, %rdx	# tmp213, tmp212
	movq	8(%rax,%rdx,8), %rax	# x_1->fld[i_3].rtvec, D.12766
	movl	(%rax), %eax	# _82->num_elem, D.12755
	cmpl	-80(%rbp), %eax	# j, D.12755
	jg	.L103	#,
	.loc 1 505 0 is_stmt 1
	jmp	.L98	#
.L93:
	.loc 1 508 0
	movq	-112(%rbp), %rax	# y, tmp214
	movl	-84(%rbp), %edx	# i, tmp216
	movslq	%edx, %rdx	# tmp216, tmp215
	movq	8(%rax,%rdx,8), %rdx	# y_2->fld[i_3].rtx, D.12761
	movq	-104(%rbp), %rax	# x, tmp217
	movl	-84(%rbp), %ecx	# i, tmp219
	movslq	%ecx, %rcx	# tmp219, tmp218
	movq	8(%rax,%rcx,8), %rax	# x_1->fld[i_3].rtx, D.12761
	movq	%rdx, %rsi	# D.12761,
	movq	%rax, %rdi	# D.12761,
	call	rtx_equal_for_cselib_p	#
	testl	%eax, %eax	# D.12755
	jne	.L104	#,
	.loc 1 509 0
	movl	$0, %eax	#, D.12755
	jmp	.L70	#
.L104:
	.loc 1 510 0
	jmp	.L98	#
.L92:
	.loc 1 514 0
	movq	-112(%rbp), %rax	# y, tmp220
	movl	-84(%rbp), %edx	# i, tmp222
	movslq	%edx, %rdx	# tmp222, tmp221
	movq	8(%rax,%rdx,8), %rdx	# y_2->fld[i_3].rtstr, D.12763
	movq	-104(%rbp), %rax	# x, tmp223
	movl	-84(%rbp), %ecx	# i, tmp225
	movslq	%ecx, %rcx	# tmp225, tmp224
	movq	8(%rax,%rcx,8), %rax	# x_1->fld[i_3].rtstr, D.12763
	movq	%rdx, %rsi	# D.12763,
	movq	%rax, %rdi	# D.12763,
	call	strcmp	#
	testl	%eax, %eax	# D.12755
	je	.L105	#,
	.loc 1 515 0
	movl	$0, %eax	#, D.12755
	jmp	.L70	#
.L105:
	.loc 1 516 0
	jmp	.L98	#
.L88:
	.loc 1 530 0
	movl	$__FUNCTION__.11089, %edx	#,
	movl	$530, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L107:
	.loc 1 524 0
	nop
.L98:
.LBE15:
	.loc 1 477 0
	subl	$1, -84(%rbp)	#, i
.L87:
	.loc 1 477 0 is_stmt 0 discriminator 1
	cmpl	$0, -84(%rbp)	#, i
	jns	.L106	#,
	.loc 1 533 0 is_stmt 1
	movl	$1, %eax	#, D.12755
.L70:
	.loc 1 534 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	rtx_equal_for_cselib_p, .-rtx_equal_for_cselib_p
	.type	wrap_constant, @function
wrap_constant:
.LFB15:
	.loc 1 543 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movl	%edi, -4(%rbp)	# mode, mode
	movq	%rsi, -16(%rbp)	# x, x
	.loc 1 544 0
	movq	-16(%rbp), %rax	# x, tmp64
	movzwl	(%rax), %eax	# x_2(D)->code, D.12768
	cmpw	$54, %ax	#, D.12768
	je	.L109	#,
	.loc 1 545 0
	movq	-16(%rbp), %rax	# x, tmp65
	movzwl	(%rax), %eax	# x_2(D)->code, D.12768
	cmpw	$55, %ax	#, D.12768
	jne	.L110	#,
	.loc 1 545 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# x, tmp66
	movzbl	2(%rax), %eax	# x_2(D)->mode, D.12769
	testb	%al, %al	# D.12769
	je	.L109	#,
.L110:
	.loc 1 546 0 is_stmt 1
	movq	-16(%rbp), %rax	# x, D.12767
	jmp	.L111	#
.L109:
	.loc 1 547 0
	cmpl	$0, -4(%rbp)	#, mode
	jne	.L112	#,
	.loc 1 548 0
	movl	$__FUNCTION__.11097, %edx	#,
	movl	$548, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L112:
	.loc 1 549 0
	movq	-16(%rbp), %rdx	# x, tmp67
	movl	-4(%rbp), %eax	# mode, tmp68
	movl	%eax, %esi	# tmp68,
	movl	$58, %edi	#,
	call	gen_rtx_fmt_e	#
.L111:
	.loc 1 550 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	wrap_constant, .-wrap_constant
	.type	hash_rtx, @function
hash_rtx:
.LFB16:
	.loc 1 566 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$96, %rsp	#,
	movq	%rdi, -88(%rbp)	# x, x
	movl	%esi, -92(%rbp)	# mode, mode
	movl	%edx, -96(%rbp)	# create, create
	.loc 1 571 0
	movl	$0, -60(%rbp)	#, hash
	.loc 1 573 0
	movq	-88(%rbp), %rax	# x, tmp138
	movzwl	(%rax), %eax	# x_21(D)->code, D.12771
	movzwl	%ax, %eax	# D.12771, tmp139
	movl	%eax, -56(%rbp)	# tmp139, code
	.loc 1 574 0
	movq	-88(%rbp), %rax	# x, tmp140
	movzbl	2(%rax), %eax	# x_21(D)->mode, D.12772
	movzbl	%al, %edx	# D.12772, D.12770
	movl	-56(%rbp), %eax	# code, tmp141
	addl	%edx, %eax	# D.12770, D.12770
	addl	%eax, -60(%rbp)	# D.12770, hash
	.loc 1 576 0
	movl	-56(%rbp), %eax	# code, tmp143
	subl	$41, %eax	#, tmp142
	cmpl	$60, %eax	#, tmp142
	ja	.L158	#,
	movl	%eax, %eax	# tmp142, tmp144
	movq	.L116(,%rax,8), %rax	#, tmp145
	jmp	*%rax	# tmp145
	.section	.rodata
	.align 8
	.align 4
.L116:
	.quad	.L115
	.quad	.L158
	.quad	.L117
	.quad	.L158
	.quad	.L158
	.quad	.L158
	.quad	.L158
	.quad	.L158
	.quad	.L158
	.quad	.L117
	.quad	.L158
	.quad	.L158
	.quad	.L158
	.quad	.L118
	.quad	.L119
	.quad	.L120
	.quad	.L158
	.quad	.L158
	.quad	.L117
	.quad	.L158
	.quad	.L121
	.quad	.L158
	.quad	.L158
	.quad	.L158
	.quad	.L158
	.quad	.L121
	.quad	.L122
	.quad	.L123
	.quad	.L117
	.quad	.L158
	.quad	.L158
	.quad	.L158
	.quad	.L158
	.quad	.L158
	.quad	.L158
	.quad	.L158
	.quad	.L158
	.quad	.L158
	.quad	.L158
	.quad	.L158
	.quad	.L158
	.quad	.L158
	.quad	.L158
	.quad	.L158
	.quad	.L158
	.quad	.L158
	.quad	.L158
	.quad	.L158
	.quad	.L158
	.quad	.L158
	.quad	.L158
	.quad	.L158
	.quad	.L158
	.quad	.L158
	.quad	.L158
	.quad	.L117
	.quad	.L117
	.quad	.L117
	.quad	.L117
	.quad	.L117
	.quad	.L117
	.text
.L121:
	.loc 1 580 0
	movq	-88(%rbp), %rax	# x, tmp146
	movzbl	2(%rax), %eax	# x_21(D)->mode, D.12772
	movzbl	%al, %ecx	# D.12772, D.12773
	movl	-96(%rbp), %edx	# create, tmp147
	movq	-88(%rbp), %rax	# x, tmp148
	movl	%ecx, %esi	# D.12773,
	movq	%rax, %rdi	# tmp148,
	call	cselib_lookup	#
	movq	%rax, -32(%rbp)	# tmp149, e
	.loc 1 581 0
	cmpq	$0, -32(%rbp)	#, e
	jne	.L124	#,
	.loc 1 582 0
	movl	$0, %eax	#, D.12770
	jmp	.L125	#
.L124:
	.loc 1 584 0
	movq	-32(%rbp), %rax	# e, tmp150
	movl	(%rax), %eax	# e_31->value, D.12770
	jmp	.L125	#
.L118:
	.loc 1 587 0
	movq	-88(%rbp), %rax	# x, tmp151
	movq	8(%rax), %rax	# x_21(D)->fld[0].rtwint, D.12774
	movl	%eax, %edx	# D.12774, D.12770
	movl	-92(%rbp), %eax	# mode, tmp152
	addl	%eax, %edx	# tmp152, D.12770
	movl	-60(%rbp), %eax	# hash, tmp153
	addl	%edx, %eax	# D.12770, D.12770
	addl	$6912, %eax	#, tmp154
	movl	%eax, -60(%rbp)	# tmp154, hash
	.loc 1 588 0
	cmpl	$0, -60(%rbp)	#, hash
	je	.L126	#,
	.loc 1 588 0 is_stmt 0 discriminator 1
	movl	-60(%rbp), %eax	# hash, iftmp.28
	jmp	.L127	#
.L126:
	.loc 1 588 0 discriminator 2
	movl	$54, %eax	#, iftmp.28
.L127:
	.loc 1 588 0 discriminator 3
	jmp	.L125	#
.L119:
	.loc 1 593 0 is_stmt 1
	movq	-88(%rbp), %rax	# x, tmp155
	movzbl	2(%rax), %eax	# x_21(D)->mode, D.12772
	movzbl	%al, %edx	# D.12772, D.12770
	movl	-56(%rbp), %eax	# code, tmp156
	addl	%edx, %eax	# D.12770, D.12770
	addl	%eax, -60(%rbp)	# D.12770, hash
	.loc 1 594 0
	movq	-88(%rbp), %rax	# x, tmp157
	movzbl	2(%rax), %eax	# x_21(D)->mode, D.12772
	testb	%al, %al	# D.12772
	je	.L128	#,
	.loc 1 595 0
	movl	$2, -68(%rbp)	#, i
	jmp	.L129	#
.L130:
	.loc 1 596 0 discriminator 2
	movq	-88(%rbp), %rax	# x, tmp158
	movl	-68(%rbp), %edx	# i, tmp160
	movslq	%edx, %rdx	# tmp160, tmp159
	movq	8(%rax,%rdx,8), %rax	# x_21(D)->fld[i_1].rtwint, D.12774
	addl	%eax, -60(%rbp)	# D.12770, hash
	.loc 1 595 0 discriminator 2
	addl	$1, -68(%rbp)	#, i
.L129:
	.loc 1 595 0 is_stmt 0 discriminator 1
	movzbl	rtx_length+55(%rip), %eax	# rtx_length, D.12772
	movzbl	%al, %eax	# D.12772, D.12775
	cmpl	-68(%rbp), %eax	# i, D.12775
	jg	.L130	#,
	jmp	.L131	#
.L128:
	.loc 1 598 0 is_stmt 1
	movq	-88(%rbp), %rax	# x, tmp161
	movq	16(%rax), %rax	# x_21(D)->fld[1].rtwint, D.12774
	movl	%eax, %edx	# D.12774, D.12770
	.loc 1 599 0
	movq	-88(%rbp), %rax	# x, tmp162
	movq	24(%rax), %rax	# x_21(D)->fld[2].rtwint, D.12774
	addl	%edx, %eax	# D.12770, D.12770
	.loc 1 598 0
	addl	%eax, -60(%rbp)	# D.12770, hash
.L131:
	.loc 1 600 0
	cmpl	$0, -60(%rbp)	#, hash
	je	.L132	#,
	.loc 1 600 0 is_stmt 0 discriminator 1
	movl	-60(%rbp), %eax	# hash, iftmp.29
	jmp	.L133	#
.L132:
	.loc 1 600 0 discriminator 2
	movl	$55, %eax	#, iftmp.29
.L133:
	.loc 1 600 0 discriminator 3
	jmp	.L125	#
.L120:
.LBB16:
	.loc 1 607 0 is_stmt 1
	movq	-88(%rbp), %rax	# x, tmp163
	movq	8(%rax), %rax	# x_21(D)->fld[0].rtvec, D.12776
	movl	(%rax), %eax	# _64->num_elem, tmp164
	movl	%eax, -52(%rbp)	# tmp164, units
	.loc 1 609 0
	movl	$0, -68(%rbp)	#, i
	jmp	.L134	#
.L135:
	.loc 1 611 0 discriminator 2
	movq	-88(%rbp), %rax	# x, tmp165
	movq	8(%rax), %rax	# x_21(D)->fld[0].rtvec, D.12776
	movl	-68(%rbp), %edx	# i, tmp167
	movslq	%edx, %rdx	# tmp167, tmp166
	movq	8(%rax,%rdx,8), %rax	# _67->elem, tmp168
	movq	%rax, -24(%rbp)	# tmp168, elt
	.loc 1 612 0 discriminator 2
	movq	-24(%rbp), %rax	# elt, tmp169
	movzbl	2(%rax), %eax	# elt_68->mode, D.12772
	movzbl	%al, %ecx	# D.12772, D.12773
	movq	-24(%rbp), %rax	# elt, tmp170
	movl	$0, %edx	#,
	movl	%ecx, %esi	# D.12773,
	movq	%rax, %rdi	# tmp170,
	call	hash_rtx	#
	addl	%eax, -60(%rbp)	# D.12770, hash
	.loc 1 609 0 discriminator 2
	addl	$1, -68(%rbp)	#, i
.L134:
	.loc 1 609 0 is_stmt 0 discriminator 1
	movl	-68(%rbp), %eax	# i, tmp171
	cmpl	-52(%rbp), %eax	# units, tmp171
	jl	.L135	#,
	.loc 1 615 0 is_stmt 1
	movl	-60(%rbp), %eax	# hash, D.12770
	jmp	.L125	#
.L122:
.LBE16:
	.loc 1 621 0
	movq	-88(%rbp), %rax	# x, tmp172
	movq	8(%rax), %rax	# x_21(D)->fld[0].rtx, D.12777
	movl	%eax, %edx	# D.12774, D.12770
	movl	-60(%rbp), %eax	# hash, tmp173
	addl	%edx, %eax	# D.12770, D.12770
	addl	$8576, %eax	#, tmp174
	movl	%eax, -60(%rbp)	# tmp174, hash
	.loc 1 622 0
	cmpl	$0, -60(%rbp)	#, hash
	je	.L136	#,
	.loc 1 622 0 is_stmt 0 discriminator 1
	movl	-60(%rbp), %eax	# hash, iftmp.30
	jmp	.L137	#
.L136:
	.loc 1 622 0 discriminator 2
	movl	$67, %eax	#, iftmp.30
.L137:
	.loc 1 622 0 discriminator 3
	jmp	.L125	#
.L123:
	.loc 1 626 0 is_stmt 1
	movq	-88(%rbp), %rax	# x, tmp175
	movq	8(%rax), %rax	# x_21(D)->fld[0].rtstr, D.12778
	movl	%eax, %edx	# D.12774, D.12770
	movl	-60(%rbp), %eax	# hash, tmp176
	addl	%edx, %eax	# D.12770, D.12770
	addl	$8704, %eax	#, tmp177
	movl	%eax, -60(%rbp)	# tmp177, hash
	.loc 1 627 0
	cmpl	$0, -60(%rbp)	#, hash
	je	.L138	#,
	.loc 1 627 0 is_stmt 0 discriminator 1
	movl	-60(%rbp), %eax	# hash, iftmp.31
	jmp	.L139	#
.L138:
	.loc 1 627 0 discriminator 2
	movl	$68, %eax	#, iftmp.31
.L139:
	.loc 1 627 0 discriminator 3
	jmp	.L125	#
.L117:
	.loc 1 639 0 is_stmt 1
	movl	$0, %eax	#, D.12770
	jmp	.L125	#
.L115:
	.loc 1 642 0
	movq	-88(%rbp), %rax	# x, tmp178
	movzbl	3(%rax), %eax	# *x_21(D), D.12772
	andl	$8, %eax	#, D.12772
	testb	%al, %al	# D.12772
	je	.L140	#,
	.loc 1 643 0
	movl	$0, %eax	#, D.12770
	jmp	.L125	#
.L140:
	.loc 1 645 0
	jmp	.L141	#
.L158:
	.loc 1 648 0
	nop
.L141:
	.loc 1 651 0
	movl	-56(%rbp), %eax	# code, code.32
	cltq
	movzbl	rtx_length(%rax), %eax	# rtx_length, D.12772
	movzbl	%al, %eax	# D.12772, D.12775
	subl	$1, %eax	#, tmp180
	movl	%eax, -68(%rbp)	# tmp180, i
	.loc 1 652 0
	movl	-56(%rbp), %eax	# code, code.33
	cltq
	movq	rtx_format(,%rax,8), %rax	# rtx_format, tmp182
	movq	%rax, -16(%rbp)	# tmp182, fmt
	.loc 1 653 0
	jmp	.L142	#
.L155:
	.loc 1 655 0
	movl	-68(%rbp), %eax	# i, tmp183
	movslq	%eax, %rdx	# tmp183, D.12779
	movq	-16(%rbp), %rax	# fmt, tmp184
	addq	%rdx, %rax	# D.12779, D.12778
	movzbl	(%rax), %eax	# *_102, D.12780
	cmpb	$101, %al	#, D.12780
	jne	.L143	#,
.LBB17:
	.loc 1 657 0
	movq	-88(%rbp), %rax	# x, tmp185
	movl	-68(%rbp), %edx	# i, tmp187
	movslq	%edx, %rdx	# tmp187, tmp186
	movq	8(%rax,%rdx,8), %rax	# x_21(D)->fld[i_3].rtx, tmp188
	movq	%rax, -8(%rbp)	# tmp188, tem
	.loc 1 658 0
	movl	-96(%rbp), %edx	# create, tmp189
	movq	-8(%rbp), %rax	# tem, tmp190
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp190,
	call	hash_rtx	#
	movl	%eax, -48(%rbp)	# tmp191, tem_hash
	.loc 1 660 0
	cmpl	$0, -48(%rbp)	#, tem_hash
	jne	.L144	#,
	.loc 1 661 0
	movl	$0, %eax	#, D.12770
	jmp	.L125	#
.L144:
	.loc 1 663 0
	movl	-48(%rbp), %eax	# tem_hash, tmp192
	addl	%eax, -60(%rbp)	# tmp192, hash
.LBE17:
	jmp	.L145	#
.L143:
	.loc 1 665 0
	movl	-68(%rbp), %eax	# i, tmp193
	movslq	%eax, %rdx	# tmp193, D.12779
	movq	-16(%rbp), %rax	# fmt, tmp194
	addq	%rdx, %rax	# D.12779, D.12778
	movzbl	(%rax), %eax	# *_109, D.12780
	cmpb	$69, %al	#, D.12780
	jne	.L146	#,
	.loc 1 666 0
	movl	$0, -64(%rbp)	#, j
	jmp	.L147	#
.L149:
.LBB18:
	.loc 1 668 0
	movq	-88(%rbp), %rax	# x, tmp195
	movl	-68(%rbp), %edx	# i, tmp197
	movslq	%edx, %rdx	# tmp197, tmp196
	movq	8(%rax,%rdx,8), %rax	# x_21(D)->fld[i_3].rtvec, D.12776
	movl	-64(%rbp), %edx	# j, tmp199
	movslq	%edx, %rdx	# tmp199, tmp198
	movq	8(%rax,%rdx,8), %rax	# _114->elem, D.12777
	movl	-96(%rbp), %edx	# create, tmp200
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.12777,
	call	hash_rtx	#
	movl	%eax, -44(%rbp)	# tmp201, tem_hash
	.loc 1 670 0
	cmpl	$0, -44(%rbp)	#, tem_hash
	jne	.L148	#,
	.loc 1 671 0
	movl	$0, %eax	#, D.12770
	jmp	.L125	#
.L148:
	.loc 1 673 0
	movl	-44(%rbp), %eax	# tem_hash, tmp202
	addl	%eax, -60(%rbp)	# tmp202, hash
.LBE18:
	.loc 1 666 0
	addl	$1, -64(%rbp)	#, j
.L147:
	.loc 1 666 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# x, tmp203
	movl	-68(%rbp), %edx	# i, tmp205
	movslq	%edx, %rdx	# tmp205, tmp204
	movq	8(%rax,%rdx,8), %rax	# x_21(D)->fld[i_3].rtvec, D.12776
	movl	(%rax), %eax	# _112->num_elem, D.12775
	cmpl	-64(%rbp), %eax	# j, D.12775
	jg	.L149	#,
	jmp	.L145	#
.L146:
	.loc 1 675 0 is_stmt 1
	movl	-68(%rbp), %eax	# i, tmp206
	movslq	%eax, %rdx	# tmp206, D.12779
	movq	-16(%rbp), %rax	# fmt, tmp207
	addq	%rdx, %rax	# D.12779, D.12778
	movzbl	(%rax), %eax	# *_121, D.12780
	cmpb	$115, %al	#, D.12780
	jne	.L150	#,
.LBB19:
	.loc 1 677 0
	movq	-88(%rbp), %rax	# x, tmp208
	movl	-68(%rbp), %edx	# i, tmp210
	movslq	%edx, %rdx	# tmp210, tmp209
	movq	8(%rax,%rdx,8), %rax	# x_21(D)->fld[i_3].rtstr, tmp211
	movq	%rax, -40(%rbp)	# tmp211, p
	.loc 1 679 0
	cmpq	$0, -40(%rbp)	#, p
	je	.L151	#,
	.loc 1 680 0
	jmp	.L152	#
.L153:
	.loc 1 681 0
	movq	-40(%rbp), %rax	# p, p.34
	leaq	1(%rax), %rdx	#, tmp212
	movq	%rdx, -40(%rbp)	# tmp212, p
	movzbl	(%rax), %eax	# *p.34_125, D.12772
	movzbl	%al, %eax	# D.12772, D.12770
	addl	%eax, -60(%rbp)	# D.12770, hash
.L152:
	.loc 1 680 0 discriminator 1
	movq	-40(%rbp), %rax	# p, tmp213
	movzbl	(%rax), %eax	# *p_13, D.12772
	testb	%al, %al	# D.12772
	jne	.L153	#,
.L151:
.LBE19:
	jmp	.L145	#
.L150:
	.loc 1 683 0
	movl	-68(%rbp), %eax	# i, tmp214
	movslq	%eax, %rdx	# tmp214, D.12779
	movq	-16(%rbp), %rax	# fmt, tmp215
	addq	%rdx, %rax	# D.12779, D.12778
	movzbl	(%rax), %eax	# *_131, D.12780
	cmpb	$105, %al	#, D.12780
	jne	.L154	#,
	.loc 1 684 0
	movq	-88(%rbp), %rax	# x, tmp216
	movl	-68(%rbp), %edx	# i, tmp218
	movslq	%edx, %rdx	# tmp218, tmp217
	movl	8(%rax,%rdx,8), %eax	# x_21(D)->fld[i_3].rtint, D.12775
	addl	%eax, -60(%rbp)	# D.12770, hash
	jmp	.L145	#
.L154:
	.loc 1 685 0
	movl	-68(%rbp), %eax	# i, tmp219
	movslq	%eax, %rdx	# tmp219, D.12779
	movq	-16(%rbp), %rax	# fmt, tmp220
	addq	%rdx, %rax	# D.12779, D.12778
	movzbl	(%rax), %eax	# *_137, D.12780
	cmpb	$48, %al	#, D.12780
	je	.L145	#,
	.loc 1 685 0 is_stmt 0 discriminator 1
	movl	-68(%rbp), %eax	# i, tmp221
	movslq	%eax, %rdx	# tmp221, D.12779
	movq	-16(%rbp), %rax	# fmt, tmp222
	addq	%rdx, %rax	# D.12779, D.12778
	movzbl	(%rax), %eax	# *_140, D.12780
	cmpb	$116, %al	#, D.12780
	je	.L145	#,
	.loc 1 688 0 is_stmt 1
	movl	$__FUNCTION__.11147, %edx	#,
	movl	$688, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L145:
	.loc 1 653 0
	subl	$1, -68(%rbp)	#, i
.L142:
	.loc 1 653 0 is_stmt 0 discriminator 1
	cmpl	$0, -68(%rbp)	#, i
	jns	.L155	#,
	.loc 1 691 0 is_stmt 1
	cmpl	$0, -60(%rbp)	#, hash
	jne	.L156	#,
	.loc 1 691 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# x, tmp223
	movzwl	(%rax), %eax	# x_21(D)->code, D.12771
	movzwl	%ax, %eax	# D.12771, D.12770
	addl	$1, %eax	#, iftmp.35
	jmp	.L157	#
.L156:
	.loc 1 691 0 discriminator 2
	movl	-60(%rbp), %eax	# hash, iftmp.35
.L157:
.L125:
	.loc 1 692 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	hash_rtx, .-hash_rtx
	.type	new_cselib_val, @function
new_cselib_val:
.LFB17:
	.loc 1 701 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movl	%edi, -52(%rbp)	# value, value
	movl	%esi, -56(%rbp)	# mode, mode
	.loc 1 702 0
	movq	empty_vals(%rip), %rax	# empty_vals, tmp98
	movq	%rax, -40(%rbp)	# tmp98, e
	.loc 1 704 0
	cmpq	$0, -40(%rbp)	#, e
	je	.L160	#,
	.loc 1 705 0
	movq	-40(%rbp), %rax	# e, tmp99
	movq	8(%rax), %rax	# e_2->u.next_free, empty_vals.36
	movq	%rax, empty_vals(%rip)	# empty_vals.36, empty_vals
	jmp	.L161	#
.L160:
.LBB20:
	.loc 1 707 0
	movq	$cselib_obstack, -32(%rbp)	#, __h
.LBB21:
	movq	-32(%rbp), %rax	# __h, tmp100
	movq	%rax, -24(%rbp)	# tmp100, __o
	movl	$32, -44(%rbp)	#, __len
	movq	-24(%rbp), %rax	# __o, tmp101
	movq	32(%rax), %rax	# __o_5->chunk_limit, D.12781
	movq	%rax, %rdx	# D.12781, D.12782
	movq	-24(%rbp), %rax	# __o, tmp102
	movq	24(%rax), %rax	# __o_5->next_free, D.12781
	subq	%rax, %rdx	# D.12782, D.12782
	movl	-44(%rbp), %eax	# __len, tmp103
	cltq
	cmpq	%rax, %rdx	# D.12782, D.12782
	jge	.L162	#,
	.loc 1 707 0 is_stmt 0 discriminator 1
	movl	-44(%rbp), %edx	# __len, tmp104
	movq	-24(%rbp), %rax	# __o, tmp105
	movl	%edx, %esi	# tmp104,
	movq	%rax, %rdi	# tmp105,
	call	_obstack_newchunk	#
.L162:
	.loc 1 707 0 discriminator 2
	movq	-24(%rbp), %rax	# __o, tmp106
	movq	24(%rax), %rdx	# __o_5->next_free, D.12781
	movl	-44(%rbp), %eax	# __len, tmp107
	cltq
	addq	%rax, %rdx	# D.12783, D.12781
	movq	-24(%rbp), %rax	# __o, tmp108
	movq	%rdx, 24(%rax)	# D.12781, __o_5->next_free
.LBE21:
.LBB22:
	movq	-32(%rbp), %rax	# __h, tmp109
	movq	%rax, -16(%rbp)	# tmp109, __o1
	movq	-16(%rbp), %rax	# __o1, tmp110
	movq	16(%rax), %rax	# __o1_16->object_base, tmp111
	movq	%rax, -8(%rbp)	# tmp111, value
	movq	-16(%rbp), %rax	# __o1, tmp112
	movq	24(%rax), %rax	# __o1_16->next_free, D.12781
	cmpq	-8(%rbp), %rax	# value, D.12781
	jne	.L163	#,
	.loc 1 707 0 discriminator 1
	movq	-16(%rbp), %rax	# __o1, tmp113
	movzbl	80(%rax), %edx	# __o1_16->maybe_empty_object, tmp116
	orl	$2, %edx	#, tmp117
	movb	%dl, 80(%rax)	# tmp117, __o1_16->maybe_empty_object
.L163:
	.loc 1 707 0 discriminator 2
	movq	-16(%rbp), %rax	# __o1, tmp118
	movq	24(%rax), %rax	# __o1_16->next_free, D.12781
	movq	%rax, %rdx	# D.12781, D.12782
	movq	-16(%rbp), %rax	# __o1, tmp119
	movl	48(%rax), %eax	# __o1_16->alignment_mask, D.12784
	cltq
	addq	%rax, %rdx	# D.12782, D.12782
	movq	-16(%rbp), %rax	# __o1, tmp120
	movl	48(%rax), %eax	# __o1_16->alignment_mask, D.12784
	notl	%eax	# D.12784
	cltq
	andq	%rdx, %rax	# D.12782, D.12782
	movq	%rax, %rdx	# D.12782, D.12781
	movq	-16(%rbp), %rax	# __o1, tmp121
	movq	%rdx, 24(%rax)	# D.12781, __o1_16->next_free
	movq	-16(%rbp), %rax	# __o1, tmp122
	movq	24(%rax), %rax	# __o1_16->next_free, D.12781
	movq	%rax, %rdx	# D.12781, D.12782
	movq	-16(%rbp), %rax	# __o1, tmp123
	movq	8(%rax), %rax	# __o1_16->chunk, D.12785
	movq	%rdx, %rcx	# D.12782, D.12782
	subq	%rax, %rcx	# D.12782, D.12782
	movq	-16(%rbp), %rax	# __o1, tmp124
	movq	32(%rax), %rax	# __o1_16->chunk_limit, D.12781
	movq	%rax, %rdx	# D.12781, D.12782
	movq	-16(%rbp), %rax	# __o1, tmp125
	movq	8(%rax), %rax	# __o1_16->chunk, D.12785
	subq	%rax, %rdx	# D.12782, D.12782
	movq	%rdx, %rax	# D.12782, D.12782
	cmpq	%rax, %rcx	# D.12782, D.12782
	jle	.L164	#,
	.loc 1 707 0 discriminator 1
	movq	-16(%rbp), %rax	# __o1, tmp126
	movq	32(%rax), %rdx	# __o1_16->chunk_limit, D.12781
	movq	-16(%rbp), %rax	# __o1, tmp127
	movq	%rdx, 24(%rax)	# D.12781, __o1_16->next_free
.L164:
	.loc 1 707 0 discriminator 2
	movq	-16(%rbp), %rax	# __o1, tmp128
	movq	24(%rax), %rdx	# __o1_16->next_free, D.12781
	movq	-16(%rbp), %rax	# __o1, tmp129
	movq	%rdx, 16(%rax)	# D.12781, __o1_16->object_base
	movq	-8(%rbp), %rax	# value, D.12786
.LBE22:
.LBE20:
	movq	%rax, -40(%rbp)	# e.37, e
.L161:
	.loc 1 709 0 is_stmt 1
	cmpl	$0, -52(%rbp)	#, value
	jne	.L165	#,
	.loc 1 710 0
	movl	$__FUNCTION__.11163, %edx	#,
	movl	$710, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L165:
	.loc 1 712 0
	movq	-40(%rbp), %rax	# e, tmp130
	movl	-52(%rbp), %edx	# value, tmp131
	movl	%edx, (%rax)	# tmp131, e_1->value
	.loc 1 713 0
	movl	-56(%rbp), %eax	# mode, tmp132
	movl	%eax, %esi	# tmp132,
	movl	$60, %edi	#,
	call	gen_rtx_fmt_0	#
	movq	-40(%rbp), %rdx	# e, tmp133
	movq	%rax, 8(%rdx)	# D.12787, e_1->u.val_rtx
	.loc 1 714 0
	movq	-40(%rbp), %rax	# e, tmp134
	movq	8(%rax), %rax	# e_1->u.val_rtx, D.12787
	movq	-40(%rbp), %rdx	# e, tmp135
	movq	%rdx, 8(%rax)	# tmp135, _47->fld[0].rt_cselib
	.loc 1 715 0
	movq	-40(%rbp), %rax	# e, tmp136
	movq	$0, 24(%rax)	#, e_1->addr_list
	.loc 1 716 0
	movq	-40(%rbp), %rax	# e, tmp137
	movq	$0, 16(%rax)	#, e_1->locs
	.loc 1 717 0
	movq	-40(%rbp), %rax	# e, D.12788
	.loc 1 718 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	new_cselib_val, .-new_cselib_val
	.type	add_mem_for_addr, @function
add_mem_for_addr:
.LFB18:
	.loc 1 728 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# addr_elt, addr_elt
	movq	%rsi, -32(%rbp)	# mem_elt, mem_elt
	movq	%rdx, -40(%rbp)	# x, x
	.loc 1 732 0
	movq	-32(%rbp), %rax	# mem_elt, tmp70
	movq	16(%rax), %rax	# mem_elt_2(D)->locs, tmp71
	movq	%rax, -8(%rbp)	# tmp71, l
	jmp	.L168	#
.L171:
	.loc 1 733 0
	movq	-8(%rbp), %rax	# l, tmp72
	movq	8(%rax), %rax	# l_1->loc, D.12789
	movzwl	(%rax), %eax	# _4->code, D.12790
	cmpw	$66, %ax	#, D.12790
	jne	.L169	#,
	.loc 1 734 0
	movq	-8(%rbp), %rax	# l, tmp73
	movq	8(%rax), %rax	# l_1->loc, D.12789
	movq	8(%rax), %rax	# _6->fld[0].rtx, D.12789
	movq	8(%rax), %rax	# _7->fld[0].rt_cselib, D.12791
	cmpq	-24(%rbp), %rax	# addr_elt, D.12791
	jne	.L169	#,
	.loc 1 735 0
	jmp	.L167	#
.L169:
	.loc 1 732 0
	movq	-8(%rbp), %rax	# l, tmp74
	movq	(%rax), %rax	# l_1->next, tmp75
	movq	%rax, -8(%rbp)	# tmp75, l
.L168:
	.loc 1 732 0 is_stmt 0 discriminator 1
	cmpq	$0, -8(%rbp)	#, l
	jne	.L171	#,
	.loc 1 737 0 is_stmt 1
	movq	-24(%rbp), %rax	# addr_elt, tmp76
	movq	24(%rax), %rax	# addr_elt_9(D)->addr_list, D.12792
	movq	-32(%rbp), %rdx	# mem_elt, tmp77
	movq	%rdx, %rsi	# tmp77,
	movq	%rax, %rdi	# D.12792,
	call	new_elt_list	#
	movq	-24(%rbp), %rdx	# addr_elt, tmp78
	movq	%rax, 24(%rdx)	# D.12792, addr_elt_9(D)->addr_list
	.loc 1 739 0
	movq	-24(%rbp), %rax	# addr_elt, tmp79
	movq	8(%rax), %rdx	# addr_elt_9(D)->u.val_rtx, D.12789
	movq	-40(%rbp), %rax	# x, tmp80
	movq	%rdx, %rsi	# D.12789,
	movq	%rax, %rdi	# tmp80,
	call	replace_equiv_address_nv	#
	movq	%rax, %rdx	#, D.12789
	movq	-32(%rbp), %rax	# mem_elt, tmp81
	movq	16(%rax), %rax	# mem_elt_2(D)->locs, D.12793
	movq	%rdx, %rsi	# D.12789,
	movq	%rax, %rdi	# D.12793,
	call	new_elt_loc_list	#
	movq	-32(%rbp), %rdx	# mem_elt, tmp82
	movq	%rax, 16(%rdx)	# D.12793, mem_elt_2(D)->locs
.L167:
	.loc 1 741 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	add_mem_for_addr, .-add_mem_for_addr
	.type	cselib_lookup_mem, @function
cselib_lookup_mem:
.LFB19:
	.loc 1 750 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$72, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -72(%rbp)	# x, x
	movl	%esi, -76(%rbp)	# create, create
	.loc 1 751 0
	movq	-72(%rbp), %rax	# x, tmp82
	movzbl	2(%rax), %eax	# x_3(D)->mode, D.12795
	movzbl	%al, %eax	# D.12795, tmp83
	movl	%eax, -52(%rbp)	# tmp83, mode
	.loc 1 757 0
	movq	-72(%rbp), %rax	# x, tmp84
	movzbl	3(%rax), %eax	# *x_3(D), D.12795
	andl	$8, %eax	#, D.12795
	testb	%al, %al	# D.12795
	jne	.L173	#,
	.loc 1 757 0 is_stmt 0 discriminator 1
	cmpl	$51, -52(%rbp)	#, mode
	je	.L173	#,
	.loc 1 758 0 is_stmt 1
	movl	-52(%rbp), %eax	# mode, mode.38
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.12796
	cmpl	$2, %eax	#, D.12796
	je	.L174	#,
	.loc 1 758 0 is_stmt 0 discriminator 2
	movl	-52(%rbp), %eax	# mode, mode.39
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.12796
	cmpl	$6, %eax	#, D.12796
	je	.L174	#,
	.loc 1 758 0 discriminator 1
	movl	-52(%rbp), %eax	# mode, mode.40
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.12796
	cmpl	$8, %eax	#, D.12796
	jne	.L175	#,
.L174:
	movl	flag_float_store(%rip), %eax	# flag_float_store, flag_float_store.41
	testl	%eax, %eax	# flag_float_store.41
	je	.L175	#,
.L173:
	.loc 1 759 0 is_stmt 1
	movl	$0, %eax	#, D.12794
	jmp	.L176	#
.L175:
	.loc 1 762 0
	movq	-72(%rbp), %rax	# x, tmp88
	movq	8(%rax), %rax	# x_3(D)->fld[0].rtx, D.12797
	movl	-76(%rbp), %edx	# create, tmp89
	movl	-52(%rbp), %ecx	# mode, tmp90
	movl	%ecx, %esi	# tmp90,
	movq	%rax, %rdi	# D.12797,
	call	cselib_lookup	#
	movq	%rax, -40(%rbp)	# tmp91, addr
	.loc 1 763 0
	cmpq	$0, -40(%rbp)	#, addr
	jne	.L177	#,
	.loc 1 764 0
	movl	$0, %eax	#, D.12794
	jmp	.L176	#
.L177:
	.loc 1 767 0
	movq	-40(%rbp), %rax	# addr, tmp92
	movq	24(%rax), %rax	# addr_17->addr_list, tmp93
	movq	%rax, -48(%rbp)	# tmp93, l
	jmp	.L178	#
.L180:
	.loc 1 768 0
	movq	-48(%rbp), %rax	# l, tmp94
	movq	8(%rax), %rax	# l_1->elt, D.12794
	movq	8(%rax), %rax	# _20->u.val_rtx, D.12797
	movzbl	2(%rax), %eax	# _21->mode, D.12795
	movzbl	%al, %eax	# D.12795, D.12798
	cmpl	-52(%rbp), %eax	# mode, D.12798
	jne	.L179	#,
	.loc 1 769 0
	movq	-48(%rbp), %rax	# l, tmp95
	movq	8(%rax), %rax	# l_1->elt, D.12794
	jmp	.L176	#
.L179:
	.loc 1 767 0
	movq	-48(%rbp), %rax	# l, tmp96
	movq	(%rax), %rax	# l_1->next, tmp97
	movq	%rax, -48(%rbp)	# tmp97, l
.L178:
	.loc 1 767 0 is_stmt 0 discriminator 1
	cmpq	$0, -48(%rbp)	#, l
	jne	.L180	#,
	.loc 1 771 0 is_stmt 1
	cmpl	$0, -76(%rbp)	#, create
	jne	.L181	#,
	.loc 1 772 0
	movl	$0, %eax	#, D.12794
	jmp	.L176	#
.L181:
	.loc 1 774 0
	movl	next_unknown_value(%rip), %eax	# next_unknown_value, next_unknown_value.42
	addl	$1, %eax	#, next_unknown_value.43
	movl	%eax, next_unknown_value(%rip)	# next_unknown_value.43, next_unknown_value
	movl	next_unknown_value(%rip), %eax	# next_unknown_value, next_unknown_value.44
	movl	-52(%rbp), %edx	# mode, tmp98
	movl	%edx, %esi	# tmp98,
	movl	%eax, %edi	# next_unknown_value.44,
	call	new_cselib_val	#
	movq	%rax, -32(%rbp)	# tmp99, mem_elt
	.loc 1 775 0
	movq	-72(%rbp), %rdx	# x, tmp100
	movq	-32(%rbp), %rcx	# mem_elt, tmp101
	movq	-40(%rbp), %rax	# addr, tmp102
	movq	%rcx, %rsi	# tmp101,
	movq	%rax, %rdi	# tmp102,
	call	add_mem_for_addr	#
	.loc 1 776 0
	movq	-32(%rbp), %rax	# mem_elt, tmp103
	movl	(%rax), %ebx	# mem_elt_30->value, D.12798
	movq	-72(%rbp), %rdx	# x, tmp104
	movl	-52(%rbp), %eax	# mode, tmp105
	movq	%rdx, %rsi	# tmp104,
	movl	%eax, %edi	# tmp105,
	call	wrap_constant	#
	movq	%rax, %rsi	#, D.12797
	movq	hash_table(%rip), %rax	# hash_table, hash_table.45
	movl	$1, %ecx	#,
	movl	%ebx, %edx	# D.12798,
	movq	%rax, %rdi	# hash_table.45,
	call	htab_find_slot_with_hash	#
	movq	%rax, -24(%rbp)	# tmp106, slot
	.loc 1 778 0
	movq	-24(%rbp), %rax	# slot, tmp107
	movq	-32(%rbp), %rdx	# mem_elt, tmp108
	movq	%rdx, (%rax)	# tmp108, *slot_34
	.loc 1 779 0
	movq	-32(%rbp), %rax	# mem_elt, D.12794
.L176:
	.loc 1 780 0
	addq	$72, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	cselib_lookup_mem, .-cselib_lookup_mem
	.globl	cselib_subst_to_values
	.type	cselib_subst_to_values, @function
cselib_subst_to_values:
.LFB20:
	.loc 1 791 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movq	%rdi, -72(%rbp)	# x, x
	.loc 1 792 0
	movq	-72(%rbp), %rax	# x, tmp106
	movzwl	(%rax), %eax	# x_13(D)->code, D.12800
	movzwl	%ax, %eax	# D.12800, tmp107
	movl	%eax, -52(%rbp)	# tmp107, code
	.loc 1 793 0
	movl	-52(%rbp), %eax	# code, code.46
	cltq
	movq	rtx_format(,%rax,8), %rax	# rtx_format, tmp109
	movq	%rax, -24(%rbp)	# tmp109, fmt
	.loc 1 796 0
	movq	-72(%rbp), %rax	# x, tmp110
	movq	%rax, -32(%rbp)	# tmp110, copy
	.loc 1 799 0
	movl	-52(%rbp), %eax	# code, tmp112
	subl	$54, %eax	#, tmp111
	cmpl	$47, %eax	#, tmp111
	ja	.L206	#,
	movl	%eax, %eax	# tmp111, tmp113
	movq	.L185(,%rax,8), %rax	#, tmp114
	jmp	*%rax	# tmp114
	.section	.rodata
	.align 8
	.align 4
.L185:
	.quad	.L184
	.quad	.L184
	.quad	.L184
	.quad	.L206
	.quad	.L206
	.quad	.L206
	.quad	.L206
	.quad	.L186
	.quad	.L206
	.quad	.L206
	.quad	.L206
	.quad	.L206
	.quad	.L187
	.quad	.L206
	.quad	.L206
	.quad	.L206
	.quad	.L206
	.quad	.L206
	.quad	.L206
	.quad	.L206
	.quad	.L206
	.quad	.L206
	.quad	.L206
	.quad	.L206
	.quad	.L206
	.quad	.L206
	.quad	.L206
	.quad	.L206
	.quad	.L206
	.quad	.L206
	.quad	.L206
	.quad	.L206
	.quad	.L206
	.quad	.L206
	.quad	.L206
	.quad	.L206
	.quad	.L206
	.quad	.L206
	.quad	.L206
	.quad	.L206
	.quad	.L206
	.quad	.L206
	.quad	.L188
	.quad	.L188
	.quad	.L188
	.quad	.L188
	.quad	.L188
	.quad	.L188
	.text
.L186:
	.loc 1 802 0
	movq	reg_values(%rip), %rax	# reg_values, reg_values.47
	movq	-72(%rbp), %rdx	# x, tmp115
	movl	8(%rdx), %edx	# x_13(D)->fld[0].rtuint, D.12801
	movl	%edx, %edx	# D.12801, tmp116
	addq	$4, %rdx	#, tmp117
	movq	(%rax,%rdx,8), %rax	# reg_values.47_19->data.te, tmp118
	movq	%rax, -40(%rbp)	# tmp118, l
	jmp	.L189	#
.L192:
	.loc 1 803 0
	movq	-40(%rbp), %rax	# l, tmp119
	movq	8(%rax), %rax	# l_2->elt, D.12802
	movq	8(%rax), %rax	# _22->u.val_rtx, D.12803
	movzbl	2(%rax), %edx	# _23->mode, D.12804
	movq	-72(%rbp), %rax	# x, tmp120
	movzbl	2(%rax), %eax	# x_13(D)->mode, D.12804
	cmpb	%al, %dl	# D.12804, D.12804
	jne	.L190	#,
	.loc 1 804 0
	movq	-40(%rbp), %rax	# l, tmp121
	movq	8(%rax), %rax	# l_2->elt, D.12802
	movq	8(%rax), %rax	# _26->u.val_rtx, D.12799
	jmp	.L191	#
.L190:
	.loc 1 802 0
	movq	-40(%rbp), %rax	# l, tmp122
	movq	(%rax), %rax	# l_2->next, tmp123
	movq	%rax, -40(%rbp)	# tmp123, l
.L189:
	.loc 1 802 0 is_stmt 0 discriminator 1
	cmpq	$0, -40(%rbp)	#, l
	jne	.L192	#,
	.loc 1 806 0 is_stmt 1
	movl	$__FUNCTION__.11198, %edx	#,
	movl	$806, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L187:
	.loc 1 809 0
	movq	-72(%rbp), %rax	# x, tmp124
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp124,
	call	cselib_lookup_mem	#
	movq	%rax, -48(%rbp)	# tmp125, e
	.loc 1 810 0
	cmpq	$0, -48(%rbp)	#, e
	jne	.L193	#,
	.loc 1 814 0
	movq	-72(%rbp), %rax	# x, tmp126
	movzbl	2(%rax), %eax	# x_13(D)->mode, D.12804
	movzbl	%al, %edx	# D.12804, D.12805
	movl	next_unknown_value(%rip), %eax	# next_unknown_value, next_unknown_value.48
	addl	$1, %eax	#, next_unknown_value.49
	movl	%eax, next_unknown_value(%rip)	# next_unknown_value.49, next_unknown_value
	movl	next_unknown_value(%rip), %eax	# next_unknown_value, next_unknown_value.50
	movl	%edx, %esi	# D.12805,
	movl	%eax, %edi	# next_unknown_value.50,
	call	new_cselib_val	#
	movq	%rax, -48(%rbp)	# tmp127, e
.L193:
	.loc 1 816 0
	movq	-48(%rbp), %rax	# e, tmp128
	movq	8(%rax), %rax	# e_1->u.val_rtx, D.12799
	jmp	.L191	#
.L184:
	.loc 1 821 0
	movq	-72(%rbp), %rax	# x, D.12799
	jmp	.L191	#
.L188:
	.loc 1 829 0
	movq	-72(%rbp), %rax	# x, tmp129
	movzbl	2(%rax), %eax	# x_13(D)->mode, D.12804
	movzbl	%al, %edx	# D.12804, D.12805
	movl	next_unknown_value(%rip), %eax	# next_unknown_value, next_unknown_value.51
	addl	$1, %eax	#, next_unknown_value.52
	movl	%eax, next_unknown_value(%rip)	# next_unknown_value.52, next_unknown_value
	movl	next_unknown_value(%rip), %eax	# next_unknown_value, next_unknown_value.53
	movl	%edx, %esi	# D.12805,
	movl	%eax, %edi	# next_unknown_value.53,
	call	new_cselib_val	#
	movq	%rax, -48(%rbp)	# tmp130, e
	.loc 1 830 0
	movq	-48(%rbp), %rax	# e, tmp131
	movq	8(%rax), %rax	# e_43->u.val_rtx, D.12799
	jmp	.L191	#
.L206:
	.loc 1 833 0
	nop
	.loc 1 836 0
	movl	-52(%rbp), %eax	# code, code.54
	cltq
	movzbl	rtx_length(%rax), %eax	# rtx_length, D.12804
	movzbl	%al, %eax	# D.12804, D.12806
	subl	$1, %eax	#, tmp133
	movl	%eax, -64(%rbp)	# tmp133, i
	jmp	.L194	#
.L204:
	.loc 1 838 0
	movl	-64(%rbp), %eax	# i, tmp134
	movslq	%eax, %rdx	# tmp134, D.12807
	movq	-24(%rbp), %rax	# fmt, tmp135
	addq	%rdx, %rax	# D.12807, D.12808
	movzbl	(%rax), %eax	# *_50, D.12809
	cmpb	$101, %al	#, D.12809
	jne	.L195	#,
.LBB23:
	.loc 1 840 0
	movq	-72(%rbp), %rax	# x, tmp136
	movl	-64(%rbp), %edx	# i, tmp138
	movslq	%edx, %rdx	# tmp138, tmp137
	movq	8(%rax,%rdx,8), %rax	# x_13(D)->fld[i_9].rtx, D.12803
	movq	%rax, %rdi	# D.12803,
	call	cselib_subst_to_values	#
	movq	%rax, -16(%rbp)	# tmp139, t
	.loc 1 842 0
	movq	-72(%rbp), %rax	# x, tmp140
	movl	-64(%rbp), %edx	# i, tmp142
	movslq	%edx, %rdx	# tmp142, tmp141
	movq	8(%rax,%rdx,8), %rax	# x_13(D)->fld[i_9].rtx, D.12803
	cmpq	-16(%rbp), %rax	# t, D.12803
	je	.L196	#,
	.loc 1 842 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# x, tmp143
	cmpq	-32(%rbp), %rax	# copy, tmp143
	jne	.L196	#,
	.loc 1 843 0 is_stmt 1
	movq	-72(%rbp), %rax	# x, tmp144
	movq	%rax, %rdi	# tmp144,
	call	shallow_copy_rtx	#
	movq	%rax, -32(%rbp)	# tmp145, copy
.L196:
	.loc 1 845 0
	movq	-32(%rbp), %rax	# copy, tmp146
	movl	-64(%rbp), %edx	# i, tmp148
	movslq	%edx, %rdx	# tmp148, tmp147
	movq	-16(%rbp), %rcx	# t, tmp149
	movq	%rcx, 8(%rax,%rdx,8)	# tmp149, copy_3->fld[i_9].rtx
.LBE23:
	jmp	.L197	#
.L195:
	.loc 1 847 0
	movl	-64(%rbp), %eax	# i, tmp150
	movslq	%eax, %rdx	# tmp150, D.12807
	movq	-24(%rbp), %rax	# fmt, tmp151
	addq	%rdx, %rax	# D.12807, D.12808
	movzbl	(%rax), %eax	# *_57, D.12809
	cmpb	$69, %al	#, D.12809
	jne	.L197	#,
.LBB24:
	.loc 1 851 0
	movl	$0, -60(%rbp)	#, j
	jmp	.L198	#
.L203:
.LBB25:
	.loc 1 853 0
	movq	-72(%rbp), %rax	# x, tmp152
	movl	-64(%rbp), %edx	# i, tmp154
	movslq	%edx, %rdx	# tmp154, tmp153
	movq	8(%rax,%rdx,8), %rax	# x_13(D)->fld[i_9].rtvec, D.12810
	movl	-60(%rbp), %edx	# j, tmp156
	movslq	%edx, %rdx	# tmp156, tmp155
	movq	8(%rax,%rdx,8), %rax	# _62->elem, D.12803
	movq	%rax, %rdi	# D.12803,
	call	cselib_subst_to_values	#
	movq	%rax, -8(%rbp)	# tmp157, t
	.loc 1 855 0
	movq	-72(%rbp), %rax	# x, tmp158
	movl	-64(%rbp), %edx	# i, tmp160
	movslq	%edx, %rdx	# tmp160, tmp159
	movq	8(%rax,%rdx,8), %rax	# x_13(D)->fld[i_9].rtvec, D.12810
	movl	-60(%rbp), %edx	# j, tmp162
	movslq	%edx, %rdx	# tmp162, tmp161
	movq	8(%rax,%rdx,8), %rax	# _65->elem, D.12803
	cmpq	-8(%rbp), %rax	# t, D.12803
	je	.L199	#,
	.loc 1 855 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# x, tmp163
	movl	-64(%rbp), %edx	# i, tmp165
	movslq	%edx, %rdx	# tmp165, tmp164
	movq	8(%rax,%rdx,8), %rcx	# x_13(D)->fld[i_9].rtvec, D.12810
	movq	-32(%rbp), %rax	# copy, tmp166
	movl	-64(%rbp), %edx	# i, tmp168
	movslq	%edx, %rdx	# tmp168, tmp167
	movq	8(%rax,%rdx,8), %rax	# copy_6->fld[i_9].rtvec, D.12810
	cmpq	%rax, %rcx	# D.12810, D.12810
	jne	.L199	#,
	.loc 1 857 0 is_stmt 1
	movq	-72(%rbp), %rax	# x, tmp169
	cmpq	-32(%rbp), %rax	# copy, tmp169
	jne	.L200	#,
	.loc 1 858 0
	movq	-72(%rbp), %rax	# x, tmp170
	movq	%rax, %rdi	# tmp170,
	call	shallow_copy_rtx	#
	movq	%rax, -32(%rbp)	# tmp171, copy
.L200:
	.loc 1 860 0
	movq	-72(%rbp), %rax	# x, tmp172
	movl	-64(%rbp), %edx	# i, tmp174
	movslq	%edx, %rdx	# tmp174, tmp173
	movq	8(%rax,%rdx,8), %rax	# x_13(D)->fld[i_9].rtvec, D.12810
	movl	(%rax), %eax	# _70->num_elem, D.12806
	movl	%eax, %edi	# D.12806,
	call	rtvec_alloc	#
	movq	-32(%rbp), %rdx	# copy, tmp175
	movl	-64(%rbp), %ecx	# i, tmp177
	movslq	%ecx, %rcx	# tmp177, tmp176
	movq	%rax, 8(%rdx,%rcx,8)	# D.12810, copy_4->fld[i_9].rtvec
	.loc 1 861 0
	movl	$0, -56(%rbp)	#, k
	jmp	.L201	#
.L202:
	.loc 1 862 0 discriminator 2
	movq	-32(%rbp), %rax	# copy, tmp178
	movl	-64(%rbp), %edx	# i, tmp180
	movslq	%edx, %rdx	# tmp180, tmp179
	movq	8(%rax,%rdx,8), %rax	# copy_4->fld[i_9].rtvec, D.12810
	movq	-72(%rbp), %rdx	# x, tmp181
	movl	-64(%rbp), %ecx	# i, tmp183
	movslq	%ecx, %rcx	# tmp183, tmp182
	movq	8(%rdx,%rcx,8), %rdx	# x_13(D)->fld[i_9].rtvec, D.12810
	movl	-56(%rbp), %ecx	# k, tmp185
	movslq	%ecx, %rcx	# tmp185, tmp184
	movq	8(%rdx,%rcx,8), %rcx	# _75->elem, D.12803
	movl	-56(%rbp), %edx	# k, tmp187
	movslq	%edx, %rdx	# tmp187, tmp186
	movq	%rcx, 8(%rax,%rdx,8)	# D.12803, _74->elem
	.loc 1 861 0 discriminator 2
	addl	$1, -56(%rbp)	#, k
.L201:
	.loc 1 861 0 is_stmt 0 discriminator 1
	movl	-56(%rbp), %eax	# k, tmp188
	cmpl	-60(%rbp), %eax	# j, tmp188
	jl	.L202	#,
.L199:
	.loc 1 865 0 is_stmt 1
	movq	-32(%rbp), %rax	# copy, tmp189
	movl	-64(%rbp), %edx	# i, tmp191
	movslq	%edx, %rdx	# tmp191, tmp190
	movq	8(%rax,%rdx,8), %rax	# copy_5->fld[i_9].rtvec, D.12810
	movl	-60(%rbp), %edx	# j, tmp193
	movslq	%edx, %rdx	# tmp193, tmp192
	movq	-8(%rbp), %rcx	# t, tmp194
	movq	%rcx, 8(%rax,%rdx,8)	# tmp194, _78->elem
.LBE25:
	.loc 1 851 0
	addl	$1, -60(%rbp)	#, j
.L198:
	.loc 1 851 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# x, tmp195
	movl	-64(%rbp), %edx	# i, tmp197
	movslq	%edx, %rdx	# tmp197, tmp196
	movq	8(%rax,%rdx,8), %rax	# x_13(D)->fld[i_9].rtvec, D.12810
	movl	(%rax), %eax	# _60->num_elem, D.12806
	cmpl	-60(%rbp), %eax	# j, D.12806
	jg	.L203	#,
.L197:
.LBE24:
	.loc 1 836 0 is_stmt 1
	subl	$1, -64(%rbp)	#, i
.L194:
	.loc 1 836 0 is_stmt 0 discriminator 1
	cmpl	$0, -64(%rbp)	#, i
	jns	.L204	#,
	.loc 1 870 0 is_stmt 1
	movq	-32(%rbp), %rax	# copy, D.12799
.L191:
	.loc 1 871 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	cselib_subst_to_values, .-cselib_subst_to_values
	.globl	cselib_lookup
	.type	cselib_lookup, @function
cselib_lookup:
.LFB21:
	.loc 1 883 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$72, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -72(%rbp)	# x, x
	movl	%esi, -76(%rbp)	# mode, mode
	movl	%edx, -80(%rbp)	# create, create
	.loc 1 888 0
	movq	-72(%rbp), %rax	# x, tmp133
	movzbl	2(%rax), %eax	# x_12(D)->mode, D.12812
	testb	%al, %al	# D.12812
	je	.L208	#,
	.loc 1 889 0
	movq	-72(%rbp), %rax	# x, tmp134
	movzbl	2(%rax), %eax	# x_12(D)->mode, D.12812
	movzbl	%al, %eax	# D.12812, tmp135
	movl	%eax, -76(%rbp)	# tmp135, mode
.L208:
	.loc 1 891 0
	movq	-72(%rbp), %rax	# x, tmp136
	movzwl	(%rax), %eax	# x_12(D)->code, D.12813
	cmpw	$60, %ax	#, D.12813
	jne	.L209	#,
	.loc 1 892 0
	movq	-72(%rbp), %rax	# x, tmp137
	movq	8(%rax), %rax	# x_12(D)->fld[0].rt_cselib, D.12811
	jmp	.L210	#
.L209:
	.loc 1 894 0
	movq	-72(%rbp), %rax	# x, tmp138
	movzwl	(%rax), %eax	# x_12(D)->code, D.12813
	cmpw	$61, %ax	#, D.12813
	jne	.L211	#,
.LBB26:
	.loc 1 897 0
	movq	-72(%rbp), %rax	# x, tmp139
	movl	8(%rax), %eax	# x_12(D)->fld[0].rtuint, tmp140
	movl	%eax, -52(%rbp)	# tmp140, i
	.loc 1 899 0
	movq	reg_values(%rip), %rax	# reg_values, reg_values.55
	movl	-52(%rbp), %edx	# i, tmp141
	addq	$4, %rdx	#, tmp142
	movq	(%rax,%rdx,8), %rax	# reg_values.55_21->data.te, tmp143
	movq	%rax, -40(%rbp)	# tmp143, l
	jmp	.L212	#
.L214:
	.loc 1 900 0
	movq	-40(%rbp), %rax	# l, tmp144
	movq	8(%rax), %rax	# l_2->elt, D.12811
	movq	8(%rax), %rax	# _23->u.val_rtx, D.12814
	movzbl	2(%rax), %eax	# _24->mode, D.12812
	movzbl	%al, %eax	# D.12812, D.12815
	cmpl	-76(%rbp), %eax	# mode, D.12815
	jne	.L213	#,
	.loc 1 901 0
	movq	-40(%rbp), %rax	# l, tmp145
	movq	8(%rax), %rax	# l_2->elt, D.12811
	jmp	.L210	#
.L213:
	.loc 1 899 0
	movq	-40(%rbp), %rax	# l, tmp146
	movq	(%rax), %rax	# l_2->next, tmp147
	movq	%rax, -40(%rbp)	# tmp147, l
.L212:
	.loc 1 899 0 is_stmt 0 discriminator 1
	cmpq	$0, -40(%rbp)	#, l
	jne	.L214	#,
	.loc 1 903 0 is_stmt 1
	cmpl	$0, -80(%rbp)	#, create
	jne	.L215	#,
	.loc 1 904 0
	movl	$0, %eax	#, D.12811
	jmp	.L210	#
.L215:
	.loc 1 906 0
	cmpl	$52, -52(%rbp)	#, i
	ja	.L216	#,
.LBB27:
	.loc 1 908 0
	cmpl	$7, -52(%rbp)	#, i
	jbe	.L217	#,
	.loc 1 908 0 is_stmt 0 discriminator 1
	cmpl	$15, -52(%rbp)	#, i
	jbe	.L218	#,
.L217:
	.loc 1 908 0 discriminator 2
	cmpl	$20, -52(%rbp)	#, i
	jbe	.L219	#,
	.loc 1 908 0 discriminator 1
	cmpl	$28, -52(%rbp)	#, i
	jbe	.L218	#,
.L219:
	.loc 1 908 0 discriminator 2
	cmpl	$44, -52(%rbp)	#, i
	jbe	.L220	#,
	.loc 1 908 0 discriminator 1
	cmpl	$52, -52(%rbp)	#, i
	jbe	.L218	#,
.L220:
	.loc 1 908 0 discriminator 2
	cmpl	$28, -52(%rbp)	#, i
	jbe	.L221	#,
	.loc 1 908 0 discriminator 1
	cmpl	$36, -52(%rbp)	#, i
	ja	.L221	#,
.L218:
	movl	-76(%rbp), %eax	# mode, mode.58
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.12817
	cmpl	$5, %eax	#, D.12817
	je	.L222	#,
	.loc 1 908 0 discriminator 4
	movl	-76(%rbp), %eax	# mode, mode.59
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.12817
	cmpl	$6, %eax	#, D.12817
	jne	.L223	#,
.L222:
	.loc 1 908 0 discriminator 3
	movl	$2, %eax	#, iftmp.57
	jmp	.L225	#
.L223:
	.loc 1 908 0 discriminator 1
	movl	$1, %eax	#, iftmp.57
	jmp	.L225	#
.L221:
	.loc 1 908 0 discriminator 2
	cmpl	$18, -76(%rbp)	#, mode
	jne	.L226	#,
	.loc 1 908 0 discriminator 7
	movl	target_flags(%rip), %eax	# target_flags, target_flags.62
	andl	$33554432, %eax	#, D.12816
	testl	%eax, %eax	# D.12816
	je	.L227	#,
	.loc 1 908 0 discriminator 9
	movl	$2, %eax	#, iftmp.61
	jmp	.L225	#
.L227:
	.loc 1 908 0 discriminator 10
	movl	$3, %eax	#, iftmp.61
	jmp	.L225	#
.L226:
	.loc 1 908 0 discriminator 8
	cmpl	$24, -76(%rbp)	#, mode
	jne	.L230	#,
	.loc 1 908 0 discriminator 11
	movl	target_flags(%rip), %eax	# target_flags, target_flags.65
	andl	$33554432, %eax	#, D.12816
	testl	%eax, %eax	# D.12816
	je	.L231	#,
	.loc 1 908 0 discriminator 13
	movl	$4, %eax	#, iftmp.64
	jmp	.L225	#
.L231:
	.loc 1 908 0 discriminator 14
	movl	$6, %eax	#, iftmp.64
	jmp	.L225	#
.L230:
	.loc 1 908 0 discriminator 12
	movl	-76(%rbp), %eax	# mode, mode.66
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.12812
	movzbl	%al, %edx	# D.12812, D.12816
	movl	target_flags(%rip), %eax	# target_flags, target_flags.68
	andl	$33554432, %eax	#, D.12816
	testl	%eax, %eax	# D.12816
	je	.L234	#,
	.loc 1 908 0 discriminator 1
	movl	$8, %eax	#, iftmp.67
	jmp	.L235	#
.L234:
	.loc 1 908 0 discriminator 2
	movl	$4, %eax	#, iftmp.67
.L235:
	.loc 1 908 0 discriminator 3
	addl	%edx, %eax	# D.12816, D.12816
	subl	$1, %eax	#, D.12816
	movl	target_flags(%rip), %edx	# target_flags, target_flags.70
	andl	$33554432, %edx	#, D.12816
	testl	%edx, %edx	# D.12816
	je	.L236	#,
	.loc 1 908 0 discriminator 1
	movl	$8, %ebx	#, iftmp.69
	jmp	.L237	#
.L236:
	.loc 1 908 0 discriminator 2
	movl	$4, %ebx	#, iftmp.69
.L237:
	.loc 1 908 0 discriminator 3
	cltd
	idivl	%ebx	# iftmp.69
.L225:
	.loc 1 908 0 discriminator 6
	movl	%eax, -48(%rbp)	# iftmp.56, n
	.loc 1 910 0 is_stmt 1 discriminator 6
	movl	max_value_regs(%rip), %eax	# max_value_regs, max_value_regs.71
	cmpl	%eax, -48(%rbp)	# max_value_regs.71, n
	jbe	.L216	#,
	.loc 1 911 0
	movl	-48(%rbp), %eax	# n, tmp153
	movl	%eax, max_value_regs(%rip)	# tmp153, max_value_regs
.L216:
.LBE27:
	.loc 1 914 0
	movq	-72(%rbp), %rax	# x, tmp154
	movzbl	2(%rax), %eax	# x_12(D)->mode, D.12812
	movzbl	%al, %edx	# D.12812, D.12818
	movl	next_unknown_value(%rip), %eax	# next_unknown_value, next_unknown_value.72
	addl	$1, %eax	#, next_unknown_value.73
	movl	%eax, next_unknown_value(%rip)	# next_unknown_value.73, next_unknown_value
	movl	next_unknown_value(%rip), %eax	# next_unknown_value, next_unknown_value.74
	movl	%edx, %esi	# D.12818,
	movl	%eax, %edi	# next_unknown_value.74,
	call	new_cselib_val	#
	movq	%rax, -32(%rbp)	# tmp155, e
	.loc 1 915 0
	movq	-32(%rbp), %rax	# e, tmp156
	movq	16(%rax), %rax	# e_72->locs, D.12819
	movq	-72(%rbp), %rdx	# x, tmp157
	movq	%rdx, %rsi	# tmp157,
	movq	%rax, %rdi	# D.12819,
	call	new_elt_loc_list	#
	movq	-32(%rbp), %rdx	# e, tmp158
	movq	%rax, 16(%rdx)	# D.12819, e_72->locs
	.loc 1 916 0
	movq	reg_values(%rip), %rax	# reg_values, reg_values.75
	movl	-52(%rbp), %edx	# i, tmp159
	addq	$4, %rdx	#, tmp160
	movq	(%rax,%rdx,8), %rax	# reg_values.75_75->data.te, D.12820
	testq	%rax, %rax	# D.12820
	jne	.L238	#,
	.loc 1 917 0
	movq	used_regs(%rip), %rax	# used_regs, used_regs.76
	movq	8(%rax), %rdx	# used_regs.76_77->elements_used, D.12821
	movq	used_regs(%rip), %rax	# used_regs, used_regs.77
	movq	(%rax), %rax	# used_regs.77_79->num_elements, D.12821
	cmpq	%rax, %rdx	# D.12821, D.12821
	jb	.L239	#,
	.loc 1 917 0 is_stmt 0 discriminator 1
	movq	used_regs(%rip), %rax	# used_regs, used_regs.78
	movq	(%rax), %rax	# used_regs.78_81->num_elements, D.12821
	leaq	(%rax,%rax), %rdx	#, D.12821
	movq	used_regs(%rip), %rax	# used_regs, used_regs.79
	movq	%rdx, %rsi	# D.12821,
	movq	%rax, %rdi	# used_regs.79,
	call	varray_grow	#
	movq	%rax, used_regs(%rip)	# used_regs.80, used_regs
.L239:
	.loc 1 917 0 discriminator 2
	movq	used_regs(%rip), %rcx	# used_regs, used_regs.81
	movq	used_regs(%rip), %rax	# used_regs, used_regs.82
	movq	8(%rax), %rdx	# used_regs.82_87->elements_used, D.12821
	leaq	1(%rdx), %rsi	#, D.12821
	movq	%rsi, 8(%rax)	# D.12821, used_regs.82_87->elements_used
	addq	$8, %rdx	#, tmp161
	movl	-52(%rbp), %eax	# i, tmp162
	movl	%eax, (%rcx,%rdx,4)	# tmp162, used_regs.81_86->data.u
.L238:
	.loc 1 918 0 is_stmt 1
	movq	reg_values(%rip), %rbx	# reg_values, reg_values.83
	movq	reg_values(%rip), %rax	# reg_values, reg_values.84
	movl	-52(%rbp), %edx	# i, tmp163
	addq	$4, %rdx	#, tmp164
	movq	(%rax,%rdx,8), %rax	# reg_values.84_92->data.te, D.12820
	movq	-32(%rbp), %rdx	# e, tmp165
	movq	%rdx, %rsi	# tmp165,
	movq	%rax, %rdi	# D.12820,
	call	new_elt_list	#
	movl	-52(%rbp), %edx	# i, tmp166
	addq	$4, %rdx	#, tmp167
	movq	%rax, (%rbx,%rdx,8)	# D.12820, reg_values.83_91->data.te
	.loc 1 919 0
	movq	-32(%rbp), %rax	# e, tmp168
	movl	(%rax), %edx	# e_72->value, D.12815
	movq	hash_table(%rip), %rax	# hash_table, hash_table.85
	movq	-72(%rbp), %rsi	# x, tmp169
	movl	$1, %ecx	#,
	movq	%rax, %rdi	# hash_table.85,
	call	htab_find_slot_with_hash	#
	movq	%rax, -24(%rbp)	# tmp170, slot
	.loc 1 920 0
	movq	-24(%rbp), %rax	# slot, tmp171
	movq	-32(%rbp), %rdx	# e, tmp172
	movq	%rdx, (%rax)	# tmp172, *slot_97
	.loc 1 921 0
	movq	-32(%rbp), %rax	# e, D.12811
	jmp	.L210	#
.L211:
.LBE26:
	.loc 1 924 0
	movq	-72(%rbp), %rax	# x, tmp173
	movzwl	(%rax), %eax	# x_12(D)->code, D.12813
	cmpw	$66, %ax	#, D.12813
	jne	.L240	#,
	.loc 1 925 0
	movl	-80(%rbp), %edx	# create, tmp174
	movq	-72(%rbp), %rax	# x, tmp175
	movl	%edx, %esi	# tmp174,
	movq	%rax, %rdi	# tmp175,
	call	cselib_lookup_mem	#
	jmp	.L210	#
.L240:
	.loc 1 927 0
	movl	-80(%rbp), %edx	# create, tmp176
	movl	-76(%rbp), %ecx	# mode, tmp177
	movq	-72(%rbp), %rax	# x, tmp178
	movl	%ecx, %esi	# tmp177,
	movq	%rax, %rdi	# tmp178,
	call	hash_rtx	#
	movl	%eax, -44(%rbp)	# tmp179, hashval
	.loc 1 929 0
	cmpl	$0, -44(%rbp)	#, hashval
	jne	.L241	#,
	.loc 1 930 0
	movl	$0, %eax	#, D.12811
	jmp	.L210	#
.L241:
	.loc 1 932 0
	cmpl	$0, -80(%rbp)	#, create
	setne	%al	#, D.12822
	movzbl	%al, %ebx	# D.12822, D.12823
	movq	-72(%rbp), %rdx	# x, tmp180
	movl	-76(%rbp), %eax	# mode, tmp181
	movq	%rdx, %rsi	# tmp180,
	movl	%eax, %edi	# tmp181,
	call	wrap_constant	#
	movq	%rax, %rsi	#, D.12814
	movq	hash_table(%rip), %rax	# hash_table, hash_table.86
	movl	-44(%rbp), %edx	# hashval, tmp182
	movl	%ebx, %ecx	# D.12823,
	movq	%rax, %rdi	# hash_table.86,
	call	htab_find_slot_with_hash	#
	movq	%rax, -24(%rbp)	# tmp183, slot
	.loc 1 934 0
	cmpq	$0, -24(%rbp)	#, slot
	jne	.L242	#,
	.loc 1 935 0
	movl	$0, %eax	#, D.12811
	jmp	.L210	#
.L242:
	.loc 1 937 0
	movq	-24(%rbp), %rax	# slot, tmp184
	movq	(%rax), %rax	# *slot_107, tmp185
	movq	%rax, -32(%rbp)	# tmp185, e
	.loc 1 938 0
	cmpq	$0, -32(%rbp)	#, e
	je	.L243	#,
	.loc 1 939 0
	movq	-32(%rbp), %rax	# e, D.12811
	jmp	.L210	#
.L243:
	.loc 1 941 0
	movl	-76(%rbp), %edx	# mode, tmp186
	movl	-44(%rbp), %eax	# hashval, tmp187
	movl	%edx, %esi	# tmp186,
	movl	%eax, %edi	# tmp187,
	call	new_cselib_val	#
	movq	%rax, -32(%rbp)	# tmp188, e
	.loc 1 946 0
	movq	-24(%rbp), %rax	# slot, tmp189
	movq	-32(%rbp), %rdx	# e, tmp190
	movq	%rdx, (%rax)	# tmp190, *slot_107
	.loc 1 947 0
	movq	-72(%rbp), %rax	# x, tmp191
	movq	%rax, %rdi	# tmp191,
	call	cselib_subst_to_values	#
	movq	%rax, %rdx	#, D.12814
	movq	-32(%rbp), %rax	# e, tmp192
	movq	16(%rax), %rax	# e_111->locs, D.12819
	movq	%rdx, %rsi	# D.12814,
	movq	%rax, %rdi	# D.12819,
	call	new_elt_loc_list	#
	movq	-32(%rbp), %rdx	# e, tmp193
	movq	%rax, 16(%rdx)	# D.12819, e_111->locs
	.loc 1 948 0
	movq	-32(%rbp), %rax	# e, D.12811
.L210:
	.loc 1 949 0
	addq	$72, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	cselib_lookup, .-cselib_lookup
	.type	cselib_invalidate_regno, @function
cselib_invalidate_regno:
.LFB22:
	.loc 1 961 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$72, %rsp	#,
	.cfi_offset 3, -24
	movl	%edi, -68(%rbp)	# regno, regno
	movl	%esi, -72(%rbp)	# mode, mode
	.loc 1 966 0
	movl	reload_completed(%rip), %eax	# reload_completed, reload_completed.87
	testl	%eax, %eax	# reload_completed.87
	je	.L245	#,
	.loc 1 966 0 is_stmt 0 discriminator 1
	cmpl	$52, -68(%rbp)	#, regno
	jbe	.L245	#,
	.loc 1 967 0 is_stmt 1
	movq	reg_renumber(%rip), %rax	# reg_renumber, reg_renumber.88
	movl	-68(%rbp), %edx	# regno, D.12824
	addq	%rdx, %rdx	# D.12824
	addq	%rdx, %rax	# D.12824, D.12825
	movzwl	(%rax), %eax	# *_29, D.12826
	testw	%ax, %ax	# D.12826
	js	.L245	#,
	.loc 1 968 0
	movl	$__FUNCTION__.11244, %edx	#,
	movl	$968, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L245:
	.loc 1 974 0
	cmpl	$52, -68(%rbp)	#, regno
	ja	.L246	#,
	.loc 1 974 0 is_stmt 0 discriminator 1
	cmpl	$0, -72(%rbp)	#, mode
	je	.L246	#,
	.loc 1 976 0 is_stmt 1
	movl	max_value_regs(%rip), %eax	# max_value_regs, max_value_regs.89
	cmpl	%eax, -68(%rbp)	# max_value_regs.89, regno
	jae	.L247	#,
	.loc 1 977 0
	movl	$0, -56(%rbp)	#, i
	jmp	.L248	#
.L247:
	.loc 1 979 0
	movl	max_value_regs(%rip), %eax	# max_value_regs, max_value_regs.90
	movl	-68(%rbp), %edx	# regno, tmp144
	subl	%eax, %edx	# max_value_regs.90, tmp143
	movl	%edx, %eax	# tmp143, tmp143
	movl	%eax, -56(%rbp)	# tmp143, i
.L248:
	.loc 1 981 0
	cmpl	$7, -68(%rbp)	#, regno
	jbe	.L249	#,
	.loc 1 981 0 is_stmt 0 discriminator 1
	cmpl	$15, -68(%rbp)	#, regno
	jbe	.L250	#,
.L249:
	.loc 1 981 0 discriminator 2
	cmpl	$20, -68(%rbp)	#, regno
	jbe	.L251	#,
	.loc 1 981 0 discriminator 1
	cmpl	$28, -68(%rbp)	#, regno
	jbe	.L250	#,
.L251:
	.loc 1 981 0 discriminator 2
	cmpl	$44, -68(%rbp)	#, regno
	jbe	.L252	#,
	.loc 1 981 0 discriminator 1
	cmpl	$52, -68(%rbp)	#, regno
	jbe	.L250	#,
.L252:
	.loc 1 981 0 discriminator 2
	cmpl	$28, -68(%rbp)	#, regno
	jbe	.L253	#,
	.loc 1 981 0 discriminator 1
	cmpl	$36, -68(%rbp)	#, regno
	ja	.L253	#,
.L250:
	movl	-72(%rbp), %eax	# mode, mode.93
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.12829
	cmpl	$5, %eax	#, D.12829
	je	.L254	#,
	.loc 1 981 0 discriminator 4
	movl	-72(%rbp), %eax	# mode, mode.94
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.12829
	cmpl	$6, %eax	#, D.12829
	jne	.L255	#,
.L254:
	.loc 1 981 0 discriminator 3
	movl	$2, %eax	#, iftmp.92
	jmp	.L257	#
.L255:
	.loc 1 981 0 discriminator 1
	movl	$1, %eax	#, iftmp.92
	jmp	.L257	#
.L253:
	.loc 1 981 0 discriminator 2
	cmpl	$18, -72(%rbp)	#, mode
	jne	.L258	#,
	.loc 1 981 0 discriminator 7
	movl	target_flags(%rip), %eax	# target_flags, target_flags.97
	andl	$33554432, %eax	#, D.12827
	testl	%eax, %eax	# D.12827
	je	.L259	#,
	.loc 1 981 0 discriminator 9
	movl	$2, %eax	#, iftmp.96
	jmp	.L257	#
.L259:
	.loc 1 981 0 discriminator 10
	movl	$3, %eax	#, iftmp.96
	jmp	.L257	#
.L258:
	.loc 1 981 0 discriminator 8
	cmpl	$24, -72(%rbp)	#, mode
	jne	.L262	#,
	.loc 1 981 0 discriminator 11
	movl	target_flags(%rip), %eax	# target_flags, target_flags.100
	andl	$33554432, %eax	#, D.12827
	testl	%eax, %eax	# D.12827
	je	.L263	#,
	.loc 1 981 0 discriminator 13
	movl	$4, %eax	#, iftmp.99
	jmp	.L257	#
.L263:
	.loc 1 981 0 discriminator 14
	movl	$6, %eax	#, iftmp.99
	jmp	.L257	#
.L262:
	.loc 1 981 0 discriminator 12
	movl	-72(%rbp), %eax	# mode, mode.101
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.12828
	movzbl	%al, %edx	# D.12828, D.12827
	movl	target_flags(%rip), %eax	# target_flags, target_flags.103
	andl	$33554432, %eax	#, D.12827
	testl	%eax, %eax	# D.12827
	je	.L266	#,
	.loc 1 981 0 discriminator 1
	movl	$8, %eax	#, iftmp.102
	jmp	.L267	#
.L266:
	.loc 1 981 0 discriminator 2
	movl	$4, %eax	#, iftmp.102
.L267:
	.loc 1 981 0 discriminator 3
	addl	%edx, %eax	# D.12827, D.12827
	subl	$1, %eax	#, D.12827
	movl	target_flags(%rip), %edx	# target_flags, target_flags.105
	andl	$33554432, %edx	#, D.12827
	testl	%edx, %edx	# D.12827
	je	.L268	#,
	.loc 1 981 0 discriminator 1
	movl	$8, %ecx	#, iftmp.104
	jmp	.L269	#
.L268:
	.loc 1 981 0 discriminator 2
	movl	$4, %ecx	#, iftmp.104
.L269:
	.loc 1 981 0 discriminator 3
	cltd
	idivl	%ecx	# iftmp.104
.L257:
	.loc 1 981 0 discriminator 6
	movl	-68(%rbp), %edx	# regno, tmp153
	addl	%edx, %eax	# tmp153, tmp152
	movl	%eax, -60(%rbp)	# tmp152, endregno
	.loc 1 989 0 is_stmt 1 discriminator 6
	jmp	.L271	#
.L246:
	.loc 1 985 0
	movl	-68(%rbp), %eax	# regno, tmp154
	movl	%eax, -56(%rbp)	# tmp154, i
	.loc 1 986 0
	movl	-68(%rbp), %eax	# regno, tmp158
	addl	$1, %eax	#, tmp157
	movl	%eax, -60(%rbp)	# tmp157, endregno
	.loc 1 989 0
	jmp	.L271	#
.L300:
.LBB28:
	.loc 1 991 0
	movq	reg_values(%rip), %rax	# reg_values, reg_values.106
	movl	-56(%rbp), %edx	# i, tmp159
	addq	$4, %rdx	#, tmp160
	salq	$3, %rdx	#, tmp161
	addq	%rdx, %rax	# tmp161, tmp162
	movq	%rax, -48(%rbp)	# tmp162, l
	.loc 1 995 0
	jmp	.L272	#
.L299:
.LBB29:
	.loc 1 997 0
	movq	-48(%rbp), %rax	# l, tmp163
	movq	(%rax), %rax	# *l_5, D.12830
	movq	8(%rax), %rax	# _76->elt, tmp164
	movq	%rax, -32(%rbp)	# tmp164, v
	.loc 1 999 0
	movl	-56(%rbp), %eax	# i, tmp165
	movl	%eax, -52(%rbp)	# tmp165, this_last
	.loc 1 1001 0
	cmpl	$52, -56(%rbp)	#, i
	ja	.L273	#,
	.loc 1 1002 0
	cmpl	$7, -56(%rbp)	#, i
	jbe	.L274	#,
	.loc 1 1002 0 is_stmt 0 discriminator 1
	cmpl	$15, -56(%rbp)	#, i
	jbe	.L275	#,
.L274:
	.loc 1 1002 0 discriminator 2
	cmpl	$20, -56(%rbp)	#, i
	jbe	.L276	#,
	.loc 1 1002 0 discriminator 1
	cmpl	$28, -56(%rbp)	#, i
	jbe	.L275	#,
.L276:
	.loc 1 1002 0 discriminator 2
	cmpl	$44, -56(%rbp)	#, i
	jbe	.L277	#,
	.loc 1 1002 0 discriminator 1
	cmpl	$52, -56(%rbp)	#, i
	jbe	.L275	#,
.L277:
	.loc 1 1002 0 discriminator 2
	cmpl	$28, -56(%rbp)	#, i
	jbe	.L278	#,
	.loc 1 1002 0 discriminator 1
	cmpl	$36, -56(%rbp)	#, i
	ja	.L278	#,
.L275:
	movq	-32(%rbp), %rax	# v, tmp166
	movq	8(%rax), %rax	# v_77->u.val_rtx, D.12831
	movzbl	2(%rax), %eax	# _113->mode, D.12828
	movzbl	%al, %eax	# D.12828, D.12827
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.12829
	cmpl	$5, %eax	#, D.12829
	je	.L279	#,
	.loc 1 1002 0 discriminator 2
	movq	-32(%rbp), %rax	# v, tmp168
	movq	8(%rax), %rax	# v_77->u.val_rtx, D.12831
	movzbl	2(%rax), %eax	# _117->mode, D.12828
	movzbl	%al, %eax	# D.12828, D.12827
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.12829
	cmpl	$6, %eax	#, D.12829
	jne	.L280	#,
.L279:
	.loc 1 1002 0 discriminator 1
	movl	$1, %eax	#, iftmp.108
	jmp	.L281	#
.L280:
	.loc 1 1002 0 discriminator 3
	movl	$0, %eax	#, iftmp.108
.L281:
	.loc 1 1002 0 discriminator 4
	jmp	.L282	#
.L278:
	.loc 1 1002 0 discriminator 2
	movq	-32(%rbp), %rax	# v, tmp170
	movq	8(%rax), %rax	# v_77->u.val_rtx, D.12831
	movzbl	2(%rax), %eax	# _79->mode, D.12828
	cmpb	$18, %al	#, D.12828
	jne	.L283	#,
	.loc 1 1002 0 discriminator 4
	movl	target_flags(%rip), %eax	# target_flags, target_flags.111
	andl	$33554432, %eax	#, D.12827
	testl	%eax, %eax	# D.12827
	je	.L284	#,
	.loc 1 1002 0 discriminator 6
	movl	$1, %eax	#, iftmp.110
	jmp	.L282	#
.L284:
	.loc 1 1002 0 discriminator 7
	movl	$2, %eax	#, iftmp.110
	jmp	.L282	#
.L283:
	.loc 1 1002 0 discriminator 5
	movq	-32(%rbp), %rax	# v, tmp171
	movq	8(%rax), %rax	# v_77->u.val_rtx, D.12831
	movzbl	2(%rax), %eax	# _86->mode, D.12828
	cmpb	$24, %al	#, D.12828
	jne	.L287	#,
	.loc 1 1002 0 discriminator 8
	movl	target_flags(%rip), %eax	# target_flags, target_flags.114
	andl	$33554432, %eax	#, D.12827
	testl	%eax, %eax	# D.12827
	je	.L288	#,
	.loc 1 1002 0 discriminator 10
	movl	$3, %eax	#, iftmp.113
	jmp	.L282	#
.L288:
	.loc 1 1002 0 discriminator 11
	movl	$5, %eax	#, iftmp.113
	jmp	.L282	#
.L287:
	.loc 1 1002 0 discriminator 9
	movq	-32(%rbp), %rax	# v, tmp172
	movq	8(%rax), %rax	# v_77->u.val_rtx, D.12831
	movzbl	2(%rax), %eax	# _93->mode, D.12828
	movzbl	%al, %eax	# D.12828, D.12827
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.12828
	movzbl	%al, %edx	# D.12828, D.12827
	movl	target_flags(%rip), %eax	# target_flags, target_flags.116
	andl	$33554432, %eax	#, D.12827
	testl	%eax, %eax	# D.12827
	je	.L291	#,
	.loc 1 1002 0 discriminator 1
	movl	$8, %eax	#, iftmp.115
	jmp	.L292	#
.L291:
	.loc 1 1002 0 discriminator 2
	movl	$4, %eax	#, iftmp.115
.L292:
	.loc 1 1002 0 discriminator 3
	addl	%edx, %eax	# D.12827, D.12827
	subl	$1, %eax	#, D.12827
	movl	target_flags(%rip), %edx	# target_flags, target_flags.118
	andl	$33554432, %edx	#, D.12827
	testl	%edx, %edx	# D.12827
	je	.L293	#,
	.loc 1 1002 0 discriminator 1
	movl	$8, %ebx	#, iftmp.117
	jmp	.L294	#
.L293:
	.loc 1 1002 0 discriminator 2
	movl	$4, %ebx	#, iftmp.117
.L294:
	.loc 1 1002 0 discriminator 3
	cltd
	idivl	%ebx	# iftmp.117
	subl	$1, %eax	#, D.12827
.L282:
	addl	%eax, -52(%rbp)	# iftmp.107, this_last
.L273:
	.loc 1 1004 0 is_stmt 1
	movl	-52(%rbp), %eax	# this_last, tmp176
	cmpl	-68(%rbp), %eax	# regno, tmp176
	jae	.L295	#,
	.loc 1 1006 0
	movq	-48(%rbp), %rax	# l, tmp177
	movq	(%rax), %rax	# *l_5, D.12830
	movq	%rax, -48(%rbp)	# D.12830, l
	.loc 1 1007 0
	jmp	.L272	#
.L295:
	.loc 1 1011 0
	movq	-48(%rbp), %rax	# l, tmp178
	movq	%rax, %rdi	# tmp178,
	call	unchain_one_elt_list	#
	.loc 1 1015 0
	movq	-32(%rbp), %rax	# v, tmp182
	addq	$16, %rax	#, tmp181
	movq	%rax, -40(%rbp)	# tmp181, p
.L298:
.LBB30:
	.loc 1 1017 0
	movq	-40(%rbp), %rax	# p, tmp183
	movq	(%rax), %rax	# *p_6, D.12832
	movq	8(%rax), %rax	# _128->loc, tmp184
	movq	%rax, -24(%rbp)	# tmp184, x
	.loc 1 1019 0
	movq	-24(%rbp), %rax	# x, tmp185
	movzwl	(%rax), %eax	# x_129->code, D.12833
	cmpw	$61, %ax	#, D.12833
	jne	.L296	#,
	.loc 1 1019 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# x, tmp186
	movl	8(%rax), %eax	# x_129->fld[0].rtuint, D.12834
	cmpl	-56(%rbp), %eax	# i, D.12834
	jne	.L296	#,
	.loc 1 1021 0 is_stmt 1
	movq	-40(%rbp), %rax	# p, tmp187
	movq	%rax, %rdi	# tmp187,
	call	unchain_one_elt_loc_list	#
	.loc 1 1022 0
	nop
.LBE30:
	.loc 1 1025 0
	movq	-32(%rbp), %rax	# v, tmp189
	movq	16(%rax), %rax	# v_77->locs, D.12832
	testq	%rax, %rax	# D.12832
	jne	.L272	#,
	jmp	.L301	#
.L296:
	.loc 1 1015 0
	movq	-40(%rbp), %rax	# p, tmp188
	movq	(%rax), %rax	# *p_6, D.12832
	movq	%rax, -40(%rbp)	# D.12832, p
	.loc 1 1024 0
	jmp	.L298	#
.L301:
	.loc 1 1026 0
	movl	n_useless_values(%rip), %eax	# n_useless_values, n_useless_values.119
	addl	$1, %eax	#, n_useless_values.120
	movl	%eax, n_useless_values(%rip)	# n_useless_values.120, n_useless_values
.L272:
.LBE29:
	.loc 1 995 0 discriminator 1
	movq	-48(%rbp), %rax	# l, tmp190
	movq	(%rax), %rax	# *l_5, D.12830
	testq	%rax, %rax	# D.12830
	jne	.L299	#,
.LBE28:
	.loc 1 989 0
	addl	$1, -56(%rbp)	#, i
.L271:
	.loc 1 989 0 is_stmt 0 discriminator 1
	movl	-56(%rbp), %eax	# i, tmp191
	cmpl	-60(%rbp), %eax	# endregno, tmp191
	jb	.L300	#,
	.loc 1 1029 0 is_stmt 1
	addq	$72, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	cselib_invalidate_regno, .-cselib_invalidate_regno
	.type	cselib_mem_conflict_p, @function
cselib_mem_conflict_p:
.LFB23:
	.loc 1 1038 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# mem_base, mem_base
	movq	%rsi, -48(%rbp)	# val, val
	.loc 1 1043 0
	movq	-48(%rbp), %rax	# val, tmp82
	movzwl	(%rax), %eax	# val_4(D)->code, D.12836
	movzwl	%ax, %eax	# D.12836, tmp83
	movl	%eax, -12(%rbp)	# tmp83, code
	.loc 1 1044 0
	movl	-12(%rbp), %eax	# code, tmp85
	subl	$54, %eax	#, tmp84
	cmpl	$15, %eax	#, tmp84
	ja	.L318	#,
	movl	%eax, %eax	# tmp84, tmp86
	movq	.L305(,%rax,8), %rax	#, tmp87
	jmp	*%rax	# tmp87
	.section	.rodata
	.align 8
	.align 4
.L305:
	.quad	.L304
	.quad	.L304
	.quad	.L304
	.quad	.L318
	.quad	.L304
	.quad	.L304
	.quad	.L318
	.quad	.L304
	.quad	.L304
	.quad	.L318
	.quad	.L318
	.quad	.L318
	.quad	.L306
	.quad	.L304
	.quad	.L304
	.quad	.L304
	.text
.L304:
	.loc 1 1057 0
	movl	$0, %eax	#, D.12835
	jmp	.L307	#
.L306:
	.loc 1 1060 0
	movq	-40(%rbp), %rax	# mem_base, tmp88
	movzbl	2(%rax), %eax	# mem_base_8(D)->mode, D.12837
	cmpb	$51, %al	#, D.12837
	je	.L308	#,
	.loc 1 1061 0
	movq	-48(%rbp), %rax	# val, tmp89
	movzbl	2(%rax), %eax	# val_4(D)->mode, D.12837
	cmpb	$51, %al	#, D.12837
	je	.L308	#,
	.loc 1 1062 0
	movq	-40(%rbp), %rdx	# mem_base, tmp90
	movq	-48(%rbp), %rax	# val, tmp91
	movq	%rdx, %rsi	# tmp90,
	movq	%rax, %rdi	# tmp91,
	call	anti_dependence	#
	testl	%eax, %eax	# D.12835
	je	.L309	#,
.L308:
	.loc 1 1063 0
	movl	$1, %eax	#, D.12835
	jmp	.L307	#
.L309:
	.loc 1 1066 0
	jmp	.L310	#
.L318:
	.loc 1 1069 0
	nop
.L310:
	.loc 1 1072 0
	movl	-12(%rbp), %eax	# code, code.121
	cltq
	movq	rtx_format(,%rax,8), %rax	# rtx_format, tmp93
	movq	%rax, -8(%rbp)	# tmp93, fmt
	.loc 1 1073 0
	movl	-12(%rbp), %eax	# code, code.122
	cltq
	movzbl	rtx_length(%rax), %eax	# rtx_length, D.12837
	movzbl	%al, %eax	# D.12837, D.12835
	subl	$1, %eax	#, tmp95
	movl	%eax, -20(%rbp)	# tmp95, i
	jmp	.L311	#
.L317:
	.loc 1 1075 0
	movl	-20(%rbp), %eax	# i, tmp96
	movslq	%eax, %rdx	# tmp96, D.12838
	movq	-8(%rbp), %rax	# fmt, tmp97
	addq	%rdx, %rax	# D.12838, D.12839
	movzbl	(%rax), %eax	# *_20, D.12840
	cmpb	$101, %al	#, D.12840
	jne	.L312	#,
	.loc 1 1077 0
	movq	-48(%rbp), %rax	# val, tmp98
	movl	-20(%rbp), %edx	# i, tmp100
	movslq	%edx, %rdx	# tmp100, tmp99
	movq	8(%rax,%rdx,8), %rdx	# val_4(D)->fld[i_1].rtx, D.12841
	movq	-40(%rbp), %rax	# mem_base, tmp101
	movq	%rdx, %rsi	# D.12841,
	movq	%rax, %rdi	# tmp101,
	call	cselib_mem_conflict_p	#
	testl	%eax, %eax	# D.12835
	je	.L313	#,
	.loc 1 1078 0
	movl	$1, %eax	#, D.12835
	jmp	.L307	#
.L312:
	.loc 1 1080 0
	movl	-20(%rbp), %eax	# i, tmp102
	movslq	%eax, %rdx	# tmp102, D.12838
	movq	-8(%rbp), %rax	# fmt, tmp103
	addq	%rdx, %rax	# D.12838, D.12839
	movzbl	(%rax), %eax	# *_26, D.12840
	cmpb	$69, %al	#, D.12840
	jne	.L313	#,
	.loc 1 1081 0
	movl	$0, -16(%rbp)	#, j
	jmp	.L314	#
.L316:
	.loc 1 1082 0
	movq	-48(%rbp), %rax	# val, tmp104
	movl	-20(%rbp), %edx	# i, tmp106
	movslq	%edx, %rdx	# tmp106, tmp105
	movq	8(%rax,%rdx,8), %rax	# val_4(D)->fld[i_1].rtvec, D.12842
	movl	-16(%rbp), %edx	# j, tmp108
	movslq	%edx, %rdx	# tmp108, tmp107
	movq	8(%rax,%rdx,8), %rdx	# _31->elem, D.12841
	movq	-40(%rbp), %rax	# mem_base, tmp109
	movq	%rdx, %rsi	# D.12841,
	movq	%rax, %rdi	# tmp109,
	call	cselib_mem_conflict_p	#
	testl	%eax, %eax	# D.12835
	je	.L315	#,
	.loc 1 1083 0
	movl	$1, %eax	#, D.12835
	jmp	.L307	#
.L315:
	.loc 1 1081 0
	addl	$1, -16(%rbp)	#, j
.L314:
	.loc 1 1081 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# val, tmp110
	movl	-20(%rbp), %edx	# i, tmp112
	movslq	%edx, %rdx	# tmp112, tmp111
	movq	8(%rax,%rdx,8), %rax	# val_4(D)->fld[i_1].rtvec, D.12842
	movl	(%rax), %eax	# _29->num_elem, D.12835
	cmpl	-16(%rbp), %eax	# j, D.12835
	jg	.L316	#,
.L313:
	.loc 1 1073 0 is_stmt 1
	subl	$1, -20(%rbp)	#, i
.L311:
	.loc 1 1073 0 is_stmt 0 discriminator 1
	cmpl	$0, -20(%rbp)	#, i
	jns	.L317	#,
	.loc 1 1086 0 is_stmt 1
	movl	$0, %eax	#, D.12835
.L307:
	.loc 1 1087 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE23:
	.size	cselib_mem_conflict_p, .-cselib_mem_conflict_p
	.type	cselib_invalidate_mem_1, @function
cselib_invalidate_mem_1:
.LFB24:
	.loc 1 1096 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movq	%rdi, -72(%rbp)	# slot, slot
	movq	%rsi, -80(%rbp)	# info, info
	.loc 1 1097 0
	movq	-72(%rbp), %rax	# slot, tmp75
	movq	(%rax), %rax	# *slot_3(D), tmp76
	movq	%rax, -32(%rbp)	# tmp76, v
	.loc 1 1098 0
	movq	-80(%rbp), %rax	# info, tmp77
	movq	%rax, -24(%rbp)	# tmp77, mem_rtx
	.loc 1 1099 0
	movq	-32(%rbp), %rax	# v, tmp81
	addq	$16, %rax	#, tmp80
	movq	%rax, -48(%rbp)	# tmp80, p
	.loc 1 1100 0
	movq	-32(%rbp), %rax	# v, tmp82
	movq	16(%rax), %rax	# v_4->locs, D.12843
	testq	%rax, %rax	# D.12843
	setne	%al	#, D.12844
	movzbl	%al, %eax	# D.12844, tmp83
	movl	%eax, -52(%rbp)	# tmp83, had_locs
	.loc 1 1102 0
	jmp	.L320	#
.L326:
.LBB31:
	.loc 1 1104 0
	movq	-48(%rbp), %rax	# p, tmp84
	movq	(%rax), %rax	# *p_1, D.12843
	movq	8(%rax), %rax	# _12->loc, tmp85
	movq	%rax, -16(%rbp)	# tmp85, x
	.loc 1 1110 0
	movq	-16(%rbp), %rax	# x, tmp86
	movzwl	(%rax), %eax	# x_13->code, D.12845
	cmpw	$66, %ax	#, D.12845
	jne	.L321	#,
	.loc 1 1111 0
	movq	-16(%rbp), %rdx	# x, tmp87
	movq	-24(%rbp), %rax	# mem_rtx, tmp88
	movq	%rdx, %rsi	# tmp87,
	movq	%rax, %rdi	# tmp88,
	call	cselib_mem_conflict_p	#
	testl	%eax, %eax	# D.12846
	jne	.L322	#,
.L321:
	.loc 1 1113 0
	movq	-48(%rbp), %rax	# p, tmp89
	movq	(%rax), %rax	# *p_1, D.12843
	movq	%rax, -48(%rbp)	# D.12843, p
	.loc 1 1114 0
	jmp	.L320	#
.L322:
	.loc 1 1120 0
	movq	-16(%rbp), %rax	# x, tmp90
	movq	8(%rax), %rax	# x_13->fld[0].rtx, D.12847
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.12847,
	call	cselib_lookup	#
	movq	%rax, -8(%rbp)	# tmp91, addr
	.loc 1 1121 0
	movq	-8(%rbp), %rax	# addr, tmp95
	addq	$24, %rax	#, tmp94
	movq	%rax, -40(%rbp)	# tmp94, mem_chain
.L325:
	.loc 1 1124 0
	movq	-40(%rbp), %rax	# mem_chain, tmp96
	movq	(%rax), %rax	# *mem_chain_2, D.12848
	movq	8(%rax), %rax	# _19->elt, D.12849
	cmpq	-32(%rbp), %rax	# v, D.12849
	jne	.L323	#,
	.loc 1 1126 0
	movq	-40(%rbp), %rax	# mem_chain, tmp97
	movq	%rax, %rdi	# tmp97,
	call	unchain_one_elt_list	#
	.loc 1 1127 0
	nop
	.loc 1 1133 0
	movq	-48(%rbp), %rax	# p, tmp99
	movq	%rax, %rdi	# tmp99,
	call	unchain_one_elt_loc_list	#
	jmp	.L320	#
.L323:
	.loc 1 1130 0
	movq	-40(%rbp), %rax	# mem_chain, tmp98
	movq	(%rax), %rax	# *mem_chain_2, D.12848
	movq	%rax, -40(%rbp)	# D.12848, mem_chain
	.loc 1 1131 0
	jmp	.L325	#
.L320:
.LBE31:
	.loc 1 1102 0 discriminator 1
	movq	-48(%rbp), %rax	# p, tmp100
	movq	(%rax), %rax	# *p_1, D.12843
	testq	%rax, %rax	# D.12843
	jne	.L326	#,
	.loc 1 1136 0
	cmpl	$0, -52(%rbp)	#, had_locs
	je	.L327	#,
	.loc 1 1136 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# v, tmp101
	movq	16(%rax), %rax	# v_4->locs, D.12843
	testq	%rax, %rax	# D.12843
	jne	.L327	#,
	.loc 1 1137 0 is_stmt 1
	movl	n_useless_values(%rip), %eax	# n_useless_values, n_useless_values.123
	addl	$1, %eax	#, n_useless_values.124
	movl	%eax, n_useless_values(%rip)	# n_useless_values.124, n_useless_values
.L327:
	.loc 1 1139 0
	movl	$1, %eax	#, D.12846
	.loc 1 1140 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE24:
	.size	cselib_invalidate_mem_1, .-cselib_invalidate_mem_1
	.type	cselib_invalidate_mem, @function
cselib_invalidate_mem:
.LFB25:
	.loc 1 1149 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# mem_rtx, mem_rtx
	.loc 1 1150 0
	movq	hash_table(%rip), %rax	# hash_table, hash_table.125
	movq	-8(%rbp), %rdx	# mem_rtx, tmp60
	movl	$cselib_invalidate_mem_1, %esi	#,
	movq	%rax, %rdi	# hash_table.125,
	call	htab_traverse	#
	.loc 1 1151 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE25:
	.size	cselib_invalidate_mem, .-cselib_invalidate_mem
	.type	cselib_invalidate_rtx, @function
cselib_invalidate_rtx:
.LFB26:
	.loc 1 1162 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -8(%rbp)	# dest, dest
	movq	%rsi, -16(%rbp)	# ignore, ignore
	movq	%rdx, -24(%rbp)	# data, data
	.loc 1 1163 0
	jmp	.L331	#
.L332:
	.loc 1 1165 0
	movq	-8(%rbp), %rax	# dest, tmp72
	movq	8(%rax), %rax	# dest_1->fld[0].rtx, tmp73
	movq	%rax, -8(%rbp)	# tmp73, dest
.L331:
	.loc 1 1163 0 discriminator 1
	movq	-8(%rbp), %rax	# dest, tmp74
	movzwl	(%rax), %eax	# dest_1->code, D.12850
	cmpw	$64, %ax	#, D.12850
	je	.L332	#,
	.loc 1 1163 0 is_stmt 0 discriminator 2
	movq	-8(%rbp), %rax	# dest, tmp75
	movzwl	(%rax), %eax	# dest_1->code, D.12850
	cmpw	$132, %ax	#, D.12850
	je	.L332	#,
	.loc 1 1164 0 is_stmt 1
	movq	-8(%rbp), %rax	# dest, tmp76
	movzwl	(%rax), %eax	# dest_1->code, D.12850
	cmpw	$133, %ax	#, D.12850
	je	.L332	#,
	.loc 1 1164 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# dest, tmp77
	movzwl	(%rax), %eax	# dest_1->code, D.12850
	cmpw	$63, %ax	#, D.12850
	je	.L332	#,
	.loc 1 1167 0 is_stmt 1
	movq	-8(%rbp), %rax	# dest, tmp78
	movzwl	(%rax), %eax	# dest_1->code, D.12850
	cmpw	$61, %ax	#, D.12850
	jne	.L333	#,
	.loc 1 1168 0
	movq	-8(%rbp), %rax	# dest, tmp79
	movzbl	2(%rax), %eax	# dest_1->mode, D.12851
	movzbl	%al, %edx	# D.12851, D.12852
	movq	-8(%rbp), %rax	# dest, tmp80
	movl	8(%rax), %eax	# dest_1->fld[0].rtuint, D.12853
	movl	%edx, %esi	# D.12852,
	movl	%eax, %edi	# D.12853,
	call	cselib_invalidate_regno	#
	jmp	.L334	#
.L333:
	.loc 1 1169 0
	movq	-8(%rbp), %rax	# dest, tmp81
	movzwl	(%rax), %eax	# dest_1->code, D.12850
	cmpw	$66, %ax	#, D.12850
	jne	.L334	#,
	.loc 1 1170 0
	movq	-8(%rbp), %rax	# dest, tmp82
	movq	%rax, %rdi	# tmp82,
	call	cselib_invalidate_mem	#
.L334:
	.loc 1 1176 0
	movq	-8(%rbp), %rax	# dest, tmp83
	movzbl	2(%rax), %eax	# dest_1->mode, D.12851
	movzbl	%al, %edx	# D.12851, D.12852
	movq	-8(%rbp), %rax	# dest, tmp84
	movl	%edx, %esi	# D.12852,
	movq	%rax, %rdi	# tmp84,
	call	push_operand	#
	testl	%eax, %eax	# D.12854
	je	.L330	#,
	.loc 1 1177 0
	movq	global_rtl+16(%rip), %rax	# global_rtl, D.12855
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.12855,
	call	cselib_invalidate_rtx	#
.L330:
	.loc 1 1178 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE26:
	.size	cselib_invalidate_rtx, .-cselib_invalidate_rtx
	.type	cselib_record_set, @function
cselib_record_set:
.LFB27:
	.loc 1 1188 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$56, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)	# dest, dest
	movq	%rsi, -48(%rbp)	# src_elt, src_elt
	movq	%rdx, -56(%rbp)	# dest_addr_elt, dest_addr_elt
	.loc 1 1189 0
	movq	-40(%rbp), %rax	# dest, tmp124
	movzwl	(%rax), %eax	# dest_10(D)->code, D.12856
	cmpw	$61, %ax	#, D.12856
	jne	.L337	#,
	.loc 1 1189 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# dest, tmp125
	movl	8(%rax), %eax	# dest_10(D)->fld[0].rtuint, D.12857
	jmp	.L338	#
.L337:
	.loc 1 1189 0 discriminator 2
	movl	$-1, %eax	#, iftmp.126
.L338:
	.loc 1 1189 0 discriminator 3
	movl	%eax, -24(%rbp)	# iftmp.126, dreg
	.loc 1 1191 0 is_stmt 1 discriminator 3
	cmpq	$0, -48(%rbp)	#, src_elt
	je	.L339	#,
	.loc 1 1191 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# dest, tmp126
	movq	%rax, %rdi	# tmp126,
	call	side_effects_p	#
	testl	%eax, %eax	# D.12858
	je	.L340	#,
.L339:
	.loc 1 1192 0 is_stmt 1
	jmp	.L336	#
.L340:
	.loc 1 1194 0
	cmpl	$0, -24(%rbp)	#, dreg
	js	.L342	#,
	.loc 1 1196 0
	movq	reg_values(%rip), %rax	# reg_values, reg_values.127
	movl	-24(%rbp), %edx	# dreg, tmp128
	movslq	%edx, %rdx	# tmp128, tmp127
	addq	$4, %rdx	#, tmp129
	movq	(%rax,%rdx,8), %rax	# reg_values.127_18->data.te, D.12859
	testq	%rax, %rax	# D.12859
	jne	.L343	#,
	.loc 1 1197 0
	movq	used_regs(%rip), %rax	# used_regs, used_regs.128
	movq	8(%rax), %rdx	# used_regs.128_20->elements_used, D.12860
	movq	used_regs(%rip), %rax	# used_regs, used_regs.129
	movq	(%rax), %rax	# used_regs.129_22->num_elements, D.12860
	cmpq	%rax, %rdx	# D.12860, D.12860
	jb	.L344	#,
	.loc 1 1197 0 is_stmt 0 discriminator 1
	movq	used_regs(%rip), %rax	# used_regs, used_regs.130
	movq	(%rax), %rax	# used_regs.130_24->num_elements, D.12860
	leaq	(%rax,%rax), %rdx	#, D.12860
	movq	used_regs(%rip), %rax	# used_regs, used_regs.131
	movq	%rdx, %rsi	# D.12860,
	movq	%rax, %rdi	# used_regs.131,
	call	varray_grow	#
	movq	%rax, used_regs(%rip)	# used_regs.132, used_regs
.L344:
	.loc 1 1197 0 discriminator 2
	movq	used_regs(%rip), %rcx	# used_regs, used_regs.133
	movq	used_regs(%rip), %rax	# used_regs, used_regs.134
	movq	8(%rax), %rdx	# used_regs.134_30->elements_used, D.12860
	leaq	1(%rdx), %rsi	#, D.12860
	movq	%rsi, 8(%rax)	# D.12860, used_regs.134_30->elements_used
	movl	-24(%rbp), %eax	# dreg, dreg.135
	addq	$8, %rdx	#, tmp130
	movl	%eax, (%rcx,%rdx,4)	# dreg.135, used_regs.133_29->data.u
.L343:
	.loc 1 1199 0 is_stmt 1
	cmpl	$52, -24(%rbp)	#, dreg
	jg	.L345	#,
.LBB32:
	.loc 1 1201 0
	cmpl	$7, -24(%rbp)	#, dreg
	jle	.L346	#,
	.loc 1 1201 0 is_stmt 0 discriminator 1
	cmpl	$15, -24(%rbp)	#, dreg
	jle	.L347	#,
.L346:
	.loc 1 1201 0 discriminator 2
	cmpl	$20, -24(%rbp)	#, dreg
	jle	.L348	#,
	.loc 1 1201 0 discriminator 1
	cmpl	$28, -24(%rbp)	#, dreg
	jle	.L347	#,
.L348:
	.loc 1 1201 0 discriminator 2
	cmpl	$44, -24(%rbp)	#, dreg
	jle	.L349	#,
	.loc 1 1201 0 discriminator 1
	cmpl	$52, -24(%rbp)	#, dreg
	jle	.L347	#,
.L349:
	.loc 1 1201 0 discriminator 2
	cmpl	$28, -24(%rbp)	#, dreg
	jle	.L350	#,
	.loc 1 1201 0 discriminator 1
	cmpl	$36, -24(%rbp)	#, dreg
	jg	.L350	#,
.L347:
	movq	-40(%rbp), %rax	# dest, tmp131
	movzbl	2(%rax), %eax	# dest_10(D)->mode, D.12861
	movzbl	%al, %eax	# D.12861, D.12858
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.12862
	cmpl	$5, %eax	#, D.12862
	je	.L351	#,
	.loc 1 1201 0 discriminator 4
	movq	-40(%rbp), %rax	# dest, tmp133
	movzbl	2(%rax), %eax	# dest_10(D)->mode, D.12861
	movzbl	%al, %eax	# D.12861, D.12858
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.12862
	cmpl	$6, %eax	#, D.12862
	jne	.L352	#,
.L351:
	.loc 1 1201 0 discriminator 3
	movl	$2, %eax	#, iftmp.137
	jmp	.L354	#
.L352:
	.loc 1 1201 0 discriminator 1
	movl	$1, %eax	#, iftmp.137
	jmp	.L354	#
.L350:
	.loc 1 1201 0 discriminator 2
	movq	-40(%rbp), %rax	# dest, tmp135
	movzbl	2(%rax), %eax	# dest_10(D)->mode, D.12861
	cmpb	$18, %al	#, D.12861
	jne	.L355	#,
	.loc 1 1201 0 discriminator 7
	movl	target_flags(%rip), %eax	# target_flags, target_flags.140
	andl	$33554432, %eax	#, D.12858
	testl	%eax, %eax	# D.12858
	je	.L356	#,
	.loc 1 1201 0 discriminator 9
	movl	$2, %eax	#, iftmp.139
	jmp	.L354	#
.L356:
	.loc 1 1201 0 discriminator 10
	movl	$3, %eax	#, iftmp.139
	jmp	.L354	#
.L355:
	.loc 1 1201 0 discriminator 8
	movq	-40(%rbp), %rax	# dest, tmp136
	movzbl	2(%rax), %eax	# dest_10(D)->mode, D.12861
	cmpb	$24, %al	#, D.12861
	jne	.L359	#,
	.loc 1 1201 0 discriminator 11
	movl	target_flags(%rip), %eax	# target_flags, target_flags.143
	andl	$33554432, %eax	#, D.12858
	testl	%eax, %eax	# D.12858
	je	.L360	#,
	.loc 1 1201 0 discriminator 13
	movl	$4, %eax	#, iftmp.142
	jmp	.L354	#
.L360:
	.loc 1 1201 0 discriminator 14
	movl	$6, %eax	#, iftmp.142
	jmp	.L354	#
.L359:
	.loc 1 1201 0 discriminator 12
	movq	-40(%rbp), %rax	# dest, tmp137
	movzbl	2(%rax), %eax	# dest_10(D)->mode, D.12861
	movzbl	%al, %eax	# D.12861, D.12858
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.12861
	movzbl	%al, %edx	# D.12861, D.12858
	movl	target_flags(%rip), %eax	# target_flags, target_flags.145
	andl	$33554432, %eax	#, D.12858
	testl	%eax, %eax	# D.12858
	je	.L363	#,
	.loc 1 1201 0 discriminator 1
	movl	$8, %eax	#, iftmp.144
	jmp	.L364	#
.L363:
	.loc 1 1201 0 discriminator 2
	movl	$4, %eax	#, iftmp.144
.L364:
	.loc 1 1201 0 discriminator 3
	addl	%edx, %eax	# D.12858, D.12858
	subl	$1, %eax	#, D.12858
	movl	target_flags(%rip), %edx	# target_flags, target_flags.147
	andl	$33554432, %edx	#, D.12858
	testl	%edx, %edx	# D.12858
	je	.L365	#,
	.loc 1 1201 0 discriminator 1
	movl	$8, %ebx	#, iftmp.146
	jmp	.L366	#
.L365:
	.loc 1 1201 0 discriminator 2
	movl	$4, %ebx	#, iftmp.146
.L366:
	.loc 1 1201 0 discriminator 3
	cltd
	idivl	%ebx	# iftmp.146
.L354:
	.loc 1 1201 0 discriminator 6
	movl	%eax, -20(%rbp)	# iftmp.136, n
	.loc 1 1203 0 is_stmt 1 discriminator 6
	movl	max_value_regs(%rip), %eax	# max_value_regs, max_value_regs.148
	cmpl	%eax, -20(%rbp)	# max_value_regs.148, n
	jbe	.L345	#,
	.loc 1 1204 0
	movl	-20(%rbp), %eax	# n, tmp141
	movl	%eax, max_value_regs(%rip)	# tmp141, max_value_regs
.L345:
.LBE32:
	.loc 1 1207 0
	movq	reg_values(%rip), %rbx	# reg_values, reg_values.149
	movq	reg_values(%rip), %rax	# reg_values, reg_values.150
	movl	-24(%rbp), %edx	# dreg, tmp143
	movslq	%edx, %rdx	# tmp143, tmp142
	addq	$4, %rdx	#, tmp144
	movq	(%rax,%rdx,8), %rax	# reg_values.150_77->data.te, D.12859
	movq	-48(%rbp), %rdx	# src_elt, tmp145
	movq	%rdx, %rsi	# tmp145,
	movq	%rax, %rdi	# D.12859,
	call	new_elt_list	#
	movl	-24(%rbp), %edx	# dreg, tmp147
	movslq	%edx, %rdx	# tmp147, tmp146
	addq	$4, %rdx	#, tmp148
	movq	%rax, (%rbx,%rdx,8)	# D.12859, reg_values.149_76->data.te
	.loc 1 1208 0
	movq	-48(%rbp), %rax	# src_elt, tmp149
	movq	16(%rax), %rax	# src_elt_16(D)->locs, D.12863
	testq	%rax, %rax	# D.12863
	jne	.L367	#,
	.loc 1 1209 0
	movl	n_useless_values(%rip), %eax	# n_useless_values, n_useless_values.151
	subl	$1, %eax	#, n_useless_values.152
	movl	%eax, n_useless_values(%rip)	# n_useless_values.152, n_useless_values
.L367:
	.loc 1 1210 0
	movq	-48(%rbp), %rax	# src_elt, tmp150
	movq	16(%rax), %rax	# src_elt_16(D)->locs, D.12863
	movq	-40(%rbp), %rdx	# dest, tmp151
	movq	%rdx, %rsi	# tmp151,
	movq	%rax, %rdi	# D.12863,
	call	new_elt_loc_list	#
	movq	-48(%rbp), %rdx	# src_elt, tmp152
	movq	%rax, 16(%rdx)	# D.12863, src_elt_16(D)->locs
	jmp	.L336	#
.L342:
	.loc 1 1212 0
	movq	-40(%rbp), %rax	# dest, tmp153
	movzwl	(%rax), %eax	# dest_10(D)->code, D.12856
	cmpw	$66, %ax	#, D.12856
	jne	.L336	#,
	.loc 1 1212 0 is_stmt 0 discriminator 1
	cmpq	$0, -56(%rbp)	#, dest_addr_elt
	je	.L336	#,
	.loc 1 1214 0 is_stmt 1
	movq	-48(%rbp), %rax	# src_elt, tmp154
	movq	16(%rax), %rax	# src_elt_16(D)->locs, D.12863
	testq	%rax, %rax	# D.12863
	jne	.L368	#,
	.loc 1 1215 0
	movl	n_useless_values(%rip), %eax	# n_useless_values, n_useless_values.153
	subl	$1, %eax	#, n_useless_values.154
	movl	%eax, n_useless_values(%rip)	# n_useless_values.154, n_useless_values
.L368:
	.loc 1 1216 0
	movq	-40(%rbp), %rdx	# dest, tmp155
	movq	-48(%rbp), %rcx	# src_elt, tmp156
	movq	-56(%rbp), %rax	# dest_addr_elt, tmp157
	movq	%rcx, %rsi	# tmp156,
	movq	%rax, %rdi	# tmp157,
	call	add_mem_for_addr	#
.L336:
	.loc 1 1218 0
	addq	$56, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE27:
	.size	cselib_record_set, .-cselib_record_set
	.type	cselib_record_sets, @function
cselib_record_sets:
.LFB28:
	.loc 1 1237 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$3472, %rsp	#,
	movq	%rdi, -3464(%rbp)	# insn, insn
	.loc 1 1238 0
	movl	$0, -3448(%rbp)	#, n_sets
	.loc 1 1241 0
	movq	-3464(%rbp), %rax	# insn, tmp89
	movq	32(%rax), %rax	# insn_13(D)->fld[3].rtx, tmp90
	movq	%rax, -3440(%rbp)	# tmp90, body
	.loc 1 1242 0
	movq	$0, -3432(%rbp)	#, cond
	.loc 1 1244 0
	movq	-3464(%rbp), %rax	# insn, tmp91
	movq	32(%rax), %rax	# insn_13(D)->fld[3].rtx, tmp92
	movq	%rax, -3440(%rbp)	# tmp92, body
	.loc 1 1245 0
	movq	-3440(%rbp), %rax	# body, tmp93
	movzwl	(%rax), %eax	# body_16->code, D.12864
	cmpw	$38, %ax	#, D.12864
	jne	.L370	#,
	.loc 1 1247 0
	movq	-3440(%rbp), %rax	# body, tmp94
	movq	8(%rax), %rax	# body_16->fld[0].rtx, tmp95
	movq	%rax, -3432(%rbp)	# tmp95, cond
	.loc 1 1248 0
	movq	-3440(%rbp), %rax	# body, tmp96
	movq	16(%rax), %rax	# body_16->fld[1].rtx, tmp97
	movq	%rax, -3440(%rbp)	# tmp97, body
.L370:
	.loc 1 1252 0
	movq	-3440(%rbp), %rax	# body, tmp98
	movzwl	(%rax), %eax	# body_7->code, D.12864
	cmpw	$47, %ax	#, D.12864
	jne	.L371	#,
	.loc 1 1254 0
	movq	-3440(%rbp), %rax	# body, tmp99
	movq	16(%rax), %rax	# body_7->fld[1].rtx, D.12865
	movq	%rax, -3392(%rbp)	# D.12865, sets[0].src
	.loc 1 1255 0
	movq	-3440(%rbp), %rax	# body, tmp100
	movq	8(%rax), %rax	# body_7->fld[0].rtx, D.12865
	movq	%rax, -3384(%rbp)	# D.12865, sets[0].dest
	.loc 1 1256 0
	movl	$1, -3448(%rbp)	#, n_sets
	jmp	.L372	#
.L371:
	.loc 1 1258 0
	movq	-3440(%rbp), %rax	# body, tmp101
	movzwl	(%rax), %eax	# body_7->code, D.12864
	cmpw	$39, %ax	#, D.12864
	jne	.L372	#,
	.loc 1 1262 0
	movq	-3440(%rbp), %rax	# body, tmp102
	movq	8(%rax), %rax	# body_7->fld[0].rtvec, D.12866
	movl	(%rax), %eax	# _25->num_elem, D.12867
	subl	$1, %eax	#, tmp103
	movl	%eax, -3444(%rbp)	# tmp103, i
	jmp	.L373	#
.L375:
.LBB33:
	.loc 1 1264 0
	movq	-3440(%rbp), %rax	# body, tmp104
	movq	8(%rax), %rax	# body_7->fld[0].rtvec, D.12866
	movl	-3444(%rbp), %edx	# i, tmp106
	movslq	%edx, %rdx	# tmp106, tmp105
	movq	8(%rax,%rdx,8), %rax	# _28->elem, tmp107
	movq	%rax, -3408(%rbp)	# tmp107, x
	.loc 1 1266 0
	movq	-3408(%rbp), %rax	# x, tmp108
	movzwl	(%rax), %eax	# x_29->code, D.12864
	cmpw	$47, %ax	#, D.12864
	jne	.L374	#,
	.loc 1 1268 0
	movq	-3408(%rbp), %rax	# x, tmp109
	movq	16(%rax), %rax	# x_29->fld[1].rtx, D.12865
	movl	-3448(%rbp), %edx	# n_sets, tmp111
	movslq	%edx, %rdx	# tmp111, tmp110
	salq	$5, %rdx	#, tmp112
	addq	%rbp, %rdx	#, tmp113
	subq	$3392, %rdx	#, tmp114
	movq	%rax, (%rdx)	# D.12865, sets[n_sets_2].src
	.loc 1 1269 0
	movq	-3408(%rbp), %rax	# x, tmp115
	movq	8(%rax), %rax	# x_29->fld[0].rtx, D.12865
	movl	-3448(%rbp), %edx	# n_sets, tmp117
	movslq	%edx, %rdx	# tmp117, tmp116
	salq	$5, %rdx	#, tmp118
	addq	%rbp, %rdx	#, tmp119
	subq	$3384, %rdx	#, tmp120
	movq	%rax, (%rdx)	# D.12865, sets[n_sets_2].dest
	.loc 1 1270 0
	addl	$1, -3448(%rbp)	#, n_sets
.L374:
.LBE33:
	.loc 1 1262 0
	subl	$1, -3444(%rbp)	#, i
.L373:
	.loc 1 1262 0 is_stmt 0 discriminator 1
	cmpl	$0, -3444(%rbp)	#, i
	jns	.L375	#,
.L372:
	.loc 1 1277 0 is_stmt 1
	movl	$0, -3444(%rbp)	#, i
	jmp	.L376	#
.L384:
.LBB34:
	.loc 1 1279 0
	movl	-3444(%rbp), %eax	# i, tmp122
	cltq
	salq	$5, %rax	#, tmp123
	addq	%rbp, %rax	#, tmp124
	subq	$3384, %rax	#, tmp125
	movq	(%rax), %rax	# sets[i_5].dest, tmp126
	movq	%rax, -3424(%rbp)	# tmp126, dest
	.loc 1 1283 0
	movl	-3444(%rbp), %eax	# i, tmp128
	cltq
	salq	$5, %rax	#, tmp129
	addq	%rbp, %rax	#, tmp130
	subq	$3384, %rax	#, tmp131
	movq	(%rax), %rax	# sets[i_5].dest, D.12865
	movzwl	(%rax), %eax	# _37->code, D.12864
	cmpw	$64, %ax	#, D.12864
	jne	.L377	#,
	.loc 1 1284 0
	movq	-3424(%rbp), %rax	# dest, tmp132
	movq	8(%rax), %rax	# dest_36->fld[0].rtx, tmp133
	movq	%rax, -3424(%rbp)	# tmp133, dest
	movl	-3444(%rbp), %eax	# i, tmp135
	cltq
	salq	$5, %rax	#, tmp136
	addq	%rbp, %rax	#, tmp137
	leaq	-3384(%rax), %rdx	#, tmp138
	movq	-3424(%rbp), %rax	# dest, tmp139
	movq	%rax, (%rdx)	# tmp139, sets[i_5].dest
.L377:
	.loc 1 1287 0
	movq	-3424(%rbp), %rax	# dest, tmp140
	movzwl	(%rax), %eax	# dest_9->code, D.12864
	cmpw	$61, %ax	#, D.12864
	je	.L378	#,
	.loc 1 1287 0 is_stmt 0 discriminator 1
	movq	-3424(%rbp), %rax	# dest, tmp141
	movzwl	(%rax), %eax	# dest_9->code, D.12864
	cmpw	$66, %ax	#, D.12864
	jne	.L379	#,
.L378:
.LBB35:
	.loc 1 1289 0 is_stmt 1
	movl	-3444(%rbp), %eax	# i, tmp143
	cltq
	salq	$5, %rax	#, tmp144
	addq	%rbp, %rax	#, tmp145
	subq	$3392, %rax	#, tmp146
	movq	(%rax), %rax	# sets[i_5].src, tmp147
	movq	%rax, -3416(%rbp)	# tmp147, src
	.loc 1 1290 0
	cmpq	$0, -3432(%rbp)	#, cond
	je	.L380	#,
	.loc 1 1291 0
	movq	-3416(%rbp), %rax	# src, tmp148
	movzbl	2(%rax), %eax	# src_42->mode, D.12868
	movzbl	%al, %eax	# D.12868, D.12869
	movq	-3424(%rbp), %rsi	# dest, tmp149
	movq	-3416(%rbp), %rcx	# src, tmp150
	movq	-3432(%rbp), %rdx	# cond, tmp151
	movq	%rsi, %r8	# tmp149,
	movl	%eax, %esi	# D.12869,
	movl	$72, %edi	#,
	call	gen_rtx_fmt_eee	#
	movq	%rax, -3416(%rbp)	# tmp152, src
.L380:
	.loc 1 1292 0
	movq	-3424(%rbp), %rax	# dest, tmp153
	movzbl	2(%rax), %eax	# dest_9->mode, D.12868
	movzbl	%al, %ecx	# D.12868, D.12869
	movq	-3416(%rbp), %rax	# src, tmp154
	movl	$1, %edx	#,
	movl	%ecx, %esi	# D.12869,
	movq	%rax, %rdi	# tmp154,
	call	cselib_lookup	#
	movl	-3444(%rbp), %edx	# i, tmp156
	movslq	%edx, %rdx	# tmp156, tmp155
	salq	$5, %rdx	#, tmp157
	addq	%rbp, %rdx	#, tmp158
	subq	$3376, %rdx	#, tmp159
	movq	%rax, (%rdx)	# D.12870, sets[i_5].src_elt
	.loc 1 1293 0
	movq	-3424(%rbp), %rax	# dest, tmp160
	movzwl	(%rax), %eax	# dest_9->code, D.12864
	cmpw	$66, %ax	#, D.12864
	jne	.L381	#,
	.loc 1 1294 0
	movl	target_flags(%rip), %eax	# target_flags, target_flags.156
	andl	$33554432, %eax	#, D.12867
	testl	%eax, %eax	# D.12867
	je	.L382	#,
	.loc 1 1294 0 is_stmt 0 discriminator 1
	movl	$5, %eax	#, iftmp.155
	jmp	.L383	#
.L382:
	.loc 1 1294 0 discriminator 2
	movl	$4, %eax	#, iftmp.155
.L383:
	.loc 1 1294 0 discriminator 1
	movq	-3424(%rbp), %rdx	# dest, tmp161
	movq	8(%rdx), %rcx	# dest_9->fld[0].rtx, D.12865
	movl	$1, %edx	#,
	movl	%eax, %esi	# iftmp.155,
	movq	%rcx, %rdi	# D.12865,
	call	cselib_lookup	#
	movl	-3444(%rbp), %edx	# i, tmp163
	movslq	%edx, %rdx	# tmp163, tmp162
	salq	$5, %rdx	#, tmp164
	addq	%rbp, %rdx	#, tmp165
	subq	$3368, %rdx	#, tmp166
	movq	%rax, (%rdx)	# D.12870, sets[i_5].dest_addr_elt
	jmp	.L379	#
.L381:
	.loc 1 1296 0 is_stmt 1
	movl	-3444(%rbp), %eax	# i, tmp168
	cltq
	salq	$5, %rax	#, tmp169
	addq	%rbp, %rax	#, tmp170
	subq	$3368, %rax	#, tmp171
	movq	$0, (%rax)	#, sets[i_5].dest_addr_elt
.L379:
.LBE35:
.LBE34:
	.loc 1 1277 0
	addl	$1, -3444(%rbp)	#, i
.L376:
	.loc 1 1277 0 is_stmt 0 discriminator 1
	movl	-3444(%rbp), %eax	# i, tmp172
	cmpl	-3448(%rbp), %eax	# n_sets, tmp172
	jl	.L384	#,
	.loc 1 1303 0 is_stmt 1
	movq	-3440(%rbp), %rax	# body, tmp173
	movl	$0, %edx	#,
	movl	$cselib_invalidate_rtx, %esi	#,
	movq	%rax, %rdi	# tmp173,
	call	note_stores	#
	.loc 1 1306 0
	movl	$0, -3444(%rbp)	#, i
	jmp	.L385	#
.L388:
.LBB36:
	.loc 1 1308 0
	movl	-3444(%rbp), %eax	# i, tmp175
	cltq
	salq	$5, %rax	#, tmp176
	addq	%rbp, %rax	#, tmp177
	subq	$3384, %rax	#, tmp178
	movq	(%rax), %rax	# sets[i_6].dest, tmp179
	movq	%rax, -3400(%rbp)	# tmp179, dest
	.loc 1 1309 0
	movq	-3400(%rbp), %rax	# dest, tmp180
	movzwl	(%rax), %eax	# dest_58->code, D.12864
	cmpw	$61, %ax	#, D.12864
	je	.L386	#,
	.loc 1 1309 0 is_stmt 0 discriminator 1
	movq	-3400(%rbp), %rax	# dest, tmp181
	movzwl	(%rax), %eax	# dest_58->code, D.12864
	cmpw	$66, %ax	#, D.12864
	jne	.L387	#,
.L386:
	.loc 1 1310 0 is_stmt 1
	movl	-3444(%rbp), %eax	# i, tmp183
	cltq
	salq	$5, %rax	#, tmp184
	addq	%rbp, %rax	#, tmp185
	subq	$3368, %rax	#, tmp186
	movq	(%rax), %rdx	# sets[i_6].dest_addr_elt, D.12870
	movl	-3444(%rbp), %eax	# i, tmp188
	cltq
	salq	$5, %rax	#, tmp189
	addq	%rbp, %rax	#, tmp190
	subq	$3376, %rax	#, tmp191
	movq	(%rax), %rcx	# sets[i_6].src_elt, D.12870
	movq	-3400(%rbp), %rax	# dest, tmp192
	movq	%rcx, %rsi	# D.12870,
	movq	%rax, %rdi	# tmp192,
	call	cselib_record_set	#
.L387:
.LBE36:
	.loc 1 1306 0
	addl	$1, -3444(%rbp)	#, i
.L385:
	.loc 1 1306 0 is_stmt 0 discriminator 1
	movl	-3444(%rbp), %eax	# i, tmp193
	cmpl	-3448(%rbp), %eax	# n_sets, tmp193
	jl	.L388	#,
	.loc 1 1312 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE28:
	.size	cselib_record_sets, .-cselib_record_sets
	.globl	cselib_process_insn
	.type	cselib_process_insn, @function
cselib_process_insn:
.LFB29:
	.loc 1 1319 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# insn, insn
	.loc 1 1323 0
	movq	-24(%rbp), %rax	# insn, tmp83
	movq	%rax, cselib_current_insn(%rip)	# tmp83, cselib_current_insn
	.loc 1 1326 0
	movq	-24(%rbp), %rax	# insn, tmp84
	movzwl	(%rax), %eax	# insn_3(D)->code, D.12871
	cmpw	$36, %ax	#, D.12871
	je	.L390	#,
	.loc 1 1327 0
	movq	-24(%rbp), %rax	# insn, tmp85
	movzwl	(%rax), %eax	# insn_3(D)->code, D.12871
	cmpw	$34, %ax	#, D.12871
	jne	.L391	#,
	.loc 1 1328 0
	movq	-24(%rbp), %rax	# insn, tmp86
	movl	$0, %edx	#,
	movl	$28, %esi	#,
	movq	%rax, %rdi	# tmp86,
	call	find_reg_note	#
	testq	%rax, %rax	# D.12872
	jne	.L390	#,
.L391:
	.loc 1 1329 0
	movq	-24(%rbp), %rax	# insn, tmp87
	movzwl	(%rax), %eax	# insn_3(D)->code, D.12871
	cmpw	$32, %ax	#, D.12871
	jne	.L392	#,
	.loc 1 1330 0
	movq	-24(%rbp), %rax	# insn, tmp88
	movq	32(%rax), %rax	# insn_3(D)->fld[3].rtx, D.12872
	movzwl	(%rax), %eax	# _8->code, D.12871
	cmpw	$41, %ax	#, D.12871
	jne	.L392	#,
	.loc 1 1331 0
	movq	-24(%rbp), %rax	# insn, tmp89
	movq	32(%rax), %rax	# insn_3(D)->fld[3].rtx, D.12872
	movzbl	3(%rax), %eax	# *_10, D.12873
	andl	$8, %eax	#, D.12873
	testb	%al, %al	# D.12873
	je	.L392	#,
.L390:
	.loc 1 1333 0
	movl	$0, %edi	#,
	call	clear_table	#
	.loc 1 1334 0
	jmp	.L389	#
.L392:
	.loc 1 1337 0
	movq	-24(%rbp), %rax	# insn, tmp90
	movzwl	(%rax), %eax	# insn_3(D)->code, D.12871
	movzwl	%ax, %eax	# D.12871, D.12874
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.12875
	cmpb	$105, %al	#, D.12875
	je	.L394	#,
	.loc 1 1339 0
	movq	$0, cselib_current_insn(%rip)	#, cselib_current_insn
	.loc 1 1340 0
	jmp	.L389	#
.L394:
	.loc 1 1346 0
	movq	-24(%rbp), %rax	# insn, tmp92
	movzwl	(%rax), %eax	# insn_3(D)->code, D.12871
	cmpw	$34, %ax	#, D.12871
	jne	.L395	#,
	.loc 1 1348 0
	movl	$0, -12(%rbp)	#, i
	jmp	.L396	#
.L398:
	.loc 1 1349 0
	movl	-12(%rbp), %eax	# i, tmp94
	cltq
	movzbl	call_used_regs(%rax), %eax	# call_used_regs, D.12875
	testb	%al, %al	# D.12875
	je	.L397	#,
	.loc 1 1350 0
	movl	-12(%rbp), %eax	# i, i.157
	movl	$0, %esi	#,
	movl	%eax, %edi	# i.157,
	call	cselib_invalidate_regno	#
.L397:
	.loc 1 1348 0
	addl	$1, -12(%rbp)	#, i
.L396:
	.loc 1 1348 0 is_stmt 0 discriminator 1
	cmpl	$52, -12(%rbp)	#, i
	jle	.L398	#,
	.loc 1 1352 0 is_stmt 1
	movq	-24(%rbp), %rax	# insn, tmp95
	movzbl	3(%rax), %eax	# *insn_3(D), D.12873
	andl	$4, %eax	#, D.12873
	testb	%al, %al	# D.12873
	jne	.L395	#,
	.loc 1 1353 0
	movq	callmem(%rip), %rax	# callmem, callmem.158
	movq	%rax, %rdi	# callmem.158,
	call	cselib_invalidate_mem	#
.L395:
	.loc 1 1356 0
	movq	-24(%rbp), %rax	# insn, tmp96
	movq	%rax, %rdi	# tmp96,
	call	cselib_record_sets	#
	.loc 1 1369 0
	movq	-24(%rbp), %rax	# insn, tmp97
	movzwl	(%rax), %eax	# insn_3(D)->code, D.12871
	cmpw	$34, %ax	#, D.12871
	jne	.L399	#,
	.loc 1 1370 0
	movq	-24(%rbp), %rax	# insn, tmp98
	movq	64(%rax), %rax	# insn_3(D)->fld[7].rtx, tmp99
	movq	%rax, -8(%rbp)	# tmp99, x
	jmp	.L400	#
.L402:
	.loc 1 1371 0
	movq	-8(%rbp), %rax	# x, tmp100
	movq	8(%rax), %rax	# x_2->fld[0].rtx, D.12872
	movzwl	(%rax), %eax	# _26->code, D.12871
	cmpw	$49, %ax	#, D.12871
	jne	.L401	#,
	.loc 1 1372 0
	movq	-8(%rbp), %rax	# x, tmp101
	movq	8(%rax), %rax	# x_2->fld[0].rtx, D.12872
	movq	8(%rax), %rax	# _28->fld[0].rtx, D.12872
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.12872,
	call	cselib_invalidate_rtx	#
.L401:
	.loc 1 1370 0
	movq	-8(%rbp), %rax	# x, tmp102
	movq	16(%rax), %rax	# x_2->fld[1].rtx, tmp103
	movq	%rax, -8(%rbp)	# tmp103, x
.L400:
	.loc 1 1370 0 is_stmt 0 discriminator 1
	cmpq	$0, -8(%rbp)	#, x
	jne	.L402	#,
.L399:
	.loc 1 1374 0 is_stmt 1
	movq	$0, cselib_current_insn(%rip)	#, cselib_current_insn
	.loc 1 1376 0
	movl	n_useless_values(%rip), %eax	# n_useless_values, n_useless_values.159
	cmpl	$32, %eax	#, n_useless_values.159
	jle	.L389	#,
	.loc 1 1377 0
	call	remove_useless_values	#
.L389:
	.loc 1 1378 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE29:
	.size	cselib_process_insn, .-cselib_process_insn
	.globl	cselib_update_varray_sizes
	.type	cselib_update_varray_sizes, @function
cselib_update_varray_sizes:
.LFB30:
	.loc 1 1385 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	.loc 1 1386 0
	call	max_reg_num	#
	movl	%eax, -4(%rbp)	# D.12876, nregs
	.loc 1 1388 0
	movl	cselib_nregs(%rip), %eax	# cselib_nregs, cselib_nregs.160
	cmpl	%eax, -4(%rbp)	# cselib_nregs.160, nregs
	jne	.L404	#,
	.loc 1 1389 0
	jmp	.L403	#
.L404:
	.loc 1 1391 0
	movl	-4(%rbp), %eax	# nregs, tmp67
	movl	%eax, cselib_nregs(%rip)	# tmp67, cselib_nregs
	.loc 1 1392 0
	movl	-4(%rbp), %edx	# nregs, D.12877
	movq	reg_values(%rip), %rax	# reg_values, reg_values.161
	movq	%rdx, %rsi	# D.12877,
	movq	%rax, %rdi	# reg_values.161,
	call	varray_grow	#
	movq	%rax, reg_values(%rip)	# reg_values.162, reg_values
	.loc 1 1393 0
	movl	-4(%rbp), %edx	# nregs, D.12877
	movq	used_regs(%rip), %rax	# used_regs, used_regs.163
	movq	%rdx, %rsi	# D.12877,
	movq	%rax, %rdi	# used_regs.163,
	call	varray_grow	#
	movq	%rax, used_regs(%rip)	# used_regs.164, used_regs
.L403:
	.loc 1 1394 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE30:
	.size	cselib_update_varray_sizes, .-cselib_update_varray_sizes
	.section	.rodata
.LC1:
	.string	"reg_values"
.LC2:
	.string	"used_regs"
	.text
	.globl	cselib_init
	.type	cselib_init, @function
cselib_init:
.LFB31:
	.loc 1 1401 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	.loc 1 1403 0
	movq	callmem(%rip), %rax	# callmem, callmem.165
	testq	%rax, %rax	# callmem.165
	jne	.L407	#,
	.loc 1 1405 0
	movl	$cselib_obstack, %edi	#,
	call	gcc_obstack_init	#
.LBB37:
	.loc 1 1406 0
	movq	$cselib_obstack, -32(%rbp)	#, __h
.LBB38:
	movq	-32(%rbp), %rax	# __h, tmp105
	movq	%rax, -24(%rbp)	# tmp105, __o
	movl	$0, -36(%rbp)	#, __len
	movq	-24(%rbp), %rax	# __o, tmp106
	movq	32(%rax), %rax	# __o_3->chunk_limit, D.12878
	movq	%rax, %rdx	# D.12878, D.12879
	movq	-24(%rbp), %rax	# __o, tmp107
	movq	24(%rax), %rax	# __o_3->next_free, D.12878
	subq	%rax, %rdx	# D.12879, D.12879
	movl	-36(%rbp), %eax	# __len, tmp108
	cltq
	cmpq	%rax, %rdx	# D.12879, D.12879
	jge	.L408	#,
	.loc 1 1406 0 is_stmt 0 discriminator 1
	movl	-36(%rbp), %edx	# __len, tmp109
	movq	-24(%rbp), %rax	# __o, tmp110
	movl	%edx, %esi	# tmp109,
	movq	%rax, %rdi	# tmp110,
	call	_obstack_newchunk	#
.L408:
	.loc 1 1406 0 discriminator 2
	movq	-24(%rbp), %rax	# __o, tmp111
	movq	24(%rax), %rdx	# __o_3->next_free, D.12878
	movl	-36(%rbp), %eax	# __len, tmp112
	cltq
	addq	%rax, %rdx	# D.12880, D.12878
	movq	-24(%rbp), %rax	# __o, tmp113
	movq	%rdx, 24(%rax)	# D.12878, __o_3->next_free
.LBE38:
.LBB39:
	movq	-32(%rbp), %rax	# __h, tmp114
	movq	%rax, -16(%rbp)	# tmp114, __o1
	movq	-16(%rbp), %rax	# __o1, tmp115
	movq	16(%rax), %rax	# __o1_14->object_base, tmp116
	movq	%rax, -8(%rbp)	# tmp116, value
	movq	-16(%rbp), %rax	# __o1, tmp117
	movq	24(%rax), %rax	# __o1_14->next_free, D.12878
	cmpq	-8(%rbp), %rax	# value, D.12878
	jne	.L409	#,
	.loc 1 1406 0 discriminator 1
	movq	-16(%rbp), %rax	# __o1, tmp118
	movzbl	80(%rax), %edx	# __o1_14->maybe_empty_object, tmp121
	orl	$2, %edx	#, tmp122
	movb	%dl, 80(%rax)	# tmp122, __o1_14->maybe_empty_object
.L409:
	.loc 1 1406 0 discriminator 2
	movq	-16(%rbp), %rax	# __o1, tmp123
	movq	24(%rax), %rax	# __o1_14->next_free, D.12878
	movq	%rax, %rdx	# D.12878, D.12879
	movq	-16(%rbp), %rax	# __o1, tmp124
	movl	48(%rax), %eax	# __o1_14->alignment_mask, D.12881
	cltq
	addq	%rax, %rdx	# D.12879, D.12879
	movq	-16(%rbp), %rax	# __o1, tmp125
	movl	48(%rax), %eax	# __o1_14->alignment_mask, D.12881
	notl	%eax	# D.12881
	cltq
	andq	%rdx, %rax	# D.12879, D.12879
	movq	%rax, %rdx	# D.12879, D.12878
	movq	-16(%rbp), %rax	# __o1, tmp126
	movq	%rdx, 24(%rax)	# D.12878, __o1_14->next_free
	movq	-16(%rbp), %rax	# __o1, tmp127
	movq	24(%rax), %rax	# __o1_14->next_free, D.12878
	movq	%rax, %rdx	# D.12878, D.12879
	movq	-16(%rbp), %rax	# __o1, tmp128
	movq	8(%rax), %rax	# __o1_14->chunk, D.12882
	movq	%rdx, %rcx	# D.12879, D.12879
	subq	%rax, %rcx	# D.12879, D.12879
	movq	-16(%rbp), %rax	# __o1, tmp129
	movq	32(%rax), %rax	# __o1_14->chunk_limit, D.12878
	movq	%rax, %rdx	# D.12878, D.12879
	movq	-16(%rbp), %rax	# __o1, tmp130
	movq	8(%rax), %rax	# __o1_14->chunk, D.12882
	subq	%rax, %rdx	# D.12879, D.12879
	movq	%rdx, %rax	# D.12879, D.12879
	cmpq	%rax, %rcx	# D.12879, D.12879
	jle	.L410	#,
	.loc 1 1406 0 discriminator 1
	movq	-16(%rbp), %rax	# __o1, tmp131
	movq	32(%rax), %rdx	# __o1_14->chunk_limit, D.12878
	movq	-16(%rbp), %rax	# __o1, tmp132
	movq	%rdx, 24(%rax)	# D.12878, __o1_14->next_free
.L410:
	.loc 1 1406 0 discriminator 2
	movq	-16(%rbp), %rax	# __o1, tmp133
	movq	24(%rax), %rdx	# __o1_14->next_free, D.12878
	movq	-16(%rbp), %rax	# __o1, tmp134
	movq	%rdx, 16(%rax)	# D.12878, __o1_14->object_base
	movq	-8(%rbp), %rax	# value, D.12883
.LBE39:
.LBE37:
	movq	%rax, cselib_startobj(%rip)	# cselib_startobj.166, cselib_startobj
	.loc 1 1408 0 is_stmt 1 discriminator 2
	movq	const_int_rtx+512(%rip), %rax	# const_int_rtx, D.12884
	movq	%rax, %rsi	# D.12884,
	movl	$51, %edi	#,
	call	gen_rtx_MEM	#
	movq	%rax, callmem(%rip)	# callmem.167, callmem
	.loc 1 1409 0 discriminator 2
	movl	$1, %esi	#,
	movl	$callmem, %edi	#,
	call	ggc_add_rtx_root	#
.L407:
	.loc 1 1412 0
	call	max_reg_num	#
	movl	%eax, cselib_nregs(%rip)	# cselib_nregs.168, cselib_nregs
	.loc 1 1413 0
	movl	cselib_nregs(%rip), %eax	# cselib_nregs, cselib_nregs.169
	movl	%eax, %eax	# cselib_nregs.169, D.12885
	movl	$.LC1, %edx	#,
	movl	$8, %esi	#,
	movq	%rax, %rdi	# D.12885,
	call	varray_init	#
	movq	%rax, reg_values(%rip)	# reg_values.170, reg_values
	.loc 1 1414 0
	movl	cselib_nregs(%rip), %eax	# cselib_nregs, cselib_nregs.171
	movl	%eax, %eax	# cselib_nregs.171, D.12885
	movl	$.LC2, %edx	#,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# D.12885,
	call	varray_init	#
	movq	%rax, used_regs(%rip)	# used_regs.172, used_regs
	.loc 1 1415 0
	movl	$0, %ecx	#,
	movl	$entry_and_rtx_equal_p, %edx	#,
	movl	$get_value_hash, %esi	#,
	movl	$31, %edi	#,
	call	htab_create	#
	movq	%rax, hash_table(%rip)	# hash_table.173, hash_table
	.loc 1 1416 0
	movl	$1, %edi	#,
	call	clear_table	#
	.loc 1 1417 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE31:
	.size	cselib_init, .-cselib_init
	.globl	cselib_finish
	.type	cselib_finish, @function
cselib_finish:
.LFB32:
	.loc 1 1423 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 1424 0
	movl	$0, %edi	#,
	call	clear_table	#
	.loc 1 1425 0
	movq	reg_values(%rip), %rax	# reg_values, reg_values.174
	testq	%rax, %rax	# reg_values.174
	je	.L412	#,
	.loc 1 1425 0 is_stmt 0 discriminator 1
	movq	reg_values(%rip), %rax	# reg_values, reg_values.175
	movq	%rax, %rdi	# reg_values.175,
	call	free	#
	movq	$0, reg_values(%rip)	#, reg_values
.L412:
	.loc 1 1426 0 is_stmt 1
	movq	used_regs(%rip), %rax	# used_regs, used_regs.176
	testq	%rax, %rax	# used_regs.176
	je	.L413	#,
	.loc 1 1426 0 is_stmt 0 discriminator 1
	movq	used_regs(%rip), %rax	# used_regs, used_regs.177
	movq	%rax, %rdi	# used_regs.177,
	call	free	#
	movq	$0, used_regs(%rip)	#, used_regs
.L413:
	.loc 1 1427 0 is_stmt 1
	movq	hash_table(%rip), %rax	# hash_table, hash_table.178
	movq	%rax, %rdi	# hash_table.178,
	call	htab_delete	#
	.loc 1 1428 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE32:
	.size	cselib_finish, .-cselib_finish
	.section	.rodata
	.align 16
	.type	__FUNCTION__.11007, @object
	.size	__FUNCTION__.11007, 22
__FUNCTION__.11007:
	.string	"entry_and_rtx_equal_p"
	.align 16
	.type	__FUNCTION__.11048, @object
	.size	__FUNCTION__.11048, 22
__FUNCTION__.11048:
	.string	"remove_useless_values"
	.align 16
	.type	__FUNCTION__.11089, @object
	.size	__FUNCTION__.11089, 23
__FUNCTION__.11089:
	.string	"rtx_equal_for_cselib_p"
	.type	__FUNCTION__.11097, @object
	.size	__FUNCTION__.11097, 14
__FUNCTION__.11097:
	.string	"wrap_constant"
	.type	__FUNCTION__.11147, @object
	.size	__FUNCTION__.11147, 9
__FUNCTION__.11147:
	.string	"hash_rtx"
	.type	__FUNCTION__.11163, @object
	.size	__FUNCTION__.11163, 15
__FUNCTION__.11163:
	.string	"new_cselib_val"
	.align 16
	.type	__FUNCTION__.11198, @object
	.size	__FUNCTION__.11198, 23
__FUNCTION__.11198:
	.string	"cselib_subst_to_values"
	.align 16
	.type	__FUNCTION__.11244, @object
	.size	__FUNCTION__.11244, 24
__FUNCTION__.11244:
	.string	"cselib_invalidate_regno"
	.text
.Letext0:
	.file 2 "rtl.h"
	.file 3 "config.h"
	.file 4 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.file 5 "i386.h"
	.file 6 "machmode.h"
	.file 7 "cselib.h"
	.file 8 "varray.h"
	.file 9 "regs.h"
	.file 10 "obstack.h"
	.file 11 "hashtab.h"
	.file 12 "hard-reg-set.h"
	.file 13 "flags.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x2644
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF519
	.byte	0x1
	.long	.LASF520
	.long	.LASF521
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.string	"rtx"
	.byte	0x3
	.byte	0x8
	.long	0x38
	.uleb128 0x3
	.byte	0x8
	.long	0x3e
	.uleb128 0x4
	.long	.LASF11
	.byte	0x10
	.byte	0x2
	.byte	0x7a
	.long	0xed
	.uleb128 0x5
	.long	.LASF0
	.byte	0x2
	.byte	0x7d
	.long	0x1f1
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.long	.LASF1
	.byte	0x2
	.byte	0x80
	.long	0x1f1
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.long	.LASF2
	.byte	0x2
	.byte	0x87
	.long	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0x5
	.long	.LASF3
	.byte	0x2
	.byte	0x8a
	.long	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0x5
	.long	.LASF4
	.byte	0x2
	.byte	0x95
	.long	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0x5
	.long	.LASF5
	.byte	0x2
	.byte	0x9d
	.long	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.long	.LASF6
	.byte	0x2
	.byte	0xaf
	.long	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.long	.LASF7
	.byte	0x2
	.byte	0xb6
	.long	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.long	.LASF8
	.byte	0x2
	.byte	0xbb
	.long	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.long	.LASF9
	.byte	0x2
	.byte	0xc4
	.long	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x6
	.string	"fld"
	.byte	0x2
	.byte	0xc9
	.long	0xa2f
	.byte	0x8
	.byte	0
	.uleb128 0x7
	.long	.LASF10
	.byte	0x3
	.byte	0xa
	.long	0xf8
	.uleb128 0x3
	.byte	0x8
	.long	0xfe
	.uleb128 0x4
	.long	.LASF12
	.byte	0x10
	.byte	0x2
	.byte	0xde
	.long	0x123
	.uleb128 0x8
	.long	.LASF13
	.byte	0x2
	.byte	0xdf
	.long	0x139
	.byte	0
	.uleb128 0x8
	.long	.LASF14
	.byte	0x2
	.byte	0xe0
	.long	0xa3f
	.byte	0x8
	.byte	0
	.uleb128 0x7
	.long	.LASF15
	.byte	0x3
	.byte	0xc
	.long	0x12e
	.uleb128 0x3
	.byte	0x8
	.long	0x134
	.uleb128 0x9
	.long	.LASF522
	.uleb128 0xa
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0xb
	.byte	0x8
	.byte	0x7
	.long	.LASF16
	.uleb128 0xc
	.long	.LASF54
	.byte	0x4
	.byte	0x5
	.value	0x4b2
	.long	0x1f1
	.uleb128 0xd
	.long	.LASF17
	.sleb128 0
	.uleb128 0xd
	.long	.LASF18
	.sleb128 1
	.uleb128 0xd
	.long	.LASF19
	.sleb128 2
	.uleb128 0xd
	.long	.LASF20
	.sleb128 3
	.uleb128 0xd
	.long	.LASF21
	.sleb128 4
	.uleb128 0xd
	.long	.LASF22
	.sleb128 5
	.uleb128 0xd
	.long	.LASF23
	.sleb128 6
	.uleb128 0xd
	.long	.LASF24
	.sleb128 7
	.uleb128 0xd
	.long	.LASF25
	.sleb128 8
	.uleb128 0xd
	.long	.LASF26
	.sleb128 9
	.uleb128 0xd
	.long	.LASF27
	.sleb128 10
	.uleb128 0xd
	.long	.LASF28
	.sleb128 11
	.uleb128 0xd
	.long	.LASF29
	.sleb128 12
	.uleb128 0xd
	.long	.LASF30
	.sleb128 13
	.uleb128 0xd
	.long	.LASF31
	.sleb128 14
	.uleb128 0xd
	.long	.LASF32
	.sleb128 15
	.uleb128 0xd
	.long	.LASF33
	.sleb128 16
	.uleb128 0xd
	.long	.LASF34
	.sleb128 17
	.uleb128 0xd
	.long	.LASF35
	.sleb128 18
	.uleb128 0xd
	.long	.LASF36
	.sleb128 19
	.uleb128 0xd
	.long	.LASF37
	.sleb128 20
	.uleb128 0xd
	.long	.LASF38
	.sleb128 21
	.uleb128 0xd
	.long	.LASF39
	.sleb128 22
	.uleb128 0xd
	.long	.LASF40
	.sleb128 23
	.uleb128 0xd
	.long	.LASF41
	.sleb128 24
	.uleb128 0xd
	.long	.LASF42
	.sleb128 25
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.byte	0x7
	.long	.LASF43
	.uleb128 0xe
	.byte	0x8
	.uleb128 0xb
	.byte	0x8
	.byte	0x5
	.long	.LASF44
	.uleb128 0x7
	.long	.LASF45
	.byte	0x4
	.byte	0xd4
	.long	0x20c
	.uleb128 0xb
	.byte	0x8
	.byte	0x7
	.long	.LASF46
	.uleb128 0xb
	.byte	0x1
	.byte	0x8
	.long	.LASF47
	.uleb128 0xb
	.byte	0x2
	.byte	0x7
	.long	.LASF48
	.uleb128 0xb
	.byte	0x1
	.byte	0x6
	.long	.LASF49
	.uleb128 0xb
	.byte	0x2
	.byte	0x5
	.long	.LASF50
	.uleb128 0x3
	.byte	0x8
	.long	0x235
	.uleb128 0xb
	.byte	0x1
	.byte	0x6
	.long	.LASF51
	.uleb128 0xf
	.long	0x235
	.long	0x24c
	.uleb128 0x10
	.long	0x140
	.byte	0x3
	.byte	0
	.uleb128 0xf
	.long	0x235
	.long	0x25c
	.uleb128 0x10
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x262
	.uleb128 0x11
	.long	0x235
	.uleb128 0xb
	.byte	0x8
	.byte	0x7
	.long	.LASF52
	.uleb128 0xb
	.byte	0x8
	.byte	0x5
	.long	.LASF53
	.uleb128 0x3
	.byte	0x8
	.long	0x27b
	.uleb128 0x12
	.long	0x139
	.long	0x28f
	.uleb128 0x13
	.long	0x28f
	.uleb128 0x13
	.long	0x28f
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x295
	.uleb128 0x14
	.uleb128 0x15
	.long	.LASF55
	.byte	0x4
	.byte	0x6
	.byte	0x1d
	.long	0x40b
	.uleb128 0xd
	.long	.LASF56
	.sleb128 0
	.uleb128 0xd
	.long	.LASF57
	.sleb128 1
	.uleb128 0xd
	.long	.LASF58
	.sleb128 2
	.uleb128 0xd
	.long	.LASF59
	.sleb128 3
	.uleb128 0xd
	.long	.LASF60
	.sleb128 4
	.uleb128 0xd
	.long	.LASF61
	.sleb128 5
	.uleb128 0xd
	.long	.LASF62
	.sleb128 6
	.uleb128 0xd
	.long	.LASF63
	.sleb128 7
	.uleb128 0xd
	.long	.LASF64
	.sleb128 8
	.uleb128 0xd
	.long	.LASF65
	.sleb128 9
	.uleb128 0xd
	.long	.LASF66
	.sleb128 10
	.uleb128 0xd
	.long	.LASF67
	.sleb128 11
	.uleb128 0xd
	.long	.LASF68
	.sleb128 12
	.uleb128 0xd
	.long	.LASF69
	.sleb128 13
	.uleb128 0xd
	.long	.LASF70
	.sleb128 14
	.uleb128 0xd
	.long	.LASF71
	.sleb128 15
	.uleb128 0xd
	.long	.LASF72
	.sleb128 16
	.uleb128 0xd
	.long	.LASF73
	.sleb128 17
	.uleb128 0xd
	.long	.LASF74
	.sleb128 18
	.uleb128 0xd
	.long	.LASF75
	.sleb128 19
	.uleb128 0xd
	.long	.LASF76
	.sleb128 20
	.uleb128 0xd
	.long	.LASF77
	.sleb128 21
	.uleb128 0xd
	.long	.LASF78
	.sleb128 22
	.uleb128 0xd
	.long	.LASF79
	.sleb128 23
	.uleb128 0xd
	.long	.LASF80
	.sleb128 24
	.uleb128 0xd
	.long	.LASF81
	.sleb128 25
	.uleb128 0xd
	.long	.LASF82
	.sleb128 26
	.uleb128 0xd
	.long	.LASF83
	.sleb128 27
	.uleb128 0xd
	.long	.LASF84
	.sleb128 28
	.uleb128 0xd
	.long	.LASF85
	.sleb128 29
	.uleb128 0xd
	.long	.LASF86
	.sleb128 30
	.uleb128 0xd
	.long	.LASF87
	.sleb128 31
	.uleb128 0xd
	.long	.LASF88
	.sleb128 32
	.uleb128 0xd
	.long	.LASF89
	.sleb128 33
	.uleb128 0xd
	.long	.LASF90
	.sleb128 34
	.uleb128 0xd
	.long	.LASF91
	.sleb128 35
	.uleb128 0xd
	.long	.LASF92
	.sleb128 36
	.uleb128 0xd
	.long	.LASF93
	.sleb128 37
	.uleb128 0xd
	.long	.LASF94
	.sleb128 38
	.uleb128 0xd
	.long	.LASF95
	.sleb128 39
	.uleb128 0xd
	.long	.LASF96
	.sleb128 40
	.uleb128 0xd
	.long	.LASF97
	.sleb128 41
	.uleb128 0xd
	.long	.LASF98
	.sleb128 42
	.uleb128 0xd
	.long	.LASF99
	.sleb128 43
	.uleb128 0xd
	.long	.LASF100
	.sleb128 44
	.uleb128 0xd
	.long	.LASF101
	.sleb128 45
	.uleb128 0xd
	.long	.LASF102
	.sleb128 46
	.uleb128 0xd
	.long	.LASF103
	.sleb128 47
	.uleb128 0xd
	.long	.LASF104
	.sleb128 48
	.uleb128 0xd
	.long	.LASF105
	.sleb128 49
	.uleb128 0xd
	.long	.LASF106
	.sleb128 50
	.uleb128 0xd
	.long	.LASF107
	.sleb128 51
	.uleb128 0xd
	.long	.LASF108
	.sleb128 52
	.uleb128 0xd
	.long	.LASF109
	.sleb128 53
	.uleb128 0xd
	.long	.LASF110
	.sleb128 54
	.uleb128 0xd
	.long	.LASF111
	.sleb128 55
	.uleb128 0xd
	.long	.LASF112
	.sleb128 56
	.uleb128 0xd
	.long	.LASF113
	.sleb128 57
	.uleb128 0xd
	.long	.LASF114
	.sleb128 58
	.uleb128 0xd
	.long	.LASF115
	.sleb128 59
	.byte	0
	.uleb128 0x15
	.long	.LASF116
	.byte	0x4
	.byte	0x6
	.byte	0x2c
	.long	0x454
	.uleb128 0xd
	.long	.LASF117
	.sleb128 0
	.uleb128 0xd
	.long	.LASF118
	.sleb128 1
	.uleb128 0xd
	.long	.LASF119
	.sleb128 2
	.uleb128 0xd
	.long	.LASF120
	.sleb128 3
	.uleb128 0xd
	.long	.LASF121
	.sleb128 4
	.uleb128 0xd
	.long	.LASF122
	.sleb128 5
	.uleb128 0xd
	.long	.LASF123
	.sleb128 6
	.uleb128 0xd
	.long	.LASF124
	.sleb128 7
	.uleb128 0xd
	.long	.LASF125
	.sleb128 8
	.uleb128 0xd
	.long	.LASF126
	.sleb128 9
	.byte	0
	.uleb128 0x15
	.long	.LASF127
	.byte	0x4
	.byte	0x2
	.byte	0x29
	.long	0x850
	.uleb128 0xd
	.long	.LASF128
	.sleb128 0
	.uleb128 0x16
	.string	"NIL"
	.sleb128 1
	.uleb128 0xd
	.long	.LASF129
	.sleb128 2
	.uleb128 0xd
	.long	.LASF130
	.sleb128 3
	.uleb128 0xd
	.long	.LASF131
	.sleb128 4
	.uleb128 0xd
	.long	.LASF132
	.sleb128 5
	.uleb128 0xd
	.long	.LASF133
	.sleb128 6
	.uleb128 0xd
	.long	.LASF134
	.sleb128 7
	.uleb128 0xd
	.long	.LASF135
	.sleb128 8
	.uleb128 0xd
	.long	.LASF136
	.sleb128 9
	.uleb128 0xd
	.long	.LASF137
	.sleb128 10
	.uleb128 0xd
	.long	.LASF138
	.sleb128 11
	.uleb128 0xd
	.long	.LASF139
	.sleb128 12
	.uleb128 0xd
	.long	.LASF140
	.sleb128 13
	.uleb128 0xd
	.long	.LASF141
	.sleb128 14
	.uleb128 0xd
	.long	.LASF142
	.sleb128 15
	.uleb128 0xd
	.long	.LASF143
	.sleb128 16
	.uleb128 0xd
	.long	.LASF144
	.sleb128 17
	.uleb128 0xd
	.long	.LASF145
	.sleb128 18
	.uleb128 0xd
	.long	.LASF146
	.sleb128 19
	.uleb128 0xd
	.long	.LASF147
	.sleb128 20
	.uleb128 0xd
	.long	.LASF148
	.sleb128 21
	.uleb128 0xd
	.long	.LASF149
	.sleb128 22
	.uleb128 0xd
	.long	.LASF150
	.sleb128 23
	.uleb128 0xd
	.long	.LASF151
	.sleb128 24
	.uleb128 0xd
	.long	.LASF152
	.sleb128 25
	.uleb128 0xd
	.long	.LASF153
	.sleb128 26
	.uleb128 0xd
	.long	.LASF154
	.sleb128 27
	.uleb128 0xd
	.long	.LASF155
	.sleb128 28
	.uleb128 0xd
	.long	.LASF156
	.sleb128 29
	.uleb128 0xd
	.long	.LASF157
	.sleb128 30
	.uleb128 0xd
	.long	.LASF158
	.sleb128 31
	.uleb128 0xd
	.long	.LASF159
	.sleb128 32
	.uleb128 0xd
	.long	.LASF160
	.sleb128 33
	.uleb128 0xd
	.long	.LASF161
	.sleb128 34
	.uleb128 0xd
	.long	.LASF162
	.sleb128 35
	.uleb128 0xd
	.long	.LASF163
	.sleb128 36
	.uleb128 0xd
	.long	.LASF164
	.sleb128 37
	.uleb128 0xd
	.long	.LASF165
	.sleb128 38
	.uleb128 0xd
	.long	.LASF166
	.sleb128 39
	.uleb128 0xd
	.long	.LASF167
	.sleb128 40
	.uleb128 0xd
	.long	.LASF168
	.sleb128 41
	.uleb128 0xd
	.long	.LASF169
	.sleb128 42
	.uleb128 0xd
	.long	.LASF170
	.sleb128 43
	.uleb128 0xd
	.long	.LASF171
	.sleb128 44
	.uleb128 0xd
	.long	.LASF172
	.sleb128 45
	.uleb128 0xd
	.long	.LASF173
	.sleb128 46
	.uleb128 0x16
	.string	"SET"
	.sleb128 47
	.uleb128 0x16
	.string	"USE"
	.sleb128 48
	.uleb128 0xd
	.long	.LASF174
	.sleb128 49
	.uleb128 0xd
	.long	.LASF175
	.sleb128 50
	.uleb128 0xd
	.long	.LASF176
	.sleb128 51
	.uleb128 0xd
	.long	.LASF177
	.sleb128 52
	.uleb128 0xd
	.long	.LASF178
	.sleb128 53
	.uleb128 0xd
	.long	.LASF179
	.sleb128 54
	.uleb128 0xd
	.long	.LASF180
	.sleb128 55
	.uleb128 0xd
	.long	.LASF181
	.sleb128 56
	.uleb128 0xd
	.long	.LASF182
	.sleb128 57
	.uleb128 0xd
	.long	.LASF183
	.sleb128 58
	.uleb128 0x16
	.string	"PC"
	.sleb128 59
	.uleb128 0xd
	.long	.LASF184
	.sleb128 60
	.uleb128 0x16
	.string	"REG"
	.sleb128 61
	.uleb128 0xd
	.long	.LASF185
	.sleb128 62
	.uleb128 0xd
	.long	.LASF186
	.sleb128 63
	.uleb128 0xd
	.long	.LASF187
	.sleb128 64
	.uleb128 0xd
	.long	.LASF188
	.sleb128 65
	.uleb128 0x16
	.string	"MEM"
	.sleb128 66
	.uleb128 0xd
	.long	.LASF189
	.sleb128 67
	.uleb128 0xd
	.long	.LASF190
	.sleb128 68
	.uleb128 0x16
	.string	"CC0"
	.sleb128 69
	.uleb128 0xd
	.long	.LASF191
	.sleb128 70
	.uleb128 0xd
	.long	.LASF192
	.sleb128 71
	.uleb128 0xd
	.long	.LASF193
	.sleb128 72
	.uleb128 0xd
	.long	.LASF194
	.sleb128 73
	.uleb128 0xd
	.long	.LASF195
	.sleb128 74
	.uleb128 0xd
	.long	.LASF196
	.sleb128 75
	.uleb128 0xd
	.long	.LASF197
	.sleb128 76
	.uleb128 0x16
	.string	"NEG"
	.sleb128 77
	.uleb128 0xd
	.long	.LASF198
	.sleb128 78
	.uleb128 0x16
	.string	"DIV"
	.sleb128 79
	.uleb128 0x16
	.string	"MOD"
	.sleb128 80
	.uleb128 0xd
	.long	.LASF199
	.sleb128 81
	.uleb128 0xd
	.long	.LASF200
	.sleb128 82
	.uleb128 0x16
	.string	"AND"
	.sleb128 83
	.uleb128 0x16
	.string	"IOR"
	.sleb128 84
	.uleb128 0x16
	.string	"XOR"
	.sleb128 85
	.uleb128 0x16
	.string	"NOT"
	.sleb128 86
	.uleb128 0xd
	.long	.LASF201
	.sleb128 87
	.uleb128 0xd
	.long	.LASF202
	.sleb128 88
	.uleb128 0xd
	.long	.LASF203
	.sleb128 89
	.uleb128 0xd
	.long	.LASF204
	.sleb128 90
	.uleb128 0xd
	.long	.LASF205
	.sleb128 91
	.uleb128 0xd
	.long	.LASF206
	.sleb128 92
	.uleb128 0xd
	.long	.LASF207
	.sleb128 93
	.uleb128 0xd
	.long	.LASF208
	.sleb128 94
	.uleb128 0xd
	.long	.LASF209
	.sleb128 95
	.uleb128 0xd
	.long	.LASF210
	.sleb128 96
	.uleb128 0xd
	.long	.LASF211
	.sleb128 97
	.uleb128 0xd
	.long	.LASF212
	.sleb128 98
	.uleb128 0xd
	.long	.LASF213
	.sleb128 99
	.uleb128 0xd
	.long	.LASF214
	.sleb128 100
	.uleb128 0xd
	.long	.LASF215
	.sleb128 101
	.uleb128 0x16
	.string	"NE"
	.sleb128 102
	.uleb128 0x16
	.string	"EQ"
	.sleb128 103
	.uleb128 0x16
	.string	"GE"
	.sleb128 104
	.uleb128 0x16
	.string	"GT"
	.sleb128 105
	.uleb128 0x16
	.string	"LE"
	.sleb128 106
	.uleb128 0x16
	.string	"LT"
	.sleb128 107
	.uleb128 0x16
	.string	"GEU"
	.sleb128 108
	.uleb128 0x16
	.string	"GTU"
	.sleb128 109
	.uleb128 0x16
	.string	"LEU"
	.sleb128 110
	.uleb128 0x16
	.string	"LTU"
	.sleb128 111
	.uleb128 0xd
	.long	.LASF216
	.sleb128 112
	.uleb128 0xd
	.long	.LASF217
	.sleb128 113
	.uleb128 0xd
	.long	.LASF218
	.sleb128 114
	.uleb128 0xd
	.long	.LASF219
	.sleb128 115
	.uleb128 0xd
	.long	.LASF220
	.sleb128 116
	.uleb128 0xd
	.long	.LASF221
	.sleb128 117
	.uleb128 0xd
	.long	.LASF222
	.sleb128 118
	.uleb128 0xd
	.long	.LASF223
	.sleb128 119
	.uleb128 0xd
	.long	.LASF224
	.sleb128 120
	.uleb128 0xd
	.long	.LASF225
	.sleb128 121
	.uleb128 0xd
	.long	.LASF226
	.sleb128 122
	.uleb128 0xd
	.long	.LASF227
	.sleb128 123
	.uleb128 0xd
	.long	.LASF228
	.sleb128 124
	.uleb128 0xd
	.long	.LASF229
	.sleb128 125
	.uleb128 0x16
	.string	"FIX"
	.sleb128 126
	.uleb128 0xd
	.long	.LASF230
	.sleb128 127
	.uleb128 0xd
	.long	.LASF231
	.sleb128 128
	.uleb128 0x16
	.string	"ABS"
	.sleb128 129
	.uleb128 0xd
	.long	.LASF232
	.sleb128 130
	.uleb128 0x16
	.string	"FFS"
	.sleb128 131
	.uleb128 0xd
	.long	.LASF233
	.sleb128 132
	.uleb128 0xd
	.long	.LASF234
	.sleb128 133
	.uleb128 0xd
	.long	.LASF235
	.sleb128 134
	.uleb128 0xd
	.long	.LASF236
	.sleb128 135
	.uleb128 0xd
	.long	.LASF237
	.sleb128 136
	.uleb128 0xd
	.long	.LASF238
	.sleb128 137
	.uleb128 0xd
	.long	.LASF239
	.sleb128 138
	.uleb128 0xd
	.long	.LASF240
	.sleb128 139
	.uleb128 0xd
	.long	.LASF241
	.sleb128 140
	.uleb128 0xd
	.long	.LASF242
	.sleb128 141
	.uleb128 0xd
	.long	.LASF243
	.sleb128 142
	.uleb128 0xd
	.long	.LASF244
	.sleb128 143
	.uleb128 0xd
	.long	.LASF245
	.sleb128 144
	.uleb128 0xd
	.long	.LASF246
	.sleb128 145
	.uleb128 0xd
	.long	.LASF247
	.sleb128 146
	.uleb128 0xd
	.long	.LASF248
	.sleb128 147
	.uleb128 0xd
	.long	.LASF249
	.sleb128 148
	.uleb128 0xd
	.long	.LASF250
	.sleb128 149
	.uleb128 0xd
	.long	.LASF251
	.sleb128 150
	.uleb128 0xd
	.long	.LASF252
	.sleb128 151
	.uleb128 0x16
	.string	"PHI"
	.sleb128 152
	.uleb128 0xd
	.long	.LASF253
	.sleb128 153
	.byte	0
	.uleb128 0x17
	.byte	0x4
	.byte	0x2
	.byte	0x44
	.long	0x8d1
	.uleb128 0x5
	.long	.LASF254
	.byte	0x2
	.byte	0x47
	.long	0x1f1
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.long	.LASF255
	.byte	0x2
	.byte	0x49
	.long	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x5
	.long	.LASF256
	.byte	0x2
	.byte	0x4a
	.long	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x5
	.long	.LASF257
	.byte	0x2
	.byte	0x4c
	.long	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x5
	.long	.LASF258
	.byte	0x2
	.byte	0x4e
	.long	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.long	.LASF259
	.byte	0x2
	.byte	0x50
	.long	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x5
	.long	.LASF260
	.byte	0x2
	.byte	0x53
	.long	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x5
	.long	.LASF261
	.byte	0x2
	.byte	0x55
	.long	0x1f1
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0
	.byte	0
	.uleb128 0x7
	.long	.LASF262
	.byte	0x2
	.byte	0x56
	.long	0x850
	.uleb128 0x17
	.byte	0x28
	.byte	0x2
	.byte	0x5c
	.long	0x921
	.uleb128 0x8
	.long	.LASF263
	.byte	0x2
	.byte	0x5e
	.long	0x1fa
	.byte	0
	.uleb128 0x8
	.long	.LASF264
	.byte	0x2
	.byte	0x5f
	.long	0x123
	.byte	0x8
	.uleb128 0x8
	.long	.LASF265
	.byte	0x2
	.byte	0x60
	.long	0x2d
	.byte	0x10
	.uleb128 0x8
	.long	.LASF266
	.byte	0x2
	.byte	0x61
	.long	0x2d
	.byte	0x18
	.uleb128 0x8
	.long	.LASF267
	.byte	0x2
	.byte	0x62
	.long	0x1f1
	.byte	0x20
	.byte	0
	.uleb128 0x7
	.long	.LASF268
	.byte	0x2
	.byte	0x63
	.long	0x8dc
	.uleb128 0x18
	.long	.LASF355
	.byte	0x8
	.byte	0x2
	.byte	0x67
	.long	0x9c7
	.uleb128 0x19
	.long	.LASF269
	.byte	0x2
	.byte	0x69
	.long	0x1fa
	.uleb128 0x19
	.long	.LASF270
	.byte	0x2
	.byte	0x6a
	.long	0x139
	.uleb128 0x19
	.long	.LASF271
	.byte	0x2
	.byte	0x6b
	.long	0x1f1
	.uleb128 0x19
	.long	.LASF272
	.byte	0x2
	.byte	0x6c
	.long	0x25c
	.uleb128 0x1a
	.string	"rtx"
	.byte	0x2
	.byte	0x6d
	.long	0x2d
	.uleb128 0x19
	.long	.LASF10
	.byte	0x2
	.byte	0x6e
	.long	0xed
	.uleb128 0x19
	.long	.LASF273
	.byte	0x2
	.byte	0x6f
	.long	0x296
	.uleb128 0x19
	.long	.LASF274
	.byte	0x2
	.byte	0x70
	.long	0x8d1
	.uleb128 0x19
	.long	.LASF275
	.byte	0x2
	.byte	0x71
	.long	0xa02
	.uleb128 0x19
	.long	.LASF276
	.byte	0x2
	.byte	0x72
	.long	0xa0d
	.uleb128 0x19
	.long	.LASF277
	.byte	0x2
	.byte	0x73
	.long	0x123
	.uleb128 0x1a
	.string	"bb"
	.byte	0x2
	.byte	0x74
	.long	0xa18
	.uleb128 0x19
	.long	.LASF278
	.byte	0x2
	.byte	0x75
	.long	0xa1e
	.byte	0
	.uleb128 0x4
	.long	.LASF279
	.byte	0x20
	.byte	0x7
	.byte	0x17
	.long	0xa02
	.uleb128 0x8
	.long	.LASF280
	.byte	0x7
	.byte	0x1a
	.long	0x1f1
	.byte	0
	.uleb128 0x6
	.string	"u"
	.byte	0x7
	.byte	0x21
	.long	0x1198
	.byte	0x8
	.uleb128 0x8
	.long	.LASF281
	.byte	0x7
	.byte	0x25
	.long	0x11e8
	.byte	0x10
	.uleb128 0x8
	.long	.LASF282
	.byte	0x7
	.byte	0x28
	.long	0xee2
	.byte	0x18
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x9c7
	.uleb128 0x1b
	.long	.LASF283
	.uleb128 0x3
	.byte	0x8
	.long	0xa08
	.uleb128 0x1b
	.long	.LASF284
	.uleb128 0x3
	.byte	0x8
	.long	0xa13
	.uleb128 0x3
	.byte	0x8
	.long	0x921
	.uleb128 0x7
	.long	.LASF285
	.byte	0x2
	.byte	0x76
	.long	0x92c
	.uleb128 0xf
	.long	0xa24
	.long	0xa3f
	.uleb128 0x10
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	0x2d
	.long	0xa4f
	.uleb128 0x10
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0xc
	.long	.LASF286
	.byte	0x4
	.byte	0x2
	.value	0x1c3
	.long	0xb11
	.uleb128 0xd
	.long	.LASF287
	.sleb128 1
	.uleb128 0xd
	.long	.LASF288
	.sleb128 2
	.uleb128 0xd
	.long	.LASF289
	.sleb128 3
	.uleb128 0xd
	.long	.LASF290
	.sleb128 4
	.uleb128 0xd
	.long	.LASF291
	.sleb128 5
	.uleb128 0xd
	.long	.LASF292
	.sleb128 6
	.uleb128 0xd
	.long	.LASF293
	.sleb128 7
	.uleb128 0xd
	.long	.LASF294
	.sleb128 8
	.uleb128 0xd
	.long	.LASF295
	.sleb128 9
	.uleb128 0xd
	.long	.LASF296
	.sleb128 10
	.uleb128 0xd
	.long	.LASF297
	.sleb128 11
	.uleb128 0xd
	.long	.LASF298
	.sleb128 12
	.uleb128 0xd
	.long	.LASF299
	.sleb128 13
	.uleb128 0xd
	.long	.LASF300
	.sleb128 14
	.uleb128 0xd
	.long	.LASF301
	.sleb128 15
	.uleb128 0xd
	.long	.LASF302
	.sleb128 16
	.uleb128 0xd
	.long	.LASF303
	.sleb128 17
	.uleb128 0xd
	.long	.LASF304
	.sleb128 18
	.uleb128 0xd
	.long	.LASF305
	.sleb128 19
	.uleb128 0xd
	.long	.LASF306
	.sleb128 20
	.uleb128 0xd
	.long	.LASF307
	.sleb128 21
	.uleb128 0xd
	.long	.LASF308
	.sleb128 22
	.uleb128 0xd
	.long	.LASF309
	.sleb128 23
	.uleb128 0xd
	.long	.LASF310
	.sleb128 24
	.uleb128 0xd
	.long	.LASF311
	.sleb128 25
	.uleb128 0xd
	.long	.LASF312
	.sleb128 26
	.uleb128 0xd
	.long	.LASF313
	.sleb128 27
	.uleb128 0xd
	.long	.LASF314
	.sleb128 28
	.uleb128 0xd
	.long	.LASF315
	.sleb128 29
	.uleb128 0xd
	.long	.LASF316
	.sleb128 30
	.byte	0
	.uleb128 0xc
	.long	.LASF317
	.byte	0x4
	.byte	0x2
	.value	0x297
	.long	0xbc0
	.uleb128 0xd
	.long	.LASF318
	.sleb128 -100
	.uleb128 0xd
	.long	.LASF319
	.sleb128 -99
	.uleb128 0xd
	.long	.LASF320
	.sleb128 -98
	.uleb128 0xd
	.long	.LASF321
	.sleb128 -97
	.uleb128 0xd
	.long	.LASF322
	.sleb128 -96
	.uleb128 0xd
	.long	.LASF323
	.sleb128 -95
	.uleb128 0xd
	.long	.LASF324
	.sleb128 -94
	.uleb128 0xd
	.long	.LASF325
	.sleb128 -93
	.uleb128 0xd
	.long	.LASF326
	.sleb128 -92
	.uleb128 0xd
	.long	.LASF327
	.sleb128 -91
	.uleb128 0xd
	.long	.LASF328
	.sleb128 -90
	.uleb128 0xd
	.long	.LASF329
	.sleb128 -89
	.uleb128 0xd
	.long	.LASF330
	.sleb128 -88
	.uleb128 0xd
	.long	.LASF331
	.sleb128 -87
	.uleb128 0xd
	.long	.LASF332
	.sleb128 -86
	.uleb128 0xd
	.long	.LASF333
	.sleb128 -85
	.uleb128 0xd
	.long	.LASF334
	.sleb128 -84
	.uleb128 0xd
	.long	.LASF335
	.sleb128 -83
	.uleb128 0xd
	.long	.LASF336
	.sleb128 -82
	.uleb128 0xd
	.long	.LASF337
	.sleb128 -81
	.uleb128 0xd
	.long	.LASF338
	.sleb128 -80
	.uleb128 0xd
	.long	.LASF339
	.sleb128 -79
	.uleb128 0xd
	.long	.LASF340
	.sleb128 -78
	.byte	0
	.uleb128 0xc
	.long	.LASF341
	.byte	0x4
	.byte	0x2
	.value	0x630
	.long	0xc16
	.uleb128 0xd
	.long	.LASF342
	.sleb128 0
	.uleb128 0xd
	.long	.LASF343
	.sleb128 1
	.uleb128 0xd
	.long	.LASF344
	.sleb128 2
	.uleb128 0xd
	.long	.LASF345
	.sleb128 3
	.uleb128 0xd
	.long	.LASF346
	.sleb128 4
	.uleb128 0xd
	.long	.LASF347
	.sleb128 5
	.uleb128 0xd
	.long	.LASF348
	.sleb128 6
	.uleb128 0xd
	.long	.LASF349
	.sleb128 7
	.uleb128 0xd
	.long	.LASF350
	.sleb128 8
	.uleb128 0xd
	.long	.LASF351
	.sleb128 9
	.uleb128 0xd
	.long	.LASF352
	.sleb128 10
	.uleb128 0xd
	.long	.LASF353
	.sleb128 11
	.byte	0
	.uleb128 0x4
	.long	.LASF354
	.byte	0x10
	.byte	0x8
	.byte	0x24
	.long	0xc3b
	.uleb128 0x6
	.string	"rtx"
	.byte	0x8
	.byte	0x32
	.long	0x38
	.byte	0
	.uleb128 0x6
	.string	"age"
	.byte	0x8
	.byte	0x36
	.long	0x1f1
	.byte	0x8
	.byte	0
	.uleb128 0x18
	.long	.LASF356
	.byte	0x10
	.byte	0x8
	.byte	0x3a
	.long	0xd20
	.uleb128 0x1a
	.string	"c"
	.byte	0x8
	.byte	0x3b
	.long	0x24c
	.uleb128 0x1a
	.string	"uc"
	.byte	0x8
	.byte	0x3c
	.long	0xd20
	.uleb128 0x1a
	.string	"s"
	.byte	0x8
	.byte	0x3d
	.long	0xd30
	.uleb128 0x1a
	.string	"us"
	.byte	0x8
	.byte	0x3e
	.long	0xd40
	.uleb128 0x1a
	.string	"i"
	.byte	0x8
	.byte	0x3f
	.long	0xd50
	.uleb128 0x1a
	.string	"u"
	.byte	0x8
	.byte	0x40
	.long	0xd60
	.uleb128 0x1a
	.string	"l"
	.byte	0x8
	.byte	0x41
	.long	0xd70
	.uleb128 0x1a
	.string	"ul"
	.byte	0x8
	.byte	0x42
	.long	0xd80
	.uleb128 0x19
	.long	.LASF357
	.byte	0x8
	.byte	0x43
	.long	0xd70
	.uleb128 0x19
	.long	.LASF358
	.byte	0x8
	.byte	0x44
	.long	0xd80
	.uleb128 0x19
	.long	.LASF359
	.byte	0x8
	.byte	0x45
	.long	0xd90
	.uleb128 0x19
	.long	.LASF360
	.byte	0x8
	.byte	0x46
	.long	0xda0
	.uleb128 0x1a
	.string	"rtx"
	.byte	0x8
	.byte	0x47
	.long	0xdb0
	.uleb128 0x19
	.long	.LASF10
	.byte	0x8
	.byte	0x48
	.long	0xdc0
	.uleb128 0x19
	.long	.LASF15
	.byte	0x8
	.byte	0x49
	.long	0xdd0
	.uleb128 0x19
	.long	.LASF361
	.byte	0x8
	.byte	0x4a
	.long	0xde0
	.uleb128 0x19
	.long	.LASF362
	.byte	0x8
	.byte	0x4b
	.long	0xdf0
	.uleb128 0x1a
	.string	"reg"
	.byte	0x8
	.byte	0x4c
	.long	0xe0b
	.uleb128 0x19
	.long	.LASF363
	.byte	0x8
	.byte	0x4d
	.long	0xeb2
	.uleb128 0x1a
	.string	"bb"
	.byte	0x8
	.byte	0x4e
	.long	0xec2
	.uleb128 0x1a
	.string	"te"
	.byte	0x8
	.byte	0x4f
	.long	0xed2
	.byte	0
	.uleb128 0xf
	.long	0x213
	.long	0xd30
	.uleb128 0x10
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	0x228
	.long	0xd40
	.uleb128 0x10
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	0x21a
	.long	0xd50
	.uleb128 0x10
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	0x139
	.long	0xd60
	.uleb128 0x10
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	0x1f1
	.long	0xd70
	.uleb128 0x10
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	0x1fa
	.long	0xd80
	.uleb128 0x10
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	0x20c
	.long	0xd90
	.uleb128 0x10
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	0x1f8
	.long	0xda0
	.uleb128 0x10
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	0x22f
	.long	0xdb0
	.uleb128 0x10
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	0x38
	.long	0xdc0
	.uleb128 0x10
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	0xf8
	.long	0xdd0
	.uleb128 0x10
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	0x12e
	.long	0xde0
	.uleb128 0x10
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	0xa0d
	.long	0xdf0
	.uleb128 0x10
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	0xe00
	.long	0xe00
	.uleb128 0x10
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0xe06
	.uleb128 0x1b
	.long	.LASF364
	.uleb128 0xf
	.long	0xe1b
	.long	0xe1b
	.uleb128 0x10
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0xe21
	.uleb128 0x4
	.long	.LASF365
	.byte	0x2c
	.byte	0x9
	.byte	0x2d
	.long	0xeb2
	.uleb128 0x8
	.long	.LASF366
	.byte	0x9
	.byte	0x2f
	.long	0x139
	.byte	0
	.uleb128 0x8
	.long	.LASF367
	.byte	0x9
	.byte	0x30
	.long	0x139
	.byte	0x4
	.uleb128 0x8
	.long	.LASF368
	.byte	0x9
	.byte	0x31
	.long	0x139
	.byte	0x8
	.uleb128 0x8
	.long	.LASF369
	.byte	0x9
	.byte	0x34
	.long	0x139
	.byte	0xc
	.uleb128 0x8
	.long	.LASF370
	.byte	0x9
	.byte	0x37
	.long	0x139
	.byte	0x10
	.uleb128 0x8
	.long	.LASF371
	.byte	0x9
	.byte	0x38
	.long	0x139
	.byte	0x14
	.uleb128 0x8
	.long	.LASF372
	.byte	0x9
	.byte	0x39
	.long	0x139
	.byte	0x18
	.uleb128 0x8
	.long	.LASF373
	.byte	0x9
	.byte	0x3a
	.long	0x139
	.byte	0x1c
	.uleb128 0x8
	.long	.LASF374
	.byte	0x9
	.byte	0x3b
	.long	0x139
	.byte	0x20
	.uleb128 0x8
	.long	.LASF375
	.byte	0x9
	.byte	0x3c
	.long	0x139
	.byte	0x24
	.uleb128 0x8
	.long	.LASF376
	.byte	0x9
	.byte	0x3d
	.long	0x235
	.byte	0x28
	.byte	0
	.uleb128 0xf
	.long	0xc16
	.long	0xec2
	.uleb128 0x10
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	0xa18
	.long	0xed2
	.uleb128 0x10
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	0xee2
	.long	0xee2
	.uleb128 0x10
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0xee8
	.uleb128 0x4
	.long	.LASF377
	.byte	0x10
	.byte	0x7
	.byte	0x37
	.long	0xf0d
	.uleb128 0x8
	.long	.LASF378
	.byte	0x7
	.byte	0x39
	.long	0xee2
	.byte	0
	.uleb128 0x6
	.string	"elt"
	.byte	0x7
	.byte	0x3a
	.long	0x11f9
	.byte	0x8
	.byte	0
	.uleb128 0x7
	.long	.LASF379
	.byte	0x8
	.byte	0x50
	.long	0xc3b
	.uleb128 0x4
	.long	.LASF380
	.byte	0x30
	.byte	0x8
	.byte	0x53
	.long	0xf61
	.uleb128 0x8
	.long	.LASF381
	.byte	0x8
	.byte	0x54
	.long	0x201
	.byte	0
	.uleb128 0x8
	.long	.LASF382
	.byte	0x8
	.byte	0x55
	.long	0x201
	.byte	0x8
	.uleb128 0x8
	.long	.LASF383
	.byte	0x8
	.byte	0x57
	.long	0x201
	.byte	0x10
	.uleb128 0x8
	.long	.LASF384
	.byte	0x8
	.byte	0x58
	.long	0x25c
	.byte	0x18
	.uleb128 0x8
	.long	.LASF385
	.byte	0x8
	.byte	0x59
	.long	0xf0d
	.byte	0x20
	.byte	0
	.uleb128 0x7
	.long	.LASF386
	.byte	0x8
	.byte	0x5a
	.long	0xf6c
	.uleb128 0x3
	.byte	0x8
	.long	0xf18
	.uleb128 0x4
	.long	.LASF387
	.byte	0x58
	.byte	0xa
	.byte	0xa8
	.long	0x1024
	.uleb128 0x8
	.long	.LASF388
	.byte	0xa
	.byte	0xaa
	.long	0x1fa
	.byte	0
	.uleb128 0x8
	.long	.LASF389
	.byte	0xa
	.byte	0xab
	.long	0x105b
	.byte	0x8
	.uleb128 0x8
	.long	.LASF390
	.byte	0xa
	.byte	0xac
	.long	0x22f
	.byte	0x10
	.uleb128 0x8
	.long	.LASF391
	.byte	0xa
	.byte	0xad
	.long	0x22f
	.byte	0x18
	.uleb128 0x8
	.long	.LASF392
	.byte	0xa
	.byte	0xae
	.long	0x22f
	.byte	0x20
	.uleb128 0x8
	.long	.LASF393
	.byte	0xa
	.byte	0xaf
	.long	0x1fa
	.byte	0x28
	.uleb128 0x8
	.long	.LASF394
	.byte	0xa
	.byte	0xb0
	.long	0x139
	.byte	0x30
	.uleb128 0x8
	.long	.LASF395
	.byte	0xa
	.byte	0xb5
	.long	0x1075
	.byte	0x38
	.uleb128 0x8
	.long	.LASF396
	.byte	0xa
	.byte	0xb6
	.long	0x108b
	.byte	0x40
	.uleb128 0x8
	.long	.LASF397
	.byte	0xa
	.byte	0xb7
	.long	0x1f8
	.byte	0x48
	.uleb128 0x5
	.long	.LASF398
	.byte	0xa
	.byte	0xbd
	.long	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x50
	.uleb128 0x5
	.long	.LASF399
	.byte	0xa
	.byte	0xbe
	.long	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x50
	.uleb128 0x5
	.long	.LASF400
	.byte	0xa
	.byte	0xc2
	.long	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x50
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0xf72
	.uleb128 0x4
	.long	.LASF401
	.byte	0x18
	.byte	0xa
	.byte	0xa1
	.long	0x105b
	.uleb128 0x8
	.long	.LASF402
	.byte	0xa
	.byte	0xa3
	.long	0x22f
	.byte	0
	.uleb128 0x8
	.long	.LASF403
	.byte	0xa
	.byte	0xa4
	.long	0x105b
	.byte	0x8
	.uleb128 0x8
	.long	.LASF404
	.byte	0xa
	.byte	0xa5
	.long	0x23c
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x102a
	.uleb128 0x12
	.long	0x105b
	.long	0x1075
	.uleb128 0x13
	.long	0x1f8
	.uleb128 0x13
	.long	0x1fa
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1061
	.uleb128 0x1c
	.long	0x108b
	.uleb128 0x13
	.long	0x1f8
	.uleb128 0x13
	.long	0x105b
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x107b
	.uleb128 0x7
	.long	.LASF405
	.byte	0xb
	.byte	0x2a
	.long	0x1f1
	.uleb128 0x7
	.long	.LASF406
	.byte	0xb
	.byte	0x2f
	.long	0x10a7
	.uleb128 0x3
	.byte	0x8
	.long	0x10ad
	.uleb128 0x12
	.long	0x1091
	.long	0x10bc
	.uleb128 0x13
	.long	0x28f
	.byte	0
	.uleb128 0x7
	.long	.LASF407
	.byte	0xb
	.byte	0x36
	.long	0x275
	.uleb128 0x7
	.long	.LASF408
	.byte	0xb
	.byte	0x3a
	.long	0x10d2
	.uleb128 0x3
	.byte	0x8
	.long	0x10d8
	.uleb128 0x1c
	.long	0x10e3
	.uleb128 0x13
	.long	0x1f8
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1f8
	.uleb128 0x4
	.long	.LASF409
	.byte	0x48
	.byte	0xb
	.byte	0x47
	.long	0x116e
	.uleb128 0x8
	.long	.LASF410
	.byte	0xb
	.byte	0x4a
	.long	0x109c
	.byte	0
	.uleb128 0x8
	.long	.LASF411
	.byte	0xb
	.byte	0x4d
	.long	0x10bc
	.byte	0x8
	.uleb128 0x8
	.long	.LASF412
	.byte	0xb
	.byte	0x50
	.long	0x10c7
	.byte	0x10
	.uleb128 0x8
	.long	.LASF413
	.byte	0xb
	.byte	0x53
	.long	0x10e3
	.byte	0x18
	.uleb128 0x8
	.long	.LASF266
	.byte	0xb
	.byte	0x56
	.long	0x201
	.byte	0x20
	.uleb128 0x8
	.long	.LASF414
	.byte	0xb
	.byte	0x59
	.long	0x201
	.byte	0x28
	.uleb128 0x8
	.long	.LASF415
	.byte	0xb
	.byte	0x5c
	.long	0x201
	.byte	0x30
	.uleb128 0x8
	.long	.LASF416
	.byte	0xb
	.byte	0x60
	.long	0x1f1
	.byte	0x38
	.uleb128 0x8
	.long	.LASF417
	.byte	0xb
	.byte	0x64
	.long	0x1f1
	.byte	0x3c
	.uleb128 0x8
	.long	.LASF418
	.byte	0xb
	.byte	0x68
	.long	0x139
	.byte	0x40
	.byte	0
	.uleb128 0x7
	.long	.LASF419
	.byte	0xb
	.byte	0x6b
	.long	0x1179
	.uleb128 0x3
	.byte	0x8
	.long	0x10e9
	.uleb128 0x15
	.long	.LASF420
	.byte	0x4
	.byte	0xb
	.byte	0x6e
	.long	0x1198
	.uleb128 0xd
	.long	.LASF421
	.sleb128 0
	.uleb128 0xd
	.long	.LASF422
	.sleb128 1
	.byte	0
	.uleb128 0x1d
	.byte	0x8
	.byte	0x7
	.byte	0x1b
	.long	0x11b7
	.uleb128 0x19
	.long	.LASF423
	.byte	0x7
	.byte	0x1e
	.long	0x2d
	.uleb128 0x19
	.long	.LASF391
	.byte	0x7
	.byte	0x20
	.long	0xa02
	.byte	0
	.uleb128 0x4
	.long	.LASF424
	.byte	0x18
	.byte	0x7
	.byte	0x2c
	.long	0x11e8
	.uleb128 0x8
	.long	.LASF378
	.byte	0x7
	.byte	0x2f
	.long	0x11e8
	.byte	0
	.uleb128 0x6
	.string	"loc"
	.byte	0x7
	.byte	0x31
	.long	0x2d
	.byte	0x8
	.uleb128 0x8
	.long	.LASF425
	.byte	0x7
	.byte	0x33
	.long	0x2d
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x11b7
	.uleb128 0x7
	.long	.LASF426
	.byte	0x7
	.byte	0x29
	.long	0x9c7
	.uleb128 0x3
	.byte	0x8
	.long	0x11ee
	.uleb128 0x1e
	.string	"set"
	.byte	0x20
	.byte	0x1
	.value	0x4c5
	.long	0x1241
	.uleb128 0x1f
	.string	"src"
	.byte	0x1
	.value	0x4c7
	.long	0x2d
	.byte	0
	.uleb128 0x20
	.long	.LASF427
	.byte	0x1
	.value	0x4c8
	.long	0x2d
	.byte	0x8
	.uleb128 0x20
	.long	.LASF428
	.byte	0x1
	.value	0x4c9
	.long	0x11f9
	.byte	0x10
	.uleb128 0x20
	.long	.LASF429
	.byte	0x1
	.value	0x4ca
	.long	0x11f9
	.byte	0x18
	.byte	0
	.uleb128 0x21
	.long	.LASF432
	.byte	0x1
	.byte	0x8b
	.long	0xee2
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x130e
	.uleb128 0x22
	.long	.LASF378
	.byte	0x1
	.byte	0x8c
	.long	0xee2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x23
	.string	"elt"
	.byte	0x1
	.byte	0x8d
	.long	0x11f9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x24
	.string	"el"
	.byte	0x1
	.byte	0x8f
	.long	0xee2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x25
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x24
	.string	"__h"
	.byte	0x1
	.byte	0x94
	.long	0x1024
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x26
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.long	0x12de
	.uleb128 0x24
	.string	"__o"
	.byte	0x1
	.byte	0x94
	.long	0x1024
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x27
	.long	.LASF430
	.byte	0x1
	.byte	0x94
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.byte	0
	.uleb128 0x25
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.uleb128 0x27
	.long	.LASF431
	.byte	0x1
	.byte	0x94
	.long	0x1024
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x27
	.long	.LASF280
	.byte	0x1
	.byte	0x94
	.long	0x1f8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x21
	.long	.LASF433
	.byte	0x1
	.byte	0x9f
	.long	0x11e8
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x13db
	.uleb128 0x22
	.long	.LASF378
	.byte	0x1
	.byte	0xa0
	.long	0x11e8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x23
	.string	"loc"
	.byte	0x1
	.byte	0xa1
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x24
	.string	"el"
	.byte	0x1
	.byte	0xa3
	.long	0x11e8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x25
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.uleb128 0x24
	.string	"__h"
	.byte	0x1
	.byte	0xa8
	.long	0x1024
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x26
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.long	0x13ab
	.uleb128 0x24
	.string	"__o"
	.byte	0x1
	.byte	0xa8
	.long	0x1024
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x27
	.long	.LASF430
	.byte	0x1
	.byte	0xa8
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.byte	0
	.uleb128 0x25
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.uleb128 0x27
	.long	.LASF431
	.byte	0x1
	.byte	0xa8
	.long	0x1024
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x27
	.long	.LASF280
	.byte	0x1
	.byte	0xa8
	.long	0x1f8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x28
	.long	.LASF434
	.byte	0x1
	.byte	0xb4
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x1412
	.uleb128 0x23
	.string	"pl"
	.byte	0x1
	.byte	0xb5
	.long	0x1412
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x24
	.string	"l"
	.byte	0x1
	.byte	0xb7
	.long	0xee2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0xee2
	.uleb128 0x28
	.long	.LASF435
	.byte	0x1
	.byte	0xc1
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x144f
	.uleb128 0x23
	.string	"pl"
	.byte	0x1
	.byte	0xc2
	.long	0x144f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x24
	.string	"l"
	.byte	0x1
	.byte	0xc4
	.long	0x11e8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x11e8
	.uleb128 0x29
	.long	.LASF436
	.byte	0x1
	.byte	0xcf
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x147f
	.uleb128 0x23
	.string	"v"
	.byte	0x1
	.byte	0xd0
	.long	0x11f9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x29
	.long	.LASF437
	.byte	0x1
	.byte	0xde
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x14e5
	.uleb128 0x22
	.long	.LASF438
	.byte	0x1
	.byte	0xdf
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.byte	0xe1
	.long	0x1f1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x25
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.uleb128 0x24
	.string	"__o"
	.byte	0x1
	.byte	0xef
	.long	0x1024
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x27
	.long	.LASF439
	.byte	0x1
	.byte	0xef
	.long	0x1f8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x21
	.long	.LASF440
	.byte	0x1
	.byte	0xff
	.long	0x139
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x156e
	.uleb128 0x2a
	.long	.LASF441
	.byte	0x1
	.value	0x100
	.long	0x28f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2a
	.long	.LASF442
	.byte	0x1
	.value	0x100
	.long	0x28f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2b
	.string	"l"
	.byte	0x1
	.value	0x102
	.long	0x11e8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.string	"v"
	.byte	0x1
	.value	0x103
	.long	0x156e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.string	"x"
	.byte	0x1
	.value	0x104
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2c
	.long	.LASF1
	.byte	0x1
	.value	0x105
	.long	0x296
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2d
	.long	.LASF450
	.long	0x1589
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.11007
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1574
	.uleb128 0x11
	.long	0x11ee
	.uleb128 0xf
	.long	0x235
	.long	0x1589
	.uleb128 0x10
	.long	0x140
	.byte	0x15
	.byte	0
	.uleb128 0x11
	.long	0x1579
	.uleb128 0x2e
	.long	.LASF443
	.byte	0x1
	.value	0x121
	.long	0x1f1
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x15cd
	.uleb128 0x2a
	.long	.LASF441
	.byte	0x1
	.value	0x122
	.long	0x28f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.string	"v"
	.byte	0x1
	.value	0x124
	.long	0x156e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2f
	.long	.LASF451
	.byte	0x1
	.value	0x12e
	.long	0x139
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x1644
	.uleb128 0x30
	.string	"x"
	.byte	0x1
	.value	0x12f
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2a
	.long	.LASF444
	.byte	0x1
	.value	0x130
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2c
	.long	.LASF0
	.byte	0x1
	.value	0x132
	.long	0x454
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2b
	.string	"fmt"
	.byte	0x1
	.value	0x133
	.long	0x25c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x134
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2b
	.string	"j"
	.byte	0x1
	.value	0x134
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x31
	.long	.LASF445
	.byte	0x1
	.value	0x14c
	.long	0x139
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x16ac
	.uleb128 0x30
	.string	"x"
	.byte	0x1
	.value	0x14d
	.long	0x10e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2a
	.long	.LASF446
	.byte	0x1
	.value	0x14e
	.long	0x1f8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2b
	.string	"v"
	.byte	0x1
	.value	0x150
	.long	0x11f9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.string	"p"
	.byte	0x1
	.value	0x151
	.long	0x144f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2c
	.long	.LASF447
	.byte	0x1
	.value	0x152
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x31
	.long	.LASF448
	.byte	0x1
	.value	0x167
	.long	0x139
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x16f8
	.uleb128 0x30
	.string	"x"
	.byte	0x1
	.value	0x168
	.long	0x10e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2a
	.long	.LASF446
	.byte	0x1
	.value	0x169
	.long	0x1f8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2b
	.string	"v"
	.byte	0x1
	.value	0x16b
	.long	0x11f9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x32
	.long	.LASF449
	.byte	0x1
	.value	0x17b
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x172a
	.uleb128 0x2d
	.long	.LASF450
	.long	0x172a
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.11048
	.byte	0
	.uleb128 0x11
	.long	0x1579
	.uleb128 0x2f
	.long	.LASF452
	.byte	0x1
	.value	0x191
	.long	0x139
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0x18b5
	.uleb128 0x30
	.string	"x"
	.byte	0x1
	.value	0x192
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x30
	.string	"y"
	.byte	0x1
	.value	0x192
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x2c
	.long	.LASF0
	.byte	0x1
	.value	0x194
	.long	0x454
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x2b
	.string	"fmt"
	.byte	0x1
	.value	0x195
	.long	0x25c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x196
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x2d
	.long	.LASF450
	.long	0x18c5
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.11089
	.uleb128 0x26
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.long	0x17d1
	.uleb128 0x2b
	.string	"e"
	.byte	0x1
	.value	0x19a
	.long	0x11f9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.uleb128 0x26
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.long	0x17f4
	.uleb128 0x2b
	.string	"e"
	.byte	0x1
	.value	0x1a2
	.long	0x11f9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x26
	.quad	.LBB11
	.quad	.LBE11-.LBB11
	.long	0x1844
	.uleb128 0x2b
	.string	"e"
	.byte	0x1
	.value	0x1b0
	.long	0x11f9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2b
	.string	"l"
	.byte	0x1
	.value	0x1b1
	.long	0x11e8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x25
	.quad	.LBB12
	.quad	.LBE12-.LBB12
	.uleb128 0x2b
	.string	"t"
	.byte	0x1
	.value	0x1b5
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x26
	.quad	.LBB13
	.quad	.LBE13-.LBB13
	.long	0x1894
	.uleb128 0x2b
	.string	"e"
	.byte	0x1
	.value	0x1c3
	.long	0x11f9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.string	"l"
	.byte	0x1
	.value	0x1c4
	.long	0x11e8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x25
	.quad	.LBB14
	.quad	.LBE14-.LBB14
	.uleb128 0x2b
	.string	"t"
	.byte	0x1
	.value	0x1c8
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x25
	.quad	.LBB15
	.quad	.LBE15-.LBB15
	.uleb128 0x2b
	.string	"j"
	.byte	0x1
	.value	0x1df
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	0x235
	.long	0x18c5
	.uleb128 0x10
	.long	0x140
	.byte	0x16
	.byte	0
	.uleb128 0x11
	.long	0x18b5
	.uleb128 0x31
	.long	.LASF453
	.byte	0x1
	.value	0x21c
	.long	0x2d
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0x191c
	.uleb128 0x2a
	.long	.LASF1
	.byte	0x1
	.value	0x21d
	.long	0x296
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x30
	.string	"x"
	.byte	0x1
	.value	0x21e
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2d
	.long	.LASF450
	.long	0x192c
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.11097
	.byte	0
	.uleb128 0xf
	.long	0x235
	.long	0x192c
	.uleb128 0x10
	.long	0x140
	.byte	0xd
	.byte	0
	.uleb128 0x11
	.long	0x191c
	.uleb128 0x31
	.long	.LASF454
	.byte	0x1
	.value	0x232
	.long	0x1f1
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0x1a9a
	.uleb128 0x30
	.string	"x"
	.byte	0x1
	.value	0x233
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2a
	.long	.LASF1
	.byte	0x1
	.value	0x234
	.long	0x296
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x2a
	.long	.LASF455
	.byte	0x1
	.value	0x235
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2b
	.string	"e"
	.byte	0x1
	.value	0x237
	.long	0x11f9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x238
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x2b
	.string	"j"
	.byte	0x1
	.value	0x238
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2c
	.long	.LASF0
	.byte	0x1
	.value	0x239
	.long	0x454
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2b
	.string	"fmt"
	.byte	0x1
	.value	0x23a
	.long	0x25c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2c
	.long	.LASF456
	.byte	0x1
	.value	0x23b
	.long	0x1f1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2d
	.long	.LASF450
	.long	0x1aaa
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.11147
	.uleb128 0x26
	.quad	.LBB16
	.quad	.LBE16-.LBB16
	.long	0x1a21
	.uleb128 0x2c
	.long	.LASF457
	.byte	0x1
	.value	0x25c
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2b
	.string	"elt"
	.byte	0x1
	.value	0x25d
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x26
	.quad	.LBB17
	.quad	.LBE17-.LBB17
	.long	0x1a55
	.uleb128 0x2b
	.string	"tem"
	.byte	0x1
	.value	0x291
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2c
	.long	.LASF458
	.byte	0x1
	.value	0x292
	.long	0x1f1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x26
	.quad	.LBB18
	.quad	.LBE18-.LBB18
	.long	0x1a7a
	.uleb128 0x2c
	.long	.LASF458
	.byte	0x1
	.value	0x29c
	.long	0x1f1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.byte	0
	.uleb128 0x25
	.quad	.LBB19
	.quad	.LBE19-.LBB19
	.uleb128 0x2b
	.string	"p"
	.byte	0x1
	.value	0x2a5
	.long	0x1aaf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	0x235
	.long	0x1aaa
	.uleb128 0x10
	.long	0x140
	.byte	0x8
	.byte	0
	.uleb128 0x11
	.long	0x1a9a
	.uleb128 0x3
	.byte	0x8
	.long	0x1ab5
	.uleb128 0x11
	.long	0x213
	.uleb128 0x31
	.long	.LASF459
	.byte	0x1
	.value	0x2ba
	.long	0x11f9
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0x1ba2
	.uleb128 0x2a
	.long	.LASF280
	.byte	0x1
	.value	0x2bb
	.long	0x1f1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2a
	.long	.LASF1
	.byte	0x1
	.value	0x2bc
	.long	0x296
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2b
	.string	"e"
	.byte	0x1
	.value	0x2be
	.long	0x11f9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2d
	.long	.LASF450
	.long	0x1bb2
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.11163
	.uleb128 0x25
	.quad	.LBB20
	.quad	.LBE20-.LBB20
	.uleb128 0x2b
	.string	"__h"
	.byte	0x1
	.value	0x2c3
	.long	0x1024
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x26
	.quad	.LBB21
	.quad	.LBE21-.LBB21
	.long	0x1b70
	.uleb128 0x2b
	.string	"__o"
	.byte	0x1
	.value	0x2c3
	.long	0x1024
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.long	.LASF430
	.byte	0x1
	.value	0x2c3
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.byte	0
	.uleb128 0x25
	.quad	.LBB22
	.quad	.LBE22-.LBB22
	.uleb128 0x2c
	.long	.LASF431
	.byte	0x1
	.value	0x2c3
	.long	0x1024
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2c
	.long	.LASF280
	.byte	0x1
	.value	0x2c3
	.long	0x1f8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	0x235
	.long	0x1bb2
	.uleb128 0x10
	.long	0x140
	.byte	0xe
	.byte	0
	.uleb128 0x11
	.long	0x1ba2
	.uleb128 0x32
	.long	.LASF460
	.byte	0x1
	.value	0x2d5
	.quad	.LFB18
	.quad	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0x1c0e
	.uleb128 0x2a
	.long	.LASF461
	.byte	0x1
	.value	0x2d6
	.long	0x11f9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2a
	.long	.LASF462
	.byte	0x1
	.value	0x2d6
	.long	0x11f9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x30
	.string	"x"
	.byte	0x1
	.value	0x2d7
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2b
	.string	"l"
	.byte	0x1
	.value	0x2d9
	.long	0x11e8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x31
	.long	.LASF463
	.byte	0x1
	.value	0x2eb
	.long	0x11f9
	.quad	.LFB19
	.quad	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0x1c99
	.uleb128 0x30
	.string	"x"
	.byte	0x1
	.value	0x2ec
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2a
	.long	.LASF455
	.byte	0x1
	.value	0x2ed
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x2c
	.long	.LASF1
	.byte	0x1
	.value	0x2ef
	.long	0x296
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2c
	.long	.LASF464
	.byte	0x1
	.value	0x2f0
	.long	0x10e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.long	.LASF465
	.byte	0x1
	.value	0x2f1
	.long	0x11f9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2c
	.long	.LASF462
	.byte	0x1
	.value	0x2f2
	.long	0x11f9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2b
	.string	"l"
	.byte	0x1
	.value	0x2f3
	.long	0xee2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x2f
	.long	.LASF466
	.byte	0x1
	.value	0x315
	.long	0x2d
	.quad	.LFB20
	.quad	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0x1da3
	.uleb128 0x30
	.string	"x"
	.byte	0x1
	.value	0x316
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2c
	.long	.LASF0
	.byte	0x1
	.value	0x318
	.long	0x454
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2b
	.string	"fmt"
	.byte	0x1
	.value	0x319
	.long	0x25c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.string	"e"
	.byte	0x1
	.value	0x31a
	.long	0x11f9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2b
	.string	"l"
	.byte	0x1
	.value	0x31b
	.long	0xee2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2c
	.long	.LASF467
	.byte	0x1
	.value	0x31c
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x31d
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2d
	.long	.LASF450
	.long	0x1da3
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.11198
	.uleb128 0x26
	.quad	.LBB23
	.quad	.LBE23-.LBB23
	.long	0x1d55
	.uleb128 0x2b
	.string	"t"
	.byte	0x1
	.value	0x348
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x25
	.quad	.LBB24
	.quad	.LBE24-.LBB24
	.uleb128 0x2b
	.string	"j"
	.byte	0x1
	.value	0x351
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2b
	.string	"k"
	.byte	0x1
	.value	0x351
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x25
	.quad	.LBB25
	.quad	.LBE25-.LBB25
	.uleb128 0x2b
	.string	"t"
	.byte	0x1
	.value	0x355
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.long	0x18b5
	.uleb128 0x2f
	.long	.LASF468
	.byte	0x1
	.value	0x36f
	.long	0x11f9
	.quad	.LFB21
	.quad	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.long	0x1e70
	.uleb128 0x30
	.string	"x"
	.byte	0x1
	.value	0x370
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2a
	.long	.LASF1
	.byte	0x1
	.value	0x371
	.long	0x296
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x2a
	.long	.LASF455
	.byte	0x1
	.value	0x372
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2c
	.long	.LASF464
	.byte	0x1
	.value	0x374
	.long	0x10e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.string	"e"
	.byte	0x1
	.value	0x375
	.long	0x11f9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2c
	.long	.LASF469
	.byte	0x1
	.value	0x376
	.long	0x1f1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x25
	.quad	.LBB26
	.quad	.LBE26-.LBB26
	.uleb128 0x2b
	.string	"l"
	.byte	0x1
	.value	0x380
	.long	0xee2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x381
	.long	0x1f1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x25
	.quad	.LBB27
	.quad	.LBE27-.LBB27
	.uleb128 0x2b
	.string	"n"
	.byte	0x1
	.value	0x38c
	.long	0x1f1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x32
	.long	.LASF470
	.byte	0x1
	.value	0x3be
	.quad	.LFB22
	.quad	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.long	0x1f5a
	.uleb128 0x2a
	.long	.LASF471
	.byte	0x1
	.value	0x3bf
	.long	0x1f1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x2a
	.long	.LASF1
	.byte	0x1
	.value	0x3c0
	.long	0x296
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2c
	.long	.LASF472
	.byte	0x1
	.value	0x3c2
	.long	0x1f1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x3c3
	.long	0x1f1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2d
	.long	.LASF450
	.long	0x1f6a
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.11244
	.uleb128 0x25
	.quad	.LBB28
	.quad	.LBE28-.LBB28
	.uleb128 0x2b
	.string	"l"
	.byte	0x1
	.value	0x3df
	.long	0x1412
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x25
	.quad	.LBB29
	.quad	.LBE29-.LBB29
	.uleb128 0x2b
	.string	"v"
	.byte	0x1
	.value	0x3e5
	.long	0x11f9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2b
	.string	"p"
	.byte	0x1
	.value	0x3e6
	.long	0x144f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2c
	.long	.LASF473
	.byte	0x1
	.value	0x3e7
	.long	0x1f1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x25
	.quad	.LBB30
	.quad	.LBE30-.LBB30
	.uleb128 0x2b
	.string	"x"
	.byte	0x1
	.value	0x3f9
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	0x235
	.long	0x1f6a
	.uleb128 0x10
	.long	0x140
	.byte	0x17
	.byte	0
	.uleb128 0x11
	.long	0x1f5a
	.uleb128 0x31
	.long	.LASF474
	.byte	0x1
	.value	0x40b
	.long	0x139
	.quad	.LFB23
	.quad	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.long	0x1fe8
	.uleb128 0x2a
	.long	.LASF475
	.byte	0x1
	.value	0x40c
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x30
	.string	"val"
	.byte	0x1
	.value	0x40d
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2c
	.long	.LASF0
	.byte	0x1
	.value	0x40f
	.long	0x454
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2b
	.string	"fmt"
	.byte	0x1
	.value	0x410
	.long	0x25c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x411
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2b
	.string	"j"
	.byte	0x1
	.value	0x411
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x31
	.long	.LASF476
	.byte	0x1
	.value	0x445
	.long	0x139
	.quad	.LFB24
	.quad	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.long	0x20a1
	.uleb128 0x2a
	.long	.LASF464
	.byte	0x1
	.value	0x446
	.long	0x10e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2a
	.long	.LASF446
	.byte	0x1
	.value	0x447
	.long	0x1f8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2b
	.string	"v"
	.byte	0x1
	.value	0x449
	.long	0x11f9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2c
	.long	.LASF477
	.byte	0x1
	.value	0x44a
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.string	"p"
	.byte	0x1
	.value	0x44b
	.long	0x144f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2c
	.long	.LASF447
	.byte	0x1
	.value	0x44c
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x25
	.quad	.LBB31
	.quad	.LBE31-.LBB31
	.uleb128 0x2b
	.string	"x"
	.byte	0x1
	.value	0x450
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2c
	.long	.LASF465
	.byte	0x1
	.value	0x451
	.long	0x11f9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2c
	.long	.LASF478
	.byte	0x1
	.value	0x452
	.long	0x1412
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.byte	0
	.uleb128 0x32
	.long	.LASF479
	.byte	0x1
	.value	0x47b
	.quad	.LFB25
	.quad	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.long	0x20cf
	.uleb128 0x2a
	.long	.LASF477
	.byte	0x1
	.value	0x47c
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x32
	.long	.LASF480
	.byte	0x1
	.value	0x486
	.quad	.LFB26
	.quad	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.long	0x211b
	.uleb128 0x2a
	.long	.LASF427
	.byte	0x1
	.value	0x487
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2a
	.long	.LASF481
	.byte	0x1
	.value	0x488
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2a
	.long	.LASF385
	.byte	0x1
	.value	0x489
	.long	0x1f8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x32
	.long	.LASF482
	.byte	0x1
	.value	0x4a1
	.quad	.LFB27
	.quad	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.long	0x2196
	.uleb128 0x2a
	.long	.LASF427
	.byte	0x1
	.value	0x4a2
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2a
	.long	.LASF428
	.byte	0x1
	.value	0x4a3
	.long	0x11f9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2a
	.long	.LASF429
	.byte	0x1
	.value	0x4a3
	.long	0x11f9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2c
	.long	.LASF483
	.byte	0x1
	.value	0x4a5
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x25
	.quad	.LBB32
	.quad	.LBE32-.LBB32
	.uleb128 0x2b
	.string	"n"
	.byte	0x1
	.value	0x4b1
	.long	0x1f1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.byte	0
	.uleb128 0x32
	.long	.LASF484
	.byte	0x1
	.value	0x4d3
	.quad	.LFB28
	.quad	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.long	0x22a1
	.uleb128 0x2a
	.long	.LASF485
	.byte	0x1
	.value	0x4d4
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -3480
	.uleb128 0x2c
	.long	.LASF486
	.byte	0x1
	.value	0x4d6
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -3464
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x4d7
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -3460
	.uleb128 0x2c
	.long	.LASF369
	.byte	0x1
	.value	0x4d8
	.long	0x22a1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -3408
	.uleb128 0x2c
	.long	.LASF487
	.byte	0x1
	.value	0x4d9
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -3456
	.uleb128 0x2c
	.long	.LASF488
	.byte	0x1
	.value	0x4da
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -3448
	.uleb128 0x26
	.quad	.LBB33
	.quad	.LBE33-.LBB33
	.long	0x2236
	.uleb128 0x2b
	.string	"x"
	.byte	0x1
	.value	0x4f0
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -3424
	.byte	0
	.uleb128 0x26
	.quad	.LBB34
	.quad	.LBE34-.LBB34
	.long	0x227e
	.uleb128 0x2c
	.long	.LASF427
	.byte	0x1
	.value	0x4ff
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -3440
	.uleb128 0x25
	.quad	.LBB35
	.quad	.LBE35-.LBB35
	.uleb128 0x2b
	.string	"src"
	.byte	0x1
	.value	0x509
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -3432
	.byte	0
	.byte	0
	.uleb128 0x25
	.quad	.LBB36
	.quad	.LBE36-.LBB36
	.uleb128 0x2c
	.long	.LASF427
	.byte	0x1
	.value	0x51c
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -3416
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	0x11ff
	.long	0x22b1
	.uleb128 0x10
	.long	0x140
	.byte	0x69
	.byte	0
	.uleb128 0x33
	.long	.LASF489
	.byte	0x1
	.value	0x525
	.quad	.LFB29
	.quad	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.long	0x22f9
	.uleb128 0x2a
	.long	.LASF485
	.byte	0x1
	.value	0x526
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x528
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2b
	.string	"x"
	.byte	0x1
	.value	0x529
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x33
	.long	.LASF490
	.byte	0x1
	.value	0x568
	.quad	.LFB30
	.quad	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.long	0x2327
	.uleb128 0x2c
	.long	.LASF491
	.byte	0x1
	.value	0x56a
	.long	0x1f1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x33
	.long	.LASF492
	.byte	0x1
	.value	0x578
	.quad	.LFB31
	.quad	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.long	0x23cb
	.uleb128 0x25
	.quad	.LBB37
	.quad	.LBE37-.LBB37
	.uleb128 0x2b
	.string	"__h"
	.byte	0x1
	.value	0x57e
	.long	0x1024
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x26
	.quad	.LBB38
	.quad	.LBE38-.LBB38
	.long	0x2399
	.uleb128 0x2b
	.string	"__o"
	.byte	0x1
	.value	0x57e
	.long	0x1024
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.long	.LASF430
	.byte	0x1
	.value	0x57e
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.uleb128 0x25
	.quad	.LBB39
	.quad	.LBE39-.LBB39
	.uleb128 0x2c
	.long	.LASF431
	.byte	0x1
	.value	0x57e
	.long	0x1024
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2c
	.long	.LASF280
	.byte	0x1
	.value	0x57e
	.long	0x1f8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x34
	.long	.LASF523
	.byte	0x1
	.value	0x58e
	.quad	.LFB32
	.quad	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x27
	.long	.LASF493
	.byte	0x1
	.byte	0x52
	.long	0x116e
	.uleb128 0x9
	.byte	0x3
	.quad	hash_table
	.uleb128 0x27
	.long	.LASF494
	.byte	0x1
	.byte	0x56
	.long	0x2d
	.uleb128 0x9
	.byte	0x3
	.quad	cselib_current_insn
	.uleb128 0x27
	.long	.LASF495
	.byte	0x1
	.byte	0x59
	.long	0x1f1
	.uleb128 0x9
	.byte	0x3
	.quad	next_unknown_value
	.uleb128 0x27
	.long	.LASF496
	.byte	0x1
	.byte	0x5c
	.long	0x1f1
	.uleb128 0x9
	.byte	0x3
	.quad	cselib_nregs
	.uleb128 0x27
	.long	.LASF497
	.byte	0x1
	.byte	0x60
	.long	0x139
	.uleb128 0x9
	.byte	0x3
	.quad	n_useless_values
	.uleb128 0x27
	.long	.LASF498
	.byte	0x1
	.byte	0x68
	.long	0xf61
	.uleb128 0x9
	.byte	0x3
	.quad	reg_values
	.uleb128 0x27
	.long	.LASF499
	.byte	0x1
	.byte	0x6d
	.long	0x1f1
	.uleb128 0x9
	.byte	0x3
	.quad	max_value_regs
	.uleb128 0x27
	.long	.LASF500
	.byte	0x1
	.byte	0x71
	.long	0xf61
	.uleb128 0x9
	.byte	0x3
	.quad	used_regs
	.uleb128 0x27
	.long	.LASF501
	.byte	0x1
	.byte	0x75
	.long	0x2d
	.uleb128 0x9
	.byte	0x3
	.quad	callmem
	.uleb128 0x27
	.long	.LASF502
	.byte	0x1
	.byte	0x78
	.long	0xf72
	.uleb128 0x9
	.byte	0x3
	.quad	cselib_obstack
	.uleb128 0x27
	.long	.LASF503
	.byte	0x1
	.byte	0x7b
	.long	0x22f
	.uleb128 0x9
	.byte	0x3
	.quad	cselib_startobj
	.uleb128 0x27
	.long	.LASF504
	.byte	0x1
	.byte	0x7e
	.long	0x11f9
	.uleb128 0x9
	.byte	0x3
	.quad	empty_vals
	.uleb128 0x27
	.long	.LASF505
	.byte	0x1
	.byte	0x7f
	.long	0xee2
	.uleb128 0x9
	.byte	0x3
	.quad	empty_elt_lists
	.uleb128 0x27
	.long	.LASF506
	.byte	0x1
	.byte	0x80
	.long	0x11e8
	.uleb128 0x9
	.byte	0x3
	.quad	empty_elt_loc_lists
	.uleb128 0x27
	.long	.LASF507
	.byte	0x1
	.byte	0x84
	.long	0x139
	.uleb128 0x9
	.byte	0x3
	.quad	values_became_useless
	.uleb128 0x35
	.long	.LASF508
	.byte	0x5
	.byte	0x62
	.long	0x139
	.uleb128 0xf
	.long	0x40b
	.long	0x253b
	.uleb128 0x10
	.long	0x140
	.byte	0x3a
	.byte	0
	.uleb128 0x35
	.long	.LASF116
	.byte	0x6
	.byte	0x34
	.long	0x2546
	.uleb128 0x11
	.long	0x252b
	.uleb128 0xf
	.long	0x213
	.long	0x255b
	.uleb128 0x10
	.long	0x140
	.byte	0x3a
	.byte	0
	.uleb128 0x35
	.long	.LASF509
	.byte	0x6
	.byte	0x50
	.long	0x2566
	.uleb128 0x11
	.long	0x254b
	.uleb128 0xf
	.long	0x213
	.long	0x257b
	.uleb128 0x10
	.long	0x140
	.byte	0x98
	.byte	0
	.uleb128 0x35
	.long	.LASF510
	.byte	0x2
	.byte	0x36
	.long	0x2586
	.uleb128 0x11
	.long	0x256b
	.uleb128 0xf
	.long	0x25c
	.long	0x259b
	.uleb128 0x10
	.long	0x140
	.byte	0x98
	.byte	0
	.uleb128 0x35
	.long	.LASF511
	.byte	0x2
	.byte	0x3c
	.long	0x25a6
	.uleb128 0x11
	.long	0x258b
	.uleb128 0xf
	.long	0x235
	.long	0x25bb
	.uleb128 0x10
	.long	0x140
	.byte	0x98
	.byte	0
	.uleb128 0x35
	.long	.LASF512
	.byte	0x2
	.byte	0x3f
	.long	0x25c6
	.uleb128 0x11
	.long	0x25ab
	.uleb128 0xf
	.long	0x2d
	.long	0x25db
	.uleb128 0x10
	.long	0x140
	.byte	0x80
	.byte	0
	.uleb128 0x36
	.long	.LASF513
	.byte	0x2
	.value	0x611
	.long	0x25cb
	.uleb128 0xf
	.long	0x2d
	.long	0x25f7
	.uleb128 0x10
	.long	0x140
	.byte	0xa
	.byte	0
	.uleb128 0x36
	.long	.LASF514
	.byte	0x2
	.value	0x652
	.long	0x25e7
	.uleb128 0x36
	.long	.LASF515
	.byte	0x2
	.value	0x6d2
	.long	0x139
	.uleb128 0x35
	.long	.LASF516
	.byte	0x9
	.byte	0x9d
	.long	0x261a
	.uleb128 0x3
	.byte	0x8
	.long	0x228
	.uleb128 0xf
	.long	0x235
	.long	0x2630
	.uleb128 0x10
	.long	0x140
	.byte	0x34
	.byte	0
	.uleb128 0x36
	.long	.LASF517
	.byte	0xc
	.value	0x196
	.long	0x2620
	.uleb128 0x35
	.long	.LASF518
	.byte	0xd
	.byte	0xfe
	.long	0x139
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
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
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
	.uleb128 0x5
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
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x17
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x4
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
	.uleb128 0xd
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x26
	.byte	0
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
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
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
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2e
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
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x36
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
.LASF302:
	.string	"REG_BR_PROB"
.LASF332:
	.string	"NOTE_INSN_EH_REGION_BEG"
.LASF272:
	.string	"rtstr"
.LASF319:
	.string	"NOTE_INSN_DELETED"
.LASF200:
	.string	"UMOD"
.LASF254:
	.string	"min_align"
.LASF423:
	.string	"val_rtx"
.LASF356:
	.string	"varray_data_tag"
.LASF24:
	.string	"AD_REGS"
.LASF500:
	.string	"used_regs"
.LASF241:
	.string	"CONSTANT_P_RTX"
.LASF271:
	.string	"rtuint"
.LASF475:
	.string	"mem_base"
.LASF275:
	.string	"rt_cselib"
.LASF144:
	.string	"DEFINE_PEEPHOLE2"
.LASF12:
	.string	"rtvec_def"
.LASF204:
	.string	"LSHIFTRT"
.LASF455:
	.string	"create"
.LASF138:
	.string	"MATCH_PAR_DUP"
.LASF521:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/403.gcc/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF517:
	.string	"call_used_regs"
.LASF199:
	.string	"UDIV"
.LASF10:
	.string	"rtvec"
.LASF481:
	.string	"ignore"
.LASF447:
	.string	"had_locs"
.LASF132:
	.string	"MATCH_OPERAND"
.LASF113:
	.string	"CCFPmode"
.LASF432:
	.string	"new_elt_list"
.LASF54:
	.string	"reg_class"
.LASF221:
	.string	"UNLE"
.LASF28:
	.string	"LEGACY_REGS"
.LASF259:
	.string	"max_after_base"
.LASF405:
	.string	"hashval_t"
.LASF222:
	.string	"UNLT"
.LASF501:
	.string	"callmem"
.LASF413:
	.string	"entries"
.LASF85:
	.string	"CTImode"
.LASF378:
	.string	"next"
.LASF518:
	.string	"flag_float_store"
.LASF399:
	.string	"maybe_empty_object"
.LASF480:
	.string	"cselib_invalidate_rtx"
.LASF456:
	.string	"hash"
.LASF457:
	.string	"units"
.LASF83:
	.string	"CSImode"
.LASF30:
	.string	"FP_TOP_REG"
.LASF243:
	.string	"VEC_MERGE"
.LASF358:
	.string	"uhint"
.LASF176:
	.string	"RETURN"
.LASF443:
	.string	"get_value_hash"
.LASF431:
	.string	"__o1"
.LASF359:
	.string	"generic"
.LASF14:
	.string	"elem"
.LASF119:
	.string	"MODE_FLOAT"
.LASF428:
	.string	"src_elt"
.LASF263:
	.string	"alias"
.LASF260:
	.string	"offset_unsigned"
.LASF89:
	.string	"V2SImode"
.LASF25:
	.string	"Q_REGS"
.LASF163:
	.string	"CODE_LABEL"
.LASF84:
	.string	"CDImode"
.LASF169:
	.string	"UNSPEC"
.LASF162:
	.string	"BARRIER"
.LASF325:
	.string	"NOTE_INSN_LOOP_VTOP"
.LASF165:
	.string	"COND_EXEC"
.LASF179:
	.string	"CONST_INT"
.LASF175:
	.string	"CALL"
.LASF445:
	.string	"discard_useless_locs"
.LASF91:
	.string	"V4QImode"
.LASF154:
	.string	"ATTR"
.LASF273:
	.string	"rttype"
.LASF511:
	.string	"rtx_format"
.LASF19:
	.string	"DREG"
.LASF37:
	.string	"FLOAT_SSE_REGS"
.LASF349:
	.string	"GR_VIRTUAL_STACK_ARGS"
.LASF454:
	.string	"hash_rtx"
.LASF90:
	.string	"V2DImode"
.LASF386:
	.string	"varray_type"
.LASF268:
	.string	"mem_attrs"
.LASF370:
	.string	"refs"
.LASF296:
	.string	"REG_UNUSED"
.LASF147:
	.string	"DEFINE_DELAY"
.LASF197:
	.string	"MINUS"
.LASF22:
	.string	"SIREG"
.LASF449:
	.string	"remove_useless_values"
.LASF364:
	.string	"sched_info_tag"
.LASF187:
	.string	"STRICT_LOW_PART"
.LASF430:
	.string	"__len"
.LASF129:
	.string	"INCLUDE"
.LASF345:
	.string	"GR_FRAME_POINTER"
.LASF371:
	.string	"freq"
.LASF225:
	.string	"ZERO_EXTEND"
.LASF228:
	.string	"FLOAT_TRUNCATE"
.LASF342:
	.string	"GR_PC"
.LASF472:
	.string	"endregno"
.LASF21:
	.string	"BREG"
.LASF100:
	.string	"V2SFmode"
.LASF379:
	.string	"varray_data"
.LASF229:
	.string	"FLOAT"
.LASF308:
	.string	"REG_EH_CONTEXT"
.LASF55:
	.string	"machine_mode"
.LASF389:
	.string	"chunk"
.LASF278:
	.string	"rtmem"
.LASF238:
	.string	"RANGE_REG"
.LASF276:
	.string	"rtbit"
.LASF3:
	.string	"call"
.LASF62:
	.string	"TImode"
.LASF214:
	.string	"PRE_MODIFY"
.LASF227:
	.string	"FLOAT_EXTEND"
.LASF368:
	.string	"last_note_uid"
.LASF6:
	.string	"in_struct"
.LASF483:
	.string	"dreg"
.LASF320:
	.string	"NOTE_INSN_BLOCK_BEG"
.LASF460:
	.string	"add_mem_for_addr"
.LASF60:
	.string	"SImode"
.LASF171:
	.string	"ADDR_VEC"
.LASF101:
	.string	"V2DFmode"
.LASF458:
	.string	"tem_hash"
.LASF253:
	.string	"LAST_AND_UNUSED_RTX_CODE"
.LASF267:
	.string	"align"
.LASF190:
	.string	"SYMBOL_REF"
.LASF318:
	.string	"NOTE_INSN_BIAS"
.LASF408:
	.string	"htab_del"
.LASF340:
	.string	"NOTE_INSN_MAX"
.LASF143:
	.string	"DEFINE_INSN_AND_SPLIT"
.LASF496:
	.string	"cselib_nregs"
.LASF195:
	.string	"COMPARE"
.LASF223:
	.string	"LTGT"
.LASF393:
	.string	"temp"
.LASF235:
	.string	"HIGH"
.LASF192:
	.string	"QUEUED"
.LASF26:
	.string	"NON_Q_REGS"
.LASF1:
	.string	"mode"
.LASF478:
	.string	"mem_chain"
.LASF61:
	.string	"DImode"
.LASF401:
	.string	"_obstack_chunk"
.LASF502:
	.string	"cselib_obstack"
.LASF354:
	.string	"const_equiv_data"
.LASF96:
	.string	"V8HImode"
.LASF446:
	.string	"info"
.LASF213:
	.string	"POST_INC"
.LASF74:
	.string	"TFmode"
.LASF47:
	.string	"unsigned char"
.LASF31:
	.string	"FP_SECOND_REG"
.LASF409:
	.string	"htab"
.LASF388:
	.string	"chunk_size"
.LASF414:
	.string	"n_elements"
.LASF375:
	.string	"basic_block"
.LASF57:
	.string	"BImode"
.LASF211:
	.string	"PRE_INC"
.LASF295:
	.string	"REG_NO_CONFLICT"
.LASF71:
	.string	"SFmode"
.LASF160:
	.string	"JUMP_INSN"
.LASF123:
	.string	"MODE_COMPLEX_FLOAT"
.LASF440:
	.string	"entry_and_rtx_equal_p"
.LASF277:
	.string	"rttree"
.LASF390:
	.string	"object_base"
.LASF317:
	.string	"insn_note"
.LASF336:
	.string	"NOTE_INSN_RANGE_END"
.LASF142:
	.string	"DEFINE_SPLIT"
.LASF181:
	.string	"CONST_VECTOR"
.LASF139:
	.string	"MATCH_INSN"
.LASF72:
	.string	"DFmode"
.LASF33:
	.string	"SSE_REGS"
.LASF45:
	.string	"size_t"
.LASF173:
	.string	"PREFETCH"
.LASF42:
	.string	"LIM_REG_CLASSES"
.LASF41:
	.string	"ALL_REGS"
.LASF66:
	.string	"PSImode"
.LASF463:
	.string	"cselib_lookup_mem"
.LASF237:
	.string	"RANGE_INFO"
.LASF419:
	.string	"htab_t"
.LASF355:
	.string	"rtunion_def"
.LASF153:
	.string	"DEFINE_ATTR"
.LASF155:
	.string	"SET_ATTR"
.LASF80:
	.string	"TCmode"
.LASF230:
	.string	"UNSIGNED_FLOAT"
.LASF307:
	.string	"REG_FRAME_RELATED_EXPR"
.LASF279:
	.string	"cselib_val_struct"
.LASF339:
	.string	"NOTE_INSN_EXPECTED_VALUE"
.LASF404:
	.string	"contents"
.LASF202:
	.string	"ROTATE"
.LASF226:
	.string	"TRUNCATE"
.LASF300:
	.string	"REG_DEP_ANTI"
.LASF77:
	.string	"SCmode"
.LASF510:
	.string	"rtx_length"
.LASF484:
	.string	"cselib_record_sets"
.LASF350:
	.string	"GR_VIRTUAL_STACK_DYNAMIC"
.LASF67:
	.string	"PDImode"
.LASF321:
	.string	"NOTE_INSN_BLOCK_END"
.LASF361:
	.string	"bitmap"
.LASF330:
	.string	"NOTE_INSN_DELETED_LABEL"
.LASF512:
	.string	"rtx_class"
.LASF130:
	.string	"EXPR_LIST"
.LASF157:
	.string	"EQ_ATTR"
.LASF459:
	.string	"new_cselib_val"
.LASF110:
	.string	"CCGOCmode"
.LASF188:
	.string	"CONCAT"
.LASF256:
	.string	"min_after_vec"
.LASF194:
	.string	"COND"
.LASF120:
	.string	"MODE_PARTIAL_INT"
.LASF15:
	.string	"tree"
.LASF479:
	.string	"cselib_invalidate_mem"
.LASF78:
	.string	"DCmode"
.LASF429:
	.string	"dest_addr_elt"
.LASF498:
	.string	"reg_values"
.LASF477:
	.string	"mem_rtx"
.LASF145:
	.string	"DEFINE_COMBINE"
.LASF519:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF203:
	.string	"ASHIFTRT"
.LASF426:
	.string	"cselib_val"
.LASF108:
	.string	"CCmode"
.LASF32:
	.string	"FLOAT_REGS"
.LASF436:
	.string	"unchain_one_value"
.LASF323:
	.string	"NOTE_INSN_LOOP_END"
.LASF106:
	.string	"V16SFmode"
.LASF337:
	.string	"NOTE_INSN_LIVE"
.LASF150:
	.string	"DEFINE_COND_EXEC"
.LASF465:
	.string	"addr"
.LASF146:
	.string	"DEFINE_EXPAND"
.LASF382:
	.string	"elements_used"
.LASF97:
	.string	"V8SImode"
.LASF159:
	.string	"INSN"
.LASF270:
	.string	"rtint"
.LASF452:
	.string	"rtx_equal_for_cselib_p"
.LASF461:
	.string	"addr_elt"
.LASF189:
	.string	"LABEL_REF"
.LASF299:
	.string	"REG_LABEL"
.LASF377:
	.string	"elt_list"
.LASF287:
	.string	"REG_DEAD"
.LASF327:
	.string	"NOTE_INSN_FUNCTION_END"
.LASF509:
	.string	"mode_size"
.LASF290:
	.string	"REG_EQUAL"
.LASF0:
	.string	"code"
.LASF109:
	.string	"CCGCmode"
.LASF506:
	.string	"empty_elt_loc_lists"
.LASF185:
	.string	"SCRATCH"
.LASF95:
	.string	"V8QImode"
.LASF98:
	.string	"V8DImode"
.LASF126:
	.string	"MAX_MODE_CLASS"
.LASF224:
	.string	"SIGN_EXTEND"
.LASF451:
	.string	"references_value_p"
.LASF280:
	.string	"value"
.LASF513:
	.string	"const_int_rtx"
.LASF246:
	.string	"VEC_DUPLICATE"
.LASF425:
	.string	"setting_insn"
.LASF264:
	.string	"expr"
.LASF437:
	.string	"clear_table"
.LASF333:
	.string	"NOTE_INSN_EH_REGION_END"
.LASF395:
	.string	"chunkfun"
.LASF104:
	.string	"V8SFmode"
.LASF485:
	.string	"insn"
.LASF23:
	.string	"DIREG"
.LASF298:
	.string	"REG_CC_USER"
.LASF464:
	.string	"slot"
.LASF168:
	.string	"ASM_OPERANDS"
.LASF514:
	.string	"global_rtl"
.LASF112:
	.string	"CCZmode"
.LASF324:
	.string	"NOTE_INSN_LOOP_CONT"
.LASF27:
	.string	"INDEX_REGS"
.LASF438:
	.string	"clear_all"
.LASF313:
	.string	"REG_NON_LOCAL_GOTO"
.LASF172:
	.string	"ADDR_DIFF_VEC"
.LASF234:
	.string	"ZERO_EXTRACT"
.LASF357:
	.string	"hint"
.LASF167:
	.string	"ASM_INPUT"
.LASF217:
	.string	"ORDERED"
.LASF105:
	.string	"V8DFmode"
.LASF411:
	.string	"eq_f"
.LASF482:
	.string	"cselib_record_set"
.LASF381:
	.string	"num_elements"
.LASF231:
	.string	"UNSIGNED_FIX"
.LASF444:
	.string	"only_useless"
.LASF29:
	.string	"GENERAL_REGS"
.LASF384:
	.string	"name"
.LASF131:
	.string	"INSN_LIST"
.LASF239:
	.string	"RANGE_VAR"
.LASF376:
	.string	"changes_mode"
.LASF118:
	.string	"MODE_INT"
.LASF383:
	.string	"element_size"
.LASF2:
	.string	"jump"
.LASF471:
	.string	"regno"
.LASF418:
	.string	"return_allocation_failure"
.LASF434:
	.string	"unchain_one_elt_list"
.LASF476:
	.string	"cselib_invalidate_mem_1"
.LASF240:
	.string	"RANGE_LIVE"
.LASF88:
	.string	"V2HImode"
.LASF9:
	.string	"frame_related"
.LASF363:
	.string	"const_equiv"
.LASF367:
	.string	"last_uid"
.LASF274:
	.string	"rt_addr_diff_vec_flags"
.LASF347:
	.string	"GR_ARG_POINTER"
.LASF16:
	.string	"sizetype"
.LASF36:
	.string	"FP_SECOND_SSE_REGS"
.LASF249:
	.string	"SS_MINUS"
.LASF499:
	.string	"max_value_regs"
.LASF503:
	.string	"cselib_startobj"
.LASF136:
	.string	"MATCH_PARALLEL"
.LASF93:
	.string	"V4SImode"
.LASF5:
	.string	"volatil"
.LASF289:
	.string	"REG_EQUIV"
.LASF48:
	.string	"short unsigned int"
.LASF49:
	.string	"signed char"
.LASF135:
	.string	"MATCH_OPERATOR"
.LASF380:
	.string	"varray_head_tag"
.LASF251:
	.string	"SS_TRUNCATE"
.LASF303:
	.string	"REG_EXEC_COUNT"
.LASF255:
	.string	"base_after_vec"
.LASF140:
	.string	"DEFINE_INSN"
.LASF94:
	.string	"V4DImode"
.LASF488:
	.string	"cond"
.LASF39:
	.string	"INT_SSE_REGS"
.LASF348:
	.string	"GR_VIRTUAL_INCOMING_ARGS"
.LASF301:
	.string	"REG_DEP_OUTPUT"
.LASF149:
	.string	"DEFINE_ASM_ATTRIBUTES"
.LASF250:
	.string	"US_MINUS"
.LASF35:
	.string	"FP_TOP_SSE_REGS"
.LASF233:
	.string	"SIGN_EXTRACT"
.LASF8:
	.string	"integrated"
.LASF373:
	.string	"live_length"
.LASF174:
	.string	"CLOBBER"
.LASF124:
	.string	"MODE_VECTOR_INT"
.LASF523:
	.string	"cselib_finish"
.LASF305:
	.string	"REG_SAVE_AREA"
.LASF242:
	.string	"CALL_PLACEHOLDER"
.LASF416:
	.string	"searches"
.LASF102:
	.string	"V4SFmode"
.LASF196:
	.string	"PLUS"
.LASF467:
	.string	"copy"
.LASF410:
	.string	"hash_f"
.LASF212:
	.string	"POST_DEC"
.LASF59:
	.string	"HImode"
.LASF285:
	.string	"rtunion"
.LASF326:
	.string	"NOTE_INSN_LOOP_END_TOP_COND"
.LASF122:
	.string	"MODE_COMPLEX_INT"
.LASF44:
	.string	"long int"
.LASF352:
	.string	"GR_VIRTUAL_CFA"
.LASF291:
	.string	"REG_WAS_0"
.LASF312:
	.string	"REG_NORETURN"
.LASF73:
	.string	"XFmode"
.LASF311:
	.string	"REG_MAYBE_DEAD"
.LASF402:
	.string	"limit"
.LASF103:
	.string	"V4DFmode"
.LASF516:
	.string	"reg_renumber"
.LASF4:
	.string	"unchanging"
.LASF417:
	.string	"collisions"
.LASF286:
	.string	"reg_note"
.LASF448:
	.string	"discard_useless_values"
.LASF473:
	.string	"this_last"
.LASF127:
	.string	"rtx_code"
.LASF20:
	.string	"CREG"
.LASF128:
	.string	"UNKNOWN"
.LASF170:
	.string	"UNSPEC_VOLATILE"
.LASF396:
	.string	"freefun"
.LASF329:
	.string	"NOTE_INSN_EPILOGUE_BEG"
.LASF46:
	.string	"long unsigned int"
.LASF11:
	.string	"rtx_def"
.LASF69:
	.string	"HFmode"
.LASF497:
	.string	"n_useless_values"
.LASF441:
	.string	"entry"
.LASF177:
	.string	"TRAP_IF"
.LASF415:
	.string	"n_deleted"
.LASF372:
	.string	"deaths"
.LASF309:
	.string	"REG_EH_REGION"
.LASF292:
	.string	"REG_RETVAL"
.LASF424:
	.string	"elt_loc_list"
.LASF81:
	.string	"CQImode"
.LASF490:
	.string	"cselib_update_varray_sizes"
.LASF51:
	.string	"char"
.LASF79:
	.string	"XCmode"
.LASF18:
	.string	"AREG"
.LASF520:
	.string	"cselib.c"
.LASF391:
	.string	"next_free"
.LASF422:
	.string	"INSERT"
.LASF205:
	.string	"ROTATERT"
.LASF505:
	.string	"empty_elt_lists"
.LASF453:
	.string	"wrap_constant"
.LASF191:
	.string	"ADDRESSOF"
.LASF314:
	.string	"REG_SETJMP"
.LASF87:
	.string	"V2QImode"
.LASF394:
	.string	"alignment_mask"
.LASF65:
	.string	"PHImode"
.LASF387:
	.string	"obstack"
.LASF365:
	.string	"reg_info_def"
.LASF86:
	.string	"COImode"
.LASF210:
	.string	"PRE_DEC"
.LASF328:
	.string	"NOTE_INSN_PROLOGUE_END"
.LASF435:
	.string	"unchain_one_elt_loc_list"
.LASF346:
	.string	"GR_HARD_FRAME_POINTER"
.LASF297:
	.string	"REG_CC_SETTER"
.LASF117:
	.string	"MODE_RANDOM"
.LASF248:
	.string	"US_PLUS"
.LASF107:
	.string	"BLKmode"
.LASF489:
	.string	"cselib_process_insn"
.LASF76:
	.string	"HCmode"
.LASF486:
	.string	"n_sets"
.LASF281:
	.string	"locs"
.LASF406:
	.string	"htab_hash"
.LASF182:
	.string	"CONST_STRING"
.LASF245:
	.string	"VEC_CONCAT"
.LASF266:
	.string	"size"
.LASF257:
	.string	"max_after_vec"
.LASF304:
	.string	"REG_NOALIAS"
.LASF158:
	.string	"ATTR_FLAG"
.LASF114:
	.string	"CCFPUmode"
.LASF288:
	.string	"REG_INC"
.LASF148:
	.string	"DEFINE_FUNCTION_UNIT"
.LASF152:
	.string	"ADDRESS"
.LASF400:
	.string	"alloc_failed"
.LASF470:
	.string	"cselib_invalidate_regno"
.LASF360:
	.string	"cptr"
.LASF283:
	.string	"bitmap_head_def"
.LASF374:
	.string	"calls_crossed"
.LASF252:
	.string	"US_TRUNCATE"
.LASF282:
	.string	"addr_list"
.LASF341:
	.string	"global_rtl_index"
.LASF491:
	.string	"nregs"
.LASF247:
	.string	"SS_PLUS"
.LASF209:
	.string	"UMAX"
.LASF34:
	.string	"MMX_REGS"
.LASF504:
	.string	"empty_vals"
.LASF261:
	.string	"scale"
.LASF58:
	.string	"QImode"
.LASF493:
	.string	"hash_table"
.LASF508:
	.string	"target_flags"
.LASF494:
	.string	"cselib_current_insn"
.LASF385:
	.string	"data"
.LASF344:
	.string	"GR_STACK_POINTER"
.LASF507:
	.string	"values_became_useless"
.LASF70:
	.string	"TQFmode"
.LASF258:
	.string	"min_after_base"
.LASF439:
	.string	"__obj"
.LASF362:
	.string	"sched"
.LASF392:
	.string	"chunk_limit"
.LASF420:
	.string	"insert_option"
.LASF17:
	.string	"NO_REGS"
.LASF421:
	.string	"NO_INSERT"
.LASF63:
	.string	"OImode"
.LASF310:
	.string	"REG_SAVE_NOTE"
.LASF492:
	.string	"cselib_init"
.LASF207:
	.string	"SMAX"
.LASF353:
	.string	"GR_MAX"
.LASF244:
	.string	"VEC_SELECT"
.LASF294:
	.string	"REG_NONNEG"
.LASF466:
	.string	"cselib_subst_to_values"
.LASF125:
	.string	"MODE_VECTOR_FLOAT"
.LASF215:
	.string	"POST_MODIFY"
.LASF469:
	.string	"hashval"
.LASF495:
	.string	"next_unknown_value"
.LASF306:
	.string	"REG_BR_PRED"
.LASF141:
	.string	"DEFINE_PEEPHOLE"
.LASF52:
	.string	"long long unsigned int"
.LASF335:
	.string	"NOTE_INSN_RANGE_BEG"
.LASF474:
	.string	"cselib_mem_conflict_p"
.LASF265:
	.string	"offset"
.LASF262:
	.string	"addr_diff_vec_flags"
.LASF137:
	.string	"MATCH_OP_DUP"
.LASF151:
	.string	"SEQUENCE"
.LASF398:
	.string	"use_extra_arg"
.LASF68:
	.string	"QFmode"
.LASF369:
	.string	"sets"
.LASF407:
	.string	"htab_eq"
.LASF178:
	.string	"RESX"
.LASF427:
	.string	"dest"
.LASF166:
	.string	"PARALLEL"
.LASF13:
	.string	"num_elem"
.LASF216:
	.string	"UNORDERED"
.LASF115:
	.string	"MAX_MACHINE_MODE"
.LASF40:
	.string	"FLOAT_INT_SSE_REGS"
.LASF133:
	.string	"MATCH_SCRATCH"
.LASF183:
	.string	"CONST"
.LASF232:
	.string	"SQRT"
.LASF343:
	.string	"GR_CC0"
.LASF116:
	.string	"mode_class"
.LASF433:
	.string	"new_elt_loc_list"
.LASF198:
	.string	"MULT"
.LASF121:
	.string	"MODE_CC"
.LASF64:
	.string	"PQImode"
.LASF161:
	.string	"CALL_INSN"
.LASF186:
	.string	"SUBREG"
.LASF99:
	.string	"V16QImode"
.LASF315:
	.string	"REG_ALWAYS_RETURN"
.LASF53:
	.string	"long long int"
.LASF293:
	.string	"REG_LIBCALL"
.LASF75:
	.string	"QCmode"
.LASF184:
	.string	"VALUE"
.LASF164:
	.string	"NOTE"
.LASF208:
	.string	"UMIN"
.LASF134:
	.string	"MATCH_DUP"
.LASF284:
	.string	"basic_block_def"
.LASF515:
	.string	"reload_completed"
.LASF412:
	.string	"del_f"
.LASF7:
	.string	"used"
.LASF487:
	.string	"body"
.LASF322:
	.string	"NOTE_INSN_LOOP_BEG"
.LASF82:
	.string	"CHImode"
.LASF338:
	.string	"NOTE_INSN_BASIC_BLOCK"
.LASF156:
	.string	"SET_ATTR_ALTERNATIVE"
.LASF38:
	.string	"FLOAT_INT_REGS"
.LASF180:
	.string	"CONST_DOUBLE"
.LASF366:
	.string	"first_uid"
.LASF111:
	.string	"CCNOmode"
.LASF92:
	.string	"V4HImode"
.LASF218:
	.string	"UNEQ"
.LASF201:
	.string	"ASHIFT"
.LASF206:
	.string	"SMIN"
.LASF450:
	.string	"__FUNCTION__"
.LASF193:
	.string	"IF_THEN_ELSE"
.LASF334:
	.string	"NOTE_INSN_REPEATED_LINE_NUMBER"
.LASF462:
	.string	"mem_elt"
.LASF397:
	.string	"extra_arg"
.LASF331:
	.string	"NOTE_INSN_FUNCTION_BEG"
.LASF43:
	.string	"unsigned int"
.LASF468:
	.string	"cselib_lookup"
.LASF522:
	.string	"tree_node"
.LASF219:
	.string	"UNGE"
.LASF442:
	.string	"x_arg"
.LASF50:
	.string	"short int"
.LASF220:
	.string	"UNGT"
.LASF403:
	.string	"prev"
.LASF56:
	.string	"VOIDmode"
.LASF316:
	.string	"REG_VTABLE_REF"
.LASF351:
	.string	"GR_VIRTUAL_OUTGOING_ARGS"
.LASF236:
	.string	"LO_SUM"
.LASF269:
	.string	"rtwint"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
