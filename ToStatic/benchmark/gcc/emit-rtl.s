	.file	"emit-rtl.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I . -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 emit-rtl.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.comm	byte_mode,4,4
	.comm	word_mode,4,4
	.comm	double_mode,4,4
	.comm	ptr_mode,4,4
	.data
	.align 4
	.type	label_num, @object
	.size	label_num, 4
label_num:
	.long	1
	.local	last_label_num
	.comm	last_label_num,4,4
	.local	base_label_num
	.comm	base_label_num,4,4
	.local	no_line_numbers
	.comm	no_line_numbers,4,4
	.comm	global_rtl,88,32
	.comm	const_tiny_rtx,1416,32
	.comm	const_true_rtx,8,8
	.comm	dconst0,24,16
	.comm	dconst1,24,16
	.comm	dconst2,24,16
	.comm	dconstm1,24,16
	.comm	struct_value_rtx,8,8
	.comm	struct_value_incoming_rtx,8,8
	.comm	static_chain_rtx,8,8
	.comm	static_chain_incoming_rtx,8,8
	.comm	pic_offset_table_rtx,8,8
	.comm	return_address_pointer_rtx,8,8
	.comm	const_int_rtx,1032,32
	.local	const_int_htab
	.comm	const_int_htab,8,8
	.local	mem_attrs_htab
	.comm	mem_attrs_htab,8,8
	.local	sequence_result
	.comm	sequence_result,40,32
	.local	free_insn
	.comm	free_insn,8,8
	.globl	split_branch_probability
	.align 4
	.type	split_branch_probability, @object
	.size	split_branch_probability, 4
split_branch_probability:
	.long	-1
	.text
	.type	const_int_htab_hash, @function
const_int_htab_hash:
.LFB2:
	.file 1 "emit-rtl.c"
	.loc 1 210 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# x, x
	.loc 1 211 0
	movq	-8(%rbp), %rax	# x, tmp62
	movq	8(%rax), %rax	# MEM[(const struct rtx_def *)x_1(D)].fld[0].rtwint, D.18676
	.loc 1 212 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	const_int_htab_hash, .-const_int_htab_hash
	.type	const_int_htab_eq, @function
const_int_htab_eq:
.LFB3:
	.loc 1 222 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# x, x
	movq	%rsi, -16(%rbp)	# y, y
	.loc 1 223 0
	movq	-8(%rbp), %rax	# x, tmp64
	movq	8(%rax), %rdx	# MEM[(const struct rtx_def *)x_1(D)].fld[0].rtwint, D.18678
	movq	-16(%rbp), %rax	# y, tmp65
	movq	(%rax), %rax	# MEM[(const long int *)y_3(D)], D.18678
	cmpq	%rax, %rdx	# D.18678, D.18678
	sete	%al	#, D.18679
	movzbl	%al, %eax	# D.18679, D.18680
	.loc 1 224 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	const_int_htab_eq, .-const_int_htab_eq
	.type	mem_attrs_htab_hash, @function
mem_attrs_htab_hash:
.LFB4:
	.loc 1 231 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# x, x
	.loc 1 232 0
	movq	-24(%rbp), %rax	# x, tmp85
	movq	%rax, -8(%rbp)	# tmp85, p
	.loc 1 234 0
	movq	-8(%rbp), %rax	# p, tmp86
	movq	(%rax), %rax	# p_4->alias, D.18681
	movl	%eax, %edx	# D.18681, D.18682
	movq	-8(%rbp), %rax	# p, tmp87
	movl	32(%rax), %eax	# p_4->align, D.18683
	imull	$1000, %eax, %eax	#, D.18683, D.18683
	xorl	%eax, %edx	# D.18682, D.18682
	.loc 1 235 0
	movq	-8(%rbp), %rax	# p, tmp88
	movq	16(%rax), %rax	# p_4->offset, D.18684
	.loc 1 234 0
	testq	%rax, %rax	# D.18684
	je	.L6	#,
	.loc 1 235 0
	movq	-8(%rbp), %rax	# p, tmp89
	movq	16(%rax), %rax	# p_4->offset, D.18684
	movq	8(%rax), %rax	# _12->fld[0].rtwint, D.18681
	.loc 1 234 0
	imull	$50000, %eax, %eax	#, D.18685, D.18685
	jmp	.L7	#
.L6:
	.loc 1 234 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, iftmp.0
.L7:
	.loc 1 234 0 discriminator 2
	xorl	%eax, %edx	# iftmp.0, D.18682
	.loc 1 236 0 is_stmt 1 discriminator 2
	movq	-8(%rbp), %rax	# p, tmp90
	movq	24(%rax), %rax	# p_4->size, D.18684
	.loc 1 234 0 discriminator 2
	testq	%rax, %rax	# D.18684
	je	.L8	#,
	.loc 1 236 0
	movq	-8(%rbp), %rax	# p, tmp91
	movq	24(%rax), %rax	# p_4->size, D.18684
	movq	8(%rax), %rax	# _20->fld[0].rtwint, D.18681
	.loc 1 234 0
	imull	$2500000, %eax, %eax	#, D.18685, D.18685
	jmp	.L9	#
.L8:
	.loc 1 234 0 is_stmt 0 discriminator 3
	movl	$0, %eax	#, iftmp.1
.L9:
	.loc 1 234 0 discriminator 4
	xorl	%edx, %eax	# D.18682, D.18682
	movl	%eax, %edx	# D.18682, D.18683
	.loc 1 237 0 is_stmt 1 discriminator 4
	movq	-8(%rbp), %rax	# p, tmp92
	movq	8(%rax), %rax	# p_4->expr, D.18686
	.loc 1 234 0 discriminator 4
	xorl	%edx, %eax	# D.18683, D.18687
	.loc 1 238 0 discriminator 4
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	mem_attrs_htab_hash, .-mem_attrs_htab_hash
	.type	mem_attrs_htab_eq, @function
mem_attrs_htab_eq:
.LFB5:
	.loc 1 248 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# x, x
	movq	%rsi, -32(%rbp)	# y, y
	.loc 1 249 0
	movq	-24(%rbp), %rax	# x, tmp72
	movq	%rax, -16(%rbp)	# tmp72, p
	.loc 1 250 0
	movq	-32(%rbp), %rax	# y, tmp73
	movq	%rax, -8(%rbp)	# tmp73, q
	.loc 1 252 0
	movq	-16(%rbp), %rax	# p, tmp74
	movq	(%rax), %rdx	# p_3->alias, D.18688
	movq	-8(%rbp), %rax	# q, tmp75
	movq	(%rax), %rax	# q_5->alias, D.18688
	.loc 1 253 0
	cmpq	%rax, %rdx	# D.18688, D.18688
	jne	.L12	#,
	.loc 1 252 0
	movq	-16(%rbp), %rax	# p, tmp76
	movq	8(%rax), %rdx	# p_3->expr, D.18689
	movq	-8(%rbp), %rax	# q, tmp77
	movq	8(%rax), %rax	# q_5->expr, D.18689
	cmpq	%rax, %rdx	# D.18689, D.18689
	jne	.L12	#,
	.loc 1 252 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# p, tmp78
	movq	16(%rax), %rdx	# p_3->offset, D.18690
	movq	-8(%rbp), %rax	# q, tmp79
	movq	16(%rax), %rax	# q_5->offset, D.18690
	cmpq	%rax, %rdx	# D.18690, D.18690
	jne	.L12	#,
	.loc 1 253 0 is_stmt 1
	movq	-16(%rbp), %rax	# p, tmp80
	movq	24(%rax), %rdx	# p_3->size, D.18690
	movq	-8(%rbp), %rax	# q, tmp81
	movq	24(%rax), %rax	# q_5->size, D.18690
	cmpq	%rax, %rdx	# D.18690, D.18690
	jne	.L12	#,
	.loc 1 253 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# p, tmp82
	movl	32(%rax), %edx	# p_3->align, D.18691
	movq	-8(%rbp), %rax	# q, tmp83
	movl	32(%rax), %eax	# q_5->align, D.18691
	cmpl	%eax, %edx	# D.18691, D.18691
	jne	.L12	#,
	.loc 1 253 0 discriminator 2
	movl	$1, %eax	#, iftmp.2
	jmp	.L13	#
.L12:
	.loc 1 253 0 discriminator 1
	movl	$0, %eax	#, iftmp.2
.L13:
	.loc 1 254 0 is_stmt 1
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	mem_attrs_htab_eq, .-mem_attrs_htab_eq
	.type	mem_attrs_mark, @function
mem_attrs_mark:
.LFB6:
	.loc 1 262 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# x, x
	.loc 1 263 0
	movq	-40(%rbp), %rax	# x, tmp78
	movq	%rax, -32(%rbp)	# tmp78, p
	.loc 1 265 0
	movq	-32(%rbp), %rax	# p, tmp79
	movq	8(%rax), %rax	# p_2->expr, D.18693
	testq	%rax, %rax	# D.18693
	je	.L16	#,
.LBB2:
	.loc 1 266 0
	movq	-32(%rbp), %rax	# p, tmp80
	movq	8(%rax), %rax	# p_2->expr, tmp81
	movq	%rax, -24(%rbp)	# tmp81, t__
	cmpq	$0, -24(%rbp)	#, t__
	je	.L16	#,
	.loc 1 266 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# t__, tmp82
	movq	%rax, %rdi	# tmp82,
	call	ggc_set_mark	#
	testl	%eax, %eax	# D.18694
	jne	.L16	#,
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.3
	movq	8(%rax), %rdx	# ggc_pending_trees.3_6->elements_used, D.18695
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.4
	movq	(%rax), %rax	# ggc_pending_trees.4_8->num_elements, D.18695
	cmpq	%rax, %rdx	# D.18695, D.18695
	jb	.L17	#,
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.5
	movq	(%rax), %rax	# ggc_pending_trees.5_10->num_elements, D.18695
	leaq	(%rax,%rax), %rdx	#, D.18695
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.6
	movq	%rdx, %rsi	# D.18695,
	movq	%rax, %rdi	# ggc_pending_trees.6,
	call	varray_grow	#
	movq	%rax, ggc_pending_trees(%rip)	# ggc_pending_trees.7, ggc_pending_trees
.L17:
	.loc 1 266 0 discriminator 2
	movq	ggc_pending_trees(%rip), %rcx	# ggc_pending_trees, ggc_pending_trees.8
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.9
	movq	8(%rax), %rdx	# ggc_pending_trees.9_16->elements_used, D.18695
	leaq	1(%rdx), %rsi	#, D.18695
	movq	%rsi, 8(%rax)	# D.18695, ggc_pending_trees.9_16->elements_used
	addq	$4, %rdx	#, tmp83
	movq	-24(%rbp), %rax	# t__, tmp84
	movq	%rax, (%rcx,%rdx,8)	# tmp84, ggc_pending_trees.8_15->data.tree
.L16:
.LBE2:
	.loc 1 268 0 is_stmt 1
	movq	-32(%rbp), %rax	# p, tmp85
	movq	16(%rax), %rax	# p_2->offset, D.18696
	testq	%rax, %rax	# D.18696
	je	.L18	#,
.LBB3:
	.loc 1 269 0
	movq	-32(%rbp), %rax	# p, tmp86
	movq	16(%rax), %rax	# p_2->offset, tmp87
	movq	%rax, -16(%rbp)	# tmp87, r__
	cmpq	$0, -16(%rbp)	#, r__
	je	.L18	#,
	.loc 1 269 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# r__, tmp88
	movq	%rax, %rdi	# tmp88,
	call	ggc_set_mark	#
	testl	%eax, %eax	# D.18694
	jne	.L18	#,
	movq	-16(%rbp), %rax	# r__, tmp89
	movq	%rax, %rdi	# tmp89,
	call	ggc_mark_rtx_children	#
.L18:
.LBE3:
	.loc 1 271 0 is_stmt 1
	movq	-32(%rbp), %rax	# p, tmp90
	movq	24(%rax), %rax	# p_2->size, D.18696
	testq	%rax, %rax	# D.18696
	je	.L15	#,
.LBB4:
	.loc 1 272 0
	movq	-32(%rbp), %rax	# p, tmp91
	movq	24(%rax), %rax	# p_2->size, tmp92
	movq	%rax, -8(%rbp)	# tmp92, r__
	cmpq	$0, -8(%rbp)	#, r__
	je	.L15	#,
	.loc 1 272 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# r__, tmp93
	movq	%rax, %rdi	# tmp93,
	call	ggc_set_mark	#
	testl	%eax, %eax	# D.18694
	jne	.L15	#,
	movq	-8(%rbp), %rax	# r__, tmp94
	movq	%rax, %rdi	# tmp94,
	call	ggc_mark_rtx_children	#
.L15:
.LBE4:
	.loc 1 273 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	mem_attrs_mark, .-mem_attrs_mark
	.type	get_mem_attrs, @function
get_mem_attrs:
.LFB7:
	.loc 1 287 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$112, %rsp	#,
	movq	%rdi, -72(%rbp)	# alias, alias
	movq	%rsi, -80(%rbp)	# expr, expr
	movq	%rdx, -88(%rbp)	# offset, offset
	movq	%rcx, -96(%rbp)	# size, size
	movl	%r8d, -100(%rbp)	# align, align
	movl	%r9d, -104(%rbp)	# mode, mode
	.loc 1 292 0
	cmpq	$0, -72(%rbp)	#, alias
	jne	.L21	#,
	.loc 1 292 0 is_stmt 0 discriminator 1
	cmpq	$0, -80(%rbp)	#, expr
	jne	.L21	#,
	cmpq	$0, -88(%rbp)	#, offset
	jne	.L21	#,
	.loc 1 293 0 is_stmt 1
	cmpq	$0, -96(%rbp)	#, size
	je	.L22	#,
	.loc 1 294 0
	cmpl	$51, -104(%rbp)	#, mode
	je	.L21	#,
	.loc 1 294 0 is_stmt 0 discriminator 1
	movl	-104(%rbp), %eax	# mode, mode.10
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.18698
	movzbl	%al, %edx	# D.18698, D.18699
	movq	-96(%rbp), %rax	# size, tmp70
	movq	8(%rax), %rax	# size_5(D)->fld[0].rtwint, D.18699
	cmpq	%rax, %rdx	# D.18699, D.18699
	jne	.L21	#,
.L22:
	.loc 1 295 0 is_stmt 1
	cmpl	$8, -100(%rbp)	#, align
	jne	.L21	#,
	.loc 1 298 0
	movl	$0, %eax	#, D.18697
	jmp	.L25	#
.L21:
	.loc 1 300 0
	movq	-72(%rbp), %rax	# alias, tmp71
	movq	%rax, -48(%rbp)	# tmp71, attrs.alias
	.loc 1 301 0
	movq	-80(%rbp), %rax	# expr, tmp72
	movq	%rax, -40(%rbp)	# tmp72, attrs.expr
	.loc 1 302 0
	movq	-88(%rbp), %rax	# offset, tmp73
	movq	%rax, -32(%rbp)	# tmp73, attrs.offset
	.loc 1 303 0
	movq	-96(%rbp), %rax	# size, tmp74
	movq	%rax, -24(%rbp)	# tmp74, attrs.size
	.loc 1 304 0
	movl	-100(%rbp), %eax	# align, tmp75
	movl	%eax, -16(%rbp)	# tmp75, attrs.align
	.loc 1 306 0
	movq	mem_attrs_htab(%rip), %rax	# mem_attrs_htab, mem_attrs_htab.11
	leaq	-48(%rbp), %rcx	#, tmp76
	movl	$1, %edx	#,
	movq	%rcx, %rsi	# tmp76,
	movq	%rax, %rdi	# mem_attrs_htab.11,
	call	htab_find_slot	#
	movq	%rax, -56(%rbp)	# tmp77, slot
	.loc 1 307 0
	movq	-56(%rbp), %rax	# slot, tmp78
	movq	(%rax), %rax	# *slot_14, D.18700
	testq	%rax, %rax	# D.18700
	jne	.L24	#,
	.loc 1 309 0
	movl	$40, %edi	#,
	call	ggc_alloc	#
	movq	-56(%rbp), %rdx	# slot, tmp79
	movq	%rax, (%rdx)	# D.18700, *slot_14
	.loc 1 310 0
	movq	-56(%rbp), %rax	# slot, tmp80
	movq	(%rax), %rax	# *slot_14, D.18700
	movq	-48(%rbp), %rdx	# MEM[(char * {ref-all})&attrs], tmp81
	movq	%rdx, (%rax)	# tmp81, MEM[(char * {ref-all})_17]
	movq	-40(%rbp), %rdx	# MEM[(char * {ref-all})&attrs], tmp82
	movq	%rdx, 8(%rax)	# tmp82, MEM[(char * {ref-all})_17]
	movq	-32(%rbp), %rdx	# MEM[(char * {ref-all})&attrs], tmp83
	movq	%rdx, 16(%rax)	# tmp83, MEM[(char * {ref-all})_17]
	movq	-24(%rbp), %rdx	# MEM[(char * {ref-all})&attrs], tmp84
	movq	%rdx, 24(%rax)	# tmp84, MEM[(char * {ref-all})_17]
	movq	-16(%rbp), %rdx	# MEM[(char * {ref-all})&attrs], tmp85
	movq	%rdx, 32(%rax)	# tmp85, MEM[(char * {ref-all})_17]
.L24:
	.loc 1 313 0
	movq	-56(%rbp), %rax	# slot, tmp86
	movq	(%rax), %rax	# *slot_14, D.18697
.L25:
	.loc 1 314 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	get_mem_attrs, .-get_mem_attrs
	.globl	gen_raw_REG
	.type	gen_raw_REG, @function
gen_raw_REG:
.LFB8:
	.loc 1 324 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	%edi, -20(%rbp)	# mode, mode
	movl	%esi, -24(%rbp)	# regno, regno
	.loc 1 325 0
	movl	-24(%rbp), %edx	# regno, tmp62
	movl	-20(%rbp), %eax	# mode, tmp63
	movl	%eax, %esi	# tmp63,
	movl	$61, %edi	#,
	call	gen_rtx_fmt_i0	#
	movq	%rax, -8(%rbp)	# tmp64, x
	.loc 1 326 0
	movl	-24(%rbp), %edx	# regno, regno.12
	movq	-8(%rbp), %rax	# x, tmp65
	movl	%edx, 16(%rax)	# regno.12, x_3->fld[1].rtuint
	.loc 1 327 0
	movq	-8(%rbp), %rax	# x, D.18701
	.loc 1 328 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	gen_raw_REG, .-gen_raw_REG
	.globl	gen_rtx_CONST_INT
	.type	gen_rtx_CONST_INT, @function
gen_rtx_CONST_INT:
.LFB9:
	.loc 1 338 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	%edi, -20(%rbp)	# mode, mode
	movq	%rsi, -32(%rbp)	# arg, arg
	.loc 1 341 0
	movq	-32(%rbp), %rax	# arg, arg.13
	cmpq	$-64, %rax	#, arg.13
	jl	.L29	#,
	.loc 1 341 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# arg, arg.14
	cmpq	$64, %rax	#, arg.14
	jg	.L29	#,
	.loc 1 342 0 is_stmt 1
	movq	-32(%rbp), %rax	# arg, arg.15
	addq	$64, %rax	#, D.18703
	movq	const_int_rtx(,%rax,8), %rax	# const_int_rtx, D.18702
	jmp	.L30	#
.L29:
	.loc 1 350 0
	movq	-32(%rbp), %rax	# arg, arg.16
	movl	%eax, %edx	# arg.16, D.18704
	movq	const_int_htab(%rip), %rax	# const_int_htab, const_int_htab.17
	leaq	-32(%rbp), %rsi	#, tmp71
	movl	$1, %ecx	#,
	movq	%rax, %rdi	# const_int_htab.17,
	call	htab_find_slot_with_hash	#
	movq	%rax, -8(%rbp)	# tmp72, slot
	.loc 1 352 0
	movq	-8(%rbp), %rax	# slot, tmp73
	movq	(%rax), %rax	# *slot_10, D.18705
	testq	%rax, %rax	# D.18705
	jne	.L31	#,
	.loc 1 353 0
	movq	-32(%rbp), %rax	# arg, arg.18
	movq	%rax, %rdx	# arg.18,
	movl	$0, %esi	#,
	movl	$54, %edi	#,
	call	gen_rtx_fmt_w	#
	movq	-8(%rbp), %rdx	# slot, tmp74
	movq	%rax, (%rdx)	# D.18706, *slot_10
.L31:
	.loc 1 355 0
	movq	-8(%rbp), %rax	# slot, tmp75
	movq	(%rax), %rax	# *slot_10, D.18702
.L30:
	.loc 1 356 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	gen_rtx_CONST_INT, .-gen_rtx_CONST_INT
	.globl	gen_int_mode
	.type	gen_int_mode, @function
gen_int_mode:
.LFB10:
	.loc 1 362 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# c, c
	movl	%esi, -12(%rbp)	# mode, mode
	.loc 1 363 0
	movl	-12(%rbp), %edx	# mode, tmp62
	movq	-8(%rbp), %rax	# c, tmp63
	movl	%edx, %esi	# tmp62,
	movq	%rax, %rdi	# tmp63,
	call	trunc_int_for_mode	#
	movq	%rax, %rsi	# D.18707,
	movl	$0, %edi	#,
	call	gen_rtx_CONST_INT	#
	.loc 1 364 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	gen_int_mode, .-gen_int_mode
	.globl	gen_rtx_CONST_DOUBLE
	.type	gen_rtx_CONST_DOUBLE, @function
gen_rtx_CONST_DOUBLE:
.LFB11:
	.loc 1 373 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movl	%edi, -20(%rbp)	# mode, mode
	movq	%rsi, -32(%rbp)	# arg0, arg0
	movq	%rdx, -40(%rbp)	# arg1, arg1
	.loc 1 374 0
	movl	$55, %edi	#,
	call	rtx_alloc	#
	movq	%rax, -8(%rbp)	# tmp64, r
	.loc 1 377 0
	movl	-20(%rbp), %eax	# mode, tmp65
	movl	%eax, %edx	# tmp65, D.18709
	movq	-8(%rbp), %rax	# r, tmp66
	movb	%dl, 2(%rax)	# D.18709, r_2->mode
	.loc 1 378 0
	movq	-8(%rbp), %rax	# r, tmp67
	movq	$0, 8(%rax)	#, r_2->fld[0].rtx
	.loc 1 379 0
	movq	-8(%rbp), %rax	# r, tmp68
	movq	-32(%rbp), %rdx	# arg0, tmp69
	movq	%rdx, 16(%rax)	# tmp69, r_2->fld[1].rtwint
	.loc 1 380 0
	movq	-8(%rbp), %rax	# r, tmp70
	movq	-40(%rbp), %rdx	# arg1, tmp71
	movq	%rdx, 24(%rax)	# tmp71, r_2->fld[2].rtwint
	.loc 1 382 0
	movzbl	rtx_length+55(%rip), %eax	# rtx_length, D.18709
	movzbl	%al, %eax	# D.18709, D.18710
	subl	$1, %eax	#, tmp72
	movl	%eax, -12(%rbp)	# tmp72, i
	jmp	.L35	#
.L36:
	.loc 1 383 0 discriminator 2
	movq	-8(%rbp), %rax	# r, tmp73
	movl	-12(%rbp), %edx	# i, tmp75
	movslq	%edx, %rdx	# tmp75, tmp74
	movq	$0, 8(%rax,%rdx,8)	#, r_2->fld[i_1].rtwint
	.loc 1 382 0 discriminator 2
	subl	$1, -12(%rbp)	#, i
.L35:
	.loc 1 382 0 is_stmt 0 discriminator 1
	cmpl	$2, -12(%rbp)	#, i
	jg	.L36	#,
	.loc 1 385 0 is_stmt 1
	movq	-8(%rbp), %rax	# r, D.18711
	.loc 1 386 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	gen_rtx_CONST_DOUBLE, .-gen_rtx_CONST_DOUBLE
	.globl	gen_rtx_REG
	.type	gen_rtx_REG, @function
gen_rtx_REG:
.LFB12:
	.loc 1 392 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movl	%edi, -4(%rbp)	# mode, mode
	movl	%esi, -8(%rbp)	# regno, regno
	.loc 1 407 0
	movl	target_flags(%rip), %eax	# target_flags, target_flags.20
	andl	$33554432, %eax	#, D.18713
	testl	%eax, %eax	# D.18713
	je	.L39	#,
	.loc 1 407 0 is_stmt 0 discriminator 1
	movl	$5, %eax	#, iftmp.19
	jmp	.L40	#
.L39:
	.loc 1 407 0 discriminator 2
	movl	$4, %eax	#, iftmp.19
.L40:
	.loc 1 407 0 discriminator 3
	cmpl	-4(%rbp), %eax	# mode, iftmp.19
	jne	.L41	#,
	.loc 1 407 0 discriminator 1
	movl	reload_in_progress(%rip), %eax	# reload_in_progress, reload_in_progress.21
	testl	%eax, %eax	# reload_in_progress.21
	jne	.L41	#,
	.loc 1 409 0 is_stmt 1
	cmpl	$20, -8(%rbp)	#, regno
	jne	.L42	#,
	.loc 1 410 0
	movq	global_rtl+24(%rip), %rax	# global_rtl, D.18712
	jmp	.L43	#
.L42:
	.loc 1 412 0
	cmpl	$6, -8(%rbp)	#, regno
	jne	.L44	#,
	.loc 1 413 0
	movq	global_rtl+32(%rip), %rax	# global_rtl, D.18712
	jmp	.L43	#
.L44:
	.loc 1 416 0
	cmpl	$16, -8(%rbp)	#, regno
	jne	.L45	#,
	.loc 1 417 0
	movq	global_rtl+40(%rip), %rax	# global_rtl, D.18712
	jmp	.L43	#
.L45:
	.loc 1 423 0
	movl	-8(%rbp), %edx	# regno, regno.22
	movl	target_flags(%rip), %eax	# target_flags, target_flags.24
	andl	$33554432, %eax	#, D.18713
	testl	%eax, %eax	# D.18713
	jne	.L46	#,
	.loc 1 423 0 is_stmt 0 discriminator 2
	movl	flag_pic(%rip), %eax	# flag_pic, flag_pic.25
	testl	%eax, %eax	# flag_pic.25
	jne	.L47	#,
.L46:
	.loc 1 423 0 discriminator 1
	movl	$-1, %eax	#, iftmp.23
	jmp	.L48	#
.L47:
	movl	$3, %eax	#, iftmp.23
.L48:
	.loc 1 423 0 discriminator 3
	cmpl	%eax, %edx	# iftmp.23, regno.22
	jne	.L49	#,
	.loc 1 424 0 is_stmt 1
	movl	target_flags(%rip), %eax	# target_flags, target_flags.27
	andl	$33554432, %eax	#, D.18713
	testl	%eax, %eax	# D.18713
	jne	.L50	#,
	.loc 1 424 0 is_stmt 0 discriminator 2
	movl	flag_pic(%rip), %eax	# flag_pic, flag_pic.28
	testl	%eax, %eax	# flag_pic.28
	jne	.L51	#,
.L50:
	.loc 1 424 0 discriminator 1
	movl	$-1, %eax	#, iftmp.26
	jmp	.L52	#
.L51:
	movl	$3, %eax	#, iftmp.26
.L52:
	.loc 1 424 0 discriminator 3
	movl	%eax, %eax	# iftmp.26, tmp75
	movzbl	fixed_regs(%rax), %eax	# fixed_regs, D.18714
	testb	%al, %al	# D.18714
	je	.L49	#,
	.loc 1 425 0 is_stmt 1
	movq	pic_offset_table_rtx(%rip), %rax	# pic_offset_table_rtx, D.18712
	jmp	.L43	#
.L49:
	.loc 1 426 0
	cmpl	$7, -8(%rbp)	#, regno
	jne	.L41	#,
	.loc 1 427 0
	movq	global_rtl+16(%rip), %rax	# global_rtl, D.18712
	jmp	.L43	#
.L41:
	.loc 1 430 0
	movl	-8(%rbp), %edx	# regno, tmp76
	movl	-4(%rbp), %eax	# mode, tmp77
	movl	%edx, %esi	# tmp76,
	movl	%eax, %edi	# tmp77,
	call	gen_raw_REG	#
.L43:
	.loc 1 431 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	gen_rtx_REG, .-gen_rtx_REG
	.globl	gen_rtx_MEM
	.type	gen_rtx_MEM, @function
gen_rtx_MEM:
.LFB13:
	.loc 1 437 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	%edi, -20(%rbp)	# mode, mode
	movq	%rsi, -32(%rbp)	# addr, addr
	.loc 1 438 0
	movq	-32(%rbp), %rdx	# addr, tmp61
	movl	-20(%rbp), %eax	# mode, tmp62
	movl	%eax, %esi	# tmp62,
	movl	$66, %edi	#,
	call	gen_rtx_fmt_e0	#
	movq	%rax, -8(%rbp)	# tmp63, rt
	.loc 1 442 0
	movq	-8(%rbp), %rax	# rt, tmp64
	movq	$0, 16(%rax)	#, rt_3->fld[1].rtmem
	.loc 1 444 0
	movq	-8(%rbp), %rax	# rt, D.18715
	.loc 1 445 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	gen_rtx_MEM, .-gen_rtx_MEM
	.section	.rodata
.LC0:
	.string	"emit-rtl.c"
	.text
	.globl	gen_rtx_SUBREG
	.type	gen_rtx_SUBREG, @function
gen_rtx_SUBREG:
.LFB14:
	.loc 1 452 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movl	%edi, -4(%rbp)	# mode, mode
	movq	%rsi, -16(%rbp)	# reg, reg
	movl	%edx, -8(%rbp)	# offset, offset
	.loc 1 455 0
	movl	-4(%rbp), %eax	# mode, mode.29
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.18716
	movzbl	%al, %ecx	# D.18716, D.18717
	movl	-8(%rbp), %eax	# offset, tmp66
	cltd
	idivl	%ecx	# D.18717
	movl	%edx, %eax	# tmp67, D.18717
	testl	%eax, %eax	# D.18717
	je	.L56	#,
	.loc 1 456 0
	movl	$__FUNCTION__.13357, %edx	#,
	movl	$456, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L56:
	.loc 1 466 0
	movl	-8(%rbp), %ecx	# offset, tmp69
	movq	-16(%rbp), %rdx	# reg, tmp70
	movl	-4(%rbp), %eax	# mode, tmp71
	movl	%eax, %esi	# tmp71,
	movl	$63, %edi	#,
	call	gen_rtx_fmt_ei	#
	.loc 1 467 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	gen_rtx_SUBREG, .-gen_rtx_SUBREG
	.globl	gen_lowpart_SUBREG
	.type	gen_lowpart_SUBREG, @function
gen_lowpart_SUBREG:
.LFB15:
	.loc 1 476 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	%edi, -20(%rbp)	# mode, mode
	movq	%rsi, -32(%rbp)	# reg, reg
	.loc 1 479 0
	movq	-32(%rbp), %rax	# reg, tmp64
	movzbl	2(%rax), %eax	# reg_2(D)->mode, D.18720
	movzbl	%al, %eax	# D.18720, tmp65
	movl	%eax, -4(%rbp)	# tmp65, inmode
	.loc 1 480 0
	cmpl	$0, -4(%rbp)	#, inmode
	jne	.L59	#,
	.loc 1 481 0
	movl	-20(%rbp), %eax	# mode, tmp66
	movl	%eax, -4(%rbp)	# tmp66, inmode
.L59:
	.loc 1 483 0
	movl	-4(%rbp), %edx	# inmode, tmp67
	movl	-20(%rbp), %eax	# mode, tmp68
	movl	%edx, %esi	# tmp67,
	movl	%eax, %edi	# tmp68,
	call	subreg_lowpart_offset	#
	.loc 1 482 0
	movl	%eax, %edx	# D.18721, D.18722
	movq	-32(%rbp), %rcx	# reg, tmp69
	movl	-20(%rbp), %eax	# mode, tmp70
	movq	%rcx, %rsi	# tmp69,
	movl	%eax, %edi	# tmp70,
	call	gen_rtx_SUBREG	#
	.loc 1 484 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	gen_lowpart_SUBREG, .-gen_lowpart_SUBREG
	.globl	gen_rtx
	.type	gen_rtx, @function
gen_rtx:
.LFB16:
	.loc 1 515 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$256, %rsp	#,
	movl	%edi, -244(%rbp)	# code, code
	movq	%rdx, -160(%rbp)	#,
	movq	%rcx, -152(%rbp)	#,
	movq	%r8, -144(%rbp)	#,
	movq	%r9, -136(%rbp)	#,
	testb	%al, %al	#
	je	.L62	#,
	.loc 1 515 0
	movaps	%xmm0, -128(%rbp)	#,
	movaps	%xmm1, -112(%rbp)	#,
	movaps	%xmm2, -96(%rbp)	#,
	movaps	%xmm3, -80(%rbp)	#,
	movaps	%xmm4, -64(%rbp)	#,
	movaps	%xmm5, -48(%rbp)	#,
	movaps	%xmm6, -32(%rbp)	#,
	movaps	%xmm7, -16(%rbp)	#,
.L62:
	movl	%esi, -248(%rbp)	# mode, mode
.LBB5:
	.loc 1 520 0
	movl	$16, -200(%rbp)	#, MEM[(struct [1] *)&p].gp_offset
	movl	$48, -196(%rbp)	#, MEM[(struct [1] *)&p].fp_offset
	leaq	16(%rbp), %rax	#, tmp234
	movq	%rax, -192(%rbp)	# tmp234, MEM[(struct [1] *)&p].overflow_arg_area
	leaq	-176(%rbp), %rax	#, tmp235
	movq	%rax, -184(%rbp)	# tmp235, MEM[(struct [1] *)&p].reg_save_area
.LBB6:
	.loc 1 524 0
	movl	-244(%rbp), %eax	# code, code
	cmpl	$55, %eax	#, code
	je	.L64	#,
	cmpl	$55, %eax	#, code
	ja	.L65	#,
	cmpl	$54, %eax	#, code
	je	.L66	#,
	jmp	.L63	#
.L65:
	cmpl	$61, %eax	#, code
	je	.L67	#,
	cmpl	$66, %eax	#, code
	je	.L68	#,
	jmp	.L63	#
.L66:
	.loc 1 527 0
	movl	-200(%rbp), %eax	# p.gp_offset, D.18724
	cmpl	$48, %eax	#, D.18724
	jae	.L69	#,
	.loc 1 527 0 is_stmt 0 discriminator 2
	movq	-184(%rbp), %rdx	# p.reg_save_area, D.18725
	movl	-200(%rbp), %eax	# p.gp_offset, D.18724
	movl	%eax, %eax	# D.18724, D.18726
	addq	%rdx, %rax	# D.18725, addr.30
	movl	-200(%rbp), %edx	# p.gp_offset, D.18724
	addl	$8, %edx	#, D.18724
	movl	%edx, -200(%rbp)	# D.18724, p.gp_offset
	jmp	.L70	#
.L69:
	.loc 1 527 0 discriminator 1
	movq	-192(%rbp), %rdx	# p.overflow_arg_area, D.18725
	movq	%rdx, %rax	# D.18725, addr.30
	addq	$8, %rdx	#, D.18725
	movq	%rdx, -192(%rbp)	# D.18725, p.overflow_arg_area
.L70:
	movq	(%rax), %rdx	# MEM[(long int * {ref-all})addr.30_4], D.18727
	movl	-248(%rbp), %eax	# mode, tmp189
	movq	%rdx, %rsi	# D.18727,
	movl	%eax, %edi	# tmp189,
	call	gen_rtx_CONST_INT	#
	movq	%rax, -224(%rbp)	# tmp190, rt_val
	.loc 1 528 0 is_stmt 1 discriminator 1
	jmp	.L71	#
.L64:
.LBB7:
	.loc 1 532 0
	movl	-200(%rbp), %eax	# p.gp_offset, D.18724
	cmpl	$48, %eax	#, D.18724
	jae	.L72	#,
	.loc 1 532 0 is_stmt 0 discriminator 2
	movq	-184(%rbp), %rdx	# p.reg_save_area, D.18725
	movl	-200(%rbp), %eax	# p.gp_offset, D.18724
	movl	%eax, %eax	# D.18724, D.18726
	addq	%rdx, %rax	# D.18725, addr.31
	movl	-200(%rbp), %edx	# p.gp_offset, D.18724
	addl	$8, %edx	#, D.18724
	movl	%edx, -200(%rbp)	# D.18724, p.gp_offset
	jmp	.L73	#
.L72:
	.loc 1 532 0 discriminator 1
	movq	-192(%rbp), %rdx	# p.overflow_arg_area, D.18725
	movq	%rdx, %rax	# D.18725, addr.31
	addq	$8, %rdx	#, D.18725
	movq	%rdx, -192(%rbp)	# D.18725, p.overflow_arg_area
.L73:
	movq	(%rax), %rax	# MEM[(long int * {ref-all})addr.31_5], tmp191
	movq	%rax, -216(%rbp)	# tmp191, arg0
	.loc 1 533 0 is_stmt 1 discriminator 1
	movl	-200(%rbp), %eax	# p.gp_offset, D.18724
	cmpl	$48, %eax	#, D.18724
	jae	.L74	#,
	.loc 1 533 0 is_stmt 0 discriminator 2
	movq	-184(%rbp), %rdx	# p.reg_save_area, D.18725
	movl	-200(%rbp), %eax	# p.gp_offset, D.18724
	movl	%eax, %eax	# D.18724, D.18726
	addq	%rdx, %rax	# D.18725, addr.32
	movl	-200(%rbp), %edx	# p.gp_offset, D.18724
	addl	$8, %edx	#, D.18724
	movl	%edx, -200(%rbp)	# D.18724, p.gp_offset
	jmp	.L75	#
.L74:
	.loc 1 533 0 discriminator 1
	movq	-192(%rbp), %rdx	# p.overflow_arg_area, D.18725
	movq	%rdx, %rax	# D.18725, addr.32
	addq	$8, %rdx	#, D.18725
	movq	%rdx, -192(%rbp)	# D.18725, p.overflow_arg_area
.L75:
	movq	(%rax), %rax	# MEM[(long int * {ref-all})addr.32_6], tmp192
	movq	%rax, -208(%rbp)	# tmp192, arg1
	.loc 1 535 0 is_stmt 1 discriminator 1
	movq	-208(%rbp), %rdx	# arg1, tmp193
	movq	-216(%rbp), %rcx	# arg0, tmp194
	movl	-248(%rbp), %eax	# mode, tmp195
	movq	%rcx, %rsi	# tmp194,
	movl	%eax, %edi	# tmp195,
	call	gen_rtx_CONST_DOUBLE	#
	movq	%rax, -224(%rbp)	# tmp196, rt_val
.LBE7:
	.loc 1 537 0 discriminator 1
	jmp	.L71	#
.L67:
	.loc 1 540 0
	movl	-200(%rbp), %eax	# p.gp_offset, D.18724
	cmpl	$48, %eax	#, D.18724
	jae	.L76	#,
	.loc 1 540 0 is_stmt 0 discriminator 2
	movq	-184(%rbp), %rdx	# p.reg_save_area, D.18725
	movl	-200(%rbp), %eax	# p.gp_offset, D.18724
	movl	%eax, %eax	# D.18724, D.18726
	addq	%rdx, %rax	# D.18725, addr.33
	movl	-200(%rbp), %edx	# p.gp_offset, D.18724
	addl	$8, %edx	#, D.18724
	movl	%edx, -200(%rbp)	# D.18724, p.gp_offset
	jmp	.L77	#
.L76:
	.loc 1 540 0 discriminator 1
	movq	-192(%rbp), %rdx	# p.overflow_arg_area, D.18725
	movq	%rdx, %rax	# D.18725, addr.33
	addq	$8, %rdx	#, D.18725
	movq	%rdx, -192(%rbp)	# D.18725, p.overflow_arg_area
.L77:
	movl	(%rax), %edx	# MEM[(int * {ref-all})addr.33_7], D.18728
	movl	-248(%rbp), %eax	# mode, tmp197
	movl	%edx, %esi	# D.18728,
	movl	%eax, %edi	# tmp197,
	call	gen_rtx_REG	#
	movq	%rax, -224(%rbp)	# tmp198, rt_val
	.loc 1 541 0 is_stmt 1 discriminator 1
	jmp	.L71	#
.L68:
	.loc 1 544 0
	movl	-200(%rbp), %eax	# p.gp_offset, D.18724
	cmpl	$48, %eax	#, D.18724
	jae	.L78	#,
	.loc 1 544 0 is_stmt 0 discriminator 2
	movq	-184(%rbp), %rdx	# p.reg_save_area, D.18725
	movl	-200(%rbp), %eax	# p.gp_offset, D.18724
	movl	%eax, %eax	# D.18724, D.18726
	addq	%rdx, %rax	# D.18725, addr.34
	movl	-200(%rbp), %edx	# p.gp_offset, D.18724
	addl	$8, %edx	#, D.18724
	movl	%edx, -200(%rbp)	# D.18724, p.gp_offset
	jmp	.L79	#
.L78:
	.loc 1 544 0 discriminator 1
	movq	-192(%rbp), %rdx	# p.overflow_arg_area, D.18725
	movq	%rdx, %rax	# D.18725, addr.34
	addq	$8, %rdx	#, D.18725
	movq	%rdx, -192(%rbp)	# D.18725, p.overflow_arg_area
.L79:
	movq	(%rax), %rdx	# MEM[(struct rtx_def * * {ref-all})addr.34_8], D.18729
	movl	-248(%rbp), %eax	# mode, tmp199
	movq	%rdx, %rsi	# D.18729,
	movl	%eax, %edi	# tmp199,
	call	gen_rtx_MEM	#
	movq	%rax, -224(%rbp)	# tmp200, rt_val
	.loc 1 545 0 is_stmt 1 discriminator 1
	jmp	.L71	#
.L63:
	.loc 1 548 0
	movl	-244(%rbp), %eax	# code, tmp201
	movl	%eax, %edi	# tmp201,
	call	rtx_alloc	#
	movq	%rax, -224(%rbp)	# tmp202, rt_val
	.loc 1 549 0
	movl	-248(%rbp), %eax	# mode, tmp203
	movl	%eax, %edx	# tmp203, D.18730
	movq	-224(%rbp), %rax	# rt_val, tmp204
	movb	%dl, 2(%rax)	# D.18730, rt_val_77->mode
	.loc 1 551 0
	movl	-244(%rbp), %eax	# code, code.35
	cltq
	movq	rtx_format(,%rax,8), %rax	# rtx_format, tmp206
	movq	%rax, -232(%rbp)	# tmp206, fmt
	.loc 1 552 0
	movl	$0, -236(%rbp)	#, i
	jmp	.L80	#
.L106:
	.loc 1 554 0
	movq	-232(%rbp), %rax	# fmt, fmt.36
	leaq	1(%rax), %rdx	#, tmp207
	movq	%rdx, -232(%rbp)	# tmp207, fmt
	movzbl	(%rax), %eax	# *fmt.36_85, D.18731
	movsbl	%al, %eax	# D.18731, D.18728
	subl	$48, %eax	#, tmp208
	cmpl	$71, %eax	#, tmp208
	ja	.L81	#,
	movl	%eax, %eax	# tmp208, tmp209
	movq	.L83(,%rax,8), %rax	#, tmp210
	jmp	*%rax	# tmp210
	.section	.rodata
	.align 8
	.align 4
.L83:
	.quad	.L108
	.quad	.L81
	.quad	.L81
	.quad	.L81
	.quad	.L81
	.quad	.L81
	.quad	.L81
	.quad	.L81
	.quad	.L81
	.quad	.L81
	.quad	.L81
	.quad	.L81
	.quad	.L81
	.quad	.L81
	.quad	.L81
	.quad	.L81
	.quad	.L81
	.quad	.L81
	.quad	.L81
	.quad	.L81
	.quad	.L81
	.quad	.L84
	.quad	.L81
	.quad	.L81
	.quad	.L81
	.quad	.L81
	.quad	.L81
	.quad	.L81
	.quad	.L81
	.quad	.L81
	.quad	.L81
	.quad	.L81
	.quad	.L81
	.quad	.L81
	.quad	.L81
	.quad	.L81
	.quad	.L81
	.quad	.L81
	.quad	.L81
	.quad	.L81
	.quad	.L81
	.quad	.L81
	.quad	.L81
	.quad	.L81
	.quad	.L81
	.quad	.L81
	.quad	.L81
	.quad	.L81
	.quad	.L81
	.quad	.L81
	.quad	.L85
	.quad	.L81
	.quad	.L81
	.quad	.L86
	.quad	.L81
	.quad	.L81
	.quad	.L81
	.quad	.L87
	.quad	.L81
	.quad	.L81
	.quad	.L81
	.quad	.L81
	.quad	.L81
	.quad	.L81
	.quad	.L81
	.quad	.L81
	.quad	.L81
	.quad	.L88
	.quad	.L89
	.quad	.L86
	.quad	.L81
	.quad	.L90
	.text
.L87:
	.loc 1 560 0
	movl	-200(%rbp), %eax	# p.gp_offset, D.18724
	cmpl	$48, %eax	#, D.18724
	jae	.L92	#,
	.loc 1 560 0 is_stmt 0 discriminator 2
	movq	-184(%rbp), %rdx	# p.reg_save_area, D.18725
	movl	-200(%rbp), %eax	# p.gp_offset, D.18724
	movl	%eax, %eax	# D.18724, D.18726
	addq	%rdx, %rax	# D.18725, addr.37
	movl	-200(%rbp), %edx	# p.gp_offset, D.18724
	addl	$8, %edx	#, D.18724
	movl	%edx, -200(%rbp)	# D.18724, p.gp_offset
	jmp	.L93	#
.L92:
	.loc 1 560 0 discriminator 1
	movq	-192(%rbp), %rdx	# p.overflow_arg_area, D.18725
	movq	%rdx, %rax	# D.18725, addr.37
	addq	$8, %rdx	#, D.18725
	movq	%rdx, -192(%rbp)	# D.18725, p.overflow_arg_area
.L93:
	movl	(%rax), %ecx	# MEM[(int * {ref-all})addr.37_9], D.18728
	movq	-224(%rbp), %rax	# rt_val, tmp211
	movl	-236(%rbp), %edx	# i, tmp213
	movslq	%edx, %rdx	# tmp213, tmp212
	movl	%ecx, 8(%rax,%rdx,8)	# D.18728, rt_val_77->fld[i_1].rtint
	.loc 1 561 0 is_stmt 1 discriminator 1
	jmp	.L91	#
.L90:
	.loc 1 564 0
	movl	-200(%rbp), %eax	# p.gp_offset, D.18724
	cmpl	$48, %eax	#, D.18724
	jae	.L94	#,
	.loc 1 564 0 is_stmt 0 discriminator 2
	movq	-184(%rbp), %rdx	# p.reg_save_area, D.18725
	movl	-200(%rbp), %eax	# p.gp_offset, D.18724
	movl	%eax, %eax	# D.18724, D.18726
	addq	%rdx, %rax	# D.18725, addr.38
	movl	-200(%rbp), %edx	# p.gp_offset, D.18724
	addl	$8, %edx	#, D.18724
	movl	%edx, -200(%rbp)	# D.18724, p.gp_offset
	jmp	.L95	#
.L94:
	.loc 1 564 0 discriminator 1
	movq	-192(%rbp), %rdx	# p.overflow_arg_area, D.18725
	movq	%rdx, %rax	# D.18725, addr.38
	addq	$8, %rdx	#, D.18725
	movq	%rdx, -192(%rbp)	# D.18725, p.overflow_arg_area
.L95:
	movq	(%rax), %rcx	# MEM[(long int * {ref-all})addr.38_10], D.18727
	movq	-224(%rbp), %rax	# rt_val, tmp214
	movl	-236(%rbp), %edx	# i, tmp216
	movslq	%edx, %rdx	# tmp216, tmp215
	movq	%rcx, 8(%rax,%rdx,8)	# D.18727, rt_val_77->fld[i_1].rtwint
	.loc 1 565 0 is_stmt 1 discriminator 1
	jmp	.L91	#
.L88:
	.loc 1 568 0
	movl	-200(%rbp), %eax	# p.gp_offset, D.18724
	cmpl	$48, %eax	#, D.18724
	jae	.L96	#,
	.loc 1 568 0 is_stmt 0 discriminator 2
	movq	-184(%rbp), %rdx	# p.reg_save_area, D.18725
	movl	-200(%rbp), %eax	# p.gp_offset, D.18724
	movl	%eax, %eax	# D.18724, D.18726
	addq	%rdx, %rax	# D.18725, addr.39
	movl	-200(%rbp), %edx	# p.gp_offset, D.18724
	addl	$8, %edx	#, D.18724
	movl	%edx, -200(%rbp)	# D.18724, p.gp_offset
	jmp	.L97	#
.L96:
	.loc 1 568 0 discriminator 1
	movq	-192(%rbp), %rdx	# p.overflow_arg_area, D.18725
	movq	%rdx, %rax	# D.18725, addr.39
	addq	$8, %rdx	#, D.18725
	movq	%rdx, -192(%rbp)	# D.18725, p.overflow_arg_area
.L97:
	movq	(%rax), %rcx	# MEM[(char * * {ref-all})addr.39_11], D.18732
	movq	-224(%rbp), %rax	# rt_val, tmp217
	movl	-236(%rbp), %edx	# i, tmp219
	movslq	%edx, %rdx	# tmp219, tmp218
	movq	%rcx, 8(%rax,%rdx,8)	# D.18732, rt_val_77->fld[i_1].rtstr
	.loc 1 569 0 is_stmt 1 discriminator 1
	jmp	.L91	#
.L86:
	.loc 1 573 0
	movl	-200(%rbp), %eax	# p.gp_offset, D.18724
	cmpl	$48, %eax	#, D.18724
	jae	.L98	#,
	.loc 1 573 0 is_stmt 0 discriminator 2
	movq	-184(%rbp), %rdx	# p.reg_save_area, D.18725
	movl	-200(%rbp), %eax	# p.gp_offset, D.18724
	movl	%eax, %eax	# D.18724, D.18726
	addq	%rdx, %rax	# D.18725, addr.40
	movl	-200(%rbp), %edx	# p.gp_offset, D.18724
	addl	$8, %edx	#, D.18724
	movl	%edx, -200(%rbp)	# D.18724, p.gp_offset
	jmp	.L99	#
.L98:
	.loc 1 573 0 discriminator 1
	movq	-192(%rbp), %rdx	# p.overflow_arg_area, D.18725
	movq	%rdx, %rax	# D.18725, addr.40
	addq	$8, %rdx	#, D.18725
	movq	%rdx, -192(%rbp)	# D.18725, p.overflow_arg_area
.L99:
	movq	(%rax), %rcx	# MEM[(struct rtx_def * * {ref-all})addr.40_12], D.18729
	movq	-224(%rbp), %rax	# rt_val, tmp220
	movl	-236(%rbp), %edx	# i, tmp222
	movslq	%edx, %rdx	# tmp222, tmp221
	movq	%rcx, 8(%rax,%rdx,8)	# D.18729, rt_val_77->fld[i_1].rtx
	.loc 1 574 0 is_stmt 1 discriminator 1
	jmp	.L91	#
.L84:
	.loc 1 577 0
	movl	-200(%rbp), %eax	# p.gp_offset, D.18724
	cmpl	$48, %eax	#, D.18724
	jae	.L100	#,
	.loc 1 577 0 is_stmt 0 discriminator 2
	movq	-184(%rbp), %rdx	# p.reg_save_area, D.18725
	movl	-200(%rbp), %eax	# p.gp_offset, D.18724
	movl	%eax, %eax	# D.18724, D.18726
	addq	%rdx, %rax	# D.18725, addr.41
	movl	-200(%rbp), %edx	# p.gp_offset, D.18724
	addl	$8, %edx	#, D.18724
	movl	%edx, -200(%rbp)	# D.18724, p.gp_offset
	jmp	.L101	#
.L100:
	.loc 1 577 0 discriminator 1
	movq	-192(%rbp), %rdx	# p.overflow_arg_area, D.18725
	movq	%rdx, %rax	# D.18725, addr.41
	addq	$8, %rdx	#, D.18725
	movq	%rdx, -192(%rbp)	# D.18725, p.overflow_arg_area
.L101:
	movq	(%rax), %rcx	# MEM[(struct rtvec_def * * {ref-all})addr.41_13], D.18733
	movq	-224(%rbp), %rax	# rt_val, tmp223
	movl	-236(%rbp), %edx	# i, tmp225
	movslq	%edx, %rdx	# tmp225, tmp224
	movq	%rcx, 8(%rax,%rdx,8)	# D.18733, rt_val_77->fld[i_1].rtvec
	.loc 1 578 0 is_stmt 1 discriminator 1
	jmp	.L91	#
.L85:
	.loc 1 581 0
	movl	-200(%rbp), %eax	# p.gp_offset, D.18724
	cmpl	$48, %eax	#, D.18724
	jae	.L102	#,
	.loc 1 581 0 is_stmt 0 discriminator 2
	movq	-184(%rbp), %rdx	# p.reg_save_area, D.18725
	movl	-200(%rbp), %eax	# p.gp_offset, D.18724
	movl	%eax, %eax	# D.18724, D.18726
	addq	%rdx, %rax	# D.18725, addr.42
	movl	-200(%rbp), %edx	# p.gp_offset, D.18724
	addl	$8, %edx	#, D.18724
	movl	%edx, -200(%rbp)	# D.18724, p.gp_offset
	jmp	.L103	#
.L102:
	.loc 1 581 0 discriminator 1
	movq	-192(%rbp), %rdx	# p.overflow_arg_area, D.18725
	movq	%rdx, %rax	# D.18725, addr.42
	addq	$8, %rdx	#, D.18725
	movq	%rdx, -192(%rbp)	# D.18725, p.overflow_arg_area
.L103:
	movq	(%rax), %rcx	# MEM[(struct bitmap_head_def * * {ref-all})addr.42_14], D.18734
	movq	-224(%rbp), %rax	# rt_val, tmp226
	movl	-236(%rbp), %edx	# i, tmp228
	movslq	%edx, %rdx	# tmp228, tmp227
	movq	%rcx, 8(%rax,%rdx,8)	# D.18734, rt_val_77->fld[i_1].rtbit
	.loc 1 582 0 is_stmt 1 discriminator 1
	jmp	.L91	#
.L89:
	.loc 1 585 0
	movl	-200(%rbp), %eax	# p.gp_offset, D.18724
	cmpl	$48, %eax	#, D.18724
	jae	.L104	#,
	.loc 1 585 0 is_stmt 0 discriminator 2
	movq	-184(%rbp), %rdx	# p.reg_save_area, D.18725
	movl	-200(%rbp), %eax	# p.gp_offset, D.18724
	movl	%eax, %eax	# D.18724, D.18726
	addq	%rdx, %rax	# D.18725, addr.43
	movl	-200(%rbp), %edx	# p.gp_offset, D.18724
	addl	$8, %edx	#, D.18724
	movl	%edx, -200(%rbp)	# D.18724, p.gp_offset
	jmp	.L105	#
.L104:
	.loc 1 585 0 discriminator 1
	movq	-192(%rbp), %rdx	# p.overflow_arg_area, D.18725
	movq	%rdx, %rax	# D.18725, addr.43
	addq	$8, %rdx	#, D.18725
	movq	%rdx, -192(%rbp)	# D.18725, p.overflow_arg_area
.L105:
	movq	(%rax), %rcx	# MEM[(union tree_node * * {ref-all})addr.43_15], D.18735
	movq	-224(%rbp), %rax	# rt_val, tmp229
	movl	-236(%rbp), %edx	# i, tmp231
	movslq	%edx, %rdx	# tmp231, tmp230
	movq	%rcx, 8(%rax,%rdx,8)	# D.18735, rt_val_77->fld[i_1].rttree
	.loc 1 586 0 is_stmt 1 discriminator 1
	jmp	.L91	#
.L81:
	.loc 1 589 0
	movl	$__FUNCTION__.13391, %edx	#,
	movl	$589, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L108:
	.loc 1 557 0
	nop
.L91:
	.loc 1 552 0
	addl	$1, -236(%rbp)	#, i
.L80:
	.loc 1 552 0 is_stmt 0 discriminator 1
	movl	-244(%rbp), %eax	# code, code.44
	cltq
	movzbl	rtx_length(%rax), %eax	# rtx_length, D.18730
	movzbl	%al, %eax	# D.18730, D.18728
	cmpl	-236(%rbp), %eax	# i, D.18728
	jg	.L106	#,
	.loc 1 592 0 is_stmt 1
	nop
.L71:
.LBE6:
.LBE5:
	.loc 1 596 0
	movq	-224(%rbp), %rax	# rt_val, D.18736
	.loc 1 597 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	gen_rtx, .-gen_rtx
	.globl	gen_rtvec
	.type	gen_rtvec, @function
gen_rtvec:
.LFB17:
	.loc 1 608 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$248, %rsp	#,
	.cfi_offset 3, -24
	movq	%rsi, -184(%rbp)	#,
	movq	%rdx, -176(%rbp)	#,
	movq	%rcx, -168(%rbp)	#,
	movq	%r8, -160(%rbp)	#,
	movq	%r9, -152(%rbp)	#,
	testb	%al, %al	#
	je	.L110	#,
	.loc 1 608 0
	movaps	%xmm0, -144(%rbp)	#,
	movaps	%xmm1, -128(%rbp)	#,
	movaps	%xmm2, -112(%rbp)	#,
	movaps	%xmm3, -96(%rbp)	#,
	movaps	%xmm4, -80(%rbp)	#,
	movaps	%xmm5, -64(%rbp)	#,
	movaps	%xmm6, -48(%rbp)	#,
	movaps	%xmm7, -32(%rbp)	#,
.L110:
	movl	%edi, -244(%rbp)	# n, n
.LBB8:
	.loc 1 612 0
	movl	$8, -216(%rbp)	#, MEM[(struct [1] *)&p].gp_offset
	movl	$48, -212(%rbp)	#, MEM[(struct [1] *)&p].fp_offset
	leaq	16(%rbp), %rax	#, tmp98
	movq	%rax, -208(%rbp)	# tmp98, MEM[(struct [1] *)&p].overflow_arg_area
	leaq	-192(%rbp), %rax	#, tmp99
	movq	%rax, -200(%rbp)	# tmp99, MEM[(struct [1] *)&p].reg_save_area
.LBB9:
	.loc 1 615 0
	cmpl	$0, -244(%rbp)	#, n
	jne	.L111	#,
	.loc 1 616 0
	movl	$0, %eax	#, D.18740
	jmp	.L112	#
.L111:
	.loc 1 618 0
	movl	-244(%rbp), %eax	# n, tmp77
	cltq
	salq	$3, %rax	#, D.18741
	leaq	15(%rax), %rdx	#, tmp78
	movl	$16, %eax	#, tmp96
	subq	$1, %rax	#, tmp79
	addq	%rdx, %rax	# tmp78, tmp80
	movl	$16, %ebx	#, tmp97
	movl	$0, %edx	#, tmp83
	divq	%rbx	# tmp97
	imulq	$16, %rax, %rax	#, tmp82, tmp84
	subq	%rax, %rsp	# tmp84,
	movq	%rsp, %rax	#, tmp85
	addq	$15, %rax	#, tmp86
	shrq	$4, %rax	#, tmp87
	salq	$4, %rax	#, tmp88
	movq	%rax, -224(%rbp)	# tmp88, vector
	.loc 1 620 0
	movl	$0, -232(%rbp)	#, i
	jmp	.L113	#
.L116:
	.loc 1 621 0
	movl	-232(%rbp), %eax	# i, tmp89
	cltq
	leaq	0(,%rax,8), %rdx	#, D.18741
	movq	-224(%rbp), %rax	# vector, tmp90
	leaq	(%rdx,%rax), %rcx	#, D.18742
	movl	-216(%rbp), %eax	# p.gp_offset, D.18743
	cmpl	$48, %eax	#, D.18743
	jae	.L114	#,
	.loc 1 621 0 is_stmt 0 discriminator 2
	movq	-200(%rbp), %rdx	# p.reg_save_area, D.18744
	movl	-216(%rbp), %eax	# p.gp_offset, D.18743
	movl	%eax, %eax	# D.18743, D.18745
	addq	%rdx, %rax	# D.18744, addr.45
	movl	-216(%rbp), %edx	# p.gp_offset, D.18743
	addl	$8, %edx	#, D.18743
	movl	%edx, -216(%rbp)	# D.18743, p.gp_offset
	jmp	.L115	#
.L114:
	.loc 1 621 0 discriminator 1
	movq	-208(%rbp), %rdx	# p.overflow_arg_area, D.18744
	movq	%rdx, %rax	# D.18744, addr.45
	addq	$8, %rdx	#, D.18744
	movq	%rdx, -208(%rbp)	# D.18744, p.overflow_arg_area
.L115:
	movq	(%rax), %rax	# MEM[(struct rtx_def * * {ref-all})addr.45_3], D.18746
	movq	%rax, (%rcx)	# D.18746, *_12
	.loc 1 620 0 is_stmt 1 discriminator 1
	addl	$1, -232(%rbp)	#, i
.L113:
	movl	-232(%rbp), %eax	# i, tmp91
	cmpl	-244(%rbp), %eax	# n, tmp91
	jl	.L116	#,
	.loc 1 624 0
	movl	-244(%rbp), %eax	# n, tmp92
	movl	%eax, -228(%rbp)	# tmp92, save_n
.LBE9:
.LBE8:
	.loc 1 627 0
	movq	-224(%rbp), %rdx	# vector, tmp93
	movl	-228(%rbp), %eax	# save_n, tmp94
	movq	%rdx, %rsi	# tmp93,
	movl	%eax, %edi	# tmp94,
	call	gen_rtvec_v	#
.L112:
	.loc 1 628 0
	movq	-8(%rbp), %rbx	#,
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	gen_rtvec, .-gen_rtvec
	.globl	gen_rtvec_v
	.type	gen_rtvec_v, @function
gen_rtvec_v:
.LFB18:
	.loc 1 634 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	%edi, -20(%rbp)	# n, n
	movq	%rsi, -32(%rbp)	# argp, argp
	.loc 1 638 0
	cmpl	$0, -20(%rbp)	#, n
	jne	.L118	#,
	.loc 1 639 0
	movl	$0, %eax	#, D.18750
	jmp	.L119	#
.L118:
	.loc 1 641 0
	movl	-20(%rbp), %eax	# n, tmp63
	movl	%eax, %edi	# tmp63,
	call	rtvec_alloc	#
	movq	%rax, -8(%rbp)	# tmp64, rt_val
	.loc 1 643 0
	movl	$0, -12(%rbp)	#, i
	jmp	.L120	#
.L121:
	.loc 1 644 0 discriminator 2
	movq	-32(%rbp), %rax	# argp, argp.46
	leaq	8(%rax), %rdx	#, tmp65
	movq	%rdx, -32(%rbp)	# tmp65, argp
	movq	(%rax), %rcx	# *argp.46_9, D.18751
	movq	-8(%rbp), %rax	# rt_val, tmp66
	movl	-12(%rbp), %edx	# i, tmp68
	movslq	%edx, %rdx	# tmp68, tmp67
	movq	%rcx, 8(%rax,%rdx,8)	# D.18751, rt_val_6->elem
	.loc 1 643 0 discriminator 2
	addl	$1, -12(%rbp)	#, i
.L120:
	.loc 1 643 0 is_stmt 0 discriminator 1
	movl	-12(%rbp), %eax	# i, tmp69
	cmpl	-20(%rbp), %eax	# n, tmp69
	jl	.L121	#,
	.loc 1 646 0 is_stmt 1
	movq	-8(%rbp), %rax	# rt_val, D.18750
.L119:
	.loc 1 647 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	gen_rtvec_v, .-gen_rtvec_v
	.globl	gen_reg_rtx
	.type	gen_reg_rtx, @function
gen_reg_rtx:
.LFB19:
	.loc 1 655 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$96, %rsp	#,
	movl	%edi, -84(%rbp)	# mode, mode
	.loc 1 656 0
	movq	cfun(%rip), %rax	# cfun, tmp124
	movq	%rax, -56(%rbp)	# tmp124, f
	.loc 1 661 0
	movl	no_new_pseudos(%rip), %eax	# no_new_pseudos, no_new_pseudos.47
	testl	%eax, %eax	# no_new_pseudos.47
	je	.L123	#,
	.loc 1 662 0
	movl	$__FUNCTION__.13420, %edx	#,
	movl	$662, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L123:
	.loc 1 664 0
	movl	generating_concat_p(%rip), %eax	# generating_concat_p, generating_concat_p.48
	testl	%eax, %eax	# generating_concat_p.48
	je	.L124	#,
	.loc 1 665 0
	movl	-84(%rbp), %eax	# mode, mode.49
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.18753
	cmpl	$6, %eax	#, D.18753
	je	.L125	#,
	.loc 1 666 0
	movl	-84(%rbp), %eax	# mode, mode.50
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.18753
	cmpl	$5, %eax	#, D.18753
	jne	.L124	#,
.L125:
.LBB10:
	.loc 1 674 0
	movl	-84(%rbp), %eax	# mode, mode.51
	cltq
	movzbl	mode_unit_size(%rax), %eax	# mode_unit_size, D.18754
	movzbl	%al, %eax	# D.18754, tmp128
	movl	%eax, -68(%rbp)	# tmp128, size
	.loc 1 677 0
	movl	-84(%rbp), %eax	# mode, mode.53
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.18753
	.loc 1 676 0
	cmpl	$6, %eax	#, D.18753
	jne	.L126	#,
	.loc 1 676 0 is_stmt 0 discriminator 1
	movl	$2, %eax	#, iftmp.52
	jmp	.L127	#
.L126:
	.loc 1 676 0 discriminator 2
	movl	$1, %eax	#, iftmp.52
.L127:
	.loc 1 676 0 discriminator 3
	movl	-68(%rbp), %edx	# size, tmp130
	sall	$3, %edx	#, D.18755
	movl	%edx, %ecx	# D.18755, D.18756
	.loc 1 675 0 is_stmt 1 discriminator 3
	movl	$0, %edx	#,
	movl	%eax, %esi	# iftmp.52,
	movl	%ecx, %edi	# D.18756,
	call	mode_for_size	#
	movl	%eax, -64(%rbp)	# tmp131, partmode
	.loc 1 681 0 discriminator 3
	movl	-64(%rbp), %eax	# partmode, tmp132
	movl	%eax, %edi	# tmp132,
	call	gen_reg_rtx	#
	movq	%rax, -48(%rbp)	# tmp133, realpart
	.loc 1 682 0 discriminator 3
	movl	-64(%rbp), %eax	# partmode, tmp134
	movl	%eax, %edi	# tmp134,
	call	gen_reg_rtx	#
	movq	%rax, -40(%rbp)	# tmp135, imagpart
	.loc 1 683 0 discriminator 3
	movq	-40(%rbp), %rcx	# imagpart, tmp136
	movq	-48(%rbp), %rdx	# realpart, tmp137
	movl	-84(%rbp), %eax	# mode, tmp138
	movl	%eax, %esi	# tmp138,
	movl	$65, %edi	#,
	call	gen_rtx_fmt_ee	#
	jmp	.L128	#
.L124:
.LBE10:
	.loc 1 689 0
	movq	cfun(%rip), %rax	# cfun, cfun.54
	movq	24(%rax), %rax	# cfun.54_24->emit, D.18757
	movl	(%rax), %edx	# _25->x_reg_rtx_no, D.18755
	movq	-56(%rbp), %rax	# f, tmp139
	movq	24(%rax), %rax	# f_3->emit, D.18757
	movl	56(%rax), %eax	# _27->regno_pointer_align_length, D.18755
	cmpl	%eax, %edx	# D.18755, D.18755
	jne	.L129	#,
.LBB11:
	.loc 1 691 0
	movq	-56(%rbp), %rax	# f, tmp140
	movq	24(%rax), %rax	# f_3->emit, D.18757
	movl	56(%rax), %eax	# _29->regno_pointer_align_length, tmp141
	movl	%eax, -60(%rbp)	# tmp141, old_size
	.loc 1 696 0
	movl	-60(%rbp), %eax	# old_size, tmp142
	addl	%eax, %eax	# D.18755
	movslq	%eax, %rdx	# D.18755, D.18758
	movq	-56(%rbp), %rax	# f, tmp143
	movq	24(%rax), %rax	# f_3->emit, D.18757
	movq	64(%rax), %rax	# _33->regno_pointer_align, D.18759
	movq	%rdx, %rsi	# D.18758,
	movq	%rax, %rdi	# D.18759,
	call	xrealloc	#
	movq	%rax, -32(%rbp)	# tmp144, new
	.loc 1 697 0
	movl	-60(%rbp), %eax	# old_size, tmp145
	cltq
	movl	-60(%rbp), %edx	# old_size, tmp146
	movslq	%edx, %rcx	# tmp146, D.18760
	movq	-32(%rbp), %rdx	# new, tmp147
	addq	%rdx, %rcx	# tmp147, D.18761
	movq	%rax, %rdx	# D.18758,
	movl	$0, %esi	#,
	movq	%rcx, %rdi	# D.18761,
	call	memset	#
	.loc 1 698 0
	movq	-56(%rbp), %rax	# f, tmp148
	movq	24(%rax), %rax	# f_3->emit, D.18757
	movq	-32(%rbp), %rdx	# new, tmp149
	movq	%rdx, 64(%rax)	# tmp149, _39->regno_pointer_align
	.loc 1 700 0
	movl	-60(%rbp), %eax	# old_size, tmp150
	cltq
	salq	$4, %rax	#, D.18758
	movq	%rax, %rdx	# D.18758, D.18758
	movq	-56(%rbp), %rax	# f, tmp151
	movq	24(%rax), %rax	# f_3->emit, D.18757
	movq	80(%rax), %rax	# _42->x_regno_reg_rtx, D.18762
	movq	%rdx, %rsi	# D.18758,
	movq	%rax, %rdi	# D.18762,
	call	xrealloc	#
	movq	%rax, -24(%rbp)	# tmp152, new1
	.loc 1 702 0
	movl	-60(%rbp), %eax	# old_size, tmp153
	cltq
	leaq	0(,%rax,8), %rdx	#, D.18758
	movl	-60(%rbp), %eax	# old_size, tmp154
	cltq
	leaq	0(,%rax,8), %rcx	#, D.18758
	movq	-24(%rbp), %rax	# new1, tmp155
	addq	%rcx, %rax	# D.18758, D.18761
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.18761,
	call	memset	#
	.loc 1 703 0
	movq	cfun(%rip), %rax	# cfun, cfun.55
	movq	24(%rax), %rax	# cfun.55_50->emit, D.18757
	movq	-24(%rbp), %rdx	# new1, tmp156
	movq	%rdx, 80(%rax)	# tmp156, _51->x_regno_reg_rtx
	.loc 1 705 0
	movl	-60(%rbp), %eax	# old_size, tmp157
	cltq
	salq	$4, %rax	#, D.18758
	movq	%rax, %rdx	# D.18758, D.18758
	movq	-56(%rbp), %rax	# f, tmp158
	movq	24(%rax), %rax	# f_3->emit, D.18757
	movq	72(%rax), %rax	# _54->regno_decl, D.18763
	movq	%rdx, %rsi	# D.18758,
	movq	%rax, %rdi	# D.18763,
	call	xrealloc	#
	movq	%rax, -16(%rbp)	# tmp159, new2
	.loc 1 707 0
	movl	-60(%rbp), %eax	# old_size, tmp160
	cltq
	leaq	0(,%rax,8), %rdx	#, D.18758
	movl	-60(%rbp), %eax	# old_size, tmp161
	cltq
	leaq	0(,%rax,8), %rcx	#, D.18758
	movq	-16(%rbp), %rax	# new2, tmp162
	addq	%rcx, %rax	# D.18758, D.18761
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.18761,
	call	memset	#
	.loc 1 708 0
	movq	-56(%rbp), %rax	# f, tmp163
	movq	24(%rax), %rax	# f_3->emit, D.18757
	movq	-16(%rbp), %rdx	# new2, tmp164
	movq	%rdx, 72(%rax)	# tmp164, _62->regno_decl
	.loc 1 710 0
	movq	-56(%rbp), %rax	# f, tmp165
	movq	24(%rax), %rax	# f_3->emit, D.18757
	movl	-60(%rbp), %edx	# old_size, tmp166
	addl	%edx, %edx	# D.18755
	movl	%edx, 56(%rax)	# D.18755, _63->regno_pointer_align_length
.L129:
.LBE11:
	.loc 1 713 0
	movq	cfun(%rip), %rax	# cfun, cfun.56
	movq	24(%rax), %rax	# cfun.56_65->emit, D.18757
	movl	(%rax), %edx	# _66->x_reg_rtx_no, D.18755
	movl	-84(%rbp), %eax	# mode, tmp167
	movl	%edx, %esi	# D.18755,
	movl	%eax, %edi	# tmp167,
	call	gen_raw_REG	#
	movq	%rax, -8(%rbp)	# tmp168, val
	.loc 1 714 0
	movq	cfun(%rip), %rax	# cfun, cfun.57
	movq	24(%rax), %rax	# cfun.57_69->emit, D.18757
	movq	80(%rax), %rsi	# _70->x_regno_reg_rtx, D.18762
	movq	cfun(%rip), %rax	# cfun, cfun.58
	movq	24(%rax), %rax	# cfun.58_72->emit, D.18757
	movl	(%rax), %edx	# _73->x_reg_rtx_no, D.18755
	leal	1(%rdx), %ecx	#, D.18755
	movl	%ecx, (%rax)	# D.18755, _73->x_reg_rtx_no
	movslq	%edx, %rax	# D.18755, D.18758
	salq	$3, %rax	#, D.18758
	leaq	(%rsi,%rax), %rdx	#, D.18762
	movq	-8(%rbp), %rax	# val, tmp169
	movq	%rax, (%rdx)	# tmp169, *_79
	.loc 1 715 0
	movq	-8(%rbp), %rax	# val, D.18752
.L128:
	.loc 1 716 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	gen_reg_rtx, .-gen_reg_rtx
	.globl	mark_user_reg
	.type	mark_user_reg, @function
mark_user_reg:
.LFB20:
	.loc 1 723 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# reg, reg
	.loc 1 724 0
	movq	-8(%rbp), %rax	# reg, tmp63
	movzwl	(%rax), %eax	# reg_1(D)->code, D.18764
	cmpw	$65, %ax	#, D.18764
	jne	.L131	#,
	.loc 1 726 0
	movq	-8(%rbp), %rax	# reg, tmp64
	movq	8(%rax), %rax	# reg_1(D)->fld[0].rtx, D.18765
	movzbl	3(%rax), %edx	# _3->volatil, tmp67
	orl	$8, %edx	#, tmp68
	movb	%dl, 3(%rax)	# tmp68, _3->volatil
	.loc 1 727 0
	movq	-8(%rbp), %rax	# reg, tmp69
	movq	16(%rax), %rax	# reg_1(D)->fld[1].rtx, D.18765
	movzbl	3(%rax), %edx	# _4->volatil, tmp72
	orl	$8, %edx	#, tmp73
	movb	%dl, 3(%rax)	# tmp73, _4->volatil
	jmp	.L130	#
.L131:
	.loc 1 729 0
	movq	-8(%rbp), %rax	# reg, tmp74
	movzwl	(%rax), %eax	# reg_1(D)->code, D.18764
	cmpw	$61, %ax	#, D.18764
	jne	.L133	#,
	.loc 1 730 0
	movq	-8(%rbp), %rax	# reg, tmp75
	movzbl	3(%rax), %edx	# reg_1(D)->volatil, tmp78
	orl	$8, %edx	#, tmp79
	movb	%dl, 3(%rax)	# tmp79, reg_1(D)->volatil
	jmp	.L130	#
.L133:
	.loc 1 732 0
	movl	$__FUNCTION__.13432, %edx	#,
	movl	$732, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L130:
	.loc 1 733 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	mark_user_reg, .-mark_user_reg
	.globl	mark_reg_pointer
	.type	mark_reg_pointer, @function
mark_reg_pointer:
.LFB21:
	.loc 1 742 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# reg, reg
	movl	%esi, -12(%rbp)	# align, align
	.loc 1 743 0
	movq	-8(%rbp), %rax	# reg, tmp83
	movzbl	3(%rax), %eax	# *reg_1(D), D.18766
	andl	$-128, %eax	#, D.18766
	testb	%al, %al	# D.18766
	jne	.L135	#,
	.loc 1 745 0
	movq	-8(%rbp), %rax	# reg, tmp84
	movzbl	3(%rax), %edx	# reg_1(D)->frame_related, tmp87
	orl	$-128, %edx	#, tmp88
	movb	%dl, 3(%rax)	# tmp88, reg_1(D)->frame_related
	.loc 1 747 0
	cmpl	$0, -12(%rbp)	#, align
	je	.L134	#,
	.loc 1 748 0
	movq	cfun(%rip), %rax	# cfun, cfun.59
	movq	24(%rax), %rax	# cfun.59_5->emit, D.18767
	movq	64(%rax), %rdx	# _6->regno_pointer_align, D.18768
	movq	-8(%rbp), %rax	# reg, tmp89
	movl	8(%rax), %eax	# reg_1(D)->fld[0].rtuint, D.18769
	movl	%eax, %eax	# D.18769, D.18770
	addq	%rax, %rdx	# D.18770, D.18768
	movl	-12(%rbp), %eax	# align, tmp90
	movb	%al, (%rdx)	# D.18766, *_10
	jmp	.L134	#
.L135:
	.loc 1 750 0
	cmpl	$0, -12(%rbp)	#, align
	je	.L134	#,
	.loc 1 750 0 is_stmt 0 discriminator 1
	movq	cfun(%rip), %rax	# cfun, cfun.60
	movq	24(%rax), %rax	# cfun.60_12->emit, D.18767
	movq	64(%rax), %rdx	# _13->regno_pointer_align, D.18768
	movq	-8(%rbp), %rax	# reg, tmp91
	movl	8(%rax), %eax	# reg_1(D)->fld[0].rtuint, D.18769
	movl	%eax, %eax	# D.18769, D.18770
	addq	%rdx, %rax	# D.18768, D.18768
	movzbl	(%rax), %eax	# *_17, D.18766
	movzbl	%al, %eax	# D.18766, D.18771
	cmpl	-12(%rbp), %eax	# align, D.18771
	jle	.L134	#,
	.loc 1 752 0 is_stmt 1
	movq	cfun(%rip), %rax	# cfun, cfun.61
	movq	24(%rax), %rax	# cfun.61_20->emit, D.18767
	movq	64(%rax), %rdx	# _21->regno_pointer_align, D.18768
	movq	-8(%rbp), %rax	# reg, tmp92
	movl	8(%rax), %eax	# reg_1(D)->fld[0].rtuint, D.18769
	movl	%eax, %eax	# D.18769, D.18770
	addq	%rax, %rdx	# D.18770, D.18768
	movl	-12(%rbp), %eax	# align, tmp93
	movb	%al, (%rdx)	# D.18766, *_25
.L134:
	.loc 1 753 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	mark_reg_pointer, .-mark_reg_pointer
	.globl	max_reg_num
	.type	max_reg_num, @function
max_reg_num:
.LFB22:
	.loc 1 759 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 760 0
	movq	cfun(%rip), %rax	# cfun, cfun.62
	movq	24(%rax), %rax	# cfun.62_1->emit, D.18772
	movl	(%rax), %eax	# _2->x_reg_rtx_no, D.18773
	.loc 1 761 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	max_reg_num, .-max_reg_num
	.globl	max_label_num
	.type	max_label_num, @function
max_label_num:
.LFB23:
	.loc 1 767 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 768 0
	movl	last_label_num(%rip), %eax	# last_label_num, last_label_num.63
	testl	%eax, %eax	# last_label_num.63
	je	.L141	#,
	.loc 1 768 0 is_stmt 0 discriminator 1
	movl	label_num(%rip), %edx	# label_num, label_num.64
	movl	base_label_num(%rip), %eax	# base_label_num, base_label_num.65
	cmpl	%eax, %edx	# base_label_num.65, label_num.64
	jne	.L141	#,
	.loc 1 769 0 is_stmt 1
	movl	last_label_num(%rip), %eax	# last_label_num, D.18774
	jmp	.L142	#
.L141:
	.loc 1 770 0
	movl	label_num(%rip), %eax	# label_num, D.18774
.L142:
	.loc 1 771 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE23:
	.size	max_label_num, .-max_label_num
	.globl	get_first_label_num
	.type	get_first_label_num, @function
get_first_label_num:
.LFB24:
	.loc 1 777 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 778 0
	movq	cfun(%rip), %rax	# cfun, cfun.66
	movq	24(%rax), %rax	# cfun.66_1->emit, D.18775
	movl	4(%rax), %eax	# _2->x_first_label_num, D.18776
	.loc 1 779 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE24:
	.size	get_first_label_num, .-get_first_label_num
	.globl	subreg_hard_regno
	.type	subreg_hard_regno, @function
subreg_hard_regno:
.LFB25:
	.loc 1 787 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# x, x
	movl	%esi, -44(%rbp)	# check_mode, check_mode
	.loc 1 788 0
	movq	-40(%rbp), %rax	# x, tmp72
	movzbl	2(%rax), %eax	# x_1(D)->mode, D.18777
	movzbl	%al, %eax	# D.18777, tmp73
	movl	%eax, -24(%rbp)	# tmp73, mode
	.loc 1 790 0
	movq	-40(%rbp), %rax	# x, tmp74
	movq	8(%rax), %rax	# x_1(D)->fld[0].rtx, tmp75
	movq	%rax, -8(%rbp)	# tmp75, reg
	.loc 1 794 0
	movq	-40(%rbp), %rax	# x, tmp76
	movzwl	(%rax), %eax	# x_1(D)->code, D.18778
	cmpw	$63, %ax	#, D.18778
	jne	.L146	#,
	.loc 1 795 0
	movq	-8(%rbp), %rax	# reg, tmp77
	movzwl	(%rax), %eax	# reg_4->code, D.18778
	cmpw	$61, %ax	#, D.18778
	je	.L147	#,
.L146:
	.loc 1 796 0
	movl	$__FUNCTION__.13452, %edx	#,
	movl	$796, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L147:
	.loc 1 797 0
	movq	-8(%rbp), %rax	# reg, tmp78
	movl	8(%rax), %eax	# reg_4->fld[0].rtuint, tmp79
	movl	%eax, -20(%rbp)	# tmp79, base_regno
	.loc 1 798 0
	cmpl	$52, -20(%rbp)	#, base_regno
	jbe	.L148	#,
	.loc 1 799 0
	movl	$__FUNCTION__.13452, %edx	#,
	movl	$799, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L148:
	.loc 1 800 0
	cmpl	$0, -44(%rbp)	#, check_mode
	je	.L149	#,
	.loc 1 800 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# reg, tmp80
	movzbl	2(%rax), %eax	# reg_4->mode, D.18777
	movzbl	%al, %edx	# D.18777, D.18779
	movl	-20(%rbp), %eax	# base_regno, base_regno.67
	movl	%edx, %esi	# D.18779,
	movl	%eax, %edi	# base_regno.67,
	call	ix86_hard_regno_mode_ok	#
	testl	%eax, %eax	# D.18780
	jne	.L149	#,
	.loc 1 801 0 is_stmt 1
	movl	$__FUNCTION__.13452, %edx	#,
	movl	$801, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L149:
	.loc 1 804 0
	movq	-40(%rbp), %rax	# x, tmp81
	movl	16(%rax), %eax	# x_1(D)->fld[1].rtuint, tmp82
	movl	%eax, -16(%rbp)	# tmp82, byte_offset
	.loc 1 805 0
	movl	-24(%rbp), %eax	# mode, mode.68
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.18777
	movzbl	%al, %ecx	# D.18777, D.18781
	movl	-16(%rbp), %eax	# byte_offset, tmp84
	movl	$0, %edx	#, tmp85
	divl	%ecx	# D.18781
	movl	%edx, %eax	# tmp85, D.18781
	testl	%eax, %eax	# D.18781
	je	.L150	#,
	.loc 1 806 0
	movl	$__FUNCTION__.13452, %edx	#,
	movl	$806, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L150:
	.loc 1 808 0
	movq	-40(%rbp), %rax	# x, tmp87
	movq	%rax, %rdi	# tmp87,
	call	subreg_regno	#
	movl	%eax, -12(%rbp)	# tmp88, final_regno
	.loc 1 810 0
	movl	-12(%rbp), %eax	# final_regno, D.18780
	.loc 1 811 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE25:
	.size	subreg_hard_regno, .-subreg_hard_regno
	.globl	gen_lowpart_common
	.type	gen_lowpart_common, @function
gen_lowpart_common:
.LFB26:
	.loc 1 828 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$168, %rsp	#,
	.cfi_offset 3, -24
	movl	%edi, -132(%rbp)	# mode, mode
	movq	%rsi, -144(%rbp)	# x, x
	.loc 1 829 0
	movl	-132(%rbp), %eax	# mode, mode.69
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.18783
	movzbl	%al, %eax	# D.18783, tmp215
	movl	%eax, -128(%rbp)	# tmp215, msize
	.loc 1 830 0
	movq	-144(%rbp), %rax	# x, tmp216
	movzbl	2(%rax), %eax	# x_14(D)->mode, D.18783
	movzbl	%al, %eax	# D.18783, D.18784
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.18783
	movzbl	%al, %eax	# D.18783, tmp218
	movl	%eax, -124(%rbp)	# tmp218, xsize
	.loc 1 831 0
	movl	$0, -120(%rbp)	#, offset
	.loc 1 833 0
	movq	-144(%rbp), %rax	# x, tmp219
	movzbl	2(%rax), %eax	# x_14(D)->mode, D.18783
	movzbl	%al, %eax	# D.18783, D.18785
	cmpl	-132(%rbp), %eax	# mode, D.18785
	jne	.L153	#,
	.loc 1 834 0
	movq	-144(%rbp), %rax	# x, D.18782
	jmp	.L154	#
.L153:
	.loc 1 837 0
	movq	-144(%rbp), %rax	# x, tmp220
	movzbl	2(%rax), %eax	# x_14(D)->mode, D.18783
	testb	%al, %al	# D.18783
	je	.L155	#,
	.loc 1 838 0
	movl	target_flags(%rip), %eax	# target_flags, target_flags.71
	andl	$33554432, %eax	#, D.18784
	testl	%eax, %eax	# D.18784
	je	.L156	#,
	.loc 1 838 0 is_stmt 0 discriminator 1
	movl	$7, %eax	#, iftmp.70
	jmp	.L157	#
.L156:
	.loc 1 838 0 discriminator 2
	movl	$3, %eax	#, iftmp.70
.L157:
	.loc 1 838 0 discriminator 3
	movl	-128(%rbp), %edx	# msize, tmp221
	addl	%edx, %eax	# tmp221, D.18784
	movl	target_flags(%rip), %edx	# target_flags, target_flags.73
	andl	$33554432, %edx	#, D.18784
	testl	%edx, %edx	# D.18784
	je	.L158	#,
	.loc 1 838 0 discriminator 1
	movl	$8, %ebx	#, iftmp.72
	jmp	.L159	#
.L158:
	.loc 1 838 0 discriminator 2
	movl	$4, %ebx	#, iftmp.72
.L159:
	.loc 1 838 0 discriminator 3
	cltd
	idivl	%ebx	# iftmp.72
	movl	%eax, %ecx	# tmp222, D.18784
	.loc 1 839 0 is_stmt 1 discriminator 3
	movl	target_flags(%rip), %eax	# target_flags, target_flags.75
	andl	$33554432, %eax	#, D.18784
	testl	%eax, %eax	# D.18784
	je	.L160	#,
	.loc 1 839 0 is_stmt 0 discriminator 1
	movl	$7, %eax	#, iftmp.74
	jmp	.L161	#
.L160:
	.loc 1 839 0 discriminator 2
	movl	$3, %eax	#, iftmp.74
.L161:
	.loc 1 839 0 discriminator 3
	movl	-124(%rbp), %edx	# xsize, tmp224
	addl	%edx, %eax	# tmp224, D.18784
	movl	target_flags(%rip), %edx	# target_flags, target_flags.77
	andl	$33554432, %edx	#, D.18784
	testl	%edx, %edx	# D.18784
	je	.L162	#,
	.loc 1 839 0 discriminator 1
	movl	$8, %ebx	#, iftmp.76
	jmp	.L163	#
.L162:
	.loc 1 839 0 discriminator 2
	movl	$4, %ebx	#, iftmp.76
.L163:
	.loc 1 839 0 discriminator 3
	cltd
	idivl	%ebx	# iftmp.76
	.loc 1 838 0 is_stmt 1 discriminator 3
	cmpl	%eax, %ecx	# D.18784, D.18784
	jle	.L155	#,
	.loc 1 840 0
	movl	$0, %eax	#, D.18782
	jmp	.L154	#
.L155:
	.loc 1 843 0
	movl	-132(%rbp), %eax	# mode, mode.78
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.18786
	cmpl	$2, %eax	#, D.18786
	jne	.L164	#,
	.loc 1 844 0
	movq	-144(%rbp), %rax	# x, tmp228
	movzbl	2(%rax), %eax	# x_14(D)->mode, D.18783
	testb	%al, %al	# D.18783
	je	.L164	#,
	.loc 1 844 0 is_stmt 0 discriminator 1
	movl	-128(%rbp), %eax	# msize, tmp229
	cmpl	-124(%rbp), %eax	# xsize, tmp229
	jle	.L164	#,
	.loc 1 845 0 is_stmt 1
	movl	$0, %eax	#, D.18782
	jmp	.L154	#
.L164:
	.loc 1 847 0
	movq	-144(%rbp), %rax	# x, tmp230
	movzbl	2(%rax), %eax	# x_14(D)->mode, D.18783
	movzbl	%al, %edx	# D.18783, D.18787
	movl	-132(%rbp), %eax	# mode, tmp231
	movl	%edx, %esi	# D.18787,
	movl	%eax, %edi	# tmp231,
	call	subreg_lowpart_offset	#
	movl	%eax, -120(%rbp)	# D.18785, offset
	.loc 1 849 0
	movq	-144(%rbp), %rax	# x, tmp232
	movzwl	(%rax), %eax	# x_14(D)->code, D.18788
	cmpw	$121, %ax	#, D.18788
	je	.L165	#,
	.loc 1 849 0 is_stmt 0 discriminator 1
	movq	-144(%rbp), %rax	# x, tmp233
	movzwl	(%rax), %eax	# x_14(D)->code, D.18788
	cmpw	$120, %ax	#, D.18788
	jne	.L166	#,
.L165:
	.loc 1 850 0 is_stmt 1
	movl	-132(%rbp), %eax	# mode, mode.79
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.18786
	cmpl	$1, %eax	#, D.18786
	je	.L167	#,
	.loc 1 851 0
	movl	-132(%rbp), %eax	# mode, mode.80
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.18786
	cmpl	$3, %eax	#, D.18786
	jne	.L166	#,
.L167:
	.loc 1 861 0
	movq	-144(%rbp), %rax	# x, tmp236
	movq	8(%rax), %rax	# x_14(D)->fld[0].rtx, D.18789
	movzbl	2(%rax), %eax	# _59->mode, D.18783
	movzbl	%al, %eax	# D.18783, D.18785
	cmpl	-132(%rbp), %eax	# mode, D.18785
	jne	.L168	#,
	.loc 1 862 0
	movq	-144(%rbp), %rax	# x, tmp237
	movq	8(%rax), %rax	# x_14(D)->fld[0].rtx, D.18782
	jmp	.L154	#
.L168:
	.loc 1 863 0
	movl	-132(%rbp), %eax	# mode, mode.81
	cltq
	movzbl	mode_size(%rax), %edx	# mode_size, D.18783
	movq	-144(%rbp), %rax	# x, tmp239
	movq	8(%rax), %rax	# x_14(D)->fld[0].rtx, D.18789
	movzbl	2(%rax), %eax	# _65->mode, D.18783
	movzbl	%al, %eax	# D.18783, D.18784
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.18783
	cmpb	%al, %dl	# D.18783, D.18783
	jae	.L169	#,
	.loc 1 864 0
	movq	-144(%rbp), %rax	# x, tmp241
	movq	8(%rax), %rdx	# x_14(D)->fld[0].rtx, D.18789
	movl	-132(%rbp), %eax	# mode, tmp242
	movq	%rdx, %rsi	# D.18789,
	movl	%eax, %edi	# tmp242,
	call	gen_lowpart_common	#
	jmp	.L154	#
.L169:
	.loc 1 865 0
	movl	-132(%rbp), %eax	# mode, mode.82
	cltq
	movzbl	mode_size(%rax), %edx	# mode_size, D.18783
	movq	-144(%rbp), %rax	# x, tmp244
	movzbl	2(%rax), %eax	# x_14(D)->mode, D.18783
	movzbl	%al, %eax	# D.18783, D.18784
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.18783
	cmpb	%al, %dl	# D.18783, D.18783
	jae	.L170	#,
	.loc 1 866 0
	movq	-144(%rbp), %rax	# x, tmp246
	movq	8(%rax), %rdx	# x_14(D)->fld[0].rtx, D.18789
	movq	-144(%rbp), %rax	# x, tmp247
	movzwl	(%rax), %eax	# x_14(D)->code, D.18788
	movzwl	%ax, %eax	# D.18788, D.18790
	movl	-132(%rbp), %ecx	# mode, tmp248
	movl	%ecx, %esi	# tmp248,
	movl	%eax, %edi	# D.18790,
	call	gen_rtx_fmt_e	#
	jmp	.L154	#
.L170:
	.loc 1 861 0
	jmp	.L171	#
.L166:
	.loc 1 868 0
	movq	-144(%rbp), %rax	# x, tmp249
	movzwl	(%rax), %eax	# x_14(D)->code, D.18788
	cmpw	$63, %ax	#, D.18788
	je	.L172	#,
	.loc 1 868 0 is_stmt 0 discriminator 1
	movq	-144(%rbp), %rax	# x, tmp250
	movzwl	(%rax), %eax	# x_14(D)->code, D.18788
	cmpw	$61, %ax	#, D.18788
	je	.L172	#,
	.loc 1 869 0 is_stmt 1
	movq	-144(%rbp), %rax	# x, tmp251
	movzwl	(%rax), %eax	# x_14(D)->code, D.18788
	cmpw	$65, %ax	#, D.18788
	jne	.L173	#,
.L172:
	.loc 1 870 0
	movl	-120(%rbp), %ecx	# offset, offset.83
	movq	-144(%rbp), %rax	# x, tmp252
	movzbl	2(%rax), %eax	# x_14(D)->mode, D.18783
	movzbl	%al, %edx	# D.18783, D.18787
	movq	-144(%rbp), %rsi	# x, tmp253
	movl	-132(%rbp), %eax	# mode, tmp254
	movl	%eax, %edi	# tmp254,
	call	simplify_gen_subreg	#
	jmp	.L154	#
.L173:
	.loc 1 873 0
	movl	-132(%rbp), %eax	# mode, mode.84
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.18786
	cmpl	$1, %eax	#, D.18786
	je	.L174	#,
	.loc 1 874 0
	movl	-132(%rbp), %eax	# mode, mode.85
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.18786
	cmpl	$3, %eax	#, D.18786
	jne	.L175	#,
.L174:
	.loc 1 875 0
	movq	-144(%rbp), %rax	# x, tmp257
	movzbl	2(%rax), %eax	# x_14(D)->mode, D.18783
	testb	%al, %al	# D.18783
	jne	.L175	#,
	.loc 1 876 0
	movq	-144(%rbp), %rax	# x, tmp258
	movzwl	(%rax), %eax	# x_14(D)->code, D.18788
	cmpw	$54, %ax	#, D.18788
	je	.L176	#,
	.loc 1 876 0 is_stmt 0 discriminator 1
	movq	-144(%rbp), %rax	# x, tmp259
	movzwl	(%rax), %eax	# x_14(D)->code, D.18788
	cmpw	$55, %ax	#, D.18788
	jne	.L175	#,
.L176:
	.loc 1 882 0 is_stmt 1
	movl	-132(%rbp), %eax	# mode, mode.86
	cltq
	movzwl	mode_bitsize(%rax,%rax), %eax	# mode_bitsize, D.18788
	cmpw	$127, %ax	#, D.18788
	jbe	.L177	#,
	.loc 1 883 0
	movq	-144(%rbp), %rax	# x, D.18782
	jmp	.L154	#
.L177:
	.loc 1 884 0
	movl	-132(%rbp), %eax	# mode, mode.87
	cltq
	movzwl	mode_bitsize(%rax,%rax), %eax	# mode_bitsize, D.18788
	cmpw	$64, %ax	#, D.18788
	jbe	.L178	#,
	.loc 1 885 0
	movl	$0, %eax	#, D.18782
	jmp	.L154	#
.L178:
	.loc 1 886 0
	movl	-132(%rbp), %eax	# mode, mode.88
	cltq
	movzwl	mode_bitsize(%rax,%rax), %eax	# mode_bitsize, D.18788
	cmpw	$64, %ax	#, D.18788
	jne	.L179	#,
	.loc 1 887 0
	movq	-144(%rbp), %rax	# x, tmp263
	movzwl	(%rax), %eax	# x_14(D)->code, D.18788
	.loc 1 888 0
	cmpw	$54, %ax	#, D.18788
	je	.L180	#,
	.loc 1 888 0 is_stmt 0 discriminator 1
	movq	-144(%rbp), %rax	# x, tmp264
	movq	16(%rax), %rax	# x_14(D)->fld[1].rtwint, D.18791
	movq	%rax, %rsi	# D.18791,
	movl	$0, %edi	#,
	call	gen_rtx_CONST_INT	#
	jmp	.L181	#
.L180:
	.loc 1 888 0 discriminator 2
	movq	-144(%rbp), %rax	# x, iftmp.89
.L181:
	.loc 1 887 0 is_stmt 1
	jmp	.L154	#
.L179:
.LBB12:
	.loc 1 892 0
	movq	-144(%rbp), %rax	# x, tmp265
	movzwl	(%rax), %eax	# x_14(D)->code, D.18788
	.loc 1 893 0
	cmpw	$54, %ax	#, D.18788
	jne	.L182	#,
	.loc 1 893 0 is_stmt 0 discriminator 1
	movq	-144(%rbp), %rax	# x, tmp266
	movq	8(%rax), %rax	# x_14(D)->fld[0].rtwint, iftmp.90
	jmp	.L183	#
.L182:
	.loc 1 893 0 discriminator 2
	movq	-144(%rbp), %rax	# x, tmp267
	movq	16(%rax), %rax	# x_14(D)->fld[1].rtwint, iftmp.90
.L183:
	.loc 1 892 0 is_stmt 1
	movq	%rax, -104(%rbp)	# iftmp.90, val
	.loc 1 896 0
	movl	-132(%rbp), %edx	# mode, tmp268
	movq	-104(%rbp), %rax	# val, tmp269
	movl	%edx, %esi	# tmp268,
	movq	%rax, %rdi	# tmp269,
	call	trunc_int_for_mode	#
	movq	%rax, -104(%rbp)	# tmp270, val
	.loc 1 898 0
	movq	-144(%rbp), %rax	# x, tmp271
	movzwl	(%rax), %eax	# x_14(D)->code, D.18788
	.loc 1 899 0
	cmpw	$54, %ax	#, D.18788
	jne	.L184	#,
	.loc 1 898 0
	movq	-144(%rbp), %rax	# x, tmp272
	movq	8(%rax), %rax	# x_14(D)->fld[0].rtwint, D.18791
	cmpq	-104(%rbp), %rax	# val, D.18791
	je	.L185	#,
.L184:
	.loc 1 899 0 discriminator 1
	movq	-104(%rbp), %rax	# val, tmp273
	movq	%rax, %rsi	# tmp273,
	movl	$0, %edi	#,
	call	gen_rtx_CONST_INT	#
	jmp	.L186	#
.L185:
	.loc 1 899 0 is_stmt 0
	movq	-144(%rbp), %rax	# x, iftmp.91
.L186:
	.loc 1 898 0 is_stmt 1
	jmp	.L154	#
.L175:
.LBE12:
	.loc 1 997 0
	movl	-132(%rbp), %eax	# mode, mode.92
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.18786
	cmpl	$2, %eax	#, D.18786
	jne	.L187	#,
	.loc 1 998 0
	movl	-132(%rbp), %eax	# mode, mode.93
	cltq
	movzwl	mode_bitsize(%rax,%rax), %eax	# mode_bitsize, D.18788
	cmpw	$32, %ax	#, D.18788
	jne	.L187	#,
	.loc 1 999 0
	movq	-144(%rbp), %rax	# x, tmp276
	movzwl	(%rax), %eax	# x_14(D)->code, D.18788
	cmpw	$54, %ax	#, D.18788
	jne	.L187	#,
.LBB13:
	.loc 1 1004 0
	movq	-144(%rbp), %rax	# x, tmp277
	movq	8(%rax), %rax	# x_14(D)->fld[0].rtwint, tmp278
	movq	%rax, -96(%rbp)	# tmp278, i
	.loc 1 1005 0
	leaq	-48(%rbp), %rax	#, tmp279
	movq	-96(%rbp), %rdx	# i, tmp280
	movq	%rdx, %rsi	# tmp280,
	movq	%rax, %rdi	# tmp279,
	call	ereal_from_float	#
	.loc 1 1006 0
	movl	-132(%rbp), %eax	# mode, tmp281
	movq	-48(%rbp), %rdx	# r, tmp282
	movq	%rdx, (%rsp)	# tmp282,
	movq	-40(%rbp), %rdx	# r, tmp283
	movq	%rdx, 8(%rsp)	# tmp283,
	movq	-32(%rbp), %rdx	# r, tmp284
	movq	%rdx, 16(%rsp)	# tmp284,
	movl	%eax, %edi	# tmp281,
	call	immed_real_const_1	#
	jmp	.L154	#
.L187:
.LBE13:
	.loc 1 1008 0
	movl	-132(%rbp), %eax	# mode, mode.94
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.18786
	cmpl	$2, %eax	#, D.18786
	jne	.L188	#,
	.loc 1 1009 0
	movl	-132(%rbp), %eax	# mode, mode.95
	cltq
	movzwl	mode_bitsize(%rax,%rax), %eax	# mode_bitsize, D.18788
	cmpw	$64, %ax	#, D.18788
	jne	.L188	#,
	.loc 1 1010 0
	movq	-144(%rbp), %rax	# x, tmp287
	movzwl	(%rax), %eax	# x_14(D)->code, D.18788
	cmpw	$54, %ax	#, D.18788
	je	.L189	#,
	.loc 1 1010 0 is_stmt 0 discriminator 1
	movq	-144(%rbp), %rax	# x, tmp288
	movzwl	(%rax), %eax	# x_14(D)->code, D.18788
	cmpw	$55, %ax	#, D.18788
	jne	.L188	#,
.L189:
	.loc 1 1011 0 is_stmt 1
	movq	-144(%rbp), %rax	# x, tmp289
	movzbl	2(%rax), %eax	# x_14(D)->mode, D.18783
	testb	%al, %al	# D.18783
	jne	.L188	#,
.LBB14:
	.loc 1 1017 0
	movq	-144(%rbp), %rax	# x, tmp290
	movzwl	(%rax), %eax	# x_14(D)->code, D.18788
	cmpw	$54, %ax	#, D.18788
	jne	.L190	#,
	.loc 1 1019 0
	movq	-144(%rbp), %rax	# x, tmp291
	movq	8(%rax), %rax	# x_14(D)->fld[0].rtwint, tmp292
	movq	%rax, -112(%rbp)	# tmp292, low
	.loc 1 1020 0
	movq	-112(%rbp), %rax	# low, tmp296
	sarq	$63, %rax	#, tmp295
	movq	%rax, -88(%rbp)	# tmp295, high
	jmp	.L191	#
.L190:
	.loc 1 1024 0
	movq	-144(%rbp), %rax	# x, tmp297
	movq	16(%rax), %rax	# x_14(D)->fld[1].rtwint, tmp298
	movq	%rax, -112(%rbp)	# tmp298, low
	.loc 1 1025 0
	movq	-144(%rbp), %rax	# x, tmp299
	movq	24(%rax), %rax	# x_14(D)->fld[2].rtwint, tmp300
	movq	%rax, -88(%rbp)	# tmp300, high
.L191:
	.loc 1 1036 0
	movq	-112(%rbp), %rax	# low, tmp301
	movq	%rax, -80(%rbp)	# tmp301, i
	.loc 1 1039 0
	leaq	-48(%rbp), %rax	#, tmp302
	leaq	-80(%rbp), %rdx	#, tmp303
	movq	%rdx, %rsi	# tmp303,
	movq	%rax, %rdi	# tmp302,
	call	ereal_from_double	#
	.loc 1 1040 0
	movl	-132(%rbp), %eax	# mode, tmp304
	movq	-48(%rbp), %rdx	# r, tmp305
	movq	%rdx, (%rsp)	# tmp305,
	movq	-40(%rbp), %rdx	# r, tmp306
	movq	%rdx, 8(%rsp)	# tmp306,
	movq	-32(%rbp), %rdx	# r, tmp307
	movq	%rdx, 16(%rsp)	# tmp307,
	movl	%eax, %edi	# tmp304,
	call	immed_real_const_1	#
	jmp	.L154	#
.L188:
.LBE14:
	.loc 1 1042 0
	movl	-132(%rbp), %eax	# mode, mode.96
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.18786
	cmpl	$1, %eax	#, D.18786
	je	.L192	#,
	.loc 1 1043 0
	movl	-132(%rbp), %eax	# mode, mode.97
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.18786
	cmpl	$3, %eax	#, D.18786
	jne	.L171	#,
.L192:
	.loc 1 1044 0
	movq	-144(%rbp), %rax	# x, tmp310
	movzwl	(%rax), %eax	# x_14(D)->code, D.18788
	cmpw	$55, %ax	#, D.18788
	jne	.L171	#,
	.loc 1 1045 0
	movq	-144(%rbp), %rax	# x, tmp311
	movzbl	2(%rax), %eax	# x_14(D)->mode, D.18783
	movzbl	%al, %eax	# D.18783, D.18784
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.18786
	cmpl	$2, %eax	#, D.18786
	jne	.L171	#,
.LBB15:
	.loc 1 1049 0
	movl	$0, -116(%rbp)	#, endian
.LBB16:
	.loc 1 1053 0
	movq	-144(%rbp), %rax	# x, tmp313
	leaq	16(%rax), %rcx	#, D.18792
	leaq	-48(%rbp), %rax	#, tmp314
	movl	$24, %edx	#,
	movq	%rcx, %rsi	# D.18792,
	movq	%rax, %rdi	# tmp314,
	call	memcpy	#
	movq	-48(%rbp), %rax	# u.d, tmp315
	movq	%rax, -80(%rbp)	# tmp315, r
	movq	-40(%rbp), %rax	# u.d, tmp316
	movq	%rax, -72(%rbp)	# tmp316, r
	movq	-32(%rbp), %rax	# u.d, tmp317
	movq	%rax, -64(%rbp)	# tmp317, r
.LBE16:
	.loc 1 1054 0
	movq	-144(%rbp), %rax	# x, tmp318
	movzbl	2(%rax), %eax	# x_14(D)->mode, D.18783
	movzbl	%al, %eax	# D.18783, D.18784
	cltq
	movzwl	mode_bitsize(%rax,%rax), %eax	# mode_bitsize, D.18788
	movzwl	%ax, %eax	# D.18788, D.18784
	cmpl	$64, %eax	#, D.18784
	je	.L194	#,
	cmpl	$64, %eax	#, D.18784
	jg	.L195	#,
	cmpl	$32, %eax	#, D.18784
	je	.L196	#,
	jmp	.L193	#
.L195:
	cmpl	$96, %eax	#, D.18784
	je	.L197	#,
	cmpl	$128, %eax	#, D.18784
	je	.L198	#,
	jmp	.L193	#
.L196:
	.loc 1 1057 0
	movl	-116(%rbp), %edx	# endian, tmp320
	movl	%edx, %eax	# tmp320, tmp321
	addl	%eax, %eax	# tmp321
	leal	(%rax,%rdx), %ebx	#, D.18784
	movq	-80(%rbp), %rax	# r, tmp322
	movq	%rax, (%rsp)	# tmp322,
	movq	-72(%rbp), %rax	# r, tmp323
	movq	%rax, 8(%rsp)	# tmp323,
	movq	-64(%rbp), %rax	# r, tmp324
	movq	%rax, 16(%rsp)	# tmp324,
	call	etarsingle	#
	movslq	%ebx, %rdx	# D.18784, tmp325
	movq	%rax, -48(%rbp,%rdx,8)	# D.18791, i
	.loc 1 1058 0
	movq	$0, -40(%rbp)	#, i
	.loc 1 1059 0
	movq	$0, -32(%rbp)	#, i
	.loc 1 1060 0
	movl	-116(%rbp), %edx	# endian, tmp326
	movl	%edx, %eax	# tmp326, tmp327
	addl	%eax, %eax	# tmp327
	addl	%edx, %eax	# tmp326, D.18784
	negl	%eax	# D.18784
	addl	$3, %eax	#, D.18784
	cltq
	movq	$0, -48(%rbp,%rax,8)	#, i
	.loc 1 1061 0
	jmp	.L199	#
.L194:
	.loc 1 1063 0
	movl	-116(%rbp), %eax	# endian, tmp329
	cltq
	salq	$4, %rax	#, D.18793
	movq	%rax, %rdx	# D.18793, D.18793
	leaq	-48(%rbp), %rax	#, tmp330
	addq	%rax, %rdx	# tmp330, D.18792
	movq	-80(%rbp), %rax	# r, tmp331
	movq	%rax, (%rsp)	# tmp331,
	movq	-72(%rbp), %rax	# r, tmp332
	movq	%rax, 8(%rsp)	# tmp332,
	movq	-64(%rbp), %rax	# r, tmp333
	movq	%rax, 16(%rsp)	# tmp333,
	movq	%rdx, %rdi	# D.18792,
	call	etardouble	#
	.loc 1 1064 0
	movl	-116(%rbp), %edx	# endian, tmp334
	movl	$0, %eax	#, tmp335
	subl	%edx, %eax	# tmp334, tmp335
	addl	%eax, %eax	# tmp336
	addl	$2, %eax	#, D.18784
	cltq
	movq	$0, -48(%rbp,%rax,8)	#, i
	.loc 1 1065 0
	movl	-116(%rbp), %edx	# endian, tmp338
	movl	$0, %eax	#, tmp339
	subl	%edx, %eax	# tmp338, tmp339
	addl	%eax, %eax	# tmp340
	addl	$3, %eax	#, D.18784
	cltq
	movq	$0, -48(%rbp,%rax,8)	#, i
	.loc 1 1066 0
	jmp	.L199	#
.L197:
	.loc 1 1068 0
	movl	target_flags(%rip), %eax	# target_flags, target_flags.98
	andl	$16777216, %eax	#, D.18784
	testl	%eax, %eax	# D.18784
	jne	.L200	#,
	.loc 1 1068 0 is_stmt 0 discriminator 1
	movl	-116(%rbp), %eax	# endian, tmp342
	cltq
	leaq	0(,%rax,8), %rdx	#, D.18793
	leaq	-48(%rbp), %rax	#, tmp343
	addq	%rax, %rdx	# tmp343, D.18792
	movq	-80(%rbp), %rax	# r, tmp344
	movq	%rax, (%rsp)	# tmp344,
	movq	-72(%rbp), %rax	# r, tmp345
	movq	%rax, 8(%rsp)	# tmp345,
	movq	-64(%rbp), %rax	# r, tmp346
	movq	%rax, 16(%rsp)	# tmp346,
	movq	%rdx, %rdi	# D.18792,
	call	etarldouble	#
	jmp	.L201	#
.L200:
	.loc 1 1068 0 discriminator 2
	movl	target_flags(%rip), %eax	# target_flags, target_flags.99
	andl	$16777216, %eax	#, D.18784
	testl	%eax, %eax	# D.18784
	je	.L202	#,
	.loc 1 1068 0 discriminator 1
	movl	-116(%rbp), %eax	# endian, tmp347
	cltq
	leaq	0(,%rax,8), %rdx	#, D.18793
	leaq	-48(%rbp), %rax	#, tmp348
	addq	%rax, %rdx	# tmp348, D.18792
	movq	-80(%rbp), %rax	# r, tmp349
	movq	%rax, (%rsp)	# tmp349,
	movq	-72(%rbp), %rax	# r, tmp350
	movq	%rax, 8(%rsp)	# tmp350,
	movq	-64(%rbp), %rax	# r, tmp351
	movq	%rax, 16(%rsp)	# tmp351,
	movq	%rdx, %rdi	# D.18792,
	call	etartdouble	#
	jmp	.L201	#
.L202:
	.loc 1 1068 0 discriminator 2
	movl	$__FUNCTION__.13475, %edx	#,
	movl	$1068, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L201:
	.loc 1 1069 0 is_stmt 1
	movl	-116(%rbp), %edx	# endian, tmp352
	movl	%edx, %eax	# tmp352, tmp353
	addl	%eax, %eax	# tmp353
	addl	%edx, %eax	# tmp352, D.18784
	negl	%eax	# D.18784
	addl	$3, %eax	#, D.18784
	cltq
	movq	$0, -48(%rbp,%rax,8)	#, i
	.loc 1 1070 0
	jmp	.L199	#
.L198:
	.loc 1 1072 0
	movl	target_flags(%rip), %eax	# target_flags, target_flags.100
	andl	$16777216, %eax	#, D.18784
	testl	%eax, %eax	# D.18784
	jne	.L203	#,
	.loc 1 1072 0 is_stmt 0 discriminator 1
	leaq	-48(%rbp), %rax	#, tmp355
	movq	-80(%rbp), %rdx	# r, tmp356
	movq	%rdx, (%rsp)	# tmp356,
	movq	-72(%rbp), %rdx	# r, tmp357
	movq	%rdx, 8(%rsp)	# tmp357,
	movq	-64(%rbp), %rdx	# r, tmp358
	movq	%rdx, 16(%rsp)	# tmp358,
	movq	%rax, %rdi	# tmp355,
	call	etarldouble	#
	jmp	.L204	#
.L203:
	.loc 1 1072 0 discriminator 2
	movl	target_flags(%rip), %eax	# target_flags, target_flags.101
	andl	$16777216, %eax	#, D.18784
	testl	%eax, %eax	# D.18784
	je	.L205	#,
	.loc 1 1072 0 discriminator 1
	leaq	-48(%rbp), %rax	#, tmp359
	movq	-80(%rbp), %rdx	# r, tmp360
	movq	%rdx, (%rsp)	# tmp360,
	movq	-72(%rbp), %rdx	# r, tmp361
	movq	%rdx, 8(%rsp)	# tmp361,
	movq	-64(%rbp), %rdx	# r, tmp362
	movq	%rdx, 16(%rsp)	# tmp362,
	movq	%rax, %rdi	# tmp359,
	call	etartdouble	#
	jmp	.L204	#
.L205:
	.loc 1 1072 0 discriminator 2
	movl	$__FUNCTION__.13475, %edx	#,
	movl	$1072, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L204:
	.loc 1 1073 0 is_stmt 1
	jmp	.L199	#
.L193:
	.loc 1 1075 0
	movl	$__FUNCTION__.13475, %edx	#,
	movl	$1075, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L199:
	.loc 1 1087 0
	movl	$2, %eax	#, tmp363
	subl	-116(%rbp), %eax	# endian, D.18784
	cltq
	movq	-48(%rbp,%rax,8), %rax	# i, D.18791
	movq	%rax, %rcx	# D.18791, D.18793
	.loc 1 1088 0
	movl	-116(%rbp), %edx	# endian, tmp365
	movl	%edx, %eax	# tmp365, tmp366
	addl	%eax, %eax	# tmp366
	addl	%edx, %eax	# tmp365, D.18784
	negl	%eax	# D.18784
	addl	$3, %eax	#, D.18784
	cltq
	movq	-48(%rbp,%rax,8), %rax	# i, D.18791
	salq	$32, %rax	#, D.18791
	orq	%rcx, %rax	# D.18793, D.18793
	.loc 1 1085 0
	movq	%rax, %rcx	# D.18793, D.18791
	movl	-116(%rbp), %edx	# endian, tmp368
	movl	%edx, %eax	# tmp368, tmp369
	addl	%eax, %eax	# tmp369
	addl	%edx, %eax	# tmp368, D.18784
	cltq
	movq	-48(%rbp,%rax,8), %rax	# i, D.18791
	movq	%rax, %rdx	# D.18791, D.18793
	.loc 1 1086 0
	movl	-116(%rbp), %eax	# endian, tmp371
	addl	$1, %eax	#, D.18784
	cltq
	movq	-48(%rbp,%rax,8), %rax	# i, D.18791
	salq	$32, %rax	#, D.18791
	orq	%rdx, %rax	# D.18793, D.18793
	.loc 1 1085 0
	movl	-132(%rbp), %edx	# mode, tmp373
	movq	%rcx, %rsi	# D.18791,
	movq	%rax, %rdi	# D.18791,
	call	immed_double_const	#
	jmp	.L154	#
.L171:
.LBE15:
	.loc 1 1095 0
	movl	$0, %eax	#, D.18782
.L154:
	.loc 1 1096 0
	addq	$168, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE26:
	.size	gen_lowpart_common, .-gen_lowpart_common
	.globl	gen_realpart
	.type	gen_realpart, @function
gen_realpart:
.LFB27:
	.loc 1 1105 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movl	%edi, -4(%rbp)	# mode, mode
	movq	%rsi, -16(%rbp)	# x, x
	.loc 1 1115 0
	movq	-16(%rbp), %rdx	# x, tmp61
	movl	-4(%rbp), %eax	# mode, tmp62
	movq	%rdx, %rsi	# tmp61,
	movl	%eax, %edi	# tmp62,
	call	gen_lowpart	#
	.loc 1 1116 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE27:
	.size	gen_realpart, .-gen_realpart
	.section	.rodata
	.align 8
.LC1:
	.string	"can't access imaginary part of complex value in hard register"
	.text
	.globl	gen_imagpart
	.type	gen_imagpart, @function
gen_imagpart:
.LFB28:
	.loc 1 1125 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movl	%edi, -4(%rbp)	# mode, mode
	movq	%rsi, -16(%rbp)	# x, x
	.loc 1 1129 0
	movl	-4(%rbp), %eax	# mode, mode.102
	cltq
	movzwl	mode_bitsize(%rax,%rax), %eax	# mode_bitsize, D.18800
	movzwl	%ax, %edx	# D.18800, D.18801
	movl	target_flags(%rip), %eax	# target_flags, target_flags.104
	andl	$33554432, %eax	#, D.18801
	testl	%eax, %eax	# D.18801
	je	.L209	#,
	.loc 1 1129 0 is_stmt 0 discriminator 1
	movl	$64, %eax	#, iftmp.103
	jmp	.L210	#
.L209:
	.loc 1 1129 0 discriminator 2
	movl	$32, %eax	#, iftmp.103
.L210:
	.loc 1 1128 0 is_stmt 1
	cmpl	%eax, %edx	# iftmp.103, D.18801
	jge	.L211	#,
	.loc 1 1130 0
	movq	-16(%rbp), %rax	# x, tmp70
	movzwl	(%rax), %eax	# x_10(D)->code, D.18800
	cmpw	$61, %ax	#, D.18800
	jne	.L211	#,
	.loc 1 1131 0
	movq	-16(%rbp), %rax	# x, tmp71
	movl	8(%rax), %eax	# x_10(D)->fld[0].rtuint, D.18802
	cmpl	$52, %eax	#, D.18802
	ja	.L211	#,
	.loc 1 1133 0
	movl	$.LC1, %edi	#,
	movl	$0, %eax	#,
	call	internal_error	#
.L211:
	.loc 1 1135 0
	movq	-16(%rbp), %rdx	# x, tmp72
	movl	-4(%rbp), %eax	# mode, tmp73
	movq	%rdx, %rsi	# tmp72,
	movl	%eax, %edi	# tmp73,
	call	gen_highpart	#
	.loc 1 1136 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE28:
	.size	gen_imagpart, .-gen_imagpart
	.globl	subreg_realpart_p
	.type	subreg_realpart_p, @function
subreg_realpart_p:
.LFB29:
	.loc 1 1146 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# x, x
	.loc 1 1147 0
	movq	-8(%rbp), %rax	# x, tmp69
	movzwl	(%rax), %eax	# x_1(D)->code, D.18805
	cmpw	$63, %ax	#, D.18805
	je	.L214	#,
	.loc 1 1148 0
	movl	$__FUNCTION__.13489, %edx	#,
	movl	$1148, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L214:
	.loc 1 1150 0
	movq	-8(%rbp), %rax	# x, tmp70
	movl	16(%rax), %edx	# x_1(D)->fld[1].rtuint, D.18806
	.loc 1 1151 0
	movq	-8(%rbp), %rax	# x, tmp71
	movq	8(%rax), %rax	# x_1(D)->fld[0].rtx, D.18807
	movzbl	2(%rax), %eax	# _4->mode, D.18808
	movzbl	%al, %eax	# D.18808, D.18809
	cltq
	movzbl	mode_unit_size(%rax), %eax	# mode_unit_size, D.18808
	movzbl	%al, %eax	# D.18808, D.18806
	cmpl	%eax, %edx	# D.18806, D.18806
	setb	%al	#, D.18810
	.loc 1 1150 0
	movzbl	%al, %eax	# D.18810, D.18809
	.loc 1 1152 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE29:
	.size	subreg_realpart_p, .-subreg_realpart_p
	.globl	gen_lowpart
	.type	gen_lowpart, @function
gen_lowpart:
.LFB30:
	.loc 1 1165 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	%edi, -20(%rbp)	# mode, mode
	movq	%rsi, -32(%rbp)	# x, x
	.loc 1 1166 0
	movq	-32(%rbp), %rdx	# x, tmp69
	movl	-20(%rbp), %eax	# mode, tmp70
	movq	%rdx, %rsi	# tmp69,
	movl	%eax, %edi	# tmp70,
	call	gen_lowpart_common	#
	movq	%rax, -8(%rbp)	# tmp71, result
	.loc 1 1168 0
	cmpq	$0, -8(%rbp)	#, result
	je	.L217	#,
	.loc 1 1169 0
	movq	-8(%rbp), %rax	# result, D.18811
	jmp	.L218	#
.L217:
	.loc 1 1170 0
	movq	-32(%rbp), %rax	# x, tmp72
	movzwl	(%rax), %eax	# x_3(D)->code, D.18812
	cmpw	$61, %ax	#, D.18812
	jne	.L219	#,
	.loc 1 1173 0
	movq	-32(%rbp), %rax	# x, tmp73
	movq	%rax, %rdi	# tmp73,
	call	copy_to_reg	#
	movq	%rax, %rdx	#, D.18813
	movl	-20(%rbp), %eax	# mode, tmp74
	movq	%rdx, %rsi	# D.18813,
	movl	%eax, %edi	# tmp74,
	call	gen_lowpart_common	#
	movq	%rax, -8(%rbp)	# tmp75, result
	.loc 1 1174 0
	cmpq	$0, -8(%rbp)	#, result
	jne	.L220	#,
	.loc 1 1175 0
	movl	$__FUNCTION__.13495, %edx	#,
	movl	$1175, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L220:
	.loc 1 1176 0
	movq	-8(%rbp), %rax	# result, D.18811
	jmp	.L218	#
.L219:
	.loc 1 1178 0
	movq	-32(%rbp), %rax	# x, tmp76
	movzwl	(%rax), %eax	# x_3(D)->code, D.18812
	cmpw	$66, %ax	#, D.18812
	jne	.L221	#,
.LBB17:
	.loc 1 1181 0
	movl	$0, -12(%rbp)	#, offset
	.loc 1 1192 0
	movl	-12(%rbp), %eax	# offset, tmp77
	movslq	%eax, %rdx	# tmp77, D.18814
	movl	-20(%rbp), %esi	# mode, tmp78
	movq	-32(%rbp), %rax	# x, tmp79
	movl	$1, %r8d	#,
	movl	$1, %ecx	#,
	movq	%rax, %rdi	# tmp79,
	call	adjust_address_1	#
	jmp	.L218	#
.L221:
.LBE17:
	.loc 1 1194 0
	movq	-32(%rbp), %rax	# x, tmp80
	movzwl	(%rax), %eax	# x_3(D)->code, D.18812
	cmpw	$70, %ax	#, D.18812
	jne	.L222	#,
	.loc 1 1195 0
	movq	-32(%rbp), %rax	# x, tmp81
	movzbl	2(%rax), %eax	# x_3(D)->mode, D.18815
	movzbl	%al, %eax	# D.18815, D.18816
	movq	-32(%rbp), %rdx	# x, tmp82
	movq	%rdx, %rsi	# tmp82,
	movl	%eax, %edi	# D.18816,
	call	force_reg	#
	movq	%rax, %rdx	#, D.18813
	movl	-20(%rbp), %eax	# mode, tmp83
	movq	%rdx, %rsi	# D.18813,
	movl	%eax, %edi	# tmp83,
	call	gen_lowpart	#
	jmp	.L218	#
.L222:
	.loc 1 1197 0
	movl	$__FUNCTION__.13495, %edx	#,
	movl	$1197, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L218:
	.loc 1 1198 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE30:
	.size	gen_lowpart, .-gen_lowpart
	.globl	gen_highpart
	.type	gen_highpart, @function
gen_highpart:
.LFB31:
	.loc 1 1207 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	%edi, -20(%rbp)	# mode, mode
	movq	%rsi, -32(%rbp)	# x, x
	.loc 1 1208 0
	movl	-20(%rbp), %eax	# mode, mode.115
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.18817
	movzbl	%al, %eax	# D.18817, tmp77
	movl	%eax, -12(%rbp)	# tmp77, msize
	.loc 1 1213 0
	movl	target_flags(%rip), %eax	# target_flags, target_flags.117
	andl	$33554432, %eax	#, D.18818
	testl	%eax, %eax	# D.18818
	je	.L224	#,
	.loc 1 1213 0 is_stmt 0 discriminator 1
	movl	$8, %eax	#, iftmp.116
	jmp	.L225	#
.L224:
	.loc 1 1213 0 discriminator 2
	movl	$4, %eax	#, iftmp.116
.L225:
	.loc 1 1213 0 discriminator 3
	cmpl	-12(%rbp), %eax	# msize, iftmp.116
	jae	.L226	#,
	.loc 1 1214 0 is_stmt 1
	movq	-32(%rbp), %rax	# x, tmp78
	movzbl	2(%rax), %eax	# x_11(D)->mode, D.18817
	movzbl	%al, %eax	# D.18817, D.18818
	cltq
	movzbl	mode_unit_size(%rax), %eax	# mode_unit_size, D.18817
	movzbl	%al, %eax	# D.18817, D.18819
	cmpl	-12(%rbp), %eax	# msize, D.18819
	je	.L226	#,
	.loc 1 1215 0
	movl	$__FUNCTION__.13503, %edx	#,
	movl	$1215, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L226:
	.loc 1 1218 0
	movq	-32(%rbp), %rax	# x, tmp80
	movzbl	2(%rax), %eax	# x_11(D)->mode, D.18817
	.loc 1 1217 0
	movzbl	%al, %edx	# D.18817, D.18820
	movl	-20(%rbp), %eax	# mode, tmp81
	movl	%edx, %esi	# D.18820,
	movl	%eax, %edi	# tmp81,
	call	subreg_highpart_offset	#
	movl	%eax, %ecx	#, D.18819
	movq	-32(%rbp), %rax	# x, tmp82
	movzbl	2(%rax), %eax	# x_11(D)->mode, D.18817
	movzbl	%al, %edx	# D.18817, D.18820
	movq	-32(%rbp), %rsi	# x, tmp83
	movl	-20(%rbp), %eax	# mode, tmp84
	movl	%eax, %edi	# tmp84,
	call	simplify_gen_subreg	#
	movq	%rax, -8(%rbp)	# tmp85, result
	.loc 1 1223 0
	cmpq	$0, -8(%rbp)	#, result
	je	.L227	#,
	.loc 1 1223 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# result, tmp86
	movzwl	(%rax), %eax	# result_21->code, D.18821
	cmpw	$66, %ax	#, D.18821
	jne	.L227	#,
	.loc 1 1224 0 is_stmt 1
	movq	-8(%rbp), %rax	# result, tmp87
	movq	%rax, %rdi	# tmp87,
	call	validize_mem	#
	movq	%rax, -8(%rbp)	# tmp88, result
.L227:
	.loc 1 1226 0
	cmpq	$0, -8(%rbp)	#, result
	jne	.L228	#,
	.loc 1 1227 0
	movl	$__FUNCTION__.13503, %edx	#,
	movl	$1227, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L228:
	.loc 1 1228 0
	movq	-8(%rbp), %rax	# result, D.18822
	.loc 1 1229 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE31:
	.size	gen_highpart, .-gen_highpart
	.globl	gen_highpart_mode
	.type	gen_highpart_mode, @function
gen_highpart_mode:
.LFB32:
	.loc 1 1237 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movl	%edi, -4(%rbp)	# outermode, outermode
	movl	%esi, -8(%rbp)	# innermode, innermode
	movq	%rdx, -16(%rbp)	# exp, exp
	.loc 1 1238 0
	movq	-16(%rbp), %rax	# exp, tmp65
	movzbl	2(%rax), %eax	# exp_2(D)->mode, D.18824
	testb	%al, %al	# D.18824
	je	.L231	#,
	.loc 1 1240 0
	movq	-16(%rbp), %rax	# exp, tmp66
	movzbl	2(%rax), %eax	# exp_2(D)->mode, D.18824
	movzbl	%al, %eax	# D.18824, D.18825
	cmpl	-8(%rbp), %eax	# innermode, D.18825
	je	.L232	#,
	.loc 1 1241 0
	movl	$__FUNCTION__.13509, %edx	#,
	movl	$1241, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L232:
	.loc 1 1242 0
	movq	-16(%rbp), %rdx	# exp, tmp67
	movl	-4(%rbp), %eax	# outermode, tmp68
	movq	%rdx, %rsi	# tmp67,
	movl	%eax, %edi	# tmp68,
	call	gen_highpart	#
	jmp	.L233	#
.L231:
	.loc 1 1244 0
	movl	-8(%rbp), %edx	# innermode, tmp69
	movl	-4(%rbp), %eax	# outermode, tmp70
	movl	%edx, %esi	# tmp69,
	movl	%eax, %edi	# tmp70,
	call	subreg_highpart_offset	#
	movl	%eax, %ecx	#, D.18825
	movl	-8(%rbp), %edx	# innermode, tmp71
	movq	-16(%rbp), %rsi	# exp, tmp72
	movl	-4(%rbp), %eax	# outermode, tmp73
	movl	%eax, %edi	# tmp73,
	call	simplify_gen_subreg	#
.L233:
	.loc 1 1246 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE32:
	.size	gen_highpart_mode, .-gen_highpart_mode
	.globl	subreg_lowpart_offset
	.type	subreg_lowpart_offset, @function
subreg_lowpart_offset:
.LFB33:
	.loc 1 1253 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)	# outermode, outermode
	movl	%esi, -24(%rbp)	# innermode, innermode
	.loc 1 1254 0
	movl	$0, -8(%rbp)	#, offset
	.loc 1 1255 0
	movl	-24(%rbp), %eax	# innermode, innermode.118
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.18826
	movzbl	%al, %edx	# D.18826, D.18827
	movl	-20(%rbp), %eax	# outermode, outermode.119
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.18826
	movzbl	%al, %eax	# D.18826, D.18827
	subl	%eax, %edx	# D.18827, tmp69
	movl	%edx, %eax	# tmp69, tmp69
	movl	%eax, -4(%rbp)	# tmp69, difference
	.loc 1 1265 0
	movl	-8(%rbp), %eax	# offset, D.18828
	.loc 1 1266 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE33:
	.size	subreg_lowpart_offset, .-subreg_lowpart_offset
	.globl	subreg_highpart_offset
	.type	subreg_highpart_offset, @function
subreg_highpart_offset:
.LFB34:
	.loc 1 1273 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$40, %rsp	#,
	.cfi_offset 3, -24
	movl	%edi, -36(%rbp)	# outermode, outermode
	movl	%esi, -40(%rbp)	# innermode, innermode
	.loc 1 1274 0
	movl	$0, -24(%rbp)	#, offset
	.loc 1 1275 0
	movl	-40(%rbp), %eax	# innermode, innermode.126
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.18829
	movzbl	%al, %edx	# D.18829, D.18830
	movl	-36(%rbp), %eax	# outermode, outermode.127
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.18829
	movzbl	%al, %eax	# D.18829, D.18830
	subl	%eax, %edx	# D.18830, tmp87
	movl	%edx, %eax	# tmp87, tmp87
	movl	%eax, -20(%rbp)	# tmp87, difference
	.loc 1 1277 0
	movl	-40(%rbp), %eax	# innermode, innermode.128
	cltq
	movzbl	mode_size(%rax), %edx	# mode_size, D.18829
	movl	-36(%rbp), %eax	# outermode, outermode.129
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.18829
	cmpb	%al, %dl	# D.18829, D.18829
	jae	.L237	#,
	.loc 1 1278 0
	movl	$__FUNCTION__.13522, %edx	#,
	movl	$1278, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L237:
	.loc 1 1280 0
	cmpl	$0, -20(%rbp)	#, difference
	jle	.L238	#,
	.loc 1 1283 0
	movl	target_flags(%rip), %eax	# target_flags, target_flags.131
	andl	$33554432, %eax	#, D.18830
	testl	%eax, %eax	# D.18830
	je	.L239	#,
	.loc 1 1283 0 is_stmt 0 discriminator 1
	movl	$8, %ebx	#, iftmp.130
	jmp	.L240	#
.L239:
	.loc 1 1283 0 discriminator 2
	movl	$4, %ebx	#, iftmp.130
.L240:
	.loc 1 1283 0 discriminator 3
	movl	-20(%rbp), %eax	# difference, tmp92
	cltd
	idivl	%ebx	# iftmp.130
	movl	%eax, %edx	# tmp90, D.18830
	movl	target_flags(%rip), %eax	# target_flags, target_flags.133
	andl	$33554432, %eax	#, D.18830
	testl	%eax, %eax	# D.18830
	je	.L241	#,
	.loc 1 1283 0 discriminator 1
	movl	$8, %eax	#, iftmp.132
	jmp	.L242	#
.L241:
	.loc 1 1283 0 discriminator 2
	movl	$4, %eax	#, iftmp.132
.L242:
	.loc 1 1283 0 discriminator 3
	imull	%edx, %eax	# D.18830, D.18830
	addl	%eax, -24(%rbp)	# D.18831, offset
	.loc 1 1285 0 is_stmt 1 discriminator 3
	movl	target_flags(%rip), %eax	# target_flags, target_flags.135
	andl	$33554432, %eax	#, D.18830
	testl	%eax, %eax	# D.18830
	je	.L243	#,
	.loc 1 1285 0 is_stmt 0 discriminator 1
	movl	$8, %ecx	#, iftmp.134
	jmp	.L244	#
.L243:
	.loc 1 1285 0 discriminator 2
	movl	$4, %ecx	#, iftmp.134
.L244:
	.loc 1 1285 0 discriminator 3
	movl	-20(%rbp), %eax	# difference, tmp93
	cltd
	idivl	%ecx	# iftmp.134
	movl	%edx, %ecx	# tmp94, tmp94
	movl	%ecx, %eax	# tmp94, D.18830
	addl	%eax, -24(%rbp)	# D.18831, offset
.L238:
	.loc 1 1288 0 is_stmt 1
	movl	-24(%rbp), %eax	# offset, D.18831
	.loc 1 1289 0
	addq	$40, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE34:
	.size	subreg_highpart_offset, .-subreg_highpart_offset
	.globl	subreg_lowpart_p
	.type	subreg_lowpart_p, @function
subreg_lowpart_p:
.LFB35:
	.loc 1 1298 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$8, %rsp	#,
	movq	%rdi, -8(%rbp)	# x, x
	.loc 1 1299 0
	movq	-8(%rbp), %rax	# x, tmp72
	movzwl	(%rax), %eax	# x_2(D)->code, D.18833
	cmpw	$63, %ax	#, D.18833
	je	.L247	#,
	.loc 1 1300 0
	movl	$1, %eax	#, D.18832
	jmp	.L248	#
.L247:
	.loc 1 1301 0
	movq	-8(%rbp), %rax	# x, tmp73
	movq	8(%rax), %rax	# x_2(D)->fld[0].rtx, D.18834
	movzbl	2(%rax), %eax	# _5->mode, D.18835
	testb	%al, %al	# D.18835
	jne	.L249	#,
	.loc 1 1302 0
	movl	$0, %eax	#, D.18832
	jmp	.L248	#
.L249:
	.loc 1 1304 0
	movq	-8(%rbp), %rax	# x, tmp74
	movq	8(%rax), %rax	# x_2(D)->fld[0].rtx, D.18834
	movzbl	2(%rax), %eax	# _8->mode, D.18835
	movzbl	%al, %edx	# D.18835, D.18836
	movq	-8(%rbp), %rax	# x, tmp75
	movzbl	2(%rax), %eax	# x_2(D)->mode, D.18835
	movzbl	%al, %eax	# D.18835, D.18836
	movl	%edx, %esi	# D.18836,
	movl	%eax, %edi	# D.18836,
	call	subreg_lowpart_offset	#
	.loc 1 1305 0
	movq	-8(%rbp), %rdx	# x, tmp76
	movl	16(%rdx), %edx	# x_2(D)->fld[1].rtuint, D.18837
	cmpl	%edx, %eax	# D.18837, D.18837
	sete	%al	#, D.18838
	.loc 1 1304 0
	movzbl	%al, %eax	# D.18838, D.18832
.L248:
	.loc 1 1306 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE35:
	.size	subreg_lowpart_p, .-subreg_lowpart_p
	.globl	constant_subword
	.type	constant_subword, @function
constant_subword:
.LFB36:
	.loc 1 1317 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$144, %rsp	#,
	movq	%rdi, -104(%rbp)	# op, op
	movl	%esi, -108(%rbp)	# offset, offset
	movl	%edx, -112(%rbp)	# mode, mode
	.loc 1 1318 0
	movl	target_flags(%rip), %eax	# target_flags, target_flags.137
	andl	$33554432, %eax	#, D.18840
	testl	%eax, %eax	# D.18840
	je	.L251	#,
	.loc 1 1318 0 is_stmt 0 discriminator 1
	movl	$1, %eax	#, iftmp.136
	jmp	.L252	#
.L251:
	.loc 1 1318 0 discriminator 2
	movl	$2, %eax	#, iftmp.136
.L252:
	.loc 1 1318 0 discriminator 3
	movl	%eax, -84(%rbp)	# iftmp.136, size_ratio
	.loc 1 1322 0 is_stmt 1 discriminator 3
	movl	-112(%rbp), %eax	# mode, mode.138
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.18841
	cmpl	$1, %eax	#, D.18841
	jne	.L253	#,
	.loc 1 1323 0
	movl	-112(%rbp), %eax	# mode, mode.139
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.18842
	movzbl	%al, %edx	# D.18842, D.18840
	movl	target_flags(%rip), %eax	# target_flags, target_flags.141
	andl	$33554432, %eax	#, D.18840
	testl	%eax, %eax	# D.18840
	je	.L254	#,
	.loc 1 1323 0 is_stmt 0 discriminator 1
	movl	$8, %eax	#, iftmp.140
	jmp	.L255	#
.L254:
	.loc 1 1323 0 discriminator 2
	movl	$4, %eax	#, iftmp.140
.L255:
	.loc 1 1323 0 discriminator 3
	cmpl	%eax, %edx	# iftmp.140, D.18840
	jne	.L253	#,
	.loc 1 1324 0 is_stmt 1
	movq	-104(%rbp), %rax	# op, D.18839
	jmp	.L256	#
.L253:
	.loc 1 1331 0
	movl	-112(%rbp), %eax	# mode, mode.142
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.18841
	.loc 1 1330 0
	cmpl	$2, %eax	#, D.18841
	jne	.L257	#,
	.loc 1 1332 0
	movl	-112(%rbp), %eax	# mode, mode.143
	cltq
	movzwl	mode_bitsize(%rax,%rax), %eax	# mode_bitsize, D.18843
	cmpw	$64, %ax	#, D.18843
	jne	.L257	#,
	.loc 1 1333 0
	movq	-104(%rbp), %rax	# op, tmp146
	movzwl	(%rax), %eax	# op_27(D)->code, D.18843
	cmpw	$55, %ax	#, D.18843
	jne	.L257	#,
.LBB18:
.LBB19:
	.loc 1 1338 0
	movq	-104(%rbp), %rax	# op, tmp147
	leaq	16(%rax), %rcx	#, D.18844
	leaq	-32(%rbp), %rax	#, tmp148
	movl	$24, %edx	#,
	movq	%rcx, %rsi	# D.18844,
	movq	%rax, %rdi	# tmp148,
	call	memcpy	#
	movq	-32(%rbp), %rax	# u.d, tmp149
	movq	%rax, -64(%rbp)	# tmp149, rv
	movq	-24(%rbp), %rax	# u.d, tmp150
	movq	%rax, -56(%rbp)	# tmp150, rv
	movq	-16(%rbp), %rax	# u.d, tmp151
	movq	%rax, -48(%rbp)	# tmp151, rv
.LBE19:
	.loc 1 1339 0
	leaq	-32(%rbp), %rax	#, tmp152
	movq	-64(%rbp), %rdx	# rv, tmp153
	movq	%rdx, (%rsp)	# tmp153,
	movq	-56(%rbp), %rdx	# rv, tmp154
	movq	%rdx, 8(%rsp)	# tmp154,
	movq	-48(%rbp), %rdx	# rv, tmp155
	movq	%rdx, 16(%rsp)	# tmp155,
	movq	%rax, %rdi	# tmp152,
	call	etardouble	#
	.loc 1 1350 0
	movl	target_flags(%rip), %eax	# target_flags, target_flags.144
	andl	$33554432, %eax	#, D.18840
	testl	%eax, %eax	# D.18840
	jne	.L258	#,
	.loc 1 1352 0
	movl	-108(%rbp), %eax	# offset, tmp157
	cltq
	movq	-32(%rbp,%rax,8), %rax	# k, tmp158
	movq	%rax, -80(%rbp)	# tmp158, val
	.loc 1 1353 0
	movq	-80(%rbp), %rax	# val, tmp159
	movl	%eax, %edx	# tmp159, D.18845
	movl	$2147483648, %eax	#, tmp160
	xorq	%rdx, %rax	# D.18845, D.18845
	addq	$-2147483648, %rax	#, tmp161
	movq	%rax, -80(%rbp)	# tmp161, val
	.loc 1 1354 0
	movq	-80(%rbp), %rax	# val, tmp162
	movq	%rax, %rsi	# tmp162,
	movl	$0, %edi	#,
	call	gen_rtx_CONST_INT	#
	jmp	.L256	#
.L258:
	.loc 1 1357 0
	movl	target_flags(%rip), %eax	# target_flags, target_flags.145
	andl	$33554432, %eax	#, D.18840
	testl	%eax, %eax	# D.18840
	je	.L260	#,
	.loc 1 1357 0 is_stmt 0 discriminator 1
	cmpl	$0, -108(%rbp)	#, offset
	jne	.L260	#,
	.loc 1 1359 0 is_stmt 1
	movq	-24(%rbp), %rax	# k, tmp163
	movq	%rax, -80(%rbp)	# tmp163, val
	.loc 1 1360 0
	movq	-80(%rbp), %rax	# val, tmp164
	movl	%eax, %edx	# tmp164, D.18845
	movl	$2147483648, %eax	#, tmp165
	xorq	%rdx, %rax	# D.18845, D.18845
	addq	$-2147483648, %rax	#, D.18845
	salq	$32, %rax	#, tmp166
	movq	%rax, -80(%rbp)	# tmp166, val
	.loc 1 1361 0
	movq	-32(%rbp), %rax	# k, D.18845
	movl	%eax, %eax	# D.18845, D.18845
	orq	%rax, -80(%rbp)	# D.18845, val
	.loc 1 1362 0
	movq	-80(%rbp), %rax	# val, tmp167
	movq	%rax, %rsi	# tmp167,
	movl	$0, %edi	#,
	call	gen_rtx_CONST_INT	#
	jmp	.L256	#
.L260:
	.loc 1 1374 0
	movl	$__FUNCTION__.13536, %edx	#,
	movl	$1374, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L257:
.LBE18:
	.loc 1 1377 0
	movl	-112(%rbp), %eax	# mode, mode.146
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.18841
	.loc 1 1376 0
	cmpl	$2, %eax	#, D.18841
	jne	.L261	#,
	.loc 1 1378 0
	movl	-112(%rbp), %eax	# mode, mode.147
	cltq
	movzwl	mode_bitsize(%rax,%rax), %eax	# mode_bitsize, D.18843
	cmpw	$64, %ax	#, D.18843
	jbe	.L261	#,
	.loc 1 1379 0
	movq	-104(%rbp), %rax	# op, tmp170
	movzwl	(%rax), %eax	# op_27(D)->code, D.18843
	cmpw	$55, %ax	#, D.18843
	jne	.L261	#,
.LBB20:
.LBB21:
	.loc 1 1384 0
	movq	-104(%rbp), %rax	# op, tmp171
	leaq	16(%rax), %rcx	#, D.18844
	leaq	-32(%rbp), %rax	#, tmp172
	movl	$24, %edx	#,
	movq	%rcx, %rsi	# D.18844,
	movq	%rax, %rdi	# tmp172,
	call	memcpy	#
	movq	-32(%rbp), %rax	# u.d, tmp173
	movq	%rax, -64(%rbp)	# tmp173, rv
	movq	-24(%rbp), %rax	# u.d, tmp174
	movq	%rax, -56(%rbp)	# tmp174, rv
	movq	-16(%rbp), %rax	# u.d, tmp175
	movq	%rax, -48(%rbp)	# tmp175, rv
.LBE21:
	.loc 1 1385 0
	movl	target_flags(%rip), %eax	# target_flags, target_flags.148
	andl	$16777216, %eax	#, D.18840
	testl	%eax, %eax	# D.18840
	jne	.L262	#,
	.loc 1 1385 0 is_stmt 0 discriminator 1
	leaq	-32(%rbp), %rax	#, tmp176
	movq	-64(%rbp), %rdx	# rv, tmp177
	movq	%rdx, (%rsp)	# tmp177,
	movq	-56(%rbp), %rdx	# rv, tmp178
	movq	%rdx, 8(%rsp)	# tmp178,
	movq	-48(%rbp), %rdx	# rv, tmp179
	movq	%rdx, 16(%rsp)	# tmp179,
	movq	%rax, %rdi	# tmp176,
	call	etarldouble	#
	jmp	.L263	#
.L262:
	.loc 1 1385 0 discriminator 2
	movl	target_flags(%rip), %eax	# target_flags, target_flags.149
	andl	$16777216, %eax	#, D.18840
	testl	%eax, %eax	# D.18840
	je	.L264	#,
	.loc 1 1385 0 discriminator 1
	leaq	-32(%rbp), %rax	#, tmp180
	movq	-64(%rbp), %rdx	# rv, tmp181
	movq	%rdx, (%rsp)	# tmp181,
	movq	-56(%rbp), %rdx	# rv, tmp182
	movq	%rdx, 8(%rsp)	# tmp182,
	movq	-48(%rbp), %rdx	# rv, tmp183
	movq	%rdx, 16(%rsp)	# tmp183,
	movq	%rax, %rdi	# tmp180,
	call	etartdouble	#
	jmp	.L263	#
.L264:
	.loc 1 1385 0 discriminator 2
	movl	$__FUNCTION__.13536, %edx	#,
	movl	$1385, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L263:
	.loc 1 1387 0 is_stmt 1
	movl	target_flags(%rip), %eax	# target_flags, target_flags.150
	andl	$33554432, %eax	#, D.18840
	testl	%eax, %eax	# D.18840
	jne	.L265	#,
	.loc 1 1389 0
	movl	-108(%rbp), %eax	# offset, tmp185
	cltq
	movq	-32(%rbp,%rax,8), %rax	# k, tmp186
	movq	%rax, -80(%rbp)	# tmp186, val
	.loc 1 1390 0
	movq	-80(%rbp), %rax	# val, tmp187
	movl	%eax, %edx	# tmp187, D.18845
	movl	$2147483648, %eax	#, tmp188
	xorq	%rdx, %rax	# D.18845, D.18845
	addq	$-2147483648, %rax	#, tmp189
	movq	%rax, -80(%rbp)	# tmp189, val
	.loc 1 1391 0
	movq	-80(%rbp), %rax	# val, tmp190
	movq	%rax, %rsi	# tmp190,
	movl	$0, %edi	#,
	call	gen_rtx_CONST_INT	#
	jmp	.L256	#
.L265:
	.loc 1 1394 0
	movl	target_flags(%rip), %eax	# target_flags, target_flags.151
	andl	$33554432, %eax	#, D.18840
	testl	%eax, %eax	# D.18840
	je	.L267	#,
	.loc 1 1394 0 is_stmt 0 discriminator 1
	cmpl	$1, -108(%rbp)	#, offset
	jg	.L267	#,
	.loc 1 1396 0 is_stmt 1
	movl	-108(%rbp), %eax	# offset, tmp191
	addl	%eax, %eax	# D.18840
	addl	$1, %eax	#, D.18840
	cltq
	movq	-32(%rbp,%rax,8), %rax	# k, tmp193
	movq	%rax, -80(%rbp)	# tmp193, val
	.loc 1 1397 0
	movq	-80(%rbp), %rax	# val, tmp194
	movl	%eax, %edx	# tmp194, D.18845
	movl	$2147483648, %eax	#, tmp195
	xorq	%rdx, %rax	# D.18845, D.18845
	addq	$-2147483648, %rax	#, D.18845
	salq	$32, %rax	#, tmp196
	movq	%rax, -80(%rbp)	# tmp196, val
	.loc 1 1398 0
	movl	-108(%rbp), %eax	# offset, tmp197
	addl	%eax, %eax	# D.18840
	cltq
	movq	-32(%rbp,%rax,8), %rax	# k, D.18845
	movl	%eax, %eax	# D.18845, D.18845
	orq	%rax, -80(%rbp)	# D.18845, val
	.loc 1 1399 0
	movq	-80(%rbp), %rax	# val, tmp199
	movq	%rax, %rsi	# tmp199,
	movl	$0, %edi	#,
	call	gen_rtx_CONST_INT	#
	jmp	.L256	#
.L267:
	.loc 1 1403 0
	movl	$__FUNCTION__.13536, %edx	#,
	movl	$1403, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L261:
.LBE20:
	.loc 1 1431 0
	movl	-112(%rbp), %eax	# mode, mode.152
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.18841
	cmpl	$2, %eax	#, D.18841
	jne	.L268	#,
	.loc 1 1432 0
	movl	-112(%rbp), %eax	# mode, mode.153
	cltq
	movzwl	mode_bitsize(%rax,%rax), %eax	# mode_bitsize, D.18843
	cmpw	$32, %ax	#, D.18843
	jne	.L268	#,
	.loc 1 1433 0
	movq	-104(%rbp), %rax	# op, tmp202
	movzwl	(%rax), %eax	# op_27(D)->code, D.18843
	cmpw	$55, %ax	#, D.18843
	jne	.L268	#,
.LBB22:
.LBB23:
	.loc 1 1438 0
	movq	-104(%rbp), %rax	# op, tmp203
	leaq	16(%rax), %rcx	#, D.18844
	leaq	-32(%rbp), %rax	#, tmp204
	movl	$24, %edx	#,
	movq	%rcx, %rsi	# D.18844,
	movq	%rax, %rdi	# tmp204,
	call	memcpy	#
	movq	-32(%rbp), %rax	# u.d, tmp205
	movq	%rax, -64(%rbp)	# tmp205, rv
	movq	-24(%rbp), %rax	# u.d, tmp206
	movq	%rax, -56(%rbp)	# tmp206, rv
	movq	-16(%rbp), %rax	# u.d, tmp207
	movq	%rax, -48(%rbp)	# tmp207, rv
.LBE23:
	.loc 1 1439 0
	movq	-64(%rbp), %rax	# rv, tmp208
	movq	%rax, (%rsp)	# tmp208,
	movq	-56(%rbp), %rax	# rv, tmp209
	movq	%rax, 8(%rsp)	# tmp209,
	movq	-48(%rbp), %rax	# rv, tmp210
	movq	%rax, 16(%rsp)	# tmp210,
	call	etarsingle	#
	movq	%rax, -72(%rbp)	# tmp211, l
	.loc 1 1442 0
	movq	-72(%rbp), %rax	# l, tmp212
	movq	%rax, -80(%rbp)	# tmp212, val
	.loc 1 1443 0
	movq	-80(%rbp), %rax	# val, tmp213
	movl	%eax, %edx	# tmp213, D.18845
	movl	$2147483648, %eax	#, tmp214
	xorq	%rdx, %rax	# D.18845, D.18845
	addq	$-2147483648, %rax	#, tmp215
	movq	%rax, -80(%rbp)	# tmp215, val
	.loc 1 1452 0
	movq	-80(%rbp), %rax	# val, tmp216
	movq	%rax, %rsi	# tmp216,
	movl	$0, %edi	#,
	call	gen_rtx_CONST_INT	#
	jmp	.L256	#
.L268:
.LBE22:
	.loc 1 1497 0
	movq	const_int_rtx+512(%rip), %rax	# const_int_rtx, D.18846
	cmpq	-104(%rbp), %rax	# op, D.18846
	jne	.L269	#,
	.loc 1 1498 0
	movq	-104(%rbp), %rax	# op, D.18839
	jmp	.L256	#
.L269:
	.loc 1 1500 0
	movl	-112(%rbp), %eax	# mode, mode.154
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.18841
	cmpl	$1, %eax	#, D.18841
	jne	.L270	#,
	.loc 1 1501 0
	movq	-104(%rbp), %rax	# op, tmp218
	movzwl	(%rax), %eax	# op_27(D)->code, D.18843
	.loc 1 1502 0
	cmpw	$54, %ax	#, D.18843
	je	.L271	#,
	.loc 1 1501 0
	movq	-104(%rbp), %rax	# op, tmp219
	movzwl	(%rax), %eax	# op_27(D)->code, D.18843
	cmpw	$55, %ax	#, D.18843
	je	.L271	#,
.L270:
	.loc 1 1503 0
	movl	$0, %eax	#, D.18839
	jmp	.L256	#
.L271:
	.loc 1 1510 0
	movl	-108(%rbp), %eax	# offset, tmp222
	cltd
	idivl	-84(%rbp)	# size_ratio
	.loc 1 1512 0
	testl	%eax, %eax	# D.18840
	jne	.L272	#,
	.loc 1 1511 0
	movq	-104(%rbp), %rax	# op, tmp223
	movzwl	(%rax), %eax	# op_27(D)->code, D.18843
	cmpw	$54, %ax	#, D.18843
	jne	.L273	#,
	.loc 1 1511 0 is_stmt 0 discriminator 1
	movq	-104(%rbp), %rax	# op, tmp224
	movq	8(%rax), %rax	# op_27(D)->fld[0].rtwint, iftmp.159
	jmp	.L275	#
.L273:
	.loc 1 1511 0 discriminator 2
	movq	-104(%rbp), %rax	# op, tmp225
	movq	16(%rax), %rax	# op_27(D)->fld[1].rtwint, iftmp.159
	jmp	.L275	#
.L272:
	.loc 1 1512 0 is_stmt 1 discriminator 1
	movq	-104(%rbp), %rax	# op, tmp226
	movzwl	(%rax), %eax	# op_27(D)->code, D.18843
	.loc 1 1513 0 discriminator 1
	cmpw	$54, %ax	#, D.18843
	jne	.L276	#,
	movq	-104(%rbp), %rax	# op, tmp227
	movq	8(%rax), %rax	# op_27(D)->fld[0].rtwint, D.18845
	testq	%rax, %rax	# D.18845
	jns	.L277	#,
	.loc 1 1513 0 is_stmt 0 discriminator 3
	movq	$-1, %rax	#, iftmp.161
	jmp	.L275	#
.L277:
	.loc 1 1513 0 discriminator 4
	movl	$0, %eax	#, iftmp.161
	jmp	.L275	#
.L276:
	.loc 1 1513 0 discriminator 2
	movq	-104(%rbp), %rax	# op, tmp228
	movq	24(%rax), %rax	# op_27(D)->fld[2].rtwint, iftmp.160
.L275:
	.loc 1 1510 0 is_stmt 1
	movq	%rax, -80(%rbp)	# iftmp.158, val
	.loc 1 1516 0
	movl	target_flags(%rip), %eax	# target_flags, target_flags.162
	andl	$33554432, %eax	#, D.18840
	testl	%eax, %eax	# D.18840
	jne	.L280	#,
	.loc 1 1517 0
	movl	-108(%rbp), %eax	# offset, tmp229
	cltd
	idivl	-84(%rbp)	# size_ratio
	movl	target_flags(%rip), %eax	# target_flags, target_flags.164
	andl	$33554432, %eax	#, D.18840
	testl	%eax, %eax	# D.18840
	je	.L281	#,
	.loc 1 1517 0 is_stmt 0 discriminator 1
	movl	$64, %eax	#, iftmp.163
	jmp	.L282	#
.L281:
	.loc 1 1517 0 discriminator 2
	movl	$32, %eax	#, iftmp.163
.L282:
	.loc 1 1517 0 discriminator 3
	imull	%edx, %eax	# D.18840, D.18840
	movl	%eax, %ecx	# D.18840, tmp236
	sarq	%cl, -80(%rbp)	# tmp236, val
.L280:
	.loc 1 1519 0 is_stmt 1
	movl	word_mode(%rip), %edx	# word_mode, word_mode.165
	movq	-80(%rbp), %rax	# val, tmp232
	movl	%edx, %esi	# word_mode.165,
	movq	%rax, %rdi	# tmp232,
	call	trunc_int_for_mode	#
	movq	%rax, -80(%rbp)	# tmp233, val
	.loc 1 1521 0
	movq	-80(%rbp), %rax	# val, tmp234
	movq	%rax, %rsi	# tmp234,
	movl	$0, %edi	#,
	call	gen_rtx_CONST_INT	#
.L256:
	.loc 1 1522 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE36:
	.size	constant_subword, .-constant_subword
	.globl	operand_subword
	.type	operand_subword, @function
operand_subword:
.LFB37:
	.loc 1 1555 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# op, op
	movl	%esi, -28(%rbp)	# offset, offset
	movl	%edx, -32(%rbp)	# validate_address, validate_address
	movl	%ecx, -36(%rbp)	# mode, mode
	.loc 1 1556 0
	cmpl	$0, -36(%rbp)	#, mode
	jne	.L284	#,
	.loc 1 1557 0
	movq	-24(%rbp), %rax	# op, tmp93
	movzbl	2(%rax), %eax	# op_8(D)->mode, D.18849
	movzbl	%al, %eax	# D.18849, tmp94
	movl	%eax, -36(%rbp)	# tmp94, mode
.L284:
	.loc 1 1559 0
	cmpl	$0, -36(%rbp)	#, mode
	jne	.L285	#,
	.loc 1 1560 0
	movl	$__FUNCTION__.13549, %edx	#,
	movl	$1560, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L285:
	.loc 1 1563 0
	cmpl	$51, -36(%rbp)	#, mode
	je	.L286	#,
	.loc 1 1564 0
	movl	-36(%rbp), %eax	# mode, mode.166
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.18849
	movzbl	%al, %edx	# D.18849, D.18850
	movl	target_flags(%rip), %eax	# target_flags, target_flags.168
	andl	$33554432, %eax	#, D.18850
	testl	%eax, %eax	# D.18850
	je	.L287	#,
	.loc 1 1564 0 is_stmt 0 discriminator 1
	movl	$8, %eax	#, iftmp.167
	jmp	.L288	#
.L287:
	.loc 1 1564 0 discriminator 2
	movl	$4, %eax	#, iftmp.167
.L288:
	.loc 1 1564 0 discriminator 3
	cmpl	%eax, %edx	# iftmp.167, D.18850
	jge	.L286	#,
	.loc 1 1565 0 is_stmt 1
	movl	$0, %eax	#, D.18848
	jmp	.L289	#
.L286:
	.loc 1 1568 0
	cmpl	$51, -36(%rbp)	#, mode
	je	.L290	#,
	.loc 1 1569 0
	movl	-28(%rbp), %eax	# offset, tmp96
	leal	1(%rax), %edx	#, D.18851
	movl	target_flags(%rip), %eax	# target_flags, target_flags.170
	andl	$33554432, %eax	#, D.18850
	testl	%eax, %eax	# D.18850
	je	.L291	#,
	.loc 1 1569 0 is_stmt 0 discriminator 1
	movl	$8, %eax	#, iftmp.169
	jmp	.L292	#
.L291:
	.loc 1 1569 0 discriminator 2
	movl	$4, %eax	#, iftmp.169
.L292:
	.loc 1 1569 0 discriminator 3
	imull	%eax, %edx	# iftmp.169, D.18851
	movl	-36(%rbp), %eax	# mode, mode.171
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.18849
	movzbl	%al, %eax	# D.18849, D.18851
	cmpl	%eax, %edx	# D.18851, D.18851
	jbe	.L290	#,
	.loc 1 1570 0 is_stmt 1
	movq	const_int_rtx+512(%rip), %rax	# const_int_rtx, D.18848
	jmp	.L289	#
.L290:
	.loc 1 1573 0
	movq	-24(%rbp), %rax	# op, tmp98
	movzwl	(%rax), %eax	# op_8(D)->code, D.18852
	cmpw	$66, %ax	#, D.18852
	jne	.L293	#,
.LBB24:
	.loc 1 1575 0
	movl	target_flags(%rip), %eax	# target_flags, target_flags.173
	andl	$33554432, %eax	#, D.18850
	testl	%eax, %eax	# D.18850
	je	.L294	#,
	.loc 1 1575 0 is_stmt 0 discriminator 1
	movl	$8, %eax	#, iftmp.172
	jmp	.L295	#
.L294:
	.loc 1 1575 0 discriminator 2
	movl	$4, %eax	#, iftmp.172
.L295:
	.loc 1 1575 0 discriminator 3
	imull	-28(%rbp), %eax	# offset, D.18851
	movl	%eax, %edx	# D.18851, D.18853
	movl	word_mode(%rip), %esi	# word_mode, word_mode.174
	movq	-24(%rbp), %rax	# op, tmp99
	movl	$1, %r8d	#,
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# tmp99,
	call	adjust_address_1	#
	movq	%rax, -8(%rbp)	# tmp100, new
	.loc 1 1577 0 is_stmt 1 discriminator 3
	cmpl	$0, -32(%rbp)	#, validate_address
	jne	.L296	#,
	.loc 1 1578 0
	movq	-8(%rbp), %rax	# new, D.18848
	jmp	.L289	#
.L296:
	.loc 1 1580 0
	movl	reload_completed(%rip), %eax	# reload_completed, reload_completed.175
	testl	%eax, %eax	# reload_completed.175
	je	.L297	#,
	.loc 1 1582 0
	movq	-8(%rbp), %rax	# new, tmp101
	movq	8(%rax), %rdx	# new_38->fld[0].rtx, D.18854
	movl	word_mode(%rip), %eax	# word_mode, word_mode.176
	movq	%rdx, %rsi	# D.18854,
	movl	%eax, %edi	# word_mode.176,
	call	strict_memory_address_p	#
	testl	%eax, %eax	# D.18850
	jne	.L293	#,
	.loc 1 1583 0
	movl	$0, %eax	#, D.18848
	jmp	.L289	#
.L297:
	.loc 1 1586 0
	movq	-8(%rbp), %rax	# new, tmp102
	movq	8(%rax), %rdx	# new_38->fld[0].rtx, D.18854
	movq	-8(%rbp), %rax	# new, tmp103
	movq	%rdx, %rsi	# D.18854,
	movq	%rax, %rdi	# tmp103,
	call	replace_equiv_address	#
	jmp	.L289	#
.L293:
.LBE24:
	.loc 1 1590 0
	movl	target_flags(%rip), %eax	# target_flags, target_flags.178
	andl	$33554432, %eax	#, D.18850
	testl	%eax, %eax	# D.18850
	je	.L298	#,
	.loc 1 1590 0 is_stmt 0 discriminator 1
	movl	$8, %eax	#, iftmp.177
	jmp	.L299	#
.L298:
	.loc 1 1590 0 discriminator 2
	movl	$4, %eax	#, iftmp.177
.L299:
	.loc 1 1590 0 discriminator 3
	imull	-28(%rbp), %eax	# offset, D.18851
	movl	%eax, %ecx	# D.18851, D.18851
	movl	word_mode(%rip), %eax	# word_mode, word_mode.179
	movl	-36(%rbp), %edx	# mode, tmp104
	movq	-24(%rbp), %rsi	# op, tmp105
	movl	%eax, %edi	# word_mode.179,
	call	simplify_gen_subreg	#
.L289:
	.loc 1 1591 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE37:
	.size	operand_subword, .-operand_subword
	.globl	operand_subword_force
	.type	operand_subword_force, @function
operand_subword_force:
.LFB38:
	.loc 1 1604 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# op, op
	movl	%esi, -28(%rbp)	# offset, offset
	movl	%edx, -32(%rbp)	# mode, mode
	.loc 1 1605 0
	movl	-32(%rbp), %edx	# mode, tmp62
	movl	-28(%rbp), %esi	# offset, tmp63
	movq	-24(%rbp), %rax	# op, tmp64
	movl	%edx, %ecx	# tmp62,
	movl	$1, %edx	#,
	movq	%rax, %rdi	# tmp64,
	call	operand_subword	#
	movq	%rax, -8(%rbp)	# tmp65, result
	.loc 1 1607 0
	cmpq	$0, -8(%rbp)	#, result
	je	.L301	#,
	.loc 1 1608 0
	movq	-8(%rbp), %rax	# result, D.18855
	jmp	.L302	#
.L301:
	.loc 1 1610 0
	cmpl	$51, -32(%rbp)	#, mode
	je	.L303	#,
	.loc 1 1610 0 is_stmt 0 discriminator 1
	cmpl	$0, -32(%rbp)	#, mode
	je	.L303	#,
	.loc 1 1614 0 is_stmt 1
	movq	-24(%rbp), %rax	# op, tmp66
	movzwl	(%rax), %eax	# op_3(D)->code, D.18856
	cmpw	$61, %ax	#, D.18856
	jne	.L304	#,
	.loc 1 1615 0
	movq	-24(%rbp), %rax	# op, tmp67
	movq	%rax, %rdi	# tmp67,
	call	copy_to_reg	#
	movq	%rax, -24(%rbp)	# tmp68, op
	jmp	.L303	#
.L304:
	.loc 1 1617 0
	movq	-24(%rbp), %rdx	# op, tmp69
	movl	-32(%rbp), %eax	# mode, tmp70
	movq	%rdx, %rsi	# tmp69,
	movl	%eax, %edi	# tmp70,
	call	force_reg	#
	movq	%rax, -24(%rbp)	# tmp71, op
.L303:
	.loc 1 1620 0
	movl	-32(%rbp), %edx	# mode, tmp72
	movl	-28(%rbp), %esi	# offset, tmp73
	movq	-24(%rbp), %rax	# op, tmp74
	movl	%edx, %ecx	# tmp72,
	movl	$1, %edx	#,
	movq	%rax, %rdi	# tmp74,
	call	operand_subword	#
	movq	%rax, -8(%rbp)	# tmp75, result
	.loc 1 1621 0
	cmpq	$0, -8(%rbp)	#, result
	jne	.L305	#,
	.loc 1 1622 0
	movl	$__FUNCTION__.13557, %edx	#,
	movl	$1622, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L305:
	.loc 1 1624 0
	movq	-8(%rbp), %rax	# result, D.18855
.L302:
	.loc 1 1625 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE38:
	.size	operand_subword_force, .-operand_subword_force
	.globl	reverse_comparison
	.type	reverse_comparison, @function
reverse_comparison:
.LFB39:
	.loc 1 1633 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -56(%rbp)	# insn, insn
	.loc 1 1634 0
	movq	-56(%rbp), %rax	# insn, tmp69
	movq	32(%rax), %rax	# insn_2(D)->fld[3].rtx, tmp70
	movq	%rax, -32(%rbp)	# tmp70, body
	.loc 1 1637 0
	movq	-32(%rbp), %rax	# body, tmp71
	movzwl	(%rax), %eax	# body_3->code, D.18857
	cmpw	$47, %ax	#, D.18857
	jne	.L307	#,
	.loc 1 1638 0
	movq	-32(%rbp), %rax	# body, tmp72
	movq	16(%rax), %rax	# body_3->fld[1].rtx, tmp73
	movq	%rax, -40(%rbp)	# tmp73, comp
	jmp	.L308	#
.L307:
	.loc 1 1640 0
	movq	-32(%rbp), %rax	# body, tmp74
	movq	8(%rax), %rax	# body_3->fld[0].rtvec, D.18858
	movq	8(%rax), %rax	# _6->elem, D.18859
	movq	16(%rax), %rax	# _7->fld[1].rtx, tmp75
	movq	%rax, -40(%rbp)	# tmp75, comp
.L308:
	.loc 1 1642 0
	movq	-40(%rbp), %rax	# comp, tmp76
	movzwl	(%rax), %eax	# comp_1->code, D.18857
	cmpw	$74, %ax	#, D.18857
	jne	.L309	#,
.LBB25:
	.loc 1 1644 0
	movq	-40(%rbp), %rax	# comp, tmp77
	movq	8(%rax), %rax	# comp_1->fld[0].rtx, tmp78
	movq	%rax, -24(%rbp)	# tmp78, op0
	.loc 1 1645 0
	movq	-40(%rbp), %rax	# comp, tmp79
	movq	16(%rax), %rax	# comp_1->fld[1].rtx, tmp80
	movq	%rax, -16(%rbp)	# tmp80, op1
	.loc 1 1646 0
	movq	-40(%rbp), %rax	# comp, tmp81
	movq	-16(%rbp), %rdx	# op1, tmp82
	movq	%rdx, 8(%rax)	# tmp82, comp_1->fld[0].rtx
	.loc 1 1647 0
	movq	-40(%rbp), %rax	# comp, tmp83
	movq	-24(%rbp), %rdx	# op0, tmp84
	movq	%rdx, 16(%rax)	# tmp84, comp_1->fld[1].rtx
.LBE25:
	jmp	.L306	#
.L309:
.LBB26:
	.loc 1 1651 0
	movq	-40(%rbp), %rax	# comp, tmp85
	movzbl	2(%rax), %eax	# comp_1->mode, D.18860
	movzbl	%al, %eax	# D.18860, D.18861
	cltq
	movq	const_tiny_rtx(,%rax,8), %rax	# const_tiny_rtx, D.18859
	movq	-40(%rbp), %rdx	# comp, tmp87
	movq	%rdx, %rcx	# tmp87,
	movq	%rax, %rdx	# D.18859,
	movl	$0, %esi	#,
	movl	$74, %edi	#,
	call	gen_rtx_fmt_ee	#
	movq	%rax, -8(%rbp)	# tmp88, new
	.loc 1 1653 0
	movq	-32(%rbp), %rax	# body, tmp89
	movzwl	(%rax), %eax	# body_3->code, D.18857
	cmpw	$47, %ax	#, D.18857
	jne	.L311	#,
	.loc 1 1654 0
	movq	-32(%rbp), %rax	# body, tmp90
	movq	-8(%rbp), %rdx	# new, tmp91
	movq	%rdx, 16(%rax)	# tmp91, body_3->fld[1].rtx
	jmp	.L306	#
.L311:
	.loc 1 1656 0
	movq	-32(%rbp), %rax	# body, tmp92
	movq	8(%rax), %rax	# body_3->fld[0].rtvec, D.18858
	movq	8(%rax), %rax	# _17->elem, D.18859
	movq	-8(%rbp), %rdx	# new, tmp93
	movq	%rdx, 16(%rax)	# tmp93, _18->fld[1].rtx
.L306:
.LBE26:
	.loc 1 1658 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE39:
	.size	reverse_comparison, .-reverse_comparison
	.type	component_ref_for_mem_expr, @function
component_ref_for_mem_expr:
.LFB40:
	.loc 1 1667 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# ref, ref
	.loc 1 1668 0
	movq	-24(%rbp), %rax	# ref, tmp75
	movq	32(%rax), %rax	# ref_5(D)->exp.operands, tmp76
	movq	%rax, -8(%rbp)	# tmp76, inner
	.loc 1 1670 0
	movq	-8(%rbp), %rax	# inner, tmp77
	movzbl	16(%rax), %eax	# inner_6->common.code, D.18863
	cmpb	$39, %al	#, D.18863
	jne	.L313	#,
	.loc 1 1671 0
	movq	-8(%rbp), %rax	# inner, tmp78
	movq	%rax, %rdi	# tmp78,
	call	component_ref_for_mem_expr	#
	movq	%rax, -8(%rbp)	# tmp79, inner
	jmp	.L314	#
.L313:
.LBB27:
	.loc 1 1674 0
	movq	$0, -16(%rbp)	#, placeholder_ptr
	.loc 1 1678 0
	jmp	.L315	#
.L317:
	.loc 1 1683 0
	movq	-8(%rbp), %rax	# inner, tmp80
	movzbl	16(%rax), %eax	# inner_1->common.code, D.18863
	cmpb	$57, %al	#, D.18863
	jne	.L316	#,
	.loc 1 1684 0
	leaq	-16(%rbp), %rdx	#, tmp81
	movq	-8(%rbp), %rax	# inner, tmp82
	movq	%rdx, %rsi	# tmp81,
	movq	%rax, %rdi	# tmp82,
	call	find_placeholder	#
	movq	%rax, -8(%rbp)	# tmp83, inner
	jmp	.L315	#
.L316:
	.loc 1 1686 0
	movq	-8(%rbp), %rax	# inner, tmp84
	movq	32(%rax), %rax	# inner_1->exp.operands, tmp85
	movq	%rax, -8(%rbp)	# tmp85, inner
.L315:
	.loc 1 1678 0 discriminator 1
	movq	-8(%rbp), %rax	# inner, tmp86
	movzbl	16(%rax), %eax	# inner_1->common.code, D.18863
	cmpb	$115, %al	#, D.18863
	je	.L317	#,
	.loc 1 1678 0 is_stmt 0 discriminator 2
	movq	-8(%rbp), %rax	# inner, tmp87
	movzbl	16(%rax), %eax	# inner_1->common.code, D.18863
	cmpb	$114, %al	#, D.18863
	je	.L317	#,
	.loc 1 1679 0 is_stmt 1
	movq	-8(%rbp), %rax	# inner, tmp88
	movzbl	16(%rax), %eax	# inner_1->common.code, D.18863
	cmpb	$116, %al	#, D.18863
	je	.L317	#,
	.loc 1 1680 0
	movq	-8(%rbp), %rax	# inner, tmp89
	movzbl	16(%rax), %eax	# inner_1->common.code, D.18863
	cmpb	$117, %al	#, D.18863
	je	.L317	#,
	.loc 1 1681 0
	movq	-8(%rbp), %rax	# inner, tmp90
	movzbl	16(%rax), %eax	# inner_1->common.code, D.18863
	cmpb	$118, %al	#, D.18863
	je	.L317	#,
	.loc 1 1682 0
	movq	-8(%rbp), %rax	# inner, tmp91
	movzbl	16(%rax), %eax	# inner_1->common.code, D.18863
	cmpb	$57, %al	#, D.18863
	je	.L317	#,
	.loc 1 1688 0
	movq	-8(%rbp), %rax	# inner, tmp92
	movzbl	16(%rax), %eax	# inner_1->common.code, D.18863
	movzbl	%al, %eax	# D.18863, D.18864
	cltq
	movzbl	tree_code_type(%rax), %eax	# tree_code_type, D.18865
	cmpb	$100, %al	#, D.18865
	je	.L314	#,
	.loc 1 1689 0
	movq	$0, -8(%rbp)	#, inner
.L314:
.LBE27:
	.loc 1 1692 0
	movq	-24(%rbp), %rax	# ref, tmp94
	movq	32(%rax), %rax	# ref_5(D)->exp.operands, D.18866
	cmpq	-8(%rbp), %rax	# inner, D.18866
	jne	.L319	#,
	.loc 1 1693 0
	movq	-24(%rbp), %rax	# ref, D.18862
	jmp	.L320	#
.L319:
	.loc 1 1695 0
	movq	-24(%rbp), %rax	# ref, tmp95
	movq	40(%rax), %rcx	# ref_5(D)->exp.operands, D.18866
	movq	-24(%rbp), %rax	# ref, tmp96
	movq	8(%rax), %rax	# ref_5(D)->common.type, D.18866
	movq	-8(%rbp), %rdx	# inner, tmp97
	movq	%rax, %rsi	# D.18866,
	movl	$39, %edi	#,
	movl	$0, %eax	#,
	call	build	#
.L320:
	.loc 1 1697 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE40:
	.size	component_ref_for_mem_expr, .-component_ref_for_mem_expr
	.globl	set_mem_attributes
	.type	set_mem_attributes, @function
set_mem_attributes:
.LFB41:
	.loc 1 1708 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$96, %rsp	#,
	movq	%rdi, -72(%rbp)	# ref, ref
	movq	%rsi, -80(%rbp)	# t, t
	movl	%edx, -84(%rbp)	# objectp, objectp
	.loc 1 1709 0
	movq	-72(%rbp), %rax	# ref, tmp188
	movq	16(%rax), %rax	# ref_23(D)->fld[1].rtmem, D.18867
	testq	%rax, %rax	# D.18867
	je	.L322	#,
	.loc 1 1709 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# ref, tmp189
	movq	16(%rax), %rax	# ref_23(D)->fld[1].rtmem, D.18867
	movq	(%rax), %rax	# _25->alias, iftmp.180
	jmp	.L323	#
.L322:
	.loc 1 1709 0 discriminator 2
	movl	$0, %eax	#, iftmp.180
.L323:
	.loc 1 1709 0 discriminator 3
	movq	%rax, -16(%rbp)	# iftmp.180, alias
	.loc 1 1710 0 is_stmt 1 discriminator 3
	movq	-72(%rbp), %rax	# ref, tmp190
	movq	16(%rax), %rax	# ref_23(D)->fld[1].rtmem, D.18867
	testq	%rax, %rax	# D.18867
	je	.L324	#,
	.loc 1 1710 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# ref, tmp191
	movq	16(%rax), %rax	# ref_23(D)->fld[1].rtmem, D.18867
	movq	8(%rax), %rax	# _30->expr, iftmp.181
	jmp	.L325	#
.L324:
	.loc 1 1710 0 discriminator 2
	movl	$0, %eax	#, iftmp.181
.L325:
	.loc 1 1710 0 discriminator 3
	movq	%rax, -48(%rbp)	# iftmp.181, expr
	.loc 1 1711 0 is_stmt 1 discriminator 3
	movq	-72(%rbp), %rax	# ref, tmp192
	movq	16(%rax), %rax	# ref_23(D)->fld[1].rtmem, D.18867
	testq	%rax, %rax	# D.18867
	je	.L326	#,
	.loc 1 1711 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# ref, tmp193
	movq	16(%rax), %rax	# ref_23(D)->fld[1].rtmem, D.18867
	movq	16(%rax), %rax	# _35->offset, iftmp.182
	jmp	.L327	#
.L326:
	.loc 1 1711 0 discriminator 2
	movl	$0, %eax	#, iftmp.182
.L327:
	.loc 1 1711 0 discriminator 3
	movq	%rax, -40(%rbp)	# iftmp.182, offset
	.loc 1 1712 0 is_stmt 1 discriminator 3
	movq	-72(%rbp), %rax	# ref, tmp194
	movq	16(%rax), %rax	# ref_23(D)->fld[1].rtmem, D.18867
	testq	%rax, %rax	# D.18867
	je	.L328	#,
	.loc 1 1712 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# ref, tmp195
	movq	16(%rax), %rax	# ref_23(D)->fld[1].rtmem, D.18867
	movq	24(%rax), %rax	# _40->size, iftmp.183
	jmp	.L329	#
.L328:
	.loc 1 1712 0 discriminator 2
	movq	-72(%rbp), %rax	# ref, tmp196
	movzbl	2(%rax), %eax	# ref_23(D)->mode, D.18868
	cmpb	$51, %al	#, D.18868
	je	.L330	#,
	.loc 1 1712 0 discriminator 1
	movq	-72(%rbp), %rax	# ref, tmp197
	movzbl	2(%rax), %eax	# ref_23(D)->mode, D.18868
	movzbl	%al, %eax	# D.18868, D.18869
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.18868
	movzbl	%al, %eax	# D.18868, D.18870
	movq	%rax, %rsi	# D.18870,
	movl	$0, %edi	#,
	call	gen_rtx_CONST_INT	#
	jmp	.L329	#
.L330:
	.loc 1 1712 0 discriminator 2
	movl	$0, %eax	#, iftmp.184
.L329:
	.loc 1 1712 0 discriminator 3
	movq	%rax, -32(%rbp)	# iftmp.183, size
	.loc 1 1713 0 is_stmt 1 discriminator 3
	movq	-72(%rbp), %rax	# ref, tmp199
	movq	16(%rax), %rax	# ref_23(D)->fld[1].rtmem, D.18867
	testq	%rax, %rax	# D.18867
	je	.L332	#,
	.loc 1 1713 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# ref, tmp200
	movq	16(%rax), %rax	# ref_23(D)->fld[1].rtmem, D.18867
	movl	32(%rax), %eax	# _52->align, iftmp.185
	jmp	.L333	#
.L332:
	.loc 1 1713 0 discriminator 2
	movl	$8, %eax	#, iftmp.185
.L333:
	.loc 1 1713 0 discriminator 3
	movl	%eax, -52(%rbp)	# iftmp.185, align
	.loc 1 1719 0 is_stmt 1 discriminator 3
	cmpq	$0, -80(%rbp)	#, t
	jne	.L334	#,
	.loc 1 1720 0
	jmp	.L321	#
.L334:
	.loc 1 1722 0
	movq	-80(%rbp), %rax	# t, tmp201
	movzbl	16(%rax), %eax	# t_56(D)->common.code, D.18868
	movzbl	%al, %eax	# D.18868, D.18869
	cltq
	movzbl	tree_code_type(%rax), %eax	# tree_code_type, D.18871
	cmpb	$116, %al	#, D.18871
	je	.L336	#,
	.loc 1 1722 0 is_stmt 0 discriminator 1
	movq	-80(%rbp), %rax	# t, tmp203
	movq	8(%rax), %rax	# t_56(D)->common.type, iftmp.186
	jmp	.L337	#
.L336:
	.loc 1 1722 0 discriminator 2
	movq	-80(%rbp), %rax	# t, iftmp.186
.L337:
	.loc 1 1722 0 discriminator 3
	movq	%rax, -8(%rbp)	# iftmp.186, type
	.loc 1 1728 0 is_stmt 1 discriminator 3
	movq	-80(%rbp), %rax	# t, tmp204
	movzbl	16(%rax), %eax	# t_56(D)->common.code, D.18868
	movzbl	%al, %eax	# D.18868, D.18869
	cltq
	movzbl	tree_code_type(%rax), %eax	# tree_code_type, D.18871
	cmpb	$100, %al	#, D.18871
	jne	.L338	#,
	.loc 1 1728 0 is_stmt 0 discriminator 1
	movq	-80(%rbp), %rax	# t, tmp206
	movq	144(%rax), %rax	# t_56(D)->decl.rtl, D.18872
	testq	%rax, %rax	# D.18872
	je	.L339	#,
	movq	-80(%rbp), %rax	# t, tmp207
	movq	144(%rax), %rax	# t_56(D)->decl.rtl, D.18872
	testq	%rax, %rax	# D.18872
	je	.L340	#,
	movq	-80(%rbp), %rax	# t, tmp208
	movq	144(%rax), %rax	# t_56(D)->decl.rtl, iftmp.188
	jmp	.L342	#
.L340:
	.loc 1 1728 0 discriminator 2
	movq	-80(%rbp), %rax	# t, tmp209
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp209,
	call	make_decl_rtl	#
	movq	-80(%rbp), %rax	# t, tmp210
	movq	144(%rax), %rax	# t_56(D)->decl.rtl, iftmp.188
	jmp	.L342	#
.L339:
	movl	$0, %eax	#, iftmp.187
.L342:
	.loc 1 1728 0 discriminator 3
	cmpq	-72(%rbp), %rax	# ref, iftmp.187
	jne	.L338	#,
	.loc 1 1729 0 is_stmt 1
	movl	$__FUNCTION__.13585, %edx	#,
	movl	$1729, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L338:
	.loc 1 1733 0
	movq	-80(%rbp), %rax	# t, tmp211
	movq	%rax, %rdi	# tmp211,
	call	get_alias_set	#
	movq	%rax, -16(%rbp)	# tmp212, alias
	.loc 1 1735 0
	movq	-8(%rbp), %rax	# type, tmp213
	movzbl	17(%rax), %eax	# *type_62, tmp216
	shrb	$3, %al	#, D.18873
	andl	$1, %eax	#, D.18873
	movq	-72(%rbp), %rdx	# ref, tmp217
	andl	$1, %eax	#, tmp219
	leal	0(,%rax,8), %ecx	#, tmp220
	movzbl	3(%rdx), %eax	# ref_23(D)->volatil, tmp221
	andl	$-9, %eax	#, tmp222
	orl	%ecx, %eax	# tmp220, tmp223
	movb	%al, 3(%rdx)	# tmp223, ref_23(D)->volatil
	.loc 1 1736 0
	movq	-8(%rbp), %rax	# type, tmp224
	movzbl	16(%rax), %eax	# type_62->common.code, D.18868
	cmpb	$18, %al	#, D.18868
	je	.L343	#,
	.loc 1 1736 0 is_stmt 0 discriminator 2
	movq	-8(%rbp), %rax	# type, tmp225
	movzbl	16(%rax), %eax	# type_62->common.code, D.18868
	cmpb	$20, %al	#, D.18868
	je	.L343	#,
	.loc 1 1736 0 discriminator 1
	movq	-8(%rbp), %rax	# type, tmp226
	movzbl	16(%rax), %eax	# type_62->common.code, D.18868
	cmpb	$21, %al	#, D.18868
	je	.L343	#,
	movq	-8(%rbp), %rax	# type, tmp227
	movzbl	16(%rax), %eax	# type_62->common.code, D.18868
	cmpb	$22, %al	#, D.18868
	je	.L343	#,
	movq	-8(%rbp), %rax	# type, tmp228
	movzbl	16(%rax), %eax	# type_62->common.code, D.18868
	cmpb	$19, %al	#, D.18868
	jne	.L344	#,
.L343:
	movl	$1, %eax	#, iftmp.189
	jmp	.L345	#
.L344:
	.loc 1 1736 0 discriminator 3
	movl	$0, %eax	#, iftmp.189
.L345:
	.loc 1 1736 0 discriminator 4
	andl	$1, %eax	#, D.18873
	movl	%eax, %edx	# D.18873, D.18873
	movq	-72(%rbp), %rax	# ref, tmp229
	andl	$1, %edx	#, tmp231
	movl	%edx, %ecx	# tmp231, tmp232
	sall	$4, %ecx	#, tmp232
	movzbl	3(%rax), %edx	# ref_23(D)->in_struct, tmp233
	andl	$-17, %edx	#, tmp234
	orl	%ecx, %edx	# tmp232, tmp235
	movb	%dl, 3(%rax)	# tmp235, ref_23(D)->in_struct
	.loc 1 1738 0 is_stmt 1 discriminator 4
	movq	-72(%rbp), %rax	# ref, tmp236
	movzbl	3(%rax), %eax	# *ref_23(D), tmp239
	shrb	$2, %al	#, D.18873
	andl	$1, %eax	#, D.18873
	movl	%eax, %edx	# D.18873, D.18874
	movzbl	lang_hooks+96(%rip), %eax	# lang_hooks.honor_readonly, D.18875
	.loc 1 1740 0 discriminator 4
	testb	%al, %al	# D.18875
	je	.L346	#,
	.loc 1 1739 0
	movq	-8(%rbp), %rax	# type, tmp240
	movzbl	17(%rax), %eax	# *type_62, D.18868
	andl	$16, %eax	#, D.18868
	testb	%al, %al	# D.18868
	jne	.L347	#,
	.loc 1 1739 0 is_stmt 0 discriminator 1
	movq	-80(%rbp), %rax	# t, tmp241
	movzbl	17(%rax), %eax	# *t_56(D), D.18868
	andl	$16, %eax	#, D.18868
	testb	%al, %al	# D.18868
	jne	.L347	#,
.L346:
	.loc 1 1740 0 is_stmt 1 discriminator 1
	movq	-80(%rbp), %rax	# t, tmp242
	movzbl	16(%rax), %eax	# t_56(D)->common.code, D.18868
	movzbl	%al, %eax	# D.18868, D.18869
	cltq
	movzbl	tree_code_type(%rax), %eax	# tree_code_type, D.18871
	cmpb	$116, %al	#, D.18871
	je	.L348	#,
	.loc 1 1740 0 is_stmt 0 discriminator 2
	movq	-80(%rbp), %rax	# t, tmp244
	movzbl	17(%rax), %eax	# *t_56(D), D.18868
	andl	$2, %eax	#, D.18868
	testb	%al, %al	# D.18868
	je	.L348	#,
.L347:
	.loc 1 1740 0 discriminator 1
	movl	$1, %eax	#, iftmp.190
	jmp	.L349	#
.L348:
	.loc 1 1740 0 discriminator 3
	movl	$0, %eax	#, iftmp.190
.L349:
	.loc 1 1738 0 is_stmt 1
	orl	%edx, %eax	# D.18874, D.18874
	andl	$1, %eax	#, D.18873
	movl	%eax, %edx	# D.18873, D.18873
	movq	-72(%rbp), %rax	# ref, tmp245
	andl	$1, %edx	#, tmp247
	leal	0(,%rdx,4), %ecx	#, tmp248
	movzbl	3(%rax), %edx	# ref_23(D)->unchanging, tmp249
	andl	$-5, %edx	#, tmp250
	orl	%ecx, %edx	# tmp248, tmp251
	movb	%dl, 3(%rax)	# tmp251, ref_23(D)->unchanging
	.loc 1 1744 0
	cmpl	$0, -84(%rbp)	#, objectp
	jne	.L350	#,
	.loc 1 1744 0 is_stmt 0 discriminator 2
	movq	-80(%rbp), %rax	# t, tmp252
	movzbl	16(%rax), %eax	# t_56(D)->common.code, D.18868
	movzbl	%al, %eax	# D.18868, D.18869
	cltq
	movzbl	tree_code_type(%rax), %eax	# tree_code_type, D.18871
	cmpb	$100, %al	#, D.18871
	jne	.L351	#,
.L350:
	.loc 1 1744 0 discriminator 1
	movq	-8(%rbp), %rax	# type, tmp254
	movzbl	16(%rax), %eax	# type_62->common.code, D.18868
	cmpb	$18, %al	#, D.18868
	je	.L351	#,
	movq	-8(%rbp), %rax	# type, tmp255
	movzbl	16(%rax), %eax	# type_62->common.code, D.18868
	cmpb	$20, %al	#, D.18868
	je	.L351	#,
	movq	-8(%rbp), %rax	# type, tmp256
	movzbl	16(%rax), %eax	# type_62->common.code, D.18868
	cmpb	$21, %al	#, D.18868
	je	.L351	#,
	movq	-8(%rbp), %rax	# type, tmp257
	movzbl	16(%rax), %eax	# type_62->common.code, D.18868
	cmpb	$22, %al	#, D.18868
	je	.L351	#,
	movq	-8(%rbp), %rax	# type, tmp258
	movzbl	16(%rax), %eax	# type_62->common.code, D.18868
	cmpb	$19, %al	#, D.18868
	je	.L351	#,
	.loc 1 1745 0 is_stmt 1
	movq	-72(%rbp), %rax	# ref, tmp259
	movzbl	3(%rax), %edx	# ref_23(D)->frame_related, tmp262
	orl	$-128, %edx	#, tmp263
	movb	%dl, 3(%rax)	# tmp263, ref_23(D)->frame_related
.L351:
	.loc 1 1749 0
	cmpl	$0, -84(%rbp)	#, objectp
	jne	.L352	#,
	.loc 1 1749 0 is_stmt 0 discriminator 1
	movq	-80(%rbp), %rax	# t, tmp264
	movzbl	16(%rax), %eax	# t_56(D)->common.code, D.18868
	cmpb	$41, %al	#, D.18868
	je	.L352	#,
	movq	-8(%rbp), %rax	# type, tmp265
	movzbl	18(%rax), %eax	# *type_62, D.18868
	andl	$2, %eax	#, D.18868
	testb	%al, %al	# D.18868
	je	.L353	#,
.L352:
	.loc 1 1750 0 is_stmt 1
	movq	-8(%rbp), %rax	# type, tmp266
	movl	64(%rax), %edx	# type_62->type.align, D.18876
	movl	-52(%rbp), %eax	# align, tmp268
	cmpl	%eax, %edx	# tmp268, D.18876
	cmovae	%edx, %eax	# D.18876,, tmp267
	movl	%eax, -52(%rbp)	# tmp267, align
.L353:
	.loc 1 1753 0
	movq	-8(%rbp), %rax	# type, tmp269
	movq	40(%rax), %rax	# type_62->type.size_unit, D.18877
	testq	%rax, %rax	# D.18877
	je	.L354	#,
	.loc 1 1753 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# type, tmp270
	movq	40(%rax), %rax	# type_62->type.size_unit, D.18877
	movl	$1, %esi	#,
	movq	%rax, %rdi	# D.18877,
	call	host_integerp	#
	testl	%eax, %eax	# D.18869
	je	.L354	#,
	.loc 1 1754 0 is_stmt 1
	movq	-8(%rbp), %rax	# type, tmp271
	movq	40(%rax), %rax	# type_62->type.size_unit, D.18877
	movl	$1, %esi	#,
	movq	%rax, %rdi	# D.18877,
	call	tree_low_cst	#
	movq	%rax, %rsi	# D.18870,
	movl	$0, %edi	#,
	call	gen_rtx_CONST_INT	#
	movq	%rax, -32(%rbp)	# tmp272, size
.L354:
	.loc 1 1758 0
	movq	-80(%rbp), %rax	# t, tmp273
	movzbl	16(%rax), %eax	# t_56(D)->common.code, D.18868
	movzbl	%al, %eax	# D.18868, D.18869
	cltq
	movzbl	tree_code_type(%rax), %eax	# tree_code_type, D.18871
	cmpb	$116, %al	#, D.18871
	je	.L355	#,
	.loc 1 1760 0
	movq	-80(%rbp), %rdx	# t, tmp275
	movq	-72(%rbp), %rax	# ref, tmp276
	movq	%rdx, %rsi	# tmp275,
	movq	%rax, %rdi	# tmp276,
	call	maybe_set_unchanging	#
	.loc 1 1761 0
	movq	-80(%rbp), %rax	# t, tmp277
	movzbl	17(%rax), %eax	# *t_56(D), D.18868
	andl	$8, %eax	#, D.18868
	testb	%al, %al	# D.18868
	je	.L356	#,
	.loc 1 1762 0
	movq	-72(%rbp), %rax	# ref, tmp278
	movzbl	3(%rax), %edx	# ref_23(D)->volatil, tmp281
	orl	$8, %edx	#, tmp282
	movb	%dl, 3(%rax)	# tmp282, ref_23(D)->volatil
	.loc 1 1766 0
	jmp	.L357	#
.L356:
	jmp	.L357	#
.L358:
	.loc 1 1770 0
	movq	-80(%rbp), %rax	# t, tmp283
	movq	32(%rax), %rax	# t_1->exp.operands, tmp284
	movq	%rax, -80(%rbp)	# tmp284, t
.L357:
	.loc 1 1766 0 discriminator 1
	movq	-80(%rbp), %rax	# t, tmp285
	movzbl	16(%rax), %eax	# t_1->common.code, D.18868
	cmpb	$115, %al	#, D.18868
	je	.L358	#,
	.loc 1 1766 0 is_stmt 0 discriminator 2
	movq	-80(%rbp), %rax	# t, tmp286
	movzbl	16(%rax), %eax	# t_1->common.code, D.18868
	cmpb	$114, %al	#, D.18868
	je	.L358	#,
	.loc 1 1767 0 is_stmt 1
	movq	-80(%rbp), %rax	# t, tmp287
	movzbl	16(%rax), %eax	# t_1->common.code, D.18868
	cmpb	$116, %al	#, D.18868
	je	.L358	#,
	.loc 1 1768 0
	movq	-80(%rbp), %rax	# t, tmp288
	movzbl	16(%rax), %eax	# t_1->common.code, D.18868
	cmpb	$117, %al	#, D.18868
	je	.L358	#,
	.loc 1 1769 0
	movq	-80(%rbp), %rax	# t, tmp289
	movzbl	16(%rax), %eax	# t_1->common.code, D.18868
	cmpb	$118, %al	#, D.18868
	je	.L358	#,
	.loc 1 1774 0
	movq	-80(%rbp), %rax	# t, tmp290
	movq	%rax, %rdi	# tmp290,
	call	can_address_p	#
	testl	%eax, %eax	# D.18869
	jne	.L359	#,
	.loc 1 1775 0
	movq	-72(%rbp), %rax	# ref, tmp291
	movzbl	3(%rax), %edx	# ref_23(D)->jump, tmp294
	orl	$1, %edx	#, tmp295
	movb	%dl, 3(%rax)	# tmp295, ref_23(D)->jump
.L359:
	.loc 1 1778 0
	movq	-80(%rbp), %rax	# t, tmp296
	movzbl	16(%rax), %eax	# t_1->common.code, D.18868
	movzbl	%al, %eax	# D.18868, D.18869
	cltq
	movzbl	tree_code_type(%rax), %eax	# tree_code_type, D.18871
	cmpb	$100, %al	#, D.18871
	jne	.L360	#,
	.loc 1 1780 0
	movq	-80(%rbp), %rax	# t, tmp298
	movq	%rax, -48(%rbp)	# tmp298, expr
	.loc 1 1781 0
	movq	const_int_rtx+512(%rip), %rax	# const_int_rtx, tmp299
	movq	%rax, -40(%rbp)	# tmp299, offset
	.loc 1 1782 0
	movq	-80(%rbp), %rax	# t, tmp300
	movq	64(%rax), %rax	# t_1->decl.size_unit, D.18877
	.loc 1 1784 0
	testq	%rax, %rax	# D.18877
	je	.L361	#,
	.loc 1 1783 0
	movq	-80(%rbp), %rax	# t, tmp301
	movq	64(%rax), %rax	# t_1->decl.size_unit, D.18877
	movl	$1, %esi	#,
	movq	%rax, %rdi	# D.18877,
	call	host_integerp	#
	testl	%eax, %eax	# D.18869
	je	.L361	#,
	.loc 1 1784 0
	movq	-80(%rbp), %rax	# t, tmp302
	movq	64(%rax), %rax	# t_1->decl.size_unit, D.18877
	movl	$1, %esi	#,
	movq	%rax, %rdi	# D.18877,
	call	tree_low_cst	#
	movq	%rax, %rsi	# D.18870,
	movl	$0, %edi	#,
	call	gen_rtx_CONST_INT	#
	jmp	.L362	#
.L361:
	.loc 1 1784 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, iftmp.191
.L362:
	.loc 1 1782 0 is_stmt 1
	movq	%rax, -32(%rbp)	# iftmp.191, size
	.loc 1 1785 0
	movq	-80(%rbp), %rax	# t, tmp303
	movl	56(%rax), %eax	# *t_1, tmp306
	andl	$16777215, %eax	#, D.18878
	movl	%eax, -52(%rbp)	# D.18878, align
	jmp	.L355	#
.L360:
	.loc 1 1789 0
	movq	-80(%rbp), %rax	# t, tmp307
	movzbl	16(%rax), %eax	# t_1->common.code, D.18868
	movzbl	%al, %eax	# D.18868, D.18869
	cltq
	movzbl	tree_code_type(%rax), %eax	# tree_code_type, D.18871
	cmpb	$99, %al	#, D.18871
	jne	.L363	#,
	.loc 1 1791 0
	movq	-8(%rbp), %rax	# type, tmp309
	movl	64(%rax), %eax	# type_62->type.align, tmp310
	movl	%eax, -52(%rbp)	# tmp310, align
	.loc 1 1793 0
	movl	-52(%rbp), %edx	# align, align.192
	movq	-80(%rbp), %rax	# t, tmp311
	movl	%edx, %esi	# align.192,
	movq	%rax, %rdi	# tmp311,
	call	ix86_constant_alignment	#
	movl	%eax, -52(%rbp)	# D.18869, align
	jmp	.L355	#
.L363:
	.loc 1 1801 0
	movq	-80(%rbp), %rax	# t, tmp312
	movzbl	16(%rax), %eax	# t_1->common.code, D.18868
	cmpb	$39, %al	#, D.18868
	jne	.L364	#,
	.loc 1 1802 0
	movq	-80(%rbp), %rax	# t, tmp313
	movq	40(%rax), %rax	# t_1->exp.operands, D.18877
	movzbl	49(%rax), %eax	# *_155, D.18868
	andl	$16, %eax	#, D.18868
	testb	%al, %al	# D.18868
	jne	.L364	#,
	.loc 1 1804 0
	movq	-80(%rbp), %rax	# t, tmp314
	movq	%rax, %rdi	# tmp314,
	call	component_ref_for_mem_expr	#
	movq	%rax, -48(%rbp)	# tmp315, expr
	.loc 1 1805 0
	movq	const_int_rtx+512(%rip), %rax	# const_int_rtx, tmp316
	movq	%rax, -40(%rbp)	# tmp316, offset
	jmp	.L355	#
.L364:
	.loc 1 1811 0
	movq	-80(%rbp), %rax	# t, tmp317
	movzbl	16(%rax), %eax	# t_1->common.code, D.18868
	cmpb	$43, %al	#, D.18868
	jne	.L355	#,
.LBB28:
	.loc 1 1813 0
	movq	global_trees+120(%rip), %rax	# global_trees, tmp318
	movq	%rax, -24(%rbp)	# tmp318, off_tree
.L365:
	.loc 1 1821 0 discriminator 1
	movq	-80(%rbp), %rax	# t, tmp319
	movq	8(%rax), %rax	# t_2->common.type, D.18877
	.loc 1 1818 0 discriminator 1
	movq	40(%rax), %rcx	# _162->type.size_unit, D.18877
	movq	-80(%rbp), %rax	# t, tmp320
	movq	40(%rax), %rdx	# t_2->exp.operands, D.18877
	movq	sizetype_tab(%rip), %rax	# sizetype_tab, D.18877
	movq	%rax, %rsi	# D.18877,
	movl	$61, %edi	#,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, %rdi	# D.18877,
	call	fold	#
	movq	%rax, %rdx	#, D.18877
	movq	sizetype_tab(%rip), %rax	# sizetype_tab, D.18877
	movq	-24(%rbp), %rcx	# off_tree, tmp321
	movq	%rax, %rsi	# D.18877,
	movl	$59, %edi	#,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, %rdi	# D.18877,
	call	fold	#
	movq	%rax, -24(%rbp)	# tmp322, off_tree
	.loc 1 1823 0 discriminator 1
	movq	-80(%rbp), %rax	# t, tmp323
	movq	32(%rax), %rax	# t_2->exp.operands, tmp324
	movq	%rax, -80(%rbp)	# tmp324, t
	.loc 1 1825 0 discriminator 1
	movq	-80(%rbp), %rax	# t, tmp325
	movzbl	16(%rax), %eax	# t_171->common.code, D.18868
	cmpb	$43, %al	#, D.18868
	je	.L365	#,
	.loc 1 1827 0
	movq	-80(%rbp), %rax	# t, tmp326
	movzbl	16(%rax), %eax	# t_171->common.code, D.18868
	cmpb	$39, %al	#, D.18868
	jne	.L355	#,
	.loc 1 1829 0
	movq	-80(%rbp), %rax	# t, tmp327
	movq	%rax, %rdi	# tmp327,
	call	component_ref_for_mem_expr	#
	movq	%rax, -48(%rbp)	# tmp328, expr
	.loc 1 1830 0
	movq	-24(%rbp), %rax	# off_tree, tmp329
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp329,
	call	host_integerp	#
	testl	%eax, %eax	# D.18869
	je	.L355	#,
	.loc 1 1831 0
	movq	-24(%rbp), %rax	# off_tree, tmp330
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp330,
	call	tree_low_cst	#
	movq	%rax, %rsi	# D.18870,
	movl	$0, %edi	#,
	call	gen_rtx_CONST_INT	#
	movq	%rax, -40(%rbp)	# tmp331, offset
.L355:
.LBE28:
	.loc 1 1840 0
	movq	-72(%rbp), %rax	# ref, tmp332
	movzbl	2(%rax), %eax	# ref_23(D)->mode, D.18868
	movzbl	%al, %r8d	# D.18868, D.18879
	movl	-52(%rbp), %edi	# align, tmp333
	movq	-32(%rbp), %rcx	# size, tmp334
	movq	-40(%rbp), %rdx	# offset, tmp335
	movq	-48(%rbp), %rsi	# expr, tmp336
	movq	-16(%rbp), %rax	# alias, tmp337
	movl	%r8d, %r9d	# D.18879,
	movl	%edi, %r8d	# tmp333,
	movq	%rax, %rdi	# tmp337,
	call	get_mem_attrs	#
	movq	-72(%rbp), %rdx	# ref, tmp338
	movq	%rax, 16(%rdx)	# D.18867, ref_23(D)->fld[1].rtmem
	.loc 1 1843 0
	movq	-72(%rbp), %rax	# ref, tmp339
	movzbl	3(%rax), %eax	# *ref_23(D), D.18868
	andl	$16, %eax	#, D.18868
	testb	%al, %al	# D.18868
	jne	.L366	#,
	.loc 1 1843 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# ref, tmp340
	movzbl	3(%rax), %eax	# *ref_23(D), D.18868
	andl	$-128, %eax	#, D.18868
	testb	%al, %al	# D.18868
	je	.L367	#,
.L366:
	.loc 1 1844 0 is_stmt 1
	jmp	.L321	#
.L367:
	.loc 1 1848 0
	movq	-80(%rbp), %rax	# t, tmp341
	movzbl	16(%rax), %eax	# t_3->common.code, D.18868
	cmpb	$39, %al	#, D.18868
	je	.L368	#,
	.loc 1 1848 0 is_stmt 0 discriminator 1
	movq	-80(%rbp), %rax	# t, tmp342
	movzbl	16(%rax), %eax	# t_3->common.code, D.18868
	cmpb	$43, %al	#, D.18868
	je	.L368	#,
	.loc 1 1849 0 is_stmt 1
	movq	-80(%rbp), %rax	# t, tmp343
	movzbl	16(%rax), %eax	# t_3->common.code, D.18868
	cmpb	$44, %al	#, D.18868
	je	.L368	#,
	.loc 1 1850 0
	movq	-80(%rbp), %rax	# t, tmp344
	movzbl	16(%rax), %eax	# t_3->common.code, D.18868
	cmpb	$40, %al	#, D.18868
	jne	.L321	#,
.L368:
	.loc 1 1851 0
	movq	-72(%rbp), %rax	# ref, tmp345
	movzbl	3(%rax), %edx	# ref_23(D)->in_struct, tmp348
	orl	$16, %edx	#, tmp349
	movb	%dl, 3(%rax)	# tmp349, ref_23(D)->in_struct
.L321:
	.loc 1 1852 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE41:
	.size	set_mem_attributes, .-set_mem_attributes
	.globl	set_mem_alias_set
	.type	set_mem_alias_set, @function
set_mem_alias_set:
.LFB42:
	.loc 1 1860 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r12	#
	pushq	%rbx	#
	subq	$16, %rsp	#,
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -24(%rbp)	# mem, mem
	movq	%rsi, -32(%rbp)	# set, set
	.loc 1 1869 0
	movq	-24(%rbp), %rax	# mem, tmp80
	movzbl	2(%rax), %eax	# mem_6(D)->mode, D.18880
	.loc 1 1867 0
	movzbl	%al, %r12d	# D.18880, D.18881
	.loc 1 1868 0
	movq	-24(%rbp), %rax	# mem, tmp81
	movq	16(%rax), %rax	# mem_6(D)->fld[1].rtmem, D.18882
	.loc 1 1867 0
	testq	%rax, %rax	# D.18882
	je	.L370	#,
	.loc 1 1868 0
	movq	-24(%rbp), %rax	# mem, tmp82
	movq	16(%rax), %rax	# mem_6(D)->fld[1].rtmem, D.18882
	.loc 1 1867 0
	movl	32(%rax), %ebx	# _10->align, iftmp.193
	jmp	.L371	#
.L370:
	.loc 1 1867 0 is_stmt 0 discriminator 1
	movl	$8, %ebx	#, iftmp.193
.L371:
	.loc 1 1868 0 is_stmt 1 discriminator 2
	movq	-24(%rbp), %rax	# mem, tmp83
	movq	16(%rax), %rax	# mem_6(D)->fld[1].rtmem, D.18882
	.loc 1 1867 0 discriminator 2
	testq	%rax, %rax	# D.18882
	je	.L372	#,
	.loc 1 1868 0
	movq	-24(%rbp), %rax	# mem, tmp84
	movq	16(%rax), %rax	# mem_6(D)->fld[1].rtmem, D.18882
	.loc 1 1867 0
	movq	24(%rax), %rcx	# _14->size, iftmp.194
	jmp	.L373	#
.L372:
	.loc 1 1868 0
	movq	-24(%rbp), %rax	# mem, tmp85
	movzbl	2(%rax), %eax	# mem_6(D)->mode, D.18880
	cmpb	$51, %al	#, D.18880
	je	.L374	#,
	.loc 1 1868 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# mem, tmp86
	movzbl	2(%rax), %eax	# mem_6(D)->mode, D.18880
	movzbl	%al, %eax	# D.18880, D.18883
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.18880
	movzbl	%al, %eax	# D.18880, D.18884
	movq	%rax, %rsi	# D.18884,
	movl	$0, %edi	#,
	call	gen_rtx_CONST_INT	#
	jmp	.L375	#
.L374:
	.loc 1 1868 0 discriminator 2
	movl	$0, %eax	#, iftmp.195
.L375:
	.loc 1 1867 0 is_stmt 1
	movq	%rax, %rcx	# iftmp.195, iftmp.194
.L373:
	.loc 1 1867 0 is_stmt 0 discriminator 3
	movq	-24(%rbp), %rax	# mem, tmp88
	movq	16(%rax), %rax	# mem_6(D)->fld[1].rtmem, D.18882
	testq	%rax, %rax	# D.18882
	je	.L376	#,
	.loc 1 1867 0 discriminator 4
	movq	-24(%rbp), %rax	# mem, tmp89
	movq	16(%rax), %rax	# mem_6(D)->fld[1].rtmem, D.18882
	movq	16(%rax), %rdx	# _25->offset, iftmp.196
	jmp	.L377	#
.L376:
	.loc 1 1867 0 discriminator 5
	movl	$0, %edx	#, iftmp.196
.L377:
	.loc 1 1867 0 discriminator 6
	movq	-24(%rbp), %rax	# mem, tmp90
	movq	16(%rax), %rax	# mem_6(D)->fld[1].rtmem, D.18882
	testq	%rax, %rax	# D.18882
	je	.L378	#,
	.loc 1 1867 0 discriminator 7
	movq	-24(%rbp), %rax	# mem, tmp91
	movq	16(%rax), %rax	# mem_6(D)->fld[1].rtmem, D.18882
	movq	8(%rax), %rax	# _29->expr, iftmp.197
	jmp	.L379	#
.L378:
	.loc 1 1867 0 discriminator 8
	movl	$0, %eax	#, iftmp.197
.L379:
	.loc 1 1867 0 discriminator 9
	movq	-32(%rbp), %rdi	# set, tmp92
	movl	%r12d, %r9d	# D.18881,
	movl	%ebx, %r8d	# iftmp.193,
	movq	%rax, %rsi	# iftmp.197,
	call	get_mem_attrs	#
	movq	-24(%rbp), %rdx	# mem, tmp93
	movq	%rax, 16(%rdx)	# D.18882, mem_6(D)->fld[1].rtmem
	.loc 1 1870 0 is_stmt 1 discriminator 9
	addq	$16, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE42:
	.size	set_mem_alias_set, .-set_mem_alias_set
	.globl	set_mem_align
	.type	set_mem_align, @function
set_mem_align:
.LFB43:
	.loc 1 1878 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$24, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)	# mem, mem
	movl	%esi, -28(%rbp)	# align, align
	.loc 1 1881 0
	movq	-24(%rbp), %rax	# mem, tmp80
	movzbl	2(%rax), %eax	# mem_6(D)->mode, D.18885
	.loc 1 1879 0
	movzbl	%al, %ebx	# D.18885, D.18886
	.loc 1 1880 0
	movq	-24(%rbp), %rax	# mem, tmp81
	movq	16(%rax), %rax	# mem_6(D)->fld[1].rtmem, D.18887
	.loc 1 1879 0
	testq	%rax, %rax	# D.18887
	je	.L381	#,
	.loc 1 1880 0
	movq	-24(%rbp), %rax	# mem, tmp82
	movq	16(%rax), %rax	# mem_6(D)->fld[1].rtmem, D.18887
	.loc 1 1879 0
	movq	24(%rax), %rcx	# _10->size, iftmp.198
	jmp	.L382	#
.L381:
	.loc 1 1880 0
	movq	-24(%rbp), %rax	# mem, tmp83
	movzbl	2(%rax), %eax	# mem_6(D)->mode, D.18885
	cmpb	$51, %al	#, D.18885
	je	.L383	#,
	.loc 1 1880 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# mem, tmp84
	movzbl	2(%rax), %eax	# mem_6(D)->mode, D.18885
	movzbl	%al, %eax	# D.18885, D.18888
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.18885
	movzbl	%al, %eax	# D.18885, D.18889
	movq	%rax, %rsi	# D.18889,
	movl	$0, %edi	#,
	call	gen_rtx_CONST_INT	#
	jmp	.L384	#
.L383:
	.loc 1 1880 0 discriminator 2
	movl	$0, %eax	#, iftmp.199
.L384:
	.loc 1 1879 0 is_stmt 1
	movq	%rax, %rcx	# iftmp.199, iftmp.198
.L382:
	.loc 1 1880 0 discriminator 1
	movq	-24(%rbp), %rax	# mem, tmp86
	movq	16(%rax), %rax	# mem_6(D)->fld[1].rtmem, D.18887
	.loc 1 1879 0 discriminator 1
	testq	%rax, %rax	# D.18887
	je	.L385	#,
	.loc 1 1880 0
	movq	-24(%rbp), %rax	# mem, tmp87
	movq	16(%rax), %rax	# mem_6(D)->fld[1].rtmem, D.18887
	.loc 1 1879 0
	movq	16(%rax), %rdx	# _21->offset, iftmp.200
	jmp	.L386	#
.L385:
	.loc 1 1879 0 is_stmt 0 discriminator 2
	movl	$0, %edx	#, iftmp.200
.L386:
	.loc 1 1879 0 discriminator 3
	movq	-24(%rbp), %rax	# mem, tmp88
	movq	16(%rax), %rax	# mem_6(D)->fld[1].rtmem, D.18887
	testq	%rax, %rax	# D.18887
	je	.L387	#,
	.loc 1 1879 0 discriminator 4
	movq	-24(%rbp), %rax	# mem, tmp89
	movq	16(%rax), %rax	# mem_6(D)->fld[1].rtmem, D.18887
	movq	8(%rax), %rsi	# _25->expr, iftmp.201
	jmp	.L388	#
.L387:
	.loc 1 1879 0 discriminator 5
	movl	$0, %esi	#, iftmp.201
.L388:
	.loc 1 1879 0 discriminator 6
	movq	-24(%rbp), %rax	# mem, tmp90
	movq	16(%rax), %rax	# mem_6(D)->fld[1].rtmem, D.18887
	testq	%rax, %rax	# D.18887
	je	.L389	#,
	.loc 1 1879 0 discriminator 7
	movq	-24(%rbp), %rax	# mem, tmp91
	movq	16(%rax), %rax	# mem_6(D)->fld[1].rtmem, D.18887
	movq	(%rax), %rax	# _29->alias, iftmp.202
	jmp	.L390	#
.L389:
	.loc 1 1879 0 discriminator 8
	movl	$0, %eax	#, iftmp.202
.L390:
	.loc 1 1879 0 discriminator 9
	movl	-28(%rbp), %edi	# align, tmp92
	movl	%ebx, %r9d	# D.18886,
	movl	%edi, %r8d	# tmp92,
	movq	%rax, %rdi	# iftmp.202,
	call	get_mem_attrs	#
	movq	-24(%rbp), %rdx	# mem, tmp93
	movq	%rax, 16(%rdx)	# D.18887, mem_6(D)->fld[1].rtmem
	.loc 1 1882 0 is_stmt 1 discriminator 9
	addq	$24, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE43:
	.size	set_mem_align, .-set_mem_align
	.globl	set_mem_expr
	.type	set_mem_expr, @function
set_mem_expr:
.LFB44:
	.loc 1 1890 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r12	#
	pushq	%rbx	#
	subq	$16, %rsp	#,
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -24(%rbp)	# mem, mem
	movq	%rsi, -32(%rbp)	# expr, expr
	.loc 1 1893 0
	movq	-24(%rbp), %rax	# mem, tmp80
	movzbl	2(%rax), %eax	# mem_6(D)->mode, D.18890
	.loc 1 1892 0
	movzbl	%al, %r12d	# D.18890, D.18891
	.loc 1 1893 0
	movq	-24(%rbp), %rax	# mem, tmp81
	movq	16(%rax), %rax	# mem_6(D)->fld[1].rtmem, D.18892
	.loc 1 1892 0
	testq	%rax, %rax	# D.18892
	je	.L392	#,
	.loc 1 1893 0
	movq	-24(%rbp), %rax	# mem, tmp82
	movq	16(%rax), %rax	# mem_6(D)->fld[1].rtmem, D.18892
	.loc 1 1892 0
	movl	32(%rax), %ebx	# _10->align, iftmp.203
	jmp	.L393	#
.L392:
	.loc 1 1892 0 is_stmt 0 discriminator 1
	movl	$8, %ebx	#, iftmp.203
.L393:
	.loc 1 1893 0 is_stmt 1 discriminator 2
	movq	-24(%rbp), %rax	# mem, tmp83
	movq	16(%rax), %rax	# mem_6(D)->fld[1].rtmem, D.18892
	.loc 1 1892 0 discriminator 2
	testq	%rax, %rax	# D.18892
	je	.L394	#,
	.loc 1 1893 0
	movq	-24(%rbp), %rax	# mem, tmp84
	movq	16(%rax), %rax	# mem_6(D)->fld[1].rtmem, D.18892
	.loc 1 1892 0
	movq	24(%rax), %rcx	# _14->size, iftmp.204
	jmp	.L395	#
.L394:
	.loc 1 1893 0
	movq	-24(%rbp), %rax	# mem, tmp85
	movzbl	2(%rax), %eax	# mem_6(D)->mode, D.18890
	cmpb	$51, %al	#, D.18890
	je	.L396	#,
	.loc 1 1893 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# mem, tmp86
	movzbl	2(%rax), %eax	# mem_6(D)->mode, D.18890
	movzbl	%al, %eax	# D.18890, D.18893
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.18890
	movzbl	%al, %eax	# D.18890, D.18894
	movq	%rax, %rsi	# D.18894,
	movl	$0, %edi	#,
	call	gen_rtx_CONST_INT	#
	jmp	.L397	#
.L396:
	.loc 1 1893 0 discriminator 2
	movl	$0, %eax	#, iftmp.205
.L397:
	.loc 1 1892 0 is_stmt 1
	movq	%rax, %rcx	# iftmp.205, iftmp.204
.L395:
	.loc 1 1892 0 is_stmt 0 discriminator 3
	movq	-24(%rbp), %rax	# mem, tmp88
	movq	16(%rax), %rax	# mem_6(D)->fld[1].rtmem, D.18892
	testq	%rax, %rax	# D.18892
	je	.L398	#,
	.loc 1 1892 0 discriminator 4
	movq	-24(%rbp), %rax	# mem, tmp89
	movq	16(%rax), %rax	# mem_6(D)->fld[1].rtmem, D.18892
	movq	16(%rax), %rdx	# _25->offset, iftmp.206
	jmp	.L399	#
.L398:
	.loc 1 1892 0 discriminator 5
	movl	$0, %edx	#, iftmp.206
.L399:
	.loc 1 1892 0 discriminator 6
	movq	-24(%rbp), %rax	# mem, tmp90
	movq	16(%rax), %rax	# mem_6(D)->fld[1].rtmem, D.18892
	testq	%rax, %rax	# D.18892
	je	.L400	#,
	.loc 1 1892 0 discriminator 7
	movq	-24(%rbp), %rax	# mem, tmp91
	movq	16(%rax), %rax	# mem_6(D)->fld[1].rtmem, D.18892
	movq	(%rax), %rax	# _29->alias, iftmp.207
	jmp	.L401	#
.L400:
	.loc 1 1892 0 discriminator 8
	movl	$0, %eax	#, iftmp.207
.L401:
	.loc 1 1892 0 discriminator 9
	movq	-32(%rbp), %rsi	# expr, tmp92
	movl	%r12d, %r9d	# D.18891,
	movl	%ebx, %r8d	# iftmp.203,
	movq	%rax, %rdi	# iftmp.207,
	call	get_mem_attrs	#
	movq	-24(%rbp), %rdx	# mem, tmp93
	movq	%rax, 16(%rdx)	# D.18892, mem_6(D)->fld[1].rtmem
	.loc 1 1894 0 is_stmt 1 discriminator 9
	addq	$16, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE44:
	.size	set_mem_expr, .-set_mem_expr
	.globl	set_mem_offset
	.type	set_mem_offset, @function
set_mem_offset:
.LFB45:
	.loc 1 1901 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r12	#
	pushq	%rbx	#
	subq	$16, %rsp	#,
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -24(%rbp)	# mem, mem
	movq	%rsi, -32(%rbp)	# offset, offset
	.loc 1 1904 0
	movq	-24(%rbp), %rax	# mem, tmp80
	movzbl	2(%rax), %eax	# mem_6(D)->mode, D.18895
	.loc 1 1902 0
	movzbl	%al, %r12d	# D.18895, D.18896
	.loc 1 1903 0
	movq	-24(%rbp), %rax	# mem, tmp81
	movq	16(%rax), %rax	# mem_6(D)->fld[1].rtmem, D.18897
	.loc 1 1902 0
	testq	%rax, %rax	# D.18897
	je	.L403	#,
	.loc 1 1903 0
	movq	-24(%rbp), %rax	# mem, tmp82
	movq	16(%rax), %rax	# mem_6(D)->fld[1].rtmem, D.18897
	.loc 1 1902 0
	movl	32(%rax), %ebx	# _10->align, iftmp.208
	jmp	.L404	#
.L403:
	.loc 1 1902 0 is_stmt 0 discriminator 1
	movl	$8, %ebx	#, iftmp.208
.L404:
	.loc 1 1903 0 is_stmt 1 discriminator 2
	movq	-24(%rbp), %rax	# mem, tmp83
	movq	16(%rax), %rax	# mem_6(D)->fld[1].rtmem, D.18897
	.loc 1 1902 0 discriminator 2
	testq	%rax, %rax	# D.18897
	je	.L405	#,
	.loc 1 1903 0
	movq	-24(%rbp), %rax	# mem, tmp84
	movq	16(%rax), %rax	# mem_6(D)->fld[1].rtmem, D.18897
	.loc 1 1902 0
	movq	24(%rax), %rdx	# _14->size, iftmp.209
	jmp	.L406	#
.L405:
	.loc 1 1903 0
	movq	-24(%rbp), %rax	# mem, tmp85
	movzbl	2(%rax), %eax	# mem_6(D)->mode, D.18895
	cmpb	$51, %al	#, D.18895
	je	.L407	#,
	.loc 1 1903 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# mem, tmp86
	movzbl	2(%rax), %eax	# mem_6(D)->mode, D.18895
	movzbl	%al, %eax	# D.18895, D.18898
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.18895
	movzbl	%al, %eax	# D.18895, D.18899
	movq	%rax, %rsi	# D.18899,
	movl	$0, %edi	#,
	call	gen_rtx_CONST_INT	#
	jmp	.L408	#
.L407:
	.loc 1 1903 0 discriminator 2
	movl	$0, %eax	#, iftmp.210
.L408:
	.loc 1 1902 0 is_stmt 1
	movq	%rax, %rdx	# iftmp.210, iftmp.209
.L406:
	.loc 1 1902 0 is_stmt 0 discriminator 3
	movq	-24(%rbp), %rax	# mem, tmp88
	movq	16(%rax), %rax	# mem_6(D)->fld[1].rtmem, D.18897
	testq	%rax, %rax	# D.18897
	je	.L409	#,
	.loc 1 1902 0 discriminator 4
	movq	-24(%rbp), %rax	# mem, tmp89
	movq	16(%rax), %rax	# mem_6(D)->fld[1].rtmem, D.18897
	movq	8(%rax), %rsi	# _25->expr, iftmp.211
	jmp	.L410	#
.L409:
	.loc 1 1902 0 discriminator 5
	movl	$0, %esi	#, iftmp.211
.L410:
	.loc 1 1902 0 discriminator 6
	movq	-24(%rbp), %rax	# mem, tmp90
	movq	16(%rax), %rax	# mem_6(D)->fld[1].rtmem, D.18897
	testq	%rax, %rax	# D.18897
	je	.L411	#,
	.loc 1 1902 0 discriminator 7
	movq	-24(%rbp), %rax	# mem, tmp91
	movq	16(%rax), %rax	# mem_6(D)->fld[1].rtmem, D.18897
	movq	(%rax), %rax	# _29->alias, iftmp.212
	jmp	.L412	#
.L411:
	.loc 1 1902 0 discriminator 8
	movl	$0, %eax	#, iftmp.212
.L412:
	.loc 1 1902 0 discriminator 9
	movq	-32(%rbp), %rdi	# offset, tmp92
	movl	%r12d, %r9d	# D.18896,
	movl	%ebx, %r8d	# iftmp.208,
	movq	%rdx, %rcx	# iftmp.209,
	movq	%rdi, %rdx	# tmp92,
	movq	%rax, %rdi	# iftmp.212,
	call	get_mem_attrs	#
	movq	-24(%rbp), %rdx	# mem, tmp93
	movq	%rax, 16(%rdx)	# D.18897, mem_6(D)->fld[1].rtmem
	.loc 1 1905 0 is_stmt 1 discriminator 9
	addq	$16, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE45:
	.size	set_mem_offset, .-set_mem_offset
	.type	change_address_1, @function
change_address_1:
.LFB46:
	.loc 1 1919 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# memref, memref
	movl	%esi, -28(%rbp)	# mode, mode
	movq	%rdx, -40(%rbp)	# addr, addr
	movl	%ecx, -32(%rbp)	# validate, validate
	.loc 1 1922 0
	movq	-24(%rbp), %rax	# memref, tmp76
	movzwl	(%rax), %eax	# memref_5(D)->code, D.18901
	cmpw	$66, %ax	#, D.18901
	je	.L414	#,
	.loc 1 1923 0
	movl	$__FUNCTION__.13615, %edx	#,
	movl	$1923, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L414:
	.loc 1 1924 0
	cmpl	$0, -28(%rbp)	#, mode
	jne	.L415	#,
	.loc 1 1925 0
	movq	-24(%rbp), %rax	# memref, tmp77
	movzbl	2(%rax), %eax	# memref_5(D)->mode, D.18902
	movzbl	%al, %eax	# D.18902, tmp78
	movl	%eax, -28(%rbp)	# tmp78, mode
.L415:
	.loc 1 1926 0
	cmpq	$0, -40(%rbp)	#, addr
	jne	.L416	#,
	.loc 1 1927 0
	movq	-24(%rbp), %rax	# memref, tmp79
	movq	8(%rax), %rax	# memref_5(D)->fld[0].rtx, tmp80
	movq	%rax, -40(%rbp)	# tmp80, addr
.L416:
	.loc 1 1929 0
	cmpl	$0, -32(%rbp)	#, validate
	je	.L417	#,
	.loc 1 1931 0
	movl	reload_in_progress(%rip), %eax	# reload_in_progress, reload_in_progress.213
	testl	%eax, %eax	# reload_in_progress.213
	jne	.L418	#,
	.loc 1 1931 0 is_stmt 0 discriminator 1
	movl	reload_completed(%rip), %eax	# reload_completed, reload_completed.214
	testl	%eax, %eax	# reload_completed.214
	je	.L419	#,
.L418:
	.loc 1 1933 0 is_stmt 1
	movq	-40(%rbp), %rdx	# addr, tmp81
	movl	-28(%rbp), %eax	# mode, tmp82
	movq	%rdx, %rsi	# tmp81,
	movl	%eax, %edi	# tmp82,
	call	memory_address_p	#
	testl	%eax, %eax	# D.18903
	jne	.L420	#,
	.loc 1 1934 0
	movl	$__FUNCTION__.13615, %edx	#,
	movl	$1934, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L420:
	.loc 1 1933 0 discriminator 1
	jmp	.L417	#
.L419:
	.loc 1 1937 0
	movq	-40(%rbp), %rdx	# addr, tmp83
	movl	-28(%rbp), %eax	# mode, tmp84
	movq	%rdx, %rsi	# tmp83,
	movl	%eax, %edi	# tmp84,
	call	memory_address	#
	movq	%rax, -40(%rbp)	# tmp85, addr
.L417:
	.loc 1 1940 0
	movq	-24(%rbp), %rax	# memref, tmp86
	movq	8(%rax), %rdx	# memref_5(D)->fld[0].rtx, D.18904
	movq	-40(%rbp), %rax	# addr, tmp87
	movq	%rdx, %rsi	# D.18904,
	movq	%rax, %rdi	# tmp87,
	call	rtx_equal_p	#
	testl	%eax, %eax	# D.18903
	je	.L421	#,
	.loc 1 1940 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# memref, tmp88
	movzbl	2(%rax), %eax	# memref_5(D)->mode, D.18902
	movzbl	%al, %eax	# D.18902, D.18905
	cmpl	-28(%rbp), %eax	# mode, D.18905
	jne	.L421	#,
	.loc 1 1941 0 is_stmt 1
	movq	-24(%rbp), %rax	# memref, D.18900
	jmp	.L422	#
.L421:
	.loc 1 1943 0
	movq	-40(%rbp), %rdx	# addr, tmp89
	movl	-28(%rbp), %eax	# mode, tmp90
	movq	%rdx, %rsi	# tmp89,
	movl	%eax, %edi	# tmp90,
	call	gen_rtx_MEM	#
	movq	%rax, -8(%rbp)	# tmp91, new
	.loc 1 1944 0
	movq	-24(%rbp), %rax	# memref, tmp92
	movzbl	3(%rax), %eax	# *memref_5(D), tmp95
	shrb	$3, %al	#, D.18906
	andl	$1, %eax	#, D.18906
	movq	-8(%rbp), %rdx	# new, tmp96
	andl	$1, %eax	#, tmp98
	leal	0(,%rax,8), %ecx	#, tmp99
	movzbl	3(%rdx), %eax	# new_22->volatil, tmp100
	andl	$-9, %eax	#, tmp101
	orl	%ecx, %eax	# tmp99, tmp102
	movb	%al, 3(%rdx)	# tmp102, new_22->volatil
	movq	-24(%rbp), %rax	# memref, tmp103
	movzbl	3(%rax), %eax	# *memref_5(D), tmp106
	shrb	$4, %al	#, D.18906
	andl	$1, %eax	#, D.18906
	movq	-8(%rbp), %rdx	# new, tmp107
	andl	$1, %eax	#, tmp109
	sall	$4, %eax	#, tmp110
	movl	%eax, %ecx	# tmp110, tmp110
	movzbl	3(%rdx), %eax	# new_22->in_struct, tmp111
	andl	$-17, %eax	#, tmp112
	orl	%ecx, %eax	# tmp110, tmp113
	movb	%al, 3(%rdx)	# tmp113, new_22->in_struct
	movq	-24(%rbp), %rax	# memref, tmp114
	movzbl	3(%rax), %eax	# *memref_5(D), tmp117
	shrb	$7, %al	#, D.18906
	movl	%eax, %edx	# D.18906, D.18906
	movq	-8(%rbp), %rax	# new, tmp118
	movl	%edx, %ecx	# D.18906, tmp120
	sall	$7, %ecx	#, tmp120
	movzbl	3(%rax), %edx	# new_22->frame_related, tmp121
	andl	$127, %edx	#, tmp122
	orl	%ecx, %edx	# tmp120, tmp123
	movb	%dl, 3(%rax)	# tmp123, new_22->frame_related
	movq	-24(%rbp), %rax	# memref, tmp124
	movzbl	3(%rax), %eax	# *memref_5(D), tmp127
	shrb	$2, %al	#, D.18906
	andl	$1, %eax	#, D.18906
	movq	-8(%rbp), %rdx	# new, tmp128
	andl	$1, %eax	#, tmp130
	leal	0(,%rax,4), %ecx	#, tmp131
	movzbl	3(%rdx), %eax	# new_22->unchanging, tmp132
	andl	$-5, %eax	#, tmp133
	orl	%ecx, %eax	# tmp131, tmp134
	movb	%al, 3(%rdx)	# tmp134, new_22->unchanging
	movq	-24(%rbp), %rax	# memref, tmp135
	movzbl	3(%rax), %eax	# *memref_5(D), tmp138
	andl	$1, %eax	#, D.18906
	movl	%eax, %edx	# D.18906, D.18906
	movq	-8(%rbp), %rax	# new, tmp139
	movl	%edx, %ecx	# D.18906, tmp141
	andl	$1, %ecx	#, tmp141
	movzbl	3(%rax), %edx	# new_22->jump, tmp142
	andl	$-2, %edx	#, tmp143
	orl	%ecx, %edx	# tmp141, tmp144
	movb	%dl, 3(%rax)	# tmp144, new_22->jump
	movq	-24(%rbp), %rax	# memref, tmp145
	movq	16(%rax), %rdx	# memref_5(D)->fld[1].rtmem, D.18907
	movq	-8(%rbp), %rax	# new, tmp146
	movq	%rdx, 16(%rax)	# D.18907, new_22->fld[1].rtmem
	.loc 1 1945 0
	movq	-8(%rbp), %rax	# new, D.18900
.L422:
	.loc 1 1946 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE46:
	.size	change_address_1, .-change_address_1
	.globl	change_address
	.type	change_address, @function
change_address:
.LFB47:
	.loc 1 1956 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$56, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)	# memref, memref
	movl	%esi, -44(%rbp)	# mode, mode
	movq	%rdx, -56(%rbp)	# addr, addr
	.loc 1 1957 0
	movq	-56(%rbp), %rdx	# addr, tmp71
	movl	-44(%rbp), %esi	# mode, tmp72
	movq	-40(%rbp), %rax	# memref, tmp73
	movl	$1, %ecx	#,
	movq	%rax, %rdi	# tmp73,
	call	change_address_1	#
	movq	%rax, -24(%rbp)	# tmp74, new
	.loc 1 1958 0
	movq	-24(%rbp), %rax	# new, tmp75
	movzbl	2(%rax), %eax	# new_7->mode, D.18908
	movzbl	%al, %eax	# D.18908, tmp76
	movl	%eax, -28(%rbp)	# tmp76, mmode
	.loc 1 1961 0
	cmpl	$51, -28(%rbp)	#, mmode
	je	.L424	#,
	.loc 1 1961 0 is_stmt 0 discriminator 1
	movl	-28(%rbp), %eax	# mmode, tmp77
	movl	%eax, %edi	# tmp77,
	call	get_mode_alignment	#
	movl	%eax, %ebx	#, iftmp.215
	jmp	.L425	#
.L424:
	.loc 1 1961 0 discriminator 2
	movl	$8, %ebx	#, iftmp.215
.L425:
	.loc 1 1961 0 discriminator 3
	cmpl	$51, -28(%rbp)	#, mmode
	je	.L426	#,
	.loc 1 1962 0 is_stmt 1
	movl	-28(%rbp), %eax	# mmode, mmode.217
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.18908
	movzbl	%al, %eax	# D.18908, D.18909
	.loc 1 1961 0
	movq	%rax, %rsi	# D.18909,
	movl	$0, %edi	#,
	call	gen_rtx_CONST_INT	#
	movq	%rax, %rdx	#, iftmp.216
	jmp	.L427	#
.L426:
	.loc 1 1961 0 is_stmt 0 discriminator 4
	movl	$0, %edx	#, iftmp.216
.L427:
	.loc 1 1961 0 discriminator 5
	movq	-40(%rbp), %rax	# memref, tmp79
	movq	16(%rax), %rax	# memref_4(D)->fld[1].rtmem, D.18910
	testq	%rax, %rax	# D.18910
	je	.L428	#,
	.loc 1 1961 0 discriminator 6
	movq	-40(%rbp), %rax	# memref, tmp80
	movq	16(%rax), %rax	# memref_4(D)->fld[1].rtmem, D.18910
	movq	(%rax), %rax	# _18->alias, iftmp.218
	jmp	.L429	#
.L428:
	.loc 1 1961 0 discriminator 7
	movl	$0, %eax	#, iftmp.218
.L429:
	.loc 1 1961 0 discriminator 8
	movl	-28(%rbp), %ecx	# mmode, tmp81
	movl	%ecx, %r9d	# tmp81,
	movl	%ebx, %r8d	# iftmp.215,
	movq	%rdx, %rcx	# iftmp.216,
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# iftmp.218,
	call	get_mem_attrs	#
	movq	-24(%rbp), %rdx	# new, tmp82
	movq	%rax, 16(%rdx)	# D.18910, new_7->fld[1].rtmem
	.loc 1 1967 0 is_stmt 1 discriminator 8
	movq	-24(%rbp), %rax	# new, D.18911
	.loc 1 1968 0 discriminator 8
	addq	$56, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE47:
	.size	change_address, .-change_address
	.globl	adjust_address_1
	.type	adjust_address_1, @function
adjust_address_1:
.LFB48:
	.loc 1 1982 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$88, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -72(%rbp)	# memref, memref
	movl	%esi, -76(%rbp)	# mode, mode
	movq	%rdx, -88(%rbp)	# offset, offset
	movl	%ecx, -80(%rbp)	# validate, validate
	movl	%r8d, -92(%rbp)	# adjust, adjust
	.loc 1 1983 0
	movq	-72(%rbp), %rax	# memref, tmp124
	movq	8(%rax), %rax	# memref_14(D)->fld[0].rtx, tmp125
	movq	%rax, -48(%rbp)	# tmp125, addr
	.loc 1 1985 0
	movq	-72(%rbp), %rax	# memref, tmp126
	movq	16(%rax), %rax	# memref_14(D)->fld[1].rtmem, D.18912
	testq	%rax, %rax	# D.18912
	je	.L432	#,
	.loc 1 1985 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# memref, tmp127
	movq	16(%rax), %rax	# memref_14(D)->fld[1].rtmem, D.18912
	movq	16(%rax), %rax	# _17->offset, iftmp.219
	jmp	.L433	#
.L432:
	.loc 1 1985 0 discriminator 2
	movl	$0, %eax	#, iftmp.219
.L433:
	.loc 1 1985 0 discriminator 3
	movq	%rax, -40(%rbp)	# iftmp.219, memoffset
	.loc 1 1986 0 is_stmt 1 discriminator 3
	movq	$0, -32(%rbp)	#, size
	.loc 1 1987 0 discriminator 3
	movq	-72(%rbp), %rax	# memref, tmp128
	movq	16(%rax), %rax	# memref_14(D)->fld[1].rtmem, D.18912
	testq	%rax, %rax	# D.18912
	je	.L434	#,
	.loc 1 1987 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# memref, tmp129
	movq	16(%rax), %rax	# memref_14(D)->fld[1].rtmem, D.18912
	movl	32(%rax), %eax	# _23->align, iftmp.220
	jmp	.L435	#
.L434:
	.loc 1 1987 0 discriminator 2
	movl	$8, %eax	#, iftmp.220
.L435:
	.loc 1 1987 0 discriminator 3
	movl	%eax, -52(%rbp)	# iftmp.220, memalign
	.loc 1 1992 0 is_stmt 1 discriminator 3
	movq	-48(%rbp), %rax	# addr, tmp130
	movq	%rax, %rdi	# tmp130,
	call	copy_rtx	#
	movq	%rax, -48(%rbp)	# tmp131, addr
	.loc 1 1994 0 discriminator 3
	cmpl	$0, -92(%rbp)	#, adjust
	je	.L436	#,
	.loc 1 1998 0
	movq	-72(%rbp), %rax	# memref, tmp132
	movzbl	2(%rax), %eax	# memref_14(D)->mode, D.18913
	cmpb	$51, %al	#, D.18913
	je	.L437	#,
	.loc 1 1998 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# addr, tmp133
	movzwl	(%rax), %eax	# addr_27->code, D.18914
	cmpw	$135, %ax	#, D.18914
	jne	.L437	#,
	.loc 1 1999 0 is_stmt 1
	cmpq	$0, -88(%rbp)	#, offset
	js	.L437	#,
	.loc 1 2000 0
	movq	-88(%rbp), %rbx	# offset, offset.221
	.loc 1 2001 0
	movq	-72(%rbp), %rax	# memref, tmp134
	movzbl	2(%rax), %eax	# memref_14(D)->mode, D.18913
	movzbl	%al, %eax	# D.18913, D.18915
	movl	%eax, %edi	# D.18915,
	call	get_mode_alignment	#
	shrl	$3, %eax	#, D.18916
	movl	%eax, %eax	# D.18916, D.18917
	.loc 1 2000 0
	cmpq	%rax, %rbx	# D.18917, offset.221
	jae	.L437	#,
	.loc 1 2002 0
	movq	-48(%rbp), %rax	# addr, tmp135
	movq	16(%rax), %rax	# addr_27->fld[1].rtx, D.18918
	movq	-88(%rbp), %rdx	# offset, tmp136
	movq	%rdx, %rsi	# tmp136,
	movq	%rax, %rdi	# D.18918,
	call	plus_constant_wide	#
	movq	%rax, %rcx	#, D.18918
	movq	-48(%rbp), %rax	# addr, tmp137
	movq	8(%rax), %rdx	# addr_27->fld[0].rtx, D.18918
	movl	target_flags(%rip), %eax	# target_flags, target_flags.223
	andl	$33554432, %eax	#, D.18919
	testl	%eax, %eax	# D.18919
	je	.L438	#,
	.loc 1 2002 0 is_stmt 0 discriminator 1
	movl	$5, %eax	#, iftmp.222
	jmp	.L439	#
.L438:
	.loc 1 2002 0 discriminator 2
	movl	$4, %eax	#, iftmp.222
.L439:
	.loc 1 2002 0 discriminator 3
	movl	%eax, %esi	# iftmp.222,
	movl	$135, %edi	#,
	call	gen_rtx_fmt_ee	#
	movq	%rax, -48(%rbp)	# tmp138, addr
	jmp	.L436	#
.L437:
	.loc 1 2005 0 is_stmt 1
	movq	-88(%rbp), %rdx	# offset, tmp139
	movq	-48(%rbp), %rax	# addr, tmp140
	movq	%rdx, %rsi	# tmp139,
	movq	%rax, %rdi	# tmp140,
	call	plus_constant_wide	#
	movq	%rax, -48(%rbp)	# tmp141, addr
.L436:
	.loc 1 2008 0
	movl	-80(%rbp), %ecx	# validate, tmp142
	movq	-48(%rbp), %rdx	# addr, tmp143
	movl	-76(%rbp), %esi	# mode, tmp144
	movq	-72(%rbp), %rax	# memref, tmp145
	movq	%rax, %rdi	# tmp145,
	call	change_address_1	#
	movq	%rax, -24(%rbp)	# tmp146, new
	.loc 1 2012 0
	cmpq	$0, -40(%rbp)	#, memoffset
	je	.L440	#,
	.loc 1 2013 0
	movq	-40(%rbp), %rax	# memoffset, tmp147
	movq	8(%rax), %rdx	# memoffset_20->fld[0].rtwint, D.18920
	movq	-88(%rbp), %rax	# offset, tmp148
	addq	%rdx, %rax	# D.18920, D.18920
	movq	%rax, %rsi	# D.18920,
	movl	$0, %edi	#,
	call	gen_rtx_CONST_INT	#
	movq	%rax, -40(%rbp)	# tmp149, memoffset
.L440:
	.loc 1 2018 0
	cmpq	$0, -88(%rbp)	#, offset
	je	.L441	#,
	.loc 1 2020 0
	movq	-88(%rbp), %rax	# offset, tmp150
	negq	%rax	# D.18920
	andq	-88(%rbp), %rax	# offset, D.18920
	leaq	0(,%rax,8), %rdx	#, D.18917
	movl	-52(%rbp), %eax	# memalign, D.18917
	cmpq	%rax, %rdx	# D.18917, D.18917
	cmovbe	%rdx, %rax	# D.18917,, D.18917
	movl	%eax, -52(%rbp)	# D.18917, memalign
.L441:
	.loc 1 2024 0
	movq	-24(%rbp), %rax	# new, tmp151
	movzbl	2(%rax), %eax	# new_49->mode, D.18913
	cmpb	$51, %al	#, D.18913
	je	.L442	#,
	.loc 1 2025 0
	movq	-24(%rbp), %rax	# new, tmp152
	movzbl	2(%rax), %eax	# new_49->mode, D.18913
	movzbl	%al, %eax	# D.18913, D.18919
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.18913
	movzbl	%al, %eax	# D.18913, D.18920
	movq	%rax, %rsi	# D.18920,
	movl	$0, %edi	#,
	call	gen_rtx_CONST_INT	#
	movq	%rax, -32(%rbp)	# tmp154, size
	jmp	.L443	#
.L442:
	.loc 1 2026 0
	movq	-72(%rbp), %rax	# memref, tmp155
	movq	16(%rax), %rax	# memref_14(D)->fld[1].rtmem, D.18912
	testq	%rax, %rax	# D.18912
	je	.L444	#,
	.loc 1 2026 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# memref, tmp156
	movq	16(%rax), %rax	# memref_14(D)->fld[1].rtmem, D.18912
	movq	24(%rax), %rax	# _67->size, D.18918
	testq	%rax, %rax	# D.18918
	setne	%al	#, iftmp.224
	jmp	.L445	#
.L444:
	.loc 1 2026 0 discriminator 2
	movq	-72(%rbp), %rax	# memref, tmp157
	movzbl	2(%rax), %eax	# memref_14(D)->mode, D.18913
	cmpb	$51, %al	#, D.18913
	je	.L446	#,
	.loc 1 2026 0 discriminator 3
	movq	-72(%rbp), %rax	# memref, tmp158
	movzbl	2(%rax), %eax	# memref_14(D)->mode, D.18913
	movzbl	%al, %eax	# D.18913, D.18919
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.18913
	movzbl	%al, %eax	# D.18913, D.18920
	movq	%rax, %rsi	# D.18920,
	movl	$0, %edi	#,
	call	gen_rtx_CONST_INT	#
	testq	%rax, %rax	# D.18918
	je	.L446	#,
	.loc 1 2026 0 discriminator 5
	movl	$1, %eax	#, iftmp.225
	jmp	.L447	#
.L446:
	.loc 1 2026 0 discriminator 4
	movl	$0, %eax	#, iftmp.225
.L447:
	.loc 1 2026 0 discriminator 6
	andl	$1, %eax	#, iftmp.224
.L445:
	.loc 1 2026 0 discriminator 7
	testb	%al, %al	# iftmp.224
	je	.L443	#,
	.loc 1 2027 0 is_stmt 1
	movq	-88(%rbp), %rax	# offset, tmp160
	negq	%rax	# D.18920
	movq	%rax, %rbx	# D.18920, D.18920
	movq	-72(%rbp), %rax	# memref, tmp161
	movq	16(%rax), %rax	# memref_14(D)->fld[1].rtmem, D.18912
	testq	%rax, %rax	# D.18912
	je	.L448	#,
	.loc 1 2027 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# memref, tmp162
	movq	16(%rax), %rax	# memref_14(D)->fld[1].rtmem, D.18912
	movq	24(%rax), %rax	# _81->size, iftmp.226
	jmp	.L449	#
.L448:
	.loc 1 2027 0 discriminator 2
	movq	-72(%rbp), %rax	# memref, tmp163
	movzbl	2(%rax), %eax	# memref_14(D)->mode, D.18913
	cmpb	$51, %al	#, D.18913
	je	.L450	#,
	.loc 1 2027 0 discriminator 1
	movq	-72(%rbp), %rax	# memref, tmp164
	movzbl	2(%rax), %eax	# memref_14(D)->mode, D.18913
	movzbl	%al, %eax	# D.18913, D.18919
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.18913
	movzbl	%al, %eax	# D.18913, D.18920
	movq	%rax, %rsi	# D.18920,
	movl	$0, %edi	#,
	call	gen_rtx_CONST_INT	#
	jmp	.L449	#
.L450:
	.loc 1 2027 0 discriminator 2
	movl	$0, %eax	#, iftmp.227
.L449:
	.loc 1 2027 0 discriminator 3
	movq	%rbx, %rsi	# D.18920,
	movq	%rax, %rdi	# iftmp.226,
	call	plus_constant_wide	#
	movq	%rax, -32(%rbp)	# tmp166, size
.L443:
	.loc 1 2030 0 is_stmt 1
	movq	-24(%rbp), %rax	# new, tmp167
	movzbl	2(%rax), %eax	# new_49->mode, D.18913
	.loc 1 2029 0
	movzbl	%al, %r8d	# D.18913, D.18915
	movq	-72(%rbp), %rax	# memref, tmp168
	movq	16(%rax), %rax	# memref_14(D)->fld[1].rtmem, D.18912
	testq	%rax, %rax	# D.18912
	je	.L452	#,
	.loc 1 2029 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# memref, tmp169
	movq	16(%rax), %rax	# memref_14(D)->fld[1].rtmem, D.18912
	movq	8(%rax), %rsi	# _95->expr, iftmp.228
	jmp	.L453	#
.L452:
	.loc 1 2029 0 discriminator 2
	movl	$0, %esi	#, iftmp.228
.L453:
	.loc 1 2029 0 discriminator 3
	movq	-72(%rbp), %rax	# memref, tmp170
	movq	16(%rax), %rax	# memref_14(D)->fld[1].rtmem, D.18912
	testq	%rax, %rax	# D.18912
	je	.L454	#,
	.loc 1 2029 0 discriminator 4
	movq	-72(%rbp), %rax	# memref, tmp171
	movq	16(%rax), %rax	# memref_14(D)->fld[1].rtmem, D.18912
	movq	(%rax), %rax	# _99->alias, iftmp.229
	jmp	.L455	#
.L454:
	.loc 1 2029 0 discriminator 5
	movl	$0, %eax	#, iftmp.229
.L455:
	.loc 1 2029 0 discriminator 6
	movl	-52(%rbp), %edi	# memalign, tmp172
	movq	-32(%rbp), %rcx	# size, tmp173
	movq	-40(%rbp), %rdx	# memoffset, tmp174
	movl	%r8d, %r9d	# D.18915,
	movl	%edi, %r8d	# tmp172,
	movq	%rax, %rdi	# iftmp.229,
	call	get_mem_attrs	#
	movq	-24(%rbp), %rdx	# new, tmp175
	movq	%rax, 16(%rdx)	# D.18912, new_49->fld[1].rtmem
	.loc 1 2034 0 is_stmt 1 discriminator 6
	movq	-24(%rbp), %rax	# new, D.18921
	.loc 1 2035 0 discriminator 6
	addq	$88, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE48:
	.size	adjust_address_1, .-adjust_address_1
	.globl	adjust_automodify_address_1
	.type	adjust_automodify_address_1, @function
adjust_automodify_address_1:
.LFB49:
	.loc 1 2049 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -8(%rbp)	# memref, memref
	movl	%esi, -12(%rbp)	# mode, mode
	movq	%rdx, -24(%rbp)	# addr, addr
	movq	%rcx, -32(%rbp)	# offset, offset
	movl	%r8d, -16(%rbp)	# validate, validate
	.loc 1 2050 0
	movl	-16(%rbp), %ecx	# validate, tmp61
	movq	-24(%rbp), %rdx	# addr, tmp62
	movq	-8(%rbp), %rax	# memref, tmp63
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp63,
	call	change_address_1	#
	movq	%rax, -8(%rbp)	# tmp64, memref
	.loc 1 2051 0
	movl	-16(%rbp), %ecx	# validate, tmp65
	movq	-32(%rbp), %rdx	# offset, tmp66
	movl	-12(%rbp), %esi	# mode, tmp67
	movq	-8(%rbp), %rax	# memref, tmp68
	movl	$0, %r8d	#,
	movq	%rax, %rdi	# tmp68,
	call	adjust_address_1	#
	.loc 1 2052 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE49:
	.size	adjust_automodify_address_1, .-adjust_automodify_address_1
	.globl	offset_address
	.type	offset_address, @function
offset_address:
.LFB50:
	.loc 1 2063 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# memref, memref
	movq	%rsi, -32(%rbp)	# offset, offset
	movq	%rdx, -40(%rbp)	# pow2, pow2
	.loc 1 2064 0
	movq	-24(%rbp), %rax	# memref, tmp93
	movq	8(%rax), %rax	# memref_7(D)->fld[0].rtx, tmp94
	movq	%rax, -8(%rbp)	# tmp94, addr
	.loc 1 2066 0
	movl	target_flags(%rip), %eax	# target_flags, target_flags.231
	andl	$33554432, %eax	#, D.18924
	testl	%eax, %eax	# D.18924
	je	.L460	#,
	.loc 1 2066 0 is_stmt 0 discriminator 1
	movl	$5, %eax	#, iftmp.230
	jmp	.L461	#
.L460:
	.loc 1 2066 0 discriminator 2
	movl	$4, %eax	#, iftmp.230
.L461:
	.loc 1 2066 0 discriminator 3
	movq	-32(%rbp), %rcx	# offset, tmp95
	movq	-8(%rbp), %rdx	# addr, tmp96
	movl	%eax, %esi	# iftmp.230,
	movl	$75, %edi	#,
	call	simplify_gen_binary	#
	movq	%rax, -16(%rbp)	# tmp97, new
	.loc 1 2075 0 is_stmt 1 discriminator 3
	movq	-24(%rbp), %rax	# memref, tmp98
	movzbl	2(%rax), %eax	# memref_7(D)->mode, D.18925
	movzbl	%al, %eax	# D.18925, D.18926
	movq	-16(%rbp), %rdx	# new, tmp99
	movq	%rdx, %rsi	# tmp99,
	movl	%eax, %edi	# D.18926,
	call	memory_address_p	#
	testl	%eax, %eax	# D.18924
	jne	.L462	#,
	.loc 1 2076 0
	movq	-8(%rbp), %rax	# addr, tmp100
	movzwl	(%rax), %eax	# addr_8->code, D.18927
	cmpw	$75, %ax	#, D.18927
	jne	.L462	#,
	.loc 1 2077 0
	movq	-8(%rbp), %rax	# addr, tmp101
	movq	8(%rax), %rdx	# addr_8->fld[0].rtx, D.18928
	movq	pic_offset_table_rtx(%rip), %rax	# pic_offset_table_rtx, pic_offset_table_rtx.232
	cmpq	%rax, %rdx	# pic_offset_table_rtx.232, D.18928
	jne	.L462	#,
	.loc 1 2079 0
	movq	-8(%rbp), %rax	# addr, tmp102
	movzbl	2(%rax), %eax	# addr_8->mode, D.18925
	movzbl	%al, %eax	# D.18925, D.18926
	movq	-8(%rbp), %rdx	# addr, tmp103
	movq	%rdx, %rsi	# tmp103,
	movl	%eax, %edi	# D.18926,
	call	force_reg	#
	movq	%rax, -8(%rbp)	# tmp104, addr
	.loc 1 2080 0
	movl	target_flags(%rip), %eax	# target_flags, target_flags.234
	andl	$33554432, %eax	#, D.18924
	testl	%eax, %eax	# D.18924
	je	.L463	#,
	.loc 1 2080 0 is_stmt 0 discriminator 1
	movl	$5, %eax	#, iftmp.233
	jmp	.L464	#
.L463:
	.loc 1 2080 0 discriminator 2
	movl	$4, %eax	#, iftmp.233
.L464:
	.loc 1 2080 0 discriminator 3
	movq	-32(%rbp), %rcx	# offset, tmp105
	movq	-8(%rbp), %rdx	# addr, tmp106
	movl	%eax, %esi	# iftmp.233,
	movl	$75, %edi	#,
	call	simplify_gen_binary	#
	movq	%rax, -16(%rbp)	# tmp107, new
.L462:
	.loc 1 2083 0 is_stmt 1
	movq	-24(%rbp), %rax	# memref, tmp108
	movq	8(%rax), %rax	# memref_7(D)->fld[0].rtx, D.18928
	movq	-16(%rbp), %rdx	# new, tmp109
	movq	%rdx, %rsi	# tmp109,
	movq	%rax, %rdi	# D.18928,
	call	update_temp_slot_address	#
	.loc 1 2084 0
	movq	-16(%rbp), %rdx	# new, tmp110
	movq	-24(%rbp), %rax	# memref, tmp111
	movl	$1, %ecx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp111,
	call	change_address_1	#
	movq	%rax, -16(%rbp)	# tmp112, new
	.loc 1 2092 0
	movq	-16(%rbp), %rax	# new, tmp113
	movzbl	2(%rax), %eax	# new_30->mode, D.18925
	.loc 1 2089 0
	movzbl	%al, %ecx	# D.18925, D.18926
	.loc 1 2090 0
	movq	-40(%rbp), %rax	# pow2, pow2.235
	leaq	0(,%rax,8), %rdx	#, D.18929
	movq	-24(%rbp), %rax	# memref, tmp114
	movq	16(%rax), %rax	# memref_7(D)->fld[1].rtmem, D.18930
	testq	%rax, %rax	# D.18930
	je	.L465	#,
	.loc 1 2090 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# memref, tmp115
	movq	16(%rax), %rax	# memref_7(D)->fld[1].rtmem, D.18930
	movl	32(%rax), %eax	# _37->align, D.18931
	movl	%eax, %eax	# D.18931, iftmp.236
	jmp	.L466	#
.L465:
	.loc 1 2090 0 discriminator 2
	movl	$8, %eax	#, iftmp.236
.L466:
	.loc 1 2090 0 discriminator 3
	cmpq	%rax, %rdx	# iftmp.236, D.18929
	cmovbe	%rdx, %rax	# D.18929,, D.18929
	.loc 1 2089 0 is_stmt 1 discriminator 3
	movl	%eax, %edx	# D.18929, D.18931
	movq	-24(%rbp), %rax	# memref, tmp116
	movq	16(%rax), %rax	# memref_7(D)->fld[1].rtmem, D.18930
	testq	%rax, %rax	# D.18930
	je	.L467	#,
	.loc 1 2089 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# memref, tmp117
	movq	16(%rax), %rax	# memref_7(D)->fld[1].rtmem, D.18930
	movq	8(%rax), %rsi	# _44->expr, iftmp.237
	jmp	.L468	#
.L467:
	.loc 1 2089 0 discriminator 2
	movl	$0, %esi	#, iftmp.237
.L468:
	.loc 1 2089 0 discriminator 3
	movq	-24(%rbp), %rax	# memref, tmp118
	movq	16(%rax), %rax	# memref_7(D)->fld[1].rtmem, D.18930
	testq	%rax, %rax	# D.18930
	je	.L469	#,
	.loc 1 2089 0 discriminator 4
	movq	-24(%rbp), %rax	# memref, tmp119
	movq	16(%rax), %rax	# memref_7(D)->fld[1].rtmem, D.18930
	movq	(%rax), %rax	# _48->alias, iftmp.238
	jmp	.L470	#
.L469:
	.loc 1 2089 0 discriminator 5
	movl	$0, %eax	#, iftmp.238
.L470:
	.loc 1 2089 0 discriminator 6
	movl	%ecx, %r9d	# D.18926,
	movl	%edx, %r8d	# D.18931,
	movl	$0, %ecx	#,
	movl	$0, %edx	#,
	movq	%rax, %rdi	# iftmp.238,
	call	get_mem_attrs	#
	movq	-16(%rbp), %rdx	# new, tmp120
	movq	%rax, 16(%rdx)	# D.18930, new_30->fld[1].rtmem
	.loc 1 2093 0 is_stmt 1 discriminator 6
	movq	-16(%rbp), %rax	# new, D.18932
	.loc 1 2094 0 discriminator 6
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE50:
	.size	offset_address, .-offset_address
	.globl	replace_equiv_address
	.type	replace_equiv_address, @function
replace_equiv_address:
.LFB51:
	.loc 1 2105 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# memref, memref
	movq	%rsi, -16(%rbp)	# addr, addr
	.loc 1 2108 0
	movq	-8(%rbp), %rax	# memref, tmp62
	movq	8(%rax), %rax	# memref_1(D)->fld[0].rtx, D.18933
	movq	-16(%rbp), %rdx	# addr, tmp63
	movq	%rdx, %rsi	# tmp63,
	movq	%rax, %rdi	# D.18933,
	call	update_temp_slot_address	#
	.loc 1 2109 0
	movq	-16(%rbp), %rdx	# addr, tmp64
	movq	-8(%rbp), %rax	# memref, tmp65
	movl	$1, %ecx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp65,
	call	change_address_1	#
	.loc 1 2110 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE51:
	.size	replace_equiv_address, .-replace_equiv_address
	.globl	replace_equiv_address_nv
	.type	replace_equiv_address_nv, @function
replace_equiv_address_nv:
.LFB52:
	.loc 1 2118 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# memref, memref
	movq	%rsi, -16(%rbp)	# addr, addr
	.loc 1 2119 0
	movq	-16(%rbp), %rdx	# addr, tmp61
	movq	-8(%rbp), %rax	# memref, tmp62
	movl	$0, %ecx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp62,
	call	change_address_1	#
	.loc 1 2120 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE52:
	.size	replace_equiv_address_nv, .-replace_equiv_address_nv
	.globl	widen_memory_access
	.type	widen_memory_access, @function
widen_memory_access:
.LFB53:
	.loc 1 2132 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$88, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -72(%rbp)	# memref, memref
	movl	%esi, -76(%rbp)	# mode, mode
	movq	%rdx, -88(%rbp)	# offset, offset
	.loc 1 2133 0
	movq	-88(%rbp), %rdx	# offset, tmp103
	movl	-76(%rbp), %esi	# mode, tmp104
	movq	-72(%rbp), %rax	# memref, tmp105
	movl	$1, %r8d	#,
	movl	$1, %ecx	#,
	movq	%rax, %rdi	# tmp105,
	call	adjust_address_1	#
	movq	%rax, -32(%rbp)	# tmp106, new
	.loc 1 2134 0
	movq	-32(%rbp), %rax	# new, tmp107
	movq	16(%rax), %rax	# new_12->fld[1].rtmem, D.18936
	testq	%rax, %rax	# D.18936
	je	.L477	#,
	.loc 1 2134 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# new, tmp108
	movq	16(%rax), %rax	# new_12->fld[1].rtmem, D.18936
	movq	8(%rax), %rax	# _14->expr, iftmp.239
	jmp	.L478	#
.L477:
	.loc 1 2134 0 discriminator 2
	movl	$0, %eax	#, iftmp.239
.L478:
	.loc 1 2134 0 discriminator 3
	movq	%rax, -48(%rbp)	# iftmp.239, expr
	.loc 1 2135 0 is_stmt 1 discriminator 3
	movq	-32(%rbp), %rax	# new, tmp109
	movq	16(%rax), %rax	# new_12->fld[1].rtmem, D.18936
	testq	%rax, %rax	# D.18936
	je	.L479	#,
	.loc 1 2135 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# new, tmp110
	movq	16(%rax), %rax	# new_12->fld[1].rtmem, D.18936
	movq	16(%rax), %rax	# _19->offset, iftmp.240
	jmp	.L480	#
.L479:
	.loc 1 2135 0 discriminator 2
	movl	$0, %eax	#, iftmp.240
.L480:
	.loc 1 2135 0 discriminator 3
	movq	%rax, -40(%rbp)	# iftmp.240, memoffset
	.loc 1 2136 0 is_stmt 1 discriminator 3
	movl	-76(%rbp), %eax	# mode, mode.241
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.18937
	movzbl	%al, %eax	# D.18937, tmp112
	movl	%eax, -52(%rbp)	# tmp112, size
	.loc 1 2140 0 discriminator 3
	cmpq	$0, -40(%rbp)	#, memoffset
	jne	.L481	#,
	.loc 1 2141 0
	movq	$0, -48(%rbp)	#, expr
	.loc 1 2143 0
	jmp	.L482	#
.L481:
	jmp	.L482	#
.L489:
	.loc 1 2145 0
	movq	-48(%rbp), %rax	# expr, tmp113
	movzbl	16(%rax), %eax	# expr_2->common.code, D.18937
	cmpb	$39, %al	#, D.18937
	jne	.L483	#,
.LBB29:
	.loc 1 2147 0
	movq	-48(%rbp), %rax	# expr, tmp114
	movq	40(%rax), %rax	# expr_2->exp.operands, tmp115
	movq	%rax, -24(%rbp)	# tmp115, field
	.loc 1 2149 0
	movq	-24(%rbp), %rax	# field, tmp116
	movq	64(%rax), %rax	# field_28->decl.size_unit, D.18938
	testq	%rax, %rax	# D.18938
	jne	.L484	#,
	.loc 1 2151 0
	movq	$0, -48(%rbp)	#, expr
	.loc 1 2152 0
	jmp	.L485	#
.L484:
	.loc 1 2157 0
	movq	-24(%rbp), %rax	# field, tmp117
	movq	64(%rax), %rax	# field_28->decl.size_unit, D.18938
	movzbl	16(%rax), %eax	# _31->common.code, D.18937
	cmpb	$25, %al	#, D.18937
	jne	.L486	#,
	.loc 1 2158 0
	movl	-52(%rbp), %edx	# size, D.18939
	movq	-24(%rbp), %rax	# field, tmp118
	movq	64(%rax), %rax	# field_28->decl.size_unit, D.18938
	movq	%rdx, %rsi	# D.18939,
	movq	%rax, %rdi	# D.18938,
	call	compare_tree_int	#
	testl	%eax, %eax	# D.18940
	js	.L486	#,
	.loc 1 2159 0
	movq	-40(%rbp), %rax	# memoffset, tmp119
	movq	8(%rax), %rax	# memoffset_4->fld[0].rtwint, D.18941
	testq	%rax, %rax	# D.18941
	js	.L486	#,
	.loc 1 2160 0
	jmp	.L485	#
.L486:
	.loc 1 2162 0
	movq	-24(%rbp), %rax	# field, tmp120
	movq	88(%rax), %rax	# field_28->decl.arguments, D.18938
	movl	$1, %esi	#,
	movq	%rax, %rdi	# D.18938,
	call	host_integerp	#
	testl	%eax, %eax	# D.18940
	jne	.L487	#,
	.loc 1 2164 0
	movq	$0, -48(%rbp)	#, expr
	.loc 1 2165 0
	jmp	.L485	#
.L487:
	.loc 1 2168 0
	movq	-48(%rbp), %rax	# expr, tmp121
	movq	32(%rax), %rax	# expr_2->exp.operands, tmp122
	movq	%rax, -48(%rbp)	# tmp122, expr
	.loc 1 2169 0
	movq	-40(%rbp), %rax	# memoffset, tmp123
	movq	8(%rax), %rbx	# memoffset_4->fld[0].rtwint, D.18941
	movq	-24(%rbp), %rax	# field, tmp124
	movq	88(%rax), %rax	# field_28->decl.arguments, D.18938
	movl	$1, %esi	#,
	movq	%rax, %rdi	# D.18938,
	call	tree_low_cst	#
	addq	%rax, %rbx	# D.18941, D.18941
	movq	-24(%rbp), %rax	# field, tmp125
	movq	160(%rax), %rax	# field_28->decl.u2.t, D.18938
	movl	$1, %esi	#,
	movq	%rax, %rdi	# D.18938,
	call	tree_low_cst	#
	leaq	7(%rax), %rdx	#, tmp127
	testq	%rax, %rax	# tmp126
	cmovs	%rdx, %rax	# tmp127,, tmp126
	sarq	$3, %rax	#, tmp128
	addq	%rbx, %rax	# D.18941, D.18941
	movq	%rax, %rsi	# D.18941,
	movl	$0, %edi	#,
	call	gen_rtx_CONST_INT	#
	movq	%rax, -40(%rbp)	# tmp129, memoffset
.LBE29:
	jmp	.L482	#
.L483:
	.loc 1 2175 0
	movq	-48(%rbp), %rax	# expr, tmp130
	movzbl	16(%rax), %eax	# expr_2->common.code, D.18937
	movzbl	%al, %eax	# D.18937, D.18940
	cltq
	movzbl	tree_code_type(%rax), %eax	# tree_code_type, D.18942
	cmpb	$100, %al	#, D.18942
	jne	.L488	#,
	.loc 1 2176 0
	movq	-48(%rbp), %rax	# expr, tmp132
	movq	64(%rax), %rax	# expr_2->decl.size_unit, D.18938
	testq	%rax, %rax	# D.18938
	je	.L488	#,
	.loc 1 2177 0
	movq	-48(%rbp), %rax	# expr, tmp133
	movq	64(%rax), %rax	# expr_2->decl.size_unit, D.18938
	movzbl	16(%rax), %eax	# _54->common.code, D.18937
	cmpb	$25, %al	#, D.18937
	jne	.L488	#,
	.loc 1 2178 0
	movl	-52(%rbp), %edx	# size, D.18939
	movq	-48(%rbp), %rax	# expr, tmp134
	movq	64(%rax), %rax	# expr_2->decl.size_unit, D.18938
	movq	%rdx, %rsi	# D.18939,
	movq	%rax, %rdi	# D.18938,
	call	compare_tree_int	#
	testl	%eax, %eax	# D.18940
	js	.L488	#,
	.loc 1 2179 0
	cmpq	$0, -40(%rbp)	#, memoffset
	je	.L485	#,
	.loc 1 2179 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# memoffset, tmp135
	movq	8(%rax), %rax	# memoffset_4->fld[0].rtwint, D.18941
	testq	%rax, %rax	# D.18941
	jns	.L485	#,
.L488:
	.loc 1 2185 0 is_stmt 1
	movq	$0, -48(%rbp)	#, expr
	.loc 1 2186 0
	jmp	.L485	#
.L482:
	.loc 1 2143 0 discriminator 1
	cmpq	$0, -48(%rbp)	#, expr
	jne	.L489	#,
.L485:
	.loc 1 2190 0
	cmpq	$0, -48(%rbp)	#, expr
	jne	.L490	#,
	.loc 1 2191 0
	movq	$0, -40(%rbp)	#, memoffset
.L490:
	.loc 1 2197 0
	movq	-32(%rbp), %rax	# new, tmp136
	movq	16(%rax), %rax	# new_12->fld[1].rtmem, D.18936
	.loc 1 2196 0
	testq	%rax, %rax	# D.18936
	je	.L491	#,
	.loc 1 2197 0
	movq	-32(%rbp), %rax	# new, tmp137
	movq	16(%rax), %rax	# new_12->fld[1].rtmem, D.18936
	.loc 1 2196 0
	movl	32(%rax), %ebx	# _63->align, iftmp.242
	jmp	.L492	#
.L491:
	.loc 1 2196 0 is_stmt 0 discriminator 1
	movl	$8, %ebx	#, iftmp.242
.L492:
	.loc 1 2196 0 discriminator 2
	movl	-52(%rbp), %eax	# size, D.18941
	movq	%rax, %rsi	# D.18941,
	movl	$0, %edi	#,
	call	gen_rtx_CONST_INT	#
	movq	%rax, %rcx	#, D.18943
	movl	-76(%rbp), %esi	# mode, tmp138
	movq	-40(%rbp), %rdx	# memoffset, tmp139
	movq	-48(%rbp), %rax	# expr, tmp140
	movl	%esi, %r9d	# tmp138,
	movl	%ebx, %r8d	# iftmp.242,
	movq	%rax, %rsi	# tmp140,
	movl	$0, %edi	#,
	call	get_mem_attrs	#
	movq	-32(%rbp), %rdx	# new, tmp141
	movq	%rax, 16(%rdx)	# D.18936, new_12->fld[1].rtmem
	.loc 1 2199 0 is_stmt 1 discriminator 2
	movq	-32(%rbp), %rax	# new, D.18944
	.loc 1 2200 0 discriminator 2
	addq	$88, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE53:
	.size	widen_memory_access, .-widen_memory_access
	.globl	gen_label_rtx
	.type	gen_label_rtx, @function
gen_label_rtx:
.LFB54:
	.loc 1 2206 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	.loc 1 2209 0
	movl	label_num(%rip), %eax	# label_num, label_num.243
	leal	1(%rax), %edx	#, label_num.245
	movl	%edx, label_num(%rip)	# label_num.245, label_num
	movq	$0, 8(%rsp)	#,
	movq	$0, (%rsp)	#,
	movl	%eax, %r9d	# label_num.244,
	movl	$0, %r8d	#,
	movl	$0, %ecx	#,
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movl	$36, %edi	#,
	call	gen_rtx_fmt_iuu00iss	#
	movq	%rax, -8(%rbp)	# tmp64, label
	.loc 1 2212 0
	movq	-8(%rbp), %rax	# label, tmp65
	movl	$0, 32(%rax)	#, label_4->fld[3].rtint
	.loc 1 2213 0
	movq	-8(%rbp), %rax	# label, tmp66
	movq	$0, 64(%rax)	#, label_4->fld[7].rtstr
	.loc 1 2214 0
	movq	-8(%rbp), %rax	# label, D.18945
	.loc 1 2215 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE54:
	.size	gen_label_rtx, .-gen_label_rtx
	.globl	set_new_first_and_last_insn
	.type	set_new_first_and_last_insn, @function
set_new_first_and_last_insn:
.LFB55:
	.loc 1 2226 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# first, first
	movq	%rsi, -32(%rbp)	# last, last
	.loc 1 2229 0
	movq	cfun(%rip), %rax	# cfun, cfun.246
	movq	24(%rax), %rax	# cfun.246_2->emit, D.18946
	movq	-24(%rbp), %rdx	# first, tmp76
	movq	%rdx, 8(%rax)	# tmp76, _3->x_first_insn
	.loc 1 2230 0
	movq	cfun(%rip), %rax	# cfun, cfun.247
	movq	24(%rax), %rax	# cfun.247_5->emit, D.18946
	movq	-32(%rbp), %rdx	# last, tmp77
	movq	%rdx, 16(%rax)	# tmp77, _6->x_last_insn
	.loc 1 2231 0
	movq	cfun(%rip), %rax	# cfun, cfun.248
	movq	24(%rax), %rax	# cfun.248_8->emit, D.18946
	movl	$0, 40(%rax)	#, _9->x_cur_insn_uid
	.loc 1 2233 0
	movq	-24(%rbp), %rax	# first, tmp78
	movq	%rax, -8(%rbp)	# tmp78, insn
	jmp	.L497	#
.L498:
	.loc 1 2234 0 discriminator 2
	movq	cfun(%rip), %rax	# cfun, cfun.249
	movq	24(%rax), %rcx	# cfun.249_11->emit, D.18946
	movq	-8(%rbp), %rax	# insn, tmp79
	movl	8(%rax), %edx	# insn_1->fld[0].rtint, D.18947
	movq	cfun(%rip), %rax	# cfun, cfun.250
	movq	24(%rax), %rax	# cfun.250_14->emit, D.18946
	movl	40(%rax), %eax	# _15->x_cur_insn_uid, D.18947
	cmpl	%eax, %edx	# D.18947, D.18947
	cmovge	%edx, %eax	# D.18947,, D.18947
	movl	%eax, 40(%rcx)	# D.18947, _12->x_cur_insn_uid
	.loc 1 2233 0 discriminator 2
	movq	-8(%rbp), %rax	# insn, tmp80
	movq	24(%rax), %rax	# insn_1->fld[2].rtx, tmp81
	movq	%rax, -8(%rbp)	# tmp81, insn
.L497:
	.loc 1 2233 0 is_stmt 0 discriminator 1
	cmpq	$0, -8(%rbp)	#, insn
	jne	.L498	#,
	.loc 1 2236 0 is_stmt 1
	movq	cfun(%rip), %rax	# cfun, cfun.251
	movq	24(%rax), %rax	# cfun.251_19->emit, D.18946
	movl	40(%rax), %edx	# _20->x_cur_insn_uid, D.18947
	addl	$1, %edx	#, D.18947
	movl	%edx, 40(%rax)	# D.18947, _20->x_cur_insn_uid
	.loc 1 2237 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE55:
	.size	set_new_first_and_last_insn, .-set_new_first_and_last_insn
	.globl	set_new_first_and_last_label_num
	.type	set_new_first_and_last_label_num, @function
set_new_first_and_last_label_num:
.LFB56:
	.loc 1 2245 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)	# first, first
	movl	%esi, -8(%rbp)	# last, last
	.loc 1 2246 0
	movl	label_num(%rip), %eax	# label_num, label_num.252
	movl	%eax, base_label_num(%rip)	# label_num.252, base_label_num
	.loc 1 2247 0
	movq	cfun(%rip), %rax	# cfun, cfun.253
	movq	24(%rax), %rax	# cfun.253_2->emit, D.18948
	movl	-4(%rbp), %edx	# first, tmp62
	movl	%edx, 4(%rax)	# tmp62, _3->x_first_label_num
	.loc 1 2248 0
	movl	-8(%rbp), %eax	# last, tmp63
	movl	%eax, last_label_num(%rip)	# tmp63, last_label_num
	.loc 1 2249 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE56:
	.size	set_new_first_and_last_label_num, .-set_new_first_and_last_label_num
	.globl	set_new_last_label_num
	.type	set_new_last_label_num, @function
set_new_last_label_num:
.LFB57:
	.loc 1 2257 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)	# last, last
	.loc 1 2258 0
	movl	label_num(%rip), %eax	# label_num, label_num.254
	movl	%eax, base_label_num(%rip)	# label_num.254, base_label_num
	.loc 1 2259 0
	movl	-4(%rbp), %eax	# last, tmp60
	movl	%eax, last_label_num(%rip)	# tmp60, last_label_num
	.loc 1 2260 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE57:
	.size	set_new_last_label_num, .-set_new_last_label_num
	.globl	restore_emit_status
	.type	restore_emit_status, @function
restore_emit_status:
.LFB58:
	.loc 1 2268 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# p, p
	.loc 1 2269 0
	movl	$0, last_label_num(%rip)	#, last_label_num
	.loc 1 2270 0
	call	clear_emit_caches	#
	.loc 1 2271 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE58:
	.size	restore_emit_status, .-restore_emit_status
	.globl	free_emit_status
	.type	free_emit_status, @function
free_emit_status:
.LFB59:
	.loc 1 2280 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# f, f
	.loc 1 2281 0
	movq	-8(%rbp), %rax	# f, tmp66
	movq	24(%rax), %rax	# f_1(D)->emit, D.18949
	movq	80(%rax), %rax	# _2->x_regno_reg_rtx, D.18950
	movq	%rax, %rdi	# D.18950,
	call	free	#
	.loc 1 2282 0
	movq	-8(%rbp), %rax	# f, tmp67
	movq	24(%rax), %rax	# f_1(D)->emit, D.18949
	movq	64(%rax), %rax	# _4->regno_pointer_align, D.18951
	movq	%rax, %rdi	# D.18951,
	call	free	#
	.loc 1 2283 0
	movq	-8(%rbp), %rax	# f, tmp68
	movq	24(%rax), %rax	# f_1(D)->emit, D.18949
	movq	72(%rax), %rax	# _6->regno_decl, D.18952
	movq	%rax, %rdi	# D.18952,
	call	free	#
	.loc 1 2284 0
	movq	-8(%rbp), %rax	# f, tmp69
	movq	24(%rax), %rax	# f_1(D)->emit, D.18949
	movq	%rax, %rdi	# D.18949,
	call	free	#
	.loc 1 2285 0
	movq	-8(%rbp), %rax	# f, tmp70
	movq	$0, 24(%rax)	#, f_1(D)->emit
	.loc 1 2286 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE59:
	.size	free_emit_status, .-free_emit_status
	.globl	unshare_all_rtl
	.type	unshare_all_rtl, @function
unshare_all_rtl:
.LFB60:
	.loc 1 2295 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$40, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)	# fndecl, fndecl
	movq	%rsi, -48(%rbp)	# insn, insn
	.loc 1 2299 0
	movq	-40(%rbp), %rax	# fndecl, tmp67
	movq	88(%rax), %rax	# fndecl_3(D)->decl.arguments, tmp68
	movq	%rax, -24(%rbp)	# tmp68, decl
	jmp	.L504	#
.L507:
	.loc 1 2300 0
	movq	-24(%rbp), %rax	# decl, tmp69
	movq	144(%rax), %rax	# decl_1->decl.rtl, D.18953
	testq	%rax, %rax	# D.18953
	je	.L505	#,
	.loc 1 2300 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# decl, tmp70
	movq	144(%rax), %rax	# decl_1->decl.rtl, iftmp.255
	jmp	.L506	#
.L505:
	.loc 1 2300 0 discriminator 2
	movq	-24(%rbp), %rax	# decl, tmp71
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp71,
	call	make_decl_rtl	#
	movq	-24(%rbp), %rax	# decl, tmp72
	movq	144(%rax), %rax	# decl_1->decl.rtl, iftmp.255
.L506:
	.loc 1 2300 0 discriminator 3
	movq	%rax, %rdi	# iftmp.255,
	call	copy_rtx_if_shared	#
	movq	-24(%rbp), %rdx	# decl, tmp73
	movq	%rax, 144(%rdx)	# D.18953, decl_1->decl.rtl
	.loc 1 2299 0 is_stmt 1 discriminator 3
	movq	-24(%rbp), %rax	# decl, tmp74
	movq	(%rax), %rax	# decl_1->common.chain, tmp75
	movq	%rax, -24(%rbp)	# tmp75, decl
.L504:
	.loc 1 2299 0 is_stmt 0 discriminator 1
	cmpq	$0, -24(%rbp)	#, decl
	jne	.L507	#,
	.loc 1 2303 0 is_stmt 1
	movq	-40(%rbp), %rax	# fndecl, tmp76
	movq	104(%rax), %rax	# fndecl_3(D)->decl.initial, D.18954
	movq	%rax, %rdi	# D.18954,
	call	unshare_all_decls	#
	.loc 1 2306 0
	movq	-48(%rbp), %rax	# insn, tmp77
	movq	%rax, %rdi	# tmp77,
	call	unshare_all_rtl_1	#
	.loc 1 2315 0
	movq	cfun(%rip), %rbx	# cfun, cfun.256
	movq	cfun(%rip), %rax	# cfun, cfun.257
	movq	216(%rax), %rax	# cfun.257_13->x_stack_slot_list, D.18953
	movq	%rax, %rdi	# D.18953,
	call	copy_rtx_if_shared	#
	movq	%rax, 216(%rbx)	# D.18953, cfun.256_12->x_stack_slot_list
	.loc 1 2316 0
	addq	$40, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE60:
	.size	unshare_all_rtl, .-unshare_all_rtl
	.globl	unshare_all_rtl_again
	.type	unshare_all_rtl_again, @function
unshare_all_rtl_again:
.LFB61:
	.loc 1 2325 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# insn, insn
	.loc 1 2329 0
	movq	-24(%rbp), %rax	# insn, tmp76
	movq	%rax, -16(%rbp)	# tmp76, p
	jmp	.L509	#
.L511:
	.loc 1 2330 0
	movq	-16(%rbp), %rax	# p, tmp77
	movzwl	(%rax), %eax	# p_1->code, D.18955
	movzwl	%ax, %eax	# D.18955, D.18956
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.18957
	cmpb	$105, %al	#, D.18957
	jne	.L510	#,
	.loc 1 2332 0
	movq	-16(%rbp), %rax	# p, tmp79
	movq	32(%rax), %rax	# p_1->fld[3].rtx, D.18958
	movq	%rax, %rdi	# D.18958,
	call	reset_used_flags	#
	.loc 1 2333 0
	movq	-16(%rbp), %rax	# p, tmp80
	movq	56(%rax), %rax	# p_1->fld[6].rtx, D.18958
	movq	%rax, %rdi	# D.18958,
	call	reset_used_flags	#
	.loc 1 2334 0
	movq	-16(%rbp), %rax	# p, tmp81
	movq	48(%rax), %rax	# p_1->fld[5].rtx, D.18958
	movq	%rax, %rdi	# D.18958,
	call	reset_used_flags	#
.L510:
	.loc 1 2329 0
	movq	-16(%rbp), %rax	# p, tmp82
	movq	24(%rax), %rax	# p_1->fld[2].rtx, tmp83
	movq	%rax, -16(%rbp)	# tmp83, p
.L509:
	.loc 1 2329 0 is_stmt 0 discriminator 1
	cmpq	$0, -16(%rbp)	#, p
	jne	.L511	#,
	.loc 1 2338 0 is_stmt 1
	movq	cfun(%rip), %rax	# cfun, cfun.258
	movq	48(%rax), %rax	# cfun.258_13->decl, D.18959
	movq	104(%rax), %rax	# _14->decl.initial, D.18959
	movq	%rax, %rdi	# D.18959,
	call	reset_used_decls	#
	.loc 1 2341 0
	movq	cfun(%rip), %rax	# cfun, cfun.259
	movq	48(%rax), %rax	# cfun.259_16->decl, D.18959
	movq	88(%rax), %rax	# _17->decl.arguments, tmp84
	movq	%rax, -8(%rbp)	# tmp84, decl
	jmp	.L512	#
.L515:
	.loc 1 2342 0
	movq	-8(%rbp), %rax	# decl, tmp85
	movq	144(%rax), %rax	# decl_2->decl.rtl, D.18958
	testq	%rax, %rax	# D.18958
	je	.L513	#,
	.loc 1 2342 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# decl, tmp86
	movq	144(%rax), %rax	# decl_2->decl.rtl, iftmp.260
	jmp	.L514	#
.L513:
	.loc 1 2342 0 discriminator 2
	movq	-8(%rbp), %rax	# decl, tmp87
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp87,
	call	make_decl_rtl	#
	movq	-8(%rbp), %rax	# decl, tmp88
	movq	144(%rax), %rax	# decl_2->decl.rtl, iftmp.260
.L514:
	.loc 1 2342 0 discriminator 3
	movq	%rax, %rdi	# iftmp.260,
	call	reset_used_flags	#
	.loc 1 2341 0 is_stmt 1 discriminator 3
	movq	-8(%rbp), %rax	# decl, tmp89
	movq	(%rax), %rax	# decl_2->common.chain, tmp90
	movq	%rax, -8(%rbp)	# tmp90, decl
.L512:
	.loc 1 2341 0 is_stmt 0 discriminator 1
	cmpq	$0, -8(%rbp)	#, decl
	jne	.L515	#,
	.loc 1 2344 0 is_stmt 1
	movq	cfun(%rip), %rax	# cfun, cfun.261
	movq	216(%rax), %rax	# cfun.261_23->x_stack_slot_list, D.18958
	movq	%rax, %rdi	# D.18958,
	call	reset_used_flags	#
	.loc 1 2346 0
	movq	cfun(%rip), %rax	# cfun, cfun.262
	movq	48(%rax), %rax	# cfun.262_25->decl, D.18959
	movq	-24(%rbp), %rdx	# insn, tmp91
	movq	%rdx, %rsi	# tmp91,
	movq	%rax, %rdi	# D.18959,
	call	unshare_all_rtl	#
	.loc 1 2347 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE61:
	.size	unshare_all_rtl_again, .-unshare_all_rtl_again
	.type	unshare_all_rtl_1, @function
unshare_all_rtl_1:
.LFB62:
	.loc 1 2355 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# insn, insn
	.loc 1 2356 0
	jmp	.L517	#
.L519:
	.loc 1 2357 0
	movq	-8(%rbp), %rax	# insn, tmp68
	movzwl	(%rax), %eax	# insn_1->code, D.18960
	movzwl	%ax, %eax	# D.18960, D.18961
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.18962
	cmpb	$105, %al	#, D.18962
	jne	.L518	#,
	.loc 1 2359 0
	movq	-8(%rbp), %rax	# insn, tmp70
	movq	32(%rax), %rax	# insn_1->fld[3].rtx, D.18963
	movq	%rax, %rdi	# D.18963,
	call	copy_rtx_if_shared	#
	movq	-8(%rbp), %rdx	# insn, tmp71
	movq	%rax, 32(%rdx)	# D.18963, insn_1->fld[3].rtx
	.loc 1 2360 0
	movq	-8(%rbp), %rax	# insn, tmp72
	movq	56(%rax), %rax	# insn_1->fld[6].rtx, D.18963
	movq	%rax, %rdi	# D.18963,
	call	copy_rtx_if_shared	#
	movq	-8(%rbp), %rdx	# insn, tmp73
	movq	%rax, 56(%rdx)	# D.18963, insn_1->fld[6].rtx
	.loc 1 2361 0
	movq	-8(%rbp), %rax	# insn, tmp74
	movq	48(%rax), %rax	# insn_1->fld[5].rtx, D.18963
	movq	%rax, %rdi	# D.18963,
	call	copy_rtx_if_shared	#
	movq	-8(%rbp), %rdx	# insn, tmp75
	movq	%rax, 48(%rdx)	# D.18963, insn_1->fld[5].rtx
.L518:
	.loc 1 2356 0
	movq	-8(%rbp), %rax	# insn, tmp76
	movq	24(%rax), %rax	# insn_1->fld[2].rtx, tmp77
	movq	%rax, -8(%rbp)	# tmp77, insn
.L517:
	.loc 1 2356 0 is_stmt 0 discriminator 1
	cmpq	$0, -8(%rbp)	#, insn
	jne	.L519	#,
	.loc 1 2363 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE62:
	.size	unshare_all_rtl_1, .-unshare_all_rtl_1
	.type	unshare_all_decls, @function
unshare_all_decls:
.LFB63:
	.loc 1 2370 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# blk, blk
	.loc 1 2374 0
	movq	-24(%rbp), %rax	# blk, tmp63
	movq	32(%rax), %rax	# blk_4(D)->block.vars, tmp64
	movq	%rax, -8(%rbp)	# tmp64, t
	jmp	.L521	#
.L525:
	.loc 1 2375 0
	movq	-8(%rbp), %rax	# t, tmp65
	movq	144(%rax), %rax	# t_1->decl.rtl, D.18964
	testq	%rax, %rax	# D.18964
	je	.L522	#,
	.loc 1 2376 0
	movq	-8(%rbp), %rax	# t, tmp66
	movq	144(%rax), %rax	# t_1->decl.rtl, D.18964
	testq	%rax, %rax	# D.18964
	je	.L523	#,
	.loc 1 2376 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# t, tmp67
	movq	144(%rax), %rax	# t_1->decl.rtl, iftmp.263
	jmp	.L524	#
.L523:
	.loc 1 2376 0 discriminator 2
	movq	-8(%rbp), %rax	# t, tmp68
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp68,
	call	make_decl_rtl	#
	movq	-8(%rbp), %rax	# t, tmp69
	movq	144(%rax), %rax	# t_1->decl.rtl, iftmp.263
.L524:
	.loc 1 2376 0 discriminator 3
	movq	%rax, %rdi	# iftmp.263,
	call	copy_rtx_if_shared	#
	movq	-8(%rbp), %rdx	# t, tmp70
	movq	%rax, 144(%rdx)	# D.18964, t_1->decl.rtl
.L522:
	.loc 1 2374 0 is_stmt 1
	movq	-8(%rbp), %rax	# t, tmp71
	movq	(%rax), %rax	# t_1->common.chain, tmp72
	movq	%rax, -8(%rbp)	# tmp72, t
.L521:
	.loc 1 2374 0 is_stmt 0 discriminator 1
	cmpq	$0, -8(%rbp)	#, t
	jne	.L525	#,
	.loc 1 2379 0 is_stmt 1
	movq	-24(%rbp), %rax	# blk, tmp73
	movq	40(%rax), %rax	# blk_4(D)->block.subblocks, tmp74
	movq	%rax, -8(%rbp)	# tmp74, t
	jmp	.L526	#
.L527:
	.loc 1 2380 0 discriminator 2
	movq	-8(%rbp), %rax	# t, tmp75
	movq	%rax, %rdi	# tmp75,
	call	unshare_all_decls	#
	.loc 1 2379 0 discriminator 2
	movq	-8(%rbp), %rax	# t, tmp76
	movq	(%rax), %rax	# t_2->common.chain, tmp77
	movq	%rax, -8(%rbp)	# tmp77, t
.L526:
	.loc 1 2379 0 is_stmt 0 discriminator 1
	cmpq	$0, -8(%rbp)	#, t
	jne	.L527	#,
	.loc 1 2381 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE63:
	.size	unshare_all_decls, .-unshare_all_decls
	.type	reset_used_decls, @function
reset_used_decls:
.LFB64:
	.loc 1 2388 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# blk, blk
	.loc 1 2392 0
	movq	-24(%rbp), %rax	# blk, tmp62
	movq	32(%rax), %rax	# blk_4(D)->block.vars, tmp63
	movq	%rax, -8(%rbp)	# tmp63, t
	jmp	.L529	#
.L533:
	.loc 1 2393 0
	movq	-8(%rbp), %rax	# t, tmp64
	movq	144(%rax), %rax	# t_1->decl.rtl, D.18965
	testq	%rax, %rax	# D.18965
	je	.L530	#,
	.loc 1 2394 0
	movq	-8(%rbp), %rax	# t, tmp65
	movq	144(%rax), %rax	# t_1->decl.rtl, D.18965
	testq	%rax, %rax	# D.18965
	je	.L531	#,
	.loc 1 2394 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# t, tmp66
	movq	144(%rax), %rax	# t_1->decl.rtl, iftmp.264
	jmp	.L532	#
.L531:
	.loc 1 2394 0 discriminator 2
	movq	-8(%rbp), %rax	# t, tmp67
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp67,
	call	make_decl_rtl	#
	movq	-8(%rbp), %rax	# t, tmp68
	movq	144(%rax), %rax	# t_1->decl.rtl, iftmp.264
.L532:
	.loc 1 2394 0 discriminator 3
	movq	%rax, %rdi	# iftmp.264,
	call	reset_used_flags	#
.L530:
	.loc 1 2392 0 is_stmt 1
	movq	-8(%rbp), %rax	# t, tmp69
	movq	(%rax), %rax	# t_1->common.chain, tmp70
	movq	%rax, -8(%rbp)	# tmp70, t
.L529:
	.loc 1 2392 0 is_stmt 0 discriminator 1
	cmpq	$0, -8(%rbp)	#, t
	jne	.L533	#,
	.loc 1 2397 0 is_stmt 1
	movq	-24(%rbp), %rax	# blk, tmp71
	movq	40(%rax), %rax	# blk_4(D)->block.subblocks, tmp72
	movq	%rax, -8(%rbp)	# tmp72, t
	jmp	.L534	#
.L535:
	.loc 1 2398 0 discriminator 2
	movq	-8(%rbp), %rax	# t, tmp73
	movq	%rax, %rdi	# tmp73,
	call	reset_used_decls	#
	.loc 1 2397 0 discriminator 2
	movq	-8(%rbp), %rax	# t, tmp74
	movq	(%rax), %rax	# t_2->common.chain, tmp75
	movq	%rax, -8(%rbp)	# tmp75, t
.L534:
	.loc 1 2397 0 is_stmt 0 discriminator 1
	cmpq	$0, -8(%rbp)	#, t
	jne	.L535	#,
	.loc 1 2399 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE64:
	.size	reset_used_decls, .-reset_used_decls
	.globl	copy_most_rtx
	.type	copy_most_rtx, @function
copy_most_rtx:
.LFB65:
	.loc 1 2409 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$56, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)	# orig, orig
	movq	%rsi, -64(%rbp)	# may_share, may_share
	.loc 1 2415 0
	movq	-56(%rbp), %rax	# orig, tmp101
	cmpq	-64(%rbp), %rax	# may_share, tmp101
	je	.L537	#,
	.loc 1 2416 0
	movq	-64(%rbp), %rax	# may_share, tmp102
	movzwl	(%rax), %eax	# may_share_6(D)->code, D.18967
	cmpw	$3, %ax	#, D.18967
	jne	.L538	#,
	.loc 1 2417 0
	movq	-56(%rbp), %rdx	# orig, tmp103
	movq	-64(%rbp), %rax	# may_share, tmp104
	movq	%rdx, %rsi	# tmp103,
	movq	%rax, %rdi	# tmp104,
	call	in_expr_list_p	#
	testl	%eax, %eax	# D.18968
	je	.L538	#,
.L537:
	.loc 1 2418 0
	movq	-56(%rbp), %rax	# orig, D.18966
	jmp	.L539	#
.L538:
	.loc 1 2420 0
	movq	-56(%rbp), %rax	# orig, tmp105
	movzwl	(%rax), %eax	# orig_5(D)->code, D.18967
	movzwl	%ax, %eax	# D.18967, tmp106
	movl	%eax, -36(%rbp)	# tmp106, code
	.loc 1 2422 0
	movl	-36(%rbp), %eax	# code, tmp108
	subl	$36, %eax	#, tmp107
	cmpl	$35, %eax	#, tmp107
	ja	.L561	#,
	movl	%eax, %eax	# tmp107, tmp109
	movq	.L542(,%rax,8), %rax	#, tmp110
	jmp	*%rax	# tmp110
	.section	.rodata
	.align 8
	.align 4
.L542:
	.quad	.L541
	.quad	.L561
	.quad	.L561
	.quad	.L561
	.quad	.L561
	.quad	.L561
	.quad	.L561
	.quad	.L561
	.quad	.L561
	.quad	.L561
	.quad	.L561
	.quad	.L561
	.quad	.L561
	.quad	.L561
	.quad	.L561
	.quad	.L561
	.quad	.L561
	.quad	.L561
	.quad	.L541
	.quad	.L541
	.quad	.L541
	.quad	.L561
	.quad	.L561
	.quad	.L541
	.quad	.L561
	.quad	.L541
	.quad	.L561
	.quad	.L561
	.quad	.L561
	.quad	.L561
	.quad	.L561
	.quad	.L561
	.quad	.L541
	.quad	.L541
	.quad	.L561
	.quad	.L541
	.text
.L541:
	.loc 1 2433 0
	movq	-56(%rbp), %rax	# orig, D.18966
	jmp	.L539	#
.L561:
	.loc 1 2435 0
	nop
	.loc 1 2438 0
	movl	-36(%rbp), %eax	# code, tmp111
	movl	%eax, %edi	# tmp111,
	call	rtx_alloc	#
	movq	%rax, -24(%rbp)	# tmp112, copy
	.loc 1 2439 0
	movq	-56(%rbp), %rax	# orig, tmp113
	movzbl	2(%rax), %edx	# orig_5(D)->mode, D.18969
	movq	-24(%rbp), %rax	# copy, tmp114
	movb	%dl, 2(%rax)	# D.18969, copy_12->mode
	.loc 1 2440 0
	movq	-56(%rbp), %rax	# orig, tmp115
	movzbl	3(%rax), %eax	# *orig_5(D), tmp118
	shrb	$4, %al	#, D.18970
	andl	$1, %eax	#, D.18970
	movq	-24(%rbp), %rdx	# copy, tmp119
	andl	$1, %eax	#, tmp121
	sall	$4, %eax	#, tmp122
	movl	%eax, %ecx	# tmp122, tmp122
	movzbl	3(%rdx), %eax	# copy_12->in_struct, tmp123
	andl	$-17, %eax	#, tmp124
	orl	%ecx, %eax	# tmp122, tmp125
	movb	%al, 3(%rdx)	# tmp125, copy_12->in_struct
	.loc 1 2441 0
	movq	-56(%rbp), %rax	# orig, tmp126
	movzbl	3(%rax), %eax	# *orig_5(D), tmp129
	shrb	$3, %al	#, D.18970
	andl	$1, %eax	#, D.18970
	movq	-24(%rbp), %rdx	# copy, tmp130
	andl	$1, %eax	#, tmp132
	leal	0(,%rax,8), %ecx	#, tmp133
	movzbl	3(%rdx), %eax	# copy_12->volatil, tmp134
	andl	$-9, %eax	#, tmp135
	orl	%ecx, %eax	# tmp133, tmp136
	movb	%al, 3(%rdx)	# tmp136, copy_12->volatil
	.loc 1 2442 0
	movq	-56(%rbp), %rax	# orig, tmp137
	movzbl	3(%rax), %eax	# *orig_5(D), tmp140
	shrb	$2, %al	#, D.18970
	andl	$1, %eax	#, D.18970
	movq	-24(%rbp), %rdx	# copy, tmp141
	andl	$1, %eax	#, tmp143
	leal	0(,%rax,4), %ecx	#, tmp144
	movzbl	3(%rdx), %eax	# copy_12->unchanging, tmp145
	andl	$-5, %eax	#, tmp146
	orl	%ecx, %eax	# tmp144, tmp147
	movb	%al, 3(%rdx)	# tmp147, copy_12->unchanging
	.loc 1 2443 0
	movq	-56(%rbp), %rax	# orig, tmp148
	movzbl	3(%rax), %eax	# *orig_5(D), tmp151
	shrb	$6, %al	#, D.18970
	andl	$1, %eax	#, D.18970
	movq	-24(%rbp), %rdx	# copy, tmp152
	andl	$1, %eax	#, tmp154
	sall	$6, %eax	#, tmp155
	movl	%eax, %ecx	# tmp155, tmp155
	movzbl	3(%rdx), %eax	# copy_12->integrated, tmp156
	andl	$-65, %eax	#, tmp157
	orl	%ecx, %eax	# tmp155, tmp158
	movb	%al, 3(%rdx)	# tmp158, copy_12->integrated
	.loc 1 2444 0
	movq	-56(%rbp), %rax	# orig, tmp159
	movzbl	3(%rax), %eax	# *orig_5(D), tmp162
	shrb	$7, %al	#, D.18970
	movl	%eax, %edx	# D.18970, D.18970
	movq	-24(%rbp), %rax	# copy, tmp163
	movl	%edx, %ecx	# D.18970, tmp165
	sall	$7, %ecx	#, tmp165
	movzbl	3(%rax), %edx	# copy_12->frame_related, tmp166
	andl	$127, %edx	#, tmp167
	orl	%ecx, %edx	# tmp165, tmp168
	movb	%dl, 3(%rax)	# tmp168, copy_12->frame_related
	.loc 1 2446 0
	movq	-24(%rbp), %rax	# copy, tmp169
	movzwl	(%rax), %eax	# copy_12->code, D.18967
	movzwl	%ax, %eax	# D.18967, D.18968
	cltq
	movq	rtx_format(,%rax,8), %rax	# rtx_format, tmp171
	movq	%rax, -32(%rbp)	# tmp171, format_ptr
	.loc 1 2448 0
	movl	$0, -44(%rbp)	#, i
	jmp	.L543	#
.L559:
	.loc 1 2450 0
	movq	-32(%rbp), %rax	# format_ptr, format_ptr.265
	leaq	1(%rax), %rdx	#, tmp172
	movq	%rdx, -32(%rbp)	# tmp172, format_ptr
	movzbl	(%rax), %eax	# *format_ptr.265_27, D.18971
	movsbl	%al, %eax	# D.18971, D.18968
	subl	$48, %eax	#, tmp173
	cmpl	$71, %eax	#, tmp173
	ja	.L544	#,
	movl	%eax, %eax	# tmp173, tmp174
	movq	.L546(,%rax,8), %rax	#, tmp175
	jmp	*%rax	# tmp175
	.section	.rodata
	.align 8
	.align 4
.L546:
	.quad	.L545
	.quad	.L544
	.quad	.L544
	.quad	.L544
	.quad	.L544
	.quad	.L544
	.quad	.L544
	.quad	.L544
	.quad	.L544
	.quad	.L544
	.quad	.L544
	.quad	.L544
	.quad	.L544
	.quad	.L544
	.quad	.L544
	.quad	.L544
	.quad	.L544
	.quad	.L544
	.quad	.L544
	.quad	.L544
	.quad	.L544
	.quad	.L547
	.quad	.L544
	.quad	.L544
	.quad	.L544
	.quad	.L544
	.quad	.L544
	.quad	.L544
	.quad	.L544
	.quad	.L544
	.quad	.L544
	.quad	.L544
	.quad	.L544
	.quad	.L544
	.quad	.L544
	.quad	.L548
	.quad	.L544
	.quad	.L544
	.quad	.L547
	.quad	.L544
	.quad	.L544
	.quad	.L544
	.quad	.L544
	.quad	.L544
	.quad	.L544
	.quad	.L544
	.quad	.L544
	.quad	.L544
	.quad	.L544
	.quad	.L544
	.quad	.L544
	.quad	.L544
	.quad	.L544
	.quad	.L549
	.quad	.L544
	.quad	.L544
	.quad	.L544
	.quad	.L550
	.quad	.L544
	.quad	.L544
	.quad	.L544
	.quad	.L544
	.quad	.L550
	.quad	.L544
	.quad	.L544
	.quad	.L544
	.quad	.L544
	.quad	.L548
	.quad	.L551
	.quad	.L552
	.quad	.L544
	.quad	.L553
	.text
.L549:
	.loc 1 2453 0
	movq	-56(%rbp), %rax	# orig, tmp176
	movl	-44(%rbp), %edx	# i, tmp178
	movslq	%edx, %rdx	# tmp178, tmp177
	movq	8(%rax,%rdx,8), %rcx	# orig_5(D)->fld[i_1].rtx, D.18972
	movq	-24(%rbp), %rax	# copy, tmp179
	movl	-44(%rbp), %edx	# i, tmp181
	movslq	%edx, %rdx	# tmp181, tmp180
	movq	%rcx, 8(%rax,%rdx,8)	# D.18972, copy_12->fld[i_1].rtx
	.loc 1 2454 0
	movq	-56(%rbp), %rax	# orig, tmp182
	movl	-44(%rbp), %edx	# i, tmp184
	movslq	%edx, %rdx	# tmp184, tmp183
	movq	8(%rax,%rdx,8), %rax	# orig_5(D)->fld[i_1].rtx, D.18972
	testq	%rax, %rax	# D.18972
	je	.L554	#,
	.loc 1 2454 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# orig, tmp185
	movl	-44(%rbp), %edx	# i, tmp187
	movslq	%edx, %rdx	# tmp187, tmp186
	movq	8(%rax,%rdx,8), %rax	# orig_5(D)->fld[i_1].rtx, D.18972
	cmpq	-64(%rbp), %rax	# may_share, D.18972
	je	.L554	#,
	.loc 1 2455 0 is_stmt 1
	movq	-56(%rbp), %rax	# orig, tmp188
	movl	-44(%rbp), %edx	# i, tmp190
	movslq	%edx, %rdx	# tmp190, tmp189
	movq	8(%rax,%rdx,8), %rax	# orig_5(D)->fld[i_1].rtx, D.18972
	movq	-64(%rbp), %rdx	# may_share, tmp191
	movq	%rdx, %rsi	# tmp191,
	movq	%rax, %rdi	# D.18972,
	call	copy_most_rtx	#
	movq	-24(%rbp), %rdx	# copy, tmp192
	movl	-44(%rbp), %ecx	# i, tmp194
	movslq	%ecx, %rcx	# tmp194, tmp193
	movq	%rax, 8(%rdx,%rcx,8)	# D.18972, copy_12->fld[i_1].rtx
	.loc 1 2456 0
	jmp	.L555	#
.L554:
	jmp	.L555	#
.L552:
	.loc 1 2459 0
	movq	-56(%rbp), %rax	# orig, tmp195
	movl	-44(%rbp), %edx	# i, tmp197
	movslq	%edx, %rdx	# tmp197, tmp196
	movq	8(%rax,%rdx,8), %rcx	# orig_5(D)->fld[i_1].rtx, D.18972
	movq	-24(%rbp), %rax	# copy, tmp198
	movl	-44(%rbp), %edx	# i, tmp200
	movslq	%edx, %rdx	# tmp200, tmp199
	movq	%rcx, 8(%rax,%rdx,8)	# D.18972, copy_12->fld[i_1].rtx
	.loc 1 2460 0
	jmp	.L555	#
.L547:
	.loc 1 2464 0
	movq	-56(%rbp), %rax	# orig, tmp201
	movl	-44(%rbp), %edx	# i, tmp203
	movslq	%edx, %rdx	# tmp203, tmp202
	movq	8(%rax,%rdx,8), %rcx	# orig_5(D)->fld[i_1].rtvec, D.18973
	movq	-24(%rbp), %rax	# copy, tmp204
	movl	-44(%rbp), %edx	# i, tmp206
	movslq	%edx, %rdx	# tmp206, tmp205
	movq	%rcx, 8(%rax,%rdx,8)	# D.18973, copy_12->fld[i_1].rtvec
	.loc 1 2465 0
	movq	-56(%rbp), %rax	# orig, tmp207
	movl	-44(%rbp), %edx	# i, tmp209
	movslq	%edx, %rdx	# tmp209, tmp208
	movq	8(%rax,%rdx,8), %rax	# orig_5(D)->fld[i_1].rtvec, D.18973
	testq	%rax, %rax	# D.18973
	je	.L556	#,
	.loc 1 2467 0
	movq	-56(%rbp), %rax	# orig, tmp210
	movl	-44(%rbp), %edx	# i, tmp212
	movslq	%edx, %rdx	# tmp212, tmp211
	movq	8(%rax,%rdx,8), %rax	# orig_5(D)->fld[i_1].rtvec, D.18973
	movl	(%rax), %eax	# _39->num_elem, D.18968
	movl	%eax, %edi	# D.18968,
	call	rtvec_alloc	#
	movq	-24(%rbp), %rdx	# copy, tmp213
	movl	-44(%rbp), %ecx	# i, tmp215
	movslq	%ecx, %rcx	# tmp215, tmp214
	movq	%rax, 8(%rdx,%rcx,8)	# D.18973, copy_12->fld[i_1].rtvec
	.loc 1 2468 0
	movl	$0, -40(%rbp)	#, j
	jmp	.L557	#
.L558:
	.loc 1 2469 0 discriminator 2
	movq	-24(%rbp), %rax	# copy, tmp216
	movl	-44(%rbp), %edx	# i, tmp218
	movslq	%edx, %rdx	# tmp218, tmp217
	movq	8(%rax,%rdx,8), %rbx	# copy_12->fld[i_1].rtvec, D.18973
	.loc 1 2470 0 discriminator 2
	movq	-56(%rbp), %rax	# orig, tmp219
	movl	-44(%rbp), %edx	# i, tmp221
	movslq	%edx, %rdx	# tmp221, tmp220
	movq	8(%rax,%rdx,8), %rax	# orig_5(D)->fld[i_1].rtvec, D.18973
	movl	-40(%rbp), %edx	# j, tmp223
	movslq	%edx, %rdx	# tmp223, tmp222
	movq	8(%rax,%rdx,8), %rax	# _46->elem, D.18972
	movq	-64(%rbp), %rdx	# may_share, tmp224
	movq	%rdx, %rsi	# tmp224,
	movq	%rax, %rdi	# D.18972,
	call	copy_most_rtx	#
	movl	-40(%rbp), %edx	# j, tmp226
	movslq	%edx, %rdx	# tmp226, tmp225
	movq	%rax, 8(%rbx,%rdx,8)	# D.18972, _45->elem
	.loc 1 2468 0 discriminator 2
	addl	$1, -40(%rbp)	#, j
.L557:
	.loc 1 2468 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# copy, tmp227
	movl	-44(%rbp), %edx	# i, tmp229
	movslq	%edx, %rdx	# tmp229, tmp228
	movq	8(%rax,%rdx,8), %rax	# copy_12->fld[i_1].rtvec, D.18973
	movl	(%rax), %eax	# _43->num_elem, D.18968
	cmpl	-40(%rbp), %eax	# j, D.18968
	jg	.L558	#,
.L556:
	.loc 1 2472 0 is_stmt 1
	jmp	.L555	#
.L553:
	.loc 1 2475 0
	movq	-56(%rbp), %rax	# orig, tmp230
	movl	-44(%rbp), %edx	# i, tmp232
	movslq	%edx, %rdx	# tmp232, tmp231
	movq	8(%rax,%rdx,8), %rcx	# orig_5(D)->fld[i_1].rtwint, D.18974
	movq	-24(%rbp), %rax	# copy, tmp233
	movl	-44(%rbp), %edx	# i, tmp235
	movslq	%edx, %rdx	# tmp235, tmp234
	movq	%rcx, 8(%rax,%rdx,8)	# D.18974, copy_12->fld[i_1].rtwint
	.loc 1 2476 0
	jmp	.L555	#
.L550:
	.loc 1 2480 0
	movq	-56(%rbp), %rax	# orig, tmp236
	movl	-44(%rbp), %edx	# i, tmp238
	movslq	%edx, %rdx	# tmp238, tmp237
	movl	8(%rax,%rdx,8), %ecx	# orig_5(D)->fld[i_1].rtint, D.18968
	movq	-24(%rbp), %rax	# copy, tmp239
	movl	-44(%rbp), %edx	# i, tmp241
	movslq	%edx, %rdx	# tmp241, tmp240
	movl	%ecx, 8(%rax,%rdx,8)	# D.18968, copy_12->fld[i_1].rtint
	.loc 1 2481 0
	jmp	.L555	#
.L551:
	.loc 1 2484 0
	movq	-56(%rbp), %rax	# orig, tmp242
	movl	-44(%rbp), %edx	# i, tmp244
	movslq	%edx, %rdx	# tmp244, tmp243
	movq	8(%rax,%rdx,8), %rcx	# orig_5(D)->fld[i_1].rttree, D.18975
	movq	-24(%rbp), %rax	# copy, tmp245
	movl	-44(%rbp), %edx	# i, tmp247
	movslq	%edx, %rdx	# tmp247, tmp246
	movq	%rcx, 8(%rax,%rdx,8)	# D.18975, copy_12->fld[i_1].rttree
	.loc 1 2485 0
	jmp	.L555	#
.L548:
	.loc 1 2489 0
	movq	-56(%rbp), %rax	# orig, tmp248
	movl	-44(%rbp), %edx	# i, tmp250
	movslq	%edx, %rdx	# tmp250, tmp249
	movq	8(%rax,%rdx,8), %rcx	# orig_5(D)->fld[i_1].rtstr, D.18976
	movq	-24(%rbp), %rax	# copy, tmp251
	movl	-44(%rbp), %edx	# i, tmp253
	movslq	%edx, %rdx	# tmp253, tmp252
	movq	%rcx, 8(%rax,%rdx,8)	# D.18976, copy_12->fld[i_1].rtstr
	.loc 1 2490 0
	jmp	.L555	#
.L545:
	.loc 1 2494 0
	movq	-56(%rbp), %rax	# orig, tmp254
	movl	-44(%rbp), %edx	# i, tmp256
	movslq	%edx, %rdx	# tmp256, tmp255
	movq	8(%rax,%rdx,8), %rcx	# orig_5(D)->fld[i_1].rtwint, D.18974
	movq	-24(%rbp), %rax	# copy, tmp257
	movl	-44(%rbp), %edx	# i, tmp259
	movslq	%edx, %rdx	# tmp259, tmp258
	movq	%rcx, 8(%rax,%rdx,8)	# D.18974, copy_12->fld[i_1].rtwint
	.loc 1 2495 0
	jmp	.L555	#
.L544:
	.loc 1 2498 0
	movl	$__FUNCTION__.13775, %edx	#,
	movl	$2498, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L555:
	.loc 1 2448 0
	addl	$1, -44(%rbp)	#, i
.L543:
	.loc 1 2448 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# copy, tmp260
	movzwl	(%rax), %eax	# copy_12->code, D.18967
	movzwl	%ax, %eax	# D.18967, D.18968
	cltq
	movzbl	rtx_length(%rax), %eax	# rtx_length, D.18969
	movzbl	%al, %eax	# D.18969, D.18968
	cmpl	-44(%rbp), %eax	# i, D.18968
	jg	.L559	#,
	.loc 1 2501 0 is_stmt 1
	movq	-24(%rbp), %rax	# copy, D.18966
.L539:
	.loc 1 2502 0
	addq	$56, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE65:
	.size	copy_most_rtx, .-copy_most_rtx
	.globl	copy_rtx_if_shared
	.type	copy_rtx_if_shared, @function
copy_rtx_if_shared:
.LFB66:
	.loc 1 2510 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$72, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -72(%rbp)	# orig, orig
	.loc 1 2511 0
	movq	-72(%rbp), %rax	# orig, tmp105
	movq	%rax, -40(%rbp)	# tmp105, x
	.loc 1 2515 0
	movl	$0, -56(%rbp)	#, copied
	.loc 1 2517 0
	cmpq	$0, -40(%rbp)	#, x
	jne	.L563	#,
	.loc 1 2518 0
	movl	$0, %eax	#, D.18977
	jmp	.L564	#
.L563:
	.loc 1 2520 0
	movq	-40(%rbp), %rax	# x, tmp106
	movzwl	(%rax), %eax	# x_8->code, D.18978
	movzwl	%ax, %eax	# D.18978, tmp107
	movl	%eax, -48(%rbp)	# tmp107, code
	.loc 1 2524 0
	movl	-48(%rbp), %eax	# code, tmp109
	subl	$32, %eax	#, tmp108
	cmpl	$39, %eax	#, tmp108
	ja	.L585	#,
	movl	%eax, %eax	# tmp108, tmp110
	movq	.L567(,%rax,8), %rax	#, tmp111
	jmp	*%rax	# tmp111
	.section	.rodata
	.align 8
	.align 4
.L567:
	.quad	.L566
	.quad	.L566
	.quad	.L566
	.quad	.L566
	.quad	.L568
	.quad	.L566
	.quad	.L585
	.quad	.L585
	.quad	.L585
	.quad	.L585
	.quad	.L585
	.quad	.L585
	.quad	.L585
	.quad	.L585
	.quad	.L585
	.quad	.L585
	.quad	.L585
	.quad	.L585
	.quad	.L585
	.quad	.L585
	.quad	.L585
	.quad	.L585
	.quad	.L568
	.quad	.L568
	.quad	.L568
	.quad	.L585
	.quad	.L569
	.quad	.L568
	.quad	.L585
	.quad	.L568
	.quad	.L568
	.quad	.L585
	.quad	.L585
	.quad	.L585
	.quad	.L570
	.quad	.L585
	.quad	.L568
	.quad	.L568
	.quad	.L585
	.quad	.L568
	.text
.L568:
	.loc 1 2537 0
	movq	-40(%rbp), %rax	# x, D.18977
	jmp	.L564	#
.L569:
	.loc 1 2542 0
	movq	-40(%rbp), %rax	# x, tmp112
	movq	8(%rax), %rax	# x_8->fld[0].rtx, D.18979
	movzwl	(%rax), %eax	# _14->code, D.18978
	cmpw	$75, %ax	#, D.18978
	jne	.L571	#,
	.loc 1 2543 0
	movq	-40(%rbp), %rax	# x, tmp113
	movq	8(%rax), %rax	# x_8->fld[0].rtx, D.18979
	movq	8(%rax), %rax	# _16->fld[0].rtx, D.18979
	movzwl	(%rax), %eax	# _17->code, D.18978
	cmpw	$68, %ax	#, D.18978
	jne	.L571	#,
	.loc 1 2544 0
	movq	-40(%rbp), %rax	# x, tmp114
	movq	8(%rax), %rax	# x_8->fld[0].rtx, D.18979
	movq	16(%rax), %rax	# _19->fld[1].rtx, D.18979
	movzwl	(%rax), %eax	# _20->code, D.18978
	cmpw	$54, %ax	#, D.18978
	jne	.L571	#,
	.loc 1 2545 0
	movq	-40(%rbp), %rax	# x, D.18977
	jmp	.L564	#
.L571:
	.loc 1 2546 0
	jmp	.L572	#
.L566:
	.loc 1 2554 0
	movq	-40(%rbp), %rax	# x, D.18977
	jmp	.L564	#
.L570:
	.loc 1 2565 0
	movq	-40(%rbp), %rax	# x, tmp115
	movq	8(%rax), %rax	# x_8->fld[0].rtx, D.18979
	movzwl	(%rax), %eax	# _24->code, D.18978
	cmpw	$67, %ax	#, D.18978
	je	.L573	#,
	.loc 1 2565 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# x, tmp116
	movq	8(%rax), %rax	# x_8->fld[0].rtx, D.18979
	movzwl	(%rax), %eax	# _26->code, D.18978
	cmpw	$68, %ax	#, D.18978
	je	.L573	#,
	movq	-40(%rbp), %rax	# x, tmp117
	movq	8(%rax), %rax	# x_8->fld[0].rtx, D.18979
	movzwl	(%rax), %eax	# _28->code, D.18978
	cmpw	$54, %ax	#, D.18978
	je	.L573	#,
	movq	-40(%rbp), %rax	# x, tmp118
	movq	8(%rax), %rax	# x_8->fld[0].rtx, D.18979
	movzwl	(%rax), %eax	# _30->code, D.18978
	cmpw	$58, %ax	#, D.18978
	je	.L573	#,
	movq	-40(%rbp), %rax	# x, tmp119
	movq	8(%rax), %rax	# x_8->fld[0].rtx, D.18979
	movzwl	(%rax), %eax	# _32->code, D.18978
	cmpw	$55, %ax	#, D.18978
	jne	.L574	#,
.L573:
	.loc 1 2566 0 is_stmt 1
	movq	-40(%rbp), %rax	# x, D.18977
	jmp	.L564	#
.L574:
	.loc 1 2568 0
	jmp	.L572	#
.L585:
	.loc 1 2571 0
	nop
.L572:
	.loc 1 2577 0
	movq	-40(%rbp), %rax	# x, tmp120
	movzbl	3(%rax), %eax	# *x_8, D.18980
	andl	$32, %eax	#, D.18980
	testb	%al, %al	# D.18980
	je	.L575	#,
.LBB30:
	.loc 1 2581 0
	movl	-48(%rbp), %eax	# code, tmp121
	movl	%eax, %edi	# tmp121,
	call	rtx_alloc	#
	movq	%rax, -24(%rbp)	# tmp122, copy
	.loc 1 2584 0
	movl	-48(%rbp), %eax	# code, code.266
	cltq
	movzbl	rtx_length(%rax), %eax	# rtx_length, D.18980
	.loc 1 2582 0
	movzbl	%al, %eax	# D.18980, D.18981
	addq	$1, %rax	#, D.18981
	leaq	0(,%rax,8), %rdx	#, D.18981
	movq	-40(%rbp), %rcx	# x, tmp124
	movq	-24(%rbp), %rax	# copy, tmp125
	movq	%rcx, %rsi	# tmp124,
	movq	%rax, %rdi	# tmp125,
	call	memcpy	#
	.loc 1 2585 0
	movq	-24(%rbp), %rax	# copy, tmp126
	movq	%rax, -40(%rbp)	# tmp126, x
	.loc 1 2586 0
	movl	$1, -56(%rbp)	#, copied
.L575:
.LBE30:
	.loc 1 2588 0
	movq	-40(%rbp), %rax	# x, tmp127
	movzbl	3(%rax), %edx	# x_1->used, tmp130
	orl	$32, %edx	#, tmp131
	movb	%dl, 3(%rax)	# tmp131, x_1->used
	.loc 1 2595 0
	movl	-48(%rbp), %eax	# code, code.267
	cltq
	movq	rtx_format(,%rax,8), %rax	# rtx_format, tmp133
	movq	%rax, -32(%rbp)	# tmp133, format_ptr
	.loc 1 2597 0
	movl	$0, -60(%rbp)	#, i
	jmp	.L576	#
.L584:
	.loc 1 2599 0
	movq	-32(%rbp), %rax	# format_ptr, format_ptr.268
	leaq	1(%rax), %rdx	#, tmp134
	movq	%rdx, -32(%rbp)	# tmp134, format_ptr
	movzbl	(%rax), %eax	# *format_ptr.268_51, D.18983
	movsbl	%al, %eax	# D.18983, D.18982
	cmpl	$69, %eax	#, D.18982
	je	.L578	#,
	cmpl	$101, %eax	#, D.18982
	jne	.L577	#,
	.loc 1 2602 0
	movq	-40(%rbp), %rax	# x, tmp135
	movl	-60(%rbp), %edx	# i, tmp137
	movslq	%edx, %rdx	# tmp137, tmp136
	movq	8(%rax,%rdx,8), %rax	# x_1->fld[i_2].rtx, D.18979
	movq	%rax, %rdi	# D.18979,
	call	copy_rtx_if_shared	#
	movq	-40(%rbp), %rdx	# x, tmp138
	movl	-60(%rbp), %ecx	# i, tmp140
	movslq	%ecx, %rcx	# tmp140, tmp139
	movq	%rax, 8(%rdx,%rcx,8)	# D.18979, x_1->fld[i_2].rtx
	.loc 1 2603 0
	jmp	.L577	#
.L578:
	.loc 1 2606 0
	movq	-40(%rbp), %rax	# x, tmp141
	movl	-60(%rbp), %edx	# i, tmp143
	movslq	%edx, %rdx	# tmp143, tmp142
	movq	8(%rax,%rdx,8), %rax	# x_1->fld[i_2].rtvec, D.18984
	testq	%rax, %rax	# D.18984
	je	.L580	#,
.LBB31:
	.loc 1 2609 0
	movq	-40(%rbp), %rax	# x, tmp144
	movl	-60(%rbp), %edx	# i, tmp146
	movslq	%edx, %rdx	# tmp146, tmp145
	movq	8(%rax,%rdx,8), %rax	# x_1->fld[i_2].rtvec, D.18984
	movl	(%rax), %eax	# _58->num_elem, tmp147
	movl	%eax, -44(%rbp)	# tmp147, len
	.loc 1 2611 0
	cmpl	$0, -56(%rbp)	#, copied
	je	.L581	#,
	.loc 1 2611 0 is_stmt 0 discriminator 1
	cmpl	$0, -44(%rbp)	#, len
	jle	.L581	#,
	.loc 1 2612 0 is_stmt 1
	movq	-40(%rbp), %rax	# x, tmp148
	movl	-60(%rbp), %edx	# i, tmp150
	movslq	%edx, %rdx	# tmp150, tmp149
	movq	8(%rax,%rdx,8), %rax	# x_1->fld[i_2].rtvec, D.18984
	leaq	8(%rax), %rdx	#, D.18985
	movl	-44(%rbp), %eax	# len, tmp151
	movq	%rdx, %rsi	# D.18985,
	movl	%eax, %edi	# tmp151,
	call	gen_rtvec_v	#
	movq	-40(%rbp), %rdx	# x, tmp152
	movl	-60(%rbp), %ecx	# i, tmp154
	movslq	%ecx, %rcx	# tmp154, tmp153
	movq	%rax, 8(%rdx,%rcx,8)	# D.18984, x_1->fld[i_2].rtvec
.L581:
	.loc 1 2613 0
	movl	$0, -52(%rbp)	#, j
	jmp	.L582	#
.L583:
	.loc 1 2614 0 discriminator 2
	movq	-40(%rbp), %rax	# x, tmp155
	movl	-60(%rbp), %edx	# i, tmp157
	movslq	%edx, %rdx	# tmp157, tmp156
	movq	8(%rax,%rdx,8), %rbx	# x_1->fld[i_2].rtvec, D.18984
	movq	-40(%rbp), %rax	# x, tmp158
	movl	-60(%rbp), %edx	# i, tmp160
	movslq	%edx, %rdx	# tmp160, tmp159
	movq	8(%rax,%rdx,8), %rax	# x_1->fld[i_2].rtvec, D.18984
	movl	-52(%rbp), %edx	# j, tmp162
	movslq	%edx, %rdx	# tmp162, tmp161
	movq	8(%rax,%rdx,8), %rax	# _65->elem, D.18979
	movq	%rax, %rdi	# D.18979,
	call	copy_rtx_if_shared	#
	movl	-52(%rbp), %edx	# j, tmp164
	movslq	%edx, %rdx	# tmp164, tmp163
	movq	%rax, 8(%rbx,%rdx,8)	# D.18979, _64->elem
	.loc 1 2613 0 discriminator 2
	addl	$1, -52(%rbp)	#, j
.L582:
	.loc 1 2613 0 is_stmt 0 discriminator 1
	movl	-52(%rbp), %eax	# j, tmp165
	cmpl	-44(%rbp), %eax	# len, tmp165
	jl	.L583	#,
.L580:
.LBE31:
	.loc 1 2616 0 is_stmt 1
	nop
.L577:
	.loc 1 2597 0
	addl	$1, -60(%rbp)	#, i
.L576:
	.loc 1 2597 0 is_stmt 0 discriminator 1
	movl	-48(%rbp), %eax	# code, code.269
	cltq
	movzbl	rtx_length(%rax), %eax	# rtx_length, D.18980
	movzbl	%al, %eax	# D.18980, D.18982
	cmpl	-60(%rbp), %eax	# i, D.18982
	jg	.L584	#,
	.loc 1 2619 0 is_stmt 1
	movq	-40(%rbp), %rax	# x, D.18977
.L564:
	.loc 1 2620 0
	addq	$72, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE66:
	.size	copy_rtx_if_shared, .-copy_rtx_if_shared
	.globl	reset_used_flags
	.type	reset_used_flags, @function
reset_used_flags:
.LFB67:
	.loc 1 2628 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# x, x
	.loc 1 2633 0
	cmpq	$0, -40(%rbp)	#, x
	jne	.L587	#,
	.loc 1 2634 0
	jmp	.L586	#
.L587:
	.loc 1 2636 0
	movq	-40(%rbp), %rax	# x, tmp72
	movzwl	(%rax), %eax	# x_4(D)->code, D.18986
	movzwl	%ax, %eax	# D.18986, tmp73
	movl	%eax, -12(%rbp)	# tmp73, code
	.loc 1 2641 0
	movl	-12(%rbp), %eax	# code, tmp75
	subl	$32, %eax	#, tmp74
	cmpl	$39, %eax	#, tmp74
	ja	.L601	#,
	movl	%eax, %eax	# tmp74, tmp76
	movq	.L591(,%rax,8), %rax	#, tmp77
	jmp	*%rax	# tmp77
	.section	.rodata
	.align 8
	.align 4
.L591:
	.quad	.L602
	.quad	.L602
	.quad	.L602
	.quad	.L602
	.quad	.L602
	.quad	.L602
	.quad	.L601
	.quad	.L601
	.quad	.L601
	.quad	.L601
	.quad	.L601
	.quad	.L601
	.quad	.L601
	.quad	.L601
	.quad	.L601
	.quad	.L601
	.quad	.L601
	.quad	.L601
	.quad	.L601
	.quad	.L601
	.quad	.L601
	.quad	.L601
	.quad	.L602
	.quad	.L602
	.quad	.L602
	.quad	.L601
	.quad	.L601
	.quad	.L602
	.quad	.L601
	.quad	.L602
	.quad	.L601
	.quad	.L601
	.quad	.L601
	.quad	.L601
	.quad	.L601
	.quad	.L602
	.quad	.L602
	.quad	.L602
	.quad	.L601
	.quad	.L602
	.text
.L601:
	.loc 1 2664 0
	nop
	.loc 1 2667 0
	movq	-40(%rbp), %rax	# x, tmp78
	movzbl	3(%rax), %edx	# x_4(D)->used, tmp81
	andl	$-33, %edx	#, tmp82
	movb	%dl, 3(%rax)	# tmp82, x_4(D)->used
	.loc 1 2669 0
	movl	-12(%rbp), %eax	# code, code.270
	cltq
	movq	rtx_format(,%rax,8), %rax	# rtx_format, tmp84
	movq	%rax, -8(%rbp)	# tmp84, format_ptr
	.loc 1 2670 0
	movl	$0, -20(%rbp)	#, i
	jmp	.L593	#
.L599:
	.loc 1 2672 0
	movq	-8(%rbp), %rax	# format_ptr, format_ptr.271
	leaq	1(%rax), %rdx	#, tmp85
	movq	%rdx, -8(%rbp)	# tmp85, format_ptr
	movzbl	(%rax), %eax	# *format_ptr.271_13, D.18989
	movsbl	%al, %eax	# D.18989, D.18988
	cmpl	$69, %eax	#, D.18988
	je	.L595	#,
	cmpl	$101, %eax	#, D.18988
	jne	.L594	#,
	.loc 1 2675 0
	movq	-40(%rbp), %rax	# x, tmp86
	movl	-20(%rbp), %edx	# i, tmp88
	movslq	%edx, %rdx	# tmp88, tmp87
	movq	8(%rax,%rdx,8), %rax	# x_4(D)->fld[i_1].rtx, D.18990
	movq	%rax, %rdi	# D.18990,
	call	reset_used_flags	#
	.loc 1 2676 0
	jmp	.L594	#
.L595:
	.loc 1 2679 0
	movl	$0, -16(%rbp)	#, j
	jmp	.L597	#
.L598:
	.loc 1 2680 0 discriminator 2
	movq	-40(%rbp), %rax	# x, tmp89
	movl	-20(%rbp), %edx	# i, tmp91
	movslq	%edx, %rdx	# tmp91, tmp90
	movq	8(%rax,%rdx,8), %rax	# x_4(D)->fld[i_1].rtvec, D.18991
	movl	-16(%rbp), %edx	# j, tmp93
	movslq	%edx, %rdx	# tmp93, tmp92
	movq	8(%rax,%rdx,8), %rax	# _21->elem, D.18990
	movq	%rax, %rdi	# D.18990,
	call	reset_used_flags	#
	.loc 1 2679 0 discriminator 2
	addl	$1, -16(%rbp)	#, j
.L597:
	.loc 1 2679 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# x, tmp94
	movl	-20(%rbp), %edx	# i, tmp96
	movslq	%edx, %rdx	# tmp96, tmp95
	movq	8(%rax,%rdx,8), %rax	# x_4(D)->fld[i_1].rtvec, D.18991
	movl	(%rax), %eax	# _19->num_elem, D.18988
	cmpl	-16(%rbp), %eax	# j, D.18988
	jg	.L598	#,
	.loc 1 2681 0 is_stmt 1
	nop
.L594:
	.loc 1 2670 0
	addl	$1, -20(%rbp)	#, i
.L593:
	.loc 1 2670 0 is_stmt 0 discriminator 1
	movl	-12(%rbp), %eax	# code, code.272
	cltq
	movzbl	rtx_length(%rax), %eax	# rtx_length, D.18987
	movzbl	%al, %eax	# D.18987, D.18988
	cmpl	-20(%rbp), %eax	# i, D.18988
	jg	.L599	#,
	jmp	.L586	#
.L602:
	.loc 1 2661 0 is_stmt 1
	nop
.L586:
	.loc 1 2684 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE67:
	.size	reset_used_flags, .-reset_used_flags
	.globl	make_safe_from
	.type	make_safe_from, @function
make_safe_from:
.LFB68:
	.loc 1 2693 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# x, x
	movq	%rsi, -32(%rbp)	# other, other
.L610:
	.loc 1 2695 0
	movq	-32(%rbp), %rax	# other, tmp79
	movzwl	(%rax), %eax	# other_1->code, D.18993
	movzwl	%ax, %eax	# D.18993, D.18994
	cmpl	$64, %eax	#, D.18994
	je	.L605	#,
	cmpl	$64, %eax	#, D.18994
	ja	.L606	#,
	cmpl	$63, %eax	#, D.18994
	je	.L607	#,
	.loc 1 2706 0
	jmp	.L615	#
.L606:
	.loc 1 2695 0
	subl	$120, %eax	#, tmp80
	cmpl	$1, %eax	#, tmp80
	ja	.L615	#,
	jmp	.L605	#
.L607:
	.loc 1 2698 0
	movq	-32(%rbp), %rax	# other, tmp81
	movq	8(%rax), %rax	# other_1->fld[0].rtx, tmp82
	movq	%rax, -32(%rbp)	# tmp82, other
	.loc 1 2699 0
	jmp	.L608	#
.L605:
	.loc 1 2703 0
	movq	-32(%rbp), %rax	# other, tmp83
	movq	8(%rax), %rax	# other_1->fld[0].rtx, tmp84
	movq	%rax, -32(%rbp)	# tmp84, other
	.loc 1 2704 0
	nop
.L608:
	.loc 1 2708 0
	jmp	.L610	#
.L615:
	.loc 1 2706 0
	nop
.L609:
	.loc 1 2709 0
	movq	-32(%rbp), %rax	# other, tmp85
	movzwl	(%rax), %eax	# other_1->code, D.18993
	cmpw	$66, %ax	#, D.18993
	jne	.L611	#,
	.loc 1 2710 0
	movq	-24(%rbp), %rax	# x, tmp86
	movzwl	(%rax), %eax	# x_10(D)->code, D.18993
	cmpw	$67, %ax	#, D.18993
	je	.L611	#,
	.loc 1 2710 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# x, tmp87
	movzwl	(%rax), %eax	# x_10(D)->code, D.18993
	cmpw	$68, %ax	#, D.18993
	je	.L611	#,
	movq	-24(%rbp), %rax	# x, tmp88
	movzwl	(%rax), %eax	# x_10(D)->code, D.18993
	cmpw	$54, %ax	#, D.18993
	je	.L611	#,
	movq	-24(%rbp), %rax	# x, tmp89
	movzwl	(%rax), %eax	# x_10(D)->code, D.18993
	cmpw	$55, %ax	#, D.18993
	je	.L611	#,
	movq	-24(%rbp), %rax	# x, tmp90
	movzwl	(%rax), %eax	# x_10(D)->code, D.18993
	cmpw	$58, %ax	#, D.18993
	je	.L611	#,
	movq	-24(%rbp), %rax	# x, tmp91
	movzwl	(%rax), %eax	# x_10(D)->code, D.18993
	cmpw	$134, %ax	#, D.18993
	je	.L611	#,
	movq	-24(%rbp), %rax	# x, tmp92
	movzwl	(%rax), %eax	# x_10(D)->code, D.18993
	cmpw	$56, %ax	#, D.18993
	je	.L611	#,
	movq	-24(%rbp), %rax	# x, tmp93
	movzwl	(%rax), %eax	# x_10(D)->code, D.18993
	cmpw	$140, %ax	#, D.18993
	je	.L611	#,
	.loc 1 2711 0 is_stmt 1
	movq	-24(%rbp), %rax	# x, tmp94
	movzwl	(%rax), %eax	# x_10(D)->code, D.18993
	cmpw	$61, %ax	#, D.18993
	je	.L611	#,
	.loc 1 2712 0
	movq	-24(%rbp), %rax	# x, tmp95
	movzwl	(%rax), %eax	# x_10(D)->code, D.18993
	cmpw	$63, %ax	#, D.18993
	jne	.L612	#,
.L611:
	.loc 1 2713 0
	movq	-32(%rbp), %rax	# other, tmp96
	movzwl	(%rax), %eax	# other_1->code, D.18993
	cmpw	$61, %ax	#, D.18993
	jne	.L613	#,
	.loc 1 2714 0
	movq	-32(%rbp), %rax	# other, tmp97
	movl	8(%rax), %eax	# other_1->fld[0].rtuint, D.18994
	cmpl	$52, %eax	#, D.18994
	jbe	.L612	#,
	.loc 1 2715 0
	movq	-24(%rbp), %rdx	# x, tmp98
	movq	-32(%rbp), %rax	# other, tmp99
	movq	%rdx, %rsi	# tmp98,
	movq	%rax, %rdi	# tmp99,
	call	reg_mentioned_p	#
	testl	%eax, %eax	# D.18995
	je	.L613	#,
.L612:
.LBB32:
	.loc 1 2717 0
	movq	-24(%rbp), %rax	# x, tmp100
	movzbl	2(%rax), %eax	# x_10(D)->mode, D.18996
	movzbl	%al, %eax	# D.18996, D.18997
	movl	%eax, %edi	# D.18997,
	call	gen_reg_rtx	#
	movq	%rax, -8(%rbp)	# tmp101, temp
	.loc 1 2718 0
	movq	-24(%rbp), %rdx	# x, tmp102
	movq	-8(%rbp), %rax	# temp, tmp103
	movq	%rdx, %rsi	# tmp102,
	movq	%rax, %rdi	# tmp103,
	call	emit_move_insn	#
	.loc 1 2719 0
	movq	-8(%rbp), %rax	# temp, D.18992
	jmp	.L614	#
.L613:
.LBE32:
	.loc 1 2721 0
	movq	-24(%rbp), %rax	# x, D.18992
.L614:
	.loc 1 2722 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE68:
	.size	make_safe_from, .-make_safe_from
	.globl	get_insns
	.type	get_insns, @function
get_insns:
.LFB69:
	.loc 1 2730 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 2731 0
	movq	cfun(%rip), %rax	# cfun, cfun.273
	movq	24(%rax), %rax	# cfun.273_1->emit, D.18999
	movq	8(%rax), %rax	# _2->x_first_insn, D.19000
	.loc 1 2732 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE69:
	.size	get_insns, .-get_insns
	.globl	get_last_insn
	.type	get_last_insn, @function
get_last_insn:
.LFB70:
	.loc 1 2738 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 2739 0
	movq	cfun(%rip), %rax	# cfun, cfun.274
	movq	24(%rax), %rax	# cfun.274_1->emit, D.19001
	movq	16(%rax), %rax	# _2->x_last_insn, D.19002
	.loc 1 2740 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE70:
	.size	get_last_insn, .-get_last_insn
	.globl	set_last_insn
	.type	set_last_insn, @function
set_last_insn:
.LFB71:
	.loc 1 2747 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# insn, insn
	.loc 1 2748 0
	movq	-8(%rbp), %rax	# insn, tmp62
	movq	24(%rax), %rax	# insn_1(D)->fld[2].rtx, D.19003
	testq	%rax, %rax	# D.19003
	je	.L621	#,
	.loc 1 2749 0
	movl	$__FUNCTION__.13871, %edx	#,
	movl	$2749, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L621:
	.loc 1 2750 0
	movq	cfun(%rip), %rax	# cfun, cfun.275
	movq	24(%rax), %rax	# cfun.275_3->emit, D.19004
	movq	-8(%rbp), %rdx	# insn, tmp63
	movq	%rdx, 16(%rax)	# tmp63, _4->x_last_insn
	.loc 1 2751 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE71:
	.size	set_last_insn, .-set_last_insn
	.globl	get_last_insn_anywhere
	.type	get_last_insn_anywhere, @function
get_last_insn_anywhere:
.LFB72:
	.loc 1 2757 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 2759 0
	movq	cfun(%rip), %rax	# cfun, cfun.276
	movq	24(%rax), %rax	# cfun.276_3->emit, D.19006
	movq	16(%rax), %rax	# _4->x_last_insn, D.19007
	testq	%rax, %rax	# D.19007
	je	.L623	#,
	.loc 1 2760 0
	movq	cfun(%rip), %rax	# cfun, cfun.277
	movq	24(%rax), %rax	# cfun.277_6->emit, D.19006
	movq	16(%rax), %rax	# _7->x_last_insn, D.19005
	jmp	.L624	#
.L623:
	.loc 1 2761 0
	movq	cfun(%rip), %rax	# cfun, cfun.278
	movq	24(%rax), %rax	# cfun.278_9->emit, D.19006
	movq	32(%rax), %rax	# _10->sequence_stack, tmp69
	movq	%rax, -8(%rbp)	# tmp69, stack
	jmp	.L625	#
.L627:
	.loc 1 2762 0
	movq	-8(%rbp), %rax	# stack, tmp70
	movq	8(%rax), %rax	# stack_1->last, D.19007
	testq	%rax, %rax	# D.19007
	je	.L626	#,
	.loc 1 2763 0
	movq	-8(%rbp), %rax	# stack, tmp71
	movq	8(%rax), %rax	# stack_1->last, D.19005
	jmp	.L624	#
.L626:
	.loc 1 2761 0
	movq	-8(%rbp), %rax	# stack, tmp72
	movq	24(%rax), %rax	# stack_1->next, tmp73
	movq	%rax, -8(%rbp)	# tmp73, stack
.L625:
	.loc 1 2761 0 is_stmt 0 discriminator 1
	cmpq	$0, -8(%rbp)	#, stack
	jne	.L627	#,
	.loc 1 2764 0 is_stmt 1
	movl	$0, %eax	#, D.19005
.L624:
	.loc 1 2765 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE72:
	.size	get_last_insn_anywhere, .-get_last_insn_anywhere
	.globl	get_max_uid
	.type	get_max_uid, @function
get_max_uid:
.LFB73:
	.loc 1 2771 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 2772 0
	movq	cfun(%rip), %rax	# cfun, cfun.279
	movq	24(%rax), %rax	# cfun.279_1->emit, D.19008
	movl	40(%rax), %eax	# _2->x_cur_insn_uid, D.19009
	.loc 1 2773 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE73:
	.size	get_max_uid, .-get_max_uid
	.section	.rodata
.LC2:
	.string	"Renumbering insn %d to %d\n"
	.text
	.globl	renumber_insns
	.type	renumber_insns, @function
renumber_insns:
.LFB74:
	.loc 1 2780 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# stream, stream
	.loc 1 2784 0
	movl	flag_renumber_insns(%rip), %eax	# flag_renumber_insns, flag_renumber_insns.280
	testl	%eax, %eax	# flag_renumber_insns.280
	jne	.L631	#,
	.loc 1 2785 0
	jmp	.L630	#
.L631:
	.loc 1 2789 0
	movl	flag_renumber_insns(%rip), %eax	# flag_renumber_insns, flag_renumber_insns.281
	cmpl	$1, %eax	#, flag_renumber_insns.281
	jne	.L633	#,
	.loc 1 2789 0 is_stmt 0 discriminator 1
	call	get_max_uid	#
	cmpl	$24999, %eax	#, D.19010
	jg	.L633	#,
	.loc 1 2790 0 is_stmt 1
	jmp	.L630	#
.L633:
	.loc 1 2792 0
	movq	cfun(%rip), %rax	# cfun, cfun.282
	movq	24(%rax), %rax	# cfun.282_5->emit, D.19011
	movl	$1, 40(%rax)	#, _6->x_cur_insn_uid
	.loc 1 2794 0
	call	get_insns	#
	movq	%rax, -8(%rbp)	# tmp72, insn
	jmp	.L634	#
.L636:
	.loc 1 2796 0
	cmpq	$0, -24(%rbp)	#, stream
	je	.L635	#,
	.loc 1 2798 0
	movq	cfun(%rip), %rax	# cfun, cfun.283
	movq	24(%rax), %rax	# cfun.283_9->emit, D.19011
	.loc 1 2797 0
	movl	40(%rax), %ecx	# _10->x_cur_insn_uid, D.19010
	movq	-8(%rbp), %rax	# insn, tmp73
	movl	8(%rax), %edx	# insn_1->fld[0].rtint, D.19010
	movq	-24(%rbp), %rax	# stream, tmp74
	movl	$.LC2, %esi	#,
	movq	%rax, %rdi	# tmp74,
	movl	$0, %eax	#,
	call	fprintf	#
.L635:
	.loc 1 2799 0
	movq	cfun(%rip), %rax	# cfun, cfun.284
	movq	24(%rax), %rdx	# cfun.284_13->emit, D.19011
	movl	40(%rdx), %eax	# _14->x_cur_insn_uid, D.19010
	leal	1(%rax), %ecx	#, D.19010
	movl	%ecx, 40(%rdx)	# D.19010, _14->x_cur_insn_uid
	movq	-8(%rbp), %rdx	# insn, tmp75
	movl	%eax, 8(%rdx)	# D.19010, insn_1->fld[0].rtint
	.loc 1 2794 0
	movq	-8(%rbp), %rax	# insn, tmp76
	movq	24(%rax), %rax	# insn_1->fld[2].rtx, tmp77
	movq	%rax, -8(%rbp)	# tmp77, insn
.L634:
	.loc 1 2794 0 is_stmt 0 discriminator 1
	cmpq	$0, -8(%rbp)	#, insn
	jne	.L636	#,
.L630:
	.loc 1 2801 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE74:
	.size	renumber_insns, .-renumber_insns
	.globl	next_insn
	.type	next_insn, @function
next_insn:
.LFB75:
	.loc 1 2809 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# insn, insn
	.loc 1 2810 0
	cmpq	$0, -8(%rbp)	#, insn
	je	.L638	#,
	.loc 1 2812 0
	movq	-8(%rbp), %rax	# insn, tmp66
	movq	24(%rax), %rax	# insn_2(D)->fld[2].rtx, tmp67
	movq	%rax, -8(%rbp)	# tmp67, insn
	.loc 1 2813 0
	cmpq	$0, -8(%rbp)	#, insn
	je	.L638	#,
	.loc 1 2813 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# insn, tmp68
	movzwl	(%rax), %eax	# insn_3->code, D.19013
	cmpw	$32, %ax	#, D.19013
	jne	.L638	#,
	.loc 1 2814 0 is_stmt 1
	movq	-8(%rbp), %rax	# insn, tmp69
	movq	32(%rax), %rax	# insn_3->fld[3].rtx, D.19014
	movzwl	(%rax), %eax	# _5->code, D.19013
	cmpw	$24, %ax	#, D.19013
	jne	.L638	#,
	.loc 1 2815 0
	movq	-8(%rbp), %rax	# insn, tmp70
	movq	32(%rax), %rax	# insn_3->fld[3].rtx, D.19014
	movq	8(%rax), %rax	# _7->fld[0].rtvec, D.19015
	movq	8(%rax), %rax	# _8->elem, tmp71
	movq	%rax, -8(%rbp)	# tmp71, insn
.L638:
	.loc 1 2818 0
	movq	-8(%rbp), %rax	# insn, D.19016
	.loc 1 2819 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE75:
	.size	next_insn, .-next_insn
	.globl	previous_insn
	.type	previous_insn, @function
previous_insn:
.LFB76:
	.loc 1 2827 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# insn, insn
	.loc 1 2828 0
	cmpq	$0, -8(%rbp)	#, insn
	je	.L641	#,
	.loc 1 2830 0
	movq	-8(%rbp), %rax	# insn, tmp70
	movq	16(%rax), %rax	# insn_2(D)->fld[1].rtx, tmp71
	movq	%rax, -8(%rbp)	# tmp71, insn
	.loc 1 2831 0
	cmpq	$0, -8(%rbp)	#, insn
	je	.L641	#,
	.loc 1 2831 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# insn, tmp72
	movzwl	(%rax), %eax	# insn_3->code, D.19017
	cmpw	$32, %ax	#, D.19017
	jne	.L641	#,
	.loc 1 2832 0 is_stmt 1
	movq	-8(%rbp), %rax	# insn, tmp73
	movq	32(%rax), %rax	# insn_3->fld[3].rtx, D.19018
	movzwl	(%rax), %eax	# _5->code, D.19017
	cmpw	$24, %ax	#, D.19017
	jne	.L641	#,
	.loc 1 2833 0
	movq	-8(%rbp), %rax	# insn, tmp74
	movq	32(%rax), %rax	# insn_3->fld[3].rtx, D.19018
	movq	8(%rax), %rax	# _7->fld[0].rtvec, D.19019
	movq	-8(%rbp), %rdx	# insn, tmp75
	movq	32(%rdx), %rdx	# insn_3->fld[3].rtx, D.19018
	movq	8(%rdx), %rdx	# _9->fld[0].rtvec, D.19019
	movl	(%rdx), %edx	# _10->num_elem, D.19020
	subl	$1, %edx	#, D.19020
	movslq	%edx, %rdx	# D.19020, tmp76
	movq	8(%rax,%rdx,8), %rax	# _8->elem, tmp77
	movq	%rax, -8(%rbp)	# tmp77, insn
.L641:
	.loc 1 2836 0
	movq	-8(%rbp), %rax	# insn, D.19021
	.loc 1 2837 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE76:
	.size	previous_insn, .-previous_insn
	.globl	next_nonnote_insn
	.type	next_nonnote_insn, @function
next_nonnote_insn:
.LFB77:
	.loc 1 2845 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# insn, insn
	.loc 1 2846 0
	jmp	.L644	#
.L646:
	.loc 1 2848 0
	movq	-8(%rbp), %rax	# insn, tmp62
	movq	24(%rax), %rax	# insn_1->fld[2].rtx, tmp63
	movq	%rax, -8(%rbp)	# tmp63, insn
	.loc 1 2849 0
	cmpq	$0, -8(%rbp)	#, insn
	je	.L645	#,
	.loc 1 2849 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# insn, tmp64
	movzwl	(%rax), %eax	# insn_4->code, D.19022
	cmpw	$37, %ax	#, D.19022
	jne	.L645	#,
.L644:
	.loc 1 2846 0 is_stmt 1 discriminator 1
	cmpq	$0, -8(%rbp)	#, insn
	jne	.L646	#,
.L645:
	.loc 1 2853 0
	movq	-8(%rbp), %rax	# insn, D.19023
	.loc 1 2854 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE77:
	.size	next_nonnote_insn, .-next_nonnote_insn
	.globl	prev_nonnote_insn
	.type	prev_nonnote_insn, @function
prev_nonnote_insn:
.LFB78:
	.loc 1 2862 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# insn, insn
	.loc 1 2863 0
	jmp	.L649	#
.L651:
	.loc 1 2865 0
	movq	-8(%rbp), %rax	# insn, tmp62
	movq	16(%rax), %rax	# insn_1->fld[1].rtx, tmp63
	movq	%rax, -8(%rbp)	# tmp63, insn
	.loc 1 2866 0
	cmpq	$0, -8(%rbp)	#, insn
	je	.L650	#,
	.loc 1 2866 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# insn, tmp64
	movzwl	(%rax), %eax	# insn_4->code, D.19024
	cmpw	$37, %ax	#, D.19024
	jne	.L650	#,
.L649:
	.loc 1 2863 0 is_stmt 1 discriminator 1
	cmpq	$0, -8(%rbp)	#, insn
	jne	.L651	#,
.L650:
	.loc 1 2870 0
	movq	-8(%rbp), %rax	# insn, D.19025
	.loc 1 2871 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE78:
	.size	prev_nonnote_insn, .-prev_nonnote_insn
	.globl	next_real_insn
	.type	next_real_insn, @function
next_real_insn:
.LFB79:
	.loc 1 2880 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# insn, insn
	.loc 1 2881 0
	jmp	.L654	#
.L656:
	.loc 1 2883 0
	movq	-8(%rbp), %rax	# insn, tmp64
	movq	24(%rax), %rax	# insn_1->fld[2].rtx, tmp65
	movq	%rax, -8(%rbp)	# tmp65, insn
	.loc 1 2884 0
	cmpq	$0, -8(%rbp)	#, insn
	je	.L655	#,
	.loc 1 2884 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# insn, tmp66
	movzwl	(%rax), %eax	# insn_4->code, D.19026
	cmpw	$32, %ax	#, D.19026
	je	.L655	#,
	.loc 1 2885 0 is_stmt 1
	movq	-8(%rbp), %rax	# insn, tmp67
	movzwl	(%rax), %eax	# insn_4->code, D.19026
	cmpw	$34, %ax	#, D.19026
	je	.L655	#,
	.loc 1 2885 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# insn, tmp68
	movzwl	(%rax), %eax	# insn_4->code, D.19026
	cmpw	$33, %ax	#, D.19026
	je	.L655	#,
.L654:
	.loc 1 2881 0 is_stmt 1 discriminator 1
	cmpq	$0, -8(%rbp)	#, insn
	jne	.L656	#,
.L655:
	.loc 1 2889 0
	movq	-8(%rbp), %rax	# insn, D.19027
	.loc 1 2890 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE79:
	.size	next_real_insn, .-next_real_insn
	.globl	prev_real_insn
	.type	prev_real_insn, @function
prev_real_insn:
.LFB80:
	.loc 1 2899 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# insn, insn
	.loc 1 2900 0
	jmp	.L659	#
.L661:
	.loc 1 2902 0
	movq	-8(%rbp), %rax	# insn, tmp64
	movq	16(%rax), %rax	# insn_1->fld[1].rtx, tmp65
	movq	%rax, -8(%rbp)	# tmp65, insn
	.loc 1 2903 0
	cmpq	$0, -8(%rbp)	#, insn
	je	.L660	#,
	.loc 1 2903 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# insn, tmp66
	movzwl	(%rax), %eax	# insn_4->code, D.19028
	cmpw	$32, %ax	#, D.19028
	je	.L660	#,
	movq	-8(%rbp), %rax	# insn, tmp67
	movzwl	(%rax), %eax	# insn_4->code, D.19028
	cmpw	$34, %ax	#, D.19028
	je	.L660	#,
	.loc 1 2904 0 is_stmt 1
	movq	-8(%rbp), %rax	# insn, tmp68
	movzwl	(%rax), %eax	# insn_4->code, D.19028
	cmpw	$33, %ax	#, D.19028
	je	.L660	#,
.L659:
	.loc 1 2900 0 discriminator 1
	cmpq	$0, -8(%rbp)	#, insn
	jne	.L661	#,
.L660:
	.loc 1 2908 0
	movq	-8(%rbp), %rax	# insn, D.19029
	.loc 1 2909 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE80:
	.size	prev_real_insn, .-prev_real_insn
	.globl	active_insn_p
	.type	active_insn_p, @function
active_insn_p:
.LFB81:
	.loc 1 2918 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# insn, insn
	.loc 1 2919 0
	movq	-8(%rbp), %rax	# insn, tmp70
	movzwl	(%rax), %eax	# insn_2(D)->code, D.19030
	.loc 1 2920 0
	cmpw	$34, %ax	#, D.19030
	je	.L664	#,
	.loc 1 2919 0
	movq	-8(%rbp), %rax	# insn, tmp71
	movzwl	(%rax), %eax	# insn_2(D)->code, D.19030
	cmpw	$33, %ax	#, D.19030
	je	.L664	#,
	.loc 1 2920 0
	movq	-8(%rbp), %rax	# insn, tmp72
	movzwl	(%rax), %eax	# insn_2(D)->code, D.19030
	cmpw	$32, %ax	#, D.19030
	jne	.L665	#,
	.loc 1 2921 0
	movl	reload_completed(%rip), %eax	# reload_completed, reload_completed.286
	testl	%eax, %eax	# reload_completed.286
	je	.L664	#,
	.loc 1 2922 0
	movq	-8(%rbp), %rax	# insn, tmp73
	movq	32(%rax), %rax	# insn_2(D)->fld[3].rtx, D.19031
	movzwl	(%rax), %eax	# _7->code, D.19030
	cmpw	$48, %ax	#, D.19030
	je	.L665	#,
	.loc 1 2923 0
	movq	-8(%rbp), %rax	# insn, tmp74
	movq	32(%rax), %rax	# insn_2(D)->fld[3].rtx, D.19031
	movzwl	(%rax), %eax	# _9->code, D.19030
	cmpw	$49, %ax	#, D.19030
	je	.L665	#,
.L664:
	.loc 1 2920 0 discriminator 1
	movl	$1, %eax	#, iftmp.285
	jmp	.L666	#
.L665:
	.loc 1 2920 0 is_stmt 0 discriminator 2
	movl	$0, %eax	#, iftmp.285
.L666:
	.loc 1 2924 0 is_stmt 1
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE81:
	.size	active_insn_p, .-active_insn_p
	.globl	next_active_insn
	.type	next_active_insn, @function
next_active_insn:
.LFB82:
	.loc 1 2929 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$8, %rsp	#,
	movq	%rdi, -8(%rbp)	# insn, insn
	.loc 1 2930 0
	jmp	.L669	#
.L671:
	.loc 1 2932 0
	movq	-8(%rbp), %rax	# insn, tmp62
	movq	24(%rax), %rax	# insn_1->fld[2].rtx, tmp63
	movq	%rax, -8(%rbp)	# tmp63, insn
	.loc 1 2933 0
	cmpq	$0, -8(%rbp)	#, insn
	je	.L670	#,
	.loc 1 2933 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# insn, tmp64
	movq	%rax, %rdi	# tmp64,
	call	active_insn_p	#
	testl	%eax, %eax	# D.19033
	jne	.L670	#,
.L669:
	.loc 1 2930 0 is_stmt 1 discriminator 1
	cmpq	$0, -8(%rbp)	#, insn
	jne	.L671	#,
.L670:
	.loc 1 2937 0
	movq	-8(%rbp), %rax	# insn, D.19034
	.loc 1 2938 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE82:
	.size	next_active_insn, .-next_active_insn
	.globl	prev_active_insn
	.type	prev_active_insn, @function
prev_active_insn:
.LFB83:
	.loc 1 2947 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$8, %rsp	#,
	movq	%rdi, -8(%rbp)	# insn, insn
	.loc 1 2948 0
	jmp	.L674	#
.L676:
	.loc 1 2950 0
	movq	-8(%rbp), %rax	# insn, tmp62
	movq	16(%rax), %rax	# insn_1->fld[1].rtx, tmp63
	movq	%rax, -8(%rbp)	# tmp63, insn
	.loc 1 2951 0
	cmpq	$0, -8(%rbp)	#, insn
	je	.L675	#,
	.loc 1 2951 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# insn, tmp64
	movq	%rax, %rdi	# tmp64,
	call	active_insn_p	#
	testl	%eax, %eax	# D.19035
	jne	.L675	#,
.L674:
	.loc 1 2948 0 is_stmt 1 discriminator 1
	cmpq	$0, -8(%rbp)	#, insn
	jne	.L676	#,
.L675:
	.loc 1 2955 0
	movq	-8(%rbp), %rax	# insn, D.19036
	.loc 1 2956 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE83:
	.size	prev_active_insn, .-prev_active_insn
	.globl	next_label
	.type	next_label, @function
next_label:
.LFB84:
	.loc 1 2963 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# insn, insn
	.loc 1 2964 0
	jmp	.L679	#
.L681:
	.loc 1 2966 0
	movq	-8(%rbp), %rax	# insn, tmp62
	movq	24(%rax), %rax	# insn_1->fld[2].rtx, tmp63
	movq	%rax, -8(%rbp)	# tmp63, insn
	.loc 1 2967 0
	cmpq	$0, -8(%rbp)	#, insn
	je	.L680	#,
	.loc 1 2967 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# insn, tmp64
	movzwl	(%rax), %eax	# insn_4->code, D.19037
	cmpw	$36, %ax	#, D.19037
	je	.L680	#,
.L679:
	.loc 1 2964 0 is_stmt 1 discriminator 1
	cmpq	$0, -8(%rbp)	#, insn
	jne	.L681	#,
.L680:
	.loc 1 2971 0
	movq	-8(%rbp), %rax	# insn, D.19038
	.loc 1 2972 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE84:
	.size	next_label, .-next_label
	.globl	prev_label
	.type	prev_label, @function
prev_label:
.LFB85:
	.loc 1 2979 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# insn, insn
	.loc 1 2980 0
	jmp	.L684	#
.L686:
	.loc 1 2982 0
	movq	-8(%rbp), %rax	# insn, tmp62
	movq	16(%rax), %rax	# insn_1->fld[1].rtx, tmp63
	movq	%rax, -8(%rbp)	# tmp63, insn
	.loc 1 2983 0
	cmpq	$0, -8(%rbp)	#, insn
	je	.L685	#,
	.loc 1 2983 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# insn, tmp64
	movzwl	(%rax), %eax	# insn_4->code, D.19039
	cmpw	$36, %ax	#, D.19039
	je	.L685	#,
.L684:
	.loc 1 2980 0 is_stmt 1 discriminator 1
	cmpq	$0, -8(%rbp)	#, insn
	jne	.L686	#,
.L685:
	.loc 1 2987 0
	movq	-8(%rbp), %rax	# insn, D.19040
	.loc 1 2988 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE85:
	.size	prev_label, .-prev_label
	.type	mark_label_nuses, @function
mark_label_nuses:
.LFB86:
	.loc 1 3061 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# x, x
	.loc 1 3066 0
	movq	-40(%rbp), %rax	# x, tmp78
	movzwl	(%rax), %eax	# x_3(D)->code, D.19041
	movzwl	%ax, %eax	# D.19041, tmp79
	movl	%eax, -12(%rbp)	# tmp79, code
	.loc 1 3067 0
	cmpl	$67, -12(%rbp)	#, code
	jne	.L689	#,
	.loc 1 3068 0
	movq	-40(%rbp), %rax	# x, tmp80
	movq	8(%rax), %rax	# x_3(D)->fld[0].rtx, D.19042
	movl	32(%rax), %edx	# _6->fld[3].rtint, D.19043
	addl	$1, %edx	#, D.19043
	movl	%edx, 32(%rax)	# D.19043, _6->fld[3].rtint
.L689:
	.loc 1 3070 0
	movl	-12(%rbp), %eax	# code, code.287
	cltq
	movq	rtx_format(,%rax,8), %rax	# rtx_format, tmp82
	movq	%rax, -8(%rbp)	# tmp82, fmt
	.loc 1 3071 0
	movl	-12(%rbp), %eax	# code, code.288
	cltq
	movzbl	rtx_length(%rax), %eax	# rtx_length, D.19044
	movzbl	%al, %eax	# D.19044, D.19043
	subl	$1, %eax	#, tmp84
	movl	%eax, -20(%rbp)	# tmp84, i
	jmp	.L690	#
.L695:
	.loc 1 3073 0
	movl	-20(%rbp), %eax	# i, tmp85
	movslq	%eax, %rdx	# tmp85, D.19045
	movq	-8(%rbp), %rax	# fmt, tmp86
	addq	%rdx, %rax	# D.19045, D.19046
	movzbl	(%rax), %eax	# *_16, D.19047
	cmpb	$101, %al	#, D.19047
	jne	.L691	#,
	.loc 1 3074 0
	movq	-40(%rbp), %rax	# x, tmp87
	movl	-20(%rbp), %edx	# i, tmp89
	movslq	%edx, %rdx	# tmp89, tmp88
	movq	8(%rax,%rdx,8), %rax	# x_3(D)->fld[i_1].rtx, D.19042
	movq	%rax, %rdi	# D.19042,
	call	mark_label_nuses	#
	jmp	.L692	#
.L691:
	.loc 1 3075 0
	movl	-20(%rbp), %eax	# i, tmp90
	movslq	%eax, %rdx	# tmp90, D.19045
	movq	-8(%rbp), %rax	# fmt, tmp91
	addq	%rdx, %rax	# D.19045, D.19046
	movzbl	(%rax), %eax	# *_20, D.19047
	cmpb	$69, %al	#, D.19047
	jne	.L692	#,
	.loc 1 3076 0
	movq	-40(%rbp), %rax	# x, tmp92
	movl	-20(%rbp), %edx	# i, tmp94
	movslq	%edx, %rdx	# tmp94, tmp93
	movq	8(%rax,%rdx,8), %rax	# x_3(D)->fld[i_1].rtvec, D.19048
	movl	(%rax), %eax	# _22->num_elem, D.19043
	subl	$1, %eax	#, tmp95
	movl	%eax, -16(%rbp)	# tmp95, j
	jmp	.L693	#
.L694:
	.loc 1 3077 0 discriminator 2
	movq	-40(%rbp), %rax	# x, tmp96
	movl	-20(%rbp), %edx	# i, tmp98
	movslq	%edx, %rdx	# tmp98, tmp97
	movq	8(%rax,%rdx,8), %rax	# x_3(D)->fld[i_1].rtvec, D.19048
	movl	-16(%rbp), %edx	# j, tmp100
	movslq	%edx, %rdx	# tmp100, tmp99
	movq	8(%rax,%rdx,8), %rax	# _25->elem, D.19042
	movq	%rax, %rdi	# D.19042,
	call	mark_label_nuses	#
	.loc 1 3076 0 discriminator 2
	subl	$1, -16(%rbp)	#, j
.L693:
	.loc 1 3076 0 is_stmt 0 discriminator 1
	cmpl	$0, -16(%rbp)	#, j
	jns	.L694	#,
.L692:
	.loc 1 3071 0 is_stmt 1
	subl	$1, -20(%rbp)	#, i
.L690:
	.loc 1 3071 0 is_stmt 0 discriminator 1
	cmpl	$0, -20(%rbp)	#, i
	jns	.L695	#,
	.loc 1 3079 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE86:
	.size	mark_label_nuses, .-mark_label_nuses
	.globl	try_split
	.type	try_split, @function
try_split:
.LFB87:
	.loc 1 3095 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$136, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -120(%rbp)	# pat, pat
	movq	%rsi, -128(%rbp)	# trial, trial
	movl	%edx, -132(%rbp)	# last, last
	.loc 1 3096 0
	movq	-128(%rbp), %rax	# trial, tmp150
	movq	16(%rax), %rax	# trial_18(D)->fld[1].rtx, tmp151
	movq	%rax, -64(%rbp)	# tmp151, before
	.loc 1 3097 0
	movq	-128(%rbp), %rax	# trial, tmp152
	movq	24(%rax), %rax	# trial_18(D)->fld[2].rtx, tmp153
	movq	%rax, -88(%rbp)	# tmp153, after
	.loc 1 3098 0
	movl	$0, -104(%rbp)	#, has_barrier
	.loc 1 3103 0
	movq	-128(%rbp), %rax	# trial, tmp154
	movq	%rax, %rdi	# tmp154,
	call	any_condjump_p	#
	testl	%eax, %eax	# D.19050
	je	.L697	#,
	.loc 1 3104 0
	movq	-128(%rbp), %rax	# trial, tmp155
	movl	$0, %edx	#,
	movl	$16, %esi	#,
	movq	%rax, %rdi	# tmp155,
	call	find_reg_note	#
	movq	%rax, -72(%rbp)	# tmp156, note
	cmpq	$0, -72(%rbp)	#, note
	je	.L697	#,
	.loc 1 3105 0
	movq	-72(%rbp), %rax	# note, tmp157
	movq	8(%rax), %rax	# note_23->fld[0].rtx, D.19051
	movq	8(%rax), %rax	# _24->fld[0].rtwint, D.19052
	movl	%eax, split_branch_probability(%rip)	# split_branch_probability.289, split_branch_probability
.L697:
	.loc 1 3106 0
	movl	split_branch_probability(%rip), %eax	# split_branch_probability, tmp158
	movl	%eax, -92(%rbp)	# tmp158, probability
	.loc 1 3108 0
	movq	-128(%rbp), %rdx	# trial, tmp159
	movq	-120(%rbp), %rax	# pat, tmp160
	movq	%rdx, %rsi	# tmp159,
	movq	%rax, %rdi	# tmp160,
	call	split_insns	#
	movq	%rax, -56(%rbp)	# tmp161, seq
	.loc 1 3110 0
	movl	$-1, split_branch_probability(%rip)	#, split_branch_probability
	.loc 1 3114 0
	cmpq	$0, -88(%rbp)	#, after
	je	.L698	#,
	.loc 1 3114 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# after, tmp162
	movzwl	(%rax), %eax	# after_20->code, D.19053
	cmpw	$35, %ax	#, D.19053
	jne	.L698	#,
	.loc 1 3116 0 is_stmt 1
	movl	$1, -104(%rbp)	#, has_barrier
	.loc 1 3117 0
	movq	-88(%rbp), %rax	# after, tmp163
	movq	24(%rax), %rax	# after_20->fld[2].rtx, tmp164
	movq	%rax, -88(%rbp)	# tmp164, after
.L698:
	.loc 1 3120 0
	cmpq	$0, -56(%rbp)	#, seq
	je	.L699	#,
	.loc 1 3125 0
	movq	-56(%rbp), %rax	# seq, tmp165
	movzwl	(%rax), %eax	# seq_29->code, D.19053
	cmpw	$24, %ax	#, D.19053
	jne	.L700	#,
.LBB33:
	.loc 1 3127 0
	movl	$0, -96(%rbp)	#, njumps
	.loc 1 3131 0
	movl	$0, -100(%rbp)	#, i
	jmp	.L701	#
.L704:
	.loc 1 3132 0
	movq	-56(%rbp), %rax	# seq, tmp166
	movq	8(%rax), %rax	# seq_29->fld[0].rtvec, D.19054
	movl	-100(%rbp), %edx	# i, tmp168
	movslq	%edx, %rdx	# tmp168, tmp167
	movq	8(%rax,%rdx,8), %rax	# _38->elem, D.19051
	movzwl	(%rax), %eax	# _39->code, D.19053
	cmpw	$32, %ax	#, D.19053
	jne	.L702	#,
	.loc 1 3133 0
	movq	-56(%rbp), %rax	# seq, tmp169
	movq	8(%rax), %rax	# seq_29->fld[0].rtvec, D.19054
	movl	-100(%rbp), %edx	# i, tmp171
	movslq	%edx, %rdx	# tmp171, tmp170
	movq	8(%rax,%rdx,8), %rax	# _41->elem, D.19051
	movq	32(%rax), %rax	# _42->fld[3].rtx, D.19051
	movq	-120(%rbp), %rdx	# pat, tmp172
	movq	%rdx, %rsi	# tmp172,
	movq	%rax, %rdi	# D.19051,
	call	rtx_equal_p	#
	testl	%eax, %eax	# D.19050
	je	.L702	#,
	.loc 1 3134 0
	movq	-128(%rbp), %rax	# trial, D.19049
	jmp	.L703	#
.L702:
	.loc 1 3131 0
	addl	$1, -100(%rbp)	#, i
.L701:
	.loc 1 3131 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# seq, tmp173
	movq	8(%rax), %rax	# seq_29->fld[0].rtvec, D.19054
	movl	(%rax), %eax	# _36->num_elem, D.19050
	cmpl	-100(%rbp), %eax	# i, D.19050
	jg	.L704	#,
	.loc 1 3137 0 is_stmt 1
	movq	-56(%rbp), %rax	# seq, tmp174
	movq	8(%rax), %rax	# seq_29->fld[0].rtvec, D.19054
	movl	(%rax), %eax	# _47->num_elem, D.19050
	subl	$1, %eax	#, tmp175
	movl	%eax, -100(%rbp)	# tmp175, i
	jmp	.L705	#
.L708:
	.loc 1 3138 0
	movq	-56(%rbp), %rax	# seq, tmp176
	movq	8(%rax), %rax	# seq_29->fld[0].rtvec, D.19054
	movl	-100(%rbp), %edx	# i, tmp178
	movslq	%edx, %rdx	# tmp178, tmp177
	movq	8(%rax,%rdx,8), %rax	# _50->elem, D.19051
	movzwl	(%rax), %eax	# _51->code, D.19053
	cmpw	$33, %ax	#, D.19053
	jne	.L706	#,
.LBB34:
	.loc 1 3140 0
	movq	-56(%rbp), %rax	# seq, tmp179
	movq	8(%rax), %rax	# seq_29->fld[0].rtvec, D.19054
	movl	-100(%rbp), %edx	# i, tmp181
	movslq	%edx, %rdx	# tmp181, tmp180
	movq	8(%rax,%rdx,8), %rax	# _53->elem, tmp182
	movq	%rax, -48(%rbp)	# tmp182, insn
	.loc 1 3142 0
	movq	-56(%rbp), %rax	# seq, tmp183
	movq	8(%rax), %rax	# seq_29->fld[0].rtvec, D.19054
	.loc 1 3141 0
	movl	-100(%rbp), %edx	# i, tmp185
	movslq	%edx, %rdx	# tmp185, tmp184
	movq	8(%rax,%rdx,8), %rcx	# _55->elem, D.19051
	movq	-48(%rbp), %rax	# insn, tmp186
	movq	32(%rax), %rax	# insn_54->fld[3].rtx, D.19051
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# D.19051,
	movq	%rax, %rdi	# D.19051,
	call	mark_jump_label	#
	.loc 1 3143 0
	addl	$1, -96(%rbp)	#, njumps
	.loc 1 3144 0
	cmpl	$-1, -92(%rbp)	#, probability
	je	.L706	#,
	.loc 1 3145 0
	movq	-48(%rbp), %rax	# insn, tmp187
	movq	%rax, %rdi	# tmp187,
	call	any_condjump_p	#
	testl	%eax, %eax	# D.19050
	je	.L706	#,
	.loc 1 3146 0
	movq	-48(%rbp), %rax	# insn, tmp188
	movl	$0, %edx	#,
	movl	$16, %esi	#,
	movq	%rax, %rdi	# tmp188,
	call	find_reg_note	#
	testq	%rax, %rax	# D.19051
	jne	.L706	#,
	.loc 1 3152 0
	cmpl	$1, -96(%rbp)	#, njumps
	je	.L707	#,
	.loc 1 3153 0
	movl	$__FUNCTION__.13975, %edx	#,
	movl	$3153, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L707:
	.loc 1 3155 0
	movq	-48(%rbp), %rax	# insn, tmp189
	movq	56(%rax), %rbx	# insn_54->fld[6].rtx, D.19051
	movl	-92(%rbp), %eax	# probability, tmp190
	cltq
	movq	%rax, %rsi	# D.19052,
	movl	$0, %edi	#,
	call	gen_rtx_CONST_INT	#
	movq	%rbx, %rcx	# D.19051,
	movq	%rax, %rdx	# D.19051,
	movl	$16, %esi	#,
	movl	$3, %edi	#,
	call	gen_rtx_fmt_ee	#
	movq	-48(%rbp), %rdx	# insn, tmp191
	movq	%rax, 56(%rdx)	# D.19051, insn_54->fld[6].rtx
.L706:
.LBE34:
	.loc 1 3137 0
	subl	$1, -100(%rbp)	#, i
.L705:
	.loc 1 3137 0 is_stmt 0 discriminator 1
	cmpl	$0, -100(%rbp)	#, i
	jns	.L708	#,
	.loc 1 3163 0 is_stmt 1
	movq	-128(%rbp), %rax	# trial, tmp192
	movzwl	(%rax), %eax	# trial_18(D)->code, D.19053
	cmpw	$34, %ax	#, D.19053
	jne	.L709	#,
	.loc 1 3164 0
	movq	-56(%rbp), %rax	# seq, tmp193
	movq	8(%rax), %rax	# seq_29->fld[0].rtvec, D.19054
	movl	(%rax), %eax	# _67->num_elem, D.19050
	subl	$1, %eax	#, tmp194
	movl	%eax, -100(%rbp)	# tmp194, i
	jmp	.L710	#
.L712:
	.loc 1 3165 0
	movq	-56(%rbp), %rax	# seq, tmp195
	movq	8(%rax), %rax	# seq_29->fld[0].rtvec, D.19054
	movl	-100(%rbp), %edx	# i, tmp197
	movslq	%edx, %rdx	# tmp197, tmp196
	movq	8(%rax,%rdx,8), %rax	# _70->elem, D.19051
	movzwl	(%rax), %eax	# _71->code, D.19053
	cmpw	$34, %ax	#, D.19053
	jne	.L711	#,
	.loc 1 3166 0
	movq	-56(%rbp), %rax	# seq, tmp198
	movq	8(%rax), %rax	# seq_29->fld[0].rtvec, D.19054
	movl	-100(%rbp), %edx	# i, tmp200
	movslq	%edx, %rdx	# tmp200, tmp199
	movq	8(%rax,%rdx,8), %rax	# _73->elem, D.19051
	.loc 1 3167 0
	movq	-128(%rbp), %rdx	# trial, tmp201
	movq	64(%rdx), %rdx	# trial_18(D)->fld[7].rtx, D.19051
	movq	%rdx, 64(%rax)	# D.19051, _74->fld[7].rtx
.L711:
	.loc 1 3164 0
	subl	$1, -100(%rbp)	#, i
.L710:
	.loc 1 3164 0 is_stmt 0 discriminator 1
	cmpl	$0, -100(%rbp)	#, i
	jns	.L712	#,
.L709:
	.loc 1 3170 0 is_stmt 1
	movq	-128(%rbp), %rax	# trial, tmp202
	movq	56(%rax), %rax	# trial_18(D)->fld[6].rtx, tmp203
	movq	%rax, -72(%rbp)	# tmp203, note
	jmp	.L713	#
.L730:
	.loc 1 3172 0
	movq	-72(%rbp), %rax	# note, tmp204
	movzbl	2(%rax), %eax	# note_5->mode, D.19055
	movzbl	%al, %eax	# D.19055, D.19056
	subl	$23, %eax	#, tmp205
	cmpl	$6, %eax	#, tmp205
	ja	.L745	#,
	movl	%eax, %eax	# tmp205, tmp206
	movq	.L716(,%rax,8), %rax	#, tmp207
	jmp	*%rax	# tmp207
	.section	.rodata
	.align 8
	.align 4
.L716:
	.quad	.L715
	.quad	.L745
	.quad	.L745
	.quad	.L717
	.quad	.L718
	.quad	.L717
	.quad	.L717
	.text
.L715:
	.loc 1 3175 0
	movq	-56(%rbp), %rax	# seq, tmp208
	movq	8(%rax), %rax	# seq_29->fld[0].rtvec, D.19054
	movl	(%rax), %eax	# _80->num_elem, D.19050
	subl	$1, %eax	#, tmp209
	movl	%eax, -100(%rbp)	# tmp209, i
	jmp	.L719	#
.L722:
.LBB35:
	.loc 1 3177 0
	movq	-56(%rbp), %rax	# seq, tmp210
	movq	8(%rax), %rax	# seq_29->fld[0].rtvec, D.19054
	movl	-100(%rbp), %edx	# i, tmp212
	movslq	%edx, %rdx	# tmp212, tmp211
	movq	8(%rax,%rdx,8), %rax	# _83->elem, tmp213
	movq	%rax, -40(%rbp)	# tmp213, insn
	.loc 1 3178 0
	movq	-40(%rbp), %rax	# insn, tmp214
	movzwl	(%rax), %eax	# insn_84->code, D.19053
	cmpw	$34, %ax	#, D.19053
	je	.L720	#,
	.loc 1 3179 0
	movl	flag_non_call_exceptions(%rip), %eax	# flag_non_call_exceptions, flag_non_call_exceptions.290
	testl	%eax, %eax	# flag_non_call_exceptions.290
	je	.L721	#,
	.loc 1 3180 0
	movq	-40(%rbp), %rax	# insn, tmp215
	movq	32(%rax), %rax	# insn_84->fld[3].rtx, D.19051
	movq	%rax, %rdi	# D.19051,
	call	may_trap_p	#
	testl	%eax, %eax	# D.19050
	je	.L721	#,
.L720:
	.loc 1 3182 0
	movq	-40(%rbp), %rax	# insn, tmp216
	movq	56(%rax), %rdx	# insn_84->fld[6].rtx, D.19051
	movq	-72(%rbp), %rax	# note, tmp217
	movq	8(%rax), %rax	# note_5->fld[0].rtx, D.19051
	movq	%rdx, %rcx	# D.19051,
	movq	%rax, %rdx	# D.19051,
	movl	$23, %esi	#,
	movl	$3, %edi	#,
	call	gen_rtx_fmt_ee	#
	movq	-40(%rbp), %rdx	# insn, tmp218
	movq	%rax, 56(%rdx)	# D.19051, insn_84->fld[6].rtx
.L721:
.LBE35:
	.loc 1 3175 0
	subl	$1, -100(%rbp)	#, i
.L719:
	.loc 1 3175 0 is_stmt 0 discriminator 1
	cmpl	$0, -100(%rbp)	#, i
	jns	.L722	#,
	.loc 1 3186 0 is_stmt 1
	jmp	.L723	#
.L717:
	.loc 1 3191 0
	movq	-56(%rbp), %rax	# seq, tmp219
	movq	8(%rax), %rax	# seq_29->fld[0].rtvec, D.19054
	movl	(%rax), %eax	# _93->num_elem, D.19050
	subl	$1, %eax	#, tmp220
	movl	%eax, -100(%rbp)	# tmp220, i
	jmp	.L724	#
.L726:
.LBB36:
	.loc 1 3193 0
	movq	-56(%rbp), %rax	# seq, tmp221
	movq	8(%rax), %rax	# seq_29->fld[0].rtvec, D.19054
	movl	-100(%rbp), %edx	# i, tmp223
	movslq	%edx, %rdx	# tmp223, tmp222
	movq	8(%rax,%rdx,8), %rax	# _96->elem, tmp224
	movq	%rax, -32(%rbp)	# tmp224, insn
	.loc 1 3194 0
	movq	-32(%rbp), %rax	# insn, tmp225
	movzwl	(%rax), %eax	# insn_97->code, D.19053
	cmpw	$34, %ax	#, D.19053
	jne	.L725	#,
	.loc 1 3196 0
	movq	-32(%rbp), %rax	# insn, tmp226
	movq	56(%rax), %rcx	# insn_97->fld[6].rtx, D.19051
	movq	-72(%rbp), %rax	# note, tmp227
	movq	8(%rax), %rdx	# note_5->fld[0].rtx, D.19051
	movq	-72(%rbp), %rax	# note, tmp228
	movzbl	2(%rax), %eax	# note_5->mode, D.19055
	movzbl	%al, %eax	# D.19055, D.19057
	movl	%eax, %esi	# D.19057,
	movl	$3, %edi	#,
	call	gen_rtx_fmt_ee	#
	movq	-32(%rbp), %rdx	# insn, tmp229
	movq	%rax, 56(%rdx)	# D.19051, insn_97->fld[6].rtx
.L725:
.LBE36:
	.loc 1 3191 0
	subl	$1, -100(%rbp)	#, i
.L724:
	.loc 1 3191 0 is_stmt 0 discriminator 1
	cmpl	$0, -100(%rbp)	#, i
	jns	.L726	#,
	.loc 1 3200 0 is_stmt 1
	jmp	.L723	#
.L718:
	.loc 1 3203 0
	movq	-56(%rbp), %rax	# seq, tmp230
	movq	8(%rax), %rax	# seq_29->fld[0].rtvec, D.19054
	movl	(%rax), %eax	# _105->num_elem, D.19050
	subl	$1, %eax	#, tmp231
	movl	%eax, -100(%rbp)	# tmp231, i
	jmp	.L727	#
.L729:
.LBB37:
	.loc 1 3205 0
	movq	-56(%rbp), %rax	# seq, tmp232
	movq	8(%rax), %rax	# seq_29->fld[0].rtvec, D.19054
	movl	-100(%rbp), %edx	# i, tmp234
	movslq	%edx, %rdx	# tmp234, tmp233
	movq	8(%rax,%rdx,8), %rax	# _108->elem, tmp235
	movq	%rax, -24(%rbp)	# tmp235, insn
	.loc 1 3206 0
	movq	-24(%rbp), %rax	# insn, tmp236
	movzwl	(%rax), %eax	# insn_109->code, D.19053
	cmpw	$33, %ax	#, D.19053
	jne	.L728	#,
	.loc 1 3208 0
	movq	-24(%rbp), %rax	# insn, tmp237
	movq	56(%rax), %rcx	# insn_109->fld[6].rtx, D.19051
	movq	-72(%rbp), %rax	# note, tmp238
	movq	8(%rax), %rdx	# note_5->fld[0].rtx, D.19051
	movq	-72(%rbp), %rax	# note, tmp239
	movzbl	2(%rax), %eax	# note_5->mode, D.19055
	movzbl	%al, %eax	# D.19055, D.19057
	movl	%eax, %esi	# D.19057,
	movl	$3, %edi	#,
	call	gen_rtx_fmt_ee	#
	movq	-24(%rbp), %rdx	# insn, tmp240
	movq	%rax, 56(%rdx)	# D.19051, insn_109->fld[6].rtx
.L728:
.LBE37:
	.loc 1 3203 0
	subl	$1, -100(%rbp)	#, i
.L727:
	.loc 1 3203 0 is_stmt 0 discriminator 1
	cmpl	$0, -100(%rbp)	#, i
	jns	.L729	#,
	.loc 1 3212 0 is_stmt 1
	jmp	.L723	#
.L745:
	.loc 1 3215 0
	nop
.L723:
	.loc 1 3170 0
	movq	-72(%rbp), %rax	# note, tmp241
	movq	16(%rax), %rax	# note_5->fld[1].rtx, tmp242
	movq	%rax, -72(%rbp)	# tmp242, note
.L713:
	.loc 1 3170 0 is_stmt 0 discriminator 1
	cmpq	$0, -72(%rbp)	#, note
	jne	.L730	#,
	.loc 1 3221 0 is_stmt 1
	movq	-128(%rbp), %rax	# trial, tmp243
	movzwl	(%rax), %eax	# trial_18(D)->code, D.19053
	cmpw	$32, %ax	#, D.19053
	jne	.L731	#,
	.loc 1 3222 0
	movq	-56(%rbp), %rax	# seq, tmp244
	movq	8(%rax), %rax	# seq_29->fld[0].rtvec, D.19054
	movl	(%rax), %eax	# _119->num_elem, D.19050
	subl	$1, %eax	#, tmp245
	movl	%eax, -100(%rbp)	# tmp245, i
	jmp	.L732	#
.L734:
	.loc 1 3223 0
	movq	-56(%rbp), %rax	# seq, tmp246
	movq	8(%rax), %rax	# seq_29->fld[0].rtvec, D.19054
	movl	-100(%rbp), %edx	# i, tmp248
	movslq	%edx, %rdx	# tmp248, tmp247
	movq	8(%rax,%rdx,8), %rax	# _122->elem, D.19051
	movzwl	(%rax), %eax	# _123->code, D.19053
	cmpw	$32, %ax	#, D.19053
	jne	.L733	#,
	.loc 1 3224 0
	movq	-56(%rbp), %rax	# seq, tmp249
	movq	8(%rax), %rax	# seq_29->fld[0].rtvec, D.19054
	movl	-100(%rbp), %edx	# i, tmp251
	movslq	%edx, %rdx	# tmp251, tmp250
	movq	8(%rax,%rdx,8), %rax	# _125->elem, D.19051
	movq	32(%rax), %rax	# _126->fld[3].rtx, D.19051
	movq	%rax, %rdi	# D.19051,
	call	mark_label_nuses	#
.L733:
	.loc 1 3222 0
	subl	$1, -100(%rbp)	#, i
.L732:
	.loc 1 3222 0 is_stmt 0 discriminator 1
	cmpl	$0, -100(%rbp)	#, i
	jns	.L734	#,
.L731:
	.loc 1 3226 0 is_stmt 1
	movq	-128(%rbp), %rdx	# trial, tmp252
	movq	-56(%rbp), %rax	# seq, tmp253
	movq	%rdx, %rsi	# tmp252,
	movq	%rax, %rdi	# tmp253,
	call	emit_insn_after	#
	movq	%rax, -80(%rbp)	# tmp254, tem
	.loc 1 3228 0
	movq	-128(%rbp), %rax	# trial, tmp255
	movq	%rax, %rdi	# tmp255,
	call	delete_related_insns	#
	.loc 1 3229 0
	cmpl	$0, -104(%rbp)	#, has_barrier
	je	.L735	#,
	.loc 1 3230 0
	movq	-80(%rbp), %rax	# tem, tmp256
	movq	%rax, %rdi	# tmp256,
	call	emit_barrier_after	#
.L735:
	.loc 1 3237 0
	movq	-64(%rbp), %rax	# before, tmp257
	movq	24(%rax), %rax	# before_19->fld[2].rtx, tmp258
	movq	%rax, -80(%rbp)	# tmp258, tem
	jmp	.L736	#
.L738:
	.loc 1 3238 0
	movq	-80(%rbp), %rax	# tem, tmp259
	movzbl	3(%rax), %eax	# *tem_4, D.19055
	andl	$8, %eax	#, D.19055
	testb	%al, %al	# D.19055
	jne	.L737	#,
	.loc 1 3238 0 is_stmt 0 discriminator 1
	movq	-80(%rbp), %rax	# tem, tmp260
	movzwl	(%rax), %eax	# tem_4->code, D.19053
	movzwl	%ax, %eax	# D.19053, D.19050
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.19058
	cmpb	$105, %al	#, D.19058
	jne	.L737	#,
	.loc 1 3239 0 is_stmt 1
	movq	-80(%rbp), %rax	# tem, tmp262
	movq	32(%rax), %rax	# tem_4->fld[3].rtx, D.19051
	movq	-80(%rbp), %rcx	# tem, tmp263
	movl	$1, %edx	#,
	movq	%rcx, %rsi	# tmp263,
	movq	%rax, %rdi	# D.19051,
	call	try_split	#
	movq	%rax, -80(%rbp)	# tmp264, tem
.L737:
	.loc 1 3237 0
	movq	-80(%rbp), %rax	# tem, tmp265
	movq	24(%rax), %rax	# tem_3->fld[2].rtx, tmp266
	movq	%rax, -80(%rbp)	# tmp266, tem
.L736:
	.loc 1 3237 0 is_stmt 0 discriminator 1
	movq	-80(%rbp), %rax	# tem, tmp267
	cmpq	-88(%rbp), %rax	# after, tmp267
	jne	.L738	#,
.LBE33:
	jmp	.L739	#
.L700:
	.loc 1 3242 0 is_stmt 1
	movq	-120(%rbp), %rdx	# pat, tmp268
	movq	-56(%rbp), %rax	# seq, tmp269
	movq	%rdx, %rsi	# tmp268,
	movq	%rax, %rdi	# tmp269,
	call	rtx_equal_p	#
	testl	%eax, %eax	# D.19050
	je	.L740	#,
	.loc 1 3243 0
	movq	-128(%rbp), %rax	# trial, D.19049
	jmp	.L703	#
.L740:
	.loc 1 3246 0
	movq	-128(%rbp), %rax	# trial, tmp270
	movq	-56(%rbp), %rdx	# seq, tmp271
	movq	%rdx, 32(%rax)	# tmp271, trial_18(D)->fld[3].rtx
	.loc 1 3247 0
	movq	-128(%rbp), %rax	# trial, tmp272
	movl	$-1, 40(%rax)	#, trial_18(D)->fld[4].rtint
	.loc 1 3248 0
	movl	-132(%rbp), %edx	# last, tmp273
	movq	-128(%rbp), %rcx	# trial, tmp274
	movq	-56(%rbp), %rax	# seq, tmp275
	movq	%rcx, %rsi	# tmp274,
	movq	%rax, %rdi	# tmp275,
	call	try_split	#
.L739:
	.loc 1 3255 0
	cmpl	$0, -132(%rbp)	#, last
	je	.L741	#,
	.loc 1 3254 0
	cmpq	$0, -88(%rbp)	#, after
	je	.L742	#,
	.loc 1 3254 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# after, tmp276
	movq	16(%rax), %rax	# after_1->fld[1].rtx, iftmp.292
	jmp	.L744	#
.L742:
	.loc 1 3254 0 discriminator 2
	movq	cfun(%rip), %rax	# cfun, cfun.293
	movq	24(%rax), %rax	# cfun.293_143->emit, D.19059
	movq	16(%rax), %rax	# _144->x_last_insn, iftmp.292
	jmp	.L703	#
.L741:
	.loc 1 3255 0 is_stmt 1 discriminator 1
	movq	-64(%rbp), %rax	# before, tmp277
	movq	24(%rax), %rax	# before_19->fld[2].rtx, iftmp.291
.L744:
	.loc 1 3253 0
	jmp	.L703	#
.L699:
	.loc 1 3258 0
	movq	-128(%rbp), %rax	# trial, D.19049
.L703:
	.loc 1 3259 0
	addq	$136, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE87:
	.size	try_split, .-try_split
	.globl	make_insn_raw
	.type	make_insn_raw, @function
make_insn_raw:
.LFB88:
	.loc 1 3267 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# pattern, pattern
	.loc 1 3270 0
	movl	$32, %edi	#,
	call	rtx_alloc	#
	movq	%rax, -8(%rbp)	# tmp65, insn
	.loc 1 3272 0
	movq	cfun(%rip), %rax	# cfun, cfun.294
	movq	24(%rax), %rdx	# cfun.294_2->emit, D.19060
	movl	40(%rdx), %eax	# _3->x_cur_insn_uid, D.19061
	leal	1(%rax), %ecx	#, D.19061
	movl	%ecx, 40(%rdx)	# D.19061, _3->x_cur_insn_uid
	movq	-8(%rbp), %rdx	# insn, tmp66
	movl	%eax, 8(%rdx)	# D.19061, insn_1->fld[0].rtint
	.loc 1 3273 0
	movq	-8(%rbp), %rax	# insn, tmp67
	movq	-24(%rbp), %rdx	# pattern, tmp68
	movq	%rdx, 32(%rax)	# tmp68, insn_1->fld[3].rtx
	.loc 1 3274 0
	movq	-8(%rbp), %rax	# insn, tmp69
	movl	$-1, 40(%rax)	#, insn_1->fld[4].rtint
	.loc 1 3275 0
	movq	-8(%rbp), %rax	# insn, tmp70
	movq	$0, 48(%rax)	#, insn_1->fld[5].rtx
	.loc 1 3276 0
	movq	-8(%rbp), %rax	# insn, tmp71
	movq	$0, 56(%rax)	#, insn_1->fld[6].rtx
	.loc 1 3290 0
	movq	-8(%rbp), %rax	# insn, D.19062
	.loc 1 3291 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE88:
	.size	make_insn_raw, .-make_insn_raw
	.type	make_jump_insn_raw, @function
make_jump_insn_raw:
.LFB89:
	.loc 1 3298 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# pattern, pattern
	.loc 1 3301 0
	movl	$33, %edi	#,
	call	rtx_alloc	#
	movq	%rax, -8(%rbp)	# tmp65, insn
	.loc 1 3302 0
	movq	cfun(%rip), %rax	# cfun, cfun.295
	movq	24(%rax), %rdx	# cfun.295_2->emit, D.19063
	movl	40(%rdx), %eax	# _3->x_cur_insn_uid, D.19064
	leal	1(%rax), %ecx	#, D.19064
	movl	%ecx, 40(%rdx)	# D.19064, _3->x_cur_insn_uid
	movq	-8(%rbp), %rdx	# insn, tmp66
	movl	%eax, 8(%rdx)	# D.19064, insn_1->fld[0].rtint
	.loc 1 3304 0
	movq	-8(%rbp), %rax	# insn, tmp67
	movq	-24(%rbp), %rdx	# pattern, tmp68
	movq	%rdx, 32(%rax)	# tmp68, insn_1->fld[3].rtx
	.loc 1 3305 0
	movq	-8(%rbp), %rax	# insn, tmp69
	movl	$-1, 40(%rax)	#, insn_1->fld[4].rtint
	.loc 1 3306 0
	movq	-8(%rbp), %rax	# insn, tmp70
	movq	$0, 48(%rax)	#, insn_1->fld[5].rtx
	.loc 1 3307 0
	movq	-8(%rbp), %rax	# insn, tmp71
	movq	$0, 56(%rax)	#, insn_1->fld[6].rtx
	.loc 1 3308 0
	movq	-8(%rbp), %rax	# insn, tmp72
	movq	$0, 64(%rax)	#, insn_1->fld[7].rtx
	.loc 1 3310 0
	movq	-8(%rbp), %rax	# insn, D.19065
	.loc 1 3311 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE89:
	.size	make_jump_insn_raw, .-make_jump_insn_raw
	.type	make_call_insn_raw, @function
make_call_insn_raw:
.LFB90:
	.loc 1 3318 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# pattern, pattern
	.loc 1 3321 0
	movl	$34, %edi	#,
	call	rtx_alloc	#
	movq	%rax, -8(%rbp)	# tmp65, insn
	.loc 1 3322 0
	movq	cfun(%rip), %rax	# cfun, cfun.296
	movq	24(%rax), %rdx	# cfun.296_2->emit, D.19066
	movl	40(%rdx), %eax	# _3->x_cur_insn_uid, D.19067
	leal	1(%rax), %ecx	#, D.19067
	movl	%ecx, 40(%rdx)	# D.19067, _3->x_cur_insn_uid
	movq	-8(%rbp), %rdx	# insn, tmp66
	movl	%eax, 8(%rdx)	# D.19067, insn_1->fld[0].rtint
	.loc 1 3324 0
	movq	-8(%rbp), %rax	# insn, tmp67
	movq	-24(%rbp), %rdx	# pattern, tmp68
	movq	%rdx, 32(%rax)	# tmp68, insn_1->fld[3].rtx
	.loc 1 3325 0
	movq	-8(%rbp), %rax	# insn, tmp69
	movl	$-1, 40(%rax)	#, insn_1->fld[4].rtint
	.loc 1 3326 0
	movq	-8(%rbp), %rax	# insn, tmp70
	movq	$0, 48(%rax)	#, insn_1->fld[5].rtx
	.loc 1 3327 0
	movq	-8(%rbp), %rax	# insn, tmp71
	movq	$0, 56(%rax)	#, insn_1->fld[6].rtx
	.loc 1 3328 0
	movq	-8(%rbp), %rax	# insn, tmp72
	movq	$0, 64(%rax)	#, insn_1->fld[7].rtx
	.loc 1 3330 0
	movq	-8(%rbp), %rax	# insn, D.19068
	.loc 1 3331 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE90:
	.size	make_call_insn_raw, .-make_call_insn_raw
	.globl	add_insn
	.type	add_insn, @function
add_insn:
.LFB91:
	.loc 1 3339 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# insn, insn
	.loc 1 3340 0
	movq	cfun(%rip), %rax	# cfun, cfun.297
	movq	24(%rax), %rax	# cfun.297_1->emit, D.19069
	movq	16(%rax), %rdx	# _2->x_last_insn, D.19070
	movq	-8(%rbp), %rax	# insn, tmp75
	movq	%rdx, 16(%rax)	# D.19070, insn_4(D)->fld[1].rtx
	.loc 1 3341 0
	movq	-8(%rbp), %rax	# insn, tmp76
	movq	$0, 24(%rax)	#, insn_4(D)->fld[2].rtx
	.loc 1 3343 0
	movq	cfun(%rip), %rax	# cfun, cfun.298
	movq	24(%rax), %rax	# cfun.298_5->emit, D.19069
	movq	16(%rax), %rax	# _6->x_last_insn, D.19070
	testq	%rax, %rax	# D.19070
	je	.L753	#,
	.loc 1 3344 0
	movq	cfun(%rip), %rax	# cfun, cfun.299
	movq	24(%rax), %rax	# cfun.299_8->emit, D.19069
	movq	16(%rax), %rax	# _9->x_last_insn, D.19070
	movq	-8(%rbp), %rdx	# insn, tmp77
	movq	%rdx, 24(%rax)	# tmp77, _10->fld[2].rtx
.L753:
	.loc 1 3346 0
	movq	cfun(%rip), %rax	# cfun, cfun.300
	movq	24(%rax), %rax	# cfun.300_11->emit, D.19069
	movq	8(%rax), %rax	# _12->x_first_insn, D.19070
	testq	%rax, %rax	# D.19070
	jne	.L754	#,
	.loc 1 3347 0
	movq	cfun(%rip), %rax	# cfun, cfun.301
	movq	24(%rax), %rax	# cfun.301_14->emit, D.19069
	movq	-8(%rbp), %rdx	# insn, tmp78
	movq	%rdx, 8(%rax)	# tmp78, _15->x_first_insn
.L754:
	.loc 1 3349 0
	movq	cfun(%rip), %rax	# cfun, cfun.302
	movq	24(%rax), %rax	# cfun.302_16->emit, D.19069
	movq	-8(%rbp), %rdx	# insn, tmp79
	movq	%rdx, 16(%rax)	# tmp79, _17->x_last_insn
	.loc 1 3350 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE91:
	.size	add_insn, .-add_insn
	.globl	add_insn_after
	.type	add_insn_after, @function
add_insn_after:
.LFB92:
	.loc 1 3360 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# insn, insn
	movq	%rsi, -48(%rbp)	# after, after
	.loc 1 3361 0
	movq	-48(%rbp), %rax	# after, tmp96
	movq	24(%rax), %rax	# after_2(D)->fld[2].rtx, tmp97
	movq	%rax, -24(%rbp)	# tmp97, next
	.loc 1 3364 0
	movl	optimize(%rip), %eax	# optimize, optimize.303
	testl	%eax, %eax	# optimize.303
	je	.L756	#,
	.loc 1 3364 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# after, tmp98
	movzbl	3(%rax), %eax	# *after_2(D), D.19071
	andl	$8, %eax	#, D.19071
	testb	%al, %al	# D.19071
	je	.L756	#,
	.loc 1 3365 0 is_stmt 1
	movl	$__FUNCTION__.14031, %edx	#,
	movl	$3365, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L756:
	.loc 1 3367 0
	movq	-40(%rbp), %rax	# insn, tmp99
	movq	-24(%rbp), %rdx	# next, tmp100
	movq	%rdx, 24(%rax)	# tmp100, insn_7(D)->fld[2].rtx
	.loc 1 3368 0
	movq	-40(%rbp), %rax	# insn, tmp101
	movq	-48(%rbp), %rdx	# after, tmp102
	movq	%rdx, 16(%rax)	# tmp102, insn_7(D)->fld[1].rtx
	.loc 1 3370 0
	cmpq	$0, -24(%rbp)	#, next
	je	.L757	#,
	.loc 1 3372 0
	movq	-24(%rbp), %rax	# next, tmp103
	movq	-40(%rbp), %rdx	# insn, tmp104
	movq	%rdx, 16(%rax)	# tmp104, next_3->fld[1].rtx
	.loc 1 3373 0
	movq	-24(%rbp), %rax	# next, tmp105
	movzwl	(%rax), %eax	# next_3->code, D.19072
	cmpw	$32, %ax	#, D.19072
	jne	.L759	#,
	.loc 1 3373 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# next, tmp106
	movq	32(%rax), %rax	# next_3->fld[3].rtx, D.19073
	movzwl	(%rax), %eax	# _9->code, D.19072
	cmpw	$24, %ax	#, D.19072
	jne	.L759	#,
	.loc 1 3374 0 is_stmt 1
	movq	-24(%rbp), %rax	# next, tmp107
	movq	32(%rax), %rax	# next_3->fld[3].rtx, D.19073
	movq	8(%rax), %rax	# _11->fld[0].rtvec, D.19074
	movq	8(%rax), %rax	# _12->elem, D.19073
	movq	-40(%rbp), %rdx	# insn, tmp108
	movq	%rdx, 16(%rax)	# tmp108, _13->fld[1].rtx
	jmp	.L759	#
.L757:
	.loc 1 3376 0
	movq	cfun(%rip), %rax	# cfun, cfun.304
	movq	24(%rax), %rax	# cfun.304_14->emit, D.19075
	movq	16(%rax), %rax	# _15->x_last_insn, D.19073
	cmpq	-48(%rbp), %rax	# after, D.19073
	jne	.L760	#,
	.loc 1 3377 0
	movq	cfun(%rip), %rax	# cfun, cfun.305
	movq	24(%rax), %rax	# cfun.305_17->emit, D.19075
	movq	-40(%rbp), %rdx	# insn, tmp109
	movq	%rdx, 16(%rax)	# tmp109, _18->x_last_insn
	jmp	.L759	#
.L760:
.LBB38:
	.loc 1 3380 0
	movq	cfun(%rip), %rax	# cfun, cfun.306
	movq	24(%rax), %rax	# cfun.306_19->emit, D.19075
	movq	32(%rax), %rax	# _20->sequence_stack, tmp110
	movq	%rax, -32(%rbp)	# tmp110, stack
	.loc 1 3382 0
	jmp	.L761	#
.L764:
	.loc 1 3383 0
	movq	-32(%rbp), %rax	# stack, tmp111
	movq	8(%rax), %rax	# stack_1->last, D.19073
	cmpq	-48(%rbp), %rax	# after, D.19073
	jne	.L762	#,
	.loc 1 3385 0
	movq	-32(%rbp), %rax	# stack, tmp112
	movq	-40(%rbp), %rdx	# insn, tmp113
	movq	%rdx, 8(%rax)	# tmp113, stack_1->last
	.loc 1 3386 0
	jmp	.L763	#
.L762:
	.loc 1 3382 0
	movq	-32(%rbp), %rax	# stack, tmp114
	movq	24(%rax), %rax	# stack_1->next, tmp115
	movq	%rax, -32(%rbp)	# tmp115, stack
.L761:
	.loc 1 3382 0 is_stmt 0 discriminator 1
	cmpq	$0, -32(%rbp)	#, stack
	jne	.L764	#,
.L763:
	.loc 1 3389 0 is_stmt 1
	cmpq	$0, -32(%rbp)	#, stack
	jne	.L759	#,
	.loc 1 3390 0
	movl	$__FUNCTION__.14031, %edx	#,
	movl	$3390, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L759:
.LBE38:
	.loc 1 3393 0
	movq	basic_block_for_insn(%rip), %rax	# basic_block_for_insn, basic_block_for_insn.307
	testq	%rax, %rax	# basic_block_for_insn.307
	je	.L765	#,
	.loc 1 3394 0
	movq	-48(%rbp), %rax	# after, tmp116
	movl	8(%rax), %eax	# after_2(D)->fld[0].rtint, D.19076
	movl	%eax, %edx	# D.19077, D.19078
	movq	basic_block_for_insn(%rip), %rax	# basic_block_for_insn, basic_block_for_insn.308
	movq	(%rax), %rax	# basic_block_for_insn.308_28->num_elements, D.19078
	cmpq	%rax, %rdx	# D.19078, D.19078
	jae	.L765	#,
	.loc 1 3395 0
	movq	basic_block_for_insn(%rip), %rax	# basic_block_for_insn, basic_block_for_insn.309
	movq	-48(%rbp), %rdx	# after, tmp117
	movl	8(%rdx), %edx	# after_2(D)->fld[0].rtint, D.19076
	movslq	%edx, %rdx	# D.19076, tmp118
	addq	$4, %rdx	#, tmp119
	movq	(%rax,%rdx,8), %rax	# basic_block_for_insn.309_30->data.bb, tmp120
	movq	%rax, -16(%rbp)	# tmp120, bb
	cmpq	$0, -16(%rbp)	#, bb
	je	.L765	#,
	.loc 1 3397 0
	movq	-16(%rbp), %rdx	# bb, tmp121
	movq	-40(%rbp), %rax	# insn, tmp122
	movq	%rdx, %rsi	# tmp121,
	movq	%rax, %rdi	# tmp122,
	call	set_block_for_insn	#
	.loc 1 3400 0
	movq	-16(%rbp), %rax	# bb, tmp123
	movq	8(%rax), %rax	# bb_32->end, D.19073
	cmpq	-48(%rbp), %rax	# after, D.19073
	jne	.L765	#,
	.loc 1 3402 0
	movq	-40(%rbp), %rax	# insn, tmp124
	movzwl	(%rax), %eax	# insn_7(D)->code, D.19072
	cmpw	$35, %ax	#, D.19072
	je	.L765	#,
	.loc 1 3403 0
	movq	-40(%rbp), %rax	# insn, tmp125
	movzwl	(%rax), %eax	# insn_7(D)->code, D.19072
	cmpw	$37, %ax	#, D.19072
	jne	.L766	#,
	.loc 1 3404 0
	movq	-40(%rbp), %rax	# insn, tmp126
	movl	40(%rax), %eax	# insn_7(D)->fld[4].rtint, D.19076
	cmpl	$-80, %eax	#, D.19076
	je	.L765	#,
.L766:
	.loc 1 3405 0
	movq	-16(%rbp), %rax	# bb, tmp127
	movq	-40(%rbp), %rdx	# insn, tmp128
	movq	%rdx, 8(%rax)	# tmp128, bb_32->end
.L765:
	.loc 1 3408 0
	movq	-48(%rbp), %rax	# after, tmp129
	movq	-40(%rbp), %rdx	# insn, tmp130
	movq	%rdx, 24(%rax)	# tmp130, after_2(D)->fld[2].rtx
	.loc 1 3409 0
	movq	-48(%rbp), %rax	# after, tmp131
	movzwl	(%rax), %eax	# after_2(D)->code, D.19072
	cmpw	$32, %ax	#, D.19072
	jne	.L755	#,
	.loc 1 3409 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# after, tmp132
	movq	32(%rax), %rax	# after_2(D)->fld[3].rtx, D.19073
	movzwl	(%rax), %eax	# _38->code, D.19072
	cmpw	$24, %ax	#, D.19072
	jne	.L755	#,
.LBB39:
	.loc 1 3411 0 is_stmt 1
	movq	-48(%rbp), %rax	# after, tmp133
	movq	32(%rax), %rax	# after_2(D)->fld[3].rtx, tmp134
	movq	%rax, -8(%rbp)	# tmp134, sequence
	.loc 1 3412 0
	movq	-8(%rbp), %rax	# sequence, tmp135
	movq	8(%rax), %rax	# sequence_40->fld[0].rtvec, D.19074
	movq	-8(%rbp), %rdx	# sequence, tmp136
	movq	8(%rdx), %rdx	# sequence_40->fld[0].rtvec, D.19074
	movl	(%rdx), %edx	# _42->num_elem, D.19076
	subl	$1, %edx	#, D.19076
	movslq	%edx, %rdx	# D.19076, tmp137
	movq	8(%rax,%rdx,8), %rax	# _41->elem, D.19073
	movq	-40(%rbp), %rdx	# insn, tmp138
	movq	%rdx, 24(%rax)	# tmp138, _45->fld[2].rtx
.L755:
.LBE39:
	.loc 1 3414 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE92:
	.size	add_insn_after, .-add_insn_after
	.globl	add_insn_before
	.type	add_insn_before, @function
add_insn_before:
.LFB93:
	.loc 1 3424 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# insn, insn
	movq	%rsi, -48(%rbp)	# before, before
	.loc 1 3425 0
	movq	-48(%rbp), %rax	# before, tmp96
	movq	16(%rax), %rax	# before_2(D)->fld[1].rtx, tmp97
	movq	%rax, -24(%rbp)	# tmp97, prev
	.loc 1 3428 0
	movl	optimize(%rip), %eax	# optimize, optimize.310
	testl	%eax, %eax	# optimize.310
	je	.L769	#,
	.loc 1 3428 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# before, tmp98
	movzbl	3(%rax), %eax	# *before_2(D), D.19079
	andl	$8, %eax	#, D.19079
	testb	%al, %al	# D.19079
	je	.L769	#,
	.loc 1 3429 0 is_stmt 1
	movl	$__FUNCTION__.14043, %edx	#,
	movl	$3429, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L769:
	.loc 1 3431 0
	movq	-40(%rbp), %rax	# insn, tmp99
	movq	-24(%rbp), %rdx	# prev, tmp100
	movq	%rdx, 16(%rax)	# tmp100, insn_7(D)->fld[1].rtx
	.loc 1 3432 0
	movq	-40(%rbp), %rax	# insn, tmp101
	movq	-48(%rbp), %rdx	# before, tmp102
	movq	%rdx, 24(%rax)	# tmp102, insn_7(D)->fld[2].rtx
	.loc 1 3434 0
	cmpq	$0, -24(%rbp)	#, prev
	je	.L770	#,
	.loc 1 3436 0
	movq	-24(%rbp), %rax	# prev, tmp103
	movq	-40(%rbp), %rdx	# insn, tmp104
	movq	%rdx, 24(%rax)	# tmp104, prev_3->fld[2].rtx
	.loc 1 3437 0
	movq	-24(%rbp), %rax	# prev, tmp105
	movzwl	(%rax), %eax	# prev_3->code, D.19080
	cmpw	$32, %ax	#, D.19080
	jne	.L772	#,
	.loc 1 3437 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# prev, tmp106
	movq	32(%rax), %rax	# prev_3->fld[3].rtx, D.19081
	movzwl	(%rax), %eax	# _9->code, D.19080
	cmpw	$24, %ax	#, D.19080
	jne	.L772	#,
.LBB40:
	.loc 1 3439 0 is_stmt 1
	movq	-24(%rbp), %rax	# prev, tmp107
	movq	32(%rax), %rax	# prev_3->fld[3].rtx, tmp108
	movq	%rax, -16(%rbp)	# tmp108, sequence
	.loc 1 3440 0
	movq	-16(%rbp), %rax	# sequence, tmp109
	movq	8(%rax), %rax	# sequence_11->fld[0].rtvec, D.19082
	movq	-16(%rbp), %rdx	# sequence, tmp110
	movq	8(%rdx), %rdx	# sequence_11->fld[0].rtvec, D.19082
	movl	(%rdx), %edx	# _13->num_elem, D.19083
	subl	$1, %edx	#, D.19083
	movslq	%edx, %rdx	# D.19083, tmp111
	movq	8(%rax,%rdx,8), %rax	# _12->elem, D.19081
	movq	-40(%rbp), %rdx	# insn, tmp112
	movq	%rdx, 24(%rax)	# tmp112, _16->fld[2].rtx
	jmp	.L772	#
.L770:
.LBE40:
	.loc 1 3443 0
	movq	cfun(%rip), %rax	# cfun, cfun.311
	movq	24(%rax), %rax	# cfun.311_17->emit, D.19084
	movq	8(%rax), %rax	# _18->x_first_insn, D.19081
	cmpq	-48(%rbp), %rax	# before, D.19081
	jne	.L773	#,
	.loc 1 3444 0
	movq	cfun(%rip), %rax	# cfun, cfun.312
	movq	24(%rax), %rax	# cfun.312_20->emit, D.19084
	movq	-40(%rbp), %rdx	# insn, tmp113
	movq	%rdx, 8(%rax)	# tmp113, _21->x_first_insn
	jmp	.L772	#
.L773:
.LBB41:
	.loc 1 3447 0
	movq	cfun(%rip), %rax	# cfun, cfun.313
	movq	24(%rax), %rax	# cfun.313_22->emit, D.19084
	movq	32(%rax), %rax	# _23->sequence_stack, tmp114
	movq	%rax, -32(%rbp)	# tmp114, stack
	.loc 1 3449 0
	jmp	.L774	#
.L777:
	.loc 1 3450 0
	movq	-32(%rbp), %rax	# stack, tmp115
	movq	(%rax), %rax	# stack_1->first, D.19081
	cmpq	-48(%rbp), %rax	# before, D.19081
	jne	.L775	#,
	.loc 1 3452 0
	movq	-32(%rbp), %rax	# stack, tmp116
	movq	-40(%rbp), %rdx	# insn, tmp117
	movq	%rdx, (%rax)	# tmp117, stack_1->first
	.loc 1 3453 0
	jmp	.L776	#
.L775:
	.loc 1 3449 0
	movq	-32(%rbp), %rax	# stack, tmp118
	movq	24(%rax), %rax	# stack_1->next, tmp119
	movq	%rax, -32(%rbp)	# tmp119, stack
.L774:
	.loc 1 3449 0 is_stmt 0 discriminator 1
	cmpq	$0, -32(%rbp)	#, stack
	jne	.L777	#,
.L776:
	.loc 1 3456 0 is_stmt 1
	cmpq	$0, -32(%rbp)	#, stack
	jne	.L772	#,
	.loc 1 3457 0
	movl	$__FUNCTION__.14043, %edx	#,
	movl	$3457, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L772:
.LBE41:
	.loc 1 3460 0
	movq	basic_block_for_insn(%rip), %rax	# basic_block_for_insn, basic_block_for_insn.314
	testq	%rax, %rax	# basic_block_for_insn.314
	je	.L778	#,
	.loc 1 3461 0
	movq	-48(%rbp), %rax	# before, tmp120
	movl	8(%rax), %eax	# before_2(D)->fld[0].rtint, D.19083
	movl	%eax, %edx	# D.19085, D.19086
	movq	basic_block_for_insn(%rip), %rax	# basic_block_for_insn, basic_block_for_insn.315
	movq	(%rax), %rax	# basic_block_for_insn.315_31->num_elements, D.19086
	cmpq	%rax, %rdx	# D.19086, D.19086
	jae	.L778	#,
	.loc 1 3462 0
	movq	basic_block_for_insn(%rip), %rax	# basic_block_for_insn, basic_block_for_insn.316
	movq	-48(%rbp), %rdx	# before, tmp121
	movl	8(%rdx), %edx	# before_2(D)->fld[0].rtint, D.19083
	movslq	%edx, %rdx	# D.19083, tmp122
	addq	$4, %rdx	#, tmp123
	movq	(%rax,%rdx,8), %rax	# basic_block_for_insn.316_33->data.bb, tmp124
	movq	%rax, -8(%rbp)	# tmp124, bb
	cmpq	$0, -8(%rbp)	#, bb
	je	.L778	#,
	.loc 1 3464 0
	movq	-8(%rbp), %rdx	# bb, tmp125
	movq	-40(%rbp), %rax	# insn, tmp126
	movq	%rdx, %rsi	# tmp125,
	movq	%rax, %rdi	# tmp126,
	call	set_block_for_insn	#
	.loc 1 3467 0
	movq	-8(%rbp), %rax	# bb, tmp127
	movq	(%rax), %rax	# bb_35->head, D.19081
	cmpq	-40(%rbp), %rax	# insn, D.19081
	jne	.L778	#,
	.loc 1 3469 0
	movq	-40(%rbp), %rax	# insn, tmp128
	movzwl	(%rax), %eax	# insn_7(D)->code, D.19080
	cmpw	$35, %ax	#, D.19080
	je	.L778	#,
	.loc 1 3470 0
	movq	-40(%rbp), %rax	# insn, tmp129
	movzwl	(%rax), %eax	# insn_7(D)->code, D.19080
	cmpw	$37, %ax	#, D.19080
	jne	.L779	#,
	.loc 1 3471 0
	movq	-40(%rbp), %rax	# insn, tmp130
	movl	40(%rax), %eax	# insn_7(D)->fld[4].rtint, D.19083
	cmpl	$-80, %eax	#, D.19083
	je	.L778	#,
.L779:
	.loc 1 3472 0
	movl	$__FUNCTION__.14043, %edx	#,
	movl	$3472, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L778:
	.loc 1 3475 0
	movq	-48(%rbp), %rax	# before, tmp131
	movq	-40(%rbp), %rdx	# insn, tmp132
	movq	%rdx, 16(%rax)	# tmp132, before_2(D)->fld[1].rtx
	.loc 1 3476 0
	movq	-48(%rbp), %rax	# before, tmp133
	movzwl	(%rax), %eax	# before_2(D)->code, D.19080
	cmpw	$32, %ax	#, D.19080
	jne	.L768	#,
	.loc 1 3476 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# before, tmp134
	movq	32(%rax), %rax	# before_2(D)->fld[3].rtx, D.19081
	movzwl	(%rax), %eax	# _41->code, D.19080
	cmpw	$24, %ax	#, D.19080
	jne	.L768	#,
	.loc 1 3477 0 is_stmt 1
	movq	-48(%rbp), %rax	# before, tmp135
	movq	32(%rax), %rax	# before_2(D)->fld[3].rtx, D.19081
	movq	8(%rax), %rax	# _43->fld[0].rtvec, D.19082
	movq	8(%rax), %rax	# _44->elem, D.19081
	movq	-40(%rbp), %rdx	# insn, tmp136
	movq	%rdx, 16(%rax)	# tmp136, _45->fld[1].rtx
.L768:
	.loc 1 3478 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE93:
	.size	add_insn_before, .-add_insn_before
	.globl	remove_insn
	.type	remove_insn, @function
remove_insn:
.LFB94:
	.loc 1 3485 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -56(%rbp)	# insn, insn
	.loc 1 3486 0
	movq	-56(%rbp), %rax	# insn, tmp100
	movq	24(%rax), %rax	# insn_3(D)->fld[2].rtx, tmp101
	movq	%rax, -32(%rbp)	# tmp101, next
	.loc 1 3487 0
	movq	-56(%rbp), %rax	# insn, tmp102
	movq	16(%rax), %rax	# insn_3(D)->fld[1].rtx, tmp103
	movq	%rax, -24(%rbp)	# tmp103, prev
	.loc 1 3490 0
	cmpq	$0, -24(%rbp)	#, prev
	je	.L782	#,
	.loc 1 3492 0
	movq	-24(%rbp), %rax	# prev, tmp104
	movq	-32(%rbp), %rdx	# next, tmp105
	movq	%rdx, 24(%rax)	# tmp105, prev_5->fld[2].rtx
	.loc 1 3493 0
	movq	-24(%rbp), %rax	# prev, tmp106
	movzwl	(%rax), %eax	# prev_5->code, D.19087
	cmpw	$32, %ax	#, D.19087
	jne	.L784	#,
	.loc 1 3493 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# prev, tmp107
	movq	32(%rax), %rax	# prev_5->fld[3].rtx, D.19088
	movzwl	(%rax), %eax	# _7->code, D.19087
	cmpw	$24, %ax	#, D.19087
	jne	.L784	#,
.LBB42:
	.loc 1 3495 0 is_stmt 1
	movq	-24(%rbp), %rax	# prev, tmp108
	movq	32(%rax), %rax	# prev_5->fld[3].rtx, tmp109
	movq	%rax, -16(%rbp)	# tmp109, sequence
	.loc 1 3496 0
	movq	-16(%rbp), %rax	# sequence, tmp110
	movq	8(%rax), %rax	# sequence_9->fld[0].rtvec, D.19089
	movq	-16(%rbp), %rdx	# sequence, tmp111
	movq	8(%rdx), %rdx	# sequence_9->fld[0].rtvec, D.19089
	movl	(%rdx), %edx	# _11->num_elem, D.19090
	subl	$1, %edx	#, D.19090
	movslq	%edx, %rdx	# D.19090, tmp112
	movq	8(%rax,%rdx,8), %rax	# _10->elem, D.19088
	movq	-32(%rbp), %rdx	# next, tmp113
	movq	%rdx, 24(%rax)	# tmp113, _14->fld[2].rtx
	jmp	.L784	#
.L782:
.LBE42:
	.loc 1 3499 0
	movq	cfun(%rip), %rax	# cfun, cfun.317
	movq	24(%rax), %rax	# cfun.317_15->emit, D.19091
	movq	8(%rax), %rax	# _16->x_first_insn, D.19088
	cmpq	-56(%rbp), %rax	# insn, D.19088
	jne	.L785	#,
	.loc 1 3500 0
	movq	cfun(%rip), %rax	# cfun, cfun.318
	movq	24(%rax), %rax	# cfun.318_18->emit, D.19091
	movq	-32(%rbp), %rdx	# next, tmp114
	movq	%rdx, 8(%rax)	# tmp114, _19->x_first_insn
	jmp	.L784	#
.L785:
.LBB43:
	.loc 1 3503 0
	movq	cfun(%rip), %rax	# cfun, cfun.319
	movq	24(%rax), %rax	# cfun.319_20->emit, D.19091
	movq	32(%rax), %rax	# _21->sequence_stack, tmp115
	movq	%rax, -48(%rbp)	# tmp115, stack
	.loc 1 3505 0
	jmp	.L786	#
.L789:
	.loc 1 3506 0
	movq	-48(%rbp), %rax	# stack, tmp116
	movq	(%rax), %rax	# stack_1->first, D.19088
	cmpq	-56(%rbp), %rax	# insn, D.19088
	jne	.L787	#,
	.loc 1 3508 0
	movq	-48(%rbp), %rax	# stack, tmp117
	movq	-32(%rbp), %rdx	# next, tmp118
	movq	%rdx, (%rax)	# tmp118, stack_1->first
	.loc 1 3509 0
	jmp	.L788	#
.L787:
	.loc 1 3505 0
	movq	-48(%rbp), %rax	# stack, tmp119
	movq	24(%rax), %rax	# stack_1->next, tmp120
	movq	%rax, -48(%rbp)	# tmp120, stack
.L786:
	.loc 1 3505 0 is_stmt 0 discriminator 1
	cmpq	$0, -48(%rbp)	#, stack
	jne	.L789	#,
.L788:
	.loc 1 3512 0 is_stmt 1
	cmpq	$0, -48(%rbp)	#, stack
	jne	.L784	#,
	.loc 1 3513 0
	movl	$__FUNCTION__.14060, %edx	#,
	movl	$3513, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L784:
.LBE43:
	.loc 1 3516 0
	cmpq	$0, -32(%rbp)	#, next
	je	.L790	#,
	.loc 1 3518 0
	movq	-32(%rbp), %rax	# next, tmp121
	movq	-24(%rbp), %rdx	# prev, tmp122
	movq	%rdx, 16(%rax)	# tmp122, next_4->fld[1].rtx
	.loc 1 3519 0
	movq	-32(%rbp), %rax	# next, tmp123
	movzwl	(%rax), %eax	# next_4->code, D.19087
	cmpw	$32, %ax	#, D.19087
	jne	.L792	#,
	.loc 1 3519 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# next, tmp124
	movq	32(%rax), %rax	# next_4->fld[3].rtx, D.19088
	movzwl	(%rax), %eax	# _26->code, D.19087
	cmpw	$24, %ax	#, D.19087
	jne	.L792	#,
	.loc 1 3520 0 is_stmt 1
	movq	-32(%rbp), %rax	# next, tmp125
	movq	32(%rax), %rax	# next_4->fld[3].rtx, D.19088
	movq	8(%rax), %rax	# _28->fld[0].rtvec, D.19089
	movq	8(%rax), %rax	# _29->elem, D.19088
	movq	-24(%rbp), %rdx	# prev, tmp126
	movq	%rdx, 16(%rax)	# tmp126, _30->fld[1].rtx
	jmp	.L792	#
.L790:
	.loc 1 3522 0
	movq	cfun(%rip), %rax	# cfun, cfun.320
	movq	24(%rax), %rax	# cfun.320_31->emit, D.19091
	movq	16(%rax), %rax	# _32->x_last_insn, D.19088
	cmpq	-56(%rbp), %rax	# insn, D.19088
	jne	.L793	#,
	.loc 1 3523 0
	movq	cfun(%rip), %rax	# cfun, cfun.321
	movq	24(%rax), %rax	# cfun.321_34->emit, D.19091
	movq	-24(%rbp), %rdx	# prev, tmp127
	movq	%rdx, 16(%rax)	# tmp127, _35->x_last_insn
	jmp	.L792	#
.L793:
.LBB44:
	.loc 1 3526 0
	movq	cfun(%rip), %rax	# cfun, cfun.322
	movq	24(%rax), %rax	# cfun.322_36->emit, D.19091
	movq	32(%rax), %rax	# _37->sequence_stack, tmp128
	movq	%rax, -40(%rbp)	# tmp128, stack
	.loc 1 3528 0
	jmp	.L794	#
.L797:
	.loc 1 3529 0
	movq	-40(%rbp), %rax	# stack, tmp129
	movq	8(%rax), %rax	# stack_2->last, D.19088
	cmpq	-56(%rbp), %rax	# insn, D.19088
	jne	.L795	#,
	.loc 1 3531 0
	movq	-40(%rbp), %rax	# stack, tmp130
	movq	-24(%rbp), %rdx	# prev, tmp131
	movq	%rdx, 8(%rax)	# tmp131, stack_2->last
	.loc 1 3532 0
	jmp	.L796	#
.L795:
	.loc 1 3528 0
	movq	-40(%rbp), %rax	# stack, tmp132
	movq	24(%rax), %rax	# stack_2->next, tmp133
	movq	%rax, -40(%rbp)	# tmp133, stack
.L794:
	.loc 1 3528 0 is_stmt 0 discriminator 1
	cmpq	$0, -40(%rbp)	#, stack
	jne	.L797	#,
.L796:
	.loc 1 3535 0 is_stmt 1
	cmpq	$0, -40(%rbp)	#, stack
	jne	.L792	#,
	.loc 1 3536 0
	movl	$__FUNCTION__.14060, %edx	#,
	movl	$3536, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L792:
.LBE44:
	.loc 1 3538 0
	movq	basic_block_for_insn(%rip), %rax	# basic_block_for_insn, basic_block_for_insn.323
	testq	%rax, %rax	# basic_block_for_insn.323
	je	.L781	#,
	.loc 1 3539 0
	movq	-56(%rbp), %rax	# insn, tmp134
	movl	8(%rax), %eax	# insn_3(D)->fld[0].rtint, D.19090
	movl	%eax, %edx	# D.19092, D.19093
	movq	basic_block_for_insn(%rip), %rax	# basic_block_for_insn, basic_block_for_insn.324
	movq	(%rax), %rax	# basic_block_for_insn.324_45->num_elements, D.19093
	cmpq	%rax, %rdx	# D.19093, D.19093
	jae	.L781	#,
	.loc 1 3540 0
	movq	basic_block_for_insn(%rip), %rax	# basic_block_for_insn, basic_block_for_insn.325
	movq	-56(%rbp), %rdx	# insn, tmp135
	movl	8(%rdx), %edx	# insn_3(D)->fld[0].rtint, D.19090
	movslq	%edx, %rdx	# D.19090, tmp136
	addq	$4, %rdx	#, tmp137
	movq	(%rax,%rdx,8), %rax	# basic_block_for_insn.325_47->data.bb, tmp138
	movq	%rax, -8(%rbp)	# tmp138, bb
	cmpq	$0, -8(%rbp)	#, bb
	je	.L781	#,
	.loc 1 3542 0
	movq	-8(%rbp), %rax	# bb, tmp139
	movq	(%rax), %rax	# bb_49->head, D.19088
	cmpq	-56(%rbp), %rax	# insn, D.19088
	jne	.L799	#,
	.loc 1 3546 0
	movq	-56(%rbp), %rax	# insn, tmp140
	movzwl	(%rax), %eax	# insn_3(D)->code, D.19087
	cmpw	$37, %ax	#, D.19087
	jne	.L800	#,
	.loc 1 3547 0
	movl	$__FUNCTION__.14060, %edx	#,
	movl	$3547, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L800:
	.loc 1 3548 0
	movq	-8(%rbp), %rax	# bb, tmp141
	movq	-32(%rbp), %rdx	# next, tmp142
	movq	%rdx, (%rax)	# tmp142, bb_49->head
.L799:
	.loc 1 3550 0
	movq	-8(%rbp), %rax	# bb, tmp143
	movq	8(%rax), %rax	# bb_49->end, D.19088
	cmpq	-56(%rbp), %rax	# insn, D.19088
	jne	.L781	#,
	.loc 1 3551 0
	movq	-8(%rbp), %rax	# bb, tmp144
	movq	-24(%rbp), %rdx	# prev, tmp145
	movq	%rdx, 8(%rax)	# tmp145, bb_49->end
.L781:
	.loc 1 3553 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE94:
	.size	remove_insn, .-remove_insn
	.globl	delete_insns_since
	.type	delete_insns_since, @function
delete_insns_since:
.LFB95:
	.loc 1 3561 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# from, from
	.loc 1 3562 0
	cmpq	$0, -8(%rbp)	#, from
	jne	.L802	#,
	.loc 1 3563 0
	movq	cfun(%rip), %rax	# cfun, cfun.326
	movq	24(%rax), %rax	# cfun.326_2->emit, D.19094
	movq	$0, 8(%rax)	#, _3->x_first_insn
	jmp	.L803	#
.L802:
	.loc 1 3565 0
	movq	-8(%rbp), %rax	# from, tmp63
	movq	$0, 24(%rax)	#, from_1(D)->fld[2].rtx
.L803:
	.loc 1 3566 0
	movq	cfun(%rip), %rax	# cfun, cfun.327
	movq	24(%rax), %rax	# cfun.327_4->emit, D.19094
	movq	-8(%rbp), %rdx	# from, tmp64
	movq	%rdx, 16(%rax)	# tmp64, _5->x_last_insn
	.loc 1 3567 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE95:
	.size	delete_insns_since, .-delete_insns_since
	.globl	reorder_insns_nobb
	.type	reorder_insns_nobb, @function
reorder_insns_nobb:
.LFB96:
	.loc 1 3582 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# from, from
	movq	%rsi, -16(%rbp)	# to, to
	movq	%rdx, -24(%rbp)	# after, after
	.loc 1 3584 0
	movq	-8(%rbp), %rax	# from, tmp85
	movq	16(%rax), %rax	# from_1(D)->fld[1].rtx, D.19095
	testq	%rax, %rax	# D.19095
	je	.L805	#,
	.loc 1 3585 0
	movq	-8(%rbp), %rax	# from, tmp86
	movq	16(%rax), %rax	# from_1(D)->fld[1].rtx, D.19095
	movq	-16(%rbp), %rdx	# to, tmp87
	movq	24(%rdx), %rdx	# to_4(D)->fld[2].rtx, D.19095
	movq	%rdx, 24(%rax)	# D.19095, _3->fld[2].rtx
.L805:
	.loc 1 3586 0
	movq	-16(%rbp), %rax	# to, tmp88
	movq	24(%rax), %rax	# to_4(D)->fld[2].rtx, D.19095
	testq	%rax, %rax	# D.19095
	je	.L806	#,
	.loc 1 3587 0
	movq	-16(%rbp), %rax	# to, tmp89
	movq	24(%rax), %rax	# to_4(D)->fld[2].rtx, D.19095
	movq	-8(%rbp), %rdx	# from, tmp90
	movq	16(%rdx), %rdx	# from_1(D)->fld[1].rtx, D.19095
	movq	%rdx, 16(%rax)	# D.19095, _7->fld[1].rtx
.L806:
	.loc 1 3588 0
	movq	cfun(%rip), %rax	# cfun, cfun.328
	movq	24(%rax), %rax	# cfun.328_9->emit, D.19096
	movq	16(%rax), %rax	# _10->x_last_insn, D.19095
	cmpq	-16(%rbp), %rax	# to, D.19095
	jne	.L807	#,
	.loc 1 3589 0
	movq	cfun(%rip), %rax	# cfun, cfun.329
	movq	24(%rax), %rax	# cfun.329_12->emit, D.19096
	movq	-8(%rbp), %rdx	# from, tmp91
	movq	16(%rdx), %rdx	# from_1(D)->fld[1].rtx, D.19095
	movq	%rdx, 16(%rax)	# D.19095, _13->x_last_insn
.L807:
	.loc 1 3590 0
	movq	cfun(%rip), %rax	# cfun, cfun.330
	movq	24(%rax), %rax	# cfun.330_15->emit, D.19096
	movq	8(%rax), %rax	# _16->x_first_insn, D.19095
	cmpq	-8(%rbp), %rax	# from, D.19095
	jne	.L808	#,
	.loc 1 3591 0
	movq	cfun(%rip), %rax	# cfun, cfun.331
	movq	24(%rax), %rax	# cfun.331_18->emit, D.19096
	movq	-16(%rbp), %rdx	# to, tmp92
	movq	24(%rdx), %rdx	# to_4(D)->fld[2].rtx, D.19095
	movq	%rdx, 8(%rax)	# D.19095, _19->x_first_insn
.L808:
	.loc 1 3594 0
	movq	-24(%rbp), %rax	# after, tmp93
	movq	24(%rax), %rax	# after_21(D)->fld[2].rtx, D.19095
	testq	%rax, %rax	# D.19095
	je	.L809	#,
	.loc 1 3595 0
	movq	-24(%rbp), %rax	# after, tmp94
	movq	24(%rax), %rax	# after_21(D)->fld[2].rtx, D.19095
	movq	-16(%rbp), %rdx	# to, tmp95
	movq	%rdx, 16(%rax)	# tmp95, _23->fld[1].rtx
.L809:
	.loc 1 3597 0
	movq	-24(%rbp), %rax	# after, tmp96
	movq	24(%rax), %rdx	# after_21(D)->fld[2].rtx, D.19095
	movq	-16(%rbp), %rax	# to, tmp97
	movq	%rdx, 24(%rax)	# D.19095, to_4(D)->fld[2].rtx
	.loc 1 3598 0
	movq	-8(%rbp), %rax	# from, tmp98
	movq	-24(%rbp), %rdx	# after, tmp99
	movq	%rdx, 16(%rax)	# tmp99, from_1(D)->fld[1].rtx
	.loc 1 3599 0
	movq	-24(%rbp), %rax	# after, tmp100
	movq	-8(%rbp), %rdx	# from, tmp101
	movq	%rdx, 24(%rax)	# tmp101, after_21(D)->fld[2].rtx
	.loc 1 3600 0
	movq	cfun(%rip), %rax	# cfun, cfun.332
	movq	24(%rax), %rax	# cfun.332_25->emit, D.19096
	movq	16(%rax), %rax	# _26->x_last_insn, D.19095
	cmpq	-24(%rbp), %rax	# after, D.19095
	jne	.L804	#,
	.loc 1 3601 0
	movq	cfun(%rip), %rax	# cfun, cfun.333
	movq	24(%rax), %rax	# cfun.333_28->emit, D.19096
	movq	-16(%rbp), %rdx	# to, tmp102
	movq	%rdx, 16(%rax)	# tmp102, _29->x_last_insn
.L804:
	.loc 1 3602 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE96:
	.size	reorder_insns_nobb, .-reorder_insns_nobb
	.globl	reorder_insns
	.type	reorder_insns, @function
reorder_insns:
.LFB97:
	.loc 1 3608 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -40(%rbp)	# from, from
	movq	%rsi, -48(%rbp)	# to, to
	movq	%rdx, -56(%rbp)	# after, after
	.loc 1 3609 0
	movq	-40(%rbp), %rax	# from, tmp78
	movq	16(%rax), %rax	# from_2(D)->fld[1].rtx, tmp79
	movq	%rax, -24(%rbp)	# tmp79, prev
	.loc 1 3612 0
	movq	-56(%rbp), %rdx	# after, tmp80
	movq	-48(%rbp), %rcx	# to, tmp81
	movq	-40(%rbp), %rax	# from, tmp82
	movq	%rcx, %rsi	# tmp81,
	movq	%rax, %rdi	# tmp82,
	call	reorder_insns_nobb	#
	.loc 1 3614 0
	movq	basic_block_for_insn(%rip), %rax	# basic_block_for_insn, basic_block_for_insn.334
	testq	%rax, %rax	# basic_block_for_insn.334
	je	.L811	#,
	.loc 1 3615 0
	movq	-56(%rbp), %rax	# after, tmp83
	movl	8(%rax), %eax	# after_5(D)->fld[0].rtint, D.19097
	movl	%eax, %edx	# D.19098, D.19099
	movq	basic_block_for_insn(%rip), %rax	# basic_block_for_insn, basic_block_for_insn.335
	movq	(%rax), %rax	# basic_block_for_insn.335_10->num_elements, D.19099
	cmpq	%rax, %rdx	# D.19099, D.19099
	jae	.L811	#,
	.loc 1 3616 0
	movq	basic_block_for_insn(%rip), %rax	# basic_block_for_insn, basic_block_for_insn.336
	movq	-56(%rbp), %rdx	# after, tmp84
	movl	8(%rdx), %edx	# after_5(D)->fld[0].rtint, D.19097
	movslq	%edx, %rdx	# D.19097, tmp85
	addq	$4, %rdx	#, tmp86
	movq	(%rax,%rdx,8), %rax	# basic_block_for_insn.336_12->data.bb, tmp87
	movq	%rax, -16(%rbp)	# tmp87, bb
	cmpq	$0, -16(%rbp)	#, bb
	je	.L811	#,
.LBB45:
	.loc 1 3620 0
	movq	basic_block_for_insn(%rip), %rax	# basic_block_for_insn, basic_block_for_insn.337
	testq	%rax, %rax	# basic_block_for_insn.337
	je	.L813	#,
	.loc 1 3621 0
	movq	-40(%rbp), %rax	# from, tmp88
	movl	8(%rax), %eax	# from_2(D)->fld[0].rtint, D.19097
	.loc 1 3622 0
	movl	%eax, %edx	# D.19098, D.19099
	movq	basic_block_for_insn(%rip), %rax	# basic_block_for_insn, basic_block_for_insn.338
	movq	(%rax), %rax	# basic_block_for_insn.338_19->num_elements, D.19099
	.loc 1 3621 0
	cmpq	%rax, %rdx	# D.19099, D.19099
	jae	.L813	#,
	.loc 1 3623 0
	movq	basic_block_for_insn(%rip), %rax	# basic_block_for_insn, basic_block_for_insn.339
	movq	-40(%rbp), %rdx	# from, tmp89
	movl	8(%rdx), %edx	# from_2(D)->fld[0].rtint, D.19097
	movslq	%edx, %rdx	# D.19097, tmp90
	addq	$4, %rdx	#, tmp91
	movq	(%rax,%rdx,8), %rax	# basic_block_for_insn.339_21->data.bb, tmp92
	movq	%rax, -8(%rbp)	# tmp92, bb2
	cmpq	$0, -8(%rbp)	#, bb2
	je	.L813	#,
	.loc 1 3625 0
	movq	-8(%rbp), %rax	# bb2, tmp93
	movq	8(%rax), %rax	# bb2_23->end, D.19100
	cmpq	-48(%rbp), %rax	# to, D.19100
	jne	.L813	#,
	.loc 1 3626 0
	movq	-8(%rbp), %rax	# bb2, tmp94
	movq	-24(%rbp), %rdx	# prev, tmp95
	movq	%rdx, 8(%rax)	# tmp95, bb2_23->end
.L813:
	.loc 1 3629 0
	movq	-16(%rbp), %rax	# bb, tmp96
	movq	8(%rax), %rax	# bb_14->end, D.19100
	cmpq	-56(%rbp), %rax	# after, D.19100
	jne	.L814	#,
	.loc 1 3630 0
	movq	-16(%rbp), %rax	# bb, tmp97
	movq	-48(%rbp), %rdx	# to, tmp98
	movq	%rdx, 8(%rax)	# tmp98, bb_14->end
.L814:
	.loc 1 3632 0
	movq	-40(%rbp), %rax	# from, tmp99
	movq	%rax, -32(%rbp)	# tmp99, x
	jmp	.L815	#
.L816:
	.loc 1 3633 0 discriminator 2
	movq	-16(%rbp), %rdx	# bb, tmp100
	movq	-32(%rbp), %rax	# x, tmp101
	movq	%rdx, %rsi	# tmp100,
	movq	%rax, %rdi	# tmp101,
	call	set_block_for_insn	#
	.loc 1 3632 0 discriminator 2
	movq	-32(%rbp), %rax	# x, tmp102
	movq	24(%rax), %rax	# x_1->fld[2].rtx, tmp103
	movq	%rax, -32(%rbp)	# tmp103, x
.L815:
	.loc 1 3632 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# to, tmp104
	movq	24(%rax), %rax	# to_4(D)->fld[2].rtx, D.19100
	cmpq	-32(%rbp), %rax	# x, D.19100
	jne	.L816	#,
.L811:
.LBE45:
	.loc 1 3635 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE97:
	.size	reorder_insns, .-reorder_insns
	.type	find_line_note, @function
find_line_note:
.LFB98:
	.loc 1 3642 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# insn, insn
	.loc 1 3643 0
	movl	no_line_numbers(%rip), %eax	# no_line_numbers, no_line_numbers.340
	testl	%eax, %eax	# no_line_numbers.340
	je	.L818	#,
	.loc 1 3644 0
	movl	$0, %eax	#, D.19101
	jmp	.L819	#
.L818:
	.loc 1 3646 0
	jmp	.L820	#
.L823:
	.loc 1 3647 0
	movq	-8(%rbp), %rax	# insn, tmp64
	movzwl	(%rax), %eax	# insn_1->code, D.19102
	cmpw	$37, %ax	#, D.19102
	jne	.L821	#,
	.loc 1 3648 0
	movq	-8(%rbp), %rax	# insn, tmp65
	movl	40(%rax), %eax	# insn_1->fld[4].rtint, D.19103
	testl	%eax, %eax	# D.19103
	js	.L821	#,
	.loc 1 3649 0
	jmp	.L822	#
.L821:
	.loc 1 3646 0
	movq	-8(%rbp), %rax	# insn, tmp66
	movq	16(%rax), %rax	# insn_1->fld[1].rtx, tmp67
	movq	%rax, -8(%rbp)	# tmp67, insn
.L820:
	.loc 1 3646 0 is_stmt 0 discriminator 1
	cmpq	$0, -8(%rbp)	#, insn
	jne	.L823	#,
.L822:
	.loc 1 3651 0 is_stmt 1
	movq	-8(%rbp), %rax	# insn, D.19101
.L819:
	.loc 1 3652 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE98:
	.size	find_line_note, .-find_line_note
	.globl	reorder_insns_with_line_notes
	.type	reorder_insns_with_line_notes, @function
reorder_insns_with_line_notes:
.LFB99:
	.loc 1 3661 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# from, from
	movq	%rsi, -32(%rbp)	# to, to
	movq	%rdx, -40(%rbp)	# after, after
	.loc 1 3662 0
	movq	-24(%rbp), %rax	# from, tmp63
	movq	%rax, %rdi	# tmp63,
	call	find_line_note	#
	movq	%rax, -16(%rbp)	# tmp64, from_line
	.loc 1 3663 0
	movq	-40(%rbp), %rax	# after, tmp65
	movq	%rax, %rdi	# tmp65,
	call	find_line_note	#
	movq	%rax, -8(%rbp)	# tmp66, after_line
	.loc 1 3665 0
	movq	-40(%rbp), %rdx	# after, tmp67
	movq	-32(%rbp), %rcx	# to, tmp68
	movq	-24(%rbp), %rax	# from, tmp69
	movq	%rcx, %rsi	# tmp68,
	movq	%rax, %rdi	# tmp69,
	call	reorder_insns	#
	.loc 1 3667 0
	movq	-16(%rbp), %rax	# from_line, tmp70
	cmpq	-8(%rbp), %rax	# after_line, tmp70
	jne	.L825	#,
	.loc 1 3668 0
	jmp	.L824	#
.L825:
	.loc 1 3670 0
	cmpq	$0, -16(%rbp)	#, from_line
	je	.L827	#,
	.loc 1 3671 0
	movq	-16(%rbp), %rax	# from_line, tmp71
	movl	40(%rax), %ecx	# from_line_2->fld[4].rtint, D.19104
	movq	-16(%rbp), %rax	# from_line, tmp72
	movq	32(%rax), %rax	# from_line_2->fld[3].rtstr, D.19105
	movq	-40(%rbp), %rdx	# after, tmp73
	movl	%ecx, %esi	# D.19104,
	movq	%rax, %rdi	# D.19105,
	call	emit_line_note_after	#
.L827:
	.loc 1 3674 0
	cmpq	$0, -8(%rbp)	#, after_line
	je	.L824	#,
	.loc 1 3675 0
	movq	-8(%rbp), %rax	# after_line, tmp74
	movl	40(%rax), %ecx	# after_line_4->fld[4].rtint, D.19104
	movq	-8(%rbp), %rax	# after_line, tmp75
	movq	32(%rax), %rax	# after_line_4->fld[3].rtstr, D.19105
	movq	-32(%rbp), %rdx	# to, tmp76
	movl	%ecx, %esi	# D.19104,
	movq	%rax, %rdi	# D.19105,
	call	emit_line_note_after	#
.L824:
	.loc 1 3678 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE99:
	.size	reorder_insns_with_line_notes, .-reorder_insns_with_line_notes
	.globl	remove_unnecessary_notes
	.type	remove_unnecessary_notes, @function
remove_unnecessary_notes:
.LFB100:
	.loc 1 3684 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	.loc 1 3685 0
	movq	$0, -40(%rbp)	#, block_stack
	.loc 1 3686 0
	movq	$0, -32(%rbp)	#, eh_stack
	.loc 1 3693 0
	call	get_insns	#
	movq	24(%rax), %rax	# _9->fld[2].rtx, tmp81
	movq	%rax, -24(%rbp)	# tmp81, insn
	jmp	.L829	#
.L850:
	.loc 1 3696 0
	movq	-24(%rbp), %rax	# insn, tmp82
	movq	24(%rax), %rax	# insn_5->fld[2].rtx, tmp83
	movq	%rax, -8(%rbp)	# tmp83, next
	.loc 1 3699 0
	movq	-24(%rbp), %rax	# insn, tmp84
	movzwl	(%rax), %eax	# insn_5->code, D.19107
	cmpw	$37, %ax	#, D.19107
	je	.L830	#,
	.loc 1 3700 0
	jmp	.L831	#
.L830:
	.loc 1 3702 0
	movq	-24(%rbp), %rax	# insn, tmp85
	movl	40(%rax), %eax	# insn_5->fld[4].rtint, D.19108
	addl	$99, %eax	#, tmp86
	cmpl	$14, %eax	#, tmp86
	ja	.L831	#,
	movl	%eax, %eax	# tmp86, tmp87
	movq	.L833(,%rax,8), %rax	#, tmp88
	jmp	*%rax	# tmp88
	.section	.rodata
	.align 8
	.align 4
.L833:
	.quad	.L832
	.quad	.L834
	.quad	.L835
	.quad	.L831
	.quad	.L831
	.quad	.L831
	.quad	.L831
	.quad	.L832
	.quad	.L831
	.quad	.L831
	.quad	.L831
	.quad	.L831
	.quad	.L831
	.quad	.L836
	.quad	.L837
	.text
.L832:
	.loc 1 3706 0
	movq	-24(%rbp), %rax	# insn, tmp89
	movq	%rax, %rdi	# tmp89,
	call	remove_insn	#
	.loc 1 3707 0
	jmp	.L831	#
.L836:
	.loc 1 3710 0
	movq	-32(%rbp), %rdx	# eh_stack, tmp90
	movq	-24(%rbp), %rax	# insn, tmp91
	movq	%rdx, %rsi	# tmp90,
	movq	%rax, %rdi	# tmp91,
	call	alloc_INSN_LIST	#
	movq	%rax, -32(%rbp)	# tmp92, eh_stack
	.loc 1 3711 0
	jmp	.L831	#
.L837:
	.loc 1 3715 0
	cmpq	$0, -32(%rbp)	#, eh_stack
	jne	.L838	#,
	.loc 1 3716 0
	movl	$__FUNCTION__.14111, %edx	#,
	movl	$3716, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L838:
	.loc 1 3718 0
	movq	-32(%rbp), %rax	# eh_stack, tmp93
	movq	8(%rax), %rax	# eh_stack_4->fld[0].rtx, D.19106
	movl	32(%rax), %edx	# _15->fld[3].rtint, D.19108
	movq	-24(%rbp), %rax	# insn, tmp94
	movl	32(%rax), %eax	# insn_5->fld[3].rtint, D.19108
	cmpl	%eax, %edx	# D.19108, D.19108
	je	.L839	#,
	.loc 1 3719 0
	movl	$__FUNCTION__.14111, %edx	#,
	movl	$3719, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L839:
	.loc 1 3720 0
	movq	-32(%rbp), %rax	# eh_stack, tmp95
	movq	%rax, -16(%rbp)	# tmp95, tmp
	.loc 1 3721 0
	movq	-32(%rbp), %rax	# eh_stack, tmp96
	movq	16(%rax), %rax	# eh_stack_4->fld[1].rtx, tmp97
	movq	%rax, -32(%rbp)	# tmp97, eh_stack
	.loc 1 3722 0
	movq	-16(%rbp), %rax	# tmp, tmp98
	movq	%rax, %rdi	# tmp98,
	call	free_INSN_LIST_node	#
	.loc 1 3723 0
	jmp	.L831	#
.L834:
	.loc 1 3728 0
	movq	-24(%rbp), %rax	# insn, tmp99
	movq	32(%rax), %rax	# insn_5->fld[3].rttree, D.19109
	testq	%rax, %rax	# D.19109
	jne	.L840	#,
	.loc 1 3729 0
	movl	$__FUNCTION__.14111, %edx	#,
	movl	$3729, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L840:
	.loc 1 3730 0
	movq	-40(%rbp), %rdx	# block_stack, tmp100
	movq	-24(%rbp), %rax	# insn, tmp101
	movq	%rdx, %rsi	# tmp100,
	movq	%rax, %rdi	# tmp101,
	call	alloc_INSN_LIST	#
	movq	%rax, -40(%rbp)	# tmp102, block_stack
	.loc 1 3731 0
	jmp	.L831	#
.L835:
	.loc 1 3735 0
	cmpq	$0, -40(%rbp)	#, block_stack
	jne	.L841	#,
	.loc 1 3736 0
	movl	$__FUNCTION__.14111, %edx	#,
	movl	$3736, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L841:
	.loc 1 3738 0
	movq	-40(%rbp), %rax	# block_stack, tmp103
	movq	8(%rax), %rax	# block_stack_2->fld[0].rtx, D.19106
	movq	32(%rax), %rdx	# _22->fld[3].rttree, D.19109
	movq	-24(%rbp), %rax	# insn, tmp104
	movq	32(%rax), %rax	# insn_5->fld[3].rttree, D.19109
	cmpq	%rax, %rdx	# D.19109, D.19109
	je	.L842	#,
	.loc 1 3739 0
	movl	$__FUNCTION__.14111, %edx	#,
	movl	$3739, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L842:
	.loc 1 3740 0
	movq	-40(%rbp), %rax	# block_stack, tmp105
	movq	%rax, -16(%rbp)	# tmp105, tmp
	.loc 1 3741 0
	movq	-40(%rbp), %rax	# block_stack, tmp106
	movq	16(%rax), %rax	# block_stack_2->fld[1].rtx, tmp107
	movq	%rax, -40(%rbp)	# tmp107, block_stack
	.loc 1 3742 0
	movq	-16(%rbp), %rax	# tmp, tmp108
	movq	%rax, %rdi	# tmp108,
	call	free_INSN_LIST_node	#
	.loc 1 3749 0
	movq	-24(%rbp), %rax	# insn, tmp109
	movq	16(%rax), %rax	# insn_5->fld[1].rtx, tmp110
	movq	%rax, -16(%rbp)	# tmp110, tmp
	jmp	.L843	#
.L849:
	.loc 1 3755 0
	movq	-16(%rbp), %rax	# tmp, tmp111
	movzwl	(%rax), %eax	# tmp_6->code, D.19107
	movzwl	%ax, %eax	# D.19107, D.19108
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.19110
	cmpb	$105, %al	#, D.19110
	jne	.L844	#,
	.loc 1 3756 0
	jmp	.L831	#
.L844:
	.loc 1 3759 0
	movq	-16(%rbp), %rax	# tmp, tmp113
	movzwl	(%rax), %eax	# tmp_6->code, D.19107
	cmpw	$37, %ax	#, D.19107
	je	.L845	#,
	.loc 1 3760 0
	jmp	.L846	#
.L845:
	.loc 1 3762 0
	movq	-16(%rbp), %rax	# tmp, tmp114
	movl	40(%rax), %eax	# tmp_6->fld[4].rtint, D.19108
	cmpl	$-98, %eax	#, D.19108
	jne	.L847	#,
	.loc 1 3769 0
	movq	-24(%rbp), %rax	# insn, tmp115
	movq	32(%rax), %rax	# insn_5->fld[3].rttree, D.19109
	movq	%rax, %rdi	# D.19109,
	call	is_body_block	#
	testl	%eax, %eax	# D.19108
	jne	.L848	#,
	.loc 1 3770 0
	movq	debug_hooks(%rip), %rax	# debug_hooks, debug_hooks.341
	movq	64(%rax), %rax	# debug_hooks.341_35->ignore_block, D.19111
	movq	-24(%rbp), %rdx	# insn, tmp116
	movq	32(%rdx), %rdx	# insn_5->fld[3].rttree, D.19109
	movq	%rdx, %rdi	# D.19109,
	call	*%rax	# D.19111
	testb	%al, %al	# D.19112
	je	.L848	#,
	.loc 1 3772 0
	movq	-16(%rbp), %rax	# tmp, tmp117
	movq	%rax, %rdi	# tmp117,
	call	remove_insn	#
	.loc 1 3773 0
	movq	-24(%rbp), %rax	# insn, tmp118
	movq	%rax, %rdi	# tmp118,
	call	remove_insn	#
	.loc 1 3775 0
	jmp	.L831	#
.L848:
	jmp	.L831	#
.L847:
	.loc 1 3777 0
	movq	-16(%rbp), %rax	# tmp, tmp119
	movl	40(%rax), %eax	# tmp_6->fld[4].rtint, D.19108
	cmpl	$-97, %eax	#, D.19108
	jne	.L846	#,
	.loc 1 3782 0
	jmp	.L831	#
.L846:
	.loc 1 3749 0
	movq	-16(%rbp), %rax	# tmp, tmp120
	movq	16(%rax), %rax	# tmp_6->fld[1].rtx, tmp121
	movq	%rax, -16(%rbp)	# tmp121, tmp
.L843:
	.loc 1 3749 0 is_stmt 0 discriminator 1
	cmpq	$0, -16(%rbp)	#, tmp
	jne	.L849	#,
.L831:
	.loc 1 3693 0 is_stmt 1
	movq	-8(%rbp), %rax	# next, tmp122
	movq	%rax, -24(%rbp)	# tmp122, insn
.L829:
	.loc 1 3693 0 is_stmt 0 discriminator 1
	cmpq	$0, -24(%rbp)	#, insn
	jne	.L850	#,
	.loc 1 3788 0 is_stmt 1
	cmpq	$0, -40(%rbp)	#, block_stack
	jne	.L851	#,
	.loc 1 3788 0 is_stmt 0 discriminator 1
	cmpq	$0, -32(%rbp)	#, eh_stack
	je	.L828	#,
.L851:
	.loc 1 3789 0 is_stmt 1
	movl	$__FUNCTION__.14111, %edx	#,
	movl	$3789, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L828:
	.loc 1 3790 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE100:
	.size	remove_unnecessary_notes, .-remove_unnecessary_notes
	.globl	emit_insn_before
	.type	emit_insn_before, @function
emit_insn_before:
.LFB101:
	.loc 1 3802 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# pattern, pattern
	movq	%rsi, -32(%rbp)	# before, before
	.loc 1 3803 0
	movq	-32(%rbp), %rax	# before, tmp65
	movq	%rax, -8(%rbp)	# tmp65, insn
	.loc 1 3805 0
	movq	-24(%rbp), %rax	# pattern, tmp66
	movzwl	(%rax), %eax	# pattern_6(D)->code, D.19113
	cmpw	$24, %ax	#, D.19113
	jne	.L854	#,
.LBB46:
	.loc 1 3809 0
	movl	$0, -12(%rbp)	#, i
	jmp	.L855	#
.L856:
	.loc 1 3811 0 discriminator 2
	movq	-24(%rbp), %rax	# pattern, tmp67
	movq	8(%rax), %rax	# pattern_6(D)->fld[0].rtvec, D.19114
	movl	-12(%rbp), %edx	# i, tmp69
	movslq	%edx, %rdx	# tmp69, tmp68
	movq	8(%rax,%rdx,8), %rax	# _11->elem, tmp70
	movq	%rax, -8(%rbp)	# tmp70, insn
	.loc 1 3812 0 discriminator 2
	movq	-32(%rbp), %rdx	# before, tmp71
	movq	-8(%rbp), %rax	# insn, tmp72
	movq	%rdx, %rsi	# tmp71,
	movq	%rax, %rdi	# tmp72,
	call	add_insn_before	#
	.loc 1 3809 0 discriminator 2
	addl	$1, -12(%rbp)	#, i
.L855:
	.loc 1 3809 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# pattern, tmp73
	movq	8(%rax), %rax	# pattern_6(D)->fld[0].rtvec, D.19114
	movl	(%rax), %eax	# _9->num_elem, D.19115
	cmpl	-12(%rbp), %eax	# i, D.19115
	jg	.L856	#,
.LBE46:
	jmp	.L857	#
.L854:
	.loc 1 3817 0 is_stmt 1
	movq	-24(%rbp), %rax	# pattern, tmp74
	movq	%rax, %rdi	# tmp74,
	call	make_insn_raw	#
	movq	%rax, -8(%rbp)	# tmp75, insn
	.loc 1 3818 0
	movq	-32(%rbp), %rdx	# before, tmp76
	movq	-8(%rbp), %rax	# insn, tmp77
	movq	%rdx, %rsi	# tmp76,
	movq	%rax, %rdi	# tmp77,
	call	add_insn_before	#
.L857:
	.loc 1 3821 0
	movq	-8(%rbp), %rax	# insn, D.19116
	.loc 1 3822 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE101:
	.size	emit_insn_before, .-emit_insn_before
	.globl	emit_jump_insn_before
	.type	emit_jump_insn_before, @function
emit_jump_insn_before:
.LFB102:
	.loc 1 3830 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# pattern, pattern
	movq	%rsi, -32(%rbp)	# before, before
	.loc 1 3833 0
	movq	-24(%rbp), %rax	# pattern, tmp62
	movzwl	(%rax), %eax	# pattern_2(D)->code, D.19117
	cmpw	$24, %ax	#, D.19117
	jne	.L860	#,
	.loc 1 3834 0
	movq	-32(%rbp), %rdx	# before, tmp63
	movq	-24(%rbp), %rax	# pattern, tmp64
	movq	%rdx, %rsi	# tmp63,
	movq	%rax, %rdi	# tmp64,
	call	emit_insn_before	#
	movq	%rax, -8(%rbp)	# tmp65, insn
	jmp	.L861	#
.L860:
	.loc 1 3837 0
	movq	-24(%rbp), %rax	# pattern, tmp66
	movq	%rax, %rdi	# tmp66,
	call	make_jump_insn_raw	#
	movq	%rax, -8(%rbp)	# tmp67, insn
	.loc 1 3838 0
	movq	-32(%rbp), %rdx	# before, tmp68
	movq	-8(%rbp), %rax	# insn, tmp69
	movq	%rdx, %rsi	# tmp68,
	movq	%rax, %rdi	# tmp69,
	call	add_insn_before	#
.L861:
	.loc 1 3841 0
	movq	-8(%rbp), %rax	# insn, D.19118
	.loc 1 3842 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE102:
	.size	emit_jump_insn_before, .-emit_jump_insn_before
	.globl	emit_call_insn_before
	.type	emit_call_insn_before, @function
emit_call_insn_before:
.LFB103:
	.loc 1 3850 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# pattern, pattern
	movq	%rsi, -32(%rbp)	# before, before
	.loc 1 3853 0
	movq	-24(%rbp), %rax	# pattern, tmp62
	movzwl	(%rax), %eax	# pattern_2(D)->code, D.19119
	cmpw	$24, %ax	#, D.19119
	jne	.L864	#,
	.loc 1 3854 0
	movq	-32(%rbp), %rdx	# before, tmp63
	movq	-24(%rbp), %rax	# pattern, tmp64
	movq	%rdx, %rsi	# tmp63,
	movq	%rax, %rdi	# tmp64,
	call	emit_insn_before	#
	movq	%rax, -8(%rbp)	# tmp65, insn
	jmp	.L865	#
.L864:
	.loc 1 3857 0
	movq	-24(%rbp), %rax	# pattern, tmp66
	movq	%rax, %rdi	# tmp66,
	call	make_call_insn_raw	#
	movq	%rax, -8(%rbp)	# tmp67, insn
	.loc 1 3858 0
	movq	-32(%rbp), %rdx	# before, tmp68
	movq	-8(%rbp), %rax	# insn, tmp69
	movq	%rdx, %rsi	# tmp68,
	movq	%rax, %rdi	# tmp69,
	call	add_insn_before	#
	.loc 1 3859 0
	movq	-8(%rbp), %rax	# insn, tmp70
	movw	$34, (%rax)	#, insn_6->code
.L865:
	.loc 1 3862 0
	movq	-8(%rbp), %rax	# insn, D.19120
	.loc 1 3863 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE103:
	.size	emit_call_insn_before, .-emit_call_insn_before
	.globl	emit_barrier_before
	.type	emit_barrier_before, @function
emit_barrier_before:
.LFB104:
	.loc 1 3871 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# before, before
	.loc 1 3872 0
	movl	$35, %edi	#,
	call	rtx_alloc	#
	movq	%rax, -8(%rbp)	# tmp65, insn
	.loc 1 3874 0
	movq	cfun(%rip), %rax	# cfun, cfun.342
	movq	24(%rax), %rdx	# cfun.342_2->emit, D.19121
	movl	40(%rdx), %eax	# _3->x_cur_insn_uid, D.19122
	leal	1(%rax), %ecx	#, D.19122
	movl	%ecx, 40(%rdx)	# D.19122, _3->x_cur_insn_uid
	movq	-8(%rbp), %rdx	# insn, tmp66
	movl	%eax, 8(%rdx)	# D.19122, insn_1->fld[0].rtint
	.loc 1 3876 0
	movq	-24(%rbp), %rdx	# before, tmp67
	movq	-8(%rbp), %rax	# insn, tmp68
	movq	%rdx, %rsi	# tmp67,
	movq	%rax, %rdi	# tmp68,
	call	add_insn_before	#
	.loc 1 3877 0
	movq	-8(%rbp), %rax	# insn, D.19123
	.loc 1 3878 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE104:
	.size	emit_barrier_before, .-emit_barrier_before
	.globl	emit_label_before
	.type	emit_label_before, @function
emit_label_before:
.LFB105:
	.loc 1 3885 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# label, label
	movq	%rsi, -16(%rbp)	# before, before
	.loc 1 3888 0
	movq	-8(%rbp), %rax	# label, tmp66
	movl	8(%rax), %eax	# label_1(D)->fld[0].rtint, D.19124
	testl	%eax, %eax	# D.19124
	jne	.L870	#,
	.loc 1 3890 0
	movq	cfun(%rip), %rax	# cfun, cfun.343
	movq	24(%rax), %rdx	# cfun.343_3->emit, D.19125
	movl	40(%rdx), %eax	# _4->x_cur_insn_uid, D.19124
	leal	1(%rax), %ecx	#, D.19124
	movl	%ecx, 40(%rdx)	# D.19124, _4->x_cur_insn_uid
	movq	-8(%rbp), %rdx	# label, tmp67
	movl	%eax, 8(%rdx)	# D.19124, label_1(D)->fld[0].rtint
	.loc 1 3891 0
	movq	-16(%rbp), %rdx	# before, tmp68
	movq	-8(%rbp), %rax	# label, tmp69
	movq	%rdx, %rsi	# tmp68,
	movq	%rax, %rdi	# tmp69,
	call	add_insn_before	#
.L870:
	.loc 1 3894 0
	movq	-8(%rbp), %rax	# label, D.19126
	.loc 1 3895 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE105:
	.size	emit_label_before, .-emit_label_before
	.globl	emit_note_before
	.type	emit_note_before, @function
emit_note_before:
.LFB106:
	.loc 1 3903 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	%edi, -20(%rbp)	# subtype, subtype
	movq	%rsi, -32(%rbp)	# before, before
	.loc 1 3904 0
	movl	$37, %edi	#,
	call	rtx_alloc	#
	movq	%rax, -8(%rbp)	# tmp65, note
	.loc 1 3905 0
	movq	cfun(%rip), %rax	# cfun, cfun.344
	movq	24(%rax), %rdx	# cfun.344_2->emit, D.19127
	movl	40(%rdx), %eax	# _3->x_cur_insn_uid, D.19128
	leal	1(%rax), %ecx	#, D.19128
	movl	%ecx, 40(%rdx)	# D.19128, _3->x_cur_insn_uid
	movq	-8(%rbp), %rdx	# note, tmp66
	movl	%eax, 8(%rdx)	# D.19128, note_1->fld[0].rtint
	.loc 1 3906 0
	movq	-8(%rbp), %rax	# note, tmp67
	movq	$0, 32(%rax)	#, note_1->fld[3].rtstr
	.loc 1 3907 0
	movq	-8(%rbp), %rax	# note, tmp68
	movl	-20(%rbp), %edx	# subtype, tmp69
	movl	%edx, 40(%rax)	# tmp69, note_1->fld[4].rtint
	.loc 1 3909 0
	movq	-32(%rbp), %rdx	# before, tmp70
	movq	-8(%rbp), %rax	# note, tmp71
	movq	%rdx, %rsi	# tmp70,
	movq	%rax, %rdi	# tmp71,
	call	add_insn_before	#
	.loc 1 3910 0
	movq	-8(%rbp), %rax	# note, D.19129
	.loc 1 3911 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE106:
	.size	emit_note_before, .-emit_note_before
	.globl	emit_insn_after
	.type	emit_insn_after, @function
emit_insn_after:
.LFB107:
	.loc 1 3919 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# pattern, pattern
	movq	%rsi, -32(%rbp)	# after, after
	.loc 1 3920 0
	movq	-32(%rbp), %rax	# after, tmp65
	movq	%rax, -8(%rbp)	# tmp65, insn
	.loc 1 3922 0
	movq	-24(%rbp), %rax	# pattern, tmp66
	movzwl	(%rax), %eax	# pattern_7(D)->code, D.19130
	cmpw	$24, %ax	#, D.19130
	jne	.L875	#,
.LBB47:
	.loc 1 3926 0
	movl	$0, -12(%rbp)	#, i
	jmp	.L876	#
.L877:
	.loc 1 3928 0 discriminator 2
	movq	-24(%rbp), %rax	# pattern, tmp67
	movq	8(%rax), %rax	# pattern_7(D)->fld[0].rtvec, D.19131
	movl	-12(%rbp), %edx	# i, tmp69
	movslq	%edx, %rdx	# tmp69, tmp68
	movq	8(%rax,%rdx,8), %rax	# _12->elem, tmp70
	movq	%rax, -8(%rbp)	# tmp70, insn
	.loc 1 3929 0 discriminator 2
	movq	-32(%rbp), %rdx	# after, tmp71
	movq	-8(%rbp), %rax	# insn, tmp72
	movq	%rdx, %rsi	# tmp71,
	movq	%rax, %rdi	# tmp72,
	call	add_insn_after	#
	.loc 1 3930 0 discriminator 2
	movq	-8(%rbp), %rax	# insn, tmp73
	movq	%rax, -32(%rbp)	# tmp73, after
	.loc 1 3926 0 discriminator 2
	addl	$1, -12(%rbp)	#, i
.L876:
	.loc 1 3926 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# pattern, tmp74
	movq	8(%rax), %rax	# pattern_7(D)->fld[0].rtvec, D.19131
	movl	(%rax), %eax	# _10->num_elem, D.19132
	cmpl	-12(%rbp), %eax	# i, D.19132
	jg	.L877	#,
.LBE47:
	jmp	.L878	#
.L875:
	.loc 1 3935 0 is_stmt 1
	movq	-24(%rbp), %rax	# pattern, tmp75
	movq	%rax, %rdi	# tmp75,
	call	make_insn_raw	#
	movq	%rax, -8(%rbp)	# tmp76, insn
	.loc 1 3936 0
	movq	-32(%rbp), %rdx	# after, tmp77
	movq	-8(%rbp), %rax	# insn, tmp78
	movq	%rdx, %rsi	# tmp77,
	movq	%rax, %rdi	# tmp78,
	call	add_insn_after	#
.L878:
	.loc 1 3939 0
	movq	-8(%rbp), %rax	# insn, D.19133
	.loc 1 3940 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE107:
	.size	emit_insn_after, .-emit_insn_after
	.globl	emit_insn_after_with_line_notes
	.type	emit_insn_after_with_line_notes, @function
emit_insn_after_with_line_notes:
.LFB108:
	.loc 1 3948 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -40(%rbp)	# pattern, pattern
	movq	%rsi, -48(%rbp)	# after, after
	movq	%rdx, -56(%rbp)	# from, from
	.loc 1 3949 0
	movq	-56(%rbp), %rax	# from, tmp63
	movq	%rax, %rdi	# tmp63,
	call	find_line_note	#
	movq	%rax, -24(%rbp)	# tmp64, from_line
	.loc 1 3950 0
	movq	-48(%rbp), %rax	# after, tmp65
	movq	%rax, %rdi	# tmp65,
	call	find_line_note	#
	movq	%rax, -16(%rbp)	# tmp66, after_line
	.loc 1 3951 0
	movq	-48(%rbp), %rdx	# after, tmp67
	movq	-40(%rbp), %rax	# pattern, tmp68
	movq	%rdx, %rsi	# tmp67,
	movq	%rax, %rdi	# tmp68,
	call	emit_insn_after	#
	movq	%rax, -8(%rbp)	# tmp69, insn
	.loc 1 3953 0
	cmpq	$0, -24(%rbp)	#, from_line
	je	.L881	#,
	.loc 1 3954 0
	movq	-24(%rbp), %rax	# from_line, tmp70
	movl	40(%rax), %ecx	# from_line_2->fld[4].rtint, D.19134
	movq	-24(%rbp), %rax	# from_line, tmp71
	movq	32(%rax), %rax	# from_line_2->fld[3].rtstr, D.19135
	movq	-48(%rbp), %rdx	# after, tmp72
	movl	%ecx, %esi	# D.19134,
	movq	%rax, %rdi	# D.19135,
	call	emit_line_note_after	#
.L881:
	.loc 1 3958 0
	cmpq	$0, -16(%rbp)	#, after_line
	je	.L880	#,
	.loc 1 3959 0
	movq	-16(%rbp), %rax	# after_line, tmp73
	movl	40(%rax), %ecx	# after_line_4->fld[4].rtint, D.19134
	movq	-16(%rbp), %rax	# after_line, tmp74
	movq	32(%rax), %rax	# after_line_4->fld[3].rtstr, D.19135
	movq	-8(%rbp), %rdx	# insn, tmp75
	movl	%ecx, %esi	# D.19134,
	movq	%rax, %rdi	# D.19135,
	call	emit_line_note_after	#
.L880:
	.loc 1 3962 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE108:
	.size	emit_insn_after_with_line_notes, .-emit_insn_after_with_line_notes
	.globl	emit_jump_insn_after
	.type	emit_jump_insn_after, @function
emit_jump_insn_after:
.LFB109:
	.loc 1 3970 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# pattern, pattern
	movq	%rsi, -32(%rbp)	# after, after
	.loc 1 3973 0
	movq	-24(%rbp), %rax	# pattern, tmp62
	movzwl	(%rax), %eax	# pattern_2(D)->code, D.19136
	cmpw	$24, %ax	#, D.19136
	jne	.L884	#,
	.loc 1 3974 0
	movq	-32(%rbp), %rdx	# after, tmp63
	movq	-24(%rbp), %rax	# pattern, tmp64
	movq	%rdx, %rsi	# tmp63,
	movq	%rax, %rdi	# tmp64,
	call	emit_insn_after	#
	movq	%rax, -8(%rbp)	# tmp65, insn
	jmp	.L885	#
.L884:
	.loc 1 3977 0
	movq	-24(%rbp), %rax	# pattern, tmp66
	movq	%rax, %rdi	# tmp66,
	call	make_jump_insn_raw	#
	movq	%rax, -8(%rbp)	# tmp67, insn
	.loc 1 3978 0
	movq	-32(%rbp), %rdx	# after, tmp68
	movq	-8(%rbp), %rax	# insn, tmp69
	movq	%rdx, %rsi	# tmp68,
	movq	%rax, %rdi	# tmp69,
	call	add_insn_after	#
.L885:
	.loc 1 3981 0
	movq	-8(%rbp), %rax	# insn, D.19137
	.loc 1 3982 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE109:
	.size	emit_jump_insn_after, .-emit_jump_insn_after
	.globl	emit_barrier_after
	.type	emit_barrier_after, @function
emit_barrier_after:
.LFB110:
	.loc 1 3990 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# after, after
	.loc 1 3991 0
	movl	$35, %edi	#,
	call	rtx_alloc	#
	movq	%rax, -8(%rbp)	# tmp65, insn
	.loc 1 3993 0
	movq	cfun(%rip), %rax	# cfun, cfun.345
	movq	24(%rax), %rdx	# cfun.345_2->emit, D.19138
	movl	40(%rdx), %eax	# _3->x_cur_insn_uid, D.19139
	leal	1(%rax), %ecx	#, D.19139
	movl	%ecx, 40(%rdx)	# D.19139, _3->x_cur_insn_uid
	movq	-8(%rbp), %rdx	# insn, tmp66
	movl	%eax, 8(%rdx)	# D.19139, insn_1->fld[0].rtint
	.loc 1 3995 0
	movq	-24(%rbp), %rdx	# after, tmp67
	movq	-8(%rbp), %rax	# insn, tmp68
	movq	%rdx, %rsi	# tmp67,
	movq	%rax, %rdi	# tmp68,
	call	add_insn_after	#
	.loc 1 3996 0
	movq	-8(%rbp), %rax	# insn, D.19140
	.loc 1 3997 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE110:
	.size	emit_barrier_after, .-emit_barrier_after
	.globl	emit_label_after
	.type	emit_label_after, @function
emit_label_after:
.LFB111:
	.loc 1 4004 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# label, label
	movq	%rsi, -16(%rbp)	# after, after
	.loc 1 4008 0
	movq	-8(%rbp), %rax	# label, tmp66
	movl	8(%rax), %eax	# label_1(D)->fld[0].rtint, D.19141
	testl	%eax, %eax	# D.19141
	jne	.L890	#,
	.loc 1 4010 0
	movq	cfun(%rip), %rax	# cfun, cfun.346
	movq	24(%rax), %rdx	# cfun.346_3->emit, D.19142
	movl	40(%rdx), %eax	# _4->x_cur_insn_uid, D.19141
	leal	1(%rax), %ecx	#, D.19141
	movl	%ecx, 40(%rdx)	# D.19141, _4->x_cur_insn_uid
	movq	-8(%rbp), %rdx	# label, tmp67
	movl	%eax, 8(%rdx)	# D.19141, label_1(D)->fld[0].rtint
	.loc 1 4011 0
	movq	-16(%rbp), %rdx	# after, tmp68
	movq	-8(%rbp), %rax	# label, tmp69
	movq	%rdx, %rsi	# tmp68,
	movq	%rax, %rdi	# tmp69,
	call	add_insn_after	#
.L890:
	.loc 1 4014 0
	movq	-8(%rbp), %rax	# label, D.19143
	.loc 1 4015 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE111:
	.size	emit_label_after, .-emit_label_after
	.globl	emit_note_after
	.type	emit_note_after, @function
emit_note_after:
.LFB112:
	.loc 1 4023 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	%edi, -20(%rbp)	# subtype, subtype
	movq	%rsi, -32(%rbp)	# after, after
	.loc 1 4024 0
	movl	$37, %edi	#,
	call	rtx_alloc	#
	movq	%rax, -8(%rbp)	# tmp65, note
	.loc 1 4025 0
	movq	cfun(%rip), %rax	# cfun, cfun.347
	movq	24(%rax), %rdx	# cfun.347_2->emit, D.19144
	movl	40(%rdx), %eax	# _3->x_cur_insn_uid, D.19145
	leal	1(%rax), %ecx	#, D.19145
	movl	%ecx, 40(%rdx)	# D.19145, _3->x_cur_insn_uid
	movq	-8(%rbp), %rdx	# note, tmp66
	movl	%eax, 8(%rdx)	# D.19145, note_1->fld[0].rtint
	.loc 1 4026 0
	movq	-8(%rbp), %rax	# note, tmp67
	movq	$0, 32(%rax)	#, note_1->fld[3].rtstr
	.loc 1 4027 0
	movq	-8(%rbp), %rax	# note, tmp68
	movl	-20(%rbp), %edx	# subtype, tmp69
	movl	%edx, 40(%rax)	# tmp69, note_1->fld[4].rtint
	.loc 1 4028 0
	movq	-32(%rbp), %rdx	# after, tmp70
	movq	-8(%rbp), %rax	# note, tmp71
	movq	%rdx, %rsi	# tmp70,
	movq	%rax, %rdi	# tmp71,
	call	add_insn_after	#
	.loc 1 4029 0
	movq	-8(%rbp), %rax	# note, D.19146
	.loc 1 4030 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE112:
	.size	emit_note_after, .-emit_note_after
	.globl	emit_line_note_after
	.type	emit_line_note_after, @function
emit_line_note_after:
.LFB113:
	.loc 1 4039 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# file, file
	movl	%esi, -28(%rbp)	# line, line
	movq	%rdx, -40(%rbp)	# after, after
	.loc 1 4042 0
	movl	no_line_numbers(%rip), %eax	# no_line_numbers, no_line_numbers.348
	testl	%eax, %eax	# no_line_numbers.348
	je	.L895	#,
	.loc 1 4042 0 is_stmt 0 discriminator 1
	cmpl	$0, -28(%rbp)	#, line
	jle	.L895	#,
	.loc 1 4044 0 is_stmt 1
	movq	cfun(%rip), %rax	# cfun, cfun.349
	movq	24(%rax), %rax	# cfun.349_4->emit, D.19148
	movl	40(%rax), %edx	# _5->x_cur_insn_uid, D.19149
	addl	$1, %edx	#, D.19149
	movl	%edx, 40(%rax)	# D.19149, _5->x_cur_insn_uid
	.loc 1 4045 0
	movl	$0, %eax	#, D.19147
	jmp	.L896	#
.L895:
	.loc 1 4048 0
	movl	$37, %edi	#,
	call	rtx_alloc	#
	movq	%rax, -8(%rbp)	# tmp70, note
	.loc 1 4049 0
	movq	cfun(%rip), %rax	# cfun, cfun.350
	movq	24(%rax), %rdx	# cfun.350_10->emit, D.19148
	movl	40(%rdx), %eax	# _11->x_cur_insn_uid, D.19149
	leal	1(%rax), %ecx	#, D.19149
	movl	%ecx, 40(%rdx)	# D.19149, _11->x_cur_insn_uid
	movq	-8(%rbp), %rdx	# note, tmp71
	movl	%eax, 8(%rdx)	# D.19149, note_9->fld[0].rtint
	.loc 1 4050 0
	movq	-8(%rbp), %rax	# note, tmp72
	movq	-24(%rbp), %rdx	# file, tmp73
	movq	%rdx, 32(%rax)	# tmp73, note_9->fld[3].rtstr
	.loc 1 4051 0
	movq	-8(%rbp), %rax	# note, tmp74
	movl	-28(%rbp), %edx	# line, tmp75
	movl	%edx, 40(%rax)	# tmp75, note_9->fld[4].rtint
	.loc 1 4052 0
	movq	-40(%rbp), %rdx	# after, tmp76
	movq	-8(%rbp), %rax	# note, tmp77
	movq	%rdx, %rsi	# tmp76,
	movq	%rax, %rdi	# tmp77,
	call	add_insn_after	#
	.loc 1 4053 0
	movq	-8(%rbp), %rax	# note, D.19147
.L896:
	.loc 1 4054 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE113:
	.size	emit_line_note_after, .-emit_line_note_after
	.globl	emit_insn
	.type	emit_insn, @function
emit_insn:
.LFB114:
	.loc 1 4066 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# pattern, pattern
	.loc 1 4067 0
	movq	cfun(%rip), %rax	# cfun, cfun.351
	movq	24(%rax), %rax	# cfun.351_4->emit, D.19150
	movq	16(%rax), %rax	# _5->x_last_insn, tmp67
	movq	%rax, -8(%rbp)	# tmp67, insn
	.loc 1 4069 0
	movq	-24(%rbp), %rax	# pattern, tmp68
	movzwl	(%rax), %eax	# pattern_7(D)->code, D.19151
	cmpw	$24, %ax	#, D.19151
	jne	.L898	#,
.LBB48:
	.loc 1 4073 0
	movl	$0, -12(%rbp)	#, i
	jmp	.L899	#
.L900:
	.loc 1 4075 0 discriminator 2
	movq	-24(%rbp), %rax	# pattern, tmp69
	movq	8(%rax), %rax	# pattern_7(D)->fld[0].rtvec, D.19152
	movl	-12(%rbp), %edx	# i, tmp71
	movslq	%edx, %rdx	# tmp71, tmp70
	movq	8(%rax,%rdx,8), %rax	# _12->elem, tmp72
	movq	%rax, -8(%rbp)	# tmp72, insn
	.loc 1 4076 0 discriminator 2
	movq	-8(%rbp), %rax	# insn, tmp73
	movq	%rax, %rdi	# tmp73,
	call	add_insn	#
	.loc 1 4073 0 discriminator 2
	addl	$1, -12(%rbp)	#, i
.L899:
	.loc 1 4073 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# pattern, tmp74
	movq	8(%rax), %rax	# pattern_7(D)->fld[0].rtvec, D.19152
	movl	(%rax), %eax	# _10->num_elem, D.19153
	cmpl	-12(%rbp), %eax	# i, D.19153
	jg	.L900	#,
.LBE48:
	jmp	.L901	#
.L898:
	.loc 1 4081 0 is_stmt 1
	movq	-24(%rbp), %rax	# pattern, tmp75
	movq	%rax, %rdi	# tmp75,
	call	make_insn_raw	#
	movq	%rax, -8(%rbp)	# tmp76, insn
	.loc 1 4082 0
	movq	-8(%rbp), %rax	# insn, tmp77
	movq	%rax, %rdi	# tmp77,
	call	add_insn	#
.L901:
	.loc 1 4085 0
	movq	-8(%rbp), %rax	# insn, D.19154
	.loc 1 4086 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE114:
	.size	emit_insn, .-emit_insn
	.globl	emit_insns
	.type	emit_insns, @function
emit_insns:
.LFB115:
	.loc 1 4094 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$24, %rsp	#,
	movq	%rdi, -24(%rbp)	# insn, insn
	.loc 1 4095 0
	movq	$0, -16(%rbp)	#, last
	.loc 1 4097 0
	jmp	.L904	#
.L905:
.LBB49:
	.loc 1 4099 0
	movq	-24(%rbp), %rax	# insn, tmp61
	movq	24(%rax), %rax	# insn_1->fld[2].rtx, tmp62
	movq	%rax, -8(%rbp)	# tmp62, next
	.loc 1 4100 0
	movq	-24(%rbp), %rax	# insn, tmp63
	movq	%rax, %rdi	# tmp63,
	call	add_insn	#
	.loc 1 4101 0
	movq	-24(%rbp), %rax	# insn, tmp64
	movq	%rax, -16(%rbp)	# tmp64, last
	.loc 1 4102 0
	movq	-8(%rbp), %rax	# next, tmp65
	movq	%rax, -24(%rbp)	# tmp65, insn
.L904:
.LBE49:
	.loc 1 4097 0 discriminator 1
	cmpq	$0, -24(%rbp)	#, insn
	jne	.L905	#,
	.loc 1 4105 0
	movq	-16(%rbp), %rax	# last, D.19155
	.loc 1 4106 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE115:
	.size	emit_insns, .-emit_insns
	.globl	emit_insns_before
	.type	emit_insns_before, @function
emit_insns_before:
.LFB116:
	.loc 1 4115 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# insn, insn
	movq	%rsi, -32(%rbp)	# before, before
	.loc 1 4116 0
	movq	$0, -16(%rbp)	#, last
	.loc 1 4118 0
	jmp	.L908	#
.L909:
.LBB50:
	.loc 1 4120 0
	movq	-24(%rbp), %rax	# insn, tmp61
	movq	24(%rax), %rax	# insn_1->fld[2].rtx, tmp62
	movq	%rax, -8(%rbp)	# tmp62, next
	.loc 1 4121 0
	movq	-32(%rbp), %rdx	# before, tmp63
	movq	-24(%rbp), %rax	# insn, tmp64
	movq	%rdx, %rsi	# tmp63,
	movq	%rax, %rdi	# tmp64,
	call	add_insn_before	#
	.loc 1 4122 0
	movq	-24(%rbp), %rax	# insn, tmp65
	movq	%rax, -16(%rbp)	# tmp65, last
	.loc 1 4123 0
	movq	-8(%rbp), %rax	# next, tmp66
	movq	%rax, -24(%rbp)	# tmp66, insn
.L908:
.LBE50:
	.loc 1 4118 0 discriminator 1
	cmpq	$0, -24(%rbp)	#, insn
	jne	.L909	#,
	.loc 1 4126 0
	movq	-16(%rbp), %rax	# last, D.19156
	.loc 1 4127 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE116:
	.size	emit_insns_before, .-emit_insns_before
	.globl	emit_insns_after
	.type	emit_insns_after, @function
emit_insns_after:
.LFB117:
	.loc 1 4136 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# first, first
	movq	%rsi, -48(%rbp)	# after, after
	.loc 1 4141 0
	cmpq	$0, -48(%rbp)	#, after
	jne	.L912	#,
	.loc 1 4142 0
	movl	$__FUNCTION__.14226, %edx	#,
	movl	$4142, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L912:
	.loc 1 4144 0
	cmpq	$0, -40(%rbp)	#, first
	jne	.L913	#,
	.loc 1 4145 0
	movq	-48(%rbp), %rax	# after, D.19157
	jmp	.L914	#
.L913:
	.loc 1 4147 0
	movq	basic_block_for_insn(%rip), %rax	# basic_block_for_insn, basic_block_for_insn.352
	testq	%rax, %rax	# basic_block_for_insn.352
	je	.L915	#,
	.loc 1 4148 0
	movq	-48(%rbp), %rax	# after, tmp77
	movl	8(%rax), %eax	# after_5(D)->fld[0].rtint, D.19158
	movl	%eax, %edx	# D.19159, D.19160
	movq	basic_block_for_insn(%rip), %rax	# basic_block_for_insn, basic_block_for_insn.353
	movq	(%rax), %rax	# basic_block_for_insn.353_12->num_elements, D.19160
	cmpq	%rax, %rdx	# D.19160, D.19160
	jae	.L915	#,
	.loc 1 4149 0
	movq	basic_block_for_insn(%rip), %rax	# basic_block_for_insn, basic_block_for_insn.354
	movq	-48(%rbp), %rdx	# after, tmp78
	movl	8(%rdx), %edx	# after_5(D)->fld[0].rtint, D.19158
	movslq	%edx, %rdx	# D.19158, tmp79
	addq	$4, %rdx	#, tmp80
	movq	(%rax,%rdx,8), %rax	# basic_block_for_insn.354_14->data.bb, tmp81
	movq	%rax, -16(%rbp)	# tmp81, bb
	cmpq	$0, -16(%rbp)	#, bb
	je	.L915	#,
	.loc 1 4151 0
	movq	-40(%rbp), %rax	# first, tmp82
	movq	%rax, -24(%rbp)	# tmp82, last
	jmp	.L916	#
.L917:
	.loc 1 4152 0 discriminator 2
	movq	-16(%rbp), %rdx	# bb, tmp83
	movq	-24(%rbp), %rax	# last, tmp84
	movq	%rdx, %rsi	# tmp83,
	movq	%rax, %rdi	# tmp84,
	call	set_block_for_insn	#
	.loc 1 4151 0 discriminator 2
	movq	-24(%rbp), %rax	# last, tmp85
	movq	24(%rax), %rax	# last_1->fld[2].rtx, tmp86
	movq	%rax, -24(%rbp)	# tmp86, last
.L916:
	.loc 1 4151 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# last, tmp87
	movq	24(%rax), %rax	# last_1->fld[2].rtx, D.19161
	testq	%rax, %rax	# D.19161
	jne	.L917	#,
	.loc 1 4153 0 is_stmt 1
	movq	-16(%rbp), %rdx	# bb, tmp88
	movq	-24(%rbp), %rax	# last, tmp89
	movq	%rdx, %rsi	# tmp88,
	movq	%rax, %rdi	# tmp89,
	call	set_block_for_insn	#
	.loc 1 4154 0
	movq	-16(%rbp), %rax	# bb, tmp90
	movq	8(%rax), %rax	# bb_16->end, D.19161
	cmpq	-48(%rbp), %rax	# after, D.19161
	jne	.L918	#,
	.loc 1 4155 0
	movq	-16(%rbp), %rax	# bb, tmp91
	movq	-24(%rbp), %rdx	# last, tmp92
	movq	%rdx, 8(%rax)	# tmp92, bb_16->end
	.loc 1 4154 0
	jmp	.L919	#
.L918:
	.loc 1 4154 0 is_stmt 0 discriminator 1
	jmp	.L919	#
.L915:
	.loc 1 4158 0 is_stmt 1
	movq	-40(%rbp), %rax	# first, tmp93
	movq	%rax, -24(%rbp)	# tmp93, last
	jmp	.L920	#
.L921:
	movq	-24(%rbp), %rax	# last, tmp94
	movq	24(%rax), %rax	# last_2->fld[2].rtx, tmp95
	movq	%rax, -24(%rbp)	# tmp95, last
.L920:
	.loc 1 4158 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# last, tmp96
	movq	24(%rax), %rax	# last_2->fld[2].rtx, D.19161
	testq	%rax, %rax	# D.19161
	jne	.L921	#,
.L919:
	.loc 1 4161 0 is_stmt 1
	movq	-48(%rbp), %rax	# after, tmp97
	movq	24(%rax), %rax	# after_5(D)->fld[2].rtx, tmp98
	movq	%rax, -8(%rbp)	# tmp98, after_after
	.loc 1 4163 0
	movq	-48(%rbp), %rax	# after, tmp99
	movq	-40(%rbp), %rdx	# first, tmp100
	movq	%rdx, 24(%rax)	# tmp100, after_5(D)->fld[2].rtx
	.loc 1 4164 0
	movq	-40(%rbp), %rax	# first, tmp101
	movq	-48(%rbp), %rdx	# after, tmp102
	movq	%rdx, 16(%rax)	# tmp102, first_6(D)->fld[1].rtx
	.loc 1 4165 0
	movq	-24(%rbp), %rax	# last, tmp103
	movq	-8(%rbp), %rdx	# after_after, tmp104
	movq	%rdx, 24(%rax)	# tmp104, last_3->fld[2].rtx
	.loc 1 4166 0
	cmpq	$0, -8(%rbp)	#, after_after
	je	.L922	#,
	.loc 1 4167 0
	movq	-8(%rbp), %rax	# after_after, tmp105
	movq	-24(%rbp), %rdx	# last, tmp106
	movq	%rdx, 16(%rax)	# tmp106, after_after_24->fld[1].rtx
.L922:
	.loc 1 4169 0
	movq	cfun(%rip), %rax	# cfun, cfun.355
	movq	24(%rax), %rax	# cfun.355_25->emit, D.19162
	movq	16(%rax), %rax	# _26->x_last_insn, D.19161
	cmpq	-48(%rbp), %rax	# after, D.19161
	jne	.L923	#,
	.loc 1 4170 0
	movq	cfun(%rip), %rax	# cfun, cfun.356
	movq	24(%rax), %rax	# cfun.356_28->emit, D.19162
	movq	-24(%rbp), %rdx	# last, tmp107
	movq	%rdx, 16(%rax)	# tmp107, _29->x_last_insn
.L923:
	.loc 1 4171 0
	movq	-24(%rbp), %rax	# last, D.19157
.L914:
	.loc 1 4172 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE117:
	.size	emit_insns_after, .-emit_insns_after
	.globl	emit_jump_insn
	.type	emit_jump_insn, @function
emit_jump_insn:
.LFB118:
	.loc 1 4180 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# pattern, pattern
	.loc 1 4181 0
	movq	-24(%rbp), %rax	# pattern, tmp62
	movzwl	(%rax), %eax	# pattern_2(D)->code, D.19164
	cmpw	$24, %ax	#, D.19164
	jne	.L925	#,
	.loc 1 4182 0
	movq	-24(%rbp), %rax	# pattern, tmp63
	movq	%rax, %rdi	# tmp63,
	call	emit_insn	#
	jmp	.L926	#
.L925:
.LBB51:
	.loc 1 4185 0
	movq	-24(%rbp), %rax	# pattern, tmp64
	movq	%rax, %rdi	# tmp64,
	call	make_jump_insn_raw	#
	movq	%rax, -8(%rbp)	# tmp65, insn
	.loc 1 4186 0
	movq	-8(%rbp), %rax	# insn, tmp66
	movq	%rax, %rdi	# tmp66,
	call	add_insn	#
	.loc 1 4187 0
	movq	-8(%rbp), %rax	# insn, D.19163
.L926:
.LBE51:
	.loc 1 4189 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE118:
	.size	emit_jump_insn, .-emit_jump_insn
	.globl	emit_call_insn
	.type	emit_call_insn, @function
emit_call_insn:
.LFB119:
	.loc 1 4197 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# pattern, pattern
	.loc 1 4198 0
	movq	-24(%rbp), %rax	# pattern, tmp62
	movzwl	(%rax), %eax	# pattern_2(D)->code, D.19166
	cmpw	$24, %ax	#, D.19166
	jne	.L928	#,
	.loc 1 4199 0
	movq	-24(%rbp), %rax	# pattern, tmp63
	movq	%rax, %rdi	# tmp63,
	call	emit_insn	#
	jmp	.L929	#
.L928:
.LBB52:
	.loc 1 4202 0
	movq	-24(%rbp), %rax	# pattern, tmp64
	movq	%rax, %rdi	# tmp64,
	call	make_call_insn_raw	#
	movq	%rax, -8(%rbp)	# tmp65, insn
	.loc 1 4203 0
	movq	-8(%rbp), %rax	# insn, tmp66
	movq	%rax, %rdi	# tmp66,
	call	add_insn	#
	.loc 1 4204 0
	movq	-8(%rbp), %rax	# insn, tmp67
	movw	$34, (%rax)	#, insn_5->code
	.loc 1 4205 0
	movq	-8(%rbp), %rax	# insn, D.19165
.L929:
.LBE52:
	.loc 1 4207 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE119:
	.size	emit_call_insn, .-emit_call_insn
	.globl	emit_label
	.type	emit_label, @function
emit_label:
.LFB120:
	.loc 1 4214 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$8, %rsp	#,
	movq	%rdi, -8(%rbp)	# label, label
	.loc 1 4218 0
	movq	-8(%rbp), %rax	# label, tmp66
	movl	8(%rax), %eax	# label_1(D)->fld[0].rtint, D.19167
	testl	%eax, %eax	# D.19167
	jne	.L931	#,
	.loc 1 4220 0
	movq	cfun(%rip), %rax	# cfun, cfun.357
	movq	24(%rax), %rdx	# cfun.357_3->emit, D.19168
	movl	40(%rdx), %eax	# _4->x_cur_insn_uid, D.19167
	leal	1(%rax), %ecx	#, D.19167
	movl	%ecx, 40(%rdx)	# D.19167, _4->x_cur_insn_uid
	movq	-8(%rbp), %rdx	# label, tmp67
	movl	%eax, 8(%rdx)	# D.19167, label_1(D)->fld[0].rtint
	.loc 1 4221 0
	movq	-8(%rbp), %rax	# label, tmp68
	movq	%rax, %rdi	# tmp68,
	call	add_insn	#
.L931:
	.loc 1 4223 0
	movq	-8(%rbp), %rax	# label, D.19169
	.loc 1 4224 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE120:
	.size	emit_label, .-emit_label
	.globl	emit_barrier
	.type	emit_barrier, @function
emit_barrier:
.LFB121:
	.loc 1 4231 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	.loc 1 4232 0
	movl	$35, %edi	#,
	call	rtx_alloc	#
	movq	%rax, -8(%rbp)	# tmp65, barrier
	.loc 1 4233 0
	movq	cfun(%rip), %rax	# cfun, cfun.358
	movq	24(%rax), %rdx	# cfun.358_2->emit, D.19170
	movl	40(%rdx), %eax	# _3->x_cur_insn_uid, D.19171
	leal	1(%rax), %ecx	#, D.19171
	movl	%ecx, 40(%rdx)	# D.19171, _3->x_cur_insn_uid
	movq	-8(%rbp), %rdx	# barrier, tmp66
	movl	%eax, 8(%rdx)	# D.19171, barrier_1->fld[0].rtint
	.loc 1 4234 0
	movq	-8(%rbp), %rax	# barrier, tmp67
	movq	%rax, %rdi	# tmp67,
	call	add_insn	#
	.loc 1 4235 0
	movq	-8(%rbp), %rax	# barrier, D.19172
	.loc 1 4236 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE121:
	.size	emit_barrier, .-emit_barrier
	.globl	emit_line_note
	.type	emit_line_note, @function
emit_line_note:
.LFB122:
	.loc 1 4247 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# file, file
	movl	%esi, -12(%rbp)	# line, line
	.loc 1 4248 0
	movl	-12(%rbp), %edx	# line, tmp61
	movq	-8(%rbp), %rax	# file, tmp62
	movl	%edx, %esi	# tmp61,
	movq	%rax, %rdi	# tmp62,
	call	set_file_and_line_for_stmt	#
	.loc 1 4255 0
	movl	-12(%rbp), %edx	# line, tmp63
	movq	-8(%rbp), %rax	# file, tmp64
	movl	%edx, %esi	# tmp63,
	movq	%rax, %rdi	# tmp64,
	call	emit_note	#
	.loc 1 4256 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE122:
	.size	emit_line_note, .-emit_line_note
	.globl	emit_note
	.type	emit_note, @function
emit_note:
.LFB123:
	.loc 1 4267 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# file, file
	movl	%esi, -28(%rbp)	# line, line
	.loc 1 4270 0
	cmpl	$0, -28(%rbp)	#, line
	jle	.L938	#,
	.loc 1 4272 0
	cmpq	$0, -24(%rbp)	#, file
	je	.L939	#,
	.loc 1 4272 0 is_stmt 0 discriminator 1
	movq	cfun(%rip), %rax	# cfun, cfun.359
	movq	24(%rax), %rax	# cfun.359_4->emit, D.19175
	movq	48(%rax), %rax	# _5->x_last_filename, D.19176
	testq	%rax, %rax	# D.19176
	je	.L939	#,
	movq	cfun(%rip), %rax	# cfun, cfun.360
	movq	24(%rax), %rax	# cfun.360_7->emit, D.19175
	movq	48(%rax), %rdx	# _8->x_last_filename, D.19176
	movq	-24(%rbp), %rax	# file, tmp84
	movq	%rdx, %rsi	# D.19176,
	movq	%rax, %rdi	# tmp84,
	call	strcmp	#
	testl	%eax, %eax	# D.19177
	jne	.L939	#,
	.loc 1 4273 0 is_stmt 1
	movq	cfun(%rip), %rax	# cfun, cfun.361
	movq	24(%rax), %rax	# cfun.361_11->emit, D.19175
	movl	44(%rax), %eax	# _12->x_last_linenum, D.19177
	cmpl	-28(%rbp), %eax	# line, D.19177
	jne	.L939	#,
	.loc 1 4274 0
	movl	$0, %eax	#, D.19174
	jmp	.L940	#
.L939:
	.loc 1 4275 0
	movq	cfun(%rip), %rax	# cfun, cfun.362
	movq	24(%rax), %rax	# cfun.362_15->emit, D.19175
	movq	-24(%rbp), %rdx	# file, tmp85
	movq	%rdx, 48(%rax)	# tmp85, _16->x_last_filename
	.loc 1 4276 0
	movq	cfun(%rip), %rax	# cfun, cfun.363
	movq	24(%rax), %rax	# cfun.363_17->emit, D.19175
	movl	-28(%rbp), %edx	# line, tmp86
	movl	%edx, 44(%rax)	# tmp86, _18->x_last_linenum
.L938:
	.loc 1 4279 0
	movl	no_line_numbers(%rip), %eax	# no_line_numbers, no_line_numbers.364
	testl	%eax, %eax	# no_line_numbers.364
	je	.L941	#,
	.loc 1 4279 0 is_stmt 0 discriminator 1
	cmpl	$0, -28(%rbp)	#, line
	jle	.L941	#,
	.loc 1 4281 0 is_stmt 1
	movq	cfun(%rip), %rax	# cfun, cfun.365
	movq	24(%rax), %rax	# cfun.365_20->emit, D.19175
	movl	40(%rax), %edx	# _21->x_cur_insn_uid, D.19177
	addl	$1, %edx	#, D.19177
	movl	%edx, 40(%rax)	# D.19177, _21->x_cur_insn_uid
	.loc 1 4282 0
	movl	$0, %eax	#, D.19174
	jmp	.L940	#
.L941:
	.loc 1 4285 0
	movl	$37, %edi	#,
	call	rtx_alloc	#
	movq	%rax, -8(%rbp)	# tmp87, note
	.loc 1 4286 0
	movq	cfun(%rip), %rax	# cfun, cfun.366
	movq	24(%rax), %rdx	# cfun.366_26->emit, D.19175
	movl	40(%rdx), %eax	# _27->x_cur_insn_uid, D.19177
	leal	1(%rax), %ecx	#, D.19177
	movl	%ecx, 40(%rdx)	# D.19177, _27->x_cur_insn_uid
	movq	-8(%rbp), %rdx	# note, tmp88
	movl	%eax, 8(%rdx)	# D.19177, note_25->fld[0].rtint
	.loc 1 4287 0
	movq	-8(%rbp), %rax	# note, tmp89
	movq	-24(%rbp), %rdx	# file, tmp90
	movq	%rdx, 32(%rax)	# tmp90, note_25->fld[3].rtstr
	.loc 1 4288 0
	movq	-8(%rbp), %rax	# note, tmp91
	movl	-28(%rbp), %edx	# line, tmp92
	movl	%edx, 40(%rax)	# tmp92, note_25->fld[4].rtint
	.loc 1 4289 0
	movq	-8(%rbp), %rax	# note, tmp93
	movq	%rax, %rdi	# tmp93,
	call	add_insn	#
	.loc 1 4290 0
	movq	-8(%rbp), %rax	# note, D.19174
.L940:
	.loc 1 4291 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE123:
	.size	emit_note, .-emit_note
	.globl	emit_line_note_force
	.type	emit_line_note_force, @function
emit_line_note_force:
.LFB124:
	.loc 1 4299 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# file, file
	movl	%esi, -12(%rbp)	# line, line
	.loc 1 4300 0
	movq	cfun(%rip), %rax	# cfun, cfun.367
	movq	24(%rax), %rax	# cfun.367_1->emit, D.19178
	movl	$-1, 44(%rax)	#, _2->x_last_linenum
	.loc 1 4301 0
	movl	-12(%rbp), %edx	# line, tmp63
	movq	-8(%rbp), %rax	# file, tmp64
	movl	%edx, %esi	# tmp63,
	movq	%rax, %rdi	# tmp64,
	call	emit_line_note	#
	.loc 1 4302 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE124:
	.size	emit_line_note_force, .-emit_line_note_force
	.globl	force_next_line_note
	.type	force_next_line_note, @function
force_next_line_note:
.LFB125:
	.loc 1 4309 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 4310 0
	movq	cfun(%rip), %rax	# cfun, cfun.368
	movq	24(%rax), %rax	# cfun.368_1->emit, D.19180
	movl	$-1, 44(%rax)	#, _2->x_last_linenum
	.loc 1 4311 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE125:
	.size	force_next_line_note, .-force_next_line_note
	.globl	set_unique_reg_note
	.type	set_unique_reg_note, @function
set_unique_reg_note:
.LFB126:
	.loc 1 4321 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# insn, insn
	movl	%esi, -28(%rbp)	# kind, kind
	movq	%rdx, -40(%rbp)	# datum, datum
	.loc 1 4322 0
	movl	-28(%rbp), %ecx	# kind, tmp67
	movq	-24(%rbp), %rax	# insn, tmp68
	movl	$0, %edx	#,
	movl	%ecx, %esi	# tmp67,
	movq	%rax, %rdi	# tmp68,
	call	find_reg_note	#
	movq	%rax, -8(%rbp)	# tmp69, note
	.loc 1 4324 0
	movl	-28(%rbp), %eax	# kind, kind
	subl	$3, %eax	#, tmp71
	cmpl	$1, %eax	#, tmp71
	ja	.L954	#,
	.loc 1 4332 0
	movq	-24(%rbp), %rax	# insn, tmp72
	movq	32(%rax), %rax	# insn_2(D)->fld[3].rtx, D.19182
	movzwl	(%rax), %eax	# _5->code, D.19183
	cmpw	$39, %ax	#, D.19183
	jne	.L948	#,
	.loc 1 4332 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# insn, tmp73
	movq	%rax, %rdi	# tmp73,
	call	multiple_sets	#
	testl	%eax, %eax	# D.19184
	je	.L948	#,
	.loc 1 4334 0 is_stmt 1
	cmpq	$0, -8(%rbp)	#, note
	je	.L949	#,
	.loc 1 4335 0
	movl	$__FUNCTION__.14271, %edx	#,
	movl	$4335, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L949:
	.loc 1 4336 0
	movl	$0, %eax	#, D.19181
	jmp	.L950	#
.L948:
	.loc 1 4341 0
	movq	-40(%rbp), %rax	# datum, tmp74
	movzwl	(%rax), %eax	# datum_9(D)->code, D.19183
	cmpw	$41, %ax	#, D.19183
	jne	.L951	#,
	.loc 1 4342 0
	movl	$0, %eax	#, D.19181
	jmp	.L950	#
.L951:
	.loc 1 4343 0
	jmp	.L952	#
.L954:
	.loc 1 4346 0
	nop
.L952:
	.loc 1 4349 0
	cmpq	$0, -8(%rbp)	#, note
	je	.L953	#,
	.loc 1 4351 0
	movq	-8(%rbp), %rax	# note, tmp75
	movq	-40(%rbp), %rdx	# datum, tmp76
	movq	%rdx, 8(%rax)	# tmp76, note_4->fld[0].rtx
	.loc 1 4352 0
	movq	-8(%rbp), %rax	# note, D.19181
	jmp	.L950	#
.L953:
	.loc 1 4355 0
	movq	-24(%rbp), %rax	# insn, tmp77
	movq	56(%rax), %rcx	# insn_2(D)->fld[6].rtx, D.19182
	movq	-40(%rbp), %rdx	# datum, tmp78
	movl	-28(%rbp), %eax	# kind, tmp79
	movl	%eax, %esi	# tmp79,
	movl	$3, %edi	#,
	call	gen_rtx_fmt_ee	#
	movq	-24(%rbp), %rdx	# insn, tmp80
	movq	%rax, 56(%rdx)	# D.19182, insn_2(D)->fld[6].rtx
	.loc 1 4356 0
	movq	-24(%rbp), %rax	# insn, tmp81
	movq	56(%rax), %rax	# insn_2(D)->fld[6].rtx, D.19181
.L950:
	.loc 1 4357 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE126:
	.size	set_unique_reg_note, .-set_unique_reg_note
	.globl	classify_insn
	.type	classify_insn, @function
classify_insn:
.LFB127:
	.loc 1 4365 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# x, x
	.loc 1 4366 0
	movq	-24(%rbp), %rax	# x, tmp89
	movzwl	(%rax), %eax	# x_3(D)->code, D.19186
	cmpw	$36, %ax	#, D.19186
	jne	.L956	#,
	.loc 1 4367 0
	movl	$36, %eax	#, D.19185
	jmp	.L957	#
.L956:
	.loc 1 4368 0
	movq	-24(%rbp), %rax	# x, tmp90
	movzwl	(%rax), %eax	# x_3(D)->code, D.19186
	cmpw	$50, %ax	#, D.19186
	jne	.L958	#,
	.loc 1 4369 0
	movl	$34, %eax	#, D.19185
	jmp	.L957	#
.L958:
	.loc 1 4370 0
	movq	-24(%rbp), %rax	# x, tmp91
	movzwl	(%rax), %eax	# x_3(D)->code, D.19186
	cmpw	$51, %ax	#, D.19186
	jne	.L959	#,
	.loc 1 4371 0
	movl	$33, %eax	#, D.19185
	jmp	.L957	#
.L959:
	.loc 1 4372 0
	movq	-24(%rbp), %rax	# x, tmp92
	movzwl	(%rax), %eax	# x_3(D)->code, D.19186
	cmpw	$47, %ax	#, D.19186
	jne	.L960	#,
	.loc 1 4374 0
	movq	-24(%rbp), %rax	# x, tmp93
	movq	8(%rax), %rdx	# x_3(D)->fld[0].rtx, D.19187
	movq	global_rtl(%rip), %rax	# global_rtl, D.19187
	cmpq	%rax, %rdx	# D.19187, D.19187
	jne	.L961	#,
	.loc 1 4375 0
	movl	$33, %eax	#, D.19185
	jmp	.L957	#
.L961:
	.loc 1 4376 0
	movq	-24(%rbp), %rax	# x, tmp94
	movq	16(%rax), %rax	# x_3(D)->fld[1].rtx, D.19187
	movzwl	(%rax), %eax	# _14->code, D.19186
	cmpw	$50, %ax	#, D.19186
	jne	.L962	#,
	.loc 1 4377 0
	movl	$34, %eax	#, D.19185
	jmp	.L957	#
.L962:
	.loc 1 4379 0
	movl	$32, %eax	#, D.19185
	jmp	.L957	#
.L960:
	.loc 1 4381 0
	movq	-24(%rbp), %rax	# x, tmp95
	movzwl	(%rax), %eax	# x_3(D)->code, D.19186
	cmpw	$39, %ax	#, D.19186
	jne	.L963	#,
.LBB53:
	.loc 1 4384 0
	movq	-24(%rbp), %rax	# x, tmp96
	movq	8(%rax), %rax	# x_3(D)->fld[0].rtvec, D.19188
	movl	(%rax), %eax	# _19->num_elem, D.19189
	subl	$1, %eax	#, tmp97
	movl	%eax, -4(%rbp)	# tmp97, j
	jmp	.L964	#
.L968:
	.loc 1 4385 0
	movq	-24(%rbp), %rax	# x, tmp98
	movq	8(%rax), %rax	# x_3(D)->fld[0].rtvec, D.19188
	movl	-4(%rbp), %edx	# j, tmp100
	movslq	%edx, %rdx	# tmp100, tmp99
	movq	8(%rax,%rdx,8), %rax	# _22->elem, D.19187
	movzwl	(%rax), %eax	# _23->code, D.19186
	cmpw	$50, %ax	#, D.19186
	jne	.L965	#,
	.loc 1 4386 0
	movl	$34, %eax	#, D.19185
	jmp	.L957	#
.L965:
	.loc 1 4387 0
	movq	-24(%rbp), %rax	# x, tmp101
	movq	8(%rax), %rax	# x_3(D)->fld[0].rtvec, D.19188
	movl	-4(%rbp), %edx	# j, tmp103
	movslq	%edx, %rdx	# tmp103, tmp102
	movq	8(%rax,%rdx,8), %rax	# _26->elem, D.19187
	movzwl	(%rax), %eax	# _27->code, D.19186
	cmpw	$47, %ax	#, D.19186
	jne	.L966	#,
	.loc 1 4388 0
	movq	-24(%rbp), %rax	# x, tmp104
	movq	8(%rax), %rax	# x_3(D)->fld[0].rtvec, D.19188
	movl	-4(%rbp), %edx	# j, tmp106
	movslq	%edx, %rdx	# tmp106, tmp105
	movq	8(%rax,%rdx,8), %rax	# _29->elem, D.19187
	movq	8(%rax), %rdx	# _30->fld[0].rtx, D.19187
	movq	global_rtl(%rip), %rax	# global_rtl, D.19187
	cmpq	%rax, %rdx	# D.19187, D.19187
	jne	.L966	#,
	.loc 1 4389 0
	movl	$33, %eax	#, D.19185
	jmp	.L957	#
.L966:
	.loc 1 4390 0
	movq	-24(%rbp), %rax	# x, tmp107
	movq	8(%rax), %rax	# x_3(D)->fld[0].rtvec, D.19188
	movl	-4(%rbp), %edx	# j, tmp109
	movslq	%edx, %rdx	# tmp109, tmp108
	movq	8(%rax,%rdx,8), %rax	# _34->elem, D.19187
	movzwl	(%rax), %eax	# _35->code, D.19186
	cmpw	$47, %ax	#, D.19186
	jne	.L967	#,
	.loc 1 4391 0
	movq	-24(%rbp), %rax	# x, tmp110
	movq	8(%rax), %rax	# x_3(D)->fld[0].rtvec, D.19188
	movl	-4(%rbp), %edx	# j, tmp112
	movslq	%edx, %rdx	# tmp112, tmp111
	movq	8(%rax,%rdx,8), %rax	# _37->elem, D.19187
	movq	16(%rax), %rax	# _38->fld[1].rtx, D.19187
	movzwl	(%rax), %eax	# _39->code, D.19186
	cmpw	$50, %ax	#, D.19186
	jne	.L967	#,
	.loc 1 4392 0
	movl	$34, %eax	#, D.19185
	jmp	.L957	#
.L967:
	.loc 1 4384 0
	subl	$1, -4(%rbp)	#, j
.L964:
	.loc 1 4384 0 is_stmt 0 discriminator 1
	cmpl	$0, -4(%rbp)	#, j
	jns	.L968	#,
.L963:
.LBE53:
	.loc 1 4394 0 is_stmt 1
	movl	$32, %eax	#, D.19185
.L957:
	.loc 1 4395 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE127:
	.size	classify_insn, .-classify_insn
	.globl	emit
	.type	emit, @function
emit:
.LFB128:
	.loc 1 4403 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# x, x
	.loc 1 4404 0
	movq	-24(%rbp), %rax	# x, tmp63
	movq	%rax, %rdi	# tmp63,
	call	classify_insn	#
	movl	%eax, -12(%rbp)	# tmp64, code
	.loc 1 4406 0
	cmpl	$36, -12(%rbp)	#, code
	jne	.L970	#,
	.loc 1 4407 0
	movq	-24(%rbp), %rax	# x, tmp65
	movq	%rax, %rdi	# tmp65,
	call	emit_label	#
	jmp	.L971	#
.L970:
	.loc 1 4408 0
	cmpl	$32, -12(%rbp)	#, code
	jne	.L972	#,
	.loc 1 4409 0
	movq	-24(%rbp), %rax	# x, tmp66
	movq	%rax, %rdi	# tmp66,
	call	emit_insn	#
	jmp	.L971	#
.L972:
	.loc 1 4410 0
	cmpl	$33, -12(%rbp)	#, code
	jne	.L973	#,
.LBB54:
	.loc 1 4412 0
	movq	-24(%rbp), %rax	# x, tmp67
	movq	%rax, %rdi	# tmp67,
	call	emit_jump_insn	#
	movq	%rax, -8(%rbp)	# tmp68, insn
	.loc 1 4413 0
	movq	-8(%rbp), %rax	# insn, tmp69
	movq	%rax, %rdi	# tmp69,
	call	any_uncondjump_p	#
	testl	%eax, %eax	# D.19191
	jne	.L974	#,
	.loc 1 4413 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# x, tmp70
	movzwl	(%rax), %eax	# x_2(D)->code, D.19192
	cmpw	$51, %ax	#, D.19192
	jne	.L975	#,
.L974:
	.loc 1 4414 0 is_stmt 1
	call	emit_barrier	#
	jmp	.L971	#
.L975:
	.loc 1 4415 0
	movq	-8(%rbp), %rax	# insn, D.19190
	jmp	.L971	#
.L973:
.LBE54:
	.loc 1 4417 0
	cmpl	$34, -12(%rbp)	#, code
	jne	.L976	#,
	.loc 1 4418 0
	movq	-24(%rbp), %rax	# x, tmp71
	movq	%rax, %rdi	# tmp71,
	call	emit_call_insn	#
	jmp	.L971	#
.L976:
	.loc 1 4420 0
	movl	$__FUNCTION__.14286, %edx	#,
	movl	$4420, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L971:
	.loc 1 4421 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE128:
	.size	emit, .-emit
	.globl	start_sequence
	.type	start_sequence, @function
start_sequence:
.LFB129:
	.loc 1 4433 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	.loc 1 4436 0
	movl	$32, %edi	#,
	call	xmalloc	#
	movq	%rax, -8(%rbp)	# tmp77, tem
	.loc 1 4438 0
	movq	cfun(%rip), %rax	# cfun, cfun.369
	movq	24(%rax), %rax	# cfun.369_2->emit, D.19193
	movq	32(%rax), %rdx	# _3->sequence_stack, D.19194
	movq	-8(%rbp), %rax	# tem, tmp78
	movq	%rdx, 24(%rax)	# D.19194, tem_1->next
	.loc 1 4439 0
	movq	cfun(%rip), %rax	# cfun, cfun.370
	movq	24(%rax), %rax	# cfun.370_5->emit, D.19193
	movq	8(%rax), %rdx	# _6->x_first_insn, D.19195
	movq	-8(%rbp), %rax	# tem, tmp79
	movq	%rdx, (%rax)	# D.19195, tem_1->first
	.loc 1 4440 0
	movq	cfun(%rip), %rax	# cfun, cfun.371
	movq	24(%rax), %rax	# cfun.371_8->emit, D.19193
	movq	16(%rax), %rdx	# _9->x_last_insn, D.19195
	movq	-8(%rbp), %rax	# tem, tmp80
	movq	%rdx, 8(%rax)	# D.19195, tem_1->last
	.loc 1 4441 0
	movq	cfun(%rip), %rax	# cfun, cfun.372
	movq	24(%rax), %rax	# cfun.372_11->emit, D.19193
	movq	24(%rax), %rdx	# _12->sequence_rtl_expr, D.19196
	movq	-8(%rbp), %rax	# tem, tmp81
	movq	%rdx, 16(%rax)	# D.19196, tem_1->sequence_rtl_expr
	.loc 1 4443 0
	movq	cfun(%rip), %rax	# cfun, cfun.373
	movq	24(%rax), %rax	# cfun.373_14->emit, D.19193
	movq	-8(%rbp), %rdx	# tem, tmp82
	movq	%rdx, 32(%rax)	# tmp82, _15->sequence_stack
	.loc 1 4445 0
	movq	cfun(%rip), %rax	# cfun, cfun.374
	movq	24(%rax), %rax	# cfun.374_16->emit, D.19193
	movq	$0, 8(%rax)	#, _17->x_first_insn
	.loc 1 4446 0
	movq	cfun(%rip), %rax	# cfun, cfun.375
	movq	24(%rax), %rax	# cfun.375_18->emit, D.19193
	movq	$0, 16(%rax)	#, _19->x_last_insn
	.loc 1 4447 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE129:
	.size	start_sequence, .-start_sequence
	.globl	start_sequence_for_rtl_expr
	.type	start_sequence_for_rtl_expr, @function
start_sequence_for_rtl_expr:
.LFB130:
	.loc 1 4456 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# t, t
	.loc 1 4457 0
	call	start_sequence	#
	.loc 1 4459 0
	movq	cfun(%rip), %rax	# cfun, cfun.376
	movq	24(%rax), %rax	# cfun.376_1->emit, D.19197
	movq	-8(%rbp), %rdx	# t, tmp61
	movq	%rdx, 24(%rax)	# tmp61, _2->sequence_rtl_expr
	.loc 1 4460 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE130:
	.size	start_sequence_for_rtl_expr, .-start_sequence_for_rtl_expr
	.globl	push_to_sequence
	.type	push_to_sequence, @function
push_to_sequence:
.LFB131:
	.loc 1 4469 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# first, first
	.loc 1 4472 0
	call	start_sequence	#
	.loc 1 4474 0
	movq	-24(%rbp), %rax	# first, tmp64
	movq	%rax, -8(%rbp)	# tmp64, last
	jmp	.L980	#
.L982:
	.loc 1 4474 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# last, tmp65
	movq	24(%rax), %rax	# last_1->fld[2].rtx, tmp66
	movq	%rax, -8(%rbp)	# tmp66, last
.L980:
	cmpq	$0, -8(%rbp)	#, last
	je	.L981	#,
	.loc 1 4474 0 discriminator 2
	movq	-8(%rbp), %rax	# last, tmp67
	movq	24(%rax), %rax	# last_1->fld[2].rtx, D.19198
	testq	%rax, %rax	# D.19198
	jne	.L982	#,
.L981:
	.loc 1 4476 0 is_stmt 1
	movq	cfun(%rip), %rax	# cfun, cfun.377
	movq	24(%rax), %rax	# cfun.377_6->emit, D.19199
	movq	-24(%rbp), %rdx	# first, tmp68
	movq	%rdx, 8(%rax)	# tmp68, _7->x_first_insn
	.loc 1 4477 0
	movq	cfun(%rip), %rax	# cfun, cfun.378
	movq	24(%rax), %rax	# cfun.378_8->emit, D.19199
	movq	-8(%rbp), %rdx	# last, tmp69
	movq	%rdx, 16(%rax)	# tmp69, _9->x_last_insn
	.loc 1 4478 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE131:
	.size	push_to_sequence, .-push_to_sequence
	.globl	push_to_full_sequence
	.type	push_to_full_sequence, @function
push_to_full_sequence:
.LFB132:
	.loc 1 4485 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# first, first
	movq	%rsi, -16(%rbp)	# last, last
	.loc 1 4486 0
	call	start_sequence	#
	.loc 1 4487 0
	movq	cfun(%rip), %rax	# cfun, cfun.379
	movq	24(%rax), %rax	# cfun.379_1->emit, D.19200
	movq	-8(%rbp), %rdx	# first, tmp64
	movq	%rdx, 8(%rax)	# tmp64, _2->x_first_insn
	.loc 1 4488 0
	movq	cfun(%rip), %rax	# cfun, cfun.380
	movq	24(%rax), %rax	# cfun.380_4->emit, D.19200
	movq	-16(%rbp), %rdx	# last, tmp65
	movq	%rdx, 16(%rax)	# tmp65, _5->x_last_insn
	.loc 1 4490 0
	cmpq	$0, -16(%rbp)	#, last
	je	.L983	#,
	.loc 1 4490 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# last, tmp66
	movq	24(%rax), %rax	# last_6(D)->fld[2].rtx, D.19201
	testq	%rax, %rax	# D.19201
	je	.L983	#,
	.loc 1 4491 0 is_stmt 1
	movl	$__FUNCTION__.14304, %edx	#,
	movl	$4491, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L983:
	.loc 1 4492 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE132:
	.size	push_to_full_sequence, .-push_to_full_sequence
	.globl	push_topmost_sequence
	.type	push_topmost_sequence, @function
push_topmost_sequence:
.LFB133:
	.loc 1 4499 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	.loc 1 4500 0
	movq	$0, -8(%rbp)	#, top
	.loc 1 4502 0
	call	start_sequence	#
	.loc 1 4504 0
	movq	cfun(%rip), %rax	# cfun, cfun.381
	movq	24(%rax), %rax	# cfun.381_4->emit, D.19202
	movq	32(%rax), %rax	# _5->sequence_stack, tmp70
	movq	%rax, -16(%rbp)	# tmp70, stack
	jmp	.L986	#
.L987:
	.loc 1 4505 0 discriminator 2
	movq	-16(%rbp), %rax	# stack, tmp71
	movq	%rax, -8(%rbp)	# tmp71, top
	.loc 1 4504 0 discriminator 2
	movq	-16(%rbp), %rax	# stack, tmp72
	movq	24(%rax), %rax	# stack_1->next, tmp73
	movq	%rax, -16(%rbp)	# tmp73, stack
.L986:
	.loc 1 4504 0 is_stmt 0 discriminator 1
	cmpq	$0, -16(%rbp)	#, stack
	jne	.L987	#,
	.loc 1 4507 0 is_stmt 1
	movq	cfun(%rip), %rax	# cfun, cfun.382
	movq	24(%rax), %rax	# cfun.382_9->emit, D.19202
	movq	-8(%rbp), %rdx	# top, tmp74
	movq	(%rdx), %rdx	# top_2->first, D.19203
	movq	%rdx, 8(%rax)	# D.19203, _10->x_first_insn
	.loc 1 4508 0
	movq	cfun(%rip), %rax	# cfun, cfun.383
	movq	24(%rax), %rax	# cfun.383_12->emit, D.19202
	movq	-8(%rbp), %rdx	# top, tmp75
	movq	8(%rdx), %rdx	# top_2->last, D.19203
	movq	%rdx, 16(%rax)	# D.19203, _13->x_last_insn
	.loc 1 4509 0
	movq	cfun(%rip), %rax	# cfun, cfun.384
	movq	24(%rax), %rax	# cfun.384_15->emit, D.19202
	movq	-8(%rbp), %rdx	# top, tmp76
	movq	16(%rdx), %rdx	# top_2->sequence_rtl_expr, D.19204
	movq	%rdx, 24(%rax)	# D.19204, _16->sequence_rtl_expr
	.loc 1 4510 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE133:
	.size	push_topmost_sequence, .-push_topmost_sequence
	.globl	pop_topmost_sequence
	.type	pop_topmost_sequence, @function
pop_topmost_sequence:
.LFB134:
	.loc 1 4517 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	.loc 1 4518 0
	movq	$0, -8(%rbp)	#, top
	.loc 1 4520 0
	movq	cfun(%rip), %rax	# cfun, cfun.385
	movq	24(%rax), %rax	# cfun.385_4->emit, D.19205
	movq	32(%rax), %rax	# _5->sequence_stack, tmp67
	movq	%rax, -16(%rbp)	# tmp67, stack
	jmp	.L989	#
.L990:
	.loc 1 4521 0 discriminator 2
	movq	-16(%rbp), %rax	# stack, tmp68
	movq	%rax, -8(%rbp)	# tmp68, top
	.loc 1 4520 0 discriminator 2
	movq	-16(%rbp), %rax	# stack, tmp69
	movq	24(%rax), %rax	# stack_1->next, tmp70
	movq	%rax, -16(%rbp)	# tmp70, stack
.L989:
	.loc 1 4520 0 is_stmt 0 discriminator 1
	cmpq	$0, -16(%rbp)	#, stack
	jne	.L990	#,
	.loc 1 4523 0 is_stmt 1
	movq	cfun(%rip), %rax	# cfun, cfun.386
	movq	24(%rax), %rax	# cfun.386_9->emit, D.19205
	movq	8(%rax), %rdx	# _10->x_first_insn, D.19206
	movq	-8(%rbp), %rax	# top, tmp71
	movq	%rdx, (%rax)	# D.19206, top_2->first
	.loc 1 4524 0
	movq	cfun(%rip), %rax	# cfun, cfun.387
	movq	24(%rax), %rax	# cfun.387_12->emit, D.19205
	movq	16(%rax), %rdx	# _13->x_last_insn, D.19206
	movq	-8(%rbp), %rax	# top, tmp72
	movq	%rdx, 8(%rax)	# D.19206, top_2->last
	.loc 1 4527 0
	call	end_sequence	#
	.loc 1 4528 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE134:
	.size	pop_topmost_sequence, .-pop_topmost_sequence
	.globl	end_sequence
	.type	end_sequence, @function
end_sequence:
.LFB135:
	.loc 1 4545 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	.loc 1 4546 0
	movq	cfun(%rip), %rax	# cfun, cfun.388
	movq	24(%rax), %rax	# cfun.388_1->emit, D.19207
	movq	32(%rax), %rax	# _2->sequence_stack, tmp73
	movq	%rax, -8(%rbp)	# tmp73, tem
	.loc 1 4548 0
	movq	cfun(%rip), %rax	# cfun, cfun.389
	movq	24(%rax), %rax	# cfun.389_4->emit, D.19207
	movq	-8(%rbp), %rdx	# tem, tmp74
	movq	(%rdx), %rdx	# tem_3->first, D.19208
	movq	%rdx, 8(%rax)	# D.19208, _5->x_first_insn
	.loc 1 4549 0
	movq	cfun(%rip), %rax	# cfun, cfun.390
	movq	24(%rax), %rax	# cfun.390_7->emit, D.19207
	movq	-8(%rbp), %rdx	# tem, tmp75
	movq	8(%rdx), %rdx	# tem_3->last, D.19208
	movq	%rdx, 16(%rax)	# D.19208, _8->x_last_insn
	.loc 1 4550 0
	movq	cfun(%rip), %rax	# cfun, cfun.391
	movq	24(%rax), %rax	# cfun.391_10->emit, D.19207
	movq	-8(%rbp), %rdx	# tem, tmp76
	movq	16(%rdx), %rdx	# tem_3->sequence_rtl_expr, D.19209
	movq	%rdx, 24(%rax)	# D.19209, _11->sequence_rtl_expr
	.loc 1 4551 0
	movq	cfun(%rip), %rax	# cfun, cfun.392
	movq	24(%rax), %rax	# cfun.392_13->emit, D.19207
	movq	-8(%rbp), %rdx	# tem, tmp77
	movq	24(%rdx), %rdx	# tem_3->next, D.19210
	movq	%rdx, 32(%rax)	# D.19210, _14->sequence_stack
	.loc 1 4553 0
	movq	-8(%rbp), %rax	# tem, tmp78
	movq	%rax, %rdi	# tmp78,
	call	free	#
	.loc 1 4554 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE135:
	.size	end_sequence, .-end_sequence
	.globl	end_full_sequence
	.type	end_full_sequence, @function
end_full_sequence:
.LFB136:
	.loc 1 4562 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# first, first
	movq	%rsi, -16(%rbp)	# last, last
	.loc 1 4563 0
	movq	cfun(%rip), %rax	# cfun, cfun.393
	movq	24(%rax), %rax	# cfun.393_1->emit, D.19211
	movq	8(%rax), %rdx	# _2->x_first_insn, D.19212
	movq	-8(%rbp), %rax	# first, tmp65
	movq	%rdx, (%rax)	# D.19212, *first_4(D)
	.loc 1 4564 0
	movq	cfun(%rip), %rax	# cfun, cfun.394
	movq	24(%rax), %rax	# cfun.394_5->emit, D.19211
	movq	16(%rax), %rdx	# _6->x_last_insn, D.19212
	movq	-16(%rbp), %rax	# last, tmp66
	movq	%rdx, (%rax)	# D.19212, *last_8(D)
	.loc 1 4565 0
	call	end_sequence	#
	.loc 1 4566 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE136:
	.size	end_full_sequence, .-end_full_sequence
	.globl	in_sequence_p
	.type	in_sequence_p, @function
in_sequence_p:
.LFB137:
	.loc 1 4572 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 4573 0
	movq	cfun(%rip), %rax	# cfun, cfun.395
	movq	24(%rax), %rax	# cfun.395_1->emit, D.19213
	movq	32(%rax), %rax	# _2->sequence_stack, D.19214
	testq	%rax, %rax	# D.19214
	setne	%al	#, D.19215
	movzbl	%al, %eax	# D.19215, D.19216
	.loc 1 4574 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE137:
	.size	in_sequence_p, .-in_sequence_p
	.globl	gen_sequence
	.type	gen_sequence, @function
gen_sequence:
.LFB138:
	.loc 1 4584 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	.loc 1 4591 0
	movl	$0, -20(%rbp)	#, len
	.loc 1 4592 0
	movq	cfun(%rip), %rax	# cfun, cfun.396
	movq	24(%rax), %rax	# cfun.396_7->emit, D.19218
	movq	8(%rax), %rax	# _8->x_first_insn, tmp83
	movq	%rax, -16(%rbp)	# tmp83, tem
	jmp	.L996	#
.L997:
	.loc 1 4593 0 discriminator 2
	addl	$1, -20(%rbp)	#, len
	.loc 1 4592 0 discriminator 2
	movq	-16(%rbp), %rax	# tem, tmp84
	movq	24(%rax), %rax	# tem_1->fld[2].rtx, tmp85
	movq	%rax, -16(%rbp)	# tmp85, tem
.L996:
	.loc 1 4592 0 is_stmt 0 discriminator 1
	cmpq	$0, -16(%rbp)	#, tem
	jne	.L997	#,
	.loc 1 4600 0 is_stmt 1
	cmpl	$1, -20(%rbp)	#, len
	jne	.L998	#,
	.loc 1 4601 0
	movq	cfun(%rip), %rax	# cfun, cfun.397
	movq	24(%rax), %rax	# cfun.397_12->emit, D.19218
	movq	8(%rax), %rax	# _13->x_first_insn, D.19219
	movzbl	3(%rax), %eax	# *_14, D.19220
	andl	$-128, %eax	#, D.19220
	testb	%al, %al	# D.19220
	jne	.L998	#,
	.loc 1 4602 0
	movq	cfun(%rip), %rax	# cfun, cfun.398
	movq	24(%rax), %rax	# cfun.398_17->emit, D.19218
	movq	8(%rax), %rax	# _18->x_first_insn, D.19219
	movzwl	(%rax), %eax	# _19->code, D.19221
	cmpw	$32, %ax	#, D.19221
	jne	.L998	#,
	.loc 1 4604 0
	movq	cfun(%rip), %rax	# cfun, cfun.399
	movq	24(%rax), %rax	# cfun.399_21->emit, D.19218
	movq	8(%rax), %rax	# _22->x_first_insn, D.19219
	movq	56(%rax), %rax	# _23->fld[6].rtx, D.19219
	testq	%rax, %rax	# D.19219
	jne	.L998	#,
	.loc 1 4605 0
	movq	cfun(%rip), %rax	# cfun, cfun.400
	movq	24(%rax), %rax	# cfun.400_25->emit, D.19218
	movq	8(%rax), %rax	# _26->x_first_insn, D.19219
	movq	32(%rax), %rax	# _27->fld[3].rtx, D.19217
	jmp	.L999	#
.L998:
	.loc 1 4607 0
	movl	-20(%rbp), %eax	# len, tmp86
	movl	%eax, %edi	# tmp86,
	call	rtvec_alloc	#
	movq	%rax, %rdx	# D.19222,
	movl	$0, %esi	#,
	movl	$24, %edi	#,
	call	gen_rtx_fmt_E	#
	movq	%rax, -8(%rbp)	# tmp87, result
	.loc 1 4609 0
	movl	$0, -24(%rbp)	#, i
	movq	cfun(%rip), %rax	# cfun, cfun.401
	movq	24(%rax), %rax	# cfun.401_32->emit, D.19218
	movq	8(%rax), %rax	# _33->x_first_insn, tmp88
	movq	%rax, -16(%rbp)	# tmp88, tem
	jmp	.L1000	#
.L1001:
	.loc 1 4610 0 discriminator 2
	movq	-8(%rbp), %rax	# result, tmp89
	movq	8(%rax), %rax	# result_30->fld[0].rtvec, D.19222
	movl	-24(%rbp), %edx	# i, tmp91
	movslq	%edx, %rdx	# tmp91, tmp90
	movq	-16(%rbp), %rcx	# tem, tmp92
	movq	%rcx, 8(%rax,%rdx,8)	# tmp92, _35->elem
	.loc 1 4609 0 discriminator 2
	movq	-16(%rbp), %rax	# tem, tmp93
	movq	24(%rax), %rax	# tem_2->fld[2].rtx, tmp94
	movq	%rax, -16(%rbp)	# tmp94, tem
	addl	$1, -24(%rbp)	#, i
.L1000:
	.loc 1 4609 0 is_stmt 0 discriminator 1
	cmpq	$0, -16(%rbp)	#, tem
	jne	.L1001	#,
	.loc 1 4612 0 is_stmt 1
	movq	-8(%rbp), %rax	# result, D.19217
.L999:
	.loc 1 4613 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE138:
	.size	gen_sequence, .-gen_sequence
	.globl	init_virtual_regs
	.type	init_virtual_regs, @function
init_virtual_regs:
.LFB139:
	.loc 1 4620 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# es, es
	.loc 1 4621 0
	movq	-24(%rbp), %rax	# es, tmp69
	movq	80(%rax), %rax	# es_1(D)->x_regno_reg_rtx, tmp70
	movq	%rax, -8(%rbp)	# tmp70, ptr
	.loc 1 4622 0
	movq	-8(%rbp), %rax	# ptr, tmp71
	leaq	424(%rax), %rdx	#, D.19223
	movq	global_rtl+48(%rip), %rax	# global_rtl, D.19224
	movq	%rax, (%rdx)	# D.19224, *_3
	.loc 1 4623 0
	movq	-8(%rbp), %rax	# ptr, tmp72
	leaq	432(%rax), %rdx	#, D.19223
	movq	global_rtl+56(%rip), %rax	# global_rtl, D.19224
	movq	%rax, (%rdx)	# D.19224, *_5
	.loc 1 4624 0
	movq	-8(%rbp), %rax	# ptr, tmp73
	leaq	440(%rax), %rdx	#, D.19223
	movq	global_rtl+64(%rip), %rax	# global_rtl, D.19224
	movq	%rax, (%rdx)	# D.19224, *_7
	.loc 1 4625 0
	movq	-8(%rbp), %rax	# ptr, tmp74
	leaq	448(%rax), %rdx	#, D.19223
	movq	global_rtl+72(%rip), %rax	# global_rtl, D.19224
	movq	%rax, (%rdx)	# D.19224, *_9
	.loc 1 4626 0
	movq	-8(%rbp), %rax	# ptr, tmp75
	leaq	456(%rax), %rdx	#, D.19223
	movq	global_rtl+80(%rip), %rax	# global_rtl, D.19224
	movq	%rax, (%rdx)	# D.19224, *_11
	.loc 1 4627 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE139:
	.size	init_virtual_regs, .-init_virtual_regs
	.globl	clear_emit_caches
	.type	clear_emit_caches, @function
clear_emit_caches:
.LFB140:
	.loc 1 4631 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 4635 0
	movl	$0, -4(%rbp)	#, i
	jmp	.L1004	#
.L1005:
	.loc 1 4636 0 discriminator 2
	movl	-4(%rbp), %eax	# i, tmp60
	cltq
	movq	$0, sequence_result(,%rax,8)	#, sequence_result
	.loc 1 4635 0 discriminator 2
	addl	$1, -4(%rbp)	#, i
.L1004:
	.loc 1 4635 0 is_stmt 0 discriminator 1
	cmpl	$4, -4(%rbp)	#, i
	jle	.L1005	#,
	.loc 1 4637 0 is_stmt 1
	movq	$0, free_insn(%rip)	#, free_insn
	.loc 1 4638 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE140:
	.size	clear_emit_caches, .-clear_emit_caches
	.local	copy_insn_scratch_in
	.comm	copy_insn_scratch_in,240,32
	.local	copy_insn_scratch_out
	.comm	copy_insn_scratch_out,240,32
	.local	copy_insn_n_scratches
	.comm	copy_insn_n_scratches,4,4
	.local	orig_asm_operands_vector
	.comm	orig_asm_operands_vector,8,8
	.local	copy_asm_operands_vector
	.comm	copy_asm_operands_vector,8,8
	.local	orig_asm_constraints_vector
	.comm	orig_asm_constraints_vector,8,8
	.local	copy_asm_constraints_vector
	.comm	copy_asm_constraints_vector,8,8
	.globl	copy_insn_1
	.type	copy_insn_1, @function
copy_insn_1:
.LFB141:
	.loc 1 4670 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$56, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)	# orig, orig
	.loc 1 4676 0
	movq	-56(%rbp), %rax	# orig, tmp109
	movzwl	(%rax), %eax	# orig_6(D)->code, D.19226
	movzwl	%ax, %eax	# D.19226, tmp110
	movl	%eax, -36(%rbp)	# tmp110, code
	.loc 1 4678 0
	movl	-36(%rbp), %eax	# code, tmp112
	subl	$36, %eax	#, tmp111
	cmpl	$35, %eax	#, tmp111
	ja	.L1036	#,
	movl	%eax, %eax	# tmp111, tmp113
	movq	.L1009(,%rax,8), %rax	#, tmp114
	jmp	*%rax	# tmp114
	.section	.rodata
	.align 8
	.align 4
.L1009:
	.quad	.L1008
	.quad	.L1036
	.quad	.L1036
	.quad	.L1036
	.quad	.L1036
	.quad	.L1036
	.quad	.L1036
	.quad	.L1036
	.quad	.L1036
	.quad	.L1036
	.quad	.L1036
	.quad	.L1036
	.quad	.L1036
	.quad	.L1036
	.quad	.L1036
	.quad	.L1036
	.quad	.L1036
	.quad	.L1036
	.quad	.L1008
	.quad	.L1008
	.quad	.L1008
	.quad	.L1036
	.quad	.L1010
	.quad	.L1008
	.quad	.L1036
	.quad	.L1008
	.quad	.L1011
	.quad	.L1036
	.quad	.L1036
	.quad	.L1036
	.quad	.L1036
	.quad	.L1036
	.quad	.L1008
	.quad	.L1008
	.quad	.L1008
	.quad	.L1008
	.text
.L1008:
	.loc 1 4690 0
	movq	-56(%rbp), %rax	# orig, D.19225
	jmp	.L1012	#
.L1011:
	.loc 1 4693 0
	movl	$0, -44(%rbp)	#, i
	jmp	.L1013	#
.L1015:
	.loc 1 4694 0
	movl	-44(%rbp), %eax	# i, tmp116
	cltq
	movq	copy_insn_scratch_in(,%rax,8), %rax	# copy_insn_scratch_in, D.19227
	cmpq	-56(%rbp), %rax	# orig, D.19227
	jne	.L1014	#,
	.loc 1 4695 0
	movl	-44(%rbp), %eax	# i, tmp118
	cltq
	movq	copy_insn_scratch_out(,%rax,8), %rax	# copy_insn_scratch_out, D.19225
	jmp	.L1012	#
.L1014:
	.loc 1 4693 0
	addl	$1, -44(%rbp)	#, i
.L1013:
	.loc 1 4693 0 is_stmt 0 discriminator 1
	movl	copy_insn_n_scratches(%rip), %eax	# copy_insn_n_scratches, copy_insn_n_scratches.402
	cmpl	%eax, -44(%rbp)	# copy_insn_n_scratches.402, i
	jl	.L1015	#,
	.loc 1 4696 0 is_stmt 1
	jmp	.L1016	#
.L1010:
	.loc 1 4701 0
	movq	-56(%rbp), %rax	# orig, tmp119
	movq	8(%rax), %rax	# orig_6(D)->fld[0].rtx, D.19227
	movzwl	(%rax), %eax	# _15->code, D.19226
	cmpw	$75, %ax	#, D.19226
	jne	.L1017	#,
	.loc 1 4702 0
	movq	-56(%rbp), %rax	# orig, tmp120
	movq	8(%rax), %rax	# orig_6(D)->fld[0].rtx, D.19227
	movq	8(%rax), %rax	# _17->fld[0].rtx, D.19227
	movzwl	(%rax), %eax	# _18->code, D.19226
	cmpw	$68, %ax	#, D.19226
	jne	.L1017	#,
	.loc 1 4703 0
	movq	-56(%rbp), %rax	# orig, tmp121
	movq	8(%rax), %rax	# orig_6(D)->fld[0].rtx, D.19227
	movq	16(%rax), %rax	# _20->fld[1].rtx, D.19227
	movzwl	(%rax), %eax	# _21->code, D.19226
	cmpw	$54, %ax	#, D.19226
	jne	.L1017	#,
	.loc 1 4704 0
	movq	-56(%rbp), %rax	# orig, D.19225
	jmp	.L1012	#
.L1017:
	.loc 1 4705 0
	jmp	.L1016	#
.L1036:
	.loc 1 4713 0
	nop
.L1016:
	.loc 1 4716 0
	movl	-36(%rbp), %eax	# code, tmp122
	movl	%eax, %edi	# tmp122,
	call	rtx_alloc	#
	movq	%rax, -24(%rbp)	# tmp123, copy
	.loc 1 4722 0
	movq	-56(%rbp), %rcx	# orig, tmp124
	movq	-24(%rbp), %rax	# copy, tmp125
	movl	$8, %edx	#,
	movq	%rcx, %rsi	# tmp124,
	movq	%rax, %rdi	# tmp125,
	call	memcpy	#
	.loc 1 4726 0
	movq	-24(%rbp), %rax	# copy, tmp126
	movzbl	3(%rax), %edx	# copy_24->used, tmp129
	andl	$-33, %edx	#, tmp130
	movb	%dl, 3(%rax)	# tmp130, copy_24->used
	.loc 1 4729 0
	movl	-36(%rbp), %eax	# code, code.403
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.19228
	cmpb	$105, %al	#, D.19228
	jne	.L1018	#,
	.loc 1 4731 0
	movq	-24(%rbp), %rax	# copy, tmp132
	movzbl	3(%rax), %edx	# copy_24->jump, tmp135
	andl	$-2, %edx	#, tmp136
	movb	%dl, 3(%rax)	# tmp136, copy_24->jump
	.loc 1 4732 0
	movq	-24(%rbp), %rax	# copy, tmp137
	movzbl	3(%rax), %edx	# copy_24->call, tmp140
	andl	$-3, %edx	#, tmp141
	movb	%dl, 3(%rax)	# tmp141, copy_24->call
	.loc 1 4733 0
	movq	-24(%rbp), %rax	# copy, tmp142
	movzbl	3(%rax), %edx	# copy_24->frame_related, tmp145
	andl	$127, %edx	#, tmp146
	movb	%dl, 3(%rax)	# tmp146, copy_24->frame_related
.L1018:
	.loc 1 4736 0
	movq	-24(%rbp), %rax	# copy, tmp147
	movzwl	(%rax), %eax	# copy_24->code, D.19226
	movzwl	%ax, %eax	# D.19226, D.19229
	cltq
	movq	rtx_format(,%rax,8), %rax	# rtx_format, tmp149
	movq	%rax, -32(%rbp)	# tmp149, format_ptr
	.loc 1 4738 0
	movl	$0, -44(%rbp)	#, i
	jmp	.L1019	#
.L1032:
	.loc 1 4740 0
	movq	-24(%rbp), %rax	# copy, tmp150
	movl	-44(%rbp), %edx	# i, tmp152
	movslq	%edx, %rdx	# tmp152, tmp151
	movq	-56(%rbp), %rcx	# orig, tmp153
	movl	-44(%rbp), %esi	# i, tmp155
	movslq	%esi, %rsi	# tmp155, tmp154
	movq	8(%rcx,%rsi,8), %rcx	# orig_6(D)->fld, tmp156
	movq	%rcx, 8(%rax,%rdx,8)	# tmp156, copy_24->fld
	.loc 1 4741 0
	movq	-32(%rbp), %rax	# format_ptr, format_ptr.404
	leaq	1(%rax), %rdx	#, tmp157
	movq	%rdx, -32(%rbp)	# tmp157, format_ptr
	movzbl	(%rax), %eax	# *format_ptr.404_35, D.19228
	movsbl	%al, %eax	# D.19228, D.19229
	subl	$48, %eax	#, tmp158
	cmpl	$71, %eax	#, tmp158
	ja	.L1020	#,
	movl	%eax, %eax	# tmp158, tmp159
	movq	.L1022(,%rax,8), %rax	#, tmp160
	jmp	*%rax	# tmp160
	.section	.rodata
	.align 8
	.align 4
.L1022:
	.quad	.L1037
	.quad	.L1020
	.quad	.L1020
	.quad	.L1020
	.quad	.L1020
	.quad	.L1020
	.quad	.L1020
	.quad	.L1020
	.quad	.L1020
	.quad	.L1020
	.quad	.L1020
	.quad	.L1020
	.quad	.L1020
	.quad	.L1020
	.quad	.L1020
	.quad	.L1020
	.quad	.L1020
	.quad	.L1020
	.quad	.L1020
	.quad	.L1020
	.quad	.L1020
	.quad	.L1023
	.quad	.L1020
	.quad	.L1020
	.quad	.L1020
	.quad	.L1020
	.quad	.L1020
	.quad	.L1020
	.quad	.L1020
	.quad	.L1020
	.quad	.L1020
	.quad	.L1020
	.quad	.L1020
	.quad	.L1020
	.quad	.L1020
	.quad	.L1037
	.quad	.L1020
	.quad	.L1020
	.quad	.L1023
	.quad	.L1020
	.quad	.L1020
	.quad	.L1020
	.quad	.L1020
	.quad	.L1020
	.quad	.L1020
	.quad	.L1020
	.quad	.L1020
	.quad	.L1020
	.quad	.L1020
	.quad	.L1020
	.quad	.L1020
	.quad	.L1020
	.quad	.L1020
	.quad	.L1024
	.quad	.L1020
	.quad	.L1020
	.quad	.L1020
	.quad	.L1037
	.quad	.L1020
	.quad	.L1020
	.quad	.L1020
	.quad	.L1020
	.quad	.L1020
	.quad	.L1020
	.quad	.L1020
	.quad	.L1020
	.quad	.L1020
	.quad	.L1037
	.quad	.L1037
	.quad	.L1037
	.quad	.L1020
	.quad	.L1037
	.text
.L1024:
	.loc 1 4744 0
	movq	-56(%rbp), %rax	# orig, tmp161
	movl	-44(%rbp), %edx	# i, tmp163
	movslq	%edx, %rdx	# tmp163, tmp162
	movq	8(%rax,%rdx,8), %rax	# orig_6(D)->fld[i_2].rtx, D.19227
	testq	%rax, %rax	# D.19227
	je	.L1025	#,
	.loc 1 4745 0
	movq	-56(%rbp), %rax	# orig, tmp164
	movl	-44(%rbp), %edx	# i, tmp166
	movslq	%edx, %rdx	# tmp166, tmp165
	movq	8(%rax,%rdx,8), %rax	# orig_6(D)->fld[i_2].rtx, D.19227
	movq	%rax, %rdi	# D.19227,
	call	copy_insn_1	#
	movq	-24(%rbp), %rdx	# copy, tmp167
	movl	-44(%rbp), %ecx	# i, tmp169
	movslq	%ecx, %rcx	# tmp169, tmp168
	movq	%rax, 8(%rdx,%rcx,8)	# D.19227, copy_24->fld[i_2].rtx
	.loc 1 4746 0
	jmp	.L1026	#
.L1025:
	jmp	.L1026	#
.L1023:
	.loc 1 4750 0
	movq	-56(%rbp), %rax	# orig, tmp170
	movl	-44(%rbp), %edx	# i, tmp172
	movslq	%edx, %rdx	# tmp172, tmp171
	movq	8(%rax,%rdx,8), %rdx	# orig_6(D)->fld[i_2].rtvec, D.19231
	movq	orig_asm_constraints_vector(%rip), %rax	# orig_asm_constraints_vector, orig_asm_constraints_vector.405
	cmpq	%rax, %rdx	# orig_asm_constraints_vector.405, D.19231
	jne	.L1027	#,
	.loc 1 4751 0
	movq	copy_asm_constraints_vector(%rip), %rcx	# copy_asm_constraints_vector, copy_asm_constraints_vector.406
	movq	-24(%rbp), %rax	# copy, tmp173
	movl	-44(%rbp), %edx	# i, tmp175
	movslq	%edx, %rdx	# tmp175, tmp174
	movq	%rcx, 8(%rax,%rdx,8)	# copy_asm_constraints_vector.406, copy_24->fld[i_2].rtvec
	jmp	.L1028	#
.L1027:
	.loc 1 4752 0
	movq	-56(%rbp), %rax	# orig, tmp176
	movl	-44(%rbp), %edx	# i, tmp178
	movslq	%edx, %rdx	# tmp178, tmp177
	movq	8(%rax,%rdx,8), %rdx	# orig_6(D)->fld[i_2].rtvec, D.19231
	movq	orig_asm_operands_vector(%rip), %rax	# orig_asm_operands_vector, orig_asm_operands_vector.407
	cmpq	%rax, %rdx	# orig_asm_operands_vector.407, D.19231
	jne	.L1029	#,
	.loc 1 4753 0
	movq	copy_asm_operands_vector(%rip), %rcx	# copy_asm_operands_vector, copy_asm_operands_vector.408
	movq	-24(%rbp), %rax	# copy, tmp179
	movl	-44(%rbp), %edx	# i, tmp181
	movslq	%edx, %rdx	# tmp181, tmp180
	movq	%rcx, 8(%rax,%rdx,8)	# copy_asm_operands_vector.408, copy_24->fld[i_2].rtvec
	jmp	.L1028	#
.L1029:
	.loc 1 4754 0
	movq	-56(%rbp), %rax	# orig, tmp182
	movl	-44(%rbp), %edx	# i, tmp184
	movslq	%edx, %rdx	# tmp184, tmp183
	movq	8(%rax,%rdx,8), %rax	# orig_6(D)->fld[i_2].rtvec, D.19231
	testq	%rax, %rax	# D.19231
	je	.L1028	#,
	.loc 1 4756 0
	movq	-56(%rbp), %rax	# orig, tmp185
	movl	-44(%rbp), %edx	# i, tmp187
	movslq	%edx, %rdx	# tmp187, tmp186
	movq	8(%rax,%rdx,8), %rax	# orig_6(D)->fld[i_2].rtvec, D.19231
	movl	(%rax), %eax	# _49->num_elem, D.19229
	movl	%eax, %edi	# D.19229,
	call	rtvec_alloc	#
	movq	-24(%rbp), %rdx	# copy, tmp188
	movl	-44(%rbp), %ecx	# i, tmp190
	movslq	%ecx, %rcx	# tmp190, tmp189
	movq	%rax, 8(%rdx,%rcx,8)	# D.19231, copy_24->fld[i_2].rtvec
	.loc 1 4757 0
	movl	$0, -40(%rbp)	#, j
	jmp	.L1030	#
.L1031:
	.loc 1 4758 0 discriminator 2
	movq	-24(%rbp), %rax	# copy, tmp191
	movl	-44(%rbp), %edx	# i, tmp193
	movslq	%edx, %rdx	# tmp193, tmp192
	movq	8(%rax,%rdx,8), %rbx	# copy_24->fld[i_2].rtvec, D.19231
	movq	-56(%rbp), %rax	# orig, tmp194
	movl	-44(%rbp), %edx	# i, tmp196
	movslq	%edx, %rdx	# tmp196, tmp195
	movq	8(%rax,%rdx,8), %rax	# orig_6(D)->fld[i_2].rtvec, D.19231
	movl	-40(%rbp), %edx	# j, tmp198
	movslq	%edx, %rdx	# tmp198, tmp197
	movq	8(%rax,%rdx,8), %rax	# _56->elem, D.19227
	movq	%rax, %rdi	# D.19227,
	call	copy_insn_1	#
	movl	-40(%rbp), %edx	# j, tmp200
	movslq	%edx, %rdx	# tmp200, tmp199
	movq	%rax, 8(%rbx,%rdx,8)	# D.19227, _55->elem
	.loc 1 4757 0 discriminator 2
	addl	$1, -40(%rbp)	#, j
.L1030:
	.loc 1 4757 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# copy, tmp201
	movl	-44(%rbp), %edx	# i, tmp203
	movslq	%edx, %rdx	# tmp203, tmp202
	movq	8(%rax,%rdx,8), %rax	# copy_24->fld[i_2].rtvec, D.19231
	movl	(%rax), %eax	# _53->num_elem, D.19229
	cmpl	-40(%rbp), %eax	# j, D.19229
	jg	.L1031	#,
.L1028:
	.loc 1 4760 0 is_stmt 1
	jmp	.L1026	#
.L1020:
	.loc 1 4773 0
	movl	$__FUNCTION__.14397, %edx	#,
	movl	$4773, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L1037:
	.loc 1 4770 0
	nop
.L1026:
	.loc 1 4738 0
	addl	$1, -44(%rbp)	#, i
.L1019:
	.loc 1 4738 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# copy, tmp204
	movzwl	(%rax), %eax	# copy_24->code, D.19226
	movzwl	%ax, %eax	# D.19226, D.19229
	cltq
	movzbl	rtx_length(%rax), %eax	# rtx_length, D.19230
	movzbl	%al, %eax	# D.19230, D.19229
	cmpl	-44(%rbp), %eax	# i, D.19229
	jg	.L1032	#,
	.loc 1 4777 0 is_stmt 1
	cmpl	$62, -36(%rbp)	#, code
	jne	.L1033	#,
	.loc 1 4779 0
	movl	copy_insn_n_scratches(%rip), %eax	# copy_insn_n_scratches, copy_insn_n_scratches.409
	leal	1(%rax), %edx	#, copy_insn_n_scratches.411
	movl	%edx, copy_insn_n_scratches(%rip)	# copy_insn_n_scratches.411, copy_insn_n_scratches
	movl	%eax, -44(%rbp)	# copy_insn_n_scratches.410, i
	.loc 1 4780 0
	cmpl	$29, -44(%rbp)	#, i
	jle	.L1034	#,
	.loc 1 4781 0
	movl	$__FUNCTION__.14397, %edx	#,
	movl	$4781, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L1034:
	.loc 1 4782 0
	movl	-44(%rbp), %eax	# i, tmp207
	cltq
	movq	-56(%rbp), %rdx	# orig, tmp208
	movq	%rdx, copy_insn_scratch_in(,%rax,8)	# tmp208, copy_insn_scratch_in
	.loc 1 4783 0
	movl	-44(%rbp), %eax	# i, tmp210
	cltq
	movq	-24(%rbp), %rdx	# copy, tmp211
	movq	%rdx, copy_insn_scratch_out(,%rax,8)	# tmp211, copy_insn_scratch_out
	jmp	.L1035	#
.L1033:
	.loc 1 4785 0
	cmpl	$41, -36(%rbp)	#, code
	jne	.L1035	#,
	.loc 1 4787 0
	movq	-56(%rbp), %rax	# orig, tmp212
	movq	32(%rax), %rax	# orig_6(D)->fld[3].rtvec, orig_asm_operands_vector.412
	movq	%rax, orig_asm_operands_vector(%rip)	# orig_asm_operands_vector.412, orig_asm_operands_vector
	.loc 1 4788 0
	movq	-24(%rbp), %rax	# copy, tmp213
	movq	32(%rax), %rax	# copy_24->fld[3].rtvec, copy_asm_operands_vector.413
	movq	%rax, copy_asm_operands_vector(%rip)	# copy_asm_operands_vector.413, copy_asm_operands_vector
	.loc 1 4789 0
	movq	-56(%rbp), %rax	# orig, tmp214
	movq	40(%rax), %rax	# orig_6(D)->fld[4].rtvec, orig_asm_constraints_vector.414
	movq	%rax, orig_asm_constraints_vector(%rip)	# orig_asm_constraints_vector.414, orig_asm_constraints_vector
	.loc 1 4790 0
	movq	-24(%rbp), %rax	# copy, tmp215
	movq	40(%rax), %rax	# copy_24->fld[4].rtvec, copy_asm_constraints_vector.415
	movq	%rax, copy_asm_constraints_vector(%rip)	# copy_asm_constraints_vector.415, copy_asm_constraints_vector
.L1035:
	.loc 1 4793 0
	movq	-24(%rbp), %rax	# copy, D.19225
.L1012:
	.loc 1 4794 0
	addq	$56, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE141:
	.size	copy_insn_1, .-copy_insn_1
	.globl	copy_insn
	.type	copy_insn, @function
copy_insn:
.LFB142:
	.loc 1 4804 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# insn, insn
	.loc 1 4805 0
	movl	$0, copy_insn_n_scratches(%rip)	#, copy_insn_n_scratches
	.loc 1 4806 0
	movq	$0, orig_asm_operands_vector(%rip)	#, orig_asm_operands_vector
	.loc 1 4807 0
	movq	$0, orig_asm_constraints_vector(%rip)	#, orig_asm_constraints_vector
	.loc 1 4808 0
	movq	$0, copy_asm_operands_vector(%rip)	#, copy_asm_operands_vector
	.loc 1 4809 0
	movq	$0, copy_asm_constraints_vector(%rip)	#, copy_asm_constraints_vector
	.loc 1 4810 0
	movq	-8(%rbp), %rax	# insn, tmp61
	movq	%rax, %rdi	# tmp61,
	call	copy_insn_1	#
	.loc 1 4811 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE142:
	.size	copy_insn, .-copy_insn
	.globl	init_emit
	.type	init_emit, @function
init_emit:
.LFB143:
	.loc 1 4818 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$24, %rsp	#,
	.cfi_offset 3, -24
	.loc 1 4819 0
	movq	cfun(%rip), %rax	# cfun, tmp169
	movq	%rax, -24(%rbp)	# tmp169, f
	.loc 1 4821 0
	movl	$88, %edi	#,
	call	xmalloc	#
	movq	%rax, %rdx	# tmp170, D.19233
	movq	-24(%rbp), %rax	# f, tmp171
	movq	%rdx, 24(%rax)	# D.19233, f_10->emit
	.loc 1 4822 0
	movq	cfun(%rip), %rax	# cfun, cfun.416
	movq	24(%rax), %rax	# cfun.416_12->emit, D.19234
	movq	$0, 8(%rax)	#, _13->x_first_insn
	.loc 1 4823 0
	movq	cfun(%rip), %rax	# cfun, cfun.417
	movq	24(%rax), %rax	# cfun.417_14->emit, D.19234
	movq	$0, 16(%rax)	#, _15->x_last_insn
	.loc 1 4824 0
	movq	cfun(%rip), %rax	# cfun, cfun.418
	movq	24(%rax), %rax	# cfun.418_16->emit, D.19234
	movq	$0, 24(%rax)	#, _17->sequence_rtl_expr
	.loc 1 4825 0
	movq	cfun(%rip), %rax	# cfun, cfun.419
	movq	24(%rax), %rax	# cfun.419_18->emit, D.19234
	movl	$1, 40(%rax)	#, _19->x_cur_insn_uid
	.loc 1 4826 0
	movq	cfun(%rip), %rax	# cfun, cfun.420
	movq	24(%rax), %rax	# cfun.420_20->emit, D.19234
	movl	$58, (%rax)	#, _21->x_reg_rtx_no
	.loc 1 4827 0
	movq	cfun(%rip), %rax	# cfun, cfun.421
	movq	24(%rax), %rax	# cfun.421_22->emit, D.19234
	movl	$0, 44(%rax)	#, _23->x_last_linenum
	.loc 1 4828 0
	movq	cfun(%rip), %rax	# cfun, cfun.422
	movq	24(%rax), %rax	# cfun.422_24->emit, D.19234
	movq	$0, 48(%rax)	#, _25->x_last_filename
	.loc 1 4829 0
	movq	cfun(%rip), %rax	# cfun, cfun.423
	movq	24(%rax), %rax	# cfun.423_26->emit, D.19234
	movl	label_num(%rip), %edx	# label_num, label_num.424
	movl	%edx, 4(%rax)	# label_num.424, _27->x_first_label_num
	.loc 1 4830 0
	movl	$0, last_label_num(%rip)	#, last_label_num
	.loc 1 4831 0
	movq	cfun(%rip), %rax	# cfun, cfun.425
	movq	24(%rax), %rax	# cfun.425_29->emit, D.19234
	movq	$0, 32(%rax)	#, _30->sequence_stack
	.loc 1 4833 0
	call	clear_emit_caches	#
	.loc 1 4837 0
	movq	-24(%rbp), %rax	# f, tmp172
	movq	24(%rax), %rax	# f_10->emit, D.19234
	movl	$158, 56(%rax)	#, _31->regno_pointer_align_length
	.loc 1 4839 0
	movq	-24(%rbp), %rax	# f, tmp173
	movq	24(%rax), %rbx	# f_10->emit, D.19234
	.loc 1 4840 0
	movq	-24(%rbp), %rax	# f, tmp174
	movq	24(%rax), %rax	# f_10->emit, D.19234
	movl	56(%rax), %eax	# _33->regno_pointer_align_length, D.19235
	cltq
	movl	$1, %esi	#,
	movq	%rax, %rdi	# D.19236,
	call	xcalloc	#
	movq	%rax, 64(%rbx)	# D.19233, _32->regno_pointer_align
	.loc 1 4843 0
	movq	cfun(%rip), %rax	# cfun, cfun.426
	movq	24(%rax), %rbx	# cfun.426_37->emit, D.19234
	.loc 1 4844 0
	movq	-24(%rbp), %rax	# f, tmp176
	movq	24(%rax), %rax	# f_10->emit, D.19234
	movl	56(%rax), %eax	# _39->regno_pointer_align_length, D.19235
	cltq
	movl	$8, %esi	#,
	movq	%rax, %rdi	# D.19236,
	call	xcalloc	#
	movq	%rax, 80(%rbx)	# D.19233, _38->x_regno_reg_rtx
	.loc 1 4846 0
	movq	-24(%rbp), %rax	# f, tmp178
	movq	24(%rax), %rbx	# f_10->emit, D.19234
	.loc 1 4847 0
	movq	-24(%rbp), %rax	# f, tmp179
	movq	24(%rax), %rax	# f_10->emit, D.19234
	movl	56(%rax), %eax	# _44->regno_pointer_align_length, D.19235
	cltq
	movl	$8, %esi	#,
	movq	%rax, %rdi	# D.19236,
	call	xcalloc	#
	movq	%rax, 72(%rbx)	# D.19233, _43->regno_decl
	.loc 1 4850 0
	movq	-24(%rbp), %rax	# f, tmp181
	movq	24(%rax), %rax	# f_10->emit, D.19234
	movq	%rax, %rdi	# D.19234,
	call	init_virtual_regs	#
	.loc 1 4854 0
	movq	global_rtl+16(%rip), %rax	# global_rtl, D.19237
	movzbl	3(%rax), %edx	# _49->frame_related, tmp184
	orl	$-128, %edx	#, tmp185
	movb	%dl, 3(%rax)	# tmp185, _49->frame_related
	.loc 1 4855 0
	movq	global_rtl+24(%rip), %rax	# global_rtl, D.19237
	movzbl	3(%rax), %edx	# _50->frame_related, tmp188
	orl	$-128, %edx	#, tmp189
	movb	%dl, 3(%rax)	# tmp189, _50->frame_related
	.loc 1 4856 0
	movq	global_rtl+32(%rip), %rax	# global_rtl, D.19237
	movzbl	3(%rax), %edx	# _51->frame_related, tmp192
	orl	$-128, %edx	#, tmp193
	movb	%dl, 3(%rax)	# tmp193, _51->frame_related
	.loc 1 4857 0
	movq	global_rtl+40(%rip), %rax	# global_rtl, D.19237
	movzbl	3(%rax), %edx	# _52->frame_related, tmp196
	orl	$-128, %edx	#, tmp197
	movb	%dl, 3(%rax)	# tmp197, _52->frame_related
	.loc 1 4859 0
	movq	global_rtl+48(%rip), %rax	# global_rtl, D.19237
	movzbl	3(%rax), %edx	# _53->frame_related, tmp200
	orl	$-128, %edx	#, tmp201
	movb	%dl, 3(%rax)	# tmp201, _53->frame_related
	.loc 1 4860 0
	movq	global_rtl+56(%rip), %rax	# global_rtl, D.19237
	movzbl	3(%rax), %edx	# _54->frame_related, tmp204
	orl	$-128, %edx	#, tmp205
	movb	%dl, 3(%rax)	# tmp205, _54->frame_related
	.loc 1 4861 0
	movq	global_rtl+64(%rip), %rax	# global_rtl, D.19237
	movzbl	3(%rax), %edx	# _55->frame_related, tmp208
	orl	$-128, %edx	#, tmp209
	movb	%dl, 3(%rax)	# tmp209, _55->frame_related
	.loc 1 4862 0
	movq	global_rtl+72(%rip), %rax	# global_rtl, D.19237
	movzbl	3(%rax), %edx	# _56->frame_related, tmp212
	orl	$-128, %edx	#, tmp213
	movb	%dl, 3(%rax)	# tmp213, _56->frame_related
	.loc 1 4863 0
	movq	global_rtl+80(%rip), %rax	# global_rtl, D.19237
	movzbl	3(%rax), %edx	# _57->frame_related, tmp216
	orl	$-128, %edx	#, tmp217
	movb	%dl, 3(%rax)	# tmp217, _57->frame_related
	.loc 1 4866 0
	movq	cfun(%rip), %rax	# cfun, cfun.427
	movq	24(%rax), %rax	# cfun.427_58->emit, D.19234
	movq	64(%rax), %rax	# _59->regno_pointer_align, D.19238
	leaq	7(%rax), %rdx	#, D.19238
	movl	target_flags(%rip), %eax	# target_flags, target_flags.429
	andl	$33554432, %eax	#, D.19235
	testl	%eax, %eax	# D.19235
	je	.L1041	#,
	.loc 1 4866 0 is_stmt 0 discriminator 1
	movl	$64, %eax	#, iftmp.428
	jmp	.L1042	#
.L1041:
	.loc 1 4866 0 discriminator 2
	movl	$32, %eax	#, iftmp.428
.L1042:
	.loc 1 4866 0 discriminator 3
	movb	%al, (%rdx)	# iftmp.428, *_61
	.loc 1 4867 0 is_stmt 1 discriminator 3
	movq	cfun(%rip), %rax	# cfun, cfun.430
	movq	24(%rax), %rax	# cfun.430_66->emit, D.19234
	movq	64(%rax), %rax	# _67->regno_pointer_align, D.19238
	leaq	20(%rax), %rdx	#, D.19238
	movl	target_flags(%rip), %eax	# target_flags, target_flags.432
	andl	$33554432, %eax	#, D.19235
	testl	%eax, %eax	# D.19235
	je	.L1043	#,
	.loc 1 4867 0 is_stmt 0 discriminator 1
	movl	$64, %eax	#, iftmp.431
	jmp	.L1044	#
.L1043:
	.loc 1 4867 0 discriminator 2
	movl	$32, %eax	#, iftmp.431
.L1044:
	.loc 1 4867 0 discriminator 3
	movb	%al, (%rdx)	# iftmp.431, *_69
	.loc 1 4868 0 is_stmt 1 discriminator 3
	movq	cfun(%rip), %rax	# cfun, cfun.433
	movq	24(%rax), %rax	# cfun.433_74->emit, D.19234
	movq	64(%rax), %rax	# _75->regno_pointer_align, D.19238
	leaq	6(%rax), %rdx	#, D.19238
	movl	target_flags(%rip), %eax	# target_flags, target_flags.435
	andl	$33554432, %eax	#, D.19235
	testl	%eax, %eax	# D.19235
	je	.L1045	#,
	.loc 1 4868 0 is_stmt 0 discriminator 1
	movl	$64, %eax	#, iftmp.434
	jmp	.L1046	#
.L1045:
	.loc 1 4868 0 discriminator 2
	movl	$32, %eax	#, iftmp.434
.L1046:
	.loc 1 4868 0 discriminator 3
	movb	%al, (%rdx)	# iftmp.434, *_77
	.loc 1 4869 0 is_stmt 1 discriminator 3
	movq	cfun(%rip), %rax	# cfun, cfun.436
	movq	24(%rax), %rax	# cfun.436_82->emit, D.19234
	movq	64(%rax), %rax	# _83->regno_pointer_align, D.19238
	leaq	16(%rax), %rdx	#, D.19238
	movl	target_flags(%rip), %eax	# target_flags, target_flags.438
	andl	$33554432, %eax	#, D.19235
	testl	%eax, %eax	# D.19235
	je	.L1047	#,
	.loc 1 4869 0 is_stmt 0 discriminator 1
	movl	$64, %eax	#, iftmp.437
	jmp	.L1048	#
.L1047:
	.loc 1 4869 0 discriminator 2
	movl	$32, %eax	#, iftmp.437
.L1048:
	.loc 1 4869 0 discriminator 3
	movb	%al, (%rdx)	# iftmp.437, *_85
	.loc 1 4871 0 is_stmt 1 discriminator 3
	movq	cfun(%rip), %rax	# cfun, cfun.439
	movq	24(%rax), %rax	# cfun.439_90->emit, D.19234
	movq	64(%rax), %rax	# _91->regno_pointer_align, D.19238
	leaq	53(%rax), %rdx	#, D.19238
	movl	target_flags(%rip), %eax	# target_flags, target_flags.441
	andl	$33554432, %eax	#, D.19235
	testl	%eax, %eax	# D.19235
	je	.L1049	#,
	.loc 1 4871 0 is_stmt 0 discriminator 1
	movl	$64, %eax	#, iftmp.440
	jmp	.L1050	#
.L1049:
	.loc 1 4871 0 discriminator 2
	movl	$32, %eax	#, iftmp.440
.L1050:
	.loc 1 4871 0 discriminator 3
	movb	%al, (%rdx)	# iftmp.440, *_93
	.loc 1 4872 0 is_stmt 1 discriminator 3
	movq	cfun(%rip), %rax	# cfun, cfun.442
	movq	24(%rax), %rax	# cfun.442_98->emit, D.19234
	movq	64(%rax), %rax	# _99->regno_pointer_align, D.19238
	leaq	54(%rax), %rdx	#, D.19238
	movl	target_flags(%rip), %eax	# target_flags, target_flags.444
	andl	$33554432, %eax	#, D.19235
	testl	%eax, %eax	# D.19235
	je	.L1051	#,
	.loc 1 4872 0 is_stmt 0 discriminator 1
	movl	$64, %eax	#, iftmp.443
	jmp	.L1052	#
.L1051:
	.loc 1 4872 0 discriminator 2
	movl	$32, %eax	#, iftmp.443
.L1052:
	.loc 1 4872 0 discriminator 3
	movb	%al, (%rdx)	# iftmp.443, *_101
	.loc 1 4873 0 is_stmt 1 discriminator 3
	movq	cfun(%rip), %rax	# cfun, cfun.445
	movq	24(%rax), %rax	# cfun.445_106->emit, D.19234
	movq	64(%rax), %rax	# _107->regno_pointer_align, D.19238
	leaq	55(%rax), %rdx	#, D.19238
	movl	target_flags(%rip), %eax	# target_flags, target_flags.447
	andl	$33554432, %eax	#, D.19235
	testl	%eax, %eax	# D.19235
	je	.L1053	#,
	.loc 1 4873 0 is_stmt 0 discriminator 1
	movl	$64, %eax	#, iftmp.446
	jmp	.L1054	#
.L1053:
	.loc 1 4873 0 discriminator 2
	movl	$32, %eax	#, iftmp.446
.L1054:
	.loc 1 4873 0 discriminator 3
	movb	%al, (%rdx)	# iftmp.446, *_109
	.loc 1 4874 0 is_stmt 1 discriminator 3
	movq	cfun(%rip), %rax	# cfun, cfun.448
	movq	24(%rax), %rax	# cfun.448_114->emit, D.19234
	movq	64(%rax), %rax	# _115->regno_pointer_align, D.19238
	leaq	56(%rax), %rdx	#, D.19238
	movl	target_flags(%rip), %eax	# target_flags, target_flags.450
	andl	$33554432, %eax	#, D.19235
	testl	%eax, %eax	# D.19235
	je	.L1055	#,
	.loc 1 4874 0 is_stmt 0 discriminator 1
	movl	$64, %eax	#, iftmp.449
	jmp	.L1056	#
.L1055:
	.loc 1 4874 0 discriminator 2
	movl	$32, %eax	#, iftmp.449
.L1056:
	.loc 1 4874 0 discriminator 3
	movb	%al, (%rdx)	# iftmp.449, *_117
	.loc 1 4875 0 is_stmt 1 discriminator 3
	movq	cfun(%rip), %rax	# cfun, cfun.451
	movq	24(%rax), %rax	# cfun.451_122->emit, D.19234
	movq	64(%rax), %rax	# _123->regno_pointer_align, D.19238
	leaq	57(%rax), %rdx	#, D.19238
	movl	target_flags(%rip), %eax	# target_flags, target_flags.453
	andl	$33554432, %eax	#, D.19235
	testl	%eax, %eax	# D.19235
	je	.L1057	#,
	.loc 1 4875 0 is_stmt 0 discriminator 1
	movl	$64, %eax	#, iftmp.452
	jmp	.L1058	#
.L1057:
	.loc 1 4875 0 discriminator 2
	movl	$32, %eax	#, iftmp.452
.L1058:
	.loc 1 4875 0 discriminator 3
	movb	%al, (%rdx)	# iftmp.452, *_125
	.loc 1 4881 0 is_stmt 1 discriminator 3
	addq	$24, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE143:
	.size	init_emit, .-init_emit
	.type	mark_sequence_stack, @function
mark_sequence_stack:
.LFB144:
	.loc 1 4888 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# ss, ss
	.loc 1 4889 0
	jmp	.L1060	#
.L1064:
.LBB55:
	.loc 1 4891 0
	movq	-24(%rbp), %rax	# ss, tmp74
	movq	(%rax), %rax	# ss_1->first, tmp75
	movq	%rax, -16(%rbp)	# tmp75, r__
	cmpq	$0, -16(%rbp)	#, r__
	je	.L1061	#,
	.loc 1 4891 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# r__, tmp76
	movq	%rax, %rdi	# tmp76,
	call	ggc_set_mark	#
	testl	%eax, %eax	# D.19239
	jne	.L1061	#,
	movq	-16(%rbp), %rax	# r__, tmp77
	movq	%rax, %rdi	# tmp77,
	call	ggc_mark_rtx_children	#
.L1061:
.LBE55:
.LBB56:
	.loc 1 4892 0 is_stmt 1
	movq	-24(%rbp), %rax	# ss, tmp78
	movq	16(%rax), %rax	# ss_1->sequence_rtl_expr, tmp79
	movq	%rax, -8(%rbp)	# tmp79, t__
	cmpq	$0, -8(%rbp)	#, t__
	je	.L1062	#,
	.loc 1 4892 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# t__, tmp80
	movq	%rax, %rdi	# tmp80,
	call	ggc_set_mark	#
	testl	%eax, %eax	# D.19239
	jne	.L1062	#,
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.454
	movq	8(%rax), %rdx	# ggc_pending_trees.454_7->elements_used, D.19240
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.455
	movq	(%rax), %rax	# ggc_pending_trees.455_9->num_elements, D.19240
	cmpq	%rax, %rdx	# D.19240, D.19240
	jb	.L1063	#,
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.456
	movq	(%rax), %rax	# ggc_pending_trees.456_11->num_elements, D.19240
	leaq	(%rax,%rax), %rdx	#, D.19240
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.457
	movq	%rdx, %rsi	# D.19240,
	movq	%rax, %rdi	# ggc_pending_trees.457,
	call	varray_grow	#
	movq	%rax, ggc_pending_trees(%rip)	# ggc_pending_trees.458, ggc_pending_trees
.L1063:
	.loc 1 4892 0 discriminator 2
	movq	ggc_pending_trees(%rip), %rcx	# ggc_pending_trees, ggc_pending_trees.459
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.460
	movq	8(%rax), %rdx	# ggc_pending_trees.460_17->elements_used, D.19240
	leaq	1(%rdx), %rsi	#, D.19240
	movq	%rsi, 8(%rax)	# D.19240, ggc_pending_trees.460_17->elements_used
	addq	$4, %rdx	#, tmp81
	movq	-8(%rbp), %rax	# t__, tmp82
	movq	%rax, (%rcx,%rdx,8)	# tmp82, ggc_pending_trees.459_16->data.tree
.L1062:
.LBE56:
	.loc 1 4893 0 is_stmt 1
	movq	-24(%rbp), %rax	# ss, tmp83
	movq	24(%rax), %rax	# ss_1->next, tmp84
	movq	%rax, -24(%rbp)	# tmp84, ss
.L1060:
	.loc 1 4889 0 discriminator 1
	cmpq	$0, -24(%rbp)	#, ss
	jne	.L1064	#,
	.loc 1 4895 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE144:
	.size	mark_sequence_stack, .-mark_sequence_stack
	.globl	mark_emit_status
	.type	mark_emit_status, @function
mark_emit_status:
.LFB145:
	.loc 1 4902 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movq	%rdi, -72(%rbp)	# es, es
	.loc 1 4907 0
	cmpq	$0, -72(%rbp)	#, es
	jne	.L1066	#,
	.loc 1 4908 0
	jmp	.L1065	#
.L1066:
	.loc 1 4910 0
	movq	-72(%rbp), %rax	# es, tmp90
	movl	56(%rax), %eax	# es_4(D)->regno_pointer_align_length, tmp91
	movl	%eax, -52(%rbp)	# tmp91, i
	movq	-72(%rbp), %rax	# es, tmp92
	movq	80(%rax), %rax	# es_4(D)->x_regno_reg_rtx, tmp93
	movq	%rax, -48(%rbp)	# tmp93, r
	.loc 1 4911 0
	movq	-72(%rbp), %rax	# es, tmp94
	movq	72(%rax), %rax	# es_4(D)->regno_decl, tmp95
	movq	%rax, -40(%rbp)	# tmp95, t
	.loc 1 4910 0
	jmp	.L1068	#
.L1072:
.LBB57:
	.loc 1 4914 0
	movq	-48(%rbp), %rax	# r, tmp96
	movq	(%rax), %rax	# *r_1, tmp97
	movq	%rax, -32(%rbp)	# tmp97, r__
	cmpq	$0, -32(%rbp)	#, r__
	je	.L1069	#,
	.loc 1 4914 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# r__, tmp98
	movq	%rax, %rdi	# tmp98,
	call	ggc_set_mark	#
	testl	%eax, %eax	# D.19241
	jne	.L1069	#,
	movq	-32(%rbp), %rax	# r__, tmp99
	movq	%rax, %rdi	# tmp99,
	call	ggc_mark_rtx_children	#
.L1069:
.LBE57:
.LBB58:
	.loc 1 4915 0 is_stmt 1
	movq	-40(%rbp), %rax	# t, tmp100
	movq	(%rax), %rax	# *t_2, tmp101
	movq	%rax, -24(%rbp)	# tmp101, t__
	cmpq	$0, -24(%rbp)	#, t__
	je	.L1070	#,
	.loc 1 4915 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# t__, tmp102
	movq	%rax, %rdi	# tmp102,
	call	ggc_set_mark	#
	testl	%eax, %eax	# D.19241
	jne	.L1070	#,
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.461
	movq	8(%rax), %rdx	# ggc_pending_trees.461_12->elements_used, D.19242
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.462
	movq	(%rax), %rax	# ggc_pending_trees.462_14->num_elements, D.19242
	cmpq	%rax, %rdx	# D.19242, D.19242
	jb	.L1071	#,
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.463
	movq	(%rax), %rax	# ggc_pending_trees.463_16->num_elements, D.19242
	leaq	(%rax,%rax), %rdx	#, D.19242
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.464
	movq	%rdx, %rsi	# D.19242,
	movq	%rax, %rdi	# ggc_pending_trees.464,
	call	varray_grow	#
	movq	%rax, ggc_pending_trees(%rip)	# ggc_pending_trees.465, ggc_pending_trees
.L1071:
	.loc 1 4915 0 discriminator 2
	movq	ggc_pending_trees(%rip), %rcx	# ggc_pending_trees, ggc_pending_trees.466
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.467
	movq	8(%rax), %rdx	# ggc_pending_trees.467_22->elements_used, D.19242
	leaq	1(%rdx), %rsi	#, D.19242
	movq	%rsi, 8(%rax)	# D.19242, ggc_pending_trees.467_22->elements_used
	addq	$4, %rdx	#, tmp103
	movq	-24(%rbp), %rax	# t__, tmp104
	movq	%rax, (%rcx,%rdx,8)	# tmp104, ggc_pending_trees.466_21->data.tree
.L1070:
.LBE58:
	.loc 1 4912 0 is_stmt 1
	subl	$1, -52(%rbp)	#, i
	addq	$8, -48(%rbp)	#, r
	addq	$8, -40(%rbp)	#, t
.L1068:
	.loc 1 4910 0 discriminator 1
	cmpl	$0, -52(%rbp)	#, i
	jg	.L1072	#,
	.loc 1 4918 0
	movq	-72(%rbp), %rax	# es, tmp105
	movq	32(%rax), %rax	# es_4(D)->sequence_stack, D.19243
	movq	%rax, %rdi	# D.19243,
	call	mark_sequence_stack	#
.LBB59:
	.loc 1 4919 0
	movq	-72(%rbp), %rax	# es, tmp106
	movq	24(%rax), %rax	# es_4(D)->sequence_rtl_expr, tmp107
	movq	%rax, -16(%rbp)	# tmp107, t__
	cmpq	$0, -16(%rbp)	#, t__
	je	.L1073	#,
	.loc 1 4919 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# t__, tmp108
	movq	%rax, %rdi	# tmp108,
	call	ggc_set_mark	#
	testl	%eax, %eax	# D.19241
	jne	.L1073	#,
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.468
	movq	8(%rax), %rdx	# ggc_pending_trees.468_32->elements_used, D.19242
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.469
	movq	(%rax), %rax	# ggc_pending_trees.469_34->num_elements, D.19242
	cmpq	%rax, %rdx	# D.19242, D.19242
	jb	.L1074	#,
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.470
	movq	(%rax), %rax	# ggc_pending_trees.470_36->num_elements, D.19242
	leaq	(%rax,%rax), %rdx	#, D.19242
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.471
	movq	%rdx, %rsi	# D.19242,
	movq	%rax, %rdi	# ggc_pending_trees.471,
	call	varray_grow	#
	movq	%rax, ggc_pending_trees(%rip)	# ggc_pending_trees.472, ggc_pending_trees
.L1074:
	.loc 1 4919 0 discriminator 2
	movq	ggc_pending_trees(%rip), %rcx	# ggc_pending_trees, ggc_pending_trees.473
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.474
	movq	8(%rax), %rdx	# ggc_pending_trees.474_42->elements_used, D.19242
	leaq	1(%rdx), %rsi	#, D.19242
	movq	%rsi, 8(%rax)	# D.19242, ggc_pending_trees.474_42->elements_used
	addq	$4, %rdx	#, tmp109
	movq	-16(%rbp), %rax	# t__, tmp110
	movq	%rax, (%rcx,%rdx,8)	# tmp110, ggc_pending_trees.473_41->data.tree
.L1073:
.LBE59:
.LBB60:
	.loc 1 4920 0 is_stmt 1
	movq	-72(%rbp), %rax	# es, tmp111
	movq	8(%rax), %rax	# es_4(D)->x_first_insn, tmp112
	movq	%rax, -8(%rbp)	# tmp112, r__
	cmpq	$0, -8(%rbp)	#, r__
	je	.L1065	#,
	.loc 1 4920 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# r__, tmp113
	movq	%rax, %rdi	# tmp113,
	call	ggc_set_mark	#
	testl	%eax, %eax	# D.19241
	jne	.L1065	#,
	movq	-8(%rbp), %rax	# r__, tmp114
	movq	%rax, %rdi	# tmp114,
	call	ggc_mark_rtx_children	#
.L1065:
.LBE60:
	.loc 1 4921 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE145:
	.size	mark_emit_status, .-mark_emit_status
	.type	gen_const_vector_0, @function
gen_const_vector_0:
.LFB146:
	.loc 1 4928 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movl	%edi, -36(%rbp)	# mode, mode
	.loc 1 4934 0
	movl	-36(%rbp), %eax	# mode, mode.476
	cltq
	movzbl	mode_unit_size(%rax), %eax	# mode_unit_size, D.19244
	testb	%al, %al	# D.19244
	je	.L1076	#,
	.loc 1 4934 0 is_stmt 0 discriminator 1
	movl	-36(%rbp), %eax	# mode, mode.477
	cltq
	movzbl	mode_size(%rax), %ecx	# mode_size, D.19244
	movl	-36(%rbp), %eax	# mode, mode.478
	cltq
	movzbl	mode_unit_size(%rax), %edx	# mode_unit_size, D.19244
	movzbl	%cl, %eax	# D.19244, tmp80
	divb	%dl	# D.19244
	movzbl	%al, %eax	# D.19244, iftmp.475
	jmp	.L1077	#
.L1076:
	.loc 1 4934 0 discriminator 2
	movl	$0, %eax	#, iftmp.475
.L1077:
	.loc 1 4934 0 discriminator 3
	movl	%eax, -24(%rbp)	# iftmp.475, units
	.loc 1 4935 0 is_stmt 1 discriminator 3
	movl	-36(%rbp), %eax	# mode, mode.479
	cltq
	movl	inner_mode_array(,%rax,4), %eax	# inner_mode_array, tmp82
	movl	%eax, -20(%rbp)	# tmp82, inner
	.loc 1 4937 0 discriminator 3
	movl	-24(%rbp), %eax	# units, tmp83
	movl	%eax, %edi	# tmp83,
	call	rtvec_alloc	#
	movq	%rax, -16(%rbp)	# tmp84, v
	.loc 1 4940 0 discriminator 3
	movl	-20(%rbp), %eax	# inner, inner.480
	cltq
	movq	const_tiny_rtx(,%rax,8), %rax	# const_tiny_rtx, D.19245
	testq	%rax, %rax	# D.19245
	jne	.L1078	#,
	.loc 1 4941 0
	movl	$__FUNCTION__.14436, %edx	#,
	movl	$4941, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L1078:
	.loc 1 4943 0
	movl	$0, -28(%rbp)	#, i
	jmp	.L1079	#
.L1080:
	.loc 1 4944 0 discriminator 2
	movl	-20(%rbp), %eax	# inner, inner.481
	cltq
	movq	const_tiny_rtx(,%rax,8), %rcx	# const_tiny_rtx, D.19245
	movq	-16(%rbp), %rax	# v, tmp87
	movl	-28(%rbp), %edx	# i, tmp89
	movslq	%edx, %rdx	# tmp89, tmp88
	movq	%rcx, 8(%rax,%rdx,8)	# D.19245, v_16->elem
	.loc 1 4943 0 discriminator 2
	addl	$1, -28(%rbp)	#, i
.L1079:
	.loc 1 4943 0 is_stmt 0 discriminator 1
	movl	-28(%rbp), %eax	# i, tmp90
	cmpl	-24(%rbp), %eax	# units, tmp90
	jl	.L1080	#,
	.loc 1 4946 0 is_stmt 1
	movq	-16(%rbp), %rdx	# v, tmp91
	movl	-36(%rbp), %eax	# mode, tmp92
	movl	%eax, %esi	# tmp92,
	movl	$56, %edi	#,
	call	gen_rtx_fmt_E	#
	movq	%rax, -8(%rbp)	# tmp93, tem
	.loc 1 4947 0
	movq	-8(%rbp), %rax	# tem, D.19246
	.loc 1 4948 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE146:
	.size	gen_const_vector_0, .-gen_const_vector_0
	.section	.rodata
.LC3:
	.string	"0"
.LC4:
	.string	"1"
.LC5:
	.string	"2"
.LC6:
	.string	"-1"
	.text
	.globl	init_emit_once
	.type	init_emit_once, @function
init_emit_once:
.LFB147:
	.loc 1 4956 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$120, %rsp	#,
	.cfi_offset 3, -24
	movl	%edi, -84(%rbp)	# line_numbers, line_numbers
	.loc 1 4962 0
	movl	$0, %ecx	#,
	movl	$const_int_htab_eq, %edx	#,
	movl	$const_int_htab_hash, %esi	#,
	movl	$37, %edi	#,
	call	htab_create	#
	movq	%rax, const_int_htab(%rip)	# const_int_htab.482, const_int_htab
	.loc 1 4964 0
	movq	const_int_htab(%rip), %rax	# const_int_htab, const_int_htab.483
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# const_int_htab.483,
	call	ggc_add_deletable_htab	#
	.loc 1 4966 0
	movl	$0, %ecx	#,
	movl	$mem_attrs_htab_eq, %edx	#,
	movl	$mem_attrs_htab_hash, %esi	#,
	movl	$37, %edi	#,
	call	htab_create	#
	movq	%rax, mem_attrs_htab(%rip)	# mem_attrs_htab.484, mem_attrs_htab
	.loc 1 4968 0
	movq	mem_attrs_htab(%rip), %rax	# mem_attrs_htab, mem_attrs_htab.485
	movl	$mem_attrs_mark, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# mem_attrs_htab.485,
	call	ggc_add_deletable_htab	#
	.loc 1 4970 0
	cmpl	$0, -84(%rbp)	#, line_numbers
	sete	%al	#, D.19247
	movzbl	%al, %eax	# D.19247, no_line_numbers.486
	movl	%eax, no_line_numbers(%rip)	# no_line_numbers.486, no_line_numbers
	.loc 1 4974 0
	movl	$0, byte_mode(%rip)	#, byte_mode
	.loc 1 4975 0
	movl	$0, word_mode(%rip)	#, word_mode
	.loc 1 4976 0
	movl	$0, -60(%rbp)	#, double_mode
	.loc 1 4978 0
	movl	class_narrowest_mode+4(%rip), %eax	# class_narrowest_mode, tmp181
	movl	%eax, -64(%rbp)	# tmp181, mode
	jmp	.L1083	#
.L1088:
	.loc 1 4981 0
	movl	-64(%rbp), %eax	# mode, mode.487
	cltq
	movzwl	mode_bitsize(%rax,%rax), %eax	# mode_bitsize, D.19248
	cmpw	$8, %ax	#, D.19248
	jne	.L1084	#,
	.loc 1 4982 0
	movl	byte_mode(%rip), %eax	# byte_mode, byte_mode.488
	testl	%eax, %eax	# byte_mode.488
	jne	.L1084	#,
	.loc 1 4983 0
	movl	-64(%rbp), %eax	# mode, tmp183
	movl	%eax, byte_mode(%rip)	# tmp183, byte_mode
.L1084:
	.loc 1 4985 0
	movl	-64(%rbp), %eax	# mode, mode.489
	cltq
	movzwl	mode_bitsize(%rax,%rax), %eax	# mode_bitsize, D.19248
	movzwl	%ax, %edx	# D.19248, D.19249
	movl	target_flags(%rip), %eax	# target_flags, target_flags.491
	andl	$33554432, %eax	#, D.19249
	testl	%eax, %eax	# D.19249
	je	.L1085	#,
	.loc 1 4985 0 is_stmt 0 discriminator 1
	movl	$64, %eax	#, iftmp.490
	jmp	.L1086	#
.L1085:
	.loc 1 4985 0 discriminator 2
	movl	$32, %eax	#, iftmp.490
.L1086:
	.loc 1 4985 0 discriminator 3
	cmpl	%eax, %edx	# iftmp.490, D.19249
	jne	.L1087	#,
	.loc 1 4986 0 is_stmt 1
	movl	word_mode(%rip), %eax	# word_mode, word_mode.492
	testl	%eax, %eax	# word_mode.492
	jne	.L1087	#,
	.loc 1 4987 0
	movl	-64(%rbp), %eax	# mode, tmp185
	movl	%eax, word_mode(%rip)	# tmp185, word_mode
.L1087:
	.loc 1 4979 0
	movl	-64(%rbp), %eax	# mode, mode.493
	cltq
	movzbl	mode_wider_mode(%rax), %eax	# mode_wider_mode, D.19250
	movzbl	%al, %eax	# D.19250, tmp187
	movl	%eax, -64(%rbp)	# tmp187, mode
.L1083:
	.loc 1 4978 0 discriminator 1
	cmpl	$0, -64(%rbp)	#, mode
	jne	.L1088	#,
	.loc 1 4990 0
	movl	class_narrowest_mode+8(%rip), %eax	# class_narrowest_mode, tmp188
	movl	%eax, -64(%rbp)	# tmp188, mode
	jmp	.L1089	#
.L1091:
	.loc 1 4993 0
	movl	-64(%rbp), %eax	# mode, mode.494
	cltq
	movzwl	mode_bitsize(%rax,%rax), %eax	# mode_bitsize, D.19248
	cmpw	$64, %ax	#, D.19248
	jne	.L1090	#,
	.loc 1 4994 0
	cmpl	$0, -60(%rbp)	#, double_mode
	jne	.L1090	#,
	.loc 1 4995 0
	movl	-64(%rbp), %eax	# mode, tmp190
	movl	%eax, -60(%rbp)	# tmp190, double_mode
.L1090:
	.loc 1 4991 0
	movl	-64(%rbp), %eax	# mode, mode.495
	cltq
	movzbl	mode_wider_mode(%rax), %eax	# mode_wider_mode, D.19250
	movzbl	%al, %eax	# D.19250, tmp192
	movl	%eax, -64(%rbp)	# tmp192, mode
.L1089:
	.loc 1 4990 0 discriminator 1
	cmpl	$0, -64(%rbp)	#, mode
	jne	.L1091	#,
	.loc 1 4998 0
	movl	target_flags(%rip), %eax	# target_flags, target_flags.497
	andl	$33554432, %eax	#, D.19249
	testl	%eax, %eax	# D.19249
	je	.L1092	#,
	.loc 1 4998 0 is_stmt 0 discriminator 1
	movl	$5, %eax	#, iftmp.496
	jmp	.L1093	#
.L1092:
	.loc 1 4998 0 discriminator 2
	movl	$4, %eax	#, iftmp.496
.L1093:
	.loc 1 4998 0 discriminator 3
	cltq
	movl	mode_class(,%rax,4), %ecx	# mode_class, D.19251
	movl	target_flags(%rip), %eax	# target_flags, target_flags.499
	andl	$33554432, %eax	#, D.19249
	testl	%eax, %eax	# D.19249
	je	.L1094	#,
	.loc 1 4998 0 discriminator 1
	movl	$64, %eax	#, iftmp.498
	jmp	.L1095	#
.L1094:
	.loc 1 4998 0 discriminator 2
	movl	$32, %eax	#, iftmp.498
.L1095:
	.loc 1 4998 0 discriminator 3
	movl	$0, %edx	#,
	movl	%ecx, %esi	# D.19251,
	movl	%eax, %edi	# iftmp.498,
	call	mode_for_size	#
	movl	%eax, ptr_mode(%rip)	# ptr_mode.500, ptr_mode
	.loc 1 5004 0 is_stmt 1 discriminator 3
	movl	$0, %esi	#,
	movl	$59, %edi	#,
	movl	$0, %eax	#,
	call	gen_rtx	#
	movq	%rax, global_rtl(%rip)	# D.19252, global_rtl
	.loc 1 5005 0 discriminator 3
	movl	$0, %esi	#,
	movl	$69, %edi	#,
	movl	$0, %eax	#,
	call	gen_rtx	#
	movq	%rax, global_rtl+8(%rip)	# D.19252, global_rtl
	.loc 1 5006 0 discriminator 3
	movl	target_flags(%rip), %eax	# target_flags, target_flags.502
	andl	$33554432, %eax	#, D.19249
	testl	%eax, %eax	# D.19249
	je	.L1096	#,
	.loc 1 5006 0 is_stmt 0 discriminator 1
	movl	$5, %eax	#, iftmp.501
	jmp	.L1097	#
.L1096:
	.loc 1 5006 0 discriminator 2
	movl	$4, %eax	#, iftmp.501
.L1097:
	.loc 1 5006 0 discriminator 3
	movl	$7, %esi	#,
	movl	%eax, %edi	# iftmp.501,
	call	gen_raw_REG	#
	movq	%rax, global_rtl+16(%rip)	# D.19252, global_rtl
	.loc 1 5007 0 is_stmt 1 discriminator 3
	movl	target_flags(%rip), %eax	# target_flags, target_flags.504
	andl	$33554432, %eax	#, D.19249
	testl	%eax, %eax	# D.19249
	je	.L1098	#,
	.loc 1 5007 0 is_stmt 0 discriminator 1
	movl	$5, %eax	#, iftmp.503
	jmp	.L1099	#
.L1098:
	.loc 1 5007 0 discriminator 2
	movl	$4, %eax	#, iftmp.503
.L1099:
	.loc 1 5007 0 discriminator 3
	movl	$20, %esi	#,
	movl	%eax, %edi	# iftmp.503,
	call	gen_raw_REG	#
	movq	%rax, global_rtl+24(%rip)	# D.19252, global_rtl
	.loc 1 5008 0 is_stmt 1 discriminator 3
	movq	global_rtl+32(%rip), %rax	# global_rtl, D.19252
	testq	%rax, %rax	# D.19252
	jne	.L1100	#,
	.loc 1 5009 0
	movl	target_flags(%rip), %eax	# target_flags, target_flags.506
	andl	$33554432, %eax	#, D.19249
	testl	%eax, %eax	# D.19249
	je	.L1101	#,
	.loc 1 5009 0 is_stmt 0 discriminator 1
	movl	$5, %eax	#, iftmp.505
	jmp	.L1102	#
.L1101:
	.loc 1 5009 0 discriminator 2
	movl	$4, %eax	#, iftmp.505
.L1102:
	.loc 1 5009 0 discriminator 3
	movl	$6, %esi	#,
	movl	%eax, %edi	# iftmp.505,
	call	gen_raw_REG	#
	movq	%rax, global_rtl+32(%rip)	# D.19252, global_rtl
.L1100:
	.loc 1 5011 0 is_stmt 1
	movq	global_rtl+40(%rip), %rax	# global_rtl, D.19252
	testq	%rax, %rax	# D.19252
	jne	.L1103	#,
	.loc 1 5012 0
	movl	target_flags(%rip), %eax	# target_flags, target_flags.508
	andl	$33554432, %eax	#, D.19249
	testl	%eax, %eax	# D.19249
	je	.L1104	#,
	.loc 1 5012 0 is_stmt 0 discriminator 1
	movl	$5, %eax	#, iftmp.507
	jmp	.L1105	#
.L1104:
	.loc 1 5012 0 discriminator 2
	movl	$4, %eax	#, iftmp.507
.L1105:
	.loc 1 5012 0 discriminator 3
	movl	$16, %esi	#,
	movl	%eax, %edi	# iftmp.507,
	call	gen_raw_REG	#
	movq	%rax, global_rtl+40(%rip)	# D.19252, global_rtl
.L1103:
	.loc 1 5014 0 is_stmt 1
	movl	target_flags(%rip), %eax	# target_flags, target_flags.510
	andl	$33554432, %eax	#, D.19249
	testl	%eax, %eax	# D.19249
	je	.L1106	#,
	.loc 1 5014 0 is_stmt 0 discriminator 1
	movl	$5, %eax	#, iftmp.509
	jmp	.L1107	#
.L1106:
	.loc 1 5014 0 discriminator 2
	movl	$4, %eax	#, iftmp.509
.L1107:
	.loc 1 5014 0 discriminator 3
	movl	$53, %esi	#,
	movl	%eax, %edi	# iftmp.509,
	call	gen_raw_REG	#
	.loc 1 5013 0 is_stmt 1 discriminator 3
	movq	%rax, global_rtl+48(%rip)	# D.19252, global_rtl
	.loc 1 5016 0 discriminator 3
	movl	target_flags(%rip), %eax	# target_flags, target_flags.512
	andl	$33554432, %eax	#, D.19249
	testl	%eax, %eax	# D.19249
	je	.L1108	#,
	.loc 1 5016 0 is_stmt 0 discriminator 1
	movl	$5, %eax	#, iftmp.511
	jmp	.L1109	#
.L1108:
	.loc 1 5016 0 discriminator 2
	movl	$4, %eax	#, iftmp.511
.L1109:
	.loc 1 5016 0 discriminator 3
	movl	$54, %esi	#,
	movl	%eax, %edi	# iftmp.511,
	call	gen_raw_REG	#
	.loc 1 5015 0 is_stmt 1 discriminator 3
	movq	%rax, global_rtl+56(%rip)	# D.19252, global_rtl
	.loc 1 5018 0 discriminator 3
	movl	target_flags(%rip), %eax	# target_flags, target_flags.514
	andl	$33554432, %eax	#, D.19249
	testl	%eax, %eax	# D.19249
	je	.L1110	#,
	.loc 1 5018 0 is_stmt 0 discriminator 1
	movl	$5, %eax	#, iftmp.513
	jmp	.L1111	#
.L1110:
	.loc 1 5018 0 discriminator 2
	movl	$4, %eax	#, iftmp.513
.L1111:
	.loc 1 5018 0 discriminator 3
	movl	$55, %esi	#,
	movl	%eax, %edi	# iftmp.513,
	call	gen_raw_REG	#
	.loc 1 5017 0 is_stmt 1 discriminator 3
	movq	%rax, global_rtl+64(%rip)	# D.19252, global_rtl
	.loc 1 5020 0 discriminator 3
	movl	target_flags(%rip), %eax	# target_flags, target_flags.516
	andl	$33554432, %eax	#, D.19249
	testl	%eax, %eax	# D.19249
	je	.L1112	#,
	.loc 1 5020 0 is_stmt 0 discriminator 1
	movl	$5, %eax	#, iftmp.515
	jmp	.L1113	#
.L1112:
	.loc 1 5020 0 discriminator 2
	movl	$4, %eax	#, iftmp.515
.L1113:
	.loc 1 5020 0 discriminator 3
	movl	$56, %esi	#,
	movl	%eax, %edi	# iftmp.515,
	call	gen_raw_REG	#
	.loc 1 5019 0 is_stmt 1 discriminator 3
	movq	%rax, global_rtl+72(%rip)	# D.19252, global_rtl
	.loc 1 5021 0 discriminator 3
	movl	target_flags(%rip), %eax	# target_flags, target_flags.518
	andl	$33554432, %eax	#, D.19249
	testl	%eax, %eax	# D.19249
	je	.L1114	#,
	.loc 1 5021 0 is_stmt 0 discriminator 1
	movl	$5, %eax	#, iftmp.517
	jmp	.L1115	#
.L1114:
	.loc 1 5021 0 discriminator 2
	movl	$4, %eax	#, iftmp.517
.L1115:
	.loc 1 5021 0 discriminator 3
	movl	$57, %esi	#,
	movl	%eax, %edi	# iftmp.517,
	call	gen_raw_REG	#
	movq	%rax, global_rtl+80(%rip)	# D.19252, global_rtl
	.loc 1 5024 0 is_stmt 1 discriminator 3
	movl	$11, %esi	#,
	movl	$global_rtl, %edi	#,
	call	ggc_add_rtx_root	#
	.loc 1 5038 0 discriminator 3
	movl	$-64, -68(%rbp)	#, i
	jmp	.L1116	#
.L1117:
	.loc 1 5039 0 discriminator 2
	movl	-68(%rbp), %eax	# i, tmp194
	leal	64(%rax), %ebx	#, D.19249
	.loc 1 5040 0 discriminator 2
	movl	-68(%rbp), %eax	# i, tmp195
	cltq
	movq	%rax, %rdx	# D.19253,
	movl	$0, %esi	#,
	movl	$54, %edi	#,
	call	gen_rtx_fmt_w	#
	.loc 1 5039 0 discriminator 2
	movslq	%ebx, %rdx	# D.19249, tmp196
	movq	%rax, const_int_rtx(,%rdx,8)	# D.19252, const_int_rtx
	.loc 1 5038 0 discriminator 2
	addl	$1, -68(%rbp)	#, i
.L1116:
	.loc 1 5038 0 is_stmt 0 discriminator 1
	cmpl	$64, -68(%rbp)	#, i
	jle	.L1117	#,
	.loc 1 5041 0 is_stmt 1
	movl	$129, %esi	#,
	movl	$const_int_rtx, %edi	#,
	call	ggc_add_rtx_root	#
	.loc 1 5045 0
	movq	const_int_rtx+520(%rip), %rax	# const_int_rtx, const_true_rtx.519
	movq	%rax, const_true_rtx(%rip)	# const_true_rtx.519, const_true_rtx
	.loc 1 5049 0
	leaq	-128(%rbp), %rax	#, tmp197
	movl	-60(%rbp), %edx	# double_mode, tmp198
	movl	$.LC3, %esi	#,
	movq	%rax, %rdi	# tmp197,
	call	ereal_atof	#
	movq	-128(%rbp), %rax	#, tmp200
	movq	%rax, dconst0(%rip)	# tmp200, dconst0
	movq	-120(%rbp), %rax	#, tmp201
	movq	%rax, dconst0+8(%rip)	# tmp201, dconst0
	movq	-112(%rbp), %rax	#, tmp202
	movq	%rax, dconst0+16(%rip)	# tmp202, dconst0
	.loc 1 5050 0
	leaq	-128(%rbp), %rax	#, tmp203
	movl	-60(%rbp), %edx	# double_mode, tmp204
	movl	$.LC4, %esi	#,
	movq	%rax, %rdi	# tmp203,
	call	ereal_atof	#
	movq	-128(%rbp), %rax	#, tmp206
	movq	%rax, dconst1(%rip)	# tmp206, dconst1
	movq	-120(%rbp), %rax	#, tmp207
	movq	%rax, dconst1+8(%rip)	# tmp207, dconst1
	movq	-112(%rbp), %rax	#, tmp208
	movq	%rax, dconst1+16(%rip)	# tmp208, dconst1
	.loc 1 5051 0
	leaq	-128(%rbp), %rax	#, tmp209
	movl	-60(%rbp), %edx	# double_mode, tmp210
	movl	$.LC5, %esi	#,
	movq	%rax, %rdi	# tmp209,
	call	ereal_atof	#
	movq	-128(%rbp), %rax	#, tmp212
	movq	%rax, dconst2(%rip)	# tmp212, dconst2
	movq	-120(%rbp), %rax	#, tmp213
	movq	%rax, dconst2+8(%rip)	# tmp213, dconst2
	movq	-112(%rbp), %rax	#, tmp214
	movq	%rax, dconst2+16(%rip)	# tmp214, dconst2
	.loc 1 5052 0
	leaq	-128(%rbp), %rax	#, tmp215
	movl	-60(%rbp), %edx	# double_mode, tmp216
	movl	$.LC6, %esi	#,
	movq	%rax, %rdi	# tmp215,
	call	ereal_atof	#
	movq	-128(%rbp), %rax	#, tmp218
	movq	%rax, dconstm1(%rip)	# tmp218, dconstm1
	movq	-120(%rbp), %rax	#, tmp219
	movq	%rax, dconstm1+8(%rip)	# tmp219, dconstm1
	movq	-112(%rbp), %rax	#, tmp220
	movq	%rax, dconstm1+16(%rip)	# tmp220, dconstm1
	.loc 1 5054 0
	movl	$0, -68(%rbp)	#, i
	jmp	.L1118	#
.L1129:
	.loc 1 5056 0
	movl	class_narrowest_mode+8(%rip), %eax	# class_narrowest_mode, tmp221
	movl	%eax, -64(%rbp)	# tmp221, mode
	jmp	.L1119	#
.L1124:
.LBB61:
	.loc 1 5059 0
	movl	$55, %edi	#,
	call	rtx_alloc	#
	movq	%rax, -56(%rbp)	# tmp222, tem
	.loc 1 5063 0
	leaq	-48(%rbp), %rax	#, tmp223
	movl	$24, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp223,
	call	memset	#
	.loc 1 5064 0
	cmpl	$0, -68(%rbp)	#, i
	je	.L1120	#,
	.loc 1 5064 0 is_stmt 0 discriminator 1
	cmpl	$1, -68(%rbp)	#, i
	jne	.L1121	#,
	.loc 1 5064 0 discriminator 3
	movq	dconst1(%rip), %rax	# dconst1, tmp225
	movq	%rax, -48(%rbp)	# tmp225, u.d
	movq	dconst1+8(%rip), %rax	# dconst1, tmp226
	movq	%rax, -40(%rbp)	# tmp226, u.d
	movq	dconst1+16(%rip), %rax	# dconst1, tmp227
	movq	%rax, -32(%rbp)	# tmp227, u.d
	jmp	.L1147	#
.L1121:
	.loc 1 5064 0 discriminator 4
	movq	dconst2(%rip), %rax	# dconst2, tmp229
	movq	%rax, -48(%rbp)	# tmp229, u.d
	movq	dconst2+8(%rip), %rax	# dconst2, tmp230
	movq	%rax, -40(%rbp)	# tmp230, u.d
	movq	dconst2+16(%rip), %rax	# dconst2, tmp231
	movq	%rax, -32(%rbp)	# tmp231, u.d
	jmp	.L1147	#
.L1120:
	.loc 1 5064 0 discriminator 2
	movq	dconst0(%rip), %rax	# dconst0, tmp233
	movq	%rax, -48(%rbp)	# tmp233, u.d
	movq	dconst0+8(%rip), %rax	# dconst0, tmp234
	movq	%rax, -40(%rbp)	# tmp234, u.d
	movq	dconst0+16(%rip), %rax	# dconst0, tmp235
	movq	%rax, -32(%rbp)	# tmp235, u.d
.L1147:
	.loc 1 5072 0 is_stmt 1
	movq	-56(%rbp), %rax	# tem, tmp236
	leaq	16(%rax), %rcx	#, D.19254
	leaq	-48(%rbp), %rax	#, tmp237
	movl	$24, %edx	#,
	movq	%rax, %rsi	# tmp237,
	movq	%rcx, %rdi	# D.19254,
	call	memcpy	#
	.loc 1 5073 0
	movq	-56(%rbp), %rax	# tem, tmp238
	movq	$0, 8(%rax)	#, tem_126->fld[0].rtx
	.loc 1 5074 0
	movl	-64(%rbp), %eax	# mode, tmp239
	movl	%eax, %edx	# tmp239, D.19250
	movq	-56(%rbp), %rax	# tem, tmp240
	movb	%dl, 2(%rax)	# D.19250, tem_126->mode
	.loc 1 5076 0
	movl	-64(%rbp), %eax	# mode, mode.521
	movslq	%eax, %rsi	# mode.521, tmp241
	movl	-68(%rbp), %eax	# i, tmp243
	movslq	%eax, %rcx	# tmp243, tmp242
	movq	%rcx, %rdx	# tmp242, tmp244
	leaq	0(,%rdx,4), %rax	#, tmp245
	movq	%rax, %rdx	# tmp245, tmp244
	movq	%rdx, %rax	# tmp244, tmp246
	salq	$4, %rax	#, tmp246
	subq	%rdx, %rax	# tmp244, tmp246
	subq	%rcx, %rax	# tmp242, tmp246
	leaq	(%rax,%rsi), %rdx	#, tmp247
	movq	-56(%rbp), %rax	# tem, tmp248
	movq	%rax, const_tiny_rtx(,%rdx,8)	# tmp248, const_tiny_rtx
.LBE61:
	.loc 1 5057 0
	movl	-64(%rbp), %eax	# mode, mode.522
	cltq
	movzbl	mode_wider_mode(%rax), %eax	# mode_wider_mode, D.19250
	movzbl	%al, %eax	# D.19250, tmp250
	movl	%eax, -64(%rbp)	# tmp250, mode
.L1119:
	.loc 1 5056 0 discriminator 1
	cmpl	$0, -64(%rbp)	#, mode
	jne	.L1124	#,
	.loc 1 5079 0
	movl	-68(%rbp), %eax	# i, tmp251
	cltq
	movq	%rax, %rsi	# D.19253,
	movl	$0, %edi	#,
	call	gen_rtx_CONST_INT	#
	movl	-68(%rbp), %edx	# i, tmp253
	movslq	%edx, %rdx	# tmp253, tmp252
	imulq	$472, %rdx, %rdx	#, tmp252, tmp254
	addq	$const_tiny_rtx, %rdx	#, tmp255
	movq	%rax, (%rdx)	# D.19252, const_tiny_rtx
	.loc 1 5081 0
	movl	class_narrowest_mode+4(%rip), %eax	# class_narrowest_mode, tmp256
	movl	%eax, -64(%rbp)	# tmp256, mode
	jmp	.L1125	#
.L1126:
	.loc 1 5083 0
	movl	-64(%rbp), %ebx	# mode, mode.523
	movl	-68(%rbp), %eax	# i, tmp257
	cltq
	movq	%rax, %rsi	# D.19253,
	movl	$0, %edi	#,
	call	gen_rtx_CONST_INT	#
	movq	%rax, %rsi	#, D.19252
	movslq	%ebx, %rdi	# mode.523, tmp258
	movl	-68(%rbp), %eax	# i, tmp260
	movslq	%eax, %rcx	# tmp260, tmp259
	movq	%rcx, %rdx	# tmp259, tmp261
	leaq	0(,%rdx,4), %rax	#, tmp262
	movq	%rax, %rdx	# tmp262, tmp261
	movq	%rdx, %rax	# tmp261, tmp263
	salq	$4, %rax	#, tmp263
	subq	%rdx, %rax	# tmp261, tmp263
	subq	%rcx, %rax	# tmp259, tmp263
	addq	%rdi, %rax	# tmp258, tmp264
	movq	%rsi, const_tiny_rtx(,%rax,8)	# D.19252, const_tiny_rtx
	.loc 1 5082 0
	movl	-64(%rbp), %eax	# mode, mode.524
	cltq
	movzbl	mode_wider_mode(%rax), %eax	# mode_wider_mode, D.19250
	movzbl	%al, %eax	# D.19250, tmp266
	movl	%eax, -64(%rbp)	# tmp266, mode
.L1125:
	.loc 1 5081 0 discriminator 1
	cmpl	$0, -64(%rbp)	#, mode
	jne	.L1126	#,
	.loc 1 5085 0
	movl	class_narrowest_mode+12(%rip), %eax	# class_narrowest_mode, tmp267
	movl	%eax, -64(%rbp)	# tmp267, mode
	jmp	.L1127	#
.L1128:
	.loc 1 5088 0
	movl	-64(%rbp), %ebx	# mode, mode.525
	movl	-68(%rbp), %eax	# i, tmp268
	cltq
	movq	%rax, %rsi	# D.19253,
	movl	$0, %edi	#,
	call	gen_rtx_CONST_INT	#
	movq	%rax, %rsi	#, D.19252
	movslq	%ebx, %rdi	# mode.525, tmp269
	movl	-68(%rbp), %eax	# i, tmp271
	movslq	%eax, %rcx	# tmp271, tmp270
	movq	%rcx, %rdx	# tmp270, tmp272
	leaq	0(,%rdx,4), %rax	#, tmp273
	movq	%rax, %rdx	# tmp273, tmp272
	movq	%rdx, %rax	# tmp272, tmp274
	salq	$4, %rax	#, tmp274
	subq	%rdx, %rax	# tmp272, tmp274
	subq	%rcx, %rax	# tmp270, tmp274
	addq	%rdi, %rax	# tmp269, tmp275
	movq	%rsi, const_tiny_rtx(,%rax,8)	# D.19252, const_tiny_rtx
	.loc 1 5087 0
	movl	-64(%rbp), %eax	# mode, mode.526
	cltq
	movzbl	mode_wider_mode(%rax), %eax	# mode_wider_mode, D.19250
	movzbl	%al, %eax	# D.19250, tmp277
	movl	%eax, -64(%rbp)	# tmp277, mode
.L1127:
	.loc 1 5085 0 discriminator 1
	cmpl	$0, -64(%rbp)	#, mode
	jne	.L1128	#,
	.loc 1 5054 0
	addl	$1, -68(%rbp)	#, i
.L1118:
	.loc 1 5054 0 is_stmt 0 discriminator 1
	cmpl	$2, -68(%rbp)	#, i
	jle	.L1129	#,
	.loc 1 5091 0 is_stmt 1
	movl	class_narrowest_mode+28(%rip), %eax	# class_narrowest_mode, tmp278
	movl	%eax, -64(%rbp)	# tmp278, mode
	jmp	.L1130	#
.L1131:
	.loc 1 5094 0
	movl	-64(%rbp), %ebx	# mode, mode.527
	movl	-64(%rbp), %eax	# mode, tmp279
	movl	%eax, %edi	# tmp279,
	call	gen_const_vector_0	#
	movslq	%ebx, %rdx	# mode.527, tmp280
	movq	%rax, const_tiny_rtx(,%rdx,8)	# D.19252, const_tiny_rtx
	.loc 1 5093 0
	movl	-64(%rbp), %eax	# mode, mode.528
	cltq
	movzbl	mode_wider_mode(%rax), %eax	# mode_wider_mode, D.19250
	movzbl	%al, %eax	# D.19250, tmp282
	movl	%eax, -64(%rbp)	# tmp282, mode
.L1130:
	.loc 1 5091 0 discriminator 1
	cmpl	$0, -64(%rbp)	#, mode
	jne	.L1131	#,
	.loc 1 5096 0
	movl	class_narrowest_mode+32(%rip), %eax	# class_narrowest_mode, tmp283
	movl	%eax, -64(%rbp)	# tmp283, mode
	jmp	.L1132	#
.L1133:
	.loc 1 5099 0
	movl	-64(%rbp), %ebx	# mode, mode.529
	movl	-64(%rbp), %eax	# mode, tmp284
	movl	%eax, %edi	# tmp284,
	call	gen_const_vector_0	#
	movslq	%ebx, %rdx	# mode.529, tmp285
	movq	%rax, const_tiny_rtx(,%rdx,8)	# D.19252, const_tiny_rtx
	.loc 1 5098 0
	movl	-64(%rbp), %eax	# mode, mode.530
	cltq
	movzbl	mode_wider_mode(%rax), %eax	# mode_wider_mode, D.19250
	movzbl	%al, %eax	# D.19250, tmp287
	movl	%eax, -64(%rbp)	# tmp287, mode
.L1132:
	.loc 1 5096 0 discriminator 1
	cmpl	$0, -64(%rbp)	#, mode
	jne	.L1133	#,
	.loc 1 5101 0
	movl	$52, -68(%rbp)	#, i
	jmp	.L1134	#
.L1136:
	.loc 1 5102 0
	movl	-68(%rbp), %eax	# i, tmp289
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.19251
	cmpl	$4, %eax	#, D.19251
	jne	.L1135	#,
	.loc 1 5103 0
	movq	const_int_rtx+512(%rip), %rdx	# const_int_rtx, D.19252
	movl	-68(%rbp), %eax	# i, tmp291
	cltq
	movq	%rdx, const_tiny_rtx(,%rax,8)	# D.19252, const_tiny_rtx
.L1135:
	.loc 1 5101 0
	addl	$1, -68(%rbp)	#, i
.L1134:
	.loc 1 5101 0 is_stmt 0 discriminator 1
	cmpl	$58, -68(%rbp)	#, i
	jle	.L1136	#,
	.loc 1 5105 0 is_stmt 1
	movq	const_int_rtx+512(%rip), %rax	# const_int_rtx, D.19252
	movq	%rax, const_tiny_rtx+8(%rip)	# D.19252, const_tiny_rtx
	.loc 1 5107 0
	movq	const_int_rtx+520(%rip), %rax	# const_int_rtx, D.19252
	movq	%rax, const_tiny_rtx+480(%rip)	# D.19252, const_tiny_rtx
	.loc 1 5112 0
	movl	$177, %esi	#,
	movl	$const_tiny_rtx, %edi	#,
	call	ggc_add_rtx_root	#
	.loc 1 5113 0
	movl	$1, %esi	#,
	movl	$const_true_rtx, %edi	#,
	call	ggc_add_rtx_root	#
	.loc 1 5121 0
	movq	$0, struct_value_rtx(%rip)	#, struct_value_rtx
	.loc 1 5127 0
	movq	$0, struct_value_incoming_rtx(%rip)	#, struct_value_incoming_rtx
	.loc 1 5138 0
	movl	target_flags(%rip), %eax	# target_flags, target_flags.532
	andl	$33554432, %eax	#, D.19249
	testl	%eax, %eax	# D.19249
	je	.L1137	#,
	.loc 1 5138 0 is_stmt 0 discriminator 1
	movl	$39, %edx	#, iftmp.531
	jmp	.L1138	#
.L1137:
	.loc 1 5138 0 discriminator 2
	movl	$2, %edx	#, iftmp.531
.L1138:
	.loc 1 5138 0 discriminator 3
	movl	target_flags(%rip), %eax	# target_flags, target_flags.534
	andl	$33554432, %eax	#, D.19249
	testl	%eax, %eax	# D.19249
	je	.L1139	#,
	.loc 1 5138 0 discriminator 4
	movl	$5, %eax	#, iftmp.533
	jmp	.L1140	#
.L1139:
	.loc 1 5138 0 discriminator 5
	movl	$4, %eax	#, iftmp.533
.L1140:
	.loc 1 5138 0 discriminator 6
	movl	%edx, %esi	# iftmp.531,
	movl	%eax, %edi	# iftmp.533,
	call	gen_rtx_REG	#
	movq	%rax, static_chain_rtx(%rip)	# static_chain_rtx.535, static_chain_rtx
	.loc 1 5146 0 is_stmt 1 discriminator 6
	movq	static_chain_rtx(%rip), %rax	# static_chain_rtx, static_chain_rtx.536
	movq	%rax, static_chain_incoming_rtx(%rip)	# static_chain_rtx.536, static_chain_incoming_rtx
	.loc 1 5159 0 discriminator 6
	movl	target_flags(%rip), %eax	# target_flags, target_flags.537
	andl	$33554432, %eax	#, D.19249
	testl	%eax, %eax	# D.19249
	jne	.L1141	#,
	.loc 1 5159 0 is_stmt 0 discriminator 1
	movl	flag_pic(%rip), %eax	# flag_pic, flag_pic.538
	testl	%eax, %eax	# flag_pic.538
	je	.L1141	#,
	.loc 1 5160 0 is_stmt 1
	movl	target_flags(%rip), %eax	# target_flags, target_flags.540
	andl	$33554432, %eax	#, D.19249
	testl	%eax, %eax	# D.19249
	jne	.L1142	#,
	.loc 1 5160 0 is_stmt 0 discriminator 2
	movl	flag_pic(%rip), %eax	# flag_pic, flag_pic.541
	testl	%eax, %eax	# flag_pic.541
	jne	.L1143	#,
.L1142:
	.loc 1 5160 0 discriminator 1
	movl	$-1, %edx	#, iftmp.539
	jmp	.L1144	#
.L1143:
	movl	$3, %edx	#, iftmp.539
.L1144:
	.loc 1 5160 0 discriminator 3
	movl	target_flags(%rip), %eax	# target_flags, target_flags.543
	andl	$33554432, %eax	#, D.19249
	testl	%eax, %eax	# D.19249
	je	.L1145	#,
	.loc 1 5160 0 discriminator 4
	movl	$5, %eax	#, iftmp.542
	jmp	.L1146	#
.L1145:
	.loc 1 5160 0 discriminator 5
	movl	$4, %eax	#, iftmp.542
.L1146:
	.loc 1 5160 0 discriminator 6
	movl	%edx, %esi	# iftmp.539,
	movl	%eax, %edi	# iftmp.542,
	call	gen_raw_REG	#
	movq	%rax, pic_offset_table_rtx(%rip)	# pic_offset_table_rtx.544, pic_offset_table_rtx
.L1141:
	.loc 1 5162 0 is_stmt 1
	movl	$1, %esi	#,
	movl	$pic_offset_table_rtx, %edi	#,
	call	ggc_add_rtx_root	#
	.loc 1 5163 0
	movl	$1, %esi	#,
	movl	$struct_value_rtx, %edi	#,
	call	ggc_add_rtx_root	#
	.loc 1 5164 0
	movl	$1, %esi	#,
	movl	$struct_value_incoming_rtx, %edi	#,
	call	ggc_add_rtx_root	#
	.loc 1 5165 0
	movl	$1, %esi	#,
	movl	$static_chain_rtx, %edi	#,
	call	ggc_add_rtx_root	#
	.loc 1 5166 0
	movl	$1, %esi	#,
	movl	$static_chain_incoming_rtx, %edi	#,
	call	ggc_add_rtx_root	#
	.loc 1 5167 0
	movl	$1, %esi	#,
	movl	$return_address_pointer_rtx, %edi	#,
	call	ggc_add_rtx_root	#
	.loc 1 5168 0
	addq	$120, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE147:
	.size	init_emit_once, .-init_emit_once
	.globl	force_line_numbers
	.type	force_line_numbers, @function
force_line_numbers:
.LFB148:
	.loc 1 5176 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	.loc 1 5177 0
	movl	no_line_numbers(%rip), %eax	# no_line_numbers, tmp61
	movl	%eax, -4(%rbp)	# tmp61, old
	.loc 1 5179 0
	movl	$0, no_line_numbers(%rip)	#, no_line_numbers
	.loc 1 5180 0
	cmpl	$0, -4(%rbp)	#, old
	je	.L1149	#,
	.loc 1 5181 0
	call	force_next_line_note	#
.L1149:
	.loc 1 5182 0
	movl	-4(%rbp), %eax	# old, D.19263
	.loc 1 5183 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE148:
	.size	force_line_numbers, .-force_line_numbers
	.globl	restore_line_number_status
	.type	restore_line_number_status, @function
restore_line_number_status:
.LFB149:
	.loc 1 5188 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)	# old_value, old_value
	.loc 1 5189 0
	movl	-4(%rbp), %eax	# old_value, tmp59
	movl	%eax, no_line_numbers(%rip)	# tmp59, no_line_numbers
	.loc 1 5190 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE149:
	.size	restore_line_number_status, .-restore_line_number_status
	.section	.rodata
	.type	__FUNCTION__.13357, @object
	.size	__FUNCTION__.13357, 15
__FUNCTION__.13357:
	.string	"gen_rtx_SUBREG"
	.type	__FUNCTION__.13391, @object
	.size	__FUNCTION__.13391, 8
__FUNCTION__.13391:
	.string	"gen_rtx"
	.type	__FUNCTION__.13420, @object
	.size	__FUNCTION__.13420, 12
__FUNCTION__.13420:
	.string	"gen_reg_rtx"
	.type	__FUNCTION__.13432, @object
	.size	__FUNCTION__.13432, 14
__FUNCTION__.13432:
	.string	"mark_user_reg"
	.align 16
	.type	__FUNCTION__.13452, @object
	.size	__FUNCTION__.13452, 18
__FUNCTION__.13452:
	.string	"subreg_hard_regno"
	.align 16
	.type	__FUNCTION__.13475, @object
	.size	__FUNCTION__.13475, 19
__FUNCTION__.13475:
	.string	"gen_lowpart_common"
	.align 16
	.type	__FUNCTION__.13489, @object
	.size	__FUNCTION__.13489, 18
__FUNCTION__.13489:
	.string	"subreg_realpart_p"
	.type	__FUNCTION__.13495, @object
	.size	__FUNCTION__.13495, 12
__FUNCTION__.13495:
	.string	"gen_lowpart"
	.type	__FUNCTION__.13503, @object
	.size	__FUNCTION__.13503, 13
__FUNCTION__.13503:
	.string	"gen_highpart"
	.align 16
	.type	__FUNCTION__.13509, @object
	.size	__FUNCTION__.13509, 18
__FUNCTION__.13509:
	.string	"gen_highpart_mode"
	.align 16
	.type	__FUNCTION__.13522, @object
	.size	__FUNCTION__.13522, 23
__FUNCTION__.13522:
	.string	"subreg_highpart_offset"
	.align 16
	.type	__FUNCTION__.13536, @object
	.size	__FUNCTION__.13536, 17
__FUNCTION__.13536:
	.string	"constant_subword"
	.align 16
	.type	__FUNCTION__.13549, @object
	.size	__FUNCTION__.13549, 16
__FUNCTION__.13549:
	.string	"operand_subword"
	.align 16
	.type	__FUNCTION__.13557, @object
	.size	__FUNCTION__.13557, 22
__FUNCTION__.13557:
	.string	"operand_subword_force"
	.align 16
	.type	__FUNCTION__.13585, @object
	.size	__FUNCTION__.13585, 19
__FUNCTION__.13585:
	.string	"set_mem_attributes"
	.align 16
	.type	__FUNCTION__.13615, @object
	.size	__FUNCTION__.13615, 17
__FUNCTION__.13615:
	.string	"change_address_1"
	.type	__FUNCTION__.13775, @object
	.size	__FUNCTION__.13775, 14
__FUNCTION__.13775:
	.string	"copy_most_rtx"
	.type	__FUNCTION__.13871, @object
	.size	__FUNCTION__.13871, 14
__FUNCTION__.13871:
	.string	"set_last_insn"
	.type	__FUNCTION__.13975, @object
	.size	__FUNCTION__.13975, 10
__FUNCTION__.13975:
	.string	"try_split"
	.type	__FUNCTION__.14031, @object
	.size	__FUNCTION__.14031, 15
__FUNCTION__.14031:
	.string	"add_insn_after"
	.align 16
	.type	__FUNCTION__.14043, @object
	.size	__FUNCTION__.14043, 16
__FUNCTION__.14043:
	.string	"add_insn_before"
	.type	__FUNCTION__.14060, @object
	.size	__FUNCTION__.14060, 12
__FUNCTION__.14060:
	.string	"remove_insn"
	.align 16
	.type	__FUNCTION__.14111, @object
	.size	__FUNCTION__.14111, 25
__FUNCTION__.14111:
	.string	"remove_unnecessary_notes"
	.align 16
	.type	__FUNCTION__.14226, @object
	.size	__FUNCTION__.14226, 17
__FUNCTION__.14226:
	.string	"emit_insns_after"
	.align 16
	.type	__FUNCTION__.14271, @object
	.size	__FUNCTION__.14271, 20
__FUNCTION__.14271:
	.string	"set_unique_reg_note"
	.type	__FUNCTION__.14286, @object
	.size	__FUNCTION__.14286, 5
__FUNCTION__.14286:
	.string	"emit"
	.align 16
	.type	__FUNCTION__.14304, @object
	.size	__FUNCTION__.14304, 22
__FUNCTION__.14304:
	.string	"push_to_full_sequence"
	.type	__FUNCTION__.14397, @object
	.size	__FUNCTION__.14397, 12
__FUNCTION__.14397:
	.string	"copy_insn_1"
	.align 16
	.type	__FUNCTION__.14436, @object
	.size	__FUNCTION__.14436, 19
__FUNCTION__.14436:
	.string	"gen_const_vector_0"
	.text
.Letext0:
	.file 2 "rtl.h"
	.file 3 "config.h"
	.file 4 "tree.h"
	.file 5 "i386.h"
	.file 6 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stdarg.h"
	.file 7 "<built-in>"
	.file 8 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.file 9 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 10 "/usr/include/stdio.h"
	.file 11 "/usr/include/libio.h"
	.file 12 "machmode.h"
	.file 13 "bitmap.h"
	.file 14 "basic-block.h"
	.file 15 "real.h"
	.file 16 "hashtable.h"
	.file 17 "function.h"
	.file 18 "varray.h"
	.file 19 "regs.h"
	.file 20 "hashtab.h"
	.file 21 "debug.h"
	.file 22 "langhooks.h"
	.file 23 "flags.h"
	.file 24 "hard-reg-set.h"
	.file 25 "ggc.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x711f
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF1391
	.byte	0x1
	.long	.LASF1392
	.long	.LASF1393
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
	.long	0x363
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.long	.LASF1
	.byte	0x2
	.byte	0x80
	.long	0x363
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.long	.LASF2
	.byte	0x2
	.byte	0x87
	.long	0x363
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0x5
	.long	.LASF3
	.byte	0x2
	.byte	0x8a
	.long	0x363
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0x5
	.long	.LASF4
	.byte	0x2
	.byte	0x95
	.long	0x363
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0x5
	.long	.LASF5
	.byte	0x2
	.byte	0x9d
	.long	0x363
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.long	.LASF6
	.byte	0x2
	.byte	0xaf
	.long	0x363
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.long	.LASF7
	.byte	0x2
	.byte	0xb6
	.long	0x363
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.long	.LASF8
	.byte	0x2
	.byte	0xbb
	.long	0x363
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.long	.LASF9
	.byte	0x2
	.byte	0xc4
	.long	0x363
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x6
	.string	"fld"
	.byte	0x2
	.byte	0xc9
	.long	0xe6c
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
	.long	0x1de
	.byte	0
	.uleb128 0x8
	.long	.LASF14
	.byte	0x2
	.byte	0xe0
	.long	0xe7c
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
	.long	.LASF333
	.byte	0xd0
	.byte	0x4
	.value	0x744
	.long	0x1de
	.uleb128 0xa
	.long	.LASF16
	.byte	0x4
	.value	0x746
	.long	0x169f
	.uleb128 0xa
	.long	.LASF17
	.byte	0x4
	.value	0x747
	.long	0x185f
	.uleb128 0xa
	.long	.LASF18
	.byte	0x4
	.value	0x748
	.long	0x18e4
	.uleb128 0xa
	.long	.LASF19
	.byte	0x4
	.value	0x749
	.long	0x199d
	.uleb128 0xa
	.long	.LASF20
	.byte	0x4
	.value	0x74a
	.long	0x1919
	.uleb128 0xa
	.long	.LASF21
	.byte	0x4
	.value	0x74b
	.long	0x195b
	.uleb128 0xa
	.long	.LASF22
	.byte	0x4
	.value	0x74c
	.long	0x1a02
	.uleb128 0xa
	.long	.LASF23
	.byte	0x4
	.value	0x74d
	.long	0x22bb
	.uleb128 0xa
	.long	.LASF24
	.byte	0x4
	.value	0x74e
	.long	0x1b91
	.uleb128 0xa
	.long	.LASF25
	.byte	0x4
	.value	0x74f
	.long	0x1a29
	.uleb128 0xb
	.string	"vec"
	.byte	0x4
	.value	0x750
	.long	0x1a5e
	.uleb128 0xb
	.string	"exp"
	.byte	0x4
	.value	0x751
	.long	0x1aa1
	.uleb128 0xa
	.long	.LASF26
	.byte	0x4
	.value	0x752
	.long	0x1ad6
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0xd
	.byte	0x8
	.byte	0x7
	.long	.LASF27
	.uleb128 0xe
	.long	.LASF118
	.byte	0x4
	.byte	0x5
	.value	0x4b2
	.long	0x296
	.uleb128 0xf
	.long	.LASF28
	.sleb128 0
	.uleb128 0xf
	.long	.LASF29
	.sleb128 1
	.uleb128 0xf
	.long	.LASF30
	.sleb128 2
	.uleb128 0xf
	.long	.LASF31
	.sleb128 3
	.uleb128 0xf
	.long	.LASF32
	.sleb128 4
	.uleb128 0xf
	.long	.LASF33
	.sleb128 5
	.uleb128 0xf
	.long	.LASF34
	.sleb128 6
	.uleb128 0xf
	.long	.LASF35
	.sleb128 7
	.uleb128 0xf
	.long	.LASF36
	.sleb128 8
	.uleb128 0xf
	.long	.LASF37
	.sleb128 9
	.uleb128 0xf
	.long	.LASF38
	.sleb128 10
	.uleb128 0xf
	.long	.LASF39
	.sleb128 11
	.uleb128 0xf
	.long	.LASF40
	.sleb128 12
	.uleb128 0xf
	.long	.LASF41
	.sleb128 13
	.uleb128 0xf
	.long	.LASF42
	.sleb128 14
	.uleb128 0xf
	.long	.LASF43
	.sleb128 15
	.uleb128 0xf
	.long	.LASF44
	.sleb128 16
	.uleb128 0xf
	.long	.LASF45
	.sleb128 17
	.uleb128 0xf
	.long	.LASF46
	.sleb128 18
	.uleb128 0xf
	.long	.LASF47
	.sleb128 19
	.uleb128 0xf
	.long	.LASF48
	.sleb128 20
	.uleb128 0xf
	.long	.LASF49
	.sleb128 21
	.uleb128 0xf
	.long	.LASF50
	.sleb128 22
	.uleb128 0xf
	.long	.LASF51
	.sleb128 23
	.uleb128 0xf
	.long	.LASF52
	.sleb128 24
	.uleb128 0xf
	.long	.LASF53
	.sleb128 25
	.byte	0
	.uleb128 0x10
	.long	.LASF54
	.byte	0x1c
	.byte	0x5
	.value	0x683
	.long	0x2ff
	.uleb128 0x11
	.long	.LASF55
	.byte	0x5
	.value	0x684
	.long	0x1de
	.byte	0
	.uleb128 0x11
	.long	.LASF56
	.byte	0x5
	.value	0x685
	.long	0x1de
	.byte	0x4
	.uleb128 0x11
	.long	.LASF57
	.byte	0x5
	.value	0x686
	.long	0x1de
	.byte	0x8
	.uleb128 0x11
	.long	.LASF58
	.byte	0x5
	.value	0x687
	.long	0x1de
	.byte	0xc
	.uleb128 0x11
	.long	.LASF59
	.byte	0x5
	.value	0x688
	.long	0x1de
	.byte	0x10
	.uleb128 0x11
	.long	.LASF60
	.byte	0x5
	.value	0x689
	.long	0x1de
	.byte	0x14
	.uleb128 0x11
	.long	.LASF61
	.byte	0x5
	.value	0x68a
	.long	0x1de
	.byte	0x18
	.byte	0
	.uleb128 0x12
	.long	.LASF62
	.byte	0x5
	.value	0x68b
	.long	0x296
	.uleb128 0x7
	.long	.LASF63
	.byte	0x6
	.byte	0x28
	.long	0x316
	.uleb128 0x13
	.long	0x326
	.long	0x326
	.uleb128 0x14
	.long	0x1e5
	.byte	0
	.byte	0
	.uleb128 0x4
	.long	.LASF64
	.byte	0x18
	.byte	0x7
	.byte	0
	.long	0x363
	.uleb128 0x8
	.long	.LASF65
	.byte	0x7
	.byte	0
	.long	0x363
	.byte	0
	.uleb128 0x8
	.long	.LASF66
	.byte	0x7
	.byte	0
	.long	0x363
	.byte	0x4
	.uleb128 0x8
	.long	.LASF67
	.byte	0x7
	.byte	0
	.long	0x36a
	.byte	0x8
	.uleb128 0x8
	.long	.LASF68
	.byte	0x7
	.byte	0
	.long	0x36a
	.byte	0x10
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.long	.LASF69
	.uleb128 0x15
	.byte	0x8
	.uleb128 0x7
	.long	.LASF70
	.byte	0x6
	.byte	0x62
	.long	0x30b
	.uleb128 0xd
	.byte	0x8
	.byte	0x5
	.long	.LASF71
	.uleb128 0x7
	.long	.LASF72
	.byte	0x8
	.byte	0xd4
	.long	0x389
	.uleb128 0xd
	.byte	0x8
	.byte	0x7
	.long	.LASF73
	.uleb128 0xd
	.byte	0x1
	.byte	0x8
	.long	.LASF74
	.uleb128 0xd
	.byte	0x2
	.byte	0x7
	.long	.LASF75
	.uleb128 0xd
	.byte	0x1
	.byte	0x6
	.long	.LASF76
	.uleb128 0xd
	.byte	0x2
	.byte	0x5
	.long	.LASF77
	.uleb128 0x7
	.long	.LASF78
	.byte	0x9
	.byte	0x8c
	.long	0x377
	.uleb128 0x7
	.long	.LASF79
	.byte	0x9
	.byte	0x8d
	.long	0x377
	.uleb128 0x3
	.byte	0x8
	.long	0x3c8
	.uleb128 0xd
	.byte	0x1
	.byte	0x6
	.long	.LASF80
	.uleb128 0x7
	.long	.LASF81
	.byte	0xa
	.byte	0x30
	.long	0x3da
	.uleb128 0x4
	.long	.LASF82
	.byte	0xd8
	.byte	0xb
	.byte	0xf6
	.long	0x55b
	.uleb128 0x8
	.long	.LASF83
	.byte	0xb
	.byte	0xf7
	.long	0x1de
	.byte	0
	.uleb128 0x8
	.long	.LASF84
	.byte	0xb
	.byte	0xfc
	.long	0x3c2
	.byte	0x8
	.uleb128 0x8
	.long	.LASF85
	.byte	0xb
	.byte	0xfd
	.long	0x3c2
	.byte	0x10
	.uleb128 0x8
	.long	.LASF86
	.byte	0xb
	.byte	0xfe
	.long	0x3c2
	.byte	0x18
	.uleb128 0x8
	.long	.LASF87
	.byte	0xb
	.byte	0xff
	.long	0x3c2
	.byte	0x20
	.uleb128 0x11
	.long	.LASF88
	.byte	0xb
	.value	0x100
	.long	0x3c2
	.byte	0x28
	.uleb128 0x11
	.long	.LASF89
	.byte	0xb
	.value	0x101
	.long	0x3c2
	.byte	0x30
	.uleb128 0x11
	.long	.LASF90
	.byte	0xb
	.value	0x102
	.long	0x3c2
	.byte	0x38
	.uleb128 0x11
	.long	.LASF91
	.byte	0xb
	.value	0x103
	.long	0x3c2
	.byte	0x40
	.uleb128 0x11
	.long	.LASF92
	.byte	0xb
	.value	0x105
	.long	0x3c2
	.byte	0x48
	.uleb128 0x11
	.long	.LASF93
	.byte	0xb
	.value	0x106
	.long	0x3c2
	.byte	0x50
	.uleb128 0x11
	.long	.LASF94
	.byte	0xb
	.value	0x107
	.long	0x3c2
	.byte	0x58
	.uleb128 0x11
	.long	.LASF95
	.byte	0xb
	.value	0x109
	.long	0x593
	.byte	0x60
	.uleb128 0x11
	.long	.LASF96
	.byte	0xb
	.value	0x10b
	.long	0x599
	.byte	0x68
	.uleb128 0x11
	.long	.LASF97
	.byte	0xb
	.value	0x10d
	.long	0x1de
	.byte	0x70
	.uleb128 0x11
	.long	.LASF98
	.byte	0xb
	.value	0x111
	.long	0x1de
	.byte	0x74
	.uleb128 0x11
	.long	.LASF99
	.byte	0xb
	.value	0x113
	.long	0x3ac
	.byte	0x78
	.uleb128 0x11
	.long	.LASF100
	.byte	0xb
	.value	0x117
	.long	0x397
	.byte	0x80
	.uleb128 0x11
	.long	.LASF101
	.byte	0xb
	.value	0x118
	.long	0x39e
	.byte	0x82
	.uleb128 0x11
	.long	.LASF102
	.byte	0xb
	.value	0x119
	.long	0x59f
	.byte	0x83
	.uleb128 0x11
	.long	.LASF103
	.byte	0xb
	.value	0x11d
	.long	0x5af
	.byte	0x88
	.uleb128 0x11
	.long	.LASF104
	.byte	0xb
	.value	0x126
	.long	0x3b7
	.byte	0x90
	.uleb128 0x11
	.long	.LASF105
	.byte	0xb
	.value	0x12f
	.long	0x36a
	.byte	0x98
	.uleb128 0x11
	.long	.LASF106
	.byte	0xb
	.value	0x130
	.long	0x36a
	.byte	0xa0
	.uleb128 0x11
	.long	.LASF107
	.byte	0xb
	.value	0x131
	.long	0x36a
	.byte	0xa8
	.uleb128 0x11
	.long	.LASF108
	.byte	0xb
	.value	0x132
	.long	0x36a
	.byte	0xb0
	.uleb128 0x11
	.long	.LASF109
	.byte	0xb
	.value	0x133
	.long	0x37e
	.byte	0xb8
	.uleb128 0x11
	.long	.LASF110
	.byte	0xb
	.value	0x135
	.long	0x1de
	.byte	0xc0
	.uleb128 0x11
	.long	.LASF111
	.byte	0xb
	.value	0x137
	.long	0x5b5
	.byte	0xc4
	.byte	0
	.uleb128 0x16
	.long	.LASF1394
	.byte	0xb
	.byte	0x9b
	.uleb128 0x4
	.long	.LASF112
	.byte	0x18
	.byte	0xb
	.byte	0xa1
	.long	0x593
	.uleb128 0x8
	.long	.LASF113
	.byte	0xb
	.byte	0xa2
	.long	0x593
	.byte	0
	.uleb128 0x8
	.long	.LASF114
	.byte	0xb
	.byte	0xa3
	.long	0x599
	.byte	0x8
	.uleb128 0x8
	.long	.LASF115
	.byte	0xb
	.byte	0xa7
	.long	0x1de
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x562
	.uleb128 0x3
	.byte	0x8
	.long	0x3da
	.uleb128 0x13
	.long	0x3c8
	.long	0x5af
	.uleb128 0x14
	.long	0x1e5
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x55b
	.uleb128 0x13
	.long	0x3c8
	.long	0x5c5
	.uleb128 0x14
	.long	0x1e5
	.byte	0x13
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x5cb
	.uleb128 0x17
	.long	0x3c8
	.uleb128 0xd
	.byte	0x8
	.byte	0x7
	.long	.LASF116
	.uleb128 0xd
	.byte	0x8
	.byte	0x5
	.long	.LASF117
	.uleb128 0x13
	.long	0x3c8
	.long	0x5ee
	.uleb128 0x14
	.long	0x1e5
	.byte	0x7
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1de
	.uleb128 0x3
	.byte	0x8
	.long	0x5fa
	.uleb128 0x18
	.long	0x1de
	.long	0x60e
	.uleb128 0x19
	.long	0x60e
	.uleb128 0x19
	.long	0x60e
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x614
	.uleb128 0x1a
	.uleb128 0x1b
	.long	.LASF119
	.byte	0x4
	.byte	0xc
	.byte	0x1d
	.long	0x78a
	.uleb128 0xf
	.long	.LASF120
	.sleb128 0
	.uleb128 0xf
	.long	.LASF121
	.sleb128 1
	.uleb128 0xf
	.long	.LASF122
	.sleb128 2
	.uleb128 0xf
	.long	.LASF123
	.sleb128 3
	.uleb128 0xf
	.long	.LASF124
	.sleb128 4
	.uleb128 0xf
	.long	.LASF125
	.sleb128 5
	.uleb128 0xf
	.long	.LASF126
	.sleb128 6
	.uleb128 0xf
	.long	.LASF127
	.sleb128 7
	.uleb128 0xf
	.long	.LASF128
	.sleb128 8
	.uleb128 0xf
	.long	.LASF129
	.sleb128 9
	.uleb128 0xf
	.long	.LASF130
	.sleb128 10
	.uleb128 0xf
	.long	.LASF131
	.sleb128 11
	.uleb128 0xf
	.long	.LASF132
	.sleb128 12
	.uleb128 0xf
	.long	.LASF133
	.sleb128 13
	.uleb128 0xf
	.long	.LASF134
	.sleb128 14
	.uleb128 0xf
	.long	.LASF135
	.sleb128 15
	.uleb128 0xf
	.long	.LASF136
	.sleb128 16
	.uleb128 0xf
	.long	.LASF137
	.sleb128 17
	.uleb128 0xf
	.long	.LASF138
	.sleb128 18
	.uleb128 0xf
	.long	.LASF139
	.sleb128 19
	.uleb128 0xf
	.long	.LASF140
	.sleb128 20
	.uleb128 0xf
	.long	.LASF141
	.sleb128 21
	.uleb128 0xf
	.long	.LASF142
	.sleb128 22
	.uleb128 0xf
	.long	.LASF143
	.sleb128 23
	.uleb128 0xf
	.long	.LASF144
	.sleb128 24
	.uleb128 0xf
	.long	.LASF145
	.sleb128 25
	.uleb128 0xf
	.long	.LASF146
	.sleb128 26
	.uleb128 0xf
	.long	.LASF147
	.sleb128 27
	.uleb128 0xf
	.long	.LASF148
	.sleb128 28
	.uleb128 0xf
	.long	.LASF149
	.sleb128 29
	.uleb128 0xf
	.long	.LASF150
	.sleb128 30
	.uleb128 0xf
	.long	.LASF151
	.sleb128 31
	.uleb128 0xf
	.long	.LASF152
	.sleb128 32
	.uleb128 0xf
	.long	.LASF153
	.sleb128 33
	.uleb128 0xf
	.long	.LASF154
	.sleb128 34
	.uleb128 0xf
	.long	.LASF155
	.sleb128 35
	.uleb128 0xf
	.long	.LASF156
	.sleb128 36
	.uleb128 0xf
	.long	.LASF157
	.sleb128 37
	.uleb128 0xf
	.long	.LASF158
	.sleb128 38
	.uleb128 0xf
	.long	.LASF159
	.sleb128 39
	.uleb128 0xf
	.long	.LASF160
	.sleb128 40
	.uleb128 0xf
	.long	.LASF161
	.sleb128 41
	.uleb128 0xf
	.long	.LASF162
	.sleb128 42
	.uleb128 0xf
	.long	.LASF163
	.sleb128 43
	.uleb128 0xf
	.long	.LASF164
	.sleb128 44
	.uleb128 0xf
	.long	.LASF165
	.sleb128 45
	.uleb128 0xf
	.long	.LASF166
	.sleb128 46
	.uleb128 0xf
	.long	.LASF167
	.sleb128 47
	.uleb128 0xf
	.long	.LASF168
	.sleb128 48
	.uleb128 0xf
	.long	.LASF169
	.sleb128 49
	.uleb128 0xf
	.long	.LASF170
	.sleb128 50
	.uleb128 0xf
	.long	.LASF171
	.sleb128 51
	.uleb128 0xf
	.long	.LASF172
	.sleb128 52
	.uleb128 0xf
	.long	.LASF173
	.sleb128 53
	.uleb128 0xf
	.long	.LASF174
	.sleb128 54
	.uleb128 0xf
	.long	.LASF175
	.sleb128 55
	.uleb128 0xf
	.long	.LASF176
	.sleb128 56
	.uleb128 0xf
	.long	.LASF177
	.sleb128 57
	.uleb128 0xf
	.long	.LASF178
	.sleb128 58
	.uleb128 0xf
	.long	.LASF179
	.sleb128 59
	.byte	0
	.uleb128 0x1b
	.long	.LASF180
	.byte	0x4
	.byte	0xc
	.byte	0x2c
	.long	0x7d3
	.uleb128 0xf
	.long	.LASF181
	.sleb128 0
	.uleb128 0xf
	.long	.LASF182
	.sleb128 1
	.uleb128 0xf
	.long	.LASF183
	.sleb128 2
	.uleb128 0xf
	.long	.LASF184
	.sleb128 3
	.uleb128 0xf
	.long	.LASF185
	.sleb128 4
	.uleb128 0xf
	.long	.LASF186
	.sleb128 5
	.uleb128 0xf
	.long	.LASF187
	.sleb128 6
	.uleb128 0xf
	.long	.LASF188
	.sleb128 7
	.uleb128 0xf
	.long	.LASF189
	.sleb128 8
	.uleb128 0xf
	.long	.LASF190
	.sleb128 9
	.byte	0
	.uleb128 0x1b
	.long	.LASF191
	.byte	0x4
	.byte	0x2
	.byte	0x29
	.long	0xbcf
	.uleb128 0xf
	.long	.LASF192
	.sleb128 0
	.uleb128 0x1c
	.string	"NIL"
	.sleb128 1
	.uleb128 0xf
	.long	.LASF193
	.sleb128 2
	.uleb128 0xf
	.long	.LASF194
	.sleb128 3
	.uleb128 0xf
	.long	.LASF195
	.sleb128 4
	.uleb128 0xf
	.long	.LASF196
	.sleb128 5
	.uleb128 0xf
	.long	.LASF197
	.sleb128 6
	.uleb128 0xf
	.long	.LASF198
	.sleb128 7
	.uleb128 0xf
	.long	.LASF199
	.sleb128 8
	.uleb128 0xf
	.long	.LASF200
	.sleb128 9
	.uleb128 0xf
	.long	.LASF201
	.sleb128 10
	.uleb128 0xf
	.long	.LASF202
	.sleb128 11
	.uleb128 0xf
	.long	.LASF203
	.sleb128 12
	.uleb128 0xf
	.long	.LASF204
	.sleb128 13
	.uleb128 0xf
	.long	.LASF205
	.sleb128 14
	.uleb128 0xf
	.long	.LASF206
	.sleb128 15
	.uleb128 0xf
	.long	.LASF207
	.sleb128 16
	.uleb128 0xf
	.long	.LASF208
	.sleb128 17
	.uleb128 0xf
	.long	.LASF209
	.sleb128 18
	.uleb128 0xf
	.long	.LASF210
	.sleb128 19
	.uleb128 0xf
	.long	.LASF211
	.sleb128 20
	.uleb128 0xf
	.long	.LASF212
	.sleb128 21
	.uleb128 0xf
	.long	.LASF213
	.sleb128 22
	.uleb128 0xf
	.long	.LASF214
	.sleb128 23
	.uleb128 0xf
	.long	.LASF215
	.sleb128 24
	.uleb128 0xf
	.long	.LASF216
	.sleb128 25
	.uleb128 0xf
	.long	.LASF217
	.sleb128 26
	.uleb128 0xf
	.long	.LASF218
	.sleb128 27
	.uleb128 0xf
	.long	.LASF219
	.sleb128 28
	.uleb128 0xf
	.long	.LASF220
	.sleb128 29
	.uleb128 0xf
	.long	.LASF221
	.sleb128 30
	.uleb128 0xf
	.long	.LASF222
	.sleb128 31
	.uleb128 0xf
	.long	.LASF223
	.sleb128 32
	.uleb128 0xf
	.long	.LASF224
	.sleb128 33
	.uleb128 0xf
	.long	.LASF225
	.sleb128 34
	.uleb128 0xf
	.long	.LASF226
	.sleb128 35
	.uleb128 0xf
	.long	.LASF227
	.sleb128 36
	.uleb128 0xf
	.long	.LASF228
	.sleb128 37
	.uleb128 0xf
	.long	.LASF229
	.sleb128 38
	.uleb128 0xf
	.long	.LASF230
	.sleb128 39
	.uleb128 0xf
	.long	.LASF231
	.sleb128 40
	.uleb128 0xf
	.long	.LASF232
	.sleb128 41
	.uleb128 0xf
	.long	.LASF233
	.sleb128 42
	.uleb128 0xf
	.long	.LASF234
	.sleb128 43
	.uleb128 0xf
	.long	.LASF235
	.sleb128 44
	.uleb128 0xf
	.long	.LASF236
	.sleb128 45
	.uleb128 0xf
	.long	.LASF237
	.sleb128 46
	.uleb128 0x1c
	.string	"SET"
	.sleb128 47
	.uleb128 0x1c
	.string	"USE"
	.sleb128 48
	.uleb128 0xf
	.long	.LASF238
	.sleb128 49
	.uleb128 0xf
	.long	.LASF239
	.sleb128 50
	.uleb128 0xf
	.long	.LASF240
	.sleb128 51
	.uleb128 0xf
	.long	.LASF241
	.sleb128 52
	.uleb128 0xf
	.long	.LASF242
	.sleb128 53
	.uleb128 0xf
	.long	.LASF243
	.sleb128 54
	.uleb128 0xf
	.long	.LASF244
	.sleb128 55
	.uleb128 0xf
	.long	.LASF245
	.sleb128 56
	.uleb128 0xf
	.long	.LASF246
	.sleb128 57
	.uleb128 0xf
	.long	.LASF247
	.sleb128 58
	.uleb128 0x1c
	.string	"PC"
	.sleb128 59
	.uleb128 0xf
	.long	.LASF248
	.sleb128 60
	.uleb128 0x1c
	.string	"REG"
	.sleb128 61
	.uleb128 0xf
	.long	.LASF249
	.sleb128 62
	.uleb128 0xf
	.long	.LASF250
	.sleb128 63
	.uleb128 0xf
	.long	.LASF251
	.sleb128 64
	.uleb128 0xf
	.long	.LASF252
	.sleb128 65
	.uleb128 0x1c
	.string	"MEM"
	.sleb128 66
	.uleb128 0xf
	.long	.LASF253
	.sleb128 67
	.uleb128 0xf
	.long	.LASF254
	.sleb128 68
	.uleb128 0x1c
	.string	"CC0"
	.sleb128 69
	.uleb128 0xf
	.long	.LASF255
	.sleb128 70
	.uleb128 0xf
	.long	.LASF256
	.sleb128 71
	.uleb128 0xf
	.long	.LASF257
	.sleb128 72
	.uleb128 0xf
	.long	.LASF258
	.sleb128 73
	.uleb128 0xf
	.long	.LASF259
	.sleb128 74
	.uleb128 0xf
	.long	.LASF260
	.sleb128 75
	.uleb128 0xf
	.long	.LASF261
	.sleb128 76
	.uleb128 0x1c
	.string	"NEG"
	.sleb128 77
	.uleb128 0xf
	.long	.LASF262
	.sleb128 78
	.uleb128 0x1c
	.string	"DIV"
	.sleb128 79
	.uleb128 0x1c
	.string	"MOD"
	.sleb128 80
	.uleb128 0xf
	.long	.LASF263
	.sleb128 81
	.uleb128 0xf
	.long	.LASF264
	.sleb128 82
	.uleb128 0x1c
	.string	"AND"
	.sleb128 83
	.uleb128 0x1c
	.string	"IOR"
	.sleb128 84
	.uleb128 0x1c
	.string	"XOR"
	.sleb128 85
	.uleb128 0x1c
	.string	"NOT"
	.sleb128 86
	.uleb128 0xf
	.long	.LASF265
	.sleb128 87
	.uleb128 0xf
	.long	.LASF266
	.sleb128 88
	.uleb128 0xf
	.long	.LASF267
	.sleb128 89
	.uleb128 0xf
	.long	.LASF268
	.sleb128 90
	.uleb128 0xf
	.long	.LASF269
	.sleb128 91
	.uleb128 0xf
	.long	.LASF270
	.sleb128 92
	.uleb128 0xf
	.long	.LASF271
	.sleb128 93
	.uleb128 0xf
	.long	.LASF272
	.sleb128 94
	.uleb128 0xf
	.long	.LASF273
	.sleb128 95
	.uleb128 0xf
	.long	.LASF274
	.sleb128 96
	.uleb128 0xf
	.long	.LASF275
	.sleb128 97
	.uleb128 0xf
	.long	.LASF276
	.sleb128 98
	.uleb128 0xf
	.long	.LASF277
	.sleb128 99
	.uleb128 0xf
	.long	.LASF278
	.sleb128 100
	.uleb128 0xf
	.long	.LASF279
	.sleb128 101
	.uleb128 0x1c
	.string	"NE"
	.sleb128 102
	.uleb128 0x1c
	.string	"EQ"
	.sleb128 103
	.uleb128 0x1c
	.string	"GE"
	.sleb128 104
	.uleb128 0x1c
	.string	"GT"
	.sleb128 105
	.uleb128 0x1c
	.string	"LE"
	.sleb128 106
	.uleb128 0x1c
	.string	"LT"
	.sleb128 107
	.uleb128 0x1c
	.string	"GEU"
	.sleb128 108
	.uleb128 0x1c
	.string	"GTU"
	.sleb128 109
	.uleb128 0x1c
	.string	"LEU"
	.sleb128 110
	.uleb128 0x1c
	.string	"LTU"
	.sleb128 111
	.uleb128 0xf
	.long	.LASF280
	.sleb128 112
	.uleb128 0xf
	.long	.LASF281
	.sleb128 113
	.uleb128 0xf
	.long	.LASF282
	.sleb128 114
	.uleb128 0xf
	.long	.LASF283
	.sleb128 115
	.uleb128 0xf
	.long	.LASF284
	.sleb128 116
	.uleb128 0xf
	.long	.LASF285
	.sleb128 117
	.uleb128 0xf
	.long	.LASF286
	.sleb128 118
	.uleb128 0xf
	.long	.LASF287
	.sleb128 119
	.uleb128 0xf
	.long	.LASF288
	.sleb128 120
	.uleb128 0xf
	.long	.LASF289
	.sleb128 121
	.uleb128 0xf
	.long	.LASF290
	.sleb128 122
	.uleb128 0xf
	.long	.LASF291
	.sleb128 123
	.uleb128 0xf
	.long	.LASF292
	.sleb128 124
	.uleb128 0xf
	.long	.LASF293
	.sleb128 125
	.uleb128 0x1c
	.string	"FIX"
	.sleb128 126
	.uleb128 0xf
	.long	.LASF294
	.sleb128 127
	.uleb128 0xf
	.long	.LASF295
	.sleb128 128
	.uleb128 0x1c
	.string	"ABS"
	.sleb128 129
	.uleb128 0xf
	.long	.LASF296
	.sleb128 130
	.uleb128 0x1c
	.string	"FFS"
	.sleb128 131
	.uleb128 0xf
	.long	.LASF297
	.sleb128 132
	.uleb128 0xf
	.long	.LASF298
	.sleb128 133
	.uleb128 0xf
	.long	.LASF299
	.sleb128 134
	.uleb128 0xf
	.long	.LASF300
	.sleb128 135
	.uleb128 0xf
	.long	.LASF301
	.sleb128 136
	.uleb128 0xf
	.long	.LASF302
	.sleb128 137
	.uleb128 0xf
	.long	.LASF303
	.sleb128 138
	.uleb128 0xf
	.long	.LASF304
	.sleb128 139
	.uleb128 0xf
	.long	.LASF305
	.sleb128 140
	.uleb128 0xf
	.long	.LASF306
	.sleb128 141
	.uleb128 0xf
	.long	.LASF307
	.sleb128 142
	.uleb128 0xf
	.long	.LASF308
	.sleb128 143
	.uleb128 0xf
	.long	.LASF309
	.sleb128 144
	.uleb128 0xf
	.long	.LASF310
	.sleb128 145
	.uleb128 0xf
	.long	.LASF311
	.sleb128 146
	.uleb128 0xf
	.long	.LASF312
	.sleb128 147
	.uleb128 0xf
	.long	.LASF313
	.sleb128 148
	.uleb128 0xf
	.long	.LASF314
	.sleb128 149
	.uleb128 0xf
	.long	.LASF315
	.sleb128 150
	.uleb128 0xf
	.long	.LASF316
	.sleb128 151
	.uleb128 0x1c
	.string	"PHI"
	.sleb128 152
	.uleb128 0xf
	.long	.LASF317
	.sleb128 153
	.byte	0
	.uleb128 0x1d
	.byte	0x4
	.byte	0x2
	.byte	0x44
	.long	0xc50
	.uleb128 0x5
	.long	.LASF318
	.byte	0x2
	.byte	0x47
	.long	0x363
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.long	.LASF319
	.byte	0x2
	.byte	0x49
	.long	0x363
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x5
	.long	.LASF320
	.byte	0x2
	.byte	0x4a
	.long	0x363
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x5
	.long	.LASF321
	.byte	0x2
	.byte	0x4c
	.long	0x363
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x5
	.long	.LASF322
	.byte	0x2
	.byte	0x4e
	.long	0x363
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.long	.LASF323
	.byte	0x2
	.byte	0x50
	.long	0x363
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x5
	.long	.LASF324
	.byte	0x2
	.byte	0x53
	.long	0x363
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x5
	.long	.LASF325
	.byte	0x2
	.byte	0x55
	.long	0x363
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0
	.byte	0
	.uleb128 0x7
	.long	.LASF326
	.byte	0x2
	.byte	0x56
	.long	0xbcf
	.uleb128 0x1d
	.byte	0x28
	.byte	0x2
	.byte	0x5c
	.long	0xca0
	.uleb128 0x8
	.long	.LASF327
	.byte	0x2
	.byte	0x5e
	.long	0x377
	.byte	0
	.uleb128 0x8
	.long	.LASF328
	.byte	0x2
	.byte	0x5f
	.long	0x123
	.byte	0x8
	.uleb128 0x8
	.long	.LASF329
	.byte	0x2
	.byte	0x60
	.long	0x2d
	.byte	0x10
	.uleb128 0x8
	.long	.LASF330
	.byte	0x2
	.byte	0x61
	.long	0x2d
	.byte	0x18
	.uleb128 0x8
	.long	.LASF331
	.byte	0x2
	.byte	0x62
	.long	0x363
	.byte	0x20
	.byte	0
	.uleb128 0x7
	.long	.LASF332
	.byte	0x2
	.byte	0x63
	.long	0xc5b
	.uleb128 0x1e
	.long	.LASF334
	.byte	0x8
	.byte	0x2
	.byte	0x67
	.long	0xd46
	.uleb128 0x1f
	.long	.LASF335
	.byte	0x2
	.byte	0x69
	.long	0x377
	.uleb128 0x1f
	.long	.LASF336
	.byte	0x2
	.byte	0x6a
	.long	0x1de
	.uleb128 0x1f
	.long	.LASF337
	.byte	0x2
	.byte	0x6b
	.long	0x363
	.uleb128 0x1f
	.long	.LASF338
	.byte	0x2
	.byte	0x6c
	.long	0x5c5
	.uleb128 0x20
	.string	"rtx"
	.byte	0x2
	.byte	0x6d
	.long	0x2d
	.uleb128 0x1f
	.long	.LASF10
	.byte	0x2
	.byte	0x6e
	.long	0xed
	.uleb128 0x1f
	.long	.LASF339
	.byte	0x2
	.byte	0x6f
	.long	0x615
	.uleb128 0x1f
	.long	.LASF340
	.byte	0x2
	.byte	0x70
	.long	0xc50
	.uleb128 0x1f
	.long	.LASF341
	.byte	0x2
	.byte	0x71
	.long	0xd4b
	.uleb128 0x1f
	.long	.LASF342
	.byte	0x2
	.byte	0x72
	.long	0xd82
	.uleb128 0x1f
	.long	.LASF343
	.byte	0x2
	.byte	0x73
	.long	0x123
	.uleb128 0x20
	.string	"bb"
	.byte	0x2
	.byte	0x74
	.long	0xe55
	.uleb128 0x1f
	.long	.LASF344
	.byte	0x2
	.byte	0x75
	.long	0xe5b
	.byte	0
	.uleb128 0x21
	.long	.LASF763
	.uleb128 0x3
	.byte	0x8
	.long	0xd46
	.uleb128 0x4
	.long	.LASF345
	.byte	0x18
	.byte	0xd
	.byte	0x34
	.long	0xd82
	.uleb128 0x8
	.long	.LASF346
	.byte	0xd
	.byte	0x35
	.long	0x2ecb
	.byte	0
	.uleb128 0x8
	.long	.LASF347
	.byte	0xd
	.byte	0x36
	.long	0x2ecb
	.byte	0x8
	.uleb128 0x8
	.long	.LASF348
	.byte	0xd
	.byte	0x37
	.long	0x363
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0xd51
	.uleb128 0x4
	.long	.LASF349
	.byte	0x70
	.byte	0xe
	.byte	0xae
	.long	0xe55
	.uleb128 0x8
	.long	.LASF350
	.byte	0xe
	.byte	0xb0
	.long	0x2d
	.byte	0
	.uleb128 0x6
	.string	"end"
	.byte	0xe
	.byte	0xb0
	.long	0x2d
	.byte	0x8
	.uleb128 0x8
	.long	.LASF351
	.byte	0xe
	.byte	0xb3
	.long	0x123
	.byte	0x10
	.uleb128 0x8
	.long	.LASF352
	.byte	0xe
	.byte	0xb4
	.long	0x123
	.byte	0x18
	.uleb128 0x8
	.long	.LASF353
	.byte	0xe
	.byte	0xb7
	.long	0x2f71
	.byte	0x20
	.uleb128 0x8
	.long	.LASF354
	.byte	0xe
	.byte	0xb7
	.long	0x2f71
	.byte	0x28
	.uleb128 0x8
	.long	.LASF355
	.byte	0xe
	.byte	0xbc
	.long	0x2edc
	.byte	0x30
	.uleb128 0x8
	.long	.LASF356
	.byte	0xe
	.byte	0xc0
	.long	0x2edc
	.byte	0x38
	.uleb128 0x8
	.long	.LASF357
	.byte	0xe
	.byte	0xc6
	.long	0x2edc
	.byte	0x40
	.uleb128 0x8
	.long	.LASF358
	.byte	0xe
	.byte	0xc8
	.long	0x2edc
	.byte	0x48
	.uleb128 0x6
	.string	"aux"
	.byte	0xe
	.byte	0xcb
	.long	0x36a
	.byte	0x50
	.uleb128 0x8
	.long	.LASF359
	.byte	0xe
	.byte	0xce
	.long	0x1de
	.byte	0x58
	.uleb128 0x8
	.long	.LASF360
	.byte	0xe
	.byte	0xd1
	.long	0x1de
	.byte	0x5c
	.uleb128 0x8
	.long	.LASF361
	.byte	0xe
	.byte	0xd4
	.long	0x2ee7
	.byte	0x60
	.uleb128 0x8
	.long	.LASF362
	.byte	0xe
	.byte	0xd7
	.long	0x1de
	.byte	0x68
	.uleb128 0x8
	.long	.LASF363
	.byte	0xe
	.byte	0xda
	.long	0x1de
	.byte	0x6c
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0xd88
	.uleb128 0x3
	.byte	0x8
	.long	0xca0
	.uleb128 0x7
	.long	.LASF364
	.byte	0x2
	.byte	0x76
	.long	0xcab
	.uleb128 0x13
	.long	0xe61
	.long	0xe7c
	.uleb128 0x14
	.long	0x1e5
	.byte	0
	.byte	0
	.uleb128 0x13
	.long	0x2d
	.long	0xe8c
	.uleb128 0x14
	.long	0x1e5
	.byte	0
	.byte	0
	.uleb128 0xe
	.long	.LASF365
	.byte	0x4
	.byte	0x2
	.value	0x1c3
	.long	0xf4e
	.uleb128 0xf
	.long	.LASF366
	.sleb128 1
	.uleb128 0xf
	.long	.LASF367
	.sleb128 2
	.uleb128 0xf
	.long	.LASF368
	.sleb128 3
	.uleb128 0xf
	.long	.LASF369
	.sleb128 4
	.uleb128 0xf
	.long	.LASF370
	.sleb128 5
	.uleb128 0xf
	.long	.LASF371
	.sleb128 6
	.uleb128 0xf
	.long	.LASF372
	.sleb128 7
	.uleb128 0xf
	.long	.LASF373
	.sleb128 8
	.uleb128 0xf
	.long	.LASF374
	.sleb128 9
	.uleb128 0xf
	.long	.LASF375
	.sleb128 10
	.uleb128 0xf
	.long	.LASF376
	.sleb128 11
	.uleb128 0xf
	.long	.LASF377
	.sleb128 12
	.uleb128 0xf
	.long	.LASF378
	.sleb128 13
	.uleb128 0xf
	.long	.LASF379
	.sleb128 14
	.uleb128 0xf
	.long	.LASF380
	.sleb128 15
	.uleb128 0xf
	.long	.LASF381
	.sleb128 16
	.uleb128 0xf
	.long	.LASF382
	.sleb128 17
	.uleb128 0xf
	.long	.LASF383
	.sleb128 18
	.uleb128 0xf
	.long	.LASF384
	.sleb128 19
	.uleb128 0xf
	.long	.LASF385
	.sleb128 20
	.uleb128 0xf
	.long	.LASF386
	.sleb128 21
	.uleb128 0xf
	.long	.LASF387
	.sleb128 22
	.uleb128 0xf
	.long	.LASF388
	.sleb128 23
	.uleb128 0xf
	.long	.LASF389
	.sleb128 24
	.uleb128 0xf
	.long	.LASF390
	.sleb128 25
	.uleb128 0xf
	.long	.LASF391
	.sleb128 26
	.uleb128 0xf
	.long	.LASF392
	.sleb128 27
	.uleb128 0xf
	.long	.LASF393
	.sleb128 28
	.uleb128 0xf
	.long	.LASF394
	.sleb128 29
	.uleb128 0xf
	.long	.LASF395
	.sleb128 30
	.byte	0
	.uleb128 0xe
	.long	.LASF396
	.byte	0x4
	.byte	0x2
	.value	0x297
	.long	0xffd
	.uleb128 0xf
	.long	.LASF397
	.sleb128 -100
	.uleb128 0xf
	.long	.LASF398
	.sleb128 -99
	.uleb128 0xf
	.long	.LASF399
	.sleb128 -98
	.uleb128 0xf
	.long	.LASF400
	.sleb128 -97
	.uleb128 0xf
	.long	.LASF401
	.sleb128 -96
	.uleb128 0xf
	.long	.LASF402
	.sleb128 -95
	.uleb128 0xf
	.long	.LASF403
	.sleb128 -94
	.uleb128 0xf
	.long	.LASF404
	.sleb128 -93
	.uleb128 0xf
	.long	.LASF405
	.sleb128 -92
	.uleb128 0xf
	.long	.LASF406
	.sleb128 -91
	.uleb128 0xf
	.long	.LASF407
	.sleb128 -90
	.uleb128 0xf
	.long	.LASF408
	.sleb128 -89
	.uleb128 0xf
	.long	.LASF409
	.sleb128 -88
	.uleb128 0xf
	.long	.LASF410
	.sleb128 -87
	.uleb128 0xf
	.long	.LASF411
	.sleb128 -86
	.uleb128 0xf
	.long	.LASF412
	.sleb128 -85
	.uleb128 0xf
	.long	.LASF413
	.sleb128 -84
	.uleb128 0xf
	.long	.LASF414
	.sleb128 -83
	.uleb128 0xf
	.long	.LASF415
	.sleb128 -82
	.uleb128 0xf
	.long	.LASF416
	.sleb128 -81
	.uleb128 0xf
	.long	.LASF417
	.sleb128 -80
	.uleb128 0xf
	.long	.LASF418
	.sleb128 -79
	.uleb128 0xf
	.long	.LASF419
	.sleb128 -78
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x2d
	.uleb128 0xe
	.long	.LASF420
	.byte	0x4
	.byte	0x2
	.value	0x630
	.long	0x1059
	.uleb128 0xf
	.long	.LASF421
	.sleb128 0
	.uleb128 0xf
	.long	.LASF422
	.sleb128 1
	.uleb128 0xf
	.long	.LASF423
	.sleb128 2
	.uleb128 0xf
	.long	.LASF424
	.sleb128 3
	.uleb128 0xf
	.long	.LASF425
	.sleb128 4
	.uleb128 0xf
	.long	.LASF426
	.sleb128 5
	.uleb128 0xf
	.long	.LASF427
	.sleb128 6
	.uleb128 0xf
	.long	.LASF428
	.sleb128 7
	.uleb128 0xf
	.long	.LASF429
	.sleb128 8
	.uleb128 0xf
	.long	.LASF430
	.sleb128 9
	.uleb128 0xf
	.long	.LASF431
	.sleb128 10
	.uleb128 0xf
	.long	.LASF432
	.sleb128 11
	.byte	0
	.uleb128 0x1b
	.long	.LASF433
	.byte	0x4
	.byte	0x4
	.byte	0x1d
	.long	0x1432
	.uleb128 0xf
	.long	.LASF434
	.sleb128 0
	.uleb128 0xf
	.long	.LASF435
	.sleb128 1
	.uleb128 0xf
	.long	.LASF436
	.sleb128 2
	.uleb128 0xf
	.long	.LASF437
	.sleb128 3
	.uleb128 0xf
	.long	.LASF438
	.sleb128 4
	.uleb128 0xf
	.long	.LASF439
	.sleb128 5
	.uleb128 0xf
	.long	.LASF440
	.sleb128 6
	.uleb128 0xf
	.long	.LASF441
	.sleb128 7
	.uleb128 0xf
	.long	.LASF442
	.sleb128 8
	.uleb128 0xf
	.long	.LASF443
	.sleb128 9
	.uleb128 0xf
	.long	.LASF444
	.sleb128 10
	.uleb128 0xf
	.long	.LASF445
	.sleb128 11
	.uleb128 0xf
	.long	.LASF446
	.sleb128 12
	.uleb128 0xf
	.long	.LASF447
	.sleb128 13
	.uleb128 0xf
	.long	.LASF448
	.sleb128 14
	.uleb128 0xf
	.long	.LASF449
	.sleb128 15
	.uleb128 0xf
	.long	.LASF450
	.sleb128 16
	.uleb128 0xf
	.long	.LASF451
	.sleb128 17
	.uleb128 0xf
	.long	.LASF452
	.sleb128 18
	.uleb128 0xf
	.long	.LASF453
	.sleb128 19
	.uleb128 0xf
	.long	.LASF454
	.sleb128 20
	.uleb128 0xf
	.long	.LASF455
	.sleb128 21
	.uleb128 0xf
	.long	.LASF456
	.sleb128 22
	.uleb128 0xf
	.long	.LASF457
	.sleb128 23
	.uleb128 0xf
	.long	.LASF458
	.sleb128 24
	.uleb128 0xf
	.long	.LASF459
	.sleb128 25
	.uleb128 0xf
	.long	.LASF460
	.sleb128 26
	.uleb128 0xf
	.long	.LASF461
	.sleb128 27
	.uleb128 0xf
	.long	.LASF462
	.sleb128 28
	.uleb128 0xf
	.long	.LASF463
	.sleb128 29
	.uleb128 0xf
	.long	.LASF464
	.sleb128 30
	.uleb128 0xf
	.long	.LASF465
	.sleb128 31
	.uleb128 0xf
	.long	.LASF466
	.sleb128 32
	.uleb128 0xf
	.long	.LASF467
	.sleb128 33
	.uleb128 0xf
	.long	.LASF468
	.sleb128 34
	.uleb128 0xf
	.long	.LASF469
	.sleb128 35
	.uleb128 0xf
	.long	.LASF470
	.sleb128 36
	.uleb128 0xf
	.long	.LASF471
	.sleb128 37
	.uleb128 0xf
	.long	.LASF472
	.sleb128 38
	.uleb128 0xf
	.long	.LASF473
	.sleb128 39
	.uleb128 0xf
	.long	.LASF474
	.sleb128 40
	.uleb128 0xf
	.long	.LASF475
	.sleb128 41
	.uleb128 0xf
	.long	.LASF476
	.sleb128 42
	.uleb128 0xf
	.long	.LASF477
	.sleb128 43
	.uleb128 0xf
	.long	.LASF478
	.sleb128 44
	.uleb128 0xf
	.long	.LASF479
	.sleb128 45
	.uleb128 0xf
	.long	.LASF480
	.sleb128 46
	.uleb128 0xf
	.long	.LASF481
	.sleb128 47
	.uleb128 0xf
	.long	.LASF482
	.sleb128 48
	.uleb128 0xf
	.long	.LASF483
	.sleb128 49
	.uleb128 0xf
	.long	.LASF484
	.sleb128 50
	.uleb128 0xf
	.long	.LASF485
	.sleb128 51
	.uleb128 0xf
	.long	.LASF486
	.sleb128 52
	.uleb128 0xf
	.long	.LASF487
	.sleb128 53
	.uleb128 0xf
	.long	.LASF488
	.sleb128 54
	.uleb128 0xf
	.long	.LASF489
	.sleb128 55
	.uleb128 0xf
	.long	.LASF490
	.sleb128 56
	.uleb128 0xf
	.long	.LASF491
	.sleb128 57
	.uleb128 0xf
	.long	.LASF492
	.sleb128 58
	.uleb128 0xf
	.long	.LASF493
	.sleb128 59
	.uleb128 0xf
	.long	.LASF494
	.sleb128 60
	.uleb128 0xf
	.long	.LASF495
	.sleb128 61
	.uleb128 0xf
	.long	.LASF496
	.sleb128 62
	.uleb128 0xf
	.long	.LASF497
	.sleb128 63
	.uleb128 0xf
	.long	.LASF498
	.sleb128 64
	.uleb128 0xf
	.long	.LASF499
	.sleb128 65
	.uleb128 0xf
	.long	.LASF500
	.sleb128 66
	.uleb128 0xf
	.long	.LASF501
	.sleb128 67
	.uleb128 0xf
	.long	.LASF502
	.sleb128 68
	.uleb128 0xf
	.long	.LASF503
	.sleb128 69
	.uleb128 0xf
	.long	.LASF504
	.sleb128 70
	.uleb128 0xf
	.long	.LASF505
	.sleb128 71
	.uleb128 0xf
	.long	.LASF506
	.sleb128 72
	.uleb128 0xf
	.long	.LASF507
	.sleb128 73
	.uleb128 0xf
	.long	.LASF508
	.sleb128 74
	.uleb128 0xf
	.long	.LASF509
	.sleb128 75
	.uleb128 0xf
	.long	.LASF510
	.sleb128 76
	.uleb128 0xf
	.long	.LASF511
	.sleb128 77
	.uleb128 0xf
	.long	.LASF512
	.sleb128 78
	.uleb128 0xf
	.long	.LASF513
	.sleb128 79
	.uleb128 0xf
	.long	.LASF514
	.sleb128 80
	.uleb128 0xf
	.long	.LASF515
	.sleb128 81
	.uleb128 0xf
	.long	.LASF516
	.sleb128 82
	.uleb128 0xf
	.long	.LASF517
	.sleb128 83
	.uleb128 0xf
	.long	.LASF518
	.sleb128 84
	.uleb128 0xf
	.long	.LASF519
	.sleb128 85
	.uleb128 0xf
	.long	.LASF520
	.sleb128 86
	.uleb128 0xf
	.long	.LASF521
	.sleb128 87
	.uleb128 0xf
	.long	.LASF522
	.sleb128 88
	.uleb128 0xf
	.long	.LASF523
	.sleb128 89
	.uleb128 0xf
	.long	.LASF524
	.sleb128 90
	.uleb128 0xf
	.long	.LASF525
	.sleb128 91
	.uleb128 0xf
	.long	.LASF526
	.sleb128 92
	.uleb128 0xf
	.long	.LASF527
	.sleb128 93
	.uleb128 0xf
	.long	.LASF528
	.sleb128 94
	.uleb128 0xf
	.long	.LASF529
	.sleb128 95
	.uleb128 0xf
	.long	.LASF530
	.sleb128 96
	.uleb128 0xf
	.long	.LASF531
	.sleb128 97
	.uleb128 0xf
	.long	.LASF532
	.sleb128 98
	.uleb128 0xf
	.long	.LASF533
	.sleb128 99
	.uleb128 0xf
	.long	.LASF534
	.sleb128 100
	.uleb128 0xf
	.long	.LASF535
	.sleb128 101
	.uleb128 0xf
	.long	.LASF536
	.sleb128 102
	.uleb128 0xf
	.long	.LASF537
	.sleb128 103
	.uleb128 0xf
	.long	.LASF538
	.sleb128 104
	.uleb128 0xf
	.long	.LASF539
	.sleb128 105
	.uleb128 0xf
	.long	.LASF540
	.sleb128 106
	.uleb128 0xf
	.long	.LASF541
	.sleb128 107
	.uleb128 0xf
	.long	.LASF542
	.sleb128 108
	.uleb128 0xf
	.long	.LASF543
	.sleb128 109
	.uleb128 0xf
	.long	.LASF544
	.sleb128 110
	.uleb128 0xf
	.long	.LASF545
	.sleb128 111
	.uleb128 0xf
	.long	.LASF546
	.sleb128 112
	.uleb128 0xf
	.long	.LASF547
	.sleb128 113
	.uleb128 0xf
	.long	.LASF548
	.sleb128 114
	.uleb128 0xf
	.long	.LASF549
	.sleb128 115
	.uleb128 0xf
	.long	.LASF550
	.sleb128 116
	.uleb128 0xf
	.long	.LASF551
	.sleb128 117
	.uleb128 0xf
	.long	.LASF552
	.sleb128 118
	.uleb128 0xf
	.long	.LASF553
	.sleb128 119
	.uleb128 0xf
	.long	.LASF554
	.sleb128 120
	.uleb128 0xf
	.long	.LASF555
	.sleb128 121
	.uleb128 0xf
	.long	.LASF556
	.sleb128 122
	.uleb128 0xf
	.long	.LASF557
	.sleb128 123
	.uleb128 0xf
	.long	.LASF558
	.sleb128 124
	.uleb128 0xf
	.long	.LASF559
	.sleb128 125
	.uleb128 0xf
	.long	.LASF560
	.sleb128 126
	.uleb128 0xf
	.long	.LASF561
	.sleb128 127
	.uleb128 0xf
	.long	.LASF562
	.sleb128 128
	.uleb128 0xf
	.long	.LASF563
	.sleb128 129
	.uleb128 0xf
	.long	.LASF564
	.sleb128 130
	.uleb128 0xf
	.long	.LASF565
	.sleb128 131
	.uleb128 0xf
	.long	.LASF566
	.sleb128 132
	.uleb128 0xf
	.long	.LASF567
	.sleb128 133
	.uleb128 0xf
	.long	.LASF568
	.sleb128 134
	.uleb128 0xf
	.long	.LASF569
	.sleb128 135
	.uleb128 0xf
	.long	.LASF570
	.sleb128 136
	.uleb128 0xf
	.long	.LASF571
	.sleb128 137
	.uleb128 0xf
	.long	.LASF572
	.sleb128 138
	.uleb128 0xf
	.long	.LASF573
	.sleb128 139
	.uleb128 0xf
	.long	.LASF574
	.sleb128 140
	.uleb128 0xf
	.long	.LASF575
	.sleb128 141
	.uleb128 0xf
	.long	.LASF576
	.sleb128 142
	.uleb128 0xf
	.long	.LASF577
	.sleb128 143
	.uleb128 0xf
	.long	.LASF578
	.sleb128 144
	.uleb128 0xf
	.long	.LASF579
	.sleb128 145
	.uleb128 0xf
	.long	.LASF580
	.sleb128 146
	.uleb128 0xf
	.long	.LASF581
	.sleb128 147
	.byte	0
	.uleb128 0x1b
	.long	.LASF582
	.byte	0x4
	.byte	0x4
	.byte	0x54
	.long	0x169f
	.uleb128 0xf
	.long	.LASF583
	.sleb128 0
	.uleb128 0xf
	.long	.LASF584
	.sleb128 1
	.uleb128 0xf
	.long	.LASF585
	.sleb128 2
	.uleb128 0xf
	.long	.LASF586
	.sleb128 3
	.uleb128 0xf
	.long	.LASF587
	.sleb128 4
	.uleb128 0xf
	.long	.LASF588
	.sleb128 5
	.uleb128 0xf
	.long	.LASF589
	.sleb128 6
	.uleb128 0xf
	.long	.LASF590
	.sleb128 7
	.uleb128 0xf
	.long	.LASF591
	.sleb128 8
	.uleb128 0xf
	.long	.LASF592
	.sleb128 9
	.uleb128 0xf
	.long	.LASF593
	.sleb128 10
	.uleb128 0xf
	.long	.LASF594
	.sleb128 11
	.uleb128 0xf
	.long	.LASF595
	.sleb128 12
	.uleb128 0xf
	.long	.LASF596
	.sleb128 13
	.uleb128 0xf
	.long	.LASF597
	.sleb128 14
	.uleb128 0xf
	.long	.LASF598
	.sleb128 15
	.uleb128 0xf
	.long	.LASF599
	.sleb128 16
	.uleb128 0xf
	.long	.LASF600
	.sleb128 17
	.uleb128 0xf
	.long	.LASF601
	.sleb128 18
	.uleb128 0xf
	.long	.LASF602
	.sleb128 19
	.uleb128 0xf
	.long	.LASF603
	.sleb128 20
	.uleb128 0xf
	.long	.LASF604
	.sleb128 21
	.uleb128 0xf
	.long	.LASF605
	.sleb128 22
	.uleb128 0xf
	.long	.LASF606
	.sleb128 23
	.uleb128 0xf
	.long	.LASF607
	.sleb128 24
	.uleb128 0xf
	.long	.LASF608
	.sleb128 25
	.uleb128 0xf
	.long	.LASF609
	.sleb128 26
	.uleb128 0xf
	.long	.LASF610
	.sleb128 27
	.uleb128 0xf
	.long	.LASF611
	.sleb128 28
	.uleb128 0xf
	.long	.LASF612
	.sleb128 29
	.uleb128 0xf
	.long	.LASF613
	.sleb128 30
	.uleb128 0xf
	.long	.LASF614
	.sleb128 31
	.uleb128 0xf
	.long	.LASF615
	.sleb128 32
	.uleb128 0xf
	.long	.LASF616
	.sleb128 33
	.uleb128 0xf
	.long	.LASF617
	.sleb128 34
	.uleb128 0xf
	.long	.LASF618
	.sleb128 35
	.uleb128 0xf
	.long	.LASF619
	.sleb128 36
	.uleb128 0xf
	.long	.LASF620
	.sleb128 37
	.uleb128 0xf
	.long	.LASF621
	.sleb128 38
	.uleb128 0xf
	.long	.LASF622
	.sleb128 39
	.uleb128 0xf
	.long	.LASF623
	.sleb128 40
	.uleb128 0xf
	.long	.LASF624
	.sleb128 41
	.uleb128 0xf
	.long	.LASF625
	.sleb128 42
	.uleb128 0xf
	.long	.LASF626
	.sleb128 43
	.uleb128 0xf
	.long	.LASF627
	.sleb128 44
	.uleb128 0xf
	.long	.LASF628
	.sleb128 45
	.uleb128 0xf
	.long	.LASF629
	.sleb128 46
	.uleb128 0xf
	.long	.LASF630
	.sleb128 47
	.uleb128 0xf
	.long	.LASF631
	.sleb128 48
	.uleb128 0xf
	.long	.LASF632
	.sleb128 49
	.uleb128 0xf
	.long	.LASF633
	.sleb128 50
	.uleb128 0xf
	.long	.LASF634
	.sleb128 51
	.uleb128 0xf
	.long	.LASF635
	.sleb128 52
	.uleb128 0xf
	.long	.LASF636
	.sleb128 53
	.uleb128 0xf
	.long	.LASF637
	.sleb128 54
	.uleb128 0xf
	.long	.LASF638
	.sleb128 55
	.uleb128 0xf
	.long	.LASF639
	.sleb128 56
	.uleb128 0xf
	.long	.LASF640
	.sleb128 57
	.uleb128 0xf
	.long	.LASF641
	.sleb128 58
	.uleb128 0xf
	.long	.LASF642
	.sleb128 59
	.uleb128 0xf
	.long	.LASF643
	.sleb128 60
	.uleb128 0xf
	.long	.LASF644
	.sleb128 61
	.uleb128 0xf
	.long	.LASF645
	.sleb128 62
	.uleb128 0xf
	.long	.LASF646
	.sleb128 63
	.uleb128 0xf
	.long	.LASF647
	.sleb128 64
	.uleb128 0xf
	.long	.LASF648
	.sleb128 65
	.uleb128 0xf
	.long	.LASF649
	.sleb128 66
	.uleb128 0xf
	.long	.LASF650
	.sleb128 67
	.uleb128 0xf
	.long	.LASF651
	.sleb128 68
	.uleb128 0xf
	.long	.LASF652
	.sleb128 69
	.uleb128 0xf
	.long	.LASF653
	.sleb128 70
	.uleb128 0xf
	.long	.LASF654
	.sleb128 71
	.uleb128 0xf
	.long	.LASF655
	.sleb128 72
	.uleb128 0xf
	.long	.LASF656
	.sleb128 73
	.uleb128 0xf
	.long	.LASF657
	.sleb128 74
	.uleb128 0xf
	.long	.LASF658
	.sleb128 75
	.uleb128 0xf
	.long	.LASF659
	.sleb128 76
	.uleb128 0xf
	.long	.LASF660
	.sleb128 77
	.uleb128 0xf
	.long	.LASF661
	.sleb128 78
	.uleb128 0xf
	.long	.LASF662
	.sleb128 79
	.uleb128 0xf
	.long	.LASF663
	.sleb128 80
	.uleb128 0xf
	.long	.LASF664
	.sleb128 81
	.uleb128 0xf
	.long	.LASF665
	.sleb128 82
	.uleb128 0xf
	.long	.LASF666
	.sleb128 83
	.uleb128 0xf
	.long	.LASF667
	.sleb128 84
	.uleb128 0xf
	.long	.LASF668
	.sleb128 85
	.uleb128 0xf
	.long	.LASF669
	.sleb128 86
	.uleb128 0xf
	.long	.LASF670
	.sleb128 87
	.uleb128 0xf
	.long	.LASF671
	.sleb128 88
	.uleb128 0xf
	.long	.LASF672
	.sleb128 89
	.uleb128 0xf
	.long	.LASF673
	.sleb128 90
	.uleb128 0xf
	.long	.LASF674
	.sleb128 91
	.uleb128 0xf
	.long	.LASF675
	.sleb128 92
	.uleb128 0xf
	.long	.LASF676
	.sleb128 93
	.uleb128 0xf
	.long	.LASF677
	.sleb128 94
	.uleb128 0xf
	.long	.LASF678
	.sleb128 95
	.byte	0
	.uleb128 0x4
	.long	.LASF679
	.byte	0x18
	.byte	0x4
	.byte	0x79
	.long	0x183b
	.uleb128 0x8
	.long	.LASF680
	.byte	0x4
	.byte	0x7b
	.long	0x123
	.byte	0
	.uleb128 0x8
	.long	.LASF24
	.byte	0x4
	.byte	0x7c
	.long	0x123
	.byte	0x8
	.uleb128 0x5
	.long	.LASF0
	.byte	0x4
	.byte	0x7e
	.long	0x363
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x10
	.uleb128 0x5
	.long	.LASF681
	.byte	0x4
	.byte	0x80
	.long	0x363
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x10
	.uleb128 0x5
	.long	.LASF682
	.byte	0x4
	.byte	0x81
	.long	0x363
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x10
	.uleb128 0x5
	.long	.LASF683
	.byte	0x4
	.byte	0x82
	.long	0x363
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x10
	.uleb128 0x5
	.long	.LASF684
	.byte	0x4
	.byte	0x83
	.long	0x363
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x10
	.uleb128 0x5
	.long	.LASF685
	.byte	0x4
	.byte	0x84
	.long	0x363
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x10
	.uleb128 0x5
	.long	.LASF686
	.byte	0x4
	.byte	0x85
	.long	0x363
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x10
	.uleb128 0x5
	.long	.LASF687
	.byte	0x4
	.byte	0x86
	.long	0x363
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x10
	.uleb128 0x5
	.long	.LASF688
	.byte	0x4
	.byte	0x87
	.long	0x363
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x10
	.uleb128 0x5
	.long	.LASF689
	.byte	0x4
	.byte	0x89
	.long	0x363
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x10
	.uleb128 0x5
	.long	.LASF690
	.byte	0x4
	.byte	0x8a
	.long	0x363
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x10
	.uleb128 0x5
	.long	.LASF691
	.byte	0x4
	.byte	0x8b
	.long	0x363
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x10
	.uleb128 0x5
	.long	.LASF692
	.byte	0x4
	.byte	0x8c
	.long	0x363
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x10
	.uleb128 0x5
	.long	.LASF693
	.byte	0x4
	.byte	0x8d
	.long	0x363
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x10
	.uleb128 0x5
	.long	.LASF694
	.byte	0x4
	.byte	0x8e
	.long	0x363
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x10
	.uleb128 0x5
	.long	.LASF695
	.byte	0x4
	.byte	0x8f
	.long	0x363
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x10
	.uleb128 0x5
	.long	.LASF696
	.byte	0x4
	.byte	0x90
	.long	0x363
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x10
	.uleb128 0x5
	.long	.LASF697
	.byte	0x4
	.byte	0x92
	.long	0x363
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x10
	.uleb128 0x5
	.long	.LASF698
	.byte	0x4
	.byte	0x93
	.long	0x363
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x10
	.uleb128 0x5
	.long	.LASF699
	.byte	0x4
	.byte	0x94
	.long	0x363
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x10
	.uleb128 0x5
	.long	.LASF700
	.byte	0x4
	.byte	0x95
	.long	0x363
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x10
	.uleb128 0x5
	.long	.LASF701
	.byte	0x4
	.byte	0x96
	.long	0x363
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x10
	.uleb128 0x5
	.long	.LASF702
	.byte	0x4
	.byte	0x97
	.long	0x363
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x5
	.long	.LASF703
	.byte	0x4
	.byte	0x98
	.long	0x363
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x10
	.uleb128 0x5
	.long	.LASF704
	.byte	0x4
	.byte	0x99
	.long	0x363
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x10
	.byte	0
	.uleb128 0x22
	.byte	0x10
	.byte	0x4
	.value	0x2c9
	.long	0x185f
	.uleb128 0x23
	.string	"low"
	.byte	0x4
	.value	0x2ca
	.long	0x389
	.byte	0
	.uleb128 0x11
	.long	.LASF705
	.byte	0x4
	.value	0x2cb
	.long	0x377
	.byte	0x8
	.byte	0
	.uleb128 0x10
	.long	.LASF706
	.byte	0x30
	.byte	0x4
	.value	0x2c1
	.long	0x1894
	.uleb128 0x11
	.long	.LASF16
	.byte	0x4
	.value	0x2c3
	.long	0x169f
	.byte	0
	.uleb128 0x23
	.string	"rtl"
	.byte	0x4
	.value	0x2c4
	.long	0x2d
	.byte	0x18
	.uleb128 0x11
	.long	.LASF17
	.byte	0x4
	.value	0x2cc
	.long	0x183b
	.byte	0x20
	.byte	0
	.uleb128 0x1d
	.byte	0x18
	.byte	0xf
	.byte	0x6b
	.long	0x18a7
	.uleb128 0x6
	.string	"r"
	.byte	0xf
	.byte	0x6c
	.long	0x18a7
	.byte	0
	.byte	0
	.uleb128 0x13
	.long	0x377
	.long	0x18b7
	.uleb128 0x14
	.long	0x1e5
	.byte	0x2
	.byte	0
	.uleb128 0x7
	.long	.LASF707
	.byte	0xf
	.byte	0x6d
	.long	0x1894
	.uleb128 0x9
	.long	.LASF708
	.byte	0x18
	.byte	0xf
	.value	0x1bd
	.long	0x18e4
	.uleb128 0xb
	.string	"d"
	.byte	0xf
	.value	0x1bf
	.long	0x18b7
	.uleb128 0xb
	.string	"i"
	.byte	0xf
	.value	0x1c0
	.long	0x18a7
	.byte	0
	.uleb128 0x10
	.long	.LASF709
	.byte	0x38
	.byte	0x4
	.value	0x2de
	.long	0x1919
	.uleb128 0x11
	.long	.LASF16
	.byte	0x4
	.value	0x2e0
	.long	0x169f
	.byte	0
	.uleb128 0x23
	.string	"rtl"
	.byte	0x4
	.value	0x2e1
	.long	0x2d
	.byte	0x18
	.uleb128 0x11
	.long	.LASF18
	.byte	0x4
	.value	0x2e2
	.long	0x18b7
	.byte	0x20
	.byte	0
	.uleb128 0x10
	.long	.LASF710
	.byte	0x30
	.byte	0x4
	.value	0x2e9
	.long	0x195b
	.uleb128 0x11
	.long	.LASF16
	.byte	0x4
	.value	0x2eb
	.long	0x169f
	.byte	0
	.uleb128 0x23
	.string	"rtl"
	.byte	0x4
	.value	0x2ec
	.long	0x2d
	.byte	0x18
	.uleb128 0x11
	.long	.LASF711
	.byte	0x4
	.value	0x2ed
	.long	0x1de
	.byte	0x20
	.uleb128 0x11
	.long	.LASF712
	.byte	0x4
	.value	0x2ee
	.long	0x5c5
	.byte	0x28
	.byte	0
	.uleb128 0x10
	.long	.LASF713
	.byte	0x30
	.byte	0x4
	.value	0x2f5
	.long	0x199d
	.uleb128 0x11
	.long	.LASF16
	.byte	0x4
	.value	0x2f7
	.long	0x169f
	.byte	0
	.uleb128 0x23
	.string	"rtl"
	.byte	0x4
	.value	0x2f8
	.long	0x2d
	.byte	0x18
	.uleb128 0x11
	.long	.LASF714
	.byte	0x4
	.value	0x2f9
	.long	0x123
	.byte	0x20
	.uleb128 0x11
	.long	.LASF715
	.byte	0x4
	.value	0x2fa
	.long	0x123
	.byte	0x28
	.byte	0
	.uleb128 0x10
	.long	.LASF716
	.byte	0x28
	.byte	0x4
	.value	0x300
	.long	0x19d2
	.uleb128 0x11
	.long	.LASF16
	.byte	0x4
	.value	0x302
	.long	0x169f
	.byte	0
	.uleb128 0x23
	.string	"rtl"
	.byte	0x4
	.value	0x303
	.long	0x2d
	.byte	0x18
	.uleb128 0x11
	.long	.LASF717
	.byte	0x4
	.value	0x304
	.long	0x123
	.byte	0x20
	.byte	0
	.uleb128 0x4
	.long	.LASF718
	.byte	0x10
	.byte	0x10
	.byte	0x1a
	.long	0x19f7
	.uleb128 0x6
	.string	"len"
	.byte	0x10
	.byte	0x1c
	.long	0x363
	.byte	0
	.uleb128 0x6
	.string	"str"
	.byte	0x10
	.byte	0x1d
	.long	0x19f7
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x19fd
	.uleb128 0x17
	.long	0x390
	.uleb128 0x10
	.long	.LASF719
	.byte	0x28
	.byte	0x4
	.value	0x317
	.long	0x1a29
	.uleb128 0x11
	.long	.LASF16
	.byte	0x4
	.value	0x319
	.long	0x169f
	.byte	0
	.uleb128 0x23
	.string	"id"
	.byte	0x4
	.value	0x31a
	.long	0x19d2
	.byte	0x18
	.byte	0
	.uleb128 0x10
	.long	.LASF720
	.byte	0x28
	.byte	0x4
	.value	0x321
	.long	0x1a5e
	.uleb128 0x11
	.long	.LASF16
	.byte	0x4
	.value	0x323
	.long	0x169f
	.byte	0
	.uleb128 0x11
	.long	.LASF721
	.byte	0x4
	.value	0x324
	.long	0x123
	.byte	0x18
	.uleb128 0x11
	.long	.LASF722
	.byte	0x4
	.value	0x325
	.long	0x123
	.byte	0x20
	.byte	0
	.uleb128 0x10
	.long	.LASF723
	.byte	0x28
	.byte	0x4
	.value	0x32e
	.long	0x1a91
	.uleb128 0x11
	.long	.LASF16
	.byte	0x4
	.value	0x330
	.long	0x169f
	.byte	0
	.uleb128 0x11
	.long	.LASF711
	.byte	0x4
	.value	0x331
	.long	0x1de
	.byte	0x18
	.uleb128 0x23
	.string	"a"
	.byte	0x4
	.value	0x332
	.long	0x1a91
	.byte	0x20
	.byte	0
	.uleb128 0x13
	.long	0x123
	.long	0x1aa1
	.uleb128 0x14
	.long	0x1e5
	.byte	0
	.byte	0
	.uleb128 0x10
	.long	.LASF724
	.byte	0x28
	.byte	0x4
	.value	0x36f
	.long	0x1ad6
	.uleb128 0x11
	.long	.LASF16
	.byte	0x4
	.value	0x371
	.long	0x169f
	.byte	0
	.uleb128 0x11
	.long	.LASF725
	.byte	0x4
	.value	0x372
	.long	0x1de
	.byte	0x18
	.uleb128 0x11
	.long	.LASF726
	.byte	0x4
	.value	0x373
	.long	0x1a91
	.byte	0x20
	.byte	0
	.uleb128 0x10
	.long	.LASF727
	.byte	0x50
	.byte	0x4
	.value	0x3a3
	.long	0x1b6f
	.uleb128 0x11
	.long	.LASF16
	.byte	0x4
	.value	0x3a5
	.long	0x169f
	.byte	0
	.uleb128 0x24
	.long	.LASF728
	.byte	0x4
	.value	0x3a7
	.long	0x363
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x18
	.uleb128 0x24
	.long	.LASF729
	.byte	0x4
	.value	0x3a8
	.long	0x363
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x18
	.uleb128 0x24
	.long	.LASF730
	.byte	0x4
	.value	0x3a9
	.long	0x363
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0x18
	.uleb128 0x11
	.long	.LASF731
	.byte	0x4
	.value	0x3ab
	.long	0x123
	.byte	0x20
	.uleb128 0x11
	.long	.LASF732
	.byte	0x4
	.value	0x3ac
	.long	0x123
	.byte	0x28
	.uleb128 0x11
	.long	.LASF733
	.byte	0x4
	.value	0x3ad
	.long	0x123
	.byte	0x30
	.uleb128 0x11
	.long	.LASF734
	.byte	0x4
	.value	0x3ae
	.long	0x123
	.byte	0x38
	.uleb128 0x11
	.long	.LASF735
	.byte	0x4
	.value	0x3af
	.long	0x123
	.byte	0x40
	.uleb128 0x11
	.long	.LASF736
	.byte	0x4
	.value	0x3b0
	.long	0x123
	.byte	0x48
	.byte	0
	.uleb128 0x25
	.byte	0x8
	.byte	0x4
	.value	0x4d8
	.long	0x1b91
	.uleb128 0xa
	.long	.LASF737
	.byte	0x4
	.value	0x4d8
	.long	0x1de
	.uleb128 0xa
	.long	.LASF712
	.byte	0x4
	.value	0x4d8
	.long	0x3c2
	.byte	0
	.uleb128 0x10
	.long	.LASF738
	.byte	0xa8
	.byte	0x4
	.value	0x4b8
	.long	0x1da6
	.uleb128 0x11
	.long	.LASF16
	.byte	0x4
	.value	0x4ba
	.long	0x169f
	.byte	0
	.uleb128 0x11
	.long	.LASF739
	.byte	0x4
	.value	0x4bb
	.long	0x123
	.byte	0x18
	.uleb128 0x11
	.long	.LASF330
	.byte	0x4
	.value	0x4bc
	.long	0x123
	.byte	0x20
	.uleb128 0x11
	.long	.LASF740
	.byte	0x4
	.value	0x4bd
	.long	0x123
	.byte	0x28
	.uleb128 0x11
	.long	.LASF741
	.byte	0x4
	.value	0x4be
	.long	0x123
	.byte	0x30
	.uleb128 0x23
	.string	"uid"
	.byte	0x4
	.value	0x4bf
	.long	0x363
	.byte	0x38
	.uleb128 0x24
	.long	.LASF742
	.byte	0x4
	.value	0x4c1
	.long	0x363
	.byte	0x4
	.byte	0x9
	.byte	0x17
	.byte	0x3c
	.uleb128 0x24
	.long	.LASF1
	.byte	0x4
	.value	0x4c2
	.long	0x363
	.byte	0x4
	.byte	0x7
	.byte	0x10
	.byte	0x3c
	.uleb128 0x24
	.long	.LASF743
	.byte	0x4
	.value	0x4c4
	.long	0x363
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x3c
	.uleb128 0x24
	.long	.LASF744
	.byte	0x4
	.value	0x4c5
	.long	0x363
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x3c
	.uleb128 0x24
	.long	.LASF745
	.byte	0x4
	.value	0x4c6
	.long	0x363
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x3c
	.uleb128 0x24
	.long	.LASF746
	.byte	0x4
	.value	0x4c7
	.long	0x363
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x3c
	.uleb128 0x24
	.long	.LASF747
	.byte	0x4
	.value	0x4c8
	.long	0x363
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x3c
	.uleb128 0x24
	.long	.LASF748
	.byte	0x4
	.value	0x4c9
	.long	0x363
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x3c
	.uleb128 0x24
	.long	.LASF749
	.byte	0x4
	.value	0x4ca
	.long	0x363
	.byte	0x4
	.byte	0x2
	.byte	0x8
	.byte	0x3c
	.uleb128 0x24
	.long	.LASF697
	.byte	0x4
	.value	0x4cc
	.long	0x363
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x3c
	.uleb128 0x24
	.long	.LASF698
	.byte	0x4
	.value	0x4cd
	.long	0x363
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x3c
	.uleb128 0x24
	.long	.LASF699
	.byte	0x4
	.value	0x4ce
	.long	0x363
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x3c
	.uleb128 0x24
	.long	.LASF700
	.byte	0x4
	.value	0x4cf
	.long	0x363
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x3c
	.uleb128 0x24
	.long	.LASF701
	.byte	0x4
	.value	0x4d0
	.long	0x363
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x3c
	.uleb128 0x24
	.long	.LASF702
	.byte	0x4
	.value	0x4d1
	.long	0x363
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x3c
	.uleb128 0x24
	.long	.LASF703
	.byte	0x4
	.value	0x4d2
	.long	0x363
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x3c
	.uleb128 0x24
	.long	.LASF750
	.byte	0x4
	.value	0x4d3
	.long	0x363
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x3c
	.uleb128 0x11
	.long	.LASF331
	.byte	0x4
	.value	0x4d5
	.long	0x363
	.byte	0x40
	.uleb128 0x11
	.long	.LASF751
	.byte	0x4
	.value	0x4d6
	.long	0x123
	.byte	0x48
	.uleb128 0x11
	.long	.LASF752
	.byte	0x4
	.value	0x4d7
	.long	0x123
	.byte	0x50
	.uleb128 0x11
	.long	.LASF753
	.byte	0x4
	.value	0x4d8
	.long	0x1b6f
	.byte	0x58
	.uleb128 0x11
	.long	.LASF754
	.byte	0x4
	.value	0x4d9
	.long	0x123
	.byte	0x60
	.uleb128 0x11
	.long	.LASF755
	.byte	0x4
	.value	0x4da
	.long	0x123
	.byte	0x68
	.uleb128 0x11
	.long	.LASF756
	.byte	0x4
	.value	0x4db
	.long	0x123
	.byte	0x70
	.uleb128 0x11
	.long	.LASF757
	.byte	0x4
	.value	0x4dc
	.long	0x123
	.byte	0x78
	.uleb128 0x11
	.long	.LASF758
	.byte	0x4
	.value	0x4dd
	.long	0x123
	.byte	0x80
	.uleb128 0x11
	.long	.LASF759
	.byte	0x4
	.value	0x4de
	.long	0x123
	.byte	0x88
	.uleb128 0x11
	.long	.LASF760
	.byte	0x4
	.value	0x4df
	.long	0x123
	.byte	0x90
	.uleb128 0x11
	.long	.LASF761
	.byte	0x4
	.value	0x4e0
	.long	0x377
	.byte	0x98
	.uleb128 0x11
	.long	.LASF762
	.byte	0x4
	.value	0x4e2
	.long	0x1dab
	.byte	0xa0
	.byte	0
	.uleb128 0x21
	.long	.LASF764
	.uleb128 0x3
	.byte	0x8
	.long	0x1da6
	.uleb128 0x22
	.byte	0x4
	.byte	0x4
	.value	0x717
	.long	0x1ddb
	.uleb128 0x24
	.long	.LASF331
	.byte	0x4
	.value	0x717
	.long	0x363
	.byte	0x4
	.byte	0x18
	.byte	0x8
	.byte	0
	.uleb128 0x24
	.long	.LASF765
	.byte	0x4
	.value	0x717
	.long	0x363
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x25
	.byte	0x8
	.byte	0x4
	.value	0x70e
	.long	0x1e03
	.uleb128 0xb
	.string	"f"
	.byte	0x4
	.value	0x711
	.long	0x1432
	.uleb128 0xb
	.string	"i"
	.byte	0x4
	.value	0x714
	.long	0x377
	.uleb128 0xb
	.string	"a"
	.byte	0x4
	.value	0x717
	.long	0x1db1
	.byte	0
	.uleb128 0x25
	.byte	0x8
	.byte	0x4
	.value	0x72c
	.long	0x1e35
	.uleb128 0xb
	.string	"f"
	.byte	0x4
	.value	0x72d
	.long	0x22b5
	.uleb128 0xb
	.string	"r"
	.byte	0x4
	.value	0x72e
	.long	0x2d
	.uleb128 0xb
	.string	"t"
	.byte	0x4
	.value	0x72f
	.long	0x123
	.uleb128 0xb
	.string	"i"
	.byte	0x4
	.value	0x730
	.long	0x1de
	.byte	0
	.uleb128 0x26
	.long	.LASF766
	.value	0x1b0
	.byte	0x11
	.byte	0xae
	.long	0x22b5
	.uleb128 0x6
	.string	"eh"
	.byte	0x11
	.byte	0xb0
	.long	0x29c6
	.byte	0
	.uleb128 0x8
	.long	.LASF767
	.byte	0x11
	.byte	0xb1
	.long	0x29d1
	.byte	0x8
	.uleb128 0x8
	.long	.LASF328
	.byte	0x11
	.byte	0xb2
	.long	0x29d7
	.byte	0x10
	.uleb128 0x8
	.long	.LASF768
	.byte	0x11
	.byte	0xb3
	.long	0x29dd
	.byte	0x18
	.uleb128 0x8
	.long	.LASF769
	.byte	0x11
	.byte	0xb4
	.long	0x29e8
	.byte	0x20
	.uleb128 0x8
	.long	.LASF754
	.byte	0x11
	.byte	0xb9
	.long	0x5c5
	.byte	0x28
	.uleb128 0x8
	.long	.LASF23
	.byte	0x11
	.byte	0xbc
	.long	0x123
	.byte	0x30
	.uleb128 0x8
	.long	.LASF770
	.byte	0x11
	.byte	0xbf
	.long	0x22b5
	.byte	0x38
	.uleb128 0x8
	.long	.LASF771
	.byte	0x11
	.byte	0xc4
	.long	0x1de
	.byte	0x40
	.uleb128 0x8
	.long	.LASF772
	.byte	0x11
	.byte	0xc9
	.long	0x1de
	.byte	0x44
	.uleb128 0x8
	.long	.LASF773
	.byte	0x11
	.byte	0xce
	.long	0x1de
	.byte	0x48
	.uleb128 0x8
	.long	.LASF774
	.byte	0x11
	.byte	0xd2
	.long	0x1de
	.byte	0x4c
	.uleb128 0x8
	.long	.LASF775
	.byte	0x11
	.byte	0xd6
	.long	0x2d
	.byte	0x50
	.uleb128 0x8
	.long	.LASF776
	.byte	0x11
	.byte	0xda
	.long	0x2ff
	.byte	0x58
	.uleb128 0x8
	.long	.LASF777
	.byte	0x11
	.byte	0xe0
	.long	0x2d
	.byte	0x78
	.uleb128 0x8
	.long	.LASF778
	.byte	0x11
	.byte	0xe3
	.long	0x2d
	.byte	0x80
	.uleb128 0x8
	.long	.LASF779
	.byte	0x11
	.byte	0xe7
	.long	0x5c5
	.byte	0x88
	.uleb128 0x8
	.long	.LASF780
	.byte	0x11
	.byte	0xeb
	.long	0x29f3
	.byte	0x90
	.uleb128 0x8
	.long	.LASF781
	.byte	0x11
	.byte	0xee
	.long	0x1de
	.byte	0x98
	.uleb128 0x8
	.long	.LASF782
	.byte	0x11
	.byte	0xf3
	.long	0x123
	.byte	0xa0
	.uleb128 0x8
	.long	.LASF783
	.byte	0x11
	.byte	0xf9
	.long	0x2d
	.byte	0xa8
	.uleb128 0x8
	.long	.LASF784
	.byte	0x11
	.byte	0xfd
	.long	0x2d
	.byte	0xb0
	.uleb128 0x11
	.long	.LASF785
	.byte	0x11
	.value	0x102
	.long	0x2d
	.byte	0xb8
	.uleb128 0x11
	.long	.LASF786
	.byte	0x11
	.value	0x108
	.long	0x2d
	.byte	0xc0
	.uleb128 0x11
	.long	.LASF787
	.byte	0x11
	.value	0x10d
	.long	0x2d
	.byte	0xc8
	.uleb128 0x11
	.long	.LASF788
	.byte	0x11
	.value	0x111
	.long	0x2d
	.byte	0xd0
	.uleb128 0x11
	.long	.LASF789
	.byte	0x11
	.value	0x115
	.long	0x2d
	.byte	0xd8
	.uleb128 0x11
	.long	.LASF790
	.byte	0x11
	.value	0x118
	.long	0x123
	.byte	0xe0
	.uleb128 0x11
	.long	.LASF791
	.byte	0x11
	.value	0x11c
	.long	0x2d
	.byte	0xe8
	.uleb128 0x11
	.long	.LASF792
	.byte	0x11
	.value	0x11f
	.long	0x2d
	.byte	0xf0
	.uleb128 0x11
	.long	.LASF793
	.byte	0x11
	.value	0x125
	.long	0x2d
	.byte	0xf8
	.uleb128 0x27
	.long	.LASF794
	.byte	0x11
	.value	0x12a
	.long	0x2d
	.value	0x100
	.uleb128 0x27
	.long	.LASF795
	.byte	0x11
	.value	0x12f
	.long	0x377
	.value	0x108
	.uleb128 0x27
	.long	.LASF796
	.byte	0x11
	.value	0x134
	.long	0x123
	.value	0x110
	.uleb128 0x27
	.long	.LASF797
	.byte	0x11
	.value	0x13d
	.long	0x123
	.value	0x118
	.uleb128 0x27
	.long	.LASF798
	.byte	0x11
	.value	0x140
	.long	0x2d
	.value	0x120
	.uleb128 0x27
	.long	.LASF799
	.byte	0x11
	.value	0x144
	.long	0x2d
	.value	0x128
	.uleb128 0x27
	.long	.LASF800
	.byte	0x11
	.value	0x148
	.long	0x363
	.value	0x130
	.uleb128 0x27
	.long	.LASF801
	.byte	0x11
	.value	0x14e
	.long	0xffd
	.value	0x138
	.uleb128 0x27
	.long	.LASF802
	.byte	0x11
	.value	0x151
	.long	0x29fe
	.value	0x140
	.uleb128 0x27
	.long	.LASF803
	.byte	0x11
	.value	0x154
	.long	0x1de
	.value	0x148
	.uleb128 0x27
	.long	.LASF804
	.byte	0x11
	.value	0x157
	.long	0x1de
	.value	0x14c
	.uleb128 0x27
	.long	.LASF805
	.byte	0x11
	.value	0x15d
	.long	0x1de
	.value	0x150
	.uleb128 0x27
	.long	.LASF806
	.byte	0x11
	.value	0x161
	.long	0x2868
	.value	0x158
	.uleb128 0x27
	.long	.LASF807
	.byte	0x11
	.value	0x164
	.long	0x1de
	.value	0x160
	.uleb128 0x27
	.long	.LASF808
	.byte	0x11
	.value	0x165
	.long	0x1de
	.value	0x164
	.uleb128 0x27
	.long	.LASF809
	.byte	0x11
	.value	0x167
	.long	0x36a
	.value	0x168
	.uleb128 0x27
	.long	.LASF810
	.byte	0x11
	.value	0x168
	.long	0x123
	.value	0x170
	.uleb128 0x27
	.long	.LASF811
	.byte	0x11
	.value	0x16b
	.long	0x2d
	.value	0x178
	.uleb128 0x27
	.long	.LASF812
	.byte	0x11
	.value	0x16d
	.long	0x1de
	.value	0x180
	.uleb128 0x27
	.long	.LASF813
	.byte	0x11
	.value	0x170
	.long	0x1de
	.value	0x184
	.uleb128 0x27
	.long	.LASF814
	.byte	0x11
	.value	0x175
	.long	0x2a09
	.value	0x188
	.uleb128 0x27
	.long	.LASF815
	.byte	0x11
	.value	0x177
	.long	0x1de
	.value	0x190
	.uleb128 0x27
	.long	.LASF816
	.byte	0x11
	.value	0x179
	.long	0x1de
	.value	0x194
	.uleb128 0x27
	.long	.LASF817
	.byte	0x11
	.value	0x17c
	.long	0x2a14
	.value	0x198
	.uleb128 0x27
	.long	.LASF818
	.byte	0x11
	.value	0x182
	.long	0x2d
	.value	0x1a0
	.uleb128 0x28
	.long	.LASF819
	.byte	0x11
	.value	0x188
	.long	0x363
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.value	0x1a8
	.uleb128 0x28
	.long	.LASF820
	.byte	0x11
	.value	0x18c
	.long	0x363
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.value	0x1a8
	.uleb128 0x28
	.long	.LASF821
	.byte	0x11
	.value	0x18f
	.long	0x363
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.value	0x1a8
	.uleb128 0x28
	.long	.LASF822
	.byte	0x11
	.value	0x192
	.long	0x363
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.value	0x1a8
	.uleb128 0x28
	.long	.LASF823
	.byte	0x11
	.value	0x195
	.long	0x363
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.value	0x1a8
	.uleb128 0x28
	.long	.LASF824
	.byte	0x11
	.value	0x198
	.long	0x363
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.value	0x1a8
	.uleb128 0x28
	.long	.LASF825
	.byte	0x11
	.value	0x19c
	.long	0x363
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.value	0x1a8
	.uleb128 0x28
	.long	.LASF826
	.byte	0x11
	.value	0x19f
	.long	0x363
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.value	0x1a8
	.uleb128 0x28
	.long	.LASF827
	.byte	0x11
	.value	0x1a3
	.long	0x363
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.value	0x1a8
	.uleb128 0x28
	.long	.LASF828
	.byte	0x11
	.value	0x1a7
	.long	0x363
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.value	0x1a8
	.uleb128 0x28
	.long	.LASF829
	.byte	0x11
	.value	0x1aa
	.long	0x363
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.value	0x1a8
	.uleb128 0x28
	.long	.LASF830
	.byte	0x11
	.value	0x1ad
	.long	0x363
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.value	0x1a8
	.uleb128 0x28
	.long	.LASF831
	.byte	0x11
	.value	0x1b2
	.long	0x363
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.value	0x1a8
	.uleb128 0x28
	.long	.LASF832
	.byte	0x11
	.value	0x1b6
	.long	0x363
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.value	0x1a8
	.uleb128 0x28
	.long	.LASF833
	.byte	0x11
	.value	0x1b9
	.long	0x363
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.value	0x1a8
	.uleb128 0x28
	.long	.LASF834
	.byte	0x11
	.value	0x1bd
	.long	0x363
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.value	0x1a8
	.uleb128 0x28
	.long	.LASF835
	.byte	0x11
	.value	0x1c1
	.long	0x363
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.value	0x1a8
	.uleb128 0x28
	.long	.LASF836
	.byte	0x11
	.value	0x1c5
	.long	0x363
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.value	0x1a8
	.uleb128 0x28
	.long	.LASF837
	.byte	0x11
	.value	0x1cb
	.long	0x363
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.value	0x1a8
	.uleb128 0x28
	.long	.LASF838
	.byte	0x11
	.value	0x1d4
	.long	0x363
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.value	0x1a8
	.uleb128 0x28
	.long	.LASF839
	.byte	0x11
	.value	0x1d7
	.long	0x363
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.value	0x1a8
	.uleb128 0x28
	.long	.LASF840
	.byte	0x11
	.value	0x1da
	.long	0x363
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.value	0x1a8
	.uleb128 0x28
	.long	.LASF841
	.byte	0x11
	.value	0x1dd
	.long	0x363
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.value	0x1a8
	.uleb128 0x28
	.long	.LASF842
	.byte	0x11
	.value	0x1e0
	.long	0x363
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.value	0x1a8
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1e35
	.uleb128 0x10
	.long	.LASF843
	.byte	0xd0
	.byte	0x4
	.value	0x6dc
	.long	0x263f
	.uleb128 0x11
	.long	.LASF16
	.byte	0x4
	.value	0x6de
	.long	0x169f
	.byte	0
	.uleb128 0x11
	.long	.LASF844
	.byte	0x4
	.value	0x6df
	.long	0x5c5
	.byte	0x18
	.uleb128 0x11
	.long	.LASF845
	.byte	0x4
	.value	0x6e0
	.long	0x1de
	.byte	0x20
	.uleb128 0x23
	.string	"uid"
	.byte	0x4
	.value	0x6e1
	.long	0x363
	.byte	0x24
	.uleb128 0x11
	.long	.LASF330
	.byte	0x4
	.value	0x6e2
	.long	0x123
	.byte	0x28
	.uleb128 0x24
	.long	.LASF1
	.byte	0x4
	.value	0x6e3
	.long	0x363
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x30
	.uleb128 0x24
	.long	.LASF846
	.byte	0x4
	.value	0x6e5
	.long	0x363
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x30
	.uleb128 0x24
	.long	.LASF847
	.byte	0x4
	.value	0x6e6
	.long	0x363
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x30
	.uleb128 0x24
	.long	.LASF848
	.byte	0x4
	.value	0x6e7
	.long	0x363
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x30
	.uleb128 0x24
	.long	.LASF849
	.byte	0x4
	.value	0x6e8
	.long	0x363
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x30
	.uleb128 0x24
	.long	.LASF850
	.byte	0x4
	.value	0x6e9
	.long	0x363
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x30
	.uleb128 0x24
	.long	.LASF851
	.byte	0x4
	.value	0x6ea
	.long	0x363
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x30
	.uleb128 0x24
	.long	.LASF852
	.byte	0x4
	.value	0x6eb
	.long	0x363
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x30
	.uleb128 0x24
	.long	.LASF729
	.byte	0x4
	.value	0x6ec
	.long	0x363
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x30
	.uleb128 0x24
	.long	.LASF853
	.byte	0x4
	.value	0x6ee
	.long	0x363
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x30
	.uleb128 0x24
	.long	.LASF854
	.byte	0x4
	.value	0x6ef
	.long	0x363
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x30
	.uleb128 0x24
	.long	.LASF855
	.byte	0x4
	.value	0x6f0
	.long	0x363
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x30
	.uleb128 0x24
	.long	.LASF856
	.byte	0x4
	.value	0x6f1
	.long	0x363
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x30
	.uleb128 0x24
	.long	.LASF857
	.byte	0x4
	.value	0x6f2
	.long	0x363
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x30
	.uleb128 0x24
	.long	.LASF858
	.byte	0x4
	.value	0x6f3
	.long	0x363
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x30
	.uleb128 0x24
	.long	.LASF859
	.byte	0x4
	.value	0x6f4
	.long	0x363
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x30
	.uleb128 0x24
	.long	.LASF860
	.byte	0x4
	.value	0x6f5
	.long	0x363
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x30
	.uleb128 0x24
	.long	.LASF861
	.byte	0x4
	.value	0x6f7
	.long	0x363
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x30
	.uleb128 0x24
	.long	.LASF862
	.byte	0x4
	.value	0x6f8
	.long	0x363
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x30
	.uleb128 0x24
	.long	.LASF863
	.byte	0x4
	.value	0x6f9
	.long	0x363
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x30
	.uleb128 0x24
	.long	.LASF864
	.byte	0x4
	.value	0x6fa
	.long	0x363
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x30
	.uleb128 0x24
	.long	.LASF865
	.byte	0x4
	.value	0x6fb
	.long	0x363
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x30
	.uleb128 0x24
	.long	.LASF866
	.byte	0x4
	.value	0x6fc
	.long	0x363
	.byte	0x4
	.byte	0x2
	.byte	0x1
	.byte	0x30
	.uleb128 0x24
	.long	.LASF867
	.byte	0x4
	.value	0x6fd
	.long	0x363
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x30
	.uleb128 0x24
	.long	.LASF749
	.byte	0x4
	.value	0x6ff
	.long	0x363
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0x34
	.uleb128 0x24
	.long	.LASF868
	.byte	0x4
	.value	0x700
	.long	0x363
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x34
	.uleb128 0x24
	.long	.LASF750
	.byte	0x4
	.value	0x701
	.long	0x363
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x34
	.uleb128 0x24
	.long	.LASF869
	.byte	0x4
	.value	0x702
	.long	0x363
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x34
	.uleb128 0x24
	.long	.LASF697
	.byte	0x4
	.value	0x705
	.long	0x363
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x34
	.uleb128 0x24
	.long	.LASF698
	.byte	0x4
	.value	0x706
	.long	0x363
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x34
	.uleb128 0x24
	.long	.LASF699
	.byte	0x4
	.value	0x707
	.long	0x363
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x34
	.uleb128 0x24
	.long	.LASF700
	.byte	0x4
	.value	0x708
	.long	0x363
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x34
	.uleb128 0x24
	.long	.LASF701
	.byte	0x4
	.value	0x709
	.long	0x363
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x34
	.uleb128 0x24
	.long	.LASF702
	.byte	0x4
	.value	0x70a
	.long	0x363
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x34
	.uleb128 0x24
	.long	.LASF703
	.byte	0x4
	.value	0x70b
	.long	0x363
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x34
	.uleb128 0x24
	.long	.LASF870
	.byte	0x4
	.value	0x70c
	.long	0x363
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x34
	.uleb128 0x23
	.string	"u1"
	.byte	0x4
	.value	0x718
	.long	0x1ddb
	.byte	0x38
	.uleb128 0x11
	.long	.LASF740
	.byte	0x4
	.value	0x71a
	.long	0x123
	.byte	0x40
	.uleb128 0x11
	.long	.LASF754
	.byte	0x4
	.value	0x71b
	.long	0x123
	.byte	0x48
	.uleb128 0x11
	.long	.LASF760
	.byte	0x4
	.value	0x71c
	.long	0x123
	.byte	0x50
	.uleb128 0x11
	.long	.LASF871
	.byte	0x4
	.value	0x71d
	.long	0x123
	.byte	0x58
	.uleb128 0x11
	.long	.LASF872
	.byte	0x4
	.value	0x71e
	.long	0x123
	.byte	0x60
	.uleb128 0x11
	.long	.LASF873
	.byte	0x4
	.value	0x71f
	.long	0x123
	.byte	0x68
	.uleb128 0x11
	.long	.LASF734
	.byte	0x4
	.value	0x720
	.long	0x123
	.byte	0x70
	.uleb128 0x11
	.long	.LASF874
	.byte	0x4
	.value	0x721
	.long	0x123
	.byte	0x78
	.uleb128 0x11
	.long	.LASF875
	.byte	0x4
	.value	0x722
	.long	0x123
	.byte	0x80
	.uleb128 0x11
	.long	.LASF741
	.byte	0x4
	.value	0x723
	.long	0x123
	.byte	0x88
	.uleb128 0x23
	.string	"rtl"
	.byte	0x4
	.value	0x724
	.long	0x2d
	.byte	0x90
	.uleb128 0x11
	.long	.LASF876
	.byte	0x4
	.value	0x725
	.long	0x2d
	.byte	0x98
	.uleb128 0x23
	.string	"u2"
	.byte	0x4
	.value	0x731
	.long	0x1e03
	.byte	0xa0
	.uleb128 0x11
	.long	.LASF877
	.byte	0x4
	.value	0x734
	.long	0x123
	.byte	0xa8
	.uleb128 0x11
	.long	.LASF878
	.byte	0x4
	.value	0x738
	.long	0x123
	.byte	0xb0
	.uleb128 0x11
	.long	.LASF879
	.byte	0x4
	.value	0x73a
	.long	0x123
	.byte	0xb8
	.uleb128 0x11
	.long	.LASF880
	.byte	0x4
	.value	0x73b
	.long	0x377
	.byte	0xc0
	.uleb128 0x11
	.long	.LASF762
	.byte	0x4
	.value	0x73d
	.long	0x2644
	.byte	0xc8
	.byte	0
	.uleb128 0x21
	.long	.LASF881
	.uleb128 0x3
	.byte	0x8
	.long	0x263f
	.uleb128 0xe
	.long	.LASF882
	.byte	0x4
	.byte	0x4
	.value	0x757
	.long	0x2790
	.uleb128 0xf
	.long	.LASF883
	.sleb128 0
	.uleb128 0xf
	.long	.LASF884
	.sleb128 1
	.uleb128 0xf
	.long	.LASF885
	.sleb128 2
	.uleb128 0xf
	.long	.LASF886
	.sleb128 3
	.uleb128 0xf
	.long	.LASF887
	.sleb128 4
	.uleb128 0xf
	.long	.LASF888
	.sleb128 5
	.uleb128 0xf
	.long	.LASF889
	.sleb128 6
	.uleb128 0xf
	.long	.LASF890
	.sleb128 7
	.uleb128 0xf
	.long	.LASF891
	.sleb128 8
	.uleb128 0xf
	.long	.LASF892
	.sleb128 9
	.uleb128 0xf
	.long	.LASF893
	.sleb128 10
	.uleb128 0xf
	.long	.LASF894
	.sleb128 11
	.uleb128 0xf
	.long	.LASF895
	.sleb128 12
	.uleb128 0xf
	.long	.LASF896
	.sleb128 13
	.uleb128 0xf
	.long	.LASF897
	.sleb128 14
	.uleb128 0xf
	.long	.LASF898
	.sleb128 15
	.uleb128 0xf
	.long	.LASF899
	.sleb128 16
	.uleb128 0xf
	.long	.LASF900
	.sleb128 17
	.uleb128 0xf
	.long	.LASF901
	.sleb128 18
	.uleb128 0xf
	.long	.LASF902
	.sleb128 19
	.uleb128 0xf
	.long	.LASF903
	.sleb128 20
	.uleb128 0xf
	.long	.LASF904
	.sleb128 21
	.uleb128 0xf
	.long	.LASF905
	.sleb128 22
	.uleb128 0xf
	.long	.LASF906
	.sleb128 23
	.uleb128 0xf
	.long	.LASF907
	.sleb128 24
	.uleb128 0xf
	.long	.LASF908
	.sleb128 25
	.uleb128 0xf
	.long	.LASF909
	.sleb128 26
	.uleb128 0xf
	.long	.LASF910
	.sleb128 27
	.uleb128 0xf
	.long	.LASF911
	.sleb128 28
	.uleb128 0xf
	.long	.LASF912
	.sleb128 29
	.uleb128 0xf
	.long	.LASF913
	.sleb128 30
	.uleb128 0xf
	.long	.LASF914
	.sleb128 31
	.uleb128 0xf
	.long	.LASF915
	.sleb128 32
	.uleb128 0xf
	.long	.LASF916
	.sleb128 33
	.uleb128 0xf
	.long	.LASF917
	.sleb128 34
	.uleb128 0xf
	.long	.LASF918
	.sleb128 35
	.uleb128 0xf
	.long	.LASF919
	.sleb128 36
	.uleb128 0xf
	.long	.LASF920
	.sleb128 37
	.uleb128 0xf
	.long	.LASF921
	.sleb128 38
	.uleb128 0xf
	.long	.LASF922
	.sleb128 39
	.uleb128 0xf
	.long	.LASF923
	.sleb128 40
	.uleb128 0xf
	.long	.LASF924
	.sleb128 41
	.uleb128 0xf
	.long	.LASF925
	.sleb128 42
	.uleb128 0xf
	.long	.LASF926
	.sleb128 43
	.uleb128 0xf
	.long	.LASF927
	.sleb128 44
	.uleb128 0xf
	.long	.LASF928
	.sleb128 45
	.uleb128 0xf
	.long	.LASF929
	.sleb128 46
	.uleb128 0xf
	.long	.LASF930
	.sleb128 47
	.uleb128 0xf
	.long	.LASF931
	.sleb128 48
	.uleb128 0xf
	.long	.LASF932
	.sleb128 49
	.uleb128 0xf
	.long	.LASF933
	.sleb128 50
	.uleb128 0xf
	.long	.LASF934
	.sleb128 51
	.byte	0
	.uleb128 0xe
	.long	.LASF935
	.byte	0x4
	.byte	0x4
	.value	0x7e4
	.long	0x27e6
	.uleb128 0xf
	.long	.LASF936
	.sleb128 0
	.uleb128 0xf
	.long	.LASF937
	.sleb128 1
	.uleb128 0xf
	.long	.LASF938
	.sleb128 2
	.uleb128 0xf
	.long	.LASF939
	.sleb128 3
	.uleb128 0xf
	.long	.LASF940
	.sleb128 4
	.uleb128 0xf
	.long	.LASF941
	.sleb128 5
	.uleb128 0xf
	.long	.LASF942
	.sleb128 6
	.uleb128 0xf
	.long	.LASF943
	.sleb128 7
	.uleb128 0xf
	.long	.LASF944
	.sleb128 8
	.uleb128 0xf
	.long	.LASF945
	.sleb128 9
	.uleb128 0xf
	.long	.LASF946
	.sleb128 10
	.uleb128 0xf
	.long	.LASF947
	.sleb128 11
	.byte	0
	.uleb128 0xd
	.byte	0x1
	.byte	0x2
	.long	.LASF948
	.uleb128 0x3
	.byte	0x8
	.long	0x123
	.uleb128 0xe
	.long	.LASF949
	.byte	0x4
	.byte	0x4
	.value	0x972
	.long	0x282b
	.uleb128 0xf
	.long	.LASF950
	.sleb128 0
	.uleb128 0xf
	.long	.LASF951
	.sleb128 1
	.uleb128 0xf
	.long	.LASF952
	.sleb128 2
	.uleb128 0xf
	.long	.LASF953
	.sleb128 3
	.uleb128 0xf
	.long	.LASF954
	.sleb128 4
	.uleb128 0xf
	.long	.LASF955
	.sleb128 5
	.uleb128 0xf
	.long	.LASF956
	.sleb128 6
	.byte	0
	.uleb128 0x4
	.long	.LASF957
	.byte	0x18
	.byte	0x11
	.byte	0x16
	.long	0x2868
	.uleb128 0x8
	.long	.LASF958
	.byte	0x11
	.byte	0x18
	.long	0x2d
	.byte	0
	.uleb128 0x8
	.long	.LASF959
	.byte	0x11
	.byte	0x19
	.long	0x615
	.byte	0x8
	.uleb128 0x8
	.long	.LASF960
	.byte	0x11
	.byte	0x1a
	.long	0x1de
	.byte	0xc
	.uleb128 0x8
	.long	.LASF961
	.byte	0x11
	.byte	0x1b
	.long	0x2868
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x282b
	.uleb128 0x4
	.long	.LASF962
	.byte	0x20
	.byte	0x11
	.byte	0x23
	.long	0x28ab
	.uleb128 0x8
	.long	.LASF346
	.byte	0x11
	.byte	0x26
	.long	0x2d
	.byte	0
	.uleb128 0x8
	.long	.LASF963
	.byte	0x11
	.byte	0x26
	.long	0x2d
	.byte	0x8
	.uleb128 0x8
	.long	.LASF964
	.byte	0x11
	.byte	0x27
	.long	0x123
	.byte	0x10
	.uleb128 0x8
	.long	.LASF961
	.byte	0x11
	.byte	0x28
	.long	0x28ab
	.byte	0x18
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x286e
	.uleb128 0x4
	.long	.LASF965
	.byte	0x58
	.byte	0x11
	.byte	0x35
	.long	0x295a
	.uleb128 0x8
	.long	.LASF966
	.byte	0x11
	.byte	0x39
	.long	0x1de
	.byte	0
	.uleb128 0x8
	.long	.LASF967
	.byte	0x11
	.byte	0x3c
	.long	0x1de
	.byte	0x4
	.uleb128 0x8
	.long	.LASF968
	.byte	0x11
	.byte	0x43
	.long	0x2d
	.byte	0x8
	.uleb128 0x8
	.long	.LASF969
	.byte	0x11
	.byte	0x44
	.long	0x2d
	.byte	0x10
	.uleb128 0x8
	.long	.LASF964
	.byte	0x11
	.byte	0x49
	.long	0x123
	.byte	0x18
	.uleb128 0x8
	.long	.LASF962
	.byte	0x11
	.byte	0x4f
	.long	0x28ab
	.byte	0x20
	.uleb128 0x8
	.long	.LASF970
	.byte	0x11
	.byte	0x53
	.long	0x1de
	.byte	0x28
	.uleb128 0x8
	.long	.LASF971
	.byte	0x11
	.byte	0x57
	.long	0x1de
	.byte	0x2c
	.uleb128 0x8
	.long	.LASF972
	.byte	0x11
	.byte	0x58
	.long	0x5c5
	.byte	0x30
	.uleb128 0x8
	.long	.LASF973
	.byte	0x11
	.byte	0x5e
	.long	0x1de
	.byte	0x38
	.uleb128 0x8
	.long	.LASF974
	.byte	0x11
	.byte	0x63
	.long	0x295a
	.byte	0x40
	.uleb128 0x8
	.long	.LASF975
	.byte	0x11
	.byte	0x67
	.long	0x27ed
	.byte	0x48
	.uleb128 0x8
	.long	.LASF976
	.byte	0x11
	.byte	0x6b
	.long	0xffd
	.byte	0x50
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x390
	.uleb128 0x4
	.long	.LASF977
	.byte	0x30
	.byte	0x11
	.byte	0x77
	.long	0x29c1
	.uleb128 0x8
	.long	.LASF978
	.byte	0x11
	.byte	0x7b
	.long	0x1de
	.byte	0
	.uleb128 0x8
	.long	.LASF979
	.byte	0x11
	.byte	0x8c
	.long	0x1de
	.byte	0x4
	.uleb128 0x8
	.long	.LASF980
	.byte	0x11
	.byte	0x92
	.long	0x1de
	.byte	0x8
	.uleb128 0x8
	.long	.LASF981
	.byte	0x11
	.byte	0x97
	.long	0x2d
	.byte	0x10
	.uleb128 0x8
	.long	.LASF982
	.byte	0x11
	.byte	0x9a
	.long	0x2d
	.byte	0x18
	.uleb128 0x8
	.long	.LASF983
	.byte	0x11
	.byte	0x9d
	.long	0x2d
	.byte	0x20
	.uleb128 0x8
	.long	.LASF984
	.byte	0x11
	.byte	0xa0
	.long	0x2d
	.byte	0x28
	.byte	0
	.uleb128 0x21
	.long	.LASF985
	.uleb128 0x3
	.byte	0x8
	.long	0x29c1
	.uleb128 0x21
	.long	.LASF986
	.uleb128 0x3
	.byte	0x8
	.long	0x29cc
	.uleb128 0x3
	.byte	0x8
	.long	0x2960
	.uleb128 0x3
	.byte	0x8
	.long	0x28b1
	.uleb128 0x21
	.long	.LASF987
	.uleb128 0x3
	.byte	0x8
	.long	0x29e3
	.uleb128 0x21
	.long	.LASF988
	.uleb128 0x3
	.byte	0x8
	.long	0x29ee
	.uleb128 0x21
	.long	.LASF989
	.uleb128 0x3
	.byte	0x8
	.long	0x29f9
	.uleb128 0x21
	.long	.LASF990
	.uleb128 0x3
	.byte	0x8
	.long	0x2a04
	.uleb128 0x21
	.long	.LASF991
	.uleb128 0x3
	.byte	0x8
	.long	0x2a0f
	.uleb128 0x4
	.long	.LASF992
	.byte	0x10
	.byte	0x12
	.byte	0x24
	.long	0x2a3f
	.uleb128 0x6
	.string	"rtx"
	.byte	0x12
	.byte	0x32
	.long	0x38
	.byte	0
	.uleb128 0x6
	.string	"age"
	.byte	0x12
	.byte	0x36
	.long	0x363
	.byte	0x8
	.byte	0
	.uleb128 0x1e
	.long	.LASF993
	.byte	0x10
	.byte	0x12
	.byte	0x3a
	.long	0x2b24
	.uleb128 0x20
	.string	"c"
	.byte	0x12
	.byte	0x3b
	.long	0x59f
	.uleb128 0x20
	.string	"uc"
	.byte	0x12
	.byte	0x3c
	.long	0x2b24
	.uleb128 0x20
	.string	"s"
	.byte	0x12
	.byte	0x3d
	.long	0x2b34
	.uleb128 0x20
	.string	"us"
	.byte	0x12
	.byte	0x3e
	.long	0x2b44
	.uleb128 0x20
	.string	"i"
	.byte	0x12
	.byte	0x3f
	.long	0x2b54
	.uleb128 0x20
	.string	"u"
	.byte	0x12
	.byte	0x40
	.long	0x2b64
	.uleb128 0x20
	.string	"l"
	.byte	0x12
	.byte	0x41
	.long	0x2b74
	.uleb128 0x20
	.string	"ul"
	.byte	0x12
	.byte	0x42
	.long	0x2b84
	.uleb128 0x1f
	.long	.LASF994
	.byte	0x12
	.byte	0x43
	.long	0x2b74
	.uleb128 0x1f
	.long	.LASF995
	.byte	0x12
	.byte	0x44
	.long	0x2b84
	.uleb128 0x1f
	.long	.LASF996
	.byte	0x12
	.byte	0x45
	.long	0x2b94
	.uleb128 0x1f
	.long	.LASF997
	.byte	0x12
	.byte	0x46
	.long	0x2ba4
	.uleb128 0x20
	.string	"rtx"
	.byte	0x12
	.byte	0x47
	.long	0x2bb4
	.uleb128 0x1f
	.long	.LASF10
	.byte	0x12
	.byte	0x48
	.long	0x2bc4
	.uleb128 0x1f
	.long	.LASF15
	.byte	0x12
	.byte	0x49
	.long	0x2bd4
	.uleb128 0x1f
	.long	.LASF998
	.byte	0x12
	.byte	0x4a
	.long	0x2be4
	.uleb128 0x1f
	.long	.LASF999
	.byte	0x12
	.byte	0x4b
	.long	0x2bf4
	.uleb128 0x20
	.string	"reg"
	.byte	0x12
	.byte	0x4c
	.long	0x2c0f
	.uleb128 0x1f
	.long	.LASF1000
	.byte	0x12
	.byte	0x4d
	.long	0x2cb6
	.uleb128 0x20
	.string	"bb"
	.byte	0x12
	.byte	0x4e
	.long	0x2cc6
	.uleb128 0x20
	.string	"te"
	.byte	0x12
	.byte	0x4f
	.long	0x2cd6
	.byte	0
	.uleb128 0x13
	.long	0x390
	.long	0x2b34
	.uleb128 0x14
	.long	0x1e5
	.byte	0
	.byte	0
	.uleb128 0x13
	.long	0x3a5
	.long	0x2b44
	.uleb128 0x14
	.long	0x1e5
	.byte	0
	.byte	0
	.uleb128 0x13
	.long	0x397
	.long	0x2b54
	.uleb128 0x14
	.long	0x1e5
	.byte	0
	.byte	0
	.uleb128 0x13
	.long	0x1de
	.long	0x2b64
	.uleb128 0x14
	.long	0x1e5
	.byte	0
	.byte	0
	.uleb128 0x13
	.long	0x363
	.long	0x2b74
	.uleb128 0x14
	.long	0x1e5
	.byte	0
	.byte	0
	.uleb128 0x13
	.long	0x377
	.long	0x2b84
	.uleb128 0x14
	.long	0x1e5
	.byte	0
	.byte	0
	.uleb128 0x13
	.long	0x389
	.long	0x2b94
	.uleb128 0x14
	.long	0x1e5
	.byte	0
	.byte	0
	.uleb128 0x13
	.long	0x36a
	.long	0x2ba4
	.uleb128 0x14
	.long	0x1e5
	.byte	0
	.byte	0
	.uleb128 0x13
	.long	0x3c2
	.long	0x2bb4
	.uleb128 0x14
	.long	0x1e5
	.byte	0
	.byte	0
	.uleb128 0x13
	.long	0x38
	.long	0x2bc4
	.uleb128 0x14
	.long	0x1e5
	.byte	0
	.byte	0
	.uleb128 0x13
	.long	0xf8
	.long	0x2bd4
	.uleb128 0x14
	.long	0x1e5
	.byte	0
	.byte	0
	.uleb128 0x13
	.long	0x12e
	.long	0x2be4
	.uleb128 0x14
	.long	0x1e5
	.byte	0
	.byte	0
	.uleb128 0x13
	.long	0xd82
	.long	0x2bf4
	.uleb128 0x14
	.long	0x1e5
	.byte	0
	.byte	0
	.uleb128 0x13
	.long	0x2c04
	.long	0x2c04
	.uleb128 0x14
	.long	0x1e5
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x2c0a
	.uleb128 0x21
	.long	.LASF1001
	.uleb128 0x13
	.long	0x2c1f
	.long	0x2c1f
	.uleb128 0x14
	.long	0x1e5
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x2c25
	.uleb128 0x4
	.long	.LASF1002
	.byte	0x2c
	.byte	0x13
	.byte	0x2d
	.long	0x2cb6
	.uleb128 0x8
	.long	.LASF1003
	.byte	0x13
	.byte	0x2f
	.long	0x1de
	.byte	0
	.uleb128 0x8
	.long	.LASF1004
	.byte	0x13
	.byte	0x30
	.long	0x1de
	.byte	0x4
	.uleb128 0x8
	.long	.LASF1005
	.byte	0x13
	.byte	0x31
	.long	0x1de
	.byte	0x8
	.uleb128 0x8
	.long	.LASF1006
	.byte	0x13
	.byte	0x34
	.long	0x1de
	.byte	0xc
	.uleb128 0x8
	.long	.LASF1007
	.byte	0x13
	.byte	0x37
	.long	0x1de
	.byte	0x10
	.uleb128 0x8
	.long	.LASF1008
	.byte	0x13
	.byte	0x38
	.long	0x1de
	.byte	0x14
	.uleb128 0x8
	.long	.LASF1009
	.byte	0x13
	.byte	0x39
	.long	0x1de
	.byte	0x18
	.uleb128 0x8
	.long	.LASF1010
	.byte	0x13
	.byte	0x3a
	.long	0x1de
	.byte	0x1c
	.uleb128 0x8
	.long	.LASF1011
	.byte	0x13
	.byte	0x3b
	.long	0x1de
	.byte	0x20
	.uleb128 0x8
	.long	.LASF1012
	.byte	0x13
	.byte	0x3c
	.long	0x1de
	.byte	0x24
	.uleb128 0x8
	.long	.LASF1013
	.byte	0x13
	.byte	0x3d
	.long	0x3c8
	.byte	0x28
	.byte	0
	.uleb128 0x13
	.long	0x2a1a
	.long	0x2cc6
	.uleb128 0x14
	.long	0x1e5
	.byte	0
	.byte	0
	.uleb128 0x13
	.long	0xe55
	.long	0x2cd6
	.uleb128 0x14
	.long	0x1e5
	.byte	0
	.byte	0
	.uleb128 0x13
	.long	0x2ce6
	.long	0x2ce6
	.uleb128 0x14
	.long	0x1e5
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x2cec
	.uleb128 0x21
	.long	.LASF1014
	.uleb128 0x7
	.long	.LASF1015
	.byte	0x12
	.byte	0x50
	.long	0x2a3f
	.uleb128 0x4
	.long	.LASF1016
	.byte	0x30
	.byte	0x12
	.byte	0x53
	.long	0x2d45
	.uleb128 0x8
	.long	.LASF1017
	.byte	0x12
	.byte	0x54
	.long	0x37e
	.byte	0
	.uleb128 0x8
	.long	.LASF1018
	.byte	0x12
	.byte	0x55
	.long	0x37e
	.byte	0x8
	.uleb128 0x8
	.long	.LASF1019
	.byte	0x12
	.byte	0x57
	.long	0x37e
	.byte	0x10
	.uleb128 0x8
	.long	.LASF754
	.byte	0x12
	.byte	0x58
	.long	0x5c5
	.byte	0x18
	.uleb128 0x8
	.long	.LASF1020
	.byte	0x12
	.byte	0x59
	.long	0x2cf1
	.byte	0x20
	.byte	0
	.uleb128 0x7
	.long	.LASF1021
	.byte	0x12
	.byte	0x5a
	.long	0x2d50
	.uleb128 0x3
	.byte	0x8
	.long	0x2cfc
	.uleb128 0x7
	.long	.LASF1022
	.byte	0x14
	.byte	0x2a
	.long	0x363
	.uleb128 0x7
	.long	.LASF1023
	.byte	0x14
	.byte	0x2f
	.long	0x2d6c
	.uleb128 0x3
	.byte	0x8
	.long	0x2d72
	.uleb128 0x18
	.long	0x2d56
	.long	0x2d81
	.uleb128 0x19
	.long	0x60e
	.byte	0
	.uleb128 0x7
	.long	.LASF1024
	.byte	0x14
	.byte	0x36
	.long	0x5f4
	.uleb128 0x7
	.long	.LASF1025
	.byte	0x14
	.byte	0x3a
	.long	0x2d97
	.uleb128 0x3
	.byte	0x8
	.long	0x2d9d
	.uleb128 0x29
	.long	0x2da8
	.uleb128 0x19
	.long	0x36a
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x36a
	.uleb128 0x4
	.long	.LASF1026
	.byte	0x48
	.byte	0x14
	.byte	0x47
	.long	0x2e33
	.uleb128 0x8
	.long	.LASF1027
	.byte	0x14
	.byte	0x4a
	.long	0x2d61
	.byte	0
	.uleb128 0x8
	.long	.LASF1028
	.byte	0x14
	.byte	0x4d
	.long	0x2d81
	.byte	0x8
	.uleb128 0x8
	.long	.LASF1029
	.byte	0x14
	.byte	0x50
	.long	0x2d8c
	.byte	0x10
	.uleb128 0x8
	.long	.LASF1030
	.byte	0x14
	.byte	0x53
	.long	0x2da8
	.byte	0x18
	.uleb128 0x8
	.long	.LASF330
	.byte	0x14
	.byte	0x56
	.long	0x37e
	.byte	0x20
	.uleb128 0x8
	.long	.LASF1031
	.byte	0x14
	.byte	0x59
	.long	0x37e
	.byte	0x28
	.uleb128 0x8
	.long	.LASF1032
	.byte	0x14
	.byte	0x5c
	.long	0x37e
	.byte	0x30
	.uleb128 0x8
	.long	.LASF1033
	.byte	0x14
	.byte	0x60
	.long	0x363
	.byte	0x38
	.uleb128 0x8
	.long	.LASF1034
	.byte	0x14
	.byte	0x64
	.long	0x363
	.byte	0x3c
	.uleb128 0x8
	.long	.LASF1035
	.byte	0x14
	.byte	0x68
	.long	0x1de
	.byte	0x40
	.byte	0
	.uleb128 0x7
	.long	.LASF1036
	.byte	0x14
	.byte	0x6b
	.long	0x2e3e
	.uleb128 0x3
	.byte	0x8
	.long	0x2dae
	.uleb128 0x1b
	.long	.LASF1037
	.byte	0x4
	.byte	0x14
	.byte	0x6e
	.long	0x2e5d
	.uleb128 0xf
	.long	.LASF1038
	.sleb128 0
	.uleb128 0xf
	.long	.LASF1039
	.sleb128 1
	.byte	0
	.uleb128 0x13
	.long	0x2d
	.long	0x2e6d
	.uleb128 0x14
	.long	0x1e5
	.byte	0x1d
	.byte	0
	.uleb128 0x4
	.long	.LASF1040
	.byte	0x28
	.byte	0xd
	.byte	0x2b
	.long	0x2eaa
	.uleb128 0x8
	.long	.LASF961
	.byte	0xd
	.byte	0x2d
	.long	0x2eaa
	.byte	0
	.uleb128 0x8
	.long	.LASF1041
	.byte	0xd
	.byte	0x2e
	.long	0x2eaa
	.byte	0x8
	.uleb128 0x8
	.long	.LASF348
	.byte	0xd
	.byte	0x2f
	.long	0x363
	.byte	0x10
	.uleb128 0x8
	.long	.LASF1042
	.byte	0xd
	.byte	0x30
	.long	0x2eb0
	.byte	0x18
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x2e6d
	.uleb128 0x13
	.long	0x389
	.long	0x2ec0
	.uleb128 0x14
	.long	0x1e5
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.long	.LASF1043
	.byte	0xd
	.byte	0x31
	.long	0x2e6d
	.uleb128 0x3
	.byte	0x8
	.long	0x2ec0
	.uleb128 0x7
	.long	.LASF998
	.byte	0xd
	.byte	0x39
	.long	0xd82
	.uleb128 0x7
	.long	.LASF1044
	.byte	0xe
	.byte	0x21
	.long	0x2ed1
	.uleb128 0x7
	.long	.LASF1045
	.byte	0xe
	.byte	0x74
	.long	0x377
	.uleb128 0x4
	.long	.LASF1046
	.byte	0x40
	.byte	0xe
	.byte	0x77
	.long	0x2f6b
	.uleb128 0x8
	.long	.LASF1047
	.byte	0xe
	.byte	0x79
	.long	0x2f6b
	.byte	0
	.uleb128 0x8
	.long	.LASF1048
	.byte	0xe
	.byte	0x79
	.long	0x2f6b
	.byte	0x8
	.uleb128 0x6
	.string	"src"
	.byte	0xe
	.byte	0x7c
	.long	0xe55
	.byte	0x10
	.uleb128 0x8
	.long	.LASF1049
	.byte	0xe
	.byte	0x7c
	.long	0xe55
	.byte	0x18
	.uleb128 0x8
	.long	.LASF1050
	.byte	0xe
	.byte	0x7f
	.long	0x2d
	.byte	0x20
	.uleb128 0x6
	.string	"aux"
	.byte	0xe
	.byte	0x82
	.long	0x36a
	.byte	0x28
	.uleb128 0x8
	.long	.LASF363
	.byte	0xe
	.byte	0x84
	.long	0x1de
	.byte	0x30
	.uleb128 0x8
	.long	.LASF1051
	.byte	0xe
	.byte	0x85
	.long	0x1de
	.byte	0x34
	.uleb128 0x8
	.long	.LASF361
	.byte	0xe
	.byte	0x86
	.long	0x2ee7
	.byte	0x38
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x2ef2
	.uleb128 0x7
	.long	.LASF1052
	.byte	0xe
	.byte	0x88
	.long	0x2f6b
	.uleb128 0x7
	.long	.LASF1012
	.byte	0xe
	.byte	0xdb
	.long	0xe55
	.uleb128 0x4
	.long	.LASF1053
	.byte	0xa0
	.byte	0x15
	.byte	0x18
	.long	0x3084
	.uleb128 0x8
	.long	.LASF1054
	.byte	0x15
	.byte	0x1c
	.long	0x308f
	.byte	0
	.uleb128 0x8
	.long	.LASF1055
	.byte	0x15
	.byte	0x1f
	.long	0x308f
	.byte	0x8
	.uleb128 0x8
	.long	.LASF1056
	.byte	0x15
	.byte	0x22
	.long	0x30a5
	.byte	0x10
	.uleb128 0x8
	.long	.LASF1057
	.byte	0x15
	.byte	0x25
	.long	0x30a5
	.byte	0x18
	.uleb128 0x8
	.long	.LASF1058
	.byte	0x15
	.byte	0x29
	.long	0x30a5
	.byte	0x20
	.uleb128 0x8
	.long	.LASF1059
	.byte	0x15
	.byte	0x2d
	.long	0x30b6
	.byte	0x28
	.uleb128 0x8
	.long	.LASF1060
	.byte	0x15
	.byte	0x31
	.long	0x30cc
	.byte	0x30
	.uleb128 0x8
	.long	.LASF1061
	.byte	0x15
	.byte	0x34
	.long	0x30cc
	.byte	0x38
	.uleb128 0x8
	.long	.LASF1062
	.byte	0x15
	.byte	0x3b
	.long	0x30e1
	.byte	0x40
	.uleb128 0x8
	.long	.LASF1063
	.byte	0x15
	.byte	0x3e
	.long	0x30a5
	.byte	0x48
	.uleb128 0x8
	.long	.LASF1064
	.byte	0x15
	.byte	0x43
	.long	0x30a5
	.byte	0x50
	.uleb128 0x8
	.long	.LASF1065
	.byte	0x15
	.byte	0x47
	.long	0x30b6
	.byte	0x58
	.uleb128 0x8
	.long	.LASF1066
	.byte	0x15
	.byte	0x4a
	.long	0x30e8
	.byte	0x60
	.uleb128 0x8
	.long	.LASF1067
	.byte	0x15
	.byte	0x4d
	.long	0x30f9
	.byte	0x68
	.uleb128 0x8
	.long	.LASF1068
	.byte	0x15
	.byte	0x50
	.long	0x30b6
	.byte	0x70
	.uleb128 0x8
	.long	.LASF1069
	.byte	0x15
	.byte	0x56
	.long	0x30f9
	.byte	0x78
	.uleb128 0x8
	.long	.LASF1070
	.byte	0x15
	.byte	0x5a
	.long	0x30f9
	.byte	0x80
	.uleb128 0x8
	.long	.LASF1071
	.byte	0x15
	.byte	0x5e
	.long	0x30f9
	.byte	0x88
	.uleb128 0x8
	.long	.LASF1072
	.byte	0x15
	.byte	0x63
	.long	0x30f9
	.byte	0x90
	.uleb128 0x8
	.long	.LASF1073
	.byte	0x15
	.byte	0x67
	.long	0x310a
	.byte	0x98
	.byte	0
	.uleb128 0x29
	.long	0x308f
	.uleb128 0x19
	.long	0x5c5
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x3084
	.uleb128 0x29
	.long	0x30a5
	.uleb128 0x19
	.long	0x363
	.uleb128 0x19
	.long	0x5c5
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x3095
	.uleb128 0x29
	.long	0x30b6
	.uleb128 0x19
	.long	0x363
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x30ab
	.uleb128 0x29
	.long	0x30cc
	.uleb128 0x19
	.long	0x363
	.uleb128 0x19
	.long	0x363
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x30bc
	.uleb128 0x18
	.long	0x27e6
	.long	0x30e1
	.uleb128 0x19
	.long	0x123
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x30d2
	.uleb128 0x2a
	.uleb128 0x3
	.byte	0x8
	.long	0x30e7
	.uleb128 0x29
	.long	0x30f9
	.uleb128 0x19
	.long	0x123
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x30ee
	.uleb128 0x29
	.long	0x310a
	.uleb128 0x19
	.long	0x2d
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x30ff
	.uleb128 0x7
	.long	.LASF1074
	.byte	0x16
	.byte	0x19
	.long	0x311b
	.uleb128 0x3
	.byte	0x8
	.long	0x3121
	.uleb128 0x29
	.long	0x3136
	.uleb128 0x19
	.long	0x3136
	.uleb128 0x19
	.long	0x123
	.uleb128 0x19
	.long	0x1de
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x3cf
	.uleb128 0x4
	.long	.LASF1075
	.byte	0x58
	.byte	0x16
	.byte	0x1e
	.long	0x31cd
	.uleb128 0x8
	.long	.LASF1076
	.byte	0x16
	.byte	0x20
	.long	0x3215
	.byte	0
	.uleb128 0x8
	.long	.LASF1077
	.byte	0x16
	.byte	0x25
	.long	0x322a
	.byte	0x8
	.uleb128 0x8
	.long	.LASF1078
	.byte	0x16
	.byte	0x26
	.long	0x323f
	.byte	0x10
	.uleb128 0x8
	.long	.LASF1079
	.byte	0x16
	.byte	0x27
	.long	0x3259
	.byte	0x18
	.uleb128 0x8
	.long	.LASF1080
	.byte	0x16
	.byte	0x29
	.long	0x323f
	.byte	0x20
	.uleb128 0x8
	.long	.LASF1081
	.byte	0x16
	.byte	0x2a
	.long	0x3273
	.byte	0x28
	.uleb128 0x8
	.long	.LASF1082
	.byte	0x16
	.byte	0x2b
	.long	0x32a1
	.byte	0x30
	.uleb128 0x8
	.long	.LASF1083
	.byte	0x16
	.byte	0x30
	.long	0x323f
	.byte	0x38
	.uleb128 0x8
	.long	.LASF1084
	.byte	0x16
	.byte	0x31
	.long	0x323f
	.byte	0x40
	.uleb128 0x8
	.long	.LASF1085
	.byte	0x16
	.byte	0x32
	.long	0x32b2
	.byte	0x48
	.uleb128 0x8
	.long	.LASF1086
	.byte	0x16
	.byte	0x33
	.long	0x32d1
	.byte	0x50
	.byte	0
	.uleb128 0x18
	.long	0x12e
	.long	0x31f0
	.uleb128 0x19
	.long	0x31f0
	.uleb128 0x19
	.long	0x5ee
	.uleb128 0x19
	.long	0x31f6
	.uleb128 0x19
	.long	0x36a
	.uleb128 0x19
	.long	0x36a
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x12e
	.uleb128 0x3
	.byte	0x8
	.long	0x31fc
	.uleb128 0x18
	.long	0x12e
	.long	0x3215
	.uleb128 0x19
	.long	0x31f0
	.uleb128 0x19
	.long	0x5ee
	.uleb128 0x19
	.long	0x36a
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x31cd
	.uleb128 0x18
	.long	0x1de
	.long	0x322a
	.uleb128 0x19
	.long	0x31f0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x321b
	.uleb128 0x18
	.long	0x1de
	.long	0x323f
	.uleb128 0x19
	.long	0x12e
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x3230
	.uleb128 0x18
	.long	0x12e
	.long	0x3259
	.uleb128 0x19
	.long	0x36a
	.uleb128 0x19
	.long	0x12e
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x3245
	.uleb128 0x18
	.long	0x1de
	.long	0x3273
	.uleb128 0x19
	.long	0x12e
	.uleb128 0x19
	.long	0x12e
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x325f
	.uleb128 0x18
	.long	0x12e
	.long	0x32a1
	.uleb128 0x19
	.long	0x12e
	.uleb128 0x19
	.long	0x12e
	.uleb128 0x19
	.long	0x12e
	.uleb128 0x19
	.long	0x36a
	.uleb128 0x19
	.long	0x5ee
	.uleb128 0x19
	.long	0x36a
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x3279
	.uleb128 0x29
	.long	0x32b2
	.uleb128 0x19
	.long	0x12e
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x32a7
	.uleb128 0x18
	.long	0x12e
	.long	0x32d1
	.uleb128 0x19
	.long	0x12e
	.uleb128 0x19
	.long	0x12e
	.uleb128 0x19
	.long	0x12e
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x32b8
	.uleb128 0x4
	.long	.LASF1087
	.byte	0x10
	.byte	0x16
	.byte	0x3a
	.long	0x32fc
	.uleb128 0x8
	.long	.LASF1088
	.byte	0x16
	.byte	0x3e
	.long	0x3310
	.byte	0
	.uleb128 0x8
	.long	.LASF1089
	.byte	0x16
	.byte	0x41
	.long	0x3325
	.byte	0x8
	.byte	0
	.uleb128 0x18
	.long	0x1de
	.long	0x3310
	.uleb128 0x19
	.long	0x36a
	.uleb128 0x19
	.long	0x123
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x32fc
	.uleb128 0x18
	.long	0x1de
	.long	0x3325
	.uleb128 0x19
	.long	0x123
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x3316
	.uleb128 0x26
	.long	.LASF1090
	.value	0x100
	.byte	0x16
	.byte	0x46
	.long	0x3435
	.uleb128 0x8
	.long	.LASF754
	.byte	0x16
	.byte	0x49
	.long	0x5c5
	.byte	0
	.uleb128 0x8
	.long	.LASF1091
	.byte	0x16
	.byte	0x4d
	.long	0x37e
	.byte	0x8
	.uleb128 0x8
	.long	.LASF1092
	.byte	0x16
	.byte	0x51
	.long	0x30e8
	.byte	0x10
	.uleb128 0x8
	.long	.LASF1093
	.byte	0x16
	.byte	0x5b
	.long	0x344f
	.byte	0x18
	.uleb128 0x8
	.long	.LASF1094
	.byte	0x16
	.byte	0x64
	.long	0x30e8
	.byte	0x20
	.uleb128 0x8
	.long	.LASF1054
	.byte	0x16
	.byte	0x6c
	.long	0x3464
	.byte	0x28
	.uleb128 0x8
	.long	.LASF1055
	.byte	0x16
	.byte	0x6f
	.long	0x30e8
	.byte	0x30
	.uleb128 0x8
	.long	.LASF1095
	.byte	0x16
	.byte	0x72
	.long	0x30e8
	.byte	0x38
	.uleb128 0x8
	.long	.LASF1096
	.byte	0x16
	.byte	0x76
	.long	0x3479
	.byte	0x40
	.uleb128 0x8
	.long	.LASF1097
	.byte	0x16
	.byte	0x7b
	.long	0x348e
	.byte	0x48
	.uleb128 0x8
	.long	.LASF1098
	.byte	0x16
	.byte	0x84
	.long	0x34a8
	.byte	0x50
	.uleb128 0x8
	.long	.LASF1099
	.byte	0x16
	.byte	0x87
	.long	0x3325
	.byte	0x58
	.uleb128 0x8
	.long	.LASF1100
	.byte	0x16
	.byte	0x8a
	.long	0x27e6
	.byte	0x60
	.uleb128 0x8
	.long	.LASF1101
	.byte	0x16
	.byte	0x8e
	.long	0x30e8
	.byte	0x68
	.uleb128 0x8
	.long	.LASF1102
	.byte	0x16
	.byte	0x92
	.long	0x3110
	.byte	0x70
	.uleb128 0x8
	.long	.LASF1103
	.byte	0x16
	.byte	0x96
	.long	0x3110
	.byte	0x78
	.uleb128 0x8
	.long	.LASF1104
	.byte	0x16
	.byte	0x97
	.long	0x3110
	.byte	0x80
	.uleb128 0x8
	.long	.LASF1105
	.byte	0x16
	.byte	0x98
	.long	0x3110
	.byte	0x88
	.uleb128 0x8
	.long	.LASF1106
	.byte	0x16
	.byte	0x9d
	.long	0x34b9
	.byte	0x90
	.uleb128 0x8
	.long	.LASF1107
	.byte	0x16
	.byte	0x9f
	.long	0x313c
	.byte	0x98
	.uleb128 0x8
	.long	.LASF1108
	.byte	0x16
	.byte	0xa1
	.long	0x32d7
	.byte	0xf0
	.byte	0
	.uleb128 0x18
	.long	0x1de
	.long	0x3449
	.uleb128 0x19
	.long	0x1de
	.uleb128 0x19
	.long	0x3449
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x3c2
	.uleb128 0x3
	.byte	0x8
	.long	0x3435
	.uleb128 0x18
	.long	0x5c5
	.long	0x3464
	.uleb128 0x19
	.long	0x5c5
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x3455
	.uleb128 0x18
	.long	0x377
	.long	0x3479
	.uleb128 0x19
	.long	0x123
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x346a
	.uleb128 0x18
	.long	0x123
	.long	0x348e
	.uleb128 0x19
	.long	0x123
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x347f
	.uleb128 0x18
	.long	0x1de
	.long	0x34a8
	.uleb128 0x19
	.long	0x2d
	.uleb128 0x19
	.long	0x123
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x3494
	.uleb128 0x29
	.long	0x34b9
	.uleb128 0x19
	.long	0x1de
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x34ae
	.uleb128 0x2b
	.long	.LASF1109
	.byte	0x1
	.byte	0xd0
	.long	0x2d56
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x34ed
	.uleb128 0x2c
	.string	"x"
	.byte	0x1
	.byte	0xd1
	.long	0x60e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2b
	.long	.LASF1110
	.byte	0x1
	.byte	0xdb
	.long	0x1de
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x3527
	.uleb128 0x2c
	.string	"x"
	.byte	0x1
	.byte	0xdc
	.long	0x60e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2c
	.string	"y"
	.byte	0x1
	.byte	0xdd
	.long	0x60e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x2b
	.long	.LASF1111
	.byte	0x1
	.byte	0xe5
	.long	0x2d56
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x3561
	.uleb128 0x2c
	.string	"x"
	.byte	0x1
	.byte	0xe6
	.long	0x60e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2d
	.string	"p"
	.byte	0x1
	.byte	0xe8
	.long	0xe5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2b
	.long	.LASF1112
	.byte	0x1
	.byte	0xf5
	.long	0x1de
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x35b3
	.uleb128 0x2c
	.string	"x"
	.byte	0x1
	.byte	0xf6
	.long	0x60e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.string	"y"
	.byte	0x1
	.byte	0xf7
	.long	0x60e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2d
	.string	"p"
	.byte	0x1
	.byte	0xf9
	.long	0xe5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2d
	.string	"q"
	.byte	0x1
	.byte	0xfa
	.long	0xe5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2e
	.long	.LASF1212
	.byte	0x1
	.value	0x104
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x3657
	.uleb128 0x2f
	.string	"x"
	.byte	0x1
	.value	0x105
	.long	0x60e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x30
	.string	"p"
	.byte	0x1
	.value	0x107
	.long	0xe5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x31
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.long	0x3610
	.uleb128 0x30
	.string	"t__"
	.byte	0x1
	.value	0x10a
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x31
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.long	0x3635
	.uleb128 0x30
	.string	"r__"
	.byte	0x1
	.value	0x10d
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x32
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.uleb128 0x30
	.string	"r__"
	.byte	0x1
	.value	0x110
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x33
	.long	.LASF1113
	.byte	0x1
	.value	0x118
	.long	0xe5b
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x36f9
	.uleb128 0x34
	.long	.LASF327
	.byte	0x1
	.value	0x119
	.long	0x377
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x34
	.long	.LASF328
	.byte	0x1
	.value	0x11a
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x34
	.long	.LASF329
	.byte	0x1
	.value	0x11b
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x34
	.long	.LASF330
	.byte	0x1
	.value	0x11c
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x34
	.long	.LASF331
	.byte	0x1
	.value	0x11d
	.long	0x363
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x34
	.long	.LASF1
	.byte	0x1
	.value	0x11e
	.long	0x615
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x35
	.long	.LASF1114
	.byte	0x1
	.value	0x120
	.long	0xca0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x35
	.long	.LASF1115
	.byte	0x1
	.value	0x121
	.long	0x2da8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.uleb128 0x36
	.long	.LASF1116
	.byte	0x1
	.value	0x141
	.long	0x2d
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x3747
	.uleb128 0x34
	.long	.LASF1
	.byte	0x1
	.value	0x142
	.long	0x615
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x34
	.long	.LASF57
	.byte	0x1
	.value	0x143
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x30
	.string	"x"
	.byte	0x1
	.value	0x145
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x36
	.long	.LASF1117
	.byte	0x1
	.value	0x14f
	.long	0x2d
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x3797
	.uleb128 0x34
	.long	.LASF1
	.byte	0x1
	.value	0x150
	.long	0x615
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2f
	.string	"arg"
	.byte	0x1
	.value	0x151
	.long	0x377
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x35
	.long	.LASF1115
	.byte	0x1
	.value	0x153
	.long	0x2da8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x36
	.long	.LASF1118
	.byte	0x1
	.value	0x167
	.long	0x2d
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x37d6
	.uleb128 0x2f
	.string	"c"
	.byte	0x1
	.value	0x168
	.long	0x377
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x34
	.long	.LASF1
	.byte	0x1
	.value	0x169
	.long	0x615
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x36
	.long	.LASF1119
	.byte	0x1
	.value	0x172
	.long	0x2d
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x3840
	.uleb128 0x34
	.long	.LASF1
	.byte	0x1
	.value	0x173
	.long	0x615
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x34
	.long	.LASF1120
	.byte	0x1
	.value	0x174
	.long	0x377
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x34
	.long	.LASF1121
	.byte	0x1
	.value	0x174
	.long	0x377
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x30
	.string	"r"
	.byte	0x1
	.value	0x176
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x30
	.string	"i"
	.byte	0x1
	.value	0x177
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x36
	.long	.LASF1122
	.byte	0x1
	.value	0x185
	.long	0x2d
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x3881
	.uleb128 0x34
	.long	.LASF1
	.byte	0x1
	.value	0x186
	.long	0x615
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x34
	.long	.LASF57
	.byte	0x1
	.value	0x187
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x36
	.long	.LASF1123
	.byte	0x1
	.value	0x1b2
	.long	0x2d
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x38d0
	.uleb128 0x34
	.long	.LASF1
	.byte	0x1
	.value	0x1b3
	.long	0x615
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x34
	.long	.LASF1124
	.byte	0x1
	.value	0x1b4
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x30
	.string	"rt"
	.byte	0x1
	.value	0x1b6
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x36
	.long	.LASF1125
	.byte	0x1
	.value	0x1c0
	.long	0x2d
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0x3933
	.uleb128 0x34
	.long	.LASF1
	.byte	0x1
	.value	0x1c1
	.long	0x615
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2f
	.string	"reg"
	.byte	0x1
	.value	0x1c2
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x34
	.long	.LASF329
	.byte	0x1
	.value	0x1c3
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x37
	.long	.LASF1130
	.long	0x3943
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.13357
	.byte	0
	.uleb128 0x13
	.long	0x3c8
	.long	0x3943
	.uleb128 0x14
	.long	0x1e5
	.byte	0xe
	.byte	0
	.uleb128 0x17
	.long	0x3933
	.uleb128 0x36
	.long	.LASF1126
	.byte	0x1
	.value	0x1d9
	.long	0x2d
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0x3998
	.uleb128 0x34
	.long	.LASF1
	.byte	0x1
	.value	0x1da
	.long	0x615
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2f
	.string	"reg"
	.byte	0x1
	.value	0x1db
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x35
	.long	.LASF1127
	.byte	0x1
	.value	0x1dd
	.long	0x615
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x36
	.long	.LASF1128
	.byte	0x1
	.value	0x202
	.long	0x2d
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0x3a81
	.uleb128 0x34
	.long	.LASF0
	.byte	0x1
	.value	0x202
	.long	0x7d3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -260
	.uleb128 0x34
	.long	.LASF1
	.byte	0x1
	.value	0x202
	.long	0x615
	.uleb128 0x3
	.byte	0x91
	.sleb128 -264
	.uleb128 0x38
	.uleb128 0x30
	.string	"i"
	.byte	0x1
	.value	0x204
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -252
	.uleb128 0x30
	.string	"fmt"
	.byte	0x1
	.value	0x205
	.long	0x5c5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -248
	.uleb128 0x35
	.long	.LASF1129
	.byte	0x1
	.value	0x206
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x37
	.long	.LASF1130
	.long	0x3a81
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.13391
	.uleb128 0x32
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.uleb128 0x30
	.string	"p"
	.byte	0x1
	.value	0x208
	.long	0x36c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x32
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.uleb128 0x32
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.uleb128 0x35
	.long	.LASF1120
	.byte	0x1
	.value	0x214
	.long	0x377
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x35
	.long	.LASF1121
	.byte	0x1
	.value	0x215
	.long	0x377
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x17
	.long	0x5de
	.uleb128 0x36
	.long	.LASF1131
	.byte	0x1
	.value	0x25f
	.long	0xed
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0x3b17
	.uleb128 0x2f
	.string	"n"
	.byte	0x1
	.value	0x25f
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -260
	.uleb128 0x38
	.uleb128 0x30
	.string	"i"
	.byte	0x1
	.value	0x261
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -248
	.uleb128 0x35
	.long	.LASF1132
	.byte	0x1
	.value	0x261
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -244
	.uleb128 0x35
	.long	.LASF19
	.byte	0x1
	.value	0x262
	.long	0xffd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x32
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.uleb128 0x30
	.string	"p"
	.byte	0x1
	.value	0x264
	.long	0x36c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x39
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.byte	0
	.byte	0
	.uleb128 0x36
	.long	.LASF1133
	.byte	0x1
	.value	0x277
	.long	0xed
	.quad	.LFB18
	.quad	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0x3b72
	.uleb128 0x2f
	.string	"n"
	.byte	0x1
	.value	0x278
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x34
	.long	.LASF1134
	.byte	0x1
	.value	0x279
	.long	0xffd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x30
	.string	"i"
	.byte	0x1
	.value	0x27b
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x35
	.long	.LASF1129
	.byte	0x1
	.value	0x27c
	.long	0xed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x36
	.long	.LASF1135
	.byte	0x1
	.value	0x28d
	.long	0x2d
	.quad	.LFB19
	.quad	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0x3c78
	.uleb128 0x34
	.long	.LASF1
	.byte	0x1
	.value	0x28e
	.long	0x615
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x30
	.string	"f"
	.byte	0x1
	.value	0x290
	.long	0x22b5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x30
	.string	"val"
	.byte	0x1
	.value	0x291
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x37
	.long	.LASF1130
	.long	0x3c88
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.13420
	.uleb128 0x31
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.long	0x3c28
	.uleb128 0x35
	.long	.LASF1136
	.byte	0x1
	.value	0x2a1
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x35
	.long	.LASF1137
	.byte	0x1
	.value	0x2a1
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x35
	.long	.LASF330
	.byte	0x1
	.value	0x2a2
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x35
	.long	.LASF1138
	.byte	0x1
	.value	0x2a3
	.long	0x615
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x32
	.quad	.LBB11
	.quad	.LBE11-.LBB11
	.uleb128 0x35
	.long	.LASF1139
	.byte	0x1
	.value	0x2b3
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x30
	.string	"new"
	.byte	0x1
	.value	0x2b4
	.long	0x3c2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x35
	.long	.LASF1140
	.byte	0x1
	.value	0x2b5
	.long	0xffd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x35
	.long	.LASF1141
	.byte	0x1
	.value	0x2b6
	.long	0x27ed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x13
	.long	0x3c8
	.long	0x3c88
	.uleb128 0x14
	.long	0x1e5
	.byte	0xb
	.byte	0
	.uleb128 0x17
	.long	0x3c78
	.uleb128 0x3a
	.long	.LASF1142
	.byte	0x1
	.value	0x2d1
	.quad	.LFB20
	.quad	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0x3cce
	.uleb128 0x2f
	.string	"reg"
	.byte	0x1
	.value	0x2d2
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x37
	.long	.LASF1130
	.long	0x3cde
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.13432
	.byte	0
	.uleb128 0x13
	.long	0x3c8
	.long	0x3cde
	.uleb128 0x14
	.long	0x1e5
	.byte	0xd
	.byte	0
	.uleb128 0x17
	.long	0x3cce
	.uleb128 0x3b
	.long	.LASF1143
	.byte	0x1
	.value	0x2e3
	.quad	.LFB21
	.quad	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.long	0x3d20
	.uleb128 0x2f
	.string	"reg"
	.byte	0x1
	.value	0x2e4
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x34
	.long	.LASF331
	.byte	0x1
	.value	0x2e5
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x3c
	.long	.LASF1144
	.byte	0x1
	.value	0x2f6
	.long	0x1de
	.quad	.LFB22
	.quad	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x3c
	.long	.LASF1145
	.byte	0x1
	.value	0x2fe
	.long	0x1de
	.quad	.LFB23
	.quad	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x3c
	.long	.LASF1146
	.byte	0x1
	.value	0x308
	.long	0x1de
	.quad	.LFB24
	.quad	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x36
	.long	.LASF1147
	.byte	0x1
	.value	0x310
	.long	0x1de
	.quad	.LFB25
	.quad	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.long	0x3e17
	.uleb128 0x2f
	.string	"x"
	.byte	0x1
	.value	0x311
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x34
	.long	.LASF1148
	.byte	0x1
	.value	0x312
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x35
	.long	.LASF1
	.byte	0x1
	.value	0x314
	.long	0x615
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x35
	.long	.LASF1149
	.byte	0x1
	.value	0x315
	.long	0x363
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x35
	.long	.LASF1150
	.byte	0x1
	.value	0x315
	.long	0x363
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x35
	.long	.LASF1151
	.byte	0x1
	.value	0x315
	.long	0x363
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x30
	.string	"reg"
	.byte	0x1
	.value	0x316
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x37
	.long	.LASF1130
	.long	0x3e27
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.13452
	.byte	0
	.uleb128 0x13
	.long	0x3c8
	.long	0x3e27
	.uleb128 0x14
	.long	0x1e5
	.byte	0x11
	.byte	0
	.uleb128 0x17
	.long	0x3e17
	.uleb128 0x36
	.long	.LASF1152
	.byte	0x1
	.value	0x339
	.long	0x2d
	.quad	.LFB26
	.quad	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.long	0x3fb4
	.uleb128 0x34
	.long	.LASF1
	.byte	0x1
	.value	0x33a
	.long	0x615
	.uleb128 0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0x2f
	.string	"x"
	.byte	0x1
	.value	0x33b
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x35
	.long	.LASF1153
	.byte	0x1
	.value	0x33d
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x35
	.long	.LASF1154
	.byte	0x1
	.value	0x33e
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0x35
	.long	.LASF329
	.byte	0x1
	.value	0x33f
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x37
	.long	.LASF1130
	.long	0x3fc4
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.13475
	.uleb128 0x31
	.quad	.LBB12
	.quad	.LBE12-.LBB12
	.long	0x3ed5
	.uleb128 0x30
	.string	"val"
	.byte	0x1
	.value	0x37c
	.long	0x377
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.byte	0
	.uleb128 0x31
	.quad	.LBB13
	.quad	.LBE13-.LBB13
	.long	0x3f06
	.uleb128 0x30
	.string	"r"
	.byte	0x1
	.value	0x3e9
	.long	0x18b7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x30
	.string	"i"
	.byte	0x1
	.value	0x3ea
	.long	0x377
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.byte	0
	.uleb128 0x31
	.quad	.LBB14
	.quad	.LBE14-.LBB14
	.long	0x3f57
	.uleb128 0x30
	.string	"r"
	.byte	0x1
	.value	0x3f5
	.long	0x18b7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x30
	.string	"i"
	.byte	0x1
	.value	0x3f6
	.long	0x3fc9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x30
	.string	"low"
	.byte	0x1
	.value	0x3f7
	.long	0x377
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x35
	.long	.LASF705
	.byte	0x1
	.value	0x3f7
	.long	0x377
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.byte	0
	.uleb128 0x32
	.quad	.LBB15
	.quad	.LBE15-.LBB15
	.uleb128 0x30
	.string	"r"
	.byte	0x1
	.value	0x417
	.long	0x18b7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x30
	.string	"i"
	.byte	0x1
	.value	0x418
	.long	0x3fd9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x35
	.long	.LASF1155
	.byte	0x1
	.value	0x419
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x32
	.quad	.LBB16
	.quad	.LBE16-.LBB16
	.uleb128 0x30
	.string	"u"
	.byte	0x1
	.value	0x41d
	.long	0x18c2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x13
	.long	0x3c8
	.long	0x3fc4
	.uleb128 0x14
	.long	0x1e5
	.byte	0x12
	.byte	0
	.uleb128 0x17
	.long	0x3fb4
	.uleb128 0x13
	.long	0x377
	.long	0x3fd9
	.uleb128 0x14
	.long	0x1e5
	.byte	0x1
	.byte	0
	.uleb128 0x13
	.long	0x377
	.long	0x3fe9
	.uleb128 0x14
	.long	0x1e5
	.byte	0x3
	.byte	0
	.uleb128 0x36
	.long	.LASF1156
	.byte	0x1
	.value	0x44e
	.long	0x2d
	.quad	.LFB27
	.quad	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.long	0x4028
	.uleb128 0x34
	.long	.LASF1
	.byte	0x1
	.value	0x44f
	.long	0x615
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2f
	.string	"x"
	.byte	0x1
	.value	0x450
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x36
	.long	.LASF1157
	.byte	0x1
	.value	0x462
	.long	0x2d
	.quad	.LFB28
	.quad	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.long	0x4067
	.uleb128 0x34
	.long	.LASF1
	.byte	0x1
	.value	0x463
	.long	0x615
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2f
	.string	"x"
	.byte	0x1
	.value	0x464
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x36
	.long	.LASF1158
	.byte	0x1
	.value	0x478
	.long	0x1de
	.quad	.LFB29
	.quad	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.long	0x40aa
	.uleb128 0x2f
	.string	"x"
	.byte	0x1
	.value	0x479
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x37
	.long	.LASF1130
	.long	0x40aa
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.13489
	.byte	0
	.uleb128 0x17
	.long	0x3e17
	.uleb128 0x36
	.long	.LASF1159
	.byte	0x1
	.value	0x48a
	.long	0x2d
	.quad	.LFB30
	.quad	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.long	0x4131
	.uleb128 0x34
	.long	.LASF1
	.byte	0x1
	.value	0x48b
	.long	0x615
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2f
	.string	"x"
	.byte	0x1
	.value	0x48c
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x35
	.long	.LASF872
	.byte	0x1
	.value	0x48e
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x37
	.long	.LASF1130
	.long	0x4131
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.13495
	.uleb128 0x32
	.quad	.LBB17
	.quad	.LBE17-.LBB17
	.uleb128 0x35
	.long	.LASF329
	.byte	0x1
	.value	0x49d
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.byte	0
	.uleb128 0x17
	.long	0x3c78
	.uleb128 0x36
	.long	.LASF1160
	.byte	0x1
	.value	0x4b4
	.long	0x2d
	.quad	.LFB31
	.quad	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.long	0x41a6
	.uleb128 0x34
	.long	.LASF1
	.byte	0x1
	.value	0x4b5
	.long	0x615
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2f
	.string	"x"
	.byte	0x1
	.value	0x4b6
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x35
	.long	.LASF1153
	.byte	0x1
	.value	0x4b8
	.long	0x363
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x35
	.long	.LASF872
	.byte	0x1
	.value	0x4b9
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x37
	.long	.LASF1130
	.long	0x41b6
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.13503
	.byte	0
	.uleb128 0x13
	.long	0x3c8
	.long	0x41b6
	.uleb128 0x14
	.long	0x1e5
	.byte	0xc
	.byte	0
	.uleb128 0x17
	.long	0x41a6
	.uleb128 0x36
	.long	.LASF1161
	.byte	0x1
	.value	0x4d2
	.long	0x2d
	.quad	.LFB32
	.quad	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.long	0x421e
	.uleb128 0x34
	.long	.LASF1162
	.byte	0x1
	.value	0x4d3
	.long	0x615
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x34
	.long	.LASF1163
	.byte	0x1
	.value	0x4d3
	.long	0x615
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2f
	.string	"exp"
	.byte	0x1
	.value	0x4d4
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x37
	.long	.LASF1130
	.long	0x421e
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.13509
	.byte	0
	.uleb128 0x17
	.long	0x3e17
	.uleb128 0x3d
	.long	.LASF1164
	.byte	0x1
	.value	0x4e3
	.long	0x363
	.quad	.LFB33
	.quad	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.long	0x4282
	.uleb128 0x34
	.long	.LASF1162
	.byte	0x1
	.value	0x4e4
	.long	0x615
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x34
	.long	.LASF1163
	.byte	0x1
	.value	0x4e4
	.long	0x615
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x35
	.long	.LASF329
	.byte	0x1
	.value	0x4e6
	.long	0x363
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x35
	.long	.LASF1165
	.byte	0x1
	.value	0x4e7
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x36
	.long	.LASF1166
	.byte	0x1
	.value	0x4f7
	.long	0x363
	.quad	.LFB34
	.quad	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.long	0x42f4
	.uleb128 0x34
	.long	.LASF1162
	.byte	0x1
	.value	0x4f8
	.long	0x615
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x34
	.long	.LASF1163
	.byte	0x1
	.value	0x4f8
	.long	0x615
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x35
	.long	.LASF329
	.byte	0x1
	.value	0x4fa
	.long	0x363
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x35
	.long	.LASF1165
	.byte	0x1
	.value	0x4fb
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x37
	.long	.LASF1130
	.long	0x4304
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.13522
	.byte	0
	.uleb128 0x13
	.long	0x3c8
	.long	0x4304
	.uleb128 0x14
	.long	0x1e5
	.byte	0x16
	.byte	0
	.uleb128 0x17
	.long	0x42f4
	.uleb128 0x36
	.long	.LASF1167
	.byte	0x1
	.value	0x510
	.long	0x1de
	.quad	.LFB35
	.quad	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.long	0x4339
	.uleb128 0x2f
	.string	"x"
	.byte	0x1
	.value	0x511
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x36
	.long	.LASF1168
	.byte	0x1
	.value	0x521
	.long	0x2d
	.quad	.LFB36
	.quad	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.long	0x44ae
	.uleb128 0x2f
	.string	"op"
	.byte	0x1
	.value	0x522
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x34
	.long	.LASF329
	.byte	0x1
	.value	0x523
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x34
	.long	.LASF1
	.byte	0x1
	.value	0x524
	.long	0x615
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x35
	.long	.LASF1169
	.byte	0x1
	.value	0x526
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x30
	.string	"val"
	.byte	0x1
	.value	0x527
	.long	0x377
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x37
	.long	.LASF1130
	.long	0x44be
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.13536
	.uleb128 0x31
	.quad	.LBB18
	.quad	.LBE18-.LBB18
	.long	0x440e
	.uleb128 0x30
	.string	"k"
	.byte	0x1
	.value	0x537
	.long	0x3fc9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x30
	.string	"rv"
	.byte	0x1
	.value	0x538
	.long	0x18b7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x32
	.quad	.LBB19
	.quad	.LBE19-.LBB19
	.uleb128 0x30
	.string	"u"
	.byte	0x1
	.value	0x53a
	.long	0x18c2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x31
	.quad	.LBB20
	.quad	.LBE20-.LBB20
	.long	0x445f
	.uleb128 0x30
	.string	"k"
	.byte	0x1
	.value	0x565
	.long	0x3fd9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x30
	.string	"rv"
	.byte	0x1
	.value	0x566
	.long	0x18b7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x32
	.quad	.LBB21
	.quad	.LBE21-.LBB21
	.uleb128 0x30
	.string	"u"
	.byte	0x1
	.value	0x568
	.long	0x18c2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x32
	.quad	.LBB22
	.quad	.LBE22-.LBB22
	.uleb128 0x30
	.string	"l"
	.byte	0x1
	.value	0x59b
	.long	0x377
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x30
	.string	"rv"
	.byte	0x1
	.value	0x59c
	.long	0x18b7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x32
	.quad	.LBB23
	.quad	.LBE23-.LBB23
	.uleb128 0x30
	.string	"u"
	.byte	0x1
	.value	0x59e
	.long	0x18c2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x13
	.long	0x3c8
	.long	0x44be
	.uleb128 0x14
	.long	0x1e5
	.byte	0x10
	.byte	0
	.uleb128 0x17
	.long	0x44ae
	.uleb128 0x36
	.long	.LASF1170
	.byte	0x1
	.value	0x60e
	.long	0x2d
	.quad	.LFB37
	.quad	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.long	0x4555
	.uleb128 0x2f
	.string	"op"
	.byte	0x1
	.value	0x60f
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x34
	.long	.LASF329
	.byte	0x1
	.value	0x610
	.long	0x363
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x34
	.long	.LASF1171
	.byte	0x1
	.value	0x611
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x34
	.long	.LASF1
	.byte	0x1
	.value	0x612
	.long	0x615
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x37
	.long	.LASF1130
	.long	0x4565
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.13549
	.uleb128 0x32
	.quad	.LBB24
	.quad	.LBE24-.LBB24
	.uleb128 0x30
	.string	"new"
	.byte	0x1
	.value	0x627
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x13
	.long	0x3c8
	.long	0x4565
	.uleb128 0x14
	.long	0x1e5
	.byte	0xf
	.byte	0
	.uleb128 0x17
	.long	0x4555
	.uleb128 0x36
	.long	.LASF1172
	.byte	0x1
	.value	0x640
	.long	0x2d
	.quad	.LFB38
	.quad	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.long	0x45db
	.uleb128 0x2f
	.string	"op"
	.byte	0x1
	.value	0x641
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x34
	.long	.LASF329
	.byte	0x1
	.value	0x642
	.long	0x363
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x34
	.long	.LASF1
	.byte	0x1
	.value	0x643
	.long	0x615
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x35
	.long	.LASF872
	.byte	0x1
	.value	0x645
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x37
	.long	.LASF1130
	.long	0x45eb
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.13557
	.byte	0
	.uleb128 0x13
	.long	0x3c8
	.long	0x45eb
	.uleb128 0x14
	.long	0x1e5
	.byte	0x15
	.byte	0
	.uleb128 0x17
	.long	0x45db
	.uleb128 0x3a
	.long	.LASF1173
	.byte	0x1
	.value	0x65f
	.quad	.LFB39
	.quad	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.long	0x4692
	.uleb128 0x34
	.long	.LASF1174
	.byte	0x1
	.value	0x660
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x35
	.long	.LASF1175
	.byte	0x1
	.value	0x662
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x35
	.long	.LASF1176
	.byte	0x1
	.value	0x663
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x31
	.quad	.LBB25
	.quad	.LBE25-.LBB25
	.long	0x4670
	.uleb128 0x30
	.string	"op0"
	.byte	0x1
	.value	0x66c
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x30
	.string	"op1"
	.byte	0x1
	.value	0x66d
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x32
	.quad	.LBB26
	.quad	.LBE26-.LBB26
	.uleb128 0x30
	.string	"new"
	.byte	0x1
	.value	0x673
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x33
	.long	.LASF1177
	.byte	0x1
	.value	0x681
	.long	0x123
	.quad	.LFB40
	.quad	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.long	0x46f4
	.uleb128 0x2f
	.string	"ref"
	.byte	0x1
	.value	0x682
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x35
	.long	.LASF1178
	.byte	0x1
	.value	0x684
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x32
	.quad	.LBB27
	.quad	.LBE27-.LBB27
	.uleb128 0x35
	.long	.LASF1179
	.byte	0x1
	.value	0x68a
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x3a
	.long	.LASF1180
	.byte	0x1
	.value	0x6a8
	.quad	.LFB41
	.quad	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.long	0x47d0
	.uleb128 0x2f
	.string	"ref"
	.byte	0x1
	.value	0x6a9
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2f
	.string	"t"
	.byte	0x1
	.value	0x6aa
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x34
	.long	.LASF1181
	.byte	0x1
	.value	0x6ab
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x35
	.long	.LASF327
	.byte	0x1
	.value	0x6ad
	.long	0x377
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x35
	.long	.LASF328
	.byte	0x1
	.value	0x6ae
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x35
	.long	.LASF329
	.byte	0x1
	.value	0x6af
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x35
	.long	.LASF330
	.byte	0x1
	.value	0x6b0
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x35
	.long	.LASF331
	.byte	0x1
	.value	0x6b1
	.long	0x363
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x35
	.long	.LASF24
	.byte	0x1
	.value	0x6b2
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x37
	.long	.LASF1130
	.long	0x47d0
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.13585
	.uleb128 0x32
	.quad	.LBB28
	.quad	.LBE28-.LBB28
	.uleb128 0x35
	.long	.LASF1182
	.byte	0x1
	.value	0x715
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x17
	.long	0x3fb4
	.uleb128 0x3a
	.long	.LASF1183
	.byte	0x1
	.value	0x741
	.quad	.LFB42
	.quad	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.long	0x4812
	.uleb128 0x2f
	.string	"mem"
	.byte	0x1
	.value	0x742
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.string	"set"
	.byte	0x1
	.value	0x743
	.long	0x377
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x3a
	.long	.LASF1184
	.byte	0x1
	.value	0x753
	.quad	.LFB43
	.quad	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.long	0x484f
	.uleb128 0x2f
	.string	"mem"
	.byte	0x1
	.value	0x754
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x34
	.long	.LASF331
	.byte	0x1
	.value	0x755
	.long	0x363
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x3a
	.long	.LASF1185
	.byte	0x1
	.value	0x75f
	.quad	.LFB44
	.quad	.LFE44-.LFB44
	.uleb128 0x1
	.byte	0x9c
	.long	0x488c
	.uleb128 0x2f
	.string	"mem"
	.byte	0x1
	.value	0x760
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x34
	.long	.LASF328
	.byte	0x1
	.value	0x761
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x3a
	.long	.LASF1186
	.byte	0x1
	.value	0x76b
	.quad	.LFB45
	.quad	.LFE45-.LFB45
	.uleb128 0x1
	.byte	0x9c
	.long	0x48c9
	.uleb128 0x2f
	.string	"mem"
	.byte	0x1
	.value	0x76c
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x34
	.long	.LASF329
	.byte	0x1
	.value	0x76c
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x33
	.long	.LASF1187
	.byte	0x1
	.value	0x77a
	.long	0x2d
	.quad	.LFB46
	.quad	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.long	0x494a
	.uleb128 0x34
	.long	.LASF1188
	.byte	0x1
	.value	0x77b
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x34
	.long	.LASF1
	.byte	0x1
	.value	0x77c
	.long	0x615
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x34
	.long	.LASF1124
	.byte	0x1
	.value	0x77d
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x34
	.long	.LASF1189
	.byte	0x1
	.value	0x77e
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x30
	.string	"new"
	.byte	0x1
	.value	0x780
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x37
	.long	.LASF1130
	.long	0x494a
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.13615
	.byte	0
	.uleb128 0x17
	.long	0x44ae
	.uleb128 0x36
	.long	.LASF1190
	.byte	0x1
	.value	0x7a0
	.long	0x2d
	.quad	.LFB47
	.quad	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.long	0x49be
	.uleb128 0x34
	.long	.LASF1188
	.byte	0x1
	.value	0x7a1
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x34
	.long	.LASF1
	.byte	0x1
	.value	0x7a2
	.long	0x615
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x34
	.long	.LASF1124
	.byte	0x1
	.value	0x7a3
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x30
	.string	"new"
	.byte	0x1
	.value	0x7a5
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x35
	.long	.LASF1191
	.byte	0x1
	.value	0x7a6
	.long	0x615
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x36
	.long	.LASF1192
	.byte	0x1
	.value	0x7b9
	.long	0x2d
	.quad	.LFB48
	.quad	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.long	0x4a7d
	.uleb128 0x34
	.long	.LASF1188
	.byte	0x1
	.value	0x7ba
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x34
	.long	.LASF1
	.byte	0x1
	.value	0x7bb
	.long	0x615
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x34
	.long	.LASF329
	.byte	0x1
	.value	0x7bc
	.long	0x377
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x34
	.long	.LASF1189
	.byte	0x1
	.value	0x7bd
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x34
	.long	.LASF1193
	.byte	0x1
	.value	0x7bd
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x35
	.long	.LASF1124
	.byte	0x1
	.value	0x7bf
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x30
	.string	"new"
	.byte	0x1
	.value	0x7c0
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x35
	.long	.LASF1194
	.byte	0x1
	.value	0x7c1
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x35
	.long	.LASF330
	.byte	0x1
	.value	0x7c2
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x35
	.long	.LASF1195
	.byte	0x1
	.value	0x7c3
	.long	0x363
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.byte	0
	.uleb128 0x36
	.long	.LASF1196
	.byte	0x1
	.value	0x7fb
	.long	0x2d
	.quad	.LFB49
	.quad	.LFE49-.LFB49
	.uleb128 0x1
	.byte	0x9c
	.long	0x4aeb
	.uleb128 0x34
	.long	.LASF1188
	.byte	0x1
	.value	0x7fc
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x34
	.long	.LASF1
	.byte	0x1
	.value	0x7fd
	.long	0x615
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x34
	.long	.LASF1124
	.byte	0x1
	.value	0x7fe
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x34
	.long	.LASF329
	.byte	0x1
	.value	0x7ff
	.long	0x377
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x34
	.long	.LASF1189
	.byte	0x1
	.value	0x800
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x36
	.long	.LASF1197
	.byte	0x1
	.value	0x80b
	.long	0x2d
	.quad	.LFB50
	.quad	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.long	0x4b59
	.uleb128 0x34
	.long	.LASF1188
	.byte	0x1
	.value	0x80c
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x34
	.long	.LASF329
	.byte	0x1
	.value	0x80d
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x34
	.long	.LASF1198
	.byte	0x1
	.value	0x80e
	.long	0x377
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x30
	.string	"new"
	.byte	0x1
	.value	0x810
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x35
	.long	.LASF1124
	.byte	0x1
	.value	0x810
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x36
	.long	.LASF1199
	.byte	0x1
	.value	0x836
	.long	0x2d
	.quad	.LFB51
	.quad	.LFE51-.LFB51
	.uleb128 0x1
	.byte	0x9c
	.long	0x4b9a
	.uleb128 0x34
	.long	.LASF1188
	.byte	0x1
	.value	0x837
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x34
	.long	.LASF1124
	.byte	0x1
	.value	0x838
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x36
	.long	.LASF1200
	.byte	0x1
	.value	0x843
	.long	0x2d
	.quad	.LFB52
	.quad	.LFE52-.LFB52
	.uleb128 0x1
	.byte	0x9c
	.long	0x4bdb
	.uleb128 0x34
	.long	.LASF1188
	.byte	0x1
	.value	0x844
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x34
	.long	.LASF1124
	.byte	0x1
	.value	0x845
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x36
	.long	.LASF1201
	.byte	0x1
	.value	0x850
	.long	0x2d
	.quad	.LFB53
	.quad	.LFE53-.LFB53
	.uleb128 0x1
	.byte	0x9c
	.long	0x4c8c
	.uleb128 0x34
	.long	.LASF1188
	.byte	0x1
	.value	0x851
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x34
	.long	.LASF1
	.byte	0x1
	.value	0x852
	.long	0x615
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x34
	.long	.LASF329
	.byte	0x1
	.value	0x853
	.long	0x377
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x30
	.string	"new"
	.byte	0x1
	.value	0x855
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x35
	.long	.LASF328
	.byte	0x1
	.value	0x856
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x35
	.long	.LASF1194
	.byte	0x1
	.value	0x857
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x35
	.long	.LASF330
	.byte	0x1
	.value	0x858
	.long	0x363
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x32
	.quad	.LBB29
	.quad	.LBE29-.LBB29
	.uleb128 0x35
	.long	.LASF1202
	.byte	0x1
	.value	0x863
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x36
	.long	.LASF1203
	.byte	0x1
	.value	0x89d
	.long	0x2d
	.quad	.LFB54
	.quad	.LFE54-.LFB54
	.uleb128 0x1
	.byte	0x9c
	.long	0x4cbe
	.uleb128 0x35
	.long	.LASF1073
	.byte	0x1
	.value	0x89f
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x3b
	.long	.LASF1204
	.byte	0x1
	.value	0x8b0
	.quad	.LFB55
	.quad	.LFE55-.LFB55
	.uleb128 0x1
	.byte	0x9c
	.long	0x4d0a
	.uleb128 0x34
	.long	.LASF346
	.byte	0x1
	.value	0x8b1
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x34
	.long	.LASF963
	.byte	0x1
	.value	0x8b1
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x35
	.long	.LASF1174
	.byte	0x1
	.value	0x8b3
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x3b
	.long	.LASF1205
	.byte	0x1
	.value	0x8c3
	.quad	.LFB56
	.quad	.LFE56-.LFB56
	.uleb128 0x1
	.byte	0x9c
	.long	0x4d47
	.uleb128 0x34
	.long	.LASF346
	.byte	0x1
	.value	0x8c4
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x34
	.long	.LASF963
	.byte	0x1
	.value	0x8c4
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x3b
	.long	.LASF1206
	.byte	0x1
	.value	0x8cf
	.quad	.LFB57
	.quad	.LFE57-.LFB57
	.uleb128 0x1
	.byte	0x9c
	.long	0x4d75
	.uleb128 0x34
	.long	.LASF963
	.byte	0x1
	.value	0x8d0
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x3a
	.long	.LASF1207
	.byte	0x1
	.value	0x8da
	.quad	.LFB58
	.quad	.LFE58-.LFB58
	.uleb128 0x1
	.byte	0x9c
	.long	0x4da1
	.uleb128 0x2f
	.string	"p"
	.byte	0x1
	.value	0x8db
	.long	0x22b5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x3a
	.long	.LASF1208
	.byte	0x1
	.value	0x8e6
	.quad	.LFB59
	.quad	.LFE59-.LFB59
	.uleb128 0x1
	.byte	0x9c
	.long	0x4dcd
	.uleb128 0x2f
	.string	"f"
	.byte	0x1
	.value	0x8e7
	.long	0x22b5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x3a
	.long	.LASF1209
	.byte	0x1
	.value	0x8f4
	.quad	.LFB60
	.quad	.LFE60-.LFB60
	.uleb128 0x1
	.byte	0x9c
	.long	0x4e19
	.uleb128 0x34
	.long	.LASF1210
	.byte	0x1
	.value	0x8f5
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x34
	.long	.LASF1174
	.byte	0x1
	.value	0x8f6
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x35
	.long	.LASF23
	.byte	0x1
	.value	0x8f8
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x3a
	.long	.LASF1211
	.byte	0x1
	.value	0x913
	.quad	.LFB61
	.quad	.LFE61-.LFB61
	.uleb128 0x1
	.byte	0x9c
	.long	0x4e63
	.uleb128 0x34
	.long	.LASF1174
	.byte	0x1
	.value	0x914
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x30
	.string	"p"
	.byte	0x1
	.value	0x916
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x35
	.long	.LASF23
	.byte	0x1
	.value	0x917
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2e
	.long	.LASF1213
	.byte	0x1
	.value	0x931
	.quad	.LFB62
	.quad	.LFE62-.LFB62
	.uleb128 0x1
	.byte	0x9c
	.long	0x4e91
	.uleb128 0x34
	.long	.LASF1174
	.byte	0x1
	.value	0x932
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2e
	.long	.LASF1214
	.byte	0x1
	.value	0x940
	.quad	.LFB63
	.quad	.LFE63-.LFB63
	.uleb128 0x1
	.byte	0x9c
	.long	0x4ecc
	.uleb128 0x2f
	.string	"blk"
	.byte	0x1
	.value	0x941
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x30
	.string	"t"
	.byte	0x1
	.value	0x943
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2e
	.long	.LASF1215
	.byte	0x1
	.value	0x952
	.quad	.LFB64
	.quad	.LFE64-.LFB64
	.uleb128 0x1
	.byte	0x9c
	.long	0x4f07
	.uleb128 0x2f
	.string	"blk"
	.byte	0x1
	.value	0x953
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x30
	.string	"t"
	.byte	0x1
	.value	0x955
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x36
	.long	.LASF1216
	.byte	0x1
	.value	0x966
	.long	0x2d
	.quad	.LFB65
	.quad	.LFE65-.LFB65
	.uleb128 0x1
	.byte	0x9c
	.long	0x4fa4
	.uleb128 0x34
	.long	.LASF1217
	.byte	0x1
	.value	0x967
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x34
	.long	.LASF1218
	.byte	0x1
	.value	0x968
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x35
	.long	.LASF1219
	.byte	0x1
	.value	0x96a
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x30
	.string	"i"
	.byte	0x1
	.value	0x96b
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x30
	.string	"j"
	.byte	0x1
	.value	0x96b
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x35
	.long	.LASF0
	.byte	0x1
	.value	0x96c
	.long	0x7d3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x35
	.long	.LASF1220
	.byte	0x1
	.value	0x96d
	.long	0x5c5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x37
	.long	.LASF1130
	.long	0x4fa4
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.13775
	.byte	0
	.uleb128 0x17
	.long	0x3cce
	.uleb128 0x36
	.long	.LASF1221
	.byte	0x1
	.value	0x9cc
	.long	0x2d
	.quad	.LFB66
	.quad	.LFE66-.LFB66
	.uleb128 0x1
	.byte	0x9c
	.long	0x5079
	.uleb128 0x34
	.long	.LASF1217
	.byte	0x1
	.value	0x9cd
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x30
	.string	"x"
	.byte	0x1
	.value	0x9cf
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x30
	.string	"i"
	.byte	0x1
	.value	0x9d0
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x35
	.long	.LASF0
	.byte	0x1
	.value	0x9d1
	.long	0x7d3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x35
	.long	.LASF1220
	.byte	0x1
	.value	0x9d2
	.long	0x5c5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x35
	.long	.LASF1222
	.byte	0x1
	.value	0x9d3
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x31
	.quad	.LBB30
	.quad	.LBE30-.LBB30
	.long	0x5049
	.uleb128 0x35
	.long	.LASF1219
	.byte	0x1
	.value	0xa13
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x32
	.quad	.LBB31
	.quad	.LBE31-.LBB31
	.uleb128 0x30
	.string	"j"
	.byte	0x1
	.value	0xa30
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x30
	.string	"len"
	.byte	0x1
	.value	0xa31
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.byte	0
	.byte	0
	.uleb128 0x3a
	.long	.LASF1223
	.byte	0x1
	.value	0xa42
	.quad	.LFB67
	.quad	.LFE67-.LFB67
	.uleb128 0x1
	.byte	0x9c
	.long	0x50dd
	.uleb128 0x2f
	.string	"x"
	.byte	0x1
	.value	0xa43
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x30
	.string	"i"
	.byte	0x1
	.value	0xa45
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x30
	.string	"j"
	.byte	0x1
	.value	0xa45
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x35
	.long	.LASF0
	.byte	0x1
	.value	0xa46
	.long	0x7d3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x35
	.long	.LASF1220
	.byte	0x1
	.value	0xa47
	.long	0x5c5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x36
	.long	.LASF1224
	.byte	0x1
	.value	0xa83
	.long	0x2d
	.quad	.LFB68
	.quad	.LFE68-.LFB68
	.uleb128 0x1
	.byte	0x9c
	.long	0x514d
	.uleb128 0x2f
	.string	"x"
	.byte	0x1
	.value	0xa84
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x34
	.long	.LASF1225
	.byte	0x1
	.value	0xa84
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x3e
	.long	.LASF1395
	.byte	0x1
	.value	0xa94
	.quad	.L609
	.uleb128 0x32
	.quad	.LBB32
	.quad	.LBE32-.LBB32
	.uleb128 0x35
	.long	.LASF1226
	.byte	0x1
	.value	0xa9d
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x3c
	.long	.LASF1227
	.byte	0x1
	.value	0xaa9
	.long	0x2d
	.quad	.LFB69
	.quad	.LFE69-.LFB69
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x3c
	.long	.LASF1228
	.byte	0x1
	.value	0xab1
	.long	0x2d
	.quad	.LFB70
	.quad	.LFE70-.LFB70
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x3a
	.long	.LASF1229
	.byte	0x1
	.value	0xab9
	.quad	.LFB71
	.quad	.LFE71-.LFB71
	.uleb128 0x1
	.byte	0x9c
	.long	0x51ca
	.uleb128 0x34
	.long	.LASF1174
	.byte	0x1
	.value	0xaba
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x37
	.long	.LASF1130
	.long	0x51ca
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.13871
	.byte	0
	.uleb128 0x17
	.long	0x3cce
	.uleb128 0x3d
	.long	.LASF1230
	.byte	0x1
	.value	0xac4
	.long	0x2d
	.quad	.LFB72
	.quad	.LFE72-.LFB72
	.uleb128 0x1
	.byte	0x9c
	.long	0x5201
	.uleb128 0x35
	.long	.LASF1231
	.byte	0x1
	.value	0xac6
	.long	0x28ab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x3c
	.long	.LASF1232
	.byte	0x1
	.value	0xad2
	.long	0x1de
	.quad	.LFB73
	.quad	.LFE73-.LFB73
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x3a
	.long	.LASF1233
	.byte	0x1
	.value	0xada
	.quad	.LFB74
	.quad	.LFE74-.LFB74
	.uleb128 0x1
	.byte	0x9c
	.long	0x525c
	.uleb128 0x34
	.long	.LASF1234
	.byte	0x1
	.value	0xadb
	.long	0x3136
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x35
	.long	.LASF1174
	.byte	0x1
	.value	0xadd
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x3d
	.long	.LASF1235
	.byte	0x1
	.value	0xaf7
	.long	0x2d
	.quad	.LFB75
	.quad	.LFE75-.LFB75
	.uleb128 0x1
	.byte	0x9c
	.long	0x528e
	.uleb128 0x34
	.long	.LASF1174
	.byte	0x1
	.value	0xaf8
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x3d
	.long	.LASF1236
	.byte	0x1
	.value	0xb09
	.long	0x2d
	.quad	.LFB76
	.quad	.LFE76-.LFB76
	.uleb128 0x1
	.byte	0x9c
	.long	0x52c0
	.uleb128 0x34
	.long	.LASF1174
	.byte	0x1
	.value	0xb0a
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x3d
	.long	.LASF1237
	.byte	0x1
	.value	0xb1b
	.long	0x2d
	.quad	.LFB77
	.quad	.LFE77-.LFB77
	.uleb128 0x1
	.byte	0x9c
	.long	0x52f2
	.uleb128 0x34
	.long	.LASF1174
	.byte	0x1
	.value	0xb1c
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x3d
	.long	.LASF1238
	.byte	0x1
	.value	0xb2c
	.long	0x2d
	.quad	.LFB78
	.quad	.LFE78-.LFB78
	.uleb128 0x1
	.byte	0x9c
	.long	0x5324
	.uleb128 0x34
	.long	.LASF1174
	.byte	0x1
	.value	0xb2d
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x3d
	.long	.LASF1239
	.byte	0x1
	.value	0xb3e
	.long	0x2d
	.quad	.LFB79
	.quad	.LFE79-.LFB79
	.uleb128 0x1
	.byte	0x9c
	.long	0x5356
	.uleb128 0x34
	.long	.LASF1174
	.byte	0x1
	.value	0xb3f
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x3d
	.long	.LASF1240
	.byte	0x1
	.value	0xb51
	.long	0x2d
	.quad	.LFB80
	.quad	.LFE80-.LFB80
	.uleb128 0x1
	.byte	0x9c
	.long	0x5388
	.uleb128 0x34
	.long	.LASF1174
	.byte	0x1
	.value	0xb52
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x3d
	.long	.LASF1241
	.byte	0x1
	.value	0xb64
	.long	0x1de
	.quad	.LFB81
	.quad	.LFE81-.LFB81
	.uleb128 0x1
	.byte	0x9c
	.long	0x53ba
	.uleb128 0x34
	.long	.LASF1174
	.byte	0x1
	.value	0xb65
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x36
	.long	.LASF1242
	.byte	0x1
	.value	0xb6f
	.long	0x2d
	.quad	.LFB82
	.quad	.LFE82-.LFB82
	.uleb128 0x1
	.byte	0x9c
	.long	0x53ec
	.uleb128 0x34
	.long	.LASF1174
	.byte	0x1
	.value	0xb70
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x36
	.long	.LASF1243
	.byte	0x1
	.value	0xb81
	.long	0x2d
	.quad	.LFB83
	.quad	.LFE83-.LFB83
	.uleb128 0x1
	.byte	0x9c
	.long	0x541e
	.uleb128 0x34
	.long	.LASF1174
	.byte	0x1
	.value	0xb82
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x3d
	.long	.LASF1244
	.byte	0x1
	.value	0xb91
	.long	0x2d
	.quad	.LFB84
	.quad	.LFE84-.LFB84
	.uleb128 0x1
	.byte	0x9c
	.long	0x5450
	.uleb128 0x34
	.long	.LASF1174
	.byte	0x1
	.value	0xb92
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x3d
	.long	.LASF1245
	.byte	0x1
	.value	0xba1
	.long	0x2d
	.quad	.LFB85
	.quad	.LFE85-.LFB85
	.uleb128 0x1
	.byte	0x9c
	.long	0x5482
	.uleb128 0x34
	.long	.LASF1174
	.byte	0x1
	.value	0xba2
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2e
	.long	.LASF1246
	.byte	0x1
	.value	0xbf3
	.quad	.LFB86
	.quad	.LFE86-.LFB86
	.uleb128 0x1
	.byte	0x9c
	.long	0x54e6
	.uleb128 0x2f
	.string	"x"
	.byte	0x1
	.value	0xbf4
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x35
	.long	.LASF0
	.byte	0x1
	.value	0xbf6
	.long	0x7d3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x30
	.string	"i"
	.byte	0x1
	.value	0xbf7
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x30
	.string	"j"
	.byte	0x1
	.value	0xbf7
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x30
	.string	"fmt"
	.byte	0x1
	.value	0xbf8
	.long	0x5c5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x36
	.long	.LASF1247
	.byte	0x1
	.value	0xc14
	.long	0x2d
	.quad	.LFB87
	.quad	.LFE87-.LFB87
	.uleb128 0x1
	.byte	0x9c
	.long	0x567c
	.uleb128 0x2f
	.string	"pat"
	.byte	0x1
	.value	0xc15
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x34
	.long	.LASF1248
	.byte	0x1
	.value	0xc15
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x34
	.long	.LASF963
	.byte	0x1
	.value	0xc16
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0x35
	.long	.LASF1249
	.byte	0x1
	.value	0xc18
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x35
	.long	.LASF1250
	.byte	0x1
	.value	0xc19
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x35
	.long	.LASF1251
	.byte	0x1
	.value	0xc1a
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x30
	.string	"tem"
	.byte	0x1
	.value	0xc1b
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x35
	.long	.LASF1252
	.byte	0x1
	.value	0xc1c
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x30
	.string	"seq"
	.byte	0x1
	.value	0xc1c
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x35
	.long	.LASF1051
	.byte	0x1
	.value	0xc1d
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x37
	.long	.LASF1130
	.long	0x568c
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.13975
	.uleb128 0x32
	.quad	.LBB33
	.quad	.LBE33-.LBB33
	.uleb128 0x30
	.string	"i"
	.byte	0x1
	.value	0xc37
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x35
	.long	.LASF1253
	.byte	0x1
	.value	0xc37
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x31
	.quad	.LBB34
	.quad	.LBE34-.LBB34
	.long	0x560f
	.uleb128 0x35
	.long	.LASF1174
	.byte	0x1
	.value	0xc44
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x31
	.quad	.LBB35
	.quad	.LBE35-.LBB35
	.long	0x5634
	.uleb128 0x35
	.long	.LASF1174
	.byte	0x1
	.value	0xc69
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x31
	.quad	.LBB36
	.quad	.LBE36-.LBB36
	.long	0x5659
	.uleb128 0x35
	.long	.LASF1174
	.byte	0x1
	.value	0xc79
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x32
	.quad	.LBB37
	.quad	.LBE37-.LBB37
	.uleb128 0x35
	.long	.LASF1174
	.byte	0x1
	.value	0xc85
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x13
	.long	0x3c8
	.long	0x568c
	.uleb128 0x14
	.long	0x1e5
	.byte	0x9
	.byte	0
	.uleb128 0x17
	.long	0x567c
	.uleb128 0x36
	.long	.LASF1254
	.byte	0x1
	.value	0xcc1
	.long	0x2d
	.quad	.LFB88
	.quad	.LFE88-.LFB88
	.uleb128 0x1
	.byte	0x9c
	.long	0x56d2
	.uleb128 0x34
	.long	.LASF1255
	.byte	0x1
	.value	0xcc2
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x35
	.long	.LASF1174
	.byte	0x1
	.value	0xcc4
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x33
	.long	.LASF1256
	.byte	0x1
	.value	0xce0
	.long	0x2d
	.quad	.LFB89
	.quad	.LFE89-.LFB89
	.uleb128 0x1
	.byte	0x9c
	.long	0x5713
	.uleb128 0x34
	.long	.LASF1255
	.byte	0x1
	.value	0xce1
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x35
	.long	.LASF1174
	.byte	0x1
	.value	0xce3
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x33
	.long	.LASF1257
	.byte	0x1
	.value	0xcf4
	.long	0x2d
	.quad	.LFB90
	.quad	.LFE90-.LFB90
	.uleb128 0x1
	.byte	0x9c
	.long	0x5754
	.uleb128 0x34
	.long	.LASF1255
	.byte	0x1
	.value	0xcf5
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x35
	.long	.LASF1174
	.byte	0x1
	.value	0xcf7
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x3b
	.long	.LASF1258
	.byte	0x1
	.value	0xd09
	.quad	.LFB91
	.quad	.LFE91-.LFB91
	.uleb128 0x1
	.byte	0x9c
	.long	0x5782
	.uleb128 0x34
	.long	.LASF1174
	.byte	0x1
	.value	0xd0a
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x3a
	.long	.LASF1259
	.byte	0x1
	.value	0xd1e
	.quad	.LFB92
	.quad	.LFE92-.LFB92
	.uleb128 0x1
	.byte	0x9c
	.long	0x5835
	.uleb128 0x34
	.long	.LASF1174
	.byte	0x1
	.value	0xd1f
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x34
	.long	.LASF1250
	.byte	0x1
	.value	0xd1f
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x35
	.long	.LASF961
	.byte	0x1
	.value	0xd21
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x30
	.string	"bb"
	.byte	0x1
	.value	0xd22
	.long	0x2f7c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x37
	.long	.LASF1130
	.long	0x5835
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.14031
	.uleb128 0x31
	.quad	.LBB38
	.quad	.LBE38-.LBB38
	.long	0x5813
	.uleb128 0x35
	.long	.LASF1231
	.byte	0x1
	.value	0xd34
	.long	0x28ab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x32
	.quad	.LBB39
	.quad	.LBE39-.LBB39
	.uleb128 0x35
	.long	.LASF1260
	.byte	0x1
	.value	0xd53
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x17
	.long	0x3933
	.uleb128 0x3a
	.long	.LASF1261
	.byte	0x1
	.value	0xd5e
	.quad	.LFB93
	.quad	.LFE93-.LFB93
	.uleb128 0x1
	.byte	0x9c
	.long	0x58ed
	.uleb128 0x34
	.long	.LASF1174
	.byte	0x1
	.value	0xd5f
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x34
	.long	.LASF1249
	.byte	0x1
	.value	0xd5f
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x35
	.long	.LASF1041
	.byte	0x1
	.value	0xd61
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x30
	.string	"bb"
	.byte	0x1
	.value	0xd62
	.long	0x2f7c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x37
	.long	.LASF1130
	.long	0x58ed
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.14043
	.uleb128 0x31
	.quad	.LBB40
	.quad	.LBE40-.LBB40
	.long	0x58cb
	.uleb128 0x35
	.long	.LASF1260
	.byte	0x1
	.value	0xd6f
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x32
	.quad	.LBB41
	.quad	.LBE41-.LBB41
	.uleb128 0x35
	.long	.LASF1231
	.byte	0x1
	.value	0xd77
	.long	0x28ab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x17
	.long	0x4555
	.uleb128 0x3a
	.long	.LASF1262
	.byte	0x1
	.value	0xd9b
	.quad	.LFB94
	.quad	.LFE94-.LFB94
	.uleb128 0x1
	.byte	0x9c
	.long	0x59cb
	.uleb128 0x34
	.long	.LASF1174
	.byte	0x1
	.value	0xd9c
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x35
	.long	.LASF961
	.byte	0x1
	.value	0xd9e
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x35
	.long	.LASF1041
	.byte	0x1
	.value	0xd9f
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x30
	.string	"bb"
	.byte	0x1
	.value	0xda0
	.long	0x2f7c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x37
	.long	.LASF1130
	.long	0x59cb
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.14060
	.uleb128 0x31
	.quad	.LBB42
	.quad	.LBE42-.LBB42
	.long	0x5984
	.uleb128 0x35
	.long	.LASF1260
	.byte	0x1
	.value	0xda7
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x31
	.quad	.LBB43
	.quad	.LBE43-.LBB43
	.long	0x59a9
	.uleb128 0x35
	.long	.LASF1231
	.byte	0x1
	.value	0xdaf
	.long	0x28ab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x32
	.quad	.LBB44
	.quad	.LBE44-.LBB44
	.uleb128 0x35
	.long	.LASF1231
	.byte	0x1
	.value	0xdc6
	.long	0x28ab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.byte	0
	.uleb128 0x17
	.long	0x3c78
	.uleb128 0x3b
	.long	.LASF1263
	.byte	0x1
	.value	0xde7
	.quad	.LFB95
	.quad	.LFE95-.LFB95
	.uleb128 0x1
	.byte	0x9c
	.long	0x59fe
	.uleb128 0x34
	.long	.LASF1264
	.byte	0x1
	.value	0xde8
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x3b
	.long	.LASF1265
	.byte	0x1
	.value	0xdfc
	.quad	.LFB96
	.quad	.LFE96-.LFB96
	.uleb128 0x1
	.byte	0x9c
	.long	0x5a49
	.uleb128 0x34
	.long	.LASF1264
	.byte	0x1
	.value	0xdfd
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2f
	.string	"to"
	.byte	0x1
	.value	0xdfd
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x34
	.long	.LASF1250
	.byte	0x1
	.value	0xdfd
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x3a
	.long	.LASF1266
	.byte	0x1
	.value	0xe16
	.quad	.LFB97
	.quad	.LFE97-.LFB97
	.uleb128 0x1
	.byte	0x9c
	.long	0x5ae0
	.uleb128 0x34
	.long	.LASF1264
	.byte	0x1
	.value	0xe17
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2f
	.string	"to"
	.byte	0x1
	.value	0xe17
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x34
	.long	.LASF1250
	.byte	0x1
	.value	0xe17
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x35
	.long	.LASF1041
	.byte	0x1
	.value	0xe19
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x30
	.string	"bb"
	.byte	0x1
	.value	0xe1a
	.long	0x2f7c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x30
	.string	"bb2"
	.byte	0x1
	.value	0xe1a
	.long	0x2f7c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x32
	.quad	.LBB45
	.quad	.LBE45-.LBB45
	.uleb128 0x30
	.string	"x"
	.byte	0x1
	.value	0xe22
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x3f
	.long	.LASF1267
	.byte	0x1
	.value	0xe38
	.long	0x2d
	.quad	.LFB98
	.quad	.LFE98-.LFB98
	.uleb128 0x1
	.byte	0x9c
	.long	0x5b12
	.uleb128 0x34
	.long	.LASF1174
	.byte	0x1
	.value	0xe39
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x3a
	.long	.LASF1268
	.byte	0x1
	.value	0xe4b
	.quad	.LFB99
	.quad	.LFE99-.LFB99
	.uleb128 0x1
	.byte	0x9c
	.long	0x5b7b
	.uleb128 0x34
	.long	.LASF1264
	.byte	0x1
	.value	0xe4c
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.string	"to"
	.byte	0x1
	.value	0xe4c
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x34
	.long	.LASF1250
	.byte	0x1
	.value	0xe4c
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x35
	.long	.LASF1269
	.byte	0x1
	.value	0xe4e
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x35
	.long	.LASF1270
	.byte	0x1
	.value	0xe4f
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x3a
	.long	.LASF1271
	.byte	0x1
	.value	0xe63
	.quad	.LFB100
	.quad	.LFE100-.LFB100
	.uleb128 0x1
	.byte	0x9c
	.long	0x5bf8
	.uleb128 0x35
	.long	.LASF1272
	.byte	0x1
	.value	0xe65
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x35
	.long	.LASF1273
	.byte	0x1
	.value	0xe66
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x35
	.long	.LASF1174
	.byte	0x1
	.value	0xe67
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x35
	.long	.LASF961
	.byte	0x1
	.value	0xe68
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x30
	.string	"tmp"
	.byte	0x1
	.value	0xe69
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x37
	.long	.LASF1130
	.long	0x5c08
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.14111
	.byte	0
	.uleb128 0x13
	.long	0x3c8
	.long	0x5c08
	.uleb128 0x14
	.long	0x1e5
	.byte	0x18
	.byte	0
	.uleb128 0x17
	.long	0x5bf8
	.uleb128 0x36
	.long	.LASF1274
	.byte	0x1
	.value	0xed8
	.long	0x2d
	.quad	.LFB101
	.quad	.LFE101-.LFB101
	.uleb128 0x1
	.byte	0x9c
	.long	0x5c7c
	.uleb128 0x34
	.long	.LASF1255
	.byte	0x1
	.value	0xed9
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x34
	.long	.LASF1249
	.byte	0x1
	.value	0xed9
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x35
	.long	.LASF1174
	.byte	0x1
	.value	0xedb
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x32
	.quad	.LBB46
	.quad	.LBE46-.LBB46
	.uleb128 0x30
	.string	"i"
	.byte	0x1
	.value	0xedf
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.byte	0
	.uleb128 0x36
	.long	.LASF1275
	.byte	0x1
	.value	0xef4
	.long	0x2d
	.quad	.LFB102
	.quad	.LFE102-.LFB102
	.uleb128 0x1
	.byte	0x9c
	.long	0x5ccc
	.uleb128 0x34
	.long	.LASF1255
	.byte	0x1
	.value	0xef5
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x34
	.long	.LASF1249
	.byte	0x1
	.value	0xef5
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x35
	.long	.LASF1174
	.byte	0x1
	.value	0xef7
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x36
	.long	.LASF1276
	.byte	0x1
	.value	0xf08
	.long	0x2d
	.quad	.LFB103
	.quad	.LFE103-.LFB103
	.uleb128 0x1
	.byte	0x9c
	.long	0x5d1c
	.uleb128 0x34
	.long	.LASF1255
	.byte	0x1
	.value	0xf09
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x34
	.long	.LASF1249
	.byte	0x1
	.value	0xf09
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x35
	.long	.LASF1174
	.byte	0x1
	.value	0xf0b
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x36
	.long	.LASF1277
	.byte	0x1
	.value	0xf1d
	.long	0x2d
	.quad	.LFB104
	.quad	.LFE104-.LFB104
	.uleb128 0x1
	.byte	0x9c
	.long	0x5d5d
	.uleb128 0x34
	.long	.LASF1249
	.byte	0x1
	.value	0xf1e
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x35
	.long	.LASF1174
	.byte	0x1
	.value	0xf20
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x36
	.long	.LASF1278
	.byte	0x1
	.value	0xf2b
	.long	0x2d
	.quad	.LFB105
	.quad	.LFE105-.LFB105
	.uleb128 0x1
	.byte	0x9c
	.long	0x5d9e
	.uleb128 0x34
	.long	.LASF1073
	.byte	0x1
	.value	0xf2c
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x34
	.long	.LASF1249
	.byte	0x1
	.value	0xf2c
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x36
	.long	.LASF1279
	.byte	0x1
	.value	0xf3c
	.long	0x2d
	.quad	.LFB106
	.quad	.LFE106-.LFB106
	.uleb128 0x1
	.byte	0x9c
	.long	0x5dee
	.uleb128 0x34
	.long	.LASF1280
	.byte	0x1
	.value	0xf3d
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x34
	.long	.LASF1249
	.byte	0x1
	.value	0xf3e
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x35
	.long	.LASF1252
	.byte	0x1
	.value	0xf40
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x36
	.long	.LASF1281
	.byte	0x1
	.value	0xf4d
	.long	0x2d
	.quad	.LFB107
	.quad	.LFE107-.LFB107
	.uleb128 0x1
	.byte	0x9c
	.long	0x5e5d
	.uleb128 0x34
	.long	.LASF1255
	.byte	0x1
	.value	0xf4e
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x34
	.long	.LASF1250
	.byte	0x1
	.value	0xf4e
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x35
	.long	.LASF1174
	.byte	0x1
	.value	0xf50
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x32
	.quad	.LBB47
	.quad	.LBE47-.LBB47
	.uleb128 0x30
	.string	"i"
	.byte	0x1
	.value	0xf54
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.byte	0
	.uleb128 0x3a
	.long	.LASF1282
	.byte	0x1
	.value	0xf6a
	.quad	.LFB108
	.quad	.LFE108-.LFB108
	.uleb128 0x1
	.byte	0x9c
	.long	0x5ed7
	.uleb128 0x34
	.long	.LASF1255
	.byte	0x1
	.value	0xf6b
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x34
	.long	.LASF1250
	.byte	0x1
	.value	0xf6b
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x34
	.long	.LASF1264
	.byte	0x1
	.value	0xf6b
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x35
	.long	.LASF1269
	.byte	0x1
	.value	0xf6d
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x35
	.long	.LASF1270
	.byte	0x1
	.value	0xf6e
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x35
	.long	.LASF1174
	.byte	0x1
	.value	0xf6f
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x36
	.long	.LASF1283
	.byte	0x1
	.value	0xf80
	.long	0x2d
	.quad	.LFB109
	.quad	.LFE109-.LFB109
	.uleb128 0x1
	.byte	0x9c
	.long	0x5f27
	.uleb128 0x34
	.long	.LASF1255
	.byte	0x1
	.value	0xf81
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x34
	.long	.LASF1250
	.byte	0x1
	.value	0xf81
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x35
	.long	.LASF1174
	.byte	0x1
	.value	0xf83
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x36
	.long	.LASF1284
	.byte	0x1
	.value	0xf94
	.long	0x2d
	.quad	.LFB110
	.quad	.LFE110-.LFB110
	.uleb128 0x1
	.byte	0x9c
	.long	0x5f68
	.uleb128 0x34
	.long	.LASF1250
	.byte	0x1
	.value	0xf95
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x35
	.long	.LASF1174
	.byte	0x1
	.value	0xf97
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x36
	.long	.LASF1285
	.byte	0x1
	.value	0xfa2
	.long	0x2d
	.quad	.LFB111
	.quad	.LFE111-.LFB111
	.uleb128 0x1
	.byte	0x9c
	.long	0x5fa9
	.uleb128 0x34
	.long	.LASF1073
	.byte	0x1
	.value	0xfa3
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x34
	.long	.LASF1250
	.byte	0x1
	.value	0xfa3
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x36
	.long	.LASF1286
	.byte	0x1
	.value	0xfb4
	.long	0x2d
	.quad	.LFB112
	.quad	.LFE112-.LFB112
	.uleb128 0x1
	.byte	0x9c
	.long	0x5ff9
	.uleb128 0x34
	.long	.LASF1280
	.byte	0x1
	.value	0xfb5
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x34
	.long	.LASF1250
	.byte	0x1
	.value	0xfb6
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x35
	.long	.LASF1252
	.byte	0x1
	.value	0xfb8
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x36
	.long	.LASF1287
	.byte	0x1
	.value	0xfc3
	.long	0x2d
	.quad	.LFB113
	.quad	.LFE113-.LFB113
	.uleb128 0x1
	.byte	0x9c
	.long	0x6058
	.uleb128 0x34
	.long	.LASF1288
	.byte	0x1
	.value	0xfc4
	.long	0x5c5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x34
	.long	.LASF1289
	.byte	0x1
	.value	0xfc5
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x34
	.long	.LASF1250
	.byte	0x1
	.value	0xfc6
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x35
	.long	.LASF1252
	.byte	0x1
	.value	0xfc8
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x36
	.long	.LASF1290
	.byte	0x1
	.value	0xfe0
	.long	0x2d
	.quad	.LFB114
	.quad	.LFE114-.LFB114
	.uleb128 0x1
	.byte	0x9c
	.long	0x60b8
	.uleb128 0x34
	.long	.LASF1255
	.byte	0x1
	.value	0xfe1
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x35
	.long	.LASF1174
	.byte	0x1
	.value	0xfe3
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x32
	.quad	.LBB48
	.quad	.LBE48-.LBB48
	.uleb128 0x30
	.string	"i"
	.byte	0x1
	.value	0xfe7
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.byte	0
	.uleb128 0x36
	.long	.LASF1291
	.byte	0x1
	.value	0xffc
	.long	0x2d
	.quad	.LFB115
	.quad	.LFE115-.LFB115
	.uleb128 0x1
	.byte	0x9c
	.long	0x611a
	.uleb128 0x34
	.long	.LASF1174
	.byte	0x1
	.value	0xffd
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x35
	.long	.LASF963
	.byte	0x1
	.value	0xfff
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x32
	.quad	.LBB49
	.quad	.LBE49-.LBB49
	.uleb128 0x35
	.long	.LASF961
	.byte	0x1
	.value	0x1003
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x36
	.long	.LASF1292
	.byte	0x1
	.value	0x1010
	.long	0x2d
	.quad	.LFB116
	.quad	.LFE116-.LFB116
	.uleb128 0x1
	.byte	0x9c
	.long	0x618b
	.uleb128 0x34
	.long	.LASF1174
	.byte	0x1
	.value	0x1011
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x34
	.long	.LASF1249
	.byte	0x1
	.value	0x1012
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x35
	.long	.LASF963
	.byte	0x1
	.value	0x1014
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x32
	.quad	.LBB50
	.quad	.LBE50-.LBB50
	.uleb128 0x35
	.long	.LASF961
	.byte	0x1
	.value	0x1018
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x36
	.long	.LASF1293
	.byte	0x1
	.value	0x1025
	.long	0x2d
	.quad	.LFB117
	.quad	.LFE117-.LFB117
	.uleb128 0x1
	.byte	0x9c
	.long	0x620b
	.uleb128 0x34
	.long	.LASF346
	.byte	0x1
	.value	0x1026
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x34
	.long	.LASF1250
	.byte	0x1
	.value	0x1027
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x35
	.long	.LASF963
	.byte	0x1
	.value	0x1029
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x35
	.long	.LASF1294
	.byte	0x1
	.value	0x102a
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x30
	.string	"bb"
	.byte	0x1
	.value	0x102b
	.long	0x2f7c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x37
	.long	.LASF1130
	.long	0x620b
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.14226
	.byte	0
	.uleb128 0x17
	.long	0x44ae
	.uleb128 0x36
	.long	.LASF1295
	.byte	0x1
	.value	0x1052
	.long	0x2d
	.quad	.LFB118
	.quad	.LFE118-.LFB118
	.uleb128 0x1
	.byte	0x9c
	.long	0x6263
	.uleb128 0x34
	.long	.LASF1255
	.byte	0x1
	.value	0x1053
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x32
	.quad	.LBB51
	.quad	.LBE51-.LBB51
	.uleb128 0x35
	.long	.LASF1174
	.byte	0x1
	.value	0x1059
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x36
	.long	.LASF1296
	.byte	0x1
	.value	0x1063
	.long	0x2d
	.quad	.LFB119
	.quad	.LFE119-.LFB119
	.uleb128 0x1
	.byte	0x9c
	.long	0x62b6
	.uleb128 0x34
	.long	.LASF1255
	.byte	0x1
	.value	0x1064
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x32
	.quad	.LBB52
	.quad	.LBE52-.LBB52
	.uleb128 0x35
	.long	.LASF1174
	.byte	0x1
	.value	0x106a
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x36
	.long	.LASF1297
	.byte	0x1
	.value	0x1074
	.long	0x2d
	.quad	.LFB120
	.quad	.LFE120-.LFB120
	.uleb128 0x1
	.byte	0x9c
	.long	0x62e8
	.uleb128 0x34
	.long	.LASF1073
	.byte	0x1
	.value	0x1075
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x36
	.long	.LASF1298
	.byte	0x1
	.value	0x1086
	.long	0x2d
	.quad	.LFB121
	.quad	.LFE121-.LFB121
	.uleb128 0x1
	.byte	0x9c
	.long	0x631a
	.uleb128 0x35
	.long	.LASF1299
	.byte	0x1
	.value	0x1088
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x36
	.long	.LASF1300
	.byte	0x1
	.value	0x1094
	.long	0x2d
	.quad	.LFB122
	.quad	.LFE122-.LFB122
	.uleb128 0x1
	.byte	0x9c
	.long	0x635b
	.uleb128 0x34
	.long	.LASF1288
	.byte	0x1
	.value	0x1095
	.long	0x5c5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x34
	.long	.LASF1289
	.byte	0x1
	.value	0x1096
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x36
	.long	.LASF1301
	.byte	0x1
	.value	0x10a8
	.long	0x2d
	.quad	.LFB123
	.quad	.LFE123-.LFB123
	.uleb128 0x1
	.byte	0x9c
	.long	0x63ab
	.uleb128 0x34
	.long	.LASF1288
	.byte	0x1
	.value	0x10a9
	.long	0x5c5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x34
	.long	.LASF1289
	.byte	0x1
	.value	0x10aa
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x35
	.long	.LASF1252
	.byte	0x1
	.value	0x10ac
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x36
	.long	.LASF1302
	.byte	0x1
	.value	0x10c8
	.long	0x2d
	.quad	.LFB124
	.quad	.LFE124-.LFB124
	.uleb128 0x1
	.byte	0x9c
	.long	0x63ec
	.uleb128 0x34
	.long	.LASF1288
	.byte	0x1
	.value	0x10c9
	.long	0x5c5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x34
	.long	.LASF1289
	.byte	0x1
	.value	0x10ca
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x40
	.long	.LASF1396
	.byte	0x1
	.value	0x10d4
	.quad	.LFB125
	.quad	.LFE125-.LFB125
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x36
	.long	.LASF1303
	.byte	0x1
	.value	0x10dd
	.long	0x2d
	.quad	.LFB126
	.quad	.LFE126-.LFB126
	.uleb128 0x1
	.byte	0x9c
	.long	0x6478
	.uleb128 0x34
	.long	.LASF1174
	.byte	0x1
	.value	0x10de
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x34
	.long	.LASF1304
	.byte	0x1
	.value	0x10df
	.long	0xe8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x34
	.long	.LASF1305
	.byte	0x1
	.value	0x10e0
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x35
	.long	.LASF1252
	.byte	0x1
	.value	0x10e2
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x37
	.long	.LASF1130
	.long	0x6478
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.14271
	.byte	0
	.uleb128 0x17
	.long	0x5b5
	.uleb128 0x3d
	.long	.LASF1306
	.byte	0x1
	.value	0x110b
	.long	0x7d3
	.quad	.LFB127
	.quad	.LFE127-.LFB127
	.uleb128 0x1
	.byte	0x9c
	.long	0x64cc
	.uleb128 0x2f
	.string	"x"
	.byte	0x1
	.value	0x110c
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x32
	.quad	.LBB53
	.quad	.LBE53-.LBB53
	.uleb128 0x30
	.string	"j"
	.byte	0x1
	.value	0x111f
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x36
	.long	.LASF768
	.byte	0x1
	.value	0x1131
	.long	0x2d
	.quad	.LFB128
	.quad	.LFE128-.LFB128
	.uleb128 0x1
	.byte	0x9c
	.long	0x653f
	.uleb128 0x2f
	.string	"x"
	.byte	0x1
	.value	0x1132
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x35
	.long	.LASF0
	.byte	0x1
	.value	0x1134
	.long	0x7d3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x37
	.long	.LASF1130
	.long	0x654f
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.14286
	.uleb128 0x32
	.quad	.LBB54
	.quad	.LBE54-.LBB54
	.uleb128 0x35
	.long	.LASF1174
	.byte	0x1
	.value	0x113c
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x13
	.long	0x3c8
	.long	0x654f
	.uleb128 0x14
	.long	0x1e5
	.byte	0x4
	.byte	0
	.uleb128 0x17
	.long	0x653f
	.uleb128 0x3a
	.long	.LASF1307
	.byte	0x1
	.value	0x1150
	.quad	.LFB129
	.quad	.LFE129-.LFB129
	.uleb128 0x1
	.byte	0x9c
	.long	0x6582
	.uleb128 0x30
	.string	"tem"
	.byte	0x1
	.value	0x1152
	.long	0x28ab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x3a
	.long	.LASF1308
	.byte	0x1
	.value	0x1166
	.quad	.LFB130
	.quad	.LFE130-.LFB130
	.uleb128 0x1
	.byte	0x9c
	.long	0x65ae
	.uleb128 0x2f
	.string	"t"
	.byte	0x1
	.value	0x1167
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x3a
	.long	.LASF1309
	.byte	0x1
	.value	0x1173
	.quad	.LFB131
	.quad	.LFE131-.LFB131
	.uleb128 0x1
	.byte	0x9c
	.long	0x65eb
	.uleb128 0x34
	.long	.LASF346
	.byte	0x1
	.value	0x1174
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x35
	.long	.LASF963
	.byte	0x1
	.value	0x1176
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x3a
	.long	.LASF1310
	.byte	0x1
	.value	0x1183
	.quad	.LFB132
	.quad	.LFE132-.LFB132
	.uleb128 0x1
	.byte	0x9c
	.long	0x663b
	.uleb128 0x34
	.long	.LASF346
	.byte	0x1
	.value	0x1184
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x34
	.long	.LASF963
	.byte	0x1
	.value	0x1184
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x37
	.long	.LASF1130
	.long	0x663b
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.14304
	.byte	0
	.uleb128 0x17
	.long	0x45db
	.uleb128 0x3a
	.long	.LASF1311
	.byte	0x1
	.value	0x1192
	.quad	.LFB133
	.quad	.LFE133-.LFB133
	.uleb128 0x1
	.byte	0x9c
	.long	0x667d
	.uleb128 0x35
	.long	.LASF1231
	.byte	0x1
	.value	0x1194
	.long	0x28ab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x30
	.string	"top"
	.byte	0x1
	.value	0x1194
	.long	0x28ab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x3a
	.long	.LASF1312
	.byte	0x1
	.value	0x11a4
	.quad	.LFB134
	.quad	.LFE134-.LFB134
	.uleb128 0x1
	.byte	0x9c
	.long	0x66ba
	.uleb128 0x35
	.long	.LASF1231
	.byte	0x1
	.value	0x11a6
	.long	0x28ab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x30
	.string	"top"
	.byte	0x1
	.value	0x11a6
	.long	0x28ab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x3a
	.long	.LASF1313
	.byte	0x1
	.value	0x11c0
	.quad	.LFB135
	.quad	.LFE135-.LFB135
	.uleb128 0x1
	.byte	0x9c
	.long	0x66e8
	.uleb128 0x30
	.string	"tem"
	.byte	0x1
	.value	0x11c2
	.long	0x28ab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x3a
	.long	.LASF1314
	.byte	0x1
	.value	0x11d0
	.quad	.LFB136
	.quad	.LFE136-.LFB136
	.uleb128 0x1
	.byte	0x9c
	.long	0x6725
	.uleb128 0x34
	.long	.LASF346
	.byte	0x1
	.value	0x11d1
	.long	0xffd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x34
	.long	.LASF963
	.byte	0x1
	.value	0x11d1
	.long	0xffd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x3c
	.long	.LASF1315
	.byte	0x1
	.value	0x11db
	.long	0x1de
	.quad	.LFB137
	.quad	.LFE137-.LFB137
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x36
	.long	.LASF1316
	.byte	0x1
	.value	0x11e7
	.long	0x2d
	.quad	.LFB138
	.quad	.LFE138-.LFB138
	.uleb128 0x1
	.byte	0x9c
	.long	0x67a0
	.uleb128 0x35
	.long	.LASF872
	.byte	0x1
	.value	0x11e9
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x30
	.string	"tem"
	.byte	0x1
	.value	0x11ea
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x30
	.string	"i"
	.byte	0x1
	.value	0x11eb
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x30
	.string	"len"
	.byte	0x1
	.value	0x11ec
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x3b
	.long	.LASF1317
	.byte	0x1
	.value	0x120a
	.quad	.LFB139
	.quad	.LFE139-.LFB139
	.uleb128 0x1
	.byte	0x9c
	.long	0x67dc
	.uleb128 0x2f
	.string	"es"
	.byte	0x1
	.value	0x120b
	.long	0x29dd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x30
	.string	"ptr"
	.byte	0x1
	.value	0x120d
	.long	0xffd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x3b
	.long	.LASF1318
	.byte	0x1
	.value	0x1216
	.quad	.LFB140
	.quad	.LFE140-.LFB140
	.uleb128 0x1
	.byte	0x9c
	.long	0x6808
	.uleb128 0x30
	.string	"i"
	.byte	0x1
	.value	0x1218
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x36
	.long	.LASF1319
	.byte	0x1
	.value	0x123c
	.long	0x2d
	.quad	.LFB141
	.quad	.LFE141-.LFB141
	.uleb128 0x1
	.byte	0x9c
	.long	0x6895
	.uleb128 0x34
	.long	.LASF1217
	.byte	0x1
	.value	0x123d
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x35
	.long	.LASF1219
	.byte	0x1
	.value	0x123f
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x30
	.string	"i"
	.byte	0x1
	.value	0x1240
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x30
	.string	"j"
	.byte	0x1
	.value	0x1240
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x35
	.long	.LASF0
	.byte	0x1
	.value	0x1241
	.long	0x7d3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x35
	.long	.LASF1220
	.byte	0x1
	.value	0x1242
	.long	0x5c5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x37
	.long	.LASF1130
	.long	0x6895
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.14397
	.byte	0
	.uleb128 0x17
	.long	0x3c78
	.uleb128 0x36
	.long	.LASF1320
	.byte	0x1
	.value	0x12c2
	.long	0x2d
	.quad	.LFB142
	.quad	.LFE142-.LFB142
	.uleb128 0x1
	.byte	0x9c
	.long	0x68cc
	.uleb128 0x34
	.long	.LASF1174
	.byte	0x1
	.value	0x12c3
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x3a
	.long	.LASF1321
	.byte	0x1
	.value	0x12d1
	.quad	.LFB143
	.quad	.LFE143-.LFB143
	.uleb128 0x1
	.byte	0x9c
	.long	0x68f8
	.uleb128 0x30
	.string	"f"
	.byte	0x1
	.value	0x12d3
	.long	0x22b5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x2e
	.long	.LASF1322
	.byte	0x1
	.value	0x1316
	.quad	.LFB144
	.quad	.LFE144-.LFB144
	.uleb128 0x1
	.byte	0x9c
	.long	0x696b
	.uleb128 0x2f
	.string	"ss"
	.byte	0x1
	.value	0x1317
	.long	0x28ab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x31
	.quad	.LBB55
	.quad	.LBE55-.LBB55
	.long	0x6949
	.uleb128 0x30
	.string	"r__"
	.byte	0x1
	.value	0x131b
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x32
	.quad	.LBB56
	.quad	.LBE56-.LBB56
	.uleb128 0x30
	.string	"t__"
	.byte	0x1
	.value	0x131c
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x3a
	.long	.LASF1323
	.byte	0x1
	.value	0x1324
	.quad	.LFB145
	.quad	.LFE145-.LFB145
	.uleb128 0x1
	.byte	0x9c
	.long	0x6a51
	.uleb128 0x2f
	.string	"es"
	.byte	0x1
	.value	0x1325
	.long	0x29dd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x30
	.string	"r"
	.byte	0x1
	.value	0x1327
	.long	0xffd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x30
	.string	"t"
	.byte	0x1
	.value	0x1328
	.long	0x27ed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x30
	.string	"i"
	.byte	0x1
	.value	0x1329
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x31
	.quad	.LBB57
	.quad	.LBE57-.LBB57
	.long	0x69e5
	.uleb128 0x30
	.string	"r__"
	.byte	0x1
	.value	0x1332
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x31
	.quad	.LBB58
	.quad	.LBE58-.LBB58
	.long	0x6a0a
	.uleb128 0x30
	.string	"t__"
	.byte	0x1
	.value	0x1333
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x31
	.quad	.LBB59
	.quad	.LBE59-.LBB59
	.long	0x6a2f
	.uleb128 0x30
	.string	"t__"
	.byte	0x1
	.value	0x1337
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x32
	.quad	.LBB60
	.quad	.LBE60-.LBB60
	.uleb128 0x30
	.string	"r__"
	.byte	0x1
	.value	0x1338
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x33
	.long	.LASF1324
	.byte	0x1
	.value	0x133e
	.long	0x2d
	.quad	.LFB146
	.quad	.LFE146-.LFB146
	.uleb128 0x1
	.byte	0x9c
	.long	0x6add
	.uleb128 0x34
	.long	.LASF1
	.byte	0x1
	.value	0x133f
	.long	0x615
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x30
	.string	"tem"
	.byte	0x1
	.value	0x1341
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x30
	.string	"v"
	.byte	0x1
	.value	0x1342
	.long	0xed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x35
	.long	.LASF1325
	.byte	0x1
	.value	0x1343
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x30
	.string	"i"
	.byte	0x1
	.value	0x1343
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x35
	.long	.LASF1178
	.byte	0x1
	.value	0x1344
	.long	0x615
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x37
	.long	.LASF1130
	.long	0x6add
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.14436
	.byte	0
	.uleb128 0x17
	.long	0x3fb4
	.uleb128 0x3a
	.long	.LASF1326
	.byte	0x1
	.value	0x135a
	.quad	.LFB147
	.quad	.LFE147-.LFB147
	.uleb128 0x1
	.byte	0x9c
	.long	0x6b6e
	.uleb128 0x34
	.long	.LASF1327
	.byte	0x1
	.value	0x135b
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x30
	.string	"i"
	.byte	0x1
	.value	0x135d
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x35
	.long	.LASF1
	.byte	0x1
	.value	0x135e
	.long	0x615
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x35
	.long	.LASF1328
	.byte	0x1
	.value	0x135f
	.long	0x615
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x32
	.quad	.LBB61
	.quad	.LBE61-.LBB61
	.uleb128 0x30
	.string	"tem"
	.byte	0x1
	.value	0x13c3
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x30
	.string	"u"
	.byte	0x1
	.value	0x13c4
	.long	0x18c2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.byte	0
	.uleb128 0x36
	.long	.LASF1329
	.byte	0x1
	.value	0x1437
	.long	0x1de
	.quad	.LFB148
	.quad	.LFE148-.LFB148
	.uleb128 0x1
	.byte	0x9c
	.long	0x6ba0
	.uleb128 0x30
	.string	"old"
	.byte	0x1
	.value	0x1439
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x3b
	.long	.LASF1330
	.byte	0x1
	.value	0x1442
	.quad	.LFB149
	.quad	.LFE149-.LFB149
	.uleb128 0x1
	.byte	0x9c
	.long	0x6bce
	.uleb128 0x34
	.long	.LASF1331
	.byte	0x1
	.value	0x1443
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x41
	.long	.LASF1332
	.byte	0x1
	.byte	0x47
	.long	0x1de
	.uleb128 0x9
	.byte	0x3
	.quad	label_num
	.uleb128 0x41
	.long	.LASF1333
	.byte	0x1
	.byte	0x4d
	.long	0x1de
	.uleb128 0x9
	.byte	0x3
	.quad	last_label_num
	.uleb128 0x41
	.long	.LASF1334
	.byte	0x1
	.byte	0x52
	.long	0x1de
	.uleb128 0x9
	.byte	0x3
	.quad	base_label_num
	.uleb128 0x41
	.long	.LASF1335
	.byte	0x1
	.byte	0x56
	.long	0x1de
	.uleb128 0x9
	.byte	0x3
	.quad	no_line_numbers
	.uleb128 0x41
	.long	.LASF1336
	.byte	0x1
	.byte	0x92
	.long	0x2e33
	.uleb128 0x9
	.byte	0x3
	.quad	const_int_htab
	.uleb128 0x41
	.long	.LASF1337
	.byte	0x1
	.byte	0x95
	.long	0x2e33
	.uleb128 0x9
	.byte	0x3
	.quad	mem_attrs_htab
	.uleb128 0x13
	.long	0x2d
	.long	0x6c5c
	.uleb128 0x14
	.long	0x1e5
	.byte	0x4
	.byte	0
	.uleb128 0x41
	.long	.LASF1338
	.byte	0x1
	.byte	0xa6
	.long	0x6c4c
	.uleb128 0x9
	.byte	0x3
	.quad	sequence_result
	.uleb128 0x41
	.long	.LASF1339
	.byte	0x1
	.byte	0xa9
	.long	0x2d
	.uleb128 0x9
	.byte	0x3
	.quad	free_insn
	.uleb128 0x35
	.long	.LASF1340
	.byte	0x1
	.value	0x1221
	.long	0x2e5d
	.uleb128 0x9
	.byte	0x3
	.quad	copy_insn_scratch_in
	.uleb128 0x35
	.long	.LASF1341
	.byte	0x1
	.value	0x1222
	.long	0x2e5d
	.uleb128 0x9
	.byte	0x3
	.quad	copy_insn_scratch_out
	.uleb128 0x35
	.long	.LASF1342
	.byte	0x1
	.value	0x1223
	.long	0x1de
	.uleb128 0x9
	.byte	0x3
	.quad	copy_insn_n_scratches
	.uleb128 0x35
	.long	.LASF1343
	.byte	0x1
	.value	0x1228
	.long	0xed
	.uleb128 0x9
	.byte	0x3
	.quad	orig_asm_operands_vector
	.uleb128 0x35
	.long	.LASF1344
	.byte	0x1
	.value	0x122d
	.long	0xed
	.uleb128 0x9
	.byte	0x3
	.quad	copy_asm_operands_vector
	.uleb128 0x35
	.long	.LASF1345
	.byte	0x1
	.value	0x1230
	.long	0xed
	.uleb128 0x9
	.byte	0x3
	.quad	orig_asm_constraints_vector
	.uleb128 0x35
	.long	.LASF1346
	.byte	0x1
	.value	0x1231
	.long	0xed
	.uleb128 0x9
	.byte	0x3
	.quad	copy_asm_constraints_vector
	.uleb128 0x42
	.long	.LASF1347
	.byte	0x5
	.byte	0x62
	.long	0x1de
	.uleb128 0x13
	.long	0x78a
	.long	0x6d3b
	.uleb128 0x14
	.long	0x1e5
	.byte	0x3a
	.byte	0
	.uleb128 0x42
	.long	.LASF180
	.byte	0xc
	.byte	0x34
	.long	0x6d46
	.uleb128 0x17
	.long	0x6d2b
	.uleb128 0x13
	.long	0x390
	.long	0x6d5b
	.uleb128 0x14
	.long	0x1e5
	.byte	0x3a
	.byte	0
	.uleb128 0x42
	.long	.LASF1348
	.byte	0xc
	.byte	0x50
	.long	0x6d66
	.uleb128 0x17
	.long	0x6d4b
	.uleb128 0x42
	.long	.LASF1349
	.byte	0xc
	.byte	0x55
	.long	0x6d76
	.uleb128 0x17
	.long	0x6d4b
	.uleb128 0x13
	.long	0x397
	.long	0x6d8b
	.uleb128 0x14
	.long	0x1e5
	.byte	0x3a
	.byte	0
	.uleb128 0x42
	.long	.LASF1350
	.byte	0xc
	.byte	0x60
	.long	0x6d96
	.uleb128 0x17
	.long	0x6d7b
	.uleb128 0x13
	.long	0x615
	.long	0x6dab
	.uleb128 0x14
	.long	0x1e5
	.byte	0x3a
	.byte	0
	.uleb128 0x42
	.long	.LASF1351
	.byte	0xc
	.byte	0x6e
	.long	0x6db6
	.uleb128 0x17
	.long	0x6d9b
	.uleb128 0x42
	.long	.LASF1352
	.byte	0xc
	.byte	0x7b
	.long	0x6dc6
	.uleb128 0x17
	.long	0x6d4b
	.uleb128 0x13
	.long	0x615
	.long	0x6ddb
	.uleb128 0x14
	.long	0x1e5
	.byte	0x8
	.byte	0
	.uleb128 0x42
	.long	.LASF1353
	.byte	0xc
	.byte	0x9d
	.long	0x6de6
	.uleb128 0x17
	.long	0x6dcb
	.uleb128 0x43
	.long	.LASF1354
	.byte	0x1
	.byte	0x3e
	.long	0x615
	.uleb128 0x9
	.byte	0x3
	.quad	byte_mode
	.uleb128 0x43
	.long	.LASF1355
	.byte	0x1
	.byte	0x3f
	.long	0x615
	.uleb128 0x9
	.byte	0x3
	.quad	word_mode
	.uleb128 0x43
	.long	.LASF1356
	.byte	0x1
	.byte	0x41
	.long	0x615
	.uleb128 0x9
	.byte	0x3
	.quad	ptr_mode
	.uleb128 0x13
	.long	0x390
	.long	0x6e3a
	.uleb128 0x14
	.long	0x1e5
	.byte	0x98
	.byte	0
	.uleb128 0x42
	.long	.LASF1357
	.byte	0x2
	.byte	0x36
	.long	0x6e45
	.uleb128 0x17
	.long	0x6e2a
	.uleb128 0x13
	.long	0x5c5
	.long	0x6e5a
	.uleb128 0x14
	.long	0x1e5
	.byte	0x98
	.byte	0
	.uleb128 0x42
	.long	.LASF1358
	.byte	0x2
	.byte	0x3c
	.long	0x6e65
	.uleb128 0x17
	.long	0x6e4a
	.uleb128 0x13
	.long	0x3c8
	.long	0x6e7a
	.uleb128 0x14
	.long	0x1e5
	.byte	0x98
	.byte	0
	.uleb128 0x42
	.long	.LASF1359
	.byte	0x2
	.byte	0x3f
	.long	0x6e85
	.uleb128 0x17
	.long	0x6e6a
	.uleb128 0x44
	.long	.LASF1360
	.byte	0x2
	.value	0x4be
	.long	0x1de
	.uleb128 0x43
	.long	.LASF1361
	.byte	0x1
	.byte	0xcb
	.long	0x1de
	.uleb128 0x9
	.byte	0x3
	.quad	split_branch_probability
	.uleb128 0x13
	.long	0x2d
	.long	0x6ebb
	.uleb128 0x14
	.long	0x1e5
	.byte	0x80
	.byte	0
	.uleb128 0x43
	.long	.LASF1362
	.byte	0x1
	.byte	0x8d
	.long	0x6eab
	.uleb128 0x9
	.byte	0x3
	.quad	const_int_rtx
	.uleb128 0x43
	.long	.LASF1363
	.byte	0x1
	.byte	0x65
	.long	0x2d
	.uleb128 0x9
	.byte	0x3
	.quad	const_true_rtx
	.uleb128 0x13
	.long	0x2d
	.long	0x6efb
	.uleb128 0x14
	.long	0x1e5
	.byte	0x2
	.uleb128 0x14
	.long	0x1e5
	.byte	0x3a
	.byte	0
	.uleb128 0x43
	.long	.LASF1364
	.byte	0x1
	.byte	0x63
	.long	0x6ee5
	.uleb128 0x9
	.byte	0x3
	.quad	const_tiny_rtx
	.uleb128 0x13
	.long	0x2d
	.long	0x6f20
	.uleb128 0x14
	.long	0x1e5
	.byte	0xa
	.byte	0
	.uleb128 0x43
	.long	.LASF1365
	.byte	0x1
	.byte	0x5d
	.long	0x6f10
	.uleb128 0x9
	.byte	0x3
	.quad	global_rtl
	.uleb128 0x43
	.long	.LASF1366
	.byte	0x1
	.byte	0x82
	.long	0x2d
	.uleb128 0x9
	.byte	0x3
	.quad	pic_offset_table_rtx
	.uleb128 0x43
	.long	.LASF1367
	.byte	0x1
	.byte	0x7e
	.long	0x2d
	.uleb128 0x9
	.byte	0x3
	.quad	struct_value_rtx
	.uleb128 0x43
	.long	.LASF1368
	.byte	0x1
	.byte	0x7f
	.long	0x2d
	.uleb128 0x9
	.byte	0x3
	.quad	struct_value_incoming_rtx
	.uleb128 0x43
	.long	.LASF1369
	.byte	0x1
	.byte	0x80
	.long	0x2d
	.uleb128 0x9
	.byte	0x3
	.quad	static_chain_rtx
	.uleb128 0x43
	.long	.LASF1370
	.byte	0x1
	.byte	0x81
	.long	0x2d
	.uleb128 0x9
	.byte	0x3
	.quad	static_chain_incoming_rtx
	.uleb128 0x43
	.long	.LASF1371
	.byte	0x1
	.byte	0x86
	.long	0x2d
	.uleb128 0x9
	.byte	0x3
	.quad	return_address_pointer_rtx
	.uleb128 0x44
	.long	.LASF1372
	.byte	0x2
	.value	0x6d2
	.long	0x1de
	.uleb128 0x44
	.long	.LASF1373
	.byte	0x2
	.value	0x6d7
	.long	0x1de
	.uleb128 0x44
	.long	.LASF1374
	.byte	0x2
	.value	0x6e3
	.long	0x1de
	.uleb128 0x13
	.long	0x3c8
	.long	0x6fe7
	.uleb128 0x14
	.long	0x1e5
	.byte	0xff
	.byte	0
	.uleb128 0x42
	.long	.LASF1375
	.byte	0x4
	.byte	0x31
	.long	0x6fd7
	.uleb128 0x43
	.long	.LASF1376
	.byte	0x1
	.byte	0x67
	.long	0x18b7
	.uleb128 0x9
	.byte	0x3
	.quad	dconst0
	.uleb128 0x43
	.long	.LASF1377
	.byte	0x1
	.byte	0x68
	.long	0x18b7
	.uleb128 0x9
	.byte	0x3
	.quad	dconst1
	.uleb128 0x43
	.long	.LASF1378
	.byte	0x1
	.byte	0x69
	.long	0x18b7
	.uleb128 0x9
	.byte	0x3
	.quad	dconst2
	.uleb128 0x43
	.long	.LASF1379
	.byte	0x1
	.byte	0x6a
	.long	0x18b7
	.uleb128 0x9
	.byte	0x3
	.quad	dconstm1
	.uleb128 0x13
	.long	0x123
	.long	0x7056
	.uleb128 0x14
	.long	0x1e5
	.byte	0x32
	.byte	0
	.uleb128 0x44
	.long	.LASF1380
	.byte	0x4
	.value	0x79b
	.long	0x7046
	.uleb128 0x13
	.long	0x123
	.long	0x7072
	.uleb128 0x14
	.long	0x1e5
	.byte	0x5
	.byte	0
	.uleb128 0x44
	.long	.LASF1381
	.byte	0x4
	.value	0x97c
	.long	0x7062
	.uleb128 0x42
	.long	.LASF1382
	.byte	0x17
	.byte	0x3d
	.long	0x1de
	.uleb128 0x44
	.long	.LASF1383
	.byte	0x17
	.value	0x1c8
	.long	0x1de
	.uleb128 0x44
	.long	.LASF1384
	.byte	0x17
	.value	0x23c
	.long	0x1de
	.uleb128 0x44
	.long	.LASF1385
	.byte	0x17
	.value	0x282
	.long	0x1de
	.uleb128 0x44
	.long	.LASF1386
	.byte	0x11
	.value	0x1e4
	.long	0x22b5
	.uleb128 0x13
	.long	0x3c8
	.long	0x70c9
	.uleb128 0x14
	.long	0x1e5
	.byte	0x34
	.byte	0
	.uleb128 0x44
	.long	.LASF1387
	.byte	0x18
	.value	0x18b
	.long	0x70b9
	.uleb128 0x44
	.long	.LASF1388
	.byte	0xe
	.value	0x11a
	.long	0x2d45
	.uleb128 0x42
	.long	.LASF1389
	.byte	0x19
	.byte	0x2f
	.long	0x2d45
	.uleb128 0x42
	.long	.LASF1390
	.byte	0x15
	.byte	0x6a
	.long	0x70f7
	.uleb128 0x3
	.byte	0x8
	.long	0x2f87
	.uleb128 0x42
	.long	.LASF1090
	.byte	0x16
	.byte	0xa8
	.long	0x7108
	.uleb128 0x17
	.long	0x332b
	.uleb128 0x43
	.long	.LASF1328
	.byte	0x1
	.byte	0x40
	.long	0x615
	.uleb128 0x9
	.byte	0x3
	.quad	double_mode
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
	.uleb128 0xa
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
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
	.uleb128 0x17
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x32
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0x38
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x39
	.uleb128 0xb
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x3a
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
	.uleb128 0x3b
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
	.uleb128 0x3c
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
	.byte	0
	.byte	0
	.uleb128 0x3d
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
	.uleb128 0x3e
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x3f
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
	.uleb128 0x40
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
	.uleb128 0x2117
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x41
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
	.uleb128 0x42
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
	.uleb128 0x43
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
	.uleb128 0x44
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
.LASF918:
	.string	"TI_UV8HI_TYPE"
.LASF381:
	.string	"REG_BR_PROB"
.LASF923:
	.string	"TI_UV16QI_TYPE"
.LASF411:
	.string	"NOTE_INSN_EH_REGION_BEG"
.LASF813:
	.string	"profile_label_no"
.LASF338:
	.string	"rtstr"
.LASF938:
	.string	"itk_unsigned_char"
.LASF489:
	.string	"WITH_CLEANUP_EXPR"
.LASF479:
	.string	"VTABLE_REF"
.LASF1384:
	.string	"flag_renumber_insns"
.LASF398:
	.string	"NOTE_INSN_DELETED"
.LASF637:
	.string	"BUILT_IN_AGGREGATE_INCOMING_ADDRESS"
.LASF111:
	.string	"_unused2"
.LASF264:
	.string	"UMOD"
.LASF318:
	.string	"min_align"
.LASF566:
	.string	"POSTINCREMENT_EXPR"
.LASF1152:
	.string	"gen_lowpart_common"
.LASF587:
	.string	"BUILT_IN_FABSF"
.LASF502:
	.string	"FLOOR_MOD_EXPR"
.LASF97:
	.string	"_fileno"
.LASF993:
	.string	"varray_data_tag"
.LASF1202:
	.string	"field"
.LASF35:
	.string	"AD_REGS"
.LASF346:
	.string	"first"
.LASF930:
	.string	"TI_V2SI_TYPE"
.LASF807:
	.string	"inlinable"
.LASF839:
	.string	"uses_const_pool"
.LASF1302:
	.string	"emit_line_note_force"
.LASF1318:
	.string	"clear_emit_caches"
.LASF891:
	.string	"TI_UINTSI_TYPE"
.LASF305:
	.string	"CONSTANT_P_RTX"
.LASF738:
	.string	"tree_type"
.LASF519:
	.string	"RROTATE_EXPR"
.LASF1053:
	.string	"gcc_debug_hooks"
.LASF555:
	.string	"ADDR_EXPR"
.LASF961:
	.string	"next"
.LASF1306:
	.string	"classify_insn"
.LASF26:
	.string	"block"
.LASF948:
	.string	"_Bool"
.LASF1332:
	.string	"label_num"
.LASF337:
	.string	"rtuint"
.LASF867:
	.string	"pure_flag"
.LASF1096:
	.string	"get_alias_set"
.LASF341:
	.string	"rt_cselib"
.LASF208:
	.string	"DEFINE_PEEPHOLE2"
.LASF12:
	.string	"rtvec_def"
.LASF812:
	.string	"inl_max_label_num"
.LASF1140:
	.string	"new1"
.LASF1141:
	.string	"new2"
.LASF544:
	.string	"IN_EXPR"
.LASF268:
	.string	"LSHIFTRT"
.LASF16:
	.string	"common"
.LASF671:
	.string	"BUILT_IN_EH_RETURN"
.LASF202:
	.string	"MATCH_PAR_DUP"
.LASF102:
	.string	"_shortbuf"
.LASF1393:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/403.gcc/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF263:
	.string	"UDIV"
.LASF10:
	.string	"rtvec"
.LASF890:
	.string	"TI_UINTHI_TYPE"
.LASF527:
	.string	"TRUTH_AND_EXPR"
.LASF1210:
	.string	"fndecl"
.LASF829:
	.string	"contains_functions"
.LASF610:
	.string	"BUILT_IN_STRCPY"
.LASF1380:
	.string	"global_trees"
.LASF681:
	.string	"side_effects_flag"
.LASF1395:
	.string	"done"
.LASF1182:
	.string	"off_tree"
.LASF196:
	.string	"MATCH_OPERAND"
.LASF910:
	.string	"TI_VOID_TYPE"
.LASF177:
	.string	"CCFPmode"
.LASF673:
	.string	"BUILT_IN_VARARGS_START"
.LASF1196:
	.string	"adjust_automodify_address_1"
.LASF715:
	.string	"imag"
.LASF1217:
	.string	"orig"
.LASF118:
	.string	"reg_class"
.LASF571:
	.string	"LABEL_EXPR"
.LASF285:
	.string	"UNLE"
.LASF39:
	.string	"LEGACY_REGS"
.LASF1145:
	.string	"max_label_num"
.LASF323:
	.string	"max_after_base"
.LASF714:
	.string	"real"
.LASF1022:
	.string	"hashval_t"
.LASF897:
	.string	"TI_NULL_POINTER"
.LASF286:
	.string	"UNLT"
.LASF1149:
	.string	"byte_offset"
.LASF451:
	.string	"FILE_TYPE"
.LASF736:
	.string	"fragment_chain"
.LASF1075:
	.string	"lang_hooks_for_tree_inlining"
.LASF710:
	.string	"tree_string"
.LASF535:
	.string	"EQ_EXPR"
.LASF744:
	.string	"no_force_blk_flag"
.LASF840:
	.string	"uses_pic_offset_table"
.LASF1379:
	.string	"dconstm1"
.LASF735:
	.string	"fragment_origin"
.LASF988:
	.string	"initial_value_struct"
.LASF926:
	.string	"TI_V4SI_TYPE"
.LASF446:
	.string	"CHAR_TYPE"
.LASF650:
	.string	"BUILT_IN_FWRITE"
.LASF1051:
	.string	"probability"
.LASF67:
	.string	"overflow_arg_area"
.LASF1308:
	.string	"start_sequence_for_rtl_expr"
.LASF149:
	.string	"CTImode"
.LASF83:
	.string	"_flags"
.LASF529:
	.string	"TRUTH_XOR_EXPR"
.LASF1268:
	.string	"reorder_insns_with_line_notes"
.LASF858:
	.string	"static_dtor_flag"
.LASF711:
	.string	"length"
.LASF491:
	.string	"PLACEHOLDER_EXPR"
.LASF1343:
	.string	"orig_asm_operands_vector"
.LASF764:
	.string	"lang_type"
.LASF68:
	.string	"reg_save_area"
.LASF524:
	.string	"BIT_NOT_EXPR"
.LASF866:
	.string	"built_in_class"
.LASF78:
	.string	"__off_t"
.LASF692:
	.string	"public_flag"
.LASF510:
	.string	"FLOAT_EXPR"
.LASF1161:
	.string	"gen_highpart_mode"
.LASF849:
	.string	"inline_flag"
.LASF1363:
	.string	"const_true_rtx"
.LASF900:
	.string	"TI_BITSIZE_ZERO"
.LASF1325:
	.string	"units"
.LASF469:
	.string	"PARM_DECL"
.LASF147:
	.string	"CSImode"
.LASF41:
	.string	"FP_TOP_REG"
.LASF629:
	.string	"BUILT_IN_COSL"
.LASF307:
	.string	"VEC_MERGE"
.LASF810:
	.string	"original_decl_initial"
.LASF1104:
	.string	"print_type"
.LASF560:
	.string	"CONJ_EXPR"
.LASF103:
	.string	"_lock"
.LASF995:
	.string	"uhint"
.LASF240:
	.string	"RETURN"
.LASF600:
	.string	"BUILT_IN_BZERO"
.LASF576:
	.string	"LABELED_BLOCK_EXPR"
.LASF996:
	.string	"generic"
.LASF633:
	.string	"BUILT_IN_ARGS_INFO"
.LASF14:
	.string	"elem"
.LASF1255:
	.string	"pattern"
.LASF183:
	.string	"MODE_FLOAT"
.LASF606:
	.string	"BUILT_IN_MEMCMP"
.LASF648:
	.string	"BUILT_IN_FPUTC"
.LASF640:
	.string	"BUILT_IN_RETURN"
.LASF688:
	.string	"unused_0"
.LASF704:
	.string	"unused_1"
.LASF1209:
	.string	"unshare_all_rtl"
.LASF888:
	.string	"TI_INTTI_TYPE"
.LASF649:
	.string	"BUILT_IN_FPUTS"
.LASF1337:
	.string	"mem_attrs_htab"
.LASF577:
	.string	"EXIT_BLOCK_EXPR"
.LASF327:
	.string	"alias"
.LASF1030:
	.string	"entries"
.LASF324:
	.string	"offset_unsigned"
.LASF1071:
	.string	"deferred_inline_function"
.LASF153:
	.string	"V2SImode"
.LASF655:
	.string	"BUILT_IN_FPUTC_UNLOCKED"
.LASF836:
	.string	"stdarg"
.LASF797:
	.string	"x_trampoline_list"
.LASF448:
	.string	"OFFSET_TYPE"
.LASF907:
	.string	"TI_FLOAT_TYPE"
.LASF19:
	.string	"vector"
.LASF36:
	.string	"Q_REGS"
.LASF575:
	.string	"LOOP_EXPR"
.LASF227:
	.string	"CODE_LABEL"
.LASF656:
	.string	"BUILT_IN_FPUTS_UNLOCKED"
.LASF148:
	.string	"CDImode"
.LASF233:
	.string	"UNSPEC"
.LASF567:
	.string	"VA_ARG_EXPR"
.LASF622:
	.string	"BUILT_IN_SIN"
.LASF226:
	.string	"BARRIER"
.LASF913:
	.string	"TI_PTRDIFF_TYPE"
.LASF404:
	.string	"NOTE_INSN_LOOP_VTOP"
.LASF229:
	.string	"COND_EXEC"
.LASF1291:
	.string	"emit_insns"
.LASF243:
	.string	"CONST_INT"
.LASF239:
	.string	"CALL"
.LASF61:
	.string	"maybe_vaarg"
.LASF818:
	.string	"epilogue_delay_list"
.LASF869:
	.string	"uninlinable"
.LASF484:
	.string	"TARGET_EXPR"
.LASF1063:
	.string	"source_line"
.LASF155:
	.string	"V4QImode"
.LASF218:
	.string	"ATTR"
.LASF669:
	.string	"BUILT_IN_FROB_RETURN_ADDR"
.LASF361:
	.string	"count"
.LASF339:
	.string	"rttype"
.LASF1143:
	.string	"mark_reg_pointer"
.LASF1358:
	.string	"rtx_format"
.LASF1223:
	.string	"reset_used_flags"
.LASF1292:
	.string	"emit_insns_before"
.LASF30:
	.string	"DREG"
.LASF725:
	.string	"complexity"
.LASF351:
	.string	"head_tree"
.LASF48:
	.string	"FLOAT_SSE_REGS"
.LASF428:
	.string	"GR_VIRTUAL_STACK_ARGS"
.LASF739:
	.string	"values"
.LASF706:
	.string	"tree_int_cst"
.LASF1353:
	.string	"class_narrowest_mode"
.LASF1369:
	.string	"static_chain_rtx"
.LASF1083:
	.string	"anon_aggr_type_p"
.LASF625:
	.string	"BUILT_IN_SINF"
.LASF154:
	.string	"V2DImode"
.LASF787:
	.string	"x_return_label"
.LASF628:
	.string	"BUILT_IN_SINL"
.LASF685:
	.string	"readonly_flag"
.LASF505:
	.string	"EXACT_DIV_EXPR"
.LASF1021:
	.string	"varray_type"
.LASF332:
	.string	"mem_attrs"
.LASF89:
	.string	"_IO_write_end"
.LASF375:
	.string	"REG_UNUSED"
.LASF211:
	.string	"DEFINE_DELAY"
.LASF261:
	.string	"MINUS"
.LASF794:
	.string	"x_clobber_return_insn"
.LASF1230:
	.string	"get_last_insn_anywhere"
.LASF33:
	.string	"SIREG"
.LASF1283:
	.string	"emit_jump_insn_after"
.LASF542:
	.string	"UNGE_EXPR"
.LASF64:
	.string	"__va_list_tag"
.LASF605:
	.string	"BUILT_IN_MEMCPY"
.LASF472:
	.string	"NAMESPACE_DECL"
.LASF1050:
	.string	"insns"
.LASF251:
	.string	"STRICT_LOW_PART"
.LASF976:
	.string	"x_regno_reg_rtx"
.LASF193:
	.string	"INCLUDE"
.LASF1271:
	.string	"remove_unnecessary_notes"
.LASF424:
	.string	"GR_FRAME_POINTER"
.LASF680:
	.string	"chain"
.LASF359:
	.string	"index"
.LASF1008:
	.string	"freq"
.LASF289:
	.string	"ZERO_EXTEND"
.LASF634:
	.string	"BUILT_IN_CONSTANT_P"
.LASF292:
	.string	"FLOAT_TRUNCATE"
.LASF983:
	.string	"x_forced_labels"
.LASF660:
	.string	"BUILT_IN_ISGREATEREQUAL"
.LASF666:
	.string	"BUILT_IN_DWARF_CFA"
.LASF457:
	.string	"FUNCTION_TYPE"
.LASF778:
	.string	"internal_arg_pointer"
.LASF843:
	.string	"tree_decl"
.LASF65:
	.string	"gp_offset"
.LASF421:
	.string	"GR_PC"
.LASF32:
	.string	"BREG"
.LASF164:
	.string	"V2SFmode"
.LASF1015:
	.string	"varray_data"
.LASF990:
	.string	"machine_function"
.LASF293:
	.string	"FLOAT"
.LASF387:
	.string	"REG_EH_CONTEXT"
.LASF119:
	.string	"machine_mode"
.LASF456:
	.string	"QUAL_UNION_TYPE"
.LASF1076:
	.string	"walk_subtrees"
.LASF344:
	.string	"rtmem"
.LASF806:
	.string	"fixup_var_refs_queue"
.LASF302:
	.string	"RANGE_REG"
.LASF342:
	.string	"rtbit"
.LASF572:
	.string	"GOTO_EXPR"
.LASF1040:
	.string	"bitmap_element_def"
.LASF3:
	.string	"call"
.LASF126:
	.string	"TImode"
.LASF278:
	.string	"PRE_MODIFY"
.LASF483:
	.string	"INIT_EXPR"
.LASF821:
	.string	"returns_pointer"
.LASF1272:
	.string	"block_stack"
.LASF518:
	.string	"LROTATE_EXPR"
.LASF707:
	.string	"realvaluetype"
.LASF1323:
	.string	"mark_emit_status"
.LASF291:
	.string	"FLOAT_EXTEND"
.LASF603:
	.string	"BUILT_IN_INDEX"
.LASF477:
	.string	"ARRAY_REF"
.LASF549:
	.string	"NOP_EXPR"
.LASF767:
	.string	"stmt"
.LASF6:
	.string	"in_struct"
.LASF1346:
	.string	"copy_asm_constraints_vector"
.LASF399:
	.string	"NOTE_INSN_BLOCK_BEG"
.LASF124:
	.string	"SImode"
.LASF235:
	.string	"ADDR_VEC"
.LASF1082:
	.string	"copy_res_decl_for_inlining"
.LASF986:
	.string	"stmt_status"
.LASF1125:
	.string	"gen_rtx_SUBREG"
.LASF165:
	.string	"V2DFmode"
.LASF503:
	.string	"ROUND_MOD_EXPR"
.LASF1345:
	.string	"orig_asm_constraints_vector"
.LASF317:
	.string	"LAST_AND_UNUSED_RTX_CODE"
.LASF1080:
	.string	"tree_chain_matters_p"
.LASF694:
	.string	"protected_flag"
.LASF1385:
	.string	"flag_non_call_exceptions"
.LASF24:
	.string	"type"
.LASF60:
	.string	"sse_regno"
.LASF348:
	.string	"indx"
.LASF1340:
	.string	"copy_insn_scratch_in"
.LASF814:
	.string	"machine"
.LASF499:
	.string	"ROUND_DIV_EXPR"
.LASF1344:
	.string	"copy_asm_operands_vector"
.LASF1070:
	.string	"global_decl"
.LASF254:
	.string	"SYMBOL_REF"
.LASF397:
	.string	"NOTE_INSN_BIAS"
.LASF1065:
	.string	"end_prologue"
.LASF1355:
	.string	"word_mode"
.LASF152:
	.string	"V2HImode"
.LASF881:
	.string	"lang_decl"
.LASF514:
	.string	"ABS_EXPR"
.LASF419:
	.string	"NOTE_INSN_MAX"
.LASF981:
	.string	"x_saveregs_value"
.LASF1122:
	.string	"gen_rtx_REG"
.LASF730:
	.string	"block_num"
.LASF207:
	.string	"DEFINE_INSN_AND_SPLIT"
.LASF1159:
	.string	"gen_lowpart"
.LASF259:
	.string	"COMPARE"
.LASF1342:
	.string	"copy_insn_n_scratches"
.LASF287:
	.string	"LTGT"
.LASF724:
	.string	"tree_exp"
.LASF1147:
	.string	"subreg_hard_regno"
.LASF1226:
	.string	"temp"
.LASF960:
	.string	"unsignedp"
.LASF1321:
	.string	"init_emit"
.LASF299:
	.string	"HIGH"
.LASF256:
	.string	"QUEUED"
.LASF37:
	.string	"NON_Q_REGS"
.LASF1103:
	.string	"print_decl"
.LASF1:
	.string	"mode"
.LASF125:
	.string	"DImode"
.LASF526:
	.string	"TRUTH_ORIF_EXPR"
.LASF583:
	.string	"BUILT_IN_ALLOCA"
.LASF1381:
	.string	"sizetype_tab"
.LASF1151:
	.string	"final_regno"
.LASF992:
	.string	"const_equiv_data"
.LASF780:
	.string	"hard_reg_initial_vals"
.LASF63:
	.string	"__gnuc_va_list"
.LASF1081:
	.string	"auto_var_in_fn_p"
.LASF979:
	.string	"x_inhibit_defer_pop"
.LASF944:
	.string	"itk_unsigned_long"
.LASF96:
	.string	"_chain"
.LASF1135:
	.string	"gen_reg_rtx"
.LASF1330:
	.string	"restore_line_number_status"
.LASF1251:
	.string	"has_barrier"
.LASF1163:
	.string	"innermode"
.LASF277:
	.string	"POST_INC"
.LASF488:
	.string	"METHOD_CALL_EXPR"
.LASF893:
	.string	"TI_UINTTI_TYPE"
.LASF1299:
	.string	"barrier"
.LASF857:
	.string	"static_ctor_flag"
.LASF138:
	.string	"TFmode"
.LASF1307:
	.string	"start_sequence"
.LASF454:
	.string	"RECORD_TYPE"
.LASF74:
	.string	"unsigned char"
.LASF989:
	.string	"temp_slot"
.LASF42:
	.string	"FP_SECOND_REG"
.LASF686:
	.string	"unsigned_flag"
.LASF1092:
	.string	"init_options"
.LASF1173:
	.string	"reverse_comparison"
.LASF871:
	.string	"arguments"
.LASF1026:
	.string	"htab"
.LASF779:
	.string	"cannot_inline"
.LASF1350:
	.string	"mode_bitsize"
.LASF1394:
	.string	"_IO_lock_t"
.LASF1351:
	.string	"inner_mode_array"
.LASF912:
	.string	"TI_CONST_PTR_TYPE"
.LASF762:
	.string	"lang_specific"
.LASF945:
	.string	"itk_long_long"
.LASF1031:
	.string	"n_elements"
.LASF1012:
	.string	"basic_block"
.LASF121:
	.string	"BImode"
.LASF275:
	.string	"PRE_INC"
.LASF374:
	.string	"REG_NO_CONFLICT"
.LASF135:
	.string	"SFmode"
.LASF768:
	.string	"emit"
.LASF747:
	.string	"packed_flag"
.LASF520:
	.string	"BIT_IOR_EXPR"
.LASF584:
	.string	"BUILT_IN_ABS"
.LASF466:
	.string	"CONST_DECL"
.LASF709:
	.string	"tree_real_cst"
.LASF471:
	.string	"FIELD_DECL"
.LASF1203:
	.string	"gen_label_rtx"
.LASF224:
	.string	"JUMP_INSN"
.LASF356:
	.string	"cond_local_set"
.LASF940:
	.string	"itk_unsigned_short"
.LASF1052:
	.string	"edge"
.LASF594:
	.string	"BUILT_IN_CREAL"
.LASF1208:
	.string	"free_emit_status"
.LASF1390:
	.string	"debug_hooks"
.LASF187:
	.string	"MODE_COMPLEX_FLOAT"
.LASF1162:
	.string	"outermode"
.LASF1300:
	.string	"emit_line_note"
.LASF1195:
	.string	"memalign"
.LASF343:
	.string	"rttree"
.LASF848:
	.string	"regdecl_flag"
.LASF590:
	.string	"BUILT_IN_IMAXABS"
.LASF445:
	.string	"BOOLEAN_TYPE"
.LASF1303:
	.string	"set_unique_reg_note"
.LASF599:
	.string	"BUILT_IN_CIMAGL"
.LASF1004:
	.string	"last_uid"
.LASF396:
	.string	"insn_note"
.LASF415:
	.string	"NOTE_INSN_RANGE_END"
.LASF206:
	.string	"DEFINE_SPLIT"
.LASF828:
	.string	"has_nonlocal_goto"
.LASF842:
	.string	"arg_pointer_save_area_init"
.LASF659:
	.string	"BUILT_IN_ISGREATER"
.LASF1319:
	.string	"copy_insn_1"
.LASF643:
	.string	"BUILT_IN_TRAP"
.LASF245:
	.string	"CONST_VECTOR"
.LASF552:
	.string	"SAVE_EXPR"
.LASF1113:
	.string	"get_mem_attrs"
.LASF203:
	.string	"MATCH_INSN"
.LASF1214:
	.string	"unshare_all_decls"
.LASF705:
	.string	"high"
.LASF1054:
	.string	"init"
.LASF929:
	.string	"TI_V4HI_TYPE"
.LASF788:
	.string	"x_save_expr_regs"
.LASF1060:
	.string	"begin_block"
.LASF136:
	.string	"DFmode"
.LASF44:
	.string	"SSE_REGS"
.LASF1045:
	.string	"gcov_type"
.LASF72:
	.string	"size_t"
.LASF237:
	.string	"PREFETCH"
.LASF53:
	.string	"LIM_REG_CLASSES"
.LASF52:
	.string	"ALL_REGS"
.LASF771:
	.string	"pops_args"
.LASF130:
	.string	"PSImode"
.LASF790:
	.string	"x_rtl_expr_chain"
.LASF609:
	.string	"BUILT_IN_STRNCAT"
.LASF1309:
	.string	"push_to_sequence"
.LASF301:
	.string	"RANGE_INFO"
.LASF1333:
	.string	"last_label_num"
.LASF1313:
	.string	"end_sequence"
.LASF951:
	.string	"SSIZETYPE"
.LASF1091:
	.string	"identifier_size"
.LASF1036:
	.string	"htab_t"
.LASF334:
	.string	"rtunion_def"
.LASF1237:
	.string	"next_nonnote_insn"
.LASF464:
	.string	"FUNCTION_DECL"
.LASF662:
	.string	"BUILT_IN_ISLESSEQUAL"
.LASF217:
	.string	"DEFINE_ATTR"
.LASF952:
	.string	"USIZETYPE"
.LASF485:
	.string	"COND_EXPR"
.LASF219:
	.string	"SET_ATTR"
.LASF144:
	.string	"TCmode"
.LASF782:
	.string	"x_nonlocal_labels"
.LASF1274:
	.string	"emit_insn_before"
.LASF506:
	.string	"FIX_TRUNC_EXPR"
.LASF294:
	.string	"UNSIGNED_FLOAT"
.LASF386:
	.string	"REG_FRAME_RELATED_EXPR"
.LASF1114:
	.string	"attrs"
.LASF763:
	.string	"cselib_val_struct"
.LASF418:
	.string	"NOTE_INSN_EXPECTED_VALUE"
.LASF88:
	.string	"_IO_write_ptr"
.LASF1360:
	.string	"generating_concat_p"
.LASF1280:
	.string	"subtype"
.LASF1376:
	.string	"dconst0"
.LASF1339:
	.string	"free_insn"
.LASF1285:
	.string	"emit_label_after"
.LASF442:
	.string	"COMPLEX_TYPE"
.LASF266:
	.string	"ROTATE"
.LASF644:
	.string	"BUILT_IN_PREFETCH"
.LASF1066:
	.string	"end_epilogue"
.LASF354:
	.string	"succ"
.LASF516:
	.string	"LSHIFT_EXPR"
.LASF1007:
	.string	"refs"
.LASF290:
	.string	"TRUNCATE"
.LASF1315:
	.string	"in_sequence_p"
.LASF379:
	.string	"REG_DEP_ANTI"
.LASF141:
	.string	"SCmode"
.LASF1225:
	.string	"other"
.LASF1357:
	.string	"rtx_length"
.LASF1365:
	.string	"global_rtl"
.LASF1181:
	.string	"objectp"
.LASF429:
	.string	"GR_VIRTUAL_STACK_DYNAMIC"
.LASF935:
	.string	"integer_type_kind"
.LASF70:
	.string	"va_list"
.LASF1264:
	.string	"from"
.LASF400:
	.string	"NOTE_INSN_BLOCK_END"
.LASF459:
	.string	"INTEGER_CST"
.LASF467:
	.string	"TYPE_DECL"
.LASF904:
	.string	"TI_COMPLEX_FLOAT_TYPE"
.LASF998:
	.string	"bitmap"
.LASF811:
	.string	"inl_last_parm_insn"
.LASF1215:
	.string	"reset_used_decls"
.LASF409:
	.string	"NOTE_INSN_DELETED_LABEL"
.LASF1359:
	.string	"rtx_class"
.LASF1139:
	.string	"old_size"
.LASF1289:
	.string	"line"
.LASF612:
	.string	"BUILT_IN_STRCMP"
.LASF758:
	.string	"main_variant"
.LASF363:
	.string	"flags"
.LASF563:
	.string	"PREDECREMENT_EXPR"
.LASF1185:
	.string	"set_mem_expr"
.LASF896:
	.string	"TI_INTEGER_MINUS_ONE"
.LASF909:
	.string	"TI_LONG_DOUBLE_TYPE"
.LASF194:
	.string	"EXPR_LIST"
.LASF221:
	.string	"EQ_ATTR"
.LASF1328:
	.string	"double_mode"
.LASF691:
	.string	"static_flag"
.LASF906:
	.string	"TI_COMPLEX_LONG_DOUBLE_TYPE"
.LASF174:
	.string	"CCGOCmode"
.LASF1164:
	.string	"subreg_lowpart_offset"
.LASF252:
	.string	"CONCAT"
.LASF620:
	.string	"BUILT_IN_STRRCHR"
.LASF1383:
	.string	"flag_pic"
.LASF1047:
	.string	"pred_next"
.LASF925:
	.string	"TI_V16SF_TYPE"
.LASF320:
	.string	"min_after_vec"
.LASF905:
	.string	"TI_COMPLEX_DOUBLE_TYPE"
.LASF81:
	.string	"FILE"
.LASF258:
	.string	"COND"
.LASF443:
	.string	"VECTOR_TYPE"
.LASF184:
	.string	"MODE_PARTIAL_INT"
.LASF798:
	.string	"x_parm_birth_insn"
.LASF1250:
	.string	"after"
.LASF800:
	.string	"x_max_parm_reg"
.LASF1168:
	.string	"constant_subword"
.LASF601:
	.string	"BUILT_IN_BCMP"
.LASF15:
	.string	"tree"
.LASF761:
	.string	"alias_set"
.LASF142:
	.string	"DCmode"
.LASF1093:
	.string	"decode_option"
.LASF1057:
	.string	"undef"
.LASF209:
	.string	"DEFINE_COMBINE"
.LASF1391:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF523:
	.string	"BIT_ANDTC_EXPR"
.LASF911:
	.string	"TI_PTR_TYPE"
.LASF792:
	.string	"x_tail_recursion_reentry"
.LASF22:
	.string	"identifier"
.LASF267:
	.string	"ASHIFTRT"
.LASF1396:
	.string	"force_next_line_note"
.LASF1368:
	.string	"struct_value_incoming_rtx"
.LASF1067:
	.string	"begin_function"
.LASF1179:
	.string	"placeholder_ptr"
.LASF172:
	.string	"CCmode"
.LASF672:
	.string	"BUILT_IN_EH_RETURN_DATA_REGNO"
.LASF664:
	.string	"BUILT_IN_ISUNORDERED"
.LASF729:
	.string	"abstract_flag"
.LASF1238:
	.string	"prev_nonnote_insn"
.LASF352:
	.string	"end_tree"
.LASF43:
	.string	"FLOAT_REGS"
.LASF1336:
	.string	"const_int_htab"
.LASF402:
	.string	"NOTE_INSN_LOOP_END"
.LASF170:
	.string	"V16SFmode"
.LASF1366:
	.string	"pic_offset_table_rtx"
.LASF1244:
	.string	"next_label"
.LASF1229:
	.string	"set_last_insn"
.LASF873:
	.string	"initial"
.LASF525:
	.string	"TRUTH_ANDIF_EXPR"
.LASF1329:
	.string	"force_line_numbers"
.LASF416:
	.string	"NOTE_INSN_LIVE"
.LASF214:
	.string	"DEFINE_COND_EXEC"
.LASF92:
	.string	"_IO_save_base"
.LASF950:
	.string	"SIZETYPE"
.LASF1124:
	.string	"addr"
.LASF1169:
	.string	"size_ratio"
.LASF957:
	.string	"var_refs_queue"
.LASF1228:
	.string	"get_last_insn"
.LASF980:
	.string	"x_stack_pointer_delta"
.LASF530:
	.string	"TRUTH_NOT_EXPR"
.LASF210:
	.string	"DEFINE_EXPAND"
.LASF511:
	.string	"NEGATE_EXPR"
.LASF831:
	.string	"is_thunk"
.LASF1018:
	.string	"elements_used"
.LASF1128:
	.string	"gen_rtx"
.LASF161:
	.string	"V8SImode"
.LASF784:
	.string	"x_nonlocal_goto_handler_labels"
.LASF1248:
	.string	"trial"
.LASF223:
	.string	"INSN"
.LASF336:
	.string	"rtint"
.LASF674:
	.string	"BUILT_IN_STDARG_START"
.LASF1295:
	.string	"emit_jump_insn"
.LASF631:
	.string	"BUILT_IN_CLASSIFY_TYPE"
.LASF887:
	.string	"TI_INTDI_TYPE"
.LASF1253:
	.string	"njumps"
.LASF253:
	.string	"LABEL_REF"
.LASF892:
	.string	"TI_UINTDI_TYPE"
.LASF378:
	.string	"REG_LABEL"
.LASF1316:
	.string	"gen_sequence"
.LASF902:
	.string	"TI_BITSIZE_UNIT"
.LASF376:
	.string	"REG_CC_SETTER"
.LASF1014:
	.string	"elt_list"
.LASF1305:
	.string	"datum"
.LASF1262:
	.string	"remove_insn"
.LASF366:
	.string	"REG_DEAD"
.LASF1288:
	.string	"file"
.LASF1265:
	.string	"reorder_insns_nobb"
.LASF406:
	.string	"NOTE_INSN_FUNCTION_END"
.LASF106:
	.string	"__pad2"
.LASF546:
	.string	"CARD_EXPR"
.LASF1348:
	.string	"mode_size"
.LASF369:
	.string	"REG_EQUAL"
.LASF0:
	.string	"code"
.LASF1044:
	.string	"regset"
.LASF17:
	.string	"int_cst"
.LASF1236:
	.string	"previous_insn"
.LASF908:
	.string	"TI_DOUBLE_TYPE"
.LASF1293:
	.string	"emit_insns_after"
.LASF642:
	.string	"BUILT_IN_LONGJMP"
.LASF716:
	.string	"tree_vector"
.LASF450:
	.string	"METHOD_TYPE"
.LASF173:
	.string	"CCGCmode"
.LASF1206:
	.string	"set_new_last_label_num"
.LASF358:
	.string	"global_live_at_end"
.LASF25:
	.string	"list"
.LASF548:
	.string	"CONVERT_EXPR"
.LASF1375:
	.string	"tree_code_type"
.LASF1192:
	.string	"adjust_address_1"
.LASF249:
	.string	"SCRATCH"
.LASF159:
	.string	"V8QImode"
.LASF1117:
	.string	"gen_rtx_CONST_INT"
.LASF500:
	.string	"TRUNC_MOD_EXPR"
.LASF162:
	.string	"V8DImode"
.LASF190:
	.string	"MAX_MODE_CLASS"
.LASF1373:
	.string	"reload_in_progress"
.LASF946:
	.string	"itk_unsigned_long_long"
.LASF1371:
	.string	"return_address_pointer_rtx"
.LASF1086:
	.string	"convert_parm_for_inlining"
.LASF496:
	.string	"TRUNC_DIV_EXPR"
.LASF288:
	.string	"SIGN_EXTEND"
.LASF1356:
	.string	"ptr_mode"
.LASF823:
	.string	"calls_setjmp"
.LASF553:
	.string	"UNSAVE_EXPR"
.LASF1186:
	.string	"set_mem_offset"
.LASF495:
	.string	"MULT_EXPR"
.LASF722:
	.string	"value"
.LASF1362:
	.string	"const_int_rtx"
.LASF310:
	.string	"VEC_DUPLICATE"
.LASF534:
	.string	"GE_EXPR"
.LASF785:
	.string	"x_nonlocal_goto_stack_level"
.LASF434:
	.string	"ERROR_MARK"
.LASF113:
	.string	"_next"
.LASF616:
	.string	"BUILT_IN_STRPBRK"
.LASF1233:
	.string	"renumber_insns"
.LASF556:
	.string	"REFERENCE_EXPR"
.LASF328:
	.string	"expr"
.LASF501:
	.string	"CEIL_MOD_EXPR"
.LASF412:
	.string	"NOTE_INSN_EH_REGION_END"
.LASF737:
	.string	"address"
.LASF1017:
	.string	"num_elements"
.LASF1220:
	.string	"format_ptr"
.LASF696:
	.string	"deprecated_flag"
.LASF645:
	.string	"BUILT_IN_PUTCHAR"
.LASF783:
	.string	"x_nonlocal_goto_handler_slots"
.LASF168:
	.string	"V8SFmode"
.LASF497:
	.string	"CEIL_DIV_EXPR"
.LASF1174:
	.string	"insn"
.LASF635:
	.string	"BUILT_IN_FRAME_ADDRESS"
.LASF34:
	.string	"DIREG"
.LASF377:
	.string	"REG_CC_USER"
.LASF1227:
	.string	"get_insns"
.LASF1115:
	.string	"slot"
.LASF232:
	.string	"ASM_OPERANDS"
.LASF876:
	.string	"live_range_rtl"
.LASF803:
	.string	"x_temp_slot_level"
.LASF755:
	.string	"minval"
.LASF1296:
	.string	"emit_call_insn"
.LASF693:
	.string	"private_flag"
.LASF801:
	.string	"x_parm_reg_stack_loc"
.LASF176:
	.string	"CCZmode"
.LASF403:
	.string	"NOTE_INSN_LOOP_CONT"
.LASF38:
	.string	"INDEX_REGS"
.LASF498:
	.string	"FLOOR_DIV_EXPR"
.LASF436:
	.string	"TREE_LIST"
.LASF1261:
	.string	"add_insn_before"
.LASF547:
	.string	"RANGE_EXPR"
.LASF1301:
	.string	"emit_note"
.LASF1270:
	.string	"after_line"
.LASF884:
	.string	"TI_INTQI_TYPE"
.LASF734:
	.string	"abstract_origin"
.LASF463:
	.string	"STRING_CST"
.LASF531:
	.string	"LT_EXPR"
.LASF769:
	.string	"varasm"
.LASF392:
	.string	"REG_NON_LOCAL_GOTO"
.LASF1059:
	.string	"end_source_file"
.LASF236:
	.string	"ADDR_DIFF_VEC"
.LASF521:
	.string	"BIT_XOR_EXPR"
.LASF579:
	.string	"SWITCH_EXPR"
.LASF528:
	.string	"TRUTH_OR_EXPR"
.LASF298:
	.string	"ZERO_EXTRACT"
.LASF994:
	.string	"hint"
.LASF231:
	.string	"ASM_INPUT"
.LASF570:
	.string	"GOTO_SUBROUTINE_EXPR"
.LASF718:
	.string	"ht_identifier"
.LASF281:
	.string	"ORDERED"
.LASF169:
	.string	"V8DFmode"
.LASF959:
	.string	"promoted_mode"
.LASF874:
	.string	"assembler_name"
.LASF1028:
	.string	"eq_f"
.LASF1246:
	.string	"mark_label_nuses"
.LASF512:
	.string	"MIN_EXPR"
.LASF917:
	.string	"TI_UV4SI_TYPE"
.LASF1009:
	.string	"deaths"
.LASF1089:
	.string	"type_quals"
.LASF745:
	.string	"needs_constructing_flag"
.LASF295:
	.string	"UNSIGNED_FIX"
.LASF507:
	.string	"FIX_CEIL_EXPR"
.LASF820:
	.string	"returns_pcc_struct"
.LASF613:
	.string	"BUILT_IN_STRNCMP"
.LASF1180:
	.string	"set_mem_attributes"
.LASF1247:
	.string	"try_split"
.LASF713:
	.string	"tree_complex"
.LASF58:
	.string	"sse_words"
.LASF863:
	.string	"comdat_flag"
.LASF1136:
	.string	"realpart"
.LASF40:
	.string	"GENERAL_REGS"
.LASF532:
	.string	"LE_EXPR"
.LASF1367:
	.string	"struct_value_rtx"
.LASF865:
	.string	"no_limit_stack"
.LASF872:
	.string	"result"
.LASF1331:
	.string	"old_value"
.LASF754:
	.string	"name"
.LASF195:
	.string	"INSN_LIST"
.LASF114:
	.string	"_sbuf"
.LASF303:
	.string	"RANGE_VAR"
.LASF1013:
	.string	"changes_mode"
.LASF94:
	.string	"_IO_save_end"
.LASF182:
	.string	"MODE_INT"
.LASF1019:
	.string	"element_size"
.LASF18:
	.string	"real_cst"
.LASF513:
	.string	"MAX_EXPR"
.LASF775:
	.string	"arg_offset_rtx"
.LASF2:
	.string	"jump"
.LASF727:
	.string	"tree_block"
.LASF57:
	.string	"regno"
.LASF898:
	.string	"TI_SIZE_ZERO"
.LASF977:
	.string	"expr_status"
.LASF1269:
	.string	"from_line"
.LASF732:
	.string	"subblocks"
.LASF1349:
	.string	"mode_unit_size"
.LASF1035:
	.string	"return_allocation_failure"
.LASF827:
	.string	"has_nonlocal_label"
.LASF939:
	.string	"itk_short"
.LASF66:
	.string	"fp_offset"
.LASF607:
	.string	"BUILT_IN_MEMSET"
.LASF304:
	.string	"RANGE_LIVE"
.LASF978:
	.string	"x_pending_stack_adjust"
.LASF504:
	.string	"RDIV_EXPR"
.LASF772:
	.string	"args_size"
.LASF9:
	.string	"frame_related"
.LASF1387:
	.string	"fixed_regs"
.LASF851:
	.string	"virtual_flag"
.LASF1000:
	.string	"const_equiv"
.LASF749:
	.string	"pointer_depth"
.LASF712:
	.string	"pointer"
.LASF465:
	.string	"LABEL_DECL"
.LASF1155:
	.string	"endian"
.LASF678:
	.string	"END_BUILTINS"
.LASF340:
	.string	"rt_addr_diff_vec_flags"
.LASF953:
	.string	"BITSIZETYPE"
.LASF426:
	.string	"GR_ARG_POINTER"
.LASF1154:
	.string	"xsize"
.LASF517:
	.string	"RSHIFT_EXPR"
.LASF27:
	.string	"sizetype"
.LASF47:
	.string	"FP_SECOND_SSE_REGS"
.LASF1287:
	.string	"emit_line_note_after"
.LASF313:
	.string	"SS_MINUS"
.LASF461:
	.string	"COMPLEX_CST"
.LASF200:
	.string	"MATCH_PARALLEL"
.LASF157:
	.string	"V4SImode"
.LASF5:
	.string	"volatil"
.LASF1167:
	.string	"subreg_lowpart_p"
.LASF1062:
	.string	"ignore_block"
.LASF679:
	.string	"tree_common"
.LASF368:
	.string	"REG_EQUIV"
.LASF1258:
	.string	"add_insn"
.LASF759:
	.string	"binfo"
.LASF901:
	.string	"TI_BITSIZE_ONE"
.LASF1263:
	.string	"delete_insns_since"
.LASF1317:
	.string	"init_virtual_regs"
.LASF75:
	.string	"short unsigned int"
.LASF76:
	.string	"signed char"
.LASF895:
	.string	"TI_INTEGER_ONE"
.LASF199:
	.string	"MATCH_OPERATOR"
.LASF1197:
	.string	"offset_address"
.LASF1106:
	.string	"set_yydebug"
.LASF1213:
	.string	"unshare_all_rtl_1"
.LASF721:
	.string	"purpose"
.LASF1352:
	.string	"mode_wider_mode"
.LASF1211:
	.string	"unshare_all_rtl_again"
.LASF799:
	.string	"x_last_parm_insn"
.LASF885:
	.string	"TI_INTHI_TYPE"
.LASF1016:
	.string	"varray_head_tag"
.LASF347:
	.string	"current"
.LASF751:
	.string	"pointer_to"
.LASF1142:
	.string	"mark_user_reg"
.LASF860:
	.string	"weak_flag"
.LASF877:
	.string	"saved_tree"
.LASF970:
	.string	"x_cur_insn_uid"
.LASF723:
	.string	"tree_vec"
.LASF1290:
	.string	"emit_insn"
.LASF984:
	.string	"x_pending_chain"
.LASF844:
	.string	"filename"
.LASF1116:
	.string	"gen_raw_REG"
.LASF1176:
	.string	"comp"
.LASF315:
	.string	"SS_TRUNCATE"
.LASF565:
	.string	"POSTDECREMENT_EXPR"
.LASF382:
	.string	"REG_EXEC_COUNT"
.LASF653:
	.string	"BUILT_IN_PUTS_UNLOCKED"
.LASF1177:
	.string	"component_ref_for_mem_expr"
.LASF808:
	.string	"no_debugging_symbols"
.LASF657:
	.string	"BUILT_IN_FWRITE_UNLOCKED"
.LASF1364:
	.string	"const_tiny_rtx"
.LASF319:
	.string	"base_after_vec"
.LASF1277:
	.string	"emit_barrier_before"
.LASF204:
	.string	"DEFINE_INSN"
.LASF79:
	.string	"__off64_t"
.LASF1133:
	.string	"gen_rtvec_v"
.LASF934:
	.string	"TI_MAX"
.LASF158:
	.string	"V4DImode"
.LASF360:
	.string	"loop_depth"
.LASF1148:
	.string	"check_mode"
.LASF86:
	.string	"_IO_read_base"
.LASF50:
	.string	"INT_SSE_REGS"
.LASF569:
	.string	"TRY_FINALLY_EXPR"
.LASF104:
	.string	"_offset"
.LASF20:
	.string	"string"
.LASF1074:
	.string	"lang_print_tree_hook"
.LASF427:
	.string	"GR_VIRTUAL_INCOMING_ARGS"
.LASF533:
	.string	"GT_EXPR"
.LASF1137:
	.string	"imagpart"
.LASF972:
	.string	"x_last_filename"
.LASF1311:
	.string	"push_topmost_sequence"
.LASF380:
	.string	"REG_DEP_OUTPUT"
.LASF91:
	.string	"_IO_buf_end"
.LASF1221:
	.string	"copy_rtx_if_shared"
.LASF753:
	.string	"symtab"
.LASF213:
	.string	"DEFINE_ASM_ATTRIBUTES"
.LASF314:
	.string	"US_MINUS"
.LASF919:
	.string	"TI_UV8QI_TYPE"
.LASF777:
	.string	"return_rtx"
.LASF46:
	.string	"FP_TOP_SSE_REGS"
.LASF473:
	.string	"COMPONENT_REF"
.LASF297:
	.string	"SIGN_EXTRACT"
.LASF852:
	.string	"ignored_flag"
.LASF8:
	.string	"integrated"
.LASF1010:
	.string	"live_length"
.LASF494:
	.string	"MINUS_EXPR"
.LASF238:
	.string	"CLOBBER"
.LASF757:
	.string	"next_variant"
.LASF1046:
	.string	"edge_def"
.LASF110:
	.string	"_mode"
.LASF188:
	.string	"MODE_VECTOR_INT"
.LASF87:
	.string	"_IO_write_base"
.LASF131:
	.string	"PDImode"
.LASF1259:
	.string	"add_insn_after"
.LASF384:
	.string	"REG_SAVE_AREA"
.LASF306:
	.string	"CALL_PLACEHOLDER"
.LASF1033:
	.string	"searches"
.LASF766:
	.string	"function"
.LASF617:
	.string	"BUILT_IN_STRSPN"
.LASF166:
	.string	"V4SFmode"
.LASF1257:
	.string	"make_call_insn_raw"
.LASF1127:
	.string	"inmode"
.LASF1087:
	.string	"lang_hooks_for_tree_dump"
.LASF481:
	.string	"COMPOUND_EXPR"
.LASF832:
	.string	"instrument_entry_exit"
.LASF889:
	.string	"TI_UINTQI_TYPE"
.LASF1361:
	.string	"split_branch_probability"
.LASF1205:
	.string	"set_new_first_and_last_label_num"
.LASF795:
	.string	"x_frame_offset"
.LASF636:
	.string	"BUILT_IN_RETURN_ADDRESS"
.LASF740:
	.string	"size_unit"
.LASF652:
	.string	"BUILT_IN_PUTCHAR_UNLOCKED"
.LASF260:
	.string	"PLUS"
.LASF604:
	.string	"BUILT_IN_RINDEX"
.LASF1219:
	.string	"copy"
.LASF1027:
	.string	"hash_f"
.LASF276:
	.string	"POST_DEC"
.LASF1042:
	.string	"bits"
.LASF123:
	.string	"HImode"
.LASF1216:
	.string	"copy_most_rtx"
.LASF364:
	.string	"rtunion"
.LASF405:
	.string	"NOTE_INSN_LOOP_END_TOP_COND"
.LASF186:
	.string	"MODE_COMPLEX_INT"
.LASF985:
	.string	"eh_status"
.LASF581:
	.string	"LAST_AND_UNUSED_TREE_CODE"
.LASF1001:
	.string	"sched_info_tag"
.LASF962:
	.string	"sequence_stack"
.LASF71:
	.string	"long int"
.LASF431:
	.string	"GR_VIRTUAL_CFA"
.LASF447:
	.string	"POINTER_TYPE"
.LASF515:
	.string	"FFS_EXPR"
.LASF370:
	.string	"REG_WAS_0"
.LASF439:
	.string	"VOID_TYPE"
.LASF1110:
	.string	"const_int_htab_eq"
.LASF991:
	.string	"language_function"
.LASF551:
	.string	"VIEW_CONVERT_EXPR"
.LASF883:
	.string	"TI_ERROR_MARK"
.LASF391:
	.string	"REG_NORETURN"
.LASF112:
	.string	"_IO_marker"
.LASF137:
	.string	"XFmode"
.LASF822:
	.string	"needs_context"
.LASF390:
	.string	"REG_MAYBE_DEAD"
.LASF167:
	.string	"V4DFmode"
.LASF1189:
	.string	"validate"
.LASF4:
	.string	"unchanging"
.LASF855:
	.string	"defer_output"
.LASF931:
	.string	"TI_V2SF_TYPE"
.LASF1335:
	.string	"no_line_numbers"
.LASF365:
	.string	"reg_note"
.LASF826:
	.string	"calls_eh_return"
.LASF1073:
	.string	"label"
.LASF805:
	.string	"x_target_temp_slot_level"
.LASF773:
	.string	"pretend_args_size"
.LASF760:
	.string	"context"
.LASF1382:
	.string	"optimize"
.LASF191:
	.string	"rtx_code"
.LASF62:
	.string	"CUMULATIVE_ARGS"
.LASF1171:
	.string	"validate_address"
.LASF492:
	.string	"WITH_RECORD_EXPR"
.LASF963:
	.string	"last"
.LASF882:
	.string	"tree_index"
.LASF835:
	.string	"varargs"
.LASF728:
	.string	"handler_block_flag"
.LASF868:
	.string	"non_addressable"
.LASF588:
	.string	"BUILT_IN_FABSL"
.LASF31:
	.string	"CREG"
.LASF1118:
	.string	"gen_int_mode"
.LASF668:
	.string	"BUILT_IN_INIT_DWARF_REG_SIZES"
.LASF837:
	.string	"x_whole_function_mode_p"
.LASF1190:
	.string	"change_address"
.LASF192:
	.string	"UNKNOWN"
.LASF234:
	.string	"UNSPEC_VOLATILE"
.LASF478:
	.string	"ARRAY_RANGE_REF"
.LASF956:
	.string	"TYPE_KIND_LAST"
.LASF615:
	.string	"BUILT_IN_STRSTR"
.LASF854:
	.string	"common_flag"
.LASF408:
	.string	"NOTE_INSN_EPILOGUE_BEG"
.LASF73:
	.string	"long unsigned int"
.LASF862:
	.string	"no_instrument_function_entry_exit"
.LASF687:
	.string	"asm_written_flag"
.LASF11:
	.string	"rtx_def"
.LASF433:
	.string	"tree_code"
.LASF1354:
	.string	"byte_mode"
.LASF133:
	.string	"HFmode"
.LASF651:
	.string	"BUILT_IN_FPRINTF"
.LASF682:
	.string	"constant_flag"
.LASF623:
	.string	"BUILT_IN_COS"
.LASF241:
	.string	"TRAP_IF"
.LASF1032:
	.string	"n_deleted"
.LASF1204:
	.string	"set_new_first_and_last_insn"
.LASF1310:
	.string	"push_to_full_sequence"
.LASF708:
	.string	"real_extract"
.LASF695:
	.string	"bounded_flag"
.LASF470:
	.string	"RESULT_DECL"
.LASF568:
	.string	"TRY_CATCH_EXPR"
.LASF388:
	.string	"REG_EH_REGION"
.LASF924:
	.string	"TI_V4SF_TYPE"
.LASF720:
	.string	"tree_list"
.LASF371:
	.string	"REG_RETVAL"
.LASF145:
	.string	"CQImode"
.LASF815:
	.string	"stack_alignment_needed"
.LASF1240:
	.string	"prev_real_insn"
.LASF1064:
	.string	"begin_prologue"
.LASF80:
	.string	"char"
.LASF819:
	.string	"returns_struct"
.LASF143:
	.string	"XCmode"
.LASF793:
	.string	"x_arg_pointer_save_area"
.LASF1098:
	.string	"safe_from_p"
.LASF663:
	.string	"BUILT_IN_ISLESSGREATER"
.LASF29:
	.string	"AREG"
.LASF582:
	.string	"built_in_function"
.LASF791:
	.string	"x_tail_recursion_label"
.LASF550:
	.string	"NON_LVALUE_EXPR"
.LASF864:
	.string	"malloc_flag"
.LASF1006:
	.string	"sets"
.LASF90:
	.string	"_IO_buf_base"
.LASF1144:
	.string	"max_reg_num"
.LASF817:
	.string	"language"
.LASF1039:
	.string	"INSERT"
.LASF269:
	.string	"ROTATERT"
.LASF936:
	.string	"itk_char"
.LASF742:
	.string	"precision"
.LASF255:
	.string	"ADDRESSOF"
.LASF932:
	.string	"TI_V16QI_TYPE"
.LASF393:
	.string	"REG_SETJMP"
.LASF151:
	.string	"V2QImode"
.LASF573:
	.string	"RETURN_EXPR"
.LASF597:
	.string	"BUILT_IN_CIMAG"
.LASF638:
	.string	"BUILT_IN_APPLY_ARGS"
.LASF1187:
	.string	"change_address_1"
.LASF966:
	.string	"x_reg_rtx_no"
.LASF129:
	.string	"PHImode"
.LASF85:
	.string	"_IO_read_end"
.LASF746:
	.string	"transparent_union_flag"
.LASF958:
	.string	"modified"
.LASF975:
	.string	"regno_decl"
.LASF1158:
	.string	"subreg_realpart_p"
.LASF949:
	.string	"size_type_kind"
.LASF1002:
	.string	"reg_info_def"
.LASF150:
	.string	"COImode"
.LASF274:
	.string	"PRE_DEC"
.LASF1242:
	.string	"next_active_insn"
.LASF82:
	.string	"_IO_FILE"
.LASF407:
	.string	"NOTE_INSN_PROLOGUE_END"
.LASF1320:
	.string	"copy_insn"
.LASF1160:
	.string	"gen_highpart"
.LASF425:
	.string	"GR_HARD_FRAME_POINTER"
.LASF1231:
	.string	"stack"
.LASF331:
	.string	"align"
.LASF665:
	.string	"BUILT_IN_UNWIND_INIT"
.LASF825:
	.string	"calls_alloca"
.LASF1055:
	.string	"finish"
.LASF1188:
	.string	"memref"
.LASF903:
	.string	"TI_COMPLEX_INTEGER_TYPE"
.LASF804:
	.string	"x_var_temp_slot_level"
.LASF1312:
	.string	"pop_topmost_sequence"
.LASF181:
	.string	"MODE_RANDOM"
.LASF312:
	.string	"US_PLUS"
.LASF1254:
	.string	"make_insn_raw"
.LASF1138:
	.string	"partmode"
.LASF1278:
	.string	"emit_label_before"
.LASF1267:
	.string	"find_line_note"
.LASF171:
	.string	"BLKmode"
.LASF1078:
	.string	"disregard_inline_limits"
.LASF1386:
	.string	"cfun"
.LASF140:
	.string	"HCmode"
.LASF486:
	.string	"BIND_EXPR"
.LASF558:
	.string	"FDESC_EXPR"
.LASF922:
	.string	"TI_UV2SF_TYPE"
.LASF493:
	.string	"PLUS_EXPR"
.LASF928:
	.string	"TI_V8QI_TYPE"
.LASF1123:
	.string	"gen_rtx_MEM"
.LASF596:
	.string	"BUILT_IN_CREALL"
.LASF1023:
	.string	"htab_hash"
.LASF933:
	.string	"TI_MAIN_IDENTIFIER"
.LASF614:
	.string	"BUILT_IN_STRLEN"
.LASF1079:
	.string	"add_pending_fn_decls"
.LASF1101:
	.string	"print_statistics"
.LASF455:
	.string	"UNION_TYPE"
.LASF1109:
	.string	"const_int_htab_hash"
.LASF703:
	.string	"lang_flag_6"
.LASF246:
	.string	"CONST_STRING"
.LASF309:
	.string	"VEC_CONCAT"
.LASF330:
	.string	"size"
.LASF1239:
	.string	"next_real_insn"
.LASF557:
	.string	"ENTRY_VALUE_EXPR"
.LASF632:
	.string	"BUILT_IN_NEXT_ARG"
.LASF105:
	.string	"__pad1"
.LASF107:
	.string	"__pad3"
.LASF108:
	.string	"__pad4"
.LASF109:
	.string	"__pad5"
.LASF383:
	.string	"REG_NOALIAS"
.LASF222:
	.string	"ATTR_FLAG"
.LASF178:
	.string	"CCFPUmode"
.LASF1322:
	.string	"mark_sequence_stack"
.LASF367:
	.string	"REG_INC"
.LASF212:
	.string	"DEFINE_FUNCTION_UNIT"
.LASF859:
	.string	"artificial_flag"
.LASF796:
	.string	"x_context_display"
.LASF95:
	.string	"_markers"
.LASF115:
	.string	"_pos"
.LASF216:
	.string	"ADDRESS"
.LASF538:
	.string	"ORDERED_EXPR"
.LASF676:
	.string	"BUILT_IN_VA_COPY"
.LASF809:
	.string	"original_arg_vector"
.LASF21:
	.string	"complex"
.LASF1388:
	.string	"basic_block_for_insn"
.LASF1088:
	.string	"dump_tree"
.LASF841:
	.string	"uses_eh_lsda"
.LASF591:
	.string	"BUILT_IN_CONJ"
.LASF475:
	.string	"INDIRECT_REF"
.LASF997:
	.string	"cptr"
.LASF1121:
	.string	"arg1"
.LASF449:
	.string	"REFERENCE_TYPE"
.LASF345:
	.string	"bitmap_head_def"
.LASF733:
	.string	"supercontext"
.LASF677:
	.string	"BUILT_IN_EXPECT"
.LASF1150:
	.string	"base_regno"
.LASF1129:
	.string	"rt_val"
.LASF756:
	.string	"maxval"
.LASF537:
	.string	"UNORDERED_EXPR"
.LASF955:
	.string	"UBITSIZETYPE"
.LASF1100:
	.string	"honor_readonly"
.LASF916:
	.string	"TI_UV4SF_TYPE"
.LASF1011:
	.string	"calls_crossed"
.LASF316:
	.string	"US_TRUNCATE"
.LASF699:
	.string	"lang_flag_2"
.LASF618:
	.string	"BUILT_IN_STRCSPN"
.LASF545:
	.string	"SET_LE_EXPR"
.LASF420:
	.string	"global_rtl_index"
.LASF56:
	.string	"nregs"
.LASF1069:
	.string	"function_decl"
.LASF311:
	.string	"SS_PLUS"
.LASF273:
	.string	"UMAX"
.LASF564:
	.string	"PREINCREMENT_EXPR"
.LASF45:
	.string	"MMX_REGS"
.LASF325:
	.string	"scale"
.LASF845:
	.string	"linenum"
.LASF122:
	.string	"QImode"
.LASF1183:
	.string	"set_mem_alias_set"
.LASF1249:
	.string	"before"
.LASF1347:
	.string	"target_flags"
.LASF541:
	.string	"UNGT_EXPR"
.LASF1020:
	.string	"data"
.LASF423:
	.string	"GR_STACK_POINTER"
.LASF1243:
	.string	"prev_active_insn"
.LASF750:
	.string	"user_align"
.LASF585:
	.string	"BUILT_IN_LABS"
.LASF1095:
	.string	"clear_binding_stack"
.LASF134:
	.string	"TQFmode"
.LASF350:
	.string	"head"
.LASF1061:
	.string	"end_block"
.LASF1232:
	.string	"get_max_uid"
.LASF684:
	.string	"volatile_flag"
.LASF55:
	.string	"words"
.LASF608:
	.string	"BUILT_IN_STRCAT"
.LASF624:
	.string	"BUILT_IN_SQRTF"
.LASF322:
	.string	"min_after_base"
.LASF627:
	.string	"BUILT_IN_SQRTL"
.LASF1341:
	.string	"copy_insn_scratch_out"
.LASF1165:
	.string	"difference"
.LASF1058:
	.string	"start_source_file"
.LASF999:
	.string	"sched"
.LASF942:
	.string	"itk_unsigned_int"
.LASF452:
	.string	"ARRAY_TYPE"
.LASF838:
	.string	"x_dont_save_pending_sizes_p"
.LASF54:
	.string	"ix86_args"
.LASF580:
	.string	"EXC_PTR_EXPR"
.LASF1037:
	.string	"insert_option"
.LASF602:
	.string	"BUILT_IN_FFS"
.LASF689:
	.string	"used_flag"
.LASF647:
	.string	"BUILT_IN_PRINTF"
.LASF28:
	.string	"NO_REGS"
.LASF1374:
	.string	"no_new_pseudos"
.LASF741:
	.string	"attributes"
.LASF927:
	.string	"TI_V8HI_TYPE"
.LASF1156:
	.string	"gen_realpart"
.LASF1038:
	.string	"NO_INSERT"
.LASF774:
	.string	"outgoing_args_size"
.LASF508:
	.string	"FIX_FLOOR_EXPR"
.LASF1099:
	.string	"staticp"
.LASF127:
	.string	"OImode"
.LASF1334:
	.string	"base_label_num"
.LASF389:
	.string	"REG_SAVE_NOTE"
.LASF654:
	.string	"BUILT_IN_PRINTF_UNLOCKED"
.LASF1282:
	.string	"emit_insn_after_with_line_notes"
.LASF1276:
	.string	"emit_call_insn_before"
.LASF697:
	.string	"lang_flag_0"
.LASF698:
	.string	"lang_flag_1"
.LASF474:
	.string	"BIT_FIELD_REF"
.LASF700:
	.string	"lang_flag_3"
.LASF701:
	.string	"lang_flag_4"
.LASF702:
	.string	"lang_flag_5"
.LASF271:
	.string	"SMAX"
.LASF870:
	.string	"lang_flag_7"
.LASF1199:
	.string	"replace_equiv_address"
.LASF432:
	.string	"GR_MAX"
.LASF880:
	.string	"pointer_alias_set"
.LASF308:
	.string	"VEC_SELECT"
.LASF589:
	.string	"BUILT_IN_LLABS"
.LASF373:
	.string	"REG_NONNEG"
.LASF468:
	.string	"VAR_DECL"
.LASF726:
	.string	"operands"
.LASF1102:
	.string	"print_xnode"
.LASF482:
	.string	"MODIFY_EXPR"
.LASF965:
	.string	"emit_status"
.LASF1314:
	.string	"end_full_sequence"
.LASF1392:
	.string	"emit-rtl.c"
.LASF719:
	.string	"tree_identifier"
.LASF189:
	.string	"MODE_VECTOR_FLOAT"
.LASF437:
	.string	"TREE_VEC"
.LASF279:
	.string	"POST_MODIFY"
.LASF1003:
	.string	"first_uid"
.LASF1241:
	.string	"active_insn_p"
.LASF1194:
	.string	"memoffset"
.LASF630:
	.string	"BUILT_IN_SAVEREGS"
.LASF1085:
	.string	"end_inlining"
.LASF1097:
	.string	"expand_constant"
.LASF574:
	.string	"EXIT_EXPR"
.LASF1200:
	.string	"replace_equiv_address_nv"
.LASF592:
	.string	"BUILT_IN_CONJF"
.LASF385:
	.string	"REG_BR_PRED"
.LASF593:
	.string	"BUILT_IN_CONJL"
.LASF205:
	.string	"DEFINE_PEEPHOLE"
.LASF116:
	.string	"long long unsigned int"
.LASF414:
	.string	"NOTE_INSN_RANGE_BEG"
.LASF329:
	.string	"offset"
.LASF1112:
	.string	"mem_attrs_htab_eq"
.LASF326:
	.string	"addr_diff_vec_flags"
.LASF100:
	.string	"_cur_column"
.LASF201:
	.string	"MATCH_OP_DUP"
.LASF215:
	.string	"SEQUENCE"
.LASF1304:
	.string	"kind"
.LASF435:
	.string	"IDENTIFIER_NODE"
.LASF920:
	.string	"TI_UV4HI_TYPE"
.LASF132:
	.string	"QFmode"
.LASF1218:
	.string	"may_share"
.LASF875:
	.string	"section_name"
.LASF1005:
	.string	"last_note_uid"
.LASF776:
	.string	"args_info"
.LASF539:
	.string	"UNLT_EXPR"
.LASF1024:
	.string	"htab_eq"
.LASF834:
	.string	"limit_stack"
.LASF1166:
	.string	"subreg_highpart_offset"
.LASF458:
	.string	"LANG_TYPE"
.LASF242:
	.string	"RESX"
.LASF1256:
	.string	"make_jump_insn_raw"
.LASF1049:
	.string	"dest"
.LASF230:
	.string	"PARALLEL"
.LASF1324:
	.string	"gen_const_vector_0"
.LASF13:
	.string	"num_elem"
.LASF894:
	.string	"TI_INTEGER_ZERO"
.LASF1126:
	.string	"gen_lowpart_SUBREG"
.LASF93:
	.string	"_IO_backup_base"
.LASF280:
	.string	"UNORDERED"
.LASF179:
	.string	"MAX_MACHINE_MODE"
.LASF84:
	.string	"_IO_read_ptr"
.LASF1146:
	.string	"get_first_label_num"
.LASF941:
	.string	"itk_int"
.LASF765:
	.string	"off_align"
.LASF1273:
	.string	"eh_stack"
.LASF1131:
	.string	"gen_rtvec"
.LASF357:
	.string	"global_live_at_start"
.LASF51:
	.string	"FLOAT_INT_SSE_REGS"
.LASF197:
	.string	"MATCH_SCRATCH"
.LASF247:
	.string	"CONST"
.LASF974:
	.string	"regno_pointer_align"
.LASF1184:
	.string	"set_mem_align"
.LASF296:
	.string	"SQRT"
.LASF743:
	.string	"string_flag"
.LASF1108:
	.string	"tree_dump"
.LASF422:
	.string	"GR_CC0"
.LASF1170:
	.string	"operand_subword"
.LASF180:
	.string	"mode_class"
.LASF1105:
	.string	"print_identifier"
.LASF262:
	.string	"MULT"
.LASF453:
	.string	"SET_TYPE"
.LASF185:
	.string	"MODE_CC"
.LASF731:
	.string	"vars"
.LASF355:
	.string	"local_set"
.LASF487:
	.string	"CALL_EXPR"
.LASF128:
	.string	"PQImode"
.LASF1207:
	.string	"restore_emit_status"
.LASF522:
	.string	"BIT_AND_EXPR"
.LASF561:
	.string	"REALPART_EXPR"
.LASF1178:
	.string	"inner"
.LASF160:
	.string	"V8HImode"
.LASF1245:
	.string	"prev_label"
.LASF1284:
	.string	"emit_barrier_after"
.LASF802:
	.string	"x_temp_slots"
.LASF886:
	.string	"TI_INTSI_TYPE"
.LASF598:
	.string	"BUILT_IN_CIMAGF"
.LASF847:
	.string	"nonlocal_flag"
.LASF789:
	.string	"x_stack_slot_list"
.LASF99:
	.string	"_old_offset"
.LASF225:
	.string	"CALL_INSN"
.LASF1068:
	.string	"end_function"
.LASF1326:
	.string	"init_emit_once"
.LASF250:
	.string	"SUBREG"
.LASF748:
	.string	"restrict_flag"
.LASF824:
	.string	"calls_longjmp"
.LASF163:
	.string	"V16QImode"
.LASF394:
	.string	"REG_ALWAYS_RETURN"
.LASF586:
	.string	"BUILT_IN_FABS"
.LASF1298:
	.string	"emit_barrier"
.LASF1025:
	.string	"htab_del"
.LASF1235:
	.string	"next_insn"
.LASF23:
	.string	"decl"
.LASF1119:
	.string	"gen_rtx_CONST_DOUBLE"
.LASF562:
	.string	"IMAGPART_EXPR"
.LASF117:
	.string	"long long int"
.LASF921:
	.string	"TI_UV2SI_TYPE"
.LASF878:
	.string	"inlined_fns"
.LASF947:
	.string	"itk_none"
.LASF372:
	.string	"REG_LIBCALL"
.LASF1077:
	.string	"cannot_inline_tree_fn"
.LASF1153:
	.string	"msize"
.LASF98:
	.string	"_flags2"
.LASF954:
	.string	"SBITSIZETYPE"
.LASF139:
	.string	"QCmode"
.LASF248:
	.string	"VALUE"
.LASF228:
	.string	"NOTE"
.LASF490:
	.string	"CLEANUP_POINT_EXPR"
.LASF1286:
	.string	"emit_note_after"
.LASF59:
	.string	"sse_nregs"
.LASF272:
	.string	"UMIN"
.LASF198:
	.string	"MATCH_DUP"
.LASF460:
	.string	"REAL_CST"
.LASF661:
	.string	"BUILT_IN_ISLESS"
.LASF619:
	.string	"BUILT_IN_STRCHR"
.LASF675:
	.string	"BUILT_IN_VA_END"
.LASF1132:
	.string	"save_n"
.LASF349:
	.string	"basic_block_def"
.LASF670:
	.string	"BUILT_IN_EXTRACT_RETURN_ADDR"
.LASF1275:
	.string	"emit_jump_insn_before"
.LASF1084:
	.string	"start_inlining"
.LASF1372:
	.string	"reload_completed"
.LASF1107:
	.string	"tree_inlining"
.LASF752:
	.string	"reference_to"
.LASF1157:
	.string	"gen_imagpart"
.LASF1224:
	.string	"make_safe_from"
.LASF509:
	.string	"FIX_ROUND_EXPR"
.LASF536:
	.string	"NE_EXPR"
.LASF987:
	.string	"varasm_status"
.LASF1029:
	.string	"del_f"
.LASF639:
	.string	"BUILT_IN_APPLY"
.LASF7:
	.string	"used"
.LASF1111:
	.string	"mem_attrs_htab_hash"
.LASF1175:
	.string	"body"
.LASF626:
	.string	"BUILT_IN_COSF"
.LASF444:
	.string	"ENUMERAL_TYPE"
.LASF964:
	.string	"sequence_rtl_expr"
.LASF401:
	.string	"NOTE_INSN_LOOP_BEG"
.LASF1279:
	.string	"emit_note_before"
.LASF1043:
	.string	"bitmap_element"
.LASF781:
	.string	"x_function_call_count"
.LASF1294:
	.string	"after_after"
.LASF1041:
	.string	"prev"
.LASF146:
	.string	"CHImode"
.LASF595:
	.string	"BUILT_IN_CREALF"
.LASF417:
	.string	"NOTE_INSN_BASIC_BLOCK"
.LASF220:
	.string	"SET_ATTR_ALTERNATIVE"
.LASF861:
	.string	"non_addr_const_p"
.LASF1222:
	.string	"copied"
.LASF717:
	.string	"elements"
.LASF973:
	.string	"regno_pointer_align_length"
.LASF968:
	.string	"x_first_insn"
.LASF937:
	.string	"itk_signed_char"
.LASF982:
	.string	"x_apply_args_value"
.LASF49:
	.string	"FLOAT_INT_REGS"
.LASF1389:
	.string	"ggc_pending_trees"
.LASF244:
	.string	"CONST_DOUBLE"
.LASF641:
	.string	"BUILT_IN_SETJMP"
.LASF899:
	.string	"TI_SIZE_ONE"
.LASF658:
	.string	"BUILT_IN_FPRINTF_UNLOCKED"
.LASF943:
	.string	"itk_long"
.LASF175:
	.string	"CCNOmode"
.LASF156:
	.string	"V4HImode"
.LASF480:
	.string	"CONSTRUCTOR"
.LASF1370:
	.string	"static_chain_incoming_rtx"
.LASF282:
	.string	"UNEQ"
.LASF438:
	.string	"BLOCK"
.LASF265:
	.string	"ASHIFT"
.LASF915:
	.string	"TI_VOID_LIST_NODE"
.LASF270:
	.string	"SMIN"
.LASF1130:
	.string	"__FUNCTION__"
.LASF257:
	.string	"IF_THEN_ELSE"
.LASF850:
	.string	"bit_field_flag"
.LASF1034:
	.string	"collisions"
.LASF646:
	.string	"BUILT_IN_PUTS"
.LASF1072:
	.string	"outlining_inline_function"
.LASF1120:
	.string	"arg0"
.LASF853:
	.string	"in_system_header_flag"
.LASF1212:
	.string	"mem_attrs_mark"
.LASF690:
	.string	"nothrow_flag"
.LASF856:
	.string	"transparent_union"
.LASF413:
	.string	"NOTE_INSN_REPEATED_LINE_NUMBER"
.LASF770:
	.string	"outer"
.LASF879:
	.string	"vindex"
.LASF1338:
	.string	"sequence_result"
.LASF1266:
	.string	"reorder_insns"
.LASF410:
	.string	"NOTE_INSN_FUNCTION_BEG"
.LASF1377:
	.string	"dconst1"
.LASF1378:
	.string	"dconst2"
.LASF971:
	.string	"x_last_linenum"
.LASF462:
	.string	"VECTOR_CST"
.LASF69:
	.string	"unsigned int"
.LASF554:
	.string	"RTL_EXPR"
.LASF333:
	.string	"tree_node"
.LASF1056:
	.string	"define"
.LASF1252:
	.string	"note"
.LASF786:
	.string	"x_cleanup_label"
.LASF1234:
	.string	"stream"
.LASF543:
	.string	"UNEQ_EXPR"
.LASF1198:
	.string	"pow2"
.LASF611:
	.string	"BUILT_IN_STRNCPY"
.LASF1191:
	.string	"mmode"
.LASF321:
	.string	"max_after_vec"
.LASF440:
	.string	"INTEGER_TYPE"
.LASF283:
	.string	"UNGE"
.LASF1327:
	.string	"line_numbers"
.LASF967:
	.string	"x_first_label_num"
.LASF846:
	.string	"external_flag"
.LASF77:
	.string	"short int"
.LASF353:
	.string	"pred"
.LASF284:
	.string	"UNGT"
.LASF830:
	.string	"has_computed_jump"
.LASF621:
	.string	"BUILT_IN_SQRT"
.LASF476:
	.string	"BUFFER_REF"
.LASF969:
	.string	"x_last_insn"
.LASF833:
	.string	"profile"
.LASF101:
	.string	"_vtable_offset"
.LASF559:
	.string	"COMPLEX_EXPR"
.LASF667:
	.string	"BUILT_IN_DWARF_FP_REGNUM"
.LASF1090:
	.string	"lang_hooks"
.LASF540:
	.string	"UNLE_EXPR"
.LASF1094:
	.string	"post_options"
.LASF1134:
	.string	"argp"
.LASF816:
	.string	"preferred_stack_boundary"
.LASF120:
	.string	"VOIDmode"
.LASF395:
	.string	"REG_VTABLE_REF"
.LASF914:
	.string	"TI_VA_LIST_TYPE"
.LASF430:
	.string	"GR_VIRTUAL_OUTGOING_ARGS"
.LASF300:
	.string	"LO_SUM"
.LASF1297:
	.string	"emit_label"
.LASF1201:
	.string	"widen_memory_access"
.LASF683:
	.string	"addressable_flag"
.LASF1172:
	.string	"operand_subword_force"
.LASF1260:
	.string	"sequence"
.LASF362:
	.string	"frequency"
.LASF441:
	.string	"REAL_TYPE"
.LASF335:
	.string	"rtwint"
.LASF1193:
	.string	"adjust"
.LASF1048:
	.string	"succ_next"
.LASF1281:
	.string	"emit_insn_after"
.LASF578:
	.string	"EXPR_WITH_FILE_LOCATION"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
